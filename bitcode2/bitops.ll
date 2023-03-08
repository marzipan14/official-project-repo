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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !96
  %3 = ptrtoint i8* %0 to i64, !dbg !97
  %4 = and i64 %3, 3, !dbg !98
  %5 = icmp ne i64 %4, 0, !dbg !98
  %6 = icmp ne i64 %1, 0, !dbg !99
  %7 = and i1 %6, %5, !dbg !99
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !96
  br i1 %7, label %8, label %25, !dbg !96

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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !96
  %20 = ptrtoint i8* %12 to i64, !dbg !97
  %21 = and i64 %20, 3, !dbg !98
  %22 = icmp ne i64 %21, 0, !dbg !98
  %23 = icmp ne i64 %19, 0, !dbg !99
  %24 = and i1 %23, %22, !dbg !99
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !96
  br i1 %24, label %8, label %25, !dbg !96, !llvm.loop !109

; <label>:25:                                     ; preds = %8, %2
  %26 = phi i8* [ %0, %2 ], [ %12, %8 ], !dbg !111
  %27 = phi i64 [ 0, %2 ], [ %18, %8 ], !dbg !111
  %28 = phi i64 [ %1, %2 ], [ %19, %8 ]
  %29 = bitcast i8* %26 to i32*, !dbg !112
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !114
  %30 = icmp sgt i64 %28, 27, !dbg !115
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !114
  br i1 %30, label %31, label %109, !dbg !114

; <label>:31:                                     ; preds = %25
  %32 = xor i64 %28, -1, !dbg !116
  %33 = icmp sgt i64 %32, -56, !dbg !116
  %34 = select i1 %33, i64 %32, i64 -56, !dbg !116
  %35 = add i64 %28, %34, !dbg !116
  %36 = add i64 %35, 28, !dbg !116
  %37 = add i64 %28, -28, !dbg !116
  br label %38, !dbg !116

; <label>:38:                                     ; preds = %31, %38
  %39 = phi i64 [ %51, %38 ], [ %28, %31 ]
  %40 = phi i64 [ %103, %38 ], [ %27, %31 ]
  %41 = phi i32* [ %49, %38 ], [ %29, %31 ]
  %42 = getelementptr inbounds i32, i32* %41, i64 4, !dbg !120
  %43 = bitcast i32* %41 to <4 x i32>*, !dbg !121
  %44 = load <4 x i32>, <4 x i32>* %43, align 4, !dbg !121, !tbaa !122
  %45 = getelementptr inbounds i32, i32* %41, i64 5, !dbg !125
  %46 = load i32, i32* %42, align 4, !dbg !126, !tbaa !122
  %47 = getelementptr inbounds i32, i32* %41, i64 6, !dbg !128
  %48 = load i32, i32* %45, align 4, !dbg !129, !tbaa !122
  %49 = getelementptr inbounds i32, i32* %41, i64 7, !dbg !131
  %50 = load i32, i32* %47, align 4, !dbg !132, !tbaa !122
  %51 = add nsw i64 %39, -28, !dbg !134
  %52 = lshr <4 x i32> %44, <i32 1, i32 1, i32 1, i32 1>, !dbg !135
  %53 = and <4 x i32> %52, <i32 1431655765, i32 1431655765, i32 1431655765, i32 1431655765>, !dbg !136
  %54 = sub <4 x i32> %44, %53, !dbg !137
  %55 = and <4 x i32> %54, <i32 858993459, i32 858993459, i32 858993459, i32 858993459>, !dbg !138
  %56 = lshr <4 x i32> %54, <i32 2, i32 2, i32 2, i32 2>, !dbg !139
  %57 = and <4 x i32> %56, <i32 858993459, i32 858993459, i32 858993459, i32 858993459>, !dbg !140
  %58 = add nuw nsw <4 x i32> %57, %55, !dbg !141
  %59 = lshr i32 %46, 1, !dbg !142
  %60 = and i32 %59, 1431655765, !dbg !143
  %61 = sub i32 %46, %60, !dbg !144
  %62 = and i32 %61, 858993459, !dbg !145
  %63 = lshr i32 %61, 2, !dbg !146
  %64 = and i32 %63, 858993459, !dbg !147
  %65 = add nuw nsw i32 %64, %62, !dbg !148
  %66 = lshr i32 %48, 1, !dbg !149
  %67 = and i32 %66, 1431655765, !dbg !150
  %68 = sub i32 %48, %67, !dbg !151
  %69 = and i32 %68, 858993459, !dbg !152
  %70 = lshr i32 %68, 2, !dbg !153
  %71 = and i32 %70, 858993459, !dbg !154
  %72 = add nuw nsw i32 %71, %69, !dbg !155
  %73 = lshr i32 %50, 1, !dbg !156
  %74 = and i32 %73, 1431655765, !dbg !157
  %75 = sub i32 %50, %74, !dbg !158
  %76 = and i32 %75, 858993459, !dbg !159
  %77 = lshr i32 %75, 2, !dbg !160
  %78 = and i32 %77, 858993459, !dbg !161
  %79 = add nuw nsw i32 %78, %76, !dbg !162
  %80 = lshr <4 x i32> %58, <i32 4, i32 4, i32 4, i32 4>, !dbg !163
  %81 = add nuw nsw <4 x i32> %80, %58, !dbg !164
  %82 = and <4 x i32> %81, <i32 252645135, i32 252645135, i32 252645135, i32 252645135>, !dbg !165
  %83 = lshr i32 %65, 4, !dbg !166
  %84 = add nuw nsw i32 %83, %65, !dbg !167
  %85 = and i32 %84, 252645135, !dbg !168
  %86 = lshr i32 %72, 4, !dbg !169
  %87 = add nuw nsw i32 %86, %72, !dbg !170
  %88 = and i32 %87, 252645135, !dbg !171
  %89 = lshr i32 %79, 4, !dbg !172
  %90 = add nuw nsw i32 %89, %79, !dbg !173
  %91 = and i32 %90, 252645135, !dbg !174
  %92 = shufflevector <4 x i32> %82, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>, !dbg !175
  %93 = add <4 x i32> %82, %92, !dbg !175
  %94 = shufflevector <4 x i32> %93, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>, !dbg !175
  %95 = add <4 x i32> %93, %94, !dbg !175
  %96 = extractelement <4 x i32> %95, i32 0, !dbg !175
  %97 = add i32 %96, %85, !dbg !168
  %98 = add i32 %97, %88, !dbg !171
  %99 = add i32 %98, %91, !dbg !174
  %100 = mul i32 %99, 16843009, !dbg !176
  %101 = lshr i32 %100, 24, !dbg !177
  %102 = zext i32 %101 to i64, !dbg !178
  %103 = add i64 %40, %102, !dbg !179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !114
  %104 = icmp sgt i64 %39, 55, !dbg !115
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !114
  br i1 %104, label %38, label %105, !dbg !114, !llvm.loop !180

; <label>:105:                                    ; preds = %38
  %106 = urem i64 %36, 28, !dbg !116
  %107 = sub i64 %106, %36, !dbg !116
  %108 = add i64 %37, %107, !dbg !116
  br label %109, !dbg !182

; <label>:109:                                    ; preds = %105, %25
  %110 = phi i32* [ %29, %25 ], [ %49, %105 ], !dbg !183
  %111 = phi i64 [ %27, %25 ], [ %103, %105 ], !dbg !183
  %112 = phi i64 [ %28, %25 ], [ %108, %105 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !184
  %113 = icmp eq i64 %112, 0, !dbg !184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !184
  br i1 %113, label %174, label %114, !dbg !184

; <label>:114:                                    ; preds = %109
  %115 = bitcast i32* %110 to i8*, !dbg !182
  %116 = add i64 %112, -1, !dbg !185
  %117 = and i64 %112, 3, !dbg !185
  %118 = icmp eq i64 %117, 0, !dbg !185
  br i1 %118, label %134, label %119, !dbg !185

; <label>:119:                                    ; preds = %114, %119
  %120 = phi i64 [ %124, %119 ], [ %112, %114 ]
  %121 = phi i64 [ %131, %119 ], [ %111, %114 ]
  %122 = phi i8* [ %125, %119 ], [ %115, %114 ]
  %123 = phi i64 [ %132, %119 ], [ %117, %114 ]
  %124 = add nsw i64 %120, -1, !dbg !185
  %125 = getelementptr inbounds i8, i8* %122, i64 1, !dbg !186
  %126 = load i8, i8* %122, align 1, !dbg !187, !tbaa !103
  %127 = zext i8 %126 to i64, !dbg !188
  %128 = getelementptr inbounds [256 x i8], [256 x i8]* @redisPopcount.bitsinbyte, i64 0, i64 %127, !dbg !188
  %129 = load i8, i8* %128, align 1, !dbg !188, !tbaa !103
  %130 = zext i8 %129 to i64, !dbg !188
  %131 = add i64 %121, %130, !dbg !189
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !184
  %132 = add i64 %123, -1, !dbg !184
  %133 = icmp eq i64 %132, 0, !dbg !184
  br i1 %133, label %134, label %119, !dbg !184, !llvm.loop !190

; <label>:134:                                    ; preds = %119, %114
  %135 = phi i64 [ undef, %114 ], [ %131, %119 ]
  %136 = phi i64 [ %112, %114 ], [ %124, %119 ]
  %137 = phi i64 [ %111, %114 ], [ %131, %119 ]
  %138 = phi i8* [ %115, %114 ], [ %125, %119 ]
  %139 = icmp ult i64 %116, 3, !dbg !185
  br i1 %139, label %174, label %140, !dbg !185

; <label>:140:                                    ; preds = %134, %140
  %141 = phi i64 [ %165, %140 ], [ %136, %134 ]
  %142 = phi i64 [ %172, %140 ], [ %137, %134 ]
  %143 = phi i8* [ %166, %140 ], [ %138, %134 ]
  %144 = getelementptr inbounds i8, i8* %143, i64 1, !dbg !186
  %145 = load i8, i8* %143, align 1, !dbg !187, !tbaa !103
  %146 = zext i8 %145 to i64, !dbg !188
  %147 = getelementptr inbounds [256 x i8], [256 x i8]* @redisPopcount.bitsinbyte, i64 0, i64 %146, !dbg !188
  %148 = load i8, i8* %147, align 1, !dbg !188, !tbaa !103
  %149 = zext i8 %148 to i64, !dbg !188
  %150 = add i64 %142, %149, !dbg !189
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !184
  %151 = getelementptr inbounds i8, i8* %143, i64 2, !dbg !186
  %152 = load i8, i8* %144, align 1, !dbg !187, !tbaa !103
  %153 = zext i8 %152 to i64, !dbg !188
  %154 = getelementptr inbounds [256 x i8], [256 x i8]* @redisPopcount.bitsinbyte, i64 0, i64 %153, !dbg !188
  %155 = load i8, i8* %154, align 1, !dbg !188, !tbaa !103
  %156 = zext i8 %155 to i64, !dbg !188
  %157 = add i64 %150, %156, !dbg !189
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !184
  %158 = getelementptr inbounds i8, i8* %143, i64 3, !dbg !186
  %159 = load i8, i8* %151, align 1, !dbg !187, !tbaa !103
  %160 = zext i8 %159 to i64, !dbg !188
  %161 = getelementptr inbounds [256 x i8], [256 x i8]* @redisPopcount.bitsinbyte, i64 0, i64 %160, !dbg !188
  %162 = load i8, i8* %161, align 1, !dbg !188, !tbaa !103
  %163 = zext i8 %162 to i64, !dbg !188
  %164 = add i64 %157, %163, !dbg !189
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !184
  %165 = add nsw i64 %141, -4, !dbg !185
  %166 = getelementptr inbounds i8, i8* %143, i64 4, !dbg !186
  %167 = load i8, i8* %158, align 1, !dbg !187, !tbaa !103
  %168 = zext i8 %167 to i64, !dbg !188
  %169 = getelementptr inbounds [256 x i8], [256 x i8]* @redisPopcount.bitsinbyte, i64 0, i64 %168, !dbg !188
  %170 = load i8, i8* %169, align 1, !dbg !188, !tbaa !103
  %171 = zext i8 %170 to i64, !dbg !188
  %172 = add i64 %164, %171, !dbg !189
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !184
  %173 = icmp eq i64 %165, 0, !dbg !184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !184
  br i1 %173, label %174, label %140, !dbg !184, !llvm.loop !192

; <label>:174:                                    ; preds = %134, %140, %109
  %175 = phi i64 [ %111, %109 ], [ %135, %134 ], [ %172, %140 ], !dbg !194
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !195
  ret i64 %175, !dbg !195
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local i64 @redisBitpos(i8*, i64, i32) local_unnamed_addr #0 !dbg !196 {
  %4 = icmp ne i32 %2, 0, !dbg !217
  %5 = select i1 %4, i64 0, i64 255, !dbg !217
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !221
  %6 = ptrtoint i8* %0 to i64, !dbg !222
  %7 = and i64 %6, 7, !dbg !223
  %8 = icmp ne i64 %7, 0, !dbg !223
  %9 = icmp ne i64 %1, 0, !dbg !224
  %10 = and i1 %9, %8, !dbg !224
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !221
  br i1 %10, label %11, label %29, !dbg !221

; <label>:11:                                     ; preds = %3, %20
  %12 = phi i64 [ %23, %20 ], [ 0, %3 ]
  %13 = phi i8* [ %21, %20 ], [ %0, %3 ]
  %14 = phi i64 [ %22, %20 ], [ %1, %3 ]
  %15 = load i8, i8* %13, align 1, !dbg !225, !tbaa !103
  %16 = zext i8 %15 to i64, !dbg !225
  %17 = icmp eq i64 %5, %16, !dbg !228
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !229
  br i1 %17, label %20, label %18, !dbg !229

; <label>:18:                                     ; preds = %11
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !230
  %19 = bitcast i8* %13 to i64*, !dbg !232
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !234
  br label %48, !dbg !234

; <label>:20:                                     ; preds = %11
  %21 = getelementptr inbounds i8, i8* %13, i64 1, !dbg !235
  %22 = add i64 %14, -1, !dbg !236
  %23 = add nuw nsw i64 %12, 8, !dbg !237
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !221
  %24 = ptrtoint i8* %21 to i64, !dbg !222
  %25 = and i64 %24, 7, !dbg !223
  %26 = icmp ne i64 %25, 0, !dbg !223
  %27 = icmp ne i64 %22, 0, !dbg !224
  %28 = and i1 %27, %26, !dbg !224
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !221
  br i1 %28, label %11, label %29, !dbg !221, !llvm.loop !238

; <label>:29:                                     ; preds = %20, %3
  %30 = phi i64 [ %1, %3 ], [ %22, %20 ]
  %31 = phi i8* [ %0, %3 ], [ %21, %20 ], !dbg !240
  %32 = phi i64 [ 0, %3 ], [ %23, %20 ], !dbg !240
  %33 = bitcast i8* %31 to i64*, !dbg !232
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !234
  %34 = xor i1 %4, true, !dbg !241
  %35 = sext i1 %34 to i64, !dbg !241
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !244
  %36 = icmp ugt i64 %30, 7, !dbg !245
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !244
  br i1 %36, label %37, label %52, !dbg !244

; <label>:37:                                     ; preds = %29, %43
  %38 = phi i64 [ %46, %43 ], [ %32, %29 ]
  %39 = phi i64* [ %44, %43 ], [ %33, %29 ]
  %40 = phi i64 [ %45, %43 ], [ %30, %29 ]
  %41 = load i64, i64* %39, align 8, !dbg !246, !tbaa !249
  %42 = icmp eq i64 %41, %35, !dbg !251
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !252
  br i1 %42, label %43, label %48, !dbg !252

; <label>:43:                                     ; preds = %37
  %44 = getelementptr inbounds i64, i64* %39, i64 1, !dbg !253
  %45 = add i64 %40, -8, !dbg !254
  %46 = add i64 %38, 64, !dbg !255
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !244
  %47 = icmp ugt i64 %45, 7, !dbg !245
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !244
  br i1 %47, label %37, label %52, !dbg !244, !llvm.loop !256

; <label>:48:                                     ; preds = %37, %18
  %49 = phi i64 [ %14, %18 ], [ %40, %37 ]
  %50 = phi i64* [ %19, %18 ], [ %39, %37 ]
  %51 = phi i64 [ %12, %18 ], [ %38, %37 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !259
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !261
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !262
  br label %58, !dbg !262

; <label>:52:                                     ; preds = %43, %29
  %53 = phi i64 [ %30, %29 ], [ %45, %43 ]
  %54 = phi i64* [ %33, %29 ], [ %44, %43 ], !dbg !265
  %55 = phi i64 [ %32, %29 ], [ %46, %43 ], !dbg !216
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !259
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !261
  %56 = icmp eq i64 %53, 0, !dbg !266
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !262
  br i1 %56, label %57, label %58, !dbg !262

; <label>:57:                                     ; preds = %52
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !268
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !261
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !262
  br label %88, !dbg !262

; <label>:58:                                     ; preds = %52, %48
  %59 = phi i64* [ %50, %48 ], [ %54, %52 ]
  %60 = phi i64 [ %51, %48 ], [ %55, %52 ]
  %61 = phi i64 [ %49, %48 ], [ %53, %52 ]
  %62 = bitcast i64* %59 to i8*, !dbg !269
  %63 = load i8, i8* %62, align 1, !dbg !270, !tbaa !103
  %64 = zext i8 %63 to i64, !dbg !270
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !272
  %65 = shl nuw nsw i64 %64, 8, !dbg !272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !268
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !261
  %66 = icmp eq i64 %61, 1, !dbg !266
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !262
  br i1 %66, label %88, label %92, !dbg !262

; <label>:67:                                     ; preds = %163
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !274
  br label %68, !dbg !274

; <label>:68:                                     ; preds = %169, %67
  %69 = phi i64 [ %164, %67 ], [ %170, %169 ]
  %70 = phi i64 [ -9223372036854775808, %67 ], [ %171, %169 ]
  %71 = and i64 %70, %165, !dbg !275
  %72 = icmp ne i64 %71, 0, !dbg !278
  %73 = zext i1 %72 to i32, !dbg !278
  %74 = icmp eq i32 %73, %2, !dbg !279
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !280
  br i1 %74, label %77, label %79, !dbg !280

; <label>:75:                                     ; preds = %79
  %76 = add nsw i64 %69, 1, !dbg !281
  br label %77, !dbg !282

; <label>:77:                                     ; preds = %68, %75
  %78 = phi i64 [ %76, %75 ], [ %69, %68 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !282
  br label %86, !dbg !282

; <label>:79:                                     ; preds = %68
  %80 = lshr i64 %70, 1, !dbg !283
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !274
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !274
  %81 = and i64 %80, %165, !dbg !275
  %82 = icmp ne i64 %81, 0, !dbg !278
  %83 = zext i1 %82 to i32, !dbg !278
  %84 = icmp eq i32 %83, %2, !dbg !279
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !280
  br i1 %84, label %75, label %169, !dbg !280

; <label>:85:                                     ; preds = %169
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 184, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !284
  tail call void @_exit(i32 1) #7, !dbg !284
  unreachable

; <label>:86:                                     ; preds = %163, %77
  %87 = phi i64 [ %78, %77 ], [ -1, %163 ], !dbg !285
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !286
  ret i64 %87, !dbg !286

; <label>:88:                                     ; preds = %58, %57
  %89 = phi i64 [ %55, %57 ], [ %60, %58 ]
  %90 = phi i64 [ 0, %57 ], [ %65, %58 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !268
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !261
  %91 = shl nsw i64 %90, 8, !dbg !287
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !262
  br label %99, !dbg !262

; <label>:92:                                     ; preds = %58
  %93 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !288
  %94 = load i8, i8* %93, align 1, !dbg !270, !tbaa !103
  %95 = zext i8 %94 to i64, !dbg !270
  %96 = or i64 %65, %95, !dbg !289
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !268
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !261
  %97 = shl nuw nsw i64 %96, 8, !dbg !287
  %98 = icmp eq i64 %61, 2, !dbg !266
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !262
  br i1 %98, label %99, label %103, !dbg !262

; <label>:99:                                     ; preds = %92, %88
  %100 = phi i64 [ %89, %88 ], [ %60, %92 ]
  %101 = phi i64 [ %91, %88 ], [ %97, %92 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !268
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !261
  %102 = shl nsw i64 %101, 8, !dbg !287
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !262
  br label %110, !dbg !262

; <label>:103:                                    ; preds = %92
  %104 = getelementptr inbounds i8, i8* %62, i64 2, !dbg !288
  %105 = load i8, i8* %104, align 1, !dbg !270, !tbaa !103
  %106 = zext i8 %105 to i64, !dbg !270
  %107 = or i64 %97, %106, !dbg !289
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !268
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !261
  %108 = shl nuw nsw i64 %107, 8, !dbg !287
  %109 = icmp eq i64 %61, 3, !dbg !266
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !262
  br i1 %109, label %110, label %114, !dbg !262

; <label>:110:                                    ; preds = %103, %99
  %111 = phi i64 [ %100, %99 ], [ %60, %103 ]
  %112 = phi i64 [ %102, %99 ], [ %108, %103 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !268
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !261
  %113 = shl i64 %112, 8, !dbg !287
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !262
  br label %121, !dbg !262

; <label>:114:                                    ; preds = %103
  %115 = getelementptr inbounds i8, i8* %62, i64 3, !dbg !288
  %116 = load i8, i8* %115, align 1, !dbg !270, !tbaa !103
  %117 = zext i8 %116 to i64, !dbg !270
  %118 = or i64 %108, %117, !dbg !289
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !268
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !261
  %119 = shl i64 %118, 8, !dbg !287
  %120 = icmp eq i64 %61, 4, !dbg !266
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !262
  br i1 %120, label %121, label %125, !dbg !262

; <label>:121:                                    ; preds = %114, %110
  %122 = phi i64 [ %111, %110 ], [ %60, %114 ]
  %123 = phi i64 [ %113, %110 ], [ %119, %114 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !268
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !261
  %124 = shl i64 %123, 8, !dbg !287
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !262
  br label %132, !dbg !262

; <label>:125:                                    ; preds = %114
  %126 = getelementptr inbounds i8, i8* %62, i64 4, !dbg !288
  %127 = load i8, i8* %126, align 1, !dbg !270, !tbaa !103
  %128 = zext i8 %127 to i64, !dbg !270
  %129 = or i64 %119, %128, !dbg !289
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !268
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !261
  %130 = shl i64 %129, 8, !dbg !287
  %131 = icmp eq i64 %61, 5, !dbg !266
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !262
  br i1 %131, label %132, label %136, !dbg !262

; <label>:132:                                    ; preds = %125, %121
  %133 = phi i64 [ %122, %121 ], [ %60, %125 ]
  %134 = phi i64 [ %124, %121 ], [ %130, %125 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !268
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !261
  %135 = shl i64 %134, 8, !dbg !287
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !262
  br label %144, !dbg !262

; <label>:136:                                    ; preds = %125
  %137 = getelementptr inbounds i8, i8* %62, i64 5, !dbg !288
  %138 = load i8, i8* %137, align 1, !dbg !270, !tbaa !103
  %139 = zext i8 %138 to i64, !dbg !270
  %140 = or i64 %130, %139, !dbg !289
  %141 = add i64 %61, -6, !dbg !290
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !268
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !261
  %142 = shl i64 %140, 8, !dbg !287
  %143 = icmp eq i64 %141, 0, !dbg !266
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !262
  br i1 %143, label %144, label %148, !dbg !262

; <label>:144:                                    ; preds = %136, %132
  %145 = phi i64 [ %133, %132 ], [ %60, %136 ]
  %146 = phi i64 [ %135, %132 ], [ %142, %136 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !268
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !261
  %147 = shl i64 %146, 8, !dbg !287
  br label %160, !dbg !262

; <label>:148:                                    ; preds = %136
  %149 = getelementptr inbounds i8, i8* %62, i64 6, !dbg !288
  %150 = load i8, i8* %149, align 1, !dbg !270, !tbaa !103
  %151 = zext i8 %150 to i64, !dbg !270
  %152 = or i64 %142, %151, !dbg !289
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !272
  %153 = icmp eq i64 %141, 1, !dbg !272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !268
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !261
  %154 = shl i64 %152, 8, !dbg !287
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !262
  br i1 %153, label %163, label %155, !dbg !262

; <label>:155:                                    ; preds = %148
  %156 = getelementptr inbounds i8, i8* %62, i64 7, !dbg !288
  %157 = load i8, i8* %156, align 1, !dbg !270, !tbaa !103
  %158 = zext i8 %157 to i64, !dbg !270
  %159 = or i64 %154, %158, !dbg !289
  br label %160, !dbg !272

; <label>:160:                                    ; preds = %155, %144
  %161 = phi i64 [ %145, %144 ], [ %60, %155 ]
  %162 = phi i64 [ %147, %144 ], [ %159, %155 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !291
  br label %163, !dbg !268

; <label>:163:                                    ; preds = %160, %148
  %164 = phi i64 [ %60, %148 ], [ %161, %160 ]
  %165 = phi i64 [ %154, %148 ], [ %162, %160 ], !dbg !292
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !268
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !261
  %166 = icmp eq i32 %2, 1, !dbg !293
  %167 = icmp eq i64 %165, 0, !dbg !295
  %168 = and i1 %166, %167, !dbg !296
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !296
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !297
  br i1 %168, label %86, label %67, !dbg !296

; <label>:169:                                    ; preds = %79
  %170 = add nsw i64 %69, 2, !dbg !281
  %171 = lshr i64 %70, 2, !dbg !283
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !274
  %172 = icmp eq i64 %171, 0, !dbg !274
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !274
  br i1 %172, label %85, label %68, !dbg !274, !llvm.loop !298
}

; Function Attrs: noredzone
declare dso_local void @_serverPanic(i8*, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone noreturn
declare dso_local void @_exit(i32) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local void @setUnsignedBitfield(i8* nocapture, i64, i64, i64) local_unnamed_addr #0 !dbg !300 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !318
  %5 = icmp eq i64 %2, 0, !dbg !320
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !322
  br i1 %5, label %32, label %6, !dbg !322

; <label>:6:                                      ; preds = %4, %6
  %7 = phi i64 [ %30, %6 ], [ 0, %4 ]
  %8 = phi i64 [ %29, %6 ], [ %1, %4 ]
  %9 = xor i64 %7, -1, !dbg !323
  %10 = add i64 %9, %2, !dbg !323
  %11 = shl i64 1, %10, !dbg !325
  %12 = and i64 %11, %3, !dbg !326
  %13 = icmp ne i64 %12, 0, !dbg !327
  %14 = zext i1 %13 to i64, !dbg !328
  %15 = lshr i64 %8, 3, !dbg !330
  %16 = and i64 %8, 7, !dbg !332
  %17 = xor i64 %16, 7, !dbg !333
  %18 = getelementptr inbounds i8, i8* %0, i64 %15, !dbg !335
  %19 = load i8, i8* %18, align 1, !dbg !335, !tbaa !103
  %20 = zext i8 %19 to i64, !dbg !335
  %21 = trunc i64 %17 to i32, !dbg !337
  %22 = shl i32 1, %21, !dbg !337
  %23 = xor i32 %22, 255, !dbg !338
  %24 = zext i32 %23 to i64, !dbg !338
  %25 = and i64 %20, %24, !dbg !339
  %26 = shl i64 %14, %17, !dbg !340
  %27 = or i64 %25, %26, !dbg !341
  %28 = trunc i64 %27 to i8, !dbg !342
  store i8 %28, i8* %18, align 1, !dbg !343, !tbaa !103
  %29 = add i64 %8, 1, !dbg !344
  %30 = add nuw i64 %7, 1, !dbg !345
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !346
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !322
  %31 = icmp eq i64 %30, %2, !dbg !320
  br i1 %31, label %32, label %6, !dbg !322, !llvm.loop !347

; <label>:32:                                     ; preds = %6, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !349
  ret void, !dbg !349
}

; Function Attrs: noredzone nounwind
define dso_local void @setSignedBitfield(i8* nocapture, i64, i64, i64) local_unnamed_addr #0 !dbg !350 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !370
  %5 = icmp eq i64 %2, 0, !dbg !371
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !372
  br i1 %5, label %32, label %6, !dbg !372

; <label>:6:                                      ; preds = %4, %6
  %7 = phi i64 [ %30, %6 ], [ 0, %4 ]
  %8 = phi i64 [ %29, %6 ], [ %1, %4 ]
  %9 = xor i64 %7, -1, !dbg !373
  %10 = add i64 %9, %2, !dbg !373
  %11 = shl i64 1, %10, !dbg !374
  %12 = and i64 %11, %3, !dbg !375
  %13 = icmp ne i64 %12, 0, !dbg !376
  %14 = zext i1 %13 to i64, !dbg !377
  %15 = lshr i64 %8, 3, !dbg !379
  %16 = and i64 %8, 7, !dbg !381
  %17 = xor i64 %16, 7, !dbg !382
  %18 = getelementptr inbounds i8, i8* %0, i64 %15, !dbg !384
  %19 = load i8, i8* %18, align 1, !dbg !384, !tbaa !103
  %20 = zext i8 %19 to i64, !dbg !384
  %21 = trunc i64 %17 to i32, !dbg !386
  %22 = shl i32 1, %21, !dbg !386
  %23 = xor i32 %22, 255, !dbg !387
  %24 = zext i32 %23 to i64, !dbg !387
  %25 = and i64 %24, %20, !dbg !388
  %26 = shl i64 %14, %17, !dbg !389
  %27 = or i64 %25, %26, !dbg !390
  %28 = trunc i64 %27 to i8, !dbg !391
  store i8 %28, i8* %18, align 1, !dbg !392, !tbaa !103
  %29 = add i64 %8, 1, !dbg !393
  %30 = add nuw i64 %7, 1, !dbg !394
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !395
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !372
  %31 = icmp eq i64 %30, %2, !dbg !371
  br i1 %31, label %32, label %6, !dbg !372, !llvm.loop !347

; <label>:32:                                     ; preds = %6, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !397
  ret void, !dbg !397
}

; Function Attrs: noredzone nounwind
define dso_local i64 @getUnsignedBitfield(i8* nocapture readonly, i64, i64) local_unnamed_addr #0 !dbg !398 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !416
  %4 = icmp eq i64 %2, 0, !dbg !418
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !420
  br i1 %4, label %55, label %5, !dbg !420

; <label>:5:                                      ; preds = %3
  %6 = and i64 %2, 1, !dbg !421
  %7 = icmp eq i64 %2, 1, !dbg !421
  br i1 %7, label %40, label %8, !dbg !421

; <label>:8:                                      ; preds = %5
  %9 = sub i64 %2, %6, !dbg !421
  br label %10, !dbg !421

; <label>:10:                                     ; preds = %10, %8
  %11 = phi i64 [ 0, %8 ], [ %34, %10 ]
  %12 = phi i64 [ %1, %8 ], [ %35, %10 ]
  %13 = phi i64 [ %9, %8 ], [ %36, %10 ]
  %14 = lshr i64 %12, 3, !dbg !421
  %15 = and i64 %12, 7, !dbg !424
  %16 = xor i64 %15, 7, !dbg !425
  %17 = getelementptr inbounds i8, i8* %0, i64 %14, !dbg !427
  %18 = load i8, i8* %17, align 1, !dbg !427, !tbaa !103
  %19 = zext i8 %18 to i64, !dbg !427
  %20 = lshr i64 %19, %16, !dbg !429
  %21 = and i64 %20, 1, !dbg !430
  %22 = shl i64 %11, 1, !dbg !432
  %23 = or i64 %21, %22, !dbg !433
  %24 = add i64 %12, 1, !dbg !434
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !435
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !420
  %25 = lshr i64 %24, 3, !dbg !421
  %26 = and i64 %24, 7, !dbg !424
  %27 = xor i64 %26, 7, !dbg !425
  %28 = getelementptr inbounds i8, i8* %0, i64 %25, !dbg !427
  %29 = load i8, i8* %28, align 1, !dbg !427, !tbaa !103
  %30 = zext i8 %29 to i64, !dbg !427
  %31 = lshr i64 %30, %27, !dbg !429
  %32 = and i64 %31, 1, !dbg !430
  %33 = shl i64 %23, 1, !dbg !432
  %34 = or i64 %32, %33, !dbg !433
  %35 = add i64 %12, 2, !dbg !434
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !435
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !420
  %36 = add i64 %13, -2, !dbg !420
  %37 = icmp eq i64 %36, 0, !dbg !420
  br i1 %37, label %38, label %10, !dbg !420, !llvm.loop !436

; <label>:38:                                     ; preds = %10
  %39 = shl i64 %34, 1, !dbg !420
  br label %40, !dbg !420

; <label>:40:                                     ; preds = %38, %5
  %41 = phi i64 [ undef, %5 ], [ %34, %38 ]
  %42 = phi i64 [ 0, %5 ], [ %39, %38 ]
  %43 = phi i64 [ %1, %5 ], [ %35, %38 ]
  %44 = icmp eq i64 %6, 0, !dbg !420
  br i1 %44, label %55, label %45, !dbg !420

; <label>:45:                                     ; preds = %40
  %46 = lshr i64 %43, 3, !dbg !421
  %47 = getelementptr inbounds i8, i8* %0, i64 %46, !dbg !427
  %48 = load i8, i8* %47, align 1, !dbg !427, !tbaa !103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !435
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !420
  %49 = zext i8 %48 to i64, !dbg !427
  %50 = and i64 %43, 7, !dbg !424
  %51 = xor i64 %50, 7, !dbg !425
  %52 = lshr i64 %49, %51, !dbg !429
  %53 = and i64 %52, 1, !dbg !430
  %54 = or i64 %53, %42, !dbg !433
  br label %55, !dbg !438

; <label>:55:                                     ; preds = %45, %40, %3
  %56 = phi i64 [ 0, %3 ], [ %41, %40 ], [ %54, %45 ], !dbg !439
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !438
  ret i64 %56, !dbg !438
}

; Function Attrs: noredzone nounwind
define dso_local i64 @getSignedBitfield(i8* nocapture readonly, i64, i64) local_unnamed_addr #0 !dbg !440 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !462
  %4 = icmp eq i64 %2, 0, !dbg !463
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !464
  br i1 %4, label %55, label %5, !dbg !464

; <label>:5:                                      ; preds = %3
  %6 = and i64 %2, 1, !dbg !465
  %7 = icmp eq i64 %2, 1, !dbg !465
  br i1 %7, label %40, label %8, !dbg !465

; <label>:8:                                      ; preds = %5
  %9 = sub i64 %2, %6, !dbg !465
  br label %10, !dbg !465

; <label>:10:                                     ; preds = %10, %8
  %11 = phi i64 [ 0, %8 ], [ %34, %10 ]
  %12 = phi i64 [ %1, %8 ], [ %35, %10 ]
  %13 = phi i64 [ %9, %8 ], [ %36, %10 ]
  %14 = lshr i64 %12, 3, !dbg !465
  %15 = and i64 %12, 7, !dbg !467
  %16 = xor i64 %15, 7, !dbg !468
  %17 = getelementptr inbounds i8, i8* %0, i64 %14, !dbg !470
  %18 = load i8, i8* %17, align 1, !dbg !470, !tbaa !103
  %19 = zext i8 %18 to i64, !dbg !470
  %20 = lshr i64 %19, %16, !dbg !472
  %21 = and i64 %20, 1, !dbg !473
  %22 = shl i64 %11, 1, !dbg !475
  %23 = or i64 %21, %22, !dbg !476
  %24 = add i64 %12, 1, !dbg !477
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !478
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !464
  %25 = lshr i64 %24, 3, !dbg !465
  %26 = and i64 %24, 7, !dbg !467
  %27 = xor i64 %26, 7, !dbg !468
  %28 = getelementptr inbounds i8, i8* %0, i64 %25, !dbg !470
  %29 = load i8, i8* %28, align 1, !dbg !470, !tbaa !103
  %30 = zext i8 %29 to i64, !dbg !470
  %31 = lshr i64 %30, %27, !dbg !472
  %32 = and i64 %31, 1, !dbg !473
  %33 = shl i64 %23, 1, !dbg !475
  %34 = or i64 %32, %33, !dbg !476
  %35 = add i64 %12, 2, !dbg !477
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !478
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !464
  %36 = add i64 %13, -2, !dbg !464
  %37 = icmp eq i64 %36, 0, !dbg !464
  br i1 %37, label %38, label %10, !dbg !464, !llvm.loop !436

; <label>:38:                                     ; preds = %10
  %39 = shl i64 %34, 1, !dbg !464
  br label %40, !dbg !464

; <label>:40:                                     ; preds = %38, %5
  %41 = phi i64 [ undef, %5 ], [ %34, %38 ]
  %42 = phi i64 [ 0, %5 ], [ %39, %38 ]
  %43 = phi i64 [ %1, %5 ], [ %35, %38 ]
  %44 = icmp eq i64 %6, 0, !dbg !464
  br i1 %44, label %55, label %45, !dbg !464

; <label>:45:                                     ; preds = %40
  %46 = lshr i64 %43, 3, !dbg !465
  %47 = getelementptr inbounds i8, i8* %0, i64 %46, !dbg !470
  %48 = load i8, i8* %47, align 1, !dbg !470, !tbaa !103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !478
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !464
  %49 = zext i8 %48 to i64, !dbg !470
  %50 = and i64 %43, 7, !dbg !467
  %51 = xor i64 %50, 7, !dbg !468
  %52 = lshr i64 %49, %51, !dbg !472
  %53 = and i64 %52, 1, !dbg !473
  %54 = or i64 %53, %42, !dbg !476
  br label %55, !dbg !479

; <label>:55:                                     ; preds = %45, %40, %3
  %56 = phi i64 [ 0, %3 ], [ %41, %40 ], [ %54, %45 ], !dbg !480
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !479
  %57 = add i64 %2, -1, !dbg !483
  %58 = shl i64 1, %57, !dbg !485
  %59 = and i64 %56, %58, !dbg !486
  %60 = icmp eq i64 %59, 0, !dbg !486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !487
  br i1 %60, label %64, label %61, !dbg !487

; <label>:61:                                     ; preds = %55
  %62 = shl i64 -1, %2, !dbg !488
  %63 = or i64 %56, %62, !dbg !489
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !490
  br label %64, !dbg !490

; <label>:64:                                     ; preds = %55, %61
  %65 = phi i64 [ %63, %61 ], [ %56, %55 ], !dbg !491
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !492
  ret i64 %65, !dbg !492
}

; Function Attrs: noredzone nounwind
define dso_local i32 @checkUnsignedBitfieldOverflow(i64, i64, i64, i32, i64*) local_unnamed_addr #0 !dbg !493 {
  %6 = icmp eq i64 %2, 64, !dbg !514
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !515
  br i1 %6, label %7, label %8, !dbg !515

; <label>:7:                                      ; preds = %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !517
  br label %12, !dbg !517

; <label>:8:                                      ; preds = %5
  %9 = shl nsw i64 -1, %2, !dbg !519
  %10 = xor i64 %9, -1, !dbg !519
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !515
  %11 = icmp ult i64 %10, %0, !dbg !520
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !517
  br i1 %11, label %20, label %12, !dbg !517

; <label>:12:                                     ; preds = %7, %8
  %13 = phi i64 [ -1, %7 ], [ %10, %8 ]
  %14 = sub i64 0, %0, !dbg !521
  %15 = icmp sgt i64 %1, 0, !dbg !522
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !523
  br i1 %15, label %16, label %28, !dbg !523

; <label>:16:                                     ; preds = %12
  %17 = sub i64 %13, %0, !dbg !524
  %18 = icmp slt i64 %17, %1, !dbg !525
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !526
  br i1 %18, label %20, label %19, !dbg !526

; <label>:19:                                     ; preds = %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !527
  br label %44, !dbg !527

; <label>:20:                                     ; preds = %16, %8
  %21 = phi i64 [ %13, %16 ], [ %10, %8 ]
  %22 = icmp eq i64* %4, null, !dbg !529
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !532
  br i1 %22, label %44, label %23, !dbg !532

; <label>:23:                                     ; preds = %20
  %24 = icmp eq i32 %3, 0, !dbg !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !536
  br i1 %24, label %39, label %25, !dbg !536

; <label>:25:                                     ; preds = %23
  %26 = icmp eq i32 %3, 1, !dbg !537
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !539
  br i1 %26, label %27, label %44, !dbg !539

; <label>:27:                                     ; preds = %25
  store i64 %21, i64* %4, align 8, !dbg !540, !tbaa !249
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !542
  br label %44, !dbg !542

; <label>:28:                                     ; preds = %12
  %29 = icmp slt i64 %1, 0, !dbg !543
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !527
  br i1 %29, label %30, label %44, !dbg !527

; <label>:30:                                     ; preds = %28
  %31 = icmp sgt i64 %14, %1, !dbg !544
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !545
  br i1 %31, label %32, label %44, !dbg !545

; <label>:32:                                     ; preds = %30
  %33 = icmp eq i64* %4, null, !dbg !546
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !549
  br i1 %33, label %44, label %34, !dbg !549

; <label>:34:                                     ; preds = %32
  %35 = icmp eq i32 %3, 0, !dbg !550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !553
  br i1 %35, label %39, label %36, !dbg !553

; <label>:36:                                     ; preds = %34
  %37 = icmp eq i32 %3, 1, !dbg !554
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !556
  br i1 %37, label %38, label %44, !dbg !556

; <label>:38:                                     ; preds = %36
  store i64 0, i64* %4, align 8, !dbg !557, !tbaa !249
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !559
  br label %44, !dbg !559

; <label>:39:                                     ; preds = %34, %23
  %40 = shl i64 -1, %2, !dbg !560
  %41 = add i64 %1, %0, !dbg !562
  %42 = xor i64 %40, -1, !dbg !564
  %43 = and i64 %41, %42, !dbg !565
  store i64 %43, i64* %4, align 8, !dbg !566, !tbaa !249
  br label %44, !dbg !567

; <label>:44:                                     ; preds = %30, %28, %19, %36, %38, %32, %25, %27, %20, %39
  %45 = phi i32 [ 1, %39 ], [ 1, %20 ], [ 1, %27 ], [ 1, %25 ], [ -1, %32 ], [ -1, %38 ], [ -1, %36 ], [ 0, %19 ], [ 0, %28 ], [ 0, %30 ], !dbg !568
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !569
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !570
  ret i32 %45, !dbg !570
}

; Function Attrs: noredzone nounwind
define dso_local i32 @checkSignedBitfieldOverflow(i64, i64, i64, i32, i64*) local_unnamed_addr #0 !dbg !571 {
  %6 = icmp eq i64 %2, 64, !dbg !596
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !597
  br i1 %6, label %13, label %7, !dbg !597

; <label>:7:                                      ; preds = %5
  %8 = add i64 %2, -1, !dbg !598
  %9 = shl nsw i64 -1, %8, !dbg !599
  %10 = xor i64 %9, -1, !dbg !599
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !597
  %11 = sub nsw i64 %10, %0, !dbg !602
  %12 = icmp slt i64 %10, %0, !dbg !604
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !606
  br i1 %12, label %28, label %15, !dbg !606

; <label>:13:                                     ; preds = %5
  %14 = sub nsw i64 9223372036854775807, %0, !dbg !602
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !606
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !607
  br label %17

; <label>:15:                                     ; preds = %7
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !607
  %16 = icmp slt i64 %11, %1, !dbg !608
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !609
  br i1 %16, label %28, label %17, !dbg !609

; <label>:17:                                     ; preds = %13, %15
  %18 = phi i1 [ true, %15 ], [ false, %13 ]
  %19 = phi i64 [ %10, %15 ], [ 9223372036854775807, %13 ]
  %20 = phi i64 [ %9, %15 ], [ -9223372036854775808, %13 ]
  %21 = phi i64 [ %11, %15 ], [ %14, %13 ]
  %22 = sub nsw i64 %20, %0, !dbg !610
  %23 = icmp sgt i64 %0, -1, !dbg !611
  %24 = icmp sgt i64 %1, 0, !dbg !612
  %25 = and i1 %23, %24, !dbg !613
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !613
  br i1 %25, label %26, label %36, !dbg !613

; <label>:26:                                     ; preds = %17
  %27 = icmp slt i64 %21, %1, !dbg !614
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !615
  br i1 %27, label %28, label %36, !dbg !615

; <label>:28:                                     ; preds = %26, %15, %7
  %29 = phi i64 [ %19, %26 ], [ %10, %15 ], [ %10, %7 ]
  %30 = icmp eq i64* %4, null, !dbg !616
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !619
  br i1 %30, label %64, label %31, !dbg !619

; <label>:31:                                     ; preds = %28
  %32 = icmp eq i32 %3, 0, !dbg !620
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !623
  br i1 %32, label %53, label %33, !dbg !623

; <label>:33:                                     ; preds = %31
  %34 = icmp eq i32 %3, 1, !dbg !624
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !626
  br i1 %34, label %35, label %64, !dbg !626

; <label>:35:                                     ; preds = %33
  store i64 %29, i64* %4, align 8, !dbg !627, !tbaa !249
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !629
  br label %64, !dbg !629

; <label>:36:                                     ; preds = %26, %17
  %37 = icmp sgt i64 %20, %0, !dbg !630
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !632
  br i1 %37, label %46, label %38, !dbg !632

; <label>:38:                                     ; preds = %36
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !633
  br i1 %18, label %39, label %41, !dbg !633

; <label>:39:                                     ; preds = %38
  %40 = icmp sgt i64 %22, %1, !dbg !634
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !635
  br i1 %40, label %46, label %41, !dbg !635

; <label>:41:                                     ; preds = %39, %38
  %42 = and i64 %1, %0, !dbg !636
  %43 = icmp slt i64 %42, 0, !dbg !636
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !636
  br i1 %43, label %44, label %64, !dbg !636

; <label>:44:                                     ; preds = %41
  %45 = icmp sgt i64 %22, %1, !dbg !637
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !638
  br i1 %45, label %46, label %64, !dbg !638

; <label>:46:                                     ; preds = %44, %39, %36
  %47 = icmp eq i64* %4, null, !dbg !639
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !642
  br i1 %47, label %64, label %48, !dbg !642

; <label>:48:                                     ; preds = %46
  %49 = icmp eq i32 %3, 0, !dbg !643
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !646
  br i1 %49, label %53, label %50, !dbg !646

; <label>:50:                                     ; preds = %48
  %51 = icmp eq i32 %3, 1, !dbg !647
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !649
  br i1 %51, label %52, label %64, !dbg !649

; <label>:52:                                     ; preds = %50
  store i64 %20, i64* %4, align 8, !dbg !650, !tbaa !249
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !652
  br label %64, !dbg !652

; <label>:53:                                     ; preds = %48, %31
  %54 = shl i64 -1, %2, !dbg !653
  %55 = add i64 %2, -1, !dbg !655
  %56 = shl i64 1, %55, !dbg !656
  %57 = add i64 %1, %0, !dbg !660
  %58 = and i64 %56, %57, !dbg !662
  %59 = icmp eq i64 %58, 0, !dbg !662
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !664
  %60 = or i64 %54, %57, !dbg !665
  %61 = xor i64 %54, -1, !dbg !667
  %62 = and i64 %57, %61, !dbg !669
  %63 = select i1 %59, i64 %62, i64 %60, !dbg !664
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store i64 %63, i64* %4, align 8, !dbg !670, !tbaa !249
  br label %64, !dbg !671

; <label>:64:                                     ; preds = %44, %41, %50, %52, %46, %33, %35, %28, %53
  %65 = phi i32 [ 1, %53 ], [ 1, %28 ], [ 1, %35 ], [ 1, %33 ], [ -1, %46 ], [ -1, %52 ], [ -1, %50 ], [ 0, %41 ], [ 0, %44 ], !dbg !672
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !673
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !674
  ret i32 %65, !dbg !674
}

; Function Attrs: noredzone nounwind
define dso_local void @printBits(i8* nocapture readonly, i64) local_unnamed_addr #0 !dbg !675 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !687
  %3 = icmp eq i64 %1, 0, !dbg !689
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !691
  br i1 %3, label %43, label %4, !dbg !691

; <label>:4:                                      ; preds = %2, %4
  %5 = phi i64 [ %41, %4 ], [ 0, %2 ]
  %6 = getelementptr inbounds i8, i8* %0, i64 %5, !dbg !692
  %7 = load i8, i8* %6, align 1, !dbg !692, !tbaa !103
  %8 = zext i8 %7 to i64, !dbg !692
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !696
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !698
  %9 = icmp sgt i8 %7, -1, !dbg !699
  %10 = select i1 %9, i32 48, i32 49, !dbg !699
  %11 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %10) #6, !dbg !701
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !702
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !698
  %12 = and i64 %8, 64, !dbg !703
  %13 = icmp eq i64 %12, 0, !dbg !699
  %14 = select i1 %13, i32 48, i32 49, !dbg !699
  %15 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %14) #6, !dbg !701
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !702
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !698
  %16 = and i64 %8, 32, !dbg !703
  %17 = icmp eq i64 %16, 0, !dbg !699
  %18 = select i1 %17, i32 48, i32 49, !dbg !699
  %19 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %18) #6, !dbg !701
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !702
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !698
  %20 = and i64 %8, 16, !dbg !703
  %21 = icmp eq i64 %20, 0, !dbg !699
  %22 = select i1 %21, i32 48, i32 49, !dbg !699
  %23 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %22) #6, !dbg !701
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !702
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !698
  %24 = and i64 %8, 8, !dbg !703
  %25 = icmp eq i64 %24, 0, !dbg !699
  %26 = select i1 %25, i32 48, i32 49, !dbg !699
  %27 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %26) #6, !dbg !701
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !702
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !698
  %28 = and i64 %8, 4, !dbg !703
  %29 = icmp eq i64 %28, 0, !dbg !699
  %30 = select i1 %29, i32 48, i32 49, !dbg !699
  %31 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %30) #6, !dbg !701
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !702
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !698
  %32 = and i64 %8, 2, !dbg !703
  %33 = icmp eq i64 %32, 0, !dbg !699
  %34 = select i1 %33, i32 48, i32 49, !dbg !699
  %35 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %34) #6, !dbg !701
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !702
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !698
  %36 = and i64 %8, 1, !dbg !703
  %37 = icmp eq i64 %36, 0, !dbg !699
  %38 = select i1 %37, i32 48, i32 49, !dbg !699
  %39 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %38) #6, !dbg !701
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !702
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !698
  %40 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !704
  %41 = add nuw i64 %5, 1, !dbg !705
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !706
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !691
  %42 = icmp eq i64 %41, %1, !dbg !689
  br i1 %42, label %43, label %4, !dbg !691, !llvm.loop !707

; <label>:43:                                     ; preds = %4, %2
  %44 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !709
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !710
  ret void, !dbg !710
}

; Function Attrs: noredzone
declare dso_local i32 @printf(i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @getBitOffsetFromArgument(%struct.client*, %struct.redisObject* nocapture readonly, i64* nocapture, i32, i32) local_unnamed_addr #0 !dbg !711 {
  %6 = alloca i64, align 8
  %7 = bitcast i64* %6 to i8*, !dbg !967
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #8, !dbg !967
  %8 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !968
  %9 = load i8*, i8** %8, align 8, !dbg !968, !tbaa !969
  %10 = getelementptr inbounds i8, i8* %9, i64 -1, !dbg !984
  %11 = load i8, i8* %10, align 1, !dbg !984, !tbaa !103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !986
  %12 = trunc i8 %11 to i3, !dbg !986
  switch i3 %12, label %34 [
    i3 0, label %13
    i3 1, label %16
    i3 2, label %20
    i3 3, label %25
    i3 -4, label %30
  ], !dbg !986

; <label>:13:                                     ; preds = %5
  %14 = lshr i8 %11, 3, !dbg !987
  %15 = zext i8 %14 to i64, !dbg !987
  br label %34, !dbg !989

; <label>:16:                                     ; preds = %5
  %17 = getelementptr inbounds i8, i8* %9, i64 -3, !dbg !990
  %18 = load i8, i8* %17, align 1, !dbg !991, !tbaa !103
  %19 = zext i8 %18 to i64, !dbg !990
  br label %34, !dbg !992

; <label>:20:                                     ; preds = %5
  %21 = getelementptr inbounds i8, i8* %9, i64 -5, !dbg !993
  %22 = bitcast i8* %21 to i16*, !dbg !994
  %23 = load i16, i16* %22, align 1, !dbg !994, !tbaa !995
  %24 = zext i16 %23 to i64, !dbg !993
  br label %34, !dbg !997

; <label>:25:                                     ; preds = %5
  %26 = getelementptr inbounds i8, i8* %9, i64 -9, !dbg !998
  %27 = bitcast i8* %26 to i32*, !dbg !999
  %28 = load i32, i32* %27, align 1, !dbg !999, !tbaa !122
  %29 = zext i32 %28 to i64, !dbg !998
  br label %34, !dbg !1000

; <label>:30:                                     ; preds = %5
  %31 = getelementptr inbounds i8, i8* %9, i64 -17, !dbg !1001
  %32 = bitcast i8* %31 to i64*, !dbg !1002
  %33 = load i64, i64* %32, align 1, !dbg !1002, !tbaa !249
  br label %34, !dbg !1003

; <label>:34:                                     ; preds = %5, %13, %16, %20, %25, %30
  %35 = phi i64 [ %33, %30 ], [ %29, %25 ], [ %24, %20 ], [ %19, %16 ], [ %15, %13 ], [ 0, %5 ], !dbg !1004
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1005
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1006
  %36 = load i8, i8* %9, align 1, !dbg !1009, !tbaa !103
  %37 = icmp eq i8 %36, 35, !dbg !1011
  %38 = icmp ne i32 %3, 0, !dbg !1012
  %39 = and i1 %38, %37, !dbg !1013
  %40 = icmp sgt i32 %4, 0, !dbg !1014
  %41 = and i1 %40, %39, !dbg !1013
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1013
  br i1 %41, label %42, label %43, !dbg !1013

; <label>:42:                                     ; preds = %34
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1015
  br label %43, !dbg !1015

; <label>:43:                                     ; preds = %42, %34
  %44 = phi i32 [ 1, %42 ], [ 0, %34 ], !dbg !1005
  %45 = zext i32 %44 to i64, !dbg !1016
  %46 = getelementptr inbounds i8, i8* %9, i64 %45, !dbg !1016
  %47 = sub i64 %35, %45, !dbg !1018
  %48 = call i32 @string2ll(i8* %46, i64 %47, i64* nonnull %6) #6, !dbg !1020
  %49 = icmp eq i32 %48, 0, !dbg !1021
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1022
  br i1 %49, label %50, label %51, !dbg !1022

; <label>:50:                                     ; preds = %43
  call void @addReplyError(%struct.client* %0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !1023
  br label %66, !dbg !1025

; <label>:51:                                     ; preds = %43
  %52 = icmp eq i32 %44, 0, !dbg !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1028
  br i1 %52, label %57, label %53, !dbg !1028

; <label>:53:                                     ; preds = %51
  %54 = sext i32 %4 to i64, !dbg !1029
  %55 = load i64, i64* %6, align 8, !dbg !1030, !tbaa !1031
  %56 = mul nsw i64 %55, %54, !dbg !1030
  store i64 %56, i64* %6, align 8, !dbg !1030, !tbaa !1031
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1033
  br label %59, !dbg !1033

; <label>:57:                                     ; preds = %51
  %58 = load i64, i64* %6, align 8, !dbg !1034, !tbaa !1031
  br label %59, !dbg !1034

; <label>:59:                                     ; preds = %57, %53
  %60 = phi i64 [ %58, %57 ], [ %56, %53 ], !dbg !1034
  %61 = icmp slt i64 %60, 0, !dbg !1036
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1037
  br i1 %61, label %64, label %62, !dbg !1037

; <label>:62:                                     ; preds = %59
  %63 = icmp ugt i64 %60, 4294967295, !dbg !1038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1039
  br i1 %63, label %64, label %65, !dbg !1039

; <label>:64:                                     ; preds = %62, %59
  call void @addReplyError(%struct.client* %0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !1040
  br label %66, !dbg !1042

; <label>:65:                                     ; preds = %62
  store i64 %60, i64* %2, align 8, !dbg !1043, !tbaa !249
  br label %66, !dbg !1044

; <label>:66:                                     ; preds = %65, %64, %50
  %67 = phi i32 [ -1, %50 ], [ -1, %64 ], [ 0, %65 ], !dbg !1005
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1045
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #8, !dbg !1046
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1046
  ret i32 %67, !dbg !1046
}

; Function Attrs: noredzone
declare dso_local i32 @string2ll(i8*, i64, i64*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyError(%struct.client*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @getBitfieldTypeFromArgument(%struct.client*, %struct.redisObject* nocapture readonly, i32* nocapture, i32* nocapture) local_unnamed_addr #0 !dbg !1047 {
  %5 = alloca i64, align 8
  %6 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !1062
  %7 = load i8*, i8** %6, align 8, !dbg !1062, !tbaa !969
  %8 = bitcast i64* %5 to i8*, !dbg !1064
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #8, !dbg !1064
  %9 = load i8, i8* %7, align 1, !dbg !1065, !tbaa !103
  %10 = icmp eq i8 %9, 105, !dbg !1067
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1068
  br i1 %10, label %14, label %11, !dbg !1068

; <label>:11:                                     ; preds = %4
  %12 = icmp eq i8 %9, 117, !dbg !1069
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1071
  br i1 %12, label %14, label %13, !dbg !1071

; <label>:13:                                     ; preds = %11
  tail call void @addReplyError(%struct.client* %0, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !1072
  br label %35, !dbg !1074

; <label>:14:                                     ; preds = %11, %4
  %15 = phi i32 [ 1, %4 ], [ 0, %11 ]
  store i32 %15, i32* %2, align 4, !dbg !1075, !tbaa !122
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %16 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1077
  %17 = tail call i64 @strlen(i8* nonnull %16) #6, !dbg !1079
  %18 = call i32 @string2ll(i8* nonnull %16, i64 %17, i64* nonnull %5) #6, !dbg !1081
  %19 = icmp eq i32 %18, 0, !dbg !1082
  %20 = load i64, i64* %5, align 8, !dbg !1083
  %21 = icmp slt i64 %20, 1, !dbg !1084
  %22 = or i1 %19, %21, !dbg !1085
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1085
  br i1 %22, label %32, label %23, !dbg !1085

; <label>:23:                                     ; preds = %14
  %24 = load i32, i32* %2, align 4, !dbg !1086, !tbaa !122
  %25 = icmp eq i32 %24, 1, !dbg !1087
  %26 = icmp sgt i64 %20, 64, !dbg !1088
  %27 = and i1 %26, %25, !dbg !1089
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1089
  br i1 %27, label %32, label %28, !dbg !1089

; <label>:28:                                     ; preds = %23
  %29 = icmp eq i32 %24, 0, !dbg !1090
  %30 = icmp sgt i64 %20, 63, !dbg !1091
  %31 = and i1 %30, %29, !dbg !1092
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1092
  br i1 %31, label %32, label %33, !dbg !1092

; <label>:32:                                     ; preds = %28, %23, %14
  call void @addReplyError(%struct.client* %0, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !1093
  br label %35, !dbg !1095

; <label>:33:                                     ; preds = %28
  %34 = trunc i64 %20 to i32, !dbg !1096
  store i32 %34, i32* %3, align 4, !dbg !1097, !tbaa !122
  br label %35, !dbg !1098

; <label>:35:                                     ; preds = %33, %32, %13
  %36 = phi i32 [ -1, %32 ], [ 0, %33 ], [ -1, %13 ], !dbg !1099
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1099
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #8, !dbg !1100
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1100
  ret i32 %36, !dbg !1100
}

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @lookupStringForBitCommand(%struct.client*, i64) local_unnamed_addr #0 !dbg !1101 {
  %3 = lshr i64 %1, 3, !dbg !1111
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1113
  %5 = load %struct.redisDb*, %struct.redisDb** %4, align 8, !dbg !1113, !tbaa !1114
  %6 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1118
  %7 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !1118, !tbaa !1119
  %8 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %7, i64 1, !dbg !1120
  %9 = load %struct.redisObject*, %struct.redisObject** %8, align 8, !dbg !1120, !tbaa !1121
  %10 = tail call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %5, %struct.redisObject* %9) #6, !dbg !1122
  %11 = icmp eq %struct.redisObject* %10, null, !dbg !1124
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1126
  br i1 %11, label %12, label %20, !dbg !1126

; <label>:12:                                     ; preds = %2
  %13 = add nuw nsw i64 %3, 1, !dbg !1127
  %14 = tail call i8* @sdsnewlen(i8* null, i64 %13) #6, !dbg !1129
  %15 = tail call %struct.redisObject* @createObject(i32 0, i8* %14) #6, !dbg !1130
  %16 = load %struct.redisDb*, %struct.redisDb** %4, align 8, !dbg !1131, !tbaa !1114
  %17 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !1132, !tbaa !1119
  %18 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %17, i64 1, !dbg !1133
  %19 = load %struct.redisObject*, %struct.redisObject** %18, align 8, !dbg !1133, !tbaa !1121
  tail call void @dbAdd(%struct.redisDb* %16, %struct.redisObject* %19, %struct.redisObject* %15) #6, !dbg !1134
  br label %33, !dbg !1135

; <label>:20:                                     ; preds = %2
  %21 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %10, i32 0) #6, !dbg !1136
  %22 = icmp eq i32 %21, 0, !dbg !1136
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1139
  br i1 %22, label %23, label %35, !dbg !1139

; <label>:23:                                     ; preds = %20
  %24 = load %struct.redisDb*, %struct.redisDb** %4, align 8, !dbg !1140, !tbaa !1114
  %25 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !1141, !tbaa !1119
  %26 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %25, i64 1, !dbg !1142
  %27 = load %struct.redisObject*, %struct.redisObject** %26, align 8, !dbg !1142, !tbaa !1121
  %28 = tail call %struct.redisObject* @dbUnshareStringValue(%struct.redisDb* %24, %struct.redisObject* %27, %struct.redisObject* nonnull %10) #6, !dbg !1143
  %29 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %28, i64 0, i32 2, !dbg !1144
  %30 = load i8*, i8** %29, align 8, !dbg !1144, !tbaa !969
  %31 = add nuw nsw i64 %3, 1, !dbg !1145
  %32 = tail call i8* @sdsgrowzero(i8* %30, i64 %31) #6, !dbg !1146
  store i8* %32, i8** %29, align 8, !dbg !1147, !tbaa !969
  br label %33

; <label>:33:                                     ; preds = %23, %12
  %34 = phi %struct.redisObject* [ %15, %12 ], [ %28, %23 ], !dbg !1148
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %35, !dbg !1149

; <label>:35:                                     ; preds = %20, %33
  %36 = phi %struct.redisObject* [ %34, %33 ], [ null, %20 ], !dbg !1150
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1150
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1151
  ret %struct.redisObject* %36, !dbg !1151
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
define dso_local i8* @getObjectReadOnlyString(%struct.redisObject* readonly, i64*, i8*) local_unnamed_addr #0 !dbg !1152 {
  %4 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !1164
  %5 = load i32, i32* %4, align 8, !dbg !1164
  %6 = and i32 %5, 15, !dbg !1164
  %7 = icmp eq i32 %6, 0, !dbg !1164
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1164
  br i1 %7, label %9, label %8, !dbg !1164

; <label>:8:                                      ; preds = %3
  tail call void @_serverAssert(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 507) #6, !dbg !1164
  tail call void @_exit(i32 1) #7, !dbg !1164
  unreachable

; <label>:9:                                      ; preds = %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1166
  %10 = and i32 %5, 240, !dbg !1168
  %11 = icmp eq i32 %10, 16, !dbg !1169
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1170
  br i1 %11, label %12, label %20, !dbg !1170

; <label>:12:                                     ; preds = %9
  %13 = icmp eq i64* %1, null, !dbg !1171
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1174
  br i1 %13, label %51, label %14, !dbg !1174

; <label>:14:                                     ; preds = %12
  %15 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !1175
  %16 = bitcast i8** %15 to i64*, !dbg !1175
  %17 = load i64, i64* %16, align 8, !dbg !1175, !tbaa !969
  %18 = tail call i32 @ll2string(i8* %2, i64 21, i64 %17) #6, !dbg !1176
  %19 = sext i32 %18 to i64, !dbg !1176
  store i64 %19, i64* %1, align 8, !dbg !1177, !tbaa !249
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1178
  br label %51, !dbg !1178

; <label>:20:                                     ; preds = %9
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1179
  %21 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !1180
  %22 = load i8*, i8** %21, align 8, !dbg !1180, !tbaa !969
  %23 = icmp eq i64* %1, null, !dbg !1183
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1185
  br i1 %23, label %51, label %24, !dbg !1185

; <label>:24:                                     ; preds = %20
  %25 = getelementptr inbounds i8, i8* %22, i64 -1, !dbg !1188
  %26 = load i8, i8* %25, align 1, !dbg !1188, !tbaa !103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1190
  %27 = trunc i8 %26 to i3, !dbg !1190
  switch i3 %27, label %49 [
    i3 0, label %28
    i3 1, label %31
    i3 2, label %35
    i3 3, label %40
    i3 -4, label %45
  ], !dbg !1190

; <label>:28:                                     ; preds = %24
  %29 = lshr i8 %26, 3, !dbg !1191
  %30 = zext i8 %29 to i64, !dbg !1191
  br label %49, !dbg !1192

; <label>:31:                                     ; preds = %24
  %32 = getelementptr inbounds i8, i8* %22, i64 -3, !dbg !1193
  %33 = load i8, i8* %32, align 1, !dbg !1194, !tbaa !103
  %34 = zext i8 %33 to i64, !dbg !1193
  br label %49, !dbg !1195

; <label>:35:                                     ; preds = %24
  %36 = getelementptr inbounds i8, i8* %22, i64 -5, !dbg !1196
  %37 = bitcast i8* %36 to i16*, !dbg !1197
  %38 = load i16, i16* %37, align 1, !dbg !1197, !tbaa !995
  %39 = zext i16 %38 to i64, !dbg !1196
  br label %49, !dbg !1198

; <label>:40:                                     ; preds = %24
  %41 = getelementptr inbounds i8, i8* %22, i64 -9, !dbg !1199
  %42 = bitcast i8* %41 to i32*, !dbg !1200
  %43 = load i32, i32* %42, align 1, !dbg !1200, !tbaa !122
  %44 = zext i32 %43 to i64, !dbg !1199
  br label %49, !dbg !1201

; <label>:45:                                     ; preds = %24
  %46 = getelementptr inbounds i8, i8* %22, i64 -17, !dbg !1202
  %47 = bitcast i8* %46 to i64*, !dbg !1203
  %48 = load i64, i64* %47, align 1, !dbg !1203, !tbaa !249
  br label %49, !dbg !1204

; <label>:49:                                     ; preds = %24, %28, %31, %35, %40, %45
  %50 = phi i64 [ %48, %45 ], [ %44, %40 ], [ %39, %35 ], [ %34, %31 ], [ %30, %28 ], [ 0, %24 ], !dbg !1205
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1206
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1207
  store i64 %50, i64* %1, align 8, !dbg !1208, !tbaa !249
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1209
  br label %51, !dbg !1209

; <label>:51:                                     ; preds = %12, %20, %49, %14
  %52 = phi i8* [ %2, %14 ], [ %2, %12 ], [ %22, %49 ], [ %22, %20 ], !dbg !1210
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1211
  ret i8* %52, !dbg !1211
}

; Function Attrs: noredzone
declare dso_local void @_serverAssert(i8*, i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @ll2string(i8*, i64, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @setbitCommand(%struct.client*) local_unnamed_addr #0 !dbg !1212 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = bitcast i64* %2 to i8*, !dbg !1226
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #8, !dbg !1226
  %5 = bitcast i64* %3 to i8*, !dbg !1227
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #8, !dbg !1227
  %6 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1228
  %7 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !1228, !tbaa !1119
  %8 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %7, i64 2, !dbg !1230
  %9 = load %struct.redisObject*, %struct.redisObject** %8, align 8, !dbg !1230, !tbaa !1121
  %10 = call i32 @getBitOffsetFromArgument(%struct.client* %0, %struct.redisObject* %9, i64* nonnull %2, i32 0, i32 0) #9, !dbg !1232
  %11 = icmp eq i32 %10, 0, !dbg !1233
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1234
  br i1 %11, label %12, label %63, !dbg !1234

; <label>:12:                                     ; preds = %1
  %13 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !1235, !tbaa !1119
  %14 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %13, i64 3, !dbg !1237
  %15 = load %struct.redisObject*, %struct.redisObject** %14, align 8, !dbg !1237, !tbaa !1121
  %16 = call i32 @getLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %15, i64* nonnull %3, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !1239
  %17 = icmp eq i32 %16, 0, !dbg !1240
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1241
  br i1 %17, label %18, label %63, !dbg !1241

; <label>:18:                                     ; preds = %12
  %19 = load i64, i64* %3, align 8, !dbg !1242, !tbaa !249
  %20 = icmp ugt i64 %19, 1, !dbg !1244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1245
  br i1 %20, label %21, label %22, !dbg !1245

; <label>:21:                                     ; preds = %18
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !1246
  br label %63, !dbg !1248

; <label>:22:                                     ; preds = %18
  %23 = load i64, i64* %2, align 8, !dbg !1249, !tbaa !249
  %24 = call %struct.redisObject* @lookupStringForBitCommand(%struct.client* nonnull %0, i64 %23) #9, !dbg !1251
  %25 = icmp eq %struct.redisObject* %24, null, !dbg !1253
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1254
  br i1 %25, label %63, label %26, !dbg !1254

; <label>:26:                                     ; preds = %22
  %27 = lshr i64 %23, 3, !dbg !1255
  %28 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %24, i64 0, i32 2, !dbg !1257
  %29 = load i8*, i8** %28, align 8, !dbg !1257, !tbaa !969
  %30 = getelementptr inbounds i8, i8* %29, i64 %27, !dbg !1258
  %31 = load i8, i8* %30, align 1, !dbg !1258, !tbaa !103
  %32 = zext i8 %31 to i32, !dbg !1258
  %33 = and i64 %23, 7, !dbg !1260
  %34 = xor i64 %33, 7, !dbg !1261
  %35 = trunc i64 %34 to i32, !dbg !1263
  %36 = shl i32 1, %35, !dbg !1263
  %37 = and i32 %36, %32, !dbg !1264
  %38 = xor i32 %36, 255, !dbg !1266
  %39 = and i32 %38, %32, !dbg !1267
  %40 = load i64, i64* %3, align 8, !dbg !1268, !tbaa !249
  %41 = and i64 %40, 1, !dbg !1269
  %42 = shl i64 %41, %34, !dbg !1270
  %43 = trunc i64 %42 to i32, !dbg !1271
  %44 = or i32 %39, %43, !dbg !1271
  %45 = trunc i32 %44 to i8, !dbg !1272
  store i8 %45, i8* %30, align 1, !dbg !1273, !tbaa !103
  %46 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1274
  %47 = load %struct.redisDb*, %struct.redisDb** %46, align 8, !dbg !1274, !tbaa !1114
  %48 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !1275, !tbaa !1119
  %49 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %48, i64 1, !dbg !1276
  %50 = load %struct.redisObject*, %struct.redisObject** %49, align 8, !dbg !1276, !tbaa !1121
  call void @signalModifiedKey(%struct.redisDb* %47, %struct.redisObject* %50) #6, !dbg !1277
  %51 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !1278, !tbaa !1119
  %52 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %51, i64 1, !dbg !1279
  %53 = load %struct.redisObject*, %struct.redisObject** %52, align 8, !dbg !1279, !tbaa !1121
  %54 = load %struct.redisDb*, %struct.redisDb** %46, align 8, !dbg !1280, !tbaa !1114
  %55 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %54, i64 0, i32 5, !dbg !1281
  %56 = load i32, i32* %55, align 8, !dbg !1281, !tbaa !1282
  call void @notifyKeyspaceEvent(i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), %struct.redisObject* %53, i32 %56) #6, !dbg !1284
  %57 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1285, !tbaa !1286
  %58 = add nsw i64 %57, 1, !dbg !1285
  store i64 %58, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1285, !tbaa !1286
  %59 = icmp eq i32 %37, 0, !dbg !1292
  %60 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 5), align 8, !dbg !1293
  %61 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !1294
  %62 = select i1 %59, %struct.redisObject* %61, %struct.redisObject* %60, !dbg !1292
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %62) #6, !dbg !1295
  br label %63, !dbg !1296

; <label>:63:                                     ; preds = %22, %12, %1, %26, %21
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1297
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #8, !dbg !1296
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #8, !dbg !1296
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1296
  ret void, !dbg !1296
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
define dso_local void @getbitCommand(%struct.client*) local_unnamed_addr #0 !dbg !1298 {
  %2 = alloca [32 x i8], align 16
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0, !dbg !1311
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #8, !dbg !1311
  %5 = bitcast i64* %3 to i8*, !dbg !1313
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #8, !dbg !1313
  %6 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1315
  %7 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !1315, !tbaa !1119
  %8 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %7, i64 2, !dbg !1317
  %9 = load %struct.redisObject*, %struct.redisObject** %8, align 8, !dbg !1317, !tbaa !1121
  %10 = call i32 @getBitOffsetFromArgument(%struct.client* %0, %struct.redisObject* %9, i64* nonnull %3, i32 0, i32 0) #9, !dbg !1319
  %11 = icmp eq i32 %10, 0, !dbg !1320
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1321
  br i1 %11, label %12, label %90, !dbg !1321

; <label>:12:                                     ; preds = %1
  %13 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !1322, !tbaa !1119
  %14 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %13, i64 1, !dbg !1324
  %15 = load %struct.redisObject*, %struct.redisObject** %14, align 8, !dbg !1324, !tbaa !1121
  %16 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !1325, !tbaa !1326
  %17 = tail call %struct.redisObject* @lookupKeyReadOrReply(%struct.client* nonnull %0, %struct.redisObject* %15, %struct.redisObject* %16) #6, !dbg !1328
  %18 = icmp eq %struct.redisObject* %17, null, !dbg !1330
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1331
  br i1 %18, label %90, label %19, !dbg !1331

; <label>:19:                                     ; preds = %12
  %20 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %17, i32 0) #6, !dbg !1332
  %21 = icmp eq i32 %20, 0, !dbg !1332
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1333
  br i1 %21, label %22, label %90, !dbg !1333

; <label>:22:                                     ; preds = %19
  %23 = load i64, i64* %3, align 8, !dbg !1334, !tbaa !249
  %24 = lshr i64 %23, 3, !dbg !1335
  %25 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %17, i64 0, i32 0, !dbg !1338
  %26 = load i32, i32* %25, align 8, !dbg !1338
  %27 = lshr i32 %26, 4, !dbg !1338
  %28 = and i32 %27, 15, !dbg !1338
  %29 = icmp eq i32 %28, 0, !dbg !1338
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1338
  br i1 %29, label %32, label %30, !dbg !1338

; <label>:30:                                     ; preds = %22
  %31 = icmp eq i32 %28, 8, !dbg !1338
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1340
  br i1 %31, label %32, label %67, !dbg !1340

; <label>:32:                                     ; preds = %30, %22
  %33 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %17, i64 0, i32 2, !dbg !1341
  %34 = load i8*, i8** %33, align 8, !dbg !1341, !tbaa !969
  %35 = getelementptr inbounds i8, i8* %34, i64 -1, !dbg !1346
  %36 = load i8, i8* %35, align 1, !dbg !1346, !tbaa !103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1348
  %37 = trunc i8 %36 to i3, !dbg !1348
  switch i3 %37, label %59 [
    i3 0, label %38
    i3 1, label %41
    i3 2, label %45
    i3 3, label %50
    i3 -4, label %55
  ], !dbg !1348

; <label>:38:                                     ; preds = %32
  %39 = lshr i8 %36, 3, !dbg !1349
  %40 = zext i8 %39 to i64, !dbg !1349
  br label %60, !dbg !1350

; <label>:41:                                     ; preds = %32
  %42 = getelementptr inbounds i8, i8* %34, i64 -3, !dbg !1351
  %43 = load i8, i8* %42, align 1, !dbg !1352, !tbaa !103
  %44 = zext i8 %43 to i64, !dbg !1351
  br label %60, !dbg !1353

; <label>:45:                                     ; preds = %32
  %46 = getelementptr inbounds i8, i8* %34, i64 -5, !dbg !1354
  %47 = bitcast i8* %46 to i16*, !dbg !1355
  %48 = load i16, i16* %47, align 1, !dbg !1355, !tbaa !995
  %49 = zext i16 %48 to i64, !dbg !1354
  br label %60, !dbg !1356

; <label>:50:                                     ; preds = %32
  %51 = getelementptr inbounds i8, i8* %34, i64 -9, !dbg !1357
  %52 = bitcast i8* %51 to i32*, !dbg !1358
  %53 = load i32, i32* %52, align 1, !dbg !1358, !tbaa !122
  %54 = zext i32 %53 to i64, !dbg !1357
  br label %60, !dbg !1359

; <label>:55:                                     ; preds = %32
  %56 = getelementptr inbounds i8, i8* %34, i64 -17, !dbg !1360
  %57 = bitcast i8* %56 to i64*, !dbg !1361
  %58 = load i64, i64* %57, align 1, !dbg !1361, !tbaa !249
  br label %60, !dbg !1362

; <label>:59:                                     ; preds = %32
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1363
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1364
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1365
  br label %86, !dbg !1365

; <label>:60:                                     ; preds = %38, %41, %45, %50, %55
  %61 = phi i64 [ %58, %55 ], [ %54, %50 ], [ %49, %45 ], [ %44, %41 ], [ %40, %38 ], !dbg !1366
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1367
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1364
  %62 = icmp ult i64 %24, %61, !dbg !1368
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1365
  br i1 %62, label %63, label %86, !dbg !1365

; <label>:63:                                     ; preds = %60
  %64 = getelementptr inbounds i8, i8* %34, i64 %24, !dbg !1369
  %65 = load i8, i8* %64, align 1, !dbg !1369, !tbaa !103
  %66 = zext i8 %65 to i32, !dbg !1369
  br label %78, !dbg !1370

; <label>:67:                                     ; preds = %30
  %68 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %17, i64 0, i32 2, !dbg !1371
  %69 = bitcast i8** %68 to i64*, !dbg !1371
  %70 = load i64, i64* %69, align 8, !dbg !1371, !tbaa !969
  %71 = call i32 @ll2string(i8* nonnull %4, i64 32, i64 %70) #6, !dbg !1374
  %72 = sext i32 %71 to i64, !dbg !1375
  %73 = icmp ult i64 %24, %72, !dbg !1376
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1377
  br i1 %73, label %74, label %86, !dbg !1377

; <label>:74:                                     ; preds = %67
  %75 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 %24, !dbg !1378
  %76 = load i8, i8* %75, align 1, !dbg !1378, !tbaa !103
  %77 = sext i8 %76 to i32, !dbg !1378
  br label %78, !dbg !1379

; <label>:78:                                     ; preds = %74, %63
  %79 = phi i32 [ %77, %74 ], [ %66, %63 ]
  %80 = trunc i64 %23 to i32, !dbg !1367
  %81 = and i32 %80, 7, !dbg !1367
  %82 = xor i32 %81, 7, !dbg !1367
  %83 = shl i32 1, %82, !dbg !1367
  %84 = and i32 %83, %79, !dbg !1367
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1367
  %85 = icmp eq i32 %84, 0, !dbg !1380
  br i1 %85, label %86, label %87, !dbg !1380

; <label>:86:                                     ; preds = %59, %67, %60, %78
  br label %87, !dbg !1380

; <label>:87:                                     ; preds = %78, %86
  %88 = phi %struct.redisObject** [ getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), %86 ], [ getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 5), %78 ]
  %89 = load %struct.redisObject*, %struct.redisObject** %88, align 8, !dbg !1381
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %89) #6, !dbg !1382
  br label %90, !dbg !1383

; <label>:90:                                     ; preds = %12, %19, %1, %87
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1384
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #8, !dbg !1383
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #8, !dbg !1383
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1383
  ret void, !dbg !1383
}

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @lookupKeyReadOrReply(%struct.client*, %struct.redisObject*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @bitopCommand(%struct.client*) local_unnamed_addr #0 !dbg !1385 {
  %2 = alloca [16 x i64*], align 16
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1420
  %4 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !1420, !tbaa !1119
  %5 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %4, i64 1, !dbg !1421
  %6 = load %struct.redisObject*, %struct.redisObject** %5, align 8, !dbg !1421, !tbaa !1121
  %7 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %6, i64 0, i32 2, !dbg !1422
  %8 = load i8*, i8** %7, align 8, !dbg !1422, !tbaa !969
  %9 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %4, i64 2, !dbg !1424
  %10 = load %struct.redisObject*, %struct.redisObject** %9, align 8, !dbg !1424, !tbaa !1121
  %11 = load i8, i8* %8, align 1, !dbg !1429, !tbaa !103
  %12 = icmp eq i8 %11, 97, !dbg !1431
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1432
  br i1 %12, label %15, label %13, !dbg !1432

; <label>:13:                                     ; preds = %1
  %14 = icmp eq i8 %11, 65, !dbg !1433
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1434
  br i1 %14, label %15, label %18, !dbg !1434

; <label>:15:                                     ; preds = %13, %1
  %16 = tail call i32 @strcasecmp(i8* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0)) #10, !dbg !1435
  %17 = icmp eq i32 %16, 0, !dbg !1435
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1436
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1437
  br i1 %17, label %42, label %20, !dbg !1436

; <label>:18:                                     ; preds = %13
  %19 = icmp eq i8 %11, 111, !dbg !1439
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1440
  br i1 %19, label %22, label %20, !dbg !1440

; <label>:20:                                     ; preds = %15, %18
  %21 = icmp eq i8 %11, 79, !dbg !1441
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1442
  br i1 %21, label %22, label %25, !dbg !1442

; <label>:22:                                     ; preds = %20, %18
  %23 = tail call i32 @strcasecmp(i8* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0)) #10, !dbg !1443
  %24 = icmp eq i32 %23, 0, !dbg !1443
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1444
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1445
  br i1 %24, label %42, label %27, !dbg !1444

; <label>:25:                                     ; preds = %20
  %26 = icmp eq i8 %11, 120, !dbg !1447
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1448
  br i1 %26, label %29, label %27, !dbg !1448

; <label>:27:                                     ; preds = %22, %25
  %28 = icmp eq i8 %11, 88, !dbg !1449
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1450
  br i1 %28, label %29, label %33, !dbg !1450

; <label>:29:                                     ; preds = %27, %25
  %30 = tail call i32 @strcasecmp(i8* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0)) #10, !dbg !1451
  %31 = icmp eq i32 %30, 0, !dbg !1451
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1452
  br i1 %31, label %32, label %33, !dbg !1452

; <label>:32:                                     ; preds = %29
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1454
  br label %42, !dbg !1454

; <label>:33:                                     ; preds = %29, %27
  %34 = icmp eq i8 %11, 110, !dbg !1455
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1457
  br i1 %34, label %37, label %35, !dbg !1457

; <label>:35:                                     ; preds = %33
  %36 = icmp eq i8 %11, 78, !dbg !1458
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1459
  br i1 %36, label %37, label %40, !dbg !1459

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 @strcasecmp(i8* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0)) #10, !dbg !1460
  %39 = icmp eq i32 %38, 0, !dbg !1460
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1461
  br i1 %39, label %46, label %40, !dbg !1461

; <label>:40:                                     ; preds = %37, %35
  %41 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !1462, !tbaa !1464
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %41) #6, !dbg !1465
  br label %439, !dbg !1466

; <label>:42:                                     ; preds = %22, %15, %32
  %43 = phi i64 [ 2, %32 ], [ 0, %15 ], [ 1, %22 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1467
  %44 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8
  %45 = load i32, i32* %44, align 8, !dbg !1469, !tbaa !1470
  br label %51, !dbg !1467

; <label>:46:                                     ; preds = %37
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1467
  %47 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !1471
  %48 = load i32, i32* %47, align 8, !dbg !1471, !tbaa !1470
  %49 = icmp eq i32 %48, 4, !dbg !1472
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1473
  br i1 %49, label %51, label %50, !dbg !1473

; <label>:50:                                     ; preds = %46
  tail call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.14, i64 0, i64 0)) #6, !dbg !1474
  br label %439, !dbg !1476

; <label>:51:                                     ; preds = %42, %46
  %52 = phi i32 [ %45, %42 ], [ 4, %46 ], !dbg !1469
  %53 = phi i1 [ false, %42 ], [ true, %46 ]
  %54 = phi i64 [ %43, %42 ], [ 3, %46 ]
  %55 = add nsw i32 %52, -3, !dbg !1477
  %56 = sext i32 %55 to i64, !dbg !1478
  %57 = shl nsw i64 %56, 3, !dbg !1480
  %58 = tail call i8* @zmalloc(i64 %57) #6, !dbg !1481
  %59 = bitcast i8* %58 to i8**, !dbg !1481
  %60 = tail call i8* @zmalloc(i64 %57) #6, !dbg !1483
  %61 = bitcast i8* %60 to i64*, !dbg !1483
  %62 = tail call i8* @zmalloc(i64 %57) #6, !dbg !1485
  %63 = bitcast i8* %62 to %struct.redisObject**, !dbg !1485
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1488
  %64 = icmp eq i32 %55, 0, !dbg !1489
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1490
  br i1 %64, label %65, label %66, !dbg !1490

; <label>:65:                                     ; preds = %51
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1491
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1492
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1494
  br label %414, !dbg !1494

; <label>:66:                                     ; preds = %51
  %67 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2
  br label %68, !dbg !1490

; <label>:68:                                     ; preds = %66, %151
  %69 = phi i64 [ 0, %66 ], [ %153, %151 ]
  %70 = phi i64 [ 0, %66 ], [ %152, %151 ]
  %71 = phi i64 [ 0, %66 ], [ %154, %151 ]
  %72 = load %struct.redisDb*, %struct.redisDb** %67, align 8, !dbg !1495, !tbaa !1114
  %73 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !1496, !tbaa !1119
  %74 = add i64 %71, 3, !dbg !1497
  %75 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %73, i64 %74, !dbg !1498
  %76 = load %struct.redisObject*, %struct.redisObject** %75, align 8, !dbg !1498, !tbaa !1121
  %77 = tail call %struct.redisObject* @lookupKeyRead(%struct.redisDb* %72, %struct.redisObject* %76) #6, !dbg !1499
  %78 = icmp eq %struct.redisObject* %77, null, !dbg !1501
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1503
  br i1 %78, label %79, label %83, !dbg !1503

; <label>:79:                                     ; preds = %68
  %80 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %63, i64 %71, !dbg !1504
  store %struct.redisObject* null, %struct.redisObject** %80, align 8, !dbg !1506, !tbaa !1121
  %81 = getelementptr inbounds i8*, i8** %59, i64 %71, !dbg !1507
  store i8* null, i8** %81, align 8, !dbg !1508, !tbaa !1121
  %82 = getelementptr inbounds i64, i64* %61, i64 %71, !dbg !1509
  store i64 0, i64* %82, align 8, !dbg !1510, !tbaa !249
  br label %148, !dbg !1511

; <label>:83:                                     ; preds = %68
  %84 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %77, i32 0) #6, !dbg !1512
  %85 = icmp eq i32 %84, 0, !dbg !1512
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1513
  br i1 %85, label %98, label %86, !dbg !1513

; <label>:86:                                     ; preds = %83
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1515
  %87 = icmp eq i64 %71, 0, !dbg !1517
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1519
  br i1 %87, label %97, label %88, !dbg !1519

; <label>:88:                                     ; preds = %86, %94
  %89 = phi i64 [ %95, %94 ], [ 0, %86 ]
  %90 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %63, i64 %89, !dbg !1520
  %91 = load %struct.redisObject*, %struct.redisObject** %90, align 8, !dbg !1520, !tbaa !1121
  %92 = icmp eq %struct.redisObject* %91, null, !dbg !1520
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1523
  br i1 %92, label %94, label %93, !dbg !1523

; <label>:93:                                     ; preds = %88
  tail call void @decrRefCount(%struct.redisObject* nonnull %91) #6, !dbg !1524
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1524
  br label %94, !dbg !1524

; <label>:94:                                     ; preds = %88, %93
  %95 = add nuw i64 %89, 1, !dbg !1525
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1526
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1519
  %96 = icmp eq i64 %95, %71, !dbg !1517
  br i1 %96, label %97, label %88, !dbg !1519, !llvm.loop !1527

; <label>:97:                                     ; preds = %94, %86
  tail call void @zfree(i8* %58) #6, !dbg !1529
  tail call void @zfree(i8* %60) #6, !dbg !1530
  tail call void @zfree(i8* %62) #6, !dbg !1531
  br label %439

; <label>:98:                                     ; preds = %83
  %99 = tail call %struct.redisObject* @getDecodedObject(%struct.redisObject* nonnull %77) #6, !dbg !1532
  %100 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %63, i64 %71, !dbg !1533
  store %struct.redisObject* %99, %struct.redisObject** %100, align 8, !dbg !1534, !tbaa !1121
  %101 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %99, i64 0, i32 2, !dbg !1535
  %102 = bitcast i8** %101 to i64*, !dbg !1535
  %103 = load i64, i64* %102, align 8, !dbg !1535, !tbaa !969
  %104 = getelementptr inbounds i8*, i8** %59, i64 %71, !dbg !1536
  %105 = bitcast i8** %104 to i64*, !dbg !1537
  store i64 %103, i64* %105, align 8, !dbg !1537, !tbaa !1121
  %106 = load %struct.redisObject*, %struct.redisObject** %100, align 8, !dbg !1538, !tbaa !1121
  %107 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %106, i64 0, i32 2, !dbg !1539
  %108 = load i8*, i8** %107, align 8, !dbg !1539, !tbaa !969
  %109 = getelementptr inbounds i8, i8* %108, i64 -1, !dbg !1542
  %110 = load i8, i8* %109, align 1, !dbg !1542, !tbaa !103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1544
  %111 = trunc i8 %110 to i3, !dbg !1544
  switch i3 %111, label %133 [
    i3 0, label %112
    i3 1, label %115
    i3 2, label %119
    i3 3, label %124
    i3 -4, label %129
  ], !dbg !1544

; <label>:112:                                    ; preds = %98
  %113 = lshr i8 %110, 3, !dbg !1545
  %114 = zext i8 %113 to i64, !dbg !1545
  br label %135, !dbg !1546

; <label>:115:                                    ; preds = %98
  %116 = getelementptr inbounds i8, i8* %108, i64 -3, !dbg !1547
  %117 = load i8, i8* %116, align 1, !dbg !1548, !tbaa !103
  %118 = zext i8 %117 to i64, !dbg !1547
  br label %135, !dbg !1549

; <label>:119:                                    ; preds = %98
  %120 = getelementptr inbounds i8, i8* %108, i64 -5, !dbg !1550
  %121 = bitcast i8* %120 to i16*, !dbg !1551
  %122 = load i16, i16* %121, align 1, !dbg !1551, !tbaa !995
  %123 = zext i16 %122 to i64, !dbg !1550
  br label %135, !dbg !1552

; <label>:124:                                    ; preds = %98
  %125 = getelementptr inbounds i8, i8* %108, i64 -9, !dbg !1553
  %126 = bitcast i8* %125 to i32*, !dbg !1554
  %127 = load i32, i32* %126, align 1, !dbg !1554, !tbaa !122
  %128 = zext i32 %127 to i64, !dbg !1553
  br label %135, !dbg !1555

; <label>:129:                                    ; preds = %98
  %130 = getelementptr inbounds i8, i8* %108, i64 -17, !dbg !1556
  %131 = bitcast i8* %130 to i64*, !dbg !1557
  %132 = load i64, i64* %131, align 1, !dbg !1557, !tbaa !249
  br label %135, !dbg !1558

; <label>:133:                                    ; preds = %98
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1559
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1560
  %134 = getelementptr inbounds i64, i64* %61, i64 %71, !dbg !1561
  store i64 0, i64* %134, align 8, !dbg !1562, !tbaa !249
  br label %139, !dbg !1563

; <label>:135:                                    ; preds = %112, %115, %119, %124, %129
  %136 = phi i64 [ %132, %129 ], [ %128, %124 ], [ %123, %119 ], [ %118, %115 ], [ %114, %112 ], !dbg !1564
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1565
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1560
  %137 = getelementptr inbounds i64, i64* %61, i64 %71, !dbg !1561
  store i64 %136, i64* %137, align 8, !dbg !1562, !tbaa !249
  %138 = icmp ugt i64 %136, %70, !dbg !1566
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1563
  br i1 %138, label %139, label %142, !dbg !1563

; <label>:139:                                    ; preds = %135, %133
  %140 = phi i64 [ 0, %133 ], [ %136, %135 ]
  %141 = phi i64 [ %70, %133 ], [ %136, %135 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1568
  br label %142, !dbg !1569

; <label>:142:                                    ; preds = %139, %135
  %143 = phi i64 [ %136, %135 ], [ %140, %139 ]
  %144 = phi i64 [ %70, %135 ], [ %141, %139 ], !dbg !1571
  %145 = icmp eq i64 %71, 0, !dbg !1569
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1572
  br i1 %145, label %148, label %146, !dbg !1572

; <label>:146:                                    ; preds = %142
  %147 = icmp ult i64 %143, %69, !dbg !1573
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1574
  br i1 %147, label %148, label %151, !dbg !1574

; <label>:148:                                    ; preds = %142, %146, %79
  %149 = phi i64 [ %70, %79 ], [ %144, %146 ], [ %144, %142 ]
  %150 = phi i64 [ 0, %79 ], [ %143, %146 ], [ %143, %142 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1575
  br label %151, !dbg !1576

; <label>:151:                                    ; preds = %148, %146
  %152 = phi i64 [ %144, %146 ], [ %149, %148 ], !dbg !1568
  %153 = phi i64 [ %69, %146 ], [ %150, %148 ], !dbg !1571
  %154 = add nuw i64 %71, 1, !dbg !1576
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1577
  %155 = icmp ult i64 %154, %56, !dbg !1489
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1490
  br i1 %155, label %68, label %156, !dbg !1490, !llvm.loop !1578

; <label>:156:                                    ; preds = %151
  %157 = icmp ne i64 %152, 0, !dbg !1580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1491
  br i1 %157, label %158, label %401, !dbg !1491

; <label>:158:                                    ; preds = %156
  %159 = tail call i8* @sdsnewlen(i8* null, i64 %152) #6, !dbg !1581
  %160 = icmp ugt i64 %153, 31, !dbg !1582
  %161 = icmp ult i32 %55, 17, !dbg !1583
  %162 = and i1 %161, %160, !dbg !1584
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1584
  br i1 %162, label %163, label %349, !dbg !1584

; <label>:163:                                    ; preds = %158
  %164 = bitcast [16 x i64*]* %2 to i8*, !dbg !1585
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %164) #8, !dbg !1585
  %165 = bitcast i8* %159 to i64*, !dbg !1587
  %166 = call i8* @memcpy(i8* nonnull %164, i8* nonnull %58, i64 %57) #6, !dbg !1589
  %167 = load i8*, i8** %59, align 8, !dbg !1590, !tbaa !1121
  %168 = call i8* @memcpy(i8* %159, i8* %167, i64 %153) #6, !dbg !1591
  %169 = icmp eq i64 %54, 0, !dbg !1592
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1594
  br i1 %169, label %170, label %209, !dbg !1594

; <label>:170:                                    ; preds = %163
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1595
  %171 = icmp ugt i32 %55, 1
  br label %172, !dbg !1595

; <label>:172:                                    ; preds = %170, %205
  %173 = phi i64* [ %165, %170 ], [ %206, %205 ]
  %174 = phi i64 [ %153, %170 ], [ %207, %205 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1598
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1601
  br i1 %171, label %175, label %205, !dbg !1601

; <label>:175:                                    ; preds = %172
  %176 = getelementptr inbounds i64, i64* %173, i64 1
  %177 = getelementptr inbounds i64, i64* %173, i64 2
  %178 = getelementptr inbounds i64, i64* %173, i64 3
  %179 = load i64, i64* %173, align 8, !dbg !1602, !tbaa !249
  %180 = load i64, i64* %176, align 8, !dbg !1605, !tbaa !249
  %181 = load i64, i64* %177, align 8, !dbg !1606, !tbaa !249
  %182 = load i64, i64* %178, align 8, !dbg !1607, !tbaa !249
  br label %183, !dbg !1601

; <label>:183:                                    ; preds = %175, %183
  %184 = phi i64 [ %182, %175 ], [ %201, %183 ], !dbg !1607
  %185 = phi i64 [ %181, %175 ], [ %198, %183 ], !dbg !1606
  %186 = phi i64 [ %180, %175 ], [ %195, %183 ], !dbg !1605
  %187 = phi i64 [ %179, %175 ], [ %192, %183 ], !dbg !1602
  %188 = phi i64 [ 1, %175 ], [ %203, %183 ]
  %189 = getelementptr inbounds [16 x i64*], [16 x i64*]* %2, i64 0, i64 %188, !dbg !1608
  %190 = load i64*, i64** %189, align 8, !dbg !1608, !tbaa !1121
  %191 = load i64, i64* %190, align 8, !dbg !1608, !tbaa !249
  %192 = and i64 %187, %191, !dbg !1602
  store i64 %192, i64* %173, align 8, !dbg !1602, !tbaa !249
  %193 = getelementptr inbounds i64, i64* %190, i64 1, !dbg !1609
  %194 = load i64, i64* %193, align 8, !dbg !1609, !tbaa !249
  %195 = and i64 %186, %194, !dbg !1605
  store i64 %195, i64* %176, align 8, !dbg !1605, !tbaa !249
  %196 = getelementptr inbounds i64, i64* %190, i64 2, !dbg !1610
  %197 = load i64, i64* %196, align 8, !dbg !1610, !tbaa !249
  %198 = and i64 %185, %197, !dbg !1606
  store i64 %198, i64* %177, align 8, !dbg !1606, !tbaa !249
  %199 = getelementptr inbounds i64, i64* %190, i64 3, !dbg !1611
  %200 = load i64, i64* %199, align 8, !dbg !1611, !tbaa !249
  %201 = and i64 %184, %200, !dbg !1607
  store i64 %201, i64* %178, align 8, !dbg !1607, !tbaa !249
  %202 = getelementptr inbounds i64, i64* %190, i64 4, !dbg !1612
  store i64* %202, i64** %189, align 8, !dbg !1612, !tbaa !1121
  %203 = add nuw i64 %188, 1, !dbg !1613
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1614
  %204 = icmp ult i64 %203, %56, !dbg !1615
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1601
  br i1 %204, label %183, label %205, !dbg !1601, !llvm.loop !1616

; <label>:205:                                    ; preds = %183, %172
  %206 = getelementptr inbounds i64, i64* %173, i64 4, !dbg !1618
  %207 = add i64 %174, -32, !dbg !1619
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1595
  %208 = icmp ugt i64 %207, 31, !dbg !1620
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1595
  br i1 %208, label %172, label %338, !dbg !1595, !llvm.loop !1621

; <label>:209:                                    ; preds = %163
  %210 = icmp eq i64 %54, 1, !dbg !1623
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1625
  br i1 %210, label %211, label %250, !dbg !1625

; <label>:211:                                    ; preds = %209
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1626
  %212 = icmp ugt i32 %55, 1
  br label %213, !dbg !1626

; <label>:213:                                    ; preds = %211, %246
  %214 = phi i64* [ %165, %211 ], [ %247, %246 ]
  %215 = phi i64 [ %153, %211 ], [ %248, %246 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1628
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1631
  br i1 %212, label %216, label %246, !dbg !1631

; <label>:216:                                    ; preds = %213
  %217 = getelementptr inbounds i64, i64* %214, i64 1
  %218 = getelementptr inbounds i64, i64* %214, i64 2
  %219 = getelementptr inbounds i64, i64* %214, i64 3
  %220 = load i64, i64* %214, align 8, !dbg !1632, !tbaa !249
  %221 = load i64, i64* %217, align 8, !dbg !1635, !tbaa !249
  %222 = load i64, i64* %218, align 8, !dbg !1636, !tbaa !249
  %223 = load i64, i64* %219, align 8, !dbg !1637, !tbaa !249
  br label %224, !dbg !1631

; <label>:224:                                    ; preds = %216, %224
  %225 = phi i64 [ %223, %216 ], [ %242, %224 ], !dbg !1637
  %226 = phi i64 [ %222, %216 ], [ %239, %224 ], !dbg !1636
  %227 = phi i64 [ %221, %216 ], [ %236, %224 ], !dbg !1635
  %228 = phi i64 [ %220, %216 ], [ %233, %224 ], !dbg !1632
  %229 = phi i64 [ 1, %216 ], [ %244, %224 ]
  %230 = getelementptr inbounds [16 x i64*], [16 x i64*]* %2, i64 0, i64 %229, !dbg !1638
  %231 = load i64*, i64** %230, align 8, !dbg !1638, !tbaa !1121
  %232 = load i64, i64* %231, align 8, !dbg !1638, !tbaa !249
  %233 = or i64 %228, %232, !dbg !1632
  store i64 %233, i64* %214, align 8, !dbg !1632, !tbaa !249
  %234 = getelementptr inbounds i64, i64* %231, i64 1, !dbg !1639
  %235 = load i64, i64* %234, align 8, !dbg !1639, !tbaa !249
  %236 = or i64 %227, %235, !dbg !1635
  store i64 %236, i64* %217, align 8, !dbg !1635, !tbaa !249
  %237 = getelementptr inbounds i64, i64* %231, i64 2, !dbg !1640
  %238 = load i64, i64* %237, align 8, !dbg !1640, !tbaa !249
  %239 = or i64 %226, %238, !dbg !1636
  store i64 %239, i64* %218, align 8, !dbg !1636, !tbaa !249
  %240 = getelementptr inbounds i64, i64* %231, i64 3, !dbg !1641
  %241 = load i64, i64* %240, align 8, !dbg !1641, !tbaa !249
  %242 = or i64 %225, %241, !dbg !1637
  store i64 %242, i64* %219, align 8, !dbg !1637, !tbaa !249
  %243 = getelementptr inbounds i64, i64* %231, i64 4, !dbg !1642
  store i64* %243, i64** %230, align 8, !dbg !1642, !tbaa !1121
  %244 = add nuw i64 %229, 1, !dbg !1643
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1644
  %245 = icmp ult i64 %244, %56, !dbg !1645
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1631
  br i1 %245, label %224, label %246, !dbg !1631, !llvm.loop !1646

; <label>:246:                                    ; preds = %224, %213
  %247 = getelementptr inbounds i64, i64* %214, i64 4, !dbg !1648
  %248 = add i64 %215, -32, !dbg !1649
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1626
  %249 = icmp ugt i64 %248, 31, !dbg !1650
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1626
  br i1 %249, label %213, label %340, !dbg !1626, !llvm.loop !1651

; <label>:250:                                    ; preds = %209
  %251 = icmp eq i64 %54, 2, !dbg !1653
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1655
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1656
  br i1 %251, label %252, label %291, !dbg !1655

; <label>:252:                                    ; preds = %250
  %253 = icmp ugt i32 %55, 1
  br label %254, !dbg !1657

; <label>:254:                                    ; preds = %252, %287
  %255 = phi i64* [ %165, %252 ], [ %288, %287 ]
  %256 = phi i64 [ %153, %252 ], [ %289, %287 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1659
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1662
  br i1 %253, label %257, label %287, !dbg !1662

; <label>:257:                                    ; preds = %254
  %258 = getelementptr inbounds i64, i64* %255, i64 1
  %259 = getelementptr inbounds i64, i64* %255, i64 2
  %260 = getelementptr inbounds i64, i64* %255, i64 3
  %261 = load i64, i64* %255, align 8, !dbg !1663, !tbaa !249
  %262 = load i64, i64* %258, align 8, !dbg !1666, !tbaa !249
  %263 = load i64, i64* %259, align 8, !dbg !1667, !tbaa !249
  %264 = load i64, i64* %260, align 8, !dbg !1668, !tbaa !249
  br label %265, !dbg !1662

; <label>:265:                                    ; preds = %257, %265
  %266 = phi i64 [ %264, %257 ], [ %283, %265 ], !dbg !1668
  %267 = phi i64 [ %263, %257 ], [ %280, %265 ], !dbg !1667
  %268 = phi i64 [ %262, %257 ], [ %277, %265 ], !dbg !1666
  %269 = phi i64 [ %261, %257 ], [ %274, %265 ], !dbg !1663
  %270 = phi i64 [ 1, %257 ], [ %285, %265 ]
  %271 = getelementptr inbounds [16 x i64*], [16 x i64*]* %2, i64 0, i64 %270, !dbg !1669
  %272 = load i64*, i64** %271, align 8, !dbg !1669, !tbaa !1121
  %273 = load i64, i64* %272, align 8, !dbg !1669, !tbaa !249
  %274 = xor i64 %269, %273, !dbg !1663
  store i64 %274, i64* %255, align 8, !dbg !1663, !tbaa !249
  %275 = getelementptr inbounds i64, i64* %272, i64 1, !dbg !1670
  %276 = load i64, i64* %275, align 8, !dbg !1670, !tbaa !249
  %277 = xor i64 %268, %276, !dbg !1666
  store i64 %277, i64* %258, align 8, !dbg !1666, !tbaa !249
  %278 = getelementptr inbounds i64, i64* %272, i64 2, !dbg !1671
  %279 = load i64, i64* %278, align 8, !dbg !1671, !tbaa !249
  %280 = xor i64 %267, %279, !dbg !1667
  store i64 %280, i64* %259, align 8, !dbg !1667, !tbaa !249
  %281 = getelementptr inbounds i64, i64* %272, i64 3, !dbg !1672
  %282 = load i64, i64* %281, align 8, !dbg !1672, !tbaa !249
  %283 = xor i64 %266, %282, !dbg !1668
  store i64 %283, i64* %260, align 8, !dbg !1668, !tbaa !249
  %284 = getelementptr inbounds i64, i64* %272, i64 4, !dbg !1673
  store i64* %284, i64** %271, align 8, !dbg !1673, !tbaa !1121
  %285 = add nuw i64 %270, 1, !dbg !1674
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1675
  %286 = icmp ult i64 %285, %56, !dbg !1676
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1662
  br i1 %286, label %265, label %287, !dbg !1662, !llvm.loop !1677

; <label>:287:                                    ; preds = %265, %254
  %288 = getelementptr inbounds i64, i64* %255, i64 4, !dbg !1679
  %289 = add i64 %256, -32, !dbg !1680
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1657
  %290 = icmp ugt i64 %289, 31, !dbg !1681
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1657
  br i1 %290, label %254, label %342, !dbg !1657, !llvm.loop !1682

; <label>:291:                                    ; preds = %250
  br i1 %53, label %292, label %346, !dbg !1684

; <label>:292:                                    ; preds = %291
  %293 = add i64 %153, -32, !dbg !1685
  %294 = and i64 %293, 32, !dbg !1685
  %295 = icmp eq i64 %294, 0, !dbg !1685
  br i1 %295, label %296, label %309, !dbg !1685

; <label>:296:                                    ; preds = %292
  %297 = bitcast i8* %159 to <2 x i64>*, !dbg !1685
  %298 = load <2 x i64>, <2 x i64>* %297, align 8, !dbg !1685, !tbaa !249
  %299 = xor <2 x i64> %298, <i64 -1, i64 -1>, !dbg !1689
  %300 = bitcast i8* %159 to <2 x i64>*, !dbg !1690
  store <2 x i64> %299, <2 x i64>* %300, align 8, !dbg !1690, !tbaa !249
  %301 = getelementptr inbounds i8, i8* %159, i64 16, !dbg !1691
  %302 = bitcast i8* %301 to <2 x i64>*, !dbg !1691
  %303 = load <2 x i64>, <2 x i64>* %302, align 8, !dbg !1691, !tbaa !249
  %304 = xor <2 x i64> %303, <i64 -1, i64 -1>, !dbg !1692
  %305 = bitcast i8* %301 to <2 x i64>*, !dbg !1693
  store <2 x i64> %304, <2 x i64>* %305, align 8, !dbg !1693, !tbaa !249
  %306 = getelementptr inbounds i8, i8* %159, i64 32, !dbg !1694
  %307 = bitcast i8* %306 to i64*, !dbg !1694
  %308 = add i64 %153, -32, !dbg !1695
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1696
  br label %309, !dbg !1696

; <label>:309:                                    ; preds = %296, %292
  %310 = phi i64 [ %153, %292 ], [ %308, %296 ]
  %311 = phi i64* [ %165, %292 ], [ %307, %296 ]
  %312 = icmp ult i64 %293, 32, !dbg !1685
  br i1 %312, label %344, label %313, !dbg !1685

; <label>:313:                                    ; preds = %309, %313
  %314 = phi i64 [ %336, %313 ], [ %310, %309 ], !dbg !1697
  %315 = phi i64* [ %335, %313 ], [ %311, %309 ], !dbg !1697
  %316 = bitcast i64* %315 to <2 x i64>*, !dbg !1685
  %317 = load <2 x i64>, <2 x i64>* %316, align 8, !dbg !1685, !tbaa !249
  %318 = xor <2 x i64> %317, <i64 -1, i64 -1>, !dbg !1689
  %319 = bitcast i64* %315 to <2 x i64>*, !dbg !1690
  store <2 x i64> %318, <2 x i64>* %319, align 8, !dbg !1690, !tbaa !249
  %320 = getelementptr inbounds i64, i64* %315, i64 2, !dbg !1691
  %321 = bitcast i64* %320 to <2 x i64>*, !dbg !1691
  %322 = load <2 x i64>, <2 x i64>* %321, align 8, !dbg !1691, !tbaa !249
  %323 = xor <2 x i64> %322, <i64 -1, i64 -1>, !dbg !1692
  %324 = bitcast i64* %320 to <2 x i64>*, !dbg !1693
  store <2 x i64> %323, <2 x i64>* %324, align 8, !dbg !1693, !tbaa !249
  %325 = getelementptr inbounds i64, i64* %315, i64 4, !dbg !1694
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1696
  %326 = bitcast i64* %325 to <2 x i64>*, !dbg !1685
  %327 = load <2 x i64>, <2 x i64>* %326, align 8, !dbg !1685, !tbaa !249
  %328 = xor <2 x i64> %327, <i64 -1, i64 -1>, !dbg !1689
  %329 = bitcast i64* %325 to <2 x i64>*, !dbg !1690
  store <2 x i64> %328, <2 x i64>* %329, align 8, !dbg !1690, !tbaa !249
  %330 = getelementptr inbounds i64, i64* %315, i64 6, !dbg !1691
  %331 = bitcast i64* %330 to <2 x i64>*, !dbg !1691
  %332 = load <2 x i64>, <2 x i64>* %331, align 8, !dbg !1691, !tbaa !249
  %333 = xor <2 x i64> %332, <i64 -1, i64 -1>, !dbg !1692
  %334 = bitcast i64* %330 to <2 x i64>*, !dbg !1693
  store <2 x i64> %333, <2 x i64>* %334, align 8, !dbg !1693, !tbaa !249
  %335 = getelementptr inbounds i64, i64* %315, i64 8, !dbg !1694
  %336 = add i64 %314, -64, !dbg !1695
  %337 = icmp ugt i64 %336, 31, !dbg !1698
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1696
  br i1 %337, label %313, label %344, !dbg !1696

; <label>:338:                                    ; preds = %205
  %339 = and i64 %153, -32, !dbg !1595
  br label %346, !dbg !1699

; <label>:340:                                    ; preds = %246
  %341 = and i64 %153, -32, !dbg !1626
  br label %346, !dbg !1699

; <label>:342:                                    ; preds = %287
  %343 = and i64 %153, -32, !dbg !1657
  br label %346, !dbg !1699

; <label>:344:                                    ; preds = %313, %309
  %345 = and i64 %153, -32, !dbg !1685
  br label %346, !dbg !1699

; <label>:346:                                    ; preds = %344, %342, %340, %338, %291
  %347 = phi i1 [ false, %291 ], [ %53, %338 ], [ %53, %340 ], [ %53, %342 ], [ true, %344 ]
  %348 = phi i64 [ 0, %291 ], [ %339, %338 ], [ %341, %340 ], [ %343, %342 ], [ %345, %344 ], !dbg !1700
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %164) #8, !dbg !1699
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1701
  br label %349, !dbg !1701

; <label>:349:                                    ; preds = %346, %158
  %350 = phi i1 [ %347, %346 ], [ %53, %158 ]
  %351 = phi i64 [ %348, %346 ], [ 0, %158 ], !dbg !1702
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1703
  %352 = icmp ult i64 %351, %152, !dbg !1704
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1707
  br i1 %352, label %353, label %400, !dbg !1707

; <label>:353:                                    ; preds = %349
  %354 = icmp ugt i32 %55, 1
  %355 = trunc i64 %54 to i2
  br label %356, !dbg !1707

; <label>:356:                                    ; preds = %395, %353
  %357 = phi i64 [ %351, %353 ], [ %398, %395 ]
  %358 = load i64, i64* %61, align 8, !dbg !1708, !tbaa !249
  %359 = icmp ugt i64 %358, %357, !dbg !1710
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1711
  br i1 %359, label %360, label %364, !dbg !1711

; <label>:360:                                    ; preds = %356
  %361 = load i8*, i8** %59, align 8, !dbg !1712, !tbaa !1121
  %362 = getelementptr inbounds i8, i8* %361, i64 %357, !dbg !1712
  %363 = load i8, i8* %362, align 1, !dbg !1712, !tbaa !103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1711
  br label %364, !dbg !1711

; <label>:364:                                    ; preds = %356, %360
  %365 = phi i8 [ %363, %360 ], [ 0, %356 ], !dbg !1711
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1714
  br i1 %350, label %366, label %368, !dbg !1714

; <label>:366:                                    ; preds = %364
  %367 = xor i8 %365, -1, !dbg !1715
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1717
  br label %368, !dbg !1717

; <label>:368:                                    ; preds = %366, %364
  %369 = phi i8 [ %367, %366 ], [ %365, %364 ], !dbg !1718
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1719
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1721
  br i1 %354, label %370, label %395, !dbg !1721

; <label>:370:                                    ; preds = %368, %391
  %371 = phi i64 [ %393, %391 ], [ 1, %368 ]
  %372 = phi i8 [ %392, %391 ], [ %369, %368 ]
  %373 = getelementptr inbounds i64, i64* %61, i64 %371, !dbg !1722
  %374 = load i64, i64* %373, align 8, !dbg !1722, !tbaa !249
  %375 = icmp ugt i64 %374, %357, !dbg !1725
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1726
  br i1 %375, label %376, label %381, !dbg !1726

; <label>:376:                                    ; preds = %370
  %377 = getelementptr inbounds i8*, i8** %59, i64 %371, !dbg !1727
  %378 = load i8*, i8** %377, align 8, !dbg !1727, !tbaa !1121
  %379 = getelementptr inbounds i8, i8* %378, i64 %357, !dbg !1727
  %380 = load i8, i8* %379, align 1, !dbg !1727, !tbaa !103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1726
  br label %381, !dbg !1726

; <label>:381:                                    ; preds = %370, %376
  %382 = phi i8 [ %380, %376 ], [ 0, %370 ], !dbg !1726
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1729
  switch i2 %355, label %391 [
    i2 0, label %383
    i2 1, label %385
    i2 -2, label %387
  ], !dbg !1729

; <label>:383:                                    ; preds = %381
  %384 = and i8 %382, %372, !dbg !1730
  br label %389, !dbg !1732

; <label>:385:                                    ; preds = %381
  %386 = or i8 %382, %372, !dbg !1733
  br label %389, !dbg !1734

; <label>:387:                                    ; preds = %381
  %388 = xor i8 %382, %372, !dbg !1735
  br label %389, !dbg !1736

; <label>:389:                                    ; preds = %387, %385, %383
  %390 = phi i8 [ %384, %383 ], [ %386, %385 ], [ %388, %387 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1737
  br label %391, !dbg !1738

; <label>:391:                                    ; preds = %389, %381
  %392 = phi i8 [ %372, %381 ], [ %390, %389 ], !dbg !1737
  %393 = add nuw i64 %371, 1, !dbg !1738
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1739
  %394 = icmp ult i64 %393, %56, !dbg !1740
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1721
  br i1 %394, label %370, label %395, !dbg !1721, !llvm.loop !1741

; <label>:395:                                    ; preds = %391, %368
  %396 = phi i8 [ %369, %368 ], [ %392, %391 ], !dbg !1743
  %397 = getelementptr inbounds i8, i8* %159, i64 %357, !dbg !1744
  store i8 %396, i8* %397, align 1, !dbg !1745, !tbaa !103
  %398 = add nuw i64 %357, 1, !dbg !1746
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1747
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1707
  %399 = icmp eq i64 %398, %152, !dbg !1704
  br i1 %399, label %400, label %356, !dbg !1707, !llvm.loop !1748

; <label>:400:                                    ; preds = %395, %349
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1750
  br label %401, !dbg !1750

; <label>:401:                                    ; preds = %400, %156
  %402 = phi i1 [ %157, %400 ], [ false, %156 ]
  %403 = phi i64 [ %152, %400 ], [ 0, %156 ]
  %404 = phi i8* [ %159, %400 ], [ null, %156 ], !dbg !1571
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1492
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1494
  br i1 %64, label %414, label %405, !dbg !1494

; <label>:405:                                    ; preds = %401, %411
  %406 = phi i64 [ %412, %411 ], [ 0, %401 ]
  %407 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %63, i64 %406, !dbg !1751
  %408 = load %struct.redisObject*, %struct.redisObject** %407, align 8, !dbg !1751, !tbaa !1121
  %409 = icmp eq %struct.redisObject* %408, null, !dbg !1751
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1755
  br i1 %409, label %411, label %410, !dbg !1755

; <label>:410:                                    ; preds = %405
  call void @decrRefCount(%struct.redisObject* nonnull %408) #6, !dbg !1756
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1756
  br label %411, !dbg !1756

; <label>:411:                                    ; preds = %405, %410
  %412 = add nuw i64 %406, 1, !dbg !1757
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1758
  %413 = icmp ult i64 %412, %56, !dbg !1759
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1494
  br i1 %413, label %405, label %414, !dbg !1494, !llvm.loop !1760

; <label>:414:                                    ; preds = %411, %65, %401
  %415 = phi i8* [ null, %65 ], [ %404, %401 ], [ %404, %411 ]
  %416 = phi i64 [ 0, %65 ], [ %403, %401 ], [ %403, %411 ]
  %417 = phi i1 [ false, %65 ], [ %402, %401 ], [ %402, %411 ]
  call void @zfree(i8* %58) #6, !dbg !1762
  call void @zfree(i8* %60) #6, !dbg !1763
  call void @zfree(i8* %62) #6, !dbg !1764
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1765
  br i1 %417, label %418, label %425, !dbg !1765

; <label>:418:                                    ; preds = %414
  %419 = call %struct.redisObject* @createObject(i32 0, i8* %415) #6, !dbg !1766
  %420 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1769
  %421 = load %struct.redisDb*, %struct.redisDb** %420, align 8, !dbg !1769, !tbaa !1114
  call void @setKey(%struct.redisDb* %421, %struct.redisObject* %10, %struct.redisObject* %419) #6, !dbg !1770
  %422 = load %struct.redisDb*, %struct.redisDb** %420, align 8, !dbg !1771, !tbaa !1114
  %423 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %422, i64 0, i32 5, !dbg !1772
  %424 = load i32, i32* %423, align 8, !dbg !1772, !tbaa !1282
  call void @notifyKeyspaceEvent(i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), %struct.redisObject* %10, i32 %424) #6, !dbg !1773
  call void @decrRefCount(%struct.redisObject* %419) #6, !dbg !1774
  br label %435, !dbg !1775

; <label>:425:                                    ; preds = %414
  %426 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1776
  %427 = load %struct.redisDb*, %struct.redisDb** %426, align 8, !dbg !1776, !tbaa !1114
  %428 = call i32 @dbDelete(%struct.redisDb* %427, %struct.redisObject* %10) #6, !dbg !1778
  %429 = icmp eq i32 %428, 0, !dbg !1778
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1779
  br i1 %429, label %436, label %430, !dbg !1779

; <label>:430:                                    ; preds = %425
  %431 = load %struct.redisDb*, %struct.redisDb** %426, align 8, !dbg !1780, !tbaa !1114
  call void @signalModifiedKey(%struct.redisDb* %431, %struct.redisObject* %10) #6, !dbg !1782
  %432 = load %struct.redisDb*, %struct.redisDb** %426, align 8, !dbg !1783, !tbaa !1114
  %433 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %432, i64 0, i32 5, !dbg !1784
  %434 = load i32, i32* %433, align 8, !dbg !1784, !tbaa !1282
  call void @notifyKeyspaceEvent(i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), %struct.redisObject* %10, i32 %434) #6, !dbg !1785
  br label %435, !dbg !1786

; <label>:435:                                    ; preds = %418, %430
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1787
  br label %436, !dbg !1788

; <label>:436:                                    ; preds = %435, %425
  %437 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1788, !tbaa !1286
  %438 = add nsw i64 %437, 1, !dbg !1788
  store i64 %438, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !1788, !tbaa !1286
  call void @addReplyLongLong(%struct.client* nonnull %0, i64 %416) #6, !dbg !1789
  br label %439, !dbg !1790

; <label>:439:                                    ; preds = %436, %97, %50, %40
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1790
  ret void, !dbg !1790
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
define dso_local void @bitcountCommand(%struct.client*) local_unnamed_addr #0 !dbg !1791 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca [21 x i8], align 16
  %6 = bitcast i64* %2 to i8*, !dbg !1807
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #8, !dbg !1807
  %7 = bitcast i64* %3 to i8*, !dbg !1807
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #8, !dbg !1807
  %8 = bitcast i64* %4 to i8*, !dbg !1807
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #8, !dbg !1807
  %9 = getelementptr inbounds [21 x i8], [21 x i8]* %5, i64 0, i64 0, !dbg !1808
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %9) #8, !dbg !1808
  %10 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1810
  %11 = load %struct.redisObject**, %struct.redisObject*** %10, align 8, !dbg !1810, !tbaa !1119
  %12 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %11, i64 1, !dbg !1812
  %13 = load %struct.redisObject*, %struct.redisObject** %12, align 8, !dbg !1812, !tbaa !1121
  %14 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !1813, !tbaa !1326
  %15 = tail call %struct.redisObject* @lookupKeyReadOrReply(%struct.client* %0, %struct.redisObject* %13, %struct.redisObject* %14) #6, !dbg !1814
  %16 = icmp eq %struct.redisObject* %15, null, !dbg !1816
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1817
  br i1 %16, label %93, label %17, !dbg !1817

; <label>:17:                                     ; preds = %1
  %18 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %15, i32 0) #6, !dbg !1818
  %19 = icmp eq i32 %18, 0, !dbg !1818
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1819
  br i1 %19, label %20, label %93, !dbg !1819

; <label>:20:                                     ; preds = %17
  %21 = call i8* @getObjectReadOnlyString(%struct.redisObject* nonnull %15, i64* nonnull %4, i8* nonnull %9) #9, !dbg !1821
  %22 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !1823
  %23 = load i32, i32* %22, align 8, !dbg !1823, !tbaa !1470
  %24 = icmp eq i32 %23, 4, !dbg !1825
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1826
  br i1 %24, label %25, label %71, !dbg !1826

; <label>:25:                                     ; preds = %20
  %26 = load %struct.redisObject**, %struct.redisObject*** %10, align 8, !dbg !1827, !tbaa !1119
  %27 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %26, i64 2, !dbg !1830
  %28 = load %struct.redisObject*, %struct.redisObject** %27, align 8, !dbg !1830, !tbaa !1121
  %29 = call i32 @getLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %28, i64* nonnull %2, i8* null) #6, !dbg !1832
  %30 = icmp eq i32 %29, 0, !dbg !1833
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1834
  br i1 %30, label %31, label %93, !dbg !1834

; <label>:31:                                     ; preds = %25
  %32 = load %struct.redisObject**, %struct.redisObject*** %10, align 8, !dbg !1835, !tbaa !1119
  %33 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %32, i64 3, !dbg !1837
  %34 = load %struct.redisObject*, %struct.redisObject** %33, align 8, !dbg !1837, !tbaa !1121
  %35 = call i32 @getLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %34, i64* nonnull %3, i8* null) #6, !dbg !1839
  %36 = icmp eq i32 %35, 0, !dbg !1840
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1841
  br i1 %36, label %37, label %93, !dbg !1841

; <label>:37:                                     ; preds = %31
  %38 = load i64, i64* %2, align 8, !dbg !1842, !tbaa !249
  %39 = load i64, i64* %3, align 8, !dbg !1844
  %40 = and i64 %39, %38, !dbg !1845
  %41 = icmp slt i64 %40, 0, !dbg !1845
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1845
  br i1 %41, label %42, label %46, !dbg !1845

; <label>:42:                                     ; preds = %37
  %43 = icmp sgt i64 %38, %39, !dbg !1846
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1847
  br i1 %43, label %44, label %46, !dbg !1847

; <label>:44:                                     ; preds = %42
  %45 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !1848, !tbaa !1326
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %45) #6, !dbg !1850
  br label %93, !dbg !1851

; <label>:46:                                     ; preds = %42, %37
  %47 = icmp slt i64 %38, 0, !dbg !1852
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1854
  br i1 %47, label %48, label %51, !dbg !1854

; <label>:48:                                     ; preds = %46
  %49 = load i64, i64* %4, align 8, !dbg !1855, !tbaa !249
  %50 = add nsw i64 %49, %38, !dbg !1856
  store i64 %50, i64* %2, align 8, !dbg !1857, !tbaa !249
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1858
  br label %51, !dbg !1858

; <label>:51:                                     ; preds = %48, %46
  %52 = phi i64 [ %50, %48 ], [ %38, %46 ]
  %53 = icmp slt i64 %39, 0, !dbg !1859
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1861
  br i1 %53, label %54, label %57, !dbg !1861

; <label>:54:                                     ; preds = %51
  %55 = load i64, i64* %4, align 8, !dbg !1862, !tbaa !249
  %56 = add nsw i64 %55, %39, !dbg !1863
  store i64 %56, i64* %3, align 8, !dbg !1864, !tbaa !249
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1865
  br label %57, !dbg !1865

; <label>:57:                                     ; preds = %54, %51
  %58 = phi i64 [ %56, %54 ], [ %39, %51 ]
  %59 = icmp slt i64 %52, 0, !dbg !1866
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1868
  br i1 %59, label %60, label %61, !dbg !1868

; <label>:60:                                     ; preds = %57
  store i64 0, i64* %2, align 8, !dbg !1869, !tbaa !249
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1870
  br label %61, !dbg !1870

; <label>:61:                                     ; preds = %60, %57
  %62 = phi i64 [ 0, %60 ], [ %52, %57 ]
  %63 = icmp slt i64 %58, 0, !dbg !1871
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1873
  br i1 %63, label %64, label %65, !dbg !1873

; <label>:64:                                     ; preds = %61
  store i64 0, i64* %3, align 8, !dbg !1874, !tbaa !249
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1875
  br label %65, !dbg !1875

; <label>:65:                                     ; preds = %64, %61
  %66 = phi i64 [ 0, %64 ], [ %58, %61 ], !dbg !1876
  %67 = load i64, i64* %4, align 8, !dbg !1878, !tbaa !249
  %68 = icmp slt i64 %66, %67, !dbg !1879
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1880
  br i1 %68, label %81, label %69, !dbg !1880

; <label>:69:                                     ; preds = %65
  %70 = add nsw i64 %67, -1, !dbg !1881
  br label %78, !dbg !1882

; <label>:71:                                     ; preds = %20
  %72 = icmp eq i32 %23, 2, !dbg !1883
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1885
  br i1 %72, label %73, label %76, !dbg !1885

; <label>:73:                                     ; preds = %71
  store i64 0, i64* %2, align 8, !dbg !1886, !tbaa !249
  %74 = load i64, i64* %4, align 8, !dbg !1888, !tbaa !249
  %75 = add nsw i64 %74, -1, !dbg !1889
  br label %78

; <label>:76:                                     ; preds = %71
  %77 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !1890, !tbaa !1464
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %77) #6, !dbg !1892
  br label %93, !dbg !1893

; <label>:78:                                     ; preds = %73, %69
  %79 = phi i64 [ %75, %73 ], [ %70, %69 ]
  %80 = phi i64 [ 0, %73 ], [ %62, %69 ]
  store i64 %79, i64* %3, align 8, !dbg !1894, !tbaa !249
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %81, !dbg !1895

; <label>:81:                                     ; preds = %78, %65
  %82 = phi i64 [ %66, %65 ], [ %79, %78 ], !dbg !1896
  %83 = phi i64 [ %62, %65 ], [ %80, %78 ], !dbg !1897
  %84 = icmp slt i64 %82, %83, !dbg !1895
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1898
  br i1 %84, label %85, label %87, !dbg !1898

; <label>:85:                                     ; preds = %81
  %86 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !1899, !tbaa !1326
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %86) #6, !dbg !1901
  br label %92, !dbg !1902

; <label>:87:                                     ; preds = %81
  %88 = sub i64 1, %83, !dbg !1903
  %89 = add i64 %88, %82, !dbg !1904
  %90 = getelementptr inbounds i8, i8* %21, i64 %83, !dbg !1906
  %91 = call i64 @redisPopcount(i8* %90, i64 %89) #9, !dbg !1907
  call void @addReplyLongLong(%struct.client* nonnull %0, i64 %91) #6, !dbg !1908
  br label %92

; <label>:92:                                     ; preds = %87, %85
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %93, !dbg !1909

; <label>:93:                                     ; preds = %31, %25, %1, %17, %92, %76, %44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1910
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %9) #8, !dbg !1909
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #8, !dbg !1909
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #8, !dbg !1909
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #8, !dbg !1909
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1909
  ret void, !dbg !1909
}

; Function Attrs: noredzone nounwind
define dso_local void @bitposCommand(%struct.client*) local_unnamed_addr #0 !dbg !1911 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca [21 x i8], align 16
  %7 = bitcast i64* %2 to i8*, !dbg !1927
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #8, !dbg !1927
  %8 = bitcast i64* %3 to i8*, !dbg !1927
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #8, !dbg !1927
  %9 = bitcast i64* %4 to i8*, !dbg !1927
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #8, !dbg !1927
  %10 = bitcast i64* %5 to i8*, !dbg !1927
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #8, !dbg !1927
  %11 = getelementptr inbounds [21 x i8], [21 x i8]* %6, i64 0, i64 0, !dbg !1928
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %11) #8, !dbg !1928
  %12 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1931
  %13 = load %struct.redisObject**, %struct.redisObject*** %12, align 8, !dbg !1931, !tbaa !1119
  %14 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %13, i64 2, !dbg !1933
  %15 = load %struct.redisObject*, %struct.redisObject** %14, align 8, !dbg !1933, !tbaa !1121
  %16 = call i32 @getLongFromObjectOrReply(%struct.client* %0, %struct.redisObject* %15, i64* nonnull %2, i8* null) #6, !dbg !1935
  %17 = icmp eq i32 %16, 0, !dbg !1936
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1937
  br i1 %17, label %18, label %131, !dbg !1937

; <label>:18:                                     ; preds = %1
  %19 = load i64, i64* %2, align 8, !dbg !1938, !tbaa !249
  %20 = icmp ugt i64 %19, 1, !dbg !1940
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1940
  br i1 %20, label %21, label %22, !dbg !1940

; <label>:21:                                     ; preds = %18
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !1941
  br label %131, !dbg !1943

; <label>:22:                                     ; preds = %18
  %23 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !1944
  %24 = load %struct.redisDb*, %struct.redisDb** %23, align 8, !dbg !1944, !tbaa !1114
  %25 = load %struct.redisObject**, %struct.redisObject*** %12, align 8, !dbg !1946, !tbaa !1119
  %26 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %25, i64 1, !dbg !1947
  %27 = load %struct.redisObject*, %struct.redisObject** %26, align 8, !dbg !1947, !tbaa !1121
  %28 = call %struct.redisObject* @lookupKeyRead(%struct.redisDb* %24, %struct.redisObject* %27) #6, !dbg !1948
  %29 = icmp eq %struct.redisObject* %28, null, !dbg !1950
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1951
  br i1 %29, label %30, label %34, !dbg !1951

; <label>:30:                                     ; preds = %22
  %31 = load i64, i64* %2, align 8, !dbg !1952, !tbaa !249
  %32 = icmp ne i64 %31, 0, !dbg !1952
  %33 = sext i1 %32 to i64, !dbg !1952
  call void @addReplyLongLong(%struct.client* nonnull %0, i64 %33) #6, !dbg !1954
  br label %131, !dbg !1955

; <label>:34:                                     ; preds = %22
  %35 = call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %28, i32 0) #6, !dbg !1956
  %36 = icmp eq i32 %35, 0, !dbg !1956
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1958
  br i1 %36, label %37, label %131, !dbg !1958

; <label>:37:                                     ; preds = %34
  %38 = call i8* @getObjectReadOnlyString(%struct.redisObject* nonnull %28, i64* nonnull %5, i8* nonnull %11) #9, !dbg !1960
  %39 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !1962
  %40 = load i32, i32* %39, align 8, !dbg !1962, !tbaa !1470
  %41 = icmp eq i32 %40, 4, !dbg !1964
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1965
  br i1 %41, label %44, label %42, !dbg !1965

; <label>:42:                                     ; preds = %37
  %43 = icmp eq i32 %40, 5, !dbg !1966
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1967
  br i1 %43, label %44, label %90, !dbg !1967

; <label>:44:                                     ; preds = %42, %37
  %45 = load %struct.redisObject**, %struct.redisObject*** %12, align 8, !dbg !1968, !tbaa !1119
  %46 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %45, i64 3, !dbg !1971
  %47 = load %struct.redisObject*, %struct.redisObject** %46, align 8, !dbg !1971, !tbaa !1121
  %48 = call i32 @getLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %47, i64* nonnull %3, i8* null) #6, !dbg !1973
  %49 = icmp eq i32 %48, 0, !dbg !1974
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1975
  br i1 %49, label %50, label %131, !dbg !1975

; <label>:50:                                     ; preds = %44
  %51 = load i32, i32* %39, align 8, !dbg !1976, !tbaa !1470
  %52 = icmp eq i32 %51, 5, !dbg !1978
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1979
  br i1 %52, label %53, label %59, !dbg !1979

; <label>:53:                                     ; preds = %50
  %54 = load %struct.redisObject**, %struct.redisObject*** %12, align 8, !dbg !1980, !tbaa !1119
  %55 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %54, i64 4, !dbg !1983
  %56 = load %struct.redisObject*, %struct.redisObject** %55, align 8, !dbg !1983, !tbaa !1121
  %57 = call i32 @getLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %56, i64* nonnull %4, i8* null) #6, !dbg !1985
  %58 = icmp eq i32 %57, 0, !dbg !1986
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1987
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1988
  br i1 %58, label %62, label %132, !dbg !1987

; <label>:59:                                     ; preds = %50
  %60 = load i64, i64* %5, align 8, !dbg !1989, !tbaa !249
  %61 = add nsw i64 %60, -1, !dbg !1991
  store i64 %61, i64* %4, align 8, !dbg !1992, !tbaa !249
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %62

; <label>:62:                                     ; preds = %53, %59
  %63 = phi i32 [ 0, %59 ], [ 1, %53 ], !dbg !1993
  %64 = load i64, i64* %3, align 8, !dbg !1994, !tbaa !249
  %65 = icmp slt i64 %64, 0, !dbg !1996
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1997
  br i1 %65, label %66, label %69, !dbg !1997

; <label>:66:                                     ; preds = %62
  %67 = load i64, i64* %5, align 8, !dbg !1998, !tbaa !249
  %68 = add nsw i64 %67, %64, !dbg !1999
  store i64 %68, i64* %3, align 8, !dbg !2000, !tbaa !249
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2001
  br label %69, !dbg !2001

; <label>:69:                                     ; preds = %66, %62
  %70 = phi i64 [ %68, %66 ], [ %64, %62 ]
  %71 = load i64, i64* %4, align 8, !dbg !2002, !tbaa !249
  %72 = icmp slt i64 %71, 0, !dbg !2004
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2005
  br i1 %72, label %73, label %76, !dbg !2005

; <label>:73:                                     ; preds = %69
  %74 = load i64, i64* %5, align 8, !dbg !2006, !tbaa !249
  %75 = add nsw i64 %74, %71, !dbg !2007
  store i64 %75, i64* %4, align 8, !dbg !2008, !tbaa !249
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2009
  br label %76, !dbg !2009

; <label>:76:                                     ; preds = %73, %69
  %77 = phi i64 [ %75, %73 ], [ %71, %69 ]
  %78 = icmp slt i64 %70, 0, !dbg !2010
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2012
  br i1 %78, label %79, label %80, !dbg !2012

; <label>:79:                                     ; preds = %76
  store i64 0, i64* %3, align 8, !dbg !2013, !tbaa !249
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2014
  br label %80, !dbg !2014

; <label>:80:                                     ; preds = %79, %76
  %81 = phi i64 [ 0, %79 ], [ %70, %76 ]
  %82 = icmp slt i64 %77, 0, !dbg !2015
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2017
  br i1 %82, label %83, label %84, !dbg !2017

; <label>:83:                                     ; preds = %80
  store i64 0, i64* %4, align 8, !dbg !2018, !tbaa !249
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2019
  br label %84, !dbg !2019

; <label>:84:                                     ; preds = %83, %80
  %85 = phi i64 [ 0, %83 ], [ %77, %80 ], !dbg !2020
  %86 = load i64, i64* %5, align 8, !dbg !2022, !tbaa !249
  %87 = icmp slt i64 %85, %86, !dbg !2023
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2024
  br i1 %87, label %101, label %88, !dbg !2024

; <label>:88:                                     ; preds = %84
  %89 = add nsw i64 %86, -1, !dbg !2025
  br label %97, !dbg !2026

; <label>:90:                                     ; preds = %42
  %91 = icmp eq i32 %40, 3, !dbg !2027
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2029
  br i1 %91, label %92, label %95, !dbg !2029

; <label>:92:                                     ; preds = %90
  store i64 0, i64* %3, align 8, !dbg !2030, !tbaa !249
  %93 = load i64, i64* %5, align 8, !dbg !2032, !tbaa !249
  %94 = add nsw i64 %93, -1, !dbg !2033
  br label %97

; <label>:95:                                     ; preds = %90
  %96 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !2034, !tbaa !1464
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %96) #6, !dbg !2036
  br label %131, !dbg !2037

; <label>:97:                                     ; preds = %92, %88
  %98 = phi i64 [ %94, %92 ], [ %89, %88 ]
  %99 = phi i64 [ 0, %92 ], [ %81, %88 ]
  %100 = phi i32 [ 0, %92 ], [ %63, %88 ]
  store i64 %98, i64* %4, align 8, !dbg !2038, !tbaa !249
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %101, !dbg !2039

; <label>:101:                                    ; preds = %97, %84
  %102 = phi i64 [ %85, %84 ], [ %98, %97 ], !dbg !2040
  %103 = phi i64 [ %81, %84 ], [ %99, %97 ], !dbg !2041
  %104 = phi i32 [ %63, %84 ], [ %100, %97 ], !dbg !1993
  %105 = icmp slt i64 %102, %103, !dbg !2039
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2042
  br i1 %105, label %106, label %107, !dbg !2042

; <label>:106:                                    ; preds = %101
  call void @addReplyLongLong(%struct.client* nonnull %0, i64 -1) #6, !dbg !2043
  br label %130, !dbg !2045

; <label>:107:                                    ; preds = %101
  %108 = sub nsw i64 %102, %103, !dbg !2046
  %109 = add nsw i64 %108, 1, !dbg !2047
  %110 = getelementptr inbounds i8, i8* %38, i64 %103, !dbg !2049
  %111 = load i64, i64* %2, align 8, !dbg !2050, !tbaa !249
  %112 = trunc i64 %111 to i32, !dbg !2050
  %113 = call i64 @redisBitpos(i8* %110, i64 %109, i32 %112) #9, !dbg !2051
  %114 = icmp ne i32 %104, 0, !dbg !2053
  %115 = load i64, i64* %2, align 8, !dbg !2055
  %116 = icmp eq i64 %115, 0, !dbg !2056
  %117 = and i1 %114, %116, !dbg !2057
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2057
  br i1 %117, label %118, label %122, !dbg !2057

; <label>:118:                                    ; preds = %107
  %119 = shl nsw i64 %109, 3, !dbg !2058
  %120 = icmp eq i64 %113, %119, !dbg !2059
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2060
  br i1 %120, label %121, label %122, !dbg !2060

; <label>:121:                                    ; preds = %118
  call void @addReplyLongLong(%struct.client* nonnull %0, i64 -1) #6, !dbg !2061
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2063
  br label %131

; <label>:122:                                    ; preds = %118, %107
  %123 = icmp eq i64 %113, -1, !dbg !2064
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2066
  br i1 %123, label %128, label %124, !dbg !2066

; <label>:124:                                    ; preds = %122
  %125 = load i64, i64* %3, align 8, !dbg !2067, !tbaa !249
  %126 = shl i64 %125, 3, !dbg !2068
  %127 = add nsw i64 %126, %113, !dbg !2069
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2070
  br label %128, !dbg !2070

; <label>:128:                                    ; preds = %122, %124
  %129 = phi i64 [ %127, %124 ], [ -1, %122 ], !dbg !2071
  call void @addReplyLongLong(%struct.client* nonnull %0, i64 %129) #6, !dbg !2072
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2073
  br label %130

; <label>:130:                                    ; preds = %128, %106
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %131, !dbg !2074

; <label>:131:                                    ; preds = %44, %34, %1, %21, %30, %95, %130, %121
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %132, !dbg !2074

; <label>:132:                                    ; preds = %131, %53
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %11) #8, !dbg !2074
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #8, !dbg !2074
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #8, !dbg !2074
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #8, !dbg !2074
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #8, !dbg !2074
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2074
  ret void, !dbg !2074
}

; Function Attrs: noredzone nounwind
define dso_local void @bitfieldCommand(%struct.client*) local_unnamed_addr #0 !dbg !2075 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca [9 x i8], align 1
  %8 = alloca i64, align 8
  %9 = alloca [21 x i8], align 16
  %10 = bitcast i64* %2 to i8*, !dbg !2146
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #8, !dbg !2146
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2154
  %11 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !2155
  %12 = load i32, i32* %11, align 8, !dbg !2155, !tbaa !1470
  %13 = icmp sgt i32 %12, 2, !dbg !2156
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2157
  br i1 %13, label %15, label %14, !dbg !2157

; <label>:14:                                     ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2158
  br label %163, !dbg !2158

; <label>:15:                                     ; preds = %1
  %16 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  %17 = bitcast i64* %3 to i8*
  %18 = bitcast i32* %4 to i8*
  %19 = bitcast i32* %5 to i8*
  br label %20, !dbg !2157

; <label>:20:                                     ; preds = %15, %142
  %21 = phi i32 [ %12, %15 ], [ %143, %142 ]
  %22 = phi i32 [ 2, %15 ], [ %159, %142 ]
  %23 = phi i32 [ 0, %15 ], [ %145, %142 ]
  %24 = phi %struct.bitfieldOp* [ null, %15 ], [ %146, %142 ]
  %25 = phi i8* [ null, %15 ], [ %147, %142 ]
  %26 = phi i8* [ null, %15 ], [ %148, %142 ]
  %27 = phi i8* [ null, %15 ], [ %149, %142 ]
  %28 = phi i8* [ null, %15 ], [ %150, %142 ]
  %29 = phi i8* [ null, %15 ], [ %151, %142 ]
  %30 = phi i8* [ null, %15 ], [ %152, %142 ]
  %31 = phi i8* [ null, %15 ], [ %153, %142 ]
  %32 = phi i8* [ null, %15 ], [ %154, %142 ]
  %33 = phi i8* [ null, %15 ], [ %155, %142 ]
  %34 = phi i32 [ 0, %15 ], [ %156, %142 ]
  %35 = phi i32 [ 1, %15 ], [ %157, %142 ]
  %36 = phi i64 [ 0, %15 ], [ %158, %142 ]
  %37 = xor i32 %22, -1, !dbg !2159
  %38 = add i32 %21, %37, !dbg !2159
  %39 = load %struct.redisObject**, %struct.redisObject*** %16, align 8, !dbg !2161, !tbaa !1119
  %40 = sext i32 %22 to i64, !dbg !2162
  %41 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %39, i64 %40, !dbg !2162
  %42 = load %struct.redisObject*, %struct.redisObject** %41, align 8, !dbg !2162, !tbaa !1121
  %43 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %42, i64 0, i32 2, !dbg !2163
  %44 = load i8*, i8** %43, align 8, !dbg !2163, !tbaa !969
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %17) #8, !dbg !2165
  store i64 0, i64* %3, align 8, !dbg !2166, !tbaa !1031
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %18) #8, !dbg !2167
  store i32 0, i32* %4, align 4, !dbg !2168, !tbaa !122
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #8, !dbg !2169
  store i32 0, i32* %5, align 4, !dbg !2170, !tbaa !122
  %45 = call i32 @strcasecmp(i8* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0)) #10, !dbg !2171
  %46 = icmp eq i32 %45, 0, !dbg !2171
  %47 = icmp sgt i32 %38, 1, !dbg !2172
  %48 = and i1 %47, %46, !dbg !2173
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2173
  br i1 %48, label %81, label %49, !dbg !2173

; <label>:49:                                     ; preds = %20
  %50 = call i32 @strcasecmp(i8* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0)) #10, !dbg !2174
  %51 = icmp eq i32 %50, 0, !dbg !2174
  %52 = icmp sgt i32 %38, 2, !dbg !2175
  %53 = and i1 %52, %51, !dbg !2176
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2176
  br i1 %53, label %81, label %54, !dbg !2176

; <label>:54:                                     ; preds = %49
  %55 = call i32 @strcasecmp(i8* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0)) #10, !dbg !2177
  %56 = icmp eq i32 %55, 0, !dbg !2177
  %57 = and i1 %52, %56, !dbg !2178
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2178
  br i1 %57, label %81, label %58, !dbg !2178

; <label>:58:                                     ; preds = %54
  %59 = call i32 @strcasecmp(i8* %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0)) #10, !dbg !2179
  %60 = icmp eq i32 %59, 0, !dbg !2179
  %61 = icmp sgt i32 %38, 0, !dbg !2180
  %62 = and i1 %61, %60, !dbg !2181
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2181
  br i1 %62, label %63, label %79, !dbg !2181

; <label>:63:                                     ; preds = %58
  %64 = add nsw i32 %22, 1, !dbg !2182
  %65 = sext i32 %64 to i64, !dbg !2183
  %66 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %39, i64 %65, !dbg !2183
  %67 = load %struct.redisObject*, %struct.redisObject** %66, align 8, !dbg !2183, !tbaa !1121
  %68 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %67, i64 0, i32 2, !dbg !2184
  %69 = load i8*, i8** %68, align 8, !dbg !2184, !tbaa !969
  %70 = call i32 @strcasecmp(i8* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0)) #10, !dbg !2186
  %71 = icmp eq i32 %70, 0, !dbg !2186
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2188
  br i1 %71, label %140, label %72, !dbg !2188

; <label>:72:                                     ; preds = %63
  %73 = call i32 @strcasecmp(i8* %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0)) #10, !dbg !2189
  %74 = icmp eq i32 %73, 0, !dbg !2189
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2191
  br i1 %74, label %140, label %75, !dbg !2191

; <label>:75:                                     ; preds = %72
  %76 = call i32 @strcasecmp(i8* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0)) #10, !dbg !2192
  %77 = icmp eq i32 %76, 0, !dbg !2192
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2194
  br i1 %77, label %140, label %78, !dbg !2194

; <label>:78:                                     ; preds = %75
  call void @addReplyError(%struct.client* %0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.24, i64 0, i64 0)) #6, !dbg !2195
  call void @zfree(i8* %29) #6, !dbg !2197
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2198
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #8, !dbg !2199
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %18) #8, !dbg !2199
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %17) #8, !dbg !2199
  br label %693

; <label>:79:                                     ; preds = %58
  %80 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !2200, !tbaa !1464
  call void @addReply(%struct.client* %0, %struct.redisObject* %80) #6, !dbg !2202
  call void @zfree(i8* %30) #6, !dbg !2203
  br label %139, !dbg !2204

; <label>:81:                                     ; preds = %54, %49, %20
  %82 = phi i32 [ 0, %20 ], [ 1, %49 ], [ 2, %54 ], !dbg !2205
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %83 = add nsw i32 %22, 1, !dbg !2207
  %84 = sext i32 %83 to i64, !dbg !2209
  %85 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %39, i64 %84, !dbg !2209
  %86 = load %struct.redisObject*, %struct.redisObject** %85, align 8, !dbg !2209, !tbaa !1121
  %87 = call i32 @getBitfieldTypeFromArgument(%struct.client* %0, %struct.redisObject* %86, i32* nonnull %4, i32* nonnull %5) #9, !dbg !2210
  %88 = icmp eq i32 %87, 0, !dbg !2211
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2212
  br i1 %88, label %90, label %89, !dbg !2212

; <label>:89:                                     ; preds = %81
  call void @zfree(i8* %25) #6, !dbg !2213
  br label %139, !dbg !2215

; <label>:90:                                     ; preds = %81
  %91 = load %struct.redisObject**, %struct.redisObject*** %16, align 8, !dbg !2216, !tbaa !1119
  %92 = add nsw i32 %22, 2, !dbg !2218
  %93 = sext i32 %92 to i64, !dbg !2219
  %94 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %91, i64 %93, !dbg !2219
  %95 = load %struct.redisObject*, %struct.redisObject** %94, align 8, !dbg !2219, !tbaa !1121
  %96 = load i32, i32* %5, align 4, !dbg !2220, !tbaa !122
  %97 = call i32 @getBitOffsetFromArgument(%struct.client* %0, %struct.redisObject* %95, i64* nonnull %2, i32 1, i32 %96) #9, !dbg !2222
  %98 = icmp eq i32 %97, 0, !dbg !2223
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2224
  br i1 %98, label %100, label %99, !dbg !2224

; <label>:99:                                     ; preds = %90
  call void @zfree(i8* %26) #6, !dbg !2225
  br label %139, !dbg !2227

; <label>:100:                                    ; preds = %90
  %101 = icmp eq i32 %82, 0, !dbg !2228
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2230
  %102 = load i64, i64* %2, align 8, !dbg !2231, !tbaa !249
  br i1 %101, label %119, label %103, !dbg !2230

; <label>:103:                                    ; preds = %100
  %104 = sext i32 %96 to i64, !dbg !2234
  %105 = add nsw i64 %104, -1, !dbg !2235
  %106 = add i64 %105, %102, !dbg !2236
  %107 = icmp ult i64 %36, %106, !dbg !2237
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2238
  br i1 %107, label %108, label %109, !dbg !2238

; <label>:108:                                    ; preds = %103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2239
  br label %109, !dbg !2239

; <label>:109:                                    ; preds = %108, %103
  %110 = phi i64 [ %106, %108 ], [ %36, %103 ], !dbg !2240
  %111 = load %struct.redisObject**, %struct.redisObject*** %16, align 8, !dbg !2241, !tbaa !1119
  %112 = add nsw i32 %22, 3, !dbg !2243
  %113 = sext i32 %112 to i64, !dbg !2244
  %114 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %111, i64 %113, !dbg !2244
  %115 = load %struct.redisObject*, %struct.redisObject** %114, align 8, !dbg !2244, !tbaa !1121
  %116 = call i32 @getLongLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %115, i64* nonnull %3, i8* null) #6, !dbg !2245
  %117 = icmp eq i32 %116, 0, !dbg !2246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2247
  br i1 %117, label %119, label %118, !dbg !2247

; <label>:118:                                    ; preds = %109
  call void @zfree(i8* %27) #6, !dbg !2248
  br label %139, !dbg !2250

; <label>:119:                                    ; preds = %100, %109
  %120 = phi i64 [ %110, %109 ], [ %36, %100 ], !dbg !2240
  %121 = phi i32 [ 0, %109 ], [ %35, %100 ], !dbg !2240
  %122 = add nsw i32 %23, 1, !dbg !2251
  %123 = sext i32 %122 to i64, !dbg !2252
  %124 = shl nsw i64 %123, 5, !dbg !2253
  %125 = call i8* @zrealloc(i8* %28, i64 %124) #6, !dbg !2254
  %126 = bitcast i8* %125 to %struct.bitfieldOp*, !dbg !2254
  %127 = sext i32 %23 to i64, !dbg !2255
  %128 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %126, i64 %127, i32 0, !dbg !2256
  store i64 %102, i64* %128, align 8, !dbg !2257, !tbaa !2258
  %129 = load i64, i64* %3, align 8, !dbg !2260, !tbaa !1031
  %130 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %126, i64 %127, i32 1, !dbg !2261
  store i64 %129, i64* %130, align 8, !dbg !2262, !tbaa !2263
  %131 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %126, i64 %127, i32 2, !dbg !2264
  store i32 %82, i32* %131, align 8, !dbg !2265, !tbaa !2266
  %132 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %126, i64 %127, i32 3, !dbg !2267
  store i32 %34, i32* %132, align 4, !dbg !2268, !tbaa !2269
  %133 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %126, i64 %127, i32 4, !dbg !2270
  store i32 %96, i32* %133, align 8, !dbg !2271, !tbaa !2272
  %134 = load i32, i32* %4, align 4, !dbg !2273, !tbaa !122
  %135 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %126, i64 %127, i32 5, !dbg !2274
  store i32 %134, i32* %135, align 4, !dbg !2275, !tbaa !2276
  %136 = select i1 %101, i32 2, i32 3, !dbg !2277
  %137 = add nsw i32 %136, %22, !dbg !2278
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2199
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #8, !dbg !2199
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %18) #8, !dbg !2199
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %17) #8, !dbg !2199
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %138 = load i32, i32* %11, align 8, !dbg !2155, !tbaa !1470
  br label %142

; <label>:139:                                    ; preds = %89, %99, %118, %79
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2279
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #8, !dbg !2199
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %18) #8, !dbg !2199
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %17) #8, !dbg !2199
  br label %693

; <label>:140:                                    ; preds = %75, %72, %63
  %141 = phi i32 [ 0, %63 ], [ 1, %72 ], [ 2, %75 ], !dbg !2280
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2281
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #8, !dbg !2199
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %18) #8, !dbg !2199
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %17) #8, !dbg !2199
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %142

; <label>:142:                                    ; preds = %140, %119
  %143 = phi i32 [ %138, %119 ], [ %21, %140 ], !dbg !2155
  %144 = phi i32 [ %137, %119 ], [ %64, %140 ]
  %145 = phi i32 [ %122, %119 ], [ %23, %140 ]
  %146 = phi %struct.bitfieldOp* [ %126, %119 ], [ %24, %140 ]
  %147 = phi i8* [ %125, %119 ], [ %25, %140 ]
  %148 = phi i8* [ %125, %119 ], [ %26, %140 ]
  %149 = phi i8* [ %125, %119 ], [ %27, %140 ]
  %150 = phi i8* [ %125, %119 ], [ %28, %140 ]
  %151 = phi i8* [ %125, %119 ], [ %29, %140 ]
  %152 = phi i8* [ %125, %119 ], [ %30, %140 ]
  %153 = phi i8* [ %125, %119 ], [ %31, %140 ]
  %154 = phi i8* [ %125, %119 ], [ %32, %140 ]
  %155 = phi i8* [ %125, %119 ], [ %33, %140 ]
  %156 = phi i32 [ %34, %119 ], [ %141, %140 ]
  %157 = phi i32 [ %121, %119 ], [ %35, %140 ]
  %158 = phi i64 [ %120, %119 ], [ %36, %140 ]
  %159 = add nsw i32 %144, 1, !dbg !2282
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2283
  %160 = icmp sgt i32 %143, %159, !dbg !2156
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2157
  br i1 %160, label %20, label %161, !dbg !2157, !llvm.loop !2284

; <label>:161:                                    ; preds = %142
  %162 = icmp eq i32 %157, 0, !dbg !2286
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2158
  br i1 %162, label %180, label %163, !dbg !2158

; <label>:163:                                    ; preds = %14, %161
  %164 = phi i32 [ 0, %14 ], [ %145, %161 ]
  %165 = phi %struct.bitfieldOp* [ null, %14 ], [ %146, %161 ]
  %166 = phi i8* [ null, %14 ], [ %153, %161 ]
  %167 = phi i8* [ null, %14 ], [ %155, %161 ]
  %168 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !2288
  %169 = load %struct.redisDb*, %struct.redisDb** %168, align 8, !dbg !2288, !tbaa !1114
  %170 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !2290
  %171 = load %struct.redisObject**, %struct.redisObject*** %170, align 8, !dbg !2290, !tbaa !1119
  %172 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %171, i64 1, !dbg !2291
  %173 = load %struct.redisObject*, %struct.redisObject** %172, align 8, !dbg !2291, !tbaa !1121
  %174 = call %struct.redisObject* @lookupKeyRead(%struct.redisDb* %169, %struct.redisObject* %173) #6, !dbg !2292
  %175 = icmp eq %struct.redisObject* %174, null, !dbg !2294
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2296
  br i1 %175, label %184, label %176, !dbg !2296

; <label>:176:                                    ; preds = %163
  %177 = call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %174, i32 0) #6, !dbg !2297
  %178 = icmp eq i32 %177, 0, !dbg !2297
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2298
  br i1 %178, label %184, label %179, !dbg !2298

; <label>:179:                                    ; preds = %176
  call void @zfree(i8* %166) #6, !dbg !2299
  br label %693, !dbg !2301

; <label>:180:                                    ; preds = %161
  %181 = call %struct.redisObject* @lookupStringForBitCommand(%struct.client* nonnull %0, i64 %158) #9, !dbg !2302
  %182 = icmp eq %struct.redisObject* %181, null, !dbg !2305
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2306
  br i1 %182, label %183, label %184, !dbg !2306

; <label>:183:                                    ; preds = %180
  call void @zfree(i8* %154) #6, !dbg !2307
  br label %693, !dbg !2309

; <label>:184:                                    ; preds = %176, %163, %180
  %185 = phi i32 [ %164, %176 ], [ %164, %163 ], [ %145, %180 ]
  %186 = phi %struct.bitfieldOp* [ %165, %176 ], [ %165, %163 ], [ %146, %180 ]
  %187 = phi i8* [ %167, %176 ], [ %167, %163 ], [ %155, %180 ]
  %188 = phi %struct.redisObject* [ %174, %176 ], [ null, %163 ], [ %181, %180 ], !dbg !2310
  %189 = sext i32 %185 to i64, !dbg !2311
  call void @addReplyMultiBulkLen(%struct.client* nonnull %0, i64 %189) #6, !dbg !2312
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2313
  %190 = icmp sgt i32 %185, 0, !dbg !2314
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2315
  br i1 %190, label %191, label %691, !dbg !2315

; <label>:191:                                    ; preds = %184
  %192 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %188, i64 0, i32 2
  %193 = bitcast i64* %6 to i8*
  %194 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %195 = bitcast i64* %8 to i8*
  %196 = getelementptr inbounds [21 x i8], [21 x i8]* %9, i64 0, i64 0
  %197 = icmp eq %struct.redisObject* %188, null
  %198 = zext i32 %185 to i64
  %199 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %200 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 1
  %201 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 2
  %202 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 3
  %203 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 4
  %204 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 5
  %205 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 6
  %206 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 7
  %207 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 8
  br label %208, !dbg !2315

; <label>:208:                                    ; preds = %668, %191
  %209 = phi i64 [ 0, %191 ], [ %671, %668 ]
  %210 = phi i32 [ 0, %191 ], [ %670, %668 ]
  %211 = phi i64 [ undef, %191 ], [ %669, %668 ]
  %212 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %186, i64 %209, !dbg !2316
  %213 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %186, i64 %209, i32 2, !dbg !2318
  %214 = load i32, i32* %213, align 8, !dbg !2318, !tbaa !2266
  %215 = icmp eq i32 %214, 1, !dbg !2319
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2320
  br i1 %215, label %218, label %216, !dbg !2320

; <label>:216:                                    ; preds = %208
  %217 = icmp eq i32 %214, 2, !dbg !2321
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2322
  br i1 %217, label %218, label %523, !dbg !2322

; <label>:218:                                    ; preds = %216, %208
  %219 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %186, i64 %209, i32 5, !dbg !2323
  %220 = load i32, i32* %219, align 4, !dbg !2323, !tbaa !2276
  %221 = icmp eq i32 %220, 0, !dbg !2324
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2325
  br i1 %221, label %353, label %222, !dbg !2325

; <label>:222:                                    ; preds = %218
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %193) #8, !dbg !2326
  %223 = load i8*, i8** %192, align 8, !dbg !2327, !tbaa !969
  %224 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %212, i64 0, i32 0, !dbg !2328
  %225 = load i64, i64* %224, align 8, !dbg !2328, !tbaa !2258
  %226 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %186, i64 %209, i32 4, !dbg !2329
  %227 = load i32, i32* %226, align 8, !dbg !2329, !tbaa !2272
  %228 = sext i32 %227 to i64, !dbg !2330
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2341
  %229 = icmp eq i32 %227, 0, !dbg !2342
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2343
  br i1 %229, label %279, label %230, !dbg !2343

; <label>:230:                                    ; preds = %222
  %231 = and i64 %228, 1, !dbg !2344
  %232 = icmp eq i32 %227, 1, !dbg !2344
  br i1 %232, label %263, label %233, !dbg !2344

; <label>:233:                                    ; preds = %230
  %234 = sub nsw i64 %228, %231, !dbg !2344
  br label %235, !dbg !2344

; <label>:235:                                    ; preds = %235, %233
  %236 = phi i64 [ 0, %233 ], [ %259, %235 ]
  %237 = phi i64 [ %225, %233 ], [ %260, %235 ]
  %238 = phi i64 [ %234, %233 ], [ %261, %235 ]
  %239 = lshr i64 %237, 3, !dbg !2344
  %240 = and i64 %237, 7, !dbg !2346
  %241 = xor i64 %240, 7, !dbg !2347
  %242 = getelementptr inbounds i8, i8* %223, i64 %239, !dbg !2349
  %243 = load i8, i8* %242, align 1, !dbg !2349, !tbaa !103
  %244 = zext i8 %243 to i64, !dbg !2349
  %245 = lshr i64 %244, %241, !dbg !2351
  %246 = and i64 %245, 1, !dbg !2352
  %247 = shl i64 %236, 1, !dbg !2354
  %248 = or i64 %246, %247, !dbg !2355
  %249 = add i64 %237, 1, !dbg !2356
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2357
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2343
  %250 = lshr i64 %249, 3, !dbg !2344
  %251 = and i64 %249, 7, !dbg !2346
  %252 = xor i64 %251, 7, !dbg !2347
  %253 = getelementptr inbounds i8, i8* %223, i64 %250, !dbg !2349
  %254 = load i8, i8* %253, align 1, !dbg !2349, !tbaa !103
  %255 = zext i8 %254 to i64, !dbg !2349
  %256 = lshr i64 %255, %252, !dbg !2351
  %257 = and i64 %256, 1, !dbg !2352
  %258 = shl i64 %248, 1, !dbg !2354
  %259 = or i64 %257, %258, !dbg !2355
  %260 = add i64 %237, 2, !dbg !2356
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2357
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2343
  %261 = add i64 %238, -2, !dbg !2343
  %262 = icmp eq i64 %261, 0, !dbg !2343
  br i1 %262, label %263, label %235, !dbg !2343, !llvm.loop !436

; <label>:263:                                    ; preds = %235, %230
  %264 = phi i64 [ undef, %230 ], [ %259, %235 ]
  %265 = phi i64 [ 0, %230 ], [ %259, %235 ]
  %266 = phi i64 [ %225, %230 ], [ %260, %235 ]
  %267 = icmp eq i64 %231, 0, !dbg !2343
  br i1 %267, label %279, label %268, !dbg !2343

; <label>:268:                                    ; preds = %263
  %269 = lshr i64 %266, 3, !dbg !2344
  %270 = getelementptr inbounds i8, i8* %223, i64 %269, !dbg !2349
  %271 = load i8, i8* %270, align 1, !dbg !2349, !tbaa !103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2357
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2343
  %272 = zext i8 %271 to i64, !dbg !2349
  %273 = and i64 %266, 7, !dbg !2346
  %274 = xor i64 %273, 7, !dbg !2347
  %275 = lshr i64 %272, %274, !dbg !2351
  %276 = and i64 %275, 1, !dbg !2352
  %277 = shl i64 %265, 1, !dbg !2354
  %278 = or i64 %276, %277, !dbg !2355
  br label %279, !dbg !2358

; <label>:279:                                    ; preds = %268, %263, %222
  %280 = phi i64 [ 0, %222 ], [ %264, %263 ], [ %278, %268 ], !dbg !2359
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2358
  %281 = add nsw i64 %228, -1, !dbg !2362
  %282 = shl i64 1, %281, !dbg !2363
  %283 = and i64 %280, %282, !dbg !2364
  %284 = icmp eq i64 %283, 0, !dbg !2364
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2365
  br i1 %284, label %288, label %285, !dbg !2365

; <label>:285:                                    ; preds = %279
  %286 = shl i64 -1, %228, !dbg !2366
  %287 = or i64 %280, %286, !dbg !2367
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2368
  br label %288, !dbg !2368

; <label>:288:                                    ; preds = %279, %285
  %289 = phi i64 [ %287, %285 ], [ %280, %279 ], !dbg !2369
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2370
  %290 = icmp eq i32 %214, 2, !dbg !2372
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2374
  %291 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %186, i64 %209, i32 1, !dbg !2375
  %292 = load i64, i64* %291, align 8, !dbg !2375, !tbaa !2263
  br i1 %290, label %293, label %301, !dbg !2374

; <label>:293:                                    ; preds = %288
  %294 = add nsw i64 %292, %289, !dbg !2377
  %295 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %186, i64 %209, i32 3, !dbg !2380
  %296 = load i32, i32* %295, align 4, !dbg !2380, !tbaa !2269
  %297 = call i32 @checkSignedBitfieldOverflow(i64 %289, i64 %292, i64 %228, i32 %296, i64* nonnull %6) #9, !dbg !2382
  %298 = icmp eq i32 %297, 0, !dbg !2384
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2386
  br i1 %298, label %308, label %299, !dbg !2386

; <label>:299:                                    ; preds = %293
  %300 = load i64, i64* %6, align 8, !dbg !2387, !tbaa !249
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2388
  br label %308, !dbg !2388

; <label>:301:                                    ; preds = %288
  %302 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %186, i64 %209, i32 3, !dbg !2389
  %303 = load i32, i32* %302, align 4, !dbg !2389, !tbaa !2269
  %304 = call i32 @checkSignedBitfieldOverflow(i64 %292, i64 0, i64 %228, i32 %303, i64* nonnull %6) #9, !dbg !2390
  %305 = icmp eq i32 %304, 0, !dbg !2391
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2393
  br i1 %305, label %308, label %306, !dbg !2393

; <label>:306:                                    ; preds = %301
  %307 = load i64, i64* %6, align 8, !dbg !2394, !tbaa !249
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2395
  br label %308, !dbg !2395

; <label>:308:                                    ; preds = %306, %301, %299, %293
  %309 = phi i64 [ %300, %299 ], [ %294, %293 ], [ %307, %306 ], [ %292, %301 ], !dbg !2396
  %310 = phi i64 [ %300, %299 ], [ %294, %293 ], [ %289, %306 ], [ %289, %301 ], !dbg !2375
  %311 = phi i32 [ %297, %299 ], [ %297, %293 ], [ %304, %306 ], [ %304, %301 ], !dbg !2375
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %312 = icmp eq i32 %311, 0, !dbg !2398
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2400
  br i1 %312, label %317, label %313, !dbg !2400

; <label>:313:                                    ; preds = %308
  %314 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %186, i64 %209, i32 3, !dbg !2401
  %315 = load i32, i32* %314, align 4, !dbg !2401, !tbaa !2269
  %316 = icmp eq i32 %315, 2, !dbg !2402
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2403
  br i1 %316, label %350, label %317, !dbg !2403

; <label>:317:                                    ; preds = %308, %313
  call void @addReplyLongLong(%struct.client* %0, i64 %310) #6, !dbg !2404
  %318 = load i8*, i8** %192, align 8, !dbg !2406, !tbaa !969
  %319 = load i64, i64* %224, align 8, !dbg !2407, !tbaa !2258
  %320 = load i32, i32* %226, align 8, !dbg !2408, !tbaa !2272
  %321 = sext i32 %320 to i64, !dbg !2409
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2422
  %322 = icmp eq i32 %320, 0, !dbg !2423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2424
  br i1 %322, label %349, label %323, !dbg !2424

; <label>:323:                                    ; preds = %317, %323
  %324 = phi i64 [ %347, %323 ], [ 0, %317 ]
  %325 = phi i64 [ %346, %323 ], [ %319, %317 ]
  %326 = xor i64 %324, -1, !dbg !2425
  %327 = add i64 %326, %321, !dbg !2425
  %328 = shl i64 1, %327, !dbg !2426
  %329 = and i64 %328, %309, !dbg !2427
  %330 = icmp ne i64 %329, 0, !dbg !2428
  %331 = zext i1 %330 to i64, !dbg !2429
  %332 = lshr i64 %325, 3, !dbg !2431
  %333 = and i64 %325, 7, !dbg !2433
  %334 = xor i64 %333, 7, !dbg !2434
  %335 = getelementptr inbounds i8, i8* %318, i64 %332, !dbg !2436
  %336 = load i8, i8* %335, align 1, !dbg !2436, !tbaa !103
  %337 = zext i8 %336 to i64, !dbg !2436
  %338 = trunc i64 %334 to i32, !dbg !2438
  %339 = shl i32 1, %338, !dbg !2438
  %340 = xor i32 %339, 255, !dbg !2439
  %341 = zext i32 %340 to i64, !dbg !2439
  %342 = and i64 %341, %337, !dbg !2440
  %343 = shl i64 %331, %334, !dbg !2441
  %344 = or i64 %342, %343, !dbg !2442
  %345 = trunc i64 %344 to i8, !dbg !2443
  store i8 %345, i8* %335, align 1, !dbg !2444, !tbaa !103
  %346 = add i64 %325, 1, !dbg !2445
  %347 = add nuw i64 %324, 1, !dbg !2446
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2447
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2424
  %348 = icmp eq i64 %347, %321, !dbg !2423
  br i1 %348, label %349, label %323, !dbg !2424, !llvm.loop !347

; <label>:349:                                    ; preds = %323, %317
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2448
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2449
  br label %352, !dbg !2450

; <label>:350:                                    ; preds = %313
  %351 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !2451, !tbaa !2453
  call void @addReply(%struct.client* %0, %struct.redisObject* %351) #6, !dbg !2454
  br label %352

; <label>:352:                                    ; preds = %350, %349
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %193) #8, !dbg !2455
  br label %520, !dbg !2456

; <label>:353:                                    ; preds = %218
  %354 = load i8*, i8** %192, align 8, !dbg !2457, !tbaa !969
  %355 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %212, i64 0, i32 0, !dbg !2458
  %356 = load i64, i64* %355, align 8, !dbg !2458, !tbaa !2258
  %357 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %186, i64 %209, i32 4, !dbg !2459
  %358 = load i32, i32* %357, align 8, !dbg !2459, !tbaa !2272
  %359 = sext i32 %358 to i64, !dbg !2460
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2467
  %360 = icmp eq i32 %358, 0, !dbg !2468
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2469
  br i1 %360, label %410, label %361, !dbg !2469

; <label>:361:                                    ; preds = %353
  %362 = and i64 %359, 1, !dbg !2470
  %363 = icmp eq i32 %358, 1, !dbg !2470
  br i1 %363, label %394, label %364, !dbg !2470

; <label>:364:                                    ; preds = %361
  %365 = sub nsw i64 %359, %362, !dbg !2470
  br label %366, !dbg !2470

; <label>:366:                                    ; preds = %366, %364
  %367 = phi i64 [ 0, %364 ], [ %390, %366 ]
  %368 = phi i64 [ %356, %364 ], [ %391, %366 ]
  %369 = phi i64 [ %365, %364 ], [ %392, %366 ]
  %370 = lshr i64 %368, 3, !dbg !2470
  %371 = and i64 %368, 7, !dbg !2472
  %372 = xor i64 %371, 7, !dbg !2473
  %373 = getelementptr inbounds i8, i8* %354, i64 %370, !dbg !2475
  %374 = load i8, i8* %373, align 1, !dbg !2475, !tbaa !103
  %375 = zext i8 %374 to i64, !dbg !2475
  %376 = lshr i64 %375, %372, !dbg !2477
  %377 = and i64 %376, 1, !dbg !2478
  %378 = shl i64 %367, 1, !dbg !2480
  %379 = or i64 %377, %378, !dbg !2481
  %380 = add i64 %368, 1, !dbg !2482
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2483
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2469
  %381 = lshr i64 %380, 3, !dbg !2470
  %382 = and i64 %380, 7, !dbg !2472
  %383 = xor i64 %382, 7, !dbg !2473
  %384 = getelementptr inbounds i8, i8* %354, i64 %381, !dbg !2475
  %385 = load i8, i8* %384, align 1, !dbg !2475, !tbaa !103
  %386 = zext i8 %385 to i64, !dbg !2475
  %387 = lshr i64 %386, %383, !dbg !2477
  %388 = and i64 %387, 1, !dbg !2478
  %389 = shl i64 %379, 1, !dbg !2480
  %390 = or i64 %388, %389, !dbg !2481
  %391 = add i64 %368, 2, !dbg !2482
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2483
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2469
  %392 = add i64 %369, -2, !dbg !2469
  %393 = icmp eq i64 %392, 0, !dbg !2469
  br i1 %393, label %394, label %366, !dbg !2469, !llvm.loop !436

; <label>:394:                                    ; preds = %366, %361
  %395 = phi i64 [ undef, %361 ], [ %390, %366 ]
  %396 = phi i64 [ 0, %361 ], [ %390, %366 ]
  %397 = phi i64 [ %356, %361 ], [ %391, %366 ]
  %398 = icmp eq i64 %362, 0, !dbg !2469
  br i1 %398, label %410, label %399, !dbg !2469

; <label>:399:                                    ; preds = %394
  %400 = lshr i64 %397, 3, !dbg !2470
  %401 = getelementptr inbounds i8, i8* %354, i64 %400, !dbg !2475
  %402 = load i8, i8* %401, align 1, !dbg !2475, !tbaa !103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2483
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2469
  %403 = zext i8 %402 to i64, !dbg !2475
  %404 = and i64 %397, 7, !dbg !2472
  %405 = xor i64 %404, 7, !dbg !2473
  %406 = lshr i64 %403, %405, !dbg !2477
  %407 = and i64 %406, 1, !dbg !2478
  %408 = shl i64 %396, 1, !dbg !2480
  %409 = or i64 %407, %408, !dbg !2481
  br label %410, !dbg !2484

; <label>:410:                                    ; preds = %399, %394, %353
  %411 = phi i64 [ 0, %353 ], [ %395, %394 ], [ %409, %399 ], !dbg !2485
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2484
  %412 = icmp eq i32 %214, 2, !dbg !2487
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2489
  %413 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %186, i64 %209, i32 1, !dbg !2490
  %414 = load i64, i64* %413, align 8, !dbg !2490, !tbaa !2263
  br i1 %412, label %415, label %454, !dbg !2489

; <label>:415:                                    ; preds = %410
  %416 = add i64 %414, %411, !dbg !2492
  %417 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %186, i64 %209, i32 3, !dbg !2495
  %418 = load i32, i32* %417, align 4, !dbg !2495, !tbaa !2269
  %419 = icmp eq i32 %358, 64, !dbg !2501
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2502
  br i1 %419, label %420, label %421, !dbg !2502

; <label>:420:                                    ; preds = %415
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2504
  br label %425, !dbg !2504

; <label>:421:                                    ; preds = %415
  %422 = shl nsw i64 -1, %359, !dbg !2505
  %423 = xor i64 %422, -1, !dbg !2505
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2502
  %424 = icmp ugt i64 %411, %423, !dbg !2506
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2504
  br i1 %424, label %433, label %425, !dbg !2504

; <label>:425:                                    ; preds = %421, %420
  %426 = phi i64 [ -1, %420 ], [ %423, %421 ]
  %427 = sub i64 0, %411, !dbg !2507
  %428 = icmp sgt i64 %414, 0, !dbg !2508
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2509
  br i1 %428, label %429, label %439, !dbg !2509

; <label>:429:                                    ; preds = %425
  %430 = sub i64 %426, %411, !dbg !2510
  %431 = icmp slt i64 %430, %414, !dbg !2511
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2512
  br i1 %431, label %433, label %432, !dbg !2512

; <label>:432:                                    ; preds = %429
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2513
  br label %475, !dbg !2513

; <label>:433:                                    ; preds = %429, %421
  %434 = phi i64 [ %426, %429 ], [ %423, %421 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2514
  %435 = icmp eq i32 %418, 0, !dbg !2515
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2516
  br i1 %435, label %448, label %436, !dbg !2516

; <label>:436:                                    ; preds = %433
  %437 = icmp eq i32 %418, 1, !dbg !2517
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2518
  br i1 %437, label %438, label %452, !dbg !2518

; <label>:438:                                    ; preds = %436
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2519
  br label %452, !dbg !2519

; <label>:439:                                    ; preds = %425
  %440 = icmp slt i64 %414, 0, !dbg !2520
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2513
  br i1 %440, label %441, label %475, !dbg !2513

; <label>:441:                                    ; preds = %439
  %442 = icmp slt i64 %414, %427, !dbg !2521
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2522
  br i1 %442, label %443, label %475, !dbg !2522

; <label>:443:                                    ; preds = %441
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2523
  %444 = icmp eq i32 %418, 0, !dbg !2524
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2525
  br i1 %444, label %448, label %445, !dbg !2525

; <label>:445:                                    ; preds = %443
  %446 = icmp eq i32 %418, 1, !dbg !2526
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2527
  br i1 %446, label %447, label %452, !dbg !2527

; <label>:447:                                    ; preds = %445
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2528
  br label %452, !dbg !2528

; <label>:448:                                    ; preds = %443, %433
  %449 = shl i64 -1, %359, !dbg !2529
  %450 = xor i64 %449, -1, !dbg !2532
  %451 = and i64 %416, %450, !dbg !2533
  br label %452, !dbg !2534

; <label>:452:                                    ; preds = %445, %447, %436, %438, %448
  %453 = phi i64 [ %451, %448 ], [ %434, %438 ], [ %211, %436 ], [ 0, %447 ], [ %211, %445 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2535
  br label %475, !dbg !2538

; <label>:454:                                    ; preds = %410
  %455 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %186, i64 %209, i32 3, !dbg !2540
  %456 = load i32, i32* %455, align 4, !dbg !2540, !tbaa !2269
  %457 = icmp eq i32 %358, 64, !dbg !2545
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2546
  br i1 %457, label %458, label %459, !dbg !2546

; <label>:458:                                    ; preds = %454
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2548
  br label %470, !dbg !2548

; <label>:459:                                    ; preds = %454
  %460 = shl i64 -1, %359, !dbg !2550
  %461 = xor i64 %460, -1, !dbg !2550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2546
  %462 = icmp ugt i64 %414, %461, !dbg !2551
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2548
  br i1 %462, label %463, label %470, !dbg !2548

; <label>:463:                                    ; preds = %459
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2552
  %464 = icmp eq i32 %456, 0, !dbg !2553
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2554
  br i1 %464, label %468, label %465, !dbg !2554

; <label>:465:                                    ; preds = %463
  %466 = icmp eq i32 %456, 1, !dbg !2555
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2556
  br i1 %466, label %467, label %471, !dbg !2556

; <label>:467:                                    ; preds = %465
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2557
  br label %471, !dbg !2557

; <label>:468:                                    ; preds = %463
  %469 = and i64 %414, %461, !dbg !2560
  br label %471, !dbg !2561

; <label>:470:                                    ; preds = %458, %459
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2562
  br label %471, !dbg !2563

; <label>:471:                                    ; preds = %468, %467, %465, %470
  %472 = phi i32 [ 0, %470 ], [ 1, %465 ], [ 1, %467 ], [ 1, %468 ]
  %473 = phi i64 [ %211, %470 ], [ %211, %465 ], [ %461, %467 ], [ %469, %468 ]
  %474 = phi i64 [ %414, %470 ], [ %211, %465 ], [ %461, %467 ], [ %469, %468 ], !dbg !2490
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2490
  br label %475

; <label>:475:                                    ; preds = %452, %432, %439, %441, %471
  %476 = phi i32 [ %456, %471 ], [ %418, %441 ], [ %418, %439 ], [ %418, %432 ], [ %418, %452 ]
  %477 = phi i64 [ %473, %471 ], [ %211, %441 ], [ %211, %439 ], [ %211, %432 ], [ %453, %452 ]
  %478 = phi i64 [ %474, %471 ], [ %416, %441 ], [ %416, %439 ], [ %416, %432 ], [ %453, %452 ], !dbg !2565
  %479 = phi i64 [ %411, %471 ], [ %416, %441 ], [ %416, %439 ], [ %416, %432 ], [ %453, %452 ], !dbg !2490
  %480 = phi i32 [ %472, %471 ], [ 0, %441 ], [ 0, %439 ], [ 0, %432 ], [ 1, %452 ], !dbg !2490
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2490
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2490
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2565
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %481 = icmp eq i32 %480, 0, !dbg !2567
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2569
  br i1 %481, label %484, label %482, !dbg !2569

; <label>:482:                                    ; preds = %475
  %483 = icmp eq i32 %476, 2, !dbg !2570
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2571
  br i1 %483, label %517, label %484, !dbg !2571

; <label>:484:                                    ; preds = %475, %482
  call void @addReplyLongLong(%struct.client* %0, i64 %479) #6, !dbg !2572
  %485 = load i8*, i8** %192, align 8, !dbg !2574, !tbaa !969
  %486 = load i64, i64* %355, align 8, !dbg !2575, !tbaa !2258
  %487 = load i32, i32* %357, align 8, !dbg !2576, !tbaa !2272
  %488 = sext i32 %487 to i64, !dbg !2577
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2584
  %489 = icmp eq i32 %487, 0, !dbg !2585
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2586
  br i1 %489, label %516, label %490, !dbg !2586

; <label>:490:                                    ; preds = %484, %490
  %491 = phi i64 [ %514, %490 ], [ 0, %484 ]
  %492 = phi i64 [ %513, %490 ], [ %486, %484 ]
  %493 = xor i64 %491, -1, !dbg !2587
  %494 = add i64 %493, %488, !dbg !2587
  %495 = shl i64 1, %494, !dbg !2588
  %496 = and i64 %495, %478, !dbg !2589
  %497 = icmp ne i64 %496, 0, !dbg !2590
  %498 = zext i1 %497 to i64, !dbg !2591
  %499 = lshr i64 %492, 3, !dbg !2593
  %500 = and i64 %492, 7, !dbg !2595
  %501 = xor i64 %500, 7, !dbg !2596
  %502 = getelementptr inbounds i8, i8* %485, i64 %499, !dbg !2598
  %503 = load i8, i8* %502, align 1, !dbg !2598, !tbaa !103
  %504 = zext i8 %503 to i64, !dbg !2598
  %505 = trunc i64 %501 to i32, !dbg !2600
  %506 = shl i32 1, %505, !dbg !2600
  %507 = xor i32 %506, 255, !dbg !2601
  %508 = zext i32 %507 to i64, !dbg !2601
  %509 = and i64 %508, %504, !dbg !2602
  %510 = shl i64 %498, %501, !dbg !2603
  %511 = or i64 %509, %510, !dbg !2604
  %512 = trunc i64 %511 to i8, !dbg !2605
  store i8 %512, i8* %502, align 1, !dbg !2606, !tbaa !103
  %513 = add i64 %492, 1, !dbg !2607
  %514 = add nuw i64 %491, 1, !dbg !2608
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2609
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2586
  %515 = icmp eq i64 %514, %488, !dbg !2585
  br i1 %515, label %516, label %490, !dbg !2586, !llvm.loop !347

; <label>:516:                                    ; preds = %490, %484
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2610
  br label %519, !dbg !2611

; <label>:517:                                    ; preds = %482
  %518 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !2612, !tbaa !2453
  call void @addReply(%struct.client* %0, %struct.redisObject* %518) #6, !dbg !2614
  br label %519

; <label>:519:                                    ; preds = %517, %516
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %520

; <label>:520:                                    ; preds = %519, %352
  %521 = phi i64 [ %477, %519 ], [ %211, %352 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %522 = add nsw i32 %210, 1, !dbg !2615
  br label %668, !dbg !2616

; <label>:523:                                    ; preds = %216
  call void @llvm.lifetime.start.p0i8(i64 9, i8* nonnull %194) #8, !dbg !2617
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %195) #8, !dbg !2619
  store i64 0, i64* %8, align 8, !dbg !2620, !tbaa !249
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %196) #8, !dbg !2622
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2624
  br i1 %197, label %526, label %524, !dbg !2624

; <label>:524:                                    ; preds = %523
  %525 = call i8* @getObjectReadOnlyString(%struct.redisObject* nonnull %188, i64* nonnull %8, i8* nonnull %196) #9, !dbg !2625
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2627
  br label %526, !dbg !2627

; <label>:526:                                    ; preds = %523, %524
  %527 = phi i8* [ %525, %524 ], [ null, %523 ], !dbg !2628
  %528 = call i8* @memset(i8* nonnull %194, i32 0, i64 9) #6, !dbg !2629
  %529 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %212, i64 0, i32 0, !dbg !2630
  %530 = load i64, i64* %529, align 8, !dbg !2630, !tbaa !2258
  %531 = lshr i64 %530, 3, !dbg !2631
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2634
  %532 = icmp eq i8* %527, null, !dbg !2636
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2640
  br i1 %532, label %543, label %533, !dbg !2640

; <label>:533:                                    ; preds = %526
  %534 = load i64, i64* %8, align 8, !dbg !2641, !tbaa !249
  %535 = icmp ult i64 %531, %534, !dbg !2642
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2643
  br i1 %535, label %536, label %541, !dbg !2643

; <label>:536:                                    ; preds = %533
  %537 = getelementptr inbounds i8, i8* %527, i64 %531, !dbg !2644
  %538 = load i8, i8* %537, align 1, !dbg !2644, !tbaa !103
  store i8 %538, i8* %199, align 1, !dbg !2645, !tbaa !103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2646
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2640
  %539 = add nuw nsw i64 %531, 1, !dbg !2647
  %540 = icmp ult i64 %539, %534, !dbg !2642
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2643
  br i1 %540, label %694, label %541, !dbg !2643

; <label>:541:                                    ; preds = %729, %724, %719, %714, %709, %704, %699, %694, %536, %533
  %542 = load i64, i64* %529, align 8, !dbg !2648, !tbaa !2258
  br label %543, !dbg !2649

; <label>:543:                                    ; preds = %541, %526
  %544 = phi i64 [ %542, %541 ], [ %530, %526 ], !dbg !2648
  %545 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %186, i64 %209, i32 5, !dbg !2649
  %546 = load i32, i32* %545, align 4, !dbg !2649, !tbaa !2276
  %547 = icmp eq i32 %546, 0, !dbg !2650
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2651
  %548 = and i64 %530, -8, !dbg !2648
  %549 = sub i64 %544, %548, !dbg !2648
  %550 = getelementptr inbounds %struct.bitfieldOp, %struct.bitfieldOp* %186, i64 %209, i32 4, !dbg !2648
  %551 = load i32, i32* %550, align 8, !dbg !2648, !tbaa !2272
  %552 = sext i32 %551 to i64, !dbg !2648
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2652
  %553 = icmp eq i32 %551, 0, !dbg !2662
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2663
  br i1 %547, label %615, label %554, !dbg !2651

; <label>:554:                                    ; preds = %543
  br i1 %553, label %604, label %555, !dbg !2669

; <label>:555:                                    ; preds = %554
  %556 = and i64 %552, 1, !dbg !2670
  %557 = icmp eq i32 %551, 1, !dbg !2670
  br i1 %557, label %588, label %558, !dbg !2670

; <label>:558:                                    ; preds = %555
  %559 = sub nsw i64 %552, %556, !dbg !2670
  br label %560, !dbg !2670

; <label>:560:                                    ; preds = %560, %558
  %561 = phi i64 [ 0, %558 ], [ %584, %560 ]
  %562 = phi i64 [ %549, %558 ], [ %585, %560 ]
  %563 = phi i64 [ %559, %558 ], [ %586, %560 ]
  %564 = lshr i64 %562, 3, !dbg !2670
  %565 = and i64 %562, 7, !dbg !2672
  %566 = xor i64 %565, 7, !dbg !2673
  %567 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 %564, !dbg !2675
  %568 = load i8, i8* %567, align 1, !dbg !2675, !tbaa !103
  %569 = zext i8 %568 to i64, !dbg !2675
  %570 = lshr i64 %569, %566, !dbg !2677
  %571 = and i64 %570, 1, !dbg !2678
  %572 = shl i64 %561, 1, !dbg !2680
  %573 = or i64 %571, %572, !dbg !2681
  %574 = add i64 %562, 1, !dbg !2682
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2683
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2669
  %575 = lshr i64 %574, 3, !dbg !2670
  %576 = and i64 %574, 7, !dbg !2672
  %577 = xor i64 %576, 7, !dbg !2673
  %578 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 %575, !dbg !2675
  %579 = load i8, i8* %578, align 1, !dbg !2675, !tbaa !103
  %580 = zext i8 %579 to i64, !dbg !2675
  %581 = lshr i64 %580, %577, !dbg !2677
  %582 = and i64 %581, 1, !dbg !2678
  %583 = shl i64 %573, 1, !dbg !2680
  %584 = or i64 %582, %583, !dbg !2681
  %585 = add i64 %562, 2, !dbg !2682
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2683
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2669
  %586 = add i64 %563, -2, !dbg !2669
  %587 = icmp eq i64 %586, 0, !dbg !2669
  br i1 %587, label %588, label %560, !dbg !2669, !llvm.loop !436

; <label>:588:                                    ; preds = %560, %555
  %589 = phi i64 [ undef, %555 ], [ %584, %560 ]
  %590 = phi i64 [ 0, %555 ], [ %584, %560 ]
  %591 = phi i64 [ %549, %555 ], [ %585, %560 ]
  %592 = icmp eq i64 %556, 0, !dbg !2669
  br i1 %592, label %604, label %593, !dbg !2669

; <label>:593:                                    ; preds = %588
  %594 = lshr i64 %591, 3, !dbg !2670
  %595 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 %594, !dbg !2675
  %596 = load i8, i8* %595, align 1, !dbg !2675, !tbaa !103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2683
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2669
  %597 = zext i8 %596 to i64, !dbg !2675
  %598 = and i64 %591, 7, !dbg !2672
  %599 = xor i64 %598, 7, !dbg !2673
  %600 = lshr i64 %597, %599, !dbg !2677
  %601 = and i64 %600, 1, !dbg !2678
  %602 = shl i64 %590, 1, !dbg !2680
  %603 = or i64 %601, %602, !dbg !2681
  br label %604, !dbg !2684

; <label>:604:                                    ; preds = %593, %588, %554
  %605 = phi i64 [ 0, %554 ], [ %589, %588 ], [ %603, %593 ], !dbg !2685
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2684
  %606 = add nsw i64 %552, -1, !dbg !2688
  %607 = shl i64 1, %606, !dbg !2689
  %608 = and i64 %605, %607, !dbg !2690
  %609 = icmp eq i64 %608, 0, !dbg !2690
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2691
  br i1 %609, label %613, label %610, !dbg !2691

; <label>:610:                                    ; preds = %604
  %611 = shl i64 -1, %552, !dbg !2692
  %612 = or i64 %605, %611, !dbg !2693
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2694
  br label %613, !dbg !2694

; <label>:613:                                    ; preds = %604, %610
  %614 = phi i64 [ %612, %610 ], [ %605, %604 ], !dbg !2695
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2696
  call void @addReplyLongLong(%struct.client* %0, i64 %614) #6, !dbg !2698
  br label %667, !dbg !2699

; <label>:615:                                    ; preds = %543
  br i1 %553, label %665, label %616, !dbg !2663

; <label>:616:                                    ; preds = %615
  %617 = and i64 %552, 1, !dbg !2702
  %618 = icmp eq i32 %551, 1, !dbg !2702
  br i1 %618, label %649, label %619, !dbg !2702

; <label>:619:                                    ; preds = %616
  %620 = sub nsw i64 %552, %617, !dbg !2702
  br label %621, !dbg !2702

; <label>:621:                                    ; preds = %621, %619
  %622 = phi i64 [ 0, %619 ], [ %645, %621 ]
  %623 = phi i64 [ %549, %619 ], [ %646, %621 ]
  %624 = phi i64 [ %620, %619 ], [ %647, %621 ]
  %625 = lshr i64 %623, 3, !dbg !2702
  %626 = and i64 %623, 7, !dbg !2704
  %627 = xor i64 %626, 7, !dbg !2705
  %628 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 %625, !dbg !2707
  %629 = load i8, i8* %628, align 1, !dbg !2707, !tbaa !103
  %630 = zext i8 %629 to i64, !dbg !2707
  %631 = lshr i64 %630, %627, !dbg !2709
  %632 = and i64 %631, 1, !dbg !2710
  %633 = shl i64 %622, 1, !dbg !2712
  %634 = or i64 %632, %633, !dbg !2713
  %635 = add i64 %623, 1, !dbg !2714
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2715
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2663
  %636 = lshr i64 %635, 3, !dbg !2702
  %637 = and i64 %635, 7, !dbg !2704
  %638 = xor i64 %637, 7, !dbg !2705
  %639 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 %636, !dbg !2707
  %640 = load i8, i8* %639, align 1, !dbg !2707, !tbaa !103
  %641 = zext i8 %640 to i64, !dbg !2707
  %642 = lshr i64 %641, %638, !dbg !2709
  %643 = and i64 %642, 1, !dbg !2710
  %644 = shl i64 %634, 1, !dbg !2712
  %645 = or i64 %643, %644, !dbg !2713
  %646 = add i64 %623, 2, !dbg !2714
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2715
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2663
  %647 = add i64 %624, -2, !dbg !2663
  %648 = icmp eq i64 %647, 0, !dbg !2663
  br i1 %648, label %649, label %621, !dbg !2663, !llvm.loop !436

; <label>:649:                                    ; preds = %621, %616
  %650 = phi i64 [ undef, %616 ], [ %645, %621 ]
  %651 = phi i64 [ 0, %616 ], [ %645, %621 ]
  %652 = phi i64 [ %549, %616 ], [ %646, %621 ]
  %653 = icmp eq i64 %617, 0, !dbg !2663
  br i1 %653, label %665, label %654, !dbg !2663

; <label>:654:                                    ; preds = %649
  %655 = lshr i64 %652, 3, !dbg !2702
  %656 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 %655, !dbg !2707
  %657 = load i8, i8* %656, align 1, !dbg !2707, !tbaa !103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2715
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2663
  %658 = zext i8 %657 to i64, !dbg !2707
  %659 = and i64 %652, 7, !dbg !2704
  %660 = xor i64 %659, 7, !dbg !2705
  %661 = lshr i64 %658, %660, !dbg !2709
  %662 = and i64 %661, 1, !dbg !2710
  %663 = shl i64 %651, 1, !dbg !2712
  %664 = or i64 %662, %663, !dbg !2713
  br label %665, !dbg !2716

; <label>:665:                                    ; preds = %654, %649, %615
  %666 = phi i64 [ 0, %615 ], [ %650, %649 ], [ %664, %654 ], !dbg !2717
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2716
  call void @addReplyLongLong(%struct.client* %0, i64 %666) #6, !dbg !2719
  br label %667

; <label>:667:                                    ; preds = %665, %613
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %196) #8, !dbg !2720
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %195) #8, !dbg !2720
  call void @llvm.lifetime.end.p0i8(i64 9, i8* nonnull %194) #8, !dbg !2720
  br label %668

; <label>:668:                                    ; preds = %667, %520
  %669 = phi i64 [ %521, %520 ], [ %211, %667 ]
  %670 = phi i32 [ %522, %520 ], [ %210, %667 ], !dbg !2240
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %671 = add nuw nsw i64 %209, 1, !dbg !2721
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2722
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2315
  %672 = icmp eq i64 %671, %198, !dbg !2314
  br i1 %672, label %673, label %208, !dbg !2315, !llvm.loop !2723

; <label>:673:                                    ; preds = %668
  %674 = icmp eq i32 %670, 0, !dbg !2725
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2727
  br i1 %674, label %692, label %675, !dbg !2727

; <label>:675:                                    ; preds = %673
  %676 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !2728
  %677 = load %struct.redisDb*, %struct.redisDb** %676, align 8, !dbg !2728, !tbaa !1114
  %678 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !2730
  %679 = load %struct.redisObject**, %struct.redisObject*** %678, align 8, !dbg !2730, !tbaa !1119
  %680 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %679, i64 1, !dbg !2731
  %681 = load %struct.redisObject*, %struct.redisObject** %680, align 8, !dbg !2731, !tbaa !1121
  call void @signalModifiedKey(%struct.redisDb* %677, %struct.redisObject* %681) #6, !dbg !2732
  %682 = load %struct.redisObject**, %struct.redisObject*** %678, align 8, !dbg !2733, !tbaa !1119
  %683 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %682, i64 1, !dbg !2734
  %684 = load %struct.redisObject*, %struct.redisObject** %683, align 8, !dbg !2734, !tbaa !1121
  %685 = load %struct.redisDb*, %struct.redisDb** %676, align 8, !dbg !2735, !tbaa !1114
  %686 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %685, i64 0, i32 5, !dbg !2736
  %687 = load i32, i32* %686, align 8, !dbg !2736, !tbaa !1282
  call void @notifyKeyspaceEvent(i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), %struct.redisObject* %684, i32 %687) #6, !dbg !2737
  %688 = sext i32 %670 to i64, !dbg !2738
  %689 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !2739, !tbaa !1286
  %690 = add nsw i64 %689, %688, !dbg !2739
  store i64 %690, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !2739, !tbaa !1286
  br label %691, !dbg !2740

; <label>:691:                                    ; preds = %184, %675
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2741
  br label %692, !dbg !2742

; <label>:692:                                    ; preds = %691, %673
  call void @zfree(i8* %187) #6, !dbg !2742
  br label %693, !dbg !2743

; <label>:693:                                    ; preds = %78, %139, %692, %183, %179
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #8, !dbg !2743
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2743
  ret void, !dbg !2743

; <label>:694:                                    ; preds = %536
  %695 = getelementptr inbounds i8, i8* %527, i64 %539, !dbg !2644
  %696 = load i8, i8* %695, align 1, !dbg !2644, !tbaa !103
  store i8 %696, i8* %200, align 1, !dbg !2645, !tbaa !103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2646
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2640
  %697 = add nuw nsw i64 %531, 2, !dbg !2647
  %698 = icmp ult i64 %697, %534, !dbg !2642
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2643
  br i1 %698, label %699, label %541, !dbg !2643

; <label>:699:                                    ; preds = %694
  %700 = getelementptr inbounds i8, i8* %527, i64 %697, !dbg !2644
  %701 = load i8, i8* %700, align 1, !dbg !2644, !tbaa !103
  store i8 %701, i8* %201, align 1, !dbg !2645, !tbaa !103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2646
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2640
  %702 = add nuw nsw i64 %531, 3, !dbg !2647
  %703 = icmp ult i64 %702, %534, !dbg !2642
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2643
  br i1 %703, label %704, label %541, !dbg !2643

; <label>:704:                                    ; preds = %699
  %705 = getelementptr inbounds i8, i8* %527, i64 %702, !dbg !2644
  %706 = load i8, i8* %705, align 1, !dbg !2644, !tbaa !103
  store i8 %706, i8* %202, align 1, !dbg !2645, !tbaa !103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2646
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2640
  %707 = add nuw nsw i64 %531, 4, !dbg !2647
  %708 = icmp ult i64 %707, %534, !dbg !2642
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2643
  br i1 %708, label %709, label %541, !dbg !2643

; <label>:709:                                    ; preds = %704
  %710 = getelementptr inbounds i8, i8* %527, i64 %707, !dbg !2644
  %711 = load i8, i8* %710, align 1, !dbg !2644, !tbaa !103
  store i8 %711, i8* %203, align 1, !dbg !2645, !tbaa !103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2646
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2640
  %712 = add nuw nsw i64 %531, 5, !dbg !2647
  %713 = icmp ult i64 %712, %534, !dbg !2642
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2643
  br i1 %713, label %714, label %541, !dbg !2643

; <label>:714:                                    ; preds = %709
  %715 = getelementptr inbounds i8, i8* %527, i64 %712, !dbg !2644
  %716 = load i8, i8* %715, align 1, !dbg !2644, !tbaa !103
  store i8 %716, i8* %204, align 1, !dbg !2645, !tbaa !103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2646
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2640
  %717 = add nuw nsw i64 %531, 6, !dbg !2647
  %718 = icmp ult i64 %717, %534, !dbg !2642
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2643
  br i1 %718, label %719, label %541, !dbg !2643

; <label>:719:                                    ; preds = %714
  %720 = getelementptr inbounds i8, i8* %527, i64 %717, !dbg !2644
  %721 = load i8, i8* %720, align 1, !dbg !2644, !tbaa !103
  store i8 %721, i8* %205, align 1, !dbg !2645, !tbaa !103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2646
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2640
  %722 = add nuw nsw i64 %531, 7, !dbg !2647
  %723 = icmp ult i64 %722, %534, !dbg !2642
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2643
  br i1 %723, label %724, label %541, !dbg !2643

; <label>:724:                                    ; preds = %719
  %725 = getelementptr inbounds i8, i8* %527, i64 %722, !dbg !2644
  %726 = load i8, i8* %725, align 1, !dbg !2644, !tbaa !103
  store i8 %726, i8* %206, align 1, !dbg !2645, !tbaa !103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2646
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2640
  %727 = add nuw nsw i64 %531, 8, !dbg !2647
  %728 = icmp ult i64 %727, %534, !dbg !2642
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2643
  br i1 %728, label %729, label %541, !dbg !2643

; <label>:729:                                    ; preds = %724
  %730 = getelementptr inbounds i8, i8* %527, i64 %727, !dbg !2644
  %731 = load i8, i8* %730, align 1, !dbg !2644, !tbaa !103
  store i8 %731, i8* %207, align 1, !dbg !2645, !tbaa !103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2646
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2640
  br label %541
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
!96 = !DILocation(line: 47, column: 5, scope: !2)
!97 = !DILocation(line: 47, column: 11, scope: !2)
!98 = !DILocation(line: 47, column: 28, scope: !2)
!99 = !DILocation(line: 47, column: 32, scope: !2)
!100 = !DILocation(line: 48, column: 30, scope: !101)
!101 = distinct !DILexicalBlock(scope: !2, file: !3, line: 47, column: 42)
!102 = !DILocation(line: 48, column: 28, scope: !101)
!103 = !{!104, !104, i64 0}
!104 = !{!"omnipotent char", !105, i64 0}
!105 = !{!"Simple C/C++ TBAA"}
!106 = !DILocation(line: 48, column: 17, scope: !101)
!107 = !DILocation(line: 48, column: 14, scope: !101)
!108 = !DILocation(line: 49, column: 14, scope: !101)
!109 = distinct !{!109, !96, !110}
!110 = !DILocation(line: 50, column: 5, scope: !2)
!111 = !DILocation(line: 0, scope: !101)
!112 = !DILocation(line: 53, column: 10, scope: !2)
!113 = !DILocation(line: 43, column: 15, scope: !2)
!114 = !DILocation(line: 54, column: 5, scope: !2)
!115 = !DILocation(line: 54, column: 16, scope: !2)
!116 = !DILocation(line: 57, column: 19, scope: !77)
!117 = !DILocation(line: 55, column: 18, scope: !77)
!118 = !DILocation(line: 55, column: 24, scope: !77)
!119 = !DILocation(line: 55, column: 30, scope: !77)
!120 = !DILocation(line: 60, column: 19, scope: !77)
!121 = !DILocation(line: 57, column: 16, scope: !77)
!122 = !{!123, !123, i64 0}
!123 = !{!"int", !104, i64 0}
!124 = !DILocation(line: 55, column: 36, scope: !77)
!125 = !DILocation(line: 61, column: 19, scope: !77)
!126 = !DILocation(line: 61, column: 16, scope: !77)
!127 = !DILocation(line: 55, column: 42, scope: !77)
!128 = !DILocation(line: 62, column: 19, scope: !77)
!129 = !DILocation(line: 62, column: 16, scope: !77)
!130 = !DILocation(line: 55, column: 48, scope: !77)
!131 = !DILocation(line: 63, column: 19, scope: !77)
!132 = !DILocation(line: 63, column: 16, scope: !77)
!133 = !DILocation(line: 55, column: 54, scope: !77)
!134 = !DILocation(line: 64, column: 15, scope: !77)
!135 = !DILocation(line: 66, column: 30, scope: !77)
!136 = !DILocation(line: 66, column: 36, scope: !77)
!137 = !DILocation(line: 66, column: 21, scope: !77)
!138 = !DILocation(line: 67, column: 22, scope: !77)
!139 = !DILocation(line: 67, column: 45, scope: !77)
!140 = !DILocation(line: 67, column: 51, scope: !77)
!141 = !DILocation(line: 67, column: 36, scope: !77)
!142 = !DILocation(line: 74, column: 30, scope: !77)
!143 = !DILocation(line: 74, column: 36, scope: !77)
!144 = !DILocation(line: 74, column: 21, scope: !77)
!145 = !DILocation(line: 75, column: 22, scope: !77)
!146 = !DILocation(line: 75, column: 45, scope: !77)
!147 = !DILocation(line: 75, column: 51, scope: !77)
!148 = !DILocation(line: 75, column: 36, scope: !77)
!149 = !DILocation(line: 76, column: 30, scope: !77)
!150 = !DILocation(line: 76, column: 36, scope: !77)
!151 = !DILocation(line: 76, column: 21, scope: !77)
!152 = !DILocation(line: 77, column: 22, scope: !77)
!153 = !DILocation(line: 77, column: 45, scope: !77)
!154 = !DILocation(line: 77, column: 51, scope: !77)
!155 = !DILocation(line: 77, column: 36, scope: !77)
!156 = !DILocation(line: 78, column: 30, scope: !77)
!157 = !DILocation(line: 78, column: 36, scope: !77)
!158 = !DILocation(line: 78, column: 21, scope: !77)
!159 = !DILocation(line: 79, column: 22, scope: !77)
!160 = !DILocation(line: 79, column: 45, scope: !77)
!161 = !DILocation(line: 79, column: 51, scope: !77)
!162 = !DILocation(line: 79, column: 36, scope: !77)
!163 = !DILocation(line: 80, column: 34, scope: !77)
!164 = !DILocation(line: 80, column: 26, scope: !77)
!165 = !DILocation(line: 80, column: 41, scope: !77)
!166 = !DILocation(line: 84, column: 36, scope: !77)
!167 = !DILocation(line: 84, column: 28, scope: !77)
!168 = !DILocation(line: 84, column: 43, scope: !77)
!169 = !DILocation(line: 85, column: 36, scope: !77)
!170 = !DILocation(line: 85, column: 28, scope: !77)
!171 = !DILocation(line: 85, column: 43, scope: !77)
!172 = !DILocation(line: 86, column: 36, scope: !77)
!173 = !DILocation(line: 86, column: 28, scope: !77)
!174 = !DILocation(line: 86, column: 43, scope: !77)
!175 = !DILocation(line: 85, column: 57, scope: !77)
!176 = !DILocation(line: 86, column: 57, scope: !77)
!177 = !DILocation(line: 86, column: 71, scope: !77)
!178 = !DILocation(line: 80, column: 17, scope: !77)
!179 = !DILocation(line: 80, column: 14, scope: !77)
!180 = distinct !{!180, !114, !181}
!181 = !DILocation(line: 87, column: 5, scope: !2)
!182 = !DILocation(line: 89, column: 9, scope: !2)
!183 = !DILocation(line: 0, scope: !77)
!184 = !DILocation(line: 90, column: 5, scope: !2)
!185 = !DILocation(line: 90, column: 16, scope: !2)
!186 = !DILocation(line: 90, column: 41, scope: !2)
!187 = !DILocation(line: 90, column: 39, scope: !2)
!188 = !DILocation(line: 90, column: 28, scope: !2)
!189 = !DILocation(line: 90, column: 25, scope: !2)
!190 = distinct !{!190, !191}
!191 = !{!"llvm.loop.unroll.disable"}
!192 = distinct !{!192, !184, !193}
!193 = !DILocation(line: 90, column: 43, scope: !2)
!194 = !DILocation(line: 0, scope: !2)
!195 = !DILocation(line: 91, column: 5, scope: !2)
!196 = distinct !DISubprogram(name: "redisBitpos", scope: !3, file: !3, line: 101, type: !197, isLocal: false, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: true, unit: !13, retainedNodes: !200)
!197 = !DISubroutineType(types: !198)
!198 = !{!12, !11, !10, !199}
!199 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!200 = !{!201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211}
!201 = !DILocalVariable(name: "s", arg: 1, scope: !196, file: !3, line: 101, type: !11)
!202 = !DILocalVariable(name: "count", arg: 2, scope: !196, file: !3, line: 101, type: !10)
!203 = !DILocalVariable(name: "bit", arg: 3, scope: !196, file: !3, line: 101, type: !199)
!204 = !DILocalVariable(name: "l", scope: !196, file: !3, line: 102, type: !24)
!205 = !DILocalVariable(name: "c", scope: !196, file: !3, line: 103, type: !22)
!206 = !DILocalVariable(name: "skipval", scope: !196, file: !3, line: 104, type: !10)
!207 = !DILocalVariable(name: "word", scope: !196, file: !3, line: 104, type: !10)
!208 = !DILocalVariable(name: "one", scope: !196, file: !3, line: 104, type: !10)
!209 = !DILocalVariable(name: "pos", scope: !196, file: !3, line: 105, type: !12)
!210 = !DILocalVariable(name: "j", scope: !196, file: !3, line: 106, type: !10)
!211 = !DILocalVariable(name: "found", scope: !196, file: !3, line: 107, type: !199)
!212 = !DILocation(line: 101, column: 24, scope: !196)
!213 = !DILocation(line: 101, column: 41, scope: !196)
!214 = !DILocation(line: 101, column: 52, scope: !196)
!215 = !DILocation(line: 104, column: 28, scope: !196)
!216 = !DILocation(line: 105, column: 10, scope: !196)
!217 = !DILocation(line: 119, column: 15, scope: !196)
!218 = !DILocation(line: 104, column: 19, scope: !196)
!219 = !DILocation(line: 103, column: 20, scope: !196)
!220 = !DILocation(line: 107, column: 9, scope: !196)
!221 = !DILocation(line: 122, column: 5, scope: !196)
!222 = !DILocation(line: 122, column: 11, scope: !196)
!223 = !DILocation(line: 122, column: 28, scope: !196)
!224 = !DILocation(line: 122, column: 45, scope: !196)
!225 = !DILocation(line: 123, column: 13, scope: !226)
!226 = distinct !DILexicalBlock(scope: !227, file: !3, line: 123, column: 13)
!227 = distinct !DILexicalBlock(scope: !196, file: !3, line: 122, column: 55)
!228 = !DILocation(line: 123, column: 16, scope: !226)
!229 = !DILocation(line: 123, column: 13, scope: !227)
!230 = !DILocation(line: 125, column: 13, scope: !231)
!231 = distinct !DILexicalBlock(scope: !226, file: !3, line: 123, column: 28)
!232 = !DILocation(line: 133, column: 9, scope: !196)
!233 = !DILocation(line: 102, column: 20, scope: !196)
!234 = !DILocation(line: 134, column: 9, scope: !196)
!235 = !DILocation(line: 127, column: 10, scope: !227)
!236 = !DILocation(line: 128, column: 14, scope: !227)
!237 = !DILocation(line: 129, column: 13, scope: !227)
!238 = distinct !{!238, !221, !239}
!239 = !DILocation(line: 130, column: 5, scope: !196)
!240 = !DILocation(line: 0, scope: !227)
!241 = !DILocation(line: 135, column: 19, scope: !242)
!242 = distinct !DILexicalBlock(scope: !243, file: !3, line: 134, column: 17)
!243 = distinct !DILexicalBlock(scope: !196, file: !3, line: 134, column: 9)
!244 = !DILocation(line: 136, column: 9, scope: !242)
!245 = !DILocation(line: 136, column: 22, scope: !242)
!246 = !DILocation(line: 137, column: 17, scope: !247)
!247 = distinct !DILexicalBlock(scope: !248, file: !3, line: 137, column: 17)
!248 = distinct !DILexicalBlock(scope: !242, file: !3, line: 136, column: 37)
!249 = !{!250, !250, i64 0}
!250 = !{!"long", !104, i64 0}
!251 = !DILocation(line: 137, column: 20, scope: !247)
!252 = !DILocation(line: 137, column: 17, scope: !248)
!253 = !DILocation(line: 138, column: 14, scope: !248)
!254 = !DILocation(line: 139, column: 19, scope: !248)
!255 = !DILocation(line: 140, column: 17, scope: !248)
!256 = distinct !{!256, !244, !257}
!257 = !DILocation(line: 141, column: 9, scope: !242)
!258 = !DILocation(line: 106, column: 19, scope: !196)
!259 = !DILocation(line: 152, column: 10, scope: !260)
!260 = distinct !DILexicalBlock(scope: !196, file: !3, line: 152, column: 5)
!261 = !DILocation(line: 152, column: 5, scope: !260)
!262 = !DILocation(line: 154, column: 13, scope: !263)
!263 = distinct !DILexicalBlock(scope: !264, file: !3, line: 152, column: 38)
!264 = distinct !DILexicalBlock(scope: !260, file: !3, line: 152, column: 5)
!265 = !DILocation(line: 133, column: 7, scope: !196)
!266 = !DILocation(line: 154, column: 13, scope: !267)
!267 = distinct !DILexicalBlock(scope: !263, file: !3, line: 154, column: 13)
!268 = !DILocation(line: 152, column: 5, scope: !264)
!269 = !DILocation(line: 151, column: 9, scope: !196)
!270 = !DILocation(line: 155, column: 21, scope: !271)
!271 = distinct !DILexicalBlock(scope: !267, file: !3, line: 154, column: 20)
!272 = !DILocation(line: 158, column: 9, scope: !271)
!273 = !DILocation(line: 104, column: 38, scope: !196)
!274 = !DILocation(line: 176, column: 5, scope: !196)
!275 = !DILocation(line: 177, column: 19, scope: !276)
!276 = distinct !DILexicalBlock(scope: !277, file: !3, line: 177, column: 13)
!277 = distinct !DILexicalBlock(scope: !196, file: !3, line: 176, column: 16)
!278 = !DILocation(line: 177, column: 27, scope: !276)
!279 = !DILocation(line: 177, column: 33, scope: !276)
!280 = !DILocation(line: 177, column: 13, scope: !277)
!281 = !DILocation(line: 178, column: 12, scope: !277)
!282 = !DILocation(line: 177, column: 41, scope: !276)
!283 = !DILocation(line: 179, column: 13, scope: !277)
!284 = !DILocation(line: 184, column: 5, scope: !196)
!285 = !DILocation(line: 0, scope: !276)
!286 = !DILocation(line: 186, column: 1, scope: !196)
!287 = !DILocation(line: 153, column: 14, scope: !263)
!288 = !DILocation(line: 156, column: 14, scope: !271)
!289 = !DILocation(line: 155, column: 18, scope: !271)
!290 = !DILocation(line: 157, column: 18, scope: !271)
!291 = !DILocation(line: 0, scope: !271)
!292 = !DILocation(line: 0, scope: !263)
!293 = !DILocation(line: 166, column: 13, scope: !294)
!294 = distinct !DILexicalBlock(scope: !196, file: !3, line: 166, column: 9)
!295 = !DILocation(line: 166, column: 26, scope: !294)
!296 = !DILocation(line: 166, column: 18, scope: !294)
!297 = !DILocation(line: 0, scope: !196)
!298 = distinct !{!298, !274, !299}
!299 = !DILocation(line: 180, column: 5, scope: !196)
!300 = distinct !DISubprogram(name: "setUnsignedBitfield", scope: !3, file: !3, line: 209, type: !301, isLocal: false, isDefinition: true, scopeLine: 209, flags: DIFlagPrototyped, isOptimized: true, unit: !13, retainedNodes: !303)
!301 = !DISubroutineType(types: !302)
!302 = !{null, !22, !25, !25, !25}
!303 = !{!304, !305, !306, !307, !308, !309, !310, !311, !312}
!304 = !DILocalVariable(name: "p", arg: 1, scope: !300, file: !3, line: 209, type: !22)
!305 = !DILocalVariable(name: "offset", arg: 2, scope: !300, file: !3, line: 209, type: !25)
!306 = !DILocalVariable(name: "bits", arg: 3, scope: !300, file: !3, line: 209, type: !25)
!307 = !DILocalVariable(name: "value", arg: 4, scope: !300, file: !3, line: 209, type: !25)
!308 = !DILocalVariable(name: "byte", scope: !300, file: !3, line: 210, type: !25)
!309 = !DILocalVariable(name: "bit", scope: !300, file: !3, line: 210, type: !25)
!310 = !DILocalVariable(name: "byteval", scope: !300, file: !3, line: 210, type: !25)
!311 = !DILocalVariable(name: "bitval", scope: !300, file: !3, line: 210, type: !25)
!312 = !DILocalVariable(name: "j", scope: !300, file: !3, line: 210, type: !25)
!313 = !DILocation(line: 209, column: 41, scope: !300)
!314 = !DILocation(line: 209, column: 53, scope: !300)
!315 = !DILocation(line: 209, column: 70, scope: !300)
!316 = !DILocation(line: 209, column: 85, scope: !300)
!317 = !DILocation(line: 210, column: 42, scope: !300)
!318 = !DILocation(line: 212, column: 10, scope: !319)
!319 = distinct !DILexicalBlock(scope: !300, file: !3, line: 212, column: 5)
!320 = !DILocation(line: 212, column: 19, scope: !321)
!321 = distinct !DILexicalBlock(scope: !319, file: !3, line: 212, column: 5)
!322 = !DILocation(line: 212, column: 5, scope: !319)
!323 = !DILocation(line: 213, column: 48, scope: !324)
!324 = distinct !DILexicalBlock(scope: !321, file: !3, line: 212, column: 32)
!325 = !DILocation(line: 213, column: 39, scope: !324)
!326 = !DILocation(line: 213, column: 25, scope: !324)
!327 = !DILocation(line: 213, column: 54, scope: !324)
!328 = !DILocation(line: 213, column: 18, scope: !324)
!329 = !DILocation(line: 210, column: 34, scope: !300)
!330 = !DILocation(line: 214, column: 23, scope: !324)
!331 = !DILocation(line: 210, column: 14, scope: !300)
!332 = !DILocation(line: 215, column: 27, scope: !324)
!333 = !DILocation(line: 215, column: 17, scope: !324)
!334 = !DILocation(line: 210, column: 20, scope: !300)
!335 = !DILocation(line: 216, column: 19, scope: !324)
!336 = !DILocation(line: 210, column: 25, scope: !300)
!337 = !DILocation(line: 217, column: 24, scope: !324)
!338 = !DILocation(line: 217, column: 20, scope: !324)
!339 = !DILocation(line: 217, column: 17, scope: !324)
!340 = !DILocation(line: 218, column: 27, scope: !324)
!341 = !DILocation(line: 219, column: 27, scope: !324)
!342 = !DILocation(line: 219, column: 19, scope: !324)
!343 = !DILocation(line: 219, column: 17, scope: !324)
!344 = !DILocation(line: 220, column: 15, scope: !324)
!345 = !DILocation(line: 212, column: 28, scope: !321)
!346 = !DILocation(line: 212, column: 5, scope: !321)
!347 = distinct !{!347, !322, !348}
!348 = !DILocation(line: 221, column: 5, scope: !319)
!349 = !DILocation(line: 222, column: 1, scope: !300)
!350 = distinct !DISubprogram(name: "setSignedBitfield", scope: !3, file: !3, line: 224, type: !351, isLocal: false, isDefinition: true, scopeLine: 224, flags: DIFlagPrototyped, isOptimized: true, unit: !13, retainedNodes: !353)
!351 = !DISubroutineType(types: !352)
!352 = !{null, !22, !25, !25, !27}
!353 = !{!354, !355, !356, !357, !358}
!354 = !DILocalVariable(name: "p", arg: 1, scope: !350, file: !3, line: 224, type: !22)
!355 = !DILocalVariable(name: "offset", arg: 2, scope: !350, file: !3, line: 224, type: !25)
!356 = !DILocalVariable(name: "bits", arg: 3, scope: !350, file: !3, line: 224, type: !25)
!357 = !DILocalVariable(name: "value", arg: 4, scope: !350, file: !3, line: 224, type: !27)
!358 = !DILocalVariable(name: "uv", scope: !350, file: !3, line: 225, type: !25)
!359 = !DILocation(line: 224, column: 39, scope: !350)
!360 = !DILocation(line: 224, column: 51, scope: !350)
!361 = !DILocation(line: 224, column: 68, scope: !350)
!362 = !DILocation(line: 224, column: 82, scope: !350)
!363 = !DILocation(line: 225, column: 14, scope: !350)
!364 = !DILocation(line: 209, column: 41, scope: !300, inlinedAt: !365)
!365 = distinct !DILocation(line: 226, column: 5, scope: !350)
!366 = !DILocation(line: 209, column: 53, scope: !300, inlinedAt: !365)
!367 = !DILocation(line: 209, column: 70, scope: !300, inlinedAt: !365)
!368 = !DILocation(line: 209, column: 85, scope: !300, inlinedAt: !365)
!369 = !DILocation(line: 210, column: 42, scope: !300, inlinedAt: !365)
!370 = !DILocation(line: 212, column: 10, scope: !319, inlinedAt: !365)
!371 = !DILocation(line: 212, column: 19, scope: !321, inlinedAt: !365)
!372 = !DILocation(line: 212, column: 5, scope: !319, inlinedAt: !365)
!373 = !DILocation(line: 213, column: 48, scope: !324, inlinedAt: !365)
!374 = !DILocation(line: 213, column: 39, scope: !324, inlinedAt: !365)
!375 = !DILocation(line: 213, column: 25, scope: !324, inlinedAt: !365)
!376 = !DILocation(line: 213, column: 54, scope: !324, inlinedAt: !365)
!377 = !DILocation(line: 213, column: 18, scope: !324, inlinedAt: !365)
!378 = !DILocation(line: 210, column: 34, scope: !300, inlinedAt: !365)
!379 = !DILocation(line: 214, column: 23, scope: !324, inlinedAt: !365)
!380 = !DILocation(line: 210, column: 14, scope: !300, inlinedAt: !365)
!381 = !DILocation(line: 215, column: 27, scope: !324, inlinedAt: !365)
!382 = !DILocation(line: 215, column: 17, scope: !324, inlinedAt: !365)
!383 = !DILocation(line: 210, column: 20, scope: !300, inlinedAt: !365)
!384 = !DILocation(line: 216, column: 19, scope: !324, inlinedAt: !365)
!385 = !DILocation(line: 210, column: 25, scope: !300, inlinedAt: !365)
!386 = !DILocation(line: 217, column: 24, scope: !324, inlinedAt: !365)
!387 = !DILocation(line: 217, column: 20, scope: !324, inlinedAt: !365)
!388 = !DILocation(line: 217, column: 17, scope: !324, inlinedAt: !365)
!389 = !DILocation(line: 218, column: 27, scope: !324, inlinedAt: !365)
!390 = !DILocation(line: 219, column: 27, scope: !324, inlinedAt: !365)
!391 = !DILocation(line: 219, column: 19, scope: !324, inlinedAt: !365)
!392 = !DILocation(line: 219, column: 17, scope: !324, inlinedAt: !365)
!393 = !DILocation(line: 220, column: 15, scope: !324, inlinedAt: !365)
!394 = !DILocation(line: 212, column: 28, scope: !321, inlinedAt: !365)
!395 = !DILocation(line: 212, column: 5, scope: !321, inlinedAt: !365)
!396 = !DILocation(line: 222, column: 1, scope: !300, inlinedAt: !365)
!397 = !DILocation(line: 227, column: 1, scope: !350)
!398 = distinct !DISubprogram(name: "getUnsignedBitfield", scope: !3, file: !3, line: 229, type: !399, isLocal: false, isDefinition: true, scopeLine: 229, flags: DIFlagPrototyped, isOptimized: true, unit: !13, retainedNodes: !401)
!399 = !DISubroutineType(types: !400)
!400 = !{!25, !22, !25, !25}
!401 = !{!402, !403, !404, !405, !406, !407, !408, !409, !410}
!402 = !DILocalVariable(name: "p", arg: 1, scope: !398, file: !3, line: 229, type: !22)
!403 = !DILocalVariable(name: "offset", arg: 2, scope: !398, file: !3, line: 229, type: !25)
!404 = !DILocalVariable(name: "bits", arg: 3, scope: !398, file: !3, line: 229, type: !25)
!405 = !DILocalVariable(name: "byte", scope: !398, file: !3, line: 230, type: !25)
!406 = !DILocalVariable(name: "bit", scope: !398, file: !3, line: 230, type: !25)
!407 = !DILocalVariable(name: "byteval", scope: !398, file: !3, line: 230, type: !25)
!408 = !DILocalVariable(name: "bitval", scope: !398, file: !3, line: 230, type: !25)
!409 = !DILocalVariable(name: "j", scope: !398, file: !3, line: 230, type: !25)
!410 = !DILocalVariable(name: "value", scope: !398, file: !3, line: 230, type: !25)
!411 = !DILocation(line: 229, column: 45, scope: !398)
!412 = !DILocation(line: 229, column: 57, scope: !398)
!413 = !DILocation(line: 229, column: 74, scope: !398)
!414 = !DILocation(line: 230, column: 45, scope: !398)
!415 = !DILocation(line: 230, column: 42, scope: !398)
!416 = !DILocation(line: 232, column: 10, scope: !417)
!417 = distinct !DILexicalBlock(scope: !398, file: !3, line: 232, column: 5)
!418 = !DILocation(line: 232, column: 19, scope: !419)
!419 = distinct !DILexicalBlock(scope: !417, file: !3, line: 232, column: 5)
!420 = !DILocation(line: 232, column: 5, scope: !417)
!421 = !DILocation(line: 233, column: 23, scope: !422)
!422 = distinct !DILexicalBlock(scope: !419, file: !3, line: 232, column: 32)
!423 = !DILocation(line: 230, column: 14, scope: !398)
!424 = !DILocation(line: 234, column: 27, scope: !422)
!425 = !DILocation(line: 234, column: 17, scope: !422)
!426 = !DILocation(line: 230, column: 20, scope: !398)
!427 = !DILocation(line: 235, column: 19, scope: !422)
!428 = !DILocation(line: 230, column: 25, scope: !398)
!429 = !DILocation(line: 236, column: 27, scope: !422)
!430 = !DILocation(line: 236, column: 35, scope: !422)
!431 = !DILocation(line: 230, column: 34, scope: !398)
!432 = !DILocation(line: 237, column: 23, scope: !422)
!433 = !DILocation(line: 237, column: 28, scope: !422)
!434 = !DILocation(line: 238, column: 15, scope: !422)
!435 = !DILocation(line: 232, column: 5, scope: !419)
!436 = distinct !{!436, !420, !437}
!437 = !DILocation(line: 239, column: 5, scope: !417)
!438 = !DILocation(line: 240, column: 5, scope: !398)
!439 = !DILocation(line: 0, scope: !422)
!440 = distinct !DISubprogram(name: "getSignedBitfield", scope: !3, file: !3, line: 243, type: !441, isLocal: false, isDefinition: true, scopeLine: 243, flags: DIFlagPrototyped, isOptimized: true, unit: !13, retainedNodes: !443)
!441 = !DISubroutineType(types: !442)
!442 = !{!27, !22, !25, !25}
!443 = !{!444, !445, !446, !447, !448}
!444 = !DILocalVariable(name: "p", arg: 1, scope: !440, file: !3, line: 243, type: !22)
!445 = !DILocalVariable(name: "offset", arg: 2, scope: !440, file: !3, line: 243, type: !25)
!446 = !DILocalVariable(name: "bits", arg: 3, scope: !440, file: !3, line: 243, type: !25)
!447 = !DILocalVariable(name: "value", scope: !440, file: !3, line: 244, type: !27)
!448 = !DILocalVariable(name: "conv", scope: !440, file: !3, line: 245, type: !449)
!449 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !440, file: !3, line: 245, size: 64, elements: !450)
!450 = !{!451, !452}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !449, file: !3, line: 245, baseType: !25, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !449, file: !3, line: 245, baseType: !27, size: 64)
!453 = !DILocation(line: 243, column: 42, scope: !440)
!454 = !DILocation(line: 243, column: 54, scope: !440)
!455 = !DILocation(line: 243, column: 71, scope: !440)
!456 = !DILocation(line: 229, column: 45, scope: !398, inlinedAt: !457)
!457 = distinct !DILocation(line: 254, column: 14, scope: !440)
!458 = !DILocation(line: 229, column: 57, scope: !398, inlinedAt: !457)
!459 = !DILocation(line: 229, column: 74, scope: !398, inlinedAt: !457)
!460 = !DILocation(line: 230, column: 45, scope: !398, inlinedAt: !457)
!461 = !DILocation(line: 230, column: 42, scope: !398, inlinedAt: !457)
!462 = !DILocation(line: 232, column: 10, scope: !417, inlinedAt: !457)
!463 = !DILocation(line: 232, column: 19, scope: !419, inlinedAt: !457)
!464 = !DILocation(line: 232, column: 5, scope: !417, inlinedAt: !457)
!465 = !DILocation(line: 233, column: 23, scope: !422, inlinedAt: !457)
!466 = !DILocation(line: 230, column: 14, scope: !398, inlinedAt: !457)
!467 = !DILocation(line: 234, column: 27, scope: !422, inlinedAt: !457)
!468 = !DILocation(line: 234, column: 17, scope: !422, inlinedAt: !457)
!469 = !DILocation(line: 230, column: 20, scope: !398, inlinedAt: !457)
!470 = !DILocation(line: 235, column: 19, scope: !422, inlinedAt: !457)
!471 = !DILocation(line: 230, column: 25, scope: !398, inlinedAt: !457)
!472 = !DILocation(line: 236, column: 27, scope: !422, inlinedAt: !457)
!473 = !DILocation(line: 236, column: 35, scope: !422, inlinedAt: !457)
!474 = !DILocation(line: 230, column: 34, scope: !398, inlinedAt: !457)
!475 = !DILocation(line: 237, column: 23, scope: !422, inlinedAt: !457)
!476 = !DILocation(line: 237, column: 28, scope: !422, inlinedAt: !457)
!477 = !DILocation(line: 238, column: 15, scope: !422, inlinedAt: !457)
!478 = !DILocation(line: 232, column: 5, scope: !419, inlinedAt: !457)
!479 = !DILocation(line: 240, column: 5, scope: !398, inlinedAt: !457)
!480 = !DILocation(line: 0, scope: !422, inlinedAt: !457)
!481 = !DILocation(line: 245, column: 36, scope: !440)
!482 = !DILocation(line: 244, column: 13, scope: !440)
!483 = !DILocation(line: 260, column: 38, scope: !484)
!484 = distinct !DILexicalBlock(scope: !440, file: !3, line: 260, column: 9)
!485 = !DILocation(line: 260, column: 30, scope: !484)
!486 = !DILocation(line: 260, column: 15, scope: !484)
!487 = !DILocation(line: 260, column: 9, scope: !440)
!488 = !DILocation(line: 261, column: 33, scope: !484)
!489 = !DILocation(line: 261, column: 15, scope: !484)
!490 = !DILocation(line: 261, column: 9, scope: !484)
!491 = !DILocation(line: 0, scope: !440)
!492 = !DILocation(line: 262, column: 5, scope: !440)
!493 = distinct !DISubprogram(name: "checkUnsignedBitfieldOverflow", scope: !3, file: !3, line: 288, type: !494, isLocal: false, isDefinition: true, scopeLine: 288, flags: DIFlagPrototyped, isOptimized: true, unit: !13, retainedNodes: !497)
!494 = !DISubroutineType(types: !495)
!495 = !{!199, !25, !27, !25, !199, !496}
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!497 = !{!498, !499, !500, !501, !502, !503, !504, !505, !506, !508}
!498 = !DILocalVariable(name: "value", arg: 1, scope: !493, file: !3, line: 288, type: !25)
!499 = !DILocalVariable(name: "incr", arg: 2, scope: !493, file: !3, line: 288, type: !27)
!500 = !DILocalVariable(name: "bits", arg: 3, scope: !493, file: !3, line: 288, type: !25)
!501 = !DILocalVariable(name: "owtype", arg: 4, scope: !493, file: !3, line: 288, type: !199)
!502 = !DILocalVariable(name: "limit", arg: 5, scope: !493, file: !3, line: 288, type: !496)
!503 = !DILocalVariable(name: "max", scope: !493, file: !3, line: 289, type: !25)
!504 = !DILocalVariable(name: "maxincr", scope: !493, file: !3, line: 290, type: !27)
!505 = !DILocalVariable(name: "minincr", scope: !493, file: !3, line: 291, type: !27)
!506 = !DILocalVariable(name: "mask", scope: !507, file: !3, line: 316, type: !25)
!507 = distinct !DILexicalBlock(scope: !493, file: !3, line: 315, column: 5)
!508 = !DILocalVariable(name: "res", scope: !507, file: !3, line: 317, type: !25)
!509 = !DILocation(line: 288, column: 44, scope: !493)
!510 = !DILocation(line: 288, column: 59, scope: !493)
!511 = !DILocation(line: 288, column: 74, scope: !493)
!512 = !DILocation(line: 288, column: 84, scope: !493)
!513 = !DILocation(line: 288, column: 102, scope: !493)
!514 = !DILocation(line: 289, column: 26, scope: !493)
!515 = !DILocation(line: 289, column: 20, scope: !493)
!516 = !DILocation(line: 289, column: 14, scope: !493)
!517 = !DILocation(line: 293, column: 21, scope: !518)
!518 = distinct !DILexicalBlock(scope: !493, file: !3, line: 293, column: 9)
!519 = !DILocation(line: 289, column: 68, scope: !493)
!520 = !DILocation(line: 293, column: 15, scope: !518)
!521 = !DILocation(line: 291, column: 23, scope: !493)
!522 = !DILocation(line: 293, column: 30, scope: !518)
!523 = !DILocation(line: 293, column: 34, scope: !518)
!524 = !DILocation(line: 290, column: 26, scope: !493)
!525 = !DILocation(line: 293, column: 42, scope: !518)
!526 = !DILocation(line: 293, column: 9, scope: !493)
!527 = !DILocation(line: 302, column: 25, scope: !528)
!528 = distinct !DILexicalBlock(scope: !518, file: !3, line: 302, column: 16)
!529 = !DILocation(line: 294, column: 13, scope: !530)
!530 = distinct !DILexicalBlock(scope: !531, file: !3, line: 294, column: 13)
!531 = distinct !DILexicalBlock(scope: !518, file: !3, line: 293, column: 54)
!532 = !DILocation(line: 294, column: 13, scope: !531)
!533 = !DILocation(line: 295, column: 24, scope: !534)
!534 = distinct !DILexicalBlock(scope: !535, file: !3, line: 295, column: 17)
!535 = distinct !DILexicalBlock(scope: !530, file: !3, line: 294, column: 20)
!536 = !DILocation(line: 295, column: 17, scope: !535)
!537 = !DILocation(line: 297, column: 31, scope: !538)
!538 = distinct !DILexicalBlock(scope: !534, file: !3, line: 297, column: 24)
!539 = !DILocation(line: 297, column: 24, scope: !534)
!540 = !DILocation(line: 298, column: 24, scope: !541)
!541 = distinct !DILexicalBlock(scope: !538, file: !3, line: 297, column: 50)
!542 = !DILocation(line: 299, column: 13, scope: !541)
!543 = !DILocation(line: 302, column: 21, scope: !528)
!544 = !DILocation(line: 302, column: 33, scope: !528)
!545 = !DILocation(line: 302, column: 16, scope: !518)
!546 = !DILocation(line: 303, column: 13, scope: !547)
!547 = distinct !DILexicalBlock(scope: !548, file: !3, line: 303, column: 13)
!548 = distinct !DILexicalBlock(scope: !528, file: !3, line: 302, column: 44)
!549 = !DILocation(line: 303, column: 13, scope: !548)
!550 = !DILocation(line: 304, column: 24, scope: !551)
!551 = distinct !DILexicalBlock(scope: !552, file: !3, line: 304, column: 17)
!552 = distinct !DILexicalBlock(scope: !547, file: !3, line: 303, column: 20)
!553 = !DILocation(line: 304, column: 17, scope: !552)
!554 = !DILocation(line: 306, column: 31, scope: !555)
!555 = distinct !DILexicalBlock(scope: !551, file: !3, line: 306, column: 24)
!556 = !DILocation(line: 306, column: 24, scope: !551)
!557 = !DILocation(line: 307, column: 24, scope: !558)
!558 = distinct !DILexicalBlock(scope: !555, file: !3, line: 306, column: 50)
!559 = !DILocation(line: 308, column: 13, scope: !558)
!560 = !DILocation(line: 316, column: 40, scope: !507)
!561 = !DILocation(line: 316, column: 18, scope: !507)
!562 = !DILocation(line: 317, column: 29, scope: !507)
!563 = !DILocation(line: 317, column: 18, scope: !507)
!564 = !DILocation(line: 319, column: 16, scope: !507)
!565 = !DILocation(line: 319, column: 13, scope: !507)
!566 = !DILocation(line: 320, column: 16, scope: !507)
!567 = !DILocation(line: 322, column: 5, scope: !493)
!568 = !DILocation(line: 0, scope: !493)
!569 = !DILocation(line: 0, scope: !531)
!570 = !DILocation(line: 323, column: 1, scope: !493)
!571 = distinct !DISubprogram(name: "checkSignedBitfieldOverflow", scope: !3, file: !3, line: 325, type: !572, isLocal: false, isDefinition: true, scopeLine: 325, flags: DIFlagPrototyped, isOptimized: true, unit: !13, retainedNodes: !575)
!572 = !DISubroutineType(types: !573)
!573 = !{!199, !27, !27, !25, !199, !574}
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!575 = !{!576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !587, !588, !589, !590}
!576 = !DILocalVariable(name: "value", arg: 1, scope: !571, file: !3, line: 325, type: !27)
!577 = !DILocalVariable(name: "incr", arg: 2, scope: !571, file: !3, line: 325, type: !27)
!578 = !DILocalVariable(name: "bits", arg: 3, scope: !571, file: !3, line: 325, type: !25)
!579 = !DILocalVariable(name: "owtype", arg: 4, scope: !571, file: !3, line: 325, type: !199)
!580 = !DILocalVariable(name: "limit", arg: 5, scope: !571, file: !3, line: 325, type: !574)
!581 = !DILocalVariable(name: "max", scope: !571, file: !3, line: 326, type: !27)
!582 = !DILocalVariable(name: "min", scope: !571, file: !3, line: 327, type: !27)
!583 = !DILocalVariable(name: "maxincr", scope: !571, file: !3, line: 332, type: !27)
!584 = !DILocalVariable(name: "minincr", scope: !571, file: !3, line: 333, type: !27)
!585 = !DILocalVariable(name: "mask", scope: !586, file: !3, line: 359, type: !25)
!586 = distinct !DILexicalBlock(scope: !571, file: !3, line: 358, column: 5)
!587 = !DILocalVariable(name: "msb", scope: !586, file: !3, line: 360, type: !25)
!588 = !DILocalVariable(name: "a", scope: !586, file: !3, line: 361, type: !25)
!589 = !DILocalVariable(name: "b", scope: !586, file: !3, line: 361, type: !25)
!590 = !DILocalVariable(name: "c", scope: !586, file: !3, line: 361, type: !25)
!591 = !DILocation(line: 325, column: 41, scope: !571)
!592 = !DILocation(line: 325, column: 56, scope: !571)
!593 = !DILocation(line: 325, column: 71, scope: !571)
!594 = !DILocation(line: 325, column: 81, scope: !571)
!595 = !DILocation(line: 325, column: 98, scope: !571)
!596 = !DILocation(line: 326, column: 25, scope: !571)
!597 = !DILocation(line: 326, column: 19, scope: !571)
!598 = !DILocation(line: 326, column: 65, scope: !571)
!599 = !DILocation(line: 326, column: 69, scope: !571)
!600 = !DILocation(line: 326, column: 13, scope: !571)
!601 = !DILocation(line: 327, column: 13, scope: !571)
!602 = !DILocation(line: 332, column: 26, scope: !571)
!603 = !DILocation(line: 332, column: 13, scope: !571)
!604 = !DILocation(line: 335, column: 15, scope: !605)
!605 = distinct !DILexicalBlock(scope: !571, file: !3, line: 335, column: 9)
!606 = !DILocation(line: 335, column: 21, scope: !605)
!607 = !DILocation(line: 335, column: 36, scope: !605)
!608 = !DILocation(line: 335, column: 44, scope: !605)
!609 = !DILocation(line: 335, column: 55, scope: !605)
!610 = !DILocation(line: 333, column: 26, scope: !571)
!611 = !DILocation(line: 335, column: 65, scope: !605)
!612 = !DILocation(line: 335, column: 78, scope: !605)
!613 = !DILocation(line: 335, column: 70, scope: !605)
!614 = !DILocation(line: 335, column: 90, scope: !605)
!615 = !DILocation(line: 335, column: 9, scope: !571)
!616 = !DILocation(line: 337, column: 13, scope: !617)
!617 = distinct !DILexicalBlock(scope: !618, file: !3, line: 337, column: 13)
!618 = distinct !DILexicalBlock(scope: !605, file: !3, line: 336, column: 5)
!619 = !DILocation(line: 337, column: 13, scope: !618)
!620 = !DILocation(line: 338, column: 24, scope: !621)
!621 = distinct !DILexicalBlock(scope: !622, file: !3, line: 338, column: 17)
!622 = distinct !DILexicalBlock(scope: !617, file: !3, line: 337, column: 20)
!623 = !DILocation(line: 338, column: 17, scope: !622)
!624 = !DILocation(line: 340, column: 31, scope: !625)
!625 = distinct !DILexicalBlock(scope: !621, file: !3, line: 340, column: 24)
!626 = !DILocation(line: 340, column: 24, scope: !621)
!627 = !DILocation(line: 341, column: 24, scope: !628)
!628 = distinct !DILexicalBlock(scope: !625, file: !3, line: 340, column: 50)
!629 = !DILocation(line: 342, column: 13, scope: !628)
!630 = !DILocation(line: 345, column: 22, scope: !631)
!631 = distinct !DILexicalBlock(scope: !605, file: !3, line: 345, column: 16)
!632 = !DILocation(line: 345, column: 28, scope: !631)
!633 = !DILocation(line: 345, column: 43, scope: !631)
!634 = !DILocation(line: 345, column: 51, scope: !631)
!635 = !DILocation(line: 345, column: 62, scope: !631)
!636 = !DILocation(line: 345, column: 76, scope: !631)
!637 = !DILocation(line: 345, column: 96, scope: !631)
!638 = !DILocation(line: 345, column: 16, scope: !605)
!639 = !DILocation(line: 346, column: 13, scope: !640)
!640 = distinct !DILexicalBlock(scope: !641, file: !3, line: 346, column: 13)
!641 = distinct !DILexicalBlock(scope: !631, file: !3, line: 345, column: 108)
!642 = !DILocation(line: 346, column: 13, scope: !641)
!643 = !DILocation(line: 347, column: 24, scope: !644)
!644 = distinct !DILexicalBlock(scope: !645, file: !3, line: 347, column: 17)
!645 = distinct !DILexicalBlock(scope: !640, file: !3, line: 346, column: 20)
!646 = !DILocation(line: 347, column: 17, scope: !645)
!647 = !DILocation(line: 349, column: 31, scope: !648)
!648 = distinct !DILexicalBlock(scope: !644, file: !3, line: 349, column: 24)
!649 = !DILocation(line: 349, column: 24, scope: !644)
!650 = !DILocation(line: 350, column: 24, scope: !651)
!651 = distinct !DILexicalBlock(scope: !648, file: !3, line: 349, column: 50)
!652 = !DILocation(line: 351, column: 13, scope: !651)
!653 = !DILocation(line: 359, column: 40, scope: !586)
!654 = !DILocation(line: 359, column: 18, scope: !586)
!655 = !DILocation(line: 360, column: 44, scope: !586)
!656 = !DILocation(line: 360, column: 36, scope: !586)
!657 = !DILocation(line: 360, column: 18, scope: !586)
!658 = !DILocation(line: 361, column: 18, scope: !586)
!659 = !DILocation(line: 361, column: 29, scope: !586)
!660 = !DILocation(line: 362, column: 14, scope: !586)
!661 = !DILocation(line: 361, column: 39, scope: !586)
!662 = !DILocation(line: 367, column: 15, scope: !663)
!663 = distinct !DILexicalBlock(scope: !586, file: !3, line: 367, column: 13)
!664 = !DILocation(line: 367, column: 13, scope: !586)
!665 = !DILocation(line: 368, column: 15, scope: !666)
!666 = distinct !DILexicalBlock(scope: !663, file: !3, line: 367, column: 22)
!667 = !DILocation(line: 370, column: 18, scope: !668)
!668 = distinct !DILexicalBlock(scope: !663, file: !3, line: 369, column: 16)
!669 = !DILocation(line: 370, column: 15, scope: !668)
!670 = !DILocation(line: 372, column: 16, scope: !586)
!671 = !DILocation(line: 374, column: 5, scope: !571)
!672 = !DILocation(line: 0, scope: !571)
!673 = !DILocation(line: 0, scope: !618)
!674 = !DILocation(line: 375, column: 1, scope: !571)
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
!687 = !DILocation(line: 382, column: 10, scope: !688)
!688 = distinct !DILexicalBlock(scope: !675, file: !3, line: 382, column: 5)
!689 = !DILocation(line: 382, column: 19, scope: !690)
!690 = distinct !DILexicalBlock(scope: !688, file: !3, line: 382, column: 5)
!691 = !DILocation(line: 382, column: 5, scope: !688)
!692 = !DILocation(line: 383, column: 16, scope: !693)
!693 = distinct !DILexicalBlock(scope: !690, file: !3, line: 382, column: 33)
!694 = !DILocation(line: 380, column: 25, scope: !675)
!695 = !DILocation(line: 380, column: 22, scope: !675)
!696 = !DILocation(line: 384, column: 14, scope: !697)
!697 = distinct !DILexicalBlock(scope: !693, file: !3, line: 384, column: 9)
!698 = !DILocation(line: 384, column: 9, scope: !697)
!699 = !DILocation(line: 385, column: 26, scope: !700)
!700 = distinct !DILexicalBlock(scope: !697, file: !3, line: 384, column: 9)
!701 = !DILocation(line: 385, column: 13, scope: !700)
!702 = !DILocation(line: 384, column: 9, scope: !700)
!703 = !DILocation(line: 385, column: 32, scope: !700)
!704 = !DILocation(line: 386, column: 9, scope: !693)
!705 = !DILocation(line: 382, column: 29, scope: !690)
!706 = !DILocation(line: 382, column: 5, scope: !690)
!707 = distinct !{!707, !691, !708}
!708 = !DILocation(line: 387, column: 5, scope: !688)
!709 = !DILocation(line: 388, column: 5, scope: !675)
!710 = !DILocation(line: 389, column: 1, scope: !675)
!711 = distinct !DISubprogram(name: "getBitOffsetFromArgument", scope: !3, file: !3, line: 411, type: !712, isLocal: false, isDefinition: true, scopeLine: 411, flags: DIFlagPrototyped, isOptimized: true, unit: !13, retainedNodes: !951)
!712 = !DISubroutineType(types: !713)
!713 = !{!199, !714, !824, !950, !199, !199}
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "client", file: !716, line: 780, baseType: !717)
!716 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/server.h", directory: "/root/.unikraft/apps/redis/build")
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "client", file: !716, line: 723, size: 135360, elements: !718)
!718 = !{!719, !720, !721, !823, !833, !836, !837, !838, !839, !840, !842, !866, !867, !868, !869, !870, !871, !872, !873, !876, !877, !878, !879, !880, !881, !882, !883, !888, !889, !890, !891, !892, !893, !894, !895, !899, !900, !904, !905, !921, !922, !939, !940, !941, !942, !943, !944, !945, !946}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !717, file: !716, line: 724, baseType: !25, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !717, file: !716, line: 725, baseType: !199, size: 32, offset: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !717, file: !716, line: 726, baseType: !722, size: 64, offset: 128)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisDb", file: !716, line: 656, baseType: !724)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisDb", file: !716, line: 647, size: 512, elements: !725)
!725 = !{!726, !787, !788, !789, !790, !791, !792, !794}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !724, file: !716, line: 648, baseType: !727, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "dict", file: !729, line: 82, baseType: !730)
!729 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/dict.h", directory: "/root/.unikraft/apps/redis/build")
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dict", file: !729, line: 76, size: 768, elements: !731)
!731 = !{!732, !757, !758, !785, !786}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !730, file: !729, line: 77, baseType: !733, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictType", file: !729, line: 65, baseType: !735)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictType", file: !729, line: 58, size: 384, elements: !736)
!736 = !{!737, !743, !747, !748, !752, !756}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "hashFunction", scope: !735, file: !729, line: 59, baseType: !738, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DISubroutineType(types: !740)
!740 = !{!25, !741}
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "keyDup", scope: !735, file: !729, line: 60, baseType: !744, size: 64, offset: 64)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DISubroutineType(types: !746)
!746 = !{!11, !11, !741}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "valDup", scope: !735, file: !729, line: 61, baseType: !744, size: 64, offset: 128)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "keyCompare", scope: !735, file: !729, line: 62, baseType: !749, size: 64, offset: 192)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DISubroutineType(types: !751)
!751 = !{!199, !11, !741, !741}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "keyDestructor", scope: !735, file: !729, line: 63, baseType: !753, size: 64, offset: 256)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DISubroutineType(types: !755)
!755 = !{null, !11, !11}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "valDestructor", scope: !735, file: !729, line: 64, baseType: !753, size: 64, offset: 320)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "privdata", scope: !730, file: !729, line: 78, baseType: !11, size: 64, offset: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "ht", scope: !730, file: !729, line: 79, baseType: !759, size: 512, offset: 128)
!759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !760, size: 512, elements: !783)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictht", file: !729, line: 74, baseType: !761)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictht", file: !729, line: 69, size: 256, elements: !762)
!762 = !{!763, !780, !781, !782}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !761, file: !729, line: 70, baseType: !764, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictEntry", file: !729, line: 56, baseType: !767)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictEntry", file: !729, line: 47, size: 192, elements: !768)
!768 = !{!769, !770, !778}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !767, file: !729, line: 48, baseType: !11, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !767, file: !729, line: 54, baseType: !771, size: 64, offset: 64)
!771 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !767, file: !729, line: 49, size: 64, elements: !772)
!772 = !{!773, !774, !775, !776}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !771, file: !729, line: 50, baseType: !11, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !771, file: !729, line: 51, baseType: !25, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "s64", scope: !771, file: !729, line: 52, baseType: !27, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !771, file: !729, line: 53, baseType: !777, size: 64)
!777 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !767, file: !729, line: 55, baseType: !779, size: 64, offset: 128)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !761, file: !729, line: 71, baseType: !10, size: 64, offset: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "sizemask", scope: !761, file: !729, line: 72, baseType: !10, size: 64, offset: 128)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !761, file: !729, line: 73, baseType: !10, size: 64, offset: 192)
!783 = !{!784}
!784 = !DISubrange(count: 2)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "rehashidx", scope: !730, file: !729, line: 80, baseType: !12, size: 64, offset: 640)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "iterators", scope: !730, file: !729, line: 81, baseType: !10, size: 64, offset: 704)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !724, file: !716, line: 649, baseType: !727, size: 64, offset: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_keys", scope: !724, file: !716, line: 650, baseType: !727, size: 64, offset: 128)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "ready_keys", scope: !724, file: !716, line: 651, baseType: !727, size: 64, offset: 192)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !724, file: !716, line: 652, baseType: !727, size: 64, offset: 256)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !724, file: !716, line: 653, baseType: !199, size: 32, offset: 320)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "avg_ttl", scope: !724, file: !716, line: 654, baseType: !793, size: 64, offset: 384)
!793 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "defrag_later", scope: !724, file: !716, line: 655, baseType: !795, size: 64, offset: 448)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !797, line: 54, baseType: !798)
!797 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/adlist.h", directory: "/root/.unikraft/apps/redis/build")
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list", file: !797, line: 47, size: 384, elements: !799)
!799 = !{!800, !809, !810, !814, !818, !822}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !798, file: !797, line: 48, baseType: !801, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_typedef, name: "listNode", file: !797, line: 40, baseType: !803)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listNode", file: !797, line: 36, size: 192, elements: !804)
!804 = !{!805, !807, !808}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !803, file: !797, line: 37, baseType: !806, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !803, file: !797, line: 38, baseType: !806, size: 64, offset: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !803, file: !797, line: 39, baseType: !11, size: 64, offset: 128)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !798, file: !797, line: 49, baseType: !801, size: 64, offset: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !798, file: !797, line: 50, baseType: !811, size: 64, offset: 128)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DISubroutineType(types: !813)
!813 = !{!11, !11}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !798, file: !797, line: 51, baseType: !815, size: 64, offset: 192)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DISubroutineType(types: !817)
!817 = !{null, !11}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !798, file: !797, line: 52, baseType: !819, size: 64, offset: 256)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DISubroutineType(types: !821)
!821 = !{!199, !11, !11}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !798, file: !797, line: 53, baseType: !10, size: 64, offset: 320)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !717, file: !716, line: 727, baseType: !824, size: 64, offset: 192)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_typedef, name: "robj", file: !716, line: 622, baseType: !826)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisObject", file: !716, line: 614, size: 128, elements: !827)
!827 = !{!828, !829, !830, !831, !832}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !826, file: !716, line: 615, baseType: !21, size: 4, flags: DIFlagBitField, extraData: i64 0)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !826, file: !716, line: 616, baseType: !21, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !826, file: !716, line: 617, baseType: !21, size: 24, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !826, file: !716, line: 620, baseType: !199, size: 32, offset: 32)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !826, file: !716, line: 621, baseType: !11, size: 64, offset: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf", scope: !717, file: !716, line: 728, baseType: !834, size: 64, offset: 256)
!834 = !DIDerivedType(tag: DW_TAG_typedef, name: "sds", file: !35, line: 43, baseType: !835)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "qb_pos", scope: !717, file: !716, line: 729, baseType: !6, size: 64, offset: 320)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "pending_querybuf", scope: !717, file: !716, line: 730, baseType: !834, size: 64, offset: 384)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf_peak", scope: !717, file: !716, line: 734, baseType: !6, size: 64, offset: 448)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !717, file: !716, line: 735, baseType: !199, size: 32, offset: 512)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !717, file: !716, line: 736, baseType: !841, size: 64, offset: 576)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !717, file: !716, line: 737, baseType: !843, size: 64, offset: 640)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommand", file: !716, line: 1307, size: 640, elements: !845)
!845 = !{!846, !847, !852, !853, !854, !855, !861, !862, !863, !864, !865}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !844, file: !716, line: 1308, baseType: !835, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "proc", scope: !844, file: !716, line: 1309, baseType: !848, size: 64, offset: 64)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandProc", file: !716, line: 1305, baseType: !850)
!850 = !DISubroutineType(types: !851)
!851 = !{null, !714}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "arity", scope: !844, file: !716, line: 1310, baseType: !199, size: 32, offset: 128)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "sflags", scope: !844, file: !716, line: 1311, baseType: !835, size: 64, offset: 192)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !844, file: !716, line: 1312, baseType: !199, size: 32, offset: 256)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "getkeys_proc", scope: !844, file: !716, line: 1315, baseType: !856, size: 64, offset: 320)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisGetKeysProc", file: !716, line: 1306, baseType: !858)
!858 = !DISubroutineType(types: !859)
!859 = !{!860, !843, !841, !199, !860}
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "firstkey", scope: !844, file: !716, line: 1317, baseType: !199, size: 32, offset: 384)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "lastkey", scope: !844, file: !716, line: 1318, baseType: !199, size: 32, offset: 416)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !844, file: !716, line: 1319, baseType: !199, size: 32, offset: 448)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "microseconds", scope: !844, file: !716, line: 1320, baseType: !793, size: 64, offset: 512)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "calls", scope: !844, file: !716, line: 1320, baseType: !793, size: 64, offset: 576)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "lastcmd", scope: !717, file: !716, line: 737, baseType: !843, size: 64, offset: 704)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "reqtype", scope: !717, file: !716, line: 738, baseType: !199, size: 32, offset: 768)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "multibulklen", scope: !717, file: !716, line: 739, baseType: !199, size: 32, offset: 800)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "bulklen", scope: !717, file: !716, line: 740, baseType: !12, size: 64, offset: 832)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !717, file: !716, line: 741, baseType: !795, size: 64, offset: 896)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "reply_bytes", scope: !717, file: !716, line: 742, baseType: !29, size: 64, offset: 960)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "sentlen", scope: !717, file: !716, line: 743, baseType: !6, size: 64, offset: 1024)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !717, file: !716, line: 745, baseType: !874, size: 64, offset: 1088)
!874 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !875, line: 34, baseType: !12)
!875 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!876 = !DIDerivedType(tag: DW_TAG_member, name: "lastinteraction", scope: !717, file: !716, line: 746, baseType: !874, size: 64, offset: 1152)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "obuf_soft_limit_reached_time", scope: !717, file: !716, line: 747, baseType: !874, size: 64, offset: 1216)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !717, file: !716, line: 748, baseType: !199, size: 32, offset: 1280)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !717, file: !716, line: 749, baseType: !199, size: 32, offset: 1312)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "replstate", scope: !717, file: !716, line: 750, baseType: !199, size: 32, offset: 1344)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "repl_put_online_on_ack", scope: !717, file: !716, line: 751, baseType: !199, size: 32, offset: 1376)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "repldbfd", scope: !717, file: !716, line: 752, baseType: !199, size: 32, offset: 1408)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "repldboff", scope: !717, file: !716, line: 753, baseType: !884, size: 64, offset: 1472)
!884 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !885, line: 173, baseType: !886)
!885 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!886 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !9, line: 100, baseType: !887)
!887 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !9, line: 44, baseType: !12)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "repldbsize", scope: !717, file: !716, line: 754, baseType: !884, size: 64, offset: 1536)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "replpreamble", scope: !717, file: !716, line: 755, baseType: !834, size: 64, offset: 1600)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "read_reploff", scope: !717, file: !716, line: 756, baseType: !793, size: 64, offset: 1664)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "reploff", scope: !717, file: !716, line: 757, baseType: !793, size: 64, offset: 1728)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_off", scope: !717, file: !716, line: 758, baseType: !793, size: 64, offset: 1792)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_time", scope: !717, file: !716, line: 759, baseType: !793, size: 64, offset: 1856)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "psync_initial_offset", scope: !717, file: !716, line: 760, baseType: !793, size: 64, offset: 1920)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "replid", scope: !717, file: !716, line: 763, baseType: !896, size: 328, offset: 1984)
!896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 328, elements: !897)
!897 = !{!898}
!898 = !DISubrange(count: 41)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "slave_listening_port", scope: !717, file: !716, line: 764, baseType: !199, size: 32, offset: 2336)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "slave_ip", scope: !717, file: !716, line: 765, baseType: !901, size: 368, offset: 2368)
!901 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 368, elements: !902)
!902 = !{!903}
!903 = !DISubrange(count: 46)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "slave_capa", scope: !717, file: !716, line: 766, baseType: !199, size: 32, offset: 2752)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "mstate", scope: !717, file: !716, line: 767, baseType: !906, size: 256, offset: 2816)
!906 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiState", file: !716, line: 673, baseType: !907)
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiState", file: !716, line: 665, size: 256, elements: !908)
!908 = !{!909, !917, !918, !919, !920}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "commands", scope: !907, file: !716, line: 666, baseType: !910, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiCmd", file: !716, line: 663, baseType: !912)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiCmd", file: !716, line: 659, size: 192, elements: !913)
!913 = !{!914, !915, !916}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !912, file: !716, line: 660, baseType: !841, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !912, file: !716, line: 661, baseType: !199, size: 32, offset: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !912, file: !716, line: 662, baseType: !843, size: 64, offset: 128)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !907, file: !716, line: 667, baseType: !199, size: 32, offset: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !907, file: !716, line: 668, baseType: !199, size: 32, offset: 96)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas", scope: !907, file: !716, line: 671, baseType: !199, size: 32, offset: 128)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas_timeout", scope: !907, file: !716, line: 672, baseType: !874, size: 64, offset: 192)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "btype", scope: !717, file: !716, line: 768, baseType: !199, size: 32, offset: 3072)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "bpop", scope: !717, file: !716, line: 769, baseType: !923, size: 704, offset: 3136)
!923 = !DIDerivedType(tag: DW_TAG_typedef, name: "blockingState", file: !716, line: 703, baseType: !924)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockingState", file: !716, line: 677, size: 704, elements: !925)
!925 = !{!926, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !924, file: !716, line: 679, baseType: !927, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_typedef, name: "mstime_t", file: !716, line: 52, baseType: !793)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !924, file: !716, line: 683, baseType: !727, size: 64, offset: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !924, file: !716, line: 685, baseType: !824, size: 64, offset: 128)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "xread_count", scope: !924, file: !716, line: 689, baseType: !6, size: 64, offset: 192)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group", scope: !924, file: !716, line: 690, baseType: !824, size: 64, offset: 256)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "xread_consumer", scope: !924, file: !716, line: 691, baseType: !824, size: 64, offset: 320)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_time", scope: !924, file: !716, line: 692, baseType: !927, size: 64, offset: 384)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_ttl", scope: !924, file: !716, line: 692, baseType: !927, size: 64, offset: 448)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group_noack", scope: !924, file: !716, line: 693, baseType: !199, size: 32, offset: 512)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "numreplicas", scope: !924, file: !716, line: 696, baseType: !199, size: 32, offset: 544)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "reploffset", scope: !924, file: !716, line: 697, baseType: !793, size: 64, offset: 576)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "module_blocked_handle", scope: !924, file: !716, line: 700, baseType: !11, size: 64, offset: 640)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "woff", scope: !717, file: !716, line: 770, baseType: !793, size: 64, offset: 3840)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !717, file: !716, line: 771, baseType: !795, size: 64, offset: 3904)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_channels", scope: !717, file: !716, line: 772, baseType: !727, size: 64, offset: 3968)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_patterns", scope: !717, file: !716, line: 773, baseType: !795, size: 64, offset: 4032)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "peerid", scope: !717, file: !716, line: 774, baseType: !834, size: 64, offset: 4096)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "client_list_node", scope: !717, file: !716, line: 775, baseType: !801, size: 64, offset: 4160)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "bufpos", scope: !717, file: !716, line: 778, baseType: !199, size: 32, offset: 4224)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !717, file: !716, line: 779, baseType: !947, size: 131072, offset: 4256)
!947 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 131072, elements: !948)
!948 = !{!949}
!949 = !DISubrange(count: 16384)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!951 = !{!952, !953, !954, !955, !956, !957, !958, !959, !960, !961}
!952 = !DILocalVariable(name: "c", arg: 1, scope: !711, file: !3, line: 411, type: !714)
!953 = !DILocalVariable(name: "o", arg: 2, scope: !711, file: !3, line: 411, type: !824)
!954 = !DILocalVariable(name: "offset", arg: 3, scope: !711, file: !3, line: 411, type: !950)
!955 = !DILocalVariable(name: "hash", arg: 4, scope: !711, file: !3, line: 411, type: !199)
!956 = !DILocalVariable(name: "bits", arg: 5, scope: !711, file: !3, line: 411, type: !199)
!957 = !DILocalVariable(name: "loffset", scope: !711, file: !3, line: 412, type: !793)
!958 = !DILocalVariable(name: "err", scope: !711, file: !3, line: 413, type: !835)
!959 = !DILocalVariable(name: "p", scope: !711, file: !3, line: 414, type: !835)
!960 = !DILocalVariable(name: "plen", scope: !711, file: !3, line: 415, type: !6)
!961 = !DILocalVariable(name: "usehash", scope: !711, file: !3, line: 416, type: !199)
!962 = !DILocation(line: 411, column: 38, scope: !711)
!963 = !DILocation(line: 411, column: 47, scope: !711)
!964 = !DILocation(line: 411, column: 58, scope: !711)
!965 = !DILocation(line: 411, column: 70, scope: !711)
!966 = !DILocation(line: 411, column: 80, scope: !711)
!967 = !DILocation(line: 412, column: 5, scope: !711)
!968 = !DILocation(line: 414, column: 18, scope: !711)
!969 = !{!970, !971, i64 8}
!970 = !{!"redisObject", !123, i64 0, !123, i64 0, !123, i64 1, !123, i64 4, !971, i64 8}
!971 = !{!"any pointer", !104, i64 0}
!972 = !DILocation(line: 414, column: 11, scope: !711)
!973 = !DILocalVariable(name: "s", arg: 1, scope: !974, file: !35, line: 87, type: !979)
!974 = distinct !DISubprogram(name: "sdslen", scope: !35, file: !35, line: 87, type: !975, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !13, retainedNodes: !980)
!975 = !DISubroutineType(types: !976)
!976 = !{!977, !979}
!977 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !978, line: 58, baseType: !10)
!978 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!979 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !834)
!980 = !{!973, !981}
!981 = !DILocalVariable(name: "flags", scope: !974, file: !35, line: 88, type: !23)
!982 = !DILocation(line: 87, column: 39, scope: !974, inlinedAt: !983)
!983 = distinct !DILocation(line: 415, column: 19, scope: !711)
!984 = !DILocation(line: 88, column: 27, scope: !974, inlinedAt: !983)
!985 = !DILocation(line: 88, column: 19, scope: !974, inlinedAt: !983)
!986 = !DILocation(line: 89, column: 5, scope: !974, inlinedAt: !983)
!987 = !DILocation(line: 91, column: 20, scope: !988, inlinedAt: !983)
!988 = distinct !DILexicalBlock(scope: !974, file: !35, line: 89, column: 33)
!989 = !DILocation(line: 91, column: 13, scope: !988, inlinedAt: !983)
!990 = !DILocation(line: 93, column: 20, scope: !988, inlinedAt: !983)
!991 = !DILocation(line: 93, column: 34, scope: !988, inlinedAt: !983)
!992 = !DILocation(line: 93, column: 13, scope: !988, inlinedAt: !983)
!993 = !DILocation(line: 95, column: 20, scope: !988, inlinedAt: !983)
!994 = !DILocation(line: 95, column: 35, scope: !988, inlinedAt: !983)
!995 = !{!996, !996, i64 0}
!996 = !{!"short", !104, i64 0}
!997 = !DILocation(line: 95, column: 13, scope: !988, inlinedAt: !983)
!998 = !DILocation(line: 97, column: 20, scope: !988, inlinedAt: !983)
!999 = !DILocation(line: 97, column: 35, scope: !988, inlinedAt: !983)
!1000 = !DILocation(line: 97, column: 13, scope: !988, inlinedAt: !983)
!1001 = !DILocation(line: 99, column: 20, scope: !988, inlinedAt: !983)
!1002 = !DILocation(line: 99, column: 35, scope: !988, inlinedAt: !983)
!1003 = !DILocation(line: 99, column: 13, scope: !988, inlinedAt: !983)
!1004 = !DILocation(line: 0, scope: !988, inlinedAt: !983)
!1005 = !DILocation(line: 0, scope: !711)
!1006 = !DILocation(line: 102, column: 1, scope: !974, inlinedAt: !983)
!1007 = !DILocation(line: 415, column: 12, scope: !711)
!1008 = !DILocation(line: 416, column: 9, scope: !711)
!1009 = !DILocation(line: 419, column: 9, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !711, file: !3, line: 419, column: 9)
!1011 = !DILocation(line: 419, column: 14, scope: !1010)
!1012 = !DILocation(line: 419, column: 24, scope: !1010)
!1013 = !DILocation(line: 419, column: 21, scope: !1010)
!1014 = !DILocation(line: 419, column: 37, scope: !1010)
!1015 = !DILocation(line: 419, column: 42, scope: !1010)
!1016 = !DILocation(line: 421, column: 20, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !711, file: !3, line: 421, column: 9)
!1018 = !DILocation(line: 421, column: 33, scope: !1017)
!1019 = !DILocation(line: 412, column: 15, scope: !711)
!1020 = !DILocation(line: 421, column: 9, scope: !1017)
!1021 = !DILocation(line: 421, column: 52, scope: !1017)
!1022 = !DILocation(line: 421, column: 9, scope: !711)
!1023 = !DILocation(line: 422, column: 9, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !1017, file: !3, line: 421, column: 58)
!1025 = !DILocation(line: 423, column: 9, scope: !1024)
!1026 = !DILocation(line: 427, column: 9, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !711, file: !3, line: 427, column: 9)
!1028 = !DILocation(line: 427, column: 9, scope: !711)
!1029 = !DILocation(line: 427, column: 29, scope: !1027)
!1030 = !DILocation(line: 427, column: 26, scope: !1027)
!1031 = !{!1032, !1032, i64 0}
!1032 = !{!"long long", !104, i64 0}
!1033 = !DILocation(line: 427, column: 18, scope: !1027)
!1034 = !DILocation(line: 430, column: 10, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !711, file: !3, line: 430, column: 9)
!1036 = !DILocation(line: 430, column: 18, scope: !1035)
!1037 = !DILocation(line: 430, column: 23, scope: !1035)
!1038 = !DILocation(line: 430, column: 61, scope: !1035)
!1039 = !DILocation(line: 430, column: 9, scope: !711)
!1040 = !DILocation(line: 432, column: 9, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1035, file: !3, line: 431, column: 5)
!1042 = !DILocation(line: 433, column: 9, scope: !1041)
!1043 = !DILocation(line: 436, column: 13, scope: !711)
!1044 = !DILocation(line: 437, column: 5, scope: !711)
!1045 = !DILocation(line: 0, scope: !1024)
!1046 = !DILocation(line: 438, column: 1, scope: !711)
!1047 = distinct !DISubprogram(name: "getBitfieldTypeFromArgument", scope: !3, file: !3, line: 447, type: !1048, isLocal: false, isDefinition: true, scopeLine: 447, flags: DIFlagPrototyped, isOptimized: true, unit: !13, retainedNodes: !1050)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!199, !714, !824, !860, !860}
!1050 = !{!1051, !1052, !1053, !1054, !1055, !1056, !1057}
!1051 = !DILocalVariable(name: "c", arg: 1, scope: !1047, file: !3, line: 447, type: !714)
!1052 = !DILocalVariable(name: "o", arg: 2, scope: !1047, file: !3, line: 447, type: !824)
!1053 = !DILocalVariable(name: "sign", arg: 3, scope: !1047, file: !3, line: 447, type: !860)
!1054 = !DILocalVariable(name: "bits", arg: 4, scope: !1047, file: !3, line: 447, type: !860)
!1055 = !DILocalVariable(name: "p", scope: !1047, file: !3, line: 448, type: !835)
!1056 = !DILocalVariable(name: "err", scope: !1047, file: !3, line: 449, type: !835)
!1057 = !DILocalVariable(name: "llbits", scope: !1047, file: !3, line: 450, type: !793)
!1058 = !DILocation(line: 447, column: 41, scope: !1047)
!1059 = !DILocation(line: 447, column: 50, scope: !1047)
!1060 = !DILocation(line: 447, column: 58, scope: !1047)
!1061 = !DILocation(line: 447, column: 69, scope: !1047)
!1062 = !DILocation(line: 448, column: 18, scope: !1047)
!1063 = !DILocation(line: 448, column: 11, scope: !1047)
!1064 = !DILocation(line: 450, column: 5, scope: !1047)
!1065 = !DILocation(line: 452, column: 9, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1047, file: !3, line: 452, column: 9)
!1067 = !DILocation(line: 452, column: 14, scope: !1066)
!1068 = !DILocation(line: 452, column: 9, scope: !1047)
!1069 = !DILocation(line: 454, column: 21, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1066, file: !3, line: 454, column: 16)
!1071 = !DILocation(line: 454, column: 16, scope: !1066)
!1072 = !DILocation(line: 457, column: 9, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 456, column: 12)
!1074 = !DILocation(line: 458, column: 9, scope: !1073)
!1075 = !DILocation(line: 0, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1066, file: !3, line: 452, column: 22)
!1077 = !DILocation(line: 461, column: 21, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1047, file: !3, line: 461, column: 9)
!1079 = !DILocation(line: 461, column: 24, scope: !1078)
!1080 = !DILocation(line: 450, column: 15, scope: !1047)
!1081 = !DILocation(line: 461, column: 10, scope: !1078)
!1082 = !DILocation(line: 461, column: 46, scope: !1078)
!1083 = !DILocation(line: 462, column: 9, scope: !1078)
!1084 = !DILocation(line: 462, column: 16, scope: !1078)
!1085 = !DILocation(line: 461, column: 51, scope: !1078)
!1086 = !DILocation(line: 463, column: 10, scope: !1078)
!1087 = !DILocation(line: 463, column: 16, scope: !1078)
!1088 = !DILocation(line: 463, column: 31, scope: !1078)
!1089 = !DILocation(line: 463, column: 21, scope: !1078)
!1090 = !DILocation(line: 464, column: 16, scope: !1078)
!1091 = !DILocation(line: 464, column: 31, scope: !1078)
!1092 = !DILocation(line: 464, column: 21, scope: !1078)
!1093 = !DILocation(line: 466, column: 9, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 465, column: 5)
!1095 = !DILocation(line: 467, column: 9, scope: !1094)
!1096 = !DILocation(line: 469, column: 13, scope: !1047)
!1097 = !DILocation(line: 469, column: 11, scope: !1047)
!1098 = !DILocation(line: 470, column: 5, scope: !1047)
!1099 = !DILocation(line: 0, scope: !1073)
!1100 = !DILocation(line: 471, column: 1, scope: !1047)
!1101 = distinct !DISubprogram(name: "lookupStringForBitCommand", scope: !3, file: !3, line: 478, type: !1102, isLocal: false, isDefinition: true, scopeLine: 478, flags: DIFlagPrototyped, isOptimized: true, unit: !13, retainedNodes: !1104)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{!824, !714, !6}
!1104 = !{!1105, !1106, !1107, !1108}
!1105 = !DILocalVariable(name: "c", arg: 1, scope: !1101, file: !3, line: 478, type: !714)
!1106 = !DILocalVariable(name: "maxbit", arg: 2, scope: !1101, file: !3, line: 478, type: !6)
!1107 = !DILocalVariable(name: "byte", scope: !1101, file: !3, line: 479, type: !6)
!1108 = !DILocalVariable(name: "o", scope: !1101, file: !3, line: 480, type: !824)
!1109 = !DILocation(line: 478, column: 41, scope: !1101)
!1110 = !DILocation(line: 478, column: 51, scope: !1101)
!1111 = !DILocation(line: 479, column: 26, scope: !1101)
!1112 = !DILocation(line: 479, column: 12, scope: !1101)
!1113 = !DILocation(line: 480, column: 33, scope: !1101)
!1114 = !{!1115, !971, i64 16}
!1115 = !{!"client", !250, i64 0, !123, i64 8, !971, i64 16, !971, i64 24, !971, i64 32, !250, i64 40, !971, i64 48, !250, i64 56, !123, i64 64, !971, i64 72, !971, i64 80, !971, i64 88, !123, i64 96, !123, i64 100, !250, i64 104, !971, i64 112, !1032, i64 120, !250, i64 128, !250, i64 136, !250, i64 144, !250, i64 152, !123, i64 160, !123, i64 164, !123, i64 168, !123, i64 172, !123, i64 176, !250, i64 184, !250, i64 192, !971, i64 200, !1032, i64 208, !1032, i64 216, !1032, i64 224, !1032, i64 232, !1032, i64 240, !104, i64 248, !123, i64 292, !104, i64 296, !123, i64 344, !1116, i64 352, !123, i64 384, !1117, i64 392, !1032, i64 480, !971, i64 488, !971, i64 496, !971, i64 504, !971, i64 512, !971, i64 520, !123, i64 528, !104, i64 532}
!1116 = !{!"multiState", !971, i64 0, !123, i64 8, !123, i64 12, !123, i64 16, !250, i64 24}
!1117 = !{!"blockingState", !1032, i64 0, !971, i64 8, !971, i64 16, !250, i64 24, !971, i64 32, !971, i64 40, !1032, i64 48, !1032, i64 56, !123, i64 64, !123, i64 68, !1032, i64 72, !971, i64 80}
!1118 = !DILocation(line: 480, column: 39, scope: !1101)
!1119 = !{!1115, !971, i64 72}
!1120 = !DILocation(line: 480, column: 36, scope: !1101)
!1121 = !{!971, !971, i64 0}
!1122 = !DILocation(line: 480, column: 15, scope: !1101)
!1123 = !DILocation(line: 480, column: 11, scope: !1101)
!1124 = !DILocation(line: 482, column: 11, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 482, column: 9)
!1126 = !DILocation(line: 482, column: 9, scope: !1101)
!1127 = !DILocation(line: 483, column: 57, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1125, file: !3, line: 482, column: 20)
!1129 = !DILocation(line: 483, column: 37, scope: !1128)
!1130 = !DILocation(line: 483, column: 13, scope: !1128)
!1131 = !DILocation(line: 484, column: 18, scope: !1128)
!1132 = !DILocation(line: 484, column: 24, scope: !1128)
!1133 = !DILocation(line: 484, column: 21, scope: !1128)
!1134 = !DILocation(line: 484, column: 9, scope: !1128)
!1135 = !DILocation(line: 485, column: 5, scope: !1128)
!1136 = !DILocation(line: 486, column: 13, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1138, file: !3, line: 486, column: 13)
!1138 = distinct !DILexicalBlock(scope: !1125, file: !3, line: 485, column: 12)
!1139 = !DILocation(line: 486, column: 13, scope: !1138)
!1140 = !DILocation(line: 487, column: 37, scope: !1138)
!1141 = !DILocation(line: 487, column: 43, scope: !1138)
!1142 = !DILocation(line: 487, column: 40, scope: !1138)
!1143 = !DILocation(line: 487, column: 13, scope: !1138)
!1144 = !DILocation(line: 488, column: 33, scope: !1138)
!1145 = !DILocation(line: 488, column: 41, scope: !1138)
!1146 = !DILocation(line: 488, column: 18, scope: !1138)
!1147 = !DILocation(line: 488, column: 16, scope: !1138)
!1148 = !DILocation(line: 0, scope: !1138)
!1149 = !DILocation(line: 490, column: 5, scope: !1101)
!1150 = !DILocation(line: 0, scope: !1137)
!1151 = !DILocation(line: 491, column: 1, scope: !1101)
!1152 = distinct !DISubprogram(name: "getObjectReadOnlyString", scope: !3, file: !3, line: 506, type: !1153, isLocal: false, isDefinition: true, scopeLine: 506, flags: DIFlagPrototyped, isOptimized: true, unit: !13, retainedNodes: !1156)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{!22, !824, !1155, !835}
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!1156 = !{!1157, !1158, !1159, !1160}
!1157 = !DILocalVariable(name: "o", arg: 1, scope: !1152, file: !3, line: 506, type: !824)
!1158 = !DILocalVariable(name: "len", arg: 2, scope: !1152, file: !3, line: 506, type: !1155)
!1159 = !DILocalVariable(name: "llbuf", arg: 3, scope: !1152, file: !3, line: 506, type: !835)
!1160 = !DILocalVariable(name: "p", scope: !1152, file: !3, line: 508, type: !22)
!1161 = !DILocation(line: 506, column: 46, scope: !1152)
!1162 = !DILocation(line: 506, column: 55, scope: !1152)
!1163 = !DILocation(line: 506, column: 66, scope: !1152)
!1164 = !DILocation(line: 507, column: 5, scope: !1152)
!1165 = !DILocation(line: 508, column: 20, scope: !1152)
!1166 = !DILocation(line: 512, column: 11, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1152, file: !3, line: 512, column: 9)
!1168 = !DILocation(line: 512, column: 17, scope: !1167)
!1169 = !DILocation(line: 512, column: 26, scope: !1167)
!1170 = !DILocation(line: 512, column: 9, scope: !1152)
!1171 = !DILocation(line: 514, column: 13, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1173, file: !3, line: 514, column: 13)
!1173 = distinct !DILexicalBlock(scope: !1167, file: !3, line: 512, column: 47)
!1174 = !DILocation(line: 514, column: 13, scope: !1173)
!1175 = !DILocation(line: 514, column: 64, scope: !1172)
!1176 = !DILocation(line: 514, column: 25, scope: !1172)
!1177 = !DILocation(line: 514, column: 23, scope: !1172)
!1178 = !DILocation(line: 514, column: 18, scope: !1172)
!1179 = !DILocation(line: 515, column: 16, scope: !1167)
!1180 = !DILocation(line: 516, column: 33, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1182, file: !3, line: 515, column: 19)
!1182 = distinct !DILexicalBlock(scope: !1167, file: !3, line: 515, column: 16)
!1183 = !DILocation(line: 517, column: 13, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1181, file: !3, line: 517, column: 13)
!1185 = !DILocation(line: 517, column: 13, scope: !1181)
!1186 = !DILocation(line: 87, column: 39, scope: !974, inlinedAt: !1187)
!1187 = distinct !DILocation(line: 517, column: 25, scope: !1184)
!1188 = !DILocation(line: 88, column: 27, scope: !974, inlinedAt: !1187)
!1189 = !DILocation(line: 88, column: 19, scope: !974, inlinedAt: !1187)
!1190 = !DILocation(line: 89, column: 5, scope: !974, inlinedAt: !1187)
!1191 = !DILocation(line: 91, column: 20, scope: !988, inlinedAt: !1187)
!1192 = !DILocation(line: 91, column: 13, scope: !988, inlinedAt: !1187)
!1193 = !DILocation(line: 93, column: 20, scope: !988, inlinedAt: !1187)
!1194 = !DILocation(line: 93, column: 34, scope: !988, inlinedAt: !1187)
!1195 = !DILocation(line: 93, column: 13, scope: !988, inlinedAt: !1187)
!1196 = !DILocation(line: 95, column: 20, scope: !988, inlinedAt: !1187)
!1197 = !DILocation(line: 95, column: 35, scope: !988, inlinedAt: !1187)
!1198 = !DILocation(line: 95, column: 13, scope: !988, inlinedAt: !1187)
!1199 = !DILocation(line: 97, column: 20, scope: !988, inlinedAt: !1187)
!1200 = !DILocation(line: 97, column: 35, scope: !988, inlinedAt: !1187)
!1201 = !DILocation(line: 97, column: 13, scope: !988, inlinedAt: !1187)
!1202 = !DILocation(line: 99, column: 20, scope: !988, inlinedAt: !1187)
!1203 = !DILocation(line: 99, column: 35, scope: !988, inlinedAt: !1187)
!1204 = !DILocation(line: 99, column: 13, scope: !988, inlinedAt: !1187)
!1205 = !DILocation(line: 0, scope: !988, inlinedAt: !1187)
!1206 = !DILocation(line: 0, scope: !1184)
!1207 = !DILocation(line: 102, column: 1, scope: !974, inlinedAt: !1187)
!1208 = !DILocation(line: 517, column: 23, scope: !1184)
!1209 = !DILocation(line: 517, column: 18, scope: !1184)
!1210 = !DILocation(line: 0, scope: !1152)
!1211 = !DILocation(line: 521, column: 5, scope: !1152)
!1212 = distinct !DISubprogram(name: "setbitCommand", scope: !3, file: !3, line: 525, type: !850, isLocal: false, isDefinition: true, scopeLine: 525, flags: DIFlagPrototyped, isOptimized: true, unit: !13, retainedNodes: !1213)
!1213 = !{!1214, !1215, !1216, !1217, !1218, !1221, !1222, !1223, !1224}
!1214 = !DILocalVariable(name: "c", arg: 1, scope: !1212, file: !3, line: 525, type: !714)
!1215 = !DILocalVariable(name: "o", scope: !1212, file: !3, line: 526, type: !824)
!1216 = !DILocalVariable(name: "err", scope: !1212, file: !3, line: 527, type: !835)
!1217 = !DILocalVariable(name: "bitoffset", scope: !1212, file: !3, line: 528, type: !6)
!1218 = !DILocalVariable(name: "byte", scope: !1212, file: !3, line: 529, type: !1219)
!1219 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !885, line: 200, baseType: !1220)
!1220 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !9, line: 145, baseType: !12)
!1221 = !DILocalVariable(name: "bit", scope: !1212, file: !3, line: 529, type: !1219)
!1222 = !DILocalVariable(name: "byteval", scope: !1212, file: !3, line: 530, type: !199)
!1223 = !DILocalVariable(name: "bitval", scope: !1212, file: !3, line: 530, type: !199)
!1224 = !DILocalVariable(name: "on", scope: !1212, file: !3, line: 531, type: !12)
!1225 = !DILocation(line: 525, column: 28, scope: !1212)
!1226 = !DILocation(line: 528, column: 5, scope: !1212)
!1227 = !DILocation(line: 531, column: 5, scope: !1212)
!1228 = !DILocation(line: 533, column: 39, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1212, file: !3, line: 533, column: 9)
!1230 = !DILocation(line: 533, column: 36, scope: !1229)
!1231 = !DILocation(line: 528, column: 12, scope: !1212)
!1232 = !DILocation(line: 533, column: 9, scope: !1229)
!1233 = !DILocation(line: 533, column: 63, scope: !1229)
!1234 = !DILocation(line: 533, column: 9, scope: !1212)
!1235 = !DILocation(line: 536, column: 39, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1212, file: !3, line: 536, column: 9)
!1237 = !DILocation(line: 536, column: 36, scope: !1236)
!1238 = !DILocation(line: 531, column: 10, scope: !1212)
!1239 = !DILocation(line: 536, column: 9, scope: !1236)
!1240 = !DILocation(line: 536, column: 56, scope: !1236)
!1241 = !DILocation(line: 536, column: 9, scope: !1212)
!1242 = !DILocation(line: 540, column: 9, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1212, file: !3, line: 540, column: 9)
!1244 = !DILocation(line: 540, column: 12, scope: !1243)
!1245 = !DILocation(line: 540, column: 9, scope: !1212)
!1246 = !DILocation(line: 541, column: 9, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 540, column: 18)
!1248 = !DILocation(line: 542, column: 9, scope: !1247)
!1249 = !DILocation(line: 545, column: 42, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1212, file: !3, line: 545, column: 9)
!1251 = !DILocation(line: 545, column: 14, scope: !1250)
!1252 = !DILocation(line: 526, column: 11, scope: !1212)
!1253 = !DILocation(line: 545, column: 54, scope: !1250)
!1254 = !DILocation(line: 545, column: 9, scope: !1212)
!1255 = !DILocation(line: 548, column: 22, scope: !1212)
!1256 = !DILocation(line: 529, column: 13, scope: !1212)
!1257 = !DILocation(line: 549, column: 29, scope: !1212)
!1258 = !DILocation(line: 549, column: 15, scope: !1212)
!1259 = !DILocation(line: 530, column: 9, scope: !1212)
!1260 = !DILocation(line: 550, column: 26, scope: !1212)
!1261 = !DILocation(line: 550, column: 13, scope: !1212)
!1262 = !DILocation(line: 529, column: 19, scope: !1212)
!1263 = !DILocation(line: 551, column: 27, scope: !1212)
!1264 = !DILocation(line: 551, column: 22, scope: !1212)
!1265 = !DILocation(line: 530, column: 18, scope: !1212)
!1266 = !DILocation(line: 554, column: 16, scope: !1212)
!1267 = !DILocation(line: 554, column: 13, scope: !1212)
!1268 = !DILocation(line: 555, column: 18, scope: !1212)
!1269 = !DILocation(line: 555, column: 21, scope: !1212)
!1270 = !DILocation(line: 555, column: 28, scope: !1212)
!1271 = !DILocation(line: 555, column: 13, scope: !1212)
!1272 = !DILocation(line: 556, column: 32, scope: !1212)
!1273 = !DILocation(line: 556, column: 30, scope: !1212)
!1274 = !DILocation(line: 557, column: 26, scope: !1212)
!1275 = !DILocation(line: 557, column: 32, scope: !1212)
!1276 = !DILocation(line: 557, column: 29, scope: !1212)
!1277 = !DILocation(line: 557, column: 5, scope: !1212)
!1278 = !DILocation(line: 558, column: 51, scope: !1212)
!1279 = !DILocation(line: 558, column: 48, scope: !1212)
!1280 = !DILocation(line: 558, column: 62, scope: !1212)
!1281 = !DILocation(line: 558, column: 66, scope: !1212)
!1282 = !{!1283, !123, i64 40}
!1283 = !{!"redisDb", !971, i64 0, !971, i64 8, !971, i64 16, !971, i64 24, !971, i64 32, !123, i64 40, !1032, i64 48, !971, i64 56}
!1284 = !DILocation(line: 558, column: 5, scope: !1212)
!1285 = !DILocation(line: 559, column: 17, scope: !1212)
!1286 = !{!1287, !1032, i64 2080}
!1287 = !{!"redisServer", !123, i64 0, !971, i64 8, !971, i64 16, !971, i64 24, !123, i64 32, !123, i64 36, !123, i64 40, !971, i64 48, !971, i64 56, !971, i64 64, !971, i64 72, !123, i64 80, !123, i64 84, !123, i64 88, !123, i64 92, !971, i64 96, !971, i64 104, !123, i64 112, !123, i64 116, !104, i64 120, !123, i64 164, !250, i64 168, !123, i64 176, !971, i64 184, !971, i64 192, !971, i64 200, !104, i64 208, !123, i64 216, !123, i64 220, !104, i64 224, !123, i64 352, !971, i64 360, !123, i64 368, !104, i64 372, !123, i64 436, !123, i64 440, !104, i64 444, !123, i64 508, !971, i64 512, !971, i64 520, !971, i64 528, !971, i64 536, !971, i64 544, !971, i64 552, !971, i64 560, !123, i64 568, !1032, i64 576, !104, i64 584, !971, i64 840, !250, i64 848, !123, i64 856, !123, i64 860, !250, i64 864, !250, i64 872, !250, i64 880, !250, i64 888, !971, i64 896, !971, i64 904, !971, i64 912, !971, i64 920, !971, i64 928, !971, i64 936, !971, i64 944, !971, i64 952, !971, i64 960, !971, i64 968, !971, i64 976, !971, i64 984, !971, i64 992, !250, i64 1000, !1032, i64 1008, !1032, i64 1016, !1032, i64 1024, !1288, i64 1032, !1032, i64 1040, !1032, i64 1048, !1032, i64 1056, !1032, i64 1064, !1032, i64 1072, !1032, i64 1080, !1032, i64 1088, !1032, i64 1096, !1032, i64 1104, !250, i64 1112, !1032, i64 1120, !1288, i64 1128, !1032, i64 1136, !1032, i64 1144, !1032, i64 1152, !1032, i64 1160, !971, i64 1168, !1032, i64 1176, !1032, i64 1184, !250, i64 1192, !1289, i64 1200, !1032, i64 1240, !1032, i64 1248, !250, i64 1256, !250, i64 1264, !104, i64 1272, !123, i64 1728, !123, i64 1732, !123, i64 1736, !123, i64 1740, !123, i64 1744, !250, i64 1752, !123, i64 1760, !123, i64 1764, !123, i64 1768, !123, i64 1772, !250, i64 1776, !250, i64 1784, !123, i64 1792, !123, i64 1796, !123, i64 1800, !123, i64 1804, !104, i64 1808, !123, i64 1880, !123, i64 1884, !971, i64 1888, !123, i64 1896, !123, i64 1900, !250, i64 1904, !250, i64 1912, !250, i64 1920, !250, i64 1928, !123, i64 1936, !123, i64 1940, !971, i64 1944, !971, i64 1952, !123, i64 1960, !123, i64 1964, !250, i64 1968, !250, i64 1976, !250, i64 1984, !250, i64 1992, !123, i64 2000, !250, i64 2008, !123, i64 2016, !123, i64 2020, !123, i64 2024, !123, i64 2028, !123, i64 2032, !123, i64 2036, !123, i64 2040, !123, i64 2044, !123, i64 2048, !123, i64 2052, !123, i64 2056, !123, i64 2060, !123, i64 2064, !971, i64 2072, !1032, i64 2080, !1032, i64 2088, !123, i64 2096, !971, i64 2104, !123, i64 2112, !971, i64 2120, !123, i64 2128, !123, i64 2132, !250, i64 2136, !250, i64 2144, !250, i64 2152, !250, i64 2160, !123, i64 2168, !123, i64 2172, !123, i64 2176, !123, i64 2180, !123, i64 2184, !123, i64 2188, !104, i64 2192, !1290, i64 2200, !1291, i64 2224, !971, i64 2240, !123, i64 2248, !971, i64 2256, !123, i64 2264, !104, i64 2268, !104, i64 2309, !1032, i64 2352, !1032, i64 2360, !123, i64 2368, !123, i64 2372, !971, i64 2376, !1032, i64 2384, !1032, i64 2392, !1032, i64 2400, !1032, i64 2408, !250, i64 2416, !250, i64 2424, !123, i64 2432, !123, i64 2436, !123, i64 2440, !123, i64 2444, !123, i64 2448, !971, i64 2456, !971, i64 2464, !123, i64 2472, !123, i64 2476, !971, i64 2480, !971, i64 2488, !123, i64 2496, !123, i64 2500, !250, i64 2504, !250, i64 2512, !250, i64 2520, !123, i64 2528, !123, i64 2532, !971, i64 2536, !250, i64 2544, !123, i64 2552, !123, i64 2556, !123, i64 2560, !250, i64 2568, !123, i64 2576, !123, i64 2580, !123, i64 2584, !971, i64 2592, !104, i64 2600, !1032, i64 2648, !123, i64 2656, !971, i64 2664, !971, i64 2672, !123, i64 2680, !971, i64 2688, !123, i64 2696, !123, i64 2700, !1032, i64 2704, !123, i64 2712, !123, i64 2716, !123, i64 2720, !123, i64 2724, !1032, i64 2728, !123, i64 2736, !104, i64 2740, !971, i64 2768, !971, i64 2776, !123, i64 2784, !123, i64 2788, !123, i64 2792, !123, i64 2796, !250, i64 2800, !250, i64 2808, !250, i64 2816, !250, i64 2824, !250, i64 2832, !250, i64 2840, !250, i64 2848, !250, i64 2856, !123, i64 2864, !123, i64 2868, !250, i64 2872, !250, i64 2880, !123, i64 2888, !1032, i64 2896, !971, i64 2904, !971, i64 2912, !123, i64 2920, !123, i64 2924, !1032, i64 2928, !971, i64 2936, !971, i64 2944, !123, i64 2952, !123, i64 2956, !123, i64 2960, !123, i64 2964, !971, i64 2968, !123, i64 2976, !123, i64 2980, !123, i64 2984, !971, i64 2992, !971, i64 3000, !971, i64 3008, !971, i64 3016, !1032, i64 3024, !1032, i64 3032, !1032, i64 3040, !123, i64 3048, !123, i64 3052, !123, i64 3056, !123, i64 3060, !123, i64 3064, !123, i64 3068, !123, i64 3072, !123, i64 3076, !123, i64 3080, !123, i64 3084, !123, i64 3088, !1032, i64 3096, !971, i64 3104, !971, i64 3112, !971, i64 3120, !123, i64 3128, !123, i64 3132, !123, i64 3136, !250, i64 3144, !971, i64 3152, !971, i64 3160, !971, i64 3168}
!1288 = !{!"double", !104, i64 0}
!1289 = !{!"malloc_stats", !250, i64 0, !250, i64 8, !250, i64 16, !250, i64 24, !250, i64 32}
!1290 = !{!"", !123, i64 0, !250, i64 8, !1032, i64 16}
!1291 = !{!"redisOpArray", !971, i64 0, !123, i64 8}
!1292 = !DILocation(line: 560, column: 17, scope: !1212)
!1293 = !DILocation(line: 560, column: 33, scope: !1212)
!1294 = !DILocation(line: 560, column: 47, scope: !1212)
!1295 = !DILocation(line: 560, column: 5, scope: !1212)
!1296 = !DILocation(line: 561, column: 1, scope: !1212)
!1297 = !DILocation(line: 0, scope: !1229)
!1298 = distinct !DISubprogram(name: "getbitCommand", scope: !3, file: !3, line: 564, type: !850, isLocal: false, isDefinition: true, scopeLine: 564, flags: DIFlagPrototyped, isOptimized: true, unit: !13, retainedNodes: !1299)
!1299 = !{!1300, !1301, !1302, !1306, !1307, !1308, !1309}
!1300 = !DILocalVariable(name: "c", arg: 1, scope: !1298, file: !3, line: 564, type: !714)
!1301 = !DILocalVariable(name: "o", scope: !1298, file: !3, line: 565, type: !824)
!1302 = !DILocalVariable(name: "llbuf", scope: !1298, file: !3, line: 566, type: !1303)
!1303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 256, elements: !1304)
!1304 = !{!1305}
!1305 = !DISubrange(count: 32)
!1306 = !DILocalVariable(name: "bitoffset", scope: !1298, file: !3, line: 567, type: !6)
!1307 = !DILocalVariable(name: "byte", scope: !1298, file: !3, line: 568, type: !6)
!1308 = !DILocalVariable(name: "bit", scope: !1298, file: !3, line: 568, type: !6)
!1309 = !DILocalVariable(name: "bitval", scope: !1298, file: !3, line: 569, type: !6)
!1310 = !DILocation(line: 564, column: 28, scope: !1298)
!1311 = !DILocation(line: 566, column: 5, scope: !1298)
!1312 = !DILocation(line: 566, column: 10, scope: !1298)
!1313 = !DILocation(line: 567, column: 5, scope: !1298)
!1314 = !DILocation(line: 569, column: 12, scope: !1298)
!1315 = !DILocation(line: 571, column: 39, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1298, file: !3, line: 571, column: 9)
!1317 = !DILocation(line: 571, column: 36, scope: !1316)
!1318 = !DILocation(line: 567, column: 12, scope: !1298)
!1319 = !DILocation(line: 571, column: 9, scope: !1316)
!1320 = !DILocation(line: 571, column: 63, scope: !1316)
!1321 = !DILocation(line: 571, column: 9, scope: !1298)
!1322 = !DILocation(line: 574, column: 40, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1298, file: !3, line: 574, column: 9)
!1324 = !DILocation(line: 574, column: 37, scope: !1323)
!1325 = !DILocation(line: 574, column: 55, scope: !1323)
!1326 = !{!1327, !971, i64 32}
!1327 = !{!"sharedObjectsStruct", !971, i64 0, !971, i64 8, !971, i64 16, !971, i64 24, !971, i64 32, !971, i64 40, !971, i64 48, !971, i64 56, !971, i64 64, !971, i64 72, !971, i64 80, !971, i64 88, !971, i64 96, !971, i64 104, !971, i64 112, !971, i64 120, !971, i64 128, !971, i64 136, !971, i64 144, !971, i64 152, !971, i64 160, !971, i64 168, !971, i64 176, !971, i64 184, !971, i64 192, !971, i64 200, !971, i64 208, !971, i64 216, !971, i64 224, !971, i64 232, !971, i64 240, !971, i64 248, !971, i64 256, !971, i64 264, !971, i64 272, !971, i64 280, !971, i64 288, !971, i64 296, !971, i64 304, !971, i64 312, !971, i64 320, !971, i64 328, !971, i64 336, !971, i64 344, !971, i64 352, !971, i64 360, !104, i64 368, !104, i64 448, !104, i64 80448, !104, i64 80704, !971, i64 80960, !971, i64 80968}
!1328 = !DILocation(line: 574, column: 14, scope: !1323)
!1329 = !DILocation(line: 565, column: 11, scope: !1298)
!1330 = !DILocation(line: 574, column: 63, scope: !1323)
!1331 = !DILocation(line: 574, column: 71, scope: !1323)
!1332 = !DILocation(line: 575, column: 9, scope: !1323)
!1333 = !DILocation(line: 574, column: 9, scope: !1298)
!1334 = !DILocation(line: 577, column: 12, scope: !1298)
!1335 = !DILocation(line: 577, column: 22, scope: !1298)
!1336 = !DILocation(line: 568, column: 12, scope: !1298)
!1337 = !DILocation(line: 568, column: 18, scope: !1298)
!1338 = !DILocation(line: 579, column: 9, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1298, file: !3, line: 579, column: 9)
!1340 = !DILocation(line: 579, column: 9, scope: !1298)
!1341 = !DILocation(line: 580, column: 30, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1343, file: !3, line: 580, column: 13)
!1343 = distinct !DILexicalBlock(scope: !1339, file: !3, line: 579, column: 30)
!1344 = !DILocation(line: 87, column: 39, scope: !974, inlinedAt: !1345)
!1345 = distinct !DILocation(line: 580, column: 20, scope: !1342)
!1346 = !DILocation(line: 88, column: 27, scope: !974, inlinedAt: !1345)
!1347 = !DILocation(line: 88, column: 19, scope: !974, inlinedAt: !1345)
!1348 = !DILocation(line: 89, column: 5, scope: !974, inlinedAt: !1345)
!1349 = !DILocation(line: 91, column: 20, scope: !988, inlinedAt: !1345)
!1350 = !DILocation(line: 91, column: 13, scope: !988, inlinedAt: !1345)
!1351 = !DILocation(line: 93, column: 20, scope: !988, inlinedAt: !1345)
!1352 = !DILocation(line: 93, column: 34, scope: !988, inlinedAt: !1345)
!1353 = !DILocation(line: 93, column: 13, scope: !988, inlinedAt: !1345)
!1354 = !DILocation(line: 95, column: 20, scope: !988, inlinedAt: !1345)
!1355 = !DILocation(line: 95, column: 35, scope: !988, inlinedAt: !1345)
!1356 = !DILocation(line: 95, column: 13, scope: !988, inlinedAt: !1345)
!1357 = !DILocation(line: 97, column: 20, scope: !988, inlinedAt: !1345)
!1358 = !DILocation(line: 97, column: 35, scope: !988, inlinedAt: !1345)
!1359 = !DILocation(line: 97, column: 13, scope: !988, inlinedAt: !1345)
!1360 = !DILocation(line: 99, column: 20, scope: !988, inlinedAt: !1345)
!1361 = !DILocation(line: 99, column: 35, scope: !988, inlinedAt: !1345)
!1362 = !DILocation(line: 99, column: 13, scope: !988, inlinedAt: !1345)
!1363 = !DILocation(line: 101, column: 5, scope: !974, inlinedAt: !1345)
!1364 = !DILocation(line: 102, column: 1, scope: !974, inlinedAt: !1345)
!1365 = !DILocation(line: 580, column: 13, scope: !1343)
!1366 = !DILocation(line: 0, scope: !988, inlinedAt: !1345)
!1367 = !DILocation(line: 0, scope: !1342)
!1368 = !DILocation(line: 580, column: 18, scope: !1342)
!1369 = !DILocation(line: 581, column: 22, scope: !1342)
!1370 = !DILocation(line: 581, column: 13, scope: !1342)
!1371 = !DILocation(line: 583, column: 67, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1373, file: !3, line: 583, column: 13)
!1373 = distinct !DILexicalBlock(scope: !1339, file: !3, line: 582, column: 12)
!1374 = !DILocation(line: 583, column: 28, scope: !1372)
!1375 = !DILocation(line: 583, column: 20, scope: !1372)
!1376 = !DILocation(line: 583, column: 18, scope: !1372)
!1377 = !DILocation(line: 583, column: 13, scope: !1373)
!1378 = !DILocation(line: 584, column: 22, scope: !1372)
!1379 = !DILocation(line: 584, column: 13, scope: !1372)
!1380 = !DILocation(line: 587, column: 17, scope: !1298)
!1381 = !DILocation(line: 0, scope: !1298)
!1382 = !DILocation(line: 587, column: 5, scope: !1298)
!1383 = !DILocation(line: 588, column: 1, scope: !1298)
!1384 = !DILocation(line: 0, scope: !1316)
!1385 = distinct !DISubprogram(name: "bitopCommand", scope: !3, file: !3, line: 591, type: !850, isLocal: false, isDefinition: true, scopeLine: 591, flags: DIFlagPrototyped, isOptimized: true, unit: !13, retainedNodes: !1386)
!1386 = !{!1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1397, !1398, !1399, !1400, !1401, !1407, !1410, !1411, !1412, !1418}
!1387 = !DILocalVariable(name: "c", arg: 1, scope: !1385, file: !3, line: 591, type: !714)
!1388 = !DILocalVariable(name: "opname", scope: !1385, file: !3, line: 592, type: !835)
!1389 = !DILocalVariable(name: "o", scope: !1385, file: !3, line: 593, type: !824)
!1390 = !DILocalVariable(name: "targetkey", scope: !1385, file: !3, line: 593, type: !824)
!1391 = !DILocalVariable(name: "op", scope: !1385, file: !3, line: 594, type: !10)
!1392 = !DILocalVariable(name: "j", scope: !1385, file: !3, line: 594, type: !10)
!1393 = !DILocalVariable(name: "numkeys", scope: !1385, file: !3, line: 594, type: !10)
!1394 = !DILocalVariable(name: "objects", scope: !1385, file: !3, line: 595, type: !841)
!1395 = !DILocalVariable(name: "src", scope: !1385, file: !3, line: 596, type: !1396)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!1397 = !DILocalVariable(name: "len", scope: !1385, file: !3, line: 597, type: !24)
!1398 = !DILocalVariable(name: "maxlen", scope: !1385, file: !3, line: 597, type: !10)
!1399 = !DILocalVariable(name: "minlen", scope: !1385, file: !3, line: 599, type: !10)
!1400 = !DILocalVariable(name: "res", scope: !1385, file: !3, line: 600, type: !22)
!1401 = !DILocalVariable(name: "i", scope: !1402, file: !3, line: 639, type: !10)
!1402 = distinct !DILexicalBlock(scope: !1403, file: !3, line: 638, column: 40)
!1403 = distinct !DILexicalBlock(scope: !1404, file: !3, line: 638, column: 13)
!1404 = distinct !DILexicalBlock(scope: !1405, file: !3, line: 627, column: 35)
!1405 = distinct !DILexicalBlock(scope: !1406, file: !3, line: 627, column: 5)
!1406 = distinct !DILexicalBlock(scope: !1385, file: !3, line: 627, column: 5)
!1407 = !DILocalVariable(name: "output", scope: !1408, file: !3, line: 659, type: !23)
!1408 = distinct !DILexicalBlock(scope: !1409, file: !3, line: 657, column: 17)
!1409 = distinct !DILexicalBlock(scope: !1385, file: !3, line: 657, column: 9)
!1410 = !DILocalVariable(name: "byte", scope: !1408, file: !3, line: 659, type: !23)
!1411 = !DILocalVariable(name: "i", scope: !1408, file: !3, line: 660, type: !10)
!1412 = !DILocalVariable(name: "lp", scope: !1413, file: !3, line: 670, type: !1415)
!1413 = distinct !DILexicalBlock(scope: !1414, file: !3, line: 669, column: 65)
!1414 = distinct !DILexicalBlock(scope: !1408, file: !3, line: 669, column: 13)
!1415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 1024, elements: !1416)
!1416 = !{!1417}
!1417 = !DISubrange(count: 16)
!1418 = !DILocalVariable(name: "lres", scope: !1413, file: !3, line: 671, type: !24)
!1419 = !DILocation(line: 591, column: 27, scope: !1385)
!1420 = !DILocation(line: 592, column: 23, scope: !1385)
!1421 = !DILocation(line: 592, column: 20, scope: !1385)
!1422 = !DILocation(line: 592, column: 32, scope: !1385)
!1423 = !DILocation(line: 592, column: 11, scope: !1385)
!1424 = !DILocation(line: 593, column: 27, scope: !1385)
!1425 = !DILocation(line: 593, column: 15, scope: !1385)
!1426 = !DILocation(line: 597, column: 25, scope: !1385)
!1427 = !DILocation(line: 599, column: 19, scope: !1385)
!1428 = !DILocation(line: 600, column: 20, scope: !1385)
!1429 = !DILocation(line: 603, column: 10, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1385, file: !3, line: 603, column: 9)
!1431 = !DILocation(line: 603, column: 20, scope: !1430)
!1432 = !DILocation(line: 603, column: 27, scope: !1430)
!1433 = !DILocation(line: 603, column: 40, scope: !1430)
!1434 = !DILocation(line: 603, column: 48, scope: !1430)
!1435 = !DILocation(line: 603, column: 52, scope: !1430)
!1436 = !DILocation(line: 603, column: 9, scope: !1385)
!1437 = !DILocation(line: 0, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1430, file: !3, line: 605, column: 13)
!1439 = !DILocation(line: 605, column: 24, scope: !1438)
!1440 = !DILocation(line: 605, column: 31, scope: !1438)
!1441 = !DILocation(line: 605, column: 44, scope: !1438)
!1442 = !DILocation(line: 605, column: 52, scope: !1438)
!1443 = !DILocation(line: 605, column: 56, scope: !1438)
!1444 = !DILocation(line: 605, column: 13, scope: !1430)
!1445 = !DILocation(line: 0, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1438, file: !3, line: 607, column: 13)
!1447 = !DILocation(line: 607, column: 24, scope: !1446)
!1448 = !DILocation(line: 607, column: 31, scope: !1446)
!1449 = !DILocation(line: 607, column: 44, scope: !1446)
!1450 = !DILocation(line: 607, column: 52, scope: !1446)
!1451 = !DILocation(line: 607, column: 56, scope: !1446)
!1452 = !DILocation(line: 607, column: 13, scope: !1438)
!1453 = !DILocation(line: 594, column: 19, scope: !1385)
!1454 = !DILocation(line: 608, column: 9, scope: !1446)
!1455 = !DILocation(line: 609, column: 24, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1446, file: !3, line: 609, column: 13)
!1457 = !DILocation(line: 609, column: 31, scope: !1456)
!1458 = !DILocation(line: 609, column: 44, scope: !1456)
!1459 = !DILocation(line: 609, column: 52, scope: !1456)
!1460 = !DILocation(line: 609, column: 56, scope: !1456)
!1461 = !DILocation(line: 609, column: 13, scope: !1446)
!1462 = !DILocation(line: 612, column: 27, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1456, file: !3, line: 611, column: 10)
!1464 = !{!1327, !971, i64 128}
!1465 = !DILocation(line: 612, column: 9, scope: !1463)
!1466 = !DILocation(line: 613, column: 9, scope: !1463)
!1467 = !DILocation(line: 617, column: 25, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1385, file: !3, line: 617, column: 9)
!1469 = !DILocation(line: 623, column: 18, scope: !1385)
!1470 = !{!1115, !123, i64 64}
!1471 = !DILocation(line: 617, column: 31, scope: !1468)
!1472 = !DILocation(line: 617, column: 36, scope: !1468)
!1473 = !DILocation(line: 617, column: 9, scope: !1385)
!1474 = !DILocation(line: 618, column: 9, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1468, file: !3, line: 617, column: 42)
!1476 = !DILocation(line: 619, column: 9, scope: !1475)
!1477 = !DILocation(line: 623, column: 23, scope: !1385)
!1478 = !DILocation(line: 623, column: 15, scope: !1385)
!1479 = !DILocation(line: 594, column: 26, scope: !1385)
!1480 = !DILocation(line: 624, column: 42, scope: !1385)
!1481 = !DILocation(line: 624, column: 11, scope: !1385)
!1482 = !DILocation(line: 596, column: 21, scope: !1385)
!1483 = !DILocation(line: 625, column: 11, scope: !1385)
!1484 = !DILocation(line: 597, column: 20, scope: !1385)
!1485 = !DILocation(line: 626, column: 15, scope: !1385)
!1486 = !DILocation(line: 595, column: 12, scope: !1385)
!1487 = !DILocation(line: 594, column: 23, scope: !1385)
!1488 = !DILocation(line: 627, column: 10, scope: !1406)
!1489 = !DILocation(line: 627, column: 19, scope: !1405)
!1490 = !DILocation(line: 627, column: 5, scope: !1406)
!1491 = !DILocation(line: 657, column: 9, scope: !1385)
!1492 = !DILocation(line: 746, column: 10, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1385, file: !3, line: 746, column: 5)
!1494 = !DILocation(line: 746, column: 5, scope: !1493)
!1495 = !DILocation(line: 628, column: 30, scope: !1404)
!1496 = !DILocation(line: 628, column: 36, scope: !1404)
!1497 = !DILocation(line: 628, column: 42, scope: !1404)
!1498 = !DILocation(line: 628, column: 33, scope: !1404)
!1499 = !DILocation(line: 628, column: 13, scope: !1404)
!1500 = !DILocation(line: 593, column: 11, scope: !1385)
!1501 = !DILocation(line: 630, column: 15, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1404, file: !3, line: 630, column: 13)
!1503 = !DILocation(line: 630, column: 13, scope: !1404)
!1504 = !DILocation(line: 631, column: 13, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1502, file: !3, line: 630, column: 24)
!1506 = !DILocation(line: 631, column: 24, scope: !1505)
!1507 = !DILocation(line: 632, column: 13, scope: !1505)
!1508 = !DILocation(line: 632, column: 20, scope: !1505)
!1509 = !DILocation(line: 633, column: 13, scope: !1505)
!1510 = !DILocation(line: 633, column: 20, scope: !1505)
!1511 = !DILocation(line: 635, column: 13, scope: !1505)
!1512 = !DILocation(line: 638, column: 13, scope: !1403)
!1513 = !DILocation(line: 638, column: 13, scope: !1404)
!1514 = !DILocation(line: 639, column: 27, scope: !1402)
!1515 = !DILocation(line: 640, column: 18, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1402, file: !3, line: 640, column: 13)
!1517 = !DILocation(line: 640, column: 27, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1516, file: !3, line: 640, column: 13)
!1519 = !DILocation(line: 640, column: 13, scope: !1516)
!1520 = !DILocation(line: 641, column: 21, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1522, file: !3, line: 641, column: 21)
!1522 = distinct !DILexicalBlock(scope: !1518, file: !3, line: 640, column: 37)
!1523 = !DILocation(line: 641, column: 21, scope: !1522)
!1524 = !DILocation(line: 642, column: 21, scope: !1521)
!1525 = !DILocation(line: 640, column: 33, scope: !1518)
!1526 = !DILocation(line: 640, column: 13, scope: !1518)
!1527 = distinct !{!1527, !1519, !1528}
!1528 = !DILocation(line: 643, column: 13, scope: !1516)
!1529 = !DILocation(line: 644, column: 13, scope: !1402)
!1530 = !DILocation(line: 645, column: 13, scope: !1402)
!1531 = !DILocation(line: 646, column: 13, scope: !1402)
!1532 = !DILocation(line: 649, column: 22, scope: !1404)
!1533 = !DILocation(line: 649, column: 9, scope: !1404)
!1534 = !DILocation(line: 649, column: 20, scope: !1404)
!1535 = !DILocation(line: 650, column: 30, scope: !1404)
!1536 = !DILocation(line: 650, column: 9, scope: !1404)
!1537 = !DILocation(line: 650, column: 16, scope: !1404)
!1538 = !DILocation(line: 651, column: 25, scope: !1404)
!1539 = !DILocation(line: 651, column: 37, scope: !1404)
!1540 = !DILocation(line: 87, column: 39, scope: !974, inlinedAt: !1541)
!1541 = distinct !DILocation(line: 651, column: 18, scope: !1404)
!1542 = !DILocation(line: 88, column: 27, scope: !974, inlinedAt: !1541)
!1543 = !DILocation(line: 88, column: 19, scope: !974, inlinedAt: !1541)
!1544 = !DILocation(line: 89, column: 5, scope: !974, inlinedAt: !1541)
!1545 = !DILocation(line: 91, column: 20, scope: !988, inlinedAt: !1541)
!1546 = !DILocation(line: 91, column: 13, scope: !988, inlinedAt: !1541)
!1547 = !DILocation(line: 93, column: 20, scope: !988, inlinedAt: !1541)
!1548 = !DILocation(line: 93, column: 34, scope: !988, inlinedAt: !1541)
!1549 = !DILocation(line: 93, column: 13, scope: !988, inlinedAt: !1541)
!1550 = !DILocation(line: 95, column: 20, scope: !988, inlinedAt: !1541)
!1551 = !DILocation(line: 95, column: 35, scope: !988, inlinedAt: !1541)
!1552 = !DILocation(line: 95, column: 13, scope: !988, inlinedAt: !1541)
!1553 = !DILocation(line: 97, column: 20, scope: !988, inlinedAt: !1541)
!1554 = !DILocation(line: 97, column: 35, scope: !988, inlinedAt: !1541)
!1555 = !DILocation(line: 97, column: 13, scope: !988, inlinedAt: !1541)
!1556 = !DILocation(line: 99, column: 20, scope: !988, inlinedAt: !1541)
!1557 = !DILocation(line: 99, column: 35, scope: !988, inlinedAt: !1541)
!1558 = !DILocation(line: 99, column: 13, scope: !988, inlinedAt: !1541)
!1559 = !DILocation(line: 101, column: 5, scope: !974, inlinedAt: !1541)
!1560 = !DILocation(line: 102, column: 1, scope: !974, inlinedAt: !1541)
!1561 = !DILocation(line: 651, column: 9, scope: !1404)
!1562 = !DILocation(line: 651, column: 16, scope: !1404)
!1563 = !DILocation(line: 652, column: 13, scope: !1404)
!1564 = !DILocation(line: 0, scope: !988, inlinedAt: !1541)
!1565 = !DILocation(line: 0, scope: !1404)
!1566 = !DILocation(line: 652, column: 20, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1404, file: !3, line: 652, column: 13)
!1568 = !DILocation(line: 0, scope: !1567)
!1569 = !DILocation(line: 653, column: 15, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1404, file: !3, line: 653, column: 13)
!1571 = !DILocation(line: 0, scope: !1385)
!1572 = !DILocation(line: 653, column: 20, scope: !1570)
!1573 = !DILocation(line: 653, column: 30, scope: !1570)
!1574 = !DILocation(line: 653, column: 13, scope: !1404)
!1575 = !DILocation(line: 0, scope: !1505)
!1576 = !DILocation(line: 627, column: 31, scope: !1405)
!1577 = !DILocation(line: 627, column: 5, scope: !1405)
!1578 = distinct !{!1578, !1490, !1579}
!1579 = !DILocation(line: 654, column: 5, scope: !1406)
!1580 = !DILocation(line: 657, column: 9, scope: !1409)
!1581 = !DILocation(line: 658, column: 32, scope: !1408)
!1582 = !DILocation(line: 669, column: 20, scope: !1414)
!1583 = !DILocation(line: 669, column: 58, scope: !1414)
!1584 = !DILocation(line: 669, column: 47, scope: !1414)
!1585 = !DILocation(line: 670, column: 13, scope: !1413)
!1586 = !DILocation(line: 670, column: 28, scope: !1413)
!1587 = !DILocation(line: 671, column: 35, scope: !1413)
!1588 = !DILocation(line: 671, column: 28, scope: !1413)
!1589 = !DILocation(line: 674, column: 13, scope: !1413)
!1590 = !DILocation(line: 675, column: 24, scope: !1413)
!1591 = !DILocation(line: 675, column: 13, scope: !1413)
!1592 = !DILocation(line: 678, column: 20, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1413, file: !3, line: 678, column: 17)
!1594 = !DILocation(line: 678, column: 17, scope: !1413)
!1595 = !DILocation(line: 679, column: 17, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1593, file: !3, line: 678, column: 34)
!1597 = !DILocation(line: 660, column: 23, scope: !1408)
!1598 = !DILocation(line: 680, column: 26, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1600, file: !3, line: 680, column: 21)
!1600 = distinct !DILexicalBlock(scope: !1596, file: !3, line: 679, column: 58)
!1601 = !DILocation(line: 680, column: 21, scope: !1599)
!1602 = !DILocation(line: 681, column: 33, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1604, file: !3, line: 680, column: 51)
!1604 = distinct !DILexicalBlock(scope: !1599, file: !3, line: 680, column: 21)
!1605 = !DILocation(line: 682, column: 33, scope: !1603)
!1606 = !DILocation(line: 683, column: 33, scope: !1603)
!1607 = !DILocation(line: 684, column: 33, scope: !1603)
!1608 = !DILocation(line: 681, column: 36, scope: !1603)
!1609 = !DILocation(line: 682, column: 36, scope: !1603)
!1610 = !DILocation(line: 683, column: 36, scope: !1603)
!1611 = !DILocation(line: 684, column: 36, scope: !1603)
!1612 = !DILocation(line: 685, column: 30, scope: !1603)
!1613 = !DILocation(line: 680, column: 47, scope: !1604)
!1614 = !DILocation(line: 680, column: 21, scope: !1604)
!1615 = !DILocation(line: 680, column: 35, scope: !1604)
!1616 = distinct !{!1616, !1601, !1617}
!1617 = !DILocation(line: 686, column: 21, scope: !1599)
!1618 = !DILocation(line: 687, column: 25, scope: !1600)
!1619 = !DILocation(line: 689, column: 28, scope: !1600)
!1620 = !DILocation(line: 679, column: 30, scope: !1596)
!1621 = distinct !{!1621, !1595, !1622}
!1622 = !DILocation(line: 690, column: 17, scope: !1596)
!1623 = !DILocation(line: 691, column: 27, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1593, file: !3, line: 691, column: 24)
!1625 = !DILocation(line: 691, column: 24, scope: !1593)
!1626 = !DILocation(line: 692, column: 17, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1624, file: !3, line: 691, column: 40)
!1628 = !DILocation(line: 693, column: 26, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1630, file: !3, line: 693, column: 21)
!1630 = distinct !DILexicalBlock(scope: !1627, file: !3, line: 692, column: 58)
!1631 = !DILocation(line: 693, column: 21, scope: !1629)
!1632 = !DILocation(line: 694, column: 33, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1634, file: !3, line: 693, column: 51)
!1634 = distinct !DILexicalBlock(scope: !1629, file: !3, line: 693, column: 21)
!1635 = !DILocation(line: 695, column: 33, scope: !1633)
!1636 = !DILocation(line: 696, column: 33, scope: !1633)
!1637 = !DILocation(line: 697, column: 33, scope: !1633)
!1638 = !DILocation(line: 694, column: 36, scope: !1633)
!1639 = !DILocation(line: 695, column: 36, scope: !1633)
!1640 = !DILocation(line: 696, column: 36, scope: !1633)
!1641 = !DILocation(line: 697, column: 36, scope: !1633)
!1642 = !DILocation(line: 698, column: 30, scope: !1633)
!1643 = !DILocation(line: 693, column: 47, scope: !1634)
!1644 = !DILocation(line: 693, column: 21, scope: !1634)
!1645 = !DILocation(line: 693, column: 35, scope: !1634)
!1646 = distinct !{!1646, !1631, !1647}
!1647 = !DILocation(line: 699, column: 21, scope: !1629)
!1648 = !DILocation(line: 700, column: 25, scope: !1630)
!1649 = !DILocation(line: 702, column: 28, scope: !1630)
!1650 = !DILocation(line: 692, column: 30, scope: !1627)
!1651 = distinct !{!1651, !1626, !1652}
!1652 = !DILocation(line: 703, column: 17, scope: !1627)
!1653 = !DILocation(line: 704, column: 27, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1624, file: !3, line: 704, column: 24)
!1655 = !DILocation(line: 704, column: 24, scope: !1624)
!1656 = !DILocation(line: 0, scope: !1654)
!1657 = !DILocation(line: 705, column: 17, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1654, file: !3, line: 704, column: 41)
!1659 = !DILocation(line: 706, column: 26, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1661, file: !3, line: 706, column: 21)
!1661 = distinct !DILexicalBlock(scope: !1658, file: !3, line: 705, column: 58)
!1662 = !DILocation(line: 706, column: 21, scope: !1660)
!1663 = !DILocation(line: 707, column: 33, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1665, file: !3, line: 706, column: 51)
!1665 = distinct !DILexicalBlock(scope: !1660, file: !3, line: 706, column: 21)
!1666 = !DILocation(line: 708, column: 33, scope: !1664)
!1667 = !DILocation(line: 709, column: 33, scope: !1664)
!1668 = !DILocation(line: 710, column: 33, scope: !1664)
!1669 = !DILocation(line: 707, column: 36, scope: !1664)
!1670 = !DILocation(line: 708, column: 36, scope: !1664)
!1671 = !DILocation(line: 709, column: 36, scope: !1664)
!1672 = !DILocation(line: 710, column: 36, scope: !1664)
!1673 = !DILocation(line: 711, column: 30, scope: !1664)
!1674 = !DILocation(line: 706, column: 47, scope: !1665)
!1675 = !DILocation(line: 706, column: 21, scope: !1665)
!1676 = !DILocation(line: 706, column: 35, scope: !1665)
!1677 = distinct !{!1677, !1662, !1678}
!1678 = !DILocation(line: 712, column: 21, scope: !1660)
!1679 = !DILocation(line: 713, column: 25, scope: !1661)
!1680 = !DILocation(line: 715, column: 28, scope: !1661)
!1681 = !DILocation(line: 705, column: 30, scope: !1658)
!1682 = distinct !{!1682, !1657, !1683}
!1683 = !DILocation(line: 716, column: 17, scope: !1658)
!1684 = !DILocation(line: 717, column: 24, scope: !1654)
!1685 = !DILocation(line: 719, column: 32, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1687, file: !3, line: 718, column: 58)
!1687 = distinct !DILexicalBlock(scope: !1688, file: !3, line: 717, column: 41)
!1688 = distinct !DILexicalBlock(scope: !1654, file: !3, line: 717, column: 24)
!1689 = !DILocation(line: 719, column: 31, scope: !1686)
!1690 = !DILocation(line: 719, column: 29, scope: !1686)
!1691 = !DILocation(line: 721, column: 32, scope: !1686)
!1692 = !DILocation(line: 721, column: 31, scope: !1686)
!1693 = !DILocation(line: 721, column: 29, scope: !1686)
!1694 = !DILocation(line: 723, column: 25, scope: !1686)
!1695 = !DILocation(line: 725, column: 28, scope: !1686)
!1696 = !DILocation(line: 718, column: 17, scope: !1687)
!1697 = !DILocation(line: 0, scope: !1686)
!1698 = !DILocation(line: 718, column: 30, scope: !1687)
!1699 = !DILocation(line: 728, column: 9, scope: !1414)
!1700 = !DILocation(line: 0, scope: !1408)
!1701 = !DILocation(line: 728, column: 9, scope: !1413)
!1702 = !DILocation(line: 667, column: 11, scope: !1408)
!1703 = !DILocation(line: 732, column: 9, scope: !1408)
!1704 = !DILocation(line: 732, column: 18, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1706, file: !3, line: 732, column: 9)
!1706 = distinct !DILexicalBlock(scope: !1408, file: !3, line: 732, column: 9)
!1707 = !DILocation(line: 732, column: 9, scope: !1706)
!1708 = !DILocation(line: 733, column: 23, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1705, file: !3, line: 732, column: 33)
!1710 = !DILocation(line: 733, column: 30, scope: !1709)
!1711 = !DILocation(line: 733, column: 22, scope: !1709)
!1712 = !DILocation(line: 733, column: 42, scope: !1709)
!1713 = !DILocation(line: 659, column: 23, scope: !1408)
!1714 = !DILocation(line: 734, column: 17, scope: !1709)
!1715 = !DILocation(line: 734, column: 43, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1709, file: !3, line: 734, column: 17)
!1717 = !DILocation(line: 734, column: 34, scope: !1716)
!1718 = !DILocation(line: 0, scope: !1709)
!1719 = !DILocation(line: 735, column: 18, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1709, file: !3, line: 735, column: 13)
!1721 = !DILocation(line: 735, column: 13, scope: !1720)
!1722 = !DILocation(line: 736, column: 25, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1724, file: !3, line: 735, column: 43)
!1724 = distinct !DILexicalBlock(scope: !1720, file: !3, line: 735, column: 13)
!1725 = !DILocation(line: 736, column: 32, scope: !1723)
!1726 = !DILocation(line: 736, column: 24, scope: !1723)
!1727 = !DILocation(line: 736, column: 44, scope: !1723)
!1728 = !DILocation(line: 659, column: 31, scope: !1408)
!1729 = !DILocation(line: 737, column: 17, scope: !1723)
!1730 = !DILocation(line: 738, column: 40, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1723, file: !3, line: 737, column: 28)
!1732 = !DILocation(line: 738, column: 49, scope: !1731)
!1733 = !DILocation(line: 739, column: 40, scope: !1731)
!1734 = !DILocation(line: 739, column: 49, scope: !1731)
!1735 = !DILocation(line: 740, column: 40, scope: !1731)
!1736 = !DILocation(line: 740, column: 49, scope: !1731)
!1737 = !DILocation(line: 0, scope: !1731)
!1738 = !DILocation(line: 735, column: 39, scope: !1724)
!1739 = !DILocation(line: 735, column: 13, scope: !1724)
!1740 = !DILocation(line: 735, column: 27, scope: !1724)
!1741 = distinct !{!1741, !1721, !1742}
!1742 = !DILocation(line: 742, column: 13, scope: !1720)
!1743 = !DILocation(line: 734, column: 41, scope: !1716)
!1744 = !DILocation(line: 743, column: 13, scope: !1709)
!1745 = !DILocation(line: 743, column: 20, scope: !1709)
!1746 = !DILocation(line: 732, column: 29, scope: !1705)
!1747 = !DILocation(line: 732, column: 9, scope: !1705)
!1748 = distinct !{!1748, !1707, !1749}
!1749 = !DILocation(line: 744, column: 9, scope: !1706)
!1750 = !DILocation(line: 745, column: 5, scope: !1408)
!1751 = !DILocation(line: 747, column: 13, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1753, file: !3, line: 747, column: 13)
!1753 = distinct !DILexicalBlock(scope: !1754, file: !3, line: 746, column: 35)
!1754 = distinct !DILexicalBlock(scope: !1493, file: !3, line: 746, column: 5)
!1755 = !DILocation(line: 747, column: 13, scope: !1753)
!1756 = !DILocation(line: 748, column: 13, scope: !1752)
!1757 = !DILocation(line: 746, column: 31, scope: !1754)
!1758 = !DILocation(line: 746, column: 5, scope: !1754)
!1759 = !DILocation(line: 746, column: 19, scope: !1754)
!1760 = distinct !{!1760, !1494, !1761}
!1761 = !DILocation(line: 749, column: 5, scope: !1493)
!1762 = !DILocation(line: 750, column: 5, scope: !1385)
!1763 = !DILocation(line: 751, column: 5, scope: !1385)
!1764 = !DILocation(line: 752, column: 5, scope: !1385)
!1765 = !DILocation(line: 755, column: 9, scope: !1385)
!1766 = !DILocation(line: 756, column: 13, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1768, file: !3, line: 755, column: 17)
!1768 = distinct !DILexicalBlock(scope: !1385, file: !3, line: 755, column: 9)
!1769 = !DILocation(line: 757, column: 19, scope: !1767)
!1770 = !DILocation(line: 757, column: 9, scope: !1767)
!1771 = !DILocation(line: 758, column: 62, scope: !1767)
!1772 = !DILocation(line: 758, column: 66, scope: !1767)
!1773 = !DILocation(line: 758, column: 9, scope: !1767)
!1774 = !DILocation(line: 759, column: 9, scope: !1767)
!1775 = !DILocation(line: 760, column: 5, scope: !1767)
!1776 = !DILocation(line: 760, column: 28, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1768, file: !3, line: 760, column: 16)
!1778 = !DILocation(line: 760, column: 16, scope: !1777)
!1779 = !DILocation(line: 760, column: 16, scope: !1768)
!1780 = !DILocation(line: 761, column: 30, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1777, file: !3, line: 760, column: 43)
!1782 = !DILocation(line: 761, column: 9, scope: !1781)
!1783 = !DILocation(line: 762, column: 63, scope: !1781)
!1784 = !DILocation(line: 762, column: 67, scope: !1781)
!1785 = !DILocation(line: 762, column: 9, scope: !1781)
!1786 = !DILocation(line: 763, column: 5, scope: !1781)
!1787 = !DILocation(line: 0, scope: !1767)
!1788 = !DILocation(line: 764, column: 17, scope: !1385)
!1789 = !DILocation(line: 765, column: 5, scope: !1385)
!1790 = !DILocation(line: 766, column: 1, scope: !1385)
!1791 = distinct !DISubprogram(name: "bitcountCommand", scope: !3, file: !3, line: 769, type: !850, isLocal: false, isDefinition: true, scopeLine: 769, flags: DIFlagPrototyped, isOptimized: true, unit: !13, retainedNodes: !1792)
!1792 = !{!1793, !1794, !1795, !1796, !1797, !1798, !1799, !1803}
!1793 = !DILocalVariable(name: "c", arg: 1, scope: !1791, file: !3, line: 769, type: !714)
!1794 = !DILocalVariable(name: "o", scope: !1791, file: !3, line: 770, type: !824)
!1795 = !DILocalVariable(name: "start", scope: !1791, file: !3, line: 771, type: !12)
!1796 = !DILocalVariable(name: "end", scope: !1791, file: !3, line: 771, type: !12)
!1797 = !DILocalVariable(name: "strlen", scope: !1791, file: !3, line: 771, type: !12)
!1798 = !DILocalVariable(name: "p", scope: !1791, file: !3, line: 772, type: !22)
!1799 = !DILocalVariable(name: "llbuf", scope: !1791, file: !3, line: 773, type: !1800)
!1800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 168, elements: !1801)
!1801 = !{!1802}
!1802 = !DISubrange(count: 21)
!1803 = !DILocalVariable(name: "bytes", scope: !1804, file: !3, line: 811, type: !12)
!1804 = distinct !DILexicalBlock(scope: !1805, file: !3, line: 810, column: 12)
!1805 = distinct !DILexicalBlock(scope: !1791, file: !3, line: 808, column: 9)
!1806 = !DILocation(line: 769, column: 30, scope: !1791)
!1807 = !DILocation(line: 771, column: 5, scope: !1791)
!1808 = !DILocation(line: 773, column: 5, scope: !1791)
!1809 = !DILocation(line: 773, column: 10, scope: !1791)
!1810 = !DILocation(line: 776, column: 40, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1791, file: !3, line: 776, column: 9)
!1812 = !DILocation(line: 776, column: 37, scope: !1811)
!1813 = !DILocation(line: 776, column: 55, scope: !1811)
!1814 = !DILocation(line: 776, column: 14, scope: !1811)
!1815 = !DILocation(line: 770, column: 11, scope: !1791)
!1816 = !DILocation(line: 776, column: 63, scope: !1811)
!1817 = !DILocation(line: 776, column: 71, scope: !1811)
!1818 = !DILocation(line: 777, column: 9, scope: !1811)
!1819 = !DILocation(line: 776, column: 9, scope: !1791)
!1820 = !DILocation(line: 771, column: 22, scope: !1791)
!1821 = !DILocation(line: 778, column: 9, scope: !1791)
!1822 = !DILocation(line: 772, column: 20, scope: !1791)
!1823 = !DILocation(line: 781, column: 12, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1791, file: !3, line: 781, column: 9)
!1825 = !DILocation(line: 781, column: 17, scope: !1824)
!1826 = !DILocation(line: 781, column: 9, scope: !1791)
!1827 = !DILocation(line: 782, column: 43, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1829, file: !3, line: 782, column: 13)
!1829 = distinct !DILexicalBlock(scope: !1824, file: !3, line: 781, column: 23)
!1830 = !DILocation(line: 782, column: 40, scope: !1828)
!1831 = !DILocation(line: 771, column: 10, scope: !1791)
!1832 = !DILocation(line: 782, column: 13, scope: !1828)
!1833 = !DILocation(line: 782, column: 64, scope: !1828)
!1834 = !DILocation(line: 782, column: 13, scope: !1829)
!1835 = !DILocation(line: 784, column: 43, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1829, file: !3, line: 784, column: 13)
!1837 = !DILocation(line: 784, column: 40, scope: !1836)
!1838 = !DILocation(line: 771, column: 17, scope: !1791)
!1839 = !DILocation(line: 784, column: 13, scope: !1836)
!1840 = !DILocation(line: 784, column: 62, scope: !1836)
!1841 = !DILocation(line: 784, column: 13, scope: !1829)
!1842 = !DILocation(line: 787, column: 13, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1829, file: !3, line: 787, column: 13)
!1844 = !DILocation(line: 787, column: 26, scope: !1843)
!1845 = !DILocation(line: 787, column: 23, scope: !1843)
!1846 = !DILocation(line: 787, column: 43, scope: !1843)
!1847 = !DILocation(line: 787, column: 13, scope: !1829)
!1848 = !DILocation(line: 788, column: 31, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1843, file: !3, line: 787, column: 50)
!1850 = !DILocation(line: 788, column: 13, scope: !1849)
!1851 = !DILocation(line: 789, column: 13, scope: !1849)
!1852 = !DILocation(line: 791, column: 19, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1829, file: !3, line: 791, column: 13)
!1854 = !DILocation(line: 791, column: 13, scope: !1829)
!1855 = !DILocation(line: 791, column: 32, scope: !1853)
!1856 = !DILocation(line: 791, column: 38, scope: !1853)
!1857 = !DILocation(line: 791, column: 30, scope: !1853)
!1858 = !DILocation(line: 791, column: 24, scope: !1853)
!1859 = !DILocation(line: 792, column: 17, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1829, file: !3, line: 792, column: 13)
!1861 = !DILocation(line: 792, column: 13, scope: !1829)
!1862 = !DILocation(line: 792, column: 28, scope: !1860)
!1863 = !DILocation(line: 792, column: 34, scope: !1860)
!1864 = !DILocation(line: 792, column: 26, scope: !1860)
!1865 = !DILocation(line: 792, column: 22, scope: !1860)
!1866 = !DILocation(line: 793, column: 19, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1829, file: !3, line: 793, column: 13)
!1868 = !DILocation(line: 793, column: 13, scope: !1829)
!1869 = !DILocation(line: 793, column: 30, scope: !1867)
!1870 = !DILocation(line: 793, column: 24, scope: !1867)
!1871 = !DILocation(line: 794, column: 17, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1829, file: !3, line: 794, column: 13)
!1873 = !DILocation(line: 794, column: 13, scope: !1829)
!1874 = !DILocation(line: 794, column: 26, scope: !1872)
!1875 = !DILocation(line: 794, column: 22, scope: !1872)
!1876 = !DILocation(line: 795, column: 13, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1829, file: !3, line: 795, column: 13)
!1878 = !DILocation(line: 795, column: 20, scope: !1877)
!1879 = !DILocation(line: 795, column: 17, scope: !1877)
!1880 = !DILocation(line: 795, column: 13, scope: !1829)
!1881 = !DILocation(line: 795, column: 40, scope: !1877)
!1882 = !DILocation(line: 795, column: 28, scope: !1877)
!1883 = !DILocation(line: 796, column: 24, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1824, file: !3, line: 796, column: 16)
!1885 = !DILocation(line: 796, column: 16, scope: !1824)
!1886 = !DILocation(line: 798, column: 15, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1884, file: !3, line: 796, column: 30)
!1888 = !DILocation(line: 799, column: 15, scope: !1887)
!1889 = !DILocation(line: 799, column: 21, scope: !1887)
!1890 = !DILocation(line: 802, column: 27, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1884, file: !3, line: 800, column: 12)
!1892 = !DILocation(line: 802, column: 9, scope: !1891)
!1893 = !DILocation(line: 803, column: 9, scope: !1891)
!1894 = !DILocation(line: 0, scope: !1877)
!1895 = !DILocation(line: 808, column: 15, scope: !1805)
!1896 = !DILocation(line: 808, column: 17, scope: !1805)
!1897 = !DILocation(line: 808, column: 9, scope: !1805)
!1898 = !DILocation(line: 808, column: 9, scope: !1791)
!1899 = !DILocation(line: 809, column: 27, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1805, file: !3, line: 808, column: 22)
!1901 = !DILocation(line: 809, column: 9, scope: !1900)
!1902 = !DILocation(line: 810, column: 5, scope: !1900)
!1903 = !DILocation(line: 811, column: 25, scope: !1804)
!1904 = !DILocation(line: 811, column: 31, scope: !1804)
!1905 = !DILocation(line: 811, column: 14, scope: !1804)
!1906 = !DILocation(line: 813, column: 43, scope: !1804)
!1907 = !DILocation(line: 813, column: 28, scope: !1804)
!1908 = !DILocation(line: 813, column: 9, scope: !1804)
!1909 = !DILocation(line: 815, column: 1, scope: !1791)
!1910 = !DILocation(line: 0, scope: !1811)
!1911 = distinct !DISubprogram(name: "bitposCommand", scope: !3, file: !3, line: 818, type: !850, isLocal: false, isDefinition: true, scopeLine: 818, flags: DIFlagPrototyped, isOptimized: true, unit: !13, retainedNodes: !1912)
!1912 = !{!1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1925}
!1913 = !DILocalVariable(name: "c", arg: 1, scope: !1911, file: !3, line: 818, type: !714)
!1914 = !DILocalVariable(name: "o", scope: !1911, file: !3, line: 819, type: !824)
!1915 = !DILocalVariable(name: "bit", scope: !1911, file: !3, line: 820, type: !12)
!1916 = !DILocalVariable(name: "start", scope: !1911, file: !3, line: 820, type: !12)
!1917 = !DILocalVariable(name: "end", scope: !1911, file: !3, line: 820, type: !12)
!1918 = !DILocalVariable(name: "strlen", scope: !1911, file: !3, line: 820, type: !12)
!1919 = !DILocalVariable(name: "p", scope: !1911, file: !3, line: 821, type: !22)
!1920 = !DILocalVariable(name: "llbuf", scope: !1911, file: !3, line: 822, type: !1800)
!1921 = !DILocalVariable(name: "end_given", scope: !1911, file: !3, line: 823, type: !199)
!1922 = !DILocalVariable(name: "bytes", scope: !1923, file: !3, line: 876, type: !12)
!1923 = distinct !DILexicalBlock(scope: !1924, file: !3, line: 875, column: 12)
!1924 = distinct !DILexicalBlock(scope: !1911, file: !3, line: 873, column: 9)
!1925 = !DILocalVariable(name: "pos", scope: !1923, file: !3, line: 877, type: !12)
!1926 = !DILocation(line: 818, column: 28, scope: !1911)
!1927 = !DILocation(line: 820, column: 5, scope: !1911)
!1928 = !DILocation(line: 822, column: 5, scope: !1911)
!1929 = !DILocation(line: 822, column: 10, scope: !1911)
!1930 = !DILocation(line: 823, column: 9, scope: !1911)
!1931 = !DILocation(line: 827, column: 39, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1911, file: !3, line: 827, column: 9)
!1933 = !DILocation(line: 827, column: 36, scope: !1932)
!1934 = !DILocation(line: 820, column: 10, scope: !1911)
!1935 = !DILocation(line: 827, column: 9, scope: !1932)
!1936 = !DILocation(line: 827, column: 58, scope: !1932)
!1937 = !DILocation(line: 827, column: 9, scope: !1911)
!1938 = !DILocation(line: 829, column: 9, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1911, file: !3, line: 829, column: 9)
!1940 = !DILocation(line: 829, column: 18, scope: !1939)
!1941 = !DILocation(line: 830, column: 9, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1939, file: !3, line: 829, column: 31)
!1943 = !DILocation(line: 831, column: 9, scope: !1942)
!1944 = !DILocation(line: 837, column: 31, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1911, file: !3, line: 837, column: 9)
!1946 = !DILocation(line: 837, column: 37, scope: !1945)
!1947 = !DILocation(line: 837, column: 34, scope: !1945)
!1948 = !DILocation(line: 837, column: 14, scope: !1945)
!1949 = !DILocation(line: 819, column: 11, scope: !1911)
!1950 = !DILocation(line: 837, column: 47, scope: !1945)
!1951 = !DILocation(line: 837, column: 9, scope: !1911)
!1952 = !DILocation(line: 838, column: 29, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1945, file: !3, line: 837, column: 56)
!1954 = !DILocation(line: 838, column: 9, scope: !1953)
!1955 = !DILocation(line: 839, column: 9, scope: !1953)
!1956 = !DILocation(line: 841, column: 9, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1911, file: !3, line: 841, column: 9)
!1958 = !DILocation(line: 841, column: 9, scope: !1911)
!1959 = !DILocation(line: 820, column: 27, scope: !1911)
!1960 = !DILocation(line: 842, column: 9, scope: !1911)
!1961 = !DILocation(line: 821, column: 20, scope: !1911)
!1962 = !DILocation(line: 845, column: 12, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1911, file: !3, line: 845, column: 9)
!1964 = !DILocation(line: 845, column: 17, scope: !1963)
!1965 = !DILocation(line: 845, column: 22, scope: !1963)
!1966 = !DILocation(line: 845, column: 33, scope: !1963)
!1967 = !DILocation(line: 845, column: 9, scope: !1911)
!1968 = !DILocation(line: 846, column: 43, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1970, file: !3, line: 846, column: 13)
!1970 = distinct !DILexicalBlock(scope: !1963, file: !3, line: 845, column: 39)
!1971 = !DILocation(line: 846, column: 40, scope: !1969)
!1972 = !DILocation(line: 820, column: 15, scope: !1911)
!1973 = !DILocation(line: 846, column: 13, scope: !1969)
!1974 = !DILocation(line: 846, column: 64, scope: !1969)
!1975 = !DILocation(line: 846, column: 13, scope: !1970)
!1976 = !DILocation(line: 848, column: 16, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1970, file: !3, line: 848, column: 13)
!1978 = !DILocation(line: 848, column: 21, scope: !1977)
!1979 = !DILocation(line: 848, column: 13, scope: !1970)
!1980 = !DILocation(line: 849, column: 47, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1982, file: !3, line: 849, column: 17)
!1982 = distinct !DILexicalBlock(scope: !1977, file: !3, line: 848, column: 27)
!1983 = !DILocation(line: 849, column: 44, scope: !1981)
!1984 = !DILocation(line: 820, column: 22, scope: !1911)
!1985 = !DILocation(line: 849, column: 17, scope: !1981)
!1986 = !DILocation(line: 849, column: 66, scope: !1981)
!1987 = !DILocation(line: 849, column: 17, scope: !1982)
!1988 = !DILocation(line: 0, scope: !1981)
!1989 = !DILocation(line: 853, column: 19, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1977, file: !3, line: 852, column: 16)
!1991 = !DILocation(line: 853, column: 25, scope: !1990)
!1992 = !DILocation(line: 853, column: 17, scope: !1990)
!1993 = !DILocation(line: 0, scope: !1911)
!1994 = !DILocation(line: 856, column: 13, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1970, file: !3, line: 856, column: 13)
!1996 = !DILocation(line: 856, column: 19, scope: !1995)
!1997 = !DILocation(line: 856, column: 13, scope: !1970)
!1998 = !DILocation(line: 856, column: 32, scope: !1995)
!1999 = !DILocation(line: 856, column: 38, scope: !1995)
!2000 = !DILocation(line: 856, column: 30, scope: !1995)
!2001 = !DILocation(line: 856, column: 24, scope: !1995)
!2002 = !DILocation(line: 857, column: 13, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !1970, file: !3, line: 857, column: 13)
!2004 = !DILocation(line: 857, column: 17, scope: !2003)
!2005 = !DILocation(line: 857, column: 13, scope: !1970)
!2006 = !DILocation(line: 857, column: 28, scope: !2003)
!2007 = !DILocation(line: 857, column: 34, scope: !2003)
!2008 = !DILocation(line: 857, column: 26, scope: !2003)
!2009 = !DILocation(line: 857, column: 22, scope: !2003)
!2010 = !DILocation(line: 858, column: 19, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !1970, file: !3, line: 858, column: 13)
!2012 = !DILocation(line: 858, column: 13, scope: !1970)
!2013 = !DILocation(line: 858, column: 30, scope: !2011)
!2014 = !DILocation(line: 858, column: 24, scope: !2011)
!2015 = !DILocation(line: 859, column: 17, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !1970, file: !3, line: 859, column: 13)
!2017 = !DILocation(line: 859, column: 13, scope: !1970)
!2018 = !DILocation(line: 859, column: 26, scope: !2016)
!2019 = !DILocation(line: 859, column: 22, scope: !2016)
!2020 = !DILocation(line: 860, column: 13, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !1970, file: !3, line: 860, column: 13)
!2022 = !DILocation(line: 860, column: 20, scope: !2021)
!2023 = !DILocation(line: 860, column: 17, scope: !2021)
!2024 = !DILocation(line: 860, column: 13, scope: !1970)
!2025 = !DILocation(line: 860, column: 40, scope: !2021)
!2026 = !DILocation(line: 860, column: 28, scope: !2021)
!2027 = !DILocation(line: 861, column: 24, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !1963, file: !3, line: 861, column: 16)
!2029 = !DILocation(line: 861, column: 16, scope: !1963)
!2030 = !DILocation(line: 863, column: 15, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !2028, file: !3, line: 861, column: 30)
!2032 = !DILocation(line: 864, column: 15, scope: !2031)
!2033 = !DILocation(line: 864, column: 21, scope: !2031)
!2034 = !DILocation(line: 867, column: 27, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2028, file: !3, line: 865, column: 12)
!2036 = !DILocation(line: 867, column: 9, scope: !2035)
!2037 = !DILocation(line: 868, column: 9, scope: !2035)
!2038 = !DILocation(line: 0, scope: !2021)
!2039 = !DILocation(line: 873, column: 15, scope: !1924)
!2040 = !DILocation(line: 873, column: 17, scope: !1924)
!2041 = !DILocation(line: 873, column: 9, scope: !1924)
!2042 = !DILocation(line: 873, column: 9, scope: !1911)
!2043 = !DILocation(line: 874, column: 9, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !1924, file: !3, line: 873, column: 22)
!2045 = !DILocation(line: 875, column: 5, scope: !2044)
!2046 = !DILocation(line: 876, column: 25, scope: !1923)
!2047 = !DILocation(line: 876, column: 31, scope: !1923)
!2048 = !DILocation(line: 876, column: 14, scope: !1923)
!2049 = !DILocation(line: 877, column: 33, scope: !1923)
!2050 = !DILocation(line: 877, column: 46, scope: !1923)
!2051 = !DILocation(line: 877, column: 20, scope: !1923)
!2052 = !DILocation(line: 877, column: 14, scope: !1923)
!2053 = !DILocation(line: 886, column: 13, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !1923, file: !3, line: 886, column: 13)
!2055 = !DILocation(line: 886, column: 26, scope: !2054)
!2056 = !DILocation(line: 886, column: 30, scope: !2054)
!2057 = !DILocation(line: 886, column: 23, scope: !2054)
!2058 = !DILocation(line: 886, column: 50, scope: !2054)
!2059 = !DILocation(line: 886, column: 42, scope: !2054)
!2060 = !DILocation(line: 886, column: 13, scope: !1923)
!2061 = !DILocation(line: 887, column: 13, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2054, file: !3, line: 886, column: 54)
!2063 = !DILocation(line: 888, column: 13, scope: !2062)
!2064 = !DILocation(line: 890, column: 17, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !1923, file: !3, line: 890, column: 13)
!2066 = !DILocation(line: 890, column: 13, scope: !1923)
!2067 = !DILocation(line: 890, column: 31, scope: !2065)
!2068 = !DILocation(line: 890, column: 36, scope: !2065)
!2069 = !DILocation(line: 890, column: 28, scope: !2065)
!2070 = !DILocation(line: 890, column: 24, scope: !2065)
!2071 = !DILocation(line: 0, scope: !1923)
!2072 = !DILocation(line: 891, column: 9, scope: !1923)
!2073 = !DILocation(line: 892, column: 5, scope: !1924)
!2074 = !DILocation(line: 893, column: 1, scope: !1911)
!2075 = distinct !DISubprogram(name: "bitfieldCommand", scope: !3, file: !3, line: 914, type: !850, isLocal: false, isDefinition: true, scopeLine: 914, flags: DIFlagPrototyped, isOptimized: true, unit: !13, retainedNodes: !2076)
!2076 = !{!2077, !2078, !2079, !2080, !2081, !2082, !2083, !2093, !2094, !2095, !2096, !2100, !2101, !2102, !2103, !2104, !2105, !2111, !2115, !2120, !2121, !2122, !2123, !2124, !2126, !2127, !2128, !2129, !2130, !2135, !2136, !2137, !2138, !2139, !2140, !2143}
!2077 = !DILocalVariable(name: "c", arg: 1, scope: !2075, file: !3, line: 914, type: !714)
!2078 = !DILocalVariable(name: "o", scope: !2075, file: !3, line: 915, type: !824)
!2079 = !DILocalVariable(name: "bitoffset", scope: !2075, file: !3, line: 916, type: !6)
!2080 = !DILocalVariable(name: "j", scope: !2075, file: !3, line: 917, type: !199)
!2081 = !DILocalVariable(name: "numops", scope: !2075, file: !3, line: 917, type: !199)
!2082 = !DILocalVariable(name: "changes", scope: !2075, file: !3, line: 917, type: !199)
!2083 = !DILocalVariable(name: "ops", scope: !2075, file: !3, line: 918, type: !2084)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitfieldOp", file: !3, line: 905, size: 256, elements: !2086)
!2086 = !{!2087, !2088, !2089, !2090, !2091, !2092}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2085, file: !3, line: 906, baseType: !25, size: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "i64", scope: !2085, file: !3, line: 907, baseType: !27, size: 64, offset: 64)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !2085, file: !3, line: 908, baseType: !199, size: 32, offset: 128)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "owtype", scope: !2085, file: !3, line: 909, baseType: !199, size: 32, offset: 160)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2085, file: !3, line: 910, baseType: !199, size: 32, offset: 192)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !2085, file: !3, line: 911, baseType: !199, size: 32, offset: 224)
!2093 = !DILocalVariable(name: "owtype", scope: !2075, file: !3, line: 919, type: !199)
!2094 = !DILocalVariable(name: "readonly", scope: !2075, file: !3, line: 920, type: !199)
!2095 = !DILocalVariable(name: "highest_write_offset", scope: !2075, file: !3, line: 921, type: !6)
!2096 = !DILocalVariable(name: "remargs", scope: !2097, file: !3, line: 924, type: !199)
!2097 = distinct !DILexicalBlock(scope: !2098, file: !3, line: 923, column: 35)
!2098 = distinct !DILexicalBlock(scope: !2099, file: !3, line: 923, column: 5)
!2099 = distinct !DILexicalBlock(scope: !2075, file: !3, line: 923, column: 5)
!2100 = !DILocalVariable(name: "subcmd", scope: !2097, file: !3, line: 925, type: !835)
!2101 = !DILocalVariable(name: "opcode", scope: !2097, file: !3, line: 926, type: !199)
!2102 = !DILocalVariable(name: "i64", scope: !2097, file: !3, line: 927, type: !793)
!2103 = !DILocalVariable(name: "sign", scope: !2097, file: !3, line: 928, type: !199)
!2104 = !DILocalVariable(name: "bits", scope: !2097, file: !3, line: 929, type: !199)
!2105 = !DILocalVariable(name: "owtypename", scope: !2106, file: !3, line: 938, type: !835)
!2106 = distinct !DILexicalBlock(scope: !2107, file: !3, line: 937, column: 66)
!2107 = distinct !DILexicalBlock(scope: !2108, file: !3, line: 937, column: 18)
!2108 = distinct !DILexicalBlock(scope: !2109, file: !3, line: 935, column: 18)
!2109 = distinct !DILexicalBlock(scope: !2110, file: !3, line: 933, column: 18)
!2110 = distinct !DILexicalBlock(scope: !2097, file: !3, line: 931, column: 13)
!2111 = !DILocalVariable(name: "thisop", scope: !2112, file: !3, line: 1015, type: !2084)
!2112 = distinct !DILexicalBlock(scope: !2113, file: !3, line: 1014, column: 34)
!2113 = distinct !DILexicalBlock(scope: !2114, file: !3, line: 1014, column: 5)
!2114 = distinct !DILexicalBlock(scope: !2075, file: !3, line: 1014, column: 5)
!2115 = !DILocalVariable(name: "oldval", scope: !2116, file: !3, line: 1029, type: !27)
!2116 = distinct !DILexicalBlock(scope: !2117, file: !3, line: 1028, column: 31)
!2117 = distinct !DILexicalBlock(scope: !2118, file: !3, line: 1028, column: 17)
!2118 = distinct !DILexicalBlock(scope: !2119, file: !3, line: 1020, column: 9)
!2119 = distinct !DILexicalBlock(scope: !2112, file: !3, line: 1018, column: 13)
!2120 = !DILocalVariable(name: "newval", scope: !2116, file: !3, line: 1029, type: !27)
!2121 = !DILocalVariable(name: "wrapped", scope: !2116, file: !3, line: 1029, type: !27)
!2122 = !DILocalVariable(name: "retval", scope: !2116, file: !3, line: 1029, type: !27)
!2123 = !DILocalVariable(name: "overflow", scope: !2116, file: !3, line: 1030, type: !199)
!2124 = !DILocalVariable(name: "oldval", scope: !2125, file: !3, line: 1059, type: !25)
!2125 = distinct !DILexicalBlock(scope: !2117, file: !3, line: 1058, column: 20)
!2126 = !DILocalVariable(name: "newval", scope: !2125, file: !3, line: 1059, type: !25)
!2127 = !DILocalVariable(name: "wrapped", scope: !2125, file: !3, line: 1059, type: !25)
!2128 = !DILocalVariable(name: "retval", scope: !2125, file: !3, line: 1059, type: !25)
!2129 = !DILocalVariable(name: "overflow", scope: !2125, file: !3, line: 1060, type: !199)
!2130 = !DILocalVariable(name: "buf", scope: !2131, file: !3, line: 1091, type: !2132)
!2131 = distinct !DILexicalBlock(scope: !2119, file: !3, line: 1089, column: 16)
!2132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 72, elements: !2133)
!2133 = !{!2134}
!2134 = !DISubrange(count: 9)
!2135 = !DILocalVariable(name: "strlen", scope: !2131, file: !3, line: 1092, type: !12)
!2136 = !DILocalVariable(name: "src", scope: !2131, file: !3, line: 1093, type: !22)
!2137 = !DILocalVariable(name: "llbuf", scope: !2131, file: !3, line: 1094, type: !1800)
!2138 = !DILocalVariable(name: "i", scope: !2131, file: !3, line: 1104, type: !199)
!2139 = !DILocalVariable(name: "byte", scope: !2131, file: !3, line: 1105, type: !6)
!2140 = !DILocalVariable(name: "val", scope: !2141, file: !3, line: 1114, type: !27)
!2141 = distinct !DILexicalBlock(scope: !2142, file: !3, line: 1113, column: 31)
!2142 = distinct !DILexicalBlock(scope: !2131, file: !3, line: 1113, column: 17)
!2143 = !DILocalVariable(name: "val", scope: !2144, file: !3, line: 1118, type: !25)
!2144 = distinct !DILexicalBlock(scope: !2142, file: !3, line: 1117, column: 20)
!2145 = !DILocation(line: 914, column: 30, scope: !2075)
!2146 = !DILocation(line: 916, column: 5, scope: !2075)
!2147 = !DILocation(line: 917, column: 12, scope: !2075)
!2148 = !DILocation(line: 917, column: 24, scope: !2075)
!2149 = !DILocation(line: 918, column: 24, scope: !2075)
!2150 = !DILocation(line: 919, column: 9, scope: !2075)
!2151 = !DILocation(line: 920, column: 9, scope: !2075)
!2152 = !DILocation(line: 921, column: 12, scope: !2075)
!2153 = !DILocation(line: 917, column: 9, scope: !2075)
!2154 = !DILocation(line: 923, column: 10, scope: !2099)
!2155 = !DILocation(line: 923, column: 24, scope: !2098)
!2156 = !DILocation(line: 923, column: 19, scope: !2098)
!2157 = !DILocation(line: 923, column: 5, scope: !2099)
!2158 = !DILocation(line: 993, column: 9, scope: !2075)
!2159 = !DILocation(line: 924, column: 32, scope: !2097)
!2160 = !DILocation(line: 924, column: 13, scope: !2097)
!2161 = !DILocation(line: 925, column: 27, scope: !2097)
!2162 = !DILocation(line: 925, column: 24, scope: !2097)
!2163 = !DILocation(line: 925, column: 36, scope: !2097)
!2164 = !DILocation(line: 925, column: 15, scope: !2097)
!2165 = !DILocation(line: 927, column: 9, scope: !2097)
!2166 = !DILocation(line: 927, column: 19, scope: !2097)
!2167 = !DILocation(line: 928, column: 9, scope: !2097)
!2168 = !DILocation(line: 928, column: 13, scope: !2097)
!2169 = !DILocation(line: 929, column: 9, scope: !2097)
!2170 = !DILocation(line: 929, column: 13, scope: !2097)
!2171 = !DILocation(line: 931, column: 14, scope: !2110)
!2172 = !DILocation(line: 931, column: 50, scope: !2110)
!2173 = !DILocation(line: 931, column: 39, scope: !2110)
!2174 = !DILocation(line: 933, column: 19, scope: !2109)
!2175 = !DILocation(line: 933, column: 55, scope: !2109)
!2176 = !DILocation(line: 933, column: 44, scope: !2109)
!2177 = !DILocation(line: 935, column: 19, scope: !2108)
!2178 = !DILocation(line: 935, column: 47, scope: !2108)
!2179 = !DILocation(line: 937, column: 19, scope: !2107)
!2180 = !DILocation(line: 937, column: 60, scope: !2107)
!2181 = !DILocation(line: 937, column: 49, scope: !2107)
!2182 = !DILocation(line: 938, column: 41, scope: !2106)
!2183 = !DILocation(line: 938, column: 32, scope: !2106)
!2184 = !DILocation(line: 938, column: 46, scope: !2106)
!2185 = !DILocation(line: 938, column: 19, scope: !2106)
!2186 = !DILocation(line: 940, column: 18, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2106, file: !3, line: 940, column: 17)
!2188 = !DILocation(line: 940, column: 17, scope: !2106)
!2189 = !DILocation(line: 942, column: 23, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2187, file: !3, line: 942, column: 22)
!2191 = !DILocation(line: 942, column: 22, scope: !2187)
!2192 = !DILocation(line: 944, column: 23, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2190, file: !3, line: 944, column: 22)
!2194 = !DILocation(line: 944, column: 22, scope: !2190)
!2195 = !DILocation(line: 947, column: 17, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2193, file: !3, line: 946, column: 18)
!2197 = !DILocation(line: 948, column: 17, scope: !2196)
!2198 = !DILocation(line: 949, column: 17, scope: !2196)
!2199 = !DILocation(line: 991, column: 5, scope: !2098)
!2200 = !DILocation(line: 953, column: 31, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2107, file: !3, line: 952, column: 16)
!2202 = !DILocation(line: 953, column: 13, scope: !2201)
!2203 = !DILocation(line: 954, column: 13, scope: !2201)
!2204 = !DILocation(line: 955, column: 13, scope: !2201)
!2205 = !DILocation(line: 0, scope: !2108)
!2206 = !DILocation(line: 926, column: 13, scope: !2097)
!2207 = !DILocation(line: 959, column: 52, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2097, file: !3, line: 959, column: 13)
!2209 = !DILocation(line: 959, column: 43, scope: !2208)
!2210 = !DILocation(line: 959, column: 13, scope: !2208)
!2211 = !DILocation(line: 959, column: 69, scope: !2208)
!2212 = !DILocation(line: 959, column: 13, scope: !2097)
!2213 = !DILocation(line: 960, column: 13, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2208, file: !3, line: 959, column: 78)
!2215 = !DILocation(line: 961, column: 13, scope: !2214)
!2216 = !DILocation(line: 964, column: 43, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2097, file: !3, line: 964, column: 13)
!2218 = !DILocation(line: 964, column: 49, scope: !2217)
!2219 = !DILocation(line: 964, column: 40, scope: !2217)
!2220 = !DILocation(line: 964, column: 66, scope: !2217)
!2221 = !DILocation(line: 916, column: 12, scope: !2075)
!2222 = !DILocation(line: 964, column: 13, scope: !2217)
!2223 = !DILocation(line: 964, column: 72, scope: !2217)
!2224 = !DILocation(line: 964, column: 13, scope: !2097)
!2225 = !DILocation(line: 965, column: 13, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2217, file: !3, line: 964, column: 80)
!2227 = !DILocation(line: 966, column: 13, scope: !2226)
!2228 = !DILocation(line: 969, column: 20, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !2097, file: !3, line: 969, column: 13)
!2230 = !DILocation(line: 969, column: 13, scope: !2097)
!2231 = !DILocation(line: 0, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2233, file: !3, line: 971, column: 17)
!2233 = distinct !DILexicalBlock(scope: !2229, file: !3, line: 969, column: 39)
!2234 = !DILocation(line: 971, column: 52, scope: !2232)
!2235 = !DILocation(line: 971, column: 50, scope: !2232)
!2236 = !DILocation(line: 971, column: 57, scope: !2232)
!2237 = !DILocation(line: 971, column: 38, scope: !2232)
!2238 = !DILocation(line: 971, column: 17, scope: !2233)
!2239 = !DILocation(line: 972, column: 17, scope: !2232)
!2240 = !DILocation(line: 0, scope: !2075)
!2241 = !DILocation(line: 974, column: 51, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2233, file: !3, line: 974, column: 17)
!2243 = !DILocation(line: 974, column: 57, scope: !2242)
!2244 = !DILocation(line: 974, column: 48, scope: !2242)
!2245 = !DILocation(line: 974, column: 17, scope: !2242)
!2246 = !DILocation(line: 974, column: 72, scope: !2242)
!2247 = !DILocation(line: 974, column: 17, scope: !2233)
!2248 = !DILocation(line: 975, column: 17, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2242, file: !3, line: 974, column: 80)
!2250 = !DILocation(line: 976, column: 17, scope: !2249)
!2251 = !DILocation(line: 981, column: 48, scope: !2097)
!2252 = !DILocation(line: 981, column: 41, scope: !2097)
!2253 = !DILocation(line: 981, column: 40, scope: !2097)
!2254 = !DILocation(line: 981, column: 15, scope: !2097)
!2255 = !DILocation(line: 982, column: 9, scope: !2097)
!2256 = !DILocation(line: 982, column: 21, scope: !2097)
!2257 = !DILocation(line: 982, column: 28, scope: !2097)
!2258 = !{!2259, !250, i64 0}
!2259 = !{!"bitfieldOp", !250, i64 0, !250, i64 8, !123, i64 16, !123, i64 20, !123, i64 24, !123, i64 28}
!2260 = !DILocation(line: 983, column: 27, scope: !2097)
!2261 = !DILocation(line: 983, column: 21, scope: !2097)
!2262 = !DILocation(line: 983, column: 25, scope: !2097)
!2263 = !{!2259, !250, i64 8}
!2264 = !DILocation(line: 984, column: 21, scope: !2097)
!2265 = !DILocation(line: 984, column: 28, scope: !2097)
!2266 = !{!2259, !123, i64 16}
!2267 = !DILocation(line: 985, column: 21, scope: !2097)
!2268 = !DILocation(line: 985, column: 28, scope: !2097)
!2269 = !{!2259, !123, i64 20}
!2270 = !DILocation(line: 986, column: 21, scope: !2097)
!2271 = !DILocation(line: 986, column: 26, scope: !2097)
!2272 = !{!2259, !123, i64 24}
!2273 = !DILocation(line: 987, column: 28, scope: !2097)
!2274 = !DILocation(line: 987, column: 21, scope: !2097)
!2275 = !DILocation(line: 987, column: 26, scope: !2097)
!2276 = !{!2259, !123, i64 28}
!2277 = !DILocation(line: 990, column: 16, scope: !2097)
!2278 = !DILocation(line: 990, column: 11, scope: !2097)
!2279 = !DILocation(line: 0, scope: !2201)
!2280 = !DILocation(line: 0, scope: !2187)
!2281 = !DILocation(line: 951, column: 13, scope: !2106)
!2282 = !DILocation(line: 923, column: 31, scope: !2098)
!2283 = !DILocation(line: 923, column: 5, scope: !2098)
!2284 = distinct !{!2284, !2157, !2285}
!2285 = !DILocation(line: 991, column: 5, scope: !2099)
!2286 = !DILocation(line: 993, column: 9, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2075, file: !3, line: 993, column: 9)
!2288 = !DILocation(line: 996, column: 30, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2287, file: !3, line: 993, column: 19)
!2290 = !DILocation(line: 996, column: 36, scope: !2289)
!2291 = !DILocation(line: 996, column: 33, scope: !2289)
!2292 = !DILocation(line: 996, column: 13, scope: !2289)
!2293 = !DILocation(line: 915, column: 11, scope: !2075)
!2294 = !DILocation(line: 997, column: 15, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2289, file: !3, line: 997, column: 13)
!2296 = !DILocation(line: 997, column: 23, scope: !2295)
!2297 = !DILocation(line: 997, column: 26, scope: !2295)
!2298 = !DILocation(line: 997, column: 13, scope: !2289)
!2299 = !DILocation(line: 998, column: 13, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2295, file: !3, line: 997, column: 53)
!2301 = !DILocation(line: 999, column: 13, scope: !2300)
!2302 = !DILocation(line: 1004, column: 18, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2304, file: !3, line: 1004, column: 13)
!2304 = distinct !DILexicalBlock(scope: !2287, file: !3, line: 1001, column: 12)
!2305 = !DILocation(line: 1005, column: 36, scope: !2303)
!2306 = !DILocation(line: 1004, column: 13, scope: !2304)
!2307 = !DILocation(line: 1006, column: 13, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2303, file: !3, line: 1005, column: 45)
!2309 = !DILocation(line: 1007, column: 13, scope: !2308)
!2310 = !DILocation(line: 0, scope: !2303)
!2311 = !DILocation(line: 1011, column: 28, scope: !2075)
!2312 = !DILocation(line: 1011, column: 5, scope: !2075)
!2313 = !DILocation(line: 1014, column: 10, scope: !2114)
!2314 = !DILocation(line: 1014, column: 19, scope: !2113)
!2315 = !DILocation(line: 1014, column: 5, scope: !2114)
!2316 = !DILocation(line: 1015, column: 40, scope: !2112)
!2317 = !DILocation(line: 1015, column: 28, scope: !2112)
!2318 = !DILocation(line: 1018, column: 21, scope: !2119)
!2319 = !DILocation(line: 1018, column: 28, scope: !2119)
!2320 = !DILocation(line: 1018, column: 46, scope: !2119)
!2321 = !DILocation(line: 1019, column: 28, scope: !2119)
!2322 = !DILocation(line: 1018, column: 13, scope: !2112)
!2323 = !DILocation(line: 1028, column: 25, scope: !2117)
!2324 = !DILocation(line: 1028, column: 17, scope: !2117)
!2325 = !DILocation(line: 1028, column: 17, scope: !2118)
!2326 = !DILocation(line: 1029, column: 17, scope: !2116)
!2327 = !DILocation(line: 1032, column: 47, scope: !2116)
!2328 = !DILocation(line: 1032, column: 59, scope: !2116)
!2329 = !DILocation(line: 1033, column: 33, scope: !2116)
!2330 = !DILocation(line: 1033, column: 25, scope: !2116)
!2331 = !DILocation(line: 243, column: 42, scope: !440, inlinedAt: !2332)
!2332 = distinct !DILocation(line: 1032, column: 26, scope: !2116)
!2333 = !DILocation(line: 243, column: 54, scope: !440, inlinedAt: !2332)
!2334 = !DILocation(line: 243, column: 71, scope: !440, inlinedAt: !2332)
!2335 = !DILocation(line: 229, column: 45, scope: !398, inlinedAt: !2336)
!2336 = distinct !DILocation(line: 254, column: 14, scope: !440, inlinedAt: !2332)
!2337 = !DILocation(line: 229, column: 57, scope: !398, inlinedAt: !2336)
!2338 = !DILocation(line: 229, column: 74, scope: !398, inlinedAt: !2336)
!2339 = !DILocation(line: 230, column: 45, scope: !398, inlinedAt: !2336)
!2340 = !DILocation(line: 230, column: 42, scope: !398, inlinedAt: !2336)
!2341 = !DILocation(line: 232, column: 10, scope: !417, inlinedAt: !2336)
!2342 = !DILocation(line: 232, column: 19, scope: !419, inlinedAt: !2336)
!2343 = !DILocation(line: 232, column: 5, scope: !417, inlinedAt: !2336)
!2344 = !DILocation(line: 233, column: 23, scope: !422, inlinedAt: !2336)
!2345 = !DILocation(line: 230, column: 14, scope: !398, inlinedAt: !2336)
!2346 = !DILocation(line: 234, column: 27, scope: !422, inlinedAt: !2336)
!2347 = !DILocation(line: 234, column: 17, scope: !422, inlinedAt: !2336)
!2348 = !DILocation(line: 230, column: 20, scope: !398, inlinedAt: !2336)
!2349 = !DILocation(line: 235, column: 19, scope: !422, inlinedAt: !2336)
!2350 = !DILocation(line: 230, column: 25, scope: !398, inlinedAt: !2336)
!2351 = !DILocation(line: 236, column: 27, scope: !422, inlinedAt: !2336)
!2352 = !DILocation(line: 236, column: 35, scope: !422, inlinedAt: !2336)
!2353 = !DILocation(line: 230, column: 34, scope: !398, inlinedAt: !2336)
!2354 = !DILocation(line: 237, column: 23, scope: !422, inlinedAt: !2336)
!2355 = !DILocation(line: 237, column: 28, scope: !422, inlinedAt: !2336)
!2356 = !DILocation(line: 238, column: 15, scope: !422, inlinedAt: !2336)
!2357 = !DILocation(line: 232, column: 5, scope: !419, inlinedAt: !2336)
!2358 = !DILocation(line: 240, column: 5, scope: !398, inlinedAt: !2336)
!2359 = !DILocation(line: 0, scope: !422, inlinedAt: !2336)
!2360 = !DILocation(line: 245, column: 36, scope: !440, inlinedAt: !2332)
!2361 = !DILocation(line: 244, column: 13, scope: !440, inlinedAt: !2332)
!2362 = !DILocation(line: 260, column: 38, scope: !484, inlinedAt: !2332)
!2363 = !DILocation(line: 260, column: 30, scope: !484, inlinedAt: !2332)
!2364 = !DILocation(line: 260, column: 15, scope: !484, inlinedAt: !2332)
!2365 = !DILocation(line: 260, column: 9, scope: !440, inlinedAt: !2332)
!2366 = !DILocation(line: 261, column: 33, scope: !484, inlinedAt: !2332)
!2367 = !DILocation(line: 261, column: 15, scope: !484, inlinedAt: !2332)
!2368 = !DILocation(line: 261, column: 9, scope: !484, inlinedAt: !2332)
!2369 = !DILocation(line: 0, scope: !440, inlinedAt: !2332)
!2370 = !DILocation(line: 262, column: 5, scope: !440, inlinedAt: !2332)
!2371 = !DILocation(line: 1029, column: 25, scope: !2116)
!2372 = !DILocation(line: 1035, column: 36, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2116, file: !3, line: 1035, column: 21)
!2374 = !DILocation(line: 1035, column: 21, scope: !2116)
!2375 = !DILocation(line: 0, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2373, file: !3, line: 1041, column: 24)
!2377 = !DILocation(line: 1036, column: 37, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2373, file: !3, line: 1035, column: 58)
!2379 = !DILocation(line: 1029, column: 33, scope: !2116)
!2380 = !DILocation(line: 1038, column: 62, scope: !2378)
!2381 = !DILocation(line: 1029, column: 41, scope: !2116)
!2382 = !DILocation(line: 1037, column: 32, scope: !2378)
!2383 = !DILocation(line: 1030, column: 21, scope: !2116)
!2384 = !DILocation(line: 1039, column: 25, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2378, file: !3, line: 1039, column: 25)
!2386 = !DILocation(line: 1039, column: 25, scope: !2378)
!2387 = !DILocation(line: 1039, column: 44, scope: !2385)
!2388 = !DILocation(line: 1039, column: 35, scope: !2385)
!2389 = !DILocation(line: 1044, column: 52, scope: !2376)
!2390 = !DILocation(line: 1043, column: 32, scope: !2376)
!2391 = !DILocation(line: 1045, column: 25, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2376, file: !3, line: 1045, column: 25)
!2393 = !DILocation(line: 1045, column: 25, scope: !2376)
!2394 = !DILocation(line: 1045, column: 44, scope: !2392)
!2395 = !DILocation(line: 1045, column: 35, scope: !2392)
!2396 = !DILocation(line: 0, scope: !2392)
!2397 = !DILocation(line: 1029, column: 50, scope: !2116)
!2398 = !DILocation(line: 1051, column: 23, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2116, file: !3, line: 1051, column: 21)
!2400 = !DILocation(line: 1051, column: 32, scope: !2399)
!2401 = !DILocation(line: 1051, column: 43, scope: !2399)
!2402 = !DILocation(line: 1051, column: 50, scope: !2399)
!2403 = !DILocation(line: 1051, column: 21, scope: !2116)
!2404 = !DILocation(line: 1052, column: 21, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2399, file: !3, line: 1051, column: 71)
!2406 = !DILocation(line: 1053, column: 42, scope: !2405)
!2407 = !DILocation(line: 1053, column: 54, scope: !2405)
!2408 = !DILocation(line: 1054, column: 47, scope: !2405)
!2409 = !DILocation(line: 1054, column: 39, scope: !2405)
!2410 = !DILocation(line: 224, column: 39, scope: !350, inlinedAt: !2411)
!2411 = distinct !DILocation(line: 1053, column: 21, scope: !2405)
!2412 = !DILocation(line: 224, column: 51, scope: !350, inlinedAt: !2411)
!2413 = !DILocation(line: 224, column: 68, scope: !350, inlinedAt: !2411)
!2414 = !DILocation(line: 224, column: 82, scope: !350, inlinedAt: !2411)
!2415 = !DILocation(line: 225, column: 14, scope: !350, inlinedAt: !2411)
!2416 = !DILocation(line: 209, column: 41, scope: !300, inlinedAt: !2417)
!2417 = distinct !DILocation(line: 226, column: 5, scope: !350, inlinedAt: !2411)
!2418 = !DILocation(line: 209, column: 53, scope: !300, inlinedAt: !2417)
!2419 = !DILocation(line: 209, column: 70, scope: !300, inlinedAt: !2417)
!2420 = !DILocation(line: 209, column: 85, scope: !300, inlinedAt: !2417)
!2421 = !DILocation(line: 210, column: 42, scope: !300, inlinedAt: !2417)
!2422 = !DILocation(line: 212, column: 10, scope: !319, inlinedAt: !2417)
!2423 = !DILocation(line: 212, column: 19, scope: !321, inlinedAt: !2417)
!2424 = !DILocation(line: 212, column: 5, scope: !319, inlinedAt: !2417)
!2425 = !DILocation(line: 213, column: 48, scope: !324, inlinedAt: !2417)
!2426 = !DILocation(line: 213, column: 39, scope: !324, inlinedAt: !2417)
!2427 = !DILocation(line: 213, column: 25, scope: !324, inlinedAt: !2417)
!2428 = !DILocation(line: 213, column: 54, scope: !324, inlinedAt: !2417)
!2429 = !DILocation(line: 213, column: 18, scope: !324, inlinedAt: !2417)
!2430 = !DILocation(line: 210, column: 34, scope: !300, inlinedAt: !2417)
!2431 = !DILocation(line: 214, column: 23, scope: !324, inlinedAt: !2417)
!2432 = !DILocation(line: 210, column: 14, scope: !300, inlinedAt: !2417)
!2433 = !DILocation(line: 215, column: 27, scope: !324, inlinedAt: !2417)
!2434 = !DILocation(line: 215, column: 17, scope: !324, inlinedAt: !2417)
!2435 = !DILocation(line: 210, column: 20, scope: !300, inlinedAt: !2417)
!2436 = !DILocation(line: 216, column: 19, scope: !324, inlinedAt: !2417)
!2437 = !DILocation(line: 210, column: 25, scope: !300, inlinedAt: !2417)
!2438 = !DILocation(line: 217, column: 24, scope: !324, inlinedAt: !2417)
!2439 = !DILocation(line: 217, column: 20, scope: !324, inlinedAt: !2417)
!2440 = !DILocation(line: 217, column: 17, scope: !324, inlinedAt: !2417)
!2441 = !DILocation(line: 218, column: 27, scope: !324, inlinedAt: !2417)
!2442 = !DILocation(line: 219, column: 27, scope: !324, inlinedAt: !2417)
!2443 = !DILocation(line: 219, column: 19, scope: !324, inlinedAt: !2417)
!2444 = !DILocation(line: 219, column: 17, scope: !324, inlinedAt: !2417)
!2445 = !DILocation(line: 220, column: 15, scope: !324, inlinedAt: !2417)
!2446 = !DILocation(line: 212, column: 28, scope: !321, inlinedAt: !2417)
!2447 = !DILocation(line: 212, column: 5, scope: !321, inlinedAt: !2417)
!2448 = !DILocation(line: 222, column: 1, scope: !300, inlinedAt: !2417)
!2449 = !DILocation(line: 227, column: 1, scope: !350, inlinedAt: !2411)
!2450 = !DILocation(line: 1055, column: 17, scope: !2405)
!2451 = !DILocation(line: 1056, column: 39, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2399, file: !3, line: 1055, column: 24)
!2453 = !{!1327, !971, i64 80}
!2454 = !DILocation(line: 1056, column: 21, scope: !2452)
!2455 = !DILocation(line: 1058, column: 13, scope: !2117)
!2456 = !DILocation(line: 1058, column: 13, scope: !2116)
!2457 = !DILocation(line: 1062, column: 49, scope: !2125)
!2458 = !DILocation(line: 1062, column: 61, scope: !2125)
!2459 = !DILocation(line: 1063, column: 33, scope: !2125)
!2460 = !DILocation(line: 1063, column: 25, scope: !2125)
!2461 = !DILocation(line: 229, column: 45, scope: !398, inlinedAt: !2462)
!2462 = distinct !DILocation(line: 1062, column: 26, scope: !2125)
!2463 = !DILocation(line: 229, column: 57, scope: !398, inlinedAt: !2462)
!2464 = !DILocation(line: 229, column: 74, scope: !398, inlinedAt: !2462)
!2465 = !DILocation(line: 230, column: 45, scope: !398, inlinedAt: !2462)
!2466 = !DILocation(line: 230, column: 42, scope: !398, inlinedAt: !2462)
!2467 = !DILocation(line: 232, column: 10, scope: !417, inlinedAt: !2462)
!2468 = !DILocation(line: 232, column: 19, scope: !419, inlinedAt: !2462)
!2469 = !DILocation(line: 232, column: 5, scope: !417, inlinedAt: !2462)
!2470 = !DILocation(line: 233, column: 23, scope: !422, inlinedAt: !2462)
!2471 = !DILocation(line: 230, column: 14, scope: !398, inlinedAt: !2462)
!2472 = !DILocation(line: 234, column: 27, scope: !422, inlinedAt: !2462)
!2473 = !DILocation(line: 234, column: 17, scope: !422, inlinedAt: !2462)
!2474 = !DILocation(line: 230, column: 20, scope: !398, inlinedAt: !2462)
!2475 = !DILocation(line: 235, column: 19, scope: !422, inlinedAt: !2462)
!2476 = !DILocation(line: 230, column: 25, scope: !398, inlinedAt: !2462)
!2477 = !DILocation(line: 236, column: 27, scope: !422, inlinedAt: !2462)
!2478 = !DILocation(line: 236, column: 35, scope: !422, inlinedAt: !2462)
!2479 = !DILocation(line: 230, column: 34, scope: !398, inlinedAt: !2462)
!2480 = !DILocation(line: 237, column: 23, scope: !422, inlinedAt: !2462)
!2481 = !DILocation(line: 237, column: 28, scope: !422, inlinedAt: !2462)
!2482 = !DILocation(line: 238, column: 15, scope: !422, inlinedAt: !2462)
!2483 = !DILocation(line: 232, column: 5, scope: !419, inlinedAt: !2462)
!2484 = !DILocation(line: 240, column: 5, scope: !398, inlinedAt: !2462)
!2485 = !DILocation(line: 0, scope: !422, inlinedAt: !2462)
!2486 = !DILocation(line: 1059, column: 26, scope: !2125)
!2487 = !DILocation(line: 1065, column: 36, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2125, file: !3, line: 1065, column: 21)
!2489 = !DILocation(line: 1065, column: 21, scope: !2125)
!2490 = !DILocation(line: 0, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2488, file: !3, line: 1071, column: 24)
!2492 = !DILocation(line: 1066, column: 37, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2488, file: !3, line: 1065, column: 58)
!2494 = !DILocation(line: 1059, column: 34, scope: !2125)
!2495 = !DILocation(line: 1068, column: 62, scope: !2493)
!2496 = !DILocation(line: 288, column: 44, scope: !493, inlinedAt: !2497)
!2497 = distinct !DILocation(line: 1067, column: 32, scope: !2493)
!2498 = !DILocation(line: 288, column: 59, scope: !493, inlinedAt: !2497)
!2499 = !DILocation(line: 288, column: 74, scope: !493, inlinedAt: !2497)
!2500 = !DILocation(line: 288, column: 84, scope: !493, inlinedAt: !2497)
!2501 = !DILocation(line: 289, column: 26, scope: !493, inlinedAt: !2497)
!2502 = !DILocation(line: 289, column: 20, scope: !493, inlinedAt: !2497)
!2503 = !DILocation(line: 289, column: 14, scope: !493, inlinedAt: !2497)
!2504 = !DILocation(line: 293, column: 21, scope: !518, inlinedAt: !2497)
!2505 = !DILocation(line: 289, column: 68, scope: !493, inlinedAt: !2497)
!2506 = !DILocation(line: 293, column: 15, scope: !518, inlinedAt: !2497)
!2507 = !DILocation(line: 291, column: 23, scope: !493, inlinedAt: !2497)
!2508 = !DILocation(line: 293, column: 30, scope: !518, inlinedAt: !2497)
!2509 = !DILocation(line: 293, column: 34, scope: !518, inlinedAt: !2497)
!2510 = !DILocation(line: 290, column: 26, scope: !493, inlinedAt: !2497)
!2511 = !DILocation(line: 293, column: 42, scope: !518, inlinedAt: !2497)
!2512 = !DILocation(line: 293, column: 9, scope: !493, inlinedAt: !2497)
!2513 = !DILocation(line: 302, column: 25, scope: !528, inlinedAt: !2497)
!2514 = !DILocation(line: 294, column: 13, scope: !531, inlinedAt: !2497)
!2515 = !DILocation(line: 295, column: 24, scope: !534, inlinedAt: !2497)
!2516 = !DILocation(line: 295, column: 17, scope: !535, inlinedAt: !2497)
!2517 = !DILocation(line: 297, column: 31, scope: !538, inlinedAt: !2497)
!2518 = !DILocation(line: 297, column: 24, scope: !534, inlinedAt: !2497)
!2519 = !DILocation(line: 299, column: 13, scope: !541, inlinedAt: !2497)
!2520 = !DILocation(line: 302, column: 21, scope: !528, inlinedAt: !2497)
!2521 = !DILocation(line: 302, column: 33, scope: !528, inlinedAt: !2497)
!2522 = !DILocation(line: 302, column: 16, scope: !518, inlinedAt: !2497)
!2523 = !DILocation(line: 303, column: 13, scope: !548, inlinedAt: !2497)
!2524 = !DILocation(line: 304, column: 24, scope: !551, inlinedAt: !2497)
!2525 = !DILocation(line: 304, column: 17, scope: !552, inlinedAt: !2497)
!2526 = !DILocation(line: 306, column: 31, scope: !555, inlinedAt: !2497)
!2527 = !DILocation(line: 306, column: 24, scope: !551, inlinedAt: !2497)
!2528 = !DILocation(line: 308, column: 13, scope: !558, inlinedAt: !2497)
!2529 = !DILocation(line: 316, column: 40, scope: !507, inlinedAt: !2497)
!2530 = !DILocation(line: 316, column: 18, scope: !507, inlinedAt: !2497)
!2531 = !DILocation(line: 317, column: 18, scope: !507, inlinedAt: !2497)
!2532 = !DILocation(line: 319, column: 16, scope: !507, inlinedAt: !2497)
!2533 = !DILocation(line: 319, column: 13, scope: !507, inlinedAt: !2497)
!2534 = !DILocation(line: 322, column: 5, scope: !493, inlinedAt: !2497)
!2535 = !DILocation(line: 0, scope: !2493)
!2536 = !DILocation(line: 1060, column: 21, scope: !2125)
!2537 = !DILocation(line: 1059, column: 42, scope: !2125)
!2538 = !DILocation(line: 1069, column: 35, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2493, file: !3, line: 1069, column: 25)
!2540 = !DILocation(line: 1074, column: 52, scope: !2491)
!2541 = !DILocation(line: 288, column: 44, scope: !493, inlinedAt: !2542)
!2542 = distinct !DILocation(line: 1073, column: 32, scope: !2491)
!2543 = !DILocation(line: 288, column: 59, scope: !493, inlinedAt: !2542)
!2544 = !DILocation(line: 288, column: 84, scope: !493, inlinedAt: !2542)
!2545 = !DILocation(line: 289, column: 26, scope: !493, inlinedAt: !2542)
!2546 = !DILocation(line: 289, column: 20, scope: !493, inlinedAt: !2542)
!2547 = !DILocation(line: 289, column: 14, scope: !493, inlinedAt: !2542)
!2548 = !DILocation(line: 293, column: 21, scope: !518, inlinedAt: !2542)
!2549 = !DILocation(line: 288, column: 74, scope: !493, inlinedAt: !2542)
!2550 = !DILocation(line: 289, column: 68, scope: !493, inlinedAt: !2542)
!2551 = !DILocation(line: 293, column: 15, scope: !518, inlinedAt: !2542)
!2552 = !DILocation(line: 294, column: 13, scope: !531, inlinedAt: !2542)
!2553 = !DILocation(line: 295, column: 24, scope: !534, inlinedAt: !2542)
!2554 = !DILocation(line: 295, column: 17, scope: !535, inlinedAt: !2542)
!2555 = !DILocation(line: 297, column: 31, scope: !538, inlinedAt: !2542)
!2556 = !DILocation(line: 297, column: 24, scope: !534, inlinedAt: !2542)
!2557 = !DILocation(line: 299, column: 13, scope: !541, inlinedAt: !2542)
!2558 = !DILocation(line: 316, column: 18, scope: !507, inlinedAt: !2542)
!2559 = !DILocation(line: 317, column: 18, scope: !507, inlinedAt: !2542)
!2560 = !DILocation(line: 319, column: 13, scope: !507, inlinedAt: !2542)
!2561 = !DILocation(line: 322, column: 5, scope: !493, inlinedAt: !2542)
!2562 = !DILocation(line: 293, column: 34, scope: !518, inlinedAt: !2542)
!2563 = !DILocation(line: 1075, column: 25, scope: !2491)
!2564 = !DILocation(line: 1059, column: 51, scope: !2125)
!2565 = !DILocation(line: 0, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2491, file: !3, line: 1075, column: 25)
!2567 = !DILocation(line: 1080, column: 23, scope: !2568)
!2568 = distinct !DILexicalBlock(scope: !2125, file: !3, line: 1080, column: 21)
!2569 = !DILocation(line: 1080, column: 32, scope: !2568)
!2570 = !DILocation(line: 1080, column: 50, scope: !2568)
!2571 = !DILocation(line: 1080, column: 21, scope: !2125)
!2572 = !DILocation(line: 1081, column: 21, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2568, file: !3, line: 1080, column: 71)
!2574 = !DILocation(line: 1082, column: 44, scope: !2573)
!2575 = !DILocation(line: 1082, column: 56, scope: !2573)
!2576 = !DILocation(line: 1083, column: 49, scope: !2573)
!2577 = !DILocation(line: 1083, column: 41, scope: !2573)
!2578 = !DILocation(line: 209, column: 41, scope: !300, inlinedAt: !2579)
!2579 = distinct !DILocation(line: 1082, column: 21, scope: !2573)
!2580 = !DILocation(line: 209, column: 53, scope: !300, inlinedAt: !2579)
!2581 = !DILocation(line: 209, column: 70, scope: !300, inlinedAt: !2579)
!2582 = !DILocation(line: 209, column: 85, scope: !300, inlinedAt: !2579)
!2583 = !DILocation(line: 210, column: 42, scope: !300, inlinedAt: !2579)
!2584 = !DILocation(line: 212, column: 10, scope: !319, inlinedAt: !2579)
!2585 = !DILocation(line: 212, column: 19, scope: !321, inlinedAt: !2579)
!2586 = !DILocation(line: 212, column: 5, scope: !319, inlinedAt: !2579)
!2587 = !DILocation(line: 213, column: 48, scope: !324, inlinedAt: !2579)
!2588 = !DILocation(line: 213, column: 39, scope: !324, inlinedAt: !2579)
!2589 = !DILocation(line: 213, column: 25, scope: !324, inlinedAt: !2579)
!2590 = !DILocation(line: 213, column: 54, scope: !324, inlinedAt: !2579)
!2591 = !DILocation(line: 213, column: 18, scope: !324, inlinedAt: !2579)
!2592 = !DILocation(line: 210, column: 34, scope: !300, inlinedAt: !2579)
!2593 = !DILocation(line: 214, column: 23, scope: !324, inlinedAt: !2579)
!2594 = !DILocation(line: 210, column: 14, scope: !300, inlinedAt: !2579)
!2595 = !DILocation(line: 215, column: 27, scope: !324, inlinedAt: !2579)
!2596 = !DILocation(line: 215, column: 17, scope: !324, inlinedAt: !2579)
!2597 = !DILocation(line: 210, column: 20, scope: !300, inlinedAt: !2579)
!2598 = !DILocation(line: 216, column: 19, scope: !324, inlinedAt: !2579)
!2599 = !DILocation(line: 210, column: 25, scope: !300, inlinedAt: !2579)
!2600 = !DILocation(line: 217, column: 24, scope: !324, inlinedAt: !2579)
!2601 = !DILocation(line: 217, column: 20, scope: !324, inlinedAt: !2579)
!2602 = !DILocation(line: 217, column: 17, scope: !324, inlinedAt: !2579)
!2603 = !DILocation(line: 218, column: 27, scope: !324, inlinedAt: !2579)
!2604 = !DILocation(line: 219, column: 27, scope: !324, inlinedAt: !2579)
!2605 = !DILocation(line: 219, column: 19, scope: !324, inlinedAt: !2579)
!2606 = !DILocation(line: 219, column: 17, scope: !324, inlinedAt: !2579)
!2607 = !DILocation(line: 220, column: 15, scope: !324, inlinedAt: !2579)
!2608 = !DILocation(line: 212, column: 28, scope: !321, inlinedAt: !2579)
!2609 = !DILocation(line: 212, column: 5, scope: !321, inlinedAt: !2579)
!2610 = !DILocation(line: 222, column: 1, scope: !300, inlinedAt: !2579)
!2611 = !DILocation(line: 1084, column: 17, scope: !2573)
!2612 = !DILocation(line: 1085, column: 39, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2568, file: !3, line: 1084, column: 24)
!2614 = !DILocation(line: 1085, column: 21, scope: !2613)
!2615 = !DILocation(line: 1088, column: 20, scope: !2118)
!2616 = !DILocation(line: 1089, column: 9, scope: !2118)
!2617 = !DILocation(line: 1091, column: 13, scope: !2131)
!2618 = !DILocation(line: 1091, column: 27, scope: !2131)
!2619 = !DILocation(line: 1092, column: 13, scope: !2131)
!2620 = !DILocation(line: 1092, column: 18, scope: !2131)
!2621 = !DILocation(line: 1093, column: 28, scope: !2131)
!2622 = !DILocation(line: 1094, column: 13, scope: !2131)
!2623 = !DILocation(line: 1094, column: 18, scope: !2131)
!2624 = !DILocation(line: 1096, column: 17, scope: !2131)
!2625 = !DILocation(line: 1097, column: 23, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2131, file: !3, line: 1096, column: 17)
!2627 = !DILocation(line: 1097, column: 17, scope: !2626)
!2628 = !DILocation(line: 0, scope: !2131)
!2629 = !DILocation(line: 1103, column: 13, scope: !2131)
!2630 = !DILocation(line: 1105, column: 35, scope: !2131)
!2631 = !DILocation(line: 1105, column: 42, scope: !2131)
!2632 = !DILocation(line: 1105, column: 20, scope: !2131)
!2633 = !DILocation(line: 1104, column: 17, scope: !2131)
!2634 = !DILocation(line: 1106, column: 18, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2131, file: !3, line: 1106, column: 13)
!2636 = !DILocation(line: 1107, column: 25, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !2638, file: !3, line: 1107, column: 21)
!2638 = distinct !DILexicalBlock(scope: !2639, file: !3, line: 1106, column: 37)
!2639 = distinct !DILexicalBlock(scope: !2635, file: !3, line: 1106, column: 13)
!2640 = !DILocation(line: 1106, column: 13, scope: !2635)
!2641 = !DILocation(line: 1107, column: 54, scope: !2637)
!2642 = !DILocation(line: 1107, column: 43, scope: !2637)
!2643 = !DILocation(line: 1107, column: 21, scope: !2638)
!2644 = !DILocation(line: 1108, column: 26, scope: !2638)
!2645 = !DILocation(line: 1108, column: 24, scope: !2638)
!2646 = !DILocation(line: 1106, column: 13, scope: !2639)
!2647 = !DILocation(line: 1107, column: 37, scope: !2637)
!2648 = !DILocation(line: 0, scope: !2141)
!2649 = !DILocation(line: 1113, column: 25, scope: !2142)
!2650 = !DILocation(line: 1113, column: 17, scope: !2142)
!2651 = !DILocation(line: 1113, column: 17, scope: !2131)
!2652 = !DILocation(line: 232, column: 10, scope: !417, inlinedAt: !2653)
!2653 = distinct !DILocation(line: 1118, column: 32, scope: !2144)
!2654 = !DILocation(line: 230, column: 45, scope: !398, inlinedAt: !2653)
!2655 = !DILocation(line: 230, column: 45, scope: !398, inlinedAt: !2656)
!2656 = distinct !DILocation(line: 254, column: 14, scope: !440, inlinedAt: !2657)
!2657 = distinct !DILocation(line: 1114, column: 31, scope: !2141)
!2658 = !DILocation(line: 230, column: 42, scope: !398, inlinedAt: !2653)
!2659 = !DILocation(line: 230, column: 42, scope: !398, inlinedAt: !2656)
!2660 = !DILocation(line: 229, column: 57, scope: !398, inlinedAt: !2653)
!2661 = !DILocation(line: 229, column: 57, scope: !398, inlinedAt: !2656)
!2662 = !DILocation(line: 232, column: 19, scope: !419, inlinedAt: !2653)
!2663 = !DILocation(line: 232, column: 5, scope: !417, inlinedAt: !2653)
!2664 = !DILocation(line: 243, column: 42, scope: !440, inlinedAt: !2657)
!2665 = !DILocation(line: 243, column: 54, scope: !440, inlinedAt: !2657)
!2666 = !DILocation(line: 243, column: 71, scope: !440, inlinedAt: !2657)
!2667 = !DILocation(line: 229, column: 45, scope: !398, inlinedAt: !2656)
!2668 = !DILocation(line: 229, column: 74, scope: !398, inlinedAt: !2656)
!2669 = !DILocation(line: 232, column: 5, scope: !417, inlinedAt: !2656)
!2670 = !DILocation(line: 233, column: 23, scope: !422, inlinedAt: !2656)
!2671 = !DILocation(line: 230, column: 14, scope: !398, inlinedAt: !2656)
!2672 = !DILocation(line: 234, column: 27, scope: !422, inlinedAt: !2656)
!2673 = !DILocation(line: 234, column: 17, scope: !422, inlinedAt: !2656)
!2674 = !DILocation(line: 230, column: 20, scope: !398, inlinedAt: !2656)
!2675 = !DILocation(line: 235, column: 19, scope: !422, inlinedAt: !2656)
!2676 = !DILocation(line: 230, column: 25, scope: !398, inlinedAt: !2656)
!2677 = !DILocation(line: 236, column: 27, scope: !422, inlinedAt: !2656)
!2678 = !DILocation(line: 236, column: 35, scope: !422, inlinedAt: !2656)
!2679 = !DILocation(line: 230, column: 34, scope: !398, inlinedAt: !2656)
!2680 = !DILocation(line: 237, column: 23, scope: !422, inlinedAt: !2656)
!2681 = !DILocation(line: 237, column: 28, scope: !422, inlinedAt: !2656)
!2682 = !DILocation(line: 238, column: 15, scope: !422, inlinedAt: !2656)
!2683 = !DILocation(line: 232, column: 5, scope: !419, inlinedAt: !2656)
!2684 = !DILocation(line: 240, column: 5, scope: !398, inlinedAt: !2656)
!2685 = !DILocation(line: 0, scope: !422, inlinedAt: !2656)
!2686 = !DILocation(line: 245, column: 36, scope: !440, inlinedAt: !2657)
!2687 = !DILocation(line: 244, column: 13, scope: !440, inlinedAt: !2657)
!2688 = !DILocation(line: 260, column: 38, scope: !484, inlinedAt: !2657)
!2689 = !DILocation(line: 260, column: 30, scope: !484, inlinedAt: !2657)
!2690 = !DILocation(line: 260, column: 15, scope: !484, inlinedAt: !2657)
!2691 = !DILocation(line: 260, column: 9, scope: !440, inlinedAt: !2657)
!2692 = !DILocation(line: 261, column: 33, scope: !484, inlinedAt: !2657)
!2693 = !DILocation(line: 261, column: 15, scope: !484, inlinedAt: !2657)
!2694 = !DILocation(line: 261, column: 9, scope: !484, inlinedAt: !2657)
!2695 = !DILocation(line: 0, scope: !440, inlinedAt: !2657)
!2696 = !DILocation(line: 262, column: 5, scope: !440, inlinedAt: !2657)
!2697 = !DILocation(line: 1114, column: 25, scope: !2141)
!2698 = !DILocation(line: 1116, column: 17, scope: !2141)
!2699 = !DILocation(line: 1117, column: 13, scope: !2141)
!2700 = !DILocation(line: 229, column: 45, scope: !398, inlinedAt: !2653)
!2701 = !DILocation(line: 229, column: 74, scope: !398, inlinedAt: !2653)
!2702 = !DILocation(line: 233, column: 23, scope: !422, inlinedAt: !2653)
!2703 = !DILocation(line: 230, column: 14, scope: !398, inlinedAt: !2653)
!2704 = !DILocation(line: 234, column: 27, scope: !422, inlinedAt: !2653)
!2705 = !DILocation(line: 234, column: 17, scope: !422, inlinedAt: !2653)
!2706 = !DILocation(line: 230, column: 20, scope: !398, inlinedAt: !2653)
!2707 = !DILocation(line: 235, column: 19, scope: !422, inlinedAt: !2653)
!2708 = !DILocation(line: 230, column: 25, scope: !398, inlinedAt: !2653)
!2709 = !DILocation(line: 236, column: 27, scope: !422, inlinedAt: !2653)
!2710 = !DILocation(line: 236, column: 35, scope: !422, inlinedAt: !2653)
!2711 = !DILocation(line: 230, column: 34, scope: !398, inlinedAt: !2653)
!2712 = !DILocation(line: 237, column: 23, scope: !422, inlinedAt: !2653)
!2713 = !DILocation(line: 237, column: 28, scope: !422, inlinedAt: !2653)
!2714 = !DILocation(line: 238, column: 15, scope: !422, inlinedAt: !2653)
!2715 = !DILocation(line: 232, column: 5, scope: !419, inlinedAt: !2653)
!2716 = !DILocation(line: 240, column: 5, scope: !398, inlinedAt: !2653)
!2717 = !DILocation(line: 0, scope: !422, inlinedAt: !2653)
!2718 = !DILocation(line: 1118, column: 26, scope: !2144)
!2719 = !DILocation(line: 1120, column: 17, scope: !2144)
!2720 = !DILocation(line: 1122, column: 9, scope: !2119)
!2721 = !DILocation(line: 1014, column: 30, scope: !2113)
!2722 = !DILocation(line: 1014, column: 5, scope: !2113)
!2723 = distinct !{!2723, !2315, !2724}
!2724 = !DILocation(line: 1123, column: 5, scope: !2114)
!2725 = !DILocation(line: 1125, column: 9, scope: !2726)
!2726 = distinct !DILexicalBlock(scope: !2075, file: !3, line: 1125, column: 9)
!2727 = !DILocation(line: 1125, column: 9, scope: !2075)
!2728 = !DILocation(line: 1126, column: 30, scope: !2729)
!2729 = distinct !DILexicalBlock(scope: !2726, file: !3, line: 1125, column: 18)
!2730 = !DILocation(line: 1126, column: 36, scope: !2729)
!2731 = !DILocation(line: 1126, column: 33, scope: !2729)
!2732 = !DILocation(line: 1126, column: 9, scope: !2729)
!2733 = !DILocation(line: 1127, column: 55, scope: !2729)
!2734 = !DILocation(line: 1127, column: 52, scope: !2729)
!2735 = !DILocation(line: 1127, column: 66, scope: !2729)
!2736 = !DILocation(line: 1127, column: 70, scope: !2729)
!2737 = !DILocation(line: 1127, column: 9, scope: !2729)
!2738 = !DILocation(line: 1128, column: 25, scope: !2729)
!2739 = !DILocation(line: 1128, column: 22, scope: !2729)
!2740 = !DILocation(line: 1129, column: 5, scope: !2729)
!2741 = !DILocation(line: 0, scope: !2729)
!2742 = !DILocation(line: 1130, column: 5, scope: !2075)
!2743 = !DILocation(line: 1131, column: 1, scope: !2075)
