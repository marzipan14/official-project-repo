; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/ldebug.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/ldebug.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lua_State = type { %union.GCObject*, i8, i8, i8, %struct.lua_TValue*, %struct.lua_TValue*, %struct.global_State*, %struct.CallInfo*, i32*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.CallInfo*, %struct.CallInfo*, i32, i32, i16, i16, i8, i8, i32, i32, void (%struct.lua_State*, %struct.lua_Debug*)*, %struct.lua_TValue, %struct.lua_TValue, %union.GCObject*, %union.GCObject*, %struct.lua_longjmp*, i64 }
%struct.global_State = type { %struct.stringtable, i8* (i8*, i8*, i64, i64)*, i8*, i8, i8, i32, %union.GCObject*, %union.GCObject**, %union.GCObject*, %union.GCObject*, %union.GCObject*, %union.GCObject*, %struct.Mbuffer, i64, i64, i64, i64, i32, i32, i32 (%struct.lua_State*)*, %struct.lua_TValue, %struct.lua_State*, %struct.UpVal, [9 x %struct.Table*], [17 x %union.TString*] }
%struct.stringtable = type { %union.GCObject**, i32, i32 }
%struct.Mbuffer = type { i8*, i64, i64 }
%struct.UpVal = type { %union.GCObject*, i8, i8, %struct.lua_TValue*, %union.anon }
%union.anon = type { %struct.lua_TValue }
%struct.Table = type { %union.GCObject*, i8, i8, i8, i8, %struct.Table*, %struct.lua_TValue*, %struct.Node*, %struct.Node*, %union.GCObject*, i32 }
%struct.Node = type { %struct.lua_TValue, %union.TKey }
%union.TKey = type { %struct.anon.0 }
%struct.anon.0 = type { %union.Value, i32, %struct.Node* }
%union.Value = type { %union.GCObject* }
%union.TString = type { %struct.anon.1 }
%struct.anon.1 = type { %union.GCObject*, i8, i8, i8, i32, i64 }
%struct.CallInfo = type { %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*, i32*, i32, i32 }
%struct.lua_TValue = type { %union.Value, i32 }
%union.GCObject = type { %struct.lua_State }
%struct.lua_longjmp = type opaque
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, [60 x i8], i32 }
%struct.CClosure = type { %union.GCObject*, i8, i8, i8, i8, %union.GCObject*, %struct.Table*, i32 (%struct.lua_State*)*, [1 x %struct.lua_TValue] }
%union.Closure = type { %struct.CClosure }
%struct.Proto = type { %union.GCObject*, i8, i8, %struct.lua_TValue*, i32*, %struct.Proto**, i32*, %struct.LocVar*, %union.TString**, %union.TString*, i32, i32, i32, i32, i32, i32, i32, i32, %union.GCObject*, i8, i8, i8, i8 }
%struct.LocVar = type { %union.TString*, i32, i32 }
%struct.LClosure = type { %union.GCObject*, i8, i8, i8, i8, %union.GCObject*, %struct.Table*, %struct.Proto*, [1 x %struct.UpVal*] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@luaT_typenames = external hidden local_unnamed_addr constant [0 x i8*], align 8
@.str = private unnamed_addr constant [35 x i8] c"attempt to %s %s '%s' (a %s value)\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"attempt to %s a %s value\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"concatenate\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"perform arithmetic on\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"attempt to compare two %s values\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"attempt to compare %s with %s\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"(*temporary)\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"tail\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"=(tail call)\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"=[C]\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"Lua\00", align 1
@luaP_opmodes = external hidden local_unnamed_addr constant [38 x i8], align 16
@.str.14 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"global\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"field\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"upvalue\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"method\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"%s:%d: %s\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_sethook(%struct.lua_State* nocapture, void (%struct.lua_State*, %struct.lua_Debug*)*, i32, i32) local_unnamed_addr #0 !dbg !395 {
  %5 = icmp eq void (%struct.lua_State*, %struct.lua_Debug*)* %1, null, !dbg !407
  %6 = icmp eq i32 %2, 0, !dbg !409
  %7 = or i1 %5, %6, !dbg !410
  %8 = select i1 %7, void (%struct.lua_State*, %struct.lua_Debug*)* null, void (%struct.lua_State*, %struct.lua_Debug*)* %1, !dbg !410
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 21, !dbg !411
  store void (%struct.lua_State*, %struct.lua_Debug*)* %8, void (%struct.lua_State*, %struct.lua_Debug*)** %9, align 8, !dbg !412, !tbaa !413
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 19, !dbg !422
  store i32 %3, i32* %10, align 8, !dbg !423, !tbaa !424
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 20, !dbg !425
  store i32 %3, i32* %11, align 4, !dbg !425, !tbaa !426
  %12 = trunc i32 %2 to i8, !dbg !427
  %13 = select i1 %7, i8 0, i8 %12, !dbg !427
  %14 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 17, !dbg !428
  store i8 %13, i8* %14, align 4, !dbg !429, !tbaa !430
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !431
  ret i32 1, !dbg !431
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: noredzone nounwind
define dso_local void (%struct.lua_State*, %struct.lua_Debug*)* @lua_gethook(%struct.lua_State* nocapture readonly) local_unnamed_addr #0 !dbg !432 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 21, !dbg !438
  %3 = load void (%struct.lua_State*, %struct.lua_Debug*)*, void (%struct.lua_State*, %struct.lua_Debug*)** %2, align 8, !dbg !438, !tbaa !413
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !439
  ret void (%struct.lua_State*, %struct.lua_Debug*)* %3, !dbg !439
}

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_gethookmask(%struct.lua_State* nocapture readonly) local_unnamed_addr #0 !dbg !440 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 17, !dbg !444
  %3 = load i8, i8* %2, align 4, !dbg !444, !tbaa !430
  %4 = zext i8 %3 to i32, !dbg !445
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !446
  ret i32 %4, !dbg !446
}

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_gethookcount(%struct.lua_State* nocapture readonly) local_unnamed_addr #0 !dbg !447 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 19, !dbg !451
  %3 = load i32, i32* %2, align 8, !dbg !451, !tbaa !424
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !452
  ret i32 %3, !dbg !452
}

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_getstack(%struct.lua_State* nocapture readonly, i32, %struct.lua_Debug* nocapture) local_unnamed_addr #0 !dbg !453 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !465
  %5 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8, !dbg !465, !tbaa !467
  %6 = icmp sgt i32 %1, 0, !dbg !469
  br i1 %6, label %7, label %31, !dbg !471

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 12
  %9 = load %struct.CallInfo*, %struct.CallInfo** %8, align 8, !tbaa !472
  br label %10, !dbg !471

; <label>:10:                                     ; preds = %7, %27
  %11 = phi %struct.CallInfo* [ %5, %7 ], [ %29, %27 ]
  %12 = phi i32 [ %1, %7 ], [ %28, %27 ]
  %13 = icmp ugt %struct.CallInfo* %11, %9, !dbg !473
  br i1 %13, label %14, label %48, !dbg !474

; <label>:14:                                     ; preds = %10
  %15 = add nsw i32 %12, -1, !dbg !475
  %16 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %11, i64 0, i32 1, !dbg !477
  %17 = bitcast %struct.lua_TValue** %16 to %struct.CClosure***, !dbg !477
  %18 = load %struct.CClosure**, %struct.CClosure*** %17, align 8, !dbg !477, !tbaa !479
  %19 = load %struct.CClosure*, %struct.CClosure** %18, align 8, !dbg !477, !tbaa !481
  %20 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %19, i64 0, i32 3, !dbg !477
  %21 = load i8, i8* %20, align 2, !dbg !477, !tbaa !481
  %22 = icmp eq i8 %21, 0, !dbg !477
  br i1 %22, label %23, label %27, !dbg !482

; <label>:23:                                     ; preds = %14
  %24 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %11, i64 0, i32 5, !dbg !483
  %25 = load i32, i32* %24, align 4, !dbg !483, !tbaa !484
  %26 = sub nsw i32 %15, %25, !dbg !485
  br label %27, !dbg !486

; <label>:27:                                     ; preds = %14, %23
  %28 = phi i32 [ %15, %14 ], [ %26, %23 ], !dbg !487
  %29 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %11, i64 -1, !dbg !488
  %30 = icmp sgt i32 %28, 0, !dbg !469
  br i1 %30, label %10, label %31, !dbg !471, !llvm.loop !489

; <label>:31:                                     ; preds = %27, %3
  %32 = phi i32 [ %1, %3 ], [ %28, %27 ]
  %33 = phi %struct.CallInfo* [ %5, %3 ], [ %29, %27 ], !dbg !491
  %34 = icmp eq i32 %32, 0, !dbg !492
  br i1 %34, label %35, label %46, !dbg !494

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 12, !dbg !495
  %37 = load %struct.CallInfo*, %struct.CallInfo** %36, align 8, !dbg !495, !tbaa !472
  %38 = icmp ugt %struct.CallInfo* %33, %37, !dbg !496
  br i1 %38, label %39, label %48, !dbg !497

; <label>:39:                                     ; preds = %35
  %40 = ptrtoint %struct.CallInfo* %33 to i64, !dbg !499
  %41 = ptrtoint %struct.CallInfo* %37 to i64, !dbg !499
  %42 = sub i64 %40, %41, !dbg !499
  %43 = sdiv exact i64 %42, 40, !dbg !499
  %44 = trunc i64 %43 to i32, !dbg !499
  %45 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 10, !dbg !501
  store i32 %44, i32* %45, align 4, !dbg !502, !tbaa !503
  br label %48, !dbg !505

; <label>:46:                                     ; preds = %31
  %47 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 10, !dbg !506
  store i32 0, i32* %47, align 4, !dbg !509, !tbaa !503
  br label %48, !dbg !510

; <label>:48:                                     ; preds = %10, %35, %46, %39
  %49 = phi i32 [ 1, %39 ], [ 1, %46 ], [ 0, %35 ], [ 0, %10 ], !dbg !511
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !512
  ret i32 %49, !dbg !512
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local i8* @lua_getlocal(%struct.lua_State*, %struct.lua_Debug* nocapture readonly, i32) local_unnamed_addr #0 !dbg !513 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 12, !dbg !527
  %5 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8, !dbg !527, !tbaa !472
  %6 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %1, i64 0, i32 10, !dbg !528
  %7 = load i32, i32* %6, align 4, !dbg !528, !tbaa !503
  %8 = sext i32 %7 to i64, !dbg !529
  %9 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5, i64 %8, !dbg !529
  %10 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5, i64 %8, i32 1, !dbg !556
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !556, !tbaa !479
  %12 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %11, i64 0, i32 1, !dbg !556
  %13 = load i32, i32* %12, align 8, !dbg !556, !tbaa !557
  %14 = icmp eq i32 %13, 6, !dbg !556
  br i1 %14, label %15, label %21, !dbg !556

; <label>:15:                                     ; preds = %3
  %16 = bitcast %struct.lua_TValue* %11 to %union.Closure**, !dbg !556
  %17 = load %union.Closure*, %union.Closure** %16, align 8, !dbg !556, !tbaa !481
  %18 = getelementptr inbounds %union.Closure, %union.Closure* %17, i64 0, i32 0, i32 3, !dbg !556
  %19 = load i8, i8* %18, align 2, !dbg !556, !tbaa !481
  %20 = icmp eq i8 %19, 0, !dbg !556
  br i1 %20, label %22, label %21, !dbg !556

; <label>:21:                                     ; preds = %15, %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !558
  br label %61, !dbg !559

; <label>:22:                                     ; preds = %15
  %23 = getelementptr inbounds %union.Closure, %union.Closure* %17, i64 0, i32 0, i32 7, !dbg !560
  %24 = bitcast i32 (%struct.lua_State*)** %23 to %struct.Proto**, !dbg !560
  %25 = load %struct.Proto*, %struct.Proto** %24, align 8, !dbg !560, !tbaa !481
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !558
  %26 = icmp eq %struct.Proto* %25, null, !dbg !562
  br i1 %26, label %61, label %27, !dbg !559

; <label>:27:                                     ; preds = %22
  %28 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !572
  %29 = load %struct.CallInfo*, %struct.CallInfo** %28, align 8, !dbg !572, !tbaa !467
  %30 = icmp eq %struct.CallInfo* %29, %9, !dbg !574
  br i1 %30, label %36, label %31, !dbg !575

; <label>:31:                                     ; preds = %27
  %32 = bitcast %union.Closure* %17 to %struct.LClosure*, !dbg !576
  %33 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5, i64 %8, i32 3
  %34 = bitcast i32** %33 to i64*
  %35 = load i64, i64* %34, align 8, !dbg !577, !tbaa !578
  br label %44, !dbg !575

; <label>:36:                                     ; preds = %27
  %37 = bitcast %struct.lua_TValue* %11 to %struct.LClosure**, !dbg !579
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8, !dbg !581
  %39 = bitcast i32** %38 to i64*, !dbg !581
  %40 = load i64, i64* %39, align 8, !dbg !581, !tbaa !582
  %41 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5, i64 %8, i32 3, !dbg !583
  %42 = bitcast i32** %41 to i64*, !dbg !584
  store i64 %40, i64* %42, align 8, !dbg !584, !tbaa !578
  %43 = load %struct.LClosure*, %struct.LClosure** %37, align 8, !dbg !577, !tbaa !481
  br label %44, !dbg !585

; <label>:44:                                     ; preds = %31, %36
  %45 = phi %struct.LClosure* [ %32, %31 ], [ %43, %36 ], !dbg !577
  %46 = phi i64 [ %35, %31 ], [ %40, %36 ], !dbg !577
  %47 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %45, i64 0, i32 7, !dbg !577
  %48 = load %struct.Proto*, %struct.Proto** %47, align 8, !dbg !577, !tbaa !481
  %49 = getelementptr inbounds %struct.Proto, %struct.Proto* %48, i64 0, i32 4, !dbg !577
  %50 = bitcast i32** %49 to i64*, !dbg !577
  %51 = load i64, i64* %50, align 8, !dbg !577, !tbaa !586
  %52 = sub i64 %46, %51, !dbg !577
  %53 = lshr exact i64 %52, 2, !dbg !577
  %54 = trunc i64 %53 to i32, !dbg !577
  %55 = add nsw i32 %54, -1, !dbg !577
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !588
  %56 = tail call i8* @luaF_getlocalname(%struct.Proto* nonnull %25, i32 %2, i32 %55) #5, !dbg !589
  %57 = icmp eq i8* %56, null, !dbg !591
  br i1 %57, label %61, label %58, !dbg !592

; <label>:58:                                     ; preds = %44
  %59 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %9, i64 0, i32 0
  %60 = load %struct.lua_TValue*, %struct.lua_TValue** %59, align 8, !dbg !593, !tbaa !595
  br label %81, !dbg !592

; <label>:61:                                     ; preds = %44, %22, %21
  %62 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !596
  %63 = load %struct.CallInfo*, %struct.CallInfo** %62, align 8, !dbg !596, !tbaa !467
  %64 = icmp eq %struct.CallInfo* %63, %9, !dbg !597
  %65 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !598
  %66 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %9, i64 1, i32 1, !dbg !599
  %67 = select i1 %64, %struct.lua_TValue** %65, %struct.lua_TValue** %66, !dbg !600
  %68 = bitcast %struct.lua_TValue** %67 to i64*, !dbg !600
  %69 = load i64, i64* %68, align 8, !dbg !600, !tbaa !601
  %70 = bitcast %struct.CallInfo* %9 to i64*, !dbg !603
  %71 = load i64, i64* %70, align 8, !dbg !603, !tbaa !595
  %72 = sub i64 %69, %71, !dbg !605
  %73 = ashr exact i64 %72, 4, !dbg !605
  %74 = sext i32 %2 to i64, !dbg !606
  %75 = icmp sge i64 %73, %74, !dbg !607
  %76 = icmp sgt i32 %2, 0, !dbg !608
  %77 = and i1 %76, %75, !dbg !609
  br i1 %77, label %78, label %80

; <label>:78:                                     ; preds = %61
  %79 = inttoptr i64 %71 to %struct.lua_TValue*
  br label %81

; <label>:80:                                     ; preds = %61
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !610
  br label %87

; <label>:81:                                     ; preds = %78, %58
  %82 = phi %struct.lua_TValue* [ %60, %58 ], [ %79, %78 ], !dbg !593
  %83 = phi i8* [ %56, %58 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), %78 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !610
  %84 = add nsw i32 %2, -1, !dbg !612
  %85 = sext i32 %84 to i64, !dbg !613
  %86 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %82, i64 %85, !dbg !613
  tail call void @luaA_pushobject(%struct.lua_State* nonnull %0, %struct.lua_TValue* %86) #5, !dbg !614
  br label %87, !dbg !614

; <label>:87:                                     ; preds = %80, %81
  %88 = phi i8* [ null, %80 ], [ %83, %81 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !615
  ret i8* %88, !dbg !615
}

; Function Attrs: noredzone
declare hidden void @luaA_pushobject(%struct.lua_State*, %struct.lua_TValue*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i8* @lua_setlocal(%struct.lua_State* nocapture, %struct.lua_Debug* nocapture readonly, i32) local_unnamed_addr #0 !dbg !616 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 12, !dbg !632
  %5 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8, !dbg !632, !tbaa !472
  %6 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %1, i64 0, i32 10, !dbg !633
  %7 = load i32, i32* %6, align 4, !dbg !633, !tbaa !503
  %8 = sext i32 %7 to i64, !dbg !634
  %9 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5, i64 %8, !dbg !634
  %10 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5, i64 %8, i32 1, !dbg !642
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !642, !tbaa !479
  %12 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %11, i64 0, i32 1, !dbg !642
  %13 = load i32, i32* %12, align 8, !dbg !642, !tbaa !557
  %14 = icmp eq i32 %13, 6, !dbg !642
  br i1 %14, label %15, label %21, !dbg !642

; <label>:15:                                     ; preds = %3
  %16 = bitcast %struct.lua_TValue* %11 to %union.Closure**, !dbg !642
  %17 = load %union.Closure*, %union.Closure** %16, align 8, !dbg !642, !tbaa !481
  %18 = getelementptr inbounds %union.Closure, %union.Closure* %17, i64 0, i32 0, i32 3, !dbg !642
  %19 = load i8, i8* %18, align 2, !dbg !642, !tbaa !481
  %20 = icmp eq i8 %19, 0, !dbg !642
  br i1 %20, label %22, label %21, !dbg !642

; <label>:21:                                     ; preds = %15, %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !643
  br label %62, !dbg !644

; <label>:22:                                     ; preds = %15
  %23 = getelementptr inbounds %union.Closure, %union.Closure* %17, i64 0, i32 0, i32 7, !dbg !645
  %24 = bitcast i32 (%struct.lua_State*)** %23 to %struct.Proto**, !dbg !645
  %25 = load %struct.Proto*, %struct.Proto** %24, align 8, !dbg !645, !tbaa !481
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !643
  %26 = icmp eq %struct.Proto* %25, null, !dbg !647
  br i1 %26, label %62, label %27, !dbg !644

; <label>:27:                                     ; preds = %22
  %28 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !651
  %29 = load %struct.CallInfo*, %struct.CallInfo** %28, align 8, !dbg !651, !tbaa !467
  %30 = icmp eq %struct.CallInfo* %29, %9, !dbg !652
  br i1 %30, label %36, label %31, !dbg !653

; <label>:31:                                     ; preds = %27
  %32 = bitcast %union.Closure* %17 to %struct.LClosure*, !dbg !654
  %33 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5, i64 %8, i32 3
  %34 = bitcast i32** %33 to i64*
  %35 = load i64, i64* %34, align 8, !dbg !655, !tbaa !578
  br label %44, !dbg !653

; <label>:36:                                     ; preds = %27
  %37 = bitcast %struct.lua_TValue* %11 to %struct.LClosure**, !dbg !656
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8, !dbg !657
  %39 = bitcast i32** %38 to i64*, !dbg !657
  %40 = load i64, i64* %39, align 8, !dbg !657, !tbaa !582
  %41 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5, i64 %8, i32 3, !dbg !658
  %42 = bitcast i32** %41 to i64*, !dbg !659
  store i64 %40, i64* %42, align 8, !dbg !659, !tbaa !578
  %43 = load %struct.LClosure*, %struct.LClosure** %37, align 8, !dbg !655, !tbaa !481
  br label %44, !dbg !660

; <label>:44:                                     ; preds = %31, %36
  %45 = phi %struct.LClosure* [ %32, %31 ], [ %43, %36 ], !dbg !655
  %46 = phi i64 [ %35, %31 ], [ %40, %36 ], !dbg !655
  %47 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %45, i64 0, i32 7, !dbg !655
  %48 = load %struct.Proto*, %struct.Proto** %47, align 8, !dbg !655, !tbaa !481
  %49 = getelementptr inbounds %struct.Proto, %struct.Proto* %48, i64 0, i32 4, !dbg !655
  %50 = bitcast i32** %49 to i64*, !dbg !655
  %51 = load i64, i64* %50, align 8, !dbg !655, !tbaa !586
  %52 = sub i64 %46, %51, !dbg !655
  %53 = lshr exact i64 %52, 2, !dbg !655
  %54 = trunc i64 %53 to i32, !dbg !655
  %55 = add nsw i32 %54, -1, !dbg !655
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !661
  %56 = tail call i8* @luaF_getlocalname(%struct.Proto* nonnull %25, i32 %2, i32 %55) #5, !dbg !662
  %57 = icmp eq i8* %56, null, !dbg !664
  br i1 %57, label %62, label %58, !dbg !665

; <label>:58:                                     ; preds = %44
  %59 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %9, i64 0, i32 0
  %60 = load %struct.lua_TValue*, %struct.lua_TValue** %59, align 8, !dbg !666, !tbaa !595
  %61 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !666
  br label %82, !dbg !665

; <label>:62:                                     ; preds = %44, %22, %21
  %63 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !667
  %64 = load %struct.CallInfo*, %struct.CallInfo** %63, align 8, !dbg !667, !tbaa !467
  %65 = icmp eq %struct.CallInfo* %64, %9, !dbg !668
  %66 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !669
  %67 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %9, i64 1, i32 1, !dbg !670
  %68 = select i1 %65, %struct.lua_TValue** %66, %struct.lua_TValue** %67, !dbg !671
  %69 = bitcast %struct.lua_TValue** %68 to i64*, !dbg !671
  %70 = load i64, i64* %69, align 8, !dbg !671, !tbaa !601
  %71 = bitcast %struct.CallInfo* %9 to i64*, !dbg !673
  %72 = load i64, i64* %71, align 8, !dbg !673, !tbaa !595
  %73 = sub i64 %70, %72, !dbg !674
  %74 = ashr exact i64 %73, 4, !dbg !674
  %75 = sext i32 %2 to i64, !dbg !675
  %76 = icmp sge i64 %74, %75, !dbg !676
  %77 = icmp sgt i32 %2, 0, !dbg !677
  %78 = and i1 %77, %76, !dbg !678
  br i1 %78, label %79, label %81

; <label>:79:                                     ; preds = %62
  %80 = inttoptr i64 %72 to %struct.lua_TValue*
  br label %82

; <label>:81:                                     ; preds = %62
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !679
  br label %97

; <label>:82:                                     ; preds = %79, %58
  %83 = phi %struct.lua_TValue** [ %61, %58 ], [ %66, %79 ], !dbg !666
  %84 = phi %struct.lua_TValue* [ %60, %58 ], [ %80, %79 ], !dbg !666
  %85 = phi i8* [ %56, %58 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), %79 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !679
  %86 = load %struct.lua_TValue*, %struct.lua_TValue** %83, align 8, !dbg !666, !tbaa !681
  %87 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %86, i64 -1, !dbg !666
  %88 = add nsw i32 %2, -1, !dbg !666
  %89 = sext i32 %88 to i64, !dbg !666
  %90 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %84, i64 %89, !dbg !666
  %91 = bitcast %struct.lua_TValue* %87 to i64*, !dbg !666
  %92 = bitcast %struct.lua_TValue* %90 to i64*, !dbg !666
  %93 = load i64, i64* %91, align 8, !dbg !666
  store i64 %93, i64* %92, align 8, !dbg !666
  %94 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %86, i64 -1, i32 1, !dbg !666
  %95 = load i32, i32* %94, align 8, !dbg !666, !tbaa !557
  %96 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %84, i64 %89, i32 1, !dbg !666
  store i32 %95, i32* %96, align 8, !dbg !666, !tbaa !557
  br label %97, !dbg !666

; <label>:97:                                     ; preds = %81, %82
  %98 = phi %struct.lua_TValue** [ %66, %81 ], [ %83, %82 ], !dbg !682
  %99 = phi i8* [ null, %81 ], [ %85, %82 ]
  %100 = load %struct.lua_TValue*, %struct.lua_TValue** %98, align 8, !dbg !683, !tbaa !681
  %101 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %100, i64 -1, !dbg !683
  store %struct.lua_TValue* %101, %struct.lua_TValue** %98, align 8, !dbg !683, !tbaa !681
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !684
  ret i8* %99, !dbg !684
}

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_getinfo(%struct.lua_State*, i8*, %struct.lua_Debug*) local_unnamed_addr #0 !dbg !685 {
  %4 = load i8, i8* %1, align 1, !dbg !710, !tbaa !481
  %5 = icmp eq i8 %4, 62, !dbg !711
  br i1 %5, label %6, label %14, !dbg !712

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !713
  %8 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8, !dbg !713, !tbaa !681
  %9 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !715
  %10 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %8, i64 -1, i32 0, i32 0, !dbg !716
  %11 = bitcast %union.GCObject** %10 to %union.Closure**, !dbg !716
  %12 = load %union.Closure*, %union.Closure** %11, align 8, !dbg !716, !tbaa !481
  %13 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %8, i64 -1, !dbg !717
  store %struct.lua_TValue* %13, %struct.lua_TValue** %7, align 8, !dbg !717, !tbaa !681
  br label %27, !dbg !718

; <label>:14:                                     ; preds = %3
  %15 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 10, !dbg !719
  %16 = load i32, i32* %15, align 4, !dbg !719, !tbaa !503
  %17 = icmp eq i32 %16, 0, !dbg !721
  br i1 %17, label %63, label %18, !dbg !722

; <label>:18:                                     ; preds = %14
  %19 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 12, !dbg !723
  %20 = load %struct.CallInfo*, %struct.CallInfo** %19, align 8, !dbg !723, !tbaa !472
  %21 = sext i32 %16 to i64, !dbg !725
  %22 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %20, i64 %21, !dbg !725
  %23 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %20, i64 %21, i32 1, !dbg !726
  %24 = bitcast %struct.lua_TValue** %23 to %union.Closure***, !dbg !726
  %25 = load %union.Closure**, %union.Closure*** %24, align 8, !dbg !726, !tbaa !479
  %26 = load %union.Closure*, %union.Closure** %25, align 8, !dbg !726, !tbaa !481
  br label %27, !dbg !727

; <label>:27:                                     ; preds = %18, %6
  %28 = phi %struct.CallInfo* [ null, %6 ], [ %22, %18 ], !dbg !728
  %29 = phi %union.Closure* [ %12, %6 ], [ %26, %18 ], !dbg !728
  %30 = phi i8* [ %9, %6 ], [ %1, %18 ]
  %31 = icmp eq %union.Closure* %29, null, !dbg !746
  br i1 %31, label %63, label %32, !dbg !748

; <label>:32:                                     ; preds = %27
  %33 = load i8, i8* %30, align 1, !dbg !749, !tbaa !481
  %34 = icmp eq i8 %33, 0, !dbg !752
  br i1 %34, label %222, label %35, !dbg !752

; <label>:35:                                     ; preds = %32
  %36 = getelementptr inbounds %union.Closure, %union.Closure* %29, i64 0, i32 0, i32 3
  %37 = icmp eq %struct.CallInfo* %28, null
  %38 = getelementptr inbounds %union.Closure, %union.Closure* %29, i64 0, i32 0, i32 4
  %39 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 6
  %40 = getelementptr inbounds %union.Closure, %union.Closure* %29, i64 0, i32 0, i32 7
  %41 = bitcast i32 (%struct.lua_State*)** %40 to %struct.Proto**
  %42 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 4
  %43 = bitcast i8** %42 to %union.TString**
  %44 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 7
  %45 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 8
  %46 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 3
  %47 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 9, i64 0
  %48 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 5
  %49 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %28, i64 0, i32 1
  %50 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 2
  %51 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 1
  %52 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %28, i64 -1, i32 1
  %53 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %54 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %28, i64 0, i32 5
  %55 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %56 = bitcast i32** %55 to i64*
  %57 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %28, i64 0, i32 3
  %58 = bitcast i32** %57 to i64*
  %59 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %28, i64 -1
  %60 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %28, i64 -1, i32 3
  %61 = bitcast i32** %60 to i64*
  %62 = bitcast i8** %51 to <2 x i8*>*
  br label %74, !dbg !752

; <label>:63:                                     ; preds = %14, %27
  %64 = phi i8* [ %30, %27 ], [ %1, %14 ]
  %65 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 1, !dbg !761
  %66 = bitcast i8** %65 to <2 x i8*>*, !dbg !762
  store <2 x i8*> <i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)>, <2 x i8*>* %66, align 8, !dbg !762, !tbaa !601
  %67 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 3, !dbg !763
  %68 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 5, !dbg !764
  store i32 -1, i32* %68, align 8, !dbg !765, !tbaa !766
  %69 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 7, !dbg !767
  store i32 -1, i32* %69, align 8, !dbg !768, !tbaa !769
  %70 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 8, !dbg !770
  store i32 -1, i32* %70, align 4, !dbg !771, !tbaa !772
  %71 = bitcast i8** %67 to <2 x i8*>*, !dbg !773
  store <2 x i8*> <i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0)>, <2 x i8*>* %71, align 8, !dbg !773, !tbaa !601
  %72 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 9, i64 0, !dbg !774
  tail call void @luaO_chunkid(i8* nonnull %72, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i64 60) #5, !dbg !775
  %73 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 6, !dbg !776
  store i32 0, i32* %73, align 4, !dbg !777, !tbaa !778
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !779
  br label %222, !dbg !780

; <label>:74:                                     ; preds = %217, %35
  %75 = phi i8 [ %33, %35 ], [ %220, %217 ]
  %76 = phi i32 [ 1, %35 ], [ %218, %217 ]
  %77 = phi i8* [ %30, %35 ], [ %219, %217 ]
  %78 = sext i8 %75 to i32, !dbg !781
  switch i32 %78, label %216 [
    i32 83, label %79
    i32 108, label %101
    i32 117, label %150
    i32 110, label %153
    i32 76, label %217
    i32 102, label %217
  ], !dbg !783

; <label>:79:                                     ; preds = %74
  %80 = load i8, i8* %36, align 2, !dbg !795, !tbaa !481
  %81 = icmp eq i8 %80, 0, !dbg !797
  br i1 %81, label %83, label %82, !dbg !798

; <label>:82:                                     ; preds = %79
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8** %42, align 8, !dbg !799, !tbaa !801
  store i32 -1, i32* %44, align 8, !dbg !802, !tbaa !769
  br label %97, !dbg !803

; <label>:83:                                     ; preds = %79
  %84 = load %struct.Proto*, %struct.Proto** %41, align 8, !dbg !804, !tbaa !481
  %85 = getelementptr inbounds %struct.Proto, %struct.Proto* %84, i64 0, i32 9, !dbg !804
  %86 = load %union.TString*, %union.TString** %85, align 8, !dbg !804, !tbaa !806
  %87 = getelementptr inbounds %union.TString, %union.TString* %86, i64 1, !dbg !804
  store %union.TString* %87, %union.TString** %43, align 8, !dbg !807, !tbaa !801
  %88 = load %struct.Proto*, %struct.Proto** %41, align 8, !dbg !808, !tbaa !481
  %89 = getelementptr inbounds %struct.Proto, %struct.Proto* %88, i64 0, i32 16, !dbg !809
  %90 = load i32, i32* %89, align 8, !dbg !809, !tbaa !810
  store i32 %90, i32* %44, align 8, !dbg !811, !tbaa !769
  %91 = load %struct.Proto*, %struct.Proto** %41, align 8, !dbg !812, !tbaa !481
  %92 = getelementptr inbounds %struct.Proto, %struct.Proto* %91, i64 0, i32 17, !dbg !813
  %93 = load i32, i32* %92, align 4, !dbg !813, !tbaa !814
  %94 = icmp eq i32 %90, 0, !dbg !815
  %95 = select i1 %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), !dbg !816
  %96 = bitcast %union.TString* %87 to i8*
  br label %97

; <label>:97:                                     ; preds = %83, %82
  %98 = phi i8* [ %96, %83 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), %82 ], !dbg !817
  %99 = phi i32 [ %93, %83 ], [ -1, %82 ]
  %100 = phi i8* [ %95, %83 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), %82 ]
  store i32 %99, i32* %45, align 4, !dbg !818
  store i8* %100, i8** %46, align 8, !dbg !819
  tail call void @luaO_chunkid(i8* nonnull %47, i8* %98, i64 60) #5, !dbg !820
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !821
  br label %217, !dbg !822

; <label>:101:                                    ; preds = %74
  br i1 %37, label %148, label %102, !dbg !823

; <label>:102:                                    ; preds = %101
  %103 = load %struct.lua_TValue*, %struct.lua_TValue** %49, align 8, !dbg !836, !tbaa !479
  %104 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %103, i64 0, i32 1, !dbg !836
  %105 = load i32, i32* %104, align 8, !dbg !836, !tbaa !557
  %106 = icmp eq i32 %105, 6, !dbg !836
  %107 = bitcast %struct.lua_TValue* %103 to %struct.LClosure**, !dbg !836
  br i1 %106, label %108, label %123, !dbg !836

; <label>:108:                                    ; preds = %102
  %109 = bitcast %struct.lua_TValue* %103 to %struct.CClosure**, !dbg !836
  %110 = load %struct.CClosure*, %struct.CClosure** %109, align 8, !dbg !836, !tbaa !481
  %111 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %110, i64 0, i32 3, !dbg !836
  %112 = load i8, i8* %111, align 2, !dbg !836, !tbaa !481
  %113 = icmp eq i8 %112, 0, !dbg !836
  %114 = bitcast %struct.CClosure* %110 to %struct.LClosure*, !dbg !837
  br i1 %113, label %115, label %123, !dbg !837

; <label>:115:                                    ; preds = %108
  %116 = load %struct.CallInfo*, %struct.CallInfo** %53, align 8, !dbg !838, !tbaa !467
  %117 = icmp eq %struct.CallInfo* %116, %28, !dbg !839
  br i1 %117, label %120, label %118, !dbg !840

; <label>:118:                                    ; preds = %115
  %119 = load i64, i64* %58, align 8, !dbg !841, !tbaa !578
  br label %124, !dbg !840

; <label>:120:                                    ; preds = %115
  %121 = load i64, i64* %56, align 8, !dbg !842, !tbaa !582
  store i64 %121, i64* %58, align 8, !dbg !843, !tbaa !578
  %122 = load %struct.LClosure*, %struct.LClosure** %107, align 8, !dbg !841, !tbaa !481
  br label %124, !dbg !844

; <label>:123:                                    ; preds = %108, %102
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !845
  br label %146, !dbg !846

; <label>:124:                                    ; preds = %120, %118
  %125 = phi %struct.LClosure* [ %114, %118 ], [ %122, %120 ]
  %126 = phi i64 [ %119, %118 ], [ %121, %120 ], !dbg !841
  %127 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %125, i64 0, i32 7, !dbg !841
  %128 = load %struct.Proto*, %struct.Proto** %127, align 8, !dbg !841, !tbaa !481
  %129 = getelementptr inbounds %struct.Proto, %struct.Proto* %128, i64 0, i32 4, !dbg !841
  %130 = bitcast i32** %129 to i64*, !dbg !841
  %131 = load i64, i64* %130, align 8, !dbg !841, !tbaa !586
  %132 = sub i64 %126, %131, !dbg !841
  %133 = lshr exact i64 %132, 2, !dbg !841
  %134 = trunc i64 %133 to i32, !dbg !841
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !845
  %135 = icmp slt i32 %134, 1, !dbg !848
  br i1 %135, label %146, label %136, !dbg !846

; <label>:136:                                    ; preds = %124
  %137 = getelementptr inbounds %struct.Proto, %struct.Proto* %128, i64 0, i32 6, !dbg !850
  %138 = load i32*, i32** %137, align 8, !dbg !850, !tbaa !851
  %139 = icmp eq i32* %138, null, !dbg !850
  br i1 %139, label %146, label %140, !dbg !850

; <label>:140:                                    ; preds = %136
  %141 = shl i64 %132, 30, !dbg !850
  %142 = add i64 %141, -4294967296, !dbg !850
  %143 = ashr exact i64 %142, 32, !dbg !850
  %144 = getelementptr inbounds i32, i32* %138, i64 %143, !dbg !850
  %145 = load i32, i32* %144, align 4, !dbg !850, !tbaa !852
  br label %146, !dbg !850

; <label>:146:                                    ; preds = %140, %136, %124, %123
  %147 = phi i32 [ -1, %124 ], [ %145, %140 ], [ 0, %136 ], [ -1, %123 ], !dbg !853
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !854
  br label %148, !dbg !823

; <label>:148:                                    ; preds = %146, %101
  %149 = phi i32 [ %147, %146 ], [ -1, %101 ], !dbg !823
  store i32 %149, i32* %48, align 8, !dbg !855, !tbaa !766
  br label %217, !dbg !856

; <label>:150:                                    ; preds = %74
  %151 = load i8, i8* %38, align 1, !dbg !857, !tbaa !481
  %152 = zext i8 %151 to i32, !dbg !859
  store i32 %152, i32* %39, align 4, !dbg !860, !tbaa !778
  br label %217, !dbg !861

; <label>:153:                                    ; preds = %74
  br i1 %37, label %214, label %154, !dbg !862

; <label>:154:                                    ; preds = %153
  %155 = load %struct.lua_TValue*, %struct.lua_TValue** %49, align 8, !dbg !877, !tbaa !479
  %156 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %155, i64 0, i32 1, !dbg !877
  %157 = load i32, i32* %156, align 8, !dbg !877, !tbaa !557
  %158 = icmp eq i32 %157, 6, !dbg !877
  br i1 %158, label %159, label %168, !dbg !877

; <label>:159:                                    ; preds = %154
  %160 = bitcast %struct.lua_TValue* %155 to %struct.CClosure**, !dbg !877
  %161 = load %struct.CClosure*, %struct.CClosure** %160, align 8, !dbg !877, !tbaa !481
  %162 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %161, i64 0, i32 3, !dbg !877
  %163 = load i8, i8* %162, align 2, !dbg !877, !tbaa !481
  %164 = icmp eq i8 %163, 0, !dbg !877
  br i1 %164, label %165, label %168, !dbg !879

; <label>:165:                                    ; preds = %159
  %166 = load i32, i32* %54, align 4, !dbg !880, !tbaa !484
  %167 = icmp sgt i32 %166, 0, !dbg !881
  br i1 %167, label %208, label %168, !dbg !882

; <label>:168:                                    ; preds = %165, %159, %154
  %169 = load %struct.lua_TValue*, %struct.lua_TValue** %52, align 8, !dbg !883, !tbaa !479
  %170 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %169, i64 0, i32 1, !dbg !883
  %171 = load i32, i32* %170, align 8, !dbg !883, !tbaa !557
  %172 = icmp eq i32 %171, 6, !dbg !883
  %173 = bitcast %struct.lua_TValue* %169 to %struct.LClosure**, !dbg !883
  br i1 %172, label %174, label %208, !dbg !883

; <label>:174:                                    ; preds = %168
  %175 = bitcast %struct.lua_TValue* %169 to %struct.CClosure**, !dbg !883
  %176 = load %struct.CClosure*, %struct.CClosure** %175, align 8, !dbg !883, !tbaa !481
  %177 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %176, i64 0, i32 3, !dbg !883
  %178 = load i8, i8* %177, align 2, !dbg !883, !tbaa !481
  %179 = icmp eq i8 %178, 0, !dbg !883
  br i1 %179, label %180, label %208, !dbg !884

; <label>:180:                                    ; preds = %174
  %181 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %176, i64 0, i32 7, !dbg !885
  %182 = bitcast i32 (%struct.lua_State*)** %181 to %struct.Proto**, !dbg !885
  %183 = load %struct.Proto*, %struct.Proto** %182, align 8, !dbg !885, !tbaa !481
  %184 = getelementptr inbounds %struct.Proto, %struct.Proto* %183, i64 0, i32 4, !dbg !886
  %185 = load i32*, i32** %184, align 8, !dbg !886, !tbaa !586
  %186 = load %struct.CallInfo*, %struct.CallInfo** %53, align 8, !dbg !890, !tbaa !467
  %187 = icmp eq %struct.CallInfo* %186, %59, !dbg !891
  br i1 %187, label %190, label %188, !dbg !892

; <label>:188:                                    ; preds = %180
  %189 = load i64, i64* %61, align 8, !dbg !893, !tbaa !578
  br label %196, !dbg !892

; <label>:190:                                    ; preds = %180
  %191 = load i64, i64* %56, align 8, !dbg !894, !tbaa !582
  store i64 %191, i64* %61, align 8, !dbg !895, !tbaa !578
  %192 = load %struct.LClosure*, %struct.LClosure** %173, align 8, !dbg !893, !tbaa !481
  %193 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %192, i64 0, i32 7
  %194 = load %struct.Proto*, %struct.Proto** %193, align 8, !dbg !893, !tbaa !481
  %195 = getelementptr inbounds %struct.Proto, %struct.Proto* %194, i64 0, i32 4, !dbg !893
  br label %196, !dbg !896

; <label>:196:                                    ; preds = %190, %188
  %197 = phi i32** [ %195, %190 ], [ %184, %188 ], !dbg !893
  %198 = phi i64 [ %191, %190 ], [ %189, %188 ], !dbg !893
  %199 = bitcast i32** %197 to i64*, !dbg !893
  %200 = load i64, i64* %199, align 8, !dbg !893, !tbaa !586
  %201 = sub i64 %198, %200, !dbg !893
  %202 = shl i64 %201, 30, !dbg !897
  %203 = add i64 %202, -4294967296, !dbg !897
  %204 = ashr exact i64 %203, 32, !dbg !897
  %205 = getelementptr inbounds i32, i32* %185, i64 %204
  %206 = load i32, i32* %205, align 4, !dbg !898, !tbaa !852
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !899
  %207 = trunc i32 %206 to i6, !dbg !901
  switch i6 %207, label %208 [
    i6 28, label %209
    i6 29, label %209
    i6 -31, label %209
  ], !dbg !901

; <label>:208:                                    ; preds = %196, %174, %168, %165
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !903
  br label %214, !dbg !904

; <label>:209:                                    ; preds = %196, %196, %196
  %210 = lshr i32 %206, 6, !dbg !905
  %211 = and i32 %210, 255, !dbg !905
  %212 = tail call fastcc i8* @getobjname(%struct.lua_State* nonnull %0, %struct.CallInfo* nonnull %59, i32 %211, i8** nonnull %51) #5, !dbg !906
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !903
  store i8* %212, i8** %50, align 8, !dbg !907, !tbaa !908
  %213 = icmp eq i8* %212, null, !dbg !909
  br i1 %213, label %215, label %217, !dbg !904

; <label>:214:                                    ; preds = %153, %208
  store i8* null, i8** %50, align 8, !dbg !907, !tbaa !908
  br label %215, !dbg !911

; <label>:215:                                    ; preds = %214, %209
  store <2 x i8*> <i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)>, <2 x i8*>* %62, align 8, !dbg !913, !tbaa !601
  br label %217, !dbg !914

; <label>:216:                                    ; preds = %74
  br label %217, !dbg !915

; <label>:217:                                    ; preds = %216, %215, %209, %150, %148, %97, %74, %74
  %218 = phi i32 [ 0, %216 ], [ %76, %74 ], [ %76, %74 ], [ %76, %215 ], [ %76, %209 ], [ %76, %150 ], [ %76, %148 ], [ %76, %97 ], !dbg !916
  %219 = getelementptr inbounds i8, i8* %77, i64 1, !dbg !917
  %220 = load i8, i8* %219, align 1, !dbg !749, !tbaa !481
  %221 = icmp eq i8 %220, 0, !dbg !752
  br i1 %221, label %222, label %74, !dbg !752, !llvm.loop !918

; <label>:222:                                    ; preds = %217, %32, %63
  %223 = phi i1 [ true, %63 ], [ false, %32 ], [ false, %217 ]
  %224 = phi i8* [ %64, %63 ], [ %30, %32 ], [ %30, %217 ]
  %225 = phi %union.Closure* [ null, %63 ], [ %29, %32 ], [ %29, %217 ]
  %226 = phi i32 [ 1, %63 ], [ 1, %32 ], [ %218, %217 ], !dbg !916
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !921
  %227 = tail call i8* @strchr(i8* %224, i32 102) #5, !dbg !923
  %228 = icmp eq i8* %227, null, !dbg !923
  br i1 %228, label %250, label %229, !dbg !924

; <label>:229:                                    ; preds = %222
  %230 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !925
  %231 = load %struct.lua_TValue*, %struct.lua_TValue** %230, align 8, !dbg !925, !tbaa !681
  br i1 %223, label %234, label %232, !dbg !926

; <label>:232:                                    ; preds = %229
  %233 = bitcast %struct.lua_TValue* %231 to %union.Closure**, !dbg !927
  store %union.Closure* %225, %union.Closure** %233, align 8, !dbg !927, !tbaa !481
  br label %234

; <label>:234:                                    ; preds = %229, %232
  %235 = phi i32 [ 6, %232 ], [ 0, %229 ]
  %236 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %231, i64 0, i32 1, !dbg !927
  store i32 %235, i32* %236, align 8, !dbg !927
  %237 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 9, !dbg !928
  %238 = bitcast %struct.lua_TValue** %237 to i64*, !dbg !928
  %239 = load i64, i64* %238, align 8, !dbg !928, !tbaa !931
  %240 = bitcast %struct.lua_TValue** %230 to i64*, !dbg !928
  %241 = load i64, i64* %240, align 8, !dbg !928, !tbaa !681
  %242 = sub i64 %239, %241, !dbg !928
  %243 = icmp slt i64 %242, 17, !dbg !928
  %244 = inttoptr i64 %241 to %struct.lua_TValue*, !dbg !932
  br i1 %243, label %245, label %247, !dbg !932

; <label>:245:                                    ; preds = %234
  tail call void @luaD_growstack(%struct.lua_State* nonnull %0, i32 1) #5, !dbg !928
  %246 = load %struct.lua_TValue*, %struct.lua_TValue** %230, align 8, !dbg !932, !tbaa !681
  br label %247, !dbg !928

; <label>:247:                                    ; preds = %234, %245
  %248 = phi %struct.lua_TValue* [ %244, %234 ], [ %246, %245 ], !dbg !932
  %249 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %248, i64 1, !dbg !932
  store %struct.lua_TValue* %249, %struct.lua_TValue** %230, align 8, !dbg !932, !tbaa !681
  br label %250, !dbg !933

; <label>:250:                                    ; preds = %222, %247
  %251 = tail call i8* @strchr(i8* %224, i32 76) #5, !dbg !934
  %252 = icmp eq i8* %251, null, !dbg !934
  br i1 %252, label %308, label %253, !dbg !936

; <label>:253:                                    ; preds = %250
  br i1 %223, label %258, label %254, !dbg !959

; <label>:254:                                    ; preds = %253
  %255 = getelementptr inbounds %union.Closure, %union.Closure* %225, i64 0, i32 0, i32 3, !dbg !960
  %256 = load i8, i8* %255, align 2, !dbg !960, !tbaa !481
  %257 = icmp eq i8 %256, 0, !dbg !961
  br i1 %257, label %263, label %258, !dbg !962

; <label>:258:                                    ; preds = %254, %253
  %259 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !963
  %260 = load %struct.lua_TValue*, %struct.lua_TValue** %259, align 8, !dbg !963, !tbaa !681
  %261 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %260, i64 0, i32 1, !dbg !963
  store i32 0, i32* %261, align 8, !dbg !963, !tbaa !557
  %262 = ptrtoint %struct.lua_TValue* %260 to i64, !dbg !965
  br label %294, !dbg !965

; <label>:263:                                    ; preds = %254
  %264 = tail call %struct.Table* @luaH_new(%struct.lua_State* %0, i32 0, i32 0) #5, !dbg !966
  %265 = getelementptr inbounds %union.Closure, %union.Closure* %225, i64 0, i32 0, i32 7, !dbg !968
  %266 = bitcast i32 (%struct.lua_State*)** %265 to %struct.Proto**, !dbg !968
  %267 = load %struct.Proto*, %struct.Proto** %266, align 8, !dbg !968, !tbaa !481
  %268 = getelementptr inbounds %struct.Proto, %struct.Proto* %267, i64 0, i32 6, !dbg !969
  %269 = load i32*, i32** %268, align 8, !dbg !969, !tbaa !851
  %270 = getelementptr inbounds %struct.Proto, %struct.Proto* %267, i64 0, i32 13, !dbg !972
  %271 = load i32, i32* %270, align 4, !dbg !972, !tbaa !973
  %272 = icmp sgt i32 %271, 0, !dbg !974
  br i1 %272, label %273, label %286, !dbg !975

; <label>:273:                                    ; preds = %263, %273
  %274 = phi i64 [ %280, %273 ], [ 0, %263 ]
  %275 = getelementptr inbounds i32, i32* %269, i64 %274, !dbg !976
  %276 = load i32, i32* %275, align 4, !dbg !976, !tbaa !852
  %277 = tail call %struct.lua_TValue* @luaH_setnum(%struct.lua_State* %0, %struct.Table* %264, i32 %276) #5, !dbg !976
  %278 = bitcast %struct.lua_TValue* %277 to i32*, !dbg !976
  store i32 1, i32* %278, align 8, !dbg !976, !tbaa !481
  %279 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %277, i64 0, i32 1, !dbg !976
  store i32 1, i32* %279, align 8, !dbg !976, !tbaa !557
  %280 = add nuw nsw i64 %274, 1, !dbg !977
  %281 = load %struct.Proto*, %struct.Proto** %266, align 8, !dbg !978, !tbaa !481
  %282 = getelementptr inbounds %struct.Proto, %struct.Proto* %281, i64 0, i32 13, !dbg !972
  %283 = load i32, i32* %282, align 4, !dbg !972, !tbaa !973
  %284 = sext i32 %283 to i64, !dbg !974
  %285 = icmp slt i64 %280, %284, !dbg !974
  br i1 %285, label %273, label %286, !dbg !975, !llvm.loop !979

; <label>:286:                                    ; preds = %273, %263
  %287 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !982
  %288 = load %struct.lua_TValue*, %struct.lua_TValue** %287, align 8, !dbg !982, !tbaa !681
  %289 = bitcast %struct.lua_TValue* %288 to %struct.Table**, !dbg !982
  store %struct.Table* %264, %struct.Table** %289, align 8, !dbg !982, !tbaa !481
  %290 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %288, i64 0, i32 1, !dbg !982
  store i32 5, i32* %290, align 8, !dbg !982, !tbaa !557
  %291 = bitcast %struct.lua_TValue** %287 to i64*
  %292 = load i64, i64* %291, align 8, !dbg !983, !tbaa !681
  %293 = inttoptr i64 %292 to %struct.lua_TValue*
  br label %294

; <label>:294:                                    ; preds = %286, %258
  %295 = phi %struct.lua_TValue** [ %287, %286 ], [ %259, %258 ], !dbg !983
  %296 = phi %struct.lua_TValue* [ %293, %286 ], [ %260, %258 ]
  %297 = phi i64 [ %292, %286 ], [ %262, %258 ], !dbg !983
  %298 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 9, !dbg !983
  %299 = bitcast %struct.lua_TValue** %298 to i64*, !dbg !983
  %300 = load i64, i64* %299, align 8, !dbg !983, !tbaa !931
  %301 = sub i64 %300, %297, !dbg !983
  %302 = icmp slt i64 %301, 17, !dbg !983
  br i1 %302, label %303, label %305, !dbg !986

; <label>:303:                                    ; preds = %294
  tail call void @luaD_growstack(%struct.lua_State* nonnull %0, i32 1) #5, !dbg !983
  %304 = load %struct.lua_TValue*, %struct.lua_TValue** %295, align 8, !dbg !986, !tbaa !681
  br label %305, !dbg !983

; <label>:305:                                    ; preds = %294, %303
  %306 = phi %struct.lua_TValue* [ %296, %294 ], [ %304, %303 ], !dbg !986
  %307 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %306, i64 1, !dbg !986
  store %struct.lua_TValue* %307, %struct.lua_TValue** %295, align 8, !dbg !986, !tbaa !681
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !987
  br label %308, !dbg !988

; <label>:308:                                    ; preds = %250, %305
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !989
  ret i32 %226, !dbg !989
}

; Function Attrs: noredzone
declare dso_local i8* @strchr(i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden void @luaD_growstack(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define hidden i32 @luaG_checkopenop(i32) local_unnamed_addr #0 !dbg !990 {
  %2 = trunc i32 %0 to i6, !dbg !996
  switch i6 %2, label %6 [
    i6 28, label %3
    i6 29, label %3
    i6 30, label %3
    i6 -30, label %3
  ], !dbg !996

; <label>:3:                                      ; preds = %1, %1, %1, %1
  %4 = icmp ult i32 %0, 8388608, !dbg !997
  %5 = zext i1 %4 to i32, !dbg !1001
  br label %6, !dbg !1001

; <label>:6:                                      ; preds = %1, %3
  %7 = phi i32 [ %5, %3 ], [ 0, %1 ], !dbg !1002
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1003
  ret i32 %7, !dbg !1003
}

; Function Attrs: noredzone nounwind
define hidden i32 @luaG_checkcode(%struct.Proto* readonly) local_unnamed_addr #0 !dbg !1004 {
  %2 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 12, !dbg !1012
  %3 = load i32, i32* %2, align 8, !dbg !1012, !tbaa !1013
  %4 = tail call fastcc i32 @symbexec(%struct.Proto* %0, i32 %3, i32 255) #6, !dbg !1014
  %5 = icmp ne i32 %4, 0, !dbg !1015
  %6 = zext i1 %5 to i32, !dbg !1015
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1016
  ret i32 %6, !dbg !1016
}

; Function Attrs: noredzone nounwind
define internal fastcc i32 @symbexec(%struct.Proto* readonly, i32, i32) unnamed_addr #0 !dbg !1017 {
  %4 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 12, !dbg !1059
  %5 = load i32, i32* %4, align 8, !dbg !1059, !tbaa !1013
  %6 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 22, !dbg !1066
  %7 = load i8, i8* %6, align 1, !dbg !1066, !tbaa !1068
  %8 = icmp ult i8 %7, -5, !dbg !1066
  br i1 %8, label %9, label %38, !dbg !1069

; <label>:9:                                      ; preds = %3
  %10 = zext i8 %7 to i32, !dbg !1066
  %11 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 20, !dbg !1070
  %12 = load i8, i8* %11, align 1, !dbg !1070, !tbaa !1072
  %13 = zext i8 %12 to i32, !dbg !1070
  %14 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 21, !dbg !1070
  %15 = load i8, i8* %14, align 2, !dbg !1070, !tbaa !1073
  %16 = zext i8 %15 to i32, !dbg !1070
  %17 = and i32 %16, 1, !dbg !1070
  %18 = add nuw nsw i32 %17, %13, !dbg !1070
  %19 = icmp ugt i32 %18, %10, !dbg !1070
  %20 = and i32 %16, 5, !dbg !1074
  %21 = icmp eq i32 %20, 4, !dbg !1074
  %22 = or i1 %21, %19, !dbg !1076
  br i1 %22, label %38, label %23, !dbg !1076

; <label>:23:                                     ; preds = %9
  %24 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 10, !dbg !1077
  %25 = load i32, i32* %24, align 8, !dbg !1077, !tbaa !1079
  %26 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 19, !dbg !1077
  %27 = load i8, i8* %26, align 8, !dbg !1077, !tbaa !1080
  %28 = zext i8 %27 to i32, !dbg !1077
  %29 = icmp sgt i32 %25, %28, !dbg !1077
  br i1 %29, label %38, label %30, !dbg !1081

; <label>:30:                                     ; preds = %23
  %31 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 13, !dbg !1082
  %32 = load i32, i32* %31, align 4, !dbg !1082, !tbaa !973
  %33 = icmp eq i32 %32, %5, !dbg !1082
  %34 = icmp eq i32 %32, 0, !dbg !1082
  %35 = or i1 %34, %33, !dbg !1082
  %36 = icmp sgt i32 %5, 0, !dbg !1084
  %37 = and i1 %36, %35, !dbg !1082
  br i1 %37, label %39, label %38, !dbg !1082

; <label>:38:                                     ; preds = %3, %9, %23, %30
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1086
  br label %330, !dbg !1087

; <label>:39:                                     ; preds = %30
  %40 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 4, !dbg !1084
  %41 = load i32*, i32** %40, align 8, !dbg !1084, !tbaa !586
  %42 = add nsw i32 %5, -1, !dbg !1084
  %43 = sext i32 %42 to i64, !dbg !1084
  %44 = getelementptr inbounds i32, i32* %41, i64 %43, !dbg !1084
  %45 = load i32, i32* %44, align 4, !dbg !1084, !tbaa !852
  %46 = and i32 %45, 63, !dbg !1084
  %47 = icmp eq i32 %46, 30, !dbg !1084
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1086
  br i1 %47, label %48, label %330, !dbg !1087

; <label>:48:                                     ; preds = %39
  %49 = icmp sgt i32 %1, 0, !dbg !1090
  br i1 %49, label %50, label %330, !dbg !1091

; <label>:50:                                     ; preds = %48
  %51 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 11
  %52 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 3
  %53 = icmp eq i32 %2, 255
  %54 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 14
  %55 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 5
  %56 = and i8 %15, 6
  %57 = icmp eq i8 %56, 2
  br label %58, !dbg !1091

; <label>:58:                                     ; preds = %50, %321
  %59 = phi i32 [ 0, %50 ], [ %324, %321 ]
  %60 = phi i32 [ %42, %50 ], [ %323, %321 ]
  %61 = sext i32 %59 to i64, !dbg !1092
  %62 = getelementptr inbounds i32, i32* %41, i64 %61, !dbg !1092
  %63 = load i32, i32* %62, align 4, !dbg !1092, !tbaa !852
  %64 = and i32 %63, 63, !dbg !1094
  %65 = lshr i32 %63, 6, !dbg !1096
  %66 = and i32 %65, 255, !dbg !1096
  %67 = icmp ult i32 %64, 38, !dbg !1100
  %68 = icmp ult i32 %66, %10, !dbg !1102
  %69 = and i1 %67, %68, !dbg !1104
  br i1 %69, label %70, label %330, !dbg !1104

; <label>:70:                                     ; preds = %58
  %71 = zext i32 %64 to i64, !dbg !1105
  %72 = getelementptr inbounds [38 x i8], [38 x i8]* @luaP_opmodes, i64 0, i64 %71, !dbg !1105
  %73 = load i8, i8* %72, align 1, !dbg !1105, !tbaa !481
  %74 = zext i8 %73 to i32, !dbg !1105
  %75 = trunc i8 %73 to i2, !dbg !1106
  switch i2 %75, label %156 [
    i2 0, label %76
    i2 1, label %113
    i2 -2, label %120
  ], !dbg !1106

; <label>:76:                                     ; preds = %70
  %77 = lshr i32 %63, 23, !dbg !1107
  %78 = lshr i32 %63, 14, !dbg !1109
  %79 = and i32 %78, 511, !dbg !1109
  %80 = lshr i8 %73, 4, !dbg !1122
  %81 = trunc i8 %80 to i2, !dbg !1122
  switch i2 %81, label %95 [
    i2 0, label %82
    i2 -1, label %86
    i2 -2, label %84
  ], !dbg !1122

; <label>:82:                                     ; preds = %76
  %83 = icmp eq i32 %77, 0, !dbg !1123
  br i1 %83, label %95, label %94, !dbg !1126

; <label>:84:                                     ; preds = %76
  %85 = icmp ult i32 %77, %10, !dbg !1127
  br i1 %85, label %95, label %94, !dbg !1129

; <label>:86:                                     ; preds = %76
  %87 = icmp sgt i32 %63, -1, !dbg !1130
  br i1 %87, label %92, label %88, !dbg !1132

; <label>:88:                                     ; preds = %86
  %89 = and i32 %77, 255, !dbg !1130
  %90 = load i32, i32* %51, align 4, !dbg !1130, !tbaa !1133
  %91 = icmp slt i32 %89, %90, !dbg !1130
  br i1 %91, label %95, label %94, !dbg !1130

; <label>:92:                                     ; preds = %86
  %93 = icmp ult i32 %77, %10, !dbg !1130
  br i1 %93, label %95, label %94, !dbg !1132

; <label>:94:                                     ; preds = %82, %84, %92, %88
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1134
  br label %330, !dbg !1135

; <label>:95:                                     ; preds = %92, %88, %84, %82, %76
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1134
  %96 = lshr i8 %73, 2, !dbg !1136
  %97 = trunc i8 %96 to i2, !dbg !1141
  switch i2 %97, label %112 [
    i2 0, label %98
    i2 -1, label %102
    i2 -2, label %100
  ], !dbg !1141

; <label>:98:                                     ; preds = %95
  %99 = icmp eq i32 %79, 0, !dbg !1142
  br i1 %99, label %112, label %111, !dbg !1143

; <label>:100:                                    ; preds = %95
  %101 = icmp ult i32 %79, %10, !dbg !1144
  br i1 %101, label %112, label %111, !dbg !1145

; <label>:102:                                    ; preds = %95
  %103 = and i32 %63, 4194304, !dbg !1146
  %104 = icmp eq i32 %103, 0, !dbg !1146
  br i1 %104, label %109, label %105, !dbg !1147

; <label>:105:                                    ; preds = %102
  %106 = and i32 %78, 255, !dbg !1146
  %107 = load i32, i32* %51, align 4, !dbg !1146, !tbaa !1133
  %108 = icmp slt i32 %106, %107, !dbg !1146
  br i1 %108, label %112, label %111, !dbg !1146

; <label>:109:                                    ; preds = %102
  %110 = icmp ult i32 %79, %10, !dbg !1146
  br i1 %110, label %112, label %111, !dbg !1147

; <label>:111:                                    ; preds = %98, %100, %109, %105
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1148
  br label %330, !dbg !1149

; <label>:112:                                    ; preds = %95, %98, %100, %105, %109
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1148
  br label %156, !dbg !1149

; <label>:113:                                    ; preds = %70
  %114 = lshr i32 %63, 14, !dbg !1150
  %115 = and i32 %74, 48, !dbg !1152
  %116 = icmp eq i32 %115, 48, !dbg !1154
  br i1 %116, label %117, label %156, !dbg !1155

; <label>:117:                                    ; preds = %113
  %118 = load i32, i32* %51, align 4, !dbg !1156, !tbaa !1133
  %119 = icmp slt i32 %114, %118, !dbg !1156
  br i1 %119, label %156, label %330, !dbg !1158

; <label>:120:                                    ; preds = %70
  %121 = lshr i32 %63, 14, !dbg !1159
  %122 = add nsw i32 %121, -131071, !dbg !1159
  %123 = and i32 %74, 48, !dbg !1160
  %124 = icmp eq i32 %123, 32, !dbg !1161
  br i1 %124, label %125, label %156, !dbg !1162

; <label>:125:                                    ; preds = %120
  %126 = add nsw i32 %59, 1, !dbg !1163
  %127 = add nsw i32 %126, %122, !dbg !1164
  %128 = icmp sgt i32 %127, -1, !dbg !1166
  %129 = icmp slt i32 %127, %5, !dbg !1166
  %130 = and i1 %128, %129, !dbg !1166
  br i1 %130, label %131, label %330, !dbg !1166

; <label>:131:                                    ; preds = %125
  %132 = icmp sgt i32 %127, 0, !dbg !1168
  br i1 %132, label %133, label %156, !dbg !1169

; <label>:133:                                    ; preds = %131
  %134 = add i32 %122, %59, !dbg !1170
  %135 = sext i32 %127 to i64, !dbg !1172
  br label %136, !dbg !1172

; <label>:136:                                    ; preds = %133, %146
  %137 = phi i64 [ 0, %133 ], [ %147, %146 ]
  %138 = phi i32 [ 0, %133 ], [ %148, %146 ]
  %139 = trunc i64 %137 to i32, !dbg !1173
  %140 = sub i32 %134, %139, !dbg !1173
  %141 = sext i32 %140 to i64, !dbg !1174
  %142 = getelementptr inbounds i32, i32* %41, i64 %141, !dbg !1174
  %143 = load i32, i32* %142, align 4, !dbg !1174, !tbaa !852
  %144 = and i32 %143, 8372287, !dbg !1176
  %145 = icmp eq i32 %144, 34, !dbg !1176
  br i1 %145, label %146, label %150, !dbg !1176

; <label>:146:                                    ; preds = %136
  %147 = add nuw nsw i64 %137, 1, !dbg !1178
  %148 = add nuw nsw i32 %138, 1, !dbg !1178
  %149 = icmp slt i64 %147, %135, !dbg !1179
  br i1 %149, label %136, label %152, !dbg !1172, !llvm.loop !1180

; <label>:150:                                    ; preds = %136
  %151 = trunc i64 %137 to i32, !dbg !1173
  br label %152, !dbg !1182

; <label>:152:                                    ; preds = %146, %150
  %153 = phi i32 [ %151, %150 ], [ %148, %146 ], !dbg !1184
  %154 = and i32 %153, 1, !dbg !1182
  %155 = icmp eq i32 %154, 0, !dbg !1182
  br i1 %155, label %156, label %330

; <label>:156:                                    ; preds = %152, %131, %112, %120, %113, %117, %70
  %157 = phi i32 [ 0, %70 ], [ 0, %120 ], [ 0, %117 ], [ 0, %113 ], [ %79, %112 ], [ 0, %131 ], [ 0, %152 ], !dbg !1185
  %158 = phi i32 [ 0, %70 ], [ %122, %120 ], [ %114, %117 ], [ %114, %113 ], [ %77, %112 ], [ %122, %131 ], [ %122, %152 ], !dbg !1185
  %159 = and i8 %73, 64, !dbg !1186
  %160 = icmp ne i8 %159, 0, !dbg !1186
  %161 = icmp eq i32 %66, %2, !dbg !1188
  %162 = and i1 %161, %160, !dbg !1191
  %163 = select i1 %162, i32 %59, i32 %60, !dbg !1191
  %164 = icmp slt i8 %73, 0, !dbg !1192
  br i1 %164, label %165, label %175, !dbg !1194

; <label>:165:                                    ; preds = %156
  %166 = add nsw i32 %59, 2, !dbg !1195
  %167 = icmp slt i32 %166, %5, !dbg !1195
  br i1 %167, label %168, label %330, !dbg !1198

; <label>:168:                                    ; preds = %165
  %169 = add nsw i32 %59, 1, !dbg !1199
  %170 = sext i32 %169 to i64, !dbg !1199
  %171 = getelementptr inbounds i32, i32* %41, i64 %170, !dbg !1199
  %172 = load i32, i32* %171, align 4, !dbg !1199, !tbaa !852
  %173 = and i32 %172, 63, !dbg !1199
  %174 = icmp eq i32 %173, 22, !dbg !1199
  br i1 %174, label %175, label %330, !dbg !1201

; <label>:175:                                    ; preds = %168, %156
  %176 = trunc i32 %63 to i6, !dbg !1202
  switch i6 %176, label %321 [
    i6 2, label %177
    i6 3, label %189
    i6 4, label %194
    i6 8, label %194
    i6 5, label %196
    i6 7, label %196
    i6 11, label %202
    i6 21, label %208
    i6 -31, label %210
    i6 31, label %219
    i6 -32, label %219
    i6 22, label %222
    i6 28, label %231
    i6 29, label %231
    i6 30, label %256
    i6 -30, label %262
    i6 -28, label %272
    i6 -27, label %302
  ], !dbg !1202

; <label>:177:                                    ; preds = %175
  %178 = icmp eq i32 %157, 1, !dbg !1203
  br i1 %178, label %179, label %321, !dbg !1206

; <label>:179:                                    ; preds = %177
  %180 = add nsw i32 %59, 2, !dbg !1207
  %181 = icmp slt i32 %180, %5, !dbg !1207
  br i1 %181, label %182, label %330, !dbg !1210

; <label>:182:                                    ; preds = %179
  %183 = add nsw i32 %59, 1, !dbg !1211
  %184 = sext i32 %183 to i64, !dbg !1211
  %185 = getelementptr inbounds i32, i32* %41, i64 %184, !dbg !1211
  %186 = load i32, i32* %185, align 4, !dbg !1211, !tbaa !852
  %187 = and i32 %186, 8372287, !dbg !1211
  %188 = icmp eq i32 %187, 34, !dbg !1211
  br i1 %188, label %330, label %321, !dbg !1211

; <label>:189:                                    ; preds = %175
  %190 = icmp sgt i32 %66, %2, !dbg !1213
  %191 = icmp slt i32 %158, %2, !dbg !1216
  %192 = or i1 %190, %191, !dbg !1217
  %193 = select i1 %192, i32 %163, i32 %59, !dbg !1217
  br label %321, !dbg !1217

; <label>:194:                                    ; preds = %175, %175
  %195 = icmp slt i32 %158, %28, !dbg !1218
  br i1 %195, label %321, label %330, !dbg !1221

; <label>:196:                                    ; preds = %175, %175
  %197 = load %struct.lua_TValue*, %struct.lua_TValue** %52, align 8, !dbg !1222, !tbaa !1225
  %198 = sext i32 %158 to i64, !dbg !1222
  %199 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %197, i64 %198, i32 1, !dbg !1222
  %200 = load i32, i32* %199, align 8, !dbg !1222, !tbaa !557
  %201 = icmp eq i32 %200, 4, !dbg !1222
  br i1 %201, label %321, label %330, !dbg !1226

; <label>:202:                                    ; preds = %175
  %203 = add nuw nsw i32 %66, 1, !dbg !1227
  %204 = icmp ult i32 %203, %10, !dbg !1227
  br i1 %204, label %205, label %330, !dbg !1230

; <label>:205:                                    ; preds = %202
  %206 = icmp eq i32 %203, %2, !dbg !1231
  %207 = select i1 %206, i32 %59, i32 %163, !dbg !1233
  br label %321, !dbg !1233

; <label>:208:                                    ; preds = %175
  %209 = icmp slt i32 %158, %157, !dbg !1234
  br i1 %209, label %321, label %330, !dbg !1237

; <label>:210:                                    ; preds = %175
  %211 = icmp eq i32 %157, 0, !dbg !1238
  br i1 %211, label %330, label %212, !dbg !1241

; <label>:212:                                    ; preds = %210
  %213 = add nuw nsw i32 %66, 2, !dbg !1242
  %214 = add nuw nsw i32 %157, %213, !dbg !1242
  %215 = icmp ult i32 %214, %10, !dbg !1242
  br i1 %215, label %216, label %330, !dbg !1244

; <label>:216:                                    ; preds = %212
  %217 = icmp sgt i32 %213, %2, !dbg !1245
  %218 = select i1 %217, i32 %163, i32 %59, !dbg !1247
  br label %321, !dbg !1247

; <label>:219:                                    ; preds = %175, %175
  %220 = add nuw nsw i32 %66, 3, !dbg !1248
  %221 = icmp ult i32 %220, %10, !dbg !1248
  br i1 %221, label %222, label %330, !dbg !1250

; <label>:222:                                    ; preds = %219, %175
  %223 = add nsw i32 %59, 1, !dbg !1251
  %224 = add nsw i32 %223, %158, !dbg !1252
  %225 = icmp sge i32 %59, %224, !dbg !1254
  %226 = or i1 %53, %225, !dbg !1256
  %227 = icmp sgt i32 %224, %1, !dbg !1257
  %228 = or i1 %227, %226, !dbg !1256
  %229 = select i1 %228, i32 0, i32 %158, !dbg !1256
  %230 = add nsw i32 %229, %59, !dbg !1256
  br label %321, !dbg !1256

; <label>:231:                                    ; preds = %175, %175
  %232 = icmp ne i32 %158, 0, !dbg !1258
  %233 = add nsw i32 %158, %66, !dbg !1261
  %234 = icmp sgt i32 %233, %10, !dbg !1261
  %235 = and i1 %232, %234, !dbg !1264
  br i1 %235, label %330, label %236, !dbg !1264

; <label>:236:                                    ; preds = %231
  %237 = add nsw i32 %157, -1, !dbg !1265
  %238 = icmp eq i32 %157, 0, !dbg !1266
  br i1 %238, label %239, label %248, !dbg !1268

; <label>:239:                                    ; preds = %236
  %240 = add nsw i32 %59, 1, !dbg !1269
  %241 = sext i32 %240 to i64, !dbg !1269
  %242 = getelementptr inbounds i32, i32* %41, i64 %241, !dbg !1269
  %243 = load i32, i32* %242, align 4, !dbg !1269, !tbaa !852
  %244 = trunc i32 %243 to i6, !dbg !1274
  switch i6 %244, label %245 [
    i6 28, label %246
    i6 29, label %246
    i6 30, label %246
    i6 -30, label %246
  ], !dbg !1274

; <label>:245:                                    ; preds = %239
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1275
  br label %330, !dbg !1276

; <label>:246:                                    ; preds = %239, %239, %239, %239
  %247 = icmp ugt i32 %243, 8388607, !dbg !1277
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1275
  br i1 %247, label %330, label %253, !dbg !1276

; <label>:248:                                    ; preds = %236
  %249 = icmp ne i32 %237, 0, !dbg !1278
  %250 = add nsw i32 %237, %66, !dbg !1280
  %251 = icmp sgt i32 %250, %10, !dbg !1280
  %252 = and i1 %249, %251, !dbg !1282
  br i1 %252, label %330, label %253, !dbg !1282

; <label>:253:                                    ; preds = %248, %246
  %254 = icmp sgt i32 %66, %2, !dbg !1283
  %255 = select i1 %254, i32 %163, i32 %59, !dbg !1285
  br label %321, !dbg !1285

; <label>:256:                                    ; preds = %175
  %257 = icmp sgt i32 %158, 1, !dbg !1286
  br i1 %257, label %258, label %321, !dbg !1289

; <label>:258:                                    ; preds = %256
  %259 = add i32 %158, %66, !dbg !1290
  %260 = add i32 %259, -1, !dbg !1291
  %261 = icmp sgt i32 %260, %10, !dbg !1291
  br i1 %261, label %330, label %321, !dbg !1293

; <label>:262:                                    ; preds = %175
  %263 = icmp slt i32 %158, 1, !dbg !1294
  %264 = add nsw i32 %158, %66, !dbg !1297
  %265 = icmp slt i32 %264, %10, !dbg !1297
  %266 = or i1 %263, %265, !dbg !1299
  br i1 %266, label %267, label %330, !dbg !1299

; <label>:267:                                    ; preds = %262
  %268 = icmp eq i32 %157, 0, !dbg !1300
  br i1 %268, label %269, label %321, !dbg !1302

; <label>:269:                                    ; preds = %267
  %270 = add nsw i32 %59, 1, !dbg !1303
  %271 = icmp slt i32 %270, %42, !dbg !1305
  br i1 %271, label %321, label %330, !dbg !1307

; <label>:272:                                    ; preds = %175
  %273 = load i32, i32* %54, align 8, !dbg !1308, !tbaa !1310
  %274 = icmp slt i32 %158, %273, !dbg !1308
  br i1 %274, label %275, label %330, !dbg !1311

; <label>:275:                                    ; preds = %272
  %276 = load %struct.Proto**, %struct.Proto*** %55, align 8, !dbg !1312, !tbaa !1313
  %277 = sext i32 %158 to i64, !dbg !1314
  %278 = getelementptr inbounds %struct.Proto*, %struct.Proto** %276, i64 %277, !dbg !1314
  %279 = load %struct.Proto*, %struct.Proto** %278, align 8, !dbg !1314, !tbaa !601
  %280 = getelementptr inbounds %struct.Proto, %struct.Proto* %279, i64 0, i32 19, !dbg !1315
  %281 = load i8, i8* %280, align 8, !dbg !1315, !tbaa !1080
  %282 = zext i8 %281 to i32, !dbg !1314
  %283 = add nsw i32 %59, %282, !dbg !1317
  %284 = icmp slt i32 %283, %5, !dbg !1317
  br i1 %284, label %285, label %330, !dbg !1319

; <label>:285:                                    ; preds = %275
  %286 = icmp eq i8 %281, 0, !dbg !1321
  br i1 %286, label %300, label %287, !dbg !1322

; <label>:287:                                    ; preds = %285
  %288 = zext i8 %281 to i64, !dbg !1323
  br label %292, !dbg !1323

; <label>:289:                                    ; preds = %292
  %290 = add nuw nsw i64 %293, 1, !dbg !1324
  %291 = icmp ult i64 %293, %288, !dbg !1321
  br i1 %291, label %292, label %300, !dbg !1322, !llvm.loop !1325

; <label>:292:                                    ; preds = %287, %289
  %293 = phi i64 [ 1, %287 ], [ %290, %289 ]
  %294 = add nsw i64 %293, %61, !dbg !1323
  %295 = getelementptr inbounds i32, i32* %41, i64 %294, !dbg !1323
  %296 = load i32, i32* %295, align 4, !dbg !1323, !tbaa !852
  %297 = and i32 %296, 59, !dbg !1323
  %298 = or i32 %297, 4, !dbg !1328
  %299 = icmp eq i32 %298, 4, !dbg !1328
  br i1 %299, label %289, label %330

; <label>:300:                                    ; preds = %289, %285
  %301 = select i1 %53, i32 %59, i32 %283, !dbg !1330
  br label %321

; <label>:302:                                    ; preds = %175
  br i1 %57, label %303, label %330, !dbg !1331

; <label>:303:                                    ; preds = %302
  %304 = add nsw i32 %158, -1, !dbg !1334
  %305 = icmp eq i32 %158, 0, !dbg !1335
  br i1 %305, label %306, label %318, !dbg !1337

; <label>:306:                                    ; preds = %303
  %307 = add nsw i32 %59, 1, !dbg !1338
  %308 = sext i32 %307 to i64, !dbg !1338
  %309 = getelementptr inbounds i32, i32* %41, i64 %308, !dbg !1338
  %310 = load i32, i32* %309, align 4, !dbg !1338, !tbaa !852
  %311 = trunc i32 %310 to i6, !dbg !1342
  switch i6 %311, label %312 [
    i6 28, label %313
    i6 29, label %313
    i6 30, label %313
    i6 -30, label %313
  ], !dbg !1342

; <label>:312:                                    ; preds = %306
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1343
  br label %330, !dbg !1344

; <label>:313:                                    ; preds = %306, %306, %306, %306
  %314 = icmp ugt i32 %310, 8388607, !dbg !1345
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1343
  %315 = add nsw i32 %304, %66, !dbg !1346
  %316 = icmp sgt i32 %315, %10, !dbg !1346
  %317 = or i1 %316, %314, !dbg !1344
  br i1 %317, label %330, label %321, !dbg !1344

; <label>:318:                                    ; preds = %303
  %319 = add nsw i32 %304, %66, !dbg !1346
  %320 = icmp sgt i32 %319, %10, !dbg !1346
  br i1 %320, label %330, label %321, !dbg !1348

; <label>:321:                                    ; preds = %313, %300, %189, %253, %216, %205, %222, %182, %258, %318, %175, %267, %269, %256, %208, %196, %194, %177
  %322 = phi i32 [ %59, %175 ], [ %59, %318 ], [ %301, %300 ], [ %270, %269 ], [ %59, %267 ], [ %59, %258 ], [ %59, %256 ], [ %59, %208 ], [ %59, %196 ], [ %59, %194 ], [ %59, %182 ], [ %59, %177 ], [ %59, %205 ], [ %59, %216 ], [ %230, %222 ], [ %59, %253 ], [ %59, %189 ], [ %59, %313 ]
  %323 = phi i32 [ %163, %175 ], [ %163, %318 ], [ %163, %300 ], [ %163, %269 ], [ %163, %267 ], [ %163, %258 ], [ %163, %256 ], [ %163, %208 ], [ %163, %196 ], [ %163, %194 ], [ %163, %182 ], [ %163, %177 ], [ %207, %205 ], [ %218, %216 ], [ %163, %222 ], [ %255, %253 ], [ %193, %189 ], [ %163, %313 ]
  %324 = add nsw i32 %322, 1, !dbg !1349
  %325 = icmp slt i32 %324, %1, !dbg !1090
  br i1 %325, label %58, label %326, !dbg !1091, !llvm.loop !1350

; <label>:326:                                    ; preds = %321
  %327 = sext i32 %323 to i64
  %328 = getelementptr inbounds i32, i32* %41, i64 %327
  %329 = load i32, i32* %328, align 4, !dbg !1352, !tbaa !852
  br label %330, !dbg !1352

; <label>:330:                                    ; preds = %152, %262, %248, %231, %272, %275, %125, %318, %313, %302, %269, %258, %246, %219, %212, %210, %208, %202, %196, %194, %182, %179, %168, %165, %117, %58, %292, %48, %326, %39, %312, %245, %111, %94, %38
  %331 = phi i32 [ 0, %39 ], [ 0, %38 ], [ 0, %94 ], [ 0, %111 ], [ 0, %245 ], [ 0, %312 ], [ %45, %48 ], [ %329, %326 ], [ 0, %292 ], [ 0, %58 ], [ 0, %117 ], [ 0, %165 ], [ 0, %168 ], [ 0, %179 ], [ 0, %182 ], [ 0, %194 ], [ 0, %196 ], [ 0, %202 ], [ 0, %208 ], [ 0, %210 ], [ 0, %212 ], [ 0, %219 ], [ 0, %246 ], [ 0, %258 ], [ 0, %269 ], [ 0, %302 ], [ 0, %313 ], [ 0, %318 ], [ 0, %125 ], [ 0, %275 ], [ 0, %272 ], [ 0, %231 ], [ 0, %248 ], [ 0, %262 ], [ 0, %152 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1353
  ret i32 %331, !dbg !1353
}

; Function Attrs: noredzone nounwind
define hidden void @luaG_typeerror(%struct.lua_State*, %struct.lua_TValue*, i8*) local_unnamed_addr #0 !dbg !1354 {
  %4 = alloca i8*, align 8
  %5 = bitcast i8** %4 to i8*, !dbg !1367
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #4, !dbg !1367
  store i8* null, i8** %4, align 8, !dbg !1368, !tbaa !601
  %6 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1, i64 0, i32 1, !dbg !1369
  %7 = load i32, i32* %6, align 8, !dbg !1369, !tbaa !557
  %8 = sext i32 %7 to i64, !dbg !1370
  %9 = getelementptr inbounds [0 x i8*], [0 x i8*]* @luaT_typenames, i64 0, i64 %8, !dbg !1370
  %10 = load i8*, i8** %9, align 8, !dbg !1370, !tbaa !601
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1372
  %12 = load %struct.CallInfo*, %struct.CallInfo** %11, align 8, !dbg !1372, !tbaa !467
  %13 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %12, i64 0, i32 0, !dbg !1383
  %14 = load %struct.lua_TValue*, %struct.lua_TValue** %13, align 8, !dbg !1383, !tbaa !595
  %15 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %12, i64 0, i32 2, !dbg !1386
  %16 = load %struct.lua_TValue*, %struct.lua_TValue** %15, align 8, !dbg !1386, !tbaa !1388
  %17 = icmp ult %struct.lua_TValue* %14, %16, !dbg !1389
  br i1 %17, label %20, label %24, !dbg !1390

; <label>:18:                                     ; preds = %20
  %19 = icmp ult %struct.lua_TValue* %23, %16, !dbg !1389
  br i1 %19, label %20, label %24, !dbg !1390, !llvm.loop !1391

; <label>:20:                                     ; preds = %3, %18
  %21 = phi %struct.lua_TValue* [ %23, %18 ], [ %14, %3 ]
  %22 = icmp eq %struct.lua_TValue* %21, %1, !dbg !1394
  %23 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %21, i64 1, !dbg !1396
  br i1 %22, label %25, label %18, !dbg !1397

; <label>:24:                                     ; preds = %18, %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1398
  br label %37, !dbg !1400

; <label>:25:                                     ; preds = %20
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1398
  %26 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !1401
  %27 = bitcast %struct.lua_TValue** %26 to i64*, !dbg !1401
  %28 = load i64, i64* %27, align 8, !dbg !1401, !tbaa !1402
  %29 = ptrtoint %struct.lua_TValue* %1 to i64, !dbg !1401
  %30 = sub i64 %29, %28, !dbg !1401
  %31 = lshr exact i64 %30, 4, !dbg !1401
  %32 = trunc i64 %31 to i32, !dbg !1401
  %33 = call fastcc i8* @getobjname(%struct.lua_State* %0, %struct.CallInfo* %12, i32 %32, i8** nonnull %4) #6, !dbg !1403
  %34 = icmp eq i8* %33, null, !dbg !1404
  br i1 %34, label %37, label %35, !dbg !1400

; <label>:35:                                     ; preds = %25
  %36 = load i8*, i8** %4, align 8, !dbg !1406, !tbaa !601
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %2, i8* nonnull %33, i8* %36, i8* %10) #6, !dbg !1407
  br label %38, !dbg !1407

; <label>:37:                                     ; preds = %24, %25
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %2, i8* %10) #6, !dbg !1408
  br label %38

; <label>:38:                                     ; preds = %37, %35
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #4, !dbg !1409
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1409
  ret void, !dbg !1409
}

; Function Attrs: noredzone nounwind
define internal fastcc i8* @getobjname(%struct.lua_State* nocapture readonly, %struct.CallInfo*, i32, i8** nocapture) unnamed_addr #0 !dbg !1410 {
  %5 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 1, !dbg !1439
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8, !dbg !1439, !tbaa !479
  %7 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 0, i32 1, !dbg !1439
  %8 = load i32, i32* %7, align 8, !dbg !1439, !tbaa !557
  %9 = icmp eq i32 %8, 6, !dbg !1439
  br i1 %9, label %10, label %124, !dbg !1439

; <label>:10:                                     ; preds = %4
  %11 = bitcast %struct.lua_TValue* %6 to %union.Closure**, !dbg !1439
  %12 = load %union.Closure*, %union.Closure** %11, align 8, !dbg !1439, !tbaa !481
  %13 = getelementptr inbounds %union.Closure, %union.Closure* %12, i64 0, i32 0, i32 3, !dbg !1439
  %14 = load i8, i8* %13, align 2, !dbg !1439, !tbaa !481
  %15 = icmp eq i8 %14, 0, !dbg !1439
  br i1 %15, label %16, label %124, !dbg !1440

; <label>:16:                                     ; preds = %10
  %17 = getelementptr inbounds %union.Closure, %union.Closure* %12, i64 0, i32 0, i32 7, !dbg !1441
  %18 = bitcast i32 (%struct.lua_State*)** %17 to %struct.Proto**, !dbg !1441
  %19 = load %struct.Proto*, %struct.Proto** %18, align 8, !dbg !1441, !tbaa !481
  %20 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1446
  %21 = load %struct.CallInfo*, %struct.CallInfo** %20, align 8, !dbg !1446, !tbaa !467
  %22 = icmp eq %struct.CallInfo* %21, %1, !dbg !1447
  br i1 %22, label %28, label %23, !dbg !1448

; <label>:23:                                     ; preds = %16
  %24 = bitcast %union.Closure* %12 to %struct.LClosure*, !dbg !1449
  %25 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 3
  %26 = bitcast i32** %25 to i64*
  %27 = load i64, i64* %26, align 8, !dbg !1450, !tbaa !578
  br label %36, !dbg !1448

; <label>:28:                                     ; preds = %16
  %29 = bitcast %struct.lua_TValue* %6 to %struct.LClosure**, !dbg !1451
  %30 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8, !dbg !1452
  %31 = bitcast i32** %30 to i64*, !dbg !1452
  %32 = load i64, i64* %31, align 8, !dbg !1452, !tbaa !582
  %33 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 3, !dbg !1453
  %34 = bitcast i32** %33 to i64*, !dbg !1454
  store i64 %32, i64* %34, align 8, !dbg !1454, !tbaa !578
  %35 = load %struct.LClosure*, %struct.LClosure** %29, align 8, !dbg !1450, !tbaa !481
  br label %36, !dbg !1455

; <label>:36:                                     ; preds = %23, %28
  %37 = phi %struct.LClosure* [ %24, %23 ], [ %35, %28 ], !dbg !1450
  %38 = phi i64 [ %27, %23 ], [ %32, %28 ], !dbg !1450
  %39 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %37, i64 0, i32 7, !dbg !1450
  %40 = load %struct.Proto*, %struct.Proto** %39, align 8, !dbg !1450, !tbaa !481
  %41 = getelementptr inbounds %struct.Proto, %struct.Proto* %40, i64 0, i32 4, !dbg !1450
  %42 = bitcast i32** %41 to i64*, !dbg !1450
  %43 = load i64, i64* %42, align 8, !dbg !1450, !tbaa !586
  %44 = sub i64 %38, %43, !dbg !1450
  %45 = lshr exact i64 %44, 2, !dbg !1450
  %46 = trunc i64 %45 to i32, !dbg !1450
  %47 = add nsw i32 %46, -1, !dbg !1450
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1456
  %48 = add nsw i32 %2, 1, !dbg !1458
  %49 = tail call i8* @luaF_getlocalname(%struct.Proto* %19, i32 %48, i32 %47) #5, !dbg !1459
  store i8* %49, i8** %3, align 8, !dbg !1460, !tbaa !601
  %50 = icmp eq i8* %49, null, !dbg !1461
  br i1 %50, label %51, label %124, !dbg !1463

; <label>:51:                                     ; preds = %36
  %52 = tail call fastcc i32 @symbexec(%struct.Proto* %19, i32 %47, i32 %2) #6, !dbg !1464
  %53 = trunc i32 %52 to i6, !dbg !1466
  switch i6 %53, label %124 [
    i6 5, label %54
    i6 0, label %64
    i6 6, label %71
    i6 4, label %91
    i6 11, label %104
  ], !dbg !1466

; <label>:54:                                     ; preds = %51
  %55 = lshr i32 %52, 14, !dbg !1467
  %56 = getelementptr inbounds %struct.Proto, %struct.Proto* %19, i64 0, i32 3, !dbg !1469
  %57 = load %struct.lua_TValue*, %struct.lua_TValue** %56, align 8, !dbg !1469, !tbaa !1225
  %58 = zext i32 %55 to i64, !dbg !1469
  %59 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %57, i64 %58, i32 0, i32 0, !dbg !1469
  %60 = bitcast %union.GCObject** %59 to %union.TString**, !dbg !1469
  %61 = load %union.TString*, %union.TString** %60, align 8, !dbg !1469, !tbaa !481
  %62 = getelementptr inbounds %union.TString, %union.TString* %61, i64 1, !dbg !1469
  %63 = bitcast i8** %3 to %union.TString**, !dbg !1470
  store %union.TString* %62, %union.TString** %63, align 8, !dbg !1470, !tbaa !601
  br label %124

; <label>:64:                                     ; preds = %51
  %65 = lshr i32 %52, 6, !dbg !1471
  %66 = and i32 %65, 255, !dbg !1471
  %67 = lshr i32 %52, 23, !dbg !1473
  %68 = icmp ult i32 %67, %66, !dbg !1475
  br i1 %68, label %69, label %124, !dbg !1477

; <label>:69:                                     ; preds = %64
  %70 = tail call fastcc i8* @getobjname(%struct.lua_State* nonnull %0, %struct.CallInfo* nonnull %1, i32 %67, i8** nonnull %3) #6, !dbg !1478
  br label %124

; <label>:71:                                     ; preds = %51
  %72 = and i32 %52, 4194304, !dbg !1487
  %73 = icmp eq i32 %72, 0, !dbg !1487
  br i1 %73, label %89, label %74, !dbg !1489

; <label>:74:                                     ; preds = %71
  %75 = lshr i32 %52, 14, !dbg !1490
  %76 = getelementptr inbounds %struct.Proto, %struct.Proto* %19, i64 0, i32 3, !dbg !1493
  %77 = load %struct.lua_TValue*, %struct.lua_TValue** %76, align 8, !dbg !1493, !tbaa !1225
  %78 = and i32 %75, 255, !dbg !1493
  %79 = zext i32 %78 to i64, !dbg !1493
  %80 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %77, i64 %79, i32 1, !dbg !1493
  %81 = load i32, i32* %80, align 8, !dbg !1493, !tbaa !557
  %82 = icmp eq i32 %81, 4, !dbg !1493
  br i1 %82, label %83, label %89, !dbg !1494

; <label>:83:                                     ; preds = %74
  %84 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %77, i64 %79, i32 0, i32 0, !dbg !1495
  %85 = bitcast %union.GCObject** %84 to %union.TString**, !dbg !1495
  %86 = load %union.TString*, %union.TString** %85, align 8, !dbg !1495, !tbaa !481
  %87 = getelementptr inbounds %union.TString, %union.TString* %86, i64 1, !dbg !1495
  %88 = bitcast %union.TString* %87 to i8*, !dbg !1495
  br label %89, !dbg !1496

; <label>:89:                                     ; preds = %71, %74, %83
  %90 = phi i8* [ %88, %83 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), %71 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), %74 ], !dbg !1497
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1498
  store i8* %90, i8** %3, align 8, !dbg !1499, !tbaa !601
  br label %124

; <label>:91:                                     ; preds = %51
  %92 = getelementptr inbounds %struct.Proto, %struct.Proto* %19, i64 0, i32 8, !dbg !1500
  %93 = load %union.TString**, %union.TString*** %92, align 8, !dbg !1500, !tbaa !1501
  %94 = icmp eq %union.TString** %93, null, !dbg !1502
  br i1 %94, label %102, label %95, !dbg !1502

; <label>:95:                                     ; preds = %91
  %96 = lshr i32 %52, 23, !dbg !1503
  %97 = zext i32 %96 to i64, !dbg !1505
  %98 = getelementptr inbounds %union.TString*, %union.TString** %93, i64 %97, !dbg !1505
  %99 = load %union.TString*, %union.TString** %98, align 8, !dbg !1505, !tbaa !601
  %100 = getelementptr inbounds %union.TString, %union.TString* %99, i64 1, !dbg !1505
  %101 = bitcast %union.TString* %100 to i8*, !dbg !1505
  br label %102, !dbg !1502

; <label>:102:                                    ; preds = %91, %95
  %103 = phi i8* [ %101, %95 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), %91 ], !dbg !1502
  store i8* %103, i8** %3, align 8, !dbg !1506, !tbaa !601
  br label %124

; <label>:104:                                    ; preds = %51
  %105 = and i32 %52, 4194304, !dbg !1509
  %106 = icmp eq i32 %105, 0, !dbg !1509
  br i1 %106, label %122, label %107, !dbg !1510

; <label>:107:                                    ; preds = %104
  %108 = lshr i32 %52, 14, !dbg !1511
  %109 = getelementptr inbounds %struct.Proto, %struct.Proto* %19, i64 0, i32 3, !dbg !1514
  %110 = load %struct.lua_TValue*, %struct.lua_TValue** %109, align 8, !dbg !1514, !tbaa !1225
  %111 = and i32 %108, 255, !dbg !1514
  %112 = zext i32 %111 to i64, !dbg !1514
  %113 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %110, i64 %112, i32 1, !dbg !1514
  %114 = load i32, i32* %113, align 8, !dbg !1514, !tbaa !557
  %115 = icmp eq i32 %114, 4, !dbg !1514
  br i1 %115, label %116, label %122, !dbg !1515

; <label>:116:                                    ; preds = %107
  %117 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %110, i64 %112, i32 0, i32 0, !dbg !1516
  %118 = bitcast %union.GCObject** %117 to %union.TString**, !dbg !1516
  %119 = load %union.TString*, %union.TString** %118, align 8, !dbg !1516, !tbaa !481
  %120 = getelementptr inbounds %union.TString, %union.TString* %119, i64 1, !dbg !1516
  %121 = bitcast %union.TString* %120 to i8*, !dbg !1516
  br label %122, !dbg !1517

; <label>:122:                                    ; preds = %104, %107, %116
  %123 = phi i8* [ %121, %116 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), %104 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), %107 ], !dbg !1518
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1519
  store i8* %123, i8** %3, align 8, !dbg !1520, !tbaa !601
  br label %124

; <label>:124:                                    ; preds = %36, %54, %69, %89, %102, %122, %64, %4, %10, %51
  %125 = phi i8* [ null, %51 ], [ null, %10 ], [ null, %4 ], [ null, %64 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), %36 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), %54 ], [ %70, %69 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), %89 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), %102 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0), %122 ], !dbg !1521
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1522
  ret i8* %125, !dbg !1522
}

; Function Attrs: noredzone nounwind
define hidden void @luaG_runerror(%struct.lua_State*, i8*, ...) local_unnamed_addr #0 !dbg !1523 {
  %3 = alloca [60 x i8], align 16
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  %5 = bitcast [1 x %struct.__va_list_tag]* %4 to i8*, !dbg !1555
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #4, !dbg !1555
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, !dbg !1557
  call void @llvm.va_start(i8* nonnull %5), !dbg !1557
  %7 = call i8* @luaO_pushvfstring(%struct.lua_State* %0, i8* %1, %struct.__va_list_tag* nonnull %6) #5, !dbg !1558
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1561
  %9 = load %struct.CallInfo*, %struct.CallInfo** %8, align 8, !dbg !1561, !tbaa !467
  %10 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %9, i64 0, i32 1, !dbg !1563
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !1563, !tbaa !479
  %12 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %11, i64 0, i32 1, !dbg !1563
  %13 = load i32, i32* %12, align 8, !dbg !1563, !tbaa !557
  %14 = icmp eq i32 %13, 6, !dbg !1563
  br i1 %14, label %15, label %60, !dbg !1563

; <label>:15:                                     ; preds = %2
  %16 = bitcast %struct.lua_TValue* %11 to %struct.CClosure**, !dbg !1563
  %17 = load %struct.CClosure*, %struct.CClosure** %16, align 8, !dbg !1563, !tbaa !481
  %18 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %17, i64 0, i32 3, !dbg !1563
  %19 = load i8, i8* %18, align 2, !dbg !1563, !tbaa !481
  %20 = icmp eq i8 %19, 0, !dbg !1563
  br i1 %20, label %21, label %60, !dbg !1564

; <label>:21:                                     ; preds = %15
  %22 = getelementptr inbounds [60 x i8], [60 x i8]* %3, i64 0, i64 0, !dbg !1565
  call void @llvm.lifetime.start.p0i8(i64 60, i8* nonnull %22) #4, !dbg !1565
  %23 = bitcast %struct.lua_TValue* %11 to %struct.LClosure**, !dbg !1572
  %24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8, !dbg !1573
  %25 = bitcast i32** %24 to i64*, !dbg !1573
  %26 = load i64, i64* %25, align 8, !dbg !1573, !tbaa !582
  %27 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %9, i64 0, i32 3, !dbg !1574
  %28 = bitcast i32** %27 to i64*, !dbg !1575
  store i64 %26, i64* %28, align 8, !dbg !1575, !tbaa !578
  %29 = load %struct.LClosure*, %struct.LClosure** %23, align 8, !dbg !1576, !tbaa !481
  %30 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %29, i64 0, i32 7, !dbg !1576
  %31 = load %struct.Proto*, %struct.Proto** %30, align 8, !dbg !1576, !tbaa !481
  %32 = getelementptr inbounds %struct.Proto, %struct.Proto* %31, i64 0, i32 4, !dbg !1576
  %33 = bitcast i32** %32 to i64*, !dbg !1576
  %34 = load i64, i64* %33, align 8, !dbg !1576, !tbaa !586
  %35 = sub i64 %26, %34, !dbg !1576
  %36 = lshr exact i64 %35, 2, !dbg !1576
  %37 = trunc i64 %36 to i32, !dbg !1576
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1577
  %38 = icmp slt i32 %37, 1, !dbg !1579
  br i1 %38, label %49, label %39, !dbg !1580

; <label>:39:                                     ; preds = %21
  %40 = getelementptr inbounds %struct.Proto, %struct.Proto* %31, i64 0, i32 6, !dbg !1581
  %41 = load i32*, i32** %40, align 8, !dbg !1581, !tbaa !851
  %42 = icmp eq i32* %41, null, !dbg !1581
  br i1 %42, label %49, label %43, !dbg !1581

; <label>:43:                                     ; preds = %39
  %44 = shl i64 %35, 30, !dbg !1581
  %45 = add i64 %44, -4294967296, !dbg !1581
  %46 = ashr exact i64 %45, 32, !dbg !1581
  %47 = getelementptr inbounds i32, i32* %41, i64 %46, !dbg !1581
  %48 = load i32, i32* %47, align 4, !dbg !1581, !tbaa !852
  br label %49, !dbg !1581

; <label>:49:                                     ; preds = %43, %39, %21
  %50 = phi i32 [ 0, %39 ], [ %48, %43 ], [ -1, %21 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1582
  %51 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %29, i64 0, i32 3
  %52 = load i8, i8* %51, align 2, !dbg !1586, !tbaa !481
  %53 = icmp eq i8 %52, 0, !dbg !1586
  %54 = select i1 %53, %struct.Proto* %31, %struct.Proto* null, !dbg !1586
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1587
  %55 = getelementptr inbounds %struct.Proto, %struct.Proto* %54, i64 0, i32 9, !dbg !1588
  %56 = load %union.TString*, %union.TString** %55, align 8, !dbg !1588, !tbaa !806
  %57 = getelementptr inbounds %union.TString, %union.TString* %56, i64 1, !dbg !1588
  %58 = bitcast %union.TString* %57 to i8*, !dbg !1588
  call void @luaO_chunkid(i8* nonnull %22, i8* nonnull %58, i64 60) #5, !dbg !1589
  %59 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0), i8* nonnull %22, i32 %50, i8* %7) #5, !dbg !1590
  call void @llvm.lifetime.end.p0i8(i64 60, i8* nonnull %22) #4, !dbg !1591
  br label %60, !dbg !1592

; <label>:60:                                     ; preds = %2, %15, %49
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1593
  call void @llvm.va_end(i8* nonnull %5), !dbg !1594
  call void @luaG_errormsg(%struct.lua_State* nonnull %0) #6, !dbg !1595
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #4, !dbg !1596
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1596
  ret void, !dbg !1596
}

; Function Attrs: noredzone nounwind
define hidden void @luaG_concaterror(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*) local_unnamed_addr #0 !dbg !1597 {
  %4 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1, i64 0, i32 1, !dbg !1607
  %5 = load i32, i32* %4, align 8, !dbg !1607, !tbaa !557
  %6 = add i32 %5, -3, !dbg !1609
  %7 = icmp ult i32 %6, 2, !dbg !1609
  %8 = select i1 %7, %struct.lua_TValue* %2, %struct.lua_TValue* %1, !dbg !1609
  tail call void @luaG_typeerror(%struct.lua_State* %0, %struct.lua_TValue* %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !1610
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1611
  ret void, !dbg !1611
}

; Function Attrs: noredzone nounwind
define hidden void @luaG_aritherror(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*) local_unnamed_addr #0 !dbg !1612 {
  %4 = alloca %struct.lua_TValue, align 8
  %5 = bitcast %struct.lua_TValue* %4 to i8*, !dbg !1623
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #4, !dbg !1623
  %6 = call %struct.lua_TValue* @luaV_tonumber(%struct.lua_TValue* %1, %struct.lua_TValue* nonnull %4) #5, !dbg !1625
  %7 = icmp eq %struct.lua_TValue* %6, null, !dbg !1627
  %8 = select i1 %7, %struct.lua_TValue* %1, %struct.lua_TValue* %2, !dbg !1628
  call void @luaG_typeerror(%struct.lua_State* %0, %struct.lua_TValue* %8, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !1629
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #4, !dbg !1630
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1630
  ret void, !dbg !1630
}

; Function Attrs: noredzone
declare hidden %struct.lua_TValue* @luaV_tonumber(%struct.lua_TValue*, %struct.lua_TValue*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define hidden i32 @luaG_ordererror(%struct.lua_State*, %struct.lua_TValue* nocapture readonly, %struct.lua_TValue* nocapture readonly) local_unnamed_addr #0 !dbg !1631 {
  %4 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1, i64 0, i32 1, !dbg !1643
  %5 = load i32, i32* %4, align 8, !dbg !1643, !tbaa !557
  %6 = sext i32 %5 to i64, !dbg !1644
  %7 = getelementptr inbounds [0 x i8*], [0 x i8*]* @luaT_typenames, i64 0, i64 %6, !dbg !1644
  %8 = load i8*, i8** %7, align 8, !dbg !1644, !tbaa !601
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i64 0, i32 1, !dbg !1646
  %10 = load i32, i32* %9, align 8, !dbg !1646, !tbaa !557
  %11 = sext i32 %10 to i64, !dbg !1647
  %12 = getelementptr inbounds [0 x i8*], [0 x i8*]* @luaT_typenames, i64 0, i64 %11, !dbg !1647
  %13 = load i8*, i8** %12, align 8, !dbg !1647, !tbaa !601
  %14 = getelementptr inbounds i8, i8* %8, i64 2, !dbg !1649
  %15 = load i8, i8* %14, align 1, !dbg !1649, !tbaa !481
  %16 = getelementptr inbounds i8, i8* %13, i64 2, !dbg !1651
  %17 = load i8, i8* %16, align 1, !dbg !1651, !tbaa !481
  %18 = icmp eq i8 %15, %17, !dbg !1652
  br i1 %18, label %19, label %20, !dbg !1653

; <label>:19:                                     ; preds = %3
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* %8) #6, !dbg !1654
  br label %21, !dbg !1654

; <label>:20:                                     ; preds = %3
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8* %8, i8* %13) #6, !dbg !1655
  br label %21

; <label>:21:                                     ; preds = %20, %19
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1656
  ret i32 0, !dbg !1656
}

; Function Attrs: noredzone nounwind
define hidden void @luaG_errormsg(%struct.lua_State*) local_unnamed_addr #0 !dbg !1657 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 27, !dbg !1672
  %3 = load i64, i64* %2, align 8, !dbg !1672, !tbaa !1673
  %4 = icmp eq i64 %3, 0, !dbg !1674
  br i1 %4, label %46, label %5, !dbg !1675

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 10, !dbg !1676
  %7 = bitcast %struct.lua_TValue** %6 to i8**, !dbg !1676
  %8 = load i8*, i8** %7, align 8, !dbg !1676, !tbaa !1677
  %9 = getelementptr inbounds i8, i8* %8, i64 %3, !dbg !1676
  %10 = getelementptr inbounds i8, i8* %9, i64 8, !dbg !1679
  %11 = bitcast i8* %10 to i32*, !dbg !1679
  %12 = load i32, i32* %11, align 8, !dbg !1679, !tbaa !557
  %13 = icmp eq i32 %12, 6, !dbg !1679
  br i1 %13, label %15, label %14, !dbg !1681

; <label>:14:                                     ; preds = %5
  tail call void @luaD_throw(%struct.lua_State* nonnull %0, i32 5) #5, !dbg !1682
  br label %15, !dbg !1682

; <label>:15:                                     ; preds = %14, %5
  %16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1683
  %17 = load %struct.lua_TValue*, %struct.lua_TValue** %16, align 8, !dbg !1683, !tbaa !681
  %18 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %17, i64 -1, !dbg !1683
  %19 = bitcast %struct.lua_TValue* %18 to i64*, !dbg !1683
  %20 = bitcast %struct.lua_TValue* %17 to i64*, !dbg !1683
  %21 = load i64, i64* %19, align 8, !dbg !1683
  store i64 %21, i64* %20, align 8, !dbg !1683
  %22 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %17, i64 -1, i32 1, !dbg !1683
  %23 = load i32, i32* %22, align 8, !dbg !1683, !tbaa !557
  %24 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %17, i64 0, i32 1, !dbg !1683
  store i32 %23, i32* %24, align 8, !dbg !1683, !tbaa !557
  %25 = load %struct.lua_TValue*, %struct.lua_TValue** %16, align 8, !dbg !1684, !tbaa !681
  %26 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %25, i64 -1, !dbg !1684
  %27 = bitcast i8* %9 to i64*, !dbg !1684
  %28 = bitcast %struct.lua_TValue* %26 to i64*, !dbg !1684
  %29 = load i64, i64* %27, align 8, !dbg !1684
  store i64 %29, i64* %28, align 8, !dbg !1684
  %30 = load i32, i32* %11, align 8, !dbg !1684, !tbaa !557
  %31 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %25, i64 -1, i32 1, !dbg !1684
  store i32 %30, i32* %31, align 8, !dbg !1684, !tbaa !557
  %32 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 9, !dbg !1685
  %33 = bitcast %struct.lua_TValue** %32 to i64*, !dbg !1685
  %34 = load i64, i64* %33, align 8, !dbg !1685, !tbaa !931
  %35 = bitcast %struct.lua_TValue** %16 to i64*, !dbg !1685
  %36 = load i64, i64* %35, align 8, !dbg !1685, !tbaa !681
  %37 = sub i64 %34, %36, !dbg !1685
  %38 = icmp slt i64 %37, 17, !dbg !1685
  %39 = inttoptr i64 %36 to %struct.lua_TValue*, !dbg !1688
  br i1 %38, label %40, label %42, !dbg !1688

; <label>:40:                                     ; preds = %15
  tail call void @luaD_growstack(%struct.lua_State* nonnull %0, i32 1) #5, !dbg !1685
  %41 = load %struct.lua_TValue*, %struct.lua_TValue** %16, align 8, !dbg !1688, !tbaa !681
  br label %42, !dbg !1685

; <label>:42:                                     ; preds = %15, %40
  %43 = phi %struct.lua_TValue* [ %39, %15 ], [ %41, %40 ], !dbg !1688
  %44 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %43, i64 1, !dbg !1688
  store %struct.lua_TValue* %44, %struct.lua_TValue** %16, align 8, !dbg !1688, !tbaa !681
  %45 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %43, i64 -1, !dbg !1689
  tail call void @luaD_call(%struct.lua_State* nonnull %0, %struct.lua_TValue* nonnull %45, i32 1) #5, !dbg !1690
  br label %46, !dbg !1691

; <label>:46:                                     ; preds = %1, %42
  tail call void @luaD_throw(%struct.lua_State* nonnull %0, i32 2) #5, !dbg !1692
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1693
  ret void, !dbg !1693
}

; Function Attrs: noredzone
declare hidden void @luaD_throw(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden void @luaD_call(%struct.lua_State*, %struct.lua_TValue*, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

; Function Attrs: noredzone
declare hidden i8* @luaO_pushvfstring(%struct.lua_State*, i8*, %struct.__va_list_tag*) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

; Function Attrs: noredzone
declare hidden i8* @luaF_getlocalname(%struct.Proto*, i32, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden void @luaO_chunkid(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden %struct.Table* @luaH_new(%struct.lua_State*, i32, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden %struct.lua_TValue* @luaH_setnum(%struct.lua_State*, %struct.Table*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden i8* @luaO_pushfstring(%struct.lua_State*, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }
attributes #6 = { nobuiltin noredzone }

!llvm.module.flags = !{!391, !392, !393}
!llvm.ident = !{!394}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !56)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/ldebug.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{!3, !45, !50}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 150, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lopcodes.h", directory: "/root/.unikraft/apps/redis/build")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44}
!7 = !DIEnumerator(name: "OP_MOVE", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "OP_LOADK", value: 1, isUnsigned: true)
!9 = !DIEnumerator(name: "OP_LOADBOOL", value: 2, isUnsigned: true)
!10 = !DIEnumerator(name: "OP_LOADNIL", value: 3, isUnsigned: true)
!11 = !DIEnumerator(name: "OP_GETUPVAL", value: 4, isUnsigned: true)
!12 = !DIEnumerator(name: "OP_GETGLOBAL", value: 5, isUnsigned: true)
!13 = !DIEnumerator(name: "OP_GETTABLE", value: 6, isUnsigned: true)
!14 = !DIEnumerator(name: "OP_SETGLOBAL", value: 7, isUnsigned: true)
!15 = !DIEnumerator(name: "OP_SETUPVAL", value: 8, isUnsigned: true)
!16 = !DIEnumerator(name: "OP_SETTABLE", value: 9, isUnsigned: true)
!17 = !DIEnumerator(name: "OP_NEWTABLE", value: 10, isUnsigned: true)
!18 = !DIEnumerator(name: "OP_SELF", value: 11, isUnsigned: true)
!19 = !DIEnumerator(name: "OP_ADD", value: 12, isUnsigned: true)
!20 = !DIEnumerator(name: "OP_SUB", value: 13, isUnsigned: true)
!21 = !DIEnumerator(name: "OP_MUL", value: 14, isUnsigned: true)
!22 = !DIEnumerator(name: "OP_DIV", value: 15, isUnsigned: true)
!23 = !DIEnumerator(name: "OP_MOD", value: 16, isUnsigned: true)
!24 = !DIEnumerator(name: "OP_POW", value: 17, isUnsigned: true)
!25 = !DIEnumerator(name: "OP_UNM", value: 18, isUnsigned: true)
!26 = !DIEnumerator(name: "OP_NOT", value: 19, isUnsigned: true)
!27 = !DIEnumerator(name: "OP_LEN", value: 20, isUnsigned: true)
!28 = !DIEnumerator(name: "OP_CONCAT", value: 21, isUnsigned: true)
!29 = !DIEnumerator(name: "OP_JMP", value: 22, isUnsigned: true)
!30 = !DIEnumerator(name: "OP_EQ", value: 23, isUnsigned: true)
!31 = !DIEnumerator(name: "OP_LT", value: 24, isUnsigned: true)
!32 = !DIEnumerator(name: "OP_LE", value: 25, isUnsigned: true)
!33 = !DIEnumerator(name: "OP_TEST", value: 26, isUnsigned: true)
!34 = !DIEnumerator(name: "OP_TESTSET", value: 27, isUnsigned: true)
!35 = !DIEnumerator(name: "OP_CALL", value: 28, isUnsigned: true)
!36 = !DIEnumerator(name: "OP_TAILCALL", value: 29, isUnsigned: true)
!37 = !DIEnumerator(name: "OP_RETURN", value: 30, isUnsigned: true)
!38 = !DIEnumerator(name: "OP_FORLOOP", value: 31, isUnsigned: true)
!39 = !DIEnumerator(name: "OP_FORPREP", value: 32, isUnsigned: true)
!40 = !DIEnumerator(name: "OP_TFORLOOP", value: 33, isUnsigned: true)
!41 = !DIEnumerator(name: "OP_SETLIST", value: 34, isUnsigned: true)
!42 = !DIEnumerator(name: "OP_CLOSE", value: 35, isUnsigned: true)
!43 = !DIEnumerator(name: "OP_CLOSURE", value: 36, isUnsigned: true)
!44 = !DIEnumerator(name: "OP_VARARG", value: 37, isUnsigned: true)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "OpMode", file: !4, line: 31, baseType: !5, size: 32, elements: !46)
!46 = !{!47, !48, !49}
!47 = !DIEnumerator(name: "iABC", value: 0, isUnsigned: true)
!48 = !DIEnumerator(name: "iABx", value: 1, isUnsigned: true)
!49 = !DIEnumerator(name: "iAsBx", value: 2, isUnsigned: true)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "OpArgMask", file: !4, line: 245, baseType: !5, size: 32, elements: !51)
!51 = !{!52, !53, !54, !55}
!52 = !DIEnumerator(name: "OpArgN", value: 0, isUnsigned: true)
!53 = !DIEnumerator(name: "OpArgU", value: 1, isUnsigned: true)
!54 = !DIEnumerator(name: "OpArgR", value: 2, isUnsigned: true)
!55 = !DIEnumerator(name: "OpArgK", value: 3, isUnsigned: true)
!56 = !{!57, !58, !61, !62, !225, !390, !279, !122, !307, !45, !50}
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "lu_byte", file: !59, line: 27, baseType: !60)
!59 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/llimits.h", directory: "/root/.unikraft/apps/redis/build")
!60 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!61 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCObject", file: !64, line: 36, baseType: !65)
!64 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lobject.h", directory: "/root/.unikraft/apps/redis/build")
!65 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "GCObject", file: !66, line: 136, size: 1472, elements: !67)
!66 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lstate.h", directory: "/root/.unikraft/apps/redis/build")
!67 = !{!68, !75, !101, !160, !386, !387, !388, !389}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "gch", scope: !65, file: !66, line: 137, baseType: !69, size: 128)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCheader", file: !64, line: 51, baseType: !70)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GCheader", file: !64, line: 49, size: 128, elements: !71)
!71 = !{!72, !73, !74}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !70, file: !64, line: 50, baseType: !62, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !70, file: !64, line: 50, baseType: !58, size: 8, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !70, file: !64, line: 50, baseType: !58, size: 8, offset: 72)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !65, file: !66, line: 138, baseType: !76, size: 192)
!76 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "TString", file: !64, line: 199, size: 192, elements: !77)
!77 = !{!78, !87}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !76, file: !64, line: 200, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "L_Umaxalign", file: !59, line: 47, baseType: !80)
!80 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !59, line: 47, size: 64, elements: !81)
!81 = !{!82, !84, !85}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !80, file: !59, line: 47, baseType: !83, size: 64)
!83 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !80, file: !59, line: 47, baseType: !57, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !80, file: !59, line: 47, baseType: !86, size: 64)
!86 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "tsv", scope: !76, file: !64, line: 206, baseType: !88, size: 192)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !76, file: !64, line: 201, size: 192, elements: !89)
!89 = !{!90, !91, !92, !93, !94, !95}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !88, file: !64, line: 202, baseType: !62, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !88, file: !64, line: 202, baseType: !58, size: 8, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !88, file: !64, line: 202, baseType: !58, size: 8, offset: 72)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !88, file: !64, line: 203, baseType: !58, size: 8, offset: 80)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !88, file: !64, line: 204, baseType: !5, size: 32, offset: 96)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !88, file: !64, line: 205, baseType: !96, size: 64, offset: 128)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !97, line: 40, baseType: !98)
!97 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !99, line: 129, baseType: !100)
!99 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!100 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !65, file: !66, line: 139, baseType: !102, size: 320)
!102 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "Udata", file: !64, line: 215, size: 320, elements: !103)
!103 = !{!104, !105}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !102, file: !64, line: 216, baseType: !79, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "uv", scope: !102, file: !64, line: 222, baseType: !106, size: 320)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !102, file: !64, line: 217, size: 320, elements: !107)
!107 = !{!108, !109, !110, !111, !158, !159}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !106, file: !64, line: 218, baseType: !62, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !106, file: !64, line: 218, baseType: !58, size: 8, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !106, file: !64, line: 218, baseType: !58, size: 8, offset: 72)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "metatable", scope: !106, file: !64, line: 219, baseType: !112, size: 64, offset: 128)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Table", file: !64, line: 338, size: 512, elements: !114)
!114 = !{!115, !116, !117, !118, !119, !120, !121, !137, !155, !156, !157}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !113, file: !64, line: 339, baseType: !62, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !113, file: !64, line: 339, baseType: !58, size: 8, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !113, file: !64, line: 339, baseType: !58, size: 8, offset: 72)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !113, file: !64, line: 340, baseType: !58, size: 8, offset: 80)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "lsizenode", scope: !113, file: !64, line: 341, baseType: !58, size: 8, offset: 88)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "metatable", scope: !113, file: !64, line: 342, baseType: !112, size: 64, offset: 128)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "array", scope: !113, file: !64, line: 343, baseType: !122, size: 64, offset: 192)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "TValue", file: !64, line: 75, baseType: !124)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lua_TValue", file: !64, line: 73, size: 128, elements: !125)
!125 = !{!126, !136}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !124, file: !64, line: 74, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "Value", file: !64, line: 64, baseType: !128)
!128 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !64, line: 59, size: 64, elements: !129)
!129 = !{!130, !131, !132, !135}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !128, file: !64, line: 60, baseType: !62, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !128, file: !64, line: 61, baseType: !57, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !128, file: !64, line: 62, baseType: !133, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Number", file: !134, line: 99, baseType: !83)
!134 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lua.h", directory: "/root/.unikraft/apps/redis/build")
!135 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !128, file: !64, line: 63, baseType: !61, size: 32)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !124, file: !64, line: 74, baseType: !61, size: 32, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !113, file: !64, line: 344, baseType: !138, size: 64, offset: 256)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "Node", file: !64, line: 335, baseType: !140)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Node", file: !64, line: 332, size: 320, elements: !141)
!141 = !{!142, !143}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "i_val", scope: !140, file: !64, line: 333, baseType: !123, size: 128)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "i_key", scope: !140, file: !64, line: 334, baseType: !144, size: 192, offset: 128)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "TKey", file: !64, line: 329, baseType: !145)
!145 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "TKey", file: !64, line: 323, size: 192, elements: !146)
!146 = !{!147, !154}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "nk", scope: !145, file: !64, line: 327, baseType: !148, size: 192)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !145, file: !64, line: 324, size: 192, elements: !149)
!149 = !{!150, !151, !152}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !148, file: !64, line: 325, baseType: !127, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !148, file: !64, line: 325, baseType: !61, size: 32, offset: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !148, file: !64, line: 326, baseType: !153, size: 64, offset: 128)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "tvk", scope: !145, file: !64, line: 328, baseType: !123, size: 128)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "lastfree", scope: !113, file: !64, line: 345, baseType: !138, size: 64, offset: 320)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !113, file: !64, line: 346, baseType: !62, size: 64, offset: 384)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "sizearray", scope: !113, file: !64, line: 347, baseType: !61, size: 32, offset: 448)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !106, file: !64, line: 220, baseType: !112, size: 64, offset: 192)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !106, file: !64, line: 221, baseType: !96, size: 64, offset: 256)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !65, file: !66, line: 140, baseType: !161, size: 448)
!161 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "Closure", file: !64, line: 309, size: 448, elements: !162)
!162 = !{!163, !335}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !161, file: !64, line: 310, baseType: !164, size: 448)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "CClosure", file: !64, line: 299, baseType: !165)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CClosure", file: !64, line: 295, size: 448, elements: !166)
!166 = !{!167, !168, !169, !170, !171, !172, !173, !174, !331}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !165, file: !64, line: 296, baseType: !62, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !165, file: !64, line: 296, baseType: !58, size: 8, offset: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !165, file: !64, line: 296, baseType: !58, size: 8, offset: 72)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "isC", scope: !165, file: !64, line: 296, baseType: !58, size: 8, offset: 80)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nupvalues", scope: !165, file: !64, line: 296, baseType: !58, size: 8, offset: 88)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !165, file: !64, line: 296, baseType: !62, size: 64, offset: 128)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !165, file: !64, line: 296, baseType: !112, size: 64, offset: 192)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !165, file: !64, line: 297, baseType: !175, size: 64, offset: 256)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_CFunction", file: !134, line: 52, baseType: !176)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DISubroutineType(types: !178)
!178 = !{!61, !179}
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_State", file: !134, line: 50, baseType: !181)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lua_State", file: !66, line: 100, size: 1472, elements: !182)
!182 = !{!183, !184, !185, !186, !187, !189, !190, !268, !282, !283, !284, !285, !286, !287, !288, !289, !291, !292, !293, !294, !295, !296, !321, !322, !323, !324, !325, !328}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !181, file: !66, line: 101, baseType: !62, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !181, file: !66, line: 101, baseType: !58, size: 8, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !181, file: !66, line: 101, baseType: !58, size: 8, offset: 72)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !181, file: !66, line: 102, baseType: !58, size: 8, offset: 80)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !181, file: !66, line: 103, baseType: !188, size: 64, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "StkId", file: !64, line: 193, baseType: !122)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !181, file: !66, line: 104, baseType: !188, size: 64, offset: 192)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "l_G", scope: !181, file: !66, line: 105, baseType: !191, size: 64, offset: 256)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "global_State", file: !66, line: 94, baseType: !193)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "global_State", file: !66, line: 68, size: 3456, elements: !194)
!194 = !{!195, !204, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !229, !231, !232, !233, !234, !235, !236, !237, !238, !240, !258, !262}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "strt", scope: !193, file: !66, line: 69, baseType: !196, size: 128)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "stringtable", file: !66, line: 42, baseType: !197)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stringtable", file: !66, line: 38, size: 128, elements: !198)
!198 = !{!199, !201, !203}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !197, file: !66, line: 39, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "nuse", scope: !197, file: !66, line: 40, baseType: !202, size: 32, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "lu_int32", file: !59, line: 18, baseType: !5)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !197, file: !66, line: 41, baseType: !61, size: 32, offset: 96)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "frealloc", scope: !193, file: !66, line: 70, baseType: !205, size: 64, offset: 128)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Alloc", file: !134, line: 66, baseType: !206)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DISubroutineType(types: !208)
!208 = !{!57, !57, !57, !96, !96}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "ud", scope: !193, file: !66, line: 71, baseType: !57, size: 64, offset: 192)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "currentwhite", scope: !193, file: !66, line: 72, baseType: !58, size: 8, offset: 256)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "gcstate", scope: !193, file: !66, line: 73, baseType: !58, size: 8, offset: 264)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "sweepstrgc", scope: !193, file: !66, line: 74, baseType: !61, size: 32, offset: 288)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "rootgc", scope: !193, file: !66, line: 75, baseType: !62, size: 64, offset: 320)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "sweepgc", scope: !193, file: !66, line: 76, baseType: !200, size: 64, offset: 384)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "gray", scope: !193, file: !66, line: 77, baseType: !62, size: 64, offset: 448)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "grayagain", scope: !193, file: !66, line: 78, baseType: !62, size: 64, offset: 512)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "weak", scope: !193, file: !66, line: 79, baseType: !62, size: 64, offset: 576)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "tmudata", scope: !193, file: !66, line: 80, baseType: !62, size: 64, offset: 640)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "buff", scope: !193, file: !66, line: 81, baseType: !220, size: 192, offset: 704)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "Mbuffer", file: !221, line: 28, baseType: !222)
!221 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lzio.h", directory: "/root/.unikraft/apps/redis/build")
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Mbuffer", file: !221, line: 24, size: 192, elements: !223)
!223 = !{!224, !227, !228}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !222, file: !221, line: 25, baseType: !225, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !222, file: !221, line: 26, baseType: !96, size: 64, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "buffsize", scope: !222, file: !221, line: 27, baseType: !96, size: 64, offset: 128)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "GCthreshold", scope: !193, file: !66, line: 82, baseType: !230, size: 64, offset: 896)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "lu_mem", file: !59, line: 20, baseType: !96)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "totalbytes", scope: !193, file: !66, line: 83, baseType: !230, size: 64, offset: 960)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "estimate", scope: !193, file: !66, line: 84, baseType: !230, size: 64, offset: 1024)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "gcdept", scope: !193, file: !66, line: 85, baseType: !230, size: 64, offset: 1088)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "gcpause", scope: !193, file: !66, line: 86, baseType: !61, size: 32, offset: 1152)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "gcstepmul", scope: !193, file: !66, line: 87, baseType: !61, size: 32, offset: 1184)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "panic", scope: !193, file: !66, line: 88, baseType: !175, size: 64, offset: 1216)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "l_registry", scope: !193, file: !66, line: 89, baseType: !123, size: 128, offset: 1280)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "mainthread", scope: !193, file: !66, line: 90, baseType: !239, size: 64, offset: 1408)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "uvhead", scope: !193, file: !66, line: 91, baseType: !241, size: 320, offset: 1472)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "UpVal", file: !64, line: 284, baseType: !242)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "UpVal", file: !64, line: 274, size: 320, elements: !243)
!243 = !{!244, !245, !246, !247, !248}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !242, file: !64, line: 275, baseType: !62, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !242, file: !64, line: 275, baseType: !58, size: 8, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !242, file: !64, line: 275, baseType: !58, size: 8, offset: 72)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !242, file: !64, line: 276, baseType: !122, size: 64, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !242, file: !64, line: 283, baseType: !249, size: 128, offset: 192)
!249 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !242, file: !64, line: 277, size: 128, elements: !250)
!250 = !{!251, !252}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !249, file: !64, line: 278, baseType: !123, size: 128)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !249, file: !64, line: 282, baseType: !253, size: 128)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !249, file: !64, line: 279, size: 128, elements: !254)
!254 = !{!255, !257}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !253, file: !64, line: 280, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !253, file: !64, line: 281, baseType: !256, size: 64, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "mt", scope: !193, file: !66, line: 92, baseType: !259, size: 576, offset: 1792)
!259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 576, elements: !260)
!260 = !{!261}
!261 = !DISubrange(count: 9)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "tmname", scope: !193, file: !66, line: 93, baseType: !263, size: 1088, offset: 2368)
!263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !264, size: 1088, elements: !266)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "TString", file: !64, line: 207, baseType: !76)
!266 = !{!267}
!267 = !DISubrange(count: 17)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "ci", scope: !181, file: !66, line: 106, baseType: !269, size: 64, offset: 320)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "CallInfo", file: !66, line: 55, baseType: !271)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CallInfo", file: !66, line: 48, size: 320, elements: !272)
!272 = !{!273, !274, !275, !276, !280, !281}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !271, file: !66, line: 49, baseType: !188, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !271, file: !66, line: 50, baseType: !188, size: 64, offset: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !271, file: !66, line: 51, baseType: !188, size: 64, offset: 128)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "savedpc", scope: !271, file: !66, line: 52, baseType: !277, size: 64, offset: 192)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !279)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "Instruction", file: !59, line: 88, baseType: !202)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "nresults", scope: !271, file: !66, line: 53, baseType: !61, size: 32, offset: 256)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "tailcalls", scope: !271, file: !66, line: 54, baseType: !61, size: 32, offset: 288)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "savedpc", scope: !181, file: !66, line: 107, baseType: !277, size: 64, offset: 384)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "stack_last", scope: !181, file: !66, line: 108, baseType: !188, size: 64, offset: 448)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !181, file: !66, line: 109, baseType: !188, size: 64, offset: 512)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "end_ci", scope: !181, file: !66, line: 110, baseType: !269, size: 64, offset: 576)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "base_ci", scope: !181, file: !66, line: 111, baseType: !269, size: 64, offset: 640)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "stacksize", scope: !181, file: !66, line: 112, baseType: !61, size: 32, offset: 704)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "size_ci", scope: !181, file: !66, line: 113, baseType: !61, size: 32, offset: 736)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "nCcalls", scope: !181, file: !66, line: 114, baseType: !290, size: 16, offset: 768)
!290 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "baseCcalls", scope: !181, file: !66, line: 115, baseType: !290, size: 16, offset: 784)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "hookmask", scope: !181, file: !66, line: 116, baseType: !58, size: 8, offset: 800)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "allowhook", scope: !181, file: !66, line: 117, baseType: !58, size: 8, offset: 808)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "basehookcount", scope: !181, file: !66, line: 118, baseType: !61, size: 32, offset: 832)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "hookcount", scope: !181, file: !66, line: 119, baseType: !61, size: 32, offset: 864)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "hook", scope: !181, file: !66, line: 120, baseType: !297, size: 64, offset: 896)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Hook", file: !134, line: 330, baseType: !298)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DISubroutineType(types: !300)
!300 = !{null, !179, !301}
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Debug", file: !134, line: 326, baseType: !303)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lua_Debug", file: !134, line: 346, size: 960, elements: !304)
!304 = !{!305, !306, !309, !310, !311, !312, !313, !314, !315, !316, !320}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !303, file: !134, line: 347, baseType: !61, size: 32)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !303, file: !134, line: 348, baseType: !307, size: 64, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !226)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "namewhat", scope: !303, file: !134, line: 349, baseType: !307, size: 64, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "what", scope: !303, file: !134, line: 350, baseType: !307, size: 64, offset: 192)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !303, file: !134, line: 351, baseType: !307, size: 64, offset: 256)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "currentline", scope: !303, file: !134, line: 352, baseType: !61, size: 32, offset: 320)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "nups", scope: !303, file: !134, line: 353, baseType: !61, size: 32, offset: 352)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "linedefined", scope: !303, file: !134, line: 354, baseType: !61, size: 32, offset: 384)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "lastlinedefined", scope: !303, file: !134, line: 355, baseType: !61, size: 32, offset: 416)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "short_src", scope: !303, file: !134, line: 356, baseType: !317, size: 480, offset: 448)
!317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 480, elements: !318)
!318 = !{!319}
!319 = !DISubrange(count: 60)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "i_ci", scope: !303, file: !134, line: 358, baseType: !61, size: 32, offset: 928)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "l_gt", scope: !181, file: !66, line: 121, baseType: !123, size: 128, offset: 960)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !181, file: !66, line: 122, baseType: !123, size: 128, offset: 1088)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "openupval", scope: !181, file: !66, line: 123, baseType: !62, size: 64, offset: 1216)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !181, file: !66, line: 124, baseType: !62, size: 64, offset: 1280)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "errorJmp", scope: !181, file: !66, line: 125, baseType: !326, size: 64, offset: 1344)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DICompositeType(tag: DW_TAG_structure_type, name: "lua_longjmp", file: !66, line: 18, flags: DIFlagFwdDecl)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "errfunc", scope: !181, file: !66, line: 126, baseType: !329, size: 64, offset: 1408)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !330, line: 49, baseType: !86)
!330 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!331 = !DIDerivedType(tag: DW_TAG_member, name: "upvalue", scope: !165, file: !64, line: 298, baseType: !332, size: 128, offset: 320)
!332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 128, elements: !333)
!333 = !{!334}
!334 = !DISubrange(count: 1)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !161, file: !64, line: 311, baseType: !336, size: 384)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "LClosure", file: !64, line: 306, baseType: !337)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LClosure", file: !64, line: 302, size: 384, elements: !338)
!338 = !{!339, !340, !341, !342, !343, !344, !345, !346, !383}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !337, file: !64, line: 303, baseType: !62, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !337, file: !64, line: 303, baseType: !58, size: 8, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !337, file: !64, line: 303, baseType: !58, size: 8, offset: 72)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "isC", scope: !337, file: !64, line: 303, baseType: !58, size: 8, offset: 80)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "nupvalues", scope: !337, file: !64, line: 303, baseType: !58, size: 8, offset: 88)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !337, file: !64, line: 303, baseType: !62, size: 64, offset: 128)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !337, file: !64, line: 303, baseType: !112, size: 64, offset: 192)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !337, file: !64, line: 304, baseType: !347, size: 64, offset: 256)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Proto", file: !64, line: 231, size: 960, elements: !349)
!349 = !{!350, !351, !352, !353, !354, !356, !358, !360, !367, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !348, file: !64, line: 232, baseType: !62, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !348, file: !64, line: 232, baseType: !58, size: 8, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !348, file: !64, line: 232, baseType: !58, size: 8, offset: 72)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !348, file: !64, line: 233, baseType: !122, size: 64, offset: 128)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !348, file: !64, line: 234, baseType: !355, size: 64, offset: 192)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !348, file: !64, line: 235, baseType: !357, size: 64, offset: 256)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "lineinfo", scope: !348, file: !64, line: 236, baseType: !359, size: 64, offset: 320)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "locvars", scope: !348, file: !64, line: 237, baseType: !361, size: 64, offset: 384)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LocVar", file: !64, line: 262, size: 128, elements: !363)
!363 = !{!364, !365, !366}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "varname", scope: !362, file: !64, line: 263, baseType: !264, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "startpc", scope: !362, file: !64, line: 264, baseType: !61, size: 32, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "endpc", scope: !362, file: !64, line: 265, baseType: !61, size: 32, offset: 96)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "upvalues", scope: !348, file: !64, line: 238, baseType: !368, size: 64, offset: 448)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !348, file: !64, line: 239, baseType: !264, size: 64, offset: 512)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "sizeupvalues", scope: !348, file: !64, line: 240, baseType: !61, size: 32, offset: 576)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "sizek", scope: !348, file: !64, line: 241, baseType: !61, size: 32, offset: 608)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "sizecode", scope: !348, file: !64, line: 242, baseType: !61, size: 32, offset: 640)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "sizelineinfo", scope: !348, file: !64, line: 243, baseType: !61, size: 32, offset: 672)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "sizep", scope: !348, file: !64, line: 244, baseType: !61, size: 32, offset: 704)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "sizelocvars", scope: !348, file: !64, line: 245, baseType: !61, size: 32, offset: 736)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "linedefined", scope: !348, file: !64, line: 246, baseType: !61, size: 32, offset: 768)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "lastlinedefined", scope: !348, file: !64, line: 247, baseType: !61, size: 32, offset: 800)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !348, file: !64, line: 248, baseType: !62, size: 64, offset: 832)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "nups", scope: !348, file: !64, line: 249, baseType: !58, size: 8, offset: 896)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "numparams", scope: !348, file: !64, line: 250, baseType: !58, size: 8, offset: 904)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "is_vararg", scope: !348, file: !64, line: 251, baseType: !58, size: 8, offset: 912)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "maxstacksize", scope: !348, file: !64, line: 252, baseType: !58, size: 8, offset: 920)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "upvals", scope: !337, file: !64, line: 305, baseType: !384, size: 64, offset: 320)
!384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !385, size: 64, elements: !333)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "h", scope: !65, file: !66, line: 141, baseType: !113, size: 512)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !65, file: !66, line: 142, baseType: !348, size: 960)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "uv", scope: !65, file: !66, line: 143, baseType: !242, size: 320)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "th", scope: !65, file: !66, line: 144, baseType: !181, size: 1472)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "OpCode", file: !4, line: 208, baseType: !3)
!391 = !{i32 2, !"Dwarf Version", i32 4}
!392 = !{i32 2, !"Debug Info Version", i32 3}
!393 = !{i32 1, !"wchar_size", i32 4}
!394 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!395 = distinct !DISubprogram(name: "lua_sethook", scope: !1, file: !1, line: 56, type: !396, isLocal: false, isDefinition: true, scopeLine: 56, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !398)
!396 = !DISubroutineType(types: !397)
!397 = !{!61, !179, !297, !61, !61}
!398 = !{!399, !400, !401, !402}
!399 = !DILocalVariable(name: "L", arg: 1, scope: !395, file: !1, line: 56, type: !179)
!400 = !DILocalVariable(name: "func", arg: 2, scope: !395, file: !1, line: 56, type: !297)
!401 = !DILocalVariable(name: "mask", arg: 3, scope: !395, file: !1, line: 56, type: !61)
!402 = !DILocalVariable(name: "count", arg: 4, scope: !395, file: !1, line: 56, type: !61)
!403 = !DILocation(line: 56, column: 37, scope: !395)
!404 = !DILocation(line: 56, column: 49, scope: !395)
!405 = !DILocation(line: 56, column: 59, scope: !395)
!406 = !DILocation(line: 56, column: 69, scope: !395)
!407 = !DILocation(line: 57, column: 12, scope: !408)
!408 = distinct !DILexicalBlock(scope: !395, file: !1, line: 57, column: 7)
!409 = !DILocation(line: 57, column: 28, scope: !408)
!410 = !DILocation(line: 57, column: 20, scope: !408)
!411 = !DILocation(line: 61, column: 6, scope: !395)
!412 = !DILocation(line: 61, column: 11, scope: !395)
!413 = !{!414, !415, i64 112}
!414 = !{!"lua_State", !415, i64 0, !416, i64 8, !416, i64 9, !416, i64 10, !415, i64 16, !415, i64 24, !415, i64 32, !415, i64 40, !415, i64 48, !415, i64 56, !415, i64 64, !415, i64 72, !415, i64 80, !418, i64 88, !418, i64 92, !419, i64 96, !419, i64 98, !416, i64 100, !416, i64 101, !418, i64 104, !418, i64 108, !415, i64 112, !420, i64 120, !420, i64 136, !415, i64 152, !415, i64 160, !415, i64 168, !421, i64 176}
!415 = !{!"any pointer", !416, i64 0}
!416 = !{!"omnipotent char", !417, i64 0}
!417 = !{!"Simple C/C++ TBAA"}
!418 = !{!"int", !416, i64 0}
!419 = !{!"short", !416, i64 0}
!420 = !{!"lua_TValue", !416, i64 0, !418, i64 8}
!421 = !{!"long", !416, i64 0}
!422 = !DILocation(line: 62, column: 6, scope: !395)
!423 = !DILocation(line: 62, column: 20, scope: !395)
!424 = !{!414, !418, i64 104}
!425 = !DILocation(line: 63, column: 3, scope: !395)
!426 = !{!414, !418, i64 108}
!427 = !DILocation(line: 64, column: 17, scope: !395)
!428 = !DILocation(line: 64, column: 6, scope: !395)
!429 = !DILocation(line: 64, column: 15, scope: !395)
!430 = !{!414, !416, i64 100}
!431 = !DILocation(line: 65, column: 3, scope: !395)
!432 = distinct !DISubprogram(name: "lua_gethook", scope: !1, file: !1, line: 69, type: !433, isLocal: false, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !435)
!433 = !DISubroutineType(types: !434)
!434 = !{!297, !179}
!435 = !{!436}
!436 = !DILocalVariable(name: "L", arg: 1, scope: !432, file: !1, line: 69, type: !179)
!437 = !DILocation(line: 69, column: 42, scope: !432)
!438 = !DILocation(line: 70, column: 13, scope: !432)
!439 = !DILocation(line: 70, column: 3, scope: !432)
!440 = distinct !DISubprogram(name: "lua_gethookmask", scope: !1, file: !1, line: 74, type: !177, isLocal: false, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !441)
!441 = !{!442}
!442 = !DILocalVariable(name: "L", arg: 1, scope: !440, file: !1, line: 74, type: !179)
!443 = !DILocation(line: 74, column: 41, scope: !440)
!444 = !DILocation(line: 75, column: 13, scope: !440)
!445 = !DILocation(line: 75, column: 10, scope: !440)
!446 = !DILocation(line: 75, column: 3, scope: !440)
!447 = distinct !DISubprogram(name: "lua_gethookcount", scope: !1, file: !1, line: 79, type: !177, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !448)
!448 = !{!449}
!449 = !DILocalVariable(name: "L", arg: 1, scope: !447, file: !1, line: 79, type: !179)
!450 = !DILocation(line: 79, column: 42, scope: !447)
!451 = !DILocation(line: 80, column: 13, scope: !447)
!452 = !DILocation(line: 80, column: 3, scope: !447)
!453 = distinct !DISubprogram(name: "lua_getstack", scope: !1, file: !1, line: 84, type: !454, isLocal: false, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !456)
!454 = !DISubroutineType(types: !455)
!455 = !{!61, !179, !61, !301}
!456 = !{!457, !458, !459, !460, !461}
!457 = !DILocalVariable(name: "L", arg: 1, scope: !453, file: !1, line: 84, type: !179)
!458 = !DILocalVariable(name: "level", arg: 2, scope: !453, file: !1, line: 84, type: !61)
!459 = !DILocalVariable(name: "ar", arg: 3, scope: !453, file: !1, line: 84, type: !301)
!460 = !DILocalVariable(name: "status", scope: !453, file: !1, line: 85, type: !61)
!461 = !DILocalVariable(name: "ci", scope: !453, file: !1, line: 86, type: !269)
!462 = !DILocation(line: 84, column: 38, scope: !453)
!463 = !DILocation(line: 84, column: 45, scope: !453)
!464 = !DILocation(line: 84, column: 63, scope: !453)
!465 = !DILocation(line: 88, column: 16, scope: !466)
!466 = distinct !DILexicalBlock(scope: !453, file: !1, line: 88, column: 3)
!467 = !{!414, !415, i64 40}
!468 = !DILocation(line: 86, column: 13, scope: !453)
!469 = !DILocation(line: 88, column: 26, scope: !470)
!470 = distinct !DILexicalBlock(scope: !466, file: !1, line: 88, column: 3)
!471 = !DILocation(line: 88, column: 30, scope: !470)
!472 = !{!414, !415, i64 80}
!473 = !DILocation(line: 88, column: 36, scope: !470)
!474 = !DILocation(line: 88, column: 3, scope: !466)
!475 = !DILocation(line: 89, column: 10, scope: !476)
!476 = distinct !DILexicalBlock(scope: !470, file: !1, line: 88, column: 56)
!477 = !DILocation(line: 90, column: 9, scope: !478)
!478 = distinct !DILexicalBlock(scope: !476, file: !1, line: 90, column: 9)
!479 = !{!480, !415, i64 8}
!480 = !{!"CallInfo", !415, i64 0, !415, i64 8, !415, i64 16, !415, i64 24, !418, i64 32, !418, i64 36}
!481 = !{!416, !416, i64 0}
!482 = !DILocation(line: 90, column: 9, scope: !476)
!483 = !DILocation(line: 91, column: 20, scope: !478)
!484 = !{!480, !418, i64 36}
!485 = !DILocation(line: 91, column: 13, scope: !478)
!486 = !DILocation(line: 91, column: 7, scope: !478)
!487 = !DILocation(line: 0, scope: !478)
!488 = !DILocation(line: 88, column: 52, scope: !470)
!489 = distinct !{!489, !474, !490}
!490 = !DILocation(line: 92, column: 3, scope: !466)
!491 = !DILocation(line: 0, scope: !470)
!492 = !DILocation(line: 93, column: 13, scope: !493)
!493 = distinct !DILexicalBlock(scope: !453, file: !1, line: 93, column: 7)
!494 = !DILocation(line: 93, column: 18, scope: !493)
!495 = !DILocation(line: 93, column: 29, scope: !493)
!496 = !DILocation(line: 93, column: 24, scope: !493)
!497 = !DILocation(line: 93, column: 7, scope: !453)
!498 = !DILocation(line: 85, column: 7, scope: !453)
!499 = !DILocation(line: 95, column: 16, scope: !500)
!500 = distinct !DILexicalBlock(scope: !493, file: !1, line: 93, column: 38)
!501 = !DILocation(line: 95, column: 9, scope: !500)
!502 = !DILocation(line: 95, column: 14, scope: !500)
!503 = !{!504, !418, i64 116}
!504 = !{!"lua_Debug", !418, i64 0, !415, i64 8, !415, i64 16, !415, i64 24, !415, i64 32, !418, i64 40, !418, i64 44, !418, i64 48, !418, i64 52, !416, i64 56, !418, i64 116}
!505 = !DILocation(line: 96, column: 3, scope: !500)
!506 = !DILocation(line: 99, column: 9, scope: !507)
!507 = distinct !DILexicalBlock(scope: !508, file: !1, line: 97, column: 23)
!508 = distinct !DILexicalBlock(scope: !493, file: !1, line: 97, column: 12)
!509 = !DILocation(line: 99, column: 14, scope: !507)
!510 = !DILocation(line: 100, column: 3, scope: !507)
!511 = !DILocation(line: 0, scope: !508)
!512 = !DILocation(line: 103, column: 3, scope: !453)
!513 = distinct !DISubprogram(name: "lua_getlocal", scope: !1, file: !1, line: 127, type: !514, isLocal: false, isDefinition: true, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !518)
!514 = !DISubroutineType(types: !515)
!515 = !{!307, !179, !516, !61}
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !302)
!518 = !{!519, !520, !521, !522, !523}
!519 = !DILocalVariable(name: "L", arg: 1, scope: !513, file: !1, line: 127, type: !179)
!520 = !DILocalVariable(name: "ar", arg: 2, scope: !513, file: !1, line: 127, type: !516)
!521 = !DILocalVariable(name: "n", arg: 3, scope: !513, file: !1, line: 127, type: !61)
!522 = !DILocalVariable(name: "ci", scope: !513, file: !1, line: 128, type: !269)
!523 = !DILocalVariable(name: "name", scope: !513, file: !1, line: 129, type: !307)
!524 = !DILocation(line: 127, column: 46, scope: !513)
!525 = !DILocation(line: 127, column: 66, scope: !513)
!526 = !DILocation(line: 127, column: 74, scope: !513)
!527 = !DILocation(line: 128, column: 21, scope: !513)
!528 = !DILocation(line: 128, column: 35, scope: !513)
!529 = !DILocation(line: 128, column: 29, scope: !513)
!530 = !DILocation(line: 128, column: 13, scope: !513)
!531 = !DILocalVariable(name: "L", arg: 1, scope: !532, file: !1, line: 112, type: !179)
!532 = distinct !DISubprogram(name: "findlocal", scope: !1, file: !1, line: 112, type: !533, isLocal: true, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !535)
!533 = !DISubroutineType(types: !534)
!534 = !{!307, !179, !269, !61}
!535 = !{!531, !536, !537, !538, !539, !542}
!536 = !DILocalVariable(name: "ci", arg: 2, scope: !532, file: !1, line: 112, type: !269)
!537 = !DILocalVariable(name: "n", arg: 3, scope: !532, file: !1, line: 112, type: !61)
!538 = !DILocalVariable(name: "name", scope: !532, file: !1, line: 113, type: !307)
!539 = !DILocalVariable(name: "fp", scope: !532, file: !1, line: 114, type: !540)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "Proto", file: !64, line: 253, baseType: !348)
!542 = !DILocalVariable(name: "limit", scope: !543, file: !1, line: 118, type: !188)
!543 = distinct !DILexicalBlock(scope: !544, file: !1, line: 117, column: 8)
!544 = distinct !DILexicalBlock(scope: !532, file: !1, line: 115, column: 7)
!545 = !DILocation(line: 112, column: 42, scope: !532, inlinedAt: !546)
!546 = distinct !DILocation(line: 129, column: 22, scope: !513)
!547 = !DILocation(line: 112, column: 55, scope: !532, inlinedAt: !546)
!548 = !DILocation(line: 112, column: 63, scope: !532, inlinedAt: !546)
!549 = !DILocalVariable(name: "ci", arg: 1, scope: !550, file: !1, line: 107, type: !269)
!550 = distinct !DISubprogram(name: "getluaproto", scope: !1, file: !1, line: 107, type: !551, isLocal: true, isDefinition: true, scopeLine: 107, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !553)
!551 = !DISubroutineType(types: !552)
!552 = !{!540, !269}
!553 = !{!549}
!554 = !DILocation(line: 107, column: 38, scope: !550, inlinedAt: !555)
!555 = distinct !DILocation(line: 114, column: 15, scope: !532, inlinedAt: !546)
!556 = !DILocation(line: 108, column: 11, scope: !550, inlinedAt: !555)
!557 = !{!420, !418, i64 8}
!558 = !DILocation(line: 108, column: 3, scope: !550, inlinedAt: !555)
!559 = !DILocation(line: 115, column: 10, scope: !544, inlinedAt: !546)
!560 = !DILocation(line: 108, column: 38, scope: !550, inlinedAt: !555)
!561 = !DILocation(line: 114, column: 10, scope: !532, inlinedAt: !546)
!562 = !DILocation(line: 115, column: 7, scope: !544, inlinedAt: !546)
!563 = !DILocalVariable(name: "L", arg: 1, scope: !564, file: !1, line: 36, type: !179)
!564 = distinct !DISubprogram(name: "currentpc", scope: !1, file: !1, line: 36, type: !565, isLocal: true, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !567)
!565 = !DISubroutineType(types: !566)
!566 = !{!61, !179, !269}
!567 = !{!563, !568}
!568 = !DILocalVariable(name: "ci", arg: 2, scope: !564, file: !1, line: 36, type: !269)
!569 = !DILocation(line: 36, column: 34, scope: !564, inlinedAt: !570)
!570 = distinct !DILocation(line: 115, column: 46, scope: !544, inlinedAt: !546)
!571 = !DILocation(line: 36, column: 47, scope: !564, inlinedAt: !570)
!572 = !DILocation(line: 38, column: 16, scope: !573, inlinedAt: !570)
!573 = distinct !DILexicalBlock(scope: !564, file: !1, line: 38, column: 7)
!574 = !DILocation(line: 38, column: 10, scope: !573, inlinedAt: !570)
!575 = !DILocation(line: 38, column: 7, scope: !564, inlinedAt: !570)
!576 = !DILocation(line: 37, column: 7, scope: !564, inlinedAt: !570)
!577 = !DILocation(line: 40, column: 10, scope: !564, inlinedAt: !570)
!578 = !{!480, !415, i64 24}
!579 = !DILocation(line: 37, column: 8, scope: !580, inlinedAt: !570)
!580 = distinct !DILexicalBlock(scope: !564, file: !1, line: 37, column: 7)
!581 = !DILocation(line: 39, column: 22, scope: !573, inlinedAt: !570)
!582 = !{!414, !415, i64 48}
!583 = !DILocation(line: 39, column: 9, scope: !573, inlinedAt: !570)
!584 = !DILocation(line: 39, column: 17, scope: !573, inlinedAt: !570)
!585 = !DILocation(line: 39, column: 5, scope: !573, inlinedAt: !570)
!586 = !{!587, !415, i64 24}
!587 = !{!"Proto", !415, i64 0, !416, i64 8, !416, i64 9, !415, i64 16, !415, i64 24, !415, i64 32, !415, i64 40, !415, i64 48, !415, i64 56, !415, i64 64, !418, i64 72, !418, i64 76, !418, i64 80, !418, i64 84, !418, i64 88, !418, i64 92, !418, i64 96, !418, i64 100, !415, i64 104, !416, i64 112, !416, i64 113, !416, i64 114, !416, i64 115}
!588 = !DILocation(line: 41, column: 1, scope: !564, inlinedAt: !570)
!589 = !DILocation(line: 115, column: 21, scope: !544, inlinedAt: !546)
!590 = !DILocation(line: 113, column: 15, scope: !532, inlinedAt: !546)
!591 = !DILocation(line: 115, column: 65, scope: !544, inlinedAt: !546)
!592 = !DILocation(line: 115, column: 7, scope: !532, inlinedAt: !546)
!593 = !DILocation(line: 132, column: 30, scope: !594)
!594 = distinct !DILexicalBlock(scope: !513, file: !1, line: 131, column: 7)
!595 = !{!480, !415, i64 0}
!596 = !DILocation(line: 118, column: 29, scope: !543, inlinedAt: !546)
!597 = !DILocation(line: 118, column: 23, scope: !543, inlinedAt: !546)
!598 = !DILocation(line: 118, column: 38, scope: !543, inlinedAt: !546)
!599 = !DILocation(line: 118, column: 52, scope: !543, inlinedAt: !546)
!600 = !DILocation(line: 118, column: 19, scope: !543, inlinedAt: !546)
!601 = !{!415, !415, i64 0}
!602 = !DILocation(line: 118, column: 11, scope: !543, inlinedAt: !546)
!603 = !DILocation(line: 119, column: 21, scope: !604, inlinedAt: !546)
!604 = distinct !DILexicalBlock(scope: !543, file: !1, line: 119, column: 9)
!605 = !DILocation(line: 119, column: 15, scope: !604, inlinedAt: !546)
!606 = !DILocation(line: 119, column: 29, scope: !604, inlinedAt: !546)
!607 = !DILocation(line: 119, column: 26, scope: !604, inlinedAt: !546)
!608 = !DILocation(line: 119, column: 36, scope: !604, inlinedAt: !546)
!609 = !DILocation(line: 119, column: 31, scope: !604, inlinedAt: !546)
!610 = !DILocation(line: 124, column: 1, scope: !532, inlinedAt: !546)
!611 = !DILocation(line: 129, column: 15, scope: !513)
!612 = !DILocation(line: 132, column: 40, scope: !594)
!613 = !DILocation(line: 132, column: 35, scope: !594)
!614 = !DILocation(line: 132, column: 7, scope: !594)
!615 = !DILocation(line: 134, column: 3, scope: !513)
!616 = distinct !DISubprogram(name: "lua_setlocal", scope: !1, file: !1, line: 138, type: !514, isLocal: false, isDefinition: true, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !617)
!617 = !{!618, !619, !620, !621, !622, !623, !628}
!618 = !DILocalVariable(name: "L", arg: 1, scope: !616, file: !1, line: 138, type: !179)
!619 = !DILocalVariable(name: "ar", arg: 2, scope: !616, file: !1, line: 138, type: !516)
!620 = !DILocalVariable(name: "n", arg: 3, scope: !616, file: !1, line: 138, type: !61)
!621 = !DILocalVariable(name: "ci", scope: !616, file: !1, line: 139, type: !269)
!622 = !DILocalVariable(name: "name", scope: !616, file: !1, line: 140, type: !307)
!623 = !DILocalVariable(name: "o2", scope: !624, file: !1, line: 143, type: !626)
!624 = distinct !DILexicalBlock(scope: !625, file: !1, line: 143, column: 7)
!625 = distinct !DILexicalBlock(scope: !616, file: !1, line: 142, column: 7)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !123)
!628 = !DILocalVariable(name: "o1", scope: !624, file: !1, line: 143, type: !122)
!629 = !DILocation(line: 138, column: 46, scope: !616)
!630 = !DILocation(line: 138, column: 66, scope: !616)
!631 = !DILocation(line: 138, column: 74, scope: !616)
!632 = !DILocation(line: 139, column: 21, scope: !616)
!633 = !DILocation(line: 139, column: 35, scope: !616)
!634 = !DILocation(line: 139, column: 29, scope: !616)
!635 = !DILocation(line: 139, column: 13, scope: !616)
!636 = !DILocation(line: 112, column: 42, scope: !532, inlinedAt: !637)
!637 = distinct !DILocation(line: 140, column: 22, scope: !616)
!638 = !DILocation(line: 112, column: 55, scope: !532, inlinedAt: !637)
!639 = !DILocation(line: 112, column: 63, scope: !532, inlinedAt: !637)
!640 = !DILocation(line: 107, column: 38, scope: !550, inlinedAt: !641)
!641 = distinct !DILocation(line: 114, column: 15, scope: !532, inlinedAt: !637)
!642 = !DILocation(line: 108, column: 11, scope: !550, inlinedAt: !641)
!643 = !DILocation(line: 108, column: 3, scope: !550, inlinedAt: !641)
!644 = !DILocation(line: 115, column: 10, scope: !544, inlinedAt: !637)
!645 = !DILocation(line: 108, column: 38, scope: !550, inlinedAt: !641)
!646 = !DILocation(line: 114, column: 10, scope: !532, inlinedAt: !637)
!647 = !DILocation(line: 115, column: 7, scope: !544, inlinedAt: !637)
!648 = !DILocation(line: 36, column: 34, scope: !564, inlinedAt: !649)
!649 = distinct !DILocation(line: 115, column: 46, scope: !544, inlinedAt: !637)
!650 = !DILocation(line: 36, column: 47, scope: !564, inlinedAt: !649)
!651 = !DILocation(line: 38, column: 16, scope: !573, inlinedAt: !649)
!652 = !DILocation(line: 38, column: 10, scope: !573, inlinedAt: !649)
!653 = !DILocation(line: 38, column: 7, scope: !564, inlinedAt: !649)
!654 = !DILocation(line: 37, column: 7, scope: !564, inlinedAt: !649)
!655 = !DILocation(line: 40, column: 10, scope: !564, inlinedAt: !649)
!656 = !DILocation(line: 37, column: 8, scope: !580, inlinedAt: !649)
!657 = !DILocation(line: 39, column: 22, scope: !573, inlinedAt: !649)
!658 = !DILocation(line: 39, column: 9, scope: !573, inlinedAt: !649)
!659 = !DILocation(line: 39, column: 17, scope: !573, inlinedAt: !649)
!660 = !DILocation(line: 39, column: 5, scope: !573, inlinedAt: !649)
!661 = !DILocation(line: 41, column: 1, scope: !564, inlinedAt: !649)
!662 = !DILocation(line: 115, column: 21, scope: !544, inlinedAt: !637)
!663 = !DILocation(line: 113, column: 15, scope: !532, inlinedAt: !637)
!664 = !DILocation(line: 115, column: 65, scope: !544, inlinedAt: !637)
!665 = !DILocation(line: 115, column: 7, scope: !532, inlinedAt: !637)
!666 = !DILocation(line: 143, column: 7, scope: !624)
!667 = !DILocation(line: 118, column: 29, scope: !543, inlinedAt: !637)
!668 = !DILocation(line: 118, column: 23, scope: !543, inlinedAt: !637)
!669 = !DILocation(line: 118, column: 38, scope: !543, inlinedAt: !637)
!670 = !DILocation(line: 118, column: 52, scope: !543, inlinedAt: !637)
!671 = !DILocation(line: 118, column: 19, scope: !543, inlinedAt: !637)
!672 = !DILocation(line: 118, column: 11, scope: !543, inlinedAt: !637)
!673 = !DILocation(line: 119, column: 21, scope: !604, inlinedAt: !637)
!674 = !DILocation(line: 119, column: 15, scope: !604, inlinedAt: !637)
!675 = !DILocation(line: 119, column: 29, scope: !604, inlinedAt: !637)
!676 = !DILocation(line: 119, column: 26, scope: !604, inlinedAt: !637)
!677 = !DILocation(line: 119, column: 36, scope: !604, inlinedAt: !637)
!678 = !DILocation(line: 119, column: 31, scope: !604, inlinedAt: !637)
!679 = !DILocation(line: 124, column: 1, scope: !532, inlinedAt: !637)
!680 = !DILocation(line: 140, column: 15, scope: !616)
!681 = !{!414, !415, i64 16}
!682 = !DILocation(line: 144, column: 6, scope: !616)
!683 = !DILocation(line: 144, column: 9, scope: !616)
!684 = !DILocation(line: 146, column: 3, scope: !616)
!685 = distinct !DISubprogram(name: "lua_getinfo", scope: !1, file: !1, line: 232, type: !686, isLocal: false, isDefinition: true, scopeLine: 232, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !688)
!686 = !DISubroutineType(types: !687)
!687 = !{!61, !179, !307, !301}
!688 = !{!689, !690, !691, !692, !693, !696, !697, !700}
!689 = !DILocalVariable(name: "L", arg: 1, scope: !685, file: !1, line: 232, type: !179)
!690 = !DILocalVariable(name: "what", arg: 2, scope: !685, file: !1, line: 232, type: !307)
!691 = !DILocalVariable(name: "ar", arg: 3, scope: !685, file: !1, line: 232, type: !301)
!692 = !DILocalVariable(name: "status", scope: !685, file: !1, line: 233, type: !61)
!693 = !DILocalVariable(name: "f", scope: !685, file: !1, line: 234, type: !694)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "Closure", file: !64, line: 312, baseType: !161)
!696 = !DILocalVariable(name: "ci", scope: !685, file: !1, line: 235, type: !269)
!697 = !DILocalVariable(name: "func", scope: !698, file: !1, line: 238, type: !188)
!698 = distinct !DILexicalBlock(scope: !699, file: !1, line: 237, column: 21)
!699 = distinct !DILexicalBlock(scope: !685, file: !1, line: 237, column: 7)
!700 = !DILocalVariable(name: "i_o", scope: !701, file: !1, line: 252, type: !122)
!701 = distinct !DILexicalBlock(scope: !702, file: !1, line: 252, column: 10)
!702 = distinct !DILexicalBlock(scope: !703, file: !1, line: 251, column: 9)
!703 = distinct !DILexicalBlock(scope: !704, file: !1, line: 250, column: 26)
!704 = distinct !DILexicalBlock(scope: !685, file: !1, line: 250, column: 7)
!705 = !DILocation(line: 232, column: 37, scope: !685)
!706 = !DILocation(line: 232, column: 52, scope: !685)
!707 = !DILocation(line: 232, column: 69, scope: !685)
!708 = !DILocation(line: 234, column: 12, scope: !685)
!709 = !DILocation(line: 235, column: 13, scope: !685)
!710 = !DILocation(line: 237, column: 7, scope: !699)
!711 = !DILocation(line: 237, column: 13, scope: !699)
!712 = !DILocation(line: 237, column: 7, scope: !685)
!713 = !DILocation(line: 238, column: 21, scope: !698)
!714 = !DILocation(line: 238, column: 11, scope: !698)
!715 = !DILocation(line: 240, column: 9, scope: !698)
!716 = !DILocation(line: 241, column: 9, scope: !698)
!717 = !DILocation(line: 242, column: 11, scope: !698)
!718 = !DILocation(line: 243, column: 3, scope: !698)
!719 = !DILocation(line: 244, column: 16, scope: !720)
!720 = distinct !DILexicalBlock(scope: !699, file: !1, line: 244, column: 12)
!721 = !DILocation(line: 244, column: 21, scope: !720)
!722 = !DILocation(line: 244, column: 12, scope: !699)
!723 = !DILocation(line: 245, column: 13, scope: !724)
!724 = distinct !DILexicalBlock(scope: !720, file: !1, line: 244, column: 27)
!725 = !DILocation(line: 245, column: 21, scope: !724)
!726 = !DILocation(line: 247, column: 9, scope: !724)
!727 = !DILocation(line: 248, column: 3, scope: !724)
!728 = !DILocation(line: 0, scope: !685)
!729 = !DILocalVariable(name: "L", arg: 1, scope: !730, file: !1, line: 193, type: !179)
!730 = distinct !DISubprogram(name: "auxgetinfo", scope: !1, file: !1, line: 193, type: !731, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !733)
!731 = !DISubroutineType(types: !732)
!732 = !{!61, !179, !307, !301, !694, !269}
!733 = !{!729, !734, !735, !736, !737, !738}
!734 = !DILocalVariable(name: "what", arg: 2, scope: !730, file: !1, line: 193, type: !307)
!735 = !DILocalVariable(name: "ar", arg: 3, scope: !730, file: !1, line: 193, type: !301)
!736 = !DILocalVariable(name: "f", arg: 4, scope: !730, file: !1, line: 194, type: !694)
!737 = !DILocalVariable(name: "ci", arg: 5, scope: !730, file: !1, line: 194, type: !269)
!738 = !DILocalVariable(name: "status", scope: !730, file: !1, line: 195, type: !61)
!739 = !DILocation(line: 193, column: 35, scope: !730, inlinedAt: !740)
!740 = distinct !DILocation(line: 249, column: 12, scope: !685)
!741 = !DILocation(line: 193, column: 50, scope: !730, inlinedAt: !740)
!742 = !DILocation(line: 193, column: 67, scope: !730, inlinedAt: !740)
!743 = !DILocation(line: 194, column: 30, scope: !730, inlinedAt: !740)
!744 = !DILocation(line: 194, column: 43, scope: !730, inlinedAt: !740)
!745 = !DILocation(line: 195, column: 7, scope: !730, inlinedAt: !740)
!746 = !DILocation(line: 196, column: 9, scope: !747, inlinedAt: !740)
!747 = distinct !DILexicalBlock(scope: !730, file: !1, line: 196, column: 7)
!748 = !DILocation(line: 196, column: 7, scope: !730, inlinedAt: !740)
!749 = !DILocation(line: 200, column: 10, scope: !750, inlinedAt: !740)
!750 = distinct !DILexicalBlock(scope: !751, file: !1, line: 200, column: 3)
!751 = distinct !DILexicalBlock(scope: !730, file: !1, line: 200, column: 3)
!752 = !DILocation(line: 200, column: 3, scope: !751, inlinedAt: !740)
!753 = !DILocalVariable(name: "ar", arg: 1, scope: !754, file: !1, line: 167, type: !301)
!754 = distinct !DISubprogram(name: "info_tailcall", scope: !1, file: !1, line: 167, type: !755, isLocal: true, isDefinition: true, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !757)
!755 = !DISubroutineType(types: !756)
!756 = !{null, !301}
!757 = !{!753}
!758 = !DILocation(line: 167, column: 39, scope: !754, inlinedAt: !759)
!759 = distinct !DILocation(line: 197, column: 5, scope: !760, inlinedAt: !740)
!760 = distinct !DILexicalBlock(scope: !747, file: !1, line: 196, column: 18)
!761 = !DILocation(line: 168, column: 7, scope: !754, inlinedAt: !759)
!762 = !DILocation(line: 168, column: 12, scope: !754, inlinedAt: !759)
!763 = !DILocation(line: 169, column: 7, scope: !754, inlinedAt: !759)
!764 = !DILocation(line: 170, column: 47, scope: !754, inlinedAt: !759)
!765 = !DILocation(line: 170, column: 59, scope: !754, inlinedAt: !759)
!766 = !{!504, !418, i64 40}
!767 = !DILocation(line: 170, column: 29, scope: !754, inlinedAt: !759)
!768 = !DILocation(line: 170, column: 41, scope: !754, inlinedAt: !759)
!769 = !{!504, !418, i64 48}
!770 = !DILocation(line: 170, column: 7, scope: !754, inlinedAt: !759)
!771 = !DILocation(line: 170, column: 23, scope: !754, inlinedAt: !759)
!772 = !{!504, !418, i64 52}
!773 = !DILocation(line: 169, column: 12, scope: !754, inlinedAt: !759)
!774 = !DILocation(line: 172, column: 16, scope: !754, inlinedAt: !759)
!775 = !DILocation(line: 172, column: 3, scope: !754, inlinedAt: !759)
!776 = !DILocation(line: 173, column: 7, scope: !754, inlinedAt: !759)
!777 = !DILocation(line: 173, column: 12, scope: !754, inlinedAt: !759)
!778 = !{!504, !418, i64 44}
!779 = !DILocation(line: 174, column: 1, scope: !754, inlinedAt: !759)
!780 = !DILocation(line: 198, column: 5, scope: !760, inlinedAt: !740)
!781 = !DILocation(line: 201, column: 13, scope: !782, inlinedAt: !740)
!782 = distinct !DILexicalBlock(scope: !750, file: !1, line: 200, column: 25)
!783 = !DILocation(line: 201, column: 5, scope: !782, inlinedAt: !740)
!784 = !DILocalVariable(name: "ar", arg: 1, scope: !785, file: !1, line: 150, type: !301)
!785 = distinct !DISubprogram(name: "funcinfo", scope: !1, file: !1, line: 150, type: !786, isLocal: true, isDefinition: true, scopeLine: 150, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !788)
!786 = !DISubroutineType(types: !787)
!787 = !{null, !301, !694}
!788 = !{!784, !789}
!789 = !DILocalVariable(name: "cl", arg: 2, scope: !785, file: !1, line: 150, type: !694)
!790 = !DILocation(line: 150, column: 34, scope: !785, inlinedAt: !791)
!791 = distinct !DILocation(line: 203, column: 9, scope: !792, inlinedAt: !740)
!792 = distinct !DILexicalBlock(scope: !793, file: !1, line: 202, column: 17)
!793 = distinct !DILexicalBlock(scope: !782, file: !1, line: 201, column: 20)
!794 = !DILocation(line: 150, column: 47, scope: !785, inlinedAt: !791)
!795 = !DILocation(line: 151, column: 13, scope: !796, inlinedAt: !791)
!796 = distinct !DILexicalBlock(scope: !785, file: !1, line: 151, column: 7)
!797 = !DILocation(line: 151, column: 7, scope: !796, inlinedAt: !791)
!798 = !DILocation(line: 151, column: 7, scope: !785, inlinedAt: !791)
!799 = !DILocation(line: 152, column: 16, scope: !800, inlinedAt: !791)
!800 = distinct !DILexicalBlock(scope: !796, file: !1, line: 151, column: 18)
!801 = !{!504, !415, i64 32}
!802 = !DILocation(line: 153, column: 21, scope: !800, inlinedAt: !791)
!803 = !DILocation(line: 156, column: 3, scope: !800, inlinedAt: !791)
!804 = !DILocation(line: 158, column: 18, scope: !805, inlinedAt: !791)
!805 = distinct !DILexicalBlock(scope: !796, file: !1, line: 157, column: 8)
!806 = !{!587, !415, i64 64}
!807 = !DILocation(line: 158, column: 16, scope: !805, inlinedAt: !791)
!808 = !DILocation(line: 159, column: 29, scope: !805, inlinedAt: !791)
!809 = !DILocation(line: 159, column: 32, scope: !805, inlinedAt: !791)
!810 = !{!587, !418, i64 96}
!811 = !DILocation(line: 159, column: 21, scope: !805, inlinedAt: !791)
!812 = !DILocation(line: 160, column: 33, scope: !805, inlinedAt: !791)
!813 = !DILocation(line: 160, column: 36, scope: !805, inlinedAt: !791)
!814 = !{!587, !418, i64 100}
!815 = !DILocation(line: 161, column: 33, scope: !805, inlinedAt: !791)
!816 = !DILocation(line: 161, column: 16, scope: !805, inlinedAt: !791)
!817 = !DILocation(line: 163, column: 35, scope: !785, inlinedAt: !791)
!818 = !DILocation(line: 160, column: 25, scope: !805, inlinedAt: !791)
!819 = !DILocation(line: 161, column: 14, scope: !805, inlinedAt: !791)
!820 = !DILocation(line: 163, column: 3, scope: !785, inlinedAt: !791)
!821 = !DILocation(line: 164, column: 1, scope: !785, inlinedAt: !791)
!822 = !DILocation(line: 204, column: 9, scope: !792, inlinedAt: !740)
!823 = !DILocation(line: 207, column: 27, scope: !824, inlinedAt: !740)
!824 = distinct !DILexicalBlock(scope: !793, file: !1, line: 206, column: 17)
!825 = !DILocalVariable(name: "L", arg: 1, scope: !826, file: !1, line: 44, type: !179)
!826 = distinct !DISubprogram(name: "currentline", scope: !1, file: !1, line: 44, type: !565, isLocal: true, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !827)
!827 = !{!825, !828, !829}
!828 = !DILocalVariable(name: "ci", arg: 2, scope: !826, file: !1, line: 44, type: !269)
!829 = !DILocalVariable(name: "pc", scope: !826, file: !1, line: 45, type: !61)
!830 = !DILocation(line: 44, column: 36, scope: !826, inlinedAt: !831)
!831 = distinct !DILocation(line: 207, column: 34, scope: !824, inlinedAt: !740)
!832 = !DILocation(line: 44, column: 49, scope: !826, inlinedAt: !831)
!833 = !DILocation(line: 36, column: 34, scope: !564, inlinedAt: !834)
!834 = distinct !DILocation(line: 45, column: 12, scope: !826, inlinedAt: !831)
!835 = !DILocation(line: 36, column: 47, scope: !564, inlinedAt: !834)
!836 = !DILocation(line: 37, column: 8, scope: !580, inlinedAt: !834)
!837 = !DILocation(line: 37, column: 7, scope: !564, inlinedAt: !834)
!838 = !DILocation(line: 38, column: 16, scope: !573, inlinedAt: !834)
!839 = !DILocation(line: 38, column: 10, scope: !573, inlinedAt: !834)
!840 = !DILocation(line: 38, column: 7, scope: !564, inlinedAt: !834)
!841 = !DILocation(line: 40, column: 10, scope: !564, inlinedAt: !834)
!842 = !DILocation(line: 39, column: 22, scope: !573, inlinedAt: !834)
!843 = !DILocation(line: 39, column: 17, scope: !573, inlinedAt: !834)
!844 = !DILocation(line: 39, column: 5, scope: !573, inlinedAt: !834)
!845 = !DILocation(line: 41, column: 1, scope: !564, inlinedAt: !834)
!846 = !DILocation(line: 46, column: 7, scope: !826, inlinedAt: !831)
!847 = !DILocation(line: 45, column: 7, scope: !826, inlinedAt: !831)
!848 = !DILocation(line: 46, column: 10, scope: !849, inlinedAt: !831)
!849 = distinct !DILexicalBlock(scope: !826, file: !1, line: 46, column: 7)
!850 = !DILocation(line: 49, column: 12, scope: !849, inlinedAt: !831)
!851 = !{!587, !415, i64 40}
!852 = !{!418, !418, i64 0}
!853 = !DILocation(line: 0, scope: !849, inlinedAt: !831)
!854 = !DILocation(line: 50, column: 1, scope: !826, inlinedAt: !831)
!855 = !DILocation(line: 207, column: 25, scope: !824, inlinedAt: !740)
!856 = !DILocation(line: 208, column: 9, scope: !824, inlinedAt: !740)
!857 = !DILocation(line: 211, column: 25, scope: !858, inlinedAt: !740)
!858 = distinct !DILexicalBlock(scope: !793, file: !1, line: 210, column: 17)
!859 = !DILocation(line: 211, column: 20, scope: !858, inlinedAt: !740)
!860 = !DILocation(line: 211, column: 18, scope: !858, inlinedAt: !740)
!861 = !DILocation(line: 212, column: 9, scope: !858, inlinedAt: !740)
!862 = !DILocation(line: 215, column: 24, scope: !863, inlinedAt: !740)
!863 = distinct !DILexicalBlock(scope: !793, file: !1, line: 214, column: 17)
!864 = !DILocalVariable(name: "L", arg: 1, scope: !865, file: !1, line: 544, type: !179)
!865 = distinct !DISubprogram(name: "getfuncname", scope: !1, file: !1, line: 544, type: !866, isLocal: true, isDefinition: true, scopeLine: 544, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !869)
!866 = !DISubroutineType(types: !867)
!867 = !{!307, !179, !269, !868}
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!869 = !{!864, !870, !871, !872}
!870 = !DILocalVariable(name: "ci", arg: 2, scope: !865, file: !1, line: 544, type: !269)
!871 = !DILocalVariable(name: "name", arg: 3, scope: !865, file: !1, line: 544, type: !868)
!872 = !DILocalVariable(name: "i", scope: !865, file: !1, line: 545, type: !279)
!873 = !DILocation(line: 544, column: 44, scope: !865, inlinedAt: !874)
!874 = distinct !DILocation(line: 215, column: 31, scope: !863, inlinedAt: !740)
!875 = !DILocation(line: 544, column: 57, scope: !865, inlinedAt: !874)
!876 = !DILocation(line: 544, column: 74, scope: !865, inlinedAt: !874)
!877 = !DILocation(line: 546, column: 8, scope: !878, inlinedAt: !874)
!878 = distinct !DILexicalBlock(scope: !865, file: !1, line: 546, column: 7)
!879 = !DILocation(line: 546, column: 18, scope: !878, inlinedAt: !874)
!880 = !DILocation(line: 546, column: 25, scope: !878, inlinedAt: !874)
!881 = !DILocation(line: 546, column: 35, scope: !878, inlinedAt: !874)
!882 = !DILocation(line: 546, column: 40, scope: !878, inlinedAt: !874)
!883 = !DILocation(line: 546, column: 44, scope: !878, inlinedAt: !874)
!884 = !DILocation(line: 546, column: 7, scope: !865, inlinedAt: !874)
!885 = !DILocation(line: 549, column: 22, scope: !865, inlinedAt: !874)
!886 = !DILocation(line: 549, column: 25, scope: !865, inlinedAt: !874)
!887 = !DILocation(line: 36, column: 34, scope: !564, inlinedAt: !888)
!888 = distinct !DILocation(line: 549, column: 30, scope: !865, inlinedAt: !874)
!889 = !DILocation(line: 36, column: 47, scope: !564, inlinedAt: !888)
!890 = !DILocation(line: 38, column: 16, scope: !573, inlinedAt: !888)
!891 = !DILocation(line: 38, column: 10, scope: !573, inlinedAt: !888)
!892 = !DILocation(line: 38, column: 7, scope: !564, inlinedAt: !888)
!893 = !DILocation(line: 40, column: 10, scope: !564, inlinedAt: !888)
!894 = !DILocation(line: 39, column: 22, scope: !573, inlinedAt: !888)
!895 = !DILocation(line: 39, column: 17, scope: !573, inlinedAt: !888)
!896 = !DILocation(line: 39, column: 5, scope: !573, inlinedAt: !888)
!897 = !DILocation(line: 40, column: 3, scope: !564, inlinedAt: !888)
!898 = !DILocation(line: 549, column: 7, scope: !865, inlinedAt: !874)
!899 = !DILocation(line: 41, column: 1, scope: !564, inlinedAt: !888)
!900 = !DILocation(line: 545, column: 15, scope: !865, inlinedAt: !874)
!901 = !DILocation(line: 550, column: 32, scope: !902, inlinedAt: !874)
!902 = distinct !DILexicalBlock(scope: !865, file: !1, line: 550, column: 7)
!903 = !DILocation(line: 555, column: 1, scope: !865, inlinedAt: !874)
!904 = !DILocation(line: 216, column: 13, scope: !863, inlinedAt: !740)
!905 = !DILocation(line: 552, column: 30, scope: !902, inlinedAt: !874)
!906 = !DILocation(line: 552, column: 12, scope: !902, inlinedAt: !874)
!907 = !DILocation(line: 215, column: 22, scope: !863, inlinedAt: !740)
!908 = !{!504, !415, i64 16}
!909 = !DILocation(line: 216, column: 26, scope: !910, inlinedAt: !740)
!910 = distinct !DILexicalBlock(scope: !863, file: !1, line: 216, column: 13)
!911 = !DILocation(line: 217, column: 24, scope: !912, inlinedAt: !740)
!912 = distinct !DILexicalBlock(scope: !910, file: !1, line: 216, column: 35)
!913 = !DILocation(line: 218, column: 20, scope: !912, inlinedAt: !740)
!914 = !DILocation(line: 219, column: 9, scope: !912, inlinedAt: !740)
!915 = !DILocation(line: 226, column: 5, scope: !793, inlinedAt: !740)
!916 = !DILocation(line: 0, scope: !730, inlinedAt: !740)
!917 = !DILocation(line: 200, column: 21, scope: !750, inlinedAt: !740)
!918 = distinct !{!918, !919, !920}
!919 = !DILocation(line: 200, column: 3, scope: !751)
!920 = !DILocation(line: 227, column: 3, scope: !751)
!921 = !DILocation(line: 229, column: 1, scope: !730, inlinedAt: !740)
!922 = !DILocation(line: 233, column: 7, scope: !685)
!923 = !DILocation(line: 250, column: 7, scope: !704)
!924 = !DILocation(line: 250, column: 7, scope: !685)
!925 = !DILocation(line: 0, scope: !701)
!926 = !DILocation(line: 251, column: 9, scope: !703)
!927 = !DILocation(line: 252, column: 10, scope: !701)
!928 = !DILocation(line: 253, column: 5, scope: !929)
!929 = distinct !DILexicalBlock(scope: !930, file: !1, line: 253, column: 5)
!930 = distinct !DILexicalBlock(scope: !703, file: !1, line: 253, column: 5)
!931 = !{!414, !415, i64 56}
!932 = !DILocation(line: 253, column: 5, scope: !930)
!933 = !DILocation(line: 254, column: 3, scope: !703)
!934 = !DILocation(line: 255, column: 7, scope: !935)
!935 = distinct !DILexicalBlock(scope: !685, file: !1, line: 255, column: 7)
!936 = !DILocation(line: 255, column: 7, scope: !685)
!937 = !DILocalVariable(name: "L", arg: 1, scope: !938, file: !1, line: 177, type: !179)
!938 = distinct !DISubprogram(name: "collectvalidlines", scope: !1, file: !1, line: 177, type: !939, isLocal: true, isDefinition: true, scopeLine: 177, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !941)
!939 = !DISubroutineType(types: !940)
!940 = !{null, !179, !694}
!941 = !{!937, !942, !943, !948, !949, !950, !954}
!942 = !DILocalVariable(name: "f", arg: 2, scope: !938, file: !1, line: 177, type: !694)
!943 = !DILocalVariable(name: "t", scope: !944, file: !1, line: 182, type: !946)
!944 = distinct !DILexicalBlock(scope: !945, file: !1, line: 181, column: 8)
!945 = distinct !DILexicalBlock(scope: !938, file: !1, line: 178, column: 7)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_typedef, name: "Table", file: !64, line: 348, baseType: !113)
!948 = !DILocalVariable(name: "lineinfo", scope: !944, file: !1, line: 183, type: !359)
!949 = !DILocalVariable(name: "i", scope: !944, file: !1, line: 184, type: !61)
!950 = !DILocalVariable(name: "i_o", scope: !951, file: !1, line: 186, type: !122)
!951 = distinct !DILexicalBlock(scope: !952, file: !1, line: 186, column: 7)
!952 = distinct !DILexicalBlock(scope: !953, file: !1, line: 185, column: 5)
!953 = distinct !DILexicalBlock(scope: !944, file: !1, line: 185, column: 5)
!954 = !DILocalVariable(name: "i_o", scope: !955, file: !1, line: 187, type: !122)
!955 = distinct !DILexicalBlock(scope: !944, file: !1, line: 187, column: 5)
!956 = !DILocation(line: 177, column: 43, scope: !938, inlinedAt: !957)
!957 = distinct !DILocation(line: 256, column: 5, scope: !935)
!958 = !DILocation(line: 177, column: 55, scope: !938, inlinedAt: !957)
!959 = !DILocation(line: 178, column: 17, scope: !945, inlinedAt: !957)
!960 = !DILocation(line: 178, column: 25, scope: !945, inlinedAt: !957)
!961 = !DILocation(line: 178, column: 20, scope: !945, inlinedAt: !957)
!962 = !DILocation(line: 178, column: 7, scope: !938, inlinedAt: !957)
!963 = !DILocation(line: 179, column: 5, scope: !964, inlinedAt: !957)
!964 = distinct !DILexicalBlock(scope: !945, file: !1, line: 178, column: 30)
!965 = !DILocation(line: 180, column: 3, scope: !964, inlinedAt: !957)
!966 = !DILocation(line: 182, column: 16, scope: !944, inlinedAt: !957)
!967 = !DILocation(line: 182, column: 12, scope: !944, inlinedAt: !957)
!968 = !DILocation(line: 183, column: 26, scope: !944, inlinedAt: !957)
!969 = !DILocation(line: 183, column: 29, scope: !944, inlinedAt: !957)
!970 = !DILocation(line: 183, column: 10, scope: !944, inlinedAt: !957)
!971 = !DILocation(line: 184, column: 9, scope: !944, inlinedAt: !957)
!972 = !DILocation(line: 185, column: 25, scope: !952, inlinedAt: !957)
!973 = !{!587, !418, i64 84}
!974 = !DILocation(line: 185, column: 16, scope: !952, inlinedAt: !957)
!975 = !DILocation(line: 185, column: 5, scope: !953, inlinedAt: !957)
!976 = !DILocation(line: 186, column: 7, scope: !951, inlinedAt: !957)
!977 = !DILocation(line: 185, column: 40, scope: !952, inlinedAt: !957)
!978 = !DILocation(line: 185, column: 22, scope: !952, inlinedAt: !957)
!979 = distinct !{!979, !980, !981}
!980 = !DILocation(line: 185, column: 5, scope: !953)
!981 = !DILocation(line: 186, column: 7, scope: !953)
!982 = !DILocation(line: 187, column: 5, scope: !955, inlinedAt: !957)
!983 = !DILocation(line: 189, column: 3, scope: !984, inlinedAt: !957)
!984 = distinct !DILexicalBlock(scope: !985, file: !1, line: 189, column: 3)
!985 = distinct !DILexicalBlock(scope: !938, file: !1, line: 189, column: 3)
!986 = !DILocation(line: 189, column: 3, scope: !985, inlinedAt: !957)
!987 = !DILocation(line: 190, column: 1, scope: !938, inlinedAt: !957)
!988 = !DILocation(line: 256, column: 5, scope: !935)
!989 = !DILocation(line: 258, column: 3, scope: !685)
!990 = distinct !DISubprogram(name: "luaG_checkopenop", scope: !1, file: !1, line: 290, type: !991, isLocal: false, isDefinition: true, scopeLine: 290, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !993)
!991 = !DISubroutineType(types: !992)
!992 = !{!61, !279}
!993 = !{!994}
!994 = !DILocalVariable(name: "i", arg: 1, scope: !990, file: !1, line: 290, type: !279)
!995 = !DILocation(line: 290, column: 35, scope: !990)
!996 = !DILocation(line: 291, column: 3, scope: !990)
!997 = !DILocation(line: 296, column: 7, scope: !998)
!998 = distinct !DILexicalBlock(scope: !999, file: !1, line: 296, column: 7)
!999 = distinct !DILexicalBlock(scope: !1000, file: !1, line: 295, column: 22)
!1000 = distinct !DILexicalBlock(scope: !990, file: !1, line: 291, column: 26)
!1001 = !DILocation(line: 297, column: 7, scope: !999)
!1002 = !DILocation(line: 0, scope: !998)
!1003 = !DILocation(line: 301, column: 1, scope: !990)
!1004 = distinct !DISubprogram(name: "luaG_checkcode", scope: !1, file: !1, line: 484, type: !1005, isLocal: false, isDefinition: true, scopeLine: 484, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1009)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{!61, !1007}
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !541)
!1009 = !{!1010}
!1010 = !DILocalVariable(name: "pt", arg: 1, scope: !1004, file: !1, line: 484, type: !1007)
!1011 = !DILocation(line: 484, column: 34, scope: !1004)
!1012 = !DILocation(line: 485, column: 28, scope: !1004)
!1013 = !{!587, !418, i64 80}
!1014 = !DILocation(line: 485, column: 11, scope: !1004)
!1015 = !DILocation(line: 485, column: 46, scope: !1004)
!1016 = !DILocation(line: 485, column: 3, scope: !1004)
!1017 = distinct !DISubprogram(name: "symbexec", scope: !1, file: !1, line: 317, type: !1018, isLocal: true, isDefinition: true, scopeLine: 317, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1020)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{!279, !1007, !61, !61}
!1020 = !{!1021, !1022, !1023, !1024, !1025, !1026, !1030, !1031, !1032, !1033, !1034, !1039, !1042, !1046, !1049, !1051, !1052}
!1021 = !DILocalVariable(name: "pt", arg: 1, scope: !1017, file: !1, line: 317, type: !1007)
!1022 = !DILocalVariable(name: "lastpc", arg: 2, scope: !1017, file: !1, line: 317, type: !61)
!1023 = !DILocalVariable(name: "reg", arg: 3, scope: !1017, file: !1, line: 317, type: !61)
!1024 = !DILocalVariable(name: "pc", scope: !1017, file: !1, line: 318, type: !61)
!1025 = !DILocalVariable(name: "last", scope: !1017, file: !1, line: 319, type: !61)
!1026 = !DILocalVariable(name: "i", scope: !1027, file: !1, line: 323, type: !279)
!1027 = distinct !DILexicalBlock(scope: !1028, file: !1, line: 322, column: 35)
!1028 = distinct !DILexicalBlock(scope: !1029, file: !1, line: 322, column: 3)
!1029 = distinct !DILexicalBlock(scope: !1017, file: !1, line: 322, column: 3)
!1030 = !DILocalVariable(name: "op", scope: !1027, file: !1, line: 324, type: !390)
!1031 = !DILocalVariable(name: "a", scope: !1027, file: !1, line: 325, type: !61)
!1032 = !DILocalVariable(name: "b", scope: !1027, file: !1, line: 326, type: !61)
!1033 = !DILocalVariable(name: "c", scope: !1027, file: !1, line: 327, type: !61)
!1034 = !DILocalVariable(name: "dest", scope: !1035, file: !1, line: 346, type: !61)
!1035 = distinct !DILexicalBlock(scope: !1036, file: !1, line: 345, column: 37)
!1036 = distinct !DILexicalBlock(scope: !1037, file: !1, line: 345, column: 13)
!1037 = distinct !DILexicalBlock(scope: !1038, file: !1, line: 343, column: 19)
!1038 = distinct !DILexicalBlock(scope: !1027, file: !1, line: 330, column: 28)
!1039 = !DILocalVariable(name: "j", scope: !1040, file: !1, line: 349, type: !61)
!1040 = distinct !DILexicalBlock(scope: !1041, file: !1, line: 348, column: 25)
!1041 = distinct !DILexicalBlock(scope: !1035, file: !1, line: 348, column: 15)
!1042 = !DILocalVariable(name: "d", scope: !1043, file: !1, line: 355, type: !279)
!1043 = distinct !DILexicalBlock(scope: !1044, file: !1, line: 354, column: 40)
!1044 = distinct !DILexicalBlock(scope: !1045, file: !1, line: 354, column: 13)
!1045 = distinct !DILexicalBlock(scope: !1040, file: !1, line: 354, column: 13)
!1046 = !DILocalVariable(name: "dest", scope: !1047, file: !1, line: 417, type: !61)
!1047 = distinct !DILexicalBlock(scope: !1048, file: !1, line: 416, column: 20)
!1048 = distinct !DILexicalBlock(scope: !1027, file: !1, line: 373, column: 17)
!1049 = !DILocalVariable(name: "nup", scope: !1050, file: !1, line: 451, type: !61)
!1050 = distinct !DILexicalBlock(scope: !1048, file: !1, line: 450, column: 24)
!1051 = !DILocalVariable(name: "j", scope: !1050, file: !1, line: 451, type: !61)
!1052 = !DILocalVariable(name: "op1", scope: !1053, file: !1, line: 456, type: !390)
!1053 = distinct !DILexicalBlock(scope: !1054, file: !1, line: 455, column: 36)
!1054 = distinct !DILexicalBlock(scope: !1055, file: !1, line: 455, column: 9)
!1055 = distinct !DILexicalBlock(scope: !1050, file: !1, line: 455, column: 9)
!1056 = !DILocation(line: 317, column: 43, scope: !1017)
!1057 = !DILocation(line: 317, column: 51, scope: !1017)
!1058 = !DILocation(line: 317, column: 63, scope: !1017)
!1059 = !DILocation(line: 320, column: 14, scope: !1017)
!1060 = !DILocalVariable(name: "pt", arg: 1, scope: !1061, file: !1, line: 276, type: !1007)
!1061 = distinct !DISubprogram(name: "precheck", scope: !1, file: !1, line: 276, type: !1005, isLocal: true, isDefinition: true, scopeLine: 276, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1062)
!1062 = !{!1060}
!1063 = !DILocation(line: 276, column: 35, scope: !1061, inlinedAt: !1064)
!1064 = distinct !DILocation(line: 321, column: 3, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1017, file: !1, line: 321, column: 3)
!1066 = !DILocation(line: 277, column: 3, scope: !1067, inlinedAt: !1064)
!1067 = distinct !DILexicalBlock(scope: !1061, file: !1, line: 277, column: 3)
!1068 = !{!587, !416, i64 115}
!1069 = !DILocation(line: 277, column: 3, scope: !1061, inlinedAt: !1064)
!1070 = !DILocation(line: 278, column: 3, scope: !1071, inlinedAt: !1064)
!1071 = distinct !DILexicalBlock(scope: !1061, file: !1, line: 278, column: 3)
!1072 = !{!587, !416, i64 113}
!1073 = !{!587, !416, i64 114}
!1074 = !DILocation(line: 279, column: 3, scope: !1075, inlinedAt: !1064)
!1075 = distinct !DILexicalBlock(scope: !1061, file: !1, line: 279, column: 3)
!1076 = !DILocation(line: 278, column: 3, scope: !1061, inlinedAt: !1064)
!1077 = !DILocation(line: 281, column: 3, scope: !1078, inlinedAt: !1064)
!1078 = distinct !DILexicalBlock(scope: !1061, file: !1, line: 281, column: 3)
!1079 = !{!587, !418, i64 72}
!1080 = !{!587, !416, i64 112}
!1081 = !DILocation(line: 281, column: 3, scope: !1061, inlinedAt: !1064)
!1082 = !DILocation(line: 282, column: 3, scope: !1083, inlinedAt: !1064)
!1083 = distinct !DILexicalBlock(scope: !1061, file: !1, line: 282, column: 3)
!1084 = !DILocation(line: 283, column: 3, scope: !1085, inlinedAt: !1064)
!1085 = distinct !DILexicalBlock(scope: !1061, file: !1, line: 283, column: 3)
!1086 = !DILocation(line: 285, column: 1, scope: !1061, inlinedAt: !1064)
!1087 = !DILocation(line: 321, column: 3, scope: !1017)
!1088 = !DILocation(line: 319, column: 7, scope: !1017)
!1089 = !DILocation(line: 318, column: 7, scope: !1017)
!1090 = !DILocation(line: 322, column: 19, scope: !1028)
!1091 = !DILocation(line: 322, column: 3, scope: !1029)
!1092 = !DILocation(line: 323, column: 21, scope: !1027)
!1093 = !DILocation(line: 323, column: 17, scope: !1027)
!1094 = !DILocation(line: 324, column: 17, scope: !1027)
!1095 = !DILocation(line: 324, column: 12, scope: !1027)
!1096 = !DILocation(line: 325, column: 13, scope: !1027)
!1097 = !DILocation(line: 325, column: 9, scope: !1027)
!1098 = !DILocation(line: 326, column: 9, scope: !1027)
!1099 = !DILocation(line: 327, column: 9, scope: !1027)
!1100 = !DILocation(line: 328, column: 5, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1027, file: !1, line: 328, column: 5)
!1102 = !DILocation(line: 329, column: 5, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1027, file: !1, line: 329, column: 5)
!1104 = !DILocation(line: 328, column: 5, scope: !1027)
!1105 = !DILocation(line: 330, column: 13, scope: !1027)
!1106 = !DILocation(line: 330, column: 5, scope: !1027)
!1107 = !DILocation(line: 332, column: 13, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1038, file: !1, line: 331, column: 18)
!1109 = !DILocation(line: 333, column: 13, scope: !1108)
!1110 = !DILocalVariable(name: "pt", arg: 1, scope: !1111, file: !1, line: 304, type: !1007)
!1111 = distinct !DISubprogram(name: "checkArgMode", scope: !1, file: !1, line: 304, type: !1112, isLocal: true, isDefinition: true, scopeLine: 304, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1114)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{!61, !1007, !61, !50}
!1114 = !{!1110, !1115, !1116}
!1115 = !DILocalVariable(name: "r", arg: 2, scope: !1111, file: !1, line: 304, type: !61)
!1116 = !DILocalVariable(name: "mode", arg: 3, scope: !1111, file: !1, line: 304, type: !50)
!1117 = !DILocation(line: 304, column: 39, scope: !1111, inlinedAt: !1118)
!1118 = distinct !DILocation(line: 334, column: 9, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1108, file: !1, line: 334, column: 9)
!1120 = !DILocation(line: 304, column: 47, scope: !1111, inlinedAt: !1118)
!1121 = !DILocation(line: 304, column: 65, scope: !1111, inlinedAt: !1118)
!1122 = !DILocation(line: 305, column: 3, scope: !1111, inlinedAt: !1118)
!1123 = !DILocation(line: 306, column: 18, scope: !1124, inlinedAt: !1118)
!1124 = distinct !DILexicalBlock(scope: !1125, file: !1, line: 306, column: 18)
!1125 = distinct !DILexicalBlock(scope: !1111, file: !1, line: 305, column: 17)
!1126 = !DILocation(line: 306, column: 18, scope: !1125, inlinedAt: !1118)
!1127 = !DILocation(line: 308, column: 18, scope: !1128, inlinedAt: !1118)
!1128 = distinct !DILexicalBlock(scope: !1125, file: !1, line: 308, column: 18)
!1129 = !DILocation(line: 308, column: 18, scope: !1125, inlinedAt: !1118)
!1130 = !DILocation(line: 310, column: 7, scope: !1131, inlinedAt: !1118)
!1131 = distinct !DILexicalBlock(scope: !1125, file: !1, line: 310, column: 7)
!1132 = !DILocation(line: 310, column: 7, scope: !1125, inlinedAt: !1118)
!1133 = !{!587, !418, i64 76}
!1134 = !DILocation(line: 314, column: 1, scope: !1111, inlinedAt: !1118)
!1135 = !DILocation(line: 334, column: 9, scope: !1108)
!1136 = !DILocation(line: 335, column: 9, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1108, file: !1, line: 335, column: 9)
!1138 = !DILocation(line: 304, column: 39, scope: !1111, inlinedAt: !1139)
!1139 = distinct !DILocation(line: 335, column: 9, scope: !1137)
!1140 = !DILocation(line: 304, column: 47, scope: !1111, inlinedAt: !1139)
!1141 = !DILocation(line: 305, column: 3, scope: !1111, inlinedAt: !1139)
!1142 = !DILocation(line: 306, column: 18, scope: !1124, inlinedAt: !1139)
!1143 = !DILocation(line: 306, column: 18, scope: !1125, inlinedAt: !1139)
!1144 = !DILocation(line: 308, column: 18, scope: !1128, inlinedAt: !1139)
!1145 = !DILocation(line: 308, column: 18, scope: !1125, inlinedAt: !1139)
!1146 = !DILocation(line: 310, column: 7, scope: !1131, inlinedAt: !1139)
!1147 = !DILocation(line: 310, column: 7, scope: !1125, inlinedAt: !1139)
!1148 = !DILocation(line: 314, column: 1, scope: !1111, inlinedAt: !1139)
!1149 = !DILocation(line: 335, column: 9, scope: !1108)
!1150 = !DILocation(line: 339, column: 13, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1038, file: !1, line: 338, column: 18)
!1152 = !DILocation(line: 340, column: 13, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1151, file: !1, line: 340, column: 13)
!1154 = !DILocation(line: 340, column: 26, scope: !1153)
!1155 = !DILocation(line: 340, column: 13, scope: !1151)
!1156 = !DILocation(line: 340, column: 37, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1153, file: !1, line: 340, column: 37)
!1158 = !DILocation(line: 340, column: 37, scope: !1153)
!1159 = !DILocation(line: 344, column: 13, scope: !1037)
!1160 = !DILocation(line: 345, column: 13, scope: !1036)
!1161 = !DILocation(line: 345, column: 26, scope: !1036)
!1162 = !DILocation(line: 345, column: 13, scope: !1037)
!1163 = !DILocation(line: 346, column: 24, scope: !1035)
!1164 = !DILocation(line: 346, column: 26, scope: !1035)
!1165 = !DILocation(line: 346, column: 15, scope: !1035)
!1166 = !DILocation(line: 347, column: 11, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1035, file: !1, line: 347, column: 11)
!1168 = !DILocation(line: 348, column: 20, scope: !1041)
!1169 = !DILocation(line: 348, column: 15, scope: !1035)
!1170 = !DILocation(line: 355, column: 44, scope: !1043)
!1171 = !DILocation(line: 349, column: 17, scope: !1040)
!1172 = !DILocation(line: 354, column: 13, scope: !1045)
!1173 = !DILocation(line: 355, column: 46, scope: !1043)
!1174 = !DILocation(line: 355, column: 31, scope: !1043)
!1175 = !DILocation(line: 355, column: 27, scope: !1043)
!1176 = !DILocation(line: 356, column: 49, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1043, file: !1, line: 356, column: 19)
!1178 = !DILocation(line: 354, column: 36, scope: !1044)
!1179 = !DILocation(line: 354, column: 27, scope: !1044)
!1180 = distinct !{!1180, !1172, !1181}
!1181 = !DILocation(line: 357, column: 13, scope: !1045)
!1182 = !DILocation(line: 360, column: 13, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1040, file: !1, line: 360, column: 13)
!1184 = !DILocation(line: 0, scope: !1044)
!1185 = !DILocation(line: 0, scope: !1108)
!1186 = !DILocation(line: 366, column: 9, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1027, file: !1, line: 366, column: 9)
!1188 = !DILocation(line: 367, column: 13, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1190, file: !1, line: 367, column: 11)
!1190 = distinct !DILexicalBlock(scope: !1187, file: !1, line: 366, column: 24)
!1191 = !DILocation(line: 366, column: 9, scope: !1027)
!1192 = !DILocation(line: 369, column: 9, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1027, file: !1, line: 369, column: 9)
!1194 = !DILocation(line: 369, column: 9, scope: !1027)
!1195 = !DILocation(line: 370, column: 7, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1197, file: !1, line: 370, column: 7)
!1197 = distinct !DILexicalBlock(scope: !1193, file: !1, line: 369, column: 24)
!1198 = !DILocation(line: 370, column: 7, scope: !1197)
!1199 = !DILocation(line: 371, column: 7, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1197, file: !1, line: 371, column: 7)
!1201 = !DILocation(line: 371, column: 7, scope: !1197)
!1202 = !DILocation(line: 373, column: 5, scope: !1027)
!1203 = !DILocation(line: 375, column: 15, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1205, file: !1, line: 375, column: 13)
!1205 = distinct !DILexicalBlock(scope: !1048, file: !1, line: 374, column: 25)
!1206 = !DILocation(line: 375, column: 13, scope: !1205)
!1207 = !DILocation(line: 376, column: 11, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1209, file: !1, line: 376, column: 11)
!1209 = distinct !DILexicalBlock(scope: !1204, file: !1, line: 375, column: 21)
!1210 = !DILocation(line: 376, column: 11, scope: !1209)
!1211 = !DILocation(line: 377, column: 11, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1209, file: !1, line: 377, column: 11)
!1213 = !DILocation(line: 383, column: 15, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1215, file: !1, line: 383, column: 13)
!1215 = distinct !DILexicalBlock(scope: !1048, file: !1, line: 382, column: 24)
!1216 = !DILocation(line: 383, column: 29, scope: !1214)
!1217 = !DILocation(line: 383, column: 22, scope: !1214)
!1218 = !DILocation(line: 389, column: 9, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1220, file: !1, line: 389, column: 9)
!1220 = distinct !DILexicalBlock(scope: !1048, file: !1, line: 388, column: 25)
!1221 = !DILocation(line: 389, column: 9, scope: !1220)
!1222 = !DILocation(line: 394, column: 9, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1224, file: !1, line: 394, column: 9)
!1224 = distinct !DILexicalBlock(scope: !1048, file: !1, line: 393, column: 26)
!1225 = !{!587, !415, i64 16}
!1226 = !DILocation(line: 394, column: 9, scope: !1224)
!1227 = !DILocation(line: 398, column: 9, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1229, file: !1, line: 398, column: 9)
!1229 = distinct !DILexicalBlock(scope: !1048, file: !1, line: 397, column: 21)
!1230 = !DILocation(line: 398, column: 9, scope: !1229)
!1231 = !DILocation(line: 399, column: 17, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1229, file: !1, line: 399, column: 13)
!1233 = !DILocation(line: 399, column: 13, scope: !1229)
!1234 = !DILocation(line: 403, column: 9, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1236, file: !1, line: 403, column: 9)
!1236 = distinct !DILexicalBlock(scope: !1048, file: !1, line: 402, column: 23)
!1237 = !DILocation(line: 403, column: 9, scope: !1236)
!1238 = !DILocation(line: 407, column: 9, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1240, file: !1, line: 407, column: 9)
!1240 = distinct !DILexicalBlock(scope: !1048, file: !1, line: 406, column: 25)
!1241 = !DILocation(line: 407, column: 9, scope: !1240)
!1242 = !DILocation(line: 408, column: 9, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1240, file: !1, line: 408, column: 9)
!1244 = !DILocation(line: 408, column: 9, scope: !1240)
!1245 = !DILocation(line: 409, column: 17, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1240, file: !1, line: 409, column: 13)
!1247 = !DILocation(line: 409, column: 13, scope: !1240)
!1248 = !DILocation(line: 414, column: 9, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1048, file: !1, line: 414, column: 9)
!1250 = !DILocation(line: 414, column: 9, scope: !1048)
!1251 = !DILocation(line: 417, column: 22, scope: !1047)
!1252 = !DILocation(line: 417, column: 24, scope: !1047)
!1253 = !DILocation(line: 417, column: 13, scope: !1047)
!1254 = !DILocation(line: 419, column: 33, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1047, file: !1, line: 419, column: 13)
!1256 = !DILocation(line: 419, column: 27, scope: !1255)
!1257 = !DILocation(line: 419, column: 48, scope: !1255)
!1258 = !DILocation(line: 425, column: 15, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1260, file: !1, line: 425, column: 13)
!1260 = distinct !DILexicalBlock(scope: !1048, file: !1, line: 424, column: 25)
!1261 = !DILocation(line: 426, column: 11, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1263, file: !1, line: 426, column: 11)
!1263 = distinct !DILexicalBlock(scope: !1259, file: !1, line: 425, column: 21)
!1264 = !DILocation(line: 425, column: 13, scope: !1260)
!1265 = !DILocation(line: 428, column: 10, scope: !1260)
!1266 = !DILocation(line: 429, column: 15, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1260, file: !1, line: 429, column: 13)
!1268 = !DILocation(line: 429, column: 13, scope: !1260)
!1269 = !DILocation(line: 430, column: 11, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1271, file: !1, line: 430, column: 11)
!1271 = distinct !DILexicalBlock(scope: !1267, file: !1, line: 429, column: 31)
!1272 = !DILocation(line: 290, column: 35, scope: !990, inlinedAt: !1273)
!1273 = distinct !DILocation(line: 430, column: 11, scope: !1270)
!1274 = !DILocation(line: 291, column: 3, scope: !990, inlinedAt: !1273)
!1275 = !DILocation(line: 301, column: 1, scope: !990, inlinedAt: !1273)
!1276 = !DILocation(line: 430, column: 11, scope: !1271)
!1277 = !DILocation(line: 296, column: 7, scope: !998, inlinedAt: !1273)
!1278 = !DILocation(line: 432, column: 20, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1267, file: !1, line: 432, column: 18)
!1280 = !DILocation(line: 433, column: 11, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1279, file: !1, line: 433, column: 11)
!1282 = !DILocation(line: 432, column: 18, scope: !1267)
!1283 = !DILocation(line: 434, column: 17, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1260, file: !1, line: 434, column: 13)
!1285 = !DILocation(line: 434, column: 13, scope: !1260)
!1286 = !DILocation(line: 439, column: 15, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1288, file: !1, line: 439, column: 13)
!1288 = distinct !DILexicalBlock(scope: !1048, file: !1, line: 437, column: 23)
!1289 = !DILocation(line: 439, column: 13, scope: !1288)
!1290 = !DILocation(line: 438, column: 10, scope: !1288)
!1291 = !DILocation(line: 439, column: 20, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1287, file: !1, line: 439, column: 20)
!1293 = !DILocation(line: 439, column: 20, scope: !1287)
!1294 = !DILocation(line: 443, column: 15, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1296, file: !1, line: 443, column: 13)
!1296 = distinct !DILexicalBlock(scope: !1048, file: !1, line: 442, column: 24)
!1297 = !DILocation(line: 443, column: 20, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1295, file: !1, line: 443, column: 20)
!1299 = !DILocation(line: 443, column: 13, scope: !1296)
!1300 = !DILocation(line: 444, column: 15, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1296, file: !1, line: 444, column: 13)
!1302 = !DILocation(line: 444, column: 13, scope: !1296)
!1303 = !DILocation(line: 445, column: 13, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1301, file: !1, line: 444, column: 21)
!1305 = !DILocation(line: 446, column: 11, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1304, file: !1, line: 446, column: 11)
!1307 = !DILocation(line: 446, column: 11, scope: !1304)
!1308 = !DILocation(line: 452, column: 9, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1050, file: !1, line: 452, column: 9)
!1310 = !{!587, !418, i64 88}
!1311 = !DILocation(line: 452, column: 9, scope: !1050)
!1312 = !DILocation(line: 453, column: 19, scope: !1050)
!1313 = !{!587, !415, i64 32}
!1314 = !DILocation(line: 453, column: 15, scope: !1050)
!1315 = !DILocation(line: 453, column: 25, scope: !1050)
!1316 = !DILocation(line: 451, column: 13, scope: !1050)
!1317 = !DILocation(line: 454, column: 9, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1050, file: !1, line: 454, column: 9)
!1319 = !DILocation(line: 454, column: 9, scope: !1050)
!1320 = !DILocation(line: 451, column: 18, scope: !1050)
!1321 = !DILocation(line: 455, column: 23, scope: !1054)
!1322 = !DILocation(line: 455, column: 9, scope: !1055)
!1323 = !DILocation(line: 456, column: 24, scope: !1053)
!1324 = !DILocation(line: 455, column: 32, scope: !1054)
!1325 = distinct !{!1325, !1322, !1326}
!1326 = !DILocation(line: 458, column: 9, scope: !1055)
!1327 = !DILocation(line: 456, column: 18, scope: !1053)
!1328 = !DILocation(line: 457, column: 11, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1053, file: !1, line: 457, column: 11)
!1330 = !DILocation(line: 459, column: 13, scope: !1050)
!1331 = !DILocation(line: 464, column: 9, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1333, file: !1, line: 464, column: 9)
!1333 = distinct !DILexicalBlock(scope: !1048, file: !1, line: 463, column: 23)
!1334 = !DILocation(line: 466, column: 10, scope: !1333)
!1335 = !DILocation(line: 467, column: 15, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1333, file: !1, line: 467, column: 13)
!1337 = !DILocation(line: 467, column: 13, scope: !1333)
!1338 = !DILocation(line: 467, column: 31, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1336, file: !1, line: 467, column: 31)
!1340 = !DILocation(line: 290, column: 35, scope: !990, inlinedAt: !1341)
!1341 = distinct !DILocation(line: 467, column: 31, scope: !1339)
!1342 = !DILocation(line: 291, column: 3, scope: !990, inlinedAt: !1341)
!1343 = !DILocation(line: 301, column: 1, scope: !990, inlinedAt: !1341)
!1344 = !DILocation(line: 467, column: 31, scope: !1336)
!1345 = !DILocation(line: 296, column: 7, scope: !998, inlinedAt: !1341)
!1346 = !DILocation(line: 468, column: 9, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1333, file: !1, line: 468, column: 9)
!1348 = !DILocation(line: 468, column: 9, scope: !1333)
!1349 = !DILocation(line: 322, column: 31, scope: !1028)
!1350 = distinct !{!1350, !1091, !1351}
!1351 = !DILocation(line: 473, column: 3, scope: !1029)
!1352 = !DILocation(line: 474, column: 10, scope: !1017)
!1353 = !DILocation(line: 475, column: 1, scope: !1017)
!1354 = distinct !DISubprogram(name: "luaG_typeerror", scope: !1, file: !1, line: 567, type: !1355, isLocal: false, isDefinition: true, scopeLine: 567, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1357)
!1355 = !DISubroutineType(types: !1356)
!1356 = !{null, !179, !626, !307}
!1357 = !{!1358, !1359, !1360, !1361, !1362, !1363}
!1358 = !DILocalVariable(name: "L", arg: 1, scope: !1354, file: !1, line: 567, type: !179)
!1359 = !DILocalVariable(name: "o", arg: 2, scope: !1354, file: !1, line: 567, type: !626)
!1360 = !DILocalVariable(name: "op", arg: 3, scope: !1354, file: !1, line: 567, type: !307)
!1361 = !DILocalVariable(name: "name", scope: !1354, file: !1, line: 568, type: !307)
!1362 = !DILocalVariable(name: "t", scope: !1354, file: !1, line: 569, type: !307)
!1363 = !DILocalVariable(name: "kind", scope: !1354, file: !1, line: 570, type: !307)
!1364 = !DILocation(line: 567, column: 33, scope: !1354)
!1365 = !DILocation(line: 567, column: 50, scope: !1354)
!1366 = !DILocation(line: 567, column: 65, scope: !1354)
!1367 = !DILocation(line: 568, column: 3, scope: !1354)
!1368 = !DILocation(line: 568, column: 15, scope: !1354)
!1369 = !DILocation(line: 569, column: 34, scope: !1354)
!1370 = !DILocation(line: 569, column: 19, scope: !1354)
!1371 = !DILocation(line: 569, column: 15, scope: !1354)
!1372 = !DILocation(line: 570, column: 36, scope: !1354)
!1373 = !DILocalVariable(name: "ci", arg: 1, scope: !1374, file: !1, line: 559, type: !269)
!1374 = distinct !DISubprogram(name: "isinstack", scope: !1, file: !1, line: 559, type: !1375, isLocal: true, isDefinition: true, scopeLine: 559, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1377)
!1375 = !DISubroutineType(types: !1376)
!1376 = !{!61, !269, !626}
!1377 = !{!1373, !1378, !1379}
!1378 = !DILocalVariable(name: "o", arg: 2, scope: !1374, file: !1, line: 559, type: !626)
!1379 = !DILocalVariable(name: "p", scope: !1374, file: !1, line: 560, type: !188)
!1380 = !DILocation(line: 559, column: 33, scope: !1374, inlinedAt: !1381)
!1381 = distinct !DILocation(line: 570, column: 23, scope: !1354)
!1382 = !DILocation(line: 559, column: 51, scope: !1374, inlinedAt: !1381)
!1383 = !DILocation(line: 561, column: 16, scope: !1384, inlinedAt: !1381)
!1384 = distinct !DILexicalBlock(scope: !1374, file: !1, line: 561, column: 3)
!1385 = !DILocation(line: 560, column: 9, scope: !1374, inlinedAt: !1381)
!1386 = !DILocation(line: 561, column: 30, scope: !1387, inlinedAt: !1381)
!1387 = distinct !DILexicalBlock(scope: !1384, file: !1, line: 561, column: 3)
!1388 = !{!480, !415, i64 16}
!1389 = !DILocation(line: 561, column: 24, scope: !1387, inlinedAt: !1381)
!1390 = !DILocation(line: 561, column: 3, scope: !1384, inlinedAt: !1381)
!1391 = distinct !{!1391, !1392, !1393}
!1392 = !DILocation(line: 561, column: 3, scope: !1384)
!1393 = !DILocation(line: 562, column: 24, scope: !1384)
!1394 = !DILocation(line: 562, column: 11, scope: !1395, inlinedAt: !1381)
!1395 = distinct !DILexicalBlock(scope: !1387, file: !1, line: 562, column: 9)
!1396 = !DILocation(line: 561, column: 36, scope: !1387, inlinedAt: !1381)
!1397 = !DILocation(line: 562, column: 9, scope: !1387, inlinedAt: !1381)
!1398 = !DILocation(line: 564, column: 1, scope: !1374, inlinedAt: !1381)
!1399 = !DILocation(line: 570, column: 15, scope: !1354)
!1400 = !DILocation(line: 573, column: 7, scope: !1354)
!1401 = !DILocation(line: 571, column: 47, scope: !1354)
!1402 = !{!414, !415, i64 24}
!1403 = !DILocation(line: 571, column: 26, scope: !1354)
!1404 = !DILocation(line: 573, column: 7, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1354, file: !1, line: 573, column: 7)
!1406 = !DILocation(line: 575, column: 27, scope: !1405)
!1407 = !DILocation(line: 574, column: 5, scope: !1405)
!1408 = !DILocation(line: 577, column: 5, scope: !1405)
!1409 = !DILocation(line: 578, column: 1, scope: !1354)
!1410 = distinct !DISubprogram(name: "getobjname", scope: !1, file: !1, line: 497, type: !1411, isLocal: true, isDefinition: true, scopeLine: 498, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1413)
!1411 = !DISubroutineType(types: !1412)
!1412 = !{!307, !179, !269, !61, !868}
!1413 = !{!1414, !1415, !1416, !1417, !1418, !1421, !1422, !1423, !1426, !1428, !1429, !1431, !1433}
!1414 = !DILocalVariable(name: "L", arg: 1, scope: !1410, file: !1, line: 497, type: !179)
!1415 = !DILocalVariable(name: "ci", arg: 2, scope: !1410, file: !1, line: 497, type: !269)
!1416 = !DILocalVariable(name: "stackpos", arg: 3, scope: !1410, file: !1, line: 497, type: !61)
!1417 = !DILocalVariable(name: "name", arg: 4, scope: !1410, file: !1, line: 498, type: !868)
!1418 = !DILocalVariable(name: "p", scope: !1419, file: !1, line: 500, type: !540)
!1419 = distinct !DILexicalBlock(scope: !1420, file: !1, line: 499, column: 18)
!1420 = distinct !DILexicalBlock(scope: !1410, file: !1, line: 499, column: 7)
!1421 = !DILocalVariable(name: "pc", scope: !1419, file: !1, line: 501, type: !61)
!1422 = !DILocalVariable(name: "i", scope: !1419, file: !1, line: 502, type: !279)
!1423 = !DILocalVariable(name: "g", scope: !1424, file: !1, line: 510, type: !61)
!1424 = distinct !DILexicalBlock(scope: !1425, file: !1, line: 509, column: 26)
!1425 = distinct !DILexicalBlock(scope: !1419, file: !1, line: 508, column: 28)
!1426 = !DILocalVariable(name: "a", scope: !1427, file: !1, line: 516, type: !61)
!1427 = distinct !DILexicalBlock(scope: !1425, file: !1, line: 515, column: 21)
!1428 = !DILocalVariable(name: "b", scope: !1427, file: !1, line: 517, type: !61)
!1429 = !DILocalVariable(name: "k", scope: !1430, file: !1, line: 523, type: !61)
!1430 = distinct !DILexicalBlock(scope: !1425, file: !1, line: 522, column: 25)
!1431 = !DILocalVariable(name: "u", scope: !1432, file: !1, line: 528, type: !61)
!1432 = distinct !DILexicalBlock(scope: !1425, file: !1, line: 527, column: 25)
!1433 = !DILocalVariable(name: "k", scope: !1434, file: !1, line: 533, type: !61)
!1434 = distinct !DILexicalBlock(scope: !1425, file: !1, line: 532, column: 21)
!1435 = !DILocation(line: 497, column: 43, scope: !1410)
!1436 = !DILocation(line: 497, column: 56, scope: !1410)
!1437 = !DILocation(line: 497, column: 64, scope: !1410)
!1438 = !DILocation(line: 498, column: 45, scope: !1410)
!1439 = !DILocation(line: 499, column: 7, scope: !1420)
!1440 = !DILocation(line: 499, column: 7, scope: !1410)
!1441 = !DILocation(line: 500, column: 31, scope: !1419)
!1442 = !DILocation(line: 500, column: 12, scope: !1419)
!1443 = !DILocation(line: 36, column: 34, scope: !564, inlinedAt: !1444)
!1444 = distinct !DILocation(line: 501, column: 14, scope: !1419)
!1445 = !DILocation(line: 36, column: 47, scope: !564, inlinedAt: !1444)
!1446 = !DILocation(line: 38, column: 16, scope: !573, inlinedAt: !1444)
!1447 = !DILocation(line: 38, column: 10, scope: !573, inlinedAt: !1444)
!1448 = !DILocation(line: 38, column: 7, scope: !564, inlinedAt: !1444)
!1449 = !DILocation(line: 37, column: 7, scope: !564, inlinedAt: !1444)
!1450 = !DILocation(line: 40, column: 10, scope: !564, inlinedAt: !1444)
!1451 = !DILocation(line: 37, column: 8, scope: !580, inlinedAt: !1444)
!1452 = !DILocation(line: 39, column: 22, scope: !573, inlinedAt: !1444)
!1453 = !DILocation(line: 39, column: 9, scope: !573, inlinedAt: !1444)
!1454 = !DILocation(line: 39, column: 17, scope: !573, inlinedAt: !1444)
!1455 = !DILocation(line: 39, column: 5, scope: !573, inlinedAt: !1444)
!1456 = !DILocation(line: 41, column: 1, scope: !564, inlinedAt: !1444)
!1457 = !DILocation(line: 501, column: 9, scope: !1419)
!1458 = !DILocation(line: 503, column: 42, scope: !1419)
!1459 = !DILocation(line: 503, column: 13, scope: !1419)
!1460 = !DILocation(line: 503, column: 11, scope: !1419)
!1461 = !DILocation(line: 504, column: 9, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1419, file: !1, line: 504, column: 9)
!1463 = !DILocation(line: 504, column: 9, scope: !1419)
!1464 = !DILocation(line: 506, column: 9, scope: !1419)
!1465 = !DILocation(line: 502, column: 17, scope: !1419)
!1466 = !DILocation(line: 508, column: 5, scope: !1419)
!1467 = !DILocation(line: 510, column: 17, scope: !1424)
!1468 = !DILocation(line: 510, column: 13, scope: !1424)
!1469 = !DILocation(line: 512, column: 17, scope: !1424)
!1470 = !DILocation(line: 512, column: 15, scope: !1424)
!1471 = !DILocation(line: 516, column: 17, scope: !1427)
!1472 = !DILocation(line: 516, column: 13, scope: !1427)
!1473 = !DILocation(line: 517, column: 17, scope: !1427)
!1474 = !DILocation(line: 517, column: 13, scope: !1427)
!1475 = !DILocation(line: 518, column: 15, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1427, file: !1, line: 518, column: 13)
!1477 = !DILocation(line: 518, column: 13, scope: !1427)
!1478 = !DILocation(line: 519, column: 18, scope: !1476)
!1479 = !DILocalVariable(name: "p", arg: 1, scope: !1480, file: !1, line: 489, type: !540)
!1480 = distinct !DISubprogram(name: "kname", scope: !1, file: !1, line: 489, type: !1481, isLocal: true, isDefinition: true, scopeLine: 489, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1483)
!1481 = !DISubroutineType(types: !1482)
!1482 = !{!307, !540, !61}
!1483 = !{!1479, !1484}
!1484 = !DILocalVariable(name: "c", arg: 2, scope: !1480, file: !1, line: 489, type: !61)
!1485 = !DILocation(line: 489, column: 34, scope: !1480, inlinedAt: !1486)
!1486 = distinct !DILocation(line: 524, column: 17, scope: !1430)
!1487 = !DILocation(line: 490, column: 7, scope: !1488, inlinedAt: !1486)
!1488 = distinct !DILexicalBlock(scope: !1480, file: !1, line: 490, column: 7)
!1489 = !DILocation(line: 490, column: 14, scope: !1488, inlinedAt: !1486)
!1490 = !DILocation(line: 523, column: 17, scope: !1430)
!1491 = !DILocation(line: 523, column: 13, scope: !1430)
!1492 = !DILocation(line: 489, column: 41, scope: !1480, inlinedAt: !1486)
!1493 = !DILocation(line: 490, column: 17, scope: !1488, inlinedAt: !1486)
!1494 = !DILocation(line: 490, column: 7, scope: !1480, inlinedAt: !1486)
!1495 = !DILocation(line: 491, column: 12, scope: !1488, inlinedAt: !1486)
!1496 = !DILocation(line: 491, column: 5, scope: !1488, inlinedAt: !1486)
!1497 = !DILocation(line: 0, scope: !1488, inlinedAt: !1486)
!1498 = !DILocation(line: 494, column: 1, scope: !1480, inlinedAt: !1486)
!1499 = !DILocation(line: 524, column: 15, scope: !1430)
!1500 = !DILocation(line: 529, column: 20, scope: !1432)
!1501 = !{!587, !415, i64 56}
!1502 = !DILocation(line: 529, column: 17, scope: !1432)
!1503 = !DILocation(line: 528, column: 17, scope: !1432)
!1504 = !DILocation(line: 528, column: 13, scope: !1432)
!1505 = !DILocation(line: 529, column: 31, scope: !1432)
!1506 = !DILocation(line: 529, column: 15, scope: !1432)
!1507 = !DILocation(line: 489, column: 34, scope: !1480, inlinedAt: !1508)
!1508 = distinct !DILocation(line: 534, column: 17, scope: !1434)
!1509 = !DILocation(line: 490, column: 7, scope: !1488, inlinedAt: !1508)
!1510 = !DILocation(line: 490, column: 14, scope: !1488, inlinedAt: !1508)
!1511 = !DILocation(line: 533, column: 17, scope: !1434)
!1512 = !DILocation(line: 533, column: 13, scope: !1434)
!1513 = !DILocation(line: 489, column: 41, scope: !1480, inlinedAt: !1508)
!1514 = !DILocation(line: 490, column: 17, scope: !1488, inlinedAt: !1508)
!1515 = !DILocation(line: 490, column: 7, scope: !1480, inlinedAt: !1508)
!1516 = !DILocation(line: 491, column: 12, scope: !1488, inlinedAt: !1508)
!1517 = !DILocation(line: 491, column: 5, scope: !1488, inlinedAt: !1508)
!1518 = !DILocation(line: 0, scope: !1488, inlinedAt: !1508)
!1519 = !DILocation(line: 494, column: 1, scope: !1480, inlinedAt: !1508)
!1520 = !DILocation(line: 534, column: 15, scope: !1434)
!1521 = !DILocation(line: 0, scope: !1462)
!1522 = !DILocation(line: 541, column: 1, scope: !1410)
!1523 = distinct !DISubprogram(name: "luaG_runerror", scope: !1, file: !1, line: 631, type: !1524, isLocal: false, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1526)
!1524 = !DISubroutineType(types: !1525)
!1525 = !{null, !179, !307, null}
!1526 = !{!1527, !1528, !1529}
!1527 = !DILocalVariable(name: "L", arg: 1, scope: !1523, file: !1, line: 631, type: !179)
!1528 = !DILocalVariable(name: "fmt", arg: 2, scope: !1523, file: !1, line: 631, type: !307)
!1529 = !DILocalVariable(name: "argp", scope: !1523, file: !1, line: 632, type: !1530)
!1530 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1531, line: 32, baseType: !1532)
!1531 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!1532 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 632, baseType: !1533)
!1533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1534, size: 192, elements: !333)
!1534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 632, size: 192, elements: !1535)
!1535 = !{!1536, !1537, !1538, !1539}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1534, file: !1, line: 632, baseType: !5, size: 32)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1534, file: !1, line: 632, baseType: !5, size: 32, offset: 32)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1534, file: !1, line: 632, baseType: !57, size: 64, offset: 64)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1534, file: !1, line: 632, baseType: !57, size: 64, offset: 128)
!1540 = !DILocalVariable(name: "buff", scope: !1541, file: !1, line: 610, type: !317)
!1541 = distinct !DILexicalBlock(scope: !1542, file: !1, line: 609, column: 18)
!1542 = distinct !DILexicalBlock(scope: !1543, file: !1, line: 609, column: 7)
!1543 = distinct !DISubprogram(name: "addinfo", scope: !1, file: !1, line: 607, type: !1544, isLocal: true, isDefinition: true, scopeLine: 607, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1546)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{null, !179, !307}
!1546 = !{!1547, !1548, !1549, !1540, !1550}
!1547 = !DILocalVariable(name: "L", arg: 1, scope: !1543, file: !1, line: 607, type: !179)
!1548 = !DILocalVariable(name: "msg", arg: 2, scope: !1543, file: !1, line: 607, type: !307)
!1549 = !DILocalVariable(name: "ci", scope: !1543, file: !1, line: 608, type: !269)
!1550 = !DILocalVariable(name: "line", scope: !1541, file: !1, line: 611, type: !61)
!1551 = !DILocation(line: 610, column: 10, scope: !1541, inlinedAt: !1552)
!1552 = distinct !DILocation(line: 634, column: 3, scope: !1523)
!1553 = !DILocation(line: 631, column: 32, scope: !1523)
!1554 = !DILocation(line: 631, column: 47, scope: !1523)
!1555 = !DILocation(line: 632, column: 3, scope: !1523)
!1556 = !DILocation(line: 632, column: 11, scope: !1523)
!1557 = !DILocation(line: 633, column: 3, scope: !1523)
!1558 = !DILocation(line: 634, column: 14, scope: !1523)
!1559 = !DILocation(line: 607, column: 33, scope: !1543, inlinedAt: !1552)
!1560 = !DILocation(line: 607, column: 48, scope: !1543, inlinedAt: !1552)
!1561 = !DILocation(line: 608, column: 21, scope: !1543, inlinedAt: !1552)
!1562 = !DILocation(line: 608, column: 13, scope: !1543, inlinedAt: !1552)
!1563 = !DILocation(line: 609, column: 7, scope: !1542, inlinedAt: !1552)
!1564 = !DILocation(line: 609, column: 7, scope: !1543, inlinedAt: !1552)
!1565 = !DILocation(line: 610, column: 5, scope: !1541, inlinedAt: !1552)
!1566 = !DILocation(line: 44, column: 36, scope: !826, inlinedAt: !1567)
!1567 = distinct !DILocation(line: 611, column: 16, scope: !1541, inlinedAt: !1552)
!1568 = !DILocation(line: 44, column: 49, scope: !826, inlinedAt: !1567)
!1569 = !DILocation(line: 36, column: 34, scope: !564, inlinedAt: !1570)
!1570 = distinct !DILocation(line: 45, column: 12, scope: !826, inlinedAt: !1567)
!1571 = !DILocation(line: 36, column: 47, scope: !564, inlinedAt: !1570)
!1572 = !DILocation(line: 37, column: 8, scope: !580, inlinedAt: !1570)
!1573 = !DILocation(line: 39, column: 22, scope: !573, inlinedAt: !1570)
!1574 = !DILocation(line: 39, column: 9, scope: !573, inlinedAt: !1570)
!1575 = !DILocation(line: 39, column: 17, scope: !573, inlinedAt: !1570)
!1576 = !DILocation(line: 40, column: 10, scope: !564, inlinedAt: !1570)
!1577 = !DILocation(line: 41, column: 1, scope: !564, inlinedAt: !1570)
!1578 = !DILocation(line: 45, column: 7, scope: !826, inlinedAt: !1567)
!1579 = !DILocation(line: 46, column: 10, scope: !849, inlinedAt: !1567)
!1580 = !DILocation(line: 46, column: 7, scope: !826, inlinedAt: !1567)
!1581 = !DILocation(line: 49, column: 12, scope: !849, inlinedAt: !1567)
!1582 = !DILocation(line: 50, column: 1, scope: !826, inlinedAt: !1567)
!1583 = !DILocation(line: 611, column: 9, scope: !1541, inlinedAt: !1552)
!1584 = !DILocation(line: 107, column: 38, scope: !550, inlinedAt: !1585)
!1585 = distinct !DILocation(line: 612, column: 24, scope: !1541, inlinedAt: !1552)
!1586 = !DILocation(line: 108, column: 11, scope: !550, inlinedAt: !1585)
!1587 = !DILocation(line: 108, column: 3, scope: !550, inlinedAt: !1585)
!1588 = !DILocation(line: 612, column: 24, scope: !1541, inlinedAt: !1552)
!1589 = !DILocation(line: 612, column: 5, scope: !1541, inlinedAt: !1552)
!1590 = !DILocation(line: 613, column: 5, scope: !1541, inlinedAt: !1552)
!1591 = !DILocation(line: 614, column: 3, scope: !1542, inlinedAt: !1552)
!1592 = !DILocation(line: 614, column: 3, scope: !1541, inlinedAt: !1552)
!1593 = !DILocation(line: 615, column: 1, scope: !1543, inlinedAt: !1552)
!1594 = !DILocation(line: 635, column: 3, scope: !1523)
!1595 = !DILocation(line: 636, column: 3, scope: !1523)
!1596 = !DILocation(line: 637, column: 1, scope: !1523)
!1597 = distinct !DISubprogram(name: "luaG_concaterror", scope: !1, file: !1, line: 581, type: !1598, isLocal: false, isDefinition: true, scopeLine: 581, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1600)
!1598 = !DISubroutineType(types: !1599)
!1599 = !{null, !179, !188, !188}
!1600 = !{!1601, !1602, !1603}
!1601 = !DILocalVariable(name: "L", arg: 1, scope: !1597, file: !1, line: 581, type: !179)
!1602 = !DILocalVariable(name: "p1", arg: 2, scope: !1597, file: !1, line: 581, type: !188)
!1603 = !DILocalVariable(name: "p2", arg: 3, scope: !1597, file: !1, line: 581, type: !188)
!1604 = !DILocation(line: 581, column: 35, scope: !1597)
!1605 = !DILocation(line: 581, column: 44, scope: !1597)
!1606 = !DILocation(line: 581, column: 54, scope: !1597)
!1607 = !DILocation(line: 582, column: 7, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1597, file: !1, line: 582, column: 7)
!1609 = !DILocation(line: 582, column: 22, scope: !1608)
!1610 = !DILocation(line: 584, column: 3, scope: !1597)
!1611 = !DILocation(line: 585, column: 1, scope: !1597)
!1612 = distinct !DISubprogram(name: "luaG_aritherror", scope: !1, file: !1, line: 588, type: !1613, isLocal: false, isDefinition: true, scopeLine: 588, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1615)
!1613 = !DISubroutineType(types: !1614)
!1614 = !{null, !179, !626, !626}
!1615 = !{!1616, !1617, !1618, !1619}
!1616 = !DILocalVariable(name: "L", arg: 1, scope: !1612, file: !1, line: 588, type: !179)
!1617 = !DILocalVariable(name: "p1", arg: 2, scope: !1612, file: !1, line: 588, type: !626)
!1618 = !DILocalVariable(name: "p2", arg: 3, scope: !1612, file: !1, line: 588, type: !626)
!1619 = !DILocalVariable(name: "temp", scope: !1612, file: !1, line: 589, type: !123)
!1620 = !DILocation(line: 588, column: 34, scope: !1612)
!1621 = !DILocation(line: 588, column: 51, scope: !1612)
!1622 = !DILocation(line: 588, column: 69, scope: !1612)
!1623 = !DILocation(line: 589, column: 3, scope: !1612)
!1624 = !DILocation(line: 589, column: 10, scope: !1612)
!1625 = !DILocation(line: 590, column: 7, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1612, file: !1, line: 590, column: 7)
!1627 = !DILocation(line: 590, column: 32, scope: !1626)
!1628 = !DILocation(line: 590, column: 7, scope: !1612)
!1629 = !DILocation(line: 592, column: 3, scope: !1612)
!1630 = !DILocation(line: 593, column: 1, scope: !1612)
!1631 = distinct !DISubprogram(name: "luaG_ordererror", scope: !1, file: !1, line: 596, type: !1632, isLocal: false, isDefinition: true, scopeLine: 596, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1634)
!1632 = !DISubroutineType(types: !1633)
!1633 = !{!61, !179, !626, !626}
!1634 = !{!1635, !1636, !1637, !1638, !1639}
!1635 = !DILocalVariable(name: "L", arg: 1, scope: !1631, file: !1, line: 596, type: !179)
!1636 = !DILocalVariable(name: "p1", arg: 2, scope: !1631, file: !1, line: 596, type: !626)
!1637 = !DILocalVariable(name: "p2", arg: 3, scope: !1631, file: !1, line: 596, type: !626)
!1638 = !DILocalVariable(name: "t1", scope: !1631, file: !1, line: 597, type: !307)
!1639 = !DILocalVariable(name: "t2", scope: !1631, file: !1, line: 598, type: !307)
!1640 = !DILocation(line: 596, column: 33, scope: !1631)
!1641 = !DILocation(line: 596, column: 50, scope: !1631)
!1642 = !DILocation(line: 596, column: 68, scope: !1631)
!1643 = !DILocation(line: 597, column: 35, scope: !1631)
!1644 = !DILocation(line: 597, column: 20, scope: !1631)
!1645 = !DILocation(line: 597, column: 15, scope: !1631)
!1646 = !DILocation(line: 598, column: 35, scope: !1631)
!1647 = !DILocation(line: 598, column: 20, scope: !1631)
!1648 = !DILocation(line: 598, column: 15, scope: !1631)
!1649 = !DILocation(line: 599, column: 7, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1631, file: !1, line: 599, column: 7)
!1651 = !DILocation(line: 599, column: 16, scope: !1650)
!1652 = !DILocation(line: 599, column: 13, scope: !1650)
!1653 = !DILocation(line: 599, column: 7, scope: !1631)
!1654 = !DILocation(line: 600, column: 5, scope: !1650)
!1655 = !DILocation(line: 602, column: 5, scope: !1650)
!1656 = !DILocation(line: 603, column: 3, scope: !1631)
!1657 = distinct !DISubprogram(name: "luaG_errormsg", scope: !1, file: !1, line: 618, type: !1658, isLocal: false, isDefinition: true, scopeLine: 618, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1660)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{null, !179}
!1660 = !{!1661, !1662, !1665, !1667, !1668, !1670}
!1661 = !DILocalVariable(name: "L", arg: 1, scope: !1657, file: !1, line: 618, type: !179)
!1662 = !DILocalVariable(name: "errfunc", scope: !1663, file: !1, line: 620, type: !188)
!1663 = distinct !DILexicalBlock(scope: !1664, file: !1, line: 619, column: 24)
!1664 = distinct !DILexicalBlock(scope: !1657, file: !1, line: 619, column: 7)
!1665 = !DILocalVariable(name: "o2", scope: !1666, file: !1, line: 622, type: !626)
!1666 = distinct !DILexicalBlock(scope: !1663, file: !1, line: 622, column: 5)
!1667 = !DILocalVariable(name: "o1", scope: !1666, file: !1, line: 622, type: !122)
!1668 = !DILocalVariable(name: "o2", scope: !1669, file: !1, line: 623, type: !626)
!1669 = distinct !DILexicalBlock(scope: !1663, file: !1, line: 623, column: 5)
!1670 = !DILocalVariable(name: "o1", scope: !1669, file: !1, line: 623, type: !122)
!1671 = !DILocation(line: 618, column: 32, scope: !1657)
!1672 = !DILocation(line: 619, column: 10, scope: !1664)
!1673 = !{!414, !421, i64 176}
!1674 = !DILocation(line: 619, column: 18, scope: !1664)
!1675 = !DILocation(line: 619, column: 7, scope: !1657)
!1676 = !DILocation(line: 620, column: 21, scope: !1663)
!1677 = !{!414, !415, i64 64}
!1678 = !DILocation(line: 620, column: 11, scope: !1663)
!1679 = !DILocation(line: 621, column: 10, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1663, file: !1, line: 621, column: 9)
!1681 = !DILocation(line: 621, column: 9, scope: !1663)
!1682 = !DILocation(line: 621, column: 33, scope: !1680)
!1683 = !DILocation(line: 622, column: 5, scope: !1666)
!1684 = !DILocation(line: 623, column: 5, scope: !1669)
!1685 = !DILocation(line: 624, column: 5, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1687, file: !1, line: 624, column: 5)
!1687 = distinct !DILexicalBlock(scope: !1663, file: !1, line: 624, column: 5)
!1688 = !DILocation(line: 624, column: 5, scope: !1687)
!1689 = !DILocation(line: 625, column: 25, scope: !1663)
!1690 = !DILocation(line: 625, column: 5, scope: !1663)
!1691 = !DILocation(line: 626, column: 3, scope: !1663)
!1692 = !DILocation(line: 627, column: 3, scope: !1657)
!1693 = !DILocation(line: 628, column: 1, scope: !1657)
