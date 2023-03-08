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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !440
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !468
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !578
  br label %117, !dbg !579

; <label>:116:                                    ; preds = %8
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0)) #5, !dbg !580
  br label %117, !dbg !581

; <label>:117:                                    ; preds = %39, %101, %116
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !581
  ret void, !dbg !581
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
define hidden void @luaV_settable(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue* nocapture readonly) local_unnamed_addr #0 !dbg !582 {
  %5 = alloca %struct.lua_TValue, align 8
  %6 = bitcast %struct.lua_TValue* %5 to i8*, !dbg !610
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #4, !dbg !610
  %7 = bitcast %struct.lua_TValue* %5 to i64*
  %8 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %5, i64 0, i32 1
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %10 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1, i64 0, i32 1
  %11 = load i32, i32* %10, align 8, !dbg !612, !tbaa !423
  br label %12, !dbg !613

; <label>:12:                                     ; preds = %4, %127
  %13 = phi i32 [ %11, %4 ], [ %78, %127 ], !dbg !612
  %14 = phi %struct.lua_TValue* [ %1, %4 ], [ %5, %127 ]
  %15 = phi i32 [ 0, %4 ], [ %130, %127 ]
  %16 = icmp eq i32 %13, 5, !dbg !612
  br i1 %16, label %17, label %67, !dbg !614

; <label>:17:                                     ; preds = %12
  %18 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %14, i64 0, i32 0, i32 0, !dbg !615
  %19 = load %union.GCObject*, %union.GCObject** %18, align 8, !dbg !615, !tbaa !430
  %20 = bitcast %union.GCObject* %19 to %struct.Table*, !dbg !615
  %21 = call %struct.lua_TValue* @luaH_set(%struct.lua_State* %0, %struct.Table* %20, %struct.lua_TValue* %2) #5, !dbg !617
  %22 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %21, i64 0, i32 1, !dbg !619
  %23 = load i32, i32* %22, align 8, !dbg !619, !tbaa !423
  %24 = icmp eq i32 %23, 0, !dbg !619
  br i1 %24, label %25, label %43, !dbg !620

; <label>:25:                                     ; preds = %17
  %26 = getelementptr inbounds %union.GCObject, %union.GCObject* %19, i64 0, i32 0, i32 4, !dbg !621
  %27 = bitcast %struct.lua_TValue** %26 to %struct.Table**, !dbg !621
  %28 = load %struct.Table*, %struct.Table** %27, align 8, !dbg !621, !tbaa !511
  %29 = icmp eq %struct.Table* %28, null, !dbg !621
  br i1 %29, label %43, label %30, !dbg !621

; <label>:30:                                     ; preds = %25
  %31 = getelementptr inbounds %struct.Table, %struct.Table* %28, i64 0, i32 3, !dbg !621
  %32 = load i8, i8* %31, align 2, !dbg !621, !tbaa !514
  %33 = and i8 %32, 2, !dbg !621
  %34 = icmp eq i8 %33, 0, !dbg !621
  br i1 %34, label %35, label %43, !dbg !621

; <label>:35:                                     ; preds = %30
  %36 = load %struct.global_State*, %struct.global_State** %9, align 8, !dbg !621, !tbaa !515
  %37 = getelementptr inbounds %struct.global_State, %struct.global_State* %36, i64 0, i32 24, i64 1, !dbg !621
  %38 = load %union.TString*, %union.TString** %37, align 8, !dbg !621, !tbaa !519
  %39 = call %struct.lua_TValue* @luaT_gettm(%struct.Table* nonnull %28, i32 1, %union.TString* %38) #5, !dbg !621
  %40 = icmp eq %struct.lua_TValue* %39, null, !dbg !623
  br i1 %40, label %43, label %41, !dbg !624

; <label>:41:                                     ; preds = %35
  %42 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %39, i64 0, i32 1, !dbg !625
  br label %73, !dbg !624

; <label>:43:                                     ; preds = %30, %25, %35, %17
  %44 = bitcast %union.GCObject* %19 to %struct.Table*, !dbg !615
  %45 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %21, i64 0, i32 1, !dbg !619
  %46 = bitcast %struct.lua_TValue* %3 to i64*, !dbg !627
  %47 = bitcast %struct.lua_TValue* %21 to i64*, !dbg !627
  %48 = load i64, i64* %46, align 8, !dbg !627
  store i64 %48, i64* %47, align 8, !dbg !627
  %49 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3, i64 0, i32 1, !dbg !627
  %50 = load i32, i32* %49, align 8, !dbg !627, !tbaa !423
  store i32 %50, i32* %45, align 8, !dbg !627, !tbaa !423
  %51 = getelementptr inbounds %union.GCObject, %union.GCObject* %19, i64 0, i32 0, i32 3, !dbg !628
  store i8 0, i8* %51, align 2, !dbg !629, !tbaa !514
  %52 = load i32, i32* %49, align 8, !dbg !630, !tbaa !423
  %53 = icmp sgt i32 %52, 3, !dbg !630
  br i1 %53, label %54, label %133, !dbg !630

; <label>:54:                                     ; preds = %43
  %55 = bitcast %struct.lua_TValue* %3 to %struct.GCheader**, !dbg !630
  %56 = load %struct.GCheader*, %struct.GCheader** %55, align 8, !dbg !630, !tbaa !430
  %57 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %56, i64 0, i32 2, !dbg !630
  %58 = load i8, i8* %57, align 1, !dbg !630, !tbaa !430
  %59 = and i8 %58, 3, !dbg !630
  %60 = icmp eq i8 %59, 0, !dbg !630
  br i1 %60, label %133, label %61, !dbg !630

; <label>:61:                                     ; preds = %54
  %62 = getelementptr inbounds %union.GCObject, %union.GCObject* %19, i64 0, i32 0, i32 2, !dbg !630
  %63 = load i8, i8* %62, align 1, !dbg !630, !tbaa !430
  %64 = and i8 %63, 4, !dbg !630
  %65 = icmp eq i8 %64, 0, !dbg !630
  br i1 %65, label %133, label %66, !dbg !633

; <label>:66:                                     ; preds = %61
  call void @luaC_barrierback(%struct.lua_State* %0, %struct.Table* nonnull %44) #5, !dbg !630
  br label %133, !dbg !630

; <label>:67:                                     ; preds = %12
  %68 = call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* %0, %struct.lua_TValue* nonnull %14, i32 1) #5, !dbg !634
  %69 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %68, i64 0, i32 1, !dbg !634
  %70 = load i32, i32* %69, align 8, !dbg !634, !tbaa !423
  %71 = icmp eq i32 %70, 0, !dbg !634
  br i1 %71, label %72, label %77, !dbg !636

; <label>:72:                                     ; preds = %67
  call void @luaG_typeerror(%struct.lua_State* %0, %struct.lua_TValue* nonnull %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !637
  br label %73, !dbg !637

; <label>:73:                                     ; preds = %72, %41
  %74 = phi i32* [ %69, %72 ], [ %42, %41 ]
  %75 = phi %struct.lua_TValue* [ %68, %72 ], [ %39, %41 ]
  %76 = load i32, i32* %74, align 8, !dbg !625, !tbaa !423
  br label %77, !dbg !625

; <label>:77:                                     ; preds = %73, %67
  %78 = phi i32 [ %76, %73 ], [ %70, %67 ], !dbg !625
  %79 = phi i32* [ %74, %73 ], [ %69, %67 ], !dbg !625
  %80 = phi %struct.lua_TValue* [ %75, %73 ], [ %68, %67 ], !dbg !638
  %81 = icmp eq i32 %78, 6, !dbg !625
  br i1 %81, label %82, label %127, !dbg !639

; <label>:82:                                     ; preds = %77
  %83 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %14, i64 0, i32 1, !dbg !612
  %84 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !668
  %85 = load %struct.lua_TValue*, %struct.lua_TValue** %84, align 8, !dbg !668, !tbaa !566
  %86 = bitcast %struct.lua_TValue* %80 to i64*, !dbg !668
  %87 = bitcast %struct.lua_TValue* %85 to i64*, !dbg !668
  %88 = load i64, i64* %86, align 8, !dbg !668
  store i64 %88, i64* %87, align 8, !dbg !668
  %89 = load i32, i32* %79, align 8, !dbg !668, !tbaa !423
  %90 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %85, i64 0, i32 1, !dbg !668
  store i32 %89, i32* %90, align 8, !dbg !668, !tbaa !423
  %91 = load %struct.lua_TValue*, %struct.lua_TValue** %84, align 8, !dbg !669, !tbaa !566
  %92 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %91, i64 1, !dbg !669
  %93 = bitcast %struct.lua_TValue* %14 to i64*, !dbg !669
  %94 = bitcast %struct.lua_TValue* %92 to i64*, !dbg !669
  %95 = load i64, i64* %93, align 8, !dbg !669
  store i64 %95, i64* %94, align 8, !dbg !669
  %96 = load i32, i32* %83, align 8, !dbg !669, !tbaa !423
  %97 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %91, i64 1, i32 1, !dbg !669
  store i32 %96, i32* %97, align 8, !dbg !669, !tbaa !423
  %98 = load %struct.lua_TValue*, %struct.lua_TValue** %84, align 8, !dbg !670, !tbaa !566
  %99 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %98, i64 2, !dbg !670
  %100 = bitcast %struct.lua_TValue* %2 to i64*, !dbg !670
  %101 = bitcast %struct.lua_TValue* %99 to i64*, !dbg !670
  %102 = load i64, i64* %100, align 8, !dbg !670
  store i64 %102, i64* %101, align 8, !dbg !670
  %103 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i64 0, i32 1, !dbg !670
  %104 = load i32, i32* %103, align 8, !dbg !670, !tbaa !423
  %105 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %98, i64 2, i32 1, !dbg !670
  store i32 %104, i32* %105, align 8, !dbg !670, !tbaa !423
  %106 = load %struct.lua_TValue*, %struct.lua_TValue** %84, align 8, !dbg !671, !tbaa !566
  %107 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %106, i64 3, !dbg !671
  %108 = bitcast %struct.lua_TValue* %3 to i64*, !dbg !671
  %109 = bitcast %struct.lua_TValue* %107 to i64*, !dbg !671
  %110 = load i64, i64* %108, align 8, !dbg !671
  store i64 %110, i64* %109, align 8, !dbg !671
  %111 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3, i64 0, i32 1, !dbg !671
  %112 = load i32, i32* %111, align 8, !dbg !671, !tbaa !423
  %113 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %106, i64 3, i32 1, !dbg !671
  store i32 %112, i32* %113, align 8, !dbg !671, !tbaa !423
  %114 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 9, !dbg !672
  %115 = bitcast %struct.lua_TValue** %114 to i64*, !dbg !672
  %116 = load i64, i64* %115, align 8, !dbg !672, !tbaa !571
  %117 = bitcast %struct.lua_TValue** %84 to i64*, !dbg !672
  %118 = load i64, i64* %117, align 8, !dbg !672, !tbaa !566
  %119 = sub i64 %116, %118, !dbg !672
  %120 = icmp slt i64 %119, 65, !dbg !672
  %121 = inttoptr i64 %118 to %struct.lua_TValue*, !dbg !674
  br i1 %120, label %122, label %124, !dbg !674

; <label>:122:                                    ; preds = %82
  call void @luaD_growstack(%struct.lua_State* nonnull %0, i32 4) #5, !dbg !672
  %123 = load %struct.lua_TValue*, %struct.lua_TValue** %84, align 8, !dbg !675, !tbaa !566
  br label %124, !dbg !672

; <label>:124:                                    ; preds = %82, %122
  %125 = phi %struct.lua_TValue* [ %121, %82 ], [ %123, %122 ], !dbg !675
  %126 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %125, i64 4, !dbg !675
  store %struct.lua_TValue* %126, %struct.lua_TValue** %84, align 8, !dbg !675, !tbaa !566
  call void @luaD_call(%struct.lua_State* nonnull %0, %struct.lua_TValue* %125, i32 0) #5, !dbg !676
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !677
  br label %133, !dbg !678

; <label>:127:                                    ; preds = %77
  %128 = bitcast %struct.lua_TValue* %80 to i64*, !dbg !679
  %129 = load i64, i64* %128, align 8, !dbg !679
  store i64 %129, i64* %7, align 8, !dbg !679
  store i32 %78, i32* %8, align 8, !dbg !679, !tbaa !423
  %130 = add nuw nsw i32 %15, 1, !dbg !680
  %131 = icmp ult i32 %130, 100, !dbg !681
  br i1 %131, label %12, label %132, !dbg !613, !llvm.loop !682

; <label>:132:                                    ; preds = %127
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0)) #5, !dbg !684
  br label %133, !dbg !685

; <label>:133:                                    ; preds = %43, %66, %54, %61, %124, %132
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #4, !dbg !685
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !685
  ret void, !dbg !685
}

; Function Attrs: noredzone
declare hidden %struct.lua_TValue* @luaH_set(%struct.lua_State*, %struct.Table*, %struct.lua_TValue*) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden void @luaC_barrierback(%struct.lua_State*, %struct.Table*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define hidden i32 @luaV_lessthan(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*) local_unnamed_addr #0 !dbg !686 {
  %4 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1, i64 0, i32 1, !dbg !697
  %5 = load i32, i32* %4, align 8, !dbg !697, !tbaa !423
  %6 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i64 0, i32 1, !dbg !699
  %7 = load i32, i32* %6, align 8, !dbg !699, !tbaa !423
  %8 = icmp eq i32 %5, %7, !dbg !700
  br i1 %8, label %11, label %9, !dbg !701

; <label>:9:                                      ; preds = %3
  %10 = tail call i32 @luaG_ordererror(%struct.lua_State* %0, %struct.lua_TValue* nonnull %1, %struct.lua_TValue* nonnull %2) #5, !dbg !702
  br label %128, !dbg !703

; <label>:11:                                     ; preds = %3
  switch i32 %5, label %54 [
    i32 3, label %12
    i32 4, label %19
  ], !dbg !704

; <label>:12:                                     ; preds = %11
  %13 = bitcast %struct.lua_TValue* %1 to double*, !dbg !705
  %14 = load double, double* %13, align 8, !dbg !705, !tbaa !430
  %15 = bitcast %struct.lua_TValue* %2 to double*, !dbg !705
  %16 = load double, double* %15, align 8, !dbg !705, !tbaa !430
  %17 = fcmp olt double %14, %16, !dbg !705
  %18 = zext i1 %17 to i32, !dbg !705
  br label %128, !dbg !707

; <label>:19:                                     ; preds = %11
  %20 = bitcast %struct.lua_TValue* %1 to %union.TString**, !dbg !708
  %21 = load %union.TString*, %union.TString** %20, align 8, !dbg !708, !tbaa !430
  %22 = bitcast %struct.lua_TValue* %2 to %union.TString**, !dbg !710
  %23 = load %union.TString*, %union.TString** %22, align 8, !dbg !710, !tbaa !430
  %24 = getelementptr inbounds %union.TString, %union.TString* %21, i64 1, !dbg !733
  %25 = bitcast %union.TString* %24 to i8*, !dbg !733
  %26 = getelementptr inbounds %union.TString, %union.TString* %21, i64 0, i32 0, i32 5, !dbg !735
  %27 = load i64, i64* %26, align 8, !dbg !735, !tbaa !430
  %28 = getelementptr inbounds %union.TString, %union.TString* %23, i64 1, !dbg !737
  %29 = bitcast %union.TString* %28 to i8*, !dbg !737
  %30 = getelementptr inbounds %union.TString, %union.TString* %23, i64 0, i32 0, i32 5, !dbg !739
  %31 = load i64, i64* %30, align 8, !dbg !739, !tbaa !430
  %32 = tail call i32 @strcoll(i8* nonnull %25, i8* nonnull %29) #5, !dbg !741
  %33 = icmp eq i32 %32, 0, !dbg !743
  br i1 %33, label %34, label %51, !dbg !744

; <label>:34:                                     ; preds = %19, %43
  %35 = phi i64 [ %48, %43 ], [ %31, %19 ]
  %36 = phi i8* [ %47, %43 ], [ %29, %19 ]
  %37 = phi i64 [ %46, %43 ], [ %27, %19 ]
  %38 = phi i8* [ %45, %43 ], [ %25, %19 ]
  %39 = tail call i64 @strlen(i8* %38) #5, !dbg !745
  %40 = icmp eq i64 %39, %35, !dbg !747
  br i1 %40, label %51, label %41, !dbg !749

; <label>:41:                                     ; preds = %34
  %42 = icmp eq i64 %39, %37, !dbg !750
  br i1 %42, label %51, label %43, !dbg !752

; <label>:43:                                     ; preds = %41
  %44 = add i64 %39, 1, !dbg !753
  %45 = getelementptr inbounds i8, i8* %38, i64 %44, !dbg !754
  %46 = sub i64 %37, %44, !dbg !755
  %47 = getelementptr inbounds i8, i8* %36, i64 %44, !dbg !756
  %48 = sub i64 %35, %44, !dbg !757
  %49 = tail call i32 @strcoll(i8* %45, i8* %47) #5, !dbg !741
  %50 = icmp eq i32 %49, 0, !dbg !743
  br i1 %50, label %34, label %51, !dbg !744

; <label>:51:                                     ; preds = %41, %43, %34, %19
  %52 = phi i32 [ %32, %19 ], [ -1, %41 ], [ %49, %43 ], [ 0, %34 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !758
  %53 = lshr i32 %52, 31, !dbg !759
  br label %128, !dbg !760

; <label>:54:                                     ; preds = %11
  %55 = tail call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* %0, %struct.lua_TValue* nonnull %1, i32 13) #5, !dbg !778
  %56 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %55, i64 0, i32 1, !dbg !780
  %57 = load i32, i32* %56, align 8, !dbg !780, !tbaa !423
  %58 = icmp eq i32 %57, 0, !dbg !780
  br i1 %58, label %126, label %59, !dbg !782

; <label>:59:                                     ; preds = %54
  %60 = tail call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* %0, %struct.lua_TValue* nonnull %2, i32 13) #5, !dbg !783
  %61 = tail call i32 @luaO_rawequalObj(%struct.lua_TValue* %55, %struct.lua_TValue* %60) #5, !dbg !785
  %62 = icmp eq i32 %61, 0, !dbg !785
  br i1 %62, label %126, label %63, !dbg !787

; <label>:63:                                     ; preds = %59
  %64 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !788
  %65 = load %struct.lua_TValue*, %struct.lua_TValue** %64, align 8, !dbg !788, !tbaa !566
  %66 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 10, !dbg !795
  %67 = bitcast %struct.lua_TValue** %66 to i64*, !dbg !795
  %68 = load i64, i64* %67, align 8, !dbg !795, !tbaa !563
  %69 = ptrtoint %struct.lua_TValue* %65 to i64, !dbg !795
  %70 = sub i64 %69, %68, !dbg !795
  %71 = bitcast %struct.lua_TValue* %55 to i64*, !dbg !797
  %72 = bitcast %struct.lua_TValue* %65 to i64*, !dbg !797
  %73 = load i64, i64* %71, align 8, !dbg !797
  store i64 %73, i64* %72, align 8, !dbg !797
  %74 = load i32, i32* %56, align 8, !dbg !797, !tbaa !423
  %75 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %65, i64 0, i32 1, !dbg !797
  store i32 %74, i32* %75, align 8, !dbg !797, !tbaa !423
  %76 = load %struct.lua_TValue*, %struct.lua_TValue** %64, align 8, !dbg !798, !tbaa !566
  %77 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %76, i64 1, !dbg !798
  %78 = bitcast %struct.lua_TValue* %1 to i64*, !dbg !798
  %79 = bitcast %struct.lua_TValue* %77 to i64*, !dbg !798
  %80 = load i64, i64* %78, align 8, !dbg !798
  store i64 %80, i64* %79, align 8, !dbg !798
  %81 = load i32, i32* %4, align 8, !dbg !798, !tbaa !423
  %82 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %76, i64 1, i32 1, !dbg !798
  store i32 %81, i32* %82, align 8, !dbg !798, !tbaa !423
  %83 = load %struct.lua_TValue*, %struct.lua_TValue** %64, align 8, !dbg !799, !tbaa !566
  %84 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %83, i64 2, !dbg !799
  %85 = bitcast %struct.lua_TValue* %2 to i64*, !dbg !799
  %86 = bitcast %struct.lua_TValue* %84 to i64*, !dbg !799
  %87 = load i64, i64* %85, align 8, !dbg !799
  store i64 %87, i64* %86, align 8, !dbg !799
  %88 = load i32, i32* %6, align 8, !dbg !799, !tbaa !423
  %89 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %83, i64 2, i32 1, !dbg !799
  store i32 %88, i32* %89, align 8, !dbg !799, !tbaa !423
  %90 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 9, !dbg !800
  %91 = bitcast %struct.lua_TValue** %90 to i64*, !dbg !800
  %92 = load i64, i64* %91, align 8, !dbg !800, !tbaa !571
  %93 = bitcast %struct.lua_TValue** %64 to i64*, !dbg !800
  %94 = load i64, i64* %93, align 8, !dbg !800, !tbaa !566
  %95 = sub i64 %92, %94, !dbg !800
  %96 = icmp slt i64 %95, 49, !dbg !800
  %97 = inttoptr i64 %94 to %struct.lua_TValue*, !dbg !801
  br i1 %96, label %98, label %100, !dbg !801

; <label>:98:                                     ; preds = %63
  tail call void @luaD_growstack(%struct.lua_State* nonnull %0, i32 3) #5, !dbg !800
  %99 = load %struct.lua_TValue*, %struct.lua_TValue** %64, align 8, !dbg !802, !tbaa !566
  br label %100, !dbg !800

; <label>:100:                                    ; preds = %63, %98
  %101 = phi %struct.lua_TValue* [ %97, %63 ], [ %99, %98 ], !dbg !802
  %102 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %101, i64 3, !dbg !802
  store %struct.lua_TValue* %102, %struct.lua_TValue** %64, align 8, !dbg !802, !tbaa !566
  tail call void @luaD_call(%struct.lua_State* nonnull %0, %struct.lua_TValue* %101, i32 1) #5, !dbg !803
  %103 = bitcast %struct.lua_TValue** %66 to i8**, !dbg !804
  %104 = load i8*, i8** %103, align 8, !dbg !804, !tbaa !563
  %105 = getelementptr inbounds i8, i8* %104, i64 %70, !dbg !804
  %106 = load %struct.lua_TValue*, %struct.lua_TValue** %64, align 8, !dbg !805, !tbaa !566
  %107 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %106, i64 -1, !dbg !805
  store %struct.lua_TValue* %107, %struct.lua_TValue** %64, align 8, !dbg !805, !tbaa !566
  %108 = bitcast %struct.lua_TValue* %107 to i64*, !dbg !806
  %109 = bitcast i8* %105 to i64*, !dbg !806
  %110 = load i64, i64* %108, align 8, !dbg !806
  store i64 %110, i64* %109, align 8, !dbg !806
  %111 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %106, i64 -1, i32 1, !dbg !806
  %112 = load i32, i32* %111, align 8, !dbg !806, !tbaa !423
  %113 = getelementptr inbounds i8, i8* %105, i64 8, !dbg !806
  %114 = bitcast i8* %113 to i32*, !dbg !806
  store i32 %112, i32* %114, align 8, !dbg !806, !tbaa !423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !807
  %115 = load %struct.lua_TValue*, %struct.lua_TValue** %64, align 8, !dbg !808, !tbaa !566
  %116 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %115, i64 0, i32 1, !dbg !808
  %117 = load i32, i32* %116, align 8, !dbg !808, !tbaa !423
  switch i32 %117, label %123 [
    i32 0, label %124
    i32 1, label %118
  ], !dbg !808

; <label>:118:                                    ; preds = %100
  %119 = bitcast %struct.lua_TValue* %115 to i32*, !dbg !808
  %120 = load i32, i32* %119, align 8, !dbg !808, !tbaa !430
  %121 = icmp ne i32 %120, 0, !dbg !808
  %122 = zext i1 %121 to i32
  br label %124

; <label>:123:                                    ; preds = %100
  br label %124, !dbg !809

; <label>:124:                                    ; preds = %100, %118, %123
  %125 = phi i32 [ 1, %123 ], [ %122, %118 ], [ %117, %100 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !810
  br label %128, !dbg !812

; <label>:126:                                    ; preds = %59, %54
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !810
  %127 = tail call i32 @luaG_ordererror(%struct.lua_State* %0, %struct.lua_TValue* nonnull %1, %struct.lua_TValue* nonnull %2) #5, !dbg !813
  br label %128, !dbg !814

; <label>:128:                                    ; preds = %124, %126, %51, %12, %9
  %129 = phi i32 [ %10, %9 ], [ %18, %12 ], [ %53, %51 ], [ %127, %126 ], [ %125, %124 ], !dbg !815
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !816
  ret i32 %129, !dbg !816
}

; Function Attrs: noredzone
declare hidden i32 @luaG_ordererror(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define hidden i32 @luaV_equalval(%struct.lua_State*, %struct.lua_TValue* nocapture readonly, %struct.lua_TValue* nocapture readonly) local_unnamed_addr #0 !dbg !817 {
  %4 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1, i64 0, i32 1, !dbg !826
  %5 = load i32, i32* %4, align 8, !dbg !826, !tbaa !423
  switch i32 %5, label %110 [
    i32 0, label %181
    i32 3, label %6
    i32 1, label %12
    i32 2, label %18
    i32 7, label %24
    i32 5, label %67
  ], !dbg !827

; <label>:6:                                      ; preds = %3
  %7 = bitcast %struct.lua_TValue* %1 to double*, !dbg !828
  %8 = load double, double* %7, align 8, !dbg !828, !tbaa !430
  %9 = bitcast %struct.lua_TValue* %2 to double*, !dbg !828
  %10 = load double, double* %9, align 8, !dbg !828, !tbaa !430
  %11 = fcmp oeq double %8, %10, !dbg !828
  br label %181, !dbg !830

; <label>:12:                                     ; preds = %3
  %13 = bitcast %struct.lua_TValue* %1 to i32*, !dbg !831
  %14 = load i32, i32* %13, align 8, !dbg !831, !tbaa !430
  %15 = bitcast %struct.lua_TValue* %2 to i32*, !dbg !832
  %16 = load i32, i32* %15, align 8, !dbg !832, !tbaa !430
  %17 = icmp eq i32 %14, %16, !dbg !833
  br label %181, !dbg !834

; <label>:18:                                     ; preds = %3
  %19 = bitcast %struct.lua_TValue* %1 to i8**, !dbg !835
  %20 = load i8*, i8** %19, align 8, !dbg !835, !tbaa !430
  %21 = bitcast %struct.lua_TValue* %2 to i8**, !dbg !836
  %22 = load i8*, i8** %21, align 8, !dbg !836, !tbaa !430
  %23 = icmp eq i8* %20, %22, !dbg !837
  br label %181, !dbg !838

; <label>:24:                                     ; preds = %3
  %25 = bitcast %struct.lua_TValue* %1 to %struct.anon.0**, !dbg !839
  %26 = load %struct.anon.0*, %struct.anon.0** %25, align 8, !dbg !839, !tbaa !430
  %27 = bitcast %struct.lua_TValue* %2 to %struct.anon.0**, !dbg !842
  %28 = load %struct.anon.0*, %struct.anon.0** %27, align 8, !dbg !842, !tbaa !430
  %29 = icmp eq %struct.anon.0* %26, %28, !dbg !843
  br i1 %29, label %181, label %30, !dbg !844

; <label>:30:                                     ; preds = %24
  %31 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %26, i64 0, i32 3, !dbg !845
  %32 = load %struct.Table*, %struct.Table** %31, align 8, !dbg !845, !tbaa !430
  %33 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %28, i64 0, i32 3, !dbg !846
  %34 = load %struct.Table*, %struct.Table** %33, align 8, !dbg !846, !tbaa !430
  %35 = icmp eq %struct.Table* %32, null, !dbg !862
  br i1 %35, label %116, label %36, !dbg !862

; <label>:36:                                     ; preds = %30
  %37 = getelementptr inbounds %struct.Table, %struct.Table* %32, i64 0, i32 3, !dbg !862
  %38 = load i8, i8* %37, align 2, !dbg !862, !tbaa !514
  %39 = and i8 %38, 16, !dbg !862
  %40 = icmp eq i8 %39, 0, !dbg !862
  br i1 %40, label %41, label %116, !dbg !862

; <label>:41:                                     ; preds = %36
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !862
  %43 = load %struct.global_State*, %struct.global_State** %42, align 8, !dbg !862, !tbaa !515
  %44 = getelementptr inbounds %struct.global_State, %struct.global_State* %43, i64 0, i32 24, i64 4, !dbg !862
  %45 = load %union.TString*, %union.TString** %44, align 8, !dbg !862, !tbaa !519
  %46 = tail call %struct.lua_TValue* @luaT_gettm(%struct.Table* nonnull %32, i32 4, %union.TString* %45) #5, !dbg !862
  %47 = icmp eq %struct.lua_TValue* %46, null, !dbg !864
  br i1 %47, label %116, label %48, !dbg !866

; <label>:48:                                     ; preds = %41
  %49 = icmp eq %struct.Table* %32, %34, !dbg !867
  br i1 %49, label %116, label %50, !dbg !869

; <label>:50:                                     ; preds = %48
  %51 = icmp eq %struct.Table* %34, null, !dbg !870
  br i1 %51, label %116, label %52, !dbg !870

; <label>:52:                                     ; preds = %50
  %53 = getelementptr inbounds %struct.Table, %struct.Table* %34, i64 0, i32 3, !dbg !870
  %54 = load i8, i8* %53, align 2, !dbg !870, !tbaa !514
  %55 = and i8 %54, 16, !dbg !870
  %56 = icmp eq i8 %55, 0, !dbg !870
  br i1 %56, label %57, label %116, !dbg !870

; <label>:57:                                     ; preds = %52
  %58 = load %struct.global_State*, %struct.global_State** %42, align 8, !dbg !870, !tbaa !515
  %59 = getelementptr inbounds %struct.global_State, %struct.global_State* %58, i64 0, i32 24, i64 4, !dbg !870
  %60 = load %union.TString*, %union.TString** %59, align 8, !dbg !870, !tbaa !519
  %61 = tail call %struct.lua_TValue* @luaT_gettm(%struct.Table* nonnull %34, i32 4, %union.TString* %60) #5, !dbg !870
  %62 = icmp eq %struct.lua_TValue* %61, null, !dbg !872
  br i1 %62, label %116, label %63, !dbg !874

; <label>:63:                                     ; preds = %57
  %64 = tail call i32 @luaO_rawequalObj(%struct.lua_TValue* nonnull %46, %struct.lua_TValue* nonnull %61) #5, !dbg !875
  %65 = icmp eq i32 %64, 0, !dbg !875
  %66 = select i1 %65, %struct.lua_TValue* null, %struct.lua_TValue* %46, !dbg !877
  br label %116, !dbg !877

; <label>:67:                                     ; preds = %3
  %68 = bitcast %struct.lua_TValue* %1 to %struct.Table**, !dbg !878
  %69 = load %struct.Table*, %struct.Table** %68, align 8, !dbg !878, !tbaa !430
  %70 = bitcast %struct.lua_TValue* %2 to %struct.Table**, !dbg !881
  %71 = load %struct.Table*, %struct.Table** %70, align 8, !dbg !881, !tbaa !430
  %72 = icmp eq %struct.Table* %69, %71, !dbg !882
  br i1 %72, label %181, label %73, !dbg !883

; <label>:73:                                     ; preds = %67
  %74 = getelementptr inbounds %struct.Table, %struct.Table* %69, i64 0, i32 5, !dbg !884
  %75 = load %struct.Table*, %struct.Table** %74, align 8, !dbg !884, !tbaa !430
  %76 = getelementptr inbounds %struct.Table, %struct.Table* %71, i64 0, i32 5, !dbg !885
  %77 = load %struct.Table*, %struct.Table** %76, align 8, !dbg !885, !tbaa !430
  %78 = icmp eq %struct.Table* %75, null, !dbg !891
  br i1 %78, label %116, label %79, !dbg !891

; <label>:79:                                     ; preds = %73
  %80 = getelementptr inbounds %struct.Table, %struct.Table* %75, i64 0, i32 3, !dbg !891
  %81 = load i8, i8* %80, align 2, !dbg !891, !tbaa !514
  %82 = and i8 %81, 16, !dbg !891
  %83 = icmp eq i8 %82, 0, !dbg !891
  br i1 %83, label %84, label %116, !dbg !891

; <label>:84:                                     ; preds = %79
  %85 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !891
  %86 = load %struct.global_State*, %struct.global_State** %85, align 8, !dbg !891, !tbaa !515
  %87 = getelementptr inbounds %struct.global_State, %struct.global_State* %86, i64 0, i32 24, i64 4, !dbg !891
  %88 = load %union.TString*, %union.TString** %87, align 8, !dbg !891, !tbaa !519
  %89 = tail call %struct.lua_TValue* @luaT_gettm(%struct.Table* nonnull %75, i32 4, %union.TString* %88) #5, !dbg !891
  %90 = icmp eq %struct.lua_TValue* %89, null, !dbg !893
  br i1 %90, label %116, label %91, !dbg !894

; <label>:91:                                     ; preds = %84
  %92 = icmp eq %struct.Table* %75, %77, !dbg !895
  br i1 %92, label %116, label %93, !dbg !896

; <label>:93:                                     ; preds = %91
  %94 = icmp eq %struct.Table* %77, null, !dbg !897
  br i1 %94, label %116, label %95, !dbg !897

; <label>:95:                                     ; preds = %93
  %96 = getelementptr inbounds %struct.Table, %struct.Table* %77, i64 0, i32 3, !dbg !897
  %97 = load i8, i8* %96, align 2, !dbg !897, !tbaa !514
  %98 = and i8 %97, 16, !dbg !897
  %99 = icmp eq i8 %98, 0, !dbg !897
  br i1 %99, label %100, label %116, !dbg !897

; <label>:100:                                    ; preds = %95
  %101 = load %struct.global_State*, %struct.global_State** %85, align 8, !dbg !897, !tbaa !515
  %102 = getelementptr inbounds %struct.global_State, %struct.global_State* %101, i64 0, i32 24, i64 4, !dbg !897
  %103 = load %union.TString*, %union.TString** %102, align 8, !dbg !897, !tbaa !519
  %104 = tail call %struct.lua_TValue* @luaT_gettm(%struct.Table* nonnull %77, i32 4, %union.TString* %103) #5, !dbg !897
  %105 = icmp eq %struct.lua_TValue* %104, null, !dbg !899
  br i1 %105, label %116, label %106, !dbg !900

; <label>:106:                                    ; preds = %100
  %107 = tail call i32 @luaO_rawequalObj(%struct.lua_TValue* nonnull %89, %struct.lua_TValue* nonnull %104) #5, !dbg !901
  %108 = icmp eq i32 %107, 0, !dbg !901
  %109 = select i1 %108, %struct.lua_TValue* null, %struct.lua_TValue* %89, !dbg !902
  br label %116, !dbg !902

; <label>:110:                                    ; preds = %3
  %111 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1, i64 0, i32 0, i32 0, !dbg !903
  %112 = load %union.GCObject*, %union.GCObject** %111, align 8, !dbg !903, !tbaa !430
  %113 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i64 0, i32 0, i32 0, !dbg !904
  %114 = load %union.GCObject*, %union.GCObject** %113, align 8, !dbg !904, !tbaa !430
  %115 = icmp eq %union.GCObject* %112, %114, !dbg !905
  br label %181, !dbg !906

; <label>:116:                                    ; preds = %106, %100, %95, %93, %91, %84, %79, %73, %63, %57, %52, %50, %48, %41, %36, %30
  %117 = phi %struct.lua_TValue* [ null, %41 ], [ %46, %48 ], [ null, %57 ], [ %66, %63 ], [ null, %30 ], [ null, %36 ], [ null, %50 ], [ null, %52 ], [ null, %84 ], [ %89, %91 ], [ null, %100 ], [ %109, %106 ], [ null, %73 ], [ null, %79 ], [ null, %93 ], [ null, %95 ], !dbg !907
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !908
  %118 = icmp eq %struct.lua_TValue* %117, null, !dbg !910
  br i1 %118, label %181, label %119, !dbg !912

; <label>:119:                                    ; preds = %116
  %120 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !913
  %121 = load %struct.lua_TValue*, %struct.lua_TValue** %120, align 8, !dbg !913, !tbaa !566
  %122 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 10, !dbg !920
  %123 = bitcast %struct.lua_TValue** %122 to i64*, !dbg !920
  %124 = load i64, i64* %123, align 8, !dbg !920, !tbaa !563
  %125 = ptrtoint %struct.lua_TValue* %121 to i64, !dbg !920
  %126 = sub i64 %125, %124, !dbg !920
  %127 = bitcast %struct.lua_TValue* %117 to i64*, !dbg !922
  %128 = bitcast %struct.lua_TValue* %121 to i64*, !dbg !922
  %129 = load i64, i64* %127, align 8, !dbg !922
  store i64 %129, i64* %128, align 8, !dbg !922
  %130 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %117, i64 0, i32 1, !dbg !922
  %131 = load i32, i32* %130, align 8, !dbg !922, !tbaa !423
  %132 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %121, i64 0, i32 1, !dbg !922
  store i32 %131, i32* %132, align 8, !dbg !922, !tbaa !423
  %133 = load %struct.lua_TValue*, %struct.lua_TValue** %120, align 8, !dbg !923, !tbaa !566
  %134 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %133, i64 1, !dbg !923
  %135 = bitcast %struct.lua_TValue* %1 to i64*, !dbg !923
  %136 = bitcast %struct.lua_TValue* %134 to i64*, !dbg !923
  %137 = load i64, i64* %135, align 8, !dbg !923
  store i64 %137, i64* %136, align 8, !dbg !923
  %138 = load i32, i32* %4, align 8, !dbg !923, !tbaa !423
  %139 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %133, i64 1, i32 1, !dbg !923
  store i32 %138, i32* %139, align 8, !dbg !923, !tbaa !423
  %140 = load %struct.lua_TValue*, %struct.lua_TValue** %120, align 8, !dbg !924, !tbaa !566
  %141 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %140, i64 2, !dbg !924
  %142 = bitcast %struct.lua_TValue* %2 to i64*, !dbg !924
  %143 = bitcast %struct.lua_TValue* %141 to i64*, !dbg !924
  %144 = load i64, i64* %142, align 8, !dbg !924
  store i64 %144, i64* %143, align 8, !dbg !924
  %145 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i64 0, i32 1, !dbg !924
  %146 = load i32, i32* %145, align 8, !dbg !924, !tbaa !423
  %147 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %140, i64 2, i32 1, !dbg !924
  store i32 %146, i32* %147, align 8, !dbg !924, !tbaa !423
  %148 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 9, !dbg !925
  %149 = bitcast %struct.lua_TValue** %148 to i64*, !dbg !925
  %150 = load i64, i64* %149, align 8, !dbg !925, !tbaa !571
  %151 = bitcast %struct.lua_TValue** %120 to i64*, !dbg !925
  %152 = load i64, i64* %151, align 8, !dbg !925, !tbaa !566
  %153 = sub i64 %150, %152, !dbg !925
  %154 = icmp slt i64 %153, 49, !dbg !925
  %155 = inttoptr i64 %152 to %struct.lua_TValue*, !dbg !926
  br i1 %154, label %156, label %158, !dbg !926

; <label>:156:                                    ; preds = %119
  tail call void @luaD_growstack(%struct.lua_State* nonnull %0, i32 3) #5, !dbg !925
  %157 = load %struct.lua_TValue*, %struct.lua_TValue** %120, align 8, !dbg !927, !tbaa !566
  br label %158, !dbg !925

; <label>:158:                                    ; preds = %119, %156
  %159 = phi %struct.lua_TValue* [ %155, %119 ], [ %157, %156 ], !dbg !927
  %160 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %159, i64 3, !dbg !927
  store %struct.lua_TValue* %160, %struct.lua_TValue** %120, align 8, !dbg !927, !tbaa !566
  tail call void @luaD_call(%struct.lua_State* nonnull %0, %struct.lua_TValue* %159, i32 1) #5, !dbg !928
  %161 = bitcast %struct.lua_TValue** %122 to i8**, !dbg !929
  %162 = load i8*, i8** %161, align 8, !dbg !929, !tbaa !563
  %163 = getelementptr inbounds i8, i8* %162, i64 %126, !dbg !929
  %164 = load %struct.lua_TValue*, %struct.lua_TValue** %120, align 8, !dbg !930, !tbaa !566
  %165 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %164, i64 -1, !dbg !930
  store %struct.lua_TValue* %165, %struct.lua_TValue** %120, align 8, !dbg !930, !tbaa !566
  %166 = bitcast %struct.lua_TValue* %165 to i64*, !dbg !931
  %167 = bitcast i8* %163 to i64*, !dbg !931
  %168 = load i64, i64* %166, align 8, !dbg !931
  store i64 %168, i64* %167, align 8, !dbg !931
  %169 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %164, i64 -1, i32 1, !dbg !931
  %170 = load i32, i32* %169, align 8, !dbg !931, !tbaa !423
  %171 = getelementptr inbounds i8, i8* %163, i64 8, !dbg !931
  %172 = bitcast i8* %171 to i32*, !dbg !931
  store i32 %170, i32* %172, align 8, !dbg !931, !tbaa !423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !932
  %173 = load %struct.lua_TValue*, %struct.lua_TValue** %120, align 8, !dbg !933, !tbaa !566
  %174 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %173, i64 0, i32 1, !dbg !933
  %175 = load i32, i32* %174, align 8, !dbg !933, !tbaa !423
  switch i32 %175, label %180 [
    i32 0, label %181
    i32 1, label %176
  ], !dbg !933

; <label>:176:                                    ; preds = %158
  %177 = bitcast %struct.lua_TValue* %173 to i32*, !dbg !933
  %178 = load i32, i32* %177, align 8, !dbg !933, !tbaa !430
  %179 = icmp ne i32 %178, 0, !dbg !933
  br label %181

; <label>:180:                                    ; preds = %158
  br label %181, !dbg !934

; <label>:181:                                    ; preds = %176, %180, %158, %116, %67, %24, %3, %110, %18, %12, %6
  %182 = phi i1 [ %115, %110 ], [ %23, %18 ], [ %17, %12 ], [ %11, %6 ], [ true, %3 ], [ true, %24 ], [ true, %67 ], [ false, %116 ], [ false, %158 ], [ %179, %176 ], [ true, %180 ]
  %183 = zext i1 %182 to i32, !dbg !935
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !936
  ret i32 %183, !dbg !936
}

; Function Attrs: noredzone nounwind
define hidden void @luaV_concat(%struct.lua_State*, i32, i32) local_unnamed_addr #0 !dbg !937 {
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
  br label %15, !dbg !972

; <label>:15:                                     ; preds = %179, %3
  %16 = phi i32 [ %2, %3 ], [ %183, %179 ]
  %17 = phi i32 [ %1, %3 ], [ %182, %179 ]
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8, !dbg !973, !tbaa !974
  %19 = sext i32 %16 to i64, !dbg !975
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 1, !dbg !975
  %21 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %20, i64 %19, !dbg !976
  %22 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %21, i64 -2, !dbg !979
  %23 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %22, i64 0, i32 1, !dbg !979
  %24 = load i32, i32* %23, align 8, !dbg !979, !tbaa !423
  %25 = add i32 %24, -3, !dbg !980
  %26 = icmp ult i32 %25, 2, !dbg !980
  %27 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %21, i64 -1, !dbg !981
  br i1 %26, label %28, label %39, !dbg !980

; <label>:28:                                     ; preds = %15
  %29 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %27, i64 0, i32 1, !dbg !984
  %30 = load i32, i32* %29, align 8, !dbg !984, !tbaa !423
  switch i32 %30, label %31 [
    i32 4, label %99
    i32 3, label %32
  ], !dbg !984

; <label>:31:                                     ; preds = %28
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !985
  br label %39, !dbg !986

; <label>:32:                                     ; preds = %28
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #4, !dbg !987
  %33 = bitcast %struct.lua_TValue* %27 to double*, !dbg !988
  %34 = load double, double* %33, align 8, !dbg !988, !tbaa !430
  %35 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), double %34) #5, !dbg !990
  %36 = call i64 @strlen(i8* nonnull %6) #5, !dbg !991
  %37 = call %union.TString* @luaS_newlstr(%struct.lua_State* nonnull %0, i8* nonnull %6, i64 %36) #5, !dbg !991
  %38 = bitcast %struct.lua_TValue* %27 to %union.TString**, !dbg !991
  store %union.TString* %37, %union.TString** %38, align 8, !dbg !991, !tbaa !430
  store i32 4, i32* %29, align 8, !dbg !991, !tbaa !423
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #4, !dbg !992
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !985
  br label %99, !dbg !986

; <label>:39:                                     ; preds = %15, %31
  %40 = call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* %0, %struct.lua_TValue* nonnull %22, i32 15) #5, !dbg !1009
  %41 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %40, i64 0, i32 1, !dbg !1011
  %42 = load i32, i32* %41, align 8, !dbg !1011, !tbaa !423
  %43 = icmp eq i32 %42, 0, !dbg !1011
  br i1 %43, label %44, label %49, !dbg !1013

; <label>:44:                                     ; preds = %39
  %45 = call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* %0, %struct.lua_TValue* nonnull %27, i32 15) #5, !dbg !1014
  %46 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %45, i64 0, i32 1
  %47 = load i32, i32* %46, align 8, !dbg !1015, !tbaa !423
  %48 = icmp eq i32 %47, 0, !dbg !1015
  br i1 %48, label %98, label %49, !dbg !1017

; <label>:49:                                     ; preds = %44, %39
  %50 = phi i32* [ %46, %44 ], [ %41, %39 ], !dbg !1018
  %51 = phi %struct.lua_TValue* [ %45, %44 ], [ %40, %39 ]
  %52 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %21, i64 -1, !dbg !1020
  %53 = load i64, i64* %8, align 8, !dbg !1026, !tbaa !563
  %54 = ptrtoint %struct.lua_TValue* %22 to i64, !dbg !1026
  %55 = sub i64 %54, %53, !dbg !1026
  %56 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8, !dbg !1018, !tbaa !566
  %57 = bitcast %struct.lua_TValue* %51 to i64*, !dbg !1018
  %58 = bitcast %struct.lua_TValue* %56 to i64*, !dbg !1018
  %59 = load i64, i64* %57, align 8, !dbg !1018
  store i64 %59, i64* %58, align 8, !dbg !1018
  %60 = load i32, i32* %50, align 8, !dbg !1018, !tbaa !423
  %61 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %56, i64 0, i32 1, !dbg !1018
  store i32 %60, i32* %61, align 8, !dbg !1018, !tbaa !423
  %62 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8, !dbg !1028, !tbaa !566
  %63 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %62, i64 1, !dbg !1028
  %64 = bitcast %struct.lua_TValue* %22 to i64*, !dbg !1028
  %65 = bitcast %struct.lua_TValue* %63 to i64*, !dbg !1028
  %66 = load i64, i64* %64, align 8, !dbg !1028
  store i64 %66, i64* %65, align 8, !dbg !1028
  %67 = load i32, i32* %23, align 8, !dbg !1028, !tbaa !423
  %68 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %62, i64 1, i32 1, !dbg !1028
  store i32 %67, i32* %68, align 8, !dbg !1028, !tbaa !423
  %69 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8, !dbg !1029, !tbaa !566
  %70 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %69, i64 2, !dbg !1029
  %71 = bitcast %struct.lua_TValue* %27 to i64*, !dbg !1029
  %72 = bitcast %struct.lua_TValue* %70 to i64*, !dbg !1029
  %73 = load i64, i64* %71, align 8, !dbg !1029
  store i64 %73, i64* %72, align 8, !dbg !1029
  %74 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %52, i64 0, i32 1, !dbg !1029
  %75 = load i32, i32* %74, align 8, !dbg !1029, !tbaa !423
  %76 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %69, i64 2, i32 1, !dbg !1029
  store i32 %75, i32* %76, align 8, !dbg !1029, !tbaa !423
  %77 = load i64, i64* %11, align 8, !dbg !1030, !tbaa !571
  %78 = load i64, i64* %12, align 8, !dbg !1030, !tbaa !566
  %79 = sub i64 %77, %78, !dbg !1030
  %80 = icmp slt i64 %79, 49, !dbg !1030
  %81 = inttoptr i64 %78 to %struct.lua_TValue*, !dbg !1031
  br i1 %80, label %82, label %84, !dbg !1031

; <label>:82:                                     ; preds = %49
  call void @luaD_growstack(%struct.lua_State* nonnull %0, i32 3) #5, !dbg !1030
  %83 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8, !dbg !1032, !tbaa !566
  br label %84, !dbg !1030

; <label>:84:                                     ; preds = %82, %49
  %85 = phi %struct.lua_TValue* [ %81, %49 ], [ %83, %82 ], !dbg !1032
  %86 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %85, i64 3, !dbg !1032
  store %struct.lua_TValue* %86, %struct.lua_TValue** %9, align 8, !dbg !1032, !tbaa !566
  call void @luaD_call(%struct.lua_State* nonnull %0, %struct.lua_TValue* %85, i32 1) #5, !dbg !1033
  %87 = load i8*, i8** %13, align 8, !dbg !1034, !tbaa !563
  %88 = getelementptr inbounds i8, i8* %87, i64 %55, !dbg !1034
  %89 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8, !dbg !1035, !tbaa !566
  %90 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %89, i64 -1, !dbg !1035
  store %struct.lua_TValue* %90, %struct.lua_TValue** %9, align 8, !dbg !1035, !tbaa !566
  %91 = bitcast %struct.lua_TValue* %90 to i64*, !dbg !1036
  %92 = bitcast i8* %88 to i64*, !dbg !1036
  %93 = load i64, i64* %91, align 8, !dbg !1036
  store i64 %93, i64* %92, align 8, !dbg !1036
  %94 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %89, i64 -1, i32 1, !dbg !1036
  %95 = load i32, i32* %94, align 8, !dbg !1036, !tbaa !423
  %96 = getelementptr inbounds i8, i8* %88, i64 8, !dbg !1036
  %97 = bitcast i8* %96 to i32*, !dbg !1036
  store i32 %95, i32* %97, align 8, !dbg !1036, !tbaa !423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1037
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1038
  br label %179, !dbg !1039

; <label>:98:                                     ; preds = %44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1038
  call void @luaG_concaterror(%struct.lua_State* %0, %struct.lua_TValue* nonnull %22, %struct.lua_TValue* nonnull %27) #5, !dbg !1040
  br label %179, !dbg !1040

; <label>:99:                                     ; preds = %28, %32
  %100 = bitcast %struct.lua_TValue* %27 to %struct.anon**, !dbg !1041
  %101 = load %struct.anon*, %struct.anon** %100, align 8, !dbg !1041, !tbaa !430
  %102 = getelementptr inbounds %struct.anon, %struct.anon* %101, i64 0, i32 5, !dbg !1042
  %103 = load i64, i64* %102, align 8, !dbg !1042, !tbaa !430
  %104 = icmp eq i64 %103, 0, !dbg !1043
  br i1 %104, label %109, label %105, !dbg !1044

; <label>:105:                                    ; preds = %99
  %106 = icmp sgt i32 %17, 1, !dbg !1046
  br i1 %106, label %107, label %149, !dbg !1047

; <label>:107:                                    ; preds = %105
  %108 = sext i32 %17 to i64, !dbg !1048
  br label %119, !dbg !1048

; <label>:109:                                    ; preds = %99
  %110 = load i32, i32* %23, align 8, !dbg !1049, !tbaa !423
  switch i32 %110, label %118 [
    i32 4, label %179
    i32 3, label %111
  ], !dbg !1049

; <label>:111:                                    ; preds = %109
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #4, !dbg !1050
  %112 = bitcast %struct.lua_TValue* %22 to double*, !dbg !1051
  %113 = load double, double* %112, align 8, !dbg !1051, !tbaa !430
  %114 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), double %113) #5, !dbg !1053
  %115 = call i64 @strlen(i8* nonnull %6) #5, !dbg !1054
  %116 = call %union.TString* @luaS_newlstr(%struct.lua_State* nonnull %0, i8* nonnull %6, i64 %115) #5, !dbg !1054
  %117 = bitcast %struct.lua_TValue* %22 to %union.TString**, !dbg !1054
  store %union.TString* %116, %union.TString** %117, align 8, !dbg !1054, !tbaa !430
  store i32 4, i32* %23, align 8, !dbg !1054, !tbaa !423
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #4, !dbg !1055
  br label %118

; <label>:118:                                    ; preds = %109, %111
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1056
  br label %179, !dbg !1049

; <label>:119:                                    ; preds = %107, %143
  %120 = phi i64 [ 1, %107 ], [ %145, %143 ]
  %121 = phi i64 [ %103, %107 ], [ %144, %143 ]
  %122 = sub nsw i64 0, %120, !dbg !1048
  %123 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %27, i64 %122, !dbg !1048
  %124 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %123, i64 0, i32 1, !dbg !1048
  %125 = load i32, i32* %124, align 8, !dbg !1048, !tbaa !423
  switch i32 %125, label %126 [
    i32 4, label %135
    i32 3, label %128
  ], !dbg !1048

; <label>:126:                                    ; preds = %119
  %127 = trunc i64 %120 to i32, !dbg !978
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1057
  br label %149, !dbg !1058

; <label>:128:                                    ; preds = %119
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #4, !dbg !1059
  %129 = bitcast %struct.lua_TValue* %123 to double*, !dbg !1060
  %130 = load double, double* %129, align 8, !dbg !1060, !tbaa !430
  %131 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), double %130) #5, !dbg !1062
  %132 = call i64 @strlen(i8* nonnull %6) #5, !dbg !1063
  %133 = call %union.TString* @luaS_newlstr(%struct.lua_State* %0, i8* nonnull %6, i64 %132) #5, !dbg !1063
  %134 = bitcast %struct.lua_TValue* %123 to %union.TString**, !dbg !1063
  store %union.TString* %133, %union.TString** %134, align 8, !dbg !1063, !tbaa !430
  store i32 4, i32* %124, align 8, !dbg !1063, !tbaa !423
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #4, !dbg !1064
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1057
  br label %135, !dbg !1058

; <label>:135:                                    ; preds = %119, %128
  %136 = bitcast %struct.lua_TValue* %123 to %struct.anon**, !dbg !1065
  %137 = load %struct.anon*, %struct.anon** %136, align 8, !dbg !1065, !tbaa !430
  %138 = getelementptr inbounds %struct.anon, %struct.anon* %137, i64 0, i32 5, !dbg !1066
  %139 = load i64, i64* %138, align 8, !dbg !1066, !tbaa !430
  %140 = sub i64 -3, %121, !dbg !1068
  %141 = icmp ult i64 %139, %140, !dbg !1070
  br i1 %141, label %143, label %142, !dbg !1071

; <label>:142:                                    ; preds = %135
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !1072
  br label %143, !dbg !1072

; <label>:143:                                    ; preds = %135, %142
  %144 = add i64 %139, %121, !dbg !1073
  %145 = add nuw nsw i64 %120, 1, !dbg !1074
  %146 = icmp slt i64 %145, %108, !dbg !1046
  br i1 %146, label %119, label %147, !dbg !1047, !llvm.loop !1075

; <label>:147:                                    ; preds = %143
  %148 = trunc i64 %145 to i32, !dbg !1077
  br label %149, !dbg !1077

; <label>:149:                                    ; preds = %147, %105, %126
  %150 = phi i64 [ %121, %126 ], [ %103, %105 ], [ %144, %147 ]
  %151 = phi i32 [ %127, %126 ], [ 1, %105 ], [ %148, %147 ]
  %152 = load %struct.global_State*, %struct.global_State** %14, align 8, !dbg !1077, !tbaa !515
  %153 = getelementptr inbounds %struct.global_State, %struct.global_State* %152, i64 0, i32 12, !dbg !1078
  %154 = call i8* @luaZ_openspace(%struct.lua_State* %0, %struct.Mbuffer* nonnull %153, i64 %150) #5, !dbg !1079
  %155 = sext i32 %151 to i64, !dbg !1082
  br label %156, !dbg !1082

; <label>:156:                                    ; preds = %149, %156
  %157 = phi i64 [ %155, %149 ], [ %170, %156 ]
  %158 = phi i64 [ 0, %149 ], [ %169, %156 ]
  %159 = sub nsw i64 0, %157, !dbg !1083
  %160 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %21, i64 %159, !dbg !1083
  %161 = bitcast %struct.lua_TValue* %160 to %union.TString**, !dbg !1083
  %162 = load %union.TString*, %union.TString** %161, align 8, !dbg !1083, !tbaa !430
  %163 = getelementptr inbounds %union.TString, %union.TString* %162, i64 0, i32 0, i32 5, !dbg !1084
  %164 = load i64, i64* %163, align 8, !dbg !1084, !tbaa !430
  %165 = getelementptr inbounds i8, i8* %154, i64 %158, !dbg !1086
  %166 = getelementptr inbounds %union.TString, %union.TString* %162, i64 1, !dbg !1087
  %167 = bitcast %union.TString* %166 to i8*, !dbg !1087
  %168 = call i8* @memcpy(i8* %165, i8* nonnull %167, i64 %164) #5, !dbg !1088
  %169 = add i64 %164, %158, !dbg !1089
  %170 = add nsw i64 %157, -1, !dbg !1090
  %171 = icmp sgt i64 %157, 1, !dbg !1091
  br i1 %171, label %156, label %172, !dbg !1082, !llvm.loop !1092

; <label>:172:                                    ; preds = %156
  %173 = zext i32 %151 to i64, !dbg !1094
  %174 = sub nsw i64 0, %173, !dbg !1094
  %175 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %21, i64 %174, !dbg !1094
  %176 = call %union.TString* @luaS_newlstr(%struct.lua_State* %0, i8* %154, i64 %169) #5, !dbg !1094
  %177 = bitcast %struct.lua_TValue* %175 to %union.TString**, !dbg !1094
  store %union.TString* %176, %union.TString** %177, align 8, !dbg !1094, !tbaa !430
  %178 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %175, i64 0, i32 1, !dbg !1094
  store i32 4, i32* %178, align 8, !dbg !1094, !tbaa !423
  br label %179

; <label>:179:                                    ; preds = %109, %84, %118, %172, %98
  %180 = phi i32 [ %151, %172 ], [ 2, %84 ], [ 2, %98 ], [ 2, %118 ], [ 2, %109 ], !dbg !1095
  %181 = add nsw i32 %180, -1, !dbg !1096
  %182 = sub nsw i32 %17, %181, !dbg !1097
  %183 = sub nsw i32 %16, %181, !dbg !1098
  %184 = icmp sgt i32 %182, 1, !dbg !1099
  br i1 %184, label %15, label %185, !dbg !1100, !llvm.loop !1101

; <label>:185:                                    ; preds = %179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1103
  ret void, !dbg !1103
}

; Function Attrs: noredzone
declare hidden void @luaG_concaterror(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden i8* @luaZ_openspace(%struct.lua_State*, %struct.Mbuffer*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define hidden void @luaV_execute(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !1104 {
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
  br label %133, !dbg !1347

; <label>:133:                                    ; preds = %1764, %2
  %134 = phi i32 [ %1, %2 ], [ %1765, %1764 ]
  br label %135, !dbg !1348

; <label>:135:                                    ; preds = %133, %1820
  %136 = load i32*, i32** %35, align 8, !dbg !1348, !tbaa !1349
  %137 = load %struct.CallInfo*, %struct.CallInfo** %36, align 8, !dbg !1351, !tbaa !1352
  %138 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %137, i64 0, i32 1, !dbg !1351
  %139 = bitcast %struct.lua_TValue** %138 to %struct.LClosure***, !dbg !1351
  %140 = load %struct.LClosure**, %struct.LClosure*** %139, align 8, !dbg !1351, !tbaa !1353
  %141 = load %struct.LClosure*, %struct.LClosure** %140, align 8, !dbg !1351, !tbaa !430
  %142 = load %struct.lua_TValue*, %struct.lua_TValue** %37, align 8, !dbg !1356, !tbaa !974
  %143 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %141, i64 0, i32 7, !dbg !1358
  %144 = load %struct.Proto*, %struct.Proto** %143, align 8, !dbg !1358, !tbaa !1359
  %145 = getelementptr inbounds %struct.Proto, %struct.Proto* %144, i64 0, i32 3, !dbg !1361
  %146 = load %struct.lua_TValue*, %struct.lua_TValue** %145, align 8, !dbg !1361, !tbaa !1362
  %147 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %141, i64 0, i32 6
  %148 = bitcast %struct.Table** %147 to i64*
  br label %149, !dbg !1365

; <label>:149:                                    ; preds = %2125, %135
  %150 = phi i32* [ %136, %135 ], [ %2126, %2125 ], !dbg !1366
  %151 = phi %struct.lua_TValue* [ %142, %135 ], [ %2127, %2125 ], !dbg !1367
  %152 = getelementptr i32, i32* %150, i64 1, !dbg !1368
  %153 = load i32, i32* %150, align 4, !dbg !1369, !tbaa !1370
  %154 = load i8, i8* %38, align 4, !dbg !1372, !tbaa !1374
  %155 = and i8 %154, 12, !dbg !1375
  %156 = icmp eq i8 %155, 0, !dbg !1375
  br i1 %156, label %222, label %157, !dbg !1376

; <label>:157:                                    ; preds = %149
  %158 = load i32, i32* %39, align 4, !dbg !1377, !tbaa !1378
  %159 = add nsw i32 %158, -1, !dbg !1377
  store i32 %159, i32* %39, align 4, !dbg !1377, !tbaa !1378
  %160 = icmp ne i32 %159, 0, !dbg !1379
  %161 = and i8 %154, 4, !dbg !1380
  %162 = icmp eq i8 %161, 0, !dbg !1380
  %163 = and i1 %162, %160, !dbg !1381
  br i1 %163, label %222, label %164, !dbg !1381

; <label>:164:                                    ; preds = %157
  %165 = load i32*, i32** %35, align 8, !dbg !1400, !tbaa !1349
  store i32* %152, i32** %35, align 8, !dbg !1402, !tbaa !1349
  %166 = zext i8 %154 to i32, !dbg !1403
  %167 = and i32 %166, 8, !dbg !1405
  %168 = icmp eq i32 %167, 0, !dbg !1405
  %169 = or i1 %168, %160, !dbg !1406
  br i1 %169, label %172, label %170, !dbg !1406

; <label>:170:                                    ; preds = %164
  %171 = load i32, i32* %73, align 8, !dbg !1407, !tbaa !1409
  store i32 %171, i32* %39, align 4, !dbg !1407, !tbaa !1378
  call void @luaD_callhook(%struct.lua_State* nonnull %0, i32 3, i32 -1) #5, !dbg !1410
  br label %172, !dbg !1411

; <label>:172:                                    ; preds = %164, %170
  %173 = and i32 %166, 4, !dbg !1412
  %174 = icmp eq i32 %173, 0, !dbg !1412
  br i1 %174, label %216, label %175, !dbg !1413

; <label>:175:                                    ; preds = %172
  %176 = load %struct.CallInfo*, %struct.CallInfo** %36, align 8, !dbg !1414, !tbaa !1352
  %177 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %176, i64 0, i32 1, !dbg !1414
  %178 = bitcast %struct.lua_TValue** %177 to %struct.LClosure***, !dbg !1414
  %179 = load %struct.LClosure**, %struct.LClosure*** %178, align 8, !dbg !1414, !tbaa !1353
  %180 = load %struct.LClosure*, %struct.LClosure** %179, align 8, !dbg !1414, !tbaa !430
  %181 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %180, i64 0, i32 7, !dbg !1415
  %182 = load %struct.Proto*, %struct.Proto** %181, align 8, !dbg !1415, !tbaa !430
  %183 = getelementptr inbounds %struct.Proto, %struct.Proto* %182, i64 0, i32 4, !dbg !1417
  %184 = bitcast i32** %183 to i64*, !dbg !1417
  %185 = load i64, i64* %184, align 8, !dbg !1417, !tbaa !1418
  %186 = ptrtoint i32* %152 to i64, !dbg !1417
  %187 = sub i64 %186, %185, !dbg !1417
  %188 = lshr exact i64 %187, 2, !dbg !1417
  %189 = trunc i64 %188 to i32, !dbg !1417
  %190 = add nsw i32 %189, -1, !dbg !1417
  %191 = getelementptr inbounds %struct.Proto, %struct.Proto* %182, i64 0, i32 6, !dbg !1420
  %192 = load i32*, i32** %191, align 8, !dbg !1420, !tbaa !1421
  %193 = icmp eq i32* %192, null, !dbg !1420
  br i1 %193, label %198, label %194, !dbg !1420

; <label>:194:                                    ; preds = %175
  %195 = sext i32 %190 to i64, !dbg !1420
  %196 = getelementptr inbounds i32, i32* %192, i64 %195, !dbg !1420
  %197 = load i32, i32* %196, align 4, !dbg !1420, !tbaa !1370
  br label %198, !dbg !1420

; <label>:198:                                    ; preds = %194, %175
  %199 = phi i32 [ %197, %194 ], [ 0, %175 ], !dbg !1420
  %200 = icmp ne i32 %190, 0, !dbg !1423
  %201 = icmp ult i32* %165, %152, !dbg !1425
  %202 = and i1 %201, %200, !dbg !1426
  br i1 %202, label %203, label %215, !dbg !1426

; <label>:203:                                    ; preds = %198
  br i1 %193, label %212, label %204, !dbg !1427

; <label>:204:                                    ; preds = %203
  %205 = ptrtoint i32* %165 to i64, !dbg !1427
  %206 = sub i64 %205, %185, !dbg !1427
  %207 = shl i64 %206, 30, !dbg !1427
  %208 = add i64 %207, -4294967296, !dbg !1427
  %209 = ashr exact i64 %208, 32, !dbg !1427
  %210 = getelementptr inbounds i32, i32* %192, i64 %209, !dbg !1427
  %211 = load i32, i32* %210, align 4, !dbg !1427, !tbaa !1370
  br label %212, !dbg !1427

; <label>:212:                                    ; preds = %204, %203
  %213 = phi i32 [ %211, %204 ], [ 0, %203 ], !dbg !1427
  %214 = icmp eq i32 %199, %213, !dbg !1428
  br i1 %214, label %216, label %215, !dbg !1429

; <label>:215:                                    ; preds = %212, %198
  call void @luaD_callhook(%struct.lua_State* nonnull %0, i32 2, i32 %199) #5, !dbg !1430
  br label %216, !dbg !1430

; <label>:216:                                    ; preds = %172, %212, %215
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1431
  %217 = load i8, i8* %86, align 2, !dbg !1432, !tbaa !1434
  %218 = icmp eq i8 %217, 1, !dbg !1435
  br i1 %218, label %219, label %220, !dbg !1436

; <label>:219:                                    ; preds = %216
  store i32* %150, i32** %35, align 8, !dbg !1437, !tbaa !1349
  br label %2188, !dbg !1439

; <label>:220:                                    ; preds = %216
  %221 = load %struct.lua_TValue*, %struct.lua_TValue** %37, align 8, !dbg !1440, !tbaa !974
  br label %222, !dbg !1441

; <label>:222:                                    ; preds = %157, %149, %220
  %223 = phi %struct.lua_TValue* [ %221, %220 ], [ %151, %149 ], [ %151, %157 ], !dbg !1442
  %224 = lshr i32 %153, 6, !dbg !1443
  %225 = and i32 %224, 255, !dbg !1443
  %226 = zext i32 %225 to i64, !dbg !1443
  %227 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %226, !dbg !1443
  %228 = trunc i32 %153 to i6, !dbg !1445
  switch i6 %228, label %2125 [
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
    i6 26, label %1698
    i6 27, label %1721
    i6 28, label %1751
    i6 29, label %1775
    i6 30, label %1833
    i6 31, label %1855
    i6 -32, label %1879
    i6 -31, label %1942
    i6 -30, label %1993
    i6 -29, label %2067
    i6 -28, label %2068
    i6 -27, label %2128
  ], !dbg !1445

; <label>:229:                                    ; preds = %222
  %230 = lshr i32 %153, 23, !dbg !1446
  %231 = zext i32 %230 to i64, !dbg !1446
  %232 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %231, !dbg !1446
  %233 = bitcast %struct.lua_TValue* %232 to i64*, !dbg !1446
  %234 = bitcast %struct.lua_TValue* %227 to i64*, !dbg !1446
  %235 = load i64, i64* %233, align 8, !dbg !1446
  store i64 %235, i64* %234, align 8, !dbg !1446
  %236 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %231, i32 1, !dbg !1446
  %237 = load i32, i32* %236, align 8, !dbg !1446, !tbaa !423
  %238 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %226, i32 1, !dbg !1446
  store i32 %237, i32* %238, align 8, !dbg !1446, !tbaa !423
  br label %2125, !dbg !1447

; <label>:239:                                    ; preds = %222
  %240 = lshr i32 %153, 14, !dbg !1448
  %241 = zext i32 %240 to i64, !dbg !1448
  %242 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %146, i64 %241, !dbg !1448
  %243 = bitcast %struct.lua_TValue* %242 to i64*, !dbg !1448
  %244 = bitcast %struct.lua_TValue* %227 to i64*, !dbg !1448
  %245 = load i64, i64* %243, align 8, !dbg !1448
  store i64 %245, i64* %244, align 8, !dbg !1448
  %246 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %146, i64 %241, i32 1, !dbg !1448
  %247 = load i32, i32* %246, align 8, !dbg !1448, !tbaa !423
  %248 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %226, i32 1, !dbg !1448
  store i32 %247, i32* %248, align 8, !dbg !1448, !tbaa !423
  br label %2125, !dbg !1449

; <label>:249:                                    ; preds = %222
  %250 = lshr i32 %153, 23, !dbg !1450
  %251 = bitcast %struct.lua_TValue* %227 to i32*, !dbg !1450
  store i32 %250, i32* %251, align 8, !dbg !1450, !tbaa !430
  %252 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %226, i32 1, !dbg !1450
  store i32 1, i32* %252, align 8, !dbg !1450, !tbaa !423
  %253 = and i32 %153, 8372224, !dbg !1451
  %254 = icmp eq i32 %253, 0, !dbg !1451
  %255 = getelementptr inbounds i32, i32* %150, i64 2, !dbg !1453
  %256 = select i1 %254, i32* %152, i32* %255, !dbg !1454
  br label %2125, !dbg !1455

; <label>:257:                                    ; preds = %222
  %258 = lshr i32 %153, 23, !dbg !1456
  %259 = zext i32 %258 to i64, !dbg !1456
  %260 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %259, !dbg !1456
  br label %261, !dbg !1458

; <label>:261:                                    ; preds = %261, %257
  %262 = phi %struct.lua_TValue* [ %260, %257 ], [ %263, %261 ], !dbg !1459
  %263 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %262, i64 -1, !dbg !1461
  %264 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %262, i64 0, i32 1, !dbg !1461
  store i32 0, i32* %264, align 8, !dbg !1461, !tbaa !423
  %265 = icmp ult %struct.lua_TValue* %263, %227, !dbg !1462
  br i1 %265, label %2125, label %261, !dbg !1463, !llvm.loop !1464

; <label>:266:                                    ; preds = %222
  %267 = lshr i32 %153, 23, !dbg !1467
  %268 = zext i32 %267 to i64, !dbg !1469
  %269 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %141, i64 0, i32 8, i64 %268, !dbg !1469
  %270 = load %struct.UpVal*, %struct.UpVal** %269, align 8, !dbg !1469, !tbaa !519
  %271 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %270, i64 0, i32 3, !dbg !1469
  %272 = load %struct.lua_TValue*, %struct.lua_TValue** %271, align 8, !dbg !1469, !tbaa !1470
  %273 = bitcast %struct.lua_TValue* %272 to i64*, !dbg !1469
  %274 = bitcast %struct.lua_TValue* %227 to i64*, !dbg !1469
  %275 = load i64, i64* %273, align 8, !dbg !1469
  store i64 %275, i64* %274, align 8, !dbg !1469
  %276 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %272, i64 0, i32 1, !dbg !1469
  %277 = load i32, i32* %276, align 8, !dbg !1469, !tbaa !423
  %278 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %226, i32 1, !dbg !1469
  store i32 %277, i32* %278, align 8, !dbg !1469, !tbaa !423
  br label %2125

; <label>:279:                                    ; preds = %222
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %40) #4, !dbg !1472
  %280 = lshr i32 %153, 14, !dbg !1473
  %281 = zext i32 %280 to i64, !dbg !1473
  %282 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %146, i64 %281, !dbg !1473
  %283 = load i64, i64* %148, align 8, !dbg !1475, !tbaa !1476
  store i64 %283, i64* %41, align 8, !dbg !1475, !tbaa !430
  store i32 5, i32* %42, align 8, !dbg !1475, !tbaa !423
  store i32* %152, i32** %35, align 8, !dbg !1477, !tbaa !1349
  call void @luaV_gettable(%struct.lua_State* nonnull %0, %struct.lua_TValue* nonnull %33, %struct.lua_TValue* %282, %struct.lua_TValue* %227) #6, !dbg !1480
  %284 = load %struct.lua_TValue*, %struct.lua_TValue** %37, align 8, !dbg !1477, !tbaa !974
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %40) #4, !dbg !1482
  br label %2125

; <label>:285:                                    ; preds = %222
  store i32* %152, i32** %35, align 8, !dbg !1483, !tbaa !1349
  %286 = lshr i32 %153, 23, !dbg !1486
  %287 = zext i32 %286 to i64, !dbg !1486
  %288 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %287, !dbg !1486
  %289 = lshr i32 %153, 14, !dbg !1486
  %290 = and i32 %153, 4194304, !dbg !1486
  %291 = icmp eq i32 %290, 0, !dbg !1486
  %292 = and i32 %289, 255, !dbg !1486
  %293 = zext i32 %292 to i64, !dbg !1486
  %294 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %146, i64 %293, !dbg !1486
  %295 = and i32 %289, 511, !dbg !1486
  %296 = zext i32 %295 to i64, !dbg !1486
  %297 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %296, !dbg !1486
  %298 = select i1 %291, %struct.lua_TValue* %297, %struct.lua_TValue* %294, !dbg !1486
  call void @luaV_gettable(%struct.lua_State* nonnull %0, %struct.lua_TValue* %288, %struct.lua_TValue* %298, %struct.lua_TValue* %227) #6, !dbg !1486
  %299 = load %struct.lua_TValue*, %struct.lua_TValue** %37, align 8, !dbg !1483, !tbaa !974
  br label %2125, !dbg !1488

; <label>:300:                                    ; preds = %222
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %43) #4, !dbg !1489
  %301 = load i64, i64* %148, align 8, !dbg !1490, !tbaa !1476
  store i64 %301, i64* %44, align 8, !dbg !1490, !tbaa !430
  store i32 5, i32* %45, align 8, !dbg !1490, !tbaa !423
  store i32* %152, i32** %35, align 8, !dbg !1491, !tbaa !1349
  %302 = lshr i32 %153, 14, !dbg !1493
  %303 = zext i32 %302 to i64, !dbg !1493
  %304 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %146, i64 %303, !dbg !1493
  call void @luaV_settable(%struct.lua_State* nonnull %0, %struct.lua_TValue* nonnull %34, %struct.lua_TValue* %304, %struct.lua_TValue* %227) #6, !dbg !1493
  %305 = load %struct.lua_TValue*, %struct.lua_TValue** %37, align 8, !dbg !1491, !tbaa !974
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %43) #4, !dbg !1496
  br label %2125

; <label>:306:                                    ; preds = %222
  %307 = lshr i32 %153, 23, !dbg !1497
  %308 = zext i32 %307 to i64, !dbg !1498
  %309 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %141, i64 0, i32 8, i64 %308, !dbg !1498
  %310 = load %struct.UpVal*, %struct.UpVal** %309, align 8, !dbg !1498, !tbaa !519
  %311 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %310, i64 0, i32 3, !dbg !1500
  %312 = load %struct.lua_TValue*, %struct.lua_TValue** %311, align 8, !dbg !1500, !tbaa !1470
  %313 = bitcast %struct.lua_TValue* %227 to i64*, !dbg !1500
  %314 = bitcast %struct.lua_TValue* %312 to i64*, !dbg !1500
  %315 = load i64, i64* %313, align 8, !dbg !1500
  store i64 %315, i64* %314, align 8, !dbg !1500
  %316 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %226, i32 1, !dbg !1500
  %317 = load i32, i32* %316, align 8, !dbg !1500, !tbaa !423
  %318 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %312, i64 0, i32 1, !dbg !1500
  store i32 %317, i32* %318, align 8, !dbg !1500, !tbaa !423
  %319 = load i32, i32* %316, align 8, !dbg !1501, !tbaa !423
  %320 = icmp sgt i32 %319, 3, !dbg !1501
  br i1 %320, label %321, label %2125, !dbg !1501

; <label>:321:                                    ; preds = %306
  %322 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %227, i64 0, i32 0, i32 0, !dbg !1501
  %323 = load %union.GCObject*, %union.GCObject** %322, align 8, !dbg !1501, !tbaa !430
  %324 = getelementptr inbounds %union.GCObject, %union.GCObject* %323, i64 0, i32 0, i32 2, !dbg !1501
  %325 = load i8, i8* %324, align 1, !dbg !1501, !tbaa !430
  %326 = and i8 %325, 3, !dbg !1501
  %327 = icmp eq i8 %326, 0, !dbg !1501
  br i1 %327, label %2125, label %328, !dbg !1501

; <label>:328:                                    ; preds = %321
  %329 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %310, i64 0, i32 2, !dbg !1501
  %330 = load i8, i8* %329, align 1, !dbg !1501, !tbaa !430
  %331 = and i8 %330, 4, !dbg !1501
  %332 = icmp eq i8 %331, 0, !dbg !1501
  br i1 %332, label %2125, label %333, !dbg !1504

; <label>:333:                                    ; preds = %328
  %334 = bitcast %struct.UpVal* %310 to %union.GCObject*, !dbg !1501
  call void @luaC_barrierf(%struct.lua_State* nonnull %0, %union.GCObject* %334, %union.GCObject* %323) #5, !dbg !1501
  br label %2125, !dbg !1501

; <label>:335:                                    ; preds = %222
  store i32* %152, i32** %35, align 8, !dbg !1505, !tbaa !1349
  %336 = lshr i32 %153, 23, !dbg !1508
  %337 = icmp slt i32 %153, 0, !dbg !1508
  %338 = and i32 %336, 255, !dbg !1508
  %339 = zext i32 %338 to i64, !dbg !1508
  %340 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %146, i64 %339, !dbg !1508
  %341 = zext i32 %336 to i64, !dbg !1508
  %342 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %341, !dbg !1508
  %343 = select i1 %337, %struct.lua_TValue* %340, %struct.lua_TValue* %342, !dbg !1508
  %344 = lshr i32 %153, 14, !dbg !1508
  %345 = and i32 %153, 4194304, !dbg !1508
  %346 = icmp eq i32 %345, 0, !dbg !1508
  %347 = and i32 %344, 255, !dbg !1508
  %348 = zext i32 %347 to i64, !dbg !1508
  %349 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %146, i64 %348, !dbg !1508
  %350 = and i32 %344, 511, !dbg !1508
  %351 = zext i32 %350 to i64, !dbg !1508
  %352 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %351, !dbg !1508
  %353 = select i1 %346, %struct.lua_TValue* %352, %struct.lua_TValue* %349, !dbg !1508
  call void @luaV_settable(%struct.lua_State* nonnull %0, %struct.lua_TValue* %227, %struct.lua_TValue* %343, %struct.lua_TValue* %353) #6, !dbg !1508
  %354 = load %struct.lua_TValue*, %struct.lua_TValue** %37, align 8, !dbg !1505, !tbaa !974
  br label %2125, !dbg !1510

; <label>:355:                                    ; preds = %222
  %356 = lshr i32 %153, 23, !dbg !1511
  %357 = lshr i32 %153, 14, !dbg !1513
  %358 = and i32 %357, 511, !dbg !1513
  %359 = call i32 @luaO_fb2int(i32 %356) #5, !dbg !1515
  %360 = call i32 @luaO_fb2int(i32 %358) #5, !dbg !1515
  %361 = call %struct.Table* @luaH_new(%struct.lua_State* nonnull %0, i32 %359, i32 %360) #5, !dbg !1515
  %362 = bitcast %struct.lua_TValue* %227 to %struct.Table**, !dbg !1515
  store %struct.Table* %361, %struct.Table** %362, align 8, !dbg !1515, !tbaa !430
  %363 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %226, i32 1, !dbg !1515
  store i32 5, i32* %363, align 8, !dbg !1515, !tbaa !423
  store i32* %152, i32** %35, align 8, !dbg !1516, !tbaa !1349
  %364 = load %struct.global_State*, %struct.global_State** %46, align 8, !dbg !1518, !tbaa !515
  %365 = getelementptr inbounds %struct.global_State, %struct.global_State* %364, i64 0, i32 14, !dbg !1518
  %366 = load i64, i64* %365, align 8, !dbg !1518, !tbaa !1522
  %367 = getelementptr inbounds %struct.global_State, %struct.global_State* %364, i64 0, i32 13, !dbg !1518
  %368 = load i64, i64* %367, align 8, !dbg !1518, !tbaa !1526
  %369 = icmp ult i64 %366, %368, !dbg !1518
  br i1 %369, label %371, label %370, !dbg !1527

; <label>:370:                                    ; preds = %355
  call void @luaC_step(%struct.lua_State* nonnull %0) #5, !dbg !1518
  br label %371, !dbg !1518

; <label>:371:                                    ; preds = %355, %370
  %372 = load %struct.lua_TValue*, %struct.lua_TValue** %37, align 8, !dbg !1516, !tbaa !974
  br label %2125

; <label>:373:                                    ; preds = %222
  %374 = lshr i32 %153, 23, !dbg !1528
  %375 = zext i32 %374 to i64, !dbg !1528
  %376 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %375, !dbg !1528
  %377 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %227, i64 1, !dbg !1530
  %378 = bitcast %struct.lua_TValue* %376 to i64*, !dbg !1530
  %379 = bitcast %struct.lua_TValue* %377 to i64*, !dbg !1530
  %380 = load i64, i64* %378, align 8, !dbg !1530
  store i64 %380, i64* %379, align 8, !dbg !1530
  %381 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %375, i32 1, !dbg !1530
  %382 = load i32, i32* %381, align 8, !dbg !1530, !tbaa !423
  %383 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %377, i64 0, i32 1, !dbg !1530
  store i32 %382, i32* %383, align 8, !dbg !1530, !tbaa !423
  store i32* %152, i32** %35, align 8, !dbg !1531, !tbaa !1349
  %384 = lshr i32 %153, 14, !dbg !1533
  %385 = and i32 %153, 4194304, !dbg !1533
  %386 = icmp eq i32 %385, 0, !dbg !1533
  %387 = and i32 %384, 255, !dbg !1533
  %388 = zext i32 %387 to i64, !dbg !1533
  %389 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %146, i64 %388, !dbg !1533
  %390 = and i32 %384, 511, !dbg !1533
  %391 = zext i32 %390 to i64, !dbg !1533
  %392 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %391, !dbg !1533
  %393 = select i1 %386, %struct.lua_TValue* %392, %struct.lua_TValue* %389, !dbg !1533
  call void @luaV_gettable(%struct.lua_State* nonnull %0, %struct.lua_TValue* %376, %struct.lua_TValue* %393, %struct.lua_TValue* %227) #6, !dbg !1533
  %394 = load %struct.lua_TValue*, %struct.lua_TValue** %37, align 8, !dbg !1531, !tbaa !974
  br label %2125

; <label>:395:                                    ; preds = %222
  %396 = lshr i32 %153, 23, !dbg !1535
  %397 = icmp slt i32 %153, 0, !dbg !1535
  %398 = and i32 %396, 255, !dbg !1535
  %399 = zext i32 %398 to i64, !dbg !1535
  %400 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %146, i64 %399, !dbg !1535
  %401 = zext i32 %396 to i64, !dbg !1535
  %402 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %401, !dbg !1535
  %403 = select i1 %397, %struct.lua_TValue* %400, %struct.lua_TValue* %402, !dbg !1535
  %404 = lshr i32 %153, 14, !dbg !1535
  %405 = and i32 %153, 4194304, !dbg !1535
  %406 = icmp eq i32 %405, 0, !dbg !1535
  %407 = and i32 %404, 255, !dbg !1535
  %408 = zext i32 %407 to i64, !dbg !1535
  %409 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %146, i64 %408, !dbg !1535
  %410 = and i32 %404, 511, !dbg !1535
  %411 = zext i32 %410 to i64, !dbg !1535
  %412 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %411, !dbg !1535
  %413 = select i1 %406, %struct.lua_TValue* %412, %struct.lua_TValue* %409, !dbg !1535
  %414 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %403, i64 0, i32 1, !dbg !1536
  %415 = load i32, i32* %414, align 8, !dbg !1536, !tbaa !423
  %416 = icmp eq i32 %415, 3, !dbg !1536
  br i1 %416, label %417, label %430, !dbg !1536

; <label>:417:                                    ; preds = %395
  %418 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %413, i64 0, i32 1, !dbg !1536
  %419 = load i32, i32* %418, align 8, !dbg !1536, !tbaa !423
  %420 = icmp eq i32 %419, 3, !dbg !1536
  br i1 %420, label %422, label %421, !dbg !1535

; <label>:421:                                    ; preds = %417
  store i32* %152, i32** %35, align 8, !dbg !1537, !tbaa !1349
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %49) #4, !dbg !1578
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %50) #4, !dbg !1578
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %51) #4, !dbg !1583
  br label %442, !dbg !1584

; <label>:422:                                    ; preds = %417
  %423 = bitcast %struct.lua_TValue* %403 to double*, !dbg !1585
  %424 = load double, double* %423, align 8, !dbg !1585, !tbaa !430
  %425 = bitcast %struct.lua_TValue* %413 to double*, !dbg !1585
  %426 = load double, double* %425, align 8, !dbg !1585, !tbaa !430
  %427 = fadd double %424, %426, !dbg !1586
  %428 = bitcast %struct.lua_TValue* %227 to double*, !dbg !1586
  store double %427, double* %428, align 8, !dbg !1586, !tbaa !430
  %429 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %226, i32 1, !dbg !1586
  store i32 3, i32* %429, align 8, !dbg !1586, !tbaa !423
  br label %2125, !dbg !1585

; <label>:430:                                    ; preds = %395
  store i32* %152, i32** %35, align 8, !dbg !1537, !tbaa !1349
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %49) #4, !dbg !1578
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %50) #4, !dbg !1578
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %51) #4, !dbg !1583
  %431 = icmp eq i32 %415, 4, !dbg !1584
  br i1 %431, label %432, label %441, !dbg !1584

; <label>:432:                                    ; preds = %430
  %433 = bitcast %struct.lua_TValue* %403 to %union.TString**, !dbg !1587
  %434 = load %union.TString*, %union.TString** %433, align 8, !dbg !1587, !tbaa !430
  %435 = getelementptr inbounds %union.TString, %union.TString* %434, i64 1, !dbg !1587
  %436 = bitcast %union.TString* %435 to i8*, !dbg !1587
  %437 = call i32 @luaO_str2d(i8* nonnull %436, double* nonnull %16) #5, !dbg !1589
  %438 = icmp eq i32 %437, 0, !dbg !1589
  br i1 %438, label %441, label %439, !dbg !1590

; <label>:439:                                    ; preds = %432
  %440 = load i64, i64* %87, align 8, !dbg !1591, !tbaa !435
  store i64 %440, i64* %88, align 8, !dbg !1591, !tbaa !430
  store i32 3, i32* %89, align 8, !dbg !1591, !tbaa !423
  br label %442, !dbg !1592

; <label>:441:                                    ; preds = %430, %432
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %51) #4, !dbg !1593
  br label %465, !dbg !1595

; <label>:442:                                    ; preds = %421, %439
  %443 = phi %struct.lua_TValue* [ %31, %439 ], [ %403, %421 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %51) #4, !dbg !1593
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1593
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %74) #4, !dbg !1600
  %444 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %413, i64 0, i32 1, !dbg !1601
  %445 = load i32, i32* %444, align 8, !dbg !1601, !tbaa !423
  switch i32 %445, label %455 [
    i32 3, label %456
    i32 4, label %446
  ], !dbg !1602

; <label>:446:                                    ; preds = %442
  %447 = bitcast %struct.lua_TValue* %413 to %union.TString**, !dbg !1603
  %448 = load %union.TString*, %union.TString** %447, align 8, !dbg !1603, !tbaa !430
  %449 = getelementptr inbounds %union.TString, %union.TString* %448, i64 1, !dbg !1603
  %450 = bitcast %union.TString* %449 to i8*, !dbg !1603
  %451 = call i32 @luaO_str2d(i8* nonnull %450, double* nonnull %15) #5, !dbg !1605
  %452 = icmp eq i32 %451, 0, !dbg !1605
  br i1 %452, label %455, label %453, !dbg !1606

; <label>:453:                                    ; preds = %446
  %454 = load i64, i64* %111, align 8, !dbg !1607, !tbaa !435
  store i64 %454, i64* %112, align 8, !dbg !1607, !tbaa !430
  store i32 3, i32* %113, align 8, !dbg !1607, !tbaa !423
  br label %456, !dbg !1608

; <label>:455:                                    ; preds = %442, %446
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %74) #4, !dbg !1609
  br label %465, !dbg !1611

; <label>:456:                                    ; preds = %453, %442
  %457 = phi %struct.lua_TValue* [ %413, %442 ], [ %32, %453 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %74) #4, !dbg !1609
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1609
  %458 = bitcast %struct.lua_TValue* %443 to double*, !dbg !1612
  %459 = load double, double* %458, align 8, !dbg !1612, !tbaa !430
  %460 = bitcast %struct.lua_TValue* %457 to double*, !dbg !1614
  %461 = load double, double* %460, align 8, !dbg !1614, !tbaa !430
  %462 = fadd double %459, %461, !dbg !1616
  %463 = bitcast %struct.lua_TValue* %227 to double*, !dbg !1616
  store double %462, double* %463, align 8, !dbg !1616, !tbaa !430
  %464 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %226, i32 1, !dbg !1616
  store i32 3, i32* %464, align 8, !dbg !1616, !tbaa !423
  br label %524, !dbg !1617

; <label>:465:                                    ; preds = %455, %441
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1609
  %466 = call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* nonnull %0, %struct.lua_TValue* nonnull %403, i32 5) #5, !dbg !1625
  %467 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %466, i64 0, i32 1, !dbg !1627
  %468 = load i32, i32* %467, align 8, !dbg !1627, !tbaa !423
  %469 = icmp eq i32 %468, 0, !dbg !1627
  br i1 %469, label %470, label %475, !dbg !1628

; <label>:470:                                    ; preds = %465
  %471 = call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* nonnull %0, %struct.lua_TValue* %413, i32 5) #5, !dbg !1629
  %472 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %471, i64 0, i32 1
  %473 = load i32, i32* %472, align 8, !dbg !1630, !tbaa !423
  %474 = icmp eq i32 %473, 0, !dbg !1630
  br i1 %474, label %523, label %475, !dbg !1631

; <label>:475:                                    ; preds = %470, %465
  %476 = phi i32* [ %472, %470 ], [ %467, %465 ], !dbg !1632
  %477 = phi %struct.lua_TValue* [ %471, %470 ], [ %466, %465 ]
  %478 = load i64, i64* %82, align 8, !dbg !1639, !tbaa !563
  %479 = ptrtoint %struct.lua_TValue* %227 to i64, !dbg !1639
  %480 = sub i64 %479, %478, !dbg !1639
  %481 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !1632, !tbaa !566
  %482 = bitcast %struct.lua_TValue* %477 to i64*, !dbg !1632
  %483 = bitcast %struct.lua_TValue* %481 to i64*, !dbg !1632
  %484 = load i64, i64* %482, align 8, !dbg !1632
  store i64 %484, i64* %483, align 8, !dbg !1632
  %485 = load i32, i32* %476, align 8, !dbg !1632, !tbaa !423
  %486 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %481, i64 0, i32 1, !dbg !1632
  store i32 %485, i32* %486, align 8, !dbg !1632, !tbaa !423
  %487 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !1641, !tbaa !566
  %488 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %487, i64 1, !dbg !1641
  %489 = bitcast %struct.lua_TValue* %403 to i64*, !dbg !1641
  %490 = bitcast %struct.lua_TValue* %488 to i64*, !dbg !1641
  %491 = load i64, i64* %489, align 8, !dbg !1641
  store i64 %491, i64* %490, align 8, !dbg !1641
  %492 = load i32, i32* %414, align 8, !dbg !1641, !tbaa !423
  %493 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %487, i64 1, i32 1, !dbg !1641
  store i32 %492, i32* %493, align 8, !dbg !1641, !tbaa !423
  %494 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !1642, !tbaa !566
  %495 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %494, i64 2, !dbg !1642
  %496 = bitcast %struct.lua_TValue* %413 to i64*, !dbg !1642
  %497 = bitcast %struct.lua_TValue* %495 to i64*, !dbg !1642
  %498 = load i64, i64* %496, align 8, !dbg !1642
  store i64 %498, i64* %497, align 8, !dbg !1642
  %499 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %413, i64 0, i32 1, !dbg !1642
  %500 = load i32, i32* %499, align 8, !dbg !1642, !tbaa !423
  %501 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %494, i64 2, i32 1, !dbg !1642
  store i32 %500, i32* %501, align 8, !dbg !1642, !tbaa !423
  %502 = load i64, i64* %72, align 8, !dbg !1643, !tbaa !571
  %503 = load i64, i64* %48, align 8, !dbg !1643, !tbaa !566
  %504 = sub i64 %502, %503, !dbg !1643
  %505 = icmp slt i64 %504, 49, !dbg !1643
  %506 = inttoptr i64 %503 to %struct.lua_TValue*, !dbg !1644
  br i1 %505, label %507, label %509, !dbg !1644

; <label>:507:                                    ; preds = %475
  call void @luaD_growstack(%struct.lua_State* nonnull %0, i32 3) #5, !dbg !1643
  %508 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !1645, !tbaa !566
  br label %509, !dbg !1643

; <label>:509:                                    ; preds = %507, %475
  %510 = phi %struct.lua_TValue* [ %506, %475 ], [ %508, %507 ], !dbg !1645
  %511 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %510, i64 3, !dbg !1645
  store %struct.lua_TValue* %511, %struct.lua_TValue** %47, align 8, !dbg !1645, !tbaa !566
  call void @luaD_call(%struct.lua_State* nonnull %0, %struct.lua_TValue* %510, i32 1) #5, !dbg !1646
  %512 = load i8*, i8** %108, align 8, !dbg !1647, !tbaa !563
  %513 = getelementptr inbounds i8, i8* %512, i64 %480, !dbg !1647
  %514 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !1648, !tbaa !566
  %515 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %514, i64 -1, !dbg !1648
  store %struct.lua_TValue* %515, %struct.lua_TValue** %47, align 8, !dbg !1648, !tbaa !566
  %516 = bitcast %struct.lua_TValue* %515 to i64*, !dbg !1649
  %517 = bitcast i8* %513 to i64*, !dbg !1649
  %518 = load i64, i64* %516, align 8, !dbg !1649
  store i64 %518, i64* %517, align 8, !dbg !1649
  %519 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %514, i64 -1, i32 1, !dbg !1649
  %520 = load i32, i32* %519, align 8, !dbg !1649, !tbaa !423
  %521 = getelementptr inbounds i8, i8* %513, i64 8, !dbg !1649
  %522 = bitcast i8* %521 to i32*, !dbg !1649
  store i32 %520, i32* %522, align 8, !dbg !1649, !tbaa !423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1650
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1651
  br label %524, !dbg !1652

; <label>:523:                                    ; preds = %470
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1651
  call void @luaG_aritherror(%struct.lua_State* nonnull %0, %struct.lua_TValue* nonnull %403, %struct.lua_TValue* %413) #5, !dbg !1653
  br label %524, !dbg !1653

; <label>:524:                                    ; preds = %509, %456, %523
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %50) #4, !dbg !1654
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %49) #4, !dbg !1654
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1654
  %525 = load %struct.lua_TValue*, %struct.lua_TValue** %37, align 8, !dbg !1537, !tbaa !974
  br label %2125

; <label>:526:                                    ; preds = %222
  %527 = lshr i32 %153, 23, !dbg !1655
  %528 = icmp slt i32 %153, 0, !dbg !1655
  %529 = and i32 %527, 255, !dbg !1655
  %530 = zext i32 %529 to i64, !dbg !1655
  %531 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %146, i64 %530, !dbg !1655
  %532 = zext i32 %527 to i64, !dbg !1655
  %533 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %532, !dbg !1655
  %534 = select i1 %528, %struct.lua_TValue* %531, %struct.lua_TValue* %533, !dbg !1655
  %535 = lshr i32 %153, 14, !dbg !1655
  %536 = and i32 %153, 4194304, !dbg !1655
  %537 = icmp eq i32 %536, 0, !dbg !1655
  %538 = and i32 %535, 255, !dbg !1655
  %539 = zext i32 %538 to i64, !dbg !1655
  %540 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %146, i64 %539, !dbg !1655
  %541 = and i32 %535, 511, !dbg !1655
  %542 = zext i32 %541 to i64, !dbg !1655
  %543 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %542, !dbg !1655
  %544 = select i1 %537, %struct.lua_TValue* %543, %struct.lua_TValue* %540, !dbg !1655
  %545 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %534, i64 0, i32 1, !dbg !1656
  %546 = load i32, i32* %545, align 8, !dbg !1656, !tbaa !423
  %547 = icmp eq i32 %546, 3, !dbg !1656
  br i1 %547, label %548, label %561, !dbg !1656

; <label>:548:                                    ; preds = %526
  %549 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %544, i64 0, i32 1, !dbg !1656
  %550 = load i32, i32* %549, align 8, !dbg !1656, !tbaa !423
  %551 = icmp eq i32 %550, 3, !dbg !1656
  br i1 %551, label %553, label %552, !dbg !1655

; <label>:552:                                    ; preds = %548
  store i32* %152, i32** %35, align 8, !dbg !1657, !tbaa !1349
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %52) #4, !dbg !1666
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %53) #4, !dbg !1666
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %54) #4, !dbg !1671
  br label %573, !dbg !1672

; <label>:553:                                    ; preds = %548
  %554 = bitcast %struct.lua_TValue* %534 to double*, !dbg !1673
  %555 = load double, double* %554, align 8, !dbg !1673, !tbaa !430
  %556 = bitcast %struct.lua_TValue* %544 to double*, !dbg !1673
  %557 = load double, double* %556, align 8, !dbg !1673, !tbaa !430
  %558 = fsub double %555, %557, !dbg !1674
  %559 = bitcast %struct.lua_TValue* %227 to double*, !dbg !1674
  store double %558, double* %559, align 8, !dbg !1674, !tbaa !430
  %560 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %226, i32 1, !dbg !1674
  store i32 3, i32* %560, align 8, !dbg !1674, !tbaa !423
  br label %2125, !dbg !1673

; <label>:561:                                    ; preds = %526
  store i32* %152, i32** %35, align 8, !dbg !1657, !tbaa !1349
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %52) #4, !dbg !1666
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %53) #4, !dbg !1666
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %54) #4, !dbg !1671
  %562 = icmp eq i32 %546, 4, !dbg !1672
  br i1 %562, label %563, label %572, !dbg !1672

; <label>:563:                                    ; preds = %561
  %564 = bitcast %struct.lua_TValue* %534 to %union.TString**, !dbg !1675
  %565 = load %union.TString*, %union.TString** %564, align 8, !dbg !1675, !tbaa !430
  %566 = getelementptr inbounds %union.TString, %union.TString* %565, i64 1, !dbg !1675
  %567 = bitcast %union.TString* %566 to i8*, !dbg !1675
  %568 = call i32 @luaO_str2d(i8* nonnull %567, double* nonnull %14) #5, !dbg !1677
  %569 = icmp eq i32 %568, 0, !dbg !1677
  br i1 %569, label %572, label %570, !dbg !1678

; <label>:570:                                    ; preds = %563
  %571 = load i64, i64* %90, align 8, !dbg !1679, !tbaa !435
  store i64 %571, i64* %91, align 8, !dbg !1679, !tbaa !430
  store i32 3, i32* %92, align 8, !dbg !1679, !tbaa !423
  br label %573, !dbg !1680

; <label>:572:                                    ; preds = %561, %563
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %54) #4, !dbg !1681
  br label %596, !dbg !1683

; <label>:573:                                    ; preds = %552, %570
  %574 = phi %struct.lua_TValue* [ %29, %570 ], [ %534, %552 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %54) #4, !dbg !1681
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1681
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %75) #4, !dbg !1688
  %575 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %544, i64 0, i32 1, !dbg !1689
  %576 = load i32, i32* %575, align 8, !dbg !1689, !tbaa !423
  switch i32 %576, label %586 [
    i32 3, label %587
    i32 4, label %577
  ], !dbg !1690

; <label>:577:                                    ; preds = %573
  %578 = bitcast %struct.lua_TValue* %544 to %union.TString**, !dbg !1691
  %579 = load %union.TString*, %union.TString** %578, align 8, !dbg !1691, !tbaa !430
  %580 = getelementptr inbounds %union.TString, %union.TString* %579, i64 1, !dbg !1691
  %581 = bitcast %union.TString* %580 to i8*, !dbg !1691
  %582 = call i32 @luaO_str2d(i8* nonnull %581, double* nonnull %13) #5, !dbg !1693
  %583 = icmp eq i32 %582, 0, !dbg !1693
  br i1 %583, label %586, label %584, !dbg !1694

; <label>:584:                                    ; preds = %577
  %585 = load i64, i64* %114, align 8, !dbg !1695, !tbaa !435
  store i64 %585, i64* %115, align 8, !dbg !1695, !tbaa !430
  store i32 3, i32* %116, align 8, !dbg !1695, !tbaa !423
  br label %587, !dbg !1696

; <label>:586:                                    ; preds = %573, %577
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %75) #4, !dbg !1697
  br label %596, !dbg !1699

; <label>:587:                                    ; preds = %584, %573
  %588 = phi %struct.lua_TValue* [ %544, %573 ], [ %30, %584 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %75) #4, !dbg !1697
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1697
  %589 = bitcast %struct.lua_TValue* %574 to double*, !dbg !1700
  %590 = load double, double* %589, align 8, !dbg !1700, !tbaa !430
  %591 = bitcast %struct.lua_TValue* %588 to double*, !dbg !1702
  %592 = load double, double* %591, align 8, !dbg !1702, !tbaa !430
  %593 = fsub double %590, %592, !dbg !1704
  %594 = bitcast %struct.lua_TValue* %227 to double*, !dbg !1704
  store double %593, double* %594, align 8, !dbg !1704, !tbaa !430
  %595 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %226, i32 1, !dbg !1704
  store i32 3, i32* %595, align 8, !dbg !1704, !tbaa !423
  br label %655, !dbg !1705

; <label>:596:                                    ; preds = %586, %572
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1697
  %597 = call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* nonnull %0, %struct.lua_TValue* nonnull %534, i32 6) #5, !dbg !1712
  %598 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %597, i64 0, i32 1, !dbg !1714
  %599 = load i32, i32* %598, align 8, !dbg !1714, !tbaa !423
  %600 = icmp eq i32 %599, 0, !dbg !1714
  br i1 %600, label %601, label %606, !dbg !1715

; <label>:601:                                    ; preds = %596
  %602 = call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* nonnull %0, %struct.lua_TValue* %544, i32 6) #5, !dbg !1716
  %603 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %602, i64 0, i32 1
  %604 = load i32, i32* %603, align 8, !dbg !1717, !tbaa !423
  %605 = icmp eq i32 %604, 0, !dbg !1717
  br i1 %605, label %654, label %606, !dbg !1718

; <label>:606:                                    ; preds = %601, %596
  %607 = phi i32* [ %603, %601 ], [ %598, %596 ], !dbg !1719
  %608 = phi %struct.lua_TValue* [ %602, %601 ], [ %597, %596 ]
  %609 = load i64, i64* %82, align 8, !dbg !1726, !tbaa !563
  %610 = ptrtoint %struct.lua_TValue* %227 to i64, !dbg !1726
  %611 = sub i64 %610, %609, !dbg !1726
  %612 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !1719, !tbaa !566
  %613 = bitcast %struct.lua_TValue* %608 to i64*, !dbg !1719
  %614 = bitcast %struct.lua_TValue* %612 to i64*, !dbg !1719
  %615 = load i64, i64* %613, align 8, !dbg !1719
  store i64 %615, i64* %614, align 8, !dbg !1719
  %616 = load i32, i32* %607, align 8, !dbg !1719, !tbaa !423
  %617 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %612, i64 0, i32 1, !dbg !1719
  store i32 %616, i32* %617, align 8, !dbg !1719, !tbaa !423
  %618 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !1728, !tbaa !566
  %619 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %618, i64 1, !dbg !1728
  %620 = bitcast %struct.lua_TValue* %534 to i64*, !dbg !1728
  %621 = bitcast %struct.lua_TValue* %619 to i64*, !dbg !1728
  %622 = load i64, i64* %620, align 8, !dbg !1728
  store i64 %622, i64* %621, align 8, !dbg !1728
  %623 = load i32, i32* %545, align 8, !dbg !1728, !tbaa !423
  %624 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %618, i64 1, i32 1, !dbg !1728
  store i32 %623, i32* %624, align 8, !dbg !1728, !tbaa !423
  %625 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !1729, !tbaa !566
  %626 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %625, i64 2, !dbg !1729
  %627 = bitcast %struct.lua_TValue* %544 to i64*, !dbg !1729
  %628 = bitcast %struct.lua_TValue* %626 to i64*, !dbg !1729
  %629 = load i64, i64* %627, align 8, !dbg !1729
  store i64 %629, i64* %628, align 8, !dbg !1729
  %630 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %544, i64 0, i32 1, !dbg !1729
  %631 = load i32, i32* %630, align 8, !dbg !1729, !tbaa !423
  %632 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %625, i64 2, i32 1, !dbg !1729
  store i32 %631, i32* %632, align 8, !dbg !1729, !tbaa !423
  %633 = load i64, i64* %72, align 8, !dbg !1730, !tbaa !571
  %634 = load i64, i64* %48, align 8, !dbg !1730, !tbaa !566
  %635 = sub i64 %633, %634, !dbg !1730
  %636 = icmp slt i64 %635, 49, !dbg !1730
  %637 = inttoptr i64 %634 to %struct.lua_TValue*, !dbg !1731
  br i1 %636, label %638, label %640, !dbg !1731

; <label>:638:                                    ; preds = %606
  call void @luaD_growstack(%struct.lua_State* nonnull %0, i32 3) #5, !dbg !1730
  %639 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !1732, !tbaa !566
  br label %640, !dbg !1730

; <label>:640:                                    ; preds = %638, %606
  %641 = phi %struct.lua_TValue* [ %637, %606 ], [ %639, %638 ], !dbg !1732
  %642 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %641, i64 3, !dbg !1732
  store %struct.lua_TValue* %642, %struct.lua_TValue** %47, align 8, !dbg !1732, !tbaa !566
  call void @luaD_call(%struct.lua_State* nonnull %0, %struct.lua_TValue* %641, i32 1) #5, !dbg !1733
  %643 = load i8*, i8** %108, align 8, !dbg !1734, !tbaa !563
  %644 = getelementptr inbounds i8, i8* %643, i64 %611, !dbg !1734
  %645 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !1735, !tbaa !566
  %646 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %645, i64 -1, !dbg !1735
  store %struct.lua_TValue* %646, %struct.lua_TValue** %47, align 8, !dbg !1735, !tbaa !566
  %647 = bitcast %struct.lua_TValue* %646 to i64*, !dbg !1736
  %648 = bitcast i8* %644 to i64*, !dbg !1736
  %649 = load i64, i64* %647, align 8, !dbg !1736
  store i64 %649, i64* %648, align 8, !dbg !1736
  %650 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %645, i64 -1, i32 1, !dbg !1736
  %651 = load i32, i32* %650, align 8, !dbg !1736, !tbaa !423
  %652 = getelementptr inbounds i8, i8* %644, i64 8, !dbg !1736
  %653 = bitcast i8* %652 to i32*, !dbg !1736
  store i32 %651, i32* %653, align 8, !dbg !1736, !tbaa !423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1737
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1738
  br label %655, !dbg !1739

; <label>:654:                                    ; preds = %601
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1738
  call void @luaG_aritherror(%struct.lua_State* nonnull %0, %struct.lua_TValue* nonnull %534, %struct.lua_TValue* %544) #5, !dbg !1740
  br label %655, !dbg !1740

; <label>:655:                                    ; preds = %640, %587, %654
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %53) #4, !dbg !1741
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %52) #4, !dbg !1741
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1741
  %656 = load %struct.lua_TValue*, %struct.lua_TValue** %37, align 8, !dbg !1657, !tbaa !974
  br label %2125

; <label>:657:                                    ; preds = %222
  %658 = lshr i32 %153, 23, !dbg !1742
  %659 = icmp slt i32 %153, 0, !dbg !1742
  %660 = and i32 %658, 255, !dbg !1742
  %661 = zext i32 %660 to i64, !dbg !1742
  %662 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %146, i64 %661, !dbg !1742
  %663 = zext i32 %658 to i64, !dbg !1742
  %664 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %663, !dbg !1742
  %665 = select i1 %659, %struct.lua_TValue* %662, %struct.lua_TValue* %664, !dbg !1742
  %666 = lshr i32 %153, 14, !dbg !1742
  %667 = and i32 %153, 4194304, !dbg !1742
  %668 = icmp eq i32 %667, 0, !dbg !1742
  %669 = and i32 %666, 255, !dbg !1742
  %670 = zext i32 %669 to i64, !dbg !1742
  %671 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %146, i64 %670, !dbg !1742
  %672 = and i32 %666, 511, !dbg !1742
  %673 = zext i32 %672 to i64, !dbg !1742
  %674 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %673, !dbg !1742
  %675 = select i1 %668, %struct.lua_TValue* %674, %struct.lua_TValue* %671, !dbg !1742
  %676 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %665, i64 0, i32 1, !dbg !1743
  %677 = load i32, i32* %676, align 8, !dbg !1743, !tbaa !423
  %678 = icmp eq i32 %677, 3, !dbg !1743
  br i1 %678, label %679, label %692, !dbg !1743

; <label>:679:                                    ; preds = %657
  %680 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %675, i64 0, i32 1, !dbg !1743
  %681 = load i32, i32* %680, align 8, !dbg !1743, !tbaa !423
  %682 = icmp eq i32 %681, 3, !dbg !1743
  br i1 %682, label %684, label %683, !dbg !1742

; <label>:683:                                    ; preds = %679
  store i32* %152, i32** %35, align 8, !dbg !1744, !tbaa !1349
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %55) #4, !dbg !1753
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %56) #4, !dbg !1753
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %57) #4, !dbg !1758
  br label %704, !dbg !1759

; <label>:684:                                    ; preds = %679
  %685 = bitcast %struct.lua_TValue* %665 to double*, !dbg !1760
  %686 = load double, double* %685, align 8, !dbg !1760, !tbaa !430
  %687 = bitcast %struct.lua_TValue* %675 to double*, !dbg !1760
  %688 = load double, double* %687, align 8, !dbg !1760, !tbaa !430
  %689 = fmul double %686, %688, !dbg !1761
  %690 = bitcast %struct.lua_TValue* %227 to double*, !dbg !1761
  store double %689, double* %690, align 8, !dbg !1761, !tbaa !430
  %691 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %226, i32 1, !dbg !1761
  store i32 3, i32* %691, align 8, !dbg !1761, !tbaa !423
  br label %2125, !dbg !1760

; <label>:692:                                    ; preds = %657
  store i32* %152, i32** %35, align 8, !dbg !1744, !tbaa !1349
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %55) #4, !dbg !1753
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %56) #4, !dbg !1753
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %57) #4, !dbg !1758
  %693 = icmp eq i32 %677, 4, !dbg !1759
  br i1 %693, label %694, label %703, !dbg !1759

; <label>:694:                                    ; preds = %692
  %695 = bitcast %struct.lua_TValue* %665 to %union.TString**, !dbg !1762
  %696 = load %union.TString*, %union.TString** %695, align 8, !dbg !1762, !tbaa !430
  %697 = getelementptr inbounds %union.TString, %union.TString* %696, i64 1, !dbg !1762
  %698 = bitcast %union.TString* %697 to i8*, !dbg !1762
  %699 = call i32 @luaO_str2d(i8* nonnull %698, double* nonnull %12) #5, !dbg !1764
  %700 = icmp eq i32 %699, 0, !dbg !1764
  br i1 %700, label %703, label %701, !dbg !1765

; <label>:701:                                    ; preds = %694
  %702 = load i64, i64* %93, align 8, !dbg !1766, !tbaa !435
  store i64 %702, i64* %94, align 8, !dbg !1766, !tbaa !430
  store i32 3, i32* %95, align 8, !dbg !1766, !tbaa !423
  br label %704, !dbg !1767

; <label>:703:                                    ; preds = %692, %694
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %57) #4, !dbg !1768
  br label %727, !dbg !1770

; <label>:704:                                    ; preds = %683, %701
  %705 = phi %struct.lua_TValue* [ %27, %701 ], [ %665, %683 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %57) #4, !dbg !1768
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1768
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %76) #4, !dbg !1775
  %706 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %675, i64 0, i32 1, !dbg !1776
  %707 = load i32, i32* %706, align 8, !dbg !1776, !tbaa !423
  switch i32 %707, label %717 [
    i32 3, label %718
    i32 4, label %708
  ], !dbg !1777

; <label>:708:                                    ; preds = %704
  %709 = bitcast %struct.lua_TValue* %675 to %union.TString**, !dbg !1778
  %710 = load %union.TString*, %union.TString** %709, align 8, !dbg !1778, !tbaa !430
  %711 = getelementptr inbounds %union.TString, %union.TString* %710, i64 1, !dbg !1778
  %712 = bitcast %union.TString* %711 to i8*, !dbg !1778
  %713 = call i32 @luaO_str2d(i8* nonnull %712, double* nonnull %11) #5, !dbg !1780
  %714 = icmp eq i32 %713, 0, !dbg !1780
  br i1 %714, label %717, label %715, !dbg !1781

; <label>:715:                                    ; preds = %708
  %716 = load i64, i64* %117, align 8, !dbg !1782, !tbaa !435
  store i64 %716, i64* %118, align 8, !dbg !1782, !tbaa !430
  store i32 3, i32* %119, align 8, !dbg !1782, !tbaa !423
  br label %718, !dbg !1783

; <label>:717:                                    ; preds = %704, %708
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %76) #4, !dbg !1784
  br label %727, !dbg !1786

; <label>:718:                                    ; preds = %715, %704
  %719 = phi %struct.lua_TValue* [ %675, %704 ], [ %28, %715 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %76) #4, !dbg !1784
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1784
  %720 = bitcast %struct.lua_TValue* %705 to double*, !dbg !1787
  %721 = load double, double* %720, align 8, !dbg !1787, !tbaa !430
  %722 = bitcast %struct.lua_TValue* %719 to double*, !dbg !1789
  %723 = load double, double* %722, align 8, !dbg !1789, !tbaa !430
  %724 = fmul double %721, %723, !dbg !1791
  %725 = bitcast %struct.lua_TValue* %227 to double*, !dbg !1791
  store double %724, double* %725, align 8, !dbg !1791, !tbaa !430
  %726 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %226, i32 1, !dbg !1791
  store i32 3, i32* %726, align 8, !dbg !1791, !tbaa !423
  br label %786, !dbg !1792

; <label>:727:                                    ; preds = %717, %703
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1784
  %728 = call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* nonnull %0, %struct.lua_TValue* nonnull %665, i32 7) #5, !dbg !1799
  %729 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %728, i64 0, i32 1, !dbg !1801
  %730 = load i32, i32* %729, align 8, !dbg !1801, !tbaa !423
  %731 = icmp eq i32 %730, 0, !dbg !1801
  br i1 %731, label %732, label %737, !dbg !1802

; <label>:732:                                    ; preds = %727
  %733 = call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* nonnull %0, %struct.lua_TValue* %675, i32 7) #5, !dbg !1803
  %734 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %733, i64 0, i32 1
  %735 = load i32, i32* %734, align 8, !dbg !1804, !tbaa !423
  %736 = icmp eq i32 %735, 0, !dbg !1804
  br i1 %736, label %785, label %737, !dbg !1805

; <label>:737:                                    ; preds = %732, %727
  %738 = phi i32* [ %734, %732 ], [ %729, %727 ], !dbg !1806
  %739 = phi %struct.lua_TValue* [ %733, %732 ], [ %728, %727 ]
  %740 = load i64, i64* %82, align 8, !dbg !1813, !tbaa !563
  %741 = ptrtoint %struct.lua_TValue* %227 to i64, !dbg !1813
  %742 = sub i64 %741, %740, !dbg !1813
  %743 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !1806, !tbaa !566
  %744 = bitcast %struct.lua_TValue* %739 to i64*, !dbg !1806
  %745 = bitcast %struct.lua_TValue* %743 to i64*, !dbg !1806
  %746 = load i64, i64* %744, align 8, !dbg !1806
  store i64 %746, i64* %745, align 8, !dbg !1806
  %747 = load i32, i32* %738, align 8, !dbg !1806, !tbaa !423
  %748 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %743, i64 0, i32 1, !dbg !1806
  store i32 %747, i32* %748, align 8, !dbg !1806, !tbaa !423
  %749 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !1815, !tbaa !566
  %750 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %749, i64 1, !dbg !1815
  %751 = bitcast %struct.lua_TValue* %665 to i64*, !dbg !1815
  %752 = bitcast %struct.lua_TValue* %750 to i64*, !dbg !1815
  %753 = load i64, i64* %751, align 8, !dbg !1815
  store i64 %753, i64* %752, align 8, !dbg !1815
  %754 = load i32, i32* %676, align 8, !dbg !1815, !tbaa !423
  %755 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %749, i64 1, i32 1, !dbg !1815
  store i32 %754, i32* %755, align 8, !dbg !1815, !tbaa !423
  %756 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !1816, !tbaa !566
  %757 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %756, i64 2, !dbg !1816
  %758 = bitcast %struct.lua_TValue* %675 to i64*, !dbg !1816
  %759 = bitcast %struct.lua_TValue* %757 to i64*, !dbg !1816
  %760 = load i64, i64* %758, align 8, !dbg !1816
  store i64 %760, i64* %759, align 8, !dbg !1816
  %761 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %675, i64 0, i32 1, !dbg !1816
  %762 = load i32, i32* %761, align 8, !dbg !1816, !tbaa !423
  %763 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %756, i64 2, i32 1, !dbg !1816
  store i32 %762, i32* %763, align 8, !dbg !1816, !tbaa !423
  %764 = load i64, i64* %72, align 8, !dbg !1817, !tbaa !571
  %765 = load i64, i64* %48, align 8, !dbg !1817, !tbaa !566
  %766 = sub i64 %764, %765, !dbg !1817
  %767 = icmp slt i64 %766, 49, !dbg !1817
  %768 = inttoptr i64 %765 to %struct.lua_TValue*, !dbg !1818
  br i1 %767, label %769, label %771, !dbg !1818

; <label>:769:                                    ; preds = %737
  call void @luaD_growstack(%struct.lua_State* nonnull %0, i32 3) #5, !dbg !1817
  %770 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !1819, !tbaa !566
  br label %771, !dbg !1817

; <label>:771:                                    ; preds = %769, %737
  %772 = phi %struct.lua_TValue* [ %768, %737 ], [ %770, %769 ], !dbg !1819
  %773 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %772, i64 3, !dbg !1819
  store %struct.lua_TValue* %773, %struct.lua_TValue** %47, align 8, !dbg !1819, !tbaa !566
  call void @luaD_call(%struct.lua_State* nonnull %0, %struct.lua_TValue* %772, i32 1) #5, !dbg !1820
  %774 = load i8*, i8** %108, align 8, !dbg !1821, !tbaa !563
  %775 = getelementptr inbounds i8, i8* %774, i64 %742, !dbg !1821
  %776 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !1822, !tbaa !566
  %777 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %776, i64 -1, !dbg !1822
  store %struct.lua_TValue* %777, %struct.lua_TValue** %47, align 8, !dbg !1822, !tbaa !566
  %778 = bitcast %struct.lua_TValue* %777 to i64*, !dbg !1823
  %779 = bitcast i8* %775 to i64*, !dbg !1823
  %780 = load i64, i64* %778, align 8, !dbg !1823
  store i64 %780, i64* %779, align 8, !dbg !1823
  %781 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %776, i64 -1, i32 1, !dbg !1823
  %782 = load i32, i32* %781, align 8, !dbg !1823, !tbaa !423
  %783 = getelementptr inbounds i8, i8* %775, i64 8, !dbg !1823
  %784 = bitcast i8* %783 to i32*, !dbg !1823
  store i32 %782, i32* %784, align 8, !dbg !1823, !tbaa !423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1824
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1825
  br label %786, !dbg !1826

; <label>:785:                                    ; preds = %732
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1825
  call void @luaG_aritherror(%struct.lua_State* nonnull %0, %struct.lua_TValue* nonnull %665, %struct.lua_TValue* %675) #5, !dbg !1827
  br label %786, !dbg !1827

; <label>:786:                                    ; preds = %771, %718, %785
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %56) #4, !dbg !1828
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %55) #4, !dbg !1828
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1828
  %787 = load %struct.lua_TValue*, %struct.lua_TValue** %37, align 8, !dbg !1744, !tbaa !974
  br label %2125

; <label>:788:                                    ; preds = %222
  %789 = lshr i32 %153, 23, !dbg !1829
  %790 = icmp slt i32 %153, 0, !dbg !1829
  %791 = and i32 %789, 255, !dbg !1829
  %792 = zext i32 %791 to i64, !dbg !1829
  %793 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %146, i64 %792, !dbg !1829
  %794 = zext i32 %789 to i64, !dbg !1829
  %795 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %794, !dbg !1829
  %796 = select i1 %790, %struct.lua_TValue* %793, %struct.lua_TValue* %795, !dbg !1829
  %797 = lshr i32 %153, 14, !dbg !1829
  %798 = and i32 %153, 4194304, !dbg !1829
  %799 = icmp eq i32 %798, 0, !dbg !1829
  %800 = and i32 %797, 255, !dbg !1829
  %801 = zext i32 %800 to i64, !dbg !1829
  %802 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %146, i64 %801, !dbg !1829
  %803 = and i32 %797, 511, !dbg !1829
  %804 = zext i32 %803 to i64, !dbg !1829
  %805 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %804, !dbg !1829
  %806 = select i1 %799, %struct.lua_TValue* %805, %struct.lua_TValue* %802, !dbg !1829
  %807 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %796, i64 0, i32 1, !dbg !1830
  %808 = load i32, i32* %807, align 8, !dbg !1830, !tbaa !423
  %809 = icmp eq i32 %808, 3, !dbg !1830
  br i1 %809, label %810, label %823, !dbg !1830

; <label>:810:                                    ; preds = %788
  %811 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %806, i64 0, i32 1, !dbg !1830
  %812 = load i32, i32* %811, align 8, !dbg !1830, !tbaa !423
  %813 = icmp eq i32 %812, 3, !dbg !1830
  br i1 %813, label %815, label %814, !dbg !1829

; <label>:814:                                    ; preds = %810
  store i32* %152, i32** %35, align 8, !dbg !1831, !tbaa !1349
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %58) #4, !dbg !1840
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %59) #4, !dbg !1840
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %60) #4, !dbg !1845
  br label %835, !dbg !1846

; <label>:815:                                    ; preds = %810
  %816 = bitcast %struct.lua_TValue* %796 to double*, !dbg !1847
  %817 = load double, double* %816, align 8, !dbg !1847, !tbaa !430
  %818 = bitcast %struct.lua_TValue* %806 to double*, !dbg !1847
  %819 = load double, double* %818, align 8, !dbg !1847, !tbaa !430
  %820 = fdiv double %817, %819, !dbg !1848
  %821 = bitcast %struct.lua_TValue* %227 to double*, !dbg !1848
  store double %820, double* %821, align 8, !dbg !1848, !tbaa !430
  %822 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %226, i32 1, !dbg !1848
  store i32 3, i32* %822, align 8, !dbg !1848, !tbaa !423
  br label %2125, !dbg !1847

; <label>:823:                                    ; preds = %788
  store i32* %152, i32** %35, align 8, !dbg !1831, !tbaa !1349
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %58) #4, !dbg !1840
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %59) #4, !dbg !1840
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %60) #4, !dbg !1845
  %824 = icmp eq i32 %808, 4, !dbg !1846
  br i1 %824, label %825, label %834, !dbg !1846

; <label>:825:                                    ; preds = %823
  %826 = bitcast %struct.lua_TValue* %796 to %union.TString**, !dbg !1849
  %827 = load %union.TString*, %union.TString** %826, align 8, !dbg !1849, !tbaa !430
  %828 = getelementptr inbounds %union.TString, %union.TString* %827, i64 1, !dbg !1849
  %829 = bitcast %union.TString* %828 to i8*, !dbg !1849
  %830 = call i32 @luaO_str2d(i8* nonnull %829, double* nonnull %10) #5, !dbg !1851
  %831 = icmp eq i32 %830, 0, !dbg !1851
  br i1 %831, label %834, label %832, !dbg !1852

; <label>:832:                                    ; preds = %825
  %833 = load i64, i64* %96, align 8, !dbg !1853, !tbaa !435
  store i64 %833, i64* %97, align 8, !dbg !1853, !tbaa !430
  store i32 3, i32* %98, align 8, !dbg !1853, !tbaa !423
  br label %835, !dbg !1854

; <label>:834:                                    ; preds = %823, %825
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %60) #4, !dbg !1855
  br label %858, !dbg !1857

; <label>:835:                                    ; preds = %814, %832
  %836 = phi %struct.lua_TValue* [ %25, %832 ], [ %796, %814 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %60) #4, !dbg !1855
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1855
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %77) #4, !dbg !1862
  %837 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %806, i64 0, i32 1, !dbg !1863
  %838 = load i32, i32* %837, align 8, !dbg !1863, !tbaa !423
  switch i32 %838, label %848 [
    i32 3, label %849
    i32 4, label %839
  ], !dbg !1864

; <label>:839:                                    ; preds = %835
  %840 = bitcast %struct.lua_TValue* %806 to %union.TString**, !dbg !1865
  %841 = load %union.TString*, %union.TString** %840, align 8, !dbg !1865, !tbaa !430
  %842 = getelementptr inbounds %union.TString, %union.TString* %841, i64 1, !dbg !1865
  %843 = bitcast %union.TString* %842 to i8*, !dbg !1865
  %844 = call i32 @luaO_str2d(i8* nonnull %843, double* nonnull %9) #5, !dbg !1867
  %845 = icmp eq i32 %844, 0, !dbg !1867
  br i1 %845, label %848, label %846, !dbg !1868

; <label>:846:                                    ; preds = %839
  %847 = load i64, i64* %120, align 8, !dbg !1869, !tbaa !435
  store i64 %847, i64* %121, align 8, !dbg !1869, !tbaa !430
  store i32 3, i32* %122, align 8, !dbg !1869, !tbaa !423
  br label %849, !dbg !1870

; <label>:848:                                    ; preds = %835, %839
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %77) #4, !dbg !1871
  br label %858, !dbg !1873

; <label>:849:                                    ; preds = %846, %835
  %850 = phi %struct.lua_TValue* [ %806, %835 ], [ %26, %846 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %77) #4, !dbg !1871
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1871
  %851 = bitcast %struct.lua_TValue* %836 to double*, !dbg !1874
  %852 = load double, double* %851, align 8, !dbg !1874, !tbaa !430
  %853 = bitcast %struct.lua_TValue* %850 to double*, !dbg !1876
  %854 = load double, double* %853, align 8, !dbg !1876, !tbaa !430
  %855 = fdiv double %852, %854, !dbg !1878
  %856 = bitcast %struct.lua_TValue* %227 to double*, !dbg !1878
  store double %855, double* %856, align 8, !dbg !1878, !tbaa !430
  %857 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %226, i32 1, !dbg !1878
  store i32 3, i32* %857, align 8, !dbg !1878, !tbaa !423
  br label %917, !dbg !1879

; <label>:858:                                    ; preds = %848, %834
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1871
  %859 = call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* nonnull %0, %struct.lua_TValue* nonnull %796, i32 8) #5, !dbg !1886
  %860 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %859, i64 0, i32 1, !dbg !1888
  %861 = load i32, i32* %860, align 8, !dbg !1888, !tbaa !423
  %862 = icmp eq i32 %861, 0, !dbg !1888
  br i1 %862, label %863, label %868, !dbg !1889

; <label>:863:                                    ; preds = %858
  %864 = call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* nonnull %0, %struct.lua_TValue* %806, i32 8) #5, !dbg !1890
  %865 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %864, i64 0, i32 1
  %866 = load i32, i32* %865, align 8, !dbg !1891, !tbaa !423
  %867 = icmp eq i32 %866, 0, !dbg !1891
  br i1 %867, label %916, label %868, !dbg !1892

; <label>:868:                                    ; preds = %863, %858
  %869 = phi i32* [ %865, %863 ], [ %860, %858 ], !dbg !1893
  %870 = phi %struct.lua_TValue* [ %864, %863 ], [ %859, %858 ]
  %871 = load i64, i64* %82, align 8, !dbg !1900, !tbaa !563
  %872 = ptrtoint %struct.lua_TValue* %227 to i64, !dbg !1900
  %873 = sub i64 %872, %871, !dbg !1900
  %874 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !1893, !tbaa !566
  %875 = bitcast %struct.lua_TValue* %870 to i64*, !dbg !1893
  %876 = bitcast %struct.lua_TValue* %874 to i64*, !dbg !1893
  %877 = load i64, i64* %875, align 8, !dbg !1893
  store i64 %877, i64* %876, align 8, !dbg !1893
  %878 = load i32, i32* %869, align 8, !dbg !1893, !tbaa !423
  %879 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %874, i64 0, i32 1, !dbg !1893
  store i32 %878, i32* %879, align 8, !dbg !1893, !tbaa !423
  %880 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !1902, !tbaa !566
  %881 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %880, i64 1, !dbg !1902
  %882 = bitcast %struct.lua_TValue* %796 to i64*, !dbg !1902
  %883 = bitcast %struct.lua_TValue* %881 to i64*, !dbg !1902
  %884 = load i64, i64* %882, align 8, !dbg !1902
  store i64 %884, i64* %883, align 8, !dbg !1902
  %885 = load i32, i32* %807, align 8, !dbg !1902, !tbaa !423
  %886 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %880, i64 1, i32 1, !dbg !1902
  store i32 %885, i32* %886, align 8, !dbg !1902, !tbaa !423
  %887 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !1903, !tbaa !566
  %888 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %887, i64 2, !dbg !1903
  %889 = bitcast %struct.lua_TValue* %806 to i64*, !dbg !1903
  %890 = bitcast %struct.lua_TValue* %888 to i64*, !dbg !1903
  %891 = load i64, i64* %889, align 8, !dbg !1903
  store i64 %891, i64* %890, align 8, !dbg !1903
  %892 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %806, i64 0, i32 1, !dbg !1903
  %893 = load i32, i32* %892, align 8, !dbg !1903, !tbaa !423
  %894 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %887, i64 2, i32 1, !dbg !1903
  store i32 %893, i32* %894, align 8, !dbg !1903, !tbaa !423
  %895 = load i64, i64* %72, align 8, !dbg !1904, !tbaa !571
  %896 = load i64, i64* %48, align 8, !dbg !1904, !tbaa !566
  %897 = sub i64 %895, %896, !dbg !1904
  %898 = icmp slt i64 %897, 49, !dbg !1904
  %899 = inttoptr i64 %896 to %struct.lua_TValue*, !dbg !1905
  br i1 %898, label %900, label %902, !dbg !1905

; <label>:900:                                    ; preds = %868
  call void @luaD_growstack(%struct.lua_State* nonnull %0, i32 3) #5, !dbg !1904
  %901 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !1906, !tbaa !566
  br label %902, !dbg !1904

; <label>:902:                                    ; preds = %900, %868
  %903 = phi %struct.lua_TValue* [ %899, %868 ], [ %901, %900 ], !dbg !1906
  %904 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %903, i64 3, !dbg !1906
  store %struct.lua_TValue* %904, %struct.lua_TValue** %47, align 8, !dbg !1906, !tbaa !566
  call void @luaD_call(%struct.lua_State* nonnull %0, %struct.lua_TValue* %903, i32 1) #5, !dbg !1907
  %905 = load i8*, i8** %108, align 8, !dbg !1908, !tbaa !563
  %906 = getelementptr inbounds i8, i8* %905, i64 %873, !dbg !1908
  %907 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !1909, !tbaa !566
  %908 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %907, i64 -1, !dbg !1909
  store %struct.lua_TValue* %908, %struct.lua_TValue** %47, align 8, !dbg !1909, !tbaa !566
  %909 = bitcast %struct.lua_TValue* %908 to i64*, !dbg !1910
  %910 = bitcast i8* %906 to i64*, !dbg !1910
  %911 = load i64, i64* %909, align 8, !dbg !1910
  store i64 %911, i64* %910, align 8, !dbg !1910
  %912 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %907, i64 -1, i32 1, !dbg !1910
  %913 = load i32, i32* %912, align 8, !dbg !1910, !tbaa !423
  %914 = getelementptr inbounds i8, i8* %906, i64 8, !dbg !1910
  %915 = bitcast i8* %914 to i32*, !dbg !1910
  store i32 %913, i32* %915, align 8, !dbg !1910, !tbaa !423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1911
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1912
  br label %917, !dbg !1913

; <label>:916:                                    ; preds = %863
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1912
  call void @luaG_aritherror(%struct.lua_State* nonnull %0, %struct.lua_TValue* nonnull %796, %struct.lua_TValue* %806) #5, !dbg !1914
  br label %917, !dbg !1914

; <label>:917:                                    ; preds = %902, %849, %916
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %59) #4, !dbg !1915
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %58) #4, !dbg !1915
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1915
  %918 = load %struct.lua_TValue*, %struct.lua_TValue** %37, align 8, !dbg !1831, !tbaa !974
  br label %2125

; <label>:919:                                    ; preds = %222
  %920 = lshr i32 %153, 23, !dbg !1916
  %921 = icmp slt i32 %153, 0, !dbg !1916
  %922 = and i32 %920, 255, !dbg !1916
  %923 = zext i32 %922 to i64, !dbg !1916
  %924 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %146, i64 %923, !dbg !1916
  %925 = zext i32 %920 to i64, !dbg !1916
  %926 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %925, !dbg !1916
  %927 = select i1 %921, %struct.lua_TValue* %924, %struct.lua_TValue* %926, !dbg !1916
  %928 = lshr i32 %153, 14, !dbg !1916
  %929 = and i32 %153, 4194304, !dbg !1916
  %930 = icmp eq i32 %929, 0, !dbg !1916
  %931 = and i32 %928, 255, !dbg !1916
  %932 = zext i32 %931 to i64, !dbg !1916
  %933 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %146, i64 %932, !dbg !1916
  %934 = and i32 %928, 511, !dbg !1916
  %935 = zext i32 %934 to i64, !dbg !1916
  %936 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %935, !dbg !1916
  %937 = select i1 %930, %struct.lua_TValue* %936, %struct.lua_TValue* %933, !dbg !1916
  %938 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %927, i64 0, i32 1, !dbg !1917
  %939 = load i32, i32* %938, align 8, !dbg !1917, !tbaa !423
  %940 = icmp eq i32 %939, 3, !dbg !1917
  br i1 %940, label %941, label %957, !dbg !1917

; <label>:941:                                    ; preds = %919
  %942 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %937, i64 0, i32 1, !dbg !1917
  %943 = load i32, i32* %942, align 8, !dbg !1917, !tbaa !423
  %944 = icmp eq i32 %943, 3, !dbg !1917
  br i1 %944, label %946, label %945, !dbg !1916

; <label>:945:                                    ; preds = %941
  store i32* %152, i32** %35, align 8, !dbg !1918, !tbaa !1349
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %61) #4, !dbg !1927
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %62) #4, !dbg !1927
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %63) #4, !dbg !1932
  br label %969, !dbg !1933

; <label>:946:                                    ; preds = %941
  %947 = bitcast %struct.lua_TValue* %927 to double*, !dbg !1934
  %948 = load double, double* %947, align 8, !dbg !1934, !tbaa !430
  %949 = bitcast %struct.lua_TValue* %937 to double*, !dbg !1934
  %950 = load double, double* %949, align 8, !dbg !1934, !tbaa !430
  %951 = fdiv double %948, %950, !dbg !1935
  %952 = call double @floor(double %951) #5, !dbg !1935
  %953 = fmul double %950, %952, !dbg !1935
  %954 = fsub double %948, %953, !dbg !1935
  %955 = bitcast %struct.lua_TValue* %227 to double*, !dbg !1935
  store double %954, double* %955, align 8, !dbg !1935, !tbaa !430
  %956 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %226, i32 1, !dbg !1935
  store i32 3, i32* %956, align 8, !dbg !1935, !tbaa !423
  br label %2125, !dbg !1934

; <label>:957:                                    ; preds = %919
  store i32* %152, i32** %35, align 8, !dbg !1918, !tbaa !1349
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %61) #4, !dbg !1927
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %62) #4, !dbg !1927
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %63) #4, !dbg !1932
  %958 = icmp eq i32 %939, 4, !dbg !1933
  br i1 %958, label %959, label %968, !dbg !1933

; <label>:959:                                    ; preds = %957
  %960 = bitcast %struct.lua_TValue* %927 to %union.TString**, !dbg !1936
  %961 = load %union.TString*, %union.TString** %960, align 8, !dbg !1936, !tbaa !430
  %962 = getelementptr inbounds %union.TString, %union.TString* %961, i64 1, !dbg !1936
  %963 = bitcast %union.TString* %962 to i8*, !dbg !1936
  %964 = call i32 @luaO_str2d(i8* nonnull %963, double* nonnull %8) #5, !dbg !1938
  %965 = icmp eq i32 %964, 0, !dbg !1938
  br i1 %965, label %968, label %966, !dbg !1939

; <label>:966:                                    ; preds = %959
  %967 = load i64, i64* %99, align 8, !dbg !1940, !tbaa !435
  store i64 %967, i64* %100, align 8, !dbg !1940, !tbaa !430
  store i32 3, i32* %101, align 8, !dbg !1940, !tbaa !423
  br label %969, !dbg !1941

; <label>:968:                                    ; preds = %957, %959
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %63) #4, !dbg !1942
  br label %995, !dbg !1944

; <label>:969:                                    ; preds = %945, %966
  %970 = phi %struct.lua_TValue* [ %23, %966 ], [ %927, %945 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %63) #4, !dbg !1942
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1942
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %78) #4, !dbg !1949
  %971 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %937, i64 0, i32 1, !dbg !1950
  %972 = load i32, i32* %971, align 8, !dbg !1950, !tbaa !423
  switch i32 %972, label %982 [
    i32 3, label %983
    i32 4, label %973
  ], !dbg !1951

; <label>:973:                                    ; preds = %969
  %974 = bitcast %struct.lua_TValue* %937 to %union.TString**, !dbg !1952
  %975 = load %union.TString*, %union.TString** %974, align 8, !dbg !1952, !tbaa !430
  %976 = getelementptr inbounds %union.TString, %union.TString* %975, i64 1, !dbg !1952
  %977 = bitcast %union.TString* %976 to i8*, !dbg !1952
  %978 = call i32 @luaO_str2d(i8* nonnull %977, double* nonnull %7) #5, !dbg !1954
  %979 = icmp eq i32 %978, 0, !dbg !1954
  br i1 %979, label %982, label %980, !dbg !1955

; <label>:980:                                    ; preds = %973
  %981 = load i64, i64* %123, align 8, !dbg !1956, !tbaa !435
  store i64 %981, i64* %124, align 8, !dbg !1956, !tbaa !430
  store i32 3, i32* %125, align 8, !dbg !1956, !tbaa !423
  br label %983, !dbg !1957

; <label>:982:                                    ; preds = %969, %973
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %78) #4, !dbg !1958
  br label %995, !dbg !1960

; <label>:983:                                    ; preds = %980, %969
  %984 = phi %struct.lua_TValue* [ %937, %969 ], [ %24, %980 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %78) #4, !dbg !1958
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1958
  %985 = bitcast %struct.lua_TValue* %970 to double*, !dbg !1961
  %986 = load double, double* %985, align 8, !dbg !1961, !tbaa !430
  %987 = bitcast %struct.lua_TValue* %984 to double*, !dbg !1963
  %988 = load double, double* %987, align 8, !dbg !1963, !tbaa !430
  %989 = fdiv double %986, %988, !dbg !1965
  %990 = call double @floor(double %989) #5, !dbg !1965
  %991 = fmul double %988, %990, !dbg !1965
  %992 = fsub double %986, %991, !dbg !1965
  %993 = bitcast %struct.lua_TValue* %227 to double*, !dbg !1965
  store double %992, double* %993, align 8, !dbg !1965, !tbaa !430
  %994 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %226, i32 1, !dbg !1965
  store i32 3, i32* %994, align 8, !dbg !1965, !tbaa !423
  br label %1054, !dbg !1966

; <label>:995:                                    ; preds = %982, %968
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1958
  %996 = call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* nonnull %0, %struct.lua_TValue* nonnull %927, i32 9) #5, !dbg !1973
  %997 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %996, i64 0, i32 1, !dbg !1975
  %998 = load i32, i32* %997, align 8, !dbg !1975, !tbaa !423
  %999 = icmp eq i32 %998, 0, !dbg !1975
  br i1 %999, label %1000, label %1005, !dbg !1976

; <label>:1000:                                   ; preds = %995
  %1001 = call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* nonnull %0, %struct.lua_TValue* %937, i32 9) #5, !dbg !1977
  %1002 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1001, i64 0, i32 1
  %1003 = load i32, i32* %1002, align 8, !dbg !1978, !tbaa !423
  %1004 = icmp eq i32 %1003, 0, !dbg !1978
  br i1 %1004, label %1053, label %1005, !dbg !1979

; <label>:1005:                                   ; preds = %1000, %995
  %1006 = phi i32* [ %1002, %1000 ], [ %997, %995 ], !dbg !1980
  %1007 = phi %struct.lua_TValue* [ %1001, %1000 ], [ %996, %995 ]
  %1008 = load i64, i64* %82, align 8, !dbg !1987, !tbaa !563
  %1009 = ptrtoint %struct.lua_TValue* %227 to i64, !dbg !1987
  %1010 = sub i64 %1009, %1008, !dbg !1987
  %1011 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !1980, !tbaa !566
  %1012 = bitcast %struct.lua_TValue* %1007 to i64*, !dbg !1980
  %1013 = bitcast %struct.lua_TValue* %1011 to i64*, !dbg !1980
  %1014 = load i64, i64* %1012, align 8, !dbg !1980
  store i64 %1014, i64* %1013, align 8, !dbg !1980
  %1015 = load i32, i32* %1006, align 8, !dbg !1980, !tbaa !423
  %1016 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1011, i64 0, i32 1, !dbg !1980
  store i32 %1015, i32* %1016, align 8, !dbg !1980, !tbaa !423
  %1017 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !1989, !tbaa !566
  %1018 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1017, i64 1, !dbg !1989
  %1019 = bitcast %struct.lua_TValue* %927 to i64*, !dbg !1989
  %1020 = bitcast %struct.lua_TValue* %1018 to i64*, !dbg !1989
  %1021 = load i64, i64* %1019, align 8, !dbg !1989
  store i64 %1021, i64* %1020, align 8, !dbg !1989
  %1022 = load i32, i32* %938, align 8, !dbg !1989, !tbaa !423
  %1023 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1017, i64 1, i32 1, !dbg !1989
  store i32 %1022, i32* %1023, align 8, !dbg !1989, !tbaa !423
  %1024 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !1990, !tbaa !566
  %1025 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1024, i64 2, !dbg !1990
  %1026 = bitcast %struct.lua_TValue* %937 to i64*, !dbg !1990
  %1027 = bitcast %struct.lua_TValue* %1025 to i64*, !dbg !1990
  %1028 = load i64, i64* %1026, align 8, !dbg !1990
  store i64 %1028, i64* %1027, align 8, !dbg !1990
  %1029 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %937, i64 0, i32 1, !dbg !1990
  %1030 = load i32, i32* %1029, align 8, !dbg !1990, !tbaa !423
  %1031 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1024, i64 2, i32 1, !dbg !1990
  store i32 %1030, i32* %1031, align 8, !dbg !1990, !tbaa !423
  %1032 = load i64, i64* %72, align 8, !dbg !1991, !tbaa !571
  %1033 = load i64, i64* %48, align 8, !dbg !1991, !tbaa !566
  %1034 = sub i64 %1032, %1033, !dbg !1991
  %1035 = icmp slt i64 %1034, 49, !dbg !1991
  %1036 = inttoptr i64 %1033 to %struct.lua_TValue*, !dbg !1992
  br i1 %1035, label %1037, label %1039, !dbg !1992

; <label>:1037:                                   ; preds = %1005
  call void @luaD_growstack(%struct.lua_State* nonnull %0, i32 3) #5, !dbg !1991
  %1038 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !1993, !tbaa !566
  br label %1039, !dbg !1991

; <label>:1039:                                   ; preds = %1037, %1005
  %1040 = phi %struct.lua_TValue* [ %1036, %1005 ], [ %1038, %1037 ], !dbg !1993
  %1041 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1040, i64 3, !dbg !1993
  store %struct.lua_TValue* %1041, %struct.lua_TValue** %47, align 8, !dbg !1993, !tbaa !566
  call void @luaD_call(%struct.lua_State* nonnull %0, %struct.lua_TValue* %1040, i32 1) #5, !dbg !1994
  %1042 = load i8*, i8** %108, align 8, !dbg !1995, !tbaa !563
  %1043 = getelementptr inbounds i8, i8* %1042, i64 %1010, !dbg !1995
  %1044 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !1996, !tbaa !566
  %1045 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1044, i64 -1, !dbg !1996
  store %struct.lua_TValue* %1045, %struct.lua_TValue** %47, align 8, !dbg !1996, !tbaa !566
  %1046 = bitcast %struct.lua_TValue* %1045 to i64*, !dbg !1997
  %1047 = bitcast i8* %1043 to i64*, !dbg !1997
  %1048 = load i64, i64* %1046, align 8, !dbg !1997
  store i64 %1048, i64* %1047, align 8, !dbg !1997
  %1049 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1044, i64 -1, i32 1, !dbg !1997
  %1050 = load i32, i32* %1049, align 8, !dbg !1997, !tbaa !423
  %1051 = getelementptr inbounds i8, i8* %1043, i64 8, !dbg !1997
  %1052 = bitcast i8* %1051 to i32*, !dbg !1997
  store i32 %1050, i32* %1052, align 8, !dbg !1997, !tbaa !423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1998
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1999
  br label %1054, !dbg !2000

; <label>:1053:                                   ; preds = %1000
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1999
  call void @luaG_aritherror(%struct.lua_State* nonnull %0, %struct.lua_TValue* nonnull %927, %struct.lua_TValue* %937) #5, !dbg !2001
  br label %1054, !dbg !2001

; <label>:1054:                                   ; preds = %1039, %983, %1053
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %62) #4, !dbg !2002
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %61) #4, !dbg !2002
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2002
  %1055 = load %struct.lua_TValue*, %struct.lua_TValue** %37, align 8, !dbg !1918, !tbaa !974
  br label %2125

; <label>:1056:                                   ; preds = %222
  %1057 = lshr i32 %153, 23, !dbg !2003
  %1058 = icmp slt i32 %153, 0, !dbg !2003
  %1059 = and i32 %1057, 255, !dbg !2003
  %1060 = zext i32 %1059 to i64, !dbg !2003
  %1061 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %146, i64 %1060, !dbg !2003
  %1062 = zext i32 %1057 to i64, !dbg !2003
  %1063 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %1062, !dbg !2003
  %1064 = select i1 %1058, %struct.lua_TValue* %1061, %struct.lua_TValue* %1063, !dbg !2003
  %1065 = lshr i32 %153, 14, !dbg !2003
  %1066 = and i32 %153, 4194304, !dbg !2003
  %1067 = icmp eq i32 %1066, 0, !dbg !2003
  %1068 = and i32 %1065, 255, !dbg !2003
  %1069 = zext i32 %1068 to i64, !dbg !2003
  %1070 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %146, i64 %1069, !dbg !2003
  %1071 = and i32 %1065, 511, !dbg !2003
  %1072 = zext i32 %1071 to i64, !dbg !2003
  %1073 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %1072, !dbg !2003
  %1074 = select i1 %1067, %struct.lua_TValue* %1073, %struct.lua_TValue* %1070, !dbg !2003
  %1075 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1064, i64 0, i32 1, !dbg !2004
  %1076 = load i32, i32* %1075, align 8, !dbg !2004, !tbaa !423
  %1077 = icmp eq i32 %1076, 3, !dbg !2004
  br i1 %1077, label %1078, label %1091, !dbg !2004

; <label>:1078:                                   ; preds = %1056
  %1079 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1074, i64 0, i32 1, !dbg !2004
  %1080 = load i32, i32* %1079, align 8, !dbg !2004, !tbaa !423
  %1081 = icmp eq i32 %1080, 3, !dbg !2004
  br i1 %1081, label %1083, label %1082, !dbg !2003

; <label>:1082:                                   ; preds = %1078
  store i32* %152, i32** %35, align 8, !dbg !2005, !tbaa !1349
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %64) #4, !dbg !2014
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %65) #4, !dbg !2014
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %66) #4, !dbg !2019
  br label %1103, !dbg !2020

; <label>:1083:                                   ; preds = %1078
  %1084 = bitcast %struct.lua_TValue* %1064 to double*, !dbg !2021
  %1085 = load double, double* %1084, align 8, !dbg !2021, !tbaa !430
  %1086 = bitcast %struct.lua_TValue* %1074 to double*, !dbg !2021
  %1087 = load double, double* %1086, align 8, !dbg !2021, !tbaa !430
  %1088 = call double @pow(double %1085, double %1087) #5, !dbg !2022
  %1089 = bitcast %struct.lua_TValue* %227 to double*, !dbg !2022
  store double %1088, double* %1089, align 8, !dbg !2022, !tbaa !430
  %1090 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %226, i32 1, !dbg !2022
  store i32 3, i32* %1090, align 8, !dbg !2022, !tbaa !423
  br label %2125, !dbg !2021

; <label>:1091:                                   ; preds = %1056
  store i32* %152, i32** %35, align 8, !dbg !2005, !tbaa !1349
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %64) #4, !dbg !2014
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %65) #4, !dbg !2014
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %66) #4, !dbg !2019
  %1092 = icmp eq i32 %1076, 4, !dbg !2020
  br i1 %1092, label %1093, label %1102, !dbg !2020

; <label>:1093:                                   ; preds = %1091
  %1094 = bitcast %struct.lua_TValue* %1064 to %union.TString**, !dbg !2023
  %1095 = load %union.TString*, %union.TString** %1094, align 8, !dbg !2023, !tbaa !430
  %1096 = getelementptr inbounds %union.TString, %union.TString* %1095, i64 1, !dbg !2023
  %1097 = bitcast %union.TString* %1096 to i8*, !dbg !2023
  %1098 = call i32 @luaO_str2d(i8* nonnull %1097, double* nonnull %6) #5, !dbg !2025
  %1099 = icmp eq i32 %1098, 0, !dbg !2025
  br i1 %1099, label %1102, label %1100, !dbg !2026

; <label>:1100:                                   ; preds = %1093
  %1101 = load i64, i64* %102, align 8, !dbg !2027, !tbaa !435
  store i64 %1101, i64* %103, align 8, !dbg !2027, !tbaa !430
  store i32 3, i32* %104, align 8, !dbg !2027, !tbaa !423
  br label %1103, !dbg !2028

; <label>:1102:                                   ; preds = %1091, %1093
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %66) #4, !dbg !2029
  br label %1126, !dbg !2031

; <label>:1103:                                   ; preds = %1082, %1100
  %1104 = phi %struct.lua_TValue* [ %21, %1100 ], [ %1064, %1082 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %66) #4, !dbg !2029
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2029
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %79) #4, !dbg !2036
  %1105 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1074, i64 0, i32 1, !dbg !2037
  %1106 = load i32, i32* %1105, align 8, !dbg !2037, !tbaa !423
  switch i32 %1106, label %1116 [
    i32 3, label %1117
    i32 4, label %1107
  ], !dbg !2038

; <label>:1107:                                   ; preds = %1103
  %1108 = bitcast %struct.lua_TValue* %1074 to %union.TString**, !dbg !2039
  %1109 = load %union.TString*, %union.TString** %1108, align 8, !dbg !2039, !tbaa !430
  %1110 = getelementptr inbounds %union.TString, %union.TString* %1109, i64 1, !dbg !2039
  %1111 = bitcast %union.TString* %1110 to i8*, !dbg !2039
  %1112 = call i32 @luaO_str2d(i8* nonnull %1111, double* nonnull %5) #5, !dbg !2041
  %1113 = icmp eq i32 %1112, 0, !dbg !2041
  br i1 %1113, label %1116, label %1114, !dbg !2042

; <label>:1114:                                   ; preds = %1107
  %1115 = load i64, i64* %126, align 8, !dbg !2043, !tbaa !435
  store i64 %1115, i64* %127, align 8, !dbg !2043, !tbaa !430
  store i32 3, i32* %128, align 8, !dbg !2043, !tbaa !423
  br label %1117, !dbg !2044

; <label>:1116:                                   ; preds = %1103, %1107
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %79) #4, !dbg !2045
  br label %1126, !dbg !2047

; <label>:1117:                                   ; preds = %1114, %1103
  %1118 = phi %struct.lua_TValue* [ %1074, %1103 ], [ %22, %1114 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %79) #4, !dbg !2045
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2045
  %1119 = bitcast %struct.lua_TValue* %1104 to double*, !dbg !2048
  %1120 = load double, double* %1119, align 8, !dbg !2048, !tbaa !430
  %1121 = bitcast %struct.lua_TValue* %1118 to double*, !dbg !2050
  %1122 = load double, double* %1121, align 8, !dbg !2050, !tbaa !430
  %1123 = call double @pow(double %1120, double %1122) #5, !dbg !2052
  %1124 = bitcast %struct.lua_TValue* %227 to double*, !dbg !2052
  store double %1123, double* %1124, align 8, !dbg !2052, !tbaa !430
  %1125 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %226, i32 1, !dbg !2052
  store i32 3, i32* %1125, align 8, !dbg !2052, !tbaa !423
  br label %1185, !dbg !2053

; <label>:1126:                                   ; preds = %1116, %1102
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2045
  %1127 = call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* nonnull %0, %struct.lua_TValue* nonnull %1064, i32 10) #5, !dbg !2060
  %1128 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1127, i64 0, i32 1, !dbg !2062
  %1129 = load i32, i32* %1128, align 8, !dbg !2062, !tbaa !423
  %1130 = icmp eq i32 %1129, 0, !dbg !2062
  br i1 %1130, label %1131, label %1136, !dbg !2063

; <label>:1131:                                   ; preds = %1126
  %1132 = call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* nonnull %0, %struct.lua_TValue* %1074, i32 10) #5, !dbg !2064
  %1133 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1132, i64 0, i32 1
  %1134 = load i32, i32* %1133, align 8, !dbg !2065, !tbaa !423
  %1135 = icmp eq i32 %1134, 0, !dbg !2065
  br i1 %1135, label %1184, label %1136, !dbg !2066

; <label>:1136:                                   ; preds = %1131, %1126
  %1137 = phi i32* [ %1133, %1131 ], [ %1128, %1126 ], !dbg !2067
  %1138 = phi %struct.lua_TValue* [ %1132, %1131 ], [ %1127, %1126 ]
  %1139 = load i64, i64* %82, align 8, !dbg !2074, !tbaa !563
  %1140 = ptrtoint %struct.lua_TValue* %227 to i64, !dbg !2074
  %1141 = sub i64 %1140, %1139, !dbg !2074
  %1142 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !2067, !tbaa !566
  %1143 = bitcast %struct.lua_TValue* %1138 to i64*, !dbg !2067
  %1144 = bitcast %struct.lua_TValue* %1142 to i64*, !dbg !2067
  %1145 = load i64, i64* %1143, align 8, !dbg !2067
  store i64 %1145, i64* %1144, align 8, !dbg !2067
  %1146 = load i32, i32* %1137, align 8, !dbg !2067, !tbaa !423
  %1147 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1142, i64 0, i32 1, !dbg !2067
  store i32 %1146, i32* %1147, align 8, !dbg !2067, !tbaa !423
  %1148 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !2076, !tbaa !566
  %1149 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1148, i64 1, !dbg !2076
  %1150 = bitcast %struct.lua_TValue* %1064 to i64*, !dbg !2076
  %1151 = bitcast %struct.lua_TValue* %1149 to i64*, !dbg !2076
  %1152 = load i64, i64* %1150, align 8, !dbg !2076
  store i64 %1152, i64* %1151, align 8, !dbg !2076
  %1153 = load i32, i32* %1075, align 8, !dbg !2076, !tbaa !423
  %1154 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1148, i64 1, i32 1, !dbg !2076
  store i32 %1153, i32* %1154, align 8, !dbg !2076, !tbaa !423
  %1155 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !2077, !tbaa !566
  %1156 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1155, i64 2, !dbg !2077
  %1157 = bitcast %struct.lua_TValue* %1074 to i64*, !dbg !2077
  %1158 = bitcast %struct.lua_TValue* %1156 to i64*, !dbg !2077
  %1159 = load i64, i64* %1157, align 8, !dbg !2077
  store i64 %1159, i64* %1158, align 8, !dbg !2077
  %1160 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1074, i64 0, i32 1, !dbg !2077
  %1161 = load i32, i32* %1160, align 8, !dbg !2077, !tbaa !423
  %1162 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1155, i64 2, i32 1, !dbg !2077
  store i32 %1161, i32* %1162, align 8, !dbg !2077, !tbaa !423
  %1163 = load i64, i64* %72, align 8, !dbg !2078, !tbaa !571
  %1164 = load i64, i64* %48, align 8, !dbg !2078, !tbaa !566
  %1165 = sub i64 %1163, %1164, !dbg !2078
  %1166 = icmp slt i64 %1165, 49, !dbg !2078
  %1167 = inttoptr i64 %1164 to %struct.lua_TValue*, !dbg !2079
  br i1 %1166, label %1168, label %1170, !dbg !2079

; <label>:1168:                                   ; preds = %1136
  call void @luaD_growstack(%struct.lua_State* nonnull %0, i32 3) #5, !dbg !2078
  %1169 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !2080, !tbaa !566
  br label %1170, !dbg !2078

; <label>:1170:                                   ; preds = %1168, %1136
  %1171 = phi %struct.lua_TValue* [ %1167, %1136 ], [ %1169, %1168 ], !dbg !2080
  %1172 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1171, i64 3, !dbg !2080
  store %struct.lua_TValue* %1172, %struct.lua_TValue** %47, align 8, !dbg !2080, !tbaa !566
  call void @luaD_call(%struct.lua_State* nonnull %0, %struct.lua_TValue* %1171, i32 1) #5, !dbg !2081
  %1173 = load i8*, i8** %108, align 8, !dbg !2082, !tbaa !563
  %1174 = getelementptr inbounds i8, i8* %1173, i64 %1141, !dbg !2082
  %1175 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !2083, !tbaa !566
  %1176 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1175, i64 -1, !dbg !2083
  store %struct.lua_TValue* %1176, %struct.lua_TValue** %47, align 8, !dbg !2083, !tbaa !566
  %1177 = bitcast %struct.lua_TValue* %1176 to i64*, !dbg !2084
  %1178 = bitcast i8* %1174 to i64*, !dbg !2084
  %1179 = load i64, i64* %1177, align 8, !dbg !2084
  store i64 %1179, i64* %1178, align 8, !dbg !2084
  %1180 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1175, i64 -1, i32 1, !dbg !2084
  %1181 = load i32, i32* %1180, align 8, !dbg !2084, !tbaa !423
  %1182 = getelementptr inbounds i8, i8* %1174, i64 8, !dbg !2084
  %1183 = bitcast i8* %1182 to i32*, !dbg !2084
  store i32 %1181, i32* %1183, align 8, !dbg !2084, !tbaa !423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2085
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2086
  br label %1185, !dbg !2087

; <label>:1184:                                   ; preds = %1131
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2086
  call void @luaG_aritherror(%struct.lua_State* nonnull %0, %struct.lua_TValue* nonnull %1064, %struct.lua_TValue* %1074) #5, !dbg !2088
  br label %1185, !dbg !2088

; <label>:1185:                                   ; preds = %1170, %1117, %1184
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %65) #4, !dbg !2089
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %64) #4, !dbg !2089
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2089
  %1186 = load %struct.lua_TValue*, %struct.lua_TValue** %37, align 8, !dbg !2005, !tbaa !974
  br label %2125

; <label>:1187:                                   ; preds = %222
  %1188 = lshr i32 %153, 23, !dbg !2090
  %1189 = zext i32 %1188 to i64, !dbg !2090
  %1190 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %1189, !dbg !2090
  %1191 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %1189, i32 1, !dbg !2092
  %1192 = load i32, i32* %1191, align 8, !dbg !2092, !tbaa !423
  %1193 = icmp eq i32 %1192, 3, !dbg !2092
  br i1 %1193, label %1194, label %1200, !dbg !2093

; <label>:1194:                                   ; preds = %1187
  %1195 = bitcast %struct.lua_TValue* %1190 to double*, !dbg !2094
  %1196 = load double, double* %1195, align 8, !dbg !2094, !tbaa !430
  %1197 = fsub double -0.000000e+00, %1196, !dbg !2096
  %1198 = bitcast %struct.lua_TValue* %227 to double*, !dbg !2096
  store double %1197, double* %1198, align 8, !dbg !2096, !tbaa !430
  %1199 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %226, i32 1, !dbg !2096
  store i32 3, i32* %1199, align 8, !dbg !2096, !tbaa !423
  br label %2125, !dbg !2097

; <label>:1200:                                   ; preds = %1187
  store i32* %152, i32** %35, align 8, !dbg !2098, !tbaa !1349
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %67) #4, !dbg !2108
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %68) #4, !dbg !2113
  %1201 = icmp eq i32 %1192, 4, !dbg !2114
  br i1 %1201, label %1202, label %1212, !dbg !2114

; <label>:1202:                                   ; preds = %1200
  %1203 = bitcast %struct.lua_TValue* %1190 to %union.TString**, !dbg !2115
  %1204 = load %union.TString*, %union.TString** %1203, align 8, !dbg !2115, !tbaa !430
  %1205 = getelementptr inbounds %union.TString, %union.TString* %1204, i64 1, !dbg !2115
  %1206 = bitcast %union.TString* %1205 to i8*, !dbg !2115
  %1207 = call i32 @luaO_str2d(i8* nonnull %1206, double* nonnull %4) #5, !dbg !2117
  %1208 = icmp eq i32 %1207, 0, !dbg !2117
  br i1 %1208, label %1212, label %1209, !dbg !2118

; <label>:1209:                                   ; preds = %1202
  %1210 = load i64, i64* %105, align 8, !dbg !2119, !tbaa !435
  store i64 %1210, i64* %106, align 8, !dbg !2119, !tbaa !430
  store i32 3, i32* %107, align 8, !dbg !2119, !tbaa !423
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %68) #4, !dbg !2120
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2120
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %80) #4, !dbg !2124
  %1211 = load i32, i32* %1191, align 8, !dbg !2125, !tbaa !423
  switch i32 %1211, label %1220 [
    i32 3, label %1221
    i32 4, label %1213
  ], !dbg !2126

; <label>:1212:                                   ; preds = %1200, %1202
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %68) #4, !dbg !2120
  br label %1226, !dbg !2127

; <label>:1213:                                   ; preds = %1209
  %1214 = bitcast %struct.lua_TValue* %1190 to %union.TString**, !dbg !2128
  %1215 = load %union.TString*, %union.TString** %1214, align 8, !dbg !2128, !tbaa !430
  %1216 = getelementptr inbounds %union.TString, %union.TString* %1215, i64 1, !dbg !2128
  %1217 = bitcast %union.TString* %1216 to i8*, !dbg !2128
  %1218 = call i32 @luaO_str2d(i8* nonnull %1217, double* nonnull %3) #5, !dbg !2130
  %1219 = icmp eq i32 %1218, 0, !dbg !2130
  br i1 %1219, label %1220, label %1221, !dbg !2131

; <label>:1220:                                   ; preds = %1209, %1213
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %80) #4, !dbg !2132
  br label %1226, !dbg !2134

; <label>:1221:                                   ; preds = %1213, %1209
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %80) #4, !dbg !2132
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2132
  %1222 = load double, double* %132, align 8, !dbg !2135, !tbaa !430
  %1223 = fsub double -0.000000e+00, %1222, !dbg !2137
  %1224 = bitcast %struct.lua_TValue* %227 to double*, !dbg !2137
  store double %1223, double* %1224, align 8, !dbg !2137, !tbaa !430
  %1225 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %226, i32 1, !dbg !2137
  store i32 3, i32* %1225, align 8, !dbg !2137, !tbaa !423
  br label %1283, !dbg !2138

; <label>:1226:                                   ; preds = %1220, %1212
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2132
  %1227 = call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* nonnull %0, %struct.lua_TValue* nonnull %1190, i32 11) #5, !dbg !2145
  %1228 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1227, i64 0, i32 1, !dbg !2147
  %1229 = load i32, i32* %1228, align 8, !dbg !2147, !tbaa !423
  %1230 = icmp eq i32 %1229, 0, !dbg !2147
  br i1 %1230, label %1231, label %1236, !dbg !2148

; <label>:1231:                                   ; preds = %1226
  %1232 = call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* nonnull %0, %struct.lua_TValue* nonnull %1190, i32 11) #5, !dbg !2149
  %1233 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1232, i64 0, i32 1
  %1234 = load i32, i32* %1233, align 8, !dbg !2150, !tbaa !423
  %1235 = icmp eq i32 %1234, 0, !dbg !2150
  br i1 %1235, label %1282, label %1236, !dbg !2151

; <label>:1236:                                   ; preds = %1231, %1226
  %1237 = phi i32* [ %1233, %1231 ], [ %1228, %1226 ], !dbg !2152
  %1238 = phi %struct.lua_TValue* [ %1232, %1231 ], [ %1227, %1226 ]
  %1239 = load i64, i64* %82, align 8, !dbg !2159, !tbaa !563
  %1240 = ptrtoint %struct.lua_TValue* %227 to i64, !dbg !2159
  %1241 = sub i64 %1240, %1239, !dbg !2159
  %1242 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !2152, !tbaa !566
  %1243 = bitcast %struct.lua_TValue* %1238 to i64*, !dbg !2152
  %1244 = bitcast %struct.lua_TValue* %1242 to i64*, !dbg !2152
  %1245 = load i64, i64* %1243, align 8, !dbg !2152
  store i64 %1245, i64* %1244, align 8, !dbg !2152
  %1246 = load i32, i32* %1237, align 8, !dbg !2152, !tbaa !423
  %1247 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1242, i64 0, i32 1, !dbg !2152
  store i32 %1246, i32* %1247, align 8, !dbg !2152, !tbaa !423
  %1248 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !2161, !tbaa !566
  %1249 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1248, i64 1, !dbg !2161
  %1250 = bitcast %struct.lua_TValue* %1190 to i64*, !dbg !2161
  %1251 = bitcast %struct.lua_TValue* %1249 to i64*, !dbg !2161
  %1252 = load i64, i64* %1250, align 8, !dbg !2161
  store i64 %1252, i64* %1251, align 8, !dbg !2161
  %1253 = load i32, i32* %1191, align 8, !dbg !2161, !tbaa !423
  %1254 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1248, i64 1, i32 1, !dbg !2161
  store i32 %1253, i32* %1254, align 8, !dbg !2161, !tbaa !423
  %1255 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !2162, !tbaa !566
  %1256 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1255, i64 2, !dbg !2162
  %1257 = bitcast %struct.lua_TValue* %1256 to i64*, !dbg !2162
  %1258 = load i64, i64* %1250, align 8, !dbg !2162
  store i64 %1258, i64* %1257, align 8, !dbg !2162
  %1259 = load i32, i32* %1191, align 8, !dbg !2162, !tbaa !423
  %1260 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1255, i64 2, i32 1, !dbg !2162
  store i32 %1259, i32* %1260, align 8, !dbg !2162, !tbaa !423
  %1261 = load i64, i64* %72, align 8, !dbg !2163, !tbaa !571
  %1262 = load i64, i64* %48, align 8, !dbg !2163, !tbaa !566
  %1263 = sub i64 %1261, %1262, !dbg !2163
  %1264 = icmp slt i64 %1263, 49, !dbg !2163
  %1265 = inttoptr i64 %1262 to %struct.lua_TValue*, !dbg !2164
  br i1 %1264, label %1266, label %1268, !dbg !2164

; <label>:1266:                                   ; preds = %1236
  call void @luaD_growstack(%struct.lua_State* nonnull %0, i32 3) #5, !dbg !2163
  %1267 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !2165, !tbaa !566
  br label %1268, !dbg !2163

; <label>:1268:                                   ; preds = %1266, %1236
  %1269 = phi %struct.lua_TValue* [ %1265, %1236 ], [ %1267, %1266 ], !dbg !2165
  %1270 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1269, i64 3, !dbg !2165
  store %struct.lua_TValue* %1270, %struct.lua_TValue** %47, align 8, !dbg !2165, !tbaa !566
  call void @luaD_call(%struct.lua_State* nonnull %0, %struct.lua_TValue* %1269, i32 1) #5, !dbg !2166
  %1271 = load i8*, i8** %108, align 8, !dbg !2167, !tbaa !563
  %1272 = getelementptr inbounds i8, i8* %1271, i64 %1241, !dbg !2167
  %1273 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !2168, !tbaa !566
  %1274 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1273, i64 -1, !dbg !2168
  store %struct.lua_TValue* %1274, %struct.lua_TValue** %47, align 8, !dbg !2168, !tbaa !566
  %1275 = bitcast %struct.lua_TValue* %1274 to i64*, !dbg !2169
  %1276 = bitcast i8* %1272 to i64*, !dbg !2169
  %1277 = load i64, i64* %1275, align 8, !dbg !2169
  store i64 %1277, i64* %1276, align 8, !dbg !2169
  %1278 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1273, i64 -1, i32 1, !dbg !2169
  %1279 = load i32, i32* %1278, align 8, !dbg !2169, !tbaa !423
  %1280 = getelementptr inbounds i8, i8* %1272, i64 8, !dbg !2169
  %1281 = bitcast i8* %1280 to i32*, !dbg !2169
  store i32 %1279, i32* %1281, align 8, !dbg !2169, !tbaa !423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2170
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2171
  br label %1283, !dbg !2172

; <label>:1282:                                   ; preds = %1231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2171
  call void @luaG_aritherror(%struct.lua_State* nonnull %0, %struct.lua_TValue* nonnull %1190, %struct.lua_TValue* nonnull %1190) #5, !dbg !2173
  br label %1283, !dbg !2173

; <label>:1283:                                   ; preds = %1268, %1221, %1282
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %67) #4, !dbg !2174
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2174
  %1284 = load %struct.lua_TValue*, %struct.lua_TValue** %37, align 8, !dbg !2098, !tbaa !974
  br label %2125

; <label>:1285:                                   ; preds = %222
  %1286 = lshr i32 %153, 23, !dbg !2175
  %1287 = zext i32 %1286 to i64, !dbg !2175
  %1288 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %1287, i32 1, !dbg !2175
  %1289 = load i32, i32* %1288, align 8, !dbg !2175, !tbaa !423
  switch i32 %1289, label %1295 [
    i32 0, label %1296
    i32 1, label %1290
  ], !dbg !2175

; <label>:1290:                                   ; preds = %1285
  %1291 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %1287, i32 0, !dbg !2175
  %1292 = bitcast %union.Value* %1291 to i32*, !dbg !2175
  %1293 = load i32, i32* %1292, align 8, !dbg !2175, !tbaa !430
  %1294 = icmp eq i32 %1293, 0, !dbg !2175
  br label %1296

; <label>:1295:                                   ; preds = %1285
  br label %1296, !dbg !2175

; <label>:1296:                                   ; preds = %1285, %1295, %1290
  %1297 = phi i1 [ true, %1285 ], [ %1294, %1290 ], [ false, %1295 ]
  %1298 = zext i1 %1297 to i32, !dbg !2175
  %1299 = bitcast %struct.lua_TValue* %227 to i32*, !dbg !2177
  store i32 %1298, i32* %1299, align 8, !dbg !2177, !tbaa !430
  %1300 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %226, i32 1, !dbg !2177
  store i32 1, i32* %1300, align 8, !dbg !2177, !tbaa !423
  br label %2125

; <label>:1301:                                   ; preds = %222
  %1302 = lshr i32 %153, 23, !dbg !2178
  %1303 = zext i32 %1302 to i64, !dbg !2178
  %1304 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %1303, !dbg !2178
  %1305 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %1303, i32 1, !dbg !2180
  %1306 = load i32, i32* %1305, align 8, !dbg !2180, !tbaa !423
  switch i32 %1306, label %1322 [
    i32 5, label %1307
    i32 4, label %1314
  ], !dbg !2181

; <label>:1307:                                   ; preds = %1301
  %1308 = bitcast %struct.lua_TValue* %1304 to %struct.Table**, !dbg !2182
  %1309 = load %struct.Table*, %struct.Table** %1308, align 8, !dbg !2182, !tbaa !430
  %1310 = call i32 @luaH_getn(%struct.Table* %1309) #5, !dbg !2182
  %1311 = sitofp i32 %1310 to double, !dbg !2182
  %1312 = bitcast %struct.lua_TValue* %227 to double*, !dbg !2182
  store double %1311, double* %1312, align 8, !dbg !2182, !tbaa !430
  %1313 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %226, i32 1, !dbg !2182
  store i32 3, i32* %1313, align 8, !dbg !2182, !tbaa !423
  br label %2125, !dbg !2183

; <label>:1314:                                   ; preds = %1301
  %1315 = bitcast %struct.lua_TValue* %1304 to %struct.anon**, !dbg !2184
  %1316 = load %struct.anon*, %struct.anon** %1315, align 8, !dbg !2184, !tbaa !430
  %1317 = getelementptr inbounds %struct.anon, %struct.anon* %1316, i64 0, i32 5, !dbg !2184
  %1318 = load i64, i64* %1317, align 8, !dbg !2184, !tbaa !430
  %1319 = uitofp i64 %1318 to double, !dbg !2184
  %1320 = bitcast %struct.lua_TValue* %227 to double*, !dbg !2184
  store double %1319, double* %1320, align 8, !dbg !2184, !tbaa !430
  %1321 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %226, i32 1, !dbg !2184
  store i32 3, i32* %1321, align 8, !dbg !2184, !tbaa !423
  br label %2125, !dbg !2185

; <label>:1322:                                   ; preds = %1301
  store i32* %152, i32** %35, align 8, !dbg !2186, !tbaa !1349
  %1323 = call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* nonnull %0, %struct.lua_TValue* %1304, i32 12) #5, !dbg !2197
  %1324 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1323, i64 0, i32 1, !dbg !2199
  %1325 = load i32, i32* %1324, align 8, !dbg !2199, !tbaa !423
  %1326 = icmp eq i32 %1325, 0, !dbg !2199
  br i1 %1326, label %1327, label %1332, !dbg !2200

; <label>:1327:                                   ; preds = %1322
  %1328 = call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* nonnull %0, %struct.lua_TValue* nonnull @luaO_nilobject_, i32 12) #5, !dbg !2201
  %1329 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1328, i64 0, i32 1
  %1330 = load i32, i32* %1329, align 8, !dbg !2202, !tbaa !423
  %1331 = icmp eq i32 %1330, 0, !dbg !2202
  br i1 %1331, label %1376, label %1332, !dbg !2203

; <label>:1332:                                   ; preds = %1327, %1322
  %1333 = phi i32* [ %1329, %1327 ], [ %1324, %1322 ], !dbg !2204
  %1334 = phi %struct.lua_TValue* [ %1328, %1327 ], [ %1323, %1322 ]
  %1335 = load i64, i64* %82, align 8, !dbg !2211, !tbaa !563
  %1336 = ptrtoint %struct.lua_TValue* %227 to i64, !dbg !2211
  %1337 = sub i64 %1336, %1335, !dbg !2211
  %1338 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !2204, !tbaa !566
  %1339 = bitcast %struct.lua_TValue* %1334 to i64*, !dbg !2204
  %1340 = bitcast %struct.lua_TValue* %1338 to i64*, !dbg !2204
  %1341 = load i64, i64* %1339, align 8, !dbg !2204
  store i64 %1341, i64* %1340, align 8, !dbg !2204
  %1342 = load i32, i32* %1333, align 8, !dbg !2204, !tbaa !423
  %1343 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1338, i64 0, i32 1, !dbg !2204
  store i32 %1342, i32* %1343, align 8, !dbg !2204, !tbaa !423
  %1344 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !2213, !tbaa !566
  %1345 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1344, i64 1, !dbg !2213
  %1346 = bitcast %struct.lua_TValue* %1304 to i64*, !dbg !2213
  %1347 = bitcast %struct.lua_TValue* %1345 to i64*, !dbg !2213
  %1348 = load i64, i64* %1346, align 8, !dbg !2213
  store i64 %1348, i64* %1347, align 8, !dbg !2213
  %1349 = load i32, i32* %1305, align 8, !dbg !2213, !tbaa !423
  %1350 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1344, i64 1, i32 1, !dbg !2213
  store i32 %1349, i32* %1350, align 8, !dbg !2213, !tbaa !423
  %1351 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !2214, !tbaa !566
  %1352 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1351, i64 2, !dbg !2214
  %1353 = bitcast %struct.lua_TValue* %1352 to i64*, !dbg !2214
  store i64 %83, i64* %1353, align 8, !dbg !2214
  %1354 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1351, i64 2, i32 1, !dbg !2214
  store i32 %84, i32* %1354, align 8, !dbg !2214, !tbaa !423
  %1355 = load i64, i64* %72, align 8, !dbg !2215, !tbaa !571
  %1356 = load i64, i64* %48, align 8, !dbg !2215, !tbaa !566
  %1357 = sub i64 %1355, %1356, !dbg !2215
  %1358 = icmp slt i64 %1357, 49, !dbg !2215
  %1359 = inttoptr i64 %1356 to %struct.lua_TValue*, !dbg !2216
  br i1 %1358, label %1360, label %1362, !dbg !2216

; <label>:1360:                                   ; preds = %1332
  call void @luaD_growstack(%struct.lua_State* nonnull %0, i32 3) #5, !dbg !2215
  %1361 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !2217, !tbaa !566
  br label %1362, !dbg !2215

; <label>:1362:                                   ; preds = %1360, %1332
  %1363 = phi %struct.lua_TValue* [ %1359, %1332 ], [ %1361, %1360 ], !dbg !2217
  %1364 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1363, i64 3, !dbg !2217
  store %struct.lua_TValue* %1364, %struct.lua_TValue** %47, align 8, !dbg !2217, !tbaa !566
  call void @luaD_call(%struct.lua_State* nonnull %0, %struct.lua_TValue* %1363, i32 1) #5, !dbg !2218
  %1365 = load i8*, i8** %108, align 8, !dbg !2219, !tbaa !563
  %1366 = getelementptr inbounds i8, i8* %1365, i64 %1337, !dbg !2219
  %1367 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !2220, !tbaa !566
  %1368 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1367, i64 -1, !dbg !2220
  store %struct.lua_TValue* %1368, %struct.lua_TValue** %47, align 8, !dbg !2220, !tbaa !566
  %1369 = bitcast %struct.lua_TValue* %1368 to i64*, !dbg !2221
  %1370 = bitcast i8* %1366 to i64*, !dbg !2221
  %1371 = load i64, i64* %1369, align 8, !dbg !2221
  store i64 %1371, i64* %1370, align 8, !dbg !2221
  %1372 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1367, i64 -1, i32 1, !dbg !2221
  %1373 = load i32, i32* %1372, align 8, !dbg !2221, !tbaa !423
  %1374 = getelementptr inbounds i8, i8* %1366, i64 8, !dbg !2221
  %1375 = bitcast i8* %1374 to i32*, !dbg !2221
  store i32 %1373, i32* %1375, align 8, !dbg !2221, !tbaa !423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2222
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2223
  br label %1377, !dbg !2224

; <label>:1376:                                   ; preds = %1327
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2223
  call void @luaG_typeerror(%struct.lua_State* nonnull %0, %struct.lua_TValue* %1304, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !2225
  br label %1377, !dbg !2225

; <label>:1377:                                   ; preds = %1362, %1376
  %1378 = load %struct.lua_TValue*, %struct.lua_TValue** %37, align 8, !dbg !2186, !tbaa !974
  br label %2125, !dbg !2226

; <label>:1379:                                   ; preds = %222
  %1380 = lshr i32 %153, 23, !dbg !2227
  %1381 = lshr i32 %153, 14, !dbg !2229
  %1382 = and i32 %1381, 511, !dbg !2229
  store i32* %152, i32** %35, align 8, !dbg !2231, !tbaa !1349
  %1383 = sub nsw i32 1, %1380, !dbg !2233
  %1384 = add nsw i32 %1383, %1382, !dbg !2233
  call void @luaV_concat(%struct.lua_State* nonnull %0, i32 %1384, i32 %1382) #6, !dbg !2233
  %1385 = load %struct.global_State*, %struct.global_State** %46, align 8, !dbg !2235, !tbaa !515
  %1386 = getelementptr inbounds %struct.global_State, %struct.global_State* %1385, i64 0, i32 14, !dbg !2235
  %1387 = load i64, i64* %1386, align 8, !dbg !2235, !tbaa !1522
  %1388 = getelementptr inbounds %struct.global_State, %struct.global_State* %1385, i64 0, i32 13, !dbg !2235
  %1389 = load i64, i64* %1388, align 8, !dbg !2235, !tbaa !1526
  %1390 = icmp ult i64 %1387, %1389, !dbg !2235
  br i1 %1390, label %1392, label %1391, !dbg !2238

; <label>:1391:                                   ; preds = %1379
  call void @luaC_step(%struct.lua_State* nonnull %0) #5, !dbg !2235
  br label %1392, !dbg !2235

; <label>:1392:                                   ; preds = %1379, %1391
  %1393 = load %struct.lua_TValue*, %struct.lua_TValue** %37, align 8, !dbg !2231, !tbaa !974
  %1394 = zext i32 %1380 to i64, !dbg !2239
  %1395 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1393, i64 %1394, !dbg !2239
  %1396 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1393, i64 %226, !dbg !2239
  %1397 = bitcast %struct.lua_TValue* %1395 to i64*, !dbg !2239
  %1398 = bitcast %struct.lua_TValue* %1396 to i64*, !dbg !2239
  %1399 = load i64, i64* %1397, align 8, !dbg !2239
  store i64 %1399, i64* %1398, align 8, !dbg !2239
  %1400 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1393, i64 %1394, i32 1, !dbg !2239
  %1401 = load i32, i32* %1400, align 8, !dbg !2239, !tbaa !423
  %1402 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1393, i64 %226, i32 1, !dbg !2239
  store i32 %1401, i32* %1402, align 8, !dbg !2239, !tbaa !423
  br label %2125

; <label>:1403:                                   ; preds = %222
  %1404 = lshr i32 %153, 14, !dbg !2240
  %1405 = add nsw i32 %1404, -131071, !dbg !2240
  %1406 = sext i32 %1405 to i64, !dbg !2240
  %1407 = getelementptr inbounds i32, i32* %152, i64 %1406, !dbg !2240
  br label %2125, !dbg !2243

; <label>:1408:                                   ; preds = %222
  %1409 = lshr i32 %153, 23, !dbg !2244
  %1410 = icmp slt i32 %153, 0, !dbg !2244
  %1411 = and i32 %1409, 255, !dbg !2244
  %1412 = zext i32 %1411 to i64, !dbg !2244
  %1413 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %146, i64 %1412, !dbg !2244
  %1414 = zext i32 %1409 to i64, !dbg !2244
  %1415 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %1414, !dbg !2244
  %1416 = select i1 %1410, %struct.lua_TValue* %1413, %struct.lua_TValue* %1415, !dbg !2244
  %1417 = lshr i32 %153, 14, !dbg !2246
  %1418 = and i32 %153, 4194304, !dbg !2246
  %1419 = icmp eq i32 %1418, 0, !dbg !2246
  %1420 = and i32 %1417, 255, !dbg !2246
  %1421 = zext i32 %1420 to i64, !dbg !2246
  %1422 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %146, i64 %1421, !dbg !2246
  %1423 = and i32 %1417, 511, !dbg !2246
  %1424 = zext i32 %1423 to i64, !dbg !2246
  %1425 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %1424, !dbg !2246
  %1426 = select i1 %1419, %struct.lua_TValue* %1425, %struct.lua_TValue* %1422, !dbg !2246
  store i32* %152, i32** %35, align 8, !dbg !2248, !tbaa !1349
  %1427 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1416, i64 0, i32 1, !dbg !2250
  %1428 = load i32, i32* %1427, align 8, !dbg !2250, !tbaa !423
  %1429 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1426, i64 0, i32 1, !dbg !2250
  %1430 = load i32, i32* %1429, align 8, !dbg !2250, !tbaa !423
  %1431 = icmp eq i32 %1428, %1430, !dbg !2250
  br i1 %1431, label %1432, label %1435, !dbg !2250

; <label>:1432:                                   ; preds = %1408
  %1433 = call i32 @luaV_equalval(%struct.lua_State* nonnull %0, %struct.lua_TValue* %1416, %struct.lua_TValue* %1426) #6, !dbg !2250
  %1434 = icmp ne i32 %1433, 0, !dbg !2250
  br label %1435

; <label>:1435:                                   ; preds = %1432, %1408
  %1436 = phi i1 [ false, %1408 ], [ %1434, %1432 ], !dbg !2253
  %1437 = zext i1 %1436 to i32, !dbg !2250
  %1438 = icmp eq i32 %225, %1437, !dbg !2250
  br i1 %1438, label %1439, label %1445, !dbg !2254

; <label>:1439:                                   ; preds = %1435
  %1440 = load i32, i32* %152, align 4, !dbg !2255, !tbaa !1370
  %1441 = lshr i32 %1440, 14, !dbg !2255
  %1442 = add nsw i32 %1441, -131071, !dbg !2255
  %1443 = sext i32 %1442 to i64, !dbg !2255
  %1444 = getelementptr inbounds i32, i32* %152, i64 %1443, !dbg !2255
  br label %1445, !dbg !2255

; <label>:1445:                                   ; preds = %1439, %1435
  %1446 = phi i32* [ %1444, %1439 ], [ %152, %1435 ], !dbg !1366
  %1447 = load %struct.lua_TValue*, %struct.lua_TValue** %37, align 8, !dbg !2248, !tbaa !974
  %1448 = getelementptr inbounds i32, i32* %1446, i64 1, !dbg !2257
  br label %2125

; <label>:1449:                                   ; preds = %222
  store i32* %152, i32** %35, align 8, !dbg !2258, !tbaa !1349
  %1450 = lshr i32 %153, 23, !dbg !2261
  %1451 = icmp slt i32 %153, 0, !dbg !2261
  %1452 = and i32 %1450, 255, !dbg !2261
  %1453 = zext i32 %1452 to i64, !dbg !2261
  %1454 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %146, i64 %1453, !dbg !2261
  %1455 = zext i32 %1450 to i64, !dbg !2261
  %1456 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %1455, !dbg !2261
  %1457 = select i1 %1451, %struct.lua_TValue* %1454, %struct.lua_TValue* %1456, !dbg !2261
  %1458 = lshr i32 %153, 14, !dbg !2261
  %1459 = and i32 %153, 4194304, !dbg !2261
  %1460 = icmp eq i32 %1459, 0, !dbg !2261
  %1461 = and i32 %1458, 255, !dbg !2261
  %1462 = zext i32 %1461 to i64, !dbg !2261
  %1463 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %146, i64 %1462, !dbg !2261
  %1464 = and i32 %1458, 511, !dbg !2261
  %1465 = zext i32 %1464 to i64, !dbg !2261
  %1466 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %1465, !dbg !2261
  %1467 = select i1 %1460, %struct.lua_TValue* %1466, %struct.lua_TValue* %1463, !dbg !2261
  %1468 = call i32 @luaV_lessthan(%struct.lua_State* nonnull %0, %struct.lua_TValue* %1457, %struct.lua_TValue* %1467) #6, !dbg !2261
  %1469 = icmp eq i32 %1468, %225, !dbg !2261
  br i1 %1469, label %1470, label %1476, !dbg !2264

; <label>:1470:                                   ; preds = %1449
  %1471 = load i32, i32* %152, align 4, !dbg !2265, !tbaa !1370
  %1472 = lshr i32 %1471, 14, !dbg !2265
  %1473 = add nsw i32 %1472, -131071, !dbg !2265
  %1474 = sext i32 %1473 to i64, !dbg !2265
  %1475 = getelementptr inbounds i32, i32* %152, i64 %1474, !dbg !2265
  br label %1476, !dbg !2265

; <label>:1476:                                   ; preds = %1470, %1449
  %1477 = phi i32* [ %1475, %1470 ], [ %152, %1449 ], !dbg !1366
  %1478 = load %struct.lua_TValue*, %struct.lua_TValue** %37, align 8, !dbg !2258, !tbaa !974
  %1479 = getelementptr inbounds i32, i32* %1477, i64 1, !dbg !2267
  br label %2125, !dbg !2268

; <label>:1480:                                   ; preds = %222
  store i32* %152, i32** %35, align 8, !dbg !2269, !tbaa !1349
  %1481 = lshr i32 %153, 23, !dbg !2272
  %1482 = icmp slt i32 %153, 0, !dbg !2272
  %1483 = and i32 %1481, 255, !dbg !2272
  %1484 = zext i32 %1483 to i64, !dbg !2272
  %1485 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %146, i64 %1484, !dbg !2272
  %1486 = zext i32 %1481 to i64, !dbg !2272
  %1487 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %1486, !dbg !2272
  %1488 = select i1 %1482, %struct.lua_TValue* %1485, %struct.lua_TValue* %1487, !dbg !2272
  %1489 = lshr i32 %153, 14, !dbg !2272
  %1490 = and i32 %153, 4194304, !dbg !2272
  %1491 = icmp eq i32 %1490, 0, !dbg !2272
  %1492 = and i32 %1489, 255, !dbg !2272
  %1493 = zext i32 %1492 to i64, !dbg !2272
  %1494 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %146, i64 %1493, !dbg !2272
  %1495 = and i32 %1489, 511, !dbg !2272
  %1496 = zext i32 %1495 to i64, !dbg !2272
  %1497 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %1496, !dbg !2272
  %1498 = select i1 %1491, %struct.lua_TValue* %1497, %struct.lua_TValue* %1494, !dbg !2272
  %1499 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1488, i64 0, i32 1, !dbg !2285
  %1500 = load i32, i32* %1499, align 8, !dbg !2285, !tbaa !423
  %1501 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1498, i64 0, i32 1, !dbg !2287
  %1502 = load i32, i32* %1501, align 8, !dbg !2287, !tbaa !423
  %1503 = icmp eq i32 %1500, %1502, !dbg !2288
  br i1 %1503, label %1506, label %1504, !dbg !2289

; <label>:1504:                                   ; preds = %1480
  %1505 = call i32 @luaG_ordererror(%struct.lua_State* nonnull %0, %struct.lua_TValue* nonnull %1488, %struct.lua_TValue* nonnull %1498) #5, !dbg !2290
  br label %1685, !dbg !2291

; <label>:1506:                                   ; preds = %1480
  switch i32 %1500, label %1553 [
    i32 3, label %1507
    i32 4, label %1514
  ], !dbg !2292

; <label>:1507:                                   ; preds = %1506
  %1508 = bitcast %struct.lua_TValue* %1488 to double*, !dbg !2293
  %1509 = load double, double* %1508, align 8, !dbg !2293, !tbaa !430
  %1510 = bitcast %struct.lua_TValue* %1498 to double*, !dbg !2293
  %1511 = load double, double* %1510, align 8, !dbg !2293, !tbaa !430
  %1512 = fcmp ole double %1509, %1511, !dbg !2293
  %1513 = zext i1 %1512 to i32, !dbg !2293
  br label %1685, !dbg !2295

; <label>:1514:                                   ; preds = %1506
  %1515 = bitcast %struct.lua_TValue* %1488 to %union.TString**, !dbg !2296
  %1516 = load %union.TString*, %union.TString** %1515, align 8, !dbg !2296, !tbaa !430
  %1517 = bitcast %struct.lua_TValue* %1498 to %union.TString**, !dbg !2298
  %1518 = load %union.TString*, %union.TString** %1517, align 8, !dbg !2298, !tbaa !430
  %1519 = getelementptr inbounds %union.TString, %union.TString* %1516, i64 1, !dbg !2302
  %1520 = bitcast %union.TString* %1519 to i8*, !dbg !2302
  %1521 = getelementptr inbounds %union.TString, %union.TString* %1516, i64 0, i32 0, i32 5, !dbg !2304
  %1522 = load i64, i64* %1521, align 8, !dbg !2304, !tbaa !430
  %1523 = getelementptr inbounds %union.TString, %union.TString* %1518, i64 1, !dbg !2306
  %1524 = bitcast %union.TString* %1523 to i8*, !dbg !2306
  %1525 = getelementptr inbounds %union.TString, %union.TString* %1518, i64 0, i32 0, i32 5, !dbg !2308
  %1526 = load i64, i64* %1525, align 8, !dbg !2308, !tbaa !430
  %1527 = call i32 @strcoll(i8* nonnull %1520, i8* nonnull %1524) #5, !dbg !2310
  %1528 = icmp eq i32 %1527, 0, !dbg !2312
  br i1 %1528, label %1529, label %1549, !dbg !2313

; <label>:1529:                                   ; preds = %1514, %1541
  %1530 = phi i64 [ %1546, %1541 ], [ %1526, %1514 ]
  %1531 = phi i8* [ %1545, %1541 ], [ %1524, %1514 ]
  %1532 = phi i64 [ %1544, %1541 ], [ %1522, %1514 ]
  %1533 = phi i8* [ %1543, %1541 ], [ %1520, %1514 ]
  %1534 = call i64 @strlen(i8* %1533) #5, !dbg !2314
  %1535 = icmp eq i64 %1534, %1530, !dbg !2316
  %1536 = icmp eq i64 %1534, %1532, !dbg !2317
  br i1 %1535, label %1537, label %1540, !dbg !2318

; <label>:1537:                                   ; preds = %1529
  %1538 = xor i1 %1536, true, !dbg !2319
  %1539 = zext i1 %1538 to i32, !dbg !2319
  br label %1549, !dbg !2320

; <label>:1540:                                   ; preds = %1529
  br i1 %1536, label %1549, label %1541, !dbg !2321

; <label>:1541:                                   ; preds = %1540
  %1542 = add i64 %1534, 1, !dbg !2322
  %1543 = getelementptr inbounds i8, i8* %1533, i64 %1542, !dbg !2323
  %1544 = sub i64 %1532, %1542, !dbg !2324
  %1545 = getelementptr inbounds i8, i8* %1531, i64 %1542, !dbg !2325
  %1546 = sub i64 %1530, %1542, !dbg !2326
  %1547 = call i32 @strcoll(i8* %1543, i8* %1545) #5, !dbg !2310
  %1548 = icmp eq i32 %1547, 0, !dbg !2312
  br i1 %1548, label %1529, label %1549, !dbg !2313

; <label>:1549:                                   ; preds = %1541, %1540, %1537, %1514
  %1550 = phi i32 [ %1539, %1537 ], [ %1527, %1514 ], [ %1547, %1541 ], [ -1, %1540 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2327
  %1551 = icmp slt i32 %1550, 1, !dbg !2328
  %1552 = zext i1 %1551 to i32, !dbg !2328
  br label %1685, !dbg !2329

; <label>:1553:                                   ; preds = %1506
  %1554 = call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* nonnull %0, %struct.lua_TValue* nonnull %1488, i32 14) #5, !dbg !2336
  %1555 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1554, i64 0, i32 1, !dbg !2338
  %1556 = load i32, i32* %1555, align 8, !dbg !2338, !tbaa !423
  %1557 = icmp eq i32 %1556, 0, !dbg !2338
  br i1 %1557, label %1618, label %1558, !dbg !2339

; <label>:1558:                                   ; preds = %1553
  %1559 = call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* nonnull %0, %struct.lua_TValue* nonnull %1498, i32 14) #5, !dbg !2340
  %1560 = call i32 @luaO_rawequalObj(%struct.lua_TValue* %1554, %struct.lua_TValue* %1559) #5, !dbg !2342
  %1561 = icmp eq i32 %1560, 0, !dbg !2342
  br i1 %1561, label %1618, label %1562, !dbg !2343

; <label>:1562:                                   ; preds = %1558
  %1563 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !2344, !tbaa !566
  %1564 = load i64, i64* %82, align 8, !dbg !2351, !tbaa !563
  %1565 = ptrtoint %struct.lua_TValue* %1563 to i64, !dbg !2351
  %1566 = sub i64 %1565, %1564, !dbg !2351
  %1567 = bitcast %struct.lua_TValue* %1554 to i64*, !dbg !2353
  %1568 = bitcast %struct.lua_TValue* %1563 to i64*, !dbg !2353
  %1569 = load i64, i64* %1567, align 8, !dbg !2353
  store i64 %1569, i64* %1568, align 8, !dbg !2353
  %1570 = load i32, i32* %1555, align 8, !dbg !2353, !tbaa !423
  %1571 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1563, i64 0, i32 1, !dbg !2353
  store i32 %1570, i32* %1571, align 8, !dbg !2353, !tbaa !423
  %1572 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !2354, !tbaa !566
  %1573 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1572, i64 1, !dbg !2354
  %1574 = bitcast %struct.lua_TValue* %1488 to i64*, !dbg !2354
  %1575 = bitcast %struct.lua_TValue* %1573 to i64*, !dbg !2354
  %1576 = load i64, i64* %1574, align 8, !dbg !2354
  store i64 %1576, i64* %1575, align 8, !dbg !2354
  %1577 = load i32, i32* %1499, align 8, !dbg !2354, !tbaa !423
  %1578 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1572, i64 1, i32 1, !dbg !2354
  store i32 %1577, i32* %1578, align 8, !dbg !2354, !tbaa !423
  %1579 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !2355, !tbaa !566
  %1580 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1579, i64 2, !dbg !2355
  %1581 = bitcast %struct.lua_TValue* %1498 to i64*, !dbg !2355
  %1582 = bitcast %struct.lua_TValue* %1580 to i64*, !dbg !2355
  %1583 = load i64, i64* %1581, align 8, !dbg !2355
  store i64 %1583, i64* %1582, align 8, !dbg !2355
  %1584 = load i32, i32* %1501, align 8, !dbg !2355, !tbaa !423
  %1585 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1579, i64 2, i32 1, !dbg !2355
  store i32 %1584, i32* %1585, align 8, !dbg !2355, !tbaa !423
  %1586 = load i64, i64* %72, align 8, !dbg !2356, !tbaa !571
  %1587 = load i64, i64* %48, align 8, !dbg !2356, !tbaa !566
  %1588 = sub i64 %1586, %1587, !dbg !2356
  %1589 = icmp slt i64 %1588, 49, !dbg !2356
  %1590 = inttoptr i64 %1587 to %struct.lua_TValue*, !dbg !2357
  br i1 %1589, label %1591, label %1593, !dbg !2357

; <label>:1591:                                   ; preds = %1562
  call void @luaD_growstack(%struct.lua_State* nonnull %0, i32 3) #5, !dbg !2356
  %1592 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !2358, !tbaa !566
  br label %1593, !dbg !2356

; <label>:1593:                                   ; preds = %1591, %1562
  %1594 = phi %struct.lua_TValue* [ %1590, %1562 ], [ %1592, %1591 ], !dbg !2358
  %1595 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1594, i64 3, !dbg !2358
  store %struct.lua_TValue* %1595, %struct.lua_TValue** %47, align 8, !dbg !2358, !tbaa !566
  call void @luaD_call(%struct.lua_State* nonnull %0, %struct.lua_TValue* %1594, i32 1) #5, !dbg !2359
  %1596 = load i8*, i8** %108, align 8, !dbg !2360, !tbaa !563
  %1597 = getelementptr inbounds i8, i8* %1596, i64 %1566, !dbg !2360
  %1598 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !2361, !tbaa !566
  %1599 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1598, i64 -1, !dbg !2361
  store %struct.lua_TValue* %1599, %struct.lua_TValue** %47, align 8, !dbg !2361, !tbaa !566
  %1600 = bitcast %struct.lua_TValue* %1599 to i64*, !dbg !2362
  %1601 = bitcast i8* %1597 to i64*, !dbg !2362
  %1602 = load i64, i64* %1600, align 8, !dbg !2362
  store i64 %1602, i64* %1601, align 8, !dbg !2362
  %1603 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1598, i64 -1, i32 1, !dbg !2362
  %1604 = load i32, i32* %1603, align 8, !dbg !2362, !tbaa !423
  %1605 = getelementptr inbounds i8, i8* %1597, i64 8, !dbg !2362
  %1606 = bitcast i8* %1605 to i32*, !dbg !2362
  store i32 %1604, i32* %1606, align 8, !dbg !2362, !tbaa !423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2363
  %1607 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !2364, !tbaa !566
  %1608 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1607, i64 0, i32 1, !dbg !2364
  %1609 = load i32, i32* %1608, align 8, !dbg !2364, !tbaa !423
  switch i32 %1609, label %1615 [
    i32 0, label %1616
    i32 1, label %1610
  ], !dbg !2364

; <label>:1610:                                   ; preds = %1593
  %1611 = bitcast %struct.lua_TValue* %1607 to i32*, !dbg !2364
  %1612 = load i32, i32* %1611, align 8, !dbg !2364, !tbaa !430
  %1613 = icmp ne i32 %1612, 0, !dbg !2364
  %1614 = zext i1 %1613 to i32
  br label %1616

; <label>:1615:                                   ; preds = %1593
  br label %1616, !dbg !2365

; <label>:1616:                                   ; preds = %1615, %1610, %1593
  %1617 = phi i32 [ 1, %1615 ], [ %1614, %1610 ], [ %1609, %1593 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2366
  br label %1685, !dbg !2368

; <label>:1618:                                   ; preds = %1558, %1553
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2366
  %1619 = call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* nonnull %0, %struct.lua_TValue* nonnull %1498, i32 13) #5, !dbg !2375
  %1620 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1619, i64 0, i32 1, !dbg !2377
  %1621 = load i32, i32* %1620, align 8, !dbg !2377, !tbaa !423
  %1622 = icmp eq i32 %1621, 0, !dbg !2377
  br i1 %1622, label %1683, label %1623, !dbg !2378

; <label>:1623:                                   ; preds = %1618
  %1624 = call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* nonnull %0, %struct.lua_TValue* nonnull %1488, i32 13) #5, !dbg !2379
  %1625 = call i32 @luaO_rawequalObj(%struct.lua_TValue* %1619, %struct.lua_TValue* %1624) #5, !dbg !2381
  %1626 = icmp eq i32 %1625, 0, !dbg !2381
  br i1 %1626, label %1683, label %1627, !dbg !2382

; <label>:1627:                                   ; preds = %1623
  %1628 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !2383, !tbaa !566
  %1629 = load i64, i64* %82, align 8, !dbg !2390, !tbaa !563
  %1630 = ptrtoint %struct.lua_TValue* %1628 to i64, !dbg !2390
  %1631 = sub i64 %1630, %1629, !dbg !2390
  %1632 = bitcast %struct.lua_TValue* %1619 to i64*, !dbg !2392
  %1633 = bitcast %struct.lua_TValue* %1628 to i64*, !dbg !2392
  %1634 = load i64, i64* %1632, align 8, !dbg !2392
  store i64 %1634, i64* %1633, align 8, !dbg !2392
  %1635 = load i32, i32* %1620, align 8, !dbg !2392, !tbaa !423
  %1636 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1628, i64 0, i32 1, !dbg !2392
  store i32 %1635, i32* %1636, align 8, !dbg !2392, !tbaa !423
  %1637 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !2393, !tbaa !566
  %1638 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1637, i64 1, !dbg !2393
  %1639 = bitcast %struct.lua_TValue* %1498 to i64*, !dbg !2393
  %1640 = bitcast %struct.lua_TValue* %1638 to i64*, !dbg !2393
  %1641 = load i64, i64* %1639, align 8, !dbg !2393
  store i64 %1641, i64* %1640, align 8, !dbg !2393
  %1642 = load i32, i32* %1501, align 8, !dbg !2393, !tbaa !423
  %1643 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1637, i64 1, i32 1, !dbg !2393
  store i32 %1642, i32* %1643, align 8, !dbg !2393, !tbaa !423
  %1644 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !2394, !tbaa !566
  %1645 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1644, i64 2, !dbg !2394
  %1646 = bitcast %struct.lua_TValue* %1488 to i64*, !dbg !2394
  %1647 = bitcast %struct.lua_TValue* %1645 to i64*, !dbg !2394
  %1648 = load i64, i64* %1646, align 8, !dbg !2394
  store i64 %1648, i64* %1647, align 8, !dbg !2394
  %1649 = load i32, i32* %1499, align 8, !dbg !2394, !tbaa !423
  %1650 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1644, i64 2, i32 1, !dbg !2394
  store i32 %1649, i32* %1650, align 8, !dbg !2394, !tbaa !423
  %1651 = load i64, i64* %72, align 8, !dbg !2395, !tbaa !571
  %1652 = load i64, i64* %48, align 8, !dbg !2395, !tbaa !566
  %1653 = sub i64 %1651, %1652, !dbg !2395
  %1654 = icmp slt i64 %1653, 49, !dbg !2395
  %1655 = inttoptr i64 %1652 to %struct.lua_TValue*, !dbg !2396
  br i1 %1654, label %1656, label %1658, !dbg !2396

; <label>:1656:                                   ; preds = %1627
  call void @luaD_growstack(%struct.lua_State* nonnull %0, i32 3) #5, !dbg !2395
  %1657 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !2397, !tbaa !566
  br label %1658, !dbg !2395

; <label>:1658:                                   ; preds = %1656, %1627
  %1659 = phi %struct.lua_TValue* [ %1655, %1627 ], [ %1657, %1656 ], !dbg !2397
  %1660 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1659, i64 3, !dbg !2397
  store %struct.lua_TValue* %1660, %struct.lua_TValue** %47, align 8, !dbg !2397, !tbaa !566
  call void @luaD_call(%struct.lua_State* nonnull %0, %struct.lua_TValue* %1659, i32 1) #5, !dbg !2398
  %1661 = load i8*, i8** %108, align 8, !dbg !2399, !tbaa !563
  %1662 = getelementptr inbounds i8, i8* %1661, i64 %1631, !dbg !2399
  %1663 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !2400, !tbaa !566
  %1664 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1663, i64 -1, !dbg !2400
  store %struct.lua_TValue* %1664, %struct.lua_TValue** %47, align 8, !dbg !2400, !tbaa !566
  %1665 = bitcast %struct.lua_TValue* %1664 to i64*, !dbg !2401
  %1666 = bitcast i8* %1662 to i64*, !dbg !2401
  %1667 = load i64, i64* %1665, align 8, !dbg !2401
  store i64 %1667, i64* %1666, align 8, !dbg !2401
  %1668 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1663, i64 -1, i32 1, !dbg !2401
  %1669 = load i32, i32* %1668, align 8, !dbg !2401, !tbaa !423
  %1670 = getelementptr inbounds i8, i8* %1662, i64 8, !dbg !2401
  %1671 = bitcast i8* %1670 to i32*, !dbg !2401
  store i32 %1669, i32* %1671, align 8, !dbg !2401, !tbaa !423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2402
  %1672 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !2403, !tbaa !566
  %1673 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1672, i64 0, i32 1, !dbg !2403
  %1674 = load i32, i32* %1673, align 8, !dbg !2403, !tbaa !423
  switch i32 %1674, label %1680 [
    i32 0, label %1681
    i32 1, label %1675
  ], !dbg !2403

; <label>:1675:                                   ; preds = %1658
  %1676 = bitcast %struct.lua_TValue* %1672 to i32*, !dbg !2403
  %1677 = load i32, i32* %1676, align 8, !dbg !2403, !tbaa !430
  %1678 = icmp eq i32 %1677, 0, !dbg !2403
  %1679 = zext i1 %1678 to i32
  br label %1681

; <label>:1680:                                   ; preds = %1658
  br label %1681, !dbg !2404

; <label>:1681:                                   ; preds = %1680, %1675, %1658
  %1682 = phi i32 [ 0, %1680 ], [ %1679, %1675 ], [ 1, %1658 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2405
  br label %1685, !dbg !2406

; <label>:1683:                                   ; preds = %1623, %1618
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2405
  %1684 = call i32 @luaG_ordererror(%struct.lua_State* nonnull %0, %struct.lua_TValue* nonnull %1488, %struct.lua_TValue* nonnull %1498) #5, !dbg !2407
  br label %1685, !dbg !2408

; <label>:1685:                                   ; preds = %1504, %1507, %1549, %1616, %1681, %1683
  %1686 = phi i32 [ %1505, %1504 ], [ %1513, %1507 ], [ %1552, %1549 ], [ %1682, %1681 ], [ %1684, %1683 ], [ %1617, %1616 ], !dbg !2409
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2410
  %1687 = icmp eq i32 %1686, %225, !dbg !2272
  br i1 %1687, label %1688, label %1694, !dbg !2411

; <label>:1688:                                   ; preds = %1685
  %1689 = load i32, i32* %152, align 4, !dbg !2412, !tbaa !1370
  %1690 = lshr i32 %1689, 14, !dbg !2412
  %1691 = add nsw i32 %1690, -131071, !dbg !2412
  %1692 = sext i32 %1691 to i64, !dbg !2412
  %1693 = getelementptr inbounds i32, i32* %152, i64 %1692, !dbg !2412
  br label %1694, !dbg !2412

; <label>:1694:                                   ; preds = %1688, %1685
  %1695 = phi i32* [ %1693, %1688 ], [ %152, %1685 ], !dbg !1366
  %1696 = load %struct.lua_TValue*, %struct.lua_TValue** %37, align 8, !dbg !2269, !tbaa !974
  %1697 = getelementptr inbounds i32, i32* %1695, i64 1, !dbg !2414
  br label %2125, !dbg !2415

; <label>:1698:                                   ; preds = %222
  %1699 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %226, i32 1, !dbg !2416
  %1700 = load i32, i32* %1699, align 8, !dbg !2416, !tbaa !423
  switch i32 %1700, label %1705 [
    i32 0, label %1706
    i32 1, label %1701
  ], !dbg !2416

; <label>:1701:                                   ; preds = %1698
  %1702 = bitcast %struct.lua_TValue* %227 to i32*, !dbg !2416
  %1703 = load i32, i32* %1702, align 8, !dbg !2416, !tbaa !430
  %1704 = icmp eq i32 %1703, 0, !dbg !2416
  br label %1706

; <label>:1705:                                   ; preds = %1698
  br label %1706, !dbg !2416

; <label>:1706:                                   ; preds = %1698, %1705, %1701
  %1707 = phi i1 [ true, %1698 ], [ %1704, %1701 ], [ false, %1705 ]
  %1708 = zext i1 %1707 to i32, !dbg !2416
  %1709 = lshr i32 %153, 14, !dbg !2419
  %1710 = and i32 %1709, 511, !dbg !2419
  %1711 = icmp eq i32 %1710, %1708, !dbg !2420
  br i1 %1711, label %1718, label %1712, !dbg !2421

; <label>:1712:                                   ; preds = %1706
  %1713 = load i32, i32* %152, align 4, !dbg !2422, !tbaa !1370
  %1714 = lshr i32 %1713, 14, !dbg !2422
  %1715 = add nsw i32 %1714, -131071, !dbg !2422
  %1716 = sext i32 %1715 to i64, !dbg !2422
  %1717 = getelementptr inbounds i32, i32* %152, i64 %1716, !dbg !2422
  br label %1718, !dbg !2422

; <label>:1718:                                   ; preds = %1706, %1712
  %1719 = phi i32* [ %1717, %1712 ], [ %152, %1706 ], !dbg !1366
  %1720 = getelementptr inbounds i32, i32* %1719, i64 1, !dbg !2424
  br label %2125, !dbg !2425

; <label>:1721:                                   ; preds = %222
  %1722 = lshr i32 %153, 23, !dbg !2426
  %1723 = zext i32 %1722 to i64, !dbg !2426
  %1724 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %1723, !dbg !2426
  %1725 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %1723, i32 1, !dbg !2428
  %1726 = load i32, i32* %1725, align 8, !dbg !2428, !tbaa !423
  switch i32 %1726, label %1731 [
    i32 0, label %1732
    i32 1, label %1727
  ], !dbg !2428

; <label>:1727:                                   ; preds = %1721
  %1728 = bitcast %struct.lua_TValue* %1724 to i32*, !dbg !2428
  %1729 = load i32, i32* %1728, align 8, !dbg !2428, !tbaa !430
  %1730 = icmp eq i32 %1729, 0, !dbg !2428
  br label %1732

; <label>:1731:                                   ; preds = %1721
  br label %1732, !dbg !2428

; <label>:1732:                                   ; preds = %1721, %1731, %1727
  %1733 = phi i1 [ true, %1721 ], [ %1730, %1727 ], [ false, %1731 ]
  %1734 = zext i1 %1733 to i32, !dbg !2428
  %1735 = lshr i32 %153, 14, !dbg !2429
  %1736 = and i32 %1735, 511, !dbg !2429
  %1737 = icmp eq i32 %1736, %1734, !dbg !2430
  br i1 %1737, label %1748, label %1738, !dbg !2431

; <label>:1738:                                   ; preds = %1732
  %1739 = bitcast %struct.lua_TValue* %1724 to i64*, !dbg !2432
  %1740 = bitcast %struct.lua_TValue* %227 to i64*, !dbg !2432
  %1741 = load i64, i64* %1739, align 8, !dbg !2432
  store i64 %1741, i64* %1740, align 8, !dbg !2432
  %1742 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %226, i32 1, !dbg !2432
  store i32 %1726, i32* %1742, align 8, !dbg !2432, !tbaa !423
  %1743 = load i32, i32* %152, align 4, !dbg !2433, !tbaa !1370
  %1744 = lshr i32 %1743, 14, !dbg !2433
  %1745 = add nsw i32 %1744, -131071, !dbg !2433
  %1746 = sext i32 %1745 to i64, !dbg !2433
  %1747 = getelementptr inbounds i32, i32* %152, i64 %1746, !dbg !2433
  br label %1748, !dbg !2435

; <label>:1748:                                   ; preds = %1732, %1738
  %1749 = phi i32* [ %1747, %1738 ], [ %152, %1732 ], !dbg !1366
  %1750 = getelementptr inbounds i32, i32* %1749, i64 1, !dbg !2436
  br label %2125

; <label>:1751:                                   ; preds = %222
  %1752 = lshr i32 %153, 23, !dbg !2437
  %1753 = lshr i32 %153, 14, !dbg !2439
  %1754 = and i32 %1753, 511, !dbg !2439
  %1755 = add nsw i32 %1754, -1, !dbg !2440
  %1756 = icmp eq i32 %1752, 0, !dbg !2442
  br i1 %1756, label %1760, label %1757, !dbg !2444

; <label>:1757:                                   ; preds = %1751
  %1758 = zext i32 %1752 to i64, !dbg !2445
  %1759 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %227, i64 %1758, !dbg !2445
  store %struct.lua_TValue* %1759, %struct.lua_TValue** %47, align 8, !dbg !2446, !tbaa !566
  br label %1760, !dbg !2447

; <label>:1760:                                   ; preds = %1751, %1757
  store i32* %152, i32** %35, align 8, !dbg !2448, !tbaa !1349
  %1761 = call i32 @luaD_precall(%struct.lua_State* nonnull %0, %struct.lua_TValue* %227, i32 %1755) #5, !dbg !2449
  switch i32 %1761, label %2188 [
    i32 0, label %1762
    i32 1, label %1766
  ], !dbg !2450

; <label>:1762:                                   ; preds = %1760
  %1763 = add nsw i32 %134, 1, !dbg !2451
  br label %1764, !dbg !2454

; <label>:1764:                                   ; preds = %1762, %1848, %1850
  %1765 = phi i32 [ %1846, %1850 ], [ %1846, %1848 ], [ %1763, %1762 ]
  br label %133, !dbg !1348

; <label>:1766:                                   ; preds = %1760
  %1767 = icmp eq i32 %1754, 0, !dbg !2455
  br i1 %1767, label %1773, label %1768, !dbg !2458

; <label>:1768:                                   ; preds = %1766
  %1769 = load %struct.CallInfo*, %struct.CallInfo** %36, align 8, !dbg !2459, !tbaa !1352
  %1770 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1769, i64 0, i32 2, !dbg !2460
  %1771 = bitcast %struct.lua_TValue** %1770 to i64*, !dbg !2460
  %1772 = load i64, i64* %1771, align 8, !dbg !2460, !tbaa !2461
  store i64 %1772, i64* %48, align 8, !dbg !2462, !tbaa !566
  br label %1773, !dbg !2463

; <label>:1773:                                   ; preds = %1766, %1768
  %1774 = load %struct.lua_TValue*, %struct.lua_TValue** %37, align 8, !dbg !2464, !tbaa !974
  br label %2125, !dbg !2465

; <label>:1775:                                   ; preds = %222
  %1776 = lshr i32 %153, 23, !dbg !2466
  %1777 = icmp eq i32 %1776, 0, !dbg !2468
  br i1 %1777, label %1781, label %1778, !dbg !2470

; <label>:1778:                                   ; preds = %1775
  %1779 = zext i32 %1776 to i64, !dbg !2471
  %1780 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %227, i64 %1779, !dbg !2471
  store %struct.lua_TValue* %1780, %struct.lua_TValue** %47, align 8, !dbg !2472, !tbaa !566
  br label %1781, !dbg !2473

; <label>:1781:                                   ; preds = %1775, %1778
  store i32* %152, i32** %35, align 8, !dbg !2474, !tbaa !1349
  %1782 = call i32 @luaD_precall(%struct.lua_State* nonnull %0, %struct.lua_TValue* %227, i32 -1) #5, !dbg !2475
  switch i32 %1782, label %2188 [
    i32 0, label %1783
    i32 1, label %1831
  ], !dbg !2476

; <label>:1783:                                   ; preds = %1781
  %1784 = load %struct.CallInfo*, %struct.CallInfo** %36, align 8, !dbg !2477, !tbaa !1352
  %1785 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1784, i64 -1, i32 1, !dbg !2479
  %1786 = load %struct.lua_TValue*, %struct.lua_TValue** %1785, align 8, !dbg !2479, !tbaa !1353
  %1787 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1784, i64 0, i32 1, !dbg !2481
  %1788 = load %struct.lua_TValue*, %struct.lua_TValue** %1787, align 8, !dbg !2481, !tbaa !1353
  %1789 = load %union.GCObject*, %union.GCObject** %69, align 8, !dbg !2483, !tbaa !2485
  %1790 = icmp eq %union.GCObject* %1789, null, !dbg !2486
  %1791 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1784, i64 -1, i32 0, !dbg !2487
  br i1 %1790, label %1795, label %1792, !dbg !2488

; <label>:1792:                                   ; preds = %1783
  %1793 = load %struct.lua_TValue*, %struct.lua_TValue** %1791, align 8, !dbg !2489, !tbaa !2490
  call void @luaF_close(%struct.lua_State* nonnull %0, %struct.lua_TValue* %1793) #5, !dbg !2491
  %1794 = load %struct.lua_TValue*, %struct.lua_TValue** %1785, align 8, !dbg !2492, !tbaa !1353
  br label %1795, !dbg !2491

; <label>:1795:                                   ; preds = %1783, %1792
  %1796 = phi %struct.lua_TValue* [ %1794, %1792 ], [ %1786, %1783 ], !dbg !2492
  %1797 = bitcast %struct.CallInfo* %1784 to i64*, !dbg !2493
  %1798 = load i64, i64* %1797, align 8, !dbg !2493, !tbaa !2490
  %1799 = ptrtoint %struct.lua_TValue* %1788 to i64, !dbg !2494
  %1800 = sub i64 %1798, %1799, !dbg !2494
  %1801 = ashr exact i64 %1800, 4, !dbg !2494
  %1802 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1796, i64 %1801, !dbg !2495
  store %struct.lua_TValue* %1802, %struct.lua_TValue** %1791, align 8, !dbg !2496, !tbaa !2490
  store %struct.lua_TValue* %1802, %struct.lua_TValue** %37, align 8, !dbg !2497, !tbaa !974
  %1803 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !2499, !tbaa !566
  %1804 = icmp ult %struct.lua_TValue* %1788, %1803, !dbg !2500
  br i1 %1804, label %1805, label %1820, !dbg !2501

; <label>:1805:                                   ; preds = %1795, %1805
  %1806 = phi i64 [ %1815, %1805 ], [ 0, %1795 ]
  %1807 = phi %struct.lua_TValue* [ %1819, %1805 ], [ %1786, %1795 ]
  %1808 = phi %struct.lua_TValue* [ %1816, %1805 ], [ %1788, %1795 ]
  %1809 = bitcast %struct.lua_TValue* %1808 to i64*, !dbg !2502
  %1810 = bitcast %struct.lua_TValue* %1807 to i64*, !dbg !2502
  %1811 = load i64, i64* %1809, align 8, !dbg !2502
  store i64 %1811, i64* %1810, align 8, !dbg !2502
  %1812 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1788, i64 %1806, i32 1, !dbg !2502
  %1813 = load i32, i32* %1812, align 8, !dbg !2502, !tbaa !423
  %1814 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1786, i64 %1806, i32 1, !dbg !2502
  store i32 %1813, i32* %1814, align 8, !dbg !2502, !tbaa !423
  %1815 = add nuw i64 %1806, 1, !dbg !2503
  %1816 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1788, i64 %1815, !dbg !2504
  %1817 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !2499, !tbaa !566
  %1818 = icmp ult %struct.lua_TValue* %1816, %1817, !dbg !2500
  %1819 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1786, i64 %1815, !dbg !2505
  br i1 %1818, label %1805, label %1820, !dbg !2501, !llvm.loop !2506

; <label>:1820:                                   ; preds = %1805, %1795
  %1821 = phi %struct.lua_TValue* [ %1786, %1795 ], [ %1819, %1805 ], !dbg !2505
  store %struct.lua_TValue* %1821, %struct.lua_TValue** %47, align 8, !dbg !2508, !tbaa !566
  %1822 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1784, i64 -1, i32 2, !dbg !2509
  store %struct.lua_TValue* %1821, %struct.lua_TValue** %1822, align 8, !dbg !2510, !tbaa !2461
  %1823 = load i64, i64* %129, align 8, !dbg !2511, !tbaa !1349
  %1824 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1784, i64 -1, i32 3, !dbg !2512
  %1825 = bitcast i32** %1824 to i64*, !dbg !2513
  store i64 %1823, i64* %1825, align 8, !dbg !2513, !tbaa !2514
  %1826 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1784, i64 -1, i32 5, !dbg !2515
  %1827 = load i32, i32* %1826, align 4, !dbg !2516, !tbaa !2517
  %1828 = add nsw i32 %1827, 1, !dbg !2516
  store i32 %1828, i32* %1826, align 4, !dbg !2516, !tbaa !2517
  %1829 = load %struct.CallInfo*, %struct.CallInfo** %36, align 8, !dbg !2518, !tbaa !1352
  %1830 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1829, i64 -1, !dbg !2518
  store %struct.CallInfo* %1830, %struct.CallInfo** %36, align 8, !dbg !2518, !tbaa !1352
  br label %135

; <label>:1831:                                   ; preds = %1781
  %1832 = load %struct.lua_TValue*, %struct.lua_TValue** %37, align 8, !dbg !2519, !tbaa !974
  br label %2125, !dbg !2521

; <label>:1833:                                   ; preds = %222
  %1834 = lshr i32 %153, 23, !dbg !2522
  %1835 = icmp eq i32 %1834, 0, !dbg !2524
  br i1 %1835, label %1840, label %1836, !dbg !2526

; <label>:1836:                                   ; preds = %1833
  %1837 = zext i32 %1834 to i64, !dbg !2527
  %1838 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %227, i64 -1, !dbg !2527
  %1839 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1838, i64 %1837, !dbg !2528
  store %struct.lua_TValue* %1839, %struct.lua_TValue** %47, align 8, !dbg !2529, !tbaa !566
  br label %1840, !dbg !2530

; <label>:1840:                                   ; preds = %1833, %1836
  %1841 = load %union.GCObject*, %union.GCObject** %69, align 8, !dbg !2531, !tbaa !2485
  %1842 = icmp eq %union.GCObject* %1841, null, !dbg !2533
  br i1 %1842, label %1844, label %1843, !dbg !2534

; <label>:1843:                                   ; preds = %1840
  call void @luaF_close(%struct.lua_State* nonnull %0, %struct.lua_TValue* %223) #5, !dbg !2535
  br label %1844, !dbg !2535

; <label>:1844:                                   ; preds = %1840, %1843
  store i32* %152, i32** %35, align 8, !dbg !2536, !tbaa !1349
  %1845 = call i32 @luaD_poscall(%struct.lua_State* nonnull %0, %struct.lua_TValue* %227) #5, !dbg !2537
  %1846 = add nsw i32 %134, -1, !dbg !2538
  %1847 = icmp eq i32 %1846, 0, !dbg !2540
  br i1 %1847, label %2188, label %1848, !dbg !2541

; <label>:1848:                                   ; preds = %1844
  %1849 = icmp eq i32 %1845, 0, !dbg !2542
  br i1 %1849, label %1764, label %1850, !dbg !2545

; <label>:1850:                                   ; preds = %1848
  %1851 = load %struct.CallInfo*, %struct.CallInfo** %36, align 8, !dbg !2546, !tbaa !1352
  %1852 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1851, i64 0, i32 2, !dbg !2547
  %1853 = bitcast %struct.lua_TValue** %1852 to i64*, !dbg !2547
  %1854 = load i64, i64* %1853, align 8, !dbg !2547, !tbaa !2461
  store i64 %1854, i64* %48, align 8, !dbg !2548, !tbaa !566
  br label %1764, !dbg !2549

; <label>:1855:                                   ; preds = %222
  %1856 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %227, i64 2, !dbg !2550
  %1857 = bitcast %struct.lua_TValue* %1856 to double*, !dbg !2550
  %1858 = load double, double* %1857, align 8, !dbg !2550, !tbaa !430
  %1859 = bitcast %struct.lua_TValue* %227 to double*, !dbg !2552
  %1860 = load double, double* %1859, align 8, !dbg !2552, !tbaa !430
  %1861 = fadd double %1858, %1860, !dbg !2552
  %1862 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %227, i64 1, !dbg !2554
  %1863 = bitcast %struct.lua_TValue* %1862 to double*, !dbg !2554
  %1864 = load double, double* %1863, align 8, !dbg !2554, !tbaa !430
  %1865 = fcmp ogt double %1858, 0.000000e+00, !dbg !2556
  br i1 %1865, label %1866, label %1868, !dbg !2557

; <label>:1866:                                   ; preds = %1855
  %1867 = fcmp ugt double %1861, %1864, !dbg !2558
  br i1 %1867, label %2125, label %1870, !dbg !2556

; <label>:1868:                                   ; preds = %1855
  %1869 = fcmp ugt double %1864, %1861, !dbg !2559
  br i1 %1869, label %2125, label %1870, !dbg !2557

; <label>:1870:                                   ; preds = %1866, %1868
  %1871 = lshr i32 %153, 14, !dbg !2560
  %1872 = add nsw i32 %1871, -131071, !dbg !2560
  %1873 = sext i32 %1872 to i64, !dbg !2560
  %1874 = getelementptr inbounds i32, i32* %152, i64 %1873, !dbg !2560
  store double %1861, double* %1859, align 8, !dbg !2562, !tbaa !430
  %1875 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %226, i32 1, !dbg !2562
  store i32 3, i32* %1875, align 8, !dbg !2562, !tbaa !423
  %1876 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %227, i64 3, !dbg !2563
  %1877 = bitcast %struct.lua_TValue* %1876 to double*, !dbg !2563
  store double %1861, double* %1877, align 8, !dbg !2563, !tbaa !430
  %1878 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1876, i64 0, i32 1, !dbg !2563
  store i32 3, i32* %1878, align 8, !dbg !2563, !tbaa !423
  br label %2125, !dbg !2564

; <label>:1879:                                   ; preds = %222
  %1880 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %227, i64 1, !dbg !2566
  %1881 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %227, i64 2, !dbg !2568
  store i32* %152, i32** %35, align 8, !dbg !2570, !tbaa !1349
  %1882 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %226, i32 1, !dbg !2571
  %1883 = load i32, i32* %1882, align 8, !dbg !2571, !tbaa !423
  %1884 = icmp eq i32 %1883, 3, !dbg !2571
  br i1 %1884, label %1898, label %1885, !dbg !2571

; <label>:1885:                                   ; preds = %1879
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %70) #4, !dbg !2576
  %1886 = icmp eq i32 %1883, 4, !dbg !2577
  br i1 %1886, label %1887, label %1897, !dbg !2577

; <label>:1887:                                   ; preds = %1885
  %1888 = bitcast %struct.lua_TValue* %227 to %union.TString**, !dbg !2578
  %1889 = load %union.TString*, %union.TString** %1888, align 8, !dbg !2578, !tbaa !430
  %1890 = getelementptr inbounds %union.TString, %union.TString* %1889, i64 1, !dbg !2578
  %1891 = bitcast %union.TString* %1890 to i8*, !dbg !2578
  %1892 = call i32 @luaO_str2d(i8* nonnull %1891, double* nonnull %19) #5, !dbg !2580
  %1893 = icmp eq i32 %1892, 0, !dbg !2580
  br i1 %1893, label %1897, label %1894, !dbg !2581

; <label>:1894:                                   ; preds = %1887
  %1895 = load i64, i64* %110, align 8, !dbg !2582, !tbaa !435
  %1896 = bitcast %struct.lua_TValue* %227 to i64*, !dbg !2582
  store i64 %1895, i64* %1896, align 8, !dbg !2582, !tbaa !430
  store i32 3, i32* %1882, align 8, !dbg !2582, !tbaa !423
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %70) #4, !dbg !2583
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2583
  br label %1898, !dbg !2584

; <label>:1897:                                   ; preds = %1885, %1887
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %70) #4, !dbg !2583
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2583
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0)) #5, !dbg !2585
  br label %1932, !dbg !2585

; <label>:1898:                                   ; preds = %1894, %1879
  %1899 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1880, i64 0, i32 1, !dbg !2586
  %1900 = load i32, i32* %1899, align 8, !dbg !2586, !tbaa !423
  %1901 = icmp eq i32 %1900, 3, !dbg !2586
  br i1 %1901, label %1915, label %1902, !dbg !2586

; <label>:1902:                                   ; preds = %1898
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %85) #4, !dbg !2591
  %1903 = icmp eq i32 %1900, 4, !dbg !2592
  br i1 %1903, label %1904, label %1914, !dbg !2592

; <label>:1904:                                   ; preds = %1902
  %1905 = bitcast %struct.lua_TValue* %1880 to %union.TString**, !dbg !2593
  %1906 = load %union.TString*, %union.TString** %1905, align 8, !dbg !2593, !tbaa !430
  %1907 = getelementptr inbounds %union.TString, %union.TString* %1906, i64 1, !dbg !2593
  %1908 = bitcast %union.TString* %1907 to i8*, !dbg !2593
  %1909 = call i32 @luaO_str2d(i8* nonnull %1908, double* nonnull %18) #5, !dbg !2595
  %1910 = icmp eq i32 %1909, 0, !dbg !2595
  br i1 %1910, label %1914, label %1911, !dbg !2596

; <label>:1911:                                   ; preds = %1904
  %1912 = load i64, i64* %130, align 8, !dbg !2597, !tbaa !435
  %1913 = bitcast %struct.lua_TValue* %1880 to i64*, !dbg !2597
  store i64 %1912, i64* %1913, align 8, !dbg !2597, !tbaa !430
  store i32 3, i32* %1899, align 8, !dbg !2597, !tbaa !423
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %85) #4, !dbg !2598
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2598
  br label %1915, !dbg !2599

; <label>:1914:                                   ; preds = %1902, %1904
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %85) #4, !dbg !2598
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2598
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0)) #5, !dbg !2600
  br label %1932, !dbg !2600

; <label>:1915:                                   ; preds = %1911, %1898
  %1916 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1881, i64 0, i32 1, !dbg !2601
  %1917 = load i32, i32* %1916, align 8, !dbg !2601, !tbaa !423
  %1918 = icmp eq i32 %1917, 3, !dbg !2601
  br i1 %1918, label %1932, label %1919, !dbg !2601

; <label>:1919:                                   ; preds = %1915
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %109) #4, !dbg !2606
  %1920 = icmp eq i32 %1917, 4, !dbg !2607
  br i1 %1920, label %1921, label %1931, !dbg !2607

; <label>:1921:                                   ; preds = %1919
  %1922 = bitcast %struct.lua_TValue* %1881 to %union.TString**, !dbg !2608
  %1923 = load %union.TString*, %union.TString** %1922, align 8, !dbg !2608, !tbaa !430
  %1924 = getelementptr inbounds %union.TString, %union.TString* %1923, i64 1, !dbg !2608
  %1925 = bitcast %union.TString* %1924 to i8*, !dbg !2608
  %1926 = call i32 @luaO_str2d(i8* nonnull %1925, double* nonnull %17) #5, !dbg !2610
  %1927 = icmp eq i32 %1926, 0, !dbg !2610
  br i1 %1927, label %1931, label %1928, !dbg !2611

; <label>:1928:                                   ; preds = %1921
  %1929 = load i64, i64* %131, align 8, !dbg !2612, !tbaa !435
  %1930 = bitcast %struct.lua_TValue* %1881 to i64*, !dbg !2612
  store i64 %1929, i64* %1930, align 8, !dbg !2612, !tbaa !430
  store i32 3, i32* %1916, align 8, !dbg !2612, !tbaa !423
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %109) #4, !dbg !2613
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2613
  br label %1932, !dbg !2614

; <label>:1931:                                   ; preds = %1919, %1921
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %109) #4, !dbg !2613
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2613
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0)) #5, !dbg !2615
  unreachable, !dbg !2615

; <label>:1932:                                   ; preds = %1928, %1914, %1915, %1897
  %1933 = bitcast %struct.lua_TValue* %227 to double*, !dbg !2616
  %1934 = load double, double* %1933, align 8, !dbg !2616, !tbaa !430
  %1935 = bitcast %struct.lua_TValue* %1881 to double*, !dbg !2616
  %1936 = load double, double* %1935, align 8, !dbg !2616, !tbaa !430
  %1937 = fsub double %1934, %1936, !dbg !2616
  store double %1937, double* %1933, align 8, !dbg !2616, !tbaa !430
  store i32 3, i32* %1882, align 8, !dbg !2616, !tbaa !423
  %1938 = lshr i32 %153, 14, !dbg !2617
  %1939 = add nsw i32 %1938, -131071, !dbg !2617
  %1940 = sext i32 %1939 to i64, !dbg !2617
  %1941 = getelementptr inbounds i32, i32* %152, i64 %1940, !dbg !2617
  br label %2125

; <label>:1942:                                   ; preds = %222
  %1943 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %227, i64 3, !dbg !2619
  %1944 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %227, i64 2, !dbg !2621
  %1945 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1943, i64 2, !dbg !2621
  %1946 = bitcast %struct.lua_TValue* %1944 to i64*, !dbg !2621
  %1947 = bitcast %struct.lua_TValue* %1945 to i64*, !dbg !2621
  %1948 = load i64, i64* %1946, align 8, !dbg !2621
  store i64 %1948, i64* %1947, align 8, !dbg !2621
  %1949 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1944, i64 0, i32 1, !dbg !2621
  %1950 = load i32, i32* %1949, align 8, !dbg !2621, !tbaa !423
  %1951 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1945, i64 0, i32 1, !dbg !2621
  store i32 %1950, i32* %1951, align 8, !dbg !2621, !tbaa !423
  %1952 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %227, i64 1, !dbg !2622
  %1953 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1943, i64 1, !dbg !2622
  %1954 = bitcast %struct.lua_TValue* %1952 to i64*, !dbg !2622
  %1955 = bitcast %struct.lua_TValue* %1953 to i64*, !dbg !2622
  %1956 = load i64, i64* %1954, align 8, !dbg !2622
  store i64 %1956, i64* %1955, align 8, !dbg !2622
  %1957 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1952, i64 0, i32 1, !dbg !2622
  %1958 = load i32, i32* %1957, align 8, !dbg !2622, !tbaa !423
  %1959 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1953, i64 0, i32 1, !dbg !2622
  store i32 %1958, i32* %1959, align 8, !dbg !2622, !tbaa !423
  %1960 = bitcast %struct.lua_TValue* %227 to i64*, !dbg !2623
  %1961 = bitcast %struct.lua_TValue* %1943 to i64*, !dbg !2623
  %1962 = load i64, i64* %1960, align 8, !dbg !2623
  store i64 %1962, i64* %1961, align 8, !dbg !2623
  %1963 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %226, i32 1, !dbg !2623
  %1964 = load i32, i32* %1963, align 8, !dbg !2623, !tbaa !423
  %1965 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1943, i64 0, i32 1, !dbg !2623
  store i32 %1964, i32* %1965, align 8, !dbg !2623, !tbaa !423
  %1966 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1943, i64 3, !dbg !2624
  store %struct.lua_TValue* %1966, %struct.lua_TValue** %47, align 8, !dbg !2625, !tbaa !566
  store i32* %152, i32** %35, align 8, !dbg !2626, !tbaa !1349
  %1967 = lshr i32 %153, 14, !dbg !2628
  %1968 = and i32 %1967, 511, !dbg !2628
  call void @luaD_call(%struct.lua_State* nonnull %0, %struct.lua_TValue* nonnull %1943, i32 %1968) #5, !dbg !2628
  %1969 = load %struct.lua_TValue*, %struct.lua_TValue** %37, align 8, !dbg !2626, !tbaa !974
  %1970 = load %struct.CallInfo*, %struct.CallInfo** %36, align 8, !dbg !2630, !tbaa !1352
  %1971 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1970, i64 0, i32 2, !dbg !2631
  %1972 = bitcast %struct.lua_TValue** %1971 to i64*, !dbg !2631
  %1973 = load i64, i64* %1972, align 8, !dbg !2631, !tbaa !2461
  store i64 %1973, i64* %48, align 8, !dbg !2632, !tbaa !566
  %1974 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1969, i64 3, !dbg !2633
  %1975 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1974, i64 %226, !dbg !2634
  %1976 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1975, i64 0, i32 1, !dbg !2635
  %1977 = load i32, i32* %1976, align 8, !dbg !2635, !tbaa !423
  %1978 = icmp eq i32 %1977, 0, !dbg !2635
  br i1 %1978, label %1990, label %1979, !dbg !2636

; <label>:1979:                                   ; preds = %1942
  %1980 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1975, i64 -1, !dbg !2637
  %1981 = bitcast %struct.lua_TValue* %1975 to i64*, !dbg !2637
  %1982 = bitcast %struct.lua_TValue* %1980 to i64*, !dbg !2637
  %1983 = load i64, i64* %1981, align 8, !dbg !2637
  store i64 %1983, i64* %1982, align 8, !dbg !2637
  %1984 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1980, i64 0, i32 1, !dbg !2637
  store i32 %1977, i32* %1984, align 8, !dbg !2637, !tbaa !423
  %1985 = load i32, i32* %152, align 4, !dbg !2638, !tbaa !1370
  %1986 = lshr i32 %1985, 14, !dbg !2638
  %1987 = add nsw i32 %1986, -131071, !dbg !2638
  %1988 = sext i32 %1987 to i64, !dbg !2638
  %1989 = getelementptr inbounds i32, i32* %152, i64 %1988, !dbg !2638
  br label %1990, !dbg !2640

; <label>:1990:                                   ; preds = %1979, %1942
  %1991 = phi i32* [ %152, %1942 ], [ %1989, %1979 ], !dbg !2641
  %1992 = getelementptr inbounds i32, i32* %1991, i64 1, !dbg !2642
  br label %2125

; <label>:1993:                                   ; preds = %222
  %1994 = lshr i32 %153, 23, !dbg !2643
  %1995 = lshr i32 %153, 14, !dbg !2645
  %1996 = and i32 %1995, 511, !dbg !2645
  %1997 = icmp eq i32 %1994, 0, !dbg !2647
  br i1 %1997, label %1998, label %2009, !dbg !2649

; <label>:1998:                                   ; preds = %1993
  %1999 = load i64, i64* %48, align 8, !dbg !2650, !tbaa !566
  %2000 = ptrtoint %struct.lua_TValue* %227 to i64, !dbg !2650
  %2001 = sub i64 %1999, %2000, !dbg !2650
  %2002 = lshr exact i64 %2001, 4, !dbg !2650
  %2003 = trunc i64 %2002 to i32, !dbg !2650
  %2004 = add nsw i32 %2003, -1, !dbg !2652
  %2005 = load %struct.CallInfo*, %struct.CallInfo** %36, align 8, !dbg !2653, !tbaa !1352
  %2006 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2005, i64 0, i32 2, !dbg !2654
  %2007 = bitcast %struct.lua_TValue** %2006 to i64*, !dbg !2654
  %2008 = load i64, i64* %2007, align 8, !dbg !2654, !tbaa !2461
  store i64 %2008, i64* %48, align 8, !dbg !2655, !tbaa !566
  br label %2009, !dbg !2656

; <label>:2009:                                   ; preds = %1998, %1993
  %2010 = phi i32 [ %2004, %1998 ], [ %1994, %1993 ], !dbg !2657
  %2011 = icmp eq i32 %1996, 0, !dbg !2658
  br i1 %2011, label %2012, label %2015, !dbg !2660

; <label>:2012:                                   ; preds = %2009
  %2013 = getelementptr inbounds i32, i32* %150, i64 2, !dbg !2661
  %2014 = load i32, i32* %152, align 4, !dbg !2661, !tbaa !1370
  br label %2015, !dbg !2662

; <label>:2015:                                   ; preds = %2012, %2009
  %2016 = phi i32 [ %2014, %2012 ], [ %1996, %2009 ], !dbg !2657
  %2017 = phi i32* [ %2013, %2012 ], [ %152, %2009 ], !dbg !1366
  %2018 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %226, i32 1, !dbg !2663
  %2019 = load i32, i32* %2018, align 8, !dbg !2663, !tbaa !423
  %2020 = icmp eq i32 %2019, 5, !dbg !2663
  br i1 %2020, label %2021, label %2125, !dbg !2666

; <label>:2021:                                   ; preds = %2015
  %2022 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %227, i64 0, i32 0, i32 0, !dbg !2667
  %2023 = load %union.GCObject*, %union.GCObject** %2022, align 8, !dbg !2667, !tbaa !430
  %2024 = bitcast %union.GCObject* %2023 to %struct.Table*, !dbg !2667
  %2025 = mul i32 %2016, 50, !dbg !2669
  %2026 = add i32 %2010, -50, !dbg !2669
  %2027 = add i32 %2026, %2025, !dbg !2670
  %2028 = getelementptr inbounds %union.GCObject, %union.GCObject* %2023, i64 0, i32 0, i32 9, !dbg !2672
  %2029 = bitcast %struct.lua_TValue** %2028 to i32*, !dbg !2672
  %2030 = load i32, i32* %2029, align 8, !dbg !2672, !tbaa !2674
  %2031 = icmp sgt i32 %2027, %2030, !dbg !2675
  br i1 %2031, label %2032, label %2033, !dbg !2676

; <label>:2032:                                   ; preds = %2021
  call void @luaH_resizearray(%struct.lua_State* nonnull %0, %struct.Table* %2024, i32 %2027) #5, !dbg !2677
  br label %2033, !dbg !2677

; <label>:2033:                                   ; preds = %2032, %2021
  %2034 = icmp sgt i32 %2010, 0, !dbg !2678
  br i1 %2034, label %2035, label %2125, !dbg !2679

; <label>:2035:                                   ; preds = %2033
  %2036 = getelementptr inbounds %union.GCObject, %union.GCObject* %2023, i64 0, i32 0, i32 2
  %2037 = sext i32 %2010 to i64, !dbg !2679
  br label %2038, !dbg !2679

; <label>:2038:                                   ; preds = %2035, %2064
  %2039 = phi i64 [ %2037, %2035 ], [ %2065, %2064 ]
  %2040 = phi i32 [ %2027, %2035 ], [ %2042, %2064 ]
  %2041 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %227, i64 %2039, !dbg !2680
  %2042 = add nsw i32 %2040, -1, !dbg !2682
  %2043 = call %struct.lua_TValue* @luaH_setnum(%struct.lua_State* %0, %struct.Table* %2024, i32 %2040) #5, !dbg !2682
  %2044 = bitcast %struct.lua_TValue* %2041 to i64*, !dbg !2682
  %2045 = bitcast %struct.lua_TValue* %2043 to i64*, !dbg !2682
  %2046 = load i64, i64* %2044, align 8, !dbg !2682
  store i64 %2046, i64* %2045, align 8, !dbg !2682
  %2047 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2041, i64 0, i32 1, !dbg !2682
  %2048 = load i32, i32* %2047, align 8, !dbg !2682, !tbaa !423
  %2049 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2043, i64 0, i32 1, !dbg !2682
  store i32 %2048, i32* %2049, align 8, !dbg !2682, !tbaa !423
  %2050 = load i32, i32* %2047, align 8, !dbg !2683, !tbaa !423
  %2051 = icmp sgt i32 %2050, 3, !dbg !2683
  br i1 %2051, label %2052, label %2064, !dbg !2683

; <label>:2052:                                   ; preds = %2038
  %2053 = bitcast %struct.lua_TValue* %2041 to %struct.GCheader**, !dbg !2683
  %2054 = load %struct.GCheader*, %struct.GCheader** %2053, align 8, !dbg !2683, !tbaa !430
  %2055 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %2054, i64 0, i32 2, !dbg !2683
  %2056 = load i8, i8* %2055, align 1, !dbg !2683, !tbaa !430
  %2057 = and i8 %2056, 3, !dbg !2683
  %2058 = icmp eq i8 %2057, 0, !dbg !2683
  br i1 %2058, label %2064, label %2059, !dbg !2683

; <label>:2059:                                   ; preds = %2052
  %2060 = load i8, i8* %2036, align 1, !dbg !2683, !tbaa !430
  %2061 = and i8 %2060, 4, !dbg !2683
  %2062 = icmp eq i8 %2061, 0, !dbg !2683
  br i1 %2062, label %2064, label %2063, !dbg !2686

; <label>:2063:                                   ; preds = %2059
  call void @luaC_barrierback(%struct.lua_State* %0, %struct.Table* nonnull %2024) #5, !dbg !2683
  br label %2064, !dbg !2683

; <label>:2064:                                   ; preds = %2059, %2052, %2063, %2038
  %2065 = add nsw i64 %2039, -1, !dbg !2687
  %2066 = icmp sgt i64 %2039, 1, !dbg !2678
  br i1 %2066, label %2038, label %2125, !dbg !2679, !llvm.loop !1464

; <label>:2067:                                   ; preds = %222
  call void @luaF_close(%struct.lua_State* nonnull %0, %struct.lua_TValue* %227) #5, !dbg !2688
  br label %2125, !dbg !2690

; <label>:2068:                                   ; preds = %222
  %2069 = load %struct.Proto*, %struct.Proto** %143, align 8, !dbg !2691, !tbaa !1359
  %2070 = getelementptr inbounds %struct.Proto, %struct.Proto* %2069, i64 0, i32 5, !dbg !2692
  %2071 = load %struct.Proto**, %struct.Proto*** %2070, align 8, !dbg !2692, !tbaa !2693
  %2072 = lshr i32 %153, 14, !dbg !2694
  %2073 = zext i32 %2072 to i64, !dbg !2695
  %2074 = getelementptr inbounds %struct.Proto*, %struct.Proto** %2071, i64 %2073, !dbg !2695
  %2075 = load %struct.Proto*, %struct.Proto** %2074, align 8, !dbg !2695, !tbaa !519
  %2076 = getelementptr inbounds %struct.Proto, %struct.Proto* %2075, i64 0, i32 19, !dbg !2697
  %2077 = load i8, i8* %2076, align 8, !dbg !2697, !tbaa !2698
  %2078 = zext i8 %2077 to i32, !dbg !2699
  %2079 = load %struct.Table*, %struct.Table** %147, align 8, !dbg !2701, !tbaa !1476
  %2080 = call %union.Closure* @luaF_newLclosure(%struct.lua_State* nonnull %0, i32 %2078, %struct.Table* %2079) #5, !dbg !2702
  %2081 = getelementptr inbounds %union.Closure, %union.Closure* %2080, i64 0, i32 0, i32 7, !dbg !2704
  %2082 = bitcast i32 (%struct.lua_State*)** %2081 to %struct.Proto**, !dbg !2704
  store %struct.Proto* %2075, %struct.Proto** %2082, align 8, !dbg !2705, !tbaa !430
  %2083 = icmp eq i8 %2077, 0, !dbg !2707
  br i1 %2083, label %2112, label %2084, !dbg !2710

; <label>:2084:                                   ; preds = %2068
  %2085 = getelementptr inbounds %union.Closure, %union.Closure* %2080, i64 0, i32 0, i32 8
  %2086 = bitcast [1 x %struct.lua_TValue]* %2085 to [1 x %struct.UpVal*]*
  %2087 = zext i8 %2077 to i64
  br label %2088, !dbg !2710

; <label>:2088:                                   ; preds = %2106, %2084
  %2089 = phi i64 [ 0, %2084 ], [ %2107, %2106 ]
  %2090 = phi i32* [ %152, %2084 ], [ %2108, %2106 ]
  %2091 = load i32, i32* %2090, align 4, !dbg !2711, !tbaa !1370
  %2092 = and i32 %2091, 63, !dbg !2711
  %2093 = icmp eq i32 %2092, 4, !dbg !2714
  %2094 = lshr i32 %2091, 23, !dbg !2715
  %2095 = zext i32 %2094 to i64, !dbg !2715
  br i1 %2093, label %2096, label %2102, !dbg !2717

; <label>:2096:                                   ; preds = %2088
  %2097 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %141, i64 0, i32 8, i64 %2095, !dbg !2718
  %2098 = bitcast %struct.UpVal** %2097 to i64*, !dbg !2718
  %2099 = load i64, i64* %2098, align 8, !dbg !2718, !tbaa !519
  %2100 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %2086, i64 0, i64 %2089, !dbg !2719
  %2101 = bitcast %struct.UpVal** %2100 to i64*, !dbg !2720
  store i64 %2099, i64* %2101, align 8, !dbg !2720, !tbaa !430
  br label %2106, !dbg !2719

; <label>:2102:                                   ; preds = %2088
  %2103 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %2095, !dbg !2721
  %2104 = call %struct.UpVal* @luaF_findupval(%struct.lua_State* %0, %struct.lua_TValue* %2103) #5, !dbg !2722
  %2105 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %2086, i64 0, i64 %2089, !dbg !2723
  store %struct.UpVal* %2104, %struct.UpVal** %2105, align 8, !dbg !2724, !tbaa !430
  br label %2106

; <label>:2106:                                   ; preds = %2096, %2102
  %2107 = add nuw nsw i64 %2089, 1, !dbg !2725
  %2108 = getelementptr inbounds i32, i32* %2090, i64 1, !dbg !2726
  %2109 = icmp eq i64 %2107, %2087, !dbg !2707
  br i1 %2109, label %2110, label %2088, !dbg !2710, !llvm.loop !2727

; <label>:2110:                                   ; preds = %2106
  %2111 = getelementptr i32, i32* %152, i64 %2107, !dbg !2710
  br label %2112, !dbg !2729

; <label>:2112:                                   ; preds = %2110, %2068
  %2113 = phi i32* [ %152, %2068 ], [ %2111, %2110 ], !dbg !2730
  %2114 = bitcast %struct.lua_TValue* %227 to %union.Closure**, !dbg !2729
  store %union.Closure* %2080, %union.Closure** %2114, align 8, !dbg !2729, !tbaa !430
  %2115 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %226, i32 1, !dbg !2729
  store i32 6, i32* %2115, align 8, !dbg !2729, !tbaa !423
  store i32* %2113, i32** %35, align 8, !dbg !2731, !tbaa !1349
  %2116 = load %struct.global_State*, %struct.global_State** %46, align 8, !dbg !2733, !tbaa !515
  %2117 = getelementptr inbounds %struct.global_State, %struct.global_State* %2116, i64 0, i32 14, !dbg !2733
  %2118 = load i64, i64* %2117, align 8, !dbg !2733, !tbaa !1522
  %2119 = getelementptr inbounds %struct.global_State, %struct.global_State* %2116, i64 0, i32 13, !dbg !2733
  %2120 = load i64, i64* %2119, align 8, !dbg !2733, !tbaa !1526
  %2121 = icmp ult i64 %2118, %2120, !dbg !2733
  br i1 %2121, label %2123, label %2122, !dbg !2737

; <label>:2122:                                   ; preds = %2112
  call void @luaC_step(%struct.lua_State* nonnull %0) #5, !dbg !2733
  br label %2123, !dbg !2733

; <label>:2123:                                   ; preds = %2112, %2122
  %2124 = load %struct.lua_TValue*, %struct.lua_TValue** %37, align 8, !dbg !2731, !tbaa !974
  br label %2125

; <label>:2125:                                   ; preds = %2183, %2064, %261, %2123, %2067, %1990, %1932, %1748, %1718, %1694, %1476, %1445, %1403, %1392, %1296, %373, %371, %335, %300, %285, %279, %266, %249, %239, %229, %328, %321, %333, %306, %524, %422, %655, %553, %786, %684, %917, %815, %1054, %946, %1185, %1083, %1283, %1194, %1377, %1314, %1307, %1773, %1831, %1866, %1868, %1870, %222, %2015, %2033, %2161
  %2126 = phi i32* [ %152, %2161 ], [ %2017, %2033 ], [ %2017, %2015 ], [ %152, %222 ], [ %1874, %1870 ], [ %152, %1868 ], [ %152, %1866 ], [ %152, %1831 ], [ %152, %1773 ], [ %152, %1307 ], [ %152, %1314 ], [ %152, %1377 ], [ %152, %1194 ], [ %152, %1283 ], [ %152, %1083 ], [ %152, %1185 ], [ %152, %946 ], [ %152, %1054 ], [ %152, %815 ], [ %152, %917 ], [ %152, %684 ], [ %152, %786 ], [ %152, %553 ], [ %152, %655 ], [ %152, %422 ], [ %152, %524 ], [ %152, %306 ], [ %152, %333 ], [ %152, %321 ], [ %152, %328 ], [ %152, %229 ], [ %152, %239 ], [ %256, %249 ], [ %152, %266 ], [ %152, %279 ], [ %152, %285 ], [ %152, %300 ], [ %152, %335 ], [ %152, %371 ], [ %152, %373 ], [ %152, %1296 ], [ %152, %1392 ], [ %1407, %1403 ], [ %1448, %1445 ], [ %1479, %1476 ], [ %1697, %1694 ], [ %1720, %1718 ], [ %1750, %1748 ], [ %1941, %1932 ], [ %1992, %1990 ], [ %152, %2067 ], [ %2113, %2123 ], [ %152, %261 ], [ %2017, %2064 ], [ %152, %2183 ]
  %2127 = phi %struct.lua_TValue* [ %2164, %2161 ], [ %223, %2033 ], [ %223, %2015 ], [ %223, %222 ], [ %223, %1870 ], [ %223, %1868 ], [ %223, %1866 ], [ %1832, %1831 ], [ %1774, %1773 ], [ %223, %1307 ], [ %223, %1314 ], [ %1378, %1377 ], [ %223, %1194 ], [ %1284, %1283 ], [ %223, %1083 ], [ %1186, %1185 ], [ %223, %946 ], [ %1055, %1054 ], [ %223, %815 ], [ %918, %917 ], [ %223, %684 ], [ %787, %786 ], [ %223, %553 ], [ %656, %655 ], [ %223, %422 ], [ %525, %524 ], [ %223, %306 ], [ %223, %333 ], [ %223, %321 ], [ %223, %328 ], [ %223, %229 ], [ %223, %239 ], [ %223, %249 ], [ %223, %266 ], [ %284, %279 ], [ %299, %285 ], [ %305, %300 ], [ %354, %335 ], [ %372, %371 ], [ %394, %373 ], [ %223, %1296 ], [ %1393, %1392 ], [ %223, %1403 ], [ %1447, %1445 ], [ %1478, %1476 ], [ %1696, %1694 ], [ %223, %1718 ], [ %223, %1748 ], [ %223, %1932 ], [ %1969, %1990 ], [ %223, %2067 ], [ %2124, %2123 ], [ %223, %261 ], [ %223, %2064 ], [ %2164, %2183 ]
  br label %149, !dbg !1346, !llvm.loop !1464

; <label>:2128:                                   ; preds = %222
  %2129 = lshr i32 %153, 23, !dbg !2738
  %2130 = add nsw i32 %2129, -1, !dbg !2739
  %2131 = load %struct.CallInfo*, %struct.CallInfo** %36, align 8, !dbg !2741, !tbaa !1352
  %2132 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2131, i64 0, i32 0, !dbg !2743
  %2133 = bitcast %struct.CallInfo* %2131 to i64*, !dbg !2743
  %2134 = load i64, i64* %2133, align 8, !dbg !2743, !tbaa !2490
  %2135 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2131, i64 0, i32 1, !dbg !2743
  %2136 = bitcast %struct.lua_TValue** %2135 to i64*, !dbg !2743
  %2137 = load i64, i64* %2136, align 8, !dbg !2743, !tbaa !1353
  %2138 = sub i64 %2134, %2137, !dbg !2743
  %2139 = lshr exact i64 %2138, 4, !dbg !2743
  %2140 = trunc i64 %2139 to i32, !dbg !2743
  %2141 = load %struct.Proto*, %struct.Proto** %143, align 8, !dbg !2744, !tbaa !1359
  %2142 = getelementptr inbounds %struct.Proto, %struct.Proto* %2141, i64 0, i32 20, !dbg !2745
  %2143 = load i8, i8* %2142, align 1, !dbg !2745, !tbaa !2746
  %2144 = zext i8 %2143 to i32, !dbg !2747
  %2145 = xor i32 %2144, -1, !dbg !2748
  %2146 = add i32 %2145, %2140, !dbg !2748
  %2147 = icmp eq i32 %2129, 0, !dbg !2750
  br i1 %2147, label %2148, label %2161, !dbg !2752

; <label>:2148:                                   ; preds = %2128
  store i32* %152, i32** %35, align 8, !dbg !2753, !tbaa !1349
  %2149 = load i64, i64* %72, align 8, !dbg !2756, !tbaa !571
  %2150 = load i64, i64* %48, align 8, !dbg !2756, !tbaa !566
  %2151 = sub i64 %2149, %2150, !dbg !2756
  %2152 = shl nsw i32 %2146, 4, !dbg !2756
  %2153 = sext i32 %2152 to i64, !dbg !2756
  %2154 = icmp sgt i64 %2151, %2153, !dbg !2756
  br i1 %2154, label %2156, label %2155, !dbg !2759

; <label>:2155:                                   ; preds = %2148
  call void @luaD_growstack(%struct.lua_State* nonnull %0, i32 %2146) #5, !dbg !2756
  br label %2156, !dbg !2756

; <label>:2156:                                   ; preds = %2148, %2155
  %2157 = load %struct.lua_TValue*, %struct.lua_TValue** %37, align 8, !dbg !2753, !tbaa !974
  %2158 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2157, i64 %226, !dbg !2760
  %2159 = sext i32 %2146 to i64, !dbg !2761
  %2160 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2158, i64 %2159, !dbg !2761
  store %struct.lua_TValue* %2160, %struct.lua_TValue** %47, align 8, !dbg !2762, !tbaa !566
  br label %2161, !dbg !2763

; <label>:2161:                                   ; preds = %2156, %2128
  %2162 = phi i32 [ %2146, %2156 ], [ %2130, %2128 ], !dbg !2764
  %2163 = phi %struct.lua_TValue* [ %2158, %2156 ], [ %227, %2128 ], !dbg !1366
  %2164 = phi %struct.lua_TValue* [ %2157, %2156 ], [ %223, %2128 ], !dbg !2765
  %2165 = icmp sgt i32 %2162, 0, !dbg !2767
  br i1 %2165, label %2166, label %2125, !dbg !2768

; <label>:2166:                                   ; preds = %2161
  %2167 = sext i32 %2146 to i64
  %2168 = sub nsw i64 0, %2167
  %2169 = zext i32 %2162 to i64
  br label %2170, !dbg !2768

; <label>:2170:                                   ; preds = %2183, %2166
  %2171 = phi i64 [ 0, %2166 ], [ %2186, %2183 ]
  %2172 = icmp slt i64 %2171, %2167, !dbg !2769
  br i1 %2172, label %2173, label %2183, !dbg !2770

; <label>:2173:                                   ; preds = %2170
  %2174 = load %struct.lua_TValue*, %struct.lua_TValue** %2132, align 8, !dbg !2771, !tbaa !2490
  %2175 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2174, i64 %2168, !dbg !2771
  %2176 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2175, i64 %2171, !dbg !2771
  %2177 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2163, i64 %2171, !dbg !2771
  %2178 = bitcast %struct.lua_TValue* %2176 to i64*, !dbg !2771
  %2179 = bitcast %struct.lua_TValue* %2177 to i64*, !dbg !2771
  %2180 = load i64, i64* %2178, align 8, !dbg !2771
  store i64 %2180, i64* %2179, align 8, !dbg !2771
  %2181 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2176, i64 0, i32 1, !dbg !2771
  %2182 = load i32, i32* %2181, align 8, !dbg !2771, !tbaa !423
  br label %2183, !dbg !2772

; <label>:2183:                                   ; preds = %2170, %2173
  %2184 = phi i32 [ %2182, %2173 ], [ 0, %2170 ]
  %2185 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2163, i64 %2171, i32 1, !dbg !2771
  store i32 %2184, i32* %2185, align 8, !dbg !2771
  %2186 = add nuw nsw i64 %2171, 1, !dbg !2773
  %2187 = icmp eq i64 %2186, %2169, !dbg !2767
  br i1 %2187, label %2125, label %2170, !dbg !2768, !llvm.loop !1464

; <label>:2188:                                   ; preds = %1844, %1781, %1760, %219
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2774
  ret void, !dbg !2774
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
!578 = !DILocation(line: 92, column: 1, scope: !534, inlinedAt: !556)
!579 = !DILocation(line: 126, column: 7, scope: !557)
!580 = !DILocation(line: 130, column: 3, scope: !469)
!581 = !DILocation(line: 131, column: 1, scope: !469)
!582 = distinct !DISubprogram(name: "luaV_settable", scope: !1, file: !1, line: 134, type: !470, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !583)
!583 = !{!584, !585, !586, !587, !588, !589, !590, !594, !597, !598, !602, !603, !605}
!584 = !DILocalVariable(name: "L", arg: 1, scope: !582, file: !1, line: 134, type: !192)
!585 = !DILocalVariable(name: "t", arg: 2, scope: !582, file: !1, line: 134, type: !408)
!586 = !DILocalVariable(name: "key", arg: 3, scope: !582, file: !1, line: 134, type: !134)
!587 = !DILocalVariable(name: "val", arg: 4, scope: !582, file: !1, line: 134, type: !201)
!588 = !DILocalVariable(name: "loop", scope: !582, file: !1, line: 135, type: !148)
!589 = !DILocalVariable(name: "temp", scope: !582, file: !1, line: 136, type: !135)
!590 = !DILocalVariable(name: "tm", scope: !591, file: !1, line: 138, type: !408)
!591 = distinct !DILexicalBlock(scope: !592, file: !1, line: 137, column: 45)
!592 = distinct !DILexicalBlock(scope: !593, file: !1, line: 137, column: 3)
!593 = distinct !DILexicalBlock(scope: !582, file: !1, line: 137, column: 3)
!594 = !DILocalVariable(name: "h", scope: !595, file: !1, line: 140, type: !485)
!595 = distinct !DILexicalBlock(scope: !596, file: !1, line: 139, column: 23)
!596 = distinct !DILexicalBlock(scope: !591, file: !1, line: 139, column: 9)
!597 = !DILocalVariable(name: "oldval", scope: !595, file: !1, line: 141, type: !134)
!598 = !DILocalVariable(name: "o2", scope: !599, file: !1, line: 144, type: !408)
!599 = distinct !DILexicalBlock(scope: !600, file: !1, line: 144, column: 9)
!600 = distinct !DILexicalBlock(scope: !601, file: !1, line: 143, column: 64)
!601 = distinct !DILexicalBlock(scope: !595, file: !1, line: 142, column: 11)
!602 = !DILocalVariable(name: "o1", scope: !599, file: !1, line: 144, type: !134)
!603 = !DILocalVariable(name: "o2", scope: !604, file: !1, line: 158, type: !408)
!604 = distinct !DILexicalBlock(scope: !591, file: !1, line: 158, column: 5)
!605 = !DILocalVariable(name: "o1", scope: !604, file: !1, line: 158, type: !134)
!606 = !DILocation(line: 134, column: 32, scope: !582)
!607 = !DILocation(line: 134, column: 49, scope: !582)
!608 = !DILocation(line: 134, column: 60, scope: !582)
!609 = !DILocation(line: 134, column: 71, scope: !582)
!610 = !DILocation(line: 136, column: 3, scope: !582)
!611 = !DILocation(line: 135, column: 7, scope: !582)
!612 = !DILocation(line: 139, column: 9, scope: !596)
!613 = !DILocation(line: 137, column: 3, scope: !593)
!614 = !DILocation(line: 139, column: 9, scope: !591)
!615 = !DILocation(line: 140, column: 18, scope: !595)
!616 = !DILocation(line: 140, column: 14, scope: !595)
!617 = !DILocation(line: 141, column: 24, scope: !595)
!618 = !DILocation(line: 141, column: 15, scope: !595)
!619 = !DILocation(line: 142, column: 12, scope: !601)
!620 = !DILocation(line: 142, column: 28, scope: !601)
!621 = !DILocation(line: 143, column: 17, scope: !601)
!622 = !DILocation(line: 138, column: 19, scope: !591)
!623 = !DILocation(line: 143, column: 55, scope: !601)
!624 = !DILocation(line: 142, column: 11, scope: !595)
!625 = !DILocation(line: 153, column: 9, scope: !626)
!626 = distinct !DILexicalBlock(scope: !591, file: !1, line: 153, column: 9)
!627 = !DILocation(line: 144, column: 9, scope: !599)
!628 = !DILocation(line: 145, column: 12, scope: !600)
!629 = !DILocation(line: 145, column: 18, scope: !600)
!630 = !DILocation(line: 146, column: 9, scope: !631)
!631 = distinct !DILexicalBlock(scope: !632, file: !1, line: 146, column: 9)
!632 = distinct !DILexicalBlock(scope: !600, file: !1, line: 146, column: 9)
!633 = !DILocation(line: 146, column: 9, scope: !632)
!634 = !DILocation(line: 151, column: 14, scope: !635)
!635 = distinct !DILexicalBlock(scope: !596, file: !1, line: 151, column: 14)
!636 = !DILocation(line: 151, column: 14, scope: !596)
!637 = !DILocation(line: 152, column: 7, scope: !635)
!638 = !DILocation(line: 0, scope: !635)
!639 = !DILocation(line: 153, column: 9, scope: !591)
!640 = !DILocalVariable(name: "L", arg: 1, scope: !641, file: !1, line: 96, type: !192)
!641 = distinct !DISubprogram(name: "callTM", scope: !1, file: !1, line: 96, type: !642, isLocal: true, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !644)
!642 = !DISubroutineType(types: !643)
!643 = !{null, !192, !408, !408, !408, !408}
!644 = !{!640, !645, !646, !647, !648, !649, !651, !652, !654, !655, !657, !658, !660}
!645 = !DILocalVariable(name: "f", arg: 2, scope: !641, file: !1, line: 96, type: !408)
!646 = !DILocalVariable(name: "p1", arg: 3, scope: !641, file: !1, line: 96, type: !408)
!647 = !DILocalVariable(name: "p2", arg: 4, scope: !641, file: !1, line: 97, type: !408)
!648 = !DILocalVariable(name: "p3", arg: 5, scope: !641, file: !1, line: 97, type: !408)
!649 = !DILocalVariable(name: "o2", scope: !650, file: !1, line: 98, type: !408)
!650 = distinct !DILexicalBlock(scope: !641, file: !1, line: 98, column: 3)
!651 = !DILocalVariable(name: "o1", scope: !650, file: !1, line: 98, type: !134)
!652 = !DILocalVariable(name: "o2", scope: !653, file: !1, line: 99, type: !408)
!653 = distinct !DILexicalBlock(scope: !641, file: !1, line: 99, column: 3)
!654 = !DILocalVariable(name: "o1", scope: !653, file: !1, line: 99, type: !134)
!655 = !DILocalVariable(name: "o2", scope: !656, file: !1, line: 100, type: !408)
!656 = distinct !DILexicalBlock(scope: !641, file: !1, line: 100, column: 3)
!657 = !DILocalVariable(name: "o1", scope: !656, file: !1, line: 100, type: !134)
!658 = !DILocalVariable(name: "o2", scope: !659, file: !1, line: 101, type: !408)
!659 = distinct !DILexicalBlock(scope: !641, file: !1, line: 101, column: 3)
!660 = !DILocalVariable(name: "o1", scope: !659, file: !1, line: 101, type: !134)
!661 = !DILocation(line: 96, column: 32, scope: !641, inlinedAt: !662)
!662 = distinct !DILocation(line: 154, column: 7, scope: !663)
!663 = distinct !DILexicalBlock(scope: !626, file: !1, line: 153, column: 27)
!664 = !DILocation(line: 96, column: 49, scope: !641, inlinedAt: !662)
!665 = !DILocation(line: 96, column: 66, scope: !641, inlinedAt: !662)
!666 = !DILocation(line: 97, column: 35, scope: !641, inlinedAt: !662)
!667 = !DILocation(line: 97, column: 53, scope: !641, inlinedAt: !662)
!668 = !DILocation(line: 98, column: 3, scope: !650, inlinedAt: !662)
!669 = !DILocation(line: 99, column: 3, scope: !653, inlinedAt: !662)
!670 = !DILocation(line: 100, column: 3, scope: !656, inlinedAt: !662)
!671 = !DILocation(line: 101, column: 3, scope: !659, inlinedAt: !662)
!672 = !DILocation(line: 102, column: 3, scope: !673, inlinedAt: !662)
!673 = distinct !DILexicalBlock(scope: !641, file: !1, line: 102, column: 3)
!674 = !DILocation(line: 102, column: 3, scope: !641, inlinedAt: !662)
!675 = !DILocation(line: 103, column: 10, scope: !641, inlinedAt: !662)
!676 = !DILocation(line: 104, column: 3, scope: !641, inlinedAt: !662)
!677 = !DILocation(line: 105, column: 1, scope: !641, inlinedAt: !662)
!678 = !DILocation(line: 155, column: 7, scope: !663)
!679 = !DILocation(line: 158, column: 5, scope: !604)
!680 = !DILocation(line: 137, column: 41, scope: !592)
!681 = !DILocation(line: 137, column: 23, scope: !592)
!682 = distinct !{!682, !613, !683}
!683 = !DILocation(line: 160, column: 3, scope: !593)
!684 = !DILocation(line: 161, column: 3, scope: !582)
!685 = !DILocation(line: 162, column: 1, scope: !582)
!686 = distinct !DISubprogram(name: "luaV_lessthan", scope: !1, file: !1, line: 225, type: !687, isLocal: false, isDefinition: true, scopeLine: 225, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !689)
!687 = !DISubroutineType(types: !688)
!688 = !{!148, !192, !408, !408}
!689 = !{!690, !691, !692, !693}
!690 = !DILocalVariable(name: "L", arg: 1, scope: !686, file: !1, line: 225, type: !192)
!691 = !DILocalVariable(name: "l", arg: 2, scope: !686, file: !1, line: 225, type: !408)
!692 = !DILocalVariable(name: "r", arg: 3, scope: !686, file: !1, line: 225, type: !408)
!693 = !DILocalVariable(name: "res", scope: !686, file: !1, line: 226, type: !148)
!694 = !DILocation(line: 225, column: 31, scope: !686)
!695 = !DILocation(line: 225, column: 48, scope: !686)
!696 = !DILocation(line: 225, column: 65, scope: !686)
!697 = !DILocation(line: 227, column: 7, scope: !698)
!698 = distinct !DILexicalBlock(scope: !686, file: !1, line: 227, column: 7)
!699 = !DILocation(line: 227, column: 19, scope: !698)
!700 = !DILocation(line: 227, column: 16, scope: !698)
!701 = !DILocation(line: 227, column: 7, scope: !686)
!702 = !DILocation(line: 228, column: 12, scope: !698)
!703 = !DILocation(line: 228, column: 5, scope: !698)
!704 = !DILocation(line: 229, column: 12, scope: !698)
!705 = !DILocation(line: 230, column: 12, scope: !706)
!706 = distinct !DILexicalBlock(scope: !698, file: !1, line: 229, column: 12)
!707 = !DILocation(line: 230, column: 5, scope: !706)
!708 = !DILocation(line: 232, column: 21, scope: !709)
!709 = distinct !DILexicalBlock(scope: !706, file: !1, line: 231, column: 12)
!710 = !DILocation(line: 232, column: 36, scope: !709)
!711 = !DILocalVariable(name: "ls", arg: 1, scope: !712, file: !1, line: 203, type: !715)
!712 = distinct !DISubprogram(name: "l_strcmp", scope: !1, file: !1, line: 203, type: !713, isLocal: true, isDefinition: true, scopeLine: 203, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !717)
!713 = !DISubroutineType(types: !714)
!714 = !{!148, !715, !715}
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !277)
!717 = !{!711, !718, !719, !720, !721, !722, !723, !727}
!718 = !DILocalVariable(name: "rs", arg: 2, scope: !712, file: !1, line: 203, type: !715)
!719 = !DILocalVariable(name: "l", scope: !712, file: !1, line: 204, type: !67)
!720 = !DILocalVariable(name: "ll", scope: !712, file: !1, line: 205, type: !108)
!721 = !DILocalVariable(name: "r", scope: !712, file: !1, line: 206, type: !67)
!722 = !DILocalVariable(name: "lr", scope: !712, file: !1, line: 207, type: !108)
!723 = !DILocalVariable(name: "temp", scope: !724, file: !1, line: 209, type: !148)
!724 = distinct !DILexicalBlock(scope: !725, file: !1, line: 208, column: 12)
!725 = distinct !DILexicalBlock(scope: !726, file: !1, line: 208, column: 3)
!726 = distinct !DILexicalBlock(scope: !712, file: !1, line: 208, column: 3)
!727 = !DILocalVariable(name: "len", scope: !728, file: !1, line: 212, type: !108)
!728 = distinct !DILexicalBlock(scope: !729, file: !1, line: 211, column: 10)
!729 = distinct !DILexicalBlock(scope: !724, file: !1, line: 210, column: 9)
!730 = !DILocation(line: 203, column: 37, scope: !712, inlinedAt: !731)
!731 = distinct !DILocation(line: 232, column: 12, scope: !709)
!732 = !DILocation(line: 203, column: 56, scope: !712, inlinedAt: !731)
!733 = !DILocation(line: 204, column: 19, scope: !712, inlinedAt: !731)
!734 = !DILocation(line: 204, column: 15, scope: !712, inlinedAt: !731)
!735 = !DILocation(line: 205, column: 23, scope: !712, inlinedAt: !731)
!736 = !DILocation(line: 205, column: 10, scope: !712, inlinedAt: !731)
!737 = !DILocation(line: 206, column: 19, scope: !712, inlinedAt: !731)
!738 = !DILocation(line: 206, column: 15, scope: !712, inlinedAt: !731)
!739 = !DILocation(line: 207, column: 23, scope: !712, inlinedAt: !731)
!740 = !DILocation(line: 207, column: 10, scope: !712, inlinedAt: !731)
!741 = !DILocation(line: 209, column: 16, scope: !724, inlinedAt: !731)
!742 = !DILocation(line: 209, column: 9, scope: !724, inlinedAt: !731)
!743 = !DILocation(line: 210, column: 14, scope: !729, inlinedAt: !731)
!744 = !DILocation(line: 210, column: 9, scope: !724, inlinedAt: !731)
!745 = !DILocation(line: 212, column: 20, scope: !728, inlinedAt: !731)
!746 = !DILocation(line: 212, column: 14, scope: !728, inlinedAt: !731)
!747 = !DILocation(line: 213, column: 15, scope: !748, inlinedAt: !731)
!748 = distinct !DILexicalBlock(scope: !728, file: !1, line: 213, column: 11)
!749 = !DILocation(line: 213, column: 11, scope: !728, inlinedAt: !731)
!750 = !DILocation(line: 0, scope: !751, inlinedAt: !731)
!751 = distinct !DILexicalBlock(scope: !748, file: !1, line: 215, column: 16)
!752 = !DILocation(line: 215, column: 16, scope: !748, inlinedAt: !731)
!753 = !DILocation(line: 218, column: 10, scope: !728, inlinedAt: !731)
!754 = !DILocation(line: 219, column: 9, scope: !728, inlinedAt: !731)
!755 = !DILocation(line: 219, column: 20, scope: !728, inlinedAt: !731)
!756 = !DILocation(line: 219, column: 30, scope: !728, inlinedAt: !731)
!757 = !DILocation(line: 219, column: 41, scope: !728, inlinedAt: !731)
!758 = !DILocation(line: 222, column: 1, scope: !712, inlinedAt: !731)
!759 = !DILocation(line: 232, column: 51, scope: !709)
!760 = !DILocation(line: 232, column: 5, scope: !709)
!761 = !DILocalVariable(name: "L", arg: 1, scope: !762, file: !1, line: 190, type: !192)
!762 = distinct !DISubprogram(name: "call_orderTM", scope: !1, file: !1, line: 190, type: !763, isLocal: true, isDefinition: true, scopeLine: 191, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !766)
!763 = !DISubroutineType(types: !764)
!764 = !{!148, !192, !408, !408, !765}
!765 = !DIDerivedType(tag: DW_TAG_typedef, name: "TMS", file: !4, line: 37, baseType: !3)
!766 = !{!761, !767, !768, !769, !770, !771}
!767 = !DILocalVariable(name: "p1", arg: 2, scope: !762, file: !1, line: 190, type: !408)
!768 = !DILocalVariable(name: "p2", arg: 3, scope: !762, file: !1, line: 190, type: !408)
!769 = !DILocalVariable(name: "event", arg: 4, scope: !762, file: !1, line: 191, type: !765)
!770 = !DILocalVariable(name: "tm1", scope: !762, file: !1, line: 192, type: !408)
!771 = !DILocalVariable(name: "tm2", scope: !762, file: !1, line: 193, type: !408)
!772 = !DILocation(line: 190, column: 37, scope: !762, inlinedAt: !773)
!773 = distinct !DILocation(line: 233, column: 19, scope: !774)
!774 = distinct !DILexicalBlock(scope: !709, file: !1, line: 233, column: 12)
!775 = !DILocation(line: 190, column: 54, scope: !762, inlinedAt: !773)
!776 = !DILocation(line: 190, column: 72, scope: !762, inlinedAt: !773)
!777 = !DILocation(line: 191, column: 30, scope: !762, inlinedAt: !773)
!778 = !DILocation(line: 192, column: 23, scope: !762, inlinedAt: !773)
!779 = !DILocation(line: 192, column: 17, scope: !762, inlinedAt: !773)
!780 = !DILocation(line: 194, column: 7, scope: !781, inlinedAt: !773)
!781 = distinct !DILexicalBlock(scope: !762, file: !1, line: 194, column: 7)
!782 = !DILocation(line: 194, column: 7, scope: !762, inlinedAt: !773)
!783 = !DILocation(line: 195, column: 9, scope: !762, inlinedAt: !773)
!784 = !DILocation(line: 193, column: 17, scope: !762, inlinedAt: !773)
!785 = !DILocation(line: 196, column: 8, scope: !786, inlinedAt: !773)
!786 = distinct !DILexicalBlock(scope: !762, file: !1, line: 196, column: 7)
!787 = !DILocation(line: 196, column: 7, scope: !762, inlinedAt: !773)
!788 = !DILocation(line: 198, column: 19, scope: !762, inlinedAt: !773)
!789 = !DILocation(line: 80, column: 35, scope: !534, inlinedAt: !790)
!790 = distinct !DILocation(line: 198, column: 3, scope: !762, inlinedAt: !773)
!791 = !DILocation(line: 80, column: 44, scope: !534, inlinedAt: !790)
!792 = !DILocation(line: 80, column: 63, scope: !534, inlinedAt: !790)
!793 = !DILocation(line: 81, column: 39, scope: !534, inlinedAt: !790)
!794 = !DILocation(line: 81, column: 57, scope: !534, inlinedAt: !790)
!795 = !DILocation(line: 82, column: 22, scope: !534, inlinedAt: !790)
!796 = !DILocation(line: 82, column: 13, scope: !534, inlinedAt: !790)
!797 = !DILocation(line: 83, column: 3, scope: !544, inlinedAt: !790)
!798 = !DILocation(line: 84, column: 3, scope: !547, inlinedAt: !790)
!799 = !DILocation(line: 85, column: 3, scope: !550, inlinedAt: !790)
!800 = !DILocation(line: 86, column: 3, scope: !570, inlinedAt: !790)
!801 = !DILocation(line: 86, column: 3, scope: !534, inlinedAt: !790)
!802 = !DILocation(line: 87, column: 10, scope: !534, inlinedAt: !790)
!803 = !DILocation(line: 88, column: 3, scope: !534, inlinedAt: !790)
!804 = !DILocation(line: 89, column: 9, scope: !534, inlinedAt: !790)
!805 = !DILocation(line: 90, column: 9, scope: !534, inlinedAt: !790)
!806 = !DILocation(line: 91, column: 3, scope: !553, inlinedAt: !790)
!807 = !DILocation(line: 92, column: 1, scope: !534, inlinedAt: !790)
!808 = !DILocation(line: 199, column: 11, scope: !762, inlinedAt: !773)
!809 = !DILocation(line: 199, column: 3, scope: !762, inlinedAt: !773)
!810 = !DILocation(line: 200, column: 1, scope: !762, inlinedAt: !773)
!811 = !DILocation(line: 226, column: 7, scope: !686)
!812 = !DILocation(line: 233, column: 12, scope: !709)
!813 = !DILocation(line: 235, column: 10, scope: !686)
!814 = !DILocation(line: 235, column: 3, scope: !686)
!815 = !DILocation(line: 0, scope: !686)
!816 = !DILocation(line: 236, column: 1, scope: !686)
!817 = distinct !DISubprogram(name: "luaV_equalval", scope: !1, file: !1, line: 255, type: !687, isLocal: false, isDefinition: true, scopeLine: 255, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !818)
!818 = !{!819, !820, !821, !822}
!819 = !DILocalVariable(name: "L", arg: 1, scope: !817, file: !1, line: 255, type: !192)
!820 = !DILocalVariable(name: "t1", arg: 2, scope: !817, file: !1, line: 255, type: !408)
!821 = !DILocalVariable(name: "t2", arg: 3, scope: !817, file: !1, line: 255, type: !408)
!822 = !DILocalVariable(name: "tm", scope: !817, file: !1, line: 256, type: !408)
!823 = !DILocation(line: 255, column: 31, scope: !817)
!824 = !DILocation(line: 255, column: 48, scope: !817)
!825 = !DILocation(line: 255, column: 66, scope: !817)
!826 = !DILocation(line: 258, column: 11, scope: !817)
!827 = !DILocation(line: 258, column: 3, scope: !817)
!828 = !DILocation(line: 260, column: 30, scope: !829)
!829 = distinct !DILexicalBlock(scope: !817, file: !1, line: 258, column: 22)
!830 = !DILocation(line: 260, column: 23, scope: !829)
!831 = !DILocation(line: 261, column: 31, scope: !829)
!832 = !DILocation(line: 261, column: 45, scope: !829)
!833 = !DILocation(line: 261, column: 42, scope: !829)
!834 = !DILocation(line: 261, column: 24, scope: !829)
!835 = !DILocation(line: 262, column: 37, scope: !829)
!836 = !DILocation(line: 262, column: 51, scope: !829)
!837 = !DILocation(line: 262, column: 48, scope: !829)
!838 = !DILocation(line: 262, column: 30, scope: !829)
!839 = !DILocation(line: 264, column: 11, scope: !840)
!840 = distinct !DILexicalBlock(scope: !841, file: !1, line: 264, column: 11)
!841 = distinct !DILexicalBlock(scope: !829, file: !1, line: 263, column: 25)
!842 = !DILocation(line: 264, column: 25, scope: !840)
!843 = !DILocation(line: 264, column: 22, scope: !840)
!844 = !DILocation(line: 264, column: 11, scope: !841)
!845 = !DILocation(line: 265, column: 38, scope: !841)
!846 = !DILocation(line: 265, column: 61, scope: !841)
!847 = !DILocalVariable(name: "L", arg: 1, scope: !848, file: !1, line: 176, type: !192)
!848 = distinct !DISubprogram(name: "get_compTM", scope: !1, file: !1, line: 176, type: !849, isLocal: true, isDefinition: true, scopeLine: 177, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !851)
!849 = !DISubroutineType(types: !850)
!850 = !{!408, !192, !485, !485, !765}
!851 = !{!847, !852, !853, !854, !855, !856}
!852 = !DILocalVariable(name: "mt1", arg: 2, scope: !848, file: !1, line: 176, type: !485)
!853 = !DILocalVariable(name: "mt2", arg: 3, scope: !848, file: !1, line: 176, type: !485)
!854 = !DILocalVariable(name: "event", arg: 4, scope: !848, file: !1, line: 177, type: !765)
!855 = !DILocalVariable(name: "tm1", scope: !848, file: !1, line: 178, type: !408)
!856 = !DILocalVariable(name: "tm2", scope: !848, file: !1, line: 179, type: !408)
!857 = !DILocation(line: 176, column: 45, scope: !848, inlinedAt: !858)
!858 = distinct !DILocation(line: 265, column: 12, scope: !841)
!859 = !DILocation(line: 176, column: 55, scope: !848, inlinedAt: !858)
!860 = !DILocation(line: 176, column: 67, scope: !848, inlinedAt: !858)
!861 = !DILocation(line: 177, column: 39, scope: !848, inlinedAt: !858)
!862 = !DILocation(line: 178, column: 23, scope: !848, inlinedAt: !858)
!863 = !DILocation(line: 178, column: 17, scope: !848, inlinedAt: !858)
!864 = !DILocation(line: 180, column: 11, scope: !865, inlinedAt: !858)
!865 = distinct !DILexicalBlock(scope: !848, file: !1, line: 180, column: 7)
!866 = !DILocation(line: 180, column: 7, scope: !848, inlinedAt: !858)
!867 = !DILocation(line: 181, column: 11, scope: !868, inlinedAt: !858)
!868 = distinct !DILexicalBlock(scope: !848, file: !1, line: 181, column: 7)
!869 = !DILocation(line: 181, column: 7, scope: !848, inlinedAt: !858)
!870 = !DILocation(line: 182, column: 9, scope: !848, inlinedAt: !858)
!871 = !DILocation(line: 179, column: 17, scope: !848, inlinedAt: !858)
!872 = !DILocation(line: 183, column: 11, scope: !873, inlinedAt: !858)
!873 = distinct !DILexicalBlock(scope: !848, file: !1, line: 183, column: 7)
!874 = !DILocation(line: 183, column: 7, scope: !848, inlinedAt: !858)
!875 = !DILocation(line: 184, column: 7, scope: !876, inlinedAt: !858)
!876 = distinct !DILexicalBlock(scope: !848, file: !1, line: 184, column: 7)
!877 = !DILocation(line: 186, column: 3, scope: !848, inlinedAt: !858)
!878 = !DILocation(line: 270, column: 11, scope: !879)
!879 = distinct !DILexicalBlock(scope: !880, file: !1, line: 270, column: 11)
!880 = distinct !DILexicalBlock(scope: !829, file: !1, line: 269, column: 22)
!881 = !DILocation(line: 270, column: 25, scope: !879)
!882 = !DILocation(line: 270, column: 22, scope: !879)
!883 = !DILocation(line: 270, column: 11, scope: !880)
!884 = !DILocation(line: 271, column: 38, scope: !880)
!885 = !DILocation(line: 271, column: 61, scope: !880)
!886 = !DILocation(line: 176, column: 45, scope: !848, inlinedAt: !887)
!887 = distinct !DILocation(line: 271, column: 12, scope: !880)
!888 = !DILocation(line: 176, column: 55, scope: !848, inlinedAt: !887)
!889 = !DILocation(line: 176, column: 67, scope: !848, inlinedAt: !887)
!890 = !DILocation(line: 177, column: 39, scope: !848, inlinedAt: !887)
!891 = !DILocation(line: 178, column: 23, scope: !848, inlinedAt: !887)
!892 = !DILocation(line: 178, column: 17, scope: !848, inlinedAt: !887)
!893 = !DILocation(line: 180, column: 11, scope: !865, inlinedAt: !887)
!894 = !DILocation(line: 180, column: 7, scope: !848, inlinedAt: !887)
!895 = !DILocation(line: 181, column: 11, scope: !868, inlinedAt: !887)
!896 = !DILocation(line: 181, column: 7, scope: !848, inlinedAt: !887)
!897 = !DILocation(line: 182, column: 9, scope: !848, inlinedAt: !887)
!898 = !DILocation(line: 179, column: 17, scope: !848, inlinedAt: !887)
!899 = !DILocation(line: 183, column: 11, scope: !873, inlinedAt: !887)
!900 = !DILocation(line: 183, column: 7, scope: !848, inlinedAt: !887)
!901 = !DILocation(line: 184, column: 7, scope: !876, inlinedAt: !887)
!902 = !DILocation(line: 186, column: 3, scope: !848, inlinedAt: !887)
!903 = !DILocation(line: 274, column: 21, scope: !829)
!904 = !DILocation(line: 274, column: 36, scope: !829)
!905 = !DILocation(line: 274, column: 33, scope: !829)
!906 = !DILocation(line: 274, column: 14, scope: !829)
!907 = !DILocation(line: 0, scope: !841)
!908 = !DILocation(line: 187, column: 1, scope: !848, inlinedAt: !887)
!909 = !DILocation(line: 256, column: 17, scope: !817)
!910 = !DILocation(line: 276, column: 10, scope: !911)
!911 = distinct !DILexicalBlock(scope: !817, file: !1, line: 276, column: 7)
!912 = !DILocation(line: 276, column: 7, scope: !817)
!913 = !DILocation(line: 277, column: 19, scope: !817)
!914 = !DILocation(line: 80, column: 35, scope: !534, inlinedAt: !915)
!915 = distinct !DILocation(line: 277, column: 3, scope: !817)
!916 = !DILocation(line: 80, column: 44, scope: !534, inlinedAt: !915)
!917 = !DILocation(line: 80, column: 63, scope: !534, inlinedAt: !915)
!918 = !DILocation(line: 81, column: 39, scope: !534, inlinedAt: !915)
!919 = !DILocation(line: 81, column: 57, scope: !534, inlinedAt: !915)
!920 = !DILocation(line: 82, column: 22, scope: !534, inlinedAt: !915)
!921 = !DILocation(line: 82, column: 13, scope: !534, inlinedAt: !915)
!922 = !DILocation(line: 83, column: 3, scope: !544, inlinedAt: !915)
!923 = !DILocation(line: 84, column: 3, scope: !547, inlinedAt: !915)
!924 = !DILocation(line: 85, column: 3, scope: !550, inlinedAt: !915)
!925 = !DILocation(line: 86, column: 3, scope: !570, inlinedAt: !915)
!926 = !DILocation(line: 86, column: 3, scope: !534, inlinedAt: !915)
!927 = !DILocation(line: 87, column: 10, scope: !534, inlinedAt: !915)
!928 = !DILocation(line: 88, column: 3, scope: !534, inlinedAt: !915)
!929 = !DILocation(line: 89, column: 9, scope: !534, inlinedAt: !915)
!930 = !DILocation(line: 90, column: 9, scope: !534, inlinedAt: !915)
!931 = !DILocation(line: 91, column: 3, scope: !553, inlinedAt: !915)
!932 = !DILocation(line: 92, column: 1, scope: !534, inlinedAt: !915)
!933 = !DILocation(line: 278, column: 11, scope: !817)
!934 = !DILocation(line: 278, column: 3, scope: !817)
!935 = !DILocation(line: 0, scope: !829)
!936 = !DILocation(line: 279, column: 1, scope: !817)
!937 = distinct !DISubprogram(name: "luaV_concat", scope: !1, file: !1, line: 282, type: !938, isLocal: false, isDefinition: true, scopeLine: 282, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !940)
!938 = !DISubroutineType(types: !939)
!939 = !{null, !192, !148, !148}
!940 = !{!941, !942, !943, !944, !946, !947, !951, !952, !953, !957, !961}
!941 = !DILocalVariable(name: "L", arg: 1, scope: !937, file: !1, line: 282, type: !192)
!942 = !DILocalVariable(name: "total", arg: 2, scope: !937, file: !1, line: 282, type: !148)
!943 = !DILocalVariable(name: "last", arg: 3, scope: !937, file: !1, line: 282, type: !148)
!944 = !DILocalVariable(name: "top", scope: !945, file: !1, line: 284, type: !201)
!945 = distinct !DILexicalBlock(scope: !937, file: !1, line: 283, column: 6)
!946 = !DILocalVariable(name: "n", scope: !945, file: !1, line: 285, type: !148)
!947 = !DILocalVariable(name: "tl", scope: !948, file: !1, line: 293, type: !108)
!948 = distinct !DILexicalBlock(scope: !949, file: !1, line: 291, column: 10)
!949 = distinct !DILexicalBlock(scope: !950, file: !1, line: 289, column: 16)
!950 = distinct !DILexicalBlock(scope: !945, file: !1, line: 286, column: 9)
!951 = !DILocalVariable(name: "buffer", scope: !948, file: !1, line: 294, type: !238)
!952 = !DILocalVariable(name: "i", scope: !948, file: !1, line: 295, type: !148)
!953 = !DILocalVariable(name: "l", scope: !954, file: !1, line: 298, type: !108)
!954 = distinct !DILexicalBlock(scope: !955, file: !1, line: 297, column: 59)
!955 = distinct !DILexicalBlock(scope: !956, file: !1, line: 297, column: 7)
!956 = distinct !DILexicalBlock(scope: !948, file: !1, line: 297, column: 7)
!957 = !DILocalVariable(name: "l", scope: !958, file: !1, line: 305, type: !108)
!958 = distinct !DILexicalBlock(scope: !959, file: !1, line: 304, column: 27)
!959 = distinct !DILexicalBlock(scope: !960, file: !1, line: 304, column: 7)
!960 = distinct !DILexicalBlock(scope: !948, file: !1, line: 304, column: 7)
!961 = !DILocalVariable(name: "i_o", scope: !962, file: !1, line: 309, type: !134)
!962 = distinct !DILexicalBlock(scope: !948, file: !1, line: 309, column: 7)
!963 = !DILocation(line: 51, column: 10, scope: !448, inlinedAt: !964)
!964 = distinct !DILocation(line: 297, column: 32, scope: !955)
!965 = !DILocation(line: 51, column: 10, scope: !448, inlinedAt: !966)
!966 = distinct !DILocation(line: 290, column: 13, scope: !949)
!967 = !DILocation(line: 51, column: 10, scope: !448, inlinedAt: !968)
!968 = distinct !DILocation(line: 286, column: 55, scope: !950)
!969 = !DILocation(line: 282, column: 30, scope: !937)
!970 = !DILocation(line: 282, column: 37, scope: !937)
!971 = !DILocation(line: 282, column: 48, scope: !937)
!972 = !DILocation(line: 283, column: 3, scope: !937)
!973 = !DILocation(line: 284, column: 20, scope: !945)
!974 = !{!516, !513, i64 24}
!975 = !DILocation(line: 284, column: 25, scope: !945)
!976 = !DILocation(line: 284, column: 32, scope: !945)
!977 = !DILocation(line: 284, column: 11, scope: !945)
!978 = !DILocation(line: 285, column: 9, scope: !945)
!979 = !DILocation(line: 286, column: 11, scope: !950)
!980 = !DILocation(line: 286, column: 29, scope: !950)
!981 = !DILocation(line: 0, scope: !982)
!982 = distinct !DILexicalBlock(scope: !983, file: !1, line: 287, column: 11)
!983 = distinct !DILexicalBlock(scope: !950, file: !1, line: 286, column: 75)
!984 = !DILocation(line: 286, column: 55, scope: !950)
!985 = !DILocation(line: 57, column: 1, scope: !441, inlinedAt: !968)
!986 = !DILocation(line: 286, column: 9, scope: !945)
!987 = !DILocation(line: 51, column: 5, scope: !448, inlinedAt: !968)
!988 = !DILocation(line: 52, column: 20, scope: !448, inlinedAt: !968)
!989 = !DILocation(line: 52, column: 16, scope: !448, inlinedAt: !968)
!990 = !DILocation(line: 53, column: 5, scope: !448, inlinedAt: !968)
!991 = !DILocation(line: 54, column: 5, scope: !455, inlinedAt: !968)
!992 = !DILocation(line: 56, column: 3, scope: !449, inlinedAt: !968)
!993 = !DILocalVariable(name: "L", arg: 1, scope: !994, file: !1, line: 165, type: !192)
!994 = distinct !DISubprogram(name: "call_binTM", scope: !1, file: !1, line: 165, type: !995, isLocal: true, isDefinition: true, scopeLine: 166, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !997)
!995 = !DISubroutineType(types: !996)
!996 = !{!148, !192, !408, !408, !201, !765}
!997 = !{!993, !998, !999, !1000, !1001, !1002}
!998 = !DILocalVariable(name: "p1", arg: 2, scope: !994, file: !1, line: 165, type: !408)
!999 = !DILocalVariable(name: "p2", arg: 3, scope: !994, file: !1, line: 165, type: !408)
!1000 = !DILocalVariable(name: "res", arg: 4, scope: !994, file: !1, line: 166, type: !201)
!1001 = !DILocalVariable(name: "event", arg: 5, scope: !994, file: !1, line: 166, type: !765)
!1002 = !DILocalVariable(name: "tm", scope: !994, file: !1, line: 167, type: !408)
!1003 = !DILocation(line: 165, column: 35, scope: !994, inlinedAt: !1004)
!1004 = distinct !DILocation(line: 287, column: 12, scope: !982)
!1005 = !DILocation(line: 165, column: 52, scope: !994, inlinedAt: !1004)
!1006 = !DILocation(line: 165, column: 70, scope: !994, inlinedAt: !1004)
!1007 = !DILocation(line: 166, column: 30, scope: !994, inlinedAt: !1004)
!1008 = !DILocation(line: 166, column: 39, scope: !994, inlinedAt: !1004)
!1009 = !DILocation(line: 167, column: 22, scope: !994, inlinedAt: !1004)
!1010 = !DILocation(line: 167, column: 17, scope: !994, inlinedAt: !1004)
!1011 = !DILocation(line: 168, column: 7, scope: !1012, inlinedAt: !1004)
!1012 = distinct !DILexicalBlock(scope: !994, file: !1, line: 168, column: 7)
!1013 = !DILocation(line: 168, column: 7, scope: !994, inlinedAt: !1004)
!1014 = !DILocation(line: 169, column: 10, scope: !1012, inlinedAt: !1004)
!1015 = !DILocation(line: 170, column: 7, scope: !1016, inlinedAt: !1004)
!1016 = distinct !DILexicalBlock(scope: !994, file: !1, line: 170, column: 7)
!1017 = !DILocation(line: 170, column: 7, scope: !994, inlinedAt: !1004)
!1018 = !DILocation(line: 83, column: 3, scope: !544, inlinedAt: !1019)
!1019 = distinct !DILocation(line: 171, column: 3, scope: !994, inlinedAt: !1004)
!1020 = !DILocation(line: 287, column: 36, scope: !982)
!1021 = !DILocation(line: 80, column: 35, scope: !534, inlinedAt: !1019)
!1022 = !DILocation(line: 80, column: 44, scope: !534, inlinedAt: !1019)
!1023 = !DILocation(line: 80, column: 63, scope: !534, inlinedAt: !1019)
!1024 = !DILocation(line: 81, column: 39, scope: !534, inlinedAt: !1019)
!1025 = !DILocation(line: 81, column: 57, scope: !534, inlinedAt: !1019)
!1026 = !DILocation(line: 82, column: 22, scope: !534, inlinedAt: !1019)
!1027 = !DILocation(line: 82, column: 13, scope: !534, inlinedAt: !1019)
!1028 = !DILocation(line: 84, column: 3, scope: !547, inlinedAt: !1019)
!1029 = !DILocation(line: 85, column: 3, scope: !550, inlinedAt: !1019)
!1030 = !DILocation(line: 86, column: 3, scope: !570, inlinedAt: !1019)
!1031 = !DILocation(line: 86, column: 3, scope: !534, inlinedAt: !1019)
!1032 = !DILocation(line: 87, column: 10, scope: !534, inlinedAt: !1019)
!1033 = !DILocation(line: 88, column: 3, scope: !534, inlinedAt: !1019)
!1034 = !DILocation(line: 89, column: 9, scope: !534, inlinedAt: !1019)
!1035 = !DILocation(line: 90, column: 9, scope: !534, inlinedAt: !1019)
!1036 = !DILocation(line: 91, column: 3, scope: !553, inlinedAt: !1019)
!1037 = !DILocation(line: 92, column: 1, scope: !534, inlinedAt: !1019)
!1038 = !DILocation(line: 173, column: 1, scope: !994, inlinedAt: !1004)
!1039 = !DILocation(line: 287, column: 11, scope: !983)
!1040 = !DILocation(line: 288, column: 9, scope: !982)
!1041 = !DILocation(line: 289, column: 16, scope: !949)
!1042 = !DILocation(line: 289, column: 32, scope: !949)
!1043 = !DILocation(line: 289, column: 36, scope: !949)
!1044 = !DILocation(line: 289, column: 16, scope: !950)
!1045 = !DILocation(line: 293, column: 14, scope: !948)
!1046 = !DILocation(line: 297, column: 21, scope: !955)
!1047 = !DILocation(line: 297, column: 29, scope: !955)
!1048 = !DILocation(line: 297, column: 32, scope: !955)
!1049 = !DILocation(line: 290, column: 13, scope: !949)
!1050 = !DILocation(line: 51, column: 5, scope: !448, inlinedAt: !966)
!1051 = !DILocation(line: 52, column: 20, scope: !448, inlinedAt: !966)
!1052 = !DILocation(line: 52, column: 16, scope: !448, inlinedAt: !966)
!1053 = !DILocation(line: 53, column: 5, scope: !448, inlinedAt: !966)
!1054 = !DILocation(line: 54, column: 5, scope: !455, inlinedAt: !966)
!1055 = !DILocation(line: 56, column: 3, scope: !449, inlinedAt: !966)
!1056 = !DILocation(line: 57, column: 1, scope: !441, inlinedAt: !966)
!1057 = !DILocation(line: 57, column: 1, scope: !441, inlinedAt: !964)
!1058 = !DILocation(line: 297, column: 7, scope: !956)
!1059 = !DILocation(line: 51, column: 5, scope: !448, inlinedAt: !964)
!1060 = !DILocation(line: 52, column: 20, scope: !448, inlinedAt: !964)
!1061 = !DILocation(line: 52, column: 16, scope: !448, inlinedAt: !964)
!1062 = !DILocation(line: 53, column: 5, scope: !448, inlinedAt: !964)
!1063 = !DILocation(line: 54, column: 5, scope: !455, inlinedAt: !964)
!1064 = !DILocation(line: 56, column: 3, scope: !449, inlinedAt: !964)
!1065 = !DILocation(line: 298, column: 20, scope: !954)
!1066 = !DILocation(line: 298, column: 38, scope: !954)
!1067 = !DILocation(line: 298, column: 16, scope: !954)
!1068 = !DILocation(line: 299, column: 28, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !954, file: !1, line: 299, column: 13)
!1070 = !DILocation(line: 299, column: 15, scope: !1069)
!1071 = !DILocation(line: 299, column: 13, scope: !954)
!1072 = !DILocation(line: 299, column: 34, scope: !1069)
!1073 = !DILocation(line: 300, column: 12, scope: !954)
!1074 = !DILocation(line: 297, column: 55, scope: !955)
!1075 = distinct !{!1075, !1058, !1076}
!1076 = !DILocation(line: 301, column: 7, scope: !956)
!1077 = !DILocation(line: 302, column: 35, scope: !948)
!1078 = !DILocation(line: 302, column: 41, scope: !948)
!1079 = !DILocation(line: 302, column: 16, scope: !948)
!1080 = !DILocation(line: 294, column: 13, scope: !948)
!1081 = !DILocation(line: 295, column: 11, scope: !948)
!1082 = !DILocation(line: 304, column: 7, scope: !960)
!1083 = !DILocation(line: 305, column: 20, scope: !958)
!1084 = !DILocation(line: 305, column: 36, scope: !958)
!1085 = !DILocation(line: 305, column: 16, scope: !958)
!1086 = !DILocation(line: 306, column: 22, scope: !958)
!1087 = !DILocation(line: 306, column: 27, scope: !958)
!1088 = !DILocation(line: 306, column: 9, scope: !958)
!1089 = !DILocation(line: 307, column: 12, scope: !958)
!1090 = !DILocation(line: 304, column: 23, scope: !959)
!1091 = !DILocation(line: 304, column: 18, scope: !959)
!1092 = distinct !{!1092, !1082, !1093}
!1093 = !DILocation(line: 308, column: 7, scope: !960)
!1094 = !DILocation(line: 309, column: 7, scope: !962)
!1095 = !DILocation(line: 0, scope: !945)
!1096 = !DILocation(line: 311, column: 15, scope: !945)
!1097 = !DILocation(line: 311, column: 11, scope: !945)
!1098 = !DILocation(line: 312, column: 10, scope: !945)
!1099 = !DILocation(line: 313, column: 18, scope: !937)
!1100 = !DILocation(line: 313, column: 3, scope: !945)
!1101 = distinct !{!1101, !972, !1102}
!1102 = !DILocation(line: 313, column: 21, scope: !937)
!1103 = !DILocation(line: 314, column: 1, scope: !937)
!1104 = distinct !DISubprogram(name: "luaV_execute", scope: !1, file: !1, line: 377, type: !1105, isLocal: false, isDefinition: true, scopeLine: 377, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1107)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{null, !192, !148}
!1107 = !{!1108, !1109, !1110, !1112, !1113, !1114, !1115, !1119, !1120, !1124, !1125, !1128, !1129, !1132, !1134, !1136, !1138, !1139, !1141, !1142, !1144, !1146, !1148, !1150, !1152, !1153, !1155, !1156, !1158, !1160, !1162, !1163, !1166, !1167, !1170, !1171, !1173, !1176, !1177, !1180, !1181, !1183, !1186, !1187, !1190, !1191, !1193, !1196, !1197, !1200, !1201, !1203, !1206, !1207, !1210, !1211, !1213, !1216, !1217, !1220, !1221, !1223, !1225, !1228, !1230, !1232, !1234, !1236, !1240, !1243, !1245, !1246, !1248, !1249, !1251, !1252, !1254, !1258, !1259, !1261, !1262, !1264, !1267, !1268, !1269, !1270, !1274, !1275, !1277, !1279, !1280, !1281, !1285, !1287, !1289, !1290, !1291, !1293, !1295, !1297, !1298, !1300, !1301, !1303, !1304, !1308, !1309, !1311, !1312, !1313, !1314, !1318, !1320, !1321, !1325, !1328, !1329, !1330, !1332, !1334, !1335, !1336, !1337, !1344}
!1108 = !DILocalVariable(name: "L", arg: 1, scope: !1104, file: !1, line: 377, type: !192)
!1109 = !DILocalVariable(name: "nexeccalls", arg: 2, scope: !1104, file: !1, line: 377, type: !148)
!1110 = !DILocalVariable(name: "cl", scope: !1104, file: !1, line: 378, type: !1111)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!1112 = !DILocalVariable(name: "base", scope: !1104, file: !1, line: 379, type: !201)
!1113 = !DILocalVariable(name: "k", scope: !1104, file: !1, line: 380, type: !134)
!1114 = !DILocalVariable(name: "pc", scope: !1104, file: !1, line: 381, type: !289)
!1115 = !DILocalVariable(name: "i", scope: !1116, file: !1, line: 390, type: !290)
!1116 = distinct !DILexicalBlock(scope: !1117, file: !1, line: 389, column: 12)
!1117 = distinct !DILexicalBlock(scope: !1118, file: !1, line: 389, column: 3)
!1118 = distinct !DILexicalBlock(scope: !1104, file: !1, line: 389, column: 3)
!1119 = !DILocalVariable(name: "ra", scope: !1116, file: !1, line: 391, type: !201)
!1120 = !DILocalVariable(name: "o2", scope: !1121, file: !1, line: 408, type: !408)
!1121 = distinct !DILexicalBlock(scope: !1122, file: !1, line: 408, column: 9)
!1122 = distinct !DILexicalBlock(scope: !1123, file: !1, line: 407, column: 21)
!1123 = distinct !DILexicalBlock(scope: !1116, file: !1, line: 406, column: 28)
!1124 = !DILocalVariable(name: "o1", scope: !1121, file: !1, line: 408, type: !134)
!1125 = !DILocalVariable(name: "o2", scope: !1126, file: !1, line: 412, type: !408)
!1126 = distinct !DILexicalBlock(scope: !1127, file: !1, line: 412, column: 9)
!1127 = distinct !DILexicalBlock(scope: !1123, file: !1, line: 411, column: 22)
!1128 = !DILocalVariable(name: "o1", scope: !1126, file: !1, line: 412, type: !134)
!1129 = !DILocalVariable(name: "i_o", scope: !1130, file: !1, line: 416, type: !134)
!1130 = distinct !DILexicalBlock(scope: !1131, file: !1, line: 416, column: 9)
!1131 = distinct !DILexicalBlock(scope: !1123, file: !1, line: 415, column: 25)
!1132 = !DILocalVariable(name: "rb", scope: !1133, file: !1, line: 421, type: !134)
!1133 = distinct !DILexicalBlock(scope: !1123, file: !1, line: 420, column: 24)
!1134 = !DILocalVariable(name: "b", scope: !1135, file: !1, line: 428, type: !148)
!1135 = distinct !DILexicalBlock(scope: !1123, file: !1, line: 427, column: 25)
!1136 = !DILocalVariable(name: "o2", scope: !1137, file: !1, line: 429, type: !408)
!1137 = distinct !DILexicalBlock(scope: !1135, file: !1, line: 429, column: 9)
!1138 = !DILocalVariable(name: "o1", scope: !1137, file: !1, line: 429, type: !134)
!1139 = !DILocalVariable(name: "g", scope: !1140, file: !1, line: 433, type: !135)
!1140 = distinct !DILexicalBlock(scope: !1123, file: !1, line: 432, column: 26)
!1141 = !DILocalVariable(name: "rb", scope: !1140, file: !1, line: 434, type: !134)
!1142 = !DILocalVariable(name: "i_o", scope: !1143, file: !1, line: 435, type: !134)
!1143 = distinct !DILexicalBlock(scope: !1140, file: !1, line: 435, column: 9)
!1144 = !DILocalVariable(name: "g", scope: !1145, file: !1, line: 445, type: !135)
!1145 = distinct !DILexicalBlock(scope: !1123, file: !1, line: 444, column: 26)
!1146 = !DILocalVariable(name: "i_o", scope: !1147, file: !1, line: 446, type: !134)
!1147 = distinct !DILexicalBlock(scope: !1145, file: !1, line: 446, column: 9)
!1148 = !DILocalVariable(name: "uv", scope: !1149, file: !1, line: 452, type: !395)
!1149 = distinct !DILexicalBlock(scope: !1123, file: !1, line: 451, column: 25)
!1150 = !DILocalVariable(name: "o2", scope: !1151, file: !1, line: 453, type: !408)
!1151 = distinct !DILexicalBlock(scope: !1149, file: !1, line: 453, column: 9)
!1152 = !DILocalVariable(name: "o1", scope: !1151, file: !1, line: 453, type: !134)
!1153 = !DILocalVariable(name: "b", scope: !1154, file: !1, line: 462, type: !148)
!1154 = distinct !DILexicalBlock(scope: !1123, file: !1, line: 461, column: 25)
!1155 = !DILocalVariable(name: "c", scope: !1154, file: !1, line: 463, type: !148)
!1156 = !DILocalVariable(name: "i_o", scope: !1157, file: !1, line: 464, type: !134)
!1157 = distinct !DILexicalBlock(scope: !1154, file: !1, line: 464, column: 9)
!1158 = !DILocalVariable(name: "rb", scope: !1159, file: !1, line: 469, type: !201)
!1159 = distinct !DILexicalBlock(scope: !1123, file: !1, line: 468, column: 21)
!1160 = !DILocalVariable(name: "o2", scope: !1161, file: !1, line: 470, type: !408)
!1161 = distinct !DILexicalBlock(scope: !1159, file: !1, line: 470, column: 9)
!1162 = !DILocalVariable(name: "o1", scope: !1161, file: !1, line: 470, type: !134)
!1163 = !DILocalVariable(name: "rb", scope: !1164, file: !1, line: 475, type: !134)
!1164 = distinct !DILexicalBlock(scope: !1165, file: !1, line: 475, column: 9)
!1165 = distinct !DILexicalBlock(scope: !1123, file: !1, line: 474, column: 20)
!1166 = !DILocalVariable(name: "rc", scope: !1164, file: !1, line: 475, type: !134)
!1167 = !DILocalVariable(name: "nb", scope: !1168, file: !1, line: 475, type: !145)
!1168 = distinct !DILexicalBlock(scope: !1169, file: !1, line: 475, column: 9)
!1169 = distinct !DILexicalBlock(scope: !1164, file: !1, line: 475, column: 9)
!1170 = !DILocalVariable(name: "nc", scope: !1168, file: !1, line: 475, type: !145)
!1171 = !DILocalVariable(name: "i_o", scope: !1172, file: !1, line: 475, type: !134)
!1172 = distinct !DILexicalBlock(scope: !1168, file: !1, line: 475, column: 9)
!1173 = !DILocalVariable(name: "rb", scope: !1174, file: !1, line: 479, type: !134)
!1174 = distinct !DILexicalBlock(scope: !1175, file: !1, line: 479, column: 9)
!1175 = distinct !DILexicalBlock(scope: !1123, file: !1, line: 478, column: 20)
!1176 = !DILocalVariable(name: "rc", scope: !1174, file: !1, line: 479, type: !134)
!1177 = !DILocalVariable(name: "nb", scope: !1178, file: !1, line: 479, type: !145)
!1178 = distinct !DILexicalBlock(scope: !1179, file: !1, line: 479, column: 9)
!1179 = distinct !DILexicalBlock(scope: !1174, file: !1, line: 479, column: 9)
!1180 = !DILocalVariable(name: "nc", scope: !1178, file: !1, line: 479, type: !145)
!1181 = !DILocalVariable(name: "i_o", scope: !1182, file: !1, line: 479, type: !134)
!1182 = distinct !DILexicalBlock(scope: !1178, file: !1, line: 479, column: 9)
!1183 = !DILocalVariable(name: "rb", scope: !1184, file: !1, line: 483, type: !134)
!1184 = distinct !DILexicalBlock(scope: !1185, file: !1, line: 483, column: 9)
!1185 = distinct !DILexicalBlock(scope: !1123, file: !1, line: 482, column: 20)
!1186 = !DILocalVariable(name: "rc", scope: !1184, file: !1, line: 483, type: !134)
!1187 = !DILocalVariable(name: "nb", scope: !1188, file: !1, line: 483, type: !145)
!1188 = distinct !DILexicalBlock(scope: !1189, file: !1, line: 483, column: 9)
!1189 = distinct !DILexicalBlock(scope: !1184, file: !1, line: 483, column: 9)
!1190 = !DILocalVariable(name: "nc", scope: !1188, file: !1, line: 483, type: !145)
!1191 = !DILocalVariable(name: "i_o", scope: !1192, file: !1, line: 483, type: !134)
!1192 = distinct !DILexicalBlock(scope: !1188, file: !1, line: 483, column: 9)
!1193 = !DILocalVariable(name: "rb", scope: !1194, file: !1, line: 487, type: !134)
!1194 = distinct !DILexicalBlock(scope: !1195, file: !1, line: 487, column: 9)
!1195 = distinct !DILexicalBlock(scope: !1123, file: !1, line: 486, column: 20)
!1196 = !DILocalVariable(name: "rc", scope: !1194, file: !1, line: 487, type: !134)
!1197 = !DILocalVariable(name: "nb", scope: !1198, file: !1, line: 487, type: !145)
!1198 = distinct !DILexicalBlock(scope: !1199, file: !1, line: 487, column: 9)
!1199 = distinct !DILexicalBlock(scope: !1194, file: !1, line: 487, column: 9)
!1200 = !DILocalVariable(name: "nc", scope: !1198, file: !1, line: 487, type: !145)
!1201 = !DILocalVariable(name: "i_o", scope: !1202, file: !1, line: 487, type: !134)
!1202 = distinct !DILexicalBlock(scope: !1198, file: !1, line: 487, column: 9)
!1203 = !DILocalVariable(name: "rb", scope: !1204, file: !1, line: 491, type: !134)
!1204 = distinct !DILexicalBlock(scope: !1205, file: !1, line: 491, column: 9)
!1205 = distinct !DILexicalBlock(scope: !1123, file: !1, line: 490, column: 20)
!1206 = !DILocalVariable(name: "rc", scope: !1204, file: !1, line: 491, type: !134)
!1207 = !DILocalVariable(name: "nb", scope: !1208, file: !1, line: 491, type: !145)
!1208 = distinct !DILexicalBlock(scope: !1209, file: !1, line: 491, column: 9)
!1209 = distinct !DILexicalBlock(scope: !1204, file: !1, line: 491, column: 9)
!1210 = !DILocalVariable(name: "nc", scope: !1208, file: !1, line: 491, type: !145)
!1211 = !DILocalVariable(name: "i_o", scope: !1212, file: !1, line: 491, type: !134)
!1212 = distinct !DILexicalBlock(scope: !1208, file: !1, line: 491, column: 9)
!1213 = !DILocalVariable(name: "rb", scope: !1214, file: !1, line: 495, type: !134)
!1214 = distinct !DILexicalBlock(scope: !1215, file: !1, line: 495, column: 9)
!1215 = distinct !DILexicalBlock(scope: !1123, file: !1, line: 494, column: 20)
!1216 = !DILocalVariable(name: "rc", scope: !1214, file: !1, line: 495, type: !134)
!1217 = !DILocalVariable(name: "nb", scope: !1218, file: !1, line: 495, type: !145)
!1218 = distinct !DILexicalBlock(scope: !1219, file: !1, line: 495, column: 9)
!1219 = distinct !DILexicalBlock(scope: !1214, file: !1, line: 495, column: 9)
!1220 = !DILocalVariable(name: "nc", scope: !1218, file: !1, line: 495, type: !145)
!1221 = !DILocalVariable(name: "i_o", scope: !1222, file: !1, line: 495, type: !134)
!1222 = distinct !DILexicalBlock(scope: !1218, file: !1, line: 495, column: 9)
!1223 = !DILocalVariable(name: "rb", scope: !1224, file: !1, line: 499, type: !134)
!1224 = distinct !DILexicalBlock(scope: !1123, file: !1, line: 498, column: 20)
!1225 = !DILocalVariable(name: "nb", scope: !1226, file: !1, line: 501, type: !145)
!1226 = distinct !DILexicalBlock(scope: !1227, file: !1, line: 500, column: 29)
!1227 = distinct !DILexicalBlock(scope: !1224, file: !1, line: 500, column: 13)
!1228 = !DILocalVariable(name: "i_o", scope: !1229, file: !1, line: 502, type: !134)
!1229 = distinct !DILexicalBlock(scope: !1226, file: !1, line: 502, column: 11)
!1230 = !DILocalVariable(name: "res", scope: !1231, file: !1, line: 510, type: !148)
!1231 = distinct !DILexicalBlock(scope: !1123, file: !1, line: 509, column: 20)
!1232 = !DILocalVariable(name: "i_o", scope: !1233, file: !1, line: 511, type: !134)
!1233 = distinct !DILexicalBlock(scope: !1231, file: !1, line: 511, column: 9)
!1234 = !DILocalVariable(name: "rb", scope: !1235, file: !1, line: 515, type: !408)
!1235 = distinct !DILexicalBlock(scope: !1123, file: !1, line: 514, column: 20)
!1236 = !DILocalVariable(name: "i_o", scope: !1237, file: !1, line: 518, type: !134)
!1237 = distinct !DILexicalBlock(scope: !1238, file: !1, line: 518, column: 13)
!1238 = distinct !DILexicalBlock(scope: !1239, file: !1, line: 517, column: 28)
!1239 = distinct !DILexicalBlock(scope: !1235, file: !1, line: 516, column: 28)
!1240 = !DILocalVariable(name: "i_o", scope: !1241, file: !1, line: 522, type: !134)
!1241 = distinct !DILexicalBlock(scope: !1242, file: !1, line: 522, column: 13)
!1242 = distinct !DILexicalBlock(scope: !1239, file: !1, line: 521, column: 29)
!1243 = !DILocalVariable(name: "b", scope: !1244, file: !1, line: 535, type: !148)
!1244 = distinct !DILexicalBlock(scope: !1123, file: !1, line: 534, column: 23)
!1245 = !DILocalVariable(name: "c", scope: !1244, file: !1, line: 536, type: !148)
!1246 = !DILocalVariable(name: "o2", scope: !1247, file: !1, line: 538, type: !408)
!1247 = distinct !DILexicalBlock(scope: !1244, file: !1, line: 538, column: 9)
!1248 = !DILocalVariable(name: "o1", scope: !1247, file: !1, line: 538, type: !134)
!1249 = !DILocalVariable(name: "rb", scope: !1250, file: !1, line: 546, type: !134)
!1250 = distinct !DILexicalBlock(scope: !1123, file: !1, line: 545, column: 19)
!1251 = !DILocalVariable(name: "rc", scope: !1250, file: !1, line: 547, type: !134)
!1252 = !DILocalVariable(name: "rb", scope: !1253, file: !1, line: 578, type: !134)
!1253 = distinct !DILexicalBlock(scope: !1123, file: !1, line: 577, column: 24)
!1254 = !DILocalVariable(name: "o2", scope: !1255, file: !1, line: 580, type: !408)
!1255 = distinct !DILexicalBlock(scope: !1256, file: !1, line: 580, column: 11)
!1256 = distinct !DILexicalBlock(scope: !1257, file: !1, line: 579, column: 43)
!1257 = distinct !DILexicalBlock(scope: !1253, file: !1, line: 579, column: 13)
!1258 = !DILocalVariable(name: "o1", scope: !1255, file: !1, line: 580, type: !134)
!1259 = !DILocalVariable(name: "b", scope: !1260, file: !1, line: 587, type: !148)
!1260 = distinct !DILexicalBlock(scope: !1123, file: !1, line: 586, column: 21)
!1261 = !DILocalVariable(name: "nresults", scope: !1260, file: !1, line: 588, type: !148)
!1262 = !DILocalVariable(name: "b", scope: !1263, file: !1, line: 608, type: !148)
!1263 = distinct !DILexicalBlock(scope: !1123, file: !1, line: 607, column: 25)
!1264 = !DILocalVariable(name: "ci", scope: !1265, file: !1, line: 615, type: !281)
!1265 = distinct !DILexicalBlock(scope: !1266, file: !1, line: 613, column: 24)
!1266 = distinct !DILexicalBlock(scope: !1263, file: !1, line: 612, column: 51)
!1267 = !DILocalVariable(name: "aux", scope: !1265, file: !1, line: 616, type: !148)
!1268 = !DILocalVariable(name: "func", scope: !1265, file: !1, line: 617, type: !201)
!1269 = !DILocalVariable(name: "pfunc", scope: !1265, file: !1, line: 618, type: !201)
!1270 = !DILocalVariable(name: "o2", scope: !1271, file: !1, line: 622, type: !408)
!1271 = distinct !DILexicalBlock(scope: !1272, file: !1, line: 622, column: 15)
!1272 = distinct !DILexicalBlock(scope: !1273, file: !1, line: 621, column: 13)
!1273 = distinct !DILexicalBlock(scope: !1265, file: !1, line: 621, column: 13)
!1274 = !DILocalVariable(name: "o1", scope: !1271, file: !1, line: 622, type: !134)
!1275 = !DILocalVariable(name: "b", scope: !1276, file: !1, line: 640, type: !148)
!1276 = distinct !DILexicalBlock(scope: !1123, file: !1, line: 639, column: 23)
!1277 = !DILocalVariable(name: "step", scope: !1278, file: !1, line: 655, type: !145)
!1278 = distinct !DILexicalBlock(scope: !1123, file: !1, line: 654, column: 24)
!1279 = !DILocalVariable(name: "idx", scope: !1278, file: !1, line: 656, type: !145)
!1280 = !DILocalVariable(name: "limit", scope: !1278, file: !1, line: 657, type: !145)
!1281 = !DILocalVariable(name: "i_o", scope: !1282, file: !1, line: 661, type: !134)
!1282 = distinct !DILexicalBlock(scope: !1283, file: !1, line: 661, column: 11)
!1283 = distinct !DILexicalBlock(scope: !1284, file: !1, line: 659, column: 59)
!1284 = distinct !DILexicalBlock(scope: !1278, file: !1, line: 658, column: 13)
!1285 = !DILocalVariable(name: "i_o", scope: !1286, file: !1, line: 662, type: !134)
!1286 = distinct !DILexicalBlock(scope: !1283, file: !1, line: 662, column: 11)
!1287 = !DILocalVariable(name: "init", scope: !1288, file: !1, line: 667, type: !408)
!1288 = distinct !DILexicalBlock(scope: !1123, file: !1, line: 666, column: 24)
!1289 = !DILocalVariable(name: "plimit", scope: !1288, file: !1, line: 668, type: !408)
!1290 = !DILocalVariable(name: "pstep", scope: !1288, file: !1, line: 669, type: !408)
!1291 = !DILocalVariable(name: "i_o", scope: !1292, file: !1, line: 677, type: !134)
!1292 = distinct !DILexicalBlock(scope: !1288, file: !1, line: 677, column: 9)
!1293 = !DILocalVariable(name: "cb", scope: !1294, file: !1, line: 682, type: !201)
!1294 = distinct !DILexicalBlock(scope: !1123, file: !1, line: 681, column: 25)
!1295 = !DILocalVariable(name: "o2", scope: !1296, file: !1, line: 683, type: !408)
!1296 = distinct !DILexicalBlock(scope: !1294, file: !1, line: 683, column: 9)
!1297 = !DILocalVariable(name: "o1", scope: !1296, file: !1, line: 683, type: !134)
!1298 = !DILocalVariable(name: "o2", scope: !1299, file: !1, line: 684, type: !408)
!1299 = distinct !DILexicalBlock(scope: !1294, file: !1, line: 684, column: 9)
!1300 = !DILocalVariable(name: "o1", scope: !1299, file: !1, line: 684, type: !134)
!1301 = !DILocalVariable(name: "o2", scope: !1302, file: !1, line: 685, type: !408)
!1302 = distinct !DILexicalBlock(scope: !1294, file: !1, line: 685, column: 9)
!1303 = !DILocalVariable(name: "o1", scope: !1302, file: !1, line: 685, type: !134)
!1304 = !DILocalVariable(name: "o2", scope: !1305, file: !1, line: 691, type: !408)
!1305 = distinct !DILexicalBlock(scope: !1306, file: !1, line: 691, column: 11)
!1306 = distinct !DILexicalBlock(scope: !1307, file: !1, line: 690, column: 27)
!1307 = distinct !DILexicalBlock(scope: !1294, file: !1, line: 690, column: 13)
!1308 = !DILocalVariable(name: "o1", scope: !1305, file: !1, line: 691, type: !134)
!1309 = !DILocalVariable(name: "n", scope: !1310, file: !1, line: 698, type: !148)
!1310 = distinct !DILexicalBlock(scope: !1123, file: !1, line: 697, column: 24)
!1311 = !DILocalVariable(name: "c", scope: !1310, file: !1, line: 699, type: !148)
!1312 = !DILocalVariable(name: "last", scope: !1310, file: !1, line: 700, type: !148)
!1313 = !DILocalVariable(name: "h", scope: !1310, file: !1, line: 701, type: !485)
!1314 = !DILocalVariable(name: "val", scope: !1315, file: !1, line: 713, type: !134)
!1315 = distinct !DILexicalBlock(scope: !1316, file: !1, line: 712, column: 28)
!1316 = distinct !DILexicalBlock(scope: !1317, file: !1, line: 712, column: 9)
!1317 = distinct !DILexicalBlock(scope: !1310, file: !1, line: 712, column: 9)
!1318 = !DILocalVariable(name: "o2", scope: !1319, file: !1, line: 714, type: !408)
!1319 = distinct !DILexicalBlock(scope: !1315, file: !1, line: 714, column: 11)
!1320 = !DILocalVariable(name: "o1", scope: !1319, file: !1, line: 714, type: !134)
!1321 = !DILocalVariable(name: "p", scope: !1322, file: !1, line: 724, type: !1323)
!1322 = distinct !DILexicalBlock(scope: !1123, file: !1, line: 723, column: 24)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DIDerivedType(tag: DW_TAG_typedef, name: "Proto", file: !72, line: 253, baseType: !358)
!1325 = !DILocalVariable(name: "ncl", scope: !1322, file: !1, line: 725, type: !1326)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_typedef, name: "Closure", file: !72, line: 312, baseType: !174)
!1328 = !DILocalVariable(name: "nup", scope: !1322, file: !1, line: 726, type: !148)
!1329 = !DILocalVariable(name: "j", scope: !1322, file: !1, line: 726, type: !148)
!1330 = !DILocalVariable(name: "i_o", scope: !1331, file: !1, line: 739, type: !134)
!1331 = distinct !DILexicalBlock(scope: !1322, file: !1, line: 739, column: 9)
!1332 = !DILocalVariable(name: "b", scope: !1333, file: !1, line: 744, type: !148)
!1333 = distinct !DILexicalBlock(scope: !1123, file: !1, line: 743, column: 23)
!1334 = !DILocalVariable(name: "j", scope: !1333, file: !1, line: 745, type: !148)
!1335 = !DILocalVariable(name: "ci", scope: !1333, file: !1, line: 746, type: !281)
!1336 = !DILocalVariable(name: "n", scope: !1333, file: !1, line: 747, type: !148)
!1337 = !DILocalVariable(name: "o2", scope: !1338, file: !1, line: 756, type: !408)
!1338 = distinct !DILexicalBlock(scope: !1339, file: !1, line: 756, column: 13)
!1339 = distinct !DILexicalBlock(scope: !1340, file: !1, line: 755, column: 22)
!1340 = distinct !DILexicalBlock(scope: !1341, file: !1, line: 755, column: 15)
!1341 = distinct !DILexicalBlock(scope: !1342, file: !1, line: 754, column: 33)
!1342 = distinct !DILexicalBlock(scope: !1343, file: !1, line: 754, column: 9)
!1343 = distinct !DILexicalBlock(scope: !1333, file: !1, line: 754, column: 9)
!1344 = !DILocalVariable(name: "o1", scope: !1338, file: !1, line: 756, type: !134)
!1345 = !DILocation(line: 377, column: 31, scope: !1104)
!1346 = !DILocation(line: 377, column: 38, scope: !1104)
!1347 = !DILocation(line: 381, column: 3, scope: !1104)
!1348 = !DILocation(line: 384, column: 11, scope: !1104)
!1349 = !{!516, !513, i64 48}
!1350 = !DILocation(line: 381, column: 22, scope: !1104)
!1351 = !DILocation(line: 385, column: 9, scope: !1104)
!1352 = !{!516, !513, i64 40}
!1353 = !{!1354, !513, i64 8}
!1354 = !{!"CallInfo", !513, i64 0, !513, i64 8, !513, i64 16, !513, i64 24, !427, i64 32, !427, i64 36}
!1355 = !DILocation(line: 378, column: 13, scope: !1104)
!1356 = !DILocation(line: 386, column: 13, scope: !1104)
!1357 = !DILocation(line: 379, column: 9, scope: !1104)
!1358 = !DILocation(line: 387, column: 11, scope: !1104)
!1359 = !{!1360, !513, i64 32}
!1360 = !{!"LClosure", !513, i64 0, !425, i64 8, !425, i64 9, !425, i64 10, !425, i64 11, !513, i64 16, !513, i64 24, !513, i64 32, !425, i64 40}
!1361 = !DILocation(line: 387, column: 14, scope: !1104)
!1362 = !{!1363, !513, i64 16}
!1363 = !{!"Proto", !513, i64 0, !425, i64 8, !425, i64 9, !513, i64 16, !513, i64 24, !513, i64 32, !513, i64 40, !513, i64 48, !513, i64 56, !513, i64 64, !427, i64 72, !427, i64 76, !427, i64 80, !427, i64 84, !427, i64 88, !427, i64 92, !427, i64 96, !427, i64 100, !513, i64 104, !425, i64 112, !425, i64 113, !425, i64 114, !425, i64 115}
!1364 = !DILocation(line: 380, column: 11, scope: !1104)
!1365 = !DILocation(line: 389, column: 3, scope: !1104)
!1366 = !DILocation(line: 0, scope: !1116)
!1367 = !DILocation(line: 386, column: 8, scope: !1104)
!1368 = !DILocation(line: 390, column: 30, scope: !1116)
!1369 = !DILocation(line: 390, column: 27, scope: !1116)
!1370 = !{!427, !427, i64 0}
!1371 = !DILocation(line: 390, column: 23, scope: !1116)
!1372 = !DILocation(line: 392, column: 13, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1116, file: !1, line: 392, column: 9)
!1374 = !{!516, !425, i64 100}
!1375 = !DILocation(line: 392, column: 22, scope: !1373)
!1376 = !DILocation(line: 392, column: 56, scope: !1373)
!1377 = !DILocation(line: 393, column: 10, scope: !1373)
!1378 = !{!516, !427, i64 108}
!1379 = !DILocation(line: 393, column: 25, scope: !1373)
!1380 = !DILocation(line: 393, column: 45, scope: !1373)
!1381 = !DILocation(line: 393, column: 30, scope: !1373)
!1382 = !DILocalVariable(name: "L", arg: 1, scope: !1383, file: !1, line: 60, type: !192)
!1383 = distinct !DISubprogram(name: "traceexec", scope: !1, file: !1, line: 60, type: !1384, isLocal: true, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1386)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{null, !192, !289}
!1386 = !{!1382, !1387, !1388, !1389, !1390, !1393, !1394}
!1387 = !DILocalVariable(name: "pc", arg: 2, scope: !1383, file: !1, line: 60, type: !289)
!1388 = !DILocalVariable(name: "mask", scope: !1383, file: !1, line: 61, type: !82)
!1389 = !DILocalVariable(name: "oldpc", scope: !1383, file: !1, line: 62, type: !289)
!1390 = !DILocalVariable(name: "p", scope: !1391, file: !1, line: 69, type: !1323)
!1391 = distinct !DILexicalBlock(scope: !1392, file: !1, line: 68, column: 28)
!1392 = distinct !DILexicalBlock(scope: !1383, file: !1, line: 68, column: 7)
!1393 = !DILocalVariable(name: "npc", scope: !1391, file: !1, line: 70, type: !148)
!1394 = !DILocalVariable(name: "newline", scope: !1391, file: !1, line: 71, type: !148)
!1395 = !DILocation(line: 60, column: 35, scope: !1383, inlinedAt: !1396)
!1396 = distinct !DILocation(line: 394, column: 7, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1373, file: !1, line: 393, column: 62)
!1398 = !DILocation(line: 60, column: 57, scope: !1383, inlinedAt: !1396)
!1399 = !DILocation(line: 61, column: 11, scope: !1383, inlinedAt: !1396)
!1400 = !DILocation(line: 62, column: 33, scope: !1383, inlinedAt: !1396)
!1401 = !DILocation(line: 62, column: 22, scope: !1383, inlinedAt: !1396)
!1402 = !DILocation(line: 63, column: 14, scope: !1383, inlinedAt: !1396)
!1403 = !DILocation(line: 64, column: 8, scope: !1404, inlinedAt: !1396)
!1404 = distinct !DILexicalBlock(scope: !1383, file: !1, line: 64, column: 7)
!1405 = !DILocation(line: 64, column: 13, scope: !1404, inlinedAt: !1396)
!1406 = !DILocation(line: 64, column: 30, scope: !1404, inlinedAt: !1396)
!1407 = !DILocation(line: 65, column: 5, scope: !1408, inlinedAt: !1396)
!1408 = distinct !DILexicalBlock(scope: !1404, file: !1, line: 64, column: 52)
!1409 = !{!516, !427, i64 104}
!1410 = !DILocation(line: 66, column: 5, scope: !1408, inlinedAt: !1396)
!1411 = !DILocation(line: 67, column: 3, scope: !1408, inlinedAt: !1396)
!1412 = !DILocation(line: 68, column: 12, scope: !1392, inlinedAt: !1396)
!1413 = !DILocation(line: 68, column: 7, scope: !1383, inlinedAt: !1396)
!1414 = !DILocation(line: 69, column: 16, scope: !1391, inlinedAt: !1396)
!1415 = !DILocation(line: 69, column: 34, scope: !1391, inlinedAt: !1396)
!1416 = !DILocation(line: 69, column: 12, scope: !1391, inlinedAt: !1396)
!1417 = !DILocation(line: 70, column: 15, scope: !1391, inlinedAt: !1396)
!1418 = !{!1363, !513, i64 24}
!1419 = !DILocation(line: 70, column: 9, scope: !1391, inlinedAt: !1396)
!1420 = !DILocation(line: 71, column: 19, scope: !1391, inlinedAt: !1396)
!1421 = !{!1363, !513, i64 40}
!1422 = !DILocation(line: 71, column: 9, scope: !1391, inlinedAt: !1396)
!1423 = !DILocation(line: 74, column: 13, scope: !1424, inlinedAt: !1396)
!1424 = distinct !DILexicalBlock(scope: !1391, file: !1, line: 74, column: 9)
!1425 = !DILocation(line: 74, column: 24, scope: !1424, inlinedAt: !1396)
!1426 = !DILocation(line: 74, column: 18, scope: !1424, inlinedAt: !1396)
!1427 = !DILocation(line: 74, column: 47, scope: !1424, inlinedAt: !1396)
!1428 = !DILocation(line: 74, column: 44, scope: !1424, inlinedAt: !1396)
!1429 = !DILocation(line: 74, column: 9, scope: !1391, inlinedAt: !1396)
!1430 = !DILocation(line: 75, column: 7, scope: !1424, inlinedAt: !1396)
!1431 = !DILocation(line: 77, column: 1, scope: !1383, inlinedAt: !1396)
!1432 = !DILocation(line: 395, column: 14, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1397, file: !1, line: 395, column: 11)
!1434 = !{!516, !425, i64 10}
!1435 = !DILocation(line: 395, column: 21, scope: !1433)
!1436 = !DILocation(line: 395, column: 11, scope: !1397)
!1437 = !DILocation(line: 396, column: 20, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1433, file: !1, line: 395, column: 35)
!1439 = !DILocation(line: 397, column: 9, scope: !1438)
!1440 = !DILocation(line: 399, column: 17, scope: !1397)
!1441 = !DILocation(line: 400, column: 5, scope: !1397)
!1442 = !DILocation(line: 0, scope: !1104)
!1443 = !DILocation(line: 402, column: 10, scope: !1116)
!1444 = !DILocation(line: 391, column: 11, scope: !1116)
!1445 = !DILocation(line: 406, column: 5, scope: !1116)
!1446 = !DILocation(line: 408, column: 9, scope: !1121)
!1447 = !DILocation(line: 409, column: 9, scope: !1122)
!1448 = !DILocation(line: 412, column: 9, scope: !1126)
!1449 = !DILocation(line: 413, column: 9, scope: !1127)
!1450 = !DILocation(line: 416, column: 9, scope: !1130)
!1451 = !DILocation(line: 417, column: 13, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1131, file: !1, line: 417, column: 13)
!1453 = !DILocation(line: 417, column: 28, scope: !1452)
!1454 = !DILocation(line: 417, column: 13, scope: !1131)
!1455 = !DILocation(line: 418, column: 9, scope: !1131)
!1456 = !DILocation(line: 421, column: 22, scope: !1133)
!1457 = !DILocation(line: 421, column: 17, scope: !1133)
!1458 = !DILocation(line: 422, column: 9, scope: !1133)
!1459 = !DILocation(line: 0, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1133, file: !1, line: 422, column: 12)
!1461 = !DILocation(line: 423, column: 11, scope: !1460)
!1462 = !DILocation(line: 424, column: 21, scope: !1133)
!1463 = !DILocation(line: 424, column: 9, scope: !1460)
!1464 = distinct !{!1464, !1465, !1466}
!1465 = !DILocation(line: 389, column: 3, scope: !1118)
!1466 = !DILocation(line: 765, column: 3, scope: !1118)
!1467 = !DILocation(line: 428, column: 17, scope: !1135)
!1468 = !DILocation(line: 428, column: 13, scope: !1135)
!1469 = !DILocation(line: 429, column: 9, scope: !1137)
!1470 = !{!1471, !513, i64 16}
!1471 = !{!"UpVal", !513, i64 0, !425, i64 8, !425, i64 9, !513, i64 16, !425, i64 24}
!1472 = !DILocation(line: 433, column: 9, scope: !1140)
!1473 = !DILocation(line: 434, column: 22, scope: !1140)
!1474 = !DILocation(line: 434, column: 17, scope: !1140)
!1475 = !DILocation(line: 435, column: 9, scope: !1143)
!1476 = !{!1360, !513, i64 24}
!1477 = !DILocation(line: 437, column: 9, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1140, file: !1, line: 437, column: 9)
!1479 = !DILocation(line: 433, column: 16, scope: !1140)
!1480 = !DILocation(line: 437, column: 9, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1478, file: !1, line: 437, column: 9)
!1482 = !DILocation(line: 439, column: 7, scope: !1123)
!1483 = !DILocation(line: 441, column: 9, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1485, file: !1, line: 441, column: 9)
!1485 = distinct !DILexicalBlock(scope: !1123, file: !1, line: 440, column: 25)
!1486 = !DILocation(line: 441, column: 9, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1484, file: !1, line: 441, column: 9)
!1488 = !DILocation(line: 442, column: 9, scope: !1485)
!1489 = !DILocation(line: 445, column: 9, scope: !1145)
!1490 = !DILocation(line: 446, column: 9, scope: !1147)
!1491 = !DILocation(line: 448, column: 9, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1145, file: !1, line: 448, column: 9)
!1493 = !DILocation(line: 448, column: 9, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1492, file: !1, line: 448, column: 9)
!1495 = !DILocation(line: 445, column: 16, scope: !1145)
!1496 = !DILocation(line: 450, column: 7, scope: !1123)
!1497 = !DILocation(line: 452, column: 32, scope: !1149)
!1498 = !DILocation(line: 452, column: 21, scope: !1149)
!1499 = !DILocation(line: 452, column: 16, scope: !1149)
!1500 = !DILocation(line: 453, column: 9, scope: !1151)
!1501 = !DILocation(line: 454, column: 9, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1503, file: !1, line: 454, column: 9)
!1503 = distinct !DILexicalBlock(scope: !1149, file: !1, line: 454, column: 9)
!1504 = !DILocation(line: 454, column: 9, scope: !1503)
!1505 = !DILocation(line: 458, column: 9, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1507, file: !1, line: 458, column: 9)
!1507 = distinct !DILexicalBlock(scope: !1123, file: !1, line: 457, column: 25)
!1508 = !DILocation(line: 458, column: 9, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1506, file: !1, line: 458, column: 9)
!1510 = !DILocation(line: 459, column: 9, scope: !1507)
!1511 = !DILocation(line: 462, column: 17, scope: !1154)
!1512 = !DILocation(line: 462, column: 13, scope: !1154)
!1513 = !DILocation(line: 463, column: 17, scope: !1154)
!1514 = !DILocation(line: 463, column: 13, scope: !1154)
!1515 = !DILocation(line: 464, column: 9, scope: !1157)
!1516 = !DILocation(line: 465, column: 9, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1154, file: !1, line: 465, column: 9)
!1518 = !DILocation(line: 465, column: 9, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1520, file: !1, line: 465, column: 9)
!1520 = distinct !DILexicalBlock(scope: !1521, file: !1, line: 465, column: 9)
!1521 = distinct !DILexicalBlock(scope: !1517, file: !1, line: 465, column: 9)
!1522 = !{!1523, !518, i64 120}
!1523 = !{!"global_State", !1524, i64 0, !513, i64 16, !513, i64 24, !425, i64 32, !425, i64 33, !427, i64 36, !513, i64 40, !513, i64 48, !513, i64 56, !513, i64 64, !513, i64 72, !513, i64 80, !1525, i64 88, !518, i64 112, !518, i64 120, !518, i64 128, !518, i64 136, !427, i64 144, !427, i64 148, !513, i64 152, !424, i64 160, !513, i64 176, !1471, i64 184, !425, i64 224, !425, i64 296}
!1524 = !{!"stringtable", !513, i64 0, !427, i64 8, !427, i64 12}
!1525 = !{!"Mbuffer", !513, i64 0, !518, i64 8, !518, i64 16}
!1526 = !{!1523, !518, i64 112}
!1527 = !DILocation(line: 465, column: 9, scope: !1520)
!1528 = !DILocation(line: 469, column: 20, scope: !1159)
!1529 = !DILocation(line: 469, column: 15, scope: !1159)
!1530 = !DILocation(line: 470, column: 9, scope: !1161)
!1531 = !DILocation(line: 471, column: 9, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1159, file: !1, line: 471, column: 9)
!1533 = !DILocation(line: 471, column: 9, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1532, file: !1, line: 471, column: 9)
!1535 = !DILocation(line: 475, column: 9, scope: !1164)
!1536 = !DILocation(line: 475, column: 9, scope: !1169)
!1537 = !DILocation(line: 475, column: 9, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1169, file: !1, line: 475, column: 9)
!1539 = !DILocalVariable(name: "L", arg: 1, scope: !1540, file: !1, line: 317, type: !192)
!1540 = distinct !DISubprogram(name: "Arith", scope: !1, file: !1, line: 317, type: !1541, isLocal: true, isDefinition: true, scopeLine: 318, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1543)
!1541 = !DISubroutineType(types: !1542)
!1542 = !{null, !192, !201, !408, !408, !765}
!1543 = !{!1539, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1555, !1556, !1559, !1561, !1563, !1565, !1567, !1569}
!1544 = !DILocalVariable(name: "ra", arg: 2, scope: !1540, file: !1, line: 317, type: !201)
!1545 = !DILocalVariable(name: "rb", arg: 3, scope: !1540, file: !1, line: 317, type: !408)
!1546 = !DILocalVariable(name: "rc", arg: 4, scope: !1540, file: !1, line: 318, type: !408)
!1547 = !DILocalVariable(name: "op", arg: 5, scope: !1540, file: !1, line: 318, type: !765)
!1548 = !DILocalVariable(name: "tempb", scope: !1540, file: !1, line: 319, type: !135)
!1549 = !DILocalVariable(name: "tempc", scope: !1540, file: !1, line: 319, type: !135)
!1550 = !DILocalVariable(name: "b", scope: !1540, file: !1, line: 320, type: !408)
!1551 = !DILocalVariable(name: "c", scope: !1540, file: !1, line: 320, type: !408)
!1552 = !DILocalVariable(name: "nb", scope: !1553, file: !1, line: 323, type: !145)
!1553 = distinct !DILexicalBlock(scope: !1554, file: !1, line: 322, column: 48)
!1554 = distinct !DILexicalBlock(scope: !1540, file: !1, line: 321, column: 7)
!1555 = !DILocalVariable(name: "nc", scope: !1553, file: !1, line: 323, type: !145)
!1556 = !DILocalVariable(name: "i_o", scope: !1557, file: !1, line: 325, type: !134)
!1557 = distinct !DILexicalBlock(scope: !1558, file: !1, line: 325, column: 20)
!1558 = distinct !DILexicalBlock(scope: !1553, file: !1, line: 324, column: 17)
!1559 = !DILocalVariable(name: "i_o", scope: !1560, file: !1, line: 326, type: !134)
!1560 = distinct !DILexicalBlock(scope: !1558, file: !1, line: 326, column: 20)
!1561 = !DILocalVariable(name: "i_o", scope: !1562, file: !1, line: 327, type: !134)
!1562 = distinct !DILexicalBlock(scope: !1558, file: !1, line: 327, column: 20)
!1563 = !DILocalVariable(name: "i_o", scope: !1564, file: !1, line: 328, type: !134)
!1564 = distinct !DILexicalBlock(scope: !1558, file: !1, line: 328, column: 20)
!1565 = !DILocalVariable(name: "i_o", scope: !1566, file: !1, line: 329, type: !134)
!1566 = distinct !DILexicalBlock(scope: !1558, file: !1, line: 329, column: 20)
!1567 = !DILocalVariable(name: "i_o", scope: !1568, file: !1, line: 330, type: !134)
!1568 = distinct !DILexicalBlock(scope: !1558, file: !1, line: 330, column: 20)
!1569 = !DILocalVariable(name: "i_o", scope: !1570, file: !1, line: 331, type: !134)
!1570 = distinct !DILexicalBlock(scope: !1558, file: !1, line: 331, column: 20)
!1571 = !DILocation(line: 317, column: 31, scope: !1540, inlinedAt: !1572)
!1572 = distinct !DILocation(line: 475, column: 9, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1538, file: !1, line: 475, column: 9)
!1574 = !DILocation(line: 317, column: 40, scope: !1540, inlinedAt: !1572)
!1575 = !DILocation(line: 317, column: 58, scope: !1540, inlinedAt: !1572)
!1576 = !DILocation(line: 318, column: 34, scope: !1540, inlinedAt: !1572)
!1577 = !DILocation(line: 318, column: 42, scope: !1540, inlinedAt: !1572)
!1578 = !DILocation(line: 319, column: 3, scope: !1540, inlinedAt: !1572)
!1579 = !DILocation(line: 319, column: 10, scope: !1540, inlinedAt: !1572)
!1580 = !DILocation(line: 35, column: 44, scope: !405, inlinedAt: !1581)
!1581 = distinct !DILocation(line: 321, column: 12, scope: !1554, inlinedAt: !1572)
!1582 = !DILocation(line: 35, column: 57, scope: !405, inlinedAt: !1581)
!1583 = !DILocation(line: 36, column: 3, scope: !405, inlinedAt: !1581)
!1584 = !DILocation(line: 37, column: 7, scope: !405, inlinedAt: !1581)
!1585 = !DILocation(line: 475, column: 9, scope: !1168)
!1586 = !DILocation(line: 475, column: 9, scope: !1172)
!1587 = !DILocation(line: 38, column: 37, scope: !417, inlinedAt: !1581)
!1588 = !DILocation(line: 36, column: 14, scope: !405, inlinedAt: !1581)
!1589 = !DILocation(line: 38, column: 26, scope: !417, inlinedAt: !1581)
!1590 = !DILocation(line: 38, column: 7, scope: !405, inlinedAt: !1581)
!1591 = !DILocation(line: 39, column: 5, scope: !415, inlinedAt: !1581)
!1592 = !DILocation(line: 40, column: 5, scope: !416, inlinedAt: !1581)
!1593 = !DILocation(line: 44, column: 1, scope: !405, inlinedAt: !1581)
!1594 = !DILocation(line: 320, column: 17, scope: !1540, inlinedAt: !1572)
!1595 = !DILocation(line: 321, column: 47, scope: !1554, inlinedAt: !1572)
!1596 = !DILocation(line: 319, column: 17, scope: !1540, inlinedAt: !1572)
!1597 = !DILocation(line: 35, column: 44, scope: !405, inlinedAt: !1598)
!1598 = distinct !DILocation(line: 322, column: 12, scope: !1554, inlinedAt: !1572)
!1599 = !DILocation(line: 35, column: 57, scope: !405, inlinedAt: !1598)
!1600 = !DILocation(line: 36, column: 3, scope: !405, inlinedAt: !1598)
!1601 = !DILocation(line: 37, column: 7, scope: !422, inlinedAt: !1598)
!1602 = !DILocation(line: 37, column: 7, scope: !405, inlinedAt: !1598)
!1603 = !DILocation(line: 38, column: 37, scope: !417, inlinedAt: !1598)
!1604 = !DILocation(line: 36, column: 14, scope: !405, inlinedAt: !1598)
!1605 = !DILocation(line: 38, column: 26, scope: !417, inlinedAt: !1598)
!1606 = !DILocation(line: 38, column: 7, scope: !405, inlinedAt: !1598)
!1607 = !DILocation(line: 39, column: 5, scope: !415, inlinedAt: !1598)
!1608 = !DILocation(line: 40, column: 5, scope: !416, inlinedAt: !1598)
!1609 = !DILocation(line: 44, column: 1, scope: !405, inlinedAt: !1598)
!1610 = !DILocation(line: 320, column: 21, scope: !1540, inlinedAt: !1572)
!1611 = !DILocation(line: 321, column: 7, scope: !1540, inlinedAt: !1572)
!1612 = !DILocation(line: 323, column: 21, scope: !1553, inlinedAt: !1572)
!1613 = !DILocation(line: 323, column: 16, scope: !1553, inlinedAt: !1572)
!1614 = !DILocation(line: 323, column: 37, scope: !1553, inlinedAt: !1572)
!1615 = !DILocation(line: 323, column: 32, scope: !1553, inlinedAt: !1572)
!1616 = !DILocation(line: 325, column: 20, scope: !1557, inlinedAt: !1572)
!1617 = !DILocation(line: 325, column: 56, scope: !1558, inlinedAt: !1572)
!1618 = !DILocation(line: 165, column: 35, scope: !994, inlinedAt: !1619)
!1619 = distinct !DILocation(line: 335, column: 13, scope: !1620, inlinedAt: !1572)
!1620 = distinct !DILexicalBlock(scope: !1554, file: !1, line: 335, column: 12)
!1621 = !DILocation(line: 165, column: 52, scope: !994, inlinedAt: !1619)
!1622 = !DILocation(line: 165, column: 70, scope: !994, inlinedAt: !1619)
!1623 = !DILocation(line: 166, column: 30, scope: !994, inlinedAt: !1619)
!1624 = !DILocation(line: 166, column: 39, scope: !994, inlinedAt: !1619)
!1625 = !DILocation(line: 167, column: 22, scope: !994, inlinedAt: !1619)
!1626 = !DILocation(line: 167, column: 17, scope: !994, inlinedAt: !1619)
!1627 = !DILocation(line: 168, column: 7, scope: !1012, inlinedAt: !1619)
!1628 = !DILocation(line: 168, column: 7, scope: !994, inlinedAt: !1619)
!1629 = !DILocation(line: 169, column: 10, scope: !1012, inlinedAt: !1619)
!1630 = !DILocation(line: 170, column: 7, scope: !1016, inlinedAt: !1619)
!1631 = !DILocation(line: 170, column: 7, scope: !994, inlinedAt: !1619)
!1632 = !DILocation(line: 83, column: 3, scope: !544, inlinedAt: !1633)
!1633 = distinct !DILocation(line: 171, column: 3, scope: !994, inlinedAt: !1619)
!1634 = !DILocation(line: 80, column: 35, scope: !534, inlinedAt: !1633)
!1635 = !DILocation(line: 80, column: 44, scope: !534, inlinedAt: !1633)
!1636 = !DILocation(line: 80, column: 63, scope: !534, inlinedAt: !1633)
!1637 = !DILocation(line: 81, column: 39, scope: !534, inlinedAt: !1633)
!1638 = !DILocation(line: 81, column: 57, scope: !534, inlinedAt: !1633)
!1639 = !DILocation(line: 82, column: 22, scope: !534, inlinedAt: !1633)
!1640 = !DILocation(line: 82, column: 13, scope: !534, inlinedAt: !1633)
!1641 = !DILocation(line: 84, column: 3, scope: !547, inlinedAt: !1633)
!1642 = !DILocation(line: 85, column: 3, scope: !550, inlinedAt: !1633)
!1643 = !DILocation(line: 86, column: 3, scope: !570, inlinedAt: !1633)
!1644 = !DILocation(line: 86, column: 3, scope: !534, inlinedAt: !1633)
!1645 = !DILocation(line: 87, column: 10, scope: !534, inlinedAt: !1633)
!1646 = !DILocation(line: 88, column: 3, scope: !534, inlinedAt: !1633)
!1647 = !DILocation(line: 89, column: 9, scope: !534, inlinedAt: !1633)
!1648 = !DILocation(line: 90, column: 9, scope: !534, inlinedAt: !1633)
!1649 = !DILocation(line: 91, column: 3, scope: !553, inlinedAt: !1633)
!1650 = !DILocation(line: 92, column: 1, scope: !534, inlinedAt: !1633)
!1651 = !DILocation(line: 173, column: 1, scope: !994, inlinedAt: !1619)
!1652 = !DILocation(line: 335, column: 12, scope: !1554, inlinedAt: !1572)
!1653 = !DILocation(line: 336, column: 5, scope: !1620, inlinedAt: !1572)
!1654 = !DILocation(line: 337, column: 1, scope: !1540, inlinedAt: !1572)
!1655 = !DILocation(line: 479, column: 9, scope: !1174)
!1656 = !DILocation(line: 479, column: 9, scope: !1179)
!1657 = !DILocation(line: 479, column: 9, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1179, file: !1, line: 479, column: 9)
!1659 = !DILocation(line: 317, column: 31, scope: !1540, inlinedAt: !1660)
!1660 = distinct !DILocation(line: 479, column: 9, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1658, file: !1, line: 479, column: 9)
!1662 = !DILocation(line: 317, column: 40, scope: !1540, inlinedAt: !1660)
!1663 = !DILocation(line: 317, column: 58, scope: !1540, inlinedAt: !1660)
!1664 = !DILocation(line: 318, column: 34, scope: !1540, inlinedAt: !1660)
!1665 = !DILocation(line: 318, column: 42, scope: !1540, inlinedAt: !1660)
!1666 = !DILocation(line: 319, column: 3, scope: !1540, inlinedAt: !1660)
!1667 = !DILocation(line: 319, column: 10, scope: !1540, inlinedAt: !1660)
!1668 = !DILocation(line: 35, column: 44, scope: !405, inlinedAt: !1669)
!1669 = distinct !DILocation(line: 321, column: 12, scope: !1554, inlinedAt: !1660)
!1670 = !DILocation(line: 35, column: 57, scope: !405, inlinedAt: !1669)
!1671 = !DILocation(line: 36, column: 3, scope: !405, inlinedAt: !1669)
!1672 = !DILocation(line: 37, column: 7, scope: !405, inlinedAt: !1669)
!1673 = !DILocation(line: 479, column: 9, scope: !1178)
!1674 = !DILocation(line: 479, column: 9, scope: !1182)
!1675 = !DILocation(line: 38, column: 37, scope: !417, inlinedAt: !1669)
!1676 = !DILocation(line: 36, column: 14, scope: !405, inlinedAt: !1669)
!1677 = !DILocation(line: 38, column: 26, scope: !417, inlinedAt: !1669)
!1678 = !DILocation(line: 38, column: 7, scope: !405, inlinedAt: !1669)
!1679 = !DILocation(line: 39, column: 5, scope: !415, inlinedAt: !1669)
!1680 = !DILocation(line: 40, column: 5, scope: !416, inlinedAt: !1669)
!1681 = !DILocation(line: 44, column: 1, scope: !405, inlinedAt: !1669)
!1682 = !DILocation(line: 320, column: 17, scope: !1540, inlinedAt: !1660)
!1683 = !DILocation(line: 321, column: 47, scope: !1554, inlinedAt: !1660)
!1684 = !DILocation(line: 319, column: 17, scope: !1540, inlinedAt: !1660)
!1685 = !DILocation(line: 35, column: 44, scope: !405, inlinedAt: !1686)
!1686 = distinct !DILocation(line: 322, column: 12, scope: !1554, inlinedAt: !1660)
!1687 = !DILocation(line: 35, column: 57, scope: !405, inlinedAt: !1686)
!1688 = !DILocation(line: 36, column: 3, scope: !405, inlinedAt: !1686)
!1689 = !DILocation(line: 37, column: 7, scope: !422, inlinedAt: !1686)
!1690 = !DILocation(line: 37, column: 7, scope: !405, inlinedAt: !1686)
!1691 = !DILocation(line: 38, column: 37, scope: !417, inlinedAt: !1686)
!1692 = !DILocation(line: 36, column: 14, scope: !405, inlinedAt: !1686)
!1693 = !DILocation(line: 38, column: 26, scope: !417, inlinedAt: !1686)
!1694 = !DILocation(line: 38, column: 7, scope: !405, inlinedAt: !1686)
!1695 = !DILocation(line: 39, column: 5, scope: !415, inlinedAt: !1686)
!1696 = !DILocation(line: 40, column: 5, scope: !416, inlinedAt: !1686)
!1697 = !DILocation(line: 44, column: 1, scope: !405, inlinedAt: !1686)
!1698 = !DILocation(line: 320, column: 21, scope: !1540, inlinedAt: !1660)
!1699 = !DILocation(line: 321, column: 7, scope: !1540, inlinedAt: !1660)
!1700 = !DILocation(line: 323, column: 21, scope: !1553, inlinedAt: !1660)
!1701 = !DILocation(line: 323, column: 16, scope: !1553, inlinedAt: !1660)
!1702 = !DILocation(line: 323, column: 37, scope: !1553, inlinedAt: !1660)
!1703 = !DILocation(line: 323, column: 32, scope: !1553, inlinedAt: !1660)
!1704 = !DILocation(line: 326, column: 20, scope: !1560, inlinedAt: !1660)
!1705 = !DILocation(line: 326, column: 56, scope: !1558, inlinedAt: !1660)
!1706 = !DILocation(line: 165, column: 35, scope: !994, inlinedAt: !1707)
!1707 = distinct !DILocation(line: 335, column: 13, scope: !1620, inlinedAt: !1660)
!1708 = !DILocation(line: 165, column: 52, scope: !994, inlinedAt: !1707)
!1709 = !DILocation(line: 165, column: 70, scope: !994, inlinedAt: !1707)
!1710 = !DILocation(line: 166, column: 30, scope: !994, inlinedAt: !1707)
!1711 = !DILocation(line: 166, column: 39, scope: !994, inlinedAt: !1707)
!1712 = !DILocation(line: 167, column: 22, scope: !994, inlinedAt: !1707)
!1713 = !DILocation(line: 167, column: 17, scope: !994, inlinedAt: !1707)
!1714 = !DILocation(line: 168, column: 7, scope: !1012, inlinedAt: !1707)
!1715 = !DILocation(line: 168, column: 7, scope: !994, inlinedAt: !1707)
!1716 = !DILocation(line: 169, column: 10, scope: !1012, inlinedAt: !1707)
!1717 = !DILocation(line: 170, column: 7, scope: !1016, inlinedAt: !1707)
!1718 = !DILocation(line: 170, column: 7, scope: !994, inlinedAt: !1707)
!1719 = !DILocation(line: 83, column: 3, scope: !544, inlinedAt: !1720)
!1720 = distinct !DILocation(line: 171, column: 3, scope: !994, inlinedAt: !1707)
!1721 = !DILocation(line: 80, column: 35, scope: !534, inlinedAt: !1720)
!1722 = !DILocation(line: 80, column: 44, scope: !534, inlinedAt: !1720)
!1723 = !DILocation(line: 80, column: 63, scope: !534, inlinedAt: !1720)
!1724 = !DILocation(line: 81, column: 39, scope: !534, inlinedAt: !1720)
!1725 = !DILocation(line: 81, column: 57, scope: !534, inlinedAt: !1720)
!1726 = !DILocation(line: 82, column: 22, scope: !534, inlinedAt: !1720)
!1727 = !DILocation(line: 82, column: 13, scope: !534, inlinedAt: !1720)
!1728 = !DILocation(line: 84, column: 3, scope: !547, inlinedAt: !1720)
!1729 = !DILocation(line: 85, column: 3, scope: !550, inlinedAt: !1720)
!1730 = !DILocation(line: 86, column: 3, scope: !570, inlinedAt: !1720)
!1731 = !DILocation(line: 86, column: 3, scope: !534, inlinedAt: !1720)
!1732 = !DILocation(line: 87, column: 10, scope: !534, inlinedAt: !1720)
!1733 = !DILocation(line: 88, column: 3, scope: !534, inlinedAt: !1720)
!1734 = !DILocation(line: 89, column: 9, scope: !534, inlinedAt: !1720)
!1735 = !DILocation(line: 90, column: 9, scope: !534, inlinedAt: !1720)
!1736 = !DILocation(line: 91, column: 3, scope: !553, inlinedAt: !1720)
!1737 = !DILocation(line: 92, column: 1, scope: !534, inlinedAt: !1720)
!1738 = !DILocation(line: 173, column: 1, scope: !994, inlinedAt: !1707)
!1739 = !DILocation(line: 335, column: 12, scope: !1554, inlinedAt: !1660)
!1740 = !DILocation(line: 336, column: 5, scope: !1620, inlinedAt: !1660)
!1741 = !DILocation(line: 337, column: 1, scope: !1540, inlinedAt: !1660)
!1742 = !DILocation(line: 483, column: 9, scope: !1184)
!1743 = !DILocation(line: 483, column: 9, scope: !1189)
!1744 = !DILocation(line: 483, column: 9, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1189, file: !1, line: 483, column: 9)
!1746 = !DILocation(line: 317, column: 31, scope: !1540, inlinedAt: !1747)
!1747 = distinct !DILocation(line: 483, column: 9, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1745, file: !1, line: 483, column: 9)
!1749 = !DILocation(line: 317, column: 40, scope: !1540, inlinedAt: !1747)
!1750 = !DILocation(line: 317, column: 58, scope: !1540, inlinedAt: !1747)
!1751 = !DILocation(line: 318, column: 34, scope: !1540, inlinedAt: !1747)
!1752 = !DILocation(line: 318, column: 42, scope: !1540, inlinedAt: !1747)
!1753 = !DILocation(line: 319, column: 3, scope: !1540, inlinedAt: !1747)
!1754 = !DILocation(line: 319, column: 10, scope: !1540, inlinedAt: !1747)
!1755 = !DILocation(line: 35, column: 44, scope: !405, inlinedAt: !1756)
!1756 = distinct !DILocation(line: 321, column: 12, scope: !1554, inlinedAt: !1747)
!1757 = !DILocation(line: 35, column: 57, scope: !405, inlinedAt: !1756)
!1758 = !DILocation(line: 36, column: 3, scope: !405, inlinedAt: !1756)
!1759 = !DILocation(line: 37, column: 7, scope: !405, inlinedAt: !1756)
!1760 = !DILocation(line: 483, column: 9, scope: !1188)
!1761 = !DILocation(line: 483, column: 9, scope: !1192)
!1762 = !DILocation(line: 38, column: 37, scope: !417, inlinedAt: !1756)
!1763 = !DILocation(line: 36, column: 14, scope: !405, inlinedAt: !1756)
!1764 = !DILocation(line: 38, column: 26, scope: !417, inlinedAt: !1756)
!1765 = !DILocation(line: 38, column: 7, scope: !405, inlinedAt: !1756)
!1766 = !DILocation(line: 39, column: 5, scope: !415, inlinedAt: !1756)
!1767 = !DILocation(line: 40, column: 5, scope: !416, inlinedAt: !1756)
!1768 = !DILocation(line: 44, column: 1, scope: !405, inlinedAt: !1756)
!1769 = !DILocation(line: 320, column: 17, scope: !1540, inlinedAt: !1747)
!1770 = !DILocation(line: 321, column: 47, scope: !1554, inlinedAt: !1747)
!1771 = !DILocation(line: 319, column: 17, scope: !1540, inlinedAt: !1747)
!1772 = !DILocation(line: 35, column: 44, scope: !405, inlinedAt: !1773)
!1773 = distinct !DILocation(line: 322, column: 12, scope: !1554, inlinedAt: !1747)
!1774 = !DILocation(line: 35, column: 57, scope: !405, inlinedAt: !1773)
!1775 = !DILocation(line: 36, column: 3, scope: !405, inlinedAt: !1773)
!1776 = !DILocation(line: 37, column: 7, scope: !422, inlinedAt: !1773)
!1777 = !DILocation(line: 37, column: 7, scope: !405, inlinedAt: !1773)
!1778 = !DILocation(line: 38, column: 37, scope: !417, inlinedAt: !1773)
!1779 = !DILocation(line: 36, column: 14, scope: !405, inlinedAt: !1773)
!1780 = !DILocation(line: 38, column: 26, scope: !417, inlinedAt: !1773)
!1781 = !DILocation(line: 38, column: 7, scope: !405, inlinedAt: !1773)
!1782 = !DILocation(line: 39, column: 5, scope: !415, inlinedAt: !1773)
!1783 = !DILocation(line: 40, column: 5, scope: !416, inlinedAt: !1773)
!1784 = !DILocation(line: 44, column: 1, scope: !405, inlinedAt: !1773)
!1785 = !DILocation(line: 320, column: 21, scope: !1540, inlinedAt: !1747)
!1786 = !DILocation(line: 321, column: 7, scope: !1540, inlinedAt: !1747)
!1787 = !DILocation(line: 323, column: 21, scope: !1553, inlinedAt: !1747)
!1788 = !DILocation(line: 323, column: 16, scope: !1553, inlinedAt: !1747)
!1789 = !DILocation(line: 323, column: 37, scope: !1553, inlinedAt: !1747)
!1790 = !DILocation(line: 323, column: 32, scope: !1553, inlinedAt: !1747)
!1791 = !DILocation(line: 327, column: 20, scope: !1562, inlinedAt: !1747)
!1792 = !DILocation(line: 327, column: 56, scope: !1558, inlinedAt: !1747)
!1793 = !DILocation(line: 165, column: 35, scope: !994, inlinedAt: !1794)
!1794 = distinct !DILocation(line: 335, column: 13, scope: !1620, inlinedAt: !1747)
!1795 = !DILocation(line: 165, column: 52, scope: !994, inlinedAt: !1794)
!1796 = !DILocation(line: 165, column: 70, scope: !994, inlinedAt: !1794)
!1797 = !DILocation(line: 166, column: 30, scope: !994, inlinedAt: !1794)
!1798 = !DILocation(line: 166, column: 39, scope: !994, inlinedAt: !1794)
!1799 = !DILocation(line: 167, column: 22, scope: !994, inlinedAt: !1794)
!1800 = !DILocation(line: 167, column: 17, scope: !994, inlinedAt: !1794)
!1801 = !DILocation(line: 168, column: 7, scope: !1012, inlinedAt: !1794)
!1802 = !DILocation(line: 168, column: 7, scope: !994, inlinedAt: !1794)
!1803 = !DILocation(line: 169, column: 10, scope: !1012, inlinedAt: !1794)
!1804 = !DILocation(line: 170, column: 7, scope: !1016, inlinedAt: !1794)
!1805 = !DILocation(line: 170, column: 7, scope: !994, inlinedAt: !1794)
!1806 = !DILocation(line: 83, column: 3, scope: !544, inlinedAt: !1807)
!1807 = distinct !DILocation(line: 171, column: 3, scope: !994, inlinedAt: !1794)
!1808 = !DILocation(line: 80, column: 35, scope: !534, inlinedAt: !1807)
!1809 = !DILocation(line: 80, column: 44, scope: !534, inlinedAt: !1807)
!1810 = !DILocation(line: 80, column: 63, scope: !534, inlinedAt: !1807)
!1811 = !DILocation(line: 81, column: 39, scope: !534, inlinedAt: !1807)
!1812 = !DILocation(line: 81, column: 57, scope: !534, inlinedAt: !1807)
!1813 = !DILocation(line: 82, column: 22, scope: !534, inlinedAt: !1807)
!1814 = !DILocation(line: 82, column: 13, scope: !534, inlinedAt: !1807)
!1815 = !DILocation(line: 84, column: 3, scope: !547, inlinedAt: !1807)
!1816 = !DILocation(line: 85, column: 3, scope: !550, inlinedAt: !1807)
!1817 = !DILocation(line: 86, column: 3, scope: !570, inlinedAt: !1807)
!1818 = !DILocation(line: 86, column: 3, scope: !534, inlinedAt: !1807)
!1819 = !DILocation(line: 87, column: 10, scope: !534, inlinedAt: !1807)
!1820 = !DILocation(line: 88, column: 3, scope: !534, inlinedAt: !1807)
!1821 = !DILocation(line: 89, column: 9, scope: !534, inlinedAt: !1807)
!1822 = !DILocation(line: 90, column: 9, scope: !534, inlinedAt: !1807)
!1823 = !DILocation(line: 91, column: 3, scope: !553, inlinedAt: !1807)
!1824 = !DILocation(line: 92, column: 1, scope: !534, inlinedAt: !1807)
!1825 = !DILocation(line: 173, column: 1, scope: !994, inlinedAt: !1794)
!1826 = !DILocation(line: 335, column: 12, scope: !1554, inlinedAt: !1747)
!1827 = !DILocation(line: 336, column: 5, scope: !1620, inlinedAt: !1747)
!1828 = !DILocation(line: 337, column: 1, scope: !1540, inlinedAt: !1747)
!1829 = !DILocation(line: 487, column: 9, scope: !1194)
!1830 = !DILocation(line: 487, column: 9, scope: !1199)
!1831 = !DILocation(line: 487, column: 9, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1199, file: !1, line: 487, column: 9)
!1833 = !DILocation(line: 317, column: 31, scope: !1540, inlinedAt: !1834)
!1834 = distinct !DILocation(line: 487, column: 9, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1832, file: !1, line: 487, column: 9)
!1836 = !DILocation(line: 317, column: 40, scope: !1540, inlinedAt: !1834)
!1837 = !DILocation(line: 317, column: 58, scope: !1540, inlinedAt: !1834)
!1838 = !DILocation(line: 318, column: 34, scope: !1540, inlinedAt: !1834)
!1839 = !DILocation(line: 318, column: 42, scope: !1540, inlinedAt: !1834)
!1840 = !DILocation(line: 319, column: 3, scope: !1540, inlinedAt: !1834)
!1841 = !DILocation(line: 319, column: 10, scope: !1540, inlinedAt: !1834)
!1842 = !DILocation(line: 35, column: 44, scope: !405, inlinedAt: !1843)
!1843 = distinct !DILocation(line: 321, column: 12, scope: !1554, inlinedAt: !1834)
!1844 = !DILocation(line: 35, column: 57, scope: !405, inlinedAt: !1843)
!1845 = !DILocation(line: 36, column: 3, scope: !405, inlinedAt: !1843)
!1846 = !DILocation(line: 37, column: 7, scope: !405, inlinedAt: !1843)
!1847 = !DILocation(line: 487, column: 9, scope: !1198)
!1848 = !DILocation(line: 487, column: 9, scope: !1202)
!1849 = !DILocation(line: 38, column: 37, scope: !417, inlinedAt: !1843)
!1850 = !DILocation(line: 36, column: 14, scope: !405, inlinedAt: !1843)
!1851 = !DILocation(line: 38, column: 26, scope: !417, inlinedAt: !1843)
!1852 = !DILocation(line: 38, column: 7, scope: !405, inlinedAt: !1843)
!1853 = !DILocation(line: 39, column: 5, scope: !415, inlinedAt: !1843)
!1854 = !DILocation(line: 40, column: 5, scope: !416, inlinedAt: !1843)
!1855 = !DILocation(line: 44, column: 1, scope: !405, inlinedAt: !1843)
!1856 = !DILocation(line: 320, column: 17, scope: !1540, inlinedAt: !1834)
!1857 = !DILocation(line: 321, column: 47, scope: !1554, inlinedAt: !1834)
!1858 = !DILocation(line: 319, column: 17, scope: !1540, inlinedAt: !1834)
!1859 = !DILocation(line: 35, column: 44, scope: !405, inlinedAt: !1860)
!1860 = distinct !DILocation(line: 322, column: 12, scope: !1554, inlinedAt: !1834)
!1861 = !DILocation(line: 35, column: 57, scope: !405, inlinedAt: !1860)
!1862 = !DILocation(line: 36, column: 3, scope: !405, inlinedAt: !1860)
!1863 = !DILocation(line: 37, column: 7, scope: !422, inlinedAt: !1860)
!1864 = !DILocation(line: 37, column: 7, scope: !405, inlinedAt: !1860)
!1865 = !DILocation(line: 38, column: 37, scope: !417, inlinedAt: !1860)
!1866 = !DILocation(line: 36, column: 14, scope: !405, inlinedAt: !1860)
!1867 = !DILocation(line: 38, column: 26, scope: !417, inlinedAt: !1860)
!1868 = !DILocation(line: 38, column: 7, scope: !405, inlinedAt: !1860)
!1869 = !DILocation(line: 39, column: 5, scope: !415, inlinedAt: !1860)
!1870 = !DILocation(line: 40, column: 5, scope: !416, inlinedAt: !1860)
!1871 = !DILocation(line: 44, column: 1, scope: !405, inlinedAt: !1860)
!1872 = !DILocation(line: 320, column: 21, scope: !1540, inlinedAt: !1834)
!1873 = !DILocation(line: 321, column: 7, scope: !1540, inlinedAt: !1834)
!1874 = !DILocation(line: 323, column: 21, scope: !1553, inlinedAt: !1834)
!1875 = !DILocation(line: 323, column: 16, scope: !1553, inlinedAt: !1834)
!1876 = !DILocation(line: 323, column: 37, scope: !1553, inlinedAt: !1834)
!1877 = !DILocation(line: 323, column: 32, scope: !1553, inlinedAt: !1834)
!1878 = !DILocation(line: 328, column: 20, scope: !1564, inlinedAt: !1834)
!1879 = !DILocation(line: 328, column: 56, scope: !1558, inlinedAt: !1834)
!1880 = !DILocation(line: 165, column: 35, scope: !994, inlinedAt: !1881)
!1881 = distinct !DILocation(line: 335, column: 13, scope: !1620, inlinedAt: !1834)
!1882 = !DILocation(line: 165, column: 52, scope: !994, inlinedAt: !1881)
!1883 = !DILocation(line: 165, column: 70, scope: !994, inlinedAt: !1881)
!1884 = !DILocation(line: 166, column: 30, scope: !994, inlinedAt: !1881)
!1885 = !DILocation(line: 166, column: 39, scope: !994, inlinedAt: !1881)
!1886 = !DILocation(line: 167, column: 22, scope: !994, inlinedAt: !1881)
!1887 = !DILocation(line: 167, column: 17, scope: !994, inlinedAt: !1881)
!1888 = !DILocation(line: 168, column: 7, scope: !1012, inlinedAt: !1881)
!1889 = !DILocation(line: 168, column: 7, scope: !994, inlinedAt: !1881)
!1890 = !DILocation(line: 169, column: 10, scope: !1012, inlinedAt: !1881)
!1891 = !DILocation(line: 170, column: 7, scope: !1016, inlinedAt: !1881)
!1892 = !DILocation(line: 170, column: 7, scope: !994, inlinedAt: !1881)
!1893 = !DILocation(line: 83, column: 3, scope: !544, inlinedAt: !1894)
!1894 = distinct !DILocation(line: 171, column: 3, scope: !994, inlinedAt: !1881)
!1895 = !DILocation(line: 80, column: 35, scope: !534, inlinedAt: !1894)
!1896 = !DILocation(line: 80, column: 44, scope: !534, inlinedAt: !1894)
!1897 = !DILocation(line: 80, column: 63, scope: !534, inlinedAt: !1894)
!1898 = !DILocation(line: 81, column: 39, scope: !534, inlinedAt: !1894)
!1899 = !DILocation(line: 81, column: 57, scope: !534, inlinedAt: !1894)
!1900 = !DILocation(line: 82, column: 22, scope: !534, inlinedAt: !1894)
!1901 = !DILocation(line: 82, column: 13, scope: !534, inlinedAt: !1894)
!1902 = !DILocation(line: 84, column: 3, scope: !547, inlinedAt: !1894)
!1903 = !DILocation(line: 85, column: 3, scope: !550, inlinedAt: !1894)
!1904 = !DILocation(line: 86, column: 3, scope: !570, inlinedAt: !1894)
!1905 = !DILocation(line: 86, column: 3, scope: !534, inlinedAt: !1894)
!1906 = !DILocation(line: 87, column: 10, scope: !534, inlinedAt: !1894)
!1907 = !DILocation(line: 88, column: 3, scope: !534, inlinedAt: !1894)
!1908 = !DILocation(line: 89, column: 9, scope: !534, inlinedAt: !1894)
!1909 = !DILocation(line: 90, column: 9, scope: !534, inlinedAt: !1894)
!1910 = !DILocation(line: 91, column: 3, scope: !553, inlinedAt: !1894)
!1911 = !DILocation(line: 92, column: 1, scope: !534, inlinedAt: !1894)
!1912 = !DILocation(line: 173, column: 1, scope: !994, inlinedAt: !1881)
!1913 = !DILocation(line: 335, column: 12, scope: !1554, inlinedAt: !1834)
!1914 = !DILocation(line: 336, column: 5, scope: !1620, inlinedAt: !1834)
!1915 = !DILocation(line: 337, column: 1, scope: !1540, inlinedAt: !1834)
!1916 = !DILocation(line: 491, column: 9, scope: !1204)
!1917 = !DILocation(line: 491, column: 9, scope: !1209)
!1918 = !DILocation(line: 491, column: 9, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1209, file: !1, line: 491, column: 9)
!1920 = !DILocation(line: 317, column: 31, scope: !1540, inlinedAt: !1921)
!1921 = distinct !DILocation(line: 491, column: 9, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1919, file: !1, line: 491, column: 9)
!1923 = !DILocation(line: 317, column: 40, scope: !1540, inlinedAt: !1921)
!1924 = !DILocation(line: 317, column: 58, scope: !1540, inlinedAt: !1921)
!1925 = !DILocation(line: 318, column: 34, scope: !1540, inlinedAt: !1921)
!1926 = !DILocation(line: 318, column: 42, scope: !1540, inlinedAt: !1921)
!1927 = !DILocation(line: 319, column: 3, scope: !1540, inlinedAt: !1921)
!1928 = !DILocation(line: 319, column: 10, scope: !1540, inlinedAt: !1921)
!1929 = !DILocation(line: 35, column: 44, scope: !405, inlinedAt: !1930)
!1930 = distinct !DILocation(line: 321, column: 12, scope: !1554, inlinedAt: !1921)
!1931 = !DILocation(line: 35, column: 57, scope: !405, inlinedAt: !1930)
!1932 = !DILocation(line: 36, column: 3, scope: !405, inlinedAt: !1930)
!1933 = !DILocation(line: 37, column: 7, scope: !405, inlinedAt: !1930)
!1934 = !DILocation(line: 491, column: 9, scope: !1208)
!1935 = !DILocation(line: 491, column: 9, scope: !1212)
!1936 = !DILocation(line: 38, column: 37, scope: !417, inlinedAt: !1930)
!1937 = !DILocation(line: 36, column: 14, scope: !405, inlinedAt: !1930)
!1938 = !DILocation(line: 38, column: 26, scope: !417, inlinedAt: !1930)
!1939 = !DILocation(line: 38, column: 7, scope: !405, inlinedAt: !1930)
!1940 = !DILocation(line: 39, column: 5, scope: !415, inlinedAt: !1930)
!1941 = !DILocation(line: 40, column: 5, scope: !416, inlinedAt: !1930)
!1942 = !DILocation(line: 44, column: 1, scope: !405, inlinedAt: !1930)
!1943 = !DILocation(line: 320, column: 17, scope: !1540, inlinedAt: !1921)
!1944 = !DILocation(line: 321, column: 47, scope: !1554, inlinedAt: !1921)
!1945 = !DILocation(line: 319, column: 17, scope: !1540, inlinedAt: !1921)
!1946 = !DILocation(line: 35, column: 44, scope: !405, inlinedAt: !1947)
!1947 = distinct !DILocation(line: 322, column: 12, scope: !1554, inlinedAt: !1921)
!1948 = !DILocation(line: 35, column: 57, scope: !405, inlinedAt: !1947)
!1949 = !DILocation(line: 36, column: 3, scope: !405, inlinedAt: !1947)
!1950 = !DILocation(line: 37, column: 7, scope: !422, inlinedAt: !1947)
!1951 = !DILocation(line: 37, column: 7, scope: !405, inlinedAt: !1947)
!1952 = !DILocation(line: 38, column: 37, scope: !417, inlinedAt: !1947)
!1953 = !DILocation(line: 36, column: 14, scope: !405, inlinedAt: !1947)
!1954 = !DILocation(line: 38, column: 26, scope: !417, inlinedAt: !1947)
!1955 = !DILocation(line: 38, column: 7, scope: !405, inlinedAt: !1947)
!1956 = !DILocation(line: 39, column: 5, scope: !415, inlinedAt: !1947)
!1957 = !DILocation(line: 40, column: 5, scope: !416, inlinedAt: !1947)
!1958 = !DILocation(line: 44, column: 1, scope: !405, inlinedAt: !1947)
!1959 = !DILocation(line: 320, column: 21, scope: !1540, inlinedAt: !1921)
!1960 = !DILocation(line: 321, column: 7, scope: !1540, inlinedAt: !1921)
!1961 = !DILocation(line: 323, column: 21, scope: !1553, inlinedAt: !1921)
!1962 = !DILocation(line: 323, column: 16, scope: !1553, inlinedAt: !1921)
!1963 = !DILocation(line: 323, column: 37, scope: !1553, inlinedAt: !1921)
!1964 = !DILocation(line: 323, column: 32, scope: !1553, inlinedAt: !1921)
!1965 = !DILocation(line: 329, column: 20, scope: !1566, inlinedAt: !1921)
!1966 = !DILocation(line: 329, column: 56, scope: !1558, inlinedAt: !1921)
!1967 = !DILocation(line: 165, column: 35, scope: !994, inlinedAt: !1968)
!1968 = distinct !DILocation(line: 335, column: 13, scope: !1620, inlinedAt: !1921)
!1969 = !DILocation(line: 165, column: 52, scope: !994, inlinedAt: !1968)
!1970 = !DILocation(line: 165, column: 70, scope: !994, inlinedAt: !1968)
!1971 = !DILocation(line: 166, column: 30, scope: !994, inlinedAt: !1968)
!1972 = !DILocation(line: 166, column: 39, scope: !994, inlinedAt: !1968)
!1973 = !DILocation(line: 167, column: 22, scope: !994, inlinedAt: !1968)
!1974 = !DILocation(line: 167, column: 17, scope: !994, inlinedAt: !1968)
!1975 = !DILocation(line: 168, column: 7, scope: !1012, inlinedAt: !1968)
!1976 = !DILocation(line: 168, column: 7, scope: !994, inlinedAt: !1968)
!1977 = !DILocation(line: 169, column: 10, scope: !1012, inlinedAt: !1968)
!1978 = !DILocation(line: 170, column: 7, scope: !1016, inlinedAt: !1968)
!1979 = !DILocation(line: 170, column: 7, scope: !994, inlinedAt: !1968)
!1980 = !DILocation(line: 83, column: 3, scope: !544, inlinedAt: !1981)
!1981 = distinct !DILocation(line: 171, column: 3, scope: !994, inlinedAt: !1968)
!1982 = !DILocation(line: 80, column: 35, scope: !534, inlinedAt: !1981)
!1983 = !DILocation(line: 80, column: 44, scope: !534, inlinedAt: !1981)
!1984 = !DILocation(line: 80, column: 63, scope: !534, inlinedAt: !1981)
!1985 = !DILocation(line: 81, column: 39, scope: !534, inlinedAt: !1981)
!1986 = !DILocation(line: 81, column: 57, scope: !534, inlinedAt: !1981)
!1987 = !DILocation(line: 82, column: 22, scope: !534, inlinedAt: !1981)
!1988 = !DILocation(line: 82, column: 13, scope: !534, inlinedAt: !1981)
!1989 = !DILocation(line: 84, column: 3, scope: !547, inlinedAt: !1981)
!1990 = !DILocation(line: 85, column: 3, scope: !550, inlinedAt: !1981)
!1991 = !DILocation(line: 86, column: 3, scope: !570, inlinedAt: !1981)
!1992 = !DILocation(line: 86, column: 3, scope: !534, inlinedAt: !1981)
!1993 = !DILocation(line: 87, column: 10, scope: !534, inlinedAt: !1981)
!1994 = !DILocation(line: 88, column: 3, scope: !534, inlinedAt: !1981)
!1995 = !DILocation(line: 89, column: 9, scope: !534, inlinedAt: !1981)
!1996 = !DILocation(line: 90, column: 9, scope: !534, inlinedAt: !1981)
!1997 = !DILocation(line: 91, column: 3, scope: !553, inlinedAt: !1981)
!1998 = !DILocation(line: 92, column: 1, scope: !534, inlinedAt: !1981)
!1999 = !DILocation(line: 173, column: 1, scope: !994, inlinedAt: !1968)
!2000 = !DILocation(line: 335, column: 12, scope: !1554, inlinedAt: !1921)
!2001 = !DILocation(line: 336, column: 5, scope: !1620, inlinedAt: !1921)
!2002 = !DILocation(line: 337, column: 1, scope: !1540, inlinedAt: !1921)
!2003 = !DILocation(line: 495, column: 9, scope: !1214)
!2004 = !DILocation(line: 495, column: 9, scope: !1219)
!2005 = !DILocation(line: 495, column: 9, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !1219, file: !1, line: 495, column: 9)
!2007 = !DILocation(line: 317, column: 31, scope: !1540, inlinedAt: !2008)
!2008 = distinct !DILocation(line: 495, column: 9, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !2006, file: !1, line: 495, column: 9)
!2010 = !DILocation(line: 317, column: 40, scope: !1540, inlinedAt: !2008)
!2011 = !DILocation(line: 317, column: 58, scope: !1540, inlinedAt: !2008)
!2012 = !DILocation(line: 318, column: 34, scope: !1540, inlinedAt: !2008)
!2013 = !DILocation(line: 318, column: 42, scope: !1540, inlinedAt: !2008)
!2014 = !DILocation(line: 319, column: 3, scope: !1540, inlinedAt: !2008)
!2015 = !DILocation(line: 319, column: 10, scope: !1540, inlinedAt: !2008)
!2016 = !DILocation(line: 35, column: 44, scope: !405, inlinedAt: !2017)
!2017 = distinct !DILocation(line: 321, column: 12, scope: !1554, inlinedAt: !2008)
!2018 = !DILocation(line: 35, column: 57, scope: !405, inlinedAt: !2017)
!2019 = !DILocation(line: 36, column: 3, scope: !405, inlinedAt: !2017)
!2020 = !DILocation(line: 37, column: 7, scope: !405, inlinedAt: !2017)
!2021 = !DILocation(line: 495, column: 9, scope: !1218)
!2022 = !DILocation(line: 495, column: 9, scope: !1222)
!2023 = !DILocation(line: 38, column: 37, scope: !417, inlinedAt: !2017)
!2024 = !DILocation(line: 36, column: 14, scope: !405, inlinedAt: !2017)
!2025 = !DILocation(line: 38, column: 26, scope: !417, inlinedAt: !2017)
!2026 = !DILocation(line: 38, column: 7, scope: !405, inlinedAt: !2017)
!2027 = !DILocation(line: 39, column: 5, scope: !415, inlinedAt: !2017)
!2028 = !DILocation(line: 40, column: 5, scope: !416, inlinedAt: !2017)
!2029 = !DILocation(line: 44, column: 1, scope: !405, inlinedAt: !2017)
!2030 = !DILocation(line: 320, column: 17, scope: !1540, inlinedAt: !2008)
!2031 = !DILocation(line: 321, column: 47, scope: !1554, inlinedAt: !2008)
!2032 = !DILocation(line: 319, column: 17, scope: !1540, inlinedAt: !2008)
!2033 = !DILocation(line: 35, column: 44, scope: !405, inlinedAt: !2034)
!2034 = distinct !DILocation(line: 322, column: 12, scope: !1554, inlinedAt: !2008)
!2035 = !DILocation(line: 35, column: 57, scope: !405, inlinedAt: !2034)
!2036 = !DILocation(line: 36, column: 3, scope: !405, inlinedAt: !2034)
!2037 = !DILocation(line: 37, column: 7, scope: !422, inlinedAt: !2034)
!2038 = !DILocation(line: 37, column: 7, scope: !405, inlinedAt: !2034)
!2039 = !DILocation(line: 38, column: 37, scope: !417, inlinedAt: !2034)
!2040 = !DILocation(line: 36, column: 14, scope: !405, inlinedAt: !2034)
!2041 = !DILocation(line: 38, column: 26, scope: !417, inlinedAt: !2034)
!2042 = !DILocation(line: 38, column: 7, scope: !405, inlinedAt: !2034)
!2043 = !DILocation(line: 39, column: 5, scope: !415, inlinedAt: !2034)
!2044 = !DILocation(line: 40, column: 5, scope: !416, inlinedAt: !2034)
!2045 = !DILocation(line: 44, column: 1, scope: !405, inlinedAt: !2034)
!2046 = !DILocation(line: 320, column: 21, scope: !1540, inlinedAt: !2008)
!2047 = !DILocation(line: 321, column: 7, scope: !1540, inlinedAt: !2008)
!2048 = !DILocation(line: 323, column: 21, scope: !1553, inlinedAt: !2008)
!2049 = !DILocation(line: 323, column: 16, scope: !1553, inlinedAt: !2008)
!2050 = !DILocation(line: 323, column: 37, scope: !1553, inlinedAt: !2008)
!2051 = !DILocation(line: 323, column: 32, scope: !1553, inlinedAt: !2008)
!2052 = !DILocation(line: 330, column: 20, scope: !1568, inlinedAt: !2008)
!2053 = !DILocation(line: 330, column: 56, scope: !1558, inlinedAt: !2008)
!2054 = !DILocation(line: 165, column: 35, scope: !994, inlinedAt: !2055)
!2055 = distinct !DILocation(line: 335, column: 13, scope: !1620, inlinedAt: !2008)
!2056 = !DILocation(line: 165, column: 52, scope: !994, inlinedAt: !2055)
!2057 = !DILocation(line: 165, column: 70, scope: !994, inlinedAt: !2055)
!2058 = !DILocation(line: 166, column: 30, scope: !994, inlinedAt: !2055)
!2059 = !DILocation(line: 166, column: 39, scope: !994, inlinedAt: !2055)
!2060 = !DILocation(line: 167, column: 22, scope: !994, inlinedAt: !2055)
!2061 = !DILocation(line: 167, column: 17, scope: !994, inlinedAt: !2055)
!2062 = !DILocation(line: 168, column: 7, scope: !1012, inlinedAt: !2055)
!2063 = !DILocation(line: 168, column: 7, scope: !994, inlinedAt: !2055)
!2064 = !DILocation(line: 169, column: 10, scope: !1012, inlinedAt: !2055)
!2065 = !DILocation(line: 170, column: 7, scope: !1016, inlinedAt: !2055)
!2066 = !DILocation(line: 170, column: 7, scope: !994, inlinedAt: !2055)
!2067 = !DILocation(line: 83, column: 3, scope: !544, inlinedAt: !2068)
!2068 = distinct !DILocation(line: 171, column: 3, scope: !994, inlinedAt: !2055)
!2069 = !DILocation(line: 80, column: 35, scope: !534, inlinedAt: !2068)
!2070 = !DILocation(line: 80, column: 44, scope: !534, inlinedAt: !2068)
!2071 = !DILocation(line: 80, column: 63, scope: !534, inlinedAt: !2068)
!2072 = !DILocation(line: 81, column: 39, scope: !534, inlinedAt: !2068)
!2073 = !DILocation(line: 81, column: 57, scope: !534, inlinedAt: !2068)
!2074 = !DILocation(line: 82, column: 22, scope: !534, inlinedAt: !2068)
!2075 = !DILocation(line: 82, column: 13, scope: !534, inlinedAt: !2068)
!2076 = !DILocation(line: 84, column: 3, scope: !547, inlinedAt: !2068)
!2077 = !DILocation(line: 85, column: 3, scope: !550, inlinedAt: !2068)
!2078 = !DILocation(line: 86, column: 3, scope: !570, inlinedAt: !2068)
!2079 = !DILocation(line: 86, column: 3, scope: !534, inlinedAt: !2068)
!2080 = !DILocation(line: 87, column: 10, scope: !534, inlinedAt: !2068)
!2081 = !DILocation(line: 88, column: 3, scope: !534, inlinedAt: !2068)
!2082 = !DILocation(line: 89, column: 9, scope: !534, inlinedAt: !2068)
!2083 = !DILocation(line: 90, column: 9, scope: !534, inlinedAt: !2068)
!2084 = !DILocation(line: 91, column: 3, scope: !553, inlinedAt: !2068)
!2085 = !DILocation(line: 92, column: 1, scope: !534, inlinedAt: !2068)
!2086 = !DILocation(line: 173, column: 1, scope: !994, inlinedAt: !2055)
!2087 = !DILocation(line: 335, column: 12, scope: !1554, inlinedAt: !2008)
!2088 = !DILocation(line: 336, column: 5, scope: !1620, inlinedAt: !2008)
!2089 = !DILocation(line: 337, column: 1, scope: !1540, inlinedAt: !2008)
!2090 = !DILocation(line: 499, column: 22, scope: !1224)
!2091 = !DILocation(line: 499, column: 17, scope: !1224)
!2092 = !DILocation(line: 500, column: 13, scope: !1227)
!2093 = !DILocation(line: 500, column: 13, scope: !1224)
!2094 = !DILocation(line: 501, column: 27, scope: !1226)
!2095 = !DILocation(line: 501, column: 22, scope: !1226)
!2096 = !DILocation(line: 502, column: 11, scope: !1229)
!2097 = !DILocation(line: 503, column: 9, scope: !1226)
!2098 = !DILocation(line: 505, column: 11, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2100, file: !1, line: 505, column: 11)
!2100 = distinct !DILexicalBlock(scope: !1227, file: !1, line: 504, column: 14)
!2101 = !DILocation(line: 317, column: 31, scope: !1540, inlinedAt: !2102)
!2102 = distinct !DILocation(line: 505, column: 11, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2099, file: !1, line: 505, column: 11)
!2104 = !DILocation(line: 317, column: 40, scope: !1540, inlinedAt: !2102)
!2105 = !DILocation(line: 317, column: 58, scope: !1540, inlinedAt: !2102)
!2106 = !DILocation(line: 318, column: 34, scope: !1540, inlinedAt: !2102)
!2107 = !DILocation(line: 318, column: 42, scope: !1540, inlinedAt: !2102)
!2108 = !DILocation(line: 319, column: 3, scope: !1540, inlinedAt: !2102)
!2109 = !DILocation(line: 319, column: 10, scope: !1540, inlinedAt: !2102)
!2110 = !DILocation(line: 35, column: 44, scope: !405, inlinedAt: !2111)
!2111 = distinct !DILocation(line: 321, column: 12, scope: !1554, inlinedAt: !2102)
!2112 = !DILocation(line: 35, column: 57, scope: !405, inlinedAt: !2111)
!2113 = !DILocation(line: 36, column: 3, scope: !405, inlinedAt: !2111)
!2114 = !DILocation(line: 37, column: 7, scope: !405, inlinedAt: !2111)
!2115 = !DILocation(line: 38, column: 37, scope: !417, inlinedAt: !2111)
!2116 = !DILocation(line: 36, column: 14, scope: !405, inlinedAt: !2111)
!2117 = !DILocation(line: 38, column: 26, scope: !417, inlinedAt: !2111)
!2118 = !DILocation(line: 38, column: 7, scope: !405, inlinedAt: !2111)
!2119 = !DILocation(line: 39, column: 5, scope: !415, inlinedAt: !2111)
!2120 = !DILocation(line: 44, column: 1, scope: !405, inlinedAt: !2111)
!2121 = !DILocation(line: 320, column: 17, scope: !1540, inlinedAt: !2102)
!2122 = !DILocation(line: 35, column: 44, scope: !405, inlinedAt: !2123)
!2123 = distinct !DILocation(line: 322, column: 12, scope: !1554, inlinedAt: !2102)
!2124 = !DILocation(line: 36, column: 3, scope: !405, inlinedAt: !2123)
!2125 = !DILocation(line: 37, column: 7, scope: !422, inlinedAt: !2123)
!2126 = !DILocation(line: 37, column: 7, scope: !405, inlinedAt: !2123)
!2127 = !DILocation(line: 321, column: 47, scope: !1554, inlinedAt: !2102)
!2128 = !DILocation(line: 38, column: 37, scope: !417, inlinedAt: !2123)
!2129 = !DILocation(line: 36, column: 14, scope: !405, inlinedAt: !2123)
!2130 = !DILocation(line: 38, column: 26, scope: !417, inlinedAt: !2123)
!2131 = !DILocation(line: 38, column: 7, scope: !405, inlinedAt: !2123)
!2132 = !DILocation(line: 44, column: 1, scope: !405, inlinedAt: !2123)
!2133 = !DILocation(line: 320, column: 21, scope: !1540, inlinedAt: !2102)
!2134 = !DILocation(line: 321, column: 7, scope: !1540, inlinedAt: !2102)
!2135 = !DILocation(line: 323, column: 21, scope: !1553, inlinedAt: !2102)
!2136 = !DILocation(line: 323, column: 16, scope: !1553, inlinedAt: !2102)
!2137 = !DILocation(line: 331, column: 20, scope: !1570, inlinedAt: !2102)
!2138 = !DILocation(line: 331, column: 52, scope: !1558, inlinedAt: !2102)
!2139 = !DILocation(line: 165, column: 35, scope: !994, inlinedAt: !2140)
!2140 = distinct !DILocation(line: 335, column: 13, scope: !1620, inlinedAt: !2102)
!2141 = !DILocation(line: 165, column: 52, scope: !994, inlinedAt: !2140)
!2142 = !DILocation(line: 165, column: 70, scope: !994, inlinedAt: !2140)
!2143 = !DILocation(line: 166, column: 30, scope: !994, inlinedAt: !2140)
!2144 = !DILocation(line: 166, column: 39, scope: !994, inlinedAt: !2140)
!2145 = !DILocation(line: 167, column: 22, scope: !994, inlinedAt: !2140)
!2146 = !DILocation(line: 167, column: 17, scope: !994, inlinedAt: !2140)
!2147 = !DILocation(line: 168, column: 7, scope: !1012, inlinedAt: !2140)
!2148 = !DILocation(line: 168, column: 7, scope: !994, inlinedAt: !2140)
!2149 = !DILocation(line: 169, column: 10, scope: !1012, inlinedAt: !2140)
!2150 = !DILocation(line: 170, column: 7, scope: !1016, inlinedAt: !2140)
!2151 = !DILocation(line: 170, column: 7, scope: !994, inlinedAt: !2140)
!2152 = !DILocation(line: 83, column: 3, scope: !544, inlinedAt: !2153)
!2153 = distinct !DILocation(line: 171, column: 3, scope: !994, inlinedAt: !2140)
!2154 = !DILocation(line: 80, column: 35, scope: !534, inlinedAt: !2153)
!2155 = !DILocation(line: 80, column: 44, scope: !534, inlinedAt: !2153)
!2156 = !DILocation(line: 80, column: 63, scope: !534, inlinedAt: !2153)
!2157 = !DILocation(line: 81, column: 39, scope: !534, inlinedAt: !2153)
!2158 = !DILocation(line: 81, column: 57, scope: !534, inlinedAt: !2153)
!2159 = !DILocation(line: 82, column: 22, scope: !534, inlinedAt: !2153)
!2160 = !DILocation(line: 82, column: 13, scope: !534, inlinedAt: !2153)
!2161 = !DILocation(line: 84, column: 3, scope: !547, inlinedAt: !2153)
!2162 = !DILocation(line: 85, column: 3, scope: !550, inlinedAt: !2153)
!2163 = !DILocation(line: 86, column: 3, scope: !570, inlinedAt: !2153)
!2164 = !DILocation(line: 86, column: 3, scope: !534, inlinedAt: !2153)
!2165 = !DILocation(line: 87, column: 10, scope: !534, inlinedAt: !2153)
!2166 = !DILocation(line: 88, column: 3, scope: !534, inlinedAt: !2153)
!2167 = !DILocation(line: 89, column: 9, scope: !534, inlinedAt: !2153)
!2168 = !DILocation(line: 90, column: 9, scope: !534, inlinedAt: !2153)
!2169 = !DILocation(line: 91, column: 3, scope: !553, inlinedAt: !2153)
!2170 = !DILocation(line: 92, column: 1, scope: !534, inlinedAt: !2153)
!2171 = !DILocation(line: 173, column: 1, scope: !994, inlinedAt: !2140)
!2172 = !DILocation(line: 335, column: 12, scope: !1554, inlinedAt: !2102)
!2173 = !DILocation(line: 336, column: 5, scope: !1620, inlinedAt: !2102)
!2174 = !DILocation(line: 337, column: 1, scope: !1540, inlinedAt: !2102)
!2175 = !DILocation(line: 510, column: 19, scope: !1231)
!2176 = !DILocation(line: 510, column: 13, scope: !1231)
!2177 = !DILocation(line: 511, column: 9, scope: !1233)
!2178 = !DILocation(line: 515, column: 28, scope: !1235)
!2179 = !DILocation(line: 515, column: 23, scope: !1235)
!2180 = !DILocation(line: 516, column: 17, scope: !1235)
!2181 = !DILocation(line: 516, column: 9, scope: !1235)
!2182 = !DILocation(line: 518, column: 13, scope: !1237)
!2183 = !DILocation(line: 519, column: 13, scope: !1238)
!2184 = !DILocation(line: 522, column: 13, scope: !1241)
!2185 = !DILocation(line: 523, column: 13, scope: !1242)
!2186 = !DILocation(line: 526, column: 13, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2188, file: !1, line: 526, column: 13)
!2188 = distinct !DILexicalBlock(scope: !1239, file: !1, line: 525, column: 20)
!2189 = !DILocation(line: 165, column: 35, scope: !994, inlinedAt: !2190)
!2190 = distinct !DILocation(line: 526, column: 13, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2192, file: !1, line: 526, column: 13)
!2192 = distinct !DILexicalBlock(scope: !2187, file: !1, line: 526, column: 13)
!2193 = !DILocation(line: 165, column: 52, scope: !994, inlinedAt: !2190)
!2194 = !DILocation(line: 165, column: 70, scope: !994, inlinedAt: !2190)
!2195 = !DILocation(line: 166, column: 30, scope: !994, inlinedAt: !2190)
!2196 = !DILocation(line: 166, column: 39, scope: !994, inlinedAt: !2190)
!2197 = !DILocation(line: 167, column: 22, scope: !994, inlinedAt: !2190)
!2198 = !DILocation(line: 167, column: 17, scope: !994, inlinedAt: !2190)
!2199 = !DILocation(line: 168, column: 7, scope: !1012, inlinedAt: !2190)
!2200 = !DILocation(line: 168, column: 7, scope: !994, inlinedAt: !2190)
!2201 = !DILocation(line: 169, column: 10, scope: !1012, inlinedAt: !2190)
!2202 = !DILocation(line: 170, column: 7, scope: !1016, inlinedAt: !2190)
!2203 = !DILocation(line: 170, column: 7, scope: !994, inlinedAt: !2190)
!2204 = !DILocation(line: 83, column: 3, scope: !544, inlinedAt: !2205)
!2205 = distinct !DILocation(line: 171, column: 3, scope: !994, inlinedAt: !2190)
!2206 = !DILocation(line: 80, column: 35, scope: !534, inlinedAt: !2205)
!2207 = !DILocation(line: 80, column: 44, scope: !534, inlinedAt: !2205)
!2208 = !DILocation(line: 80, column: 63, scope: !534, inlinedAt: !2205)
!2209 = !DILocation(line: 81, column: 39, scope: !534, inlinedAt: !2205)
!2210 = !DILocation(line: 81, column: 57, scope: !534, inlinedAt: !2205)
!2211 = !DILocation(line: 82, column: 22, scope: !534, inlinedAt: !2205)
!2212 = !DILocation(line: 82, column: 13, scope: !534, inlinedAt: !2205)
!2213 = !DILocation(line: 84, column: 3, scope: !547, inlinedAt: !2205)
!2214 = !DILocation(line: 85, column: 3, scope: !550, inlinedAt: !2205)
!2215 = !DILocation(line: 86, column: 3, scope: !570, inlinedAt: !2205)
!2216 = !DILocation(line: 86, column: 3, scope: !534, inlinedAt: !2205)
!2217 = !DILocation(line: 87, column: 10, scope: !534, inlinedAt: !2205)
!2218 = !DILocation(line: 88, column: 3, scope: !534, inlinedAt: !2205)
!2219 = !DILocation(line: 89, column: 9, scope: !534, inlinedAt: !2205)
!2220 = !DILocation(line: 90, column: 9, scope: !534, inlinedAt: !2205)
!2221 = !DILocation(line: 91, column: 3, scope: !553, inlinedAt: !2205)
!2222 = !DILocation(line: 92, column: 1, scope: !534, inlinedAt: !2205)
!2223 = !DILocation(line: 173, column: 1, scope: !994, inlinedAt: !2190)
!2224 = !DILocation(line: 526, column: 13, scope: !2192)
!2225 = !DILocation(line: 526, column: 13, scope: !2191)
!2226 = !DILocation(line: 531, column: 9, scope: !1239)
!2227 = !DILocation(line: 535, column: 17, scope: !1244)
!2228 = !DILocation(line: 535, column: 13, scope: !1244)
!2229 = !DILocation(line: 536, column: 17, scope: !1244)
!2230 = !DILocation(line: 536, column: 13, scope: !1244)
!2231 = !DILocation(line: 537, column: 9, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !1244, file: !1, line: 537, column: 9)
!2233 = !DILocation(line: 537, column: 9, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2232, file: !1, line: 537, column: 9)
!2235 = !DILocation(line: 537, column: 9, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2237, file: !1, line: 537, column: 9)
!2237 = distinct !DILexicalBlock(scope: !2234, file: !1, line: 537, column: 9)
!2238 = !DILocation(line: 537, column: 9, scope: !2237)
!2239 = !DILocation(line: 538, column: 9, scope: !1247)
!2240 = !DILocation(line: 542, column: 9, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2242, file: !1, line: 542, column: 9)
!2242 = distinct !DILexicalBlock(scope: !1123, file: !1, line: 541, column: 20)
!2243 = !DILocation(line: 543, column: 9, scope: !2242)
!2244 = !DILocation(line: 546, column: 22, scope: !1250)
!2245 = !DILocation(line: 546, column: 17, scope: !1250)
!2246 = !DILocation(line: 547, column: 22, scope: !1250)
!2247 = !DILocation(line: 547, column: 17, scope: !1250)
!2248 = !DILocation(line: 548, column: 9, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !1250, file: !1, line: 548, column: 9)
!2250 = !DILocation(line: 548, column: 9, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2252, file: !1, line: 548, column: 9)
!2252 = distinct !DILexicalBlock(scope: !2249, file: !1, line: 548, column: 9)
!2253 = !DILocation(line: 0, scope: !2251)
!2254 = !DILocation(line: 548, column: 9, scope: !2252)
!2255 = !DILocation(line: 548, column: 9, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2251, file: !1, line: 548, column: 9)
!2257 = !DILocation(line: 552, column: 11, scope: !1250)
!2258 = !DILocation(line: 556, column: 9, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2260, file: !1, line: 556, column: 9)
!2260 = distinct !DILexicalBlock(scope: !1123, file: !1, line: 555, column: 19)
!2261 = !DILocation(line: 556, column: 9, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2263, file: !1, line: 556, column: 9)
!2263 = distinct !DILexicalBlock(scope: !2259, file: !1, line: 556, column: 9)
!2264 = !DILocation(line: 556, column: 9, scope: !2263)
!2265 = !DILocation(line: 556, column: 9, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2262, file: !1, line: 556, column: 9)
!2267 = !DILocation(line: 560, column: 11, scope: !2260)
!2268 = !DILocation(line: 561, column: 9, scope: !2260)
!2269 = !DILocation(line: 564, column: 9, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2271, file: !1, line: 564, column: 9)
!2271 = distinct !DILexicalBlock(scope: !1123, file: !1, line: 563, column: 19)
!2272 = !DILocation(line: 564, column: 9, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2274, file: !1, line: 564, column: 9)
!2274 = distinct !DILexicalBlock(scope: !2270, file: !1, line: 564, column: 9)
!2275 = !DILocalVariable(name: "L", arg: 1, scope: !2276, file: !1, line: 239, type: !192)
!2276 = distinct !DISubprogram(name: "lessequal", scope: !1, file: !1, line: 239, type: !687, isLocal: true, isDefinition: true, scopeLine: 239, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2277)
!2277 = !{!2275, !2278, !2279, !2280}
!2278 = !DILocalVariable(name: "l", arg: 2, scope: !2276, file: !1, line: 239, type: !408)
!2279 = !DILocalVariable(name: "r", arg: 3, scope: !2276, file: !1, line: 239, type: !408)
!2280 = !DILocalVariable(name: "res", scope: !2276, file: !1, line: 240, type: !148)
!2281 = !DILocation(line: 239, column: 34, scope: !2276, inlinedAt: !2282)
!2282 = distinct !DILocation(line: 564, column: 9, scope: !2273)
!2283 = !DILocation(line: 239, column: 51, scope: !2276, inlinedAt: !2282)
!2284 = !DILocation(line: 239, column: 68, scope: !2276, inlinedAt: !2282)
!2285 = !DILocation(line: 241, column: 7, scope: !2286, inlinedAt: !2282)
!2286 = distinct !DILexicalBlock(scope: !2276, file: !1, line: 241, column: 7)
!2287 = !DILocation(line: 241, column: 19, scope: !2286, inlinedAt: !2282)
!2288 = !DILocation(line: 241, column: 16, scope: !2286, inlinedAt: !2282)
!2289 = !DILocation(line: 241, column: 7, scope: !2276, inlinedAt: !2282)
!2290 = !DILocation(line: 242, column: 12, scope: !2286, inlinedAt: !2282)
!2291 = !DILocation(line: 242, column: 5, scope: !2286, inlinedAt: !2282)
!2292 = !DILocation(line: 243, column: 12, scope: !2286, inlinedAt: !2282)
!2293 = !DILocation(line: 244, column: 12, scope: !2294, inlinedAt: !2282)
!2294 = distinct !DILexicalBlock(scope: !2286, file: !1, line: 243, column: 12)
!2295 = !DILocation(line: 244, column: 5, scope: !2294, inlinedAt: !2282)
!2296 = !DILocation(line: 246, column: 21, scope: !2297, inlinedAt: !2282)
!2297 = distinct !DILexicalBlock(scope: !2294, file: !1, line: 245, column: 12)
!2298 = !DILocation(line: 246, column: 36, scope: !2297, inlinedAt: !2282)
!2299 = !DILocation(line: 203, column: 37, scope: !712, inlinedAt: !2300)
!2300 = distinct !DILocation(line: 246, column: 12, scope: !2297, inlinedAt: !2282)
!2301 = !DILocation(line: 203, column: 56, scope: !712, inlinedAt: !2300)
!2302 = !DILocation(line: 204, column: 19, scope: !712, inlinedAt: !2300)
!2303 = !DILocation(line: 204, column: 15, scope: !712, inlinedAt: !2300)
!2304 = !DILocation(line: 205, column: 23, scope: !712, inlinedAt: !2300)
!2305 = !DILocation(line: 205, column: 10, scope: !712, inlinedAt: !2300)
!2306 = !DILocation(line: 206, column: 19, scope: !712, inlinedAt: !2300)
!2307 = !DILocation(line: 206, column: 15, scope: !712, inlinedAt: !2300)
!2308 = !DILocation(line: 207, column: 23, scope: !712, inlinedAt: !2300)
!2309 = !DILocation(line: 207, column: 10, scope: !712, inlinedAt: !2300)
!2310 = !DILocation(line: 209, column: 16, scope: !724, inlinedAt: !2300)
!2311 = !DILocation(line: 209, column: 9, scope: !724, inlinedAt: !2300)
!2312 = !DILocation(line: 210, column: 14, scope: !729, inlinedAt: !2300)
!2313 = !DILocation(line: 210, column: 9, scope: !724, inlinedAt: !2300)
!2314 = !DILocation(line: 212, column: 20, scope: !728, inlinedAt: !2300)
!2315 = !DILocation(line: 212, column: 14, scope: !728, inlinedAt: !2300)
!2316 = !DILocation(line: 213, column: 15, scope: !748, inlinedAt: !2300)
!2317 = !DILocation(line: 0, scope: !751, inlinedAt: !2300)
!2318 = !DILocation(line: 213, column: 11, scope: !728, inlinedAt: !2300)
!2319 = !DILocation(line: 214, column: 16, scope: !748, inlinedAt: !2300)
!2320 = !DILocation(line: 214, column: 9, scope: !748, inlinedAt: !2300)
!2321 = !DILocation(line: 215, column: 16, scope: !748, inlinedAt: !2300)
!2322 = !DILocation(line: 218, column: 10, scope: !728, inlinedAt: !2300)
!2323 = !DILocation(line: 219, column: 9, scope: !728, inlinedAt: !2300)
!2324 = !DILocation(line: 219, column: 20, scope: !728, inlinedAt: !2300)
!2325 = !DILocation(line: 219, column: 30, scope: !728, inlinedAt: !2300)
!2326 = !DILocation(line: 219, column: 41, scope: !728, inlinedAt: !2300)
!2327 = !DILocation(line: 222, column: 1, scope: !712, inlinedAt: !2300)
!2328 = !DILocation(line: 246, column: 51, scope: !2297, inlinedAt: !2282)
!2329 = !DILocation(line: 246, column: 5, scope: !2297, inlinedAt: !2282)
!2330 = !DILocation(line: 190, column: 37, scope: !762, inlinedAt: !2331)
!2331 = distinct !DILocation(line: 247, column: 19, scope: !2332, inlinedAt: !2282)
!2332 = distinct !DILexicalBlock(scope: !2297, file: !1, line: 247, column: 12)
!2333 = !DILocation(line: 190, column: 54, scope: !762, inlinedAt: !2331)
!2334 = !DILocation(line: 190, column: 72, scope: !762, inlinedAt: !2331)
!2335 = !DILocation(line: 191, column: 30, scope: !762, inlinedAt: !2331)
!2336 = !DILocation(line: 192, column: 23, scope: !762, inlinedAt: !2331)
!2337 = !DILocation(line: 192, column: 17, scope: !762, inlinedAt: !2331)
!2338 = !DILocation(line: 194, column: 7, scope: !781, inlinedAt: !2331)
!2339 = !DILocation(line: 194, column: 7, scope: !762, inlinedAt: !2331)
!2340 = !DILocation(line: 195, column: 9, scope: !762, inlinedAt: !2331)
!2341 = !DILocation(line: 193, column: 17, scope: !762, inlinedAt: !2331)
!2342 = !DILocation(line: 196, column: 8, scope: !786, inlinedAt: !2331)
!2343 = !DILocation(line: 196, column: 7, scope: !762, inlinedAt: !2331)
!2344 = !DILocation(line: 198, column: 19, scope: !762, inlinedAt: !2331)
!2345 = !DILocation(line: 80, column: 35, scope: !534, inlinedAt: !2346)
!2346 = distinct !DILocation(line: 198, column: 3, scope: !762, inlinedAt: !2331)
!2347 = !DILocation(line: 80, column: 44, scope: !534, inlinedAt: !2346)
!2348 = !DILocation(line: 80, column: 63, scope: !534, inlinedAt: !2346)
!2349 = !DILocation(line: 81, column: 39, scope: !534, inlinedAt: !2346)
!2350 = !DILocation(line: 81, column: 57, scope: !534, inlinedAt: !2346)
!2351 = !DILocation(line: 82, column: 22, scope: !534, inlinedAt: !2346)
!2352 = !DILocation(line: 82, column: 13, scope: !534, inlinedAt: !2346)
!2353 = !DILocation(line: 83, column: 3, scope: !544, inlinedAt: !2346)
!2354 = !DILocation(line: 84, column: 3, scope: !547, inlinedAt: !2346)
!2355 = !DILocation(line: 85, column: 3, scope: !550, inlinedAt: !2346)
!2356 = !DILocation(line: 86, column: 3, scope: !570, inlinedAt: !2346)
!2357 = !DILocation(line: 86, column: 3, scope: !534, inlinedAt: !2346)
!2358 = !DILocation(line: 87, column: 10, scope: !534, inlinedAt: !2346)
!2359 = !DILocation(line: 88, column: 3, scope: !534, inlinedAt: !2346)
!2360 = !DILocation(line: 89, column: 9, scope: !534, inlinedAt: !2346)
!2361 = !DILocation(line: 90, column: 9, scope: !534, inlinedAt: !2346)
!2362 = !DILocation(line: 91, column: 3, scope: !553, inlinedAt: !2346)
!2363 = !DILocation(line: 92, column: 1, scope: !534, inlinedAt: !2346)
!2364 = !DILocation(line: 199, column: 11, scope: !762, inlinedAt: !2331)
!2365 = !DILocation(line: 199, column: 3, scope: !762, inlinedAt: !2331)
!2366 = !DILocation(line: 200, column: 1, scope: !762, inlinedAt: !2331)
!2367 = !DILocation(line: 240, column: 7, scope: !2276, inlinedAt: !2282)
!2368 = !DILocation(line: 247, column: 12, scope: !2297, inlinedAt: !2282)
!2369 = !DILocation(line: 190, column: 37, scope: !762, inlinedAt: !2370)
!2370 = distinct !DILocation(line: 249, column: 19, scope: !2371, inlinedAt: !2282)
!2371 = distinct !DILexicalBlock(scope: !2332, file: !1, line: 249, column: 12)
!2372 = !DILocation(line: 190, column: 54, scope: !762, inlinedAt: !2370)
!2373 = !DILocation(line: 190, column: 72, scope: !762, inlinedAt: !2370)
!2374 = !DILocation(line: 191, column: 30, scope: !762, inlinedAt: !2370)
!2375 = !DILocation(line: 192, column: 23, scope: !762, inlinedAt: !2370)
!2376 = !DILocation(line: 192, column: 17, scope: !762, inlinedAt: !2370)
!2377 = !DILocation(line: 194, column: 7, scope: !781, inlinedAt: !2370)
!2378 = !DILocation(line: 194, column: 7, scope: !762, inlinedAt: !2370)
!2379 = !DILocation(line: 195, column: 9, scope: !762, inlinedAt: !2370)
!2380 = !DILocation(line: 193, column: 17, scope: !762, inlinedAt: !2370)
!2381 = !DILocation(line: 196, column: 8, scope: !786, inlinedAt: !2370)
!2382 = !DILocation(line: 196, column: 7, scope: !762, inlinedAt: !2370)
!2383 = !DILocation(line: 198, column: 19, scope: !762, inlinedAt: !2370)
!2384 = !DILocation(line: 80, column: 35, scope: !534, inlinedAt: !2385)
!2385 = distinct !DILocation(line: 198, column: 3, scope: !762, inlinedAt: !2370)
!2386 = !DILocation(line: 80, column: 44, scope: !534, inlinedAt: !2385)
!2387 = !DILocation(line: 80, column: 63, scope: !534, inlinedAt: !2385)
!2388 = !DILocation(line: 81, column: 39, scope: !534, inlinedAt: !2385)
!2389 = !DILocation(line: 81, column: 57, scope: !534, inlinedAt: !2385)
!2390 = !DILocation(line: 82, column: 22, scope: !534, inlinedAt: !2385)
!2391 = !DILocation(line: 82, column: 13, scope: !534, inlinedAt: !2385)
!2392 = !DILocation(line: 83, column: 3, scope: !544, inlinedAt: !2385)
!2393 = !DILocation(line: 84, column: 3, scope: !547, inlinedAt: !2385)
!2394 = !DILocation(line: 85, column: 3, scope: !550, inlinedAt: !2385)
!2395 = !DILocation(line: 86, column: 3, scope: !570, inlinedAt: !2385)
!2396 = !DILocation(line: 86, column: 3, scope: !534, inlinedAt: !2385)
!2397 = !DILocation(line: 87, column: 10, scope: !534, inlinedAt: !2385)
!2398 = !DILocation(line: 88, column: 3, scope: !534, inlinedAt: !2385)
!2399 = !DILocation(line: 89, column: 9, scope: !534, inlinedAt: !2385)
!2400 = !DILocation(line: 90, column: 9, scope: !534, inlinedAt: !2385)
!2401 = !DILocation(line: 91, column: 3, scope: !553, inlinedAt: !2385)
!2402 = !DILocation(line: 92, column: 1, scope: !534, inlinedAt: !2385)
!2403 = !DILocation(line: 199, column: 11, scope: !762, inlinedAt: !2370)
!2404 = !DILocation(line: 199, column: 3, scope: !762, inlinedAt: !2370)
!2405 = !DILocation(line: 200, column: 1, scope: !762, inlinedAt: !2370)
!2406 = !DILocation(line: 250, column: 5, scope: !2371, inlinedAt: !2282)
!2407 = !DILocation(line: 251, column: 10, scope: !2276, inlinedAt: !2282)
!2408 = !DILocation(line: 251, column: 3, scope: !2276, inlinedAt: !2282)
!2409 = !DILocation(line: 0, scope: !2276, inlinedAt: !2282)
!2410 = !DILocation(line: 252, column: 1, scope: !2276, inlinedAt: !2282)
!2411 = !DILocation(line: 564, column: 9, scope: !2274)
!2412 = !DILocation(line: 564, column: 9, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !2273, file: !1, line: 564, column: 9)
!2414 = !DILocation(line: 568, column: 11, scope: !2271)
!2415 = !DILocation(line: 569, column: 9, scope: !2271)
!2416 = !DILocation(line: 572, column: 13, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2418, file: !1, line: 572, column: 13)
!2418 = distinct !DILexicalBlock(scope: !1123, file: !1, line: 571, column: 21)
!2419 = !DILocation(line: 572, column: 30, scope: !2417)
!2420 = !DILocation(line: 572, column: 27, scope: !2417)
!2421 = !DILocation(line: 572, column: 13, scope: !2418)
!2422 = !DILocation(line: 573, column: 11, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2417, file: !1, line: 573, column: 11)
!2424 = !DILocation(line: 574, column: 11, scope: !2418)
!2425 = !DILocation(line: 575, column: 9, scope: !2418)
!2426 = !DILocation(line: 578, column: 22, scope: !1253)
!2427 = !DILocation(line: 578, column: 17, scope: !1253)
!2428 = !DILocation(line: 579, column: 13, scope: !1257)
!2429 = !DILocation(line: 579, column: 30, scope: !1257)
!2430 = !DILocation(line: 579, column: 27, scope: !1257)
!2431 = !DILocation(line: 579, column: 13, scope: !1253)
!2432 = !DILocation(line: 580, column: 11, scope: !1255)
!2433 = !DILocation(line: 581, column: 11, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !1256, file: !1, line: 581, column: 11)
!2435 = !DILocation(line: 582, column: 9, scope: !1256)
!2436 = !DILocation(line: 583, column: 11, scope: !1253)
!2437 = !DILocation(line: 587, column: 17, scope: !1260)
!2438 = !DILocation(line: 587, column: 13, scope: !1260)
!2439 = !DILocation(line: 588, column: 24, scope: !1260)
!2440 = !DILocation(line: 588, column: 36, scope: !1260)
!2441 = !DILocation(line: 588, column: 13, scope: !1260)
!2442 = !DILocation(line: 589, column: 15, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !1260, file: !1, line: 589, column: 13)
!2444 = !DILocation(line: 589, column: 13, scope: !1260)
!2445 = !DILocation(line: 589, column: 32, scope: !2443)
!2446 = !DILocation(line: 589, column: 28, scope: !2443)
!2447 = !DILocation(line: 589, column: 21, scope: !2443)
!2448 = !DILocation(line: 590, column: 20, scope: !1260)
!2449 = !DILocation(line: 591, column: 17, scope: !1260)
!2450 = !DILocation(line: 591, column: 9, scope: !1260)
!2451 = !DILocation(line: 593, column: 23, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2453, file: !1, line: 592, column: 24)
!2453 = distinct !DILexicalBlock(scope: !1260, file: !1, line: 591, column: 48)
!2454 = !DILocation(line: 594, column: 13, scope: !2452)
!2455 = !DILocation(line: 598, column: 26, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2457, file: !1, line: 598, column: 17)
!2457 = distinct !DILexicalBlock(scope: !2453, file: !1, line: 596, column: 22)
!2458 = !DILocation(line: 598, column: 17, scope: !2457)
!2459 = !DILocation(line: 598, column: 44, scope: !2456)
!2460 = !DILocation(line: 598, column: 48, scope: !2456)
!2461 = !{!1354, !513, i64 16}
!2462 = !DILocation(line: 598, column: 39, scope: !2456)
!2463 = !DILocation(line: 598, column: 32, scope: !2456)
!2464 = !DILocation(line: 599, column: 23, scope: !2457)
!2465 = !DILocation(line: 600, column: 13, scope: !2457)
!2466 = !DILocation(line: 608, column: 17, scope: !1263)
!2467 = !DILocation(line: 608, column: 13, scope: !1263)
!2468 = !DILocation(line: 609, column: 15, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !1263, file: !1, line: 609, column: 13)
!2470 = !DILocation(line: 609, column: 13, scope: !1263)
!2471 = !DILocation(line: 609, column: 32, scope: !2469)
!2472 = !DILocation(line: 609, column: 28, scope: !2469)
!2473 = !DILocation(line: 609, column: 21, scope: !2469)
!2474 = !DILocation(line: 610, column: 20, scope: !1263)
!2475 = !DILocation(line: 612, column: 17, scope: !1263)
!2476 = !DILocation(line: 612, column: 9, scope: !1263)
!2477 = !DILocation(line: 615, column: 31, scope: !1265)
!2478 = !DILocation(line: 615, column: 23, scope: !1265)
!2479 = !DILocation(line: 617, column: 30, scope: !1265)
!2480 = !DILocation(line: 617, column: 19, scope: !1265)
!2481 = !DILocation(line: 618, column: 35, scope: !1265)
!2482 = !DILocation(line: 618, column: 19, scope: !1265)
!2483 = !DILocation(line: 619, column: 20, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !1265, file: !1, line: 619, column: 17)
!2485 = !{!516, !513, i64 152}
!2486 = !DILocation(line: 619, column: 17, scope: !2484)
!2487 = !DILocation(line: 0, scope: !2484)
!2488 = !DILocation(line: 619, column: 17, scope: !1265)
!2489 = !DILocation(line: 619, column: 49, scope: !2484)
!2490 = !{!1354, !513, i64 0}
!2491 = !DILocation(line: 619, column: 31, scope: !2484)
!2492 = !DILocation(line: 620, column: 38, scope: !1265)
!2493 = !DILocation(line: 620, column: 54, scope: !1265)
!2494 = !DILocation(line: 620, column: 59, scope: !1265)
!2495 = !DILocation(line: 620, column: 43, scope: !1265)
!2496 = !DILocation(line: 620, column: 32, scope: !1265)
!2497 = !DILocation(line: 620, column: 21, scope: !1265)
!2498 = !DILocation(line: 616, column: 17, scope: !1265)
!2499 = !DILocation(line: 621, column: 42, scope: !1272)
!2500 = !DILocation(line: 621, column: 37, scope: !1272)
!2501 = !DILocation(line: 621, column: 13, scope: !1273)
!2502 = !DILocation(line: 622, column: 15, scope: !1271)
!2503 = !DILocation(line: 621, column: 50, scope: !1272)
!2504 = !DILocation(line: 621, column: 32, scope: !1272)
!2505 = !DILocation(line: 0, scope: !1265)
!2506 = distinct !{!2506, !2501, !2507}
!2507 = !DILocation(line: 622, column: 15, scope: !1273)
!2508 = !DILocation(line: 623, column: 30, scope: !1265)
!2509 = !DILocation(line: 623, column: 17, scope: !1265)
!2510 = !DILocation(line: 623, column: 21, scope: !1265)
!2511 = !DILocation(line: 625, column: 30, scope: !1265)
!2512 = !DILocation(line: 625, column: 17, scope: !1265)
!2513 = !DILocation(line: 625, column: 25, scope: !1265)
!2514 = !{!1354, !513, i64 24}
!2515 = !DILocation(line: 626, column: 17, scope: !1265)
!2516 = !DILocation(line: 626, column: 26, scope: !1265)
!2517 = !{!1354, !427, i64 36}
!2518 = !DILocation(line: 627, column: 18, scope: !1265)
!2519 = !DILocation(line: 631, column: 23, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !1266, file: !1, line: 630, column: 22)
!2521 = !DILocation(line: 632, column: 13, scope: !2520)
!2522 = !DILocation(line: 640, column: 17, scope: !1276)
!2523 = !DILocation(line: 640, column: 13, scope: !1276)
!2524 = !DILocation(line: 641, column: 15, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !1276, file: !1, line: 641, column: 13)
!2526 = !DILocation(line: 641, column: 13, scope: !1276)
!2527 = !DILocation(line: 641, column: 32, scope: !2525)
!2528 = !DILocation(line: 641, column: 34, scope: !2525)
!2529 = !DILocation(line: 641, column: 28, scope: !2525)
!2530 = !DILocation(line: 641, column: 21, scope: !2525)
!2531 = !DILocation(line: 642, column: 16, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !1276, file: !1, line: 642, column: 13)
!2533 = !DILocation(line: 642, column: 13, scope: !2532)
!2534 = !DILocation(line: 642, column: 13, scope: !1276)
!2535 = !DILocation(line: 642, column: 27, scope: !2532)
!2536 = !DILocation(line: 643, column: 20, scope: !1276)
!2537 = !DILocation(line: 644, column: 13, scope: !1276)
!2538 = !DILocation(line: 645, column: 13, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !1276, file: !1, line: 645, column: 13)
!2540 = !DILocation(line: 645, column: 26, scope: !2539)
!2541 = !DILocation(line: 645, column: 13, scope: !1276)
!2542 = !DILocation(line: 648, column: 15, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2544, file: !1, line: 648, column: 15)
!2544 = distinct !DILexicalBlock(scope: !2539, file: !1, line: 647, column: 14)
!2545 = !DILocation(line: 648, column: 15, scope: !2544)
!2546 = !DILocation(line: 648, column: 30, scope: !2543)
!2547 = !DILocation(line: 648, column: 34, scope: !2543)
!2548 = !DILocation(line: 648, column: 25, scope: !2543)
!2549 = !DILocation(line: 648, column: 18, scope: !2543)
!2550 = !DILocation(line: 655, column: 27, scope: !1278)
!2551 = !DILocation(line: 655, column: 20, scope: !1278)
!2552 = !DILocation(line: 656, column: 26, scope: !1278)
!2553 = !DILocation(line: 656, column: 20, scope: !1278)
!2554 = !DILocation(line: 657, column: 28, scope: !1278)
!2555 = !DILocation(line: 657, column: 20, scope: !1278)
!2556 = !DILocation(line: 658, column: 13, scope: !1284)
!2557 = !DILocation(line: 658, column: 13, scope: !1278)
!2558 = !DILocation(line: 658, column: 35, scope: !1284)
!2559 = !DILocation(line: 659, column: 35, scope: !1284)
!2560 = !DILocation(line: 660, column: 11, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !1283, file: !1, line: 660, column: 11)
!2562 = !DILocation(line: 661, column: 11, scope: !1282)
!2563 = !DILocation(line: 662, column: 11, scope: !1286)
!2564 = !DILocation(line: 663, column: 9, scope: !1283)
!2565 = !DILocation(line: 667, column: 23, scope: !1288)
!2566 = !DILocation(line: 668, column: 34, scope: !1288)
!2567 = !DILocation(line: 668, column: 23, scope: !1288)
!2568 = !DILocation(line: 669, column: 33, scope: !1288)
!2569 = !DILocation(line: 669, column: 23, scope: !1288)
!2570 = !DILocation(line: 670, column: 20, scope: !1288)
!2571 = !DILocation(line: 671, column: 14, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !1288, file: !1, line: 671, column: 13)
!2573 = !DILocation(line: 35, column: 44, scope: !405, inlinedAt: !2574)
!2574 = distinct !DILocation(line: 671, column: 14, scope: !2572)
!2575 = !DILocation(line: 35, column: 57, scope: !405, inlinedAt: !2574)
!2576 = !DILocation(line: 36, column: 3, scope: !405, inlinedAt: !2574)
!2577 = !DILocation(line: 37, column: 7, scope: !405, inlinedAt: !2574)
!2578 = !DILocation(line: 38, column: 37, scope: !417, inlinedAt: !2574)
!2579 = !DILocation(line: 36, column: 14, scope: !405, inlinedAt: !2574)
!2580 = !DILocation(line: 38, column: 26, scope: !417, inlinedAt: !2574)
!2581 = !DILocation(line: 38, column: 7, scope: !405, inlinedAt: !2574)
!2582 = !DILocation(line: 39, column: 5, scope: !415, inlinedAt: !2574)
!2583 = !DILocation(line: 44, column: 1, scope: !405, inlinedAt: !2574)
!2584 = !DILocation(line: 671, column: 13, scope: !1288)
!2585 = !DILocation(line: 672, column: 11, scope: !2572)
!2586 = !DILocation(line: 673, column: 19, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !2572, file: !1, line: 673, column: 18)
!2588 = !DILocation(line: 35, column: 44, scope: !405, inlinedAt: !2589)
!2589 = distinct !DILocation(line: 673, column: 19, scope: !2587)
!2590 = !DILocation(line: 35, column: 57, scope: !405, inlinedAt: !2589)
!2591 = !DILocation(line: 36, column: 3, scope: !405, inlinedAt: !2589)
!2592 = !DILocation(line: 37, column: 7, scope: !405, inlinedAt: !2589)
!2593 = !DILocation(line: 38, column: 37, scope: !417, inlinedAt: !2589)
!2594 = !DILocation(line: 36, column: 14, scope: !405, inlinedAt: !2589)
!2595 = !DILocation(line: 38, column: 26, scope: !417, inlinedAt: !2589)
!2596 = !DILocation(line: 38, column: 7, scope: !405, inlinedAt: !2589)
!2597 = !DILocation(line: 39, column: 5, scope: !415, inlinedAt: !2589)
!2598 = !DILocation(line: 44, column: 1, scope: !405, inlinedAt: !2589)
!2599 = !DILocation(line: 673, column: 18, scope: !2572)
!2600 = !DILocation(line: 674, column: 11, scope: !2587)
!2601 = !DILocation(line: 675, column: 19, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2587, file: !1, line: 675, column: 18)
!2603 = !DILocation(line: 35, column: 44, scope: !405, inlinedAt: !2604)
!2604 = distinct !DILocation(line: 675, column: 19, scope: !2602)
!2605 = !DILocation(line: 35, column: 57, scope: !405, inlinedAt: !2604)
!2606 = !DILocation(line: 36, column: 3, scope: !405, inlinedAt: !2604)
!2607 = !DILocation(line: 37, column: 7, scope: !405, inlinedAt: !2604)
!2608 = !DILocation(line: 38, column: 37, scope: !417, inlinedAt: !2604)
!2609 = !DILocation(line: 36, column: 14, scope: !405, inlinedAt: !2604)
!2610 = !DILocation(line: 38, column: 26, scope: !417, inlinedAt: !2604)
!2611 = !DILocation(line: 38, column: 7, scope: !405, inlinedAt: !2604)
!2612 = !DILocation(line: 39, column: 5, scope: !415, inlinedAt: !2604)
!2613 = !DILocation(line: 44, column: 1, scope: !405, inlinedAt: !2604)
!2614 = !DILocation(line: 675, column: 18, scope: !2587)
!2615 = !DILocation(line: 676, column: 11, scope: !2602)
!2616 = !DILocation(line: 677, column: 9, scope: !1292)
!2617 = !DILocation(line: 678, column: 9, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !1288, file: !1, line: 678, column: 9)
!2619 = !DILocation(line: 682, column: 23, scope: !1294)
!2620 = !DILocation(line: 682, column: 15, scope: !1294)
!2621 = !DILocation(line: 683, column: 9, scope: !1296)
!2622 = !DILocation(line: 684, column: 9, scope: !1299)
!2623 = !DILocation(line: 685, column: 9, scope: !1302)
!2624 = !DILocation(line: 686, column: 20, scope: !1294)
!2625 = !DILocation(line: 686, column: 16, scope: !1294)
!2626 = !DILocation(line: 687, column: 9, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !1294, file: !1, line: 687, column: 9)
!2628 = !DILocation(line: 687, column: 9, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2627, file: !1, line: 687, column: 9)
!2630 = !DILocation(line: 688, column: 21, scope: !1294)
!2631 = !DILocation(line: 688, column: 25, scope: !1294)
!2632 = !DILocation(line: 688, column: 16, scope: !1294)
!2633 = !DILocation(line: 689, column: 14, scope: !1294)
!2634 = !DILocation(line: 689, column: 20, scope: !1294)
!2635 = !DILocation(line: 690, column: 14, scope: !1307)
!2636 = !DILocation(line: 690, column: 13, scope: !1294)
!2637 = !DILocation(line: 691, column: 11, scope: !1305)
!2638 = !DILocation(line: 692, column: 11, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !1306, file: !1, line: 692, column: 11)
!2640 = !DILocation(line: 693, column: 9, scope: !1306)
!2641 = !DILocation(line: 0, scope: !2639)
!2642 = !DILocation(line: 694, column: 11, scope: !1294)
!2643 = !DILocation(line: 698, column: 17, scope: !1310)
!2644 = !DILocation(line: 698, column: 13, scope: !1310)
!2645 = !DILocation(line: 699, column: 17, scope: !1310)
!2646 = !DILocation(line: 699, column: 13, scope: !1310)
!2647 = !DILocation(line: 702, column: 15, scope: !2648)
!2648 = distinct !DILexicalBlock(scope: !1310, file: !1, line: 702, column: 13)
!2649 = !DILocation(line: 702, column: 13, scope: !1310)
!2650 = !DILocation(line: 703, column: 15, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2648, file: !1, line: 702, column: 21)
!2652 = !DILocation(line: 703, column: 37, scope: !2651)
!2653 = !DILocation(line: 704, column: 23, scope: !2651)
!2654 = !DILocation(line: 704, column: 27, scope: !2651)
!2655 = !DILocation(line: 704, column: 18, scope: !2651)
!2656 = !DILocation(line: 705, column: 9, scope: !2651)
!2657 = !DILocation(line: 0, scope: !1310)
!2658 = !DILocation(line: 706, column: 15, scope: !2659)
!2659 = distinct !DILexicalBlock(scope: !1310, file: !1, line: 706, column: 13)
!2660 = !DILocation(line: 706, column: 13, scope: !1310)
!2661 = !DILocation(line: 706, column: 25, scope: !2659)
!2662 = !DILocation(line: 706, column: 21, scope: !2659)
!2663 = !DILocation(line: 707, column: 9, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2665, file: !1, line: 707, column: 9)
!2665 = distinct !DILexicalBlock(scope: !1310, file: !1, line: 707, column: 9)
!2666 = !DILocation(line: 707, column: 9, scope: !2665)
!2667 = !DILocation(line: 708, column: 13, scope: !1310)
!2668 = !DILocation(line: 701, column: 16, scope: !1310)
!2669 = !DILocation(line: 709, column: 22, scope: !1310)
!2670 = !DILocation(line: 709, column: 42, scope: !1310)
!2671 = !DILocation(line: 700, column: 13, scope: !1310)
!2672 = !DILocation(line: 710, column: 23, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !1310, file: !1, line: 710, column: 13)
!2674 = !{!512, !427, i64 56}
!2675 = !DILocation(line: 710, column: 18, scope: !2673)
!2676 = !DILocation(line: 710, column: 13, scope: !1310)
!2677 = !DILocation(line: 711, column: 11, scope: !2673)
!2678 = !DILocation(line: 712, column: 18, scope: !1316)
!2679 = !DILocation(line: 712, column: 9, scope: !1317)
!2680 = !DILocation(line: 713, column: 27, scope: !1315)
!2681 = !DILocation(line: 713, column: 19, scope: !1315)
!2682 = !DILocation(line: 714, column: 11, scope: !1319)
!2683 = !DILocation(line: 715, column: 11, scope: !2684)
!2684 = distinct !DILexicalBlock(scope: !2685, file: !1, line: 715, column: 11)
!2685 = distinct !DILexicalBlock(scope: !1315, file: !1, line: 715, column: 11)
!2686 = !DILocation(line: 715, column: 11, scope: !2685)
!2687 = !DILocation(line: 712, column: 24, scope: !1316)
!2688 = !DILocation(line: 720, column: 9, scope: !2689)
!2689 = distinct !DILexicalBlock(scope: !1123, file: !1, line: 719, column: 22)
!2690 = !DILocation(line: 721, column: 9, scope: !2689)
!2691 = !DILocation(line: 727, column: 17, scope: !1322)
!2692 = !DILocation(line: 727, column: 20, scope: !1322)
!2693 = !{!1363, !513, i64 32}
!2694 = !DILocation(line: 727, column: 22, scope: !1322)
!2695 = !DILocation(line: 727, column: 13, scope: !1322)
!2696 = !DILocation(line: 724, column: 16, scope: !1322)
!2697 = !DILocation(line: 728, column: 18, scope: !1322)
!2698 = !{!1363, !425, i64 112}
!2699 = !DILocation(line: 728, column: 15, scope: !1322)
!2700 = !DILocation(line: 726, column: 13, scope: !1322)
!2701 = !DILocation(line: 729, column: 44, scope: !1322)
!2702 = !DILocation(line: 729, column: 15, scope: !1322)
!2703 = !DILocation(line: 725, column: 18, scope: !1322)
!2704 = !DILocation(line: 730, column: 16, scope: !1322)
!2705 = !DILocation(line: 730, column: 18, scope: !1322)
!2706 = !DILocation(line: 726, column: 18, scope: !1322)
!2707 = !DILocation(line: 731, column: 20, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2709, file: !1, line: 731, column: 9)
!2709 = distinct !DILexicalBlock(scope: !1322, file: !1, line: 731, column: 9)
!2710 = !DILocation(line: 731, column: 9, scope: !2709)
!2711 = !DILocation(line: 732, column: 15, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2713, file: !1, line: 732, column: 15)
!2713 = distinct !DILexicalBlock(scope: !2708, file: !1, line: 731, column: 37)
!2714 = !DILocation(line: 732, column: 31, scope: !2712)
!2715 = !DILocation(line: 0, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2712, file: !1, line: 734, column: 16)
!2717 = !DILocation(line: 732, column: 15, scope: !2713)
!2718 = !DILocation(line: 733, column: 32, scope: !2712)
!2719 = !DILocation(line: 733, column: 13, scope: !2712)
!2720 = !DILocation(line: 733, column: 30, scope: !2712)
!2721 = !DILocation(line: 736, column: 55, scope: !2716)
!2722 = !DILocation(line: 736, column: 32, scope: !2716)
!2723 = !DILocation(line: 736, column: 13, scope: !2716)
!2724 = !DILocation(line: 736, column: 30, scope: !2716)
!2725 = !DILocation(line: 731, column: 27, scope: !2708)
!2726 = !DILocation(line: 731, column: 33, scope: !2708)
!2727 = distinct !{!2727, !2710, !2728}
!2728 = !DILocation(line: 738, column: 9, scope: !2709)
!2729 = !DILocation(line: 739, column: 9, scope: !1331)
!2730 = !DILocation(line: 0, scope: !2708)
!2731 = !DILocation(line: 740, column: 9, scope: !2732)
!2732 = distinct !DILexicalBlock(scope: !1322, file: !1, line: 740, column: 9)
!2733 = !DILocation(line: 740, column: 9, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2735, file: !1, line: 740, column: 9)
!2735 = distinct !DILexicalBlock(scope: !2736, file: !1, line: 740, column: 9)
!2736 = distinct !DILexicalBlock(scope: !2732, file: !1, line: 740, column: 9)
!2737 = !DILocation(line: 740, column: 9, scope: !2735)
!2738 = !DILocation(line: 744, column: 17, scope: !1333)
!2739 = !DILocation(line: 744, column: 29, scope: !1333)
!2740 = !DILocation(line: 744, column: 13, scope: !1333)
!2741 = !DILocation(line: 746, column: 27, scope: !1333)
!2742 = !DILocation(line: 746, column: 19, scope: !1333)
!2743 = !DILocation(line: 747, column: 17, scope: !1333)
!2744 = !DILocation(line: 747, column: 53, scope: !1333)
!2745 = !DILocation(line: 747, column: 56, scope: !1333)
!2746 = !{!1363, !425, i64 113}
!2747 = !DILocation(line: 747, column: 49, scope: !1333)
!2748 = !DILocation(line: 747, column: 66, scope: !1333)
!2749 = !DILocation(line: 747, column: 13, scope: !1333)
!2750 = !DILocation(line: 748, column: 15, scope: !2751)
!2751 = distinct !DILexicalBlock(scope: !1333, file: !1, line: 748, column: 13)
!2752 = !DILocation(line: 748, column: 13, scope: !1333)
!2753 = !DILocation(line: 749, column: 11, scope: !2754)
!2754 = distinct !DILexicalBlock(scope: !2755, file: !1, line: 749, column: 11)
!2755 = distinct !DILexicalBlock(scope: !2751, file: !1, line: 748, column: 31)
!2756 = !DILocation(line: 749, column: 11, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2758, file: !1, line: 749, column: 11)
!2758 = distinct !DILexicalBlock(scope: !2754, file: !1, line: 749, column: 11)
!2759 = !DILocation(line: 749, column: 11, scope: !2758)
!2760 = !DILocation(line: 750, column: 16, scope: !2755)
!2761 = !DILocation(line: 752, column: 23, scope: !2755)
!2762 = !DILocation(line: 752, column: 18, scope: !2755)
!2763 = !DILocation(line: 753, column: 9, scope: !2755)
!2764 = !DILocation(line: 0, scope: !1333)
!2765 = !DILocation(line: 0, scope: !1397)
!2766 = !DILocation(line: 745, column: 13, scope: !1333)
!2767 = !DILocation(line: 754, column: 23, scope: !1342)
!2768 = !DILocation(line: 754, column: 9, scope: !1343)
!2769 = !DILocation(line: 755, column: 17, scope: !1340)
!2770 = !DILocation(line: 755, column: 15, scope: !1341)
!2771 = !DILocation(line: 756, column: 13, scope: !1338)
!2772 = !DILocation(line: 757, column: 11, scope: !1339)
!2773 = !DILocation(line: 754, column: 29, scope: !1342)
!2774 = !DILocation(line: 766, column: 1, scope: !1104)
