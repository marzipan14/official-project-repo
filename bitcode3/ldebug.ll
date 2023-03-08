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
  ret i32 1, !dbg !431
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: noredzone nounwind readonly
define dso_local void (%struct.lua_State*, %struct.lua_Debug*)* @lua_gethook(%struct.lua_State* nocapture readonly) local_unnamed_addr #2 !dbg !432 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 21, !dbg !438
  %3 = load void (%struct.lua_State*, %struct.lua_Debug*)*, void (%struct.lua_State*, %struct.lua_Debug*)** %2, align 8, !dbg !438, !tbaa !413
  ret void (%struct.lua_State*, %struct.lua_Debug*)* %3, !dbg !439
}

; Function Attrs: noredzone nounwind readonly
define dso_local i32 @lua_gethookmask(%struct.lua_State* nocapture readonly) local_unnamed_addr #2 !dbg !440 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 17, !dbg !444
  %3 = load i8, i8* %2, align 4, !dbg !444, !tbaa !430
  %4 = zext i8 %3 to i32, !dbg !445
  ret i32 %4, !dbg !446
}

; Function Attrs: noredzone nounwind readonly
define dso_local i32 @lua_gethookcount(%struct.lua_State* nocapture readonly) local_unnamed_addr #2 !dbg !447 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 19, !dbg !451
  %3 = load i32, i32* %2, align 8, !dbg !451, !tbaa !424
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
  ret i32 %49, !dbg !512
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #3

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
  br i1 %14, label %15, label %60, !dbg !556

; <label>:15:                                     ; preds = %3
  %16 = bitcast %struct.lua_TValue* %11 to %union.Closure**, !dbg !556
  %17 = load %union.Closure*, %union.Closure** %16, align 8, !dbg !556, !tbaa !481
  %18 = getelementptr inbounds %union.Closure, %union.Closure* %17, i64 0, i32 0, i32 3, !dbg !556
  %19 = load i8, i8* %18, align 2, !dbg !556, !tbaa !481
  %20 = icmp eq i8 %19, 0, !dbg !556
  br i1 %20, label %21, label %60, !dbg !556

; <label>:21:                                     ; preds = %15
  %22 = getelementptr inbounds %union.Closure, %union.Closure* %17, i64 0, i32 0, i32 7, !dbg !558
  %23 = bitcast i32 (%struct.lua_State*)** %22 to %struct.Proto**, !dbg !558
  %24 = load %struct.Proto*, %struct.Proto** %23, align 8, !dbg !558, !tbaa !481
  %25 = icmp eq %struct.Proto* %24, null, !dbg !560
  br i1 %25, label %60, label %26, !dbg !561

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !571
  %28 = load %struct.CallInfo*, %struct.CallInfo** %27, align 8, !dbg !571, !tbaa !467
  %29 = icmp eq %struct.CallInfo* %28, %9, !dbg !573
  br i1 %29, label %35, label %30, !dbg !574

; <label>:30:                                     ; preds = %26
  %31 = bitcast %union.Closure* %17 to %struct.LClosure*, !dbg !575
  %32 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5, i64 %8, i32 3
  %33 = bitcast i32** %32 to i64*
  %34 = load i64, i64* %33, align 8, !dbg !576, !tbaa !577
  br label %43, !dbg !574

; <label>:35:                                     ; preds = %26
  %36 = bitcast %struct.lua_TValue* %11 to %struct.LClosure**, !dbg !578
  %37 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8, !dbg !580
  %38 = bitcast i32** %37 to i64*, !dbg !580
  %39 = load i64, i64* %38, align 8, !dbg !580, !tbaa !581
  %40 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5, i64 %8, i32 3, !dbg !582
  %41 = bitcast i32** %40 to i64*, !dbg !583
  store i64 %39, i64* %41, align 8, !dbg !583, !tbaa !577
  %42 = load %struct.LClosure*, %struct.LClosure** %36, align 8, !dbg !576, !tbaa !481
  br label %43, !dbg !584

; <label>:43:                                     ; preds = %35, %30
  %44 = phi %struct.LClosure* [ %31, %30 ], [ %42, %35 ], !dbg !576
  %45 = phi i64 [ %34, %30 ], [ %39, %35 ], !dbg !576
  %46 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %44, i64 0, i32 7, !dbg !576
  %47 = load %struct.Proto*, %struct.Proto** %46, align 8, !dbg !576, !tbaa !481
  %48 = getelementptr inbounds %struct.Proto, %struct.Proto* %47, i64 0, i32 4, !dbg !576
  %49 = bitcast i32** %48 to i64*, !dbg !576
  %50 = load i64, i64* %49, align 8, !dbg !576, !tbaa !585
  %51 = sub i64 %45, %50, !dbg !576
  %52 = lshr exact i64 %51, 2, !dbg !576
  %53 = trunc i64 %52 to i32, !dbg !576
  %54 = add nsw i32 %53, -1, !dbg !576
  %55 = tail call i8* @luaF_getlocalname(%struct.Proto* nonnull %24, i32 %2, i32 %54) #7, !dbg !587
  %56 = icmp eq i8* %55, null, !dbg !589
  br i1 %56, label %60, label %57, !dbg !590

; <label>:57:                                     ; preds = %43
  %58 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %9, i64 0, i32 0
  %59 = load %struct.lua_TValue*, %struct.lua_TValue** %58, align 8, !dbg !591, !tbaa !593
  br label %79, !dbg !590

; <label>:60:                                     ; preds = %43, %21, %15, %3
  %61 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !594
  %62 = load %struct.CallInfo*, %struct.CallInfo** %61, align 8, !dbg !594, !tbaa !467
  %63 = icmp eq %struct.CallInfo* %62, %9, !dbg !595
  %64 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !596
  %65 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %9, i64 1, i32 1, !dbg !597
  %66 = select i1 %63, %struct.lua_TValue** %64, %struct.lua_TValue** %65, !dbg !598
  %67 = bitcast %struct.lua_TValue** %66 to i64*, !dbg !598
  %68 = load i64, i64* %67, align 8, !dbg !598, !tbaa !599
  %69 = bitcast %struct.CallInfo* %9 to i64*, !dbg !601
  %70 = load i64, i64* %69, align 8, !dbg !601, !tbaa !593
  %71 = sub i64 %68, %70, !dbg !603
  %72 = ashr exact i64 %71, 4, !dbg !603
  %73 = sext i32 %2 to i64, !dbg !604
  %74 = icmp sge i64 %72, %73, !dbg !605
  %75 = icmp sgt i32 %2, 0, !dbg !606
  %76 = and i1 %75, %74, !dbg !607
  br i1 %76, label %77, label %85

; <label>:77:                                     ; preds = %60
  %78 = inttoptr i64 %70 to %struct.lua_TValue*
  br label %79

; <label>:79:                                     ; preds = %77, %57
  %80 = phi %struct.lua_TValue* [ %59, %57 ], [ %78, %77 ], !dbg !591
  %81 = phi i8* [ %55, %57 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), %77 ]
  %82 = add nsw i32 %2, -1, !dbg !608
  %83 = sext i32 %82 to i64, !dbg !609
  %84 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %80, i64 %83, !dbg !609
  tail call void @luaA_pushobject(%struct.lua_State* nonnull %0, %struct.lua_TValue* %84) #7, !dbg !610
  br label %85, !dbg !610

; <label>:85:                                     ; preds = %60, %79
  %86 = phi i8* [ %81, %79 ], [ null, %60 ]
  ret i8* %86, !dbg !611
}

; Function Attrs: noredzone
declare hidden void @luaA_pushobject(%struct.lua_State*, %struct.lua_TValue*) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local i8* @lua_setlocal(%struct.lua_State* nocapture, %struct.lua_Debug* nocapture readonly, i32) local_unnamed_addr #0 !dbg !612 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 12, !dbg !628
  %5 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8, !dbg !628, !tbaa !472
  %6 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %1, i64 0, i32 10, !dbg !629
  %7 = load i32, i32* %6, align 4, !dbg !629, !tbaa !503
  %8 = sext i32 %7 to i64, !dbg !630
  %9 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5, i64 %8, !dbg !630
  %10 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5, i64 %8, i32 1, !dbg !638
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !638, !tbaa !479
  %12 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %11, i64 0, i32 1, !dbg !638
  %13 = load i32, i32* %12, align 8, !dbg !638, !tbaa !557
  %14 = icmp eq i32 %13, 6, !dbg !638
  br i1 %14, label %15, label %61, !dbg !638

; <label>:15:                                     ; preds = %3
  %16 = bitcast %struct.lua_TValue* %11 to %union.Closure**, !dbg !638
  %17 = load %union.Closure*, %union.Closure** %16, align 8, !dbg !638, !tbaa !481
  %18 = getelementptr inbounds %union.Closure, %union.Closure* %17, i64 0, i32 0, i32 3, !dbg !638
  %19 = load i8, i8* %18, align 2, !dbg !638, !tbaa !481
  %20 = icmp eq i8 %19, 0, !dbg !638
  br i1 %20, label %21, label %61, !dbg !638

; <label>:21:                                     ; preds = %15
  %22 = getelementptr inbounds %union.Closure, %union.Closure* %17, i64 0, i32 0, i32 7, !dbg !639
  %23 = bitcast i32 (%struct.lua_State*)** %22 to %struct.Proto**, !dbg !639
  %24 = load %struct.Proto*, %struct.Proto** %23, align 8, !dbg !639, !tbaa !481
  %25 = icmp eq %struct.Proto* %24, null, !dbg !641
  br i1 %25, label %61, label %26, !dbg !642

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !646
  %28 = load %struct.CallInfo*, %struct.CallInfo** %27, align 8, !dbg !646, !tbaa !467
  %29 = icmp eq %struct.CallInfo* %28, %9, !dbg !647
  br i1 %29, label %35, label %30, !dbg !648

; <label>:30:                                     ; preds = %26
  %31 = bitcast %union.Closure* %17 to %struct.LClosure*, !dbg !649
  %32 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5, i64 %8, i32 3
  %33 = bitcast i32** %32 to i64*
  %34 = load i64, i64* %33, align 8, !dbg !650, !tbaa !577
  br label %43, !dbg !648

; <label>:35:                                     ; preds = %26
  %36 = bitcast %struct.lua_TValue* %11 to %struct.LClosure**, !dbg !651
  %37 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8, !dbg !652
  %38 = bitcast i32** %37 to i64*, !dbg !652
  %39 = load i64, i64* %38, align 8, !dbg !652, !tbaa !581
  %40 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5, i64 %8, i32 3, !dbg !653
  %41 = bitcast i32** %40 to i64*, !dbg !654
  store i64 %39, i64* %41, align 8, !dbg !654, !tbaa !577
  %42 = load %struct.LClosure*, %struct.LClosure** %36, align 8, !dbg !650, !tbaa !481
  br label %43, !dbg !655

; <label>:43:                                     ; preds = %35, %30
  %44 = phi %struct.LClosure* [ %31, %30 ], [ %42, %35 ], !dbg !650
  %45 = phi i64 [ %34, %30 ], [ %39, %35 ], !dbg !650
  %46 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %44, i64 0, i32 7, !dbg !650
  %47 = load %struct.Proto*, %struct.Proto** %46, align 8, !dbg !650, !tbaa !481
  %48 = getelementptr inbounds %struct.Proto, %struct.Proto* %47, i64 0, i32 4, !dbg !650
  %49 = bitcast i32** %48 to i64*, !dbg !650
  %50 = load i64, i64* %49, align 8, !dbg !650, !tbaa !585
  %51 = sub i64 %45, %50, !dbg !650
  %52 = lshr exact i64 %51, 2, !dbg !650
  %53 = trunc i64 %52 to i32, !dbg !650
  %54 = add nsw i32 %53, -1, !dbg !650
  %55 = tail call i8* @luaF_getlocalname(%struct.Proto* nonnull %24, i32 %2, i32 %54) #7, !dbg !656
  %56 = icmp eq i8* %55, null, !dbg !658
  br i1 %56, label %61, label %57, !dbg !659

; <label>:57:                                     ; preds = %43
  %58 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %9, i64 0, i32 0
  %59 = load %struct.lua_TValue*, %struct.lua_TValue** %58, align 8, !dbg !660, !tbaa !593
  %60 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !660
  br label %80, !dbg !659

; <label>:61:                                     ; preds = %43, %21, %15, %3
  %62 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !661
  %63 = load %struct.CallInfo*, %struct.CallInfo** %62, align 8, !dbg !661, !tbaa !467
  %64 = icmp eq %struct.CallInfo* %63, %9, !dbg !662
  %65 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !663
  %66 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %9, i64 1, i32 1, !dbg !664
  %67 = select i1 %64, %struct.lua_TValue** %65, %struct.lua_TValue** %66, !dbg !665
  %68 = bitcast %struct.lua_TValue** %67 to i64*, !dbg !665
  %69 = load i64, i64* %68, align 8, !dbg !665, !tbaa !599
  %70 = bitcast %struct.CallInfo* %9 to i64*, !dbg !667
  %71 = load i64, i64* %70, align 8, !dbg !667, !tbaa !593
  %72 = sub i64 %69, %71, !dbg !668
  %73 = ashr exact i64 %72, 4, !dbg !668
  %74 = sext i32 %2 to i64, !dbg !669
  %75 = icmp sge i64 %73, %74, !dbg !670
  %76 = icmp sgt i32 %2, 0, !dbg !671
  %77 = and i1 %76, %75, !dbg !672
  br i1 %77, label %78, label %95

; <label>:78:                                     ; preds = %61
  %79 = inttoptr i64 %71 to %struct.lua_TValue*
  br label %80

; <label>:80:                                     ; preds = %78, %57
  %81 = phi %struct.lua_TValue** [ %60, %57 ], [ %65, %78 ], !dbg !660
  %82 = phi %struct.lua_TValue* [ %59, %57 ], [ %79, %78 ], !dbg !660
  %83 = phi i8* [ %55, %57 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), %78 ]
  %84 = load %struct.lua_TValue*, %struct.lua_TValue** %81, align 8, !dbg !660, !tbaa !673
  %85 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %84, i64 -1, !dbg !660
  %86 = add nsw i32 %2, -1, !dbg !660
  %87 = sext i32 %86 to i64, !dbg !660
  %88 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %82, i64 %87, !dbg !660
  %89 = bitcast %struct.lua_TValue* %85 to i64*, !dbg !660
  %90 = bitcast %struct.lua_TValue* %88 to i64*, !dbg !660
  %91 = load i64, i64* %89, align 8, !dbg !660
  store i64 %91, i64* %90, align 8, !dbg !660
  %92 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %84, i64 -1, i32 1, !dbg !660
  %93 = load i32, i32* %92, align 8, !dbg !660, !tbaa !557
  %94 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %82, i64 %87, i32 1, !dbg !660
  store i32 %93, i32* %94, align 8, !dbg !660, !tbaa !557
  br label %95, !dbg !660

; <label>:95:                                     ; preds = %61, %80
  %96 = phi %struct.lua_TValue** [ %65, %61 ], [ %81, %80 ], !dbg !674
  %97 = phi i8* [ null, %61 ], [ %83, %80 ]
  %98 = load %struct.lua_TValue*, %struct.lua_TValue** %96, align 8, !dbg !675, !tbaa !673
  %99 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %98, i64 -1, !dbg !675
  store %struct.lua_TValue* %99, %struct.lua_TValue** %96, align 8, !dbg !675, !tbaa !673
  ret i8* %97, !dbg !676
}

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_getinfo(%struct.lua_State*, i8*, %struct.lua_Debug*) local_unnamed_addr #0 !dbg !677 {
  %4 = load i8, i8* %1, align 1, !dbg !702, !tbaa !481
  %5 = icmp eq i8 %4, 62, !dbg !703
  br i1 %5, label %6, label %14, !dbg !704

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !705
  %8 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8, !dbg !705, !tbaa !673
  %9 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !707
  %10 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %8, i64 -1, i32 0, i32 0, !dbg !708
  %11 = bitcast %union.GCObject** %10 to %union.Closure**, !dbg !708
  %12 = load %union.Closure*, %union.Closure** %11, align 8, !dbg !708, !tbaa !481
  %13 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %8, i64 -1, !dbg !709
  store %struct.lua_TValue* %13, %struct.lua_TValue** %7, align 8, !dbg !709, !tbaa !673
  br label %27, !dbg !710

; <label>:14:                                     ; preds = %3
  %15 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 10, !dbg !711
  %16 = load i32, i32* %15, align 4, !dbg !711, !tbaa !503
  %17 = icmp eq i32 %16, 0, !dbg !713
  br i1 %17, label %63, label %18, !dbg !714

; <label>:18:                                     ; preds = %14
  %19 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 12, !dbg !715
  %20 = load %struct.CallInfo*, %struct.CallInfo** %19, align 8, !dbg !715, !tbaa !472
  %21 = sext i32 %16 to i64, !dbg !717
  %22 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %20, i64 %21, !dbg !717
  %23 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %20, i64 %21, i32 1, !dbg !718
  %24 = bitcast %struct.lua_TValue** %23 to %union.Closure***, !dbg !718
  %25 = load %union.Closure**, %union.Closure*** %24, align 8, !dbg !718, !tbaa !479
  %26 = load %union.Closure*, %union.Closure** %25, align 8, !dbg !718, !tbaa !481
  br label %27, !dbg !719

; <label>:27:                                     ; preds = %18, %6
  %28 = phi %struct.CallInfo* [ null, %6 ], [ %22, %18 ], !dbg !720
  %29 = phi %union.Closure* [ %12, %6 ], [ %26, %18 ], !dbg !720
  %30 = phi i8* [ %9, %6 ], [ %1, %18 ]
  %31 = icmp eq %union.Closure* %29, null, !dbg !738
  br i1 %31, label %63, label %32, !dbg !740

; <label>:32:                                     ; preds = %27
  %33 = load i8, i8* %30, align 1, !dbg !741, !tbaa !481
  %34 = icmp eq i8 %33, 0, !dbg !744
  br i1 %34, label %218, label %35, !dbg !744

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
  br label %74, !dbg !744

; <label>:63:                                     ; preds = %14, %27
  %64 = phi i8* [ %30, %27 ], [ %1, %14 ]
  %65 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 1, !dbg !753
  %66 = bitcast i8** %65 to <2 x i8*>*, !dbg !754
  store <2 x i8*> <i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)>, <2 x i8*>* %66, align 8, !dbg !754, !tbaa !599
  %67 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 3, !dbg !755
  %68 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 5, !dbg !756
  store i32 -1, i32* %68, align 8, !dbg !757, !tbaa !758
  %69 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 7, !dbg !759
  store i32 -1, i32* %69, align 8, !dbg !760, !tbaa !761
  %70 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 8, !dbg !762
  store i32 -1, i32* %70, align 4, !dbg !763, !tbaa !764
  %71 = bitcast i8** %67 to <2 x i8*>*, !dbg !765
  store <2 x i8*> <i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0)>, <2 x i8*>* %71, align 8, !dbg !765, !tbaa !599
  %72 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 9, i64 0, !dbg !766
  tail call void @luaO_chunkid(i8* nonnull %72, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i64 60) #7, !dbg !767
  %73 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 6, !dbg !768
  store i32 0, i32* %73, align 4, !dbg !769, !tbaa !770
  br label %218, !dbg !771

; <label>:74:                                     ; preds = %213, %35
  %75 = phi i8 [ %33, %35 ], [ %216, %213 ]
  %76 = phi i32 [ 1, %35 ], [ %214, %213 ]
  %77 = phi i8* [ %30, %35 ], [ %215, %213 ]
  %78 = sext i8 %75 to i32, !dbg !772
  switch i32 %78, label %212 [
    i32 83, label %79
    i32 108, label %101
    i32 117, label %147
    i32 110, label %150
    i32 76, label %213
    i32 102, label %213
  ], !dbg !774

; <label>:79:                                     ; preds = %74
  %80 = load i8, i8* %36, align 2, !dbg !786, !tbaa !481
  %81 = icmp eq i8 %80, 0, !dbg !788
  br i1 %81, label %83, label %82, !dbg !789

; <label>:82:                                     ; preds = %79
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8** %42, align 8, !dbg !790, !tbaa !792
  store i32 -1, i32* %44, align 8, !dbg !793, !tbaa !761
  br label %97, !dbg !794

; <label>:83:                                     ; preds = %79
  %84 = load %struct.Proto*, %struct.Proto** %41, align 8, !dbg !795, !tbaa !481
  %85 = getelementptr inbounds %struct.Proto, %struct.Proto* %84, i64 0, i32 9, !dbg !795
  %86 = load %union.TString*, %union.TString** %85, align 8, !dbg !795, !tbaa !797
  %87 = getelementptr inbounds %union.TString, %union.TString* %86, i64 1, !dbg !795
  store %union.TString* %87, %union.TString** %43, align 8, !dbg !798, !tbaa !792
  %88 = load %struct.Proto*, %struct.Proto** %41, align 8, !dbg !799, !tbaa !481
  %89 = getelementptr inbounds %struct.Proto, %struct.Proto* %88, i64 0, i32 16, !dbg !800
  %90 = load i32, i32* %89, align 8, !dbg !800, !tbaa !801
  store i32 %90, i32* %44, align 8, !dbg !802, !tbaa !761
  %91 = load %struct.Proto*, %struct.Proto** %41, align 8, !dbg !803, !tbaa !481
  %92 = getelementptr inbounds %struct.Proto, %struct.Proto* %91, i64 0, i32 17, !dbg !804
  %93 = load i32, i32* %92, align 4, !dbg !804, !tbaa !805
  %94 = icmp eq i32 %90, 0, !dbg !806
  %95 = select i1 %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), !dbg !807
  %96 = bitcast %union.TString* %87 to i8*
  br label %97

; <label>:97:                                     ; preds = %83, %82
  %98 = phi i8* [ %96, %83 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), %82 ], !dbg !808
  %99 = phi i32 [ %93, %83 ], [ -1, %82 ]
  %100 = phi i8* [ %95, %83 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), %82 ]
  store i32 %99, i32* %45, align 4, !dbg !809
  store i8* %100, i8** %46, align 8, !dbg !810
  tail call void @luaO_chunkid(i8* nonnull %47, i8* %98, i64 60) #7, !dbg !811
  br label %213, !dbg !812

; <label>:101:                                    ; preds = %74
  br i1 %37, label %145, label %102, !dbg !813

; <label>:102:                                    ; preds = %101
  %103 = load %struct.lua_TValue*, %struct.lua_TValue** %49, align 8, !dbg !826, !tbaa !479
  %104 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %103, i64 0, i32 1, !dbg !826
  %105 = load i32, i32* %104, align 8, !dbg !826, !tbaa !557
  %106 = icmp eq i32 %105, 6, !dbg !826
  %107 = bitcast %struct.lua_TValue* %103 to %struct.LClosure**, !dbg !826
  br i1 %106, label %108, label %145, !dbg !826

; <label>:108:                                    ; preds = %102
  %109 = bitcast %struct.lua_TValue* %103 to %struct.CClosure**, !dbg !826
  %110 = load %struct.CClosure*, %struct.CClosure** %109, align 8, !dbg !826, !tbaa !481
  %111 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %110, i64 0, i32 3, !dbg !826
  %112 = load i8, i8* %111, align 2, !dbg !826, !tbaa !481
  %113 = icmp eq i8 %112, 0, !dbg !826
  %114 = bitcast %struct.CClosure* %110 to %struct.LClosure*, !dbg !827
  br i1 %113, label %115, label %145, !dbg !827

; <label>:115:                                    ; preds = %108
  %116 = load %struct.CallInfo*, %struct.CallInfo** %53, align 8, !dbg !828, !tbaa !467
  %117 = icmp eq %struct.CallInfo* %116, %28, !dbg !829
  br i1 %117, label %120, label %118, !dbg !830

; <label>:118:                                    ; preds = %115
  %119 = load i64, i64* %58, align 8, !dbg !831, !tbaa !577
  br label %123, !dbg !830

; <label>:120:                                    ; preds = %115
  %121 = load i64, i64* %56, align 8, !dbg !832, !tbaa !581
  store i64 %121, i64* %58, align 8, !dbg !833, !tbaa !577
  %122 = load %struct.LClosure*, %struct.LClosure** %107, align 8, !dbg !831, !tbaa !481
  br label %123, !dbg !834

; <label>:123:                                    ; preds = %120, %118
  %124 = phi %struct.LClosure* [ %114, %118 ], [ %122, %120 ]
  %125 = phi i64 [ %119, %118 ], [ %121, %120 ], !dbg !831
  %126 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %124, i64 0, i32 7, !dbg !831
  %127 = load %struct.Proto*, %struct.Proto** %126, align 8, !dbg !831, !tbaa !481
  %128 = getelementptr inbounds %struct.Proto, %struct.Proto* %127, i64 0, i32 4, !dbg !831
  %129 = bitcast i32** %128 to i64*, !dbg !831
  %130 = load i64, i64* %129, align 8, !dbg !831, !tbaa !585
  %131 = sub i64 %125, %130, !dbg !831
  %132 = lshr exact i64 %131, 2, !dbg !831
  %133 = trunc i64 %132 to i32, !dbg !831
  %134 = icmp slt i32 %133, 1, !dbg !836
  br i1 %134, label %145, label %135, !dbg !838

; <label>:135:                                    ; preds = %123
  %136 = getelementptr inbounds %struct.Proto, %struct.Proto* %127, i64 0, i32 6, !dbg !839
  %137 = load i32*, i32** %136, align 8, !dbg !839, !tbaa !840
  %138 = icmp eq i32* %137, null, !dbg !839
  br i1 %138, label %145, label %139, !dbg !839

; <label>:139:                                    ; preds = %135
  %140 = shl i64 %131, 30, !dbg !839
  %141 = add i64 %140, -4294967296, !dbg !839
  %142 = ashr exact i64 %141, 32, !dbg !839
  %143 = getelementptr inbounds i32, i32* %137, i64 %142, !dbg !839
  %144 = load i32, i32* %143, align 4, !dbg !839, !tbaa !841
  br label %145, !dbg !839

; <label>:145:                                    ; preds = %139, %135, %123, %108, %102, %101
  %146 = phi i32 [ -1, %101 ], [ -1, %123 ], [ %144, %139 ], [ 0, %135 ], [ -1, %108 ], [ -1, %102 ], !dbg !813
  store i32 %146, i32* %48, align 8, !dbg !842, !tbaa !758
  br label %213, !dbg !843

; <label>:147:                                    ; preds = %74
  %148 = load i8, i8* %38, align 1, !dbg !844, !tbaa !481
  %149 = zext i8 %148 to i32, !dbg !846
  store i32 %149, i32* %39, align 4, !dbg !847, !tbaa !770
  br label %213, !dbg !848

; <label>:150:                                    ; preds = %74
  br i1 %37, label %205, label %151, !dbg !849

; <label>:151:                                    ; preds = %150
  %152 = load %struct.lua_TValue*, %struct.lua_TValue** %49, align 8, !dbg !864, !tbaa !479
  %153 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %152, i64 0, i32 1, !dbg !864
  %154 = load i32, i32* %153, align 8, !dbg !864, !tbaa !557
  %155 = icmp eq i32 %154, 6, !dbg !864
  br i1 %155, label %156, label %165, !dbg !864

; <label>:156:                                    ; preds = %151
  %157 = bitcast %struct.lua_TValue* %152 to %struct.CClosure**, !dbg !864
  %158 = load %struct.CClosure*, %struct.CClosure** %157, align 8, !dbg !864, !tbaa !481
  %159 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %158, i64 0, i32 3, !dbg !864
  %160 = load i8, i8* %159, align 2, !dbg !864, !tbaa !481
  %161 = icmp eq i8 %160, 0, !dbg !864
  br i1 %161, label %162, label %165, !dbg !866

; <label>:162:                                    ; preds = %156
  %163 = load i32, i32* %54, align 4, !dbg !867, !tbaa !484
  %164 = icmp sgt i32 %163, 0, !dbg !868
  br i1 %164, label %205, label %165, !dbg !869

; <label>:165:                                    ; preds = %162, %156, %151
  %166 = load %struct.lua_TValue*, %struct.lua_TValue** %52, align 8, !dbg !870, !tbaa !479
  %167 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %166, i64 0, i32 1, !dbg !870
  %168 = load i32, i32* %167, align 8, !dbg !870, !tbaa !557
  %169 = icmp eq i32 %168, 6, !dbg !870
  %170 = bitcast %struct.lua_TValue* %166 to %struct.LClosure**, !dbg !870
  br i1 %169, label %171, label %205, !dbg !870

; <label>:171:                                    ; preds = %165
  %172 = bitcast %struct.lua_TValue* %166 to %struct.CClosure**, !dbg !870
  %173 = load %struct.CClosure*, %struct.CClosure** %172, align 8, !dbg !870, !tbaa !481
  %174 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %173, i64 0, i32 3, !dbg !870
  %175 = load i8, i8* %174, align 2, !dbg !870, !tbaa !481
  %176 = icmp eq i8 %175, 0, !dbg !870
  br i1 %176, label %177, label %205, !dbg !871

; <label>:177:                                    ; preds = %171
  %178 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %173, i64 0, i32 7, !dbg !872
  %179 = bitcast i32 (%struct.lua_State*)** %178 to %struct.Proto**, !dbg !872
  %180 = load %struct.Proto*, %struct.Proto** %179, align 8, !dbg !872, !tbaa !481
  %181 = getelementptr inbounds %struct.Proto, %struct.Proto* %180, i64 0, i32 4, !dbg !873
  %182 = load i32*, i32** %181, align 8, !dbg !873, !tbaa !585
  %183 = load %struct.CallInfo*, %struct.CallInfo** %53, align 8, !dbg !877, !tbaa !467
  %184 = icmp eq %struct.CallInfo* %183, %59, !dbg !878
  br i1 %184, label %187, label %185, !dbg !879

; <label>:185:                                    ; preds = %177
  %186 = load i64, i64* %61, align 8, !dbg !880, !tbaa !577
  br label %193, !dbg !879

; <label>:187:                                    ; preds = %177
  %188 = load i64, i64* %56, align 8, !dbg !881, !tbaa !581
  store i64 %188, i64* %61, align 8, !dbg !882, !tbaa !577
  %189 = load %struct.LClosure*, %struct.LClosure** %170, align 8, !dbg !880, !tbaa !481
  %190 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %189, i64 0, i32 7
  %191 = load %struct.Proto*, %struct.Proto** %190, align 8, !dbg !880, !tbaa !481
  %192 = getelementptr inbounds %struct.Proto, %struct.Proto* %191, i64 0, i32 4, !dbg !880
  br label %193, !dbg !883

; <label>:193:                                    ; preds = %187, %185
  %194 = phi i32** [ %192, %187 ], [ %181, %185 ], !dbg !880
  %195 = phi i64 [ %188, %187 ], [ %186, %185 ], !dbg !880
  %196 = bitcast i32** %194 to i64*, !dbg !880
  %197 = load i64, i64* %196, align 8, !dbg !880, !tbaa !585
  %198 = sub i64 %195, %197, !dbg !880
  %199 = shl i64 %198, 30, !dbg !884
  %200 = add i64 %199, -4294967296, !dbg !884
  %201 = ashr exact i64 %200, 32, !dbg !884
  %202 = getelementptr inbounds i32, i32* %182, i64 %201
  %203 = load i32, i32* %202, align 4, !dbg !885, !tbaa !841
  %204 = trunc i32 %203 to i6, !dbg !887
  switch i6 %204, label %205 [
    i6 28, label %206
    i6 29, label %206
    i6 -31, label %206
  ], !dbg !887

; <label>:205:                                    ; preds = %193, %171, %165, %162, %150
  store i8* null, i8** %50, align 8, !dbg !889, !tbaa !890
  br label %211, !dbg !891

; <label>:206:                                    ; preds = %193, %193, %193
  %207 = lshr i32 %203, 6, !dbg !892
  %208 = and i32 %207, 255, !dbg !892
  %209 = tail call fastcc i8* @getobjname(%struct.lua_State* nonnull %0, %struct.CallInfo* nonnull %59, i32 %208, i8** nonnull %51) #7, !dbg !893
  store i8* %209, i8** %50, align 8, !dbg !889, !tbaa !890
  %210 = icmp eq i8* %209, null, !dbg !894
  br i1 %210, label %211, label %213, !dbg !891

; <label>:211:                                    ; preds = %206, %205
  store <2 x i8*> <i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)>, <2 x i8*>* %62, align 8, !dbg !896, !tbaa !599
  br label %213, !dbg !898

; <label>:212:                                    ; preds = %74
  br label %213, !dbg !899

; <label>:213:                                    ; preds = %212, %211, %206, %147, %145, %97, %74, %74
  %214 = phi i32 [ 0, %212 ], [ %76, %74 ], [ %76, %74 ], [ %76, %211 ], [ %76, %206 ], [ %76, %147 ], [ %76, %145 ], [ %76, %97 ], !dbg !900
  %215 = getelementptr inbounds i8, i8* %77, i64 1, !dbg !901
  %216 = load i8, i8* %215, align 1, !dbg !741, !tbaa !481
  %217 = icmp eq i8 %216, 0, !dbg !744
  br i1 %217, label %218, label %74, !dbg !744, !llvm.loop !902

; <label>:218:                                    ; preds = %213, %32, %63
  %219 = phi i1 [ true, %63 ], [ false, %32 ], [ false, %213 ]
  %220 = phi i8* [ %64, %63 ], [ %30, %32 ], [ %30, %213 ]
  %221 = phi %union.Closure* [ null, %63 ], [ %29, %32 ], [ %29, %213 ]
  %222 = phi i32 [ 1, %63 ], [ 1, %32 ], [ %214, %213 ], !dbg !900
  %223 = tail call i8* @strchr(i8* %220, i32 102) #7, !dbg !906
  %224 = icmp eq i8* %223, null, !dbg !906
  br i1 %224, label %246, label %225, !dbg !907

; <label>:225:                                    ; preds = %218
  %226 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !908
  %227 = load %struct.lua_TValue*, %struct.lua_TValue** %226, align 8, !dbg !908, !tbaa !673
  br i1 %219, label %230, label %228, !dbg !909

; <label>:228:                                    ; preds = %225
  %229 = bitcast %struct.lua_TValue* %227 to %union.Closure**, !dbg !910
  store %union.Closure* %221, %union.Closure** %229, align 8, !dbg !910, !tbaa !481
  br label %230

; <label>:230:                                    ; preds = %225, %228
  %231 = phi i32 [ 6, %228 ], [ 0, %225 ]
  %232 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %227, i64 0, i32 1, !dbg !910
  store i32 %231, i32* %232, align 8, !dbg !910
  %233 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 9, !dbg !911
  %234 = bitcast %struct.lua_TValue** %233 to i64*, !dbg !911
  %235 = load i64, i64* %234, align 8, !dbg !911, !tbaa !914
  %236 = bitcast %struct.lua_TValue** %226 to i64*, !dbg !911
  %237 = load i64, i64* %236, align 8, !dbg !911, !tbaa !673
  %238 = sub i64 %235, %237, !dbg !911
  %239 = icmp slt i64 %238, 17, !dbg !911
  %240 = inttoptr i64 %237 to %struct.lua_TValue*, !dbg !915
  br i1 %239, label %241, label %243, !dbg !915

; <label>:241:                                    ; preds = %230
  tail call void @luaD_growstack(%struct.lua_State* nonnull %0, i32 1) #7, !dbg !911
  %242 = load %struct.lua_TValue*, %struct.lua_TValue** %226, align 8, !dbg !915, !tbaa !673
  br label %243, !dbg !911

; <label>:243:                                    ; preds = %230, %241
  %244 = phi %struct.lua_TValue* [ %240, %230 ], [ %242, %241 ], !dbg !915
  %245 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %244, i64 1, !dbg !915
  store %struct.lua_TValue* %245, %struct.lua_TValue** %226, align 8, !dbg !915, !tbaa !673
  br label %246, !dbg !916

; <label>:246:                                    ; preds = %218, %243
  %247 = tail call i8* @strchr(i8* %220, i32 76) #7, !dbg !917
  %248 = icmp eq i8* %247, null, !dbg !917
  br i1 %248, label %304, label %249, !dbg !919

; <label>:249:                                    ; preds = %246
  br i1 %219, label %254, label %250, !dbg !942

; <label>:250:                                    ; preds = %249
  %251 = getelementptr inbounds %union.Closure, %union.Closure* %221, i64 0, i32 0, i32 3, !dbg !943
  %252 = load i8, i8* %251, align 2, !dbg !943, !tbaa !481
  %253 = icmp eq i8 %252, 0, !dbg !944
  br i1 %253, label %259, label %254, !dbg !945

; <label>:254:                                    ; preds = %250, %249
  %255 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !946
  %256 = load %struct.lua_TValue*, %struct.lua_TValue** %255, align 8, !dbg !946, !tbaa !673
  %257 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %256, i64 0, i32 1, !dbg !946
  store i32 0, i32* %257, align 8, !dbg !946, !tbaa !557
  %258 = ptrtoint %struct.lua_TValue* %256 to i64, !dbg !948
  br label %290, !dbg !948

; <label>:259:                                    ; preds = %250
  %260 = tail call %struct.Table* @luaH_new(%struct.lua_State* %0, i32 0, i32 0) #7, !dbg !949
  %261 = getelementptr inbounds %union.Closure, %union.Closure* %221, i64 0, i32 0, i32 7, !dbg !951
  %262 = bitcast i32 (%struct.lua_State*)** %261 to %struct.Proto**, !dbg !951
  %263 = load %struct.Proto*, %struct.Proto** %262, align 8, !dbg !951, !tbaa !481
  %264 = getelementptr inbounds %struct.Proto, %struct.Proto* %263, i64 0, i32 6, !dbg !952
  %265 = load i32*, i32** %264, align 8, !dbg !952, !tbaa !840
  %266 = getelementptr inbounds %struct.Proto, %struct.Proto* %263, i64 0, i32 13, !dbg !955
  %267 = load i32, i32* %266, align 4, !dbg !955, !tbaa !956
  %268 = icmp sgt i32 %267, 0, !dbg !957
  br i1 %268, label %269, label %282, !dbg !958

; <label>:269:                                    ; preds = %259, %269
  %270 = phi i64 [ %276, %269 ], [ 0, %259 ]
  %271 = getelementptr inbounds i32, i32* %265, i64 %270, !dbg !959
  %272 = load i32, i32* %271, align 4, !dbg !959, !tbaa !841
  %273 = tail call %struct.lua_TValue* @luaH_setnum(%struct.lua_State* %0, %struct.Table* %260, i32 %272) #7, !dbg !959
  %274 = bitcast %struct.lua_TValue* %273 to i32*, !dbg !959
  store i32 1, i32* %274, align 8, !dbg !959, !tbaa !481
  %275 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %273, i64 0, i32 1, !dbg !959
  store i32 1, i32* %275, align 8, !dbg !959, !tbaa !557
  %276 = add nuw nsw i64 %270, 1, !dbg !960
  %277 = load %struct.Proto*, %struct.Proto** %262, align 8, !dbg !961, !tbaa !481
  %278 = getelementptr inbounds %struct.Proto, %struct.Proto* %277, i64 0, i32 13, !dbg !955
  %279 = load i32, i32* %278, align 4, !dbg !955, !tbaa !956
  %280 = sext i32 %279 to i64, !dbg !957
  %281 = icmp slt i64 %276, %280, !dbg !957
  br i1 %281, label %269, label %282, !dbg !958, !llvm.loop !962

; <label>:282:                                    ; preds = %269, %259
  %283 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !965
  %284 = load %struct.lua_TValue*, %struct.lua_TValue** %283, align 8, !dbg !965, !tbaa !673
  %285 = bitcast %struct.lua_TValue* %284 to %struct.Table**, !dbg !965
  store %struct.Table* %260, %struct.Table** %285, align 8, !dbg !965, !tbaa !481
  %286 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %284, i64 0, i32 1, !dbg !965
  store i32 5, i32* %286, align 8, !dbg !965, !tbaa !557
  %287 = bitcast %struct.lua_TValue** %283 to i64*
  %288 = load i64, i64* %287, align 8, !dbg !966, !tbaa !673
  %289 = inttoptr i64 %288 to %struct.lua_TValue*
  br label %290

; <label>:290:                                    ; preds = %282, %254
  %291 = phi %struct.lua_TValue** [ %283, %282 ], [ %255, %254 ], !dbg !966
  %292 = phi %struct.lua_TValue* [ %289, %282 ], [ %256, %254 ]
  %293 = phi i64 [ %288, %282 ], [ %258, %254 ], !dbg !966
  %294 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 9, !dbg !966
  %295 = bitcast %struct.lua_TValue** %294 to i64*, !dbg !966
  %296 = load i64, i64* %295, align 8, !dbg !966, !tbaa !914
  %297 = sub i64 %296, %293, !dbg !966
  %298 = icmp slt i64 %297, 17, !dbg !966
  br i1 %298, label %299, label %301, !dbg !969

; <label>:299:                                    ; preds = %290
  tail call void @luaD_growstack(%struct.lua_State* nonnull %0, i32 1) #7, !dbg !966
  %300 = load %struct.lua_TValue*, %struct.lua_TValue** %291, align 8, !dbg !969, !tbaa !673
  br label %301, !dbg !966

; <label>:301:                                    ; preds = %290, %299
  %302 = phi %struct.lua_TValue* [ %292, %290 ], [ %300, %299 ], !dbg !969
  %303 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %302, i64 1, !dbg !969
  store %struct.lua_TValue* %303, %struct.lua_TValue** %291, align 8, !dbg !969, !tbaa !673
  br label %304, !dbg !970

; <label>:304:                                    ; preds = %246, %301
  ret i32 %222, !dbg !971
}

; Function Attrs: noredzone
declare dso_local i8* @strchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: noredzone
declare hidden void @luaD_growstack(%struct.lua_State*, i32) local_unnamed_addr #4

; Function Attrs: noredzone nounwind readnone
define hidden i32 @luaG_checkopenop(i32) local_unnamed_addr #5 !dbg !972 {
  %2 = trunc i32 %0 to i6, !dbg !978
  switch i6 %2, label %6 [
    i6 28, label %3
    i6 29, label %3
    i6 30, label %3
    i6 -30, label %3
  ], !dbg !978

; <label>:3:                                      ; preds = %1, %1, %1, %1
  %4 = icmp ult i32 %0, 8388608, !dbg !979
  %5 = zext i1 %4 to i32, !dbg !983
  br label %6, !dbg !983

; <label>:6:                                      ; preds = %1, %3
  %7 = phi i32 [ %5, %3 ], [ 0, %1 ], !dbg !984
  ret i32 %7, !dbg !985
}

; Function Attrs: noredzone nounwind readonly
define hidden i32 @luaG_checkcode(%struct.Proto* readonly) local_unnamed_addr #2 !dbg !986 {
  %2 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 12, !dbg !994
  %3 = load i32, i32* %2, align 8, !dbg !994, !tbaa !995
  %4 = tail call fastcc i32 @symbexec(%struct.Proto* %0, i32 %3, i32 255) #8, !dbg !996
  %5 = icmp ne i32 %4, 0, !dbg !997
  %6 = zext i1 %5 to i32, !dbg !997
  ret i32 %6, !dbg !998
}

; Function Attrs: noredzone nounwind readonly
define internal fastcc i32 @symbexec(%struct.Proto* readonly, i32, i32) unnamed_addr #2 !dbg !999 {
  %4 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 12, !dbg !1041
  %5 = load i32, i32* %4, align 8, !dbg !1041, !tbaa !995
  %6 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 22, !dbg !1048
  %7 = load i8, i8* %6, align 1, !dbg !1048, !tbaa !1050
  %8 = icmp ult i8 %7, -5, !dbg !1048
  br i1 %8, label %9, label %324, !dbg !1051

; <label>:9:                                      ; preds = %3
  %10 = zext i8 %7 to i32, !dbg !1048
  %11 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 20, !dbg !1052
  %12 = load i8, i8* %11, align 1, !dbg !1052, !tbaa !1054
  %13 = zext i8 %12 to i32, !dbg !1052
  %14 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 21, !dbg !1052
  %15 = load i8, i8* %14, align 2, !dbg !1052, !tbaa !1055
  %16 = zext i8 %15 to i32, !dbg !1052
  %17 = and i32 %16, 1, !dbg !1052
  %18 = add nuw nsw i32 %17, %13, !dbg !1052
  %19 = icmp ugt i32 %18, %10, !dbg !1052
  %20 = and i32 %16, 5, !dbg !1056
  %21 = icmp eq i32 %20, 4, !dbg !1056
  %22 = or i1 %21, %19, !dbg !1058
  br i1 %22, label %324, label %23, !dbg !1058

; <label>:23:                                     ; preds = %9
  %24 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 10, !dbg !1059
  %25 = load i32, i32* %24, align 8, !dbg !1059, !tbaa !1061
  %26 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 19, !dbg !1059
  %27 = load i8, i8* %26, align 8, !dbg !1059, !tbaa !1062
  %28 = zext i8 %27 to i32, !dbg !1059
  %29 = icmp sgt i32 %25, %28, !dbg !1059
  br i1 %29, label %324, label %30, !dbg !1063

; <label>:30:                                     ; preds = %23
  %31 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 13, !dbg !1064
  %32 = load i32, i32* %31, align 4, !dbg !1064, !tbaa !956
  %33 = icmp eq i32 %32, %5, !dbg !1064
  %34 = icmp eq i32 %32, 0, !dbg !1064
  %35 = or i1 %34, %33, !dbg !1064
  %36 = icmp sgt i32 %5, 0, !dbg !1066
  %37 = and i1 %36, %35, !dbg !1064
  br i1 %37, label %38, label %324, !dbg !1064

; <label>:38:                                     ; preds = %30
  %39 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 4, !dbg !1066
  %40 = load i32*, i32** %39, align 8, !dbg !1066, !tbaa !585
  %41 = add nsw i32 %5, -1, !dbg !1066
  %42 = sext i32 %41 to i64, !dbg !1066
  %43 = getelementptr inbounds i32, i32* %40, i64 %42, !dbg !1066
  %44 = load i32, i32* %43, align 4, !dbg !1066, !tbaa !841
  %45 = and i32 %44, 63, !dbg !1066
  %46 = icmp eq i32 %45, 30, !dbg !1066
  br i1 %46, label %47, label %324, !dbg !1068

; <label>:47:                                     ; preds = %38
  %48 = icmp sgt i32 %1, 0, !dbg !1071
  br i1 %48, label %49, label %324, !dbg !1072

; <label>:49:                                     ; preds = %47
  %50 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 11
  %51 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 3
  %52 = icmp eq i32 %2, 255
  %53 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 14
  %54 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 5
  %55 = and i8 %15, 6
  %56 = icmp eq i8 %55, 2
  br label %57, !dbg !1072

; <label>:57:                                     ; preds = %49, %315
  %58 = phi i32 [ 0, %49 ], [ %318, %315 ]
  %59 = phi i32 [ %41, %49 ], [ %317, %315 ]
  %60 = sext i32 %58 to i64, !dbg !1073
  %61 = getelementptr inbounds i32, i32* %40, i64 %60, !dbg !1073
  %62 = load i32, i32* %61, align 4, !dbg !1073, !tbaa !841
  %63 = and i32 %62, 63, !dbg !1075
  %64 = lshr i32 %62, 6, !dbg !1077
  %65 = and i32 %64, 255, !dbg !1077
  %66 = icmp ult i32 %63, 38, !dbg !1081
  %67 = icmp ult i32 %65, %10, !dbg !1083
  %68 = and i1 %66, %67, !dbg !1085
  br i1 %68, label %69, label %324, !dbg !1085

; <label>:69:                                     ; preds = %57
  %70 = zext i32 %63 to i64, !dbg !1086
  %71 = getelementptr inbounds [38 x i8], [38 x i8]* @luaP_opmodes, i64 0, i64 %70, !dbg !1086
  %72 = load i8, i8* %71, align 1, !dbg !1086, !tbaa !481
  %73 = zext i8 %72 to i32, !dbg !1086
  %74 = trunc i8 %72 to i2, !dbg !1087
  switch i2 %74, label %152 [
    i2 0, label %75
    i2 1, label %109
    i2 -2, label %116
  ], !dbg !1087

; <label>:75:                                     ; preds = %69
  %76 = lshr i32 %62, 23, !dbg !1088
  %77 = lshr i32 %62, 14, !dbg !1090
  %78 = and i32 %77, 511, !dbg !1090
  %79 = lshr i8 %72, 4, !dbg !1103
  %80 = trunc i8 %79 to i2, !dbg !1103
  switch i2 %80, label %93 [
    i2 0, label %81
    i2 -1, label %85
    i2 -2, label %83
  ], !dbg !1103

; <label>:81:                                     ; preds = %75
  %82 = icmp eq i32 %76, 0, !dbg !1104
  br i1 %82, label %93, label %324, !dbg !1107

; <label>:83:                                     ; preds = %75
  %84 = icmp ult i32 %76, %10, !dbg !1108
  br i1 %84, label %93, label %324, !dbg !1110

; <label>:85:                                     ; preds = %75
  %86 = icmp sgt i32 %62, -1, !dbg !1111
  br i1 %86, label %91, label %87, !dbg !1113

; <label>:87:                                     ; preds = %85
  %88 = and i32 %76, 255, !dbg !1111
  %89 = load i32, i32* %50, align 4, !dbg !1111, !tbaa !1114
  %90 = icmp slt i32 %88, %89, !dbg !1111
  br i1 %90, label %93, label %324, !dbg !1111

; <label>:91:                                     ; preds = %85
  %92 = icmp ult i32 %76, %10, !dbg !1111
  br i1 %92, label %93, label %324, !dbg !1113

; <label>:93:                                     ; preds = %91, %87, %83, %81, %75
  %94 = lshr i8 %72, 2, !dbg !1115
  %95 = trunc i8 %94 to i2, !dbg !1120
  switch i2 %95, label %152 [
    i2 0, label %96
    i2 -1, label %100
    i2 -2, label %98
  ], !dbg !1120

; <label>:96:                                     ; preds = %93
  %97 = icmp eq i32 %78, 0, !dbg !1121
  br i1 %97, label %152, label %324, !dbg !1122

; <label>:98:                                     ; preds = %93
  %99 = icmp ult i32 %78, %10, !dbg !1123
  br i1 %99, label %152, label %324, !dbg !1124

; <label>:100:                                    ; preds = %93
  %101 = and i32 %62, 4194304, !dbg !1125
  %102 = icmp eq i32 %101, 0, !dbg !1125
  br i1 %102, label %107, label %103, !dbg !1126

; <label>:103:                                    ; preds = %100
  %104 = and i32 %77, 255, !dbg !1125
  %105 = load i32, i32* %50, align 4, !dbg !1125, !tbaa !1114
  %106 = icmp slt i32 %104, %105, !dbg !1125
  br i1 %106, label %152, label %324, !dbg !1125

; <label>:107:                                    ; preds = %100
  %108 = icmp ult i32 %78, %10, !dbg !1125
  br i1 %108, label %152, label %324, !dbg !1126

; <label>:109:                                    ; preds = %69
  %110 = lshr i32 %62, 14, !dbg !1127
  %111 = and i32 %73, 48, !dbg !1129
  %112 = icmp eq i32 %111, 48, !dbg !1131
  br i1 %112, label %113, label %152, !dbg !1132

; <label>:113:                                    ; preds = %109
  %114 = load i32, i32* %50, align 4, !dbg !1133, !tbaa !1114
  %115 = icmp slt i32 %110, %114, !dbg !1133
  br i1 %115, label %152, label %324, !dbg !1135

; <label>:116:                                    ; preds = %69
  %117 = lshr i32 %62, 14, !dbg !1136
  %118 = add nsw i32 %117, -131071, !dbg !1136
  %119 = and i32 %73, 48, !dbg !1137
  %120 = icmp eq i32 %119, 32, !dbg !1138
  br i1 %120, label %121, label %152, !dbg !1139

; <label>:121:                                    ; preds = %116
  %122 = add nsw i32 %58, 1, !dbg !1140
  %123 = add nsw i32 %122, %118, !dbg !1141
  %124 = icmp sgt i32 %123, -1, !dbg !1143
  %125 = icmp slt i32 %123, %5, !dbg !1143
  %126 = and i1 %124, %125, !dbg !1143
  br i1 %126, label %127, label %324, !dbg !1143

; <label>:127:                                    ; preds = %121
  %128 = icmp sgt i32 %123, 0, !dbg !1145
  br i1 %128, label %129, label %152, !dbg !1146

; <label>:129:                                    ; preds = %127
  %130 = add i32 %118, %58, !dbg !1147
  %131 = sext i32 %123 to i64, !dbg !1149
  br label %132, !dbg !1149

; <label>:132:                                    ; preds = %129, %142
  %133 = phi i64 [ 0, %129 ], [ %143, %142 ]
  %134 = phi i32 [ 0, %129 ], [ %144, %142 ]
  %135 = trunc i64 %133 to i32, !dbg !1150
  %136 = sub i32 %130, %135, !dbg !1150
  %137 = sext i32 %136 to i64, !dbg !1151
  %138 = getelementptr inbounds i32, i32* %40, i64 %137, !dbg !1151
  %139 = load i32, i32* %138, align 4, !dbg !1151, !tbaa !841
  %140 = and i32 %139, 8372287, !dbg !1153
  %141 = icmp eq i32 %140, 34, !dbg !1153
  br i1 %141, label %142, label %146, !dbg !1153

; <label>:142:                                    ; preds = %132
  %143 = add nuw nsw i64 %133, 1, !dbg !1155
  %144 = add nuw nsw i32 %134, 1, !dbg !1155
  %145 = icmp slt i64 %143, %131, !dbg !1156
  br i1 %145, label %132, label %148, !dbg !1149, !llvm.loop !1157

; <label>:146:                                    ; preds = %132
  %147 = trunc i64 %133 to i32, !dbg !1150
  br label %148, !dbg !1159

; <label>:148:                                    ; preds = %142, %146
  %149 = phi i32 [ %147, %146 ], [ %144, %142 ], !dbg !1161
  %150 = and i32 %149, 1, !dbg !1159
  %151 = icmp eq i32 %150, 0, !dbg !1159
  br i1 %151, label %152, label %324

; <label>:152:                                    ; preds = %148, %127, %107, %103, %98, %96, %93, %116, %109, %113, %69
  %153 = phi i32 [ 0, %69 ], [ 0, %116 ], [ 0, %113 ], [ 0, %109 ], [ %78, %93 ], [ 0, %96 ], [ %78, %98 ], [ %78, %103 ], [ %78, %107 ], [ 0, %127 ], [ 0, %148 ], !dbg !1162
  %154 = phi i32 [ 0, %69 ], [ %118, %116 ], [ %110, %113 ], [ %110, %109 ], [ %76, %93 ], [ %76, %96 ], [ %76, %98 ], [ %76, %103 ], [ %76, %107 ], [ %118, %127 ], [ %118, %148 ], !dbg !1162
  %155 = and i8 %72, 64, !dbg !1163
  %156 = icmp ne i8 %155, 0, !dbg !1163
  %157 = icmp eq i32 %65, %2, !dbg !1165
  %158 = and i1 %157, %156, !dbg !1168
  %159 = select i1 %158, i32 %58, i32 %59, !dbg !1168
  %160 = icmp slt i8 %72, 0, !dbg !1169
  br i1 %160, label %161, label %171, !dbg !1171

; <label>:161:                                    ; preds = %152
  %162 = add nsw i32 %58, 2, !dbg !1172
  %163 = icmp slt i32 %162, %5, !dbg !1172
  br i1 %163, label %164, label %324, !dbg !1175

; <label>:164:                                    ; preds = %161
  %165 = add nsw i32 %58, 1, !dbg !1176
  %166 = sext i32 %165 to i64, !dbg !1176
  %167 = getelementptr inbounds i32, i32* %40, i64 %166, !dbg !1176
  %168 = load i32, i32* %167, align 4, !dbg !1176, !tbaa !841
  %169 = and i32 %168, 63, !dbg !1176
  %170 = icmp eq i32 %169, 22, !dbg !1176
  br i1 %170, label %171, label %324, !dbg !1178

; <label>:171:                                    ; preds = %164, %152
  %172 = trunc i32 %62 to i6, !dbg !1179
  switch i6 %172, label %315 [
    i6 2, label %173
    i6 3, label %185
    i6 4, label %190
    i6 8, label %190
    i6 5, label %192
    i6 7, label %192
    i6 11, label %198
    i6 21, label %204
    i6 -31, label %206
    i6 31, label %215
    i6 -32, label %215
    i6 22, label %218
    i6 28, label %227
    i6 29, label %227
    i6 30, label %251
    i6 -30, label %257
    i6 -28, label %267
    i6 -27, label %297
  ], !dbg !1179

; <label>:173:                                    ; preds = %171
  %174 = icmp eq i32 %153, 1, !dbg !1180
  br i1 %174, label %175, label %315, !dbg !1183

; <label>:175:                                    ; preds = %173
  %176 = add nsw i32 %58, 2, !dbg !1184
  %177 = icmp slt i32 %176, %5, !dbg !1184
  br i1 %177, label %178, label %324, !dbg !1187

; <label>:178:                                    ; preds = %175
  %179 = add nsw i32 %58, 1, !dbg !1188
  %180 = sext i32 %179 to i64, !dbg !1188
  %181 = getelementptr inbounds i32, i32* %40, i64 %180, !dbg !1188
  %182 = load i32, i32* %181, align 4, !dbg !1188, !tbaa !841
  %183 = and i32 %182, 8372287, !dbg !1188
  %184 = icmp eq i32 %183, 34, !dbg !1188
  br i1 %184, label %324, label %315, !dbg !1188

; <label>:185:                                    ; preds = %171
  %186 = icmp sgt i32 %65, %2, !dbg !1190
  %187 = icmp slt i32 %154, %2, !dbg !1193
  %188 = or i1 %186, %187, !dbg !1194
  %189 = select i1 %188, i32 %159, i32 %58, !dbg !1194
  br label %315, !dbg !1194

; <label>:190:                                    ; preds = %171, %171
  %191 = icmp slt i32 %154, %28, !dbg !1195
  br i1 %191, label %315, label %324, !dbg !1198

; <label>:192:                                    ; preds = %171, %171
  %193 = load %struct.lua_TValue*, %struct.lua_TValue** %51, align 8, !dbg !1199, !tbaa !1202
  %194 = sext i32 %154 to i64, !dbg !1199
  %195 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %193, i64 %194, i32 1, !dbg !1199
  %196 = load i32, i32* %195, align 8, !dbg !1199, !tbaa !557
  %197 = icmp eq i32 %196, 4, !dbg !1199
  br i1 %197, label %315, label %324, !dbg !1203

; <label>:198:                                    ; preds = %171
  %199 = add nuw nsw i32 %65, 1, !dbg !1204
  %200 = icmp ult i32 %199, %10, !dbg !1204
  br i1 %200, label %201, label %324, !dbg !1207

; <label>:201:                                    ; preds = %198
  %202 = icmp eq i32 %199, %2, !dbg !1208
  %203 = select i1 %202, i32 %58, i32 %159, !dbg !1210
  br label %315, !dbg !1210

; <label>:204:                                    ; preds = %171
  %205 = icmp slt i32 %154, %153, !dbg !1211
  br i1 %205, label %315, label %324, !dbg !1214

; <label>:206:                                    ; preds = %171
  %207 = icmp eq i32 %153, 0, !dbg !1215
  br i1 %207, label %324, label %208, !dbg !1218

; <label>:208:                                    ; preds = %206
  %209 = add nuw nsw i32 %65, 2, !dbg !1219
  %210 = add nuw nsw i32 %153, %209, !dbg !1219
  %211 = icmp ult i32 %210, %10, !dbg !1219
  br i1 %211, label %212, label %324, !dbg !1221

; <label>:212:                                    ; preds = %208
  %213 = icmp sgt i32 %209, %2, !dbg !1222
  %214 = select i1 %213, i32 %159, i32 %58, !dbg !1224
  br label %315, !dbg !1224

; <label>:215:                                    ; preds = %171, %171
  %216 = add nuw nsw i32 %65, 3, !dbg !1225
  %217 = icmp ult i32 %216, %10, !dbg !1225
  br i1 %217, label %218, label %324, !dbg !1227

; <label>:218:                                    ; preds = %215, %171
  %219 = add nsw i32 %58, 1, !dbg !1228
  %220 = add nsw i32 %219, %154, !dbg !1229
  %221 = icmp sge i32 %58, %220, !dbg !1231
  %222 = or i1 %52, %221, !dbg !1233
  %223 = icmp sgt i32 %220, %1, !dbg !1234
  %224 = or i1 %223, %222, !dbg !1233
  %225 = select i1 %224, i32 0, i32 %154, !dbg !1233
  %226 = add nsw i32 %225, %58, !dbg !1233
  br label %315, !dbg !1233

; <label>:227:                                    ; preds = %171, %171
  %228 = icmp ne i32 %154, 0, !dbg !1235
  %229 = add nsw i32 %154, %65, !dbg !1238
  %230 = icmp sgt i32 %229, %10, !dbg !1238
  %231 = and i1 %228, %230, !dbg !1241
  br i1 %231, label %324, label %232, !dbg !1241

; <label>:232:                                    ; preds = %227
  %233 = add nsw i32 %153, -1, !dbg !1242
  %234 = icmp eq i32 %153, 0, !dbg !1243
  br i1 %234, label %235, label %243, !dbg !1245

; <label>:235:                                    ; preds = %232
  %236 = add nsw i32 %58, 1, !dbg !1246
  %237 = sext i32 %236 to i64, !dbg !1246
  %238 = getelementptr inbounds i32, i32* %40, i64 %237, !dbg !1246
  %239 = load i32, i32* %238, align 4, !dbg !1246, !tbaa !841
  %240 = trunc i32 %239 to i6, !dbg !1251
  switch i6 %240, label %324 [
    i6 28, label %241
    i6 29, label %241
    i6 30, label %241
    i6 -30, label %241
  ], !dbg !1251

; <label>:241:                                    ; preds = %235, %235, %235, %235
  %242 = icmp ugt i32 %239, 8388607, !dbg !1252
  br i1 %242, label %324, label %248, !dbg !1253

; <label>:243:                                    ; preds = %232
  %244 = icmp ne i32 %233, 0, !dbg !1254
  %245 = add nsw i32 %233, %65, !dbg !1256
  %246 = icmp sgt i32 %245, %10, !dbg !1256
  %247 = and i1 %244, %246, !dbg !1258
  br i1 %247, label %324, label %248, !dbg !1258

; <label>:248:                                    ; preds = %243, %241
  %249 = icmp sgt i32 %65, %2, !dbg !1259
  %250 = select i1 %249, i32 %159, i32 %58, !dbg !1261
  br label %315, !dbg !1261

; <label>:251:                                    ; preds = %171
  %252 = icmp sgt i32 %154, 1, !dbg !1262
  br i1 %252, label %253, label %315, !dbg !1265

; <label>:253:                                    ; preds = %251
  %254 = add i32 %154, %65, !dbg !1266
  %255 = add i32 %254, -1, !dbg !1267
  %256 = icmp sgt i32 %255, %10, !dbg !1267
  br i1 %256, label %324, label %315, !dbg !1269

; <label>:257:                                    ; preds = %171
  %258 = icmp slt i32 %154, 1, !dbg !1270
  %259 = add nsw i32 %154, %65, !dbg !1273
  %260 = icmp slt i32 %259, %10, !dbg !1273
  %261 = or i1 %258, %260, !dbg !1275
  br i1 %261, label %262, label %324, !dbg !1275

; <label>:262:                                    ; preds = %257
  %263 = icmp eq i32 %153, 0, !dbg !1276
  br i1 %263, label %264, label %315, !dbg !1278

; <label>:264:                                    ; preds = %262
  %265 = add nsw i32 %58, 1, !dbg !1279
  %266 = icmp slt i32 %265, %41, !dbg !1281
  br i1 %266, label %315, label %324, !dbg !1283

; <label>:267:                                    ; preds = %171
  %268 = load i32, i32* %53, align 8, !dbg !1284, !tbaa !1286
  %269 = icmp slt i32 %154, %268, !dbg !1284
  br i1 %269, label %270, label %324, !dbg !1287

; <label>:270:                                    ; preds = %267
  %271 = load %struct.Proto**, %struct.Proto*** %54, align 8, !dbg !1288, !tbaa !1289
  %272 = sext i32 %154 to i64, !dbg !1290
  %273 = getelementptr inbounds %struct.Proto*, %struct.Proto** %271, i64 %272, !dbg !1290
  %274 = load %struct.Proto*, %struct.Proto** %273, align 8, !dbg !1290, !tbaa !599
  %275 = getelementptr inbounds %struct.Proto, %struct.Proto* %274, i64 0, i32 19, !dbg !1291
  %276 = load i8, i8* %275, align 8, !dbg !1291, !tbaa !1062
  %277 = zext i8 %276 to i32, !dbg !1290
  %278 = add nsw i32 %58, %277, !dbg !1293
  %279 = icmp slt i32 %278, %5, !dbg !1293
  br i1 %279, label %280, label %324, !dbg !1295

; <label>:280:                                    ; preds = %270
  %281 = icmp eq i8 %276, 0, !dbg !1297
  br i1 %281, label %295, label %282, !dbg !1298

; <label>:282:                                    ; preds = %280
  %283 = zext i8 %276 to i64, !dbg !1299
  br label %287, !dbg !1299

; <label>:284:                                    ; preds = %287
  %285 = add nuw nsw i64 %288, 1, !dbg !1300
  %286 = icmp ult i64 %288, %283, !dbg !1297
  br i1 %286, label %287, label %295, !dbg !1298, !llvm.loop !1301

; <label>:287:                                    ; preds = %282, %284
  %288 = phi i64 [ 1, %282 ], [ %285, %284 ]
  %289 = add nsw i64 %288, %60, !dbg !1299
  %290 = getelementptr inbounds i32, i32* %40, i64 %289, !dbg !1299
  %291 = load i32, i32* %290, align 4, !dbg !1299, !tbaa !841
  %292 = and i32 %291, 59, !dbg !1299
  %293 = or i32 %292, 4, !dbg !1304
  %294 = icmp eq i32 %293, 4, !dbg !1304
  br i1 %294, label %284, label %324

; <label>:295:                                    ; preds = %284, %280
  %296 = select i1 %52, i32 %58, i32 %278, !dbg !1306
  br label %315

; <label>:297:                                    ; preds = %171
  br i1 %56, label %298, label %324, !dbg !1307

; <label>:298:                                    ; preds = %297
  %299 = add nsw i32 %154, -1, !dbg !1310
  %300 = icmp eq i32 %154, 0, !dbg !1311
  br i1 %300, label %301, label %312, !dbg !1313

; <label>:301:                                    ; preds = %298
  %302 = add nsw i32 %58, 1, !dbg !1314
  %303 = sext i32 %302 to i64, !dbg !1314
  %304 = getelementptr inbounds i32, i32* %40, i64 %303, !dbg !1314
  %305 = load i32, i32* %304, align 4, !dbg !1314, !tbaa !841
  %306 = trunc i32 %305 to i6, !dbg !1318
  switch i6 %306, label %324 [
    i6 28, label %307
    i6 29, label %307
    i6 30, label %307
    i6 -30, label %307
  ], !dbg !1318

; <label>:307:                                    ; preds = %301, %301, %301, %301
  %308 = icmp ugt i32 %305, 8388607, !dbg !1319
  %309 = add nsw i32 %299, %65, !dbg !1320
  %310 = icmp sgt i32 %309, %10, !dbg !1320
  %311 = or i1 %310, %308, !dbg !1322
  br i1 %311, label %324, label %315, !dbg !1322

; <label>:312:                                    ; preds = %298
  %313 = add nsw i32 %299, %65, !dbg !1320
  %314 = icmp sgt i32 %313, %10, !dbg !1320
  br i1 %314, label %324, label %315, !dbg !1323

; <label>:315:                                    ; preds = %307, %295, %185, %248, %212, %201, %218, %178, %253, %312, %171, %262, %264, %251, %204, %192, %190, %173
  %316 = phi i32 [ %58, %171 ], [ %58, %312 ], [ %296, %295 ], [ %265, %264 ], [ %58, %262 ], [ %58, %253 ], [ %58, %251 ], [ %58, %204 ], [ %58, %192 ], [ %58, %190 ], [ %58, %178 ], [ %58, %173 ], [ %58, %201 ], [ %58, %212 ], [ %226, %218 ], [ %58, %248 ], [ %58, %185 ], [ %58, %307 ]
  %317 = phi i32 [ %159, %171 ], [ %159, %312 ], [ %159, %295 ], [ %159, %264 ], [ %159, %262 ], [ %159, %253 ], [ %159, %251 ], [ %159, %204 ], [ %159, %192 ], [ %159, %190 ], [ %159, %178 ], [ %159, %173 ], [ %203, %201 ], [ %214, %212 ], [ %159, %218 ], [ %250, %248 ], [ %189, %185 ], [ %159, %307 ]
  %318 = add nsw i32 %316, 1, !dbg !1324
  %319 = icmp slt i32 %318, %1, !dbg !1071
  br i1 %319, label %57, label %320, !dbg !1072, !llvm.loop !1325

; <label>:320:                                    ; preds = %315
  %321 = sext i32 %317 to i64
  %322 = getelementptr inbounds i32, i32* %40, i64 %321
  %323 = load i32, i32* %322, align 4, !dbg !1327, !tbaa !841
  br label %324, !dbg !1327

; <label>:324:                                    ; preds = %148, %257, %243, %227, %267, %270, %301, %235, %121, %103, %107, %98, %96, %87, %91, %83, %81, %312, %307, %297, %264, %253, %241, %215, %208, %206, %204, %198, %192, %190, %178, %175, %164, %161, %113, %57, %287, %47, %320, %38, %3, %9, %23, %30
  %325 = phi i32 [ 0, %38 ], [ 0, %30 ], [ 0, %23 ], [ 0, %9 ], [ 0, %3 ], [ %44, %47 ], [ %323, %320 ], [ 0, %287 ], [ 0, %57 ], [ 0, %113 ], [ 0, %161 ], [ 0, %164 ], [ 0, %175 ], [ 0, %178 ], [ 0, %190 ], [ 0, %192 ], [ 0, %198 ], [ 0, %204 ], [ 0, %206 ], [ 0, %208 ], [ 0, %215 ], [ 0, %241 ], [ 0, %253 ], [ 0, %264 ], [ 0, %297 ], [ 0, %307 ], [ 0, %312 ], [ 0, %81 ], [ 0, %83 ], [ 0, %91 ], [ 0, %87 ], [ 0, %96 ], [ 0, %98 ], [ 0, %107 ], [ 0, %103 ], [ 0, %121 ], [ 0, %235 ], [ 0, %301 ], [ 0, %270 ], [ 0, %267 ], [ 0, %227 ], [ 0, %243 ], [ 0, %257 ], [ 0, %148 ]
  ret i32 %325, !dbg !1328
}

; Function Attrs: noredzone nounwind
define hidden void @luaG_typeerror(%struct.lua_State*, %struct.lua_TValue*, i8*) local_unnamed_addr #0 !dbg !1329 {
  %4 = alloca i8*, align 8
  %5 = bitcast i8** %4 to i8*, !dbg !1342
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #6, !dbg !1342
  store i8* null, i8** %4, align 8, !dbg !1343, !tbaa !599
  %6 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1, i64 0, i32 1, !dbg !1344
  %7 = load i32, i32* %6, align 8, !dbg !1344, !tbaa !557
  %8 = sext i32 %7 to i64, !dbg !1345
  %9 = getelementptr inbounds [0 x i8*], [0 x i8*]* @luaT_typenames, i64 0, i64 %8, !dbg !1345
  %10 = load i8*, i8** %9, align 8, !dbg !1345, !tbaa !599
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1347
  %12 = load %struct.CallInfo*, %struct.CallInfo** %11, align 8, !dbg !1347, !tbaa !467
  %13 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %12, i64 0, i32 0, !dbg !1358
  %14 = load %struct.lua_TValue*, %struct.lua_TValue** %13, align 8, !dbg !1358, !tbaa !593
  %15 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %12, i64 0, i32 2, !dbg !1361
  %16 = load %struct.lua_TValue*, %struct.lua_TValue** %15, align 8, !dbg !1361, !tbaa !1363
  %17 = icmp ult %struct.lua_TValue* %14, %16, !dbg !1364
  br i1 %17, label %20, label %36, !dbg !1365

; <label>:18:                                     ; preds = %20
  %19 = icmp ult %struct.lua_TValue* %23, %16, !dbg !1364
  br i1 %19, label %20, label %36, !dbg !1365, !llvm.loop !1366

; <label>:20:                                     ; preds = %3, %18
  %21 = phi %struct.lua_TValue* [ %23, %18 ], [ %14, %3 ]
  %22 = icmp eq %struct.lua_TValue* %21, %1, !dbg !1369
  %23 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %21, i64 1, !dbg !1371
  br i1 %22, label %24, label %18, !dbg !1372

; <label>:24:                                     ; preds = %20
  %25 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !1373
  %26 = bitcast %struct.lua_TValue** %25 to i64*, !dbg !1373
  %27 = load i64, i64* %26, align 8, !dbg !1373, !tbaa !1374
  %28 = ptrtoint %struct.lua_TValue* %1 to i64, !dbg !1373
  %29 = sub i64 %28, %27, !dbg !1373
  %30 = lshr exact i64 %29, 4, !dbg !1373
  %31 = trunc i64 %30 to i32, !dbg !1373
  %32 = call fastcc i8* @getobjname(%struct.lua_State* %0, %struct.CallInfo* %12, i32 %31, i8** nonnull %4) #8, !dbg !1375
  %33 = icmp eq i8* %32, null, !dbg !1377
  br i1 %33, label %36, label %34, !dbg !1379

; <label>:34:                                     ; preds = %24
  %35 = load i8*, i8** %4, align 8, !dbg !1380, !tbaa !599
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %2, i8* nonnull %32, i8* %35, i8* %10) #8, !dbg !1381
  br label %37, !dbg !1381

; <label>:36:                                     ; preds = %18, %3, %24
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %2, i8* %10) #8, !dbg !1382
  br label %37

; <label>:37:                                     ; preds = %36, %34
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #6, !dbg !1383
  ret void, !dbg !1383
}

; Function Attrs: noredzone nounwind
define internal fastcc i8* @getobjname(%struct.lua_State* nocapture readonly, %struct.CallInfo*, i32, i8** nocapture) unnamed_addr #0 !dbg !1384 {
  %5 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 1
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %8 = bitcast i32** %7 to i64*
  %9 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 3
  %10 = bitcast i32** %9 to i64*
  br label %11

; <label>:11:                                     ; preds = %64, %4
  %12 = phi i32 [ %2, %4 ], [ %67, %64 ]
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8, !dbg !1413, !tbaa !479
  %14 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %13, i64 0, i32 1, !dbg !1413
  %15 = load i32, i32* %14, align 8, !dbg !1413, !tbaa !557
  %16 = icmp eq i32 %15, 6, !dbg !1413
  br i1 %16, label %17, label %122, !dbg !1413

; <label>:17:                                     ; preds = %11
  %18 = bitcast %struct.lua_TValue* %13 to %union.Closure**, !dbg !1413
  %19 = load %union.Closure*, %union.Closure** %18, align 8, !dbg !1413, !tbaa !481
  %20 = getelementptr inbounds %union.Closure, %union.Closure* %19, i64 0, i32 0, i32 3, !dbg !1413
  %21 = load i8, i8* %20, align 2, !dbg !1413, !tbaa !481
  %22 = icmp eq i8 %21, 0, !dbg !1413
  br i1 %22, label %23, label %122, !dbg !1414

; <label>:23:                                     ; preds = %17
  %24 = getelementptr inbounds %union.Closure, %union.Closure* %19, i64 0, i32 0, i32 7, !dbg !1415
  %25 = bitcast i32 (%struct.lua_State*)** %24 to %struct.Proto**, !dbg !1415
  %26 = load %struct.Proto*, %struct.Proto** %25, align 8, !dbg !1415, !tbaa !481
  %27 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8, !dbg !1420, !tbaa !467
  %28 = icmp eq %struct.CallInfo* %27, %1, !dbg !1421
  br i1 %28, label %32, label %29, !dbg !1422

; <label>:29:                                     ; preds = %23
  %30 = bitcast %union.Closure* %19 to %struct.LClosure*, !dbg !1423
  %31 = load i64, i64* %10, align 8, !dbg !1424, !tbaa !577
  br label %36, !dbg !1422

; <label>:32:                                     ; preds = %23
  %33 = bitcast %struct.lua_TValue* %13 to %struct.LClosure**, !dbg !1425
  %34 = load i64, i64* %8, align 8, !dbg !1426, !tbaa !581
  store i64 %34, i64* %10, align 8, !dbg !1427, !tbaa !577
  %35 = load %struct.LClosure*, %struct.LClosure** %33, align 8, !dbg !1424, !tbaa !481
  br label %36, !dbg !1428

; <label>:36:                                     ; preds = %29, %32
  %37 = phi %struct.LClosure* [ %30, %29 ], [ %35, %32 ], !dbg !1424
  %38 = phi i64 [ %31, %29 ], [ %34, %32 ], !dbg !1424
  %39 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %37, i64 0, i32 7, !dbg !1424
  %40 = load %struct.Proto*, %struct.Proto** %39, align 8, !dbg !1424, !tbaa !481
  %41 = getelementptr inbounds %struct.Proto, %struct.Proto* %40, i64 0, i32 4, !dbg !1424
  %42 = bitcast i32** %41 to i64*, !dbg !1424
  %43 = load i64, i64* %42, align 8, !dbg !1424, !tbaa !585
  %44 = sub i64 %38, %43, !dbg !1424
  %45 = lshr exact i64 %44, 2, !dbg !1424
  %46 = trunc i64 %45 to i32, !dbg !1424
  %47 = add nsw i32 %46, -1, !dbg !1424
  %48 = add nsw i32 %12, 1, !dbg !1430
  %49 = tail call i8* @luaF_getlocalname(%struct.Proto* %26, i32 %48, i32 %47) #7, !dbg !1431
  store i8* %49, i8** %3, align 8, !dbg !1432, !tbaa !599
  %50 = icmp eq i8* %49, null, !dbg !1433
  br i1 %50, label %51, label %122, !dbg !1435

; <label>:51:                                     ; preds = %36
  %52 = tail call fastcc i32 @symbexec(%struct.Proto* %26, i32 %47, i32 %12) #8, !dbg !1436
  %53 = trunc i32 %52 to i6, !dbg !1438
  switch i6 %53, label %122 [
    i6 5, label %54
    i6 0, label %64
    i6 6, label %69
    i6 4, label %89
    i6 11, label %102
  ], !dbg !1438

; <label>:54:                                     ; preds = %51
  %55 = lshr i32 %52, 14, !dbg !1439
  %56 = getelementptr inbounds %struct.Proto, %struct.Proto* %26, i64 0, i32 3, !dbg !1441
  %57 = load %struct.lua_TValue*, %struct.lua_TValue** %56, align 8, !dbg !1441, !tbaa !1202
  %58 = zext i32 %55 to i64, !dbg !1441
  %59 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %57, i64 %58, i32 0, i32 0, !dbg !1441
  %60 = bitcast %union.GCObject** %59 to %union.TString**, !dbg !1441
  %61 = load %union.TString*, %union.TString** %60, align 8, !dbg !1441, !tbaa !481
  %62 = getelementptr inbounds %union.TString, %union.TString* %61, i64 1, !dbg !1441
  %63 = bitcast i8** %3 to %union.TString**, !dbg !1442
  store %union.TString* %62, %union.TString** %63, align 8, !dbg !1442, !tbaa !599
  br label %122

; <label>:64:                                     ; preds = %51
  %65 = lshr i32 %52, 6, !dbg !1443
  %66 = and i32 %65, 255, !dbg !1443
  %67 = lshr i32 %52, 23, !dbg !1445
  %68 = icmp ult i32 %67, %66, !dbg !1447
  br i1 %68, label %11, label %122, !dbg !1449

; <label>:69:                                     ; preds = %51
  %70 = and i32 %52, 4194304, !dbg !1458
  %71 = icmp eq i32 %70, 0, !dbg !1458
  br i1 %71, label %87, label %72, !dbg !1460

; <label>:72:                                     ; preds = %69
  %73 = lshr i32 %52, 14, !dbg !1461
  %74 = getelementptr inbounds %struct.Proto, %struct.Proto* %26, i64 0, i32 3, !dbg !1464
  %75 = load %struct.lua_TValue*, %struct.lua_TValue** %74, align 8, !dbg !1464, !tbaa !1202
  %76 = and i32 %73, 255, !dbg !1464
  %77 = zext i32 %76 to i64, !dbg !1464
  %78 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %75, i64 %77, i32 1, !dbg !1464
  %79 = load i32, i32* %78, align 8, !dbg !1464, !tbaa !557
  %80 = icmp eq i32 %79, 4, !dbg !1464
  br i1 %80, label %81, label %87, !dbg !1465

; <label>:81:                                     ; preds = %72
  %82 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %75, i64 %77, i32 0, i32 0, !dbg !1466
  %83 = bitcast %union.GCObject** %82 to %union.TString**, !dbg !1466
  %84 = load %union.TString*, %union.TString** %83, align 8, !dbg !1466, !tbaa !481
  %85 = getelementptr inbounds %union.TString, %union.TString* %84, i64 1, !dbg !1466
  %86 = bitcast %union.TString* %85 to i8*, !dbg !1466
  br label %87, !dbg !1467

; <label>:87:                                     ; preds = %69, %72, %81
  %88 = phi i8* [ %86, %81 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), %69 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), %72 ], !dbg !1468
  store i8* %88, i8** %3, align 8, !dbg !1469, !tbaa !599
  br label %122

; <label>:89:                                     ; preds = %51
  %90 = getelementptr inbounds %struct.Proto, %struct.Proto* %26, i64 0, i32 8, !dbg !1470
  %91 = load %union.TString**, %union.TString*** %90, align 8, !dbg !1470, !tbaa !1471
  %92 = icmp eq %union.TString** %91, null, !dbg !1472
  br i1 %92, label %100, label %93, !dbg !1472

; <label>:93:                                     ; preds = %89
  %94 = lshr i32 %52, 23, !dbg !1473
  %95 = zext i32 %94 to i64, !dbg !1475
  %96 = getelementptr inbounds %union.TString*, %union.TString** %91, i64 %95, !dbg !1475
  %97 = load %union.TString*, %union.TString** %96, align 8, !dbg !1475, !tbaa !599
  %98 = getelementptr inbounds %union.TString, %union.TString* %97, i64 1, !dbg !1475
  %99 = bitcast %union.TString* %98 to i8*, !dbg !1475
  br label %100, !dbg !1472

; <label>:100:                                    ; preds = %89, %93
  %101 = phi i8* [ %99, %93 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), %89 ], !dbg !1472
  store i8* %101, i8** %3, align 8, !dbg !1476, !tbaa !599
  br label %122

; <label>:102:                                    ; preds = %51
  %103 = and i32 %52, 4194304, !dbg !1479
  %104 = icmp eq i32 %103, 0, !dbg !1479
  br i1 %104, label %120, label %105, !dbg !1480

; <label>:105:                                    ; preds = %102
  %106 = lshr i32 %52, 14, !dbg !1481
  %107 = getelementptr inbounds %struct.Proto, %struct.Proto* %26, i64 0, i32 3, !dbg !1484
  %108 = load %struct.lua_TValue*, %struct.lua_TValue** %107, align 8, !dbg !1484, !tbaa !1202
  %109 = and i32 %106, 255, !dbg !1484
  %110 = zext i32 %109 to i64, !dbg !1484
  %111 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %108, i64 %110, i32 1, !dbg !1484
  %112 = load i32, i32* %111, align 8, !dbg !1484, !tbaa !557
  %113 = icmp eq i32 %112, 4, !dbg !1484
  br i1 %113, label %114, label %120, !dbg !1485

; <label>:114:                                    ; preds = %105
  %115 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %108, i64 %110, i32 0, i32 0, !dbg !1486
  %116 = bitcast %union.GCObject** %115 to %union.TString**, !dbg !1486
  %117 = load %union.TString*, %union.TString** %116, align 8, !dbg !1486, !tbaa !481
  %118 = getelementptr inbounds %union.TString, %union.TString* %117, i64 1, !dbg !1486
  %119 = bitcast %union.TString* %118 to i8*, !dbg !1486
  br label %120, !dbg !1487

; <label>:120:                                    ; preds = %102, %105, %114
  %121 = phi i8* [ %119, %114 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), %102 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), %105 ], !dbg !1488
  store i8* %121, i8** %3, align 8, !dbg !1489, !tbaa !599
  br label %122

; <label>:122:                                    ; preds = %36, %64, %11, %17, %51, %54, %87, %100, %120
  %123 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), %54 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), %87 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), %100 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0), %120 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), %36 ], [ null, %64 ], [ null, %11 ], [ null, %17 ], [ null, %51 ], !dbg !1490
  ret i8* %123, !dbg !1491
}

; Function Attrs: noredzone nounwind
define hidden void @luaG_runerror(%struct.lua_State*, i8*, ...) local_unnamed_addr #0 !dbg !1492 {
  %3 = alloca [60 x i8], align 16
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  %5 = bitcast [1 x %struct.__va_list_tag]* %4 to i8*, !dbg !1524
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #6, !dbg !1524
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, !dbg !1526
  call void @llvm.va_start(i8* nonnull %5), !dbg !1526
  %7 = call i8* @luaO_pushvfstring(%struct.lua_State* %0, i8* %1, %struct.__va_list_tag* nonnull %6) #7, !dbg !1527
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1530
  %9 = load %struct.CallInfo*, %struct.CallInfo** %8, align 8, !dbg !1530, !tbaa !467
  %10 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %9, i64 0, i32 1, !dbg !1532
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !1532, !tbaa !479
  %12 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %11, i64 0, i32 1, !dbg !1532
  %13 = load i32, i32* %12, align 8, !dbg !1532, !tbaa !557
  %14 = icmp eq i32 %13, 6, !dbg !1532
  br i1 %14, label %15, label %56, !dbg !1532

; <label>:15:                                     ; preds = %2
  %16 = bitcast %struct.lua_TValue* %11 to %struct.CClosure**, !dbg !1532
  %17 = load %struct.CClosure*, %struct.CClosure** %16, align 8, !dbg !1532, !tbaa !481
  %18 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %17, i64 0, i32 3, !dbg !1532
  %19 = load i8, i8* %18, align 2, !dbg !1532, !tbaa !481
  %20 = icmp eq i8 %19, 0, !dbg !1532
  br i1 %20, label %21, label %56, !dbg !1533

; <label>:21:                                     ; preds = %15
  %22 = getelementptr inbounds [60 x i8], [60 x i8]* %3, i64 0, i64 0, !dbg !1534
  call void @llvm.lifetime.start.p0i8(i64 60, i8* nonnull %22) #6, !dbg !1534
  %23 = bitcast %struct.lua_TValue* %11 to %struct.LClosure**, !dbg !1541
  %24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8, !dbg !1542
  %25 = bitcast i32** %24 to i64*, !dbg !1542
  %26 = load i64, i64* %25, align 8, !dbg !1542, !tbaa !581
  %27 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %9, i64 0, i32 3, !dbg !1543
  %28 = bitcast i32** %27 to i64*, !dbg !1544
  store i64 %26, i64* %28, align 8, !dbg !1544, !tbaa !577
  %29 = load %struct.LClosure*, %struct.LClosure** %23, align 8, !dbg !1545, !tbaa !481
  %30 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %29, i64 0, i32 7, !dbg !1545
  %31 = load %struct.Proto*, %struct.Proto** %30, align 8, !dbg !1545, !tbaa !481
  %32 = getelementptr inbounds %struct.Proto, %struct.Proto* %31, i64 0, i32 4, !dbg !1545
  %33 = bitcast i32** %32 to i64*, !dbg !1545
  %34 = load i64, i64* %33, align 8, !dbg !1545, !tbaa !585
  %35 = sub i64 %26, %34, !dbg !1545
  %36 = lshr exact i64 %35, 2, !dbg !1545
  %37 = trunc i64 %36 to i32, !dbg !1545
  %38 = icmp slt i32 %37, 1, !dbg !1547
  br i1 %38, label %49, label %39, !dbg !1548

; <label>:39:                                     ; preds = %21
  %40 = getelementptr inbounds %struct.Proto, %struct.Proto* %31, i64 0, i32 6, !dbg !1549
  %41 = load i32*, i32** %40, align 8, !dbg !1549, !tbaa !840
  %42 = icmp eq i32* %41, null, !dbg !1549
  br i1 %42, label %49, label %43, !dbg !1549

; <label>:43:                                     ; preds = %39
  %44 = shl i64 %35, 30, !dbg !1549
  %45 = add i64 %44, -4294967296, !dbg !1549
  %46 = ashr exact i64 %45, 32, !dbg !1549
  %47 = getelementptr inbounds i32, i32* %41, i64 %46, !dbg !1549
  %48 = load i32, i32* %47, align 4, !dbg !1549, !tbaa !841
  br label %49, !dbg !1549

; <label>:49:                                     ; preds = %43, %39, %21
  %50 = phi i32 [ 0, %39 ], [ %48, %43 ], [ -1, %21 ]
  %51 = getelementptr inbounds %struct.Proto, %struct.Proto* %31, i64 0, i32 9, !dbg !1550
  %52 = load %union.TString*, %union.TString** %51, align 8, !dbg !1550, !tbaa !797
  %53 = getelementptr inbounds %union.TString, %union.TString* %52, i64 1, !dbg !1550
  %54 = bitcast %union.TString* %53 to i8*, !dbg !1550
  call void @luaO_chunkid(i8* nonnull %22, i8* nonnull %54, i64 60) #7, !dbg !1551
  %55 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0), i8* nonnull %22, i32 %50, i8* %7) #7, !dbg !1552
  call void @llvm.lifetime.end.p0i8(i64 60, i8* nonnull %22) #6, !dbg !1553
  br label %56, !dbg !1554

; <label>:56:                                     ; preds = %2, %15, %49
  call void @llvm.va_end(i8* nonnull %5), !dbg !1555
  call void @luaG_errormsg(%struct.lua_State* nonnull %0) #8, !dbg !1556
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #6, !dbg !1557
  ret void, !dbg !1557
}

; Function Attrs: noredzone nounwind
define hidden void @luaG_concaterror(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*) local_unnamed_addr #0 !dbg !1558 {
  %4 = alloca i8*, align 8
  %5 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1, i64 0, i32 1, !dbg !1568
  %6 = load i32, i32* %5, align 8, !dbg !1568, !tbaa !557
  %7 = add i32 %6, -3, !dbg !1570
  %8 = icmp ult i32 %7, 2, !dbg !1570
  %9 = select i1 %8, %struct.lua_TValue* %2, %struct.lua_TValue* %1, !dbg !1570
  %10 = bitcast i8** %4 to i8*, !dbg !1575
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #6, !dbg !1575
  store i8* null, i8** %4, align 8, !dbg !1576, !tbaa !599
  %11 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %9, i64 0, i32 1, !dbg !1577
  %12 = load i32, i32* %11, align 8, !dbg !1577, !tbaa !557
  %13 = sext i32 %12 to i64, !dbg !1578
  %14 = getelementptr inbounds [0 x i8*], [0 x i8*]* @luaT_typenames, i64 0, i64 %13, !dbg !1578
  %15 = load i8*, i8** %14, align 8, !dbg !1578, !tbaa !599
  %16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1580
  %17 = load %struct.CallInfo*, %struct.CallInfo** %16, align 8, !dbg !1580, !tbaa !467
  %18 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %17, i64 0, i32 0, !dbg !1584
  %19 = load %struct.lua_TValue*, %struct.lua_TValue** %18, align 8, !dbg !1584, !tbaa !593
  %20 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %17, i64 0, i32 2, !dbg !1586
  %21 = load %struct.lua_TValue*, %struct.lua_TValue** %20, align 8, !dbg !1586, !tbaa !1363
  %22 = icmp ult %struct.lua_TValue* %19, %21, !dbg !1587
  br i1 %22, label %25, label %41, !dbg !1588

; <label>:23:                                     ; preds = %25
  %24 = icmp ult %struct.lua_TValue* %28, %21, !dbg !1587
  br i1 %24, label %25, label %41, !dbg !1588, !llvm.loop !1366

; <label>:25:                                     ; preds = %3, %23
  %26 = phi %struct.lua_TValue* [ %28, %23 ], [ %19, %3 ]
  %27 = icmp eq %struct.lua_TValue* %26, %9, !dbg !1589
  %28 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %26, i64 1, !dbg !1590
  br i1 %27, label %29, label %23, !dbg !1591

; <label>:29:                                     ; preds = %25
  %30 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !1592
  %31 = bitcast %struct.lua_TValue** %30 to i64*, !dbg !1592
  %32 = load i64, i64* %31, align 8, !dbg !1592, !tbaa !1374
  %33 = ptrtoint %struct.lua_TValue* %9 to i64, !dbg !1592
  %34 = sub i64 %33, %32, !dbg !1592
  %35 = lshr exact i64 %34, 4, !dbg !1592
  %36 = trunc i64 %35 to i32, !dbg !1592
  %37 = call fastcc i8* @getobjname(%struct.lua_State* %0, %struct.CallInfo* %17, i32 %36, i8** nonnull %4) #7, !dbg !1593
  %38 = icmp eq i8* %37, null, !dbg !1595
  br i1 %38, label %41, label %39, !dbg !1596

; <label>:39:                                     ; preds = %29
  %40 = load i8*, i8** %4, align 8, !dbg !1597, !tbaa !599
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* nonnull %37, i8* %40, i8* %15) #7, !dbg !1598
  br label %42, !dbg !1598

; <label>:41:                                     ; preds = %23, %29, %3
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %15) #7, !dbg !1599
  br label %42

; <label>:42:                                     ; preds = %39, %41
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #6, !dbg !1600
  ret void, !dbg !1601
}

; Function Attrs: noredzone nounwind
define hidden void @luaG_aritherror(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*) local_unnamed_addr #0 !dbg !1602 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.lua_TValue, align 8
  %6 = bitcast %struct.lua_TValue* %5 to i8*, !dbg !1613
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #6, !dbg !1613
  %7 = call %struct.lua_TValue* @luaV_tonumber(%struct.lua_TValue* %1, %struct.lua_TValue* nonnull %5) #7, !dbg !1615
  %8 = icmp eq %struct.lua_TValue* %7, null, !dbg !1617
  %9 = select i1 %8, %struct.lua_TValue* %1, %struct.lua_TValue* %2, !dbg !1618
  %10 = bitcast i8** %4 to i8*, !dbg !1623
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #6, !dbg !1623
  store i8* null, i8** %4, align 8, !dbg !1624, !tbaa !599
  %11 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %9, i64 0, i32 1, !dbg !1625
  %12 = load i32, i32* %11, align 8, !dbg !1625, !tbaa !557
  %13 = sext i32 %12 to i64, !dbg !1626
  %14 = getelementptr inbounds [0 x i8*], [0 x i8*]* @luaT_typenames, i64 0, i64 %13, !dbg !1626
  %15 = load i8*, i8** %14, align 8, !dbg !1626, !tbaa !599
  %16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1628
  %17 = load %struct.CallInfo*, %struct.CallInfo** %16, align 8, !dbg !1628, !tbaa !467
  %18 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %17, i64 0, i32 0, !dbg !1632
  %19 = load %struct.lua_TValue*, %struct.lua_TValue** %18, align 8, !dbg !1632, !tbaa !593
  %20 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %17, i64 0, i32 2, !dbg !1634
  %21 = load %struct.lua_TValue*, %struct.lua_TValue** %20, align 8, !dbg !1634, !tbaa !1363
  %22 = icmp ult %struct.lua_TValue* %19, %21, !dbg !1635
  br i1 %22, label %25, label %41, !dbg !1636

; <label>:23:                                     ; preds = %25
  %24 = icmp ult %struct.lua_TValue* %28, %21, !dbg !1635
  br i1 %24, label %25, label %41, !dbg !1636, !llvm.loop !1366

; <label>:25:                                     ; preds = %3, %23
  %26 = phi %struct.lua_TValue* [ %28, %23 ], [ %19, %3 ]
  %27 = icmp eq %struct.lua_TValue* %26, %9, !dbg !1637
  %28 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %26, i64 1, !dbg !1638
  br i1 %27, label %29, label %23, !dbg !1639

; <label>:29:                                     ; preds = %25
  %30 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !1640
  %31 = bitcast %struct.lua_TValue** %30 to i64*, !dbg !1640
  %32 = load i64, i64* %31, align 8, !dbg !1640, !tbaa !1374
  %33 = ptrtoint %struct.lua_TValue* %9 to i64, !dbg !1640
  %34 = sub i64 %33, %32, !dbg !1640
  %35 = lshr exact i64 %34, 4, !dbg !1640
  %36 = trunc i64 %35 to i32, !dbg !1640
  %37 = call fastcc i8* @getobjname(%struct.lua_State* %0, %struct.CallInfo* %17, i32 %36, i8** nonnull %4) #7, !dbg !1641
  %38 = icmp eq i8* %37, null, !dbg !1643
  br i1 %38, label %41, label %39, !dbg !1644

; <label>:39:                                     ; preds = %29
  %40 = load i8*, i8** %4, align 8, !dbg !1645, !tbaa !599
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* nonnull %37, i8* %40, i8* %15) #7, !dbg !1646
  br label %42, !dbg !1646

; <label>:41:                                     ; preds = %23, %29, %3
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %15) #7, !dbg !1647
  br label %42

; <label>:42:                                     ; preds = %39, %41
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #6, !dbg !1648
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #6, !dbg !1649
  ret void, !dbg !1649
}

; Function Attrs: noredzone
declare hidden %struct.lua_TValue* @luaV_tonumber(%struct.lua_TValue*, %struct.lua_TValue*) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define hidden i32 @luaG_ordererror(%struct.lua_State*, %struct.lua_TValue* nocapture readonly, %struct.lua_TValue* nocapture readonly) local_unnamed_addr #0 !dbg !1650 {
  %4 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1, i64 0, i32 1, !dbg !1662
  %5 = load i32, i32* %4, align 8, !dbg !1662, !tbaa !557
  %6 = sext i32 %5 to i64, !dbg !1663
  %7 = getelementptr inbounds [0 x i8*], [0 x i8*]* @luaT_typenames, i64 0, i64 %6, !dbg !1663
  %8 = load i8*, i8** %7, align 8, !dbg !1663, !tbaa !599
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i64 0, i32 1, !dbg !1665
  %10 = load i32, i32* %9, align 8, !dbg !1665, !tbaa !557
  %11 = sext i32 %10 to i64, !dbg !1666
  %12 = getelementptr inbounds [0 x i8*], [0 x i8*]* @luaT_typenames, i64 0, i64 %11, !dbg !1666
  %13 = load i8*, i8** %12, align 8, !dbg !1666, !tbaa !599
  %14 = getelementptr inbounds i8, i8* %8, i64 2, !dbg !1668
  %15 = load i8, i8* %14, align 1, !dbg !1668, !tbaa !481
  %16 = getelementptr inbounds i8, i8* %13, i64 2, !dbg !1670
  %17 = load i8, i8* %16, align 1, !dbg !1670, !tbaa !481
  %18 = icmp eq i8 %15, %17, !dbg !1671
  br i1 %18, label %19, label %20, !dbg !1672

; <label>:19:                                     ; preds = %3
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* %8) #8, !dbg !1673
  br label %21, !dbg !1673

; <label>:20:                                     ; preds = %3
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8* %8, i8* %13) #8, !dbg !1674
  br label %21

; <label>:21:                                     ; preds = %20, %19
  ret i32 0, !dbg !1675
}

; Function Attrs: noredzone nounwind
define hidden void @luaG_errormsg(%struct.lua_State*) local_unnamed_addr #0 !dbg !1676 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 27, !dbg !1691
  %3 = load i64, i64* %2, align 8, !dbg !1691, !tbaa !1692
  %4 = icmp eq i64 %3, 0, !dbg !1693
  br i1 %4, label %46, label %5, !dbg !1694

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 10, !dbg !1695
  %7 = bitcast %struct.lua_TValue** %6 to i8**, !dbg !1695
  %8 = load i8*, i8** %7, align 8, !dbg !1695, !tbaa !1696
  %9 = getelementptr inbounds i8, i8* %8, i64 %3, !dbg !1695
  %10 = getelementptr inbounds i8, i8* %9, i64 8, !dbg !1698
  %11 = bitcast i8* %10 to i32*, !dbg !1698
  %12 = load i32, i32* %11, align 8, !dbg !1698, !tbaa !557
  %13 = icmp eq i32 %12, 6, !dbg !1698
  br i1 %13, label %15, label %14, !dbg !1700

; <label>:14:                                     ; preds = %5
  tail call void @luaD_throw(%struct.lua_State* nonnull %0, i32 5) #7, !dbg !1701
  br label %15, !dbg !1701

; <label>:15:                                     ; preds = %14, %5
  %16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1702
  %17 = load %struct.lua_TValue*, %struct.lua_TValue** %16, align 8, !dbg !1702, !tbaa !673
  %18 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %17, i64 -1, !dbg !1702
  %19 = bitcast %struct.lua_TValue* %18 to i64*, !dbg !1702
  %20 = bitcast %struct.lua_TValue* %17 to i64*, !dbg !1702
  %21 = load i64, i64* %19, align 8, !dbg !1702
  store i64 %21, i64* %20, align 8, !dbg !1702
  %22 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %17, i64 -1, i32 1, !dbg !1702
  %23 = load i32, i32* %22, align 8, !dbg !1702, !tbaa !557
  %24 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %17, i64 0, i32 1, !dbg !1702
  store i32 %23, i32* %24, align 8, !dbg !1702, !tbaa !557
  %25 = load %struct.lua_TValue*, %struct.lua_TValue** %16, align 8, !dbg !1703, !tbaa !673
  %26 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %25, i64 -1, !dbg !1703
  %27 = bitcast i8* %9 to i64*, !dbg !1703
  %28 = bitcast %struct.lua_TValue* %26 to i64*, !dbg !1703
  %29 = load i64, i64* %27, align 8, !dbg !1703
  store i64 %29, i64* %28, align 8, !dbg !1703
  %30 = load i32, i32* %11, align 8, !dbg !1703, !tbaa !557
  %31 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %25, i64 -1, i32 1, !dbg !1703
  store i32 %30, i32* %31, align 8, !dbg !1703, !tbaa !557
  %32 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 9, !dbg !1704
  %33 = bitcast %struct.lua_TValue** %32 to i64*, !dbg !1704
  %34 = load i64, i64* %33, align 8, !dbg !1704, !tbaa !914
  %35 = bitcast %struct.lua_TValue** %16 to i64*, !dbg !1704
  %36 = load i64, i64* %35, align 8, !dbg !1704, !tbaa !673
  %37 = sub i64 %34, %36, !dbg !1704
  %38 = icmp slt i64 %37, 17, !dbg !1704
  %39 = inttoptr i64 %36 to %struct.lua_TValue*, !dbg !1707
  br i1 %38, label %40, label %42, !dbg !1707

; <label>:40:                                     ; preds = %15
  tail call void @luaD_growstack(%struct.lua_State* nonnull %0, i32 1) #7, !dbg !1704
  %41 = load %struct.lua_TValue*, %struct.lua_TValue** %16, align 8, !dbg !1707, !tbaa !673
  br label %42, !dbg !1704

; <label>:42:                                     ; preds = %15, %40
  %43 = phi %struct.lua_TValue* [ %39, %15 ], [ %41, %40 ], !dbg !1707
  %44 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %43, i64 1, !dbg !1707
  store %struct.lua_TValue* %44, %struct.lua_TValue** %16, align 8, !dbg !1707, !tbaa !673
  %45 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %43, i64 -1, !dbg !1708
  tail call void @luaD_call(%struct.lua_State* nonnull %0, %struct.lua_TValue* nonnull %45, i32 1) #7, !dbg !1709
  br label %46, !dbg !1710

; <label>:46:                                     ; preds = %1, %42
  tail call void @luaD_throw(%struct.lua_State* nonnull %0, i32 2) #7, !dbg !1711
  ret void, !dbg !1712
}

; Function Attrs: noredzone
declare hidden void @luaD_throw(%struct.lua_State*, i32) local_unnamed_addr #4

; Function Attrs: noredzone
declare hidden void @luaD_call(%struct.lua_State*, %struct.lua_TValue*, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

; Function Attrs: noredzone
declare hidden i8* @luaO_pushvfstring(%struct.lua_State*, i8*, %struct.__va_list_tag*) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

; Function Attrs: noredzone
declare hidden i8* @luaF_getlocalname(%struct.Proto*, i32, i32) local_unnamed_addr #4

; Function Attrs: noredzone
declare hidden void @luaO_chunkid(i8*, i8*, i64) local_unnamed_addr #4

; Function Attrs: noredzone
declare hidden %struct.Table* @luaH_new(%struct.lua_State*, i32, i32) local_unnamed_addr #4

; Function Attrs: noredzone
declare hidden %struct.lua_TValue* @luaH_setnum(%struct.lua_State*, %struct.Table*, i32) local_unnamed_addr #4

; Function Attrs: noredzone
declare hidden i8* @luaO_pushfstring(%struct.lua_State*, i8*, ...) local_unnamed_addr #4

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noredzone nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin noredzone nounwind }
attributes #8 = { nobuiltin noredzone }

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
!558 = !DILocation(line: 108, column: 38, scope: !550, inlinedAt: !555)
!559 = !DILocation(line: 114, column: 10, scope: !532, inlinedAt: !546)
!560 = !DILocation(line: 115, column: 7, scope: !544, inlinedAt: !546)
!561 = !DILocation(line: 115, column: 10, scope: !544, inlinedAt: !546)
!562 = !DILocalVariable(name: "L", arg: 1, scope: !563, file: !1, line: 36, type: !179)
!563 = distinct !DISubprogram(name: "currentpc", scope: !1, file: !1, line: 36, type: !564, isLocal: true, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !566)
!564 = !DISubroutineType(types: !565)
!565 = !{!61, !179, !269}
!566 = !{!562, !567}
!567 = !DILocalVariable(name: "ci", arg: 2, scope: !563, file: !1, line: 36, type: !269)
!568 = !DILocation(line: 36, column: 34, scope: !563, inlinedAt: !569)
!569 = distinct !DILocation(line: 115, column: 46, scope: !544, inlinedAt: !546)
!570 = !DILocation(line: 36, column: 47, scope: !563, inlinedAt: !569)
!571 = !DILocation(line: 38, column: 16, scope: !572, inlinedAt: !569)
!572 = distinct !DILexicalBlock(scope: !563, file: !1, line: 38, column: 7)
!573 = !DILocation(line: 38, column: 10, scope: !572, inlinedAt: !569)
!574 = !DILocation(line: 38, column: 7, scope: !563, inlinedAt: !569)
!575 = !DILocation(line: 37, column: 7, scope: !563, inlinedAt: !569)
!576 = !DILocation(line: 40, column: 10, scope: !563, inlinedAt: !569)
!577 = !{!480, !415, i64 24}
!578 = !DILocation(line: 37, column: 8, scope: !579, inlinedAt: !569)
!579 = distinct !DILexicalBlock(scope: !563, file: !1, line: 37, column: 7)
!580 = !DILocation(line: 39, column: 22, scope: !572, inlinedAt: !569)
!581 = !{!414, !415, i64 48}
!582 = !DILocation(line: 39, column: 9, scope: !572, inlinedAt: !569)
!583 = !DILocation(line: 39, column: 17, scope: !572, inlinedAt: !569)
!584 = !DILocation(line: 39, column: 5, scope: !572, inlinedAt: !569)
!585 = !{!586, !415, i64 24}
!586 = !{!"Proto", !415, i64 0, !416, i64 8, !416, i64 9, !415, i64 16, !415, i64 24, !415, i64 32, !415, i64 40, !415, i64 48, !415, i64 56, !415, i64 64, !418, i64 72, !418, i64 76, !418, i64 80, !418, i64 84, !418, i64 88, !418, i64 92, !418, i64 96, !418, i64 100, !415, i64 104, !416, i64 112, !416, i64 113, !416, i64 114, !416, i64 115}
!587 = !DILocation(line: 115, column: 21, scope: !544, inlinedAt: !546)
!588 = !DILocation(line: 113, column: 15, scope: !532, inlinedAt: !546)
!589 = !DILocation(line: 115, column: 65, scope: !544, inlinedAt: !546)
!590 = !DILocation(line: 115, column: 7, scope: !532, inlinedAt: !546)
!591 = !DILocation(line: 132, column: 30, scope: !592)
!592 = distinct !DILexicalBlock(scope: !513, file: !1, line: 131, column: 7)
!593 = !{!480, !415, i64 0}
!594 = !DILocation(line: 118, column: 29, scope: !543, inlinedAt: !546)
!595 = !DILocation(line: 118, column: 23, scope: !543, inlinedAt: !546)
!596 = !DILocation(line: 118, column: 38, scope: !543, inlinedAt: !546)
!597 = !DILocation(line: 118, column: 52, scope: !543, inlinedAt: !546)
!598 = !DILocation(line: 118, column: 19, scope: !543, inlinedAt: !546)
!599 = !{!415, !415, i64 0}
!600 = !DILocation(line: 118, column: 11, scope: !543, inlinedAt: !546)
!601 = !DILocation(line: 119, column: 21, scope: !602, inlinedAt: !546)
!602 = distinct !DILexicalBlock(scope: !543, file: !1, line: 119, column: 9)
!603 = !DILocation(line: 119, column: 15, scope: !602, inlinedAt: !546)
!604 = !DILocation(line: 119, column: 29, scope: !602, inlinedAt: !546)
!605 = !DILocation(line: 119, column: 26, scope: !602, inlinedAt: !546)
!606 = !DILocation(line: 119, column: 36, scope: !602, inlinedAt: !546)
!607 = !DILocation(line: 119, column: 31, scope: !602, inlinedAt: !546)
!608 = !DILocation(line: 132, column: 40, scope: !592)
!609 = !DILocation(line: 132, column: 35, scope: !592)
!610 = !DILocation(line: 132, column: 7, scope: !592)
!611 = !DILocation(line: 134, column: 3, scope: !513)
!612 = distinct !DISubprogram(name: "lua_setlocal", scope: !1, file: !1, line: 138, type: !514, isLocal: false, isDefinition: true, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !613)
!613 = !{!614, !615, !616, !617, !618, !619, !624}
!614 = !DILocalVariable(name: "L", arg: 1, scope: !612, file: !1, line: 138, type: !179)
!615 = !DILocalVariable(name: "ar", arg: 2, scope: !612, file: !1, line: 138, type: !516)
!616 = !DILocalVariable(name: "n", arg: 3, scope: !612, file: !1, line: 138, type: !61)
!617 = !DILocalVariable(name: "ci", scope: !612, file: !1, line: 139, type: !269)
!618 = !DILocalVariable(name: "name", scope: !612, file: !1, line: 140, type: !307)
!619 = !DILocalVariable(name: "o2", scope: !620, file: !1, line: 143, type: !622)
!620 = distinct !DILexicalBlock(scope: !621, file: !1, line: 143, column: 7)
!621 = distinct !DILexicalBlock(scope: !612, file: !1, line: 142, column: 7)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !123)
!624 = !DILocalVariable(name: "o1", scope: !620, file: !1, line: 143, type: !122)
!625 = !DILocation(line: 138, column: 46, scope: !612)
!626 = !DILocation(line: 138, column: 66, scope: !612)
!627 = !DILocation(line: 138, column: 74, scope: !612)
!628 = !DILocation(line: 139, column: 21, scope: !612)
!629 = !DILocation(line: 139, column: 35, scope: !612)
!630 = !DILocation(line: 139, column: 29, scope: !612)
!631 = !DILocation(line: 139, column: 13, scope: !612)
!632 = !DILocation(line: 112, column: 42, scope: !532, inlinedAt: !633)
!633 = distinct !DILocation(line: 140, column: 22, scope: !612)
!634 = !DILocation(line: 112, column: 55, scope: !532, inlinedAt: !633)
!635 = !DILocation(line: 112, column: 63, scope: !532, inlinedAt: !633)
!636 = !DILocation(line: 107, column: 38, scope: !550, inlinedAt: !637)
!637 = distinct !DILocation(line: 114, column: 15, scope: !532, inlinedAt: !633)
!638 = !DILocation(line: 108, column: 11, scope: !550, inlinedAt: !637)
!639 = !DILocation(line: 108, column: 38, scope: !550, inlinedAt: !637)
!640 = !DILocation(line: 114, column: 10, scope: !532, inlinedAt: !633)
!641 = !DILocation(line: 115, column: 7, scope: !544, inlinedAt: !633)
!642 = !DILocation(line: 115, column: 10, scope: !544, inlinedAt: !633)
!643 = !DILocation(line: 36, column: 34, scope: !563, inlinedAt: !644)
!644 = distinct !DILocation(line: 115, column: 46, scope: !544, inlinedAt: !633)
!645 = !DILocation(line: 36, column: 47, scope: !563, inlinedAt: !644)
!646 = !DILocation(line: 38, column: 16, scope: !572, inlinedAt: !644)
!647 = !DILocation(line: 38, column: 10, scope: !572, inlinedAt: !644)
!648 = !DILocation(line: 38, column: 7, scope: !563, inlinedAt: !644)
!649 = !DILocation(line: 37, column: 7, scope: !563, inlinedAt: !644)
!650 = !DILocation(line: 40, column: 10, scope: !563, inlinedAt: !644)
!651 = !DILocation(line: 37, column: 8, scope: !579, inlinedAt: !644)
!652 = !DILocation(line: 39, column: 22, scope: !572, inlinedAt: !644)
!653 = !DILocation(line: 39, column: 9, scope: !572, inlinedAt: !644)
!654 = !DILocation(line: 39, column: 17, scope: !572, inlinedAt: !644)
!655 = !DILocation(line: 39, column: 5, scope: !572, inlinedAt: !644)
!656 = !DILocation(line: 115, column: 21, scope: !544, inlinedAt: !633)
!657 = !DILocation(line: 113, column: 15, scope: !532, inlinedAt: !633)
!658 = !DILocation(line: 115, column: 65, scope: !544, inlinedAt: !633)
!659 = !DILocation(line: 115, column: 7, scope: !532, inlinedAt: !633)
!660 = !DILocation(line: 143, column: 7, scope: !620)
!661 = !DILocation(line: 118, column: 29, scope: !543, inlinedAt: !633)
!662 = !DILocation(line: 118, column: 23, scope: !543, inlinedAt: !633)
!663 = !DILocation(line: 118, column: 38, scope: !543, inlinedAt: !633)
!664 = !DILocation(line: 118, column: 52, scope: !543, inlinedAt: !633)
!665 = !DILocation(line: 118, column: 19, scope: !543, inlinedAt: !633)
!666 = !DILocation(line: 118, column: 11, scope: !543, inlinedAt: !633)
!667 = !DILocation(line: 119, column: 21, scope: !602, inlinedAt: !633)
!668 = !DILocation(line: 119, column: 15, scope: !602, inlinedAt: !633)
!669 = !DILocation(line: 119, column: 29, scope: !602, inlinedAt: !633)
!670 = !DILocation(line: 119, column: 26, scope: !602, inlinedAt: !633)
!671 = !DILocation(line: 119, column: 36, scope: !602, inlinedAt: !633)
!672 = !DILocation(line: 119, column: 31, scope: !602, inlinedAt: !633)
!673 = !{!414, !415, i64 16}
!674 = !DILocation(line: 144, column: 6, scope: !612)
!675 = !DILocation(line: 144, column: 9, scope: !612)
!676 = !DILocation(line: 146, column: 3, scope: !612)
!677 = distinct !DISubprogram(name: "lua_getinfo", scope: !1, file: !1, line: 232, type: !678, isLocal: false, isDefinition: true, scopeLine: 232, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !680)
!678 = !DISubroutineType(types: !679)
!679 = !{!61, !179, !307, !301}
!680 = !{!681, !682, !683, !684, !685, !688, !689, !692}
!681 = !DILocalVariable(name: "L", arg: 1, scope: !677, file: !1, line: 232, type: !179)
!682 = !DILocalVariable(name: "what", arg: 2, scope: !677, file: !1, line: 232, type: !307)
!683 = !DILocalVariable(name: "ar", arg: 3, scope: !677, file: !1, line: 232, type: !301)
!684 = !DILocalVariable(name: "status", scope: !677, file: !1, line: 233, type: !61)
!685 = !DILocalVariable(name: "f", scope: !677, file: !1, line: 234, type: !686)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "Closure", file: !64, line: 312, baseType: !161)
!688 = !DILocalVariable(name: "ci", scope: !677, file: !1, line: 235, type: !269)
!689 = !DILocalVariable(name: "func", scope: !690, file: !1, line: 238, type: !188)
!690 = distinct !DILexicalBlock(scope: !691, file: !1, line: 237, column: 21)
!691 = distinct !DILexicalBlock(scope: !677, file: !1, line: 237, column: 7)
!692 = !DILocalVariable(name: "i_o", scope: !693, file: !1, line: 252, type: !122)
!693 = distinct !DILexicalBlock(scope: !694, file: !1, line: 252, column: 10)
!694 = distinct !DILexicalBlock(scope: !695, file: !1, line: 251, column: 9)
!695 = distinct !DILexicalBlock(scope: !696, file: !1, line: 250, column: 26)
!696 = distinct !DILexicalBlock(scope: !677, file: !1, line: 250, column: 7)
!697 = !DILocation(line: 232, column: 37, scope: !677)
!698 = !DILocation(line: 232, column: 52, scope: !677)
!699 = !DILocation(line: 232, column: 69, scope: !677)
!700 = !DILocation(line: 234, column: 12, scope: !677)
!701 = !DILocation(line: 235, column: 13, scope: !677)
!702 = !DILocation(line: 237, column: 7, scope: !691)
!703 = !DILocation(line: 237, column: 13, scope: !691)
!704 = !DILocation(line: 237, column: 7, scope: !677)
!705 = !DILocation(line: 238, column: 21, scope: !690)
!706 = !DILocation(line: 238, column: 11, scope: !690)
!707 = !DILocation(line: 240, column: 9, scope: !690)
!708 = !DILocation(line: 241, column: 9, scope: !690)
!709 = !DILocation(line: 242, column: 11, scope: !690)
!710 = !DILocation(line: 243, column: 3, scope: !690)
!711 = !DILocation(line: 244, column: 16, scope: !712)
!712 = distinct !DILexicalBlock(scope: !691, file: !1, line: 244, column: 12)
!713 = !DILocation(line: 244, column: 21, scope: !712)
!714 = !DILocation(line: 244, column: 12, scope: !691)
!715 = !DILocation(line: 245, column: 13, scope: !716)
!716 = distinct !DILexicalBlock(scope: !712, file: !1, line: 244, column: 27)
!717 = !DILocation(line: 245, column: 21, scope: !716)
!718 = !DILocation(line: 247, column: 9, scope: !716)
!719 = !DILocation(line: 248, column: 3, scope: !716)
!720 = !DILocation(line: 0, scope: !677)
!721 = !DILocalVariable(name: "L", arg: 1, scope: !722, file: !1, line: 193, type: !179)
!722 = distinct !DISubprogram(name: "auxgetinfo", scope: !1, file: !1, line: 193, type: !723, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !725)
!723 = !DISubroutineType(types: !724)
!724 = !{!61, !179, !307, !301, !686, !269}
!725 = !{!721, !726, !727, !728, !729, !730}
!726 = !DILocalVariable(name: "what", arg: 2, scope: !722, file: !1, line: 193, type: !307)
!727 = !DILocalVariable(name: "ar", arg: 3, scope: !722, file: !1, line: 193, type: !301)
!728 = !DILocalVariable(name: "f", arg: 4, scope: !722, file: !1, line: 194, type: !686)
!729 = !DILocalVariable(name: "ci", arg: 5, scope: !722, file: !1, line: 194, type: !269)
!730 = !DILocalVariable(name: "status", scope: !722, file: !1, line: 195, type: !61)
!731 = !DILocation(line: 193, column: 35, scope: !722, inlinedAt: !732)
!732 = distinct !DILocation(line: 249, column: 12, scope: !677)
!733 = !DILocation(line: 193, column: 50, scope: !722, inlinedAt: !732)
!734 = !DILocation(line: 193, column: 67, scope: !722, inlinedAt: !732)
!735 = !DILocation(line: 194, column: 30, scope: !722, inlinedAt: !732)
!736 = !DILocation(line: 194, column: 43, scope: !722, inlinedAt: !732)
!737 = !DILocation(line: 195, column: 7, scope: !722, inlinedAt: !732)
!738 = !DILocation(line: 196, column: 9, scope: !739, inlinedAt: !732)
!739 = distinct !DILexicalBlock(scope: !722, file: !1, line: 196, column: 7)
!740 = !DILocation(line: 196, column: 7, scope: !722, inlinedAt: !732)
!741 = !DILocation(line: 200, column: 10, scope: !742, inlinedAt: !732)
!742 = distinct !DILexicalBlock(scope: !743, file: !1, line: 200, column: 3)
!743 = distinct !DILexicalBlock(scope: !722, file: !1, line: 200, column: 3)
!744 = !DILocation(line: 200, column: 3, scope: !743, inlinedAt: !732)
!745 = !DILocalVariable(name: "ar", arg: 1, scope: !746, file: !1, line: 167, type: !301)
!746 = distinct !DISubprogram(name: "info_tailcall", scope: !1, file: !1, line: 167, type: !747, isLocal: true, isDefinition: true, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !749)
!747 = !DISubroutineType(types: !748)
!748 = !{null, !301}
!749 = !{!745}
!750 = !DILocation(line: 167, column: 39, scope: !746, inlinedAt: !751)
!751 = distinct !DILocation(line: 197, column: 5, scope: !752, inlinedAt: !732)
!752 = distinct !DILexicalBlock(scope: !739, file: !1, line: 196, column: 18)
!753 = !DILocation(line: 168, column: 7, scope: !746, inlinedAt: !751)
!754 = !DILocation(line: 168, column: 12, scope: !746, inlinedAt: !751)
!755 = !DILocation(line: 169, column: 7, scope: !746, inlinedAt: !751)
!756 = !DILocation(line: 170, column: 47, scope: !746, inlinedAt: !751)
!757 = !DILocation(line: 170, column: 59, scope: !746, inlinedAt: !751)
!758 = !{!504, !418, i64 40}
!759 = !DILocation(line: 170, column: 29, scope: !746, inlinedAt: !751)
!760 = !DILocation(line: 170, column: 41, scope: !746, inlinedAt: !751)
!761 = !{!504, !418, i64 48}
!762 = !DILocation(line: 170, column: 7, scope: !746, inlinedAt: !751)
!763 = !DILocation(line: 170, column: 23, scope: !746, inlinedAt: !751)
!764 = !{!504, !418, i64 52}
!765 = !DILocation(line: 169, column: 12, scope: !746, inlinedAt: !751)
!766 = !DILocation(line: 172, column: 16, scope: !746, inlinedAt: !751)
!767 = !DILocation(line: 172, column: 3, scope: !746, inlinedAt: !751)
!768 = !DILocation(line: 173, column: 7, scope: !746, inlinedAt: !751)
!769 = !DILocation(line: 173, column: 12, scope: !746, inlinedAt: !751)
!770 = !{!504, !418, i64 44}
!771 = !DILocation(line: 198, column: 5, scope: !752, inlinedAt: !732)
!772 = !DILocation(line: 201, column: 13, scope: !773, inlinedAt: !732)
!773 = distinct !DILexicalBlock(scope: !742, file: !1, line: 200, column: 25)
!774 = !DILocation(line: 201, column: 5, scope: !773, inlinedAt: !732)
!775 = !DILocalVariable(name: "ar", arg: 1, scope: !776, file: !1, line: 150, type: !301)
!776 = distinct !DISubprogram(name: "funcinfo", scope: !1, file: !1, line: 150, type: !777, isLocal: true, isDefinition: true, scopeLine: 150, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !779)
!777 = !DISubroutineType(types: !778)
!778 = !{null, !301, !686}
!779 = !{!775, !780}
!780 = !DILocalVariable(name: "cl", arg: 2, scope: !776, file: !1, line: 150, type: !686)
!781 = !DILocation(line: 150, column: 34, scope: !776, inlinedAt: !782)
!782 = distinct !DILocation(line: 203, column: 9, scope: !783, inlinedAt: !732)
!783 = distinct !DILexicalBlock(scope: !784, file: !1, line: 202, column: 17)
!784 = distinct !DILexicalBlock(scope: !773, file: !1, line: 201, column: 20)
!785 = !DILocation(line: 150, column: 47, scope: !776, inlinedAt: !782)
!786 = !DILocation(line: 151, column: 13, scope: !787, inlinedAt: !782)
!787 = distinct !DILexicalBlock(scope: !776, file: !1, line: 151, column: 7)
!788 = !DILocation(line: 151, column: 7, scope: !787, inlinedAt: !782)
!789 = !DILocation(line: 151, column: 7, scope: !776, inlinedAt: !782)
!790 = !DILocation(line: 152, column: 16, scope: !791, inlinedAt: !782)
!791 = distinct !DILexicalBlock(scope: !787, file: !1, line: 151, column: 18)
!792 = !{!504, !415, i64 32}
!793 = !DILocation(line: 153, column: 21, scope: !791, inlinedAt: !782)
!794 = !DILocation(line: 156, column: 3, scope: !791, inlinedAt: !782)
!795 = !DILocation(line: 158, column: 18, scope: !796, inlinedAt: !782)
!796 = distinct !DILexicalBlock(scope: !787, file: !1, line: 157, column: 8)
!797 = !{!586, !415, i64 64}
!798 = !DILocation(line: 158, column: 16, scope: !796, inlinedAt: !782)
!799 = !DILocation(line: 159, column: 29, scope: !796, inlinedAt: !782)
!800 = !DILocation(line: 159, column: 32, scope: !796, inlinedAt: !782)
!801 = !{!586, !418, i64 96}
!802 = !DILocation(line: 159, column: 21, scope: !796, inlinedAt: !782)
!803 = !DILocation(line: 160, column: 33, scope: !796, inlinedAt: !782)
!804 = !DILocation(line: 160, column: 36, scope: !796, inlinedAt: !782)
!805 = !{!586, !418, i64 100}
!806 = !DILocation(line: 161, column: 33, scope: !796, inlinedAt: !782)
!807 = !DILocation(line: 161, column: 16, scope: !796, inlinedAt: !782)
!808 = !DILocation(line: 163, column: 35, scope: !776, inlinedAt: !782)
!809 = !DILocation(line: 160, column: 25, scope: !796, inlinedAt: !782)
!810 = !DILocation(line: 161, column: 14, scope: !796, inlinedAt: !782)
!811 = !DILocation(line: 163, column: 3, scope: !776, inlinedAt: !782)
!812 = !DILocation(line: 204, column: 9, scope: !783, inlinedAt: !732)
!813 = !DILocation(line: 207, column: 27, scope: !814, inlinedAt: !732)
!814 = distinct !DILexicalBlock(scope: !784, file: !1, line: 206, column: 17)
!815 = !DILocalVariable(name: "L", arg: 1, scope: !816, file: !1, line: 44, type: !179)
!816 = distinct !DISubprogram(name: "currentline", scope: !1, file: !1, line: 44, type: !564, isLocal: true, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !817)
!817 = !{!815, !818, !819}
!818 = !DILocalVariable(name: "ci", arg: 2, scope: !816, file: !1, line: 44, type: !269)
!819 = !DILocalVariable(name: "pc", scope: !816, file: !1, line: 45, type: !61)
!820 = !DILocation(line: 44, column: 36, scope: !816, inlinedAt: !821)
!821 = distinct !DILocation(line: 207, column: 34, scope: !814, inlinedAt: !732)
!822 = !DILocation(line: 44, column: 49, scope: !816, inlinedAt: !821)
!823 = !DILocation(line: 36, column: 34, scope: !563, inlinedAt: !824)
!824 = distinct !DILocation(line: 45, column: 12, scope: !816, inlinedAt: !821)
!825 = !DILocation(line: 36, column: 47, scope: !563, inlinedAt: !824)
!826 = !DILocation(line: 37, column: 8, scope: !579, inlinedAt: !824)
!827 = !DILocation(line: 37, column: 7, scope: !563, inlinedAt: !824)
!828 = !DILocation(line: 38, column: 16, scope: !572, inlinedAt: !824)
!829 = !DILocation(line: 38, column: 10, scope: !572, inlinedAt: !824)
!830 = !DILocation(line: 38, column: 7, scope: !563, inlinedAt: !824)
!831 = !DILocation(line: 40, column: 10, scope: !563, inlinedAt: !824)
!832 = !DILocation(line: 39, column: 22, scope: !572, inlinedAt: !824)
!833 = !DILocation(line: 39, column: 17, scope: !572, inlinedAt: !824)
!834 = !DILocation(line: 39, column: 5, scope: !572, inlinedAt: !824)
!835 = !DILocation(line: 45, column: 7, scope: !816, inlinedAt: !821)
!836 = !DILocation(line: 46, column: 10, scope: !837, inlinedAt: !821)
!837 = distinct !DILexicalBlock(scope: !816, file: !1, line: 46, column: 7)
!838 = !DILocation(line: 46, column: 7, scope: !816, inlinedAt: !821)
!839 = !DILocation(line: 49, column: 12, scope: !837, inlinedAt: !821)
!840 = !{!586, !415, i64 40}
!841 = !{!418, !418, i64 0}
!842 = !DILocation(line: 207, column: 25, scope: !814, inlinedAt: !732)
!843 = !DILocation(line: 208, column: 9, scope: !814, inlinedAt: !732)
!844 = !DILocation(line: 211, column: 25, scope: !845, inlinedAt: !732)
!845 = distinct !DILexicalBlock(scope: !784, file: !1, line: 210, column: 17)
!846 = !DILocation(line: 211, column: 20, scope: !845, inlinedAt: !732)
!847 = !DILocation(line: 211, column: 18, scope: !845, inlinedAt: !732)
!848 = !DILocation(line: 212, column: 9, scope: !845, inlinedAt: !732)
!849 = !DILocation(line: 215, column: 24, scope: !850, inlinedAt: !732)
!850 = distinct !DILexicalBlock(scope: !784, file: !1, line: 214, column: 17)
!851 = !DILocalVariable(name: "L", arg: 1, scope: !852, file: !1, line: 544, type: !179)
!852 = distinct !DISubprogram(name: "getfuncname", scope: !1, file: !1, line: 544, type: !853, isLocal: true, isDefinition: true, scopeLine: 544, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !856)
!853 = !DISubroutineType(types: !854)
!854 = !{!307, !179, !269, !855}
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!856 = !{!851, !857, !858, !859}
!857 = !DILocalVariable(name: "ci", arg: 2, scope: !852, file: !1, line: 544, type: !269)
!858 = !DILocalVariable(name: "name", arg: 3, scope: !852, file: !1, line: 544, type: !855)
!859 = !DILocalVariable(name: "i", scope: !852, file: !1, line: 545, type: !279)
!860 = !DILocation(line: 544, column: 44, scope: !852, inlinedAt: !861)
!861 = distinct !DILocation(line: 215, column: 31, scope: !850, inlinedAt: !732)
!862 = !DILocation(line: 544, column: 57, scope: !852, inlinedAt: !861)
!863 = !DILocation(line: 544, column: 74, scope: !852, inlinedAt: !861)
!864 = !DILocation(line: 546, column: 8, scope: !865, inlinedAt: !861)
!865 = distinct !DILexicalBlock(scope: !852, file: !1, line: 546, column: 7)
!866 = !DILocation(line: 546, column: 18, scope: !865, inlinedAt: !861)
!867 = !DILocation(line: 546, column: 25, scope: !865, inlinedAt: !861)
!868 = !DILocation(line: 546, column: 35, scope: !865, inlinedAt: !861)
!869 = !DILocation(line: 546, column: 40, scope: !865, inlinedAt: !861)
!870 = !DILocation(line: 546, column: 44, scope: !865, inlinedAt: !861)
!871 = !DILocation(line: 546, column: 7, scope: !852, inlinedAt: !861)
!872 = !DILocation(line: 549, column: 22, scope: !852, inlinedAt: !861)
!873 = !DILocation(line: 549, column: 25, scope: !852, inlinedAt: !861)
!874 = !DILocation(line: 36, column: 34, scope: !563, inlinedAt: !875)
!875 = distinct !DILocation(line: 549, column: 30, scope: !852, inlinedAt: !861)
!876 = !DILocation(line: 36, column: 47, scope: !563, inlinedAt: !875)
!877 = !DILocation(line: 38, column: 16, scope: !572, inlinedAt: !875)
!878 = !DILocation(line: 38, column: 10, scope: !572, inlinedAt: !875)
!879 = !DILocation(line: 38, column: 7, scope: !563, inlinedAt: !875)
!880 = !DILocation(line: 40, column: 10, scope: !563, inlinedAt: !875)
!881 = !DILocation(line: 39, column: 22, scope: !572, inlinedAt: !875)
!882 = !DILocation(line: 39, column: 17, scope: !572, inlinedAt: !875)
!883 = !DILocation(line: 39, column: 5, scope: !572, inlinedAt: !875)
!884 = !DILocation(line: 40, column: 3, scope: !563, inlinedAt: !875)
!885 = !DILocation(line: 549, column: 7, scope: !852, inlinedAt: !861)
!886 = !DILocation(line: 545, column: 15, scope: !852, inlinedAt: !861)
!887 = !DILocation(line: 550, column: 32, scope: !888, inlinedAt: !861)
!888 = distinct !DILexicalBlock(scope: !852, file: !1, line: 550, column: 7)
!889 = !DILocation(line: 215, column: 22, scope: !850, inlinedAt: !732)
!890 = !{!504, !415, i64 16}
!891 = !DILocation(line: 216, column: 13, scope: !850, inlinedAt: !732)
!892 = !DILocation(line: 552, column: 30, scope: !888, inlinedAt: !861)
!893 = !DILocation(line: 552, column: 12, scope: !888, inlinedAt: !861)
!894 = !DILocation(line: 216, column: 26, scope: !895, inlinedAt: !732)
!895 = distinct !DILexicalBlock(scope: !850, file: !1, line: 216, column: 13)
!896 = !DILocation(line: 218, column: 20, scope: !897, inlinedAt: !732)
!897 = distinct !DILexicalBlock(scope: !895, file: !1, line: 216, column: 35)
!898 = !DILocation(line: 219, column: 9, scope: !897, inlinedAt: !732)
!899 = !DILocation(line: 226, column: 5, scope: !784, inlinedAt: !732)
!900 = !DILocation(line: 0, scope: !722, inlinedAt: !732)
!901 = !DILocation(line: 200, column: 21, scope: !742, inlinedAt: !732)
!902 = distinct !{!902, !903, !904}
!903 = !DILocation(line: 200, column: 3, scope: !743)
!904 = !DILocation(line: 227, column: 3, scope: !743)
!905 = !DILocation(line: 233, column: 7, scope: !677)
!906 = !DILocation(line: 250, column: 7, scope: !696)
!907 = !DILocation(line: 250, column: 7, scope: !677)
!908 = !DILocation(line: 0, scope: !693)
!909 = !DILocation(line: 251, column: 9, scope: !695)
!910 = !DILocation(line: 252, column: 10, scope: !693)
!911 = !DILocation(line: 253, column: 5, scope: !912)
!912 = distinct !DILexicalBlock(scope: !913, file: !1, line: 253, column: 5)
!913 = distinct !DILexicalBlock(scope: !695, file: !1, line: 253, column: 5)
!914 = !{!414, !415, i64 56}
!915 = !DILocation(line: 253, column: 5, scope: !913)
!916 = !DILocation(line: 254, column: 3, scope: !695)
!917 = !DILocation(line: 255, column: 7, scope: !918)
!918 = distinct !DILexicalBlock(scope: !677, file: !1, line: 255, column: 7)
!919 = !DILocation(line: 255, column: 7, scope: !677)
!920 = !DILocalVariable(name: "L", arg: 1, scope: !921, file: !1, line: 177, type: !179)
!921 = distinct !DISubprogram(name: "collectvalidlines", scope: !1, file: !1, line: 177, type: !922, isLocal: true, isDefinition: true, scopeLine: 177, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !924)
!922 = !DISubroutineType(types: !923)
!923 = !{null, !179, !686}
!924 = !{!920, !925, !926, !931, !932, !933, !937}
!925 = !DILocalVariable(name: "f", arg: 2, scope: !921, file: !1, line: 177, type: !686)
!926 = !DILocalVariable(name: "t", scope: !927, file: !1, line: 182, type: !929)
!927 = distinct !DILexicalBlock(scope: !928, file: !1, line: 181, column: 8)
!928 = distinct !DILexicalBlock(scope: !921, file: !1, line: 178, column: 7)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_typedef, name: "Table", file: !64, line: 348, baseType: !113)
!931 = !DILocalVariable(name: "lineinfo", scope: !927, file: !1, line: 183, type: !359)
!932 = !DILocalVariable(name: "i", scope: !927, file: !1, line: 184, type: !61)
!933 = !DILocalVariable(name: "i_o", scope: !934, file: !1, line: 186, type: !122)
!934 = distinct !DILexicalBlock(scope: !935, file: !1, line: 186, column: 7)
!935 = distinct !DILexicalBlock(scope: !936, file: !1, line: 185, column: 5)
!936 = distinct !DILexicalBlock(scope: !927, file: !1, line: 185, column: 5)
!937 = !DILocalVariable(name: "i_o", scope: !938, file: !1, line: 187, type: !122)
!938 = distinct !DILexicalBlock(scope: !927, file: !1, line: 187, column: 5)
!939 = !DILocation(line: 177, column: 43, scope: !921, inlinedAt: !940)
!940 = distinct !DILocation(line: 256, column: 5, scope: !918)
!941 = !DILocation(line: 177, column: 55, scope: !921, inlinedAt: !940)
!942 = !DILocation(line: 178, column: 17, scope: !928, inlinedAt: !940)
!943 = !DILocation(line: 178, column: 25, scope: !928, inlinedAt: !940)
!944 = !DILocation(line: 178, column: 20, scope: !928, inlinedAt: !940)
!945 = !DILocation(line: 178, column: 7, scope: !921, inlinedAt: !940)
!946 = !DILocation(line: 179, column: 5, scope: !947, inlinedAt: !940)
!947 = distinct !DILexicalBlock(scope: !928, file: !1, line: 178, column: 30)
!948 = !DILocation(line: 180, column: 3, scope: !947, inlinedAt: !940)
!949 = !DILocation(line: 182, column: 16, scope: !927, inlinedAt: !940)
!950 = !DILocation(line: 182, column: 12, scope: !927, inlinedAt: !940)
!951 = !DILocation(line: 183, column: 26, scope: !927, inlinedAt: !940)
!952 = !DILocation(line: 183, column: 29, scope: !927, inlinedAt: !940)
!953 = !DILocation(line: 183, column: 10, scope: !927, inlinedAt: !940)
!954 = !DILocation(line: 184, column: 9, scope: !927, inlinedAt: !940)
!955 = !DILocation(line: 185, column: 25, scope: !935, inlinedAt: !940)
!956 = !{!586, !418, i64 84}
!957 = !DILocation(line: 185, column: 16, scope: !935, inlinedAt: !940)
!958 = !DILocation(line: 185, column: 5, scope: !936, inlinedAt: !940)
!959 = !DILocation(line: 186, column: 7, scope: !934, inlinedAt: !940)
!960 = !DILocation(line: 185, column: 40, scope: !935, inlinedAt: !940)
!961 = !DILocation(line: 185, column: 22, scope: !935, inlinedAt: !940)
!962 = distinct !{!962, !963, !964}
!963 = !DILocation(line: 185, column: 5, scope: !936)
!964 = !DILocation(line: 186, column: 7, scope: !936)
!965 = !DILocation(line: 187, column: 5, scope: !938, inlinedAt: !940)
!966 = !DILocation(line: 189, column: 3, scope: !967, inlinedAt: !940)
!967 = distinct !DILexicalBlock(scope: !968, file: !1, line: 189, column: 3)
!968 = distinct !DILexicalBlock(scope: !921, file: !1, line: 189, column: 3)
!969 = !DILocation(line: 189, column: 3, scope: !968, inlinedAt: !940)
!970 = !DILocation(line: 256, column: 5, scope: !918)
!971 = !DILocation(line: 258, column: 3, scope: !677)
!972 = distinct !DISubprogram(name: "luaG_checkopenop", scope: !1, file: !1, line: 290, type: !973, isLocal: false, isDefinition: true, scopeLine: 290, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !975)
!973 = !DISubroutineType(types: !974)
!974 = !{!61, !279}
!975 = !{!976}
!976 = !DILocalVariable(name: "i", arg: 1, scope: !972, file: !1, line: 290, type: !279)
!977 = !DILocation(line: 290, column: 35, scope: !972)
!978 = !DILocation(line: 291, column: 3, scope: !972)
!979 = !DILocation(line: 296, column: 7, scope: !980)
!980 = distinct !DILexicalBlock(scope: !981, file: !1, line: 296, column: 7)
!981 = distinct !DILexicalBlock(scope: !982, file: !1, line: 295, column: 22)
!982 = distinct !DILexicalBlock(scope: !972, file: !1, line: 291, column: 26)
!983 = !DILocation(line: 297, column: 7, scope: !981)
!984 = !DILocation(line: 0, scope: !980)
!985 = !DILocation(line: 301, column: 1, scope: !972)
!986 = distinct !DISubprogram(name: "luaG_checkcode", scope: !1, file: !1, line: 484, type: !987, isLocal: false, isDefinition: true, scopeLine: 484, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !991)
!987 = !DISubroutineType(types: !988)
!988 = !{!61, !989}
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !541)
!991 = !{!992}
!992 = !DILocalVariable(name: "pt", arg: 1, scope: !986, file: !1, line: 484, type: !989)
!993 = !DILocation(line: 484, column: 34, scope: !986)
!994 = !DILocation(line: 485, column: 28, scope: !986)
!995 = !{!586, !418, i64 80}
!996 = !DILocation(line: 485, column: 11, scope: !986)
!997 = !DILocation(line: 485, column: 46, scope: !986)
!998 = !DILocation(line: 485, column: 3, scope: !986)
!999 = distinct !DISubprogram(name: "symbexec", scope: !1, file: !1, line: 317, type: !1000, isLocal: true, isDefinition: true, scopeLine: 317, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1002)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{!279, !989, !61, !61}
!1002 = !{!1003, !1004, !1005, !1006, !1007, !1008, !1012, !1013, !1014, !1015, !1016, !1021, !1024, !1028, !1031, !1033, !1034}
!1003 = !DILocalVariable(name: "pt", arg: 1, scope: !999, file: !1, line: 317, type: !989)
!1004 = !DILocalVariable(name: "lastpc", arg: 2, scope: !999, file: !1, line: 317, type: !61)
!1005 = !DILocalVariable(name: "reg", arg: 3, scope: !999, file: !1, line: 317, type: !61)
!1006 = !DILocalVariable(name: "pc", scope: !999, file: !1, line: 318, type: !61)
!1007 = !DILocalVariable(name: "last", scope: !999, file: !1, line: 319, type: !61)
!1008 = !DILocalVariable(name: "i", scope: !1009, file: !1, line: 323, type: !279)
!1009 = distinct !DILexicalBlock(scope: !1010, file: !1, line: 322, column: 35)
!1010 = distinct !DILexicalBlock(scope: !1011, file: !1, line: 322, column: 3)
!1011 = distinct !DILexicalBlock(scope: !999, file: !1, line: 322, column: 3)
!1012 = !DILocalVariable(name: "op", scope: !1009, file: !1, line: 324, type: !390)
!1013 = !DILocalVariable(name: "a", scope: !1009, file: !1, line: 325, type: !61)
!1014 = !DILocalVariable(name: "b", scope: !1009, file: !1, line: 326, type: !61)
!1015 = !DILocalVariable(name: "c", scope: !1009, file: !1, line: 327, type: !61)
!1016 = !DILocalVariable(name: "dest", scope: !1017, file: !1, line: 346, type: !61)
!1017 = distinct !DILexicalBlock(scope: !1018, file: !1, line: 345, column: 37)
!1018 = distinct !DILexicalBlock(scope: !1019, file: !1, line: 345, column: 13)
!1019 = distinct !DILexicalBlock(scope: !1020, file: !1, line: 343, column: 19)
!1020 = distinct !DILexicalBlock(scope: !1009, file: !1, line: 330, column: 28)
!1021 = !DILocalVariable(name: "j", scope: !1022, file: !1, line: 349, type: !61)
!1022 = distinct !DILexicalBlock(scope: !1023, file: !1, line: 348, column: 25)
!1023 = distinct !DILexicalBlock(scope: !1017, file: !1, line: 348, column: 15)
!1024 = !DILocalVariable(name: "d", scope: !1025, file: !1, line: 355, type: !279)
!1025 = distinct !DILexicalBlock(scope: !1026, file: !1, line: 354, column: 40)
!1026 = distinct !DILexicalBlock(scope: !1027, file: !1, line: 354, column: 13)
!1027 = distinct !DILexicalBlock(scope: !1022, file: !1, line: 354, column: 13)
!1028 = !DILocalVariable(name: "dest", scope: !1029, file: !1, line: 417, type: !61)
!1029 = distinct !DILexicalBlock(scope: !1030, file: !1, line: 416, column: 20)
!1030 = distinct !DILexicalBlock(scope: !1009, file: !1, line: 373, column: 17)
!1031 = !DILocalVariable(name: "nup", scope: !1032, file: !1, line: 451, type: !61)
!1032 = distinct !DILexicalBlock(scope: !1030, file: !1, line: 450, column: 24)
!1033 = !DILocalVariable(name: "j", scope: !1032, file: !1, line: 451, type: !61)
!1034 = !DILocalVariable(name: "op1", scope: !1035, file: !1, line: 456, type: !390)
!1035 = distinct !DILexicalBlock(scope: !1036, file: !1, line: 455, column: 36)
!1036 = distinct !DILexicalBlock(scope: !1037, file: !1, line: 455, column: 9)
!1037 = distinct !DILexicalBlock(scope: !1032, file: !1, line: 455, column: 9)
!1038 = !DILocation(line: 317, column: 43, scope: !999)
!1039 = !DILocation(line: 317, column: 51, scope: !999)
!1040 = !DILocation(line: 317, column: 63, scope: !999)
!1041 = !DILocation(line: 320, column: 14, scope: !999)
!1042 = !DILocalVariable(name: "pt", arg: 1, scope: !1043, file: !1, line: 276, type: !989)
!1043 = distinct !DISubprogram(name: "precheck", scope: !1, file: !1, line: 276, type: !987, isLocal: true, isDefinition: true, scopeLine: 276, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1044)
!1044 = !{!1042}
!1045 = !DILocation(line: 276, column: 35, scope: !1043, inlinedAt: !1046)
!1046 = distinct !DILocation(line: 321, column: 3, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !999, file: !1, line: 321, column: 3)
!1048 = !DILocation(line: 277, column: 3, scope: !1049, inlinedAt: !1046)
!1049 = distinct !DILexicalBlock(scope: !1043, file: !1, line: 277, column: 3)
!1050 = !{!586, !416, i64 115}
!1051 = !DILocation(line: 277, column: 3, scope: !1043, inlinedAt: !1046)
!1052 = !DILocation(line: 278, column: 3, scope: !1053, inlinedAt: !1046)
!1053 = distinct !DILexicalBlock(scope: !1043, file: !1, line: 278, column: 3)
!1054 = !{!586, !416, i64 113}
!1055 = !{!586, !416, i64 114}
!1056 = !DILocation(line: 279, column: 3, scope: !1057, inlinedAt: !1046)
!1057 = distinct !DILexicalBlock(scope: !1043, file: !1, line: 279, column: 3)
!1058 = !DILocation(line: 278, column: 3, scope: !1043, inlinedAt: !1046)
!1059 = !DILocation(line: 281, column: 3, scope: !1060, inlinedAt: !1046)
!1060 = distinct !DILexicalBlock(scope: !1043, file: !1, line: 281, column: 3)
!1061 = !{!586, !418, i64 72}
!1062 = !{!586, !416, i64 112}
!1063 = !DILocation(line: 281, column: 3, scope: !1043, inlinedAt: !1046)
!1064 = !DILocation(line: 282, column: 3, scope: !1065, inlinedAt: !1046)
!1065 = distinct !DILexicalBlock(scope: !1043, file: !1, line: 282, column: 3)
!1066 = !DILocation(line: 283, column: 3, scope: !1067, inlinedAt: !1046)
!1067 = distinct !DILexicalBlock(scope: !1043, file: !1, line: 283, column: 3)
!1068 = !DILocation(line: 321, column: 3, scope: !999)
!1069 = !DILocation(line: 319, column: 7, scope: !999)
!1070 = !DILocation(line: 318, column: 7, scope: !999)
!1071 = !DILocation(line: 322, column: 19, scope: !1010)
!1072 = !DILocation(line: 322, column: 3, scope: !1011)
!1073 = !DILocation(line: 323, column: 21, scope: !1009)
!1074 = !DILocation(line: 323, column: 17, scope: !1009)
!1075 = !DILocation(line: 324, column: 17, scope: !1009)
!1076 = !DILocation(line: 324, column: 12, scope: !1009)
!1077 = !DILocation(line: 325, column: 13, scope: !1009)
!1078 = !DILocation(line: 325, column: 9, scope: !1009)
!1079 = !DILocation(line: 326, column: 9, scope: !1009)
!1080 = !DILocation(line: 327, column: 9, scope: !1009)
!1081 = !DILocation(line: 328, column: 5, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1009, file: !1, line: 328, column: 5)
!1083 = !DILocation(line: 329, column: 5, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1009, file: !1, line: 329, column: 5)
!1085 = !DILocation(line: 328, column: 5, scope: !1009)
!1086 = !DILocation(line: 330, column: 13, scope: !1009)
!1087 = !DILocation(line: 330, column: 5, scope: !1009)
!1088 = !DILocation(line: 332, column: 13, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1020, file: !1, line: 331, column: 18)
!1090 = !DILocation(line: 333, column: 13, scope: !1089)
!1091 = !DILocalVariable(name: "pt", arg: 1, scope: !1092, file: !1, line: 304, type: !989)
!1092 = distinct !DISubprogram(name: "checkArgMode", scope: !1, file: !1, line: 304, type: !1093, isLocal: true, isDefinition: true, scopeLine: 304, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1095)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{!61, !989, !61, !50}
!1095 = !{!1091, !1096, !1097}
!1096 = !DILocalVariable(name: "r", arg: 2, scope: !1092, file: !1, line: 304, type: !61)
!1097 = !DILocalVariable(name: "mode", arg: 3, scope: !1092, file: !1, line: 304, type: !50)
!1098 = !DILocation(line: 304, column: 39, scope: !1092, inlinedAt: !1099)
!1099 = distinct !DILocation(line: 334, column: 9, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1089, file: !1, line: 334, column: 9)
!1101 = !DILocation(line: 304, column: 47, scope: !1092, inlinedAt: !1099)
!1102 = !DILocation(line: 304, column: 65, scope: !1092, inlinedAt: !1099)
!1103 = !DILocation(line: 305, column: 3, scope: !1092, inlinedAt: !1099)
!1104 = !DILocation(line: 306, column: 18, scope: !1105, inlinedAt: !1099)
!1105 = distinct !DILexicalBlock(scope: !1106, file: !1, line: 306, column: 18)
!1106 = distinct !DILexicalBlock(scope: !1092, file: !1, line: 305, column: 17)
!1107 = !DILocation(line: 306, column: 18, scope: !1106, inlinedAt: !1099)
!1108 = !DILocation(line: 308, column: 18, scope: !1109, inlinedAt: !1099)
!1109 = distinct !DILexicalBlock(scope: !1106, file: !1, line: 308, column: 18)
!1110 = !DILocation(line: 308, column: 18, scope: !1106, inlinedAt: !1099)
!1111 = !DILocation(line: 310, column: 7, scope: !1112, inlinedAt: !1099)
!1112 = distinct !DILexicalBlock(scope: !1106, file: !1, line: 310, column: 7)
!1113 = !DILocation(line: 310, column: 7, scope: !1106, inlinedAt: !1099)
!1114 = !{!586, !418, i64 76}
!1115 = !DILocation(line: 335, column: 9, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1089, file: !1, line: 335, column: 9)
!1117 = !DILocation(line: 304, column: 39, scope: !1092, inlinedAt: !1118)
!1118 = distinct !DILocation(line: 335, column: 9, scope: !1116)
!1119 = !DILocation(line: 304, column: 47, scope: !1092, inlinedAt: !1118)
!1120 = !DILocation(line: 305, column: 3, scope: !1092, inlinedAt: !1118)
!1121 = !DILocation(line: 306, column: 18, scope: !1105, inlinedAt: !1118)
!1122 = !DILocation(line: 306, column: 18, scope: !1106, inlinedAt: !1118)
!1123 = !DILocation(line: 308, column: 18, scope: !1109, inlinedAt: !1118)
!1124 = !DILocation(line: 308, column: 18, scope: !1106, inlinedAt: !1118)
!1125 = !DILocation(line: 310, column: 7, scope: !1112, inlinedAt: !1118)
!1126 = !DILocation(line: 310, column: 7, scope: !1106, inlinedAt: !1118)
!1127 = !DILocation(line: 339, column: 13, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1020, file: !1, line: 338, column: 18)
!1129 = !DILocation(line: 340, column: 13, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1128, file: !1, line: 340, column: 13)
!1131 = !DILocation(line: 340, column: 26, scope: !1130)
!1132 = !DILocation(line: 340, column: 13, scope: !1128)
!1133 = !DILocation(line: 340, column: 37, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1130, file: !1, line: 340, column: 37)
!1135 = !DILocation(line: 340, column: 37, scope: !1130)
!1136 = !DILocation(line: 344, column: 13, scope: !1019)
!1137 = !DILocation(line: 345, column: 13, scope: !1018)
!1138 = !DILocation(line: 345, column: 26, scope: !1018)
!1139 = !DILocation(line: 345, column: 13, scope: !1019)
!1140 = !DILocation(line: 346, column: 24, scope: !1017)
!1141 = !DILocation(line: 346, column: 26, scope: !1017)
!1142 = !DILocation(line: 346, column: 15, scope: !1017)
!1143 = !DILocation(line: 347, column: 11, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1017, file: !1, line: 347, column: 11)
!1145 = !DILocation(line: 348, column: 20, scope: !1023)
!1146 = !DILocation(line: 348, column: 15, scope: !1017)
!1147 = !DILocation(line: 355, column: 44, scope: !1025)
!1148 = !DILocation(line: 349, column: 17, scope: !1022)
!1149 = !DILocation(line: 354, column: 13, scope: !1027)
!1150 = !DILocation(line: 355, column: 46, scope: !1025)
!1151 = !DILocation(line: 355, column: 31, scope: !1025)
!1152 = !DILocation(line: 355, column: 27, scope: !1025)
!1153 = !DILocation(line: 356, column: 49, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1025, file: !1, line: 356, column: 19)
!1155 = !DILocation(line: 354, column: 36, scope: !1026)
!1156 = !DILocation(line: 354, column: 27, scope: !1026)
!1157 = distinct !{!1157, !1149, !1158}
!1158 = !DILocation(line: 357, column: 13, scope: !1027)
!1159 = !DILocation(line: 360, column: 13, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1022, file: !1, line: 360, column: 13)
!1161 = !DILocation(line: 0, scope: !1026)
!1162 = !DILocation(line: 0, scope: !1089)
!1163 = !DILocation(line: 366, column: 9, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1009, file: !1, line: 366, column: 9)
!1165 = !DILocation(line: 367, column: 13, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1167, file: !1, line: 367, column: 11)
!1167 = distinct !DILexicalBlock(scope: !1164, file: !1, line: 366, column: 24)
!1168 = !DILocation(line: 366, column: 9, scope: !1009)
!1169 = !DILocation(line: 369, column: 9, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1009, file: !1, line: 369, column: 9)
!1171 = !DILocation(line: 369, column: 9, scope: !1009)
!1172 = !DILocation(line: 370, column: 7, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1174, file: !1, line: 370, column: 7)
!1174 = distinct !DILexicalBlock(scope: !1170, file: !1, line: 369, column: 24)
!1175 = !DILocation(line: 370, column: 7, scope: !1174)
!1176 = !DILocation(line: 371, column: 7, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1174, file: !1, line: 371, column: 7)
!1178 = !DILocation(line: 371, column: 7, scope: !1174)
!1179 = !DILocation(line: 373, column: 5, scope: !1009)
!1180 = !DILocation(line: 375, column: 15, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1182, file: !1, line: 375, column: 13)
!1182 = distinct !DILexicalBlock(scope: !1030, file: !1, line: 374, column: 25)
!1183 = !DILocation(line: 375, column: 13, scope: !1182)
!1184 = !DILocation(line: 376, column: 11, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1186, file: !1, line: 376, column: 11)
!1186 = distinct !DILexicalBlock(scope: !1181, file: !1, line: 375, column: 21)
!1187 = !DILocation(line: 376, column: 11, scope: !1186)
!1188 = !DILocation(line: 377, column: 11, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1186, file: !1, line: 377, column: 11)
!1190 = !DILocation(line: 383, column: 15, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1192, file: !1, line: 383, column: 13)
!1192 = distinct !DILexicalBlock(scope: !1030, file: !1, line: 382, column: 24)
!1193 = !DILocation(line: 383, column: 29, scope: !1191)
!1194 = !DILocation(line: 383, column: 22, scope: !1191)
!1195 = !DILocation(line: 389, column: 9, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1197, file: !1, line: 389, column: 9)
!1197 = distinct !DILexicalBlock(scope: !1030, file: !1, line: 388, column: 25)
!1198 = !DILocation(line: 389, column: 9, scope: !1197)
!1199 = !DILocation(line: 394, column: 9, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1201, file: !1, line: 394, column: 9)
!1201 = distinct !DILexicalBlock(scope: !1030, file: !1, line: 393, column: 26)
!1202 = !{!586, !415, i64 16}
!1203 = !DILocation(line: 394, column: 9, scope: !1201)
!1204 = !DILocation(line: 398, column: 9, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1206, file: !1, line: 398, column: 9)
!1206 = distinct !DILexicalBlock(scope: !1030, file: !1, line: 397, column: 21)
!1207 = !DILocation(line: 398, column: 9, scope: !1206)
!1208 = !DILocation(line: 399, column: 17, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1206, file: !1, line: 399, column: 13)
!1210 = !DILocation(line: 399, column: 13, scope: !1206)
!1211 = !DILocation(line: 403, column: 9, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1213, file: !1, line: 403, column: 9)
!1213 = distinct !DILexicalBlock(scope: !1030, file: !1, line: 402, column: 23)
!1214 = !DILocation(line: 403, column: 9, scope: !1213)
!1215 = !DILocation(line: 407, column: 9, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1217, file: !1, line: 407, column: 9)
!1217 = distinct !DILexicalBlock(scope: !1030, file: !1, line: 406, column: 25)
!1218 = !DILocation(line: 407, column: 9, scope: !1217)
!1219 = !DILocation(line: 408, column: 9, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1217, file: !1, line: 408, column: 9)
!1221 = !DILocation(line: 408, column: 9, scope: !1217)
!1222 = !DILocation(line: 409, column: 17, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1217, file: !1, line: 409, column: 13)
!1224 = !DILocation(line: 409, column: 13, scope: !1217)
!1225 = !DILocation(line: 414, column: 9, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1030, file: !1, line: 414, column: 9)
!1227 = !DILocation(line: 414, column: 9, scope: !1030)
!1228 = !DILocation(line: 417, column: 22, scope: !1029)
!1229 = !DILocation(line: 417, column: 24, scope: !1029)
!1230 = !DILocation(line: 417, column: 13, scope: !1029)
!1231 = !DILocation(line: 419, column: 33, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1029, file: !1, line: 419, column: 13)
!1233 = !DILocation(line: 419, column: 27, scope: !1232)
!1234 = !DILocation(line: 419, column: 48, scope: !1232)
!1235 = !DILocation(line: 425, column: 15, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1237, file: !1, line: 425, column: 13)
!1237 = distinct !DILexicalBlock(scope: !1030, file: !1, line: 424, column: 25)
!1238 = !DILocation(line: 426, column: 11, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1240, file: !1, line: 426, column: 11)
!1240 = distinct !DILexicalBlock(scope: !1236, file: !1, line: 425, column: 21)
!1241 = !DILocation(line: 425, column: 13, scope: !1237)
!1242 = !DILocation(line: 428, column: 10, scope: !1237)
!1243 = !DILocation(line: 429, column: 15, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1237, file: !1, line: 429, column: 13)
!1245 = !DILocation(line: 429, column: 13, scope: !1237)
!1246 = !DILocation(line: 430, column: 11, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1248, file: !1, line: 430, column: 11)
!1248 = distinct !DILexicalBlock(scope: !1244, file: !1, line: 429, column: 31)
!1249 = !DILocation(line: 290, column: 35, scope: !972, inlinedAt: !1250)
!1250 = distinct !DILocation(line: 430, column: 11, scope: !1247)
!1251 = !DILocation(line: 291, column: 3, scope: !972, inlinedAt: !1250)
!1252 = !DILocation(line: 296, column: 7, scope: !980, inlinedAt: !1250)
!1253 = !DILocation(line: 430, column: 11, scope: !1248)
!1254 = !DILocation(line: 432, column: 20, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1244, file: !1, line: 432, column: 18)
!1256 = !DILocation(line: 433, column: 11, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1255, file: !1, line: 433, column: 11)
!1258 = !DILocation(line: 432, column: 18, scope: !1244)
!1259 = !DILocation(line: 434, column: 17, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1237, file: !1, line: 434, column: 13)
!1261 = !DILocation(line: 434, column: 13, scope: !1237)
!1262 = !DILocation(line: 439, column: 15, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1264, file: !1, line: 439, column: 13)
!1264 = distinct !DILexicalBlock(scope: !1030, file: !1, line: 437, column: 23)
!1265 = !DILocation(line: 439, column: 13, scope: !1264)
!1266 = !DILocation(line: 438, column: 10, scope: !1264)
!1267 = !DILocation(line: 439, column: 20, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1263, file: !1, line: 439, column: 20)
!1269 = !DILocation(line: 439, column: 20, scope: !1263)
!1270 = !DILocation(line: 443, column: 15, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1272, file: !1, line: 443, column: 13)
!1272 = distinct !DILexicalBlock(scope: !1030, file: !1, line: 442, column: 24)
!1273 = !DILocation(line: 443, column: 20, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1271, file: !1, line: 443, column: 20)
!1275 = !DILocation(line: 443, column: 13, scope: !1272)
!1276 = !DILocation(line: 444, column: 15, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1272, file: !1, line: 444, column: 13)
!1278 = !DILocation(line: 444, column: 13, scope: !1272)
!1279 = !DILocation(line: 445, column: 13, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1277, file: !1, line: 444, column: 21)
!1281 = !DILocation(line: 446, column: 11, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1280, file: !1, line: 446, column: 11)
!1283 = !DILocation(line: 446, column: 11, scope: !1280)
!1284 = !DILocation(line: 452, column: 9, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1032, file: !1, line: 452, column: 9)
!1286 = !{!586, !418, i64 88}
!1287 = !DILocation(line: 452, column: 9, scope: !1032)
!1288 = !DILocation(line: 453, column: 19, scope: !1032)
!1289 = !{!586, !415, i64 32}
!1290 = !DILocation(line: 453, column: 15, scope: !1032)
!1291 = !DILocation(line: 453, column: 25, scope: !1032)
!1292 = !DILocation(line: 451, column: 13, scope: !1032)
!1293 = !DILocation(line: 454, column: 9, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1032, file: !1, line: 454, column: 9)
!1295 = !DILocation(line: 454, column: 9, scope: !1032)
!1296 = !DILocation(line: 451, column: 18, scope: !1032)
!1297 = !DILocation(line: 455, column: 23, scope: !1036)
!1298 = !DILocation(line: 455, column: 9, scope: !1037)
!1299 = !DILocation(line: 456, column: 24, scope: !1035)
!1300 = !DILocation(line: 455, column: 32, scope: !1036)
!1301 = distinct !{!1301, !1298, !1302}
!1302 = !DILocation(line: 458, column: 9, scope: !1037)
!1303 = !DILocation(line: 456, column: 18, scope: !1035)
!1304 = !DILocation(line: 457, column: 11, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1035, file: !1, line: 457, column: 11)
!1306 = !DILocation(line: 459, column: 13, scope: !1032)
!1307 = !DILocation(line: 464, column: 9, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1309, file: !1, line: 464, column: 9)
!1309 = distinct !DILexicalBlock(scope: !1030, file: !1, line: 463, column: 23)
!1310 = !DILocation(line: 466, column: 10, scope: !1309)
!1311 = !DILocation(line: 467, column: 15, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1309, file: !1, line: 467, column: 13)
!1313 = !DILocation(line: 467, column: 13, scope: !1309)
!1314 = !DILocation(line: 467, column: 31, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1312, file: !1, line: 467, column: 31)
!1316 = !DILocation(line: 290, column: 35, scope: !972, inlinedAt: !1317)
!1317 = distinct !DILocation(line: 467, column: 31, scope: !1315)
!1318 = !DILocation(line: 291, column: 3, scope: !972, inlinedAt: !1317)
!1319 = !DILocation(line: 296, column: 7, scope: !980, inlinedAt: !1317)
!1320 = !DILocation(line: 468, column: 9, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1309, file: !1, line: 468, column: 9)
!1322 = !DILocation(line: 467, column: 31, scope: !1312)
!1323 = !DILocation(line: 468, column: 9, scope: !1309)
!1324 = !DILocation(line: 322, column: 31, scope: !1010)
!1325 = distinct !{!1325, !1072, !1326}
!1326 = !DILocation(line: 473, column: 3, scope: !1011)
!1327 = !DILocation(line: 474, column: 10, scope: !999)
!1328 = !DILocation(line: 475, column: 1, scope: !999)
!1329 = distinct !DISubprogram(name: "luaG_typeerror", scope: !1, file: !1, line: 567, type: !1330, isLocal: false, isDefinition: true, scopeLine: 567, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1332)
!1330 = !DISubroutineType(types: !1331)
!1331 = !{null, !179, !622, !307}
!1332 = !{!1333, !1334, !1335, !1336, !1337, !1338}
!1333 = !DILocalVariable(name: "L", arg: 1, scope: !1329, file: !1, line: 567, type: !179)
!1334 = !DILocalVariable(name: "o", arg: 2, scope: !1329, file: !1, line: 567, type: !622)
!1335 = !DILocalVariable(name: "op", arg: 3, scope: !1329, file: !1, line: 567, type: !307)
!1336 = !DILocalVariable(name: "name", scope: !1329, file: !1, line: 568, type: !307)
!1337 = !DILocalVariable(name: "t", scope: !1329, file: !1, line: 569, type: !307)
!1338 = !DILocalVariable(name: "kind", scope: !1329, file: !1, line: 570, type: !307)
!1339 = !DILocation(line: 567, column: 33, scope: !1329)
!1340 = !DILocation(line: 567, column: 50, scope: !1329)
!1341 = !DILocation(line: 567, column: 65, scope: !1329)
!1342 = !DILocation(line: 568, column: 3, scope: !1329)
!1343 = !DILocation(line: 568, column: 15, scope: !1329)
!1344 = !DILocation(line: 569, column: 34, scope: !1329)
!1345 = !DILocation(line: 569, column: 19, scope: !1329)
!1346 = !DILocation(line: 569, column: 15, scope: !1329)
!1347 = !DILocation(line: 570, column: 36, scope: !1329)
!1348 = !DILocalVariable(name: "ci", arg: 1, scope: !1349, file: !1, line: 559, type: !269)
!1349 = distinct !DISubprogram(name: "isinstack", scope: !1, file: !1, line: 559, type: !1350, isLocal: true, isDefinition: true, scopeLine: 559, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1352)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{!61, !269, !622}
!1352 = !{!1348, !1353, !1354}
!1353 = !DILocalVariable(name: "o", arg: 2, scope: !1349, file: !1, line: 559, type: !622)
!1354 = !DILocalVariable(name: "p", scope: !1349, file: !1, line: 560, type: !188)
!1355 = !DILocation(line: 559, column: 33, scope: !1349, inlinedAt: !1356)
!1356 = distinct !DILocation(line: 570, column: 23, scope: !1329)
!1357 = !DILocation(line: 559, column: 51, scope: !1349, inlinedAt: !1356)
!1358 = !DILocation(line: 561, column: 16, scope: !1359, inlinedAt: !1356)
!1359 = distinct !DILexicalBlock(scope: !1349, file: !1, line: 561, column: 3)
!1360 = !DILocation(line: 560, column: 9, scope: !1349, inlinedAt: !1356)
!1361 = !DILocation(line: 561, column: 30, scope: !1362, inlinedAt: !1356)
!1362 = distinct !DILexicalBlock(scope: !1359, file: !1, line: 561, column: 3)
!1363 = !{!480, !415, i64 16}
!1364 = !DILocation(line: 561, column: 24, scope: !1362, inlinedAt: !1356)
!1365 = !DILocation(line: 561, column: 3, scope: !1359, inlinedAt: !1356)
!1366 = distinct !{!1366, !1367, !1368}
!1367 = !DILocation(line: 561, column: 3, scope: !1359)
!1368 = !DILocation(line: 562, column: 24, scope: !1359)
!1369 = !DILocation(line: 562, column: 11, scope: !1370, inlinedAt: !1356)
!1370 = distinct !DILexicalBlock(scope: !1362, file: !1, line: 562, column: 9)
!1371 = !DILocation(line: 561, column: 36, scope: !1362, inlinedAt: !1356)
!1372 = !DILocation(line: 562, column: 9, scope: !1362, inlinedAt: !1356)
!1373 = !DILocation(line: 571, column: 47, scope: !1329)
!1374 = !{!414, !415, i64 24}
!1375 = !DILocation(line: 571, column: 26, scope: !1329)
!1376 = !DILocation(line: 570, column: 15, scope: !1329)
!1377 = !DILocation(line: 573, column: 7, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1329, file: !1, line: 573, column: 7)
!1379 = !DILocation(line: 573, column: 7, scope: !1329)
!1380 = !DILocation(line: 575, column: 27, scope: !1378)
!1381 = !DILocation(line: 574, column: 5, scope: !1378)
!1382 = !DILocation(line: 577, column: 5, scope: !1378)
!1383 = !DILocation(line: 578, column: 1, scope: !1329)
!1384 = distinct !DISubprogram(name: "getobjname", scope: !1, file: !1, line: 497, type: !1385, isLocal: true, isDefinition: true, scopeLine: 498, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1387)
!1385 = !DISubroutineType(types: !1386)
!1386 = !{!307, !179, !269, !61, !855}
!1387 = !{!1388, !1389, !1390, !1391, !1392, !1395, !1396, !1397, !1400, !1402, !1403, !1405, !1407}
!1388 = !DILocalVariable(name: "L", arg: 1, scope: !1384, file: !1, line: 497, type: !179)
!1389 = !DILocalVariable(name: "ci", arg: 2, scope: !1384, file: !1, line: 497, type: !269)
!1390 = !DILocalVariable(name: "stackpos", arg: 3, scope: !1384, file: !1, line: 497, type: !61)
!1391 = !DILocalVariable(name: "name", arg: 4, scope: !1384, file: !1, line: 498, type: !855)
!1392 = !DILocalVariable(name: "p", scope: !1393, file: !1, line: 500, type: !540)
!1393 = distinct !DILexicalBlock(scope: !1394, file: !1, line: 499, column: 18)
!1394 = distinct !DILexicalBlock(scope: !1384, file: !1, line: 499, column: 7)
!1395 = !DILocalVariable(name: "pc", scope: !1393, file: !1, line: 501, type: !61)
!1396 = !DILocalVariable(name: "i", scope: !1393, file: !1, line: 502, type: !279)
!1397 = !DILocalVariable(name: "g", scope: !1398, file: !1, line: 510, type: !61)
!1398 = distinct !DILexicalBlock(scope: !1399, file: !1, line: 509, column: 26)
!1399 = distinct !DILexicalBlock(scope: !1393, file: !1, line: 508, column: 28)
!1400 = !DILocalVariable(name: "a", scope: !1401, file: !1, line: 516, type: !61)
!1401 = distinct !DILexicalBlock(scope: !1399, file: !1, line: 515, column: 21)
!1402 = !DILocalVariable(name: "b", scope: !1401, file: !1, line: 517, type: !61)
!1403 = !DILocalVariable(name: "k", scope: !1404, file: !1, line: 523, type: !61)
!1404 = distinct !DILexicalBlock(scope: !1399, file: !1, line: 522, column: 25)
!1405 = !DILocalVariable(name: "u", scope: !1406, file: !1, line: 528, type: !61)
!1406 = distinct !DILexicalBlock(scope: !1399, file: !1, line: 527, column: 25)
!1407 = !DILocalVariable(name: "k", scope: !1408, file: !1, line: 533, type: !61)
!1408 = distinct !DILexicalBlock(scope: !1399, file: !1, line: 532, column: 21)
!1409 = !DILocation(line: 497, column: 43, scope: !1384)
!1410 = !DILocation(line: 497, column: 56, scope: !1384)
!1411 = !DILocation(line: 497, column: 64, scope: !1384)
!1412 = !DILocation(line: 498, column: 45, scope: !1384)
!1413 = !DILocation(line: 499, column: 7, scope: !1394)
!1414 = !DILocation(line: 499, column: 7, scope: !1384)
!1415 = !DILocation(line: 500, column: 31, scope: !1393)
!1416 = !DILocation(line: 500, column: 12, scope: !1393)
!1417 = !DILocation(line: 36, column: 34, scope: !563, inlinedAt: !1418)
!1418 = distinct !DILocation(line: 501, column: 14, scope: !1393)
!1419 = !DILocation(line: 36, column: 47, scope: !563, inlinedAt: !1418)
!1420 = !DILocation(line: 38, column: 16, scope: !572, inlinedAt: !1418)
!1421 = !DILocation(line: 38, column: 10, scope: !572, inlinedAt: !1418)
!1422 = !DILocation(line: 38, column: 7, scope: !563, inlinedAt: !1418)
!1423 = !DILocation(line: 37, column: 7, scope: !563, inlinedAt: !1418)
!1424 = !DILocation(line: 40, column: 10, scope: !563, inlinedAt: !1418)
!1425 = !DILocation(line: 37, column: 8, scope: !579, inlinedAt: !1418)
!1426 = !DILocation(line: 39, column: 22, scope: !572, inlinedAt: !1418)
!1427 = !DILocation(line: 39, column: 17, scope: !572, inlinedAt: !1418)
!1428 = !DILocation(line: 39, column: 5, scope: !572, inlinedAt: !1418)
!1429 = !DILocation(line: 501, column: 9, scope: !1393)
!1430 = !DILocation(line: 503, column: 42, scope: !1393)
!1431 = !DILocation(line: 503, column: 13, scope: !1393)
!1432 = !DILocation(line: 503, column: 11, scope: !1393)
!1433 = !DILocation(line: 504, column: 9, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1393, file: !1, line: 504, column: 9)
!1435 = !DILocation(line: 504, column: 9, scope: !1393)
!1436 = !DILocation(line: 506, column: 9, scope: !1393)
!1437 = !DILocation(line: 502, column: 17, scope: !1393)
!1438 = !DILocation(line: 508, column: 5, scope: !1393)
!1439 = !DILocation(line: 510, column: 17, scope: !1398)
!1440 = !DILocation(line: 510, column: 13, scope: !1398)
!1441 = !DILocation(line: 512, column: 17, scope: !1398)
!1442 = !DILocation(line: 512, column: 15, scope: !1398)
!1443 = !DILocation(line: 516, column: 17, scope: !1401)
!1444 = !DILocation(line: 516, column: 13, scope: !1401)
!1445 = !DILocation(line: 517, column: 17, scope: !1401)
!1446 = !DILocation(line: 517, column: 13, scope: !1401)
!1447 = !DILocation(line: 518, column: 15, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1401, file: !1, line: 518, column: 13)
!1449 = !DILocation(line: 518, column: 13, scope: !1401)
!1450 = !DILocalVariable(name: "p", arg: 1, scope: !1451, file: !1, line: 489, type: !540)
!1451 = distinct !DISubprogram(name: "kname", scope: !1, file: !1, line: 489, type: !1452, isLocal: true, isDefinition: true, scopeLine: 489, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1454)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{!307, !540, !61}
!1454 = !{!1450, !1455}
!1455 = !DILocalVariable(name: "c", arg: 2, scope: !1451, file: !1, line: 489, type: !61)
!1456 = !DILocation(line: 489, column: 34, scope: !1451, inlinedAt: !1457)
!1457 = distinct !DILocation(line: 524, column: 17, scope: !1404)
!1458 = !DILocation(line: 490, column: 7, scope: !1459, inlinedAt: !1457)
!1459 = distinct !DILexicalBlock(scope: !1451, file: !1, line: 490, column: 7)
!1460 = !DILocation(line: 490, column: 14, scope: !1459, inlinedAt: !1457)
!1461 = !DILocation(line: 523, column: 17, scope: !1404)
!1462 = !DILocation(line: 523, column: 13, scope: !1404)
!1463 = !DILocation(line: 489, column: 41, scope: !1451, inlinedAt: !1457)
!1464 = !DILocation(line: 490, column: 17, scope: !1459, inlinedAt: !1457)
!1465 = !DILocation(line: 490, column: 7, scope: !1451, inlinedAt: !1457)
!1466 = !DILocation(line: 491, column: 12, scope: !1459, inlinedAt: !1457)
!1467 = !DILocation(line: 491, column: 5, scope: !1459, inlinedAt: !1457)
!1468 = !DILocation(line: 0, scope: !1459, inlinedAt: !1457)
!1469 = !DILocation(line: 524, column: 15, scope: !1404)
!1470 = !DILocation(line: 529, column: 20, scope: !1406)
!1471 = !{!586, !415, i64 56}
!1472 = !DILocation(line: 529, column: 17, scope: !1406)
!1473 = !DILocation(line: 528, column: 17, scope: !1406)
!1474 = !DILocation(line: 528, column: 13, scope: !1406)
!1475 = !DILocation(line: 529, column: 31, scope: !1406)
!1476 = !DILocation(line: 529, column: 15, scope: !1406)
!1477 = !DILocation(line: 489, column: 34, scope: !1451, inlinedAt: !1478)
!1478 = distinct !DILocation(line: 534, column: 17, scope: !1408)
!1479 = !DILocation(line: 490, column: 7, scope: !1459, inlinedAt: !1478)
!1480 = !DILocation(line: 490, column: 14, scope: !1459, inlinedAt: !1478)
!1481 = !DILocation(line: 533, column: 17, scope: !1408)
!1482 = !DILocation(line: 533, column: 13, scope: !1408)
!1483 = !DILocation(line: 489, column: 41, scope: !1451, inlinedAt: !1478)
!1484 = !DILocation(line: 490, column: 17, scope: !1459, inlinedAt: !1478)
!1485 = !DILocation(line: 490, column: 7, scope: !1451, inlinedAt: !1478)
!1486 = !DILocation(line: 491, column: 12, scope: !1459, inlinedAt: !1478)
!1487 = !DILocation(line: 491, column: 5, scope: !1459, inlinedAt: !1478)
!1488 = !DILocation(line: 0, scope: !1459, inlinedAt: !1478)
!1489 = !DILocation(line: 534, column: 15, scope: !1408)
!1490 = !DILocation(line: 0, scope: !1434)
!1491 = !DILocation(line: 541, column: 1, scope: !1384)
!1492 = distinct !DISubprogram(name: "luaG_runerror", scope: !1, file: !1, line: 631, type: !1493, isLocal: false, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1495)
!1493 = !DISubroutineType(types: !1494)
!1494 = !{null, !179, !307, null}
!1495 = !{!1496, !1497, !1498}
!1496 = !DILocalVariable(name: "L", arg: 1, scope: !1492, file: !1, line: 631, type: !179)
!1497 = !DILocalVariable(name: "fmt", arg: 2, scope: !1492, file: !1, line: 631, type: !307)
!1498 = !DILocalVariable(name: "argp", scope: !1492, file: !1, line: 632, type: !1499)
!1499 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1500, line: 32, baseType: !1501)
!1500 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!1501 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 632, baseType: !1502)
!1502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1503, size: 192, elements: !333)
!1503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 632, size: 192, elements: !1504)
!1504 = !{!1505, !1506, !1507, !1508}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1503, file: !1, line: 632, baseType: !5, size: 32)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1503, file: !1, line: 632, baseType: !5, size: 32, offset: 32)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1503, file: !1, line: 632, baseType: !57, size: 64, offset: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1503, file: !1, line: 632, baseType: !57, size: 64, offset: 128)
!1509 = !DILocalVariable(name: "buff", scope: !1510, file: !1, line: 610, type: !317)
!1510 = distinct !DILexicalBlock(scope: !1511, file: !1, line: 609, column: 18)
!1511 = distinct !DILexicalBlock(scope: !1512, file: !1, line: 609, column: 7)
!1512 = distinct !DISubprogram(name: "addinfo", scope: !1, file: !1, line: 607, type: !1513, isLocal: true, isDefinition: true, scopeLine: 607, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1515)
!1513 = !DISubroutineType(types: !1514)
!1514 = !{null, !179, !307}
!1515 = !{!1516, !1517, !1518, !1509, !1519}
!1516 = !DILocalVariable(name: "L", arg: 1, scope: !1512, file: !1, line: 607, type: !179)
!1517 = !DILocalVariable(name: "msg", arg: 2, scope: !1512, file: !1, line: 607, type: !307)
!1518 = !DILocalVariable(name: "ci", scope: !1512, file: !1, line: 608, type: !269)
!1519 = !DILocalVariable(name: "line", scope: !1510, file: !1, line: 611, type: !61)
!1520 = !DILocation(line: 610, column: 10, scope: !1510, inlinedAt: !1521)
!1521 = distinct !DILocation(line: 634, column: 3, scope: !1492)
!1522 = !DILocation(line: 631, column: 32, scope: !1492)
!1523 = !DILocation(line: 631, column: 47, scope: !1492)
!1524 = !DILocation(line: 632, column: 3, scope: !1492)
!1525 = !DILocation(line: 632, column: 11, scope: !1492)
!1526 = !DILocation(line: 633, column: 3, scope: !1492)
!1527 = !DILocation(line: 634, column: 14, scope: !1492)
!1528 = !DILocation(line: 607, column: 33, scope: !1512, inlinedAt: !1521)
!1529 = !DILocation(line: 607, column: 48, scope: !1512, inlinedAt: !1521)
!1530 = !DILocation(line: 608, column: 21, scope: !1512, inlinedAt: !1521)
!1531 = !DILocation(line: 608, column: 13, scope: !1512, inlinedAt: !1521)
!1532 = !DILocation(line: 609, column: 7, scope: !1511, inlinedAt: !1521)
!1533 = !DILocation(line: 609, column: 7, scope: !1512, inlinedAt: !1521)
!1534 = !DILocation(line: 610, column: 5, scope: !1510, inlinedAt: !1521)
!1535 = !DILocation(line: 44, column: 36, scope: !816, inlinedAt: !1536)
!1536 = distinct !DILocation(line: 611, column: 16, scope: !1510, inlinedAt: !1521)
!1537 = !DILocation(line: 44, column: 49, scope: !816, inlinedAt: !1536)
!1538 = !DILocation(line: 36, column: 34, scope: !563, inlinedAt: !1539)
!1539 = distinct !DILocation(line: 45, column: 12, scope: !816, inlinedAt: !1536)
!1540 = !DILocation(line: 36, column: 47, scope: !563, inlinedAt: !1539)
!1541 = !DILocation(line: 37, column: 8, scope: !579, inlinedAt: !1539)
!1542 = !DILocation(line: 39, column: 22, scope: !572, inlinedAt: !1539)
!1543 = !DILocation(line: 39, column: 9, scope: !572, inlinedAt: !1539)
!1544 = !DILocation(line: 39, column: 17, scope: !572, inlinedAt: !1539)
!1545 = !DILocation(line: 40, column: 10, scope: !563, inlinedAt: !1539)
!1546 = !DILocation(line: 45, column: 7, scope: !816, inlinedAt: !1536)
!1547 = !DILocation(line: 46, column: 10, scope: !837, inlinedAt: !1536)
!1548 = !DILocation(line: 46, column: 7, scope: !816, inlinedAt: !1536)
!1549 = !DILocation(line: 49, column: 12, scope: !837, inlinedAt: !1536)
!1550 = !DILocation(line: 612, column: 24, scope: !1510, inlinedAt: !1521)
!1551 = !DILocation(line: 612, column: 5, scope: !1510, inlinedAt: !1521)
!1552 = !DILocation(line: 613, column: 5, scope: !1510, inlinedAt: !1521)
!1553 = !DILocation(line: 614, column: 3, scope: !1511, inlinedAt: !1521)
!1554 = !DILocation(line: 614, column: 3, scope: !1510, inlinedAt: !1521)
!1555 = !DILocation(line: 635, column: 3, scope: !1492)
!1556 = !DILocation(line: 636, column: 3, scope: !1492)
!1557 = !DILocation(line: 637, column: 1, scope: !1492)
!1558 = distinct !DISubprogram(name: "luaG_concaterror", scope: !1, file: !1, line: 581, type: !1559, isLocal: false, isDefinition: true, scopeLine: 581, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1561)
!1559 = !DISubroutineType(types: !1560)
!1560 = !{null, !179, !188, !188}
!1561 = !{!1562, !1563, !1564}
!1562 = !DILocalVariable(name: "L", arg: 1, scope: !1558, file: !1, line: 581, type: !179)
!1563 = !DILocalVariable(name: "p1", arg: 2, scope: !1558, file: !1, line: 581, type: !188)
!1564 = !DILocalVariable(name: "p2", arg: 3, scope: !1558, file: !1, line: 581, type: !188)
!1565 = !DILocation(line: 581, column: 35, scope: !1558)
!1566 = !DILocation(line: 581, column: 44, scope: !1558)
!1567 = !DILocation(line: 581, column: 54, scope: !1558)
!1568 = !DILocation(line: 582, column: 7, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1558, file: !1, line: 582, column: 7)
!1570 = !DILocation(line: 582, column: 22, scope: !1569)
!1571 = !DILocation(line: 567, column: 33, scope: !1329, inlinedAt: !1572)
!1572 = distinct !DILocation(line: 584, column: 3, scope: !1558)
!1573 = !DILocation(line: 567, column: 50, scope: !1329, inlinedAt: !1572)
!1574 = !DILocation(line: 567, column: 65, scope: !1329, inlinedAt: !1572)
!1575 = !DILocation(line: 568, column: 3, scope: !1329, inlinedAt: !1572)
!1576 = !DILocation(line: 568, column: 15, scope: !1329, inlinedAt: !1572)
!1577 = !DILocation(line: 569, column: 34, scope: !1329, inlinedAt: !1572)
!1578 = !DILocation(line: 569, column: 19, scope: !1329, inlinedAt: !1572)
!1579 = !DILocation(line: 569, column: 15, scope: !1329, inlinedAt: !1572)
!1580 = !DILocation(line: 570, column: 36, scope: !1329, inlinedAt: !1572)
!1581 = !DILocation(line: 559, column: 33, scope: !1349, inlinedAt: !1582)
!1582 = distinct !DILocation(line: 570, column: 23, scope: !1329, inlinedAt: !1572)
!1583 = !DILocation(line: 559, column: 51, scope: !1349, inlinedAt: !1582)
!1584 = !DILocation(line: 561, column: 16, scope: !1359, inlinedAt: !1582)
!1585 = !DILocation(line: 560, column: 9, scope: !1349, inlinedAt: !1582)
!1586 = !DILocation(line: 561, column: 30, scope: !1362, inlinedAt: !1582)
!1587 = !DILocation(line: 561, column: 24, scope: !1362, inlinedAt: !1582)
!1588 = !DILocation(line: 561, column: 3, scope: !1359, inlinedAt: !1582)
!1589 = !DILocation(line: 562, column: 11, scope: !1370, inlinedAt: !1582)
!1590 = !DILocation(line: 561, column: 36, scope: !1362, inlinedAt: !1582)
!1591 = !DILocation(line: 562, column: 9, scope: !1362, inlinedAt: !1582)
!1592 = !DILocation(line: 571, column: 47, scope: !1329, inlinedAt: !1572)
!1593 = !DILocation(line: 571, column: 26, scope: !1329, inlinedAt: !1572)
!1594 = !DILocation(line: 570, column: 15, scope: !1329, inlinedAt: !1572)
!1595 = !DILocation(line: 573, column: 7, scope: !1378, inlinedAt: !1572)
!1596 = !DILocation(line: 573, column: 7, scope: !1329, inlinedAt: !1572)
!1597 = !DILocation(line: 575, column: 27, scope: !1378, inlinedAt: !1572)
!1598 = !DILocation(line: 574, column: 5, scope: !1378, inlinedAt: !1572)
!1599 = !DILocation(line: 577, column: 5, scope: !1378, inlinedAt: !1572)
!1600 = !DILocation(line: 578, column: 1, scope: !1329, inlinedAt: !1572)
!1601 = !DILocation(line: 585, column: 1, scope: !1558)
!1602 = distinct !DISubprogram(name: "luaG_aritherror", scope: !1, file: !1, line: 588, type: !1603, isLocal: false, isDefinition: true, scopeLine: 588, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1605)
!1603 = !DISubroutineType(types: !1604)
!1604 = !{null, !179, !622, !622}
!1605 = !{!1606, !1607, !1608, !1609}
!1606 = !DILocalVariable(name: "L", arg: 1, scope: !1602, file: !1, line: 588, type: !179)
!1607 = !DILocalVariable(name: "p1", arg: 2, scope: !1602, file: !1, line: 588, type: !622)
!1608 = !DILocalVariable(name: "p2", arg: 3, scope: !1602, file: !1, line: 588, type: !622)
!1609 = !DILocalVariable(name: "temp", scope: !1602, file: !1, line: 589, type: !123)
!1610 = !DILocation(line: 588, column: 34, scope: !1602)
!1611 = !DILocation(line: 588, column: 51, scope: !1602)
!1612 = !DILocation(line: 588, column: 69, scope: !1602)
!1613 = !DILocation(line: 589, column: 3, scope: !1602)
!1614 = !DILocation(line: 589, column: 10, scope: !1602)
!1615 = !DILocation(line: 590, column: 7, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1602, file: !1, line: 590, column: 7)
!1617 = !DILocation(line: 590, column: 32, scope: !1616)
!1618 = !DILocation(line: 590, column: 7, scope: !1602)
!1619 = !DILocation(line: 567, column: 33, scope: !1329, inlinedAt: !1620)
!1620 = distinct !DILocation(line: 592, column: 3, scope: !1602)
!1621 = !DILocation(line: 567, column: 50, scope: !1329, inlinedAt: !1620)
!1622 = !DILocation(line: 567, column: 65, scope: !1329, inlinedAt: !1620)
!1623 = !DILocation(line: 568, column: 3, scope: !1329, inlinedAt: !1620)
!1624 = !DILocation(line: 568, column: 15, scope: !1329, inlinedAt: !1620)
!1625 = !DILocation(line: 569, column: 34, scope: !1329, inlinedAt: !1620)
!1626 = !DILocation(line: 569, column: 19, scope: !1329, inlinedAt: !1620)
!1627 = !DILocation(line: 569, column: 15, scope: !1329, inlinedAt: !1620)
!1628 = !DILocation(line: 570, column: 36, scope: !1329, inlinedAt: !1620)
!1629 = !DILocation(line: 559, column: 33, scope: !1349, inlinedAt: !1630)
!1630 = distinct !DILocation(line: 570, column: 23, scope: !1329, inlinedAt: !1620)
!1631 = !DILocation(line: 559, column: 51, scope: !1349, inlinedAt: !1630)
!1632 = !DILocation(line: 561, column: 16, scope: !1359, inlinedAt: !1630)
!1633 = !DILocation(line: 560, column: 9, scope: !1349, inlinedAt: !1630)
!1634 = !DILocation(line: 561, column: 30, scope: !1362, inlinedAt: !1630)
!1635 = !DILocation(line: 561, column: 24, scope: !1362, inlinedAt: !1630)
!1636 = !DILocation(line: 561, column: 3, scope: !1359, inlinedAt: !1630)
!1637 = !DILocation(line: 562, column: 11, scope: !1370, inlinedAt: !1630)
!1638 = !DILocation(line: 561, column: 36, scope: !1362, inlinedAt: !1630)
!1639 = !DILocation(line: 562, column: 9, scope: !1362, inlinedAt: !1630)
!1640 = !DILocation(line: 571, column: 47, scope: !1329, inlinedAt: !1620)
!1641 = !DILocation(line: 571, column: 26, scope: !1329, inlinedAt: !1620)
!1642 = !DILocation(line: 570, column: 15, scope: !1329, inlinedAt: !1620)
!1643 = !DILocation(line: 573, column: 7, scope: !1378, inlinedAt: !1620)
!1644 = !DILocation(line: 573, column: 7, scope: !1329, inlinedAt: !1620)
!1645 = !DILocation(line: 575, column: 27, scope: !1378, inlinedAt: !1620)
!1646 = !DILocation(line: 574, column: 5, scope: !1378, inlinedAt: !1620)
!1647 = !DILocation(line: 577, column: 5, scope: !1378, inlinedAt: !1620)
!1648 = !DILocation(line: 578, column: 1, scope: !1329, inlinedAt: !1620)
!1649 = !DILocation(line: 593, column: 1, scope: !1602)
!1650 = distinct !DISubprogram(name: "luaG_ordererror", scope: !1, file: !1, line: 596, type: !1651, isLocal: false, isDefinition: true, scopeLine: 596, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1653)
!1651 = !DISubroutineType(types: !1652)
!1652 = !{!61, !179, !622, !622}
!1653 = !{!1654, !1655, !1656, !1657, !1658}
!1654 = !DILocalVariable(name: "L", arg: 1, scope: !1650, file: !1, line: 596, type: !179)
!1655 = !DILocalVariable(name: "p1", arg: 2, scope: !1650, file: !1, line: 596, type: !622)
!1656 = !DILocalVariable(name: "p2", arg: 3, scope: !1650, file: !1, line: 596, type: !622)
!1657 = !DILocalVariable(name: "t1", scope: !1650, file: !1, line: 597, type: !307)
!1658 = !DILocalVariable(name: "t2", scope: !1650, file: !1, line: 598, type: !307)
!1659 = !DILocation(line: 596, column: 33, scope: !1650)
!1660 = !DILocation(line: 596, column: 50, scope: !1650)
!1661 = !DILocation(line: 596, column: 68, scope: !1650)
!1662 = !DILocation(line: 597, column: 35, scope: !1650)
!1663 = !DILocation(line: 597, column: 20, scope: !1650)
!1664 = !DILocation(line: 597, column: 15, scope: !1650)
!1665 = !DILocation(line: 598, column: 35, scope: !1650)
!1666 = !DILocation(line: 598, column: 20, scope: !1650)
!1667 = !DILocation(line: 598, column: 15, scope: !1650)
!1668 = !DILocation(line: 599, column: 7, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1650, file: !1, line: 599, column: 7)
!1670 = !DILocation(line: 599, column: 16, scope: !1669)
!1671 = !DILocation(line: 599, column: 13, scope: !1669)
!1672 = !DILocation(line: 599, column: 7, scope: !1650)
!1673 = !DILocation(line: 600, column: 5, scope: !1669)
!1674 = !DILocation(line: 602, column: 5, scope: !1669)
!1675 = !DILocation(line: 603, column: 3, scope: !1650)
!1676 = distinct !DISubprogram(name: "luaG_errormsg", scope: !1, file: !1, line: 618, type: !1677, isLocal: false, isDefinition: true, scopeLine: 618, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1679)
!1677 = !DISubroutineType(types: !1678)
!1678 = !{null, !179}
!1679 = !{!1680, !1681, !1684, !1686, !1687, !1689}
!1680 = !DILocalVariable(name: "L", arg: 1, scope: !1676, file: !1, line: 618, type: !179)
!1681 = !DILocalVariable(name: "errfunc", scope: !1682, file: !1, line: 620, type: !188)
!1682 = distinct !DILexicalBlock(scope: !1683, file: !1, line: 619, column: 24)
!1683 = distinct !DILexicalBlock(scope: !1676, file: !1, line: 619, column: 7)
!1684 = !DILocalVariable(name: "o2", scope: !1685, file: !1, line: 622, type: !622)
!1685 = distinct !DILexicalBlock(scope: !1682, file: !1, line: 622, column: 5)
!1686 = !DILocalVariable(name: "o1", scope: !1685, file: !1, line: 622, type: !122)
!1687 = !DILocalVariable(name: "o2", scope: !1688, file: !1, line: 623, type: !622)
!1688 = distinct !DILexicalBlock(scope: !1682, file: !1, line: 623, column: 5)
!1689 = !DILocalVariable(name: "o1", scope: !1688, file: !1, line: 623, type: !122)
!1690 = !DILocation(line: 618, column: 32, scope: !1676)
!1691 = !DILocation(line: 619, column: 10, scope: !1683)
!1692 = !{!414, !421, i64 176}
!1693 = !DILocation(line: 619, column: 18, scope: !1683)
!1694 = !DILocation(line: 619, column: 7, scope: !1676)
!1695 = !DILocation(line: 620, column: 21, scope: !1682)
!1696 = !{!414, !415, i64 64}
!1697 = !DILocation(line: 620, column: 11, scope: !1682)
!1698 = !DILocation(line: 621, column: 10, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1682, file: !1, line: 621, column: 9)
!1700 = !DILocation(line: 621, column: 9, scope: !1682)
!1701 = !DILocation(line: 621, column: 33, scope: !1699)
!1702 = !DILocation(line: 622, column: 5, scope: !1685)
!1703 = !DILocation(line: 623, column: 5, scope: !1688)
!1704 = !DILocation(line: 624, column: 5, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1706, file: !1, line: 624, column: 5)
!1706 = distinct !DILexicalBlock(scope: !1682, file: !1, line: 624, column: 5)
!1707 = !DILocation(line: 624, column: 5, scope: !1706)
!1708 = !DILocation(line: 625, column: 25, scope: !1682)
!1709 = !DILocation(line: 625, column: 5, scope: !1682)
!1710 = !DILocation(line: 626, column: 3, scope: !1682)
!1711 = !DILocation(line: 627, column: 3, scope: !1676)
!1712 = !DILocation(line: 628, column: 1, scope: !1676)
