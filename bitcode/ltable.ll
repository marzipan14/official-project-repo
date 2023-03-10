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
  switch i32 %5, label %12 [
    i32 0, label %58
    i32 3, label %6
  ], !dbg !402

; <label>:6:                                      ; preds = %3
  %7 = bitcast %struct.lua_TValue* %2 to double*, !dbg !403
  %8 = load double, double* %7, align 8, !dbg !403, !tbaa !414
  %9 = fptosi double %8 to i32, !dbg !416
  %10 = sitofp i32 %9 to double, !dbg !418
  %11 = fcmp une double %8, %10, !dbg !418
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %6, %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !420
  br label %21, !dbg !422

; <label>:13:                                     ; preds = %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !420
  %14 = icmp sgt i32 %9, 0, !dbg !423
  br i1 %14, label %15, label %21, !dbg !422

; <label>:15:                                     ; preds = %13
  %16 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 10, !dbg !424
  %17 = load i32, i32* %16, align 8, !dbg !424, !tbaa !425
  %18 = icmp slt i32 %17, %9, !dbg !428
  br i1 %18, label %21, label %19, !dbg !429

; <label>:19:                                     ; preds = %15
  %20 = add nsw i32 %9, -1, !dbg !430
  br label %58, !dbg !431

; <label>:21:                                     ; preds = %15, %13, %12
  %22 = tail call fastcc %struct.Node* @mainposition(%struct.Table* %1, %struct.lua_TValue* nonnull %2) #5, !dbg !432
  %23 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i64 0, i32 0, i32 0
  br label %24, !dbg !434

; <label>:24:                                     ; preds = %53, %21
  %25 = phi %struct.Node* [ %22, %21 ], [ %55, %53 ], !dbg !435
  %26 = getelementptr inbounds %struct.Node, %struct.Node* %25, i64 0, i32 1, !dbg !438
  %27 = bitcast %union.TKey* %26 to %struct.lua_TValue*, !dbg !438
  %28 = tail call i32 @luaO_rawequalObj(%struct.lua_TValue* nonnull %27, %struct.lua_TValue* %2) #5, !dbg !439
  %29 = icmp eq i32 %28, 0, !dbg !439
  br i1 %29, label %30, label %42, !dbg !440

; <label>:30:                                     ; preds = %24
  %31 = getelementptr inbounds %struct.Node, %struct.Node* %25, i64 0, i32 1, i32 0, i32 1, !dbg !441
  %32 = load i32, i32* %31, align 8, !dbg !441, !tbaa !414
  %33 = icmp eq i32 %32, 11, !dbg !442
  br i1 %33, label %34, label %53, !dbg !443

; <label>:34:                                     ; preds = %30
  %35 = load i32, i32* %4, align 8, !dbg !444, !tbaa !397
  %36 = icmp sgt i32 %35, 3, !dbg !444
  br i1 %36, label %37, label %53, !dbg !445

; <label>:37:                                     ; preds = %34
  %38 = getelementptr inbounds %union.TKey, %union.TKey* %26, i64 0, i32 0, i32 0, i32 0, !dbg !446
  %39 = load %union.GCObject*, %union.GCObject** %38, align 8, !dbg !446, !tbaa !414
  %40 = load %union.GCObject*, %union.GCObject** %23, align 8, !dbg !447, !tbaa !414
  %41 = icmp eq %union.GCObject* %39, %40, !dbg !448
  br i1 %41, label %42, label %53, !dbg !449

; <label>:42:                                     ; preds = %37, %24
  %43 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7, !dbg !450
  %44 = bitcast %struct.Node** %43 to i64*, !dbg !450
  %45 = load i64, i64* %44, align 8, !dbg !450, !tbaa !452
  %46 = ptrtoint %struct.Node* %25 to i64, !dbg !450
  %47 = sub i64 %46, %45, !dbg !450
  %48 = sdiv exact i64 %47, 40, !dbg !450
  %49 = trunc i64 %48 to i32, !dbg !450
  %50 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 10, !dbg !453
  %51 = load i32, i32* %50, align 8, !dbg !453, !tbaa !425
  %52 = add nsw i32 %51, %49, !dbg !454
  br label %58, !dbg !455

; <label>:53:                                     ; preds = %37, %34, %30
  %54 = getelementptr inbounds %struct.Node, %struct.Node* %25, i64 0, i32 1, i32 0, i32 2, !dbg !456
  %55 = load %struct.Node*, %struct.Node** %54, align 8, !dbg !456, !tbaa !414
  %56 = icmp eq %struct.Node* %55, null, !dbg !457
  br i1 %56, label %57, label %24, !dbg !457, !llvm.loop !458

; <label>:57:                                     ; preds = %53
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0)) #5, !dbg !461
  br label %58, !dbg !462

; <label>:58:                                     ; preds = %3, %19, %42, %57
  %59 = phi i32 [ %20, %19 ], [ -1, %3 ], [ %52, %42 ], [ 0, %57 ], !dbg !463
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !464
  %60 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 10
  %61 = load i32, i32* %60, align 8, !tbaa !425
  %62 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 6
  %63 = sext i32 %59 to i64, !dbg !466
  %64 = sext i32 %61 to i64, !dbg !466
  br label %65, !dbg !466

; <label>:65:                                     ; preds = %69, %58
  %66 = phi i64 [ %67, %69 ], [ %63, %58 ]
  %67 = add nsw i64 %66, 1, !dbg !467
  %68 = icmp slt i64 %67, %64, !dbg !468
  br i1 %68, label %69, label %88, !dbg !469

; <label>:69:                                     ; preds = %65
  %70 = load %struct.lua_TValue*, %struct.lua_TValue** %62, align 8, !dbg !470, !tbaa !471
  %71 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %70, i64 %67, i32 1, !dbg !470
  %72 = load i32, i32* %71, align 8, !dbg !470, !tbaa !397
  %73 = icmp eq i32 %72, 0, !dbg !470
  br i1 %73, label %65, label %74, !dbg !472, !llvm.loop !473

; <label>:74:                                     ; preds = %69
  %75 = trunc i64 %66 to i32, !dbg !470
  %76 = add nsw i32 %75, 2, !dbg !475
  %77 = sitofp i32 %76 to double, !dbg !475
  %78 = bitcast %struct.lua_TValue* %2 to double*, !dbg !475
  store double %77, double* %78, align 8, !dbg !475, !tbaa !414
  store i32 3, i32* %4, align 8, !dbg !475, !tbaa !397
  %79 = load %struct.lua_TValue*, %struct.lua_TValue** %62, align 8, !dbg !476, !tbaa !471
  %80 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %79, i64 %67, !dbg !476
  %81 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i64 1, !dbg !476
  %82 = bitcast %struct.lua_TValue* %80 to i64*, !dbg !476
  %83 = bitcast %struct.lua_TValue* %81 to i64*, !dbg !476
  %84 = load i64, i64* %82, align 8, !dbg !476
  store i64 %84, i64* %83, align 8, !dbg !476
  %85 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %79, i64 %67, i32 1, !dbg !476
  %86 = load i32, i32* %85, align 8, !dbg !476, !tbaa !397
  %87 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i64 1, i32 1, !dbg !476
  store i32 %86, i32* %87, align 8, !dbg !476, !tbaa !397
  br label %125, !dbg !477

; <label>:88:                                     ; preds = %65
  %89 = trunc i64 %67 to i32, !dbg !478
  %90 = sub i32 %89, %61, !dbg !478
  %91 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 4, !dbg !479
  %92 = load i8, i8* %91, align 1, !dbg !479, !tbaa !480
  %93 = zext i8 %92 to i32, !dbg !479
  %94 = shl i32 1, %93, !dbg !479
  %95 = icmp slt i32 %90, %94, !dbg !481
  br i1 %95, label %96, label %125, !dbg !482

; <label>:96:                                     ; preds = %88
  %97 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7
  %98 = load %struct.Node*, %struct.Node** %97, align 8, !tbaa !452
  %99 = sext i32 %90 to i64, !dbg !482
  %100 = sext i32 %94 to i64
  br label %103, !dbg !482

; <label>:101:                                    ; preds = %103
  %102 = icmp slt i64 %108, %100, !dbg !481
  br i1 %102, label %103, label %125, !dbg !482, !llvm.loop !483

; <label>:103:                                    ; preds = %96, %101
  %104 = phi i64 [ %99, %96 ], [ %108, %101 ]
  %105 = getelementptr inbounds %struct.Node, %struct.Node* %98, i64 %104, i32 0, i32 1, !dbg !485
  %106 = load i32, i32* %105, align 8, !dbg !485, !tbaa !486
  %107 = icmp eq i32 %106, 0, !dbg !485
  %108 = add nsw i64 %104, 1, !dbg !488
  br i1 %107, label %101, label %109, !dbg !489

; <label>:109:                                    ; preds = %103
  %110 = getelementptr inbounds %struct.Node, %struct.Node* %98, i64 %104, i32 1, !dbg !490
  %111 = bitcast %union.TKey* %110 to i64*, !dbg !490
  %112 = bitcast %struct.lua_TValue* %2 to i64*, !dbg !490
  %113 = load i64, i64* %111, align 8, !dbg !490
  store i64 %113, i64* %112, align 8, !dbg !490
  %114 = getelementptr inbounds %struct.Node, %struct.Node* %98, i64 %104, i32 1, i32 0, i32 1, !dbg !490
  %115 = load i32, i32* %114, align 8, !dbg !490, !tbaa !397
  store i32 %115, i32* %4, align 8, !dbg !490, !tbaa !397
  %116 = load %struct.Node*, %struct.Node** %97, align 8, !dbg !491, !tbaa !452
  %117 = getelementptr inbounds %struct.Node, %struct.Node* %116, i64 %104, i32 0, !dbg !491
  %118 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i64 1, !dbg !491
  %119 = bitcast %struct.lua_TValue* %117 to i64*, !dbg !491
  %120 = bitcast %struct.lua_TValue* %118 to i64*, !dbg !491
  %121 = load i64, i64* %119, align 8, !dbg !491
  store i64 %121, i64* %120, align 8, !dbg !491
  %122 = getelementptr inbounds %struct.Node, %struct.Node* %116, i64 %104, i32 0, i32 1, !dbg !491
  %123 = load i32, i32* %122, align 8, !dbg !491, !tbaa !397
  %124 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i64 1, i32 1, !dbg !491
  store i32 %123, i32* %124, align 8, !dbg !491, !tbaa !397
  br label %125, !dbg !492

; <label>:125:                                    ; preds = %101, %88, %109, %74
  %126 = phi i32 [ 1, %74 ], [ 1, %109 ], [ 0, %88 ], [ 0, %101 ], !dbg !493
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !494
  ret i32 %126, !dbg !494
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #2

; Function Attrs: noredzone nounwind
define hidden void @luaH_resizearray(%struct.lua_State*, %struct.Table*, i32) local_unnamed_addr #0 !dbg !495 {
  %4 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7, !dbg !506
  %5 = load %struct.Node*, %struct.Node** %4, align 8, !dbg !506, !tbaa !452
  %6 = icmp eq %struct.Node* %5, @dummynode_, !dbg !507
  br i1 %6, label %12, label %7, !dbg !508

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 4, !dbg !509
  %9 = load i8, i8* %8, align 1, !dbg !509, !tbaa !480
  %10 = zext i8 %9 to i32, !dbg !509
  %11 = shl i32 1, %10, !dbg !509
  br label %12, !dbg !508

; <label>:12:                                     ; preds = %3, %7
  %13 = phi i32 [ %11, %7 ], [ 0, %3 ], !dbg !508
  tail call fastcc void @resize(%struct.lua_State* %0, %struct.Table* nonnull %1, i32 %2, i32 %13) #6, !dbg !511
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !512
  ret void, !dbg !512
}

; Function Attrs: noredzone nounwind
define internal fastcc void @resize(%struct.lua_State*, %struct.Table*, i32, i32) unnamed_addr #0 !dbg !513 {
  %5 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 10, !dbg !546
  %6 = load i32, i32* %5, align 8, !dbg !546, !tbaa !425
  %7 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 4, !dbg !548
  %8 = load i8, i8* %7, align 1, !dbg !548, !tbaa !480
  %9 = zext i8 %8 to i32, !dbg !549
  %10 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7, !dbg !551
  %11 = load %struct.Node*, %struct.Node** %10, align 8, !dbg !551, !tbaa !452
  %12 = icmp slt i32 %6, %2, !dbg !553
  br i1 %12, label %13, label %64, !dbg !555

; <label>:13:                                     ; preds = %4
  %14 = icmp sgt i32 %2, -2, !dbg !566
  br i1 %14, label %15, label %24, !dbg !566

; <label>:15:                                     ; preds = %13
  %16 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 6, !dbg !566
  %17 = bitcast %struct.lua_TValue** %16 to i8**, !dbg !566
  %18 = load i8*, i8** %17, align 8, !dbg !566, !tbaa !471
  %19 = sext i32 %6 to i64, !dbg !566
  %20 = shl nsw i64 %19, 4, !dbg !566
  %21 = sext i32 %2 to i64, !dbg !566
  %22 = shl nsw i64 %21, 4, !dbg !566
  %23 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* %18, i64 %20, i64 %22) #5, !dbg !566
  br label %28, !dbg !566

; <label>:24:                                     ; preds = %13
  %25 = tail call i8* @luaM_toobig(%struct.lua_State* %0) #5, !dbg !566
  %26 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 6, !dbg !566
  %27 = bitcast %struct.lua_TValue** %26 to i8**, !dbg !566
  br label %28, !dbg !566

; <label>:28:                                     ; preds = %24, %15
  %29 = phi i8** [ %27, %24 ], [ %17, %15 ], !dbg !566
  %30 = phi i8* [ %25, %24 ], [ %23, %15 ], !dbg !566
  store i8* %30, i8** %29, align 8, !dbg !566, !tbaa !471
  %31 = load i32, i32* %5, align 8, !dbg !567, !tbaa !425
  %32 = icmp slt i32 %31, %2, !dbg !570
  %33 = bitcast i8* %30 to %struct.lua_TValue*, !dbg !572
  br i1 %32, label %34, label %63, !dbg !572

; <label>:34:                                     ; preds = %28
  %35 = sext i32 %31 to i64, !dbg !572
  %36 = sext i32 %2 to i64
  %37 = sub nsw i64 %36, %35, !dbg !572
  %38 = xor i64 %35, -1, !dbg !572
  %39 = add nsw i64 %38, %36, !dbg !572
  %40 = and i64 %37, 3, !dbg !572
  %41 = icmp eq i64 %40, 0, !dbg !572
  br i1 %41, label %49, label %42, !dbg !572

; <label>:42:                                     ; preds = %34, %42
  %43 = phi i64 [ %46, %42 ], [ %35, %34 ]
  %44 = phi i64 [ %47, %42 ], [ %40, %34 ]
  %45 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %33, i64 %43, i32 1, !dbg !573
  store i32 0, i32* %45, align 8, !dbg !573, !tbaa !397
  %46 = add nsw i64 %43, 1, !dbg !574
  %47 = add i64 %44, -1, !dbg !572
  %48 = icmp eq i64 %47, 0, !dbg !572
  br i1 %48, label %49, label %42, !dbg !572, !llvm.loop !575

; <label>:49:                                     ; preds = %42, %34
  %50 = phi i64 [ %35, %34 ], [ %46, %42 ]
  %51 = icmp ult i64 %39, 3, !dbg !572
  br i1 %51, label %63, label %52, !dbg !572

; <label>:52:                                     ; preds = %49, %52
  %53 = phi i64 [ %61, %52 ], [ %50, %49 ]
  %54 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %33, i64 %53, i32 1, !dbg !573
  store i32 0, i32* %54, align 8, !dbg !573, !tbaa !397
  %55 = add nsw i64 %53, 1, !dbg !574
  %56 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %33, i64 %55, i32 1, !dbg !573
  store i32 0, i32* %56, align 8, !dbg !573, !tbaa !397
  %57 = add nsw i64 %53, 2, !dbg !574
  %58 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %33, i64 %57, i32 1, !dbg !573
  store i32 0, i32* %58, align 8, !dbg !573, !tbaa !397
  %59 = add nsw i64 %53, 3, !dbg !574
  %60 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %33, i64 %59, i32 1, !dbg !573
  store i32 0, i32* %60, align 8, !dbg !573, !tbaa !397
  %61 = add nsw i64 %53, 4, !dbg !574
  %62 = icmp eq i64 %61, %36, !dbg !570
  br i1 %62, label %63, label %52, !dbg !572, !llvm.loop !577

; <label>:63:                                     ; preds = %49, %52, %28
  store i32 %2, i32* %5, align 8, !dbg !580, !tbaa !425
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !581
  br label %64, !dbg !582

; <label>:64:                                     ; preds = %63, %4
  tail call fastcc void @setnodevector(%struct.lua_State* %0, %struct.Table* nonnull %1, i32 %3) #6, !dbg !583
  %65 = icmp sgt i32 %6, %2, !dbg !584
  br i1 %65, label %66, label %102, !dbg !585

; <label>:66:                                     ; preds = %64
  store i32 %2, i32* %5, align 8, !dbg !586, !tbaa !425
  %67 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 6
  %68 = sext i32 %2 to i64, !dbg !588
  br label %69, !dbg !588

; <label>:69:                                     ; preds = %85, %66
  %70 = phi i64 [ %68, %66 ], [ %75, %85 ]
  %71 = load %struct.lua_TValue*, %struct.lua_TValue** %67, align 8, !dbg !589, !tbaa !471
  %72 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %71, i64 %70, i32 1, !dbg !589
  %73 = load i32, i32* %72, align 8, !dbg !589, !tbaa !397
  %74 = icmp eq i32 %73, 0, !dbg !589
  %75 = add nsw i64 %70, 1, !dbg !590
  %76 = trunc i64 %75 to i32, !dbg !590
  br i1 %74, label %85, label %77, !dbg !591

; <label>:77:                                     ; preds = %69
  %78 = tail call %struct.lua_TValue* @luaH_setnum(%struct.lua_State* %0, %struct.Table* nonnull %1, i32 %76) #6, !dbg !592
  %79 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %71, i64 %70, i32 0, !dbg !592
  %80 = bitcast %union.Value* %79 to i64*, !dbg !592
  %81 = bitcast %struct.lua_TValue* %78 to i64*, !dbg !592
  %82 = load i64, i64* %80, align 8, !dbg !592
  store i64 %82, i64* %81, align 8, !dbg !592
  %83 = load i32, i32* %72, align 8, !dbg !592, !tbaa !397
  %84 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %78, i64 0, i32 1, !dbg !592
  store i32 %83, i32* %84, align 8, !dbg !592, !tbaa !397
  br label %85, !dbg !592

; <label>:85:                                     ; preds = %69, %77
  %86 = icmp eq i32 %6, %76, !dbg !593
  br i1 %86, label %87, label %69, !dbg !588, !llvm.loop !594

; <label>:87:                                     ; preds = %85
  %88 = icmp sgt i32 %2, -2, !dbg !596
  br i1 %88, label %89, label %96, !dbg !596

; <label>:89:                                     ; preds = %87
  %90 = bitcast %struct.lua_TValue** %67 to i8**, !dbg !596
  %91 = load i8*, i8** %90, align 8, !dbg !596, !tbaa !471
  %92 = sext i32 %6 to i64, !dbg !596
  %93 = shl nsw i64 %92, 4, !dbg !596
  %94 = shl nsw i64 %68, 4, !dbg !596
  %95 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* %91, i64 %93, i64 %94) #5, !dbg !596
  br label %99, !dbg !596

; <label>:96:                                     ; preds = %87
  %97 = tail call i8* @luaM_toobig(%struct.lua_State* %0) #5, !dbg !596
  %98 = bitcast %struct.lua_TValue** %67 to i8**, !dbg !596
  br label %99, !dbg !596

; <label>:99:                                     ; preds = %96, %89
  %100 = phi i8** [ %98, %96 ], [ %90, %89 ], !dbg !596
  %101 = phi i8* [ %97, %96 ], [ %95, %89 ], !dbg !596
  store i8* %101, i8** %100, align 8, !dbg !596, !tbaa !471
  br label %102, !dbg !597

; <label>:102:                                    ; preds = %99, %64
  %103 = shl i32 1, %9, !dbg !598
  %104 = icmp eq i8 %8, 31, !dbg !599
  br i1 %104, label %140, label %105, !dbg !600

; <label>:105:                                    ; preds = %102
  %106 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 3
  %107 = sext i32 %103 to i64, !dbg !600
  br label %108, !dbg !600

; <label>:108:                                    ; preds = %105, %138
  %109 = phi i64 [ %107, %105 ], [ %110, %138 ]
  %110 = add nsw i64 %109, -1, !dbg !601
  %111 = getelementptr inbounds %struct.Node, %struct.Node* %11, i64 %110, i32 0, i32 1, !dbg !602
  %112 = load i32, i32* %111, align 8, !dbg !602, !tbaa !486
  %113 = icmp eq i32 %112, 0, !dbg !602
  br i1 %113, label %138, label %114, !dbg !603

; <label>:114:                                    ; preds = %108
  %115 = getelementptr inbounds %struct.Node, %struct.Node* %11, i64 %110, !dbg !604
  %116 = getelementptr inbounds %struct.Node, %struct.Node* %11, i64 %110, i32 1, !dbg !606
  %117 = bitcast %union.TKey* %116 to %struct.lua_TValue*, !dbg !606
  %118 = tail call %struct.lua_TValue* @luaH_get(%struct.Table* %1, %struct.lua_TValue* nonnull %117) #5, !dbg !619
  store i8 0, i8* %106, align 2, !dbg !621, !tbaa !622
  %119 = icmp eq %struct.lua_TValue* %118, @luaO_nilobject_, !dbg !623
  br i1 %119, label %120, label %131, !dbg !625

; <label>:120:                                    ; preds = %114
  %121 = getelementptr inbounds %struct.Node, %struct.Node* %11, i64 %110, i32 1, i32 0, i32 1, !dbg !626
  %122 = load i32, i32* %121, align 8, !dbg !626, !tbaa !397
  switch i32 %122, label %129 [
    i32 0, label %123
    i32 3, label %124
  ], !dbg !629

; <label>:123:                                    ; preds = %120
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0)) #5, !dbg !630
  br label %129, !dbg !630

; <label>:124:                                    ; preds = %120
  %125 = bitcast %union.TKey* %116 to double*, !dbg !631
  %126 = load double, double* %125, align 8, !dbg !631, !tbaa !414
  %127 = fcmp ord double %126, 0.000000e+00, !dbg !631
  br i1 %127, label %129, label %128, !dbg !633

; <label>:128:                                    ; preds = %124
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !634
  br label %129, !dbg !634

; <label>:129:                                    ; preds = %128, %124, %123, %120
  %130 = tail call fastcc %struct.lua_TValue* @newkey(%struct.lua_State* %0, %struct.Table* nonnull %1, %struct.lua_TValue* nonnull %117) #5, !dbg !635
  br label %131, !dbg !636

; <label>:131:                                    ; preds = %114, %129
  %132 = phi %struct.lua_TValue* [ %130, %129 ], [ %118, %114 ], !dbg !637
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !638
  %133 = bitcast %struct.Node* %115 to i64*, !dbg !606
  %134 = bitcast %struct.lua_TValue* %132 to i64*, !dbg !606
  %135 = load i64, i64* %133, align 8, !dbg !606
  store i64 %135, i64* %134, align 8, !dbg !606
  %136 = load i32, i32* %111, align 8, !dbg !606, !tbaa !397
  %137 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %132, i64 0, i32 1, !dbg !606
  store i32 %136, i32* %137, align 8, !dbg !606, !tbaa !397
  br label %138, !dbg !606

; <label>:138:                                    ; preds = %131, %108
  %139 = icmp sgt i64 %109, 1, !dbg !599
  br i1 %139, label %108, label %140, !dbg !600, !llvm.loop !639

; <label>:140:                                    ; preds = %138, %102
  %141 = icmp eq %struct.Node* %11, @dummynode_, !dbg !641
  br i1 %141, label %147, label %142, !dbg !643

; <label>:142:                                    ; preds = %140
  %143 = bitcast %struct.Node* %11 to i8*, !dbg !644
  %144 = sext i32 %103 to i64, !dbg !644
  %145 = mul nsw i64 %144, 40, !dbg !644
  %146 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* %143, i64 %145, i64 0) #5, !dbg !644
  br label %147, !dbg !644

; <label>:147:                                    ; preds = %140, %142
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !645
  ret void, !dbg !645
}

; Function Attrs: noredzone nounwind
define hidden %struct.Table* @luaH_new(%struct.lua_State*, i32, i32) local_unnamed_addr #0 !dbg !646 {
  %4 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* null, i64 0, i64 64) #5, !dbg !657
  %5 = bitcast i8* %4 to %struct.Table*, !dbg !657
  %6 = bitcast i8* %4 to %union.GCObject*, !dbg !659
  tail call void @luaC_link(%struct.lua_State* %0, %union.GCObject* %6, i8 zeroext 5) #5, !dbg !660
  %7 = getelementptr inbounds i8, i8* %4, i64 16, !dbg !661
  %8 = bitcast i8* %7 to %struct.Table**, !dbg !661
  store %struct.Table* null, %struct.Table** %8, align 8, !dbg !662, !tbaa !663
  %9 = getelementptr inbounds i8, i8* %4, i64 10, !dbg !664
  store i8 -1, i8* %9, align 2, !dbg !665, !tbaa !622
  %10 = getelementptr inbounds i8, i8* %4, i64 24, !dbg !666
  %11 = bitcast i8* %10 to %struct.lua_TValue**, !dbg !666
  store %struct.lua_TValue* null, %struct.lua_TValue** %11, align 8, !dbg !667, !tbaa !471
  %12 = getelementptr inbounds i8, i8* %4, i64 56, !dbg !668
  %13 = bitcast i8* %12 to i32*, !dbg !668
  store i32 0, i32* %13, align 8, !dbg !669, !tbaa !425
  %14 = getelementptr inbounds i8, i8* %4, i64 11, !dbg !670
  store i8 0, i8* %14, align 1, !dbg !671, !tbaa !480
  %15 = getelementptr inbounds i8, i8* %4, i64 32, !dbg !672
  %16 = bitcast i8* %15 to %struct.Node**, !dbg !672
  store %struct.Node* @dummynode_, %struct.Node** %16, align 8, !dbg !673, !tbaa !452
  %17 = icmp sgt i32 %1, -2, !dbg !678
  br i1 %17, label %18, label %22, !dbg !678

; <label>:18:                                     ; preds = %3
  %19 = sext i32 %1 to i64, !dbg !678
  %20 = shl nsw i64 %19, 4, !dbg !678
  %21 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* null, i64 0, i64 %20) #5, !dbg !678
  br label %24, !dbg !678

; <label>:22:                                     ; preds = %3
  %23 = tail call i8* @luaM_toobig(%struct.lua_State* %0) #5, !dbg !678
  br label %24, !dbg !678

; <label>:24:                                     ; preds = %22, %18
  %25 = phi i8* [ %23, %22 ], [ %21, %18 ], !dbg !678
  %26 = bitcast i8* %10 to i8**, !dbg !678
  store i8* %25, i8** %26, align 8, !dbg !678, !tbaa !471
  %27 = load i32, i32* %13, align 8, !dbg !679, !tbaa !425
  %28 = icmp slt i32 %27, %1, !dbg !681
  %29 = bitcast i8* %25 to %struct.lua_TValue*, !dbg !682
  br i1 %28, label %30, label %59, !dbg !682

; <label>:30:                                     ; preds = %24
  %31 = sext i32 %27 to i64, !dbg !682
  %32 = sext i32 %1 to i64
  %33 = sub nsw i64 %32, %31, !dbg !682
  %34 = xor i64 %31, -1, !dbg !682
  %35 = add nsw i64 %34, %32, !dbg !682
  %36 = and i64 %33, 3, !dbg !682
  %37 = icmp eq i64 %36, 0, !dbg !682
  br i1 %37, label %45, label %38, !dbg !682

; <label>:38:                                     ; preds = %30, %38
  %39 = phi i64 [ %42, %38 ], [ %31, %30 ]
  %40 = phi i64 [ %43, %38 ], [ %36, %30 ]
  %41 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %29, i64 %39, i32 1, !dbg !683
  store i32 0, i32* %41, align 8, !dbg !683, !tbaa !397
  %42 = add nsw i64 %39, 1, !dbg !684
  %43 = add i64 %40, -1, !dbg !682
  %44 = icmp eq i64 %43, 0, !dbg !682
  br i1 %44, label %45, label %38, !dbg !682, !llvm.loop !685

; <label>:45:                                     ; preds = %38, %30
  %46 = phi i64 [ %31, %30 ], [ %42, %38 ]
  %47 = icmp ult i64 %35, 3, !dbg !682
  br i1 %47, label %59, label %48, !dbg !682

; <label>:48:                                     ; preds = %45, %48
  %49 = phi i64 [ %57, %48 ], [ %46, %45 ]
  %50 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %29, i64 %49, i32 1, !dbg !683
  store i32 0, i32* %50, align 8, !dbg !683, !tbaa !397
  %51 = add nsw i64 %49, 1, !dbg !684
  %52 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %29, i64 %51, i32 1, !dbg !683
  store i32 0, i32* %52, align 8, !dbg !683, !tbaa !397
  %53 = add nsw i64 %49, 2, !dbg !684
  %54 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %29, i64 %53, i32 1, !dbg !683
  store i32 0, i32* %54, align 8, !dbg !683, !tbaa !397
  %55 = add nsw i64 %49, 3, !dbg !684
  %56 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %29, i64 %55, i32 1, !dbg !683
  store i32 0, i32* %56, align 8, !dbg !683, !tbaa !397
  %57 = add nsw i64 %49, 4, !dbg !684
  %58 = icmp eq i64 %57, %32, !dbg !681
  br i1 %58, label %59, label %48, !dbg !682, !llvm.loop !577

; <label>:59:                                     ; preds = %45, %48, %24
  store i32 %1, i32* %13, align 8, !dbg !686, !tbaa !425
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !687
  tail call fastcc void @setnodevector(%struct.lua_State* %0, %struct.Table* %5, i32 %2) #6, !dbg !688
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !689
  ret %struct.Table* %5, !dbg !689
}

; Function Attrs: noredzone
declare hidden i8* @luaM_realloc_(%struct.lua_State*, i8*, i64, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden void @luaC_link(%struct.lua_State*, %union.GCObject*, i8 zeroext) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal fastcc void @setnodevector(%struct.lua_State*, %struct.Table* nocapture, i32) unnamed_addr #0 !dbg !690 {
  %4 = icmp eq i32 %2, 0, !dbg !706
  br i1 %4, label %5, label %7, !dbg !707

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7, !dbg !708
  store %struct.Node* @dummynode_, %struct.Node** %6, align 8, !dbg !710, !tbaa !452
  br label %43, !dbg !712

; <label>:7:                                      ; preds = %3
  %8 = add nsw i32 %2, -1, !dbg !713
  %9 = tail call i32 @luaO_log2(i32 %8) #5, !dbg !713
  %10 = add nsw i32 %9, 1, !dbg !713
  %11 = icmp sgt i32 %9, 25, !dbg !714
  br i1 %11, label %12, label %13, !dbg !716

; <label>:12:                                     ; preds = %7
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0)) #5, !dbg !717
  br label %13, !dbg !717

; <label>:13:                                     ; preds = %12, %7
  %14 = shl i32 1, %10, !dbg !718
  %15 = icmp sgt i32 %14, -2, !dbg !719
  br i1 %15, label %16, label %20, !dbg !719

; <label>:16:                                     ; preds = %13
  %17 = sext i32 %14 to i64, !dbg !719
  %18 = mul nsw i64 %17, 40, !dbg !719
  %19 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* null, i64 0, i64 %18) #5, !dbg !719
  br label %22, !dbg !719

; <label>:20:                                     ; preds = %13
  %21 = tail call i8* @luaM_toobig(%struct.lua_State* %0) #5, !dbg !719
  br label %22, !dbg !719

; <label>:22:                                     ; preds = %20, %16
  %23 = phi i8* [ %19, %16 ], [ %21, %20 ], !dbg !719
  %24 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7, !dbg !720
  %25 = bitcast %struct.Node** %24 to i8**, !dbg !721
  store i8* %23, i8** %25, align 8, !dbg !721, !tbaa !452
  %26 = icmp eq i32 %10, 31, !dbg !723
  %27 = bitcast i8* %23 to %struct.Node*, !dbg !724
  br i1 %26, label %39, label %28, !dbg !724

; <label>:28:                                     ; preds = %22
  %29 = sext i32 %14 to i64, !dbg !725
  br label %30, !dbg !725

; <label>:30:                                     ; preds = %30, %28
  %31 = phi %struct.Node* [ %27, %28 ], [ %38, %30 ], !dbg !725
  %32 = phi i64 [ 0, %28 ], [ %36, %30 ]
  %33 = getelementptr inbounds %struct.Node, %struct.Node* %31, i64 %32, i32 1, i32 0, i32 2, !dbg !726
  store %struct.Node* null, %struct.Node** %33, align 8, !dbg !727, !tbaa !414
  %34 = getelementptr inbounds %struct.Node, %struct.Node* %31, i64 %32, i32 1, i32 0, i32 1, !dbg !728
  store i32 0, i32* %34, align 8, !dbg !728, !tbaa !414
  %35 = getelementptr inbounds %struct.Node, %struct.Node* %31, i64 %32, i32 0, i32 1, !dbg !729
  store i32 0, i32* %35, align 8, !dbg !729, !tbaa !486
  %36 = add nuw nsw i64 %32, 1, !dbg !730
  %37 = icmp slt i64 %36, %29, !dbg !723
  %38 = load %struct.Node*, %struct.Node** %24, align 8, !dbg !731, !tbaa !452
  br i1 %37, label %30, label %39, !dbg !724, !llvm.loop !732

; <label>:39:                                     ; preds = %30, %22
  %40 = phi i64 [ -2147483648, %22 ], [ %29, %30 ]
  %41 = phi %struct.Node* [ %27, %22 ], [ %38, %30 ], !dbg !734
  %42 = trunc i32 %10 to i8
  br label %43

; <label>:43:                                     ; preds = %39, %5
  %44 = phi %struct.Node* [ @dummynode_, %5 ], [ %41, %39 ], !dbg !734
  %45 = phi i8 [ 0, %5 ], [ %42, %39 ]
  %46 = phi i64 [ 0, %5 ], [ %40, %39 ]
  %47 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 4, !dbg !735
  store i8 %45, i8* %47, align 1, !dbg !736, !tbaa !480
  %48 = getelementptr inbounds %struct.Node, %struct.Node* %44, i64 %46, !dbg !734
  %49 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 8, !dbg !737
  store %struct.Node* %48, %struct.Node** %49, align 8, !dbg !738, !tbaa !739
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !740
  ret void, !dbg !740
}

; Function Attrs: noredzone nounwind
define hidden void @luaH_free(%struct.lua_State*, %struct.Table*) local_unnamed_addr #0 !dbg !741 {
  %3 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7, !dbg !749
  %4 = load %struct.Node*, %struct.Node** %3, align 8, !dbg !749, !tbaa !452
  %5 = icmp eq %struct.Node* %4, @dummynode_, !dbg !751
  br i1 %5, label %15, label %6, !dbg !752

; <label>:6:                                      ; preds = %2
  %7 = bitcast %struct.Node* %4 to i8*, !dbg !753
  %8 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 4, !dbg !753
  %9 = load i8, i8* %8, align 1, !dbg !753, !tbaa !480
  %10 = zext i8 %9 to i32, !dbg !753
  %11 = shl i32 1, %10, !dbg !753
  %12 = sext i32 %11 to i64, !dbg !753
  %13 = mul nsw i64 %12, 40, !dbg !753
  %14 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* %7, i64 %13, i64 0) #5, !dbg !753
  br label %15, !dbg !753

; <label>:15:                                     ; preds = %2, %6
  %16 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 6, !dbg !754
  %17 = bitcast %struct.lua_TValue** %16 to i8**, !dbg !754
  %18 = load i8*, i8** %17, align 8, !dbg !754, !tbaa !471
  %19 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 10, !dbg !754
  %20 = load i32, i32* %19, align 8, !dbg !754, !tbaa !425
  %21 = sext i32 %20 to i64, !dbg !754
  %22 = shl nsw i64 %21, 4, !dbg !754
  %23 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* %18, i64 %22, i64 0) #5, !dbg !754
  %24 = bitcast %struct.Table* %1 to i8*, !dbg !755
  %25 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* %24, i64 64, i64 0) #5, !dbg !755
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !756
  ret void, !dbg !756
}

; Function Attrs: noredzone nounwind
define hidden %struct.lua_TValue* @luaH_getnum(%struct.Table* nocapture readonly, i32) local_unnamed_addr #0 !dbg !757 {
  %3 = alloca double, align 8
  %4 = alloca [2 x i32], align 4
  %5 = add nsw i32 %1, -1, !dbg !784
  %6 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 10, !dbg !785
  %7 = load i32, i32* %6, align 8, !dbg !785, !tbaa !425
  %8 = icmp ult i32 %5, %7, !dbg !786
  br i1 %8, label %9, label %14, !dbg !787

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 6, !dbg !788
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !788, !tbaa !471
  %12 = sext i32 %5 to i64, !dbg !789
  %13 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %11, i64 %12, !dbg !789
  br label %58, !dbg !790

; <label>:14:                                     ; preds = %2
  %15 = sitofp i32 %1 to double, !dbg !791
  %16 = bitcast double* %3 to i8*, !dbg !793
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16), !dbg !793
  store double %15, double* %3, align 8, !tbaa !795
  %17 = bitcast [2 x i32]* %4 to i8*, !dbg !797
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %17) #4, !dbg !797
  %18 = icmp eq i32 %1, 0, !dbg !798
  br i1 %18, label %19, label %22, !dbg !800

; <label>:19:                                     ; preds = %14
  %20 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 7, !dbg !801
  %21 = load %struct.Node*, %struct.Node** %20, align 8, !dbg !801, !tbaa !452
  br label %40, !dbg !802

; <label>:22:                                     ; preds = %14
  %23 = call i8* @memcpy(i8* nonnull %17, i8* nonnull %16, i64 8) #5, !dbg !803
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1, !dbg !805
  %26 = load i32, i32* %25, align 4, !dbg !805, !tbaa !808
  %27 = load i32, i32* %24, align 4, !dbg !809, !tbaa !808
  %28 = add i32 %27, %26, !dbg !809
  store i32 %28, i32* %24, align 4, !dbg !809, !tbaa !808
  %29 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 7, !dbg !810
  %30 = load %struct.Node*, %struct.Node** %29, align 8, !dbg !810, !tbaa !452
  %31 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 4, !dbg !810
  %32 = load i8, i8* %31, align 1, !dbg !810, !tbaa !480
  %33 = zext i8 %32 to i32, !dbg !810
  %34 = shl nsw i32 -1, %33, !dbg !810
  %35 = or i32 %34, 1, !dbg !810
  %36 = xor i32 %35, -2, !dbg !810
  %37 = urem i32 %28, %36, !dbg !810
  %38 = zext i32 %37 to i64, !dbg !810
  %39 = getelementptr inbounds %struct.Node, %struct.Node* %30, i64 %38, !dbg !810
  br label %40, !dbg !811

; <label>:40:                                     ; preds = %19, %22
  %41 = phi %struct.Node* [ %21, %19 ], [ %39, %22 ], !dbg !812
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %17) #4, !dbg !813
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !813
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16), !dbg !813
  br label %42, !dbg !815

; <label>:42:                                     ; preds = %54, %40
  %43 = phi %struct.Node* [ %41, %40 ], [ %56, %54 ], !dbg !816
  %44 = getelementptr inbounds %struct.Node, %struct.Node* %43, i64 0, i32 1, i32 0, i32 1, !dbg !819
  %45 = load i32, i32* %44, align 8, !dbg !819, !tbaa !414
  %46 = icmp eq i32 %45, 3, !dbg !819
  br i1 %46, label %47, label %54, !dbg !820

; <label>:47:                                     ; preds = %42
  %48 = getelementptr inbounds %struct.Node, %struct.Node* %43, i64 0, i32 1, i32 0, i32 0, !dbg !821
  %49 = bitcast %union.Value* %48 to double*, !dbg !821
  %50 = load double, double* %49, align 8, !dbg !821, !tbaa !414
  %51 = fcmp oeq double %50, %15, !dbg !821
  br i1 %51, label %52, label %54, !dbg !822

; <label>:52:                                     ; preds = %47
  %53 = getelementptr inbounds %struct.Node, %struct.Node* %43, i64 0, i32 0, !dbg !823
  br label %58, !dbg !824

; <label>:54:                                     ; preds = %47, %42
  %55 = getelementptr inbounds %struct.Node, %struct.Node* %43, i64 0, i32 1, i32 0, i32 2, !dbg !825
  %56 = load %struct.Node*, %struct.Node** %55, align 8, !dbg !825, !tbaa !414
  %57 = icmp eq %struct.Node* %56, null, !dbg !826
  br i1 %57, label %58, label %42, !dbg !826, !llvm.loop !827

; <label>:58:                                     ; preds = %54, %52, %9
  %59 = phi %struct.lua_TValue* [ %13, %9 ], [ %53, %52 ], [ @luaO_nilobject_, %54 ], !dbg !816
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !829
  ret %struct.lua_TValue* %59, !dbg !829
}

; Function Attrs: noredzone nounwind
define hidden %struct.lua_TValue* @luaH_getstr(%struct.Table* nocapture readonly, %union.TString* readonly) local_unnamed_addr #0 !dbg !830 {
  %3 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 7, !dbg !839
  %4 = load %struct.Node*, %struct.Node** %3, align 8, !dbg !839, !tbaa !452
  %5 = getelementptr inbounds %union.TString, %union.TString* %1, i64 0, i32 0, i32 4, !dbg !839
  %6 = load i32, i32* %5, align 4, !dbg !839, !tbaa !414
  %7 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 4, !dbg !839
  %8 = load i8, i8* %7, align 1, !dbg !839, !tbaa !480
  %9 = zext i8 %8 to i32, !dbg !839
  %10 = shl nsw i32 -1, %9, !dbg !839
  %11 = xor i32 %10, -1, !dbg !839
  %12 = and i32 %6, %11, !dbg !839
  %13 = sext i32 %12 to i64, !dbg !839
  %14 = getelementptr inbounds %struct.Node, %struct.Node* %4, i64 %13, !dbg !839
  br label %15, !dbg !841

; <label>:15:                                     ; preds = %27, %2
  %16 = phi %struct.Node* [ %14, %2 ], [ %29, %27 ], !dbg !842
  %17 = getelementptr inbounds %struct.Node, %struct.Node* %16, i64 0, i32 1, i32 0, i32 1, !dbg !845
  %18 = load i32, i32* %17, align 8, !dbg !845, !tbaa !414
  %19 = icmp eq i32 %18, 4, !dbg !845
  br i1 %19, label %20, label %27, !dbg !846

; <label>:20:                                     ; preds = %15
  %21 = getelementptr inbounds %struct.Node, %struct.Node* %16, i64 0, i32 1, i32 0, i32 0, i32 0, !dbg !847
  %22 = bitcast %union.GCObject** %21 to %union.TString**, !dbg !847
  %23 = load %union.TString*, %union.TString** %22, align 8, !dbg !847, !tbaa !414
  %24 = icmp eq %union.TString* %23, %1, !dbg !848
  br i1 %24, label %25, label %27, !dbg !849

; <label>:25:                                     ; preds = %20
  %26 = getelementptr inbounds %struct.Node, %struct.Node* %16, i64 0, i32 0, !dbg !850
  br label %31, !dbg !851

; <label>:27:                                     ; preds = %20, %15
  %28 = getelementptr inbounds %struct.Node, %struct.Node* %16, i64 0, i32 1, i32 0, i32 2, !dbg !852
  %29 = load %struct.Node*, %struct.Node** %28, align 8, !dbg !852, !tbaa !414
  %30 = icmp eq %struct.Node* %29, null, !dbg !853
  br i1 %30, label %31, label %15, !dbg !853, !llvm.loop !854

; <label>:31:                                     ; preds = %27, %25
  %32 = phi %struct.lua_TValue* [ %26, %25 ], [ @luaO_nilobject_, %27 ], !dbg !856
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !857
  ret %struct.lua_TValue* %32, !dbg !857
}

; Function Attrs: noredzone nounwind
define hidden %struct.lua_TValue* @luaH_get(%struct.Table* nocapture readonly, %struct.lua_TValue*) local_unnamed_addr #0 !dbg !858 {
  %3 = alloca double, align 8
  %4 = alloca [2 x i32], align 4
  %5 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1, i64 0, i32 1, !dbg !876
  %6 = load i32, i32* %5, align 8, !dbg !876, !tbaa !397
  switch i32 %6, label %101 [
    i32 0, label %115
    i32 4, label %7
    i32 3, label %40
  ], !dbg !877

; <label>:7:                                      ; preds = %2
  %8 = bitcast %struct.lua_TValue* %1 to %union.TString**, !dbg !878
  %9 = load %union.TString*, %union.TString** %8, align 8, !dbg !878, !tbaa !414
  %10 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 7, !dbg !882
  %11 = load %struct.Node*, %struct.Node** %10, align 8, !dbg !882, !tbaa !452
  %12 = getelementptr inbounds %union.TString, %union.TString* %9, i64 0, i32 0, i32 4, !dbg !882
  %13 = load i32, i32* %12, align 4, !dbg !882, !tbaa !414
  %14 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 4, !dbg !882
  %15 = load i8, i8* %14, align 1, !dbg !882, !tbaa !480
  %16 = zext i8 %15 to i32, !dbg !882
  %17 = shl nsw i32 -1, %16, !dbg !882
  %18 = xor i32 %17, -1, !dbg !882
  %19 = and i32 %13, %18, !dbg !882
  %20 = sext i32 %19 to i64, !dbg !882
  %21 = getelementptr inbounds %struct.Node, %struct.Node* %11, i64 %20, !dbg !882
  br label %22, !dbg !884

; <label>:22:                                     ; preds = %34, %7
  %23 = phi %struct.Node* [ %21, %7 ], [ %36, %34 ], !dbg !885
  %24 = getelementptr inbounds %struct.Node, %struct.Node* %23, i64 0, i32 1, i32 0, i32 1, !dbg !886
  %25 = load i32, i32* %24, align 8, !dbg !886, !tbaa !414
  %26 = icmp eq i32 %25, 4, !dbg !886
  br i1 %26, label %27, label %34, !dbg !887

; <label>:27:                                     ; preds = %22
  %28 = getelementptr inbounds %struct.Node, %struct.Node* %23, i64 0, i32 1, i32 0, i32 0, i32 0, !dbg !888
  %29 = bitcast %union.GCObject** %28 to %union.TString**, !dbg !888
  %30 = load %union.TString*, %union.TString** %29, align 8, !dbg !888, !tbaa !414
  %31 = icmp eq %union.TString* %30, %9, !dbg !889
  br i1 %31, label %32, label %34, !dbg !890

; <label>:32:                                     ; preds = %27
  %33 = getelementptr inbounds %struct.Node, %struct.Node* %23, i64 0, i32 0, !dbg !891
  br label %38, !dbg !892

; <label>:34:                                     ; preds = %27, %22
  %35 = getelementptr inbounds %struct.Node, %struct.Node* %23, i64 0, i32 1, i32 0, i32 2, !dbg !893
  %36 = load %struct.Node*, %struct.Node** %35, align 8, !dbg !893, !tbaa !414
  %37 = icmp eq %struct.Node* %36, null, !dbg !894
  br i1 %37, label %38, label %22, !dbg !894, !llvm.loop !854

; <label>:38:                                     ; preds = %34, %32
  %39 = phi %struct.lua_TValue* [ %33, %32 ], [ @luaO_nilobject_, %34 ], !dbg !895
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !896
  br label %115, !dbg !897

; <label>:40:                                     ; preds = %2
  %41 = bitcast %struct.lua_TValue* %1 to double*, !dbg !898
  %42 = load double, double* %41, align 8, !dbg !898, !tbaa !414
  %43 = fptosi double %42 to i32, !dbg !900
  %44 = sitofp i32 %43 to double, !dbg !902
  %45 = fcmp oeq double %42, %44, !dbg !902
  br i1 %45, label %46, label %101, !dbg !903

; <label>:46:                                     ; preds = %40
  %47 = add nsw i32 %43, -1, !dbg !906
  %48 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 10, !dbg !907
  %49 = load i32, i32* %48, align 8, !dbg !907, !tbaa !425
  %50 = icmp ult i32 %47, %49, !dbg !908
  br i1 %50, label %51, label %56, !dbg !909

; <label>:51:                                     ; preds = %46
  %52 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 6, !dbg !910
  %53 = load %struct.lua_TValue*, %struct.lua_TValue** %52, align 8, !dbg !910, !tbaa !471
  %54 = sext i32 %47 to i64, !dbg !911
  %55 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %53, i64 %54, !dbg !911
  br label %99, !dbg !912

; <label>:56:                                     ; preds = %46
  %57 = bitcast double* %3 to i8*, !dbg !914
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %57) #4, !dbg !914
  store double %44, double* %3, align 8, !tbaa !795
  %58 = bitcast [2 x i32]* %4 to i8*, !dbg !916
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %58) #4, !dbg !916
  %59 = icmp eq i32 %43, 0, !dbg !917
  br i1 %59, label %60, label %63, !dbg !918

; <label>:60:                                     ; preds = %56
  %61 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 7, !dbg !919
  %62 = load %struct.Node*, %struct.Node** %61, align 8, !dbg !919, !tbaa !452
  br label %81, !dbg !920

; <label>:63:                                     ; preds = %56
  %64 = call i8* @memcpy(i8* nonnull %58, i8* nonnull %57, i64 8) #5, !dbg !921
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %66 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1, !dbg !923
  %67 = load i32, i32* %66, align 4, !dbg !923, !tbaa !808
  %68 = load i32, i32* %65, align 4, !dbg !924, !tbaa !808
  %69 = add i32 %68, %67, !dbg !924
  store i32 %69, i32* %65, align 4, !dbg !924, !tbaa !808
  %70 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 7, !dbg !925
  %71 = load %struct.Node*, %struct.Node** %70, align 8, !dbg !925, !tbaa !452
  %72 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 4, !dbg !925
  %73 = load i8, i8* %72, align 1, !dbg !925, !tbaa !480
  %74 = zext i8 %73 to i32, !dbg !925
  %75 = shl nsw i32 -1, %74, !dbg !925
  %76 = or i32 %75, 1, !dbg !925
  %77 = xor i32 %76, -2, !dbg !925
  %78 = urem i32 %69, %77, !dbg !925
  %79 = zext i32 %78 to i64, !dbg !925
  %80 = getelementptr inbounds %struct.Node, %struct.Node* %71, i64 %79, !dbg !925
  br label %81, !dbg !926

; <label>:81:                                     ; preds = %63, %60
  %82 = phi %struct.Node* [ %62, %60 ], [ %80, %63 ], !dbg !927
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %58) #4, !dbg !928
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !928
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %57) #4, !dbg !928
  br label %83, !dbg !930

; <label>:83:                                     ; preds = %95, %81
  %84 = phi %struct.Node* [ %82, %81 ], [ %97, %95 ], !dbg !931
  %85 = getelementptr inbounds %struct.Node, %struct.Node* %84, i64 0, i32 1, i32 0, i32 1, !dbg !932
  %86 = load i32, i32* %85, align 8, !dbg !932, !tbaa !414
  %87 = icmp eq i32 %86, 3, !dbg !932
  br i1 %87, label %88, label %95, !dbg !933

; <label>:88:                                     ; preds = %83
  %89 = getelementptr inbounds %struct.Node, %struct.Node* %84, i64 0, i32 1, i32 0, i32 0, !dbg !934
  %90 = bitcast %union.Value* %89 to double*, !dbg !934
  %91 = load double, double* %90, align 8, !dbg !934, !tbaa !414
  %92 = fcmp oeq double %91, %44, !dbg !934
  br i1 %92, label %93, label %95, !dbg !935

; <label>:93:                                     ; preds = %88
  %94 = getelementptr inbounds %struct.Node, %struct.Node* %84, i64 0, i32 0, !dbg !936
  br label %99, !dbg !937

; <label>:95:                                     ; preds = %88, %83
  %96 = getelementptr inbounds %struct.Node, %struct.Node* %84, i64 0, i32 1, i32 0, i32 2, !dbg !938
  %97 = load %struct.Node*, %struct.Node** %96, align 8, !dbg !938, !tbaa !414
  %98 = icmp eq %struct.Node* %97, null, !dbg !939
  br i1 %98, label %99, label %83, !dbg !939, !llvm.loop !827

; <label>:99:                                     ; preds = %95, %93, %51
  %100 = phi %struct.lua_TValue* [ %55, %51 ], [ %94, %93 ], [ @luaO_nilobject_, %95 ], !dbg !931
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !940
  br label %115

; <label>:101:                                    ; preds = %40, %2
  %102 = tail call fastcc %struct.Node* @mainposition(%struct.Table* %0, %struct.lua_TValue* nonnull %1) #6, !dbg !941
  br label %103, !dbg !943

; <label>:103:                                    ; preds = %111, %101
  %104 = phi %struct.Node* [ %102, %101 ], [ %113, %111 ], !dbg !944
  %105 = getelementptr inbounds %struct.Node, %struct.Node* %104, i64 0, i32 1, !dbg !947
  %106 = bitcast %union.TKey* %105 to %struct.lua_TValue*, !dbg !947
  %107 = tail call i32 @luaO_rawequalObj(%struct.lua_TValue* nonnull %106, %struct.lua_TValue* %1) #5, !dbg !948
  %108 = icmp eq i32 %107, 0, !dbg !948
  br i1 %108, label %111, label %109, !dbg !949

; <label>:109:                                    ; preds = %103
  %110 = getelementptr inbounds %struct.Node, %struct.Node* %104, i64 0, i32 0, !dbg !950
  br label %115, !dbg !951

; <label>:111:                                    ; preds = %103
  %112 = getelementptr inbounds %struct.Node, %struct.Node* %104, i64 0, i32 1, i32 0, i32 2, !dbg !952
  %113 = load %struct.Node*, %struct.Node** %112, align 8, !dbg !952, !tbaa !414
  %114 = icmp eq %struct.Node* %113, null, !dbg !953
  br i1 %114, label %115, label %103, !dbg !953, !llvm.loop !954

; <label>:115:                                    ; preds = %111, %99, %109, %2, %38
  %116 = phi %struct.lua_TValue* [ %100, %99 ], [ %39, %38 ], [ @luaO_nilobject_, %2 ], [ %110, %109 ], [ @luaO_nilobject_, %111 ], !dbg !956
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !957
  ret %struct.lua_TValue* %116, !dbg !957
}

; Function Attrs: noredzone nounwind
define internal fastcc %struct.Node* @mainposition(%struct.Table* nocapture readonly, %struct.lua_TValue* nocapture readonly) unnamed_addr #0 !dbg !958 {
  %3 = alloca double, align 8
  %4 = alloca [2 x i32], align 4
  %5 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1, i64 0, i32 1, !dbg !969
  %6 = load i32, i32* %5, align 8, !dbg !969, !tbaa !397
  switch i32 %6, label %79 [
    i32 3, label %7
    i32 4, label %36
    i32 1, label %51
    i32 2, label %64
  ], !dbg !970

; <label>:7:                                      ; preds = %2
  %8 = bitcast %struct.lua_TValue* %1 to double*, !dbg !971
  %9 = load double, double* %8, align 8, !dbg !971, !tbaa !414
  %10 = bitcast double* %3 to i8*, !dbg !972
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10), !dbg !972
  store double %9, double* %3, align 8, !tbaa !795
  %11 = bitcast [2 x i32]* %4 to i8*, !dbg !974
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #4, !dbg !974
  %12 = fcmp oeq double %9, 0.000000e+00, !dbg !975
  br i1 %12, label %13, label %16, !dbg !976

; <label>:13:                                     ; preds = %7
  %14 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 7, !dbg !977
  %15 = load %struct.Node*, %struct.Node** %14, align 8, !dbg !977, !tbaa !452
  br label %34, !dbg !978

; <label>:16:                                     ; preds = %7
  %17 = call i8* @memcpy(i8* nonnull %11, i8* nonnull %10, i64 8) #5, !dbg !979
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1, !dbg !981
  %20 = load i32, i32* %19, align 4, !dbg !981, !tbaa !808
  %21 = load i32, i32* %18, align 4, !dbg !982, !tbaa !808
  %22 = add i32 %21, %20, !dbg !982
  store i32 %22, i32* %18, align 4, !dbg !982, !tbaa !808
  %23 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 7, !dbg !983
  %24 = load %struct.Node*, %struct.Node** %23, align 8, !dbg !983, !tbaa !452
  %25 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 4, !dbg !983
  %26 = load i8, i8* %25, align 1, !dbg !983, !tbaa !480
  %27 = zext i8 %26 to i32, !dbg !983
  %28 = shl nsw i32 -1, %27, !dbg !983
  %29 = or i32 %28, 1, !dbg !983
  %30 = xor i32 %29, -2, !dbg !983
  %31 = urem i32 %22, %30, !dbg !983
  %32 = zext i32 %31 to i64, !dbg !983
  %33 = getelementptr inbounds %struct.Node, %struct.Node* %24, i64 %32, !dbg !983
  br label %34, !dbg !984

; <label>:34:                                     ; preds = %13, %16
  %35 = phi %struct.Node* [ %15, %13 ], [ %33, %16 ], !dbg !985
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #4, !dbg !986
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !986
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10), !dbg !986
  br label %94, !dbg !987

; <label>:36:                                     ; preds = %2
  %37 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 7, !dbg !988
  %38 = load %struct.Node*, %struct.Node** %37, align 8, !dbg !988, !tbaa !452
  %39 = bitcast %struct.lua_TValue* %1 to %struct.anon.1**, !dbg !988
  %40 = load %struct.anon.1*, %struct.anon.1** %39, align 8, !dbg !988, !tbaa !414
  %41 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %40, i64 0, i32 4, !dbg !988
  %42 = load i32, i32* %41, align 4, !dbg !988, !tbaa !414
  %43 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 4, !dbg !988
  %44 = load i8, i8* %43, align 1, !dbg !988, !tbaa !480
  %45 = zext i8 %44 to i32, !dbg !988
  %46 = shl nsw i32 -1, %45, !dbg !988
  %47 = xor i32 %46, -1, !dbg !988
  %48 = and i32 %42, %47, !dbg !988
  %49 = sext i32 %48 to i64, !dbg !988
  %50 = getelementptr inbounds %struct.Node, %struct.Node* %38, i64 %49, !dbg !988
  br label %94, !dbg !989

; <label>:51:                                     ; preds = %2
  %52 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 7, !dbg !990
  %53 = load %struct.Node*, %struct.Node** %52, align 8, !dbg !990, !tbaa !452
  %54 = bitcast %struct.lua_TValue* %1 to i32*, !dbg !990
  %55 = load i32, i32* %54, align 8, !dbg !990, !tbaa !414
  %56 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 4, !dbg !990
  %57 = load i8, i8* %56, align 1, !dbg !990, !tbaa !480
  %58 = zext i8 %57 to i32, !dbg !990
  %59 = shl nsw i32 -1, %58, !dbg !990
  %60 = xor i32 %59, -1, !dbg !990
  %61 = and i32 %55, %60, !dbg !990
  %62 = sext i32 %61 to i64, !dbg !990
  %63 = getelementptr inbounds %struct.Node, %struct.Node* %53, i64 %62, !dbg !990
  br label %94, !dbg !991

; <label>:64:                                     ; preds = %2
  %65 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 7, !dbg !992
  %66 = load %struct.Node*, %struct.Node** %65, align 8, !dbg !992, !tbaa !452
  %67 = bitcast %struct.lua_TValue* %1 to i64*, !dbg !992
  %68 = load i64, i64* %67, align 8, !dbg !992, !tbaa !414
  %69 = trunc i64 %68 to i32, !dbg !992
  %70 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 4, !dbg !992
  %71 = load i8, i8* %70, align 1, !dbg !992, !tbaa !480
  %72 = zext i8 %71 to i32, !dbg !992
  %73 = shl nsw i32 -1, %72, !dbg !992
  %74 = or i32 %73, 1, !dbg !992
  %75 = xor i32 %74, -2, !dbg !992
  %76 = urem i32 %69, %75, !dbg !992
  %77 = zext i32 %76 to i64, !dbg !992
  %78 = getelementptr inbounds %struct.Node, %struct.Node* %66, i64 %77, !dbg !992
  br label %94, !dbg !993

; <label>:79:                                     ; preds = %2
  %80 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 7, !dbg !994
  %81 = load %struct.Node*, %struct.Node** %80, align 8, !dbg !994, !tbaa !452
  %82 = bitcast %struct.lua_TValue* %1 to i64*, !dbg !994
  %83 = load i64, i64* %82, align 8, !dbg !994, !tbaa !414
  %84 = trunc i64 %83 to i32, !dbg !994
  %85 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 4, !dbg !994
  %86 = load i8, i8* %85, align 1, !dbg !994, !tbaa !480
  %87 = zext i8 %86 to i32, !dbg !994
  %88 = shl nsw i32 -1, %87, !dbg !994
  %89 = or i32 %88, 1, !dbg !994
  %90 = xor i32 %89, -2, !dbg !994
  %91 = urem i32 %84, %90, !dbg !994
  %92 = zext i32 %91 to i64, !dbg !994
  %93 = getelementptr inbounds %struct.Node, %struct.Node* %81, i64 %92, !dbg !994
  br label %94, !dbg !995

; <label>:94:                                     ; preds = %79, %64, %51, %36, %34
  %95 = phi %struct.Node* [ %93, %79 ], [ %78, %64 ], [ %63, %51 ], [ %50, %36 ], [ %35, %34 ], !dbg !996
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !997
  ret %struct.Node* %95, !dbg !997
}

; Function Attrs: noredzone
declare hidden i32 @luaO_rawequalObj(%struct.lua_TValue*, %struct.lua_TValue*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define hidden %struct.lua_TValue* @luaH_set(%struct.lua_State*, %struct.Table*, %struct.lua_TValue*) local_unnamed_addr #0 !dbg !608 {
  %4 = tail call %struct.lua_TValue* @luaH_get(%struct.Table* %1, %struct.lua_TValue* %2) #6, !dbg !1001
  %5 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 3, !dbg !1003
  store i8 0, i8* %5, align 2, !dbg !1004, !tbaa !622
  %6 = icmp eq %struct.lua_TValue* %4, @luaO_nilobject_, !dbg !1005
  br i1 %6, label %7, label %18, !dbg !1006

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i64 0, i32 1, !dbg !1007
  %9 = load i32, i32* %8, align 8, !dbg !1007, !tbaa !397
  switch i32 %9, label %16 [
    i32 0, label %10
    i32 3, label %11
  ], !dbg !1008

; <label>:10:                                     ; preds = %7
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0)) #5, !dbg !1009
  br label %16, !dbg !1009

; <label>:11:                                     ; preds = %7
  %12 = bitcast %struct.lua_TValue* %2 to double*, !dbg !1010
  %13 = load double, double* %12, align 8, !dbg !1010, !tbaa !414
  %14 = fcmp ord double %13, 0.000000e+00, !dbg !1010
  br i1 %14, label %16, label %15, !dbg !1011

; <label>:15:                                     ; preds = %11
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !1012
  br label %16, !dbg !1012

; <label>:16:                                     ; preds = %7, %11, %15, %10
  %17 = tail call fastcc %struct.lua_TValue* @newkey(%struct.lua_State* %0, %struct.Table* nonnull %1, %struct.lua_TValue* nonnull %2) #6, !dbg !1013
  br label %18, !dbg !1014

; <label>:18:                                     ; preds = %3, %16
  %19 = phi %struct.lua_TValue* [ %17, %16 ], [ %4, %3 ], !dbg !1015
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1016
  ret %struct.lua_TValue* %19, !dbg !1016
}

; Function Attrs: noredzone
declare hidden void @luaG_runerror(%struct.lua_State*, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal fastcc %struct.lua_TValue* @newkey(%struct.lua_State*, %struct.Table*, %struct.lua_TValue*) unnamed_addr #0 !dbg !1017 {
  %4 = alloca [27 x i32], align 16
  %5 = tail call fastcc %struct.Node* @mainposition(%struct.Table* %1, %struct.lua_TValue* %2) #6, !dbg !1049
  %6 = getelementptr inbounds %struct.Node, %struct.Node* %5, i64 0, i32 0, i32 1, !dbg !1051
  %7 = load i32, i32* %6, align 8, !dbg !1051, !tbaa !486
  %8 = icmp ne i32 %7, 0, !dbg !1051
  %9 = icmp eq %struct.Node* %5, @dummynode_, !dbg !1052
  %10 = or i1 %9, %8, !dbg !1053
  br i1 %10, label %11, label %267, !dbg !1053

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 8
  %13 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7
  %14 = load %struct.Node*, %struct.Node** %12, align 8, !dbg !1061, !tbaa !739
  %15 = load %struct.Node*, %struct.Node** %13, align 8, !dbg !1062, !tbaa !452
  br label %16, !dbg !1063

; <label>:16:                                     ; preds = %20, %11
  %17 = phi %struct.Node* [ %18, %20 ], [ %14, %11 ], !dbg !1061
  %18 = getelementptr inbounds %struct.Node, %struct.Node* %17, i64 -1, !dbg !1061
  store %struct.Node* %18, %struct.Node** %12, align 8, !dbg !1061, !tbaa !739
  %19 = icmp ugt %struct.Node* %17, %15, !dbg !1064
  br i1 %19, label %20, label %24, !dbg !1063

; <label>:20:                                     ; preds = %16
  %21 = getelementptr inbounds %struct.Node, %struct.Node* %17, i64 -1, i32 1, i32 0, i32 1, !dbg !1065
  %22 = load i32, i32* %21, align 8, !dbg !1065, !tbaa !414
  %23 = icmp eq i32 %22, 0, !dbg !1065
  br i1 %23, label %244, label %16, !dbg !1068, !llvm.loop !1069

; <label>:24:                                     ; preds = %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1072
  %25 = bitcast [27 x i32]* %4 to i8*, !dbg !1076
  call void @llvm.lifetime.start.p0i8(i64 108, i8* nonnull %25) #4, !dbg !1076
  %26 = bitcast [27 x i32]* %4 to <4 x i32>*, !dbg !1078
  store <4 x i32> zeroinitializer, <4 x i32>* %26, align 16, !dbg !1078, !tbaa !808
  %27 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 0, i64 4, !dbg !1081
  %28 = bitcast i32* %27 to <4 x i32>*, !dbg !1078
  store <4 x i32> zeroinitializer, <4 x i32>* %28, align 16, !dbg !1078, !tbaa !808
  %29 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 0, i64 8, !dbg !1081
  %30 = bitcast i32* %29 to <4 x i32>*, !dbg !1078
  store <4 x i32> zeroinitializer, <4 x i32>* %30, align 16, !dbg !1078, !tbaa !808
  %31 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 0, i64 12, !dbg !1081
  %32 = bitcast i32* %31 to <4 x i32>*, !dbg !1078
  store <4 x i32> zeroinitializer, <4 x i32>* %32, align 16, !dbg !1078, !tbaa !808
  %33 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 0, i64 16, !dbg !1081
  %34 = bitcast i32* %33 to <4 x i32>*, !dbg !1078
  store <4 x i32> zeroinitializer, <4 x i32>* %34, align 16, !dbg !1078, !tbaa !808
  %35 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 0, i64 20, !dbg !1081
  %36 = bitcast i32* %35 to <4 x i32>*, !dbg !1078
  store <4 x i32> zeroinitializer, <4 x i32>* %36, align 16, !dbg !1078, !tbaa !808
  %37 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 0, i64 24, !dbg !1081
  store i32 0, i32* %37, align 16, !dbg !1078, !tbaa !808
  %38 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 0, i64 25, !dbg !1081
  store i32 0, i32* %38, align 4, !dbg !1078, !tbaa !808
  %39 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 0, i64 26, !dbg !1081
  store i32 0, i32* %39, align 8, !dbg !1078, !tbaa !808
  %40 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 10
  %41 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 6
  %42 = load i32, i32* %40, align 8, !tbaa !425
  br label %43, !dbg !1104

; <label>:43:                                     ; preds = %115, %24
  %44 = phi i64 [ 0, %24 ], [ %122, %115 ]
  %45 = phi i32 [ 1, %24 ], [ %116, %115 ]
  %46 = phi i32 [ 0, %24 ], [ %121, %115 ]
  %47 = phi i32 [ 1, %24 ], [ %123, %115 ]
  %48 = icmp sgt i32 %47, %42, !dbg !1107
  br i1 %48, label %49, label %51, !dbg !1109

; <label>:49:                                     ; preds = %43
  %50 = icmp sgt i32 %45, %42, !dbg !1110
  br i1 %50, label %125, label %51, !dbg !1113

; <label>:51:                                     ; preds = %49, %43
  %52 = phi i32 [ %42, %49 ], [ %47, %43 ], !dbg !1114
  %53 = icmp sgt i32 %45, %52, !dbg !1115
  br i1 %53, label %115, label %54, !dbg !1118

; <label>:54:                                     ; preds = %51
  %55 = load %struct.lua_TValue*, %struct.lua_TValue** %41, align 8, !tbaa !471
  %56 = sext i32 %45 to i64, !dbg !1118
  %57 = sext i32 %52 to i64, !dbg !1118
  %58 = icmp sgt i64 %57, %56, !dbg !1118
  %59 = select i1 %58, i64 %57, i64 %56, !dbg !1118
  %60 = add nsw i64 %59, 1, !dbg !1118
  %61 = sub nsw i64 %60, %56, !dbg !1118
  %62 = icmp ult i64 %61, 9, !dbg !1118
  br i1 %62, label %99, label %63, !dbg !1118

; <label>:63:                                     ; preds = %54
  %64 = and i64 %61, 7, !dbg !1118
  %65 = icmp eq i64 %64, 0, !dbg !1118
  %66 = select i1 %65, i64 8, i64 %64, !dbg !1118
  %67 = sub nsw i64 %61, %66, !dbg !1118
  %68 = add nsw i64 %67, %56, !dbg !1118
  br label %69, !dbg !1118

; <label>:69:                                     ; preds = %69, %63
  %70 = phi i64 [ 0, %63 ], [ %90, %69 ]
  %71 = phi <4 x i32> [ zeroinitializer, %63 ], [ %88, %69 ]
  %72 = phi <4 x i32> [ zeroinitializer, %63 ], [ %89, %69 ]
  %73 = add i64 %70, %56
  %74 = add nsw i64 %73, -1, !dbg !1119
  %75 = add i64 %73, 3, !dbg !1119
  %76 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %55, i64 %74, i32 1, !dbg !1119
  %77 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %55, i64 %75, i32 1, !dbg !1119
  %78 = bitcast i32* %76 to <16 x i32>*, !dbg !1119
  %79 = bitcast i32* %77 to <16 x i32>*, !dbg !1119
  %80 = load <16 x i32>, <16 x i32>* %78, align 8, !dbg !1119, !tbaa !397
  %81 = load <16 x i32>, <16 x i32>* %79, align 8, !dbg !1119, !tbaa !397
  %82 = shufflevector <16 x i32> %80, <16 x i32> undef, <4 x i32> <i32 0, i32 4, i32 8, i32 12>, !dbg !1119
  %83 = shufflevector <16 x i32> %81, <16 x i32> undef, <4 x i32> <i32 0, i32 4, i32 8, i32 12>, !dbg !1119
  %84 = icmp ne <4 x i32> %82, zeroinitializer, !dbg !1119
  %85 = icmp ne <4 x i32> %83, zeroinitializer, !dbg !1119
  %86 = zext <4 x i1> %84 to <4 x i32>, !dbg !1122
  %87 = zext <4 x i1> %85 to <4 x i32>, !dbg !1122
  %88 = add nuw nsw <4 x i32> %71, %86, !dbg !1122
  %89 = add nuw nsw <4 x i32> %72, %87, !dbg !1122
  %90 = add i64 %70, 8
  %91 = icmp eq i64 %90, %67
  br i1 %91, label %92, label %69, !llvm.loop !1123

; <label>:92:                                     ; preds = %69
  %93 = add nuw <4 x i32> %89, %88, !dbg !1122
  %94 = shufflevector <4 x i32> %93, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>, !dbg !1122
  %95 = add <4 x i32> %93, %94, !dbg !1122
  %96 = shufflevector <4 x i32> %95, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>, !dbg !1122
  %97 = add <4 x i32> %95, %96, !dbg !1122
  %98 = extractelement <4 x i32> %97, i32 0, !dbg !1122
  br label %99, !dbg !1118

; <label>:99:                                     ; preds = %92, %54
  %100 = phi i64 [ %56, %54 ], [ %68, %92 ]
  %101 = phi i32 [ 0, %54 ], [ %98, %92 ]
  br label %102, !dbg !1119

; <label>:102:                                    ; preds = %99, %102
  %103 = phi i64 [ %111, %102 ], [ %100, %99 ]
  %104 = phi i32 [ %110, %102 ], [ %101, %99 ]
  %105 = add nsw i64 %103, -1, !dbg !1119
  %106 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %55, i64 %105, i32 1, !dbg !1119
  %107 = load i32, i32* %106, align 8, !dbg !1119, !tbaa !397
  %108 = icmp ne i32 %107, 0, !dbg !1119
  %109 = zext i1 %108 to i32, !dbg !1122
  %110 = add nuw nsw i32 %104, %109, !dbg !1122
  %111 = add nsw i64 %103, 1, !dbg !1127
  %112 = icmp slt i64 %103, %57, !dbg !1115
  br i1 %112, label %102, label %113, !dbg !1118, !llvm.loop !1128

; <label>:113:                                    ; preds = %102
  %114 = trunc i64 %111 to i32, !dbg !1130
  br label %115, !dbg !1130

; <label>:115:                                    ; preds = %113, %51
  %116 = phi i32 [ %45, %51 ], [ %114, %113 ], !dbg !1131
  %117 = phi i32 [ 0, %51 ], [ %110, %113 ], !dbg !1105
  %118 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 0, i64 %44, !dbg !1130
  %119 = load i32, i32* %118, align 4, !dbg !1132, !tbaa !808
  %120 = add nsw i32 %119, %117, !dbg !1132
  store i32 %120, i32* %118, align 4, !dbg !1132, !tbaa !808
  %121 = add nuw nsw i32 %117, %46, !dbg !1133
  %122 = add nuw nsw i64 %44, 1, !dbg !1134
  %123 = shl nsw i32 %47, 1, !dbg !1135
  %124 = icmp ult i64 %122, 27, !dbg !1136
  br i1 %124, label %43, label %125, !dbg !1104, !llvm.loop !1137

; <label>:125:                                    ; preds = %115, %49
  %126 = phi i32 [ %46, %49 ], [ %121, %115 ], !dbg !1100
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1140
  %127 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 4, !dbg !1160
  %128 = load i8, i8* %127, align 1, !dbg !1160, !tbaa !480
  %129 = zext i8 %128 to i32, !dbg !1160
  %130 = shl nsw i32 -1, %129, !dbg !1161
  %131 = xor i32 %130, -1, !dbg !1161
  %132 = sext i32 %131 to i64, !dbg !1163
  br label %133, !dbg !1163

; <label>:133:                                    ; preds = %171, %125
  %134 = phi %struct.Node* [ %15, %125 ], [ %173, %171 ], !dbg !1164
  %135 = phi i64 [ %132, %125 ], [ %172, %171 ]
  %136 = phi i32 [ 0, %125 ], [ %169, %171 ]
  %137 = phi i32 [ 0, %125 ], [ %168, %171 ]
  %138 = getelementptr inbounds %struct.Node, %struct.Node* %134, i64 %135, i32 0, i32 1, !dbg !1165
  %139 = load i32, i32* %138, align 8, !dbg !1165, !tbaa !486
  %140 = icmp eq i32 %139, 0, !dbg !1165
  br i1 %140, label %167, label %141, !dbg !1167

; <label>:141:                                    ; preds = %133
  %142 = getelementptr inbounds %struct.Node, %struct.Node* %134, i64 %135, i32 1, i32 0, i32 1, !dbg !1178
  %143 = load i32, i32* %142, align 8, !dbg !1178, !tbaa !397
  %144 = icmp eq i32 %143, 3, !dbg !1178
  br i1 %144, label %145, label %152, !dbg !1180

; <label>:145:                                    ; preds = %141
  %146 = getelementptr inbounds %struct.Node, %struct.Node* %134, i64 %135, i32 1, !dbg !1181
  %147 = bitcast %union.TKey* %146 to double*, !dbg !1182
  %148 = load double, double* %147, align 8, !dbg !1182, !tbaa !414
  %149 = fptosi double %148 to i32, !dbg !1186
  %150 = sitofp i32 %149 to double, !dbg !1188
  %151 = fcmp une double %148, %150, !dbg !1188
  br i1 %151, label %152, label %153

; <label>:152:                                    ; preds = %145, %141
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1189
  br label %163, !dbg !1190

; <label>:153:                                    ; preds = %145
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1189
  %154 = add i32 %149, -1, !dbg !1190
  %155 = icmp ult i32 %154, 67108864, !dbg !1190
  br i1 %155, label %156, label %163, !dbg !1190

; <label>:156:                                    ; preds = %153
  %157 = tail call i32 @luaO_log2(i32 %154) #5, !dbg !1193
  %158 = add nsw i32 %157, 1, !dbg !1193
  %159 = sext i32 %158 to i64, !dbg !1195
  %160 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 0, i64 %159, !dbg !1195
  %161 = load i32, i32* %160, align 4, !dbg !1196, !tbaa !808
  %162 = add nsw i32 %161, 1, !dbg !1196
  store i32 %162, i32* %160, align 4, !dbg !1196, !tbaa !808
  br label %163, !dbg !1197

; <label>:163:                                    ; preds = %156, %153, %152
  %164 = phi i32 [ 1, %156 ], [ 0, %153 ], [ 0, %152 ], !dbg !1198
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1199
  %165 = add nsw i32 %164, %137, !dbg !1200
  %166 = add nsw i32 %136, 1, !dbg !1201
  br label %167, !dbg !1202

; <label>:167:                                    ; preds = %163, %133
  %168 = phi i32 [ %137, %133 ], [ %165, %163 ], !dbg !1203
  %169 = phi i32 [ %136, %133 ], [ %166, %163 ], !dbg !1203
  %170 = icmp eq i64 %135, 0
  br i1 %170, label %174, label %171, !dbg !1163, !llvm.loop !1204

; <label>:171:                                    ; preds = %167
  %172 = add nsw i64 %135, -1, !dbg !1161
  %173 = load %struct.Node*, %struct.Node** %13, align 8, !dbg !1164, !tbaa !452
  br label %133, !dbg !1163

; <label>:174:                                    ; preds = %167
  %175 = add nsw i32 %168, %126, !dbg !1207
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1208
  %176 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i64 0, i32 1, !dbg !1214
  %177 = load i32, i32* %176, align 8, !dbg !1214, !tbaa !397
  %178 = icmp eq i32 %177, 3, !dbg !1214
  br i1 %178, label %179, label %185, !dbg !1215

; <label>:179:                                    ; preds = %174
  %180 = bitcast %struct.lua_TValue* %2 to double*, !dbg !1216
  %181 = load double, double* %180, align 8, !dbg !1216, !tbaa !414
  %182 = fptosi double %181 to i32, !dbg !1218
  %183 = sitofp i32 %182 to double, !dbg !1220
  %184 = fcmp une double %181, %183, !dbg !1220
  br i1 %184, label %185, label %186

; <label>:185:                                    ; preds = %179, %174
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1221
  br label %196, !dbg !1222

; <label>:186:                                    ; preds = %179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1221
  %187 = add i32 %182, -1, !dbg !1222
  %188 = icmp ult i32 %187, 67108864, !dbg !1222
  br i1 %188, label %189, label %196, !dbg !1222

; <label>:189:                                    ; preds = %186
  %190 = tail call i32 @luaO_log2(i32 %187) #5, !dbg !1224
  %191 = add nsw i32 %190, 1, !dbg !1224
  %192 = sext i32 %191 to i64, !dbg !1225
  %193 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 0, i64 %192, !dbg !1225
  %194 = load i32, i32* %193, align 4, !dbg !1226, !tbaa !808
  %195 = add nsw i32 %194, 1, !dbg !1226
  store i32 %195, i32* %193, align 4, !dbg !1226, !tbaa !808
  br label %196, !dbg !1227

; <label>:196:                                    ; preds = %189, %186, %185
  %197 = phi i32 [ 1, %189 ], [ 0, %186 ], [ 0, %185 ], !dbg !1228
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1229
  %198 = add nsw i32 %175, %197, !dbg !1230
  %199 = icmp sgt i32 %198, 0, !dbg !1249
  br i1 %199, label %200, label %225, !dbg !1252

; <label>:200:                                    ; preds = %196, %220
  %201 = phi i64 [ %221, %220 ], [ 0, %196 ]
  %202 = phi i32 [ %223, %220 ], [ 0, %196 ]
  %203 = phi i32 [ %218, %220 ], [ 0, %196 ]
  %204 = phi i32 [ %217, %220 ], [ 0, %196 ]
  %205 = phi i32 [ %216, %220 ], [ 0, %196 ]
  %206 = phi i32 [ %222, %220 ], [ 1, %196 ]
  %207 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 0, i64 %201, !dbg !1253
  %208 = load i32, i32* %207, align 4, !dbg !1253, !tbaa !808
  %209 = icmp sgt i32 %208, 0, !dbg !1256
  br i1 %209, label %210, label %215, !dbg !1257

; <label>:210:                                    ; preds = %200
  %211 = add nsw i32 %208, %205, !dbg !1258
  %212 = icmp sgt i32 %211, %202, !dbg !1260
  %213 = select i1 %212, i32 %211, i32 %204, !dbg !1262
  %214 = select i1 %212, i32 %206, i32 %203, !dbg !1262
  br label %215, !dbg !1262

; <label>:215:                                    ; preds = %210, %200
  %216 = phi i32 [ %205, %200 ], [ %211, %210 ], !dbg !1263
  %217 = phi i32 [ %204, %200 ], [ %213, %210 ], !dbg !1263
  %218 = phi i32 [ %203, %200 ], [ %214, %210 ], !dbg !1263
  %219 = icmp eq i32 %216, %198, !dbg !1264
  br i1 %219, label %225, label %220, !dbg !1266

; <label>:220:                                    ; preds = %215
  %221 = add nuw i64 %201, 1, !dbg !1267
  %222 = shl nsw i32 %206, 1, !dbg !1268
  %223 = and i32 %206, 2147483647, !dbg !1269
  %224 = icmp slt i32 %223, %198, !dbg !1249
  br i1 %224, label %200, label %225, !dbg !1252, !llvm.loop !1270

; <label>:225:                                    ; preds = %215, %220, %196
  %226 = phi i32 [ 0, %196 ], [ %217, %220 ], [ %217, %215 ], !dbg !1263
  %227 = phi i32 [ 0, %196 ], [ %218, %220 ], [ %218, %215 ], !dbg !1263
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1273
  %228 = add i32 %126, 1, !dbg !1275
  %229 = add i32 %228, %169, !dbg !1276
  %230 = sub i32 %229, %226, !dbg !1277
  tail call fastcc void @resize(%struct.lua_State* %0, %struct.Table* %1, i32 %227, i32 %230) #5, !dbg !1278
  call void @llvm.lifetime.end.p0i8(i64 108, i8* nonnull %25) #4, !dbg !1279
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1279
  %231 = tail call %struct.lua_TValue* @luaH_get(%struct.Table* %1, %struct.lua_TValue* %2) #5, !dbg !1284
  %232 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 3, !dbg !1286
  store i8 0, i8* %232, align 2, !dbg !1287, !tbaa !622
  %233 = icmp eq %struct.lua_TValue* %231, @luaO_nilobject_, !dbg !1288
  br i1 %233, label %234, label %265, !dbg !1289

; <label>:234:                                    ; preds = %225
  %235 = load i32, i32* %176, align 8, !dbg !1290, !tbaa !397
  switch i32 %235, label %242 [
    i32 0, label %236
    i32 3, label %237
  ], !dbg !1291

; <label>:236:                                    ; preds = %234
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0)) #5, !dbg !1292
  br label %242, !dbg !1292

; <label>:237:                                    ; preds = %234
  %238 = bitcast %struct.lua_TValue* %2 to double*, !dbg !1293
  %239 = load double, double* %238, align 8, !dbg !1293, !tbaa !414
  %240 = fcmp ord double %239, 0.000000e+00, !dbg !1293
  br i1 %240, label %242, label %241, !dbg !1294

; <label>:241:                                    ; preds = %237
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !1295
  br label %242, !dbg !1295

; <label>:242:                                    ; preds = %241, %237, %236, %234
  %243 = tail call fastcc %struct.lua_TValue* @newkey(%struct.lua_State* %0, %struct.Table* nonnull %1, %struct.lua_TValue* nonnull %2) #5, !dbg !1296
  br label %265, !dbg !1297

; <label>:244:                                    ; preds = %20
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1072
  %245 = getelementptr inbounds %struct.Node, %struct.Node* %5, i64 0, i32 1, !dbg !1299
  %246 = bitcast %union.TKey* %245 to %struct.lua_TValue*, !dbg !1299
  %247 = tail call fastcc %struct.Node* @mainposition(%struct.Table* nonnull %1, %struct.lua_TValue* nonnull %246) #6, !dbg !1300
  %248 = icmp eq %struct.Node* %247, %5, !dbg !1302
  br i1 %248, label %259, label %249, !dbg !1304

; <label>:249:                                    ; preds = %244, %249
  %250 = phi %struct.Node* [ %252, %249 ], [ %247, %244 ], !dbg !1305
  %251 = getelementptr inbounds %struct.Node, %struct.Node* %250, i64 0, i32 1, i32 0, i32 2, !dbg !1307
  %252 = load %struct.Node*, %struct.Node** %251, align 8, !dbg !1307, !tbaa !414
  %253 = icmp eq %struct.Node* %252, %5, !dbg !1308
  br i1 %253, label %254, label %249, !dbg !1309, !llvm.loop !1310

; <label>:254:                                    ; preds = %249
  %255 = getelementptr inbounds %struct.Node, %struct.Node* %250, i64 0, i32 1, i32 0, i32 2, !dbg !1307
  store %struct.Node* %18, %struct.Node** %255, align 8, !dbg !1312, !tbaa !414
  %256 = bitcast %struct.Node* %18 to i8*, !dbg !1313
  %257 = bitcast %struct.Node* %5 to i8*, !dbg !1313
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %256, i8* align 8 %257, i64 40, i1 false), !dbg !1313, !tbaa.struct !1314
  %258 = getelementptr inbounds %struct.Node, %struct.Node* %5, i64 0, i32 1, i32 0, i32 2, !dbg !1316
  store %struct.Node* null, %struct.Node** %258, align 8, !dbg !1317, !tbaa !414
  store i32 0, i32* %6, align 8, !dbg !1318, !tbaa !486
  br label %267, !dbg !1319

; <label>:259:                                    ; preds = %244
  %260 = getelementptr inbounds %struct.Node, %struct.Node* %5, i64 0, i32 1, i32 0, i32 2, !dbg !1320
  %261 = bitcast %struct.Node** %260 to i64*, !dbg !1320
  %262 = load i64, i64* %261, align 8, !dbg !1320, !tbaa !414
  %263 = getelementptr inbounds %struct.Node, %struct.Node* %17, i64 -1, i32 1, i32 0, i32 2, !dbg !1322
  %264 = bitcast %struct.Node** %263 to i64*, !dbg !1323
  store i64 %262, i64* %264, align 8, !dbg !1323, !tbaa !414
  store %struct.Node* %18, %struct.Node** %260, align 8, !dbg !1324, !tbaa !414
  br label %267

; <label>:265:                                    ; preds = %242, %225
  %266 = phi %struct.lua_TValue* [ %243, %242 ], [ %231, %225 ], !dbg !1325
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1326
  br label %293

; <label>:267:                                    ; preds = %254, %259, %3
  %268 = phi %struct.Node* [ %5, %3 ], [ %18, %259 ], [ %5, %254 ], !dbg !1050
  %269 = getelementptr inbounds %struct.Node, %struct.Node* %268, i64 0, i32 1, i32 0, !dbg !1327
  %270 = bitcast %struct.lua_TValue* %2 to i64*, !dbg !1328
  %271 = bitcast %struct.anon.0* %269 to i64*, !dbg !1328
  %272 = load i64, i64* %270, align 8, !dbg !1328
  store i64 %272, i64* %271, align 8, !dbg !1328
  %273 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i64 0, i32 1, !dbg !1329
  %274 = load i32, i32* %273, align 8, !dbg !1329, !tbaa !397
  %275 = getelementptr inbounds %struct.Node, %struct.Node* %268, i64 0, i32 1, i32 0, i32 1, !dbg !1330
  store i32 %274, i32* %275, align 8, !dbg !1331, !tbaa !414
  %276 = load i32, i32* %273, align 8, !dbg !1332, !tbaa !397
  %277 = icmp sgt i32 %276, 3, !dbg !1332
  br i1 %277, label %278, label %291, !dbg !1332

; <label>:278:                                    ; preds = %267
  %279 = bitcast %struct.lua_TValue* %2 to %struct.GCheader**, !dbg !1332
  %280 = load %struct.GCheader*, %struct.GCheader** %279, align 8, !dbg !1332, !tbaa !414
  %281 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %280, i64 0, i32 2, !dbg !1332
  %282 = load i8, i8* %281, align 1, !dbg !1332, !tbaa !414
  %283 = and i8 %282, 3, !dbg !1332
  %284 = icmp eq i8 %283, 0, !dbg !1332
  br i1 %284, label %291, label %285, !dbg !1332

; <label>:285:                                    ; preds = %278
  %286 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 2, !dbg !1332
  %287 = load i8, i8* %286, align 1, !dbg !1332, !tbaa !414
  %288 = and i8 %287, 4, !dbg !1332
  %289 = icmp eq i8 %288, 0, !dbg !1332
  br i1 %289, label %291, label %290, !dbg !1335

; <label>:290:                                    ; preds = %285
  tail call void @luaC_barrierback(%struct.lua_State* %0, %struct.Table* nonnull %1) #5, !dbg !1332
  br label %291, !dbg !1332

; <label>:291:                                    ; preds = %285, %278, %290, %267
  %292 = getelementptr inbounds %struct.Node, %struct.Node* %268, i64 0, i32 0, !dbg !1336
  br label %293, !dbg !1337

; <label>:293:                                    ; preds = %265, %291
  %294 = phi %struct.lua_TValue* [ %292, %291 ], [ %266, %265 ], !dbg !1338
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1339
  ret %struct.lua_TValue* %294, !dbg !1339
}

; Function Attrs: noredzone nounwind
define hidden %struct.lua_TValue* @luaH_setnum(%struct.lua_State*, %struct.Table*, i32) local_unnamed_addr #0 !dbg !1340 {
  %4 = alloca double, align 8
  %5 = alloca [2 x i32], align 4
  %6 = alloca %struct.lua_TValue, align 8
  %7 = add nsw i32 %2, -1, !dbg !1361
  %8 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 10, !dbg !1362
  %9 = load i32, i32* %8, align 8, !dbg !1362, !tbaa !425
  %10 = icmp ult i32 %7, %9, !dbg !1363
  br i1 %10, label %11, label %16, !dbg !1364

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 6, !dbg !1365
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %12, align 8, !dbg !1365, !tbaa !471
  %14 = sext i32 %7 to i64, !dbg !1366
  %15 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %13, i64 %14, !dbg !1366
  br label %61, !dbg !1367

; <label>:16:                                     ; preds = %3
  %17 = sitofp i32 %2 to double, !dbg !1368
  %18 = bitcast double* %4 to i8*, !dbg !1370
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #4, !dbg !1370
  store double %17, double* %4, align 8, !tbaa !795
  %19 = bitcast [2 x i32]* %5 to i8*, !dbg !1372
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #4, !dbg !1372
  %20 = icmp eq i32 %2, 0, !dbg !1373
  br i1 %20, label %21, label %24, !dbg !1374

; <label>:21:                                     ; preds = %16
  %22 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7, !dbg !1375
  %23 = load %struct.Node*, %struct.Node** %22, align 8, !dbg !1375, !tbaa !452
  br label %42, !dbg !1376

; <label>:24:                                     ; preds = %16
  %25 = call i8* @memcpy(i8* nonnull %19, i8* nonnull %18, i64 8) #5, !dbg !1377
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1, !dbg !1379
  %28 = load i32, i32* %27, align 4, !dbg !1379, !tbaa !808
  %29 = load i32, i32* %26, align 4, !dbg !1380, !tbaa !808
  %30 = add i32 %29, %28, !dbg !1380
  store i32 %30, i32* %26, align 4, !dbg !1380, !tbaa !808
  %31 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7, !dbg !1381
  %32 = load %struct.Node*, %struct.Node** %31, align 8, !dbg !1381, !tbaa !452
  %33 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 4, !dbg !1381
  %34 = load i8, i8* %33, align 1, !dbg !1381, !tbaa !480
  %35 = zext i8 %34 to i32, !dbg !1381
  %36 = shl nsw i32 -1, %35, !dbg !1381
  %37 = or i32 %36, 1, !dbg !1381
  %38 = xor i32 %37, -2, !dbg !1381
  %39 = urem i32 %30, %38, !dbg !1381
  %40 = zext i32 %39 to i64, !dbg !1381
  %41 = getelementptr inbounds %struct.Node, %struct.Node* %32, i64 %40, !dbg !1381
  br label %42, !dbg !1382

; <label>:42:                                     ; preds = %24, %21
  %43 = phi %struct.Node* [ %23, %21 ], [ %41, %24 ], !dbg !1383
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #4, !dbg !1384
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1384
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #4, !dbg !1384
  br label %44, !dbg !1386

; <label>:44:                                     ; preds = %56, %42
  %45 = phi %struct.Node* [ %43, %42 ], [ %58, %56 ], !dbg !1387
  %46 = getelementptr inbounds %struct.Node, %struct.Node* %45, i64 0, i32 1, i32 0, i32 1, !dbg !1388
  %47 = load i32, i32* %46, align 8, !dbg !1388, !tbaa !414
  %48 = icmp eq i32 %47, 3, !dbg !1388
  br i1 %48, label %49, label %56, !dbg !1389

; <label>:49:                                     ; preds = %44
  %50 = getelementptr inbounds %struct.Node, %struct.Node* %45, i64 0, i32 1, i32 0, i32 0, !dbg !1390
  %51 = bitcast %union.Value* %50 to double*, !dbg !1390
  %52 = load double, double* %51, align 8, !dbg !1390, !tbaa !414
  %53 = fcmp oeq double %52, %17, !dbg !1390
  br i1 %53, label %54, label %56, !dbg !1391

; <label>:54:                                     ; preds = %49
  %55 = getelementptr inbounds %struct.Node, %struct.Node* %45, i64 0, i32 0, !dbg !1392
  br label %61, !dbg !1393

; <label>:56:                                     ; preds = %49, %44
  %57 = getelementptr inbounds %struct.Node, %struct.Node* %45, i64 0, i32 1, i32 0, i32 2, !dbg !1394
  %58 = load %struct.Node*, %struct.Node** %57, align 8, !dbg !1394, !tbaa !414
  %59 = icmp eq %struct.Node* %58, null, !dbg !1395
  br i1 %59, label %60, label %44, !dbg !1395, !llvm.loop !827

; <label>:60:                                     ; preds = %56
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1396
  br label %66, !dbg !1398

; <label>:61:                                     ; preds = %11, %54
  %62 = phi %struct.lua_TValue* [ %15, %11 ], [ %55, %54 ], !dbg !1387
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1396
  %63 = icmp eq %struct.lua_TValue* %62, @luaO_nilobject_, !dbg !1399
  br i1 %63, label %64, label %72, !dbg !1398

; <label>:64:                                     ; preds = %61
  %65 = sitofp i32 %2 to double, !dbg !1400
  br label %66, !dbg !1398

; <label>:66:                                     ; preds = %64, %60
  %67 = phi double [ %65, %64 ], [ %17, %60 ], !dbg !1400
  %68 = bitcast %struct.lua_TValue* %6 to i8*, !dbg !1401
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %68) #4, !dbg !1401
  %69 = bitcast %struct.lua_TValue* %6 to double*, !dbg !1400
  store double %67, double* %69, align 8, !dbg !1400, !tbaa !414
  %70 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 0, i32 1, !dbg !1400
  store i32 3, i32* %70, align 8, !dbg !1400, !tbaa !397
  %71 = call fastcc %struct.lua_TValue* @newkey(%struct.lua_State* %0, %struct.Table* %1, %struct.lua_TValue* nonnull %6) #6, !dbg !1403
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %68) #4, !dbg !1404
  br label %72

; <label>:72:                                     ; preds = %61, %66
  %73 = phi %struct.lua_TValue* [ %71, %66 ], [ %62, %61 ], !dbg !1405
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1406
  ret %struct.lua_TValue* %73, !dbg !1406
}

; Function Attrs: noredzone nounwind
define hidden %struct.lua_TValue* @luaH_setstr(%struct.lua_State*, %struct.Table*, %union.TString*) local_unnamed_addr #0 !dbg !1407 {
  %4 = alloca %struct.lua_TValue, align 8
  %5 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7, !dbg !1426
  %6 = load %struct.Node*, %struct.Node** %5, align 8, !dbg !1426, !tbaa !452
  %7 = getelementptr inbounds %union.TString, %union.TString* %2, i64 0, i32 0, i32 4, !dbg !1426
  %8 = load i32, i32* %7, align 4, !dbg !1426, !tbaa !414
  %9 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 4, !dbg !1426
  %10 = load i8, i8* %9, align 1, !dbg !1426, !tbaa !480
  %11 = zext i8 %10 to i32, !dbg !1426
  %12 = shl nsw i32 -1, %11, !dbg !1426
  %13 = xor i32 %12, -1, !dbg !1426
  %14 = and i32 %8, %13, !dbg !1426
  %15 = sext i32 %14 to i64, !dbg !1426
  %16 = getelementptr inbounds %struct.Node, %struct.Node* %6, i64 %15, !dbg !1426
  br label %17, !dbg !1428

; <label>:17:                                     ; preds = %27, %3
  %18 = phi %struct.Node* [ %16, %3 ], [ %29, %27 ], !dbg !1429
  %19 = getelementptr inbounds %struct.Node, %struct.Node* %18, i64 0, i32 1, i32 0, i32 1, !dbg !1430
  %20 = load i32, i32* %19, align 8, !dbg !1430, !tbaa !414
  %21 = icmp eq i32 %20, 4, !dbg !1430
  br i1 %21, label %22, label %27, !dbg !1431

; <label>:22:                                     ; preds = %17
  %23 = getelementptr inbounds %struct.Node, %struct.Node* %18, i64 0, i32 1, i32 0, i32 0, i32 0, !dbg !1432
  %24 = bitcast %union.GCObject** %23 to %union.TString**, !dbg !1432
  %25 = load %union.TString*, %union.TString** %24, align 8, !dbg !1432, !tbaa !414
  %26 = icmp eq %union.TString* %25, %2, !dbg !1433
  br i1 %26, label %32, label %27, !dbg !1434

; <label>:27:                                     ; preds = %22, %17
  %28 = getelementptr inbounds %struct.Node, %struct.Node* %18, i64 0, i32 1, i32 0, i32 2, !dbg !1435
  %29 = load %struct.Node*, %struct.Node** %28, align 8, !dbg !1435, !tbaa !414
  %30 = icmp eq %struct.Node* %29, null, !dbg !1436
  br i1 %30, label %31, label %17, !dbg !1436, !llvm.loop !854

; <label>:31:                                     ; preds = %27
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1437
  br label %35, !dbg !1439

; <label>:32:                                     ; preds = %22
  %33 = getelementptr inbounds %struct.Node, %struct.Node* %18, i64 0, i32 0, !dbg !1440
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1437
  %34 = icmp eq %struct.lua_TValue* %33, @luaO_nilobject_, !dbg !1441
  br i1 %34, label %35, label %40, !dbg !1439

; <label>:35:                                     ; preds = %31, %32
  %36 = bitcast %struct.lua_TValue* %4 to i8*, !dbg !1442
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %36) #4, !dbg !1442
  %37 = bitcast %struct.lua_TValue* %4 to %union.TString**, !dbg !1443
  store %union.TString* %2, %union.TString** %37, align 8, !dbg !1443, !tbaa !414
  %38 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %4, i64 0, i32 1, !dbg !1443
  store i32 4, i32* %38, align 8, !dbg !1443, !tbaa !397
  %39 = call fastcc %struct.lua_TValue* @newkey(%struct.lua_State* %0, %struct.Table* %1, %struct.lua_TValue* nonnull %4) #6, !dbg !1445
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %36) #4, !dbg !1446
  br label %40

; <label>:40:                                     ; preds = %32, %35
  %41 = phi %struct.lua_TValue* [ %39, %35 ], [ %33, %32 ], !dbg !1447
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1448
  ret %struct.lua_TValue* %41, !dbg !1448
}

; Function Attrs: noredzone nounwind
define hidden i32 @luaH_getn(%struct.Table* nocapture readonly) local_unnamed_addr #0 !dbg !1449 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca [2 x i32], align 4
  %6 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 10, !dbg !1485
  %7 = load i32, i32* %6, align 8, !dbg !1485, !tbaa !425
  %8 = icmp eq i32 %7, 0, !dbg !1487
  br i1 %8, label %33, label %9, !dbg !1488

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 6, !dbg !1489
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !1489, !tbaa !471
  %12 = add i32 %7, -1, !dbg !1489
  %13 = zext i32 %12 to i64, !dbg !1489
  %14 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %11, i64 %13, i32 1, !dbg !1489
  %15 = load i32, i32* %14, align 8, !dbg !1489, !tbaa !397
  %16 = icmp eq i32 %15, 0, !dbg !1489
  br i1 %16, label %17, label %33, !dbg !1490

; <label>:17:                                     ; preds = %9
  %18 = icmp ugt i32 %7, 1, !dbg !1492
  br i1 %18, label %19, label %224, !dbg !1493

; <label>:19:                                     ; preds = %17, %19
  %20 = phi i32 [ %30, %19 ], [ 0, %17 ]
  %21 = phi i32 [ %29, %19 ], [ %7, %17 ]
  %22 = add i32 %20, %21, !dbg !1494
  %23 = lshr i32 %22, 1, !dbg !1495
  %24 = add nsw i32 %23, -1, !dbg !1497
  %25 = zext i32 %24 to i64, !dbg !1497
  %26 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %11, i64 %25, i32 1, !dbg !1497
  %27 = load i32, i32* %26, align 8, !dbg !1497, !tbaa !397
  %28 = icmp eq i32 %27, 0, !dbg !1497
  %29 = select i1 %28, i32 %23, i32 %21, !dbg !1499
  %30 = select i1 %28, i32 %20, i32 %23, !dbg !1499
  %31 = sub i32 %29, %30, !dbg !1500
  %32 = icmp ugt i32 %31, 1, !dbg !1492
  br i1 %32, label %19, label %224, !dbg !1493, !llvm.loop !1501

; <label>:33:                                     ; preds = %1, %9
  %34 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 7, !dbg !1503
  %35 = load %struct.Node*, %struct.Node** %34, align 8, !dbg !1503, !tbaa !452
  %36 = icmp eq %struct.Node* %35, @dummynode_, !dbg !1504
  br i1 %36, label %224, label %37, !dbg !1505

; <label>:37:                                     ; preds = %33
  %38 = add i32 %7, 1, !dbg !1509
  %39 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 6
  %40 = bitcast double* %4 to i8*
  %41 = bitcast [2 x i32]* %5 to i8*
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %44 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 4
  br label %45, !dbg !1510

; <label>:45:                                     ; preds = %106, %37
  %46 = phi %struct.Node* [ %35, %37 ], [ %93, %106 ]
  %47 = phi i32 [ %7, %37 ], [ %107, %106 ], !dbg !1511
  %48 = phi i32 [ %38, %37 ], [ %104, %106 ], !dbg !1512
  %49 = phi i32 [ %7, %37 ], [ %48, %106 ], !dbg !1512
  %50 = add nsw i32 %48, -1, !dbg !1515
  %51 = icmp ult i32 %50, %47, !dbg !1516
  br i1 %51, label %52, label %56, !dbg !1517

; <label>:52:                                     ; preds = %45
  %53 = load %struct.lua_TValue*, %struct.lua_TValue** %39, align 8, !dbg !1518, !tbaa !471
  %54 = sext i32 %50 to i64, !dbg !1519
  %55 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %53, i64 %54, !dbg !1519
  br label %92, !dbg !1520

; <label>:56:                                     ; preds = %45
  %57 = sitofp i32 %48 to double, !dbg !1521
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %40) #4, !dbg !1523
  store double %57, double* %4, align 8, !tbaa !795
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %41) #4, !dbg !1525
  %58 = icmp eq i32 %48, 0, !dbg !1526
  br i1 %58, label %73, label %59, !dbg !1527

; <label>:59:                                     ; preds = %56
  %60 = call i8* @memcpy(i8* nonnull %41, i8* nonnull %40, i64 8) #5, !dbg !1528
  %61 = load i32, i32* %43, align 4, !dbg !1530, !tbaa !808
  %62 = load i32, i32* %42, align 4, !dbg !1531, !tbaa !808
  %63 = add i32 %62, %61, !dbg !1531
  store i32 %63, i32* %42, align 4, !dbg !1531, !tbaa !808
  %64 = load %struct.Node*, %struct.Node** %34, align 8, !dbg !1532, !tbaa !452
  %65 = load i8, i8* %44, align 1, !dbg !1532, !tbaa !480
  %66 = zext i8 %65 to i32, !dbg !1532
  %67 = shl nsw i32 -1, %66, !dbg !1532
  %68 = or i32 %67, 1, !dbg !1532
  %69 = xor i32 %68, -2, !dbg !1532
  %70 = urem i32 %63, %69, !dbg !1532
  %71 = zext i32 %70 to i64, !dbg !1532
  %72 = getelementptr inbounds %struct.Node, %struct.Node* %64, i64 %71, !dbg !1532
  br label %73, !dbg !1533

; <label>:73:                                     ; preds = %56, %59
  %74 = phi %struct.Node* [ %64, %59 ], [ %46, %56 ]
  %75 = phi %struct.Node* [ %72, %59 ], [ %46, %56 ], !dbg !1534
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %41) #4, !dbg !1535
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1535
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %40) #4, !dbg !1535
  br label %76, !dbg !1537

; <label>:76:                                     ; preds = %88, %73
  %77 = phi %struct.Node* [ %75, %73 ], [ %90, %88 ], !dbg !1538
  %78 = getelementptr inbounds %struct.Node, %struct.Node* %77, i64 0, i32 1, i32 0, i32 1, !dbg !1539
  %79 = load i32, i32* %78, align 8, !dbg !1539, !tbaa !414
  %80 = icmp eq i32 %79, 3, !dbg !1539
  br i1 %80, label %81, label %88, !dbg !1540

; <label>:81:                                     ; preds = %76
  %82 = getelementptr inbounds %struct.Node, %struct.Node* %77, i64 0, i32 1, i32 0, i32 0, !dbg !1541
  %83 = bitcast %union.Value* %82 to double*, !dbg !1541
  %84 = load double, double* %83, align 8, !dbg !1541, !tbaa !414
  %85 = fcmp oeq double %84, %57, !dbg !1541
  br i1 %85, label %86, label %88, !dbg !1542

; <label>:86:                                     ; preds = %81
  %87 = getelementptr inbounds %struct.Node, %struct.Node* %77, i64 0, i32 0, !dbg !1543
  br label %92, !dbg !1544

; <label>:88:                                     ; preds = %81, %76
  %89 = getelementptr inbounds %struct.Node, %struct.Node* %77, i64 0, i32 1, i32 0, i32 2, !dbg !1545
  %90 = load %struct.Node*, %struct.Node** %89, align 8, !dbg !1545, !tbaa !414
  %91 = icmp eq %struct.Node* %90, null, !dbg !1546
  br i1 %91, label %92, label %76, !dbg !1546, !llvm.loop !827

; <label>:92:                                     ; preds = %88, %86, %52
  %93 = phi %struct.Node* [ %46, %52 ], [ %74, %86 ], [ %74, %88 ]
  %94 = phi %struct.lua_TValue* [ %55, %52 ], [ %87, %86 ], [ @luaO_nilobject_, %88 ], !dbg !1538
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1547
  %95 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %94, i64 0, i32 1, !dbg !1548
  %96 = load i32, i32* %95, align 8, !dbg !1548, !tbaa !397
  %97 = icmp eq i32 %96, 0, !dbg !1548
  br i1 %97, label %98, label %103, !dbg !1510

; <label>:98:                                     ; preds = %92
  %99 = sub i32 %48, %49, !dbg !1549
  %100 = icmp ugt i32 %99, 1, !dbg !1550
  br i1 %100, label %101, label %222, !dbg !1551

; <label>:101:                                    ; preds = %98
  %102 = bitcast double* %2 to i8*
  br label %163, !dbg !1551

; <label>:103:                                    ; preds = %92
  %104 = shl i32 %48, 1, !dbg !1552
  %105 = icmp ugt i32 %104, 2147483645, !dbg !1553
  br i1 %105, label %108, label %106, !dbg !1554, !llvm.loop !1555

; <label>:106:                                    ; preds = %103
  %107 = load i32, i32* %6, align 8, !dbg !1511, !tbaa !425
  br label %45, !dbg !1554

; <label>:108:                                    ; preds = %103
  %109 = bitcast double* %3 to i8*
  br label %110, !dbg !1558

; <label>:110:                                    ; preds = %156, %108
  %111 = phi %struct.Node* [ %157, %156 ], [ %93, %108 ]
  %112 = phi i32 [ %162, %156 ], [ 1, %108 ], !dbg !1559
  %113 = add i32 %112, -1, !dbg !1558
  %114 = load i32, i32* %6, align 8, !dbg !1562, !tbaa !425
  %115 = icmp ult i32 %113, %114, !dbg !1563
  br i1 %115, label %116, label %120, !dbg !1564

; <label>:116:                                    ; preds = %110
  %117 = load %struct.lua_TValue*, %struct.lua_TValue** %39, align 8, !dbg !1565, !tbaa !471
  %118 = sext i32 %113 to i64, !dbg !1566
  %119 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %117, i64 %118, !dbg !1566
  br label %156, !dbg !1567

; <label>:120:                                    ; preds = %110
  %121 = sitofp i32 %112 to double, !dbg !1568
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %109) #4, !dbg !1570
  store double %121, double* %3, align 8, !tbaa !795
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %41) #4, !dbg !1572
  %122 = icmp eq i32 %112, 0, !dbg !1573
  br i1 %122, label %137, label %123, !dbg !1574

; <label>:123:                                    ; preds = %120
  %124 = call i8* @memcpy(i8* nonnull %41, i8* nonnull %109, i64 8) #5, !dbg !1575
  %125 = load i32, i32* %43, align 4, !dbg !1577, !tbaa !808
  %126 = load i32, i32* %42, align 4, !dbg !1578, !tbaa !808
  %127 = add i32 %126, %125, !dbg !1578
  store i32 %127, i32* %42, align 4, !dbg !1578, !tbaa !808
  %128 = load %struct.Node*, %struct.Node** %34, align 8, !dbg !1579, !tbaa !452
  %129 = load i8, i8* %44, align 1, !dbg !1579, !tbaa !480
  %130 = zext i8 %129 to i32, !dbg !1579
  %131 = shl nsw i32 -1, %130, !dbg !1579
  %132 = or i32 %131, 1, !dbg !1579
  %133 = xor i32 %132, -2, !dbg !1579
  %134 = urem i32 %127, %133, !dbg !1579
  %135 = zext i32 %134 to i64, !dbg !1579
  %136 = getelementptr inbounds %struct.Node, %struct.Node* %128, i64 %135, !dbg !1579
  br label %137, !dbg !1580

; <label>:137:                                    ; preds = %120, %123
  %138 = phi %struct.Node* [ %128, %123 ], [ %111, %120 ]
  %139 = phi %struct.Node* [ %136, %123 ], [ %111, %120 ], !dbg !1581
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %41) #4, !dbg !1582
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1582
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %109) #4, !dbg !1582
  br label %140, !dbg !1584

; <label>:140:                                    ; preds = %152, %137
  %141 = phi %struct.Node* [ %139, %137 ], [ %154, %152 ], !dbg !1585
  %142 = getelementptr inbounds %struct.Node, %struct.Node* %141, i64 0, i32 1, i32 0, i32 1, !dbg !1586
  %143 = load i32, i32* %142, align 8, !dbg !1586, !tbaa !414
  %144 = icmp eq i32 %143, 3, !dbg !1586
  br i1 %144, label %145, label %152, !dbg !1587

; <label>:145:                                    ; preds = %140
  %146 = getelementptr inbounds %struct.Node, %struct.Node* %141, i64 0, i32 1, i32 0, i32 0, !dbg !1588
  %147 = bitcast %union.Value* %146 to double*, !dbg !1588
  %148 = load double, double* %147, align 8, !dbg !1588, !tbaa !414
  %149 = fcmp oeq double %148, %121, !dbg !1588
  br i1 %149, label %150, label %152, !dbg !1589

; <label>:150:                                    ; preds = %145
  %151 = getelementptr inbounds %struct.Node, %struct.Node* %141, i64 0, i32 0, !dbg !1590
  br label %156, !dbg !1591

; <label>:152:                                    ; preds = %145, %140
  %153 = getelementptr inbounds %struct.Node, %struct.Node* %141, i64 0, i32 1, i32 0, i32 2, !dbg !1592
  %154 = load %struct.Node*, %struct.Node** %153, align 8, !dbg !1592, !tbaa !414
  %155 = icmp eq %struct.Node* %154, null, !dbg !1593
  br i1 %155, label %156, label %140, !dbg !1593, !llvm.loop !827

; <label>:156:                                    ; preds = %152, %150, %116
  %157 = phi %struct.Node* [ %111, %116 ], [ %138, %150 ], [ %138, %152 ]
  %158 = phi %struct.lua_TValue* [ %119, %116 ], [ %151, %150 ], [ @luaO_nilobject_, %152 ], !dbg !1585
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1594
  %159 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %158, i64 0, i32 1, !dbg !1595
  %160 = load i32, i32* %159, align 8, !dbg !1595, !tbaa !397
  %161 = icmp eq i32 %160, 0, !dbg !1595
  %162 = add i32 %112, 1, !dbg !1596
  br i1 %161, label %222, label %110, !dbg !1597, !llvm.loop !1598

; <label>:163:                                    ; preds = %212, %101
  %164 = phi %struct.Node* [ %93, %101 ], [ %213, %212 ]
  %165 = phi i32 [ %49, %101 ], [ %219, %212 ]
  %166 = phi i32 [ %48, %101 ], [ %218, %212 ]
  %167 = add i32 %166, %165, !dbg !1601
  %168 = lshr i32 %167, 1, !dbg !1602
  %169 = add nsw i32 %168, -1, !dbg !1606
  %170 = load i32, i32* %6, align 8, !dbg !1607, !tbaa !425
  %171 = icmp ult i32 %169, %170, !dbg !1608
  br i1 %171, label %172, label %176, !dbg !1609

; <label>:172:                                    ; preds = %163
  %173 = load %struct.lua_TValue*, %struct.lua_TValue** %39, align 8, !dbg !1610, !tbaa !471
  %174 = sext i32 %169 to i64, !dbg !1611
  %175 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %173, i64 %174, !dbg !1611
  br label %212, !dbg !1612

; <label>:176:                                    ; preds = %163
  %177 = sitofp i32 %168 to double, !dbg !1613
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %102) #4, !dbg !1615
  store double %177, double* %2, align 8, !tbaa !795
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %41) #4, !dbg !1617
  %178 = icmp eq i32 %168, 0, !dbg !1618
  br i1 %178, label %193, label %179, !dbg !1619

; <label>:179:                                    ; preds = %176
  %180 = call i8* @memcpy(i8* nonnull %41, i8* nonnull %102, i64 8) #5, !dbg !1620
  %181 = load i32, i32* %43, align 4, !dbg !1622, !tbaa !808
  %182 = load i32, i32* %42, align 4, !dbg !1623, !tbaa !808
  %183 = add i32 %182, %181, !dbg !1623
  store i32 %183, i32* %42, align 4, !dbg !1623, !tbaa !808
  %184 = load %struct.Node*, %struct.Node** %34, align 8, !dbg !1624, !tbaa !452
  %185 = load i8, i8* %44, align 1, !dbg !1624, !tbaa !480
  %186 = zext i8 %185 to i32, !dbg !1624
  %187 = shl nsw i32 -1, %186, !dbg !1624
  %188 = or i32 %187, 1, !dbg !1624
  %189 = xor i32 %188, -2, !dbg !1624
  %190 = urem i32 %183, %189, !dbg !1624
  %191 = zext i32 %190 to i64, !dbg !1624
  %192 = getelementptr inbounds %struct.Node, %struct.Node* %184, i64 %191, !dbg !1624
  br label %193, !dbg !1625

; <label>:193:                                    ; preds = %176, %179
  %194 = phi %struct.Node* [ %184, %179 ], [ %164, %176 ]
  %195 = phi %struct.Node* [ %192, %179 ], [ %164, %176 ], !dbg !1626
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %41) #4, !dbg !1627
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1627
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %102) #4, !dbg !1627
  br label %196, !dbg !1629

; <label>:196:                                    ; preds = %208, %193
  %197 = phi %struct.Node* [ %195, %193 ], [ %210, %208 ], !dbg !1630
  %198 = getelementptr inbounds %struct.Node, %struct.Node* %197, i64 0, i32 1, i32 0, i32 1, !dbg !1631
  %199 = load i32, i32* %198, align 8, !dbg !1631, !tbaa !414
  %200 = icmp eq i32 %199, 3, !dbg !1631
  br i1 %200, label %201, label %208, !dbg !1632

; <label>:201:                                    ; preds = %196
  %202 = getelementptr inbounds %struct.Node, %struct.Node* %197, i64 0, i32 1, i32 0, i32 0, !dbg !1633
  %203 = bitcast %union.Value* %202 to double*, !dbg !1633
  %204 = load double, double* %203, align 8, !dbg !1633, !tbaa !414
  %205 = fcmp oeq double %204, %177, !dbg !1633
  br i1 %205, label %206, label %208, !dbg !1634

; <label>:206:                                    ; preds = %201
  %207 = getelementptr inbounds %struct.Node, %struct.Node* %197, i64 0, i32 0, !dbg !1635
  br label %212, !dbg !1636

; <label>:208:                                    ; preds = %201, %196
  %209 = getelementptr inbounds %struct.Node, %struct.Node* %197, i64 0, i32 1, i32 0, i32 2, !dbg !1637
  %210 = load %struct.Node*, %struct.Node** %209, align 8, !dbg !1637, !tbaa !414
  %211 = icmp eq %struct.Node* %210, null, !dbg !1638
  br i1 %211, label %212, label %196, !dbg !1638, !llvm.loop !827

; <label>:212:                                    ; preds = %208, %206, %172
  %213 = phi %struct.Node* [ %164, %172 ], [ %194, %206 ], [ %194, %208 ]
  %214 = phi %struct.lua_TValue* [ %175, %172 ], [ %207, %206 ], [ @luaO_nilobject_, %208 ], !dbg !1630
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1639
  %215 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %214, i64 0, i32 1, !dbg !1640
  %216 = load i32, i32* %215, align 8, !dbg !1640, !tbaa !397
  %217 = icmp eq i32 %216, 0, !dbg !1640
  %218 = select i1 %217, i32 %168, i32 %166, !dbg !1641
  %219 = select i1 %217, i32 %165, i32 %168, !dbg !1641
  %220 = sub i32 %218, %219, !dbg !1549
  %221 = icmp ugt i32 %220, 1, !dbg !1550
  br i1 %221, label %163, label %222, !dbg !1551, !llvm.loop !1642

; <label>:222:                                    ; preds = %156, %212, %98
  %223 = phi i32 [ %49, %98 ], [ %219, %212 ], [ %113, %156 ], !dbg !1645
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1646
  br label %224, !dbg !1647

; <label>:224:                                    ; preds = %19, %17, %33, %222
  %225 = phi i32 [ %223, %222 ], [ %7, %33 ], [ 0, %17 ], [ %30, %19 ], !dbg !1648
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1649
  ret i32 %225, !dbg !1649
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
!403 = !DILocation(line: 122, column: 20, scope: !404, inlinedAt: !413)
!404 = distinct !DILexicalBlock(scope: !405, file: !3, line: 121, column: 24)
!405 = distinct !DILexicalBlock(scope: !406, file: !3, line: 121, column: 7)
!406 = distinct !DISubprogram(name: "arrayindex", scope: !3, file: !3, line: 120, type: !407, isLocal: true, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !409)
!407 = !DISubroutineType(types: !408)
!408 = !{!90, !365}
!409 = !{!410, !411, !412}
!410 = !DILocalVariable(name: "key", arg: 1, scope: !406, file: !3, line: 120, type: !365)
!411 = !DILocalVariable(name: "n", scope: !404, file: !3, line: 122, type: !6)
!412 = !DILocalVariable(name: "k", scope: !404, file: !3, line: 123, type: !90)
!413 = distinct !DILocation(line: 140, column: 7, scope: !383, inlinedAt: !392)
!414 = !{!399, !399, i64 0}
!415 = !DILocation(line: 122, column: 16, scope: !404, inlinedAt: !413)
!416 = !DILocation(line: 124, column: 5, scope: !404, inlinedAt: !413)
!417 = !DILocation(line: 123, column: 9, scope: !404, inlinedAt: !413)
!418 = !DILocation(line: 125, column: 9, scope: !419, inlinedAt: !413)
!419 = distinct !DILexicalBlock(scope: !404, file: !3, line: 125, column: 9)
!420 = !DILocation(line: 129, column: 1, scope: !406, inlinedAt: !413)
!421 = !DILocation(line: 138, column: 7, scope: !383, inlinedAt: !392)
!422 = !DILocation(line: 141, column: 13, scope: !390, inlinedAt: !392)
!423 = !DILocation(line: 141, column: 9, scope: !390, inlinedAt: !392)
!424 = !DILocation(line: 141, column: 24, scope: !390, inlinedAt: !392)
!425 = !{!426, !401, i64 56}
!426 = !{!"Table", !427, i64 0, !399, i64 8, !399, i64 9, !399, i64 10, !399, i64 11, !427, i64 16, !427, i64 24, !427, i64 32, !427, i64 40, !427, i64 48, !401, i64 56}
!427 = !{!"any pointer", !399, i64 0}
!428 = !DILocation(line: 141, column: 18, scope: !390, inlinedAt: !392)
!429 = !DILocation(line: 141, column: 7, scope: !383, inlinedAt: !392)
!430 = !DILocation(line: 142, column: 13, scope: !390, inlinedAt: !392)
!431 = !DILocation(line: 142, column: 5, scope: !390, inlinedAt: !392)
!432 = !DILocation(line: 144, column: 15, scope: !389, inlinedAt: !392)
!433 = !DILocation(line: 144, column: 11, scope: !389, inlinedAt: !392)
!434 = !DILocation(line: 145, column: 5, scope: !389, inlinedAt: !392)
!435 = !DILocation(line: 0, scope: !436, inlinedAt: !392)
!436 = distinct !DILexicalBlock(scope: !437, file: !3, line: 147, column: 11)
!437 = distinct !DILexicalBlock(scope: !389, file: !3, line: 145, column: 8)
!438 = !DILocation(line: 147, column: 28, scope: !436, inlinedAt: !392)
!439 = !DILocation(line: 147, column: 11, scope: !436, inlinedAt: !392)
!440 = !DILocation(line: 147, column: 46, scope: !436, inlinedAt: !392)
!441 = !DILocation(line: 148, column: 14, scope: !436, inlinedAt: !392)
!442 = !DILocation(line: 148, column: 29, scope: !436, inlinedAt: !392)
!443 = !DILocation(line: 148, column: 45, scope: !436, inlinedAt: !392)
!444 = !DILocation(line: 148, column: 48, scope: !436, inlinedAt: !392)
!445 = !DILocation(line: 148, column: 67, scope: !436, inlinedAt: !392)
!446 = !DILocation(line: 149, column: 14, scope: !436, inlinedAt: !392)
!447 = !DILocation(line: 149, column: 34, scope: !436, inlinedAt: !392)
!448 = !DILocation(line: 149, column: 31, scope: !436, inlinedAt: !392)
!449 = !DILocation(line: 147, column: 11, scope: !437, inlinedAt: !392)
!450 = !DILocation(line: 150, column: 13, scope: !451, inlinedAt: !392)
!451 = distinct !DILexicalBlock(scope: !436, file: !3, line: 149, column: 49)
!452 = !{!426, !427, i64 32}
!453 = !DILocation(line: 152, column: 23, scope: !451, inlinedAt: !392)
!454 = !DILocation(line: 152, column: 18, scope: !451, inlinedAt: !392)
!455 = !DILocation(line: 152, column: 9, scope: !451, inlinedAt: !392)
!456 = !DILocation(line: 154, column: 16, scope: !436, inlinedAt: !392)
!457 = !DILocation(line: 155, column: 5, scope: !437, inlinedAt: !392)
!458 = distinct !{!458, !459, !460}
!459 = !DILocation(line: 145, column: 5, scope: !389)
!460 = !DILocation(line: 155, column: 15, scope: !389)
!461 = !DILocation(line: 156, column: 5, scope: !389, inlinedAt: !392)
!462 = !DILocation(line: 157, column: 5, scope: !389, inlinedAt: !392)
!463 = !DILocation(line: 0, scope: !451, inlinedAt: !392)
!464 = !DILocation(line: 159, column: 1, scope: !383, inlinedAt: !392)
!465 = !DILocation(line: 163, column: 7, scope: !348)
!466 = !DILocation(line: 164, column: 8, scope: !362)
!467 = !DILocation(line: 0, scope: !361)
!468 = !DILocation(line: 164, column: 15, scope: !361)
!469 = !DILocation(line: 164, column: 3, scope: !362)
!470 = !DILocation(line: 165, column: 10, scope: !359)
!471 = !{!426, !427, i64 24}
!472 = !DILocation(line: 165, column: 9, scope: !360)
!473 = distinct !{!473, !469, !474}
!474 = !DILocation(line: 170, column: 3, scope: !362)
!475 = !DILocation(line: 166, column: 7, scope: !357)
!476 = !DILocation(line: 167, column: 7, scope: !364)
!477 = !DILocation(line: 168, column: 7, scope: !358)
!478 = !DILocation(line: 171, column: 10, scope: !374)
!479 = !DILocation(line: 171, column: 31, scope: !373)
!480 = !{!426, !399, i64 11}
!481 = !DILocation(line: 171, column: 29, scope: !373)
!482 = !DILocation(line: 171, column: 3, scope: !374)
!483 = distinct !{!483, !482, !484}
!484 = !DILocation(line: 177, column: 3, scope: !374)
!485 = !DILocation(line: 172, column: 10, scope: !371)
!486 = !{!487, !401, i64 8}
!487 = !{!"Node", !398, i64 0, !399, i64 16}
!488 = !DILocation(line: 171, column: 45, scope: !373)
!489 = !DILocation(line: 172, column: 9, scope: !372)
!490 = !DILocation(line: 173, column: 7, scope: !369)
!491 = !DILocation(line: 174, column: 7, scope: !377)
!492 = !DILocation(line: 175, column: 7, scope: !370)
!493 = !DILocation(line: 0, scope: !348)
!494 = !DILocation(line: 179, column: 1, scope: !348)
!495 = distinct !DISubprogram(name: "luaH_resizearray", scope: !3, file: !3, line: 327, type: !496, isLocal: false, isDefinition: true, scopeLine: 327, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !498)
!496 = !DISubroutineType(types: !497)
!497 = !{null, !91, !9, !90}
!498 = !{!499, !500, !501, !502}
!499 = !DILocalVariable(name: "L", arg: 1, scope: !495, file: !3, line: 327, type: !91)
!500 = !DILocalVariable(name: "t", arg: 2, scope: !495, file: !3, line: 327, type: !9)
!501 = !DILocalVariable(name: "nasize", arg: 3, scope: !495, file: !3, line: 327, type: !90)
!502 = !DILocalVariable(name: "nsize", scope: !495, file: !3, line: 328, type: !90)
!503 = !DILocation(line: 327, column: 35, scope: !495)
!504 = !DILocation(line: 327, column: 45, scope: !495)
!505 = !DILocation(line: 327, column: 52, scope: !495)
!506 = !DILocation(line: 328, column: 19, scope: !495)
!507 = !DILocation(line: 328, column: 24, scope: !495)
!508 = !DILocation(line: 328, column: 15, scope: !495)
!509 = !DILocation(line: 328, column: 44, scope: !495)
!510 = !DILocation(line: 328, column: 7, scope: !495)
!511 = !DILocation(line: 329, column: 3, scope: !495)
!512 = !DILocation(line: 330, column: 1, scope: !495)
!513 = distinct !DISubprogram(name: "resize", scope: !3, file: !3, line: 297, type: !514, isLocal: true, isDefinition: true, scopeLine: 297, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !516)
!514 = !DISubroutineType(types: !515)
!515 = !{null, !91, !9, !90, !90}
!516 = !{!517, !518, !519, !520, !521, !522, !523, !524, !525, !533, !534, !538, !541}
!517 = !DILocalVariable(name: "L", arg: 1, scope: !513, file: !3, line: 297, type: !91)
!518 = !DILocalVariable(name: "t", arg: 2, scope: !513, file: !3, line: 297, type: !9)
!519 = !DILocalVariable(name: "nasize", arg: 3, scope: !513, file: !3, line: 297, type: !90)
!520 = !DILocalVariable(name: "nhsize", arg: 4, scope: !513, file: !3, line: 297, type: !90)
!521 = !DILocalVariable(name: "i", scope: !513, file: !3, line: 298, type: !90)
!522 = !DILocalVariable(name: "oldasize", scope: !513, file: !3, line: 299, type: !90)
!523 = !DILocalVariable(name: "oldhsize", scope: !513, file: !3, line: 300, type: !90)
!524 = !DILocalVariable(name: "nold", scope: !513, file: !3, line: 301, type: !322)
!525 = !DILocalVariable(name: "o2", scope: !526, file: !3, line: 311, type: !365)
!526 = distinct !DILexicalBlock(scope: !527, file: !3, line: 311, column: 9)
!527 = distinct !DILexicalBlock(scope: !528, file: !3, line: 310, column: 11)
!528 = distinct !DILexicalBlock(scope: !529, file: !3, line: 309, column: 37)
!529 = distinct !DILexicalBlock(scope: !530, file: !3, line: 309, column: 5)
!530 = distinct !DILexicalBlock(scope: !531, file: !3, line: 309, column: 5)
!531 = distinct !DILexicalBlock(scope: !532, file: !3, line: 306, column: 26)
!532 = distinct !DILexicalBlock(scope: !513, file: !3, line: 306, column: 7)
!533 = !DILocalVariable(name: "o1", scope: !526, file: !3, line: 311, type: !101)
!534 = !DILocalVariable(name: "old", scope: !535, file: !3, line: 318, type: !322)
!535 = distinct !DILexicalBlock(scope: !536, file: !3, line: 317, column: 46)
!536 = distinct !DILexicalBlock(scope: !537, file: !3, line: 317, column: 3)
!537 = distinct !DILexicalBlock(scope: !513, file: !3, line: 317, column: 3)
!538 = !DILocalVariable(name: "o2", scope: !539, file: !3, line: 320, type: !365)
!539 = distinct !DILexicalBlock(scope: !540, file: !3, line: 320, column: 7)
!540 = distinct !DILexicalBlock(scope: !535, file: !3, line: 319, column: 9)
!541 = !DILocalVariable(name: "o1", scope: !539, file: !3, line: 320, type: !101)
!542 = !DILocation(line: 297, column: 32, scope: !513)
!543 = !DILocation(line: 297, column: 42, scope: !513)
!544 = !DILocation(line: 297, column: 49, scope: !513)
!545 = !DILocation(line: 297, column: 61, scope: !513)
!546 = !DILocation(line: 299, column: 21, scope: !513)
!547 = !DILocation(line: 299, column: 7, scope: !513)
!548 = !DILocation(line: 300, column: 21, scope: !513)
!549 = !DILocation(line: 300, column: 18, scope: !513)
!550 = !DILocation(line: 300, column: 7, scope: !513)
!551 = !DILocation(line: 301, column: 19, scope: !513)
!552 = !DILocation(line: 301, column: 9, scope: !513)
!553 = !DILocation(line: 302, column: 14, scope: !554)
!554 = distinct !DILexicalBlock(scope: !513, file: !3, line: 302, column: 7)
!555 = !DILocation(line: 302, column: 7, scope: !513)
!556 = !DILocalVariable(name: "L", arg: 1, scope: !557, file: !3, line: 263, type: !91)
!557 = distinct !DISubprogram(name: "setarrayvector", scope: !3, file: !3, line: 263, type: !496, isLocal: true, isDefinition: true, scopeLine: 263, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !558)
!558 = !{!556, !559, !560, !561}
!559 = !DILocalVariable(name: "t", arg: 2, scope: !557, file: !3, line: 263, type: !9)
!560 = !DILocalVariable(name: "size", arg: 3, scope: !557, file: !3, line: 263, type: !90)
!561 = !DILocalVariable(name: "i", scope: !557, file: !3, line: 264, type: !90)
!562 = !DILocation(line: 263, column: 40, scope: !557, inlinedAt: !563)
!563 = distinct !DILocation(line: 303, column: 5, scope: !554)
!564 = !DILocation(line: 263, column: 50, scope: !557, inlinedAt: !563)
!565 = !DILocation(line: 263, column: 57, scope: !557, inlinedAt: !563)
!566 = !DILocation(line: 265, column: 3, scope: !557, inlinedAt: !563)
!567 = !DILocation(line: 266, column: 13, scope: !568, inlinedAt: !563)
!568 = distinct !DILexicalBlock(scope: !557, file: !3, line: 266, column: 3)
!569 = !DILocation(line: 264, column: 7, scope: !557, inlinedAt: !563)
!570 = !DILocation(line: 266, column: 25, scope: !571, inlinedAt: !563)
!571 = distinct !DILexicalBlock(scope: !568, file: !3, line: 266, column: 3)
!572 = !DILocation(line: 266, column: 3, scope: !568, inlinedAt: !563)
!573 = !DILocation(line: 267, column: 6, scope: !571, inlinedAt: !563)
!574 = !DILocation(line: 266, column: 33, scope: !571, inlinedAt: !563)
!575 = distinct !{!575, !576}
!576 = !{!"llvm.loop.unroll.disable"}
!577 = distinct !{!577, !578, !579}
!578 = !DILocation(line: 266, column: 3, scope: !568)
!579 = !DILocation(line: 267, column: 6, scope: !568)
!580 = !DILocation(line: 268, column: 16, scope: !557, inlinedAt: !563)
!581 = !DILocation(line: 269, column: 1, scope: !557, inlinedAt: !563)
!582 = !DILocation(line: 303, column: 5, scope: !554)
!583 = !DILocation(line: 305, column: 3, scope: !513)
!584 = !DILocation(line: 306, column: 14, scope: !532)
!585 = !DILocation(line: 306, column: 7, scope: !513)
!586 = !DILocation(line: 307, column: 18, scope: !531)
!587 = !DILocation(line: 298, column: 7, scope: !513)
!588 = !DILocation(line: 309, column: 5, scope: !530)
!589 = !DILocation(line: 310, column: 12, scope: !527)
!590 = !DILocation(line: 0, scope: !526)
!591 = !DILocation(line: 310, column: 11, scope: !528)
!592 = !DILocation(line: 311, column: 9, scope: !526)
!593 = !DILocation(line: 309, column: 21, scope: !529)
!594 = distinct !{!594, !588, !595}
!595 = !DILocation(line: 312, column: 5, scope: !530)
!596 = !DILocation(line: 314, column: 5, scope: !531)
!597 = !DILocation(line: 315, column: 3, scope: !531)
!598 = !DILocation(line: 317, column: 12, scope: !537)
!599 = !DILocation(line: 317, column: 35, scope: !536)
!600 = !DILocation(line: 317, column: 3, scope: !537)
!601 = !DILocation(line: 0, scope: !536)
!602 = !DILocation(line: 319, column: 10, scope: !540)
!603 = !DILocation(line: 319, column: 9, scope: !535)
!604 = !DILocation(line: 318, column: 21, scope: !535)
!605 = !DILocation(line: 318, column: 11, scope: !535)
!606 = !DILocation(line: 320, column: 7, scope: !539)
!607 = !DILocalVariable(name: "L", arg: 1, scope: !608, file: !3, line: 494, type: !91)
!608 = distinct !DISubprogram(name: "luaH_set", scope: !3, file: !3, line: 494, type: !609, isLocal: false, isDefinition: true, scopeLine: 494, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !611)
!609 = !DISubroutineType(types: !610)
!610 = !{!101, !91, !9, !365}
!611 = !{!607, !612, !613, !614}
!612 = !DILocalVariable(name: "t", arg: 2, scope: !608, file: !3, line: 494, type: !9)
!613 = !DILocalVariable(name: "key", arg: 3, scope: !608, file: !3, line: 494, type: !365)
!614 = !DILocalVariable(name: "p", scope: !608, file: !3, line: 495, type: !365)
!615 = !DILocation(line: 494, column: 30, scope: !608, inlinedAt: !616)
!616 = distinct !DILocation(line: 320, column: 7, scope: !539)
!617 = !DILocation(line: 494, column: 40, scope: !608, inlinedAt: !616)
!618 = !DILocation(line: 494, column: 57, scope: !608, inlinedAt: !616)
!619 = !DILocation(line: 495, column: 21, scope: !608, inlinedAt: !616)
!620 = !DILocation(line: 495, column: 17, scope: !608, inlinedAt: !616)
!621 = !DILocation(line: 496, column: 12, scope: !608, inlinedAt: !616)
!622 = !{!426, !399, i64 10}
!623 = !DILocation(line: 497, column: 9, scope: !624, inlinedAt: !616)
!624 = distinct !DILexicalBlock(scope: !608, file: !3, line: 497, column: 7)
!625 = !DILocation(line: 497, column: 7, scope: !608, inlinedAt: !616)
!626 = !DILocation(line: 500, column: 9, scope: !627, inlinedAt: !616)
!627 = distinct !DILexicalBlock(scope: !628, file: !3, line: 500, column: 9)
!628 = distinct !DILexicalBlock(scope: !624, file: !3, line: 499, column: 8)
!629 = !DILocation(line: 500, column: 9, scope: !628, inlinedAt: !616)
!630 = !DILocation(line: 500, column: 23, scope: !627, inlinedAt: !616)
!631 = !DILocation(line: 501, column: 33, scope: !632, inlinedAt: !616)
!632 = distinct !DILexicalBlock(scope: !627, file: !3, line: 501, column: 14)
!633 = !DILocation(line: 501, column: 14, scope: !627, inlinedAt: !616)
!634 = !DILocation(line: 502, column: 7, scope: !632, inlinedAt: !616)
!635 = !DILocation(line: 503, column: 12, scope: !628, inlinedAt: !616)
!636 = !DILocation(line: 503, column: 5, scope: !628, inlinedAt: !616)
!637 = !DILocation(line: 0, scope: !628, inlinedAt: !616)
!638 = !DILocation(line: 505, column: 1, scope: !608, inlinedAt: !616)
!639 = distinct !{!639, !600, !640}
!640 = !DILocation(line: 321, column: 3, scope: !537)
!641 = !DILocation(line: 322, column: 12, scope: !642)
!642 = distinct !DILexicalBlock(scope: !513, file: !3, line: 322, column: 7)
!643 = !DILocation(line: 322, column: 7, scope: !513)
!644 = !DILocation(line: 323, column: 5, scope: !642)
!645 = !DILocation(line: 324, column: 1, scope: !513)
!646 = distinct !DISubprogram(name: "luaH_new", scope: !3, file: !3, line: 358, type: !647, isLocal: false, isDefinition: true, scopeLine: 358, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !649)
!647 = !DISubroutineType(types: !648)
!648 = !{!9, !91, !90, !90}
!649 = !{!650, !651, !652, !653}
!650 = !DILocalVariable(name: "L", arg: 1, scope: !646, file: !3, line: 358, type: !91)
!651 = !DILocalVariable(name: "narray", arg: 2, scope: !646, file: !3, line: 358, type: !90)
!652 = !DILocalVariable(name: "nhash", arg: 3, scope: !646, file: !3, line: 358, type: !90)
!653 = !DILocalVariable(name: "t", scope: !646, file: !3, line: 359, type: !9)
!654 = !DILocation(line: 358, column: 29, scope: !646)
!655 = !DILocation(line: 358, column: 36, scope: !646)
!656 = !DILocation(line: 358, column: 48, scope: !646)
!657 = !DILocation(line: 359, column: 14, scope: !646)
!658 = !DILocation(line: 359, column: 10, scope: !646)
!659 = !DILocation(line: 360, column: 16, scope: !646)
!660 = !DILocation(line: 360, column: 3, scope: !646)
!661 = !DILocation(line: 361, column: 6, scope: !646)
!662 = !DILocation(line: 361, column: 16, scope: !646)
!663 = !{!426, !427, i64 16}
!664 = !DILocation(line: 362, column: 6, scope: !646)
!665 = !DILocation(line: 362, column: 12, scope: !646)
!666 = !DILocation(line: 364, column: 6, scope: !646)
!667 = !DILocation(line: 364, column: 12, scope: !646)
!668 = !DILocation(line: 365, column: 6, scope: !646)
!669 = !DILocation(line: 365, column: 16, scope: !646)
!670 = !DILocation(line: 366, column: 6, scope: !646)
!671 = !DILocation(line: 366, column: 16, scope: !646)
!672 = !DILocation(line: 367, column: 6, scope: !646)
!673 = !DILocation(line: 367, column: 11, scope: !646)
!674 = !DILocation(line: 263, column: 40, scope: !557, inlinedAt: !675)
!675 = distinct !DILocation(line: 368, column: 3, scope: !646)
!676 = !DILocation(line: 263, column: 50, scope: !557, inlinedAt: !675)
!677 = !DILocation(line: 263, column: 57, scope: !557, inlinedAt: !675)
!678 = !DILocation(line: 265, column: 3, scope: !557, inlinedAt: !675)
!679 = !DILocation(line: 266, column: 13, scope: !568, inlinedAt: !675)
!680 = !DILocation(line: 264, column: 7, scope: !557, inlinedAt: !675)
!681 = !DILocation(line: 266, column: 25, scope: !571, inlinedAt: !675)
!682 = !DILocation(line: 266, column: 3, scope: !568, inlinedAt: !675)
!683 = !DILocation(line: 267, column: 6, scope: !571, inlinedAt: !675)
!684 = !DILocation(line: 266, column: 33, scope: !571, inlinedAt: !675)
!685 = distinct !{!685, !576}
!686 = !DILocation(line: 268, column: 16, scope: !557, inlinedAt: !675)
!687 = !DILocation(line: 269, column: 1, scope: !557, inlinedAt: !675)
!688 = !DILocation(line: 369, column: 3, scope: !646)
!689 = !DILocation(line: 370, column: 3, scope: !646)
!690 = distinct !DISubprogram(name: "setnodevector", scope: !3, file: !3, line: 272, type: !496, isLocal: true, isDefinition: true, scopeLine: 272, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !691)
!691 = !{!692, !693, !694, !695, !696, !699}
!692 = !DILocalVariable(name: "L", arg: 1, scope: !690, file: !3, line: 272, type: !91)
!693 = !DILocalVariable(name: "t", arg: 2, scope: !690, file: !3, line: 272, type: !9)
!694 = !DILocalVariable(name: "size", arg: 3, scope: !690, file: !3, line: 272, type: !90)
!695 = !DILocalVariable(name: "lsize", scope: !690, file: !3, line: 273, type: !90)
!696 = !DILocalVariable(name: "i", scope: !697, file: !3, line: 279, type: !90)
!697 = distinct !DILexicalBlock(scope: !698, file: !3, line: 278, column: 8)
!698 = distinct !DILexicalBlock(scope: !690, file: !3, line: 274, column: 7)
!699 = !DILocalVariable(name: "n", scope: !700, file: !3, line: 286, type: !322)
!700 = distinct !DILexicalBlock(scope: !701, file: !3, line: 285, column: 28)
!701 = distinct !DILexicalBlock(scope: !702, file: !3, line: 285, column: 5)
!702 = distinct !DILexicalBlock(scope: !697, file: !3, line: 285, column: 5)
!703 = !DILocation(line: 272, column: 39, scope: !690)
!704 = !DILocation(line: 272, column: 49, scope: !690)
!705 = !DILocation(line: 272, column: 56, scope: !690)
!706 = !DILocation(line: 274, column: 12, scope: !698)
!707 = !DILocation(line: 274, column: 7, scope: !690)
!708 = !DILocation(line: 275, column: 8, scope: !709)
!709 = distinct !DILexicalBlock(scope: !698, file: !3, line: 274, column: 18)
!710 = !DILocation(line: 275, column: 13, scope: !709)
!711 = !DILocation(line: 273, column: 7, scope: !690)
!712 = !DILocation(line: 277, column: 3, scope: !709)
!713 = !DILocation(line: 280, column: 13, scope: !697)
!714 = !DILocation(line: 281, column: 15, scope: !715)
!715 = distinct !DILexicalBlock(scope: !697, file: !3, line: 281, column: 9)
!716 = !DILocation(line: 281, column: 9, scope: !697)
!717 = !DILocation(line: 282, column: 7, scope: !715)
!718 = !DILocation(line: 283, column: 12, scope: !697)
!719 = !DILocation(line: 284, column: 15, scope: !697)
!720 = !DILocation(line: 284, column: 8, scope: !697)
!721 = !DILocation(line: 284, column: 13, scope: !697)
!722 = !DILocation(line: 279, column: 9, scope: !697)
!723 = !DILocation(line: 285, column: 16, scope: !701)
!724 = !DILocation(line: 285, column: 5, scope: !702)
!725 = !DILocation(line: 286, column: 17, scope: !700)
!726 = !DILocation(line: 287, column: 7, scope: !700)
!727 = !DILocation(line: 287, column: 16, scope: !700)
!728 = !DILocation(line: 288, column: 7, scope: !700)
!729 = !DILocation(line: 289, column: 7, scope: !700)
!730 = !DILocation(line: 285, column: 24, scope: !701)
!731 = !DILocation(line: 0, scope: !690)
!732 = distinct !{!732, !724, !733}
!733 = !DILocation(line: 290, column: 5, scope: !702)
!734 = !DILocation(line: 293, column: 17, scope: !690)
!735 = !DILocation(line: 292, column: 6, scope: !690)
!736 = !DILocation(line: 292, column: 16, scope: !690)
!737 = !DILocation(line: 293, column: 6, scope: !690)
!738 = !DILocation(line: 293, column: 15, scope: !690)
!739 = !{!426, !427, i64 40}
!740 = !DILocation(line: 294, column: 1, scope: !690)
!741 = distinct !DISubprogram(name: "luaH_free", scope: !3, file: !3, line: 374, type: !742, isLocal: false, isDefinition: true, scopeLine: 374, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !744)
!742 = !DISubroutineType(types: !743)
!743 = !{null, !91, !9}
!744 = !{!745, !746}
!745 = !DILocalVariable(name: "L", arg: 1, scope: !741, file: !3, line: 374, type: !91)
!746 = !DILocalVariable(name: "t", arg: 2, scope: !741, file: !3, line: 374, type: !9)
!747 = !DILocation(line: 374, column: 28, scope: !741)
!748 = !DILocation(line: 374, column: 38, scope: !741)
!749 = !DILocation(line: 375, column: 10, scope: !750)
!750 = distinct !DILexicalBlock(scope: !741, file: !3, line: 375, column: 7)
!751 = !DILocation(line: 375, column: 15, scope: !750)
!752 = !DILocation(line: 375, column: 7, scope: !741)
!753 = !DILocation(line: 376, column: 5, scope: !750)
!754 = !DILocation(line: 377, column: 3, scope: !741)
!755 = !DILocation(line: 378, column: 3, scope: !741)
!756 = !DILocation(line: 379, column: 1, scope: !741)
!757 = distinct !DISubprogram(name: "luaH_getnum", scope: !3, file: !3, line: 435, type: !758, isLocal: false, isDefinition: true, scopeLine: 435, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !760)
!758 = !DISubroutineType(types: !759)
!759 = !{!365, !9, !90}
!760 = !{!761, !762, !763, !766}
!761 = !DILocalVariable(name: "t", arg: 1, scope: !757, file: !3, line: 435, type: !9)
!762 = !DILocalVariable(name: "key", arg: 2, scope: !757, file: !3, line: 435, type: !90)
!763 = !DILocalVariable(name: "nk", scope: !764, file: !3, line: 440, type: !6)
!764 = distinct !DILexicalBlock(scope: !765, file: !3, line: 439, column: 8)
!765 = distinct !DILexicalBlock(scope: !757, file: !3, line: 437, column: 7)
!766 = !DILocalVariable(name: "n", scope: !764, file: !3, line: 441, type: !322)
!767 = !DILocalVariable(name: "a", scope: !768, file: !3, line: 85, type: !777)
!768 = distinct !DISubprogram(name: "hashnum", scope: !3, file: !3, line: 84, type: !769, isLocal: true, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !773)
!769 = !DISubroutineType(types: !770)
!770 = !{!322, !771, !6}
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!773 = !{!774, !775, !767, !776}
!774 = !DILocalVariable(name: "t", arg: 1, scope: !768, file: !3, line: 84, type: !771)
!775 = !DILocalVariable(name: "n", arg: 2, scope: !768, file: !3, line: 84, type: !6)
!776 = !DILocalVariable(name: "i", scope: !768, file: !3, line: 86, type: !90)
!777 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 64, elements: !778)
!778 = !{!779}
!779 = !DISubrange(count: 2)
!780 = !DILocation(line: 85, column: 16, scope: !768, inlinedAt: !781)
!781 = distinct !DILocation(line: 441, column: 15, scope: !764)
!782 = !DILocation(line: 435, column: 35, scope: !757)
!783 = !DILocation(line: 435, column: 42, scope: !757)
!784 = !DILocation(line: 437, column: 7, scope: !765)
!785 = !DILocation(line: 437, column: 35, scope: !765)
!786 = !DILocation(line: 437, column: 33, scope: !765)
!787 = !DILocation(line: 437, column: 7, scope: !757)
!788 = !DILocation(line: 438, column: 16, scope: !765)
!789 = !DILocation(line: 438, column: 13, scope: !765)
!790 = !DILocation(line: 438, column: 5, scope: !765)
!791 = !DILocation(line: 440, column: 21, scope: !764)
!792 = !DILocation(line: 440, column: 16, scope: !764)
!793 = !DILocation(line: 84, column: 36, scope: !768, inlinedAt: !781)
!794 = !DILocation(line: 84, column: 50, scope: !768, inlinedAt: !781)
!795 = !{!796, !796, i64 0}
!796 = !{!"double", !399, i64 0}
!797 = !DILocation(line: 85, column: 3, scope: !768, inlinedAt: !781)
!798 = !DILocation(line: 87, column: 7, scope: !799, inlinedAt: !781)
!799 = distinct !DILexicalBlock(scope: !768, file: !3, line: 87, column: 7)
!800 = !DILocation(line: 87, column: 7, scope: !768, inlinedAt: !781)
!801 = !DILocation(line: 88, column: 12, scope: !799, inlinedAt: !781)
!802 = !DILocation(line: 88, column: 5, scope: !799, inlinedAt: !781)
!803 = !DILocation(line: 89, column: 3, scope: !768, inlinedAt: !781)
!804 = !DILocation(line: 86, column: 7, scope: !768, inlinedAt: !781)
!805 = !DILocation(line: 90, column: 41, scope: !806, inlinedAt: !781)
!806 = distinct !DILexicalBlock(scope: !807, file: !3, line: 90, column: 3)
!807 = distinct !DILexicalBlock(scope: !768, file: !3, line: 90, column: 3)
!808 = !{!401, !401, i64 0}
!809 = !DILocation(line: 90, column: 38, scope: !806, inlinedAt: !781)
!810 = !DILocation(line: 91, column: 10, scope: !768, inlinedAt: !781)
!811 = !DILocation(line: 91, column: 3, scope: !768, inlinedAt: !781)
!812 = !DILocation(line: 0, scope: !768, inlinedAt: !781)
!813 = !DILocation(line: 92, column: 1, scope: !768, inlinedAt: !781)
!814 = !DILocation(line: 441, column: 11, scope: !764)
!815 = !DILocation(line: 442, column: 5, scope: !764)
!816 = !DILocation(line: 0, scope: !817)
!817 = distinct !DILexicalBlock(scope: !818, file: !3, line: 443, column: 11)
!818 = distinct !DILexicalBlock(scope: !764, file: !3, line: 442, column: 8)
!819 = !DILocation(line: 443, column: 11, scope: !817)
!820 = !DILocation(line: 443, column: 31, scope: !817)
!821 = !DILocation(line: 443, column: 34, scope: !817)
!822 = !DILocation(line: 443, column: 11, scope: !818)
!823 = !DILocation(line: 444, column: 16, scope: !817)
!824 = !DILocation(line: 444, column: 9, scope: !817)
!825 = !DILocation(line: 445, column: 16, scope: !817)
!826 = !DILocation(line: 446, column: 5, scope: !818)
!827 = distinct !{!827, !815, !828}
!828 = !DILocation(line: 446, column: 15, scope: !764)
!829 = !DILocation(line: 449, column: 1, scope: !757)
!830 = distinct !DISubprogram(name: "luaH_getstr", scope: !3, file: !3, line: 455, type: !831, isLocal: false, isDefinition: true, scopeLine: 455, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !833)
!831 = !DISubroutineType(types: !832)
!832 = !{!365, !9, !189}
!833 = !{!834, !835, !836}
!834 = !DILocalVariable(name: "t", arg: 1, scope: !830, file: !3, line: 455, type: !9)
!835 = !DILocalVariable(name: "key", arg: 2, scope: !830, file: !3, line: 455, type: !189)
!836 = !DILocalVariable(name: "n", scope: !830, file: !3, line: 456, type: !322)
!837 = !DILocation(line: 455, column: 35, scope: !830)
!838 = !DILocation(line: 455, column: 47, scope: !830)
!839 = !DILocation(line: 456, column: 13, scope: !830)
!840 = !DILocation(line: 456, column: 9, scope: !830)
!841 = !DILocation(line: 457, column: 3, scope: !830)
!842 = !DILocation(line: 0, scope: !843)
!843 = distinct !DILexicalBlock(scope: !844, file: !3, line: 458, column: 9)
!844 = distinct !DILexicalBlock(scope: !830, file: !3, line: 457, column: 6)
!845 = !DILocation(line: 458, column: 9, scope: !843)
!846 = !DILocation(line: 458, column: 29, scope: !843)
!847 = !DILocation(line: 458, column: 32, scope: !843)
!848 = !DILocation(line: 458, column: 52, scope: !843)
!849 = !DILocation(line: 458, column: 9, scope: !844)
!850 = !DILocation(line: 459, column: 14, scope: !843)
!851 = !DILocation(line: 459, column: 7, scope: !843)
!852 = !DILocation(line: 460, column: 14, scope: !843)
!853 = !DILocation(line: 461, column: 3, scope: !844)
!854 = distinct !{!854, !841, !855}
!855 = !DILocation(line: 461, column: 13, scope: !830)
!856 = !DILocation(line: 0, scope: !830)
!857 = !DILocation(line: 463, column: 1, scope: !830)
!858 = distinct !DISubprogram(name: "luaH_get", scope: !3, file: !3, line: 469, type: !859, isLocal: false, isDefinition: true, scopeLine: 469, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !861)
!859 = !DISubroutineType(types: !860)
!860 = !{!365, !9, !365}
!861 = !{!862, !863, !864, !867, !868}
!862 = !DILocalVariable(name: "t", arg: 1, scope: !858, file: !3, line: 469, type: !9)
!863 = !DILocalVariable(name: "key", arg: 2, scope: !858, file: !3, line: 469, type: !365)
!864 = !DILocalVariable(name: "k", scope: !865, file: !3, line: 474, type: !90)
!865 = distinct !DILexicalBlock(scope: !866, file: !3, line: 473, column: 23)
!866 = distinct !DILexicalBlock(scope: !858, file: !3, line: 470, column: 23)
!867 = !DILocalVariable(name: "n", scope: !865, file: !3, line: 475, type: !6)
!868 = !DILocalVariable(name: "n", scope: !869, file: !3, line: 482, type: !322)
!869 = distinct !DILexicalBlock(scope: !866, file: !3, line: 481, column: 14)
!870 = !DILocation(line: 85, column: 16, scope: !768, inlinedAt: !871)
!871 = distinct !DILocation(line: 441, column: 15, scope: !764, inlinedAt: !872)
!872 = distinct !DILocation(line: 478, column: 16, scope: !873)
!873 = distinct !DILexicalBlock(scope: !865, file: !3, line: 477, column: 11)
!874 = !DILocation(line: 469, column: 32, scope: !858)
!875 = !DILocation(line: 469, column: 49, scope: !858)
!876 = !DILocation(line: 470, column: 11, scope: !858)
!877 = !DILocation(line: 470, column: 3, scope: !858)
!878 = !DILocation(line: 472, column: 45, scope: !866)
!879 = !DILocation(line: 455, column: 35, scope: !830, inlinedAt: !880)
!880 = distinct !DILocation(line: 472, column: 30, scope: !866)
!881 = !DILocation(line: 455, column: 47, scope: !830, inlinedAt: !880)
!882 = !DILocation(line: 456, column: 13, scope: !830, inlinedAt: !880)
!883 = !DILocation(line: 456, column: 9, scope: !830, inlinedAt: !880)
!884 = !DILocation(line: 457, column: 3, scope: !830, inlinedAt: !880)
!885 = !DILocation(line: 0, scope: !843, inlinedAt: !880)
!886 = !DILocation(line: 458, column: 9, scope: !843, inlinedAt: !880)
!887 = !DILocation(line: 458, column: 29, scope: !843, inlinedAt: !880)
!888 = !DILocation(line: 458, column: 32, scope: !843, inlinedAt: !880)
!889 = !DILocation(line: 458, column: 52, scope: !843, inlinedAt: !880)
!890 = !DILocation(line: 458, column: 9, scope: !844, inlinedAt: !880)
!891 = !DILocation(line: 459, column: 14, scope: !843, inlinedAt: !880)
!892 = !DILocation(line: 459, column: 7, scope: !843, inlinedAt: !880)
!893 = !DILocation(line: 460, column: 14, scope: !843, inlinedAt: !880)
!894 = !DILocation(line: 461, column: 3, scope: !844, inlinedAt: !880)
!895 = !DILocation(line: 0, scope: !830, inlinedAt: !880)
!896 = !DILocation(line: 463, column: 1, scope: !830, inlinedAt: !880)
!897 = !DILocation(line: 472, column: 23, scope: !866)
!898 = !DILocation(line: 475, column: 22, scope: !865)
!899 = !DILocation(line: 475, column: 18, scope: !865)
!900 = !DILocation(line: 476, column: 7, scope: !865)
!901 = !DILocation(line: 474, column: 11, scope: !865)
!902 = !DILocation(line: 477, column: 11, scope: !873)
!903 = !DILocation(line: 477, column: 11, scope: !865)
!904 = !DILocation(line: 435, column: 35, scope: !757, inlinedAt: !872)
!905 = !DILocation(line: 435, column: 42, scope: !757, inlinedAt: !872)
!906 = !DILocation(line: 437, column: 7, scope: !765, inlinedAt: !872)
!907 = !DILocation(line: 437, column: 35, scope: !765, inlinedAt: !872)
!908 = !DILocation(line: 437, column: 33, scope: !765, inlinedAt: !872)
!909 = !DILocation(line: 437, column: 7, scope: !757, inlinedAt: !872)
!910 = !DILocation(line: 438, column: 16, scope: !765, inlinedAt: !872)
!911 = !DILocation(line: 438, column: 13, scope: !765, inlinedAt: !872)
!912 = !DILocation(line: 438, column: 5, scope: !765, inlinedAt: !872)
!913 = !DILocation(line: 440, column: 16, scope: !764, inlinedAt: !872)
!914 = !DILocation(line: 84, column: 36, scope: !768, inlinedAt: !871)
!915 = !DILocation(line: 84, column: 50, scope: !768, inlinedAt: !871)
!916 = !DILocation(line: 85, column: 3, scope: !768, inlinedAt: !871)
!917 = !DILocation(line: 87, column: 7, scope: !799, inlinedAt: !871)
!918 = !DILocation(line: 87, column: 7, scope: !768, inlinedAt: !871)
!919 = !DILocation(line: 88, column: 12, scope: !799, inlinedAt: !871)
!920 = !DILocation(line: 88, column: 5, scope: !799, inlinedAt: !871)
!921 = !DILocation(line: 89, column: 3, scope: !768, inlinedAt: !871)
!922 = !DILocation(line: 86, column: 7, scope: !768, inlinedAt: !871)
!923 = !DILocation(line: 90, column: 41, scope: !806, inlinedAt: !871)
!924 = !DILocation(line: 90, column: 38, scope: !806, inlinedAt: !871)
!925 = !DILocation(line: 91, column: 10, scope: !768, inlinedAt: !871)
!926 = !DILocation(line: 91, column: 3, scope: !768, inlinedAt: !871)
!927 = !DILocation(line: 0, scope: !768, inlinedAt: !871)
!928 = !DILocation(line: 92, column: 1, scope: !768, inlinedAt: !871)
!929 = !DILocation(line: 441, column: 11, scope: !764, inlinedAt: !872)
!930 = !DILocation(line: 442, column: 5, scope: !764, inlinedAt: !872)
!931 = !DILocation(line: 0, scope: !817, inlinedAt: !872)
!932 = !DILocation(line: 443, column: 11, scope: !817, inlinedAt: !872)
!933 = !DILocation(line: 443, column: 31, scope: !817, inlinedAt: !872)
!934 = !DILocation(line: 443, column: 34, scope: !817, inlinedAt: !872)
!935 = !DILocation(line: 443, column: 11, scope: !818, inlinedAt: !872)
!936 = !DILocation(line: 444, column: 16, scope: !817, inlinedAt: !872)
!937 = !DILocation(line: 444, column: 9, scope: !817, inlinedAt: !872)
!938 = !DILocation(line: 445, column: 16, scope: !817, inlinedAt: !872)
!939 = !DILocation(line: 446, column: 5, scope: !818, inlinedAt: !872)
!940 = !DILocation(line: 449, column: 1, scope: !757, inlinedAt: !872)
!941 = !DILocation(line: 482, column: 17, scope: !869)
!942 = !DILocation(line: 482, column: 13, scope: !869)
!943 = !DILocation(line: 483, column: 7, scope: !869)
!944 = !DILocation(line: 0, scope: !945)
!945 = distinct !DILexicalBlock(scope: !946, file: !3, line: 484, column: 13)
!946 = distinct !DILexicalBlock(scope: !869, file: !3, line: 483, column: 10)
!947 = !DILocation(line: 484, column: 30, scope: !945)
!948 = !DILocation(line: 484, column: 13, scope: !945)
!949 = !DILocation(line: 484, column: 13, scope: !946)
!950 = !DILocation(line: 485, column: 18, scope: !945)
!951 = !DILocation(line: 485, column: 11, scope: !945)
!952 = !DILocation(line: 486, column: 18, scope: !945)
!953 = !DILocation(line: 487, column: 7, scope: !946)
!954 = distinct !{!954, !943, !955}
!955 = !DILocation(line: 487, column: 17, scope: !869)
!956 = !DILocation(line: 0, scope: !866)
!957 = !DILocation(line: 491, column: 1, scope: !858)
!958 = distinct !DISubprogram(name: "mainposition", scope: !3, file: !3, line: 100, type: !959, isLocal: true, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !961)
!959 = !DISubroutineType(types: !960)
!960 = !{!322, !771, !365}
!961 = !{!962, !963}
!962 = !DILocalVariable(name: "t", arg: 1, scope: !958, file: !3, line: 100, type: !771)
!963 = !DILocalVariable(name: "key", arg: 2, scope: !958, file: !3, line: 100, type: !365)
!964 = !DILocation(line: 85, column: 16, scope: !768, inlinedAt: !965)
!965 = distinct !DILocation(line: 103, column: 14, scope: !966)
!966 = distinct !DILexicalBlock(scope: !958, file: !3, line: 101, column: 23)
!967 = !DILocation(line: 100, column: 41, scope: !958)
!968 = !DILocation(line: 100, column: 58, scope: !958)
!969 = !DILocation(line: 101, column: 11, scope: !958)
!970 = !DILocation(line: 101, column: 3, scope: !958)
!971 = !DILocation(line: 103, column: 25, scope: !966)
!972 = !DILocation(line: 84, column: 36, scope: !768, inlinedAt: !965)
!973 = !DILocation(line: 84, column: 50, scope: !768, inlinedAt: !965)
!974 = !DILocation(line: 85, column: 3, scope: !768, inlinedAt: !965)
!975 = !DILocation(line: 87, column: 7, scope: !799, inlinedAt: !965)
!976 = !DILocation(line: 87, column: 7, scope: !768, inlinedAt: !965)
!977 = !DILocation(line: 88, column: 12, scope: !799, inlinedAt: !965)
!978 = !DILocation(line: 88, column: 5, scope: !799, inlinedAt: !965)
!979 = !DILocation(line: 89, column: 3, scope: !768, inlinedAt: !965)
!980 = !DILocation(line: 86, column: 7, scope: !768, inlinedAt: !965)
!981 = !DILocation(line: 90, column: 41, scope: !806, inlinedAt: !965)
!982 = !DILocation(line: 90, column: 38, scope: !806, inlinedAt: !965)
!983 = !DILocation(line: 91, column: 10, scope: !768, inlinedAt: !965)
!984 = !DILocation(line: 91, column: 3, scope: !768, inlinedAt: !965)
!985 = !DILocation(line: 0, scope: !768, inlinedAt: !965)
!986 = !DILocation(line: 92, column: 1, scope: !768, inlinedAt: !965)
!987 = !DILocation(line: 103, column: 7, scope: !966)
!988 = !DILocation(line: 105, column: 14, scope: !966)
!989 = !DILocation(line: 105, column: 7, scope: !966)
!990 = !DILocation(line: 107, column: 14, scope: !966)
!991 = !DILocation(line: 107, column: 7, scope: !966)
!992 = !DILocation(line: 109, column: 14, scope: !966)
!993 = !DILocation(line: 109, column: 7, scope: !966)
!994 = !DILocation(line: 111, column: 14, scope: !966)
!995 = !DILocation(line: 111, column: 7, scope: !966)
!996 = !DILocation(line: 0, scope: !966)
!997 = !DILocation(line: 113, column: 1, scope: !958)
!998 = !DILocation(line: 494, column: 30, scope: !608)
!999 = !DILocation(line: 494, column: 40, scope: !608)
!1000 = !DILocation(line: 494, column: 57, scope: !608)
!1001 = !DILocation(line: 495, column: 21, scope: !608)
!1002 = !DILocation(line: 495, column: 17, scope: !608)
!1003 = !DILocation(line: 496, column: 6, scope: !608)
!1004 = !DILocation(line: 496, column: 12, scope: !608)
!1005 = !DILocation(line: 497, column: 9, scope: !624)
!1006 = !DILocation(line: 497, column: 7, scope: !608)
!1007 = !DILocation(line: 500, column: 9, scope: !627)
!1008 = !DILocation(line: 500, column: 9, scope: !628)
!1009 = !DILocation(line: 500, column: 23, scope: !627)
!1010 = !DILocation(line: 501, column: 33, scope: !632)
!1011 = !DILocation(line: 501, column: 14, scope: !627)
!1012 = !DILocation(line: 502, column: 7, scope: !632)
!1013 = !DILocation(line: 503, column: 12, scope: !628)
!1014 = !DILocation(line: 503, column: 5, scope: !628)
!1015 = !DILocation(line: 0, scope: !628)
!1016 = !DILocation(line: 505, column: 1, scope: !608)
!1017 = distinct !DISubprogram(name: "newkey", scope: !3, file: !3, line: 399, type: !609, isLocal: true, isDefinition: true, scopeLine: 399, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1018)
!1018 = !{!1019, !1020, !1021, !1022, !1023, !1026}
!1019 = !DILocalVariable(name: "L", arg: 1, scope: !1017, file: !3, line: 399, type: !91)
!1020 = !DILocalVariable(name: "t", arg: 2, scope: !1017, file: !3, line: 399, type: !9)
!1021 = !DILocalVariable(name: "key", arg: 3, scope: !1017, file: !3, line: 399, type: !365)
!1022 = !DILocalVariable(name: "mp", scope: !1017, file: !3, line: 400, type: !322)
!1023 = !DILocalVariable(name: "othern", scope: !1024, file: !3, line: 402, type: !322)
!1024 = distinct !DILexicalBlock(scope: !1025, file: !3, line: 401, column: 46)
!1025 = distinct !DILexicalBlock(scope: !1017, file: !3, line: 401, column: 7)
!1026 = !DILocalVariable(name: "n", scope: !1024, file: !3, line: 403, type: !322)
!1027 = !DILocalVariable(name: "nums", scope: !1028, file: !3, line: 335, type: !1039)
!1028 = distinct !DISubprogram(name: "rehash", scope: !3, file: !3, line: 333, type: !1029, isLocal: true, isDefinition: true, scopeLine: 333, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1031)
!1029 = !DISubroutineType(types: !1030)
!1030 = !{null, !91, !9, !365}
!1031 = !{!1032, !1033, !1034, !1035, !1036, !1027, !1037, !1038}
!1032 = !DILocalVariable(name: "L", arg: 1, scope: !1028, file: !3, line: 333, type: !91)
!1033 = !DILocalVariable(name: "t", arg: 2, scope: !1028, file: !3, line: 333, type: !9)
!1034 = !DILocalVariable(name: "ek", arg: 3, scope: !1028, file: !3, line: 333, type: !365)
!1035 = !DILocalVariable(name: "nasize", scope: !1028, file: !3, line: 334, type: !90)
!1036 = !DILocalVariable(name: "na", scope: !1028, file: !3, line: 334, type: !90)
!1037 = !DILocalVariable(name: "i", scope: !1028, file: !3, line: 336, type: !90)
!1038 = !DILocalVariable(name: "totaluse", scope: !1028, file: !3, line: 337, type: !90)
!1039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 864, elements: !1040)
!1040 = !{!1041}
!1041 = !DISubrange(count: 27)
!1042 = !DILocation(line: 335, column: 7, scope: !1028, inlinedAt: !1043)
!1043 = distinct !DILocation(line: 405, column: 7, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1045, file: !3, line: 404, column: 20)
!1045 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 404, column: 9)
!1046 = !DILocation(line: 399, column: 35, scope: !1017)
!1047 = !DILocation(line: 399, column: 45, scope: !1017)
!1048 = !DILocation(line: 399, column: 62, scope: !1017)
!1049 = !DILocation(line: 400, column: 14, scope: !1017)
!1050 = !DILocation(line: 400, column: 9, scope: !1017)
!1051 = !DILocation(line: 401, column: 8, scope: !1025)
!1052 = !DILocation(line: 401, column: 32, scope: !1025)
!1053 = !DILocation(line: 401, column: 26, scope: !1025)
!1054 = !DILocalVariable(name: "t", arg: 1, scope: !1055, file: !3, line: 382, type: !9)
!1055 = distinct !DISubprogram(name: "getfreepos", scope: !3, file: !3, line: 382, type: !1056, isLocal: true, isDefinition: true, scopeLine: 382, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1058)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!322, !9}
!1058 = !{!1054}
!1059 = !DILocation(line: 382, column: 33, scope: !1055, inlinedAt: !1060)
!1060 = distinct !DILocation(line: 403, column: 15, scope: !1024)
!1061 = !DILocation(line: 383, column: 21, scope: !1055, inlinedAt: !1060)
!1062 = !DILocation(line: 383, column: 29, scope: !1055, inlinedAt: !1060)
!1063 = !DILocation(line: 383, column: 3, scope: !1055, inlinedAt: !1060)
!1064 = !DILocation(line: 383, column: 24, scope: !1055, inlinedAt: !1060)
!1065 = !DILocation(line: 384, column: 9, scope: !1066, inlinedAt: !1060)
!1066 = distinct !DILexicalBlock(scope: !1067, file: !3, line: 384, column: 9)
!1067 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 383, column: 35)
!1068 = !DILocation(line: 384, column: 9, scope: !1067, inlinedAt: !1060)
!1069 = distinct !{!1069, !1070, !1071}
!1070 = !DILocation(line: 383, column: 3, scope: !1055)
!1071 = !DILocation(line: 386, column: 3, scope: !1055)
!1072 = !DILocation(line: 388, column: 1, scope: !1055, inlinedAt: !1060)
!1073 = !DILocation(line: 333, column: 32, scope: !1028, inlinedAt: !1043)
!1074 = !DILocation(line: 333, column: 42, scope: !1028, inlinedAt: !1043)
!1075 = !DILocation(line: 333, column: 59, scope: !1028, inlinedAt: !1043)
!1076 = !DILocation(line: 335, column: 3, scope: !1028, inlinedAt: !1043)
!1077 = !DILocation(line: 336, column: 7, scope: !1028, inlinedAt: !1043)
!1078 = !DILocation(line: 338, column: 38, scope: !1079, inlinedAt: !1043)
!1079 = distinct !DILexicalBlock(scope: !1080, file: !3, line: 338, column: 3)
!1080 = distinct !DILexicalBlock(scope: !1028, file: !3, line: 338, column: 3)
!1081 = !DILocation(line: 338, column: 30, scope: !1079, inlinedAt: !1043)
!1082 = !DILocalVariable(name: "t", arg: 1, scope: !1083, file: !3, line: 222, type: !771)
!1083 = distinct !DISubprogram(name: "numusearray", scope: !3, file: !3, line: 222, type: !1084, isLocal: true, isDefinition: true, scopeLine: 222, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1086)
!1084 = !DISubroutineType(types: !1085)
!1085 = !{!90, !771, !284}
!1086 = !{!1082, !1087, !1088, !1089, !1090, !1091, !1092, !1096}
!1087 = !DILocalVariable(name: "nums", arg: 2, scope: !1083, file: !3, line: 222, type: !284)
!1088 = !DILocalVariable(name: "lg", scope: !1083, file: !3, line: 223, type: !90)
!1089 = !DILocalVariable(name: "ttlg", scope: !1083, file: !3, line: 224, type: !90)
!1090 = !DILocalVariable(name: "ause", scope: !1083, file: !3, line: 225, type: !90)
!1091 = !DILocalVariable(name: "i", scope: !1083, file: !3, line: 226, type: !90)
!1092 = !DILocalVariable(name: "lc", scope: !1093, file: !3, line: 228, type: !90)
!1093 = distinct !DILexicalBlock(scope: !1094, file: !3, line: 227, column: 50)
!1094 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 227, column: 3)
!1095 = distinct !DILexicalBlock(scope: !1083, file: !3, line: 227, column: 3)
!1096 = !DILocalVariable(name: "lim", scope: !1093, file: !3, line: 229, type: !90)
!1097 = !DILocation(line: 222, column: 38, scope: !1083, inlinedAt: !1098)
!1098 = distinct !DILocation(line: 339, column: 12, scope: !1028, inlinedAt: !1043)
!1099 = !DILocation(line: 222, column: 46, scope: !1083, inlinedAt: !1098)
!1100 = !DILocation(line: 225, column: 7, scope: !1083, inlinedAt: !1098)
!1101 = !DILocation(line: 226, column: 7, scope: !1083, inlinedAt: !1098)
!1102 = !DILocation(line: 223, column: 7, scope: !1083, inlinedAt: !1098)
!1103 = !DILocation(line: 224, column: 7, scope: !1083, inlinedAt: !1098)
!1104 = !DILocation(line: 227, column: 3, scope: !1095, inlinedAt: !1098)
!1105 = !DILocation(line: 228, column: 9, scope: !1093, inlinedAt: !1098)
!1106 = !DILocation(line: 229, column: 9, scope: !1093, inlinedAt: !1098)
!1107 = !DILocation(line: 230, column: 13, scope: !1108, inlinedAt: !1098)
!1108 = distinct !DILexicalBlock(scope: !1093, file: !3, line: 230, column: 9)
!1109 = !DILocation(line: 230, column: 9, scope: !1093, inlinedAt: !1098)
!1110 = !DILocation(line: 232, column: 13, scope: !1111, inlinedAt: !1098)
!1111 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 232, column: 11)
!1112 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 230, column: 29)
!1113 = !DILocation(line: 232, column: 11, scope: !1112, inlinedAt: !1098)
!1114 = !DILocation(line: 0, scope: !1093, inlinedAt: !1098)
!1115 = !DILocation(line: 236, column: 14, scope: !1116, inlinedAt: !1098)
!1116 = distinct !DILexicalBlock(scope: !1117, file: !3, line: 236, column: 5)
!1117 = distinct !DILexicalBlock(scope: !1093, file: !3, line: 236, column: 5)
!1118 = !DILocation(line: 236, column: 5, scope: !1117, inlinedAt: !1098)
!1119 = !DILocation(line: 237, column: 12, scope: !1120, inlinedAt: !1098)
!1120 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 237, column: 11)
!1121 = distinct !DILexicalBlock(scope: !1116, file: !3, line: 236, column: 27)
!1122 = !DILocation(line: 237, column: 11, scope: !1121, inlinedAt: !1098)
!1123 = distinct !{!1123, !1124, !1125, !1126}
!1124 = !DILocation(line: 236, column: 5, scope: !1117)
!1125 = !DILocation(line: 239, column: 5, scope: !1117)
!1126 = !{!"llvm.loop.isvectorized", i32 1}
!1127 = !DILocation(line: 236, column: 23, scope: !1116, inlinedAt: !1098)
!1128 = distinct !{!1128, !1124, !1125, !1129, !1126}
!1129 = !{!"llvm.loop.unroll.runtime.disable"}
!1130 = !DILocation(line: 240, column: 5, scope: !1093, inlinedAt: !1098)
!1131 = !DILocation(line: 0, scope: !1116, inlinedAt: !1098)
!1132 = !DILocation(line: 240, column: 14, scope: !1093, inlinedAt: !1098)
!1133 = !DILocation(line: 241, column: 10, scope: !1093, inlinedAt: !1098)
!1134 = !DILocation(line: 227, column: 37, scope: !1094, inlinedAt: !1098)
!1135 = !DILocation(line: 227, column: 45, scope: !1094, inlinedAt: !1098)
!1136 = !DILocation(line: 227, column: 24, scope: !1094, inlinedAt: !1098)
!1137 = distinct !{!1137, !1138, !1139}
!1138 = !DILocation(line: 227, column: 3, scope: !1095)
!1139 = !DILocation(line: 242, column: 3, scope: !1095)
!1140 = !DILocation(line: 243, column: 3, scope: !1083, inlinedAt: !1098)
!1141 = !DILocation(line: 334, column: 7, scope: !1028, inlinedAt: !1043)
!1142 = !DILocation(line: 337, column: 7, scope: !1028, inlinedAt: !1043)
!1143 = !DILocalVariable(name: "t", arg: 1, scope: !1144, file: !3, line: 247, type: !771)
!1144 = distinct !DISubprogram(name: "numusehash", scope: !3, file: !3, line: 247, type: !1145, isLocal: true, isDefinition: true, scopeLine: 247, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1147)
!1145 = !DISubroutineType(types: !1146)
!1146 = !{!90, !771, !284, !284}
!1147 = !{!1143, !1148, !1149, !1150, !1151, !1152, !1153}
!1148 = !DILocalVariable(name: "nums", arg: 2, scope: !1144, file: !3, line: 247, type: !284)
!1149 = !DILocalVariable(name: "pnasize", arg: 3, scope: !1144, file: !3, line: 247, type: !284)
!1150 = !DILocalVariable(name: "totaluse", scope: !1144, file: !3, line: 248, type: !90)
!1151 = !DILocalVariable(name: "ause", scope: !1144, file: !3, line: 249, type: !90)
!1152 = !DILocalVariable(name: "i", scope: !1144, file: !3, line: 250, type: !90)
!1153 = !DILocalVariable(name: "n", scope: !1154, file: !3, line: 252, type: !322)
!1154 = distinct !DILexicalBlock(scope: !1144, file: !3, line: 251, column: 15)
!1155 = !DILocation(line: 247, column: 37, scope: !1144, inlinedAt: !1156)
!1156 = distinct !DILocation(line: 341, column: 15, scope: !1028, inlinedAt: !1043)
!1157 = !DILocation(line: 247, column: 45, scope: !1144, inlinedAt: !1156)
!1158 = !DILocation(line: 248, column: 7, scope: !1144, inlinedAt: !1156)
!1159 = !DILocation(line: 249, column: 7, scope: !1144, inlinedAt: !1156)
!1160 = !DILocation(line: 250, column: 11, scope: !1144, inlinedAt: !1156)
!1161 = !DILocation(line: 251, column: 11, scope: !1144, inlinedAt: !1156)
!1162 = !DILocation(line: 250, column: 7, scope: !1144, inlinedAt: !1156)
!1163 = !DILocation(line: 251, column: 3, scope: !1144, inlinedAt: !1156)
!1164 = !DILocation(line: 252, column: 19, scope: !1154, inlinedAt: !1156)
!1165 = !DILocation(line: 253, column: 10, scope: !1166, inlinedAt: !1156)
!1166 = distinct !DILexicalBlock(scope: !1154, file: !3, line: 253, column: 9)
!1167 = !DILocation(line: 253, column: 9, scope: !1154, inlinedAt: !1156)
!1168 = !DILocalVariable(name: "nums", arg: 2, scope: !1169, file: !3, line: 211, type: !284)
!1169 = distinct !DISubprogram(name: "countint", scope: !3, file: !3, line: 211, type: !1170, isLocal: true, isDefinition: true, scopeLine: 211, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1172)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{!90, !365, !284}
!1172 = !{!1173, !1168, !1174}
!1173 = !DILocalVariable(name: "key", arg: 1, scope: !1169, file: !3, line: 211, type: !365)
!1174 = !DILocalVariable(name: "k", scope: !1169, file: !3, line: 212, type: !90)
!1175 = !DILocation(line: 211, column: 46, scope: !1169, inlinedAt: !1176)
!1176 = distinct !DILocation(line: 254, column: 15, scope: !1177, inlinedAt: !1156)
!1177 = distinct !DILexicalBlock(scope: !1166, file: !3, line: 253, column: 28)
!1178 = !DILocation(line: 121, column: 7, scope: !405, inlinedAt: !1179)
!1179 = distinct !DILocation(line: 212, column: 11, scope: !1169, inlinedAt: !1176)
!1180 = !DILocation(line: 121, column: 7, scope: !406, inlinedAt: !1179)
!1181 = !DILocation(line: 254, column: 24, scope: !1177, inlinedAt: !1156)
!1182 = !DILocation(line: 122, column: 20, scope: !404, inlinedAt: !1179)
!1183 = !DILocation(line: 211, column: 36, scope: !1169, inlinedAt: !1176)
!1184 = !DILocation(line: 120, column: 38, scope: !406, inlinedAt: !1179)
!1185 = !DILocation(line: 122, column: 16, scope: !404, inlinedAt: !1179)
!1186 = !DILocation(line: 124, column: 5, scope: !404, inlinedAt: !1179)
!1187 = !DILocation(line: 123, column: 9, scope: !404, inlinedAt: !1179)
!1188 = !DILocation(line: 125, column: 9, scope: !419, inlinedAt: !1179)
!1189 = !DILocation(line: 129, column: 1, scope: !406, inlinedAt: !1179)
!1190 = !DILocation(line: 213, column: 13, scope: !1191, inlinedAt: !1176)
!1191 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 213, column: 7)
!1192 = !DILocation(line: 212, column: 7, scope: !1169, inlinedAt: !1176)
!1193 = !DILocation(line: 214, column: 10, scope: !1194, inlinedAt: !1176)
!1194 = distinct !DILexicalBlock(scope: !1191, file: !3, line: 213, column: 31)
!1195 = !DILocation(line: 214, column: 5, scope: !1194, inlinedAt: !1176)
!1196 = !DILocation(line: 214, column: 22, scope: !1194, inlinedAt: !1176)
!1197 = !DILocation(line: 215, column: 5, scope: !1194, inlinedAt: !1176)
!1198 = !DILocation(line: 0, scope: !1191, inlinedAt: !1176)
!1199 = !DILocation(line: 219, column: 1, scope: !1169, inlinedAt: !1176)
!1200 = !DILocation(line: 254, column: 12, scope: !1177, inlinedAt: !1156)
!1201 = !DILocation(line: 255, column: 15, scope: !1177, inlinedAt: !1156)
!1202 = !DILocation(line: 256, column: 5, scope: !1177, inlinedAt: !1156)
!1203 = !DILocation(line: 0, scope: !1177, inlinedAt: !1156)
!1204 = distinct !{!1204, !1205, !1206}
!1205 = !DILocation(line: 251, column: 3, scope: !1144)
!1206 = !DILocation(line: 257, column: 3, scope: !1144)
!1207 = !DILocation(line: 258, column: 12, scope: !1144, inlinedAt: !1156)
!1208 = !DILocation(line: 259, column: 3, scope: !1144, inlinedAt: !1156)
!1209 = !DILocation(line: 211, column: 36, scope: !1169, inlinedAt: !1210)
!1210 = distinct !DILocation(line: 343, column: 13, scope: !1028, inlinedAt: !1043)
!1211 = !DILocation(line: 211, column: 46, scope: !1169, inlinedAt: !1210)
!1212 = !DILocation(line: 120, column: 38, scope: !406, inlinedAt: !1213)
!1213 = distinct !DILocation(line: 212, column: 11, scope: !1169, inlinedAt: !1210)
!1214 = !DILocation(line: 121, column: 7, scope: !405, inlinedAt: !1213)
!1215 = !DILocation(line: 121, column: 7, scope: !406, inlinedAt: !1213)
!1216 = !DILocation(line: 122, column: 20, scope: !404, inlinedAt: !1213)
!1217 = !DILocation(line: 122, column: 16, scope: !404, inlinedAt: !1213)
!1218 = !DILocation(line: 124, column: 5, scope: !404, inlinedAt: !1213)
!1219 = !DILocation(line: 123, column: 9, scope: !404, inlinedAt: !1213)
!1220 = !DILocation(line: 125, column: 9, scope: !419, inlinedAt: !1213)
!1221 = !DILocation(line: 129, column: 1, scope: !406, inlinedAt: !1213)
!1222 = !DILocation(line: 213, column: 13, scope: !1191, inlinedAt: !1210)
!1223 = !DILocation(line: 212, column: 7, scope: !1169, inlinedAt: !1210)
!1224 = !DILocation(line: 214, column: 10, scope: !1194, inlinedAt: !1210)
!1225 = !DILocation(line: 214, column: 5, scope: !1194, inlinedAt: !1210)
!1226 = !DILocation(line: 214, column: 22, scope: !1194, inlinedAt: !1210)
!1227 = !DILocation(line: 215, column: 5, scope: !1194, inlinedAt: !1210)
!1228 = !DILocation(line: 0, scope: !1191, inlinedAt: !1210)
!1229 = !DILocation(line: 219, column: 1, scope: !1169, inlinedAt: !1210)
!1230 = !DILocation(line: 343, column: 10, scope: !1028, inlinedAt: !1043)
!1231 = !DILocalVariable(name: "nums", arg: 1, scope: !1232, file: !3, line: 189, type: !284)
!1232 = distinct !DISubprogram(name: "computesizes", scope: !3, file: !3, line: 189, type: !1233, isLocal: true, isDefinition: true, scopeLine: 189, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1235)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{!90, !284, !284}
!1235 = !{!1231, !1236, !1237, !1238, !1239, !1240, !1241}
!1236 = !DILocalVariable(name: "narray", arg: 2, scope: !1232, file: !3, line: 189, type: !284)
!1237 = !DILocalVariable(name: "i", scope: !1232, file: !3, line: 190, type: !90)
!1238 = !DILocalVariable(name: "twotoi", scope: !1232, file: !3, line: 191, type: !90)
!1239 = !DILocalVariable(name: "a", scope: !1232, file: !3, line: 192, type: !90)
!1240 = !DILocalVariable(name: "na", scope: !1232, file: !3, line: 193, type: !90)
!1241 = !DILocalVariable(name: "n", scope: !1232, file: !3, line: 194, type: !90)
!1242 = !DILocation(line: 189, column: 30, scope: !1232, inlinedAt: !1243)
!1243 = distinct !DILocation(line: 346, column: 8, scope: !1028, inlinedAt: !1043)
!1244 = !DILocation(line: 192, column: 7, scope: !1232, inlinedAt: !1243)
!1245 = !DILocation(line: 193, column: 7, scope: !1232, inlinedAt: !1243)
!1246 = !DILocation(line: 194, column: 7, scope: !1232, inlinedAt: !1243)
!1247 = !DILocation(line: 190, column: 7, scope: !1232, inlinedAt: !1243)
!1248 = !DILocation(line: 191, column: 7, scope: !1232, inlinedAt: !1243)
!1249 = !DILocation(line: 195, column: 36, scope: !1250, inlinedAt: !1243)
!1250 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 195, column: 3)
!1251 = distinct !DILexicalBlock(scope: !1232, file: !3, line: 195, column: 3)
!1252 = !DILocation(line: 195, column: 3, scope: !1251, inlinedAt: !1243)
!1253 = !DILocation(line: 196, column: 9, scope: !1254, inlinedAt: !1243)
!1254 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 196, column: 9)
!1255 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 195, column: 65)
!1256 = !DILocation(line: 196, column: 17, scope: !1254, inlinedAt: !1243)
!1257 = !DILocation(line: 196, column: 9, scope: !1255, inlinedAt: !1243)
!1258 = !DILocation(line: 197, column: 9, scope: !1259, inlinedAt: !1243)
!1259 = distinct !DILexicalBlock(scope: !1254, file: !3, line: 196, column: 22)
!1260 = !DILocation(line: 198, column: 13, scope: !1261, inlinedAt: !1243)
!1261 = distinct !DILexicalBlock(scope: !1259, file: !3, line: 198, column: 11)
!1262 = !DILocation(line: 198, column: 11, scope: !1259, inlinedAt: !1243)
!1263 = !DILocation(line: 0, scope: !1232, inlinedAt: !1243)
!1264 = !DILocation(line: 203, column: 11, scope: !1265, inlinedAt: !1243)
!1265 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 203, column: 9)
!1266 = !DILocation(line: 203, column: 9, scope: !1255, inlinedAt: !1243)
!1267 = !DILocation(line: 195, column: 48, scope: !1250, inlinedAt: !1243)
!1268 = !DILocation(line: 195, column: 59, scope: !1250, inlinedAt: !1243)
!1269 = !DILocation(line: 195, column: 33, scope: !1250, inlinedAt: !1243)
!1270 = distinct !{!1270, !1271, !1272}
!1271 = !DILocation(line: 195, column: 3, scope: !1251)
!1272 = !DILocation(line: 204, column: 3, scope: !1251)
!1273 = !DILocation(line: 207, column: 3, scope: !1232, inlinedAt: !1243)
!1274 = !DILocation(line: 334, column: 15, scope: !1028, inlinedAt: !1043)
!1275 = !DILocation(line: 341, column: 12, scope: !1028, inlinedAt: !1043)
!1276 = !DILocation(line: 344, column: 11, scope: !1028, inlinedAt: !1043)
!1277 = !DILocation(line: 348, column: 33, scope: !1028, inlinedAt: !1043)
!1278 = !DILocation(line: 348, column: 3, scope: !1028, inlinedAt: !1043)
!1279 = !DILocation(line: 349, column: 1, scope: !1028, inlinedAt: !1043)
!1280 = !DILocation(line: 494, column: 30, scope: !608, inlinedAt: !1281)
!1281 = distinct !DILocation(line: 406, column: 14, scope: !1044)
!1282 = !DILocation(line: 494, column: 40, scope: !608, inlinedAt: !1281)
!1283 = !DILocation(line: 494, column: 57, scope: !608, inlinedAt: !1281)
!1284 = !DILocation(line: 495, column: 21, scope: !608, inlinedAt: !1281)
!1285 = !DILocation(line: 495, column: 17, scope: !608, inlinedAt: !1281)
!1286 = !DILocation(line: 496, column: 6, scope: !608, inlinedAt: !1281)
!1287 = !DILocation(line: 496, column: 12, scope: !608, inlinedAt: !1281)
!1288 = !DILocation(line: 497, column: 9, scope: !624, inlinedAt: !1281)
!1289 = !DILocation(line: 497, column: 7, scope: !608, inlinedAt: !1281)
!1290 = !DILocation(line: 500, column: 9, scope: !627, inlinedAt: !1281)
!1291 = !DILocation(line: 500, column: 9, scope: !628, inlinedAt: !1281)
!1292 = !DILocation(line: 500, column: 23, scope: !627, inlinedAt: !1281)
!1293 = !DILocation(line: 501, column: 33, scope: !632, inlinedAt: !1281)
!1294 = !DILocation(line: 501, column: 14, scope: !627, inlinedAt: !1281)
!1295 = !DILocation(line: 502, column: 7, scope: !632, inlinedAt: !1281)
!1296 = !DILocation(line: 503, column: 12, scope: !628, inlinedAt: !1281)
!1297 = !DILocation(line: 503, column: 5, scope: !628, inlinedAt: !1281)
!1298 = !DILocation(line: 403, column: 11, scope: !1024)
!1299 = !DILocation(line: 409, column: 30, scope: !1024)
!1300 = !DILocation(line: 409, column: 14, scope: !1024)
!1301 = !DILocation(line: 402, column: 11, scope: !1024)
!1302 = !DILocation(line: 410, column: 16, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 410, column: 9)
!1304 = !DILocation(line: 410, column: 9, scope: !1024)
!1305 = !DILocation(line: 0, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1303, file: !3, line: 410, column: 23)
!1307 = !DILocation(line: 412, column: 14, scope: !1306)
!1308 = !DILocation(line: 412, column: 28, scope: !1306)
!1309 = !DILocation(line: 412, column: 7, scope: !1306)
!1310 = distinct !{!1310, !1309, !1311}
!1311 = !DILocation(line: 412, column: 44, scope: !1306)
!1312 = !DILocation(line: 413, column: 21, scope: !1306)
!1313 = !DILocation(line: 414, column: 12, scope: !1306)
!1314 = !{i64 0, i64 8, !1315, i64 0, i64 8, !1315, i64 0, i64 8, !795, i64 0, i64 4, !808, i64 8, i64 4, !808, i64 16, i64 8, !1315, i64 16, i64 8, !1315, i64 16, i64 8, !795, i64 16, i64 4, !808, i64 24, i64 4, !808, i64 32, i64 8, !1315, i64 16, i64 8, !1315, i64 16, i64 8, !1315, i64 16, i64 8, !795, i64 16, i64 4, !808, i64 24, i64 4, !808}
!1315 = !{!427, !427, i64 0}
!1316 = !DILocation(line: 415, column: 7, scope: !1306)
!1317 = !DILocation(line: 415, column: 17, scope: !1306)
!1318 = !DILocation(line: 416, column: 7, scope: !1306)
!1319 = !DILocation(line: 417, column: 5, scope: !1306)
!1320 = !DILocation(line: 420, column: 18, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1303, file: !3, line: 418, column: 10)
!1322 = !DILocation(line: 420, column: 7, scope: !1321)
!1323 = !DILocation(line: 420, column: 16, scope: !1321)
!1324 = !DILocation(line: 421, column: 17, scope: !1321)
!1325 = !DILocation(line: 0, scope: !628, inlinedAt: !1281)
!1326 = !DILocation(line: 505, column: 1, scope: !608, inlinedAt: !1281)
!1327 = !DILocation(line: 425, column: 3, scope: !1017)
!1328 = !DILocation(line: 425, column: 26, scope: !1017)
!1329 = !DILocation(line: 425, column: 53, scope: !1017)
!1330 = !DILocation(line: 425, column: 43, scope: !1017)
!1331 = !DILocation(line: 425, column: 46, scope: !1017)
!1332 = !DILocation(line: 426, column: 3, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1334, file: !3, line: 426, column: 3)
!1334 = distinct !DILexicalBlock(scope: !1017, file: !3, line: 426, column: 3)
!1335 = !DILocation(line: 426, column: 3, scope: !1334)
!1336 = !DILocation(line: 428, column: 10, scope: !1017)
!1337 = !DILocation(line: 428, column: 3, scope: !1017)
!1338 = !DILocation(line: 0, scope: !1044)
!1339 = !DILocation(line: 429, column: 1, scope: !1017)
!1340 = distinct !DISubprogram(name: "luaH_setnum", scope: !3, file: !3, line: 508, type: !1341, isLocal: false, isDefinition: true, scopeLine: 508, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1343)
!1341 = !DISubroutineType(types: !1342)
!1342 = !{!101, !91, !9, !90}
!1343 = !{!1344, !1345, !1346, !1347, !1348, !1351}
!1344 = !DILocalVariable(name: "L", arg: 1, scope: !1340, file: !3, line: 508, type: !91)
!1345 = !DILocalVariable(name: "t", arg: 2, scope: !1340, file: !3, line: 508, type: !9)
!1346 = !DILocalVariable(name: "key", arg: 3, scope: !1340, file: !3, line: 508, type: !90)
!1347 = !DILocalVariable(name: "p", scope: !1340, file: !3, line: 509, type: !365)
!1348 = !DILocalVariable(name: "k", scope: !1349, file: !3, line: 513, type: !102)
!1349 = distinct !DILexicalBlock(scope: !1350, file: !3, line: 512, column: 8)
!1350 = distinct !DILexicalBlock(scope: !1340, file: !3, line: 510, column: 7)
!1351 = !DILocalVariable(name: "i_o", scope: !1352, file: !3, line: 514, type: !101)
!1352 = distinct !DILexicalBlock(scope: !1349, file: !3, line: 514, column: 5)
!1353 = !DILocation(line: 85, column: 16, scope: !768, inlinedAt: !1354)
!1354 = distinct !DILocation(line: 441, column: 15, scope: !764, inlinedAt: !1355)
!1355 = distinct !DILocation(line: 509, column: 21, scope: !1340)
!1356 = !DILocation(line: 508, column: 33, scope: !1340)
!1357 = !DILocation(line: 508, column: 43, scope: !1340)
!1358 = !DILocation(line: 508, column: 50, scope: !1340)
!1359 = !DILocation(line: 435, column: 35, scope: !757, inlinedAt: !1355)
!1360 = !DILocation(line: 435, column: 42, scope: !757, inlinedAt: !1355)
!1361 = !DILocation(line: 437, column: 7, scope: !765, inlinedAt: !1355)
!1362 = !DILocation(line: 437, column: 35, scope: !765, inlinedAt: !1355)
!1363 = !DILocation(line: 437, column: 33, scope: !765, inlinedAt: !1355)
!1364 = !DILocation(line: 437, column: 7, scope: !757, inlinedAt: !1355)
!1365 = !DILocation(line: 438, column: 16, scope: !765, inlinedAt: !1355)
!1366 = !DILocation(line: 438, column: 13, scope: !765, inlinedAt: !1355)
!1367 = !DILocation(line: 438, column: 5, scope: !765, inlinedAt: !1355)
!1368 = !DILocation(line: 440, column: 21, scope: !764, inlinedAt: !1355)
!1369 = !DILocation(line: 440, column: 16, scope: !764, inlinedAt: !1355)
!1370 = !DILocation(line: 84, column: 36, scope: !768, inlinedAt: !1354)
!1371 = !DILocation(line: 84, column: 50, scope: !768, inlinedAt: !1354)
!1372 = !DILocation(line: 85, column: 3, scope: !768, inlinedAt: !1354)
!1373 = !DILocation(line: 87, column: 7, scope: !799, inlinedAt: !1354)
!1374 = !DILocation(line: 87, column: 7, scope: !768, inlinedAt: !1354)
!1375 = !DILocation(line: 88, column: 12, scope: !799, inlinedAt: !1354)
!1376 = !DILocation(line: 88, column: 5, scope: !799, inlinedAt: !1354)
!1377 = !DILocation(line: 89, column: 3, scope: !768, inlinedAt: !1354)
!1378 = !DILocation(line: 86, column: 7, scope: !768, inlinedAt: !1354)
!1379 = !DILocation(line: 90, column: 41, scope: !806, inlinedAt: !1354)
!1380 = !DILocation(line: 90, column: 38, scope: !806, inlinedAt: !1354)
!1381 = !DILocation(line: 91, column: 10, scope: !768, inlinedAt: !1354)
!1382 = !DILocation(line: 91, column: 3, scope: !768, inlinedAt: !1354)
!1383 = !DILocation(line: 0, scope: !768, inlinedAt: !1354)
!1384 = !DILocation(line: 92, column: 1, scope: !768, inlinedAt: !1354)
!1385 = !DILocation(line: 441, column: 11, scope: !764, inlinedAt: !1355)
!1386 = !DILocation(line: 442, column: 5, scope: !764, inlinedAt: !1355)
!1387 = !DILocation(line: 0, scope: !817, inlinedAt: !1355)
!1388 = !DILocation(line: 443, column: 11, scope: !817, inlinedAt: !1355)
!1389 = !DILocation(line: 443, column: 31, scope: !817, inlinedAt: !1355)
!1390 = !DILocation(line: 443, column: 34, scope: !817, inlinedAt: !1355)
!1391 = !DILocation(line: 443, column: 11, scope: !818, inlinedAt: !1355)
!1392 = !DILocation(line: 444, column: 16, scope: !817, inlinedAt: !1355)
!1393 = !DILocation(line: 444, column: 9, scope: !817, inlinedAt: !1355)
!1394 = !DILocation(line: 445, column: 16, scope: !817, inlinedAt: !1355)
!1395 = !DILocation(line: 446, column: 5, scope: !818, inlinedAt: !1355)
!1396 = !DILocation(line: 449, column: 1, scope: !757, inlinedAt: !1355)
!1397 = !DILocation(line: 509, column: 17, scope: !1340)
!1398 = !DILocation(line: 510, column: 7, scope: !1340)
!1399 = !DILocation(line: 510, column: 9, scope: !1350)
!1400 = !DILocation(line: 514, column: 5, scope: !1352)
!1401 = !DILocation(line: 513, column: 5, scope: !1349)
!1402 = !DILocation(line: 513, column: 12, scope: !1349)
!1403 = !DILocation(line: 515, column: 12, scope: !1349)
!1404 = !DILocation(line: 516, column: 3, scope: !1350)
!1405 = !DILocation(line: 0, scope: !1349)
!1406 = !DILocation(line: 517, column: 1, scope: !1340)
!1407 = distinct !DISubprogram(name: "luaH_setstr", scope: !3, file: !3, line: 520, type: !1408, isLocal: false, isDefinition: true, scopeLine: 520, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1410)
!1408 = !DISubroutineType(types: !1409)
!1409 = !{!101, !91, !9, !189}
!1410 = !{!1411, !1412, !1413, !1414, !1415, !1418}
!1411 = !DILocalVariable(name: "L", arg: 1, scope: !1407, file: !3, line: 520, type: !91)
!1412 = !DILocalVariable(name: "t", arg: 2, scope: !1407, file: !3, line: 520, type: !9)
!1413 = !DILocalVariable(name: "key", arg: 3, scope: !1407, file: !3, line: 520, type: !189)
!1414 = !DILocalVariable(name: "p", scope: !1407, file: !3, line: 521, type: !365)
!1415 = !DILocalVariable(name: "k", scope: !1416, file: !3, line: 525, type: !102)
!1416 = distinct !DILexicalBlock(scope: !1417, file: !3, line: 524, column: 8)
!1417 = distinct !DILexicalBlock(scope: !1407, file: !3, line: 522, column: 7)
!1418 = !DILocalVariable(name: "i_o", scope: !1419, file: !3, line: 526, type: !101)
!1419 = distinct !DILexicalBlock(scope: !1416, file: !3, line: 526, column: 5)
!1420 = !DILocation(line: 520, column: 33, scope: !1407)
!1421 = !DILocation(line: 520, column: 43, scope: !1407)
!1422 = !DILocation(line: 520, column: 55, scope: !1407)
!1423 = !DILocation(line: 455, column: 35, scope: !830, inlinedAt: !1424)
!1424 = distinct !DILocation(line: 521, column: 21, scope: !1407)
!1425 = !DILocation(line: 455, column: 47, scope: !830, inlinedAt: !1424)
!1426 = !DILocation(line: 456, column: 13, scope: !830, inlinedAt: !1424)
!1427 = !DILocation(line: 456, column: 9, scope: !830, inlinedAt: !1424)
!1428 = !DILocation(line: 457, column: 3, scope: !830, inlinedAt: !1424)
!1429 = !DILocation(line: 0, scope: !843, inlinedAt: !1424)
!1430 = !DILocation(line: 458, column: 9, scope: !843, inlinedAt: !1424)
!1431 = !DILocation(line: 458, column: 29, scope: !843, inlinedAt: !1424)
!1432 = !DILocation(line: 458, column: 32, scope: !843, inlinedAt: !1424)
!1433 = !DILocation(line: 458, column: 52, scope: !843, inlinedAt: !1424)
!1434 = !DILocation(line: 458, column: 9, scope: !844, inlinedAt: !1424)
!1435 = !DILocation(line: 460, column: 14, scope: !843, inlinedAt: !1424)
!1436 = !DILocation(line: 461, column: 3, scope: !844, inlinedAt: !1424)
!1437 = !DILocation(line: 463, column: 1, scope: !830, inlinedAt: !1424)
!1438 = !DILocation(line: 521, column: 17, scope: !1407)
!1439 = !DILocation(line: 522, column: 7, scope: !1407)
!1440 = !DILocation(line: 459, column: 14, scope: !843, inlinedAt: !1424)
!1441 = !DILocation(line: 522, column: 9, scope: !1417)
!1442 = !DILocation(line: 525, column: 5, scope: !1416)
!1443 = !DILocation(line: 526, column: 5, scope: !1419)
!1444 = !DILocation(line: 525, column: 12, scope: !1416)
!1445 = !DILocation(line: 527, column: 12, scope: !1416)
!1446 = !DILocation(line: 528, column: 3, scope: !1417)
!1447 = !DILocation(line: 0, scope: !1416)
!1448 = !DILocation(line: 529, column: 1, scope: !1407)
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
!1460 = !DILocation(line: 85, column: 16, scope: !768, inlinedAt: !1461)
!1461 = distinct !DILocation(line: 441, column: 15, scope: !764, inlinedAt: !1462)
!1462 = distinct !DILocation(line: 536, column: 11, scope: !1463, inlinedAt: !1472)
!1463 = distinct !DISubprogram(name: "unbound_search", scope: !3, file: !3, line: 532, type: !1464, isLocal: true, isDefinition: true, scopeLine: 532, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1466)
!1464 = !DISubroutineType(types: !1465)
!1465 = !{!90, !9, !50}
!1466 = !{!1467, !1468, !1469, !1470}
!1467 = !DILocalVariable(name: "t", arg: 1, scope: !1463, file: !3, line: 532, type: !9)
!1468 = !DILocalVariable(name: "j", arg: 2, scope: !1463, file: !3, line: 532, type: !50)
!1469 = !DILocalVariable(name: "i", scope: !1463, file: !3, line: 533, type: !50)
!1470 = !DILocalVariable(name: "m", scope: !1471, file: !3, line: 548, type: !50)
!1471 = distinct !DILexicalBlock(scope: !1463, file: !3, line: 547, column: 21)
!1472 = distinct !DILocation(line: 575, column: 15, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1457, file: !3, line: 573, column: 12)
!1474 = !DILocation(line: 85, column: 16, scope: !768, inlinedAt: !1475)
!1475 = distinct !DILocation(line: 441, column: 15, scope: !764, inlinedAt: !1476)
!1476 = distinct !DILocation(line: 542, column: 15, scope: !1477, inlinedAt: !1472)
!1477 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 539, column: 42)
!1478 = distinct !DILexicalBlock(scope: !1479, file: !3, line: 539, column: 9)
!1479 = distinct !DILexicalBlock(scope: !1463, file: !3, line: 536, column: 39)
!1480 = !DILocation(line: 85, column: 16, scope: !768, inlinedAt: !1481)
!1481 = distinct !DILocation(line: 441, column: 15, scope: !764, inlinedAt: !1482)
!1482 = distinct !DILocation(line: 549, column: 9, scope: !1483, inlinedAt: !1472)
!1483 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 549, column: 9)
!1484 = !DILocation(line: 560, column: 23, scope: !1449)
!1485 = !DILocation(line: 561, column: 23, scope: !1449)
!1486 = !DILocation(line: 561, column: 16, scope: !1449)
!1487 = !DILocation(line: 562, column: 9, scope: !1457)
!1488 = !DILocation(line: 562, column: 13, scope: !1457)
!1489 = !DILocation(line: 562, column: 16, scope: !1457)
!1490 = !DILocation(line: 562, column: 7, scope: !1449)
!1491 = !DILocation(line: 564, column: 18, scope: !1456)
!1492 = !DILocation(line: 565, column: 18, scope: !1456)
!1493 = !DILocation(line: 565, column: 5, scope: !1456)
!1494 = !DILocation(line: 566, column: 26, scope: !1459)
!1495 = !DILocation(line: 566, column: 29, scope: !1459)
!1496 = !DILocation(line: 566, column: 20, scope: !1459)
!1497 = !DILocation(line: 567, column: 11, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1459, file: !3, line: 567, column: 11)
!1499 = !DILocation(line: 567, column: 38, scope: !1498)
!1500 = !DILocation(line: 565, column: 14, scope: !1456)
!1501 = distinct !{!1501, !1493, !1502}
!1502 = !DILocation(line: 569, column: 5, scope: !1456)
!1503 = !DILocation(line: 573, column: 15, scope: !1473)
!1504 = !DILocation(line: 573, column: 20, scope: !1473)
!1505 = !DILocation(line: 573, column: 12, scope: !1457)
!1506 = !DILocation(line: 532, column: 35, scope: !1463, inlinedAt: !1472)
!1507 = !DILocation(line: 532, column: 51, scope: !1463, inlinedAt: !1472)
!1508 = !DILocation(line: 533, column: 16, scope: !1463, inlinedAt: !1472)
!1509 = !DILocation(line: 534, column: 4, scope: !1463, inlinedAt: !1472)
!1510 = !DILocation(line: 536, column: 3, scope: !1463, inlinedAt: !1472)
!1511 = !DILocation(line: 437, column: 35, scope: !765, inlinedAt: !1462)
!1512 = !DILocation(line: 0, scope: !1479, inlinedAt: !1472)
!1513 = !DILocation(line: 435, column: 35, scope: !757, inlinedAt: !1462)
!1514 = !DILocation(line: 435, column: 42, scope: !757, inlinedAt: !1462)
!1515 = !DILocation(line: 437, column: 7, scope: !765, inlinedAt: !1462)
!1516 = !DILocation(line: 437, column: 33, scope: !765, inlinedAt: !1462)
!1517 = !DILocation(line: 437, column: 7, scope: !757, inlinedAt: !1462)
!1518 = !DILocation(line: 438, column: 16, scope: !765, inlinedAt: !1462)
!1519 = !DILocation(line: 438, column: 13, scope: !765, inlinedAt: !1462)
!1520 = !DILocation(line: 438, column: 5, scope: !765, inlinedAt: !1462)
!1521 = !DILocation(line: 440, column: 21, scope: !764, inlinedAt: !1462)
!1522 = !DILocation(line: 440, column: 16, scope: !764, inlinedAt: !1462)
!1523 = !DILocation(line: 84, column: 36, scope: !768, inlinedAt: !1461)
!1524 = !DILocation(line: 84, column: 50, scope: !768, inlinedAt: !1461)
!1525 = !DILocation(line: 85, column: 3, scope: !768, inlinedAt: !1461)
!1526 = !DILocation(line: 87, column: 7, scope: !799, inlinedAt: !1461)
!1527 = !DILocation(line: 87, column: 7, scope: !768, inlinedAt: !1461)
!1528 = !DILocation(line: 89, column: 3, scope: !768, inlinedAt: !1461)
!1529 = !DILocation(line: 86, column: 7, scope: !768, inlinedAt: !1461)
!1530 = !DILocation(line: 90, column: 41, scope: !806, inlinedAt: !1461)
!1531 = !DILocation(line: 90, column: 38, scope: !806, inlinedAt: !1461)
!1532 = !DILocation(line: 91, column: 10, scope: !768, inlinedAt: !1461)
!1533 = !DILocation(line: 91, column: 3, scope: !768, inlinedAt: !1461)
!1534 = !DILocation(line: 0, scope: !768, inlinedAt: !1461)
!1535 = !DILocation(line: 92, column: 1, scope: !768, inlinedAt: !1461)
!1536 = !DILocation(line: 441, column: 11, scope: !764, inlinedAt: !1462)
!1537 = !DILocation(line: 442, column: 5, scope: !764, inlinedAt: !1462)
!1538 = !DILocation(line: 0, scope: !817, inlinedAt: !1462)
!1539 = !DILocation(line: 443, column: 11, scope: !817, inlinedAt: !1462)
!1540 = !DILocation(line: 443, column: 31, scope: !817, inlinedAt: !1462)
!1541 = !DILocation(line: 443, column: 34, scope: !817, inlinedAt: !1462)
!1542 = !DILocation(line: 443, column: 11, scope: !818, inlinedAt: !1462)
!1543 = !DILocation(line: 444, column: 16, scope: !817, inlinedAt: !1462)
!1544 = !DILocation(line: 444, column: 9, scope: !817, inlinedAt: !1462)
!1545 = !DILocation(line: 445, column: 16, scope: !817, inlinedAt: !1462)
!1546 = !DILocation(line: 446, column: 5, scope: !818, inlinedAt: !1462)
!1547 = !DILocation(line: 449, column: 1, scope: !757, inlinedAt: !1462)
!1548 = !DILocation(line: 536, column: 11, scope: !1463, inlinedAt: !1472)
!1549 = !DILocation(line: 547, column: 12, scope: !1463, inlinedAt: !1472)
!1550 = !DILocation(line: 547, column: 16, scope: !1463, inlinedAt: !1472)
!1551 = !DILocation(line: 547, column: 3, scope: !1463, inlinedAt: !1472)
!1552 = !DILocation(line: 538, column: 7, scope: !1479, inlinedAt: !1472)
!1553 = !DILocation(line: 539, column: 11, scope: !1478, inlinedAt: !1472)
!1554 = !DILocation(line: 539, column: 9, scope: !1479, inlinedAt: !1472)
!1555 = distinct !{!1555, !1556, !1557}
!1556 = !DILocation(line: 536, column: 3, scope: !1463)
!1557 = !DILocation(line: 545, column: 3, scope: !1463)
!1558 = !DILocation(line: 437, column: 7, scope: !765, inlinedAt: !1476)
!1559 = !DILocation(line: 0, scope: !1477, inlinedAt: !1472)
!1560 = !DILocation(line: 435, column: 35, scope: !757, inlinedAt: !1476)
!1561 = !DILocation(line: 435, column: 42, scope: !757, inlinedAt: !1476)
!1562 = !DILocation(line: 437, column: 35, scope: !765, inlinedAt: !1476)
!1563 = !DILocation(line: 437, column: 33, scope: !765, inlinedAt: !1476)
!1564 = !DILocation(line: 437, column: 7, scope: !757, inlinedAt: !1476)
!1565 = !DILocation(line: 438, column: 16, scope: !765, inlinedAt: !1476)
!1566 = !DILocation(line: 438, column: 13, scope: !765, inlinedAt: !1476)
!1567 = !DILocation(line: 438, column: 5, scope: !765, inlinedAt: !1476)
!1568 = !DILocation(line: 440, column: 21, scope: !764, inlinedAt: !1476)
!1569 = !DILocation(line: 440, column: 16, scope: !764, inlinedAt: !1476)
!1570 = !DILocation(line: 84, column: 36, scope: !768, inlinedAt: !1475)
!1571 = !DILocation(line: 84, column: 50, scope: !768, inlinedAt: !1475)
!1572 = !DILocation(line: 85, column: 3, scope: !768, inlinedAt: !1475)
!1573 = !DILocation(line: 87, column: 7, scope: !799, inlinedAt: !1475)
!1574 = !DILocation(line: 87, column: 7, scope: !768, inlinedAt: !1475)
!1575 = !DILocation(line: 89, column: 3, scope: !768, inlinedAt: !1475)
!1576 = !DILocation(line: 86, column: 7, scope: !768, inlinedAt: !1475)
!1577 = !DILocation(line: 90, column: 41, scope: !806, inlinedAt: !1475)
!1578 = !DILocation(line: 90, column: 38, scope: !806, inlinedAt: !1475)
!1579 = !DILocation(line: 91, column: 10, scope: !768, inlinedAt: !1475)
!1580 = !DILocation(line: 91, column: 3, scope: !768, inlinedAt: !1475)
!1581 = !DILocation(line: 0, scope: !768, inlinedAt: !1475)
!1582 = !DILocation(line: 92, column: 1, scope: !768, inlinedAt: !1475)
!1583 = !DILocation(line: 441, column: 11, scope: !764, inlinedAt: !1476)
!1584 = !DILocation(line: 442, column: 5, scope: !764, inlinedAt: !1476)
!1585 = !DILocation(line: 0, scope: !817, inlinedAt: !1476)
!1586 = !DILocation(line: 443, column: 11, scope: !817, inlinedAt: !1476)
!1587 = !DILocation(line: 443, column: 31, scope: !817, inlinedAt: !1476)
!1588 = !DILocation(line: 443, column: 34, scope: !817, inlinedAt: !1476)
!1589 = !DILocation(line: 443, column: 11, scope: !818, inlinedAt: !1476)
!1590 = !DILocation(line: 444, column: 16, scope: !817, inlinedAt: !1476)
!1591 = !DILocation(line: 444, column: 9, scope: !817, inlinedAt: !1476)
!1592 = !DILocation(line: 445, column: 16, scope: !817, inlinedAt: !1476)
!1593 = !DILocation(line: 446, column: 5, scope: !818, inlinedAt: !1476)
!1594 = !DILocation(line: 449, column: 1, scope: !757, inlinedAt: !1476)
!1595 = !DILocation(line: 542, column: 15, scope: !1477, inlinedAt: !1472)
!1596 = !DILocation(line: 542, column: 44, scope: !1477, inlinedAt: !1472)
!1597 = !DILocation(line: 542, column: 7, scope: !1477, inlinedAt: !1472)
!1598 = distinct !{!1598, !1599, !1600}
!1599 = !DILocation(line: 542, column: 7, scope: !1477)
!1600 = !DILocation(line: 542, column: 44, scope: !1477)
!1601 = !DILocation(line: 548, column: 24, scope: !1471, inlinedAt: !1472)
!1602 = !DILocation(line: 548, column: 27, scope: !1471, inlinedAt: !1472)
!1603 = !DILocation(line: 548, column: 18, scope: !1471, inlinedAt: !1472)
!1604 = !DILocation(line: 435, column: 35, scope: !757, inlinedAt: !1482)
!1605 = !DILocation(line: 435, column: 42, scope: !757, inlinedAt: !1482)
!1606 = !DILocation(line: 437, column: 7, scope: !765, inlinedAt: !1482)
!1607 = !DILocation(line: 437, column: 35, scope: !765, inlinedAt: !1482)
!1608 = !DILocation(line: 437, column: 33, scope: !765, inlinedAt: !1482)
!1609 = !DILocation(line: 437, column: 7, scope: !757, inlinedAt: !1482)
!1610 = !DILocation(line: 438, column: 16, scope: !765, inlinedAt: !1482)
!1611 = !DILocation(line: 438, column: 13, scope: !765, inlinedAt: !1482)
!1612 = !DILocation(line: 438, column: 5, scope: !765, inlinedAt: !1482)
!1613 = !DILocation(line: 440, column: 21, scope: !764, inlinedAt: !1482)
!1614 = !DILocation(line: 440, column: 16, scope: !764, inlinedAt: !1482)
!1615 = !DILocation(line: 84, column: 36, scope: !768, inlinedAt: !1481)
!1616 = !DILocation(line: 84, column: 50, scope: !768, inlinedAt: !1481)
!1617 = !DILocation(line: 85, column: 3, scope: !768, inlinedAt: !1481)
!1618 = !DILocation(line: 87, column: 7, scope: !799, inlinedAt: !1481)
!1619 = !DILocation(line: 87, column: 7, scope: !768, inlinedAt: !1481)
!1620 = !DILocation(line: 89, column: 3, scope: !768, inlinedAt: !1481)
!1621 = !DILocation(line: 86, column: 7, scope: !768, inlinedAt: !1481)
!1622 = !DILocation(line: 90, column: 41, scope: !806, inlinedAt: !1481)
!1623 = !DILocation(line: 90, column: 38, scope: !806, inlinedAt: !1481)
!1624 = !DILocation(line: 91, column: 10, scope: !768, inlinedAt: !1481)
!1625 = !DILocation(line: 91, column: 3, scope: !768, inlinedAt: !1481)
!1626 = !DILocation(line: 0, scope: !768, inlinedAt: !1481)
!1627 = !DILocation(line: 92, column: 1, scope: !768, inlinedAt: !1481)
!1628 = !DILocation(line: 441, column: 11, scope: !764, inlinedAt: !1482)
!1629 = !DILocation(line: 442, column: 5, scope: !764, inlinedAt: !1482)
!1630 = !DILocation(line: 0, scope: !817, inlinedAt: !1482)
!1631 = !DILocation(line: 443, column: 11, scope: !817, inlinedAt: !1482)
!1632 = !DILocation(line: 443, column: 31, scope: !817, inlinedAt: !1482)
!1633 = !DILocation(line: 443, column: 34, scope: !817, inlinedAt: !1482)
!1634 = !DILocation(line: 443, column: 11, scope: !818, inlinedAt: !1482)
!1635 = !DILocation(line: 444, column: 16, scope: !817, inlinedAt: !1482)
!1636 = !DILocation(line: 444, column: 9, scope: !817, inlinedAt: !1482)
!1637 = !DILocation(line: 445, column: 16, scope: !817, inlinedAt: !1482)
!1638 = !DILocation(line: 446, column: 5, scope: !818, inlinedAt: !1482)
!1639 = !DILocation(line: 449, column: 1, scope: !757, inlinedAt: !1482)
!1640 = !DILocation(line: 549, column: 9, scope: !1483, inlinedAt: !1472)
!1641 = !DILocation(line: 549, column: 37, scope: !1483, inlinedAt: !1472)
!1642 = distinct !{!1642, !1643, !1644}
!1643 = !DILocation(line: 547, column: 3, scope: !1463)
!1644 = !DILocation(line: 551, column: 3, scope: !1463)
!1645 = !DILocation(line: 0, scope: !1463, inlinedAt: !1472)
!1646 = !DILocation(line: 553, column: 1, scope: !1463, inlinedAt: !1472)
!1647 = !DILocation(line: 575, column: 8, scope: !1473)
!1648 = !DILocation(line: 0, scope: !1473)
!1649 = !DILocation(line: 576, column: 1, scope: !1449)
