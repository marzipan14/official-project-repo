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
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define hidden %struct.lua_TValue* @luaV_tonumber(%struct.lua_TValue* readonly, %struct.lua_TValue*) local_unnamed_addr #0 !dbg !405 {
  %3 = alloca double, align 8
  %4 = bitcast double* %3 to i8*, !dbg !420
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #4, !dbg !420
  %5 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %0, i64 0, i32 1, !dbg !421
  %6 = load i32, i32* %5, align 8, !dbg !421, !tbaa !423
  %7 = icmp eq i32 %6, 3, !dbg !421
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !428
  br i1 %7, label %22, label %8, !dbg !428

; <label>:8:                                      ; preds = %2
  %9 = icmp eq i32 %6, 4, !dbg !429
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !430
  br i1 %9, label %10, label %22, !dbg !430

; <label>:10:                                     ; preds = %8
  %11 = bitcast %struct.lua_TValue* %0 to %union.TString**, !dbg !431
  %12 = load %union.TString*, %union.TString** %11, align 8, !dbg !431, !tbaa !432
  %13 = getelementptr inbounds %union.TString, %union.TString* %12, i64 1, !dbg !431
  %14 = bitcast %union.TString* %13 to i8*, !dbg !431
  %15 = call i32 @luaO_str2d(i8* nonnull %14, double* nonnull %3) #5, !dbg !434
  %16 = icmp eq i32 %15, 0, !dbg !434
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !435
  br i1 %16, label %22, label %17, !dbg !435

; <label>:17:                                     ; preds = %10
  %18 = bitcast double* %3 to i64*, !dbg !436
  %19 = load i64, i64* %18, align 8, !dbg !436, !tbaa !437
  %20 = bitcast %struct.lua_TValue* %1 to i64*, !dbg !436
  store i64 %19, i64* %20, align 8, !dbg !436, !tbaa !432
  %21 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1, i64 0, i32 1, !dbg !436
  store i32 3, i32* %21, align 8, !dbg !436, !tbaa !423
  br label %22, !dbg !439

; <label>:22:                                     ; preds = %8, %10, %2, %17
  %23 = phi %struct.lua_TValue* [ %1, %17 ], [ %0, %2 ], [ null, %10 ], [ null, %8 ], !dbg !440
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !441
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #4, !dbg !442
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !442
  ret %struct.lua_TValue* %23, !dbg !442
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare hidden i32 @luaO_str2d(i8*, double*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define hidden i32 @luaV_tostring(%struct.lua_State*, %struct.lua_TValue* nocapture) local_unnamed_addr #0 !dbg !443 {
  %3 = alloca [32 x i8], align 16
  %4 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1, i64 0, i32 1, !dbg !460
  %5 = load i32, i32* %4, align 8, !dbg !460, !tbaa !423
  %6 = icmp eq i32 %5, 3, !dbg !460
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !461
  br i1 %6, label %7, label %15, !dbg !461

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0, !dbg !462
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #4, !dbg !462
  %9 = bitcast %struct.lua_TValue* %1 to double*, !dbg !464
  %10 = load double, double* %9, align 8, !dbg !464, !tbaa !432
  %11 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), double %10) #5, !dbg !466
  %12 = call i64 @strlen(i8* nonnull %8) #5, !dbg !467
  %13 = call %union.TString* @luaS_newlstr(%struct.lua_State* %0, i8* nonnull %8, i64 %12) #5, !dbg !467
  %14 = bitcast %struct.lua_TValue* %1 to %union.TString**, !dbg !467
  store %union.TString* %13, %union.TString** %14, align 8, !dbg !467, !tbaa !432
  store i32 4, i32* %4, align 8, !dbg !467, !tbaa !423
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #4, !dbg !468
  br label %15

; <label>:15:                                     ; preds = %2, %7
  %16 = phi i32 [ 1, %7 ], [ 0, %2 ], !dbg !469
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !470
  ret i32 %16, !dbg !470
}

; Function Attrs: noredzone
declare dso_local i32 @sprintf(i8*, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden %union.TString* @luaS_newlstr(%struct.lua_State*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define hidden void @luaV_gettable(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*) local_unnamed_addr #0 !dbg !471 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !500
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !501
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %6 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1, i64 0, i32 1
  %7 = load i32, i32* %6, align 8, !dbg !502, !tbaa !423
  br label %8, !dbg !501

; <label>:8:                                      ; preds = %4, %115
  %9 = phi i32 [ %7, %4 ], [ %56, %115 ], !dbg !502
  %10 = phi %struct.lua_TValue* [ %1, %4 ], [ %58, %115 ]
  %11 = phi i32 [ 0, %4 ], [ %116, %115 ]
  %12 = icmp eq i32 %9, 5, !dbg !502
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !503
  br i1 %12, label %13, label %45, !dbg !503

; <label>:13:                                     ; preds = %8
  %14 = bitcast %struct.lua_TValue* %10 to %struct.Table**, !dbg !504
  %15 = load %struct.Table*, %struct.Table** %14, align 8, !dbg !504, !tbaa !432
  %16 = tail call %struct.lua_TValue* @luaH_get(%struct.Table* %15, %struct.lua_TValue* %2) #5, !dbg !506
  %17 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %16, i64 0, i32 1, !dbg !508
  %18 = load i32, i32* %17, align 8, !dbg !508, !tbaa !423
  %19 = icmp eq i32 %18, 0, !dbg !508
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !509
  br i1 %19, label %20, label %38, !dbg !509

; <label>:20:                                     ; preds = %13
  %21 = getelementptr inbounds %struct.Table, %struct.Table* %15, i64 0, i32 5, !dbg !510
  %22 = load %struct.Table*, %struct.Table** %21, align 8, !dbg !510, !tbaa !511
  %23 = icmp eq %struct.Table* %22, null, !dbg !510
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !510
  br i1 %23, label %29, label %24, !dbg !510

; <label>:24:                                     ; preds = %20
  %25 = getelementptr inbounds %struct.Table, %struct.Table* %22, i64 0, i32 3, !dbg !510
  %26 = load i8, i8* %25, align 2, !dbg !510, !tbaa !514
  %27 = and i8 %26, 1, !dbg !510
  %28 = icmp eq i8 %27, 0, !dbg !510
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !510
  br i1 %28, label %30, label %29, !dbg !510

; <label>:29:                                     ; preds = %20, %24
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !516
  br label %38, !dbg !516

; <label>:30:                                     ; preds = %24
  %31 = load %struct.global_State*, %struct.global_State** %5, align 8, !dbg !510, !tbaa !517
  %32 = getelementptr inbounds %struct.global_State, %struct.global_State* %31, i64 0, i32 24, i64 0, !dbg !510
  %33 = load %union.TString*, %union.TString** %32, align 8, !dbg !510, !tbaa !521
  %34 = tail call %struct.lua_TValue* @luaT_gettm(%struct.Table* nonnull %22, i32 0, %union.TString* %33) #5, !dbg !510
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !510
  %35 = icmp eq %struct.lua_TValue* %34, null, !dbg !522
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !516
  br i1 %35, label %38, label %36, !dbg !516

; <label>:36:                                     ; preds = %30
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !523
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %37 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %34, i64 0, i32 1, !dbg !524
  br label %51

; <label>:38:                                     ; preds = %13, %30, %29
  %39 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %16, i64 0, i32 1, !dbg !508
  %40 = bitcast %struct.lua_TValue* %16 to i64*, !dbg !526
  %41 = bitcast %struct.lua_TValue* %3 to i64*, !dbg !526
  %42 = load i64, i64* %40, align 8, !dbg !526
  store i64 %42, i64* %41, align 8, !dbg !526
  %43 = load i32, i32* %39, align 8, !dbg !526, !tbaa !423
  %44 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3, i64 0, i32 1, !dbg !526
  store i32 %43, i32* %44, align 8, !dbg !526, !tbaa !423
  br label %114

; <label>:45:                                     ; preds = %8
  %46 = tail call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* %0, %struct.lua_TValue* nonnull %10, i32 0) #5, !dbg !527
  %47 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %46, i64 0, i32 1, !dbg !527
  %48 = load i32, i32* %47, align 8, !dbg !527, !tbaa !423
  %49 = icmp eq i32 %48, 0, !dbg !527
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !529
  br i1 %49, label %50, label %55, !dbg !529

; <label>:50:                                     ; preds = %45
  tail call void @luaG_typeerror(%struct.lua_State* %0, %struct.lua_TValue* nonnull %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !530
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !530
  br label %51, !dbg !530

; <label>:51:                                     ; preds = %50, %36
  %52 = phi i32* [ %47, %50 ], [ %37, %36 ]
  %53 = phi %struct.lua_TValue* [ %46, %50 ], [ %34, %36 ]
  %54 = load i32, i32* %52, align 8, !dbg !524, !tbaa !423
  br label %55, !dbg !524

; <label>:55:                                     ; preds = %51, %45
  %56 = phi i32 [ %54, %51 ], [ %48, %45 ], !dbg !524
  %57 = phi i32* [ %52, %51 ], [ %47, %45 ], !dbg !524
  %58 = phi %struct.lua_TValue* [ %53, %51 ], [ %46, %45 ], !dbg !531
  %59 = icmp eq i32 %56, 6, !dbg !524
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !532
  br i1 %59, label %60, label %115, !dbg !532

; <label>:60:                                     ; preds = %55
  %61 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %10, i64 0, i32 1, !dbg !502
  %62 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 10, !dbg !562
  %63 = bitcast %struct.lua_TValue** %62 to i64*, !dbg !562
  %64 = load i64, i64* %63, align 8, !dbg !562, !tbaa !563
  %65 = ptrtoint %struct.lua_TValue* %3 to i64, !dbg !562
  %66 = sub i64 %65, %64, !dbg !562
  %67 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !565
  %68 = load %struct.lua_TValue*, %struct.lua_TValue** %67, align 8, !dbg !565, !tbaa !566
  %69 = bitcast %struct.lua_TValue* %58 to i64*, !dbg !565
  %70 = bitcast %struct.lua_TValue* %68 to i64*, !dbg !565
  %71 = load i64, i64* %69, align 8, !dbg !565
  store i64 %71, i64* %70, align 8, !dbg !565
  %72 = load i32, i32* %57, align 8, !dbg !565, !tbaa !423
  %73 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %68, i64 0, i32 1, !dbg !565
  store i32 %72, i32* %73, align 8, !dbg !565, !tbaa !423
  %74 = load %struct.lua_TValue*, %struct.lua_TValue** %67, align 8, !dbg !567, !tbaa !566
  %75 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %74, i64 1, !dbg !567
  %76 = bitcast %struct.lua_TValue* %10 to i64*, !dbg !567
  %77 = bitcast %struct.lua_TValue* %75 to i64*, !dbg !567
  %78 = load i64, i64* %76, align 8, !dbg !567
  store i64 %78, i64* %77, align 8, !dbg !567
  %79 = load i32, i32* %61, align 8, !dbg !567, !tbaa !423
  %80 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %74, i64 1, i32 1, !dbg !567
  store i32 %79, i32* %80, align 8, !dbg !567, !tbaa !423
  %81 = load %struct.lua_TValue*, %struct.lua_TValue** %67, align 8, !dbg !568, !tbaa !566
  %82 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %81, i64 2, !dbg !568
  %83 = bitcast %struct.lua_TValue* %2 to i64*, !dbg !568
  %84 = bitcast %struct.lua_TValue* %82 to i64*, !dbg !568
  %85 = load i64, i64* %83, align 8, !dbg !568
  store i64 %85, i64* %84, align 8, !dbg !568
  %86 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i64 0, i32 1, !dbg !568
  %87 = load i32, i32* %86, align 8, !dbg !568, !tbaa !423
  %88 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %81, i64 2, i32 1, !dbg !568
  store i32 %87, i32* %88, align 8, !dbg !568, !tbaa !423
  %89 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 9, !dbg !569
  %90 = bitcast %struct.lua_TValue** %89 to i64*, !dbg !569
  %91 = load i64, i64* %90, align 8, !dbg !569, !tbaa !571
  %92 = bitcast %struct.lua_TValue** %67 to i64*, !dbg !569
  %93 = load i64, i64* %92, align 8, !dbg !569, !tbaa !566
  %94 = sub i64 %91, %93, !dbg !569
  %95 = icmp slt i64 %94, 49, !dbg !569
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !572
  %96 = inttoptr i64 %93 to %struct.lua_TValue*, !dbg !572
  br i1 %95, label %97, label %99, !dbg !572

; <label>:97:                                     ; preds = %60
  tail call void @luaD_growstack(%struct.lua_State* nonnull %0, i32 3) #5, !dbg !569
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !569
  %98 = load %struct.lua_TValue*, %struct.lua_TValue** %67, align 8, !dbg !573, !tbaa !566
  br label %99, !dbg !569

; <label>:99:                                     ; preds = %60, %97
  %100 = phi %struct.lua_TValue* [ %96, %60 ], [ %98, %97 ], !dbg !573
  %101 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %100, i64 3, !dbg !573
  store %struct.lua_TValue* %101, %struct.lua_TValue** %67, align 8, !dbg !573, !tbaa !566
  tail call void @luaD_call(%struct.lua_State* nonnull %0, %struct.lua_TValue* %100, i32 1) #5, !dbg !574
  %102 = bitcast %struct.lua_TValue** %62 to i8**, !dbg !575
  %103 = load i8*, i8** %102, align 8, !dbg !575, !tbaa !563
  %104 = getelementptr inbounds i8, i8* %103, i64 %66, !dbg !575
  %105 = load %struct.lua_TValue*, %struct.lua_TValue** %67, align 8, !dbg !576, !tbaa !566
  %106 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %105, i64 -1, !dbg !576
  store %struct.lua_TValue* %106, %struct.lua_TValue** %67, align 8, !dbg !576, !tbaa !566
  %107 = bitcast %struct.lua_TValue* %106 to i64*, !dbg !577
  %108 = bitcast i8* %104 to i64*, !dbg !577
  %109 = load i64, i64* %107, align 8, !dbg !577
  store i64 %109, i64* %108, align 8, !dbg !577
  %110 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %105, i64 -1, i32 1, !dbg !577
  %111 = load i32, i32* %110, align 8, !dbg !577, !tbaa !423
  %112 = getelementptr inbounds i8, i8* %104, i64 8, !dbg !577
  %113 = bitcast i8* %112 to i32*, !dbg !577
  store i32 %111, i32* %113, align 8, !dbg !577, !tbaa !423
  br label %114, !dbg !578

; <label>:114:                                    ; preds = %99, %38
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !579
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %119

; <label>:115:                                    ; preds = %55
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !580
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %116 = add nuw nsw i32 %11, 1, !dbg !581
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !582
  %117 = icmp ult i32 %116, 100, !dbg !583
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !501
  br i1 %117, label %8, label %118, !dbg !501, !llvm.loop !584

; <label>:118:                                    ; preds = %115
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0)) #5, !dbg !586
  br label %119, !dbg !587

; <label>:119:                                    ; preds = %114, %118
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !587
  ret void, !dbg !587
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
define hidden void @luaV_settable(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue* nocapture readonly) local_unnamed_addr #0 !dbg !588 {
  %5 = alloca %struct.lua_TValue, align 8
  %6 = bitcast %struct.lua_TValue* %5 to i8*, !dbg !616
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #4, !dbg !616
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !618
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !619
  %7 = bitcast %struct.lua_TValue* %5 to i64*
  %8 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %5, i64 0, i32 1
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %10 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1, i64 0, i32 1
  %11 = load i32, i32* %10, align 8, !dbg !620, !tbaa !423
  br label %12, !dbg !619

; <label>:12:                                     ; preds = %4, %129
  %13 = phi i32 [ %11, %4 ], [ %79, %129 ], !dbg !620
  %14 = phi %struct.lua_TValue* [ %1, %4 ], [ %5, %129 ]
  %15 = phi i32 [ 0, %4 ], [ %132, %129 ]
  %16 = icmp eq i32 %13, 5, !dbg !620
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !621
  br i1 %16, label %17, label %68, !dbg !621

; <label>:17:                                     ; preds = %12
  %18 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %14, i64 0, i32 0, i32 0, !dbg !622
  %19 = load %union.GCObject*, %union.GCObject** %18, align 8, !dbg !622, !tbaa !432
  %20 = bitcast %union.GCObject* %19 to %struct.Table*, !dbg !622
  %21 = call %struct.lua_TValue* @luaH_set(%struct.lua_State* %0, %struct.Table* %20, %struct.lua_TValue* %2) #5, !dbg !624
  %22 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %21, i64 0, i32 1, !dbg !626
  %23 = load i32, i32* %22, align 8, !dbg !626, !tbaa !423
  %24 = icmp eq i32 %23, 0, !dbg !626
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !627
  br i1 %24, label %25, label %42, !dbg !627

; <label>:25:                                     ; preds = %17
  %26 = getelementptr inbounds %union.GCObject, %union.GCObject* %19, i64 0, i32 0, i32 4, !dbg !628
  %27 = bitcast %struct.lua_TValue** %26 to %struct.Table**, !dbg !628
  %28 = load %struct.Table*, %struct.Table** %27, align 8, !dbg !628, !tbaa !511
  %29 = icmp eq %struct.Table* %28, null, !dbg !628
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !628
  br i1 %29, label %35, label %30, !dbg !628

; <label>:30:                                     ; preds = %25
  %31 = getelementptr inbounds %struct.Table, %struct.Table* %28, i64 0, i32 3, !dbg !628
  %32 = load i8, i8* %31, align 2, !dbg !628, !tbaa !514
  %33 = and i8 %32, 2, !dbg !628
  %34 = icmp eq i8 %33, 0, !dbg !628
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !628
  br i1 %34, label %36, label %35, !dbg !628

; <label>:35:                                     ; preds = %25, %30
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !630
  br label %42, !dbg !630

; <label>:36:                                     ; preds = %30
  %37 = load %struct.global_State*, %struct.global_State** %9, align 8, !dbg !628, !tbaa !517
  %38 = getelementptr inbounds %struct.global_State, %struct.global_State* %37, i64 0, i32 24, i64 1, !dbg !628
  %39 = load %union.TString*, %union.TString** %38, align 8, !dbg !628, !tbaa !521
  %40 = call %struct.lua_TValue* @luaT_gettm(%struct.Table* nonnull %28, i32 1, %union.TString* %39) #5, !dbg !628
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !628
  %41 = icmp eq %struct.lua_TValue* %40, null, !dbg !631
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !630
  br i1 %41, label %42, label %66, !dbg !630

; <label>:42:                                     ; preds = %36, %17, %35
  %43 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %21, i64 0, i32 1, !dbg !626
  %44 = bitcast %union.GCObject* %19 to %struct.Table*, !dbg !622
  %45 = bitcast %struct.lua_TValue* %3 to i64*, !dbg !632
  %46 = bitcast %struct.lua_TValue* %21 to i64*, !dbg !632
  %47 = load i64, i64* %45, align 8, !dbg !632
  store i64 %47, i64* %46, align 8, !dbg !632
  %48 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3, i64 0, i32 1, !dbg !632
  %49 = load i32, i32* %48, align 8, !dbg !632, !tbaa !423
  store i32 %49, i32* %43, align 8, !dbg !632, !tbaa !423
  %50 = getelementptr inbounds %union.GCObject, %union.GCObject* %19, i64 0, i32 0, i32 3, !dbg !633
  store i8 0, i8* %50, align 2, !dbg !634, !tbaa !514
  %51 = load i32, i32* %48, align 8, !dbg !635, !tbaa !423
  %52 = icmp sgt i32 %51, 3, !dbg !635
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !635
  br i1 %52, label %53, label %128, !dbg !635

; <label>:53:                                     ; preds = %42
  %54 = bitcast %struct.lua_TValue* %3 to %struct.GCheader**, !dbg !635
  %55 = load %struct.GCheader*, %struct.GCheader** %54, align 8, !dbg !635, !tbaa !432
  %56 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %55, i64 0, i32 2, !dbg !635
  %57 = load i8, i8* %56, align 1, !dbg !635, !tbaa !432
  %58 = and i8 %57, 3, !dbg !635
  %59 = icmp eq i8 %58, 0, !dbg !635
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !635
  br i1 %59, label %128, label %60, !dbg !635

; <label>:60:                                     ; preds = %53
  %61 = getelementptr inbounds %union.GCObject, %union.GCObject* %19, i64 0, i32 0, i32 2, !dbg !635
  %62 = load i8, i8* %61, align 1, !dbg !635, !tbaa !432
  %63 = and i8 %62, 4, !dbg !635
  %64 = icmp eq i8 %63, 0, !dbg !635
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !638
  br i1 %64, label %128, label %65, !dbg !638

; <label>:65:                                     ; preds = %60
  call void @luaC_barrierback(%struct.lua_State* %0, %struct.Table* nonnull %44) #5, !dbg !635
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !635
  br label %128, !dbg !635

; <label>:66:                                     ; preds = %36
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !639
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %67 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %40, i64 0, i32 1, !dbg !640
  br label %74

; <label>:68:                                     ; preds = %12
  %69 = call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* %0, %struct.lua_TValue* nonnull %14, i32 1) #5, !dbg !642
  %70 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %69, i64 0, i32 1, !dbg !642
  %71 = load i32, i32* %70, align 8, !dbg !642, !tbaa !423
  %72 = icmp eq i32 %71, 0, !dbg !642
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !644
  br i1 %72, label %73, label %78, !dbg !644

; <label>:73:                                     ; preds = %68
  call void @luaG_typeerror(%struct.lua_State* %0, %struct.lua_TValue* nonnull %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !645
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !645
  br label %74, !dbg !645

; <label>:74:                                     ; preds = %73, %66
  %75 = phi i32* [ %70, %73 ], [ %67, %66 ]
  %76 = phi %struct.lua_TValue* [ %69, %73 ], [ %40, %66 ]
  %77 = load i32, i32* %75, align 8, !dbg !640, !tbaa !423
  br label %78, !dbg !640

; <label>:78:                                     ; preds = %74, %68
  %79 = phi i32 [ %77, %74 ], [ %71, %68 ], !dbg !640
  %80 = phi i32* [ %75, %74 ], [ %70, %68 ], !dbg !640
  %81 = phi %struct.lua_TValue* [ %76, %74 ], [ %69, %68 ], !dbg !646
  %82 = icmp eq i32 %79, 6, !dbg !640
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !647
  br i1 %82, label %83, label %129, !dbg !647

; <label>:83:                                     ; preds = %78
  %84 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %14, i64 0, i32 1, !dbg !620
  %85 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !676
  %86 = load %struct.lua_TValue*, %struct.lua_TValue** %85, align 8, !dbg !676, !tbaa !566
  %87 = bitcast %struct.lua_TValue* %81 to i64*, !dbg !676
  %88 = bitcast %struct.lua_TValue* %86 to i64*, !dbg !676
  %89 = load i64, i64* %87, align 8, !dbg !676
  store i64 %89, i64* %88, align 8, !dbg !676
  %90 = load i32, i32* %80, align 8, !dbg !676, !tbaa !423
  %91 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %86, i64 0, i32 1, !dbg !676
  store i32 %90, i32* %91, align 8, !dbg !676, !tbaa !423
  %92 = load %struct.lua_TValue*, %struct.lua_TValue** %85, align 8, !dbg !677, !tbaa !566
  %93 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %92, i64 1, !dbg !677
  %94 = bitcast %struct.lua_TValue* %14 to i64*, !dbg !677
  %95 = bitcast %struct.lua_TValue* %93 to i64*, !dbg !677
  %96 = load i64, i64* %94, align 8, !dbg !677
  store i64 %96, i64* %95, align 8, !dbg !677
  %97 = load i32, i32* %84, align 8, !dbg !677, !tbaa !423
  %98 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %92, i64 1, i32 1, !dbg !677
  store i32 %97, i32* %98, align 8, !dbg !677, !tbaa !423
  %99 = load %struct.lua_TValue*, %struct.lua_TValue** %85, align 8, !dbg !678, !tbaa !566
  %100 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %99, i64 2, !dbg !678
  %101 = bitcast %struct.lua_TValue* %2 to i64*, !dbg !678
  %102 = bitcast %struct.lua_TValue* %100 to i64*, !dbg !678
  %103 = load i64, i64* %101, align 8, !dbg !678
  store i64 %103, i64* %102, align 8, !dbg !678
  %104 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i64 0, i32 1, !dbg !678
  %105 = load i32, i32* %104, align 8, !dbg !678, !tbaa !423
  %106 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %99, i64 2, i32 1, !dbg !678
  store i32 %105, i32* %106, align 8, !dbg !678, !tbaa !423
  %107 = load %struct.lua_TValue*, %struct.lua_TValue** %85, align 8, !dbg !679, !tbaa !566
  %108 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %107, i64 3, !dbg !679
  %109 = bitcast %struct.lua_TValue* %3 to i64*, !dbg !679
  %110 = bitcast %struct.lua_TValue* %108 to i64*, !dbg !679
  %111 = load i64, i64* %109, align 8, !dbg !679
  store i64 %111, i64* %110, align 8, !dbg !679
  %112 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3, i64 0, i32 1, !dbg !679
  %113 = load i32, i32* %112, align 8, !dbg !679, !tbaa !423
  %114 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %107, i64 3, i32 1, !dbg !679
  store i32 %113, i32* %114, align 8, !dbg !679, !tbaa !423
  %115 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 9, !dbg !680
  %116 = bitcast %struct.lua_TValue** %115 to i64*, !dbg !680
  %117 = load i64, i64* %116, align 8, !dbg !680, !tbaa !571
  %118 = bitcast %struct.lua_TValue** %85 to i64*, !dbg !680
  %119 = load i64, i64* %118, align 8, !dbg !680, !tbaa !566
  %120 = sub i64 %117, %119, !dbg !680
  %121 = icmp slt i64 %120, 65, !dbg !680
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !682
  %122 = inttoptr i64 %119 to %struct.lua_TValue*, !dbg !682
  br i1 %121, label %123, label %125, !dbg !682

; <label>:123:                                    ; preds = %83
  call void @luaD_growstack(%struct.lua_State* nonnull %0, i32 4) #5, !dbg !680
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !680
  %124 = load %struct.lua_TValue*, %struct.lua_TValue** %85, align 8, !dbg !683, !tbaa !566
  br label %125, !dbg !680

; <label>:125:                                    ; preds = %83, %123
  %126 = phi %struct.lua_TValue* [ %122, %83 ], [ %124, %123 ], !dbg !683
  %127 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %126, i64 4, !dbg !683
  store %struct.lua_TValue* %127, %struct.lua_TValue** %85, align 8, !dbg !683, !tbaa !566
  call void @luaD_call(%struct.lua_State* nonnull %0, %struct.lua_TValue* %126, i32 0) #5, !dbg !684
  br label %128, !dbg !685

; <label>:128:                                    ; preds = %60, %53, %65, %42, %125
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !686
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %135

; <label>:129:                                    ; preds = %78
  %130 = bitcast %struct.lua_TValue* %81 to i64*, !dbg !687
  %131 = load i64, i64* %130, align 8, !dbg !687
  store i64 %131, i64* %7, align 8, !dbg !687
  store i32 %79, i32* %8, align 8, !dbg !687, !tbaa !423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !688
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %132 = add nuw nsw i32 %15, 1, !dbg !689
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !690
  %133 = icmp ult i32 %132, 100, !dbg !691
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !619
  br i1 %133, label %12, label %134, !dbg !619, !llvm.loop !692

; <label>:134:                                    ; preds = %129
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0)) #5, !dbg !694
  br label %135, !dbg !695

; <label>:135:                                    ; preds = %128, %134
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #4, !dbg !695
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !695
  ret void, !dbg !695
}

; Function Attrs: noredzone
declare hidden %struct.lua_TValue* @luaH_set(%struct.lua_State*, %struct.Table*, %struct.lua_TValue*) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden void @luaC_barrierback(%struct.lua_State*, %struct.Table*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define hidden i32 @luaV_lessthan(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*) local_unnamed_addr #0 !dbg !696 {
  %4 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1, i64 0, i32 1, !dbg !707
  %5 = load i32, i32* %4, align 8, !dbg !707, !tbaa !423
  %6 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i64 0, i32 1, !dbg !709
  %7 = load i32, i32* %6, align 8, !dbg !709, !tbaa !423
  %8 = icmp eq i32 %5, %7, !dbg !710
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !711
  br i1 %8, label %11, label %9, !dbg !711

; <label>:9:                                      ; preds = %3
  %10 = tail call i32 @luaG_ordererror(%struct.lua_State* %0, %struct.lua_TValue* nonnull %1, %struct.lua_TValue* nonnull %2) #5, !dbg !712
  br label %34, !dbg !713

; <label>:11:                                     ; preds = %3
  %12 = icmp eq i32 %5, 3, !dbg !714
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !716
  br i1 %12, label %13, label %20, !dbg !716

; <label>:13:                                     ; preds = %11
  %14 = bitcast %struct.lua_TValue* %1 to double*, !dbg !717
  %15 = load double, double* %14, align 8, !dbg !717, !tbaa !432
  %16 = bitcast %struct.lua_TValue* %2 to double*, !dbg !717
  %17 = load double, double* %16, align 8, !dbg !717, !tbaa !432
  %18 = fcmp olt double %15, %17, !dbg !717
  %19 = zext i1 %18 to i32, !dbg !717
  br label %34, !dbg !718

; <label>:20:                                     ; preds = %11
  %21 = icmp eq i32 %5, 4, !dbg !719
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !721
  br i1 %21, label %22, label %29, !dbg !721

; <label>:22:                                     ; preds = %20
  %23 = bitcast %struct.lua_TValue* %1 to %union.TString**, !dbg !722
  %24 = load %union.TString*, %union.TString** %23, align 8, !dbg !722, !tbaa !432
  %25 = bitcast %struct.lua_TValue* %2 to %union.TString**, !dbg !723
  %26 = load %union.TString*, %union.TString** %25, align 8, !dbg !723, !tbaa !432
  %27 = tail call fastcc i32 @l_strcmp(%union.TString* %24, %union.TString* %26) #6, !dbg !724
  %28 = lshr i32 %27, 31, !dbg !725
  br label %34, !dbg !726

; <label>:29:                                     ; preds = %20
  %30 = tail call fastcc i32 @call_orderTM(%struct.lua_State* %0, %struct.lua_TValue* nonnull %1, %struct.lua_TValue* nonnull %2, i32 13) #6, !dbg !727
  %31 = icmp eq i32 %30, -1, !dbg !730
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !731
  br i1 %31, label %32, label %34, !dbg !731

; <label>:32:                                     ; preds = %29
  %33 = tail call i32 @luaG_ordererror(%struct.lua_State* %0, %struct.lua_TValue* nonnull %1, %struct.lua_TValue* nonnull %2) #5, !dbg !732
  br label %34, !dbg !733

; <label>:34:                                     ; preds = %29, %32, %22, %13, %9
  %35 = phi i32 [ %10, %9 ], [ %19, %13 ], [ %28, %22 ], [ %33, %32 ], [ %30, %29 ], !dbg !734
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !735
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !736
  ret i32 %35, !dbg !736
}

; Function Attrs: noredzone
declare hidden i32 @luaG_ordererror(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal fastcc i32 @l_strcmp(%union.TString*, %union.TString*) unnamed_addr #0 !dbg !737 {
  %3 = getelementptr inbounds %union.TString, %union.TString* %0, i64 1, !dbg !758
  %4 = bitcast %union.TString* %3 to i8*, !dbg !758
  %5 = getelementptr inbounds %union.TString, %union.TString* %0, i64 0, i32 0, i32 5, !dbg !760
  %6 = load i64, i64* %5, align 8, !dbg !760, !tbaa !432
  %7 = getelementptr inbounds %union.TString, %union.TString* %1, i64 1, !dbg !762
  %8 = bitcast %union.TString* %7 to i8*, !dbg !762
  %9 = getelementptr inbounds %union.TString, %union.TString* %1, i64 0, i32 0, i32 5, !dbg !764
  %10 = load i64, i64* %9, align 8, !dbg !764, !tbaa !432
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !766
  %11 = tail call i32 @strcoll(i8* nonnull %4, i8* nonnull %8) #5, !dbg !767
  %12 = icmp eq i32 %11, 0, !dbg !769
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !770
  br i1 %12, label %13, label %35, !dbg !770

; <label>:13:                                     ; preds = %2, %27
  %14 = phi i64 [ %32, %27 ], [ %10, %2 ]
  %15 = phi i8* [ %31, %27 ], [ %8, %2 ]
  %16 = phi i64 [ %30, %27 ], [ %6, %2 ]
  %17 = phi i8* [ %29, %27 ], [ %4, %2 ]
  %18 = tail call i64 @strlen(i8* %17) #5, !dbg !771
  %19 = icmp eq i64 %18, %14, !dbg !773
  %20 = icmp eq i64 %18, %16, !dbg !775
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !777
  br i1 %19, label %21, label %24, !dbg !777

; <label>:21:                                     ; preds = %13
  %22 = xor i1 %20, true, !dbg !778
  %23 = zext i1 %22 to i32, !dbg !778
  br label %25, !dbg !779

; <label>:24:                                     ; preds = %13
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !780
  br i1 %20, label %25, label %27, !dbg !780

; <label>:25:                                     ; preds = %24, %21
  %26 = phi i32 [ %23, %21 ], [ -1, %24 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !775
  br label %35

; <label>:27:                                     ; preds = %24
  %28 = add i64 %18, 1, !dbg !781
  %29 = getelementptr inbounds i8, i8* %17, i64 %28, !dbg !782
  %30 = sub i64 %16, %28, !dbg !783
  %31 = getelementptr inbounds i8, i8* %15, i64 %28, !dbg !784
  %32 = sub i64 %14, %28, !dbg !785
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !786
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !787
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %33 = tail call i32 @strcoll(i8* %29, i8* %31) #5, !dbg !767
  %34 = icmp eq i32 %33, 0, !dbg !769
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !770
  br i1 %34, label %13, label %35, !dbg !770

; <label>:35:                                     ; preds = %27, %2, %25
  %36 = phi i32 [ %26, %25 ], [ %11, %2 ], [ %33, %27 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !788
  ret i32 %36, !dbg !788
}

; Function Attrs: noredzone nounwind
define internal fastcc i32 @call_orderTM(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*, i32) unnamed_addr #0 !dbg !789 {
  %5 = tail call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* %0, %struct.lua_TValue* %1, i32 %3) #5, !dbg !804
  %6 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %5, i64 0, i32 1, !dbg !806
  %7 = load i32, i32* %6, align 8, !dbg !806, !tbaa !423
  %8 = icmp eq i32 %7, 0, !dbg !806
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !808
  br i1 %8, label %78, label %9, !dbg !808

; <label>:9:                                      ; preds = %4
  %10 = tail call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* %0, %struct.lua_TValue* %2, i32 %3) #5, !dbg !809
  %11 = tail call i32 @luaO_rawequalObj(%struct.lua_TValue* %5, %struct.lua_TValue* %10) #5, !dbg !811
  %12 = icmp eq i32 %11, 0, !dbg !811
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !813
  br i1 %12, label %78, label %13, !dbg !813

; <label>:13:                                     ; preds = %9
  %14 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !814
  %15 = load %struct.lua_TValue*, %struct.lua_TValue** %14, align 8, !dbg !814, !tbaa !566
  %16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 10, !dbg !821
  %17 = bitcast %struct.lua_TValue** %16 to i64*, !dbg !821
  %18 = load i64, i64* %17, align 8, !dbg !821, !tbaa !563
  %19 = ptrtoint %struct.lua_TValue* %15 to i64, !dbg !821
  %20 = sub i64 %19, %18, !dbg !821
  %21 = bitcast %struct.lua_TValue* %5 to i64*, !dbg !823
  %22 = bitcast %struct.lua_TValue* %15 to i64*, !dbg !823
  %23 = load i64, i64* %21, align 8, !dbg !823
  store i64 %23, i64* %22, align 8, !dbg !823
  %24 = load i32, i32* %6, align 8, !dbg !823, !tbaa !423
  %25 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %15, i64 0, i32 1, !dbg !823
  store i32 %24, i32* %25, align 8, !dbg !823, !tbaa !423
  %26 = load %struct.lua_TValue*, %struct.lua_TValue** %14, align 8, !dbg !824, !tbaa !566
  %27 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %26, i64 1, !dbg !824
  %28 = bitcast %struct.lua_TValue* %1 to i64*, !dbg !824
  %29 = bitcast %struct.lua_TValue* %27 to i64*, !dbg !824
  %30 = load i64, i64* %28, align 8, !dbg !824
  store i64 %30, i64* %29, align 8, !dbg !824
  %31 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1, i64 0, i32 1, !dbg !824
  %32 = load i32, i32* %31, align 8, !dbg !824, !tbaa !423
  %33 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %26, i64 1, i32 1, !dbg !824
  store i32 %32, i32* %33, align 8, !dbg !824, !tbaa !423
  %34 = load %struct.lua_TValue*, %struct.lua_TValue** %14, align 8, !dbg !825, !tbaa !566
  %35 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %34, i64 2, !dbg !825
  %36 = bitcast %struct.lua_TValue* %2 to i64*, !dbg !825
  %37 = bitcast %struct.lua_TValue* %35 to i64*, !dbg !825
  %38 = load i64, i64* %36, align 8, !dbg !825
  store i64 %38, i64* %37, align 8, !dbg !825
  %39 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i64 0, i32 1, !dbg !825
  %40 = load i32, i32* %39, align 8, !dbg !825, !tbaa !423
  %41 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %34, i64 2, i32 1, !dbg !825
  store i32 %40, i32* %41, align 8, !dbg !825, !tbaa !423
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 9, !dbg !826
  %43 = bitcast %struct.lua_TValue** %42 to i64*, !dbg !826
  %44 = load i64, i64* %43, align 8, !dbg !826, !tbaa !571
  %45 = bitcast %struct.lua_TValue** %14 to i64*, !dbg !826
  %46 = load i64, i64* %45, align 8, !dbg !826, !tbaa !566
  %47 = sub i64 %44, %46, !dbg !826
  %48 = icmp slt i64 %47, 49, !dbg !826
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !827
  %49 = inttoptr i64 %46 to %struct.lua_TValue*, !dbg !827
  br i1 %48, label %50, label %52, !dbg !827

; <label>:50:                                     ; preds = %13
  tail call void @luaD_growstack(%struct.lua_State* nonnull %0, i32 3) #5, !dbg !826
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !826
  %51 = load %struct.lua_TValue*, %struct.lua_TValue** %14, align 8, !dbg !828, !tbaa !566
  br label %52, !dbg !826

; <label>:52:                                     ; preds = %13, %50
  %53 = phi %struct.lua_TValue* [ %49, %13 ], [ %51, %50 ], !dbg !828
  %54 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %53, i64 3, !dbg !828
  store %struct.lua_TValue* %54, %struct.lua_TValue** %14, align 8, !dbg !828, !tbaa !566
  tail call void @luaD_call(%struct.lua_State* nonnull %0, %struct.lua_TValue* %53, i32 1) #5, !dbg !829
  %55 = bitcast %struct.lua_TValue** %16 to i8**, !dbg !830
  %56 = load i8*, i8** %55, align 8, !dbg !830, !tbaa !563
  %57 = getelementptr inbounds i8, i8* %56, i64 %20, !dbg !830
  %58 = load %struct.lua_TValue*, %struct.lua_TValue** %14, align 8, !dbg !831, !tbaa !566
  %59 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i64 -1, !dbg !831
  store %struct.lua_TValue* %59, %struct.lua_TValue** %14, align 8, !dbg !831, !tbaa !566
  %60 = bitcast %struct.lua_TValue* %59 to i64*, !dbg !832
  %61 = bitcast i8* %57 to i64*, !dbg !832
  %62 = load i64, i64* %60, align 8, !dbg !832
  store i64 %62, i64* %61, align 8, !dbg !832
  %63 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i64 -1, i32 1, !dbg !832
  %64 = load i32, i32* %63, align 8, !dbg !832, !tbaa !423
  %65 = getelementptr inbounds i8, i8* %57, i64 8, !dbg !832
  %66 = bitcast i8* %65 to i32*, !dbg !832
  store i32 %64, i32* %66, align 8, !dbg !832, !tbaa !423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !833
  %67 = load %struct.lua_TValue*, %struct.lua_TValue** %14, align 8, !dbg !834, !tbaa !566
  %68 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %67, i64 0, i32 1, !dbg !834
  %69 = load i32, i32* %68, align 8, !dbg !834, !tbaa !423
  %70 = icmp eq i32 %69, 0, !dbg !834
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !834
  br i1 %70, label %78, label %71, !dbg !834

; <label>:71:                                     ; preds = %52
  %72 = icmp eq i32 %69, 1, !dbg !834
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !834
  br i1 %72, label %73, label %78, !dbg !834

; <label>:73:                                     ; preds = %71
  %74 = bitcast %struct.lua_TValue* %67 to i32*, !dbg !834
  %75 = load i32, i32* %74, align 8, !dbg !834, !tbaa !432
  %76 = icmp ne i32 %75, 0, !dbg !834
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %77 = zext i1 %76 to i32
  br label %78

; <label>:78:                                     ; preds = %52, %73, %71, %9, %4
  %79 = phi i32 [ -1, %4 ], [ -1, %9 ], [ 0, %52 ], [ 1, %71 ], [ %77, %73 ], !dbg !835
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !836
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !837
  ret i32 %79, !dbg !837
}

; Function Attrs: noredzone nounwind
define hidden i32 @luaV_equalval(%struct.lua_State*, %struct.lua_TValue* nocapture readonly, %struct.lua_TValue* nocapture readonly) local_unnamed_addr #0 !dbg !838 {
  %4 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1, i64 0, i32 1, !dbg !847
  %5 = load i32, i32* %4, align 8, !dbg !847, !tbaa !423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !848
  switch i32 %5, label %42 [
    i32 0, label %119
    i32 3, label %6
    i32 1, label %12
    i32 2, label %18
    i32 7, label %24
    i32 5, label %33
  ], !dbg !848

; <label>:6:                                      ; preds = %3
  %7 = bitcast %struct.lua_TValue* %1 to double*, !dbg !849
  %8 = load double, double* %7, align 8, !dbg !849, !tbaa !432
  %9 = bitcast %struct.lua_TValue* %2 to double*, !dbg !849
  %10 = load double, double* %9, align 8, !dbg !849, !tbaa !432
  %11 = fcmp oeq double %8, %10, !dbg !849
  br label %119, !dbg !851

; <label>:12:                                     ; preds = %3
  %13 = bitcast %struct.lua_TValue* %1 to i32*, !dbg !852
  %14 = load i32, i32* %13, align 8, !dbg !852, !tbaa !432
  %15 = bitcast %struct.lua_TValue* %2 to i32*, !dbg !853
  %16 = load i32, i32* %15, align 8, !dbg !853, !tbaa !432
  %17 = icmp eq i32 %14, %16, !dbg !854
  br label %119, !dbg !855

; <label>:18:                                     ; preds = %3
  %19 = bitcast %struct.lua_TValue* %1 to i8**, !dbg !856
  %20 = load i8*, i8** %19, align 8, !dbg !856, !tbaa !432
  %21 = bitcast %struct.lua_TValue* %2 to i8**, !dbg !857
  %22 = load i8*, i8** %21, align 8, !dbg !857, !tbaa !432
  %23 = icmp eq i8* %20, %22, !dbg !858
  br label %119, !dbg !859

; <label>:24:                                     ; preds = %3
  %25 = bitcast %struct.lua_TValue* %1 to %struct.anon.0**, !dbg !860
  %26 = load %struct.anon.0*, %struct.anon.0** %25, align 8, !dbg !860, !tbaa !432
  %27 = bitcast %struct.lua_TValue* %2 to %struct.anon.0**, !dbg !863
  %28 = load %struct.anon.0*, %struct.anon.0** %27, align 8, !dbg !863, !tbaa !432
  %29 = icmp eq %struct.anon.0* %26, %28, !dbg !864
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !865
  br i1 %29, label %119, label %30, !dbg !865

; <label>:30:                                     ; preds = %24
  %31 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %26, i64 0, i32 3, !dbg !866
  %32 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %28, i64 0, i32 3, !dbg !867
  br label %48, !dbg !868

; <label>:33:                                     ; preds = %3
  %34 = bitcast %struct.lua_TValue* %1 to %struct.Table**, !dbg !869
  %35 = load %struct.Table*, %struct.Table** %34, align 8, !dbg !869, !tbaa !432
  %36 = bitcast %struct.lua_TValue* %2 to %struct.Table**, !dbg !872
  %37 = load %struct.Table*, %struct.Table** %36, align 8, !dbg !872, !tbaa !432
  %38 = icmp eq %struct.Table* %35, %37, !dbg !873
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !874
  br i1 %38, label %119, label %39, !dbg !874

; <label>:39:                                     ; preds = %33
  %40 = getelementptr inbounds %struct.Table, %struct.Table* %35, i64 0, i32 5, !dbg !875
  %41 = getelementptr inbounds %struct.Table, %struct.Table* %37, i64 0, i32 5, !dbg !876
  br label %48, !dbg !878

; <label>:42:                                     ; preds = %3
  %43 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1, i64 0, i32 0, i32 0, !dbg !879
  %44 = load %union.GCObject*, %union.GCObject** %43, align 8, !dbg !879, !tbaa !432
  %45 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i64 0, i32 0, i32 0, !dbg !880
  %46 = load %union.GCObject*, %union.GCObject** %45, align 8, !dbg !880, !tbaa !432
  %47 = icmp eq %union.GCObject* %44, %46, !dbg !881
  br label %119, !dbg !882

; <label>:48:                                     ; preds = %39, %30
  %49 = phi %struct.Table** [ %41, %39 ], [ %32, %30 ]
  %50 = phi %struct.Table** [ %40, %39 ], [ %31, %30 ]
  %51 = load %struct.Table*, %struct.Table** %50, align 8, !dbg !883, !tbaa !432
  %52 = load %struct.Table*, %struct.Table** %49, align 8, !dbg !883, !tbaa !432
  %53 = tail call fastcc %struct.lua_TValue* @get_compTM(%struct.lua_State* %0, %struct.Table* %51, %struct.Table* %52) #6, !dbg !883
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !883
  %54 = icmp eq %struct.lua_TValue* %53, null, !dbg !884
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !886
  br i1 %54, label %119, label %55, !dbg !886

; <label>:55:                                     ; preds = %48
  %56 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !887
  %57 = load %struct.lua_TValue*, %struct.lua_TValue** %56, align 8, !dbg !887, !tbaa !566
  %58 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 10, !dbg !894
  %59 = bitcast %struct.lua_TValue** %58 to i64*, !dbg !894
  %60 = load i64, i64* %59, align 8, !dbg !894, !tbaa !563
  %61 = ptrtoint %struct.lua_TValue* %57 to i64, !dbg !894
  %62 = sub i64 %61, %60, !dbg !894
  %63 = bitcast %struct.lua_TValue* %53 to i64*, !dbg !896
  %64 = bitcast %struct.lua_TValue* %57 to i64*, !dbg !896
  %65 = load i64, i64* %63, align 8, !dbg !896
  store i64 %65, i64* %64, align 8, !dbg !896
  %66 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %53, i64 0, i32 1, !dbg !896
  %67 = load i32, i32* %66, align 8, !dbg !896, !tbaa !423
  %68 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %57, i64 0, i32 1, !dbg !896
  store i32 %67, i32* %68, align 8, !dbg !896, !tbaa !423
  %69 = load %struct.lua_TValue*, %struct.lua_TValue** %56, align 8, !dbg !897, !tbaa !566
  %70 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %69, i64 1, !dbg !897
  %71 = bitcast %struct.lua_TValue* %1 to i64*, !dbg !897
  %72 = bitcast %struct.lua_TValue* %70 to i64*, !dbg !897
  %73 = load i64, i64* %71, align 8, !dbg !897
  store i64 %73, i64* %72, align 8, !dbg !897
  %74 = load i32, i32* %4, align 8, !dbg !897, !tbaa !423
  %75 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %69, i64 1, i32 1, !dbg !897
  store i32 %74, i32* %75, align 8, !dbg !897, !tbaa !423
  %76 = load %struct.lua_TValue*, %struct.lua_TValue** %56, align 8, !dbg !898, !tbaa !566
  %77 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %76, i64 2, !dbg !898
  %78 = bitcast %struct.lua_TValue* %2 to i64*, !dbg !898
  %79 = bitcast %struct.lua_TValue* %77 to i64*, !dbg !898
  %80 = load i64, i64* %78, align 8, !dbg !898
  store i64 %80, i64* %79, align 8, !dbg !898
  %81 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i64 0, i32 1, !dbg !898
  %82 = load i32, i32* %81, align 8, !dbg !898, !tbaa !423
  %83 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %76, i64 2, i32 1, !dbg !898
  store i32 %82, i32* %83, align 8, !dbg !898, !tbaa !423
  %84 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 9, !dbg !899
  %85 = bitcast %struct.lua_TValue** %84 to i64*, !dbg !899
  %86 = load i64, i64* %85, align 8, !dbg !899, !tbaa !571
  %87 = bitcast %struct.lua_TValue** %56 to i64*, !dbg !899
  %88 = load i64, i64* %87, align 8, !dbg !899, !tbaa !566
  %89 = sub i64 %86, %88, !dbg !899
  %90 = icmp slt i64 %89, 49, !dbg !899
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !900
  %91 = inttoptr i64 %88 to %struct.lua_TValue*, !dbg !900
  br i1 %90, label %92, label %94, !dbg !900

; <label>:92:                                     ; preds = %55
  tail call void @luaD_growstack(%struct.lua_State* nonnull %0, i32 3) #5, !dbg !899
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !899
  %93 = load %struct.lua_TValue*, %struct.lua_TValue** %56, align 8, !dbg !901, !tbaa !566
  br label %94, !dbg !899

; <label>:94:                                     ; preds = %55, %92
  %95 = phi %struct.lua_TValue* [ %91, %55 ], [ %93, %92 ], !dbg !901
  %96 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %95, i64 3, !dbg !901
  store %struct.lua_TValue* %96, %struct.lua_TValue** %56, align 8, !dbg !901, !tbaa !566
  tail call void @luaD_call(%struct.lua_State* nonnull %0, %struct.lua_TValue* %95, i32 1) #5, !dbg !902
  %97 = bitcast %struct.lua_TValue** %58 to i8**, !dbg !903
  %98 = load i8*, i8** %97, align 8, !dbg !903, !tbaa !563
  %99 = getelementptr inbounds i8, i8* %98, i64 %62, !dbg !903
  %100 = load %struct.lua_TValue*, %struct.lua_TValue** %56, align 8, !dbg !904, !tbaa !566
  %101 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %100, i64 -1, !dbg !904
  store %struct.lua_TValue* %101, %struct.lua_TValue** %56, align 8, !dbg !904, !tbaa !566
  %102 = bitcast %struct.lua_TValue* %101 to i64*, !dbg !905
  %103 = bitcast i8* %99 to i64*, !dbg !905
  %104 = load i64, i64* %102, align 8, !dbg !905
  store i64 %104, i64* %103, align 8, !dbg !905
  %105 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %100, i64 -1, i32 1, !dbg !905
  %106 = load i32, i32* %105, align 8, !dbg !905, !tbaa !423
  %107 = getelementptr inbounds i8, i8* %99, i64 8, !dbg !905
  %108 = bitcast i8* %107 to i32*, !dbg !905
  store i32 %106, i32* %108, align 8, !dbg !905, !tbaa !423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !906
  %109 = load %struct.lua_TValue*, %struct.lua_TValue** %56, align 8, !dbg !907, !tbaa !566
  %110 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %109, i64 0, i32 1, !dbg !907
  %111 = load i32, i32* %110, align 8, !dbg !907, !tbaa !423
  %112 = icmp eq i32 %111, 0, !dbg !907
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !907
  br i1 %112, label %119, label %113, !dbg !907

; <label>:113:                                    ; preds = %94
  %114 = icmp eq i32 %111, 1, !dbg !907
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !907
  br i1 %114, label %115, label %119, !dbg !907

; <label>:115:                                    ; preds = %113
  %116 = bitcast %struct.lua_TValue* %109 to i32*, !dbg !907
  %117 = load i32, i32* %116, align 8, !dbg !907, !tbaa !432
  %118 = icmp ne i32 %117, 0, !dbg !907
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %119

; <label>:119:                                    ; preds = %94, %115, %113, %48, %33, %24, %3, %42, %18, %12, %6
  %120 = phi i1 [ %47, %42 ], [ %23, %18 ], [ %17, %12 ], [ %11, %6 ], [ true, %3 ], [ true, %24 ], [ true, %33 ], [ false, %48 ], [ false, %94 ], [ true, %113 ], [ %118, %115 ]
  %121 = zext i1 %120 to i32, !dbg !908
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !908
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !909
  ret i32 %121, !dbg !909
}

; Function Attrs: noredzone nounwind
define internal fastcc %struct.lua_TValue* @get_compTM(%struct.lua_State* nocapture readonly, %struct.Table*, %struct.Table*) unnamed_addr #0 !dbg !910 {
  %4 = icmp eq %struct.Table* %1, null, !dbg !924
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !924
  br i1 %4, label %10, label %5, !dbg !924

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 3, !dbg !924
  %7 = load i8, i8* %6, align 2, !dbg !924, !tbaa !514
  %8 = and i8 %7, 16, !dbg !924
  %9 = icmp eq i8 %8, 0, !dbg !924
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !924
  br i1 %9, label %11, label %10, !dbg !924

; <label>:10:                                     ; preds = %3, %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !926
  br label %18, !dbg !926

; <label>:11:                                     ; preds = %5
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !924
  %13 = load %struct.global_State*, %struct.global_State** %12, align 8, !dbg !924, !tbaa !517
  %14 = getelementptr inbounds %struct.global_State, %struct.global_State* %13, i64 0, i32 24, i64 4, !dbg !924
  %15 = load %union.TString*, %union.TString** %14, align 8, !dbg !924, !tbaa !521
  %16 = tail call %struct.lua_TValue* @luaT_gettm(%struct.Table* nonnull %1, i32 4, %union.TString* %15) #5, !dbg !924
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !924
  %17 = icmp eq %struct.lua_TValue* %16, null, !dbg !927
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !926
  br i1 %17, label %18, label %19, !dbg !926

; <label>:18:                                     ; preds = %10, %11
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !929
  br label %41, !dbg !929

; <label>:19:                                     ; preds = %11
  %20 = icmp eq %struct.Table* %1, %2, !dbg !930
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !932
  br i1 %20, label %21, label %22, !dbg !932

; <label>:21:                                     ; preds = %19
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !933
  br label %41, !dbg !933

; <label>:22:                                     ; preds = %19
  %23 = icmp eq %struct.Table* %2, null, !dbg !934
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !934
  br i1 %23, label %29, label %24, !dbg !934

; <label>:24:                                     ; preds = %22
  %25 = getelementptr inbounds %struct.Table, %struct.Table* %2, i64 0, i32 3, !dbg !934
  %26 = load i8, i8* %25, align 2, !dbg !934, !tbaa !514
  %27 = and i8 %26, 16, !dbg !934
  %28 = icmp eq i8 %27, 0, !dbg !934
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !934
  br i1 %28, label %30, label %29, !dbg !934

; <label>:29:                                     ; preds = %22, %24
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !936
  br label %36, !dbg !936

; <label>:30:                                     ; preds = %24
  %31 = load %struct.global_State*, %struct.global_State** %12, align 8, !dbg !934, !tbaa !517
  %32 = getelementptr inbounds %struct.global_State, %struct.global_State* %31, i64 0, i32 24, i64 4, !dbg !934
  %33 = load %union.TString*, %union.TString** %32, align 8, !dbg !934, !tbaa !521
  %34 = tail call %struct.lua_TValue* @luaT_gettm(%struct.Table* nonnull %2, i32 4, %union.TString* %33) #5, !dbg !934
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !934
  %35 = icmp eq %struct.lua_TValue* %34, null, !dbg !937
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !936
  br i1 %35, label %36, label %37, !dbg !936

; <label>:36:                                     ; preds = %29, %30
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !939
  br label %41, !dbg !939

; <label>:37:                                     ; preds = %30
  %38 = tail call i32 @luaO_rawequalObj(%struct.lua_TValue* nonnull %16, %struct.lua_TValue* nonnull %34) #5, !dbg !940
  %39 = icmp eq i32 %38, 0, !dbg !940
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !942
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !943
  %40 = select i1 %39, %struct.lua_TValue* null, %struct.lua_TValue* %16, !dbg !944
  br label %41, !dbg !944

; <label>:41:                                     ; preds = %37, %36, %21, %18
  %42 = phi %struct.lua_TValue* [ null, %18 ], [ %16, %21 ], [ null, %36 ], [ %40, %37 ], !dbg !945
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !946
  ret %struct.lua_TValue* %42, !dbg !946
}

; Function Attrs: noredzone nounwind
define hidden void @luaV_concat(%struct.lua_State*, i32, i32) local_unnamed_addr #0 !dbg !947 {
  %4 = alloca [32 x i8], align 16
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !982
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5
  %6 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  br label %8, !dbg !982

; <label>:8:                                      ; preds = %131, %3
  %9 = phi i32 [ %2, %3 ], [ %135, %131 ]
  %10 = phi i32 [ %1, %3 ], [ %134, %131 ]
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8, !dbg !983, !tbaa !984
  %12 = sext i32 %9 to i64, !dbg !985
  %13 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %11, i64 1, !dbg !985
  %14 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %13, i64 %12, !dbg !986
  %15 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %14, i64 -2, !dbg !989
  %16 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %15, i64 0, i32 1, !dbg !989
  %17 = load i32, i32* %16, align 8, !dbg !989, !tbaa !423
  %18 = icmp eq i32 %17, 4, !dbg !989
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !990
  br i1 %18, label %23, label %19, !dbg !990

; <label>:19:                                     ; preds = %8
  %20 = icmp eq i32 %17, 3, !dbg !991
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !992
  br i1 %20, label %23, label %21, !dbg !992

; <label>:21:                                     ; preds = %19
  %22 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %14, i64 -1, !dbg !993
  br label %38, !dbg !992

; <label>:23:                                     ; preds = %19, %8
  %24 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %14, i64 -1, !dbg !996
  %25 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %24, i64 0, i32 1, !dbg !996
  %26 = load i32, i32* %25, align 8, !dbg !996, !tbaa !423
  %27 = icmp eq i32 %26, 4, !dbg !996
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !996
  br i1 %27, label %43, label %28, !dbg !996

; <label>:28:                                     ; preds = %23
  %29 = icmp eq i32 %26, 3, !dbg !999
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1000
  br i1 %29, label %31, label %30, !dbg !1000

; <label>:30:                                     ; preds = %28
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1001
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1002
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1003
  br label %38, !dbg !1003

; <label>:31:                                     ; preds = %28
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #4, !dbg !1004
  %32 = bitcast %struct.lua_TValue* %24 to double*, !dbg !1005
  %33 = load double, double* %32, align 8, !dbg !1005, !tbaa !432
  %34 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), double %33) #5, !dbg !1007
  %35 = call i64 @strlen(i8* nonnull %6) #5, !dbg !1008
  %36 = call %union.TString* @luaS_newlstr(%struct.lua_State* nonnull %0, i8* nonnull %6, i64 %35) #5, !dbg !1008
  %37 = bitcast %struct.lua_TValue* %24 to %union.TString**, !dbg !1008
  store %union.TString* %36, %union.TString** %37, align 8, !dbg !1008, !tbaa !432
  store i32 4, i32* %25, align 8, !dbg !1008, !tbaa !423
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #4, !dbg !1009
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1002
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1003
  br label %43, !dbg !1003

; <label>:38:                                     ; preds = %21, %30
  %39 = phi %struct.lua_TValue* [ %22, %21 ], [ %24, %30 ], !dbg !993
  %40 = call fastcc i32 @call_binTM(%struct.lua_State* %0, %struct.lua_TValue* nonnull %15, %struct.lua_TValue* nonnull %39, %struct.lua_TValue* nonnull %15, i32 15) #6, !dbg !1010
  %41 = icmp eq i32 %40, 0, !dbg !1010
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1011
  br i1 %41, label %42, label %131, !dbg !1011

; <label>:42:                                     ; preds = %38
  call void @luaG_concaterror(%struct.lua_State* %0, %struct.lua_TValue* nonnull %15, %struct.lua_TValue* nonnull %39) #5, !dbg !1012
  br label %129, !dbg !1012

; <label>:43:                                     ; preds = %31, %23
  %44 = bitcast %struct.lua_TValue* %24 to %struct.anon**, !dbg !1013
  %45 = load %struct.anon*, %struct.anon** %44, align 8, !dbg !1013, !tbaa !432
  %46 = getelementptr inbounds %struct.anon, %struct.anon* %45, i64 0, i32 5, !dbg !1014
  %47 = load i64, i64* %46, align 8, !dbg !1014, !tbaa !432
  %48 = icmp eq i64 %47, 0, !dbg !1015
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1016
  br i1 %48, label %49, label %62, !dbg !1016

; <label>:49:                                     ; preds = %43
  %50 = load i32, i32* %16, align 8, !dbg !1017, !tbaa !423
  %51 = icmp eq i32 %50, 4, !dbg !1017
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1017
  br i1 %51, label %129, label %52, !dbg !1017

; <label>:52:                                     ; preds = %49
  %53 = icmp eq i32 %50, 3, !dbg !1020
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1021
  br i1 %53, label %54, label %61, !dbg !1021

; <label>:54:                                     ; preds = %52
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #4, !dbg !1022
  %55 = bitcast %struct.lua_TValue* %15 to double*, !dbg !1023
  %56 = load double, double* %55, align 8, !dbg !1023, !tbaa !432
  %57 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), double %56) #5, !dbg !1025
  %58 = call i64 @strlen(i8* nonnull %6) #5, !dbg !1026
  %59 = call %union.TString* @luaS_newlstr(%struct.lua_State* nonnull %0, i8* nonnull %6, i64 %58) #5, !dbg !1026
  %60 = bitcast %struct.lua_TValue* %15 to %union.TString**, !dbg !1026
  store %union.TString* %59, %union.TString** %60, align 8, !dbg !1026, !tbaa !432
  store i32 4, i32* %16, align 8, !dbg !1026, !tbaa !423
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #4, !dbg !1027
  br label %61

; <label>:61:                                     ; preds = %52, %54
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1028
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1017
  br label %129, !dbg !1017

; <label>:62:                                     ; preds = %43
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1030
  %63 = icmp sgt i32 %10, 1, !dbg !1031
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1032
  br i1 %63, label %64, label %99, !dbg !1032

; <label>:64:                                     ; preds = %62
  %65 = sext i32 %10 to i64, !dbg !1033
  br label %66, !dbg !1033

; <label>:66:                                     ; preds = %64, %93
  %67 = phi i64 [ 1, %64 ], [ %95, %93 ]
  %68 = phi i64 [ %47, %64 ], [ %94, %93 ]
  %69 = sub nsw i64 0, %67, !dbg !1033
  %70 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %24, i64 %69, !dbg !1033
  %71 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %70, i64 0, i32 1, !dbg !1033
  %72 = load i32, i32* %71, align 8, !dbg !1033, !tbaa !423
  %73 = icmp eq i32 %72, 4, !dbg !1033
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1033
  br i1 %73, label %85, label %74, !dbg !1033

; <label>:74:                                     ; preds = %66
  %75 = icmp eq i32 %72, 3, !dbg !1036
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1037
  br i1 %75, label %78, label %76, !dbg !1037

; <label>:76:                                     ; preds = %74
  %77 = trunc i64 %67 to i32, !dbg !988
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1039
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1040
  br label %99, !dbg !1040

; <label>:78:                                     ; preds = %74
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #4, !dbg !1041
  %79 = bitcast %struct.lua_TValue* %70 to double*, !dbg !1042
  %80 = load double, double* %79, align 8, !dbg !1042, !tbaa !432
  %81 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), double %80) #5, !dbg !1044
  %82 = call i64 @strlen(i8* nonnull %6) #5, !dbg !1045
  %83 = call %union.TString* @luaS_newlstr(%struct.lua_State* %0, i8* nonnull %6, i64 %82) #5, !dbg !1045
  %84 = bitcast %struct.lua_TValue* %70 to %union.TString**, !dbg !1045
  store %union.TString* %83, %union.TString** %84, align 8, !dbg !1045, !tbaa !432
  store i32 4, i32* %71, align 8, !dbg !1045, !tbaa !423
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #4, !dbg !1046
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1039
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1040
  br label %85, !dbg !1040

; <label>:85:                                     ; preds = %78, %66
  %86 = bitcast %struct.lua_TValue* %70 to %struct.anon**, !dbg !1047
  %87 = load %struct.anon*, %struct.anon** %86, align 8, !dbg !1047, !tbaa !432
  %88 = getelementptr inbounds %struct.anon, %struct.anon* %87, i64 0, i32 5, !dbg !1048
  %89 = load i64, i64* %88, align 8, !dbg !1048, !tbaa !432
  %90 = sub i64 -3, %68, !dbg !1050
  %91 = icmp ult i64 %89, %90, !dbg !1052
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1053
  br i1 %91, label %93, label %92, !dbg !1053

; <label>:92:                                     ; preds = %85
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !1054
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1054
  br label %93, !dbg !1054

; <label>:93:                                     ; preds = %85, %92
  %94 = add i64 %89, %68, !dbg !1055
  %95 = add nuw nsw i64 %67, 1, !dbg !1056
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1057
  %96 = icmp slt i64 %95, %65, !dbg !1031
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1032
  br i1 %96, label %66, label %97, !dbg !1032, !llvm.loop !1058

; <label>:97:                                     ; preds = %93
  %98 = trunc i64 %95 to i32, !dbg !1060
  br label %99, !dbg !1060

; <label>:99:                                     ; preds = %76, %62, %97
  %100 = phi i64 [ %68, %76 ], [ %47, %62 ], [ %94, %97 ]
  %101 = phi i32 [ %77, %76 ], [ 1, %62 ], [ %98, %97 ]
  %102 = load %struct.global_State*, %struct.global_State** %7, align 8, !dbg !1060, !tbaa !517
  %103 = getelementptr inbounds %struct.global_State, %struct.global_State* %102, i64 0, i32 12, !dbg !1061
  %104 = call i8* @luaZ_openspace(%struct.lua_State* %0, %struct.Mbuffer* nonnull %103, i64 %100) #5, !dbg !1062
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1065
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1066
  %105 = sext i32 %101 to i64, !dbg !1067
  br label %106, !dbg !1067

; <label>:106:                                    ; preds = %99, %106
  %107 = phi i64 [ %105, %99 ], [ %120, %106 ]
  %108 = phi i64 [ 0, %99 ], [ %119, %106 ]
  %109 = sub nsw i64 0, %107, !dbg !1067
  %110 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %14, i64 %109, !dbg !1067
  %111 = bitcast %struct.lua_TValue* %110 to %union.TString**, !dbg !1067
  %112 = load %union.TString*, %union.TString** %111, align 8, !dbg !1067, !tbaa !432
  %113 = getelementptr inbounds %union.TString, %union.TString* %112, i64 0, i32 0, i32 5, !dbg !1068
  %114 = load i64, i64* %113, align 8, !dbg !1068, !tbaa !432
  %115 = getelementptr inbounds i8, i8* %104, i64 %108, !dbg !1070
  %116 = getelementptr inbounds %union.TString, %union.TString* %112, i64 1, !dbg !1071
  %117 = bitcast %union.TString* %116 to i8*, !dbg !1071
  %118 = call i8* @memcpy(i8* %115, i8* nonnull %117, i64 %114) #5, !dbg !1072
  %119 = add i64 %114, %108, !dbg !1073
  %120 = add nsw i64 %107, -1, !dbg !1074
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1075
  %121 = icmp sgt i64 %107, 1, !dbg !1076
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1066
  br i1 %121, label %106, label %122, !dbg !1066, !llvm.loop !1077

; <label>:122:                                    ; preds = %106
  %123 = zext i32 %101 to i64, !dbg !1079
  %124 = sub nsw i64 0, %123, !dbg !1079
  %125 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %14, i64 %124, !dbg !1079
  %126 = call %union.TString* @luaS_newlstr(%struct.lua_State* %0, i8* %104, i64 %119) #5, !dbg !1079
  %127 = bitcast %struct.lua_TValue* %125 to %union.TString**, !dbg !1079
  store %union.TString* %126, %union.TString** %127, align 8, !dbg !1079, !tbaa !432
  %128 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %125, i64 0, i32 1, !dbg !1079
  store i32 4, i32* %128, align 8, !dbg !1079, !tbaa !423
  br label %129

; <label>:129:                                    ; preds = %49, %61, %42, %122
  %130 = phi i32 [ 2, %42 ], [ %101, %122 ], [ 2, %61 ], [ 2, %49 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %131, !dbg !1080

; <label>:131:                                    ; preds = %129, %38
  %132 = phi i32 [ 2, %38 ], [ %130, %129 ], !dbg !1081
  %133 = add nsw i32 %132, -1, !dbg !1080
  %134 = sub nsw i32 %10, %133, !dbg !1082
  %135 = sub nsw i32 %9, %133, !dbg !1083
  %136 = icmp sgt i32 %134, 1, !dbg !1084
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1085
  br i1 %136, label %8, label %137, !dbg !1085, !llvm.loop !1086

; <label>:137:                                    ; preds = %131
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1088
  ret void, !dbg !1088
}

; Function Attrs: noredzone nounwind
define internal fastcc i32 @call_binTM(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*, i32) unnamed_addr #0 !dbg !1089 {
  %6 = tail call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* %0, %struct.lua_TValue* %1, i32 %4) #5, !dbg !1104
  %7 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 0, i32 1, !dbg !1106
  %8 = load i32, i32* %7, align 8, !dbg !1106, !tbaa !423
  %9 = icmp eq i32 %8, 0, !dbg !1106
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1108
  br i1 %9, label %11, label %10, !dbg !1108

; <label>:10:                                     ; preds = %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1109
  br label %16, !dbg !1109

; <label>:11:                                     ; preds = %5
  %12 = tail call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* %0, %struct.lua_TValue* %2, i32 %4) #5, !dbg !1110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1111
  %13 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %12, i64 0, i32 1
  %14 = load i32, i32* %13, align 8, !dbg !1112, !tbaa !423
  %15 = icmp eq i32 %14, 0, !dbg !1112
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1109
  br i1 %15, label %72, label %16, !dbg !1109

; <label>:16:                                     ; preds = %10, %11
  %17 = phi %struct.lua_TValue* [ %6, %10 ], [ %12, %11 ]
  %18 = phi i32* [ %7, %10 ], [ %13, %11 ]
  %19 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 10, !dbg !1120
  %20 = bitcast %struct.lua_TValue** %19 to i64*, !dbg !1120
  %21 = load i64, i64* %20, align 8, !dbg !1120, !tbaa !563
  %22 = ptrtoint %struct.lua_TValue* %3 to i64, !dbg !1120
  %23 = sub i64 %22, %21, !dbg !1120
  %24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1122
  %25 = load %struct.lua_TValue*, %struct.lua_TValue** %24, align 8, !dbg !1122, !tbaa !566
  %26 = bitcast %struct.lua_TValue* %17 to i64*, !dbg !1122
  %27 = bitcast %struct.lua_TValue* %25 to i64*, !dbg !1122
  %28 = load i64, i64* %26, align 8, !dbg !1122
  store i64 %28, i64* %27, align 8, !dbg !1122
  %29 = load i32, i32* %18, align 8, !dbg !1122, !tbaa !423
  %30 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %25, i64 0, i32 1, !dbg !1122
  store i32 %29, i32* %30, align 8, !dbg !1122, !tbaa !423
  %31 = load %struct.lua_TValue*, %struct.lua_TValue** %24, align 8, !dbg !1123, !tbaa !566
  %32 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %31, i64 1, !dbg !1123
  %33 = bitcast %struct.lua_TValue* %1 to i64*, !dbg !1123
  %34 = bitcast %struct.lua_TValue* %32 to i64*, !dbg !1123
  %35 = load i64, i64* %33, align 8, !dbg !1123
  store i64 %35, i64* %34, align 8, !dbg !1123
  %36 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1, i64 0, i32 1, !dbg !1123
  %37 = load i32, i32* %36, align 8, !dbg !1123, !tbaa !423
  %38 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %31, i64 1, i32 1, !dbg !1123
  store i32 %37, i32* %38, align 8, !dbg !1123, !tbaa !423
  %39 = load %struct.lua_TValue*, %struct.lua_TValue** %24, align 8, !dbg !1124, !tbaa !566
  %40 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %39, i64 2, !dbg !1124
  %41 = bitcast %struct.lua_TValue* %2 to i64*, !dbg !1124
  %42 = bitcast %struct.lua_TValue* %40 to i64*, !dbg !1124
  %43 = load i64, i64* %41, align 8, !dbg !1124
  store i64 %43, i64* %42, align 8, !dbg !1124
  %44 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i64 0, i32 1, !dbg !1124
  %45 = load i32, i32* %44, align 8, !dbg !1124, !tbaa !423
  %46 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %39, i64 2, i32 1, !dbg !1124
  store i32 %45, i32* %46, align 8, !dbg !1124, !tbaa !423
  %47 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 9, !dbg !1125
  %48 = bitcast %struct.lua_TValue** %47 to i64*, !dbg !1125
  %49 = load i64, i64* %48, align 8, !dbg !1125, !tbaa !571
  %50 = bitcast %struct.lua_TValue** %24 to i64*, !dbg !1125
  %51 = load i64, i64* %50, align 8, !dbg !1125, !tbaa !566
  %52 = sub i64 %49, %51, !dbg !1125
  %53 = icmp slt i64 %52, 49, !dbg !1125
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1126
  %54 = inttoptr i64 %51 to %struct.lua_TValue*, !dbg !1126
  br i1 %53, label %55, label %57, !dbg !1126

; <label>:55:                                     ; preds = %16
  tail call void @luaD_growstack(%struct.lua_State* nonnull %0, i32 3) #5, !dbg !1125
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1125
  %56 = load %struct.lua_TValue*, %struct.lua_TValue** %24, align 8, !dbg !1127, !tbaa !566
  br label %57, !dbg !1125

; <label>:57:                                     ; preds = %16, %55
  %58 = phi %struct.lua_TValue* [ %54, %16 ], [ %56, %55 ], !dbg !1127
  %59 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i64 3, !dbg !1127
  store %struct.lua_TValue* %59, %struct.lua_TValue** %24, align 8, !dbg !1127, !tbaa !566
  tail call void @luaD_call(%struct.lua_State* nonnull %0, %struct.lua_TValue* %58, i32 1) #5, !dbg !1128
  %60 = bitcast %struct.lua_TValue** %19 to i8**, !dbg !1129
  %61 = load i8*, i8** %60, align 8, !dbg !1129, !tbaa !563
  %62 = getelementptr inbounds i8, i8* %61, i64 %23, !dbg !1129
  %63 = load %struct.lua_TValue*, %struct.lua_TValue** %24, align 8, !dbg !1130, !tbaa !566
  %64 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %63, i64 -1, !dbg !1130
  store %struct.lua_TValue* %64, %struct.lua_TValue** %24, align 8, !dbg !1130, !tbaa !566
  %65 = bitcast %struct.lua_TValue* %64 to i64*, !dbg !1131
  %66 = bitcast i8* %62 to i64*, !dbg !1131
  %67 = load i64, i64* %65, align 8, !dbg !1131
  store i64 %67, i64* %66, align 8, !dbg !1131
  %68 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %63, i64 -1, i32 1, !dbg !1131
  %69 = load i32, i32* %68, align 8, !dbg !1131, !tbaa !423
  %70 = getelementptr inbounds i8, i8* %62, i64 8, !dbg !1131
  %71 = bitcast i8* %70 to i32*, !dbg !1131
  store i32 %69, i32* %71, align 8, !dbg !1131, !tbaa !423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1132
  br label %72, !dbg !1133

; <label>:72:                                     ; preds = %11, %57
  %73 = phi i32 [ 1, %57 ], [ 0, %11 ], !dbg !1134
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1135
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1136
  ret i32 %73, !dbg !1136
}

; Function Attrs: noredzone
declare hidden void @luaG_concaterror(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden i8* @luaZ_openspace(%struct.lua_State*, %struct.Mbuffer*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define hidden void @luaV_execute(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !1137 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.lua_TValue, align 8
  %7 = alloca %struct.lua_TValue, align 8
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1380
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 17
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 20
  %13 = bitcast %struct.lua_TValue* %6 to i8*
  %14 = bitcast %struct.lua_TValue* %6 to i64*
  %15 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 0, i32 1
  %16 = bitcast %struct.lua_TValue* %7 to i8*
  %17 = bitcast %struct.lua_TValue* %7 to i64*
  %18 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %7, i64 0, i32 1
  %19 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %20 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4
  %21 = bitcast %struct.lua_TValue** %20 to i64*
  %22 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 24
  %23 = bitcast double* %5 to i8*
  %24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 9
  %25 = bitcast %struct.lua_TValue** %24 to i64*
  %26 = bitcast double* %4 to i8*
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 3
  %28 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 19
  %29 = bitcast double* %3 to i8*
  %30 = bitcast i32** %8 to i64*
  %31 = bitcast double* %5 to i64*
  %32 = bitcast double* %4 to i64*
  %33 = bitcast double* %3 to i64*
  br label %34, !dbg !1380

; <label>:34:                                     ; preds = %1239, %2
  %35 = phi i32 [ %1, %2 ], [ %1242, %1239 ]
  %36 = load i32*, i32** %8, align 8, !dbg !1381, !tbaa !1382
  %37 = load %struct.CallInfo*, %struct.CallInfo** %9, align 8, !dbg !1384, !tbaa !1385
  %38 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %37, i64 0, i32 1, !dbg !1384
  %39 = bitcast %struct.lua_TValue** %38 to %struct.LClosure***, !dbg !1384
  %40 = load %struct.LClosure**, %struct.LClosure*** %39, align 8, !dbg !1384, !tbaa !1386
  %41 = load %struct.LClosure*, %struct.LClosure** %40, align 8, !dbg !1384, !tbaa !432
  %42 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !1389, !tbaa !984
  %43 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %41, i64 0, i32 7, !dbg !1391
  %44 = load %struct.Proto*, %struct.Proto** %43, align 8, !dbg !1391, !tbaa !1392
  %45 = getelementptr inbounds %struct.Proto, %struct.Proto* %44, i64 0, i32 3, !dbg !1394
  %46 = load %struct.lua_TValue*, %struct.lua_TValue** %45, align 8, !dbg !1394, !tbaa !1395
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1398
  %47 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %41, i64 0, i32 6
  %48 = bitcast %struct.Table** %47 to i64*
  br label %49, !dbg !1398

; <label>:49:                                     ; preds = %1243, %34
  %50 = phi i32* [ %36, %34 ], [ %56, %1243 ]
  %51 = phi %struct.lua_TValue* [ %42, %34 ], [ %1241, %1243 ]
  %52 = phi i32 [ %35, %34 ], [ %1242, %1243 ]
  br label %53, !dbg !1399

; <label>:53:                                     ; preds = %49, %1236
  %54 = phi i32* [ %1237, %1236 ], [ %50, %49 ], !dbg !1400
  %55 = phi %struct.lua_TValue* [ %1238, %1236 ], [ %51, %49 ], !dbg !1401
  %56 = getelementptr i32, i32* %54, i64 1, !dbg !1399
  %57 = load i32, i32* %54, align 4, !dbg !1402, !tbaa !1403
  %58 = load i8, i8* %11, align 4, !dbg !1405, !tbaa !1407
  %59 = and i8 %58, 12, !dbg !1408
  %60 = icmp eq i8 %59, 0, !dbg !1408
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1409
  br i1 %60, label %127, label %61, !dbg !1409

; <label>:61:                                     ; preds = %53
  %62 = load i32, i32* %12, align 4, !dbg !1410, !tbaa !1411
  %63 = add nsw i32 %62, -1, !dbg !1410
  store i32 %63, i32* %12, align 4, !dbg !1410, !tbaa !1411
  %64 = icmp eq i32 %63, 0, !dbg !1412
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1413
  br i1 %64, label %68, label %65, !dbg !1413

; <label>:65:                                     ; preds = %61
  %66 = and i8 %58, 4, !dbg !1414
  %67 = icmp eq i8 %66, 0, !dbg !1414
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1415
  br i1 %67, label %127, label %68, !dbg !1415

; <label>:68:                                     ; preds = %65, %61
  %69 = load i32*, i32** %8, align 8, !dbg !1434, !tbaa !1382
  store i32* %56, i32** %8, align 8, !dbg !1436, !tbaa !1382
  %70 = zext i8 %58 to i32, !dbg !1437
  %71 = and i32 %70, 8, !dbg !1439
  %72 = icmp eq i32 %71, 0, !dbg !1439
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1440
  br i1 %72, label %76, label %73, !dbg !1440

; <label>:73:                                     ; preds = %68
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1441
  br i1 %64, label %74, label %76, !dbg !1441

; <label>:74:                                     ; preds = %73
  %75 = load i32, i32* %28, align 8, !dbg !1442, !tbaa !1444
  store i32 %75, i32* %12, align 4, !dbg !1442, !tbaa !1411
  call void @luaD_callhook(%struct.lua_State* nonnull %0, i32 3, i32 -1) #5, !dbg !1445
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1446
  br label %76, !dbg !1446

; <label>:76:                                     ; preds = %74, %73, %68
  %77 = and i32 %70, 4, !dbg !1447
  %78 = icmp eq i32 %77, 0, !dbg !1447
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1448
  br i1 %78, label %121, label %79, !dbg !1448

; <label>:79:                                     ; preds = %76
  %80 = load %struct.CallInfo*, %struct.CallInfo** %9, align 8, !dbg !1449, !tbaa !1385
  %81 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %80, i64 0, i32 1, !dbg !1449
  %82 = bitcast %struct.lua_TValue** %81 to %struct.LClosure***, !dbg !1449
  %83 = load %struct.LClosure**, %struct.LClosure*** %82, align 8, !dbg !1449, !tbaa !1386
  %84 = load %struct.LClosure*, %struct.LClosure** %83, align 8, !dbg !1449, !tbaa !432
  %85 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %84, i64 0, i32 7, !dbg !1450
  %86 = load %struct.Proto*, %struct.Proto** %85, align 8, !dbg !1450, !tbaa !432
  %87 = getelementptr inbounds %struct.Proto, %struct.Proto* %86, i64 0, i32 4, !dbg !1452
  %88 = bitcast i32** %87 to i64*, !dbg !1452
  %89 = load i64, i64* %88, align 8, !dbg !1452, !tbaa !1453
  %90 = ptrtoint i32* %56 to i64, !dbg !1452
  %91 = sub i64 %90, %89, !dbg !1452
  %92 = lshr exact i64 %91, 2, !dbg !1452
  %93 = trunc i64 %92 to i32, !dbg !1452
  %94 = add nsw i32 %93, -1, !dbg !1452
  %95 = getelementptr inbounds %struct.Proto, %struct.Proto* %86, i64 0, i32 6, !dbg !1455
  %96 = load i32*, i32** %95, align 8, !dbg !1455, !tbaa !1456
  %97 = icmp eq i32* %96, null, !dbg !1455
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1455
  br i1 %97, label %102, label %98, !dbg !1455

; <label>:98:                                     ; preds = %79
  %99 = sext i32 %94 to i64, !dbg !1455
  %100 = getelementptr inbounds i32, i32* %96, i64 %99, !dbg !1455
  %101 = load i32, i32* %100, align 4, !dbg !1455, !tbaa !1403
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1455
  br label %102, !dbg !1455

; <label>:102:                                    ; preds = %98, %79
  %103 = phi i32 [ %101, %98 ], [ 0, %79 ], !dbg !1455
  %104 = icmp eq i32 %94, 0, !dbg !1458
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1460
  br i1 %104, label %119, label %105, !dbg !1460

; <label>:105:                                    ; preds = %102
  %106 = icmp ult i32* %69, %56, !dbg !1461
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1462
  br i1 %106, label %107, label %119, !dbg !1462

; <label>:107:                                    ; preds = %105
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1463
  br i1 %97, label %116, label %108, !dbg !1463

; <label>:108:                                    ; preds = %107
  %109 = ptrtoint i32* %69 to i64, !dbg !1463
  %110 = sub i64 %109, %89, !dbg !1463
  %111 = shl i64 %110, 30, !dbg !1463
  %112 = add i64 %111, -4294967296, !dbg !1463
  %113 = ashr exact i64 %112, 32, !dbg !1463
  %114 = getelementptr inbounds i32, i32* %96, i64 %113, !dbg !1463
  %115 = load i32, i32* %114, align 4, !dbg !1463, !tbaa !1403
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1463
  br label %116, !dbg !1463

; <label>:116:                                    ; preds = %108, %107
  %117 = phi i32 [ %115, %108 ], [ 0, %107 ], !dbg !1463
  %118 = icmp eq i32 %103, %117, !dbg !1464
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1465
  br i1 %118, label %120, label %119, !dbg !1465

; <label>:119:                                    ; preds = %116, %105, %102
  call void @luaD_callhook(%struct.lua_State* nonnull %0, i32 2, i32 %103) #5, !dbg !1466
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1466
  br label %120, !dbg !1466

; <label>:120:                                    ; preds = %119, %116
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1467
  br label %121, !dbg !1467

; <label>:121:                                    ; preds = %76, %120
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1468
  %122 = load i8, i8* %27, align 2, !dbg !1469, !tbaa !1471
  %123 = icmp eq i8 %122, 1, !dbg !1472
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1473
  br i1 %123, label %124, label %125, !dbg !1473

; <label>:124:                                    ; preds = %121
  store i32* %54, i32** %8, align 8, !dbg !1474, !tbaa !1382
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1476
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %1244

; <label>:125:                                    ; preds = %121
  %126 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !1477, !tbaa !984
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1478
  br label %127, !dbg !1478

; <label>:127:                                    ; preds = %65, %53, %125
  %128 = phi %struct.lua_TValue* [ %126, %125 ], [ %55, %65 ], [ %55, %53 ], !dbg !1479
  %129 = lshr i32 %57, 6, !dbg !1480
  %130 = and i32 %129, 255, !dbg !1480
  %131 = zext i32 %130 to i64, !dbg !1480
  %132 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %128, i64 %131, !dbg !1480
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1482
  %133 = trunc i32 %57 to i6, !dbg !1482
  switch i6 %133, label %1236 [
    i6 0, label %134
    i6 1, label %144
    i6 2, label %154
    i6 3, label %162
    i6 4, label %171
    i6 5, label %184
    i6 6, label %190
    i6 7, label %203
    i6 8, label %209
    i6 9, label %238
    i6 10, label %255
    i6 11, label %273
    i6 12, label %293
    i6 13, label %328
    i6 14, label %363
    i6 15, label %398
    i6 16, label %433
    i6 17, label %471
    i6 18, label %506
    i6 19, label %523
    i6 20, label %541
    i6 21, label %570
    i6 22, label %594
    i6 23, label %599
    i6 24, label %637
    i6 25, label %665
    i6 26, label %731
    i6 27, label %756
    i6 28, label %789
    i6 29, label %811
    i6 30, label %869
    i6 31, label %891
    i6 -32, label %915
    i6 -31, label %991
    i6 -30, label %1042
    i6 -29, label %1118
    i6 -28, label %1119
    i6 -27, label %1176
  ], !dbg !1482

; <label>:134:                                    ; preds = %127
  %135 = lshr i32 %57, 23, !dbg !1483
  %136 = zext i32 %135 to i64, !dbg !1483
  %137 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %128, i64 %136, !dbg !1483
  %138 = bitcast %struct.lua_TValue* %137 to i64*, !dbg !1483
  %139 = bitcast %struct.lua_TValue* %132 to i64*, !dbg !1483
  %140 = load i64, i64* %138, align 8, !dbg !1483
  store i64 %140, i64* %139, align 8, !dbg !1483
  %141 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %128, i64 %136, i32 1, !dbg !1483
  %142 = load i32, i32* %141, align 8, !dbg !1483, !tbaa !423
  %143 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %128, i64 %131, i32 1, !dbg !1483
  store i32 %142, i32* %143, align 8, !dbg !1483, !tbaa !423
  br label %1236, !dbg !1484, !llvm.loop !1485

; <label>:144:                                    ; preds = %127
  %145 = lshr i32 %57, 14, !dbg !1488
  %146 = zext i32 %145 to i64, !dbg !1488
  %147 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %46, i64 %146, !dbg !1488
  %148 = bitcast %struct.lua_TValue* %147 to i64*, !dbg !1488
  %149 = bitcast %struct.lua_TValue* %132 to i64*, !dbg !1488
  %150 = load i64, i64* %148, align 8, !dbg !1488
  store i64 %150, i64* %149, align 8, !dbg !1488
  %151 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %46, i64 %146, i32 1, !dbg !1488
  %152 = load i32, i32* %151, align 8, !dbg !1488, !tbaa !423
  %153 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %128, i64 %131, i32 1, !dbg !1488
  store i32 %152, i32* %153, align 8, !dbg !1488, !tbaa !423
  br label %1236, !dbg !1489, !llvm.loop !1485

; <label>:154:                                    ; preds = %127
  %155 = lshr i32 %57, 23, !dbg !1490
  %156 = bitcast %struct.lua_TValue* %132 to i32*, !dbg !1490
  store i32 %155, i32* %156, align 8, !dbg !1490, !tbaa !432
  %157 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %128, i64 %131, i32 1, !dbg !1490
  store i32 1, i32* %157, align 8, !dbg !1490, !tbaa !423
  %158 = and i32 %57, 8372224, !dbg !1491
  %159 = icmp eq i32 %158, 0, !dbg !1491
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1493
  br i1 %159, label %1236, label %160, !dbg !1493, !llvm.loop !1485

; <label>:160:                                    ; preds = %154
  %161 = getelementptr inbounds i32, i32* %54, i64 2, !dbg !1494
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1495
  br label %1236, !dbg !1495, !llvm.loop !1485

; <label>:162:                                    ; preds = %127
  %163 = lshr i32 %57, 23, !dbg !1496
  %164 = zext i32 %163 to i64, !dbg !1496
  %165 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %128, i64 %164, !dbg !1496
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1498
  br label %166, !dbg !1498

; <label>:166:                                    ; preds = %166, %162
  %167 = phi %struct.lua_TValue* [ %165, %162 ], [ %168, %166 ], !dbg !1499
  %168 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %167, i64 -1, !dbg !1501
  %169 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %167, i64 0, i32 1, !dbg !1501
  store i32 0, i32* %169, align 8, !dbg !1501, !tbaa !423
  %170 = icmp ult %struct.lua_TValue* %168, %132, !dbg !1502
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1503
  br i1 %170, label %1236, label %166, !dbg !1503, !llvm.loop !1504

; <label>:171:                                    ; preds = %127
  %172 = lshr i32 %57, 23, !dbg !1506
  %173 = zext i32 %172 to i64, !dbg !1508
  %174 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %41, i64 0, i32 8, i64 %173, !dbg !1508
  %175 = load %struct.UpVal*, %struct.UpVal** %174, align 8, !dbg !1508, !tbaa !521
  %176 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %175, i64 0, i32 3, !dbg !1508
  %177 = load %struct.lua_TValue*, %struct.lua_TValue** %176, align 8, !dbg !1508, !tbaa !1509
  %178 = bitcast %struct.lua_TValue* %177 to i64*, !dbg !1508
  %179 = bitcast %struct.lua_TValue* %132 to i64*, !dbg !1508
  %180 = load i64, i64* %178, align 8, !dbg !1508
  store i64 %180, i64* %179, align 8, !dbg !1508
  %181 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %177, i64 0, i32 1, !dbg !1508
  %182 = load i32, i32* %181, align 8, !dbg !1508, !tbaa !423
  %183 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %128, i64 %131, i32 1, !dbg !1508
  store i32 %182, i32* %183, align 8, !dbg !1508, !tbaa !423
  br label %1236

; <label>:184:                                    ; preds = %127
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %13) #4, !dbg !1511
  %185 = lshr i32 %57, 14, !dbg !1512
  %186 = zext i32 %185 to i64, !dbg !1512
  %187 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %46, i64 %186, !dbg !1512
  %188 = load i64, i64* %48, align 8, !dbg !1514, !tbaa !1515
  store i64 %188, i64* %14, align 8, !dbg !1514, !tbaa !432
  store i32 5, i32* %15, align 8, !dbg !1514, !tbaa !423
  store i32* %56, i32** %8, align 8, !dbg !1516, !tbaa !1382
  call void @luaV_gettable(%struct.lua_State* nonnull %0, %struct.lua_TValue* nonnull %6, %struct.lua_TValue* %187, %struct.lua_TValue* %132) #6, !dbg !1519
  %189 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !1516, !tbaa !984
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %13) #4, !dbg !1521
  br label %1236

; <label>:190:                                    ; preds = %127
  store i32* %56, i32** %8, align 8, !dbg !1522, !tbaa !1382
  %191 = lshr i32 %57, 23, !dbg !1525
  %192 = zext i32 %191 to i64, !dbg !1525
  %193 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %128, i64 %192, !dbg !1525
  %194 = lshr i32 %57, 14, !dbg !1525
  %195 = and i32 %57, 4194304, !dbg !1525
  %196 = icmp eq i32 %195, 0, !dbg !1525
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1525
  %197 = select i1 %196, i32 511, i32 255, !dbg !1525
  %198 = select i1 %196, %struct.lua_TValue* %128, %struct.lua_TValue* %46, !dbg !1525
  %199 = and i32 %194, %197, !dbg !1525
  %200 = zext i32 %199 to i64, !dbg !1525
  %201 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %198, i64 %200, !dbg !1525
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1525
  call void @luaV_gettable(%struct.lua_State* nonnull %0, %struct.lua_TValue* %193, %struct.lua_TValue* %201, %struct.lua_TValue* %132) #6, !dbg !1525
  %202 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !1522, !tbaa !984
  br label %1236, !dbg !1527, !llvm.loop !1485

; <label>:203:                                    ; preds = %127
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %16) #4, !dbg !1528
  %204 = load i64, i64* %48, align 8, !dbg !1529, !tbaa !1515
  store i64 %204, i64* %17, align 8, !dbg !1529, !tbaa !432
  store i32 5, i32* %18, align 8, !dbg !1529, !tbaa !423
  store i32* %56, i32** %8, align 8, !dbg !1530, !tbaa !1382
  %205 = lshr i32 %57, 14, !dbg !1532
  %206 = zext i32 %205 to i64, !dbg !1532
  %207 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %46, i64 %206, !dbg !1532
  call void @luaV_settable(%struct.lua_State* nonnull %0, %struct.lua_TValue* nonnull %7, %struct.lua_TValue* %207, %struct.lua_TValue* %132) #6, !dbg !1532
  %208 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !1530, !tbaa !984
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %16) #4, !dbg !1535
  br label %1236

; <label>:209:                                    ; preds = %127
  %210 = lshr i32 %57, 23, !dbg !1536
  %211 = zext i32 %210 to i64, !dbg !1537
  %212 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %41, i64 0, i32 8, i64 %211, !dbg !1537
  %213 = load %struct.UpVal*, %struct.UpVal** %212, align 8, !dbg !1537, !tbaa !521
  %214 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %213, i64 0, i32 3, !dbg !1539
  %215 = load %struct.lua_TValue*, %struct.lua_TValue** %214, align 8, !dbg !1539, !tbaa !1509
  %216 = bitcast %struct.lua_TValue* %132 to i64*, !dbg !1539
  %217 = bitcast %struct.lua_TValue* %215 to i64*, !dbg !1539
  %218 = load i64, i64* %216, align 8, !dbg !1539
  store i64 %218, i64* %217, align 8, !dbg !1539
  %219 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %128, i64 %131, i32 1, !dbg !1539
  %220 = load i32, i32* %219, align 8, !dbg !1539, !tbaa !423
  %221 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %215, i64 0, i32 1, !dbg !1539
  store i32 %220, i32* %221, align 8, !dbg !1539, !tbaa !423
  %222 = load i32, i32* %219, align 8, !dbg !1540, !tbaa !423
  %223 = icmp sgt i32 %222, 3, !dbg !1540
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1540
  br i1 %223, label %224, label %1236, !dbg !1540

; <label>:224:                                    ; preds = %209
  %225 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %132, i64 0, i32 0, i32 0, !dbg !1540
  %226 = load %union.GCObject*, %union.GCObject** %225, align 8, !dbg !1540, !tbaa !432
  %227 = getelementptr inbounds %union.GCObject, %union.GCObject* %226, i64 0, i32 0, i32 2, !dbg !1540
  %228 = load i8, i8* %227, align 1, !dbg !1540, !tbaa !432
  %229 = and i8 %228, 3, !dbg !1540
  %230 = icmp eq i8 %229, 0, !dbg !1540
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1540
  br i1 %230, label %1236, label %231, !dbg !1540

; <label>:231:                                    ; preds = %224
  %232 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %213, i64 0, i32 2, !dbg !1540
  %233 = load i8, i8* %232, align 1, !dbg !1540, !tbaa !432
  %234 = and i8 %233, 4, !dbg !1540
  %235 = icmp eq i8 %234, 0, !dbg !1540
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1543
  br i1 %235, label %1236, label %236, !dbg !1543

; <label>:236:                                    ; preds = %231
  %237 = bitcast %struct.UpVal* %213 to %union.GCObject*, !dbg !1540
  call void @luaC_barrierf(%struct.lua_State* nonnull %0, %union.GCObject* %237, %union.GCObject* %226) #5, !dbg !1540
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1540
  br label %1236, !dbg !1540

; <label>:238:                                    ; preds = %127
  store i32* %56, i32** %8, align 8, !dbg !1544, !tbaa !1382
  %239 = lshr i32 %57, 23, !dbg !1547
  %240 = icmp slt i32 %57, 0, !dbg !1547
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1547
  %241 = and i32 %239, 255, !dbg !1547
  %242 = select i1 %240, i32 %241, i32 %239, !dbg !1547
  %243 = select i1 %240, %struct.lua_TValue* %46, %struct.lua_TValue* %128, !dbg !1547
  %244 = zext i32 %242 to i64, !dbg !1547
  %245 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %243, i64 %244, !dbg !1547
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1547
  %246 = lshr i32 %57, 14, !dbg !1547
  %247 = and i32 %57, 4194304, !dbg !1547
  %248 = icmp eq i32 %247, 0, !dbg !1547
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1547
  %249 = select i1 %248, i32 511, i32 255, !dbg !1547
  %250 = select i1 %248, %struct.lua_TValue* %128, %struct.lua_TValue* %46, !dbg !1547
  %251 = and i32 %246, %249, !dbg !1547
  %252 = zext i32 %251 to i64, !dbg !1547
  %253 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %250, i64 %252, !dbg !1547
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1547
  call void @luaV_settable(%struct.lua_State* nonnull %0, %struct.lua_TValue* %132, %struct.lua_TValue* %245, %struct.lua_TValue* %253) #6, !dbg !1547
  %254 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !1544, !tbaa !984
  br label %1236, !dbg !1549, !llvm.loop !1485

; <label>:255:                                    ; preds = %127
  %256 = lshr i32 %57, 23, !dbg !1550
  %257 = lshr i32 %57, 14, !dbg !1552
  %258 = and i32 %257, 511, !dbg !1552
  %259 = call i32 @luaO_fb2int(i32 %256) #5, !dbg !1554
  %260 = call i32 @luaO_fb2int(i32 %258) #5, !dbg !1554
  %261 = call %struct.Table* @luaH_new(%struct.lua_State* nonnull %0, i32 %259, i32 %260) #5, !dbg !1554
  %262 = bitcast %struct.lua_TValue* %132 to %struct.Table**, !dbg !1554
  store %struct.Table* %261, %struct.Table** %262, align 8, !dbg !1554, !tbaa !432
  %263 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %128, i64 %131, i32 1, !dbg !1554
  store i32 5, i32* %263, align 8, !dbg !1554, !tbaa !423
  store i32* %56, i32** %8, align 8, !dbg !1555, !tbaa !1382
  %264 = load %struct.global_State*, %struct.global_State** %19, align 8, !dbg !1557, !tbaa !517
  %265 = getelementptr inbounds %struct.global_State, %struct.global_State* %264, i64 0, i32 14, !dbg !1557
  %266 = load i64, i64* %265, align 8, !dbg !1557, !tbaa !1561
  %267 = getelementptr inbounds %struct.global_State, %struct.global_State* %264, i64 0, i32 13, !dbg !1557
  %268 = load i64, i64* %267, align 8, !dbg !1557, !tbaa !1565
  %269 = icmp ult i64 %266, %268, !dbg !1557
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1566
  br i1 %269, label %271, label %270, !dbg !1566

; <label>:270:                                    ; preds = %255
  call void @luaC_step(%struct.lua_State* nonnull %0) #5, !dbg !1557
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1557
  br label %271, !dbg !1557

; <label>:271:                                    ; preds = %255, %270
  %272 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !1555, !tbaa !984
  br label %1236

; <label>:273:                                    ; preds = %127
  %274 = lshr i32 %57, 23, !dbg !1567
  %275 = zext i32 %274 to i64, !dbg !1567
  %276 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %128, i64 %275, !dbg !1567
  %277 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %132, i64 1, !dbg !1569
  %278 = bitcast %struct.lua_TValue* %276 to i64*, !dbg !1569
  %279 = bitcast %struct.lua_TValue* %277 to i64*, !dbg !1569
  %280 = load i64, i64* %278, align 8, !dbg !1569
  store i64 %280, i64* %279, align 8, !dbg !1569
  %281 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %128, i64 %275, i32 1, !dbg !1569
  %282 = load i32, i32* %281, align 8, !dbg !1569, !tbaa !423
  %283 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %277, i64 0, i32 1, !dbg !1569
  store i32 %282, i32* %283, align 8, !dbg !1569, !tbaa !423
  store i32* %56, i32** %8, align 8, !dbg !1570, !tbaa !1382
  %284 = lshr i32 %57, 14, !dbg !1572
  %285 = and i32 %57, 4194304, !dbg !1572
  %286 = icmp eq i32 %285, 0, !dbg !1572
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1572
  %287 = select i1 %286, i32 511, i32 255, !dbg !1572
  %288 = select i1 %286, %struct.lua_TValue* %128, %struct.lua_TValue* %46, !dbg !1572
  %289 = and i32 %284, %287, !dbg !1572
  %290 = zext i32 %289 to i64, !dbg !1572
  %291 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %288, i64 %290, !dbg !1572
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1572
  call void @luaV_gettable(%struct.lua_State* nonnull %0, %struct.lua_TValue* %276, %struct.lua_TValue* %291, %struct.lua_TValue* nonnull %132) #6, !dbg !1572
  %292 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !1570, !tbaa !984
  br label %1236

; <label>:293:                                    ; preds = %127
  %294 = lshr i32 %57, 23, !dbg !1574
  %295 = icmp slt i32 %57, 0, !dbg !1574
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1574
  %296 = and i32 %294, 255, !dbg !1574
  %297 = select i1 %295, i32 %296, i32 %294, !dbg !1574
  %298 = select i1 %295, %struct.lua_TValue* %46, %struct.lua_TValue* %128, !dbg !1574
  %299 = zext i32 %297 to i64, !dbg !1574
  %300 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %298, i64 %299, !dbg !1574
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1574
  %301 = lshr i32 %57, 14, !dbg !1574
  %302 = and i32 %57, 4194304, !dbg !1574
  %303 = icmp eq i32 %302, 0, !dbg !1574
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1574
  %304 = select i1 %303, i32 511, i32 255, !dbg !1574
  %305 = select i1 %303, %struct.lua_TValue* %128, %struct.lua_TValue* %46, !dbg !1574
  %306 = and i32 %301, %304, !dbg !1574
  %307 = zext i32 %306 to i64, !dbg !1574
  %308 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %305, i64 %307, !dbg !1574
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1574
  %309 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %298, i64 %299, i32 1, !dbg !1575
  %310 = load i32, i32* %309, align 8, !dbg !1575, !tbaa !423
  %311 = icmp eq i32 %310, 3, !dbg !1575
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1575
  br i1 %311, label %312, label %324, !dbg !1575

; <label>:312:                                    ; preds = %293
  %313 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %305, i64 %307, i32 1, !dbg !1575
  %314 = load i32, i32* %313, align 8, !dbg !1575, !tbaa !423
  %315 = icmp eq i32 %314, 3, !dbg !1575
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1574
  br i1 %315, label %316, label %324, !dbg !1574

; <label>:316:                                    ; preds = %312
  %317 = bitcast %struct.lua_TValue* %300 to double*, !dbg !1576
  %318 = load double, double* %317, align 8, !dbg !1576, !tbaa !432
  %319 = bitcast %struct.lua_TValue* %308 to double*, !dbg !1576
  %320 = load double, double* %319, align 8, !dbg !1576, !tbaa !432
  %321 = fadd double %318, %320, !dbg !1577
  %322 = bitcast %struct.lua_TValue* %132 to double*, !dbg !1577
  store double %321, double* %322, align 8, !dbg !1577, !tbaa !432
  %323 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %128, i64 %131, i32 1, !dbg !1577
  store i32 3, i32* %323, align 8, !dbg !1577, !tbaa !423
  br label %326, !dbg !1576

; <label>:324:                                    ; preds = %312, %293
  store i32* %56, i32** %8, align 8, !dbg !1578, !tbaa !1382
  call fastcc void @Arith(%struct.lua_State* nonnull %0, %struct.lua_TValue* %132, %struct.lua_TValue* nonnull %300, %struct.lua_TValue* %308, i32 5) #6, !dbg !1580
  %325 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !1578, !tbaa !984
  br label %326

; <label>:326:                                    ; preds = %324, %316
  %327 = phi %struct.lua_TValue* [ %128, %316 ], [ %325, %324 ], !dbg !1582
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %1236, !dbg !1583, !llvm.loop !1485

; <label>:328:                                    ; preds = %127
  %329 = lshr i32 %57, 23, !dbg !1584
  %330 = icmp slt i32 %57, 0, !dbg !1584
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1584
  %331 = and i32 %329, 255, !dbg !1584
  %332 = select i1 %330, i32 %331, i32 %329, !dbg !1584
  %333 = select i1 %330, %struct.lua_TValue* %46, %struct.lua_TValue* %128, !dbg !1584
  %334 = zext i32 %332 to i64, !dbg !1584
  %335 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %333, i64 %334, !dbg !1584
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1584
  %336 = lshr i32 %57, 14, !dbg !1584
  %337 = and i32 %57, 4194304, !dbg !1584
  %338 = icmp eq i32 %337, 0, !dbg !1584
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1584
  %339 = select i1 %338, i32 511, i32 255, !dbg !1584
  %340 = select i1 %338, %struct.lua_TValue* %128, %struct.lua_TValue* %46, !dbg !1584
  %341 = and i32 %336, %339, !dbg !1584
  %342 = zext i32 %341 to i64, !dbg !1584
  %343 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %340, i64 %342, !dbg !1584
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1584
  %344 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %333, i64 %334, i32 1, !dbg !1585
  %345 = load i32, i32* %344, align 8, !dbg !1585, !tbaa !423
  %346 = icmp eq i32 %345, 3, !dbg !1585
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1585
  br i1 %346, label %347, label %359, !dbg !1585

; <label>:347:                                    ; preds = %328
  %348 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %340, i64 %342, i32 1, !dbg !1585
  %349 = load i32, i32* %348, align 8, !dbg !1585, !tbaa !423
  %350 = icmp eq i32 %349, 3, !dbg !1585
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1584
  br i1 %350, label %351, label %359, !dbg !1584

; <label>:351:                                    ; preds = %347
  %352 = bitcast %struct.lua_TValue* %335 to double*, !dbg !1586
  %353 = load double, double* %352, align 8, !dbg !1586, !tbaa !432
  %354 = bitcast %struct.lua_TValue* %343 to double*, !dbg !1586
  %355 = load double, double* %354, align 8, !dbg !1586, !tbaa !432
  %356 = fsub double %353, %355, !dbg !1587
  %357 = bitcast %struct.lua_TValue* %132 to double*, !dbg !1587
  store double %356, double* %357, align 8, !dbg !1587, !tbaa !432
  %358 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %128, i64 %131, i32 1, !dbg !1587
  store i32 3, i32* %358, align 8, !dbg !1587, !tbaa !423
  br label %361, !dbg !1586

; <label>:359:                                    ; preds = %347, %328
  store i32* %56, i32** %8, align 8, !dbg !1588, !tbaa !1382
  call fastcc void @Arith(%struct.lua_State* nonnull %0, %struct.lua_TValue* %132, %struct.lua_TValue* nonnull %335, %struct.lua_TValue* %343, i32 6) #6, !dbg !1590
  %360 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !1588, !tbaa !984
  br label %361

; <label>:361:                                    ; preds = %359, %351
  %362 = phi %struct.lua_TValue* [ %128, %351 ], [ %360, %359 ], !dbg !1592
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %1236, !dbg !1593, !llvm.loop !1485

; <label>:363:                                    ; preds = %127
  %364 = lshr i32 %57, 23, !dbg !1594
  %365 = icmp slt i32 %57, 0, !dbg !1594
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1594
  %366 = and i32 %364, 255, !dbg !1594
  %367 = select i1 %365, i32 %366, i32 %364, !dbg !1594
  %368 = select i1 %365, %struct.lua_TValue* %46, %struct.lua_TValue* %128, !dbg !1594
  %369 = zext i32 %367 to i64, !dbg !1594
  %370 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %368, i64 %369, !dbg !1594
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1594
  %371 = lshr i32 %57, 14, !dbg !1594
  %372 = and i32 %57, 4194304, !dbg !1594
  %373 = icmp eq i32 %372, 0, !dbg !1594
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1594
  %374 = select i1 %373, i32 511, i32 255, !dbg !1594
  %375 = select i1 %373, %struct.lua_TValue* %128, %struct.lua_TValue* %46, !dbg !1594
  %376 = and i32 %371, %374, !dbg !1594
  %377 = zext i32 %376 to i64, !dbg !1594
  %378 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %375, i64 %377, !dbg !1594
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1594
  %379 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %368, i64 %369, i32 1, !dbg !1595
  %380 = load i32, i32* %379, align 8, !dbg !1595, !tbaa !423
  %381 = icmp eq i32 %380, 3, !dbg !1595
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1595
  br i1 %381, label %382, label %394, !dbg !1595

; <label>:382:                                    ; preds = %363
  %383 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %375, i64 %377, i32 1, !dbg !1595
  %384 = load i32, i32* %383, align 8, !dbg !1595, !tbaa !423
  %385 = icmp eq i32 %384, 3, !dbg !1595
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1594
  br i1 %385, label %386, label %394, !dbg !1594

; <label>:386:                                    ; preds = %382
  %387 = bitcast %struct.lua_TValue* %370 to double*, !dbg !1596
  %388 = load double, double* %387, align 8, !dbg !1596, !tbaa !432
  %389 = bitcast %struct.lua_TValue* %378 to double*, !dbg !1596
  %390 = load double, double* %389, align 8, !dbg !1596, !tbaa !432
  %391 = fmul double %388, %390, !dbg !1597
  %392 = bitcast %struct.lua_TValue* %132 to double*, !dbg !1597
  store double %391, double* %392, align 8, !dbg !1597, !tbaa !432
  %393 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %128, i64 %131, i32 1, !dbg !1597
  store i32 3, i32* %393, align 8, !dbg !1597, !tbaa !423
  br label %396, !dbg !1596

; <label>:394:                                    ; preds = %382, %363
  store i32* %56, i32** %8, align 8, !dbg !1598, !tbaa !1382
  call fastcc void @Arith(%struct.lua_State* nonnull %0, %struct.lua_TValue* %132, %struct.lua_TValue* nonnull %370, %struct.lua_TValue* %378, i32 7) #6, !dbg !1600
  %395 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !1598, !tbaa !984
  br label %396

; <label>:396:                                    ; preds = %394, %386
  %397 = phi %struct.lua_TValue* [ %128, %386 ], [ %395, %394 ], !dbg !1602
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %1236, !dbg !1603, !llvm.loop !1485

; <label>:398:                                    ; preds = %127
  %399 = lshr i32 %57, 23, !dbg !1604
  %400 = icmp slt i32 %57, 0, !dbg !1604
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1604
  %401 = and i32 %399, 255, !dbg !1604
  %402 = select i1 %400, i32 %401, i32 %399, !dbg !1604
  %403 = select i1 %400, %struct.lua_TValue* %46, %struct.lua_TValue* %128, !dbg !1604
  %404 = zext i32 %402 to i64, !dbg !1604
  %405 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %403, i64 %404, !dbg !1604
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1604
  %406 = lshr i32 %57, 14, !dbg !1604
  %407 = and i32 %57, 4194304, !dbg !1604
  %408 = icmp eq i32 %407, 0, !dbg !1604
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1604
  %409 = select i1 %408, i32 511, i32 255, !dbg !1604
  %410 = select i1 %408, %struct.lua_TValue* %128, %struct.lua_TValue* %46, !dbg !1604
  %411 = and i32 %406, %409, !dbg !1604
  %412 = zext i32 %411 to i64, !dbg !1604
  %413 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %410, i64 %412, !dbg !1604
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1604
  %414 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %403, i64 %404, i32 1, !dbg !1605
  %415 = load i32, i32* %414, align 8, !dbg !1605, !tbaa !423
  %416 = icmp eq i32 %415, 3, !dbg !1605
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1605
  br i1 %416, label %417, label %429, !dbg !1605

; <label>:417:                                    ; preds = %398
  %418 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %410, i64 %412, i32 1, !dbg !1605
  %419 = load i32, i32* %418, align 8, !dbg !1605, !tbaa !423
  %420 = icmp eq i32 %419, 3, !dbg !1605
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1604
  br i1 %420, label %421, label %429, !dbg !1604

; <label>:421:                                    ; preds = %417
  %422 = bitcast %struct.lua_TValue* %405 to double*, !dbg !1606
  %423 = load double, double* %422, align 8, !dbg !1606, !tbaa !432
  %424 = bitcast %struct.lua_TValue* %413 to double*, !dbg !1606
  %425 = load double, double* %424, align 8, !dbg !1606, !tbaa !432
  %426 = fdiv double %423, %425, !dbg !1607
  %427 = bitcast %struct.lua_TValue* %132 to double*, !dbg !1607
  store double %426, double* %427, align 8, !dbg !1607, !tbaa !432
  %428 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %128, i64 %131, i32 1, !dbg !1607
  store i32 3, i32* %428, align 8, !dbg !1607, !tbaa !423
  br label %431, !dbg !1606

; <label>:429:                                    ; preds = %417, %398
  store i32* %56, i32** %8, align 8, !dbg !1608, !tbaa !1382
  call fastcc void @Arith(%struct.lua_State* nonnull %0, %struct.lua_TValue* %132, %struct.lua_TValue* nonnull %405, %struct.lua_TValue* %413, i32 8) #6, !dbg !1610
  %430 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !1608, !tbaa !984
  br label %431

; <label>:431:                                    ; preds = %429, %421
  %432 = phi %struct.lua_TValue* [ %128, %421 ], [ %430, %429 ], !dbg !1612
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %1236, !dbg !1613, !llvm.loop !1485

; <label>:433:                                    ; preds = %127
  %434 = lshr i32 %57, 23, !dbg !1614
  %435 = icmp slt i32 %57, 0, !dbg !1614
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1614
  %436 = and i32 %434, 255, !dbg !1614
  %437 = select i1 %435, i32 %436, i32 %434, !dbg !1614
  %438 = select i1 %435, %struct.lua_TValue* %46, %struct.lua_TValue* %128, !dbg !1614
  %439 = zext i32 %437 to i64, !dbg !1614
  %440 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %438, i64 %439, !dbg !1614
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1614
  %441 = lshr i32 %57, 14, !dbg !1614
  %442 = and i32 %57, 4194304, !dbg !1614
  %443 = icmp eq i32 %442, 0, !dbg !1614
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1614
  %444 = select i1 %443, i32 511, i32 255, !dbg !1614
  %445 = select i1 %443, %struct.lua_TValue* %128, %struct.lua_TValue* %46, !dbg !1614
  %446 = and i32 %441, %444, !dbg !1614
  %447 = zext i32 %446 to i64, !dbg !1614
  %448 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %445, i64 %447, !dbg !1614
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1614
  %449 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %438, i64 %439, i32 1, !dbg !1615
  %450 = load i32, i32* %449, align 8, !dbg !1615, !tbaa !423
  %451 = icmp eq i32 %450, 3, !dbg !1615
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1615
  br i1 %451, label %452, label %467, !dbg !1615

; <label>:452:                                    ; preds = %433
  %453 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %445, i64 %447, i32 1, !dbg !1615
  %454 = load i32, i32* %453, align 8, !dbg !1615, !tbaa !423
  %455 = icmp eq i32 %454, 3, !dbg !1615
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1614
  br i1 %455, label %456, label %467, !dbg !1614

; <label>:456:                                    ; preds = %452
  %457 = bitcast %struct.lua_TValue* %440 to double*, !dbg !1616
  %458 = load double, double* %457, align 8, !dbg !1616, !tbaa !432
  %459 = bitcast %struct.lua_TValue* %448 to double*, !dbg !1616
  %460 = load double, double* %459, align 8, !dbg !1616, !tbaa !432
  %461 = fdiv double %458, %460, !dbg !1617
  %462 = call double @floor(double %461) #5, !dbg !1617
  %463 = fmul double %460, %462, !dbg !1617
  %464 = fsub double %458, %463, !dbg !1617
  %465 = bitcast %struct.lua_TValue* %132 to double*, !dbg !1617
  store double %464, double* %465, align 8, !dbg !1617, !tbaa !432
  %466 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %128, i64 %131, i32 1, !dbg !1617
  store i32 3, i32* %466, align 8, !dbg !1617, !tbaa !423
  br label %469, !dbg !1616

; <label>:467:                                    ; preds = %452, %433
  store i32* %56, i32** %8, align 8, !dbg !1618, !tbaa !1382
  call fastcc void @Arith(%struct.lua_State* nonnull %0, %struct.lua_TValue* %132, %struct.lua_TValue* nonnull %440, %struct.lua_TValue* %448, i32 9) #6, !dbg !1620
  %468 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !1618, !tbaa !984
  br label %469

; <label>:469:                                    ; preds = %467, %456
  %470 = phi %struct.lua_TValue* [ %128, %456 ], [ %468, %467 ], !dbg !1622
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %1236, !dbg !1623, !llvm.loop !1485

; <label>:471:                                    ; preds = %127
  %472 = lshr i32 %57, 23, !dbg !1624
  %473 = icmp slt i32 %57, 0, !dbg !1624
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1624
  %474 = and i32 %472, 255, !dbg !1624
  %475 = select i1 %473, i32 %474, i32 %472, !dbg !1624
  %476 = select i1 %473, %struct.lua_TValue* %46, %struct.lua_TValue* %128, !dbg !1624
  %477 = zext i32 %475 to i64, !dbg !1624
  %478 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %476, i64 %477, !dbg !1624
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1624
  %479 = lshr i32 %57, 14, !dbg !1624
  %480 = and i32 %57, 4194304, !dbg !1624
  %481 = icmp eq i32 %480, 0, !dbg !1624
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1624
  %482 = select i1 %481, i32 511, i32 255, !dbg !1624
  %483 = select i1 %481, %struct.lua_TValue* %128, %struct.lua_TValue* %46, !dbg !1624
  %484 = and i32 %479, %482, !dbg !1624
  %485 = zext i32 %484 to i64, !dbg !1624
  %486 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %483, i64 %485, !dbg !1624
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1624
  %487 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %476, i64 %477, i32 1, !dbg !1625
  %488 = load i32, i32* %487, align 8, !dbg !1625, !tbaa !423
  %489 = icmp eq i32 %488, 3, !dbg !1625
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1625
  br i1 %489, label %490, label %502, !dbg !1625

; <label>:490:                                    ; preds = %471
  %491 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %483, i64 %485, i32 1, !dbg !1625
  %492 = load i32, i32* %491, align 8, !dbg !1625, !tbaa !423
  %493 = icmp eq i32 %492, 3, !dbg !1625
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1624
  br i1 %493, label %494, label %502, !dbg !1624

; <label>:494:                                    ; preds = %490
  %495 = bitcast %struct.lua_TValue* %478 to double*, !dbg !1626
  %496 = load double, double* %495, align 8, !dbg !1626, !tbaa !432
  %497 = bitcast %struct.lua_TValue* %486 to double*, !dbg !1626
  %498 = load double, double* %497, align 8, !dbg !1626, !tbaa !432
  %499 = call double @pow(double %496, double %498) #5, !dbg !1627
  %500 = bitcast %struct.lua_TValue* %132 to double*, !dbg !1627
  store double %499, double* %500, align 8, !dbg !1627, !tbaa !432
  %501 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %128, i64 %131, i32 1, !dbg !1627
  store i32 3, i32* %501, align 8, !dbg !1627, !tbaa !423
  br label %504, !dbg !1626

; <label>:502:                                    ; preds = %490, %471
  store i32* %56, i32** %8, align 8, !dbg !1628, !tbaa !1382
  call fastcc void @Arith(%struct.lua_State* nonnull %0, %struct.lua_TValue* %132, %struct.lua_TValue* nonnull %478, %struct.lua_TValue* %486, i32 10) #6, !dbg !1630
  %503 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !1628, !tbaa !984
  br label %504

; <label>:504:                                    ; preds = %502, %494
  %505 = phi %struct.lua_TValue* [ %128, %494 ], [ %503, %502 ], !dbg !1632
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %1236, !dbg !1633, !llvm.loop !1485

; <label>:506:                                    ; preds = %127
  %507 = lshr i32 %57, 23, !dbg !1634
  %508 = zext i32 %507 to i64, !dbg !1634
  %509 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %128, i64 %508, !dbg !1634
  %510 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %128, i64 %508, i32 1, !dbg !1636
  %511 = load i32, i32* %510, align 8, !dbg !1636, !tbaa !423
  %512 = icmp eq i32 %511, 3, !dbg !1636
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1637
  br i1 %512, label %513, label %519, !dbg !1637

; <label>:513:                                    ; preds = %506
  %514 = bitcast %struct.lua_TValue* %509 to double*, !dbg !1638
  %515 = load double, double* %514, align 8, !dbg !1638, !tbaa !432
  %516 = fsub double -0.000000e+00, %515, !dbg !1640
  %517 = bitcast %struct.lua_TValue* %132 to double*, !dbg !1640
  store double %516, double* %517, align 8, !dbg !1640, !tbaa !432
  %518 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %128, i64 %131, i32 1, !dbg !1640
  store i32 3, i32* %518, align 8, !dbg !1640, !tbaa !423
  br label %521, !dbg !1641

; <label>:519:                                    ; preds = %506
  store i32* %56, i32** %8, align 8, !dbg !1642, !tbaa !1382
  call fastcc void @Arith(%struct.lua_State* nonnull %0, %struct.lua_TValue* nonnull %132, %struct.lua_TValue* %509, %struct.lua_TValue* %509, i32 11) #6, !dbg !1645
  %520 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !1642, !tbaa !984
  br label %521

; <label>:521:                                    ; preds = %519, %513
  %522 = phi %struct.lua_TValue* [ %128, %513 ], [ %520, %519 ], !dbg !1647
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %1236

; <label>:523:                                    ; preds = %127
  %524 = lshr i32 %57, 23, !dbg !1648
  %525 = zext i32 %524 to i64, !dbg !1648
  %526 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %128, i64 %525, i32 1, !dbg !1648
  %527 = load i32, i32* %526, align 8, !dbg !1648, !tbaa !423
  %528 = icmp eq i32 %527, 0, !dbg !1648
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1648
  br i1 %528, label %536, label %529, !dbg !1648

; <label>:529:                                    ; preds = %523
  %530 = icmp eq i32 %527, 1, !dbg !1648
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1648
  br i1 %530, label %531, label %536, !dbg !1648

; <label>:531:                                    ; preds = %529
  %532 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %128, i64 %525, i32 0, !dbg !1648
  %533 = bitcast %union.Value* %532 to i32*, !dbg !1648
  %534 = load i32, i32* %533, align 8, !dbg !1648, !tbaa !432
  %535 = icmp eq i32 %534, 0, !dbg !1648
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %536

; <label>:536:                                    ; preds = %529, %531, %523
  %537 = phi i1 [ true, %523 ], [ false, %529 ], [ %535, %531 ]
  %538 = zext i1 %537 to i32, !dbg !1648
  %539 = bitcast %struct.lua_TValue* %132 to i32*, !dbg !1650
  store i32 %538, i32* %539, align 8, !dbg !1650, !tbaa !432
  %540 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %128, i64 %131, i32 1, !dbg !1650
  store i32 1, i32* %540, align 8, !dbg !1650, !tbaa !423
  br label %1236

; <label>:541:                                    ; preds = %127
  %542 = lshr i32 %57, 23, !dbg !1651
  %543 = zext i32 %542 to i64, !dbg !1651
  %544 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %128, i64 %543, !dbg !1651
  %545 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %128, i64 %543, i32 1, !dbg !1653
  %546 = load i32, i32* %545, align 8, !dbg !1653, !tbaa !423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1654
  switch i32 %546, label %562 [
    i32 5, label %547
    i32 4, label %554
  ], !dbg !1654

; <label>:547:                                    ; preds = %541
  %548 = bitcast %struct.lua_TValue* %544 to %struct.Table**, !dbg !1655
  %549 = load %struct.Table*, %struct.Table** %548, align 8, !dbg !1655, !tbaa !432
  %550 = call i32 @luaH_getn(%struct.Table* %549) #5, !dbg !1655
  %551 = sitofp i32 %550 to double, !dbg !1655
  %552 = bitcast %struct.lua_TValue* %132 to double*, !dbg !1655
  store double %551, double* %552, align 8, !dbg !1655, !tbaa !432
  %553 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %128, i64 %131, i32 1, !dbg !1655
  store i32 3, i32* %553, align 8, !dbg !1655, !tbaa !423
  br label %568, !dbg !1656

; <label>:554:                                    ; preds = %541
  %555 = bitcast %struct.lua_TValue* %544 to %struct.anon**, !dbg !1657
  %556 = load %struct.anon*, %struct.anon** %555, align 8, !dbg !1657, !tbaa !432
  %557 = getelementptr inbounds %struct.anon, %struct.anon* %556, i64 0, i32 5, !dbg !1657
  %558 = load i64, i64* %557, align 8, !dbg !1657, !tbaa !432
  %559 = uitofp i64 %558 to double, !dbg !1657
  %560 = bitcast %struct.lua_TValue* %132 to double*, !dbg !1657
  store double %559, double* %560, align 8, !dbg !1657, !tbaa !432
  %561 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %128, i64 %131, i32 1, !dbg !1657
  store i32 3, i32* %561, align 8, !dbg !1657, !tbaa !423
  br label %568, !dbg !1658

; <label>:562:                                    ; preds = %541
  store i32* %56, i32** %8, align 8, !dbg !1659, !tbaa !1382
  %563 = call fastcc i32 @call_binTM(%struct.lua_State* nonnull %0, %struct.lua_TValue* %544, %struct.lua_TValue* nonnull @luaO_nilobject_, %struct.lua_TValue* nonnull %132, i32 12) #6, !dbg !1662
  %564 = icmp eq i32 %563, 0, !dbg !1662
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1665
  br i1 %564, label %565, label %566, !dbg !1665

; <label>:565:                                    ; preds = %562
  call void @luaG_typeerror(%struct.lua_State* nonnull %0, %struct.lua_TValue* %544, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !1662
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1662
  br label %566, !dbg !1662

; <label>:566:                                    ; preds = %562, %565
  %567 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !1659, !tbaa !984
  br label %568, !dbg !1666

; <label>:568:                                    ; preds = %566, %554, %547
  %569 = phi %struct.lua_TValue* [ %567, %566 ], [ %128, %554 ], [ %128, %547 ], !dbg !1667
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1668
  br label %1236

; <label>:570:                                    ; preds = %127
  %571 = lshr i32 %57, 23, !dbg !1669
  %572 = lshr i32 %57, 14, !dbg !1671
  %573 = and i32 %572, 511, !dbg !1671
  store i32* %56, i32** %8, align 8, !dbg !1673, !tbaa !1382
  %574 = sub nsw i32 1, %571, !dbg !1675
  %575 = add nsw i32 %574, %573, !dbg !1675
  call void @luaV_concat(%struct.lua_State* nonnull %0, i32 %575, i32 %573) #6, !dbg !1675
  %576 = load %struct.global_State*, %struct.global_State** %19, align 8, !dbg !1677, !tbaa !517
  %577 = getelementptr inbounds %struct.global_State, %struct.global_State* %576, i64 0, i32 14, !dbg !1677
  %578 = load i64, i64* %577, align 8, !dbg !1677, !tbaa !1561
  %579 = getelementptr inbounds %struct.global_State, %struct.global_State* %576, i64 0, i32 13, !dbg !1677
  %580 = load i64, i64* %579, align 8, !dbg !1677, !tbaa !1565
  %581 = icmp ult i64 %578, %580, !dbg !1677
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1680
  br i1 %581, label %583, label %582, !dbg !1680

; <label>:582:                                    ; preds = %570
  call void @luaC_step(%struct.lua_State* nonnull %0) #5, !dbg !1677
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1677
  br label %583, !dbg !1677

; <label>:583:                                    ; preds = %570, %582
  %584 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !1673, !tbaa !984
  %585 = zext i32 %571 to i64, !dbg !1681
  %586 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %584, i64 %585, !dbg !1681
  %587 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %584, i64 %131, !dbg !1681
  %588 = bitcast %struct.lua_TValue* %586 to i64*, !dbg !1681
  %589 = bitcast %struct.lua_TValue* %587 to i64*, !dbg !1681
  %590 = load i64, i64* %588, align 8, !dbg !1681
  store i64 %590, i64* %589, align 8, !dbg !1681
  %591 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %584, i64 %585, i32 1, !dbg !1681
  %592 = load i32, i32* %591, align 8, !dbg !1681, !tbaa !423
  %593 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %584, i64 %131, i32 1, !dbg !1681
  store i32 %592, i32* %593, align 8, !dbg !1681, !tbaa !423
  br label %1236

; <label>:594:                                    ; preds = %127
  %595 = lshr i32 %57, 14, !dbg !1682
  %596 = add nsw i32 %595, -131071, !dbg !1682
  %597 = sext i32 %596 to i64, !dbg !1682
  %598 = getelementptr inbounds i32, i32* %56, i64 %597, !dbg !1682
  br label %1236, !dbg !1685, !llvm.loop !1485

; <label>:599:                                    ; preds = %127
  %600 = lshr i32 %57, 23, !dbg !1686
  %601 = icmp slt i32 %57, 0, !dbg !1686
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1686
  %602 = and i32 %600, 255, !dbg !1686
  %603 = select i1 %601, i32 %602, i32 %600, !dbg !1686
  %604 = select i1 %601, %struct.lua_TValue* %46, %struct.lua_TValue* %128, !dbg !1686
  %605 = zext i32 %603 to i64, !dbg !1686
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1686
  %606 = lshr i32 %57, 14, !dbg !1687
  %607 = and i32 %57, 4194304, !dbg !1687
  %608 = icmp eq i32 %607, 0, !dbg !1687
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1687
  %609 = select i1 %608, i32 511, i32 255, !dbg !1687
  %610 = select i1 %608, %struct.lua_TValue* %128, %struct.lua_TValue* %46, !dbg !1687
  %611 = and i32 %606, %609, !dbg !1687
  %612 = zext i32 %611 to i64, !dbg !1687
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1687
  store i32* %56, i32** %8, align 8, !dbg !1688, !tbaa !1382
  %613 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %604, i64 %605, i32 1, !dbg !1690
  %614 = load i32, i32* %613, align 8, !dbg !1690, !tbaa !423
  %615 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %610, i64 %612, i32 1, !dbg !1690
  %616 = load i32, i32* %615, align 8, !dbg !1690, !tbaa !423
  %617 = icmp eq i32 %614, %616, !dbg !1690
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1690
  br i1 %617, label %618, label %623, !dbg !1690

; <label>:618:                                    ; preds = %599
  %619 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %610, i64 %612, !dbg !1687
  %620 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %604, i64 %605, !dbg !1686
  %621 = call i32 @luaV_equalval(%struct.lua_State* nonnull %0, %struct.lua_TValue* nonnull %620, %struct.lua_TValue* %619) #6, !dbg !1690
  %622 = icmp ne i32 %621, 0, !dbg !1690
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %623

; <label>:623:                                    ; preds = %618, %599
  %624 = phi i1 [ false, %599 ], [ %622, %618 ], !dbg !1695
  %625 = zext i1 %624 to i32, !dbg !1690
  %626 = icmp eq i32 %130, %625, !dbg !1690
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1696
  br i1 %626, label %627, label %633, !dbg !1696

; <label>:627:                                    ; preds = %623
  %628 = load i32, i32* %56, align 4, !dbg !1697, !tbaa !1403
  %629 = lshr i32 %628, 14, !dbg !1697
  %630 = add nsw i32 %629, -131071, !dbg !1697
  %631 = sext i32 %630 to i64, !dbg !1697
  %632 = getelementptr inbounds i32, i32* %56, i64 %631, !dbg !1697
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1697
  br label %633, !dbg !1697

; <label>:633:                                    ; preds = %627, %623
  %634 = phi i32* [ %632, %627 ], [ %56, %623 ], !dbg !1400
  %635 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !1688, !tbaa !984
  %636 = getelementptr inbounds i32, i32* %634, i64 1, !dbg !1699
  br label %1236

; <label>:637:                                    ; preds = %127
  store i32* %56, i32** %8, align 8, !dbg !1700, !tbaa !1382
  %638 = lshr i32 %57, 23, !dbg !1703
  %639 = icmp slt i32 %57, 0, !dbg !1703
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1703
  %640 = and i32 %638, 255, !dbg !1703
  %641 = select i1 %639, i32 %640, i32 %638, !dbg !1703
  %642 = select i1 %639, %struct.lua_TValue* %46, %struct.lua_TValue* %128, !dbg !1703
  %643 = zext i32 %641 to i64, !dbg !1703
  %644 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %642, i64 %643, !dbg !1703
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1703
  %645 = lshr i32 %57, 14, !dbg !1703
  %646 = and i32 %57, 4194304, !dbg !1703
  %647 = icmp eq i32 %646, 0, !dbg !1703
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1703
  %648 = select i1 %647, i32 511, i32 255, !dbg !1703
  %649 = select i1 %647, %struct.lua_TValue* %128, %struct.lua_TValue* %46, !dbg !1703
  %650 = and i32 %645, %648, !dbg !1703
  %651 = zext i32 %650 to i64, !dbg !1703
  %652 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %649, i64 %651, !dbg !1703
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1703
  %653 = call i32 @luaV_lessthan(%struct.lua_State* nonnull %0, %struct.lua_TValue* %644, %struct.lua_TValue* %652) #6, !dbg !1703
  %654 = icmp eq i32 %653, %130, !dbg !1703
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1706
  br i1 %654, label %655, label %661, !dbg !1706

; <label>:655:                                    ; preds = %637
  %656 = load i32, i32* %56, align 4, !dbg !1707, !tbaa !1403
  %657 = lshr i32 %656, 14, !dbg !1707
  %658 = add nsw i32 %657, -131071, !dbg !1707
  %659 = sext i32 %658 to i64, !dbg !1707
  %660 = getelementptr inbounds i32, i32* %56, i64 %659, !dbg !1707
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1707
  br label %661, !dbg !1707

; <label>:661:                                    ; preds = %655, %637
  %662 = phi i32* [ %660, %655 ], [ %56, %637 ], !dbg !1400
  %663 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !1700, !tbaa !984
  %664 = getelementptr inbounds i32, i32* %662, i64 1, !dbg !1709
  br label %1236, !dbg !1710, !llvm.loop !1485

; <label>:665:                                    ; preds = %127
  store i32* %56, i32** %8, align 8, !dbg !1711, !tbaa !1382
  %666 = lshr i32 %57, 23, !dbg !1714
  %667 = icmp slt i32 %57, 0, !dbg !1714
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1714
  %668 = and i32 %666, 255, !dbg !1714
  %669 = select i1 %667, i32 %668, i32 %666, !dbg !1714
  %670 = select i1 %667, %struct.lua_TValue* %46, %struct.lua_TValue* %128, !dbg !1714
  %671 = zext i32 %669 to i64, !dbg !1714
  %672 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %670, i64 %671, !dbg !1714
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1714
  %673 = lshr i32 %57, 14, !dbg !1714
  %674 = and i32 %57, 4194304, !dbg !1714
  %675 = icmp eq i32 %674, 0, !dbg !1714
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1714
  %676 = select i1 %675, i32 511, i32 255, !dbg !1714
  %677 = select i1 %675, %struct.lua_TValue* %128, %struct.lua_TValue* %46, !dbg !1714
  %678 = and i32 %673, %676, !dbg !1714
  %679 = zext i32 %678 to i64, !dbg !1714
  %680 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %677, i64 %679, !dbg !1714
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1714
  %681 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %670, i64 %671, i32 1, !dbg !1727
  %682 = load i32, i32* %681, align 8, !dbg !1727, !tbaa !423
  %683 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %677, i64 %679, i32 1, !dbg !1729
  %684 = load i32, i32* %683, align 8, !dbg !1729, !tbaa !423
  %685 = icmp eq i32 %682, %684, !dbg !1730
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1731
  br i1 %685, label %688, label %686, !dbg !1731

; <label>:686:                                    ; preds = %665
  %687 = call i32 @luaG_ordererror(%struct.lua_State* nonnull %0, %struct.lua_TValue* nonnull %672, %struct.lua_TValue* nonnull %680) #5, !dbg !1732
  br label %718, !dbg !1733

; <label>:688:                                    ; preds = %665
  %689 = icmp eq i32 %682, 3, !dbg !1734
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1736
  br i1 %689, label %690, label %697, !dbg !1736

; <label>:690:                                    ; preds = %688
  %691 = bitcast %struct.lua_TValue* %672 to double*, !dbg !1737
  %692 = load double, double* %691, align 8, !dbg !1737, !tbaa !432
  %693 = bitcast %struct.lua_TValue* %680 to double*, !dbg !1737
  %694 = load double, double* %693, align 8, !dbg !1737, !tbaa !432
  %695 = fcmp ole double %692, %694, !dbg !1737
  %696 = zext i1 %695 to i32, !dbg !1737
  br label %718, !dbg !1738

; <label>:697:                                    ; preds = %688
  %698 = icmp eq i32 %682, 4, !dbg !1739
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1741
  br i1 %698, label %699, label %707, !dbg !1741

; <label>:699:                                    ; preds = %697
  %700 = bitcast %struct.lua_TValue* %672 to %union.TString**, !dbg !1742
  %701 = load %union.TString*, %union.TString** %700, align 8, !dbg !1742, !tbaa !432
  %702 = bitcast %struct.lua_TValue* %680 to %union.TString**, !dbg !1743
  %703 = load %union.TString*, %union.TString** %702, align 8, !dbg !1743, !tbaa !432
  %704 = call fastcc i32 @l_strcmp(%union.TString* %701, %union.TString* %703) #5, !dbg !1744
  %705 = icmp slt i32 %704, 1, !dbg !1745
  %706 = zext i1 %705 to i32, !dbg !1745
  br label %718, !dbg !1746

; <label>:707:                                    ; preds = %697
  %708 = call fastcc i32 @call_orderTM(%struct.lua_State* nonnull %0, %struct.lua_TValue* nonnull %672, %struct.lua_TValue* nonnull %680, i32 14) #5, !dbg !1747
  %709 = icmp eq i32 %708, -1, !dbg !1750
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1751
  br i1 %709, label %710, label %718, !dbg !1751

; <label>:710:                                    ; preds = %707
  %711 = call fastcc i32 @call_orderTM(%struct.lua_State* nonnull %0, %struct.lua_TValue* nonnull %680, %struct.lua_TValue* nonnull %672, i32 13) #5, !dbg !1752
  %712 = icmp eq i32 %711, -1, !dbg !1754
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1755
  br i1 %712, label %716, label %713, !dbg !1755

; <label>:713:                                    ; preds = %710
  %714 = icmp eq i32 %711, 0, !dbg !1756
  %715 = zext i1 %714 to i32, !dbg !1756
  br label %718, !dbg !1757

; <label>:716:                                    ; preds = %710
  %717 = call i32 @luaG_ordererror(%struct.lua_State* nonnull %0, %struct.lua_TValue* nonnull %672, %struct.lua_TValue* nonnull %680) #5, !dbg !1758
  br label %718, !dbg !1759

; <label>:718:                                    ; preds = %707, %686, %690, %699, %713, %716
  %719 = phi i32 [ %687, %686 ], [ %696, %690 ], [ %706, %699 ], [ %715, %713 ], [ %717, %716 ], [ %708, %707 ], !dbg !1760
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1762
  %720 = icmp eq i32 %719, %130, !dbg !1714
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1763
  br i1 %720, label %721, label %727, !dbg !1763

; <label>:721:                                    ; preds = %718
  %722 = load i32, i32* %56, align 4, !dbg !1764, !tbaa !1403
  %723 = lshr i32 %722, 14, !dbg !1764
  %724 = add nsw i32 %723, -131071, !dbg !1764
  %725 = sext i32 %724 to i64, !dbg !1764
  %726 = getelementptr inbounds i32, i32* %56, i64 %725, !dbg !1764
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1764
  br label %727, !dbg !1764

; <label>:727:                                    ; preds = %721, %718
  %728 = phi i32* [ %726, %721 ], [ %56, %718 ], !dbg !1400
  %729 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !1711, !tbaa !984
  %730 = getelementptr inbounds i32, i32* %728, i64 1, !dbg !1766
  br label %1236, !dbg !1767, !llvm.loop !1485

; <label>:731:                                    ; preds = %127
  %732 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %128, i64 %131, i32 1, !dbg !1768
  %733 = load i32, i32* %732, align 8, !dbg !1768, !tbaa !423
  %734 = icmp eq i32 %733, 0, !dbg !1768
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1768
  br i1 %734, label %741, label %735, !dbg !1768

; <label>:735:                                    ; preds = %731
  %736 = icmp eq i32 %733, 1, !dbg !1768
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1768
  br i1 %736, label %737, label %741, !dbg !1768

; <label>:737:                                    ; preds = %735
  %738 = bitcast %struct.lua_TValue* %132 to i32*, !dbg !1768
  %739 = load i32, i32* %738, align 8, !dbg !1768, !tbaa !432
  %740 = icmp eq i32 %739, 0, !dbg !1768
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %741

; <label>:741:                                    ; preds = %735, %737, %731
  %742 = phi i1 [ true, %731 ], [ false, %735 ], [ %740, %737 ]
  %743 = zext i1 %742 to i32, !dbg !1768
  %744 = lshr i32 %57, 14, !dbg !1771
  %745 = and i32 %744, 511, !dbg !1771
  %746 = icmp eq i32 %745, %743, !dbg !1772
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1773
  br i1 %746, label %753, label %747, !dbg !1773

; <label>:747:                                    ; preds = %741
  %748 = load i32, i32* %56, align 4, !dbg !1774, !tbaa !1403
  %749 = lshr i32 %748, 14, !dbg !1774
  %750 = add nsw i32 %749, -131071, !dbg !1774
  %751 = sext i32 %750 to i64, !dbg !1774
  %752 = getelementptr inbounds i32, i32* %56, i64 %751, !dbg !1774
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1774
  br label %753, !dbg !1774

; <label>:753:                                    ; preds = %741, %747
  %754 = phi i32* [ %752, %747 ], [ %56, %741 ], !dbg !1400
  %755 = getelementptr inbounds i32, i32* %754, i64 1, !dbg !1776
  br label %1236, !dbg !1777, !llvm.loop !1485

; <label>:756:                                    ; preds = %127
  %757 = lshr i32 %57, 23, !dbg !1778
  %758 = zext i32 %757 to i64, !dbg !1778
  %759 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %128, i64 %758, !dbg !1778
  %760 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %128, i64 %758, i32 1, !dbg !1780
  %761 = load i32, i32* %760, align 8, !dbg !1780, !tbaa !423
  %762 = icmp eq i32 %761, 0, !dbg !1780
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1780
  br i1 %762, label %769, label %763, !dbg !1780

; <label>:763:                                    ; preds = %756
  %764 = icmp eq i32 %761, 1, !dbg !1780
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1780
  br i1 %764, label %765, label %769, !dbg !1780

; <label>:765:                                    ; preds = %763
  %766 = bitcast %struct.lua_TValue* %759 to i32*, !dbg !1780
  %767 = load i32, i32* %766, align 8, !dbg !1780, !tbaa !432
  %768 = icmp eq i32 %767, 0, !dbg !1780
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %769

; <label>:769:                                    ; preds = %763, %765, %756
  %770 = phi i1 [ true, %756 ], [ false, %763 ], [ %768, %765 ]
  %771 = zext i1 %770 to i32, !dbg !1780
  %772 = lshr i32 %57, 14, !dbg !1781
  %773 = and i32 %772, 511, !dbg !1781
  %774 = icmp eq i32 %773, %771, !dbg !1782
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1783
  br i1 %774, label %786, label %775, !dbg !1783

; <label>:775:                                    ; preds = %769
  %776 = bitcast %struct.lua_TValue* %759 to i64*, !dbg !1784
  %777 = bitcast %struct.lua_TValue* %132 to i64*, !dbg !1784
  %778 = load i64, i64* %776, align 8, !dbg !1784
  store i64 %778, i64* %777, align 8, !dbg !1784
  %779 = load i32, i32* %760, align 8, !dbg !1784, !tbaa !423
  %780 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %128, i64 %131, i32 1, !dbg !1784
  store i32 %779, i32* %780, align 8, !dbg !1784, !tbaa !423
  %781 = load i32, i32* %56, align 4, !dbg !1785, !tbaa !1403
  %782 = lshr i32 %781, 14, !dbg !1785
  %783 = add nsw i32 %782, -131071, !dbg !1785
  %784 = sext i32 %783 to i64, !dbg !1785
  %785 = getelementptr inbounds i32, i32* %56, i64 %784, !dbg !1785
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1787
  br label %786, !dbg !1787

; <label>:786:                                    ; preds = %769, %775
  %787 = phi i32* [ %785, %775 ], [ %56, %769 ], !dbg !1400
  %788 = getelementptr inbounds i32, i32* %787, i64 1, !dbg !1788
  br label %1236

; <label>:789:                                    ; preds = %127
  %790 = lshr i32 %57, 23, !dbg !1789
  %791 = lshr i32 %57, 14, !dbg !1791
  %792 = and i32 %791, 511, !dbg !1791
  %793 = add nsw i32 %792, -1, !dbg !1792
  %794 = icmp eq i32 %790, 0, !dbg !1794
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1796
  br i1 %794, label %798, label %795, !dbg !1796

; <label>:795:                                    ; preds = %789
  %796 = zext i32 %790 to i64, !dbg !1797
  %797 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %132, i64 %796, !dbg !1797
  store %struct.lua_TValue* %797, %struct.lua_TValue** %20, align 8, !dbg !1798, !tbaa !566
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1799
  br label %798, !dbg !1799

; <label>:798:                                    ; preds = %789, %795
  store i32* %56, i32** %8, align 8, !dbg !1800, !tbaa !1382
  %799 = call i32 @luaD_precall(%struct.lua_State* nonnull %0, %struct.lua_TValue* %132, i32 %793) #5, !dbg !1801
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1802
  switch i32 %799, label %1239 [
    i32 0, label %800
    i32 1, label %802
  ], !dbg !1802

; <label>:800:                                    ; preds = %798
  %801 = add nsw i32 %52, 1, !dbg !1803
  br label %1239, !dbg !1806

; <label>:802:                                    ; preds = %798
  %803 = icmp eq i32 %792, 0, !dbg !1807
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1810
  br i1 %803, label %809, label %804, !dbg !1810

; <label>:804:                                    ; preds = %802
  %805 = load %struct.CallInfo*, %struct.CallInfo** %9, align 8, !dbg !1811, !tbaa !1385
  %806 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %805, i64 0, i32 2, !dbg !1812
  %807 = bitcast %struct.lua_TValue** %806 to i64*, !dbg !1812
  %808 = load i64, i64* %807, align 8, !dbg !1812, !tbaa !1813
  store i64 %808, i64* %21, align 8, !dbg !1814, !tbaa !566
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1815
  br label %809, !dbg !1815

; <label>:809:                                    ; preds = %802, %804
  %810 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !1816, !tbaa !984
  br label %1239, !dbg !1817, !llvm.loop !1485

; <label>:811:                                    ; preds = %127
  %812 = lshr i32 %57, 23, !dbg !1818
  %813 = icmp eq i32 %812, 0, !dbg !1820
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1822
  br i1 %813, label %817, label %814, !dbg !1822

; <label>:814:                                    ; preds = %811
  %815 = zext i32 %812 to i64, !dbg !1823
  %816 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %132, i64 %815, !dbg !1823
  store %struct.lua_TValue* %816, %struct.lua_TValue** %20, align 8, !dbg !1824, !tbaa !566
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1825
  br label %817, !dbg !1825

; <label>:817:                                    ; preds = %811, %814
  store i32* %56, i32** %8, align 8, !dbg !1826, !tbaa !1382
  %818 = call i32 @luaD_precall(%struct.lua_State* nonnull %0, %struct.lua_TValue* %132, i32 -1) #5, !dbg !1827
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1828
  switch i32 %818, label %1239 [
    i32 0, label %819
    i32 1, label %867
  ], !dbg !1828

; <label>:819:                                    ; preds = %817
  %820 = load %struct.CallInfo*, %struct.CallInfo** %9, align 8, !dbg !1829, !tbaa !1385
  %821 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %820, i64 -1, i32 1, !dbg !1831
  %822 = load %struct.lua_TValue*, %struct.lua_TValue** %821, align 8, !dbg !1831, !tbaa !1386
  %823 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %820, i64 0, i32 1, !dbg !1833
  %824 = load %struct.lua_TValue*, %struct.lua_TValue** %823, align 8, !dbg !1833, !tbaa !1386
  %825 = load %union.GCObject*, %union.GCObject** %22, align 8, !dbg !1835, !tbaa !1837
  %826 = icmp eq %union.GCObject* %825, null, !dbg !1838
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1839
  %827 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %820, i64 -1, i32 0, !dbg !1840
  br i1 %826, label %831, label %828, !dbg !1839

; <label>:828:                                    ; preds = %819
  %829 = load %struct.lua_TValue*, %struct.lua_TValue** %827, align 8, !dbg !1841, !tbaa !1842
  call void @luaF_close(%struct.lua_State* nonnull %0, %struct.lua_TValue* %829) #5, !dbg !1843
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1843
  %830 = load %struct.lua_TValue*, %struct.lua_TValue** %821, align 8, !dbg !1844, !tbaa !1386
  br label %831, !dbg !1843

; <label>:831:                                    ; preds = %819, %828
  %832 = phi %struct.lua_TValue* [ %830, %828 ], [ %822, %819 ], !dbg !1844
  %833 = bitcast %struct.CallInfo* %820 to i64*, !dbg !1845
  %834 = load i64, i64* %833, align 8, !dbg !1845, !tbaa !1842
  %835 = ptrtoint %struct.lua_TValue* %824 to i64, !dbg !1846
  %836 = sub i64 %834, %835, !dbg !1846
  %837 = ashr exact i64 %836, 4, !dbg !1846
  %838 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %832, i64 %837, !dbg !1847
  store %struct.lua_TValue* %838, %struct.lua_TValue** %827, align 8, !dbg !1848, !tbaa !1842
  store %struct.lua_TValue* %838, %struct.lua_TValue** %10, align 8, !dbg !1849, !tbaa !984
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1851
  %839 = load %struct.lua_TValue*, %struct.lua_TValue** %20, align 8, !dbg !1852, !tbaa !566
  %840 = icmp ult %struct.lua_TValue* %824, %839, !dbg !1853
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1854
  br i1 %840, label %841, label %856, !dbg !1854

; <label>:841:                                    ; preds = %831, %841
  %842 = phi i64 [ %851, %841 ], [ 0, %831 ]
  %843 = phi %struct.lua_TValue* [ %855, %841 ], [ %822, %831 ]
  %844 = phi %struct.lua_TValue* [ %852, %841 ], [ %824, %831 ]
  %845 = bitcast %struct.lua_TValue* %844 to i64*, !dbg !1855
  %846 = bitcast %struct.lua_TValue* %843 to i64*, !dbg !1855
  %847 = load i64, i64* %845, align 8, !dbg !1855
  store i64 %847, i64* %846, align 8, !dbg !1855
  %848 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %824, i64 %842, i32 1, !dbg !1855
  %849 = load i32, i32* %848, align 8, !dbg !1855, !tbaa !423
  %850 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %822, i64 %842, i32 1, !dbg !1855
  store i32 %849, i32* %850, align 8, !dbg !1855, !tbaa !423
  %851 = add nuw i64 %842, 1, !dbg !1856
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1857
  %852 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %824, i64 %851, !dbg !1858
  %853 = load %struct.lua_TValue*, %struct.lua_TValue** %20, align 8, !dbg !1852, !tbaa !566
  %854 = icmp ult %struct.lua_TValue* %852, %853, !dbg !1853
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1854
  %855 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %822, i64 %851, !dbg !1859
  br i1 %854, label %841, label %856, !dbg !1854, !llvm.loop !1860

; <label>:856:                                    ; preds = %841, %831
  %857 = phi %struct.lua_TValue* [ %822, %831 ], [ %855, %841 ], !dbg !1859
  store %struct.lua_TValue* %857, %struct.lua_TValue** %20, align 8, !dbg !1862, !tbaa !566
  %858 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %820, i64 -1, i32 2, !dbg !1863
  store %struct.lua_TValue* %857, %struct.lua_TValue** %858, align 8, !dbg !1864, !tbaa !1813
  %859 = load i64, i64* %30, align 8, !dbg !1865, !tbaa !1382
  %860 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %820, i64 -1, i32 3, !dbg !1866
  %861 = bitcast i32** %860 to i64*, !dbg !1867
  store i64 %859, i64* %861, align 8, !dbg !1867, !tbaa !1868
  %862 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %820, i64 -1, i32 5, !dbg !1869
  %863 = load i32, i32* %862, align 4, !dbg !1870, !tbaa !1871
  %864 = add nsw i32 %863, 1, !dbg !1870
  store i32 %864, i32* %862, align 4, !dbg !1870, !tbaa !1871
  %865 = load %struct.CallInfo*, %struct.CallInfo** %9, align 8, !dbg !1872, !tbaa !1385
  %866 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %865, i64 -1, !dbg !1872
  store %struct.CallInfo* %866, %struct.CallInfo** %9, align 8, !dbg !1872, !tbaa !1385
  br label %1239

; <label>:867:                                    ; preds = %817
  %868 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !1873, !tbaa !984
  br label %1239, !dbg !1875, !llvm.loop !1485

; <label>:869:                                    ; preds = %127
  %870 = lshr i32 %57, 23, !dbg !1876
  %871 = icmp eq i32 %870, 0, !dbg !1878
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1880
  br i1 %871, label %876, label %872, !dbg !1880

; <label>:872:                                    ; preds = %869
  %873 = zext i32 %870 to i64, !dbg !1881
  %874 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %132, i64 -1, !dbg !1881
  %875 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %874, i64 %873, !dbg !1882
  store %struct.lua_TValue* %875, %struct.lua_TValue** %20, align 8, !dbg !1883, !tbaa !566
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1884
  br label %876, !dbg !1884

; <label>:876:                                    ; preds = %869, %872
  %877 = load %union.GCObject*, %union.GCObject** %22, align 8, !dbg !1885, !tbaa !1837
  %878 = icmp eq %union.GCObject* %877, null, !dbg !1887
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1888
  br i1 %878, label %880, label %879, !dbg !1888

; <label>:879:                                    ; preds = %876
  call void @luaF_close(%struct.lua_State* nonnull %0, %struct.lua_TValue* %128) #5, !dbg !1889
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1889
  br label %880, !dbg !1889

; <label>:880:                                    ; preds = %876, %879
  store i32* %56, i32** %8, align 8, !dbg !1890, !tbaa !1382
  %881 = call i32 @luaD_poscall(%struct.lua_State* nonnull %0, %struct.lua_TValue* %132) #5, !dbg !1891
  %882 = add nsw i32 %52, -1, !dbg !1892
  %883 = icmp eq i32 %882, 0, !dbg !1894
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1895
  br i1 %883, label %1239, label %884, !dbg !1895

; <label>:884:                                    ; preds = %880
  %885 = icmp eq i32 %881, 0, !dbg !1896
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1899
  br i1 %885, label %1239, label %886, !dbg !1899

; <label>:886:                                    ; preds = %884
  %887 = load %struct.CallInfo*, %struct.CallInfo** %9, align 8, !dbg !1900, !tbaa !1385
  %888 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %887, i64 0, i32 2, !dbg !1901
  %889 = bitcast %struct.lua_TValue** %888 to i64*, !dbg !1901
  %890 = load i64, i64* %889, align 8, !dbg !1901, !tbaa !1813
  store i64 %890, i64* %21, align 8, !dbg !1902, !tbaa !566
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1903
  br label %1239, !dbg !1903

; <label>:891:                                    ; preds = %127
  %892 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %132, i64 2, !dbg !1904
  %893 = bitcast %struct.lua_TValue* %892 to double*, !dbg !1904
  %894 = load double, double* %893, align 8, !dbg !1904, !tbaa !432
  %895 = bitcast %struct.lua_TValue* %132 to double*, !dbg !1906
  %896 = load double, double* %895, align 8, !dbg !1906, !tbaa !432
  %897 = fadd double %894, %896, !dbg !1906
  %898 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %132, i64 1, !dbg !1908
  %899 = bitcast %struct.lua_TValue* %898 to double*, !dbg !1908
  %900 = load double, double* %899, align 8, !dbg !1908, !tbaa !432
  %901 = fcmp ogt double %894, 0.000000e+00, !dbg !1910
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1911
  br i1 %901, label %902, label %904, !dbg !1911

; <label>:902:                                    ; preds = %891
  %903 = fcmp ugt double %897, %900, !dbg !1912
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1910
  br i1 %903, label %1236, label %906, !dbg !1910

; <label>:904:                                    ; preds = %891
  %905 = fcmp ugt double %900, %897, !dbg !1913
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1911
  br i1 %905, label %1236, label %906, !dbg !1911

; <label>:906:                                    ; preds = %902, %904
  %907 = lshr i32 %57, 14, !dbg !1914
  %908 = add nsw i32 %907, -131071, !dbg !1914
  %909 = sext i32 %908 to i64, !dbg !1914
  %910 = getelementptr inbounds i32, i32* %56, i64 %909, !dbg !1914
  store double %897, double* %895, align 8, !dbg !1916, !tbaa !432
  %911 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %128, i64 %131, i32 1, !dbg !1916
  store i32 3, i32* %911, align 8, !dbg !1916, !tbaa !423
  %912 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %132, i64 3, !dbg !1917
  %913 = bitcast %struct.lua_TValue* %912 to double*, !dbg !1917
  store double %897, double* %913, align 8, !dbg !1917, !tbaa !432
  %914 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %912, i64 0, i32 1, !dbg !1917
  store i32 3, i32* %914, align 8, !dbg !1917, !tbaa !423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1918
  br label %1236, !dbg !1918

; <label>:915:                                    ; preds = %127
  %916 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %132, i64 1, !dbg !1920
  %917 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %132, i64 2, !dbg !1922
  store i32* %56, i32** %8, align 8, !dbg !1924, !tbaa !1382
  %918 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %128, i64 %131, i32 1, !dbg !1925
  %919 = load i32, i32* %918, align 8, !dbg !1925, !tbaa !423
  %920 = icmp eq i32 %919, 3, !dbg !1925
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1925
  br i1 %920, label %938, label %921, !dbg !1925

; <label>:921:                                    ; preds = %915
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #4, !dbg !1930
  %922 = load i32, i32* %918, align 8, !dbg !1931, !tbaa !423
  %923 = icmp eq i32 %922, 3, !dbg !1931
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1932
  br i1 %923, label %936, label %924, !dbg !1932

; <label>:924:                                    ; preds = %921
  %925 = icmp eq i32 %922, 4, !dbg !1933
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1934
  br i1 %925, label %926, label %937, !dbg !1934

; <label>:926:                                    ; preds = %924
  %927 = bitcast %struct.lua_TValue* %132 to %union.TString**, !dbg !1935
  %928 = load %union.TString*, %union.TString** %927, align 8, !dbg !1935, !tbaa !432
  %929 = getelementptr inbounds %union.TString, %union.TString* %928, i64 1, !dbg !1935
  %930 = bitcast %union.TString* %929 to i8*, !dbg !1935
  %931 = call i32 @luaO_str2d(i8* nonnull %930, double* nonnull %5) #5, !dbg !1937
  %932 = icmp eq i32 %931, 0, !dbg !1937
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1938
  br i1 %932, label %937, label %933, !dbg !1938

; <label>:933:                                    ; preds = %926
  %934 = load i64, i64* %31, align 8, !dbg !1939, !tbaa !437
  %935 = bitcast %struct.lua_TValue* %132 to i64*, !dbg !1939
  store i64 %934, i64* %935, align 8, !dbg !1939, !tbaa !432
  store i32 3, i32* %918, align 8, !dbg !1939, !tbaa !423
  br label %936, !dbg !1940

; <label>:936:                                    ; preds = %921, %933
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1941
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #4, !dbg !1942
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1942
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1943
  br label %938, !dbg !1943

; <label>:937:                                    ; preds = %926, %924
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1944
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #4, !dbg !1942
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1942
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1943
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0)) #5, !dbg !1945
  br label %980, !dbg !1945

; <label>:938:                                    ; preds = %936, %915
  %939 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %916, i64 0, i32 1, !dbg !1946
  %940 = load i32, i32* %939, align 8, !dbg !1946, !tbaa !423
  %941 = icmp eq i32 %940, 3, !dbg !1946
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1946
  br i1 %941, label %959, label %942, !dbg !1946

; <label>:942:                                    ; preds = %938
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #4, !dbg !1951
  %943 = load i32, i32* %939, align 8, !dbg !1952, !tbaa !423
  %944 = icmp eq i32 %943, 3, !dbg !1952
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1953
  br i1 %944, label %957, label %945, !dbg !1953

; <label>:945:                                    ; preds = %942
  %946 = icmp eq i32 %943, 4, !dbg !1954
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1955
  br i1 %946, label %947, label %958, !dbg !1955

; <label>:947:                                    ; preds = %945
  %948 = bitcast %struct.lua_TValue* %916 to %union.TString**, !dbg !1956
  %949 = load %union.TString*, %union.TString** %948, align 8, !dbg !1956, !tbaa !432
  %950 = getelementptr inbounds %union.TString, %union.TString* %949, i64 1, !dbg !1956
  %951 = bitcast %union.TString* %950 to i8*, !dbg !1956
  %952 = call i32 @luaO_str2d(i8* nonnull %951, double* nonnull %4) #5, !dbg !1958
  %953 = icmp eq i32 %952, 0, !dbg !1958
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1959
  br i1 %953, label %958, label %954, !dbg !1959

; <label>:954:                                    ; preds = %947
  %955 = load i64, i64* %32, align 8, !dbg !1960, !tbaa !437
  %956 = bitcast %struct.lua_TValue* %916 to i64*, !dbg !1960
  store i64 %955, i64* %956, align 8, !dbg !1960, !tbaa !432
  store i32 3, i32* %939, align 8, !dbg !1960, !tbaa !423
  br label %957, !dbg !1961

; <label>:957:                                    ; preds = %942, %954
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1962
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #4, !dbg !1963
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1963
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1964
  br label %959, !dbg !1964

; <label>:958:                                    ; preds = %947, %945
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1965
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #4, !dbg !1963
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1963
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1964
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0)) #5, !dbg !1966
  br label %980, !dbg !1966

; <label>:959:                                    ; preds = %957, %938
  %960 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %917, i64 0, i32 1, !dbg !1967
  %961 = load i32, i32* %960, align 8, !dbg !1967, !tbaa !423
  %962 = icmp eq i32 %961, 3, !dbg !1967
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1967
  br i1 %962, label %981, label %963, !dbg !1967

; <label>:963:                                    ; preds = %959
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %29) #4, !dbg !1972
  %964 = load i32, i32* %960, align 8, !dbg !1973, !tbaa !423
  %965 = icmp eq i32 %964, 3, !dbg !1973
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1974
  br i1 %965, label %978, label %966, !dbg !1974

; <label>:966:                                    ; preds = %963
  %967 = icmp eq i32 %964, 4, !dbg !1975
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1976
  br i1 %967, label %968, label %979, !dbg !1976

; <label>:968:                                    ; preds = %966
  %969 = bitcast %struct.lua_TValue* %917 to %union.TString**, !dbg !1977
  %970 = load %union.TString*, %union.TString** %969, align 8, !dbg !1977, !tbaa !432
  %971 = getelementptr inbounds %union.TString, %union.TString* %970, i64 1, !dbg !1977
  %972 = bitcast %union.TString* %971 to i8*, !dbg !1977
  %973 = call i32 @luaO_str2d(i8* nonnull %972, double* nonnull %3) #5, !dbg !1979
  %974 = icmp eq i32 %973, 0, !dbg !1979
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1980
  br i1 %974, label %979, label %975, !dbg !1980

; <label>:975:                                    ; preds = %968
  %976 = load i64, i64* %33, align 8, !dbg !1981, !tbaa !437
  %977 = bitcast %struct.lua_TValue* %917 to i64*, !dbg !1981
  store i64 %976, i64* %977, align 8, !dbg !1981, !tbaa !432
  store i32 3, i32* %960, align 8, !dbg !1981, !tbaa !423
  br label %978, !dbg !1982

; <label>:978:                                    ; preds = %963, %975
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1983
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %29) #4, !dbg !1984
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1984
  br label %980, !dbg !1985

; <label>:979:                                    ; preds = %968, %966
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1986
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %29) #4, !dbg !1984
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1984
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1985
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0)) #5, !dbg !1987
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1987
  unreachable, !dbg !1987

; <label>:980:                                    ; preds = %937, %958, %978
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1941
  br label %981, !dbg !1988

; <label>:981:                                    ; preds = %980, %959
  %982 = bitcast %struct.lua_TValue* %132 to double*, !dbg !1988
  %983 = load double, double* %982, align 8, !dbg !1988, !tbaa !432
  %984 = bitcast %struct.lua_TValue* %917 to double*, !dbg !1988
  %985 = load double, double* %984, align 8, !dbg !1988, !tbaa !432
  %986 = fsub double %983, %985, !dbg !1988
  store double %986, double* %982, align 8, !dbg !1988, !tbaa !432
  store i32 3, i32* %918, align 8, !dbg !1988, !tbaa !423
  %987 = lshr i32 %57, 14, !dbg !1989
  %988 = add nsw i32 %987, -131071, !dbg !1989
  %989 = sext i32 %988 to i64, !dbg !1989
  %990 = getelementptr inbounds i32, i32* %56, i64 %989, !dbg !1989
  br label %1236

; <label>:991:                                    ; preds = %127
  %992 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %132, i64 3, !dbg !1991
  %993 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %132, i64 2, !dbg !1993
  %994 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %992, i64 2, !dbg !1993
  %995 = bitcast %struct.lua_TValue* %993 to i64*, !dbg !1993
  %996 = bitcast %struct.lua_TValue* %994 to i64*, !dbg !1993
  %997 = load i64, i64* %995, align 8, !dbg !1993
  store i64 %997, i64* %996, align 8, !dbg !1993
  %998 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %993, i64 0, i32 1, !dbg !1993
  %999 = load i32, i32* %998, align 8, !dbg !1993, !tbaa !423
  %1000 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %994, i64 0, i32 1, !dbg !1993
  store i32 %999, i32* %1000, align 8, !dbg !1993, !tbaa !423
  %1001 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %132, i64 1, !dbg !1994
  %1002 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %992, i64 1, !dbg !1994
  %1003 = bitcast %struct.lua_TValue* %1001 to i64*, !dbg !1994
  %1004 = bitcast %struct.lua_TValue* %1002 to i64*, !dbg !1994
  %1005 = load i64, i64* %1003, align 8, !dbg !1994
  store i64 %1005, i64* %1004, align 8, !dbg !1994
  %1006 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1001, i64 0, i32 1, !dbg !1994
  %1007 = load i32, i32* %1006, align 8, !dbg !1994, !tbaa !423
  %1008 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1002, i64 0, i32 1, !dbg !1994
  store i32 %1007, i32* %1008, align 8, !dbg !1994, !tbaa !423
  %1009 = bitcast %struct.lua_TValue* %132 to i64*, !dbg !1995
  %1010 = bitcast %struct.lua_TValue* %992 to i64*, !dbg !1995
  %1011 = load i64, i64* %1009, align 8, !dbg !1995
  store i64 %1011, i64* %1010, align 8, !dbg !1995
  %1012 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %128, i64 %131, i32 1, !dbg !1995
  %1013 = load i32, i32* %1012, align 8, !dbg !1995, !tbaa !423
  %1014 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %992, i64 0, i32 1, !dbg !1995
  store i32 %1013, i32* %1014, align 8, !dbg !1995, !tbaa !423
  %1015 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %992, i64 3, !dbg !1996
  store %struct.lua_TValue* %1015, %struct.lua_TValue** %20, align 8, !dbg !1997, !tbaa !566
  store i32* %56, i32** %8, align 8, !dbg !1998, !tbaa !1382
  %1016 = lshr i32 %57, 14, !dbg !2000
  %1017 = and i32 %1016, 511, !dbg !2000
  call void @luaD_call(%struct.lua_State* nonnull %0, %struct.lua_TValue* nonnull %992, i32 %1017) #5, !dbg !2000
  %1018 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !1998, !tbaa !984
  %1019 = load %struct.CallInfo*, %struct.CallInfo** %9, align 8, !dbg !2002, !tbaa !1385
  %1020 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1019, i64 0, i32 2, !dbg !2003
  %1021 = bitcast %struct.lua_TValue** %1020 to i64*, !dbg !2003
  %1022 = load i64, i64* %1021, align 8, !dbg !2003, !tbaa !1813
  store i64 %1022, i64* %21, align 8, !dbg !2004, !tbaa !566
  %1023 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1018, i64 3, !dbg !2005
  %1024 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1023, i64 %131, !dbg !2006
  %1025 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1024, i64 0, i32 1, !dbg !2007
  %1026 = load i32, i32* %1025, align 8, !dbg !2007, !tbaa !423
  %1027 = icmp eq i32 %1026, 0, !dbg !2007
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2008
  br i1 %1027, label %1039, label %1028, !dbg !2008

; <label>:1028:                                   ; preds = %991
  %1029 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1024, i64 -1, !dbg !2009
  %1030 = bitcast %struct.lua_TValue* %1024 to i64*, !dbg !2009
  %1031 = bitcast %struct.lua_TValue* %1029 to i64*, !dbg !2009
  %1032 = load i64, i64* %1030, align 8, !dbg !2009
  store i64 %1032, i64* %1031, align 8, !dbg !2009
  %1033 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1029, i64 0, i32 1, !dbg !2009
  store i32 %1026, i32* %1033, align 8, !dbg !2009, !tbaa !423
  %1034 = load i32, i32* %56, align 4, !dbg !2010, !tbaa !1403
  %1035 = lshr i32 %1034, 14, !dbg !2010
  %1036 = add nsw i32 %1035, -131071, !dbg !2010
  %1037 = sext i32 %1036 to i64, !dbg !2010
  %1038 = getelementptr inbounds i32, i32* %56, i64 %1037, !dbg !2010
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2012
  br label %1039, !dbg !2012

; <label>:1039:                                   ; preds = %1028, %991
  %1040 = phi i32* [ %56, %991 ], [ %1038, %1028 ], !dbg !2013
  %1041 = getelementptr inbounds i32, i32* %1040, i64 1, !dbg !2014
  br label %1236

; <label>:1042:                                   ; preds = %127
  %1043 = lshr i32 %57, 23, !dbg !2015
  %1044 = lshr i32 %57, 14, !dbg !2017
  %1045 = and i32 %1044, 511, !dbg !2017
  %1046 = icmp eq i32 %1043, 0, !dbg !2019
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2021
  br i1 %1046, label %1047, label %1058, !dbg !2021

; <label>:1047:                                   ; preds = %1042
  %1048 = load i64, i64* %21, align 8, !dbg !2022, !tbaa !566
  %1049 = ptrtoint %struct.lua_TValue* %132 to i64, !dbg !2022
  %1050 = sub i64 %1048, %1049, !dbg !2022
  %1051 = lshr exact i64 %1050, 4, !dbg !2022
  %1052 = trunc i64 %1051 to i32, !dbg !2022
  %1053 = add nsw i32 %1052, -1, !dbg !2024
  %1054 = load %struct.CallInfo*, %struct.CallInfo** %9, align 8, !dbg !2025, !tbaa !1385
  %1055 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1054, i64 0, i32 2, !dbg !2026
  %1056 = bitcast %struct.lua_TValue** %1055 to i64*, !dbg !2026
  %1057 = load i64, i64* %1056, align 8, !dbg !2026, !tbaa !1813
  store i64 %1057, i64* %21, align 8, !dbg !2027, !tbaa !566
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2028
  br label %1058, !dbg !2028

; <label>:1058:                                   ; preds = %1047, %1042
  %1059 = phi i32 [ %1053, %1047 ], [ %1043, %1042 ], !dbg !2029
  %1060 = icmp eq i32 %1045, 0, !dbg !2030
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2032
  br i1 %1060, label %1061, label %1064, !dbg !2032

; <label>:1061:                                   ; preds = %1058
  %1062 = getelementptr inbounds i32, i32* %54, i64 2, !dbg !2033
  %1063 = load i32, i32* %56, align 4, !dbg !2033, !tbaa !1403
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2034
  br label %1064, !dbg !2034

; <label>:1064:                                   ; preds = %1061, %1058
  %1065 = phi i32 [ %1063, %1061 ], [ %1045, %1058 ], !dbg !2029
  %1066 = phi i32* [ %1062, %1061 ], [ %56, %1058 ], !dbg !1400
  %1067 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %128, i64 %131, i32 1, !dbg !2035
  %1068 = load i32, i32* %1067, align 8, !dbg !2035, !tbaa !423
  %1069 = icmp eq i32 %1068, 5, !dbg !2035
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2038
  br i1 %1069, label %1071, label %1070, !dbg !2038

; <label>:1070:                                   ; preds = %1064
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2035
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %1236

; <label>:1071:                                   ; preds = %1064
  %1072 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %132, i64 0, i32 0, i32 0, !dbg !2039
  %1073 = load %union.GCObject*, %union.GCObject** %1072, align 8, !dbg !2039, !tbaa !432
  %1074 = bitcast %union.GCObject* %1073 to %struct.Table*, !dbg !2039
  %1075 = mul i32 %1065, 50, !dbg !2041
  %1076 = add i32 %1059, -50, !dbg !2041
  %1077 = add i32 %1076, %1075, !dbg !2042
  %1078 = getelementptr inbounds %union.GCObject, %union.GCObject* %1073, i64 0, i32 0, i32 9, !dbg !2044
  %1079 = bitcast %struct.lua_TValue** %1078 to i32*, !dbg !2044
  %1080 = load i32, i32* %1079, align 8, !dbg !2044, !tbaa !2046
  %1081 = icmp sgt i32 %1077, %1080, !dbg !2047
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2048
  br i1 %1081, label %1082, label %1083, !dbg !2048

; <label>:1082:                                   ; preds = %1071
  call void @luaH_resizearray(%struct.lua_State* nonnull %0, %struct.Table* %1074, i32 %1077) #5, !dbg !2049
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2049
  br label %1083, !dbg !2049

; <label>:1083:                                   ; preds = %1082, %1071
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2050
  %1084 = icmp sgt i32 %1059, 0, !dbg !2051
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2052
  br i1 %1084, label %1085, label %1117, !dbg !2052

; <label>:1085:                                   ; preds = %1083
  %1086 = getelementptr inbounds %union.GCObject, %union.GCObject* %1073, i64 0, i32 0, i32 2
  %1087 = sext i32 %1059 to i64, !dbg !2052
  br label %1088, !dbg !2052

; <label>:1088:                                   ; preds = %1085, %1114
  %1089 = phi i64 [ %1087, %1085 ], [ %1115, %1114 ]
  %1090 = phi i32 [ %1077, %1085 ], [ %1092, %1114 ]
  %1091 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %132, i64 %1089, !dbg !2053
  %1092 = add nsw i32 %1090, -1, !dbg !2055
  %1093 = call %struct.lua_TValue* @luaH_setnum(%struct.lua_State* %0, %struct.Table* %1074, i32 %1090) #5, !dbg !2055
  %1094 = bitcast %struct.lua_TValue* %1091 to i64*, !dbg !2055
  %1095 = bitcast %struct.lua_TValue* %1093 to i64*, !dbg !2055
  %1096 = load i64, i64* %1094, align 8, !dbg !2055
  store i64 %1096, i64* %1095, align 8, !dbg !2055
  %1097 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1091, i64 0, i32 1, !dbg !2055
  %1098 = load i32, i32* %1097, align 8, !dbg !2055, !tbaa !423
  %1099 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1093, i64 0, i32 1, !dbg !2055
  store i32 %1098, i32* %1099, align 8, !dbg !2055, !tbaa !423
  %1100 = load i32, i32* %1097, align 8, !dbg !2056, !tbaa !423
  %1101 = icmp sgt i32 %1100, 3, !dbg !2056
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2056
  br i1 %1101, label %1102, label %1114, !dbg !2056

; <label>:1102:                                   ; preds = %1088
  %1103 = bitcast %struct.lua_TValue* %1091 to %struct.GCheader**, !dbg !2056
  %1104 = load %struct.GCheader*, %struct.GCheader** %1103, align 8, !dbg !2056, !tbaa !432
  %1105 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %1104, i64 0, i32 2, !dbg !2056
  %1106 = load i8, i8* %1105, align 1, !dbg !2056, !tbaa !432
  %1107 = and i8 %1106, 3, !dbg !2056
  %1108 = icmp eq i8 %1107, 0, !dbg !2056
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2056
  br i1 %1108, label %1114, label %1109, !dbg !2056

; <label>:1109:                                   ; preds = %1102
  %1110 = load i8, i8* %1086, align 1, !dbg !2056, !tbaa !432
  %1111 = and i8 %1110, 4, !dbg !2056
  %1112 = icmp eq i8 %1111, 0, !dbg !2056
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2059
  br i1 %1112, label %1114, label %1113, !dbg !2059

; <label>:1113:                                   ; preds = %1109
  call void @luaC_barrierback(%struct.lua_State* %0, %struct.Table* nonnull %1074) #5, !dbg !2056
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2056
  br label %1114, !dbg !2056

; <label>:1114:                                   ; preds = %1109, %1102, %1113, %1088
  %1115 = add nsw i64 %1089, -1, !dbg !2060
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2061
  %1116 = icmp sgt i64 %1089, 1, !dbg !2051
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2052
  br i1 %1116, label %1088, label %1117, !dbg !2052, !llvm.loop !2062

; <label>:1117:                                   ; preds = %1114, %1083
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2064
  br label %1236

; <label>:1118:                                   ; preds = %127
  call void @luaF_close(%struct.lua_State* nonnull %0, %struct.lua_TValue* %132) #5, !dbg !2065
  br label %1236, !dbg !2067, !llvm.loop !1485

; <label>:1119:                                   ; preds = %127
  %1120 = load %struct.Proto*, %struct.Proto** %43, align 8, !dbg !2068, !tbaa !1392
  %1121 = getelementptr inbounds %struct.Proto, %struct.Proto* %1120, i64 0, i32 5, !dbg !2069
  %1122 = load %struct.Proto**, %struct.Proto*** %1121, align 8, !dbg !2069, !tbaa !2070
  %1123 = lshr i32 %57, 14, !dbg !2071
  %1124 = zext i32 %1123 to i64, !dbg !2072
  %1125 = getelementptr inbounds %struct.Proto*, %struct.Proto** %1122, i64 %1124, !dbg !2072
  %1126 = load %struct.Proto*, %struct.Proto** %1125, align 8, !dbg !2072, !tbaa !521
  %1127 = getelementptr inbounds %struct.Proto, %struct.Proto* %1126, i64 0, i32 19, !dbg !2074
  %1128 = load i8, i8* %1127, align 8, !dbg !2074, !tbaa !2075
  %1129 = zext i8 %1128 to i32, !dbg !2076
  %1130 = load %struct.Table*, %struct.Table** %47, align 8, !dbg !2078, !tbaa !1515
  %1131 = call %union.Closure* @luaF_newLclosure(%struct.lua_State* nonnull %0, i32 %1129, %struct.Table* %1130) #5, !dbg !2079
  %1132 = getelementptr inbounds %union.Closure, %union.Closure* %1131, i64 0, i32 0, i32 7, !dbg !2081
  %1133 = bitcast i32 (%struct.lua_State*)** %1132 to %struct.Proto**, !dbg !2081
  store %struct.Proto* %1126, %struct.Proto** %1133, align 8, !dbg !2082, !tbaa !432
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2084
  %1134 = icmp eq i8 %1128, 0, !dbg !2086
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2088
  br i1 %1134, label %1163, label %1135, !dbg !2088

; <label>:1135:                                   ; preds = %1119
  %1136 = getelementptr inbounds %union.Closure, %union.Closure* %1131, i64 0, i32 0, i32 8
  %1137 = bitcast [1 x %struct.lua_TValue]* %1136 to [1 x %struct.UpVal*]*
  %1138 = zext i8 %1128 to i64
  br label %1139, !dbg !2088

; <label>:1139:                                   ; preds = %1157, %1135
  %1140 = phi i64 [ 0, %1135 ], [ %1158, %1157 ]
  %1141 = phi i32* [ %56, %1135 ], [ %1159, %1157 ]
  %1142 = load i32, i32* %1141, align 4, !dbg !2089, !tbaa !1403
  %1143 = and i32 %1142, 63, !dbg !2089
  %1144 = icmp eq i32 %1143, 4, !dbg !2092
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2093
  %1145 = lshr i32 %1142, 23, !dbg !2094
  %1146 = zext i32 %1145 to i64, !dbg !2094
  br i1 %1144, label %1147, label %1153, !dbg !2093

; <label>:1147:                                   ; preds = %1139
  %1148 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %41, i64 0, i32 8, i64 %1146, !dbg !2096
  %1149 = bitcast %struct.UpVal** %1148 to i64*, !dbg !2096
  %1150 = load i64, i64* %1149, align 8, !dbg !2096, !tbaa !521
  %1151 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %1137, i64 0, i64 %1140, !dbg !2097
  %1152 = bitcast %struct.UpVal** %1151 to i64*, !dbg !2098
  store i64 %1150, i64* %1152, align 8, !dbg !2098, !tbaa !432
  br label %1157, !dbg !2097

; <label>:1153:                                   ; preds = %1139
  %1154 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %128, i64 %1146, !dbg !2099
  %1155 = call %struct.UpVal* @luaF_findupval(%struct.lua_State* %0, %struct.lua_TValue* %1154) #5, !dbg !2100
  %1156 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %1137, i64 0, i64 %1140, !dbg !2101
  store %struct.UpVal* %1155, %struct.UpVal** %1156, align 8, !dbg !2102, !tbaa !432
  br label %1157

; <label>:1157:                                   ; preds = %1147, %1153
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %1158 = add nuw nsw i64 %1140, 1, !dbg !2103
  %1159 = getelementptr inbounds i32, i32* %1141, i64 1, !dbg !2104
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2105
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2088
  %1160 = icmp eq i64 %1158, %1138, !dbg !2086
  br i1 %1160, label %1161, label %1139, !dbg !2088, !llvm.loop !2106

; <label>:1161:                                   ; preds = %1157
  %1162 = getelementptr i32, i32* %56, i64 %1158, !dbg !2088
  br label %1163, !dbg !2108

; <label>:1163:                                   ; preds = %1161, %1119
  %1164 = phi i32* [ %56, %1119 ], [ %1162, %1161 ], !dbg !2109
  %1165 = bitcast %struct.lua_TValue* %132 to %union.Closure**, !dbg !2108
  store %union.Closure* %1131, %union.Closure** %1165, align 8, !dbg !2108, !tbaa !432
  %1166 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %128, i64 %131, i32 1, !dbg !2108
  store i32 6, i32* %1166, align 8, !dbg !2108, !tbaa !423
  store i32* %1164, i32** %8, align 8, !dbg !2110, !tbaa !1382
  %1167 = load %struct.global_State*, %struct.global_State** %19, align 8, !dbg !2112, !tbaa !517
  %1168 = getelementptr inbounds %struct.global_State, %struct.global_State* %1167, i64 0, i32 14, !dbg !2112
  %1169 = load i64, i64* %1168, align 8, !dbg !2112, !tbaa !1561
  %1170 = getelementptr inbounds %struct.global_State, %struct.global_State* %1167, i64 0, i32 13, !dbg !2112
  %1171 = load i64, i64* %1170, align 8, !dbg !2112, !tbaa !1565
  %1172 = icmp ult i64 %1169, %1171, !dbg !2112
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2116
  br i1 %1172, label %1174, label %1173, !dbg !2116

; <label>:1173:                                   ; preds = %1163
  call void @luaC_step(%struct.lua_State* nonnull %0) #5, !dbg !2112
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2112
  br label %1174, !dbg !2112

; <label>:1174:                                   ; preds = %1163, %1173
  %1175 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !2110, !tbaa !984
  br label %1236

; <label>:1176:                                   ; preds = %127
  %1177 = lshr i32 %57, 23, !dbg !2117
  %1178 = add nsw i32 %1177, -1, !dbg !2118
  %1179 = load %struct.CallInfo*, %struct.CallInfo** %9, align 8, !dbg !2120, !tbaa !1385
  %1180 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1179, i64 0, i32 0, !dbg !2122
  %1181 = bitcast %struct.CallInfo* %1179 to i64*, !dbg !2122
  %1182 = load i64, i64* %1181, align 8, !dbg !2122, !tbaa !1842
  %1183 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1179, i64 0, i32 1, !dbg !2122
  %1184 = bitcast %struct.lua_TValue** %1183 to i64*, !dbg !2122
  %1185 = load i64, i64* %1184, align 8, !dbg !2122, !tbaa !1386
  %1186 = sub i64 %1182, %1185, !dbg !2122
  %1187 = lshr exact i64 %1186, 4, !dbg !2122
  %1188 = trunc i64 %1187 to i32, !dbg !2122
  %1189 = load %struct.Proto*, %struct.Proto** %43, align 8, !dbg !2123, !tbaa !1392
  %1190 = getelementptr inbounds %struct.Proto, %struct.Proto* %1189, i64 0, i32 20, !dbg !2124
  %1191 = load i8, i8* %1190, align 1, !dbg !2124, !tbaa !2125
  %1192 = zext i8 %1191 to i32, !dbg !2126
  %1193 = xor i32 %1192, -1, !dbg !2127
  %1194 = add i32 %1193, %1188, !dbg !2127
  %1195 = icmp eq i32 %1177, 0, !dbg !2129
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2131
  br i1 %1195, label %1196, label %1209, !dbg !2131

; <label>:1196:                                   ; preds = %1176
  store i32* %56, i32** %8, align 8, !dbg !2132, !tbaa !1382
  %1197 = load i64, i64* %25, align 8, !dbg !2135, !tbaa !571
  %1198 = load i64, i64* %21, align 8, !dbg !2135, !tbaa !566
  %1199 = sub i64 %1197, %1198, !dbg !2135
  %1200 = shl nsw i32 %1194, 4, !dbg !2135
  %1201 = sext i32 %1200 to i64, !dbg !2135
  %1202 = icmp sgt i64 %1199, %1201, !dbg !2135
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2138
  br i1 %1202, label %1204, label %1203, !dbg !2138

; <label>:1203:                                   ; preds = %1196
  call void @luaD_growstack(%struct.lua_State* nonnull %0, i32 %1194) #5, !dbg !2135
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2135
  br label %1204, !dbg !2135

; <label>:1204:                                   ; preds = %1196, %1203
  %1205 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !2132, !tbaa !984
  %1206 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1205, i64 %131, !dbg !2139
  %1207 = sext i32 %1194 to i64, !dbg !2140
  %1208 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1206, i64 %1207, !dbg !2140
  store %struct.lua_TValue* %1208, %struct.lua_TValue** %20, align 8, !dbg !2141, !tbaa !566
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2142
  br label %1209, !dbg !2142

; <label>:1209:                                   ; preds = %1204, %1176
  %1210 = phi i32 [ %1194, %1204 ], [ %1178, %1176 ], !dbg !2143
  %1211 = phi %struct.lua_TValue* [ %1206, %1204 ], [ %132, %1176 ], !dbg !1400
  %1212 = phi %struct.lua_TValue* [ %1205, %1204 ], [ %128, %1176 ], !dbg !1667
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2145
  %1213 = icmp sgt i32 %1210, 0, !dbg !2146
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2147
  br i1 %1213, label %1214, label %1236, !dbg !2147

; <label>:1214:                                   ; preds = %1209
  %1215 = sext i32 %1194 to i64
  %1216 = sub nsw i64 0, %1215
  %1217 = zext i32 %1210 to i64
  br label %1218, !dbg !2147

; <label>:1218:                                   ; preds = %1231, %1214
  %1219 = phi i64 [ 0, %1214 ], [ %1234, %1231 ]
  %1220 = icmp slt i64 %1219, %1215, !dbg !2148
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2149
  br i1 %1220, label %1221, label %1231, !dbg !2149

; <label>:1221:                                   ; preds = %1218
  %1222 = load %struct.lua_TValue*, %struct.lua_TValue** %1180, align 8, !dbg !2150, !tbaa !1842
  %1223 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1222, i64 %1216, !dbg !2150
  %1224 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1223, i64 %1219, !dbg !2150
  %1225 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1211, i64 %1219, !dbg !2150
  %1226 = bitcast %struct.lua_TValue* %1224 to i64*, !dbg !2150
  %1227 = bitcast %struct.lua_TValue* %1225 to i64*, !dbg !2150
  %1228 = load i64, i64* %1226, align 8, !dbg !2150
  store i64 %1228, i64* %1227, align 8, !dbg !2150
  %1229 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1224, i64 0, i32 1, !dbg !2150
  %1230 = load i32, i32* %1229, align 8, !dbg !2150, !tbaa !423
  br label %1231, !dbg !2151

; <label>:1231:                                   ; preds = %1218, %1221
  %1232 = phi i32 [ %1230, %1221 ], [ 0, %1218 ]
  %1233 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1211, i64 %1219, i32 1, !dbg !2152
  store i32 %1232, i32* %1233, align 8, !dbg !2152, !tbaa !423
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %1234 = add nuw nsw i64 %1219, 1, !dbg !2154
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2155
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2147
  %1235 = icmp eq i64 %1234, %1217, !dbg !2146
  br i1 %1235, label %1236, label %1218, !dbg !2147, !llvm.loop !2156

; <label>:1236:                                   ; preds = %1231, %166, %127, %1070, %1209, %906, %904, %902, %209, %236, %224, %231, %160, %154, %1174, %1118, %1117, %1039, %981, %786, %753, %727, %661, %633, %594, %583, %568, %536, %521, %504, %469, %431, %396, %361, %326, %273, %271, %238, %203, %190, %184, %171, %144, %134
  %1237 = phi i32* [ %56, %134 ], [ %56, %144 ], [ %56, %171 ], [ %56, %184 ], [ %56, %190 ], [ %56, %203 ], [ %56, %238 ], [ %56, %271 ], [ %56, %273 ], [ %56, %326 ], [ %56, %361 ], [ %56, %396 ], [ %56, %431 ], [ %56, %469 ], [ %56, %504 ], [ %56, %521 ], [ %56, %536 ], [ %56, %568 ], [ %56, %583 ], [ %598, %594 ], [ %636, %633 ], [ %664, %661 ], [ %730, %727 ], [ %755, %753 ], [ %788, %786 ], [ %990, %981 ], [ %1041, %1039 ], [ %1066, %1117 ], [ %56, %1118 ], [ %1164, %1174 ], [ %161, %160 ], [ %56, %154 ], [ %56, %231 ], [ %56, %224 ], [ %56, %236 ], [ %56, %209 ], [ %910, %906 ], [ %56, %902 ], [ %56, %904 ], [ %56, %1209 ], [ %56, %127 ], [ %1066, %1070 ], [ %56, %166 ], [ %56, %1231 ]
  %1238 = phi %struct.lua_TValue* [ %128, %134 ], [ %128, %144 ], [ %128, %171 ], [ %189, %184 ], [ %202, %190 ], [ %208, %203 ], [ %254, %238 ], [ %272, %271 ], [ %292, %273 ], [ %327, %326 ], [ %362, %361 ], [ %397, %396 ], [ %432, %431 ], [ %470, %469 ], [ %505, %504 ], [ %522, %521 ], [ %128, %536 ], [ %569, %568 ], [ %584, %583 ], [ %128, %594 ], [ %635, %633 ], [ %663, %661 ], [ %729, %727 ], [ %128, %753 ], [ %128, %786 ], [ %128, %981 ], [ %1018, %1039 ], [ %128, %1117 ], [ %128, %1118 ], [ %1175, %1174 ], [ %128, %160 ], [ %128, %154 ], [ %128, %231 ], [ %128, %224 ], [ %128, %236 ], [ %128, %209 ], [ %128, %906 ], [ %128, %902 ], [ %128, %904 ], [ %1212, %1209 ], [ %128, %127 ], [ %128, %1070 ], [ %128, %166 ], [ %1212, %1231 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %53, !llvm.loop !1485

; <label>:1239:                                   ; preds = %880, %884, %886, %856, %867, %817, %800, %809, %798
  %1240 = phi i3 [ -4, %809 ], [ 2, %800 ], [ 1, %798 ], [ -4, %867 ], [ 2, %856 ], [ 1, %817 ], [ 1, %880 ], [ 2, %884 ], [ 2, %886 ]
  %1241 = phi %struct.lua_TValue* [ %810, %809 ], [ %128, %800 ], [ %128, %798 ], [ %868, %867 ], [ %128, %856 ], [ %128, %817 ], [ %128, %880 ], [ %128, %884 ], [ %128, %886 ], !dbg !1667
  %1242 = phi i32 [ %52, %809 ], [ %801, %800 ], [ %52, %798 ], [ %52, %867 ], [ %52, %856 ], [ %52, %817 ], [ %882, %880 ], [ %882, %884 ], [ %882, %886 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  switch i3 %1240, label %1244 [
    i3 0, label %1243
    i3 -4, label %1243
    i3 2, label %34
  ]

; <label>:1243:                                   ; preds = %1239, %1239
  br label %49, !dbg !1399, !llvm.loop !1485

; <label>:1244:                                   ; preds = %1239, %124
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2158
  ret void, !dbg !2158
}

; Function Attrs: noredzone
declare hidden void @luaC_barrierf(%struct.lua_State*, %union.GCObject*, %union.GCObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden %struct.Table* @luaH_new(%struct.lua_State*, i32, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden i32 @luaO_fb2int(i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden void @luaC_step(%struct.lua_State*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal fastcc void @Arith(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*, i32) unnamed_addr #0 !dbg !2159 {
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.lua_TValue, align 8
  %9 = alloca %struct.lua_TValue, align 8
  %10 = bitcast %struct.lua_TValue* %8 to i8*, !dbg !2196
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %10) #4, !dbg !2196
  %11 = bitcast %struct.lua_TValue* %9 to i8*, !dbg !2196
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %11) #4, !dbg !2196
  %12 = bitcast double* %7 to i8*, !dbg !2201
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #4, !dbg !2201
  %13 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i64 0, i32 1, !dbg !2202
  %14 = load i32, i32* %13, align 8, !dbg !2202, !tbaa !423
  %15 = icmp eq i32 %14, 3, !dbg !2202
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2203
  br i1 %15, label %31, label %16, !dbg !2203

; <label>:16:                                     ; preds = %5
  %17 = icmp eq i32 %14, 4, !dbg !2204
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2205
  br i1 %17, label %18, label %30, !dbg !2205

; <label>:18:                                     ; preds = %16
  %19 = bitcast %struct.lua_TValue* %2 to %union.TString**, !dbg !2206
  %20 = load %union.TString*, %union.TString** %19, align 8, !dbg !2206, !tbaa !432
  %21 = getelementptr inbounds %union.TString, %union.TString* %20, i64 1, !dbg !2206
  %22 = bitcast %union.TString* %21 to i8*, !dbg !2206
  %23 = call i32 @luaO_str2d(i8* nonnull %22, double* nonnull %7) #5, !dbg !2208
  %24 = icmp eq i32 %23, 0, !dbg !2208
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2209
  br i1 %24, label %30, label %25, !dbg !2209

; <label>:25:                                     ; preds = %18
  %26 = bitcast double* %7 to i64*, !dbg !2210
  %27 = load i64, i64* %26, align 8, !dbg !2210, !tbaa !437
  %28 = bitcast %struct.lua_TValue* %8 to i64*, !dbg !2210
  store i64 %27, i64* %28, align 8, !dbg !2210, !tbaa !432
  %29 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %8, i64 0, i32 1, !dbg !2210
  store i32 3, i32* %29, align 8, !dbg !2210, !tbaa !423
  br label %31, !dbg !2211

; <label>:30:                                     ; preds = %16, %18
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2212
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #4, !dbg !2213
  br label %79, !dbg !2215

; <label>:31:                                     ; preds = %5, %25
  %32 = phi %struct.lua_TValue* [ %8, %25 ], [ %2, %5 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2216
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #4, !dbg !2213
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2213
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2215
  %33 = bitcast double* %6 to i8*, !dbg !2221
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %33) #4, !dbg !2221
  %34 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3, i64 0, i32 1, !dbg !2222
  %35 = load i32, i32* %34, align 8, !dbg !2222, !tbaa !423
  %36 = icmp eq i32 %35, 3, !dbg !2222
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2223
  br i1 %36, label %52, label %37, !dbg !2223

; <label>:37:                                     ; preds = %31
  %38 = icmp eq i32 %35, 4, !dbg !2224
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2225
  br i1 %38, label %39, label %51, !dbg !2225

; <label>:39:                                     ; preds = %37
  %40 = bitcast %struct.lua_TValue* %3 to %union.TString**, !dbg !2226
  %41 = load %union.TString*, %union.TString** %40, align 8, !dbg !2226, !tbaa !432
  %42 = getelementptr inbounds %union.TString, %union.TString* %41, i64 1, !dbg !2226
  %43 = bitcast %union.TString* %42 to i8*, !dbg !2226
  %44 = call i32 @luaO_str2d(i8* nonnull %43, double* nonnull %6) #5, !dbg !2228
  %45 = icmp eq i32 %44, 0, !dbg !2228
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2229
  br i1 %45, label %51, label %46, !dbg !2229

; <label>:46:                                     ; preds = %39
  %47 = bitcast double* %6 to i64*, !dbg !2230
  %48 = load i64, i64* %47, align 8, !dbg !2230, !tbaa !437
  %49 = bitcast %struct.lua_TValue* %9 to i64*, !dbg !2230
  store i64 %48, i64* %49, align 8, !dbg !2230, !tbaa !432
  %50 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %9, i64 0, i32 1, !dbg !2230
  store i32 3, i32* %50, align 8, !dbg !2230, !tbaa !423
  br label %52, !dbg !2231

; <label>:51:                                     ; preds = %37, %39
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2232
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %33) #4, !dbg !2233
  br label %79, !dbg !2235

; <label>:52:                                     ; preds = %31, %46
  %53 = phi %struct.lua_TValue* [ %9, %46 ], [ %3, %31 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2216
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %33) #4, !dbg !2233
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2233
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2235
  %54 = bitcast %struct.lua_TValue* %32 to double*, !dbg !2236
  %55 = load double, double* %54, align 8, !dbg !2236, !tbaa !432
  %56 = bitcast %struct.lua_TValue* %53 to double*, !dbg !2238
  %57 = load double, double* %56, align 8, !dbg !2238, !tbaa !432
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2240
  switch i32 %4, label %83 [
    i32 5, label %58
    i32 6, label %60
    i32 7, label %62
    i32 8, label %64
    i32 9, label %66
    i32 10, label %71
    i32 11, label %73
  ], !dbg !2240

; <label>:58:                                     ; preds = %52
  %59 = fadd double %55, %57, !dbg !2241
  br label %75, !dbg !2242

; <label>:60:                                     ; preds = %52
  %61 = fsub double %55, %57, !dbg !2243
  br label %75, !dbg !2244

; <label>:62:                                     ; preds = %52
  %63 = fmul double %55, %57, !dbg !2245
  br label %75, !dbg !2246

; <label>:64:                                     ; preds = %52
  %65 = fdiv double %55, %57, !dbg !2247
  br label %75, !dbg !2248

; <label>:66:                                     ; preds = %52
  %67 = fdiv double %55, %57, !dbg !2249
  %68 = call double @floor(double %67) #5, !dbg !2249
  %69 = fmul double %57, %68, !dbg !2249
  %70 = fsub double %55, %69, !dbg !2249
  br label %75, !dbg !2250

; <label>:71:                                     ; preds = %52
  %72 = call double @pow(double %55, double %57) #5, !dbg !2251
  br label %75, !dbg !2252

; <label>:73:                                     ; preds = %52
  %74 = fsub double -0.000000e+00, %55, !dbg !2253
  br label %75, !dbg !2254

; <label>:75:                                     ; preds = %58, %60, %62, %64, %66, %71, %73
  %76 = phi double [ %74, %73 ], [ %72, %71 ], [ %70, %66 ], [ %65, %64 ], [ %63, %62 ], [ %61, %60 ], [ %59, %58 ]
  %77 = bitcast %struct.lua_TValue* %1 to double*, !dbg !2255
  store double %76, double* %77, align 8, !dbg !2255, !tbaa !432
  %78 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1, i64 0, i32 1, !dbg !2255
  store i32 3, i32* %78, align 8, !dbg !2255, !tbaa !423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2256
  br label %83, !dbg !2257

; <label>:79:                                     ; preds = %51, %30
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2233
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2216
  %80 = call fastcc i32 @call_binTM(%struct.lua_State* %0, %struct.lua_TValue* nonnull %2, %struct.lua_TValue* %3, %struct.lua_TValue* %1, i32 %4) #6, !dbg !2258
  %81 = icmp eq i32 %80, 0, !dbg !2258
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2260
  br i1 %81, label %82, label %84, !dbg !2260

; <label>:82:                                     ; preds = %79
  call void @luaG_aritherror(%struct.lua_State* %0, %struct.lua_TValue* nonnull %2, %struct.lua_TValue* %3) #5, !dbg !2261
  br label %83, !dbg !2261

; <label>:83:                                     ; preds = %52, %75, %82
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2262
  br label %84, !dbg !2263

; <label>:84:                                     ; preds = %83, %79
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %11) #4, !dbg !2263
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %10) #4, !dbg !2263
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2263
  ret void, !dbg !2263
}

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
!429 = !DILocation(line: 38, column: 7, scope: !417)
!430 = !DILocation(line: 38, column: 23, scope: !417)
!431 = !DILocation(line: 38, column: 37, scope: !417)
!432 = !{!425, !425, i64 0}
!433 = !DILocation(line: 36, column: 14, scope: !405)
!434 = !DILocation(line: 38, column: 26, scope: !417)
!435 = !DILocation(line: 38, column: 7, scope: !405)
!436 = !DILocation(line: 39, column: 5, scope: !415)
!437 = !{!438, !438, i64 0}
!438 = !{!"double", !425, i64 0}
!439 = !DILocation(line: 40, column: 5, scope: !416)
!440 = !DILocation(line: 0, scope: !417)
!441 = !DILocation(line: 0, scope: !422)
!442 = !DILocation(line: 44, column: 1, scope: !405)
!443 = distinct !DISubprogram(name: "luaV_tostring", scope: !1, file: !1, line: 47, type: !444, isLocal: false, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !446)
!444 = !DISubroutineType(types: !445)
!445 = !{!148, !192, !201}
!446 = !{!447, !448, !449, !455, !456}
!447 = !DILocalVariable(name: "L", arg: 1, scope: !443, file: !1, line: 47, type: !192)
!448 = !DILocalVariable(name: "obj", arg: 2, scope: !443, file: !1, line: 47, type: !201)
!449 = !DILocalVariable(name: "s", scope: !450, file: !1, line: 51, type: !452)
!450 = distinct !DILexicalBlock(scope: !451, file: !1, line: 50, column: 8)
!451 = distinct !DILexicalBlock(scope: !443, file: !1, line: 48, column: 7)
!452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 256, elements: !453)
!453 = !{!454}
!454 = !DISubrange(count: 32)
!455 = !DILocalVariable(name: "n", scope: !450, file: !1, line: 52, type: !145)
!456 = !DILocalVariable(name: "i_o", scope: !457, file: !1, line: 54, type: !134)
!457 = distinct !DILexicalBlock(scope: !450, file: !1, line: 54, column: 5)
!458 = !DILocation(line: 47, column: 31, scope: !443)
!459 = !DILocation(line: 47, column: 40, scope: !443)
!460 = !DILocation(line: 48, column: 8, scope: !451)
!461 = !DILocation(line: 48, column: 7, scope: !443)
!462 = !DILocation(line: 51, column: 5, scope: !450)
!463 = !DILocation(line: 51, column: 10, scope: !450)
!464 = !DILocation(line: 52, column: 20, scope: !450)
!465 = !DILocation(line: 52, column: 16, scope: !450)
!466 = !DILocation(line: 53, column: 5, scope: !450)
!467 = !DILocation(line: 54, column: 5, scope: !457)
!468 = !DILocation(line: 56, column: 3, scope: !451)
!469 = !DILocation(line: 0, scope: !451)
!470 = !DILocation(line: 57, column: 1, scope: !443)
!471 = distinct !DISubprogram(name: "luaV_gettable", scope: !1, file: !1, line: 108, type: !472, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !474)
!472 = !DISubroutineType(types: !473)
!473 = !{null, !192, !408, !134, !201}
!474 = !{!475, !476, !477, !478, !479, !480, !484, !489, !490, !494}
!475 = !DILocalVariable(name: "L", arg: 1, scope: !471, file: !1, line: 108, type: !192)
!476 = !DILocalVariable(name: "t", arg: 2, scope: !471, file: !1, line: 108, type: !408)
!477 = !DILocalVariable(name: "key", arg: 3, scope: !471, file: !1, line: 108, type: !134)
!478 = !DILocalVariable(name: "val", arg: 4, scope: !471, file: !1, line: 108, type: !201)
!479 = !DILocalVariable(name: "loop", scope: !471, file: !1, line: 109, type: !148)
!480 = !DILocalVariable(name: "tm", scope: !481, file: !1, line: 111, type: !408)
!481 = distinct !DILexicalBlock(scope: !482, file: !1, line: 110, column: 45)
!482 = distinct !DILexicalBlock(scope: !483, file: !1, line: 110, column: 3)
!483 = distinct !DILexicalBlock(scope: !471, file: !1, line: 110, column: 3)
!484 = !DILocalVariable(name: "h", scope: !485, file: !1, line: 113, type: !487)
!485 = distinct !DILexicalBlock(scope: !486, file: !1, line: 112, column: 23)
!486 = distinct !DILexicalBlock(scope: !481, file: !1, line: 112, column: 9)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "Table", file: !72, line: 348, baseType: !125)
!489 = !DILocalVariable(name: "res", scope: !485, file: !1, line: 114, type: !408)
!490 = !DILocalVariable(name: "o2", scope: !491, file: !1, line: 117, type: !408)
!491 = distinct !DILexicalBlock(scope: !492, file: !1, line: 117, column: 9)
!492 = distinct !DILexicalBlock(scope: !493, file: !1, line: 116, column: 61)
!493 = distinct !DILexicalBlock(scope: !485, file: !1, line: 115, column: 11)
!494 = !DILocalVariable(name: "o1", scope: !491, file: !1, line: 117, type: !134)
!495 = !DILocation(line: 108, column: 32, scope: !471)
!496 = !DILocation(line: 108, column: 49, scope: !471)
!497 = !DILocation(line: 108, column: 60, scope: !471)
!498 = !DILocation(line: 108, column: 71, scope: !471)
!499 = !DILocation(line: 109, column: 7, scope: !471)
!500 = !DILocation(line: 110, column: 8, scope: !483)
!501 = !DILocation(line: 110, column: 3, scope: !483)
!502 = !DILocation(line: 112, column: 9, scope: !486)
!503 = !DILocation(line: 112, column: 9, scope: !481)
!504 = !DILocation(line: 113, column: 18, scope: !485)
!505 = !DILocation(line: 113, column: 14, scope: !485)
!506 = !DILocation(line: 114, column: 27, scope: !485)
!507 = !DILocation(line: 114, column: 21, scope: !485)
!508 = !DILocation(line: 115, column: 12, scope: !493)
!509 = !DILocation(line: 115, column: 25, scope: !493)
!510 = !DILocation(line: 116, column: 17, scope: !493)
!511 = !{!512, !513, i64 16}
!512 = !{!"Table", !513, i64 0, !425, i64 8, !425, i64 9, !425, i64 10, !425, i64 11, !513, i64 16, !513, i64 24, !513, i64 32, !513, i64 40, !513, i64 48, !427, i64 56}
!513 = !{!"any pointer", !425, i64 0}
!514 = !{!512, !425, i64 10}
!515 = !DILocation(line: 111, column: 19, scope: !481)
!516 = !DILocation(line: 115, column: 11, scope: !485)
!517 = !{!518, !513, i64 32}
!518 = !{!"lua_State", !513, i64 0, !425, i64 8, !425, i64 9, !425, i64 10, !513, i64 16, !513, i64 24, !513, i64 32, !513, i64 40, !513, i64 48, !513, i64 56, !513, i64 64, !513, i64 72, !513, i64 80, !427, i64 88, !427, i64 92, !519, i64 96, !519, i64 98, !425, i64 100, !425, i64 101, !427, i64 104, !427, i64 108, !513, i64 112, !424, i64 120, !424, i64 136, !513, i64 152, !513, i64 160, !513, i64 168, !520, i64 176}
!519 = !{!"short", !425, i64 0}
!520 = !{!"long", !425, i64 0}
!521 = !{!513, !513, i64 0}
!522 = !DILocation(line: 116, column: 52, scope: !493)
!523 = !DILocation(line: 121, column: 5, scope: !486)
!524 = !DILocation(line: 124, column: 9, scope: !525)
!525 = distinct !DILexicalBlock(scope: !481, file: !1, line: 124, column: 9)
!526 = !DILocation(line: 117, column: 9, scope: !491)
!527 = !DILocation(line: 122, column: 14, scope: !528)
!528 = distinct !DILexicalBlock(scope: !486, file: !1, line: 122, column: 14)
!529 = !DILocation(line: 122, column: 14, scope: !486)
!530 = !DILocation(line: 123, column: 7, scope: !528)
!531 = !DILocation(line: 0, scope: !528)
!532 = !DILocation(line: 124, column: 9, scope: !481)
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
!557 = distinct !DILexicalBlock(scope: !525, file: !1, line: 124, column: 27)
!558 = !DILocation(line: 80, column: 44, scope: !534, inlinedAt: !556)
!559 = !DILocation(line: 80, column: 63, scope: !534, inlinedAt: !556)
!560 = !DILocation(line: 81, column: 39, scope: !534, inlinedAt: !556)
!561 = !DILocation(line: 81, column: 57, scope: !534, inlinedAt: !556)
!562 = !DILocation(line: 82, column: 22, scope: !534, inlinedAt: !556)
!563 = !{!518, !513, i64 64}
!564 = !DILocation(line: 82, column: 13, scope: !534, inlinedAt: !556)
!565 = !DILocation(line: 83, column: 3, scope: !544, inlinedAt: !556)
!566 = !{!518, !513, i64 16}
!567 = !DILocation(line: 84, column: 3, scope: !547, inlinedAt: !556)
!568 = !DILocation(line: 85, column: 3, scope: !550, inlinedAt: !556)
!569 = !DILocation(line: 86, column: 3, scope: !570, inlinedAt: !556)
!570 = distinct !DILexicalBlock(scope: !534, file: !1, line: 86, column: 3)
!571 = !{!518, !513, i64 56}
!572 = !DILocation(line: 86, column: 3, scope: !534, inlinedAt: !556)
!573 = !DILocation(line: 87, column: 10, scope: !534, inlinedAt: !556)
!574 = !DILocation(line: 88, column: 3, scope: !534, inlinedAt: !556)
!575 = !DILocation(line: 89, column: 9, scope: !534, inlinedAt: !556)
!576 = !DILocation(line: 90, column: 9, scope: !534, inlinedAt: !556)
!577 = !DILocation(line: 91, column: 3, scope: !553, inlinedAt: !556)
!578 = !DILocation(line: 126, column: 7, scope: !557)
!579 = !DILocation(line: 0, scope: !492)
!580 = !DILocation(line: 129, column: 3, scope: !482)
!581 = !DILocation(line: 110, column: 41, scope: !482)
!582 = !DILocation(line: 110, column: 3, scope: !482)
!583 = !DILocation(line: 110, column: 23, scope: !482)
!584 = distinct !{!584, !501, !585}
!585 = !DILocation(line: 129, column: 3, scope: !483)
!586 = !DILocation(line: 130, column: 3, scope: !471)
!587 = !DILocation(line: 131, column: 1, scope: !471)
!588 = distinct !DISubprogram(name: "luaV_settable", scope: !1, file: !1, line: 134, type: !472, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !589)
!589 = !{!590, !591, !592, !593, !594, !595, !596, !600, !603, !604, !608, !609, !611}
!590 = !DILocalVariable(name: "L", arg: 1, scope: !588, file: !1, line: 134, type: !192)
!591 = !DILocalVariable(name: "t", arg: 2, scope: !588, file: !1, line: 134, type: !408)
!592 = !DILocalVariable(name: "key", arg: 3, scope: !588, file: !1, line: 134, type: !134)
!593 = !DILocalVariable(name: "val", arg: 4, scope: !588, file: !1, line: 134, type: !201)
!594 = !DILocalVariable(name: "loop", scope: !588, file: !1, line: 135, type: !148)
!595 = !DILocalVariable(name: "temp", scope: !588, file: !1, line: 136, type: !135)
!596 = !DILocalVariable(name: "tm", scope: !597, file: !1, line: 138, type: !408)
!597 = distinct !DILexicalBlock(scope: !598, file: !1, line: 137, column: 45)
!598 = distinct !DILexicalBlock(scope: !599, file: !1, line: 137, column: 3)
!599 = distinct !DILexicalBlock(scope: !588, file: !1, line: 137, column: 3)
!600 = !DILocalVariable(name: "h", scope: !601, file: !1, line: 140, type: !487)
!601 = distinct !DILexicalBlock(scope: !602, file: !1, line: 139, column: 23)
!602 = distinct !DILexicalBlock(scope: !597, file: !1, line: 139, column: 9)
!603 = !DILocalVariable(name: "oldval", scope: !601, file: !1, line: 141, type: !134)
!604 = !DILocalVariable(name: "o2", scope: !605, file: !1, line: 144, type: !408)
!605 = distinct !DILexicalBlock(scope: !606, file: !1, line: 144, column: 9)
!606 = distinct !DILexicalBlock(scope: !607, file: !1, line: 143, column: 64)
!607 = distinct !DILexicalBlock(scope: !601, file: !1, line: 142, column: 11)
!608 = !DILocalVariable(name: "o1", scope: !605, file: !1, line: 144, type: !134)
!609 = !DILocalVariable(name: "o2", scope: !610, file: !1, line: 158, type: !408)
!610 = distinct !DILexicalBlock(scope: !597, file: !1, line: 158, column: 5)
!611 = !DILocalVariable(name: "o1", scope: !610, file: !1, line: 158, type: !134)
!612 = !DILocation(line: 134, column: 32, scope: !588)
!613 = !DILocation(line: 134, column: 49, scope: !588)
!614 = !DILocation(line: 134, column: 60, scope: !588)
!615 = !DILocation(line: 134, column: 71, scope: !588)
!616 = !DILocation(line: 136, column: 3, scope: !588)
!617 = !DILocation(line: 135, column: 7, scope: !588)
!618 = !DILocation(line: 137, column: 8, scope: !599)
!619 = !DILocation(line: 137, column: 3, scope: !599)
!620 = !DILocation(line: 139, column: 9, scope: !602)
!621 = !DILocation(line: 139, column: 9, scope: !597)
!622 = !DILocation(line: 140, column: 18, scope: !601)
!623 = !DILocation(line: 140, column: 14, scope: !601)
!624 = !DILocation(line: 141, column: 24, scope: !601)
!625 = !DILocation(line: 141, column: 15, scope: !601)
!626 = !DILocation(line: 142, column: 12, scope: !607)
!627 = !DILocation(line: 142, column: 28, scope: !607)
!628 = !DILocation(line: 143, column: 17, scope: !607)
!629 = !DILocation(line: 138, column: 19, scope: !597)
!630 = !DILocation(line: 142, column: 11, scope: !601)
!631 = !DILocation(line: 143, column: 55, scope: !607)
!632 = !DILocation(line: 144, column: 9, scope: !605)
!633 = !DILocation(line: 145, column: 12, scope: !606)
!634 = !DILocation(line: 145, column: 18, scope: !606)
!635 = !DILocation(line: 146, column: 9, scope: !636)
!636 = distinct !DILexicalBlock(scope: !637, file: !1, line: 146, column: 9)
!637 = distinct !DILexicalBlock(scope: !606, file: !1, line: 146, column: 9)
!638 = !DILocation(line: 146, column: 9, scope: !637)
!639 = !DILocation(line: 150, column: 5, scope: !602)
!640 = !DILocation(line: 153, column: 9, scope: !641)
!641 = distinct !DILexicalBlock(scope: !597, file: !1, line: 153, column: 9)
!642 = !DILocation(line: 151, column: 14, scope: !643)
!643 = distinct !DILexicalBlock(scope: !602, file: !1, line: 151, column: 14)
!644 = !DILocation(line: 151, column: 14, scope: !602)
!645 = !DILocation(line: 152, column: 7, scope: !643)
!646 = !DILocation(line: 0, scope: !643)
!647 = !DILocation(line: 153, column: 9, scope: !597)
!648 = !DILocalVariable(name: "L", arg: 1, scope: !649, file: !1, line: 96, type: !192)
!649 = distinct !DISubprogram(name: "callTM", scope: !1, file: !1, line: 96, type: !650, isLocal: true, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !652)
!650 = !DISubroutineType(types: !651)
!651 = !{null, !192, !408, !408, !408, !408}
!652 = !{!648, !653, !654, !655, !656, !657, !659, !660, !662, !663, !665, !666, !668}
!653 = !DILocalVariable(name: "f", arg: 2, scope: !649, file: !1, line: 96, type: !408)
!654 = !DILocalVariable(name: "p1", arg: 3, scope: !649, file: !1, line: 96, type: !408)
!655 = !DILocalVariable(name: "p2", arg: 4, scope: !649, file: !1, line: 97, type: !408)
!656 = !DILocalVariable(name: "p3", arg: 5, scope: !649, file: !1, line: 97, type: !408)
!657 = !DILocalVariable(name: "o2", scope: !658, file: !1, line: 98, type: !408)
!658 = distinct !DILexicalBlock(scope: !649, file: !1, line: 98, column: 3)
!659 = !DILocalVariable(name: "o1", scope: !658, file: !1, line: 98, type: !134)
!660 = !DILocalVariable(name: "o2", scope: !661, file: !1, line: 99, type: !408)
!661 = distinct !DILexicalBlock(scope: !649, file: !1, line: 99, column: 3)
!662 = !DILocalVariable(name: "o1", scope: !661, file: !1, line: 99, type: !134)
!663 = !DILocalVariable(name: "o2", scope: !664, file: !1, line: 100, type: !408)
!664 = distinct !DILexicalBlock(scope: !649, file: !1, line: 100, column: 3)
!665 = !DILocalVariable(name: "o1", scope: !664, file: !1, line: 100, type: !134)
!666 = !DILocalVariable(name: "o2", scope: !667, file: !1, line: 101, type: !408)
!667 = distinct !DILexicalBlock(scope: !649, file: !1, line: 101, column: 3)
!668 = !DILocalVariable(name: "o1", scope: !667, file: !1, line: 101, type: !134)
!669 = !DILocation(line: 96, column: 32, scope: !649, inlinedAt: !670)
!670 = distinct !DILocation(line: 154, column: 7, scope: !671)
!671 = distinct !DILexicalBlock(scope: !641, file: !1, line: 153, column: 27)
!672 = !DILocation(line: 96, column: 49, scope: !649, inlinedAt: !670)
!673 = !DILocation(line: 96, column: 66, scope: !649, inlinedAt: !670)
!674 = !DILocation(line: 97, column: 35, scope: !649, inlinedAt: !670)
!675 = !DILocation(line: 97, column: 53, scope: !649, inlinedAt: !670)
!676 = !DILocation(line: 98, column: 3, scope: !658, inlinedAt: !670)
!677 = !DILocation(line: 99, column: 3, scope: !661, inlinedAt: !670)
!678 = !DILocation(line: 100, column: 3, scope: !664, inlinedAt: !670)
!679 = !DILocation(line: 101, column: 3, scope: !667, inlinedAt: !670)
!680 = !DILocation(line: 102, column: 3, scope: !681, inlinedAt: !670)
!681 = distinct !DILexicalBlock(scope: !649, file: !1, line: 102, column: 3)
!682 = !DILocation(line: 102, column: 3, scope: !649, inlinedAt: !670)
!683 = !DILocation(line: 103, column: 10, scope: !649, inlinedAt: !670)
!684 = !DILocation(line: 104, column: 3, scope: !649, inlinedAt: !670)
!685 = !DILocation(line: 155, column: 7, scope: !671)
!686 = !DILocation(line: 0, scope: !606)
!687 = !DILocation(line: 158, column: 5, scope: !610)
!688 = !DILocation(line: 160, column: 3, scope: !598)
!689 = !DILocation(line: 137, column: 41, scope: !598)
!690 = !DILocation(line: 137, column: 3, scope: !598)
!691 = !DILocation(line: 137, column: 23, scope: !598)
!692 = distinct !{!692, !619, !693}
!693 = !DILocation(line: 160, column: 3, scope: !599)
!694 = !DILocation(line: 161, column: 3, scope: !588)
!695 = !DILocation(line: 162, column: 1, scope: !588)
!696 = distinct !DISubprogram(name: "luaV_lessthan", scope: !1, file: !1, line: 225, type: !697, isLocal: false, isDefinition: true, scopeLine: 225, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !699)
!697 = !DISubroutineType(types: !698)
!698 = !{!148, !192, !408, !408}
!699 = !{!700, !701, !702, !703}
!700 = !DILocalVariable(name: "L", arg: 1, scope: !696, file: !1, line: 225, type: !192)
!701 = !DILocalVariable(name: "l", arg: 2, scope: !696, file: !1, line: 225, type: !408)
!702 = !DILocalVariable(name: "r", arg: 3, scope: !696, file: !1, line: 225, type: !408)
!703 = !DILocalVariable(name: "res", scope: !696, file: !1, line: 226, type: !148)
!704 = !DILocation(line: 225, column: 31, scope: !696)
!705 = !DILocation(line: 225, column: 48, scope: !696)
!706 = !DILocation(line: 225, column: 65, scope: !696)
!707 = !DILocation(line: 227, column: 7, scope: !708)
!708 = distinct !DILexicalBlock(scope: !696, file: !1, line: 227, column: 7)
!709 = !DILocation(line: 227, column: 19, scope: !708)
!710 = !DILocation(line: 227, column: 16, scope: !708)
!711 = !DILocation(line: 227, column: 7, scope: !696)
!712 = !DILocation(line: 228, column: 12, scope: !708)
!713 = !DILocation(line: 228, column: 5, scope: !708)
!714 = !DILocation(line: 229, column: 12, scope: !715)
!715 = distinct !DILexicalBlock(scope: !708, file: !1, line: 229, column: 12)
!716 = !DILocation(line: 229, column: 12, scope: !708)
!717 = !DILocation(line: 230, column: 12, scope: !715)
!718 = !DILocation(line: 230, column: 5, scope: !715)
!719 = !DILocation(line: 231, column: 12, scope: !720)
!720 = distinct !DILexicalBlock(scope: !715, file: !1, line: 231, column: 12)
!721 = !DILocation(line: 231, column: 12, scope: !715)
!722 = !DILocation(line: 232, column: 21, scope: !720)
!723 = !DILocation(line: 232, column: 36, scope: !720)
!724 = !DILocation(line: 232, column: 12, scope: !720)
!725 = !DILocation(line: 232, column: 51, scope: !720)
!726 = !DILocation(line: 232, column: 5, scope: !720)
!727 = !DILocation(line: 233, column: 19, scope: !728)
!728 = distinct !DILexicalBlock(scope: !720, file: !1, line: 233, column: 12)
!729 = !DILocation(line: 226, column: 7, scope: !696)
!730 = !DILocation(line: 233, column: 49, scope: !728)
!731 = !DILocation(line: 233, column: 12, scope: !720)
!732 = !DILocation(line: 235, column: 10, scope: !696)
!733 = !DILocation(line: 235, column: 3, scope: !696)
!734 = !DILocation(line: 0, scope: !696)
!735 = !DILocation(line: 0, scope: !708)
!736 = !DILocation(line: 236, column: 1, scope: !696)
!737 = distinct !DISubprogram(name: "l_strcmp", scope: !1, file: !1, line: 203, type: !738, isLocal: true, isDefinition: true, scopeLine: 203, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !742)
!738 = !DISubroutineType(types: !739)
!739 = !{!148, !740, !740}
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !277)
!742 = !{!743, !744, !745, !746, !747, !748, !749, !753}
!743 = !DILocalVariable(name: "ls", arg: 1, scope: !737, file: !1, line: 203, type: !740)
!744 = !DILocalVariable(name: "rs", arg: 2, scope: !737, file: !1, line: 203, type: !740)
!745 = !DILocalVariable(name: "l", scope: !737, file: !1, line: 204, type: !67)
!746 = !DILocalVariable(name: "ll", scope: !737, file: !1, line: 205, type: !108)
!747 = !DILocalVariable(name: "r", scope: !737, file: !1, line: 206, type: !67)
!748 = !DILocalVariable(name: "lr", scope: !737, file: !1, line: 207, type: !108)
!749 = !DILocalVariable(name: "temp", scope: !750, file: !1, line: 209, type: !148)
!750 = distinct !DILexicalBlock(scope: !751, file: !1, line: 208, column: 12)
!751 = distinct !DILexicalBlock(scope: !752, file: !1, line: 208, column: 3)
!752 = distinct !DILexicalBlock(scope: !737, file: !1, line: 208, column: 3)
!753 = !DILocalVariable(name: "len", scope: !754, file: !1, line: 212, type: !108)
!754 = distinct !DILexicalBlock(scope: !755, file: !1, line: 211, column: 10)
!755 = distinct !DILexicalBlock(scope: !750, file: !1, line: 210, column: 9)
!756 = !DILocation(line: 203, column: 37, scope: !737)
!757 = !DILocation(line: 203, column: 56, scope: !737)
!758 = !DILocation(line: 204, column: 19, scope: !737)
!759 = !DILocation(line: 204, column: 15, scope: !737)
!760 = !DILocation(line: 205, column: 23, scope: !737)
!761 = !DILocation(line: 205, column: 10, scope: !737)
!762 = !DILocation(line: 206, column: 19, scope: !737)
!763 = !DILocation(line: 206, column: 15, scope: !737)
!764 = !DILocation(line: 207, column: 23, scope: !737)
!765 = !DILocation(line: 207, column: 10, scope: !737)
!766 = !DILocation(line: 208, column: 3, scope: !737)
!767 = !DILocation(line: 209, column: 16, scope: !750)
!768 = !DILocation(line: 209, column: 9, scope: !750)
!769 = !DILocation(line: 210, column: 14, scope: !755)
!770 = !DILocation(line: 210, column: 9, scope: !750)
!771 = !DILocation(line: 212, column: 20, scope: !754)
!772 = !DILocation(line: 212, column: 14, scope: !754)
!773 = !DILocation(line: 213, column: 15, scope: !774)
!774 = distinct !DILexicalBlock(scope: !754, file: !1, line: 213, column: 11)
!775 = !DILocation(line: 0, scope: !776)
!776 = distinct !DILexicalBlock(scope: !774, file: !1, line: 215, column: 16)
!777 = !DILocation(line: 213, column: 11, scope: !754)
!778 = !DILocation(line: 214, column: 16, scope: !774)
!779 = !DILocation(line: 214, column: 9, scope: !774)
!780 = !DILocation(line: 215, column: 16, scope: !774)
!781 = !DILocation(line: 218, column: 10, scope: !754)
!782 = !DILocation(line: 219, column: 9, scope: !754)
!783 = !DILocation(line: 219, column: 20, scope: !754)
!784 = !DILocation(line: 219, column: 30, scope: !754)
!785 = !DILocation(line: 219, column: 41, scope: !754)
!786 = !DILocation(line: 220, column: 5, scope: !755)
!787 = !DILocation(line: 221, column: 3, scope: !751)
!788 = !DILocation(line: 222, column: 1, scope: !737)
!789 = distinct !DISubprogram(name: "call_orderTM", scope: !1, file: !1, line: 190, type: !790, isLocal: true, isDefinition: true, scopeLine: 191, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !793)
!790 = !DISubroutineType(types: !791)
!791 = !{!148, !192, !408, !408, !792}
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "TMS", file: !4, line: 37, baseType: !3)
!793 = !{!794, !795, !796, !797, !798, !799}
!794 = !DILocalVariable(name: "L", arg: 1, scope: !789, file: !1, line: 190, type: !192)
!795 = !DILocalVariable(name: "p1", arg: 2, scope: !789, file: !1, line: 190, type: !408)
!796 = !DILocalVariable(name: "p2", arg: 3, scope: !789, file: !1, line: 190, type: !408)
!797 = !DILocalVariable(name: "event", arg: 4, scope: !789, file: !1, line: 191, type: !792)
!798 = !DILocalVariable(name: "tm1", scope: !789, file: !1, line: 192, type: !408)
!799 = !DILocalVariable(name: "tm2", scope: !789, file: !1, line: 193, type: !408)
!800 = !DILocation(line: 190, column: 37, scope: !789)
!801 = !DILocation(line: 190, column: 54, scope: !789)
!802 = !DILocation(line: 190, column: 72, scope: !789)
!803 = !DILocation(line: 191, column: 30, scope: !789)
!804 = !DILocation(line: 192, column: 23, scope: !789)
!805 = !DILocation(line: 192, column: 17, scope: !789)
!806 = !DILocation(line: 194, column: 7, scope: !807)
!807 = distinct !DILexicalBlock(scope: !789, file: !1, line: 194, column: 7)
!808 = !DILocation(line: 194, column: 7, scope: !789)
!809 = !DILocation(line: 195, column: 9, scope: !789)
!810 = !DILocation(line: 193, column: 17, scope: !789)
!811 = !DILocation(line: 196, column: 8, scope: !812)
!812 = distinct !DILexicalBlock(scope: !789, file: !1, line: 196, column: 7)
!813 = !DILocation(line: 196, column: 7, scope: !789)
!814 = !DILocation(line: 198, column: 19, scope: !789)
!815 = !DILocation(line: 80, column: 35, scope: !534, inlinedAt: !816)
!816 = distinct !DILocation(line: 198, column: 3, scope: !789)
!817 = !DILocation(line: 80, column: 44, scope: !534, inlinedAt: !816)
!818 = !DILocation(line: 80, column: 63, scope: !534, inlinedAt: !816)
!819 = !DILocation(line: 81, column: 39, scope: !534, inlinedAt: !816)
!820 = !DILocation(line: 81, column: 57, scope: !534, inlinedAt: !816)
!821 = !DILocation(line: 82, column: 22, scope: !534, inlinedAt: !816)
!822 = !DILocation(line: 82, column: 13, scope: !534, inlinedAt: !816)
!823 = !DILocation(line: 83, column: 3, scope: !544, inlinedAt: !816)
!824 = !DILocation(line: 84, column: 3, scope: !547, inlinedAt: !816)
!825 = !DILocation(line: 85, column: 3, scope: !550, inlinedAt: !816)
!826 = !DILocation(line: 86, column: 3, scope: !570, inlinedAt: !816)
!827 = !DILocation(line: 86, column: 3, scope: !534, inlinedAt: !816)
!828 = !DILocation(line: 87, column: 10, scope: !534, inlinedAt: !816)
!829 = !DILocation(line: 88, column: 3, scope: !534, inlinedAt: !816)
!830 = !DILocation(line: 89, column: 9, scope: !534, inlinedAt: !816)
!831 = !DILocation(line: 90, column: 9, scope: !534, inlinedAt: !816)
!832 = !DILocation(line: 91, column: 3, scope: !553, inlinedAt: !816)
!833 = !DILocation(line: 92, column: 1, scope: !534, inlinedAt: !816)
!834 = !DILocation(line: 199, column: 11, scope: !789)
!835 = !DILocation(line: 0, scope: !812)
!836 = !DILocation(line: 0, scope: !807)
!837 = !DILocation(line: 200, column: 1, scope: !789)
!838 = distinct !DISubprogram(name: "luaV_equalval", scope: !1, file: !1, line: 255, type: !697, isLocal: false, isDefinition: true, scopeLine: 255, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !839)
!839 = !{!840, !841, !842, !843}
!840 = !DILocalVariable(name: "L", arg: 1, scope: !838, file: !1, line: 255, type: !192)
!841 = !DILocalVariable(name: "t1", arg: 2, scope: !838, file: !1, line: 255, type: !408)
!842 = !DILocalVariable(name: "t2", arg: 3, scope: !838, file: !1, line: 255, type: !408)
!843 = !DILocalVariable(name: "tm", scope: !838, file: !1, line: 256, type: !408)
!844 = !DILocation(line: 255, column: 31, scope: !838)
!845 = !DILocation(line: 255, column: 48, scope: !838)
!846 = !DILocation(line: 255, column: 66, scope: !838)
!847 = !DILocation(line: 258, column: 11, scope: !838)
!848 = !DILocation(line: 258, column: 3, scope: !838)
!849 = !DILocation(line: 260, column: 30, scope: !850)
!850 = distinct !DILexicalBlock(scope: !838, file: !1, line: 258, column: 22)
!851 = !DILocation(line: 260, column: 23, scope: !850)
!852 = !DILocation(line: 261, column: 31, scope: !850)
!853 = !DILocation(line: 261, column: 45, scope: !850)
!854 = !DILocation(line: 261, column: 42, scope: !850)
!855 = !DILocation(line: 261, column: 24, scope: !850)
!856 = !DILocation(line: 262, column: 37, scope: !850)
!857 = !DILocation(line: 262, column: 51, scope: !850)
!858 = !DILocation(line: 262, column: 48, scope: !850)
!859 = !DILocation(line: 262, column: 30, scope: !850)
!860 = !DILocation(line: 264, column: 11, scope: !861)
!861 = distinct !DILexicalBlock(scope: !862, file: !1, line: 264, column: 11)
!862 = distinct !DILexicalBlock(scope: !850, file: !1, line: 263, column: 25)
!863 = !DILocation(line: 264, column: 25, scope: !861)
!864 = !DILocation(line: 264, column: 22, scope: !861)
!865 = !DILocation(line: 264, column: 11, scope: !862)
!866 = !DILocation(line: 265, column: 38, scope: !862)
!867 = !DILocation(line: 265, column: 61, scope: !862)
!868 = !DILocation(line: 267, column: 7, scope: !862)
!869 = !DILocation(line: 270, column: 11, scope: !870)
!870 = distinct !DILexicalBlock(scope: !871, file: !1, line: 270, column: 11)
!871 = distinct !DILexicalBlock(scope: !850, file: !1, line: 269, column: 22)
!872 = !DILocation(line: 270, column: 25, scope: !870)
!873 = !DILocation(line: 270, column: 22, scope: !870)
!874 = !DILocation(line: 270, column: 11, scope: !871)
!875 = !DILocation(line: 271, column: 38, scope: !871)
!876 = !DILocation(line: 271, column: 61, scope: !871)
!877 = !DILocation(line: 256, column: 17, scope: !838)
!878 = !DILocation(line: 272, column: 7, scope: !871)
!879 = !DILocation(line: 274, column: 21, scope: !850)
!880 = !DILocation(line: 274, column: 36, scope: !850)
!881 = !DILocation(line: 274, column: 33, scope: !850)
!882 = !DILocation(line: 274, column: 14, scope: !850)
!883 = !DILocation(line: 0, scope: !862)
!884 = !DILocation(line: 276, column: 10, scope: !885)
!885 = distinct !DILexicalBlock(scope: !838, file: !1, line: 276, column: 7)
!886 = !DILocation(line: 276, column: 7, scope: !838)
!887 = !DILocation(line: 277, column: 19, scope: !838)
!888 = !DILocation(line: 80, column: 35, scope: !534, inlinedAt: !889)
!889 = distinct !DILocation(line: 277, column: 3, scope: !838)
!890 = !DILocation(line: 80, column: 44, scope: !534, inlinedAt: !889)
!891 = !DILocation(line: 80, column: 63, scope: !534, inlinedAt: !889)
!892 = !DILocation(line: 81, column: 39, scope: !534, inlinedAt: !889)
!893 = !DILocation(line: 81, column: 57, scope: !534, inlinedAt: !889)
!894 = !DILocation(line: 82, column: 22, scope: !534, inlinedAt: !889)
!895 = !DILocation(line: 82, column: 13, scope: !534, inlinedAt: !889)
!896 = !DILocation(line: 83, column: 3, scope: !544, inlinedAt: !889)
!897 = !DILocation(line: 84, column: 3, scope: !547, inlinedAt: !889)
!898 = !DILocation(line: 85, column: 3, scope: !550, inlinedAt: !889)
!899 = !DILocation(line: 86, column: 3, scope: !570, inlinedAt: !889)
!900 = !DILocation(line: 86, column: 3, scope: !534, inlinedAt: !889)
!901 = !DILocation(line: 87, column: 10, scope: !534, inlinedAt: !889)
!902 = !DILocation(line: 88, column: 3, scope: !534, inlinedAt: !889)
!903 = !DILocation(line: 89, column: 9, scope: !534, inlinedAt: !889)
!904 = !DILocation(line: 90, column: 9, scope: !534, inlinedAt: !889)
!905 = !DILocation(line: 91, column: 3, scope: !553, inlinedAt: !889)
!906 = !DILocation(line: 92, column: 1, scope: !534, inlinedAt: !889)
!907 = !DILocation(line: 278, column: 11, scope: !838)
!908 = !DILocation(line: 0, scope: !850)
!909 = !DILocation(line: 279, column: 1, scope: !838)
!910 = distinct !DISubprogram(name: "get_compTM", scope: !1, file: !1, line: 176, type: !911, isLocal: true, isDefinition: true, scopeLine: 177, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !913)
!911 = !DISubroutineType(types: !912)
!912 = !{!408, !192, !487, !487, !792}
!913 = !{!914, !915, !916, !917, !918, !919}
!914 = !DILocalVariable(name: "L", arg: 1, scope: !910, file: !1, line: 176, type: !192)
!915 = !DILocalVariable(name: "mt1", arg: 2, scope: !910, file: !1, line: 176, type: !487)
!916 = !DILocalVariable(name: "mt2", arg: 3, scope: !910, file: !1, line: 176, type: !487)
!917 = !DILocalVariable(name: "event", arg: 4, scope: !910, file: !1, line: 177, type: !792)
!918 = !DILocalVariable(name: "tm1", scope: !910, file: !1, line: 178, type: !408)
!919 = !DILocalVariable(name: "tm2", scope: !910, file: !1, line: 179, type: !408)
!920 = !DILocation(line: 176, column: 45, scope: !910)
!921 = !DILocation(line: 176, column: 55, scope: !910)
!922 = !DILocation(line: 176, column: 67, scope: !910)
!923 = !DILocation(line: 177, column: 39, scope: !910)
!924 = !DILocation(line: 178, column: 23, scope: !910)
!925 = !DILocation(line: 178, column: 17, scope: !910)
!926 = !DILocation(line: 180, column: 7, scope: !910)
!927 = !DILocation(line: 180, column: 11, scope: !928)
!928 = distinct !DILexicalBlock(scope: !910, file: !1, line: 180, column: 7)
!929 = !DILocation(line: 180, column: 20, scope: !928)
!930 = !DILocation(line: 181, column: 11, scope: !931)
!931 = distinct !DILexicalBlock(scope: !910, file: !1, line: 181, column: 7)
!932 = !DILocation(line: 181, column: 7, scope: !910)
!933 = !DILocation(line: 181, column: 19, scope: !931)
!934 = !DILocation(line: 182, column: 9, scope: !910)
!935 = !DILocation(line: 179, column: 17, scope: !910)
!936 = !DILocation(line: 183, column: 7, scope: !910)
!937 = !DILocation(line: 183, column: 11, scope: !938)
!938 = distinct !DILexicalBlock(scope: !910, file: !1, line: 183, column: 7)
!939 = !DILocation(line: 183, column: 20, scope: !938)
!940 = !DILocation(line: 184, column: 7, scope: !941)
!941 = distinct !DILexicalBlock(scope: !910, file: !1, line: 184, column: 7)
!942 = !DILocation(line: 184, column: 7, scope: !910)
!943 = !DILocation(line: 0, scope: !941)
!944 = !DILocation(line: 186, column: 3, scope: !910)
!945 = !DILocation(line: 0, scope: !910)
!946 = !DILocation(line: 187, column: 1, scope: !910)
!947 = distinct !DISubprogram(name: "luaV_concat", scope: !1, file: !1, line: 282, type: !948, isLocal: false, isDefinition: true, scopeLine: 282, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !950)
!948 = !DISubroutineType(types: !949)
!949 = !{null, !192, !148, !148}
!950 = !{!951, !952, !953, !954, !956, !957, !961, !962, !963, !967, !971}
!951 = !DILocalVariable(name: "L", arg: 1, scope: !947, file: !1, line: 282, type: !192)
!952 = !DILocalVariable(name: "total", arg: 2, scope: !947, file: !1, line: 282, type: !148)
!953 = !DILocalVariable(name: "last", arg: 3, scope: !947, file: !1, line: 282, type: !148)
!954 = !DILocalVariable(name: "top", scope: !955, file: !1, line: 284, type: !201)
!955 = distinct !DILexicalBlock(scope: !947, file: !1, line: 283, column: 6)
!956 = !DILocalVariable(name: "n", scope: !955, file: !1, line: 285, type: !148)
!957 = !DILocalVariable(name: "tl", scope: !958, file: !1, line: 293, type: !108)
!958 = distinct !DILexicalBlock(scope: !959, file: !1, line: 291, column: 10)
!959 = distinct !DILexicalBlock(scope: !960, file: !1, line: 289, column: 16)
!960 = distinct !DILexicalBlock(scope: !955, file: !1, line: 286, column: 9)
!961 = !DILocalVariable(name: "buffer", scope: !958, file: !1, line: 294, type: !238)
!962 = !DILocalVariable(name: "i", scope: !958, file: !1, line: 295, type: !148)
!963 = !DILocalVariable(name: "l", scope: !964, file: !1, line: 298, type: !108)
!964 = distinct !DILexicalBlock(scope: !965, file: !1, line: 297, column: 59)
!965 = distinct !DILexicalBlock(scope: !966, file: !1, line: 297, column: 7)
!966 = distinct !DILexicalBlock(scope: !958, file: !1, line: 297, column: 7)
!967 = !DILocalVariable(name: "l", scope: !968, file: !1, line: 305, type: !108)
!968 = distinct !DILexicalBlock(scope: !969, file: !1, line: 304, column: 27)
!969 = distinct !DILexicalBlock(scope: !970, file: !1, line: 304, column: 7)
!970 = distinct !DILexicalBlock(scope: !958, file: !1, line: 304, column: 7)
!971 = !DILocalVariable(name: "i_o", scope: !972, file: !1, line: 309, type: !134)
!972 = distinct !DILexicalBlock(scope: !958, file: !1, line: 309, column: 7)
!973 = !DILocation(line: 51, column: 10, scope: !450, inlinedAt: !974)
!974 = distinct !DILocation(line: 297, column: 32, scope: !965)
!975 = !DILocation(line: 51, column: 10, scope: !450, inlinedAt: !976)
!976 = distinct !DILocation(line: 290, column: 13, scope: !959)
!977 = !DILocation(line: 51, column: 10, scope: !450, inlinedAt: !978)
!978 = distinct !DILocation(line: 286, column: 55, scope: !960)
!979 = !DILocation(line: 282, column: 30, scope: !947)
!980 = !DILocation(line: 282, column: 37, scope: !947)
!981 = !DILocation(line: 282, column: 48, scope: !947)
!982 = !DILocation(line: 283, column: 3, scope: !947)
!983 = !DILocation(line: 284, column: 20, scope: !955)
!984 = !{!518, !513, i64 24}
!985 = !DILocation(line: 284, column: 25, scope: !955)
!986 = !DILocation(line: 284, column: 32, scope: !955)
!987 = !DILocation(line: 284, column: 11, scope: !955)
!988 = !DILocation(line: 285, column: 9, scope: !955)
!989 = !DILocation(line: 286, column: 11, scope: !960)
!990 = !DILocation(line: 286, column: 29, scope: !960)
!991 = !DILocation(line: 286, column: 32, scope: !960)
!992 = !DILocation(line: 286, column: 51, scope: !960)
!993 = !DILocation(line: 287, column: 36, scope: !994)
!994 = distinct !DILexicalBlock(scope: !995, file: !1, line: 287, column: 11)
!995 = distinct !DILexicalBlock(scope: !960, file: !1, line: 286, column: 75)
!996 = !DILocation(line: 286, column: 55, scope: !960)
!997 = !DILocation(line: 47, column: 31, scope: !443, inlinedAt: !978)
!998 = !DILocation(line: 47, column: 40, scope: !443, inlinedAt: !978)
!999 = !DILocation(line: 48, column: 8, scope: !451, inlinedAt: !978)
!1000 = !DILocation(line: 48, column: 7, scope: !443, inlinedAt: !978)
!1001 = !DILocation(line: 49, column: 5, scope: !451, inlinedAt: !978)
!1002 = !DILocation(line: 57, column: 1, scope: !443, inlinedAt: !978)
!1003 = !DILocation(line: 286, column: 9, scope: !955)
!1004 = !DILocation(line: 51, column: 5, scope: !450, inlinedAt: !978)
!1005 = !DILocation(line: 52, column: 20, scope: !450, inlinedAt: !978)
!1006 = !DILocation(line: 52, column: 16, scope: !450, inlinedAt: !978)
!1007 = !DILocation(line: 53, column: 5, scope: !450, inlinedAt: !978)
!1008 = !DILocation(line: 54, column: 5, scope: !457, inlinedAt: !978)
!1009 = !DILocation(line: 56, column: 3, scope: !451, inlinedAt: !978)
!1010 = !DILocation(line: 287, column: 12, scope: !994)
!1011 = !DILocation(line: 287, column: 11, scope: !995)
!1012 = !DILocation(line: 288, column: 9, scope: !994)
!1013 = !DILocation(line: 289, column: 16, scope: !959)
!1014 = !DILocation(line: 289, column: 32, scope: !959)
!1015 = !DILocation(line: 289, column: 36, scope: !959)
!1016 = !DILocation(line: 289, column: 16, scope: !960)
!1017 = !DILocation(line: 290, column: 13, scope: !959)
!1018 = !DILocation(line: 47, column: 31, scope: !443, inlinedAt: !976)
!1019 = !DILocation(line: 47, column: 40, scope: !443, inlinedAt: !976)
!1020 = !DILocation(line: 48, column: 8, scope: !451, inlinedAt: !976)
!1021 = !DILocation(line: 48, column: 7, scope: !443, inlinedAt: !976)
!1022 = !DILocation(line: 51, column: 5, scope: !450, inlinedAt: !976)
!1023 = !DILocation(line: 52, column: 20, scope: !450, inlinedAt: !976)
!1024 = !DILocation(line: 52, column: 16, scope: !450, inlinedAt: !976)
!1025 = !DILocation(line: 53, column: 5, scope: !450, inlinedAt: !976)
!1026 = !DILocation(line: 54, column: 5, scope: !457, inlinedAt: !976)
!1027 = !DILocation(line: 56, column: 3, scope: !451, inlinedAt: !976)
!1028 = !DILocation(line: 57, column: 1, scope: !443, inlinedAt: !976)
!1029 = !DILocation(line: 293, column: 14, scope: !958)
!1030 = !DILocation(line: 297, column: 12, scope: !966)
!1031 = !DILocation(line: 297, column: 21, scope: !965)
!1032 = !DILocation(line: 297, column: 29, scope: !965)
!1033 = !DILocation(line: 297, column: 32, scope: !965)
!1034 = !DILocation(line: 47, column: 31, scope: !443, inlinedAt: !974)
!1035 = !DILocation(line: 47, column: 40, scope: !443, inlinedAt: !974)
!1036 = !DILocation(line: 48, column: 8, scope: !451, inlinedAt: !974)
!1037 = !DILocation(line: 48, column: 7, scope: !443, inlinedAt: !974)
!1038 = !DILocation(line: 49, column: 5, scope: !451, inlinedAt: !974)
!1039 = !DILocation(line: 57, column: 1, scope: !443, inlinedAt: !974)
!1040 = !DILocation(line: 297, column: 7, scope: !966)
!1041 = !DILocation(line: 51, column: 5, scope: !450, inlinedAt: !974)
!1042 = !DILocation(line: 52, column: 20, scope: !450, inlinedAt: !974)
!1043 = !DILocation(line: 52, column: 16, scope: !450, inlinedAt: !974)
!1044 = !DILocation(line: 53, column: 5, scope: !450, inlinedAt: !974)
!1045 = !DILocation(line: 54, column: 5, scope: !457, inlinedAt: !974)
!1046 = !DILocation(line: 56, column: 3, scope: !451, inlinedAt: !974)
!1047 = !DILocation(line: 298, column: 20, scope: !964)
!1048 = !DILocation(line: 298, column: 38, scope: !964)
!1049 = !DILocation(line: 298, column: 16, scope: !964)
!1050 = !DILocation(line: 299, column: 28, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !964, file: !1, line: 299, column: 13)
!1052 = !DILocation(line: 299, column: 15, scope: !1051)
!1053 = !DILocation(line: 299, column: 13, scope: !964)
!1054 = !DILocation(line: 299, column: 34, scope: !1051)
!1055 = !DILocation(line: 300, column: 12, scope: !964)
!1056 = !DILocation(line: 297, column: 55, scope: !965)
!1057 = !DILocation(line: 297, column: 7, scope: !965)
!1058 = distinct !{!1058, !1040, !1059}
!1059 = !DILocation(line: 301, column: 7, scope: !966)
!1060 = !DILocation(line: 302, column: 35, scope: !958)
!1061 = !DILocation(line: 302, column: 41, scope: !958)
!1062 = !DILocation(line: 302, column: 16, scope: !958)
!1063 = !DILocation(line: 294, column: 13, scope: !958)
!1064 = !DILocation(line: 295, column: 11, scope: !958)
!1065 = !DILocation(line: 304, column: 12, scope: !970)
!1066 = !DILocation(line: 304, column: 7, scope: !970)
!1067 = !DILocation(line: 305, column: 20, scope: !968)
!1068 = !DILocation(line: 305, column: 36, scope: !968)
!1069 = !DILocation(line: 305, column: 16, scope: !968)
!1070 = !DILocation(line: 306, column: 22, scope: !968)
!1071 = !DILocation(line: 306, column: 27, scope: !968)
!1072 = !DILocation(line: 306, column: 9, scope: !968)
!1073 = !DILocation(line: 307, column: 12, scope: !968)
!1074 = !DILocation(line: 304, column: 23, scope: !969)
!1075 = !DILocation(line: 304, column: 7, scope: !969)
!1076 = !DILocation(line: 304, column: 18, scope: !969)
!1077 = distinct !{!1077, !1066, !1078}
!1078 = !DILocation(line: 308, column: 7, scope: !970)
!1079 = !DILocation(line: 309, column: 7, scope: !972)
!1080 = !DILocation(line: 311, column: 15, scope: !955)
!1081 = !DILocation(line: 0, scope: !955)
!1082 = !DILocation(line: 311, column: 11, scope: !955)
!1083 = !DILocation(line: 312, column: 10, scope: !955)
!1084 = !DILocation(line: 313, column: 18, scope: !947)
!1085 = !DILocation(line: 313, column: 3, scope: !955)
!1086 = distinct !{!1086, !982, !1087}
!1087 = !DILocation(line: 313, column: 21, scope: !947)
!1088 = !DILocation(line: 314, column: 1, scope: !947)
!1089 = distinct !DISubprogram(name: "call_binTM", scope: !1, file: !1, line: 165, type: !1090, isLocal: true, isDefinition: true, scopeLine: 166, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1092)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{!148, !192, !408, !408, !201, !792}
!1092 = !{!1093, !1094, !1095, !1096, !1097, !1098}
!1093 = !DILocalVariable(name: "L", arg: 1, scope: !1089, file: !1, line: 165, type: !192)
!1094 = !DILocalVariable(name: "p1", arg: 2, scope: !1089, file: !1, line: 165, type: !408)
!1095 = !DILocalVariable(name: "p2", arg: 3, scope: !1089, file: !1, line: 165, type: !408)
!1096 = !DILocalVariable(name: "res", arg: 4, scope: !1089, file: !1, line: 166, type: !201)
!1097 = !DILocalVariable(name: "event", arg: 5, scope: !1089, file: !1, line: 166, type: !792)
!1098 = !DILocalVariable(name: "tm", scope: !1089, file: !1, line: 167, type: !408)
!1099 = !DILocation(line: 165, column: 35, scope: !1089)
!1100 = !DILocation(line: 165, column: 52, scope: !1089)
!1101 = !DILocation(line: 165, column: 70, scope: !1089)
!1102 = !DILocation(line: 166, column: 30, scope: !1089)
!1103 = !DILocation(line: 166, column: 39, scope: !1089)
!1104 = !DILocation(line: 167, column: 22, scope: !1089)
!1105 = !DILocation(line: 167, column: 17, scope: !1089)
!1106 = !DILocation(line: 168, column: 7, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1089, file: !1, line: 168, column: 7)
!1108 = !DILocation(line: 168, column: 7, scope: !1089)
!1109 = !DILocation(line: 170, column: 7, scope: !1089)
!1110 = !DILocation(line: 169, column: 10, scope: !1107)
!1111 = !DILocation(line: 169, column: 5, scope: !1107)
!1112 = !DILocation(line: 170, column: 7, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1089, file: !1, line: 170, column: 7)
!1114 = !DILocation(line: 80, column: 35, scope: !534, inlinedAt: !1115)
!1115 = distinct !DILocation(line: 171, column: 3, scope: !1089)
!1116 = !DILocation(line: 80, column: 44, scope: !534, inlinedAt: !1115)
!1117 = !DILocation(line: 80, column: 63, scope: !534, inlinedAt: !1115)
!1118 = !DILocation(line: 81, column: 39, scope: !534, inlinedAt: !1115)
!1119 = !DILocation(line: 81, column: 57, scope: !534, inlinedAt: !1115)
!1120 = !DILocation(line: 82, column: 22, scope: !534, inlinedAt: !1115)
!1121 = !DILocation(line: 82, column: 13, scope: !534, inlinedAt: !1115)
!1122 = !DILocation(line: 83, column: 3, scope: !544, inlinedAt: !1115)
!1123 = !DILocation(line: 84, column: 3, scope: !547, inlinedAt: !1115)
!1124 = !DILocation(line: 85, column: 3, scope: !550, inlinedAt: !1115)
!1125 = !DILocation(line: 86, column: 3, scope: !570, inlinedAt: !1115)
!1126 = !DILocation(line: 86, column: 3, scope: !534, inlinedAt: !1115)
!1127 = !DILocation(line: 87, column: 10, scope: !534, inlinedAt: !1115)
!1128 = !DILocation(line: 88, column: 3, scope: !534, inlinedAt: !1115)
!1129 = !DILocation(line: 89, column: 9, scope: !534, inlinedAt: !1115)
!1130 = !DILocation(line: 90, column: 9, scope: !534, inlinedAt: !1115)
!1131 = !DILocation(line: 91, column: 3, scope: !553, inlinedAt: !1115)
!1132 = !DILocation(line: 92, column: 1, scope: !534, inlinedAt: !1115)
!1133 = !DILocation(line: 172, column: 3, scope: !1089)
!1134 = !DILocation(line: 0, scope: !1089)
!1135 = !DILocation(line: 0, scope: !1113)
!1136 = !DILocation(line: 173, column: 1, scope: !1089)
!1137 = distinct !DISubprogram(name: "luaV_execute", scope: !1, file: !1, line: 377, type: !1138, isLocal: false, isDefinition: true, scopeLine: 377, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1140)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{null, !192, !148}
!1140 = !{!1141, !1142, !1143, !1145, !1146, !1147, !1148, !1152, !1153, !1157, !1158, !1161, !1162, !1165, !1167, !1169, !1171, !1172, !1174, !1175, !1177, !1179, !1181, !1183, !1185, !1186, !1188, !1189, !1191, !1193, !1195, !1196, !1199, !1200, !1203, !1204, !1206, !1209, !1210, !1213, !1214, !1216, !1219, !1220, !1223, !1224, !1226, !1229, !1230, !1233, !1234, !1236, !1239, !1240, !1243, !1244, !1246, !1249, !1250, !1253, !1254, !1256, !1258, !1261, !1263, !1265, !1267, !1269, !1273, !1276, !1278, !1279, !1281, !1282, !1284, !1285, !1287, !1291, !1292, !1294, !1295, !1297, !1300, !1301, !1302, !1303, !1307, !1308, !1310, !1312, !1313, !1314, !1318, !1320, !1322, !1323, !1324, !1326, !1328, !1330, !1331, !1333, !1334, !1336, !1337, !1341, !1342, !1344, !1345, !1346, !1347, !1351, !1353, !1354, !1358, !1361, !1362, !1363, !1365, !1367, !1368, !1369, !1370, !1377}
!1141 = !DILocalVariable(name: "L", arg: 1, scope: !1137, file: !1, line: 377, type: !192)
!1142 = !DILocalVariable(name: "nexeccalls", arg: 2, scope: !1137, file: !1, line: 377, type: !148)
!1143 = !DILocalVariable(name: "cl", scope: !1137, file: !1, line: 378, type: !1144)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!1145 = !DILocalVariable(name: "base", scope: !1137, file: !1, line: 379, type: !201)
!1146 = !DILocalVariable(name: "k", scope: !1137, file: !1, line: 380, type: !134)
!1147 = !DILocalVariable(name: "pc", scope: !1137, file: !1, line: 381, type: !289)
!1148 = !DILocalVariable(name: "i", scope: !1149, file: !1, line: 390, type: !290)
!1149 = distinct !DILexicalBlock(scope: !1150, file: !1, line: 389, column: 12)
!1150 = distinct !DILexicalBlock(scope: !1151, file: !1, line: 389, column: 3)
!1151 = distinct !DILexicalBlock(scope: !1137, file: !1, line: 389, column: 3)
!1152 = !DILocalVariable(name: "ra", scope: !1149, file: !1, line: 391, type: !201)
!1153 = !DILocalVariable(name: "o2", scope: !1154, file: !1, line: 408, type: !408)
!1154 = distinct !DILexicalBlock(scope: !1155, file: !1, line: 408, column: 9)
!1155 = distinct !DILexicalBlock(scope: !1156, file: !1, line: 407, column: 21)
!1156 = distinct !DILexicalBlock(scope: !1149, file: !1, line: 406, column: 28)
!1157 = !DILocalVariable(name: "o1", scope: !1154, file: !1, line: 408, type: !134)
!1158 = !DILocalVariable(name: "o2", scope: !1159, file: !1, line: 412, type: !408)
!1159 = distinct !DILexicalBlock(scope: !1160, file: !1, line: 412, column: 9)
!1160 = distinct !DILexicalBlock(scope: !1156, file: !1, line: 411, column: 22)
!1161 = !DILocalVariable(name: "o1", scope: !1159, file: !1, line: 412, type: !134)
!1162 = !DILocalVariable(name: "i_o", scope: !1163, file: !1, line: 416, type: !134)
!1163 = distinct !DILexicalBlock(scope: !1164, file: !1, line: 416, column: 9)
!1164 = distinct !DILexicalBlock(scope: !1156, file: !1, line: 415, column: 25)
!1165 = !DILocalVariable(name: "rb", scope: !1166, file: !1, line: 421, type: !134)
!1166 = distinct !DILexicalBlock(scope: !1156, file: !1, line: 420, column: 24)
!1167 = !DILocalVariable(name: "b", scope: !1168, file: !1, line: 428, type: !148)
!1168 = distinct !DILexicalBlock(scope: !1156, file: !1, line: 427, column: 25)
!1169 = !DILocalVariable(name: "o2", scope: !1170, file: !1, line: 429, type: !408)
!1170 = distinct !DILexicalBlock(scope: !1168, file: !1, line: 429, column: 9)
!1171 = !DILocalVariable(name: "o1", scope: !1170, file: !1, line: 429, type: !134)
!1172 = !DILocalVariable(name: "g", scope: !1173, file: !1, line: 433, type: !135)
!1173 = distinct !DILexicalBlock(scope: !1156, file: !1, line: 432, column: 26)
!1174 = !DILocalVariable(name: "rb", scope: !1173, file: !1, line: 434, type: !134)
!1175 = !DILocalVariable(name: "i_o", scope: !1176, file: !1, line: 435, type: !134)
!1176 = distinct !DILexicalBlock(scope: !1173, file: !1, line: 435, column: 9)
!1177 = !DILocalVariable(name: "g", scope: !1178, file: !1, line: 445, type: !135)
!1178 = distinct !DILexicalBlock(scope: !1156, file: !1, line: 444, column: 26)
!1179 = !DILocalVariable(name: "i_o", scope: !1180, file: !1, line: 446, type: !134)
!1180 = distinct !DILexicalBlock(scope: !1178, file: !1, line: 446, column: 9)
!1181 = !DILocalVariable(name: "uv", scope: !1182, file: !1, line: 452, type: !395)
!1182 = distinct !DILexicalBlock(scope: !1156, file: !1, line: 451, column: 25)
!1183 = !DILocalVariable(name: "o2", scope: !1184, file: !1, line: 453, type: !408)
!1184 = distinct !DILexicalBlock(scope: !1182, file: !1, line: 453, column: 9)
!1185 = !DILocalVariable(name: "o1", scope: !1184, file: !1, line: 453, type: !134)
!1186 = !DILocalVariable(name: "b", scope: !1187, file: !1, line: 462, type: !148)
!1187 = distinct !DILexicalBlock(scope: !1156, file: !1, line: 461, column: 25)
!1188 = !DILocalVariable(name: "c", scope: !1187, file: !1, line: 463, type: !148)
!1189 = !DILocalVariable(name: "i_o", scope: !1190, file: !1, line: 464, type: !134)
!1190 = distinct !DILexicalBlock(scope: !1187, file: !1, line: 464, column: 9)
!1191 = !DILocalVariable(name: "rb", scope: !1192, file: !1, line: 469, type: !201)
!1192 = distinct !DILexicalBlock(scope: !1156, file: !1, line: 468, column: 21)
!1193 = !DILocalVariable(name: "o2", scope: !1194, file: !1, line: 470, type: !408)
!1194 = distinct !DILexicalBlock(scope: !1192, file: !1, line: 470, column: 9)
!1195 = !DILocalVariable(name: "o1", scope: !1194, file: !1, line: 470, type: !134)
!1196 = !DILocalVariable(name: "rb", scope: !1197, file: !1, line: 475, type: !134)
!1197 = distinct !DILexicalBlock(scope: !1198, file: !1, line: 475, column: 9)
!1198 = distinct !DILexicalBlock(scope: !1156, file: !1, line: 474, column: 20)
!1199 = !DILocalVariable(name: "rc", scope: !1197, file: !1, line: 475, type: !134)
!1200 = !DILocalVariable(name: "nb", scope: !1201, file: !1, line: 475, type: !145)
!1201 = distinct !DILexicalBlock(scope: !1202, file: !1, line: 475, column: 9)
!1202 = distinct !DILexicalBlock(scope: !1197, file: !1, line: 475, column: 9)
!1203 = !DILocalVariable(name: "nc", scope: !1201, file: !1, line: 475, type: !145)
!1204 = !DILocalVariable(name: "i_o", scope: !1205, file: !1, line: 475, type: !134)
!1205 = distinct !DILexicalBlock(scope: !1201, file: !1, line: 475, column: 9)
!1206 = !DILocalVariable(name: "rb", scope: !1207, file: !1, line: 479, type: !134)
!1207 = distinct !DILexicalBlock(scope: !1208, file: !1, line: 479, column: 9)
!1208 = distinct !DILexicalBlock(scope: !1156, file: !1, line: 478, column: 20)
!1209 = !DILocalVariable(name: "rc", scope: !1207, file: !1, line: 479, type: !134)
!1210 = !DILocalVariable(name: "nb", scope: !1211, file: !1, line: 479, type: !145)
!1211 = distinct !DILexicalBlock(scope: !1212, file: !1, line: 479, column: 9)
!1212 = distinct !DILexicalBlock(scope: !1207, file: !1, line: 479, column: 9)
!1213 = !DILocalVariable(name: "nc", scope: !1211, file: !1, line: 479, type: !145)
!1214 = !DILocalVariable(name: "i_o", scope: !1215, file: !1, line: 479, type: !134)
!1215 = distinct !DILexicalBlock(scope: !1211, file: !1, line: 479, column: 9)
!1216 = !DILocalVariable(name: "rb", scope: !1217, file: !1, line: 483, type: !134)
!1217 = distinct !DILexicalBlock(scope: !1218, file: !1, line: 483, column: 9)
!1218 = distinct !DILexicalBlock(scope: !1156, file: !1, line: 482, column: 20)
!1219 = !DILocalVariable(name: "rc", scope: !1217, file: !1, line: 483, type: !134)
!1220 = !DILocalVariable(name: "nb", scope: !1221, file: !1, line: 483, type: !145)
!1221 = distinct !DILexicalBlock(scope: !1222, file: !1, line: 483, column: 9)
!1222 = distinct !DILexicalBlock(scope: !1217, file: !1, line: 483, column: 9)
!1223 = !DILocalVariable(name: "nc", scope: !1221, file: !1, line: 483, type: !145)
!1224 = !DILocalVariable(name: "i_o", scope: !1225, file: !1, line: 483, type: !134)
!1225 = distinct !DILexicalBlock(scope: !1221, file: !1, line: 483, column: 9)
!1226 = !DILocalVariable(name: "rb", scope: !1227, file: !1, line: 487, type: !134)
!1227 = distinct !DILexicalBlock(scope: !1228, file: !1, line: 487, column: 9)
!1228 = distinct !DILexicalBlock(scope: !1156, file: !1, line: 486, column: 20)
!1229 = !DILocalVariable(name: "rc", scope: !1227, file: !1, line: 487, type: !134)
!1230 = !DILocalVariable(name: "nb", scope: !1231, file: !1, line: 487, type: !145)
!1231 = distinct !DILexicalBlock(scope: !1232, file: !1, line: 487, column: 9)
!1232 = distinct !DILexicalBlock(scope: !1227, file: !1, line: 487, column: 9)
!1233 = !DILocalVariable(name: "nc", scope: !1231, file: !1, line: 487, type: !145)
!1234 = !DILocalVariable(name: "i_o", scope: !1235, file: !1, line: 487, type: !134)
!1235 = distinct !DILexicalBlock(scope: !1231, file: !1, line: 487, column: 9)
!1236 = !DILocalVariable(name: "rb", scope: !1237, file: !1, line: 491, type: !134)
!1237 = distinct !DILexicalBlock(scope: !1238, file: !1, line: 491, column: 9)
!1238 = distinct !DILexicalBlock(scope: !1156, file: !1, line: 490, column: 20)
!1239 = !DILocalVariable(name: "rc", scope: !1237, file: !1, line: 491, type: !134)
!1240 = !DILocalVariable(name: "nb", scope: !1241, file: !1, line: 491, type: !145)
!1241 = distinct !DILexicalBlock(scope: !1242, file: !1, line: 491, column: 9)
!1242 = distinct !DILexicalBlock(scope: !1237, file: !1, line: 491, column: 9)
!1243 = !DILocalVariable(name: "nc", scope: !1241, file: !1, line: 491, type: !145)
!1244 = !DILocalVariable(name: "i_o", scope: !1245, file: !1, line: 491, type: !134)
!1245 = distinct !DILexicalBlock(scope: !1241, file: !1, line: 491, column: 9)
!1246 = !DILocalVariable(name: "rb", scope: !1247, file: !1, line: 495, type: !134)
!1247 = distinct !DILexicalBlock(scope: !1248, file: !1, line: 495, column: 9)
!1248 = distinct !DILexicalBlock(scope: !1156, file: !1, line: 494, column: 20)
!1249 = !DILocalVariable(name: "rc", scope: !1247, file: !1, line: 495, type: !134)
!1250 = !DILocalVariable(name: "nb", scope: !1251, file: !1, line: 495, type: !145)
!1251 = distinct !DILexicalBlock(scope: !1252, file: !1, line: 495, column: 9)
!1252 = distinct !DILexicalBlock(scope: !1247, file: !1, line: 495, column: 9)
!1253 = !DILocalVariable(name: "nc", scope: !1251, file: !1, line: 495, type: !145)
!1254 = !DILocalVariable(name: "i_o", scope: !1255, file: !1, line: 495, type: !134)
!1255 = distinct !DILexicalBlock(scope: !1251, file: !1, line: 495, column: 9)
!1256 = !DILocalVariable(name: "rb", scope: !1257, file: !1, line: 499, type: !134)
!1257 = distinct !DILexicalBlock(scope: !1156, file: !1, line: 498, column: 20)
!1258 = !DILocalVariable(name: "nb", scope: !1259, file: !1, line: 501, type: !145)
!1259 = distinct !DILexicalBlock(scope: !1260, file: !1, line: 500, column: 29)
!1260 = distinct !DILexicalBlock(scope: !1257, file: !1, line: 500, column: 13)
!1261 = !DILocalVariable(name: "i_o", scope: !1262, file: !1, line: 502, type: !134)
!1262 = distinct !DILexicalBlock(scope: !1259, file: !1, line: 502, column: 11)
!1263 = !DILocalVariable(name: "res", scope: !1264, file: !1, line: 510, type: !148)
!1264 = distinct !DILexicalBlock(scope: !1156, file: !1, line: 509, column: 20)
!1265 = !DILocalVariable(name: "i_o", scope: !1266, file: !1, line: 511, type: !134)
!1266 = distinct !DILexicalBlock(scope: !1264, file: !1, line: 511, column: 9)
!1267 = !DILocalVariable(name: "rb", scope: !1268, file: !1, line: 515, type: !408)
!1268 = distinct !DILexicalBlock(scope: !1156, file: !1, line: 514, column: 20)
!1269 = !DILocalVariable(name: "i_o", scope: !1270, file: !1, line: 518, type: !134)
!1270 = distinct !DILexicalBlock(scope: !1271, file: !1, line: 518, column: 13)
!1271 = distinct !DILexicalBlock(scope: !1272, file: !1, line: 517, column: 28)
!1272 = distinct !DILexicalBlock(scope: !1268, file: !1, line: 516, column: 28)
!1273 = !DILocalVariable(name: "i_o", scope: !1274, file: !1, line: 522, type: !134)
!1274 = distinct !DILexicalBlock(scope: !1275, file: !1, line: 522, column: 13)
!1275 = distinct !DILexicalBlock(scope: !1272, file: !1, line: 521, column: 29)
!1276 = !DILocalVariable(name: "b", scope: !1277, file: !1, line: 535, type: !148)
!1277 = distinct !DILexicalBlock(scope: !1156, file: !1, line: 534, column: 23)
!1278 = !DILocalVariable(name: "c", scope: !1277, file: !1, line: 536, type: !148)
!1279 = !DILocalVariable(name: "o2", scope: !1280, file: !1, line: 538, type: !408)
!1280 = distinct !DILexicalBlock(scope: !1277, file: !1, line: 538, column: 9)
!1281 = !DILocalVariable(name: "o1", scope: !1280, file: !1, line: 538, type: !134)
!1282 = !DILocalVariable(name: "rb", scope: !1283, file: !1, line: 546, type: !134)
!1283 = distinct !DILexicalBlock(scope: !1156, file: !1, line: 545, column: 19)
!1284 = !DILocalVariable(name: "rc", scope: !1283, file: !1, line: 547, type: !134)
!1285 = !DILocalVariable(name: "rb", scope: !1286, file: !1, line: 578, type: !134)
!1286 = distinct !DILexicalBlock(scope: !1156, file: !1, line: 577, column: 24)
!1287 = !DILocalVariable(name: "o2", scope: !1288, file: !1, line: 580, type: !408)
!1288 = distinct !DILexicalBlock(scope: !1289, file: !1, line: 580, column: 11)
!1289 = distinct !DILexicalBlock(scope: !1290, file: !1, line: 579, column: 43)
!1290 = distinct !DILexicalBlock(scope: !1286, file: !1, line: 579, column: 13)
!1291 = !DILocalVariable(name: "o1", scope: !1288, file: !1, line: 580, type: !134)
!1292 = !DILocalVariable(name: "b", scope: !1293, file: !1, line: 587, type: !148)
!1293 = distinct !DILexicalBlock(scope: !1156, file: !1, line: 586, column: 21)
!1294 = !DILocalVariable(name: "nresults", scope: !1293, file: !1, line: 588, type: !148)
!1295 = !DILocalVariable(name: "b", scope: !1296, file: !1, line: 608, type: !148)
!1296 = distinct !DILexicalBlock(scope: !1156, file: !1, line: 607, column: 25)
!1297 = !DILocalVariable(name: "ci", scope: !1298, file: !1, line: 615, type: !281)
!1298 = distinct !DILexicalBlock(scope: !1299, file: !1, line: 613, column: 24)
!1299 = distinct !DILexicalBlock(scope: !1296, file: !1, line: 612, column: 51)
!1300 = !DILocalVariable(name: "aux", scope: !1298, file: !1, line: 616, type: !148)
!1301 = !DILocalVariable(name: "func", scope: !1298, file: !1, line: 617, type: !201)
!1302 = !DILocalVariable(name: "pfunc", scope: !1298, file: !1, line: 618, type: !201)
!1303 = !DILocalVariable(name: "o2", scope: !1304, file: !1, line: 622, type: !408)
!1304 = distinct !DILexicalBlock(scope: !1305, file: !1, line: 622, column: 15)
!1305 = distinct !DILexicalBlock(scope: !1306, file: !1, line: 621, column: 13)
!1306 = distinct !DILexicalBlock(scope: !1298, file: !1, line: 621, column: 13)
!1307 = !DILocalVariable(name: "o1", scope: !1304, file: !1, line: 622, type: !134)
!1308 = !DILocalVariable(name: "b", scope: !1309, file: !1, line: 640, type: !148)
!1309 = distinct !DILexicalBlock(scope: !1156, file: !1, line: 639, column: 23)
!1310 = !DILocalVariable(name: "step", scope: !1311, file: !1, line: 655, type: !145)
!1311 = distinct !DILexicalBlock(scope: !1156, file: !1, line: 654, column: 24)
!1312 = !DILocalVariable(name: "idx", scope: !1311, file: !1, line: 656, type: !145)
!1313 = !DILocalVariable(name: "limit", scope: !1311, file: !1, line: 657, type: !145)
!1314 = !DILocalVariable(name: "i_o", scope: !1315, file: !1, line: 661, type: !134)
!1315 = distinct !DILexicalBlock(scope: !1316, file: !1, line: 661, column: 11)
!1316 = distinct !DILexicalBlock(scope: !1317, file: !1, line: 659, column: 59)
!1317 = distinct !DILexicalBlock(scope: !1311, file: !1, line: 658, column: 13)
!1318 = !DILocalVariable(name: "i_o", scope: !1319, file: !1, line: 662, type: !134)
!1319 = distinct !DILexicalBlock(scope: !1316, file: !1, line: 662, column: 11)
!1320 = !DILocalVariable(name: "init", scope: !1321, file: !1, line: 667, type: !408)
!1321 = distinct !DILexicalBlock(scope: !1156, file: !1, line: 666, column: 24)
!1322 = !DILocalVariable(name: "plimit", scope: !1321, file: !1, line: 668, type: !408)
!1323 = !DILocalVariable(name: "pstep", scope: !1321, file: !1, line: 669, type: !408)
!1324 = !DILocalVariable(name: "i_o", scope: !1325, file: !1, line: 677, type: !134)
!1325 = distinct !DILexicalBlock(scope: !1321, file: !1, line: 677, column: 9)
!1326 = !DILocalVariable(name: "cb", scope: !1327, file: !1, line: 682, type: !201)
!1327 = distinct !DILexicalBlock(scope: !1156, file: !1, line: 681, column: 25)
!1328 = !DILocalVariable(name: "o2", scope: !1329, file: !1, line: 683, type: !408)
!1329 = distinct !DILexicalBlock(scope: !1327, file: !1, line: 683, column: 9)
!1330 = !DILocalVariable(name: "o1", scope: !1329, file: !1, line: 683, type: !134)
!1331 = !DILocalVariable(name: "o2", scope: !1332, file: !1, line: 684, type: !408)
!1332 = distinct !DILexicalBlock(scope: !1327, file: !1, line: 684, column: 9)
!1333 = !DILocalVariable(name: "o1", scope: !1332, file: !1, line: 684, type: !134)
!1334 = !DILocalVariable(name: "o2", scope: !1335, file: !1, line: 685, type: !408)
!1335 = distinct !DILexicalBlock(scope: !1327, file: !1, line: 685, column: 9)
!1336 = !DILocalVariable(name: "o1", scope: !1335, file: !1, line: 685, type: !134)
!1337 = !DILocalVariable(name: "o2", scope: !1338, file: !1, line: 691, type: !408)
!1338 = distinct !DILexicalBlock(scope: !1339, file: !1, line: 691, column: 11)
!1339 = distinct !DILexicalBlock(scope: !1340, file: !1, line: 690, column: 27)
!1340 = distinct !DILexicalBlock(scope: !1327, file: !1, line: 690, column: 13)
!1341 = !DILocalVariable(name: "o1", scope: !1338, file: !1, line: 691, type: !134)
!1342 = !DILocalVariable(name: "n", scope: !1343, file: !1, line: 698, type: !148)
!1343 = distinct !DILexicalBlock(scope: !1156, file: !1, line: 697, column: 24)
!1344 = !DILocalVariable(name: "c", scope: !1343, file: !1, line: 699, type: !148)
!1345 = !DILocalVariable(name: "last", scope: !1343, file: !1, line: 700, type: !148)
!1346 = !DILocalVariable(name: "h", scope: !1343, file: !1, line: 701, type: !487)
!1347 = !DILocalVariable(name: "val", scope: !1348, file: !1, line: 713, type: !134)
!1348 = distinct !DILexicalBlock(scope: !1349, file: !1, line: 712, column: 28)
!1349 = distinct !DILexicalBlock(scope: !1350, file: !1, line: 712, column: 9)
!1350 = distinct !DILexicalBlock(scope: !1343, file: !1, line: 712, column: 9)
!1351 = !DILocalVariable(name: "o2", scope: !1352, file: !1, line: 714, type: !408)
!1352 = distinct !DILexicalBlock(scope: !1348, file: !1, line: 714, column: 11)
!1353 = !DILocalVariable(name: "o1", scope: !1352, file: !1, line: 714, type: !134)
!1354 = !DILocalVariable(name: "p", scope: !1355, file: !1, line: 724, type: !1356)
!1355 = distinct !DILexicalBlock(scope: !1156, file: !1, line: 723, column: 24)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = !DIDerivedType(tag: DW_TAG_typedef, name: "Proto", file: !72, line: 253, baseType: !358)
!1358 = !DILocalVariable(name: "ncl", scope: !1355, file: !1, line: 725, type: !1359)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = !DIDerivedType(tag: DW_TAG_typedef, name: "Closure", file: !72, line: 312, baseType: !174)
!1361 = !DILocalVariable(name: "nup", scope: !1355, file: !1, line: 726, type: !148)
!1362 = !DILocalVariable(name: "j", scope: !1355, file: !1, line: 726, type: !148)
!1363 = !DILocalVariable(name: "i_o", scope: !1364, file: !1, line: 739, type: !134)
!1364 = distinct !DILexicalBlock(scope: !1355, file: !1, line: 739, column: 9)
!1365 = !DILocalVariable(name: "b", scope: !1366, file: !1, line: 744, type: !148)
!1366 = distinct !DILexicalBlock(scope: !1156, file: !1, line: 743, column: 23)
!1367 = !DILocalVariable(name: "j", scope: !1366, file: !1, line: 745, type: !148)
!1368 = !DILocalVariable(name: "ci", scope: !1366, file: !1, line: 746, type: !281)
!1369 = !DILocalVariable(name: "n", scope: !1366, file: !1, line: 747, type: !148)
!1370 = !DILocalVariable(name: "o2", scope: !1371, file: !1, line: 756, type: !408)
!1371 = distinct !DILexicalBlock(scope: !1372, file: !1, line: 756, column: 13)
!1372 = distinct !DILexicalBlock(scope: !1373, file: !1, line: 755, column: 22)
!1373 = distinct !DILexicalBlock(scope: !1374, file: !1, line: 755, column: 15)
!1374 = distinct !DILexicalBlock(scope: !1375, file: !1, line: 754, column: 33)
!1375 = distinct !DILexicalBlock(scope: !1376, file: !1, line: 754, column: 9)
!1376 = distinct !DILexicalBlock(scope: !1366, file: !1, line: 754, column: 9)
!1377 = !DILocalVariable(name: "o1", scope: !1371, file: !1, line: 756, type: !134)
!1378 = !DILocation(line: 377, column: 31, scope: !1137)
!1379 = !DILocation(line: 377, column: 38, scope: !1137)
!1380 = !DILocation(line: 381, column: 3, scope: !1137)
!1381 = !DILocation(line: 384, column: 11, scope: !1137)
!1382 = !{!518, !513, i64 48}
!1383 = !DILocation(line: 381, column: 22, scope: !1137)
!1384 = !DILocation(line: 385, column: 9, scope: !1137)
!1385 = !{!518, !513, i64 40}
!1386 = !{!1387, !513, i64 8}
!1387 = !{!"CallInfo", !513, i64 0, !513, i64 8, !513, i64 16, !513, i64 24, !427, i64 32, !427, i64 36}
!1388 = !DILocation(line: 378, column: 13, scope: !1137)
!1389 = !DILocation(line: 386, column: 13, scope: !1137)
!1390 = !DILocation(line: 379, column: 9, scope: !1137)
!1391 = !DILocation(line: 387, column: 11, scope: !1137)
!1392 = !{!1393, !513, i64 32}
!1393 = !{!"LClosure", !513, i64 0, !425, i64 8, !425, i64 9, !425, i64 10, !425, i64 11, !513, i64 16, !513, i64 24, !513, i64 32, !425, i64 40}
!1394 = !DILocation(line: 387, column: 14, scope: !1137)
!1395 = !{!1396, !513, i64 16}
!1396 = !{!"Proto", !513, i64 0, !425, i64 8, !425, i64 9, !513, i64 16, !513, i64 24, !513, i64 32, !513, i64 40, !513, i64 48, !513, i64 56, !513, i64 64, !427, i64 72, !427, i64 76, !427, i64 80, !427, i64 84, !427, i64 88, !427, i64 92, !427, i64 96, !427, i64 100, !513, i64 104, !425, i64 112, !425, i64 113, !425, i64 114, !425, i64 115}
!1397 = !DILocation(line: 380, column: 11, scope: !1137)
!1398 = !DILocation(line: 389, column: 3, scope: !1137)
!1399 = !DILocation(line: 390, column: 30, scope: !1149)
!1400 = !DILocation(line: 0, scope: !1149)
!1401 = !DILocation(line: 386, column: 8, scope: !1137)
!1402 = !DILocation(line: 390, column: 27, scope: !1149)
!1403 = !{!427, !427, i64 0}
!1404 = !DILocation(line: 390, column: 23, scope: !1149)
!1405 = !DILocation(line: 392, column: 13, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1149, file: !1, line: 392, column: 9)
!1407 = !{!518, !425, i64 100}
!1408 = !DILocation(line: 392, column: 22, scope: !1406)
!1409 = !DILocation(line: 392, column: 56, scope: !1406)
!1410 = !DILocation(line: 393, column: 10, scope: !1406)
!1411 = !{!518, !427, i64 108}
!1412 = !DILocation(line: 393, column: 25, scope: !1406)
!1413 = !DILocation(line: 393, column: 30, scope: !1406)
!1414 = !DILocation(line: 393, column: 45, scope: !1406)
!1415 = !DILocation(line: 392, column: 9, scope: !1149)
!1416 = !DILocalVariable(name: "L", arg: 1, scope: !1417, file: !1, line: 60, type: !192)
!1417 = distinct !DISubprogram(name: "traceexec", scope: !1, file: !1, line: 60, type: !1418, isLocal: true, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1420)
!1418 = !DISubroutineType(types: !1419)
!1419 = !{null, !192, !289}
!1420 = !{!1416, !1421, !1422, !1423, !1424, !1427, !1428}
!1421 = !DILocalVariable(name: "pc", arg: 2, scope: !1417, file: !1, line: 60, type: !289)
!1422 = !DILocalVariable(name: "mask", scope: !1417, file: !1, line: 61, type: !82)
!1423 = !DILocalVariable(name: "oldpc", scope: !1417, file: !1, line: 62, type: !289)
!1424 = !DILocalVariable(name: "p", scope: !1425, file: !1, line: 69, type: !1356)
!1425 = distinct !DILexicalBlock(scope: !1426, file: !1, line: 68, column: 28)
!1426 = distinct !DILexicalBlock(scope: !1417, file: !1, line: 68, column: 7)
!1427 = !DILocalVariable(name: "npc", scope: !1425, file: !1, line: 70, type: !148)
!1428 = !DILocalVariable(name: "newline", scope: !1425, file: !1, line: 71, type: !148)
!1429 = !DILocation(line: 60, column: 35, scope: !1417, inlinedAt: !1430)
!1430 = distinct !DILocation(line: 394, column: 7, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1406, file: !1, line: 393, column: 62)
!1432 = !DILocation(line: 60, column: 57, scope: !1417, inlinedAt: !1430)
!1433 = !DILocation(line: 61, column: 11, scope: !1417, inlinedAt: !1430)
!1434 = !DILocation(line: 62, column: 33, scope: !1417, inlinedAt: !1430)
!1435 = !DILocation(line: 62, column: 22, scope: !1417, inlinedAt: !1430)
!1436 = !DILocation(line: 63, column: 14, scope: !1417, inlinedAt: !1430)
!1437 = !DILocation(line: 64, column: 8, scope: !1438, inlinedAt: !1430)
!1438 = distinct !DILexicalBlock(scope: !1417, file: !1, line: 64, column: 7)
!1439 = !DILocation(line: 64, column: 13, scope: !1438, inlinedAt: !1430)
!1440 = !DILocation(line: 64, column: 30, scope: !1438, inlinedAt: !1430)
!1441 = !DILocation(line: 64, column: 7, scope: !1417, inlinedAt: !1430)
!1442 = !DILocation(line: 65, column: 5, scope: !1443, inlinedAt: !1430)
!1443 = distinct !DILexicalBlock(scope: !1438, file: !1, line: 64, column: 52)
!1444 = !{!518, !427, i64 104}
!1445 = !DILocation(line: 66, column: 5, scope: !1443, inlinedAt: !1430)
!1446 = !DILocation(line: 67, column: 3, scope: !1443, inlinedAt: !1430)
!1447 = !DILocation(line: 68, column: 12, scope: !1426, inlinedAt: !1430)
!1448 = !DILocation(line: 68, column: 7, scope: !1417, inlinedAt: !1430)
!1449 = !DILocation(line: 69, column: 16, scope: !1425, inlinedAt: !1430)
!1450 = !DILocation(line: 69, column: 34, scope: !1425, inlinedAt: !1430)
!1451 = !DILocation(line: 69, column: 12, scope: !1425, inlinedAt: !1430)
!1452 = !DILocation(line: 70, column: 15, scope: !1425, inlinedAt: !1430)
!1453 = !{!1396, !513, i64 24}
!1454 = !DILocation(line: 70, column: 9, scope: !1425, inlinedAt: !1430)
!1455 = !DILocation(line: 71, column: 19, scope: !1425, inlinedAt: !1430)
!1456 = !{!1396, !513, i64 40}
!1457 = !DILocation(line: 71, column: 9, scope: !1425, inlinedAt: !1430)
!1458 = !DILocation(line: 74, column: 13, scope: !1459, inlinedAt: !1430)
!1459 = distinct !DILexicalBlock(scope: !1425, file: !1, line: 74, column: 9)
!1460 = !DILocation(line: 74, column: 18, scope: !1459, inlinedAt: !1430)
!1461 = !DILocation(line: 74, column: 24, scope: !1459, inlinedAt: !1430)
!1462 = !DILocation(line: 74, column: 33, scope: !1459, inlinedAt: !1430)
!1463 = !DILocation(line: 74, column: 47, scope: !1459, inlinedAt: !1430)
!1464 = !DILocation(line: 74, column: 44, scope: !1459, inlinedAt: !1430)
!1465 = !DILocation(line: 74, column: 9, scope: !1425, inlinedAt: !1430)
!1466 = !DILocation(line: 75, column: 7, scope: !1459, inlinedAt: !1430)
!1467 = !DILocation(line: 76, column: 3, scope: !1425, inlinedAt: !1430)
!1468 = !DILocation(line: 77, column: 1, scope: !1417, inlinedAt: !1430)
!1469 = !DILocation(line: 395, column: 14, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1431, file: !1, line: 395, column: 11)
!1471 = !{!518, !425, i64 10}
!1472 = !DILocation(line: 395, column: 21, scope: !1470)
!1473 = !DILocation(line: 395, column: 11, scope: !1431)
!1474 = !DILocation(line: 396, column: 20, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1470, file: !1, line: 395, column: 35)
!1476 = !DILocation(line: 397, column: 9, scope: !1475)
!1477 = !DILocation(line: 399, column: 17, scope: !1431)
!1478 = !DILocation(line: 400, column: 5, scope: !1431)
!1479 = !DILocation(line: 0, scope: !1137)
!1480 = !DILocation(line: 402, column: 10, scope: !1149)
!1481 = !DILocation(line: 391, column: 11, scope: !1149)
!1482 = !DILocation(line: 406, column: 5, scope: !1149)
!1483 = !DILocation(line: 408, column: 9, scope: !1154)
!1484 = !DILocation(line: 409, column: 9, scope: !1155)
!1485 = distinct !{!1485, !1486, !1487}
!1486 = !DILocation(line: 389, column: 3, scope: !1151)
!1487 = !DILocation(line: 765, column: 3, scope: !1151)
!1488 = !DILocation(line: 412, column: 9, scope: !1159)
!1489 = !DILocation(line: 413, column: 9, scope: !1160)
!1490 = !DILocation(line: 416, column: 9, scope: !1163)
!1491 = !DILocation(line: 417, column: 13, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1164, file: !1, line: 417, column: 13)
!1493 = !DILocation(line: 417, column: 13, scope: !1164)
!1494 = !DILocation(line: 417, column: 28, scope: !1492)
!1495 = !DILocation(line: 417, column: 26, scope: !1492)
!1496 = !DILocation(line: 421, column: 22, scope: !1166)
!1497 = !DILocation(line: 421, column: 17, scope: !1166)
!1498 = !DILocation(line: 422, column: 9, scope: !1166)
!1499 = !DILocation(line: 0, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1166, file: !1, line: 422, column: 12)
!1501 = !DILocation(line: 423, column: 11, scope: !1500)
!1502 = !DILocation(line: 424, column: 21, scope: !1166)
!1503 = !DILocation(line: 424, column: 9, scope: !1500)
!1504 = distinct !{!1504, !1498, !1505}
!1505 = !DILocation(line: 424, column: 26, scope: !1166)
!1506 = !DILocation(line: 428, column: 17, scope: !1168)
!1507 = !DILocation(line: 428, column: 13, scope: !1168)
!1508 = !DILocation(line: 429, column: 9, scope: !1170)
!1509 = !{!1510, !513, i64 16}
!1510 = !{!"UpVal", !513, i64 0, !425, i64 8, !425, i64 9, !513, i64 16, !425, i64 24}
!1511 = !DILocation(line: 433, column: 9, scope: !1173)
!1512 = !DILocation(line: 434, column: 22, scope: !1173)
!1513 = !DILocation(line: 434, column: 17, scope: !1173)
!1514 = !DILocation(line: 435, column: 9, scope: !1176)
!1515 = !{!1393, !513, i64 24}
!1516 = !DILocation(line: 437, column: 9, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1173, file: !1, line: 437, column: 9)
!1518 = !DILocation(line: 433, column: 16, scope: !1173)
!1519 = !DILocation(line: 437, column: 9, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1517, file: !1, line: 437, column: 9)
!1521 = !DILocation(line: 439, column: 7, scope: !1156)
!1522 = !DILocation(line: 441, column: 9, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1524, file: !1, line: 441, column: 9)
!1524 = distinct !DILexicalBlock(scope: !1156, file: !1, line: 440, column: 25)
!1525 = !DILocation(line: 441, column: 9, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1523, file: !1, line: 441, column: 9)
!1527 = !DILocation(line: 442, column: 9, scope: !1524)
!1528 = !DILocation(line: 445, column: 9, scope: !1178)
!1529 = !DILocation(line: 446, column: 9, scope: !1180)
!1530 = !DILocation(line: 448, column: 9, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1178, file: !1, line: 448, column: 9)
!1532 = !DILocation(line: 448, column: 9, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1531, file: !1, line: 448, column: 9)
!1534 = !DILocation(line: 445, column: 16, scope: !1178)
!1535 = !DILocation(line: 450, column: 7, scope: !1156)
!1536 = !DILocation(line: 452, column: 32, scope: !1182)
!1537 = !DILocation(line: 452, column: 21, scope: !1182)
!1538 = !DILocation(line: 452, column: 16, scope: !1182)
!1539 = !DILocation(line: 453, column: 9, scope: !1184)
!1540 = !DILocation(line: 454, column: 9, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1542, file: !1, line: 454, column: 9)
!1542 = distinct !DILexicalBlock(scope: !1182, file: !1, line: 454, column: 9)
!1543 = !DILocation(line: 454, column: 9, scope: !1542)
!1544 = !DILocation(line: 458, column: 9, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1546, file: !1, line: 458, column: 9)
!1546 = distinct !DILexicalBlock(scope: !1156, file: !1, line: 457, column: 25)
!1547 = !DILocation(line: 458, column: 9, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1545, file: !1, line: 458, column: 9)
!1549 = !DILocation(line: 459, column: 9, scope: !1546)
!1550 = !DILocation(line: 462, column: 17, scope: !1187)
!1551 = !DILocation(line: 462, column: 13, scope: !1187)
!1552 = !DILocation(line: 463, column: 17, scope: !1187)
!1553 = !DILocation(line: 463, column: 13, scope: !1187)
!1554 = !DILocation(line: 464, column: 9, scope: !1190)
!1555 = !DILocation(line: 465, column: 9, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1187, file: !1, line: 465, column: 9)
!1557 = !DILocation(line: 465, column: 9, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1559, file: !1, line: 465, column: 9)
!1559 = distinct !DILexicalBlock(scope: !1560, file: !1, line: 465, column: 9)
!1560 = distinct !DILexicalBlock(scope: !1556, file: !1, line: 465, column: 9)
!1561 = !{!1562, !520, i64 120}
!1562 = !{!"global_State", !1563, i64 0, !513, i64 16, !513, i64 24, !425, i64 32, !425, i64 33, !427, i64 36, !513, i64 40, !513, i64 48, !513, i64 56, !513, i64 64, !513, i64 72, !513, i64 80, !1564, i64 88, !520, i64 112, !520, i64 120, !520, i64 128, !520, i64 136, !427, i64 144, !427, i64 148, !513, i64 152, !424, i64 160, !513, i64 176, !1510, i64 184, !425, i64 224, !425, i64 296}
!1563 = !{!"stringtable", !513, i64 0, !427, i64 8, !427, i64 12}
!1564 = !{!"Mbuffer", !513, i64 0, !520, i64 8, !520, i64 16}
!1565 = !{!1562, !520, i64 112}
!1566 = !DILocation(line: 465, column: 9, scope: !1559)
!1567 = !DILocation(line: 469, column: 20, scope: !1192)
!1568 = !DILocation(line: 469, column: 15, scope: !1192)
!1569 = !DILocation(line: 470, column: 9, scope: !1194)
!1570 = !DILocation(line: 471, column: 9, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1192, file: !1, line: 471, column: 9)
!1572 = !DILocation(line: 471, column: 9, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1571, file: !1, line: 471, column: 9)
!1574 = !DILocation(line: 475, column: 9, scope: !1197)
!1575 = !DILocation(line: 475, column: 9, scope: !1202)
!1576 = !DILocation(line: 475, column: 9, scope: !1201)
!1577 = !DILocation(line: 475, column: 9, scope: !1205)
!1578 = !DILocation(line: 475, column: 9, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1202, file: !1, line: 475, column: 9)
!1580 = !DILocation(line: 475, column: 9, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1579, file: !1, line: 475, column: 9)
!1582 = !DILocation(line: 0, scope: !1579)
!1583 = !DILocation(line: 476, column: 9, scope: !1198)
!1584 = !DILocation(line: 479, column: 9, scope: !1207)
!1585 = !DILocation(line: 479, column: 9, scope: !1212)
!1586 = !DILocation(line: 479, column: 9, scope: !1211)
!1587 = !DILocation(line: 479, column: 9, scope: !1215)
!1588 = !DILocation(line: 479, column: 9, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1212, file: !1, line: 479, column: 9)
!1590 = !DILocation(line: 479, column: 9, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1589, file: !1, line: 479, column: 9)
!1592 = !DILocation(line: 0, scope: !1589)
!1593 = !DILocation(line: 480, column: 9, scope: !1208)
!1594 = !DILocation(line: 483, column: 9, scope: !1217)
!1595 = !DILocation(line: 483, column: 9, scope: !1222)
!1596 = !DILocation(line: 483, column: 9, scope: !1221)
!1597 = !DILocation(line: 483, column: 9, scope: !1225)
!1598 = !DILocation(line: 483, column: 9, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1222, file: !1, line: 483, column: 9)
!1600 = !DILocation(line: 483, column: 9, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1599, file: !1, line: 483, column: 9)
!1602 = !DILocation(line: 0, scope: !1599)
!1603 = !DILocation(line: 484, column: 9, scope: !1218)
!1604 = !DILocation(line: 487, column: 9, scope: !1227)
!1605 = !DILocation(line: 487, column: 9, scope: !1232)
!1606 = !DILocation(line: 487, column: 9, scope: !1231)
!1607 = !DILocation(line: 487, column: 9, scope: !1235)
!1608 = !DILocation(line: 487, column: 9, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1232, file: !1, line: 487, column: 9)
!1610 = !DILocation(line: 487, column: 9, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1609, file: !1, line: 487, column: 9)
!1612 = !DILocation(line: 0, scope: !1609)
!1613 = !DILocation(line: 488, column: 9, scope: !1228)
!1614 = !DILocation(line: 491, column: 9, scope: !1237)
!1615 = !DILocation(line: 491, column: 9, scope: !1242)
!1616 = !DILocation(line: 491, column: 9, scope: !1241)
!1617 = !DILocation(line: 491, column: 9, scope: !1245)
!1618 = !DILocation(line: 491, column: 9, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1242, file: !1, line: 491, column: 9)
!1620 = !DILocation(line: 491, column: 9, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1619, file: !1, line: 491, column: 9)
!1622 = !DILocation(line: 0, scope: !1619)
!1623 = !DILocation(line: 492, column: 9, scope: !1238)
!1624 = !DILocation(line: 495, column: 9, scope: !1247)
!1625 = !DILocation(line: 495, column: 9, scope: !1252)
!1626 = !DILocation(line: 495, column: 9, scope: !1251)
!1627 = !DILocation(line: 495, column: 9, scope: !1255)
!1628 = !DILocation(line: 495, column: 9, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1252, file: !1, line: 495, column: 9)
!1630 = !DILocation(line: 495, column: 9, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1629, file: !1, line: 495, column: 9)
!1632 = !DILocation(line: 0, scope: !1629)
!1633 = !DILocation(line: 496, column: 9, scope: !1248)
!1634 = !DILocation(line: 499, column: 22, scope: !1257)
!1635 = !DILocation(line: 499, column: 17, scope: !1257)
!1636 = !DILocation(line: 500, column: 13, scope: !1260)
!1637 = !DILocation(line: 500, column: 13, scope: !1257)
!1638 = !DILocation(line: 501, column: 27, scope: !1259)
!1639 = !DILocation(line: 501, column: 22, scope: !1259)
!1640 = !DILocation(line: 502, column: 11, scope: !1262)
!1641 = !DILocation(line: 503, column: 9, scope: !1259)
!1642 = !DILocation(line: 505, column: 11, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1644, file: !1, line: 505, column: 11)
!1644 = distinct !DILexicalBlock(scope: !1260, file: !1, line: 504, column: 14)
!1645 = !DILocation(line: 505, column: 11, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1643, file: !1, line: 505, column: 11)
!1647 = !DILocation(line: 0, scope: !1643)
!1648 = !DILocation(line: 510, column: 19, scope: !1264)
!1649 = !DILocation(line: 510, column: 13, scope: !1264)
!1650 = !DILocation(line: 511, column: 9, scope: !1266)
!1651 = !DILocation(line: 515, column: 28, scope: !1268)
!1652 = !DILocation(line: 515, column: 23, scope: !1268)
!1653 = !DILocation(line: 516, column: 17, scope: !1268)
!1654 = !DILocation(line: 516, column: 9, scope: !1268)
!1655 = !DILocation(line: 518, column: 13, scope: !1270)
!1656 = !DILocation(line: 519, column: 13, scope: !1271)
!1657 = !DILocation(line: 522, column: 13, scope: !1274)
!1658 = !DILocation(line: 523, column: 13, scope: !1275)
!1659 = !DILocation(line: 526, column: 13, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1661, file: !1, line: 526, column: 13)
!1661 = distinct !DILexicalBlock(scope: !1272, file: !1, line: 525, column: 20)
!1662 = !DILocation(line: 526, column: 13, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1664, file: !1, line: 526, column: 13)
!1664 = distinct !DILexicalBlock(scope: !1660, file: !1, line: 526, column: 13)
!1665 = !DILocation(line: 526, column: 13, scope: !1664)
!1666 = !DILocation(line: 531, column: 9, scope: !1272)
!1667 = !DILocation(line: 0, scope: !1431)
!1668 = !DILocation(line: 0, scope: !1271)
!1669 = !DILocation(line: 535, column: 17, scope: !1277)
!1670 = !DILocation(line: 535, column: 13, scope: !1277)
!1671 = !DILocation(line: 536, column: 17, scope: !1277)
!1672 = !DILocation(line: 536, column: 13, scope: !1277)
!1673 = !DILocation(line: 537, column: 9, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1277, file: !1, line: 537, column: 9)
!1675 = !DILocation(line: 537, column: 9, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1674, file: !1, line: 537, column: 9)
!1677 = !DILocation(line: 537, column: 9, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1679, file: !1, line: 537, column: 9)
!1679 = distinct !DILexicalBlock(scope: !1676, file: !1, line: 537, column: 9)
!1680 = !DILocation(line: 537, column: 9, scope: !1679)
!1681 = !DILocation(line: 538, column: 9, scope: !1280)
!1682 = !DILocation(line: 542, column: 9, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1684, file: !1, line: 542, column: 9)
!1684 = distinct !DILexicalBlock(scope: !1156, file: !1, line: 541, column: 20)
!1685 = !DILocation(line: 543, column: 9, scope: !1684)
!1686 = !DILocation(line: 546, column: 22, scope: !1283)
!1687 = !DILocation(line: 547, column: 22, scope: !1283)
!1688 = !DILocation(line: 548, column: 9, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1283, file: !1, line: 548, column: 9)
!1690 = !DILocation(line: 548, column: 9, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1692, file: !1, line: 548, column: 9)
!1692 = distinct !DILexicalBlock(scope: !1689, file: !1, line: 548, column: 9)
!1693 = !DILocation(line: 547, column: 17, scope: !1283)
!1694 = !DILocation(line: 546, column: 17, scope: !1283)
!1695 = !DILocation(line: 0, scope: !1691)
!1696 = !DILocation(line: 548, column: 9, scope: !1692)
!1697 = !DILocation(line: 548, column: 9, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1691, file: !1, line: 548, column: 9)
!1699 = !DILocation(line: 552, column: 11, scope: !1283)
!1700 = !DILocation(line: 556, column: 9, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1702, file: !1, line: 556, column: 9)
!1702 = distinct !DILexicalBlock(scope: !1156, file: !1, line: 555, column: 19)
!1703 = !DILocation(line: 556, column: 9, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1705, file: !1, line: 556, column: 9)
!1705 = distinct !DILexicalBlock(scope: !1701, file: !1, line: 556, column: 9)
!1706 = !DILocation(line: 556, column: 9, scope: !1705)
!1707 = !DILocation(line: 556, column: 9, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1704, file: !1, line: 556, column: 9)
!1709 = !DILocation(line: 560, column: 11, scope: !1702)
!1710 = !DILocation(line: 561, column: 9, scope: !1702)
!1711 = !DILocation(line: 564, column: 9, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1713, file: !1, line: 564, column: 9)
!1713 = distinct !DILexicalBlock(scope: !1156, file: !1, line: 563, column: 19)
!1714 = !DILocation(line: 564, column: 9, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1716, file: !1, line: 564, column: 9)
!1716 = distinct !DILexicalBlock(scope: !1712, file: !1, line: 564, column: 9)
!1717 = !DILocalVariable(name: "L", arg: 1, scope: !1718, file: !1, line: 239, type: !192)
!1718 = distinct !DISubprogram(name: "lessequal", scope: !1, file: !1, line: 239, type: !697, isLocal: true, isDefinition: true, scopeLine: 239, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1719)
!1719 = !{!1717, !1720, !1721, !1722}
!1720 = !DILocalVariable(name: "l", arg: 2, scope: !1718, file: !1, line: 239, type: !408)
!1721 = !DILocalVariable(name: "r", arg: 3, scope: !1718, file: !1, line: 239, type: !408)
!1722 = !DILocalVariable(name: "res", scope: !1718, file: !1, line: 240, type: !148)
!1723 = !DILocation(line: 239, column: 34, scope: !1718, inlinedAt: !1724)
!1724 = distinct !DILocation(line: 564, column: 9, scope: !1715)
!1725 = !DILocation(line: 239, column: 51, scope: !1718, inlinedAt: !1724)
!1726 = !DILocation(line: 239, column: 68, scope: !1718, inlinedAt: !1724)
!1727 = !DILocation(line: 241, column: 7, scope: !1728, inlinedAt: !1724)
!1728 = distinct !DILexicalBlock(scope: !1718, file: !1, line: 241, column: 7)
!1729 = !DILocation(line: 241, column: 19, scope: !1728, inlinedAt: !1724)
!1730 = !DILocation(line: 241, column: 16, scope: !1728, inlinedAt: !1724)
!1731 = !DILocation(line: 241, column: 7, scope: !1718, inlinedAt: !1724)
!1732 = !DILocation(line: 242, column: 12, scope: !1728, inlinedAt: !1724)
!1733 = !DILocation(line: 242, column: 5, scope: !1728, inlinedAt: !1724)
!1734 = !DILocation(line: 243, column: 12, scope: !1735, inlinedAt: !1724)
!1735 = distinct !DILexicalBlock(scope: !1728, file: !1, line: 243, column: 12)
!1736 = !DILocation(line: 243, column: 12, scope: !1728, inlinedAt: !1724)
!1737 = !DILocation(line: 244, column: 12, scope: !1735, inlinedAt: !1724)
!1738 = !DILocation(line: 244, column: 5, scope: !1735, inlinedAt: !1724)
!1739 = !DILocation(line: 245, column: 12, scope: !1740, inlinedAt: !1724)
!1740 = distinct !DILexicalBlock(scope: !1735, file: !1, line: 245, column: 12)
!1741 = !DILocation(line: 245, column: 12, scope: !1735, inlinedAt: !1724)
!1742 = !DILocation(line: 246, column: 21, scope: !1740, inlinedAt: !1724)
!1743 = !DILocation(line: 246, column: 36, scope: !1740, inlinedAt: !1724)
!1744 = !DILocation(line: 246, column: 12, scope: !1740, inlinedAt: !1724)
!1745 = !DILocation(line: 246, column: 51, scope: !1740, inlinedAt: !1724)
!1746 = !DILocation(line: 246, column: 5, scope: !1740, inlinedAt: !1724)
!1747 = !DILocation(line: 247, column: 19, scope: !1748, inlinedAt: !1724)
!1748 = distinct !DILexicalBlock(scope: !1740, file: !1, line: 247, column: 12)
!1749 = !DILocation(line: 240, column: 7, scope: !1718, inlinedAt: !1724)
!1750 = !DILocation(line: 247, column: 49, scope: !1748, inlinedAt: !1724)
!1751 = !DILocation(line: 247, column: 12, scope: !1740, inlinedAt: !1724)
!1752 = !DILocation(line: 249, column: 19, scope: !1753, inlinedAt: !1724)
!1753 = distinct !DILexicalBlock(scope: !1748, file: !1, line: 249, column: 12)
!1754 = !DILocation(line: 249, column: 49, scope: !1753, inlinedAt: !1724)
!1755 = !DILocation(line: 249, column: 12, scope: !1748, inlinedAt: !1724)
!1756 = !DILocation(line: 250, column: 12, scope: !1753, inlinedAt: !1724)
!1757 = !DILocation(line: 250, column: 5, scope: !1753, inlinedAt: !1724)
!1758 = !DILocation(line: 251, column: 10, scope: !1718, inlinedAt: !1724)
!1759 = !DILocation(line: 251, column: 3, scope: !1718, inlinedAt: !1724)
!1760 = !DILocation(line: 0, scope: !1718, inlinedAt: !1724)
!1761 = !DILocation(line: 0, scope: !1715)
!1762 = !DILocation(line: 252, column: 1, scope: !1718, inlinedAt: !1724)
!1763 = !DILocation(line: 564, column: 9, scope: !1716)
!1764 = !DILocation(line: 564, column: 9, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1715, file: !1, line: 564, column: 9)
!1766 = !DILocation(line: 568, column: 11, scope: !1713)
!1767 = !DILocation(line: 569, column: 9, scope: !1713)
!1768 = !DILocation(line: 572, column: 13, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1770, file: !1, line: 572, column: 13)
!1770 = distinct !DILexicalBlock(scope: !1156, file: !1, line: 571, column: 21)
!1771 = !DILocation(line: 572, column: 30, scope: !1769)
!1772 = !DILocation(line: 572, column: 27, scope: !1769)
!1773 = !DILocation(line: 572, column: 13, scope: !1770)
!1774 = !DILocation(line: 573, column: 11, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1769, file: !1, line: 573, column: 11)
!1776 = !DILocation(line: 574, column: 11, scope: !1770)
!1777 = !DILocation(line: 575, column: 9, scope: !1770)
!1778 = !DILocation(line: 578, column: 22, scope: !1286)
!1779 = !DILocation(line: 578, column: 17, scope: !1286)
!1780 = !DILocation(line: 579, column: 13, scope: !1290)
!1781 = !DILocation(line: 579, column: 30, scope: !1290)
!1782 = !DILocation(line: 579, column: 27, scope: !1290)
!1783 = !DILocation(line: 579, column: 13, scope: !1286)
!1784 = !DILocation(line: 580, column: 11, scope: !1288)
!1785 = !DILocation(line: 581, column: 11, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1289, file: !1, line: 581, column: 11)
!1787 = !DILocation(line: 582, column: 9, scope: !1289)
!1788 = !DILocation(line: 583, column: 11, scope: !1286)
!1789 = !DILocation(line: 587, column: 17, scope: !1293)
!1790 = !DILocation(line: 587, column: 13, scope: !1293)
!1791 = !DILocation(line: 588, column: 24, scope: !1293)
!1792 = !DILocation(line: 588, column: 36, scope: !1293)
!1793 = !DILocation(line: 588, column: 13, scope: !1293)
!1794 = !DILocation(line: 589, column: 15, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1293, file: !1, line: 589, column: 13)
!1796 = !DILocation(line: 589, column: 13, scope: !1293)
!1797 = !DILocation(line: 589, column: 32, scope: !1795)
!1798 = !DILocation(line: 589, column: 28, scope: !1795)
!1799 = !DILocation(line: 589, column: 21, scope: !1795)
!1800 = !DILocation(line: 590, column: 20, scope: !1293)
!1801 = !DILocation(line: 591, column: 17, scope: !1293)
!1802 = !DILocation(line: 591, column: 9, scope: !1293)
!1803 = !DILocation(line: 593, column: 23, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1805, file: !1, line: 592, column: 24)
!1805 = distinct !DILexicalBlock(scope: !1293, file: !1, line: 591, column: 48)
!1806 = !DILocation(line: 594, column: 13, scope: !1804)
!1807 = !DILocation(line: 598, column: 26, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1809, file: !1, line: 598, column: 17)
!1809 = distinct !DILexicalBlock(scope: !1805, file: !1, line: 596, column: 22)
!1810 = !DILocation(line: 598, column: 17, scope: !1809)
!1811 = !DILocation(line: 598, column: 44, scope: !1808)
!1812 = !DILocation(line: 598, column: 48, scope: !1808)
!1813 = !{!1387, !513, i64 16}
!1814 = !DILocation(line: 598, column: 39, scope: !1808)
!1815 = !DILocation(line: 598, column: 32, scope: !1808)
!1816 = !DILocation(line: 599, column: 23, scope: !1809)
!1817 = !DILocation(line: 600, column: 13, scope: !1809)
!1818 = !DILocation(line: 608, column: 17, scope: !1296)
!1819 = !DILocation(line: 608, column: 13, scope: !1296)
!1820 = !DILocation(line: 609, column: 15, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1296, file: !1, line: 609, column: 13)
!1822 = !DILocation(line: 609, column: 13, scope: !1296)
!1823 = !DILocation(line: 609, column: 32, scope: !1821)
!1824 = !DILocation(line: 609, column: 28, scope: !1821)
!1825 = !DILocation(line: 609, column: 21, scope: !1821)
!1826 = !DILocation(line: 610, column: 20, scope: !1296)
!1827 = !DILocation(line: 612, column: 17, scope: !1296)
!1828 = !DILocation(line: 612, column: 9, scope: !1296)
!1829 = !DILocation(line: 615, column: 31, scope: !1298)
!1830 = !DILocation(line: 615, column: 23, scope: !1298)
!1831 = !DILocation(line: 617, column: 30, scope: !1298)
!1832 = !DILocation(line: 617, column: 19, scope: !1298)
!1833 = !DILocation(line: 618, column: 35, scope: !1298)
!1834 = !DILocation(line: 618, column: 19, scope: !1298)
!1835 = !DILocation(line: 619, column: 20, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1298, file: !1, line: 619, column: 17)
!1837 = !{!518, !513, i64 152}
!1838 = !DILocation(line: 619, column: 17, scope: !1836)
!1839 = !DILocation(line: 619, column: 17, scope: !1298)
!1840 = !DILocation(line: 0, scope: !1836)
!1841 = !DILocation(line: 619, column: 49, scope: !1836)
!1842 = !{!1387, !513, i64 0}
!1843 = !DILocation(line: 619, column: 31, scope: !1836)
!1844 = !DILocation(line: 620, column: 38, scope: !1298)
!1845 = !DILocation(line: 620, column: 54, scope: !1298)
!1846 = !DILocation(line: 620, column: 59, scope: !1298)
!1847 = !DILocation(line: 620, column: 43, scope: !1298)
!1848 = !DILocation(line: 620, column: 32, scope: !1298)
!1849 = !DILocation(line: 620, column: 21, scope: !1298)
!1850 = !DILocation(line: 616, column: 17, scope: !1298)
!1851 = !DILocation(line: 621, column: 18, scope: !1306)
!1852 = !DILocation(line: 621, column: 42, scope: !1305)
!1853 = !DILocation(line: 621, column: 37, scope: !1305)
!1854 = !DILocation(line: 621, column: 13, scope: !1306)
!1855 = !DILocation(line: 622, column: 15, scope: !1304)
!1856 = !DILocation(line: 621, column: 50, scope: !1305)
!1857 = !DILocation(line: 621, column: 13, scope: !1305)
!1858 = !DILocation(line: 621, column: 32, scope: !1305)
!1859 = !DILocation(line: 0, scope: !1298)
!1860 = distinct !{!1860, !1854, !1861}
!1861 = !DILocation(line: 622, column: 15, scope: !1306)
!1862 = !DILocation(line: 623, column: 30, scope: !1298)
!1863 = !DILocation(line: 623, column: 17, scope: !1298)
!1864 = !DILocation(line: 623, column: 21, scope: !1298)
!1865 = !DILocation(line: 625, column: 30, scope: !1298)
!1866 = !DILocation(line: 625, column: 17, scope: !1298)
!1867 = !DILocation(line: 625, column: 25, scope: !1298)
!1868 = !{!1387, !513, i64 24}
!1869 = !DILocation(line: 626, column: 17, scope: !1298)
!1870 = !DILocation(line: 626, column: 26, scope: !1298)
!1871 = !{!1387, !427, i64 36}
!1872 = !DILocation(line: 627, column: 18, scope: !1298)
!1873 = !DILocation(line: 631, column: 23, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1299, file: !1, line: 630, column: 22)
!1875 = !DILocation(line: 632, column: 13, scope: !1874)
!1876 = !DILocation(line: 640, column: 17, scope: !1309)
!1877 = !DILocation(line: 640, column: 13, scope: !1309)
!1878 = !DILocation(line: 641, column: 15, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1309, file: !1, line: 641, column: 13)
!1880 = !DILocation(line: 641, column: 13, scope: !1309)
!1881 = !DILocation(line: 641, column: 32, scope: !1879)
!1882 = !DILocation(line: 641, column: 34, scope: !1879)
!1883 = !DILocation(line: 641, column: 28, scope: !1879)
!1884 = !DILocation(line: 641, column: 21, scope: !1879)
!1885 = !DILocation(line: 642, column: 16, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1309, file: !1, line: 642, column: 13)
!1887 = !DILocation(line: 642, column: 13, scope: !1886)
!1888 = !DILocation(line: 642, column: 13, scope: !1309)
!1889 = !DILocation(line: 642, column: 27, scope: !1886)
!1890 = !DILocation(line: 643, column: 20, scope: !1309)
!1891 = !DILocation(line: 644, column: 13, scope: !1309)
!1892 = !DILocation(line: 645, column: 13, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1309, file: !1, line: 645, column: 13)
!1894 = !DILocation(line: 645, column: 26, scope: !1893)
!1895 = !DILocation(line: 645, column: 13, scope: !1309)
!1896 = !DILocation(line: 648, column: 15, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1898, file: !1, line: 648, column: 15)
!1898 = distinct !DILexicalBlock(scope: !1893, file: !1, line: 647, column: 14)
!1899 = !DILocation(line: 648, column: 15, scope: !1898)
!1900 = !DILocation(line: 648, column: 30, scope: !1897)
!1901 = !DILocation(line: 648, column: 34, scope: !1897)
!1902 = !DILocation(line: 648, column: 25, scope: !1897)
!1903 = !DILocation(line: 648, column: 18, scope: !1897)
!1904 = !DILocation(line: 655, column: 27, scope: !1311)
!1905 = !DILocation(line: 655, column: 20, scope: !1311)
!1906 = !DILocation(line: 656, column: 26, scope: !1311)
!1907 = !DILocation(line: 656, column: 20, scope: !1311)
!1908 = !DILocation(line: 657, column: 28, scope: !1311)
!1909 = !DILocation(line: 657, column: 20, scope: !1311)
!1910 = !DILocation(line: 658, column: 13, scope: !1317)
!1911 = !DILocation(line: 658, column: 13, scope: !1311)
!1912 = !DILocation(line: 658, column: 35, scope: !1317)
!1913 = !DILocation(line: 659, column: 35, scope: !1317)
!1914 = !DILocation(line: 660, column: 11, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1316, file: !1, line: 660, column: 11)
!1916 = !DILocation(line: 661, column: 11, scope: !1315)
!1917 = !DILocation(line: 662, column: 11, scope: !1319)
!1918 = !DILocation(line: 663, column: 9, scope: !1316)
!1919 = !DILocation(line: 667, column: 23, scope: !1321)
!1920 = !DILocation(line: 668, column: 34, scope: !1321)
!1921 = !DILocation(line: 668, column: 23, scope: !1321)
!1922 = !DILocation(line: 669, column: 33, scope: !1321)
!1923 = !DILocation(line: 669, column: 23, scope: !1321)
!1924 = !DILocation(line: 670, column: 20, scope: !1321)
!1925 = !DILocation(line: 671, column: 14, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1321, file: !1, line: 671, column: 13)
!1927 = !DILocation(line: 35, column: 44, scope: !405, inlinedAt: !1928)
!1928 = distinct !DILocation(line: 671, column: 14, scope: !1926)
!1929 = !DILocation(line: 35, column: 57, scope: !405, inlinedAt: !1928)
!1930 = !DILocation(line: 36, column: 3, scope: !405, inlinedAt: !1928)
!1931 = !DILocation(line: 37, column: 7, scope: !422, inlinedAt: !1928)
!1932 = !DILocation(line: 37, column: 7, scope: !405, inlinedAt: !1928)
!1933 = !DILocation(line: 38, column: 7, scope: !417, inlinedAt: !1928)
!1934 = !DILocation(line: 38, column: 23, scope: !417, inlinedAt: !1928)
!1935 = !DILocation(line: 38, column: 37, scope: !417, inlinedAt: !1928)
!1936 = !DILocation(line: 36, column: 14, scope: !405, inlinedAt: !1928)
!1937 = !DILocation(line: 38, column: 26, scope: !417, inlinedAt: !1928)
!1938 = !DILocation(line: 38, column: 7, scope: !405, inlinedAt: !1928)
!1939 = !DILocation(line: 39, column: 5, scope: !415, inlinedAt: !1928)
!1940 = !DILocation(line: 40, column: 5, scope: !416, inlinedAt: !1928)
!1941 = !DILocation(line: 0, scope: !1926)
!1942 = !DILocation(line: 44, column: 1, scope: !405, inlinedAt: !1928)
!1943 = !DILocation(line: 671, column: 13, scope: !1321)
!1944 = !DILocation(line: 43, column: 5, scope: !417, inlinedAt: !1928)
!1945 = !DILocation(line: 672, column: 11, scope: !1926)
!1946 = !DILocation(line: 673, column: 19, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1926, file: !1, line: 673, column: 18)
!1948 = !DILocation(line: 35, column: 44, scope: !405, inlinedAt: !1949)
!1949 = distinct !DILocation(line: 673, column: 19, scope: !1947)
!1950 = !DILocation(line: 35, column: 57, scope: !405, inlinedAt: !1949)
!1951 = !DILocation(line: 36, column: 3, scope: !405, inlinedAt: !1949)
!1952 = !DILocation(line: 37, column: 7, scope: !422, inlinedAt: !1949)
!1953 = !DILocation(line: 37, column: 7, scope: !405, inlinedAt: !1949)
!1954 = !DILocation(line: 38, column: 7, scope: !417, inlinedAt: !1949)
!1955 = !DILocation(line: 38, column: 23, scope: !417, inlinedAt: !1949)
!1956 = !DILocation(line: 38, column: 37, scope: !417, inlinedAt: !1949)
!1957 = !DILocation(line: 36, column: 14, scope: !405, inlinedAt: !1949)
!1958 = !DILocation(line: 38, column: 26, scope: !417, inlinedAt: !1949)
!1959 = !DILocation(line: 38, column: 7, scope: !405, inlinedAt: !1949)
!1960 = !DILocation(line: 39, column: 5, scope: !415, inlinedAt: !1949)
!1961 = !DILocation(line: 40, column: 5, scope: !416, inlinedAt: !1949)
!1962 = !DILocation(line: 0, scope: !1947)
!1963 = !DILocation(line: 44, column: 1, scope: !405, inlinedAt: !1949)
!1964 = !DILocation(line: 673, column: 18, scope: !1926)
!1965 = !DILocation(line: 43, column: 5, scope: !417, inlinedAt: !1949)
!1966 = !DILocation(line: 674, column: 11, scope: !1947)
!1967 = !DILocation(line: 675, column: 19, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1947, file: !1, line: 675, column: 18)
!1969 = !DILocation(line: 35, column: 44, scope: !405, inlinedAt: !1970)
!1970 = distinct !DILocation(line: 675, column: 19, scope: !1968)
!1971 = !DILocation(line: 35, column: 57, scope: !405, inlinedAt: !1970)
!1972 = !DILocation(line: 36, column: 3, scope: !405, inlinedAt: !1970)
!1973 = !DILocation(line: 37, column: 7, scope: !422, inlinedAt: !1970)
!1974 = !DILocation(line: 37, column: 7, scope: !405, inlinedAt: !1970)
!1975 = !DILocation(line: 38, column: 7, scope: !417, inlinedAt: !1970)
!1976 = !DILocation(line: 38, column: 23, scope: !417, inlinedAt: !1970)
!1977 = !DILocation(line: 38, column: 37, scope: !417, inlinedAt: !1970)
!1978 = !DILocation(line: 36, column: 14, scope: !405, inlinedAt: !1970)
!1979 = !DILocation(line: 38, column: 26, scope: !417, inlinedAt: !1970)
!1980 = !DILocation(line: 38, column: 7, scope: !405, inlinedAt: !1970)
!1981 = !DILocation(line: 39, column: 5, scope: !415, inlinedAt: !1970)
!1982 = !DILocation(line: 40, column: 5, scope: !416, inlinedAt: !1970)
!1983 = !DILocation(line: 0, scope: !1968)
!1984 = !DILocation(line: 44, column: 1, scope: !405, inlinedAt: !1970)
!1985 = !DILocation(line: 675, column: 18, scope: !1947)
!1986 = !DILocation(line: 43, column: 5, scope: !417, inlinedAt: !1970)
!1987 = !DILocation(line: 676, column: 11, scope: !1968)
!1988 = !DILocation(line: 677, column: 9, scope: !1325)
!1989 = !DILocation(line: 678, column: 9, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1321, file: !1, line: 678, column: 9)
!1991 = !DILocation(line: 682, column: 23, scope: !1327)
!1992 = !DILocation(line: 682, column: 15, scope: !1327)
!1993 = !DILocation(line: 683, column: 9, scope: !1329)
!1994 = !DILocation(line: 684, column: 9, scope: !1332)
!1995 = !DILocation(line: 685, column: 9, scope: !1335)
!1996 = !DILocation(line: 686, column: 20, scope: !1327)
!1997 = !DILocation(line: 686, column: 16, scope: !1327)
!1998 = !DILocation(line: 687, column: 9, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !1327, file: !1, line: 687, column: 9)
!2000 = !DILocation(line: 687, column: 9, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1999, file: !1, line: 687, column: 9)
!2002 = !DILocation(line: 688, column: 21, scope: !1327)
!2003 = !DILocation(line: 688, column: 25, scope: !1327)
!2004 = !DILocation(line: 688, column: 16, scope: !1327)
!2005 = !DILocation(line: 689, column: 14, scope: !1327)
!2006 = !DILocation(line: 689, column: 20, scope: !1327)
!2007 = !DILocation(line: 690, column: 14, scope: !1340)
!2008 = !DILocation(line: 690, column: 13, scope: !1327)
!2009 = !DILocation(line: 691, column: 11, scope: !1338)
!2010 = !DILocation(line: 692, column: 11, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !1339, file: !1, line: 692, column: 11)
!2012 = !DILocation(line: 693, column: 9, scope: !1339)
!2013 = !DILocation(line: 0, scope: !2011)
!2014 = !DILocation(line: 694, column: 11, scope: !1327)
!2015 = !DILocation(line: 698, column: 17, scope: !1343)
!2016 = !DILocation(line: 698, column: 13, scope: !1343)
!2017 = !DILocation(line: 699, column: 17, scope: !1343)
!2018 = !DILocation(line: 699, column: 13, scope: !1343)
!2019 = !DILocation(line: 702, column: 15, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !1343, file: !1, line: 702, column: 13)
!2021 = !DILocation(line: 702, column: 13, scope: !1343)
!2022 = !DILocation(line: 703, column: 15, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !2020, file: !1, line: 702, column: 21)
!2024 = !DILocation(line: 703, column: 37, scope: !2023)
!2025 = !DILocation(line: 704, column: 23, scope: !2023)
!2026 = !DILocation(line: 704, column: 27, scope: !2023)
!2027 = !DILocation(line: 704, column: 18, scope: !2023)
!2028 = !DILocation(line: 705, column: 9, scope: !2023)
!2029 = !DILocation(line: 0, scope: !1343)
!2030 = !DILocation(line: 706, column: 15, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !1343, file: !1, line: 706, column: 13)
!2032 = !DILocation(line: 706, column: 13, scope: !1343)
!2033 = !DILocation(line: 706, column: 25, scope: !2031)
!2034 = !DILocation(line: 706, column: 21, scope: !2031)
!2035 = !DILocation(line: 707, column: 9, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !2037, file: !1, line: 707, column: 9)
!2037 = distinct !DILexicalBlock(scope: !1343, file: !1, line: 707, column: 9)
!2038 = !DILocation(line: 707, column: 9, scope: !2037)
!2039 = !DILocation(line: 708, column: 13, scope: !1343)
!2040 = !DILocation(line: 701, column: 16, scope: !1343)
!2041 = !DILocation(line: 709, column: 22, scope: !1343)
!2042 = !DILocation(line: 709, column: 42, scope: !1343)
!2043 = !DILocation(line: 700, column: 13, scope: !1343)
!2044 = !DILocation(line: 710, column: 23, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !1343, file: !1, line: 710, column: 13)
!2046 = !{!512, !427, i64 56}
!2047 = !DILocation(line: 710, column: 18, scope: !2045)
!2048 = !DILocation(line: 710, column: 13, scope: !1343)
!2049 = !DILocation(line: 711, column: 11, scope: !2045)
!2050 = !DILocation(line: 712, column: 9, scope: !1343)
!2051 = !DILocation(line: 712, column: 18, scope: !1349)
!2052 = !DILocation(line: 712, column: 9, scope: !1350)
!2053 = !DILocation(line: 713, column: 27, scope: !1348)
!2054 = !DILocation(line: 713, column: 19, scope: !1348)
!2055 = !DILocation(line: 714, column: 11, scope: !1352)
!2056 = !DILocation(line: 715, column: 11, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2058, file: !1, line: 715, column: 11)
!2058 = distinct !DILexicalBlock(scope: !1348, file: !1, line: 715, column: 11)
!2059 = !DILocation(line: 715, column: 11, scope: !2058)
!2060 = !DILocation(line: 712, column: 24, scope: !1349)
!2061 = !DILocation(line: 712, column: 9, scope: !1349)
!2062 = distinct !{!2062, !2052, !2063}
!2063 = !DILocation(line: 716, column: 9, scope: !1350)
!2064 = !DILocation(line: 717, column: 9, scope: !1343)
!2065 = !DILocation(line: 720, column: 9, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !1156, file: !1, line: 719, column: 22)
!2067 = !DILocation(line: 721, column: 9, scope: !2066)
!2068 = !DILocation(line: 727, column: 17, scope: !1355)
!2069 = !DILocation(line: 727, column: 20, scope: !1355)
!2070 = !{!1396, !513, i64 32}
!2071 = !DILocation(line: 727, column: 22, scope: !1355)
!2072 = !DILocation(line: 727, column: 13, scope: !1355)
!2073 = !DILocation(line: 724, column: 16, scope: !1355)
!2074 = !DILocation(line: 728, column: 18, scope: !1355)
!2075 = !{!1396, !425, i64 112}
!2076 = !DILocation(line: 728, column: 15, scope: !1355)
!2077 = !DILocation(line: 726, column: 13, scope: !1355)
!2078 = !DILocation(line: 729, column: 44, scope: !1355)
!2079 = !DILocation(line: 729, column: 15, scope: !1355)
!2080 = !DILocation(line: 725, column: 18, scope: !1355)
!2081 = !DILocation(line: 730, column: 16, scope: !1355)
!2082 = !DILocation(line: 730, column: 18, scope: !1355)
!2083 = !DILocation(line: 726, column: 18, scope: !1355)
!2084 = !DILocation(line: 731, column: 14, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !1355, file: !1, line: 731, column: 9)
!2086 = !DILocation(line: 731, column: 20, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2085, file: !1, line: 731, column: 9)
!2088 = !DILocation(line: 731, column: 9, scope: !2085)
!2089 = !DILocation(line: 732, column: 15, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2091, file: !1, line: 732, column: 15)
!2091 = distinct !DILexicalBlock(scope: !2087, file: !1, line: 731, column: 37)
!2092 = !DILocation(line: 732, column: 31, scope: !2090)
!2093 = !DILocation(line: 732, column: 15, scope: !2091)
!2094 = !DILocation(line: 0, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !2090, file: !1, line: 734, column: 16)
!2096 = !DILocation(line: 733, column: 32, scope: !2090)
!2097 = !DILocation(line: 733, column: 13, scope: !2090)
!2098 = !DILocation(line: 733, column: 30, scope: !2090)
!2099 = !DILocation(line: 736, column: 55, scope: !2095)
!2100 = !DILocation(line: 736, column: 32, scope: !2095)
!2101 = !DILocation(line: 736, column: 13, scope: !2095)
!2102 = !DILocation(line: 736, column: 30, scope: !2095)
!2103 = !DILocation(line: 731, column: 27, scope: !2087)
!2104 = !DILocation(line: 731, column: 33, scope: !2087)
!2105 = !DILocation(line: 731, column: 9, scope: !2087)
!2106 = distinct !{!2106, !2088, !2107}
!2107 = !DILocation(line: 738, column: 9, scope: !2085)
!2108 = !DILocation(line: 739, column: 9, scope: !1364)
!2109 = !DILocation(line: 0, scope: !2087)
!2110 = !DILocation(line: 740, column: 9, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !1355, file: !1, line: 740, column: 9)
!2112 = !DILocation(line: 740, column: 9, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2114, file: !1, line: 740, column: 9)
!2114 = distinct !DILexicalBlock(scope: !2115, file: !1, line: 740, column: 9)
!2115 = distinct !DILexicalBlock(scope: !2111, file: !1, line: 740, column: 9)
!2116 = !DILocation(line: 740, column: 9, scope: !2114)
!2117 = !DILocation(line: 744, column: 17, scope: !1366)
!2118 = !DILocation(line: 744, column: 29, scope: !1366)
!2119 = !DILocation(line: 744, column: 13, scope: !1366)
!2120 = !DILocation(line: 746, column: 27, scope: !1366)
!2121 = !DILocation(line: 746, column: 19, scope: !1366)
!2122 = !DILocation(line: 747, column: 17, scope: !1366)
!2123 = !DILocation(line: 747, column: 53, scope: !1366)
!2124 = !DILocation(line: 747, column: 56, scope: !1366)
!2125 = !{!1396, !425, i64 113}
!2126 = !DILocation(line: 747, column: 49, scope: !1366)
!2127 = !DILocation(line: 747, column: 66, scope: !1366)
!2128 = !DILocation(line: 747, column: 13, scope: !1366)
!2129 = !DILocation(line: 748, column: 15, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !1366, file: !1, line: 748, column: 13)
!2131 = !DILocation(line: 748, column: 13, scope: !1366)
!2132 = !DILocation(line: 749, column: 11, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2134, file: !1, line: 749, column: 11)
!2134 = distinct !DILexicalBlock(scope: !2130, file: !1, line: 748, column: 31)
!2135 = !DILocation(line: 749, column: 11, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2137, file: !1, line: 749, column: 11)
!2137 = distinct !DILexicalBlock(scope: !2133, file: !1, line: 749, column: 11)
!2138 = !DILocation(line: 749, column: 11, scope: !2137)
!2139 = !DILocation(line: 750, column: 16, scope: !2134)
!2140 = !DILocation(line: 752, column: 23, scope: !2134)
!2141 = !DILocation(line: 752, column: 18, scope: !2134)
!2142 = !DILocation(line: 753, column: 9, scope: !2134)
!2143 = !DILocation(line: 0, scope: !1366)
!2144 = !DILocation(line: 745, column: 13, scope: !1366)
!2145 = !DILocation(line: 754, column: 14, scope: !1376)
!2146 = !DILocation(line: 754, column: 23, scope: !1375)
!2147 = !DILocation(line: 754, column: 9, scope: !1376)
!2148 = !DILocation(line: 755, column: 17, scope: !1373)
!2149 = !DILocation(line: 755, column: 15, scope: !1374)
!2150 = !DILocation(line: 756, column: 13, scope: !1371)
!2151 = !DILocation(line: 757, column: 11, scope: !1372)
!2152 = !DILocation(line: 0, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !1373, file: !1, line: 758, column: 16)
!2154 = !DILocation(line: 754, column: 29, scope: !1375)
!2155 = !DILocation(line: 754, column: 9, scope: !1375)
!2156 = distinct !{!2156, !2147, !2157}
!2157 = !DILocation(line: 761, column: 9, scope: !1376)
!2158 = !DILocation(line: 766, column: 1, scope: !1137)
!2159 = distinct !DISubprogram(name: "Arith", scope: !1, file: !1, line: 317, type: !2160, isLocal: true, isDefinition: true, scopeLine: 318, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2162)
!2160 = !DISubroutineType(types: !2161)
!2161 = !{null, !192, !201, !408, !408, !792}
!2162 = !{!2163, !2164, !2165, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2175, !2176, !2179, !2181, !2183, !2185, !2187, !2189}
!2163 = !DILocalVariable(name: "L", arg: 1, scope: !2159, file: !1, line: 317, type: !192)
!2164 = !DILocalVariable(name: "ra", arg: 2, scope: !2159, file: !1, line: 317, type: !201)
!2165 = !DILocalVariable(name: "rb", arg: 3, scope: !2159, file: !1, line: 317, type: !408)
!2166 = !DILocalVariable(name: "rc", arg: 4, scope: !2159, file: !1, line: 318, type: !408)
!2167 = !DILocalVariable(name: "op", arg: 5, scope: !2159, file: !1, line: 318, type: !792)
!2168 = !DILocalVariable(name: "tempb", scope: !2159, file: !1, line: 319, type: !135)
!2169 = !DILocalVariable(name: "tempc", scope: !2159, file: !1, line: 319, type: !135)
!2170 = !DILocalVariable(name: "b", scope: !2159, file: !1, line: 320, type: !408)
!2171 = !DILocalVariable(name: "c", scope: !2159, file: !1, line: 320, type: !408)
!2172 = !DILocalVariable(name: "nb", scope: !2173, file: !1, line: 323, type: !145)
!2173 = distinct !DILexicalBlock(scope: !2174, file: !1, line: 322, column: 48)
!2174 = distinct !DILexicalBlock(scope: !2159, file: !1, line: 321, column: 7)
!2175 = !DILocalVariable(name: "nc", scope: !2173, file: !1, line: 323, type: !145)
!2176 = !DILocalVariable(name: "i_o", scope: !2177, file: !1, line: 325, type: !134)
!2177 = distinct !DILexicalBlock(scope: !2178, file: !1, line: 325, column: 20)
!2178 = distinct !DILexicalBlock(scope: !2173, file: !1, line: 324, column: 17)
!2179 = !DILocalVariable(name: "i_o", scope: !2180, file: !1, line: 326, type: !134)
!2180 = distinct !DILexicalBlock(scope: !2178, file: !1, line: 326, column: 20)
!2181 = !DILocalVariable(name: "i_o", scope: !2182, file: !1, line: 327, type: !134)
!2182 = distinct !DILexicalBlock(scope: !2178, file: !1, line: 327, column: 20)
!2183 = !DILocalVariable(name: "i_o", scope: !2184, file: !1, line: 328, type: !134)
!2184 = distinct !DILexicalBlock(scope: !2178, file: !1, line: 328, column: 20)
!2185 = !DILocalVariable(name: "i_o", scope: !2186, file: !1, line: 329, type: !134)
!2186 = distinct !DILexicalBlock(scope: !2178, file: !1, line: 329, column: 20)
!2187 = !DILocalVariable(name: "i_o", scope: !2188, file: !1, line: 330, type: !134)
!2188 = distinct !DILexicalBlock(scope: !2178, file: !1, line: 330, column: 20)
!2189 = !DILocalVariable(name: "i_o", scope: !2190, file: !1, line: 331, type: !134)
!2190 = distinct !DILexicalBlock(scope: !2178, file: !1, line: 331, column: 20)
!2191 = !DILocation(line: 317, column: 31, scope: !2159)
!2192 = !DILocation(line: 317, column: 40, scope: !2159)
!2193 = !DILocation(line: 317, column: 58, scope: !2159)
!2194 = !DILocation(line: 318, column: 34, scope: !2159)
!2195 = !DILocation(line: 318, column: 42, scope: !2159)
!2196 = !DILocation(line: 319, column: 3, scope: !2159)
!2197 = !DILocation(line: 319, column: 10, scope: !2159)
!2198 = !DILocation(line: 35, column: 44, scope: !405, inlinedAt: !2199)
!2199 = distinct !DILocation(line: 321, column: 12, scope: !2174)
!2200 = !DILocation(line: 35, column: 57, scope: !405, inlinedAt: !2199)
!2201 = !DILocation(line: 36, column: 3, scope: !405, inlinedAt: !2199)
!2202 = !DILocation(line: 37, column: 7, scope: !422, inlinedAt: !2199)
!2203 = !DILocation(line: 37, column: 7, scope: !405, inlinedAt: !2199)
!2204 = !DILocation(line: 38, column: 7, scope: !417, inlinedAt: !2199)
!2205 = !DILocation(line: 38, column: 23, scope: !417, inlinedAt: !2199)
!2206 = !DILocation(line: 38, column: 37, scope: !417, inlinedAt: !2199)
!2207 = !DILocation(line: 36, column: 14, scope: !405, inlinedAt: !2199)
!2208 = !DILocation(line: 38, column: 26, scope: !417, inlinedAt: !2199)
!2209 = !DILocation(line: 38, column: 7, scope: !405, inlinedAt: !2199)
!2210 = !DILocation(line: 39, column: 5, scope: !415, inlinedAt: !2199)
!2211 = !DILocation(line: 40, column: 5, scope: !416, inlinedAt: !2199)
!2212 = !DILocation(line: 43, column: 5, scope: !417, inlinedAt: !2199)
!2213 = !DILocation(line: 44, column: 1, scope: !405, inlinedAt: !2199)
!2214 = !DILocation(line: 320, column: 17, scope: !2159)
!2215 = !DILocation(line: 321, column: 47, scope: !2174)
!2216 = !DILocation(line: 0, scope: !2174)
!2217 = !DILocation(line: 319, column: 17, scope: !2159)
!2218 = !DILocation(line: 35, column: 44, scope: !405, inlinedAt: !2219)
!2219 = distinct !DILocation(line: 322, column: 12, scope: !2174)
!2220 = !DILocation(line: 35, column: 57, scope: !405, inlinedAt: !2219)
!2221 = !DILocation(line: 36, column: 3, scope: !405, inlinedAt: !2219)
!2222 = !DILocation(line: 37, column: 7, scope: !422, inlinedAt: !2219)
!2223 = !DILocation(line: 37, column: 7, scope: !405, inlinedAt: !2219)
!2224 = !DILocation(line: 38, column: 7, scope: !417, inlinedAt: !2219)
!2225 = !DILocation(line: 38, column: 23, scope: !417, inlinedAt: !2219)
!2226 = !DILocation(line: 38, column: 37, scope: !417, inlinedAt: !2219)
!2227 = !DILocation(line: 36, column: 14, scope: !405, inlinedAt: !2219)
!2228 = !DILocation(line: 38, column: 26, scope: !417, inlinedAt: !2219)
!2229 = !DILocation(line: 38, column: 7, scope: !405, inlinedAt: !2219)
!2230 = !DILocation(line: 39, column: 5, scope: !415, inlinedAt: !2219)
!2231 = !DILocation(line: 40, column: 5, scope: !416, inlinedAt: !2219)
!2232 = !DILocation(line: 43, column: 5, scope: !417, inlinedAt: !2219)
!2233 = !DILocation(line: 44, column: 1, scope: !405, inlinedAt: !2219)
!2234 = !DILocation(line: 320, column: 21, scope: !2159)
!2235 = !DILocation(line: 321, column: 7, scope: !2159)
!2236 = !DILocation(line: 323, column: 21, scope: !2173)
!2237 = !DILocation(line: 323, column: 16, scope: !2173)
!2238 = !DILocation(line: 323, column: 37, scope: !2173)
!2239 = !DILocation(line: 323, column: 32, scope: !2173)
!2240 = !DILocation(line: 324, column: 5, scope: !2173)
!2241 = !DILocation(line: 325, column: 20, scope: !2177)
!2242 = !DILocation(line: 325, column: 56, scope: !2178)
!2243 = !DILocation(line: 326, column: 20, scope: !2180)
!2244 = !DILocation(line: 326, column: 56, scope: !2178)
!2245 = !DILocation(line: 327, column: 20, scope: !2182)
!2246 = !DILocation(line: 327, column: 56, scope: !2178)
!2247 = !DILocation(line: 328, column: 20, scope: !2184)
!2248 = !DILocation(line: 328, column: 56, scope: !2178)
!2249 = !DILocation(line: 329, column: 20, scope: !2186)
!2250 = !DILocation(line: 329, column: 56, scope: !2178)
!2251 = !DILocation(line: 330, column: 20, scope: !2188)
!2252 = !DILocation(line: 330, column: 56, scope: !2178)
!2253 = !DILocation(line: 331, column: 20, scope: !2190)
!2254 = !DILocation(line: 331, column: 52, scope: !2178)
!2255 = !DILocation(line: 0, scope: !2177)
!2256 = !DILocation(line: 0, scope: !2178)
!2257 = !DILocation(line: 334, column: 3, scope: !2173)
!2258 = !DILocation(line: 335, column: 13, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2174, file: !1, line: 335, column: 12)
!2260 = !DILocation(line: 335, column: 12, scope: !2174)
!2261 = !DILocation(line: 336, column: 5, scope: !2259)
!2262 = !DILocation(line: 0, scope: !2173)
!2263 = !DILocation(line: 337, column: 1, scope: !2159)
