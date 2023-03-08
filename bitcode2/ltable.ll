; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/ltable.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/ltable.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Node = type { %struct.lua_TValue, %union.TKey }
%struct.lua_TValue = type { %union.Value, i32 }
%union.Value = type { %union.GCObject* }
%union.GCObject = type { %struct.lua_State }
%struct.lua_State = type { %union.GCObject*, i8, i8, i8, %struct.lua_TValue*, %struct.lua_TValue*, %struct.global_State*, %struct.CallInfo*, i32*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.CallInfo*, %struct.CallInfo*, i32, i32, i16, i16, i8, i8, i32, i32, void (%struct.lua_State*, %struct.lua_Debug*)*, %struct.lua_TValue, %struct.lua_TValue, %union.GCObject*, %union.GCObject*, %struct.lua_longjmp*, i64 }
%struct.global_State = type { %struct.stringtable, i8* (i8*, i8*, i64, i64)*, i8*, i8, i8, i32, %union.GCObject*, %union.GCObject**, %union.GCObject*, %union.GCObject*, %union.GCObject*, %union.GCObject*, %struct.Mbuffer, i64, i64, i64, i64, i32, i32, i32 (%struct.lua_State*)*, %struct.lua_TValue, %struct.lua_State*, %struct.UpVal, [9 x %struct.Table*], [17 x %union.TString*] }
%struct.stringtable = type { %union.GCObject**, i32, i32 }
%struct.Mbuffer = type { i8*, i64, i64 }
%struct.UpVal = type { %union.GCObject*, i8, i8, %struct.lua_TValue*, %union.anon }
%union.anon = type { %struct.lua_TValue }
%struct.Table = type { %union.GCObject*, i8, i8, i8, i8, %struct.Table*, %struct.lua_TValue*, %struct.Node*, %struct.Node*, %union.GCObject*, i32 }
%union.TString = type { %struct.anon.1 }
%struct.anon.1 = type { %union.GCObject*, i8, i8, i8, i32, i64 }
%struct.CallInfo = type { %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*, i32*, i32, i32 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, [60 x i8], i32 }
%struct.lua_longjmp = type opaque
%union.TKey = type { %struct.anon.0 }
%struct.anon.0 = type { %union.Value, i32, %struct.Node* }
%struct.GCheader = type { %union.GCObject*, i8, i8 }

@dummynode_ = internal constant %struct.Node zeroinitializer, align 8, !dbg !0
@luaO_nilobject_ = external hidden constant %struct.lua_TValue, align 8
@.str = private unnamed_addr constant [19 x i8] c"table index is nil\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"table index is NaN\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"invalid key to 'next'\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"table overflow\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define hidden i32 @luaH_next(%struct.lua_State*, %struct.Table* nocapture readonly, %struct.lua_TValue*) local_unnamed_addr #0 !dbg !348 {
  %4 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i64 0, i32 1, !dbg !395
  %5 = load i32, i32* %4, align 8, !dbg !395, !tbaa !397
  %6 = icmp eq i32 %5, 0, !dbg !395
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !402
  br i1 %6, label %63, label %7, !dbg !402

; <label>:7:                                      ; preds = %3
  %8 = icmp eq i32 %5, 3, !dbg !414
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !415
  br i1 %8, label %9, label %15, !dbg !415

; <label>:9:                                      ; preds = %7
  %10 = bitcast %struct.lua_TValue* %2 to double*, !dbg !416
  %11 = load double, double* %10, align 8, !dbg !416, !tbaa !417
  %12 = fptosi double %11 to i32, !dbg !419
  %13 = sitofp i32 %12 to double, !dbg !421
  %14 = fcmp une double %11, %13, !dbg !421
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !424
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %9, %7
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !425
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !426
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !427
  br label %24, !dbg !427

; <label>:16:                                     ; preds = %9
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !426
  %17 = icmp sgt i32 %12, 0, !dbg !429
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !427
  br i1 %17, label %18, label %24, !dbg !427

; <label>:18:                                     ; preds = %16
  %19 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 10, !dbg !430
  %20 = load i32, i32* %19, align 8, !dbg !430, !tbaa !431
  %21 = icmp slt i32 %20, %12, !dbg !434
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !435
  br i1 %21, label %24, label %22, !dbg !435

; <label>:22:                                     ; preds = %18
  %23 = add nsw i32 %12, -1, !dbg !436
  br label %63, !dbg !437

; <label>:24:                                     ; preds = %18, %16, %15
  %25 = tail call fastcc %struct.Node* @mainposition(%struct.Table* %1, %struct.lua_TValue* nonnull %2) #5, !dbg !438
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !440
  %26 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i64 0, i32 0, i32 0
  br label %27, !dbg !440

; <label>:27:                                     ; preds = %56, %24
  %28 = phi %struct.Node* [ %25, %24 ], [ %58, %56 ], !dbg !441
  %29 = getelementptr inbounds %struct.Node, %struct.Node* %28, i64 0, i32 1, !dbg !444
  %30 = bitcast %union.TKey* %29 to %struct.lua_TValue*, !dbg !444
  %31 = tail call i32 @luaO_rawequalObj(%struct.lua_TValue* nonnull %30, %struct.lua_TValue* %2) #5, !dbg !445
  %32 = icmp eq i32 %31, 0, !dbg !445
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !446
  br i1 %32, label %33, label %45, !dbg !446

; <label>:33:                                     ; preds = %27
  %34 = getelementptr inbounds %struct.Node, %struct.Node* %28, i64 0, i32 1, i32 0, i32 1, !dbg !447
  %35 = load i32, i32* %34, align 8, !dbg !447, !tbaa !417
  %36 = icmp eq i32 %35, 11, !dbg !448
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !449
  br i1 %36, label %37, label %56, !dbg !449

; <label>:37:                                     ; preds = %33
  %38 = load i32, i32* %4, align 8, !dbg !450, !tbaa !397
  %39 = icmp sgt i32 %38, 3, !dbg !450
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !451
  br i1 %39, label %40, label %56, !dbg !451

; <label>:40:                                     ; preds = %37
  %41 = getelementptr inbounds %union.TKey, %union.TKey* %29, i64 0, i32 0, i32 0, i32 0, !dbg !452
  %42 = load %union.GCObject*, %union.GCObject** %41, align 8, !dbg !452, !tbaa !417
  %43 = load %union.GCObject*, %union.GCObject** %26, align 8, !dbg !453, !tbaa !417
  %44 = icmp eq %union.GCObject* %42, %43, !dbg !454
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !455
  br i1 %44, label %45, label %56, !dbg !455

; <label>:45:                                     ; preds = %40, %27
  %46 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7, !dbg !456
  %47 = bitcast %struct.Node** %46 to i64*, !dbg !456
  %48 = load i64, i64* %47, align 8, !dbg !456, !tbaa !458
  %49 = ptrtoint %struct.Node* %28 to i64, !dbg !456
  %50 = sub i64 %49, %48, !dbg !456
  %51 = sdiv exact i64 %50, 40, !dbg !456
  %52 = trunc i64 %51 to i32, !dbg !456
  %53 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 10, !dbg !459
  %54 = load i32, i32* %53, align 8, !dbg !459, !tbaa !431
  %55 = add nsw i32 %54, %52, !dbg !460
  br label %61, !dbg !461

; <label>:56:                                     ; preds = %40, %37, %33
  %57 = getelementptr inbounds %struct.Node, %struct.Node* %28, i64 0, i32 1, i32 0, i32 2, !dbg !462
  %58 = load %struct.Node*, %struct.Node** %57, align 8, !dbg !462, !tbaa !417
  %59 = icmp eq %struct.Node* %58, null, !dbg !463
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !463
  br i1 %59, label %60, label %27, !dbg !463, !llvm.loop !464

; <label>:60:                                     ; preds = %56
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0)) #5, !dbg !467
  br label %61, !dbg !468

; <label>:61:                                     ; preds = %60, %45
  %62 = phi i32 [ %55, %45 ], [ 0, %60 ], !dbg !469
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !470
  br label %63

; <label>:63:                                     ; preds = %3, %22, %61
  %64 = phi i32 [ %23, %22 ], [ %62, %61 ], [ -1, %3 ], !dbg !471
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !472
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !474
  %65 = add i32 %64, 1, !dbg !475
  %66 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 10, !dbg !476
  %67 = load i32, i32* %66, align 8, !dbg !476, !tbaa !431
  %68 = icmp slt i32 %65, %67, !dbg !477
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !478
  br i1 %68, label %69, label %104, !dbg !478

; <label>:69:                                     ; preds = %63
  %70 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 6
  %71 = load %struct.lua_TValue*, %struct.lua_TValue** %70, align 8, !tbaa !479
  %72 = sext i32 %65 to i64, !dbg !478
  %73 = sext i32 %67 to i64
  %74 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %71, i64 %72, i32 1, !dbg !480
  %75 = load i32, i32* %74, align 8, !dbg !480, !tbaa !397
  %76 = icmp eq i32 %75, 0, !dbg !480
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !481
  br i1 %76, label %98, label %83, !dbg !481

; <label>:77:                                     ; preds = %98
  %78 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %71, i64 %100, i32 1, !dbg !480
  %79 = load i32, i32* %78, align 8, !dbg !480, !tbaa !397
  %80 = icmp eq i32 %79, 0, !dbg !480
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !481
  br i1 %80, label %98, label %81, !dbg !481, !llvm.loop !482

; <label>:81:                                     ; preds = %77
  %82 = trunc i64 %99 to i32, !dbg !478
  br label %83, !dbg !481

; <label>:83:                                     ; preds = %81, %69
  %84 = phi i64 [ %100, %81 ], [ %72, %69 ]
  %85 = phi i32 [ %82, %81 ], [ %64, %69 ]
  %86 = add nsw i32 %85, 2, !dbg !484
  %87 = sitofp i32 %86 to double, !dbg !484
  %88 = bitcast %struct.lua_TValue* %2 to double*, !dbg !484
  store double %87, double* %88, align 8, !dbg !484, !tbaa !417
  store i32 3, i32* %4, align 8, !dbg !484, !tbaa !397
  %89 = load %struct.lua_TValue*, %struct.lua_TValue** %70, align 8, !dbg !485, !tbaa !479
  %90 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %89, i64 %84, !dbg !485
  %91 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i64 1, !dbg !485
  %92 = bitcast %struct.lua_TValue* %90 to i64*, !dbg !485
  %93 = bitcast %struct.lua_TValue* %91 to i64*, !dbg !485
  %94 = load i64, i64* %92, align 8, !dbg !485
  store i64 %94, i64* %93, align 8, !dbg !485
  %95 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %89, i64 %84, i32 1, !dbg !485
  %96 = load i32, i32* %95, align 8, !dbg !485, !tbaa !397
  %97 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i64 1, i32 1, !dbg !485
  store i32 %96, i32* %97, align 8, !dbg !485, !tbaa !397
  br label %141, !dbg !486

; <label>:98:                                     ; preds = %69, %77
  %99 = phi i64 [ %100, %77 ], [ %72, %69 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !487
  %100 = add nsw i64 %99, 1, !dbg !475
  %101 = icmp slt i64 %100, %73, !dbg !477
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !478
  br i1 %101, label %77, label %102, !dbg !478, !llvm.loop !482

; <label>:102:                                    ; preds = %98
  %103 = trunc i64 %100 to i32, !dbg !488
  br label %104, !dbg !488

; <label>:104:                                    ; preds = %102, %63
  %105 = phi i32 [ %65, %63 ], [ %103, %102 ], !dbg !475
  %106 = sub i32 %105, %67, !dbg !488
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !489
  %107 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 4, !dbg !490
  %108 = load i8, i8* %107, align 1, !dbg !490, !tbaa !491
  %109 = zext i8 %108 to i32, !dbg !490
  %110 = shl i32 1, %109, !dbg !490
  %111 = icmp slt i32 %106, %110, !dbg !492
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !493
  br i1 %111, label %112, label %141, !dbg !493

; <label>:112:                                    ; preds = %104
  %113 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7
  %114 = load %struct.Node*, %struct.Node** %113, align 8, !tbaa !458
  %115 = sext i32 %106 to i64, !dbg !493
  %116 = sext i32 %110 to i64
  br label %117, !dbg !493

; <label>:117:                                    ; preds = %112, %138
  %118 = phi i64 [ %115, %112 ], [ %139, %138 ]
  %119 = getelementptr inbounds %struct.Node, %struct.Node* %114, i64 %118, i32 0, i32 1, !dbg !494
  %120 = load i32, i32* %119, align 8, !dbg !494, !tbaa !495
  %121 = icmp eq i32 %120, 0, !dbg !494
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !497
  br i1 %121, label %138, label %122, !dbg !497

; <label>:122:                                    ; preds = %117
  %123 = getelementptr inbounds %struct.Node, %struct.Node* %114, i64 %118, i32 1, !dbg !498
  %124 = bitcast %union.TKey* %123 to i64*, !dbg !498
  %125 = bitcast %struct.lua_TValue* %2 to i64*, !dbg !498
  %126 = load i64, i64* %124, align 8, !dbg !498
  store i64 %126, i64* %125, align 8, !dbg !498
  %127 = getelementptr inbounds %struct.Node, %struct.Node* %114, i64 %118, i32 1, i32 0, i32 1, !dbg !498
  %128 = load i32, i32* %127, align 8, !dbg !498, !tbaa !397
  store i32 %128, i32* %4, align 8, !dbg !498, !tbaa !397
  %129 = load %struct.Node*, %struct.Node** %113, align 8, !dbg !499, !tbaa !458
  %130 = getelementptr inbounds %struct.Node, %struct.Node* %129, i64 %118, i32 0, !dbg !499
  %131 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i64 1, !dbg !499
  %132 = bitcast %struct.lua_TValue* %130 to i64*, !dbg !499
  %133 = bitcast %struct.lua_TValue* %131 to i64*, !dbg !499
  %134 = load i64, i64* %132, align 8, !dbg !499
  store i64 %134, i64* %133, align 8, !dbg !499
  %135 = getelementptr inbounds %struct.Node, %struct.Node* %129, i64 %118, i32 0, i32 1, !dbg !499
  %136 = load i32, i32* %135, align 8, !dbg !499, !tbaa !397
  %137 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i64 1, i32 1, !dbg !499
  store i32 %136, i32* %137, align 8, !dbg !499, !tbaa !397
  br label %141, !dbg !500

; <label>:138:                                    ; preds = %117
  %139 = add nsw i64 %118, 1, !dbg !501
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !502
  %140 = icmp slt i64 %139, %116, !dbg !492
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !493
  br i1 %140, label %117, label %141, !dbg !493, !llvm.loop !503

; <label>:141:                                    ; preds = %138, %104, %122, %83
  %142 = phi i32 [ 1, %83 ], [ 1, %122 ], [ 0, %104 ], [ 0, %138 ], !dbg !470
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !505
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !506
  ret i32 %142, !dbg !506
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #2

; Function Attrs: noredzone nounwind
define hidden void @luaH_resizearray(%struct.lua_State*, %struct.Table*, i32) local_unnamed_addr #0 !dbg !507 {
  %4 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7, !dbg !518
  %5 = load %struct.Node*, %struct.Node** %4, align 8, !dbg !518, !tbaa !458
  %6 = icmp eq %struct.Node* %5, @dummynode_, !dbg !519
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !520
  br i1 %6, label %12, label %7, !dbg !520

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 4, !dbg !521
  %9 = load i8, i8* %8, align 1, !dbg !521, !tbaa !491
  %10 = zext i8 %9 to i32, !dbg !521
  %11 = shl i32 1, %10, !dbg !521
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !520
  br label %12, !dbg !520

; <label>:12:                                     ; preds = %3, %7
  %13 = phi i32 [ %11, %7 ], [ 0, %3 ], !dbg !520
  tail call fastcc void @resize(%struct.lua_State* %0, %struct.Table* nonnull %1, i32 %2, i32 %13) #6, !dbg !523
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !524
  ret void, !dbg !524
}

; Function Attrs: noredzone nounwind
define internal fastcc void @resize(%struct.lua_State*, %struct.Table*, i32, i32) unnamed_addr #0 !dbg !525 {
  %5 = alloca %struct.lua_TValue, align 8
  %6 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 10, !dbg !558
  %7 = load i32, i32* %6, align 8, !dbg !558, !tbaa !431
  %8 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 4, !dbg !560
  %9 = load i8, i8* %8, align 1, !dbg !560, !tbaa !491
  %10 = zext i8 %9 to i32, !dbg !561
  %11 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7, !dbg !563
  %12 = load %struct.Node*, %struct.Node** %11, align 8, !dbg !563, !tbaa !458
  %13 = icmp slt i32 %7, %2, !dbg !565
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !567
  br i1 %13, label %14, label %65, !dbg !567

; <label>:14:                                     ; preds = %4
  %15 = icmp sgt i32 %2, -2, !dbg !578
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !578
  br i1 %15, label %16, label %25, !dbg !578

; <label>:16:                                     ; preds = %14
  %17 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 6, !dbg !578
  %18 = bitcast %struct.lua_TValue** %17 to i8**, !dbg !578
  %19 = load i8*, i8** %18, align 8, !dbg !578, !tbaa !479
  %20 = sext i32 %7 to i64, !dbg !578
  %21 = shl nsw i64 %20, 4, !dbg !578
  %22 = sext i32 %2 to i64, !dbg !578
  %23 = shl nsw i64 %22, 4, !dbg !578
  %24 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* %19, i64 %21, i64 %23) #5, !dbg !578
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !578
  br label %29, !dbg !578

; <label>:25:                                     ; preds = %14
  %26 = tail call i8* @luaM_toobig(%struct.lua_State* %0) #5, !dbg !578
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !578
  %27 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 6, !dbg !578
  %28 = bitcast %struct.lua_TValue** %27 to i8**, !dbg !578
  br label %29, !dbg !578

; <label>:29:                                     ; preds = %25, %16
  %30 = phi i8** [ %28, %25 ], [ %18, %16 ], !dbg !578
  %31 = phi i8* [ %26, %25 ], [ %24, %16 ], !dbg !578
  store i8* %31, i8** %30, align 8, !dbg !578, !tbaa !479
  %32 = load i32, i32* %6, align 8, !dbg !579, !tbaa !431
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !582
  %33 = icmp slt i32 %32, %2, !dbg !583
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !585
  %34 = bitcast i8* %31 to %struct.lua_TValue*, !dbg !585
  br i1 %33, label %35, label %64, !dbg !585

; <label>:35:                                     ; preds = %29
  %36 = sext i32 %32 to i64, !dbg !585
  %37 = sub i32 %2, %32, !dbg !585
  %38 = xor i32 %32, -1, !dbg !585
  %39 = add i32 %38, %2, !dbg !585
  %40 = and i32 %37, 3, !dbg !585
  %41 = icmp eq i32 %40, 0, !dbg !585
  br i1 %41, label %49, label %42, !dbg !585

; <label>:42:                                     ; preds = %35, %42
  %43 = phi i64 [ %46, %42 ], [ %36, %35 ]
  %44 = phi i32 [ %47, %42 ], [ %40, %35 ]
  %45 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %34, i64 %43, i32 1, !dbg !586
  store i32 0, i32* %45, align 8, !dbg !586, !tbaa !397
  %46 = add nsw i64 %43, 1, !dbg !587
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !588
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !585
  %47 = add i32 %44, -1, !dbg !585
  %48 = icmp eq i32 %47, 0, !dbg !585
  br i1 %48, label %49, label %42, !dbg !585, !llvm.loop !589

; <label>:49:                                     ; preds = %42, %35
  %50 = phi i64 [ %36, %35 ], [ %46, %42 ]
  %51 = icmp ult i32 %39, 3, !dbg !585
  br i1 %51, label %64, label %52, !dbg !585

; <label>:52:                                     ; preds = %49, %52
  %53 = phi i64 [ %61, %52 ], [ %50, %49 ]
  %54 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %34, i64 %53, i32 1, !dbg !586
  store i32 0, i32* %54, align 8, !dbg !586, !tbaa !397
  %55 = add nsw i64 %53, 1, !dbg !587
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !588
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !585
  %56 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %34, i64 %55, i32 1, !dbg !586
  store i32 0, i32* %56, align 8, !dbg !586, !tbaa !397
  %57 = add nsw i64 %53, 2, !dbg !587
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !588
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !585
  %58 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %34, i64 %57, i32 1, !dbg !586
  store i32 0, i32* %58, align 8, !dbg !586, !tbaa !397
  %59 = add nsw i64 %53, 3, !dbg !587
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !588
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !585
  %60 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %34, i64 %59, i32 1, !dbg !586
  store i32 0, i32* %60, align 8, !dbg !586, !tbaa !397
  %61 = add nsw i64 %53, 4, !dbg !587
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !588
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !585
  %62 = trunc i64 %61 to i32, !dbg !583
  %63 = icmp eq i32 %62, %2, !dbg !583
  br i1 %63, label %64, label %52, !dbg !585, !llvm.loop !591

; <label>:64:                                     ; preds = %49, %52, %29
  store i32 %2, i32* %6, align 8, !dbg !594, !tbaa !431
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !595
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !596
  br label %65, !dbg !596

; <label>:65:                                     ; preds = %64, %4
  tail call fastcc void @setnodevector(%struct.lua_State* %0, %struct.Table* nonnull %1, i32 %3) #6, !dbg !597
  %66 = icmp sgt i32 %7, %2, !dbg !598
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !599
  br i1 %66, label %67, label %112, !dbg !599

; <label>:67:                                     ; preds = %65
  store i32 %2, i32* %6, align 8, !dbg !600, !tbaa !431
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !602
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !603
  %68 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 6
  %69 = bitcast %struct.lua_TValue* %5 to i8*
  %70 = bitcast %struct.lua_TValue* %5 to double*
  %71 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %5, i64 0, i32 1
  %72 = sext i32 %2 to i64, !dbg !603
  br label %73, !dbg !603

; <label>:73:                                     ; preds = %95, %67
  %74 = phi i64 [ %72, %67 ], [ %79, %95 ]
  %75 = load %struct.lua_TValue*, %struct.lua_TValue** %68, align 8, !dbg !604, !tbaa !479
  %76 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %75, i64 %74, i32 1, !dbg !604
  %77 = load i32, i32* %76, align 8, !dbg !604, !tbaa !397
  %78 = icmp eq i32 %77, 0, !dbg !604
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !605
  %79 = add nsw i64 %74, 1, !dbg !606
  %80 = trunc i64 %79 to i32, !dbg !606
  br i1 %78, label %95, label %81, !dbg !605

; <label>:81:                                     ; preds = %73
  %82 = call %struct.lua_TValue* @luaH_getnum(%struct.Table* nonnull %1, i32 %80) #5, !dbg !624
  %83 = icmp eq %struct.lua_TValue* %82, @luaO_nilobject_, !dbg !626
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !627
  br i1 %83, label %84, label %87, !dbg !627

; <label>:84:                                     ; preds = %81
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %69) #4, !dbg !628
  %85 = sitofp i32 %80 to double, !dbg !629
  store double %85, double* %70, align 8, !dbg !629, !tbaa !417
  store i32 3, i32* %71, align 8, !dbg !629, !tbaa !397
  %86 = call fastcc %struct.lua_TValue* @newkey(%struct.lua_State* %0, %struct.Table* nonnull %1, %struct.lua_TValue* nonnull %5) #5, !dbg !631
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %69) #4, !dbg !632
  br label %87

; <label>:87:                                     ; preds = %81, %84
  %88 = phi %struct.lua_TValue* [ %86, %84 ], [ %82, %81 ], !dbg !633
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !634
  %89 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %75, i64 %74, i32 0, !dbg !635
  %90 = bitcast %union.Value* %89 to i64*, !dbg !635
  %91 = bitcast %struct.lua_TValue* %88 to i64*, !dbg !635
  %92 = load i64, i64* %90, align 8, !dbg !635
  store i64 %92, i64* %91, align 8, !dbg !635
  %93 = load i32, i32* %76, align 8, !dbg !635, !tbaa !397
  %94 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %88, i64 0, i32 1, !dbg !635
  store i32 %93, i32* %94, align 8, !dbg !635, !tbaa !397
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !635
  br label %95, !dbg !635

; <label>:95:                                     ; preds = %73, %87
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !636
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !603
  %96 = icmp eq i32 %7, %80, !dbg !637
  br i1 %96, label %97, label %73, !dbg !603, !llvm.loop !638

; <label>:97:                                     ; preds = %95
  %98 = icmp sgt i32 %2, -2, !dbg !640
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !640
  br i1 %98, label %99, label %106, !dbg !640

; <label>:99:                                     ; preds = %97
  %100 = bitcast %struct.lua_TValue** %68 to i8**, !dbg !640
  %101 = load i8*, i8** %100, align 8, !dbg !640, !tbaa !479
  %102 = sext i32 %7 to i64, !dbg !640
  %103 = shl nsw i64 %102, 4, !dbg !640
  %104 = shl nsw i64 %72, 4, !dbg !640
  %105 = call i8* @luaM_realloc_(%struct.lua_State* %0, i8* %101, i64 %103, i64 %104) #5, !dbg !640
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !640
  br label %109, !dbg !640

; <label>:106:                                    ; preds = %97
  %107 = call i8* @luaM_toobig(%struct.lua_State* %0) #5, !dbg !640
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !640
  %108 = bitcast %struct.lua_TValue** %68 to i8**, !dbg !640
  br label %109, !dbg !640

; <label>:109:                                    ; preds = %106, %99
  %110 = phi i8** [ %108, %106 ], [ %100, %99 ], !dbg !640
  %111 = phi i8* [ %107, %106 ], [ %105, %99 ], !dbg !640
  store i8* %111, i8** %110, align 8, !dbg !640, !tbaa !479
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !641
  br label %112, !dbg !641

; <label>:112:                                    ; preds = %109, %65
  %113 = shl i32 1, %10, !dbg !642
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !643
  %114 = icmp eq i8 %9, 31, !dbg !644
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !645
  br i1 %114, label %153, label %115, !dbg !645

; <label>:115:                                    ; preds = %112
  %116 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 3
  %117 = sext i32 %113 to i64, !dbg !645
  br label %118, !dbg !645

; <label>:118:                                    ; preds = %115, %151
  %119 = phi i64 [ %117, %115 ], [ %120, %151 ]
  %120 = add nsw i64 %119, -1, !dbg !646
  %121 = getelementptr inbounds %struct.Node, %struct.Node* %12, i64 %120, i32 0, i32 1, !dbg !647
  %122 = load i32, i32* %121, align 8, !dbg !647, !tbaa !495
  %123 = icmp eq i32 %122, 0, !dbg !647
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !648
  br i1 %123, label %151, label %124, !dbg !648

; <label>:124:                                    ; preds = %118
  %125 = getelementptr inbounds %struct.Node, %struct.Node* %12, i64 %120, !dbg !649
  %126 = getelementptr inbounds %struct.Node, %struct.Node* %12, i64 %120, i32 1, !dbg !651
  %127 = bitcast %union.TKey* %126 to %struct.lua_TValue*, !dbg !651
  %128 = call %struct.lua_TValue* @luaH_get(%struct.Table* %1, %struct.lua_TValue* nonnull %127) #5, !dbg !664
  store i8 0, i8* %116, align 2, !dbg !666, !tbaa !667
  %129 = icmp eq %struct.lua_TValue* %128, @luaO_nilobject_, !dbg !668
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !670
  br i1 %129, label %130, label %144, !dbg !670

; <label>:130:                                    ; preds = %124
  %131 = getelementptr inbounds %struct.Node, %struct.Node* %12, i64 %120, i32 1, i32 0, i32 1, !dbg !671
  %132 = load i32, i32* %131, align 8, !dbg !671, !tbaa !397
  %133 = icmp eq i32 %132, 0, !dbg !671
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !674
  br i1 %133, label %134, label %135, !dbg !674

; <label>:134:                                    ; preds = %130
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0)) #5, !dbg !675
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !675
  br label %142, !dbg !675

; <label>:135:                                    ; preds = %130
  %136 = icmp eq i32 %132, 3, !dbg !676
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !678
  br i1 %136, label %137, label %142, !dbg !678

; <label>:137:                                    ; preds = %135
  %138 = bitcast %union.TKey* %126 to double*, !dbg !679
  %139 = load double, double* %138, align 8, !dbg !679, !tbaa !417
  %140 = fcmp ord double %139, 0.000000e+00, !dbg !679
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !680
  br i1 %140, label %142, label %141, !dbg !680

; <label>:141:                                    ; preds = %137
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !681
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !681
  br label %142, !dbg !681

; <label>:142:                                    ; preds = %141, %137, %135, %134
  %143 = call fastcc %struct.lua_TValue* @newkey(%struct.lua_State* %0, %struct.Table* nonnull %1, %struct.lua_TValue* nonnull %127) #5, !dbg !682
  br label %144, !dbg !683

; <label>:144:                                    ; preds = %124, %142
  %145 = phi %struct.lua_TValue* [ %143, %142 ], [ %128, %124 ], !dbg !684
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !685
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !686
  %146 = bitcast %struct.Node* %125 to i64*, !dbg !651
  %147 = bitcast %struct.lua_TValue* %145 to i64*, !dbg !651
  %148 = load i64, i64* %146, align 8, !dbg !651
  store i64 %148, i64* %147, align 8, !dbg !651
  %149 = load i32, i32* %121, align 8, !dbg !651, !tbaa !397
  %150 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %145, i64 0, i32 1, !dbg !651
  store i32 %149, i32* %150, align 8, !dbg !651, !tbaa !397
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !651
  br label %151, !dbg !651

; <label>:151:                                    ; preds = %144, %118
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !687
  %152 = icmp sgt i64 %119, 1, !dbg !644
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !645
  br i1 %152, label %118, label %153, !dbg !645, !llvm.loop !688

; <label>:153:                                    ; preds = %151, %112
  %154 = icmp eq %struct.Node* %12, @dummynode_, !dbg !690
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !692
  br i1 %154, label %160, label %155, !dbg !692

; <label>:155:                                    ; preds = %153
  %156 = bitcast %struct.Node* %12 to i8*, !dbg !693
  %157 = sext i32 %113 to i64, !dbg !693
  %158 = mul nsw i64 %157, 40, !dbg !693
  %159 = call i8* @luaM_realloc_(%struct.lua_State* %0, i8* %156, i64 %158, i64 0) #5, !dbg !693
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !693
  br label %160, !dbg !693

; <label>:160:                                    ; preds = %153, %155
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !694
  ret void, !dbg !694
}

; Function Attrs: noredzone nounwind
define hidden %struct.Table* @luaH_new(%struct.lua_State*, i32, i32) local_unnamed_addr #0 !dbg !695 {
  %4 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* null, i64 0, i64 64) #5, !dbg !706
  %5 = bitcast i8* %4 to %struct.Table*, !dbg !706
  %6 = bitcast i8* %4 to %union.GCObject*, !dbg !708
  tail call void @luaC_link(%struct.lua_State* %0, %union.GCObject* %6, i8 zeroext 5) #5, !dbg !709
  %7 = getelementptr inbounds i8, i8* %4, i64 16, !dbg !710
  %8 = bitcast i8* %7 to %struct.Table**, !dbg !710
  store %struct.Table* null, %struct.Table** %8, align 8, !dbg !711, !tbaa !712
  %9 = getelementptr inbounds i8, i8* %4, i64 10, !dbg !713
  store i8 -1, i8* %9, align 2, !dbg !714, !tbaa !667
  %10 = getelementptr inbounds i8, i8* %4, i64 24, !dbg !715
  %11 = bitcast i8* %10 to %struct.lua_TValue**, !dbg !715
  store %struct.lua_TValue* null, %struct.lua_TValue** %11, align 8, !dbg !716, !tbaa !479
  %12 = getelementptr inbounds i8, i8* %4, i64 56, !dbg !717
  %13 = bitcast i8* %12 to i32*, !dbg !717
  store i32 0, i32* %13, align 8, !dbg !718, !tbaa !431
  %14 = getelementptr inbounds i8, i8* %4, i64 11, !dbg !719
  store i8 0, i8* %14, align 1, !dbg !720, !tbaa !491
  %15 = getelementptr inbounds i8, i8* %4, i64 32, !dbg !721
  %16 = bitcast i8* %15 to %struct.Node**, !dbg !721
  store %struct.Node* @dummynode_, %struct.Node** %16, align 8, !dbg !722, !tbaa !458
  %17 = icmp sgt i32 %1, -2, !dbg !727
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !727
  br i1 %17, label %18, label %22, !dbg !727

; <label>:18:                                     ; preds = %3
  %19 = sext i32 %1 to i64, !dbg !727
  %20 = shl nsw i64 %19, 4, !dbg !727
  %21 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* null, i64 0, i64 %20) #5, !dbg !727
  br label %24, !dbg !727

; <label>:22:                                     ; preds = %3
  %23 = tail call i8* @luaM_toobig(%struct.lua_State* %0) #5, !dbg !727
  br label %24, !dbg !727

; <label>:24:                                     ; preds = %22, %18
  %25 = phi i8* [ %23, %22 ], [ %21, %18 ], !dbg !727
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !727
  %26 = bitcast i8* %10 to i8**, !dbg !727
  store i8* %25, i8** %26, align 8, !dbg !727, !tbaa !479
  %27 = load i32, i32* %13, align 8, !dbg !728, !tbaa !431
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !730
  %28 = icmp slt i32 %27, %1, !dbg !731
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !732
  %29 = bitcast i8* %25 to %struct.lua_TValue*, !dbg !732
  br i1 %28, label %30, label %59, !dbg !732

; <label>:30:                                     ; preds = %24
  %31 = sext i32 %27 to i64, !dbg !732
  %32 = sub i32 %1, %27, !dbg !732
  %33 = xor i32 %27, -1, !dbg !732
  %34 = add i32 %33, %1, !dbg !732
  %35 = and i32 %32, 3, !dbg !732
  %36 = icmp eq i32 %35, 0, !dbg !732
  br i1 %36, label %44, label %37, !dbg !732

; <label>:37:                                     ; preds = %30, %37
  %38 = phi i64 [ %41, %37 ], [ %31, %30 ]
  %39 = phi i32 [ %42, %37 ], [ %35, %30 ]
  %40 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %29, i64 %38, i32 1, !dbg !733
  store i32 0, i32* %40, align 8, !dbg !733, !tbaa !397
  %41 = add nsw i64 %38, 1, !dbg !734
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !735
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !732
  %42 = add i32 %39, -1, !dbg !732
  %43 = icmp eq i32 %42, 0, !dbg !732
  br i1 %43, label %44, label %37, !dbg !732, !llvm.loop !736

; <label>:44:                                     ; preds = %37, %30
  %45 = phi i64 [ %31, %30 ], [ %41, %37 ]
  %46 = icmp ult i32 %34, 3, !dbg !732
  br i1 %46, label %59, label %47, !dbg !732

; <label>:47:                                     ; preds = %44, %47
  %48 = phi i64 [ %56, %47 ], [ %45, %44 ]
  %49 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %29, i64 %48, i32 1, !dbg !733
  store i32 0, i32* %49, align 8, !dbg !733, !tbaa !397
  %50 = add nsw i64 %48, 1, !dbg !734
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !735
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !732
  %51 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %29, i64 %50, i32 1, !dbg !733
  store i32 0, i32* %51, align 8, !dbg !733, !tbaa !397
  %52 = add nsw i64 %48, 2, !dbg !734
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !735
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !732
  %53 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %29, i64 %52, i32 1, !dbg !733
  store i32 0, i32* %53, align 8, !dbg !733, !tbaa !397
  %54 = add nsw i64 %48, 3, !dbg !734
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !735
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !732
  %55 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %29, i64 %54, i32 1, !dbg !733
  store i32 0, i32* %55, align 8, !dbg !733, !tbaa !397
  %56 = add nsw i64 %48, 4, !dbg !734
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !735
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !732
  %57 = trunc i64 %56 to i32, !dbg !731
  %58 = icmp eq i32 %57, %1, !dbg !731
  br i1 %58, label %59, label %47, !dbg !732, !llvm.loop !591

; <label>:59:                                     ; preds = %44, %47, %24
  store i32 %1, i32* %13, align 8, !dbg !737, !tbaa !431
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !738
  tail call fastcc void @setnodevector(%struct.lua_State* %0, %struct.Table* %5, i32 %2) #6, !dbg !739
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !740
  ret %struct.Table* %5, !dbg !740
}

; Function Attrs: noredzone
declare hidden i8* @luaM_realloc_(%struct.lua_State*, i8*, i64, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden void @luaC_link(%struct.lua_State*, %union.GCObject*, i8 zeroext) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal fastcc void @setnodevector(%struct.lua_State*, %struct.Table* nocapture, i32) unnamed_addr #0 !dbg !741 {
  %4 = icmp eq i32 %2, 0, !dbg !757
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !758
  br i1 %4, label %5, label %7, !dbg !758

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7, !dbg !759
  store %struct.Node* @dummynode_, %struct.Node** %6, align 8, !dbg !761, !tbaa !458
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !763
  br label %43, !dbg !763

; <label>:7:                                      ; preds = %3
  %8 = add nsw i32 %2, -1, !dbg !764
  %9 = tail call i32 @luaO_log2(i32 %8) #5, !dbg !764
  %10 = add nsw i32 %9, 1, !dbg !764
  %11 = icmp sgt i32 %9, 25, !dbg !765
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !767
  br i1 %11, label %12, label %13, !dbg !767

; <label>:12:                                     ; preds = %7
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0)) #5, !dbg !768
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !768
  br label %13, !dbg !768

; <label>:13:                                     ; preds = %12, %7
  %14 = shl i32 1, %10, !dbg !769
  %15 = icmp sgt i32 %14, -2, !dbg !770
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !770
  br i1 %15, label %16, label %20, !dbg !770

; <label>:16:                                     ; preds = %13
  %17 = sext i32 %14 to i64, !dbg !770
  %18 = mul nsw i64 %17, 40, !dbg !770
  %19 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* null, i64 0, i64 %18) #5, !dbg !770
  br label %22, !dbg !770

; <label>:20:                                     ; preds = %13
  %21 = tail call i8* @luaM_toobig(%struct.lua_State* %0) #5, !dbg !770
  br label %22, !dbg !770

; <label>:22:                                     ; preds = %20, %16
  %23 = phi i8* [ %19, %16 ], [ %21, %20 ], !dbg !770
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !770
  %24 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7, !dbg !771
  %25 = bitcast %struct.Node** %24 to i8**, !dbg !772
  store i8* %23, i8** %25, align 8, !dbg !772, !tbaa !458
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !774
  %26 = icmp eq i32 %10, 31, !dbg !775
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !776
  %27 = bitcast i8* %23 to %struct.Node*, !dbg !776
  br i1 %26, label %39, label %28, !dbg !776

; <label>:28:                                     ; preds = %22
  %29 = sext i32 %14 to i64, !dbg !777
  br label %30, !dbg !777

; <label>:30:                                     ; preds = %30, %28
  %31 = phi %struct.Node* [ %27, %28 ], [ %38, %30 ], !dbg !777
  %32 = phi i64 [ 0, %28 ], [ %36, %30 ]
  %33 = getelementptr inbounds %struct.Node, %struct.Node* %31, i64 %32, i32 1, i32 0, i32 2, !dbg !778
  store %struct.Node* null, %struct.Node** %33, align 8, !dbg !779, !tbaa !417
  %34 = getelementptr inbounds %struct.Node, %struct.Node* %31, i64 %32, i32 1, i32 0, i32 1, !dbg !780
  store i32 0, i32* %34, align 8, !dbg !780, !tbaa !417
  %35 = getelementptr inbounds %struct.Node, %struct.Node* %31, i64 %32, i32 0, i32 1, !dbg !781
  store i32 0, i32* %35, align 8, !dbg !781, !tbaa !495
  %36 = add nuw nsw i64 %32, 1, !dbg !782
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !783
  %37 = icmp slt i64 %36, %29, !dbg !775
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !776
  %38 = load %struct.Node*, %struct.Node** %24, align 8, !dbg !784, !tbaa !458
  br i1 %37, label %30, label %39, !dbg !776, !llvm.loop !785

; <label>:39:                                     ; preds = %30, %22
  %40 = phi i64 [ -2147483648, %22 ], [ %29, %30 ]
  %41 = phi %struct.Node* [ %27, %22 ], [ %38, %30 ], !dbg !787
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %42 = trunc i32 %10 to i8
  br label %43

; <label>:43:                                     ; preds = %39, %5
  %44 = phi %struct.Node* [ @dummynode_, %5 ], [ %41, %39 ], !dbg !787
  %45 = phi i8 [ 0, %5 ], [ %42, %39 ]
  %46 = phi i64 [ 0, %5 ], [ %40, %39 ]
  %47 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 4, !dbg !788
  store i8 %45, i8* %47, align 1, !dbg !789, !tbaa !491
  %48 = getelementptr inbounds %struct.Node, %struct.Node* %44, i64 %46, !dbg !787
  %49 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 8, !dbg !790
  store %struct.Node* %48, %struct.Node** %49, align 8, !dbg !791, !tbaa !792
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !793
  ret void, !dbg !793
}

; Function Attrs: noredzone nounwind
define hidden void @luaH_free(%struct.lua_State*, %struct.Table*) local_unnamed_addr #0 !dbg !794 {
  %3 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7, !dbg !802
  %4 = load %struct.Node*, %struct.Node** %3, align 8, !dbg !802, !tbaa !458
  %5 = icmp eq %struct.Node* %4, @dummynode_, !dbg !804
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !805
  br i1 %5, label %15, label %6, !dbg !805

; <label>:6:                                      ; preds = %2
  %7 = bitcast %struct.Node* %4 to i8*, !dbg !806
  %8 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 4, !dbg !806
  %9 = load i8, i8* %8, align 1, !dbg !806, !tbaa !491
  %10 = zext i8 %9 to i32, !dbg !806
  %11 = shl i32 1, %10, !dbg !806
  %12 = sext i32 %11 to i64, !dbg !806
  %13 = mul nsw i64 %12, 40, !dbg !806
  %14 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* %7, i64 %13, i64 0) #5, !dbg !806
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !806
  br label %15, !dbg !806

; <label>:15:                                     ; preds = %2, %6
  %16 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 6, !dbg !807
  %17 = bitcast %struct.lua_TValue** %16 to i8**, !dbg !807
  %18 = load i8*, i8** %17, align 8, !dbg !807, !tbaa !479
  %19 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 10, !dbg !807
  %20 = load i32, i32* %19, align 8, !dbg !807, !tbaa !431
  %21 = sext i32 %20 to i64, !dbg !807
  %22 = shl nsw i64 %21, 4, !dbg !807
  %23 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* %18, i64 %22, i64 0) #5, !dbg !807
  %24 = bitcast %struct.Table* %1 to i8*, !dbg !808
  %25 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* %24, i64 64, i64 0) #5, !dbg !808
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !809
  ret void, !dbg !809
}

; Function Attrs: noredzone nounwind
define hidden %struct.lua_TValue* @luaH_getnum(%struct.Table* nocapture readonly, i32) local_unnamed_addr #0 !dbg !810 {
  %3 = alloca double, align 8
  %4 = alloca [2 x i32], align 4
  %5 = add nsw i32 %1, -1, !dbg !837
  %6 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 10, !dbg !838
  %7 = load i32, i32* %6, align 8, !dbg !838, !tbaa !431
  %8 = icmp ult i32 %5, %7, !dbg !839
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !840
  br i1 %8, label %9, label %14, !dbg !840

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 6, !dbg !841
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !841, !tbaa !479
  %12 = sext i32 %5 to i64, !dbg !842
  %13 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %11, i64 %12, !dbg !842
  br label %60, !dbg !843

; <label>:14:                                     ; preds = %2
  %15 = sitofp i32 %1 to double, !dbg !844
  %16 = bitcast double* %3 to i8*, !dbg !846
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16), !dbg !846
  store double %15, double* %3, align 8, !tbaa !848
  %17 = bitcast [2 x i32]* %4 to i8*, !dbg !850
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %17) #4, !dbg !850
  %18 = icmp eq i32 %1, 0, !dbg !851
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !853
  br i1 %18, label %19, label %22, !dbg !853

; <label>:19:                                     ; preds = %14
  %20 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 7, !dbg !854
  %21 = load %struct.Node*, %struct.Node** %20, align 8, !dbg !854, !tbaa !458
  br label %40, !dbg !855

; <label>:22:                                     ; preds = %14
  %23 = call i8* @memcpy(i8* nonnull %17, i8* nonnull %16, i64 8) #5, !dbg !856
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !858
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !860
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1, !dbg !861
  %26 = load i32, i32* %25, align 4, !dbg !861, !tbaa !863
  %27 = load i32, i32* %24, align 4, !dbg !864, !tbaa !863
  %28 = add i32 %27, %26, !dbg !864
  store i32 %28, i32* %24, align 4, !dbg !864, !tbaa !863
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !865
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !860
  %29 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 7, !dbg !866
  %30 = load %struct.Node*, %struct.Node** %29, align 8, !dbg !866, !tbaa !458
  %31 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 4, !dbg !866
  %32 = load i8, i8* %31, align 1, !dbg !866, !tbaa !491
  %33 = zext i8 %32 to i32, !dbg !866
  %34 = shl nsw i32 -1, %33, !dbg !866
  %35 = or i32 %34, 1, !dbg !866
  %36 = xor i32 %35, -2, !dbg !866
  %37 = urem i32 %28, %36, !dbg !866
  %38 = zext i32 %37 to i64, !dbg !866
  %39 = getelementptr inbounds %struct.Node, %struct.Node* %30, i64 %38, !dbg !866
  br label %40, !dbg !867

; <label>:40:                                     ; preds = %19, %22
  %41 = phi %struct.Node* [ %21, %19 ], [ %39, %22 ], !dbg !868
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !869
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %17) #4, !dbg !870
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !870
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16), !dbg !870
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !872
  br label %42, !dbg !872

; <label>:42:                                     ; preds = %54, %40
  %43 = phi %struct.Node* [ %41, %40 ], [ %56, %54 ], !dbg !873
  %44 = getelementptr inbounds %struct.Node, %struct.Node* %43, i64 0, i32 1, i32 0, i32 1, !dbg !876
  %45 = load i32, i32* %44, align 8, !dbg !876, !tbaa !417
  %46 = icmp eq i32 %45, 3, !dbg !876
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !877
  br i1 %46, label %47, label %54, !dbg !877

; <label>:47:                                     ; preds = %42
  %48 = getelementptr inbounds %struct.Node, %struct.Node* %43, i64 0, i32 1, i32 0, i32 0, !dbg !878
  %49 = bitcast %union.Value* %48 to double*, !dbg !878
  %50 = load double, double* %49, align 8, !dbg !878, !tbaa !417
  %51 = fcmp oeq double %50, %15, !dbg !878
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !879
  br i1 %51, label %52, label %54, !dbg !879

; <label>:52:                                     ; preds = %47
  %53 = getelementptr inbounds %struct.Node, %struct.Node* %43, i64 0, i32 0, !dbg !880
  br label %58, !dbg !881

; <label>:54:                                     ; preds = %47, %42
  %55 = getelementptr inbounds %struct.Node, %struct.Node* %43, i64 0, i32 1, i32 0, i32 2, !dbg !882
  %56 = load %struct.Node*, %struct.Node** %55, align 8, !dbg !882, !tbaa !417
  %57 = icmp eq %struct.Node* %56, null, !dbg !883
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !883
  br i1 %57, label %58, label %42, !dbg !883, !llvm.loop !884

; <label>:58:                                     ; preds = %54, %52
  %59 = phi %struct.lua_TValue* [ %53, %52 ], [ @luaO_nilobject_, %54 ], !dbg !869
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !873
  br label %60

; <label>:60:                                     ; preds = %58, %9
  %61 = phi %struct.lua_TValue* [ %13, %9 ], [ %59, %58 ], !dbg !873
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !886
  ret %struct.lua_TValue* %61, !dbg !886
}

; Function Attrs: noredzone nounwind
define hidden %struct.lua_TValue* @luaH_getstr(%struct.Table* nocapture readonly, %union.TString* readonly) local_unnamed_addr #0 !dbg !887 {
  %3 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 7, !dbg !896
  %4 = load %struct.Node*, %struct.Node** %3, align 8, !dbg !896, !tbaa !458
  %5 = getelementptr inbounds %union.TString, %union.TString* %1, i64 0, i32 0, i32 4, !dbg !896
  %6 = load i32, i32* %5, align 4, !dbg !896, !tbaa !417
  %7 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 4, !dbg !896
  %8 = load i8, i8* %7, align 1, !dbg !896, !tbaa !491
  %9 = zext i8 %8 to i32, !dbg !896
  %10 = shl nsw i32 -1, %9, !dbg !896
  %11 = xor i32 %10, -1, !dbg !896
  %12 = and i32 %6, %11, !dbg !896
  %13 = sext i32 %12 to i64, !dbg !896
  %14 = getelementptr inbounds %struct.Node, %struct.Node* %4, i64 %13, !dbg !896
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !898
  br label %15, !dbg !898

; <label>:15:                                     ; preds = %27, %2
  %16 = phi %struct.Node* [ %14, %2 ], [ %29, %27 ], !dbg !899
  %17 = getelementptr inbounds %struct.Node, %struct.Node* %16, i64 0, i32 1, i32 0, i32 1, !dbg !902
  %18 = load i32, i32* %17, align 8, !dbg !902, !tbaa !417
  %19 = icmp eq i32 %18, 4, !dbg !902
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !903
  br i1 %19, label %20, label %27, !dbg !903

; <label>:20:                                     ; preds = %15
  %21 = getelementptr inbounds %struct.Node, %struct.Node* %16, i64 0, i32 1, i32 0, i32 0, i32 0, !dbg !904
  %22 = bitcast %union.GCObject** %21 to %union.TString**, !dbg !904
  %23 = load %union.TString*, %union.TString** %22, align 8, !dbg !904, !tbaa !417
  %24 = icmp eq %union.TString* %23, %1, !dbg !905
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !906
  br i1 %24, label %25, label %27, !dbg !906

; <label>:25:                                     ; preds = %20
  %26 = getelementptr inbounds %struct.Node, %struct.Node* %16, i64 0, i32 0, !dbg !907
  br label %31, !dbg !908

; <label>:27:                                     ; preds = %20, %15
  %28 = getelementptr inbounds %struct.Node, %struct.Node* %16, i64 0, i32 1, i32 0, i32 2, !dbg !909
  %29 = load %struct.Node*, %struct.Node** %28, align 8, !dbg !909, !tbaa !417
  %30 = icmp eq %struct.Node* %29, null, !dbg !910
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !910
  br i1 %30, label %31, label %15, !dbg !910, !llvm.loop !911

; <label>:31:                                     ; preds = %27, %25
  %32 = phi %struct.lua_TValue* [ %26, %25 ], [ @luaO_nilobject_, %27 ], !dbg !913
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !899
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !914
  ret %struct.lua_TValue* %32, !dbg !914
}

; Function Attrs: noredzone nounwind
define hidden %struct.lua_TValue* @luaH_get(%struct.Table* nocapture readonly, %struct.lua_TValue*) local_unnamed_addr #0 !dbg !915 {
  %3 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1, i64 0, i32 1, !dbg !929
  %4 = load i32, i32* %3, align 8, !dbg !929, !tbaa !397
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !930
  switch i32 %4, label %47 [
    i32 0, label %63
    i32 4, label %5
    i32 3, label %38
  ], !dbg !930

; <label>:5:                                      ; preds = %2
  %6 = bitcast %struct.lua_TValue* %1 to %union.TString**, !dbg !931
  %7 = load %union.TString*, %union.TString** %6, align 8, !dbg !931, !tbaa !417
  %8 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 7, !dbg !935
  %9 = load %struct.Node*, %struct.Node** %8, align 8, !dbg !935, !tbaa !458
  %10 = getelementptr inbounds %union.TString, %union.TString* %7, i64 0, i32 0, i32 4, !dbg !935
  %11 = load i32, i32* %10, align 4, !dbg !935, !tbaa !417
  %12 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 4, !dbg !935
  %13 = load i8, i8* %12, align 1, !dbg !935, !tbaa !491
  %14 = zext i8 %13 to i32, !dbg !935
  %15 = shl nsw i32 -1, %14, !dbg !935
  %16 = xor i32 %15, -1, !dbg !935
  %17 = and i32 %11, %16, !dbg !935
  %18 = sext i32 %17 to i64, !dbg !935
  %19 = getelementptr inbounds %struct.Node, %struct.Node* %9, i64 %18, !dbg !935
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !937
  br label %20, !dbg !937

; <label>:20:                                     ; preds = %32, %5
  %21 = phi %struct.Node* [ %19, %5 ], [ %34, %32 ], !dbg !938
  %22 = getelementptr inbounds %struct.Node, %struct.Node* %21, i64 0, i32 1, i32 0, i32 1, !dbg !939
  %23 = load i32, i32* %22, align 8, !dbg !939, !tbaa !417
  %24 = icmp eq i32 %23, 4, !dbg !939
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !940
  br i1 %24, label %25, label %32, !dbg !940

; <label>:25:                                     ; preds = %20
  %26 = getelementptr inbounds %struct.Node, %struct.Node* %21, i64 0, i32 1, i32 0, i32 0, i32 0, !dbg !941
  %27 = bitcast %union.GCObject** %26 to %union.TString**, !dbg !941
  %28 = load %union.TString*, %union.TString** %27, align 8, !dbg !941, !tbaa !417
  %29 = icmp eq %union.TString* %28, %7, !dbg !942
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !943
  br i1 %29, label %30, label %32, !dbg !943

; <label>:30:                                     ; preds = %25
  %31 = getelementptr inbounds %struct.Node, %struct.Node* %21, i64 0, i32 0, !dbg !944
  br label %36, !dbg !945

; <label>:32:                                     ; preds = %25, %20
  %33 = getelementptr inbounds %struct.Node, %struct.Node* %21, i64 0, i32 1, i32 0, i32 2, !dbg !946
  %34 = load %struct.Node*, %struct.Node** %33, align 8, !dbg !946, !tbaa !417
  %35 = icmp eq %struct.Node* %34, null, !dbg !947
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !947
  br i1 %35, label %36, label %20, !dbg !947, !llvm.loop !911

; <label>:36:                                     ; preds = %32, %30
  %37 = phi %struct.lua_TValue* [ %31, %30 ], [ @luaO_nilobject_, %32 ], !dbg !948
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !949
  br label %61, !dbg !950

; <label>:38:                                     ; preds = %2
  %39 = bitcast %struct.lua_TValue* %1 to double*, !dbg !951
  %40 = load double, double* %39, align 8, !dbg !951, !tbaa !417
  %41 = fptosi double %40 to i32, !dbg !953
  %42 = sitofp i32 %41 to double, !dbg !955
  %43 = fcmp oeq double %40, %42, !dbg !955
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !957
  br i1 %43, label %45, label %44, !dbg !957

; <label>:44:                                     ; preds = %38
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !958
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %47

; <label>:45:                                     ; preds = %38
  %46 = tail call %struct.lua_TValue* @luaH_getnum(%struct.Table* %0, i32 %41) #6, !dbg !959
  br label %61

; <label>:47:                                     ; preds = %44, %2
  %48 = tail call fastcc %struct.Node* @mainposition(%struct.Table* %0, %struct.lua_TValue* nonnull %1) #6, !dbg !960
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !962
  br label %49, !dbg !962

; <label>:49:                                     ; preds = %57, %47
  %50 = phi %struct.Node* [ %48, %47 ], [ %59, %57 ], !dbg !963
  %51 = getelementptr inbounds %struct.Node, %struct.Node* %50, i64 0, i32 1, !dbg !966
  %52 = bitcast %union.TKey* %51 to %struct.lua_TValue*, !dbg !966
  %53 = tail call i32 @luaO_rawequalObj(%struct.lua_TValue* nonnull %52, %struct.lua_TValue* %1) #5, !dbg !967
  %54 = icmp eq i32 %53, 0, !dbg !967
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !968
  br i1 %54, label %57, label %55, !dbg !968

; <label>:55:                                     ; preds = %49
  %56 = getelementptr inbounds %struct.Node, %struct.Node* %50, i64 0, i32 0, !dbg !969
  br label %61, !dbg !970

; <label>:57:                                     ; preds = %49
  %58 = getelementptr inbounds %struct.Node, %struct.Node* %50, i64 0, i32 1, i32 0, i32 2, !dbg !971
  %59 = load %struct.Node*, %struct.Node** %58, align 8, !dbg !971, !tbaa !417
  %60 = icmp eq %struct.Node* %59, null, !dbg !972
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !972
  br i1 %60, label %61, label %49, !dbg !972, !llvm.loop !973

; <label>:61:                                     ; preds = %57, %55, %36, %45
  %62 = phi %struct.lua_TValue* [ %37, %36 ], [ %46, %45 ], [ %56, %55 ], [ @luaO_nilobject_, %57 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !949
  br label %63

; <label>:63:                                     ; preds = %61, %2
  %64 = phi %struct.lua_TValue* [ @luaO_nilobject_, %2 ], [ %62, %61 ], !dbg !949
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !975
  ret %struct.lua_TValue* %64, !dbg !975
}

; Function Attrs: noredzone nounwind
define internal fastcc %struct.Node* @mainposition(%struct.Table* nocapture readonly, %struct.lua_TValue* nocapture readonly) unnamed_addr #0 !dbg !976 {
  %3 = alloca double, align 8
  %4 = alloca [2 x i32], align 4
  %5 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1, i64 0, i32 1, !dbg !987
  %6 = load i32, i32* %5, align 8, !dbg !987, !tbaa !397
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !988
  switch i32 %6, label %79 [
    i32 3, label %7
    i32 4, label %36
    i32 1, label %51
    i32 2, label %64
  ], !dbg !988

; <label>:7:                                      ; preds = %2
  %8 = bitcast %struct.lua_TValue* %1 to double*, !dbg !989
  %9 = load double, double* %8, align 8, !dbg !989, !tbaa !417
  %10 = bitcast double* %3 to i8*, !dbg !990
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10), !dbg !990
  store double %9, double* %3, align 8, !tbaa !848
  %11 = bitcast [2 x i32]* %4 to i8*, !dbg !992
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #4, !dbg !992
  %12 = fcmp oeq double %9, 0.000000e+00, !dbg !993
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !994
  br i1 %12, label %13, label %16, !dbg !994

; <label>:13:                                     ; preds = %7
  %14 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 7, !dbg !995
  %15 = load %struct.Node*, %struct.Node** %14, align 8, !dbg !995, !tbaa !458
  br label %34, !dbg !996

; <label>:16:                                     ; preds = %7
  %17 = call i8* @memcpy(i8* nonnull %11, i8* nonnull %10, i64 8) #5, !dbg !997
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !999
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1000
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1, !dbg !1001
  %20 = load i32, i32* %19, align 4, !dbg !1001, !tbaa !863
  %21 = load i32, i32* %18, align 4, !dbg !1002, !tbaa !863
  %22 = add i32 %21, %20, !dbg !1002
  store i32 %22, i32* %18, align 4, !dbg !1002, !tbaa !863
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1003
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1000
  %23 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 7, !dbg !1004
  %24 = load %struct.Node*, %struct.Node** %23, align 8, !dbg !1004, !tbaa !458
  %25 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 4, !dbg !1004
  %26 = load i8, i8* %25, align 1, !dbg !1004, !tbaa !491
  %27 = zext i8 %26 to i32, !dbg !1004
  %28 = shl nsw i32 -1, %27, !dbg !1004
  %29 = or i32 %28, 1, !dbg !1004
  %30 = xor i32 %29, -2, !dbg !1004
  %31 = urem i32 %22, %30, !dbg !1004
  %32 = zext i32 %31 to i64, !dbg !1004
  %33 = getelementptr inbounds %struct.Node, %struct.Node* %24, i64 %32, !dbg !1004
  br label %34, !dbg !1005

; <label>:34:                                     ; preds = %13, %16
  %35 = phi %struct.Node* [ %15, %13 ], [ %33, %16 ], !dbg !1006
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1007
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #4, !dbg !1008
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1008
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10), !dbg !1008
  br label %94, !dbg !1009

; <label>:36:                                     ; preds = %2
  %37 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 7, !dbg !1010
  %38 = load %struct.Node*, %struct.Node** %37, align 8, !dbg !1010, !tbaa !458
  %39 = bitcast %struct.lua_TValue* %1 to %struct.anon.1**, !dbg !1010
  %40 = load %struct.anon.1*, %struct.anon.1** %39, align 8, !dbg !1010, !tbaa !417
  %41 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %40, i64 0, i32 4, !dbg !1010
  %42 = load i32, i32* %41, align 4, !dbg !1010, !tbaa !417
  %43 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 4, !dbg !1010
  %44 = load i8, i8* %43, align 1, !dbg !1010, !tbaa !491
  %45 = zext i8 %44 to i32, !dbg !1010
  %46 = shl nsw i32 -1, %45, !dbg !1010
  %47 = xor i32 %46, -1, !dbg !1010
  %48 = and i32 %42, %47, !dbg !1010
  %49 = sext i32 %48 to i64, !dbg !1010
  %50 = getelementptr inbounds %struct.Node, %struct.Node* %38, i64 %49, !dbg !1010
  br label %94, !dbg !1011

; <label>:51:                                     ; preds = %2
  %52 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 7, !dbg !1012
  %53 = load %struct.Node*, %struct.Node** %52, align 8, !dbg !1012, !tbaa !458
  %54 = bitcast %struct.lua_TValue* %1 to i32*, !dbg !1012
  %55 = load i32, i32* %54, align 8, !dbg !1012, !tbaa !417
  %56 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 4, !dbg !1012
  %57 = load i8, i8* %56, align 1, !dbg !1012, !tbaa !491
  %58 = zext i8 %57 to i32, !dbg !1012
  %59 = shl nsw i32 -1, %58, !dbg !1012
  %60 = xor i32 %59, -1, !dbg !1012
  %61 = and i32 %55, %60, !dbg !1012
  %62 = sext i32 %61 to i64, !dbg !1012
  %63 = getelementptr inbounds %struct.Node, %struct.Node* %53, i64 %62, !dbg !1012
  br label %94, !dbg !1013

; <label>:64:                                     ; preds = %2
  %65 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 7, !dbg !1014
  %66 = load %struct.Node*, %struct.Node** %65, align 8, !dbg !1014, !tbaa !458
  %67 = bitcast %struct.lua_TValue* %1 to i64*, !dbg !1014
  %68 = load i64, i64* %67, align 8, !dbg !1014, !tbaa !417
  %69 = trunc i64 %68 to i32, !dbg !1014
  %70 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 4, !dbg !1014
  %71 = load i8, i8* %70, align 1, !dbg !1014, !tbaa !491
  %72 = zext i8 %71 to i32, !dbg !1014
  %73 = shl nsw i32 -1, %72, !dbg !1014
  %74 = or i32 %73, 1, !dbg !1014
  %75 = xor i32 %74, -2, !dbg !1014
  %76 = urem i32 %69, %75, !dbg !1014
  %77 = zext i32 %76 to i64, !dbg !1014
  %78 = getelementptr inbounds %struct.Node, %struct.Node* %66, i64 %77, !dbg !1014
  br label %94, !dbg !1015

; <label>:79:                                     ; preds = %2
  %80 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 7, !dbg !1016
  %81 = load %struct.Node*, %struct.Node** %80, align 8, !dbg !1016, !tbaa !458
  %82 = bitcast %struct.lua_TValue* %1 to i64*, !dbg !1016
  %83 = load i64, i64* %82, align 8, !dbg !1016, !tbaa !417
  %84 = trunc i64 %83 to i32, !dbg !1016
  %85 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 4, !dbg !1016
  %86 = load i8, i8* %85, align 1, !dbg !1016, !tbaa !491
  %87 = zext i8 %86 to i32, !dbg !1016
  %88 = shl nsw i32 -1, %87, !dbg !1016
  %89 = or i32 %88, 1, !dbg !1016
  %90 = xor i32 %89, -2, !dbg !1016
  %91 = urem i32 %84, %90, !dbg !1016
  %92 = zext i32 %91 to i64, !dbg !1016
  %93 = getelementptr inbounds %struct.Node, %struct.Node* %81, i64 %92, !dbg !1016
  br label %94, !dbg !1017

; <label>:94:                                     ; preds = %79, %64, %51, %36, %34
  %95 = phi %struct.Node* [ %93, %79 ], [ %78, %64 ], [ %63, %51 ], [ %50, %36 ], [ %35, %34 ], !dbg !1007
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1007
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1018
  ret %struct.Node* %95, !dbg !1018
}

; Function Attrs: noredzone
declare hidden i32 @luaO_rawequalObj(%struct.lua_TValue*, %struct.lua_TValue*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define hidden %struct.lua_TValue* @luaH_set(%struct.lua_State*, %struct.Table*, %struct.lua_TValue*) local_unnamed_addr #0 !dbg !653 {
  %4 = tail call %struct.lua_TValue* @luaH_get(%struct.Table* %1, %struct.lua_TValue* %2) #6, !dbg !1022
  %5 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 3, !dbg !1024
  store i8 0, i8* %5, align 2, !dbg !1025, !tbaa !667
  %6 = icmp eq %struct.lua_TValue* %4, @luaO_nilobject_, !dbg !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1027
  br i1 %6, label %7, label %21, !dbg !1027

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i64 0, i32 1, !dbg !1028
  %9 = load i32, i32* %8, align 8, !dbg !1028, !tbaa !397
  %10 = icmp eq i32 %9, 0, !dbg !1028
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1029
  br i1 %10, label %11, label %12, !dbg !1029

; <label>:11:                                     ; preds = %7
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0)) #5, !dbg !1030
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1030
  br label %19, !dbg !1030

; <label>:12:                                     ; preds = %7
  %13 = icmp eq i32 %9, 3, !dbg !1031
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1032
  br i1 %13, label %14, label %19, !dbg !1032

; <label>:14:                                     ; preds = %12
  %15 = bitcast %struct.lua_TValue* %2 to double*, !dbg !1033
  %16 = load double, double* %15, align 8, !dbg !1033, !tbaa !417
  %17 = fcmp ord double %16, 0.000000e+00, !dbg !1033
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1034
  br i1 %17, label %19, label %18, !dbg !1034

; <label>:18:                                     ; preds = %14
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !1035
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1035
  br label %19, !dbg !1035

; <label>:19:                                     ; preds = %12, %14, %18, %11
  %20 = tail call fastcc %struct.lua_TValue* @newkey(%struct.lua_State* %0, %struct.Table* nonnull %1, %struct.lua_TValue* nonnull %2) #6, !dbg !1036
  br label %21, !dbg !1037

; <label>:21:                                     ; preds = %3, %19
  %22 = phi %struct.lua_TValue* [ %20, %19 ], [ %4, %3 ], !dbg !1038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1039
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1040
  ret %struct.lua_TValue* %22, !dbg !1040
}

; Function Attrs: noredzone
declare hidden void @luaG_runerror(%struct.lua_State*, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal fastcc %struct.lua_TValue* @newkey(%struct.lua_State*, %struct.Table*, %struct.lua_TValue*) unnamed_addr #0 !dbg !1041 {
  %4 = alloca [27 x i32], align 16
  %5 = tail call fastcc %struct.Node* @mainposition(%struct.Table* %1, %struct.lua_TValue* %2) #6, !dbg !1073
  %6 = getelementptr inbounds %struct.Node, %struct.Node* %5, i64 0, i32 0, i32 1, !dbg !1075
  %7 = load i32, i32* %6, align 8, !dbg !1075, !tbaa !495
  %8 = icmp ne i32 %7, 0, !dbg !1075
  %9 = icmp eq %struct.Node* %5, @dummynode_, !dbg !1076
  %10 = or i1 %9, %8, !dbg !1077
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1077
  br i1 %10, label %11, label %247, !dbg !1077

; <label>:11:                                     ; preds = %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1085
  %12 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 8
  %13 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7
  %14 = load %struct.Node*, %struct.Node** %12, align 8, !dbg !1086, !tbaa !792
  %15 = load %struct.Node*, %struct.Node** %13, align 8, !dbg !1087, !tbaa !458
  br label %16, !dbg !1085

; <label>:16:                                     ; preds = %20, %11
  %17 = phi %struct.Node* [ %18, %20 ], [ %14, %11 ], !dbg !1086
  %18 = getelementptr inbounds %struct.Node, %struct.Node* %17, i64 -1, !dbg !1086
  store %struct.Node* %18, %struct.Node** %12, align 8, !dbg !1086, !tbaa !792
  %19 = icmp ugt %struct.Node* %17, %15, !dbg !1088
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1085
  br i1 %19, label %20, label %24, !dbg !1085

; <label>:20:                                     ; preds = %16
  %21 = getelementptr inbounds %struct.Node, %struct.Node* %17, i64 -1, i32 1, i32 0, i32 1, !dbg !1089
  %22 = load i32, i32* %21, align 8, !dbg !1089, !tbaa !417
  %23 = icmp eq i32 %22, 0, !dbg !1089
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1092
  br i1 %23, label %216, label %16, !dbg !1092, !llvm.loop !1093

; <label>:24:                                     ; preds = %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1096
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1097
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1098
  %25 = bitcast [27 x i32]* %4 to i8*, !dbg !1102
  call void @llvm.lifetime.start.p0i8(i64 108, i8* nonnull %25) #4, !dbg !1102
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1104
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1106
  %26 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 0, i64 0, !dbg !1107
  store i32 0, i32* %26, align 16, !dbg !1109, !tbaa !863
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1106
  %27 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 0, i64 1, !dbg !1107
  store i32 0, i32* %27, align 4, !dbg !1109, !tbaa !863
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1106
  %28 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 0, i64 2, !dbg !1107
  store i32 0, i32* %28, align 8, !dbg !1109, !tbaa !863
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1106
  %29 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 0, i64 3, !dbg !1107
  store i32 0, i32* %29, align 4, !dbg !1109, !tbaa !863
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1106
  %30 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 0, i64 4, !dbg !1107
  store i32 0, i32* %30, align 16, !dbg !1109, !tbaa !863
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1106
  %31 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 0, i64 5, !dbg !1107
  store i32 0, i32* %31, align 4, !dbg !1109, !tbaa !863
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1106
  %32 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 0, i64 6, !dbg !1107
  store i32 0, i32* %32, align 8, !dbg !1109, !tbaa !863
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1106
  %33 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 0, i64 7, !dbg !1107
  store i32 0, i32* %33, align 4, !dbg !1109, !tbaa !863
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1106
  %34 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 0, i64 8, !dbg !1107
  store i32 0, i32* %34, align 16, !dbg !1109, !tbaa !863
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1106
  %35 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 0, i64 9, !dbg !1107
  store i32 0, i32* %35, align 4, !dbg !1109, !tbaa !863
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1106
  %36 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 0, i64 10, !dbg !1107
  store i32 0, i32* %36, align 8, !dbg !1109, !tbaa !863
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1106
  %37 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 0, i64 11, !dbg !1107
  store i32 0, i32* %37, align 4, !dbg !1109, !tbaa !863
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1106
  %38 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 0, i64 12, !dbg !1107
  store i32 0, i32* %38, align 16, !dbg !1109, !tbaa !863
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1106
  %39 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 0, i64 13, !dbg !1107
  store i32 0, i32* %39, align 4, !dbg !1109, !tbaa !863
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1106
  %40 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 0, i64 14, !dbg !1107
  store i32 0, i32* %40, align 8, !dbg !1109, !tbaa !863
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1106
  %41 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 0, i64 15, !dbg !1107
  store i32 0, i32* %41, align 4, !dbg !1109, !tbaa !863
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1106
  %42 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 0, i64 16, !dbg !1107
  store i32 0, i32* %42, align 16, !dbg !1109, !tbaa !863
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1106
  %43 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 0, i64 17, !dbg !1107
  store i32 0, i32* %43, align 4, !dbg !1109, !tbaa !863
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1106
  %44 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 0, i64 18, !dbg !1107
  store i32 0, i32* %44, align 8, !dbg !1109, !tbaa !863
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1106
  %45 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 0, i64 19, !dbg !1107
  store i32 0, i32* %45, align 4, !dbg !1109, !tbaa !863
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1106
  %46 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 0, i64 20, !dbg !1107
  store i32 0, i32* %46, align 16, !dbg !1109, !tbaa !863
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1106
  %47 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 0, i64 21, !dbg !1107
  store i32 0, i32* %47, align 4, !dbg !1109, !tbaa !863
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1106
  %48 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 0, i64 22, !dbg !1107
  store i32 0, i32* %48, align 8, !dbg !1109, !tbaa !863
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1106
  %49 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 0, i64 23, !dbg !1107
  store i32 0, i32* %49, align 4, !dbg !1109, !tbaa !863
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1106
  %50 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 0, i64 24, !dbg !1107
  store i32 0, i32* %50, align 16, !dbg !1109, !tbaa !863
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1106
  %51 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 0, i64 25, !dbg !1107
  store i32 0, i32* %51, align 4, !dbg !1109, !tbaa !863
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1106
  %52 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 0, i64 26, !dbg !1107
  store i32 0, i32* %52, align 8, !dbg !1109, !tbaa !863
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1106
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1134
  %53 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 10
  %54 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 6
  %55 = load i32, i32* %53, align 8, !tbaa !431
  br label %56, !dbg !1134

; <label>:56:                                     ; preds = %87, %24
  %57 = phi i64 [ 0, %24 ], [ %94, %87 ]
  %58 = phi i32 [ 1, %24 ], [ %88, %87 ]
  %59 = phi i32 [ 0, %24 ], [ %93, %87 ]
  %60 = phi i32 [ 1, %24 ], [ %95, %87 ]
  %61 = icmp sgt i32 %60, %55, !dbg !1137
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1139
  br i1 %61, label %62, label %64, !dbg !1139

; <label>:62:                                     ; preds = %56
  %63 = icmp sgt i32 %58, %55, !dbg !1140
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1143
  br i1 %63, label %84, label %64, !dbg !1143

; <label>:64:                                     ; preds = %62, %56
  %65 = phi i32 [ %55, %62 ], [ %60, %56 ], !dbg !1144
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1145
  %66 = icmp sgt i32 %58, %65, !dbg !1146
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1149
  br i1 %66, label %87, label %67, !dbg !1149

; <label>:67:                                     ; preds = %64
  %68 = load %struct.lua_TValue*, %struct.lua_TValue** %54, align 8, !tbaa !479
  %69 = sext i32 %58 to i64, !dbg !1149
  %70 = sext i32 %65 to i64, !dbg !1149
  br label %71, !dbg !1149

; <label>:71:                                     ; preds = %80, %67
  %72 = phi i64 [ %82, %80 ], [ %69, %67 ]
  %73 = phi i32 [ %81, %80 ], [ 0, %67 ]
  %74 = add nsw i64 %72, -1, !dbg !1150
  %75 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %68, i64 %74, i32 1, !dbg !1150
  %76 = load i32, i32* %75, align 8, !dbg !1150, !tbaa !397
  %77 = icmp eq i32 %76, 0, !dbg !1150
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1153
  br i1 %77, label %80, label %78, !dbg !1153

; <label>:78:                                     ; preds = %71
  %79 = add nsw i32 %73, 1, !dbg !1154
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1155
  br label %80, !dbg !1155

; <label>:80:                                     ; preds = %78, %71
  %81 = phi i32 [ %73, %71 ], [ %79, %78 ], !dbg !1156
  %82 = add nsw i64 %72, 1, !dbg !1157
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1158
  %83 = icmp slt i64 %72, %70, !dbg !1146
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1149
  br i1 %83, label %71, label %85, !dbg !1149, !llvm.loop !1159

; <label>:84:                                     ; preds = %62
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1162
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %97

; <label>:85:                                     ; preds = %80
  %86 = trunc i64 %82 to i32, !dbg !1135
  br label %87, !dbg !1163

; <label>:87:                                     ; preds = %85, %64
  %88 = phi i32 [ %58, %64 ], [ %86, %85 ], !dbg !1164
  %89 = phi i32 [ 0, %64 ], [ %81, %85 ], !dbg !1135
  %90 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 0, i64 %57, !dbg !1163
  %91 = load i32, i32* %90, align 4, !dbg !1165, !tbaa !863
  %92 = add nsw i32 %91, %89, !dbg !1165
  store i32 %92, i32* %90, align 4, !dbg !1165, !tbaa !863
  %93 = add nsw i32 %89, %59, !dbg !1166
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1167
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %94 = add nuw nsw i64 %57, 1, !dbg !1168
  %95 = shl nsw i32 %60, 1, !dbg !1169
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1170
  %96 = icmp ult i64 %94, 27, !dbg !1171
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1134
  br i1 %96, label %56, label %97, !dbg !1134, !llvm.loop !1172

; <label>:97:                                     ; preds = %87, %84
  %98 = phi i32 [ %59, %84 ], [ %93, %87 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1175
  %99 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 4, !dbg !1195
  %100 = load i8, i8* %99, align 1, !dbg !1195, !tbaa !491
  %101 = zext i8 %100 to i32, !dbg !1195
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1196
  %102 = shl nsw i32 -1, %101, !dbg !1197
  %103 = xor i32 %102, -1, !dbg !1197
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1196
  %104 = sext i32 %103 to i64, !dbg !1196
  br label %105, !dbg !1196

; <label>:105:                                    ; preds = %139, %97
  %106 = phi i64 [ %104, %97 ], [ %142, %139 ]
  %107 = phi i32 [ 0, %97 ], [ %141, %139 ]
  %108 = phi i32 [ 0, %97 ], [ %140, %139 ]
  %109 = load %struct.Node*, %struct.Node** %13, align 8, !dbg !1199, !tbaa !458
  %110 = getelementptr inbounds %struct.Node, %struct.Node* %109, i64 %106, i32 0, i32 1, !dbg !1200
  %111 = load i32, i32* %110, align 8, !dbg !1200, !tbaa !495
  %112 = icmp eq i32 %111, 0, !dbg !1200
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1202
  br i1 %112, label %139, label %113, !dbg !1202

; <label>:113:                                    ; preds = %105
  %114 = getelementptr inbounds %struct.Node, %struct.Node* %109, i64 %106, i32 1, i32 0, i32 1, !dbg !1213
  %115 = load i32, i32* %114, align 8, !dbg !1213, !tbaa !397
  %116 = icmp eq i32 %115, 3, !dbg !1213
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1215
  br i1 %116, label %117, label %124, !dbg !1215

; <label>:117:                                    ; preds = %113
  %118 = getelementptr inbounds %struct.Node, %struct.Node* %109, i64 %106, i32 1, !dbg !1216
  %119 = bitcast %union.TKey* %118 to double*, !dbg !1217
  %120 = load double, double* %119, align 8, !dbg !1217, !tbaa !417
  %121 = fptosi double %120 to i32, !dbg !1221
  %122 = sitofp i32 %121 to double, !dbg !1223
  %123 = fcmp une double %120, %122, !dbg !1223
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1224
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1225
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br i1 %123, label %124, label %125

; <label>:124:                                    ; preds = %117, %113
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1226
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1227
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1228
  br label %135, !dbg !1228

; <label>:125:                                    ; preds = %117
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1227
  %126 = add i32 %121, -1, !dbg !1228
  %127 = icmp ult i32 %126, 67108864, !dbg !1228
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1228
  br i1 %127, label %128, label %135, !dbg !1228

; <label>:128:                                    ; preds = %125
  %129 = tail call i32 @luaO_log2(i32 %126) #5, !dbg !1231
  %130 = add nsw i32 %129, 1, !dbg !1231
  %131 = sext i32 %130 to i64, !dbg !1233
  %132 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 0, i64 %131, !dbg !1233
  %133 = load i32, i32* %132, align 4, !dbg !1234, !tbaa !863
  %134 = add nsw i32 %133, 1, !dbg !1234
  store i32 %134, i32* %132, align 4, !dbg !1234, !tbaa !863
  br label %135, !dbg !1235

; <label>:135:                                    ; preds = %124, %125, %128
  %136 = phi i32 [ 1, %128 ], [ 0, %125 ], [ 0, %124 ], !dbg !1236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1237
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1238
  %137 = add nsw i32 %136, %108, !dbg !1239
  %138 = add nsw i32 %107, 1, !dbg !1240
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1241
  br label %139, !dbg !1241

; <label>:139:                                    ; preds = %135, %105
  %140 = phi i32 [ %108, %105 ], [ %137, %135 ], !dbg !1237
  %141 = phi i32 [ %107, %105 ], [ %138, %135 ], !dbg !1237
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1196
  %142 = add nsw i64 %106, -1, !dbg !1197
  %143 = icmp eq i64 %106, 0
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1196
  br i1 %143, label %144, label %105, !dbg !1196, !llvm.loop !1242

; <label>:144:                                    ; preds = %139
  %145 = add nsw i32 %140, %98, !dbg !1245
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1246
  %146 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i64 0, i32 1, !dbg !1252
  %147 = load i32, i32* %146, align 8, !dbg !1252, !tbaa !397
  %148 = icmp eq i32 %147, 3, !dbg !1252
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1253
  br i1 %148, label %149, label %155, !dbg !1253

; <label>:149:                                    ; preds = %144
  %150 = bitcast %struct.lua_TValue* %2 to double*, !dbg !1254
  %151 = load double, double* %150, align 8, !dbg !1254, !tbaa !417
  %152 = fptosi double %151 to i32, !dbg !1256
  %153 = sitofp i32 %152 to double, !dbg !1258
  %154 = fcmp une double %151, %153, !dbg !1258
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1259
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1260
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br i1 %154, label %155, label %156

; <label>:155:                                    ; preds = %149, %144
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1261
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1262
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1263
  br label %166, !dbg !1263

; <label>:156:                                    ; preds = %149
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1262
  %157 = add i32 %152, -1, !dbg !1263
  %158 = icmp ult i32 %157, 67108864, !dbg !1263
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1263
  br i1 %158, label %159, label %166, !dbg !1263

; <label>:159:                                    ; preds = %156
  %160 = tail call i32 @luaO_log2(i32 %157) #5, !dbg !1265
  %161 = add nsw i32 %160, 1, !dbg !1265
  %162 = sext i32 %161 to i64, !dbg !1266
  %163 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 0, i64 %162, !dbg !1266
  %164 = load i32, i32* %163, align 4, !dbg !1267, !tbaa !863
  %165 = add nsw i32 %164, 1, !dbg !1267
  store i32 %165, i32* %163, align 4, !dbg !1267, !tbaa !863
  br label %166, !dbg !1268

; <label>:166:                                    ; preds = %155, %156, %159
  %167 = phi i32 [ 1, %159 ], [ 0, %156 ], [ 0, %155 ], !dbg !1269
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1270
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1271
  %168 = add nsw i32 %145, %167, !dbg !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1291
  %169 = icmp sgt i32 %168, 0, !dbg !1293
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1295
  br i1 %169, label %170, label %194, !dbg !1295

; <label>:170:                                    ; preds = %166, %189
  %171 = phi i64 [ %190, %189 ], [ 0, %166 ]
  %172 = phi i32 [ %192, %189 ], [ 0, %166 ]
  %173 = phi i32 [ %187, %189 ], [ 0, %166 ]
  %174 = phi i32 [ %186, %189 ], [ 0, %166 ]
  %175 = phi i32 [ %185, %189 ], [ 0, %166 ]
  %176 = phi i32 [ %191, %189 ], [ 1, %166 ]
  %177 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 0, i64 %171, !dbg !1296
  %178 = load i32, i32* %177, align 4, !dbg !1296, !tbaa !863
  %179 = icmp sgt i32 %178, 0, !dbg !1299
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1300
  br i1 %179, label %180, label %184, !dbg !1300

; <label>:180:                                    ; preds = %170
  %181 = add nsw i32 %178, %175, !dbg !1301
  %182 = icmp sgt i32 %181, %172, !dbg !1303
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1305
  br i1 %182, label %183, label %184, !dbg !1305

; <label>:183:                                    ; preds = %180
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1306
  br label %184, !dbg !1306

; <label>:184:                                    ; preds = %183, %180, %170
  %185 = phi i32 [ %181, %183 ], [ %181, %180 ], [ %175, %170 ], !dbg !1308
  %186 = phi i32 [ %181, %183 ], [ %174, %180 ], [ %174, %170 ], !dbg !1308
  %187 = phi i32 [ %176, %183 ], [ %173, %180 ], [ %173, %170 ], !dbg !1308
  %188 = icmp eq i32 %185, %168, !dbg !1309
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1311
  br i1 %188, label %194, label %189, !dbg !1311

; <label>:189:                                    ; preds = %184
  %190 = add nuw i64 %171, 1, !dbg !1312
  %191 = shl nsw i32 %176, 1, !dbg !1313
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1314
  %192 = and i32 %176, 2147483647, !dbg !1315
  %193 = icmp slt i32 %192, %168, !dbg !1293
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1295
  br i1 %193, label %170, label %194, !dbg !1295, !llvm.loop !1316

; <label>:194:                                    ; preds = %184, %189, %166
  %195 = phi i32 [ 0, %166 ], [ %186, %189 ], [ %186, %184 ], !dbg !1308
  %196 = phi i32 [ 0, %166 ], [ %187, %189 ], [ %187, %184 ], !dbg !1308
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1319
  %197 = add i32 %98, 1, !dbg !1321
  %198 = add i32 %197, %141, !dbg !1322
  %199 = sub i32 %198, %195, !dbg !1323
  tail call fastcc void @resize(%struct.lua_State* %0, %struct.Table* %1, i32 %196, i32 %199) #5, !dbg !1324
  call void @llvm.lifetime.end.p0i8(i64 108, i8* nonnull %25) #4, !dbg !1325
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1325
  %200 = tail call %struct.lua_TValue* @luaH_get(%struct.Table* %1, %struct.lua_TValue* %2) #5, !dbg !1330
  %201 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 3, !dbg !1332
  store i8 0, i8* %201, align 2, !dbg !1333, !tbaa !667
  %202 = icmp eq %struct.lua_TValue* %200, @luaO_nilobject_, !dbg !1334
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1335
  br i1 %202, label %203, label %245, !dbg !1335

; <label>:203:                                    ; preds = %194
  %204 = load i32, i32* %146, align 8, !dbg !1336, !tbaa !397
  %205 = icmp eq i32 %204, 0, !dbg !1336
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1337
  br i1 %205, label %206, label %207, !dbg !1337

; <label>:206:                                    ; preds = %203
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0)) #5, !dbg !1338
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1338
  br label %214, !dbg !1338

; <label>:207:                                    ; preds = %203
  %208 = icmp eq i32 %204, 3, !dbg !1339
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1340
  br i1 %208, label %209, label %214, !dbg !1340

; <label>:209:                                    ; preds = %207
  %210 = bitcast %struct.lua_TValue* %2 to double*, !dbg !1341
  %211 = load double, double* %210, align 8, !dbg !1341, !tbaa !417
  %212 = fcmp ord double %211, 0.000000e+00, !dbg !1341
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1342
  br i1 %212, label %214, label %213, !dbg !1342

; <label>:213:                                    ; preds = %209
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !1343
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1343
  br label %214, !dbg !1343

; <label>:214:                                    ; preds = %213, %209, %207, %206
  %215 = tail call fastcc %struct.lua_TValue* @newkey(%struct.lua_State* %0, %struct.Table* nonnull %1, %struct.lua_TValue* nonnull %2) #5, !dbg !1344
  br label %245, !dbg !1345

; <label>:216:                                    ; preds = %20
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1346
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1097
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1098
  %217 = getelementptr inbounds %struct.Node, %struct.Node* %5, i64 0, i32 1, !dbg !1348
  %218 = bitcast %union.TKey* %217 to %struct.lua_TValue*, !dbg !1348
  %219 = tail call fastcc %struct.Node* @mainposition(%struct.Table* nonnull %1, %struct.lua_TValue* nonnull %218) #6, !dbg !1349
  %220 = icmp eq %struct.Node* %219, %5, !dbg !1351
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1353
  br i1 %220, label %237, label %221, !dbg !1353

; <label>:221:                                    ; preds = %216
  %222 = getelementptr inbounds %struct.Node, %struct.Node* %219, i64 0, i32 1, i32 0, i32 2, !dbg !1354
  %223 = load %struct.Node*, %struct.Node** %222, align 8, !dbg !1354, !tbaa !417
  %224 = icmp eq %struct.Node* %223, %5, !dbg !1356
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1357
  br i1 %224, label %232, label %225, !dbg !1357

; <label>:225:                                    ; preds = %221, %225
  %226 = phi %struct.Node* [ %228, %225 ], [ %223, %221 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1357
  %227 = getelementptr inbounds %struct.Node, %struct.Node* %226, i64 0, i32 1, i32 0, i32 2, !dbg !1354
  %228 = load %struct.Node*, %struct.Node** %227, align 8, !dbg !1354, !tbaa !417
  %229 = icmp eq %struct.Node* %228, %5, !dbg !1356
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1357
  br i1 %229, label %230, label %225, !dbg !1357, !llvm.loop !1358

; <label>:230:                                    ; preds = %225
  %231 = getelementptr inbounds %struct.Node, %struct.Node* %226, i64 0, i32 1, i32 0, i32 2, !dbg !1354
  br label %232, !dbg !1360

; <label>:232:                                    ; preds = %230, %221
  %233 = phi %struct.Node** [ %222, %221 ], [ %231, %230 ], !dbg !1354
  store %struct.Node* %18, %struct.Node** %233, align 8, !dbg !1360, !tbaa !417
  %234 = bitcast %struct.Node* %18 to i8*, !dbg !1361
  %235 = bitcast %struct.Node* %5 to i8*, !dbg !1361
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %234, i8* align 8 %235, i64 40, i1 false), !dbg !1361, !tbaa.struct !1362
  %236 = getelementptr inbounds %struct.Node, %struct.Node* %5, i64 0, i32 1, i32 0, i32 2, !dbg !1364
  store %struct.Node* null, %struct.Node** %236, align 8, !dbg !1365, !tbaa !417
  store i32 0, i32* %6, align 8, !dbg !1366, !tbaa !495
  br label %243, !dbg !1367

; <label>:237:                                    ; preds = %216
  %238 = getelementptr inbounds %struct.Node, %struct.Node* %5, i64 0, i32 1, i32 0, i32 2, !dbg !1368
  %239 = bitcast %struct.Node** %238 to i64*, !dbg !1368
  %240 = load i64, i64* %239, align 8, !dbg !1368, !tbaa !417
  %241 = getelementptr inbounds %struct.Node, %struct.Node* %17, i64 -1, i32 1, i32 0, i32 2, !dbg !1370
  %242 = bitcast %struct.Node** %241 to i64*, !dbg !1371
  store i64 %240, i64* %242, align 8, !dbg !1371, !tbaa !417
  store %struct.Node* %18, %struct.Node** %238, align 8, !dbg !1372, !tbaa !417
  br label %243

; <label>:243:                                    ; preds = %232, %237
  %244 = phi %struct.Node* [ %5, %232 ], [ %18, %237 ], !dbg !1373
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1374
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %247

; <label>:245:                                    ; preds = %194, %214
  %246 = phi %struct.lua_TValue* [ %215, %214 ], [ %200, %194 ], !dbg !1375
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1376
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1377
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1378
  br label %273

; <label>:247:                                    ; preds = %243, %3
  %248 = phi %struct.Node* [ %5, %3 ], [ %244, %243 ], !dbg !1074
  %249 = getelementptr inbounds %struct.Node, %struct.Node* %248, i64 0, i32 1, i32 0, !dbg !1379
  %250 = bitcast %struct.lua_TValue* %2 to i64*, !dbg !1380
  %251 = bitcast %struct.anon.0* %249 to i64*, !dbg !1380
  %252 = load i64, i64* %250, align 8, !dbg !1380
  store i64 %252, i64* %251, align 8, !dbg !1380
  %253 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i64 0, i32 1, !dbg !1381
  %254 = load i32, i32* %253, align 8, !dbg !1381, !tbaa !397
  %255 = getelementptr inbounds %struct.Node, %struct.Node* %248, i64 0, i32 1, i32 0, i32 1, !dbg !1382
  store i32 %254, i32* %255, align 8, !dbg !1383, !tbaa !417
  %256 = load i32, i32* %253, align 8, !dbg !1384, !tbaa !397
  %257 = icmp sgt i32 %256, 3, !dbg !1384
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1384
  br i1 %257, label %258, label %271, !dbg !1384

; <label>:258:                                    ; preds = %247
  %259 = bitcast %struct.lua_TValue* %2 to %struct.GCheader**, !dbg !1384
  %260 = load %struct.GCheader*, %struct.GCheader** %259, align 8, !dbg !1384, !tbaa !417
  %261 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %260, i64 0, i32 2, !dbg !1384
  %262 = load i8, i8* %261, align 1, !dbg !1384, !tbaa !417
  %263 = and i8 %262, 3, !dbg !1384
  %264 = icmp eq i8 %263, 0, !dbg !1384
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1384
  br i1 %264, label %271, label %265, !dbg !1384

; <label>:265:                                    ; preds = %258
  %266 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 2, !dbg !1384
  %267 = load i8, i8* %266, align 1, !dbg !1384, !tbaa !417
  %268 = and i8 %267, 4, !dbg !1384
  %269 = icmp eq i8 %268, 0, !dbg !1384
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1387
  br i1 %269, label %271, label %270, !dbg !1387

; <label>:270:                                    ; preds = %265
  tail call void @luaC_barrierback(%struct.lua_State* %0, %struct.Table* nonnull %1) #5, !dbg !1384
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1384
  br label %271, !dbg !1384

; <label>:271:                                    ; preds = %265, %258, %270, %247
  %272 = getelementptr inbounds %struct.Node, %struct.Node* %248, i64 0, i32 0, !dbg !1388
  br label %273, !dbg !1389

; <label>:273:                                    ; preds = %245, %271
  %274 = phi %struct.lua_TValue* [ %272, %271 ], [ %246, %245 ], !dbg !1376
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1390
  ret %struct.lua_TValue* %274, !dbg !1390
}

; Function Attrs: noredzone nounwind
define hidden %struct.lua_TValue* @luaH_setnum(%struct.lua_State*, %struct.Table*, i32) local_unnamed_addr #0 !dbg !608 {
  %4 = alloca %struct.lua_TValue, align 8
  %5 = tail call %struct.lua_TValue* @luaH_getnum(%struct.Table* %1, i32 %2) #6, !dbg !1394
  %6 = icmp eq %struct.lua_TValue* %5, @luaO_nilobject_, !dbg !1396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1397
  br i1 %6, label %7, label %13, !dbg !1397

; <label>:7:                                      ; preds = %3
  %8 = bitcast %struct.lua_TValue* %4 to i8*, !dbg !1398
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #4, !dbg !1398
  %9 = sitofp i32 %2 to double, !dbg !1399
  %10 = bitcast %struct.lua_TValue* %4 to double*, !dbg !1399
  store double %9, double* %10, align 8, !dbg !1399, !tbaa !417
  %11 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %4, i64 0, i32 1, !dbg !1399
  store i32 3, i32* %11, align 8, !dbg !1399, !tbaa !397
  %12 = call fastcc %struct.lua_TValue* @newkey(%struct.lua_State* %0, %struct.Table* %1, %struct.lua_TValue* nonnull %4) #6, !dbg !1401
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #4, !dbg !1402
  br label %13

; <label>:13:                                     ; preds = %3, %7
  %14 = phi %struct.lua_TValue* [ %12, %7 ], [ %5, %3 ], !dbg !1403
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1404
  ret %struct.lua_TValue* %14, !dbg !1404
}

; Function Attrs: noredzone nounwind
define hidden %struct.lua_TValue* @luaH_setstr(%struct.lua_State*, %struct.Table*, %union.TString*) local_unnamed_addr #0 !dbg !1405 {
  %4 = alloca %struct.lua_TValue, align 8
  %5 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7, !dbg !1424
  %6 = load %struct.Node*, %struct.Node** %5, align 8, !dbg !1424, !tbaa !458
  %7 = getelementptr inbounds %union.TString, %union.TString* %2, i64 0, i32 0, i32 4, !dbg !1424
  %8 = load i32, i32* %7, align 4, !dbg !1424, !tbaa !417
  %9 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 4, !dbg !1424
  %10 = load i8, i8* %9, align 1, !dbg !1424, !tbaa !491
  %11 = zext i8 %10 to i32, !dbg !1424
  %12 = shl nsw i32 -1, %11, !dbg !1424
  %13 = xor i32 %12, -1, !dbg !1424
  %14 = and i32 %8, %13, !dbg !1424
  %15 = sext i32 %14 to i64, !dbg !1424
  %16 = getelementptr inbounds %struct.Node, %struct.Node* %6, i64 %15, !dbg !1424
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1426
  br label %17, !dbg !1426

; <label>:17:                                     ; preds = %27, %3
  %18 = phi %struct.Node* [ %16, %3 ], [ %29, %27 ], !dbg !1427
  %19 = getelementptr inbounds %struct.Node, %struct.Node* %18, i64 0, i32 1, i32 0, i32 1, !dbg !1428
  %20 = load i32, i32* %19, align 8, !dbg !1428, !tbaa !417
  %21 = icmp eq i32 %20, 4, !dbg !1428
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1429
  br i1 %21, label %22, label %27, !dbg !1429

; <label>:22:                                     ; preds = %17
  %23 = getelementptr inbounds %struct.Node, %struct.Node* %18, i64 0, i32 1, i32 0, i32 0, i32 0, !dbg !1430
  %24 = bitcast %union.GCObject** %23 to %union.TString**, !dbg !1430
  %25 = load %union.TString*, %union.TString** %24, align 8, !dbg !1430, !tbaa !417
  %26 = icmp eq %union.TString* %25, %2, !dbg !1431
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1432
  br i1 %26, label %32, label %27, !dbg !1432

; <label>:27:                                     ; preds = %22, %17
  %28 = getelementptr inbounds %struct.Node, %struct.Node* %18, i64 0, i32 1, i32 0, i32 2, !dbg !1433
  %29 = load %struct.Node*, %struct.Node** %28, align 8, !dbg !1433, !tbaa !417
  %30 = icmp eq %struct.Node* %29, null, !dbg !1434
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1434
  br i1 %30, label %31, label %17, !dbg !1434, !llvm.loop !911

; <label>:31:                                     ; preds = %27
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1435
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1436
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1438
  br label %35, !dbg !1438

; <label>:32:                                     ; preds = %22
  %33 = getelementptr inbounds %struct.Node, %struct.Node* %18, i64 0, i32 0, !dbg !1439
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1440
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1436
  %34 = icmp eq %struct.lua_TValue* %33, @luaO_nilobject_, !dbg !1441
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1438
  br i1 %34, label %35, label %40, !dbg !1438

; <label>:35:                                     ; preds = %31, %32
  %36 = bitcast %struct.lua_TValue* %4 to i8*, !dbg !1442
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %36) #4, !dbg !1442
  %37 = bitcast %struct.lua_TValue* %4 to %union.TString**, !dbg !1443
  store %union.TString* %2, %union.TString** %37, align 8, !dbg !1443, !tbaa !417
  %38 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %4, i64 0, i32 1, !dbg !1443
  store i32 4, i32* %38, align 8, !dbg !1443, !tbaa !397
  %39 = call fastcc %struct.lua_TValue* @newkey(%struct.lua_State* %0, %struct.Table* %1, %struct.lua_TValue* nonnull %4) #6, !dbg !1445
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %36) #4, !dbg !1446
  br label %40

; <label>:40:                                     ; preds = %32, %35
  %41 = phi %struct.lua_TValue* [ %39, %35 ], [ %33, %32 ], !dbg !1447
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1448
  ret %struct.lua_TValue* %41, !dbg !1448
}

; Function Attrs: noredzone nounwind
define hidden i32 @luaH_getn(%struct.Table* nocapture readonly) local_unnamed_addr #0 !dbg !1449 {
  %2 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 10, !dbg !1461
  %3 = load i32, i32* %2, align 8, !dbg !1461, !tbaa !431
  %4 = icmp eq i32 %3, 0, !dbg !1463
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1464
  br i1 %4, label %29, label %5, !dbg !1464

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 6, !dbg !1465
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8, !dbg !1465, !tbaa !479
  %8 = add i32 %3, -1, !dbg !1465
  %9 = zext i32 %8 to i64, !dbg !1465
  %10 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %7, i64 %9, i32 1, !dbg !1465
  %11 = load i32, i32* %10, align 8, !dbg !1465, !tbaa !397
  %12 = icmp eq i32 %11, 0, !dbg !1465
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1466
  br i1 %12, label %13, label %29, !dbg !1466

; <label>:13:                                     ; preds = %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1468
  %14 = icmp ugt i32 %3, 1, !dbg !1469
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1468
  br i1 %14, label %15, label %80, !dbg !1468

; <label>:15:                                     ; preds = %13, %15
  %16 = phi i32 [ %26, %15 ], [ 0, %13 ]
  %17 = phi i32 [ %25, %15 ], [ %3, %13 ]
  %18 = add i32 %16, %17, !dbg !1470
  %19 = lshr i32 %18, 1, !dbg !1471
  %20 = add nsw i32 %19, -1, !dbg !1473
  %21 = zext i32 %20 to i64, !dbg !1473
  %22 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %7, i64 %21, i32 1, !dbg !1473
  %23 = load i32, i32* %22, align 8, !dbg !1473, !tbaa !397
  %24 = icmp eq i32 %23, 0, !dbg !1473
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1475
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %25 = select i1 %24, i32 %19, i32 %17, !dbg !1476
  %26 = select i1 %24, i32 %16, i32 %19, !dbg !1476
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1468
  %27 = sub i32 %25, %26, !dbg !1477
  %28 = icmp ugt i32 %27, 1, !dbg !1469
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1468
  br i1 %28, label %15, label %80, !dbg !1468, !llvm.loop !1478

; <label>:29:                                     ; preds = %1, %5
  %30 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 7, !dbg !1480
  %31 = load %struct.Node*, %struct.Node** %30, align 8, !dbg !1480, !tbaa !458
  %32 = icmp eq %struct.Node* %31, @dummynode_, !dbg !1482
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1483
  br i1 %32, label %80, label %33, !dbg !1483

; <label>:33:                                     ; preds = %29
  %34 = add i32 %3, 1, !dbg !1497
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1498
  %35 = tail call %struct.lua_TValue* @luaH_getnum(%struct.Table* nonnull %0, i32 %34) #5, !dbg !1499
  %36 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %35, i64 0, i32 1, !dbg !1499
  %37 = load i32, i32* %36, align 8, !dbg !1499, !tbaa !397
  %38 = icmp eq i32 %37, 0, !dbg !1499
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1498
  br i1 %38, label %44, label %49, !dbg !1498

; <label>:39:                                     ; preds = %49
  %40 = tail call %struct.lua_TValue* @luaH_getnum(%struct.Table* %0, i32 %51) #5, !dbg !1499
  %41 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %40, i64 0, i32 1, !dbg !1499
  %42 = load i32, i32* %41, align 8, !dbg !1499, !tbaa !397
  %43 = icmp eq i32 %42, 0, !dbg !1499
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1498
  br i1 %43, label %44, label %49, !dbg !1498, !llvm.loop !1500

; <label>:44:                                     ; preds = %39, %33
  %45 = phi i32 [ %34, %33 ], [ %51, %39 ], !dbg !1503
  %46 = phi i32 [ %3, %33 ], [ %50, %39 ], !dbg !1503
  %47 = sub i32 %45, %46, !dbg !1505
  %48 = icmp ugt i32 %47, 1, !dbg !1506
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1507
  br i1 %48, label %65, label %78, !dbg !1507

; <label>:49:                                     ; preds = %33, %39
  %50 = phi i32 [ %51, %39 ], [ %34, %33 ]
  %51 = shl i32 %50, 1, !dbg !1508
  %52 = icmp ugt i32 %51, 2147483645, !dbg !1509
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1511
  br i1 %52, label %53, label %39, !dbg !1511, !llvm.loop !1500

; <label>:53:                                     ; preds = %49
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1512
  %54 = tail call %struct.lua_TValue* @luaH_getnum(%struct.Table* %0, i32 1) #5, !dbg !1514
  %55 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %54, i64 0, i32 1, !dbg !1514
  %56 = load i32, i32* %55, align 8, !dbg !1514, !tbaa !397
  %57 = icmp eq i32 %56, 0, !dbg !1514
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1512
  br i1 %57, label %78, label %58, !dbg !1512

; <label>:58:                                     ; preds = %53, %58
  %59 = phi i32 [ %60, %58 ], [ 1, %53 ]
  %60 = add i32 %59, 1, !dbg !1515
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1512
  %61 = tail call %struct.lua_TValue* @luaH_getnum(%struct.Table* %0, i32 %60) #5, !dbg !1514
  %62 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %61, i64 0, i32 1, !dbg !1514
  %63 = load i32, i32* %62, align 8, !dbg !1514, !tbaa !397
  %64 = icmp eq i32 %63, 0, !dbg !1514
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1512
  br i1 %64, label %78, label %58, !dbg !1512, !llvm.loop !1516

; <label>:65:                                     ; preds = %44, %65
  %66 = phi i32 [ %75, %65 ], [ %46, %44 ]
  %67 = phi i32 [ %74, %65 ], [ %45, %44 ]
  %68 = add i32 %67, %66, !dbg !1519
  %69 = lshr i32 %68, 1, !dbg !1520
  %70 = tail call %struct.lua_TValue* @luaH_getnum(%struct.Table* %0, i32 %69) #5, !dbg !1522
  %71 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %70, i64 0, i32 1, !dbg !1522
  %72 = load i32, i32* %71, align 8, !dbg !1522, !tbaa !397
  %73 = icmp eq i32 %72, 0, !dbg !1522
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1524
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %74 = select i1 %73, i32 %69, i32 %67, !dbg !1525
  %75 = select i1 %73, i32 %66, i32 %69, !dbg !1525
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1507
  %76 = sub i32 %74, %75, !dbg !1505
  %77 = icmp ugt i32 %76, 1, !dbg !1506
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1507
  br i1 %77, label %65, label %78, !dbg !1507, !llvm.loop !1526

; <label>:78:                                     ; preds = %58, %65, %44, %53
  %79 = phi i32 [ 0, %53 ], [ %46, %44 ], [ %75, %65 ], [ %59, %58 ], !dbg !1529
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1530
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1531
  br label %80, !dbg !1532

; <label>:80:                                     ; preds = %15, %29, %13, %78
  %81 = phi i32 [ %79, %78 ], [ 0, %13 ], [ %3, %29 ], [ %26, %15 ], !dbg !1530
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1533
  ret i32 %81, !dbg !1533
}

; Function Attrs: noredzone
declare hidden i8* @luaM_toobig(%struct.lua_State*) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden i32 @luaO_log2(i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden void @luaC_barrierback(%struct.lua_State*, %struct.Table*) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }
attributes #6 = { nobuiltin noredzone }

!llvm.module.flags = !{!344, !345, !346}
!llvm.ident = !{!347}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "dummynode_", scope: !2, file: !3, line: 75, type: !343, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !342)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/ltable.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!6, !9, !39, !15, !26, !322, !50, !90, !101, !52, !155}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Number", file: !7, line: 99, baseType: !8)
!7 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lua.h", directory: "/root/.unikraft/apps/redis/build")
!8 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "Table", file: !11, line: 348, baseType: !12)
!11 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lobject.h", directory: "/root/.unikraft/apps/redis/build")
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Table", file: !11, line: 338, size: 512, elements: !13)
!13 = !{!14, !315, !316, !317, !318, !319, !320, !321, !339, !340, !341}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !12, file: !11, line: 339, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCObject", file: !11, line: 36, baseType: !17)
!17 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "GCObject", file: !18, line: 136, size: 1472, elements: !19)
!18 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lstate.h", directory: "/root/.unikraft/apps/redis/build")
!19 = !{!20, !30, !57, !71, !311, !312, !313, !314}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "gch", scope: !17, file: !18, line: 137, baseType: !21, size: 128)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCheader", file: !11, line: 51, baseType: !22)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GCheader", file: !11, line: 49, size: 128, elements: !23)
!23 = !{!24, !25, !29}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !22, file: !11, line: 50, baseType: !15, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !22, file: !11, line: 50, baseType: !26, size: 8, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "lu_byte", file: !27, line: 27, baseType: !28)
!27 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/llimits.h", directory: "/root/.unikraft/apps/redis/build")
!28 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !22, file: !11, line: 50, baseType: !26, size: 8, offset: 72)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !17, file: !18, line: 138, baseType: !31, size: 192)
!31 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "TString", file: !11, line: 199, size: 192, elements: !32)
!32 = !{!33, !42}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !31, file: !11, line: 200, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "L_Umaxalign", file: !27, line: 47, baseType: !35)
!35 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !27, line: 47, size: 64, elements: !36)
!36 = !{!37, !38, !40}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !35, file: !27, line: 47, baseType: !8, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !35, file: !27, line: 47, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !35, file: !27, line: 47, baseType: !41, size: 64)
!41 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "tsv", scope: !31, file: !11, line: 206, baseType: !43, size: 192)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !31, file: !11, line: 201, size: 192, elements: !44)
!44 = !{!45, !46, !47, !48, !49, !51}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !43, file: !11, line: 202, baseType: !15, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !43, file: !11, line: 202, baseType: !26, size: 8, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !43, file: !11, line: 202, baseType: !26, size: 8, offset: 72)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !43, file: !11, line: 203, baseType: !26, size: 8, offset: 80)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !43, file: !11, line: 204, baseType: !50, size: 32, offset: 96)
!50 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !43, file: !11, line: 205, baseType: !52, size: 64, offset: 128)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !53, line: 40, baseType: !54)
!53 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !55, line: 129, baseType: !56)
!55 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!56 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !17, file: !18, line: 139, baseType: !58, size: 320)
!58 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "Udata", file: !11, line: 215, size: 320, elements: !59)
!59 = !{!60, !61}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !58, file: !11, line: 216, baseType: !34, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "uv", scope: !58, file: !11, line: 222, baseType: !62, size: 320)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !58, file: !11, line: 217, size: 320, elements: !63)
!63 = !{!64, !65, !66, !67, !69, !70}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !62, file: !11, line: 218, baseType: !15, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !62, file: !11, line: 218, baseType: !26, size: 8, offset: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !62, file: !11, line: 218, baseType: !26, size: 8, offset: 72)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "metatable", scope: !62, file: !11, line: 219, baseType: !68, size: 64, offset: 128)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !62, file: !11, line: 220, baseType: !68, size: 64, offset: 192)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !62, file: !11, line: 221, baseType: !52, size: 64, offset: 256)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !17, file: !18, line: 140, baseType: !72, size: 448)
!72 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "Closure", file: !11, line: 309, size: 448, elements: !73)
!73 = !{!74, !260}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !72, file: !11, line: 310, baseType: !75, size: 448)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "CClosure", file: !11, line: 299, baseType: !76)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CClosure", file: !11, line: 295, size: 448, elements: !77)
!77 = !{!78, !79, !80, !81, !82, !83, !84, !85, !256}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !76, file: !11, line: 296, baseType: !15, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !76, file: !11, line: 296, baseType: !26, size: 8, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !76, file: !11, line: 296, baseType: !26, size: 8, offset: 72)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "isC", scope: !76, file: !11, line: 296, baseType: !26, size: 8, offset: 80)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "nupvalues", scope: !76, file: !11, line: 296, baseType: !26, size: 8, offset: 88)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !76, file: !11, line: 296, baseType: !15, size: 64, offset: 128)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !76, file: !11, line: 296, baseType: !68, size: 64, offset: 192)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !76, file: !11, line: 297, baseType: !86, size: 64, offset: 256)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_CFunction", file: !7, line: 52, baseType: !87)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DISubroutineType(types: !89)
!89 = !{!90, !91}
!90 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_State", file: !7, line: 50, baseType: !93)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lua_State", file: !18, line: 100, size: 1472, elements: !94)
!94 = !{!95, !96, !97, !98, !99, !114, !115, !193, !207, !208, !209, !210, !211, !212, !213, !214, !216, !217, !218, !219, !220, !221, !246, !247, !248, !249, !250, !253}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !93, file: !18, line: 101, baseType: !15, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !93, file: !18, line: 101, baseType: !26, size: 8, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !93, file: !18, line: 101, baseType: !26, size: 8, offset: 72)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !93, file: !18, line: 102, baseType: !26, size: 8, offset: 80)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !93, file: !18, line: 103, baseType: !100, size: 64, offset: 128)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "StkId", file: !11, line: 193, baseType: !101)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "TValue", file: !11, line: 75, baseType: !103)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lua_TValue", file: !11, line: 73, size: 128, elements: !104)
!104 = !{!105, !113}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !103, file: !11, line: 74, baseType: !106, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "Value", file: !11, line: 64, baseType: !107)
!107 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !11, line: 59, size: 64, elements: !108)
!108 = !{!109, !110, !111, !112}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !107, file: !11, line: 60, baseType: !15, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !107, file: !11, line: 61, baseType: !39, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !107, file: !11, line: 62, baseType: !6, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !107, file: !11, line: 63, baseType: !90, size: 32)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !103, file: !11, line: 74, baseType: !90, size: 32, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !93, file: !18, line: 104, baseType: !100, size: 64, offset: 192)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "l_G", scope: !93, file: !18, line: 105, baseType: !116, size: 64, offset: 256)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "global_State", file: !18, line: 94, baseType: !118)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "global_State", file: !18, line: 68, size: 3456, elements: !119)
!119 = !{!120, !129, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !154, !156, !157, !158, !159, !160, !161, !162, !163, !165, !183, !187}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "strt", scope: !118, file: !18, line: 69, baseType: !121, size: 128)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "stringtable", file: !18, line: 42, baseType: !122)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stringtable", file: !18, line: 38, size: 128, elements: !123)
!123 = !{!124, !126, !128}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !122, file: !18, line: 39, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "nuse", scope: !122, file: !18, line: 40, baseType: !127, size: 32, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "lu_int32", file: !27, line: 18, baseType: !50)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !122, file: !18, line: 41, baseType: !90, size: 32, offset: 96)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "frealloc", scope: !118, file: !18, line: 70, baseType: !130, size: 64, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Alloc", file: !7, line: 66, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DISubroutineType(types: !133)
!133 = !{!39, !39, !39, !52, !52}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "ud", scope: !118, file: !18, line: 71, baseType: !39, size: 64, offset: 192)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "currentwhite", scope: !118, file: !18, line: 72, baseType: !26, size: 8, offset: 256)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "gcstate", scope: !118, file: !18, line: 73, baseType: !26, size: 8, offset: 264)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "sweepstrgc", scope: !118, file: !18, line: 74, baseType: !90, size: 32, offset: 288)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "rootgc", scope: !118, file: !18, line: 75, baseType: !15, size: 64, offset: 320)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "sweepgc", scope: !118, file: !18, line: 76, baseType: !125, size: 64, offset: 384)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "gray", scope: !118, file: !18, line: 77, baseType: !15, size: 64, offset: 448)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "grayagain", scope: !118, file: !18, line: 78, baseType: !15, size: 64, offset: 512)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "weak", scope: !118, file: !18, line: 79, baseType: !15, size: 64, offset: 576)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "tmudata", scope: !118, file: !18, line: 80, baseType: !15, size: 64, offset: 640)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "buff", scope: !118, file: !18, line: 81, baseType: !145, size: 192, offset: 704)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "Mbuffer", file: !146, line: 28, baseType: !147)
!146 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lzio.h", directory: "/root/.unikraft/apps/redis/build")
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Mbuffer", file: !146, line: 24, size: 192, elements: !148)
!148 = !{!149, !152, !153}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !147, file: !146, line: 25, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !147, file: !146, line: 26, baseType: !52, size: 64, offset: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "buffsize", scope: !147, file: !146, line: 27, baseType: !52, size: 64, offset: 128)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "GCthreshold", scope: !118, file: !18, line: 82, baseType: !155, size: 64, offset: 896)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "lu_mem", file: !27, line: 20, baseType: !52)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "totalbytes", scope: !118, file: !18, line: 83, baseType: !155, size: 64, offset: 960)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "estimate", scope: !118, file: !18, line: 84, baseType: !155, size: 64, offset: 1024)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "gcdept", scope: !118, file: !18, line: 85, baseType: !155, size: 64, offset: 1088)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "gcpause", scope: !118, file: !18, line: 86, baseType: !90, size: 32, offset: 1152)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "gcstepmul", scope: !118, file: !18, line: 87, baseType: !90, size: 32, offset: 1184)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "panic", scope: !118, file: !18, line: 88, baseType: !86, size: 64, offset: 1216)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "l_registry", scope: !118, file: !18, line: 89, baseType: !102, size: 128, offset: 1280)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "mainthread", scope: !118, file: !18, line: 90, baseType: !164, size: 64, offset: 1408)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "uvhead", scope: !118, file: !18, line: 91, baseType: !166, size: 320, offset: 1472)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "UpVal", file: !11, line: 284, baseType: !167)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "UpVal", file: !11, line: 274, size: 320, elements: !168)
!168 = !{!169, !170, !171, !172, !173}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !167, file: !11, line: 275, baseType: !15, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !167, file: !11, line: 275, baseType: !26, size: 8, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !167, file: !11, line: 275, baseType: !26, size: 8, offset: 72)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !167, file: !11, line: 276, baseType: !101, size: 64, offset: 128)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !167, file: !11, line: 283, baseType: !174, size: 128, offset: 192)
!174 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !167, file: !11, line: 277, size: 128, elements: !175)
!175 = !{!176, !177}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !174, file: !11, line: 278, baseType: !102, size: 128)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !174, file: !11, line: 282, baseType: !178, size: 128)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !174, file: !11, line: 279, size: 128, elements: !179)
!179 = !{!180, !182}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !178, file: !11, line: 280, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !178, file: !11, line: 281, baseType: !181, size: 64, offset: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "mt", scope: !118, file: !18, line: 92, baseType: !184, size: 576, offset: 1792)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 576, elements: !185)
!185 = !{!186}
!186 = !DISubrange(count: 9)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "tmname", scope: !118, file: !18, line: 93, baseType: !188, size: 1088, offset: 2368)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 1088, elements: !191)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "TString", file: !11, line: 207, baseType: !31)
!191 = !{!192}
!192 = !DISubrange(count: 17)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "ci", scope: !93, file: !18, line: 106, baseType: !194, size: 64, offset: 320)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "CallInfo", file: !18, line: 55, baseType: !196)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CallInfo", file: !18, line: 48, size: 320, elements: !197)
!197 = !{!198, !199, !200, !201, !205, !206}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !196, file: !18, line: 49, baseType: !100, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !196, file: !18, line: 50, baseType: !100, size: 64, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !196, file: !18, line: 51, baseType: !100, size: 64, offset: 128)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "savedpc", scope: !196, file: !18, line: 52, baseType: !202, size: 64, offset: 192)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "Instruction", file: !27, line: 88, baseType: !127)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "nresults", scope: !196, file: !18, line: 53, baseType: !90, size: 32, offset: 256)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "tailcalls", scope: !196, file: !18, line: 54, baseType: !90, size: 32, offset: 288)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "savedpc", scope: !93, file: !18, line: 107, baseType: !202, size: 64, offset: 384)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "stack_last", scope: !93, file: !18, line: 108, baseType: !100, size: 64, offset: 448)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !93, file: !18, line: 109, baseType: !100, size: 64, offset: 512)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "end_ci", scope: !93, file: !18, line: 110, baseType: !194, size: 64, offset: 576)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "base_ci", scope: !93, file: !18, line: 111, baseType: !194, size: 64, offset: 640)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "stacksize", scope: !93, file: !18, line: 112, baseType: !90, size: 32, offset: 704)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "size_ci", scope: !93, file: !18, line: 113, baseType: !90, size: 32, offset: 736)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "nCcalls", scope: !93, file: !18, line: 114, baseType: !215, size: 16, offset: 768)
!215 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "baseCcalls", scope: !93, file: !18, line: 115, baseType: !215, size: 16, offset: 784)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "hookmask", scope: !93, file: !18, line: 116, baseType: !26, size: 8, offset: 800)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "allowhook", scope: !93, file: !18, line: 117, baseType: !26, size: 8, offset: 808)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "basehookcount", scope: !93, file: !18, line: 118, baseType: !90, size: 32, offset: 832)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "hookcount", scope: !93, file: !18, line: 119, baseType: !90, size: 32, offset: 864)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "hook", scope: !93, file: !18, line: 120, baseType: !222, size: 64, offset: 896)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Hook", file: !7, line: 330, baseType: !223)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DISubroutineType(types: !225)
!225 = !{null, !91, !226}
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Debug", file: !7, line: 326, baseType: !228)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lua_Debug", file: !7, line: 346, size: 960, elements: !229)
!229 = !{!230, !231, !234, !235, !236, !237, !238, !239, !240, !241, !245}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !228, file: !7, line: 347, baseType: !90, size: 32)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !228, file: !7, line: 348, baseType: !232, size: 64, offset: 64)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "namewhat", scope: !228, file: !7, line: 349, baseType: !232, size: 64, offset: 128)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "what", scope: !228, file: !7, line: 350, baseType: !232, size: 64, offset: 192)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !228, file: !7, line: 351, baseType: !232, size: 64, offset: 256)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "currentline", scope: !228, file: !7, line: 352, baseType: !90, size: 32, offset: 320)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "nups", scope: !228, file: !7, line: 353, baseType: !90, size: 32, offset: 352)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "linedefined", scope: !228, file: !7, line: 354, baseType: !90, size: 32, offset: 384)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "lastlinedefined", scope: !228, file: !7, line: 355, baseType: !90, size: 32, offset: 416)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "short_src", scope: !228, file: !7, line: 356, baseType: !242, size: 480, offset: 448)
!242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 480, elements: !243)
!243 = !{!244}
!244 = !DISubrange(count: 60)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "i_ci", scope: !228, file: !7, line: 358, baseType: !90, size: 32, offset: 928)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "l_gt", scope: !93, file: !18, line: 121, baseType: !102, size: 128, offset: 960)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !93, file: !18, line: 122, baseType: !102, size: 128, offset: 1088)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "openupval", scope: !93, file: !18, line: 123, baseType: !15, size: 64, offset: 1216)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !93, file: !18, line: 124, baseType: !15, size: 64, offset: 1280)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "errorJmp", scope: !93, file: !18, line: 125, baseType: !251, size: 64, offset: 1344)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DICompositeType(tag: DW_TAG_structure_type, name: "lua_longjmp", file: !18, line: 18, flags: DIFlagFwdDecl)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "errfunc", scope: !93, file: !18, line: 126, baseType: !254, size: 64, offset: 1408)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !255, line: 49, baseType: !41)
!255 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!256 = !DIDerivedType(tag: DW_TAG_member, name: "upvalue", scope: !76, file: !11, line: 298, baseType: !257, size: 128, offset: 320)
!257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 128, elements: !258)
!258 = !{!259}
!259 = !DISubrange(count: 1)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !72, file: !11, line: 311, baseType: !261, size: 384)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "LClosure", file: !11, line: 306, baseType: !262)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LClosure", file: !11, line: 302, size: 384, elements: !263)
!263 = !{!264, !265, !266, !267, !268, !269, !270, !271, !308}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !262, file: !11, line: 303, baseType: !15, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !262, file: !11, line: 303, baseType: !26, size: 8, offset: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !262, file: !11, line: 303, baseType: !26, size: 8, offset: 72)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "isC", scope: !262, file: !11, line: 303, baseType: !26, size: 8, offset: 80)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "nupvalues", scope: !262, file: !11, line: 303, baseType: !26, size: 8, offset: 88)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !262, file: !11, line: 303, baseType: !15, size: 64, offset: 128)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !262, file: !11, line: 303, baseType: !68, size: 64, offset: 192)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !262, file: !11, line: 304, baseType: !272, size: 64, offset: 256)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Proto", file: !11, line: 231, size: 960, elements: !274)
!274 = !{!275, !276, !277, !278, !279, !281, !283, !285, !292, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !273, file: !11, line: 232, baseType: !15, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !273, file: !11, line: 232, baseType: !26, size: 8, offset: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !273, file: !11, line: 232, baseType: !26, size: 8, offset: 72)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !273, file: !11, line: 233, baseType: !101, size: 64, offset: 128)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !273, file: !11, line: 234, baseType: !280, size: 64, offset: 192)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !273, file: !11, line: 235, baseType: !282, size: 64, offset: 256)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "lineinfo", scope: !273, file: !11, line: 236, baseType: !284, size: 64, offset: 320)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "locvars", scope: !273, file: !11, line: 237, baseType: !286, size: 64, offset: 384)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LocVar", file: !11, line: 262, size: 128, elements: !288)
!288 = !{!289, !290, !291}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "varname", scope: !287, file: !11, line: 263, baseType: !189, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "startpc", scope: !287, file: !11, line: 264, baseType: !90, size: 32, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "endpc", scope: !287, file: !11, line: 265, baseType: !90, size: 32, offset: 96)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "upvalues", scope: !273, file: !11, line: 238, baseType: !293, size: 64, offset: 448)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !273, file: !11, line: 239, baseType: !189, size: 64, offset: 512)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "sizeupvalues", scope: !273, file: !11, line: 240, baseType: !90, size: 32, offset: 576)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "sizek", scope: !273, file: !11, line: 241, baseType: !90, size: 32, offset: 608)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "sizecode", scope: !273, file: !11, line: 242, baseType: !90, size: 32, offset: 640)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "sizelineinfo", scope: !273, file: !11, line: 243, baseType: !90, size: 32, offset: 672)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "sizep", scope: !273, file: !11, line: 244, baseType: !90, size: 32, offset: 704)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "sizelocvars", scope: !273, file: !11, line: 245, baseType: !90, size: 32, offset: 736)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "linedefined", scope: !273, file: !11, line: 246, baseType: !90, size: 32, offset: 768)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "lastlinedefined", scope: !273, file: !11, line: 247, baseType: !90, size: 32, offset: 800)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !273, file: !11, line: 248, baseType: !15, size: 64, offset: 832)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "nups", scope: !273, file: !11, line: 249, baseType: !26, size: 8, offset: 896)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "numparams", scope: !273, file: !11, line: 250, baseType: !26, size: 8, offset: 904)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "is_vararg", scope: !273, file: !11, line: 251, baseType: !26, size: 8, offset: 912)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "maxstacksize", scope: !273, file: !11, line: 252, baseType: !26, size: 8, offset: 920)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "upvals", scope: !262, file: !11, line: 305, baseType: !309, size: 64, offset: 320)
!309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !310, size: 64, elements: !258)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "h", scope: !17, file: !18, line: 141, baseType: !12, size: 512)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !17, file: !18, line: 142, baseType: !273, size: 960)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "uv", scope: !17, file: !18, line: 143, baseType: !167, size: 320)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "th", scope: !17, file: !18, line: 144, baseType: !93, size: 1472)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !12, file: !11, line: 339, baseType: !26, size: 8, offset: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !12, file: !11, line: 339, baseType: !26, size: 8, offset: 72)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !12, file: !11, line: 340, baseType: !26, size: 8, offset: 80)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "lsizenode", scope: !12, file: !11, line: 341, baseType: !26, size: 8, offset: 88)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "metatable", scope: !12, file: !11, line: 342, baseType: !68, size: 64, offset: 128)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "array", scope: !12, file: !11, line: 343, baseType: !101, size: 64, offset: 192)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !12, file: !11, line: 344, baseType: !322, size: 64, offset: 256)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "Node", file: !11, line: 335, baseType: !324)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Node", file: !11, line: 332, size: 320, elements: !325)
!325 = !{!326, !327}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "i_val", scope: !324, file: !11, line: 333, baseType: !102, size: 128)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "i_key", scope: !324, file: !11, line: 334, baseType: !328, size: 192, offset: 128)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "TKey", file: !11, line: 329, baseType: !329)
!329 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "TKey", file: !11, line: 323, size: 192, elements: !330)
!330 = !{!331, !338}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "nk", scope: !329, file: !11, line: 327, baseType: !332, size: 192)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !329, file: !11, line: 324, size: 192, elements: !333)
!333 = !{!334, !335, !336}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !332, file: !11, line: 325, baseType: !106, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !332, file: !11, line: 325, baseType: !90, size: 32, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !332, file: !11, line: 326, baseType: !337, size: 64, offset: 128)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "tvk", scope: !329, file: !11, line: 328, baseType: !102, size: 128)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "lastfree", scope: !12, file: !11, line: 345, baseType: !322, size: 64, offset: 320)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !12, file: !11, line: 346, baseType: !15, size: 64, offset: 384)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "sizearray", scope: !12, file: !11, line: 347, baseType: !90, size: 32, offset: 448)
!342 = !{!0}
!343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !323)
!344 = !{i32 2, !"Dwarf Version", i32 4}
!345 = !{i32 2, !"Debug Info Version", i32 3}
!346 = !{i32 1, !"wchar_size", i32 4}
!347 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!348 = distinct !DISubprogram(name: "luaH_next", scope: !3, file: !3, line: 162, type: !349, isLocal: false, isDefinition: true, scopeLine: 162, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !351)
!349 = !DISubroutineType(types: !350)
!350 = !{!90, !91, !9, !100}
!351 = !{!352, !353, !354, !355, !356, !363, !367, !368, !375, !376, !378}
!352 = !DILocalVariable(name: "L", arg: 1, scope: !348, file: !3, line: 162, type: !91)
!353 = !DILocalVariable(name: "t", arg: 2, scope: !348, file: !3, line: 162, type: !9)
!354 = !DILocalVariable(name: "key", arg: 3, scope: !348, file: !3, line: 162, type: !100)
!355 = !DILocalVariable(name: "i", scope: !348, file: !3, line: 163, type: !90)
!356 = !DILocalVariable(name: "i_o", scope: !357, file: !3, line: 166, type: !101)
!357 = distinct !DILexicalBlock(scope: !358, file: !3, line: 166, column: 7)
!358 = distinct !DILexicalBlock(scope: !359, file: !3, line: 165, column: 33)
!359 = distinct !DILexicalBlock(scope: !360, file: !3, line: 165, column: 9)
!360 = distinct !DILexicalBlock(scope: !361, file: !3, line: 164, column: 36)
!361 = distinct !DILexicalBlock(scope: !362, file: !3, line: 164, column: 3)
!362 = distinct !DILexicalBlock(scope: !348, file: !3, line: 164, column: 3)
!363 = !DILocalVariable(name: "o2", scope: !364, file: !3, line: 167, type: !365)
!364 = distinct !DILexicalBlock(scope: !358, file: !3, line: 167, column: 7)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!367 = !DILocalVariable(name: "o1", scope: !364, file: !3, line: 167, type: !101)
!368 = !DILocalVariable(name: "o2", scope: !369, file: !3, line: 173, type: !365)
!369 = distinct !DILexicalBlock(scope: !370, file: !3, line: 173, column: 7)
!370 = distinct !DILexicalBlock(scope: !371, file: !3, line: 172, column: 38)
!371 = distinct !DILexicalBlock(scope: !372, file: !3, line: 172, column: 9)
!372 = distinct !DILexicalBlock(scope: !373, file: !3, line: 171, column: 49)
!373 = distinct !DILexicalBlock(scope: !374, file: !3, line: 171, column: 3)
!374 = distinct !DILexicalBlock(scope: !348, file: !3, line: 171, column: 3)
!375 = !DILocalVariable(name: "o1", scope: !369, file: !3, line: 173, type: !101)
!376 = !DILocalVariable(name: "o2", scope: !377, file: !3, line: 174, type: !365)
!377 = distinct !DILexicalBlock(scope: !370, file: !3, line: 174, column: 7)
!378 = !DILocalVariable(name: "o1", scope: !377, file: !3, line: 174, type: !101)
!379 = !DILocation(line: 162, column: 27, scope: !348)
!380 = !DILocation(line: 162, column: 37, scope: !348)
!381 = !DILocation(line: 162, column: 46, scope: !348)
!382 = !DILocalVariable(name: "L", arg: 1, scope: !383, file: !3, line: 137, type: !91)
!383 = distinct !DISubprogram(name: "findindex", scope: !3, file: !3, line: 137, type: !349, isLocal: true, isDefinition: true, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !384)
!384 = !{!382, !385, !386, !387, !388}
!385 = !DILocalVariable(name: "t", arg: 2, scope: !383, file: !3, line: 137, type: !9)
!386 = !DILocalVariable(name: "key", arg: 3, scope: !383, file: !3, line: 137, type: !100)
!387 = !DILocalVariable(name: "i", scope: !383, file: !3, line: 138, type: !90)
!388 = !DILocalVariable(name: "n", scope: !389, file: !3, line: 144, type: !322)
!389 = distinct !DILexicalBlock(scope: !390, file: !3, line: 143, column: 8)
!390 = distinct !DILexicalBlock(scope: !383, file: !3, line: 141, column: 7)
!391 = !DILocation(line: 137, column: 34, scope: !383, inlinedAt: !392)
!392 = distinct !DILocation(line: 163, column: 11, scope: !348)
!393 = !DILocation(line: 137, column: 44, scope: !383, inlinedAt: !392)
!394 = !DILocation(line: 137, column: 53, scope: !383, inlinedAt: !392)
!395 = !DILocation(line: 139, column: 7, scope: !396, inlinedAt: !392)
!396 = distinct !DILexicalBlock(scope: !383, file: !3, line: 139, column: 7)
!397 = !{!398, !401, i64 8}
!398 = !{!"lua_TValue", !399, i64 0, !401, i64 8}
!399 = !{!"omnipotent char", !400, i64 0}
!400 = !{!"Simple C/C++ TBAA"}
!401 = !{!"int", !399, i64 0}
!402 = !DILocation(line: 139, column: 7, scope: !383, inlinedAt: !392)
!403 = !DILocalVariable(name: "key", arg: 1, scope: !404, file: !3, line: 120, type: !365)
!404 = distinct !DISubprogram(name: "arrayindex", scope: !3, file: !3, line: 120, type: !405, isLocal: true, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !407)
!405 = !DISubroutineType(types: !406)
!406 = !{!90, !365}
!407 = !{!403, !408, !411}
!408 = !DILocalVariable(name: "n", scope: !409, file: !3, line: 122, type: !6)
!409 = distinct !DILexicalBlock(scope: !410, file: !3, line: 121, column: 24)
!410 = distinct !DILexicalBlock(scope: !404, file: !3, line: 121, column: 7)
!411 = !DILocalVariable(name: "k", scope: !409, file: !3, line: 123, type: !90)
!412 = !DILocation(line: 120, column: 38, scope: !404, inlinedAt: !413)
!413 = distinct !DILocation(line: 140, column: 7, scope: !383, inlinedAt: !392)
!414 = !DILocation(line: 121, column: 7, scope: !410, inlinedAt: !413)
!415 = !DILocation(line: 121, column: 7, scope: !404, inlinedAt: !413)
!416 = !DILocation(line: 122, column: 20, scope: !409, inlinedAt: !413)
!417 = !{!399, !399, i64 0}
!418 = !DILocation(line: 122, column: 16, scope: !409, inlinedAt: !413)
!419 = !DILocation(line: 124, column: 5, scope: !409, inlinedAt: !413)
!420 = !DILocation(line: 123, column: 9, scope: !409, inlinedAt: !413)
!421 = !DILocation(line: 125, column: 9, scope: !422, inlinedAt: !413)
!422 = distinct !DILexicalBlock(scope: !409, file: !3, line: 125, column: 9)
!423 = !DILocation(line: 125, column: 9, scope: !409, inlinedAt: !413)
!424 = !DILocation(line: 0, scope: !410, inlinedAt: !413)
!425 = !DILocation(line: 128, column: 3, scope: !404, inlinedAt: !413)
!426 = !DILocation(line: 129, column: 1, scope: !404, inlinedAt: !413)
!427 = !DILocation(line: 141, column: 13, scope: !390, inlinedAt: !392)
!428 = !DILocation(line: 138, column: 7, scope: !383, inlinedAt: !392)
!429 = !DILocation(line: 141, column: 9, scope: !390, inlinedAt: !392)
!430 = !DILocation(line: 141, column: 24, scope: !390, inlinedAt: !392)
!431 = !{!432, !401, i64 56}
!432 = !{!"Table", !433, i64 0, !399, i64 8, !399, i64 9, !399, i64 10, !399, i64 11, !433, i64 16, !433, i64 24, !433, i64 32, !433, i64 40, !433, i64 48, !401, i64 56}
!433 = !{!"any pointer", !399, i64 0}
!434 = !DILocation(line: 141, column: 18, scope: !390, inlinedAt: !392)
!435 = !DILocation(line: 141, column: 7, scope: !383, inlinedAt: !392)
!436 = !DILocation(line: 142, column: 13, scope: !390, inlinedAt: !392)
!437 = !DILocation(line: 142, column: 5, scope: !390, inlinedAt: !392)
!438 = !DILocation(line: 144, column: 15, scope: !389, inlinedAt: !392)
!439 = !DILocation(line: 144, column: 11, scope: !389, inlinedAt: !392)
!440 = !DILocation(line: 145, column: 5, scope: !389, inlinedAt: !392)
!441 = !DILocation(line: 0, scope: !442, inlinedAt: !392)
!442 = distinct !DILexicalBlock(scope: !443, file: !3, line: 147, column: 11)
!443 = distinct !DILexicalBlock(scope: !389, file: !3, line: 145, column: 8)
!444 = !DILocation(line: 147, column: 28, scope: !442, inlinedAt: !392)
!445 = !DILocation(line: 147, column: 11, scope: !442, inlinedAt: !392)
!446 = !DILocation(line: 147, column: 46, scope: !442, inlinedAt: !392)
!447 = !DILocation(line: 148, column: 14, scope: !442, inlinedAt: !392)
!448 = !DILocation(line: 148, column: 29, scope: !442, inlinedAt: !392)
!449 = !DILocation(line: 148, column: 45, scope: !442, inlinedAt: !392)
!450 = !DILocation(line: 148, column: 48, scope: !442, inlinedAt: !392)
!451 = !DILocation(line: 148, column: 67, scope: !442, inlinedAt: !392)
!452 = !DILocation(line: 149, column: 14, scope: !442, inlinedAt: !392)
!453 = !DILocation(line: 149, column: 34, scope: !442, inlinedAt: !392)
!454 = !DILocation(line: 149, column: 31, scope: !442, inlinedAt: !392)
!455 = !DILocation(line: 147, column: 11, scope: !443, inlinedAt: !392)
!456 = !DILocation(line: 150, column: 13, scope: !457, inlinedAt: !392)
!457 = distinct !DILexicalBlock(scope: !442, file: !3, line: 149, column: 49)
!458 = !{!432, !433, i64 32}
!459 = !DILocation(line: 152, column: 23, scope: !457, inlinedAt: !392)
!460 = !DILocation(line: 152, column: 18, scope: !457, inlinedAt: !392)
!461 = !DILocation(line: 152, column: 9, scope: !457, inlinedAt: !392)
!462 = !DILocation(line: 154, column: 16, scope: !442, inlinedAt: !392)
!463 = !DILocation(line: 155, column: 5, scope: !443, inlinedAt: !392)
!464 = distinct !{!464, !465, !466}
!465 = !DILocation(line: 145, column: 5, scope: !389)
!466 = !DILocation(line: 155, column: 15, scope: !389)
!467 = !DILocation(line: 156, column: 5, scope: !389, inlinedAt: !392)
!468 = !DILocation(line: 157, column: 5, scope: !389, inlinedAt: !392)
!469 = !DILocation(line: 0, scope: !389, inlinedAt: !392)
!470 = !DILocation(line: 0, scope: !348)
!471 = !DILocation(line: 0, scope: !457, inlinedAt: !392)
!472 = !DILocation(line: 159, column: 1, scope: !383, inlinedAt: !392)
!473 = !DILocation(line: 163, column: 7, scope: !348)
!474 = !DILocation(line: 164, column: 8, scope: !362)
!475 = !DILocation(line: 0, scope: !361)
!476 = !DILocation(line: 164, column: 20, scope: !361)
!477 = !DILocation(line: 164, column: 15, scope: !361)
!478 = !DILocation(line: 164, column: 3, scope: !362)
!479 = !{!432, !433, i64 24}
!480 = !DILocation(line: 165, column: 10, scope: !359)
!481 = !DILocation(line: 165, column: 9, scope: !360)
!482 = distinct !{!482, !478, !483}
!483 = !DILocation(line: 170, column: 3, scope: !362)
!484 = !DILocation(line: 166, column: 7, scope: !357)
!485 = !DILocation(line: 167, column: 7, scope: !364)
!486 = !DILocation(line: 168, column: 7, scope: !358)
!487 = !DILocation(line: 164, column: 3, scope: !361)
!488 = !DILocation(line: 171, column: 10, scope: !374)
!489 = !DILocation(line: 171, column: 8, scope: !374)
!490 = !DILocation(line: 171, column: 31, scope: !373)
!491 = !{!432, !399, i64 11}
!492 = !DILocation(line: 171, column: 29, scope: !373)
!493 = !DILocation(line: 171, column: 3, scope: !374)
!494 = !DILocation(line: 172, column: 10, scope: !371)
!495 = !{!496, !401, i64 8}
!496 = !{!"Node", !398, i64 0, !399, i64 16}
!497 = !DILocation(line: 172, column: 9, scope: !372)
!498 = !DILocation(line: 173, column: 7, scope: !369)
!499 = !DILocation(line: 174, column: 7, scope: !377)
!500 = !DILocation(line: 175, column: 7, scope: !370)
!501 = !DILocation(line: 171, column: 45, scope: !373)
!502 = !DILocation(line: 171, column: 3, scope: !373)
!503 = distinct !{!503, !493, !504}
!504 = !DILocation(line: 177, column: 3, scope: !374)
!505 = !DILocation(line: 0, scope: !358)
!506 = !DILocation(line: 179, column: 1, scope: !348)
!507 = distinct !DISubprogram(name: "luaH_resizearray", scope: !3, file: !3, line: 327, type: !508, isLocal: false, isDefinition: true, scopeLine: 327, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !510)
!508 = !DISubroutineType(types: !509)
!509 = !{null, !91, !9, !90}
!510 = !{!511, !512, !513, !514}
!511 = !DILocalVariable(name: "L", arg: 1, scope: !507, file: !3, line: 327, type: !91)
!512 = !DILocalVariable(name: "t", arg: 2, scope: !507, file: !3, line: 327, type: !9)
!513 = !DILocalVariable(name: "nasize", arg: 3, scope: !507, file: !3, line: 327, type: !90)
!514 = !DILocalVariable(name: "nsize", scope: !507, file: !3, line: 328, type: !90)
!515 = !DILocation(line: 327, column: 35, scope: !507)
!516 = !DILocation(line: 327, column: 45, scope: !507)
!517 = !DILocation(line: 327, column: 52, scope: !507)
!518 = !DILocation(line: 328, column: 19, scope: !507)
!519 = !DILocation(line: 328, column: 24, scope: !507)
!520 = !DILocation(line: 328, column: 15, scope: !507)
!521 = !DILocation(line: 328, column: 44, scope: !507)
!522 = !DILocation(line: 328, column: 7, scope: !507)
!523 = !DILocation(line: 329, column: 3, scope: !507)
!524 = !DILocation(line: 330, column: 1, scope: !507)
!525 = distinct !DISubprogram(name: "resize", scope: !3, file: !3, line: 297, type: !526, isLocal: true, isDefinition: true, scopeLine: 297, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !528)
!526 = !DISubroutineType(types: !527)
!527 = !{null, !91, !9, !90, !90}
!528 = !{!529, !530, !531, !532, !533, !534, !535, !536, !537, !545, !546, !550, !553}
!529 = !DILocalVariable(name: "L", arg: 1, scope: !525, file: !3, line: 297, type: !91)
!530 = !DILocalVariable(name: "t", arg: 2, scope: !525, file: !3, line: 297, type: !9)
!531 = !DILocalVariable(name: "nasize", arg: 3, scope: !525, file: !3, line: 297, type: !90)
!532 = !DILocalVariable(name: "nhsize", arg: 4, scope: !525, file: !3, line: 297, type: !90)
!533 = !DILocalVariable(name: "i", scope: !525, file: !3, line: 298, type: !90)
!534 = !DILocalVariable(name: "oldasize", scope: !525, file: !3, line: 299, type: !90)
!535 = !DILocalVariable(name: "oldhsize", scope: !525, file: !3, line: 300, type: !90)
!536 = !DILocalVariable(name: "nold", scope: !525, file: !3, line: 301, type: !322)
!537 = !DILocalVariable(name: "o2", scope: !538, file: !3, line: 311, type: !365)
!538 = distinct !DILexicalBlock(scope: !539, file: !3, line: 311, column: 9)
!539 = distinct !DILexicalBlock(scope: !540, file: !3, line: 310, column: 11)
!540 = distinct !DILexicalBlock(scope: !541, file: !3, line: 309, column: 37)
!541 = distinct !DILexicalBlock(scope: !542, file: !3, line: 309, column: 5)
!542 = distinct !DILexicalBlock(scope: !543, file: !3, line: 309, column: 5)
!543 = distinct !DILexicalBlock(scope: !544, file: !3, line: 306, column: 26)
!544 = distinct !DILexicalBlock(scope: !525, file: !3, line: 306, column: 7)
!545 = !DILocalVariable(name: "o1", scope: !538, file: !3, line: 311, type: !101)
!546 = !DILocalVariable(name: "old", scope: !547, file: !3, line: 318, type: !322)
!547 = distinct !DILexicalBlock(scope: !548, file: !3, line: 317, column: 46)
!548 = distinct !DILexicalBlock(scope: !549, file: !3, line: 317, column: 3)
!549 = distinct !DILexicalBlock(scope: !525, file: !3, line: 317, column: 3)
!550 = !DILocalVariable(name: "o2", scope: !551, file: !3, line: 320, type: !365)
!551 = distinct !DILexicalBlock(scope: !552, file: !3, line: 320, column: 7)
!552 = distinct !DILexicalBlock(scope: !547, file: !3, line: 319, column: 9)
!553 = !DILocalVariable(name: "o1", scope: !551, file: !3, line: 320, type: !101)
!554 = !DILocation(line: 297, column: 32, scope: !525)
!555 = !DILocation(line: 297, column: 42, scope: !525)
!556 = !DILocation(line: 297, column: 49, scope: !525)
!557 = !DILocation(line: 297, column: 61, scope: !525)
!558 = !DILocation(line: 299, column: 21, scope: !525)
!559 = !DILocation(line: 299, column: 7, scope: !525)
!560 = !DILocation(line: 300, column: 21, scope: !525)
!561 = !DILocation(line: 300, column: 18, scope: !525)
!562 = !DILocation(line: 300, column: 7, scope: !525)
!563 = !DILocation(line: 301, column: 19, scope: !525)
!564 = !DILocation(line: 301, column: 9, scope: !525)
!565 = !DILocation(line: 302, column: 14, scope: !566)
!566 = distinct !DILexicalBlock(scope: !525, file: !3, line: 302, column: 7)
!567 = !DILocation(line: 302, column: 7, scope: !525)
!568 = !DILocalVariable(name: "L", arg: 1, scope: !569, file: !3, line: 263, type: !91)
!569 = distinct !DISubprogram(name: "setarrayvector", scope: !3, file: !3, line: 263, type: !508, isLocal: true, isDefinition: true, scopeLine: 263, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !570)
!570 = !{!568, !571, !572, !573}
!571 = !DILocalVariable(name: "t", arg: 2, scope: !569, file: !3, line: 263, type: !9)
!572 = !DILocalVariable(name: "size", arg: 3, scope: !569, file: !3, line: 263, type: !90)
!573 = !DILocalVariable(name: "i", scope: !569, file: !3, line: 264, type: !90)
!574 = !DILocation(line: 263, column: 40, scope: !569, inlinedAt: !575)
!575 = distinct !DILocation(line: 303, column: 5, scope: !566)
!576 = !DILocation(line: 263, column: 50, scope: !569, inlinedAt: !575)
!577 = !DILocation(line: 263, column: 57, scope: !569, inlinedAt: !575)
!578 = !DILocation(line: 265, column: 3, scope: !569, inlinedAt: !575)
!579 = !DILocation(line: 266, column: 13, scope: !580, inlinedAt: !575)
!580 = distinct !DILexicalBlock(scope: !569, file: !3, line: 266, column: 3)
!581 = !DILocation(line: 264, column: 7, scope: !569, inlinedAt: !575)
!582 = !DILocation(line: 266, column: 8, scope: !580, inlinedAt: !575)
!583 = !DILocation(line: 266, column: 25, scope: !584, inlinedAt: !575)
!584 = distinct !DILexicalBlock(scope: !580, file: !3, line: 266, column: 3)
!585 = !DILocation(line: 266, column: 3, scope: !580, inlinedAt: !575)
!586 = !DILocation(line: 267, column: 6, scope: !584, inlinedAt: !575)
!587 = !DILocation(line: 266, column: 33, scope: !584, inlinedAt: !575)
!588 = !DILocation(line: 266, column: 3, scope: !584, inlinedAt: !575)
!589 = distinct !{!589, !590}
!590 = !{!"llvm.loop.unroll.disable"}
!591 = distinct !{!591, !592, !593}
!592 = !DILocation(line: 266, column: 3, scope: !580)
!593 = !DILocation(line: 267, column: 6, scope: !580)
!594 = !DILocation(line: 268, column: 16, scope: !569, inlinedAt: !575)
!595 = !DILocation(line: 269, column: 1, scope: !569, inlinedAt: !575)
!596 = !DILocation(line: 303, column: 5, scope: !566)
!597 = !DILocation(line: 305, column: 3, scope: !525)
!598 = !DILocation(line: 306, column: 14, scope: !544)
!599 = !DILocation(line: 306, column: 7, scope: !525)
!600 = !DILocation(line: 307, column: 18, scope: !543)
!601 = !DILocation(line: 298, column: 7, scope: !525)
!602 = !DILocation(line: 309, column: 10, scope: !542)
!603 = !DILocation(line: 309, column: 5, scope: !542)
!604 = !DILocation(line: 310, column: 12, scope: !539)
!605 = !DILocation(line: 310, column: 11, scope: !540)
!606 = !DILocation(line: 0, scope: !538)
!607 = !DILocalVariable(name: "L", arg: 1, scope: !608, file: !3, line: 508, type: !91)
!608 = distinct !DISubprogram(name: "luaH_setnum", scope: !3, file: !3, line: 508, type: !609, isLocal: false, isDefinition: true, scopeLine: 508, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !611)
!609 = !DISubroutineType(types: !610)
!610 = !{!101, !91, !9, !90}
!611 = !{!607, !612, !613, !614, !615, !618}
!612 = !DILocalVariable(name: "t", arg: 2, scope: !608, file: !3, line: 508, type: !9)
!613 = !DILocalVariable(name: "key", arg: 3, scope: !608, file: !3, line: 508, type: !90)
!614 = !DILocalVariable(name: "p", scope: !608, file: !3, line: 509, type: !365)
!615 = !DILocalVariable(name: "k", scope: !616, file: !3, line: 513, type: !102)
!616 = distinct !DILexicalBlock(scope: !617, file: !3, line: 512, column: 8)
!617 = distinct !DILexicalBlock(scope: !608, file: !3, line: 510, column: 7)
!618 = !DILocalVariable(name: "i_o", scope: !619, file: !3, line: 514, type: !101)
!619 = distinct !DILexicalBlock(scope: !616, file: !3, line: 514, column: 5)
!620 = !DILocation(line: 508, column: 33, scope: !608, inlinedAt: !621)
!621 = distinct !DILocation(line: 311, column: 9, scope: !538)
!622 = !DILocation(line: 508, column: 43, scope: !608, inlinedAt: !621)
!623 = !DILocation(line: 508, column: 50, scope: !608, inlinedAt: !621)
!624 = !DILocation(line: 509, column: 21, scope: !608, inlinedAt: !621)
!625 = !DILocation(line: 509, column: 17, scope: !608, inlinedAt: !621)
!626 = !DILocation(line: 510, column: 9, scope: !617, inlinedAt: !621)
!627 = !DILocation(line: 510, column: 7, scope: !608, inlinedAt: !621)
!628 = !DILocation(line: 513, column: 5, scope: !616, inlinedAt: !621)
!629 = !DILocation(line: 514, column: 5, scope: !619, inlinedAt: !621)
!630 = !DILocation(line: 513, column: 12, scope: !616, inlinedAt: !621)
!631 = !DILocation(line: 515, column: 12, scope: !616, inlinedAt: !621)
!632 = !DILocation(line: 516, column: 3, scope: !617, inlinedAt: !621)
!633 = !DILocation(line: 0, scope: !616, inlinedAt: !621)
!634 = !DILocation(line: 517, column: 1, scope: !608, inlinedAt: !621)
!635 = !DILocation(line: 311, column: 9, scope: !538)
!636 = !DILocation(line: 309, column: 5, scope: !541)
!637 = !DILocation(line: 309, column: 21, scope: !541)
!638 = distinct !{!638, !603, !639}
!639 = !DILocation(line: 312, column: 5, scope: !542)
!640 = !DILocation(line: 314, column: 5, scope: !543)
!641 = !DILocation(line: 315, column: 3, scope: !543)
!642 = !DILocation(line: 317, column: 12, scope: !549)
!643 = !DILocation(line: 317, column: 8, scope: !549)
!644 = !DILocation(line: 317, column: 35, scope: !548)
!645 = !DILocation(line: 317, column: 3, scope: !549)
!646 = !DILocation(line: 0, scope: !548)
!647 = !DILocation(line: 319, column: 10, scope: !552)
!648 = !DILocation(line: 319, column: 9, scope: !547)
!649 = !DILocation(line: 318, column: 21, scope: !547)
!650 = !DILocation(line: 318, column: 11, scope: !547)
!651 = !DILocation(line: 320, column: 7, scope: !551)
!652 = !DILocalVariable(name: "L", arg: 1, scope: !653, file: !3, line: 494, type: !91)
!653 = distinct !DISubprogram(name: "luaH_set", scope: !3, file: !3, line: 494, type: !654, isLocal: false, isDefinition: true, scopeLine: 494, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !656)
!654 = !DISubroutineType(types: !655)
!655 = !{!101, !91, !9, !365}
!656 = !{!652, !657, !658, !659}
!657 = !DILocalVariable(name: "t", arg: 2, scope: !653, file: !3, line: 494, type: !9)
!658 = !DILocalVariable(name: "key", arg: 3, scope: !653, file: !3, line: 494, type: !365)
!659 = !DILocalVariable(name: "p", scope: !653, file: !3, line: 495, type: !365)
!660 = !DILocation(line: 494, column: 30, scope: !653, inlinedAt: !661)
!661 = distinct !DILocation(line: 320, column: 7, scope: !551)
!662 = !DILocation(line: 494, column: 40, scope: !653, inlinedAt: !661)
!663 = !DILocation(line: 494, column: 57, scope: !653, inlinedAt: !661)
!664 = !DILocation(line: 495, column: 21, scope: !653, inlinedAt: !661)
!665 = !DILocation(line: 495, column: 17, scope: !653, inlinedAt: !661)
!666 = !DILocation(line: 496, column: 12, scope: !653, inlinedAt: !661)
!667 = !{!432, !399, i64 10}
!668 = !DILocation(line: 497, column: 9, scope: !669, inlinedAt: !661)
!669 = distinct !DILexicalBlock(scope: !653, file: !3, line: 497, column: 7)
!670 = !DILocation(line: 497, column: 7, scope: !653, inlinedAt: !661)
!671 = !DILocation(line: 500, column: 9, scope: !672, inlinedAt: !661)
!672 = distinct !DILexicalBlock(scope: !673, file: !3, line: 500, column: 9)
!673 = distinct !DILexicalBlock(scope: !669, file: !3, line: 499, column: 8)
!674 = !DILocation(line: 500, column: 9, scope: !673, inlinedAt: !661)
!675 = !DILocation(line: 500, column: 23, scope: !672, inlinedAt: !661)
!676 = !DILocation(line: 501, column: 14, scope: !677, inlinedAt: !661)
!677 = distinct !DILexicalBlock(scope: !672, file: !3, line: 501, column: 14)
!678 = !DILocation(line: 501, column: 30, scope: !677, inlinedAt: !661)
!679 = !DILocation(line: 501, column: 33, scope: !677, inlinedAt: !661)
!680 = !DILocation(line: 501, column: 14, scope: !672, inlinedAt: !661)
!681 = !DILocation(line: 502, column: 7, scope: !677, inlinedAt: !661)
!682 = !DILocation(line: 503, column: 12, scope: !673, inlinedAt: !661)
!683 = !DILocation(line: 503, column: 5, scope: !673, inlinedAt: !661)
!684 = !DILocation(line: 0, scope: !673, inlinedAt: !661)
!685 = !DILocation(line: 0, scope: !551)
!686 = !DILocation(line: 505, column: 1, scope: !653, inlinedAt: !661)
!687 = !DILocation(line: 317, column: 3, scope: !548)
!688 = distinct !{!688, !645, !689}
!689 = !DILocation(line: 321, column: 3, scope: !549)
!690 = !DILocation(line: 322, column: 12, scope: !691)
!691 = distinct !DILexicalBlock(scope: !525, file: !3, line: 322, column: 7)
!692 = !DILocation(line: 322, column: 7, scope: !525)
!693 = !DILocation(line: 323, column: 5, scope: !691)
!694 = !DILocation(line: 324, column: 1, scope: !525)
!695 = distinct !DISubprogram(name: "luaH_new", scope: !3, file: !3, line: 358, type: !696, isLocal: false, isDefinition: true, scopeLine: 358, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !698)
!696 = !DISubroutineType(types: !697)
!697 = !{!9, !91, !90, !90}
!698 = !{!699, !700, !701, !702}
!699 = !DILocalVariable(name: "L", arg: 1, scope: !695, file: !3, line: 358, type: !91)
!700 = !DILocalVariable(name: "narray", arg: 2, scope: !695, file: !3, line: 358, type: !90)
!701 = !DILocalVariable(name: "nhash", arg: 3, scope: !695, file: !3, line: 358, type: !90)
!702 = !DILocalVariable(name: "t", scope: !695, file: !3, line: 359, type: !9)
!703 = !DILocation(line: 358, column: 29, scope: !695)
!704 = !DILocation(line: 358, column: 36, scope: !695)
!705 = !DILocation(line: 358, column: 48, scope: !695)
!706 = !DILocation(line: 359, column: 14, scope: !695)
!707 = !DILocation(line: 359, column: 10, scope: !695)
!708 = !DILocation(line: 360, column: 16, scope: !695)
!709 = !DILocation(line: 360, column: 3, scope: !695)
!710 = !DILocation(line: 361, column: 6, scope: !695)
!711 = !DILocation(line: 361, column: 16, scope: !695)
!712 = !{!432, !433, i64 16}
!713 = !DILocation(line: 362, column: 6, scope: !695)
!714 = !DILocation(line: 362, column: 12, scope: !695)
!715 = !DILocation(line: 364, column: 6, scope: !695)
!716 = !DILocation(line: 364, column: 12, scope: !695)
!717 = !DILocation(line: 365, column: 6, scope: !695)
!718 = !DILocation(line: 365, column: 16, scope: !695)
!719 = !DILocation(line: 366, column: 6, scope: !695)
!720 = !DILocation(line: 366, column: 16, scope: !695)
!721 = !DILocation(line: 367, column: 6, scope: !695)
!722 = !DILocation(line: 367, column: 11, scope: !695)
!723 = !DILocation(line: 263, column: 40, scope: !569, inlinedAt: !724)
!724 = distinct !DILocation(line: 368, column: 3, scope: !695)
!725 = !DILocation(line: 263, column: 50, scope: !569, inlinedAt: !724)
!726 = !DILocation(line: 263, column: 57, scope: !569, inlinedAt: !724)
!727 = !DILocation(line: 265, column: 3, scope: !569, inlinedAt: !724)
!728 = !DILocation(line: 266, column: 13, scope: !580, inlinedAt: !724)
!729 = !DILocation(line: 264, column: 7, scope: !569, inlinedAt: !724)
!730 = !DILocation(line: 266, column: 8, scope: !580, inlinedAt: !724)
!731 = !DILocation(line: 266, column: 25, scope: !584, inlinedAt: !724)
!732 = !DILocation(line: 266, column: 3, scope: !580, inlinedAt: !724)
!733 = !DILocation(line: 267, column: 6, scope: !584, inlinedAt: !724)
!734 = !DILocation(line: 266, column: 33, scope: !584, inlinedAt: !724)
!735 = !DILocation(line: 266, column: 3, scope: !584, inlinedAt: !724)
!736 = distinct !{!736, !590}
!737 = !DILocation(line: 268, column: 16, scope: !569, inlinedAt: !724)
!738 = !DILocation(line: 269, column: 1, scope: !569, inlinedAt: !724)
!739 = !DILocation(line: 369, column: 3, scope: !695)
!740 = !DILocation(line: 370, column: 3, scope: !695)
!741 = distinct !DISubprogram(name: "setnodevector", scope: !3, file: !3, line: 272, type: !508, isLocal: true, isDefinition: true, scopeLine: 272, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !742)
!742 = !{!743, !744, !745, !746, !747, !750}
!743 = !DILocalVariable(name: "L", arg: 1, scope: !741, file: !3, line: 272, type: !91)
!744 = !DILocalVariable(name: "t", arg: 2, scope: !741, file: !3, line: 272, type: !9)
!745 = !DILocalVariable(name: "size", arg: 3, scope: !741, file: !3, line: 272, type: !90)
!746 = !DILocalVariable(name: "lsize", scope: !741, file: !3, line: 273, type: !90)
!747 = !DILocalVariable(name: "i", scope: !748, file: !3, line: 279, type: !90)
!748 = distinct !DILexicalBlock(scope: !749, file: !3, line: 278, column: 8)
!749 = distinct !DILexicalBlock(scope: !741, file: !3, line: 274, column: 7)
!750 = !DILocalVariable(name: "n", scope: !751, file: !3, line: 286, type: !322)
!751 = distinct !DILexicalBlock(scope: !752, file: !3, line: 285, column: 28)
!752 = distinct !DILexicalBlock(scope: !753, file: !3, line: 285, column: 5)
!753 = distinct !DILexicalBlock(scope: !748, file: !3, line: 285, column: 5)
!754 = !DILocation(line: 272, column: 39, scope: !741)
!755 = !DILocation(line: 272, column: 49, scope: !741)
!756 = !DILocation(line: 272, column: 56, scope: !741)
!757 = !DILocation(line: 274, column: 12, scope: !749)
!758 = !DILocation(line: 274, column: 7, scope: !741)
!759 = !DILocation(line: 275, column: 8, scope: !760)
!760 = distinct !DILexicalBlock(scope: !749, file: !3, line: 274, column: 18)
!761 = !DILocation(line: 275, column: 13, scope: !760)
!762 = !DILocation(line: 273, column: 7, scope: !741)
!763 = !DILocation(line: 277, column: 3, scope: !760)
!764 = !DILocation(line: 280, column: 13, scope: !748)
!765 = !DILocation(line: 281, column: 15, scope: !766)
!766 = distinct !DILexicalBlock(scope: !748, file: !3, line: 281, column: 9)
!767 = !DILocation(line: 281, column: 9, scope: !748)
!768 = !DILocation(line: 282, column: 7, scope: !766)
!769 = !DILocation(line: 283, column: 12, scope: !748)
!770 = !DILocation(line: 284, column: 15, scope: !748)
!771 = !DILocation(line: 284, column: 8, scope: !748)
!772 = !DILocation(line: 284, column: 13, scope: !748)
!773 = !DILocation(line: 279, column: 9, scope: !748)
!774 = !DILocation(line: 285, column: 10, scope: !753)
!775 = !DILocation(line: 285, column: 16, scope: !752)
!776 = !DILocation(line: 285, column: 5, scope: !753)
!777 = !DILocation(line: 286, column: 17, scope: !751)
!778 = !DILocation(line: 287, column: 7, scope: !751)
!779 = !DILocation(line: 287, column: 16, scope: !751)
!780 = !DILocation(line: 288, column: 7, scope: !751)
!781 = !DILocation(line: 289, column: 7, scope: !751)
!782 = !DILocation(line: 285, column: 24, scope: !752)
!783 = !DILocation(line: 285, column: 5, scope: !752)
!784 = !DILocation(line: 0, scope: !741)
!785 = distinct !{!785, !776, !786}
!786 = !DILocation(line: 290, column: 5, scope: !753)
!787 = !DILocation(line: 293, column: 17, scope: !741)
!788 = !DILocation(line: 292, column: 6, scope: !741)
!789 = !DILocation(line: 292, column: 16, scope: !741)
!790 = !DILocation(line: 293, column: 6, scope: !741)
!791 = !DILocation(line: 293, column: 15, scope: !741)
!792 = !{!432, !433, i64 40}
!793 = !DILocation(line: 294, column: 1, scope: !741)
!794 = distinct !DISubprogram(name: "luaH_free", scope: !3, file: !3, line: 374, type: !795, isLocal: false, isDefinition: true, scopeLine: 374, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !797)
!795 = !DISubroutineType(types: !796)
!796 = !{null, !91, !9}
!797 = !{!798, !799}
!798 = !DILocalVariable(name: "L", arg: 1, scope: !794, file: !3, line: 374, type: !91)
!799 = !DILocalVariable(name: "t", arg: 2, scope: !794, file: !3, line: 374, type: !9)
!800 = !DILocation(line: 374, column: 28, scope: !794)
!801 = !DILocation(line: 374, column: 38, scope: !794)
!802 = !DILocation(line: 375, column: 10, scope: !803)
!803 = distinct !DILexicalBlock(scope: !794, file: !3, line: 375, column: 7)
!804 = !DILocation(line: 375, column: 15, scope: !803)
!805 = !DILocation(line: 375, column: 7, scope: !794)
!806 = !DILocation(line: 376, column: 5, scope: !803)
!807 = !DILocation(line: 377, column: 3, scope: !794)
!808 = !DILocation(line: 378, column: 3, scope: !794)
!809 = !DILocation(line: 379, column: 1, scope: !794)
!810 = distinct !DISubprogram(name: "luaH_getnum", scope: !3, file: !3, line: 435, type: !811, isLocal: false, isDefinition: true, scopeLine: 435, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !813)
!811 = !DISubroutineType(types: !812)
!812 = !{!365, !9, !90}
!813 = !{!814, !815, !816, !819}
!814 = !DILocalVariable(name: "t", arg: 1, scope: !810, file: !3, line: 435, type: !9)
!815 = !DILocalVariable(name: "key", arg: 2, scope: !810, file: !3, line: 435, type: !90)
!816 = !DILocalVariable(name: "nk", scope: !817, file: !3, line: 440, type: !6)
!817 = distinct !DILexicalBlock(scope: !818, file: !3, line: 439, column: 8)
!818 = distinct !DILexicalBlock(scope: !810, file: !3, line: 437, column: 7)
!819 = !DILocalVariable(name: "n", scope: !817, file: !3, line: 441, type: !322)
!820 = !DILocalVariable(name: "a", scope: !821, file: !3, line: 85, type: !830)
!821 = distinct !DISubprogram(name: "hashnum", scope: !3, file: !3, line: 84, type: !822, isLocal: true, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !826)
!822 = !DISubroutineType(types: !823)
!823 = !{!322, !824, !6}
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!826 = !{!827, !828, !820, !829}
!827 = !DILocalVariable(name: "t", arg: 1, scope: !821, file: !3, line: 84, type: !824)
!828 = !DILocalVariable(name: "n", arg: 2, scope: !821, file: !3, line: 84, type: !6)
!829 = !DILocalVariable(name: "i", scope: !821, file: !3, line: 86, type: !90)
!830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 64, elements: !831)
!831 = !{!832}
!832 = !DISubrange(count: 2)
!833 = !DILocation(line: 85, column: 16, scope: !821, inlinedAt: !834)
!834 = distinct !DILocation(line: 441, column: 15, scope: !817)
!835 = !DILocation(line: 435, column: 35, scope: !810)
!836 = !DILocation(line: 435, column: 42, scope: !810)
!837 = !DILocation(line: 437, column: 7, scope: !818)
!838 = !DILocation(line: 437, column: 35, scope: !818)
!839 = !DILocation(line: 437, column: 33, scope: !818)
!840 = !DILocation(line: 437, column: 7, scope: !810)
!841 = !DILocation(line: 438, column: 16, scope: !818)
!842 = !DILocation(line: 438, column: 13, scope: !818)
!843 = !DILocation(line: 438, column: 5, scope: !818)
!844 = !DILocation(line: 440, column: 21, scope: !817)
!845 = !DILocation(line: 440, column: 16, scope: !817)
!846 = !DILocation(line: 84, column: 36, scope: !821, inlinedAt: !834)
!847 = !DILocation(line: 84, column: 50, scope: !821, inlinedAt: !834)
!848 = !{!849, !849, i64 0}
!849 = !{!"double", !399, i64 0}
!850 = !DILocation(line: 85, column: 3, scope: !821, inlinedAt: !834)
!851 = !DILocation(line: 87, column: 7, scope: !852, inlinedAt: !834)
!852 = distinct !DILexicalBlock(scope: !821, file: !3, line: 87, column: 7)
!853 = !DILocation(line: 87, column: 7, scope: !821, inlinedAt: !834)
!854 = !DILocation(line: 88, column: 12, scope: !852, inlinedAt: !834)
!855 = !DILocation(line: 88, column: 5, scope: !852, inlinedAt: !834)
!856 = !DILocation(line: 89, column: 3, scope: !821, inlinedAt: !834)
!857 = !DILocation(line: 86, column: 7, scope: !821, inlinedAt: !834)
!858 = !DILocation(line: 90, column: 8, scope: !859, inlinedAt: !834)
!859 = distinct !DILexicalBlock(scope: !821, file: !3, line: 90, column: 3)
!860 = !DILocation(line: 90, column: 3, scope: !859, inlinedAt: !834)
!861 = !DILocation(line: 90, column: 41, scope: !862, inlinedAt: !834)
!862 = distinct !DILexicalBlock(scope: !859, file: !3, line: 90, column: 3)
!863 = !{!401, !401, i64 0}
!864 = !DILocation(line: 90, column: 38, scope: !862, inlinedAt: !834)
!865 = !DILocation(line: 90, column: 3, scope: !862, inlinedAt: !834)
!866 = !DILocation(line: 91, column: 10, scope: !821, inlinedAt: !834)
!867 = !DILocation(line: 91, column: 3, scope: !821, inlinedAt: !834)
!868 = !DILocation(line: 0, scope: !821, inlinedAt: !834)
!869 = !DILocation(line: 0, scope: !817)
!870 = !DILocation(line: 92, column: 1, scope: !821, inlinedAt: !834)
!871 = !DILocation(line: 441, column: 11, scope: !817)
!872 = !DILocation(line: 442, column: 5, scope: !817)
!873 = !DILocation(line: 0, scope: !874)
!874 = distinct !DILexicalBlock(scope: !875, file: !3, line: 443, column: 11)
!875 = distinct !DILexicalBlock(scope: !817, file: !3, line: 442, column: 8)
!876 = !DILocation(line: 443, column: 11, scope: !874)
!877 = !DILocation(line: 443, column: 31, scope: !874)
!878 = !DILocation(line: 443, column: 34, scope: !874)
!879 = !DILocation(line: 443, column: 11, scope: !875)
!880 = !DILocation(line: 444, column: 16, scope: !874)
!881 = !DILocation(line: 444, column: 9, scope: !874)
!882 = !DILocation(line: 445, column: 16, scope: !874)
!883 = !DILocation(line: 446, column: 5, scope: !875)
!884 = distinct !{!884, !872, !885}
!885 = !DILocation(line: 446, column: 15, scope: !817)
!886 = !DILocation(line: 449, column: 1, scope: !810)
!887 = distinct !DISubprogram(name: "luaH_getstr", scope: !3, file: !3, line: 455, type: !888, isLocal: false, isDefinition: true, scopeLine: 455, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !890)
!888 = !DISubroutineType(types: !889)
!889 = !{!365, !9, !189}
!890 = !{!891, !892, !893}
!891 = !DILocalVariable(name: "t", arg: 1, scope: !887, file: !3, line: 455, type: !9)
!892 = !DILocalVariable(name: "key", arg: 2, scope: !887, file: !3, line: 455, type: !189)
!893 = !DILocalVariable(name: "n", scope: !887, file: !3, line: 456, type: !322)
!894 = !DILocation(line: 455, column: 35, scope: !887)
!895 = !DILocation(line: 455, column: 47, scope: !887)
!896 = !DILocation(line: 456, column: 13, scope: !887)
!897 = !DILocation(line: 456, column: 9, scope: !887)
!898 = !DILocation(line: 457, column: 3, scope: !887)
!899 = !DILocation(line: 0, scope: !900)
!900 = distinct !DILexicalBlock(scope: !901, file: !3, line: 458, column: 9)
!901 = distinct !DILexicalBlock(scope: !887, file: !3, line: 457, column: 6)
!902 = !DILocation(line: 458, column: 9, scope: !900)
!903 = !DILocation(line: 458, column: 29, scope: !900)
!904 = !DILocation(line: 458, column: 32, scope: !900)
!905 = !DILocation(line: 458, column: 52, scope: !900)
!906 = !DILocation(line: 458, column: 9, scope: !901)
!907 = !DILocation(line: 459, column: 14, scope: !900)
!908 = !DILocation(line: 459, column: 7, scope: !900)
!909 = !DILocation(line: 460, column: 14, scope: !900)
!910 = !DILocation(line: 461, column: 3, scope: !901)
!911 = distinct !{!911, !898, !912}
!912 = !DILocation(line: 461, column: 13, scope: !887)
!913 = !DILocation(line: 0, scope: !887)
!914 = !DILocation(line: 463, column: 1, scope: !887)
!915 = distinct !DISubprogram(name: "luaH_get", scope: !3, file: !3, line: 469, type: !916, isLocal: false, isDefinition: true, scopeLine: 469, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !918)
!916 = !DISubroutineType(types: !917)
!917 = !{!365, !9, !365}
!918 = !{!919, !920, !921, !924, !925}
!919 = !DILocalVariable(name: "t", arg: 1, scope: !915, file: !3, line: 469, type: !9)
!920 = !DILocalVariable(name: "key", arg: 2, scope: !915, file: !3, line: 469, type: !365)
!921 = !DILocalVariable(name: "k", scope: !922, file: !3, line: 474, type: !90)
!922 = distinct !DILexicalBlock(scope: !923, file: !3, line: 473, column: 23)
!923 = distinct !DILexicalBlock(scope: !915, file: !3, line: 470, column: 23)
!924 = !DILocalVariable(name: "n", scope: !922, file: !3, line: 475, type: !6)
!925 = !DILocalVariable(name: "n", scope: !926, file: !3, line: 482, type: !322)
!926 = distinct !DILexicalBlock(scope: !923, file: !3, line: 481, column: 14)
!927 = !DILocation(line: 469, column: 32, scope: !915)
!928 = !DILocation(line: 469, column: 49, scope: !915)
!929 = !DILocation(line: 470, column: 11, scope: !915)
!930 = !DILocation(line: 470, column: 3, scope: !915)
!931 = !DILocation(line: 472, column: 45, scope: !923)
!932 = !DILocation(line: 455, column: 35, scope: !887, inlinedAt: !933)
!933 = distinct !DILocation(line: 472, column: 30, scope: !923)
!934 = !DILocation(line: 455, column: 47, scope: !887, inlinedAt: !933)
!935 = !DILocation(line: 456, column: 13, scope: !887, inlinedAt: !933)
!936 = !DILocation(line: 456, column: 9, scope: !887, inlinedAt: !933)
!937 = !DILocation(line: 457, column: 3, scope: !887, inlinedAt: !933)
!938 = !DILocation(line: 0, scope: !900, inlinedAt: !933)
!939 = !DILocation(line: 458, column: 9, scope: !900, inlinedAt: !933)
!940 = !DILocation(line: 458, column: 29, scope: !900, inlinedAt: !933)
!941 = !DILocation(line: 458, column: 32, scope: !900, inlinedAt: !933)
!942 = !DILocation(line: 458, column: 52, scope: !900, inlinedAt: !933)
!943 = !DILocation(line: 458, column: 9, scope: !901, inlinedAt: !933)
!944 = !DILocation(line: 459, column: 14, scope: !900, inlinedAt: !933)
!945 = !DILocation(line: 459, column: 7, scope: !900, inlinedAt: !933)
!946 = !DILocation(line: 460, column: 14, scope: !900, inlinedAt: !933)
!947 = !DILocation(line: 461, column: 3, scope: !901, inlinedAt: !933)
!948 = !DILocation(line: 0, scope: !887, inlinedAt: !933)
!949 = !DILocation(line: 0, scope: !923)
!950 = !DILocation(line: 472, column: 23, scope: !923)
!951 = !DILocation(line: 475, column: 22, scope: !922)
!952 = !DILocation(line: 475, column: 18, scope: !922)
!953 = !DILocation(line: 476, column: 7, scope: !922)
!954 = !DILocation(line: 474, column: 11, scope: !922)
!955 = !DILocation(line: 477, column: 11, scope: !956)
!956 = distinct !DILexicalBlock(scope: !922, file: !3, line: 477, column: 11)
!957 = !DILocation(line: 477, column: 11, scope: !922)
!958 = !DILocation(line: 480, column: 5, scope: !923)
!959 = !DILocation(line: 478, column: 16, scope: !956)
!960 = !DILocation(line: 482, column: 17, scope: !926)
!961 = !DILocation(line: 482, column: 13, scope: !926)
!962 = !DILocation(line: 483, column: 7, scope: !926)
!963 = !DILocation(line: 0, scope: !964)
!964 = distinct !DILexicalBlock(scope: !965, file: !3, line: 484, column: 13)
!965 = distinct !DILexicalBlock(scope: !926, file: !3, line: 483, column: 10)
!966 = !DILocation(line: 484, column: 30, scope: !964)
!967 = !DILocation(line: 484, column: 13, scope: !964)
!968 = !DILocation(line: 484, column: 13, scope: !965)
!969 = !DILocation(line: 485, column: 18, scope: !964)
!970 = !DILocation(line: 485, column: 11, scope: !964)
!971 = !DILocation(line: 486, column: 18, scope: !964)
!972 = !DILocation(line: 487, column: 7, scope: !965)
!973 = distinct !{!973, !962, !974}
!974 = !DILocation(line: 487, column: 17, scope: !926)
!975 = !DILocation(line: 491, column: 1, scope: !915)
!976 = distinct !DISubprogram(name: "mainposition", scope: !3, file: !3, line: 100, type: !977, isLocal: true, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !979)
!977 = !DISubroutineType(types: !978)
!978 = !{!322, !824, !365}
!979 = !{!980, !981}
!980 = !DILocalVariable(name: "t", arg: 1, scope: !976, file: !3, line: 100, type: !824)
!981 = !DILocalVariable(name: "key", arg: 2, scope: !976, file: !3, line: 100, type: !365)
!982 = !DILocation(line: 85, column: 16, scope: !821, inlinedAt: !983)
!983 = distinct !DILocation(line: 103, column: 14, scope: !984)
!984 = distinct !DILexicalBlock(scope: !976, file: !3, line: 101, column: 23)
!985 = !DILocation(line: 100, column: 41, scope: !976)
!986 = !DILocation(line: 100, column: 58, scope: !976)
!987 = !DILocation(line: 101, column: 11, scope: !976)
!988 = !DILocation(line: 101, column: 3, scope: !976)
!989 = !DILocation(line: 103, column: 25, scope: !984)
!990 = !DILocation(line: 84, column: 36, scope: !821, inlinedAt: !983)
!991 = !DILocation(line: 84, column: 50, scope: !821, inlinedAt: !983)
!992 = !DILocation(line: 85, column: 3, scope: !821, inlinedAt: !983)
!993 = !DILocation(line: 87, column: 7, scope: !852, inlinedAt: !983)
!994 = !DILocation(line: 87, column: 7, scope: !821, inlinedAt: !983)
!995 = !DILocation(line: 88, column: 12, scope: !852, inlinedAt: !983)
!996 = !DILocation(line: 88, column: 5, scope: !852, inlinedAt: !983)
!997 = !DILocation(line: 89, column: 3, scope: !821, inlinedAt: !983)
!998 = !DILocation(line: 86, column: 7, scope: !821, inlinedAt: !983)
!999 = !DILocation(line: 90, column: 8, scope: !859, inlinedAt: !983)
!1000 = !DILocation(line: 90, column: 3, scope: !859, inlinedAt: !983)
!1001 = !DILocation(line: 90, column: 41, scope: !862, inlinedAt: !983)
!1002 = !DILocation(line: 90, column: 38, scope: !862, inlinedAt: !983)
!1003 = !DILocation(line: 90, column: 3, scope: !862, inlinedAt: !983)
!1004 = !DILocation(line: 91, column: 10, scope: !821, inlinedAt: !983)
!1005 = !DILocation(line: 91, column: 3, scope: !821, inlinedAt: !983)
!1006 = !DILocation(line: 0, scope: !821, inlinedAt: !983)
!1007 = !DILocation(line: 0, scope: !984)
!1008 = !DILocation(line: 92, column: 1, scope: !821, inlinedAt: !983)
!1009 = !DILocation(line: 103, column: 7, scope: !984)
!1010 = !DILocation(line: 105, column: 14, scope: !984)
!1011 = !DILocation(line: 105, column: 7, scope: !984)
!1012 = !DILocation(line: 107, column: 14, scope: !984)
!1013 = !DILocation(line: 107, column: 7, scope: !984)
!1014 = !DILocation(line: 109, column: 14, scope: !984)
!1015 = !DILocation(line: 109, column: 7, scope: !984)
!1016 = !DILocation(line: 111, column: 14, scope: !984)
!1017 = !DILocation(line: 111, column: 7, scope: !984)
!1018 = !DILocation(line: 113, column: 1, scope: !976)
!1019 = !DILocation(line: 494, column: 30, scope: !653)
!1020 = !DILocation(line: 494, column: 40, scope: !653)
!1021 = !DILocation(line: 494, column: 57, scope: !653)
!1022 = !DILocation(line: 495, column: 21, scope: !653)
!1023 = !DILocation(line: 495, column: 17, scope: !653)
!1024 = !DILocation(line: 496, column: 6, scope: !653)
!1025 = !DILocation(line: 496, column: 12, scope: !653)
!1026 = !DILocation(line: 497, column: 9, scope: !669)
!1027 = !DILocation(line: 497, column: 7, scope: !653)
!1028 = !DILocation(line: 500, column: 9, scope: !672)
!1029 = !DILocation(line: 500, column: 9, scope: !673)
!1030 = !DILocation(line: 500, column: 23, scope: !672)
!1031 = !DILocation(line: 501, column: 14, scope: !677)
!1032 = !DILocation(line: 501, column: 30, scope: !677)
!1033 = !DILocation(line: 501, column: 33, scope: !677)
!1034 = !DILocation(line: 501, column: 14, scope: !672)
!1035 = !DILocation(line: 502, column: 7, scope: !677)
!1036 = !DILocation(line: 503, column: 12, scope: !673)
!1037 = !DILocation(line: 503, column: 5, scope: !673)
!1038 = !DILocation(line: 0, scope: !673)
!1039 = !DILocation(line: 0, scope: !669)
!1040 = !DILocation(line: 505, column: 1, scope: !653)
!1041 = distinct !DISubprogram(name: "newkey", scope: !3, file: !3, line: 399, type: !654, isLocal: true, isDefinition: true, scopeLine: 399, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1042)
!1042 = !{!1043, !1044, !1045, !1046, !1047, !1050}
!1043 = !DILocalVariable(name: "L", arg: 1, scope: !1041, file: !3, line: 399, type: !91)
!1044 = !DILocalVariable(name: "t", arg: 2, scope: !1041, file: !3, line: 399, type: !9)
!1045 = !DILocalVariable(name: "key", arg: 3, scope: !1041, file: !3, line: 399, type: !365)
!1046 = !DILocalVariable(name: "mp", scope: !1041, file: !3, line: 400, type: !322)
!1047 = !DILocalVariable(name: "othern", scope: !1048, file: !3, line: 402, type: !322)
!1048 = distinct !DILexicalBlock(scope: !1049, file: !3, line: 401, column: 46)
!1049 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 401, column: 7)
!1050 = !DILocalVariable(name: "n", scope: !1048, file: !3, line: 403, type: !322)
!1051 = !DILocalVariable(name: "nums", scope: !1052, file: !3, line: 335, type: !1063)
!1052 = distinct !DISubprogram(name: "rehash", scope: !3, file: !3, line: 333, type: !1053, isLocal: true, isDefinition: true, scopeLine: 333, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1055)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{null, !91, !9, !365}
!1055 = !{!1056, !1057, !1058, !1059, !1060, !1051, !1061, !1062}
!1056 = !DILocalVariable(name: "L", arg: 1, scope: !1052, file: !3, line: 333, type: !91)
!1057 = !DILocalVariable(name: "t", arg: 2, scope: !1052, file: !3, line: 333, type: !9)
!1058 = !DILocalVariable(name: "ek", arg: 3, scope: !1052, file: !3, line: 333, type: !365)
!1059 = !DILocalVariable(name: "nasize", scope: !1052, file: !3, line: 334, type: !90)
!1060 = !DILocalVariable(name: "na", scope: !1052, file: !3, line: 334, type: !90)
!1061 = !DILocalVariable(name: "i", scope: !1052, file: !3, line: 336, type: !90)
!1062 = !DILocalVariable(name: "totaluse", scope: !1052, file: !3, line: 337, type: !90)
!1063 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 864, elements: !1064)
!1064 = !{!1065}
!1065 = !DISubrange(count: 27)
!1066 = !DILocation(line: 335, column: 7, scope: !1052, inlinedAt: !1067)
!1067 = distinct !DILocation(line: 405, column: 7, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 404, column: 20)
!1069 = distinct !DILexicalBlock(scope: !1048, file: !3, line: 404, column: 9)
!1070 = !DILocation(line: 399, column: 35, scope: !1041)
!1071 = !DILocation(line: 399, column: 45, scope: !1041)
!1072 = !DILocation(line: 399, column: 62, scope: !1041)
!1073 = !DILocation(line: 400, column: 14, scope: !1041)
!1074 = !DILocation(line: 400, column: 9, scope: !1041)
!1075 = !DILocation(line: 401, column: 8, scope: !1049)
!1076 = !DILocation(line: 401, column: 32, scope: !1049)
!1077 = !DILocation(line: 401, column: 26, scope: !1049)
!1078 = !DILocalVariable(name: "t", arg: 1, scope: !1079, file: !3, line: 382, type: !9)
!1079 = distinct !DISubprogram(name: "getfreepos", scope: !3, file: !3, line: 382, type: !1080, isLocal: true, isDefinition: true, scopeLine: 382, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1082)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{!322, !9}
!1082 = !{!1078}
!1083 = !DILocation(line: 382, column: 33, scope: !1079, inlinedAt: !1084)
!1084 = distinct !DILocation(line: 403, column: 15, scope: !1048)
!1085 = !DILocation(line: 383, column: 3, scope: !1079, inlinedAt: !1084)
!1086 = !DILocation(line: 383, column: 21, scope: !1079, inlinedAt: !1084)
!1087 = !DILocation(line: 383, column: 29, scope: !1079, inlinedAt: !1084)
!1088 = !DILocation(line: 383, column: 24, scope: !1079, inlinedAt: !1084)
!1089 = !DILocation(line: 384, column: 9, scope: !1090, inlinedAt: !1084)
!1090 = distinct !DILexicalBlock(scope: !1091, file: !3, line: 384, column: 9)
!1091 = distinct !DILexicalBlock(scope: !1079, file: !3, line: 383, column: 35)
!1092 = !DILocation(line: 384, column: 9, scope: !1091, inlinedAt: !1084)
!1093 = distinct !{!1093, !1094, !1095}
!1094 = !DILocation(line: 383, column: 3, scope: !1079)
!1095 = !DILocation(line: 386, column: 3, scope: !1079)
!1096 = !DILocation(line: 387, column: 3, scope: !1079, inlinedAt: !1084)
!1097 = !DILocation(line: 388, column: 1, scope: !1079, inlinedAt: !1084)
!1098 = !DILocation(line: 404, column: 9, scope: !1048)
!1099 = !DILocation(line: 333, column: 32, scope: !1052, inlinedAt: !1067)
!1100 = !DILocation(line: 333, column: 42, scope: !1052, inlinedAt: !1067)
!1101 = !DILocation(line: 333, column: 59, scope: !1052, inlinedAt: !1067)
!1102 = !DILocation(line: 335, column: 3, scope: !1052, inlinedAt: !1067)
!1103 = !DILocation(line: 336, column: 7, scope: !1052, inlinedAt: !1067)
!1104 = !DILocation(line: 338, column: 8, scope: !1105, inlinedAt: !1067)
!1105 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 338, column: 3)
!1106 = !DILocation(line: 338, column: 3, scope: !1105, inlinedAt: !1067)
!1107 = !DILocation(line: 338, column: 30, scope: !1108, inlinedAt: !1067)
!1108 = distinct !DILexicalBlock(scope: !1105, file: !3, line: 338, column: 3)
!1109 = !DILocation(line: 338, column: 38, scope: !1108, inlinedAt: !1067)
!1110 = !DILocation(line: 338, column: 3, scope: !1108, inlinedAt: !1067)
!1111 = !DILocalVariable(name: "t", arg: 1, scope: !1112, file: !3, line: 222, type: !824)
!1112 = distinct !DISubprogram(name: "numusearray", scope: !3, file: !3, line: 222, type: !1113, isLocal: true, isDefinition: true, scopeLine: 222, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1115)
!1113 = !DISubroutineType(types: !1114)
!1114 = !{!90, !824, !284}
!1115 = !{!1111, !1116, !1117, !1118, !1119, !1120, !1121, !1125}
!1116 = !DILocalVariable(name: "nums", arg: 2, scope: !1112, file: !3, line: 222, type: !284)
!1117 = !DILocalVariable(name: "lg", scope: !1112, file: !3, line: 223, type: !90)
!1118 = !DILocalVariable(name: "ttlg", scope: !1112, file: !3, line: 224, type: !90)
!1119 = !DILocalVariable(name: "ause", scope: !1112, file: !3, line: 225, type: !90)
!1120 = !DILocalVariable(name: "i", scope: !1112, file: !3, line: 226, type: !90)
!1121 = !DILocalVariable(name: "lc", scope: !1122, file: !3, line: 228, type: !90)
!1122 = distinct !DILexicalBlock(scope: !1123, file: !3, line: 227, column: 50)
!1123 = distinct !DILexicalBlock(scope: !1124, file: !3, line: 227, column: 3)
!1124 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 227, column: 3)
!1125 = !DILocalVariable(name: "lim", scope: !1122, file: !3, line: 229, type: !90)
!1126 = !DILocation(line: 222, column: 38, scope: !1112, inlinedAt: !1127)
!1127 = distinct !DILocation(line: 339, column: 12, scope: !1052, inlinedAt: !1067)
!1128 = !DILocation(line: 222, column: 46, scope: !1112, inlinedAt: !1127)
!1129 = !DILocation(line: 225, column: 7, scope: !1112, inlinedAt: !1127)
!1130 = !DILocation(line: 226, column: 7, scope: !1112, inlinedAt: !1127)
!1131 = !DILocation(line: 223, column: 7, scope: !1112, inlinedAt: !1127)
!1132 = !DILocation(line: 224, column: 7, scope: !1112, inlinedAt: !1127)
!1133 = !DILocation(line: 227, column: 8, scope: !1124, inlinedAt: !1127)
!1134 = !DILocation(line: 227, column: 3, scope: !1124, inlinedAt: !1127)
!1135 = !DILocation(line: 228, column: 9, scope: !1122, inlinedAt: !1127)
!1136 = !DILocation(line: 229, column: 9, scope: !1122, inlinedAt: !1127)
!1137 = !DILocation(line: 230, column: 13, scope: !1138, inlinedAt: !1127)
!1138 = distinct !DILexicalBlock(scope: !1122, file: !3, line: 230, column: 9)
!1139 = !DILocation(line: 230, column: 9, scope: !1122, inlinedAt: !1127)
!1140 = !DILocation(line: 232, column: 13, scope: !1141, inlinedAt: !1127)
!1141 = distinct !DILexicalBlock(scope: !1142, file: !3, line: 232, column: 11)
!1142 = distinct !DILexicalBlock(scope: !1138, file: !3, line: 230, column: 29)
!1143 = !DILocation(line: 232, column: 11, scope: !1142, inlinedAt: !1127)
!1144 = !DILocation(line: 0, scope: !1122, inlinedAt: !1127)
!1145 = !DILocation(line: 236, column: 5, scope: !1122, inlinedAt: !1127)
!1146 = !DILocation(line: 236, column: 14, scope: !1147, inlinedAt: !1127)
!1147 = distinct !DILexicalBlock(scope: !1148, file: !3, line: 236, column: 5)
!1148 = distinct !DILexicalBlock(scope: !1122, file: !3, line: 236, column: 5)
!1149 = !DILocation(line: 236, column: 5, scope: !1148, inlinedAt: !1127)
!1150 = !DILocation(line: 237, column: 12, scope: !1151, inlinedAt: !1127)
!1151 = distinct !DILexicalBlock(scope: !1152, file: !3, line: 237, column: 11)
!1152 = distinct !DILexicalBlock(scope: !1147, file: !3, line: 236, column: 27)
!1153 = !DILocation(line: 237, column: 11, scope: !1152, inlinedAt: !1127)
!1154 = !DILocation(line: 238, column: 11, scope: !1151, inlinedAt: !1127)
!1155 = !DILocation(line: 238, column: 9, scope: !1151, inlinedAt: !1127)
!1156 = !DILocation(line: 0, scope: !1151, inlinedAt: !1127)
!1157 = !DILocation(line: 236, column: 23, scope: !1147, inlinedAt: !1127)
!1158 = !DILocation(line: 236, column: 5, scope: !1147, inlinedAt: !1127)
!1159 = distinct !{!1159, !1160, !1161}
!1160 = !DILocation(line: 236, column: 5, scope: !1148)
!1161 = !DILocation(line: 239, column: 5, scope: !1148)
!1162 = !DILocation(line: 233, column: 9, scope: !1141, inlinedAt: !1127)
!1163 = !DILocation(line: 240, column: 5, scope: !1122, inlinedAt: !1127)
!1164 = !DILocation(line: 0, scope: !1147, inlinedAt: !1127)
!1165 = !DILocation(line: 240, column: 14, scope: !1122, inlinedAt: !1127)
!1166 = !DILocation(line: 241, column: 10, scope: !1122, inlinedAt: !1127)
!1167 = !DILocation(line: 242, column: 3, scope: !1123, inlinedAt: !1127)
!1168 = !DILocation(line: 227, column: 37, scope: !1123, inlinedAt: !1127)
!1169 = !DILocation(line: 227, column: 45, scope: !1123, inlinedAt: !1127)
!1170 = !DILocation(line: 227, column: 3, scope: !1123, inlinedAt: !1127)
!1171 = !DILocation(line: 227, column: 24, scope: !1123, inlinedAt: !1127)
!1172 = distinct !{!1172, !1173, !1174}
!1173 = !DILocation(line: 227, column: 3, scope: !1124)
!1174 = !DILocation(line: 242, column: 3, scope: !1124)
!1175 = !DILocation(line: 243, column: 3, scope: !1112, inlinedAt: !1127)
!1176 = !DILocation(line: 334, column: 7, scope: !1052, inlinedAt: !1067)
!1177 = !DILocation(line: 337, column: 7, scope: !1052, inlinedAt: !1067)
!1178 = !DILocalVariable(name: "t", arg: 1, scope: !1179, file: !3, line: 247, type: !824)
!1179 = distinct !DISubprogram(name: "numusehash", scope: !3, file: !3, line: 247, type: !1180, isLocal: true, isDefinition: true, scopeLine: 247, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1182)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!90, !824, !284, !284}
!1182 = !{!1178, !1183, !1184, !1185, !1186, !1187, !1188}
!1183 = !DILocalVariable(name: "nums", arg: 2, scope: !1179, file: !3, line: 247, type: !284)
!1184 = !DILocalVariable(name: "pnasize", arg: 3, scope: !1179, file: !3, line: 247, type: !284)
!1185 = !DILocalVariable(name: "totaluse", scope: !1179, file: !3, line: 248, type: !90)
!1186 = !DILocalVariable(name: "ause", scope: !1179, file: !3, line: 249, type: !90)
!1187 = !DILocalVariable(name: "i", scope: !1179, file: !3, line: 250, type: !90)
!1188 = !DILocalVariable(name: "n", scope: !1189, file: !3, line: 252, type: !322)
!1189 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 251, column: 15)
!1190 = !DILocation(line: 247, column: 37, scope: !1179, inlinedAt: !1191)
!1191 = distinct !DILocation(line: 341, column: 15, scope: !1052, inlinedAt: !1067)
!1192 = !DILocation(line: 247, column: 45, scope: !1179, inlinedAt: !1191)
!1193 = !DILocation(line: 248, column: 7, scope: !1179, inlinedAt: !1191)
!1194 = !DILocation(line: 249, column: 7, scope: !1179, inlinedAt: !1191)
!1195 = !DILocation(line: 250, column: 11, scope: !1179, inlinedAt: !1191)
!1196 = !DILocation(line: 251, column: 3, scope: !1179, inlinedAt: !1191)
!1197 = !DILocation(line: 251, column: 11, scope: !1179, inlinedAt: !1191)
!1198 = !DILocation(line: 250, column: 7, scope: !1179, inlinedAt: !1191)
!1199 = !DILocation(line: 252, column: 19, scope: !1189, inlinedAt: !1191)
!1200 = !DILocation(line: 253, column: 10, scope: !1201, inlinedAt: !1191)
!1201 = distinct !DILexicalBlock(scope: !1189, file: !3, line: 253, column: 9)
!1202 = !DILocation(line: 253, column: 9, scope: !1189, inlinedAt: !1191)
!1203 = !DILocalVariable(name: "nums", arg: 2, scope: !1204, file: !3, line: 211, type: !284)
!1204 = distinct !DISubprogram(name: "countint", scope: !3, file: !3, line: 211, type: !1205, isLocal: true, isDefinition: true, scopeLine: 211, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1207)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{!90, !365, !284}
!1207 = !{!1208, !1203, !1209}
!1208 = !DILocalVariable(name: "key", arg: 1, scope: !1204, file: !3, line: 211, type: !365)
!1209 = !DILocalVariable(name: "k", scope: !1204, file: !3, line: 212, type: !90)
!1210 = !DILocation(line: 211, column: 46, scope: !1204, inlinedAt: !1211)
!1211 = distinct !DILocation(line: 254, column: 15, scope: !1212, inlinedAt: !1191)
!1212 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 253, column: 28)
!1213 = !DILocation(line: 121, column: 7, scope: !410, inlinedAt: !1214)
!1214 = distinct !DILocation(line: 212, column: 11, scope: !1204, inlinedAt: !1211)
!1215 = !DILocation(line: 121, column: 7, scope: !404, inlinedAt: !1214)
!1216 = !DILocation(line: 254, column: 24, scope: !1212, inlinedAt: !1191)
!1217 = !DILocation(line: 122, column: 20, scope: !409, inlinedAt: !1214)
!1218 = !DILocation(line: 211, column: 36, scope: !1204, inlinedAt: !1211)
!1219 = !DILocation(line: 120, column: 38, scope: !404, inlinedAt: !1214)
!1220 = !DILocation(line: 122, column: 16, scope: !409, inlinedAt: !1214)
!1221 = !DILocation(line: 124, column: 5, scope: !409, inlinedAt: !1214)
!1222 = !DILocation(line: 123, column: 9, scope: !409, inlinedAt: !1214)
!1223 = !DILocation(line: 125, column: 9, scope: !422, inlinedAt: !1214)
!1224 = !DILocation(line: 125, column: 9, scope: !409, inlinedAt: !1214)
!1225 = !DILocation(line: 0, scope: !410, inlinedAt: !1214)
!1226 = !DILocation(line: 128, column: 3, scope: !404, inlinedAt: !1214)
!1227 = !DILocation(line: 129, column: 1, scope: !404, inlinedAt: !1214)
!1228 = !DILocation(line: 213, column: 13, scope: !1229, inlinedAt: !1211)
!1229 = distinct !DILexicalBlock(scope: !1204, file: !3, line: 213, column: 7)
!1230 = !DILocation(line: 212, column: 7, scope: !1204, inlinedAt: !1211)
!1231 = !DILocation(line: 214, column: 10, scope: !1232, inlinedAt: !1211)
!1232 = distinct !DILexicalBlock(scope: !1229, file: !3, line: 213, column: 31)
!1233 = !DILocation(line: 214, column: 5, scope: !1232, inlinedAt: !1211)
!1234 = !DILocation(line: 214, column: 22, scope: !1232, inlinedAt: !1211)
!1235 = !DILocation(line: 215, column: 5, scope: !1232, inlinedAt: !1211)
!1236 = !DILocation(line: 0, scope: !1229, inlinedAt: !1211)
!1237 = !DILocation(line: 0, scope: !1212, inlinedAt: !1191)
!1238 = !DILocation(line: 219, column: 1, scope: !1204, inlinedAt: !1211)
!1239 = !DILocation(line: 254, column: 12, scope: !1212, inlinedAt: !1191)
!1240 = !DILocation(line: 255, column: 15, scope: !1212, inlinedAt: !1191)
!1241 = !DILocation(line: 256, column: 5, scope: !1212, inlinedAt: !1191)
!1242 = distinct !{!1242, !1243, !1244}
!1243 = !DILocation(line: 251, column: 3, scope: !1179)
!1244 = !DILocation(line: 257, column: 3, scope: !1179)
!1245 = !DILocation(line: 258, column: 12, scope: !1179, inlinedAt: !1191)
!1246 = !DILocation(line: 259, column: 3, scope: !1179, inlinedAt: !1191)
!1247 = !DILocation(line: 211, column: 36, scope: !1204, inlinedAt: !1248)
!1248 = distinct !DILocation(line: 343, column: 13, scope: !1052, inlinedAt: !1067)
!1249 = !DILocation(line: 211, column: 46, scope: !1204, inlinedAt: !1248)
!1250 = !DILocation(line: 120, column: 38, scope: !404, inlinedAt: !1251)
!1251 = distinct !DILocation(line: 212, column: 11, scope: !1204, inlinedAt: !1248)
!1252 = !DILocation(line: 121, column: 7, scope: !410, inlinedAt: !1251)
!1253 = !DILocation(line: 121, column: 7, scope: !404, inlinedAt: !1251)
!1254 = !DILocation(line: 122, column: 20, scope: !409, inlinedAt: !1251)
!1255 = !DILocation(line: 122, column: 16, scope: !409, inlinedAt: !1251)
!1256 = !DILocation(line: 124, column: 5, scope: !409, inlinedAt: !1251)
!1257 = !DILocation(line: 123, column: 9, scope: !409, inlinedAt: !1251)
!1258 = !DILocation(line: 125, column: 9, scope: !422, inlinedAt: !1251)
!1259 = !DILocation(line: 125, column: 9, scope: !409, inlinedAt: !1251)
!1260 = !DILocation(line: 0, scope: !410, inlinedAt: !1251)
!1261 = !DILocation(line: 128, column: 3, scope: !404, inlinedAt: !1251)
!1262 = !DILocation(line: 129, column: 1, scope: !404, inlinedAt: !1251)
!1263 = !DILocation(line: 213, column: 13, scope: !1229, inlinedAt: !1248)
!1264 = !DILocation(line: 212, column: 7, scope: !1204, inlinedAt: !1248)
!1265 = !DILocation(line: 214, column: 10, scope: !1232, inlinedAt: !1248)
!1266 = !DILocation(line: 214, column: 5, scope: !1232, inlinedAt: !1248)
!1267 = !DILocation(line: 214, column: 22, scope: !1232, inlinedAt: !1248)
!1268 = !DILocation(line: 215, column: 5, scope: !1232, inlinedAt: !1248)
!1269 = !DILocation(line: 0, scope: !1229, inlinedAt: !1248)
!1270 = !DILocation(line: 0, scope: !1052, inlinedAt: !1067)
!1271 = !DILocation(line: 219, column: 1, scope: !1204, inlinedAt: !1248)
!1272 = !DILocation(line: 343, column: 10, scope: !1052, inlinedAt: !1067)
!1273 = !DILocalVariable(name: "nums", arg: 1, scope: !1274, file: !3, line: 189, type: !284)
!1274 = distinct !DISubprogram(name: "computesizes", scope: !3, file: !3, line: 189, type: !1275, isLocal: true, isDefinition: true, scopeLine: 189, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1277)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{!90, !284, !284}
!1277 = !{!1273, !1278, !1279, !1280, !1281, !1282, !1283}
!1278 = !DILocalVariable(name: "narray", arg: 2, scope: !1274, file: !3, line: 189, type: !284)
!1279 = !DILocalVariable(name: "i", scope: !1274, file: !3, line: 190, type: !90)
!1280 = !DILocalVariable(name: "twotoi", scope: !1274, file: !3, line: 191, type: !90)
!1281 = !DILocalVariable(name: "a", scope: !1274, file: !3, line: 192, type: !90)
!1282 = !DILocalVariable(name: "na", scope: !1274, file: !3, line: 193, type: !90)
!1283 = !DILocalVariable(name: "n", scope: !1274, file: !3, line: 194, type: !90)
!1284 = !DILocation(line: 189, column: 30, scope: !1274, inlinedAt: !1285)
!1285 = distinct !DILocation(line: 346, column: 8, scope: !1052, inlinedAt: !1067)
!1286 = !DILocation(line: 192, column: 7, scope: !1274, inlinedAt: !1285)
!1287 = !DILocation(line: 193, column: 7, scope: !1274, inlinedAt: !1285)
!1288 = !DILocation(line: 194, column: 7, scope: !1274, inlinedAt: !1285)
!1289 = !DILocation(line: 190, column: 7, scope: !1274, inlinedAt: !1285)
!1290 = !DILocation(line: 191, column: 7, scope: !1274, inlinedAt: !1285)
!1291 = !DILocation(line: 195, column: 8, scope: !1292, inlinedAt: !1285)
!1292 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 195, column: 3)
!1293 = !DILocation(line: 195, column: 36, scope: !1294, inlinedAt: !1285)
!1294 = distinct !DILexicalBlock(scope: !1292, file: !3, line: 195, column: 3)
!1295 = !DILocation(line: 195, column: 3, scope: !1292, inlinedAt: !1285)
!1296 = !DILocation(line: 196, column: 9, scope: !1297, inlinedAt: !1285)
!1297 = distinct !DILexicalBlock(scope: !1298, file: !3, line: 196, column: 9)
!1298 = distinct !DILexicalBlock(scope: !1294, file: !3, line: 195, column: 65)
!1299 = !DILocation(line: 196, column: 17, scope: !1297, inlinedAt: !1285)
!1300 = !DILocation(line: 196, column: 9, scope: !1298, inlinedAt: !1285)
!1301 = !DILocation(line: 197, column: 9, scope: !1302, inlinedAt: !1285)
!1302 = distinct !DILexicalBlock(scope: !1297, file: !3, line: 196, column: 22)
!1303 = !DILocation(line: 198, column: 13, scope: !1304, inlinedAt: !1285)
!1304 = distinct !DILexicalBlock(scope: !1302, file: !3, line: 198, column: 11)
!1305 = !DILocation(line: 198, column: 11, scope: !1302, inlinedAt: !1285)
!1306 = !DILocation(line: 201, column: 7, scope: !1307, inlinedAt: !1285)
!1307 = distinct !DILexicalBlock(scope: !1304, file: !3, line: 198, column: 25)
!1308 = !DILocation(line: 0, scope: !1274, inlinedAt: !1285)
!1309 = !DILocation(line: 203, column: 11, scope: !1310, inlinedAt: !1285)
!1310 = distinct !DILexicalBlock(scope: !1298, file: !3, line: 203, column: 9)
!1311 = !DILocation(line: 203, column: 9, scope: !1298, inlinedAt: !1285)
!1312 = !DILocation(line: 195, column: 48, scope: !1294, inlinedAt: !1285)
!1313 = !DILocation(line: 195, column: 59, scope: !1294, inlinedAt: !1285)
!1314 = !DILocation(line: 195, column: 3, scope: !1294, inlinedAt: !1285)
!1315 = !DILocation(line: 195, column: 33, scope: !1294, inlinedAt: !1285)
!1316 = distinct !{!1316, !1317, !1318}
!1317 = !DILocation(line: 195, column: 3, scope: !1292)
!1318 = !DILocation(line: 204, column: 3, scope: !1292)
!1319 = !DILocation(line: 207, column: 3, scope: !1274, inlinedAt: !1285)
!1320 = !DILocation(line: 334, column: 15, scope: !1052, inlinedAt: !1067)
!1321 = !DILocation(line: 341, column: 12, scope: !1052, inlinedAt: !1067)
!1322 = !DILocation(line: 344, column: 11, scope: !1052, inlinedAt: !1067)
!1323 = !DILocation(line: 348, column: 33, scope: !1052, inlinedAt: !1067)
!1324 = !DILocation(line: 348, column: 3, scope: !1052, inlinedAt: !1067)
!1325 = !DILocation(line: 349, column: 1, scope: !1052, inlinedAt: !1067)
!1326 = !DILocation(line: 494, column: 30, scope: !653, inlinedAt: !1327)
!1327 = distinct !DILocation(line: 406, column: 14, scope: !1068)
!1328 = !DILocation(line: 494, column: 40, scope: !653, inlinedAt: !1327)
!1329 = !DILocation(line: 494, column: 57, scope: !653, inlinedAt: !1327)
!1330 = !DILocation(line: 495, column: 21, scope: !653, inlinedAt: !1327)
!1331 = !DILocation(line: 495, column: 17, scope: !653, inlinedAt: !1327)
!1332 = !DILocation(line: 496, column: 6, scope: !653, inlinedAt: !1327)
!1333 = !DILocation(line: 496, column: 12, scope: !653, inlinedAt: !1327)
!1334 = !DILocation(line: 497, column: 9, scope: !669, inlinedAt: !1327)
!1335 = !DILocation(line: 497, column: 7, scope: !653, inlinedAt: !1327)
!1336 = !DILocation(line: 500, column: 9, scope: !672, inlinedAt: !1327)
!1337 = !DILocation(line: 500, column: 9, scope: !673, inlinedAt: !1327)
!1338 = !DILocation(line: 500, column: 23, scope: !672, inlinedAt: !1327)
!1339 = !DILocation(line: 501, column: 14, scope: !677, inlinedAt: !1327)
!1340 = !DILocation(line: 501, column: 30, scope: !677, inlinedAt: !1327)
!1341 = !DILocation(line: 501, column: 33, scope: !677, inlinedAt: !1327)
!1342 = !DILocation(line: 501, column: 14, scope: !672, inlinedAt: !1327)
!1343 = !DILocation(line: 502, column: 7, scope: !677, inlinedAt: !1327)
!1344 = !DILocation(line: 503, column: 12, scope: !673, inlinedAt: !1327)
!1345 = !DILocation(line: 503, column: 5, scope: !673, inlinedAt: !1327)
!1346 = !DILocation(line: 385, column: 7, scope: !1090, inlinedAt: !1084)
!1347 = !DILocation(line: 403, column: 11, scope: !1048)
!1348 = !DILocation(line: 409, column: 30, scope: !1048)
!1349 = !DILocation(line: 409, column: 14, scope: !1048)
!1350 = !DILocation(line: 402, column: 11, scope: !1048)
!1351 = !DILocation(line: 410, column: 16, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1048, file: !3, line: 410, column: 9)
!1353 = !DILocation(line: 410, column: 9, scope: !1048)
!1354 = !DILocation(line: 412, column: 14, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 410, column: 23)
!1356 = !DILocation(line: 412, column: 28, scope: !1355)
!1357 = !DILocation(line: 412, column: 7, scope: !1355)
!1358 = distinct !{!1358, !1357, !1359}
!1359 = !DILocation(line: 412, column: 44, scope: !1355)
!1360 = !DILocation(line: 413, column: 21, scope: !1355)
!1361 = !DILocation(line: 414, column: 12, scope: !1355)
!1362 = !{i64 0, i64 8, !1363, i64 0, i64 8, !1363, i64 0, i64 8, !848, i64 0, i64 4, !863, i64 8, i64 4, !863, i64 16, i64 8, !1363, i64 16, i64 8, !1363, i64 16, i64 8, !848, i64 16, i64 4, !863, i64 24, i64 4, !863, i64 32, i64 8, !1363, i64 16, i64 8, !1363, i64 16, i64 8, !1363, i64 16, i64 8, !848, i64 16, i64 4, !863, i64 24, i64 4, !863}
!1363 = !{!433, !433, i64 0}
!1364 = !DILocation(line: 415, column: 7, scope: !1355)
!1365 = !DILocation(line: 415, column: 17, scope: !1355)
!1366 = !DILocation(line: 416, column: 7, scope: !1355)
!1367 = !DILocation(line: 417, column: 5, scope: !1355)
!1368 = !DILocation(line: 420, column: 18, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 418, column: 10)
!1370 = !DILocation(line: 420, column: 7, scope: !1369)
!1371 = !DILocation(line: 420, column: 16, scope: !1369)
!1372 = !DILocation(line: 421, column: 17, scope: !1369)
!1373 = !DILocation(line: 0, scope: !1369)
!1374 = !DILocation(line: 424, column: 3, scope: !1049)
!1375 = !DILocation(line: 0, scope: !673, inlinedAt: !1327)
!1376 = !DILocation(line: 0, scope: !1068)
!1377 = !DILocation(line: 505, column: 1, scope: !653, inlinedAt: !1327)
!1378 = !DILocation(line: 406, column: 7, scope: !1068)
!1379 = !DILocation(line: 425, column: 3, scope: !1041)
!1380 = !DILocation(line: 425, column: 26, scope: !1041)
!1381 = !DILocation(line: 425, column: 53, scope: !1041)
!1382 = !DILocation(line: 425, column: 43, scope: !1041)
!1383 = !DILocation(line: 425, column: 46, scope: !1041)
!1384 = !DILocation(line: 426, column: 3, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1386, file: !3, line: 426, column: 3)
!1386 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 426, column: 3)
!1387 = !DILocation(line: 426, column: 3, scope: !1386)
!1388 = !DILocation(line: 428, column: 10, scope: !1041)
!1389 = !DILocation(line: 428, column: 3, scope: !1041)
!1390 = !DILocation(line: 429, column: 1, scope: !1041)
!1391 = !DILocation(line: 508, column: 33, scope: !608)
!1392 = !DILocation(line: 508, column: 43, scope: !608)
!1393 = !DILocation(line: 508, column: 50, scope: !608)
!1394 = !DILocation(line: 509, column: 21, scope: !608)
!1395 = !DILocation(line: 509, column: 17, scope: !608)
!1396 = !DILocation(line: 510, column: 9, scope: !617)
!1397 = !DILocation(line: 510, column: 7, scope: !608)
!1398 = !DILocation(line: 513, column: 5, scope: !616)
!1399 = !DILocation(line: 514, column: 5, scope: !619)
!1400 = !DILocation(line: 513, column: 12, scope: !616)
!1401 = !DILocation(line: 515, column: 12, scope: !616)
!1402 = !DILocation(line: 516, column: 3, scope: !617)
!1403 = !DILocation(line: 0, scope: !616)
!1404 = !DILocation(line: 517, column: 1, scope: !608)
!1405 = distinct !DISubprogram(name: "luaH_setstr", scope: !3, file: !3, line: 520, type: !1406, isLocal: false, isDefinition: true, scopeLine: 520, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1408)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{!101, !91, !9, !189}
!1408 = !{!1409, !1410, !1411, !1412, !1413, !1416}
!1409 = !DILocalVariable(name: "L", arg: 1, scope: !1405, file: !3, line: 520, type: !91)
!1410 = !DILocalVariable(name: "t", arg: 2, scope: !1405, file: !3, line: 520, type: !9)
!1411 = !DILocalVariable(name: "key", arg: 3, scope: !1405, file: !3, line: 520, type: !189)
!1412 = !DILocalVariable(name: "p", scope: !1405, file: !3, line: 521, type: !365)
!1413 = !DILocalVariable(name: "k", scope: !1414, file: !3, line: 525, type: !102)
!1414 = distinct !DILexicalBlock(scope: !1415, file: !3, line: 524, column: 8)
!1415 = distinct !DILexicalBlock(scope: !1405, file: !3, line: 522, column: 7)
!1416 = !DILocalVariable(name: "i_o", scope: !1417, file: !3, line: 526, type: !101)
!1417 = distinct !DILexicalBlock(scope: !1414, file: !3, line: 526, column: 5)
!1418 = !DILocation(line: 520, column: 33, scope: !1405)
!1419 = !DILocation(line: 520, column: 43, scope: !1405)
!1420 = !DILocation(line: 520, column: 55, scope: !1405)
!1421 = !DILocation(line: 455, column: 35, scope: !887, inlinedAt: !1422)
!1422 = distinct !DILocation(line: 521, column: 21, scope: !1405)
!1423 = !DILocation(line: 455, column: 47, scope: !887, inlinedAt: !1422)
!1424 = !DILocation(line: 456, column: 13, scope: !887, inlinedAt: !1422)
!1425 = !DILocation(line: 456, column: 9, scope: !887, inlinedAt: !1422)
!1426 = !DILocation(line: 457, column: 3, scope: !887, inlinedAt: !1422)
!1427 = !DILocation(line: 0, scope: !900, inlinedAt: !1422)
!1428 = !DILocation(line: 458, column: 9, scope: !900, inlinedAt: !1422)
!1429 = !DILocation(line: 458, column: 29, scope: !900, inlinedAt: !1422)
!1430 = !DILocation(line: 458, column: 32, scope: !900, inlinedAt: !1422)
!1431 = !DILocation(line: 458, column: 52, scope: !900, inlinedAt: !1422)
!1432 = !DILocation(line: 458, column: 9, scope: !901, inlinedAt: !1422)
!1433 = !DILocation(line: 460, column: 14, scope: !900, inlinedAt: !1422)
!1434 = !DILocation(line: 461, column: 3, scope: !901, inlinedAt: !1422)
!1435 = !DILocation(line: 462, column: 3, scope: !887, inlinedAt: !1422)
!1436 = !DILocation(line: 463, column: 1, scope: !887, inlinedAt: !1422)
!1437 = !DILocation(line: 521, column: 17, scope: !1405)
!1438 = !DILocation(line: 522, column: 7, scope: !1405)
!1439 = !DILocation(line: 459, column: 14, scope: !900, inlinedAt: !1422)
!1440 = !DILocation(line: 459, column: 7, scope: !900, inlinedAt: !1422)
!1441 = !DILocation(line: 522, column: 9, scope: !1415)
!1442 = !DILocation(line: 525, column: 5, scope: !1414)
!1443 = !DILocation(line: 526, column: 5, scope: !1417)
!1444 = !DILocation(line: 525, column: 12, scope: !1414)
!1445 = !DILocation(line: 527, column: 12, scope: !1414)
!1446 = !DILocation(line: 528, column: 3, scope: !1415)
!1447 = !DILocation(line: 0, scope: !1414)
!1448 = !DILocation(line: 529, column: 1, scope: !1405)
!1449 = distinct !DISubprogram(name: "luaH_getn", scope: !3, file: !3, line: 560, type: !1450, isLocal: false, isDefinition: true, scopeLine: 560, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1452)
!1450 = !DISubroutineType(types: !1451)
!1451 = !{!90, !9}
!1452 = !{!1453, !1454, !1455, !1458}
!1453 = !DILocalVariable(name: "t", arg: 1, scope: !1449, file: !3, line: 560, type: !9)
!1454 = !DILocalVariable(name: "j", scope: !1449, file: !3, line: 561, type: !50)
!1455 = !DILocalVariable(name: "i", scope: !1456, file: !3, line: 564, type: !50)
!1456 = distinct !DILexicalBlock(scope: !1457, file: !3, line: 562, column: 43)
!1457 = distinct !DILexicalBlock(scope: !1449, file: !3, line: 562, column: 7)
!1458 = !DILocalVariable(name: "m", scope: !1459, file: !3, line: 566, type: !50)
!1459 = distinct !DILexicalBlock(scope: !1456, file: !3, line: 565, column: 23)
!1460 = !DILocation(line: 560, column: 23, scope: !1449)
!1461 = !DILocation(line: 561, column: 23, scope: !1449)
!1462 = !DILocation(line: 561, column: 16, scope: !1449)
!1463 = !DILocation(line: 562, column: 9, scope: !1457)
!1464 = !DILocation(line: 562, column: 13, scope: !1457)
!1465 = !DILocation(line: 562, column: 16, scope: !1457)
!1466 = !DILocation(line: 562, column: 7, scope: !1449)
!1467 = !DILocation(line: 564, column: 18, scope: !1456)
!1468 = !DILocation(line: 565, column: 5, scope: !1456)
!1469 = !DILocation(line: 565, column: 18, scope: !1456)
!1470 = !DILocation(line: 566, column: 26, scope: !1459)
!1471 = !DILocation(line: 566, column: 29, scope: !1459)
!1472 = !DILocation(line: 566, column: 20, scope: !1459)
!1473 = !DILocation(line: 567, column: 11, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1459, file: !3, line: 567, column: 11)
!1475 = !DILocation(line: 567, column: 11, scope: !1459)
!1476 = !DILocation(line: 567, column: 38, scope: !1474)
!1477 = !DILocation(line: 565, column: 14, scope: !1456)
!1478 = distinct !{!1478, !1468, !1479}
!1479 = !DILocation(line: 569, column: 5, scope: !1456)
!1480 = !DILocation(line: 573, column: 15, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1457, file: !3, line: 573, column: 12)
!1482 = !DILocation(line: 573, column: 20, scope: !1481)
!1483 = !DILocation(line: 573, column: 12, scope: !1457)
!1484 = !DILocalVariable(name: "t", arg: 1, scope: !1485, file: !3, line: 532, type: !9)
!1485 = distinct !DISubprogram(name: "unbound_search", scope: !3, file: !3, line: 532, type: !1486, isLocal: true, isDefinition: true, scopeLine: 532, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1488)
!1486 = !DISubroutineType(types: !1487)
!1487 = !{!90, !9, !50}
!1488 = !{!1484, !1489, !1490, !1491}
!1489 = !DILocalVariable(name: "j", arg: 2, scope: !1485, file: !3, line: 532, type: !50)
!1490 = !DILocalVariable(name: "i", scope: !1485, file: !3, line: 533, type: !50)
!1491 = !DILocalVariable(name: "m", scope: !1492, file: !3, line: 548, type: !50)
!1492 = distinct !DILexicalBlock(scope: !1485, file: !3, line: 547, column: 21)
!1493 = !DILocation(line: 532, column: 35, scope: !1485, inlinedAt: !1494)
!1494 = distinct !DILocation(line: 575, column: 15, scope: !1481)
!1495 = !DILocation(line: 532, column: 51, scope: !1485, inlinedAt: !1494)
!1496 = !DILocation(line: 533, column: 16, scope: !1485, inlinedAt: !1494)
!1497 = !DILocation(line: 534, column: 4, scope: !1485, inlinedAt: !1494)
!1498 = !DILocation(line: 536, column: 3, scope: !1485, inlinedAt: !1494)
!1499 = !DILocation(line: 536, column: 11, scope: !1485, inlinedAt: !1494)
!1500 = distinct !{!1500, !1501, !1502}
!1501 = !DILocation(line: 536, column: 3, scope: !1485)
!1502 = !DILocation(line: 545, column: 3, scope: !1485)
!1503 = !DILocation(line: 0, scope: !1504, inlinedAt: !1494)
!1504 = distinct !DILexicalBlock(scope: !1485, file: !3, line: 536, column: 39)
!1505 = !DILocation(line: 547, column: 12, scope: !1485, inlinedAt: !1494)
!1506 = !DILocation(line: 547, column: 16, scope: !1485, inlinedAt: !1494)
!1507 = !DILocation(line: 547, column: 3, scope: !1485, inlinedAt: !1494)
!1508 = !DILocation(line: 538, column: 7, scope: !1504, inlinedAt: !1494)
!1509 = !DILocation(line: 539, column: 11, scope: !1510, inlinedAt: !1494)
!1510 = distinct !DILexicalBlock(scope: !1504, file: !3, line: 539, column: 9)
!1511 = !DILocation(line: 539, column: 9, scope: !1504, inlinedAt: !1494)
!1512 = !DILocation(line: 542, column: 7, scope: !1513, inlinedAt: !1494)
!1513 = distinct !DILexicalBlock(scope: !1510, file: !3, line: 539, column: 42)
!1514 = !DILocation(line: 542, column: 15, scope: !1513, inlinedAt: !1494)
!1515 = !DILocation(line: 542, column: 44, scope: !1513, inlinedAt: !1494)
!1516 = distinct !{!1516, !1517, !1518}
!1517 = !DILocation(line: 542, column: 7, scope: !1513)
!1518 = !DILocation(line: 542, column: 44, scope: !1513)
!1519 = !DILocation(line: 548, column: 24, scope: !1492, inlinedAt: !1494)
!1520 = !DILocation(line: 548, column: 27, scope: !1492, inlinedAt: !1494)
!1521 = !DILocation(line: 548, column: 18, scope: !1492, inlinedAt: !1494)
!1522 = !DILocation(line: 549, column: 9, scope: !1523, inlinedAt: !1494)
!1523 = distinct !DILexicalBlock(scope: !1492, file: !3, line: 549, column: 9)
!1524 = !DILocation(line: 549, column: 9, scope: !1492, inlinedAt: !1494)
!1525 = !DILocation(line: 549, column: 37, scope: !1523, inlinedAt: !1494)
!1526 = distinct !{!1526, !1527, !1528}
!1527 = !DILocation(line: 547, column: 3, scope: !1485)
!1528 = !DILocation(line: 551, column: 3, scope: !1485)
!1529 = !DILocation(line: 0, scope: !1485, inlinedAt: !1494)
!1530 = !DILocation(line: 0, scope: !1481)
!1531 = !DILocation(line: 553, column: 1, scope: !1485, inlinedAt: !1494)
!1532 = !DILocation(line: 575, column: 8, scope: !1481)
!1533 = !DILocation(line: 576, column: 1, scope: !1449)
