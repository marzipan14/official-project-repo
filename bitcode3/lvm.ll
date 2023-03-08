; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lvm.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lvm.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lua_TValue = type { %union.Value, i32 }
%union.Value = type { %union.GCObject* }
%union.GCObject = type { %struct.lua_State }
%struct.lua_State = type { %union.GCObject*, i8, i8, i8, %struct.lua_TValue*, %struct.lua_TValue*, %struct.global_State*, %struct.CallInfo*, i32*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.CallInfo*, %struct.CallInfo*, i32, i32, i16, i16, i8, i8, i32, i32, void (%struct.lua_State*, %struct.lua_Debug*)*, %struct.lua_TValue, %struct.lua_TValue, %union.GCObject*, %union.GCObject*, %struct.lua_longjmp*, i64 }
%struct.global_State = type { %struct.stringtable, i8* (i8*, i8*, i64, i64)*, i8*, i8, i8, i32, %union.GCObject*, %union.GCObject**, %union.GCObject*, %union.GCObject*, %union.GCObject*, %union.GCObject*, %struct.Mbuffer, i64, i64, i64, i64, i32, i32, {}*, %struct.lua_TValue, %struct.lua_State*, %struct.UpVal, [9 x %struct.Table*], [17 x %union.TString*] }
%struct.stringtable = type { %union.GCObject**, i32, i32 }
%struct.Mbuffer = type { i8*, i64, i64 }
%struct.UpVal = type { %union.GCObject*, i8, i8, %struct.lua_TValue*, %union.anon }
%union.anon = type { %struct.lua_TValue }
%struct.Table = type { %union.GCObject*, i8, i8, i8, i8, %struct.Table*, %struct.lua_TValue*, %struct.Node*, %struct.Node*, %union.GCObject*, i32 }
%struct.Node = type { %struct.lua_TValue, %union.TKey }
%union.TKey = type { %struct.anon.1 }
%struct.anon.1 = type { %union.Value, i32, %struct.Node* }
%union.TString = type { %struct.anon }
%struct.anon = type { %union.GCObject*, i8, i8, i8, i32, i64 }
%struct.CallInfo = type { %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*, i32*, i32, i32 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, [60 x i8], i32 }
%struct.lua_longjmp = type opaque
%struct.GCheader = type { %union.GCObject*, i8, i8 }
%struct.anon.0 = type { %union.GCObject*, i8, i8, %struct.Table*, %struct.Table*, i64 }
%struct.LClosure = type { %union.GCObject*, i8, i8, i8, i8, %union.GCObject*, %struct.Table*, %struct.Proto*, [1 x %struct.UpVal*] }
%struct.Proto = type { %union.GCObject*, i8, i8, %struct.lua_TValue*, i32*, %struct.Proto**, i32*, %struct.LocVar*, %union.TString**, %union.TString*, i32, i32, i32, i32, i32, i32, i32, i32, %union.GCObject*, i8, i8, i8, i8 }
%struct.LocVar = type { %union.TString*, i32, i32 }
%union.Closure = type { %struct.CClosure }
%struct.CClosure = type { %union.GCObject*, i8, i8, i8, i8, %union.GCObject*, %struct.Table*, i32 (%struct.lua_State*)*, [1 x %struct.lua_TValue] }

@.str = private unnamed_addr constant [6 x i8] c"%.14g\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"loop in gettable\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"loop in settable\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"string length overflow\00", align 1
@luaO_nilobject_ = external hidden constant %struct.lua_TValue, align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"get length of\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"'for' initial value must be a number\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"'for' limit must be a number\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"'for' step must be a number\00", align 1

; Function Attrs: noredzone nounwind
define hidden %struct.lua_TValue* @luaV_tonumber(%struct.lua_TValue* readonly, %struct.lua_TValue*) local_unnamed_addr #0 !dbg !405 {
  %3 = alloca double, align 8
  %4 = bitcast double* %3 to i8*, !dbg !420
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #4, !dbg !420
  %5 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %0, i64 0, i32 1, !dbg !421
  %6 = load i32, i32* %5, align 8, !dbg !421, !tbaa !423
  switch i32 %6, label %19 [
    i32 3, label %20
    i32 4, label %7
  ], !dbg !428

; <label>:7:                                      ; preds = %2
  %8 = bitcast %struct.lua_TValue* %0 to %union.TString**, !dbg !429
  %9 = load %union.TString*, %union.TString** %8, align 8, !dbg !429, !tbaa !430
  %10 = getelementptr inbounds %union.TString, %union.TString* %9, i64 1, !dbg !429
  %11 = bitcast %union.TString* %10 to i8*, !dbg !429
  %12 = call i32 @luaO_str2d(i8* nonnull %11, double* nonnull %3) #5, !dbg !432
  %13 = icmp eq i32 %12, 0, !dbg !432
  br i1 %13, label %19, label %14, !dbg !433

; <label>:14:                                     ; preds = %7
  %15 = bitcast double* %3 to i64*, !dbg !434
  %16 = load i64, i64* %15, align 8, !dbg !434, !tbaa !435
  %17 = bitcast %struct.lua_TValue* %1 to i64*, !dbg !434
  store i64 %16, i64* %17, align 8, !dbg !434, !tbaa !430
  %18 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1, i64 0, i32 1, !dbg !434
  store i32 3, i32* %18, align 8, !dbg !434, !tbaa !423
  br label %20, !dbg !437

; <label>:19:                                     ; preds = %2, %7
  br label %20, !dbg !438

; <label>:20:                                     ; preds = %2, %19, %14
  %21 = phi %struct.lua_TValue* [ %1, %14 ], [ null, %19 ], [ %0, %2 ], !dbg !439
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #4, !dbg !440
  ret %struct.lua_TValue* %21, !dbg !440
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare hidden i32 @luaO_str2d(i8*, double*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define hidden i32 @luaV_tostring(%struct.lua_State*, %struct.lua_TValue* nocapture) local_unnamed_addr #0 !dbg !441 {
  %3 = alloca [32 x i8], align 16
  %4 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1, i64 0, i32 1, !dbg !458
  %5 = load i32, i32* %4, align 8, !dbg !458, !tbaa !423
  %6 = icmp eq i32 %5, 3, !dbg !458
  br i1 %6, label %7, label %15, !dbg !459

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0, !dbg !460
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #4, !dbg !460
  %9 = bitcast %struct.lua_TValue* %1 to double*, !dbg !462
  %10 = load double, double* %9, align 8, !dbg !462, !tbaa !430
  %11 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), double %10) #5, !dbg !464
  %12 = call i64 @strlen(i8* nonnull %8) #5, !dbg !465
  %13 = call %union.TString* @luaS_newlstr(%struct.lua_State* %0, i8* nonnull %8, i64 %12) #5, !dbg !465
  %14 = bitcast %struct.lua_TValue* %1 to %union.TString**, !dbg !465
  store %union.TString* %13, %union.TString** %14, align 8, !dbg !465, !tbaa !430
  store i32 4, i32* %4, align 8, !dbg !465, !tbaa !423
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #4, !dbg !466
  br label %15

; <label>:15:                                     ; preds = %2, %7
  %16 = phi i32 [ 1, %7 ], [ 0, %2 ], !dbg !467
  ret i32 %16, !dbg !468
}

; Function Attrs: noredzone
declare dso_local i32 @sprintf(i8*, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden %union.TString* @luaS_newlstr(%struct.lua_State*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define hidden void @luaV_gettable(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*) local_unnamed_addr #0 !dbg !469 {
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %6 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1, i64 0, i32 1
  %7 = load i32, i32* %6, align 8, !dbg !498, !tbaa !423
  br label %10, !dbg !499

; <label>:8:                                      ; preds = %56
  %9 = icmp ult i32 %61, 100, !dbg !500
  br i1 %9, label %10, label %116, !dbg !499, !llvm.loop !501

; <label>:10:                                     ; preds = %4, %8
  %11 = phi i32 [ %7, %4 ], [ %57, %8 ], !dbg !498
  %12 = phi %struct.lua_TValue* [ %1, %4 ], [ %59, %8 ]
  %13 = phi i32 [ 0, %4 ], [ %61, %8 ]
  %14 = icmp eq i32 %11, 5, !dbg !498
  br i1 %14, label %15, label %46, !dbg !503

; <label>:15:                                     ; preds = %10
  %16 = bitcast %struct.lua_TValue* %12 to %struct.Table**, !dbg !504
  %17 = load %struct.Table*, %struct.Table** %16, align 8, !dbg !504, !tbaa !430
  %18 = tail call %struct.lua_TValue* @luaH_get(%struct.Table* %17, %struct.lua_TValue* %2) #5, !dbg !506
  %19 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 0, i32 1, !dbg !508
  %20 = load i32, i32* %19, align 8, !dbg !508, !tbaa !423
  %21 = icmp eq i32 %20, 0, !dbg !508
  br i1 %21, label %22, label %39, !dbg !509

; <label>:22:                                     ; preds = %15
  %23 = getelementptr inbounds %struct.Table, %struct.Table* %17, i64 0, i32 5, !dbg !510
  %24 = load %struct.Table*, %struct.Table** %23, align 8, !dbg !510, !tbaa !511
  %25 = icmp eq %struct.Table* %24, null, !dbg !510
  br i1 %25, label %39, label %26, !dbg !510

; <label>:26:                                     ; preds = %22
  %27 = getelementptr inbounds %struct.Table, %struct.Table* %24, i64 0, i32 3, !dbg !510
  %28 = load i8, i8* %27, align 2, !dbg !510, !tbaa !514
  %29 = and i8 %28, 1, !dbg !510
  %30 = icmp eq i8 %29, 0, !dbg !510
  br i1 %30, label %31, label %39, !dbg !510

; <label>:31:                                     ; preds = %26
  %32 = load %struct.global_State*, %struct.global_State** %5, align 8, !dbg !510, !tbaa !515
  %33 = getelementptr inbounds %struct.global_State, %struct.global_State* %32, i64 0, i32 24, i64 0, !dbg !510
  %34 = load %union.TString*, %union.TString** %33, align 8, !dbg !510, !tbaa !519
  %35 = tail call %struct.lua_TValue* @luaT_gettm(%struct.Table* nonnull %24, i32 0, %union.TString* %34) #5, !dbg !510
  %36 = icmp eq %struct.lua_TValue* %35, null, !dbg !521
  br i1 %36, label %39, label %37, !dbg !522

; <label>:37:                                     ; preds = %31
  %38 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %35, i64 0, i32 1, !dbg !523
  br label %52, !dbg !522

; <label>:39:                                     ; preds = %26, %22, %15, %31
  %40 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 0, i32 1, !dbg !508
  %41 = bitcast %struct.lua_TValue* %18 to i64*, !dbg !525
  %42 = bitcast %struct.lua_TValue* %3 to i64*, !dbg !525
  %43 = load i64, i64* %41, align 8, !dbg !525
  store i64 %43, i64* %42, align 8, !dbg !525
  %44 = load i32, i32* %40, align 8, !dbg !525, !tbaa !423
  %45 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3, i64 0, i32 1, !dbg !525
  store i32 %44, i32* %45, align 8, !dbg !525, !tbaa !423
  br label %117

; <label>:46:                                     ; preds = %10
  %47 = tail call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* %0, %struct.lua_TValue* nonnull %12, i32 0) #5, !dbg !526
  %48 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %47, i64 0, i32 1, !dbg !526
  %49 = load i32, i32* %48, align 8, !dbg !526, !tbaa !423
  %50 = icmp eq i32 %49, 0, !dbg !526
  br i1 %50, label %51, label %56, !dbg !528

; <label>:51:                                     ; preds = %46
  tail call void @luaG_typeerror(%struct.lua_State* %0, %struct.lua_TValue* nonnull %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !529
  br label %52, !dbg !529

; <label>:52:                                     ; preds = %51, %37
  %53 = phi i32* [ %48, %51 ], [ %38, %37 ]
  %54 = phi %struct.lua_TValue* [ %47, %51 ], [ %35, %37 ]
  %55 = load i32, i32* %53, align 8, !dbg !523, !tbaa !423
  br label %56, !dbg !523

; <label>:56:                                     ; preds = %52, %46
  %57 = phi i32 [ %55, %52 ], [ %49, %46 ], !dbg !523
  %58 = phi i32* [ %53, %52 ], [ %48, %46 ], !dbg !523
  %59 = phi %struct.lua_TValue* [ %54, %52 ], [ %47, %46 ], !dbg !530
  %60 = icmp eq i32 %57, 6, !dbg !523
  %61 = add nuw nsw i32 %13, 1, !dbg !531
  br i1 %60, label %62, label %8, !dbg !532

; <label>:62:                                     ; preds = %56
  %63 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %12, i64 0, i32 1, !dbg !498
  %64 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 10, !dbg !562
  %65 = bitcast %struct.lua_TValue** %64 to i64*, !dbg !562
  %66 = load i64, i64* %65, align 8, !dbg !562, !tbaa !563
  %67 = ptrtoint %struct.lua_TValue* %3 to i64, !dbg !562
  %68 = sub i64 %67, %66, !dbg !562
  %69 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !565
  %70 = load %struct.lua_TValue*, %struct.lua_TValue** %69, align 8, !dbg !565, !tbaa !566
  %71 = bitcast %struct.lua_TValue* %59 to i64*, !dbg !565
  %72 = bitcast %struct.lua_TValue* %70 to i64*, !dbg !565
  %73 = load i64, i64* %71, align 8, !dbg !565
  store i64 %73, i64* %72, align 8, !dbg !565
  %74 = load i32, i32* %58, align 8, !dbg !565, !tbaa !423
  %75 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %70, i64 0, i32 1, !dbg !565
  store i32 %74, i32* %75, align 8, !dbg !565, !tbaa !423
  %76 = load %struct.lua_TValue*, %struct.lua_TValue** %69, align 8, !dbg !567, !tbaa !566
  %77 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %76, i64 1, !dbg !567
  %78 = bitcast %struct.lua_TValue* %12 to i64*, !dbg !567
  %79 = bitcast %struct.lua_TValue* %77 to i64*, !dbg !567
  %80 = load i64, i64* %78, align 8, !dbg !567
  store i64 %80, i64* %79, align 8, !dbg !567
  %81 = load i32, i32* %63, align 8, !dbg !567, !tbaa !423
  %82 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %76, i64 1, i32 1, !dbg !567
  store i32 %81, i32* %82, align 8, !dbg !567, !tbaa !423
  %83 = load %struct.lua_TValue*, %struct.lua_TValue** %69, align 8, !dbg !568, !tbaa !566
  %84 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %83, i64 2, !dbg !568
  %85 = bitcast %struct.lua_TValue* %2 to i64*, !dbg !568
  %86 = bitcast %struct.lua_TValue* %84 to i64*, !dbg !568
  %87 = load i64, i64* %85, align 8, !dbg !568
  store i64 %87, i64* %86, align 8, !dbg !568
  %88 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i64 0, i32 1, !dbg !568
  %89 = load i32, i32* %88, align 8, !dbg !568, !tbaa !423
  %90 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %83, i64 2, i32 1, !dbg !568
  store i32 %89, i32* %90, align 8, !dbg !568, !tbaa !423
  %91 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 9, !dbg !569
  %92 = bitcast %struct.lua_TValue** %91 to i64*, !dbg !569
  %93 = load i64, i64* %92, align 8, !dbg !569, !tbaa !571
  %94 = bitcast %struct.lua_TValue** %69 to i64*, !dbg !569
  %95 = load i64, i64* %94, align 8, !dbg !569, !tbaa !566
  %96 = sub i64 %93, %95, !dbg !569
  %97 = icmp slt i64 %96, 49, !dbg !569
  %98 = inttoptr i64 %95 to %struct.lua_TValue*, !dbg !572
  br i1 %97, label %99, label %101, !dbg !572

; <label>:99:                                     ; preds = %62
  tail call void @luaD_growstack(%struct.lua_State* nonnull %0, i32 3) #5, !dbg !569
  %100 = load %struct.lua_TValue*, %struct.lua_TValue** %69, align 8, !dbg !573, !tbaa !566
  br label %101, !dbg !569

; <label>:101:                                    ; preds = %62, %99
  %102 = phi %struct.lua_TValue* [ %98, %62 ], [ %100, %99 ], !dbg !573
  %103 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %102, i64 3, !dbg !573
  store %struct.lua_TValue* %103, %struct.lua_TValue** %69, align 8, !dbg !573, !tbaa !566
  tail call void @luaD_call(%struct.lua_State* nonnull %0, %struct.lua_TValue* %102, i32 1) #5, !dbg !574
  %104 = bitcast %struct.lua_TValue** %64 to i8**, !dbg !575
  %105 = load i8*, i8** %104, align 8, !dbg !575, !tbaa !563
  %106 = getelementptr inbounds i8, i8* %105, i64 %68, !dbg !575
  %107 = load %struct.lua_TValue*, %struct.lua_TValue** %69, align 8, !dbg !576, !tbaa !566
  %108 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %107, i64 -1, !dbg !576
  store %struct.lua_TValue* %108, %struct.lua_TValue** %69, align 8, !dbg !576, !tbaa !566
  %109 = bitcast %struct.lua_TValue* %108 to i64*, !dbg !577
  %110 = bitcast i8* %106 to i64*, !dbg !577
  %111 = load i64, i64* %109, align 8, !dbg !577
  store i64 %111, i64* %110, align 8, !dbg !577
  %112 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %107, i64 -1, i32 1, !dbg !577
  %113 = load i32, i32* %112, align 8, !dbg !577, !tbaa !423
  %114 = getelementptr inbounds i8, i8* %106, i64 8, !dbg !577
  %115 = bitcast i8* %114 to i32*, !dbg !577
  store i32 %113, i32* %115, align 8, !dbg !577, !tbaa !423
  br label %117, !dbg !578

; <label>:116:                                    ; preds = %8
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0)) #5, !dbg !579
  br label %117, !dbg !580

; <label>:117:                                    ; preds = %39, %101, %116
  ret void, !dbg !580
}

; Function Attrs: noredzone
declare hidden %struct.lua_TValue* @luaH_get(%struct.Table*, %struct.lua_TValue*) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden %struct.lua_TValue* @luaT_gettm(%struct.Table*, i32, %union.TString*) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State*, %struct.lua_TValue*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden void @luaG_typeerror(%struct.lua_State*, %struct.lua_TValue*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden void @luaG_runerror(%struct.lua_State*, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define hidden void @luaV_settable(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue* nocapture readonly) local_unnamed_addr #0 !dbg !581 {
  %5 = alloca %struct.lua_TValue, align 8
  %6 = bitcast %struct.lua_TValue* %5 to i8*, !dbg !609
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #4, !dbg !609
  %7 = bitcast %struct.lua_TValue* %5 to i64*
  %8 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %5, i64 0, i32 1
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %10 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1, i64 0, i32 1
  %11 = load i32, i32* %10, align 8, !dbg !611, !tbaa !423
  br label %12, !dbg !612

; <label>:12:                                     ; preds = %4, %127
  %13 = phi i32 [ %11, %4 ], [ %78, %127 ], !dbg !611
  %14 = phi %struct.lua_TValue* [ %1, %4 ], [ %5, %127 ]
  %15 = phi i32 [ 0, %4 ], [ %130, %127 ]
  %16 = icmp eq i32 %13, 5, !dbg !611
  br i1 %16, label %17, label %67, !dbg !613

; <label>:17:                                     ; preds = %12
  %18 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %14, i64 0, i32 0, i32 0, !dbg !614
  %19 = load %union.GCObject*, %union.GCObject** %18, align 8, !dbg !614, !tbaa !430
  %20 = bitcast %union.GCObject* %19 to %struct.Table*, !dbg !614
  %21 = call %struct.lua_TValue* @luaH_set(%struct.lua_State* %0, %struct.Table* %20, %struct.lua_TValue* %2) #5, !dbg !616
  %22 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %21, i64 0, i32 1, !dbg !618
  %23 = load i32, i32* %22, align 8, !dbg !618, !tbaa !423
  %24 = icmp eq i32 %23, 0, !dbg !618
  br i1 %24, label %25, label %43, !dbg !619

; <label>:25:                                     ; preds = %17
  %26 = getelementptr inbounds %union.GCObject, %union.GCObject* %19, i64 0, i32 0, i32 4, !dbg !620
  %27 = bitcast %struct.lua_TValue** %26 to %struct.Table**, !dbg !620
  %28 = load %struct.Table*, %struct.Table** %27, align 8, !dbg !620, !tbaa !511
  %29 = icmp eq %struct.Table* %28, null, !dbg !620
  br i1 %29, label %43, label %30, !dbg !620

; <label>:30:                                     ; preds = %25
  %31 = getelementptr inbounds %struct.Table, %struct.Table* %28, i64 0, i32 3, !dbg !620
  %32 = load i8, i8* %31, align 2, !dbg !620, !tbaa !514
  %33 = and i8 %32, 2, !dbg !620
  %34 = icmp eq i8 %33, 0, !dbg !620
  br i1 %34, label %35, label %43, !dbg !620

; <label>:35:                                     ; preds = %30
  %36 = load %struct.global_State*, %struct.global_State** %9, align 8, !dbg !620, !tbaa !515
  %37 = getelementptr inbounds %struct.global_State, %struct.global_State* %36, i64 0, i32 24, i64 1, !dbg !620
  %38 = load %union.TString*, %union.TString** %37, align 8, !dbg !620, !tbaa !519
  %39 = call %struct.lua_TValue* @luaT_gettm(%struct.Table* nonnull %28, i32 1, %union.TString* %38) #5, !dbg !620
  %40 = icmp eq %struct.lua_TValue* %39, null, !dbg !622
  br i1 %40, label %43, label %41, !dbg !623

; <label>:41:                                     ; preds = %35
  %42 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %39, i64 0, i32 1, !dbg !624
  br label %73, !dbg !623

; <label>:43:                                     ; preds = %30, %25, %35, %17
  %44 = bitcast %union.GCObject* %19 to %struct.Table*, !dbg !614
  %45 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %21, i64 0, i32 1, !dbg !618
  %46 = bitcast %struct.lua_TValue* %3 to i64*, !dbg !626
  %47 = bitcast %struct.lua_TValue* %21 to i64*, !dbg !626
  %48 = load i64, i64* %46, align 8, !dbg !626
  store i64 %48, i64* %47, align 8, !dbg !626
  %49 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3, i64 0, i32 1, !dbg !626
  %50 = load i32, i32* %49, align 8, !dbg !626, !tbaa !423
  store i32 %50, i32* %45, align 8, !dbg !626, !tbaa !423
  %51 = getelementptr inbounds %union.GCObject, %union.GCObject* %19, i64 0, i32 0, i32 3, !dbg !627
  store i8 0, i8* %51, align 2, !dbg !628, !tbaa !514
  %52 = load i32, i32* %49, align 8, !dbg !629, !tbaa !423
  %53 = icmp sgt i32 %52, 3, !dbg !629
  br i1 %53, label %54, label %133, !dbg !629

; <label>:54:                                     ; preds = %43
  %55 = bitcast %struct.lua_TValue* %3 to %struct.GCheader**, !dbg !629
  %56 = load %struct.GCheader*, %struct.GCheader** %55, align 8, !dbg !629, !tbaa !430
  %57 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %56, i64 0, i32 2, !dbg !629
  %58 = load i8, i8* %57, align 1, !dbg !629, !tbaa !430
  %59 = and i8 %58, 3, !dbg !629
  %60 = icmp eq i8 %59, 0, !dbg !629
  br i1 %60, label %133, label %61, !dbg !629

; <label>:61:                                     ; preds = %54
  %62 = getelementptr inbounds %union.GCObject, %union.GCObject* %19, i64 0, i32 0, i32 2, !dbg !629
  %63 = load i8, i8* %62, align 1, !dbg !629, !tbaa !430
  %64 = and i8 %63, 4, !dbg !629
  %65 = icmp eq i8 %64, 0, !dbg !629
  br i1 %65, label %133, label %66, !dbg !632

; <label>:66:                                     ; preds = %61
  call void @luaC_barrierback(%struct.lua_State* %0, %struct.Table* nonnull %44) #5, !dbg !629
  br label %133, !dbg !629

; <label>:67:                                     ; preds = %12
  %68 = call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* %0, %struct.lua_TValue* nonnull %14, i32 1) #5, !dbg !633
  %69 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %68, i64 0, i32 1, !dbg !633
  %70 = load i32, i32* %69, align 8, !dbg !633, !tbaa !423
  %71 = icmp eq i32 %70, 0, !dbg !633
  br i1 %71, label %72, label %77, !dbg !635

; <label>:72:                                     ; preds = %67
  call void @luaG_typeerror(%struct.lua_State* %0, %struct.lua_TValue* nonnull %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !636
  br label %73, !dbg !636

; <label>:73:                                     ; preds = %72, %41
  %74 = phi i32* [ %69, %72 ], [ %42, %41 ]
  %75 = phi %struct.lua_TValue* [ %68, %72 ], [ %39, %41 ]
  %76 = load i32, i32* %74, align 8, !dbg !624, !tbaa !423
  br label %77, !dbg !624

; <label>:77:                                     ; preds = %73, %67
  %78 = phi i32 [ %76, %73 ], [ %70, %67 ], !dbg !624
  %79 = phi i32* [ %74, %73 ], [ %69, %67 ], !dbg !624
  %80 = phi %struct.lua_TValue* [ %75, %73 ], [ %68, %67 ], !dbg !637
  %81 = icmp eq i32 %78, 6, !dbg !624
  br i1 %81, label %82, label %127, !dbg !638

; <label>:82:                                     ; preds = %77
  %83 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %14, i64 0, i32 1, !dbg !611
  %84 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !667
  %85 = load %struct.lua_TValue*, %struct.lua_TValue** %84, align 8, !dbg !667, !tbaa !566
  %86 = bitcast %struct.lua_TValue* %80 to i64*, !dbg !667
  %87 = bitcast %struct.lua_TValue* %85 to i64*, !dbg !667
  %88 = load i64, i64* %86, align 8, !dbg !667
  store i64 %88, i64* %87, align 8, !dbg !667
  %89 = load i32, i32* %79, align 8, !dbg !667, !tbaa !423
  %90 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %85, i64 0, i32 1, !dbg !667
  store i32 %89, i32* %90, align 8, !dbg !667, !tbaa !423
  %91 = load %struct.lua_TValue*, %struct.lua_TValue** %84, align 8, !dbg !668, !tbaa !566
  %92 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %91, i64 1, !dbg !668
  %93 = bitcast %struct.lua_TValue* %14 to i64*, !dbg !668
  %94 = bitcast %struct.lua_TValue* %92 to i64*, !dbg !668
  %95 = load i64, i64* %93, align 8, !dbg !668
  store i64 %95, i64* %94, align 8, !dbg !668
  %96 = load i32, i32* %83, align 8, !dbg !668, !tbaa !423
  %97 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %91, i64 1, i32 1, !dbg !668
  store i32 %96, i32* %97, align 8, !dbg !668, !tbaa !423
  %98 = load %struct.lua_TValue*, %struct.lua_TValue** %84, align 8, !dbg !669, !tbaa !566
  %99 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %98, i64 2, !dbg !669
  %100 = bitcast %struct.lua_TValue* %2 to i64*, !dbg !669
  %101 = bitcast %struct.lua_TValue* %99 to i64*, !dbg !669
  %102 = load i64, i64* %100, align 8, !dbg !669
  store i64 %102, i64* %101, align 8, !dbg !669
  %103 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i64 0, i32 1, !dbg !669
  %104 = load i32, i32* %103, align 8, !dbg !669, !tbaa !423
  %105 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %98, i64 2, i32 1, !dbg !669
  store i32 %104, i32* %105, align 8, !dbg !669, !tbaa !423
  %106 = load %struct.lua_TValue*, %struct.lua_TValue** %84, align 8, !dbg !670, !tbaa !566
  %107 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %106, i64 3, !dbg !670
  %108 = bitcast %struct.lua_TValue* %3 to i64*, !dbg !670
  %109 = bitcast %struct.lua_TValue* %107 to i64*, !dbg !670
  %110 = load i64, i64* %108, align 8, !dbg !670
  store i64 %110, i64* %109, align 8, !dbg !670
  %111 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3, i64 0, i32 1, !dbg !670
  %112 = load i32, i32* %111, align 8, !dbg !670, !tbaa !423
  %113 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %106, i64 3, i32 1, !dbg !670
  store i32 %112, i32* %113, align 8, !dbg !670, !tbaa !423
  %114 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 9, !dbg !671
  %115 = bitcast %struct.lua_TValue** %114 to i64*, !dbg !671
  %116 = load i64, i64* %115, align 8, !dbg !671, !tbaa !571
  %117 = bitcast %struct.lua_TValue** %84 to i64*, !dbg !671
  %118 = load i64, i64* %117, align 8, !dbg !671, !tbaa !566
  %119 = sub i64 %116, %118, !dbg !671
  %120 = icmp slt i64 %119, 65, !dbg !671
  %121 = inttoptr i64 %118 to %struct.lua_TValue*, !dbg !673
  br i1 %120, label %122, label %124, !dbg !673

; <label>:122:                                    ; preds = %82
  call void @luaD_growstack(%struct.lua_State* nonnull %0, i32 4) #5, !dbg !671
  %123 = load %struct.lua_TValue*, %struct.lua_TValue** %84, align 8, !dbg !674, !tbaa !566
  br label %124, !dbg !671

; <label>:124:                                    ; preds = %82, %122
  %125 = phi %struct.lua_TValue* [ %121, %82 ], [ %123, %122 ], !dbg !674
  %126 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %125, i64 4, !dbg !674
  store %struct.lua_TValue* %126, %struct.lua_TValue** %84, align 8, !dbg !674, !tbaa !566
  call void @luaD_call(%struct.lua_State* nonnull %0, %struct.lua_TValue* %125, i32 0) #5, !dbg !675
  br label %133, !dbg !676

; <label>:127:                                    ; preds = %77
  %128 = bitcast %struct.lua_TValue* %80 to i64*, !dbg !677
  %129 = load i64, i64* %128, align 8, !dbg !677
  store i64 %129, i64* %7, align 8, !dbg !677
  store i32 %78, i32* %8, align 8, !dbg !677, !tbaa !423
  %130 = add nuw nsw i32 %15, 1, !dbg !678
  %131 = icmp ult i32 %130, 100, !dbg !679
  br i1 %131, label %12, label %132, !dbg !612, !llvm.loop !680

; <label>:132:                                    ; preds = %127
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0)) #5, !dbg !682
  br label %133, !dbg !683

; <label>:133:                                    ; preds = %43, %66, %54, %61, %124, %132
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #4, !dbg !683
  ret void, !dbg !683
}

; Function Attrs: noredzone
declare hidden %struct.lua_TValue* @luaH_set(%struct.lua_State*, %struct.Table*, %struct.lua_TValue*) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden void @luaC_barrierback(%struct.lua_State*, %struct.Table*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define hidden i32 @luaV_lessthan(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*) local_unnamed_addr #0 !dbg !684 {
  %4 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1, i64 0, i32 1, !dbg !695
  %5 = load i32, i32* %4, align 8, !dbg !695, !tbaa !423
  %6 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i64 0, i32 1, !dbg !697
  %7 = load i32, i32* %6, align 8, !dbg !697, !tbaa !423
  %8 = icmp eq i32 %5, %7, !dbg !698
  br i1 %8, label %11, label %9, !dbg !699

; <label>:9:                                      ; preds = %3
  %10 = tail call i32 @luaG_ordererror(%struct.lua_State* %0, %struct.lua_TValue* nonnull %1, %struct.lua_TValue* nonnull %2) #5, !dbg !700
  br label %126, !dbg !701

; <label>:11:                                     ; preds = %3
  switch i32 %5, label %54 [
    i32 3, label %12
    i32 4, label %19
  ], !dbg !702

; <label>:12:                                     ; preds = %11
  %13 = bitcast %struct.lua_TValue* %1 to double*, !dbg !703
  %14 = load double, double* %13, align 8, !dbg !703, !tbaa !430
  %15 = bitcast %struct.lua_TValue* %2 to double*, !dbg !703
  %16 = load double, double* %15, align 8, !dbg !703, !tbaa !430
  %17 = fcmp olt double %14, %16, !dbg !703
  %18 = zext i1 %17 to i32, !dbg !703
  br label %126, !dbg !705

; <label>:19:                                     ; preds = %11
  %20 = bitcast %struct.lua_TValue* %1 to %union.TString**, !dbg !706
  %21 = load %union.TString*, %union.TString** %20, align 8, !dbg !706, !tbaa !430
  %22 = bitcast %struct.lua_TValue* %2 to %union.TString**, !dbg !708
  %23 = load %union.TString*, %union.TString** %22, align 8, !dbg !708, !tbaa !430
  %24 = getelementptr inbounds %union.TString, %union.TString* %21, i64 1, !dbg !731
  %25 = bitcast %union.TString* %24 to i8*, !dbg !731
  %26 = getelementptr inbounds %union.TString, %union.TString* %21, i64 0, i32 0, i32 5, !dbg !733
  %27 = load i64, i64* %26, align 8, !dbg !733, !tbaa !430
  %28 = getelementptr inbounds %union.TString, %union.TString* %23, i64 1, !dbg !735
  %29 = bitcast %union.TString* %28 to i8*, !dbg !735
  %30 = getelementptr inbounds %union.TString, %union.TString* %23, i64 0, i32 0, i32 5, !dbg !737
  %31 = load i64, i64* %30, align 8, !dbg !737, !tbaa !430
  %32 = tail call i32 @strcoll(i8* nonnull %25, i8* nonnull %29) #5, !dbg !739
  %33 = icmp eq i32 %32, 0, !dbg !741
  br i1 %33, label %34, label %51, !dbg !742

; <label>:34:                                     ; preds = %19, %43
  %35 = phi i64 [ %48, %43 ], [ %31, %19 ]
  %36 = phi i8* [ %47, %43 ], [ %29, %19 ]
  %37 = phi i64 [ %46, %43 ], [ %27, %19 ]
  %38 = phi i8* [ %45, %43 ], [ %25, %19 ]
  %39 = tail call i64 @strlen(i8* %38) #5, !dbg !743
  %40 = icmp eq i64 %39, %35, !dbg !745
  br i1 %40, label %51, label %41, !dbg !747

; <label>:41:                                     ; preds = %34
  %42 = icmp eq i64 %39, %37, !dbg !748
  br i1 %42, label %51, label %43, !dbg !750

; <label>:43:                                     ; preds = %41
  %44 = add i64 %39, 1, !dbg !751
  %45 = getelementptr inbounds i8, i8* %38, i64 %44, !dbg !752
  %46 = sub i64 %37, %44, !dbg !753
  %47 = getelementptr inbounds i8, i8* %36, i64 %44, !dbg !754
  %48 = sub i64 %35, %44, !dbg !755
  %49 = tail call i32 @strcoll(i8* %45, i8* %47) #5, !dbg !739
  %50 = icmp eq i32 %49, 0, !dbg !741
  br i1 %50, label %34, label %51, !dbg !742

; <label>:51:                                     ; preds = %41, %43, %34, %19
  %52 = phi i32 [ %32, %19 ], [ -1, %41 ], [ %49, %43 ], [ 0, %34 ]
  %53 = lshr i32 %52, 31, !dbg !756
  br label %126, !dbg !757

; <label>:54:                                     ; preds = %11
  %55 = tail call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* %0, %struct.lua_TValue* nonnull %1, i32 13) #5, !dbg !775
  %56 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %55, i64 0, i32 1, !dbg !777
  %57 = load i32, i32* %56, align 8, !dbg !777, !tbaa !423
  %58 = icmp eq i32 %57, 0, !dbg !777
  br i1 %58, label %124, label %59, !dbg !779

; <label>:59:                                     ; preds = %54
  %60 = tail call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* %0, %struct.lua_TValue* nonnull %2, i32 13) #5, !dbg !780
  %61 = tail call i32 @luaO_rawequalObj(%struct.lua_TValue* %55, %struct.lua_TValue* %60) #5, !dbg !782
  %62 = icmp eq i32 %61, 0, !dbg !782
  br i1 %62, label %124, label %63, !dbg !784

; <label>:63:                                     ; preds = %59
  %64 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !785
  %65 = load %struct.lua_TValue*, %struct.lua_TValue** %64, align 8, !dbg !785, !tbaa !566
  %66 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 10, !dbg !792
  %67 = bitcast %struct.lua_TValue** %66 to i64*, !dbg !792
  %68 = load i64, i64* %67, align 8, !dbg !792, !tbaa !563
  %69 = ptrtoint %struct.lua_TValue* %65 to i64, !dbg !792
  %70 = sub i64 %69, %68, !dbg !792
  %71 = bitcast %struct.lua_TValue* %55 to i64*, !dbg !794
  %72 = bitcast %struct.lua_TValue* %65 to i64*, !dbg !794
  %73 = load i64, i64* %71, align 8, !dbg !794
  store i64 %73, i64* %72, align 8, !dbg !794
  %74 = load i32, i32* %56, align 8, !dbg !794, !tbaa !423
  %75 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %65, i64 0, i32 1, !dbg !794
  store i32 %74, i32* %75, align 8, !dbg !794, !tbaa !423
  %76 = load %struct.lua_TValue*, %struct.lua_TValue** %64, align 8, !dbg !795, !tbaa !566
  %77 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %76, i64 1, !dbg !795
  %78 = bitcast %struct.lua_TValue* %1 to i64*, !dbg !795
  %79 = bitcast %struct.lua_TValue* %77 to i64*, !dbg !795
  %80 = load i64, i64* %78, align 8, !dbg !795
  store i64 %80, i64* %79, align 8, !dbg !795
  %81 = load i32, i32* %4, align 8, !dbg !795, !tbaa !423
  %82 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %76, i64 1, i32 1, !dbg !795
  store i32 %81, i32* %82, align 8, !dbg !795, !tbaa !423
  %83 = load %struct.lua_TValue*, %struct.lua_TValue** %64, align 8, !dbg !796, !tbaa !566
  %84 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %83, i64 2, !dbg !796
  %85 = bitcast %struct.lua_TValue* %2 to i64*, !dbg !796
  %86 = bitcast %struct.lua_TValue* %84 to i64*, !dbg !796
  %87 = load i64, i64* %85, align 8, !dbg !796
  store i64 %87, i64* %86, align 8, !dbg !796
  %88 = load i32, i32* %6, align 8, !dbg !796, !tbaa !423
  %89 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %83, i64 2, i32 1, !dbg !796
  store i32 %88, i32* %89, align 8, !dbg !796, !tbaa !423
  %90 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 9, !dbg !797
  %91 = bitcast %struct.lua_TValue** %90 to i64*, !dbg !797
  %92 = load i64, i64* %91, align 8, !dbg !797, !tbaa !571
  %93 = bitcast %struct.lua_TValue** %64 to i64*, !dbg !797
  %94 = load i64, i64* %93, align 8, !dbg !797, !tbaa !566
  %95 = sub i64 %92, %94, !dbg !797
  %96 = icmp slt i64 %95, 49, !dbg !797
  %97 = inttoptr i64 %94 to %struct.lua_TValue*, !dbg !798
  br i1 %96, label %98, label %100, !dbg !798

; <label>:98:                                     ; preds = %63
  tail call void @luaD_growstack(%struct.lua_State* nonnull %0, i32 3) #5, !dbg !797
  %99 = load %struct.lua_TValue*, %struct.lua_TValue** %64, align 8, !dbg !799, !tbaa !566
  br label %100, !dbg !797

; <label>:100:                                    ; preds = %63, %98
  %101 = phi %struct.lua_TValue* [ %97, %63 ], [ %99, %98 ], !dbg !799
  %102 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %101, i64 3, !dbg !799
  store %struct.lua_TValue* %102, %struct.lua_TValue** %64, align 8, !dbg !799, !tbaa !566
  tail call void @luaD_call(%struct.lua_State* nonnull %0, %struct.lua_TValue* %101, i32 1) #5, !dbg !800
  %103 = bitcast %struct.lua_TValue** %66 to i8**, !dbg !801
  %104 = load i8*, i8** %103, align 8, !dbg !801, !tbaa !563
  %105 = getelementptr inbounds i8, i8* %104, i64 %70, !dbg !801
  %106 = load %struct.lua_TValue*, %struct.lua_TValue** %64, align 8, !dbg !802, !tbaa !566
  %107 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %106, i64 -1, !dbg !802
  store %struct.lua_TValue* %107, %struct.lua_TValue** %64, align 8, !dbg !802, !tbaa !566
  %108 = bitcast %struct.lua_TValue* %107 to i64*, !dbg !803
  %109 = bitcast i8* %105 to i64*, !dbg !803
  %110 = load i64, i64* %108, align 8, !dbg !803
  store i64 %110, i64* %109, align 8, !dbg !803
  %111 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %106, i64 -1, i32 1, !dbg !803
  %112 = load i32, i32* %111, align 8, !dbg !803, !tbaa !423
  %113 = getelementptr inbounds i8, i8* %105, i64 8, !dbg !803
  %114 = bitcast i8* %113 to i32*, !dbg !803
  store i32 %112, i32* %114, align 8, !dbg !803, !tbaa !423
  %115 = load %struct.lua_TValue*, %struct.lua_TValue** %64, align 8, !dbg !804, !tbaa !566
  %116 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %115, i64 0, i32 1, !dbg !804
  %117 = load i32, i32* %116, align 8, !dbg !804, !tbaa !423
  switch i32 %117, label %123 [
    i32 0, label %126
    i32 1, label %118
  ], !dbg !804

; <label>:118:                                    ; preds = %100
  %119 = bitcast %struct.lua_TValue* %115 to i32*, !dbg !804
  %120 = load i32, i32* %119, align 8, !dbg !804, !tbaa !430
  %121 = icmp ne i32 %120, 0, !dbg !804
  %122 = zext i1 %121 to i32
  br label %126

; <label>:123:                                    ; preds = %100
  br label %126, !dbg !805

; <label>:124:                                    ; preds = %59, %54
  %125 = tail call i32 @luaG_ordererror(%struct.lua_State* %0, %struct.lua_TValue* nonnull %1, %struct.lua_TValue* nonnull %2) #5, !dbg !807
  br label %126, !dbg !808

; <label>:126:                                    ; preds = %123, %118, %100, %124, %51, %12, %9
  %127 = phi i32 [ %10, %9 ], [ %18, %12 ], [ %53, %51 ], [ %125, %124 ], [ 1, %123 ], [ %122, %118 ], [ %117, %100 ], !dbg !809
  ret i32 %127, !dbg !810
}

; Function Attrs: noredzone
declare hidden i32 @luaG_ordererror(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define hidden i32 @luaV_equalval(%struct.lua_State*, %struct.lua_TValue* nocapture readonly, %struct.lua_TValue* nocapture readonly) local_unnamed_addr #0 !dbg !811 {
  %4 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1, i64 0, i32 1, !dbg !820
  %5 = load i32, i32* %4, align 8, !dbg !820, !tbaa !423
  switch i32 %5, label %108 [
    i32 0, label %177
    i32 3, label %6
    i32 1, label %12
    i32 2, label %18
    i32 7, label %24
    i32 5, label %66
  ], !dbg !821

; <label>:6:                                      ; preds = %3
  %7 = bitcast %struct.lua_TValue* %1 to double*, !dbg !822
  %8 = load double, double* %7, align 8, !dbg !822, !tbaa !430
  %9 = bitcast %struct.lua_TValue* %2 to double*, !dbg !822
  %10 = load double, double* %9, align 8, !dbg !822, !tbaa !430
  %11 = fcmp oeq double %8, %10, !dbg !822
  br label %177, !dbg !824

; <label>:12:                                     ; preds = %3
  %13 = bitcast %struct.lua_TValue* %1 to i32*, !dbg !825
  %14 = load i32, i32* %13, align 8, !dbg !825, !tbaa !430
  %15 = bitcast %struct.lua_TValue* %2 to i32*, !dbg !826
  %16 = load i32, i32* %15, align 8, !dbg !826, !tbaa !430
  %17 = icmp eq i32 %14, %16, !dbg !827
  br label %177, !dbg !828

; <label>:18:                                     ; preds = %3
  %19 = bitcast %struct.lua_TValue* %1 to i8**, !dbg !829
  %20 = load i8*, i8** %19, align 8, !dbg !829, !tbaa !430
  %21 = bitcast %struct.lua_TValue* %2 to i8**, !dbg !830
  %22 = load i8*, i8** %21, align 8, !dbg !830, !tbaa !430
  %23 = icmp eq i8* %20, %22, !dbg !831
  br label %177, !dbg !832

; <label>:24:                                     ; preds = %3
  %25 = bitcast %struct.lua_TValue* %1 to %struct.anon.0**, !dbg !833
  %26 = load %struct.anon.0*, %struct.anon.0** %25, align 8, !dbg !833, !tbaa !430
  %27 = bitcast %struct.lua_TValue* %2 to %struct.anon.0**, !dbg !836
  %28 = load %struct.anon.0*, %struct.anon.0** %27, align 8, !dbg !836, !tbaa !430
  %29 = icmp eq %struct.anon.0* %26, %28, !dbg !837
  br i1 %29, label %177, label %30, !dbg !838

; <label>:30:                                     ; preds = %24
  %31 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %26, i64 0, i32 3, !dbg !839
  %32 = load %struct.Table*, %struct.Table** %31, align 8, !dbg !839, !tbaa !430
  %33 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %28, i64 0, i32 3, !dbg !840
  %34 = load %struct.Table*, %struct.Table** %33, align 8, !dbg !840, !tbaa !430
  %35 = icmp eq %struct.Table* %32, null, !dbg !856
  br i1 %35, label %177, label %36, !dbg !856

; <label>:36:                                     ; preds = %30
  %37 = getelementptr inbounds %struct.Table, %struct.Table* %32, i64 0, i32 3, !dbg !856
  %38 = load i8, i8* %37, align 2, !dbg !856, !tbaa !514
  %39 = and i8 %38, 16, !dbg !856
  %40 = icmp eq i8 %39, 0, !dbg !856
  br i1 %40, label %41, label %177, !dbg !856

; <label>:41:                                     ; preds = %36
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !856
  %43 = load %struct.global_State*, %struct.global_State** %42, align 8, !dbg !856, !tbaa !515
  %44 = getelementptr inbounds %struct.global_State, %struct.global_State* %43, i64 0, i32 24, i64 4, !dbg !856
  %45 = load %union.TString*, %union.TString** %44, align 8, !dbg !856, !tbaa !519
  %46 = tail call %struct.lua_TValue* @luaT_gettm(%struct.Table* nonnull %32, i32 4, %union.TString* %45) #5, !dbg !856
  %47 = icmp eq %struct.lua_TValue* %46, null, !dbg !858
  br i1 %47, label %177, label %48, !dbg !860

; <label>:48:                                     ; preds = %41
  %49 = icmp eq %struct.Table* %32, %34, !dbg !861
  br i1 %49, label %114, label %50, !dbg !863

; <label>:50:                                     ; preds = %48
  %51 = icmp eq %struct.Table* %34, null, !dbg !864
  br i1 %51, label %177, label %52, !dbg !864

; <label>:52:                                     ; preds = %50
  %53 = getelementptr inbounds %struct.Table, %struct.Table* %34, i64 0, i32 3, !dbg !864
  %54 = load i8, i8* %53, align 2, !dbg !864, !tbaa !514
  %55 = and i8 %54, 16, !dbg !864
  %56 = icmp eq i8 %55, 0, !dbg !864
  br i1 %56, label %57, label %177, !dbg !864

; <label>:57:                                     ; preds = %52
  %58 = load %struct.global_State*, %struct.global_State** %42, align 8, !dbg !864, !tbaa !515
  %59 = getelementptr inbounds %struct.global_State, %struct.global_State* %58, i64 0, i32 24, i64 4, !dbg !864
  %60 = load %union.TString*, %union.TString** %59, align 8, !dbg !864, !tbaa !519
  %61 = tail call %struct.lua_TValue* @luaT_gettm(%struct.Table* nonnull %34, i32 4, %union.TString* %60) #5, !dbg !864
  %62 = icmp eq %struct.lua_TValue* %61, null, !dbg !866
  br i1 %62, label %177, label %63, !dbg !868

; <label>:63:                                     ; preds = %57
  %64 = tail call i32 @luaO_rawequalObj(%struct.lua_TValue* nonnull %46, %struct.lua_TValue* nonnull %61) #5, !dbg !869
  %65 = icmp eq i32 %64, 0, !dbg !869
  br i1 %65, label %177, label %114

; <label>:66:                                     ; preds = %3
  %67 = bitcast %struct.lua_TValue* %1 to %struct.Table**, !dbg !871
  %68 = load %struct.Table*, %struct.Table** %67, align 8, !dbg !871, !tbaa !430
  %69 = bitcast %struct.lua_TValue* %2 to %struct.Table**, !dbg !874
  %70 = load %struct.Table*, %struct.Table** %69, align 8, !dbg !874, !tbaa !430
  %71 = icmp eq %struct.Table* %68, %70, !dbg !875
  br i1 %71, label %177, label %72, !dbg !876

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds %struct.Table, %struct.Table* %68, i64 0, i32 5, !dbg !877
  %74 = load %struct.Table*, %struct.Table** %73, align 8, !dbg !877, !tbaa !430
  %75 = getelementptr inbounds %struct.Table, %struct.Table* %70, i64 0, i32 5, !dbg !878
  %76 = load %struct.Table*, %struct.Table** %75, align 8, !dbg !878, !tbaa !430
  %77 = icmp eq %struct.Table* %74, null, !dbg !884
  br i1 %77, label %177, label %78, !dbg !884

; <label>:78:                                     ; preds = %72
  %79 = getelementptr inbounds %struct.Table, %struct.Table* %74, i64 0, i32 3, !dbg !884
  %80 = load i8, i8* %79, align 2, !dbg !884, !tbaa !514
  %81 = and i8 %80, 16, !dbg !884
  %82 = icmp eq i8 %81, 0, !dbg !884
  br i1 %82, label %83, label %177, !dbg !884

; <label>:83:                                     ; preds = %78
  %84 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !884
  %85 = load %struct.global_State*, %struct.global_State** %84, align 8, !dbg !884, !tbaa !515
  %86 = getelementptr inbounds %struct.global_State, %struct.global_State* %85, i64 0, i32 24, i64 4, !dbg !884
  %87 = load %union.TString*, %union.TString** %86, align 8, !dbg !884, !tbaa !519
  %88 = tail call %struct.lua_TValue* @luaT_gettm(%struct.Table* nonnull %74, i32 4, %union.TString* %87) #5, !dbg !884
  %89 = icmp eq %struct.lua_TValue* %88, null, !dbg !886
  br i1 %89, label %177, label %90, !dbg !887

; <label>:90:                                     ; preds = %83
  %91 = icmp eq %struct.Table* %74, %76, !dbg !888
  br i1 %91, label %114, label %92, !dbg !889

; <label>:92:                                     ; preds = %90
  %93 = icmp eq %struct.Table* %76, null, !dbg !890
  br i1 %93, label %177, label %94, !dbg !890

; <label>:94:                                     ; preds = %92
  %95 = getelementptr inbounds %struct.Table, %struct.Table* %76, i64 0, i32 3, !dbg !890
  %96 = load i8, i8* %95, align 2, !dbg !890, !tbaa !514
  %97 = and i8 %96, 16, !dbg !890
  %98 = icmp eq i8 %97, 0, !dbg !890
  br i1 %98, label %99, label %177, !dbg !890

; <label>:99:                                     ; preds = %94
  %100 = load %struct.global_State*, %struct.global_State** %84, align 8, !dbg !890, !tbaa !515
  %101 = getelementptr inbounds %struct.global_State, %struct.global_State* %100, i64 0, i32 24, i64 4, !dbg !890
  %102 = load %union.TString*, %union.TString** %101, align 8, !dbg !890, !tbaa !519
  %103 = tail call %struct.lua_TValue* @luaT_gettm(%struct.Table* nonnull %76, i32 4, %union.TString* %102) #5, !dbg !890
  %104 = icmp eq %struct.lua_TValue* %103, null, !dbg !892
  br i1 %104, label %177, label %105, !dbg !893

; <label>:105:                                    ; preds = %99
  %106 = tail call i32 @luaO_rawequalObj(%struct.lua_TValue* nonnull %88, %struct.lua_TValue* nonnull %103) #5, !dbg !894
  %107 = icmp eq i32 %106, 0, !dbg !894
  br i1 %107, label %177, label %114

; <label>:108:                                    ; preds = %3
  %109 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1, i64 0, i32 0, i32 0, !dbg !895
  %110 = load %union.GCObject*, %union.GCObject** %109, align 8, !dbg !895, !tbaa !430
  %111 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i64 0, i32 0, i32 0, !dbg !896
  %112 = load %union.GCObject*, %union.GCObject** %111, align 8, !dbg !896, !tbaa !430
  %113 = icmp eq %union.GCObject* %110, %112, !dbg !897
  br label %177, !dbg !898

; <label>:114:                                    ; preds = %48, %90, %63, %105
  %115 = phi %struct.lua_TValue* [ %46, %48 ], [ %46, %63 ], [ %88, %90 ], [ %88, %105 ], !dbg !899
  %116 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !901
  %117 = load %struct.lua_TValue*, %struct.lua_TValue** %116, align 8, !dbg !901, !tbaa !566
  %118 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 10, !dbg !908
  %119 = bitcast %struct.lua_TValue** %118 to i64*, !dbg !908
  %120 = load i64, i64* %119, align 8, !dbg !908, !tbaa !563
  %121 = ptrtoint %struct.lua_TValue* %117 to i64, !dbg !908
  %122 = sub i64 %121, %120, !dbg !908
  %123 = bitcast %struct.lua_TValue* %115 to i64*, !dbg !910
  %124 = bitcast %struct.lua_TValue* %117 to i64*, !dbg !910
  %125 = load i64, i64* %123, align 8, !dbg !910
  store i64 %125, i64* %124, align 8, !dbg !910
  %126 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %115, i64 0, i32 1, !dbg !910
  %127 = load i32, i32* %126, align 8, !dbg !910, !tbaa !423
  %128 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %117, i64 0, i32 1, !dbg !910
  store i32 %127, i32* %128, align 8, !dbg !910, !tbaa !423
  %129 = load %struct.lua_TValue*, %struct.lua_TValue** %116, align 8, !dbg !911, !tbaa !566
  %130 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %129, i64 1, !dbg !911
  %131 = bitcast %struct.lua_TValue* %1 to i64*, !dbg !911
  %132 = bitcast %struct.lua_TValue* %130 to i64*, !dbg !911
  %133 = load i64, i64* %131, align 8, !dbg !911
  store i64 %133, i64* %132, align 8, !dbg !911
  %134 = load i32, i32* %4, align 8, !dbg !911, !tbaa !423
  %135 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %129, i64 1, i32 1, !dbg !911
  store i32 %134, i32* %135, align 8, !dbg !911, !tbaa !423
  %136 = load %struct.lua_TValue*, %struct.lua_TValue** %116, align 8, !dbg !912, !tbaa !566
  %137 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %136, i64 2, !dbg !912
  %138 = bitcast %struct.lua_TValue* %2 to i64*, !dbg !912
  %139 = bitcast %struct.lua_TValue* %137 to i64*, !dbg !912
  %140 = load i64, i64* %138, align 8, !dbg !912
  store i64 %140, i64* %139, align 8, !dbg !912
  %141 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i64 0, i32 1, !dbg !912
  %142 = load i32, i32* %141, align 8, !dbg !912, !tbaa !423
  %143 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %136, i64 2, i32 1, !dbg !912
  store i32 %142, i32* %143, align 8, !dbg !912, !tbaa !423
  %144 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 9, !dbg !913
  %145 = bitcast %struct.lua_TValue** %144 to i64*, !dbg !913
  %146 = load i64, i64* %145, align 8, !dbg !913, !tbaa !571
  %147 = bitcast %struct.lua_TValue** %116 to i64*, !dbg !913
  %148 = load i64, i64* %147, align 8, !dbg !913, !tbaa !566
  %149 = sub i64 %146, %148, !dbg !913
  %150 = icmp slt i64 %149, 49, !dbg !913
  %151 = inttoptr i64 %148 to %struct.lua_TValue*, !dbg !914
  br i1 %150, label %152, label %154, !dbg !914

; <label>:152:                                    ; preds = %114
  tail call void @luaD_growstack(%struct.lua_State* nonnull %0, i32 3) #5, !dbg !913
  %153 = load %struct.lua_TValue*, %struct.lua_TValue** %116, align 8, !dbg !915, !tbaa !566
  br label %154, !dbg !913

; <label>:154:                                    ; preds = %114, %152
  %155 = phi %struct.lua_TValue* [ %151, %114 ], [ %153, %152 ], !dbg !915
  %156 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %155, i64 3, !dbg !915
  store %struct.lua_TValue* %156, %struct.lua_TValue** %116, align 8, !dbg !915, !tbaa !566
  tail call void @luaD_call(%struct.lua_State* nonnull %0, %struct.lua_TValue* %155, i32 1) #5, !dbg !916
  %157 = bitcast %struct.lua_TValue** %118 to i8**, !dbg !917
  %158 = load i8*, i8** %157, align 8, !dbg !917, !tbaa !563
  %159 = getelementptr inbounds i8, i8* %158, i64 %122, !dbg !917
  %160 = load %struct.lua_TValue*, %struct.lua_TValue** %116, align 8, !dbg !918, !tbaa !566
  %161 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %160, i64 -1, !dbg !918
  store %struct.lua_TValue* %161, %struct.lua_TValue** %116, align 8, !dbg !918, !tbaa !566
  %162 = bitcast %struct.lua_TValue* %161 to i64*, !dbg !919
  %163 = bitcast i8* %159 to i64*, !dbg !919
  %164 = load i64, i64* %162, align 8, !dbg !919
  store i64 %164, i64* %163, align 8, !dbg !919
  %165 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %160, i64 -1, i32 1, !dbg !919
  %166 = load i32, i32* %165, align 8, !dbg !919, !tbaa !423
  %167 = getelementptr inbounds i8, i8* %159, i64 8, !dbg !919
  %168 = bitcast i8* %167 to i32*, !dbg !919
  store i32 %166, i32* %168, align 8, !dbg !919, !tbaa !423
  %169 = load %struct.lua_TValue*, %struct.lua_TValue** %116, align 8, !dbg !920, !tbaa !566
  %170 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %169, i64 0, i32 1, !dbg !920
  %171 = load i32, i32* %170, align 8, !dbg !920, !tbaa !423
  switch i32 %171, label %176 [
    i32 0, label %177
    i32 1, label %172
  ], !dbg !920

; <label>:172:                                    ; preds = %154
  %173 = bitcast %struct.lua_TValue* %169 to i32*, !dbg !920
  %174 = load i32, i32* %173, align 8, !dbg !920, !tbaa !430
  %175 = icmp ne i32 %174, 0, !dbg !920
  br label %177

; <label>:176:                                    ; preds = %154
  br label %177, !dbg !921

; <label>:177:                                    ; preds = %105, %63, %94, %92, %78, %72, %99, %83, %52, %50, %36, %30, %57, %41, %172, %176, %154, %66, %24, %3, %108, %18, %12, %6
  %178 = phi i1 [ %113, %108 ], [ %23, %18 ], [ %17, %12 ], [ %11, %6 ], [ true, %3 ], [ true, %24 ], [ true, %66 ], [ false, %154 ], [ %175, %172 ], [ true, %176 ], [ false, %41 ], [ false, %57 ], [ false, %30 ], [ false, %36 ], [ false, %50 ], [ false, %52 ], [ false, %83 ], [ false, %99 ], [ false, %72 ], [ false, %78 ], [ false, %92 ], [ false, %94 ], [ false, %63 ], [ false, %105 ]
  %179 = zext i1 %178 to i32, !dbg !922
  ret i32 %179, !dbg !923
}

; Function Attrs: noredzone nounwind
define hidden void @luaV_concat(%struct.lua_State*, i32, i32) local_unnamed_addr #0 !dbg !924 {
  %4 = alloca [32 x i8], align 16
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5
  %6 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 10
  %8 = bitcast %struct.lua_TValue** %7 to i64*
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 9
  %11 = bitcast %struct.lua_TValue** %10 to i64*
  %12 = bitcast %struct.lua_TValue** %9 to i64*
  %13 = bitcast %struct.lua_TValue** %7 to i8**
  %14 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  br label %15, !dbg !959

; <label>:15:                                     ; preds = %178, %3
  %16 = phi i32 [ %2, %3 ], [ %182, %178 ]
  %17 = phi i32 [ %1, %3 ], [ %181, %178 ]
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8, !dbg !960, !tbaa !961
  %19 = sext i32 %16 to i64, !dbg !962
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 1, !dbg !962
  %21 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %20, i64 %19, !dbg !963
  %22 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %21, i64 -2, !dbg !966
  %23 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %22, i64 0, i32 1, !dbg !966
  %24 = load i32, i32* %23, align 8, !dbg !966, !tbaa !423
  %25 = add i32 %24, -3, !dbg !967
  %26 = icmp ult i32 %25, 2, !dbg !967
  %27 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %21, i64 -1, !dbg !968
  br i1 %26, label %28, label %38, !dbg !967

; <label>:28:                                     ; preds = %15
  %29 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %27, i64 0, i32 1, !dbg !971
  %30 = load i32, i32* %29, align 8, !dbg !971, !tbaa !423
  switch i32 %30, label %38 [
    i32 4, label %98
    i32 3, label %31
  ], !dbg !971

; <label>:31:                                     ; preds = %28
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #4, !dbg !972
  %32 = bitcast %struct.lua_TValue* %27 to double*, !dbg !973
  %33 = load double, double* %32, align 8, !dbg !973, !tbaa !430
  %34 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), double %33) #5, !dbg !975
  %35 = call i64 @strlen(i8* nonnull %6) #5, !dbg !976
  %36 = call %union.TString* @luaS_newlstr(%struct.lua_State* nonnull %0, i8* nonnull %6, i64 %35) #5, !dbg !976
  %37 = bitcast %struct.lua_TValue* %27 to %union.TString**, !dbg !976
  store %union.TString* %36, %union.TString** %37, align 8, !dbg !976, !tbaa !430
  store i32 4, i32* %29, align 8, !dbg !976, !tbaa !423
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #4, !dbg !977
  br label %98, !dbg !978

; <label>:38:                                     ; preds = %15, %28
  %39 = call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* nonnull %0, %struct.lua_TValue* nonnull %22, i32 15) #5, !dbg !995
  %40 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %39, i64 0, i32 1, !dbg !997
  %41 = load i32, i32* %40, align 8, !dbg !997, !tbaa !423
  %42 = icmp eq i32 %41, 0, !dbg !997
  br i1 %42, label %43, label %48, !dbg !999

; <label>:43:                                     ; preds = %38
  %44 = call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* nonnull %0, %struct.lua_TValue* nonnull %27, i32 15) #5, !dbg !1000
  %45 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %44, i64 0, i32 1
  %46 = load i32, i32* %45, align 8, !dbg !1001, !tbaa !423
  %47 = icmp eq i32 %46, 0, !dbg !1001
  br i1 %47, label %97, label %48, !dbg !1003

; <label>:48:                                     ; preds = %43, %38
  %49 = phi i32* [ %45, %43 ], [ %40, %38 ], !dbg !1004
  %50 = phi %struct.lua_TValue* [ %44, %43 ], [ %39, %38 ]
  %51 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %21, i64 -1, !dbg !1006
  %52 = load i64, i64* %8, align 8, !dbg !1012, !tbaa !563
  %53 = ptrtoint %struct.lua_TValue* %22 to i64, !dbg !1012
  %54 = sub i64 %53, %52, !dbg !1012
  %55 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8, !dbg !1004, !tbaa !566
  %56 = bitcast %struct.lua_TValue* %50 to i64*, !dbg !1004
  %57 = bitcast %struct.lua_TValue* %55 to i64*, !dbg !1004
  %58 = load i64, i64* %56, align 8, !dbg !1004
  store i64 %58, i64* %57, align 8, !dbg !1004
  %59 = load i32, i32* %49, align 8, !dbg !1004, !tbaa !423
  %60 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %55, i64 0, i32 1, !dbg !1004
  store i32 %59, i32* %60, align 8, !dbg !1004, !tbaa !423
  %61 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8, !dbg !1014, !tbaa !566
  %62 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %61, i64 1, !dbg !1014
  %63 = bitcast %struct.lua_TValue* %22 to i64*, !dbg !1014
  %64 = bitcast %struct.lua_TValue* %62 to i64*, !dbg !1014
  %65 = load i64, i64* %63, align 8, !dbg !1014
  store i64 %65, i64* %64, align 8, !dbg !1014
  %66 = load i32, i32* %23, align 8, !dbg !1014, !tbaa !423
  %67 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %61, i64 1, i32 1, !dbg !1014
  store i32 %66, i32* %67, align 8, !dbg !1014, !tbaa !423
  %68 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8, !dbg !1015, !tbaa !566
  %69 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %68, i64 2, !dbg !1015
  %70 = bitcast %struct.lua_TValue* %27 to i64*, !dbg !1015
  %71 = bitcast %struct.lua_TValue* %69 to i64*, !dbg !1015
  %72 = load i64, i64* %70, align 8, !dbg !1015
  store i64 %72, i64* %71, align 8, !dbg !1015
  %73 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %51, i64 0, i32 1, !dbg !1015
  %74 = load i32, i32* %73, align 8, !dbg !1015, !tbaa !423
  %75 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %68, i64 2, i32 1, !dbg !1015
  store i32 %74, i32* %75, align 8, !dbg !1015, !tbaa !423
  %76 = load i64, i64* %11, align 8, !dbg !1016, !tbaa !571
  %77 = load i64, i64* %12, align 8, !dbg !1016, !tbaa !566
  %78 = sub i64 %76, %77, !dbg !1016
  %79 = icmp slt i64 %78, 49, !dbg !1016
  %80 = inttoptr i64 %77 to %struct.lua_TValue*, !dbg !1017
  br i1 %79, label %81, label %83, !dbg !1017

; <label>:81:                                     ; preds = %48
  call void @luaD_growstack(%struct.lua_State* nonnull %0, i32 3) #5, !dbg !1016
  %82 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8, !dbg !1018, !tbaa !566
  br label %83, !dbg !1016

; <label>:83:                                     ; preds = %81, %48
  %84 = phi %struct.lua_TValue* [ %80, %48 ], [ %82, %81 ], !dbg !1018
  %85 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %84, i64 3, !dbg !1018
  store %struct.lua_TValue* %85, %struct.lua_TValue** %9, align 8, !dbg !1018, !tbaa !566
  call void @luaD_call(%struct.lua_State* nonnull %0, %struct.lua_TValue* %84, i32 1) #5, !dbg !1019
  %86 = load i8*, i8** %13, align 8, !dbg !1020, !tbaa !563
  %87 = getelementptr inbounds i8, i8* %86, i64 %54, !dbg !1020
  %88 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8, !dbg !1021, !tbaa !566
  %89 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %88, i64 -1, !dbg !1021
  store %struct.lua_TValue* %89, %struct.lua_TValue** %9, align 8, !dbg !1021, !tbaa !566
  %90 = bitcast %struct.lua_TValue* %89 to i64*, !dbg !1022
  %91 = bitcast i8* %87 to i64*, !dbg !1022
  %92 = load i64, i64* %90, align 8, !dbg !1022
  store i64 %92, i64* %91, align 8, !dbg !1022
  %93 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %88, i64 -1, i32 1, !dbg !1022
  %94 = load i32, i32* %93, align 8, !dbg !1022, !tbaa !423
  %95 = getelementptr inbounds i8, i8* %87, i64 8, !dbg !1022
  %96 = bitcast i8* %95 to i32*, !dbg !1022
  store i32 %94, i32* %96, align 8, !dbg !1022, !tbaa !423
  br label %178, !dbg !1023

; <label>:97:                                     ; preds = %43
  call void @luaG_concaterror(%struct.lua_State* nonnull %0, %struct.lua_TValue* nonnull %22, %struct.lua_TValue* nonnull %27) #5, !dbg !1024
  br label %178, !dbg !1024

; <label>:98:                                     ; preds = %28, %31
  %99 = bitcast %struct.lua_TValue* %27 to %struct.anon**, !dbg !1025
  %100 = load %struct.anon*, %struct.anon** %99, align 8, !dbg !1025, !tbaa !430
  %101 = getelementptr inbounds %struct.anon, %struct.anon* %100, i64 0, i32 5, !dbg !1026
  %102 = load i64, i64* %101, align 8, !dbg !1026, !tbaa !430
  %103 = icmp eq i64 %102, 0, !dbg !1027
  br i1 %103, label %108, label %104, !dbg !1028

; <label>:104:                                    ; preds = %98
  %105 = icmp sgt i32 %17, 1, !dbg !1030
  br i1 %105, label %106, label %148, !dbg !1031

; <label>:106:                                    ; preds = %104
  %107 = sext i32 %17 to i64, !dbg !1032
  br label %118, !dbg !1032

; <label>:108:                                    ; preds = %98
  %109 = load i32, i32* %23, align 8, !dbg !1033, !tbaa !423
  %110 = icmp eq i32 %109, 3, !dbg !1033
  br i1 %110, label %111, label %178, !dbg !1033

; <label>:111:                                    ; preds = %108
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #4, !dbg !1034
  %112 = bitcast %struct.lua_TValue* %22 to double*, !dbg !1035
  %113 = load double, double* %112, align 8, !dbg !1035, !tbaa !430
  %114 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), double %113) #5, !dbg !1037
  %115 = call i64 @strlen(i8* nonnull %6) #5, !dbg !1038
  %116 = call %union.TString* @luaS_newlstr(%struct.lua_State* nonnull %0, i8* nonnull %6, i64 %115) #5, !dbg !1038
  %117 = bitcast %struct.lua_TValue* %22 to %union.TString**, !dbg !1038
  store %union.TString* %116, %union.TString** %117, align 8, !dbg !1038, !tbaa !430
  store i32 4, i32* %23, align 8, !dbg !1038, !tbaa !423
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #4, !dbg !1039
  br label %178

; <label>:118:                                    ; preds = %106, %141
  %119 = phi i64 [ 1, %106 ], [ %143, %141 ]
  %120 = phi i32 [ 1, %106 ], [ %144, %141 ]
  %121 = phi i64 [ %102, %106 ], [ %142, %141 ]
  %122 = sub nsw i64 0, %119, !dbg !1032
  %123 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %27, i64 %122, !dbg !1032
  %124 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %123, i64 0, i32 1, !dbg !1032
  %125 = load i32, i32* %124, align 8, !dbg !1032, !tbaa !423
  switch i32 %125, label %146 [
    i32 4, label %133
    i32 3, label %126
  ], !dbg !1032

; <label>:126:                                    ; preds = %118
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #4, !dbg !1040
  %127 = bitcast %struct.lua_TValue* %123 to double*, !dbg !1041
  %128 = load double, double* %127, align 8, !dbg !1041, !tbaa !430
  %129 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), double %128) #5, !dbg !1043
  %130 = call i64 @strlen(i8* nonnull %6) #5, !dbg !1044
  %131 = call %union.TString* @luaS_newlstr(%struct.lua_State* %0, i8* nonnull %6, i64 %130) #5, !dbg !1044
  %132 = bitcast %struct.lua_TValue* %123 to %union.TString**, !dbg !1044
  store %union.TString* %131, %union.TString** %132, align 8, !dbg !1044, !tbaa !430
  store i32 4, i32* %124, align 8, !dbg !1044, !tbaa !423
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #4, !dbg !1045
  br label %133, !dbg !1046

; <label>:133:                                    ; preds = %118, %126
  %134 = bitcast %struct.lua_TValue* %123 to %struct.anon**, !dbg !1047
  %135 = load %struct.anon*, %struct.anon** %134, align 8, !dbg !1047, !tbaa !430
  %136 = getelementptr inbounds %struct.anon, %struct.anon* %135, i64 0, i32 5, !dbg !1048
  %137 = load i64, i64* %136, align 8, !dbg !1048, !tbaa !430
  %138 = sub i64 -3, %121, !dbg !1050
  %139 = icmp ult i64 %137, %138, !dbg !1052
  br i1 %139, label %141, label %140, !dbg !1053

; <label>:140:                                    ; preds = %133
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !1054
  br label %141, !dbg !1054

; <label>:141:                                    ; preds = %133, %140
  %142 = add i64 %137, %121, !dbg !1055
  %143 = add nuw nsw i64 %119, 1, !dbg !1056
  %144 = add nuw nsw i32 %120, 1, !dbg !1056
  %145 = icmp slt i64 %143, %107, !dbg !1030
  br i1 %145, label %118, label %148, !dbg !1031, !llvm.loop !1057

; <label>:146:                                    ; preds = %118
  %147 = trunc i64 %119 to i32, !dbg !1032
  br label %148, !dbg !1059

; <label>:148:                                    ; preds = %141, %146, %104
  %149 = phi i64 [ %102, %104 ], [ %121, %146 ], [ %142, %141 ], !dbg !1060
  %150 = phi i32 [ 1, %104 ], [ %147, %146 ], [ %144, %141 ], !dbg !1061
  %151 = load %struct.global_State*, %struct.global_State** %14, align 8, !dbg !1059, !tbaa !515
  %152 = getelementptr inbounds %struct.global_State, %struct.global_State* %151, i64 0, i32 12, !dbg !1062
  %153 = call i8* @luaZ_openspace(%struct.lua_State* %0, %struct.Mbuffer* nonnull %152, i64 %149) #5, !dbg !1063
  %154 = sext i32 %150 to i64, !dbg !1066
  br label %155, !dbg !1066

; <label>:155:                                    ; preds = %148, %155
  %156 = phi i64 [ %154, %148 ], [ %169, %155 ]
  %157 = phi i64 [ 0, %148 ], [ %168, %155 ]
  %158 = sub nsw i64 0, %156, !dbg !1067
  %159 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %21, i64 %158, !dbg !1067
  %160 = bitcast %struct.lua_TValue* %159 to %union.TString**, !dbg !1067
  %161 = load %union.TString*, %union.TString** %160, align 8, !dbg !1067, !tbaa !430
  %162 = getelementptr inbounds %union.TString, %union.TString* %161, i64 0, i32 0, i32 5, !dbg !1068
  %163 = load i64, i64* %162, align 8, !dbg !1068, !tbaa !430
  %164 = getelementptr inbounds i8, i8* %153, i64 %157, !dbg !1070
  %165 = getelementptr inbounds %union.TString, %union.TString* %161, i64 1, !dbg !1071
  %166 = bitcast %union.TString* %165 to i8*, !dbg !1071
  %167 = call i8* @memcpy(i8* %164, i8* nonnull %166, i64 %163) #5, !dbg !1072
  %168 = add i64 %163, %157, !dbg !1073
  %169 = add nsw i64 %156, -1, !dbg !1074
  %170 = icmp sgt i64 %156, 1, !dbg !1075
  br i1 %170, label %155, label %171, !dbg !1066, !llvm.loop !1076

; <label>:171:                                    ; preds = %155
  %172 = zext i32 %150 to i64, !dbg !1078
  %173 = sub nsw i64 0, %172, !dbg !1078
  %174 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %21, i64 %173, !dbg !1078
  %175 = call %union.TString* @luaS_newlstr(%struct.lua_State* %0, i8* %153, i64 %168) #5, !dbg !1078
  %176 = bitcast %struct.lua_TValue* %174 to %union.TString**, !dbg !1078
  store %union.TString* %175, %union.TString** %176, align 8, !dbg !1078, !tbaa !430
  %177 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %174, i64 0, i32 1, !dbg !1078
  store i32 4, i32* %177, align 8, !dbg !1078, !tbaa !423
  br label %178

; <label>:178:                                    ; preds = %108, %111, %83, %171, %97
  %179 = phi i32 [ %150, %171 ], [ 2, %83 ], [ 2, %97 ], [ 2, %111 ], [ 2, %108 ], !dbg !1079
  %180 = add nsw i32 %179, -1, !dbg !1080
  %181 = sub nsw i32 %17, %180, !dbg !1081
  %182 = sub nsw i32 %16, %180, !dbg !1082
  %183 = icmp sgt i32 %181, 1, !dbg !1083
  br i1 %183, label %15, label %184, !dbg !1084, !llvm.loop !1085

; <label>:184:                                    ; preds = %178
  ret void, !dbg !1087
}

; Function Attrs: noredzone
declare hidden void @luaG_concaterror(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden i8* @luaZ_openspace(%struct.lua_State*, %struct.Mbuffer*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define hidden void @luaV_execute(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !1088 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca %struct.lua_TValue, align 8
  %21 = alloca %struct.lua_TValue, align 8
  %22 = alloca %struct.lua_TValue, align 8
  %23 = alloca %struct.lua_TValue, align 8
  %24 = alloca %struct.lua_TValue, align 8
  %25 = alloca %struct.lua_TValue, align 8
  %26 = alloca %struct.lua_TValue, align 8
  %27 = alloca %struct.lua_TValue, align 8
  %28 = alloca %struct.lua_TValue, align 8
  %29 = alloca %struct.lua_TValue, align 8
  %30 = alloca %struct.lua_TValue, align 8
  %31 = alloca %struct.lua_TValue, align 8
  %32 = alloca %struct.lua_TValue, align 8
  %33 = alloca %struct.lua_TValue, align 8
  %34 = alloca %struct.lua_TValue, align 8
  %35 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %36 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %37 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 17
  %39 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 20
  %40 = bitcast %struct.lua_TValue* %33 to i8*
  %41 = bitcast %struct.lua_TValue* %33 to i64*
  %42 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %33, i64 0, i32 1
  %43 = bitcast %struct.lua_TValue* %34 to i8*
  %44 = bitcast %struct.lua_TValue* %34 to i64*
  %45 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %34, i64 0, i32 1
  %46 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %47 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4
  %48 = bitcast %struct.lua_TValue** %47 to i64*
  %49 = bitcast %struct.lua_TValue* %31 to i8*
  %50 = bitcast %struct.lua_TValue* %32 to i8*
  %51 = bitcast double* %16 to i8*
  %52 = bitcast %struct.lua_TValue* %29 to i8*
  %53 = bitcast %struct.lua_TValue* %30 to i8*
  %54 = bitcast double* %14 to i8*
  %55 = bitcast %struct.lua_TValue* %27 to i8*
  %56 = bitcast %struct.lua_TValue* %28 to i8*
  %57 = bitcast double* %12 to i8*
  %58 = bitcast %struct.lua_TValue* %25 to i8*
  %59 = bitcast %struct.lua_TValue* %26 to i8*
  %60 = bitcast double* %10 to i8*
  %61 = bitcast %struct.lua_TValue* %23 to i8*
  %62 = bitcast %struct.lua_TValue* %24 to i8*
  %63 = bitcast double* %8 to i8*
  %64 = bitcast %struct.lua_TValue* %21 to i8*
  %65 = bitcast %struct.lua_TValue* %22 to i8*
  %66 = bitcast double* %6 to i8*
  %67 = bitcast %struct.lua_TValue* %20 to i8*
  %68 = bitcast double* %4 to i8*
  %69 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 24
  %70 = bitcast double* %19 to i8*
  %71 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 9
  %72 = bitcast %struct.lua_TValue** %71 to i64*
  %73 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 19
  %74 = bitcast double* %15 to i8*
  %75 = bitcast double* %13 to i8*
  %76 = bitcast double* %11 to i8*
  %77 = bitcast double* %9 to i8*
  %78 = bitcast double* %7 to i8*
  %79 = bitcast double* %5 to i8*
  %80 = bitcast double* %3 to i8*
  %81 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 10
  %82 = bitcast %struct.lua_TValue** %81 to i64*
  %83 = load i64, i64* bitcast (%struct.lua_TValue* @luaO_nilobject_ to i64*), align 8
  %84 = load i32, i32* getelementptr inbounds (%struct.lua_TValue, %struct.lua_TValue* @luaO_nilobject_, i64 0, i32 1), align 8
  %85 = bitcast double* %18 to i8*
  %86 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 3
  %87 = bitcast double* %16 to i64*
  %88 = bitcast %struct.lua_TValue* %31 to i64*
  %89 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %31, i64 0, i32 1
  %90 = bitcast double* %14 to i64*
  %91 = bitcast %struct.lua_TValue* %29 to i64*
  %92 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %29, i64 0, i32 1
  %93 = bitcast double* %12 to i64*
  %94 = bitcast %struct.lua_TValue* %27 to i64*
  %95 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %27, i64 0, i32 1
  %96 = bitcast double* %10 to i64*
  %97 = bitcast %struct.lua_TValue* %25 to i64*
  %98 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %25, i64 0, i32 1
  %99 = bitcast double* %8 to i64*
  %100 = bitcast %struct.lua_TValue* %23 to i64*
  %101 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %23, i64 0, i32 1
  %102 = bitcast double* %6 to i64*
  %103 = bitcast %struct.lua_TValue* %21 to i64*
  %104 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %21, i64 0, i32 1
  %105 = bitcast double* %4 to i64*
  %106 = bitcast %struct.lua_TValue* %20 to i64*
  %107 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %20, i64 0, i32 1
  %108 = bitcast %struct.lua_TValue** %81 to i8**
  %109 = bitcast double* %17 to i8*
  %110 = bitcast double* %19 to i64*
  %111 = bitcast double* %15 to i64*
  %112 = bitcast %struct.lua_TValue* %32 to i64*
  %113 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %32, i64 0, i32 1
  %114 = bitcast double* %13 to i64*
  %115 = bitcast %struct.lua_TValue* %30 to i64*
  %116 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %30, i64 0, i32 1
  %117 = bitcast double* %11 to i64*
  %118 = bitcast %struct.lua_TValue* %28 to i64*
  %119 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %28, i64 0, i32 1
  %120 = bitcast double* %9 to i64*
  %121 = bitcast %struct.lua_TValue* %26 to i64*
  %122 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %26, i64 0, i32 1
  %123 = bitcast double* %7 to i64*
  %124 = bitcast %struct.lua_TValue* %24 to i64*
  %125 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %24, i64 0, i32 1
  %126 = bitcast double* %5 to i64*
  %127 = bitcast %struct.lua_TValue* %22 to i64*
  %128 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %22, i64 0, i32 1
  %129 = bitcast i32** %35 to i64*
  %130 = bitcast double* %18 to i64*
  %131 = bitcast double* %17 to i64*
  %132 = bitcast %struct.lua_TValue* %20 to double*
  br label %133, !dbg !1331

; <label>:133:                                    ; preds = %1760, %2
  %134 = phi i32 [ %1, %2 ], [ %1761, %1760 ]
  br label %135, !dbg !1332

; <label>:135:                                    ; preds = %133, %1816
  %136 = load i32*, i32** %35, align 8, !dbg !1332, !tbaa !1333
  %137 = load %struct.CallInfo*, %struct.CallInfo** %36, align 8, !dbg !1335, !tbaa !1336
  %138 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %137, i64 0, i32 1, !dbg !1335
  %139 = bitcast %struct.lua_TValue** %138 to %struct.LClosure***, !dbg !1335
  %140 = load %struct.LClosure**, %struct.LClosure*** %139, align 8, !dbg !1335, !tbaa !1337
  %141 = load %struct.LClosure*, %struct.LClosure** %140, align 8, !dbg !1335, !tbaa !430
  %142 = load %struct.lua_TValue*, %struct.lua_TValue** %37, align 8, !dbg !1340, !tbaa !961
  %143 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %141, i64 0, i32 7, !dbg !1342
  %144 = load %struct.Proto*, %struct.Proto** %143, align 8, !dbg !1342, !tbaa !1343
  %145 = getelementptr inbounds %struct.Proto, %struct.Proto* %144, i64 0, i32 3, !dbg !1345
  %146 = load %struct.lua_TValue*, %struct.lua_TValue** %145, align 8, !dbg !1345, !tbaa !1346
  %147 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %141, i64 0, i32 6
  %148 = bitcast %struct.Table** %147 to i64*
  br label %149, !dbg !1349

; <label>:149:                                    ; preds = %2121, %135
  %150 = phi i32* [ %136, %135 ], [ %2122, %2121 ], !dbg !1350
  %151 = phi %struct.lua_TValue* [ %142, %135 ], [ %2123, %2121 ], !dbg !1351
  %152 = getelementptr i32, i32* %150, i64 1, !dbg !1352
  %153 = load i32, i32* %150, align 4, !dbg !1353, !tbaa !1354
  %154 = load i8, i8* %38, align 4, !dbg !1356, !tbaa !1358
  %155 = and i8 %154, 12, !dbg !1359
  %156 = icmp eq i8 %155, 0, !dbg !1359
  br i1 %156, label %222, label %157, !dbg !1360

; <label>:157:                                    ; preds = %149
  %158 = load i32, i32* %39, align 4, !dbg !1361, !tbaa !1362
  %159 = add nsw i32 %158, -1, !dbg !1361
  store i32 %159, i32* %39, align 4, !dbg !1361, !tbaa !1362
  %160 = icmp ne i32 %159, 0, !dbg !1363
  %161 = and i8 %154, 4, !dbg !1364
  %162 = icmp eq i8 %161, 0, !dbg !1364
  %163 = and i1 %162, %160, !dbg !1365
  br i1 %163, label %222, label %164, !dbg !1365

; <label>:164:                                    ; preds = %157
  %165 = load i32*, i32** %35, align 8, !dbg !1384, !tbaa !1333
  store i32* %152, i32** %35, align 8, !dbg !1386, !tbaa !1333
  %166 = zext i8 %154 to i32, !dbg !1387
  %167 = and i32 %166, 8, !dbg !1389
  %168 = icmp eq i32 %167, 0, !dbg !1389
  %169 = or i1 %168, %160, !dbg !1390
  br i1 %169, label %172, label %170, !dbg !1390

; <label>:170:                                    ; preds = %164
  %171 = load i32, i32* %73, align 8, !dbg !1391, !tbaa !1393
  store i32 %171, i32* %39, align 4, !dbg !1391, !tbaa !1362
  call void @luaD_callhook(%struct.lua_State* nonnull %0, i32 3, i32 -1) #5, !dbg !1394
  br label %172, !dbg !1395

; <label>:172:                                    ; preds = %164, %170
  %173 = and i32 %166, 4, !dbg !1396
  %174 = icmp eq i32 %173, 0, !dbg !1396
  br i1 %174, label %216, label %175, !dbg !1397

; <label>:175:                                    ; preds = %172
  %176 = load %struct.CallInfo*, %struct.CallInfo** %36, align 8, !dbg !1398, !tbaa !1336
  %177 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %176, i64 0, i32 1, !dbg !1398
  %178 = bitcast %struct.lua_TValue** %177 to %struct.LClosure***, !dbg !1398
  %179 = load %struct.LClosure**, %struct.LClosure*** %178, align 8, !dbg !1398, !tbaa !1337
  %180 = load %struct.LClosure*, %struct.LClosure** %179, align 8, !dbg !1398, !tbaa !430
  %181 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %180, i64 0, i32 7, !dbg !1399
  %182 = load %struct.Proto*, %struct.Proto** %181, align 8, !dbg !1399, !tbaa !430
  %183 = getelementptr inbounds %struct.Proto, %struct.Proto* %182, i64 0, i32 4, !dbg !1401
  %184 = bitcast i32** %183 to i64*, !dbg !1401
  %185 = load i64, i64* %184, align 8, !dbg !1401, !tbaa !1402
  %186 = ptrtoint i32* %152 to i64, !dbg !1401
  %187 = sub i64 %186, %185, !dbg !1401
  %188 = lshr exact i64 %187, 2, !dbg !1401
  %189 = trunc i64 %188 to i32, !dbg !1401
  %190 = add nsw i32 %189, -1, !dbg !1401
  %191 = getelementptr inbounds %struct.Proto, %struct.Proto* %182, i64 0, i32 6, !dbg !1404
  %192 = load i32*, i32** %191, align 8, !dbg !1404, !tbaa !1405
  %193 = icmp eq i32* %192, null, !dbg !1404
  br i1 %193, label %198, label %194, !dbg !1404

; <label>:194:                                    ; preds = %175
  %195 = sext i32 %190 to i64, !dbg !1404
  %196 = getelementptr inbounds i32, i32* %192, i64 %195, !dbg !1404
  %197 = load i32, i32* %196, align 4, !dbg !1404, !tbaa !1354
  br label %198, !dbg !1404

; <label>:198:                                    ; preds = %194, %175
  %199 = phi i32 [ %197, %194 ], [ 0, %175 ], !dbg !1404
  %200 = icmp ne i32 %190, 0, !dbg !1407
  %201 = icmp ult i32* %165, %152, !dbg !1409
  %202 = and i1 %201, %200, !dbg !1410
  br i1 %202, label %203, label %215, !dbg !1410

; <label>:203:                                    ; preds = %198
  br i1 %193, label %212, label %204, !dbg !1411

; <label>:204:                                    ; preds = %203
  %205 = ptrtoint i32* %165 to i64, !dbg !1411
  %206 = sub i64 %205, %185, !dbg !1411
  %207 = shl i64 %206, 30, !dbg !1411
  %208 = add i64 %207, -4294967296, !dbg !1411
  %209 = ashr exact i64 %208, 32, !dbg !1411
  %210 = getelementptr inbounds i32, i32* %192, i64 %209, !dbg !1411
  %211 = load i32, i32* %210, align 4, !dbg !1411, !tbaa !1354
  br label %212, !dbg !1411

; <label>:212:                                    ; preds = %204, %203
  %213 = phi i32 [ %211, %204 ], [ 0, %203 ], !dbg !1411
  %214 = icmp eq i32 %199, %213, !dbg !1412
  br i1 %214, label %216, label %215, !dbg !1413

; <label>:215:                                    ; preds = %212, %198
  call void @luaD_callhook(%struct.lua_State* nonnull %0, i32 2, i32 %199) #5, !dbg !1414
  br label %216, !dbg !1414

; <label>:216:                                    ; preds = %172, %212, %215
  %217 = load i8, i8* %86, align 2, !dbg !1415, !tbaa !1417
  %218 = icmp eq i8 %217, 1, !dbg !1418
  br i1 %218, label %219, label %220, !dbg !1419

; <label>:219:                                    ; preds = %216
  store i32* %150, i32** %35, align 8, !dbg !1420, !tbaa !1333
  br label %2184, !dbg !1422

; <label>:220:                                    ; preds = %216
  %221 = load %struct.lua_TValue*, %struct.lua_TValue** %37, align 8, !dbg !1423, !tbaa !961
  br label %222, !dbg !1424

; <label>:222:                                    ; preds = %157, %149, %220
  %223 = phi %struct.lua_TValue* [ %221, %220 ], [ %151, %149 ], [ %151, %157 ], !dbg !1425
  %224 = lshr i32 %153, 6, !dbg !1426
  %225 = and i32 %224, 255, !dbg !1426
  %226 = zext i32 %225 to i64, !dbg !1426
  %227 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %226, !dbg !1426
  %228 = trunc i32 %153 to i6, !dbg !1428
  switch i6 %228, label %2121 [
    i6 0, label %229
    i6 1, label %239
    i6 2, label %249
    i6 3, label %257
    i6 4, label %266
    i6 5, label %279
    i6 6, label %285
    i6 7, label %300
    i6 8, label %306
    i6 9, label %335
    i6 10, label %355
    i6 11, label %373
    i6 12, label %395
    i6 13, label %526
    i6 14, label %657
    i6 15, label %788
    i6 16, label %919
    i6 17, label %1056
    i6 18, label %1187
    i6 19, label %1285
    i6 20, label %1301
    i6 21, label %1379
    i6 22, label %1403
    i6 23, label %1408
    i6 24, label %1449
    i6 25, label %1480
    i6 26, label %1694
    i6 27, label %1717
    i6 28, label %1747
    i6 29, label %1771
    i6 30, label %1829
    i6 31, label %1851
    i6 -32, label %1875
    i6 -31, label %1938
    i6 -30, label %1989
    i6 -29, label %2063
    i6 -28, label %2064
    i6 -27, label %2124
  ], !dbg !1428

; <label>:229:                                    ; preds = %222
  %230 = lshr i32 %153, 23, !dbg !1429
  %231 = zext i32 %230 to i64, !dbg !1429
  %232 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %231, !dbg !1429
  %233 = bitcast %struct.lua_TValue* %232 to i64*, !dbg !1429
  %234 = bitcast %struct.lua_TValue* %227 to i64*, !dbg !1429
  %235 = load i64, i64* %233, align 8, !dbg !1429
  store i64 %235, i64* %234, align 8, !dbg !1429
  %236 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %231, i32 1, !dbg !1429
  %237 = load i32, i32* %236, align 8, !dbg !1429, !tbaa !423
  %238 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %226, i32 1, !dbg !1429
  store i32 %237, i32* %238, align 8, !dbg !1429, !tbaa !423
  br label %2121, !dbg !1430

; <label>:239:                                    ; preds = %222
  %240 = lshr i32 %153, 14, !dbg !1431
  %241 = zext i32 %240 to i64, !dbg !1431
  %242 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %146, i64 %241, !dbg !1431
  %243 = bitcast %struct.lua_TValue* %242 to i64*, !dbg !1431
  %244 = bitcast %struct.lua_TValue* %227 to i64*, !dbg !1431
  %245 = load i64, i64* %243, align 8, !dbg !1431
  store i64 %245, i64* %244, align 8, !dbg !1431
  %246 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %146, i64 %241, i32 1, !dbg !1431
  %247 = load i32, i32* %246, align 8, !dbg !1431, !tbaa !423
  %248 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %226, i32 1, !dbg !1431
  store i32 %247, i32* %248, align 8, !dbg !1431, !tbaa !423
  br label %2121, !dbg !1432

; <label>:249:                                    ; preds = %222
  %250 = lshr i32 %153, 23, !dbg !1433
  %251 = bitcast %struct.lua_TValue* %227 to i32*, !dbg !1433
  store i32 %250, i32* %251, align 8, !dbg !1433, !tbaa !430
  %252 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %226, i32 1, !dbg !1433
  store i32 1, i32* %252, align 8, !dbg !1433, !tbaa !423
  %253 = and i32 %153, 8372224, !dbg !1434
  %254 = icmp eq i32 %253, 0, !dbg !1434
  %255 = getelementptr inbounds i32, i32* %150, i64 2, !dbg !1436
  %256 = select i1 %254, i32* %152, i32* %255, !dbg !1437
  br label %2121, !dbg !1438

; <label>:257:                                    ; preds = %222
  %258 = lshr i32 %153, 23, !dbg !1439
  %259 = zext i32 %258 to i64, !dbg !1439
  %260 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %259, !dbg !1439
  br label %261, !dbg !1441

; <label>:261:                                    ; preds = %261, %257
  %262 = phi %struct.lua_TValue* [ %260, %257 ], [ %263, %261 ], !dbg !1442
  %263 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %262, i64 -1, !dbg !1444
  %264 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %262, i64 0, i32 1, !dbg !1444
  store i32 0, i32* %264, align 8, !dbg !1444, !tbaa !423
  %265 = icmp ult %struct.lua_TValue* %263, %227, !dbg !1445
  br i1 %265, label %2121, label %261, !dbg !1446, !llvm.loop !1447

; <label>:266:                                    ; preds = %222
  %267 = lshr i32 %153, 23, !dbg !1450
  %268 = zext i32 %267 to i64, !dbg !1452
  %269 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %141, i64 0, i32 8, i64 %268, !dbg !1452
  %270 = load %struct.UpVal*, %struct.UpVal** %269, align 8, !dbg !1452, !tbaa !519
  %271 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %270, i64 0, i32 3, !dbg !1452
  %272 = load %struct.lua_TValue*, %struct.lua_TValue** %271, align 8, !dbg !1452, !tbaa !1453
  %273 = bitcast %struct.lua_TValue* %272 to i64*, !dbg !1452
  %274 = bitcast %struct.lua_TValue* %227 to i64*, !dbg !1452
  %275 = load i64, i64* %273, align 8, !dbg !1452
  store i64 %275, i64* %274, align 8, !dbg !1452
  %276 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %272, i64 0, i32 1, !dbg !1452
  %277 = load i32, i32* %276, align 8, !dbg !1452, !tbaa !423
  %278 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %226, i32 1, !dbg !1452
  store i32 %277, i32* %278, align 8, !dbg !1452, !tbaa !423
  br label %2121

; <label>:279:                                    ; preds = %222
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %40) #4, !dbg !1455
  %280 = lshr i32 %153, 14, !dbg !1456
  %281 = zext i32 %280 to i64, !dbg !1456
  %282 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %146, i64 %281, !dbg !1456
  %283 = load i64, i64* %148, align 8, !dbg !1458, !tbaa !1459
  store i64 %283, i64* %41, align 8, !dbg !1458, !tbaa !430
  store i32 5, i32* %42, align 8, !dbg !1458, !tbaa !423
  store i32* %152, i32** %35, align 8, !dbg !1460, !tbaa !1333
  call void @luaV_gettable(%struct.lua_State* nonnull %0, %struct.lua_TValue* nonnull %33, %struct.lua_TValue* %282, %struct.lua_TValue* %227) #6, !dbg !1463
  %284 = load %struct.lua_TValue*, %struct.lua_TValue** %37, align 8, !dbg !1460, !tbaa !961
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %40) #4, !dbg !1465
  br label %2121

; <label>:285:                                    ; preds = %222
  store i32* %152, i32** %35, align 8, !dbg !1466, !tbaa !1333
  %286 = lshr i32 %153, 23, !dbg !1469
  %287 = zext i32 %286 to i64, !dbg !1469
  %288 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %287, !dbg !1469
  %289 = lshr i32 %153, 14, !dbg !1469
  %290 = and i32 %153, 4194304, !dbg !1469
  %291 = icmp eq i32 %290, 0, !dbg !1469
  %292 = and i32 %289, 255, !dbg !1469
  %293 = zext i32 %292 to i64, !dbg !1469
  %294 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %146, i64 %293, !dbg !1469
  %295 = and i32 %289, 511, !dbg !1469
  %296 = zext i32 %295 to i64, !dbg !1469
  %297 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %296, !dbg !1469
  %298 = select i1 %291, %struct.lua_TValue* %297, %struct.lua_TValue* %294, !dbg !1469
  call void @luaV_gettable(%struct.lua_State* nonnull %0, %struct.lua_TValue* %288, %struct.lua_TValue* %298, %struct.lua_TValue* %227) #6, !dbg !1469
  %299 = load %struct.lua_TValue*, %struct.lua_TValue** %37, align 8, !dbg !1466, !tbaa !961
  br label %2121, !dbg !1471

; <label>:300:                                    ; preds = %222
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %43) #4, !dbg !1472
  %301 = load i64, i64* %148, align 8, !dbg !1473, !tbaa !1459
  store i64 %301, i64* %44, align 8, !dbg !1473, !tbaa !430
  store i32 5, i32* %45, align 8, !dbg !1473, !tbaa !423
  store i32* %152, i32** %35, align 8, !dbg !1474, !tbaa !1333
  %302 = lshr i32 %153, 14, !dbg !1476
  %303 = zext i32 %302 to i64, !dbg !1476
  %304 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %146, i64 %303, !dbg !1476
  call void @luaV_settable(%struct.lua_State* nonnull %0, %struct.lua_TValue* nonnull %34, %struct.lua_TValue* %304, %struct.lua_TValue* %227) #6, !dbg !1476
  %305 = load %struct.lua_TValue*, %struct.lua_TValue** %37, align 8, !dbg !1474, !tbaa !961
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %43) #4, !dbg !1479
  br label %2121

; <label>:306:                                    ; preds = %222
  %307 = lshr i32 %153, 23, !dbg !1480
  %308 = zext i32 %307 to i64, !dbg !1481
  %309 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %141, i64 0, i32 8, i64 %308, !dbg !1481
  %310 = load %struct.UpVal*, %struct.UpVal** %309, align 8, !dbg !1481, !tbaa !519
  %311 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %310, i64 0, i32 3, !dbg !1483
  %312 = load %struct.lua_TValue*, %struct.lua_TValue** %311, align 8, !dbg !1483, !tbaa !1453
  %313 = bitcast %struct.lua_TValue* %227 to i64*, !dbg !1483
  %314 = bitcast %struct.lua_TValue* %312 to i64*, !dbg !1483
  %315 = load i64, i64* %313, align 8, !dbg !1483
  store i64 %315, i64* %314, align 8, !dbg !1483
  %316 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %226, i32 1, !dbg !1483
  %317 = load i32, i32* %316, align 8, !dbg !1483, !tbaa !423
  %318 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %312, i64 0, i32 1, !dbg !1483
  store i32 %317, i32* %318, align 8, !dbg !1483, !tbaa !423
  %319 = load i32, i32* %316, align 8, !dbg !1484, !tbaa !423
  %320 = icmp sgt i32 %319, 3, !dbg !1484
  br i1 %320, label %321, label %2121, !dbg !1484

; <label>:321:                                    ; preds = %306
  %322 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %227, i64 0, i32 0, i32 0, !dbg !1484
  %323 = load %union.GCObject*, %union.GCObject** %322, align 8, !dbg !1484, !tbaa !430
  %324 = getelementptr inbounds %union.GCObject, %union.GCObject* %323, i64 0, i32 0, i32 2, !dbg !1484
  %325 = load i8, i8* %324, align 1, !dbg !1484, !tbaa !430
  %326 = and i8 %325, 3, !dbg !1484
  %327 = icmp eq i8 %326, 0, !dbg !1484
  br i1 %327, label %2121, label %328, !dbg !1484

; <label>:328:                                    ; preds = %321
  %329 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %310, i64 0, i32 2, !dbg !1484
  %330 = load i8, i8* %329, align 1, !dbg !1484, !tbaa !430
  %331 = and i8 %330, 4, !dbg !1484
  %332 = icmp eq i8 %331, 0, !dbg !1484
  br i1 %332, label %2121, label %333, !dbg !1487

; <label>:333:                                    ; preds = %328
  %334 = bitcast %struct.UpVal* %310 to %union.GCObject*, !dbg !1484
  call void @luaC_barrierf(%struct.lua_State* nonnull %0, %union.GCObject* %334, %union.GCObject* %323) #5, !dbg !1484
  br label %2121, !dbg !1484

; <label>:335:                                    ; preds = %222
  store i32* %152, i32** %35, align 8, !dbg !1488, !tbaa !1333
  %336 = lshr i32 %153, 23, !dbg !1491
  %337 = icmp slt i32 %153, 0, !dbg !1491
  %338 = and i32 %336, 255, !dbg !1491
  %339 = zext i32 %338 to i64, !dbg !1491
  %340 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %146, i64 %339, !dbg !1491
  %341 = zext i32 %336 to i64, !dbg !1491
  %342 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %341, !dbg !1491
  %343 = select i1 %337, %struct.lua_TValue* %340, %struct.lua_TValue* %342, !dbg !1491
  %344 = lshr i32 %153, 14, !dbg !1491
  %345 = and i32 %153, 4194304, !dbg !1491
  %346 = icmp eq i32 %345, 0, !dbg !1491
  %347 = and i32 %344, 255, !dbg !1491
  %348 = zext i32 %347 to i64, !dbg !1491
  %349 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %146, i64 %348, !dbg !1491
  %350 = and i32 %344, 511, !dbg !1491
  %351 = zext i32 %350 to i64, !dbg !1491
  %352 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %351, !dbg !1491
  %353 = select i1 %346, %struct.lua_TValue* %352, %struct.lua_TValue* %349, !dbg !1491
  call void @luaV_settable(%struct.lua_State* nonnull %0, %struct.lua_TValue* %227, %struct.lua_TValue* %343, %struct.lua_TValue* %353) #6, !dbg !1491
  %354 = load %struct.lua_TValue*, %struct.lua_TValue** %37, align 8, !dbg !1488, !tbaa !961
  br label %2121, !dbg !1493

; <label>:355:                                    ; preds = %222
  %356 = lshr i32 %153, 23, !dbg !1494
  %357 = lshr i32 %153, 14, !dbg !1496
  %358 = and i32 %357, 511, !dbg !1496
  %359 = call i32 @luaO_fb2int(i32 %356) #5, !dbg !1498
  %360 = call i32 @luaO_fb2int(i32 %358) #5, !dbg !1498
  %361 = call %struct.Table* @luaH_new(%struct.lua_State* nonnull %0, i32 %359, i32 %360) #5, !dbg !1498
  %362 = bitcast %struct.lua_TValue* %227 to %struct.Table**, !dbg !1498
  store %struct.Table* %361, %struct.Table** %362, align 8, !dbg !1498, !tbaa !430
  %363 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %226, i32 1, !dbg !1498
  store i32 5, i32* %363, align 8, !dbg !1498, !tbaa !423
  store i32* %152, i32** %35, align 8, !dbg !1499, !tbaa !1333
  %364 = load %struct.global_State*, %struct.global_State** %46, align 8, !dbg !1501, !tbaa !515
  %365 = getelementptr inbounds %struct.global_State, %struct.global_State* %364, i64 0, i32 14, !dbg !1501
  %366 = load i64, i64* %365, align 8, !dbg !1501, !tbaa !1505
  %367 = getelementptr inbounds %struct.global_State, %struct.global_State* %364, i64 0, i32 13, !dbg !1501
  %368 = load i64, i64* %367, align 8, !dbg !1501, !tbaa !1509
  %369 = icmp ult i64 %366, %368, !dbg !1501
  br i1 %369, label %371, label %370, !dbg !1510

; <label>:370:                                    ; preds = %355
  call void @luaC_step(%struct.lua_State* nonnull %0) #5, !dbg !1501
  br label %371, !dbg !1501

; <label>:371:                                    ; preds = %355, %370
  %372 = load %struct.lua_TValue*, %struct.lua_TValue** %37, align 8, !dbg !1499, !tbaa !961
  br label %2121

; <label>:373:                                    ; preds = %222
  %374 = lshr i32 %153, 23, !dbg !1511
  %375 = zext i32 %374 to i64, !dbg !1511
  %376 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %375, !dbg !1511
  %377 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %227, i64 1, !dbg !1513
  %378 = bitcast %struct.lua_TValue* %376 to i64*, !dbg !1513
  %379 = bitcast %struct.lua_TValue* %377 to i64*, !dbg !1513
  %380 = load i64, i64* %378, align 8, !dbg !1513
  store i64 %380, i64* %379, align 8, !dbg !1513
  %381 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %375, i32 1, !dbg !1513
  %382 = load i32, i32* %381, align 8, !dbg !1513, !tbaa !423
  %383 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %377, i64 0, i32 1, !dbg !1513
  store i32 %382, i32* %383, align 8, !dbg !1513, !tbaa !423
  store i32* %152, i32** %35, align 8, !dbg !1514, !tbaa !1333
  %384 = lshr i32 %153, 14, !dbg !1516
  %385 = and i32 %153, 4194304, !dbg !1516
  %386 = icmp eq i32 %385, 0, !dbg !1516
  %387 = and i32 %384, 255, !dbg !1516
  %388 = zext i32 %387 to i64, !dbg !1516
  %389 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %146, i64 %388, !dbg !1516
  %390 = and i32 %384, 511, !dbg !1516
  %391 = zext i32 %390 to i64, !dbg !1516
  %392 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %391, !dbg !1516
  %393 = select i1 %386, %struct.lua_TValue* %392, %struct.lua_TValue* %389, !dbg !1516
  call void @luaV_gettable(%struct.lua_State* nonnull %0, %struct.lua_TValue* %376, %struct.lua_TValue* %393, %struct.lua_TValue* %227) #6, !dbg !1516
  %394 = load %struct.lua_TValue*, %struct.lua_TValue** %37, align 8, !dbg !1514, !tbaa !961
  br label %2121

; <label>:395:                                    ; preds = %222
  %396 = lshr i32 %153, 23, !dbg !1518
  %397 = icmp slt i32 %153, 0, !dbg !1518
  %398 = and i32 %396, 255, !dbg !1518
  %399 = zext i32 %398 to i64, !dbg !1518
  %400 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %146, i64 %399, !dbg !1518
  %401 = zext i32 %396 to i64, !dbg !1518
  %402 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %401, !dbg !1518
  %403 = select i1 %397, %struct.lua_TValue* %400, %struct.lua_TValue* %402, !dbg !1518
  %404 = lshr i32 %153, 14, !dbg !1518
  %405 = and i32 %153, 4194304, !dbg !1518
  %406 = icmp eq i32 %405, 0, !dbg !1518
  %407 = and i32 %404, 255, !dbg !1518
  %408 = zext i32 %407 to i64, !dbg !1518
  %409 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %146, i64 %408, !dbg !1518
  %410 = and i32 %404, 511, !dbg !1518
  %411 = zext i32 %410 to i64, !dbg !1518
  %412 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %411, !dbg !1518
  %413 = select i1 %406, %struct.lua_TValue* %412, %struct.lua_TValue* %409, !dbg !1518
  %414 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %403, i64 0, i32 1, !dbg !1519
  %415 = load i32, i32* %414, align 8, !dbg !1519, !tbaa !423
  %416 = icmp eq i32 %415, 3, !dbg !1519
  br i1 %416, label %417, label %430, !dbg !1519

; <label>:417:                                    ; preds = %395
  %418 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %413, i64 0, i32 1, !dbg !1519
  %419 = load i32, i32* %418, align 8, !dbg !1519, !tbaa !423
  %420 = icmp eq i32 %419, 3, !dbg !1519
  br i1 %420, label %422, label %421, !dbg !1518

; <label>:421:                                    ; preds = %417
  store i32* %152, i32** %35, align 8, !dbg !1520, !tbaa !1333
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %49) #4, !dbg !1561
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %50) #4, !dbg !1561
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %51) #4, !dbg !1566
  br label %442, !dbg !1567

; <label>:422:                                    ; preds = %417
  %423 = bitcast %struct.lua_TValue* %403 to double*, !dbg !1568
  %424 = load double, double* %423, align 8, !dbg !1568, !tbaa !430
  %425 = bitcast %struct.lua_TValue* %413 to double*, !dbg !1568
  %426 = load double, double* %425, align 8, !dbg !1568, !tbaa !430
  %427 = fadd double %424, %426, !dbg !1569
  %428 = bitcast %struct.lua_TValue* %227 to double*, !dbg !1569
  store double %427, double* %428, align 8, !dbg !1569, !tbaa !430
  %429 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %226, i32 1, !dbg !1569
  store i32 3, i32* %429, align 8, !dbg !1569, !tbaa !423
  br label %2121, !dbg !1568

; <label>:430:                                    ; preds = %395
  store i32* %152, i32** %35, align 8, !dbg !1520, !tbaa !1333
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %49) #4, !dbg !1561
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %50) #4, !dbg !1561
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %51) #4, !dbg !1566
  %431 = icmp eq i32 %415, 4, !dbg !1567
  br i1 %431, label %432, label %441, !dbg !1567

; <label>:432:                                    ; preds = %430
  %433 = bitcast %struct.lua_TValue* %403 to %union.TString**, !dbg !1570
  %434 = load %union.TString*, %union.TString** %433, align 8, !dbg !1570, !tbaa !430
  %435 = getelementptr inbounds %union.TString, %union.TString* %434, i64 1, !dbg !1570
  %436 = bitcast %union.TString* %435 to i8*, !dbg !1570
  %437 = call i32 @luaO_str2d(i8* nonnull %436, double* nonnull %16) #5, !dbg !1572
  %438 = icmp eq i32 %437, 0, !dbg !1572
  br i1 %438, label %441, label %439, !dbg !1573

; <label>:439:                                    ; preds = %432
  %440 = load i64, i64* %87, align 8, !dbg !1574, !tbaa !435
  store i64 %440, i64* %88, align 8, !dbg !1574, !tbaa !430
  store i32 3, i32* %89, align 8, !dbg !1574, !tbaa !423
  br label %442, !dbg !1575

; <label>:441:                                    ; preds = %430, %432
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %51) #4, !dbg !1576
  br label %465, !dbg !1578

; <label>:442:                                    ; preds = %421, %439
  %443 = phi %struct.lua_TValue* [ %31, %439 ], [ %403, %421 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %51) #4, !dbg !1576
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %74) #4, !dbg !1583
  %444 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %413, i64 0, i32 1, !dbg !1584
  %445 = load i32, i32* %444, align 8, !dbg !1584, !tbaa !423
  switch i32 %445, label %455 [
    i32 3, label %456
    i32 4, label %446
  ], !dbg !1585

; <label>:446:                                    ; preds = %442
  %447 = bitcast %struct.lua_TValue* %413 to %union.TString**, !dbg !1586
  %448 = load %union.TString*, %union.TString** %447, align 8, !dbg !1586, !tbaa !430
  %449 = getelementptr inbounds %union.TString, %union.TString* %448, i64 1, !dbg !1586
  %450 = bitcast %union.TString* %449 to i8*, !dbg !1586
  %451 = call i32 @luaO_str2d(i8* nonnull %450, double* nonnull %15) #5, !dbg !1588
  %452 = icmp eq i32 %451, 0, !dbg !1588
  br i1 %452, label %455, label %453, !dbg !1589

; <label>:453:                                    ; preds = %446
  %454 = load i64, i64* %111, align 8, !dbg !1590, !tbaa !435
  store i64 %454, i64* %112, align 8, !dbg !1590, !tbaa !430
  store i32 3, i32* %113, align 8, !dbg !1590, !tbaa !423
  br label %456, !dbg !1591

; <label>:455:                                    ; preds = %442, %446
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %74) #4, !dbg !1592
  br label %465, !dbg !1594

; <label>:456:                                    ; preds = %453, %442
  %457 = phi %struct.lua_TValue* [ %413, %442 ], [ %32, %453 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %74) #4, !dbg !1592
  %458 = bitcast %struct.lua_TValue* %443 to double*, !dbg !1595
  %459 = load double, double* %458, align 8, !dbg !1595, !tbaa !430
  %460 = bitcast %struct.lua_TValue* %457 to double*, !dbg !1597
  %461 = load double, double* %460, align 8, !dbg !1597, !tbaa !430
  %462 = fadd double %459, %461, !dbg !1599
  %463 = bitcast %struct.lua_TValue* %227 to double*, !dbg !1599
  store double %462, double* %463, align 8, !dbg !1599, !tbaa !430
  %464 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %226, i32 1, !dbg !1599
  store i32 3, i32* %464, align 8, !dbg !1599, !tbaa !423
  br label %524, !dbg !1600

; <label>:465:                                    ; preds = %455, %441
  %466 = call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* nonnull %0, %struct.lua_TValue* nonnull %403, i32 5) #5, !dbg !1608
  %467 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %466, i64 0, i32 1, !dbg !1610
  %468 = load i32, i32* %467, align 8, !dbg !1610, !tbaa !423
  %469 = icmp eq i32 %468, 0, !dbg !1610
  br i1 %469, label %470, label %475, !dbg !1611

; <label>:470:                                    ; preds = %465
  %471 = call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* nonnull %0, %struct.lua_TValue* %413, i32 5) #5, !dbg !1612
  %472 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %471, i64 0, i32 1
  %473 = load i32, i32* %472, align 8, !dbg !1613, !tbaa !423
  %474 = icmp eq i32 %473, 0, !dbg !1613
  br i1 %474, label %523, label %475, !dbg !1614

; <label>:475:                                    ; preds = %470, %465
  %476 = phi i32* [ %472, %470 ], [ %467, %465 ], !dbg !1615
  %477 = phi %struct.lua_TValue* [ %471, %470 ], [ %466, %465 ]
  %478 = load i64, i64* %82, align 8, !dbg !1622, !tbaa !563
  %479 = ptrtoint %struct.lua_TValue* %227 to i64, !dbg !1622
  %480 = sub i64 %479, %478, !dbg !1622
  %481 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !1615, !tbaa !566
  %482 = bitcast %struct.lua_TValue* %477 to i64*, !dbg !1615
  %483 = bitcast %struct.lua_TValue* %481 to i64*, !dbg !1615
  %484 = load i64, i64* %482, align 8, !dbg !1615
  store i64 %484, i64* %483, align 8, !dbg !1615
  %485 = load i32, i32* %476, align 8, !dbg !1615, !tbaa !423
  %486 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %481, i64 0, i32 1, !dbg !1615
  store i32 %485, i32* %486, align 8, !dbg !1615, !tbaa !423
  %487 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !1624, !tbaa !566
  %488 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %487, i64 1, !dbg !1624
  %489 = bitcast %struct.lua_TValue* %403 to i64*, !dbg !1624
  %490 = bitcast %struct.lua_TValue* %488 to i64*, !dbg !1624
  %491 = load i64, i64* %489, align 8, !dbg !1624
  store i64 %491, i64* %490, align 8, !dbg !1624
  %492 = load i32, i32* %414, align 8, !dbg !1624, !tbaa !423
  %493 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %487, i64 1, i32 1, !dbg !1624
  store i32 %492, i32* %493, align 8, !dbg !1624, !tbaa !423
  %494 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !1625, !tbaa !566
  %495 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %494, i64 2, !dbg !1625
  %496 = bitcast %struct.lua_TValue* %413 to i64*, !dbg !1625
  %497 = bitcast %struct.lua_TValue* %495 to i64*, !dbg !1625
  %498 = load i64, i64* %496, align 8, !dbg !1625
  store i64 %498, i64* %497, align 8, !dbg !1625
  %499 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %413, i64 0, i32 1, !dbg !1625
  %500 = load i32, i32* %499, align 8, !dbg !1625, !tbaa !423
  %501 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %494, i64 2, i32 1, !dbg !1625
  store i32 %500, i32* %501, align 8, !dbg !1625, !tbaa !423
  %502 = load i64, i64* %72, align 8, !dbg !1626, !tbaa !571
  %503 = load i64, i64* %48, align 8, !dbg !1626, !tbaa !566
  %504 = sub i64 %502, %503, !dbg !1626
  %505 = icmp slt i64 %504, 49, !dbg !1626
  %506 = inttoptr i64 %503 to %struct.lua_TValue*, !dbg !1627
  br i1 %505, label %507, label %509, !dbg !1627

; <label>:507:                                    ; preds = %475
  call void @luaD_growstack(%struct.lua_State* nonnull %0, i32 3) #5, !dbg !1626
  %508 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !1628, !tbaa !566
  br label %509, !dbg !1626

; <label>:509:                                    ; preds = %507, %475
  %510 = phi %struct.lua_TValue* [ %506, %475 ], [ %508, %507 ], !dbg !1628
  %511 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %510, i64 3, !dbg !1628
  store %struct.lua_TValue* %511, %struct.lua_TValue** %47, align 8, !dbg !1628, !tbaa !566
  call void @luaD_call(%struct.lua_State* nonnull %0, %struct.lua_TValue* %510, i32 1) #5, !dbg !1629
  %512 = load i8*, i8** %108, align 8, !dbg !1630, !tbaa !563
  %513 = getelementptr inbounds i8, i8* %512, i64 %480, !dbg !1630
  %514 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !1631, !tbaa !566
  %515 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %514, i64 -1, !dbg !1631
  store %struct.lua_TValue* %515, %struct.lua_TValue** %47, align 8, !dbg !1631, !tbaa !566
  %516 = bitcast %struct.lua_TValue* %515 to i64*, !dbg !1632
  %517 = bitcast i8* %513 to i64*, !dbg !1632
  %518 = load i64, i64* %516, align 8, !dbg !1632
  store i64 %518, i64* %517, align 8, !dbg !1632
  %519 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %514, i64 -1, i32 1, !dbg !1632
  %520 = load i32, i32* %519, align 8, !dbg !1632, !tbaa !423
  %521 = getelementptr inbounds i8, i8* %513, i64 8, !dbg !1632
  %522 = bitcast i8* %521 to i32*, !dbg !1632
  store i32 %520, i32* %522, align 8, !dbg !1632, !tbaa !423
  br label %524, !dbg !1633

; <label>:523:                                    ; preds = %470
  call void @luaG_aritherror(%struct.lua_State* nonnull %0, %struct.lua_TValue* nonnull %403, %struct.lua_TValue* %413) #5, !dbg !1634
  br label %524, !dbg !1634

; <label>:524:                                    ; preds = %509, %456, %523
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %50) #4, !dbg !1635
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %49) #4, !dbg !1635
  %525 = load %struct.lua_TValue*, %struct.lua_TValue** %37, align 8, !dbg !1520, !tbaa !961
  br label %2121

; <label>:526:                                    ; preds = %222
  %527 = lshr i32 %153, 23, !dbg !1636
  %528 = icmp slt i32 %153, 0, !dbg !1636
  %529 = and i32 %527, 255, !dbg !1636
  %530 = zext i32 %529 to i64, !dbg !1636
  %531 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %146, i64 %530, !dbg !1636
  %532 = zext i32 %527 to i64, !dbg !1636
  %533 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %532, !dbg !1636
  %534 = select i1 %528, %struct.lua_TValue* %531, %struct.lua_TValue* %533, !dbg !1636
  %535 = lshr i32 %153, 14, !dbg !1636
  %536 = and i32 %153, 4194304, !dbg !1636
  %537 = icmp eq i32 %536, 0, !dbg !1636
  %538 = and i32 %535, 255, !dbg !1636
  %539 = zext i32 %538 to i64, !dbg !1636
  %540 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %146, i64 %539, !dbg !1636
  %541 = and i32 %535, 511, !dbg !1636
  %542 = zext i32 %541 to i64, !dbg !1636
  %543 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %542, !dbg !1636
  %544 = select i1 %537, %struct.lua_TValue* %543, %struct.lua_TValue* %540, !dbg !1636
  %545 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %534, i64 0, i32 1, !dbg !1637
  %546 = load i32, i32* %545, align 8, !dbg !1637, !tbaa !423
  %547 = icmp eq i32 %546, 3, !dbg !1637
  br i1 %547, label %548, label %561, !dbg !1637

; <label>:548:                                    ; preds = %526
  %549 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %544, i64 0, i32 1, !dbg !1637
  %550 = load i32, i32* %549, align 8, !dbg !1637, !tbaa !423
  %551 = icmp eq i32 %550, 3, !dbg !1637
  br i1 %551, label %553, label %552, !dbg !1636

; <label>:552:                                    ; preds = %548
  store i32* %152, i32** %35, align 8, !dbg !1638, !tbaa !1333
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %52) #4, !dbg !1647
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %53) #4, !dbg !1647
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %54) #4, !dbg !1652
  br label %573, !dbg !1653

; <label>:553:                                    ; preds = %548
  %554 = bitcast %struct.lua_TValue* %534 to double*, !dbg !1654
  %555 = load double, double* %554, align 8, !dbg !1654, !tbaa !430
  %556 = bitcast %struct.lua_TValue* %544 to double*, !dbg !1654
  %557 = load double, double* %556, align 8, !dbg !1654, !tbaa !430
  %558 = fsub double %555, %557, !dbg !1655
  %559 = bitcast %struct.lua_TValue* %227 to double*, !dbg !1655
  store double %558, double* %559, align 8, !dbg !1655, !tbaa !430
  %560 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %226, i32 1, !dbg !1655
  store i32 3, i32* %560, align 8, !dbg !1655, !tbaa !423
  br label %2121, !dbg !1654

; <label>:561:                                    ; preds = %526
  store i32* %152, i32** %35, align 8, !dbg !1638, !tbaa !1333
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %52) #4, !dbg !1647
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %53) #4, !dbg !1647
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %54) #4, !dbg !1652
  %562 = icmp eq i32 %546, 4, !dbg !1653
  br i1 %562, label %563, label %572, !dbg !1653

; <label>:563:                                    ; preds = %561
  %564 = bitcast %struct.lua_TValue* %534 to %union.TString**, !dbg !1656
  %565 = load %union.TString*, %union.TString** %564, align 8, !dbg !1656, !tbaa !430
  %566 = getelementptr inbounds %union.TString, %union.TString* %565, i64 1, !dbg !1656
  %567 = bitcast %union.TString* %566 to i8*, !dbg !1656
  %568 = call i32 @luaO_str2d(i8* nonnull %567, double* nonnull %14) #5, !dbg !1658
  %569 = icmp eq i32 %568, 0, !dbg !1658
  br i1 %569, label %572, label %570, !dbg !1659

; <label>:570:                                    ; preds = %563
  %571 = load i64, i64* %90, align 8, !dbg !1660, !tbaa !435
  store i64 %571, i64* %91, align 8, !dbg !1660, !tbaa !430
  store i32 3, i32* %92, align 8, !dbg !1660, !tbaa !423
  br label %573, !dbg !1661

; <label>:572:                                    ; preds = %561, %563
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %54) #4, !dbg !1662
  br label %596, !dbg !1664

; <label>:573:                                    ; preds = %552, %570
  %574 = phi %struct.lua_TValue* [ %29, %570 ], [ %534, %552 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %54) #4, !dbg !1662
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %75) #4, !dbg !1669
  %575 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %544, i64 0, i32 1, !dbg !1670
  %576 = load i32, i32* %575, align 8, !dbg !1670, !tbaa !423
  switch i32 %576, label %586 [
    i32 3, label %587
    i32 4, label %577
  ], !dbg !1671

; <label>:577:                                    ; preds = %573
  %578 = bitcast %struct.lua_TValue* %544 to %union.TString**, !dbg !1672
  %579 = load %union.TString*, %union.TString** %578, align 8, !dbg !1672, !tbaa !430
  %580 = getelementptr inbounds %union.TString, %union.TString* %579, i64 1, !dbg !1672
  %581 = bitcast %union.TString* %580 to i8*, !dbg !1672
  %582 = call i32 @luaO_str2d(i8* nonnull %581, double* nonnull %13) #5, !dbg !1674
  %583 = icmp eq i32 %582, 0, !dbg !1674
  br i1 %583, label %586, label %584, !dbg !1675

; <label>:584:                                    ; preds = %577
  %585 = load i64, i64* %114, align 8, !dbg !1676, !tbaa !435
  store i64 %585, i64* %115, align 8, !dbg !1676, !tbaa !430
  store i32 3, i32* %116, align 8, !dbg !1676, !tbaa !423
  br label %587, !dbg !1677

; <label>:586:                                    ; preds = %573, %577
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %75) #4, !dbg !1678
  br label %596, !dbg !1680

; <label>:587:                                    ; preds = %584, %573
  %588 = phi %struct.lua_TValue* [ %544, %573 ], [ %30, %584 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %75) #4, !dbg !1678
  %589 = bitcast %struct.lua_TValue* %574 to double*, !dbg !1681
  %590 = load double, double* %589, align 8, !dbg !1681, !tbaa !430
  %591 = bitcast %struct.lua_TValue* %588 to double*, !dbg !1683
  %592 = load double, double* %591, align 8, !dbg !1683, !tbaa !430
  %593 = fsub double %590, %592, !dbg !1685
  %594 = bitcast %struct.lua_TValue* %227 to double*, !dbg !1685
  store double %593, double* %594, align 8, !dbg !1685, !tbaa !430
  %595 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %226, i32 1, !dbg !1685
  store i32 3, i32* %595, align 8, !dbg !1685, !tbaa !423
  br label %655, !dbg !1686

; <label>:596:                                    ; preds = %586, %572
  %597 = call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* nonnull %0, %struct.lua_TValue* nonnull %534, i32 6) #5, !dbg !1693
  %598 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %597, i64 0, i32 1, !dbg !1695
  %599 = load i32, i32* %598, align 8, !dbg !1695, !tbaa !423
  %600 = icmp eq i32 %599, 0, !dbg !1695
  br i1 %600, label %601, label %606, !dbg !1696

; <label>:601:                                    ; preds = %596
  %602 = call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* nonnull %0, %struct.lua_TValue* %544, i32 6) #5, !dbg !1697
  %603 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %602, i64 0, i32 1
  %604 = load i32, i32* %603, align 8, !dbg !1698, !tbaa !423
  %605 = icmp eq i32 %604, 0, !dbg !1698
  br i1 %605, label %654, label %606, !dbg !1699

; <label>:606:                                    ; preds = %601, %596
  %607 = phi i32* [ %603, %601 ], [ %598, %596 ], !dbg !1700
  %608 = phi %struct.lua_TValue* [ %602, %601 ], [ %597, %596 ]
  %609 = load i64, i64* %82, align 8, !dbg !1707, !tbaa !563
  %610 = ptrtoint %struct.lua_TValue* %227 to i64, !dbg !1707
  %611 = sub i64 %610, %609, !dbg !1707
  %612 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !1700, !tbaa !566
  %613 = bitcast %struct.lua_TValue* %608 to i64*, !dbg !1700
  %614 = bitcast %struct.lua_TValue* %612 to i64*, !dbg !1700
  %615 = load i64, i64* %613, align 8, !dbg !1700
  store i64 %615, i64* %614, align 8, !dbg !1700
  %616 = load i32, i32* %607, align 8, !dbg !1700, !tbaa !423
  %617 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %612, i64 0, i32 1, !dbg !1700
  store i32 %616, i32* %617, align 8, !dbg !1700, !tbaa !423
  %618 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !1709, !tbaa !566
  %619 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %618, i64 1, !dbg !1709
  %620 = bitcast %struct.lua_TValue* %534 to i64*, !dbg !1709
  %621 = bitcast %struct.lua_TValue* %619 to i64*, !dbg !1709
  %622 = load i64, i64* %620, align 8, !dbg !1709
  store i64 %622, i64* %621, align 8, !dbg !1709
  %623 = load i32, i32* %545, align 8, !dbg !1709, !tbaa !423
  %624 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %618, i64 1, i32 1, !dbg !1709
  store i32 %623, i32* %624, align 8, !dbg !1709, !tbaa !423
  %625 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !1710, !tbaa !566
  %626 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %625, i64 2, !dbg !1710
  %627 = bitcast %struct.lua_TValue* %544 to i64*, !dbg !1710
  %628 = bitcast %struct.lua_TValue* %626 to i64*, !dbg !1710
  %629 = load i64, i64* %627, align 8, !dbg !1710
  store i64 %629, i64* %628, align 8, !dbg !1710
  %630 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %544, i64 0, i32 1, !dbg !1710
  %631 = load i32, i32* %630, align 8, !dbg !1710, !tbaa !423
  %632 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %625, i64 2, i32 1, !dbg !1710
  store i32 %631, i32* %632, align 8, !dbg !1710, !tbaa !423
  %633 = load i64, i64* %72, align 8, !dbg !1711, !tbaa !571
  %634 = load i64, i64* %48, align 8, !dbg !1711, !tbaa !566
  %635 = sub i64 %633, %634, !dbg !1711
  %636 = icmp slt i64 %635, 49, !dbg !1711
  %637 = inttoptr i64 %634 to %struct.lua_TValue*, !dbg !1712
  br i1 %636, label %638, label %640, !dbg !1712

; <label>:638:                                    ; preds = %606
  call void @luaD_growstack(%struct.lua_State* nonnull %0, i32 3) #5, !dbg !1711
  %639 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !1713, !tbaa !566
  br label %640, !dbg !1711

; <label>:640:                                    ; preds = %638, %606
  %641 = phi %struct.lua_TValue* [ %637, %606 ], [ %639, %638 ], !dbg !1713
  %642 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %641, i64 3, !dbg !1713
  store %struct.lua_TValue* %642, %struct.lua_TValue** %47, align 8, !dbg !1713, !tbaa !566
  call void @luaD_call(%struct.lua_State* nonnull %0, %struct.lua_TValue* %641, i32 1) #5, !dbg !1714
  %643 = load i8*, i8** %108, align 8, !dbg !1715, !tbaa !563
  %644 = getelementptr inbounds i8, i8* %643, i64 %611, !dbg !1715
  %645 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !1716, !tbaa !566
  %646 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %645, i64 -1, !dbg !1716
  store %struct.lua_TValue* %646, %struct.lua_TValue** %47, align 8, !dbg !1716, !tbaa !566
  %647 = bitcast %struct.lua_TValue* %646 to i64*, !dbg !1717
  %648 = bitcast i8* %644 to i64*, !dbg !1717
  %649 = load i64, i64* %647, align 8, !dbg !1717
  store i64 %649, i64* %648, align 8, !dbg !1717
  %650 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %645, i64 -1, i32 1, !dbg !1717
  %651 = load i32, i32* %650, align 8, !dbg !1717, !tbaa !423
  %652 = getelementptr inbounds i8, i8* %644, i64 8, !dbg !1717
  %653 = bitcast i8* %652 to i32*, !dbg !1717
  store i32 %651, i32* %653, align 8, !dbg !1717, !tbaa !423
  br label %655, !dbg !1718

; <label>:654:                                    ; preds = %601
  call void @luaG_aritherror(%struct.lua_State* nonnull %0, %struct.lua_TValue* nonnull %534, %struct.lua_TValue* %544) #5, !dbg !1719
  br label %655, !dbg !1719

; <label>:655:                                    ; preds = %640, %587, %654
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %53) #4, !dbg !1720
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %52) #4, !dbg !1720
  %656 = load %struct.lua_TValue*, %struct.lua_TValue** %37, align 8, !dbg !1638, !tbaa !961
  br label %2121

; <label>:657:                                    ; preds = %222
  %658 = lshr i32 %153, 23, !dbg !1721
  %659 = icmp slt i32 %153, 0, !dbg !1721
  %660 = and i32 %658, 255, !dbg !1721
  %661 = zext i32 %660 to i64, !dbg !1721
  %662 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %146, i64 %661, !dbg !1721
  %663 = zext i32 %658 to i64, !dbg !1721
  %664 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %663, !dbg !1721
  %665 = select i1 %659, %struct.lua_TValue* %662, %struct.lua_TValue* %664, !dbg !1721
  %666 = lshr i32 %153, 14, !dbg !1721
  %667 = and i32 %153, 4194304, !dbg !1721
  %668 = icmp eq i32 %667, 0, !dbg !1721
  %669 = and i32 %666, 255, !dbg !1721
  %670 = zext i32 %669 to i64, !dbg !1721
  %671 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %146, i64 %670, !dbg !1721
  %672 = and i32 %666, 511, !dbg !1721
  %673 = zext i32 %672 to i64, !dbg !1721
  %674 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %673, !dbg !1721
  %675 = select i1 %668, %struct.lua_TValue* %674, %struct.lua_TValue* %671, !dbg !1721
  %676 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %665, i64 0, i32 1, !dbg !1722
  %677 = load i32, i32* %676, align 8, !dbg !1722, !tbaa !423
  %678 = icmp eq i32 %677, 3, !dbg !1722
  br i1 %678, label %679, label %692, !dbg !1722

; <label>:679:                                    ; preds = %657
  %680 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %675, i64 0, i32 1, !dbg !1722
  %681 = load i32, i32* %680, align 8, !dbg !1722, !tbaa !423
  %682 = icmp eq i32 %681, 3, !dbg !1722
  br i1 %682, label %684, label %683, !dbg !1721

; <label>:683:                                    ; preds = %679
  store i32* %152, i32** %35, align 8, !dbg !1723, !tbaa !1333
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %55) #4, !dbg !1732
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %56) #4, !dbg !1732
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %57) #4, !dbg !1737
  br label %704, !dbg !1738

; <label>:684:                                    ; preds = %679
  %685 = bitcast %struct.lua_TValue* %665 to double*, !dbg !1739
  %686 = load double, double* %685, align 8, !dbg !1739, !tbaa !430
  %687 = bitcast %struct.lua_TValue* %675 to double*, !dbg !1739
  %688 = load double, double* %687, align 8, !dbg !1739, !tbaa !430
  %689 = fmul double %686, %688, !dbg !1740
  %690 = bitcast %struct.lua_TValue* %227 to double*, !dbg !1740
  store double %689, double* %690, align 8, !dbg !1740, !tbaa !430
  %691 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %226, i32 1, !dbg !1740
  store i32 3, i32* %691, align 8, !dbg !1740, !tbaa !423
  br label %2121, !dbg !1739

; <label>:692:                                    ; preds = %657
  store i32* %152, i32** %35, align 8, !dbg !1723, !tbaa !1333
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %55) #4, !dbg !1732
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %56) #4, !dbg !1732
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %57) #4, !dbg !1737
  %693 = icmp eq i32 %677, 4, !dbg !1738
  br i1 %693, label %694, label %703, !dbg !1738

; <label>:694:                                    ; preds = %692
  %695 = bitcast %struct.lua_TValue* %665 to %union.TString**, !dbg !1741
  %696 = load %union.TString*, %union.TString** %695, align 8, !dbg !1741, !tbaa !430
  %697 = getelementptr inbounds %union.TString, %union.TString* %696, i64 1, !dbg !1741
  %698 = bitcast %union.TString* %697 to i8*, !dbg !1741
  %699 = call i32 @luaO_str2d(i8* nonnull %698, double* nonnull %12) #5, !dbg !1743
  %700 = icmp eq i32 %699, 0, !dbg !1743
  br i1 %700, label %703, label %701, !dbg !1744

; <label>:701:                                    ; preds = %694
  %702 = load i64, i64* %93, align 8, !dbg !1745, !tbaa !435
  store i64 %702, i64* %94, align 8, !dbg !1745, !tbaa !430
  store i32 3, i32* %95, align 8, !dbg !1745, !tbaa !423
  br label %704, !dbg !1746

; <label>:703:                                    ; preds = %692, %694
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %57) #4, !dbg !1747
  br label %727, !dbg !1749

; <label>:704:                                    ; preds = %683, %701
  %705 = phi %struct.lua_TValue* [ %27, %701 ], [ %665, %683 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %57) #4, !dbg !1747
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %76) #4, !dbg !1754
  %706 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %675, i64 0, i32 1, !dbg !1755
  %707 = load i32, i32* %706, align 8, !dbg !1755, !tbaa !423
  switch i32 %707, label %717 [
    i32 3, label %718
    i32 4, label %708
  ], !dbg !1756

; <label>:708:                                    ; preds = %704
  %709 = bitcast %struct.lua_TValue* %675 to %union.TString**, !dbg !1757
  %710 = load %union.TString*, %union.TString** %709, align 8, !dbg !1757, !tbaa !430
  %711 = getelementptr inbounds %union.TString, %union.TString* %710, i64 1, !dbg !1757
  %712 = bitcast %union.TString* %711 to i8*, !dbg !1757
  %713 = call i32 @luaO_str2d(i8* nonnull %712, double* nonnull %11) #5, !dbg !1759
  %714 = icmp eq i32 %713, 0, !dbg !1759
  br i1 %714, label %717, label %715, !dbg !1760

; <label>:715:                                    ; preds = %708
  %716 = load i64, i64* %117, align 8, !dbg !1761, !tbaa !435
  store i64 %716, i64* %118, align 8, !dbg !1761, !tbaa !430
  store i32 3, i32* %119, align 8, !dbg !1761, !tbaa !423
  br label %718, !dbg !1762

; <label>:717:                                    ; preds = %704, %708
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %76) #4, !dbg !1763
  br label %727, !dbg !1765

; <label>:718:                                    ; preds = %715, %704
  %719 = phi %struct.lua_TValue* [ %675, %704 ], [ %28, %715 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %76) #4, !dbg !1763
  %720 = bitcast %struct.lua_TValue* %705 to double*, !dbg !1766
  %721 = load double, double* %720, align 8, !dbg !1766, !tbaa !430
  %722 = bitcast %struct.lua_TValue* %719 to double*, !dbg !1768
  %723 = load double, double* %722, align 8, !dbg !1768, !tbaa !430
  %724 = fmul double %721, %723, !dbg !1770
  %725 = bitcast %struct.lua_TValue* %227 to double*, !dbg !1770
  store double %724, double* %725, align 8, !dbg !1770, !tbaa !430
  %726 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %226, i32 1, !dbg !1770
  store i32 3, i32* %726, align 8, !dbg !1770, !tbaa !423
  br label %786, !dbg !1771

; <label>:727:                                    ; preds = %717, %703
  %728 = call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* nonnull %0, %struct.lua_TValue* nonnull %665, i32 7) #5, !dbg !1778
  %729 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %728, i64 0, i32 1, !dbg !1780
  %730 = load i32, i32* %729, align 8, !dbg !1780, !tbaa !423
  %731 = icmp eq i32 %730, 0, !dbg !1780
  br i1 %731, label %732, label %737, !dbg !1781

; <label>:732:                                    ; preds = %727
  %733 = call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* nonnull %0, %struct.lua_TValue* %675, i32 7) #5, !dbg !1782
  %734 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %733, i64 0, i32 1
  %735 = load i32, i32* %734, align 8, !dbg !1783, !tbaa !423
  %736 = icmp eq i32 %735, 0, !dbg !1783
  br i1 %736, label %785, label %737, !dbg !1784

; <label>:737:                                    ; preds = %732, %727
  %738 = phi i32* [ %734, %732 ], [ %729, %727 ], !dbg !1785
  %739 = phi %struct.lua_TValue* [ %733, %732 ], [ %728, %727 ]
  %740 = load i64, i64* %82, align 8, !dbg !1792, !tbaa !563
  %741 = ptrtoint %struct.lua_TValue* %227 to i64, !dbg !1792
  %742 = sub i64 %741, %740, !dbg !1792
  %743 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !1785, !tbaa !566
  %744 = bitcast %struct.lua_TValue* %739 to i64*, !dbg !1785
  %745 = bitcast %struct.lua_TValue* %743 to i64*, !dbg !1785
  %746 = load i64, i64* %744, align 8, !dbg !1785
  store i64 %746, i64* %745, align 8, !dbg !1785
  %747 = load i32, i32* %738, align 8, !dbg !1785, !tbaa !423
  %748 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %743, i64 0, i32 1, !dbg !1785
  store i32 %747, i32* %748, align 8, !dbg !1785, !tbaa !423
  %749 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !1794, !tbaa !566
  %750 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %749, i64 1, !dbg !1794
  %751 = bitcast %struct.lua_TValue* %665 to i64*, !dbg !1794
  %752 = bitcast %struct.lua_TValue* %750 to i64*, !dbg !1794
  %753 = load i64, i64* %751, align 8, !dbg !1794
  store i64 %753, i64* %752, align 8, !dbg !1794
  %754 = load i32, i32* %676, align 8, !dbg !1794, !tbaa !423
  %755 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %749, i64 1, i32 1, !dbg !1794
  store i32 %754, i32* %755, align 8, !dbg !1794, !tbaa !423
  %756 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !1795, !tbaa !566
  %757 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %756, i64 2, !dbg !1795
  %758 = bitcast %struct.lua_TValue* %675 to i64*, !dbg !1795
  %759 = bitcast %struct.lua_TValue* %757 to i64*, !dbg !1795
  %760 = load i64, i64* %758, align 8, !dbg !1795
  store i64 %760, i64* %759, align 8, !dbg !1795
  %761 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %675, i64 0, i32 1, !dbg !1795
  %762 = load i32, i32* %761, align 8, !dbg !1795, !tbaa !423
  %763 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %756, i64 2, i32 1, !dbg !1795
  store i32 %762, i32* %763, align 8, !dbg !1795, !tbaa !423
  %764 = load i64, i64* %72, align 8, !dbg !1796, !tbaa !571
  %765 = load i64, i64* %48, align 8, !dbg !1796, !tbaa !566
  %766 = sub i64 %764, %765, !dbg !1796
  %767 = icmp slt i64 %766, 49, !dbg !1796
  %768 = inttoptr i64 %765 to %struct.lua_TValue*, !dbg !1797
  br i1 %767, label %769, label %771, !dbg !1797

; <label>:769:                                    ; preds = %737
  call void @luaD_growstack(%struct.lua_State* nonnull %0, i32 3) #5, !dbg !1796
  %770 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !1798, !tbaa !566
  br label %771, !dbg !1796

; <label>:771:                                    ; preds = %769, %737
  %772 = phi %struct.lua_TValue* [ %768, %737 ], [ %770, %769 ], !dbg !1798
  %773 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %772, i64 3, !dbg !1798
  store %struct.lua_TValue* %773, %struct.lua_TValue** %47, align 8, !dbg !1798, !tbaa !566
  call void @luaD_call(%struct.lua_State* nonnull %0, %struct.lua_TValue* %772, i32 1) #5, !dbg !1799
  %774 = load i8*, i8** %108, align 8, !dbg !1800, !tbaa !563
  %775 = getelementptr inbounds i8, i8* %774, i64 %742, !dbg !1800
  %776 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !1801, !tbaa !566
  %777 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %776, i64 -1, !dbg !1801
  store %struct.lua_TValue* %777, %struct.lua_TValue** %47, align 8, !dbg !1801, !tbaa !566
  %778 = bitcast %struct.lua_TValue* %777 to i64*, !dbg !1802
  %779 = bitcast i8* %775 to i64*, !dbg !1802
  %780 = load i64, i64* %778, align 8, !dbg !1802
  store i64 %780, i64* %779, align 8, !dbg !1802
  %781 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %776, i64 -1, i32 1, !dbg !1802
  %782 = load i32, i32* %781, align 8, !dbg !1802, !tbaa !423
  %783 = getelementptr inbounds i8, i8* %775, i64 8, !dbg !1802
  %784 = bitcast i8* %783 to i32*, !dbg !1802
  store i32 %782, i32* %784, align 8, !dbg !1802, !tbaa !423
  br label %786, !dbg !1803

; <label>:785:                                    ; preds = %732
  call void @luaG_aritherror(%struct.lua_State* nonnull %0, %struct.lua_TValue* nonnull %665, %struct.lua_TValue* %675) #5, !dbg !1804
  br label %786, !dbg !1804

; <label>:786:                                    ; preds = %771, %718, %785
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %56) #4, !dbg !1805
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %55) #4, !dbg !1805
  %787 = load %struct.lua_TValue*, %struct.lua_TValue** %37, align 8, !dbg !1723, !tbaa !961
  br label %2121

; <label>:788:                                    ; preds = %222
  %789 = lshr i32 %153, 23, !dbg !1806
  %790 = icmp slt i32 %153, 0, !dbg !1806
  %791 = and i32 %789, 255, !dbg !1806
  %792 = zext i32 %791 to i64, !dbg !1806
  %793 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %146, i64 %792, !dbg !1806
  %794 = zext i32 %789 to i64, !dbg !1806
  %795 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %794, !dbg !1806
  %796 = select i1 %790, %struct.lua_TValue* %793, %struct.lua_TValue* %795, !dbg !1806
  %797 = lshr i32 %153, 14, !dbg !1806
  %798 = and i32 %153, 4194304, !dbg !1806
  %799 = icmp eq i32 %798, 0, !dbg !1806
  %800 = and i32 %797, 255, !dbg !1806
  %801 = zext i32 %800 to i64, !dbg !1806
  %802 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %146, i64 %801, !dbg !1806
  %803 = and i32 %797, 511, !dbg !1806
  %804 = zext i32 %803 to i64, !dbg !1806
  %805 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %804, !dbg !1806
  %806 = select i1 %799, %struct.lua_TValue* %805, %struct.lua_TValue* %802, !dbg !1806
  %807 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %796, i64 0, i32 1, !dbg !1807
  %808 = load i32, i32* %807, align 8, !dbg !1807, !tbaa !423
  %809 = icmp eq i32 %808, 3, !dbg !1807
  br i1 %809, label %810, label %823, !dbg !1807

; <label>:810:                                    ; preds = %788
  %811 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %806, i64 0, i32 1, !dbg !1807
  %812 = load i32, i32* %811, align 8, !dbg !1807, !tbaa !423
  %813 = icmp eq i32 %812, 3, !dbg !1807
  br i1 %813, label %815, label %814, !dbg !1806

; <label>:814:                                    ; preds = %810
  store i32* %152, i32** %35, align 8, !dbg !1808, !tbaa !1333
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %58) #4, !dbg !1817
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %59) #4, !dbg !1817
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %60) #4, !dbg !1822
  br label %835, !dbg !1823

; <label>:815:                                    ; preds = %810
  %816 = bitcast %struct.lua_TValue* %796 to double*, !dbg !1824
  %817 = load double, double* %816, align 8, !dbg !1824, !tbaa !430
  %818 = bitcast %struct.lua_TValue* %806 to double*, !dbg !1824
  %819 = load double, double* %818, align 8, !dbg !1824, !tbaa !430
  %820 = fdiv double %817, %819, !dbg !1825
  %821 = bitcast %struct.lua_TValue* %227 to double*, !dbg !1825
  store double %820, double* %821, align 8, !dbg !1825, !tbaa !430
  %822 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %226, i32 1, !dbg !1825
  store i32 3, i32* %822, align 8, !dbg !1825, !tbaa !423
  br label %2121, !dbg !1824

; <label>:823:                                    ; preds = %788
  store i32* %152, i32** %35, align 8, !dbg !1808, !tbaa !1333
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %58) #4, !dbg !1817
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %59) #4, !dbg !1817
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %60) #4, !dbg !1822
  %824 = icmp eq i32 %808, 4, !dbg !1823
  br i1 %824, label %825, label %834, !dbg !1823

; <label>:825:                                    ; preds = %823
  %826 = bitcast %struct.lua_TValue* %796 to %union.TString**, !dbg !1826
  %827 = load %union.TString*, %union.TString** %826, align 8, !dbg !1826, !tbaa !430
  %828 = getelementptr inbounds %union.TString, %union.TString* %827, i64 1, !dbg !1826
  %829 = bitcast %union.TString* %828 to i8*, !dbg !1826
  %830 = call i32 @luaO_str2d(i8* nonnull %829, double* nonnull %10) #5, !dbg !1828
  %831 = icmp eq i32 %830, 0, !dbg !1828
  br i1 %831, label %834, label %832, !dbg !1829

; <label>:832:                                    ; preds = %825
  %833 = load i64, i64* %96, align 8, !dbg !1830, !tbaa !435
  store i64 %833, i64* %97, align 8, !dbg !1830, !tbaa !430
  store i32 3, i32* %98, align 8, !dbg !1830, !tbaa !423
  br label %835, !dbg !1831

; <label>:834:                                    ; preds = %823, %825
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %60) #4, !dbg !1832
  br label %858, !dbg !1834

; <label>:835:                                    ; preds = %814, %832
  %836 = phi %struct.lua_TValue* [ %25, %832 ], [ %796, %814 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %60) #4, !dbg !1832
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %77) #4, !dbg !1839
  %837 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %806, i64 0, i32 1, !dbg !1840
  %838 = load i32, i32* %837, align 8, !dbg !1840, !tbaa !423
  switch i32 %838, label %848 [
    i32 3, label %849
    i32 4, label %839
  ], !dbg !1841

; <label>:839:                                    ; preds = %835
  %840 = bitcast %struct.lua_TValue* %806 to %union.TString**, !dbg !1842
  %841 = load %union.TString*, %union.TString** %840, align 8, !dbg !1842, !tbaa !430
  %842 = getelementptr inbounds %union.TString, %union.TString* %841, i64 1, !dbg !1842
  %843 = bitcast %union.TString* %842 to i8*, !dbg !1842
  %844 = call i32 @luaO_str2d(i8* nonnull %843, double* nonnull %9) #5, !dbg !1844
  %845 = icmp eq i32 %844, 0, !dbg !1844
  br i1 %845, label %848, label %846, !dbg !1845

; <label>:846:                                    ; preds = %839
  %847 = load i64, i64* %120, align 8, !dbg !1846, !tbaa !435
  store i64 %847, i64* %121, align 8, !dbg !1846, !tbaa !430
  store i32 3, i32* %122, align 8, !dbg !1846, !tbaa !423
  br label %849, !dbg !1847

; <label>:848:                                    ; preds = %835, %839
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %77) #4, !dbg !1848
  br label %858, !dbg !1850

; <label>:849:                                    ; preds = %846, %835
  %850 = phi %struct.lua_TValue* [ %806, %835 ], [ %26, %846 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %77) #4, !dbg !1848
  %851 = bitcast %struct.lua_TValue* %836 to double*, !dbg !1851
  %852 = load double, double* %851, align 8, !dbg !1851, !tbaa !430
  %853 = bitcast %struct.lua_TValue* %850 to double*, !dbg !1853
  %854 = load double, double* %853, align 8, !dbg !1853, !tbaa !430
  %855 = fdiv double %852, %854, !dbg !1855
  %856 = bitcast %struct.lua_TValue* %227 to double*, !dbg !1855
  store double %855, double* %856, align 8, !dbg !1855, !tbaa !430
  %857 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %226, i32 1, !dbg !1855
  store i32 3, i32* %857, align 8, !dbg !1855, !tbaa !423
  br label %917, !dbg !1856

; <label>:858:                                    ; preds = %848, %834
  %859 = call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* nonnull %0, %struct.lua_TValue* nonnull %796, i32 8) #5, !dbg !1863
  %860 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %859, i64 0, i32 1, !dbg !1865
  %861 = load i32, i32* %860, align 8, !dbg !1865, !tbaa !423
  %862 = icmp eq i32 %861, 0, !dbg !1865
  br i1 %862, label %863, label %868, !dbg !1866

; <label>:863:                                    ; preds = %858
  %864 = call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* nonnull %0, %struct.lua_TValue* %806, i32 8) #5, !dbg !1867
  %865 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %864, i64 0, i32 1
  %866 = load i32, i32* %865, align 8, !dbg !1868, !tbaa !423
  %867 = icmp eq i32 %866, 0, !dbg !1868
  br i1 %867, label %916, label %868, !dbg !1869

; <label>:868:                                    ; preds = %863, %858
  %869 = phi i32* [ %865, %863 ], [ %860, %858 ], !dbg !1870
  %870 = phi %struct.lua_TValue* [ %864, %863 ], [ %859, %858 ]
  %871 = load i64, i64* %82, align 8, !dbg !1877, !tbaa !563
  %872 = ptrtoint %struct.lua_TValue* %227 to i64, !dbg !1877
  %873 = sub i64 %872, %871, !dbg !1877
  %874 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !1870, !tbaa !566
  %875 = bitcast %struct.lua_TValue* %870 to i64*, !dbg !1870
  %876 = bitcast %struct.lua_TValue* %874 to i64*, !dbg !1870
  %877 = load i64, i64* %875, align 8, !dbg !1870
  store i64 %877, i64* %876, align 8, !dbg !1870
  %878 = load i32, i32* %869, align 8, !dbg !1870, !tbaa !423
  %879 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %874, i64 0, i32 1, !dbg !1870
  store i32 %878, i32* %879, align 8, !dbg !1870, !tbaa !423
  %880 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !1879, !tbaa !566
  %881 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %880, i64 1, !dbg !1879
  %882 = bitcast %struct.lua_TValue* %796 to i64*, !dbg !1879
  %883 = bitcast %struct.lua_TValue* %881 to i64*, !dbg !1879
  %884 = load i64, i64* %882, align 8, !dbg !1879
  store i64 %884, i64* %883, align 8, !dbg !1879
  %885 = load i32, i32* %807, align 8, !dbg !1879, !tbaa !423
  %886 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %880, i64 1, i32 1, !dbg !1879
  store i32 %885, i32* %886, align 8, !dbg !1879, !tbaa !423
  %887 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !1880, !tbaa !566
  %888 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %887, i64 2, !dbg !1880
  %889 = bitcast %struct.lua_TValue* %806 to i64*, !dbg !1880
  %890 = bitcast %struct.lua_TValue* %888 to i64*, !dbg !1880
  %891 = load i64, i64* %889, align 8, !dbg !1880
  store i64 %891, i64* %890, align 8, !dbg !1880
  %892 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %806, i64 0, i32 1, !dbg !1880
  %893 = load i32, i32* %892, align 8, !dbg !1880, !tbaa !423
  %894 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %887, i64 2, i32 1, !dbg !1880
  store i32 %893, i32* %894, align 8, !dbg !1880, !tbaa !423
  %895 = load i64, i64* %72, align 8, !dbg !1881, !tbaa !571
  %896 = load i64, i64* %48, align 8, !dbg !1881, !tbaa !566
  %897 = sub i64 %895, %896, !dbg !1881
  %898 = icmp slt i64 %897, 49, !dbg !1881
  %899 = inttoptr i64 %896 to %struct.lua_TValue*, !dbg !1882
  br i1 %898, label %900, label %902, !dbg !1882

; <label>:900:                                    ; preds = %868
  call void @luaD_growstack(%struct.lua_State* nonnull %0, i32 3) #5, !dbg !1881
  %901 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !1883, !tbaa !566
  br label %902, !dbg !1881

; <label>:902:                                    ; preds = %900, %868
  %903 = phi %struct.lua_TValue* [ %899, %868 ], [ %901, %900 ], !dbg !1883
  %904 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %903, i64 3, !dbg !1883
  store %struct.lua_TValue* %904, %struct.lua_TValue** %47, align 8, !dbg !1883, !tbaa !566
  call void @luaD_call(%struct.lua_State* nonnull %0, %struct.lua_TValue* %903, i32 1) #5, !dbg !1884
  %905 = load i8*, i8** %108, align 8, !dbg !1885, !tbaa !563
  %906 = getelementptr inbounds i8, i8* %905, i64 %873, !dbg !1885
  %907 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !1886, !tbaa !566
  %908 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %907, i64 -1, !dbg !1886
  store %struct.lua_TValue* %908, %struct.lua_TValue** %47, align 8, !dbg !1886, !tbaa !566
  %909 = bitcast %struct.lua_TValue* %908 to i64*, !dbg !1887
  %910 = bitcast i8* %906 to i64*, !dbg !1887
  %911 = load i64, i64* %909, align 8, !dbg !1887
  store i64 %911, i64* %910, align 8, !dbg !1887
  %912 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %907, i64 -1, i32 1, !dbg !1887
  %913 = load i32, i32* %912, align 8, !dbg !1887, !tbaa !423
  %914 = getelementptr inbounds i8, i8* %906, i64 8, !dbg !1887
  %915 = bitcast i8* %914 to i32*, !dbg !1887
  store i32 %913, i32* %915, align 8, !dbg !1887, !tbaa !423
  br label %917, !dbg !1888

; <label>:916:                                    ; preds = %863
  call void @luaG_aritherror(%struct.lua_State* nonnull %0, %struct.lua_TValue* nonnull %796, %struct.lua_TValue* %806) #5, !dbg !1889
  br label %917, !dbg !1889

; <label>:917:                                    ; preds = %902, %849, %916
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %59) #4, !dbg !1890
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %58) #4, !dbg !1890
  %918 = load %struct.lua_TValue*, %struct.lua_TValue** %37, align 8, !dbg !1808, !tbaa !961
  br label %2121

; <label>:919:                                    ; preds = %222
  %920 = lshr i32 %153, 23, !dbg !1891
  %921 = icmp slt i32 %153, 0, !dbg !1891
  %922 = and i32 %920, 255, !dbg !1891
  %923 = zext i32 %922 to i64, !dbg !1891
  %924 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %146, i64 %923, !dbg !1891
  %925 = zext i32 %920 to i64, !dbg !1891
  %926 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %925, !dbg !1891
  %927 = select i1 %921, %struct.lua_TValue* %924, %struct.lua_TValue* %926, !dbg !1891
  %928 = lshr i32 %153, 14, !dbg !1891
  %929 = and i32 %153, 4194304, !dbg !1891
  %930 = icmp eq i32 %929, 0, !dbg !1891
  %931 = and i32 %928, 255, !dbg !1891
  %932 = zext i32 %931 to i64, !dbg !1891
  %933 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %146, i64 %932, !dbg !1891
  %934 = and i32 %928, 511, !dbg !1891
  %935 = zext i32 %934 to i64, !dbg !1891
  %936 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %935, !dbg !1891
  %937 = select i1 %930, %struct.lua_TValue* %936, %struct.lua_TValue* %933, !dbg !1891
  %938 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %927, i64 0, i32 1, !dbg !1892
  %939 = load i32, i32* %938, align 8, !dbg !1892, !tbaa !423
  %940 = icmp eq i32 %939, 3, !dbg !1892
  br i1 %940, label %941, label %957, !dbg !1892

; <label>:941:                                    ; preds = %919
  %942 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %937, i64 0, i32 1, !dbg !1892
  %943 = load i32, i32* %942, align 8, !dbg !1892, !tbaa !423
  %944 = icmp eq i32 %943, 3, !dbg !1892
  br i1 %944, label %946, label %945, !dbg !1891

; <label>:945:                                    ; preds = %941
  store i32* %152, i32** %35, align 8, !dbg !1893, !tbaa !1333
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %61) #4, !dbg !1902
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %62) #4, !dbg !1902
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %63) #4, !dbg !1907
  br label %969, !dbg !1908

; <label>:946:                                    ; preds = %941
  %947 = bitcast %struct.lua_TValue* %927 to double*, !dbg !1909
  %948 = load double, double* %947, align 8, !dbg !1909, !tbaa !430
  %949 = bitcast %struct.lua_TValue* %937 to double*, !dbg !1909
  %950 = load double, double* %949, align 8, !dbg !1909, !tbaa !430
  %951 = fdiv double %948, %950, !dbg !1910
  %952 = call double @floor(double %951) #5, !dbg !1910
  %953 = fmul double %950, %952, !dbg !1910
  %954 = fsub double %948, %953, !dbg !1910
  %955 = bitcast %struct.lua_TValue* %227 to double*, !dbg !1910
  store double %954, double* %955, align 8, !dbg !1910, !tbaa !430
  %956 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %226, i32 1, !dbg !1910
  store i32 3, i32* %956, align 8, !dbg !1910, !tbaa !423
  br label %2121, !dbg !1909

; <label>:957:                                    ; preds = %919
  store i32* %152, i32** %35, align 8, !dbg !1893, !tbaa !1333
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %61) #4, !dbg !1902
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %62) #4, !dbg !1902
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %63) #4, !dbg !1907
  %958 = icmp eq i32 %939, 4, !dbg !1908
  br i1 %958, label %959, label %968, !dbg !1908

; <label>:959:                                    ; preds = %957
  %960 = bitcast %struct.lua_TValue* %927 to %union.TString**, !dbg !1911
  %961 = load %union.TString*, %union.TString** %960, align 8, !dbg !1911, !tbaa !430
  %962 = getelementptr inbounds %union.TString, %union.TString* %961, i64 1, !dbg !1911
  %963 = bitcast %union.TString* %962 to i8*, !dbg !1911
  %964 = call i32 @luaO_str2d(i8* nonnull %963, double* nonnull %8) #5, !dbg !1913
  %965 = icmp eq i32 %964, 0, !dbg !1913
  br i1 %965, label %968, label %966, !dbg !1914

; <label>:966:                                    ; preds = %959
  %967 = load i64, i64* %99, align 8, !dbg !1915, !tbaa !435
  store i64 %967, i64* %100, align 8, !dbg !1915, !tbaa !430
  store i32 3, i32* %101, align 8, !dbg !1915, !tbaa !423
  br label %969, !dbg !1916

; <label>:968:                                    ; preds = %957, %959
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %63) #4, !dbg !1917
  br label %995, !dbg !1919

; <label>:969:                                    ; preds = %945, %966
  %970 = phi %struct.lua_TValue* [ %23, %966 ], [ %927, %945 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %63) #4, !dbg !1917
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %78) #4, !dbg !1924
  %971 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %937, i64 0, i32 1, !dbg !1925
  %972 = load i32, i32* %971, align 8, !dbg !1925, !tbaa !423
  switch i32 %972, label %982 [
    i32 3, label %983
    i32 4, label %973
  ], !dbg !1926

; <label>:973:                                    ; preds = %969
  %974 = bitcast %struct.lua_TValue* %937 to %union.TString**, !dbg !1927
  %975 = load %union.TString*, %union.TString** %974, align 8, !dbg !1927, !tbaa !430
  %976 = getelementptr inbounds %union.TString, %union.TString* %975, i64 1, !dbg !1927
  %977 = bitcast %union.TString* %976 to i8*, !dbg !1927
  %978 = call i32 @luaO_str2d(i8* nonnull %977, double* nonnull %7) #5, !dbg !1929
  %979 = icmp eq i32 %978, 0, !dbg !1929
  br i1 %979, label %982, label %980, !dbg !1930

; <label>:980:                                    ; preds = %973
  %981 = load i64, i64* %123, align 8, !dbg !1931, !tbaa !435
  store i64 %981, i64* %124, align 8, !dbg !1931, !tbaa !430
  store i32 3, i32* %125, align 8, !dbg !1931, !tbaa !423
  br label %983, !dbg !1932

; <label>:982:                                    ; preds = %969, %973
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %78) #4, !dbg !1933
  br label %995, !dbg !1935

; <label>:983:                                    ; preds = %980, %969
  %984 = phi %struct.lua_TValue* [ %937, %969 ], [ %24, %980 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %78) #4, !dbg !1933
  %985 = bitcast %struct.lua_TValue* %970 to double*, !dbg !1936
  %986 = load double, double* %985, align 8, !dbg !1936, !tbaa !430
  %987 = bitcast %struct.lua_TValue* %984 to double*, !dbg !1938
  %988 = load double, double* %987, align 8, !dbg !1938, !tbaa !430
  %989 = fdiv double %986, %988, !dbg !1940
  %990 = call double @floor(double %989) #5, !dbg !1940
  %991 = fmul double %988, %990, !dbg !1940
  %992 = fsub double %986, %991, !dbg !1940
  %993 = bitcast %struct.lua_TValue* %227 to double*, !dbg !1940
  store double %992, double* %993, align 8, !dbg !1940, !tbaa !430
  %994 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %226, i32 1, !dbg !1940
  store i32 3, i32* %994, align 8, !dbg !1940, !tbaa !423
  br label %1054, !dbg !1941

; <label>:995:                                    ; preds = %982, %968
  %996 = call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* nonnull %0, %struct.lua_TValue* nonnull %927, i32 9) #5, !dbg !1948
  %997 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %996, i64 0, i32 1, !dbg !1950
  %998 = load i32, i32* %997, align 8, !dbg !1950, !tbaa !423
  %999 = icmp eq i32 %998, 0, !dbg !1950
  br i1 %999, label %1000, label %1005, !dbg !1951

; <label>:1000:                                   ; preds = %995
  %1001 = call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* nonnull %0, %struct.lua_TValue* %937, i32 9) #5, !dbg !1952
  %1002 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1001, i64 0, i32 1
  %1003 = load i32, i32* %1002, align 8, !dbg !1953, !tbaa !423
  %1004 = icmp eq i32 %1003, 0, !dbg !1953
  br i1 %1004, label %1053, label %1005, !dbg !1954

; <label>:1005:                                   ; preds = %1000, %995
  %1006 = phi i32* [ %1002, %1000 ], [ %997, %995 ], !dbg !1955
  %1007 = phi %struct.lua_TValue* [ %1001, %1000 ], [ %996, %995 ]
  %1008 = load i64, i64* %82, align 8, !dbg !1962, !tbaa !563
  %1009 = ptrtoint %struct.lua_TValue* %227 to i64, !dbg !1962
  %1010 = sub i64 %1009, %1008, !dbg !1962
  %1011 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !1955, !tbaa !566
  %1012 = bitcast %struct.lua_TValue* %1007 to i64*, !dbg !1955
  %1013 = bitcast %struct.lua_TValue* %1011 to i64*, !dbg !1955
  %1014 = load i64, i64* %1012, align 8, !dbg !1955
  store i64 %1014, i64* %1013, align 8, !dbg !1955
  %1015 = load i32, i32* %1006, align 8, !dbg !1955, !tbaa !423
  %1016 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1011, i64 0, i32 1, !dbg !1955
  store i32 %1015, i32* %1016, align 8, !dbg !1955, !tbaa !423
  %1017 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !1964, !tbaa !566
  %1018 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1017, i64 1, !dbg !1964
  %1019 = bitcast %struct.lua_TValue* %927 to i64*, !dbg !1964
  %1020 = bitcast %struct.lua_TValue* %1018 to i64*, !dbg !1964
  %1021 = load i64, i64* %1019, align 8, !dbg !1964
  store i64 %1021, i64* %1020, align 8, !dbg !1964
  %1022 = load i32, i32* %938, align 8, !dbg !1964, !tbaa !423
  %1023 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1017, i64 1, i32 1, !dbg !1964
  store i32 %1022, i32* %1023, align 8, !dbg !1964, !tbaa !423
  %1024 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !1965, !tbaa !566
  %1025 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1024, i64 2, !dbg !1965
  %1026 = bitcast %struct.lua_TValue* %937 to i64*, !dbg !1965
  %1027 = bitcast %struct.lua_TValue* %1025 to i64*, !dbg !1965
  %1028 = load i64, i64* %1026, align 8, !dbg !1965
  store i64 %1028, i64* %1027, align 8, !dbg !1965
  %1029 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %937, i64 0, i32 1, !dbg !1965
  %1030 = load i32, i32* %1029, align 8, !dbg !1965, !tbaa !423
  %1031 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1024, i64 2, i32 1, !dbg !1965
  store i32 %1030, i32* %1031, align 8, !dbg !1965, !tbaa !423
  %1032 = load i64, i64* %72, align 8, !dbg !1966, !tbaa !571
  %1033 = load i64, i64* %48, align 8, !dbg !1966, !tbaa !566
  %1034 = sub i64 %1032, %1033, !dbg !1966
  %1035 = icmp slt i64 %1034, 49, !dbg !1966
  %1036 = inttoptr i64 %1033 to %struct.lua_TValue*, !dbg !1967
  br i1 %1035, label %1037, label %1039, !dbg !1967

; <label>:1037:                                   ; preds = %1005
  call void @luaD_growstack(%struct.lua_State* nonnull %0, i32 3) #5, !dbg !1966
  %1038 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !1968, !tbaa !566
  br label %1039, !dbg !1966

; <label>:1039:                                   ; preds = %1037, %1005
  %1040 = phi %struct.lua_TValue* [ %1036, %1005 ], [ %1038, %1037 ], !dbg !1968
  %1041 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1040, i64 3, !dbg !1968
  store %struct.lua_TValue* %1041, %struct.lua_TValue** %47, align 8, !dbg !1968, !tbaa !566
  call void @luaD_call(%struct.lua_State* nonnull %0, %struct.lua_TValue* %1040, i32 1) #5, !dbg !1969
  %1042 = load i8*, i8** %108, align 8, !dbg !1970, !tbaa !563
  %1043 = getelementptr inbounds i8, i8* %1042, i64 %1010, !dbg !1970
  %1044 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !1971, !tbaa !566
  %1045 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1044, i64 -1, !dbg !1971
  store %struct.lua_TValue* %1045, %struct.lua_TValue** %47, align 8, !dbg !1971, !tbaa !566
  %1046 = bitcast %struct.lua_TValue* %1045 to i64*, !dbg !1972
  %1047 = bitcast i8* %1043 to i64*, !dbg !1972
  %1048 = load i64, i64* %1046, align 8, !dbg !1972
  store i64 %1048, i64* %1047, align 8, !dbg !1972
  %1049 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1044, i64 -1, i32 1, !dbg !1972
  %1050 = load i32, i32* %1049, align 8, !dbg !1972, !tbaa !423
  %1051 = getelementptr inbounds i8, i8* %1043, i64 8, !dbg !1972
  %1052 = bitcast i8* %1051 to i32*, !dbg !1972
  store i32 %1050, i32* %1052, align 8, !dbg !1972, !tbaa !423
  br label %1054, !dbg !1973

; <label>:1053:                                   ; preds = %1000
  call void @luaG_aritherror(%struct.lua_State* nonnull %0, %struct.lua_TValue* nonnull %927, %struct.lua_TValue* %937) #5, !dbg !1974
  br label %1054, !dbg !1974

; <label>:1054:                                   ; preds = %1039, %983, %1053
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %62) #4, !dbg !1975
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %61) #4, !dbg !1975
  %1055 = load %struct.lua_TValue*, %struct.lua_TValue** %37, align 8, !dbg !1893, !tbaa !961
  br label %2121

; <label>:1056:                                   ; preds = %222
  %1057 = lshr i32 %153, 23, !dbg !1976
  %1058 = icmp slt i32 %153, 0, !dbg !1976
  %1059 = and i32 %1057, 255, !dbg !1976
  %1060 = zext i32 %1059 to i64, !dbg !1976
  %1061 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %146, i64 %1060, !dbg !1976
  %1062 = zext i32 %1057 to i64, !dbg !1976
  %1063 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %1062, !dbg !1976
  %1064 = select i1 %1058, %struct.lua_TValue* %1061, %struct.lua_TValue* %1063, !dbg !1976
  %1065 = lshr i32 %153, 14, !dbg !1976
  %1066 = and i32 %153, 4194304, !dbg !1976
  %1067 = icmp eq i32 %1066, 0, !dbg !1976
  %1068 = and i32 %1065, 255, !dbg !1976
  %1069 = zext i32 %1068 to i64, !dbg !1976
  %1070 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %146, i64 %1069, !dbg !1976
  %1071 = and i32 %1065, 511, !dbg !1976
  %1072 = zext i32 %1071 to i64, !dbg !1976
  %1073 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %1072, !dbg !1976
  %1074 = select i1 %1067, %struct.lua_TValue* %1073, %struct.lua_TValue* %1070, !dbg !1976
  %1075 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1064, i64 0, i32 1, !dbg !1977
  %1076 = load i32, i32* %1075, align 8, !dbg !1977, !tbaa !423
  %1077 = icmp eq i32 %1076, 3, !dbg !1977
  br i1 %1077, label %1078, label %1091, !dbg !1977

; <label>:1078:                                   ; preds = %1056
  %1079 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1074, i64 0, i32 1, !dbg !1977
  %1080 = load i32, i32* %1079, align 8, !dbg !1977, !tbaa !423
  %1081 = icmp eq i32 %1080, 3, !dbg !1977
  br i1 %1081, label %1083, label %1082, !dbg !1976

; <label>:1082:                                   ; preds = %1078
  store i32* %152, i32** %35, align 8, !dbg !1978, !tbaa !1333
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %64) #4, !dbg !1987
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %65) #4, !dbg !1987
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %66) #4, !dbg !1992
  br label %1103, !dbg !1993

; <label>:1083:                                   ; preds = %1078
  %1084 = bitcast %struct.lua_TValue* %1064 to double*, !dbg !1994
  %1085 = load double, double* %1084, align 8, !dbg !1994, !tbaa !430
  %1086 = bitcast %struct.lua_TValue* %1074 to double*, !dbg !1994
  %1087 = load double, double* %1086, align 8, !dbg !1994, !tbaa !430
  %1088 = call double @pow(double %1085, double %1087) #5, !dbg !1995
  %1089 = bitcast %struct.lua_TValue* %227 to double*, !dbg !1995
  store double %1088, double* %1089, align 8, !dbg !1995, !tbaa !430
  %1090 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %226, i32 1, !dbg !1995
  store i32 3, i32* %1090, align 8, !dbg !1995, !tbaa !423
  br label %2121, !dbg !1994

; <label>:1091:                                   ; preds = %1056
  store i32* %152, i32** %35, align 8, !dbg !1978, !tbaa !1333
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %64) #4, !dbg !1987
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %65) #4, !dbg !1987
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %66) #4, !dbg !1992
  %1092 = icmp eq i32 %1076, 4, !dbg !1993
  br i1 %1092, label %1093, label %1102, !dbg !1993

; <label>:1093:                                   ; preds = %1091
  %1094 = bitcast %struct.lua_TValue* %1064 to %union.TString**, !dbg !1996
  %1095 = load %union.TString*, %union.TString** %1094, align 8, !dbg !1996, !tbaa !430
  %1096 = getelementptr inbounds %union.TString, %union.TString* %1095, i64 1, !dbg !1996
  %1097 = bitcast %union.TString* %1096 to i8*, !dbg !1996
  %1098 = call i32 @luaO_str2d(i8* nonnull %1097, double* nonnull %6) #5, !dbg !1998
  %1099 = icmp eq i32 %1098, 0, !dbg !1998
  br i1 %1099, label %1102, label %1100, !dbg !1999

; <label>:1100:                                   ; preds = %1093
  %1101 = load i64, i64* %102, align 8, !dbg !2000, !tbaa !435
  store i64 %1101, i64* %103, align 8, !dbg !2000, !tbaa !430
  store i32 3, i32* %104, align 8, !dbg !2000, !tbaa !423
  br label %1103, !dbg !2001

; <label>:1102:                                   ; preds = %1091, %1093
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %66) #4, !dbg !2002
  br label %1126, !dbg !2004

; <label>:1103:                                   ; preds = %1082, %1100
  %1104 = phi %struct.lua_TValue* [ %21, %1100 ], [ %1064, %1082 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %66) #4, !dbg !2002
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %79) #4, !dbg !2009
  %1105 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1074, i64 0, i32 1, !dbg !2010
  %1106 = load i32, i32* %1105, align 8, !dbg !2010, !tbaa !423
  switch i32 %1106, label %1116 [
    i32 3, label %1117
    i32 4, label %1107
  ], !dbg !2011

; <label>:1107:                                   ; preds = %1103
  %1108 = bitcast %struct.lua_TValue* %1074 to %union.TString**, !dbg !2012
  %1109 = load %union.TString*, %union.TString** %1108, align 8, !dbg !2012, !tbaa !430
  %1110 = getelementptr inbounds %union.TString, %union.TString* %1109, i64 1, !dbg !2012
  %1111 = bitcast %union.TString* %1110 to i8*, !dbg !2012
  %1112 = call i32 @luaO_str2d(i8* nonnull %1111, double* nonnull %5) #5, !dbg !2014
  %1113 = icmp eq i32 %1112, 0, !dbg !2014
  br i1 %1113, label %1116, label %1114, !dbg !2015

; <label>:1114:                                   ; preds = %1107
  %1115 = load i64, i64* %126, align 8, !dbg !2016, !tbaa !435
  store i64 %1115, i64* %127, align 8, !dbg !2016, !tbaa !430
  store i32 3, i32* %128, align 8, !dbg !2016, !tbaa !423
  br label %1117, !dbg !2017

; <label>:1116:                                   ; preds = %1103, %1107
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %79) #4, !dbg !2018
  br label %1126, !dbg !2020

; <label>:1117:                                   ; preds = %1114, %1103
  %1118 = phi %struct.lua_TValue* [ %1074, %1103 ], [ %22, %1114 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %79) #4, !dbg !2018
  %1119 = bitcast %struct.lua_TValue* %1104 to double*, !dbg !2021
  %1120 = load double, double* %1119, align 8, !dbg !2021, !tbaa !430
  %1121 = bitcast %struct.lua_TValue* %1118 to double*, !dbg !2023
  %1122 = load double, double* %1121, align 8, !dbg !2023, !tbaa !430
  %1123 = call double @pow(double %1120, double %1122) #5, !dbg !2025
  %1124 = bitcast %struct.lua_TValue* %227 to double*, !dbg !2025
  store double %1123, double* %1124, align 8, !dbg !2025, !tbaa !430
  %1125 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %226, i32 1, !dbg !2025
  store i32 3, i32* %1125, align 8, !dbg !2025, !tbaa !423
  br label %1185, !dbg !2026

; <label>:1126:                                   ; preds = %1116, %1102
  %1127 = call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* nonnull %0, %struct.lua_TValue* nonnull %1064, i32 10) #5, !dbg !2033
  %1128 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1127, i64 0, i32 1, !dbg !2035
  %1129 = load i32, i32* %1128, align 8, !dbg !2035, !tbaa !423
  %1130 = icmp eq i32 %1129, 0, !dbg !2035
  br i1 %1130, label %1131, label %1136, !dbg !2036

; <label>:1131:                                   ; preds = %1126
  %1132 = call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* nonnull %0, %struct.lua_TValue* %1074, i32 10) #5, !dbg !2037
  %1133 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1132, i64 0, i32 1
  %1134 = load i32, i32* %1133, align 8, !dbg !2038, !tbaa !423
  %1135 = icmp eq i32 %1134, 0, !dbg !2038
  br i1 %1135, label %1184, label %1136, !dbg !2039

; <label>:1136:                                   ; preds = %1131, %1126
  %1137 = phi i32* [ %1133, %1131 ], [ %1128, %1126 ], !dbg !2040
  %1138 = phi %struct.lua_TValue* [ %1132, %1131 ], [ %1127, %1126 ]
  %1139 = load i64, i64* %82, align 8, !dbg !2047, !tbaa !563
  %1140 = ptrtoint %struct.lua_TValue* %227 to i64, !dbg !2047
  %1141 = sub i64 %1140, %1139, !dbg !2047
  %1142 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !2040, !tbaa !566
  %1143 = bitcast %struct.lua_TValue* %1138 to i64*, !dbg !2040
  %1144 = bitcast %struct.lua_TValue* %1142 to i64*, !dbg !2040
  %1145 = load i64, i64* %1143, align 8, !dbg !2040
  store i64 %1145, i64* %1144, align 8, !dbg !2040
  %1146 = load i32, i32* %1137, align 8, !dbg !2040, !tbaa !423
  %1147 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1142, i64 0, i32 1, !dbg !2040
  store i32 %1146, i32* %1147, align 8, !dbg !2040, !tbaa !423
  %1148 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !2049, !tbaa !566
  %1149 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1148, i64 1, !dbg !2049
  %1150 = bitcast %struct.lua_TValue* %1064 to i64*, !dbg !2049
  %1151 = bitcast %struct.lua_TValue* %1149 to i64*, !dbg !2049
  %1152 = load i64, i64* %1150, align 8, !dbg !2049
  store i64 %1152, i64* %1151, align 8, !dbg !2049
  %1153 = load i32, i32* %1075, align 8, !dbg !2049, !tbaa !423
  %1154 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1148, i64 1, i32 1, !dbg !2049
  store i32 %1153, i32* %1154, align 8, !dbg !2049, !tbaa !423
  %1155 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !2050, !tbaa !566
  %1156 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1155, i64 2, !dbg !2050
  %1157 = bitcast %struct.lua_TValue* %1074 to i64*, !dbg !2050
  %1158 = bitcast %struct.lua_TValue* %1156 to i64*, !dbg !2050
  %1159 = load i64, i64* %1157, align 8, !dbg !2050
  store i64 %1159, i64* %1158, align 8, !dbg !2050
  %1160 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1074, i64 0, i32 1, !dbg !2050
  %1161 = load i32, i32* %1160, align 8, !dbg !2050, !tbaa !423
  %1162 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1155, i64 2, i32 1, !dbg !2050
  store i32 %1161, i32* %1162, align 8, !dbg !2050, !tbaa !423
  %1163 = load i64, i64* %72, align 8, !dbg !2051, !tbaa !571
  %1164 = load i64, i64* %48, align 8, !dbg !2051, !tbaa !566
  %1165 = sub i64 %1163, %1164, !dbg !2051
  %1166 = icmp slt i64 %1165, 49, !dbg !2051
  %1167 = inttoptr i64 %1164 to %struct.lua_TValue*, !dbg !2052
  br i1 %1166, label %1168, label %1170, !dbg !2052

; <label>:1168:                                   ; preds = %1136
  call void @luaD_growstack(%struct.lua_State* nonnull %0, i32 3) #5, !dbg !2051
  %1169 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !2053, !tbaa !566
  br label %1170, !dbg !2051

; <label>:1170:                                   ; preds = %1168, %1136
  %1171 = phi %struct.lua_TValue* [ %1167, %1136 ], [ %1169, %1168 ], !dbg !2053
  %1172 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1171, i64 3, !dbg !2053
  store %struct.lua_TValue* %1172, %struct.lua_TValue** %47, align 8, !dbg !2053, !tbaa !566
  call void @luaD_call(%struct.lua_State* nonnull %0, %struct.lua_TValue* %1171, i32 1) #5, !dbg !2054
  %1173 = load i8*, i8** %108, align 8, !dbg !2055, !tbaa !563
  %1174 = getelementptr inbounds i8, i8* %1173, i64 %1141, !dbg !2055
  %1175 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !2056, !tbaa !566
  %1176 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1175, i64 -1, !dbg !2056
  store %struct.lua_TValue* %1176, %struct.lua_TValue** %47, align 8, !dbg !2056, !tbaa !566
  %1177 = bitcast %struct.lua_TValue* %1176 to i64*, !dbg !2057
  %1178 = bitcast i8* %1174 to i64*, !dbg !2057
  %1179 = load i64, i64* %1177, align 8, !dbg !2057
  store i64 %1179, i64* %1178, align 8, !dbg !2057
  %1180 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1175, i64 -1, i32 1, !dbg !2057
  %1181 = load i32, i32* %1180, align 8, !dbg !2057, !tbaa !423
  %1182 = getelementptr inbounds i8, i8* %1174, i64 8, !dbg !2057
  %1183 = bitcast i8* %1182 to i32*, !dbg !2057
  store i32 %1181, i32* %1183, align 8, !dbg !2057, !tbaa !423
  br label %1185, !dbg !2058

; <label>:1184:                                   ; preds = %1131
  call void @luaG_aritherror(%struct.lua_State* nonnull %0, %struct.lua_TValue* nonnull %1064, %struct.lua_TValue* %1074) #5, !dbg !2059
  br label %1185, !dbg !2059

; <label>:1185:                                   ; preds = %1170, %1117, %1184
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %65) #4, !dbg !2060
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %64) #4, !dbg !2060
  %1186 = load %struct.lua_TValue*, %struct.lua_TValue** %37, align 8, !dbg !1978, !tbaa !961
  br label %2121

; <label>:1187:                                   ; preds = %222
  %1188 = lshr i32 %153, 23, !dbg !2061
  %1189 = zext i32 %1188 to i64, !dbg !2061
  %1190 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %1189, !dbg !2061
  %1191 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %1189, i32 1, !dbg !2063
  %1192 = load i32, i32* %1191, align 8, !dbg !2063, !tbaa !423
  %1193 = icmp eq i32 %1192, 3, !dbg !2063
  br i1 %1193, label %1194, label %1200, !dbg !2064

; <label>:1194:                                   ; preds = %1187
  %1195 = bitcast %struct.lua_TValue* %1190 to double*, !dbg !2065
  %1196 = load double, double* %1195, align 8, !dbg !2065, !tbaa !430
  %1197 = fsub double -0.000000e+00, %1196, !dbg !2067
  %1198 = bitcast %struct.lua_TValue* %227 to double*, !dbg !2067
  store double %1197, double* %1198, align 8, !dbg !2067, !tbaa !430
  %1199 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %226, i32 1, !dbg !2067
  store i32 3, i32* %1199, align 8, !dbg !2067, !tbaa !423
  br label %2121, !dbg !2068

; <label>:1200:                                   ; preds = %1187
  store i32* %152, i32** %35, align 8, !dbg !2069, !tbaa !1333
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %67) #4, !dbg !2079
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %68) #4, !dbg !2084
  %1201 = icmp eq i32 %1192, 4, !dbg !2085
  br i1 %1201, label %1202, label %1212, !dbg !2085

; <label>:1202:                                   ; preds = %1200
  %1203 = bitcast %struct.lua_TValue* %1190 to %union.TString**, !dbg !2086
  %1204 = load %union.TString*, %union.TString** %1203, align 8, !dbg !2086, !tbaa !430
  %1205 = getelementptr inbounds %union.TString, %union.TString* %1204, i64 1, !dbg !2086
  %1206 = bitcast %union.TString* %1205 to i8*, !dbg !2086
  %1207 = call i32 @luaO_str2d(i8* nonnull %1206, double* nonnull %4) #5, !dbg !2088
  %1208 = icmp eq i32 %1207, 0, !dbg !2088
  br i1 %1208, label %1212, label %1209, !dbg !2089

; <label>:1209:                                   ; preds = %1202
  %1210 = load i64, i64* %105, align 8, !dbg !2090, !tbaa !435
  store i64 %1210, i64* %106, align 8, !dbg !2090, !tbaa !430
  store i32 3, i32* %107, align 8, !dbg !2090, !tbaa !423
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %68) #4, !dbg !2091
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %80) #4, !dbg !2095
  %1211 = load i32, i32* %1191, align 8, !dbg !2096, !tbaa !423
  switch i32 %1211, label %1220 [
    i32 3, label %1221
    i32 4, label %1213
  ], !dbg !2097

; <label>:1212:                                   ; preds = %1200, %1202
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %68) #4, !dbg !2091
  br label %1226, !dbg !2098

; <label>:1213:                                   ; preds = %1209
  %1214 = bitcast %struct.lua_TValue* %1190 to %union.TString**, !dbg !2099
  %1215 = load %union.TString*, %union.TString** %1214, align 8, !dbg !2099, !tbaa !430
  %1216 = getelementptr inbounds %union.TString, %union.TString* %1215, i64 1, !dbg !2099
  %1217 = bitcast %union.TString* %1216 to i8*, !dbg !2099
  %1218 = call i32 @luaO_str2d(i8* nonnull %1217, double* nonnull %3) #5, !dbg !2101
  %1219 = icmp eq i32 %1218, 0, !dbg !2101
  br i1 %1219, label %1220, label %1221, !dbg !2102

; <label>:1220:                                   ; preds = %1209, %1213
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %80) #4, !dbg !2103
  br label %1226, !dbg !2105

; <label>:1221:                                   ; preds = %1213, %1209
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %80) #4, !dbg !2103
  %1222 = load double, double* %132, align 8, !dbg !2106, !tbaa !430
  %1223 = fsub double -0.000000e+00, %1222, !dbg !2108
  %1224 = bitcast %struct.lua_TValue* %227 to double*, !dbg !2108
  store double %1223, double* %1224, align 8, !dbg !2108, !tbaa !430
  %1225 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %226, i32 1, !dbg !2108
  store i32 3, i32* %1225, align 8, !dbg !2108, !tbaa !423
  br label %1283, !dbg !2109

; <label>:1226:                                   ; preds = %1220, %1212
  %1227 = call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* nonnull %0, %struct.lua_TValue* nonnull %1190, i32 11) #5, !dbg !2116
  %1228 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1227, i64 0, i32 1, !dbg !2118
  %1229 = load i32, i32* %1228, align 8, !dbg !2118, !tbaa !423
  %1230 = icmp eq i32 %1229, 0, !dbg !2118
  br i1 %1230, label %1231, label %1236, !dbg !2119

; <label>:1231:                                   ; preds = %1226
  %1232 = call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* nonnull %0, %struct.lua_TValue* nonnull %1190, i32 11) #5, !dbg !2120
  %1233 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1232, i64 0, i32 1
  %1234 = load i32, i32* %1233, align 8, !dbg !2121, !tbaa !423
  %1235 = icmp eq i32 %1234, 0, !dbg !2121
  br i1 %1235, label %1282, label %1236, !dbg !2122

; <label>:1236:                                   ; preds = %1231, %1226
  %1237 = phi i32* [ %1233, %1231 ], [ %1228, %1226 ], !dbg !2123
  %1238 = phi %struct.lua_TValue* [ %1232, %1231 ], [ %1227, %1226 ]
  %1239 = load i64, i64* %82, align 8, !dbg !2130, !tbaa !563
  %1240 = ptrtoint %struct.lua_TValue* %227 to i64, !dbg !2130
  %1241 = sub i64 %1240, %1239, !dbg !2130
  %1242 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !2123, !tbaa !566
  %1243 = bitcast %struct.lua_TValue* %1238 to i64*, !dbg !2123
  %1244 = bitcast %struct.lua_TValue* %1242 to i64*, !dbg !2123
  %1245 = load i64, i64* %1243, align 8, !dbg !2123
  store i64 %1245, i64* %1244, align 8, !dbg !2123
  %1246 = load i32, i32* %1237, align 8, !dbg !2123, !tbaa !423
  %1247 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1242, i64 0, i32 1, !dbg !2123
  store i32 %1246, i32* %1247, align 8, !dbg !2123, !tbaa !423
  %1248 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !2132, !tbaa !566
  %1249 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1248, i64 1, !dbg !2132
  %1250 = bitcast %struct.lua_TValue* %1190 to i64*, !dbg !2132
  %1251 = bitcast %struct.lua_TValue* %1249 to i64*, !dbg !2132
  %1252 = load i64, i64* %1250, align 8, !dbg !2132
  store i64 %1252, i64* %1251, align 8, !dbg !2132
  %1253 = load i32, i32* %1191, align 8, !dbg !2132, !tbaa !423
  %1254 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1248, i64 1, i32 1, !dbg !2132
  store i32 %1253, i32* %1254, align 8, !dbg !2132, !tbaa !423
  %1255 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !2133, !tbaa !566
  %1256 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1255, i64 2, !dbg !2133
  %1257 = bitcast %struct.lua_TValue* %1256 to i64*, !dbg !2133
  %1258 = load i64, i64* %1250, align 8, !dbg !2133
  store i64 %1258, i64* %1257, align 8, !dbg !2133
  %1259 = load i32, i32* %1191, align 8, !dbg !2133, !tbaa !423
  %1260 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1255, i64 2, i32 1, !dbg !2133
  store i32 %1259, i32* %1260, align 8, !dbg !2133, !tbaa !423
  %1261 = load i64, i64* %72, align 8, !dbg !2134, !tbaa !571
  %1262 = load i64, i64* %48, align 8, !dbg !2134, !tbaa !566
  %1263 = sub i64 %1261, %1262, !dbg !2134
  %1264 = icmp slt i64 %1263, 49, !dbg !2134
  %1265 = inttoptr i64 %1262 to %struct.lua_TValue*, !dbg !2135
  br i1 %1264, label %1266, label %1268, !dbg !2135

; <label>:1266:                                   ; preds = %1236
  call void @luaD_growstack(%struct.lua_State* nonnull %0, i32 3) #5, !dbg !2134
  %1267 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !2136, !tbaa !566
  br label %1268, !dbg !2134

; <label>:1268:                                   ; preds = %1266, %1236
  %1269 = phi %struct.lua_TValue* [ %1265, %1236 ], [ %1267, %1266 ], !dbg !2136
  %1270 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1269, i64 3, !dbg !2136
  store %struct.lua_TValue* %1270, %struct.lua_TValue** %47, align 8, !dbg !2136, !tbaa !566
  call void @luaD_call(%struct.lua_State* nonnull %0, %struct.lua_TValue* %1269, i32 1) #5, !dbg !2137
  %1271 = load i8*, i8** %108, align 8, !dbg !2138, !tbaa !563
  %1272 = getelementptr inbounds i8, i8* %1271, i64 %1241, !dbg !2138
  %1273 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !2139, !tbaa !566
  %1274 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1273, i64 -1, !dbg !2139
  store %struct.lua_TValue* %1274, %struct.lua_TValue** %47, align 8, !dbg !2139, !tbaa !566
  %1275 = bitcast %struct.lua_TValue* %1274 to i64*, !dbg !2140
  %1276 = bitcast i8* %1272 to i64*, !dbg !2140
  %1277 = load i64, i64* %1275, align 8, !dbg !2140
  store i64 %1277, i64* %1276, align 8, !dbg !2140
  %1278 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1273, i64 -1, i32 1, !dbg !2140
  %1279 = load i32, i32* %1278, align 8, !dbg !2140, !tbaa !423
  %1280 = getelementptr inbounds i8, i8* %1272, i64 8, !dbg !2140
  %1281 = bitcast i8* %1280 to i32*, !dbg !2140
  store i32 %1279, i32* %1281, align 8, !dbg !2140, !tbaa !423
  br label %1283, !dbg !2141

; <label>:1282:                                   ; preds = %1231
  call void @luaG_aritherror(%struct.lua_State* nonnull %0, %struct.lua_TValue* nonnull %1190, %struct.lua_TValue* nonnull %1190) #5, !dbg !2142
  br label %1283, !dbg !2142

; <label>:1283:                                   ; preds = %1268, %1221, %1282
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %67) #4, !dbg !2143
  %1284 = load %struct.lua_TValue*, %struct.lua_TValue** %37, align 8, !dbg !2069, !tbaa !961
  br label %2121

; <label>:1285:                                   ; preds = %222
  %1286 = lshr i32 %153, 23, !dbg !2144
  %1287 = zext i32 %1286 to i64, !dbg !2144
  %1288 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %1287, i32 1, !dbg !2144
  %1289 = load i32, i32* %1288, align 8, !dbg !2144, !tbaa !423
  switch i32 %1289, label %1295 [
    i32 0, label %1296
    i32 1, label %1290
  ], !dbg !2144

; <label>:1290:                                   ; preds = %1285
  %1291 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %1287, i32 0, !dbg !2144
  %1292 = bitcast %union.Value* %1291 to i32*, !dbg !2144
  %1293 = load i32, i32* %1292, align 8, !dbg !2144, !tbaa !430
  %1294 = icmp eq i32 %1293, 0, !dbg !2144
  br label %1296

; <label>:1295:                                   ; preds = %1285
  br label %1296, !dbg !2144

; <label>:1296:                                   ; preds = %1285, %1295, %1290
  %1297 = phi i1 [ true, %1285 ], [ %1294, %1290 ], [ false, %1295 ]
  %1298 = zext i1 %1297 to i32, !dbg !2144
  %1299 = bitcast %struct.lua_TValue* %227 to i32*, !dbg !2146
  store i32 %1298, i32* %1299, align 8, !dbg !2146, !tbaa !430
  %1300 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %226, i32 1, !dbg !2146
  store i32 1, i32* %1300, align 8, !dbg !2146, !tbaa !423
  br label %2121

; <label>:1301:                                   ; preds = %222
  %1302 = lshr i32 %153, 23, !dbg !2147
  %1303 = zext i32 %1302 to i64, !dbg !2147
  %1304 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %1303, !dbg !2147
  %1305 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %1303, i32 1, !dbg !2149
  %1306 = load i32, i32* %1305, align 8, !dbg !2149, !tbaa !423
  switch i32 %1306, label %1322 [
    i32 5, label %1307
    i32 4, label %1314
  ], !dbg !2150

; <label>:1307:                                   ; preds = %1301
  %1308 = bitcast %struct.lua_TValue* %1304 to %struct.Table**, !dbg !2151
  %1309 = load %struct.Table*, %struct.Table** %1308, align 8, !dbg !2151, !tbaa !430
  %1310 = call i32 @luaH_getn(%struct.Table* %1309) #5, !dbg !2151
  %1311 = sitofp i32 %1310 to double, !dbg !2151
  %1312 = bitcast %struct.lua_TValue* %227 to double*, !dbg !2151
  store double %1311, double* %1312, align 8, !dbg !2151, !tbaa !430
  %1313 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %226, i32 1, !dbg !2151
  store i32 3, i32* %1313, align 8, !dbg !2151, !tbaa !423
  br label %2121, !dbg !2152

; <label>:1314:                                   ; preds = %1301
  %1315 = bitcast %struct.lua_TValue* %1304 to %struct.anon**, !dbg !2153
  %1316 = load %struct.anon*, %struct.anon** %1315, align 8, !dbg !2153, !tbaa !430
  %1317 = getelementptr inbounds %struct.anon, %struct.anon* %1316, i64 0, i32 5, !dbg !2153
  %1318 = load i64, i64* %1317, align 8, !dbg !2153, !tbaa !430
  %1319 = uitofp i64 %1318 to double, !dbg !2153
  %1320 = bitcast %struct.lua_TValue* %227 to double*, !dbg !2153
  store double %1319, double* %1320, align 8, !dbg !2153, !tbaa !430
  %1321 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %226, i32 1, !dbg !2153
  store i32 3, i32* %1321, align 8, !dbg !2153, !tbaa !423
  br label %2121, !dbg !2154

; <label>:1322:                                   ; preds = %1301
  store i32* %152, i32** %35, align 8, !dbg !2155, !tbaa !1333
  %1323 = call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* nonnull %0, %struct.lua_TValue* %1304, i32 12) #5, !dbg !2166
  %1324 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1323, i64 0, i32 1, !dbg !2168
  %1325 = load i32, i32* %1324, align 8, !dbg !2168, !tbaa !423
  %1326 = icmp eq i32 %1325, 0, !dbg !2168
  br i1 %1326, label %1327, label %1332, !dbg !2169

; <label>:1327:                                   ; preds = %1322
  %1328 = call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* nonnull %0, %struct.lua_TValue* nonnull @luaO_nilobject_, i32 12) #5, !dbg !2170
  %1329 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1328, i64 0, i32 1
  %1330 = load i32, i32* %1329, align 8, !dbg !2171, !tbaa !423
  %1331 = icmp eq i32 %1330, 0, !dbg !2171
  br i1 %1331, label %1376, label %1332, !dbg !2172

; <label>:1332:                                   ; preds = %1327, %1322
  %1333 = phi i32* [ %1329, %1327 ], [ %1324, %1322 ], !dbg !2173
  %1334 = phi %struct.lua_TValue* [ %1328, %1327 ], [ %1323, %1322 ]
  %1335 = load i64, i64* %82, align 8, !dbg !2180, !tbaa !563
  %1336 = ptrtoint %struct.lua_TValue* %227 to i64, !dbg !2180
  %1337 = sub i64 %1336, %1335, !dbg !2180
  %1338 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !2173, !tbaa !566
  %1339 = bitcast %struct.lua_TValue* %1334 to i64*, !dbg !2173
  %1340 = bitcast %struct.lua_TValue* %1338 to i64*, !dbg !2173
  %1341 = load i64, i64* %1339, align 8, !dbg !2173
  store i64 %1341, i64* %1340, align 8, !dbg !2173
  %1342 = load i32, i32* %1333, align 8, !dbg !2173, !tbaa !423
  %1343 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1338, i64 0, i32 1, !dbg !2173
  store i32 %1342, i32* %1343, align 8, !dbg !2173, !tbaa !423
  %1344 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !2182, !tbaa !566
  %1345 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1344, i64 1, !dbg !2182
  %1346 = bitcast %struct.lua_TValue* %1304 to i64*, !dbg !2182
  %1347 = bitcast %struct.lua_TValue* %1345 to i64*, !dbg !2182
  %1348 = load i64, i64* %1346, align 8, !dbg !2182
  store i64 %1348, i64* %1347, align 8, !dbg !2182
  %1349 = load i32, i32* %1305, align 8, !dbg !2182, !tbaa !423
  %1350 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1344, i64 1, i32 1, !dbg !2182
  store i32 %1349, i32* %1350, align 8, !dbg !2182, !tbaa !423
  %1351 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !2183, !tbaa !566
  %1352 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1351, i64 2, !dbg !2183
  %1353 = bitcast %struct.lua_TValue* %1352 to i64*, !dbg !2183
  store i64 %83, i64* %1353, align 8, !dbg !2183
  %1354 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1351, i64 2, i32 1, !dbg !2183
  store i32 %84, i32* %1354, align 8, !dbg !2183, !tbaa !423
  %1355 = load i64, i64* %72, align 8, !dbg !2184, !tbaa !571
  %1356 = load i64, i64* %48, align 8, !dbg !2184, !tbaa !566
  %1357 = sub i64 %1355, %1356, !dbg !2184
  %1358 = icmp slt i64 %1357, 49, !dbg !2184
  %1359 = inttoptr i64 %1356 to %struct.lua_TValue*, !dbg !2185
  br i1 %1358, label %1360, label %1362, !dbg !2185

; <label>:1360:                                   ; preds = %1332
  call void @luaD_growstack(%struct.lua_State* nonnull %0, i32 3) #5, !dbg !2184
  %1361 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !2186, !tbaa !566
  br label %1362, !dbg !2184

; <label>:1362:                                   ; preds = %1360, %1332
  %1363 = phi %struct.lua_TValue* [ %1359, %1332 ], [ %1361, %1360 ], !dbg !2186
  %1364 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1363, i64 3, !dbg !2186
  store %struct.lua_TValue* %1364, %struct.lua_TValue** %47, align 8, !dbg !2186, !tbaa !566
  call void @luaD_call(%struct.lua_State* nonnull %0, %struct.lua_TValue* %1363, i32 1) #5, !dbg !2187
  %1365 = load i8*, i8** %108, align 8, !dbg !2188, !tbaa !563
  %1366 = getelementptr inbounds i8, i8* %1365, i64 %1337, !dbg !2188
  %1367 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !2189, !tbaa !566
  %1368 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1367, i64 -1, !dbg !2189
  store %struct.lua_TValue* %1368, %struct.lua_TValue** %47, align 8, !dbg !2189, !tbaa !566
  %1369 = bitcast %struct.lua_TValue* %1368 to i64*, !dbg !2190
  %1370 = bitcast i8* %1366 to i64*, !dbg !2190
  %1371 = load i64, i64* %1369, align 8, !dbg !2190
  store i64 %1371, i64* %1370, align 8, !dbg !2190
  %1372 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1367, i64 -1, i32 1, !dbg !2190
  %1373 = load i32, i32* %1372, align 8, !dbg !2190, !tbaa !423
  %1374 = getelementptr inbounds i8, i8* %1366, i64 8, !dbg !2190
  %1375 = bitcast i8* %1374 to i32*, !dbg !2190
  store i32 %1373, i32* %1375, align 8, !dbg !2190, !tbaa !423
  br label %1377, !dbg !2191

; <label>:1376:                                   ; preds = %1327
  call void @luaG_typeerror(%struct.lua_State* nonnull %0, %struct.lua_TValue* %1304, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !2192
  br label %1377, !dbg !2192

; <label>:1377:                                   ; preds = %1362, %1376
  %1378 = load %struct.lua_TValue*, %struct.lua_TValue** %37, align 8, !dbg !2155, !tbaa !961
  br label %2121, !dbg !2193

; <label>:1379:                                   ; preds = %222
  %1380 = lshr i32 %153, 23, !dbg !2194
  %1381 = lshr i32 %153, 14, !dbg !2196
  %1382 = and i32 %1381, 511, !dbg !2196
  store i32* %152, i32** %35, align 8, !dbg !2198, !tbaa !1333
  %1383 = sub nsw i32 1, %1380, !dbg !2200
  %1384 = add nsw i32 %1383, %1382, !dbg !2200
  call void @luaV_concat(%struct.lua_State* nonnull %0, i32 %1384, i32 %1382) #6, !dbg !2200
  %1385 = load %struct.global_State*, %struct.global_State** %46, align 8, !dbg !2202, !tbaa !515
  %1386 = getelementptr inbounds %struct.global_State, %struct.global_State* %1385, i64 0, i32 14, !dbg !2202
  %1387 = load i64, i64* %1386, align 8, !dbg !2202, !tbaa !1505
  %1388 = getelementptr inbounds %struct.global_State, %struct.global_State* %1385, i64 0, i32 13, !dbg !2202
  %1389 = load i64, i64* %1388, align 8, !dbg !2202, !tbaa !1509
  %1390 = icmp ult i64 %1387, %1389, !dbg !2202
  br i1 %1390, label %1392, label %1391, !dbg !2205

; <label>:1391:                                   ; preds = %1379
  call void @luaC_step(%struct.lua_State* nonnull %0) #5, !dbg !2202
  br label %1392, !dbg !2202

; <label>:1392:                                   ; preds = %1379, %1391
  %1393 = load %struct.lua_TValue*, %struct.lua_TValue** %37, align 8, !dbg !2198, !tbaa !961
  %1394 = zext i32 %1380 to i64, !dbg !2206
  %1395 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1393, i64 %1394, !dbg !2206
  %1396 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1393, i64 %226, !dbg !2206
  %1397 = bitcast %struct.lua_TValue* %1395 to i64*, !dbg !2206
  %1398 = bitcast %struct.lua_TValue* %1396 to i64*, !dbg !2206
  %1399 = load i64, i64* %1397, align 8, !dbg !2206
  store i64 %1399, i64* %1398, align 8, !dbg !2206
  %1400 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1393, i64 %1394, i32 1, !dbg !2206
  %1401 = load i32, i32* %1400, align 8, !dbg !2206, !tbaa !423
  %1402 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1393, i64 %226, i32 1, !dbg !2206
  store i32 %1401, i32* %1402, align 8, !dbg !2206, !tbaa !423
  br label %2121

; <label>:1403:                                   ; preds = %222
  %1404 = lshr i32 %153, 14, !dbg !2207
  %1405 = add nsw i32 %1404, -131071, !dbg !2207
  %1406 = sext i32 %1405 to i64, !dbg !2207
  %1407 = getelementptr inbounds i32, i32* %152, i64 %1406, !dbg !2207
  br label %2121, !dbg !2210

; <label>:1408:                                   ; preds = %222
  %1409 = lshr i32 %153, 23, !dbg !2211
  %1410 = icmp slt i32 %153, 0, !dbg !2211
  %1411 = and i32 %1409, 255, !dbg !2211
  %1412 = zext i32 %1411 to i64, !dbg !2211
  %1413 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %146, i64 %1412, !dbg !2211
  %1414 = zext i32 %1409 to i64, !dbg !2211
  %1415 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %1414, !dbg !2211
  %1416 = select i1 %1410, %struct.lua_TValue* %1413, %struct.lua_TValue* %1415, !dbg !2211
  %1417 = lshr i32 %153, 14, !dbg !2213
  %1418 = and i32 %153, 4194304, !dbg !2213
  %1419 = icmp eq i32 %1418, 0, !dbg !2213
  %1420 = and i32 %1417, 255, !dbg !2213
  %1421 = zext i32 %1420 to i64, !dbg !2213
  %1422 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %146, i64 %1421, !dbg !2213
  %1423 = and i32 %1417, 511, !dbg !2213
  %1424 = zext i32 %1423 to i64, !dbg !2213
  %1425 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %1424, !dbg !2213
  %1426 = select i1 %1419, %struct.lua_TValue* %1425, %struct.lua_TValue* %1422, !dbg !2213
  store i32* %152, i32** %35, align 8, !dbg !2215, !tbaa !1333
  %1427 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1416, i64 0, i32 1, !dbg !2217
  %1428 = load i32, i32* %1427, align 8, !dbg !2217, !tbaa !423
  %1429 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1426, i64 0, i32 1, !dbg !2217
  %1430 = load i32, i32* %1429, align 8, !dbg !2217, !tbaa !423
  %1431 = icmp eq i32 %1428, %1430, !dbg !2217
  br i1 %1431, label %1432, label %1435, !dbg !2217

; <label>:1432:                                   ; preds = %1408
  %1433 = call i32 @luaV_equalval(%struct.lua_State* nonnull %0, %struct.lua_TValue* %1416, %struct.lua_TValue* %1426) #6, !dbg !2217
  %1434 = icmp ne i32 %1433, 0, !dbg !2217
  br label %1435

; <label>:1435:                                   ; preds = %1432, %1408
  %1436 = phi i1 [ false, %1408 ], [ %1434, %1432 ], !dbg !2220
  %1437 = zext i1 %1436 to i32, !dbg !2217
  %1438 = icmp eq i32 %225, %1437, !dbg !2217
  br i1 %1438, label %1439, label %1445, !dbg !2221

; <label>:1439:                                   ; preds = %1435
  %1440 = load i32, i32* %152, align 4, !dbg !2222, !tbaa !1354
  %1441 = lshr i32 %1440, 14, !dbg !2222
  %1442 = add nsw i32 %1441, -131071, !dbg !2222
  %1443 = sext i32 %1442 to i64, !dbg !2222
  %1444 = getelementptr inbounds i32, i32* %152, i64 %1443, !dbg !2222
  br label %1445, !dbg !2222

; <label>:1445:                                   ; preds = %1439, %1435
  %1446 = phi i32* [ %1444, %1439 ], [ %152, %1435 ], !dbg !1350
  %1447 = load %struct.lua_TValue*, %struct.lua_TValue** %37, align 8, !dbg !2215, !tbaa !961
  %1448 = getelementptr inbounds i32, i32* %1446, i64 1, !dbg !2224
  br label %2121

; <label>:1449:                                   ; preds = %222
  store i32* %152, i32** %35, align 8, !dbg !2225, !tbaa !1333
  %1450 = lshr i32 %153, 23, !dbg !2228
  %1451 = icmp slt i32 %153, 0, !dbg !2228
  %1452 = and i32 %1450, 255, !dbg !2228
  %1453 = zext i32 %1452 to i64, !dbg !2228
  %1454 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %146, i64 %1453, !dbg !2228
  %1455 = zext i32 %1450 to i64, !dbg !2228
  %1456 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %1455, !dbg !2228
  %1457 = select i1 %1451, %struct.lua_TValue* %1454, %struct.lua_TValue* %1456, !dbg !2228
  %1458 = lshr i32 %153, 14, !dbg !2228
  %1459 = and i32 %153, 4194304, !dbg !2228
  %1460 = icmp eq i32 %1459, 0, !dbg !2228
  %1461 = and i32 %1458, 255, !dbg !2228
  %1462 = zext i32 %1461 to i64, !dbg !2228
  %1463 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %146, i64 %1462, !dbg !2228
  %1464 = and i32 %1458, 511, !dbg !2228
  %1465 = zext i32 %1464 to i64, !dbg !2228
  %1466 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %1465, !dbg !2228
  %1467 = select i1 %1460, %struct.lua_TValue* %1466, %struct.lua_TValue* %1463, !dbg !2228
  %1468 = call i32 @luaV_lessthan(%struct.lua_State* nonnull %0, %struct.lua_TValue* %1457, %struct.lua_TValue* %1467) #6, !dbg !2228
  %1469 = icmp eq i32 %1468, %225, !dbg !2228
  br i1 %1469, label %1470, label %1476, !dbg !2231

; <label>:1470:                                   ; preds = %1449
  %1471 = load i32, i32* %152, align 4, !dbg !2232, !tbaa !1354
  %1472 = lshr i32 %1471, 14, !dbg !2232
  %1473 = add nsw i32 %1472, -131071, !dbg !2232
  %1474 = sext i32 %1473 to i64, !dbg !2232
  %1475 = getelementptr inbounds i32, i32* %152, i64 %1474, !dbg !2232
  br label %1476, !dbg !2232

; <label>:1476:                                   ; preds = %1470, %1449
  %1477 = phi i32* [ %1475, %1470 ], [ %152, %1449 ], !dbg !1350
  %1478 = load %struct.lua_TValue*, %struct.lua_TValue** %37, align 8, !dbg !2225, !tbaa !961
  %1479 = getelementptr inbounds i32, i32* %1477, i64 1, !dbg !2234
  br label %2121, !dbg !2235

; <label>:1480:                                   ; preds = %222
  store i32* %152, i32** %35, align 8, !dbg !2236, !tbaa !1333
  %1481 = lshr i32 %153, 23, !dbg !2239
  %1482 = icmp slt i32 %153, 0, !dbg !2239
  %1483 = and i32 %1481, 255, !dbg !2239
  %1484 = zext i32 %1483 to i64, !dbg !2239
  %1485 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %146, i64 %1484, !dbg !2239
  %1486 = zext i32 %1481 to i64, !dbg !2239
  %1487 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %1486, !dbg !2239
  %1488 = select i1 %1482, %struct.lua_TValue* %1485, %struct.lua_TValue* %1487, !dbg !2239
  %1489 = lshr i32 %153, 14, !dbg !2239
  %1490 = and i32 %153, 4194304, !dbg !2239
  %1491 = icmp eq i32 %1490, 0, !dbg !2239
  %1492 = and i32 %1489, 255, !dbg !2239
  %1493 = zext i32 %1492 to i64, !dbg !2239
  %1494 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %146, i64 %1493, !dbg !2239
  %1495 = and i32 %1489, 511, !dbg !2239
  %1496 = zext i32 %1495 to i64, !dbg !2239
  %1497 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %1496, !dbg !2239
  %1498 = select i1 %1491, %struct.lua_TValue* %1497, %struct.lua_TValue* %1494, !dbg !2239
  %1499 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1488, i64 0, i32 1, !dbg !2252
  %1500 = load i32, i32* %1499, align 8, !dbg !2252, !tbaa !423
  %1501 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1498, i64 0, i32 1, !dbg !2254
  %1502 = load i32, i32* %1501, align 8, !dbg !2254, !tbaa !423
  %1503 = icmp eq i32 %1500, %1502, !dbg !2255
  br i1 %1503, label %1506, label %1504, !dbg !2256

; <label>:1504:                                   ; preds = %1480
  %1505 = call i32 @luaG_ordererror(%struct.lua_State* nonnull %0, %struct.lua_TValue* nonnull %1488, %struct.lua_TValue* nonnull %1498) #5, !dbg !2257
  br label %1681, !dbg !2258

; <label>:1506:                                   ; preds = %1480
  switch i32 %1500, label %1553 [
    i32 3, label %1507
    i32 4, label %1514
  ], !dbg !2259

; <label>:1507:                                   ; preds = %1506
  %1508 = bitcast %struct.lua_TValue* %1488 to double*, !dbg !2260
  %1509 = load double, double* %1508, align 8, !dbg !2260, !tbaa !430
  %1510 = bitcast %struct.lua_TValue* %1498 to double*, !dbg !2260
  %1511 = load double, double* %1510, align 8, !dbg !2260, !tbaa !430
  %1512 = fcmp ole double %1509, %1511, !dbg !2260
  %1513 = zext i1 %1512 to i32, !dbg !2260
  br label %1681, !dbg !2262

; <label>:1514:                                   ; preds = %1506
  %1515 = bitcast %struct.lua_TValue* %1488 to %union.TString**, !dbg !2263
  %1516 = load %union.TString*, %union.TString** %1515, align 8, !dbg !2263, !tbaa !430
  %1517 = bitcast %struct.lua_TValue* %1498 to %union.TString**, !dbg !2265
  %1518 = load %union.TString*, %union.TString** %1517, align 8, !dbg !2265, !tbaa !430
  %1519 = getelementptr inbounds %union.TString, %union.TString* %1516, i64 1, !dbg !2269
  %1520 = bitcast %union.TString* %1519 to i8*, !dbg !2269
  %1521 = getelementptr inbounds %union.TString, %union.TString* %1516, i64 0, i32 0, i32 5, !dbg !2271
  %1522 = load i64, i64* %1521, align 8, !dbg !2271, !tbaa !430
  %1523 = getelementptr inbounds %union.TString, %union.TString* %1518, i64 1, !dbg !2273
  %1524 = bitcast %union.TString* %1523 to i8*, !dbg !2273
  %1525 = getelementptr inbounds %union.TString, %union.TString* %1518, i64 0, i32 0, i32 5, !dbg !2275
  %1526 = load i64, i64* %1525, align 8, !dbg !2275, !tbaa !430
  %1527 = call i32 @strcoll(i8* nonnull %1520, i8* nonnull %1524) #5, !dbg !2277
  %1528 = icmp eq i32 %1527, 0, !dbg !2279
  br i1 %1528, label %1529, label %1549, !dbg !2280

; <label>:1529:                                   ; preds = %1514, %1541
  %1530 = phi i64 [ %1546, %1541 ], [ %1526, %1514 ]
  %1531 = phi i8* [ %1545, %1541 ], [ %1524, %1514 ]
  %1532 = phi i64 [ %1544, %1541 ], [ %1522, %1514 ]
  %1533 = phi i8* [ %1543, %1541 ], [ %1520, %1514 ]
  %1534 = call i64 @strlen(i8* %1533) #5, !dbg !2281
  %1535 = icmp eq i64 %1534, %1530, !dbg !2283
  %1536 = icmp eq i64 %1534, %1532, !dbg !2284
  br i1 %1535, label %1537, label %1540, !dbg !2285

; <label>:1537:                                   ; preds = %1529
  %1538 = xor i1 %1536, true, !dbg !2286
  %1539 = zext i1 %1538 to i32, !dbg !2286
  br label %1549, !dbg !2287

; <label>:1540:                                   ; preds = %1529
  br i1 %1536, label %1549, label %1541, !dbg !2288

; <label>:1541:                                   ; preds = %1540
  %1542 = add i64 %1534, 1, !dbg !2289
  %1543 = getelementptr inbounds i8, i8* %1533, i64 %1542, !dbg !2290
  %1544 = sub i64 %1532, %1542, !dbg !2291
  %1545 = getelementptr inbounds i8, i8* %1531, i64 %1542, !dbg !2292
  %1546 = sub i64 %1530, %1542, !dbg !2293
  %1547 = call i32 @strcoll(i8* %1543, i8* %1545) #5, !dbg !2277
  %1548 = icmp eq i32 %1547, 0, !dbg !2279
  br i1 %1548, label %1529, label %1549, !dbg !2280

; <label>:1549:                                   ; preds = %1541, %1540, %1537, %1514
  %1550 = phi i32 [ %1539, %1537 ], [ %1527, %1514 ], [ %1547, %1541 ], [ -1, %1540 ]
  %1551 = icmp slt i32 %1550, 1, !dbg !2294
  %1552 = zext i1 %1551 to i32, !dbg !2294
  br label %1681, !dbg !2295

; <label>:1553:                                   ; preds = %1506
  %1554 = call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* nonnull %0, %struct.lua_TValue* nonnull %1488, i32 14) #5, !dbg !2302
  %1555 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1554, i64 0, i32 1, !dbg !2304
  %1556 = load i32, i32* %1555, align 8, !dbg !2304, !tbaa !423
  %1557 = icmp eq i32 %1556, 0, !dbg !2304
  br i1 %1557, label %1616, label %1558, !dbg !2305

; <label>:1558:                                   ; preds = %1553
  %1559 = call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* nonnull %0, %struct.lua_TValue* nonnull %1498, i32 14) #5, !dbg !2306
  %1560 = call i32 @luaO_rawequalObj(%struct.lua_TValue* %1554, %struct.lua_TValue* %1559) #5, !dbg !2308
  %1561 = icmp eq i32 %1560, 0, !dbg !2308
  br i1 %1561, label %1616, label %1562, !dbg !2309

; <label>:1562:                                   ; preds = %1558
  %1563 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !2310, !tbaa !566
  %1564 = load i64, i64* %82, align 8, !dbg !2317, !tbaa !563
  %1565 = ptrtoint %struct.lua_TValue* %1563 to i64, !dbg !2317
  %1566 = sub i64 %1565, %1564, !dbg !2317
  %1567 = bitcast %struct.lua_TValue* %1554 to i64*, !dbg !2319
  %1568 = bitcast %struct.lua_TValue* %1563 to i64*, !dbg !2319
  %1569 = load i64, i64* %1567, align 8, !dbg !2319
  store i64 %1569, i64* %1568, align 8, !dbg !2319
  %1570 = load i32, i32* %1555, align 8, !dbg !2319, !tbaa !423
  %1571 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1563, i64 0, i32 1, !dbg !2319
  store i32 %1570, i32* %1571, align 8, !dbg !2319, !tbaa !423
  %1572 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !2320, !tbaa !566
  %1573 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1572, i64 1, !dbg !2320
  %1574 = bitcast %struct.lua_TValue* %1488 to i64*, !dbg !2320
  %1575 = bitcast %struct.lua_TValue* %1573 to i64*, !dbg !2320
  %1576 = load i64, i64* %1574, align 8, !dbg !2320
  store i64 %1576, i64* %1575, align 8, !dbg !2320
  %1577 = load i32, i32* %1499, align 8, !dbg !2320, !tbaa !423
  %1578 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1572, i64 1, i32 1, !dbg !2320
  store i32 %1577, i32* %1578, align 8, !dbg !2320, !tbaa !423
  %1579 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !2321, !tbaa !566
  %1580 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1579, i64 2, !dbg !2321
  %1581 = bitcast %struct.lua_TValue* %1498 to i64*, !dbg !2321
  %1582 = bitcast %struct.lua_TValue* %1580 to i64*, !dbg !2321
  %1583 = load i64, i64* %1581, align 8, !dbg !2321
  store i64 %1583, i64* %1582, align 8, !dbg !2321
  %1584 = load i32, i32* %1501, align 8, !dbg !2321, !tbaa !423
  %1585 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1579, i64 2, i32 1, !dbg !2321
  store i32 %1584, i32* %1585, align 8, !dbg !2321, !tbaa !423
  %1586 = load i64, i64* %72, align 8, !dbg !2322, !tbaa !571
  %1587 = load i64, i64* %48, align 8, !dbg !2322, !tbaa !566
  %1588 = sub i64 %1586, %1587, !dbg !2322
  %1589 = icmp slt i64 %1588, 49, !dbg !2322
  %1590 = inttoptr i64 %1587 to %struct.lua_TValue*, !dbg !2323
  br i1 %1589, label %1591, label %1593, !dbg !2323

; <label>:1591:                                   ; preds = %1562
  call void @luaD_growstack(%struct.lua_State* nonnull %0, i32 3) #5, !dbg !2322
  %1592 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !2324, !tbaa !566
  br label %1593, !dbg !2322

; <label>:1593:                                   ; preds = %1591, %1562
  %1594 = phi %struct.lua_TValue* [ %1590, %1562 ], [ %1592, %1591 ], !dbg !2324
  %1595 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1594, i64 3, !dbg !2324
  store %struct.lua_TValue* %1595, %struct.lua_TValue** %47, align 8, !dbg !2324, !tbaa !566
  call void @luaD_call(%struct.lua_State* nonnull %0, %struct.lua_TValue* %1594, i32 1) #5, !dbg !2325
  %1596 = load i8*, i8** %108, align 8, !dbg !2326, !tbaa !563
  %1597 = getelementptr inbounds i8, i8* %1596, i64 %1566, !dbg !2326
  %1598 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !2327, !tbaa !566
  %1599 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1598, i64 -1, !dbg !2327
  store %struct.lua_TValue* %1599, %struct.lua_TValue** %47, align 8, !dbg !2327, !tbaa !566
  %1600 = bitcast %struct.lua_TValue* %1599 to i64*, !dbg !2328
  %1601 = bitcast i8* %1597 to i64*, !dbg !2328
  %1602 = load i64, i64* %1600, align 8, !dbg !2328
  store i64 %1602, i64* %1601, align 8, !dbg !2328
  %1603 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1598, i64 -1, i32 1, !dbg !2328
  %1604 = load i32, i32* %1603, align 8, !dbg !2328, !tbaa !423
  %1605 = getelementptr inbounds i8, i8* %1597, i64 8, !dbg !2328
  %1606 = bitcast i8* %1605 to i32*, !dbg !2328
  store i32 %1604, i32* %1606, align 8, !dbg !2328, !tbaa !423
  %1607 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !2329, !tbaa !566
  %1608 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1607, i64 0, i32 1, !dbg !2329
  %1609 = load i32, i32* %1608, align 8, !dbg !2329, !tbaa !423
  switch i32 %1609, label %1615 [
    i32 0, label %1681
    i32 1, label %1610
  ], !dbg !2329

; <label>:1610:                                   ; preds = %1593
  %1611 = bitcast %struct.lua_TValue* %1607 to i32*, !dbg !2329
  %1612 = load i32, i32* %1611, align 8, !dbg !2329, !tbaa !430
  %1613 = icmp ne i32 %1612, 0, !dbg !2329
  %1614 = zext i1 %1613 to i32
  br label %1681

; <label>:1615:                                   ; preds = %1593
  br label %1681, !dbg !2330

; <label>:1616:                                   ; preds = %1558, %1553
  %1617 = call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* nonnull %0, %struct.lua_TValue* nonnull %1498, i32 13) #5, !dbg !2338
  %1618 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1617, i64 0, i32 1, !dbg !2340
  %1619 = load i32, i32* %1618, align 8, !dbg !2340, !tbaa !423
  %1620 = icmp eq i32 %1619, 0, !dbg !2340
  br i1 %1620, label %1679, label %1621, !dbg !2341

; <label>:1621:                                   ; preds = %1616
  %1622 = call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* nonnull %0, %struct.lua_TValue* nonnull %1488, i32 13) #5, !dbg !2342
  %1623 = call i32 @luaO_rawequalObj(%struct.lua_TValue* %1617, %struct.lua_TValue* %1622) #5, !dbg !2344
  %1624 = icmp eq i32 %1623, 0, !dbg !2344
  br i1 %1624, label %1679, label %1625, !dbg !2345

; <label>:1625:                                   ; preds = %1621
  %1626 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !2346, !tbaa !566
  %1627 = load i64, i64* %82, align 8, !dbg !2353, !tbaa !563
  %1628 = ptrtoint %struct.lua_TValue* %1626 to i64, !dbg !2353
  %1629 = sub i64 %1628, %1627, !dbg !2353
  %1630 = bitcast %struct.lua_TValue* %1617 to i64*, !dbg !2355
  %1631 = bitcast %struct.lua_TValue* %1626 to i64*, !dbg !2355
  %1632 = load i64, i64* %1630, align 8, !dbg !2355
  store i64 %1632, i64* %1631, align 8, !dbg !2355
  %1633 = load i32, i32* %1618, align 8, !dbg !2355, !tbaa !423
  %1634 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1626, i64 0, i32 1, !dbg !2355
  store i32 %1633, i32* %1634, align 8, !dbg !2355, !tbaa !423
  %1635 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !2356, !tbaa !566
  %1636 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1635, i64 1, !dbg !2356
  %1637 = bitcast %struct.lua_TValue* %1498 to i64*, !dbg !2356
  %1638 = bitcast %struct.lua_TValue* %1636 to i64*, !dbg !2356
  %1639 = load i64, i64* %1637, align 8, !dbg !2356
  store i64 %1639, i64* %1638, align 8, !dbg !2356
  %1640 = load i32, i32* %1501, align 8, !dbg !2356, !tbaa !423
  %1641 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1635, i64 1, i32 1, !dbg !2356
  store i32 %1640, i32* %1641, align 8, !dbg !2356, !tbaa !423
  %1642 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !2357, !tbaa !566
  %1643 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1642, i64 2, !dbg !2357
  %1644 = bitcast %struct.lua_TValue* %1488 to i64*, !dbg !2357
  %1645 = bitcast %struct.lua_TValue* %1643 to i64*, !dbg !2357
  %1646 = load i64, i64* %1644, align 8, !dbg !2357
  store i64 %1646, i64* %1645, align 8, !dbg !2357
  %1647 = load i32, i32* %1499, align 8, !dbg !2357, !tbaa !423
  %1648 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1642, i64 2, i32 1, !dbg !2357
  store i32 %1647, i32* %1648, align 8, !dbg !2357, !tbaa !423
  %1649 = load i64, i64* %72, align 8, !dbg !2358, !tbaa !571
  %1650 = load i64, i64* %48, align 8, !dbg !2358, !tbaa !566
  %1651 = sub i64 %1649, %1650, !dbg !2358
  %1652 = icmp slt i64 %1651, 49, !dbg !2358
  %1653 = inttoptr i64 %1650 to %struct.lua_TValue*, !dbg !2359
  br i1 %1652, label %1654, label %1656, !dbg !2359

; <label>:1654:                                   ; preds = %1625
  call void @luaD_growstack(%struct.lua_State* nonnull %0, i32 3) #5, !dbg !2358
  %1655 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !2360, !tbaa !566
  br label %1656, !dbg !2358

; <label>:1656:                                   ; preds = %1654, %1625
  %1657 = phi %struct.lua_TValue* [ %1653, %1625 ], [ %1655, %1654 ], !dbg !2360
  %1658 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1657, i64 3, !dbg !2360
  store %struct.lua_TValue* %1658, %struct.lua_TValue** %47, align 8, !dbg !2360, !tbaa !566
  call void @luaD_call(%struct.lua_State* nonnull %0, %struct.lua_TValue* %1657, i32 1) #5, !dbg !2361
  %1659 = load i8*, i8** %108, align 8, !dbg !2362, !tbaa !563
  %1660 = getelementptr inbounds i8, i8* %1659, i64 %1629, !dbg !2362
  %1661 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !2363, !tbaa !566
  %1662 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1661, i64 -1, !dbg !2363
  store %struct.lua_TValue* %1662, %struct.lua_TValue** %47, align 8, !dbg !2363, !tbaa !566
  %1663 = bitcast %struct.lua_TValue* %1662 to i64*, !dbg !2364
  %1664 = bitcast i8* %1660 to i64*, !dbg !2364
  %1665 = load i64, i64* %1663, align 8, !dbg !2364
  store i64 %1665, i64* %1664, align 8, !dbg !2364
  %1666 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1661, i64 -1, i32 1, !dbg !2364
  %1667 = load i32, i32* %1666, align 8, !dbg !2364, !tbaa !423
  %1668 = getelementptr inbounds i8, i8* %1660, i64 8, !dbg !2364
  %1669 = bitcast i8* %1668 to i32*, !dbg !2364
  store i32 %1667, i32* %1669, align 8, !dbg !2364, !tbaa !423
  %1670 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !2365, !tbaa !566
  %1671 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1670, i64 0, i32 1, !dbg !2365
  %1672 = load i32, i32* %1671, align 8, !dbg !2365, !tbaa !423
  switch i32 %1672, label %1678 [
    i32 0, label %1681
    i32 1, label %1673
  ], !dbg !2365

; <label>:1673:                                   ; preds = %1656
  %1674 = bitcast %struct.lua_TValue* %1670 to i32*, !dbg !2365
  %1675 = load i32, i32* %1674, align 8, !dbg !2365, !tbaa !430
  %1676 = icmp eq i32 %1675, 0, !dbg !2365
  %1677 = zext i1 %1676 to i32
  br label %1681

; <label>:1678:                                   ; preds = %1656
  br label %1681, !dbg !2366

; <label>:1679:                                   ; preds = %1621, %1616
  %1680 = call i32 @luaG_ordererror(%struct.lua_State* nonnull %0, %struct.lua_TValue* nonnull %1488, %struct.lua_TValue* nonnull %1498) #5, !dbg !2367
  br label %1681, !dbg !2368

; <label>:1681:                                   ; preds = %1504, %1507, %1549, %1593, %1610, %1615, %1656, %1673, %1678, %1679
  %1682 = phi i32 [ %1505, %1504 ], [ %1513, %1507 ], [ %1552, %1549 ], [ %1680, %1679 ], [ 1, %1615 ], [ %1614, %1610 ], [ %1609, %1593 ], [ 0, %1678 ], [ %1677, %1673 ], [ 1, %1656 ], !dbg !2369
  %1683 = icmp eq i32 %1682, %225, !dbg !2239
  br i1 %1683, label %1684, label %1690, !dbg !2370

; <label>:1684:                                   ; preds = %1681
  %1685 = load i32, i32* %152, align 4, !dbg !2371, !tbaa !1354
  %1686 = lshr i32 %1685, 14, !dbg !2371
  %1687 = add nsw i32 %1686, -131071, !dbg !2371
  %1688 = sext i32 %1687 to i64, !dbg !2371
  %1689 = getelementptr inbounds i32, i32* %152, i64 %1688, !dbg !2371
  br label %1690, !dbg !2371

; <label>:1690:                                   ; preds = %1684, %1681
  %1691 = phi i32* [ %1689, %1684 ], [ %152, %1681 ], !dbg !1350
  %1692 = load %struct.lua_TValue*, %struct.lua_TValue** %37, align 8, !dbg !2236, !tbaa !961
  %1693 = getelementptr inbounds i32, i32* %1691, i64 1, !dbg !2373
  br label %2121, !dbg !2374

; <label>:1694:                                   ; preds = %222
  %1695 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %226, i32 1, !dbg !2375
  %1696 = load i32, i32* %1695, align 8, !dbg !2375, !tbaa !423
  switch i32 %1696, label %1701 [
    i32 0, label %1702
    i32 1, label %1697
  ], !dbg !2375

; <label>:1697:                                   ; preds = %1694
  %1698 = bitcast %struct.lua_TValue* %227 to i32*, !dbg !2375
  %1699 = load i32, i32* %1698, align 8, !dbg !2375, !tbaa !430
  %1700 = icmp eq i32 %1699, 0, !dbg !2375
  br label %1702

; <label>:1701:                                   ; preds = %1694
  br label %1702, !dbg !2375

; <label>:1702:                                   ; preds = %1694, %1701, %1697
  %1703 = phi i1 [ true, %1694 ], [ %1700, %1697 ], [ false, %1701 ]
  %1704 = zext i1 %1703 to i32, !dbg !2375
  %1705 = lshr i32 %153, 14, !dbg !2378
  %1706 = and i32 %1705, 511, !dbg !2378
  %1707 = icmp eq i32 %1706, %1704, !dbg !2379
  br i1 %1707, label %1714, label %1708, !dbg !2380

; <label>:1708:                                   ; preds = %1702
  %1709 = load i32, i32* %152, align 4, !dbg !2381, !tbaa !1354
  %1710 = lshr i32 %1709, 14, !dbg !2381
  %1711 = add nsw i32 %1710, -131071, !dbg !2381
  %1712 = sext i32 %1711 to i64, !dbg !2381
  %1713 = getelementptr inbounds i32, i32* %152, i64 %1712, !dbg !2381
  br label %1714, !dbg !2381

; <label>:1714:                                   ; preds = %1702, %1708
  %1715 = phi i32* [ %1713, %1708 ], [ %152, %1702 ], !dbg !1350
  %1716 = getelementptr inbounds i32, i32* %1715, i64 1, !dbg !2383
  br label %2121, !dbg !2384

; <label>:1717:                                   ; preds = %222
  %1718 = lshr i32 %153, 23, !dbg !2385
  %1719 = zext i32 %1718 to i64, !dbg !2385
  %1720 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %1719, !dbg !2385
  %1721 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %1719, i32 1, !dbg !2387
  %1722 = load i32, i32* %1721, align 8, !dbg !2387, !tbaa !423
  switch i32 %1722, label %1727 [
    i32 0, label %1728
    i32 1, label %1723
  ], !dbg !2387

; <label>:1723:                                   ; preds = %1717
  %1724 = bitcast %struct.lua_TValue* %1720 to i32*, !dbg !2387
  %1725 = load i32, i32* %1724, align 8, !dbg !2387, !tbaa !430
  %1726 = icmp eq i32 %1725, 0, !dbg !2387
  br label %1728

; <label>:1727:                                   ; preds = %1717
  br label %1728, !dbg !2387

; <label>:1728:                                   ; preds = %1717, %1727, %1723
  %1729 = phi i1 [ true, %1717 ], [ %1726, %1723 ], [ false, %1727 ]
  %1730 = zext i1 %1729 to i32, !dbg !2387
  %1731 = lshr i32 %153, 14, !dbg !2388
  %1732 = and i32 %1731, 511, !dbg !2388
  %1733 = icmp eq i32 %1732, %1730, !dbg !2389
  br i1 %1733, label %1744, label %1734, !dbg !2390

; <label>:1734:                                   ; preds = %1728
  %1735 = bitcast %struct.lua_TValue* %1720 to i64*, !dbg !2391
  %1736 = bitcast %struct.lua_TValue* %227 to i64*, !dbg !2391
  %1737 = load i64, i64* %1735, align 8, !dbg !2391
  store i64 %1737, i64* %1736, align 8, !dbg !2391
  %1738 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %226, i32 1, !dbg !2391
  store i32 %1722, i32* %1738, align 8, !dbg !2391, !tbaa !423
  %1739 = load i32, i32* %152, align 4, !dbg !2392, !tbaa !1354
  %1740 = lshr i32 %1739, 14, !dbg !2392
  %1741 = add nsw i32 %1740, -131071, !dbg !2392
  %1742 = sext i32 %1741 to i64, !dbg !2392
  %1743 = getelementptr inbounds i32, i32* %152, i64 %1742, !dbg !2392
  br label %1744, !dbg !2394

; <label>:1744:                                   ; preds = %1728, %1734
  %1745 = phi i32* [ %1743, %1734 ], [ %152, %1728 ], !dbg !1350
  %1746 = getelementptr inbounds i32, i32* %1745, i64 1, !dbg !2395
  br label %2121

; <label>:1747:                                   ; preds = %222
  %1748 = lshr i32 %153, 23, !dbg !2396
  %1749 = lshr i32 %153, 14, !dbg !2398
  %1750 = and i32 %1749, 511, !dbg !2398
  %1751 = add nsw i32 %1750, -1, !dbg !2399
  %1752 = icmp eq i32 %1748, 0, !dbg !2401
  br i1 %1752, label %1756, label %1753, !dbg !2403

; <label>:1753:                                   ; preds = %1747
  %1754 = zext i32 %1748 to i64, !dbg !2404
  %1755 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %227, i64 %1754, !dbg !2404
  store %struct.lua_TValue* %1755, %struct.lua_TValue** %47, align 8, !dbg !2405, !tbaa !566
  br label %1756, !dbg !2406

; <label>:1756:                                   ; preds = %1747, %1753
  store i32* %152, i32** %35, align 8, !dbg !2407, !tbaa !1333
  %1757 = call i32 @luaD_precall(%struct.lua_State* nonnull %0, %struct.lua_TValue* %227, i32 %1751) #5, !dbg !2408
  switch i32 %1757, label %2184 [
    i32 0, label %1758
    i32 1, label %1762
  ], !dbg !2409

; <label>:1758:                                   ; preds = %1756
  %1759 = add nsw i32 %134, 1, !dbg !2410
  br label %1760, !dbg !2413

; <label>:1760:                                   ; preds = %1758, %1844, %1846
  %1761 = phi i32 [ %1842, %1846 ], [ %1842, %1844 ], [ %1759, %1758 ]
  br label %133, !dbg !1332

; <label>:1762:                                   ; preds = %1756
  %1763 = icmp eq i32 %1750, 0, !dbg !2414
  br i1 %1763, label %1769, label %1764, !dbg !2417

; <label>:1764:                                   ; preds = %1762
  %1765 = load %struct.CallInfo*, %struct.CallInfo** %36, align 8, !dbg !2418, !tbaa !1336
  %1766 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1765, i64 0, i32 2, !dbg !2419
  %1767 = bitcast %struct.lua_TValue** %1766 to i64*, !dbg !2419
  %1768 = load i64, i64* %1767, align 8, !dbg !2419, !tbaa !2420
  store i64 %1768, i64* %48, align 8, !dbg !2421, !tbaa !566
  br label %1769, !dbg !2422

; <label>:1769:                                   ; preds = %1762, %1764
  %1770 = load %struct.lua_TValue*, %struct.lua_TValue** %37, align 8, !dbg !2423, !tbaa !961
  br label %2121, !dbg !2424

; <label>:1771:                                   ; preds = %222
  %1772 = lshr i32 %153, 23, !dbg !2425
  %1773 = icmp eq i32 %1772, 0, !dbg !2427
  br i1 %1773, label %1777, label %1774, !dbg !2429

; <label>:1774:                                   ; preds = %1771
  %1775 = zext i32 %1772 to i64, !dbg !2430
  %1776 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %227, i64 %1775, !dbg !2430
  store %struct.lua_TValue* %1776, %struct.lua_TValue** %47, align 8, !dbg !2431, !tbaa !566
  br label %1777, !dbg !2432

; <label>:1777:                                   ; preds = %1771, %1774
  store i32* %152, i32** %35, align 8, !dbg !2433, !tbaa !1333
  %1778 = call i32 @luaD_precall(%struct.lua_State* nonnull %0, %struct.lua_TValue* %227, i32 -1) #5, !dbg !2434
  switch i32 %1778, label %2184 [
    i32 0, label %1779
    i32 1, label %1827
  ], !dbg !2435

; <label>:1779:                                   ; preds = %1777
  %1780 = load %struct.CallInfo*, %struct.CallInfo** %36, align 8, !dbg !2436, !tbaa !1336
  %1781 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1780, i64 -1, i32 1, !dbg !2438
  %1782 = load %struct.lua_TValue*, %struct.lua_TValue** %1781, align 8, !dbg !2438, !tbaa !1337
  %1783 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1780, i64 0, i32 1, !dbg !2440
  %1784 = load %struct.lua_TValue*, %struct.lua_TValue** %1783, align 8, !dbg !2440, !tbaa !1337
  %1785 = load %union.GCObject*, %union.GCObject** %69, align 8, !dbg !2442, !tbaa !2444
  %1786 = icmp eq %union.GCObject* %1785, null, !dbg !2445
  %1787 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1780, i64 -1, i32 0, !dbg !2446
  br i1 %1786, label %1791, label %1788, !dbg !2447

; <label>:1788:                                   ; preds = %1779
  %1789 = load %struct.lua_TValue*, %struct.lua_TValue** %1787, align 8, !dbg !2448, !tbaa !2449
  call void @luaF_close(%struct.lua_State* nonnull %0, %struct.lua_TValue* %1789) #5, !dbg !2450
  %1790 = load %struct.lua_TValue*, %struct.lua_TValue** %1781, align 8, !dbg !2451, !tbaa !1337
  br label %1791, !dbg !2450

; <label>:1791:                                   ; preds = %1779, %1788
  %1792 = phi %struct.lua_TValue* [ %1790, %1788 ], [ %1782, %1779 ], !dbg !2451
  %1793 = bitcast %struct.CallInfo* %1780 to i64*, !dbg !2452
  %1794 = load i64, i64* %1793, align 8, !dbg !2452, !tbaa !2449
  %1795 = ptrtoint %struct.lua_TValue* %1784 to i64, !dbg !2453
  %1796 = sub i64 %1794, %1795, !dbg !2453
  %1797 = ashr exact i64 %1796, 4, !dbg !2453
  %1798 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1792, i64 %1797, !dbg !2454
  store %struct.lua_TValue* %1798, %struct.lua_TValue** %1787, align 8, !dbg !2455, !tbaa !2449
  store %struct.lua_TValue* %1798, %struct.lua_TValue** %37, align 8, !dbg !2456, !tbaa !961
  %1799 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !2458, !tbaa !566
  %1800 = icmp ult %struct.lua_TValue* %1784, %1799, !dbg !2459
  br i1 %1800, label %1801, label %1816, !dbg !2460

; <label>:1801:                                   ; preds = %1791, %1801
  %1802 = phi i64 [ %1811, %1801 ], [ 0, %1791 ]
  %1803 = phi %struct.lua_TValue* [ %1815, %1801 ], [ %1782, %1791 ]
  %1804 = phi %struct.lua_TValue* [ %1812, %1801 ], [ %1784, %1791 ]
  %1805 = bitcast %struct.lua_TValue* %1804 to i64*, !dbg !2461
  %1806 = bitcast %struct.lua_TValue* %1803 to i64*, !dbg !2461
  %1807 = load i64, i64* %1805, align 8, !dbg !2461
  store i64 %1807, i64* %1806, align 8, !dbg !2461
  %1808 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1784, i64 %1802, i32 1, !dbg !2461
  %1809 = load i32, i32* %1808, align 8, !dbg !2461, !tbaa !423
  %1810 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1782, i64 %1802, i32 1, !dbg !2461
  store i32 %1809, i32* %1810, align 8, !dbg !2461, !tbaa !423
  %1811 = add nuw i64 %1802, 1, !dbg !2462
  %1812 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1784, i64 %1811, !dbg !2463
  %1813 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !2458, !tbaa !566
  %1814 = icmp ult %struct.lua_TValue* %1812, %1813, !dbg !2459
  %1815 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1782, i64 %1811, !dbg !2464
  br i1 %1814, label %1801, label %1816, !dbg !2460, !llvm.loop !2465

; <label>:1816:                                   ; preds = %1801, %1791
  %1817 = phi %struct.lua_TValue* [ %1782, %1791 ], [ %1815, %1801 ], !dbg !2464
  store %struct.lua_TValue* %1817, %struct.lua_TValue** %47, align 8, !dbg !2467, !tbaa !566
  %1818 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1780, i64 -1, i32 2, !dbg !2468
  store %struct.lua_TValue* %1817, %struct.lua_TValue** %1818, align 8, !dbg !2469, !tbaa !2420
  %1819 = load i64, i64* %129, align 8, !dbg !2470, !tbaa !1333
  %1820 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1780, i64 -1, i32 3, !dbg !2471
  %1821 = bitcast i32** %1820 to i64*, !dbg !2472
  store i64 %1819, i64* %1821, align 8, !dbg !2472, !tbaa !2473
  %1822 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1780, i64 -1, i32 5, !dbg !2474
  %1823 = load i32, i32* %1822, align 4, !dbg !2475, !tbaa !2476
  %1824 = add nsw i32 %1823, 1, !dbg !2475
  store i32 %1824, i32* %1822, align 4, !dbg !2475, !tbaa !2476
  %1825 = load %struct.CallInfo*, %struct.CallInfo** %36, align 8, !dbg !2477, !tbaa !1336
  %1826 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1825, i64 -1, !dbg !2477
  store %struct.CallInfo* %1826, %struct.CallInfo** %36, align 8, !dbg !2477, !tbaa !1336
  br label %135

; <label>:1827:                                   ; preds = %1777
  %1828 = load %struct.lua_TValue*, %struct.lua_TValue** %37, align 8, !dbg !2478, !tbaa !961
  br label %2121, !dbg !2480

; <label>:1829:                                   ; preds = %222
  %1830 = lshr i32 %153, 23, !dbg !2481
  %1831 = icmp eq i32 %1830, 0, !dbg !2483
  br i1 %1831, label %1836, label %1832, !dbg !2485

; <label>:1832:                                   ; preds = %1829
  %1833 = zext i32 %1830 to i64, !dbg !2486
  %1834 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %227, i64 -1, !dbg !2486
  %1835 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1834, i64 %1833, !dbg !2487
  store %struct.lua_TValue* %1835, %struct.lua_TValue** %47, align 8, !dbg !2488, !tbaa !566
  br label %1836, !dbg !2489

; <label>:1836:                                   ; preds = %1829, %1832
  %1837 = load %union.GCObject*, %union.GCObject** %69, align 8, !dbg !2490, !tbaa !2444
  %1838 = icmp eq %union.GCObject* %1837, null, !dbg !2492
  br i1 %1838, label %1840, label %1839, !dbg !2493

; <label>:1839:                                   ; preds = %1836
  call void @luaF_close(%struct.lua_State* nonnull %0, %struct.lua_TValue* %223) #5, !dbg !2494
  br label %1840, !dbg !2494

; <label>:1840:                                   ; preds = %1836, %1839
  store i32* %152, i32** %35, align 8, !dbg !2495, !tbaa !1333
  %1841 = call i32 @luaD_poscall(%struct.lua_State* nonnull %0, %struct.lua_TValue* %227) #5, !dbg !2496
  %1842 = add nsw i32 %134, -1, !dbg !2497
  %1843 = icmp eq i32 %1842, 0, !dbg !2499
  br i1 %1843, label %2184, label %1844, !dbg !2500

; <label>:1844:                                   ; preds = %1840
  %1845 = icmp eq i32 %1841, 0, !dbg !2501
  br i1 %1845, label %1760, label %1846, !dbg !2504

; <label>:1846:                                   ; preds = %1844
  %1847 = load %struct.CallInfo*, %struct.CallInfo** %36, align 8, !dbg !2505, !tbaa !1336
  %1848 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1847, i64 0, i32 2, !dbg !2506
  %1849 = bitcast %struct.lua_TValue** %1848 to i64*, !dbg !2506
  %1850 = load i64, i64* %1849, align 8, !dbg !2506, !tbaa !2420
  store i64 %1850, i64* %48, align 8, !dbg !2507, !tbaa !566
  br label %1760, !dbg !2508

; <label>:1851:                                   ; preds = %222
  %1852 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %227, i64 2, !dbg !2509
  %1853 = bitcast %struct.lua_TValue* %1852 to double*, !dbg !2509
  %1854 = load double, double* %1853, align 8, !dbg !2509, !tbaa !430
  %1855 = bitcast %struct.lua_TValue* %227 to double*, !dbg !2511
  %1856 = load double, double* %1855, align 8, !dbg !2511, !tbaa !430
  %1857 = fadd double %1854, %1856, !dbg !2511
  %1858 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %227, i64 1, !dbg !2513
  %1859 = bitcast %struct.lua_TValue* %1858 to double*, !dbg !2513
  %1860 = load double, double* %1859, align 8, !dbg !2513, !tbaa !430
  %1861 = fcmp ogt double %1854, 0.000000e+00, !dbg !2515
  br i1 %1861, label %1862, label %1864, !dbg !2516

; <label>:1862:                                   ; preds = %1851
  %1863 = fcmp ugt double %1857, %1860, !dbg !2517
  br i1 %1863, label %2121, label %1866, !dbg !2515

; <label>:1864:                                   ; preds = %1851
  %1865 = fcmp ugt double %1860, %1857, !dbg !2518
  br i1 %1865, label %2121, label %1866, !dbg !2516

; <label>:1866:                                   ; preds = %1862, %1864
  %1867 = lshr i32 %153, 14, !dbg !2519
  %1868 = add nsw i32 %1867, -131071, !dbg !2519
  %1869 = sext i32 %1868 to i64, !dbg !2519
  %1870 = getelementptr inbounds i32, i32* %152, i64 %1869, !dbg !2519
  store double %1857, double* %1855, align 8, !dbg !2521, !tbaa !430
  %1871 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %226, i32 1, !dbg !2521
  store i32 3, i32* %1871, align 8, !dbg !2521, !tbaa !423
  %1872 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %227, i64 3, !dbg !2522
  %1873 = bitcast %struct.lua_TValue* %1872 to double*, !dbg !2522
  store double %1857, double* %1873, align 8, !dbg !2522, !tbaa !430
  %1874 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1872, i64 0, i32 1, !dbg !2522
  store i32 3, i32* %1874, align 8, !dbg !2522, !tbaa !423
  br label %2121, !dbg !2523

; <label>:1875:                                   ; preds = %222
  %1876 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %227, i64 1, !dbg !2525
  %1877 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %227, i64 2, !dbg !2527
  store i32* %152, i32** %35, align 8, !dbg !2529, !tbaa !1333
  %1878 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %226, i32 1, !dbg !2530
  %1879 = load i32, i32* %1878, align 8, !dbg !2530, !tbaa !423
  %1880 = icmp eq i32 %1879, 3, !dbg !2530
  br i1 %1880, label %1894, label %1881, !dbg !2530

; <label>:1881:                                   ; preds = %1875
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %70) #4, !dbg !2535
  %1882 = icmp eq i32 %1879, 4, !dbg !2536
  br i1 %1882, label %1883, label %1893, !dbg !2536

; <label>:1883:                                   ; preds = %1881
  %1884 = bitcast %struct.lua_TValue* %227 to %union.TString**, !dbg !2537
  %1885 = load %union.TString*, %union.TString** %1884, align 8, !dbg !2537, !tbaa !430
  %1886 = getelementptr inbounds %union.TString, %union.TString* %1885, i64 1, !dbg !2537
  %1887 = bitcast %union.TString* %1886 to i8*, !dbg !2537
  %1888 = call i32 @luaO_str2d(i8* nonnull %1887, double* nonnull %19) #5, !dbg !2539
  %1889 = icmp eq i32 %1888, 0, !dbg !2539
  br i1 %1889, label %1893, label %1890, !dbg !2540

; <label>:1890:                                   ; preds = %1883
  %1891 = load i64, i64* %110, align 8, !dbg !2541, !tbaa !435
  %1892 = bitcast %struct.lua_TValue* %227 to i64*, !dbg !2541
  store i64 %1891, i64* %1892, align 8, !dbg !2541, !tbaa !430
  store i32 3, i32* %1878, align 8, !dbg !2541, !tbaa !423
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %70) #4, !dbg !2542
  br label %1894, !dbg !2543

; <label>:1893:                                   ; preds = %1881, %1883
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %70) #4, !dbg !2542
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0)) #5, !dbg !2544
  br label %1928, !dbg !2544

; <label>:1894:                                   ; preds = %1890, %1875
  %1895 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1876, i64 0, i32 1, !dbg !2545
  %1896 = load i32, i32* %1895, align 8, !dbg !2545, !tbaa !423
  %1897 = icmp eq i32 %1896, 3, !dbg !2545
  br i1 %1897, label %1911, label %1898, !dbg !2545

; <label>:1898:                                   ; preds = %1894
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %85) #4, !dbg !2550
  %1899 = icmp eq i32 %1896, 4, !dbg !2551
  br i1 %1899, label %1900, label %1910, !dbg !2551

; <label>:1900:                                   ; preds = %1898
  %1901 = bitcast %struct.lua_TValue* %1876 to %union.TString**, !dbg !2552
  %1902 = load %union.TString*, %union.TString** %1901, align 8, !dbg !2552, !tbaa !430
  %1903 = getelementptr inbounds %union.TString, %union.TString* %1902, i64 1, !dbg !2552
  %1904 = bitcast %union.TString* %1903 to i8*, !dbg !2552
  %1905 = call i32 @luaO_str2d(i8* nonnull %1904, double* nonnull %18) #5, !dbg !2554
  %1906 = icmp eq i32 %1905, 0, !dbg !2554
  br i1 %1906, label %1910, label %1907, !dbg !2555

; <label>:1907:                                   ; preds = %1900
  %1908 = load i64, i64* %130, align 8, !dbg !2556, !tbaa !435
  %1909 = bitcast %struct.lua_TValue* %1876 to i64*, !dbg !2556
  store i64 %1908, i64* %1909, align 8, !dbg !2556, !tbaa !430
  store i32 3, i32* %1895, align 8, !dbg !2556, !tbaa !423
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %85) #4, !dbg !2557
  br label %1911, !dbg !2558

; <label>:1910:                                   ; preds = %1898, %1900
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %85) #4, !dbg !2557
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0)) #5, !dbg !2559
  br label %1928, !dbg !2559

; <label>:1911:                                   ; preds = %1907, %1894
  %1912 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1877, i64 0, i32 1, !dbg !2560
  %1913 = load i32, i32* %1912, align 8, !dbg !2560, !tbaa !423
  %1914 = icmp eq i32 %1913, 3, !dbg !2560
  br i1 %1914, label %1928, label %1915, !dbg !2560

; <label>:1915:                                   ; preds = %1911
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %109) #4, !dbg !2565
  %1916 = icmp eq i32 %1913, 4, !dbg !2566
  br i1 %1916, label %1917, label %1927, !dbg !2566

; <label>:1917:                                   ; preds = %1915
  %1918 = bitcast %struct.lua_TValue* %1877 to %union.TString**, !dbg !2567
  %1919 = load %union.TString*, %union.TString** %1918, align 8, !dbg !2567, !tbaa !430
  %1920 = getelementptr inbounds %union.TString, %union.TString* %1919, i64 1, !dbg !2567
  %1921 = bitcast %union.TString* %1920 to i8*, !dbg !2567
  %1922 = call i32 @luaO_str2d(i8* nonnull %1921, double* nonnull %17) #5, !dbg !2569
  %1923 = icmp eq i32 %1922, 0, !dbg !2569
  br i1 %1923, label %1927, label %1924, !dbg !2570

; <label>:1924:                                   ; preds = %1917
  %1925 = load i64, i64* %131, align 8, !dbg !2571, !tbaa !435
  %1926 = bitcast %struct.lua_TValue* %1877 to i64*, !dbg !2571
  store i64 %1925, i64* %1926, align 8, !dbg !2571, !tbaa !430
  store i32 3, i32* %1912, align 8, !dbg !2571, !tbaa !423
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %109) #4, !dbg !2572
  br label %1928, !dbg !2573

; <label>:1927:                                   ; preds = %1915, %1917
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %109) #4, !dbg !2572
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0)) #5, !dbg !2574
  unreachable, !dbg !2574

; <label>:1928:                                   ; preds = %1924, %1910, %1911, %1893
  %1929 = bitcast %struct.lua_TValue* %227 to double*, !dbg !2575
  %1930 = load double, double* %1929, align 8, !dbg !2575, !tbaa !430
  %1931 = bitcast %struct.lua_TValue* %1877 to double*, !dbg !2575
  %1932 = load double, double* %1931, align 8, !dbg !2575, !tbaa !430
  %1933 = fsub double %1930, %1932, !dbg !2575
  store double %1933, double* %1929, align 8, !dbg !2575, !tbaa !430
  store i32 3, i32* %1878, align 8, !dbg !2575, !tbaa !423
  %1934 = lshr i32 %153, 14, !dbg !2576
  %1935 = add nsw i32 %1934, -131071, !dbg !2576
  %1936 = sext i32 %1935 to i64, !dbg !2576
  %1937 = getelementptr inbounds i32, i32* %152, i64 %1936, !dbg !2576
  br label %2121

; <label>:1938:                                   ; preds = %222
  %1939 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %227, i64 3, !dbg !2578
  %1940 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %227, i64 2, !dbg !2580
  %1941 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1939, i64 2, !dbg !2580
  %1942 = bitcast %struct.lua_TValue* %1940 to i64*, !dbg !2580
  %1943 = bitcast %struct.lua_TValue* %1941 to i64*, !dbg !2580
  %1944 = load i64, i64* %1942, align 8, !dbg !2580
  store i64 %1944, i64* %1943, align 8, !dbg !2580
  %1945 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1940, i64 0, i32 1, !dbg !2580
  %1946 = load i32, i32* %1945, align 8, !dbg !2580, !tbaa !423
  %1947 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1941, i64 0, i32 1, !dbg !2580
  store i32 %1946, i32* %1947, align 8, !dbg !2580, !tbaa !423
  %1948 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %227, i64 1, !dbg !2581
  %1949 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1939, i64 1, !dbg !2581
  %1950 = bitcast %struct.lua_TValue* %1948 to i64*, !dbg !2581
  %1951 = bitcast %struct.lua_TValue* %1949 to i64*, !dbg !2581
  %1952 = load i64, i64* %1950, align 8, !dbg !2581
  store i64 %1952, i64* %1951, align 8, !dbg !2581
  %1953 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1948, i64 0, i32 1, !dbg !2581
  %1954 = load i32, i32* %1953, align 8, !dbg !2581, !tbaa !423
  %1955 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1949, i64 0, i32 1, !dbg !2581
  store i32 %1954, i32* %1955, align 8, !dbg !2581, !tbaa !423
  %1956 = bitcast %struct.lua_TValue* %227 to i64*, !dbg !2582
  %1957 = bitcast %struct.lua_TValue* %1939 to i64*, !dbg !2582
  %1958 = load i64, i64* %1956, align 8, !dbg !2582
  store i64 %1958, i64* %1957, align 8, !dbg !2582
  %1959 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %226, i32 1, !dbg !2582
  %1960 = load i32, i32* %1959, align 8, !dbg !2582, !tbaa !423
  %1961 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1939, i64 0, i32 1, !dbg !2582
  store i32 %1960, i32* %1961, align 8, !dbg !2582, !tbaa !423
  %1962 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1939, i64 3, !dbg !2583
  store %struct.lua_TValue* %1962, %struct.lua_TValue** %47, align 8, !dbg !2584, !tbaa !566
  store i32* %152, i32** %35, align 8, !dbg !2585, !tbaa !1333
  %1963 = lshr i32 %153, 14, !dbg !2587
  %1964 = and i32 %1963, 511, !dbg !2587
  call void @luaD_call(%struct.lua_State* nonnull %0, %struct.lua_TValue* nonnull %1939, i32 %1964) #5, !dbg !2587
  %1965 = load %struct.lua_TValue*, %struct.lua_TValue** %37, align 8, !dbg !2585, !tbaa !961
  %1966 = load %struct.CallInfo*, %struct.CallInfo** %36, align 8, !dbg !2589, !tbaa !1336
  %1967 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1966, i64 0, i32 2, !dbg !2590
  %1968 = bitcast %struct.lua_TValue** %1967 to i64*, !dbg !2590
  %1969 = load i64, i64* %1968, align 8, !dbg !2590, !tbaa !2420
  store i64 %1969, i64* %48, align 8, !dbg !2591, !tbaa !566
  %1970 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1965, i64 3, !dbg !2592
  %1971 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1970, i64 %226, !dbg !2593
  %1972 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1971, i64 0, i32 1, !dbg !2594
  %1973 = load i32, i32* %1972, align 8, !dbg !2594, !tbaa !423
  %1974 = icmp eq i32 %1973, 0, !dbg !2594
  br i1 %1974, label %1986, label %1975, !dbg !2595

; <label>:1975:                                   ; preds = %1938
  %1976 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1971, i64 -1, !dbg !2596
  %1977 = bitcast %struct.lua_TValue* %1971 to i64*, !dbg !2596
  %1978 = bitcast %struct.lua_TValue* %1976 to i64*, !dbg !2596
  %1979 = load i64, i64* %1977, align 8, !dbg !2596
  store i64 %1979, i64* %1978, align 8, !dbg !2596
  %1980 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1976, i64 0, i32 1, !dbg !2596
  store i32 %1973, i32* %1980, align 8, !dbg !2596, !tbaa !423
  %1981 = load i32, i32* %152, align 4, !dbg !2597, !tbaa !1354
  %1982 = lshr i32 %1981, 14, !dbg !2597
  %1983 = add nsw i32 %1982, -131071, !dbg !2597
  %1984 = sext i32 %1983 to i64, !dbg !2597
  %1985 = getelementptr inbounds i32, i32* %152, i64 %1984, !dbg !2597
  br label %1986, !dbg !2599

; <label>:1986:                                   ; preds = %1975, %1938
  %1987 = phi i32* [ %152, %1938 ], [ %1985, %1975 ], !dbg !2600
  %1988 = getelementptr inbounds i32, i32* %1987, i64 1, !dbg !2601
  br label %2121

; <label>:1989:                                   ; preds = %222
  %1990 = lshr i32 %153, 23, !dbg !2602
  %1991 = lshr i32 %153, 14, !dbg !2604
  %1992 = and i32 %1991, 511, !dbg !2604
  %1993 = icmp eq i32 %1990, 0, !dbg !2606
  br i1 %1993, label %1994, label %2005, !dbg !2608

; <label>:1994:                                   ; preds = %1989
  %1995 = load i64, i64* %48, align 8, !dbg !2609, !tbaa !566
  %1996 = ptrtoint %struct.lua_TValue* %227 to i64, !dbg !2609
  %1997 = sub i64 %1995, %1996, !dbg !2609
  %1998 = lshr exact i64 %1997, 4, !dbg !2609
  %1999 = trunc i64 %1998 to i32, !dbg !2609
  %2000 = add nsw i32 %1999, -1, !dbg !2611
  %2001 = load %struct.CallInfo*, %struct.CallInfo** %36, align 8, !dbg !2612, !tbaa !1336
  %2002 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2001, i64 0, i32 2, !dbg !2613
  %2003 = bitcast %struct.lua_TValue** %2002 to i64*, !dbg !2613
  %2004 = load i64, i64* %2003, align 8, !dbg !2613, !tbaa !2420
  store i64 %2004, i64* %48, align 8, !dbg !2614, !tbaa !566
  br label %2005, !dbg !2615

; <label>:2005:                                   ; preds = %1994, %1989
  %2006 = phi i32 [ %2000, %1994 ], [ %1990, %1989 ], !dbg !2616
  %2007 = icmp eq i32 %1992, 0, !dbg !2617
  br i1 %2007, label %2008, label %2011, !dbg !2619

; <label>:2008:                                   ; preds = %2005
  %2009 = getelementptr inbounds i32, i32* %150, i64 2, !dbg !2620
  %2010 = load i32, i32* %152, align 4, !dbg !2620, !tbaa !1354
  br label %2011, !dbg !2621

; <label>:2011:                                   ; preds = %2008, %2005
  %2012 = phi i32 [ %2010, %2008 ], [ %1992, %2005 ], !dbg !2616
  %2013 = phi i32* [ %2009, %2008 ], [ %152, %2005 ], !dbg !1350
  %2014 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %226, i32 1, !dbg !2622
  %2015 = load i32, i32* %2014, align 8, !dbg !2622, !tbaa !423
  %2016 = icmp eq i32 %2015, 5, !dbg !2622
  br i1 %2016, label %2017, label %2121, !dbg !2625

; <label>:2017:                                   ; preds = %2011
  %2018 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %227, i64 0, i32 0, i32 0, !dbg !2626
  %2019 = load %union.GCObject*, %union.GCObject** %2018, align 8, !dbg !2626, !tbaa !430
  %2020 = bitcast %union.GCObject* %2019 to %struct.Table*, !dbg !2626
  %2021 = mul i32 %2012, 50, !dbg !2628
  %2022 = add i32 %2006, -50, !dbg !2628
  %2023 = add i32 %2022, %2021, !dbg !2629
  %2024 = getelementptr inbounds %union.GCObject, %union.GCObject* %2019, i64 0, i32 0, i32 9, !dbg !2631
  %2025 = bitcast %struct.lua_TValue** %2024 to i32*, !dbg !2631
  %2026 = load i32, i32* %2025, align 8, !dbg !2631, !tbaa !2633
  %2027 = icmp sgt i32 %2023, %2026, !dbg !2634
  br i1 %2027, label %2028, label %2029, !dbg !2635

; <label>:2028:                                   ; preds = %2017
  call void @luaH_resizearray(%struct.lua_State* nonnull %0, %struct.Table* %2020, i32 %2023) #5, !dbg !2636
  br label %2029, !dbg !2636

; <label>:2029:                                   ; preds = %2028, %2017
  %2030 = icmp sgt i32 %2006, 0, !dbg !2637
  br i1 %2030, label %2031, label %2121, !dbg !2638

; <label>:2031:                                   ; preds = %2029
  %2032 = getelementptr inbounds %union.GCObject, %union.GCObject* %2019, i64 0, i32 0, i32 2
  %2033 = sext i32 %2006 to i64, !dbg !2638
  br label %2034, !dbg !2638

; <label>:2034:                                   ; preds = %2031, %2060
  %2035 = phi i64 [ %2033, %2031 ], [ %2061, %2060 ]
  %2036 = phi i32 [ %2023, %2031 ], [ %2038, %2060 ]
  %2037 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %227, i64 %2035, !dbg !2639
  %2038 = add nsw i32 %2036, -1, !dbg !2641
  %2039 = call %struct.lua_TValue* @luaH_setnum(%struct.lua_State* %0, %struct.Table* %2020, i32 %2036) #5, !dbg !2641
  %2040 = bitcast %struct.lua_TValue* %2037 to i64*, !dbg !2641
  %2041 = bitcast %struct.lua_TValue* %2039 to i64*, !dbg !2641
  %2042 = load i64, i64* %2040, align 8, !dbg !2641
  store i64 %2042, i64* %2041, align 8, !dbg !2641
  %2043 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2037, i64 0, i32 1, !dbg !2641
  %2044 = load i32, i32* %2043, align 8, !dbg !2641, !tbaa !423
  %2045 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2039, i64 0, i32 1, !dbg !2641
  store i32 %2044, i32* %2045, align 8, !dbg !2641, !tbaa !423
  %2046 = load i32, i32* %2043, align 8, !dbg !2642, !tbaa !423
  %2047 = icmp sgt i32 %2046, 3, !dbg !2642
  br i1 %2047, label %2048, label %2060, !dbg !2642

; <label>:2048:                                   ; preds = %2034
  %2049 = bitcast %struct.lua_TValue* %2037 to %struct.GCheader**, !dbg !2642
  %2050 = load %struct.GCheader*, %struct.GCheader** %2049, align 8, !dbg !2642, !tbaa !430
  %2051 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %2050, i64 0, i32 2, !dbg !2642
  %2052 = load i8, i8* %2051, align 1, !dbg !2642, !tbaa !430
  %2053 = and i8 %2052, 3, !dbg !2642
  %2054 = icmp eq i8 %2053, 0, !dbg !2642
  br i1 %2054, label %2060, label %2055, !dbg !2642

; <label>:2055:                                   ; preds = %2048
  %2056 = load i8, i8* %2032, align 1, !dbg !2642, !tbaa !430
  %2057 = and i8 %2056, 4, !dbg !2642
  %2058 = icmp eq i8 %2057, 0, !dbg !2642
  br i1 %2058, label %2060, label %2059, !dbg !2645

; <label>:2059:                                   ; preds = %2055
  call void @luaC_barrierback(%struct.lua_State* %0, %struct.Table* nonnull %2020) #5, !dbg !2642
  br label %2060, !dbg !2642

; <label>:2060:                                   ; preds = %2055, %2048, %2059, %2034
  %2061 = add nsw i64 %2035, -1, !dbg !2646
  %2062 = icmp sgt i64 %2035, 1, !dbg !2637
  br i1 %2062, label %2034, label %2121, !dbg !2638, !llvm.loop !1447

; <label>:2063:                                   ; preds = %222
  call void @luaF_close(%struct.lua_State* nonnull %0, %struct.lua_TValue* %227) #5, !dbg !2647
  br label %2121, !dbg !2649

; <label>:2064:                                   ; preds = %222
  %2065 = load %struct.Proto*, %struct.Proto** %143, align 8, !dbg !2650, !tbaa !1343
  %2066 = getelementptr inbounds %struct.Proto, %struct.Proto* %2065, i64 0, i32 5, !dbg !2651
  %2067 = load %struct.Proto**, %struct.Proto*** %2066, align 8, !dbg !2651, !tbaa !2652
  %2068 = lshr i32 %153, 14, !dbg !2653
  %2069 = zext i32 %2068 to i64, !dbg !2654
  %2070 = getelementptr inbounds %struct.Proto*, %struct.Proto** %2067, i64 %2069, !dbg !2654
  %2071 = load %struct.Proto*, %struct.Proto** %2070, align 8, !dbg !2654, !tbaa !519
  %2072 = getelementptr inbounds %struct.Proto, %struct.Proto* %2071, i64 0, i32 19, !dbg !2656
  %2073 = load i8, i8* %2072, align 8, !dbg !2656, !tbaa !2657
  %2074 = zext i8 %2073 to i32, !dbg !2658
  %2075 = load %struct.Table*, %struct.Table** %147, align 8, !dbg !2660, !tbaa !1459
  %2076 = call %union.Closure* @luaF_newLclosure(%struct.lua_State* nonnull %0, i32 %2074, %struct.Table* %2075) #5, !dbg !2661
  %2077 = getelementptr inbounds %union.Closure, %union.Closure* %2076, i64 0, i32 0, i32 7, !dbg !2663
  %2078 = bitcast i32 (%struct.lua_State*)** %2077 to %struct.Proto**, !dbg !2663
  store %struct.Proto* %2071, %struct.Proto** %2078, align 8, !dbg !2664, !tbaa !430
  %2079 = icmp eq i8 %2073, 0, !dbg !2666
  br i1 %2079, label %2108, label %2080, !dbg !2669

; <label>:2080:                                   ; preds = %2064
  %2081 = getelementptr inbounds %union.Closure, %union.Closure* %2076, i64 0, i32 0, i32 8
  %2082 = bitcast [1 x %struct.lua_TValue]* %2081 to [1 x %struct.UpVal*]*
  %2083 = zext i8 %2073 to i64
  br label %2084, !dbg !2669

; <label>:2084:                                   ; preds = %2102, %2080
  %2085 = phi i64 [ 0, %2080 ], [ %2103, %2102 ]
  %2086 = phi i32* [ %152, %2080 ], [ %2104, %2102 ]
  %2087 = load i32, i32* %2086, align 4, !dbg !2670, !tbaa !1354
  %2088 = and i32 %2087, 63, !dbg !2670
  %2089 = icmp eq i32 %2088, 4, !dbg !2673
  %2090 = lshr i32 %2087, 23, !dbg !2674
  %2091 = zext i32 %2090 to i64, !dbg !2674
  br i1 %2089, label %2092, label %2098, !dbg !2676

; <label>:2092:                                   ; preds = %2084
  %2093 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %141, i64 0, i32 8, i64 %2091, !dbg !2677
  %2094 = bitcast %struct.UpVal** %2093 to i64*, !dbg !2677
  %2095 = load i64, i64* %2094, align 8, !dbg !2677, !tbaa !519
  %2096 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %2082, i64 0, i64 %2085, !dbg !2678
  %2097 = bitcast %struct.UpVal** %2096 to i64*, !dbg !2679
  store i64 %2095, i64* %2097, align 8, !dbg !2679, !tbaa !430
  br label %2102, !dbg !2678

; <label>:2098:                                   ; preds = %2084
  %2099 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %2091, !dbg !2680
  %2100 = call %struct.UpVal* @luaF_findupval(%struct.lua_State* %0, %struct.lua_TValue* %2099) #5, !dbg !2681
  %2101 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %2082, i64 0, i64 %2085, !dbg !2682
  store %struct.UpVal* %2100, %struct.UpVal** %2101, align 8, !dbg !2683, !tbaa !430
  br label %2102

; <label>:2102:                                   ; preds = %2092, %2098
  %2103 = add nuw nsw i64 %2085, 1, !dbg !2684
  %2104 = getelementptr inbounds i32, i32* %2086, i64 1, !dbg !2685
  %2105 = icmp eq i64 %2103, %2083, !dbg !2666
  br i1 %2105, label %2106, label %2084, !dbg !2669, !llvm.loop !2686

; <label>:2106:                                   ; preds = %2102
  %2107 = getelementptr i32, i32* %152, i64 %2103, !dbg !2669
  br label %2108, !dbg !2688

; <label>:2108:                                   ; preds = %2106, %2064
  %2109 = phi i32* [ %152, %2064 ], [ %2107, %2106 ], !dbg !2689
  %2110 = bitcast %struct.lua_TValue* %227 to %union.Closure**, !dbg !2688
  store %union.Closure* %2076, %union.Closure** %2110, align 8, !dbg !2688, !tbaa !430
  %2111 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %226, i32 1, !dbg !2688
  store i32 6, i32* %2111, align 8, !dbg !2688, !tbaa !423
  store i32* %2109, i32** %35, align 8, !dbg !2690, !tbaa !1333
  %2112 = load %struct.global_State*, %struct.global_State** %46, align 8, !dbg !2692, !tbaa !515
  %2113 = getelementptr inbounds %struct.global_State, %struct.global_State* %2112, i64 0, i32 14, !dbg !2692
  %2114 = load i64, i64* %2113, align 8, !dbg !2692, !tbaa !1505
  %2115 = getelementptr inbounds %struct.global_State, %struct.global_State* %2112, i64 0, i32 13, !dbg !2692
  %2116 = load i64, i64* %2115, align 8, !dbg !2692, !tbaa !1509
  %2117 = icmp ult i64 %2114, %2116, !dbg !2692
  br i1 %2117, label %2119, label %2118, !dbg !2696

; <label>:2118:                                   ; preds = %2108
  call void @luaC_step(%struct.lua_State* nonnull %0) #5, !dbg !2692
  br label %2119, !dbg !2692

; <label>:2119:                                   ; preds = %2108, %2118
  %2120 = load %struct.lua_TValue*, %struct.lua_TValue** %37, align 8, !dbg !2690, !tbaa !961
  br label %2121

; <label>:2121:                                   ; preds = %2179, %2060, %261, %2119, %2063, %1986, %1928, %1744, %1714, %1690, %1476, %1445, %1403, %1392, %1296, %373, %371, %335, %300, %285, %279, %266, %249, %239, %229, %328, %321, %333, %306, %524, %422, %655, %553, %786, %684, %917, %815, %1054, %946, %1185, %1083, %1283, %1194, %1377, %1314, %1307, %1769, %1827, %1862, %1864, %1866, %222, %2011, %2029, %2157
  %2122 = phi i32* [ %152, %2157 ], [ %2013, %2029 ], [ %2013, %2011 ], [ %152, %222 ], [ %1870, %1866 ], [ %152, %1864 ], [ %152, %1862 ], [ %152, %1827 ], [ %152, %1769 ], [ %152, %1307 ], [ %152, %1314 ], [ %152, %1377 ], [ %152, %1194 ], [ %152, %1283 ], [ %152, %1083 ], [ %152, %1185 ], [ %152, %946 ], [ %152, %1054 ], [ %152, %815 ], [ %152, %917 ], [ %152, %684 ], [ %152, %786 ], [ %152, %553 ], [ %152, %655 ], [ %152, %422 ], [ %152, %524 ], [ %152, %306 ], [ %152, %333 ], [ %152, %321 ], [ %152, %328 ], [ %152, %229 ], [ %152, %239 ], [ %256, %249 ], [ %152, %266 ], [ %152, %279 ], [ %152, %285 ], [ %152, %300 ], [ %152, %335 ], [ %152, %371 ], [ %152, %373 ], [ %152, %1296 ], [ %152, %1392 ], [ %1407, %1403 ], [ %1448, %1445 ], [ %1479, %1476 ], [ %1693, %1690 ], [ %1716, %1714 ], [ %1746, %1744 ], [ %1937, %1928 ], [ %1988, %1986 ], [ %152, %2063 ], [ %2109, %2119 ], [ %152, %261 ], [ %2013, %2060 ], [ %152, %2179 ]
  %2123 = phi %struct.lua_TValue* [ %2160, %2157 ], [ %223, %2029 ], [ %223, %2011 ], [ %223, %222 ], [ %223, %1866 ], [ %223, %1864 ], [ %223, %1862 ], [ %1828, %1827 ], [ %1770, %1769 ], [ %223, %1307 ], [ %223, %1314 ], [ %1378, %1377 ], [ %223, %1194 ], [ %1284, %1283 ], [ %223, %1083 ], [ %1186, %1185 ], [ %223, %946 ], [ %1055, %1054 ], [ %223, %815 ], [ %918, %917 ], [ %223, %684 ], [ %787, %786 ], [ %223, %553 ], [ %656, %655 ], [ %223, %422 ], [ %525, %524 ], [ %223, %306 ], [ %223, %333 ], [ %223, %321 ], [ %223, %328 ], [ %223, %229 ], [ %223, %239 ], [ %223, %249 ], [ %223, %266 ], [ %284, %279 ], [ %299, %285 ], [ %305, %300 ], [ %354, %335 ], [ %372, %371 ], [ %394, %373 ], [ %223, %1296 ], [ %1393, %1392 ], [ %223, %1403 ], [ %1447, %1445 ], [ %1478, %1476 ], [ %1692, %1690 ], [ %223, %1714 ], [ %223, %1744 ], [ %223, %1928 ], [ %1965, %1986 ], [ %223, %2063 ], [ %2120, %2119 ], [ %223, %261 ], [ %223, %2060 ], [ %2160, %2179 ]
  br label %149, !dbg !1330, !llvm.loop !1447

; <label>:2124:                                   ; preds = %222
  %2125 = lshr i32 %153, 23, !dbg !2697
  %2126 = add nsw i32 %2125, -1, !dbg !2698
  %2127 = load %struct.CallInfo*, %struct.CallInfo** %36, align 8, !dbg !2700, !tbaa !1336
  %2128 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2127, i64 0, i32 0, !dbg !2702
  %2129 = bitcast %struct.CallInfo* %2127 to i64*, !dbg !2702
  %2130 = load i64, i64* %2129, align 8, !dbg !2702, !tbaa !2449
  %2131 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2127, i64 0, i32 1, !dbg !2702
  %2132 = bitcast %struct.lua_TValue** %2131 to i64*, !dbg !2702
  %2133 = load i64, i64* %2132, align 8, !dbg !2702, !tbaa !1337
  %2134 = sub i64 %2130, %2133, !dbg !2702
  %2135 = lshr exact i64 %2134, 4, !dbg !2702
  %2136 = trunc i64 %2135 to i32, !dbg !2702
  %2137 = load %struct.Proto*, %struct.Proto** %143, align 8, !dbg !2703, !tbaa !1343
  %2138 = getelementptr inbounds %struct.Proto, %struct.Proto* %2137, i64 0, i32 20, !dbg !2704
  %2139 = load i8, i8* %2138, align 1, !dbg !2704, !tbaa !2705
  %2140 = zext i8 %2139 to i32, !dbg !2706
  %2141 = xor i32 %2140, -1, !dbg !2707
  %2142 = add i32 %2141, %2136, !dbg !2707
  %2143 = icmp eq i32 %2125, 0, !dbg !2709
  br i1 %2143, label %2144, label %2157, !dbg !2711

; <label>:2144:                                   ; preds = %2124
  store i32* %152, i32** %35, align 8, !dbg !2712, !tbaa !1333
  %2145 = load i64, i64* %72, align 8, !dbg !2715, !tbaa !571
  %2146 = load i64, i64* %48, align 8, !dbg !2715, !tbaa !566
  %2147 = sub i64 %2145, %2146, !dbg !2715
  %2148 = shl nsw i32 %2142, 4, !dbg !2715
  %2149 = sext i32 %2148 to i64, !dbg !2715
  %2150 = icmp sgt i64 %2147, %2149, !dbg !2715
  br i1 %2150, label %2152, label %2151, !dbg !2718

; <label>:2151:                                   ; preds = %2144
  call void @luaD_growstack(%struct.lua_State* nonnull %0, i32 %2142) #5, !dbg !2715
  br label %2152, !dbg !2715

; <label>:2152:                                   ; preds = %2144, %2151
  %2153 = load %struct.lua_TValue*, %struct.lua_TValue** %37, align 8, !dbg !2712, !tbaa !961
  %2154 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2153, i64 %226, !dbg !2719
  %2155 = sext i32 %2142 to i64, !dbg !2720
  %2156 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2154, i64 %2155, !dbg !2720
  store %struct.lua_TValue* %2156, %struct.lua_TValue** %47, align 8, !dbg !2721, !tbaa !566
  br label %2157, !dbg !2722

; <label>:2157:                                   ; preds = %2152, %2124
  %2158 = phi i32 [ %2142, %2152 ], [ %2126, %2124 ], !dbg !2723
  %2159 = phi %struct.lua_TValue* [ %2154, %2152 ], [ %227, %2124 ], !dbg !1350
  %2160 = phi %struct.lua_TValue* [ %2153, %2152 ], [ %223, %2124 ], !dbg !2724
  %2161 = icmp sgt i32 %2158, 0, !dbg !2726
  br i1 %2161, label %2162, label %2121, !dbg !2727

; <label>:2162:                                   ; preds = %2157
  %2163 = sext i32 %2142 to i64
  %2164 = sub nsw i64 0, %2163
  %2165 = zext i32 %2158 to i64
  br label %2166, !dbg !2727

; <label>:2166:                                   ; preds = %2179, %2162
  %2167 = phi i64 [ 0, %2162 ], [ %2182, %2179 ]
  %2168 = icmp slt i64 %2167, %2163, !dbg !2728
  br i1 %2168, label %2169, label %2179, !dbg !2729

; <label>:2169:                                   ; preds = %2166
  %2170 = load %struct.lua_TValue*, %struct.lua_TValue** %2128, align 8, !dbg !2730, !tbaa !2449
  %2171 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2170, i64 %2164, !dbg !2730
  %2172 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2171, i64 %2167, !dbg !2730
  %2173 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2159, i64 %2167, !dbg !2730
  %2174 = bitcast %struct.lua_TValue* %2172 to i64*, !dbg !2730
  %2175 = bitcast %struct.lua_TValue* %2173 to i64*, !dbg !2730
  %2176 = load i64, i64* %2174, align 8, !dbg !2730
  store i64 %2176, i64* %2175, align 8, !dbg !2730
  %2177 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2172, i64 0, i32 1, !dbg !2730
  %2178 = load i32, i32* %2177, align 8, !dbg !2730, !tbaa !423
  br label %2179, !dbg !2731

; <label>:2179:                                   ; preds = %2166, %2169
  %2180 = phi i32 [ %2178, %2169 ], [ 0, %2166 ]
  %2181 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2159, i64 %2167, i32 1, !dbg !2730
  store i32 %2180, i32* %2181, align 8, !dbg !2730
  %2182 = add nuw nsw i64 %2167, 1, !dbg !2732
  %2183 = icmp eq i64 %2182, %2165, !dbg !2726
  br i1 %2183, label %2121, label %2166, !dbg !2727, !llvm.loop !1447

; <label>:2184:                                   ; preds = %1840, %1777, %1756, %219
  ret void, !dbg !2733
}

; Function Attrs: noredzone
declare hidden void @luaC_barrierf(%struct.lua_State*, %union.GCObject*, %union.GCObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden %struct.Table* @luaH_new(%struct.lua_State*, i32, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden i32 @luaO_fb2int(i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden void @luaC_step(%struct.lua_State*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local double @floor(double) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local double @pow(double, double) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden i32 @luaH_getn(%struct.Table*) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden i32 @luaD_precall(%struct.lua_State*, %struct.lua_TValue*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden void @luaF_close(%struct.lua_State*, %struct.lua_TValue*) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden i32 @luaD_poscall(%struct.lua_State*, %struct.lua_TValue*) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden void @luaD_call(%struct.lua_State*, %struct.lua_TValue*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden void @luaH_resizearray(%struct.lua_State*, %struct.Table*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden %struct.lua_TValue* @luaH_setnum(%struct.lua_State*, %struct.Table*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden %union.Closure* @luaF_newLclosure(%struct.lua_State*, i32, %struct.Table*) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden %struct.UpVal* @luaF_findupval(%struct.lua_State*, %struct.lua_TValue*) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden void @luaD_growstack(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @strcoll(i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden i32 @luaO_rawequalObj(%struct.lua_TValue*, %struct.lua_TValue*) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden void @luaD_callhook(%struct.lua_State*, i32, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden void @luaG_aritherror(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }
attributes #6 = { nobuiltin noredzone }

!llvm.module.flags = !{!401, !402, !403}
!llvm.ident = !{!404}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !66)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lvm.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{!3, !25}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 18, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/ltm.h", directory: "/root/.unikraft/apps/redis/build")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24}
!7 = !DIEnumerator(name: "TM_INDEX", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "TM_NEWINDEX", value: 1, isUnsigned: true)
!9 = !DIEnumerator(name: "TM_GC", value: 2, isUnsigned: true)
!10 = !DIEnumerator(name: "TM_MODE", value: 3, isUnsigned: true)
!11 = !DIEnumerator(name: "TM_EQ", value: 4, isUnsigned: true)
!12 = !DIEnumerator(name: "TM_ADD", value: 5, isUnsigned: true)
!13 = !DIEnumerator(name: "TM_SUB", value: 6, isUnsigned: true)
!14 = !DIEnumerator(name: "TM_MUL", value: 7, isUnsigned: true)
!15 = !DIEnumerator(name: "TM_DIV", value: 8, isUnsigned: true)
!16 = !DIEnumerator(name: "TM_MOD", value: 9, isUnsigned: true)
!17 = !DIEnumerator(name: "TM_POW", value: 10, isUnsigned: true)
!18 = !DIEnumerator(name: "TM_UNM", value: 11, isUnsigned: true)
!19 = !DIEnumerator(name: "TM_LEN", value: 12, isUnsigned: true)
!20 = !DIEnumerator(name: "TM_LT", value: 13, isUnsigned: true)
!21 = !DIEnumerator(name: "TM_LE", value: 14, isUnsigned: true)
!22 = !DIEnumerator(name: "TM_CONCAT", value: 15, isUnsigned: true)
!23 = !DIEnumerator(name: "TM_CALL", value: 16, isUnsigned: true)
!24 = !DIEnumerator(name: "TM_N", value: 17, isUnsigned: true)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !26, line: 150, baseType: !5, size: 32, elements: !27)
!26 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lopcodes.h", directory: "/root/.unikraft/apps/redis/build")
!27 = !{!28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65}
!28 = !DIEnumerator(name: "OP_MOVE", value: 0, isUnsigned: true)
!29 = !DIEnumerator(name: "OP_LOADK", value: 1, isUnsigned: true)
!30 = !DIEnumerator(name: "OP_LOADBOOL", value: 2, isUnsigned: true)
!31 = !DIEnumerator(name: "OP_LOADNIL", value: 3, isUnsigned: true)
!32 = !DIEnumerator(name: "OP_GETUPVAL", value: 4, isUnsigned: true)
!33 = !DIEnumerator(name: "OP_GETGLOBAL", value: 5, isUnsigned: true)
!34 = !DIEnumerator(name: "OP_GETTABLE", value: 6, isUnsigned: true)
!35 = !DIEnumerator(name: "OP_SETGLOBAL", value: 7, isUnsigned: true)
!36 = !DIEnumerator(name: "OP_SETUPVAL", value: 8, isUnsigned: true)
!37 = !DIEnumerator(name: "OP_SETTABLE", value: 9, isUnsigned: true)
!38 = !DIEnumerator(name: "OP_NEWTABLE", value: 10, isUnsigned: true)
!39 = !DIEnumerator(name: "OP_SELF", value: 11, isUnsigned: true)
!40 = !DIEnumerator(name: "OP_ADD", value: 12, isUnsigned: true)
!41 = !DIEnumerator(name: "OP_SUB", value: 13, isUnsigned: true)
!42 = !DIEnumerator(name: "OP_MUL", value: 14, isUnsigned: true)
!43 = !DIEnumerator(name: "OP_DIV", value: 15, isUnsigned: true)
!44 = !DIEnumerator(name: "OP_MOD", value: 16, isUnsigned: true)
!45 = !DIEnumerator(name: "OP_POW", value: 17, isUnsigned: true)
!46 = !DIEnumerator(name: "OP_UNM", value: 18, isUnsigned: true)
!47 = !DIEnumerator(name: "OP_NOT", value: 19, isUnsigned: true)
!48 = !DIEnumerator(name: "OP_LEN", value: 20, isUnsigned: true)
!49 = !DIEnumerator(name: "OP_CONCAT", value: 21, isUnsigned: true)
!50 = !DIEnumerator(name: "OP_JMP", value: 22, isUnsigned: true)
!51 = !DIEnumerator(name: "OP_EQ", value: 23, isUnsigned: true)
!52 = !DIEnumerator(name: "OP_LT", value: 24, isUnsigned: true)
!53 = !DIEnumerator(name: "OP_LE", value: 25, isUnsigned: true)
!54 = !DIEnumerator(name: "OP_TEST", value: 26, isUnsigned: true)
!55 = !DIEnumerator(name: "OP_TESTSET", value: 27, isUnsigned: true)
!56 = !DIEnumerator(name: "OP_CALL", value: 28, isUnsigned: true)
!57 = !DIEnumerator(name: "OP_TAILCALL", value: 29, isUnsigned: true)
!58 = !DIEnumerator(name: "OP_RETURN", value: 30, isUnsigned: true)
!59 = !DIEnumerator(name: "OP_FORLOOP", value: 31, isUnsigned: true)
!60 = !DIEnumerator(name: "OP_FORPREP", value: 32, isUnsigned: true)
!61 = !DIEnumerator(name: "OP_TFORLOOP", value: 33, isUnsigned: true)
!62 = !DIEnumerator(name: "OP_SETLIST", value: 34, isUnsigned: true)
!63 = !DIEnumerator(name: "OP_CLOSE", value: 35, isUnsigned: true)
!64 = !DIEnumerator(name: "OP_CLOSURE", value: 36, isUnsigned: true)
!65 = !DIEnumerator(name: "OP_VARARG", value: 37, isUnsigned: true)
!66 = !{!67, !70, !96, !108, !148, !291, !400, !145, !238, !134}
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!69 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCObject", file: !72, line: 36, baseType: !73)
!72 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lobject.h", directory: "/root/.unikraft/apps/redis/build")
!73 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "GCObject", file: !74, line: 136, size: 1472, elements: !75)
!74 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lstate.h", directory: "/root/.unikraft/apps/redis/build")
!75 = !{!76, !86, !113, !173, !396, !397, !398, !399}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "gch", scope: !73, file: !74, line: 137, baseType: !77, size: 128)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCheader", file: !72, line: 51, baseType: !78)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GCheader", file: !72, line: 49, size: 128, elements: !79)
!79 = !{!80, !81, !85}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !78, file: !72, line: 50, baseType: !70, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !78, file: !72, line: 50, baseType: !82, size: 8, offset: 64)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "lu_byte", file: !83, line: 27, baseType: !84)
!83 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/llimits.h", directory: "/root/.unikraft/apps/redis/build")
!84 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !78, file: !72, line: 50, baseType: !82, size: 8, offset: 72)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !73, file: !74, line: 138, baseType: !87, size: 192)
!87 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "TString", file: !72, line: 199, size: 192, elements: !88)
!88 = !{!89, !99}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !87, file: !72, line: 200, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "L_Umaxalign", file: !83, line: 47, baseType: !91)
!91 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !83, line: 47, size: 64, elements: !92)
!92 = !{!93, !95, !97}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !91, file: !83, line: 47, baseType: !94, size: 64)
!94 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !91, file: !83, line: 47, baseType: !96, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !91, file: !83, line: 47, baseType: !98, size: 64)
!98 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "tsv", scope: !87, file: !72, line: 206, baseType: !100, size: 192)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !87, file: !72, line: 201, size: 192, elements: !101)
!101 = !{!102, !103, !104, !105, !106, !107}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !100, file: !72, line: 202, baseType: !70, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !100, file: !72, line: 202, baseType: !82, size: 8, offset: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !100, file: !72, line: 202, baseType: !82, size: 8, offset: 72)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !100, file: !72, line: 203, baseType: !82, size: 8, offset: 80)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !100, file: !72, line: 204, baseType: !5, size: 32, offset: 96)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !100, file: !72, line: 205, baseType: !108, size: 64, offset: 128)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !109, line: 40, baseType: !110)
!109 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !111, line: 129, baseType: !112)
!111 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!112 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !73, file: !74, line: 139, baseType: !114, size: 320)
!114 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "Udata", file: !72, line: 215, size: 320, elements: !115)
!115 = !{!116, !117}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !114, file: !72, line: 216, baseType: !90, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "uv", scope: !114, file: !72, line: 222, baseType: !118, size: 320)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !114, file: !72, line: 217, size: 320, elements: !119)
!119 = !{!120, !121, !122, !123, !171, !172}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !118, file: !72, line: 218, baseType: !70, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !118, file: !72, line: 218, baseType: !82, size: 8, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !118, file: !72, line: 218, baseType: !82, size: 8, offset: 72)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "metatable", scope: !118, file: !72, line: 219, baseType: !124, size: 64, offset: 128)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Table", file: !72, line: 338, size: 512, elements: !126)
!126 = !{!127, !128, !129, !130, !131, !132, !133, !150, !168, !169, !170}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !125, file: !72, line: 339, baseType: !70, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !125, file: !72, line: 339, baseType: !82, size: 8, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !125, file: !72, line: 339, baseType: !82, size: 8, offset: 72)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !125, file: !72, line: 340, baseType: !82, size: 8, offset: 80)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "lsizenode", scope: !125, file: !72, line: 341, baseType: !82, size: 8, offset: 88)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "metatable", scope: !125, file: !72, line: 342, baseType: !124, size: 64, offset: 128)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "array", scope: !125, file: !72, line: 343, baseType: !134, size: 64, offset: 192)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "TValue", file: !72, line: 75, baseType: !136)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lua_TValue", file: !72, line: 73, size: 128, elements: !137)
!137 = !{!138, !149}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !136, file: !72, line: 74, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "Value", file: !72, line: 64, baseType: !140)
!140 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !72, line: 59, size: 64, elements: !141)
!141 = !{!142, !143, !144, !147}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !140, file: !72, line: 60, baseType: !70, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !140, file: !72, line: 61, baseType: !96, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !140, file: !72, line: 62, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Number", file: !146, line: 99, baseType: !94)
!146 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lua.h", directory: "/root/.unikraft/apps/redis/build")
!147 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !140, file: !72, line: 63, baseType: !148, size: 32)
!148 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !136, file: !72, line: 74, baseType: !148, size: 32, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !125, file: !72, line: 344, baseType: !151, size: 64, offset: 256)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "Node", file: !72, line: 335, baseType: !153)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Node", file: !72, line: 332, size: 320, elements: !154)
!154 = !{!155, !156}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "i_val", scope: !153, file: !72, line: 333, baseType: !135, size: 128)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "i_key", scope: !153, file: !72, line: 334, baseType: !157, size: 192, offset: 128)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "TKey", file: !72, line: 329, baseType: !158)
!158 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "TKey", file: !72, line: 323, size: 192, elements: !159)
!159 = !{!160, !167}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nk", scope: !158, file: !72, line: 327, baseType: !161, size: 192)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !158, file: !72, line: 324, size: 192, elements: !162)
!162 = !{!163, !164, !165}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !161, file: !72, line: 325, baseType: !139, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !161, file: !72, line: 325, baseType: !148, size: 32, offset: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !161, file: !72, line: 326, baseType: !166, size: 64, offset: 128)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "tvk", scope: !158, file: !72, line: 328, baseType: !135, size: 128)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "lastfree", scope: !125, file: !72, line: 345, baseType: !151, size: 64, offset: 320)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !125, file: !72, line: 346, baseType: !70, size: 64, offset: 384)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "sizearray", scope: !125, file: !72, line: 347, baseType: !148, size: 32, offset: 448)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !118, file: !72, line: 220, baseType: !124, size: 64, offset: 192)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !118, file: !72, line: 221, baseType: !108, size: 64, offset: 256)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !73, file: !74, line: 140, baseType: !174, size: 448)
!174 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "Closure", file: !72, line: 309, size: 448, elements: !175)
!175 = !{!176, !345}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !174, file: !72, line: 310, baseType: !177, size: 448)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "CClosure", file: !72, line: 299, baseType: !178)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CClosure", file: !72, line: 295, size: 448, elements: !179)
!179 = !{!180, !181, !182, !183, !184, !185, !186, !187, !341}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !178, file: !72, line: 296, baseType: !70, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !178, file: !72, line: 296, baseType: !82, size: 8, offset: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !178, file: !72, line: 296, baseType: !82, size: 8, offset: 72)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "isC", scope: !178, file: !72, line: 296, baseType: !82, size: 8, offset: 80)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "nupvalues", scope: !178, file: !72, line: 296, baseType: !82, size: 8, offset: 88)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !178, file: !72, line: 296, baseType: !70, size: 64, offset: 128)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !178, file: !72, line: 296, baseType: !124, size: 64, offset: 192)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !178, file: !72, line: 297, baseType: !188, size: 64, offset: 256)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_CFunction", file: !146, line: 52, baseType: !189)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DISubroutineType(types: !191)
!191 = !{!148, !192}
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_State", file: !146, line: 50, baseType: !194)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lua_State", file: !74, line: 100, size: 1472, elements: !195)
!195 = !{!196, !197, !198, !199, !200, !202, !203, !280, !294, !295, !296, !297, !298, !299, !300, !301, !303, !304, !305, !306, !307, !308, !331, !332, !333, !334, !335, !338}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !194, file: !74, line: 101, baseType: !70, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !194, file: !74, line: 101, baseType: !82, size: 8, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !194, file: !74, line: 101, baseType: !82, size: 8, offset: 72)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !194, file: !74, line: 102, baseType: !82, size: 8, offset: 80)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !194, file: !74, line: 103, baseType: !201, size: 64, offset: 128)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "StkId", file: !72, line: 193, baseType: !134)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !194, file: !74, line: 104, baseType: !201, size: 64, offset: 192)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "l_G", scope: !194, file: !74, line: 105, baseType: !204, size: 64, offset: 256)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "global_State", file: !74, line: 94, baseType: !206)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "global_State", file: !74, line: 68, size: 3456, elements: !207)
!207 = !{!208, !217, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !241, !243, !244, !245, !246, !247, !248, !249, !250, !252, !270, !274}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "strt", scope: !206, file: !74, line: 69, baseType: !209, size: 128)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "stringtable", file: !74, line: 42, baseType: !210)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stringtable", file: !74, line: 38, size: 128, elements: !211)
!211 = !{!212, !214, !216}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !210, file: !74, line: 39, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "nuse", scope: !210, file: !74, line: 40, baseType: !215, size: 32, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "lu_int32", file: !83, line: 18, baseType: !5)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !210, file: !74, line: 41, baseType: !148, size: 32, offset: 96)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "frealloc", scope: !206, file: !74, line: 70, baseType: !218, size: 64, offset: 128)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Alloc", file: !146, line: 66, baseType: !219)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DISubroutineType(types: !221)
!221 = !{!96, !96, !96, !108, !108}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "ud", scope: !206, file: !74, line: 71, baseType: !96, size: 64, offset: 192)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "currentwhite", scope: !206, file: !74, line: 72, baseType: !82, size: 8, offset: 256)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "gcstate", scope: !206, file: !74, line: 73, baseType: !82, size: 8, offset: 264)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "sweepstrgc", scope: !206, file: !74, line: 74, baseType: !148, size: 32, offset: 288)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "rootgc", scope: !206, file: !74, line: 75, baseType: !70, size: 64, offset: 320)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "sweepgc", scope: !206, file: !74, line: 76, baseType: !213, size: 64, offset: 384)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "gray", scope: !206, file: !74, line: 77, baseType: !70, size: 64, offset: 448)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "grayagain", scope: !206, file: !74, line: 78, baseType: !70, size: 64, offset: 512)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "weak", scope: !206, file: !74, line: 79, baseType: !70, size: 64, offset: 576)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "tmudata", scope: !206, file: !74, line: 80, baseType: !70, size: 64, offset: 640)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "buff", scope: !206, file: !74, line: 81, baseType: !233, size: 192, offset: 704)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "Mbuffer", file: !234, line: 28, baseType: !235)
!234 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lzio.h", directory: "/root/.unikraft/apps/redis/build")
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Mbuffer", file: !234, line: 24, size: 192, elements: !236)
!236 = !{!237, !239, !240}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !235, file: !234, line: 25, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !235, file: !234, line: 26, baseType: !108, size: 64, offset: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "buffsize", scope: !235, file: !234, line: 27, baseType: !108, size: 64, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "GCthreshold", scope: !206, file: !74, line: 82, baseType: !242, size: 64, offset: 896)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "lu_mem", file: !83, line: 20, baseType: !108)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "totalbytes", scope: !206, file: !74, line: 83, baseType: !242, size: 64, offset: 960)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "estimate", scope: !206, file: !74, line: 84, baseType: !242, size: 64, offset: 1024)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "gcdept", scope: !206, file: !74, line: 85, baseType: !242, size: 64, offset: 1088)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "gcpause", scope: !206, file: !74, line: 86, baseType: !148, size: 32, offset: 1152)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "gcstepmul", scope: !206, file: !74, line: 87, baseType: !148, size: 32, offset: 1184)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "panic", scope: !206, file: !74, line: 88, baseType: !188, size: 64, offset: 1216)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "l_registry", scope: !206, file: !74, line: 89, baseType: !135, size: 128, offset: 1280)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "mainthread", scope: !206, file: !74, line: 90, baseType: !251, size: 64, offset: 1408)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "uvhead", scope: !206, file: !74, line: 91, baseType: !253, size: 320, offset: 1472)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "UpVal", file: !72, line: 284, baseType: !254)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "UpVal", file: !72, line: 274, size: 320, elements: !255)
!255 = !{!256, !257, !258, !259, !260}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !254, file: !72, line: 275, baseType: !70, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !254, file: !72, line: 275, baseType: !82, size: 8, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !254, file: !72, line: 275, baseType: !82, size: 8, offset: 72)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !254, file: !72, line: 276, baseType: !134, size: 64, offset: 128)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !254, file: !72, line: 283, baseType: !261, size: 128, offset: 192)
!261 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !254, file: !72, line: 277, size: 128, elements: !262)
!262 = !{!263, !264}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !261, file: !72, line: 278, baseType: !135, size: 128)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !261, file: !72, line: 282, baseType: !265, size: 128)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !261, file: !72, line: 279, size: 128, elements: !266)
!266 = !{!267, !269}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !265, file: !72, line: 280, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !265, file: !72, line: 281, baseType: !268, size: 64, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "mt", scope: !206, file: !74, line: 92, baseType: !271, size: 576, offset: 1792)
!271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 576, elements: !272)
!272 = !{!273}
!273 = !DISubrange(count: 9)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "tmname", scope: !206, file: !74, line: 93, baseType: !275, size: 1088, offset: 2368)
!275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !276, size: 1088, elements: !278)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "TString", file: !72, line: 207, baseType: !87)
!278 = !{!279}
!279 = !DISubrange(count: 17)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "ci", scope: !194, file: !74, line: 106, baseType: !281, size: 64, offset: 320)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "CallInfo", file: !74, line: 55, baseType: !283)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CallInfo", file: !74, line: 48, size: 320, elements: !284)
!284 = !{!285, !286, !287, !288, !292, !293}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !283, file: !74, line: 49, baseType: !201, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !283, file: !74, line: 50, baseType: !201, size: 64, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !283, file: !74, line: 51, baseType: !201, size: 64, offset: 128)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "savedpc", scope: !283, file: !74, line: 52, baseType: !289, size: 64, offset: 192)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !291)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "Instruction", file: !83, line: 88, baseType: !215)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "nresults", scope: !283, file: !74, line: 53, baseType: !148, size: 32, offset: 256)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "tailcalls", scope: !283, file: !74, line: 54, baseType: !148, size: 32, offset: 288)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "savedpc", scope: !194, file: !74, line: 107, baseType: !289, size: 64, offset: 384)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "stack_last", scope: !194, file: !74, line: 108, baseType: !201, size: 64, offset: 448)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !194, file: !74, line: 109, baseType: !201, size: 64, offset: 512)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "end_ci", scope: !194, file: !74, line: 110, baseType: !281, size: 64, offset: 576)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "base_ci", scope: !194, file: !74, line: 111, baseType: !281, size: 64, offset: 640)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "stacksize", scope: !194, file: !74, line: 112, baseType: !148, size: 32, offset: 704)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "size_ci", scope: !194, file: !74, line: 113, baseType: !148, size: 32, offset: 736)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "nCcalls", scope: !194, file: !74, line: 114, baseType: !302, size: 16, offset: 768)
!302 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "baseCcalls", scope: !194, file: !74, line: 115, baseType: !302, size: 16, offset: 784)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "hookmask", scope: !194, file: !74, line: 116, baseType: !82, size: 8, offset: 800)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "allowhook", scope: !194, file: !74, line: 117, baseType: !82, size: 8, offset: 808)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "basehookcount", scope: !194, file: !74, line: 118, baseType: !148, size: 32, offset: 832)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "hookcount", scope: !194, file: !74, line: 119, baseType: !148, size: 32, offset: 864)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "hook", scope: !194, file: !74, line: 120, baseType: !309, size: 64, offset: 896)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Hook", file: !146, line: 330, baseType: !310)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DISubroutineType(types: !312)
!312 = !{null, !192, !313}
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Debug", file: !146, line: 326, baseType: !315)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lua_Debug", file: !146, line: 346, size: 960, elements: !316)
!316 = !{!317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !330}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !315, file: !146, line: 347, baseType: !148, size: 32)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !315, file: !146, line: 348, baseType: !67, size: 64, offset: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "namewhat", scope: !315, file: !146, line: 349, baseType: !67, size: 64, offset: 128)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "what", scope: !315, file: !146, line: 350, baseType: !67, size: 64, offset: 192)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !315, file: !146, line: 351, baseType: !67, size: 64, offset: 256)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "currentline", scope: !315, file: !146, line: 352, baseType: !148, size: 32, offset: 320)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "nups", scope: !315, file: !146, line: 353, baseType: !148, size: 32, offset: 352)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "linedefined", scope: !315, file: !146, line: 354, baseType: !148, size: 32, offset: 384)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "lastlinedefined", scope: !315, file: !146, line: 355, baseType: !148, size: 32, offset: 416)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "short_src", scope: !315, file: !146, line: 356, baseType: !327, size: 480, offset: 448)
!327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 480, elements: !328)
!328 = !{!329}
!329 = !DISubrange(count: 60)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "i_ci", scope: !315, file: !146, line: 358, baseType: !148, size: 32, offset: 928)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "l_gt", scope: !194, file: !74, line: 121, baseType: !135, size: 128, offset: 960)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !194, file: !74, line: 122, baseType: !135, size: 128, offset: 1088)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "openupval", scope: !194, file: !74, line: 123, baseType: !70, size: 64, offset: 1216)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !194, file: !74, line: 124, baseType: !70, size: 64, offset: 1280)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "errorJmp", scope: !194, file: !74, line: 125, baseType: !336, size: 64, offset: 1344)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DICompositeType(tag: DW_TAG_structure_type, name: "lua_longjmp", file: !74, line: 18, flags: DIFlagFwdDecl)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "errfunc", scope: !194, file: !74, line: 126, baseType: !339, size: 64, offset: 1408)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !340, line: 49, baseType: !98)
!340 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!341 = !DIDerivedType(tag: DW_TAG_member, name: "upvalue", scope: !178, file: !72, line: 298, baseType: !342, size: 128, offset: 320)
!342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 128, elements: !343)
!343 = !{!344}
!344 = !DISubrange(count: 1)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !174, file: !72, line: 311, baseType: !346, size: 384)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "LClosure", file: !72, line: 306, baseType: !347)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LClosure", file: !72, line: 302, size: 384, elements: !348)
!348 = !{!349, !350, !351, !352, !353, !354, !355, !356, !393}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !347, file: !72, line: 303, baseType: !70, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !347, file: !72, line: 303, baseType: !82, size: 8, offset: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !347, file: !72, line: 303, baseType: !82, size: 8, offset: 72)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "isC", scope: !347, file: !72, line: 303, baseType: !82, size: 8, offset: 80)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "nupvalues", scope: !347, file: !72, line: 303, baseType: !82, size: 8, offset: 88)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !347, file: !72, line: 303, baseType: !70, size: 64, offset: 128)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !347, file: !72, line: 303, baseType: !124, size: 64, offset: 192)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !347, file: !72, line: 304, baseType: !357, size: 64, offset: 256)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Proto", file: !72, line: 231, size: 960, elements: !359)
!359 = !{!360, !361, !362, !363, !364, !366, !368, !370, !377, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !358, file: !72, line: 232, baseType: !70, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !358, file: !72, line: 232, baseType: !82, size: 8, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !358, file: !72, line: 232, baseType: !82, size: 8, offset: 72)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !358, file: !72, line: 233, baseType: !134, size: 64, offset: 128)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !358, file: !72, line: 234, baseType: !365, size: 64, offset: 192)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !358, file: !72, line: 235, baseType: !367, size: 64, offset: 256)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "lineinfo", scope: !358, file: !72, line: 236, baseType: !369, size: 64, offset: 320)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "locvars", scope: !358, file: !72, line: 237, baseType: !371, size: 64, offset: 384)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LocVar", file: !72, line: 262, size: 128, elements: !373)
!373 = !{!374, !375, !376}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "varname", scope: !372, file: !72, line: 263, baseType: !276, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "startpc", scope: !372, file: !72, line: 264, baseType: !148, size: 32, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "endpc", scope: !372, file: !72, line: 265, baseType: !148, size: 32, offset: 96)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "upvalues", scope: !358, file: !72, line: 238, baseType: !378, size: 64, offset: 448)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !358, file: !72, line: 239, baseType: !276, size: 64, offset: 512)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "sizeupvalues", scope: !358, file: !72, line: 240, baseType: !148, size: 32, offset: 576)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "sizek", scope: !358, file: !72, line: 241, baseType: !148, size: 32, offset: 608)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "sizecode", scope: !358, file: !72, line: 242, baseType: !148, size: 32, offset: 640)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "sizelineinfo", scope: !358, file: !72, line: 243, baseType: !148, size: 32, offset: 672)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "sizep", scope: !358, file: !72, line: 244, baseType: !148, size: 32, offset: 704)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "sizelocvars", scope: !358, file: !72, line: 245, baseType: !148, size: 32, offset: 736)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "linedefined", scope: !358, file: !72, line: 246, baseType: !148, size: 32, offset: 768)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "lastlinedefined", scope: !358, file: !72, line: 247, baseType: !148, size: 32, offset: 800)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !358, file: !72, line: 248, baseType: !70, size: 64, offset: 832)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "nups", scope: !358, file: !72, line: 249, baseType: !82, size: 8, offset: 896)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "numparams", scope: !358, file: !72, line: 250, baseType: !82, size: 8, offset: 904)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "is_vararg", scope: !358, file: !72, line: 251, baseType: !82, size: 8, offset: 912)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "maxstacksize", scope: !358, file: !72, line: 252, baseType: !82, size: 8, offset: 920)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "upvals", scope: !347, file: !72, line: 305, baseType: !394, size: 64, offset: 320)
!394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !395, size: 64, elements: !343)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "h", scope: !73, file: !74, line: 141, baseType: !125, size: 512)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !73, file: !74, line: 142, baseType: !358, size: 960)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "uv", scope: !73, file: !74, line: 143, baseType: !254, size: 320)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "th", scope: !73, file: !74, line: 144, baseType: !194, size: 1472)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "OpCode", file: !26, line: 208, baseType: !25)
!401 = !{i32 2, !"Dwarf Version", i32 4}
!402 = !{i32 2, !"Debug Info Version", i32 3}
!403 = !{i32 1, !"wchar_size", i32 4}
!404 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!405 = distinct !DISubprogram(name: "luaV_tonumber", scope: !1, file: !1, line: 35, type: !406, isLocal: false, isDefinition: true, scopeLine: 35, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !410)
!406 = !DISubroutineType(types: !407)
!407 = !{!408, !408, !134}
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !135)
!410 = !{!411, !412, !413, !414}
!411 = !DILocalVariable(name: "obj", arg: 1, scope: !405, file: !1, line: 35, type: !408)
!412 = !DILocalVariable(name: "n", arg: 2, scope: !405, file: !1, line: 35, type: !134)
!413 = !DILocalVariable(name: "num", scope: !405, file: !1, line: 36, type: !145)
!414 = !DILocalVariable(name: "i_o", scope: !415, file: !1, line: 39, type: !134)
!415 = distinct !DILexicalBlock(scope: !416, file: !1, line: 39, column: 5)
!416 = distinct !DILexicalBlock(scope: !417, file: !1, line: 38, column: 57)
!417 = distinct !DILexicalBlock(scope: !405, file: !1, line: 38, column: 7)
!418 = !DILocation(line: 35, column: 44, scope: !405)
!419 = !DILocation(line: 35, column: 57, scope: !405)
!420 = !DILocation(line: 36, column: 3, scope: !405)
!421 = !DILocation(line: 37, column: 7, scope: !422)
!422 = distinct !DILexicalBlock(scope: !405, file: !1, line: 37, column: 7)
!423 = !{!424, !427, i64 8}
!424 = !{!"lua_TValue", !425, i64 0, !427, i64 8}
!425 = !{!"omnipotent char", !426, i64 0}
!426 = !{!"Simple C/C++ TBAA"}
!427 = !{!"int", !425, i64 0}
!428 = !DILocation(line: 37, column: 7, scope: !405)
!429 = !DILocation(line: 38, column: 37, scope: !417)
!430 = !{!425, !425, i64 0}
!431 = !DILocation(line: 36, column: 14, scope: !405)
!432 = !DILocation(line: 38, column: 26, scope: !417)
!433 = !DILocation(line: 38, column: 7, scope: !405)
!434 = !DILocation(line: 39, column: 5, scope: !415)
!435 = !{!436, !436, i64 0}
!436 = !{!"double", !425, i64 0}
!437 = !DILocation(line: 40, column: 5, scope: !416)
!438 = !DILocation(line: 43, column: 5, scope: !417)
!439 = !DILocation(line: 0, scope: !417)
!440 = !DILocation(line: 44, column: 1, scope: !405)
!441 = distinct !DISubprogram(name: "luaV_tostring", scope: !1, file: !1, line: 47, type: !442, isLocal: false, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !444)
!442 = !DISubroutineType(types: !443)
!443 = !{!148, !192, !201}
!444 = !{!445, !446, !447, !453, !454}
!445 = !DILocalVariable(name: "L", arg: 1, scope: !441, file: !1, line: 47, type: !192)
!446 = !DILocalVariable(name: "obj", arg: 2, scope: !441, file: !1, line: 47, type: !201)
!447 = !DILocalVariable(name: "s", scope: !448, file: !1, line: 51, type: !450)
!448 = distinct !DILexicalBlock(scope: !449, file: !1, line: 50, column: 8)
!449 = distinct !DILexicalBlock(scope: !441, file: !1, line: 48, column: 7)
!450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 256, elements: !451)
!451 = !{!452}
!452 = !DISubrange(count: 32)
!453 = !DILocalVariable(name: "n", scope: !448, file: !1, line: 52, type: !145)
!454 = !DILocalVariable(name: "i_o", scope: !455, file: !1, line: 54, type: !134)
!455 = distinct !DILexicalBlock(scope: !448, file: !1, line: 54, column: 5)
!456 = !DILocation(line: 47, column: 31, scope: !441)
!457 = !DILocation(line: 47, column: 40, scope: !441)
!458 = !DILocation(line: 48, column: 8, scope: !449)
!459 = !DILocation(line: 48, column: 7, scope: !441)
!460 = !DILocation(line: 51, column: 5, scope: !448)
!461 = !DILocation(line: 51, column: 10, scope: !448)
!462 = !DILocation(line: 52, column: 20, scope: !448)
!463 = !DILocation(line: 52, column: 16, scope: !448)
!464 = !DILocation(line: 53, column: 5, scope: !448)
!465 = !DILocation(line: 54, column: 5, scope: !455)
!466 = !DILocation(line: 56, column: 3, scope: !449)
!467 = !DILocation(line: 0, scope: !449)
!468 = !DILocation(line: 57, column: 1, scope: !441)
!469 = distinct !DISubprogram(name: "luaV_gettable", scope: !1, file: !1, line: 108, type: !470, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !472)
!470 = !DISubroutineType(types: !471)
!471 = !{null, !192, !408, !134, !201}
!472 = !{!473, !474, !475, !476, !477, !478, !482, !487, !488, !492}
!473 = !DILocalVariable(name: "L", arg: 1, scope: !469, file: !1, line: 108, type: !192)
!474 = !DILocalVariable(name: "t", arg: 2, scope: !469, file: !1, line: 108, type: !408)
!475 = !DILocalVariable(name: "key", arg: 3, scope: !469, file: !1, line: 108, type: !134)
!476 = !DILocalVariable(name: "val", arg: 4, scope: !469, file: !1, line: 108, type: !201)
!477 = !DILocalVariable(name: "loop", scope: !469, file: !1, line: 109, type: !148)
!478 = !DILocalVariable(name: "tm", scope: !479, file: !1, line: 111, type: !408)
!479 = distinct !DILexicalBlock(scope: !480, file: !1, line: 110, column: 45)
!480 = distinct !DILexicalBlock(scope: !481, file: !1, line: 110, column: 3)
!481 = distinct !DILexicalBlock(scope: !469, file: !1, line: 110, column: 3)
!482 = !DILocalVariable(name: "h", scope: !483, file: !1, line: 113, type: !485)
!483 = distinct !DILexicalBlock(scope: !484, file: !1, line: 112, column: 23)
!484 = distinct !DILexicalBlock(scope: !479, file: !1, line: 112, column: 9)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "Table", file: !72, line: 348, baseType: !125)
!487 = !DILocalVariable(name: "res", scope: !483, file: !1, line: 114, type: !408)
!488 = !DILocalVariable(name: "o2", scope: !489, file: !1, line: 117, type: !408)
!489 = distinct !DILexicalBlock(scope: !490, file: !1, line: 117, column: 9)
!490 = distinct !DILexicalBlock(scope: !491, file: !1, line: 116, column: 61)
!491 = distinct !DILexicalBlock(scope: !483, file: !1, line: 115, column: 11)
!492 = !DILocalVariable(name: "o1", scope: !489, file: !1, line: 117, type: !134)
!493 = !DILocation(line: 108, column: 32, scope: !469)
!494 = !DILocation(line: 108, column: 49, scope: !469)
!495 = !DILocation(line: 108, column: 60, scope: !469)
!496 = !DILocation(line: 108, column: 71, scope: !469)
!497 = !DILocation(line: 109, column: 7, scope: !469)
!498 = !DILocation(line: 112, column: 9, scope: !484)
!499 = !DILocation(line: 110, column: 3, scope: !481)
!500 = !DILocation(line: 110, column: 23, scope: !480)
!501 = distinct !{!501, !499, !502}
!502 = !DILocation(line: 129, column: 3, scope: !481)
!503 = !DILocation(line: 112, column: 9, scope: !479)
!504 = !DILocation(line: 113, column: 18, scope: !483)
!505 = !DILocation(line: 113, column: 14, scope: !483)
!506 = !DILocation(line: 114, column: 27, scope: !483)
!507 = !DILocation(line: 114, column: 21, scope: !483)
!508 = !DILocation(line: 115, column: 12, scope: !491)
!509 = !DILocation(line: 115, column: 25, scope: !491)
!510 = !DILocation(line: 116, column: 17, scope: !491)
!511 = !{!512, !513, i64 16}
!512 = !{!"Table", !513, i64 0, !425, i64 8, !425, i64 9, !425, i64 10, !425, i64 11, !513, i64 16, !513, i64 24, !513, i64 32, !513, i64 40, !513, i64 48, !427, i64 56}
!513 = !{!"any pointer", !425, i64 0}
!514 = !{!512, !425, i64 10}
!515 = !{!516, !513, i64 32}
!516 = !{!"lua_State", !513, i64 0, !425, i64 8, !425, i64 9, !425, i64 10, !513, i64 16, !513, i64 24, !513, i64 32, !513, i64 40, !513, i64 48, !513, i64 56, !513, i64 64, !513, i64 72, !513, i64 80, !427, i64 88, !427, i64 92, !517, i64 96, !517, i64 98, !425, i64 100, !425, i64 101, !427, i64 104, !427, i64 108, !513, i64 112, !424, i64 120, !424, i64 136, !513, i64 152, !513, i64 160, !513, i64 168, !518, i64 176}
!517 = !{!"short", !425, i64 0}
!518 = !{!"long", !425, i64 0}
!519 = !{!513, !513, i64 0}
!520 = !DILocation(line: 111, column: 19, scope: !479)
!521 = !DILocation(line: 116, column: 52, scope: !491)
!522 = !DILocation(line: 115, column: 11, scope: !483)
!523 = !DILocation(line: 124, column: 9, scope: !524)
!524 = distinct !DILexicalBlock(scope: !479, file: !1, line: 124, column: 9)
!525 = !DILocation(line: 117, column: 9, scope: !489)
!526 = !DILocation(line: 122, column: 14, scope: !527)
!527 = distinct !DILexicalBlock(scope: !484, file: !1, line: 122, column: 14)
!528 = !DILocation(line: 122, column: 14, scope: !484)
!529 = !DILocation(line: 123, column: 7, scope: !527)
!530 = !DILocation(line: 0, scope: !527)
!531 = !DILocation(line: 110, column: 41, scope: !480)
!532 = !DILocation(line: 124, column: 9, scope: !479)
!533 = !DILocalVariable(name: "L", arg: 1, scope: !534, file: !1, line: 80, type: !192)
!534 = distinct !DISubprogram(name: "callTMres", scope: !1, file: !1, line: 80, type: !535, isLocal: true, isDefinition: true, scopeLine: 81, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !537)
!535 = !DISubroutineType(types: !536)
!536 = !{null, !192, !201, !408, !408, !408}
!537 = !{!533, !538, !539, !540, !541, !542, !543, !545, !546, !548, !549, !551, !552, !554}
!538 = !DILocalVariable(name: "res", arg: 2, scope: !534, file: !1, line: 80, type: !201)
!539 = !DILocalVariable(name: "f", arg: 3, scope: !534, file: !1, line: 80, type: !408)
!540 = !DILocalVariable(name: "p1", arg: 4, scope: !534, file: !1, line: 81, type: !408)
!541 = !DILocalVariable(name: "p2", arg: 5, scope: !534, file: !1, line: 81, type: !408)
!542 = !DILocalVariable(name: "result", scope: !534, file: !1, line: 82, type: !339)
!543 = !DILocalVariable(name: "o2", scope: !544, file: !1, line: 83, type: !408)
!544 = distinct !DILexicalBlock(scope: !534, file: !1, line: 83, column: 3)
!545 = !DILocalVariable(name: "o1", scope: !544, file: !1, line: 83, type: !134)
!546 = !DILocalVariable(name: "o2", scope: !547, file: !1, line: 84, type: !408)
!547 = distinct !DILexicalBlock(scope: !534, file: !1, line: 84, column: 3)
!548 = !DILocalVariable(name: "o1", scope: !547, file: !1, line: 84, type: !134)
!549 = !DILocalVariable(name: "o2", scope: !550, file: !1, line: 85, type: !408)
!550 = distinct !DILexicalBlock(scope: !534, file: !1, line: 85, column: 3)
!551 = !DILocalVariable(name: "o1", scope: !550, file: !1, line: 85, type: !134)
!552 = !DILocalVariable(name: "o2", scope: !553, file: !1, line: 91, type: !408)
!553 = distinct !DILexicalBlock(scope: !534, file: !1, line: 91, column: 3)
!554 = !DILocalVariable(name: "o1", scope: !553, file: !1, line: 91, type: !134)
!555 = !DILocation(line: 80, column: 35, scope: !534, inlinedAt: !556)
!556 = distinct !DILocation(line: 125, column: 7, scope: !557)
!557 = distinct !DILexicalBlock(scope: !524, file: !1, line: 124, column: 27)
!558 = !DILocation(line: 80, column: 44, scope: !534, inlinedAt: !556)
!559 = !DILocation(line: 80, column: 63, scope: !534, inlinedAt: !556)
!560 = !DILocation(line: 81, column: 39, scope: !534, inlinedAt: !556)
!561 = !DILocation(line: 81, column: 57, scope: !534, inlinedAt: !556)
!562 = !DILocation(line: 82, column: 22, scope: !534, inlinedAt: !556)
!563 = !{!516, !513, i64 64}
!564 = !DILocation(line: 82, column: 13, scope: !534, inlinedAt: !556)
!565 = !DILocation(line: 83, column: 3, scope: !544, inlinedAt: !556)
!566 = !{!516, !513, i64 16}
!567 = !DILocation(line: 84, column: 3, scope: !547, inlinedAt: !556)
!568 = !DILocation(line: 85, column: 3, scope: !550, inlinedAt: !556)
!569 = !DILocation(line: 86, column: 3, scope: !570, inlinedAt: !556)
!570 = distinct !DILexicalBlock(scope: !534, file: !1, line: 86, column: 3)
!571 = !{!516, !513, i64 56}
!572 = !DILocation(line: 86, column: 3, scope: !534, inlinedAt: !556)
!573 = !DILocation(line: 87, column: 10, scope: !534, inlinedAt: !556)
!574 = !DILocation(line: 88, column: 3, scope: !534, inlinedAt: !556)
!575 = !DILocation(line: 89, column: 9, scope: !534, inlinedAt: !556)
!576 = !DILocation(line: 90, column: 9, scope: !534, inlinedAt: !556)
!577 = !DILocation(line: 91, column: 3, scope: !553, inlinedAt: !556)
!578 = !DILocation(line: 126, column: 7, scope: !557)
!579 = !DILocation(line: 130, column: 3, scope: !469)
!580 = !DILocation(line: 131, column: 1, scope: !469)
!581 = distinct !DISubprogram(name: "luaV_settable", scope: !1, file: !1, line: 134, type: !470, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !582)
!582 = !{!583, !584, !585, !586, !587, !588, !589, !593, !596, !597, !601, !602, !604}
!583 = !DILocalVariable(name: "L", arg: 1, scope: !581, file: !1, line: 134, type: !192)
!584 = !DILocalVariable(name: "t", arg: 2, scope: !581, file: !1, line: 134, type: !408)
!585 = !DILocalVariable(name: "key", arg: 3, scope: !581, file: !1, line: 134, type: !134)
!586 = !DILocalVariable(name: "val", arg: 4, scope: !581, file: !1, line: 134, type: !201)
!587 = !DILocalVariable(name: "loop", scope: !581, file: !1, line: 135, type: !148)
!588 = !DILocalVariable(name: "temp", scope: !581, file: !1, line: 136, type: !135)
!589 = !DILocalVariable(name: "tm", scope: !590, file: !1, line: 138, type: !408)
!590 = distinct !DILexicalBlock(scope: !591, file: !1, line: 137, column: 45)
!591 = distinct !DILexicalBlock(scope: !592, file: !1, line: 137, column: 3)
!592 = distinct !DILexicalBlock(scope: !581, file: !1, line: 137, column: 3)
!593 = !DILocalVariable(name: "h", scope: !594, file: !1, line: 140, type: !485)
!594 = distinct !DILexicalBlock(scope: !595, file: !1, line: 139, column: 23)
!595 = distinct !DILexicalBlock(scope: !590, file: !1, line: 139, column: 9)
!596 = !DILocalVariable(name: "oldval", scope: !594, file: !1, line: 141, type: !134)
!597 = !DILocalVariable(name: "o2", scope: !598, file: !1, line: 144, type: !408)
!598 = distinct !DILexicalBlock(scope: !599, file: !1, line: 144, column: 9)
!599 = distinct !DILexicalBlock(scope: !600, file: !1, line: 143, column: 64)
!600 = distinct !DILexicalBlock(scope: !594, file: !1, line: 142, column: 11)
!601 = !DILocalVariable(name: "o1", scope: !598, file: !1, line: 144, type: !134)
!602 = !DILocalVariable(name: "o2", scope: !603, file: !1, line: 158, type: !408)
!603 = distinct !DILexicalBlock(scope: !590, file: !1, line: 158, column: 5)
!604 = !DILocalVariable(name: "o1", scope: !603, file: !1, line: 158, type: !134)
!605 = !DILocation(line: 134, column: 32, scope: !581)
!606 = !DILocation(line: 134, column: 49, scope: !581)
!607 = !DILocation(line: 134, column: 60, scope: !581)
!608 = !DILocation(line: 134, column: 71, scope: !581)
!609 = !DILocation(line: 136, column: 3, scope: !581)
!610 = !DILocation(line: 135, column: 7, scope: !581)
!611 = !DILocation(line: 139, column: 9, scope: !595)
!612 = !DILocation(line: 137, column: 3, scope: !592)
!613 = !DILocation(line: 139, column: 9, scope: !590)
!614 = !DILocation(line: 140, column: 18, scope: !594)
!615 = !DILocation(line: 140, column: 14, scope: !594)
!616 = !DILocation(line: 141, column: 24, scope: !594)
!617 = !DILocation(line: 141, column: 15, scope: !594)
!618 = !DILocation(line: 142, column: 12, scope: !600)
!619 = !DILocation(line: 142, column: 28, scope: !600)
!620 = !DILocation(line: 143, column: 17, scope: !600)
!621 = !DILocation(line: 138, column: 19, scope: !590)
!622 = !DILocation(line: 143, column: 55, scope: !600)
!623 = !DILocation(line: 142, column: 11, scope: !594)
!624 = !DILocation(line: 153, column: 9, scope: !625)
!625 = distinct !DILexicalBlock(scope: !590, file: !1, line: 153, column: 9)
!626 = !DILocation(line: 144, column: 9, scope: !598)
!627 = !DILocation(line: 145, column: 12, scope: !599)
!628 = !DILocation(line: 145, column: 18, scope: !599)
!629 = !DILocation(line: 146, column: 9, scope: !630)
!630 = distinct !DILexicalBlock(scope: !631, file: !1, line: 146, column: 9)
!631 = distinct !DILexicalBlock(scope: !599, file: !1, line: 146, column: 9)
!632 = !DILocation(line: 146, column: 9, scope: !631)
!633 = !DILocation(line: 151, column: 14, scope: !634)
!634 = distinct !DILexicalBlock(scope: !595, file: !1, line: 151, column: 14)
!635 = !DILocation(line: 151, column: 14, scope: !595)
!636 = !DILocation(line: 152, column: 7, scope: !634)
!637 = !DILocation(line: 0, scope: !634)
!638 = !DILocation(line: 153, column: 9, scope: !590)
!639 = !DILocalVariable(name: "L", arg: 1, scope: !640, file: !1, line: 96, type: !192)
!640 = distinct !DISubprogram(name: "callTM", scope: !1, file: !1, line: 96, type: !641, isLocal: true, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !643)
!641 = !DISubroutineType(types: !642)
!642 = !{null, !192, !408, !408, !408, !408}
!643 = !{!639, !644, !645, !646, !647, !648, !650, !651, !653, !654, !656, !657, !659}
!644 = !DILocalVariable(name: "f", arg: 2, scope: !640, file: !1, line: 96, type: !408)
!645 = !DILocalVariable(name: "p1", arg: 3, scope: !640, file: !1, line: 96, type: !408)
!646 = !DILocalVariable(name: "p2", arg: 4, scope: !640, file: !1, line: 97, type: !408)
!647 = !DILocalVariable(name: "p3", arg: 5, scope: !640, file: !1, line: 97, type: !408)
!648 = !DILocalVariable(name: "o2", scope: !649, file: !1, line: 98, type: !408)
!649 = distinct !DILexicalBlock(scope: !640, file: !1, line: 98, column: 3)
!650 = !DILocalVariable(name: "o1", scope: !649, file: !1, line: 98, type: !134)
!651 = !DILocalVariable(name: "o2", scope: !652, file: !1, line: 99, type: !408)
!652 = distinct !DILexicalBlock(scope: !640, file: !1, line: 99, column: 3)
!653 = !DILocalVariable(name: "o1", scope: !652, file: !1, line: 99, type: !134)
!654 = !DILocalVariable(name: "o2", scope: !655, file: !1, line: 100, type: !408)
!655 = distinct !DILexicalBlock(scope: !640, file: !1, line: 100, column: 3)
!656 = !DILocalVariable(name: "o1", scope: !655, file: !1, line: 100, type: !134)
!657 = !DILocalVariable(name: "o2", scope: !658, file: !1, line: 101, type: !408)
!658 = distinct !DILexicalBlock(scope: !640, file: !1, line: 101, column: 3)
!659 = !DILocalVariable(name: "o1", scope: !658, file: !1, line: 101, type: !134)
!660 = !DILocation(line: 96, column: 32, scope: !640, inlinedAt: !661)
!661 = distinct !DILocation(line: 154, column: 7, scope: !662)
!662 = distinct !DILexicalBlock(scope: !625, file: !1, line: 153, column: 27)
!663 = !DILocation(line: 96, column: 49, scope: !640, inlinedAt: !661)
!664 = !DILocation(line: 96, column: 66, scope: !640, inlinedAt: !661)
!665 = !DILocation(line: 97, column: 35, scope: !640, inlinedAt: !661)
!666 = !DILocation(line: 97, column: 53, scope: !640, inlinedAt: !661)
!667 = !DILocation(line: 98, column: 3, scope: !649, inlinedAt: !661)
!668 = !DILocation(line: 99, column: 3, scope: !652, inlinedAt: !661)
!669 = !DILocation(line: 100, column: 3, scope: !655, inlinedAt: !661)
!670 = !DILocation(line: 101, column: 3, scope: !658, inlinedAt: !661)
!671 = !DILocation(line: 102, column: 3, scope: !672, inlinedAt: !661)
!672 = distinct !DILexicalBlock(scope: !640, file: !1, line: 102, column: 3)
!673 = !DILocation(line: 102, column: 3, scope: !640, inlinedAt: !661)
!674 = !DILocation(line: 103, column: 10, scope: !640, inlinedAt: !661)
!675 = !DILocation(line: 104, column: 3, scope: !640, inlinedAt: !661)
!676 = !DILocation(line: 155, column: 7, scope: !662)
!677 = !DILocation(line: 158, column: 5, scope: !603)
!678 = !DILocation(line: 137, column: 41, scope: !591)
!679 = !DILocation(line: 137, column: 23, scope: !591)
!680 = distinct !{!680, !612, !681}
!681 = !DILocation(line: 160, column: 3, scope: !592)
!682 = !DILocation(line: 161, column: 3, scope: !581)
!683 = !DILocation(line: 162, column: 1, scope: !581)
!684 = distinct !DISubprogram(name: "luaV_lessthan", scope: !1, file: !1, line: 225, type: !685, isLocal: false, isDefinition: true, scopeLine: 225, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !687)
!685 = !DISubroutineType(types: !686)
!686 = !{!148, !192, !408, !408}
!687 = !{!688, !689, !690, !691}
!688 = !DILocalVariable(name: "L", arg: 1, scope: !684, file: !1, line: 225, type: !192)
!689 = !DILocalVariable(name: "l", arg: 2, scope: !684, file: !1, line: 225, type: !408)
!690 = !DILocalVariable(name: "r", arg: 3, scope: !684, file: !1, line: 225, type: !408)
!691 = !DILocalVariable(name: "res", scope: !684, file: !1, line: 226, type: !148)
!692 = !DILocation(line: 225, column: 31, scope: !684)
!693 = !DILocation(line: 225, column: 48, scope: !684)
!694 = !DILocation(line: 225, column: 65, scope: !684)
!695 = !DILocation(line: 227, column: 7, scope: !696)
!696 = distinct !DILexicalBlock(scope: !684, file: !1, line: 227, column: 7)
!697 = !DILocation(line: 227, column: 19, scope: !696)
!698 = !DILocation(line: 227, column: 16, scope: !696)
!699 = !DILocation(line: 227, column: 7, scope: !684)
!700 = !DILocation(line: 228, column: 12, scope: !696)
!701 = !DILocation(line: 228, column: 5, scope: !696)
!702 = !DILocation(line: 229, column: 12, scope: !696)
!703 = !DILocation(line: 230, column: 12, scope: !704)
!704 = distinct !DILexicalBlock(scope: !696, file: !1, line: 229, column: 12)
!705 = !DILocation(line: 230, column: 5, scope: !704)
!706 = !DILocation(line: 232, column: 21, scope: !707)
!707 = distinct !DILexicalBlock(scope: !704, file: !1, line: 231, column: 12)
!708 = !DILocation(line: 232, column: 36, scope: !707)
!709 = !DILocalVariable(name: "ls", arg: 1, scope: !710, file: !1, line: 203, type: !713)
!710 = distinct !DISubprogram(name: "l_strcmp", scope: !1, file: !1, line: 203, type: !711, isLocal: true, isDefinition: true, scopeLine: 203, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !715)
!711 = !DISubroutineType(types: !712)
!712 = !{!148, !713, !713}
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !277)
!715 = !{!709, !716, !717, !718, !719, !720, !721, !725}
!716 = !DILocalVariable(name: "rs", arg: 2, scope: !710, file: !1, line: 203, type: !713)
!717 = !DILocalVariable(name: "l", scope: !710, file: !1, line: 204, type: !67)
!718 = !DILocalVariable(name: "ll", scope: !710, file: !1, line: 205, type: !108)
!719 = !DILocalVariable(name: "r", scope: !710, file: !1, line: 206, type: !67)
!720 = !DILocalVariable(name: "lr", scope: !710, file: !1, line: 207, type: !108)
!721 = !DILocalVariable(name: "temp", scope: !722, file: !1, line: 209, type: !148)
!722 = distinct !DILexicalBlock(scope: !723, file: !1, line: 208, column: 12)
!723 = distinct !DILexicalBlock(scope: !724, file: !1, line: 208, column: 3)
!724 = distinct !DILexicalBlock(scope: !710, file: !1, line: 208, column: 3)
!725 = !DILocalVariable(name: "len", scope: !726, file: !1, line: 212, type: !108)
!726 = distinct !DILexicalBlock(scope: !727, file: !1, line: 211, column: 10)
!727 = distinct !DILexicalBlock(scope: !722, file: !1, line: 210, column: 9)
!728 = !DILocation(line: 203, column: 37, scope: !710, inlinedAt: !729)
!729 = distinct !DILocation(line: 232, column: 12, scope: !707)
!730 = !DILocation(line: 203, column: 56, scope: !710, inlinedAt: !729)
!731 = !DILocation(line: 204, column: 19, scope: !710, inlinedAt: !729)
!732 = !DILocation(line: 204, column: 15, scope: !710, inlinedAt: !729)
!733 = !DILocation(line: 205, column: 23, scope: !710, inlinedAt: !729)
!734 = !DILocation(line: 205, column: 10, scope: !710, inlinedAt: !729)
!735 = !DILocation(line: 206, column: 19, scope: !710, inlinedAt: !729)
!736 = !DILocation(line: 206, column: 15, scope: !710, inlinedAt: !729)
!737 = !DILocation(line: 207, column: 23, scope: !710, inlinedAt: !729)
!738 = !DILocation(line: 207, column: 10, scope: !710, inlinedAt: !729)
!739 = !DILocation(line: 209, column: 16, scope: !722, inlinedAt: !729)
!740 = !DILocation(line: 209, column: 9, scope: !722, inlinedAt: !729)
!741 = !DILocation(line: 210, column: 14, scope: !727, inlinedAt: !729)
!742 = !DILocation(line: 210, column: 9, scope: !722, inlinedAt: !729)
!743 = !DILocation(line: 212, column: 20, scope: !726, inlinedAt: !729)
!744 = !DILocation(line: 212, column: 14, scope: !726, inlinedAt: !729)
!745 = !DILocation(line: 213, column: 15, scope: !746, inlinedAt: !729)
!746 = distinct !DILexicalBlock(scope: !726, file: !1, line: 213, column: 11)
!747 = !DILocation(line: 213, column: 11, scope: !726, inlinedAt: !729)
!748 = !DILocation(line: 0, scope: !749, inlinedAt: !729)
!749 = distinct !DILexicalBlock(scope: !746, file: !1, line: 215, column: 16)
!750 = !DILocation(line: 215, column: 16, scope: !746, inlinedAt: !729)
!751 = !DILocation(line: 218, column: 10, scope: !726, inlinedAt: !729)
!752 = !DILocation(line: 219, column: 9, scope: !726, inlinedAt: !729)
!753 = !DILocation(line: 219, column: 20, scope: !726, inlinedAt: !729)
!754 = !DILocation(line: 219, column: 30, scope: !726, inlinedAt: !729)
!755 = !DILocation(line: 219, column: 41, scope: !726, inlinedAt: !729)
!756 = !DILocation(line: 232, column: 51, scope: !707)
!757 = !DILocation(line: 232, column: 5, scope: !707)
!758 = !DILocalVariable(name: "L", arg: 1, scope: !759, file: !1, line: 190, type: !192)
!759 = distinct !DISubprogram(name: "call_orderTM", scope: !1, file: !1, line: 190, type: !760, isLocal: true, isDefinition: true, scopeLine: 191, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !763)
!760 = !DISubroutineType(types: !761)
!761 = !{!148, !192, !408, !408, !762}
!762 = !DIDerivedType(tag: DW_TAG_typedef, name: "TMS", file: !4, line: 37, baseType: !3)
!763 = !{!758, !764, !765, !766, !767, !768}
!764 = !DILocalVariable(name: "p1", arg: 2, scope: !759, file: !1, line: 190, type: !408)
!765 = !DILocalVariable(name: "p2", arg: 3, scope: !759, file: !1, line: 190, type: !408)
!766 = !DILocalVariable(name: "event", arg: 4, scope: !759, file: !1, line: 191, type: !762)
!767 = !DILocalVariable(name: "tm1", scope: !759, file: !1, line: 192, type: !408)
!768 = !DILocalVariable(name: "tm2", scope: !759, file: !1, line: 193, type: !408)
!769 = !DILocation(line: 190, column: 37, scope: !759, inlinedAt: !770)
!770 = distinct !DILocation(line: 233, column: 19, scope: !771)
!771 = distinct !DILexicalBlock(scope: !707, file: !1, line: 233, column: 12)
!772 = !DILocation(line: 190, column: 54, scope: !759, inlinedAt: !770)
!773 = !DILocation(line: 190, column: 72, scope: !759, inlinedAt: !770)
!774 = !DILocation(line: 191, column: 30, scope: !759, inlinedAt: !770)
!775 = !DILocation(line: 192, column: 23, scope: !759, inlinedAt: !770)
!776 = !DILocation(line: 192, column: 17, scope: !759, inlinedAt: !770)
!777 = !DILocation(line: 194, column: 7, scope: !778, inlinedAt: !770)
!778 = distinct !DILexicalBlock(scope: !759, file: !1, line: 194, column: 7)
!779 = !DILocation(line: 194, column: 7, scope: !759, inlinedAt: !770)
!780 = !DILocation(line: 195, column: 9, scope: !759, inlinedAt: !770)
!781 = !DILocation(line: 193, column: 17, scope: !759, inlinedAt: !770)
!782 = !DILocation(line: 196, column: 8, scope: !783, inlinedAt: !770)
!783 = distinct !DILexicalBlock(scope: !759, file: !1, line: 196, column: 7)
!784 = !DILocation(line: 196, column: 7, scope: !759, inlinedAt: !770)
!785 = !DILocation(line: 198, column: 19, scope: !759, inlinedAt: !770)
!786 = !DILocation(line: 80, column: 35, scope: !534, inlinedAt: !787)
!787 = distinct !DILocation(line: 198, column: 3, scope: !759, inlinedAt: !770)
!788 = !DILocation(line: 80, column: 44, scope: !534, inlinedAt: !787)
!789 = !DILocation(line: 80, column: 63, scope: !534, inlinedAt: !787)
!790 = !DILocation(line: 81, column: 39, scope: !534, inlinedAt: !787)
!791 = !DILocation(line: 81, column: 57, scope: !534, inlinedAt: !787)
!792 = !DILocation(line: 82, column: 22, scope: !534, inlinedAt: !787)
!793 = !DILocation(line: 82, column: 13, scope: !534, inlinedAt: !787)
!794 = !DILocation(line: 83, column: 3, scope: !544, inlinedAt: !787)
!795 = !DILocation(line: 84, column: 3, scope: !547, inlinedAt: !787)
!796 = !DILocation(line: 85, column: 3, scope: !550, inlinedAt: !787)
!797 = !DILocation(line: 86, column: 3, scope: !570, inlinedAt: !787)
!798 = !DILocation(line: 86, column: 3, scope: !534, inlinedAt: !787)
!799 = !DILocation(line: 87, column: 10, scope: !534, inlinedAt: !787)
!800 = !DILocation(line: 88, column: 3, scope: !534, inlinedAt: !787)
!801 = !DILocation(line: 89, column: 9, scope: !534, inlinedAt: !787)
!802 = !DILocation(line: 90, column: 9, scope: !534, inlinedAt: !787)
!803 = !DILocation(line: 91, column: 3, scope: !553, inlinedAt: !787)
!804 = !DILocation(line: 199, column: 11, scope: !759, inlinedAt: !770)
!805 = !DILocation(line: 199, column: 3, scope: !759, inlinedAt: !770)
!806 = !DILocation(line: 226, column: 7, scope: !684)
!807 = !DILocation(line: 235, column: 10, scope: !684)
!808 = !DILocation(line: 235, column: 3, scope: !684)
!809 = !DILocation(line: 0, scope: !684)
!810 = !DILocation(line: 236, column: 1, scope: !684)
!811 = distinct !DISubprogram(name: "luaV_equalval", scope: !1, file: !1, line: 255, type: !685, isLocal: false, isDefinition: true, scopeLine: 255, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !812)
!812 = !{!813, !814, !815, !816}
!813 = !DILocalVariable(name: "L", arg: 1, scope: !811, file: !1, line: 255, type: !192)
!814 = !DILocalVariable(name: "t1", arg: 2, scope: !811, file: !1, line: 255, type: !408)
!815 = !DILocalVariable(name: "t2", arg: 3, scope: !811, file: !1, line: 255, type: !408)
!816 = !DILocalVariable(name: "tm", scope: !811, file: !1, line: 256, type: !408)
!817 = !DILocation(line: 255, column: 31, scope: !811)
!818 = !DILocation(line: 255, column: 48, scope: !811)
!819 = !DILocation(line: 255, column: 66, scope: !811)
!820 = !DILocation(line: 258, column: 11, scope: !811)
!821 = !DILocation(line: 258, column: 3, scope: !811)
!822 = !DILocation(line: 260, column: 30, scope: !823)
!823 = distinct !DILexicalBlock(scope: !811, file: !1, line: 258, column: 22)
!824 = !DILocation(line: 260, column: 23, scope: !823)
!825 = !DILocation(line: 261, column: 31, scope: !823)
!826 = !DILocation(line: 261, column: 45, scope: !823)
!827 = !DILocation(line: 261, column: 42, scope: !823)
!828 = !DILocation(line: 261, column: 24, scope: !823)
!829 = !DILocation(line: 262, column: 37, scope: !823)
!830 = !DILocation(line: 262, column: 51, scope: !823)
!831 = !DILocation(line: 262, column: 48, scope: !823)
!832 = !DILocation(line: 262, column: 30, scope: !823)
!833 = !DILocation(line: 264, column: 11, scope: !834)
!834 = distinct !DILexicalBlock(scope: !835, file: !1, line: 264, column: 11)
!835 = distinct !DILexicalBlock(scope: !823, file: !1, line: 263, column: 25)
!836 = !DILocation(line: 264, column: 25, scope: !834)
!837 = !DILocation(line: 264, column: 22, scope: !834)
!838 = !DILocation(line: 264, column: 11, scope: !835)
!839 = !DILocation(line: 265, column: 38, scope: !835)
!840 = !DILocation(line: 265, column: 61, scope: !835)
!841 = !DILocalVariable(name: "L", arg: 1, scope: !842, file: !1, line: 176, type: !192)
!842 = distinct !DISubprogram(name: "get_compTM", scope: !1, file: !1, line: 176, type: !843, isLocal: true, isDefinition: true, scopeLine: 177, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !845)
!843 = !DISubroutineType(types: !844)
!844 = !{!408, !192, !485, !485, !762}
!845 = !{!841, !846, !847, !848, !849, !850}
!846 = !DILocalVariable(name: "mt1", arg: 2, scope: !842, file: !1, line: 176, type: !485)
!847 = !DILocalVariable(name: "mt2", arg: 3, scope: !842, file: !1, line: 176, type: !485)
!848 = !DILocalVariable(name: "event", arg: 4, scope: !842, file: !1, line: 177, type: !762)
!849 = !DILocalVariable(name: "tm1", scope: !842, file: !1, line: 178, type: !408)
!850 = !DILocalVariable(name: "tm2", scope: !842, file: !1, line: 179, type: !408)
!851 = !DILocation(line: 176, column: 45, scope: !842, inlinedAt: !852)
!852 = distinct !DILocation(line: 265, column: 12, scope: !835)
!853 = !DILocation(line: 176, column: 55, scope: !842, inlinedAt: !852)
!854 = !DILocation(line: 176, column: 67, scope: !842, inlinedAt: !852)
!855 = !DILocation(line: 177, column: 39, scope: !842, inlinedAt: !852)
!856 = !DILocation(line: 178, column: 23, scope: !842, inlinedAt: !852)
!857 = !DILocation(line: 178, column: 17, scope: !842, inlinedAt: !852)
!858 = !DILocation(line: 180, column: 11, scope: !859, inlinedAt: !852)
!859 = distinct !DILexicalBlock(scope: !842, file: !1, line: 180, column: 7)
!860 = !DILocation(line: 180, column: 7, scope: !842, inlinedAt: !852)
!861 = !DILocation(line: 181, column: 11, scope: !862, inlinedAt: !852)
!862 = distinct !DILexicalBlock(scope: !842, file: !1, line: 181, column: 7)
!863 = !DILocation(line: 181, column: 7, scope: !842, inlinedAt: !852)
!864 = !DILocation(line: 182, column: 9, scope: !842, inlinedAt: !852)
!865 = !DILocation(line: 179, column: 17, scope: !842, inlinedAt: !852)
!866 = !DILocation(line: 183, column: 11, scope: !867, inlinedAt: !852)
!867 = distinct !DILexicalBlock(scope: !842, file: !1, line: 183, column: 7)
!868 = !DILocation(line: 183, column: 7, scope: !842, inlinedAt: !852)
!869 = !DILocation(line: 184, column: 7, scope: !870, inlinedAt: !852)
!870 = distinct !DILexicalBlock(scope: !842, file: !1, line: 184, column: 7)
!871 = !DILocation(line: 270, column: 11, scope: !872)
!872 = distinct !DILexicalBlock(scope: !873, file: !1, line: 270, column: 11)
!873 = distinct !DILexicalBlock(scope: !823, file: !1, line: 269, column: 22)
!874 = !DILocation(line: 270, column: 25, scope: !872)
!875 = !DILocation(line: 270, column: 22, scope: !872)
!876 = !DILocation(line: 270, column: 11, scope: !873)
!877 = !DILocation(line: 271, column: 38, scope: !873)
!878 = !DILocation(line: 271, column: 61, scope: !873)
!879 = !DILocation(line: 176, column: 45, scope: !842, inlinedAt: !880)
!880 = distinct !DILocation(line: 271, column: 12, scope: !873)
!881 = !DILocation(line: 176, column: 55, scope: !842, inlinedAt: !880)
!882 = !DILocation(line: 176, column: 67, scope: !842, inlinedAt: !880)
!883 = !DILocation(line: 177, column: 39, scope: !842, inlinedAt: !880)
!884 = !DILocation(line: 178, column: 23, scope: !842, inlinedAt: !880)
!885 = !DILocation(line: 178, column: 17, scope: !842, inlinedAt: !880)
!886 = !DILocation(line: 180, column: 11, scope: !859, inlinedAt: !880)
!887 = !DILocation(line: 180, column: 7, scope: !842, inlinedAt: !880)
!888 = !DILocation(line: 181, column: 11, scope: !862, inlinedAt: !880)
!889 = !DILocation(line: 181, column: 7, scope: !842, inlinedAt: !880)
!890 = !DILocation(line: 182, column: 9, scope: !842, inlinedAt: !880)
!891 = !DILocation(line: 179, column: 17, scope: !842, inlinedAt: !880)
!892 = !DILocation(line: 183, column: 11, scope: !867, inlinedAt: !880)
!893 = !DILocation(line: 183, column: 7, scope: !842, inlinedAt: !880)
!894 = !DILocation(line: 184, column: 7, scope: !870, inlinedAt: !880)
!895 = !DILocation(line: 274, column: 21, scope: !823)
!896 = !DILocation(line: 274, column: 36, scope: !823)
!897 = !DILocation(line: 274, column: 33, scope: !823)
!898 = !DILocation(line: 274, column: 14, scope: !823)
!899 = !DILocation(line: 0, scope: !835)
!900 = !DILocation(line: 256, column: 17, scope: !811)
!901 = !DILocation(line: 277, column: 19, scope: !811)
!902 = !DILocation(line: 80, column: 35, scope: !534, inlinedAt: !903)
!903 = distinct !DILocation(line: 277, column: 3, scope: !811)
!904 = !DILocation(line: 80, column: 44, scope: !534, inlinedAt: !903)
!905 = !DILocation(line: 80, column: 63, scope: !534, inlinedAt: !903)
!906 = !DILocation(line: 81, column: 39, scope: !534, inlinedAt: !903)
!907 = !DILocation(line: 81, column: 57, scope: !534, inlinedAt: !903)
!908 = !DILocation(line: 82, column: 22, scope: !534, inlinedAt: !903)
!909 = !DILocation(line: 82, column: 13, scope: !534, inlinedAt: !903)
!910 = !DILocation(line: 83, column: 3, scope: !544, inlinedAt: !903)
!911 = !DILocation(line: 84, column: 3, scope: !547, inlinedAt: !903)
!912 = !DILocation(line: 85, column: 3, scope: !550, inlinedAt: !903)
!913 = !DILocation(line: 86, column: 3, scope: !570, inlinedAt: !903)
!914 = !DILocation(line: 86, column: 3, scope: !534, inlinedAt: !903)
!915 = !DILocation(line: 87, column: 10, scope: !534, inlinedAt: !903)
!916 = !DILocation(line: 88, column: 3, scope: !534, inlinedAt: !903)
!917 = !DILocation(line: 89, column: 9, scope: !534, inlinedAt: !903)
!918 = !DILocation(line: 90, column: 9, scope: !534, inlinedAt: !903)
!919 = !DILocation(line: 91, column: 3, scope: !553, inlinedAt: !903)
!920 = !DILocation(line: 278, column: 11, scope: !811)
!921 = !DILocation(line: 278, column: 3, scope: !811)
!922 = !DILocation(line: 0, scope: !823)
!923 = !DILocation(line: 279, column: 1, scope: !811)
!924 = distinct !DISubprogram(name: "luaV_concat", scope: !1, file: !1, line: 282, type: !925, isLocal: false, isDefinition: true, scopeLine: 282, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !927)
!925 = !DISubroutineType(types: !926)
!926 = !{null, !192, !148, !148}
!927 = !{!928, !929, !930, !931, !933, !934, !938, !939, !940, !944, !948}
!928 = !DILocalVariable(name: "L", arg: 1, scope: !924, file: !1, line: 282, type: !192)
!929 = !DILocalVariable(name: "total", arg: 2, scope: !924, file: !1, line: 282, type: !148)
!930 = !DILocalVariable(name: "last", arg: 3, scope: !924, file: !1, line: 282, type: !148)
!931 = !DILocalVariable(name: "top", scope: !932, file: !1, line: 284, type: !201)
!932 = distinct !DILexicalBlock(scope: !924, file: !1, line: 283, column: 6)
!933 = !DILocalVariable(name: "n", scope: !932, file: !1, line: 285, type: !148)
!934 = !DILocalVariable(name: "tl", scope: !935, file: !1, line: 293, type: !108)
!935 = distinct !DILexicalBlock(scope: !936, file: !1, line: 291, column: 10)
!936 = distinct !DILexicalBlock(scope: !937, file: !1, line: 289, column: 16)
!937 = distinct !DILexicalBlock(scope: !932, file: !1, line: 286, column: 9)
!938 = !DILocalVariable(name: "buffer", scope: !935, file: !1, line: 294, type: !238)
!939 = !DILocalVariable(name: "i", scope: !935, file: !1, line: 295, type: !148)
!940 = !DILocalVariable(name: "l", scope: !941, file: !1, line: 298, type: !108)
!941 = distinct !DILexicalBlock(scope: !942, file: !1, line: 297, column: 59)
!942 = distinct !DILexicalBlock(scope: !943, file: !1, line: 297, column: 7)
!943 = distinct !DILexicalBlock(scope: !935, file: !1, line: 297, column: 7)
!944 = !DILocalVariable(name: "l", scope: !945, file: !1, line: 305, type: !108)
!945 = distinct !DILexicalBlock(scope: !946, file: !1, line: 304, column: 27)
!946 = distinct !DILexicalBlock(scope: !947, file: !1, line: 304, column: 7)
!947 = distinct !DILexicalBlock(scope: !935, file: !1, line: 304, column: 7)
!948 = !DILocalVariable(name: "i_o", scope: !949, file: !1, line: 309, type: !134)
!949 = distinct !DILexicalBlock(scope: !935, file: !1, line: 309, column: 7)
!950 = !DILocation(line: 51, column: 10, scope: !448, inlinedAt: !951)
!951 = distinct !DILocation(line: 297, column: 32, scope: !942)
!952 = !DILocation(line: 51, column: 10, scope: !448, inlinedAt: !953)
!953 = distinct !DILocation(line: 290, column: 13, scope: !936)
!954 = !DILocation(line: 51, column: 10, scope: !448, inlinedAt: !955)
!955 = distinct !DILocation(line: 286, column: 55, scope: !937)
!956 = !DILocation(line: 282, column: 30, scope: !924)
!957 = !DILocation(line: 282, column: 37, scope: !924)
!958 = !DILocation(line: 282, column: 48, scope: !924)
!959 = !DILocation(line: 283, column: 3, scope: !924)
!960 = !DILocation(line: 284, column: 20, scope: !932)
!961 = !{!516, !513, i64 24}
!962 = !DILocation(line: 284, column: 25, scope: !932)
!963 = !DILocation(line: 284, column: 32, scope: !932)
!964 = !DILocation(line: 284, column: 11, scope: !932)
!965 = !DILocation(line: 285, column: 9, scope: !932)
!966 = !DILocation(line: 286, column: 11, scope: !937)
!967 = !DILocation(line: 286, column: 29, scope: !937)
!968 = !DILocation(line: 0, scope: !969)
!969 = distinct !DILexicalBlock(scope: !970, file: !1, line: 287, column: 11)
!970 = distinct !DILexicalBlock(scope: !937, file: !1, line: 286, column: 75)
!971 = !DILocation(line: 286, column: 55, scope: !937)
!972 = !DILocation(line: 51, column: 5, scope: !448, inlinedAt: !955)
!973 = !DILocation(line: 52, column: 20, scope: !448, inlinedAt: !955)
!974 = !DILocation(line: 52, column: 16, scope: !448, inlinedAt: !955)
!975 = !DILocation(line: 53, column: 5, scope: !448, inlinedAt: !955)
!976 = !DILocation(line: 54, column: 5, scope: !455, inlinedAt: !955)
!977 = !DILocation(line: 56, column: 3, scope: !449, inlinedAt: !955)
!978 = !DILocation(line: 286, column: 9, scope: !932)
!979 = !DILocalVariable(name: "L", arg: 1, scope: !980, file: !1, line: 165, type: !192)
!980 = distinct !DISubprogram(name: "call_binTM", scope: !1, file: !1, line: 165, type: !981, isLocal: true, isDefinition: true, scopeLine: 166, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !983)
!981 = !DISubroutineType(types: !982)
!982 = !{!148, !192, !408, !408, !201, !762}
!983 = !{!979, !984, !985, !986, !987, !988}
!984 = !DILocalVariable(name: "p1", arg: 2, scope: !980, file: !1, line: 165, type: !408)
!985 = !DILocalVariable(name: "p2", arg: 3, scope: !980, file: !1, line: 165, type: !408)
!986 = !DILocalVariable(name: "res", arg: 4, scope: !980, file: !1, line: 166, type: !201)
!987 = !DILocalVariable(name: "event", arg: 5, scope: !980, file: !1, line: 166, type: !762)
!988 = !DILocalVariable(name: "tm", scope: !980, file: !1, line: 167, type: !408)
!989 = !DILocation(line: 165, column: 35, scope: !980, inlinedAt: !990)
!990 = distinct !DILocation(line: 287, column: 12, scope: !969)
!991 = !DILocation(line: 165, column: 52, scope: !980, inlinedAt: !990)
!992 = !DILocation(line: 165, column: 70, scope: !980, inlinedAt: !990)
!993 = !DILocation(line: 166, column: 30, scope: !980, inlinedAt: !990)
!994 = !DILocation(line: 166, column: 39, scope: !980, inlinedAt: !990)
!995 = !DILocation(line: 167, column: 22, scope: !980, inlinedAt: !990)
!996 = !DILocation(line: 167, column: 17, scope: !980, inlinedAt: !990)
!997 = !DILocation(line: 168, column: 7, scope: !998, inlinedAt: !990)
!998 = distinct !DILexicalBlock(scope: !980, file: !1, line: 168, column: 7)
!999 = !DILocation(line: 168, column: 7, scope: !980, inlinedAt: !990)
!1000 = !DILocation(line: 169, column: 10, scope: !998, inlinedAt: !990)
!1001 = !DILocation(line: 170, column: 7, scope: !1002, inlinedAt: !990)
!1002 = distinct !DILexicalBlock(scope: !980, file: !1, line: 170, column: 7)
!1003 = !DILocation(line: 170, column: 7, scope: !980, inlinedAt: !990)
!1004 = !DILocation(line: 83, column: 3, scope: !544, inlinedAt: !1005)
!1005 = distinct !DILocation(line: 171, column: 3, scope: !980, inlinedAt: !990)
!1006 = !DILocation(line: 287, column: 36, scope: !969)
!1007 = !DILocation(line: 80, column: 35, scope: !534, inlinedAt: !1005)
!1008 = !DILocation(line: 80, column: 44, scope: !534, inlinedAt: !1005)
!1009 = !DILocation(line: 80, column: 63, scope: !534, inlinedAt: !1005)
!1010 = !DILocation(line: 81, column: 39, scope: !534, inlinedAt: !1005)
!1011 = !DILocation(line: 81, column: 57, scope: !534, inlinedAt: !1005)
!1012 = !DILocation(line: 82, column: 22, scope: !534, inlinedAt: !1005)
!1013 = !DILocation(line: 82, column: 13, scope: !534, inlinedAt: !1005)
!1014 = !DILocation(line: 84, column: 3, scope: !547, inlinedAt: !1005)
!1015 = !DILocation(line: 85, column: 3, scope: !550, inlinedAt: !1005)
!1016 = !DILocation(line: 86, column: 3, scope: !570, inlinedAt: !1005)
!1017 = !DILocation(line: 86, column: 3, scope: !534, inlinedAt: !1005)
!1018 = !DILocation(line: 87, column: 10, scope: !534, inlinedAt: !1005)
!1019 = !DILocation(line: 88, column: 3, scope: !534, inlinedAt: !1005)
!1020 = !DILocation(line: 89, column: 9, scope: !534, inlinedAt: !1005)
!1021 = !DILocation(line: 90, column: 9, scope: !534, inlinedAt: !1005)
!1022 = !DILocation(line: 91, column: 3, scope: !553, inlinedAt: !1005)
!1023 = !DILocation(line: 287, column: 11, scope: !970)
!1024 = !DILocation(line: 288, column: 9, scope: !969)
!1025 = !DILocation(line: 289, column: 16, scope: !936)
!1026 = !DILocation(line: 289, column: 32, scope: !936)
!1027 = !DILocation(line: 289, column: 36, scope: !936)
!1028 = !DILocation(line: 289, column: 16, scope: !937)
!1029 = !DILocation(line: 293, column: 14, scope: !935)
!1030 = !DILocation(line: 297, column: 21, scope: !942)
!1031 = !DILocation(line: 297, column: 29, scope: !942)
!1032 = !DILocation(line: 297, column: 32, scope: !942)
!1033 = !DILocation(line: 290, column: 13, scope: !936)
!1034 = !DILocation(line: 51, column: 5, scope: !448, inlinedAt: !953)
!1035 = !DILocation(line: 52, column: 20, scope: !448, inlinedAt: !953)
!1036 = !DILocation(line: 52, column: 16, scope: !448, inlinedAt: !953)
!1037 = !DILocation(line: 53, column: 5, scope: !448, inlinedAt: !953)
!1038 = !DILocation(line: 54, column: 5, scope: !455, inlinedAt: !953)
!1039 = !DILocation(line: 56, column: 3, scope: !449, inlinedAt: !953)
!1040 = !DILocation(line: 51, column: 5, scope: !448, inlinedAt: !951)
!1041 = !DILocation(line: 52, column: 20, scope: !448, inlinedAt: !951)
!1042 = !DILocation(line: 52, column: 16, scope: !448, inlinedAt: !951)
!1043 = !DILocation(line: 53, column: 5, scope: !448, inlinedAt: !951)
!1044 = !DILocation(line: 54, column: 5, scope: !455, inlinedAt: !951)
!1045 = !DILocation(line: 56, column: 3, scope: !449, inlinedAt: !951)
!1046 = !DILocation(line: 297, column: 7, scope: !943)
!1047 = !DILocation(line: 298, column: 20, scope: !941)
!1048 = !DILocation(line: 298, column: 38, scope: !941)
!1049 = !DILocation(line: 298, column: 16, scope: !941)
!1050 = !DILocation(line: 299, column: 28, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !941, file: !1, line: 299, column: 13)
!1052 = !DILocation(line: 299, column: 15, scope: !1051)
!1053 = !DILocation(line: 299, column: 13, scope: !941)
!1054 = !DILocation(line: 299, column: 34, scope: !1051)
!1055 = !DILocation(line: 300, column: 12, scope: !941)
!1056 = !DILocation(line: 297, column: 55, scope: !942)
!1057 = distinct !{!1057, !1046, !1058}
!1058 = !DILocation(line: 301, column: 7, scope: !943)
!1059 = !DILocation(line: 302, column: 35, scope: !935)
!1060 = !DILocation(line: 0, scope: !941)
!1061 = !DILocation(line: 0, scope: !942)
!1062 = !DILocation(line: 302, column: 41, scope: !935)
!1063 = !DILocation(line: 302, column: 16, scope: !935)
!1064 = !DILocation(line: 294, column: 13, scope: !935)
!1065 = !DILocation(line: 295, column: 11, scope: !935)
!1066 = !DILocation(line: 304, column: 7, scope: !947)
!1067 = !DILocation(line: 305, column: 20, scope: !945)
!1068 = !DILocation(line: 305, column: 36, scope: !945)
!1069 = !DILocation(line: 305, column: 16, scope: !945)
!1070 = !DILocation(line: 306, column: 22, scope: !945)
!1071 = !DILocation(line: 306, column: 27, scope: !945)
!1072 = !DILocation(line: 306, column: 9, scope: !945)
!1073 = !DILocation(line: 307, column: 12, scope: !945)
!1074 = !DILocation(line: 304, column: 23, scope: !946)
!1075 = !DILocation(line: 304, column: 18, scope: !946)
!1076 = distinct !{!1076, !1066, !1077}
!1077 = !DILocation(line: 308, column: 7, scope: !947)
!1078 = !DILocation(line: 309, column: 7, scope: !949)
!1079 = !DILocation(line: 0, scope: !932)
!1080 = !DILocation(line: 311, column: 15, scope: !932)
!1081 = !DILocation(line: 311, column: 11, scope: !932)
!1082 = !DILocation(line: 312, column: 10, scope: !932)
!1083 = !DILocation(line: 313, column: 18, scope: !924)
!1084 = !DILocation(line: 313, column: 3, scope: !932)
!1085 = distinct !{!1085, !959, !1086}
!1086 = !DILocation(line: 313, column: 21, scope: !924)
!1087 = !DILocation(line: 314, column: 1, scope: !924)
!1088 = distinct !DISubprogram(name: "luaV_execute", scope: !1, file: !1, line: 377, type: !1089, isLocal: false, isDefinition: true, scopeLine: 377, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1091)
!1089 = !DISubroutineType(types: !1090)
!1090 = !{null, !192, !148}
!1091 = !{!1092, !1093, !1094, !1096, !1097, !1098, !1099, !1103, !1104, !1108, !1109, !1112, !1113, !1116, !1118, !1120, !1122, !1123, !1125, !1126, !1128, !1130, !1132, !1134, !1136, !1137, !1139, !1140, !1142, !1144, !1146, !1147, !1150, !1151, !1154, !1155, !1157, !1160, !1161, !1164, !1165, !1167, !1170, !1171, !1174, !1175, !1177, !1180, !1181, !1184, !1185, !1187, !1190, !1191, !1194, !1195, !1197, !1200, !1201, !1204, !1205, !1207, !1209, !1212, !1214, !1216, !1218, !1220, !1224, !1227, !1229, !1230, !1232, !1233, !1235, !1236, !1238, !1242, !1243, !1245, !1246, !1248, !1251, !1252, !1253, !1254, !1258, !1259, !1261, !1263, !1264, !1265, !1269, !1271, !1273, !1274, !1275, !1277, !1279, !1281, !1282, !1284, !1285, !1287, !1288, !1292, !1293, !1295, !1296, !1297, !1298, !1302, !1304, !1305, !1309, !1312, !1313, !1314, !1316, !1318, !1319, !1320, !1321, !1328}
!1092 = !DILocalVariable(name: "L", arg: 1, scope: !1088, file: !1, line: 377, type: !192)
!1093 = !DILocalVariable(name: "nexeccalls", arg: 2, scope: !1088, file: !1, line: 377, type: !148)
!1094 = !DILocalVariable(name: "cl", scope: !1088, file: !1, line: 378, type: !1095)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!1096 = !DILocalVariable(name: "base", scope: !1088, file: !1, line: 379, type: !201)
!1097 = !DILocalVariable(name: "k", scope: !1088, file: !1, line: 380, type: !134)
!1098 = !DILocalVariable(name: "pc", scope: !1088, file: !1, line: 381, type: !289)
!1099 = !DILocalVariable(name: "i", scope: !1100, file: !1, line: 390, type: !290)
!1100 = distinct !DILexicalBlock(scope: !1101, file: !1, line: 389, column: 12)
!1101 = distinct !DILexicalBlock(scope: !1102, file: !1, line: 389, column: 3)
!1102 = distinct !DILexicalBlock(scope: !1088, file: !1, line: 389, column: 3)
!1103 = !DILocalVariable(name: "ra", scope: !1100, file: !1, line: 391, type: !201)
!1104 = !DILocalVariable(name: "o2", scope: !1105, file: !1, line: 408, type: !408)
!1105 = distinct !DILexicalBlock(scope: !1106, file: !1, line: 408, column: 9)
!1106 = distinct !DILexicalBlock(scope: !1107, file: !1, line: 407, column: 21)
!1107 = distinct !DILexicalBlock(scope: !1100, file: !1, line: 406, column: 28)
!1108 = !DILocalVariable(name: "o1", scope: !1105, file: !1, line: 408, type: !134)
!1109 = !DILocalVariable(name: "o2", scope: !1110, file: !1, line: 412, type: !408)
!1110 = distinct !DILexicalBlock(scope: !1111, file: !1, line: 412, column: 9)
!1111 = distinct !DILexicalBlock(scope: !1107, file: !1, line: 411, column: 22)
!1112 = !DILocalVariable(name: "o1", scope: !1110, file: !1, line: 412, type: !134)
!1113 = !DILocalVariable(name: "i_o", scope: !1114, file: !1, line: 416, type: !134)
!1114 = distinct !DILexicalBlock(scope: !1115, file: !1, line: 416, column: 9)
!1115 = distinct !DILexicalBlock(scope: !1107, file: !1, line: 415, column: 25)
!1116 = !DILocalVariable(name: "rb", scope: !1117, file: !1, line: 421, type: !134)
!1117 = distinct !DILexicalBlock(scope: !1107, file: !1, line: 420, column: 24)
!1118 = !DILocalVariable(name: "b", scope: !1119, file: !1, line: 428, type: !148)
!1119 = distinct !DILexicalBlock(scope: !1107, file: !1, line: 427, column: 25)
!1120 = !DILocalVariable(name: "o2", scope: !1121, file: !1, line: 429, type: !408)
!1121 = distinct !DILexicalBlock(scope: !1119, file: !1, line: 429, column: 9)
!1122 = !DILocalVariable(name: "o1", scope: !1121, file: !1, line: 429, type: !134)
!1123 = !DILocalVariable(name: "g", scope: !1124, file: !1, line: 433, type: !135)
!1124 = distinct !DILexicalBlock(scope: !1107, file: !1, line: 432, column: 26)
!1125 = !DILocalVariable(name: "rb", scope: !1124, file: !1, line: 434, type: !134)
!1126 = !DILocalVariable(name: "i_o", scope: !1127, file: !1, line: 435, type: !134)
!1127 = distinct !DILexicalBlock(scope: !1124, file: !1, line: 435, column: 9)
!1128 = !DILocalVariable(name: "g", scope: !1129, file: !1, line: 445, type: !135)
!1129 = distinct !DILexicalBlock(scope: !1107, file: !1, line: 444, column: 26)
!1130 = !DILocalVariable(name: "i_o", scope: !1131, file: !1, line: 446, type: !134)
!1131 = distinct !DILexicalBlock(scope: !1129, file: !1, line: 446, column: 9)
!1132 = !DILocalVariable(name: "uv", scope: !1133, file: !1, line: 452, type: !395)
!1133 = distinct !DILexicalBlock(scope: !1107, file: !1, line: 451, column: 25)
!1134 = !DILocalVariable(name: "o2", scope: !1135, file: !1, line: 453, type: !408)
!1135 = distinct !DILexicalBlock(scope: !1133, file: !1, line: 453, column: 9)
!1136 = !DILocalVariable(name: "o1", scope: !1135, file: !1, line: 453, type: !134)
!1137 = !DILocalVariable(name: "b", scope: !1138, file: !1, line: 462, type: !148)
!1138 = distinct !DILexicalBlock(scope: !1107, file: !1, line: 461, column: 25)
!1139 = !DILocalVariable(name: "c", scope: !1138, file: !1, line: 463, type: !148)
!1140 = !DILocalVariable(name: "i_o", scope: !1141, file: !1, line: 464, type: !134)
!1141 = distinct !DILexicalBlock(scope: !1138, file: !1, line: 464, column: 9)
!1142 = !DILocalVariable(name: "rb", scope: !1143, file: !1, line: 469, type: !201)
!1143 = distinct !DILexicalBlock(scope: !1107, file: !1, line: 468, column: 21)
!1144 = !DILocalVariable(name: "o2", scope: !1145, file: !1, line: 470, type: !408)
!1145 = distinct !DILexicalBlock(scope: !1143, file: !1, line: 470, column: 9)
!1146 = !DILocalVariable(name: "o1", scope: !1145, file: !1, line: 470, type: !134)
!1147 = !DILocalVariable(name: "rb", scope: !1148, file: !1, line: 475, type: !134)
!1148 = distinct !DILexicalBlock(scope: !1149, file: !1, line: 475, column: 9)
!1149 = distinct !DILexicalBlock(scope: !1107, file: !1, line: 474, column: 20)
!1150 = !DILocalVariable(name: "rc", scope: !1148, file: !1, line: 475, type: !134)
!1151 = !DILocalVariable(name: "nb", scope: !1152, file: !1, line: 475, type: !145)
!1152 = distinct !DILexicalBlock(scope: !1153, file: !1, line: 475, column: 9)
!1153 = distinct !DILexicalBlock(scope: !1148, file: !1, line: 475, column: 9)
!1154 = !DILocalVariable(name: "nc", scope: !1152, file: !1, line: 475, type: !145)
!1155 = !DILocalVariable(name: "i_o", scope: !1156, file: !1, line: 475, type: !134)
!1156 = distinct !DILexicalBlock(scope: !1152, file: !1, line: 475, column: 9)
!1157 = !DILocalVariable(name: "rb", scope: !1158, file: !1, line: 479, type: !134)
!1158 = distinct !DILexicalBlock(scope: !1159, file: !1, line: 479, column: 9)
!1159 = distinct !DILexicalBlock(scope: !1107, file: !1, line: 478, column: 20)
!1160 = !DILocalVariable(name: "rc", scope: !1158, file: !1, line: 479, type: !134)
!1161 = !DILocalVariable(name: "nb", scope: !1162, file: !1, line: 479, type: !145)
!1162 = distinct !DILexicalBlock(scope: !1163, file: !1, line: 479, column: 9)
!1163 = distinct !DILexicalBlock(scope: !1158, file: !1, line: 479, column: 9)
!1164 = !DILocalVariable(name: "nc", scope: !1162, file: !1, line: 479, type: !145)
!1165 = !DILocalVariable(name: "i_o", scope: !1166, file: !1, line: 479, type: !134)
!1166 = distinct !DILexicalBlock(scope: !1162, file: !1, line: 479, column: 9)
!1167 = !DILocalVariable(name: "rb", scope: !1168, file: !1, line: 483, type: !134)
!1168 = distinct !DILexicalBlock(scope: !1169, file: !1, line: 483, column: 9)
!1169 = distinct !DILexicalBlock(scope: !1107, file: !1, line: 482, column: 20)
!1170 = !DILocalVariable(name: "rc", scope: !1168, file: !1, line: 483, type: !134)
!1171 = !DILocalVariable(name: "nb", scope: !1172, file: !1, line: 483, type: !145)
!1172 = distinct !DILexicalBlock(scope: !1173, file: !1, line: 483, column: 9)
!1173 = distinct !DILexicalBlock(scope: !1168, file: !1, line: 483, column: 9)
!1174 = !DILocalVariable(name: "nc", scope: !1172, file: !1, line: 483, type: !145)
!1175 = !DILocalVariable(name: "i_o", scope: !1176, file: !1, line: 483, type: !134)
!1176 = distinct !DILexicalBlock(scope: !1172, file: !1, line: 483, column: 9)
!1177 = !DILocalVariable(name: "rb", scope: !1178, file: !1, line: 487, type: !134)
!1178 = distinct !DILexicalBlock(scope: !1179, file: !1, line: 487, column: 9)
!1179 = distinct !DILexicalBlock(scope: !1107, file: !1, line: 486, column: 20)
!1180 = !DILocalVariable(name: "rc", scope: !1178, file: !1, line: 487, type: !134)
!1181 = !DILocalVariable(name: "nb", scope: !1182, file: !1, line: 487, type: !145)
!1182 = distinct !DILexicalBlock(scope: !1183, file: !1, line: 487, column: 9)
!1183 = distinct !DILexicalBlock(scope: !1178, file: !1, line: 487, column: 9)
!1184 = !DILocalVariable(name: "nc", scope: !1182, file: !1, line: 487, type: !145)
!1185 = !DILocalVariable(name: "i_o", scope: !1186, file: !1, line: 487, type: !134)
!1186 = distinct !DILexicalBlock(scope: !1182, file: !1, line: 487, column: 9)
!1187 = !DILocalVariable(name: "rb", scope: !1188, file: !1, line: 491, type: !134)
!1188 = distinct !DILexicalBlock(scope: !1189, file: !1, line: 491, column: 9)
!1189 = distinct !DILexicalBlock(scope: !1107, file: !1, line: 490, column: 20)
!1190 = !DILocalVariable(name: "rc", scope: !1188, file: !1, line: 491, type: !134)
!1191 = !DILocalVariable(name: "nb", scope: !1192, file: !1, line: 491, type: !145)
!1192 = distinct !DILexicalBlock(scope: !1193, file: !1, line: 491, column: 9)
!1193 = distinct !DILexicalBlock(scope: !1188, file: !1, line: 491, column: 9)
!1194 = !DILocalVariable(name: "nc", scope: !1192, file: !1, line: 491, type: !145)
!1195 = !DILocalVariable(name: "i_o", scope: !1196, file: !1, line: 491, type: !134)
!1196 = distinct !DILexicalBlock(scope: !1192, file: !1, line: 491, column: 9)
!1197 = !DILocalVariable(name: "rb", scope: !1198, file: !1, line: 495, type: !134)
!1198 = distinct !DILexicalBlock(scope: !1199, file: !1, line: 495, column: 9)
!1199 = distinct !DILexicalBlock(scope: !1107, file: !1, line: 494, column: 20)
!1200 = !DILocalVariable(name: "rc", scope: !1198, file: !1, line: 495, type: !134)
!1201 = !DILocalVariable(name: "nb", scope: !1202, file: !1, line: 495, type: !145)
!1202 = distinct !DILexicalBlock(scope: !1203, file: !1, line: 495, column: 9)
!1203 = distinct !DILexicalBlock(scope: !1198, file: !1, line: 495, column: 9)
!1204 = !DILocalVariable(name: "nc", scope: !1202, file: !1, line: 495, type: !145)
!1205 = !DILocalVariable(name: "i_o", scope: !1206, file: !1, line: 495, type: !134)
!1206 = distinct !DILexicalBlock(scope: !1202, file: !1, line: 495, column: 9)
!1207 = !DILocalVariable(name: "rb", scope: !1208, file: !1, line: 499, type: !134)
!1208 = distinct !DILexicalBlock(scope: !1107, file: !1, line: 498, column: 20)
!1209 = !DILocalVariable(name: "nb", scope: !1210, file: !1, line: 501, type: !145)
!1210 = distinct !DILexicalBlock(scope: !1211, file: !1, line: 500, column: 29)
!1211 = distinct !DILexicalBlock(scope: !1208, file: !1, line: 500, column: 13)
!1212 = !DILocalVariable(name: "i_o", scope: !1213, file: !1, line: 502, type: !134)
!1213 = distinct !DILexicalBlock(scope: !1210, file: !1, line: 502, column: 11)
!1214 = !DILocalVariable(name: "res", scope: !1215, file: !1, line: 510, type: !148)
!1215 = distinct !DILexicalBlock(scope: !1107, file: !1, line: 509, column: 20)
!1216 = !DILocalVariable(name: "i_o", scope: !1217, file: !1, line: 511, type: !134)
!1217 = distinct !DILexicalBlock(scope: !1215, file: !1, line: 511, column: 9)
!1218 = !DILocalVariable(name: "rb", scope: !1219, file: !1, line: 515, type: !408)
!1219 = distinct !DILexicalBlock(scope: !1107, file: !1, line: 514, column: 20)
!1220 = !DILocalVariable(name: "i_o", scope: !1221, file: !1, line: 518, type: !134)
!1221 = distinct !DILexicalBlock(scope: !1222, file: !1, line: 518, column: 13)
!1222 = distinct !DILexicalBlock(scope: !1223, file: !1, line: 517, column: 28)
!1223 = distinct !DILexicalBlock(scope: !1219, file: !1, line: 516, column: 28)
!1224 = !DILocalVariable(name: "i_o", scope: !1225, file: !1, line: 522, type: !134)
!1225 = distinct !DILexicalBlock(scope: !1226, file: !1, line: 522, column: 13)
!1226 = distinct !DILexicalBlock(scope: !1223, file: !1, line: 521, column: 29)
!1227 = !DILocalVariable(name: "b", scope: !1228, file: !1, line: 535, type: !148)
!1228 = distinct !DILexicalBlock(scope: !1107, file: !1, line: 534, column: 23)
!1229 = !DILocalVariable(name: "c", scope: !1228, file: !1, line: 536, type: !148)
!1230 = !DILocalVariable(name: "o2", scope: !1231, file: !1, line: 538, type: !408)
!1231 = distinct !DILexicalBlock(scope: !1228, file: !1, line: 538, column: 9)
!1232 = !DILocalVariable(name: "o1", scope: !1231, file: !1, line: 538, type: !134)
!1233 = !DILocalVariable(name: "rb", scope: !1234, file: !1, line: 546, type: !134)
!1234 = distinct !DILexicalBlock(scope: !1107, file: !1, line: 545, column: 19)
!1235 = !DILocalVariable(name: "rc", scope: !1234, file: !1, line: 547, type: !134)
!1236 = !DILocalVariable(name: "rb", scope: !1237, file: !1, line: 578, type: !134)
!1237 = distinct !DILexicalBlock(scope: !1107, file: !1, line: 577, column: 24)
!1238 = !DILocalVariable(name: "o2", scope: !1239, file: !1, line: 580, type: !408)
!1239 = distinct !DILexicalBlock(scope: !1240, file: !1, line: 580, column: 11)
!1240 = distinct !DILexicalBlock(scope: !1241, file: !1, line: 579, column: 43)
!1241 = distinct !DILexicalBlock(scope: !1237, file: !1, line: 579, column: 13)
!1242 = !DILocalVariable(name: "o1", scope: !1239, file: !1, line: 580, type: !134)
!1243 = !DILocalVariable(name: "b", scope: !1244, file: !1, line: 587, type: !148)
!1244 = distinct !DILexicalBlock(scope: !1107, file: !1, line: 586, column: 21)
!1245 = !DILocalVariable(name: "nresults", scope: !1244, file: !1, line: 588, type: !148)
!1246 = !DILocalVariable(name: "b", scope: !1247, file: !1, line: 608, type: !148)
!1247 = distinct !DILexicalBlock(scope: !1107, file: !1, line: 607, column: 25)
!1248 = !DILocalVariable(name: "ci", scope: !1249, file: !1, line: 615, type: !281)
!1249 = distinct !DILexicalBlock(scope: !1250, file: !1, line: 613, column: 24)
!1250 = distinct !DILexicalBlock(scope: !1247, file: !1, line: 612, column: 51)
!1251 = !DILocalVariable(name: "aux", scope: !1249, file: !1, line: 616, type: !148)
!1252 = !DILocalVariable(name: "func", scope: !1249, file: !1, line: 617, type: !201)
!1253 = !DILocalVariable(name: "pfunc", scope: !1249, file: !1, line: 618, type: !201)
!1254 = !DILocalVariable(name: "o2", scope: !1255, file: !1, line: 622, type: !408)
!1255 = distinct !DILexicalBlock(scope: !1256, file: !1, line: 622, column: 15)
!1256 = distinct !DILexicalBlock(scope: !1257, file: !1, line: 621, column: 13)
!1257 = distinct !DILexicalBlock(scope: !1249, file: !1, line: 621, column: 13)
!1258 = !DILocalVariable(name: "o1", scope: !1255, file: !1, line: 622, type: !134)
!1259 = !DILocalVariable(name: "b", scope: !1260, file: !1, line: 640, type: !148)
!1260 = distinct !DILexicalBlock(scope: !1107, file: !1, line: 639, column: 23)
!1261 = !DILocalVariable(name: "step", scope: !1262, file: !1, line: 655, type: !145)
!1262 = distinct !DILexicalBlock(scope: !1107, file: !1, line: 654, column: 24)
!1263 = !DILocalVariable(name: "idx", scope: !1262, file: !1, line: 656, type: !145)
!1264 = !DILocalVariable(name: "limit", scope: !1262, file: !1, line: 657, type: !145)
!1265 = !DILocalVariable(name: "i_o", scope: !1266, file: !1, line: 661, type: !134)
!1266 = distinct !DILexicalBlock(scope: !1267, file: !1, line: 661, column: 11)
!1267 = distinct !DILexicalBlock(scope: !1268, file: !1, line: 659, column: 59)
!1268 = distinct !DILexicalBlock(scope: !1262, file: !1, line: 658, column: 13)
!1269 = !DILocalVariable(name: "i_o", scope: !1270, file: !1, line: 662, type: !134)
!1270 = distinct !DILexicalBlock(scope: !1267, file: !1, line: 662, column: 11)
!1271 = !DILocalVariable(name: "init", scope: !1272, file: !1, line: 667, type: !408)
!1272 = distinct !DILexicalBlock(scope: !1107, file: !1, line: 666, column: 24)
!1273 = !DILocalVariable(name: "plimit", scope: !1272, file: !1, line: 668, type: !408)
!1274 = !DILocalVariable(name: "pstep", scope: !1272, file: !1, line: 669, type: !408)
!1275 = !DILocalVariable(name: "i_o", scope: !1276, file: !1, line: 677, type: !134)
!1276 = distinct !DILexicalBlock(scope: !1272, file: !1, line: 677, column: 9)
!1277 = !DILocalVariable(name: "cb", scope: !1278, file: !1, line: 682, type: !201)
!1278 = distinct !DILexicalBlock(scope: !1107, file: !1, line: 681, column: 25)
!1279 = !DILocalVariable(name: "o2", scope: !1280, file: !1, line: 683, type: !408)
!1280 = distinct !DILexicalBlock(scope: !1278, file: !1, line: 683, column: 9)
!1281 = !DILocalVariable(name: "o1", scope: !1280, file: !1, line: 683, type: !134)
!1282 = !DILocalVariable(name: "o2", scope: !1283, file: !1, line: 684, type: !408)
!1283 = distinct !DILexicalBlock(scope: !1278, file: !1, line: 684, column: 9)
!1284 = !DILocalVariable(name: "o1", scope: !1283, file: !1, line: 684, type: !134)
!1285 = !DILocalVariable(name: "o2", scope: !1286, file: !1, line: 685, type: !408)
!1286 = distinct !DILexicalBlock(scope: !1278, file: !1, line: 685, column: 9)
!1287 = !DILocalVariable(name: "o1", scope: !1286, file: !1, line: 685, type: !134)
!1288 = !DILocalVariable(name: "o2", scope: !1289, file: !1, line: 691, type: !408)
!1289 = distinct !DILexicalBlock(scope: !1290, file: !1, line: 691, column: 11)
!1290 = distinct !DILexicalBlock(scope: !1291, file: !1, line: 690, column: 27)
!1291 = distinct !DILexicalBlock(scope: !1278, file: !1, line: 690, column: 13)
!1292 = !DILocalVariable(name: "o1", scope: !1289, file: !1, line: 691, type: !134)
!1293 = !DILocalVariable(name: "n", scope: !1294, file: !1, line: 698, type: !148)
!1294 = distinct !DILexicalBlock(scope: !1107, file: !1, line: 697, column: 24)
!1295 = !DILocalVariable(name: "c", scope: !1294, file: !1, line: 699, type: !148)
!1296 = !DILocalVariable(name: "last", scope: !1294, file: !1, line: 700, type: !148)
!1297 = !DILocalVariable(name: "h", scope: !1294, file: !1, line: 701, type: !485)
!1298 = !DILocalVariable(name: "val", scope: !1299, file: !1, line: 713, type: !134)
!1299 = distinct !DILexicalBlock(scope: !1300, file: !1, line: 712, column: 28)
!1300 = distinct !DILexicalBlock(scope: !1301, file: !1, line: 712, column: 9)
!1301 = distinct !DILexicalBlock(scope: !1294, file: !1, line: 712, column: 9)
!1302 = !DILocalVariable(name: "o2", scope: !1303, file: !1, line: 714, type: !408)
!1303 = distinct !DILexicalBlock(scope: !1299, file: !1, line: 714, column: 11)
!1304 = !DILocalVariable(name: "o1", scope: !1303, file: !1, line: 714, type: !134)
!1305 = !DILocalVariable(name: "p", scope: !1306, file: !1, line: 724, type: !1307)
!1306 = distinct !DILexicalBlock(scope: !1107, file: !1, line: 723, column: 24)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = !DIDerivedType(tag: DW_TAG_typedef, name: "Proto", file: !72, line: 253, baseType: !358)
!1309 = !DILocalVariable(name: "ncl", scope: !1306, file: !1, line: 725, type: !1310)
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_typedef, name: "Closure", file: !72, line: 312, baseType: !174)
!1312 = !DILocalVariable(name: "nup", scope: !1306, file: !1, line: 726, type: !148)
!1313 = !DILocalVariable(name: "j", scope: !1306, file: !1, line: 726, type: !148)
!1314 = !DILocalVariable(name: "i_o", scope: !1315, file: !1, line: 739, type: !134)
!1315 = distinct !DILexicalBlock(scope: !1306, file: !1, line: 739, column: 9)
!1316 = !DILocalVariable(name: "b", scope: !1317, file: !1, line: 744, type: !148)
!1317 = distinct !DILexicalBlock(scope: !1107, file: !1, line: 743, column: 23)
!1318 = !DILocalVariable(name: "j", scope: !1317, file: !1, line: 745, type: !148)
!1319 = !DILocalVariable(name: "ci", scope: !1317, file: !1, line: 746, type: !281)
!1320 = !DILocalVariable(name: "n", scope: !1317, file: !1, line: 747, type: !148)
!1321 = !DILocalVariable(name: "o2", scope: !1322, file: !1, line: 756, type: !408)
!1322 = distinct !DILexicalBlock(scope: !1323, file: !1, line: 756, column: 13)
!1323 = distinct !DILexicalBlock(scope: !1324, file: !1, line: 755, column: 22)
!1324 = distinct !DILexicalBlock(scope: !1325, file: !1, line: 755, column: 15)
!1325 = distinct !DILexicalBlock(scope: !1326, file: !1, line: 754, column: 33)
!1326 = distinct !DILexicalBlock(scope: !1327, file: !1, line: 754, column: 9)
!1327 = distinct !DILexicalBlock(scope: !1317, file: !1, line: 754, column: 9)
!1328 = !DILocalVariable(name: "o1", scope: !1322, file: !1, line: 756, type: !134)
!1329 = !DILocation(line: 377, column: 31, scope: !1088)
!1330 = !DILocation(line: 377, column: 38, scope: !1088)
!1331 = !DILocation(line: 381, column: 3, scope: !1088)
!1332 = !DILocation(line: 384, column: 11, scope: !1088)
!1333 = !{!516, !513, i64 48}
!1334 = !DILocation(line: 381, column: 22, scope: !1088)
!1335 = !DILocation(line: 385, column: 9, scope: !1088)
!1336 = !{!516, !513, i64 40}
!1337 = !{!1338, !513, i64 8}
!1338 = !{!"CallInfo", !513, i64 0, !513, i64 8, !513, i64 16, !513, i64 24, !427, i64 32, !427, i64 36}
!1339 = !DILocation(line: 378, column: 13, scope: !1088)
!1340 = !DILocation(line: 386, column: 13, scope: !1088)
!1341 = !DILocation(line: 379, column: 9, scope: !1088)
!1342 = !DILocation(line: 387, column: 11, scope: !1088)
!1343 = !{!1344, !513, i64 32}
!1344 = !{!"LClosure", !513, i64 0, !425, i64 8, !425, i64 9, !425, i64 10, !425, i64 11, !513, i64 16, !513, i64 24, !513, i64 32, !425, i64 40}
!1345 = !DILocation(line: 387, column: 14, scope: !1088)
!1346 = !{!1347, !513, i64 16}
!1347 = !{!"Proto", !513, i64 0, !425, i64 8, !425, i64 9, !513, i64 16, !513, i64 24, !513, i64 32, !513, i64 40, !513, i64 48, !513, i64 56, !513, i64 64, !427, i64 72, !427, i64 76, !427, i64 80, !427, i64 84, !427, i64 88, !427, i64 92, !427, i64 96, !427, i64 100, !513, i64 104, !425, i64 112, !425, i64 113, !425, i64 114, !425, i64 115}
!1348 = !DILocation(line: 380, column: 11, scope: !1088)
!1349 = !DILocation(line: 389, column: 3, scope: !1088)
!1350 = !DILocation(line: 0, scope: !1100)
!1351 = !DILocation(line: 386, column: 8, scope: !1088)
!1352 = !DILocation(line: 390, column: 30, scope: !1100)
!1353 = !DILocation(line: 390, column: 27, scope: !1100)
!1354 = !{!427, !427, i64 0}
!1355 = !DILocation(line: 390, column: 23, scope: !1100)
!1356 = !DILocation(line: 392, column: 13, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1100, file: !1, line: 392, column: 9)
!1358 = !{!516, !425, i64 100}
!1359 = !DILocation(line: 392, column: 22, scope: !1357)
!1360 = !DILocation(line: 392, column: 56, scope: !1357)
!1361 = !DILocation(line: 393, column: 10, scope: !1357)
!1362 = !{!516, !427, i64 108}
!1363 = !DILocation(line: 393, column: 25, scope: !1357)
!1364 = !DILocation(line: 393, column: 45, scope: !1357)
!1365 = !DILocation(line: 393, column: 30, scope: !1357)
!1366 = !DILocalVariable(name: "L", arg: 1, scope: !1367, file: !1, line: 60, type: !192)
!1367 = distinct !DISubprogram(name: "traceexec", scope: !1, file: !1, line: 60, type: !1368, isLocal: true, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1370)
!1368 = !DISubroutineType(types: !1369)
!1369 = !{null, !192, !289}
!1370 = !{!1366, !1371, !1372, !1373, !1374, !1377, !1378}
!1371 = !DILocalVariable(name: "pc", arg: 2, scope: !1367, file: !1, line: 60, type: !289)
!1372 = !DILocalVariable(name: "mask", scope: !1367, file: !1, line: 61, type: !82)
!1373 = !DILocalVariable(name: "oldpc", scope: !1367, file: !1, line: 62, type: !289)
!1374 = !DILocalVariable(name: "p", scope: !1375, file: !1, line: 69, type: !1307)
!1375 = distinct !DILexicalBlock(scope: !1376, file: !1, line: 68, column: 28)
!1376 = distinct !DILexicalBlock(scope: !1367, file: !1, line: 68, column: 7)
!1377 = !DILocalVariable(name: "npc", scope: !1375, file: !1, line: 70, type: !148)
!1378 = !DILocalVariable(name: "newline", scope: !1375, file: !1, line: 71, type: !148)
!1379 = !DILocation(line: 60, column: 35, scope: !1367, inlinedAt: !1380)
!1380 = distinct !DILocation(line: 394, column: 7, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1357, file: !1, line: 393, column: 62)
!1382 = !DILocation(line: 60, column: 57, scope: !1367, inlinedAt: !1380)
!1383 = !DILocation(line: 61, column: 11, scope: !1367, inlinedAt: !1380)
!1384 = !DILocation(line: 62, column: 33, scope: !1367, inlinedAt: !1380)
!1385 = !DILocation(line: 62, column: 22, scope: !1367, inlinedAt: !1380)
!1386 = !DILocation(line: 63, column: 14, scope: !1367, inlinedAt: !1380)
!1387 = !DILocation(line: 64, column: 8, scope: !1388, inlinedAt: !1380)
!1388 = distinct !DILexicalBlock(scope: !1367, file: !1, line: 64, column: 7)
!1389 = !DILocation(line: 64, column: 13, scope: !1388, inlinedAt: !1380)
!1390 = !DILocation(line: 64, column: 30, scope: !1388, inlinedAt: !1380)
!1391 = !DILocation(line: 65, column: 5, scope: !1392, inlinedAt: !1380)
!1392 = distinct !DILexicalBlock(scope: !1388, file: !1, line: 64, column: 52)
!1393 = !{!516, !427, i64 104}
!1394 = !DILocation(line: 66, column: 5, scope: !1392, inlinedAt: !1380)
!1395 = !DILocation(line: 67, column: 3, scope: !1392, inlinedAt: !1380)
!1396 = !DILocation(line: 68, column: 12, scope: !1376, inlinedAt: !1380)
!1397 = !DILocation(line: 68, column: 7, scope: !1367, inlinedAt: !1380)
!1398 = !DILocation(line: 69, column: 16, scope: !1375, inlinedAt: !1380)
!1399 = !DILocation(line: 69, column: 34, scope: !1375, inlinedAt: !1380)
!1400 = !DILocation(line: 69, column: 12, scope: !1375, inlinedAt: !1380)
!1401 = !DILocation(line: 70, column: 15, scope: !1375, inlinedAt: !1380)
!1402 = !{!1347, !513, i64 24}
!1403 = !DILocation(line: 70, column: 9, scope: !1375, inlinedAt: !1380)
!1404 = !DILocation(line: 71, column: 19, scope: !1375, inlinedAt: !1380)
!1405 = !{!1347, !513, i64 40}
!1406 = !DILocation(line: 71, column: 9, scope: !1375, inlinedAt: !1380)
!1407 = !DILocation(line: 74, column: 13, scope: !1408, inlinedAt: !1380)
!1408 = distinct !DILexicalBlock(scope: !1375, file: !1, line: 74, column: 9)
!1409 = !DILocation(line: 74, column: 24, scope: !1408, inlinedAt: !1380)
!1410 = !DILocation(line: 74, column: 18, scope: !1408, inlinedAt: !1380)
!1411 = !DILocation(line: 74, column: 47, scope: !1408, inlinedAt: !1380)
!1412 = !DILocation(line: 74, column: 44, scope: !1408, inlinedAt: !1380)
!1413 = !DILocation(line: 74, column: 9, scope: !1375, inlinedAt: !1380)
!1414 = !DILocation(line: 75, column: 7, scope: !1408, inlinedAt: !1380)
!1415 = !DILocation(line: 395, column: 14, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1381, file: !1, line: 395, column: 11)
!1417 = !{!516, !425, i64 10}
!1418 = !DILocation(line: 395, column: 21, scope: !1416)
!1419 = !DILocation(line: 395, column: 11, scope: !1381)
!1420 = !DILocation(line: 396, column: 20, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1416, file: !1, line: 395, column: 35)
!1422 = !DILocation(line: 397, column: 9, scope: !1421)
!1423 = !DILocation(line: 399, column: 17, scope: !1381)
!1424 = !DILocation(line: 400, column: 5, scope: !1381)
!1425 = !DILocation(line: 0, scope: !1088)
!1426 = !DILocation(line: 402, column: 10, scope: !1100)
!1427 = !DILocation(line: 391, column: 11, scope: !1100)
!1428 = !DILocation(line: 406, column: 5, scope: !1100)
!1429 = !DILocation(line: 408, column: 9, scope: !1105)
!1430 = !DILocation(line: 409, column: 9, scope: !1106)
!1431 = !DILocation(line: 412, column: 9, scope: !1110)
!1432 = !DILocation(line: 413, column: 9, scope: !1111)
!1433 = !DILocation(line: 416, column: 9, scope: !1114)
!1434 = !DILocation(line: 417, column: 13, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1115, file: !1, line: 417, column: 13)
!1436 = !DILocation(line: 417, column: 28, scope: !1435)
!1437 = !DILocation(line: 417, column: 13, scope: !1115)
!1438 = !DILocation(line: 418, column: 9, scope: !1115)
!1439 = !DILocation(line: 421, column: 22, scope: !1117)
!1440 = !DILocation(line: 421, column: 17, scope: !1117)
!1441 = !DILocation(line: 422, column: 9, scope: !1117)
!1442 = !DILocation(line: 0, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1117, file: !1, line: 422, column: 12)
!1444 = !DILocation(line: 423, column: 11, scope: !1443)
!1445 = !DILocation(line: 424, column: 21, scope: !1117)
!1446 = !DILocation(line: 424, column: 9, scope: !1443)
!1447 = distinct !{!1447, !1448, !1449}
!1448 = !DILocation(line: 389, column: 3, scope: !1102)
!1449 = !DILocation(line: 765, column: 3, scope: !1102)
!1450 = !DILocation(line: 428, column: 17, scope: !1119)
!1451 = !DILocation(line: 428, column: 13, scope: !1119)
!1452 = !DILocation(line: 429, column: 9, scope: !1121)
!1453 = !{!1454, !513, i64 16}
!1454 = !{!"UpVal", !513, i64 0, !425, i64 8, !425, i64 9, !513, i64 16, !425, i64 24}
!1455 = !DILocation(line: 433, column: 9, scope: !1124)
!1456 = !DILocation(line: 434, column: 22, scope: !1124)
!1457 = !DILocation(line: 434, column: 17, scope: !1124)
!1458 = !DILocation(line: 435, column: 9, scope: !1127)
!1459 = !{!1344, !513, i64 24}
!1460 = !DILocation(line: 437, column: 9, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1124, file: !1, line: 437, column: 9)
!1462 = !DILocation(line: 433, column: 16, scope: !1124)
!1463 = !DILocation(line: 437, column: 9, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1461, file: !1, line: 437, column: 9)
!1465 = !DILocation(line: 439, column: 7, scope: !1107)
!1466 = !DILocation(line: 441, column: 9, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1468, file: !1, line: 441, column: 9)
!1468 = distinct !DILexicalBlock(scope: !1107, file: !1, line: 440, column: 25)
!1469 = !DILocation(line: 441, column: 9, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1467, file: !1, line: 441, column: 9)
!1471 = !DILocation(line: 442, column: 9, scope: !1468)
!1472 = !DILocation(line: 445, column: 9, scope: !1129)
!1473 = !DILocation(line: 446, column: 9, scope: !1131)
!1474 = !DILocation(line: 448, column: 9, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1129, file: !1, line: 448, column: 9)
!1476 = !DILocation(line: 448, column: 9, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1475, file: !1, line: 448, column: 9)
!1478 = !DILocation(line: 445, column: 16, scope: !1129)
!1479 = !DILocation(line: 450, column: 7, scope: !1107)
!1480 = !DILocation(line: 452, column: 32, scope: !1133)
!1481 = !DILocation(line: 452, column: 21, scope: !1133)
!1482 = !DILocation(line: 452, column: 16, scope: !1133)
!1483 = !DILocation(line: 453, column: 9, scope: !1135)
!1484 = !DILocation(line: 454, column: 9, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1486, file: !1, line: 454, column: 9)
!1486 = distinct !DILexicalBlock(scope: !1133, file: !1, line: 454, column: 9)
!1487 = !DILocation(line: 454, column: 9, scope: !1486)
!1488 = !DILocation(line: 458, column: 9, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1490, file: !1, line: 458, column: 9)
!1490 = distinct !DILexicalBlock(scope: !1107, file: !1, line: 457, column: 25)
!1491 = !DILocation(line: 458, column: 9, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1489, file: !1, line: 458, column: 9)
!1493 = !DILocation(line: 459, column: 9, scope: !1490)
!1494 = !DILocation(line: 462, column: 17, scope: !1138)
!1495 = !DILocation(line: 462, column: 13, scope: !1138)
!1496 = !DILocation(line: 463, column: 17, scope: !1138)
!1497 = !DILocation(line: 463, column: 13, scope: !1138)
!1498 = !DILocation(line: 464, column: 9, scope: !1141)
!1499 = !DILocation(line: 465, column: 9, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1138, file: !1, line: 465, column: 9)
!1501 = !DILocation(line: 465, column: 9, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1503, file: !1, line: 465, column: 9)
!1503 = distinct !DILexicalBlock(scope: !1504, file: !1, line: 465, column: 9)
!1504 = distinct !DILexicalBlock(scope: !1500, file: !1, line: 465, column: 9)
!1505 = !{!1506, !518, i64 120}
!1506 = !{!"global_State", !1507, i64 0, !513, i64 16, !513, i64 24, !425, i64 32, !425, i64 33, !427, i64 36, !513, i64 40, !513, i64 48, !513, i64 56, !513, i64 64, !513, i64 72, !513, i64 80, !1508, i64 88, !518, i64 112, !518, i64 120, !518, i64 128, !518, i64 136, !427, i64 144, !427, i64 148, !513, i64 152, !424, i64 160, !513, i64 176, !1454, i64 184, !425, i64 224, !425, i64 296}
!1507 = !{!"stringtable", !513, i64 0, !427, i64 8, !427, i64 12}
!1508 = !{!"Mbuffer", !513, i64 0, !518, i64 8, !518, i64 16}
!1509 = !{!1506, !518, i64 112}
!1510 = !DILocation(line: 465, column: 9, scope: !1503)
!1511 = !DILocation(line: 469, column: 20, scope: !1143)
!1512 = !DILocation(line: 469, column: 15, scope: !1143)
!1513 = !DILocation(line: 470, column: 9, scope: !1145)
!1514 = !DILocation(line: 471, column: 9, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1143, file: !1, line: 471, column: 9)
!1516 = !DILocation(line: 471, column: 9, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1515, file: !1, line: 471, column: 9)
!1518 = !DILocation(line: 475, column: 9, scope: !1148)
!1519 = !DILocation(line: 475, column: 9, scope: !1153)
!1520 = !DILocation(line: 475, column: 9, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1153, file: !1, line: 475, column: 9)
!1522 = !DILocalVariable(name: "L", arg: 1, scope: !1523, file: !1, line: 317, type: !192)
!1523 = distinct !DISubprogram(name: "Arith", scope: !1, file: !1, line: 317, type: !1524, isLocal: true, isDefinition: true, scopeLine: 318, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1526)
!1524 = !DISubroutineType(types: !1525)
!1525 = !{null, !192, !201, !408, !408, !762}
!1526 = !{!1522, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1538, !1539, !1542, !1544, !1546, !1548, !1550, !1552}
!1527 = !DILocalVariable(name: "ra", arg: 2, scope: !1523, file: !1, line: 317, type: !201)
!1528 = !DILocalVariable(name: "rb", arg: 3, scope: !1523, file: !1, line: 317, type: !408)
!1529 = !DILocalVariable(name: "rc", arg: 4, scope: !1523, file: !1, line: 318, type: !408)
!1530 = !DILocalVariable(name: "op", arg: 5, scope: !1523, file: !1, line: 318, type: !762)
!1531 = !DILocalVariable(name: "tempb", scope: !1523, file: !1, line: 319, type: !135)
!1532 = !DILocalVariable(name: "tempc", scope: !1523, file: !1, line: 319, type: !135)
!1533 = !DILocalVariable(name: "b", scope: !1523, file: !1, line: 320, type: !408)
!1534 = !DILocalVariable(name: "c", scope: !1523, file: !1, line: 320, type: !408)
!1535 = !DILocalVariable(name: "nb", scope: !1536, file: !1, line: 323, type: !145)
!1536 = distinct !DILexicalBlock(scope: !1537, file: !1, line: 322, column: 48)
!1537 = distinct !DILexicalBlock(scope: !1523, file: !1, line: 321, column: 7)
!1538 = !DILocalVariable(name: "nc", scope: !1536, file: !1, line: 323, type: !145)
!1539 = !DILocalVariable(name: "i_o", scope: !1540, file: !1, line: 325, type: !134)
!1540 = distinct !DILexicalBlock(scope: !1541, file: !1, line: 325, column: 20)
!1541 = distinct !DILexicalBlock(scope: !1536, file: !1, line: 324, column: 17)
!1542 = !DILocalVariable(name: "i_o", scope: !1543, file: !1, line: 326, type: !134)
!1543 = distinct !DILexicalBlock(scope: !1541, file: !1, line: 326, column: 20)
!1544 = !DILocalVariable(name: "i_o", scope: !1545, file: !1, line: 327, type: !134)
!1545 = distinct !DILexicalBlock(scope: !1541, file: !1, line: 327, column: 20)
!1546 = !DILocalVariable(name: "i_o", scope: !1547, file: !1, line: 328, type: !134)
!1547 = distinct !DILexicalBlock(scope: !1541, file: !1, line: 328, column: 20)
!1548 = !DILocalVariable(name: "i_o", scope: !1549, file: !1, line: 329, type: !134)
!1549 = distinct !DILexicalBlock(scope: !1541, file: !1, line: 329, column: 20)
!1550 = !DILocalVariable(name: "i_o", scope: !1551, file: !1, line: 330, type: !134)
!1551 = distinct !DILexicalBlock(scope: !1541, file: !1, line: 330, column: 20)
!1552 = !DILocalVariable(name: "i_o", scope: !1553, file: !1, line: 331, type: !134)
!1553 = distinct !DILexicalBlock(scope: !1541, file: !1, line: 331, column: 20)
!1554 = !DILocation(line: 317, column: 31, scope: !1523, inlinedAt: !1555)
!1555 = distinct !DILocation(line: 475, column: 9, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1521, file: !1, line: 475, column: 9)
!1557 = !DILocation(line: 317, column: 40, scope: !1523, inlinedAt: !1555)
!1558 = !DILocation(line: 317, column: 58, scope: !1523, inlinedAt: !1555)
!1559 = !DILocation(line: 318, column: 34, scope: !1523, inlinedAt: !1555)
!1560 = !DILocation(line: 318, column: 42, scope: !1523, inlinedAt: !1555)
!1561 = !DILocation(line: 319, column: 3, scope: !1523, inlinedAt: !1555)
!1562 = !DILocation(line: 319, column: 10, scope: !1523, inlinedAt: !1555)
!1563 = !DILocation(line: 35, column: 44, scope: !405, inlinedAt: !1564)
!1564 = distinct !DILocation(line: 321, column: 12, scope: !1537, inlinedAt: !1555)
!1565 = !DILocation(line: 35, column: 57, scope: !405, inlinedAt: !1564)
!1566 = !DILocation(line: 36, column: 3, scope: !405, inlinedAt: !1564)
!1567 = !DILocation(line: 37, column: 7, scope: !405, inlinedAt: !1564)
!1568 = !DILocation(line: 475, column: 9, scope: !1152)
!1569 = !DILocation(line: 475, column: 9, scope: !1156)
!1570 = !DILocation(line: 38, column: 37, scope: !417, inlinedAt: !1564)
!1571 = !DILocation(line: 36, column: 14, scope: !405, inlinedAt: !1564)
!1572 = !DILocation(line: 38, column: 26, scope: !417, inlinedAt: !1564)
!1573 = !DILocation(line: 38, column: 7, scope: !405, inlinedAt: !1564)
!1574 = !DILocation(line: 39, column: 5, scope: !415, inlinedAt: !1564)
!1575 = !DILocation(line: 40, column: 5, scope: !416, inlinedAt: !1564)
!1576 = !DILocation(line: 44, column: 1, scope: !405, inlinedAt: !1564)
!1577 = !DILocation(line: 320, column: 17, scope: !1523, inlinedAt: !1555)
!1578 = !DILocation(line: 321, column: 47, scope: !1537, inlinedAt: !1555)
!1579 = !DILocation(line: 319, column: 17, scope: !1523, inlinedAt: !1555)
!1580 = !DILocation(line: 35, column: 44, scope: !405, inlinedAt: !1581)
!1581 = distinct !DILocation(line: 322, column: 12, scope: !1537, inlinedAt: !1555)
!1582 = !DILocation(line: 35, column: 57, scope: !405, inlinedAt: !1581)
!1583 = !DILocation(line: 36, column: 3, scope: !405, inlinedAt: !1581)
!1584 = !DILocation(line: 37, column: 7, scope: !422, inlinedAt: !1581)
!1585 = !DILocation(line: 37, column: 7, scope: !405, inlinedAt: !1581)
!1586 = !DILocation(line: 38, column: 37, scope: !417, inlinedAt: !1581)
!1587 = !DILocation(line: 36, column: 14, scope: !405, inlinedAt: !1581)
!1588 = !DILocation(line: 38, column: 26, scope: !417, inlinedAt: !1581)
!1589 = !DILocation(line: 38, column: 7, scope: !405, inlinedAt: !1581)
!1590 = !DILocation(line: 39, column: 5, scope: !415, inlinedAt: !1581)
!1591 = !DILocation(line: 40, column: 5, scope: !416, inlinedAt: !1581)
!1592 = !DILocation(line: 44, column: 1, scope: !405, inlinedAt: !1581)
!1593 = !DILocation(line: 320, column: 21, scope: !1523, inlinedAt: !1555)
!1594 = !DILocation(line: 321, column: 7, scope: !1523, inlinedAt: !1555)
!1595 = !DILocation(line: 323, column: 21, scope: !1536, inlinedAt: !1555)
!1596 = !DILocation(line: 323, column: 16, scope: !1536, inlinedAt: !1555)
!1597 = !DILocation(line: 323, column: 37, scope: !1536, inlinedAt: !1555)
!1598 = !DILocation(line: 323, column: 32, scope: !1536, inlinedAt: !1555)
!1599 = !DILocation(line: 325, column: 20, scope: !1540, inlinedAt: !1555)
!1600 = !DILocation(line: 325, column: 56, scope: !1541, inlinedAt: !1555)
!1601 = !DILocation(line: 165, column: 35, scope: !980, inlinedAt: !1602)
!1602 = distinct !DILocation(line: 335, column: 13, scope: !1603, inlinedAt: !1555)
!1603 = distinct !DILexicalBlock(scope: !1537, file: !1, line: 335, column: 12)
!1604 = !DILocation(line: 165, column: 52, scope: !980, inlinedAt: !1602)
!1605 = !DILocation(line: 165, column: 70, scope: !980, inlinedAt: !1602)
!1606 = !DILocation(line: 166, column: 30, scope: !980, inlinedAt: !1602)
!1607 = !DILocation(line: 166, column: 39, scope: !980, inlinedAt: !1602)
!1608 = !DILocation(line: 167, column: 22, scope: !980, inlinedAt: !1602)
!1609 = !DILocation(line: 167, column: 17, scope: !980, inlinedAt: !1602)
!1610 = !DILocation(line: 168, column: 7, scope: !998, inlinedAt: !1602)
!1611 = !DILocation(line: 168, column: 7, scope: !980, inlinedAt: !1602)
!1612 = !DILocation(line: 169, column: 10, scope: !998, inlinedAt: !1602)
!1613 = !DILocation(line: 170, column: 7, scope: !1002, inlinedAt: !1602)
!1614 = !DILocation(line: 170, column: 7, scope: !980, inlinedAt: !1602)
!1615 = !DILocation(line: 83, column: 3, scope: !544, inlinedAt: !1616)
!1616 = distinct !DILocation(line: 171, column: 3, scope: !980, inlinedAt: !1602)
!1617 = !DILocation(line: 80, column: 35, scope: !534, inlinedAt: !1616)
!1618 = !DILocation(line: 80, column: 44, scope: !534, inlinedAt: !1616)
!1619 = !DILocation(line: 80, column: 63, scope: !534, inlinedAt: !1616)
!1620 = !DILocation(line: 81, column: 39, scope: !534, inlinedAt: !1616)
!1621 = !DILocation(line: 81, column: 57, scope: !534, inlinedAt: !1616)
!1622 = !DILocation(line: 82, column: 22, scope: !534, inlinedAt: !1616)
!1623 = !DILocation(line: 82, column: 13, scope: !534, inlinedAt: !1616)
!1624 = !DILocation(line: 84, column: 3, scope: !547, inlinedAt: !1616)
!1625 = !DILocation(line: 85, column: 3, scope: !550, inlinedAt: !1616)
!1626 = !DILocation(line: 86, column: 3, scope: !570, inlinedAt: !1616)
!1627 = !DILocation(line: 86, column: 3, scope: !534, inlinedAt: !1616)
!1628 = !DILocation(line: 87, column: 10, scope: !534, inlinedAt: !1616)
!1629 = !DILocation(line: 88, column: 3, scope: !534, inlinedAt: !1616)
!1630 = !DILocation(line: 89, column: 9, scope: !534, inlinedAt: !1616)
!1631 = !DILocation(line: 90, column: 9, scope: !534, inlinedAt: !1616)
!1632 = !DILocation(line: 91, column: 3, scope: !553, inlinedAt: !1616)
!1633 = !DILocation(line: 335, column: 12, scope: !1537, inlinedAt: !1555)
!1634 = !DILocation(line: 336, column: 5, scope: !1603, inlinedAt: !1555)
!1635 = !DILocation(line: 337, column: 1, scope: !1523, inlinedAt: !1555)
!1636 = !DILocation(line: 479, column: 9, scope: !1158)
!1637 = !DILocation(line: 479, column: 9, scope: !1163)
!1638 = !DILocation(line: 479, column: 9, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1163, file: !1, line: 479, column: 9)
!1640 = !DILocation(line: 317, column: 31, scope: !1523, inlinedAt: !1641)
!1641 = distinct !DILocation(line: 479, column: 9, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1639, file: !1, line: 479, column: 9)
!1643 = !DILocation(line: 317, column: 40, scope: !1523, inlinedAt: !1641)
!1644 = !DILocation(line: 317, column: 58, scope: !1523, inlinedAt: !1641)
!1645 = !DILocation(line: 318, column: 34, scope: !1523, inlinedAt: !1641)
!1646 = !DILocation(line: 318, column: 42, scope: !1523, inlinedAt: !1641)
!1647 = !DILocation(line: 319, column: 3, scope: !1523, inlinedAt: !1641)
!1648 = !DILocation(line: 319, column: 10, scope: !1523, inlinedAt: !1641)
!1649 = !DILocation(line: 35, column: 44, scope: !405, inlinedAt: !1650)
!1650 = distinct !DILocation(line: 321, column: 12, scope: !1537, inlinedAt: !1641)
!1651 = !DILocation(line: 35, column: 57, scope: !405, inlinedAt: !1650)
!1652 = !DILocation(line: 36, column: 3, scope: !405, inlinedAt: !1650)
!1653 = !DILocation(line: 37, column: 7, scope: !405, inlinedAt: !1650)
!1654 = !DILocation(line: 479, column: 9, scope: !1162)
!1655 = !DILocation(line: 479, column: 9, scope: !1166)
!1656 = !DILocation(line: 38, column: 37, scope: !417, inlinedAt: !1650)
!1657 = !DILocation(line: 36, column: 14, scope: !405, inlinedAt: !1650)
!1658 = !DILocation(line: 38, column: 26, scope: !417, inlinedAt: !1650)
!1659 = !DILocation(line: 38, column: 7, scope: !405, inlinedAt: !1650)
!1660 = !DILocation(line: 39, column: 5, scope: !415, inlinedAt: !1650)
!1661 = !DILocation(line: 40, column: 5, scope: !416, inlinedAt: !1650)
!1662 = !DILocation(line: 44, column: 1, scope: !405, inlinedAt: !1650)
!1663 = !DILocation(line: 320, column: 17, scope: !1523, inlinedAt: !1641)
!1664 = !DILocation(line: 321, column: 47, scope: !1537, inlinedAt: !1641)
!1665 = !DILocation(line: 319, column: 17, scope: !1523, inlinedAt: !1641)
!1666 = !DILocation(line: 35, column: 44, scope: !405, inlinedAt: !1667)
!1667 = distinct !DILocation(line: 322, column: 12, scope: !1537, inlinedAt: !1641)
!1668 = !DILocation(line: 35, column: 57, scope: !405, inlinedAt: !1667)
!1669 = !DILocation(line: 36, column: 3, scope: !405, inlinedAt: !1667)
!1670 = !DILocation(line: 37, column: 7, scope: !422, inlinedAt: !1667)
!1671 = !DILocation(line: 37, column: 7, scope: !405, inlinedAt: !1667)
!1672 = !DILocation(line: 38, column: 37, scope: !417, inlinedAt: !1667)
!1673 = !DILocation(line: 36, column: 14, scope: !405, inlinedAt: !1667)
!1674 = !DILocation(line: 38, column: 26, scope: !417, inlinedAt: !1667)
!1675 = !DILocation(line: 38, column: 7, scope: !405, inlinedAt: !1667)
!1676 = !DILocation(line: 39, column: 5, scope: !415, inlinedAt: !1667)
!1677 = !DILocation(line: 40, column: 5, scope: !416, inlinedAt: !1667)
!1678 = !DILocation(line: 44, column: 1, scope: !405, inlinedAt: !1667)
!1679 = !DILocation(line: 320, column: 21, scope: !1523, inlinedAt: !1641)
!1680 = !DILocation(line: 321, column: 7, scope: !1523, inlinedAt: !1641)
!1681 = !DILocation(line: 323, column: 21, scope: !1536, inlinedAt: !1641)
!1682 = !DILocation(line: 323, column: 16, scope: !1536, inlinedAt: !1641)
!1683 = !DILocation(line: 323, column: 37, scope: !1536, inlinedAt: !1641)
!1684 = !DILocation(line: 323, column: 32, scope: !1536, inlinedAt: !1641)
!1685 = !DILocation(line: 326, column: 20, scope: !1543, inlinedAt: !1641)
!1686 = !DILocation(line: 326, column: 56, scope: !1541, inlinedAt: !1641)
!1687 = !DILocation(line: 165, column: 35, scope: !980, inlinedAt: !1688)
!1688 = distinct !DILocation(line: 335, column: 13, scope: !1603, inlinedAt: !1641)
!1689 = !DILocation(line: 165, column: 52, scope: !980, inlinedAt: !1688)
!1690 = !DILocation(line: 165, column: 70, scope: !980, inlinedAt: !1688)
!1691 = !DILocation(line: 166, column: 30, scope: !980, inlinedAt: !1688)
!1692 = !DILocation(line: 166, column: 39, scope: !980, inlinedAt: !1688)
!1693 = !DILocation(line: 167, column: 22, scope: !980, inlinedAt: !1688)
!1694 = !DILocation(line: 167, column: 17, scope: !980, inlinedAt: !1688)
!1695 = !DILocation(line: 168, column: 7, scope: !998, inlinedAt: !1688)
!1696 = !DILocation(line: 168, column: 7, scope: !980, inlinedAt: !1688)
!1697 = !DILocation(line: 169, column: 10, scope: !998, inlinedAt: !1688)
!1698 = !DILocation(line: 170, column: 7, scope: !1002, inlinedAt: !1688)
!1699 = !DILocation(line: 170, column: 7, scope: !980, inlinedAt: !1688)
!1700 = !DILocation(line: 83, column: 3, scope: !544, inlinedAt: !1701)
!1701 = distinct !DILocation(line: 171, column: 3, scope: !980, inlinedAt: !1688)
!1702 = !DILocation(line: 80, column: 35, scope: !534, inlinedAt: !1701)
!1703 = !DILocation(line: 80, column: 44, scope: !534, inlinedAt: !1701)
!1704 = !DILocation(line: 80, column: 63, scope: !534, inlinedAt: !1701)
!1705 = !DILocation(line: 81, column: 39, scope: !534, inlinedAt: !1701)
!1706 = !DILocation(line: 81, column: 57, scope: !534, inlinedAt: !1701)
!1707 = !DILocation(line: 82, column: 22, scope: !534, inlinedAt: !1701)
!1708 = !DILocation(line: 82, column: 13, scope: !534, inlinedAt: !1701)
!1709 = !DILocation(line: 84, column: 3, scope: !547, inlinedAt: !1701)
!1710 = !DILocation(line: 85, column: 3, scope: !550, inlinedAt: !1701)
!1711 = !DILocation(line: 86, column: 3, scope: !570, inlinedAt: !1701)
!1712 = !DILocation(line: 86, column: 3, scope: !534, inlinedAt: !1701)
!1713 = !DILocation(line: 87, column: 10, scope: !534, inlinedAt: !1701)
!1714 = !DILocation(line: 88, column: 3, scope: !534, inlinedAt: !1701)
!1715 = !DILocation(line: 89, column: 9, scope: !534, inlinedAt: !1701)
!1716 = !DILocation(line: 90, column: 9, scope: !534, inlinedAt: !1701)
!1717 = !DILocation(line: 91, column: 3, scope: !553, inlinedAt: !1701)
!1718 = !DILocation(line: 335, column: 12, scope: !1537, inlinedAt: !1641)
!1719 = !DILocation(line: 336, column: 5, scope: !1603, inlinedAt: !1641)
!1720 = !DILocation(line: 337, column: 1, scope: !1523, inlinedAt: !1641)
!1721 = !DILocation(line: 483, column: 9, scope: !1168)
!1722 = !DILocation(line: 483, column: 9, scope: !1173)
!1723 = !DILocation(line: 483, column: 9, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1173, file: !1, line: 483, column: 9)
!1725 = !DILocation(line: 317, column: 31, scope: !1523, inlinedAt: !1726)
!1726 = distinct !DILocation(line: 483, column: 9, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1724, file: !1, line: 483, column: 9)
!1728 = !DILocation(line: 317, column: 40, scope: !1523, inlinedAt: !1726)
!1729 = !DILocation(line: 317, column: 58, scope: !1523, inlinedAt: !1726)
!1730 = !DILocation(line: 318, column: 34, scope: !1523, inlinedAt: !1726)
!1731 = !DILocation(line: 318, column: 42, scope: !1523, inlinedAt: !1726)
!1732 = !DILocation(line: 319, column: 3, scope: !1523, inlinedAt: !1726)
!1733 = !DILocation(line: 319, column: 10, scope: !1523, inlinedAt: !1726)
!1734 = !DILocation(line: 35, column: 44, scope: !405, inlinedAt: !1735)
!1735 = distinct !DILocation(line: 321, column: 12, scope: !1537, inlinedAt: !1726)
!1736 = !DILocation(line: 35, column: 57, scope: !405, inlinedAt: !1735)
!1737 = !DILocation(line: 36, column: 3, scope: !405, inlinedAt: !1735)
!1738 = !DILocation(line: 37, column: 7, scope: !405, inlinedAt: !1735)
!1739 = !DILocation(line: 483, column: 9, scope: !1172)
!1740 = !DILocation(line: 483, column: 9, scope: !1176)
!1741 = !DILocation(line: 38, column: 37, scope: !417, inlinedAt: !1735)
!1742 = !DILocation(line: 36, column: 14, scope: !405, inlinedAt: !1735)
!1743 = !DILocation(line: 38, column: 26, scope: !417, inlinedAt: !1735)
!1744 = !DILocation(line: 38, column: 7, scope: !405, inlinedAt: !1735)
!1745 = !DILocation(line: 39, column: 5, scope: !415, inlinedAt: !1735)
!1746 = !DILocation(line: 40, column: 5, scope: !416, inlinedAt: !1735)
!1747 = !DILocation(line: 44, column: 1, scope: !405, inlinedAt: !1735)
!1748 = !DILocation(line: 320, column: 17, scope: !1523, inlinedAt: !1726)
!1749 = !DILocation(line: 321, column: 47, scope: !1537, inlinedAt: !1726)
!1750 = !DILocation(line: 319, column: 17, scope: !1523, inlinedAt: !1726)
!1751 = !DILocation(line: 35, column: 44, scope: !405, inlinedAt: !1752)
!1752 = distinct !DILocation(line: 322, column: 12, scope: !1537, inlinedAt: !1726)
!1753 = !DILocation(line: 35, column: 57, scope: !405, inlinedAt: !1752)
!1754 = !DILocation(line: 36, column: 3, scope: !405, inlinedAt: !1752)
!1755 = !DILocation(line: 37, column: 7, scope: !422, inlinedAt: !1752)
!1756 = !DILocation(line: 37, column: 7, scope: !405, inlinedAt: !1752)
!1757 = !DILocation(line: 38, column: 37, scope: !417, inlinedAt: !1752)
!1758 = !DILocation(line: 36, column: 14, scope: !405, inlinedAt: !1752)
!1759 = !DILocation(line: 38, column: 26, scope: !417, inlinedAt: !1752)
!1760 = !DILocation(line: 38, column: 7, scope: !405, inlinedAt: !1752)
!1761 = !DILocation(line: 39, column: 5, scope: !415, inlinedAt: !1752)
!1762 = !DILocation(line: 40, column: 5, scope: !416, inlinedAt: !1752)
!1763 = !DILocation(line: 44, column: 1, scope: !405, inlinedAt: !1752)
!1764 = !DILocation(line: 320, column: 21, scope: !1523, inlinedAt: !1726)
!1765 = !DILocation(line: 321, column: 7, scope: !1523, inlinedAt: !1726)
!1766 = !DILocation(line: 323, column: 21, scope: !1536, inlinedAt: !1726)
!1767 = !DILocation(line: 323, column: 16, scope: !1536, inlinedAt: !1726)
!1768 = !DILocation(line: 323, column: 37, scope: !1536, inlinedAt: !1726)
!1769 = !DILocation(line: 323, column: 32, scope: !1536, inlinedAt: !1726)
!1770 = !DILocation(line: 327, column: 20, scope: !1545, inlinedAt: !1726)
!1771 = !DILocation(line: 327, column: 56, scope: !1541, inlinedAt: !1726)
!1772 = !DILocation(line: 165, column: 35, scope: !980, inlinedAt: !1773)
!1773 = distinct !DILocation(line: 335, column: 13, scope: !1603, inlinedAt: !1726)
!1774 = !DILocation(line: 165, column: 52, scope: !980, inlinedAt: !1773)
!1775 = !DILocation(line: 165, column: 70, scope: !980, inlinedAt: !1773)
!1776 = !DILocation(line: 166, column: 30, scope: !980, inlinedAt: !1773)
!1777 = !DILocation(line: 166, column: 39, scope: !980, inlinedAt: !1773)
!1778 = !DILocation(line: 167, column: 22, scope: !980, inlinedAt: !1773)
!1779 = !DILocation(line: 167, column: 17, scope: !980, inlinedAt: !1773)
!1780 = !DILocation(line: 168, column: 7, scope: !998, inlinedAt: !1773)
!1781 = !DILocation(line: 168, column: 7, scope: !980, inlinedAt: !1773)
!1782 = !DILocation(line: 169, column: 10, scope: !998, inlinedAt: !1773)
!1783 = !DILocation(line: 170, column: 7, scope: !1002, inlinedAt: !1773)
!1784 = !DILocation(line: 170, column: 7, scope: !980, inlinedAt: !1773)
!1785 = !DILocation(line: 83, column: 3, scope: !544, inlinedAt: !1786)
!1786 = distinct !DILocation(line: 171, column: 3, scope: !980, inlinedAt: !1773)
!1787 = !DILocation(line: 80, column: 35, scope: !534, inlinedAt: !1786)
!1788 = !DILocation(line: 80, column: 44, scope: !534, inlinedAt: !1786)
!1789 = !DILocation(line: 80, column: 63, scope: !534, inlinedAt: !1786)
!1790 = !DILocation(line: 81, column: 39, scope: !534, inlinedAt: !1786)
!1791 = !DILocation(line: 81, column: 57, scope: !534, inlinedAt: !1786)
!1792 = !DILocation(line: 82, column: 22, scope: !534, inlinedAt: !1786)
!1793 = !DILocation(line: 82, column: 13, scope: !534, inlinedAt: !1786)
!1794 = !DILocation(line: 84, column: 3, scope: !547, inlinedAt: !1786)
!1795 = !DILocation(line: 85, column: 3, scope: !550, inlinedAt: !1786)
!1796 = !DILocation(line: 86, column: 3, scope: !570, inlinedAt: !1786)
!1797 = !DILocation(line: 86, column: 3, scope: !534, inlinedAt: !1786)
!1798 = !DILocation(line: 87, column: 10, scope: !534, inlinedAt: !1786)
!1799 = !DILocation(line: 88, column: 3, scope: !534, inlinedAt: !1786)
!1800 = !DILocation(line: 89, column: 9, scope: !534, inlinedAt: !1786)
!1801 = !DILocation(line: 90, column: 9, scope: !534, inlinedAt: !1786)
!1802 = !DILocation(line: 91, column: 3, scope: !553, inlinedAt: !1786)
!1803 = !DILocation(line: 335, column: 12, scope: !1537, inlinedAt: !1726)
!1804 = !DILocation(line: 336, column: 5, scope: !1603, inlinedAt: !1726)
!1805 = !DILocation(line: 337, column: 1, scope: !1523, inlinedAt: !1726)
!1806 = !DILocation(line: 487, column: 9, scope: !1178)
!1807 = !DILocation(line: 487, column: 9, scope: !1183)
!1808 = !DILocation(line: 487, column: 9, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1183, file: !1, line: 487, column: 9)
!1810 = !DILocation(line: 317, column: 31, scope: !1523, inlinedAt: !1811)
!1811 = distinct !DILocation(line: 487, column: 9, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1809, file: !1, line: 487, column: 9)
!1813 = !DILocation(line: 317, column: 40, scope: !1523, inlinedAt: !1811)
!1814 = !DILocation(line: 317, column: 58, scope: !1523, inlinedAt: !1811)
!1815 = !DILocation(line: 318, column: 34, scope: !1523, inlinedAt: !1811)
!1816 = !DILocation(line: 318, column: 42, scope: !1523, inlinedAt: !1811)
!1817 = !DILocation(line: 319, column: 3, scope: !1523, inlinedAt: !1811)
!1818 = !DILocation(line: 319, column: 10, scope: !1523, inlinedAt: !1811)
!1819 = !DILocation(line: 35, column: 44, scope: !405, inlinedAt: !1820)
!1820 = distinct !DILocation(line: 321, column: 12, scope: !1537, inlinedAt: !1811)
!1821 = !DILocation(line: 35, column: 57, scope: !405, inlinedAt: !1820)
!1822 = !DILocation(line: 36, column: 3, scope: !405, inlinedAt: !1820)
!1823 = !DILocation(line: 37, column: 7, scope: !405, inlinedAt: !1820)
!1824 = !DILocation(line: 487, column: 9, scope: !1182)
!1825 = !DILocation(line: 487, column: 9, scope: !1186)
!1826 = !DILocation(line: 38, column: 37, scope: !417, inlinedAt: !1820)
!1827 = !DILocation(line: 36, column: 14, scope: !405, inlinedAt: !1820)
!1828 = !DILocation(line: 38, column: 26, scope: !417, inlinedAt: !1820)
!1829 = !DILocation(line: 38, column: 7, scope: !405, inlinedAt: !1820)
!1830 = !DILocation(line: 39, column: 5, scope: !415, inlinedAt: !1820)
!1831 = !DILocation(line: 40, column: 5, scope: !416, inlinedAt: !1820)
!1832 = !DILocation(line: 44, column: 1, scope: !405, inlinedAt: !1820)
!1833 = !DILocation(line: 320, column: 17, scope: !1523, inlinedAt: !1811)
!1834 = !DILocation(line: 321, column: 47, scope: !1537, inlinedAt: !1811)
!1835 = !DILocation(line: 319, column: 17, scope: !1523, inlinedAt: !1811)
!1836 = !DILocation(line: 35, column: 44, scope: !405, inlinedAt: !1837)
!1837 = distinct !DILocation(line: 322, column: 12, scope: !1537, inlinedAt: !1811)
!1838 = !DILocation(line: 35, column: 57, scope: !405, inlinedAt: !1837)
!1839 = !DILocation(line: 36, column: 3, scope: !405, inlinedAt: !1837)
!1840 = !DILocation(line: 37, column: 7, scope: !422, inlinedAt: !1837)
!1841 = !DILocation(line: 37, column: 7, scope: !405, inlinedAt: !1837)
!1842 = !DILocation(line: 38, column: 37, scope: !417, inlinedAt: !1837)
!1843 = !DILocation(line: 36, column: 14, scope: !405, inlinedAt: !1837)
!1844 = !DILocation(line: 38, column: 26, scope: !417, inlinedAt: !1837)
!1845 = !DILocation(line: 38, column: 7, scope: !405, inlinedAt: !1837)
!1846 = !DILocation(line: 39, column: 5, scope: !415, inlinedAt: !1837)
!1847 = !DILocation(line: 40, column: 5, scope: !416, inlinedAt: !1837)
!1848 = !DILocation(line: 44, column: 1, scope: !405, inlinedAt: !1837)
!1849 = !DILocation(line: 320, column: 21, scope: !1523, inlinedAt: !1811)
!1850 = !DILocation(line: 321, column: 7, scope: !1523, inlinedAt: !1811)
!1851 = !DILocation(line: 323, column: 21, scope: !1536, inlinedAt: !1811)
!1852 = !DILocation(line: 323, column: 16, scope: !1536, inlinedAt: !1811)
!1853 = !DILocation(line: 323, column: 37, scope: !1536, inlinedAt: !1811)
!1854 = !DILocation(line: 323, column: 32, scope: !1536, inlinedAt: !1811)
!1855 = !DILocation(line: 328, column: 20, scope: !1547, inlinedAt: !1811)
!1856 = !DILocation(line: 328, column: 56, scope: !1541, inlinedAt: !1811)
!1857 = !DILocation(line: 165, column: 35, scope: !980, inlinedAt: !1858)
!1858 = distinct !DILocation(line: 335, column: 13, scope: !1603, inlinedAt: !1811)
!1859 = !DILocation(line: 165, column: 52, scope: !980, inlinedAt: !1858)
!1860 = !DILocation(line: 165, column: 70, scope: !980, inlinedAt: !1858)
!1861 = !DILocation(line: 166, column: 30, scope: !980, inlinedAt: !1858)
!1862 = !DILocation(line: 166, column: 39, scope: !980, inlinedAt: !1858)
!1863 = !DILocation(line: 167, column: 22, scope: !980, inlinedAt: !1858)
!1864 = !DILocation(line: 167, column: 17, scope: !980, inlinedAt: !1858)
!1865 = !DILocation(line: 168, column: 7, scope: !998, inlinedAt: !1858)
!1866 = !DILocation(line: 168, column: 7, scope: !980, inlinedAt: !1858)
!1867 = !DILocation(line: 169, column: 10, scope: !998, inlinedAt: !1858)
!1868 = !DILocation(line: 170, column: 7, scope: !1002, inlinedAt: !1858)
!1869 = !DILocation(line: 170, column: 7, scope: !980, inlinedAt: !1858)
!1870 = !DILocation(line: 83, column: 3, scope: !544, inlinedAt: !1871)
!1871 = distinct !DILocation(line: 171, column: 3, scope: !980, inlinedAt: !1858)
!1872 = !DILocation(line: 80, column: 35, scope: !534, inlinedAt: !1871)
!1873 = !DILocation(line: 80, column: 44, scope: !534, inlinedAt: !1871)
!1874 = !DILocation(line: 80, column: 63, scope: !534, inlinedAt: !1871)
!1875 = !DILocation(line: 81, column: 39, scope: !534, inlinedAt: !1871)
!1876 = !DILocation(line: 81, column: 57, scope: !534, inlinedAt: !1871)
!1877 = !DILocation(line: 82, column: 22, scope: !534, inlinedAt: !1871)
!1878 = !DILocation(line: 82, column: 13, scope: !534, inlinedAt: !1871)
!1879 = !DILocation(line: 84, column: 3, scope: !547, inlinedAt: !1871)
!1880 = !DILocation(line: 85, column: 3, scope: !550, inlinedAt: !1871)
!1881 = !DILocation(line: 86, column: 3, scope: !570, inlinedAt: !1871)
!1882 = !DILocation(line: 86, column: 3, scope: !534, inlinedAt: !1871)
!1883 = !DILocation(line: 87, column: 10, scope: !534, inlinedAt: !1871)
!1884 = !DILocation(line: 88, column: 3, scope: !534, inlinedAt: !1871)
!1885 = !DILocation(line: 89, column: 9, scope: !534, inlinedAt: !1871)
!1886 = !DILocation(line: 90, column: 9, scope: !534, inlinedAt: !1871)
!1887 = !DILocation(line: 91, column: 3, scope: !553, inlinedAt: !1871)
!1888 = !DILocation(line: 335, column: 12, scope: !1537, inlinedAt: !1811)
!1889 = !DILocation(line: 336, column: 5, scope: !1603, inlinedAt: !1811)
!1890 = !DILocation(line: 337, column: 1, scope: !1523, inlinedAt: !1811)
!1891 = !DILocation(line: 491, column: 9, scope: !1188)
!1892 = !DILocation(line: 491, column: 9, scope: !1193)
!1893 = !DILocation(line: 491, column: 9, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1193, file: !1, line: 491, column: 9)
!1895 = !DILocation(line: 317, column: 31, scope: !1523, inlinedAt: !1896)
!1896 = distinct !DILocation(line: 491, column: 9, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1894, file: !1, line: 491, column: 9)
!1898 = !DILocation(line: 317, column: 40, scope: !1523, inlinedAt: !1896)
!1899 = !DILocation(line: 317, column: 58, scope: !1523, inlinedAt: !1896)
!1900 = !DILocation(line: 318, column: 34, scope: !1523, inlinedAt: !1896)
!1901 = !DILocation(line: 318, column: 42, scope: !1523, inlinedAt: !1896)
!1902 = !DILocation(line: 319, column: 3, scope: !1523, inlinedAt: !1896)
!1903 = !DILocation(line: 319, column: 10, scope: !1523, inlinedAt: !1896)
!1904 = !DILocation(line: 35, column: 44, scope: !405, inlinedAt: !1905)
!1905 = distinct !DILocation(line: 321, column: 12, scope: !1537, inlinedAt: !1896)
!1906 = !DILocation(line: 35, column: 57, scope: !405, inlinedAt: !1905)
!1907 = !DILocation(line: 36, column: 3, scope: !405, inlinedAt: !1905)
!1908 = !DILocation(line: 37, column: 7, scope: !405, inlinedAt: !1905)
!1909 = !DILocation(line: 491, column: 9, scope: !1192)
!1910 = !DILocation(line: 491, column: 9, scope: !1196)
!1911 = !DILocation(line: 38, column: 37, scope: !417, inlinedAt: !1905)
!1912 = !DILocation(line: 36, column: 14, scope: !405, inlinedAt: !1905)
!1913 = !DILocation(line: 38, column: 26, scope: !417, inlinedAt: !1905)
!1914 = !DILocation(line: 38, column: 7, scope: !405, inlinedAt: !1905)
!1915 = !DILocation(line: 39, column: 5, scope: !415, inlinedAt: !1905)
!1916 = !DILocation(line: 40, column: 5, scope: !416, inlinedAt: !1905)
!1917 = !DILocation(line: 44, column: 1, scope: !405, inlinedAt: !1905)
!1918 = !DILocation(line: 320, column: 17, scope: !1523, inlinedAt: !1896)
!1919 = !DILocation(line: 321, column: 47, scope: !1537, inlinedAt: !1896)
!1920 = !DILocation(line: 319, column: 17, scope: !1523, inlinedAt: !1896)
!1921 = !DILocation(line: 35, column: 44, scope: !405, inlinedAt: !1922)
!1922 = distinct !DILocation(line: 322, column: 12, scope: !1537, inlinedAt: !1896)
!1923 = !DILocation(line: 35, column: 57, scope: !405, inlinedAt: !1922)
!1924 = !DILocation(line: 36, column: 3, scope: !405, inlinedAt: !1922)
!1925 = !DILocation(line: 37, column: 7, scope: !422, inlinedAt: !1922)
!1926 = !DILocation(line: 37, column: 7, scope: !405, inlinedAt: !1922)
!1927 = !DILocation(line: 38, column: 37, scope: !417, inlinedAt: !1922)
!1928 = !DILocation(line: 36, column: 14, scope: !405, inlinedAt: !1922)
!1929 = !DILocation(line: 38, column: 26, scope: !417, inlinedAt: !1922)
!1930 = !DILocation(line: 38, column: 7, scope: !405, inlinedAt: !1922)
!1931 = !DILocation(line: 39, column: 5, scope: !415, inlinedAt: !1922)
!1932 = !DILocation(line: 40, column: 5, scope: !416, inlinedAt: !1922)
!1933 = !DILocation(line: 44, column: 1, scope: !405, inlinedAt: !1922)
!1934 = !DILocation(line: 320, column: 21, scope: !1523, inlinedAt: !1896)
!1935 = !DILocation(line: 321, column: 7, scope: !1523, inlinedAt: !1896)
!1936 = !DILocation(line: 323, column: 21, scope: !1536, inlinedAt: !1896)
!1937 = !DILocation(line: 323, column: 16, scope: !1536, inlinedAt: !1896)
!1938 = !DILocation(line: 323, column: 37, scope: !1536, inlinedAt: !1896)
!1939 = !DILocation(line: 323, column: 32, scope: !1536, inlinedAt: !1896)
!1940 = !DILocation(line: 329, column: 20, scope: !1549, inlinedAt: !1896)
!1941 = !DILocation(line: 329, column: 56, scope: !1541, inlinedAt: !1896)
!1942 = !DILocation(line: 165, column: 35, scope: !980, inlinedAt: !1943)
!1943 = distinct !DILocation(line: 335, column: 13, scope: !1603, inlinedAt: !1896)
!1944 = !DILocation(line: 165, column: 52, scope: !980, inlinedAt: !1943)
!1945 = !DILocation(line: 165, column: 70, scope: !980, inlinedAt: !1943)
!1946 = !DILocation(line: 166, column: 30, scope: !980, inlinedAt: !1943)
!1947 = !DILocation(line: 166, column: 39, scope: !980, inlinedAt: !1943)
!1948 = !DILocation(line: 167, column: 22, scope: !980, inlinedAt: !1943)
!1949 = !DILocation(line: 167, column: 17, scope: !980, inlinedAt: !1943)
!1950 = !DILocation(line: 168, column: 7, scope: !998, inlinedAt: !1943)
!1951 = !DILocation(line: 168, column: 7, scope: !980, inlinedAt: !1943)
!1952 = !DILocation(line: 169, column: 10, scope: !998, inlinedAt: !1943)
!1953 = !DILocation(line: 170, column: 7, scope: !1002, inlinedAt: !1943)
!1954 = !DILocation(line: 170, column: 7, scope: !980, inlinedAt: !1943)
!1955 = !DILocation(line: 83, column: 3, scope: !544, inlinedAt: !1956)
!1956 = distinct !DILocation(line: 171, column: 3, scope: !980, inlinedAt: !1943)
!1957 = !DILocation(line: 80, column: 35, scope: !534, inlinedAt: !1956)
!1958 = !DILocation(line: 80, column: 44, scope: !534, inlinedAt: !1956)
!1959 = !DILocation(line: 80, column: 63, scope: !534, inlinedAt: !1956)
!1960 = !DILocation(line: 81, column: 39, scope: !534, inlinedAt: !1956)
!1961 = !DILocation(line: 81, column: 57, scope: !534, inlinedAt: !1956)
!1962 = !DILocation(line: 82, column: 22, scope: !534, inlinedAt: !1956)
!1963 = !DILocation(line: 82, column: 13, scope: !534, inlinedAt: !1956)
!1964 = !DILocation(line: 84, column: 3, scope: !547, inlinedAt: !1956)
!1965 = !DILocation(line: 85, column: 3, scope: !550, inlinedAt: !1956)
!1966 = !DILocation(line: 86, column: 3, scope: !570, inlinedAt: !1956)
!1967 = !DILocation(line: 86, column: 3, scope: !534, inlinedAt: !1956)
!1968 = !DILocation(line: 87, column: 10, scope: !534, inlinedAt: !1956)
!1969 = !DILocation(line: 88, column: 3, scope: !534, inlinedAt: !1956)
!1970 = !DILocation(line: 89, column: 9, scope: !534, inlinedAt: !1956)
!1971 = !DILocation(line: 90, column: 9, scope: !534, inlinedAt: !1956)
!1972 = !DILocation(line: 91, column: 3, scope: !553, inlinedAt: !1956)
!1973 = !DILocation(line: 335, column: 12, scope: !1537, inlinedAt: !1896)
!1974 = !DILocation(line: 336, column: 5, scope: !1603, inlinedAt: !1896)
!1975 = !DILocation(line: 337, column: 1, scope: !1523, inlinedAt: !1896)
!1976 = !DILocation(line: 495, column: 9, scope: !1198)
!1977 = !DILocation(line: 495, column: 9, scope: !1203)
!1978 = !DILocation(line: 495, column: 9, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1203, file: !1, line: 495, column: 9)
!1980 = !DILocation(line: 317, column: 31, scope: !1523, inlinedAt: !1981)
!1981 = distinct !DILocation(line: 495, column: 9, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1979, file: !1, line: 495, column: 9)
!1983 = !DILocation(line: 317, column: 40, scope: !1523, inlinedAt: !1981)
!1984 = !DILocation(line: 317, column: 58, scope: !1523, inlinedAt: !1981)
!1985 = !DILocation(line: 318, column: 34, scope: !1523, inlinedAt: !1981)
!1986 = !DILocation(line: 318, column: 42, scope: !1523, inlinedAt: !1981)
!1987 = !DILocation(line: 319, column: 3, scope: !1523, inlinedAt: !1981)
!1988 = !DILocation(line: 319, column: 10, scope: !1523, inlinedAt: !1981)
!1989 = !DILocation(line: 35, column: 44, scope: !405, inlinedAt: !1990)
!1990 = distinct !DILocation(line: 321, column: 12, scope: !1537, inlinedAt: !1981)
!1991 = !DILocation(line: 35, column: 57, scope: !405, inlinedAt: !1990)
!1992 = !DILocation(line: 36, column: 3, scope: !405, inlinedAt: !1990)
!1993 = !DILocation(line: 37, column: 7, scope: !405, inlinedAt: !1990)
!1994 = !DILocation(line: 495, column: 9, scope: !1202)
!1995 = !DILocation(line: 495, column: 9, scope: !1206)
!1996 = !DILocation(line: 38, column: 37, scope: !417, inlinedAt: !1990)
!1997 = !DILocation(line: 36, column: 14, scope: !405, inlinedAt: !1990)
!1998 = !DILocation(line: 38, column: 26, scope: !417, inlinedAt: !1990)
!1999 = !DILocation(line: 38, column: 7, scope: !405, inlinedAt: !1990)
!2000 = !DILocation(line: 39, column: 5, scope: !415, inlinedAt: !1990)
!2001 = !DILocation(line: 40, column: 5, scope: !416, inlinedAt: !1990)
!2002 = !DILocation(line: 44, column: 1, scope: !405, inlinedAt: !1990)
!2003 = !DILocation(line: 320, column: 17, scope: !1523, inlinedAt: !1981)
!2004 = !DILocation(line: 321, column: 47, scope: !1537, inlinedAt: !1981)
!2005 = !DILocation(line: 319, column: 17, scope: !1523, inlinedAt: !1981)
!2006 = !DILocation(line: 35, column: 44, scope: !405, inlinedAt: !2007)
!2007 = distinct !DILocation(line: 322, column: 12, scope: !1537, inlinedAt: !1981)
!2008 = !DILocation(line: 35, column: 57, scope: !405, inlinedAt: !2007)
!2009 = !DILocation(line: 36, column: 3, scope: !405, inlinedAt: !2007)
!2010 = !DILocation(line: 37, column: 7, scope: !422, inlinedAt: !2007)
!2011 = !DILocation(line: 37, column: 7, scope: !405, inlinedAt: !2007)
!2012 = !DILocation(line: 38, column: 37, scope: !417, inlinedAt: !2007)
!2013 = !DILocation(line: 36, column: 14, scope: !405, inlinedAt: !2007)
!2014 = !DILocation(line: 38, column: 26, scope: !417, inlinedAt: !2007)
!2015 = !DILocation(line: 38, column: 7, scope: !405, inlinedAt: !2007)
!2016 = !DILocation(line: 39, column: 5, scope: !415, inlinedAt: !2007)
!2017 = !DILocation(line: 40, column: 5, scope: !416, inlinedAt: !2007)
!2018 = !DILocation(line: 44, column: 1, scope: !405, inlinedAt: !2007)
!2019 = !DILocation(line: 320, column: 21, scope: !1523, inlinedAt: !1981)
!2020 = !DILocation(line: 321, column: 7, scope: !1523, inlinedAt: !1981)
!2021 = !DILocation(line: 323, column: 21, scope: !1536, inlinedAt: !1981)
!2022 = !DILocation(line: 323, column: 16, scope: !1536, inlinedAt: !1981)
!2023 = !DILocation(line: 323, column: 37, scope: !1536, inlinedAt: !1981)
!2024 = !DILocation(line: 323, column: 32, scope: !1536, inlinedAt: !1981)
!2025 = !DILocation(line: 330, column: 20, scope: !1551, inlinedAt: !1981)
!2026 = !DILocation(line: 330, column: 56, scope: !1541, inlinedAt: !1981)
!2027 = !DILocation(line: 165, column: 35, scope: !980, inlinedAt: !2028)
!2028 = distinct !DILocation(line: 335, column: 13, scope: !1603, inlinedAt: !1981)
!2029 = !DILocation(line: 165, column: 52, scope: !980, inlinedAt: !2028)
!2030 = !DILocation(line: 165, column: 70, scope: !980, inlinedAt: !2028)
!2031 = !DILocation(line: 166, column: 30, scope: !980, inlinedAt: !2028)
!2032 = !DILocation(line: 166, column: 39, scope: !980, inlinedAt: !2028)
!2033 = !DILocation(line: 167, column: 22, scope: !980, inlinedAt: !2028)
!2034 = !DILocation(line: 167, column: 17, scope: !980, inlinedAt: !2028)
!2035 = !DILocation(line: 168, column: 7, scope: !998, inlinedAt: !2028)
!2036 = !DILocation(line: 168, column: 7, scope: !980, inlinedAt: !2028)
!2037 = !DILocation(line: 169, column: 10, scope: !998, inlinedAt: !2028)
!2038 = !DILocation(line: 170, column: 7, scope: !1002, inlinedAt: !2028)
!2039 = !DILocation(line: 170, column: 7, scope: !980, inlinedAt: !2028)
!2040 = !DILocation(line: 83, column: 3, scope: !544, inlinedAt: !2041)
!2041 = distinct !DILocation(line: 171, column: 3, scope: !980, inlinedAt: !2028)
!2042 = !DILocation(line: 80, column: 35, scope: !534, inlinedAt: !2041)
!2043 = !DILocation(line: 80, column: 44, scope: !534, inlinedAt: !2041)
!2044 = !DILocation(line: 80, column: 63, scope: !534, inlinedAt: !2041)
!2045 = !DILocation(line: 81, column: 39, scope: !534, inlinedAt: !2041)
!2046 = !DILocation(line: 81, column: 57, scope: !534, inlinedAt: !2041)
!2047 = !DILocation(line: 82, column: 22, scope: !534, inlinedAt: !2041)
!2048 = !DILocation(line: 82, column: 13, scope: !534, inlinedAt: !2041)
!2049 = !DILocation(line: 84, column: 3, scope: !547, inlinedAt: !2041)
!2050 = !DILocation(line: 85, column: 3, scope: !550, inlinedAt: !2041)
!2051 = !DILocation(line: 86, column: 3, scope: !570, inlinedAt: !2041)
!2052 = !DILocation(line: 86, column: 3, scope: !534, inlinedAt: !2041)
!2053 = !DILocation(line: 87, column: 10, scope: !534, inlinedAt: !2041)
!2054 = !DILocation(line: 88, column: 3, scope: !534, inlinedAt: !2041)
!2055 = !DILocation(line: 89, column: 9, scope: !534, inlinedAt: !2041)
!2056 = !DILocation(line: 90, column: 9, scope: !534, inlinedAt: !2041)
!2057 = !DILocation(line: 91, column: 3, scope: !553, inlinedAt: !2041)
!2058 = !DILocation(line: 335, column: 12, scope: !1537, inlinedAt: !1981)
!2059 = !DILocation(line: 336, column: 5, scope: !1603, inlinedAt: !1981)
!2060 = !DILocation(line: 337, column: 1, scope: !1523, inlinedAt: !1981)
!2061 = !DILocation(line: 499, column: 22, scope: !1208)
!2062 = !DILocation(line: 499, column: 17, scope: !1208)
!2063 = !DILocation(line: 500, column: 13, scope: !1211)
!2064 = !DILocation(line: 500, column: 13, scope: !1208)
!2065 = !DILocation(line: 501, column: 27, scope: !1210)
!2066 = !DILocation(line: 501, column: 22, scope: !1210)
!2067 = !DILocation(line: 502, column: 11, scope: !1213)
!2068 = !DILocation(line: 503, column: 9, scope: !1210)
!2069 = !DILocation(line: 505, column: 11, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2071, file: !1, line: 505, column: 11)
!2071 = distinct !DILexicalBlock(scope: !1211, file: !1, line: 504, column: 14)
!2072 = !DILocation(line: 317, column: 31, scope: !1523, inlinedAt: !2073)
!2073 = distinct !DILocation(line: 505, column: 11, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2070, file: !1, line: 505, column: 11)
!2075 = !DILocation(line: 317, column: 40, scope: !1523, inlinedAt: !2073)
!2076 = !DILocation(line: 317, column: 58, scope: !1523, inlinedAt: !2073)
!2077 = !DILocation(line: 318, column: 34, scope: !1523, inlinedAt: !2073)
!2078 = !DILocation(line: 318, column: 42, scope: !1523, inlinedAt: !2073)
!2079 = !DILocation(line: 319, column: 3, scope: !1523, inlinedAt: !2073)
!2080 = !DILocation(line: 319, column: 10, scope: !1523, inlinedAt: !2073)
!2081 = !DILocation(line: 35, column: 44, scope: !405, inlinedAt: !2082)
!2082 = distinct !DILocation(line: 321, column: 12, scope: !1537, inlinedAt: !2073)
!2083 = !DILocation(line: 35, column: 57, scope: !405, inlinedAt: !2082)
!2084 = !DILocation(line: 36, column: 3, scope: !405, inlinedAt: !2082)
!2085 = !DILocation(line: 37, column: 7, scope: !405, inlinedAt: !2082)
!2086 = !DILocation(line: 38, column: 37, scope: !417, inlinedAt: !2082)
!2087 = !DILocation(line: 36, column: 14, scope: !405, inlinedAt: !2082)
!2088 = !DILocation(line: 38, column: 26, scope: !417, inlinedAt: !2082)
!2089 = !DILocation(line: 38, column: 7, scope: !405, inlinedAt: !2082)
!2090 = !DILocation(line: 39, column: 5, scope: !415, inlinedAt: !2082)
!2091 = !DILocation(line: 44, column: 1, scope: !405, inlinedAt: !2082)
!2092 = !DILocation(line: 320, column: 17, scope: !1523, inlinedAt: !2073)
!2093 = !DILocation(line: 35, column: 44, scope: !405, inlinedAt: !2094)
!2094 = distinct !DILocation(line: 322, column: 12, scope: !1537, inlinedAt: !2073)
!2095 = !DILocation(line: 36, column: 3, scope: !405, inlinedAt: !2094)
!2096 = !DILocation(line: 37, column: 7, scope: !422, inlinedAt: !2094)
!2097 = !DILocation(line: 37, column: 7, scope: !405, inlinedAt: !2094)
!2098 = !DILocation(line: 321, column: 47, scope: !1537, inlinedAt: !2073)
!2099 = !DILocation(line: 38, column: 37, scope: !417, inlinedAt: !2094)
!2100 = !DILocation(line: 36, column: 14, scope: !405, inlinedAt: !2094)
!2101 = !DILocation(line: 38, column: 26, scope: !417, inlinedAt: !2094)
!2102 = !DILocation(line: 38, column: 7, scope: !405, inlinedAt: !2094)
!2103 = !DILocation(line: 44, column: 1, scope: !405, inlinedAt: !2094)
!2104 = !DILocation(line: 320, column: 21, scope: !1523, inlinedAt: !2073)
!2105 = !DILocation(line: 321, column: 7, scope: !1523, inlinedAt: !2073)
!2106 = !DILocation(line: 323, column: 21, scope: !1536, inlinedAt: !2073)
!2107 = !DILocation(line: 323, column: 16, scope: !1536, inlinedAt: !2073)
!2108 = !DILocation(line: 331, column: 20, scope: !1553, inlinedAt: !2073)
!2109 = !DILocation(line: 331, column: 52, scope: !1541, inlinedAt: !2073)
!2110 = !DILocation(line: 165, column: 35, scope: !980, inlinedAt: !2111)
!2111 = distinct !DILocation(line: 335, column: 13, scope: !1603, inlinedAt: !2073)
!2112 = !DILocation(line: 165, column: 52, scope: !980, inlinedAt: !2111)
!2113 = !DILocation(line: 165, column: 70, scope: !980, inlinedAt: !2111)
!2114 = !DILocation(line: 166, column: 30, scope: !980, inlinedAt: !2111)
!2115 = !DILocation(line: 166, column: 39, scope: !980, inlinedAt: !2111)
!2116 = !DILocation(line: 167, column: 22, scope: !980, inlinedAt: !2111)
!2117 = !DILocation(line: 167, column: 17, scope: !980, inlinedAt: !2111)
!2118 = !DILocation(line: 168, column: 7, scope: !998, inlinedAt: !2111)
!2119 = !DILocation(line: 168, column: 7, scope: !980, inlinedAt: !2111)
!2120 = !DILocation(line: 169, column: 10, scope: !998, inlinedAt: !2111)
!2121 = !DILocation(line: 170, column: 7, scope: !1002, inlinedAt: !2111)
!2122 = !DILocation(line: 170, column: 7, scope: !980, inlinedAt: !2111)
!2123 = !DILocation(line: 83, column: 3, scope: !544, inlinedAt: !2124)
!2124 = distinct !DILocation(line: 171, column: 3, scope: !980, inlinedAt: !2111)
!2125 = !DILocation(line: 80, column: 35, scope: !534, inlinedAt: !2124)
!2126 = !DILocation(line: 80, column: 44, scope: !534, inlinedAt: !2124)
!2127 = !DILocation(line: 80, column: 63, scope: !534, inlinedAt: !2124)
!2128 = !DILocation(line: 81, column: 39, scope: !534, inlinedAt: !2124)
!2129 = !DILocation(line: 81, column: 57, scope: !534, inlinedAt: !2124)
!2130 = !DILocation(line: 82, column: 22, scope: !534, inlinedAt: !2124)
!2131 = !DILocation(line: 82, column: 13, scope: !534, inlinedAt: !2124)
!2132 = !DILocation(line: 84, column: 3, scope: !547, inlinedAt: !2124)
!2133 = !DILocation(line: 85, column: 3, scope: !550, inlinedAt: !2124)
!2134 = !DILocation(line: 86, column: 3, scope: !570, inlinedAt: !2124)
!2135 = !DILocation(line: 86, column: 3, scope: !534, inlinedAt: !2124)
!2136 = !DILocation(line: 87, column: 10, scope: !534, inlinedAt: !2124)
!2137 = !DILocation(line: 88, column: 3, scope: !534, inlinedAt: !2124)
!2138 = !DILocation(line: 89, column: 9, scope: !534, inlinedAt: !2124)
!2139 = !DILocation(line: 90, column: 9, scope: !534, inlinedAt: !2124)
!2140 = !DILocation(line: 91, column: 3, scope: !553, inlinedAt: !2124)
!2141 = !DILocation(line: 335, column: 12, scope: !1537, inlinedAt: !2073)
!2142 = !DILocation(line: 336, column: 5, scope: !1603, inlinedAt: !2073)
!2143 = !DILocation(line: 337, column: 1, scope: !1523, inlinedAt: !2073)
!2144 = !DILocation(line: 510, column: 19, scope: !1215)
!2145 = !DILocation(line: 510, column: 13, scope: !1215)
!2146 = !DILocation(line: 511, column: 9, scope: !1217)
!2147 = !DILocation(line: 515, column: 28, scope: !1219)
!2148 = !DILocation(line: 515, column: 23, scope: !1219)
!2149 = !DILocation(line: 516, column: 17, scope: !1219)
!2150 = !DILocation(line: 516, column: 9, scope: !1219)
!2151 = !DILocation(line: 518, column: 13, scope: !1221)
!2152 = !DILocation(line: 519, column: 13, scope: !1222)
!2153 = !DILocation(line: 522, column: 13, scope: !1225)
!2154 = !DILocation(line: 523, column: 13, scope: !1226)
!2155 = !DILocation(line: 526, column: 13, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2157, file: !1, line: 526, column: 13)
!2157 = distinct !DILexicalBlock(scope: !1223, file: !1, line: 525, column: 20)
!2158 = !DILocation(line: 165, column: 35, scope: !980, inlinedAt: !2159)
!2159 = distinct !DILocation(line: 526, column: 13, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2161, file: !1, line: 526, column: 13)
!2161 = distinct !DILexicalBlock(scope: !2156, file: !1, line: 526, column: 13)
!2162 = !DILocation(line: 165, column: 52, scope: !980, inlinedAt: !2159)
!2163 = !DILocation(line: 165, column: 70, scope: !980, inlinedAt: !2159)
!2164 = !DILocation(line: 166, column: 30, scope: !980, inlinedAt: !2159)
!2165 = !DILocation(line: 166, column: 39, scope: !980, inlinedAt: !2159)
!2166 = !DILocation(line: 167, column: 22, scope: !980, inlinedAt: !2159)
!2167 = !DILocation(line: 167, column: 17, scope: !980, inlinedAt: !2159)
!2168 = !DILocation(line: 168, column: 7, scope: !998, inlinedAt: !2159)
!2169 = !DILocation(line: 168, column: 7, scope: !980, inlinedAt: !2159)
!2170 = !DILocation(line: 169, column: 10, scope: !998, inlinedAt: !2159)
!2171 = !DILocation(line: 170, column: 7, scope: !1002, inlinedAt: !2159)
!2172 = !DILocation(line: 170, column: 7, scope: !980, inlinedAt: !2159)
!2173 = !DILocation(line: 83, column: 3, scope: !544, inlinedAt: !2174)
!2174 = distinct !DILocation(line: 171, column: 3, scope: !980, inlinedAt: !2159)
!2175 = !DILocation(line: 80, column: 35, scope: !534, inlinedAt: !2174)
!2176 = !DILocation(line: 80, column: 44, scope: !534, inlinedAt: !2174)
!2177 = !DILocation(line: 80, column: 63, scope: !534, inlinedAt: !2174)
!2178 = !DILocation(line: 81, column: 39, scope: !534, inlinedAt: !2174)
!2179 = !DILocation(line: 81, column: 57, scope: !534, inlinedAt: !2174)
!2180 = !DILocation(line: 82, column: 22, scope: !534, inlinedAt: !2174)
!2181 = !DILocation(line: 82, column: 13, scope: !534, inlinedAt: !2174)
!2182 = !DILocation(line: 84, column: 3, scope: !547, inlinedAt: !2174)
!2183 = !DILocation(line: 85, column: 3, scope: !550, inlinedAt: !2174)
!2184 = !DILocation(line: 86, column: 3, scope: !570, inlinedAt: !2174)
!2185 = !DILocation(line: 86, column: 3, scope: !534, inlinedAt: !2174)
!2186 = !DILocation(line: 87, column: 10, scope: !534, inlinedAt: !2174)
!2187 = !DILocation(line: 88, column: 3, scope: !534, inlinedAt: !2174)
!2188 = !DILocation(line: 89, column: 9, scope: !534, inlinedAt: !2174)
!2189 = !DILocation(line: 90, column: 9, scope: !534, inlinedAt: !2174)
!2190 = !DILocation(line: 91, column: 3, scope: !553, inlinedAt: !2174)
!2191 = !DILocation(line: 526, column: 13, scope: !2161)
!2192 = !DILocation(line: 526, column: 13, scope: !2160)
!2193 = !DILocation(line: 531, column: 9, scope: !1223)
!2194 = !DILocation(line: 535, column: 17, scope: !1228)
!2195 = !DILocation(line: 535, column: 13, scope: !1228)
!2196 = !DILocation(line: 536, column: 17, scope: !1228)
!2197 = !DILocation(line: 536, column: 13, scope: !1228)
!2198 = !DILocation(line: 537, column: 9, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !1228, file: !1, line: 537, column: 9)
!2200 = !DILocation(line: 537, column: 9, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2199, file: !1, line: 537, column: 9)
!2202 = !DILocation(line: 537, column: 9, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2204, file: !1, line: 537, column: 9)
!2204 = distinct !DILexicalBlock(scope: !2201, file: !1, line: 537, column: 9)
!2205 = !DILocation(line: 537, column: 9, scope: !2204)
!2206 = !DILocation(line: 538, column: 9, scope: !1231)
!2207 = !DILocation(line: 542, column: 9, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2209, file: !1, line: 542, column: 9)
!2209 = distinct !DILexicalBlock(scope: !1107, file: !1, line: 541, column: 20)
!2210 = !DILocation(line: 543, column: 9, scope: !2209)
!2211 = !DILocation(line: 546, column: 22, scope: !1234)
!2212 = !DILocation(line: 546, column: 17, scope: !1234)
!2213 = !DILocation(line: 547, column: 22, scope: !1234)
!2214 = !DILocation(line: 547, column: 17, scope: !1234)
!2215 = !DILocation(line: 548, column: 9, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !1234, file: !1, line: 548, column: 9)
!2217 = !DILocation(line: 548, column: 9, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2219, file: !1, line: 548, column: 9)
!2219 = distinct !DILexicalBlock(scope: !2216, file: !1, line: 548, column: 9)
!2220 = !DILocation(line: 0, scope: !2218)
!2221 = !DILocation(line: 548, column: 9, scope: !2219)
!2222 = !DILocation(line: 548, column: 9, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2218, file: !1, line: 548, column: 9)
!2224 = !DILocation(line: 552, column: 11, scope: !1234)
!2225 = !DILocation(line: 556, column: 9, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2227, file: !1, line: 556, column: 9)
!2227 = distinct !DILexicalBlock(scope: !1107, file: !1, line: 555, column: 19)
!2228 = !DILocation(line: 556, column: 9, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !2230, file: !1, line: 556, column: 9)
!2230 = distinct !DILexicalBlock(scope: !2226, file: !1, line: 556, column: 9)
!2231 = !DILocation(line: 556, column: 9, scope: !2230)
!2232 = !DILocation(line: 556, column: 9, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2229, file: !1, line: 556, column: 9)
!2234 = !DILocation(line: 560, column: 11, scope: !2227)
!2235 = !DILocation(line: 561, column: 9, scope: !2227)
!2236 = !DILocation(line: 564, column: 9, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2238, file: !1, line: 564, column: 9)
!2238 = distinct !DILexicalBlock(scope: !1107, file: !1, line: 563, column: 19)
!2239 = !DILocation(line: 564, column: 9, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2241, file: !1, line: 564, column: 9)
!2241 = distinct !DILexicalBlock(scope: !2237, file: !1, line: 564, column: 9)
!2242 = !DILocalVariable(name: "L", arg: 1, scope: !2243, file: !1, line: 239, type: !192)
!2243 = distinct !DISubprogram(name: "lessequal", scope: !1, file: !1, line: 239, type: !685, isLocal: true, isDefinition: true, scopeLine: 239, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2244)
!2244 = !{!2242, !2245, !2246, !2247}
!2245 = !DILocalVariable(name: "l", arg: 2, scope: !2243, file: !1, line: 239, type: !408)
!2246 = !DILocalVariable(name: "r", arg: 3, scope: !2243, file: !1, line: 239, type: !408)
!2247 = !DILocalVariable(name: "res", scope: !2243, file: !1, line: 240, type: !148)
!2248 = !DILocation(line: 239, column: 34, scope: !2243, inlinedAt: !2249)
!2249 = distinct !DILocation(line: 564, column: 9, scope: !2240)
!2250 = !DILocation(line: 239, column: 51, scope: !2243, inlinedAt: !2249)
!2251 = !DILocation(line: 239, column: 68, scope: !2243, inlinedAt: !2249)
!2252 = !DILocation(line: 241, column: 7, scope: !2253, inlinedAt: !2249)
!2253 = distinct !DILexicalBlock(scope: !2243, file: !1, line: 241, column: 7)
!2254 = !DILocation(line: 241, column: 19, scope: !2253, inlinedAt: !2249)
!2255 = !DILocation(line: 241, column: 16, scope: !2253, inlinedAt: !2249)
!2256 = !DILocation(line: 241, column: 7, scope: !2243, inlinedAt: !2249)
!2257 = !DILocation(line: 242, column: 12, scope: !2253, inlinedAt: !2249)
!2258 = !DILocation(line: 242, column: 5, scope: !2253, inlinedAt: !2249)
!2259 = !DILocation(line: 243, column: 12, scope: !2253, inlinedAt: !2249)
!2260 = !DILocation(line: 244, column: 12, scope: !2261, inlinedAt: !2249)
!2261 = distinct !DILexicalBlock(scope: !2253, file: !1, line: 243, column: 12)
!2262 = !DILocation(line: 244, column: 5, scope: !2261, inlinedAt: !2249)
!2263 = !DILocation(line: 246, column: 21, scope: !2264, inlinedAt: !2249)
!2264 = distinct !DILexicalBlock(scope: !2261, file: !1, line: 245, column: 12)
!2265 = !DILocation(line: 246, column: 36, scope: !2264, inlinedAt: !2249)
!2266 = !DILocation(line: 203, column: 37, scope: !710, inlinedAt: !2267)
!2267 = distinct !DILocation(line: 246, column: 12, scope: !2264, inlinedAt: !2249)
!2268 = !DILocation(line: 203, column: 56, scope: !710, inlinedAt: !2267)
!2269 = !DILocation(line: 204, column: 19, scope: !710, inlinedAt: !2267)
!2270 = !DILocation(line: 204, column: 15, scope: !710, inlinedAt: !2267)
!2271 = !DILocation(line: 205, column: 23, scope: !710, inlinedAt: !2267)
!2272 = !DILocation(line: 205, column: 10, scope: !710, inlinedAt: !2267)
!2273 = !DILocation(line: 206, column: 19, scope: !710, inlinedAt: !2267)
!2274 = !DILocation(line: 206, column: 15, scope: !710, inlinedAt: !2267)
!2275 = !DILocation(line: 207, column: 23, scope: !710, inlinedAt: !2267)
!2276 = !DILocation(line: 207, column: 10, scope: !710, inlinedAt: !2267)
!2277 = !DILocation(line: 209, column: 16, scope: !722, inlinedAt: !2267)
!2278 = !DILocation(line: 209, column: 9, scope: !722, inlinedAt: !2267)
!2279 = !DILocation(line: 210, column: 14, scope: !727, inlinedAt: !2267)
!2280 = !DILocation(line: 210, column: 9, scope: !722, inlinedAt: !2267)
!2281 = !DILocation(line: 212, column: 20, scope: !726, inlinedAt: !2267)
!2282 = !DILocation(line: 212, column: 14, scope: !726, inlinedAt: !2267)
!2283 = !DILocation(line: 213, column: 15, scope: !746, inlinedAt: !2267)
!2284 = !DILocation(line: 0, scope: !749, inlinedAt: !2267)
!2285 = !DILocation(line: 213, column: 11, scope: !726, inlinedAt: !2267)
!2286 = !DILocation(line: 214, column: 16, scope: !746, inlinedAt: !2267)
!2287 = !DILocation(line: 214, column: 9, scope: !746, inlinedAt: !2267)
!2288 = !DILocation(line: 215, column: 16, scope: !746, inlinedAt: !2267)
!2289 = !DILocation(line: 218, column: 10, scope: !726, inlinedAt: !2267)
!2290 = !DILocation(line: 219, column: 9, scope: !726, inlinedAt: !2267)
!2291 = !DILocation(line: 219, column: 20, scope: !726, inlinedAt: !2267)
!2292 = !DILocation(line: 219, column: 30, scope: !726, inlinedAt: !2267)
!2293 = !DILocation(line: 219, column: 41, scope: !726, inlinedAt: !2267)
!2294 = !DILocation(line: 246, column: 51, scope: !2264, inlinedAt: !2249)
!2295 = !DILocation(line: 246, column: 5, scope: !2264, inlinedAt: !2249)
!2296 = !DILocation(line: 190, column: 37, scope: !759, inlinedAt: !2297)
!2297 = distinct !DILocation(line: 247, column: 19, scope: !2298, inlinedAt: !2249)
!2298 = distinct !DILexicalBlock(scope: !2264, file: !1, line: 247, column: 12)
!2299 = !DILocation(line: 190, column: 54, scope: !759, inlinedAt: !2297)
!2300 = !DILocation(line: 190, column: 72, scope: !759, inlinedAt: !2297)
!2301 = !DILocation(line: 191, column: 30, scope: !759, inlinedAt: !2297)
!2302 = !DILocation(line: 192, column: 23, scope: !759, inlinedAt: !2297)
!2303 = !DILocation(line: 192, column: 17, scope: !759, inlinedAt: !2297)
!2304 = !DILocation(line: 194, column: 7, scope: !778, inlinedAt: !2297)
!2305 = !DILocation(line: 194, column: 7, scope: !759, inlinedAt: !2297)
!2306 = !DILocation(line: 195, column: 9, scope: !759, inlinedAt: !2297)
!2307 = !DILocation(line: 193, column: 17, scope: !759, inlinedAt: !2297)
!2308 = !DILocation(line: 196, column: 8, scope: !783, inlinedAt: !2297)
!2309 = !DILocation(line: 196, column: 7, scope: !759, inlinedAt: !2297)
!2310 = !DILocation(line: 198, column: 19, scope: !759, inlinedAt: !2297)
!2311 = !DILocation(line: 80, column: 35, scope: !534, inlinedAt: !2312)
!2312 = distinct !DILocation(line: 198, column: 3, scope: !759, inlinedAt: !2297)
!2313 = !DILocation(line: 80, column: 44, scope: !534, inlinedAt: !2312)
!2314 = !DILocation(line: 80, column: 63, scope: !534, inlinedAt: !2312)
!2315 = !DILocation(line: 81, column: 39, scope: !534, inlinedAt: !2312)
!2316 = !DILocation(line: 81, column: 57, scope: !534, inlinedAt: !2312)
!2317 = !DILocation(line: 82, column: 22, scope: !534, inlinedAt: !2312)
!2318 = !DILocation(line: 82, column: 13, scope: !534, inlinedAt: !2312)
!2319 = !DILocation(line: 83, column: 3, scope: !544, inlinedAt: !2312)
!2320 = !DILocation(line: 84, column: 3, scope: !547, inlinedAt: !2312)
!2321 = !DILocation(line: 85, column: 3, scope: !550, inlinedAt: !2312)
!2322 = !DILocation(line: 86, column: 3, scope: !570, inlinedAt: !2312)
!2323 = !DILocation(line: 86, column: 3, scope: !534, inlinedAt: !2312)
!2324 = !DILocation(line: 87, column: 10, scope: !534, inlinedAt: !2312)
!2325 = !DILocation(line: 88, column: 3, scope: !534, inlinedAt: !2312)
!2326 = !DILocation(line: 89, column: 9, scope: !534, inlinedAt: !2312)
!2327 = !DILocation(line: 90, column: 9, scope: !534, inlinedAt: !2312)
!2328 = !DILocation(line: 91, column: 3, scope: !553, inlinedAt: !2312)
!2329 = !DILocation(line: 199, column: 11, scope: !759, inlinedAt: !2297)
!2330 = !DILocation(line: 199, column: 3, scope: !759, inlinedAt: !2297)
!2331 = !DILocation(line: 240, column: 7, scope: !2243, inlinedAt: !2249)
!2332 = !DILocation(line: 190, column: 37, scope: !759, inlinedAt: !2333)
!2333 = distinct !DILocation(line: 249, column: 19, scope: !2334, inlinedAt: !2249)
!2334 = distinct !DILexicalBlock(scope: !2298, file: !1, line: 249, column: 12)
!2335 = !DILocation(line: 190, column: 54, scope: !759, inlinedAt: !2333)
!2336 = !DILocation(line: 190, column: 72, scope: !759, inlinedAt: !2333)
!2337 = !DILocation(line: 191, column: 30, scope: !759, inlinedAt: !2333)
!2338 = !DILocation(line: 192, column: 23, scope: !759, inlinedAt: !2333)
!2339 = !DILocation(line: 192, column: 17, scope: !759, inlinedAt: !2333)
!2340 = !DILocation(line: 194, column: 7, scope: !778, inlinedAt: !2333)
!2341 = !DILocation(line: 194, column: 7, scope: !759, inlinedAt: !2333)
!2342 = !DILocation(line: 195, column: 9, scope: !759, inlinedAt: !2333)
!2343 = !DILocation(line: 193, column: 17, scope: !759, inlinedAt: !2333)
!2344 = !DILocation(line: 196, column: 8, scope: !783, inlinedAt: !2333)
!2345 = !DILocation(line: 196, column: 7, scope: !759, inlinedAt: !2333)
!2346 = !DILocation(line: 198, column: 19, scope: !759, inlinedAt: !2333)
!2347 = !DILocation(line: 80, column: 35, scope: !534, inlinedAt: !2348)
!2348 = distinct !DILocation(line: 198, column: 3, scope: !759, inlinedAt: !2333)
!2349 = !DILocation(line: 80, column: 44, scope: !534, inlinedAt: !2348)
!2350 = !DILocation(line: 80, column: 63, scope: !534, inlinedAt: !2348)
!2351 = !DILocation(line: 81, column: 39, scope: !534, inlinedAt: !2348)
!2352 = !DILocation(line: 81, column: 57, scope: !534, inlinedAt: !2348)
!2353 = !DILocation(line: 82, column: 22, scope: !534, inlinedAt: !2348)
!2354 = !DILocation(line: 82, column: 13, scope: !534, inlinedAt: !2348)
!2355 = !DILocation(line: 83, column: 3, scope: !544, inlinedAt: !2348)
!2356 = !DILocation(line: 84, column: 3, scope: !547, inlinedAt: !2348)
!2357 = !DILocation(line: 85, column: 3, scope: !550, inlinedAt: !2348)
!2358 = !DILocation(line: 86, column: 3, scope: !570, inlinedAt: !2348)
!2359 = !DILocation(line: 86, column: 3, scope: !534, inlinedAt: !2348)
!2360 = !DILocation(line: 87, column: 10, scope: !534, inlinedAt: !2348)
!2361 = !DILocation(line: 88, column: 3, scope: !534, inlinedAt: !2348)
!2362 = !DILocation(line: 89, column: 9, scope: !534, inlinedAt: !2348)
!2363 = !DILocation(line: 90, column: 9, scope: !534, inlinedAt: !2348)
!2364 = !DILocation(line: 91, column: 3, scope: !553, inlinedAt: !2348)
!2365 = !DILocation(line: 199, column: 11, scope: !759, inlinedAt: !2333)
!2366 = !DILocation(line: 199, column: 3, scope: !759, inlinedAt: !2333)
!2367 = !DILocation(line: 251, column: 10, scope: !2243, inlinedAt: !2249)
!2368 = !DILocation(line: 251, column: 3, scope: !2243, inlinedAt: !2249)
!2369 = !DILocation(line: 0, scope: !2243, inlinedAt: !2249)
!2370 = !DILocation(line: 564, column: 9, scope: !2241)
!2371 = !DILocation(line: 564, column: 9, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2240, file: !1, line: 564, column: 9)
!2373 = !DILocation(line: 568, column: 11, scope: !2238)
!2374 = !DILocation(line: 569, column: 9, scope: !2238)
!2375 = !DILocation(line: 572, column: 13, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2377, file: !1, line: 572, column: 13)
!2377 = distinct !DILexicalBlock(scope: !1107, file: !1, line: 571, column: 21)
!2378 = !DILocation(line: 572, column: 30, scope: !2376)
!2379 = !DILocation(line: 572, column: 27, scope: !2376)
!2380 = !DILocation(line: 572, column: 13, scope: !2377)
!2381 = !DILocation(line: 573, column: 11, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2376, file: !1, line: 573, column: 11)
!2383 = !DILocation(line: 574, column: 11, scope: !2377)
!2384 = !DILocation(line: 575, column: 9, scope: !2377)
!2385 = !DILocation(line: 578, column: 22, scope: !1237)
!2386 = !DILocation(line: 578, column: 17, scope: !1237)
!2387 = !DILocation(line: 579, column: 13, scope: !1241)
!2388 = !DILocation(line: 579, column: 30, scope: !1241)
!2389 = !DILocation(line: 579, column: 27, scope: !1241)
!2390 = !DILocation(line: 579, column: 13, scope: !1237)
!2391 = !DILocation(line: 580, column: 11, scope: !1239)
!2392 = !DILocation(line: 581, column: 11, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !1240, file: !1, line: 581, column: 11)
!2394 = !DILocation(line: 582, column: 9, scope: !1240)
!2395 = !DILocation(line: 583, column: 11, scope: !1237)
!2396 = !DILocation(line: 587, column: 17, scope: !1244)
!2397 = !DILocation(line: 587, column: 13, scope: !1244)
!2398 = !DILocation(line: 588, column: 24, scope: !1244)
!2399 = !DILocation(line: 588, column: 36, scope: !1244)
!2400 = !DILocation(line: 588, column: 13, scope: !1244)
!2401 = !DILocation(line: 589, column: 15, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !1244, file: !1, line: 589, column: 13)
!2403 = !DILocation(line: 589, column: 13, scope: !1244)
!2404 = !DILocation(line: 589, column: 32, scope: !2402)
!2405 = !DILocation(line: 589, column: 28, scope: !2402)
!2406 = !DILocation(line: 589, column: 21, scope: !2402)
!2407 = !DILocation(line: 590, column: 20, scope: !1244)
!2408 = !DILocation(line: 591, column: 17, scope: !1244)
!2409 = !DILocation(line: 591, column: 9, scope: !1244)
!2410 = !DILocation(line: 593, column: 23, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2412, file: !1, line: 592, column: 24)
!2412 = distinct !DILexicalBlock(scope: !1244, file: !1, line: 591, column: 48)
!2413 = !DILocation(line: 594, column: 13, scope: !2411)
!2414 = !DILocation(line: 598, column: 26, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2416, file: !1, line: 598, column: 17)
!2416 = distinct !DILexicalBlock(scope: !2412, file: !1, line: 596, column: 22)
!2417 = !DILocation(line: 598, column: 17, scope: !2416)
!2418 = !DILocation(line: 598, column: 44, scope: !2415)
!2419 = !DILocation(line: 598, column: 48, scope: !2415)
!2420 = !{!1338, !513, i64 16}
!2421 = !DILocation(line: 598, column: 39, scope: !2415)
!2422 = !DILocation(line: 598, column: 32, scope: !2415)
!2423 = !DILocation(line: 599, column: 23, scope: !2416)
!2424 = !DILocation(line: 600, column: 13, scope: !2416)
!2425 = !DILocation(line: 608, column: 17, scope: !1247)
!2426 = !DILocation(line: 608, column: 13, scope: !1247)
!2427 = !DILocation(line: 609, column: 15, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !1247, file: !1, line: 609, column: 13)
!2429 = !DILocation(line: 609, column: 13, scope: !1247)
!2430 = !DILocation(line: 609, column: 32, scope: !2428)
!2431 = !DILocation(line: 609, column: 28, scope: !2428)
!2432 = !DILocation(line: 609, column: 21, scope: !2428)
!2433 = !DILocation(line: 610, column: 20, scope: !1247)
!2434 = !DILocation(line: 612, column: 17, scope: !1247)
!2435 = !DILocation(line: 612, column: 9, scope: !1247)
!2436 = !DILocation(line: 615, column: 31, scope: !1249)
!2437 = !DILocation(line: 615, column: 23, scope: !1249)
!2438 = !DILocation(line: 617, column: 30, scope: !1249)
!2439 = !DILocation(line: 617, column: 19, scope: !1249)
!2440 = !DILocation(line: 618, column: 35, scope: !1249)
!2441 = !DILocation(line: 618, column: 19, scope: !1249)
!2442 = !DILocation(line: 619, column: 20, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !1249, file: !1, line: 619, column: 17)
!2444 = !{!516, !513, i64 152}
!2445 = !DILocation(line: 619, column: 17, scope: !2443)
!2446 = !DILocation(line: 0, scope: !2443)
!2447 = !DILocation(line: 619, column: 17, scope: !1249)
!2448 = !DILocation(line: 619, column: 49, scope: !2443)
!2449 = !{!1338, !513, i64 0}
!2450 = !DILocation(line: 619, column: 31, scope: !2443)
!2451 = !DILocation(line: 620, column: 38, scope: !1249)
!2452 = !DILocation(line: 620, column: 54, scope: !1249)
!2453 = !DILocation(line: 620, column: 59, scope: !1249)
!2454 = !DILocation(line: 620, column: 43, scope: !1249)
!2455 = !DILocation(line: 620, column: 32, scope: !1249)
!2456 = !DILocation(line: 620, column: 21, scope: !1249)
!2457 = !DILocation(line: 616, column: 17, scope: !1249)
!2458 = !DILocation(line: 621, column: 42, scope: !1256)
!2459 = !DILocation(line: 621, column: 37, scope: !1256)
!2460 = !DILocation(line: 621, column: 13, scope: !1257)
!2461 = !DILocation(line: 622, column: 15, scope: !1255)
!2462 = !DILocation(line: 621, column: 50, scope: !1256)
!2463 = !DILocation(line: 621, column: 32, scope: !1256)
!2464 = !DILocation(line: 0, scope: !1249)
!2465 = distinct !{!2465, !2460, !2466}
!2466 = !DILocation(line: 622, column: 15, scope: !1257)
!2467 = !DILocation(line: 623, column: 30, scope: !1249)
!2468 = !DILocation(line: 623, column: 17, scope: !1249)
!2469 = !DILocation(line: 623, column: 21, scope: !1249)
!2470 = !DILocation(line: 625, column: 30, scope: !1249)
!2471 = !DILocation(line: 625, column: 17, scope: !1249)
!2472 = !DILocation(line: 625, column: 25, scope: !1249)
!2473 = !{!1338, !513, i64 24}
!2474 = !DILocation(line: 626, column: 17, scope: !1249)
!2475 = !DILocation(line: 626, column: 26, scope: !1249)
!2476 = !{!1338, !427, i64 36}
!2477 = !DILocation(line: 627, column: 18, scope: !1249)
!2478 = !DILocation(line: 631, column: 23, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !1250, file: !1, line: 630, column: 22)
!2480 = !DILocation(line: 632, column: 13, scope: !2479)
!2481 = !DILocation(line: 640, column: 17, scope: !1260)
!2482 = !DILocation(line: 640, column: 13, scope: !1260)
!2483 = !DILocation(line: 641, column: 15, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !1260, file: !1, line: 641, column: 13)
!2485 = !DILocation(line: 641, column: 13, scope: !1260)
!2486 = !DILocation(line: 641, column: 32, scope: !2484)
!2487 = !DILocation(line: 641, column: 34, scope: !2484)
!2488 = !DILocation(line: 641, column: 28, scope: !2484)
!2489 = !DILocation(line: 641, column: 21, scope: !2484)
!2490 = !DILocation(line: 642, column: 16, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !1260, file: !1, line: 642, column: 13)
!2492 = !DILocation(line: 642, column: 13, scope: !2491)
!2493 = !DILocation(line: 642, column: 13, scope: !1260)
!2494 = !DILocation(line: 642, column: 27, scope: !2491)
!2495 = !DILocation(line: 643, column: 20, scope: !1260)
!2496 = !DILocation(line: 644, column: 13, scope: !1260)
!2497 = !DILocation(line: 645, column: 13, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !1260, file: !1, line: 645, column: 13)
!2499 = !DILocation(line: 645, column: 26, scope: !2498)
!2500 = !DILocation(line: 645, column: 13, scope: !1260)
!2501 = !DILocation(line: 648, column: 15, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2503, file: !1, line: 648, column: 15)
!2503 = distinct !DILexicalBlock(scope: !2498, file: !1, line: 647, column: 14)
!2504 = !DILocation(line: 648, column: 15, scope: !2503)
!2505 = !DILocation(line: 648, column: 30, scope: !2502)
!2506 = !DILocation(line: 648, column: 34, scope: !2502)
!2507 = !DILocation(line: 648, column: 25, scope: !2502)
!2508 = !DILocation(line: 648, column: 18, scope: !2502)
!2509 = !DILocation(line: 655, column: 27, scope: !1262)
!2510 = !DILocation(line: 655, column: 20, scope: !1262)
!2511 = !DILocation(line: 656, column: 26, scope: !1262)
!2512 = !DILocation(line: 656, column: 20, scope: !1262)
!2513 = !DILocation(line: 657, column: 28, scope: !1262)
!2514 = !DILocation(line: 657, column: 20, scope: !1262)
!2515 = !DILocation(line: 658, column: 13, scope: !1268)
!2516 = !DILocation(line: 658, column: 13, scope: !1262)
!2517 = !DILocation(line: 658, column: 35, scope: !1268)
!2518 = !DILocation(line: 659, column: 35, scope: !1268)
!2519 = !DILocation(line: 660, column: 11, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !1267, file: !1, line: 660, column: 11)
!2521 = !DILocation(line: 661, column: 11, scope: !1266)
!2522 = !DILocation(line: 662, column: 11, scope: !1270)
!2523 = !DILocation(line: 663, column: 9, scope: !1267)
!2524 = !DILocation(line: 667, column: 23, scope: !1272)
!2525 = !DILocation(line: 668, column: 34, scope: !1272)
!2526 = !DILocation(line: 668, column: 23, scope: !1272)
!2527 = !DILocation(line: 669, column: 33, scope: !1272)
!2528 = !DILocation(line: 669, column: 23, scope: !1272)
!2529 = !DILocation(line: 670, column: 20, scope: !1272)
!2530 = !DILocation(line: 671, column: 14, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !1272, file: !1, line: 671, column: 13)
!2532 = !DILocation(line: 35, column: 44, scope: !405, inlinedAt: !2533)
!2533 = distinct !DILocation(line: 671, column: 14, scope: !2531)
!2534 = !DILocation(line: 35, column: 57, scope: !405, inlinedAt: !2533)
!2535 = !DILocation(line: 36, column: 3, scope: !405, inlinedAt: !2533)
!2536 = !DILocation(line: 37, column: 7, scope: !405, inlinedAt: !2533)
!2537 = !DILocation(line: 38, column: 37, scope: !417, inlinedAt: !2533)
!2538 = !DILocation(line: 36, column: 14, scope: !405, inlinedAt: !2533)
!2539 = !DILocation(line: 38, column: 26, scope: !417, inlinedAt: !2533)
!2540 = !DILocation(line: 38, column: 7, scope: !405, inlinedAt: !2533)
!2541 = !DILocation(line: 39, column: 5, scope: !415, inlinedAt: !2533)
!2542 = !DILocation(line: 44, column: 1, scope: !405, inlinedAt: !2533)
!2543 = !DILocation(line: 671, column: 13, scope: !1272)
!2544 = !DILocation(line: 672, column: 11, scope: !2531)
!2545 = !DILocation(line: 673, column: 19, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2531, file: !1, line: 673, column: 18)
!2547 = !DILocation(line: 35, column: 44, scope: !405, inlinedAt: !2548)
!2548 = distinct !DILocation(line: 673, column: 19, scope: !2546)
!2549 = !DILocation(line: 35, column: 57, scope: !405, inlinedAt: !2548)
!2550 = !DILocation(line: 36, column: 3, scope: !405, inlinedAt: !2548)
!2551 = !DILocation(line: 37, column: 7, scope: !405, inlinedAt: !2548)
!2552 = !DILocation(line: 38, column: 37, scope: !417, inlinedAt: !2548)
!2553 = !DILocation(line: 36, column: 14, scope: !405, inlinedAt: !2548)
!2554 = !DILocation(line: 38, column: 26, scope: !417, inlinedAt: !2548)
!2555 = !DILocation(line: 38, column: 7, scope: !405, inlinedAt: !2548)
!2556 = !DILocation(line: 39, column: 5, scope: !415, inlinedAt: !2548)
!2557 = !DILocation(line: 44, column: 1, scope: !405, inlinedAt: !2548)
!2558 = !DILocation(line: 673, column: 18, scope: !2531)
!2559 = !DILocation(line: 674, column: 11, scope: !2546)
!2560 = !DILocation(line: 675, column: 19, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2546, file: !1, line: 675, column: 18)
!2562 = !DILocation(line: 35, column: 44, scope: !405, inlinedAt: !2563)
!2563 = distinct !DILocation(line: 675, column: 19, scope: !2561)
!2564 = !DILocation(line: 35, column: 57, scope: !405, inlinedAt: !2563)
!2565 = !DILocation(line: 36, column: 3, scope: !405, inlinedAt: !2563)
!2566 = !DILocation(line: 37, column: 7, scope: !405, inlinedAt: !2563)
!2567 = !DILocation(line: 38, column: 37, scope: !417, inlinedAt: !2563)
!2568 = !DILocation(line: 36, column: 14, scope: !405, inlinedAt: !2563)
!2569 = !DILocation(line: 38, column: 26, scope: !417, inlinedAt: !2563)
!2570 = !DILocation(line: 38, column: 7, scope: !405, inlinedAt: !2563)
!2571 = !DILocation(line: 39, column: 5, scope: !415, inlinedAt: !2563)
!2572 = !DILocation(line: 44, column: 1, scope: !405, inlinedAt: !2563)
!2573 = !DILocation(line: 675, column: 18, scope: !2546)
!2574 = !DILocation(line: 676, column: 11, scope: !2561)
!2575 = !DILocation(line: 677, column: 9, scope: !1276)
!2576 = !DILocation(line: 678, column: 9, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !1272, file: !1, line: 678, column: 9)
!2578 = !DILocation(line: 682, column: 23, scope: !1278)
!2579 = !DILocation(line: 682, column: 15, scope: !1278)
!2580 = !DILocation(line: 683, column: 9, scope: !1280)
!2581 = !DILocation(line: 684, column: 9, scope: !1283)
!2582 = !DILocation(line: 685, column: 9, scope: !1286)
!2583 = !DILocation(line: 686, column: 20, scope: !1278)
!2584 = !DILocation(line: 686, column: 16, scope: !1278)
!2585 = !DILocation(line: 687, column: 9, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !1278, file: !1, line: 687, column: 9)
!2587 = !DILocation(line: 687, column: 9, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2586, file: !1, line: 687, column: 9)
!2589 = !DILocation(line: 688, column: 21, scope: !1278)
!2590 = !DILocation(line: 688, column: 25, scope: !1278)
!2591 = !DILocation(line: 688, column: 16, scope: !1278)
!2592 = !DILocation(line: 689, column: 14, scope: !1278)
!2593 = !DILocation(line: 689, column: 20, scope: !1278)
!2594 = !DILocation(line: 690, column: 14, scope: !1291)
!2595 = !DILocation(line: 690, column: 13, scope: !1278)
!2596 = !DILocation(line: 691, column: 11, scope: !1289)
!2597 = !DILocation(line: 692, column: 11, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !1290, file: !1, line: 692, column: 11)
!2599 = !DILocation(line: 693, column: 9, scope: !1290)
!2600 = !DILocation(line: 0, scope: !2598)
!2601 = !DILocation(line: 694, column: 11, scope: !1278)
!2602 = !DILocation(line: 698, column: 17, scope: !1294)
!2603 = !DILocation(line: 698, column: 13, scope: !1294)
!2604 = !DILocation(line: 699, column: 17, scope: !1294)
!2605 = !DILocation(line: 699, column: 13, scope: !1294)
!2606 = !DILocation(line: 702, column: 15, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !1294, file: !1, line: 702, column: 13)
!2608 = !DILocation(line: 702, column: 13, scope: !1294)
!2609 = !DILocation(line: 703, column: 15, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2607, file: !1, line: 702, column: 21)
!2611 = !DILocation(line: 703, column: 37, scope: !2610)
!2612 = !DILocation(line: 704, column: 23, scope: !2610)
!2613 = !DILocation(line: 704, column: 27, scope: !2610)
!2614 = !DILocation(line: 704, column: 18, scope: !2610)
!2615 = !DILocation(line: 705, column: 9, scope: !2610)
!2616 = !DILocation(line: 0, scope: !1294)
!2617 = !DILocation(line: 706, column: 15, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !1294, file: !1, line: 706, column: 13)
!2619 = !DILocation(line: 706, column: 13, scope: !1294)
!2620 = !DILocation(line: 706, column: 25, scope: !2618)
!2621 = !DILocation(line: 706, column: 21, scope: !2618)
!2622 = !DILocation(line: 707, column: 9, scope: !2623)
!2623 = distinct !DILexicalBlock(scope: !2624, file: !1, line: 707, column: 9)
!2624 = distinct !DILexicalBlock(scope: !1294, file: !1, line: 707, column: 9)
!2625 = !DILocation(line: 707, column: 9, scope: !2624)
!2626 = !DILocation(line: 708, column: 13, scope: !1294)
!2627 = !DILocation(line: 701, column: 16, scope: !1294)
!2628 = !DILocation(line: 709, column: 22, scope: !1294)
!2629 = !DILocation(line: 709, column: 42, scope: !1294)
!2630 = !DILocation(line: 700, column: 13, scope: !1294)
!2631 = !DILocation(line: 710, column: 23, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !1294, file: !1, line: 710, column: 13)
!2633 = !{!512, !427, i64 56}
!2634 = !DILocation(line: 710, column: 18, scope: !2632)
!2635 = !DILocation(line: 710, column: 13, scope: !1294)
!2636 = !DILocation(line: 711, column: 11, scope: !2632)
!2637 = !DILocation(line: 712, column: 18, scope: !1300)
!2638 = !DILocation(line: 712, column: 9, scope: !1301)
!2639 = !DILocation(line: 713, column: 27, scope: !1299)
!2640 = !DILocation(line: 713, column: 19, scope: !1299)
!2641 = !DILocation(line: 714, column: 11, scope: !1303)
!2642 = !DILocation(line: 715, column: 11, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2644, file: !1, line: 715, column: 11)
!2644 = distinct !DILexicalBlock(scope: !1299, file: !1, line: 715, column: 11)
!2645 = !DILocation(line: 715, column: 11, scope: !2644)
!2646 = !DILocation(line: 712, column: 24, scope: !1300)
!2647 = !DILocation(line: 720, column: 9, scope: !2648)
!2648 = distinct !DILexicalBlock(scope: !1107, file: !1, line: 719, column: 22)
!2649 = !DILocation(line: 721, column: 9, scope: !2648)
!2650 = !DILocation(line: 727, column: 17, scope: !1306)
!2651 = !DILocation(line: 727, column: 20, scope: !1306)
!2652 = !{!1347, !513, i64 32}
!2653 = !DILocation(line: 727, column: 22, scope: !1306)
!2654 = !DILocation(line: 727, column: 13, scope: !1306)
!2655 = !DILocation(line: 724, column: 16, scope: !1306)
!2656 = !DILocation(line: 728, column: 18, scope: !1306)
!2657 = !{!1347, !425, i64 112}
!2658 = !DILocation(line: 728, column: 15, scope: !1306)
!2659 = !DILocation(line: 726, column: 13, scope: !1306)
!2660 = !DILocation(line: 729, column: 44, scope: !1306)
!2661 = !DILocation(line: 729, column: 15, scope: !1306)
!2662 = !DILocation(line: 725, column: 18, scope: !1306)
!2663 = !DILocation(line: 730, column: 16, scope: !1306)
!2664 = !DILocation(line: 730, column: 18, scope: !1306)
!2665 = !DILocation(line: 726, column: 18, scope: !1306)
!2666 = !DILocation(line: 731, column: 20, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2668, file: !1, line: 731, column: 9)
!2668 = distinct !DILexicalBlock(scope: !1306, file: !1, line: 731, column: 9)
!2669 = !DILocation(line: 731, column: 9, scope: !2668)
!2670 = !DILocation(line: 732, column: 15, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2672, file: !1, line: 732, column: 15)
!2672 = distinct !DILexicalBlock(scope: !2667, file: !1, line: 731, column: 37)
!2673 = !DILocation(line: 732, column: 31, scope: !2671)
!2674 = !DILocation(line: 0, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !2671, file: !1, line: 734, column: 16)
!2676 = !DILocation(line: 732, column: 15, scope: !2672)
!2677 = !DILocation(line: 733, column: 32, scope: !2671)
!2678 = !DILocation(line: 733, column: 13, scope: !2671)
!2679 = !DILocation(line: 733, column: 30, scope: !2671)
!2680 = !DILocation(line: 736, column: 55, scope: !2675)
!2681 = !DILocation(line: 736, column: 32, scope: !2675)
!2682 = !DILocation(line: 736, column: 13, scope: !2675)
!2683 = !DILocation(line: 736, column: 30, scope: !2675)
!2684 = !DILocation(line: 731, column: 27, scope: !2667)
!2685 = !DILocation(line: 731, column: 33, scope: !2667)
!2686 = distinct !{!2686, !2669, !2687}
!2687 = !DILocation(line: 738, column: 9, scope: !2668)
!2688 = !DILocation(line: 739, column: 9, scope: !1315)
!2689 = !DILocation(line: 0, scope: !2667)
!2690 = !DILocation(line: 740, column: 9, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !1306, file: !1, line: 740, column: 9)
!2692 = !DILocation(line: 740, column: 9, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2694, file: !1, line: 740, column: 9)
!2694 = distinct !DILexicalBlock(scope: !2695, file: !1, line: 740, column: 9)
!2695 = distinct !DILexicalBlock(scope: !2691, file: !1, line: 740, column: 9)
!2696 = !DILocation(line: 740, column: 9, scope: !2694)
!2697 = !DILocation(line: 744, column: 17, scope: !1317)
!2698 = !DILocation(line: 744, column: 29, scope: !1317)
!2699 = !DILocation(line: 744, column: 13, scope: !1317)
!2700 = !DILocation(line: 746, column: 27, scope: !1317)
!2701 = !DILocation(line: 746, column: 19, scope: !1317)
!2702 = !DILocation(line: 747, column: 17, scope: !1317)
!2703 = !DILocation(line: 747, column: 53, scope: !1317)
!2704 = !DILocation(line: 747, column: 56, scope: !1317)
!2705 = !{!1347, !425, i64 113}
!2706 = !DILocation(line: 747, column: 49, scope: !1317)
!2707 = !DILocation(line: 747, column: 66, scope: !1317)
!2708 = !DILocation(line: 747, column: 13, scope: !1317)
!2709 = !DILocation(line: 748, column: 15, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !1317, file: !1, line: 748, column: 13)
!2711 = !DILocation(line: 748, column: 13, scope: !1317)
!2712 = !DILocation(line: 749, column: 11, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !2714, file: !1, line: 749, column: 11)
!2714 = distinct !DILexicalBlock(scope: !2710, file: !1, line: 748, column: 31)
!2715 = !DILocation(line: 749, column: 11, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2717, file: !1, line: 749, column: 11)
!2717 = distinct !DILexicalBlock(scope: !2713, file: !1, line: 749, column: 11)
!2718 = !DILocation(line: 749, column: 11, scope: !2717)
!2719 = !DILocation(line: 750, column: 16, scope: !2714)
!2720 = !DILocation(line: 752, column: 23, scope: !2714)
!2721 = !DILocation(line: 752, column: 18, scope: !2714)
!2722 = !DILocation(line: 753, column: 9, scope: !2714)
!2723 = !DILocation(line: 0, scope: !1317)
!2724 = !DILocation(line: 0, scope: !1381)
!2725 = !DILocation(line: 745, column: 13, scope: !1317)
!2726 = !DILocation(line: 754, column: 23, scope: !1326)
!2727 = !DILocation(line: 754, column: 9, scope: !1327)
!2728 = !DILocation(line: 755, column: 17, scope: !1324)
!2729 = !DILocation(line: 755, column: 15, scope: !1325)
!2730 = !DILocation(line: 756, column: 13, scope: !1322)
!2731 = !DILocation(line: 757, column: 11, scope: !1323)
!2732 = !DILocation(line: 754, column: 29, scope: !1326)
!2733 = !DILocation(line: 766, column: 1, scope: !1088)
