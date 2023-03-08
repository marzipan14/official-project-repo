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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !410
  br i1 %7, label %8, label %9, !dbg !410

; <label>:8:                                      ; preds = %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !411
  br label %9, !dbg !411

; <label>:9:                                      ; preds = %4, %8
  %10 = phi i32 [ 0, %8 ], [ %2, %4 ]
  %11 = phi void (%struct.lua_State*, %struct.lua_Debug*)* [ null, %8 ], [ %1, %4 ]
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 21, !dbg !413
  store void (%struct.lua_State*, %struct.lua_Debug*)* %11, void (%struct.lua_State*, %struct.lua_Debug*)** %12, align 8, !dbg !414, !tbaa !415
  %13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 19, !dbg !424
  store i32 %3, i32* %13, align 8, !dbg !425, !tbaa !426
  %14 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 20, !dbg !427
  store i32 %3, i32* %14, align 4, !dbg !427, !tbaa !428
  %15 = trunc i32 %10 to i8, !dbg !429
  %16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 17, !dbg !430
  store i8 %15, i8* %16, align 4, !dbg !431, !tbaa !432
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !433
  ret i32 1, !dbg !433
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: noredzone nounwind
define dso_local void (%struct.lua_State*, %struct.lua_Debug*)* @lua_gethook(%struct.lua_State* nocapture readonly) local_unnamed_addr #0 !dbg !434 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 21, !dbg !440
  %3 = load void (%struct.lua_State*, %struct.lua_Debug*)*, void (%struct.lua_State*, %struct.lua_Debug*)** %2, align 8, !dbg !440, !tbaa !415
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !441
  ret void (%struct.lua_State*, %struct.lua_Debug*)* %3, !dbg !441
}

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_gethookmask(%struct.lua_State* nocapture readonly) local_unnamed_addr #0 !dbg !442 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 17, !dbg !446
  %3 = load i8, i8* %2, align 4, !dbg !446, !tbaa !432
  %4 = zext i8 %3 to i32, !dbg !447
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !448
  ret i32 %4, !dbg !448
}

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_gethookcount(%struct.lua_State* nocapture readonly) local_unnamed_addr #0 !dbg !449 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 19, !dbg !453
  %3 = load i32, i32* %2, align 8, !dbg !453, !tbaa !426
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !454
  ret i32 %3, !dbg !454
}

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_getstack(%struct.lua_State* nocapture readonly, i32, %struct.lua_Debug* nocapture) local_unnamed_addr #0 !dbg !455 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !467
  %5 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8, !dbg !467, !tbaa !469
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !471
  %6 = icmp sgt i32 %1, 0, !dbg !472
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !474
  br i1 %6, label %7, label %32, !dbg !474

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 12
  %9 = load %struct.CallInfo*, %struct.CallInfo** %8, align 8, !tbaa !475
  br label %10, !dbg !474

; <label>:10:                                     ; preds = %7, %28
  %11 = phi %struct.CallInfo* [ %5, %7 ], [ %30, %28 ]
  %12 = phi i32 [ %1, %7 ], [ %29, %28 ]
  %13 = icmp ugt %struct.CallInfo* %11, %9, !dbg !476
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !477
  br i1 %13, label %15, label %14, !dbg !477

; <label>:14:                                     ; preds = %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !478
  br label %49, !dbg !478

; <label>:15:                                     ; preds = %10
  %16 = add nsw i32 %12, -1, !dbg !480
  %17 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %11, i64 0, i32 1, !dbg !482
  %18 = bitcast %struct.lua_TValue** %17 to %struct.CClosure***, !dbg !482
  %19 = load %struct.CClosure**, %struct.CClosure*** %18, align 8, !dbg !482, !tbaa !484
  %20 = load %struct.CClosure*, %struct.CClosure** %19, align 8, !dbg !482, !tbaa !486
  %21 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %20, i64 0, i32 3, !dbg !482
  %22 = load i8, i8* %21, align 2, !dbg !482, !tbaa !486
  %23 = icmp eq i8 %22, 0, !dbg !482
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !487
  br i1 %23, label %24, label %28, !dbg !487

; <label>:24:                                     ; preds = %15
  %25 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %11, i64 0, i32 5, !dbg !488
  %26 = load i32, i32* %25, align 4, !dbg !488, !tbaa !489
  %27 = sub nsw i32 %16, %26, !dbg !490
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !491
  br label %28, !dbg !491

; <label>:28:                                     ; preds = %15, %24
  %29 = phi i32 [ %16, %15 ], [ %27, %24 ], !dbg !492
  %30 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %11, i64 -1, !dbg !493
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !494
  %31 = icmp sgt i32 %29, 0, !dbg !472
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !474
  br i1 %31, label %10, label %32, !dbg !474, !llvm.loop !495

; <label>:32:                                     ; preds = %28, %3
  %33 = phi i32 [ %1, %3 ], [ %29, %28 ]
  %34 = phi %struct.CallInfo* [ %5, %3 ], [ %30, %28 ], !dbg !497
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !477
  %35 = icmp eq i32 %33, 0, !dbg !498
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !478
  br i1 %35, label %36, label %47, !dbg !478

; <label>:36:                                     ; preds = %32
  %37 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 12, !dbg !499
  %38 = load %struct.CallInfo*, %struct.CallInfo** %37, align 8, !dbg !499, !tbaa !475
  %39 = icmp ugt %struct.CallInfo* %34, %38, !dbg !500
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !501
  br i1 %39, label %40, label %49, !dbg !501

; <label>:40:                                     ; preds = %36
  %41 = ptrtoint %struct.CallInfo* %34 to i64, !dbg !503
  %42 = ptrtoint %struct.CallInfo* %38 to i64, !dbg !503
  %43 = sub i64 %41, %42, !dbg !503
  %44 = sdiv exact i64 %43, 40, !dbg !503
  %45 = trunc i64 %44 to i32, !dbg !503
  %46 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 10, !dbg !505
  store i32 %45, i32* %46, align 4, !dbg !506, !tbaa !507
  br label %50, !dbg !509

; <label>:47:                                     ; preds = %32
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !510
  %48 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 10, !dbg !511
  store i32 0, i32* %48, align 4, !dbg !514, !tbaa !507
  br label %50, !dbg !515

; <label>:49:                                     ; preds = %14, %36
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !510
  br label %50

; <label>:50:                                     ; preds = %47, %49, %40
  %51 = phi i32 [ 1, %40 ], [ 1, %47 ], [ 0, %49 ], !dbg !516
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !517
  ret i32 %51, !dbg !517
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local i8* @lua_getlocal(%struct.lua_State*, %struct.lua_Debug* nocapture readonly, i32) local_unnamed_addr #0 !dbg !518 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 12, !dbg !532
  %5 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8, !dbg !532, !tbaa !475
  %6 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %1, i64 0, i32 10, !dbg !533
  %7 = load i32, i32* %6, align 4, !dbg !533, !tbaa !507
  %8 = sext i32 %7 to i64, !dbg !534
  %9 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5, i64 %8, !dbg !534
  %10 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5, i64 %8, i32 1, !dbg !561
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !561, !tbaa !484
  %12 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %11, i64 0, i32 1, !dbg !561
  %13 = load i32, i32* %12, align 8, !dbg !561, !tbaa !562
  %14 = icmp eq i32 %13, 6, !dbg !561
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !561
  br i1 %14, label %15, label %21, !dbg !561

; <label>:15:                                     ; preds = %3
  %16 = bitcast %struct.lua_TValue* %11 to %union.Closure**, !dbg !561
  %17 = load %union.Closure*, %union.Closure** %16, align 8, !dbg !561, !tbaa !486
  %18 = getelementptr inbounds %union.Closure, %union.Closure* %17, i64 0, i32 0, i32 3, !dbg !561
  %19 = load i8, i8* %18, align 2, !dbg !561, !tbaa !486
  %20 = icmp eq i8 %19, 0, !dbg !561
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !561
  br i1 %20, label %22, label %21, !dbg !561

; <label>:21:                                     ; preds = %15, %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !563
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !565
  br label %61, !dbg !565

; <label>:22:                                     ; preds = %15
  %23 = getelementptr inbounds %union.Closure, %union.Closure* %17, i64 0, i32 0, i32 7, !dbg !566
  %24 = bitcast i32 (%struct.lua_State*)** %23 to %struct.Proto**, !dbg !566
  %25 = load %struct.Proto*, %struct.Proto** %24, align 8, !dbg !566, !tbaa !486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !561
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !563
  %26 = icmp eq %struct.Proto* %25, null, !dbg !567
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !565
  br i1 %26, label %61, label %27, !dbg !565

; <label>:27:                                     ; preds = %22
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !577
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !579
  %28 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !580
  %29 = load %struct.CallInfo*, %struct.CallInfo** %28, align 8, !dbg !580, !tbaa !469
  %30 = icmp eq %struct.CallInfo* %29, %9, !dbg !582
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !583
  br i1 %30, label %36, label %31, !dbg !583

; <label>:31:                                     ; preds = %27
  %32 = bitcast %union.Closure* %17 to %struct.LClosure*, !dbg !579
  %33 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5, i64 %8, i32 3
  %34 = bitcast i32** %33 to i64*
  %35 = load i64, i64* %34, align 8, !dbg !584, !tbaa !585
  br label %44, !dbg !583

; <label>:36:                                     ; preds = %27
  %37 = bitcast %struct.lua_TValue* %11 to %struct.LClosure**, !dbg !577
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8, !dbg !586
  %39 = bitcast i32** %38 to i64*, !dbg !586
  %40 = load i64, i64* %39, align 8, !dbg !586, !tbaa !587
  %41 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5, i64 %8, i32 3, !dbg !588
  %42 = bitcast i32** %41 to i64*, !dbg !589
  store i64 %40, i64* %42, align 8, !dbg !589, !tbaa !585
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !590
  %43 = load %struct.LClosure*, %struct.LClosure** %37, align 8, !dbg !584, !tbaa !486
  br label %44, !dbg !590

; <label>:44:                                     ; preds = %31, %36
  %45 = phi %struct.LClosure* [ %32, %31 ], [ %43, %36 ], !dbg !584
  %46 = phi i64 [ %35, %31 ], [ %40, %36 ], !dbg !584
  %47 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %45, i64 0, i32 7, !dbg !584
  %48 = load %struct.Proto*, %struct.Proto** %47, align 8, !dbg !584, !tbaa !486
  %49 = getelementptr inbounds %struct.Proto, %struct.Proto* %48, i64 0, i32 4, !dbg !584
  %50 = bitcast i32** %49 to i64*, !dbg !584
  %51 = load i64, i64* %50, align 8, !dbg !584, !tbaa !591
  %52 = sub i64 %46, %51, !dbg !584
  %53 = lshr exact i64 %52, 2, !dbg !584
  %54 = trunc i64 %53 to i32, !dbg !584
  %55 = add nsw i32 %54, -1, !dbg !584
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !593
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !594
  %56 = tail call i8* @luaF_getlocalname(%struct.Proto* nonnull %25, i32 %2, i32 %55) #5, !dbg !595
  %57 = icmp eq i8* %56, null, !dbg !597
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !598
  br i1 %57, label %61, label %58, !dbg !598

; <label>:58:                                     ; preds = %44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !599
  %59 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %9, i64 0, i32 0
  %60 = load %struct.lua_TValue*, %struct.lua_TValue** %59, align 8, !dbg !600, !tbaa !602
  br label %81, !dbg !599

; <label>:61:                                     ; preds = %21, %44, %22
  %62 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !603
  %63 = load %struct.CallInfo*, %struct.CallInfo** %62, align 8, !dbg !603, !tbaa !469
  %64 = icmp eq %struct.CallInfo* %63, %9, !dbg !604
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !605
  %65 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %9, i64 1, i32 1, !dbg !606
  %66 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !607
  %67 = select i1 %64, %struct.lua_TValue** %66, %struct.lua_TValue** %65, !dbg !605
  %68 = bitcast %struct.lua_TValue** %67 to i64*, !dbg !608
  %69 = load i64, i64* %68, align 8, !dbg !608, !tbaa !609
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !605
  %70 = bitcast %struct.CallInfo* %9 to i64*, !dbg !611
  %71 = load i64, i64* %70, align 8, !dbg !611, !tbaa !602
  %72 = sub i64 %69, %71, !dbg !613
  %73 = ashr exact i64 %72, 4, !dbg !613
  %74 = sext i32 %2 to i64, !dbg !614
  %75 = icmp sge i64 %73, %74, !dbg !615
  %76 = icmp sgt i32 %2, 0, !dbg !616
  %77 = and i1 %76, %75, !dbg !617
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !617
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !618
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br i1 %77, label %78, label %80

; <label>:78:                                     ; preds = %61
  %79 = inttoptr i64 %71 to %struct.lua_TValue*
  br label %81

; <label>:80:                                     ; preds = %61
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !619
  br label %87

; <label>:81:                                     ; preds = %78, %58
  %82 = phi %struct.lua_TValue* [ %60, %58 ], [ %79, %78 ], !dbg !600
  %83 = phi i8* [ %56, %58 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), %78 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !619
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !621
  %84 = add nsw i32 %2, -1, !dbg !622
  %85 = sext i32 %84 to i64, !dbg !623
  %86 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %82, i64 %85, !dbg !623
  tail call void @luaA_pushobject(%struct.lua_State* nonnull %0, %struct.lua_TValue* %86) #5, !dbg !624
  br label %87, !dbg !624

; <label>:87:                                     ; preds = %80, %81
  %88 = phi i8* [ null, %80 ], [ %83, %81 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !625
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !626
  ret i8* %88, !dbg !626
}

; Function Attrs: noredzone
declare hidden void @luaA_pushobject(%struct.lua_State*, %struct.lua_TValue*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i8* @lua_setlocal(%struct.lua_State* nocapture, %struct.lua_Debug* nocapture readonly, i32) local_unnamed_addr #0 !dbg !627 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 12, !dbg !643
  %5 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8, !dbg !643, !tbaa !475
  %6 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %1, i64 0, i32 10, !dbg !644
  %7 = load i32, i32* %6, align 4, !dbg !644, !tbaa !507
  %8 = sext i32 %7 to i64, !dbg !645
  %9 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5, i64 %8, !dbg !645
  %10 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5, i64 %8, i32 1, !dbg !653
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !653, !tbaa !484
  %12 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %11, i64 0, i32 1, !dbg !653
  %13 = load i32, i32* %12, align 8, !dbg !653, !tbaa !562
  %14 = icmp eq i32 %13, 6, !dbg !653
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !653
  br i1 %14, label %15, label %21, !dbg !653

; <label>:15:                                     ; preds = %3
  %16 = bitcast %struct.lua_TValue* %11 to %union.Closure**, !dbg !653
  %17 = load %union.Closure*, %union.Closure** %16, align 8, !dbg !653, !tbaa !486
  %18 = getelementptr inbounds %union.Closure, %union.Closure* %17, i64 0, i32 0, i32 3, !dbg !653
  %19 = load i8, i8* %18, align 2, !dbg !653, !tbaa !486
  %20 = icmp eq i8 %19, 0, !dbg !653
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !653
  br i1 %20, label %22, label %21, !dbg !653

; <label>:21:                                     ; preds = %15, %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !654
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !656
  br label %61, !dbg !656

; <label>:22:                                     ; preds = %15
  %23 = getelementptr inbounds %union.Closure, %union.Closure* %17, i64 0, i32 0, i32 7, !dbg !657
  %24 = bitcast i32 (%struct.lua_State*)** %23 to %struct.Proto**, !dbg !657
  %25 = load %struct.Proto*, %struct.Proto** %24, align 8, !dbg !657, !tbaa !486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !653
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !654
  %26 = icmp eq %struct.Proto* %25, null, !dbg !658
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !656
  br i1 %26, label %61, label %27, !dbg !656

; <label>:27:                                     ; preds = %22
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !662
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !663
  %28 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !664
  %29 = load %struct.CallInfo*, %struct.CallInfo** %28, align 8, !dbg !664, !tbaa !469
  %30 = icmp eq %struct.CallInfo* %29, %9, !dbg !665
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !666
  br i1 %30, label %36, label %31, !dbg !666

; <label>:31:                                     ; preds = %27
  %32 = bitcast %union.Closure* %17 to %struct.LClosure*, !dbg !663
  %33 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5, i64 %8, i32 3
  %34 = bitcast i32** %33 to i64*
  %35 = load i64, i64* %34, align 8, !dbg !667, !tbaa !585
  br label %44, !dbg !666

; <label>:36:                                     ; preds = %27
  %37 = bitcast %struct.lua_TValue* %11 to %struct.LClosure**, !dbg !662
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8, !dbg !668
  %39 = bitcast i32** %38 to i64*, !dbg !668
  %40 = load i64, i64* %39, align 8, !dbg !668, !tbaa !587
  %41 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %5, i64 %8, i32 3, !dbg !669
  %42 = bitcast i32** %41 to i64*, !dbg !670
  store i64 %40, i64* %42, align 8, !dbg !670, !tbaa !585
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !671
  %43 = load %struct.LClosure*, %struct.LClosure** %37, align 8, !dbg !667, !tbaa !486
  br label %44, !dbg !671

; <label>:44:                                     ; preds = %31, %36
  %45 = phi %struct.LClosure* [ %32, %31 ], [ %43, %36 ], !dbg !667
  %46 = phi i64 [ %35, %31 ], [ %40, %36 ], !dbg !667
  %47 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %45, i64 0, i32 7, !dbg !667
  %48 = load %struct.Proto*, %struct.Proto** %47, align 8, !dbg !667, !tbaa !486
  %49 = getelementptr inbounds %struct.Proto, %struct.Proto* %48, i64 0, i32 4, !dbg !667
  %50 = bitcast i32** %49 to i64*, !dbg !667
  %51 = load i64, i64* %50, align 8, !dbg !667, !tbaa !591
  %52 = sub i64 %46, %51, !dbg !667
  %53 = lshr exact i64 %52, 2, !dbg !667
  %54 = trunc i64 %53 to i32, !dbg !667
  %55 = add nsw i32 %54, -1, !dbg !667
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !672
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !673
  %56 = tail call i8* @luaF_getlocalname(%struct.Proto* nonnull %25, i32 %2, i32 %55) #5, !dbg !674
  %57 = icmp eq i8* %56, null, !dbg !676
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !677
  br i1 %57, label %61, label %58, !dbg !677

; <label>:58:                                     ; preds = %44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !678
  %59 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %9, i64 0, i32 0
  %60 = load %struct.lua_TValue*, %struct.lua_TValue** %59, align 8, !dbg !679, !tbaa !602
  br label %82, !dbg !678

; <label>:61:                                     ; preds = %21, %44, %22
  %62 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !680
  %63 = load %struct.CallInfo*, %struct.CallInfo** %62, align 8, !dbg !680, !tbaa !469
  %64 = icmp eq %struct.CallInfo* %63, %9, !dbg !681
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !682
  %65 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %9, i64 1, i32 1, !dbg !683
  %66 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !684
  %67 = select i1 %64, %struct.lua_TValue** %66, %struct.lua_TValue** %65, !dbg !682
  %68 = bitcast %struct.lua_TValue** %67 to i64*, !dbg !685
  %69 = load i64, i64* %68, align 8, !dbg !685, !tbaa !609
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !682
  %70 = bitcast %struct.CallInfo* %9 to i64*, !dbg !687
  %71 = load i64, i64* %70, align 8, !dbg !687, !tbaa !602
  %72 = sub i64 %69, %71, !dbg !688
  %73 = ashr exact i64 %72, 4, !dbg !688
  %74 = sext i32 %2 to i64, !dbg !689
  %75 = icmp sge i64 %73, %74, !dbg !690
  %76 = icmp sgt i32 %2, 0, !dbg !691
  %77 = and i1 %76, %75, !dbg !692
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !692
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !693
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br i1 %77, label %78, label %80

; <label>:78:                                     ; preds = %61
  %79 = inttoptr i64 %71 to %struct.lua_TValue*
  br label %82

; <label>:80:                                     ; preds = %61
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !694
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !696
  %81 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !697
  br label %97

; <label>:82:                                     ; preds = %78, %58
  %83 = phi %struct.lua_TValue* [ %60, %58 ], [ %79, %78 ], !dbg !679
  %84 = phi i8* [ %56, %58 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), %78 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !694
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !696
  %85 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !679
  %86 = load %struct.lua_TValue*, %struct.lua_TValue** %85, align 8, !dbg !679, !tbaa !698
  %87 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %86, i64 -1, !dbg !679
  %88 = add nsw i32 %2, -1, !dbg !679
  %89 = sext i32 %88 to i64, !dbg !679
  %90 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %83, i64 %89, !dbg !679
  %91 = bitcast %struct.lua_TValue* %87 to i64*, !dbg !679
  %92 = bitcast %struct.lua_TValue* %90 to i64*, !dbg !679
  %93 = load i64, i64* %91, align 8, !dbg !679
  store i64 %93, i64* %92, align 8, !dbg !679
  %94 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %86, i64 -1, i32 1, !dbg !679
  %95 = load i32, i32* %94, align 8, !dbg !679, !tbaa !562
  %96 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %83, i64 %89, i32 1, !dbg !679
  store i32 %95, i32* %96, align 8, !dbg !679, !tbaa !562
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !679
  br label %97, !dbg !679

; <label>:97:                                     ; preds = %80, %82
  %98 = phi %struct.lua_TValue** [ %81, %80 ], [ %85, %82 ], !dbg !697
  %99 = phi i8* [ null, %80 ], [ %84, %82 ]
  %100 = load %struct.lua_TValue*, %struct.lua_TValue** %98, align 8, !dbg !699, !tbaa !698
  %101 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %100, i64 -1, !dbg !699
  store %struct.lua_TValue* %101, %struct.lua_TValue** %98, align 8, !dbg !699, !tbaa !698
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !700
  ret i8* %99, !dbg !700
}

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_getinfo(%struct.lua_State*, i8*, %struct.lua_Debug*) local_unnamed_addr #0 !dbg !701 {
  %4 = load i8, i8* %1, align 1, !dbg !726, !tbaa !486
  %5 = icmp eq i8 %4, 62, !dbg !727
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !728
  br i1 %5, label %6, label %14, !dbg !728

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !729
  %8 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8, !dbg !729, !tbaa !698
  %9 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !731
  %10 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %8, i64 -1, i32 0, i32 0, !dbg !732
  %11 = bitcast %union.GCObject** %10 to %union.Closure**, !dbg !732
  %12 = load %union.Closure*, %union.Closure** %11, align 8, !dbg !732, !tbaa !486
  %13 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %8, i64 -1, !dbg !733
  store %struct.lua_TValue* %13, %struct.lua_TValue** %7, align 8, !dbg !733, !tbaa !698
  br label %28, !dbg !734

; <label>:14:                                     ; preds = %3
  %15 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 10, !dbg !735
  %16 = load i32, i32* %15, align 4, !dbg !735, !tbaa !507
  %17 = icmp eq i32 %16, 0, !dbg !737
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !738
  br i1 %17, label %18, label %19, !dbg !738

; <label>:18:                                     ; preds = %14
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !756
  br label %64, !dbg !756

; <label>:19:                                     ; preds = %14
  %20 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 12, !dbg !757
  %21 = load %struct.CallInfo*, %struct.CallInfo** %20, align 8, !dbg !757, !tbaa !475
  %22 = sext i32 %16 to i64, !dbg !759
  %23 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %21, i64 %22, !dbg !759
  %24 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %21, i64 %22, i32 1, !dbg !760
  %25 = bitcast %struct.lua_TValue** %24 to %union.Closure***, !dbg !760
  %26 = load %union.Closure**, %union.Closure*** %25, align 8, !dbg !760, !tbaa !484
  %27 = load %union.Closure*, %union.Closure** %26, align 8, !dbg !760, !tbaa !486
  br label %28, !dbg !761

; <label>:28:                                     ; preds = %19, %6
  %29 = phi %struct.CallInfo* [ null, %6 ], [ %23, %19 ], !dbg !762
  %30 = phi %union.Closure* [ %12, %6 ], [ %27, %19 ], !dbg !762
  %31 = phi i8* [ %9, %6 ], [ %1, %19 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !763
  %32 = icmp eq %union.Closure* %30, null, !dbg !764
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !756
  br i1 %32, label %64, label %33, !dbg !756

; <label>:33:                                     ; preds = %28
  %34 = load i8, i8* %31, align 1, !dbg !766, !tbaa !486
  %35 = icmp eq i8 %34, 0, !dbg !769
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !769
  br i1 %35, label %228, label %36, !dbg !769

; <label>:36:                                     ; preds = %33
  %37 = getelementptr inbounds %union.Closure, %union.Closure* %30, i64 0, i32 0, i32 3
  %38 = icmp eq %struct.CallInfo* %29, null
  %39 = getelementptr inbounds %union.Closure, %union.Closure* %30, i64 0, i32 0, i32 4
  %40 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 6
  %41 = getelementptr inbounds %union.Closure, %union.Closure* %30, i64 0, i32 0, i32 7
  %42 = bitcast i32 (%struct.lua_State*)** %41 to %struct.Proto**
  %43 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 4
  %44 = bitcast i8** %43 to %union.TString**
  %45 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 7
  %46 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 8
  %47 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 3
  %48 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 9, i64 0
  %49 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 5
  %50 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %29, i64 0, i32 1
  %51 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 2
  %52 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 1
  %53 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %29, i64 -1, i32 1
  %54 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %55 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %29, i64 0, i32 5
  %56 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %57 = bitcast i32** %56 to i64*
  %58 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %29, i64 0, i32 3
  %59 = bitcast i32** %58 to i64*
  %60 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %29, i64 -1
  %61 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %29, i64 -1, i32 3
  %62 = bitcast i32** %61 to i64*
  %63 = bitcast i8** %52 to <2 x i8*>*
  br label %75, !dbg !769

; <label>:64:                                     ; preds = %18, %28
  %65 = phi i8* [ %1, %18 ], [ %31, %28 ]
  %66 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 1, !dbg !778
  %67 = bitcast i8** %66 to <2 x i8*>*, !dbg !779
  store <2 x i8*> <i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)>, <2 x i8*>* %67, align 8, !dbg !779, !tbaa !609
  %68 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 3, !dbg !780
  %69 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 5, !dbg !781
  store i32 -1, i32* %69, align 8, !dbg !782, !tbaa !783
  %70 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 7, !dbg !784
  store i32 -1, i32* %70, align 8, !dbg !785, !tbaa !786
  %71 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 8, !dbg !787
  store i32 -1, i32* %71, align 4, !dbg !788, !tbaa !789
  %72 = bitcast i8** %68 to <2 x i8*>*, !dbg !790
  store <2 x i8*> <i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0)>, <2 x i8*>* %72, align 8, !dbg !790, !tbaa !609
  %73 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 9, i64 0, !dbg !791
  tail call void @luaO_chunkid(i8* nonnull %73, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i64 60) #5, !dbg !792
  %74 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 6, !dbg !793
  store i32 0, i32* %74, align 4, !dbg !794, !tbaa !795
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !796
  br label %228, !dbg !797

; <label>:75:                                     ; preds = %223, %36
  %76 = phi i8 [ %34, %36 ], [ %226, %223 ]
  %77 = phi i32 [ 1, %36 ], [ %224, %223 ]
  %78 = phi i8* [ %31, %36 ], [ %225, %223 ]
  %79 = sext i8 %76 to i32, !dbg !798
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !800
  switch i32 %79, label %222 [
    i32 83, label %80
    i32 108, label %102
    i32 117, label %151
    i32 110, label %154
    i32 76, label %223
    i32 102, label %223
  ], !dbg !800

; <label>:80:                                     ; preds = %75
  %81 = load i8, i8* %37, align 2, !dbg !812, !tbaa !486
  %82 = icmp eq i8 %81, 0, !dbg !814
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !815
  br i1 %82, label %84, label %83, !dbg !815

; <label>:83:                                     ; preds = %80
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8** %43, align 8, !dbg !816, !tbaa !818
  store i32 -1, i32* %45, align 8, !dbg !819, !tbaa !786
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !820
  br label %98, !dbg !820

; <label>:84:                                     ; preds = %80
  %85 = load %struct.Proto*, %struct.Proto** %42, align 8, !dbg !821, !tbaa !486
  %86 = getelementptr inbounds %struct.Proto, %struct.Proto* %85, i64 0, i32 9, !dbg !821
  %87 = load %union.TString*, %union.TString** %86, align 8, !dbg !821, !tbaa !823
  %88 = getelementptr inbounds %union.TString, %union.TString* %87, i64 1, !dbg !821
  store %union.TString* %88, %union.TString** %44, align 8, !dbg !824, !tbaa !818
  %89 = load %struct.Proto*, %struct.Proto** %42, align 8, !dbg !825, !tbaa !486
  %90 = getelementptr inbounds %struct.Proto, %struct.Proto* %89, i64 0, i32 16, !dbg !826
  %91 = load i32, i32* %90, align 8, !dbg !826, !tbaa !827
  store i32 %91, i32* %45, align 8, !dbg !828, !tbaa !786
  %92 = load %struct.Proto*, %struct.Proto** %42, align 8, !dbg !829, !tbaa !486
  %93 = getelementptr inbounds %struct.Proto, %struct.Proto* %92, i64 0, i32 17, !dbg !830
  %94 = load i32, i32* %93, align 4, !dbg !830, !tbaa !831
  %95 = icmp eq i32 %91, 0, !dbg !832
  %96 = select i1 %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), !dbg !833
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %97 = bitcast %union.TString* %88 to i8*
  br label %98

; <label>:98:                                     ; preds = %84, %83
  %99 = phi i8* [ %97, %84 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), %83 ], !dbg !834
  %100 = phi i32 [ %94, %84 ], [ -1, %83 ]
  %101 = phi i8* [ %96, %84 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), %83 ]
  store i32 %100, i32* %46, align 4, !dbg !835
  store i8* %101, i8** %47, align 8, !dbg !836
  tail call void @luaO_chunkid(i8* nonnull %48, i8* %99, i64 60) #5, !dbg !837
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !838
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !839
  br label %223, !dbg !839

; <label>:102:                                    ; preds = %75
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !840
  br i1 %38, label %149, label %103, !dbg !840

; <label>:103:                                    ; preds = %102
  %104 = load %struct.lua_TValue*, %struct.lua_TValue** %50, align 8, !dbg !853, !tbaa !484
  %105 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %104, i64 0, i32 1, !dbg !853
  %106 = load i32, i32* %105, align 8, !dbg !853, !tbaa !562
  %107 = icmp eq i32 %106, 6, !dbg !853
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !853
  %108 = bitcast %struct.lua_TValue* %104 to %struct.LClosure**, !dbg !853
  br i1 %107, label %109, label %116, !dbg !853

; <label>:109:                                    ; preds = %103
  %110 = bitcast %struct.lua_TValue* %104 to %struct.CClosure**, !dbg !853
  %111 = load %struct.CClosure*, %struct.CClosure** %110, align 8, !dbg !853, !tbaa !486
  %112 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %111, i64 0, i32 3, !dbg !853
  %113 = load i8, i8* %112, align 2, !dbg !853, !tbaa !486
  %114 = icmp eq i8 %113, 0, !dbg !853
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !854
  %115 = bitcast %struct.CClosure* %111 to %struct.LClosure*, !dbg !854
  br i1 %114, label %117, label %116, !dbg !854

; <label>:116:                                    ; preds = %109, %103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !855
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !856
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !857
  br label %147, !dbg !857

; <label>:117:                                    ; preds = %109
  %118 = load %struct.CallInfo*, %struct.CallInfo** %54, align 8, !dbg !858, !tbaa !469
  %119 = icmp eq %struct.CallInfo* %118, %29, !dbg !859
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !860
  br i1 %119, label %122, label %120, !dbg !860

; <label>:120:                                    ; preds = %117
  %121 = load i64, i64* %59, align 8, !dbg !861, !tbaa !585
  br label %125, !dbg !860

; <label>:122:                                    ; preds = %117
  %123 = load i64, i64* %57, align 8, !dbg !862, !tbaa !587
  store i64 %123, i64* %59, align 8, !dbg !863, !tbaa !585
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !864
  %124 = load %struct.LClosure*, %struct.LClosure** %108, align 8, !dbg !861, !tbaa !486
  br label %125, !dbg !864

; <label>:125:                                    ; preds = %122, %120
  %126 = phi %struct.LClosure* [ %115, %120 ], [ %124, %122 ]
  %127 = phi i64 [ %121, %120 ], [ %123, %122 ], !dbg !861
  %128 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %126, i64 0, i32 7, !dbg !861
  %129 = load %struct.Proto*, %struct.Proto** %128, align 8, !dbg !861, !tbaa !486
  %130 = getelementptr inbounds %struct.Proto, %struct.Proto* %129, i64 0, i32 4, !dbg !861
  %131 = bitcast i32** %130 to i64*, !dbg !861
  %132 = load i64, i64* %131, align 8, !dbg !861, !tbaa !591
  %133 = sub i64 %127, %132, !dbg !861
  %134 = lshr exact i64 %133, 2, !dbg !861
  %135 = trunc i64 %134 to i32, !dbg !861
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !865
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !856
  %136 = icmp slt i32 %135, 1, !dbg !867
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !857
  br i1 %136, label %147, label %137, !dbg !857

; <label>:137:                                    ; preds = %125
  %138 = getelementptr inbounds %struct.Proto, %struct.Proto* %129, i64 0, i32 6, !dbg !869
  %139 = load i32*, i32** %138, align 8, !dbg !869, !tbaa !870
  %140 = icmp eq i32* %139, null, !dbg !869
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !869
  br i1 %140, label %147, label %141, !dbg !869

; <label>:141:                                    ; preds = %137
  %142 = shl i64 %133, 30, !dbg !869
  %143 = add i64 %142, -4294967296, !dbg !869
  %144 = ashr exact i64 %143, 32, !dbg !869
  %145 = getelementptr inbounds i32, i32* %139, i64 %144, !dbg !869
  %146 = load i32, i32* %145, align 4, !dbg !869, !tbaa !871
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !869
  br label %147, !dbg !869

; <label>:147:                                    ; preds = %137, %141, %116, %125
  %148 = phi i32 [ -1, %125 ], [ -1, %116 ], [ %146, %141 ], [ 0, %137 ], !dbg !872
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !873
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !874
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !840
  br label %149, !dbg !840

; <label>:149:                                    ; preds = %147, %102
  %150 = phi i32 [ %148, %147 ], [ -1, %102 ], !dbg !840
  store i32 %150, i32* %49, align 8, !dbg !875, !tbaa !783
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !876
  br label %223, !dbg !876

; <label>:151:                                    ; preds = %75
  %152 = load i8, i8* %39, align 1, !dbg !877, !tbaa !486
  %153 = zext i8 %152 to i32, !dbg !879
  store i32 %153, i32* %40, align 4, !dbg !880, !tbaa !795
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !881
  br label %223, !dbg !881

; <label>:154:                                    ; preds = %75
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !882
  br i1 %38, label %220, label %155, !dbg !882

; <label>:155:                                    ; preds = %154
  %156 = load %struct.lua_TValue*, %struct.lua_TValue** %50, align 8, !dbg !897, !tbaa !484
  %157 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %156, i64 0, i32 1, !dbg !897
  %158 = load i32, i32* %157, align 8, !dbg !897, !tbaa !562
  %159 = icmp eq i32 %158, 6, !dbg !897
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !897
  br i1 %159, label %160, label %169, !dbg !897

; <label>:160:                                    ; preds = %155
  %161 = bitcast %struct.lua_TValue* %156 to %struct.CClosure**, !dbg !897
  %162 = load %struct.CClosure*, %struct.CClosure** %161, align 8, !dbg !897, !tbaa !486
  %163 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %162, i64 0, i32 3, !dbg !897
  %164 = load i8, i8* %163, align 2, !dbg !897, !tbaa !486
  %165 = icmp eq i8 %164, 0, !dbg !897
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !899
  br i1 %165, label %166, label %169, !dbg !899

; <label>:166:                                    ; preds = %160
  %167 = load i32, i32* %55, align 4, !dbg !900, !tbaa !489
  %168 = icmp sgt i32 %167, 0, !dbg !901
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !902
  br i1 %168, label %214, label %169, !dbg !902

; <label>:169:                                    ; preds = %166, %160, %155
  %170 = load %struct.lua_TValue*, %struct.lua_TValue** %53, align 8, !dbg !903, !tbaa !484
  %171 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %170, i64 0, i32 1, !dbg !903
  %172 = load i32, i32* %171, align 8, !dbg !903, !tbaa !562
  %173 = icmp eq i32 %172, 6, !dbg !903
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !903
  %174 = bitcast %struct.lua_TValue* %170 to %struct.LClosure**, !dbg !903
  br i1 %173, label %175, label %214, !dbg !903

; <label>:175:                                    ; preds = %169
  %176 = bitcast %struct.lua_TValue* %170 to %struct.CClosure**, !dbg !903
  %177 = load %struct.CClosure*, %struct.CClosure** %176, align 8, !dbg !903, !tbaa !486
  %178 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %177, i64 0, i32 3, !dbg !903
  %179 = load i8, i8* %178, align 2, !dbg !903, !tbaa !486
  %180 = icmp eq i8 %179, 0, !dbg !903
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !904
  br i1 %180, label %181, label %214, !dbg !904

; <label>:181:                                    ; preds = %175
  %182 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %177, i64 0, i32 7, !dbg !905
  %183 = bitcast i32 (%struct.lua_State*)** %182 to %struct.Proto**, !dbg !905
  %184 = load %struct.Proto*, %struct.Proto** %183, align 8, !dbg !905, !tbaa !486
  %185 = getelementptr inbounds %struct.Proto, %struct.Proto* %184, i64 0, i32 4, !dbg !906
  %186 = load i32*, i32** %185, align 8, !dbg !906, !tbaa !591
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !910
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !911
  %187 = load %struct.CallInfo*, %struct.CallInfo** %54, align 8, !dbg !912, !tbaa !469
  %188 = icmp eq %struct.CallInfo* %187, %60, !dbg !913
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !914
  br i1 %188, label %191, label %189, !dbg !914

; <label>:189:                                    ; preds = %181
  %190 = load i64, i64* %62, align 8, !dbg !915, !tbaa !585
  br label %197, !dbg !914

; <label>:191:                                    ; preds = %181
  %192 = load i64, i64* %57, align 8, !dbg !916, !tbaa !587
  store i64 %192, i64* %62, align 8, !dbg !917, !tbaa !585
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !918
  %193 = load %struct.LClosure*, %struct.LClosure** %174, align 8, !dbg !915, !tbaa !486
  %194 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %193, i64 0, i32 7
  %195 = load %struct.Proto*, %struct.Proto** %194, align 8, !dbg !915, !tbaa !486
  %196 = getelementptr inbounds %struct.Proto, %struct.Proto* %195, i64 0, i32 4, !dbg !915
  br label %197, !dbg !918

; <label>:197:                                    ; preds = %191, %189
  %198 = phi i32** [ %196, %191 ], [ %185, %189 ], !dbg !915
  %199 = phi i64 [ %192, %191 ], [ %190, %189 ], !dbg !915
  %200 = bitcast i32** %198 to i64*, !dbg !915
  %201 = load i64, i64* %200, align 8, !dbg !915, !tbaa !591
  %202 = sub i64 %199, %201, !dbg !915
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !919
  %203 = shl i64 %202, 30, !dbg !919
  %204 = add i64 %203, -4294967296, !dbg !919
  %205 = ashr exact i64 %204, 32, !dbg !919
  %206 = getelementptr inbounds i32, i32* %186, i64 %205
  %207 = load i32, i32* %206, align 4, !dbg !920, !tbaa !871
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !921
  %208 = and i32 %207, 63, !dbg !923
  %209 = icmp eq i32 %208, 28, !dbg !925
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !926
  br i1 %209, label %215, label %210, !dbg !926

; <label>:210:                                    ; preds = %197
  %211 = icmp eq i32 %208, 29, !dbg !927
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !928
  br i1 %211, label %215, label %212, !dbg !928

; <label>:212:                                    ; preds = %210
  %213 = icmp eq i32 %208, 33, !dbg !929
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !930
  br i1 %213, label %215, label %214, !dbg !930

; <label>:214:                                    ; preds = %212, %166, %169, %175
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !931
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !932
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !882
  br label %220, !dbg !933

; <label>:215:                                    ; preds = %212, %210, %197
  %216 = lshr i32 %207, 6, !dbg !934
  %217 = and i32 %216, 255, !dbg !934
  %218 = tail call fastcc i8* @getobjname(%struct.lua_State* nonnull %0, %struct.CallInfo* nonnull %60, i32 %217, i8** nonnull %52) #5, !dbg !935
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !936
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !932
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !882
  store i8* %218, i8** %51, align 8, !dbg !937, !tbaa !938
  %219 = icmp eq i8* %218, null, !dbg !939
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !933
  br i1 %219, label %221, label %223, !dbg !933

; <label>:220:                                    ; preds = %154, %214
  store i8* null, i8** %51, align 8, !dbg !937, !tbaa !938
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !933
  br label %221, !dbg !941

; <label>:221:                                    ; preds = %220, %215
  store <2 x i8*> <i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)>, <2 x i8*>* %63, align 8, !dbg !943, !tbaa !609
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !944
  br label %223, !dbg !944

; <label>:222:                                    ; preds = %75
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !945
  br label %223, !dbg !945

; <label>:223:                                    ; preds = %222, %221, %215, %151, %149, %98, %75, %75
  %224 = phi i32 [ 0, %222 ], [ %77, %75 ], [ %77, %75 ], [ %77, %221 ], [ %77, %215 ], [ %77, %151 ], [ %77, %149 ], [ %77, %98 ], !dbg !946
  %225 = getelementptr inbounds i8, i8* %78, i64 1, !dbg !947
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !948
  %226 = load i8, i8* %225, align 1, !dbg !766, !tbaa !486
  %227 = icmp eq i8 %226, 0, !dbg !769
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !769
  br i1 %227, label %228, label %75, !dbg !769, !llvm.loop !949

; <label>:228:                                    ; preds = %223, %33, %64
  %229 = phi i1 [ true, %64 ], [ false, %33 ], [ false, %223 ]
  %230 = phi i8* [ %65, %64 ], [ %31, %33 ], [ %31, %223 ]
  %231 = phi %union.Closure* [ null, %64 ], [ %30, %33 ], [ %30, %223 ]
  %232 = phi i32 [ 1, %64 ], [ 1, %33 ], [ %224, %223 ], !dbg !946
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !762
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !952
  %233 = tail call i8* @strchr(i8* %230, i32 102) #5, !dbg !954
  %234 = icmp eq i8* %233, null, !dbg !954
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !955
  br i1 %234, label %256, label %235, !dbg !955

; <label>:235:                                    ; preds = %228
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !956
  %236 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !957
  %237 = load %struct.lua_TValue*, %struct.lua_TValue** %236, align 8, !dbg !957, !tbaa !698
  br i1 %229, label %240, label %238, !dbg !956

; <label>:238:                                    ; preds = %235
  %239 = bitcast %struct.lua_TValue* %237 to %union.Closure**, !dbg !958
  store %union.Closure* %231, %union.Closure** %239, align 8, !dbg !958, !tbaa !486
  br label %240

; <label>:240:                                    ; preds = %235, %238
  %241 = phi i32 [ 6, %238 ], [ 0, %235 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %242 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %237, i64 0, i32 1, !dbg !958
  store i32 %241, i32* %242, align 8, !dbg !958
  %243 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 9, !dbg !959
  %244 = bitcast %struct.lua_TValue** %243 to i64*, !dbg !959
  %245 = load i64, i64* %244, align 8, !dbg !959, !tbaa !962
  %246 = bitcast %struct.lua_TValue** %236 to i64*, !dbg !959
  %247 = load i64, i64* %246, align 8, !dbg !959, !tbaa !698
  %248 = sub i64 %245, %247, !dbg !959
  %249 = icmp slt i64 %248, 17, !dbg !959
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !963
  %250 = inttoptr i64 %247 to %struct.lua_TValue*, !dbg !963
  br i1 %249, label %251, label %253, !dbg !963

; <label>:251:                                    ; preds = %240
  tail call void @luaD_growstack(%struct.lua_State* nonnull %0, i32 1) #5, !dbg !959
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !959
  %252 = load %struct.lua_TValue*, %struct.lua_TValue** %236, align 8, !dbg !963, !tbaa !698
  br label %253, !dbg !959

; <label>:253:                                    ; preds = %240, %251
  %254 = phi %struct.lua_TValue* [ %250, %240 ], [ %252, %251 ], !dbg !963
  %255 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %254, i64 1, !dbg !963
  store %struct.lua_TValue* %255, %struct.lua_TValue** %236, align 8, !dbg !963, !tbaa !698
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !964
  br label %256, !dbg !964

; <label>:256:                                    ; preds = %228, %253
  %257 = tail call i8* @strchr(i8* %230, i32 76) #5, !dbg !965
  %258 = icmp eq i8* %257, null, !dbg !965
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !967
  br i1 %258, label %314, label %259, !dbg !967

; <label>:259:                                    ; preds = %256
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !990
  br i1 %229, label %264, label %260, !dbg !990

; <label>:260:                                    ; preds = %259
  %261 = getelementptr inbounds %union.Closure, %union.Closure* %231, i64 0, i32 0, i32 3, !dbg !991
  %262 = load i8, i8* %261, align 2, !dbg !991, !tbaa !486
  %263 = icmp eq i8 %262, 0, !dbg !992
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !993
  br i1 %263, label %269, label %264, !dbg !993

; <label>:264:                                    ; preds = %260, %259
  %265 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !994
  %266 = load %struct.lua_TValue*, %struct.lua_TValue** %265, align 8, !dbg !994, !tbaa !698
  %267 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %266, i64 0, i32 1, !dbg !994
  store i32 0, i32* %267, align 8, !dbg !994, !tbaa !562
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !996
  %268 = ptrtoint %struct.lua_TValue* %266 to i64, !dbg !996
  br label %300, !dbg !996

; <label>:269:                                    ; preds = %260
  %270 = tail call %struct.Table* @luaH_new(%struct.lua_State* %0, i32 0, i32 0) #5, !dbg !997
  %271 = getelementptr inbounds %union.Closure, %union.Closure* %231, i64 0, i32 0, i32 7, !dbg !999
  %272 = bitcast i32 (%struct.lua_State*)** %271 to %struct.Proto**, !dbg !999
  %273 = load %struct.Proto*, %struct.Proto** %272, align 8, !dbg !999, !tbaa !486
  %274 = getelementptr inbounds %struct.Proto, %struct.Proto* %273, i64 0, i32 6, !dbg !1000
  %275 = load i32*, i32** %274, align 8, !dbg !1000, !tbaa !870
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1003
  %276 = getelementptr inbounds %struct.Proto, %struct.Proto* %273, i64 0, i32 13, !dbg !1004
  %277 = load i32, i32* %276, align 4, !dbg !1004, !tbaa !1005
  %278 = icmp sgt i32 %277, 0, !dbg !1006
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1007
  br i1 %278, label %279, label %292, !dbg !1007

; <label>:279:                                    ; preds = %269, %279
  %280 = phi i64 [ %286, %279 ], [ 0, %269 ]
  %281 = getelementptr inbounds i32, i32* %275, i64 %280, !dbg !1008
  %282 = load i32, i32* %281, align 4, !dbg !1008, !tbaa !871
  %283 = tail call %struct.lua_TValue* @luaH_setnum(%struct.lua_State* %0, %struct.Table* %270, i32 %282) #5, !dbg !1008
  %284 = bitcast %struct.lua_TValue* %283 to i32*, !dbg !1008
  store i32 1, i32* %284, align 8, !dbg !1008, !tbaa !486
  %285 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %283, i64 0, i32 1, !dbg !1008
  store i32 1, i32* %285, align 8, !dbg !1008, !tbaa !562
  %286 = add nuw nsw i64 %280, 1, !dbg !1009
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1010
  %287 = load %struct.Proto*, %struct.Proto** %272, align 8, !dbg !1011, !tbaa !486
  %288 = getelementptr inbounds %struct.Proto, %struct.Proto* %287, i64 0, i32 13, !dbg !1004
  %289 = load i32, i32* %288, align 4, !dbg !1004, !tbaa !1005
  %290 = sext i32 %289 to i64, !dbg !1006
  %291 = icmp slt i64 %286, %290, !dbg !1006
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1007
  br i1 %291, label %279, label %292, !dbg !1007, !llvm.loop !1012

; <label>:292:                                    ; preds = %279, %269
  %293 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1015
  %294 = load %struct.lua_TValue*, %struct.lua_TValue** %293, align 8, !dbg !1015, !tbaa !698
  %295 = bitcast %struct.lua_TValue* %294 to %struct.Table**, !dbg !1015
  store %struct.Table* %270, %struct.Table** %295, align 8, !dbg !1015, !tbaa !486
  %296 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %294, i64 0, i32 1, !dbg !1015
  store i32 5, i32* %296, align 8, !dbg !1015, !tbaa !562
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %297 = bitcast %struct.lua_TValue** %293 to i64*
  %298 = load i64, i64* %297, align 8, !dbg !1016, !tbaa !698
  %299 = inttoptr i64 %298 to %struct.lua_TValue*
  br label %300

; <label>:300:                                    ; preds = %292, %264
  %301 = phi %struct.lua_TValue** [ %293, %292 ], [ %265, %264 ], !dbg !1016
  %302 = phi %struct.lua_TValue* [ %299, %292 ], [ %266, %264 ]
  %303 = phi i64 [ %298, %292 ], [ %268, %264 ], !dbg !1016
  %304 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 9, !dbg !1016
  %305 = bitcast %struct.lua_TValue** %304 to i64*, !dbg !1016
  %306 = load i64, i64* %305, align 8, !dbg !1016, !tbaa !962
  %307 = sub i64 %306, %303, !dbg !1016
  %308 = icmp slt i64 %307, 17, !dbg !1016
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1019
  br i1 %308, label %309, label %311, !dbg !1019

; <label>:309:                                    ; preds = %300
  tail call void @luaD_growstack(%struct.lua_State* nonnull %0, i32 1) #5, !dbg !1016
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1016
  %310 = load %struct.lua_TValue*, %struct.lua_TValue** %301, align 8, !dbg !1019, !tbaa !698
  br label %311, !dbg !1016

; <label>:311:                                    ; preds = %300, %309
  %312 = phi %struct.lua_TValue* [ %302, %300 ], [ %310, %309 ], !dbg !1019
  %313 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %312, i64 1, !dbg !1019
  store %struct.lua_TValue* %313, %struct.lua_TValue** %301, align 8, !dbg !1019, !tbaa !698
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1020
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1021
  br label %314, !dbg !1021

; <label>:314:                                    ; preds = %256, %311
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1022
  ret i32 %232, !dbg !1022
}

; Function Attrs: noredzone
declare dso_local i8* @strchr(i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden void @luaD_growstack(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define hidden i32 @luaG_checkopenop(i32) local_unnamed_addr #0 !dbg !1023 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1029
  %2 = trunc i32 %0 to i6, !dbg !1029
  switch i6 %2, label %6 [
    i6 28, label %3
    i6 29, label %3
    i6 30, label %3
    i6 -30, label %3
  ], !dbg !1029

; <label>:3:                                      ; preds = %1, %1, %1, %1
  %4 = icmp ult i32 %0, 8388608, !dbg !1030
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1034
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1035
  %5 = zext i1 %4 to i32, !dbg !1036
  br label %7, !dbg !1036

; <label>:6:                                      ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1037
  br label %7, !dbg !1037

; <label>:7:                                      ; preds = %3, %6
  %8 = phi i32 [ 0, %6 ], [ %5, %3 ], !dbg !1035
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1038
  ret i32 %8, !dbg !1038
}

; Function Attrs: noredzone nounwind
define hidden i32 @luaG_checkcode(%struct.Proto* readonly) local_unnamed_addr #0 !dbg !1039 {
  %2 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 12, !dbg !1047
  %3 = load i32, i32* %2, align 8, !dbg !1047, !tbaa !1048
  %4 = tail call fastcc i32 @symbexec(%struct.Proto* %0, i32 %3, i32 255) #6, !dbg !1049
  %5 = icmp ne i32 %4, 0, !dbg !1050
  %6 = zext i1 %5 to i32, !dbg !1050
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1051
  ret i32 %6, !dbg !1051
}

; Function Attrs: noredzone nounwind
define internal fastcc i32 @symbexec(%struct.Proto* readonly, i32, i32) unnamed_addr #0 !dbg !1052 {
  %4 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 12, !dbg !1094
  %5 = load i32, i32* %4, align 8, !dbg !1094, !tbaa !1048
  %6 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 22, !dbg !1101
  %7 = load i8, i8* %6, align 1, !dbg !1101, !tbaa !1103
  %8 = icmp ult i8 %7, -5, !dbg !1101
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1104
  br i1 %8, label %9, label %49, !dbg !1104

; <label>:9:                                      ; preds = %3
  %10 = zext i8 %7 to i32, !dbg !1101
  %11 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 20, !dbg !1105
  %12 = load i8, i8* %11, align 1, !dbg !1105, !tbaa !1107
  %13 = zext i8 %12 to i32, !dbg !1105
  %14 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 21, !dbg !1105
  %15 = load i8, i8* %14, align 2, !dbg !1105, !tbaa !1108
  %16 = zext i8 %15 to i32, !dbg !1105
  %17 = and i32 %16, 1, !dbg !1105
  %18 = add nuw nsw i32 %17, %13, !dbg !1105
  %19 = icmp ugt i32 %18, %10, !dbg !1105
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1109
  br i1 %19, label %49, label %20, !dbg !1109

; <label>:20:                                     ; preds = %9
  %21 = and i32 %16, 4, !dbg !1110
  %22 = icmp eq i32 %21, 0, !dbg !1110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1110
  br i1 %22, label %25, label %23, !dbg !1110

; <label>:23:                                     ; preds = %20
  %24 = icmp eq i32 %17, 0, !dbg !1110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1112
  br i1 %24, label %49, label %25, !dbg !1112

; <label>:25:                                     ; preds = %23, %20
  %26 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 10, !dbg !1113
  %27 = load i32, i32* %26, align 8, !dbg !1113, !tbaa !1115
  %28 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 19, !dbg !1113
  %29 = load i8, i8* %28, align 8, !dbg !1113, !tbaa !1116
  %30 = zext i8 %29 to i32, !dbg !1113
  %31 = icmp sgt i32 %27, %30, !dbg !1113
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1117
  br i1 %31, label %49, label %32, !dbg !1117

; <label>:32:                                     ; preds = %25
  %33 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 13, !dbg !1118
  %34 = load i32, i32* %33, align 4, !dbg !1118, !tbaa !1005
  %35 = icmp eq i32 %34, %5, !dbg !1118
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1118
  br i1 %35, label %38, label %36, !dbg !1118

; <label>:36:                                     ; preds = %32
  %37 = icmp eq i32 %34, 0, !dbg !1118
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1120
  br i1 %37, label %38, label %49, !dbg !1120

; <label>:38:                                     ; preds = %36, %32
  %39 = icmp sgt i32 %5, 0, !dbg !1121
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1121
  br i1 %39, label %40, label %49, !dbg !1121

; <label>:40:                                     ; preds = %38
  %41 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 4, !dbg !1121
  %42 = load i32*, i32** %41, align 8, !dbg !1121, !tbaa !591
  %43 = add nsw i32 %5, -1, !dbg !1121
  %44 = sext i32 %43 to i64, !dbg !1121
  %45 = getelementptr inbounds i32, i32* %42, i64 %44, !dbg !1121
  %46 = load i32, i32* %45, align 4, !dbg !1121, !tbaa !871
  %47 = and i32 %46, 63, !dbg !1121
  %48 = icmp eq i32 %47, 30, !dbg !1121
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1123
  br i1 %48, label %50, label %49, !dbg !1123

; <label>:49:                                     ; preds = %38, %40, %36, %25, %23, %9, %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1124
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1125
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1126
  br label %344, !dbg !1127

; <label>:50:                                     ; preds = %40
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1128
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1125
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1126
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1131
  %51 = icmp sgt i32 %1, 0, !dbg !1132
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1133
  br i1 %51, label %52, label %344, !dbg !1133

; <label>:52:                                     ; preds = %50
  %53 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 11
  %54 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 3
  %55 = icmp eq i32 %2, 255
  %56 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 14
  %57 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 5
  %58 = and i32 %16, 2
  %59 = icmp eq i32 %58, 0
  br label %60, !dbg !1133

; <label>:60:                                     ; preds = %52, %333
  %61 = phi i32 [ 0, %52 ], [ %336, %333 ]
  %62 = phi i32 [ %43, %52 ], [ %334, %333 ]
  %63 = sext i32 %61 to i64, !dbg !1134
  %64 = getelementptr inbounds i32, i32* %42, i64 %63, !dbg !1134
  %65 = load i32, i32* %64, align 4, !dbg !1134, !tbaa !871
  %66 = and i32 %65, 63, !dbg !1136
  %67 = lshr i32 %65, 6, !dbg !1138
  %68 = and i32 %67, 255, !dbg !1138
  %69 = icmp ult i32 %66, 38, !dbg !1142
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1144
  br i1 %69, label %70, label %338, !dbg !1144

; <label>:70:                                     ; preds = %60
  %71 = icmp ult i32 %68, %10, !dbg !1145
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1147
  br i1 %71, label %72, label %338, !dbg !1147

; <label>:72:                                     ; preds = %70
  %73 = zext i32 %66 to i64, !dbg !1148
  %74 = getelementptr inbounds [38 x i8], [38 x i8]* @luaP_opmodes, i64 0, i64 %73, !dbg !1148
  %75 = load i8, i8* %74, align 1, !dbg !1148, !tbaa !486
  %76 = zext i8 %75 to i32, !dbg !1148
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1149
  %77 = trunc i8 %75 to i2, !dbg !1149
  switch i2 %77, label %160 [
    i2 0, label %78
    i2 1, label %115
    i2 -2, label %122
  ], !dbg !1149

; <label>:78:                                     ; preds = %72
  %79 = lshr i32 %65, 23, !dbg !1150
  %80 = lshr i32 %65, 14, !dbg !1152
  %81 = and i32 %80, 511, !dbg !1152
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1165
  %82 = lshr i8 %75, 4, !dbg !1165
  %83 = trunc i8 %82 to i2, !dbg !1165
  switch i2 %83, label %97 [
    i2 0, label %84
    i2 -1, label %88
    i2 -2, label %86
  ], !dbg !1165

; <label>:84:                                     ; preds = %78
  %85 = icmp eq i32 %79, 0, !dbg !1166
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1169
  br i1 %85, label %97, label %96, !dbg !1169

; <label>:86:                                     ; preds = %78
  %87 = icmp ult i32 %79, %10, !dbg !1170
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1172
  br i1 %87, label %97, label %96, !dbg !1172

; <label>:88:                                     ; preds = %78
  %89 = icmp sgt i32 %65, -1, !dbg !1173
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1175
  br i1 %89, label %94, label %90, !dbg !1175

; <label>:90:                                     ; preds = %88
  %91 = and i32 %79, 255, !dbg !1173
  %92 = load i32, i32* %53, align 4, !dbg !1173, !tbaa !1176
  %93 = icmp slt i32 %91, %92, !dbg !1173
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1173
  br i1 %93, label %97, label %96, !dbg !1173

; <label>:94:                                     ; preds = %88
  %95 = icmp ult i32 %79, %10, !dbg !1173
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1175
  br i1 %95, label %97, label %96, !dbg !1175

; <label>:96:                                     ; preds = %90, %94, %86, %84
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1177
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1178
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1179
  br label %338, !dbg !1180

; <label>:97:                                     ; preds = %94, %90, %86, %84, %78
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1181
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1178
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1179
  %98 = lshr i8 %75, 2, !dbg !1182
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1187
  %99 = trunc i8 %98 to i2, !dbg !1187
  switch i2 %99, label %113 [
    i2 0, label %100
    i2 -1, label %104
    i2 -2, label %102
  ], !dbg !1187

; <label>:100:                                    ; preds = %97
  %101 = icmp eq i32 %81, 0, !dbg !1188
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1189
  br i1 %101, label %113, label %114, !dbg !1189

; <label>:102:                                    ; preds = %97
  %103 = icmp ult i32 %81, %10, !dbg !1190
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1191
  br i1 %103, label %113, label %114, !dbg !1191

; <label>:104:                                    ; preds = %97
  %105 = and i32 %65, 4194304, !dbg !1192
  %106 = icmp eq i32 %105, 0, !dbg !1192
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1193
  br i1 %106, label %111, label %107, !dbg !1193

; <label>:107:                                    ; preds = %104
  %108 = and i32 %80, 255, !dbg !1192
  %109 = load i32, i32* %53, align 4, !dbg !1192, !tbaa !1176
  %110 = icmp slt i32 %108, %109, !dbg !1192
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1192
  br i1 %110, label %113, label %114, !dbg !1192

; <label>:111:                                    ; preds = %104
  %112 = icmp ult i32 %81, %10, !dbg !1192
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1193
  br i1 %112, label %113, label %114, !dbg !1193

; <label>:113:                                    ; preds = %97, %100, %102, %107, %111
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1194
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1195
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1196
  br label %160, !dbg !1196

; <label>:114:                                    ; preds = %107, %111, %102, %100
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1197
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1195
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1196
  br label %338, !dbg !1182

; <label>:115:                                    ; preds = %72
  %116 = lshr i32 %65, 14, !dbg !1198
  %117 = and i32 %76, 48, !dbg !1200
  %118 = icmp eq i32 %117, 48, !dbg !1202
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1203
  br i1 %118, label %119, label %160, !dbg !1203

; <label>:119:                                    ; preds = %115
  %120 = load i32, i32* %53, align 4, !dbg !1204, !tbaa !1176
  %121 = icmp slt i32 %116, %120, !dbg !1204
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1206
  br i1 %121, label %160, label %338, !dbg !1206

; <label>:122:                                    ; preds = %72
  %123 = lshr i32 %65, 14, !dbg !1207
  %124 = add nsw i32 %123, -131071, !dbg !1207
  %125 = and i32 %76, 48, !dbg !1208
  %126 = icmp eq i32 %125, 32, !dbg !1209
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1210
  br i1 %126, label %127, label %160, !dbg !1210

; <label>:127:                                    ; preds = %122
  %128 = add nsw i32 %61, 1, !dbg !1211
  %129 = add nsw i32 %128, %124, !dbg !1212
  %130 = icmp sgt i32 %129, -1, !dbg !1214
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1214
  br i1 %130, label %131, label %133, !dbg !1214

; <label>:131:                                    ; preds = %127
  %132 = icmp slt i32 %129, %5, !dbg !1214
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1216
  br i1 %132, label %134, label %133, !dbg !1216

; <label>:133:                                    ; preds = %127, %131
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1214
  br label %338

; <label>:134:                                    ; preds = %131
  %135 = icmp sgt i32 %129, 0, !dbg !1217
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1218
  br i1 %135, label %136, label %159, !dbg !1218

; <label>:136:                                    ; preds = %134
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1220
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1221
  %137 = add i32 %124, %61
  %138 = sext i32 %129 to i64, !dbg !1221
  br label %139, !dbg !1221

; <label>:139:                                    ; preds = %136, %152
  %140 = phi i64 [ 0, %136 ], [ %153, %152 ]
  %141 = trunc i64 %140 to i32, !dbg !1222
  %142 = sub i32 %137, %141, !dbg !1222
  %143 = sext i32 %142 to i64, !dbg !1223
  %144 = getelementptr inbounds i32, i32* %42, i64 %143, !dbg !1223
  %145 = load i32, i32* %144, align 4, !dbg !1223, !tbaa !871
  %146 = and i32 %145, 63, !dbg !1225
  %147 = icmp eq i32 %146, 34, !dbg !1227
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1228
  br i1 %147, label %148, label %151, !dbg !1228

; <label>:148:                                    ; preds = %139
  %149 = and i32 %145, 8372224, !dbg !1229
  %150 = icmp eq i32 %149, 0, !dbg !1230
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1231
  br i1 %150, label %152, label %151, !dbg !1231

; <label>:151:                                    ; preds = %148, %139
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1232
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %155

; <label>:152:                                    ; preds = %148
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1233
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %153 = add nuw nsw i64 %140, 1, !dbg !1234
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1235
  %154 = icmp slt i64 %153, %138, !dbg !1236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1221
  br i1 %154, label %139, label %155, !dbg !1221, !llvm.loop !1237

; <label>:155:                                    ; preds = %152, %151
  %156 = phi i64 [ %140, %151 ], [ %153, %152 ]
  %157 = and i64 %156, 1, !dbg !1239
  %158 = icmp eq i64 %157, 0, !dbg !1239
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1241
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1242
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br i1 %158, label %159, label %339

; <label>:159:                                    ; preds = %134, %155
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1243
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %160

; <label>:160:                                    ; preds = %159, %113, %122, %115, %119, %72
  %161 = phi i32 [ 0, %72 ], [ 0, %122 ], [ 0, %119 ], [ 0, %115 ], [ %81, %113 ], [ 0, %159 ], !dbg !1244
  %162 = phi i32 [ 0, %72 ], [ %124, %122 ], [ %116, %119 ], [ %116, %115 ], [ %79, %113 ], [ %124, %159 ], !dbg !1244
  %163 = and i8 %75, 64, !dbg !1245
  %164 = icmp eq i8 %163, 0, !dbg !1245
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1247
  br i1 %164, label %168, label %165, !dbg !1247

; <label>:165:                                    ; preds = %160
  %166 = icmp eq i32 %68, %2, !dbg !1248
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1251
  br i1 %166, label %167, label %168, !dbg !1251

; <label>:167:                                    ; preds = %165
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1252
  br label %168, !dbg !1252

; <label>:168:                                    ; preds = %160, %165, %167
  %169 = phi i32 [ %61, %167 ], [ %62, %165 ], [ %62, %160 ], !dbg !1253
  %170 = icmp slt i8 %75, 0, !dbg !1254
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1256
  br i1 %170, label %171, label %181, !dbg !1256

; <label>:171:                                    ; preds = %168
  %172 = add nsw i32 %61, 2, !dbg !1257
  %173 = icmp slt i32 %172, %5, !dbg !1257
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1260
  br i1 %173, label %174, label %338, !dbg !1260

; <label>:174:                                    ; preds = %171
  %175 = add nsw i32 %61, 1, !dbg !1261
  %176 = sext i32 %175 to i64, !dbg !1261
  %177 = getelementptr inbounds i32, i32* %42, i64 %176, !dbg !1261
  %178 = load i32, i32* %177, align 4, !dbg !1261, !tbaa !871
  %179 = and i32 %178, 63, !dbg !1261
  %180 = icmp eq i32 %179, 22, !dbg !1261
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1263
  br i1 %180, label %181, label %338, !dbg !1263

; <label>:181:                                    ; preds = %174, %168
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1264
  %182 = trunc i32 %65 to i6, !dbg !1264
  switch i6 %182, label %333 [
    i6 2, label %183
    i6 3, label %198
    i6 4, label %203
    i6 8, label %203
    i6 5, label %205
    i6 7, label %205
    i6 11, label %211
    i6 21, label %217
    i6 -31, label %219
    i6 31, label %228
    i6 -32, label %228
    i6 22, label %231
    i6 28, label %242
    i6 29, label %242
    i6 30, label %267
    i6 -30, label %273
    i6 -28, label %283
    i6 -27, label %316
  ], !dbg !1264

; <label>:183:                                    ; preds = %181
  %184 = icmp eq i32 %161, 1, !dbg !1265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1268
  br i1 %184, label %185, label %333, !dbg !1268

; <label>:185:                                    ; preds = %183
  %186 = add nsw i32 %61, 2, !dbg !1269
  %187 = icmp slt i32 %186, %5, !dbg !1269
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1272
  br i1 %187, label %188, label %338, !dbg !1272

; <label>:188:                                    ; preds = %185
  %189 = add nsw i32 %61, 1, !dbg !1273
  %190 = sext i32 %189 to i64, !dbg !1273
  %191 = getelementptr inbounds i32, i32* %42, i64 %190, !dbg !1273
  %192 = load i32, i32* %191, align 4, !dbg !1273, !tbaa !871
  %193 = and i32 %192, 63, !dbg !1273
  %194 = icmp eq i32 %193, 34, !dbg !1273
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1273
  br i1 %194, label %195, label %333, !dbg !1273

; <label>:195:                                    ; preds = %188
  %196 = and i32 %192, 8372224, !dbg !1273
  %197 = icmp eq i32 %196, 0, !dbg !1273
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1275
  br i1 %197, label %338, label %333, !dbg !1275

; <label>:198:                                    ; preds = %181
  %199 = icmp sgt i32 %68, %2, !dbg !1276
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1279
  br i1 %199, label %333, label %200, !dbg !1279

; <label>:200:                                    ; preds = %198
  %201 = icmp slt i32 %162, %2, !dbg !1280
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1281
  br i1 %201, label %333, label %202, !dbg !1281

; <label>:202:                                    ; preds = %200
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1282
  br label %333, !dbg !1282

; <label>:203:                                    ; preds = %181, %181
  %204 = icmp slt i32 %162, %30, !dbg !1283
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1286
  br i1 %204, label %333, label %338, !dbg !1286

; <label>:205:                                    ; preds = %181, %181
  %206 = load %struct.lua_TValue*, %struct.lua_TValue** %54, align 8, !dbg !1287, !tbaa !1290
  %207 = sext i32 %162 to i64, !dbg !1287
  %208 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %206, i64 %207, i32 1, !dbg !1287
  %209 = load i32, i32* %208, align 8, !dbg !1287, !tbaa !562
  %210 = icmp eq i32 %209, 4, !dbg !1287
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1291
  br i1 %210, label %333, label %338, !dbg !1291

; <label>:211:                                    ; preds = %181
  %212 = add nuw nsw i32 %68, 1, !dbg !1292
  %213 = icmp ult i32 %212, %10, !dbg !1292
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1295
  br i1 %213, label %214, label %338, !dbg !1295

; <label>:214:                                    ; preds = %211
  %215 = icmp eq i32 %212, %2, !dbg !1296
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1298
  br i1 %215, label %216, label %333, !dbg !1298

; <label>:216:                                    ; preds = %214
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1299
  br label %333, !dbg !1299

; <label>:217:                                    ; preds = %181
  %218 = icmp slt i32 %162, %161, !dbg !1300
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1303
  br i1 %218, label %333, label %338, !dbg !1303

; <label>:219:                                    ; preds = %181
  %220 = icmp eq i32 %161, 0, !dbg !1304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1307
  br i1 %220, label %338, label %221, !dbg !1307

; <label>:221:                                    ; preds = %219
  %222 = add nuw nsw i32 %68, 2, !dbg !1308
  %223 = add nuw nsw i32 %161, %222, !dbg !1308
  %224 = icmp ult i32 %223, %10, !dbg !1308
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1310
  br i1 %224, label %225, label %338, !dbg !1310

; <label>:225:                                    ; preds = %221
  %226 = icmp sgt i32 %222, %2, !dbg !1311
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1313
  br i1 %226, label %333, label %227, !dbg !1313

; <label>:227:                                    ; preds = %225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1314
  br label %333, !dbg !1314

; <label>:228:                                    ; preds = %181, %181
  %229 = add nuw nsw i32 %68, 3, !dbg !1315
  %230 = icmp ult i32 %229, %10, !dbg !1315
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1317
  br i1 %230, label %231, label %338, !dbg !1317

; <label>:231:                                    ; preds = %228, %181
  %232 = add nsw i32 %61, 1, !dbg !1318
  %233 = add nsw i32 %232, %162, !dbg !1319
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1321
  br i1 %55, label %240, label %234, !dbg !1321

; <label>:234:                                    ; preds = %231
  %235 = icmp slt i32 %61, %233, !dbg !1323
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1324
  br i1 %235, label %236, label %240, !dbg !1324

; <label>:236:                                    ; preds = %234
  %237 = icmp sgt i32 %233, %1, !dbg !1325
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1326
  br i1 %237, label %240, label %238, !dbg !1326

; <label>:238:                                    ; preds = %236
  %239 = add nsw i32 %162, %61, !dbg !1327
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1328
  br label %240, !dbg !1328

; <label>:240:                                    ; preds = %236, %231, %238, %234
  %241 = phi i32 [ %239, %238 ], [ %61, %236 ], [ %61, %234 ], [ %61, %231 ], !dbg !1329
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %333

; <label>:242:                                    ; preds = %181, %181
  %243 = icmp eq i32 %162, 0, !dbg !1330
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1333
  br i1 %243, label %247, label %244, !dbg !1333

; <label>:244:                                    ; preds = %242
  %245 = add nsw i32 %162, %68, !dbg !1334
  %246 = icmp sgt i32 %245, %10, !dbg !1334
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1337
  br i1 %246, label %338, label %247, !dbg !1337

; <label>:247:                                    ; preds = %244, %242
  %248 = add nsw i32 %161, -1, !dbg !1338
  %249 = icmp eq i32 %161, 0, !dbg !1339
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1341
  br i1 %249, label %250, label %259, !dbg !1341

; <label>:250:                                    ; preds = %247
  %251 = add nsw i32 %61, 1, !dbg !1342
  %252 = sext i32 %251 to i64, !dbg !1342
  %253 = getelementptr inbounds i32, i32* %42, i64 %252, !dbg !1342
  %254 = load i32, i32* %253, align 4, !dbg !1342, !tbaa !871
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1347
  %255 = trunc i32 %254 to i6, !dbg !1347
  switch i6 %255, label %256 [
    i6 28, label %257
    i6 29, label %257
    i6 30, label %257
    i6 -30, label %257
  ], !dbg !1347

; <label>:256:                                    ; preds = %250
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1348
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1349
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1350
  br label %338, !dbg !1350

; <label>:257:                                    ; preds = %250, %250, %250, %250
  %258 = icmp ugt i32 %254, 8388607, !dbg !1351
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1352
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1353
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1349
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1350
  br i1 %258, label %338, label %264, !dbg !1350

; <label>:259:                                    ; preds = %247
  %260 = icmp eq i32 %248, 0, !dbg !1354
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1356
  br i1 %260, label %264, label %261, !dbg !1356

; <label>:261:                                    ; preds = %259
  %262 = add nsw i32 %248, %68, !dbg !1357
  %263 = icmp sgt i32 %262, %10, !dbg !1357
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1359
  br i1 %263, label %338, label %264, !dbg !1359

; <label>:264:                                    ; preds = %257, %261, %259
  %265 = icmp sgt i32 %68, %2, !dbg !1360
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1362
  br i1 %265, label %333, label %266, !dbg !1362

; <label>:266:                                    ; preds = %264
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1363
  br label %333, !dbg !1363

; <label>:267:                                    ; preds = %181
  %268 = icmp sgt i32 %162, 1, !dbg !1364
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1367
  br i1 %268, label %269, label %333, !dbg !1367

; <label>:269:                                    ; preds = %267
  %270 = add i32 %162, %68, !dbg !1368
  %271 = add i32 %270, -1, !dbg !1369
  %272 = icmp sgt i32 %271, %10, !dbg !1369
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1371
  br i1 %272, label %338, label %333, !dbg !1371

; <label>:273:                                    ; preds = %181
  %274 = icmp sgt i32 %162, 0, !dbg !1372
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1375
  br i1 %274, label %275, label %278, !dbg !1375

; <label>:275:                                    ; preds = %273
  %276 = add nsw i32 %162, %68, !dbg !1376
  %277 = icmp slt i32 %276, %10, !dbg !1376
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1378
  br i1 %277, label %278, label %338, !dbg !1378

; <label>:278:                                    ; preds = %275, %273
  %279 = icmp eq i32 %161, 0, !dbg !1379
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1381
  br i1 %279, label %280, label %333, !dbg !1381

; <label>:280:                                    ; preds = %278
  %281 = add nsw i32 %61, 1, !dbg !1382
  %282 = icmp slt i32 %281, %43, !dbg !1384
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1386
  br i1 %282, label %333, label %338, !dbg !1386

; <label>:283:                                    ; preds = %181
  %284 = load i32, i32* %56, align 8, !dbg !1387, !tbaa !1389
  %285 = icmp slt i32 %162, %284, !dbg !1387
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1390
  br i1 %285, label %287, label %286, !dbg !1390

; <label>:286:                                    ; preds = %283
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1387
  br label %339, !dbg !1387

; <label>:287:                                    ; preds = %283
  %288 = load %struct.Proto**, %struct.Proto*** %57, align 8, !dbg !1391, !tbaa !1392
  %289 = sext i32 %162 to i64, !dbg !1393
  %290 = getelementptr inbounds %struct.Proto*, %struct.Proto** %288, i64 %289, !dbg !1393
  %291 = load %struct.Proto*, %struct.Proto** %290, align 8, !dbg !1393, !tbaa !609
  %292 = getelementptr inbounds %struct.Proto, %struct.Proto* %291, i64 0, i32 19, !dbg !1394
  %293 = load i8, i8* %292, align 8, !dbg !1394, !tbaa !1116
  %294 = zext i8 %293 to i32, !dbg !1393
  %295 = add nsw i32 %61, %294, !dbg !1396
  %296 = icmp slt i32 %295, %5, !dbg !1396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1398
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1399
  br i1 %296, label %297, label %339, !dbg !1398

; <label>:297:                                    ; preds = %287
  %298 = icmp eq i8 %293, 0, !dbg !1401
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1402
  br i1 %298, label %312, label %299, !dbg !1402

; <label>:299:                                    ; preds = %297
  %300 = zext i8 %293 to i64, !dbg !1403
  br label %301, !dbg !1403

; <label>:301:                                    ; preds = %299, %309
  %302 = phi i64 [ 1, %299 ], [ %310, %309 ]
  %303 = add nsw i64 %302, %63, !dbg !1403
  %304 = getelementptr inbounds i32, i32* %42, i64 %303, !dbg !1403
  %305 = load i32, i32* %304, align 4, !dbg !1403, !tbaa !871
  %306 = and i32 %305, 59, !dbg !1403
  %307 = or i32 %306, 4, !dbg !1405
  %308 = icmp eq i32 %307, 4, !dbg !1405
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1405
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1407
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br i1 %308, label %309, label %339

; <label>:309:                                    ; preds = %301
  %310 = add nuw nsw i64 %302, 1, !dbg !1408
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1409
  %311 = icmp ult i64 %302, %300, !dbg !1401
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1402
  br i1 %311, label %301, label %312, !dbg !1402, !llvm.loop !1410

; <label>:312:                                    ; preds = %309, %297
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1412
  br i1 %55, label %314, label %313, !dbg !1412

; <label>:313:                                    ; preds = %312
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1413
  br label %314, !dbg !1413

; <label>:314:                                    ; preds = %313, %312
  %315 = phi i32 [ %295, %313 ], [ %61, %312 ], !dbg !1329
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1415
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %333

; <label>:316:                                    ; preds = %181
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1416
  br i1 %59, label %338, label %317, !dbg !1416

; <label>:317:                                    ; preds = %316
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1419
  br i1 %22, label %318, label %338, !dbg !1419

; <label>:318:                                    ; preds = %317
  %319 = icmp eq i32 %162, 0, !dbg !1420
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1422
  br i1 %319, label %320, label %329, !dbg !1422

; <label>:320:                                    ; preds = %318
  %321 = add nsw i32 %61, 1, !dbg !1423
  %322 = sext i32 %321 to i64, !dbg !1423
  %323 = getelementptr inbounds i32, i32* %42, i64 %322, !dbg !1423
  %324 = load i32, i32* %323, align 4, !dbg !1423, !tbaa !871
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1427
  %325 = trunc i32 %324 to i6, !dbg !1427
  switch i6 %325, label %326 [
    i6 28, label %327
    i6 29, label %327
    i6 30, label %327
    i6 -30, label %327
  ], !dbg !1427

; <label>:326:                                    ; preds = %320
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1428
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1429
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1430
  br label %338, !dbg !1430

; <label>:327:                                    ; preds = %320, %320, %320, %320
  %328 = icmp ugt i32 %324, 8388607, !dbg !1431
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1432
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1433
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1429
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1430
  br i1 %328, label %338, label %329, !dbg !1430

; <label>:329:                                    ; preds = %327, %318
  %330 = add i32 %162, %68, !dbg !1434
  %331 = add i32 %330, -1, !dbg !1435
  %332 = icmp sgt i32 %331, %10, !dbg !1435
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1437
  br i1 %332, label %338, label %333, !dbg !1437

; <label>:333:                                    ; preds = %240, %183, %202, %203, %205, %216, %214, %217, %227, %266, %267, %280, %278, %181, %329, %269, %264, %225, %198, %200, %188, %195, %314
  %334 = phi i32 [ %169, %181 ], [ %169, %329 ], [ %169, %314 ], [ %169, %280 ], [ %169, %278 ], [ %169, %269 ], [ %169, %267 ], [ %61, %266 ], [ %169, %264 ], [ %169, %240 ], [ %61, %227 ], [ %169, %225 ], [ %169, %217 ], [ %61, %216 ], [ %169, %214 ], [ %169, %205 ], [ %169, %203 ], [ %61, %202 ], [ %169, %200 ], [ %169, %198 ], [ %169, %188 ], [ %169, %195 ], [ %169, %183 ], !dbg !1438
  %335 = phi i32 [ %61, %181 ], [ %61, %329 ], [ %315, %314 ], [ %281, %280 ], [ %61, %278 ], [ %61, %269 ], [ %61, %267 ], [ %61, %266 ], [ %61, %264 ], [ %241, %240 ], [ %61, %227 ], [ %61, %225 ], [ %61, %217 ], [ %61, %216 ], [ %61, %214 ], [ %61, %205 ], [ %61, %203 ], [ %61, %202 ], [ %61, %200 ], [ %61, %198 ], [ %61, %188 ], [ %61, %195 ], [ %61, %183 ], !dbg !1329
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1439
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %336 = add nsw i32 %335, 1, !dbg !1440
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1441
  %337 = icmp slt i32 %336, %1, !dbg !1132
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1133
  br i1 %337, label %60, label %340, !dbg !1133, !llvm.loop !1442

; <label>:338:                                    ; preds = %329, %327, %316, %317, %280, %275, %269, %261, %257, %244, %228, %221, %219, %217, %211, %205, %203, %195, %185, %174, %171, %119, %70, %60, %326, %256, %114, %96, %133
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %344

; <label>:339:                                    ; preds = %287, %155, %301, %286
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %344

; <label>:340:                                    ; preds = %333
  %341 = sext i32 %334 to i64
  %342 = getelementptr inbounds i32, i32* %42, i64 %341
  %343 = load i32, i32* %342, align 4, !dbg !1444, !tbaa !871
  br label %344, !dbg !1444

; <label>:344:                                    ; preds = %50, %340, %339, %338, %49
  %345 = phi i32 [ 0, %339 ], [ 0, %49 ], [ 0, %338 ], [ %46, %50 ], [ %343, %340 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1445
  ret i32 %345, !dbg !1445
}

; Function Attrs: noredzone nounwind
define hidden void @luaG_typeerror(%struct.lua_State*, %struct.lua_TValue*, i8*) local_unnamed_addr #0 !dbg !1446 {
  %4 = alloca i8*, align 8
  %5 = bitcast i8** %4 to i8*, !dbg !1459
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #4, !dbg !1459
  store i8* null, i8** %4, align 8, !dbg !1460, !tbaa !609
  %6 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1, i64 0, i32 1, !dbg !1461
  %7 = load i32, i32* %6, align 8, !dbg !1461, !tbaa !562
  %8 = sext i32 %7 to i64, !dbg !1462
  %9 = getelementptr inbounds [0 x i8*], [0 x i8*]* @luaT_typenames, i64 0, i64 %8, !dbg !1462
  %10 = load i8*, i8** %9, align 8, !dbg !1462, !tbaa !609
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1464
  %12 = load %struct.CallInfo*, %struct.CallInfo** %11, align 8, !dbg !1464, !tbaa !469
  %13 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %12, i64 0, i32 0, !dbg !1475
  %14 = load %struct.lua_TValue*, %struct.lua_TValue** %13, align 8, !dbg !1475, !tbaa !602
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1478
  %15 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %12, i64 0, i32 2, !dbg !1479
  %16 = load %struct.lua_TValue*, %struct.lua_TValue** %15, align 8, !dbg !1479, !tbaa !1481
  %17 = icmp ult %struct.lua_TValue* %14, %16, !dbg !1482
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1483
  br i1 %17, label %18, label %24, !dbg !1483

; <label>:18:                                     ; preds = %3, %21
  %19 = phi %struct.lua_TValue* [ %22, %21 ], [ %14, %3 ]
  %20 = icmp eq %struct.lua_TValue* %19, %1, !dbg !1484
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1486
  br i1 %20, label %25, label %21, !dbg !1486

; <label>:21:                                     ; preds = %18
  %22 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %19, i64 1, !dbg !1487
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1488
  %23 = icmp ult %struct.lua_TValue* %22, %16, !dbg !1482
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1483
  br i1 %23, label %18, label %24, !dbg !1483, !llvm.loop !1489

; <label>:24:                                     ; preds = %21, %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1492
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1493
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1494
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1496
  br label %37, !dbg !1496

; <label>:25:                                     ; preds = %18
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1497
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1493
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1494
  %26 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !1498
  %27 = bitcast %struct.lua_TValue** %26 to i64*, !dbg !1498
  %28 = load i64, i64* %27, align 8, !dbg !1498, !tbaa !1499
  %29 = ptrtoint %struct.lua_TValue* %1 to i64, !dbg !1498
  %30 = sub i64 %29, %28, !dbg !1498
  %31 = lshr exact i64 %30, 4, !dbg !1498
  %32 = trunc i64 %31 to i32, !dbg !1498
  %33 = call fastcc i8* @getobjname(%struct.lua_State* %0, %struct.CallInfo* %12, i32 %32, i8** nonnull %4) #6, !dbg !1500
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1494
  %34 = icmp eq i8* %33, null, !dbg !1501
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1496
  br i1 %34, label %37, label %35, !dbg !1496

; <label>:35:                                     ; preds = %25
  %36 = load i8*, i8** %4, align 8, !dbg !1503, !tbaa !609
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %2, i8* nonnull %33, i8* %36, i8* %10) #6, !dbg !1504
  br label %38, !dbg !1504

; <label>:37:                                     ; preds = %24, %25
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %2, i8* %10) #6, !dbg !1505
  br label %38

; <label>:38:                                     ; preds = %37, %35
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #4, !dbg !1506
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1506
  ret void, !dbg !1506
}

; Function Attrs: noredzone nounwind
define internal fastcc i8* @getobjname(%struct.lua_State* nocapture readonly, %struct.CallInfo*, i32, i8** nocapture) unnamed_addr #0 !dbg !1507 {
  %5 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 1, !dbg !1536
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8, !dbg !1536, !tbaa !484
  %7 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 0, i32 1, !dbg !1536
  %8 = load i32, i32* %7, align 8, !dbg !1536, !tbaa !562
  %9 = icmp eq i32 %8, 6, !dbg !1536
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1536
  br i1 %9, label %10, label %128, !dbg !1536

; <label>:10:                                     ; preds = %4
  %11 = bitcast %struct.lua_TValue* %6 to %union.Closure**, !dbg !1536
  %12 = load %union.Closure*, %union.Closure** %11, align 8, !dbg !1536, !tbaa !486
  %13 = getelementptr inbounds %union.Closure, %union.Closure* %12, i64 0, i32 0, i32 3, !dbg !1536
  %14 = load i8, i8* %13, align 2, !dbg !1536, !tbaa !486
  %15 = icmp eq i8 %14, 0, !dbg !1536
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1537
  br i1 %15, label %16, label %128, !dbg !1537

; <label>:16:                                     ; preds = %10
  %17 = getelementptr inbounds %union.Closure, %union.Closure* %12, i64 0, i32 0, i32 7, !dbg !1538
  %18 = bitcast i32 (%struct.lua_State*)** %17 to %struct.Proto**, !dbg !1538
  %19 = load %struct.Proto*, %struct.Proto** %18, align 8, !dbg !1538, !tbaa !486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1543
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1544
  %20 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1545
  %21 = load %struct.CallInfo*, %struct.CallInfo** %20, align 8, !dbg !1545, !tbaa !469
  %22 = icmp eq %struct.CallInfo* %21, %1, !dbg !1546
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1547
  br i1 %22, label %28, label %23, !dbg !1547

; <label>:23:                                     ; preds = %16
  %24 = bitcast %union.Closure* %12 to %struct.LClosure*, !dbg !1544
  %25 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 3
  %26 = bitcast i32** %25 to i64*
  %27 = load i64, i64* %26, align 8, !dbg !1548, !tbaa !585
  br label %36, !dbg !1547

; <label>:28:                                     ; preds = %16
  %29 = bitcast %struct.lua_TValue* %6 to %struct.LClosure**, !dbg !1543
  %30 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8, !dbg !1549
  %31 = bitcast i32** %30 to i64*, !dbg !1549
  %32 = load i64, i64* %31, align 8, !dbg !1549, !tbaa !587
  %33 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 3, !dbg !1550
  %34 = bitcast i32** %33 to i64*, !dbg !1551
  store i64 %32, i64* %34, align 8, !dbg !1551, !tbaa !585
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1552
  %35 = load %struct.LClosure*, %struct.LClosure** %29, align 8, !dbg !1548, !tbaa !486
  br label %36, !dbg !1552

; <label>:36:                                     ; preds = %23, %28
  %37 = phi %struct.LClosure* [ %24, %23 ], [ %35, %28 ], !dbg !1548
  %38 = phi i64 [ %27, %23 ], [ %32, %28 ], !dbg !1548
  %39 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %37, i64 0, i32 7, !dbg !1548
  %40 = load %struct.Proto*, %struct.Proto** %39, align 8, !dbg !1548, !tbaa !486
  %41 = getelementptr inbounds %struct.Proto, %struct.Proto* %40, i64 0, i32 4, !dbg !1548
  %42 = bitcast i32** %41 to i64*, !dbg !1548
  %43 = load i64, i64* %42, align 8, !dbg !1548, !tbaa !591
  %44 = sub i64 %38, %43, !dbg !1548
  %45 = lshr exact i64 %44, 2, !dbg !1548
  %46 = trunc i64 %45 to i32, !dbg !1548
  %47 = add nsw i32 %46, -1, !dbg !1548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1553
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1554
  %48 = add nsw i32 %2, 1, !dbg !1556
  %49 = tail call i8* @luaF_getlocalname(%struct.Proto* %19, i32 %48, i32 %47) #5, !dbg !1557
  store i8* %49, i8** %3, align 8, !dbg !1558, !tbaa !609
  %50 = icmp eq i8* %49, null, !dbg !1559
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1561
  br i1 %50, label %51, label %125, !dbg !1561

; <label>:51:                                     ; preds = %36
  %52 = tail call fastcc i32 @symbexec(%struct.Proto* %19, i32 %47, i32 %2) #6, !dbg !1562
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1564
  %53 = trunc i32 %52 to i6, !dbg !1564
  switch i6 %53, label %127 [
    i6 5, label %54
    i6 0, label %64
    i6 6, label %72
    i6 4, label %92
    i6 11, label %105
  ], !dbg !1564

; <label>:54:                                     ; preds = %51
  %55 = lshr i32 %52, 14, !dbg !1565
  %56 = getelementptr inbounds %struct.Proto, %struct.Proto* %19, i64 0, i32 3, !dbg !1567
  %57 = load %struct.lua_TValue*, %struct.lua_TValue** %56, align 8, !dbg !1567, !tbaa !1290
  %58 = zext i32 %55 to i64, !dbg !1567
  %59 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %57, i64 %58, i32 0, i32 0, !dbg !1567
  %60 = bitcast %union.GCObject** %59 to %union.TString**, !dbg !1567
  %61 = load %union.TString*, %union.TString** %60, align 8, !dbg !1567, !tbaa !486
  %62 = getelementptr inbounds %union.TString, %union.TString* %61, i64 1, !dbg !1567
  %63 = bitcast i8** %3 to %union.TString**, !dbg !1568
  store %union.TString* %62, %union.TString** %63, align 8, !dbg !1568, !tbaa !609
  br label %125

; <label>:64:                                     ; preds = %51
  %65 = lshr i32 %52, 6, !dbg !1569
  %66 = and i32 %65, 255, !dbg !1569
  %67 = lshr i32 %52, 23, !dbg !1571
  %68 = icmp ult i32 %67, %66, !dbg !1573
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1575
  br i1 %68, label %70, label %69, !dbg !1575

; <label>:69:                                     ; preds = %64
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1576
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %127

; <label>:70:                                     ; preds = %64
  %71 = tail call fastcc i8* @getobjname(%struct.lua_State* nonnull %0, %struct.CallInfo* nonnull %1, i32 %67, i8** nonnull %3) #6, !dbg !1577
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1578
  br label %125

; <label>:72:                                     ; preds = %51
  %73 = and i32 %52, 4194304, !dbg !1587
  %74 = icmp eq i32 %73, 0, !dbg !1587
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1589
  br i1 %74, label %90, label %75, !dbg !1589

; <label>:75:                                     ; preds = %72
  %76 = lshr i32 %52, 14, !dbg !1590
  %77 = getelementptr inbounds %struct.Proto, %struct.Proto* %19, i64 0, i32 3, !dbg !1593
  %78 = load %struct.lua_TValue*, %struct.lua_TValue** %77, align 8, !dbg !1593, !tbaa !1290
  %79 = and i32 %76, 255, !dbg !1593
  %80 = zext i32 %79 to i64, !dbg !1593
  %81 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %78, i64 %80, i32 1, !dbg !1593
  %82 = load i32, i32* %81, align 8, !dbg !1593, !tbaa !562
  %83 = icmp eq i32 %82, 4, !dbg !1593
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1594
  br i1 %83, label %84, label %90, !dbg !1594

; <label>:84:                                     ; preds = %75
  %85 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %78, i64 %80, i32 0, i32 0, !dbg !1595
  %86 = bitcast %union.GCObject** %85 to %union.TString**, !dbg !1595
  %87 = load %union.TString*, %union.TString** %86, align 8, !dbg !1595, !tbaa !486
  %88 = getelementptr inbounds %union.TString, %union.TString* %87, i64 1, !dbg !1595
  %89 = bitcast %union.TString* %88 to i8*, !dbg !1595
  br label %90, !dbg !1596

; <label>:90:                                     ; preds = %72, %75, %84
  %91 = phi i8* [ %89, %84 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), %75 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), %72 ], !dbg !1597
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1598
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1599
  store i8* %91, i8** %3, align 8, !dbg !1600, !tbaa !609
  br label %125

; <label>:92:                                     ; preds = %51
  %93 = getelementptr inbounds %struct.Proto, %struct.Proto* %19, i64 0, i32 8, !dbg !1601
  %94 = load %union.TString**, %union.TString*** %93, align 8, !dbg !1601, !tbaa !1602
  %95 = icmp eq %union.TString** %94, null, !dbg !1603
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1603
  br i1 %95, label %103, label %96, !dbg !1603

; <label>:96:                                     ; preds = %92
  %97 = lshr i32 %52, 23, !dbg !1604
  %98 = zext i32 %97 to i64, !dbg !1606
  %99 = getelementptr inbounds %union.TString*, %union.TString** %94, i64 %98, !dbg !1606
  %100 = load %union.TString*, %union.TString** %99, align 8, !dbg !1606, !tbaa !609
  %101 = getelementptr inbounds %union.TString, %union.TString* %100, i64 1, !dbg !1606
  %102 = bitcast %union.TString* %101 to i8*, !dbg !1606
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1603
  br label %103, !dbg !1603

; <label>:103:                                    ; preds = %92, %96
  %104 = phi i8* [ %102, %96 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), %92 ], !dbg !1603
  store i8* %104, i8** %3, align 8, !dbg !1607, !tbaa !609
  br label %125

; <label>:105:                                    ; preds = %51
  %106 = and i32 %52, 4194304, !dbg !1610
  %107 = icmp eq i32 %106, 0, !dbg !1610
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1611
  br i1 %107, label %123, label %108, !dbg !1611

; <label>:108:                                    ; preds = %105
  %109 = lshr i32 %52, 14, !dbg !1612
  %110 = getelementptr inbounds %struct.Proto, %struct.Proto* %19, i64 0, i32 3, !dbg !1615
  %111 = load %struct.lua_TValue*, %struct.lua_TValue** %110, align 8, !dbg !1615, !tbaa !1290
  %112 = and i32 %109, 255, !dbg !1615
  %113 = zext i32 %112 to i64, !dbg !1615
  %114 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %111, i64 %113, i32 1, !dbg !1615
  %115 = load i32, i32* %114, align 8, !dbg !1615, !tbaa !562
  %116 = icmp eq i32 %115, 4, !dbg !1615
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1616
  br i1 %116, label %117, label %123, !dbg !1616

; <label>:117:                                    ; preds = %108
  %118 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %111, i64 %113, i32 0, i32 0, !dbg !1617
  %119 = bitcast %union.GCObject** %118 to %union.TString**, !dbg !1617
  %120 = load %union.TString*, %union.TString** %119, align 8, !dbg !1617, !tbaa !486
  %121 = getelementptr inbounds %union.TString, %union.TString* %120, i64 1, !dbg !1617
  %122 = bitcast %union.TString* %121 to i8*, !dbg !1617
  br label %123, !dbg !1618

; <label>:123:                                    ; preds = %105, %108, %117
  %124 = phi i8* [ %122, %117 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), %108 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), %105 ], !dbg !1619
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1620
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1621
  store i8* %124, i8** %3, align 8, !dbg !1622, !tbaa !609
  br label %125

; <label>:125:                                    ; preds = %36, %123, %103, %90, %70, %54
  %126 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), %54 ], [ %71, %70 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), %90 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), %103 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0), %123 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), %36 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %128

; <label>:127:                                    ; preds = %51, %69
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1623
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %128

; <label>:128:                                    ; preds = %4, %10, %127, %125
  %129 = phi i8* [ %126, %125 ], [ null, %127 ], [ null, %10 ], [ null, %4 ], !dbg !1624
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1625
  ret i8* %129, !dbg !1625
}

; Function Attrs: noredzone nounwind
define hidden void @luaG_runerror(%struct.lua_State*, i8*, ...) local_unnamed_addr #0 !dbg !1626 {
  %3 = alloca [60 x i8], align 16
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  %5 = bitcast [1 x %struct.__va_list_tag]* %4 to i8*, !dbg !1658
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #4, !dbg !1658
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, !dbg !1660
  call void @llvm.va_start(i8* nonnull %5), !dbg !1660
  %7 = call i8* @luaO_pushvfstring(%struct.lua_State* %0, i8* %1, %struct.__va_list_tag* nonnull %6) #5, !dbg !1661
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1664
  %9 = load %struct.CallInfo*, %struct.CallInfo** %8, align 8, !dbg !1664, !tbaa !469
  %10 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %9, i64 0, i32 1, !dbg !1666
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !1666, !tbaa !484
  %12 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %11, i64 0, i32 1, !dbg !1666
  %13 = load i32, i32* %12, align 8, !dbg !1666, !tbaa !562
  %14 = icmp eq i32 %13, 6, !dbg !1666
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1666
  br i1 %14, label %15, label %62, !dbg !1666

; <label>:15:                                     ; preds = %2
  %16 = bitcast %struct.lua_TValue* %11 to %struct.CClosure**, !dbg !1666
  %17 = load %struct.CClosure*, %struct.CClosure** %16, align 8, !dbg !1666, !tbaa !486
  %18 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %17, i64 0, i32 3, !dbg !1666
  %19 = load i8, i8* %18, align 2, !dbg !1666, !tbaa !486
  %20 = icmp eq i8 %19, 0, !dbg !1666
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1667
  br i1 %20, label %21, label %62, !dbg !1667

; <label>:21:                                     ; preds = %15
  %22 = getelementptr inbounds [60 x i8], [60 x i8]* %3, i64 0, i64 0, !dbg !1668
  call void @llvm.lifetime.start.p0i8(i64 60, i8* nonnull %22) #4, !dbg !1668
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1675
  %23 = bitcast %struct.lua_TValue* %11 to %struct.LClosure**, !dbg !1675
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1676
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1677
  %24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8, !dbg !1678
  %25 = bitcast i32** %24 to i64*, !dbg !1678
  %26 = load i64, i64* %25, align 8, !dbg !1678, !tbaa !587
  %27 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %9, i64 0, i32 3, !dbg !1679
  %28 = bitcast i32** %27 to i64*, !dbg !1680
  store i64 %26, i64* %28, align 8, !dbg !1680, !tbaa !585
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1681
  %29 = load %struct.LClosure*, %struct.LClosure** %23, align 8, !dbg !1682, !tbaa !486
  %30 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %29, i64 0, i32 7, !dbg !1682
  %31 = load %struct.Proto*, %struct.Proto** %30, align 8, !dbg !1682, !tbaa !486
  %32 = getelementptr inbounds %struct.Proto, %struct.Proto* %31, i64 0, i32 4, !dbg !1682
  %33 = bitcast i32** %32 to i64*, !dbg !1682
  %34 = load i64, i64* %33, align 8, !dbg !1682, !tbaa !591
  %35 = sub i64 %26, %34, !dbg !1682
  %36 = lshr exact i64 %35, 2, !dbg !1682
  %37 = trunc i64 %36 to i32, !dbg !1682
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1683
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1684
  %38 = icmp slt i32 %37, 1, !dbg !1686
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1687
  br i1 %38, label %49, label %39, !dbg !1687

; <label>:39:                                     ; preds = %21
  %40 = getelementptr inbounds %struct.Proto, %struct.Proto* %31, i64 0, i32 6, !dbg !1688
  %41 = load i32*, i32** %40, align 8, !dbg !1688, !tbaa !870
  %42 = icmp eq i32* %41, null, !dbg !1688
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1688
  br i1 %42, label %49, label %43, !dbg !1688

; <label>:43:                                     ; preds = %39
  %44 = shl i64 %35, 30, !dbg !1688
  %45 = add i64 %44, -4294967296, !dbg !1688
  %46 = ashr exact i64 %45, 32, !dbg !1688
  %47 = getelementptr inbounds i32, i32* %41, i64 %46, !dbg !1688
  %48 = load i32, i32* %47, align 4, !dbg !1688, !tbaa !871
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1688
  br label %49, !dbg !1688

; <label>:49:                                     ; preds = %39, %43, %21
  %50 = phi i32 [ -1, %21 ], [ %48, %43 ], [ 0, %39 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1689
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1690
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1691
  %51 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %29, i64 0, i32 3, !dbg !1691
  %52 = load i8, i8* %51, align 2, !dbg !1691, !tbaa !486
  %53 = icmp eq i8 %52, 0, !dbg !1691
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1691
  br i1 %53, label %54, label %55, !dbg !1691

; <label>:54:                                     ; preds = %49
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1691
  br label %55, !dbg !1691

; <label>:55:                                     ; preds = %54, %49
  %56 = phi %struct.Proto* [ %31, %54 ], [ null, %49 ], !dbg !1691
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1693
  %57 = getelementptr inbounds %struct.Proto, %struct.Proto* %56, i64 0, i32 9, !dbg !1694
  %58 = load %union.TString*, %union.TString** %57, align 8, !dbg !1694, !tbaa !823
  %59 = getelementptr inbounds %union.TString, %union.TString* %58, i64 1, !dbg !1694
  %60 = bitcast %union.TString* %59 to i8*, !dbg !1694
  call void @luaO_chunkid(i8* nonnull %22, i8* nonnull %60, i64 60) #5, !dbg !1695
  %61 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0), i8* nonnull %22, i32 %50, i8* %7) #5, !dbg !1696
  call void @llvm.lifetime.end.p0i8(i64 60, i8* nonnull %22) #4, !dbg !1697
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1698
  br label %62, !dbg !1698

; <label>:62:                                     ; preds = %2, %15, %55
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1699
  call void @llvm.va_end(i8* nonnull %5), !dbg !1700
  call void @luaG_errormsg(%struct.lua_State* nonnull %0) #6, !dbg !1701
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #4, !dbg !1702
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1702
  ret void, !dbg !1702
}

; Function Attrs: noredzone nounwind
define hidden void @luaG_concaterror(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*) local_unnamed_addr #0 !dbg !1703 {
  %4 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1, i64 0, i32 1, !dbg !1713
  %5 = load i32, i32* %4, align 8, !dbg !1713, !tbaa !562
  %6 = icmp eq i32 %5, 4, !dbg !1713
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1715
  br i1 %6, label %9, label %7, !dbg !1715

; <label>:7:                                      ; preds = %3
  %8 = icmp eq i32 %5, 3, !dbg !1716
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1717
  br i1 %8, label %9, label %10, !dbg !1717

; <label>:9:                                      ; preds = %7, %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1718
  br label %10, !dbg !1718

; <label>:10:                                     ; preds = %9, %7
  %11 = phi %struct.lua_TValue* [ %2, %9 ], [ %1, %7 ]
  tail call void @luaG_typeerror(%struct.lua_State* %0, %struct.lua_TValue* %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !1719
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1720
  ret void, !dbg !1720
}

; Function Attrs: noredzone nounwind
define hidden void @luaG_aritherror(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*) local_unnamed_addr #0 !dbg !1721 {
  %4 = alloca %struct.lua_TValue, align 8
  %5 = bitcast %struct.lua_TValue* %4 to i8*, !dbg !1732
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #4, !dbg !1732
  %6 = call %struct.lua_TValue* @luaV_tonumber(%struct.lua_TValue* %1, %struct.lua_TValue* nonnull %4) #5, !dbg !1734
  %7 = icmp eq %struct.lua_TValue* %6, null, !dbg !1736
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1737
  br i1 %7, label %8, label %9, !dbg !1737

; <label>:8:                                      ; preds = %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1738
  br label %9, !dbg !1738

; <label>:9:                                      ; preds = %8, %3
  %10 = phi %struct.lua_TValue* [ %1, %8 ], [ %2, %3 ]
  call void @luaG_typeerror(%struct.lua_State* %0, %struct.lua_TValue* %10, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !1739
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #4, !dbg !1740
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1740
  ret void, !dbg !1740
}

; Function Attrs: noredzone
declare hidden %struct.lua_TValue* @luaV_tonumber(%struct.lua_TValue*, %struct.lua_TValue*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define hidden i32 @luaG_ordererror(%struct.lua_State*, %struct.lua_TValue* nocapture readonly, %struct.lua_TValue* nocapture readonly) local_unnamed_addr #0 !dbg !1741 {
  %4 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1, i64 0, i32 1, !dbg !1753
  %5 = load i32, i32* %4, align 8, !dbg !1753, !tbaa !562
  %6 = sext i32 %5 to i64, !dbg !1754
  %7 = getelementptr inbounds [0 x i8*], [0 x i8*]* @luaT_typenames, i64 0, i64 %6, !dbg !1754
  %8 = load i8*, i8** %7, align 8, !dbg !1754, !tbaa !609
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i64 0, i32 1, !dbg !1756
  %10 = load i32, i32* %9, align 8, !dbg !1756, !tbaa !562
  %11 = sext i32 %10 to i64, !dbg !1757
  %12 = getelementptr inbounds [0 x i8*], [0 x i8*]* @luaT_typenames, i64 0, i64 %11, !dbg !1757
  %13 = load i8*, i8** %12, align 8, !dbg !1757, !tbaa !609
  %14 = getelementptr inbounds i8, i8* %8, i64 2, !dbg !1759
  %15 = load i8, i8* %14, align 1, !dbg !1759, !tbaa !486
  %16 = getelementptr inbounds i8, i8* %13, i64 2, !dbg !1761
  %17 = load i8, i8* %16, align 1, !dbg !1761, !tbaa !486
  %18 = icmp eq i8 %15, %17, !dbg !1762
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1763
  br i1 %18, label %19, label %20, !dbg !1763

; <label>:19:                                     ; preds = %3
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* %8) #6, !dbg !1764
  br label %21, !dbg !1764

; <label>:20:                                     ; preds = %3
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8* %8, i8* %13) #6, !dbg !1765
  br label %21

; <label>:21:                                     ; preds = %20, %19
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1766
  ret i32 0, !dbg !1766
}

; Function Attrs: noredzone nounwind
define hidden void @luaG_errormsg(%struct.lua_State*) local_unnamed_addr #0 !dbg !1767 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 27, !dbg !1782
  %3 = load i64, i64* %2, align 8, !dbg !1782, !tbaa !1783
  %4 = icmp eq i64 %3, 0, !dbg !1784
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1785
  br i1 %4, label %46, label %5, !dbg !1785

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 10, !dbg !1786
  %7 = bitcast %struct.lua_TValue** %6 to i8**, !dbg !1786
  %8 = load i8*, i8** %7, align 8, !dbg !1786, !tbaa !1787
  %9 = getelementptr inbounds i8, i8* %8, i64 %3, !dbg !1786
  %10 = getelementptr inbounds i8, i8* %9, i64 8, !dbg !1789
  %11 = bitcast i8* %10 to i32*, !dbg !1789
  %12 = load i32, i32* %11, align 8, !dbg !1789, !tbaa !562
  %13 = icmp eq i32 %12, 6, !dbg !1789
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1791
  br i1 %13, label %15, label %14, !dbg !1791

; <label>:14:                                     ; preds = %5
  tail call void @luaD_throw(%struct.lua_State* nonnull %0, i32 5) #5, !dbg !1792
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1792
  br label %15, !dbg !1792

; <label>:15:                                     ; preds = %14, %5
  %16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1793
  %17 = load %struct.lua_TValue*, %struct.lua_TValue** %16, align 8, !dbg !1793, !tbaa !698
  %18 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %17, i64 -1, !dbg !1793
  %19 = bitcast %struct.lua_TValue* %18 to i64*, !dbg !1793
  %20 = bitcast %struct.lua_TValue* %17 to i64*, !dbg !1793
  %21 = load i64, i64* %19, align 8, !dbg !1793
  store i64 %21, i64* %20, align 8, !dbg !1793
  %22 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %17, i64 -1, i32 1, !dbg !1793
  %23 = load i32, i32* %22, align 8, !dbg !1793, !tbaa !562
  %24 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %17, i64 0, i32 1, !dbg !1793
  store i32 %23, i32* %24, align 8, !dbg !1793, !tbaa !562
  %25 = load %struct.lua_TValue*, %struct.lua_TValue** %16, align 8, !dbg !1794, !tbaa !698
  %26 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %25, i64 -1, !dbg !1794
  %27 = bitcast i8* %9 to i64*, !dbg !1794
  %28 = bitcast %struct.lua_TValue* %26 to i64*, !dbg !1794
  %29 = load i64, i64* %27, align 8, !dbg !1794
  store i64 %29, i64* %28, align 8, !dbg !1794
  %30 = load i32, i32* %11, align 8, !dbg !1794, !tbaa !562
  %31 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %25, i64 -1, i32 1, !dbg !1794
  store i32 %30, i32* %31, align 8, !dbg !1794, !tbaa !562
  %32 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 9, !dbg !1795
  %33 = bitcast %struct.lua_TValue** %32 to i64*, !dbg !1795
  %34 = load i64, i64* %33, align 8, !dbg !1795, !tbaa !962
  %35 = bitcast %struct.lua_TValue** %16 to i64*, !dbg !1795
  %36 = load i64, i64* %35, align 8, !dbg !1795, !tbaa !698
  %37 = sub i64 %34, %36, !dbg !1795
  %38 = icmp slt i64 %37, 17, !dbg !1795
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1798
  %39 = inttoptr i64 %36 to %struct.lua_TValue*, !dbg !1798
  br i1 %38, label %40, label %42, !dbg !1798

; <label>:40:                                     ; preds = %15
  tail call void @luaD_growstack(%struct.lua_State* nonnull %0, i32 1) #5, !dbg !1795
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1795
  %41 = load %struct.lua_TValue*, %struct.lua_TValue** %16, align 8, !dbg !1798, !tbaa !698
  br label %42, !dbg !1795

; <label>:42:                                     ; preds = %15, %40
  %43 = phi %struct.lua_TValue* [ %39, %15 ], [ %41, %40 ], !dbg !1798
  %44 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %43, i64 1, !dbg !1798
  store %struct.lua_TValue* %44, %struct.lua_TValue** %16, align 8, !dbg !1798, !tbaa !698
  %45 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %43, i64 -1, !dbg !1799
  tail call void @luaD_call(%struct.lua_State* nonnull %0, %struct.lua_TValue* nonnull %45, i32 1) #5, !dbg !1800
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1801
  br label %46, !dbg !1801

; <label>:46:                                     ; preds = %1, %42
  tail call void @luaD_throw(%struct.lua_State* nonnull %0, i32 2) #5, !dbg !1802
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1803
  ret void, !dbg !1803
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
!411 = !DILocation(line: 60, column: 3, scope: !412)
!412 = distinct !DILexicalBlock(scope: !408, file: !1, line: 57, column: 34)
!413 = !DILocation(line: 61, column: 6, scope: !395)
!414 = !DILocation(line: 61, column: 11, scope: !395)
!415 = !{!416, !417, i64 112}
!416 = !{!"lua_State", !417, i64 0, !418, i64 8, !418, i64 9, !418, i64 10, !417, i64 16, !417, i64 24, !417, i64 32, !417, i64 40, !417, i64 48, !417, i64 56, !417, i64 64, !417, i64 72, !417, i64 80, !420, i64 88, !420, i64 92, !421, i64 96, !421, i64 98, !418, i64 100, !418, i64 101, !420, i64 104, !420, i64 108, !417, i64 112, !422, i64 120, !422, i64 136, !417, i64 152, !417, i64 160, !417, i64 168, !423, i64 176}
!417 = !{!"any pointer", !418, i64 0}
!418 = !{!"omnipotent char", !419, i64 0}
!419 = !{!"Simple C/C++ TBAA"}
!420 = !{!"int", !418, i64 0}
!421 = !{!"short", !418, i64 0}
!422 = !{!"lua_TValue", !418, i64 0, !420, i64 8}
!423 = !{!"long", !418, i64 0}
!424 = !DILocation(line: 62, column: 6, scope: !395)
!425 = !DILocation(line: 62, column: 20, scope: !395)
!426 = !{!416, !420, i64 104}
!427 = !DILocation(line: 63, column: 3, scope: !395)
!428 = !{!416, !420, i64 108}
!429 = !DILocation(line: 64, column: 17, scope: !395)
!430 = !DILocation(line: 64, column: 6, scope: !395)
!431 = !DILocation(line: 64, column: 15, scope: !395)
!432 = !{!416, !418, i64 100}
!433 = !DILocation(line: 65, column: 3, scope: !395)
!434 = distinct !DISubprogram(name: "lua_gethook", scope: !1, file: !1, line: 69, type: !435, isLocal: false, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !437)
!435 = !DISubroutineType(types: !436)
!436 = !{!297, !179}
!437 = !{!438}
!438 = !DILocalVariable(name: "L", arg: 1, scope: !434, file: !1, line: 69, type: !179)
!439 = !DILocation(line: 69, column: 42, scope: !434)
!440 = !DILocation(line: 70, column: 13, scope: !434)
!441 = !DILocation(line: 70, column: 3, scope: !434)
!442 = distinct !DISubprogram(name: "lua_gethookmask", scope: !1, file: !1, line: 74, type: !177, isLocal: false, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !443)
!443 = !{!444}
!444 = !DILocalVariable(name: "L", arg: 1, scope: !442, file: !1, line: 74, type: !179)
!445 = !DILocation(line: 74, column: 41, scope: !442)
!446 = !DILocation(line: 75, column: 13, scope: !442)
!447 = !DILocation(line: 75, column: 10, scope: !442)
!448 = !DILocation(line: 75, column: 3, scope: !442)
!449 = distinct !DISubprogram(name: "lua_gethookcount", scope: !1, file: !1, line: 79, type: !177, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !450)
!450 = !{!451}
!451 = !DILocalVariable(name: "L", arg: 1, scope: !449, file: !1, line: 79, type: !179)
!452 = !DILocation(line: 79, column: 42, scope: !449)
!453 = !DILocation(line: 80, column: 13, scope: !449)
!454 = !DILocation(line: 80, column: 3, scope: !449)
!455 = distinct !DISubprogram(name: "lua_getstack", scope: !1, file: !1, line: 84, type: !456, isLocal: false, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !458)
!456 = !DISubroutineType(types: !457)
!457 = !{!61, !179, !61, !301}
!458 = !{!459, !460, !461, !462, !463}
!459 = !DILocalVariable(name: "L", arg: 1, scope: !455, file: !1, line: 84, type: !179)
!460 = !DILocalVariable(name: "level", arg: 2, scope: !455, file: !1, line: 84, type: !61)
!461 = !DILocalVariable(name: "ar", arg: 3, scope: !455, file: !1, line: 84, type: !301)
!462 = !DILocalVariable(name: "status", scope: !455, file: !1, line: 85, type: !61)
!463 = !DILocalVariable(name: "ci", scope: !455, file: !1, line: 86, type: !269)
!464 = !DILocation(line: 84, column: 38, scope: !455)
!465 = !DILocation(line: 84, column: 45, scope: !455)
!466 = !DILocation(line: 84, column: 63, scope: !455)
!467 = !DILocation(line: 88, column: 16, scope: !468)
!468 = distinct !DILexicalBlock(scope: !455, file: !1, line: 88, column: 3)
!469 = !{!416, !417, i64 40}
!470 = !DILocation(line: 86, column: 13, scope: !455)
!471 = !DILocation(line: 88, column: 8, scope: !468)
!472 = !DILocation(line: 88, column: 26, scope: !473)
!473 = distinct !DILexicalBlock(scope: !468, file: !1, line: 88, column: 3)
!474 = !DILocation(line: 88, column: 30, scope: !473)
!475 = !{!416, !417, i64 80}
!476 = !DILocation(line: 88, column: 36, scope: !473)
!477 = !DILocation(line: 88, column: 3, scope: !468)
!478 = !DILocation(line: 93, column: 18, scope: !479)
!479 = distinct !DILexicalBlock(scope: !455, file: !1, line: 93, column: 7)
!480 = !DILocation(line: 89, column: 10, scope: !481)
!481 = distinct !DILexicalBlock(scope: !473, file: !1, line: 88, column: 56)
!482 = !DILocation(line: 90, column: 9, scope: !483)
!483 = distinct !DILexicalBlock(scope: !481, file: !1, line: 90, column: 9)
!484 = !{!485, !417, i64 8}
!485 = !{!"CallInfo", !417, i64 0, !417, i64 8, !417, i64 16, !417, i64 24, !420, i64 32, !420, i64 36}
!486 = !{!418, !418, i64 0}
!487 = !DILocation(line: 90, column: 9, scope: !481)
!488 = !DILocation(line: 91, column: 20, scope: !483)
!489 = !{!485, !420, i64 36}
!490 = !DILocation(line: 91, column: 13, scope: !483)
!491 = !DILocation(line: 91, column: 7, scope: !483)
!492 = !DILocation(line: 0, scope: !483)
!493 = !DILocation(line: 88, column: 52, scope: !473)
!494 = !DILocation(line: 88, column: 3, scope: !473)
!495 = distinct !{!495, !477, !496}
!496 = !DILocation(line: 92, column: 3, scope: !468)
!497 = !DILocation(line: 0, scope: !473)
!498 = !DILocation(line: 93, column: 13, scope: !479)
!499 = !DILocation(line: 93, column: 29, scope: !479)
!500 = !DILocation(line: 93, column: 24, scope: !479)
!501 = !DILocation(line: 93, column: 7, scope: !455)
!502 = !DILocation(line: 85, column: 7, scope: !455)
!503 = !DILocation(line: 95, column: 16, scope: !504)
!504 = distinct !DILexicalBlock(scope: !479, file: !1, line: 93, column: 38)
!505 = !DILocation(line: 95, column: 9, scope: !504)
!506 = !DILocation(line: 95, column: 14, scope: !504)
!507 = !{!508, !420, i64 116}
!508 = !{!"lua_Debug", !420, i64 0, !417, i64 8, !417, i64 16, !417, i64 24, !417, i64 32, !420, i64 40, !420, i64 44, !420, i64 48, !420, i64 52, !418, i64 56, !420, i64 116}
!509 = !DILocation(line: 96, column: 3, scope: !504)
!510 = !DILocation(line: 97, column: 12, scope: !479)
!511 = !DILocation(line: 99, column: 9, scope: !512)
!512 = distinct !DILexicalBlock(scope: !513, file: !1, line: 97, column: 23)
!513 = distinct !DILexicalBlock(scope: !479, file: !1, line: 97, column: 12)
!514 = !DILocation(line: 99, column: 14, scope: !512)
!515 = !DILocation(line: 100, column: 3, scope: !512)
!516 = !DILocation(line: 0, scope: !513)
!517 = !DILocation(line: 103, column: 3, scope: !455)
!518 = distinct !DISubprogram(name: "lua_getlocal", scope: !1, file: !1, line: 127, type: !519, isLocal: false, isDefinition: true, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !523)
!519 = !DISubroutineType(types: !520)
!520 = !{!307, !179, !521, !61}
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !302)
!523 = !{!524, !525, !526, !527, !528}
!524 = !DILocalVariable(name: "L", arg: 1, scope: !518, file: !1, line: 127, type: !179)
!525 = !DILocalVariable(name: "ar", arg: 2, scope: !518, file: !1, line: 127, type: !521)
!526 = !DILocalVariable(name: "n", arg: 3, scope: !518, file: !1, line: 127, type: !61)
!527 = !DILocalVariable(name: "ci", scope: !518, file: !1, line: 128, type: !269)
!528 = !DILocalVariable(name: "name", scope: !518, file: !1, line: 129, type: !307)
!529 = !DILocation(line: 127, column: 46, scope: !518)
!530 = !DILocation(line: 127, column: 66, scope: !518)
!531 = !DILocation(line: 127, column: 74, scope: !518)
!532 = !DILocation(line: 128, column: 21, scope: !518)
!533 = !DILocation(line: 128, column: 35, scope: !518)
!534 = !DILocation(line: 128, column: 29, scope: !518)
!535 = !DILocation(line: 128, column: 13, scope: !518)
!536 = !DILocalVariable(name: "L", arg: 1, scope: !537, file: !1, line: 112, type: !179)
!537 = distinct !DISubprogram(name: "findlocal", scope: !1, file: !1, line: 112, type: !538, isLocal: true, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !540)
!538 = !DISubroutineType(types: !539)
!539 = !{!307, !179, !269, !61}
!540 = !{!536, !541, !542, !543, !544, !547}
!541 = !DILocalVariable(name: "ci", arg: 2, scope: !537, file: !1, line: 112, type: !269)
!542 = !DILocalVariable(name: "n", arg: 3, scope: !537, file: !1, line: 112, type: !61)
!543 = !DILocalVariable(name: "name", scope: !537, file: !1, line: 113, type: !307)
!544 = !DILocalVariable(name: "fp", scope: !537, file: !1, line: 114, type: !545)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "Proto", file: !64, line: 253, baseType: !348)
!547 = !DILocalVariable(name: "limit", scope: !548, file: !1, line: 118, type: !188)
!548 = distinct !DILexicalBlock(scope: !549, file: !1, line: 117, column: 8)
!549 = distinct !DILexicalBlock(scope: !537, file: !1, line: 115, column: 7)
!550 = !DILocation(line: 112, column: 42, scope: !537, inlinedAt: !551)
!551 = distinct !DILocation(line: 129, column: 22, scope: !518)
!552 = !DILocation(line: 112, column: 55, scope: !537, inlinedAt: !551)
!553 = !DILocation(line: 112, column: 63, scope: !537, inlinedAt: !551)
!554 = !DILocalVariable(name: "ci", arg: 1, scope: !555, file: !1, line: 107, type: !269)
!555 = distinct !DISubprogram(name: "getluaproto", scope: !1, file: !1, line: 107, type: !556, isLocal: true, isDefinition: true, scopeLine: 107, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !558)
!556 = !DISubroutineType(types: !557)
!557 = !{!545, !269}
!558 = !{!554}
!559 = !DILocation(line: 107, column: 38, scope: !555, inlinedAt: !560)
!560 = distinct !DILocation(line: 114, column: 15, scope: !537, inlinedAt: !551)
!561 = !DILocation(line: 108, column: 11, scope: !555, inlinedAt: !560)
!562 = !{!422, !420, i64 8}
!563 = !DILocation(line: 108, column: 3, scope: !555, inlinedAt: !560)
!564 = !DILocation(line: 114, column: 10, scope: !537, inlinedAt: !551)
!565 = !DILocation(line: 115, column: 10, scope: !549, inlinedAt: !551)
!566 = !DILocation(line: 108, column: 38, scope: !555, inlinedAt: !560)
!567 = !DILocation(line: 115, column: 7, scope: !549, inlinedAt: !551)
!568 = !DILocalVariable(name: "L", arg: 1, scope: !569, file: !1, line: 36, type: !179)
!569 = distinct !DISubprogram(name: "currentpc", scope: !1, file: !1, line: 36, type: !570, isLocal: true, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !572)
!570 = !DISubroutineType(types: !571)
!571 = !{!61, !179, !269}
!572 = !{!568, !573}
!573 = !DILocalVariable(name: "ci", arg: 2, scope: !569, file: !1, line: 36, type: !269)
!574 = !DILocation(line: 36, column: 34, scope: !569, inlinedAt: !575)
!575 = distinct !DILocation(line: 115, column: 46, scope: !549, inlinedAt: !551)
!576 = !DILocation(line: 36, column: 47, scope: !569, inlinedAt: !575)
!577 = !DILocation(line: 37, column: 8, scope: !578, inlinedAt: !575)
!578 = distinct !DILexicalBlock(scope: !569, file: !1, line: 37, column: 7)
!579 = !DILocation(line: 37, column: 7, scope: !569, inlinedAt: !575)
!580 = !DILocation(line: 38, column: 16, scope: !581, inlinedAt: !575)
!581 = distinct !DILexicalBlock(scope: !569, file: !1, line: 38, column: 7)
!582 = !DILocation(line: 38, column: 10, scope: !581, inlinedAt: !575)
!583 = !DILocation(line: 38, column: 7, scope: !569, inlinedAt: !575)
!584 = !DILocation(line: 40, column: 10, scope: !569, inlinedAt: !575)
!585 = !{!485, !417, i64 24}
!586 = !DILocation(line: 39, column: 22, scope: !581, inlinedAt: !575)
!587 = !{!416, !417, i64 48}
!588 = !DILocation(line: 39, column: 9, scope: !581, inlinedAt: !575)
!589 = !DILocation(line: 39, column: 17, scope: !581, inlinedAt: !575)
!590 = !DILocation(line: 39, column: 5, scope: !581, inlinedAt: !575)
!591 = !{!592, !417, i64 24}
!592 = !{!"Proto", !417, i64 0, !418, i64 8, !418, i64 9, !417, i64 16, !417, i64 24, !417, i64 32, !417, i64 40, !417, i64 48, !417, i64 56, !417, i64 64, !420, i64 72, !420, i64 76, !420, i64 80, !420, i64 84, !420, i64 88, !420, i64 92, !420, i64 96, !420, i64 100, !417, i64 104, !418, i64 112, !418, i64 113, !418, i64 114, !418, i64 115}
!593 = !DILocation(line: 40, column: 3, scope: !569, inlinedAt: !575)
!594 = !DILocation(line: 41, column: 1, scope: !569, inlinedAt: !575)
!595 = !DILocation(line: 115, column: 21, scope: !549, inlinedAt: !551)
!596 = !DILocation(line: 113, column: 15, scope: !537, inlinedAt: !551)
!597 = !DILocation(line: 115, column: 65, scope: !549, inlinedAt: !551)
!598 = !DILocation(line: 115, column: 7, scope: !537, inlinedAt: !551)
!599 = !DILocation(line: 116, column: 5, scope: !549, inlinedAt: !551)
!600 = !DILocation(line: 132, column: 30, scope: !601)
!601 = distinct !DILexicalBlock(scope: !518, file: !1, line: 131, column: 7)
!602 = !{!485, !417, i64 0}
!603 = !DILocation(line: 118, column: 29, scope: !548, inlinedAt: !551)
!604 = !DILocation(line: 118, column: 23, scope: !548, inlinedAt: !551)
!605 = !DILocation(line: 118, column: 19, scope: !548, inlinedAt: !551)
!606 = !DILocation(line: 118, column: 52, scope: !548, inlinedAt: !551)
!607 = !DILocation(line: 118, column: 38, scope: !548, inlinedAt: !551)
!608 = !DILocation(line: 0, scope: !518)
!609 = !{!417, !417, i64 0}
!610 = !DILocation(line: 118, column: 11, scope: !548, inlinedAt: !551)
!611 = !DILocation(line: 119, column: 21, scope: !612, inlinedAt: !551)
!612 = distinct !DILexicalBlock(scope: !548, file: !1, line: 119, column: 9)
!613 = !DILocation(line: 119, column: 15, scope: !612, inlinedAt: !551)
!614 = !DILocation(line: 119, column: 29, scope: !612, inlinedAt: !551)
!615 = !DILocation(line: 119, column: 26, scope: !612, inlinedAt: !551)
!616 = !DILocation(line: 119, column: 36, scope: !612, inlinedAt: !551)
!617 = !DILocation(line: 119, column: 31, scope: !612, inlinedAt: !551)
!618 = !DILocation(line: 0, scope: !612, inlinedAt: !551)
!619 = !DILocation(line: 124, column: 1, scope: !537, inlinedAt: !551)
!620 = !DILocation(line: 129, column: 15, scope: !518)
!621 = !DILocation(line: 131, column: 7, scope: !518)
!622 = !DILocation(line: 132, column: 40, scope: !601)
!623 = !DILocation(line: 132, column: 35, scope: !601)
!624 = !DILocation(line: 132, column: 7, scope: !601)
!625 = !DILocation(line: 0, scope: !601)
!626 = !DILocation(line: 134, column: 3, scope: !518)
!627 = distinct !DISubprogram(name: "lua_setlocal", scope: !1, file: !1, line: 138, type: !519, isLocal: false, isDefinition: true, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !628)
!628 = !{!629, !630, !631, !632, !633, !634, !639}
!629 = !DILocalVariable(name: "L", arg: 1, scope: !627, file: !1, line: 138, type: !179)
!630 = !DILocalVariable(name: "ar", arg: 2, scope: !627, file: !1, line: 138, type: !521)
!631 = !DILocalVariable(name: "n", arg: 3, scope: !627, file: !1, line: 138, type: !61)
!632 = !DILocalVariable(name: "ci", scope: !627, file: !1, line: 139, type: !269)
!633 = !DILocalVariable(name: "name", scope: !627, file: !1, line: 140, type: !307)
!634 = !DILocalVariable(name: "o2", scope: !635, file: !1, line: 143, type: !637)
!635 = distinct !DILexicalBlock(scope: !636, file: !1, line: 143, column: 7)
!636 = distinct !DILexicalBlock(scope: !627, file: !1, line: 142, column: 7)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !123)
!639 = !DILocalVariable(name: "o1", scope: !635, file: !1, line: 143, type: !122)
!640 = !DILocation(line: 138, column: 46, scope: !627)
!641 = !DILocation(line: 138, column: 66, scope: !627)
!642 = !DILocation(line: 138, column: 74, scope: !627)
!643 = !DILocation(line: 139, column: 21, scope: !627)
!644 = !DILocation(line: 139, column: 35, scope: !627)
!645 = !DILocation(line: 139, column: 29, scope: !627)
!646 = !DILocation(line: 139, column: 13, scope: !627)
!647 = !DILocation(line: 112, column: 42, scope: !537, inlinedAt: !648)
!648 = distinct !DILocation(line: 140, column: 22, scope: !627)
!649 = !DILocation(line: 112, column: 55, scope: !537, inlinedAt: !648)
!650 = !DILocation(line: 112, column: 63, scope: !537, inlinedAt: !648)
!651 = !DILocation(line: 107, column: 38, scope: !555, inlinedAt: !652)
!652 = distinct !DILocation(line: 114, column: 15, scope: !537, inlinedAt: !648)
!653 = !DILocation(line: 108, column: 11, scope: !555, inlinedAt: !652)
!654 = !DILocation(line: 108, column: 3, scope: !555, inlinedAt: !652)
!655 = !DILocation(line: 114, column: 10, scope: !537, inlinedAt: !648)
!656 = !DILocation(line: 115, column: 10, scope: !549, inlinedAt: !648)
!657 = !DILocation(line: 108, column: 38, scope: !555, inlinedAt: !652)
!658 = !DILocation(line: 115, column: 7, scope: !549, inlinedAt: !648)
!659 = !DILocation(line: 36, column: 34, scope: !569, inlinedAt: !660)
!660 = distinct !DILocation(line: 115, column: 46, scope: !549, inlinedAt: !648)
!661 = !DILocation(line: 36, column: 47, scope: !569, inlinedAt: !660)
!662 = !DILocation(line: 37, column: 8, scope: !578, inlinedAt: !660)
!663 = !DILocation(line: 37, column: 7, scope: !569, inlinedAt: !660)
!664 = !DILocation(line: 38, column: 16, scope: !581, inlinedAt: !660)
!665 = !DILocation(line: 38, column: 10, scope: !581, inlinedAt: !660)
!666 = !DILocation(line: 38, column: 7, scope: !569, inlinedAt: !660)
!667 = !DILocation(line: 40, column: 10, scope: !569, inlinedAt: !660)
!668 = !DILocation(line: 39, column: 22, scope: !581, inlinedAt: !660)
!669 = !DILocation(line: 39, column: 9, scope: !581, inlinedAt: !660)
!670 = !DILocation(line: 39, column: 17, scope: !581, inlinedAt: !660)
!671 = !DILocation(line: 39, column: 5, scope: !581, inlinedAt: !660)
!672 = !DILocation(line: 40, column: 3, scope: !569, inlinedAt: !660)
!673 = !DILocation(line: 41, column: 1, scope: !569, inlinedAt: !660)
!674 = !DILocation(line: 115, column: 21, scope: !549, inlinedAt: !648)
!675 = !DILocation(line: 113, column: 15, scope: !537, inlinedAt: !648)
!676 = !DILocation(line: 115, column: 65, scope: !549, inlinedAt: !648)
!677 = !DILocation(line: 115, column: 7, scope: !537, inlinedAt: !648)
!678 = !DILocation(line: 116, column: 5, scope: !549, inlinedAt: !648)
!679 = !DILocation(line: 143, column: 7, scope: !635)
!680 = !DILocation(line: 118, column: 29, scope: !548, inlinedAt: !648)
!681 = !DILocation(line: 118, column: 23, scope: !548, inlinedAt: !648)
!682 = !DILocation(line: 118, column: 19, scope: !548, inlinedAt: !648)
!683 = !DILocation(line: 118, column: 52, scope: !548, inlinedAt: !648)
!684 = !DILocation(line: 118, column: 38, scope: !548, inlinedAt: !648)
!685 = !DILocation(line: 0, scope: !627)
!686 = !DILocation(line: 118, column: 11, scope: !548, inlinedAt: !648)
!687 = !DILocation(line: 119, column: 21, scope: !612, inlinedAt: !648)
!688 = !DILocation(line: 119, column: 15, scope: !612, inlinedAt: !648)
!689 = !DILocation(line: 119, column: 29, scope: !612, inlinedAt: !648)
!690 = !DILocation(line: 119, column: 26, scope: !612, inlinedAt: !648)
!691 = !DILocation(line: 119, column: 36, scope: !612, inlinedAt: !648)
!692 = !DILocation(line: 119, column: 31, scope: !612, inlinedAt: !648)
!693 = !DILocation(line: 0, scope: !612, inlinedAt: !648)
!694 = !DILocation(line: 124, column: 1, scope: !537, inlinedAt: !648)
!695 = !DILocation(line: 140, column: 15, scope: !627)
!696 = !DILocation(line: 142, column: 7, scope: !627)
!697 = !DILocation(line: 144, column: 6, scope: !627)
!698 = !{!416, !417, i64 16}
!699 = !DILocation(line: 144, column: 9, scope: !627)
!700 = !DILocation(line: 146, column: 3, scope: !627)
!701 = distinct !DISubprogram(name: "lua_getinfo", scope: !1, file: !1, line: 232, type: !702, isLocal: false, isDefinition: true, scopeLine: 232, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !704)
!702 = !DISubroutineType(types: !703)
!703 = !{!61, !179, !307, !301}
!704 = !{!705, !706, !707, !708, !709, !712, !713, !716}
!705 = !DILocalVariable(name: "L", arg: 1, scope: !701, file: !1, line: 232, type: !179)
!706 = !DILocalVariable(name: "what", arg: 2, scope: !701, file: !1, line: 232, type: !307)
!707 = !DILocalVariable(name: "ar", arg: 3, scope: !701, file: !1, line: 232, type: !301)
!708 = !DILocalVariable(name: "status", scope: !701, file: !1, line: 233, type: !61)
!709 = !DILocalVariable(name: "f", scope: !701, file: !1, line: 234, type: !710)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "Closure", file: !64, line: 312, baseType: !161)
!712 = !DILocalVariable(name: "ci", scope: !701, file: !1, line: 235, type: !269)
!713 = !DILocalVariable(name: "func", scope: !714, file: !1, line: 238, type: !188)
!714 = distinct !DILexicalBlock(scope: !715, file: !1, line: 237, column: 21)
!715 = distinct !DILexicalBlock(scope: !701, file: !1, line: 237, column: 7)
!716 = !DILocalVariable(name: "i_o", scope: !717, file: !1, line: 252, type: !122)
!717 = distinct !DILexicalBlock(scope: !718, file: !1, line: 252, column: 10)
!718 = distinct !DILexicalBlock(scope: !719, file: !1, line: 251, column: 9)
!719 = distinct !DILexicalBlock(scope: !720, file: !1, line: 250, column: 26)
!720 = distinct !DILexicalBlock(scope: !701, file: !1, line: 250, column: 7)
!721 = !DILocation(line: 232, column: 37, scope: !701)
!722 = !DILocation(line: 232, column: 52, scope: !701)
!723 = !DILocation(line: 232, column: 69, scope: !701)
!724 = !DILocation(line: 234, column: 12, scope: !701)
!725 = !DILocation(line: 235, column: 13, scope: !701)
!726 = !DILocation(line: 237, column: 7, scope: !715)
!727 = !DILocation(line: 237, column: 13, scope: !715)
!728 = !DILocation(line: 237, column: 7, scope: !701)
!729 = !DILocation(line: 238, column: 21, scope: !714)
!730 = !DILocation(line: 238, column: 11, scope: !714)
!731 = !DILocation(line: 240, column: 9, scope: !714)
!732 = !DILocation(line: 241, column: 9, scope: !714)
!733 = !DILocation(line: 242, column: 11, scope: !714)
!734 = !DILocation(line: 243, column: 3, scope: !714)
!735 = !DILocation(line: 244, column: 16, scope: !736)
!736 = distinct !DILexicalBlock(scope: !715, file: !1, line: 244, column: 12)
!737 = !DILocation(line: 244, column: 21, scope: !736)
!738 = !DILocation(line: 244, column: 12, scope: !715)
!739 = !DILocalVariable(name: "L", arg: 1, scope: !740, file: !1, line: 193, type: !179)
!740 = distinct !DISubprogram(name: "auxgetinfo", scope: !1, file: !1, line: 193, type: !741, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !743)
!741 = !DISubroutineType(types: !742)
!742 = !{!61, !179, !307, !301, !710, !269}
!743 = !{!739, !744, !745, !746, !747, !748}
!744 = !DILocalVariable(name: "what", arg: 2, scope: !740, file: !1, line: 193, type: !307)
!745 = !DILocalVariable(name: "ar", arg: 3, scope: !740, file: !1, line: 193, type: !301)
!746 = !DILocalVariable(name: "f", arg: 4, scope: !740, file: !1, line: 194, type: !710)
!747 = !DILocalVariable(name: "ci", arg: 5, scope: !740, file: !1, line: 194, type: !269)
!748 = !DILocalVariable(name: "status", scope: !740, file: !1, line: 195, type: !61)
!749 = !DILocation(line: 193, column: 35, scope: !740, inlinedAt: !750)
!750 = distinct !DILocation(line: 249, column: 12, scope: !701)
!751 = !DILocation(line: 193, column: 50, scope: !740, inlinedAt: !750)
!752 = !DILocation(line: 193, column: 67, scope: !740, inlinedAt: !750)
!753 = !DILocation(line: 194, column: 30, scope: !740, inlinedAt: !750)
!754 = !DILocation(line: 194, column: 43, scope: !740, inlinedAt: !750)
!755 = !DILocation(line: 195, column: 7, scope: !740, inlinedAt: !750)
!756 = !DILocation(line: 196, column: 7, scope: !740, inlinedAt: !750)
!757 = !DILocation(line: 245, column: 13, scope: !758)
!758 = distinct !DILexicalBlock(scope: !736, file: !1, line: 244, column: 27)
!759 = !DILocation(line: 245, column: 21, scope: !758)
!760 = !DILocation(line: 247, column: 9, scope: !758)
!761 = !DILocation(line: 248, column: 3, scope: !758)
!762 = !DILocation(line: 0, scope: !701)
!763 = !DILocation(line: 0, scope: !714)
!764 = !DILocation(line: 196, column: 9, scope: !765, inlinedAt: !750)
!765 = distinct !DILexicalBlock(scope: !740, file: !1, line: 196, column: 7)
!766 = !DILocation(line: 200, column: 10, scope: !767, inlinedAt: !750)
!767 = distinct !DILexicalBlock(scope: !768, file: !1, line: 200, column: 3)
!768 = distinct !DILexicalBlock(scope: !740, file: !1, line: 200, column: 3)
!769 = !DILocation(line: 200, column: 3, scope: !768, inlinedAt: !750)
!770 = !DILocalVariable(name: "ar", arg: 1, scope: !771, file: !1, line: 167, type: !301)
!771 = distinct !DISubprogram(name: "info_tailcall", scope: !1, file: !1, line: 167, type: !772, isLocal: true, isDefinition: true, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !774)
!772 = !DISubroutineType(types: !773)
!773 = !{null, !301}
!774 = !{!770}
!775 = !DILocation(line: 167, column: 39, scope: !771, inlinedAt: !776)
!776 = distinct !DILocation(line: 197, column: 5, scope: !777, inlinedAt: !750)
!777 = distinct !DILexicalBlock(scope: !765, file: !1, line: 196, column: 18)
!778 = !DILocation(line: 168, column: 7, scope: !771, inlinedAt: !776)
!779 = !DILocation(line: 168, column: 12, scope: !771, inlinedAt: !776)
!780 = !DILocation(line: 169, column: 7, scope: !771, inlinedAt: !776)
!781 = !DILocation(line: 170, column: 47, scope: !771, inlinedAt: !776)
!782 = !DILocation(line: 170, column: 59, scope: !771, inlinedAt: !776)
!783 = !{!508, !420, i64 40}
!784 = !DILocation(line: 170, column: 29, scope: !771, inlinedAt: !776)
!785 = !DILocation(line: 170, column: 41, scope: !771, inlinedAt: !776)
!786 = !{!508, !420, i64 48}
!787 = !DILocation(line: 170, column: 7, scope: !771, inlinedAt: !776)
!788 = !DILocation(line: 170, column: 23, scope: !771, inlinedAt: !776)
!789 = !{!508, !420, i64 52}
!790 = !DILocation(line: 169, column: 12, scope: !771, inlinedAt: !776)
!791 = !DILocation(line: 172, column: 16, scope: !771, inlinedAt: !776)
!792 = !DILocation(line: 172, column: 3, scope: !771, inlinedAt: !776)
!793 = !DILocation(line: 173, column: 7, scope: !771, inlinedAt: !776)
!794 = !DILocation(line: 173, column: 12, scope: !771, inlinedAt: !776)
!795 = !{!508, !420, i64 44}
!796 = !DILocation(line: 174, column: 1, scope: !771, inlinedAt: !776)
!797 = !DILocation(line: 198, column: 5, scope: !777, inlinedAt: !750)
!798 = !DILocation(line: 201, column: 13, scope: !799, inlinedAt: !750)
!799 = distinct !DILexicalBlock(scope: !767, file: !1, line: 200, column: 25)
!800 = !DILocation(line: 201, column: 5, scope: !799, inlinedAt: !750)
!801 = !DILocalVariable(name: "ar", arg: 1, scope: !802, file: !1, line: 150, type: !301)
!802 = distinct !DISubprogram(name: "funcinfo", scope: !1, file: !1, line: 150, type: !803, isLocal: true, isDefinition: true, scopeLine: 150, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !805)
!803 = !DISubroutineType(types: !804)
!804 = !{null, !301, !710}
!805 = !{!801, !806}
!806 = !DILocalVariable(name: "cl", arg: 2, scope: !802, file: !1, line: 150, type: !710)
!807 = !DILocation(line: 150, column: 34, scope: !802, inlinedAt: !808)
!808 = distinct !DILocation(line: 203, column: 9, scope: !809, inlinedAt: !750)
!809 = distinct !DILexicalBlock(scope: !810, file: !1, line: 202, column: 17)
!810 = distinct !DILexicalBlock(scope: !799, file: !1, line: 201, column: 20)
!811 = !DILocation(line: 150, column: 47, scope: !802, inlinedAt: !808)
!812 = !DILocation(line: 151, column: 13, scope: !813, inlinedAt: !808)
!813 = distinct !DILexicalBlock(scope: !802, file: !1, line: 151, column: 7)
!814 = !DILocation(line: 151, column: 7, scope: !813, inlinedAt: !808)
!815 = !DILocation(line: 151, column: 7, scope: !802, inlinedAt: !808)
!816 = !DILocation(line: 152, column: 16, scope: !817, inlinedAt: !808)
!817 = distinct !DILexicalBlock(scope: !813, file: !1, line: 151, column: 18)
!818 = !{!508, !417, i64 32}
!819 = !DILocation(line: 153, column: 21, scope: !817, inlinedAt: !808)
!820 = !DILocation(line: 156, column: 3, scope: !817, inlinedAt: !808)
!821 = !DILocation(line: 158, column: 18, scope: !822, inlinedAt: !808)
!822 = distinct !DILexicalBlock(scope: !813, file: !1, line: 157, column: 8)
!823 = !{!592, !417, i64 64}
!824 = !DILocation(line: 158, column: 16, scope: !822, inlinedAt: !808)
!825 = !DILocation(line: 159, column: 29, scope: !822, inlinedAt: !808)
!826 = !DILocation(line: 159, column: 32, scope: !822, inlinedAt: !808)
!827 = !{!592, !420, i64 96}
!828 = !DILocation(line: 159, column: 21, scope: !822, inlinedAt: !808)
!829 = !DILocation(line: 160, column: 33, scope: !822, inlinedAt: !808)
!830 = !DILocation(line: 160, column: 36, scope: !822, inlinedAt: !808)
!831 = !{!592, !420, i64 100}
!832 = !DILocation(line: 161, column: 33, scope: !822, inlinedAt: !808)
!833 = !DILocation(line: 161, column: 16, scope: !822, inlinedAt: !808)
!834 = !DILocation(line: 163, column: 35, scope: !802, inlinedAt: !808)
!835 = !DILocation(line: 160, column: 25, scope: !822, inlinedAt: !808)
!836 = !DILocation(line: 161, column: 14, scope: !822, inlinedAt: !808)
!837 = !DILocation(line: 163, column: 3, scope: !802, inlinedAt: !808)
!838 = !DILocation(line: 164, column: 1, scope: !802, inlinedAt: !808)
!839 = !DILocation(line: 204, column: 9, scope: !809, inlinedAt: !750)
!840 = !DILocation(line: 207, column: 27, scope: !841, inlinedAt: !750)
!841 = distinct !DILexicalBlock(scope: !810, file: !1, line: 206, column: 17)
!842 = !DILocalVariable(name: "L", arg: 1, scope: !843, file: !1, line: 44, type: !179)
!843 = distinct !DISubprogram(name: "currentline", scope: !1, file: !1, line: 44, type: !570, isLocal: true, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !844)
!844 = !{!842, !845, !846}
!845 = !DILocalVariable(name: "ci", arg: 2, scope: !843, file: !1, line: 44, type: !269)
!846 = !DILocalVariable(name: "pc", scope: !843, file: !1, line: 45, type: !61)
!847 = !DILocation(line: 44, column: 36, scope: !843, inlinedAt: !848)
!848 = distinct !DILocation(line: 207, column: 34, scope: !841, inlinedAt: !750)
!849 = !DILocation(line: 44, column: 49, scope: !843, inlinedAt: !848)
!850 = !DILocation(line: 36, column: 34, scope: !569, inlinedAt: !851)
!851 = distinct !DILocation(line: 45, column: 12, scope: !843, inlinedAt: !848)
!852 = !DILocation(line: 36, column: 47, scope: !569, inlinedAt: !851)
!853 = !DILocation(line: 37, column: 8, scope: !578, inlinedAt: !851)
!854 = !DILocation(line: 37, column: 7, scope: !569, inlinedAt: !851)
!855 = !DILocation(line: 37, column: 19, scope: !578, inlinedAt: !851)
!856 = !DILocation(line: 41, column: 1, scope: !569, inlinedAt: !851)
!857 = !DILocation(line: 46, column: 7, scope: !843, inlinedAt: !848)
!858 = !DILocation(line: 38, column: 16, scope: !581, inlinedAt: !851)
!859 = !DILocation(line: 38, column: 10, scope: !581, inlinedAt: !851)
!860 = !DILocation(line: 38, column: 7, scope: !569, inlinedAt: !851)
!861 = !DILocation(line: 40, column: 10, scope: !569, inlinedAt: !851)
!862 = !DILocation(line: 39, column: 22, scope: !581, inlinedAt: !851)
!863 = !DILocation(line: 39, column: 17, scope: !581, inlinedAt: !851)
!864 = !DILocation(line: 39, column: 5, scope: !581, inlinedAt: !851)
!865 = !DILocation(line: 40, column: 3, scope: !569, inlinedAt: !851)
!866 = !DILocation(line: 45, column: 7, scope: !843, inlinedAt: !848)
!867 = !DILocation(line: 46, column: 10, scope: !868, inlinedAt: !848)
!868 = distinct !DILexicalBlock(scope: !843, file: !1, line: 46, column: 7)
!869 = !DILocation(line: 49, column: 12, scope: !868, inlinedAt: !848)
!870 = !{!592, !417, i64 40}
!871 = !{!420, !420, i64 0}
!872 = !DILocation(line: 0, scope: !868, inlinedAt: !848)
!873 = !DILocation(line: 0, scope: !841, inlinedAt: !750)
!874 = !DILocation(line: 50, column: 1, scope: !843, inlinedAt: !848)
!875 = !DILocation(line: 207, column: 25, scope: !841, inlinedAt: !750)
!876 = !DILocation(line: 208, column: 9, scope: !841, inlinedAt: !750)
!877 = !DILocation(line: 211, column: 25, scope: !878, inlinedAt: !750)
!878 = distinct !DILexicalBlock(scope: !810, file: !1, line: 210, column: 17)
!879 = !DILocation(line: 211, column: 20, scope: !878, inlinedAt: !750)
!880 = !DILocation(line: 211, column: 18, scope: !878, inlinedAt: !750)
!881 = !DILocation(line: 212, column: 9, scope: !878, inlinedAt: !750)
!882 = !DILocation(line: 215, column: 24, scope: !883, inlinedAt: !750)
!883 = distinct !DILexicalBlock(scope: !810, file: !1, line: 214, column: 17)
!884 = !DILocalVariable(name: "L", arg: 1, scope: !885, file: !1, line: 544, type: !179)
!885 = distinct !DISubprogram(name: "getfuncname", scope: !1, file: !1, line: 544, type: !886, isLocal: true, isDefinition: true, scopeLine: 544, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !889)
!886 = !DISubroutineType(types: !887)
!887 = !{!307, !179, !269, !888}
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!889 = !{!884, !890, !891, !892}
!890 = !DILocalVariable(name: "ci", arg: 2, scope: !885, file: !1, line: 544, type: !269)
!891 = !DILocalVariable(name: "name", arg: 3, scope: !885, file: !1, line: 544, type: !888)
!892 = !DILocalVariable(name: "i", scope: !885, file: !1, line: 545, type: !279)
!893 = !DILocation(line: 544, column: 44, scope: !885, inlinedAt: !894)
!894 = distinct !DILocation(line: 215, column: 31, scope: !883, inlinedAt: !750)
!895 = !DILocation(line: 544, column: 57, scope: !885, inlinedAt: !894)
!896 = !DILocation(line: 544, column: 74, scope: !885, inlinedAt: !894)
!897 = !DILocation(line: 546, column: 8, scope: !898, inlinedAt: !894)
!898 = distinct !DILexicalBlock(scope: !885, file: !1, line: 546, column: 7)
!899 = !DILocation(line: 546, column: 18, scope: !898, inlinedAt: !894)
!900 = !DILocation(line: 546, column: 25, scope: !898, inlinedAt: !894)
!901 = !DILocation(line: 546, column: 35, scope: !898, inlinedAt: !894)
!902 = !DILocation(line: 546, column: 40, scope: !898, inlinedAt: !894)
!903 = !DILocation(line: 546, column: 44, scope: !898, inlinedAt: !894)
!904 = !DILocation(line: 546, column: 7, scope: !885, inlinedAt: !894)
!905 = !DILocation(line: 549, column: 22, scope: !885, inlinedAt: !894)
!906 = !DILocation(line: 549, column: 25, scope: !885, inlinedAt: !894)
!907 = !DILocation(line: 36, column: 34, scope: !569, inlinedAt: !908)
!908 = distinct !DILocation(line: 549, column: 30, scope: !885, inlinedAt: !894)
!909 = !DILocation(line: 36, column: 47, scope: !569, inlinedAt: !908)
!910 = !DILocation(line: 37, column: 8, scope: !578, inlinedAt: !908)
!911 = !DILocation(line: 37, column: 7, scope: !569, inlinedAt: !908)
!912 = !DILocation(line: 38, column: 16, scope: !581, inlinedAt: !908)
!913 = !DILocation(line: 38, column: 10, scope: !581, inlinedAt: !908)
!914 = !DILocation(line: 38, column: 7, scope: !569, inlinedAt: !908)
!915 = !DILocation(line: 40, column: 10, scope: !569, inlinedAt: !908)
!916 = !DILocation(line: 39, column: 22, scope: !581, inlinedAt: !908)
!917 = !DILocation(line: 39, column: 17, scope: !581, inlinedAt: !908)
!918 = !DILocation(line: 39, column: 5, scope: !581, inlinedAt: !908)
!919 = !DILocation(line: 40, column: 3, scope: !569, inlinedAt: !908)
!920 = !DILocation(line: 549, column: 7, scope: !885, inlinedAt: !894)
!921 = !DILocation(line: 41, column: 1, scope: !569, inlinedAt: !908)
!922 = !DILocation(line: 545, column: 15, scope: !885, inlinedAt: !894)
!923 = !DILocation(line: 550, column: 7, scope: !924, inlinedAt: !894)
!924 = distinct !DILexicalBlock(scope: !885, file: !1, line: 550, column: 7)
!925 = !DILocation(line: 550, column: 21, scope: !924, inlinedAt: !894)
!926 = !DILocation(line: 550, column: 32, scope: !924, inlinedAt: !894)
!927 = !DILocation(line: 550, column: 49, scope: !924, inlinedAt: !894)
!928 = !DILocation(line: 550, column: 64, scope: !924, inlinedAt: !894)
!929 = !DILocation(line: 551, column: 21, scope: !924, inlinedAt: !894)
!930 = !DILocation(line: 550, column: 7, scope: !885, inlinedAt: !894)
!931 = !DILocation(line: 0, scope: !883, inlinedAt: !750)
!932 = !DILocation(line: 555, column: 1, scope: !885, inlinedAt: !894)
!933 = !DILocation(line: 216, column: 13, scope: !883, inlinedAt: !750)
!934 = !DILocation(line: 552, column: 30, scope: !924, inlinedAt: !894)
!935 = !DILocation(line: 552, column: 12, scope: !924, inlinedAt: !894)
!936 = !DILocation(line: 552, column: 5, scope: !924, inlinedAt: !894)
!937 = !DILocation(line: 215, column: 22, scope: !883, inlinedAt: !750)
!938 = !{!508, !417, i64 16}
!939 = !DILocation(line: 216, column: 26, scope: !940, inlinedAt: !750)
!940 = distinct !DILexicalBlock(scope: !883, file: !1, line: 216, column: 13)
!941 = !DILocation(line: 217, column: 24, scope: !942, inlinedAt: !750)
!942 = distinct !DILexicalBlock(scope: !940, file: !1, line: 216, column: 35)
!943 = !DILocation(line: 218, column: 20, scope: !942, inlinedAt: !750)
!944 = !DILocation(line: 219, column: 9, scope: !942, inlinedAt: !750)
!945 = !DILocation(line: 226, column: 5, scope: !810, inlinedAt: !750)
!946 = !DILocation(line: 0, scope: !740, inlinedAt: !750)
!947 = !DILocation(line: 200, column: 21, scope: !767, inlinedAt: !750)
!948 = !DILocation(line: 200, column: 3, scope: !767, inlinedAt: !750)
!949 = distinct !{!949, !950, !951}
!950 = !DILocation(line: 200, column: 3, scope: !768)
!951 = !DILocation(line: 227, column: 3, scope: !768)
!952 = !DILocation(line: 229, column: 1, scope: !740, inlinedAt: !750)
!953 = !DILocation(line: 233, column: 7, scope: !701)
!954 = !DILocation(line: 250, column: 7, scope: !720)
!955 = !DILocation(line: 250, column: 7, scope: !701)
!956 = !DILocation(line: 251, column: 9, scope: !719)
!957 = !DILocation(line: 0, scope: !717)
!958 = !DILocation(line: 252, column: 10, scope: !717)
!959 = !DILocation(line: 253, column: 5, scope: !960)
!960 = distinct !DILexicalBlock(scope: !961, file: !1, line: 253, column: 5)
!961 = distinct !DILexicalBlock(scope: !719, file: !1, line: 253, column: 5)
!962 = !{!416, !417, i64 56}
!963 = !DILocation(line: 253, column: 5, scope: !961)
!964 = !DILocation(line: 254, column: 3, scope: !719)
!965 = !DILocation(line: 255, column: 7, scope: !966)
!966 = distinct !DILexicalBlock(scope: !701, file: !1, line: 255, column: 7)
!967 = !DILocation(line: 255, column: 7, scope: !701)
!968 = !DILocalVariable(name: "L", arg: 1, scope: !969, file: !1, line: 177, type: !179)
!969 = distinct !DISubprogram(name: "collectvalidlines", scope: !1, file: !1, line: 177, type: !970, isLocal: true, isDefinition: true, scopeLine: 177, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !972)
!970 = !DISubroutineType(types: !971)
!971 = !{null, !179, !710}
!972 = !{!968, !973, !974, !979, !980, !981, !985}
!973 = !DILocalVariable(name: "f", arg: 2, scope: !969, file: !1, line: 177, type: !710)
!974 = !DILocalVariable(name: "t", scope: !975, file: !1, line: 182, type: !977)
!975 = distinct !DILexicalBlock(scope: !976, file: !1, line: 181, column: 8)
!976 = distinct !DILexicalBlock(scope: !969, file: !1, line: 178, column: 7)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_typedef, name: "Table", file: !64, line: 348, baseType: !113)
!979 = !DILocalVariable(name: "lineinfo", scope: !975, file: !1, line: 183, type: !359)
!980 = !DILocalVariable(name: "i", scope: !975, file: !1, line: 184, type: !61)
!981 = !DILocalVariable(name: "i_o", scope: !982, file: !1, line: 186, type: !122)
!982 = distinct !DILexicalBlock(scope: !983, file: !1, line: 186, column: 7)
!983 = distinct !DILexicalBlock(scope: !984, file: !1, line: 185, column: 5)
!984 = distinct !DILexicalBlock(scope: !975, file: !1, line: 185, column: 5)
!985 = !DILocalVariable(name: "i_o", scope: !986, file: !1, line: 187, type: !122)
!986 = distinct !DILexicalBlock(scope: !975, file: !1, line: 187, column: 5)
!987 = !DILocation(line: 177, column: 43, scope: !969, inlinedAt: !988)
!988 = distinct !DILocation(line: 256, column: 5, scope: !966)
!989 = !DILocation(line: 177, column: 55, scope: !969, inlinedAt: !988)
!990 = !DILocation(line: 178, column: 17, scope: !976, inlinedAt: !988)
!991 = !DILocation(line: 178, column: 25, scope: !976, inlinedAt: !988)
!992 = !DILocation(line: 178, column: 20, scope: !976, inlinedAt: !988)
!993 = !DILocation(line: 178, column: 7, scope: !969, inlinedAt: !988)
!994 = !DILocation(line: 179, column: 5, scope: !995, inlinedAt: !988)
!995 = distinct !DILexicalBlock(scope: !976, file: !1, line: 178, column: 30)
!996 = !DILocation(line: 180, column: 3, scope: !995, inlinedAt: !988)
!997 = !DILocation(line: 182, column: 16, scope: !975, inlinedAt: !988)
!998 = !DILocation(line: 182, column: 12, scope: !975, inlinedAt: !988)
!999 = !DILocation(line: 183, column: 26, scope: !975, inlinedAt: !988)
!1000 = !DILocation(line: 183, column: 29, scope: !975, inlinedAt: !988)
!1001 = !DILocation(line: 183, column: 10, scope: !975, inlinedAt: !988)
!1002 = !DILocation(line: 184, column: 9, scope: !975, inlinedAt: !988)
!1003 = !DILocation(line: 185, column: 10, scope: !984, inlinedAt: !988)
!1004 = !DILocation(line: 185, column: 25, scope: !983, inlinedAt: !988)
!1005 = !{!592, !420, i64 84}
!1006 = !DILocation(line: 185, column: 16, scope: !983, inlinedAt: !988)
!1007 = !DILocation(line: 185, column: 5, scope: !984, inlinedAt: !988)
!1008 = !DILocation(line: 186, column: 7, scope: !982, inlinedAt: !988)
!1009 = !DILocation(line: 185, column: 40, scope: !983, inlinedAt: !988)
!1010 = !DILocation(line: 185, column: 5, scope: !983, inlinedAt: !988)
!1011 = !DILocation(line: 185, column: 22, scope: !983, inlinedAt: !988)
!1012 = distinct !{!1012, !1013, !1014}
!1013 = !DILocation(line: 185, column: 5, scope: !984)
!1014 = !DILocation(line: 186, column: 7, scope: !984)
!1015 = !DILocation(line: 187, column: 5, scope: !986, inlinedAt: !988)
!1016 = !DILocation(line: 189, column: 3, scope: !1017, inlinedAt: !988)
!1017 = distinct !DILexicalBlock(scope: !1018, file: !1, line: 189, column: 3)
!1018 = distinct !DILexicalBlock(scope: !969, file: !1, line: 189, column: 3)
!1019 = !DILocation(line: 189, column: 3, scope: !1018, inlinedAt: !988)
!1020 = !DILocation(line: 190, column: 1, scope: !969, inlinedAt: !988)
!1021 = !DILocation(line: 256, column: 5, scope: !966)
!1022 = !DILocation(line: 258, column: 3, scope: !701)
!1023 = distinct !DISubprogram(name: "luaG_checkopenop", scope: !1, file: !1, line: 290, type: !1024, isLocal: false, isDefinition: true, scopeLine: 290, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1026)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{!61, !279}
!1026 = !{!1027}
!1027 = !DILocalVariable(name: "i", arg: 1, scope: !1023, file: !1, line: 290, type: !279)
!1028 = !DILocation(line: 290, column: 35, scope: !1023)
!1029 = !DILocation(line: 291, column: 3, scope: !1023)
!1030 = !DILocation(line: 296, column: 7, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1032, file: !1, line: 296, column: 7)
!1032 = distinct !DILexicalBlock(scope: !1033, file: !1, line: 295, column: 22)
!1033 = distinct !DILexicalBlock(scope: !1023, file: !1, line: 291, column: 26)
!1034 = !DILocation(line: 296, column: 7, scope: !1032)
!1035 = !DILocation(line: 0, scope: !1031)
!1036 = !DILocation(line: 297, column: 7, scope: !1032)
!1037 = !DILocation(line: 299, column: 14, scope: !1033)
!1038 = !DILocation(line: 301, column: 1, scope: !1023)
!1039 = distinct !DISubprogram(name: "luaG_checkcode", scope: !1, file: !1, line: 484, type: !1040, isLocal: false, isDefinition: true, scopeLine: 484, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1044)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{!61, !1042}
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !546)
!1044 = !{!1045}
!1045 = !DILocalVariable(name: "pt", arg: 1, scope: !1039, file: !1, line: 484, type: !1042)
!1046 = !DILocation(line: 484, column: 34, scope: !1039)
!1047 = !DILocation(line: 485, column: 28, scope: !1039)
!1048 = !{!592, !420, i64 80}
!1049 = !DILocation(line: 485, column: 11, scope: !1039)
!1050 = !DILocation(line: 485, column: 46, scope: !1039)
!1051 = !DILocation(line: 485, column: 3, scope: !1039)
!1052 = distinct !DISubprogram(name: "symbexec", scope: !1, file: !1, line: 317, type: !1053, isLocal: true, isDefinition: true, scopeLine: 317, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1055)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!279, !1042, !61, !61}
!1055 = !{!1056, !1057, !1058, !1059, !1060, !1061, !1065, !1066, !1067, !1068, !1069, !1074, !1077, !1081, !1084, !1086, !1087}
!1056 = !DILocalVariable(name: "pt", arg: 1, scope: !1052, file: !1, line: 317, type: !1042)
!1057 = !DILocalVariable(name: "lastpc", arg: 2, scope: !1052, file: !1, line: 317, type: !61)
!1058 = !DILocalVariable(name: "reg", arg: 3, scope: !1052, file: !1, line: 317, type: !61)
!1059 = !DILocalVariable(name: "pc", scope: !1052, file: !1, line: 318, type: !61)
!1060 = !DILocalVariable(name: "last", scope: !1052, file: !1, line: 319, type: !61)
!1061 = !DILocalVariable(name: "i", scope: !1062, file: !1, line: 323, type: !279)
!1062 = distinct !DILexicalBlock(scope: !1063, file: !1, line: 322, column: 35)
!1063 = distinct !DILexicalBlock(scope: !1064, file: !1, line: 322, column: 3)
!1064 = distinct !DILexicalBlock(scope: !1052, file: !1, line: 322, column: 3)
!1065 = !DILocalVariable(name: "op", scope: !1062, file: !1, line: 324, type: !390)
!1066 = !DILocalVariable(name: "a", scope: !1062, file: !1, line: 325, type: !61)
!1067 = !DILocalVariable(name: "b", scope: !1062, file: !1, line: 326, type: !61)
!1068 = !DILocalVariable(name: "c", scope: !1062, file: !1, line: 327, type: !61)
!1069 = !DILocalVariable(name: "dest", scope: !1070, file: !1, line: 346, type: !61)
!1070 = distinct !DILexicalBlock(scope: !1071, file: !1, line: 345, column: 37)
!1071 = distinct !DILexicalBlock(scope: !1072, file: !1, line: 345, column: 13)
!1072 = distinct !DILexicalBlock(scope: !1073, file: !1, line: 343, column: 19)
!1073 = distinct !DILexicalBlock(scope: !1062, file: !1, line: 330, column: 28)
!1074 = !DILocalVariable(name: "j", scope: !1075, file: !1, line: 349, type: !61)
!1075 = distinct !DILexicalBlock(scope: !1076, file: !1, line: 348, column: 25)
!1076 = distinct !DILexicalBlock(scope: !1070, file: !1, line: 348, column: 15)
!1077 = !DILocalVariable(name: "d", scope: !1078, file: !1, line: 355, type: !279)
!1078 = distinct !DILexicalBlock(scope: !1079, file: !1, line: 354, column: 40)
!1079 = distinct !DILexicalBlock(scope: !1080, file: !1, line: 354, column: 13)
!1080 = distinct !DILexicalBlock(scope: !1075, file: !1, line: 354, column: 13)
!1081 = !DILocalVariable(name: "dest", scope: !1082, file: !1, line: 417, type: !61)
!1082 = distinct !DILexicalBlock(scope: !1083, file: !1, line: 416, column: 20)
!1083 = distinct !DILexicalBlock(scope: !1062, file: !1, line: 373, column: 17)
!1084 = !DILocalVariable(name: "nup", scope: !1085, file: !1, line: 451, type: !61)
!1085 = distinct !DILexicalBlock(scope: !1083, file: !1, line: 450, column: 24)
!1086 = !DILocalVariable(name: "j", scope: !1085, file: !1, line: 451, type: !61)
!1087 = !DILocalVariable(name: "op1", scope: !1088, file: !1, line: 456, type: !390)
!1088 = distinct !DILexicalBlock(scope: !1089, file: !1, line: 455, column: 36)
!1089 = distinct !DILexicalBlock(scope: !1090, file: !1, line: 455, column: 9)
!1090 = distinct !DILexicalBlock(scope: !1085, file: !1, line: 455, column: 9)
!1091 = !DILocation(line: 317, column: 43, scope: !1052)
!1092 = !DILocation(line: 317, column: 51, scope: !1052)
!1093 = !DILocation(line: 317, column: 63, scope: !1052)
!1094 = !DILocation(line: 320, column: 14, scope: !1052)
!1095 = !DILocalVariable(name: "pt", arg: 1, scope: !1096, file: !1, line: 276, type: !1042)
!1096 = distinct !DISubprogram(name: "precheck", scope: !1, file: !1, line: 276, type: !1040, isLocal: true, isDefinition: true, scopeLine: 276, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1097)
!1097 = !{!1095}
!1098 = !DILocation(line: 276, column: 35, scope: !1096, inlinedAt: !1099)
!1099 = distinct !DILocation(line: 321, column: 3, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1052, file: !1, line: 321, column: 3)
!1101 = !DILocation(line: 277, column: 3, scope: !1102, inlinedAt: !1099)
!1102 = distinct !DILexicalBlock(scope: !1096, file: !1, line: 277, column: 3)
!1103 = !{!592, !418, i64 115}
!1104 = !DILocation(line: 277, column: 3, scope: !1096, inlinedAt: !1099)
!1105 = !DILocation(line: 278, column: 3, scope: !1106, inlinedAt: !1099)
!1106 = distinct !DILexicalBlock(scope: !1096, file: !1, line: 278, column: 3)
!1107 = !{!592, !418, i64 113}
!1108 = !{!592, !418, i64 114}
!1109 = !DILocation(line: 278, column: 3, scope: !1096, inlinedAt: !1099)
!1110 = !DILocation(line: 279, column: 3, scope: !1111, inlinedAt: !1099)
!1111 = distinct !DILexicalBlock(scope: !1096, file: !1, line: 279, column: 3)
!1112 = !DILocation(line: 279, column: 3, scope: !1096, inlinedAt: !1099)
!1113 = !DILocation(line: 281, column: 3, scope: !1114, inlinedAt: !1099)
!1114 = distinct !DILexicalBlock(scope: !1096, file: !1, line: 281, column: 3)
!1115 = !{!592, !420, i64 72}
!1116 = !{!592, !418, i64 112}
!1117 = !DILocation(line: 281, column: 3, scope: !1096, inlinedAt: !1099)
!1118 = !DILocation(line: 282, column: 3, scope: !1119, inlinedAt: !1099)
!1119 = distinct !DILexicalBlock(scope: !1096, file: !1, line: 282, column: 3)
!1120 = !DILocation(line: 282, column: 3, scope: !1096, inlinedAt: !1099)
!1121 = !DILocation(line: 283, column: 3, scope: !1122, inlinedAt: !1099)
!1122 = distinct !DILexicalBlock(scope: !1096, file: !1, line: 283, column: 3)
!1123 = !DILocation(line: 283, column: 3, scope: !1096, inlinedAt: !1099)
!1124 = !DILocation(line: 0, scope: !1100)
!1125 = !DILocation(line: 285, column: 1, scope: !1096, inlinedAt: !1099)
!1126 = !DILocation(line: 321, column: 3, scope: !1052)
!1127 = !DILocation(line: 321, column: 3, scope: !1100)
!1128 = !DILocation(line: 284, column: 3, scope: !1096, inlinedAt: !1099)
!1129 = !DILocation(line: 319, column: 7, scope: !1052)
!1130 = !DILocation(line: 318, column: 7, scope: !1052)
!1131 = !DILocation(line: 322, column: 8, scope: !1064)
!1132 = !DILocation(line: 322, column: 19, scope: !1063)
!1133 = !DILocation(line: 322, column: 3, scope: !1064)
!1134 = !DILocation(line: 323, column: 21, scope: !1062)
!1135 = !DILocation(line: 323, column: 17, scope: !1062)
!1136 = !DILocation(line: 324, column: 17, scope: !1062)
!1137 = !DILocation(line: 324, column: 12, scope: !1062)
!1138 = !DILocation(line: 325, column: 13, scope: !1062)
!1139 = !DILocation(line: 325, column: 9, scope: !1062)
!1140 = !DILocation(line: 326, column: 9, scope: !1062)
!1141 = !DILocation(line: 327, column: 9, scope: !1062)
!1142 = !DILocation(line: 328, column: 5, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1062, file: !1, line: 328, column: 5)
!1144 = !DILocation(line: 328, column: 5, scope: !1062)
!1145 = !DILocation(line: 329, column: 5, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1062, file: !1, line: 329, column: 5)
!1147 = !DILocation(line: 329, column: 5, scope: !1062)
!1148 = !DILocation(line: 330, column: 13, scope: !1062)
!1149 = !DILocation(line: 330, column: 5, scope: !1062)
!1150 = !DILocation(line: 332, column: 13, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1073, file: !1, line: 331, column: 18)
!1152 = !DILocation(line: 333, column: 13, scope: !1151)
!1153 = !DILocalVariable(name: "pt", arg: 1, scope: !1154, file: !1, line: 304, type: !1042)
!1154 = distinct !DISubprogram(name: "checkArgMode", scope: !1, file: !1, line: 304, type: !1155, isLocal: true, isDefinition: true, scopeLine: 304, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1157)
!1155 = !DISubroutineType(types: !1156)
!1156 = !{!61, !1042, !61, !50}
!1157 = !{!1153, !1158, !1159}
!1158 = !DILocalVariable(name: "r", arg: 2, scope: !1154, file: !1, line: 304, type: !61)
!1159 = !DILocalVariable(name: "mode", arg: 3, scope: !1154, file: !1, line: 304, type: !50)
!1160 = !DILocation(line: 304, column: 39, scope: !1154, inlinedAt: !1161)
!1161 = distinct !DILocation(line: 334, column: 9, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1151, file: !1, line: 334, column: 9)
!1163 = !DILocation(line: 304, column: 47, scope: !1154, inlinedAt: !1161)
!1164 = !DILocation(line: 304, column: 65, scope: !1154, inlinedAt: !1161)
!1165 = !DILocation(line: 305, column: 3, scope: !1154, inlinedAt: !1161)
!1166 = !DILocation(line: 306, column: 18, scope: !1167, inlinedAt: !1161)
!1167 = distinct !DILexicalBlock(scope: !1168, file: !1, line: 306, column: 18)
!1168 = distinct !DILexicalBlock(scope: !1154, file: !1, line: 305, column: 17)
!1169 = !DILocation(line: 306, column: 18, scope: !1168, inlinedAt: !1161)
!1170 = !DILocation(line: 308, column: 18, scope: !1171, inlinedAt: !1161)
!1171 = distinct !DILexicalBlock(scope: !1168, file: !1, line: 308, column: 18)
!1172 = !DILocation(line: 308, column: 18, scope: !1168, inlinedAt: !1161)
!1173 = !DILocation(line: 310, column: 7, scope: !1174, inlinedAt: !1161)
!1174 = distinct !DILexicalBlock(scope: !1168, file: !1, line: 310, column: 7)
!1175 = !DILocation(line: 310, column: 7, scope: !1168, inlinedAt: !1161)
!1176 = !{!592, !420, i64 76}
!1177 = !DILocation(line: 0, scope: !1162)
!1178 = !DILocation(line: 314, column: 1, scope: !1154, inlinedAt: !1161)
!1179 = !DILocation(line: 334, column: 9, scope: !1151)
!1180 = !DILocation(line: 334, column: 9, scope: !1162)
!1181 = !DILocation(line: 313, column: 3, scope: !1154, inlinedAt: !1161)
!1182 = !DILocation(line: 335, column: 9, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1151, file: !1, line: 335, column: 9)
!1184 = !DILocation(line: 304, column: 39, scope: !1154, inlinedAt: !1185)
!1185 = distinct !DILocation(line: 335, column: 9, scope: !1183)
!1186 = !DILocation(line: 304, column: 47, scope: !1154, inlinedAt: !1185)
!1187 = !DILocation(line: 305, column: 3, scope: !1154, inlinedAt: !1185)
!1188 = !DILocation(line: 306, column: 18, scope: !1167, inlinedAt: !1185)
!1189 = !DILocation(line: 306, column: 18, scope: !1168, inlinedAt: !1185)
!1190 = !DILocation(line: 308, column: 18, scope: !1171, inlinedAt: !1185)
!1191 = !DILocation(line: 308, column: 18, scope: !1168, inlinedAt: !1185)
!1192 = !DILocation(line: 310, column: 7, scope: !1174, inlinedAt: !1185)
!1193 = !DILocation(line: 310, column: 7, scope: !1168, inlinedAt: !1185)
!1194 = !DILocation(line: 313, column: 3, scope: !1154, inlinedAt: !1185)
!1195 = !DILocation(line: 314, column: 1, scope: !1154, inlinedAt: !1185)
!1196 = !DILocation(line: 335, column: 9, scope: !1151)
!1197 = !DILocation(line: 0, scope: !1183)
!1198 = !DILocation(line: 339, column: 13, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1073, file: !1, line: 338, column: 18)
!1200 = !DILocation(line: 340, column: 13, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1199, file: !1, line: 340, column: 13)
!1202 = !DILocation(line: 340, column: 26, scope: !1201)
!1203 = !DILocation(line: 340, column: 13, scope: !1199)
!1204 = !DILocation(line: 340, column: 37, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1201, file: !1, line: 340, column: 37)
!1206 = !DILocation(line: 340, column: 37, scope: !1201)
!1207 = !DILocation(line: 344, column: 13, scope: !1072)
!1208 = !DILocation(line: 345, column: 13, scope: !1071)
!1209 = !DILocation(line: 345, column: 26, scope: !1071)
!1210 = !DILocation(line: 345, column: 13, scope: !1072)
!1211 = !DILocation(line: 346, column: 24, scope: !1070)
!1212 = !DILocation(line: 346, column: 26, scope: !1070)
!1213 = !DILocation(line: 346, column: 15, scope: !1070)
!1214 = !DILocation(line: 347, column: 11, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1070, file: !1, line: 347, column: 11)
!1216 = !DILocation(line: 347, column: 11, scope: !1070)
!1217 = !DILocation(line: 348, column: 20, scope: !1076)
!1218 = !DILocation(line: 348, column: 15, scope: !1070)
!1219 = !DILocation(line: 349, column: 17, scope: !1075)
!1220 = !DILocation(line: 354, column: 18, scope: !1080)
!1221 = !DILocation(line: 354, column: 13, scope: !1080)
!1222 = !DILocation(line: 355, column: 46, scope: !1078)
!1223 = !DILocation(line: 355, column: 31, scope: !1078)
!1224 = !DILocation(line: 355, column: 27, scope: !1078)
!1225 = !DILocation(line: 356, column: 21, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1078, file: !1, line: 356, column: 19)
!1227 = !DILocation(line: 356, column: 35, scope: !1226)
!1228 = !DILocation(line: 356, column: 49, scope: !1226)
!1229 = !DILocation(line: 356, column: 52, scope: !1226)
!1230 = !DILocation(line: 356, column: 64, scope: !1226)
!1231 = !DILocation(line: 356, column: 19, scope: !1078)
!1232 = !DILocation(line: 356, column: 71, scope: !1226)
!1233 = !DILocation(line: 357, column: 13, scope: !1079)
!1234 = !DILocation(line: 354, column: 36, scope: !1079)
!1235 = !DILocation(line: 354, column: 13, scope: !1079)
!1236 = !DILocation(line: 354, column: 27, scope: !1079)
!1237 = distinct !{!1237, !1221, !1238}
!1238 = !DILocation(line: 357, column: 13, scope: !1080)
!1239 = !DILocation(line: 360, column: 13, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1075, file: !1, line: 360, column: 13)
!1241 = !DILocation(line: 360, column: 13, scope: !1075)
!1242 = !DILocation(line: 0, scope: !1240)
!1243 = !DILocation(line: 362, column: 9, scope: !1071)
!1244 = !DILocation(line: 0, scope: !1151)
!1245 = !DILocation(line: 366, column: 9, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1062, file: !1, line: 366, column: 9)
!1247 = !DILocation(line: 366, column: 9, scope: !1062)
!1248 = !DILocation(line: 367, column: 13, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1250, file: !1, line: 367, column: 11)
!1250 = distinct !DILexicalBlock(scope: !1246, file: !1, line: 366, column: 24)
!1251 = !DILocation(line: 367, column: 11, scope: !1250)
!1252 = !DILocation(line: 367, column: 21, scope: !1249)
!1253 = !DILocation(line: 0, scope: !1052)
!1254 = !DILocation(line: 369, column: 9, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1062, file: !1, line: 369, column: 9)
!1256 = !DILocation(line: 369, column: 9, scope: !1062)
!1257 = !DILocation(line: 370, column: 7, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1259, file: !1, line: 370, column: 7)
!1259 = distinct !DILexicalBlock(scope: !1255, file: !1, line: 369, column: 24)
!1260 = !DILocation(line: 370, column: 7, scope: !1259)
!1261 = !DILocation(line: 371, column: 7, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1259, file: !1, line: 371, column: 7)
!1263 = !DILocation(line: 371, column: 7, scope: !1259)
!1264 = !DILocation(line: 373, column: 5, scope: !1062)
!1265 = !DILocation(line: 375, column: 15, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1267, file: !1, line: 375, column: 13)
!1267 = distinct !DILexicalBlock(scope: !1083, file: !1, line: 374, column: 25)
!1268 = !DILocation(line: 375, column: 13, scope: !1267)
!1269 = !DILocation(line: 376, column: 11, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1271, file: !1, line: 376, column: 11)
!1271 = distinct !DILexicalBlock(scope: !1266, file: !1, line: 375, column: 21)
!1272 = !DILocation(line: 376, column: 11, scope: !1271)
!1273 = !DILocation(line: 377, column: 11, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1271, file: !1, line: 377, column: 11)
!1275 = !DILocation(line: 377, column: 11, scope: !1271)
!1276 = !DILocation(line: 383, column: 15, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1278, file: !1, line: 383, column: 13)
!1278 = distinct !DILexicalBlock(scope: !1083, file: !1, line: 382, column: 24)
!1279 = !DILocation(line: 383, column: 22, scope: !1277)
!1280 = !DILocation(line: 383, column: 29, scope: !1277)
!1281 = !DILocation(line: 383, column: 13, scope: !1278)
!1282 = !DILocation(line: 384, column: 11, scope: !1277)
!1283 = !DILocation(line: 389, column: 9, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1285, file: !1, line: 389, column: 9)
!1285 = distinct !DILexicalBlock(scope: !1083, file: !1, line: 388, column: 25)
!1286 = !DILocation(line: 389, column: 9, scope: !1285)
!1287 = !DILocation(line: 394, column: 9, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1289, file: !1, line: 394, column: 9)
!1289 = distinct !DILexicalBlock(scope: !1083, file: !1, line: 393, column: 26)
!1290 = !{!592, !417, i64 16}
!1291 = !DILocation(line: 394, column: 9, scope: !1289)
!1292 = !DILocation(line: 398, column: 9, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1294, file: !1, line: 398, column: 9)
!1294 = distinct !DILexicalBlock(scope: !1083, file: !1, line: 397, column: 21)
!1295 = !DILocation(line: 398, column: 9, scope: !1294)
!1296 = !DILocation(line: 399, column: 17, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1294, file: !1, line: 399, column: 13)
!1298 = !DILocation(line: 399, column: 13, scope: !1294)
!1299 = !DILocation(line: 399, column: 25, scope: !1297)
!1300 = !DILocation(line: 403, column: 9, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1302, file: !1, line: 403, column: 9)
!1302 = distinct !DILexicalBlock(scope: !1083, file: !1, line: 402, column: 23)
!1303 = !DILocation(line: 403, column: 9, scope: !1302)
!1304 = !DILocation(line: 407, column: 9, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1306, file: !1, line: 407, column: 9)
!1306 = distinct !DILexicalBlock(scope: !1083, file: !1, line: 406, column: 25)
!1307 = !DILocation(line: 407, column: 9, scope: !1306)
!1308 = !DILocation(line: 408, column: 9, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1306, file: !1, line: 408, column: 9)
!1310 = !DILocation(line: 408, column: 9, scope: !1306)
!1311 = !DILocation(line: 409, column: 17, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1306, file: !1, line: 409, column: 13)
!1313 = !DILocation(line: 409, column: 13, scope: !1306)
!1314 = !DILocation(line: 409, column: 25, scope: !1312)
!1315 = !DILocation(line: 414, column: 9, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1083, file: !1, line: 414, column: 9)
!1317 = !DILocation(line: 414, column: 9, scope: !1083)
!1318 = !DILocation(line: 417, column: 22, scope: !1082)
!1319 = !DILocation(line: 417, column: 24, scope: !1082)
!1320 = !DILocation(line: 417, column: 13, scope: !1082)
!1321 = !DILocation(line: 419, column: 27, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1082, file: !1, line: 419, column: 13)
!1323 = !DILocation(line: 419, column: 33, scope: !1322)
!1324 = !DILocation(line: 419, column: 40, scope: !1322)
!1325 = !DILocation(line: 419, column: 48, scope: !1322)
!1326 = !DILocation(line: 419, column: 13, scope: !1082)
!1327 = !DILocation(line: 420, column: 14, scope: !1322)
!1328 = !DILocation(line: 420, column: 11, scope: !1322)
!1329 = !DILocation(line: 0, scope: !1064)
!1330 = !DILocation(line: 425, column: 15, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1332, file: !1, line: 425, column: 13)
!1332 = distinct !DILexicalBlock(scope: !1083, file: !1, line: 424, column: 25)
!1333 = !DILocation(line: 425, column: 13, scope: !1332)
!1334 = !DILocation(line: 426, column: 11, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1336, file: !1, line: 426, column: 11)
!1336 = distinct !DILexicalBlock(scope: !1331, file: !1, line: 425, column: 21)
!1337 = !DILocation(line: 426, column: 11, scope: !1336)
!1338 = !DILocation(line: 428, column: 10, scope: !1332)
!1339 = !DILocation(line: 429, column: 15, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1332, file: !1, line: 429, column: 13)
!1341 = !DILocation(line: 429, column: 13, scope: !1332)
!1342 = !DILocation(line: 430, column: 11, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1344, file: !1, line: 430, column: 11)
!1344 = distinct !DILexicalBlock(scope: !1340, file: !1, line: 429, column: 31)
!1345 = !DILocation(line: 290, column: 35, scope: !1023, inlinedAt: !1346)
!1346 = distinct !DILocation(line: 430, column: 11, scope: !1343)
!1347 = !DILocation(line: 291, column: 3, scope: !1023, inlinedAt: !1346)
!1348 = !DILocation(line: 299, column: 14, scope: !1033, inlinedAt: !1346)
!1349 = !DILocation(line: 301, column: 1, scope: !1023, inlinedAt: !1346)
!1350 = !DILocation(line: 430, column: 11, scope: !1344)
!1351 = !DILocation(line: 296, column: 7, scope: !1031, inlinedAt: !1346)
!1352 = !DILocation(line: 296, column: 7, scope: !1032, inlinedAt: !1346)
!1353 = !DILocation(line: 0, scope: !1031, inlinedAt: !1346)
!1354 = !DILocation(line: 432, column: 20, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1340, file: !1, line: 432, column: 18)
!1356 = !DILocation(line: 432, column: 18, scope: !1340)
!1357 = !DILocation(line: 433, column: 11, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1355, file: !1, line: 433, column: 11)
!1359 = !DILocation(line: 433, column: 11, scope: !1355)
!1360 = !DILocation(line: 434, column: 17, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1332, file: !1, line: 434, column: 13)
!1362 = !DILocation(line: 434, column: 13, scope: !1332)
!1363 = !DILocation(line: 434, column: 23, scope: !1361)
!1364 = !DILocation(line: 439, column: 15, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1366, file: !1, line: 439, column: 13)
!1366 = distinct !DILexicalBlock(scope: !1083, file: !1, line: 437, column: 23)
!1367 = !DILocation(line: 439, column: 13, scope: !1366)
!1368 = !DILocation(line: 438, column: 10, scope: !1366)
!1369 = !DILocation(line: 439, column: 20, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1365, file: !1, line: 439, column: 20)
!1371 = !DILocation(line: 439, column: 20, scope: !1365)
!1372 = !DILocation(line: 443, column: 15, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1374, file: !1, line: 443, column: 13)
!1374 = distinct !DILexicalBlock(scope: !1083, file: !1, line: 442, column: 24)
!1375 = !DILocation(line: 443, column: 13, scope: !1374)
!1376 = !DILocation(line: 443, column: 20, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1373, file: !1, line: 443, column: 20)
!1378 = !DILocation(line: 443, column: 20, scope: !1373)
!1379 = !DILocation(line: 444, column: 15, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1374, file: !1, line: 444, column: 13)
!1381 = !DILocation(line: 444, column: 13, scope: !1374)
!1382 = !DILocation(line: 445, column: 13, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1380, file: !1, line: 444, column: 21)
!1384 = !DILocation(line: 446, column: 11, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1383, file: !1, line: 446, column: 11)
!1386 = !DILocation(line: 446, column: 11, scope: !1383)
!1387 = !DILocation(line: 452, column: 9, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1085, file: !1, line: 452, column: 9)
!1389 = !{!592, !420, i64 88}
!1390 = !DILocation(line: 452, column: 9, scope: !1085)
!1391 = !DILocation(line: 453, column: 19, scope: !1085)
!1392 = !{!592, !417, i64 32}
!1393 = !DILocation(line: 453, column: 15, scope: !1085)
!1394 = !DILocation(line: 453, column: 25, scope: !1085)
!1395 = !DILocation(line: 451, column: 13, scope: !1085)
!1396 = !DILocation(line: 454, column: 9, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1085, file: !1, line: 454, column: 9)
!1398 = !DILocation(line: 454, column: 9, scope: !1085)
!1399 = !DILocation(line: 0, scope: !1397)
!1400 = !DILocation(line: 451, column: 18, scope: !1085)
!1401 = !DILocation(line: 455, column: 23, scope: !1089)
!1402 = !DILocation(line: 455, column: 9, scope: !1090)
!1403 = !DILocation(line: 456, column: 24, scope: !1088)
!1404 = !DILocation(line: 456, column: 18, scope: !1088)
!1405 = !DILocation(line: 457, column: 11, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1088, file: !1, line: 457, column: 11)
!1407 = !DILocation(line: 0, scope: !1406)
!1408 = !DILocation(line: 455, column: 32, scope: !1089)
!1409 = !DILocation(line: 455, column: 9, scope: !1089)
!1410 = distinct !{!1410, !1402, !1411}
!1411 = !DILocation(line: 458, column: 9, scope: !1090)
!1412 = !DILocation(line: 459, column: 13, scope: !1085)
!1413 = !DILocation(line: 460, column: 11, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1085, file: !1, line: 459, column: 13)
!1415 = !DILocation(line: 461, column: 9, scope: !1085)
!1416 = !DILocation(line: 464, column: 9, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1418, file: !1, line: 464, column: 9)
!1418 = distinct !DILexicalBlock(scope: !1083, file: !1, line: 463, column: 23)
!1419 = !DILocation(line: 464, column: 9, scope: !1418)
!1420 = !DILocation(line: 467, column: 15, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1418, file: !1, line: 467, column: 13)
!1422 = !DILocation(line: 467, column: 13, scope: !1418)
!1423 = !DILocation(line: 467, column: 31, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1421, file: !1, line: 467, column: 31)
!1425 = !DILocation(line: 290, column: 35, scope: !1023, inlinedAt: !1426)
!1426 = distinct !DILocation(line: 467, column: 31, scope: !1424)
!1427 = !DILocation(line: 291, column: 3, scope: !1023, inlinedAt: !1426)
!1428 = !DILocation(line: 299, column: 14, scope: !1033, inlinedAt: !1426)
!1429 = !DILocation(line: 301, column: 1, scope: !1023, inlinedAt: !1426)
!1430 = !DILocation(line: 467, column: 31, scope: !1421)
!1431 = !DILocation(line: 296, column: 7, scope: !1031, inlinedAt: !1426)
!1432 = !DILocation(line: 296, column: 7, scope: !1032, inlinedAt: !1426)
!1433 = !DILocation(line: 0, scope: !1031, inlinedAt: !1426)
!1434 = !DILocation(line: 466, column: 10, scope: !1418)
!1435 = !DILocation(line: 468, column: 9, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1418, file: !1, line: 468, column: 9)
!1437 = !DILocation(line: 468, column: 9, scope: !1418)
!1438 = !DILocation(line: 0, scope: !1249)
!1439 = !DILocation(line: 473, column: 3, scope: !1063)
!1440 = !DILocation(line: 322, column: 31, scope: !1063)
!1441 = !DILocation(line: 322, column: 3, scope: !1063)
!1442 = distinct !{!1442, !1133, !1443}
!1443 = !DILocation(line: 473, column: 3, scope: !1064)
!1444 = !DILocation(line: 474, column: 10, scope: !1052)
!1445 = !DILocation(line: 475, column: 1, scope: !1052)
!1446 = distinct !DISubprogram(name: "luaG_typeerror", scope: !1, file: !1, line: 567, type: !1447, isLocal: false, isDefinition: true, scopeLine: 567, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1449)
!1447 = !DISubroutineType(types: !1448)
!1448 = !{null, !179, !637, !307}
!1449 = !{!1450, !1451, !1452, !1453, !1454, !1455}
!1450 = !DILocalVariable(name: "L", arg: 1, scope: !1446, file: !1, line: 567, type: !179)
!1451 = !DILocalVariable(name: "o", arg: 2, scope: !1446, file: !1, line: 567, type: !637)
!1452 = !DILocalVariable(name: "op", arg: 3, scope: !1446, file: !1, line: 567, type: !307)
!1453 = !DILocalVariable(name: "name", scope: !1446, file: !1, line: 568, type: !307)
!1454 = !DILocalVariable(name: "t", scope: !1446, file: !1, line: 569, type: !307)
!1455 = !DILocalVariable(name: "kind", scope: !1446, file: !1, line: 570, type: !307)
!1456 = !DILocation(line: 567, column: 33, scope: !1446)
!1457 = !DILocation(line: 567, column: 50, scope: !1446)
!1458 = !DILocation(line: 567, column: 65, scope: !1446)
!1459 = !DILocation(line: 568, column: 3, scope: !1446)
!1460 = !DILocation(line: 568, column: 15, scope: !1446)
!1461 = !DILocation(line: 569, column: 34, scope: !1446)
!1462 = !DILocation(line: 569, column: 19, scope: !1446)
!1463 = !DILocation(line: 569, column: 15, scope: !1446)
!1464 = !DILocation(line: 570, column: 36, scope: !1446)
!1465 = !DILocalVariable(name: "ci", arg: 1, scope: !1466, file: !1, line: 559, type: !269)
!1466 = distinct !DISubprogram(name: "isinstack", scope: !1, file: !1, line: 559, type: !1467, isLocal: true, isDefinition: true, scopeLine: 559, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1469)
!1467 = !DISubroutineType(types: !1468)
!1468 = !{!61, !269, !637}
!1469 = !{!1465, !1470, !1471}
!1470 = !DILocalVariable(name: "o", arg: 2, scope: !1466, file: !1, line: 559, type: !637)
!1471 = !DILocalVariable(name: "p", scope: !1466, file: !1, line: 560, type: !188)
!1472 = !DILocation(line: 559, column: 33, scope: !1466, inlinedAt: !1473)
!1473 = distinct !DILocation(line: 570, column: 23, scope: !1446)
!1474 = !DILocation(line: 559, column: 51, scope: !1466, inlinedAt: !1473)
!1475 = !DILocation(line: 561, column: 16, scope: !1476, inlinedAt: !1473)
!1476 = distinct !DILexicalBlock(scope: !1466, file: !1, line: 561, column: 3)
!1477 = !DILocation(line: 560, column: 9, scope: !1466, inlinedAt: !1473)
!1478 = !DILocation(line: 561, column: 8, scope: !1476, inlinedAt: !1473)
!1479 = !DILocation(line: 561, column: 30, scope: !1480, inlinedAt: !1473)
!1480 = distinct !DILexicalBlock(scope: !1476, file: !1, line: 561, column: 3)
!1481 = !{!485, !417, i64 16}
!1482 = !DILocation(line: 561, column: 24, scope: !1480, inlinedAt: !1473)
!1483 = !DILocation(line: 561, column: 3, scope: !1476, inlinedAt: !1473)
!1484 = !DILocation(line: 562, column: 11, scope: !1485, inlinedAt: !1473)
!1485 = distinct !DILexicalBlock(scope: !1480, file: !1, line: 562, column: 9)
!1486 = !DILocation(line: 562, column: 9, scope: !1480, inlinedAt: !1473)
!1487 = !DILocation(line: 561, column: 36, scope: !1480, inlinedAt: !1473)
!1488 = !DILocation(line: 561, column: 3, scope: !1480, inlinedAt: !1473)
!1489 = distinct !{!1489, !1490, !1491}
!1490 = !DILocation(line: 561, column: 3, scope: !1476)
!1491 = !DILocation(line: 562, column: 24, scope: !1476)
!1492 = !DILocation(line: 563, column: 3, scope: !1466, inlinedAt: !1473)
!1493 = !DILocation(line: 564, column: 1, scope: !1466, inlinedAt: !1473)
!1494 = !DILocation(line: 570, column: 22, scope: !1446)
!1495 = !DILocation(line: 570, column: 15, scope: !1446)
!1496 = !DILocation(line: 573, column: 7, scope: !1446)
!1497 = !DILocation(line: 562, column: 17, scope: !1485, inlinedAt: !1473)
!1498 = !DILocation(line: 571, column: 47, scope: !1446)
!1499 = !{!416, !417, i64 24}
!1500 = !DILocation(line: 571, column: 26, scope: !1446)
!1501 = !DILocation(line: 573, column: 7, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1446, file: !1, line: 573, column: 7)
!1503 = !DILocation(line: 575, column: 27, scope: !1502)
!1504 = !DILocation(line: 574, column: 5, scope: !1502)
!1505 = !DILocation(line: 577, column: 5, scope: !1502)
!1506 = !DILocation(line: 578, column: 1, scope: !1446)
!1507 = distinct !DISubprogram(name: "getobjname", scope: !1, file: !1, line: 497, type: !1508, isLocal: true, isDefinition: true, scopeLine: 498, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1510)
!1508 = !DISubroutineType(types: !1509)
!1509 = !{!307, !179, !269, !61, !888}
!1510 = !{!1511, !1512, !1513, !1514, !1515, !1518, !1519, !1520, !1523, !1525, !1526, !1528, !1530}
!1511 = !DILocalVariable(name: "L", arg: 1, scope: !1507, file: !1, line: 497, type: !179)
!1512 = !DILocalVariable(name: "ci", arg: 2, scope: !1507, file: !1, line: 497, type: !269)
!1513 = !DILocalVariable(name: "stackpos", arg: 3, scope: !1507, file: !1, line: 497, type: !61)
!1514 = !DILocalVariable(name: "name", arg: 4, scope: !1507, file: !1, line: 498, type: !888)
!1515 = !DILocalVariable(name: "p", scope: !1516, file: !1, line: 500, type: !545)
!1516 = distinct !DILexicalBlock(scope: !1517, file: !1, line: 499, column: 18)
!1517 = distinct !DILexicalBlock(scope: !1507, file: !1, line: 499, column: 7)
!1518 = !DILocalVariable(name: "pc", scope: !1516, file: !1, line: 501, type: !61)
!1519 = !DILocalVariable(name: "i", scope: !1516, file: !1, line: 502, type: !279)
!1520 = !DILocalVariable(name: "g", scope: !1521, file: !1, line: 510, type: !61)
!1521 = distinct !DILexicalBlock(scope: !1522, file: !1, line: 509, column: 26)
!1522 = distinct !DILexicalBlock(scope: !1516, file: !1, line: 508, column: 28)
!1523 = !DILocalVariable(name: "a", scope: !1524, file: !1, line: 516, type: !61)
!1524 = distinct !DILexicalBlock(scope: !1522, file: !1, line: 515, column: 21)
!1525 = !DILocalVariable(name: "b", scope: !1524, file: !1, line: 517, type: !61)
!1526 = !DILocalVariable(name: "k", scope: !1527, file: !1, line: 523, type: !61)
!1527 = distinct !DILexicalBlock(scope: !1522, file: !1, line: 522, column: 25)
!1528 = !DILocalVariable(name: "u", scope: !1529, file: !1, line: 528, type: !61)
!1529 = distinct !DILexicalBlock(scope: !1522, file: !1, line: 527, column: 25)
!1530 = !DILocalVariable(name: "k", scope: !1531, file: !1, line: 533, type: !61)
!1531 = distinct !DILexicalBlock(scope: !1522, file: !1, line: 532, column: 21)
!1532 = !DILocation(line: 497, column: 43, scope: !1507)
!1533 = !DILocation(line: 497, column: 56, scope: !1507)
!1534 = !DILocation(line: 497, column: 64, scope: !1507)
!1535 = !DILocation(line: 498, column: 45, scope: !1507)
!1536 = !DILocation(line: 499, column: 7, scope: !1517)
!1537 = !DILocation(line: 499, column: 7, scope: !1507)
!1538 = !DILocation(line: 500, column: 31, scope: !1516)
!1539 = !DILocation(line: 500, column: 12, scope: !1516)
!1540 = !DILocation(line: 36, column: 34, scope: !569, inlinedAt: !1541)
!1541 = distinct !DILocation(line: 501, column: 14, scope: !1516)
!1542 = !DILocation(line: 36, column: 47, scope: !569, inlinedAt: !1541)
!1543 = !DILocation(line: 37, column: 8, scope: !578, inlinedAt: !1541)
!1544 = !DILocation(line: 37, column: 7, scope: !569, inlinedAt: !1541)
!1545 = !DILocation(line: 38, column: 16, scope: !581, inlinedAt: !1541)
!1546 = !DILocation(line: 38, column: 10, scope: !581, inlinedAt: !1541)
!1547 = !DILocation(line: 38, column: 7, scope: !569, inlinedAt: !1541)
!1548 = !DILocation(line: 40, column: 10, scope: !569, inlinedAt: !1541)
!1549 = !DILocation(line: 39, column: 22, scope: !581, inlinedAt: !1541)
!1550 = !DILocation(line: 39, column: 9, scope: !581, inlinedAt: !1541)
!1551 = !DILocation(line: 39, column: 17, scope: !581, inlinedAt: !1541)
!1552 = !DILocation(line: 39, column: 5, scope: !581, inlinedAt: !1541)
!1553 = !DILocation(line: 40, column: 3, scope: !569, inlinedAt: !1541)
!1554 = !DILocation(line: 41, column: 1, scope: !569, inlinedAt: !1541)
!1555 = !DILocation(line: 501, column: 9, scope: !1516)
!1556 = !DILocation(line: 503, column: 42, scope: !1516)
!1557 = !DILocation(line: 503, column: 13, scope: !1516)
!1558 = !DILocation(line: 503, column: 11, scope: !1516)
!1559 = !DILocation(line: 504, column: 9, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1516, file: !1, line: 504, column: 9)
!1561 = !DILocation(line: 504, column: 9, scope: !1516)
!1562 = !DILocation(line: 506, column: 9, scope: !1516)
!1563 = !DILocation(line: 502, column: 17, scope: !1516)
!1564 = !DILocation(line: 508, column: 5, scope: !1516)
!1565 = !DILocation(line: 510, column: 17, scope: !1521)
!1566 = !DILocation(line: 510, column: 13, scope: !1521)
!1567 = !DILocation(line: 512, column: 17, scope: !1521)
!1568 = !DILocation(line: 512, column: 15, scope: !1521)
!1569 = !DILocation(line: 516, column: 17, scope: !1524)
!1570 = !DILocation(line: 516, column: 13, scope: !1524)
!1571 = !DILocation(line: 517, column: 17, scope: !1524)
!1572 = !DILocation(line: 517, column: 13, scope: !1524)
!1573 = !DILocation(line: 518, column: 15, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1524, file: !1, line: 518, column: 13)
!1575 = !DILocation(line: 518, column: 13, scope: !1524)
!1576 = !DILocation(line: 520, column: 9, scope: !1524)
!1577 = !DILocation(line: 519, column: 18, scope: !1574)
!1578 = !DILocation(line: 519, column: 11, scope: !1574)
!1579 = !DILocalVariable(name: "p", arg: 1, scope: !1580, file: !1, line: 489, type: !545)
!1580 = distinct !DISubprogram(name: "kname", scope: !1, file: !1, line: 489, type: !1581, isLocal: true, isDefinition: true, scopeLine: 489, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1583)
!1581 = !DISubroutineType(types: !1582)
!1582 = !{!307, !545, !61}
!1583 = !{!1579, !1584}
!1584 = !DILocalVariable(name: "c", arg: 2, scope: !1580, file: !1, line: 489, type: !61)
!1585 = !DILocation(line: 489, column: 34, scope: !1580, inlinedAt: !1586)
!1586 = distinct !DILocation(line: 524, column: 17, scope: !1527)
!1587 = !DILocation(line: 490, column: 7, scope: !1588, inlinedAt: !1586)
!1588 = distinct !DILexicalBlock(scope: !1580, file: !1, line: 490, column: 7)
!1589 = !DILocation(line: 490, column: 14, scope: !1588, inlinedAt: !1586)
!1590 = !DILocation(line: 523, column: 17, scope: !1527)
!1591 = !DILocation(line: 523, column: 13, scope: !1527)
!1592 = !DILocation(line: 489, column: 41, scope: !1580, inlinedAt: !1586)
!1593 = !DILocation(line: 490, column: 17, scope: !1588, inlinedAt: !1586)
!1594 = !DILocation(line: 490, column: 7, scope: !1580, inlinedAt: !1586)
!1595 = !DILocation(line: 491, column: 12, scope: !1588, inlinedAt: !1586)
!1596 = !DILocation(line: 491, column: 5, scope: !1588, inlinedAt: !1586)
!1597 = !DILocation(line: 0, scope: !1588, inlinedAt: !1586)
!1598 = !DILocation(line: 0, scope: !1527)
!1599 = !DILocation(line: 494, column: 1, scope: !1580, inlinedAt: !1586)
!1600 = !DILocation(line: 524, column: 15, scope: !1527)
!1601 = !DILocation(line: 529, column: 20, scope: !1529)
!1602 = !{!592, !417, i64 56}
!1603 = !DILocation(line: 529, column: 17, scope: !1529)
!1604 = !DILocation(line: 528, column: 17, scope: !1529)
!1605 = !DILocation(line: 528, column: 13, scope: !1529)
!1606 = !DILocation(line: 529, column: 31, scope: !1529)
!1607 = !DILocation(line: 529, column: 15, scope: !1529)
!1608 = !DILocation(line: 489, column: 34, scope: !1580, inlinedAt: !1609)
!1609 = distinct !DILocation(line: 534, column: 17, scope: !1531)
!1610 = !DILocation(line: 490, column: 7, scope: !1588, inlinedAt: !1609)
!1611 = !DILocation(line: 490, column: 14, scope: !1588, inlinedAt: !1609)
!1612 = !DILocation(line: 533, column: 17, scope: !1531)
!1613 = !DILocation(line: 533, column: 13, scope: !1531)
!1614 = !DILocation(line: 489, column: 41, scope: !1580, inlinedAt: !1609)
!1615 = !DILocation(line: 490, column: 17, scope: !1588, inlinedAt: !1609)
!1616 = !DILocation(line: 490, column: 7, scope: !1580, inlinedAt: !1609)
!1617 = !DILocation(line: 491, column: 12, scope: !1588, inlinedAt: !1609)
!1618 = !DILocation(line: 491, column: 5, scope: !1588, inlinedAt: !1609)
!1619 = !DILocation(line: 0, scope: !1588, inlinedAt: !1609)
!1620 = !DILocation(line: 0, scope: !1531)
!1621 = !DILocation(line: 494, column: 1, scope: !1580, inlinedAt: !1609)
!1622 = !DILocation(line: 534, column: 15, scope: !1531)
!1623 = !DILocation(line: 539, column: 3, scope: !1517)
!1624 = !DILocation(line: 0, scope: !1560)
!1625 = !DILocation(line: 541, column: 1, scope: !1507)
!1626 = distinct !DISubprogram(name: "luaG_runerror", scope: !1, file: !1, line: 631, type: !1627, isLocal: false, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1629)
!1627 = !DISubroutineType(types: !1628)
!1628 = !{null, !179, !307, null}
!1629 = !{!1630, !1631, !1632}
!1630 = !DILocalVariable(name: "L", arg: 1, scope: !1626, file: !1, line: 631, type: !179)
!1631 = !DILocalVariable(name: "fmt", arg: 2, scope: !1626, file: !1, line: 631, type: !307)
!1632 = !DILocalVariable(name: "argp", scope: !1626, file: !1, line: 632, type: !1633)
!1633 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1634, line: 32, baseType: !1635)
!1634 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!1635 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 632, baseType: !1636)
!1636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1637, size: 192, elements: !333)
!1637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 632, size: 192, elements: !1638)
!1638 = !{!1639, !1640, !1641, !1642}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1637, file: !1, line: 632, baseType: !5, size: 32)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1637, file: !1, line: 632, baseType: !5, size: 32, offset: 32)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1637, file: !1, line: 632, baseType: !57, size: 64, offset: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1637, file: !1, line: 632, baseType: !57, size: 64, offset: 128)
!1643 = !DILocalVariable(name: "buff", scope: !1644, file: !1, line: 610, type: !317)
!1644 = distinct !DILexicalBlock(scope: !1645, file: !1, line: 609, column: 18)
!1645 = distinct !DILexicalBlock(scope: !1646, file: !1, line: 609, column: 7)
!1646 = distinct !DISubprogram(name: "addinfo", scope: !1, file: !1, line: 607, type: !1647, isLocal: true, isDefinition: true, scopeLine: 607, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1649)
!1647 = !DISubroutineType(types: !1648)
!1648 = !{null, !179, !307}
!1649 = !{!1650, !1651, !1652, !1643, !1653}
!1650 = !DILocalVariable(name: "L", arg: 1, scope: !1646, file: !1, line: 607, type: !179)
!1651 = !DILocalVariable(name: "msg", arg: 2, scope: !1646, file: !1, line: 607, type: !307)
!1652 = !DILocalVariable(name: "ci", scope: !1646, file: !1, line: 608, type: !269)
!1653 = !DILocalVariable(name: "line", scope: !1644, file: !1, line: 611, type: !61)
!1654 = !DILocation(line: 610, column: 10, scope: !1644, inlinedAt: !1655)
!1655 = distinct !DILocation(line: 634, column: 3, scope: !1626)
!1656 = !DILocation(line: 631, column: 32, scope: !1626)
!1657 = !DILocation(line: 631, column: 47, scope: !1626)
!1658 = !DILocation(line: 632, column: 3, scope: !1626)
!1659 = !DILocation(line: 632, column: 11, scope: !1626)
!1660 = !DILocation(line: 633, column: 3, scope: !1626)
!1661 = !DILocation(line: 634, column: 14, scope: !1626)
!1662 = !DILocation(line: 607, column: 33, scope: !1646, inlinedAt: !1655)
!1663 = !DILocation(line: 607, column: 48, scope: !1646, inlinedAt: !1655)
!1664 = !DILocation(line: 608, column: 21, scope: !1646, inlinedAt: !1655)
!1665 = !DILocation(line: 608, column: 13, scope: !1646, inlinedAt: !1655)
!1666 = !DILocation(line: 609, column: 7, scope: !1645, inlinedAt: !1655)
!1667 = !DILocation(line: 609, column: 7, scope: !1646, inlinedAt: !1655)
!1668 = !DILocation(line: 610, column: 5, scope: !1644, inlinedAt: !1655)
!1669 = !DILocation(line: 44, column: 36, scope: !843, inlinedAt: !1670)
!1670 = distinct !DILocation(line: 611, column: 16, scope: !1644, inlinedAt: !1655)
!1671 = !DILocation(line: 44, column: 49, scope: !843, inlinedAt: !1670)
!1672 = !DILocation(line: 36, column: 34, scope: !569, inlinedAt: !1673)
!1673 = distinct !DILocation(line: 45, column: 12, scope: !843, inlinedAt: !1670)
!1674 = !DILocation(line: 36, column: 47, scope: !569, inlinedAt: !1673)
!1675 = !DILocation(line: 37, column: 8, scope: !578, inlinedAt: !1673)
!1676 = !DILocation(line: 37, column: 7, scope: !569, inlinedAt: !1673)
!1677 = !DILocation(line: 0, scope: !843, inlinedAt: !1670)
!1678 = !DILocation(line: 39, column: 22, scope: !581, inlinedAt: !1673)
!1679 = !DILocation(line: 39, column: 9, scope: !581, inlinedAt: !1673)
!1680 = !DILocation(line: 39, column: 17, scope: !581, inlinedAt: !1673)
!1681 = !DILocation(line: 39, column: 5, scope: !581, inlinedAt: !1673)
!1682 = !DILocation(line: 40, column: 10, scope: !569, inlinedAt: !1673)
!1683 = !DILocation(line: 40, column: 3, scope: !569, inlinedAt: !1673)
!1684 = !DILocation(line: 41, column: 1, scope: !569, inlinedAt: !1673)
!1685 = !DILocation(line: 45, column: 7, scope: !843, inlinedAt: !1670)
!1686 = !DILocation(line: 46, column: 10, scope: !868, inlinedAt: !1670)
!1687 = !DILocation(line: 46, column: 7, scope: !843, inlinedAt: !1670)
!1688 = !DILocation(line: 49, column: 12, scope: !868, inlinedAt: !1670)
!1689 = !DILocation(line: 0, scope: !1644, inlinedAt: !1655)
!1690 = !DILocation(line: 50, column: 1, scope: !843, inlinedAt: !1670)
!1691 = !DILocation(line: 108, column: 11, scope: !555, inlinedAt: !1692)
!1692 = distinct !DILocation(line: 612, column: 24, scope: !1644, inlinedAt: !1655)
!1693 = !DILocation(line: 108, column: 3, scope: !555, inlinedAt: !1692)
!1694 = !DILocation(line: 612, column: 24, scope: !1644, inlinedAt: !1655)
!1695 = !DILocation(line: 612, column: 5, scope: !1644, inlinedAt: !1655)
!1696 = !DILocation(line: 613, column: 5, scope: !1644, inlinedAt: !1655)
!1697 = !DILocation(line: 614, column: 3, scope: !1645, inlinedAt: !1655)
!1698 = !DILocation(line: 614, column: 3, scope: !1644, inlinedAt: !1655)
!1699 = !DILocation(line: 615, column: 1, scope: !1646, inlinedAt: !1655)
!1700 = !DILocation(line: 635, column: 3, scope: !1626)
!1701 = !DILocation(line: 636, column: 3, scope: !1626)
!1702 = !DILocation(line: 637, column: 1, scope: !1626)
!1703 = distinct !DISubprogram(name: "luaG_concaterror", scope: !1, file: !1, line: 581, type: !1704, isLocal: false, isDefinition: true, scopeLine: 581, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1706)
!1704 = !DISubroutineType(types: !1705)
!1705 = !{null, !179, !188, !188}
!1706 = !{!1707, !1708, !1709}
!1707 = !DILocalVariable(name: "L", arg: 1, scope: !1703, file: !1, line: 581, type: !179)
!1708 = !DILocalVariable(name: "p1", arg: 2, scope: !1703, file: !1, line: 581, type: !188)
!1709 = !DILocalVariable(name: "p2", arg: 3, scope: !1703, file: !1, line: 581, type: !188)
!1710 = !DILocation(line: 581, column: 35, scope: !1703)
!1711 = !DILocation(line: 581, column: 44, scope: !1703)
!1712 = !DILocation(line: 581, column: 54, scope: !1703)
!1713 = !DILocation(line: 582, column: 7, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1703, file: !1, line: 582, column: 7)
!1715 = !DILocation(line: 582, column: 22, scope: !1714)
!1716 = !DILocation(line: 582, column: 25, scope: !1714)
!1717 = !DILocation(line: 582, column: 7, scope: !1703)
!1718 = !DILocation(line: 582, column: 41, scope: !1714)
!1719 = !DILocation(line: 584, column: 3, scope: !1703)
!1720 = !DILocation(line: 585, column: 1, scope: !1703)
!1721 = distinct !DISubprogram(name: "luaG_aritherror", scope: !1, file: !1, line: 588, type: !1722, isLocal: false, isDefinition: true, scopeLine: 588, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1724)
!1722 = !DISubroutineType(types: !1723)
!1723 = !{null, !179, !637, !637}
!1724 = !{!1725, !1726, !1727, !1728}
!1725 = !DILocalVariable(name: "L", arg: 1, scope: !1721, file: !1, line: 588, type: !179)
!1726 = !DILocalVariable(name: "p1", arg: 2, scope: !1721, file: !1, line: 588, type: !637)
!1727 = !DILocalVariable(name: "p2", arg: 3, scope: !1721, file: !1, line: 588, type: !637)
!1728 = !DILocalVariable(name: "temp", scope: !1721, file: !1, line: 589, type: !123)
!1729 = !DILocation(line: 588, column: 34, scope: !1721)
!1730 = !DILocation(line: 588, column: 51, scope: !1721)
!1731 = !DILocation(line: 588, column: 69, scope: !1721)
!1732 = !DILocation(line: 589, column: 3, scope: !1721)
!1733 = !DILocation(line: 589, column: 10, scope: !1721)
!1734 = !DILocation(line: 590, column: 7, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1721, file: !1, line: 590, column: 7)
!1736 = !DILocation(line: 590, column: 32, scope: !1735)
!1737 = !DILocation(line: 590, column: 7, scope: !1721)
!1738 = !DILocation(line: 591, column: 5, scope: !1735)
!1739 = !DILocation(line: 592, column: 3, scope: !1721)
!1740 = !DILocation(line: 593, column: 1, scope: !1721)
!1741 = distinct !DISubprogram(name: "luaG_ordererror", scope: !1, file: !1, line: 596, type: !1742, isLocal: false, isDefinition: true, scopeLine: 596, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1744)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{!61, !179, !637, !637}
!1744 = !{!1745, !1746, !1747, !1748, !1749}
!1745 = !DILocalVariable(name: "L", arg: 1, scope: !1741, file: !1, line: 596, type: !179)
!1746 = !DILocalVariable(name: "p1", arg: 2, scope: !1741, file: !1, line: 596, type: !637)
!1747 = !DILocalVariable(name: "p2", arg: 3, scope: !1741, file: !1, line: 596, type: !637)
!1748 = !DILocalVariable(name: "t1", scope: !1741, file: !1, line: 597, type: !307)
!1749 = !DILocalVariable(name: "t2", scope: !1741, file: !1, line: 598, type: !307)
!1750 = !DILocation(line: 596, column: 33, scope: !1741)
!1751 = !DILocation(line: 596, column: 50, scope: !1741)
!1752 = !DILocation(line: 596, column: 68, scope: !1741)
!1753 = !DILocation(line: 597, column: 35, scope: !1741)
!1754 = !DILocation(line: 597, column: 20, scope: !1741)
!1755 = !DILocation(line: 597, column: 15, scope: !1741)
!1756 = !DILocation(line: 598, column: 35, scope: !1741)
!1757 = !DILocation(line: 598, column: 20, scope: !1741)
!1758 = !DILocation(line: 598, column: 15, scope: !1741)
!1759 = !DILocation(line: 599, column: 7, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1741, file: !1, line: 599, column: 7)
!1761 = !DILocation(line: 599, column: 16, scope: !1760)
!1762 = !DILocation(line: 599, column: 13, scope: !1760)
!1763 = !DILocation(line: 599, column: 7, scope: !1741)
!1764 = !DILocation(line: 600, column: 5, scope: !1760)
!1765 = !DILocation(line: 602, column: 5, scope: !1760)
!1766 = !DILocation(line: 603, column: 3, scope: !1741)
!1767 = distinct !DISubprogram(name: "luaG_errormsg", scope: !1, file: !1, line: 618, type: !1768, isLocal: false, isDefinition: true, scopeLine: 618, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1770)
!1768 = !DISubroutineType(types: !1769)
!1769 = !{null, !179}
!1770 = !{!1771, !1772, !1775, !1777, !1778, !1780}
!1771 = !DILocalVariable(name: "L", arg: 1, scope: !1767, file: !1, line: 618, type: !179)
!1772 = !DILocalVariable(name: "errfunc", scope: !1773, file: !1, line: 620, type: !188)
!1773 = distinct !DILexicalBlock(scope: !1774, file: !1, line: 619, column: 24)
!1774 = distinct !DILexicalBlock(scope: !1767, file: !1, line: 619, column: 7)
!1775 = !DILocalVariable(name: "o2", scope: !1776, file: !1, line: 622, type: !637)
!1776 = distinct !DILexicalBlock(scope: !1773, file: !1, line: 622, column: 5)
!1777 = !DILocalVariable(name: "o1", scope: !1776, file: !1, line: 622, type: !122)
!1778 = !DILocalVariable(name: "o2", scope: !1779, file: !1, line: 623, type: !637)
!1779 = distinct !DILexicalBlock(scope: !1773, file: !1, line: 623, column: 5)
!1780 = !DILocalVariable(name: "o1", scope: !1779, file: !1, line: 623, type: !122)
!1781 = !DILocation(line: 618, column: 32, scope: !1767)
!1782 = !DILocation(line: 619, column: 10, scope: !1774)
!1783 = !{!416, !423, i64 176}
!1784 = !DILocation(line: 619, column: 18, scope: !1774)
!1785 = !DILocation(line: 619, column: 7, scope: !1767)
!1786 = !DILocation(line: 620, column: 21, scope: !1773)
!1787 = !{!416, !417, i64 64}
!1788 = !DILocation(line: 620, column: 11, scope: !1773)
!1789 = !DILocation(line: 621, column: 10, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1773, file: !1, line: 621, column: 9)
!1791 = !DILocation(line: 621, column: 9, scope: !1773)
!1792 = !DILocation(line: 621, column: 33, scope: !1790)
!1793 = !DILocation(line: 622, column: 5, scope: !1776)
!1794 = !DILocation(line: 623, column: 5, scope: !1779)
!1795 = !DILocation(line: 624, column: 5, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1797, file: !1, line: 624, column: 5)
!1797 = distinct !DILexicalBlock(scope: !1773, file: !1, line: 624, column: 5)
!1798 = !DILocation(line: 624, column: 5, scope: !1797)
!1799 = !DILocation(line: 625, column: 25, scope: !1773)
!1800 = !DILocation(line: 625, column: 5, scope: !1773)
!1801 = !DILocation(line: 626, column: 3, scope: !1773)
!1802 = !DILocation(line: 627, column: 3, scope: !1767)
!1803 = !DILocation(line: 628, column: 1, scope: !1767)
