; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lapi.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lapi.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%struct.Node = type { %struct.lua_TValue, %union.TKey }
%union.TKey = type { %struct.anon.0 }
%struct.anon.0 = type { %union.Value, i32, %struct.Node* }
%union.TString = type { %struct.anon.1 }
%struct.anon.1 = type { %union.GCObject*, i8, i8, i8, i32, i64 }
%struct.CallInfo = type { %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*, i32*, i32, i32 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, [60 x i8], i32 }
%struct.lua_longjmp = type opaque
%struct.CClosure = type { %union.GCObject*, i8, i8, i8, i8, %union.GCObject*, %struct.Table*, i32 (%struct.lua_State*)*, [1 x %struct.lua_TValue] }
%struct.anon.2 = type { %union.GCObject*, i8, i8, %struct.Table*, %struct.Table*, i64 }
%union.Udata = type { %struct.anon.2 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%union.Closure = type { %struct.CClosure }
%struct.GCheader = type { %union.GCObject*, i8, i8 }
%struct.CallS = type { %struct.lua_TValue*, i32 }
%struct.CCallS = type { i32 (%struct.lua_State*)*, i8* }
%struct.Zio = type { i64, i8*, i8* (%struct.lua_State*, i8*, i64*)*, i8*, %struct.lua_State* }
%struct.Proto = type { %union.GCObject*, i8, i8, %struct.lua_TValue*, i32*, %struct.Proto**, i32*, %struct.LocVar*, %union.TString**, %union.TString*, i32, i32, i32, i32, i32, i32, i32, i32, %union.GCObject*, i8, i8, i8, i8 }
%struct.LocVar = type { %union.TString*, i32, i32 }

@lua_ident = dso_local local_unnamed_addr constant [141 x i8] c"$Lua: Lua 5.1.5 Copyright (C) 1994-2012 Lua.org, PUC-Rio $\0A$Authors: R. Ierusalimschy, L. H. de Figueiredo & W. Celes $\0A$URL: www.lua.org $\0A\00", align 16, !dbg !0
@.str = private unnamed_addr constant [23 x i8] c"no calling environment\00", align 1
@luaO_nilobject_ = external hidden constant %struct.lua_TValue, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"no value\00", align 1
@luaT_typenames = external hidden local_unnamed_addr constant [0 x i8*], align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noredzone nounwind
define hidden void @luaA_pushobject(%struct.lua_State* nocapture, %struct.lua_TValue* nocapture readonly) local_unnamed_addr #0 !dbg !359 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !372
  %4 = load %struct.lua_TValue*, %struct.lua_TValue** %3, align 8, !dbg !372, !tbaa !373
  %5 = bitcast %struct.lua_TValue* %1 to i64*, !dbg !372
  %6 = bitcast %struct.lua_TValue* %4 to i64*, !dbg !372
  %7 = load i64, i64* %5, align 8, !dbg !372
  store i64 %7, i64* %6, align 8, !dbg !372
  %8 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1, i64 0, i32 1, !dbg !372
  %9 = load i32, i32* %8, align 8, !dbg !372, !tbaa !382
  %10 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %4, i64 0, i32 1, !dbg !372
  store i32 %9, i32* %10, align 8, !dbg !372, !tbaa !382
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %3, align 8, !dbg !383, !tbaa !373
  %12 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %11, i64 1, !dbg !383
  store %struct.lua_TValue* %12, %struct.lua_TValue** %3, align 8, !dbg !383, !tbaa !373
  ret void, !dbg !385
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_checkstack(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !386 {
  %3 = icmp sgt i32 %1, 8000, !dbg !396
  br i1 %3, label %38, label %4, !dbg !398

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !399
  %6 = bitcast %struct.lua_TValue** %5 to i64*, !dbg !399
  %7 = load i64, i64* %6, align 8, !dbg !399, !tbaa !373
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !400
  %9 = bitcast %struct.lua_TValue** %8 to i64*, !dbg !400
  %10 = load i64, i64* %9, align 8, !dbg !400, !tbaa !401
  %11 = sub i64 %7, %10, !dbg !402
  %12 = ashr exact i64 %11, 4, !dbg !402
  %13 = sext i32 %1 to i64, !dbg !403
  %14 = add nsw i64 %12, %13, !dbg !404
  %15 = icmp sgt i64 %14, 8000, !dbg !405
  %16 = inttoptr i64 %7 to %struct.lua_TValue*, !dbg !406
  br i1 %15, label %38, label %17, !dbg !406

; <label>:17:                                     ; preds = %4
  %18 = icmp sgt i32 %1, 0, !dbg !407
  br i1 %18, label %19, label %38, !dbg !409

; <label>:19:                                     ; preds = %17
  %20 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 9, !dbg !410
  %21 = bitcast %struct.lua_TValue** %20 to i64*, !dbg !410
  %22 = load i64, i64* %21, align 8, !dbg !410, !tbaa !413
  %23 = sub i64 %22, %7, !dbg !410
  %24 = shl nsw i32 %1, 4, !dbg !410
  %25 = sext i32 %24 to i64, !dbg !410
  %26 = icmp sgt i64 %23, %25, !dbg !410
  br i1 %26, label %29, label %27, !dbg !414

; <label>:27:                                     ; preds = %19
  tail call void @luaD_growstack(%struct.lua_State* nonnull %0, i32 %1) #7, !dbg !410
  %28 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8, !dbg !415, !tbaa !373
  br label %29, !dbg !410

; <label>:29:                                     ; preds = %19, %27
  %30 = phi %struct.lua_TValue* [ %16, %19 ], [ %28, %27 ], !dbg !415
  %31 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !417
  %32 = load %struct.CallInfo*, %struct.CallInfo** %31, align 8, !dbg !417, !tbaa !418
  %33 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %32, i64 0, i32 2, !dbg !419
  %34 = load %struct.lua_TValue*, %struct.lua_TValue** %33, align 8, !dbg !419, !tbaa !420
  %35 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %30, i64 %13, !dbg !422
  %36 = icmp ult %struct.lua_TValue* %34, %35, !dbg !423
  br i1 %36, label %37, label %38, !dbg !424

; <label>:37:                                     ; preds = %29
  store %struct.lua_TValue* %35, %struct.lua_TValue** %33, align 8, !dbg !425, !tbaa !420
  br label %38, !dbg !426

; <label>:38:                                     ; preds = %2, %4, %17, %37, %29
  %39 = phi i32 [ 1, %37 ], [ 1, %29 ], [ 1, %17 ], [ 0, %4 ], [ 0, %2 ], !dbg !427
  ret i32 %39, !dbg !428
}

; Function Attrs: noredzone
declare hidden void @luaD_growstack(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @lua_xmove(%struct.lua_State*, %struct.lua_State*, i32) local_unnamed_addr #0 !dbg !429 {
  %4 = icmp eq %struct.lua_State* %0, %1, !dbg !446
  br i1 %4, label %73, label %5, !dbg !448

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !449
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8, !dbg !450, !tbaa !373
  %8 = sext i32 %2 to i64, !dbg !450
  %9 = sub nsw i64 0, %8, !dbg !450
  %10 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %7, i64 %9, !dbg !450
  store %struct.lua_TValue* %10, %struct.lua_TValue** %6, align 8, !dbg !450, !tbaa !373
  %11 = icmp sgt i32 %2, 0, !dbg !452
  br i1 %11, label %12, label %73, !dbg !453

; <label>:12:                                     ; preds = %5
  %13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %1, i64 0, i32 4
  %14 = zext i32 %2 to i64
  %15 = load %struct.lua_TValue*, %struct.lua_TValue** %13, align 8, !dbg !454, !tbaa !373
  %16 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %15, i64 1, !dbg !454
  store %struct.lua_TValue* %16, %struct.lua_TValue** %13, align 8, !dbg !454, !tbaa !373
  %17 = bitcast %struct.lua_TValue* %10 to i64*, !dbg !454
  %18 = bitcast %struct.lua_TValue* %15 to i64*, !dbg !454
  %19 = load i64, i64* %17, align 8, !dbg !454
  store i64 %19, i64* %18, align 8, !dbg !454
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %7, i64 %9, i32 1, !dbg !454
  %21 = load i32, i32* %20, align 8, !dbg !454, !tbaa !382
  %22 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %15, i64 0, i32 1, !dbg !454
  store i32 %21, i32* %22, align 8, !dbg !454, !tbaa !382
  %23 = icmp eq i32 %2, 1, !dbg !452
  br i1 %23, label %73, label %24, !dbg !453, !llvm.loop !455

; <label>:24:                                     ; preds = %12
  %25 = and i32 %2, 1, !dbg !454
  %26 = xor i32 %25, 1, !dbg !454
  %27 = icmp eq i32 %2, 2, !dbg !454
  br i1 %27, label %59, label %28, !dbg !454

; <label>:28:                                     ; preds = %24
  %29 = zext i32 %26 to i64, !dbg !454
  %30 = xor i64 %29, -1, !dbg !454
  %31 = add nsw i64 %30, %14, !dbg !454
  br label %32, !dbg !454

; <label>:32:                                     ; preds = %32, %28
  %33 = phi i64 [ 1, %28 ], [ %56, %32 ]
  %34 = phi i64 [ %31, %28 ], [ %57, %32 ]
  %35 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8, !dbg !454, !tbaa !373
  %36 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %35, i64 %33, !dbg !454
  %37 = load %struct.lua_TValue*, %struct.lua_TValue** %13, align 8, !dbg !454, !tbaa !373
  %38 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %37, i64 1, !dbg !454
  store %struct.lua_TValue* %38, %struct.lua_TValue** %13, align 8, !dbg !454, !tbaa !373
  %39 = bitcast %struct.lua_TValue* %36 to i64*, !dbg !454
  %40 = bitcast %struct.lua_TValue* %37 to i64*, !dbg !454
  %41 = load i64, i64* %39, align 8, !dbg !454
  store i64 %41, i64* %40, align 8, !dbg !454
  %42 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %35, i64 %33, i32 1, !dbg !454
  %43 = load i32, i32* %42, align 8, !dbg !454, !tbaa !382
  %44 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %37, i64 0, i32 1, !dbg !454
  store i32 %43, i32* %44, align 8, !dbg !454, !tbaa !382
  %45 = add nuw nsw i64 %33, 1, !dbg !457
  %46 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8, !dbg !454, !tbaa !373
  %47 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %46, i64 %45, !dbg !454
  %48 = load %struct.lua_TValue*, %struct.lua_TValue** %13, align 8, !dbg !454, !tbaa !373
  %49 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %48, i64 1, !dbg !454
  store %struct.lua_TValue* %49, %struct.lua_TValue** %13, align 8, !dbg !454, !tbaa !373
  %50 = bitcast %struct.lua_TValue* %47 to i64*, !dbg !454
  %51 = bitcast %struct.lua_TValue* %48 to i64*, !dbg !454
  %52 = load i64, i64* %50, align 8, !dbg !454
  store i64 %52, i64* %51, align 8, !dbg !454
  %53 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %46, i64 %45, i32 1, !dbg !454
  %54 = load i32, i32* %53, align 8, !dbg !454, !tbaa !382
  %55 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %48, i64 0, i32 1, !dbg !454
  store i32 %54, i32* %55, align 8, !dbg !454, !tbaa !382
  %56 = add nuw nsw i64 %33, 2, !dbg !457
  %57 = add i64 %34, -2, !dbg !453
  %58 = icmp eq i64 %57, 0, !dbg !453
  br i1 %58, label %59, label %32, !dbg !453, !llvm.loop !455

; <label>:59:                                     ; preds = %32, %24
  %60 = phi i64 [ 1, %24 ], [ %56, %32 ]
  %61 = icmp eq i32 %26, 0, !dbg !453
  br i1 %61, label %73, label %62, !dbg !453

; <label>:62:                                     ; preds = %59
  %63 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8, !dbg !454, !tbaa !373
  %64 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %63, i64 %60, !dbg !454
  %65 = load %struct.lua_TValue*, %struct.lua_TValue** %13, align 8, !dbg !454, !tbaa !373
  %66 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %65, i64 1, !dbg !454
  store %struct.lua_TValue* %66, %struct.lua_TValue** %13, align 8, !dbg !454, !tbaa !373
  %67 = bitcast %struct.lua_TValue* %64 to i64*, !dbg !454
  %68 = bitcast %struct.lua_TValue* %65 to i64*, !dbg !454
  %69 = load i64, i64* %67, align 8, !dbg !454
  store i64 %69, i64* %68, align 8, !dbg !454
  %70 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %63, i64 %60, i32 1, !dbg !454
  %71 = load i32, i32* %70, align 8, !dbg !454, !tbaa !382
  %72 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %65, i64 0, i32 1, !dbg !454
  store i32 %71, i32* %72, align 8, !dbg !454, !tbaa !382
  br label %73, !dbg !458

; <label>:73:                                     ; preds = %62, %59, %12, %5, %3
  ret void, !dbg !458
}

; Function Attrs: noredzone nounwind
define dso_local void @lua_setlevel(%struct.lua_State* nocapture readonly, %struct.lua_State* nocapture) local_unnamed_addr #0 !dbg !459 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 15, !dbg !467
  %4 = load i16, i16* %3, align 8, !dbg !467, !tbaa !468
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %1, i64 0, i32 15, !dbg !469
  store i16 %4, i16* %5, align 8, !dbg !470, !tbaa !468
  ret void, !dbg !471
}

; Function Attrs: noredzone nounwind
define dso_local i32 (%struct.lua_State*)* @lua_atpanic(%struct.lua_State* nocapture readonly, i32 (%struct.lua_State*)*) local_unnamed_addr #0 !dbg !472 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !481
  %4 = load %struct.global_State*, %struct.global_State** %3, align 8, !dbg !481, !tbaa !482
  %5 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 19, !dbg !483
  %6 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %5, align 8, !dbg !483, !tbaa !484
  store i32 (%struct.lua_State*)* %1, i32 (%struct.lua_State*)** %5, align 8, !dbg !490, !tbaa !484
  ret i32 (%struct.lua_State*)* %6, !dbg !491
}

; Function Attrs: noredzone nounwind
define dso_local %struct.lua_State* @lua_newthread(%struct.lua_State*) local_unnamed_addr #0 !dbg !492 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !501
  %3 = load %struct.global_State*, %struct.global_State** %2, align 8, !dbg !501, !tbaa !482
  %4 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 14, !dbg !501
  %5 = load i64, i64* %4, align 8, !dbg !501, !tbaa !504
  %6 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 13, !dbg !501
  %7 = load i64, i64* %6, align 8, !dbg !501, !tbaa !505
  %8 = icmp ult i64 %5, %7, !dbg !501
  br i1 %8, label %10, label %9, !dbg !506

; <label>:9:                                      ; preds = %1
  tail call void @luaC_step(%struct.lua_State* nonnull %0) #7, !dbg !501
  br label %10, !dbg !501

; <label>:10:                                     ; preds = %1, %9
  %11 = tail call %struct.lua_State* @luaE_newthread(%struct.lua_State* nonnull %0) #7, !dbg !507
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !509
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %12, align 8, !dbg !509, !tbaa !373
  %14 = bitcast %struct.lua_TValue* %13 to %struct.lua_State**, !dbg !509
  store %struct.lua_State* %11, %struct.lua_State** %14, align 8, !dbg !509, !tbaa !510
  %15 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %13, i64 0, i32 1, !dbg !509
  store i32 8, i32* %15, align 8, !dbg !509, !tbaa !382
  %16 = load %struct.lua_TValue*, %struct.lua_TValue** %12, align 8, !dbg !511, !tbaa !373
  %17 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %16, i64 1, !dbg !511
  store %struct.lua_TValue* %17, %struct.lua_TValue** %12, align 8, !dbg !511, !tbaa !373
  ret %struct.lua_State* %11, !dbg !513
}

; Function Attrs: noredzone
declare hidden void @luaC_step(%struct.lua_State*) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden %struct.lua_State* @luaE_newthread(%struct.lua_State*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind readonly
define dso_local i32 @lua_gettop(%struct.lua_State* nocapture readonly) local_unnamed_addr #4 !dbg !514 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !518
  %3 = bitcast %struct.lua_TValue** %2 to i64*, !dbg !518
  %4 = load i64, i64* %3, align 8, !dbg !518, !tbaa !373
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !518
  %6 = bitcast %struct.lua_TValue** %5 to i64*, !dbg !518
  %7 = load i64, i64* %6, align 8, !dbg !518, !tbaa !401
  %8 = sub i64 %4, %7, !dbg !518
  %9 = lshr exact i64 %8, 4, !dbg !518
  %10 = trunc i64 %9 to i32, !dbg !518
  ret i32 %10, !dbg !519
}

; Function Attrs: noredzone nounwind
define dso_local void @lua_settop(%struct.lua_State* nocapture, i32) local_unnamed_addr #0 !dbg !520 {
  %3 = icmp sgt i32 %1, -1, !dbg !528
  br i1 %3, label %4, label %57, !dbg !530

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !531
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8, !dbg !531, !tbaa !373
  %7 = ptrtoint %struct.lua_TValue* %6 to i64
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !533
  %9 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8, !dbg !533, !tbaa !401
  %10 = sext i32 %1 to i64, !dbg !534
  %11 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %9, i64 %10, !dbg !534
  %12 = icmp ult %struct.lua_TValue* %6, %11, !dbg !535
  br i1 %12, label %13, label %56, !dbg !536

; <label>:13:                                     ; preds = %4
  %14 = getelementptr %struct.lua_TValue, %struct.lua_TValue* %6, i64 1, !dbg !536
  %15 = icmp ugt %struct.lua_TValue* %11, %14, !dbg !536
  %16 = select i1 %15, %struct.lua_TValue* %11, %struct.lua_TValue* %14, !dbg !536
  %17 = bitcast %struct.lua_TValue* %16 to i8*
  %18 = xor i64 %7, -1, !dbg !536
  %19 = getelementptr i8, i8* %17, i64 %18, !dbg !536
  %20 = ptrtoint i8* %19 to i64
  %21 = lshr i64 %20, 4, !dbg !536
  %22 = add nuw nsw i64 %21, 1, !dbg !536
  %23 = getelementptr %struct.lua_TValue, %struct.lua_TValue* %9, i64 %10, i32 0, i32 0, !dbg !536
  %24 = bitcast %union.GCObject** %23 to i8*
  %25 = xor i64 %7, -1, !dbg !536
  %26 = getelementptr i8, i8* %24, i64 %25, !dbg !536
  %27 = ptrtoint i8* %26 to i64
  %28 = lshr i64 %27, 4, !dbg !536
  %29 = add nuw nsw i64 %28, 1, !dbg !536
  %30 = and i64 %29, 7, !dbg !536
  %31 = icmp eq i64 %30, 0, !dbg !536
  br i1 %31, label %39, label %32, !dbg !536

; <label>:32:                                     ; preds = %13, %32
  %33 = phi %struct.lua_TValue* [ %35, %32 ], [ %6, %13 ]
  %34 = phi i64 [ %37, %32 ], [ %30, %13 ]
  %35 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %33, i64 1, !dbg !537
  %36 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %33, i64 0, i32 1, !dbg !537
  store i32 0, i32* %36, align 8, !dbg !537, !tbaa !382
  %37 = add i64 %34, -1, !dbg !536
  %38 = icmp eq i64 %37, 0, !dbg !536
  br i1 %38, label %39, label %32, !dbg !536, !llvm.loop !538

; <label>:39:                                     ; preds = %32, %13
  %40 = phi %struct.lua_TValue* [ %6, %13 ], [ %35, %32 ]
  %41 = icmp ult i8* %26, inttoptr (i64 112 to i8*), !dbg !536
  br i1 %41, label %54, label %42, !dbg !536

; <label>:42:                                     ; preds = %39, %42
  %43 = phi %struct.lua_TValue* [ %51, %42 ], [ %40, %39 ]
  %44 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %43, i64 0, i32 1, !dbg !537
  store i32 0, i32* %44, align 8, !dbg !537, !tbaa !382
  %45 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %43, i64 1, i32 1, !dbg !537
  store i32 0, i32* %45, align 8, !dbg !537, !tbaa !382
  %46 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %43, i64 2, i32 1, !dbg !537
  store i32 0, i32* %46, align 8, !dbg !537, !tbaa !382
  %47 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %43, i64 3, i32 1, !dbg !537
  store i32 0, i32* %47, align 8, !dbg !537, !tbaa !382
  %48 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %43, i64 4, i32 1, !dbg !537
  store i32 0, i32* %48, align 8, !dbg !537, !tbaa !382
  %49 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %43, i64 5, i32 1, !dbg !537
  store i32 0, i32* %49, align 8, !dbg !537, !tbaa !382
  %50 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %43, i64 6, i32 1, !dbg !537
  store i32 0, i32* %50, align 8, !dbg !537, !tbaa !382
  %51 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %43, i64 8, !dbg !537
  %52 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %43, i64 7, i32 1, !dbg !537
  store i32 0, i32* %52, align 8, !dbg !537, !tbaa !382
  %53 = icmp ult %struct.lua_TValue* %51, %11, !dbg !535
  br i1 %53, label %42, label %54, !dbg !536, !llvm.loop !540

; <label>:54:                                     ; preds = %42, %39
  %55 = getelementptr %struct.lua_TValue, %struct.lua_TValue* %6, i64 %22, !dbg !536
  store %struct.lua_TValue* %55, %struct.lua_TValue** %5, align 8, !dbg !537, !tbaa !373
  br label %56, !dbg !536

; <label>:56:                                     ; preds = %54, %4
  store %struct.lua_TValue* %11, %struct.lua_TValue** %5, align 8, !dbg !541, !tbaa !373
  br label %63, !dbg !542

; <label>:57:                                     ; preds = %2
  %58 = add nsw i32 %1, 1, !dbg !543
  %59 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !545
  %60 = load %struct.lua_TValue*, %struct.lua_TValue** %59, align 8, !dbg !546, !tbaa !373
  %61 = sext i32 %58 to i64, !dbg !546
  %62 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %60, i64 %61, !dbg !546
  store %struct.lua_TValue* %62, %struct.lua_TValue** %59, align 8, !dbg !546, !tbaa !373
  br label %63

; <label>:63:                                     ; preds = %57, %56
  ret void, !dbg !547
}

; Function Attrs: noredzone nounwind
define dso_local void @lua_remove(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !548 {
  %3 = icmp sgt i32 %1, 0, !dbg !580
  br i1 %3, label %4, label %14, !dbg !581

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !582
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8, !dbg !582, !tbaa !401
  %7 = add nsw i32 %1, -1, !dbg !583
  %8 = sext i32 %7 to i64, !dbg !584
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 %8, !dbg !584
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !586
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !586, !tbaa !373
  %12 = icmp ult %struct.lua_TValue* %9, %11, !dbg !588
  %13 = select i1 %12, %struct.lua_TValue* %9, %struct.lua_TValue* @luaO_nilobject_, !dbg !589
  br label %57

; <label>:14:                                     ; preds = %2
  %15 = icmp sgt i32 %1, -10000, !dbg !590
  br i1 %15, label %16, label %21, !dbg !591

; <label>:16:                                     ; preds = %14
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !592
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %17, align 8, !dbg !592, !tbaa !373
  %19 = sext i32 %1 to i64, !dbg !594
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 %19, !dbg !594
  br label %57, !dbg !595

; <label>:21:                                     ; preds = %14
  switch i32 %1, label %41 [
    i32 -10000, label %22
    i32 -10001, label %26
    i32 -10002, label %39
  ], !dbg !596

; <label>:22:                                     ; preds = %21
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !597
  %24 = load %struct.global_State*, %struct.global_State** %23, align 8, !dbg !597, !tbaa !482
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %24, i64 0, i32 20, !dbg !597
  br label %57, !dbg !598

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !599
  %28 = load %struct.CallInfo*, %struct.CallInfo** %27, align 8, !dbg !599, !tbaa !418
  %29 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %28, i64 0, i32 1, !dbg !599
  %30 = bitcast %struct.lua_TValue** %29 to %struct.CClosure***, !dbg !599
  %31 = load %struct.CClosure**, %struct.CClosure*** %30, align 8, !dbg !599, !tbaa !600
  %32 = load %struct.CClosure*, %struct.CClosure** %31, align 8, !dbg !599, !tbaa !510
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !602
  %34 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %32, i64 0, i32 6, !dbg !602
  %35 = bitcast %struct.Table** %34 to i64*, !dbg !602
  %36 = load i64, i64* %35, align 8, !dbg !602, !tbaa !510
  %37 = bitcast %struct.lua_TValue* %33 to i64*, !dbg !602
  store i64 %36, i64* %37, align 8, !dbg !602, !tbaa !510
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !602
  store i32 5, i32* %38, align 8, !dbg !602, !tbaa !382
  br label %57

; <label>:39:                                     ; preds = %21
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !603
  br label %57, !dbg !604

; <label>:41:                                     ; preds = %21
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !605
  %43 = load %struct.CallInfo*, %struct.CallInfo** %42, align 8, !dbg !605, !tbaa !418
  %44 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %43, i64 0, i32 1, !dbg !605
  %45 = bitcast %struct.lua_TValue** %44 to %struct.CClosure***, !dbg !605
  %46 = load %struct.CClosure**, %struct.CClosure*** %45, align 8, !dbg !605, !tbaa !600
  %47 = load %struct.CClosure*, %struct.CClosure** %46, align 8, !dbg !605, !tbaa !510
  %48 = sub nsw i32 -10002, %1, !dbg !607
  %49 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 4, !dbg !608
  %50 = load i8, i8* %49, align 1, !dbg !608, !tbaa !510
  %51 = zext i8 %50 to i32, !dbg !609
  %52 = icmp sgt i32 %48, %51, !dbg !610
  br i1 %52, label %57, label %53, !dbg !611

; <label>:53:                                     ; preds = %41
  %54 = add nsw i32 %48, -1, !dbg !612
  %55 = sext i32 %54 to i64, !dbg !613
  %56 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 8, i64 %55, !dbg !613
  br label %57, !dbg !611

; <label>:57:                                     ; preds = %4, %16, %22, %26, %39, %41, %53
  %58 = phi %struct.lua_TValue* [ %13, %4 ], [ %20, %16 ], [ %40, %39 ], [ %33, %26 ], [ %25, %22 ], [ %56, %53 ], [ @luaO_nilobject_, %41 ], !dbg !614
  %59 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i64 1, !dbg !616
  %60 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !617
  %61 = load %struct.lua_TValue*, %struct.lua_TValue** %60, align 8, !dbg !617, !tbaa !373
  %62 = icmp ult %struct.lua_TValue* %59, %61, !dbg !618
  br i1 %62, label %63, label %75, !dbg !619

; <label>:63:                                     ; preds = %57, %63
  %64 = phi %struct.lua_TValue* [ %72, %63 ], [ %59, %57 ]
  %65 = phi %struct.lua_TValue* [ %64, %63 ], [ %58, %57 ]
  %66 = bitcast %struct.lua_TValue* %64 to i64*, !dbg !620
  %67 = bitcast %struct.lua_TValue* %65 to i64*, !dbg !620
  %68 = load i64, i64* %66, align 8, !dbg !620
  store i64 %68, i64* %67, align 8, !dbg !620
  %69 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %65, i64 1, i32 1, !dbg !620
  %70 = load i32, i32* %69, align 8, !dbg !620, !tbaa !382
  %71 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %65, i64 0, i32 1, !dbg !620
  store i32 %70, i32* %71, align 8, !dbg !620, !tbaa !382
  %72 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %64, i64 1, !dbg !616
  %73 = load %struct.lua_TValue*, %struct.lua_TValue** %60, align 8, !dbg !617, !tbaa !373
  %74 = icmp ult %struct.lua_TValue* %72, %73, !dbg !618
  br i1 %74, label %63, label %75, !dbg !619, !llvm.loop !621

; <label>:75:                                     ; preds = %63, %57
  %76 = phi %struct.lua_TValue* [ %61, %57 ], [ %73, %63 ], !dbg !617
  %77 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %76, i64 -1, !dbg !623
  store %struct.lua_TValue* %77, %struct.lua_TValue** %60, align 8, !dbg !623, !tbaa !373
  ret void, !dbg !624
}

; Function Attrs: noredzone nounwind
define dso_local void @lua_insert(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !625 {
  %3 = icmp sgt i32 %1, 0, !dbg !644
  br i1 %3, label %4, label %14, !dbg !645

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !646
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8, !dbg !646, !tbaa !401
  %7 = add nsw i32 %1, -1, !dbg !647
  %8 = sext i32 %7 to i64, !dbg !648
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 %8, !dbg !648
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !650
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !650, !tbaa !373
  %12 = icmp ult %struct.lua_TValue* %9, %11, !dbg !651
  %13 = select i1 %12, %struct.lua_TValue* %9, %struct.lua_TValue* @luaO_nilobject_, !dbg !652
  br label %57

; <label>:14:                                     ; preds = %2
  %15 = icmp sgt i32 %1, -10000, !dbg !653
  br i1 %15, label %16, label %21, !dbg !654

; <label>:16:                                     ; preds = %14
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !655
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %17, align 8, !dbg !655, !tbaa !373
  %19 = sext i32 %1 to i64, !dbg !656
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 %19, !dbg !656
  br label %57, !dbg !657

; <label>:21:                                     ; preds = %14
  switch i32 %1, label %41 [
    i32 -10000, label %22
    i32 -10001, label %26
    i32 -10002, label %39
  ], !dbg !658

; <label>:22:                                     ; preds = %21
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !659
  %24 = load %struct.global_State*, %struct.global_State** %23, align 8, !dbg !659, !tbaa !482
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %24, i64 0, i32 20, !dbg !659
  br label %57, !dbg !660

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !661
  %28 = load %struct.CallInfo*, %struct.CallInfo** %27, align 8, !dbg !661, !tbaa !418
  %29 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %28, i64 0, i32 1, !dbg !661
  %30 = bitcast %struct.lua_TValue** %29 to %struct.CClosure***, !dbg !661
  %31 = load %struct.CClosure**, %struct.CClosure*** %30, align 8, !dbg !661, !tbaa !600
  %32 = load %struct.CClosure*, %struct.CClosure** %31, align 8, !dbg !661, !tbaa !510
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !663
  %34 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %32, i64 0, i32 6, !dbg !663
  %35 = bitcast %struct.Table** %34 to i64*, !dbg !663
  %36 = load i64, i64* %35, align 8, !dbg !663, !tbaa !510
  %37 = bitcast %struct.lua_TValue* %33 to i64*, !dbg !663
  store i64 %36, i64* %37, align 8, !dbg !663, !tbaa !510
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !663
  store i32 5, i32* %38, align 8, !dbg !663, !tbaa !382
  br label %57

; <label>:39:                                     ; preds = %21
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !664
  br label %57, !dbg !665

; <label>:41:                                     ; preds = %21
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !666
  %43 = load %struct.CallInfo*, %struct.CallInfo** %42, align 8, !dbg !666, !tbaa !418
  %44 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %43, i64 0, i32 1, !dbg !666
  %45 = bitcast %struct.lua_TValue** %44 to %struct.CClosure***, !dbg !666
  %46 = load %struct.CClosure**, %struct.CClosure*** %45, align 8, !dbg !666, !tbaa !600
  %47 = load %struct.CClosure*, %struct.CClosure** %46, align 8, !dbg !666, !tbaa !510
  %48 = sub nsw i32 -10002, %1, !dbg !668
  %49 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 4, !dbg !669
  %50 = load i8, i8* %49, align 1, !dbg !669, !tbaa !510
  %51 = zext i8 %50 to i32, !dbg !670
  %52 = icmp sgt i32 %48, %51, !dbg !671
  br i1 %52, label %57, label %53, !dbg !672

; <label>:53:                                     ; preds = %41
  %54 = add nsw i32 %48, -1, !dbg !673
  %55 = sext i32 %54 to i64, !dbg !674
  %56 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 8, i64 %55, !dbg !674
  br label %57, !dbg !672

; <label>:57:                                     ; preds = %4, %16, %22, %26, %39, %41, %53
  %58 = phi %struct.lua_TValue* [ %13, %4 ], [ %20, %16 ], [ %40, %39 ], [ %33, %26 ], [ %25, %22 ], [ %56, %53 ], [ @luaO_nilobject_, %41 ], !dbg !675
  %59 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !677
  %60 = load %struct.lua_TValue*, %struct.lua_TValue** %59, align 8, !dbg !677, !tbaa !373
  %61 = icmp ugt %struct.lua_TValue* %60, %58, !dbg !679
  br i1 %61, label %62, label %74, !dbg !680

; <label>:62:                                     ; preds = %57, %62
  %63 = phi %struct.lua_TValue* [ %64, %62 ], [ %60, %57 ]
  %64 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %63, i64 -1, !dbg !681
  %65 = bitcast %struct.lua_TValue* %64 to i64*, !dbg !681
  %66 = bitcast %struct.lua_TValue* %63 to i64*, !dbg !681
  %67 = load i64, i64* %65, align 8, !dbg !681
  store i64 %67, i64* %66, align 8, !dbg !681
  %68 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %63, i64 -1, i32 1, !dbg !681
  %69 = load i32, i32* %68, align 8, !dbg !681, !tbaa !382
  %70 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %63, i64 0, i32 1, !dbg !681
  store i32 %69, i32* %70, align 8, !dbg !681, !tbaa !382
  %71 = icmp ugt %struct.lua_TValue* %64, %58, !dbg !679
  br i1 %71, label %62, label %72, !dbg !680, !llvm.loop !682

; <label>:72:                                     ; preds = %62
  %73 = load %struct.lua_TValue*, %struct.lua_TValue** %59, align 8, !dbg !684, !tbaa !373
  br label %74, !dbg !684

; <label>:74:                                     ; preds = %72, %57
  %75 = phi %struct.lua_TValue* [ %73, %72 ], [ %60, %57 ], !dbg !684
  %76 = bitcast %struct.lua_TValue* %75 to i64*, !dbg !684
  %77 = bitcast %struct.lua_TValue* %58 to i64*, !dbg !684
  %78 = load i64, i64* %76, align 8, !dbg !684
  store i64 %78, i64* %77, align 8, !dbg !684
  %79 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %75, i64 0, i32 1, !dbg !684
  %80 = load i32, i32* %79, align 8, !dbg !684, !tbaa !382
  %81 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i64 0, i32 1, !dbg !684
  store i32 %80, i32* %81, align 8, !dbg !684, !tbaa !382
  ret void, !dbg !685
}

; Function Attrs: noredzone nounwind
define dso_local void @lua_replace(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !686 {
  %3 = icmp eq i32 %1, -10001, !dbg !700
  br i1 %3, label %4, label %11, !dbg !702

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !703
  %6 = load %struct.CallInfo*, %struct.CallInfo** %5, align 8, !dbg !703, !tbaa !418
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 12, !dbg !704
  %8 = load %struct.CallInfo*, %struct.CallInfo** %7, align 8, !dbg !704, !tbaa !705
  %9 = icmp eq %struct.CallInfo* %6, %8, !dbg !706
  br i1 %9, label %10, label %55, !dbg !707

; <label>:10:                                     ; preds = %4
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0)) #7, !dbg !708
  br label %55, !dbg !708

; <label>:11:                                     ; preds = %2
  %12 = icmp sgt i32 %1, 0, !dbg !712
  br i1 %12, label %13, label %23, !dbg !713

; <label>:13:                                     ; preds = %11
  %14 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !714
  %15 = load %struct.lua_TValue*, %struct.lua_TValue** %14, align 8, !dbg !714, !tbaa !401
  %16 = add nsw i32 %1, -1, !dbg !715
  %17 = sext i32 %16 to i64, !dbg !716
  %18 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %15, i64 %17, !dbg !716
  %19 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !718
  %20 = load %struct.lua_TValue*, %struct.lua_TValue** %19, align 8, !dbg !718, !tbaa !373
  %21 = icmp ult %struct.lua_TValue* %18, %20, !dbg !719
  %22 = select i1 %21, %struct.lua_TValue* %18, %struct.lua_TValue* @luaO_nilobject_, !dbg !720
  br label %95

; <label>:23:                                     ; preds = %11
  %24 = icmp sgt i32 %1, -10000, !dbg !721
  br i1 %24, label %25, label %30, !dbg !722

; <label>:25:                                     ; preds = %23
  %26 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !723
  %27 = load %struct.lua_TValue*, %struct.lua_TValue** %26, align 8, !dbg !723, !tbaa !373
  %28 = sext i32 %1 to i64, !dbg !724
  %29 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %27, i64 %28, !dbg !724
  br label %95, !dbg !725

; <label>:30:                                     ; preds = %23
  switch i32 %1, label %39 [
    i32 -10000, label %33
    i32 -10001, label %31
    i32 -10002, label %37
  ], !dbg !726

; <label>:31:                                     ; preds = %30
  %32 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !727
  br label %55, !dbg !726

; <label>:33:                                     ; preds = %30
  %34 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !728
  %35 = load %struct.global_State*, %struct.global_State** %34, align 8, !dbg !728, !tbaa !482
  %36 = getelementptr inbounds %struct.global_State, %struct.global_State* %35, i64 0, i32 20, !dbg !728
  br label %95, !dbg !729

; <label>:37:                                     ; preds = %30
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !730
  br label %95, !dbg !731

; <label>:39:                                     ; preds = %30
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !732
  %41 = load %struct.CallInfo*, %struct.CallInfo** %40, align 8, !dbg !732, !tbaa !418
  %42 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %41, i64 0, i32 1, !dbg !732
  %43 = bitcast %struct.lua_TValue** %42 to %struct.CClosure***, !dbg !732
  %44 = load %struct.CClosure**, %struct.CClosure*** %43, align 8, !dbg !732, !tbaa !600
  %45 = load %struct.CClosure*, %struct.CClosure** %44, align 8, !dbg !732, !tbaa !510
  %46 = sub nsw i32 -10002, %1, !dbg !734
  %47 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %45, i64 0, i32 4, !dbg !735
  %48 = load i8, i8* %47, align 1, !dbg !735, !tbaa !510
  %49 = zext i8 %48 to i32, !dbg !736
  %50 = icmp sgt i32 %46, %49, !dbg !737
  br i1 %50, label %95, label %51, !dbg !738

; <label>:51:                                     ; preds = %39
  %52 = add nsw i32 %46, -1, !dbg !739
  %53 = sext i32 %52 to i64, !dbg !740
  %54 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %45, i64 0, i32 8, i64 %53, !dbg !740
  br label %95, !dbg !738

; <label>:55:                                     ; preds = %31, %4, %10
  %56 = phi %struct.CallInfo** [ %32, %31 ], [ %5, %4 ], [ %5, %10 ], !dbg !727
  %57 = load %struct.CallInfo*, %struct.CallInfo** %56, align 8, !dbg !727, !tbaa !418
  %58 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %57, i64 0, i32 1, !dbg !727
  %59 = bitcast %struct.lua_TValue** %58 to %struct.CClosure***, !dbg !727
  %60 = load %struct.CClosure**, %struct.CClosure*** %59, align 8, !dbg !727, !tbaa !600
  %61 = load %struct.CClosure*, %struct.CClosure** %60, align 8, !dbg !727, !tbaa !510
  %62 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !742
  %63 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %61, i64 0, i32 6, !dbg !742
  %64 = bitcast %struct.Table** %63 to i64*, !dbg !742
  %65 = load i64, i64* %64, align 8, !dbg !742, !tbaa !510
  %66 = bitcast %struct.lua_TValue* %62 to i64*, !dbg !742
  store i64 %65, i64* %66, align 8, !dbg !742, !tbaa !510
  %67 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !742
  store i32 5, i32* %67, align 8, !dbg !742, !tbaa !382
  %68 = load %struct.lua_TValue*, %struct.lua_TValue** %58, align 8, !dbg !744, !tbaa !600
  %69 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %68, i64 0, i32 0, i32 0, !dbg !744
  %70 = load %union.GCObject*, %union.GCObject** %69, align 8, !dbg !744, !tbaa !510
  %71 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !746
  %72 = load %struct.lua_TValue*, %struct.lua_TValue** %71, align 8, !dbg !746, !tbaa !373
  %73 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %72, i64 -1, i32 0, i32 0, !dbg !746
  %74 = bitcast %union.GCObject** %73 to i64*, !dbg !746
  %75 = load i64, i64* %74, align 8, !dbg !746, !tbaa !510
  %76 = getelementptr inbounds %union.GCObject, %union.GCObject* %70, i64 0, i32 0, i32 5, !dbg !747
  %77 = bitcast %struct.lua_TValue** %76 to i64*, !dbg !748
  store i64 %75, i64* %77, align 8, !dbg !748, !tbaa !510
  %78 = load %struct.lua_TValue*, %struct.lua_TValue** %71, align 8, !dbg !749, !tbaa !373
  %79 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %78, i64 -1, i32 1, !dbg !749
  %80 = load i32, i32* %79, align 8, !dbg !749, !tbaa !382
  %81 = icmp sgt i32 %80, 3, !dbg !749
  br i1 %81, label %82, label %131, !dbg !749

; <label>:82:                                     ; preds = %55
  %83 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %78, i64 -1, i32 0, i32 0, !dbg !749
  %84 = load %union.GCObject*, %union.GCObject** %83, align 8, !dbg !749, !tbaa !510
  %85 = getelementptr inbounds %union.GCObject, %union.GCObject* %84, i64 0, i32 0, i32 2, !dbg !749
  %86 = load i8, i8* %85, align 1, !dbg !749, !tbaa !510
  %87 = and i8 %86, 3, !dbg !749
  %88 = icmp eq i8 %87, 0, !dbg !749
  br i1 %88, label %131, label %89, !dbg !749

; <label>:89:                                     ; preds = %82
  %90 = getelementptr inbounds %union.GCObject, %union.GCObject* %70, i64 0, i32 0, i32 2, !dbg !749
  %91 = load i8, i8* %90, align 1, !dbg !749, !tbaa !510
  %92 = and i8 %91, 4, !dbg !749
  %93 = icmp eq i8 %92, 0, !dbg !749
  br i1 %93, label %131, label %94, !dbg !752

; <label>:94:                                     ; preds = %89
  tail call void @luaC_barrierf(%struct.lua_State* nonnull %0, %union.GCObject* nonnull %70, %union.GCObject* %84) #7, !dbg !749
  br label %131, !dbg !749

; <label>:95:                                     ; preds = %13, %25, %33, %37, %39, %51
  %96 = phi %struct.lua_TValue* [ @luaO_nilobject_, %39 ], [ %54, %51 ], [ %36, %33 ], [ %38, %37 ], [ %29, %25 ], [ %22, %13 ]
  %97 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !753
  %98 = load %struct.lua_TValue*, %struct.lua_TValue** %97, align 8, !dbg !753, !tbaa !373
  %99 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %98, i64 -1, !dbg !753
  %100 = bitcast %struct.lua_TValue* %99 to i64*, !dbg !753
  %101 = bitcast %struct.lua_TValue* %96 to i64*, !dbg !753
  %102 = load i64, i64* %100, align 8, !dbg !753
  store i64 %102, i64* %101, align 8, !dbg !753
  %103 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %98, i64 -1, i32 1, !dbg !753
  %104 = load i32, i32* %103, align 8, !dbg !753, !tbaa !382
  %105 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %96, i64 0, i32 1, !dbg !753
  store i32 %104, i32* %105, align 8, !dbg !753, !tbaa !382
  %106 = icmp slt i32 %1, -10002, !dbg !754
  br i1 %106, label %107, label %131, !dbg !756

; <label>:107:                                    ; preds = %95
  %108 = load %struct.lua_TValue*, %struct.lua_TValue** %97, align 8, !dbg !757, !tbaa !373
  %109 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %108, i64 -1, i32 1, !dbg !757
  %110 = load i32, i32* %109, align 8, !dbg !757, !tbaa !382
  %111 = icmp sgt i32 %110, 3, !dbg !757
  br i1 %111, label %112, label %131, !dbg !757

; <label>:112:                                    ; preds = %107
  %113 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %108, i64 -1, i32 0, i32 0, !dbg !757
  %114 = load %union.GCObject*, %union.GCObject** %113, align 8, !dbg !757, !tbaa !510
  %115 = getelementptr inbounds %union.GCObject, %union.GCObject* %114, i64 0, i32 0, i32 2, !dbg !757
  %116 = load i8, i8* %115, align 1, !dbg !757, !tbaa !510
  %117 = and i8 %116, 3, !dbg !757
  %118 = icmp eq i8 %117, 0, !dbg !757
  br i1 %118, label %131, label %119, !dbg !757

; <label>:119:                                    ; preds = %112
  %120 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !757
  %121 = load %struct.CallInfo*, %struct.CallInfo** %120, align 8, !dbg !757, !tbaa !418
  %122 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %121, i64 0, i32 1, !dbg !757
  %123 = load %struct.lua_TValue*, %struct.lua_TValue** %122, align 8, !dbg !757, !tbaa !600
  %124 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %123, i64 0, i32 0, i32 0, !dbg !757
  %125 = load %union.GCObject*, %union.GCObject** %124, align 8, !dbg !757, !tbaa !510
  %126 = getelementptr inbounds %union.GCObject, %union.GCObject* %125, i64 0, i32 0, i32 2, !dbg !757
  %127 = load i8, i8* %126, align 1, !dbg !757, !tbaa !510
  %128 = and i8 %127, 4, !dbg !757
  %129 = icmp eq i8 %128, 0, !dbg !757
  br i1 %129, label %131, label %130, !dbg !760

; <label>:130:                                    ; preds = %119
  tail call void @luaC_barrierf(%struct.lua_State* nonnull %0, %union.GCObject* %125, %union.GCObject* %114) #7, !dbg !757
  br label %131, !dbg !757

; <label>:131:                                    ; preds = %55, %94, %82, %89, %119, %112, %95, %130, %107
  %132 = phi %struct.lua_TValue** [ %71, %55 ], [ %71, %94 ], [ %71, %82 ], [ %71, %89 ], [ %97, %119 ], [ %97, %112 ], [ %97, %95 ], [ %97, %130 ], [ %97, %107 ], !dbg !761
  %133 = load %struct.lua_TValue*, %struct.lua_TValue** %132, align 8, !dbg !762, !tbaa !373
  %134 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %133, i64 -1, !dbg !762
  store %struct.lua_TValue* %134, %struct.lua_TValue** %132, align 8, !dbg !762, !tbaa !373
  ret void, !dbg !763
}

; Function Attrs: noredzone
declare hidden void @luaG_runerror(%struct.lua_State*, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden void @luaC_barrierf(%struct.lua_State*, %union.GCObject*, %union.GCObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @lua_pushvalue(%struct.lua_State* nocapture, i32) local_unnamed_addr #0 !dbg !764 {
  %3 = icmp sgt i32 %1, 0, !dbg !776
  br i1 %3, label %4, label %14, !dbg !777

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !778
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8, !dbg !778, !tbaa !401
  %7 = add nsw i32 %1, -1, !dbg !779
  %8 = sext i32 %7 to i64, !dbg !780
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 %8, !dbg !780
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !782
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !782, !tbaa !373
  %12 = icmp ult %struct.lua_TValue* %9, %11, !dbg !783
  %13 = select i1 %12, %struct.lua_TValue* %9, %struct.lua_TValue* @luaO_nilobject_, !dbg !784
  br label %57

; <label>:14:                                     ; preds = %2
  %15 = icmp sgt i32 %1, -10000, !dbg !785
  br i1 %15, label %16, label %21, !dbg !786

; <label>:16:                                     ; preds = %14
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !787
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %17, align 8, !dbg !787, !tbaa !373
  %19 = sext i32 %1 to i64, !dbg !788
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 %19, !dbg !788
  br label %57, !dbg !789

; <label>:21:                                     ; preds = %14
  switch i32 %1, label %41 [
    i32 -10000, label %22
    i32 -10001, label %26
    i32 -10002, label %39
  ], !dbg !790

; <label>:22:                                     ; preds = %21
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !791
  %24 = load %struct.global_State*, %struct.global_State** %23, align 8, !dbg !791, !tbaa !482
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %24, i64 0, i32 20, !dbg !791
  br label %57, !dbg !792

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !793
  %28 = load %struct.CallInfo*, %struct.CallInfo** %27, align 8, !dbg !793, !tbaa !418
  %29 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %28, i64 0, i32 1, !dbg !793
  %30 = bitcast %struct.lua_TValue** %29 to %struct.CClosure***, !dbg !793
  %31 = load %struct.CClosure**, %struct.CClosure*** %30, align 8, !dbg !793, !tbaa !600
  %32 = load %struct.CClosure*, %struct.CClosure** %31, align 8, !dbg !793, !tbaa !510
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !795
  %34 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %32, i64 0, i32 6, !dbg !795
  %35 = bitcast %struct.Table** %34 to i64*, !dbg !795
  %36 = load i64, i64* %35, align 8, !dbg !795, !tbaa !510
  %37 = bitcast %struct.lua_TValue* %33 to i64*, !dbg !795
  store i64 %36, i64* %37, align 8, !dbg !795, !tbaa !510
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !795
  store i32 5, i32* %38, align 8, !dbg !795, !tbaa !382
  br label %57

; <label>:39:                                     ; preds = %21
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !796
  br label %57, !dbg !797

; <label>:41:                                     ; preds = %21
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !798
  %43 = load %struct.CallInfo*, %struct.CallInfo** %42, align 8, !dbg !798, !tbaa !418
  %44 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %43, i64 0, i32 1, !dbg !798
  %45 = bitcast %struct.lua_TValue** %44 to %struct.CClosure***, !dbg !798
  %46 = load %struct.CClosure**, %struct.CClosure*** %45, align 8, !dbg !798, !tbaa !600
  %47 = load %struct.CClosure*, %struct.CClosure** %46, align 8, !dbg !798, !tbaa !510
  %48 = sub nsw i32 -10002, %1, !dbg !800
  %49 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 4, !dbg !801
  %50 = load i8, i8* %49, align 1, !dbg !801, !tbaa !510
  %51 = zext i8 %50 to i32, !dbg !802
  %52 = icmp sgt i32 %48, %51, !dbg !803
  br i1 %52, label %57, label %53, !dbg !804

; <label>:53:                                     ; preds = %41
  %54 = add nsw i32 %48, -1, !dbg !805
  %55 = sext i32 %54 to i64, !dbg !806
  %56 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 8, i64 %55, !dbg !806
  br label %57, !dbg !804

; <label>:57:                                     ; preds = %4, %16, %22, %26, %39, %41, %53
  %58 = phi %struct.lua_TValue* [ %13, %4 ], [ %20, %16 ], [ %40, %39 ], [ %33, %26 ], [ %25, %22 ], [ %56, %53 ], [ @luaO_nilobject_, %41 ], !dbg !807
  %59 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !808
  %60 = load %struct.lua_TValue*, %struct.lua_TValue** %59, align 8, !dbg !808, !tbaa !373
  %61 = bitcast %struct.lua_TValue* %58 to i64*, !dbg !808
  %62 = bitcast %struct.lua_TValue* %60 to i64*, !dbg !808
  %63 = load i64, i64* %61, align 8, !dbg !808
  store i64 %63, i64* %62, align 8, !dbg !808
  %64 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i64 0, i32 1, !dbg !808
  %65 = load i32, i32* %64, align 8, !dbg !808, !tbaa !382
  %66 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %60, i64 0, i32 1, !dbg !808
  store i32 %65, i32* %66, align 8, !dbg !808, !tbaa !382
  %67 = load %struct.lua_TValue*, %struct.lua_TValue** %59, align 8, !dbg !809, !tbaa !373
  %68 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %67, i64 1, !dbg !809
  store %struct.lua_TValue* %68, %struct.lua_TValue** %59, align 8, !dbg !809, !tbaa !373
  ret void, !dbg !811
}

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_type(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !812 {
  %3 = icmp sgt i32 %1, 0, !dbg !822
  br i1 %3, label %4, label %13, !dbg !823

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !824
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8, !dbg !824, !tbaa !401
  %7 = add nsw i32 %1, -1, !dbg !825
  %8 = sext i32 %7 to i64, !dbg !826
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 %8, !dbg !826
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !828
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !828, !tbaa !373
  %12 = icmp ult %struct.lua_TValue* %9, %11, !dbg !829
  br i1 %12, label %56, label %62

; <label>:13:                                     ; preds = %2
  %14 = icmp sgt i32 %1, -10000, !dbg !830
  br i1 %14, label %15, label %20, !dbg !831

; <label>:15:                                     ; preds = %13
  %16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !832
  %17 = load %struct.lua_TValue*, %struct.lua_TValue** %16, align 8, !dbg !832, !tbaa !373
  %18 = sext i32 %1 to i64, !dbg !833
  %19 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %17, i64 %18, !dbg !833
  br label %56, !dbg !834

; <label>:20:                                     ; preds = %13
  switch i32 %1, label %40 [
    i32 -10000, label %21
    i32 -10001, label %25
    i32 -10002, label %38
  ], !dbg !835

; <label>:21:                                     ; preds = %20
  %22 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !836
  %23 = load %struct.global_State*, %struct.global_State** %22, align 8, !dbg !836, !tbaa !482
  %24 = getelementptr inbounds %struct.global_State, %struct.global_State* %23, i64 0, i32 20, !dbg !836
  br label %56, !dbg !837

; <label>:25:                                     ; preds = %20
  %26 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !838
  %27 = load %struct.CallInfo*, %struct.CallInfo** %26, align 8, !dbg !838, !tbaa !418
  %28 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %27, i64 0, i32 1, !dbg !838
  %29 = bitcast %struct.lua_TValue** %28 to %struct.CClosure***, !dbg !838
  %30 = load %struct.CClosure**, %struct.CClosure*** %29, align 8, !dbg !838, !tbaa !600
  %31 = load %struct.CClosure*, %struct.CClosure** %30, align 8, !dbg !838, !tbaa !510
  %32 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !840
  %33 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %31, i64 0, i32 6, !dbg !840
  %34 = bitcast %struct.Table** %33 to i64*, !dbg !840
  %35 = load i64, i64* %34, align 8, !dbg !840, !tbaa !510
  %36 = bitcast %struct.lua_TValue* %32 to i64*, !dbg !840
  store i64 %35, i64* %36, align 8, !dbg !840, !tbaa !510
  %37 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !840
  store i32 5, i32* %37, align 8, !dbg !840, !tbaa !382
  br label %56

; <label>:38:                                     ; preds = %20
  %39 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !841
  br label %56, !dbg !842

; <label>:40:                                     ; preds = %20
  %41 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !843
  %42 = load %struct.CallInfo*, %struct.CallInfo** %41, align 8, !dbg !843, !tbaa !418
  %43 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %42, i64 0, i32 1, !dbg !843
  %44 = bitcast %struct.lua_TValue** %43 to %struct.CClosure***, !dbg !843
  %45 = load %struct.CClosure**, %struct.CClosure*** %44, align 8, !dbg !843, !tbaa !600
  %46 = load %struct.CClosure*, %struct.CClosure** %45, align 8, !dbg !843, !tbaa !510
  %47 = sub nsw i32 -10002, %1, !dbg !845
  %48 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %46, i64 0, i32 4, !dbg !846
  %49 = load i8, i8* %48, align 1, !dbg !846, !tbaa !510
  %50 = zext i8 %49 to i32, !dbg !847
  %51 = icmp sgt i32 %47, %50, !dbg !848
  br i1 %51, label %62, label %52, !dbg !849

; <label>:52:                                     ; preds = %40
  %53 = add nsw i32 %47, -1, !dbg !850
  %54 = sext i32 %53 to i64, !dbg !851
  %55 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %46, i64 0, i32 8, i64 %54, !dbg !851
  br label %56, !dbg !849

; <label>:56:                                     ; preds = %4, %15, %21, %25, %38, %52
  %57 = phi %struct.lua_TValue* [ %19, %15 ], [ %39, %38 ], [ %32, %25 ], [ %24, %21 ], [ %55, %52 ], [ %9, %4 ], !dbg !852
  %58 = icmp eq %struct.lua_TValue* %57, @luaO_nilobject_, !dbg !854
  br i1 %58, label %62, label %59, !dbg !855

; <label>:59:                                     ; preds = %56
  %60 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %57, i64 0, i32 1, !dbg !856
  %61 = load i32, i32* %60, align 8, !dbg !856, !tbaa !382
  br label %62, !dbg !855

; <label>:62:                                     ; preds = %40, %4, %56, %59
  %63 = phi i32 [ %61, %59 ], [ -1, %56 ], [ -1, %4 ], [ -1, %40 ], !dbg !855
  ret i32 %63, !dbg !857
}

; Function Attrs: noredzone nounwind readnone
define dso_local i8* @lua_typename(%struct.lua_State* nocapture readnone, i32) local_unnamed_addr #5 !dbg !858 {
  %3 = icmp eq i32 %1, -1, !dbg !866
  br i1 %3, label %8, label %4, !dbg !867

; <label>:4:                                      ; preds = %2
  %5 = sext i32 %1 to i64, !dbg !868
  %6 = getelementptr inbounds [0 x i8*], [0 x i8*]* @luaT_typenames, i64 0, i64 %5, !dbg !868
  %7 = load i8*, i8** %6, align 8, !dbg !868, !tbaa !869
  br label %8, !dbg !867

; <label>:8:                                      ; preds = %2, %4
  %9 = phi i8* [ %7, %4 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %2 ], !dbg !867
  ret i8* %9, !dbg !870
}

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_iscfunction(%struct.lua_State* nocapture, i32) local_unnamed_addr #0 !dbg !871 {
  %3 = icmp sgt i32 %1, 0, !dbg !881
  br i1 %3, label %4, label %14, !dbg !882

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !883
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8, !dbg !883, !tbaa !401
  %7 = add nsw i32 %1, -1, !dbg !884
  %8 = sext i32 %7 to i64, !dbg !885
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 %8, !dbg !885
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !887
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !887, !tbaa !373
  %12 = icmp ult %struct.lua_TValue* %9, %11, !dbg !888
  %13 = select i1 %12, %struct.lua_TValue* %9, %struct.lua_TValue* @luaO_nilobject_, !dbg !889
  br label %57

; <label>:14:                                     ; preds = %2
  %15 = icmp sgt i32 %1, -10000, !dbg !890
  br i1 %15, label %16, label %21, !dbg !891

; <label>:16:                                     ; preds = %14
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !892
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %17, align 8, !dbg !892, !tbaa !373
  %19 = sext i32 %1 to i64, !dbg !893
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 %19, !dbg !893
  br label %57, !dbg !894

; <label>:21:                                     ; preds = %14
  switch i32 %1, label %41 [
    i32 -10000, label %22
    i32 -10001, label %26
    i32 -10002, label %39
  ], !dbg !895

; <label>:22:                                     ; preds = %21
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !896
  %24 = load %struct.global_State*, %struct.global_State** %23, align 8, !dbg !896, !tbaa !482
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %24, i64 0, i32 20, !dbg !896
  br label %57, !dbg !897

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !898
  %28 = load %struct.CallInfo*, %struct.CallInfo** %27, align 8, !dbg !898, !tbaa !418
  %29 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %28, i64 0, i32 1, !dbg !898
  %30 = bitcast %struct.lua_TValue** %29 to %struct.CClosure***, !dbg !898
  %31 = load %struct.CClosure**, %struct.CClosure*** %30, align 8, !dbg !898, !tbaa !600
  %32 = load %struct.CClosure*, %struct.CClosure** %31, align 8, !dbg !898, !tbaa !510
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !900
  %34 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %32, i64 0, i32 6, !dbg !900
  %35 = bitcast %struct.Table** %34 to i64*, !dbg !900
  %36 = load i64, i64* %35, align 8, !dbg !900, !tbaa !510
  %37 = bitcast %struct.lua_TValue* %33 to i64*, !dbg !900
  store i64 %36, i64* %37, align 8, !dbg !900, !tbaa !510
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !900
  store i32 5, i32* %38, align 8, !dbg !900, !tbaa !382
  br label %57

; <label>:39:                                     ; preds = %21
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !901
  br label %57, !dbg !902

; <label>:41:                                     ; preds = %21
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !903
  %43 = load %struct.CallInfo*, %struct.CallInfo** %42, align 8, !dbg !903, !tbaa !418
  %44 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %43, i64 0, i32 1, !dbg !903
  %45 = bitcast %struct.lua_TValue** %44 to %struct.CClosure***, !dbg !903
  %46 = load %struct.CClosure**, %struct.CClosure*** %45, align 8, !dbg !903, !tbaa !600
  %47 = load %struct.CClosure*, %struct.CClosure** %46, align 8, !dbg !903, !tbaa !510
  %48 = sub nsw i32 -10002, %1, !dbg !905
  %49 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 4, !dbg !906
  %50 = load i8, i8* %49, align 1, !dbg !906, !tbaa !510
  %51 = zext i8 %50 to i32, !dbg !907
  %52 = icmp sgt i32 %48, %51, !dbg !908
  br i1 %52, label %57, label %53, !dbg !909

; <label>:53:                                     ; preds = %41
  %54 = add nsw i32 %48, -1, !dbg !910
  %55 = sext i32 %54 to i64, !dbg !911
  %56 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 8, i64 %55, !dbg !911
  br label %57, !dbg !909

; <label>:57:                                     ; preds = %4, %16, %22, %26, %39, %41, %53
  %58 = phi %struct.lua_TValue* [ %13, %4 ], [ %20, %16 ], [ %40, %39 ], [ %33, %26 ], [ %25, %22 ], [ %56, %53 ], [ @luaO_nilobject_, %41 ], !dbg !912
  %59 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i64 0, i32 1, !dbg !914
  %60 = load i32, i32* %59, align 8, !dbg !914, !tbaa !382
  %61 = icmp eq i32 %60, 6, !dbg !914
  br i1 %61, label %62, label %69, !dbg !914

; <label>:62:                                     ; preds = %57
  %63 = bitcast %struct.lua_TValue* %58 to %struct.CClosure**, !dbg !914
  %64 = load %struct.CClosure*, %struct.CClosure** %63, align 8, !dbg !914, !tbaa !510
  %65 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %64, i64 0, i32 3, !dbg !914
  %66 = load i8, i8* %65, align 2, !dbg !914, !tbaa !510
  %67 = icmp ne i8 %66, 0, !dbg !914
  %68 = zext i1 %67 to i32
  br label %69

; <label>:69:                                     ; preds = %62, %57
  %70 = phi i32 [ 0, %57 ], [ %68, %62 ]
  ret i32 %70, !dbg !915
}

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_isnumber(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !916 {
  %3 = alloca %struct.lua_TValue, align 8
  %4 = bitcast %struct.lua_TValue* %3 to i8*, !dbg !924
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #6, !dbg !924
  %5 = icmp sgt i32 %1, 0, !dbg !928
  br i1 %5, label %6, label %16, !dbg !929

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !930
  %8 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8, !dbg !930, !tbaa !401
  %9 = add nsw i32 %1, -1, !dbg !931
  %10 = sext i32 %9 to i64, !dbg !932
  %11 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %8, i64 %10, !dbg !932
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !934
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %12, align 8, !dbg !934, !tbaa !373
  %14 = icmp ult %struct.lua_TValue* %11, %13, !dbg !935
  %15 = select i1 %14, %struct.lua_TValue* %11, %struct.lua_TValue* @luaO_nilobject_, !dbg !936
  br label %59

; <label>:16:                                     ; preds = %2
  %17 = icmp sgt i32 %1, -10000, !dbg !937
  br i1 %17, label %18, label %23, !dbg !938

; <label>:18:                                     ; preds = %16
  %19 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !939
  %20 = load %struct.lua_TValue*, %struct.lua_TValue** %19, align 8, !dbg !939, !tbaa !373
  %21 = sext i32 %1 to i64, !dbg !940
  %22 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %20, i64 %21, !dbg !940
  br label %59, !dbg !941

; <label>:23:                                     ; preds = %16
  switch i32 %1, label %43 [
    i32 -10000, label %24
    i32 -10001, label %28
    i32 -10002, label %41
  ], !dbg !942

; <label>:24:                                     ; preds = %23
  %25 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !943
  %26 = load %struct.global_State*, %struct.global_State** %25, align 8, !dbg !943, !tbaa !482
  %27 = getelementptr inbounds %struct.global_State, %struct.global_State* %26, i64 0, i32 20, !dbg !943
  br label %59, !dbg !944

; <label>:28:                                     ; preds = %23
  %29 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !945
  %30 = load %struct.CallInfo*, %struct.CallInfo** %29, align 8, !dbg !945, !tbaa !418
  %31 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %30, i64 0, i32 1, !dbg !945
  %32 = bitcast %struct.lua_TValue** %31 to %struct.CClosure***, !dbg !945
  %33 = load %struct.CClosure**, %struct.CClosure*** %32, align 8, !dbg !945, !tbaa !600
  %34 = load %struct.CClosure*, %struct.CClosure** %33, align 8, !dbg !945, !tbaa !510
  %35 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !947
  %36 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %34, i64 0, i32 6, !dbg !947
  %37 = bitcast %struct.Table** %36 to i64*, !dbg !947
  %38 = load i64, i64* %37, align 8, !dbg !947, !tbaa !510
  %39 = bitcast %struct.lua_TValue* %35 to i64*, !dbg !947
  store i64 %38, i64* %39, align 8, !dbg !947, !tbaa !510
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !947
  store i32 5, i32* %40, align 8, !dbg !947, !tbaa !382
  br label %59

; <label>:41:                                     ; preds = %23
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !948
  br label %59, !dbg !949

; <label>:43:                                     ; preds = %23
  %44 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !950
  %45 = load %struct.CallInfo*, %struct.CallInfo** %44, align 8, !dbg !950, !tbaa !418
  %46 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %45, i64 0, i32 1, !dbg !950
  %47 = bitcast %struct.lua_TValue** %46 to %struct.CClosure***, !dbg !950
  %48 = load %struct.CClosure**, %struct.CClosure*** %47, align 8, !dbg !950, !tbaa !600
  %49 = load %struct.CClosure*, %struct.CClosure** %48, align 8, !dbg !950, !tbaa !510
  %50 = sub nsw i32 -10002, %1, !dbg !952
  %51 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %49, i64 0, i32 4, !dbg !953
  %52 = load i8, i8* %51, align 1, !dbg !953, !tbaa !510
  %53 = zext i8 %52 to i32, !dbg !954
  %54 = icmp sgt i32 %50, %53, !dbg !955
  br i1 %54, label %59, label %55, !dbg !956

; <label>:55:                                     ; preds = %43
  %56 = add nsw i32 %50, -1, !dbg !957
  %57 = sext i32 %56 to i64, !dbg !958
  %58 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %49, i64 0, i32 8, i64 %57, !dbg !958
  br label %59, !dbg !956

; <label>:59:                                     ; preds = %6, %18, %24, %28, %41, %43, %55
  %60 = phi %struct.lua_TValue* [ %15, %6 ], [ %22, %18 ], [ %42, %41 ], [ %35, %28 ], [ %27, %24 ], [ %58, %55 ], [ @luaO_nilobject_, %43 ], !dbg !959
  %61 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %60, i64 0, i32 1, !dbg !961
  %62 = load i32, i32* %61, align 8, !dbg !961, !tbaa !382
  %63 = icmp eq i32 %62, 3, !dbg !961
  br i1 %63, label %68, label %64, !dbg !961

; <label>:64:                                     ; preds = %59
  %65 = call %struct.lua_TValue* @luaV_tonumber(%struct.lua_TValue* %60, %struct.lua_TValue* nonnull %3) #7, !dbg !961
  %66 = icmp ne %struct.lua_TValue* %65, null, !dbg !961
  %67 = zext i1 %66 to i32, !dbg !961
  br label %68, !dbg !961

; <label>:68:                                     ; preds = %64, %59
  %69 = phi i32 [ 1, %59 ], [ %67, %64 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #6, !dbg !963
  ret i32 %69, !dbg !964
}

; Function Attrs: noredzone
declare hidden %struct.lua_TValue* @luaV_tonumber(%struct.lua_TValue*, %struct.lua_TValue*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_isstring(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !965 {
  %3 = icmp sgt i32 %1, 0, !dbg !978
  br i1 %3, label %4, label %13, !dbg !979

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !980
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8, !dbg !980, !tbaa !401
  %7 = add nsw i32 %1, -1, !dbg !981
  %8 = sext i32 %7 to i64, !dbg !982
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 %8, !dbg !982
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !984
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !984, !tbaa !373
  %12 = icmp ult %struct.lua_TValue* %9, %11, !dbg !985
  br i1 %12, label %56, label %65

; <label>:13:                                     ; preds = %2
  %14 = icmp sgt i32 %1, -10000, !dbg !986
  br i1 %14, label %15, label %20, !dbg !987

; <label>:15:                                     ; preds = %13
  %16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !988
  %17 = load %struct.lua_TValue*, %struct.lua_TValue** %16, align 8, !dbg !988, !tbaa !373
  %18 = sext i32 %1 to i64, !dbg !989
  %19 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %17, i64 %18, !dbg !989
  br label %56, !dbg !990

; <label>:20:                                     ; preds = %13
  switch i32 %1, label %40 [
    i32 -10000, label %21
    i32 -10001, label %25
    i32 -10002, label %38
  ], !dbg !991

; <label>:21:                                     ; preds = %20
  %22 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !992
  %23 = load %struct.global_State*, %struct.global_State** %22, align 8, !dbg !992, !tbaa !482
  %24 = getelementptr inbounds %struct.global_State, %struct.global_State* %23, i64 0, i32 20, !dbg !992
  br label %56, !dbg !993

; <label>:25:                                     ; preds = %20
  %26 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !994
  %27 = load %struct.CallInfo*, %struct.CallInfo** %26, align 8, !dbg !994, !tbaa !418
  %28 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %27, i64 0, i32 1, !dbg !994
  %29 = bitcast %struct.lua_TValue** %28 to %struct.CClosure***, !dbg !994
  %30 = load %struct.CClosure**, %struct.CClosure*** %29, align 8, !dbg !994, !tbaa !600
  %31 = load %struct.CClosure*, %struct.CClosure** %30, align 8, !dbg !994, !tbaa !510
  %32 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !996
  %33 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %31, i64 0, i32 6, !dbg !996
  %34 = bitcast %struct.Table** %33 to i64*, !dbg !996
  %35 = load i64, i64* %34, align 8, !dbg !996, !tbaa !510
  %36 = bitcast %struct.lua_TValue* %32 to i64*, !dbg !996
  store i64 %35, i64* %36, align 8, !dbg !996, !tbaa !510
  %37 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !996
  store i32 5, i32* %37, align 8, !dbg !996, !tbaa !382
  br label %56

; <label>:38:                                     ; preds = %20
  %39 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !997
  br label %56, !dbg !998

; <label>:40:                                     ; preds = %20
  %41 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !999
  %42 = load %struct.CallInfo*, %struct.CallInfo** %41, align 8, !dbg !999, !tbaa !418
  %43 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %42, i64 0, i32 1, !dbg !999
  %44 = bitcast %struct.lua_TValue** %43 to %struct.CClosure***, !dbg !999
  %45 = load %struct.CClosure**, %struct.CClosure*** %44, align 8, !dbg !999, !tbaa !600
  %46 = load %struct.CClosure*, %struct.CClosure** %45, align 8, !dbg !999, !tbaa !510
  %47 = sub nsw i32 -10002, %1, !dbg !1001
  %48 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %46, i64 0, i32 4, !dbg !1002
  %49 = load i8, i8* %48, align 1, !dbg !1002, !tbaa !510
  %50 = zext i8 %49 to i32, !dbg !1003
  %51 = icmp sgt i32 %47, %50, !dbg !1004
  br i1 %51, label %65, label %52, !dbg !1005

; <label>:52:                                     ; preds = %40
  %53 = add nsw i32 %47, -1, !dbg !1006
  %54 = sext i32 %53 to i64, !dbg !1007
  %55 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %46, i64 0, i32 8, i64 %54, !dbg !1007
  br label %56, !dbg !1005

; <label>:56:                                     ; preds = %52, %38, %25, %21, %15, %4
  %57 = phi %struct.lua_TValue* [ %19, %15 ], [ %39, %38 ], [ %32, %25 ], [ %24, %21 ], [ %55, %52 ], [ %9, %4 ], !dbg !1008
  %58 = icmp eq %struct.lua_TValue* %57, @luaO_nilobject_, !dbg !1010
  br i1 %58, label %65, label %59, !dbg !1011

; <label>:59:                                     ; preds = %56
  %60 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %57, i64 0, i32 1, !dbg !1012
  %61 = load i32, i32* %60, align 8, !dbg !1012, !tbaa !382
  %62 = add i32 %61, -3, !dbg !1011
  %63 = icmp ult i32 %62, 2, !dbg !1011
  %64 = zext i1 %63 to i32, !dbg !1011
  br label %65, !dbg !1011

; <label>:65:                                     ; preds = %4, %40, %56, %59
  %66 = phi i32 [ %64, %59 ], [ 0, %56 ], [ 0, %4 ], [ 0, %40 ]
  ret i32 %66, !dbg !1013
}

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_isuserdata(%struct.lua_State* nocapture, i32) local_unnamed_addr #0 !dbg !1014 {
  %3 = icmp sgt i32 %1, 0, !dbg !1024
  br i1 %3, label %4, label %14, !dbg !1025

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !1026
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8, !dbg !1026, !tbaa !401
  %7 = add nsw i32 %1, -1, !dbg !1027
  %8 = sext i32 %7 to i64, !dbg !1028
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 %8, !dbg !1028
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1030
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !1030, !tbaa !373
  %12 = icmp ult %struct.lua_TValue* %9, %11, !dbg !1031
  %13 = select i1 %12, %struct.lua_TValue* %9, %struct.lua_TValue* @luaO_nilobject_, !dbg !1032
  br label %57

; <label>:14:                                     ; preds = %2
  %15 = icmp sgt i32 %1, -10000, !dbg !1033
  br i1 %15, label %16, label %21, !dbg !1034

; <label>:16:                                     ; preds = %14
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1035
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %17, align 8, !dbg !1035, !tbaa !373
  %19 = sext i32 %1 to i64, !dbg !1036
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 %19, !dbg !1036
  br label %57, !dbg !1037

; <label>:21:                                     ; preds = %14
  switch i32 %1, label %41 [
    i32 -10000, label %22
    i32 -10001, label %26
    i32 -10002, label %39
  ], !dbg !1038

; <label>:22:                                     ; preds = %21
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1039
  %24 = load %struct.global_State*, %struct.global_State** %23, align 8, !dbg !1039, !tbaa !482
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %24, i64 0, i32 20, !dbg !1039
  br label %57, !dbg !1040

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1041
  %28 = load %struct.CallInfo*, %struct.CallInfo** %27, align 8, !dbg !1041, !tbaa !418
  %29 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %28, i64 0, i32 1, !dbg !1041
  %30 = bitcast %struct.lua_TValue** %29 to %struct.CClosure***, !dbg !1041
  %31 = load %struct.CClosure**, %struct.CClosure*** %30, align 8, !dbg !1041, !tbaa !600
  %32 = load %struct.CClosure*, %struct.CClosure** %31, align 8, !dbg !1041, !tbaa !510
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !1043
  %34 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %32, i64 0, i32 6, !dbg !1043
  %35 = bitcast %struct.Table** %34 to i64*, !dbg !1043
  %36 = load i64, i64* %35, align 8, !dbg !1043, !tbaa !510
  %37 = bitcast %struct.lua_TValue* %33 to i64*, !dbg !1043
  store i64 %36, i64* %37, align 8, !dbg !1043, !tbaa !510
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !1043
  store i32 5, i32* %38, align 8, !dbg !1043, !tbaa !382
  br label %57

; <label>:39:                                     ; preds = %21
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !1044
  br label %57, !dbg !1045

; <label>:41:                                     ; preds = %21
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1046
  %43 = load %struct.CallInfo*, %struct.CallInfo** %42, align 8, !dbg !1046, !tbaa !418
  %44 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %43, i64 0, i32 1, !dbg !1046
  %45 = bitcast %struct.lua_TValue** %44 to %struct.CClosure***, !dbg !1046
  %46 = load %struct.CClosure**, %struct.CClosure*** %45, align 8, !dbg !1046, !tbaa !600
  %47 = load %struct.CClosure*, %struct.CClosure** %46, align 8, !dbg !1046, !tbaa !510
  %48 = sub nsw i32 -10002, %1, !dbg !1048
  %49 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 4, !dbg !1049
  %50 = load i8, i8* %49, align 1, !dbg !1049, !tbaa !510
  %51 = zext i8 %50 to i32, !dbg !1050
  %52 = icmp sgt i32 %48, %51, !dbg !1051
  br i1 %52, label %57, label %53, !dbg !1052

; <label>:53:                                     ; preds = %41
  %54 = add nsw i32 %48, -1, !dbg !1053
  %55 = sext i32 %54 to i64, !dbg !1054
  %56 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 8, i64 %55, !dbg !1054
  br label %57, !dbg !1052

; <label>:57:                                     ; preds = %4, %16, %22, %26, %39, %41, %53
  %58 = phi %struct.lua_TValue* [ %13, %4 ], [ %20, %16 ], [ %40, %39 ], [ %33, %26 ], [ %25, %22 ], [ %56, %53 ], [ @luaO_nilobject_, %41 ], !dbg !1055
  %59 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i64 0, i32 1, !dbg !1057
  %60 = load i32, i32* %59, align 8, !dbg !1057, !tbaa !382
  %61 = icmp eq i32 %60, 7, !dbg !1057
  %62 = icmp eq i32 %60, 2, !dbg !1058
  %63 = or i1 %61, %62, !dbg !1059
  %64 = zext i1 %63 to i32, !dbg !1059
  ret i32 %64, !dbg !1060
}

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_rawequal(%struct.lua_State*, i32, i32) local_unnamed_addr #0 !dbg !1061 {
  %4 = icmp sgt i32 %1, 0, !dbg !1076
  br i1 %4, label %5, label %15, !dbg !1077

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !1078
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8, !dbg !1078, !tbaa !401
  %8 = add nsw i32 %1, -1, !dbg !1079
  %9 = sext i32 %8 to i64, !dbg !1080
  %10 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %7, i64 %9, !dbg !1080
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1082
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %11, align 8, !dbg !1082, !tbaa !373
  %13 = icmp ult %struct.lua_TValue* %10, %12, !dbg !1083
  %14 = select i1 %13, %struct.lua_TValue* %10, %struct.lua_TValue* @luaO_nilobject_, !dbg !1084
  br label %58

; <label>:15:                                     ; preds = %3
  %16 = icmp sgt i32 %1, -10000, !dbg !1085
  br i1 %16, label %17, label %22, !dbg !1086

; <label>:17:                                     ; preds = %15
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1087
  %19 = load %struct.lua_TValue*, %struct.lua_TValue** %18, align 8, !dbg !1087, !tbaa !373
  %20 = sext i32 %1 to i64, !dbg !1088
  %21 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %19, i64 %20, !dbg !1088
  br label %58, !dbg !1089

; <label>:22:                                     ; preds = %15
  switch i32 %1, label %42 [
    i32 -10000, label %23
    i32 -10001, label %27
    i32 -10002, label %40
  ], !dbg !1090

; <label>:23:                                     ; preds = %22
  %24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1091
  %25 = load %struct.global_State*, %struct.global_State** %24, align 8, !dbg !1091, !tbaa !482
  %26 = getelementptr inbounds %struct.global_State, %struct.global_State* %25, i64 0, i32 20, !dbg !1091
  br label %58, !dbg !1092

; <label>:27:                                     ; preds = %22
  %28 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1093
  %29 = load %struct.CallInfo*, %struct.CallInfo** %28, align 8, !dbg !1093, !tbaa !418
  %30 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %29, i64 0, i32 1, !dbg !1093
  %31 = bitcast %struct.lua_TValue** %30 to %struct.CClosure***, !dbg !1093
  %32 = load %struct.CClosure**, %struct.CClosure*** %31, align 8, !dbg !1093, !tbaa !600
  %33 = load %struct.CClosure*, %struct.CClosure** %32, align 8, !dbg !1093, !tbaa !510
  %34 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !1095
  %35 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %33, i64 0, i32 6, !dbg !1095
  %36 = bitcast %struct.Table** %35 to i64*, !dbg !1095
  %37 = load i64, i64* %36, align 8, !dbg !1095, !tbaa !510
  %38 = bitcast %struct.lua_TValue* %34 to i64*, !dbg !1095
  store i64 %37, i64* %38, align 8, !dbg !1095, !tbaa !510
  %39 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !1095
  store i32 5, i32* %39, align 8, !dbg !1095, !tbaa !382
  br label %58

; <label>:40:                                     ; preds = %22
  %41 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !1096
  br label %58, !dbg !1097

; <label>:42:                                     ; preds = %22
  %43 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1098
  %44 = load %struct.CallInfo*, %struct.CallInfo** %43, align 8, !dbg !1098, !tbaa !418
  %45 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %44, i64 0, i32 1, !dbg !1098
  %46 = bitcast %struct.lua_TValue** %45 to %struct.CClosure***, !dbg !1098
  %47 = load %struct.CClosure**, %struct.CClosure*** %46, align 8, !dbg !1098, !tbaa !600
  %48 = load %struct.CClosure*, %struct.CClosure** %47, align 8, !dbg !1098, !tbaa !510
  %49 = sub nsw i32 -10002, %1, !dbg !1100
  %50 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %48, i64 0, i32 4, !dbg !1101
  %51 = load i8, i8* %50, align 1, !dbg !1101, !tbaa !510
  %52 = zext i8 %51 to i32, !dbg !1102
  %53 = icmp sgt i32 %49, %52, !dbg !1103
  br i1 %53, label %58, label %54, !dbg !1104

; <label>:54:                                     ; preds = %42
  %55 = add nsw i32 %49, -1, !dbg !1105
  %56 = sext i32 %55 to i64, !dbg !1106
  %57 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %48, i64 0, i32 8, i64 %56, !dbg !1106
  br label %58, !dbg !1104

; <label>:58:                                     ; preds = %5, %17, %23, %27, %40, %42, %54
  %59 = phi %struct.lua_TValue* [ %14, %5 ], [ %21, %17 ], [ %41, %40 ], [ %34, %27 ], [ %26, %23 ], [ %57, %54 ], [ @luaO_nilobject_, %42 ], !dbg !1107
  %60 = icmp sgt i32 %2, 0, !dbg !1112
  br i1 %60, label %61, label %71, !dbg !1113

; <label>:61:                                     ; preds = %58
  %62 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !1114
  %63 = load %struct.lua_TValue*, %struct.lua_TValue** %62, align 8, !dbg !1114, !tbaa !401
  %64 = add nsw i32 %2, -1, !dbg !1115
  %65 = sext i32 %64 to i64, !dbg !1116
  %66 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %63, i64 %65, !dbg !1116
  %67 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1118
  %68 = load %struct.lua_TValue*, %struct.lua_TValue** %67, align 8, !dbg !1118, !tbaa !373
  %69 = icmp ult %struct.lua_TValue* %66, %68, !dbg !1119
  %70 = select i1 %69, %struct.lua_TValue* %66, %struct.lua_TValue* @luaO_nilobject_, !dbg !1120
  br label %114

; <label>:71:                                     ; preds = %58
  %72 = icmp sgt i32 %2, -10000, !dbg !1121
  br i1 %72, label %73, label %78, !dbg !1122

; <label>:73:                                     ; preds = %71
  %74 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1123
  %75 = load %struct.lua_TValue*, %struct.lua_TValue** %74, align 8, !dbg !1123, !tbaa !373
  %76 = sext i32 %2 to i64, !dbg !1124
  %77 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %75, i64 %76, !dbg !1124
  br label %114, !dbg !1125

; <label>:78:                                     ; preds = %71
  switch i32 %2, label %98 [
    i32 -10000, label %79
    i32 -10001, label %83
    i32 -10002, label %96
  ], !dbg !1126

; <label>:79:                                     ; preds = %78
  %80 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1127
  %81 = load %struct.global_State*, %struct.global_State** %80, align 8, !dbg !1127, !tbaa !482
  %82 = getelementptr inbounds %struct.global_State, %struct.global_State* %81, i64 0, i32 20, !dbg !1127
  br label %114, !dbg !1128

; <label>:83:                                     ; preds = %78
  %84 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1129
  %85 = load %struct.CallInfo*, %struct.CallInfo** %84, align 8, !dbg !1129, !tbaa !418
  %86 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %85, i64 0, i32 1, !dbg !1129
  %87 = bitcast %struct.lua_TValue** %86 to %struct.CClosure***, !dbg !1129
  %88 = load %struct.CClosure**, %struct.CClosure*** %87, align 8, !dbg !1129, !tbaa !600
  %89 = load %struct.CClosure*, %struct.CClosure** %88, align 8, !dbg !1129, !tbaa !510
  %90 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !1131
  %91 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %89, i64 0, i32 6, !dbg !1131
  %92 = bitcast %struct.Table** %91 to i64*, !dbg !1131
  %93 = load i64, i64* %92, align 8, !dbg !1131, !tbaa !510
  %94 = bitcast %struct.lua_TValue* %90 to i64*, !dbg !1131
  store i64 %93, i64* %94, align 8, !dbg !1131, !tbaa !510
  %95 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !1131
  store i32 5, i32* %95, align 8, !dbg !1131, !tbaa !382
  br label %114

; <label>:96:                                     ; preds = %78
  %97 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !1132
  br label %114, !dbg !1133

; <label>:98:                                     ; preds = %78
  %99 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1134
  %100 = load %struct.CallInfo*, %struct.CallInfo** %99, align 8, !dbg !1134, !tbaa !418
  %101 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %100, i64 0, i32 1, !dbg !1134
  %102 = bitcast %struct.lua_TValue** %101 to %struct.CClosure***, !dbg !1134
  %103 = load %struct.CClosure**, %struct.CClosure*** %102, align 8, !dbg !1134, !tbaa !600
  %104 = load %struct.CClosure*, %struct.CClosure** %103, align 8, !dbg !1134, !tbaa !510
  %105 = sub nsw i32 -10002, %2, !dbg !1136
  %106 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %104, i64 0, i32 4, !dbg !1137
  %107 = load i8, i8* %106, align 1, !dbg !1137, !tbaa !510
  %108 = zext i8 %107 to i32, !dbg !1138
  %109 = icmp sgt i32 %105, %108, !dbg !1139
  br i1 %109, label %121, label %110, !dbg !1140

; <label>:110:                                    ; preds = %98
  %111 = add nsw i32 %105, -1, !dbg !1141
  %112 = sext i32 %111 to i64, !dbg !1142
  %113 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %104, i64 0, i32 8, i64 %112, !dbg !1142
  br label %114, !dbg !1140

; <label>:114:                                    ; preds = %61, %73, %79, %83, %96, %110
  %115 = phi %struct.lua_TValue* [ %70, %61 ], [ %77, %73 ], [ %97, %96 ], [ %90, %83 ], [ %82, %79 ], [ %113, %110 ], !dbg !1143
  %116 = icmp eq %struct.lua_TValue* %59, @luaO_nilobject_, !dbg !1145
  %117 = icmp eq %struct.lua_TValue* %115, @luaO_nilobject_, !dbg !1146
  %118 = or i1 %116, %117, !dbg !1147
  br i1 %118, label %121, label %119, !dbg !1147

; <label>:119:                                    ; preds = %114
  %120 = tail call i32 @luaO_rawequalObj(%struct.lua_TValue* %59, %struct.lua_TValue* %115) #7, !dbg !1148
  br label %121, !dbg !1149

; <label>:121:                                    ; preds = %98, %114, %119
  %122 = phi i32 [ %120, %119 ], [ 0, %114 ], [ 0, %98 ], !dbg !1149
  ret i32 %122, !dbg !1150
}

; Function Attrs: noredzone
declare hidden i32 @luaO_rawequalObj(%struct.lua_TValue*, %struct.lua_TValue*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_equal(%struct.lua_State*, i32, i32) local_unnamed_addr #0 !dbg !1151 {
  %4 = icmp sgt i32 %1, 0, !dbg !1165
  br i1 %4, label %5, label %15, !dbg !1166

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !1167
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8, !dbg !1167, !tbaa !401
  %8 = add nsw i32 %1, -1, !dbg !1168
  %9 = sext i32 %8 to i64, !dbg !1169
  %10 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %7, i64 %9, !dbg !1169
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1171
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %11, align 8, !dbg !1171, !tbaa !373
  %13 = icmp ult %struct.lua_TValue* %10, %12, !dbg !1172
  %14 = select i1 %13, %struct.lua_TValue* %10, %struct.lua_TValue* @luaO_nilobject_, !dbg !1173
  br label %58

; <label>:15:                                     ; preds = %3
  %16 = icmp sgt i32 %1, -10000, !dbg !1174
  br i1 %16, label %17, label %22, !dbg !1175

; <label>:17:                                     ; preds = %15
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1176
  %19 = load %struct.lua_TValue*, %struct.lua_TValue** %18, align 8, !dbg !1176, !tbaa !373
  %20 = sext i32 %1 to i64, !dbg !1177
  %21 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %19, i64 %20, !dbg !1177
  br label %58, !dbg !1178

; <label>:22:                                     ; preds = %15
  switch i32 %1, label %42 [
    i32 -10000, label %23
    i32 -10001, label %27
    i32 -10002, label %40
  ], !dbg !1179

; <label>:23:                                     ; preds = %22
  %24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1180
  %25 = load %struct.global_State*, %struct.global_State** %24, align 8, !dbg !1180, !tbaa !482
  %26 = getelementptr inbounds %struct.global_State, %struct.global_State* %25, i64 0, i32 20, !dbg !1180
  br label %58, !dbg !1181

; <label>:27:                                     ; preds = %22
  %28 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1182
  %29 = load %struct.CallInfo*, %struct.CallInfo** %28, align 8, !dbg !1182, !tbaa !418
  %30 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %29, i64 0, i32 1, !dbg !1182
  %31 = bitcast %struct.lua_TValue** %30 to %struct.CClosure***, !dbg !1182
  %32 = load %struct.CClosure**, %struct.CClosure*** %31, align 8, !dbg !1182, !tbaa !600
  %33 = load %struct.CClosure*, %struct.CClosure** %32, align 8, !dbg !1182, !tbaa !510
  %34 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !1184
  %35 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %33, i64 0, i32 6, !dbg !1184
  %36 = bitcast %struct.Table** %35 to i64*, !dbg !1184
  %37 = load i64, i64* %36, align 8, !dbg !1184, !tbaa !510
  %38 = bitcast %struct.lua_TValue* %34 to i64*, !dbg !1184
  store i64 %37, i64* %38, align 8, !dbg !1184, !tbaa !510
  %39 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !1184
  store i32 5, i32* %39, align 8, !dbg !1184, !tbaa !382
  br label %58

; <label>:40:                                     ; preds = %22
  %41 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !1185
  br label %58, !dbg !1186

; <label>:42:                                     ; preds = %22
  %43 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1187
  %44 = load %struct.CallInfo*, %struct.CallInfo** %43, align 8, !dbg !1187, !tbaa !418
  %45 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %44, i64 0, i32 1, !dbg !1187
  %46 = bitcast %struct.lua_TValue** %45 to %struct.CClosure***, !dbg !1187
  %47 = load %struct.CClosure**, %struct.CClosure*** %46, align 8, !dbg !1187, !tbaa !600
  %48 = load %struct.CClosure*, %struct.CClosure** %47, align 8, !dbg !1187, !tbaa !510
  %49 = sub nsw i32 -10002, %1, !dbg !1189
  %50 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %48, i64 0, i32 4, !dbg !1190
  %51 = load i8, i8* %50, align 1, !dbg !1190, !tbaa !510
  %52 = zext i8 %51 to i32, !dbg !1191
  %53 = icmp sgt i32 %49, %52, !dbg !1192
  br i1 %53, label %58, label %54, !dbg !1193

; <label>:54:                                     ; preds = %42
  %55 = add nsw i32 %49, -1, !dbg !1194
  %56 = sext i32 %55 to i64, !dbg !1195
  %57 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %48, i64 0, i32 8, i64 %56, !dbg !1195
  br label %58, !dbg !1193

; <label>:58:                                     ; preds = %5, %17, %23, %27, %40, %42, %54
  %59 = phi %struct.lua_TValue* [ %14, %5 ], [ %21, %17 ], [ %41, %40 ], [ %34, %27 ], [ %26, %23 ], [ %57, %54 ], [ @luaO_nilobject_, %42 ], !dbg !1196
  %60 = icmp sgt i32 %2, 0, !dbg !1201
  br i1 %60, label %61, label %71, !dbg !1202

; <label>:61:                                     ; preds = %58
  %62 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !1203
  %63 = load %struct.lua_TValue*, %struct.lua_TValue** %62, align 8, !dbg !1203, !tbaa !401
  %64 = add nsw i32 %2, -1, !dbg !1204
  %65 = sext i32 %64 to i64, !dbg !1205
  %66 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %63, i64 %65, !dbg !1205
  %67 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1207
  %68 = load %struct.lua_TValue*, %struct.lua_TValue** %67, align 8, !dbg !1207, !tbaa !373
  %69 = icmp ult %struct.lua_TValue* %66, %68, !dbg !1208
  %70 = select i1 %69, %struct.lua_TValue* %66, %struct.lua_TValue* @luaO_nilobject_, !dbg !1209
  br label %114

; <label>:71:                                     ; preds = %58
  %72 = icmp sgt i32 %2, -10000, !dbg !1210
  br i1 %72, label %73, label %78, !dbg !1211

; <label>:73:                                     ; preds = %71
  %74 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1212
  %75 = load %struct.lua_TValue*, %struct.lua_TValue** %74, align 8, !dbg !1212, !tbaa !373
  %76 = sext i32 %2 to i64, !dbg !1213
  %77 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %75, i64 %76, !dbg !1213
  br label %114, !dbg !1214

; <label>:78:                                     ; preds = %71
  switch i32 %2, label %98 [
    i32 -10000, label %79
    i32 -10001, label %83
    i32 -10002, label %96
  ], !dbg !1215

; <label>:79:                                     ; preds = %78
  %80 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1216
  %81 = load %struct.global_State*, %struct.global_State** %80, align 8, !dbg !1216, !tbaa !482
  %82 = getelementptr inbounds %struct.global_State, %struct.global_State* %81, i64 0, i32 20, !dbg !1216
  br label %114, !dbg !1217

; <label>:83:                                     ; preds = %78
  %84 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1218
  %85 = load %struct.CallInfo*, %struct.CallInfo** %84, align 8, !dbg !1218, !tbaa !418
  %86 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %85, i64 0, i32 1, !dbg !1218
  %87 = bitcast %struct.lua_TValue** %86 to %struct.CClosure***, !dbg !1218
  %88 = load %struct.CClosure**, %struct.CClosure*** %87, align 8, !dbg !1218, !tbaa !600
  %89 = load %struct.CClosure*, %struct.CClosure** %88, align 8, !dbg !1218, !tbaa !510
  %90 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !1220
  %91 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %89, i64 0, i32 6, !dbg !1220
  %92 = bitcast %struct.Table** %91 to i64*, !dbg !1220
  %93 = load i64, i64* %92, align 8, !dbg !1220, !tbaa !510
  %94 = bitcast %struct.lua_TValue* %90 to i64*, !dbg !1220
  store i64 %93, i64* %94, align 8, !dbg !1220, !tbaa !510
  %95 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !1220
  store i32 5, i32* %95, align 8, !dbg !1220, !tbaa !382
  br label %114

; <label>:96:                                     ; preds = %78
  %97 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !1221
  br label %114, !dbg !1222

; <label>:98:                                     ; preds = %78
  %99 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1223
  %100 = load %struct.CallInfo*, %struct.CallInfo** %99, align 8, !dbg !1223, !tbaa !418
  %101 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %100, i64 0, i32 1, !dbg !1223
  %102 = bitcast %struct.lua_TValue** %101 to %struct.CClosure***, !dbg !1223
  %103 = load %struct.CClosure**, %struct.CClosure*** %102, align 8, !dbg !1223, !tbaa !600
  %104 = load %struct.CClosure*, %struct.CClosure** %103, align 8, !dbg !1223, !tbaa !510
  %105 = sub nsw i32 -10002, %2, !dbg !1225
  %106 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %104, i64 0, i32 4, !dbg !1226
  %107 = load i8, i8* %106, align 1, !dbg !1226, !tbaa !510
  %108 = zext i8 %107 to i32, !dbg !1227
  %109 = icmp sgt i32 %105, %108, !dbg !1228
  br i1 %109, label %129, label %110, !dbg !1229

; <label>:110:                                    ; preds = %98
  %111 = add nsw i32 %105, -1, !dbg !1230
  %112 = sext i32 %111 to i64, !dbg !1231
  %113 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %104, i64 0, i32 8, i64 %112, !dbg !1231
  br label %114, !dbg !1229

; <label>:114:                                    ; preds = %61, %73, %79, %83, %96, %110
  %115 = phi %struct.lua_TValue* [ %70, %61 ], [ %77, %73 ], [ %97, %96 ], [ %90, %83 ], [ %82, %79 ], [ %113, %110 ], !dbg !1232
  %116 = icmp eq %struct.lua_TValue* %59, @luaO_nilobject_, !dbg !1234
  %117 = icmp eq %struct.lua_TValue* %115, @luaO_nilobject_, !dbg !1235
  %118 = or i1 %116, %117, !dbg !1236
  br i1 %118, label %129, label %119, !dbg !1236

; <label>:119:                                    ; preds = %114
  %120 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %59, i64 0, i32 1, !dbg !1237
  %121 = load i32, i32* %120, align 8, !dbg !1237, !tbaa !382
  %122 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %115, i64 0, i32 1, !dbg !1237
  %123 = load i32, i32* %122, align 8, !dbg !1237, !tbaa !382
  %124 = icmp eq i32 %121, %123, !dbg !1237
  br i1 %124, label %125, label %129, !dbg !1237

; <label>:125:                                    ; preds = %119
  %126 = tail call i32 @luaV_equalval(%struct.lua_State* %0, %struct.lua_TValue* %59, %struct.lua_TValue* %115) #7, !dbg !1237
  %127 = icmp ne i32 %126, 0, !dbg !1237
  %128 = zext i1 %127 to i32
  br label %129

; <label>:129:                                    ; preds = %98, %119, %125, %114
  %130 = phi i32 [ 0, %114 ], [ 0, %119 ], [ %128, %125 ], [ 0, %98 ], !dbg !1238
  ret i32 %130, !dbg !1240
}

; Function Attrs: noredzone
declare hidden i32 @luaV_equalval(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_lessthan(%struct.lua_State*, i32, i32) local_unnamed_addr #0 !dbg !1241 {
  %4 = icmp sgt i32 %1, 0, !dbg !1255
  br i1 %4, label %5, label %15, !dbg !1256

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !1257
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8, !dbg !1257, !tbaa !401
  %8 = add nsw i32 %1, -1, !dbg !1258
  %9 = sext i32 %8 to i64, !dbg !1259
  %10 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %7, i64 %9, !dbg !1259
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1261
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %11, align 8, !dbg !1261, !tbaa !373
  %13 = icmp ult %struct.lua_TValue* %10, %12, !dbg !1262
  %14 = select i1 %13, %struct.lua_TValue* %10, %struct.lua_TValue* @luaO_nilobject_, !dbg !1263
  br label %58

; <label>:15:                                     ; preds = %3
  %16 = icmp sgt i32 %1, -10000, !dbg !1264
  br i1 %16, label %17, label %22, !dbg !1265

; <label>:17:                                     ; preds = %15
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1266
  %19 = load %struct.lua_TValue*, %struct.lua_TValue** %18, align 8, !dbg !1266, !tbaa !373
  %20 = sext i32 %1 to i64, !dbg !1267
  %21 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %19, i64 %20, !dbg !1267
  br label %58, !dbg !1268

; <label>:22:                                     ; preds = %15
  switch i32 %1, label %42 [
    i32 -10000, label %23
    i32 -10001, label %27
    i32 -10002, label %40
  ], !dbg !1269

; <label>:23:                                     ; preds = %22
  %24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1270
  %25 = load %struct.global_State*, %struct.global_State** %24, align 8, !dbg !1270, !tbaa !482
  %26 = getelementptr inbounds %struct.global_State, %struct.global_State* %25, i64 0, i32 20, !dbg !1270
  br label %58, !dbg !1271

; <label>:27:                                     ; preds = %22
  %28 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1272
  %29 = load %struct.CallInfo*, %struct.CallInfo** %28, align 8, !dbg !1272, !tbaa !418
  %30 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %29, i64 0, i32 1, !dbg !1272
  %31 = bitcast %struct.lua_TValue** %30 to %struct.CClosure***, !dbg !1272
  %32 = load %struct.CClosure**, %struct.CClosure*** %31, align 8, !dbg !1272, !tbaa !600
  %33 = load %struct.CClosure*, %struct.CClosure** %32, align 8, !dbg !1272, !tbaa !510
  %34 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !1274
  %35 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %33, i64 0, i32 6, !dbg !1274
  %36 = bitcast %struct.Table** %35 to i64*, !dbg !1274
  %37 = load i64, i64* %36, align 8, !dbg !1274, !tbaa !510
  %38 = bitcast %struct.lua_TValue* %34 to i64*, !dbg !1274
  store i64 %37, i64* %38, align 8, !dbg !1274, !tbaa !510
  %39 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !1274
  store i32 5, i32* %39, align 8, !dbg !1274, !tbaa !382
  br label %58

; <label>:40:                                     ; preds = %22
  %41 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !1275
  br label %58, !dbg !1276

; <label>:42:                                     ; preds = %22
  %43 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1277
  %44 = load %struct.CallInfo*, %struct.CallInfo** %43, align 8, !dbg !1277, !tbaa !418
  %45 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %44, i64 0, i32 1, !dbg !1277
  %46 = bitcast %struct.lua_TValue** %45 to %struct.CClosure***, !dbg !1277
  %47 = load %struct.CClosure**, %struct.CClosure*** %46, align 8, !dbg !1277, !tbaa !600
  %48 = load %struct.CClosure*, %struct.CClosure** %47, align 8, !dbg !1277, !tbaa !510
  %49 = sub nsw i32 -10002, %1, !dbg !1279
  %50 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %48, i64 0, i32 4, !dbg !1280
  %51 = load i8, i8* %50, align 1, !dbg !1280, !tbaa !510
  %52 = zext i8 %51 to i32, !dbg !1281
  %53 = icmp sgt i32 %49, %52, !dbg !1282
  br i1 %53, label %58, label %54, !dbg !1283

; <label>:54:                                     ; preds = %42
  %55 = add nsw i32 %49, -1, !dbg !1284
  %56 = sext i32 %55 to i64, !dbg !1285
  %57 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %48, i64 0, i32 8, i64 %56, !dbg !1285
  br label %58, !dbg !1283

; <label>:58:                                     ; preds = %5, %17, %23, %27, %40, %42, %54
  %59 = phi %struct.lua_TValue* [ %14, %5 ], [ %21, %17 ], [ %41, %40 ], [ %34, %27 ], [ %26, %23 ], [ %57, %54 ], [ @luaO_nilobject_, %42 ], !dbg !1286
  %60 = icmp sgt i32 %2, 0, !dbg !1291
  br i1 %60, label %61, label %71, !dbg !1292

; <label>:61:                                     ; preds = %58
  %62 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !1293
  %63 = load %struct.lua_TValue*, %struct.lua_TValue** %62, align 8, !dbg !1293, !tbaa !401
  %64 = add nsw i32 %2, -1, !dbg !1294
  %65 = sext i32 %64 to i64, !dbg !1295
  %66 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %63, i64 %65, !dbg !1295
  %67 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1297
  %68 = load %struct.lua_TValue*, %struct.lua_TValue** %67, align 8, !dbg !1297, !tbaa !373
  %69 = icmp ult %struct.lua_TValue* %66, %68, !dbg !1298
  %70 = select i1 %69, %struct.lua_TValue* %66, %struct.lua_TValue* @luaO_nilobject_, !dbg !1299
  br label %114

; <label>:71:                                     ; preds = %58
  %72 = icmp sgt i32 %2, -10000, !dbg !1300
  br i1 %72, label %73, label %78, !dbg !1301

; <label>:73:                                     ; preds = %71
  %74 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1302
  %75 = load %struct.lua_TValue*, %struct.lua_TValue** %74, align 8, !dbg !1302, !tbaa !373
  %76 = sext i32 %2 to i64, !dbg !1303
  %77 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %75, i64 %76, !dbg !1303
  br label %114, !dbg !1304

; <label>:78:                                     ; preds = %71
  switch i32 %2, label %98 [
    i32 -10000, label %79
    i32 -10001, label %83
    i32 -10002, label %96
  ], !dbg !1305

; <label>:79:                                     ; preds = %78
  %80 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1306
  %81 = load %struct.global_State*, %struct.global_State** %80, align 8, !dbg !1306, !tbaa !482
  %82 = getelementptr inbounds %struct.global_State, %struct.global_State* %81, i64 0, i32 20, !dbg !1306
  br label %114, !dbg !1307

; <label>:83:                                     ; preds = %78
  %84 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1308
  %85 = load %struct.CallInfo*, %struct.CallInfo** %84, align 8, !dbg !1308, !tbaa !418
  %86 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %85, i64 0, i32 1, !dbg !1308
  %87 = bitcast %struct.lua_TValue** %86 to %struct.CClosure***, !dbg !1308
  %88 = load %struct.CClosure**, %struct.CClosure*** %87, align 8, !dbg !1308, !tbaa !600
  %89 = load %struct.CClosure*, %struct.CClosure** %88, align 8, !dbg !1308, !tbaa !510
  %90 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !1310
  %91 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %89, i64 0, i32 6, !dbg !1310
  %92 = bitcast %struct.Table** %91 to i64*, !dbg !1310
  %93 = load i64, i64* %92, align 8, !dbg !1310, !tbaa !510
  %94 = bitcast %struct.lua_TValue* %90 to i64*, !dbg !1310
  store i64 %93, i64* %94, align 8, !dbg !1310, !tbaa !510
  %95 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !1310
  store i32 5, i32* %95, align 8, !dbg !1310, !tbaa !382
  br label %114

; <label>:96:                                     ; preds = %78
  %97 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !1311
  br label %114, !dbg !1312

; <label>:98:                                     ; preds = %78
  %99 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1313
  %100 = load %struct.CallInfo*, %struct.CallInfo** %99, align 8, !dbg !1313, !tbaa !418
  %101 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %100, i64 0, i32 1, !dbg !1313
  %102 = bitcast %struct.lua_TValue** %101 to %struct.CClosure***, !dbg !1313
  %103 = load %struct.CClosure**, %struct.CClosure*** %102, align 8, !dbg !1313, !tbaa !600
  %104 = load %struct.CClosure*, %struct.CClosure** %103, align 8, !dbg !1313, !tbaa !510
  %105 = sub nsw i32 -10002, %2, !dbg !1315
  %106 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %104, i64 0, i32 4, !dbg !1316
  %107 = load i8, i8* %106, align 1, !dbg !1316, !tbaa !510
  %108 = zext i8 %107 to i32, !dbg !1317
  %109 = icmp sgt i32 %105, %108, !dbg !1318
  br i1 %109, label %121, label %110, !dbg !1319

; <label>:110:                                    ; preds = %98
  %111 = add nsw i32 %105, -1, !dbg !1320
  %112 = sext i32 %111 to i64, !dbg !1321
  %113 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %104, i64 0, i32 8, i64 %112, !dbg !1321
  br label %114, !dbg !1319

; <label>:114:                                    ; preds = %61, %73, %79, %83, %96, %110
  %115 = phi %struct.lua_TValue* [ %70, %61 ], [ %77, %73 ], [ %97, %96 ], [ %90, %83 ], [ %82, %79 ], [ %113, %110 ], !dbg !1322
  %116 = icmp eq %struct.lua_TValue* %59, @luaO_nilobject_, !dbg !1324
  %117 = icmp eq %struct.lua_TValue* %115, @luaO_nilobject_, !dbg !1325
  %118 = or i1 %116, %117, !dbg !1326
  br i1 %118, label %121, label %119, !dbg !1326

; <label>:119:                                    ; preds = %114
  %120 = tail call i32 @luaV_lessthan(%struct.lua_State* %0, %struct.lua_TValue* %59, %struct.lua_TValue* %115) #7, !dbg !1327
  br label %121, !dbg !1328

; <label>:121:                                    ; preds = %98, %114, %119
  %122 = phi i32 [ %120, %119 ], [ 0, %114 ], [ 0, %98 ], !dbg !1328
  ret i32 %122, !dbg !1330
}

; Function Attrs: noredzone
declare hidden i32 @luaV_lessthan(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local double @lua_tonumber(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !1331 {
  %3 = alloca %struct.lua_TValue, align 8
  %4 = bitcast %struct.lua_TValue* %3 to i8*, !dbg !1341
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #6, !dbg !1341
  %5 = icmp sgt i32 %1, 0, !dbg !1345
  br i1 %5, label %6, label %16, !dbg !1346

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !1347
  %8 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8, !dbg !1347, !tbaa !401
  %9 = add nsw i32 %1, -1, !dbg !1348
  %10 = sext i32 %9 to i64, !dbg !1349
  %11 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %8, i64 %10, !dbg !1349
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1351
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %12, align 8, !dbg !1351, !tbaa !373
  %14 = icmp ult %struct.lua_TValue* %11, %13, !dbg !1352
  %15 = select i1 %14, %struct.lua_TValue* %11, %struct.lua_TValue* @luaO_nilobject_, !dbg !1353
  br label %59

; <label>:16:                                     ; preds = %2
  %17 = icmp sgt i32 %1, -10000, !dbg !1354
  br i1 %17, label %18, label %23, !dbg !1355

; <label>:18:                                     ; preds = %16
  %19 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1356
  %20 = load %struct.lua_TValue*, %struct.lua_TValue** %19, align 8, !dbg !1356, !tbaa !373
  %21 = sext i32 %1 to i64, !dbg !1357
  %22 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %20, i64 %21, !dbg !1357
  br label %59, !dbg !1358

; <label>:23:                                     ; preds = %16
  switch i32 %1, label %43 [
    i32 -10000, label %24
    i32 -10001, label %28
    i32 -10002, label %41
  ], !dbg !1359

; <label>:24:                                     ; preds = %23
  %25 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1360
  %26 = load %struct.global_State*, %struct.global_State** %25, align 8, !dbg !1360, !tbaa !482
  %27 = getelementptr inbounds %struct.global_State, %struct.global_State* %26, i64 0, i32 20, !dbg !1360
  br label %59, !dbg !1361

; <label>:28:                                     ; preds = %23
  %29 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1362
  %30 = load %struct.CallInfo*, %struct.CallInfo** %29, align 8, !dbg !1362, !tbaa !418
  %31 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %30, i64 0, i32 1, !dbg !1362
  %32 = bitcast %struct.lua_TValue** %31 to %struct.CClosure***, !dbg !1362
  %33 = load %struct.CClosure**, %struct.CClosure*** %32, align 8, !dbg !1362, !tbaa !600
  %34 = load %struct.CClosure*, %struct.CClosure** %33, align 8, !dbg !1362, !tbaa !510
  %35 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !1364
  %36 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %34, i64 0, i32 6, !dbg !1364
  %37 = bitcast %struct.Table** %36 to i64*, !dbg !1364
  %38 = load i64, i64* %37, align 8, !dbg !1364, !tbaa !510
  %39 = bitcast %struct.lua_TValue* %35 to i64*, !dbg !1364
  store i64 %38, i64* %39, align 8, !dbg !1364, !tbaa !510
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !1364
  store i32 5, i32* %40, align 8, !dbg !1364, !tbaa !382
  br label %59

; <label>:41:                                     ; preds = %23
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !1365
  br label %59, !dbg !1366

; <label>:43:                                     ; preds = %23
  %44 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1367
  %45 = load %struct.CallInfo*, %struct.CallInfo** %44, align 8, !dbg !1367, !tbaa !418
  %46 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %45, i64 0, i32 1, !dbg !1367
  %47 = bitcast %struct.lua_TValue** %46 to %struct.CClosure***, !dbg !1367
  %48 = load %struct.CClosure**, %struct.CClosure*** %47, align 8, !dbg !1367, !tbaa !600
  %49 = load %struct.CClosure*, %struct.CClosure** %48, align 8, !dbg !1367, !tbaa !510
  %50 = sub nsw i32 -10002, %1, !dbg !1369
  %51 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %49, i64 0, i32 4, !dbg !1370
  %52 = load i8, i8* %51, align 1, !dbg !1370, !tbaa !510
  %53 = zext i8 %52 to i32, !dbg !1371
  %54 = icmp sgt i32 %50, %53, !dbg !1372
  br i1 %54, label %59, label %55, !dbg !1373

; <label>:55:                                     ; preds = %43
  %56 = add nsw i32 %50, -1, !dbg !1374
  %57 = sext i32 %56 to i64, !dbg !1375
  %58 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %49, i64 0, i32 8, i64 %57, !dbg !1375
  br label %59, !dbg !1373

; <label>:59:                                     ; preds = %6, %18, %24, %28, %41, %43, %55
  %60 = phi %struct.lua_TValue* [ %15, %6 ], [ %22, %18 ], [ %42, %41 ], [ %35, %28 ], [ %27, %24 ], [ %58, %55 ], [ @luaO_nilobject_, %43 ], !dbg !1376
  %61 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %60, i64 0, i32 1, !dbg !1378
  %62 = load i32, i32* %61, align 8, !dbg !1378, !tbaa !382
  %63 = icmp eq i32 %62, 3, !dbg !1378
  br i1 %63, label %67, label %64, !dbg !1378

; <label>:64:                                     ; preds = %59
  %65 = call %struct.lua_TValue* @luaV_tonumber(%struct.lua_TValue* %60, %struct.lua_TValue* nonnull %3) #7, !dbg !1378
  %66 = icmp eq %struct.lua_TValue* %65, null, !dbg !1378
  br i1 %66, label %71, label %67, !dbg !1381

; <label>:67:                                     ; preds = %64, %59
  %68 = phi %struct.lua_TValue* [ %60, %59 ], [ %65, %64 ], !dbg !1382
  %69 = bitcast %struct.lua_TValue* %68 to double*, !dbg !1383
  %70 = load double, double* %69, align 8, !dbg !1383, !tbaa !510
  br label %71, !dbg !1384

; <label>:71:                                     ; preds = %64, %67
  %72 = phi double [ %70, %67 ], [ 0.000000e+00, %64 ], !dbg !1382
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #6, !dbg !1385
  ret double %72, !dbg !1385
}

; Function Attrs: noredzone nounwind
define dso_local i64 @lua_tointeger(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !1386 {
  %3 = alloca %struct.lua_TValue, align 8
  %4 = bitcast %struct.lua_TValue* %3 to i8*, !dbg !1400
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #6, !dbg !1400
  %5 = icmp sgt i32 %1, 0, !dbg !1404
  br i1 %5, label %6, label %16, !dbg !1405

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !1406
  %8 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8, !dbg !1406, !tbaa !401
  %9 = add nsw i32 %1, -1, !dbg !1407
  %10 = sext i32 %9 to i64, !dbg !1408
  %11 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %8, i64 %10, !dbg !1408
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1410
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %12, align 8, !dbg !1410, !tbaa !373
  %14 = icmp ult %struct.lua_TValue* %11, %13, !dbg !1411
  %15 = select i1 %14, %struct.lua_TValue* %11, %struct.lua_TValue* @luaO_nilobject_, !dbg !1412
  br label %59

; <label>:16:                                     ; preds = %2
  %17 = icmp sgt i32 %1, -10000, !dbg !1413
  br i1 %17, label %18, label %23, !dbg !1414

; <label>:18:                                     ; preds = %16
  %19 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1415
  %20 = load %struct.lua_TValue*, %struct.lua_TValue** %19, align 8, !dbg !1415, !tbaa !373
  %21 = sext i32 %1 to i64, !dbg !1416
  %22 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %20, i64 %21, !dbg !1416
  br label %59, !dbg !1417

; <label>:23:                                     ; preds = %16
  switch i32 %1, label %43 [
    i32 -10000, label %24
    i32 -10001, label %28
    i32 -10002, label %41
  ], !dbg !1418

; <label>:24:                                     ; preds = %23
  %25 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1419
  %26 = load %struct.global_State*, %struct.global_State** %25, align 8, !dbg !1419, !tbaa !482
  %27 = getelementptr inbounds %struct.global_State, %struct.global_State* %26, i64 0, i32 20, !dbg !1419
  br label %59, !dbg !1420

; <label>:28:                                     ; preds = %23
  %29 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1421
  %30 = load %struct.CallInfo*, %struct.CallInfo** %29, align 8, !dbg !1421, !tbaa !418
  %31 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %30, i64 0, i32 1, !dbg !1421
  %32 = bitcast %struct.lua_TValue** %31 to %struct.CClosure***, !dbg !1421
  %33 = load %struct.CClosure**, %struct.CClosure*** %32, align 8, !dbg !1421, !tbaa !600
  %34 = load %struct.CClosure*, %struct.CClosure** %33, align 8, !dbg !1421, !tbaa !510
  %35 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !1423
  %36 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %34, i64 0, i32 6, !dbg !1423
  %37 = bitcast %struct.Table** %36 to i64*, !dbg !1423
  %38 = load i64, i64* %37, align 8, !dbg !1423, !tbaa !510
  %39 = bitcast %struct.lua_TValue* %35 to i64*, !dbg !1423
  store i64 %38, i64* %39, align 8, !dbg !1423, !tbaa !510
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !1423
  store i32 5, i32* %40, align 8, !dbg !1423, !tbaa !382
  br label %59

; <label>:41:                                     ; preds = %23
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !1424
  br label %59, !dbg !1425

; <label>:43:                                     ; preds = %23
  %44 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1426
  %45 = load %struct.CallInfo*, %struct.CallInfo** %44, align 8, !dbg !1426, !tbaa !418
  %46 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %45, i64 0, i32 1, !dbg !1426
  %47 = bitcast %struct.lua_TValue** %46 to %struct.CClosure***, !dbg !1426
  %48 = load %struct.CClosure**, %struct.CClosure*** %47, align 8, !dbg !1426, !tbaa !600
  %49 = load %struct.CClosure*, %struct.CClosure** %48, align 8, !dbg !1426, !tbaa !510
  %50 = sub nsw i32 -10002, %1, !dbg !1428
  %51 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %49, i64 0, i32 4, !dbg !1429
  %52 = load i8, i8* %51, align 1, !dbg !1429, !tbaa !510
  %53 = zext i8 %52 to i32, !dbg !1430
  %54 = icmp sgt i32 %50, %53, !dbg !1431
  br i1 %54, label %59, label %55, !dbg !1432

; <label>:55:                                     ; preds = %43
  %56 = add nsw i32 %50, -1, !dbg !1433
  %57 = sext i32 %56 to i64, !dbg !1434
  %58 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %49, i64 0, i32 8, i64 %57, !dbg !1434
  br label %59, !dbg !1432

; <label>:59:                                     ; preds = %6, %18, %24, %28, %41, %43, %55
  %60 = phi %struct.lua_TValue* [ %15, %6 ], [ %22, %18 ], [ %42, %41 ], [ %35, %28 ], [ %27, %24 ], [ %58, %55 ], [ @luaO_nilobject_, %43 ], !dbg !1435
  %61 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %60, i64 0, i32 1, !dbg !1437
  %62 = load i32, i32* %61, align 8, !dbg !1437, !tbaa !382
  %63 = icmp eq i32 %62, 3, !dbg !1437
  br i1 %63, label %67, label %64, !dbg !1437

; <label>:64:                                     ; preds = %59
  %65 = call %struct.lua_TValue* @luaV_tonumber(%struct.lua_TValue* %60, %struct.lua_TValue* nonnull %3) #7, !dbg !1437
  %66 = icmp eq %struct.lua_TValue* %65, null, !dbg !1437
  br i1 %66, label %72, label %67, !dbg !1439

; <label>:67:                                     ; preds = %64, %59
  %68 = phi %struct.lua_TValue* [ %60, %59 ], [ %65, %64 ], !dbg !1440
  %69 = bitcast %struct.lua_TValue* %68 to double*, !dbg !1441
  %70 = load double, double* %69, align 8, !dbg !1441, !tbaa !510
  %71 = fptosi double %70 to i64, !dbg !1443
  br label %72

; <label>:72:                                     ; preds = %64, %67
  %73 = phi i64 [ %71, %67 ], [ 0, %64 ], !dbg !1440
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #6, !dbg !1445
  ret i64 %73, !dbg !1445
}

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_toboolean(%struct.lua_State* nocapture, i32) local_unnamed_addr #0 !dbg !1446 {
  %3 = icmp sgt i32 %1, 0, !dbg !1456
  br i1 %3, label %4, label %14, !dbg !1457

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !1458
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8, !dbg !1458, !tbaa !401
  %7 = add nsw i32 %1, -1, !dbg !1459
  %8 = sext i32 %7 to i64, !dbg !1460
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 %8, !dbg !1460
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1462
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !1462, !tbaa !373
  %12 = icmp ult %struct.lua_TValue* %9, %11, !dbg !1463
  %13 = select i1 %12, %struct.lua_TValue* %9, %struct.lua_TValue* @luaO_nilobject_, !dbg !1464
  br label %57

; <label>:14:                                     ; preds = %2
  %15 = icmp sgt i32 %1, -10000, !dbg !1465
  br i1 %15, label %16, label %21, !dbg !1466

; <label>:16:                                     ; preds = %14
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1467
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %17, align 8, !dbg !1467, !tbaa !373
  %19 = sext i32 %1 to i64, !dbg !1468
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 %19, !dbg !1468
  br label %57, !dbg !1469

; <label>:21:                                     ; preds = %14
  switch i32 %1, label %41 [
    i32 -10000, label %22
    i32 -10001, label %26
    i32 -10002, label %39
  ], !dbg !1470

; <label>:22:                                     ; preds = %21
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1471
  %24 = load %struct.global_State*, %struct.global_State** %23, align 8, !dbg !1471, !tbaa !482
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %24, i64 0, i32 20, !dbg !1471
  br label %57, !dbg !1472

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1473
  %28 = load %struct.CallInfo*, %struct.CallInfo** %27, align 8, !dbg !1473, !tbaa !418
  %29 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %28, i64 0, i32 1, !dbg !1473
  %30 = bitcast %struct.lua_TValue** %29 to %struct.CClosure***, !dbg !1473
  %31 = load %struct.CClosure**, %struct.CClosure*** %30, align 8, !dbg !1473, !tbaa !600
  %32 = load %struct.CClosure*, %struct.CClosure** %31, align 8, !dbg !1473, !tbaa !510
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !1475
  %34 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %32, i64 0, i32 6, !dbg !1475
  %35 = bitcast %struct.Table** %34 to i64*, !dbg !1475
  %36 = load i64, i64* %35, align 8, !dbg !1475, !tbaa !510
  %37 = bitcast %struct.lua_TValue* %33 to i64*, !dbg !1475
  store i64 %36, i64* %37, align 8, !dbg !1475, !tbaa !510
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !1475
  store i32 5, i32* %38, align 8, !dbg !1475, !tbaa !382
  br label %57

; <label>:39:                                     ; preds = %21
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !1476
  br label %57, !dbg !1477

; <label>:41:                                     ; preds = %21
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1478
  %43 = load %struct.CallInfo*, %struct.CallInfo** %42, align 8, !dbg !1478, !tbaa !418
  %44 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %43, i64 0, i32 1, !dbg !1478
  %45 = bitcast %struct.lua_TValue** %44 to %struct.CClosure***, !dbg !1478
  %46 = load %struct.CClosure**, %struct.CClosure*** %45, align 8, !dbg !1478, !tbaa !600
  %47 = load %struct.CClosure*, %struct.CClosure** %46, align 8, !dbg !1478, !tbaa !510
  %48 = sub nsw i32 -10002, %1, !dbg !1480
  %49 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 4, !dbg !1481
  %50 = load i8, i8* %49, align 1, !dbg !1481, !tbaa !510
  %51 = zext i8 %50 to i32, !dbg !1482
  %52 = icmp sgt i32 %48, %51, !dbg !1483
  br i1 %52, label %57, label %53, !dbg !1484

; <label>:53:                                     ; preds = %41
  %54 = add nsw i32 %48, -1, !dbg !1485
  %55 = sext i32 %54 to i64, !dbg !1486
  %56 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 8, i64 %55, !dbg !1486
  br label %57, !dbg !1484

; <label>:57:                                     ; preds = %4, %16, %22, %26, %39, %41, %53
  %58 = phi %struct.lua_TValue* [ %13, %4 ], [ %20, %16 ], [ %40, %39 ], [ %33, %26 ], [ %25, %22 ], [ %56, %53 ], [ @luaO_nilobject_, %41 ], !dbg !1487
  %59 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i64 0, i32 1, !dbg !1489
  %60 = load i32, i32* %59, align 8, !dbg !1489, !tbaa !382
  switch i32 %60, label %66 [
    i32 0, label %67
    i32 1, label %61
  ], !dbg !1489

; <label>:61:                                     ; preds = %57
  %62 = bitcast %struct.lua_TValue* %58 to i32*, !dbg !1489
  %63 = load i32, i32* %62, align 8, !dbg !1489, !tbaa !510
  %64 = icmp ne i32 %63, 0, !dbg !1489
  %65 = zext i1 %64 to i32
  br label %67

; <label>:66:                                     ; preds = %57
  br label %67, !dbg !1490

; <label>:67:                                     ; preds = %57, %66, %61
  %68 = phi i32 [ %60, %57 ], [ %65, %61 ], [ 1, %66 ]
  ret i32 %68, !dbg !1490
}

; Function Attrs: noredzone nounwind
define dso_local i8* @lua_tolstring(%struct.lua_State*, i32, i64*) local_unnamed_addr #0 !dbg !1491 {
  %4 = icmp sgt i32 %1, 0, !dbg !1506
  br i1 %4, label %5, label %15, !dbg !1507

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !1508
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8, !dbg !1508, !tbaa !401
  %8 = add nsw i32 %1, -1, !dbg !1509
  %9 = sext i32 %8 to i64, !dbg !1510
  %10 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %7, i64 %9, !dbg !1510
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1512
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %11, align 8, !dbg !1512, !tbaa !373
  %13 = icmp ult %struct.lua_TValue* %10, %12, !dbg !1513
  %14 = select i1 %13, %struct.lua_TValue* %10, %struct.lua_TValue* @luaO_nilobject_, !dbg !1514
  br label %58

; <label>:15:                                     ; preds = %3
  %16 = icmp sgt i32 %1, -10000, !dbg !1515
  br i1 %16, label %17, label %22, !dbg !1516

; <label>:17:                                     ; preds = %15
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1517
  %19 = load %struct.lua_TValue*, %struct.lua_TValue** %18, align 8, !dbg !1517, !tbaa !373
  %20 = sext i32 %1 to i64, !dbg !1518
  %21 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %19, i64 %20, !dbg !1518
  br label %58, !dbg !1519

; <label>:22:                                     ; preds = %15
  switch i32 %1, label %42 [
    i32 -10000, label %23
    i32 -10001, label %27
    i32 -10002, label %40
  ], !dbg !1520

; <label>:23:                                     ; preds = %22
  %24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1521
  %25 = load %struct.global_State*, %struct.global_State** %24, align 8, !dbg !1521, !tbaa !482
  %26 = getelementptr inbounds %struct.global_State, %struct.global_State* %25, i64 0, i32 20, !dbg !1521
  br label %58, !dbg !1522

; <label>:27:                                     ; preds = %22
  %28 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1523
  %29 = load %struct.CallInfo*, %struct.CallInfo** %28, align 8, !dbg !1523, !tbaa !418
  %30 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %29, i64 0, i32 1, !dbg !1523
  %31 = bitcast %struct.lua_TValue** %30 to %struct.CClosure***, !dbg !1523
  %32 = load %struct.CClosure**, %struct.CClosure*** %31, align 8, !dbg !1523, !tbaa !600
  %33 = load %struct.CClosure*, %struct.CClosure** %32, align 8, !dbg !1523, !tbaa !510
  %34 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !1525
  %35 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %33, i64 0, i32 6, !dbg !1525
  %36 = bitcast %struct.Table** %35 to i64*, !dbg !1525
  %37 = load i64, i64* %36, align 8, !dbg !1525, !tbaa !510
  %38 = bitcast %struct.lua_TValue* %34 to i64*, !dbg !1525
  store i64 %37, i64* %38, align 8, !dbg !1525, !tbaa !510
  %39 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !1525
  store i32 5, i32* %39, align 8, !dbg !1525, !tbaa !382
  br label %58

; <label>:40:                                     ; preds = %22
  %41 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !1526
  br label %58, !dbg !1527

; <label>:42:                                     ; preds = %22
  %43 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1528
  %44 = load %struct.CallInfo*, %struct.CallInfo** %43, align 8, !dbg !1528, !tbaa !418
  %45 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %44, i64 0, i32 1, !dbg !1528
  %46 = bitcast %struct.lua_TValue** %45 to %struct.CClosure***, !dbg !1528
  %47 = load %struct.CClosure**, %struct.CClosure*** %46, align 8, !dbg !1528, !tbaa !600
  %48 = load %struct.CClosure*, %struct.CClosure** %47, align 8, !dbg !1528, !tbaa !510
  %49 = sub nsw i32 -10002, %1, !dbg !1530
  %50 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %48, i64 0, i32 4, !dbg !1531
  %51 = load i8, i8* %50, align 1, !dbg !1531, !tbaa !510
  %52 = zext i8 %51 to i32, !dbg !1532
  %53 = icmp sgt i32 %49, %52, !dbg !1533
  br i1 %53, label %58, label %54, !dbg !1534

; <label>:54:                                     ; preds = %42
  %55 = add nsw i32 %49, -1, !dbg !1535
  %56 = sext i32 %55 to i64, !dbg !1536
  %57 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %48, i64 0, i32 8, i64 %56, !dbg !1536
  br label %58, !dbg !1534

; <label>:58:                                     ; preds = %5, %17, %23, %27, %40, %42, %54
  %59 = phi %struct.lua_TValue* [ %14, %5 ], [ %21, %17 ], [ %41, %40 ], [ %34, %27 ], [ %26, %23 ], [ %57, %54 ], [ @luaO_nilobject_, %42 ], !dbg !1537
  %60 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %59, i64 0, i32 1, !dbg !1539
  %61 = load i32, i32* %60, align 8, !dbg !1539, !tbaa !382
  %62 = icmp eq i32 %61, 4, !dbg !1539
  br i1 %62, label %131, label %63, !dbg !1541

; <label>:63:                                     ; preds = %58
  %64 = tail call i32 @luaV_tostring(%struct.lua_State* %0, %struct.lua_TValue* %59) #7, !dbg !1542
  %65 = icmp eq i32 %64, 0, !dbg !1542
  br i1 %65, label %66, label %69, !dbg !1545

; <label>:66:                                     ; preds = %63
  %67 = icmp eq i64* %2, null, !dbg !1546
  br i1 %67, label %144, label %68, !dbg !1549

; <label>:68:                                     ; preds = %66
  store i64 0, i64* %2, align 8, !dbg !1550, !tbaa !1551
  br label %144, !dbg !1552

; <label>:69:                                     ; preds = %63
  %70 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1553
  %71 = load %struct.global_State*, %struct.global_State** %70, align 8, !dbg !1553, !tbaa !482
  %72 = getelementptr inbounds %struct.global_State, %struct.global_State* %71, i64 0, i32 14, !dbg !1553
  %73 = load i64, i64* %72, align 8, !dbg !1553, !tbaa !504
  %74 = getelementptr inbounds %struct.global_State, %struct.global_State* %71, i64 0, i32 13, !dbg !1553
  %75 = load i64, i64* %74, align 8, !dbg !1553, !tbaa !505
  %76 = icmp ult i64 %73, %75, !dbg !1553
  br i1 %76, label %78, label %77, !dbg !1556

; <label>:77:                                     ; preds = %69
  tail call void @luaC_step(%struct.lua_State* nonnull %0) #7, !dbg !1553
  br label %78, !dbg !1553

; <label>:78:                                     ; preds = %69, %77
  br i1 %4, label %79, label %89, !dbg !1560

; <label>:79:                                     ; preds = %78
  %80 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !1561
  %81 = load %struct.lua_TValue*, %struct.lua_TValue** %80, align 8, !dbg !1561, !tbaa !401
  %82 = add nsw i32 %1, -1, !dbg !1562
  %83 = sext i32 %82 to i64, !dbg !1563
  %84 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %81, i64 %83, !dbg !1563
  %85 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1565
  %86 = load %struct.lua_TValue*, %struct.lua_TValue** %85, align 8, !dbg !1565, !tbaa !373
  %87 = icmp ult %struct.lua_TValue* %84, %86, !dbg !1566
  %88 = select i1 %87, %struct.lua_TValue* %84, %struct.lua_TValue* @luaO_nilobject_, !dbg !1567
  br label %131

; <label>:89:                                     ; preds = %78
  %90 = icmp sgt i32 %1, -10000, !dbg !1568
  br i1 %90, label %91, label %96, !dbg !1569

; <label>:91:                                     ; preds = %89
  %92 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1570
  %93 = load %struct.lua_TValue*, %struct.lua_TValue** %92, align 8, !dbg !1570, !tbaa !373
  %94 = sext i32 %1 to i64, !dbg !1571
  %95 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %93, i64 %94, !dbg !1571
  br label %131, !dbg !1572

; <label>:96:                                     ; preds = %89
  switch i32 %1, label %115 [
    i32 -10000, label %97
    i32 -10001, label %100
    i32 -10002, label %113
  ], !dbg !1573

; <label>:97:                                     ; preds = %96
  %98 = load %struct.global_State*, %struct.global_State** %70, align 8, !dbg !1574, !tbaa !482
  %99 = getelementptr inbounds %struct.global_State, %struct.global_State* %98, i64 0, i32 20, !dbg !1574
  br label %131, !dbg !1575

; <label>:100:                                    ; preds = %96
  %101 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1576
  %102 = load %struct.CallInfo*, %struct.CallInfo** %101, align 8, !dbg !1576, !tbaa !418
  %103 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %102, i64 0, i32 1, !dbg !1576
  %104 = bitcast %struct.lua_TValue** %103 to %struct.CClosure***, !dbg !1576
  %105 = load %struct.CClosure**, %struct.CClosure*** %104, align 8, !dbg !1576, !tbaa !600
  %106 = load %struct.CClosure*, %struct.CClosure** %105, align 8, !dbg !1576, !tbaa !510
  %107 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !1578
  %108 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %106, i64 0, i32 6, !dbg !1578
  %109 = bitcast %struct.Table** %108 to i64*, !dbg !1578
  %110 = load i64, i64* %109, align 8, !dbg !1578, !tbaa !510
  %111 = bitcast %struct.lua_TValue* %107 to i64*, !dbg !1578
  store i64 %110, i64* %111, align 8, !dbg !1578, !tbaa !510
  %112 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !1578
  store i32 5, i32* %112, align 8, !dbg !1578, !tbaa !382
  br label %131

; <label>:113:                                    ; preds = %96
  %114 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !1579
  br label %131, !dbg !1580

; <label>:115:                                    ; preds = %96
  %116 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1581
  %117 = load %struct.CallInfo*, %struct.CallInfo** %116, align 8, !dbg !1581, !tbaa !418
  %118 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %117, i64 0, i32 1, !dbg !1581
  %119 = bitcast %struct.lua_TValue** %118 to %struct.CClosure***, !dbg !1581
  %120 = load %struct.CClosure**, %struct.CClosure*** %119, align 8, !dbg !1581, !tbaa !600
  %121 = load %struct.CClosure*, %struct.CClosure** %120, align 8, !dbg !1581, !tbaa !510
  %122 = sub nsw i32 -10002, %1, !dbg !1583
  %123 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %121, i64 0, i32 4, !dbg !1584
  %124 = load i8, i8* %123, align 1, !dbg !1584, !tbaa !510
  %125 = zext i8 %124 to i32, !dbg !1585
  %126 = icmp sgt i32 %122, %125, !dbg !1586
  br i1 %126, label %131, label %127, !dbg !1587

; <label>:127:                                    ; preds = %115
  %128 = add nsw i32 %122, -1, !dbg !1588
  %129 = sext i32 %128 to i64, !dbg !1589
  %130 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %121, i64 0, i32 8, i64 %129, !dbg !1589
  br label %131, !dbg !1587

; <label>:131:                                    ; preds = %127, %115, %113, %100, %97, %91, %79, %58
  %132 = phi %struct.lua_TValue* [ %59, %58 ], [ %88, %79 ], [ %95, %91 ], [ %114, %113 ], [ %107, %100 ], [ %99, %97 ], [ %130, %127 ], [ @luaO_nilobject_, %115 ], !dbg !1590
  %133 = icmp eq i64* %2, null, !dbg !1591
  br i1 %133, label %139, label %134, !dbg !1593

; <label>:134:                                    ; preds = %131
  %135 = bitcast %struct.lua_TValue* %132 to %struct.anon.1**, !dbg !1594
  %136 = load %struct.anon.1*, %struct.anon.1** %135, align 8, !dbg !1594, !tbaa !510
  %137 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %136, i64 0, i32 5, !dbg !1595
  %138 = load i64, i64* %137, align 8, !dbg !1595, !tbaa !510
  store i64 %138, i64* %2, align 8, !dbg !1596, !tbaa !1551
  br label %139, !dbg !1597

; <label>:139:                                    ; preds = %131, %134
  %140 = bitcast %struct.lua_TValue* %132 to %union.TString**, !dbg !1598
  %141 = load %union.TString*, %union.TString** %140, align 8, !dbg !1598, !tbaa !510
  %142 = getelementptr inbounds %union.TString, %union.TString* %141, i64 1, !dbg !1598
  %143 = bitcast %union.TString* %142 to i8*, !dbg !1598
  br label %144, !dbg !1599

; <label>:144:                                    ; preds = %68, %66, %139
  %145 = phi i8* [ %143, %139 ], [ null, %66 ], [ null, %68 ], !dbg !1600
  ret i8* %145, !dbg !1601
}

; Function Attrs: noredzone
declare hidden i32 @luaV_tostring(%struct.lua_State*, %struct.lua_TValue*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i64 @lua_objlen(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !1602 {
  %3 = icmp sgt i32 %1, 0, !dbg !1617
  br i1 %3, label %4, label %14, !dbg !1618

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !1619
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8, !dbg !1619, !tbaa !401
  %7 = add nsw i32 %1, -1, !dbg !1620
  %8 = sext i32 %7 to i64, !dbg !1621
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 %8, !dbg !1621
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1623
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !1623, !tbaa !373
  %12 = icmp ult %struct.lua_TValue* %9, %11, !dbg !1624
  %13 = select i1 %12, %struct.lua_TValue* %9, %struct.lua_TValue* @luaO_nilobject_, !dbg !1625
  br label %57

; <label>:14:                                     ; preds = %2
  %15 = icmp sgt i32 %1, -10000, !dbg !1626
  br i1 %15, label %16, label %21, !dbg !1627

; <label>:16:                                     ; preds = %14
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1628
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %17, align 8, !dbg !1628, !tbaa !373
  %19 = sext i32 %1 to i64, !dbg !1629
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 %19, !dbg !1629
  br label %57, !dbg !1630

; <label>:21:                                     ; preds = %14
  switch i32 %1, label %41 [
    i32 -10000, label %22
    i32 -10001, label %26
    i32 -10002, label %39
  ], !dbg !1631

; <label>:22:                                     ; preds = %21
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1632
  %24 = load %struct.global_State*, %struct.global_State** %23, align 8, !dbg !1632, !tbaa !482
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %24, i64 0, i32 20, !dbg !1632
  br label %57, !dbg !1633

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1634
  %28 = load %struct.CallInfo*, %struct.CallInfo** %27, align 8, !dbg !1634, !tbaa !418
  %29 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %28, i64 0, i32 1, !dbg !1634
  %30 = bitcast %struct.lua_TValue** %29 to %struct.CClosure***, !dbg !1634
  %31 = load %struct.CClosure**, %struct.CClosure*** %30, align 8, !dbg !1634, !tbaa !600
  %32 = load %struct.CClosure*, %struct.CClosure** %31, align 8, !dbg !1634, !tbaa !510
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !1636
  %34 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %32, i64 0, i32 6, !dbg !1636
  %35 = bitcast %struct.Table** %34 to i64*, !dbg !1636
  %36 = load i64, i64* %35, align 8, !dbg !1636, !tbaa !510
  %37 = bitcast %struct.lua_TValue* %33 to i64*, !dbg !1636
  store i64 %36, i64* %37, align 8, !dbg !1636, !tbaa !510
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !1636
  store i32 5, i32* %38, align 8, !dbg !1636, !tbaa !382
  br label %57

; <label>:39:                                     ; preds = %21
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !1637
  br label %57, !dbg !1638

; <label>:41:                                     ; preds = %21
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1639
  %43 = load %struct.CallInfo*, %struct.CallInfo** %42, align 8, !dbg !1639, !tbaa !418
  %44 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %43, i64 0, i32 1, !dbg !1639
  %45 = bitcast %struct.lua_TValue** %44 to %struct.CClosure***, !dbg !1639
  %46 = load %struct.CClosure**, %struct.CClosure*** %45, align 8, !dbg !1639, !tbaa !600
  %47 = load %struct.CClosure*, %struct.CClosure** %46, align 8, !dbg !1639, !tbaa !510
  %48 = sub nsw i32 -10002, %1, !dbg !1641
  %49 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 4, !dbg !1642
  %50 = load i8, i8* %49, align 1, !dbg !1642, !tbaa !510
  %51 = zext i8 %50 to i32, !dbg !1643
  %52 = icmp sgt i32 %48, %51, !dbg !1644
  br i1 %52, label %57, label %53, !dbg !1645

; <label>:53:                                     ; preds = %41
  %54 = add nsw i32 %48, -1, !dbg !1646
  %55 = sext i32 %54 to i64, !dbg !1647
  %56 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 8, i64 %55, !dbg !1647
  br label %57, !dbg !1645

; <label>:57:                                     ; preds = %4, %16, %22, %26, %39, %41, %53
  %58 = phi %struct.lua_TValue* [ %13, %4 ], [ %20, %16 ], [ %40, %39 ], [ %33, %26 ], [ %25, %22 ], [ %56, %53 ], [ @luaO_nilobject_, %41 ], !dbg !1648
  %59 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i64 0, i32 1, !dbg !1650
  %60 = load i32, i32* %59, align 8, !dbg !1650, !tbaa !382
  switch i32 %60, label %84 [
    i32 4, label %61
    i32 7, label %66
    i32 5, label %71
    i32 3, label %76
  ], !dbg !1651

; <label>:61:                                     ; preds = %57
  %62 = bitcast %struct.lua_TValue* %58 to %struct.anon.1**, !dbg !1652
  %63 = load %struct.anon.1*, %struct.anon.1** %62, align 8, !dbg !1652, !tbaa !510
  %64 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %63, i64 0, i32 5, !dbg !1653
  %65 = load i64, i64* %64, align 8, !dbg !1653, !tbaa !510
  br label %84, !dbg !1654

; <label>:66:                                     ; preds = %57
  %67 = bitcast %struct.lua_TValue* %58 to %struct.anon.2**, !dbg !1655
  %68 = load %struct.anon.2*, %struct.anon.2** %67, align 8, !dbg !1655, !tbaa !510
  %69 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %68, i64 0, i32 5, !dbg !1656
  %70 = load i64, i64* %69, align 8, !dbg !1656, !tbaa !510
  br label %84, !dbg !1657

; <label>:71:                                     ; preds = %57
  %72 = bitcast %struct.lua_TValue* %58 to %struct.Table**, !dbg !1658
  %73 = load %struct.Table*, %struct.Table** %72, align 8, !dbg !1658, !tbaa !510
  %74 = tail call i32 @luaH_getn(%struct.Table* %73) #7, !dbg !1659
  %75 = sext i32 %74 to i64, !dbg !1659
  br label %84, !dbg !1660

; <label>:76:                                     ; preds = %57
  %77 = tail call i32 @luaV_tostring(%struct.lua_State* %0, %struct.lua_TValue* %58) #7, !dbg !1661
  %78 = icmp eq i32 %77, 0, !dbg !1661
  br i1 %78, label %84, label %79, !dbg !1661

; <label>:79:                                     ; preds = %76
  %80 = bitcast %struct.lua_TValue* %58 to %struct.anon.1**, !dbg !1662
  %81 = load %struct.anon.1*, %struct.anon.1** %80, align 8, !dbg !1662, !tbaa !510
  %82 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %81, i64 0, i32 5, !dbg !1663
  %83 = load i64, i64* %82, align 8, !dbg !1663, !tbaa !510
  br label %84, !dbg !1661

; <label>:84:                                     ; preds = %57, %79, %76, %71, %66, %61
  %85 = phi i64 [ %75, %71 ], [ %70, %66 ], [ %65, %61 ], [ %83, %79 ], [ 0, %76 ], [ 0, %57 ], !dbg !1664
  ret i64 %85, !dbg !1665
}

; Function Attrs: noredzone
declare hidden i32 @luaH_getn(%struct.Table*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 (%struct.lua_State*)* @lua_tocfunction(%struct.lua_State* nocapture, i32) local_unnamed_addr #0 !dbg !1666 {
  %3 = icmp sgt i32 %1, 0, !dbg !1678
  br i1 %3, label %4, label %14, !dbg !1679

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !1680
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8, !dbg !1680, !tbaa !401
  %7 = add nsw i32 %1, -1, !dbg !1681
  %8 = sext i32 %7 to i64, !dbg !1682
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 %8, !dbg !1682
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1684
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !1684, !tbaa !373
  %12 = icmp ult %struct.lua_TValue* %9, %11, !dbg !1685
  %13 = select i1 %12, %struct.lua_TValue* %9, %struct.lua_TValue* @luaO_nilobject_, !dbg !1686
  br label %57

; <label>:14:                                     ; preds = %2
  %15 = icmp sgt i32 %1, -10000, !dbg !1687
  br i1 %15, label %16, label %21, !dbg !1688

; <label>:16:                                     ; preds = %14
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1689
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %17, align 8, !dbg !1689, !tbaa !373
  %19 = sext i32 %1 to i64, !dbg !1690
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 %19, !dbg !1690
  br label %57, !dbg !1691

; <label>:21:                                     ; preds = %14
  switch i32 %1, label %41 [
    i32 -10000, label %22
    i32 -10001, label %26
    i32 -10002, label %39
  ], !dbg !1692

; <label>:22:                                     ; preds = %21
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1693
  %24 = load %struct.global_State*, %struct.global_State** %23, align 8, !dbg !1693, !tbaa !482
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %24, i64 0, i32 20, !dbg !1693
  br label %57, !dbg !1694

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1695
  %28 = load %struct.CallInfo*, %struct.CallInfo** %27, align 8, !dbg !1695, !tbaa !418
  %29 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %28, i64 0, i32 1, !dbg !1695
  %30 = bitcast %struct.lua_TValue** %29 to %struct.CClosure***, !dbg !1695
  %31 = load %struct.CClosure**, %struct.CClosure*** %30, align 8, !dbg !1695, !tbaa !600
  %32 = load %struct.CClosure*, %struct.CClosure** %31, align 8, !dbg !1695, !tbaa !510
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !1697
  %34 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %32, i64 0, i32 6, !dbg !1697
  %35 = bitcast %struct.Table** %34 to i64*, !dbg !1697
  %36 = load i64, i64* %35, align 8, !dbg !1697, !tbaa !510
  %37 = bitcast %struct.lua_TValue* %33 to i64*, !dbg !1697
  store i64 %36, i64* %37, align 8, !dbg !1697, !tbaa !510
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !1697
  store i32 5, i32* %38, align 8, !dbg !1697, !tbaa !382
  br label %57

; <label>:39:                                     ; preds = %21
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !1698
  br label %57, !dbg !1699

; <label>:41:                                     ; preds = %21
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1700
  %43 = load %struct.CallInfo*, %struct.CallInfo** %42, align 8, !dbg !1700, !tbaa !418
  %44 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %43, i64 0, i32 1, !dbg !1700
  %45 = bitcast %struct.lua_TValue** %44 to %struct.CClosure***, !dbg !1700
  %46 = load %struct.CClosure**, %struct.CClosure*** %45, align 8, !dbg !1700, !tbaa !600
  %47 = load %struct.CClosure*, %struct.CClosure** %46, align 8, !dbg !1700, !tbaa !510
  %48 = sub nsw i32 -10002, %1, !dbg !1702
  %49 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 4, !dbg !1703
  %50 = load i8, i8* %49, align 1, !dbg !1703, !tbaa !510
  %51 = zext i8 %50 to i32, !dbg !1704
  %52 = icmp sgt i32 %48, %51, !dbg !1705
  br i1 %52, label %57, label %53, !dbg !1706

; <label>:53:                                     ; preds = %41
  %54 = add nsw i32 %48, -1, !dbg !1707
  %55 = sext i32 %54 to i64, !dbg !1708
  %56 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 8, i64 %55, !dbg !1708
  br label %57, !dbg !1706

; <label>:57:                                     ; preds = %4, %16, %22, %26, %39, %41, %53
  %58 = phi %struct.lua_TValue* [ %13, %4 ], [ %20, %16 ], [ %40, %39 ], [ %33, %26 ], [ %25, %22 ], [ %56, %53 ], [ @luaO_nilobject_, %41 ], !dbg !1709
  %59 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i64 0, i32 1, !dbg !1711
  %60 = load i32, i32* %59, align 8, !dbg !1711, !tbaa !382
  %61 = icmp eq i32 %60, 6, !dbg !1711
  br i1 %61, label %62, label %71, !dbg !1711

; <label>:62:                                     ; preds = %57
  %63 = bitcast %struct.lua_TValue* %58 to %struct.CClosure**, !dbg !1711
  %64 = load %struct.CClosure*, %struct.CClosure** %63, align 8, !dbg !1711, !tbaa !510
  %65 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %64, i64 0, i32 3, !dbg !1711
  %66 = load i8, i8* %65, align 2, !dbg !1711, !tbaa !510
  %67 = icmp eq i8 %66, 0, !dbg !1711
  br i1 %67, label %71, label %68, !dbg !1712

; <label>:68:                                     ; preds = %62
  %69 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %64, i64 0, i32 7, !dbg !1713
  %70 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %69, align 8, !dbg !1713, !tbaa !510
  br label %71, !dbg !1712

; <label>:71:                                     ; preds = %62, %57, %68
  %72 = phi i32 (%struct.lua_State*)* [ %70, %68 ], [ null, %62 ], [ null, %57 ], !dbg !1712
  ret i32 (%struct.lua_State*)* %72, !dbg !1714
}

; Function Attrs: noredzone nounwind
define dso_local i8* @lua_touserdata(%struct.lua_State* nocapture, i32) local_unnamed_addr #0 !dbg !1715 {
  %3 = icmp sgt i32 %1, 0, !dbg !1727
  br i1 %3, label %4, label %14, !dbg !1728

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !1729
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8, !dbg !1729, !tbaa !401
  %7 = add nsw i32 %1, -1, !dbg !1730
  %8 = sext i32 %7 to i64, !dbg !1731
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 %8, !dbg !1731
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1733
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !1733, !tbaa !373
  %12 = icmp ult %struct.lua_TValue* %9, %11, !dbg !1734
  %13 = select i1 %12, %struct.lua_TValue* %9, %struct.lua_TValue* @luaO_nilobject_, !dbg !1735
  br label %57

; <label>:14:                                     ; preds = %2
  %15 = icmp sgt i32 %1, -10000, !dbg !1736
  br i1 %15, label %16, label %21, !dbg !1737

; <label>:16:                                     ; preds = %14
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1738
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %17, align 8, !dbg !1738, !tbaa !373
  %19 = sext i32 %1 to i64, !dbg !1739
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 %19, !dbg !1739
  br label %57, !dbg !1740

; <label>:21:                                     ; preds = %14
  switch i32 %1, label %41 [
    i32 -10000, label %22
    i32 -10001, label %26
    i32 -10002, label %39
  ], !dbg !1741

; <label>:22:                                     ; preds = %21
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1742
  %24 = load %struct.global_State*, %struct.global_State** %23, align 8, !dbg !1742, !tbaa !482
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %24, i64 0, i32 20, !dbg !1742
  br label %57, !dbg !1743

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1744
  %28 = load %struct.CallInfo*, %struct.CallInfo** %27, align 8, !dbg !1744, !tbaa !418
  %29 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %28, i64 0, i32 1, !dbg !1744
  %30 = bitcast %struct.lua_TValue** %29 to %struct.CClosure***, !dbg !1744
  %31 = load %struct.CClosure**, %struct.CClosure*** %30, align 8, !dbg !1744, !tbaa !600
  %32 = load %struct.CClosure*, %struct.CClosure** %31, align 8, !dbg !1744, !tbaa !510
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !1746
  %34 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %32, i64 0, i32 6, !dbg !1746
  %35 = bitcast %struct.Table** %34 to i64*, !dbg !1746
  %36 = load i64, i64* %35, align 8, !dbg !1746, !tbaa !510
  %37 = bitcast %struct.lua_TValue* %33 to i64*, !dbg !1746
  store i64 %36, i64* %37, align 8, !dbg !1746, !tbaa !510
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !1746
  store i32 5, i32* %38, align 8, !dbg !1746, !tbaa !382
  br label %57

; <label>:39:                                     ; preds = %21
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !1747
  br label %57, !dbg !1748

; <label>:41:                                     ; preds = %21
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1749
  %43 = load %struct.CallInfo*, %struct.CallInfo** %42, align 8, !dbg !1749, !tbaa !418
  %44 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %43, i64 0, i32 1, !dbg !1749
  %45 = bitcast %struct.lua_TValue** %44 to %struct.CClosure***, !dbg !1749
  %46 = load %struct.CClosure**, %struct.CClosure*** %45, align 8, !dbg !1749, !tbaa !600
  %47 = load %struct.CClosure*, %struct.CClosure** %46, align 8, !dbg !1749, !tbaa !510
  %48 = sub nsw i32 -10002, %1, !dbg !1751
  %49 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 4, !dbg !1752
  %50 = load i8, i8* %49, align 1, !dbg !1752, !tbaa !510
  %51 = zext i8 %50 to i32, !dbg !1753
  %52 = icmp sgt i32 %48, %51, !dbg !1754
  br i1 %52, label %57, label %53, !dbg !1755

; <label>:53:                                     ; preds = %41
  %54 = add nsw i32 %48, -1, !dbg !1756
  %55 = sext i32 %54 to i64, !dbg !1757
  %56 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 8, i64 %55, !dbg !1757
  br label %57, !dbg !1755

; <label>:57:                                     ; preds = %4, %16, %22, %26, %39, %41, %53
  %58 = phi %struct.lua_TValue* [ %13, %4 ], [ %20, %16 ], [ %40, %39 ], [ %33, %26 ], [ %25, %22 ], [ %56, %53 ], [ @luaO_nilobject_, %41 ], !dbg !1758
  %59 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i64 0, i32 1, !dbg !1760
  %60 = load i32, i32* %59, align 8, !dbg !1760, !tbaa !382
  switch i32 %60, label %69 [
    i32 7, label %61
    i32 2, label %66
  ], !dbg !1761

; <label>:61:                                     ; preds = %57
  %62 = bitcast %struct.lua_TValue* %58 to %union.Udata**, !dbg !1762
  %63 = load %union.Udata*, %union.Udata** %62, align 8, !dbg !1762, !tbaa !510
  %64 = getelementptr inbounds %union.Udata, %union.Udata* %63, i64 1, !dbg !1764
  %65 = bitcast %union.Udata* %64 to i8*, !dbg !1765
  br label %69, !dbg !1766

; <label>:66:                                     ; preds = %57
  %67 = bitcast %struct.lua_TValue* %58 to i8**, !dbg !1767
  %68 = load i8*, i8** %67, align 8, !dbg !1767, !tbaa !510
  br label %69, !dbg !1768

; <label>:69:                                     ; preds = %57, %66, %61
  %70 = phi i8* [ %68, %66 ], [ %65, %61 ], [ null, %57 ], !dbg !1769
  ret i8* %70, !dbg !1770
}

; Function Attrs: noredzone nounwind
define dso_local %struct.lua_State* @lua_tothread(%struct.lua_State* nocapture, i32) local_unnamed_addr #0 !dbg !1771 {
  %3 = icmp sgt i32 %1, 0, !dbg !1783
  br i1 %3, label %4, label %14, !dbg !1784

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !1785
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8, !dbg !1785, !tbaa !401
  %7 = add nsw i32 %1, -1, !dbg !1786
  %8 = sext i32 %7 to i64, !dbg !1787
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 %8, !dbg !1787
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1789
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !1789, !tbaa !373
  %12 = icmp ult %struct.lua_TValue* %9, %11, !dbg !1790
  %13 = select i1 %12, %struct.lua_TValue* %9, %struct.lua_TValue* @luaO_nilobject_, !dbg !1791
  br label %57

; <label>:14:                                     ; preds = %2
  %15 = icmp sgt i32 %1, -10000, !dbg !1792
  br i1 %15, label %16, label %21, !dbg !1793

; <label>:16:                                     ; preds = %14
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1794
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %17, align 8, !dbg !1794, !tbaa !373
  %19 = sext i32 %1 to i64, !dbg !1795
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 %19, !dbg !1795
  br label %57, !dbg !1796

; <label>:21:                                     ; preds = %14
  switch i32 %1, label %41 [
    i32 -10000, label %22
    i32 -10001, label %26
    i32 -10002, label %39
  ], !dbg !1797

; <label>:22:                                     ; preds = %21
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1798
  %24 = load %struct.global_State*, %struct.global_State** %23, align 8, !dbg !1798, !tbaa !482
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %24, i64 0, i32 20, !dbg !1798
  br label %57, !dbg !1799

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1800
  %28 = load %struct.CallInfo*, %struct.CallInfo** %27, align 8, !dbg !1800, !tbaa !418
  %29 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %28, i64 0, i32 1, !dbg !1800
  %30 = bitcast %struct.lua_TValue** %29 to %struct.CClosure***, !dbg !1800
  %31 = load %struct.CClosure**, %struct.CClosure*** %30, align 8, !dbg !1800, !tbaa !600
  %32 = load %struct.CClosure*, %struct.CClosure** %31, align 8, !dbg !1800, !tbaa !510
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !1802
  %34 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %32, i64 0, i32 6, !dbg !1802
  %35 = bitcast %struct.Table** %34 to i64*, !dbg !1802
  %36 = load i64, i64* %35, align 8, !dbg !1802, !tbaa !510
  %37 = bitcast %struct.lua_TValue* %33 to i64*, !dbg !1802
  store i64 %36, i64* %37, align 8, !dbg !1802, !tbaa !510
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !1802
  store i32 5, i32* %38, align 8, !dbg !1802, !tbaa !382
  br label %57

; <label>:39:                                     ; preds = %21
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !1803
  br label %57, !dbg !1804

; <label>:41:                                     ; preds = %21
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1805
  %43 = load %struct.CallInfo*, %struct.CallInfo** %42, align 8, !dbg !1805, !tbaa !418
  %44 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %43, i64 0, i32 1, !dbg !1805
  %45 = bitcast %struct.lua_TValue** %44 to %struct.CClosure***, !dbg !1805
  %46 = load %struct.CClosure**, %struct.CClosure*** %45, align 8, !dbg !1805, !tbaa !600
  %47 = load %struct.CClosure*, %struct.CClosure** %46, align 8, !dbg !1805, !tbaa !510
  %48 = sub nsw i32 -10002, %1, !dbg !1807
  %49 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 4, !dbg !1808
  %50 = load i8, i8* %49, align 1, !dbg !1808, !tbaa !510
  %51 = zext i8 %50 to i32, !dbg !1809
  %52 = icmp sgt i32 %48, %51, !dbg !1810
  br i1 %52, label %57, label %53, !dbg !1811

; <label>:53:                                     ; preds = %41
  %54 = add nsw i32 %48, -1, !dbg !1812
  %55 = sext i32 %54 to i64, !dbg !1813
  %56 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 8, i64 %55, !dbg !1813
  br label %57, !dbg !1811

; <label>:57:                                     ; preds = %4, %16, %22, %26, %39, %41, %53
  %58 = phi %struct.lua_TValue* [ %13, %4 ], [ %20, %16 ], [ %40, %39 ], [ %33, %26 ], [ %25, %22 ], [ %56, %53 ], [ @luaO_nilobject_, %41 ], !dbg !1814
  %59 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i64 0, i32 1, !dbg !1816
  %60 = load i32, i32* %59, align 8, !dbg !1816, !tbaa !382
  %61 = icmp eq i32 %60, 8, !dbg !1816
  br i1 %61, label %62, label %65, !dbg !1817

; <label>:62:                                     ; preds = %57
  %63 = bitcast %struct.lua_TValue* %58 to %struct.lua_State**, !dbg !1818
  %64 = load %struct.lua_State*, %struct.lua_State** %63, align 8, !dbg !1818, !tbaa !510
  br label %65, !dbg !1817

; <label>:65:                                     ; preds = %57, %62
  %66 = phi %struct.lua_State* [ %64, %62 ], [ null, %57 ], !dbg !1817
  ret %struct.lua_State* %66, !dbg !1819
}

; Function Attrs: noredzone nounwind
define dso_local i8* @lua_topointer(%struct.lua_State* nocapture, i32) local_unnamed_addr #0 !dbg !1820 {
  %3 = icmp sgt i32 %1, 0, !dbg !1834
  br i1 %3, label %4, label %14, !dbg !1835

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !1836
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8, !dbg !1836, !tbaa !401
  %7 = add nsw i32 %1, -1, !dbg !1837
  %8 = sext i32 %7 to i64, !dbg !1838
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 %8, !dbg !1838
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1840
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !1840, !tbaa !373
  %12 = icmp ult %struct.lua_TValue* %9, %11, !dbg !1841
  %13 = select i1 %12, %struct.lua_TValue* %9, %struct.lua_TValue* @luaO_nilobject_, !dbg !1842
  br label %57

; <label>:14:                                     ; preds = %2
  %15 = icmp sgt i32 %1, -10000, !dbg !1843
  br i1 %15, label %16, label %21, !dbg !1844

; <label>:16:                                     ; preds = %14
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1845
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %17, align 8, !dbg !1845, !tbaa !373
  %19 = sext i32 %1 to i64, !dbg !1846
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 %19, !dbg !1846
  br label %57, !dbg !1847

; <label>:21:                                     ; preds = %14
  switch i32 %1, label %41 [
    i32 -10000, label %22
    i32 -10001, label %26
    i32 -10002, label %39
  ], !dbg !1848

; <label>:22:                                     ; preds = %21
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1849
  %24 = load %struct.global_State*, %struct.global_State** %23, align 8, !dbg !1849, !tbaa !482
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %24, i64 0, i32 20, !dbg !1849
  br label %57, !dbg !1850

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1851
  %28 = load %struct.CallInfo*, %struct.CallInfo** %27, align 8, !dbg !1851, !tbaa !418
  %29 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %28, i64 0, i32 1, !dbg !1851
  %30 = bitcast %struct.lua_TValue** %29 to %struct.CClosure***, !dbg !1851
  %31 = load %struct.CClosure**, %struct.CClosure*** %30, align 8, !dbg !1851, !tbaa !600
  %32 = load %struct.CClosure*, %struct.CClosure** %31, align 8, !dbg !1851, !tbaa !510
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !1853
  %34 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %32, i64 0, i32 6, !dbg !1853
  %35 = bitcast %struct.Table** %34 to i64*, !dbg !1853
  %36 = load i64, i64* %35, align 8, !dbg !1853, !tbaa !510
  %37 = bitcast %struct.lua_TValue* %33 to i64*, !dbg !1853
  store i64 %36, i64* %37, align 8, !dbg !1853, !tbaa !510
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !1853
  store i32 5, i32* %38, align 8, !dbg !1853, !tbaa !382
  br label %57

; <label>:39:                                     ; preds = %21
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !1854
  br label %57, !dbg !1855

; <label>:41:                                     ; preds = %21
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1856
  %43 = load %struct.CallInfo*, %struct.CallInfo** %42, align 8, !dbg !1856, !tbaa !418
  %44 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %43, i64 0, i32 1, !dbg !1856
  %45 = bitcast %struct.lua_TValue** %44 to %struct.CClosure***, !dbg !1856
  %46 = load %struct.CClosure**, %struct.CClosure*** %45, align 8, !dbg !1856, !tbaa !600
  %47 = load %struct.CClosure*, %struct.CClosure** %46, align 8, !dbg !1856, !tbaa !510
  %48 = sub nsw i32 -10002, %1, !dbg !1858
  %49 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 4, !dbg !1859
  %50 = load i8, i8* %49, align 1, !dbg !1859, !tbaa !510
  %51 = zext i8 %50 to i32, !dbg !1860
  %52 = icmp sgt i32 %48, %51, !dbg !1861
  br i1 %52, label %57, label %53, !dbg !1862

; <label>:53:                                     ; preds = %41
  %54 = add nsw i32 %48, -1, !dbg !1863
  %55 = sext i32 %54 to i64, !dbg !1864
  %56 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 8, i64 %55, !dbg !1864
  br label %57, !dbg !1862

; <label>:57:                                     ; preds = %4, %16, %22, %26, %39, %41, %53
  %58 = phi %struct.lua_TValue* [ %13, %4 ], [ %20, %16 ], [ %40, %39 ], [ %33, %26 ], [ %25, %22 ], [ %56, %53 ], [ @luaO_nilobject_, %41 ], !dbg !1865
  %59 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i64 0, i32 1, !dbg !1867
  %60 = load i32, i32* %59, align 8, !dbg !1867, !tbaa !382
  switch i32 %60, label %136 [
    i32 5, label %61
    i32 6, label %64
    i32 8, label %67
    i32 7, label %70
    i32 2, label %70
  ], !dbg !1868

; <label>:61:                                     ; preds = %57
  %62 = bitcast %struct.lua_TValue* %58 to i8**, !dbg !1869
  %63 = load i8*, i8** %62, align 8, !dbg !1869, !tbaa !510
  br label %136, !dbg !1871

; <label>:64:                                     ; preds = %57
  %65 = bitcast %struct.lua_TValue* %58 to i8**, !dbg !1872
  %66 = load i8*, i8** %65, align 8, !dbg !1872, !tbaa !510
  br label %136, !dbg !1873

; <label>:67:                                     ; preds = %57
  %68 = bitcast %struct.lua_TValue* %58 to i8**, !dbg !1874
  %69 = load i8*, i8** %68, align 8, !dbg !1874, !tbaa !510
  br label %136, !dbg !1875

; <label>:70:                                     ; preds = %57, %57
  br i1 %3, label %71, label %81, !dbg !1882

; <label>:71:                                     ; preds = %70
  %72 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !1883
  %73 = load %struct.lua_TValue*, %struct.lua_TValue** %72, align 8, !dbg !1883, !tbaa !401
  %74 = add nsw i32 %1, -1, !dbg !1884
  %75 = sext i32 %74 to i64, !dbg !1885
  %76 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %73, i64 %75, !dbg !1885
  %77 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1887
  %78 = load %struct.lua_TValue*, %struct.lua_TValue** %77, align 8, !dbg !1887, !tbaa !373
  %79 = icmp ult %struct.lua_TValue* %76, %78, !dbg !1888
  %80 = select i1 %79, %struct.lua_TValue* %76, %struct.lua_TValue* @luaO_nilobject_, !dbg !1889
  br label %124

; <label>:81:                                     ; preds = %70
  %82 = icmp sgt i32 %1, -10000, !dbg !1890
  br i1 %82, label %83, label %88, !dbg !1891

; <label>:83:                                     ; preds = %81
  %84 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1892
  %85 = load %struct.lua_TValue*, %struct.lua_TValue** %84, align 8, !dbg !1892, !tbaa !373
  %86 = sext i32 %1 to i64, !dbg !1893
  %87 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %85, i64 %86, !dbg !1893
  br label %124, !dbg !1894

; <label>:88:                                     ; preds = %81
  switch i32 %1, label %108 [
    i32 -10000, label %89
    i32 -10001, label %93
    i32 -10002, label %106
  ], !dbg !1895

; <label>:89:                                     ; preds = %88
  %90 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1896
  %91 = load %struct.global_State*, %struct.global_State** %90, align 8, !dbg !1896, !tbaa !482
  %92 = getelementptr inbounds %struct.global_State, %struct.global_State* %91, i64 0, i32 20, !dbg !1896
  br label %124, !dbg !1897

; <label>:93:                                     ; preds = %88
  %94 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1898
  %95 = load %struct.CallInfo*, %struct.CallInfo** %94, align 8, !dbg !1898, !tbaa !418
  %96 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %95, i64 0, i32 1, !dbg !1898
  %97 = bitcast %struct.lua_TValue** %96 to %struct.CClosure***, !dbg !1898
  %98 = load %struct.CClosure**, %struct.CClosure*** %97, align 8, !dbg !1898, !tbaa !600
  %99 = load %struct.CClosure*, %struct.CClosure** %98, align 8, !dbg !1898, !tbaa !510
  %100 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !1900
  %101 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %99, i64 0, i32 6, !dbg !1900
  %102 = bitcast %struct.Table** %101 to i64*, !dbg !1900
  %103 = load i64, i64* %102, align 8, !dbg !1900, !tbaa !510
  %104 = bitcast %struct.lua_TValue* %100 to i64*, !dbg !1900
  store i64 %103, i64* %104, align 8, !dbg !1900, !tbaa !510
  %105 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !1900
  store i32 5, i32* %105, align 8, !dbg !1900, !tbaa !382
  br label %124

; <label>:106:                                    ; preds = %88
  %107 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !1901
  br label %124, !dbg !1902

; <label>:108:                                    ; preds = %88
  %109 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1903
  %110 = load %struct.CallInfo*, %struct.CallInfo** %109, align 8, !dbg !1903, !tbaa !418
  %111 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %110, i64 0, i32 1, !dbg !1903
  %112 = bitcast %struct.lua_TValue** %111 to %struct.CClosure***, !dbg !1903
  %113 = load %struct.CClosure**, %struct.CClosure*** %112, align 8, !dbg !1903, !tbaa !600
  %114 = load %struct.CClosure*, %struct.CClosure** %113, align 8, !dbg !1903, !tbaa !510
  %115 = sub nsw i32 -10002, %1, !dbg !1905
  %116 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %114, i64 0, i32 4, !dbg !1906
  %117 = load i8, i8* %116, align 1, !dbg !1906, !tbaa !510
  %118 = zext i8 %117 to i32, !dbg !1907
  %119 = icmp sgt i32 %115, %118, !dbg !1908
  br i1 %119, label %124, label %120, !dbg !1909

; <label>:120:                                    ; preds = %108
  %121 = add nsw i32 %115, -1, !dbg !1910
  %122 = sext i32 %121 to i64, !dbg !1911
  %123 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %114, i64 0, i32 8, i64 %122, !dbg !1911
  br label %124, !dbg !1909

; <label>:124:                                    ; preds = %120, %108, %106, %93, %89, %83, %71
  %125 = phi %struct.lua_TValue* [ %80, %71 ], [ %87, %83 ], [ %107, %106 ], [ %100, %93 ], [ %92, %89 ], [ %123, %120 ], [ @luaO_nilobject_, %108 ], !dbg !1912
  %126 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %125, i64 0, i32 1, !dbg !1914
  %127 = load i32, i32* %126, align 8, !dbg !1914, !tbaa !382
  switch i32 %127, label %136 [
    i32 7, label %128
    i32 2, label %133
  ], !dbg !1915

; <label>:128:                                    ; preds = %124
  %129 = bitcast %struct.lua_TValue* %125 to %union.Udata**, !dbg !1916
  %130 = load %union.Udata*, %union.Udata** %129, align 8, !dbg !1916, !tbaa !510
  %131 = getelementptr inbounds %union.Udata, %union.Udata* %130, i64 1, !dbg !1917
  %132 = bitcast %union.Udata* %131 to i8*, !dbg !1918
  br label %136, !dbg !1919

; <label>:133:                                    ; preds = %124
  %134 = bitcast %struct.lua_TValue* %125 to i8**, !dbg !1920
  %135 = load i8*, i8** %134, align 8, !dbg !1920, !tbaa !510
  br label %136, !dbg !1921

; <label>:136:                                    ; preds = %133, %128, %124, %57, %67, %64, %61
  %137 = phi i8* [ %69, %67 ], [ %66, %64 ], [ %63, %61 ], [ null, %57 ], [ %135, %133 ], [ %132, %128 ], [ null, %124 ], !dbg !1922
  ret i8* %137, !dbg !1923
}

; Function Attrs: noredzone nounwind
define dso_local void @lua_pushnil(%struct.lua_State* nocapture) local_unnamed_addr #0 !dbg !1924 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1930
  %3 = load %struct.lua_TValue*, %struct.lua_TValue** %2, align 8, !dbg !1930, !tbaa !373
  %4 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3, i64 0, i32 1, !dbg !1930
  store i32 0, i32* %4, align 8, !dbg !1930, !tbaa !382
  %5 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3, i64 1, !dbg !1931
  store %struct.lua_TValue* %5, %struct.lua_TValue** %2, align 8, !dbg !1931, !tbaa !373
  ret void, !dbg !1933
}

; Function Attrs: noredzone nounwind
define dso_local void @lua_pushnumber(%struct.lua_State* nocapture, double) local_unnamed_addr #0 !dbg !1934 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1944
  %4 = load %struct.lua_TValue*, %struct.lua_TValue** %3, align 8, !dbg !1944, !tbaa !373
  %5 = bitcast %struct.lua_TValue* %4 to double*, !dbg !1944
  store double %1, double* %5, align 8, !dbg !1944, !tbaa !510
  %6 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %4, i64 0, i32 1, !dbg !1944
  store i32 3, i32* %6, align 8, !dbg !1944, !tbaa !382
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %3, align 8, !dbg !1945, !tbaa !373
  %8 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %7, i64 1, !dbg !1945
  store %struct.lua_TValue* %8, %struct.lua_TValue** %3, align 8, !dbg !1945, !tbaa !373
  ret void, !dbg !1947
}

; Function Attrs: noredzone nounwind
define dso_local void @lua_pushinteger(%struct.lua_State* nocapture, i64) local_unnamed_addr #0 !dbg !1948 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1958
  %4 = load %struct.lua_TValue*, %struct.lua_TValue** %3, align 8, !dbg !1958, !tbaa !373
  %5 = sitofp i64 %1 to double, !dbg !1958
  %6 = bitcast %struct.lua_TValue* %4 to double*, !dbg !1958
  store double %5, double* %6, align 8, !dbg !1958, !tbaa !510
  %7 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %4, i64 0, i32 1, !dbg !1958
  store i32 3, i32* %7, align 8, !dbg !1958, !tbaa !382
  %8 = load %struct.lua_TValue*, %struct.lua_TValue** %3, align 8, !dbg !1959, !tbaa !373
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %8, i64 1, !dbg !1959
  store %struct.lua_TValue* %9, %struct.lua_TValue** %3, align 8, !dbg !1959, !tbaa !373
  ret void, !dbg !1961
}

; Function Attrs: noredzone nounwind
define dso_local void @lua_pushlstring(%struct.lua_State*, i8*, i64) local_unnamed_addr #0 !dbg !1962 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1974
  %5 = load %struct.global_State*, %struct.global_State** %4, align 8, !dbg !1974, !tbaa !482
  %6 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 14, !dbg !1974
  %7 = load i64, i64* %6, align 8, !dbg !1974, !tbaa !504
  %8 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 13, !dbg !1974
  %9 = load i64, i64* %8, align 8, !dbg !1974, !tbaa !505
  %10 = icmp ult i64 %7, %9, !dbg !1974
  br i1 %10, label %12, label %11, !dbg !1977

; <label>:11:                                     ; preds = %3
  tail call void @luaC_step(%struct.lua_State* nonnull %0) #7, !dbg !1974
  br label %12, !dbg !1974

; <label>:12:                                     ; preds = %3, %11
  %13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1978
  %14 = load %struct.lua_TValue*, %struct.lua_TValue** %13, align 8, !dbg !1978, !tbaa !373
  %15 = tail call %union.TString* @luaS_newlstr(%struct.lua_State* nonnull %0, i8* %1, i64 %2) #7, !dbg !1978
  %16 = bitcast %struct.lua_TValue* %14 to %union.TString**, !dbg !1978
  store %union.TString* %15, %union.TString** %16, align 8, !dbg !1978, !tbaa !510
  %17 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %14, i64 0, i32 1, !dbg !1978
  store i32 4, i32* %17, align 8, !dbg !1978, !tbaa !382
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %13, align 8, !dbg !1979, !tbaa !373
  %19 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 1, !dbg !1979
  store %struct.lua_TValue* %19, %struct.lua_TValue** %13, align 8, !dbg !1979, !tbaa !373
  ret void, !dbg !1981
}

; Function Attrs: noredzone
declare hidden %union.TString* @luaS_newlstr(%struct.lua_State*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @lua_pushstring(%struct.lua_State*, i8*) local_unnamed_addr #0 !dbg !1982 {
  %3 = icmp eq i8* %1, null, !dbg !1990
  br i1 %3, label %4, label %8, !dbg !1992

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1995
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8, !dbg !1995, !tbaa !373
  %7 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 0, i32 1, !dbg !1995
  store i32 0, i32* %7, align 8, !dbg !1995, !tbaa !382
  br label %25, !dbg !1996

; <label>:8:                                      ; preds = %2
  %9 = tail call i64 @strlen(i8* nonnull %1) #7, !dbg !1997
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !2002
  %11 = load %struct.global_State*, %struct.global_State** %10, align 8, !dbg !2002, !tbaa !482
  %12 = getelementptr inbounds %struct.global_State, %struct.global_State* %11, i64 0, i32 14, !dbg !2002
  %13 = load i64, i64* %12, align 8, !dbg !2002, !tbaa !504
  %14 = getelementptr inbounds %struct.global_State, %struct.global_State* %11, i64 0, i32 13, !dbg !2002
  %15 = load i64, i64* %14, align 8, !dbg !2002, !tbaa !505
  %16 = icmp ult i64 %13, %15, !dbg !2002
  br i1 %16, label %18, label %17, !dbg !2003

; <label>:17:                                     ; preds = %8
  tail call void @luaC_step(%struct.lua_State* nonnull %0) #7, !dbg !2002
  br label %18, !dbg !2002

; <label>:18:                                     ; preds = %8, %17
  %19 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2004
  %20 = load %struct.lua_TValue*, %struct.lua_TValue** %19, align 8, !dbg !2004, !tbaa !373
  %21 = tail call %union.TString* @luaS_newlstr(%struct.lua_State* nonnull %0, i8* nonnull %1, i64 %9) #7, !dbg !2004
  %22 = bitcast %struct.lua_TValue* %20 to %union.TString**, !dbg !2004
  store %union.TString* %21, %union.TString** %22, align 8, !dbg !2004, !tbaa !510
  %23 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %20, i64 0, i32 1, !dbg !2004
  store i32 4, i32* %23, align 8, !dbg !2004, !tbaa !382
  %24 = load %struct.lua_TValue*, %struct.lua_TValue** %19, align 8, !dbg !2005, !tbaa !373
  br label %25

; <label>:25:                                     ; preds = %18, %4
  %26 = phi %struct.lua_TValue* [ %24, %18 ], [ %6, %4 ]
  %27 = phi %struct.lua_TValue** [ %19, %18 ], [ %5, %4 ]
  %28 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %26, i64 1, !dbg !2006
  store %struct.lua_TValue* %28, %struct.lua_TValue** %27, align 8, !dbg !2006, !tbaa !373
  ret void, !dbg !2007
}

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i8* @lua_pushvfstring(%struct.lua_State*, i8*, %struct.__va_list_tag*) local_unnamed_addr #0 !dbg !2008 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !2026
  %5 = load %struct.global_State*, %struct.global_State** %4, align 8, !dbg !2026, !tbaa !482
  %6 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 14, !dbg !2026
  %7 = load i64, i64* %6, align 8, !dbg !2026, !tbaa !504
  %8 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 13, !dbg !2026
  %9 = load i64, i64* %8, align 8, !dbg !2026, !tbaa !505
  %10 = icmp ult i64 %7, %9, !dbg !2026
  br i1 %10, label %12, label %11, !dbg !2029

; <label>:11:                                     ; preds = %3
  tail call void @luaC_step(%struct.lua_State* nonnull %0) #7, !dbg !2026
  br label %12, !dbg !2026

; <label>:12:                                     ; preds = %3, %11
  %13 = tail call i8* @luaO_pushvfstring(%struct.lua_State* nonnull %0, i8* %1, %struct.__va_list_tag* %2) #7, !dbg !2030
  ret i8* %13, !dbg !2032
}

; Function Attrs: noredzone
declare hidden i8* @luaO_pushvfstring(%struct.lua_State*, i8*, %struct.__va_list_tag*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i8* @lua_pushfstring(%struct.lua_State*, i8*, ...) local_unnamed_addr #0 !dbg !2033 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !2047
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #6, !dbg !2047
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !2049
  %6 = load %struct.global_State*, %struct.global_State** %5, align 8, !dbg !2049, !tbaa !482
  %7 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i64 0, i32 14, !dbg !2049
  %8 = load i64, i64* %7, align 8, !dbg !2049, !tbaa !504
  %9 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i64 0, i32 13, !dbg !2049
  %10 = load i64, i64* %9, align 8, !dbg !2049, !tbaa !505
  %11 = icmp ult i64 %8, %10, !dbg !2049
  br i1 %11, label %13, label %12, !dbg !2052

; <label>:12:                                     ; preds = %2
  tail call void @luaC_step(%struct.lua_State* nonnull %0) #7, !dbg !2049
  br label %13, !dbg !2049

; <label>:13:                                     ; preds = %2, %12
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, !dbg !2053
  call void @llvm.va_start(i8* nonnull %4), !dbg !2053
  %15 = call i8* @luaO_pushvfstring(%struct.lua_State* nonnull %0, i8* %1, %struct.__va_list_tag* nonnull %14) #7, !dbg !2054
  call void @llvm.va_end(i8* nonnull %4), !dbg !2056
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #6, !dbg !2057
  ret i8* %15, !dbg !2058
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

; Function Attrs: noredzone nounwind
define dso_local void @lua_pushcclosure(%struct.lua_State*, i32 (%struct.lua_State*)*, i32) local_unnamed_addr #0 !dbg !2059 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !2075
  %5 = load %struct.global_State*, %struct.global_State** %4, align 8, !dbg !2075, !tbaa !482
  %6 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 14, !dbg !2075
  %7 = load i64, i64* %6, align 8, !dbg !2075, !tbaa !504
  %8 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 13, !dbg !2075
  %9 = load i64, i64* %8, align 8, !dbg !2075, !tbaa !505
  %10 = icmp ult i64 %7, %9, !dbg !2075
  br i1 %10, label %12, label %11, !dbg !2078

; <label>:11:                                     ; preds = %3
  tail call void @luaC_step(%struct.lua_State* nonnull %0) #7, !dbg !2075
  br label %12, !dbg !2075

; <label>:12:                                     ; preds = %3, %11
  %13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2091
  %14 = load %struct.CallInfo*, %struct.CallInfo** %13, align 8, !dbg !2091, !tbaa !418
  %15 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 12, !dbg !2092
  %16 = load %struct.CallInfo*, %struct.CallInfo** %15, align 8, !dbg !2092, !tbaa !705
  %17 = icmp eq %struct.CallInfo* %14, %16, !dbg !2093
  br i1 %17, label %18, label %21, !dbg !2094

; <label>:18:                                     ; preds = %12
  %19 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, i32 0, i32 0, !dbg !2095
  %20 = bitcast %union.GCObject** %19 to %struct.Table**, !dbg !2095
  br label %27, !dbg !2096

; <label>:21:                                     ; preds = %12
  %22 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %14, i64 0, i32 1, !dbg !2097
  %23 = bitcast %struct.lua_TValue** %22 to %struct.CClosure***, !dbg !2097
  %24 = load %struct.CClosure**, %struct.CClosure*** %23, align 8, !dbg !2097, !tbaa !600
  %25 = load %struct.CClosure*, %struct.CClosure** %24, align 8, !dbg !2097, !tbaa !510
  %26 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %25, i64 0, i32 6, !dbg !2099
  br label %27

; <label>:27:                                     ; preds = %18, %21
  %28 = phi %struct.Table** [ %20, %18 ], [ %26, %21 ]
  %29 = load %struct.Table*, %struct.Table** %28, align 8, !dbg !2100, !tbaa !510
  %30 = tail call %union.Closure* @luaF_newCclosure(%struct.lua_State* nonnull %0, i32 %2, %struct.Table* %29) #7, !dbg !2101
  %31 = getelementptr inbounds %union.Closure, %union.Closure* %30, i64 0, i32 0, i32 7, !dbg !2103
  store i32 (%struct.lua_State*)* %1, i32 (%struct.lua_State*)** %31, align 8, !dbg !2104, !tbaa !510
  %32 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2105
  %33 = load %struct.lua_TValue*, %struct.lua_TValue** %32, align 8, !dbg !2106, !tbaa !373
  %34 = sext i32 %2 to i64, !dbg !2106
  %35 = sub nsw i64 0, %34, !dbg !2106
  %36 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %33, i64 %35, !dbg !2106
  store %struct.lua_TValue* %36, %struct.lua_TValue** %32, align 8, !dbg !2106, !tbaa !373
  %37 = icmp eq i32 %2, 0, !dbg !2107
  br i1 %37, label %81, label %38, !dbg !2107

; <label>:38:                                     ; preds = %27
  %39 = and i64 %34, 1, !dbg !2108
  %40 = icmp eq i64 %39, 0, !dbg !2108
  br i1 %40, label %52, label %41, !dbg !2108

; <label>:41:                                     ; preds = %38
  %42 = add nsw i64 %34, -1, !dbg !2108
  %43 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %33, i64 -1, !dbg !2109
  %44 = getelementptr inbounds %union.Closure, %union.Closure* %30, i64 0, i32 0, i32 8, i64 %42, !dbg !2109
  %45 = bitcast %struct.lua_TValue* %43 to i64*, !dbg !2109
  %46 = bitcast %struct.lua_TValue* %44 to i64*, !dbg !2109
  %47 = load i64, i64* %45, align 8, !dbg !2109
  store i64 %47, i64* %46, align 8, !dbg !2109
  %48 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %33, i64 -1, i32 1, !dbg !2109
  %49 = load i32, i32* %48, align 8, !dbg !2109, !tbaa !382
  %50 = getelementptr inbounds %union.Closure, %union.Closure* %30, i64 0, i32 0, i32 8, i64 %42, i32 1, !dbg !2109
  store i32 %49, i32* %50, align 8, !dbg !2109, !tbaa !382
  %51 = load %struct.lua_TValue*, %struct.lua_TValue** %32, align 8, !dbg !2110, !tbaa !373
  br label %52, !dbg !2107

; <label>:52:                                     ; preds = %38, %41
  %53 = phi %struct.lua_TValue* [ undef, %38 ], [ %51, %41 ]
  %54 = phi i64 [ %34, %38 ], [ %42, %41 ]
  %55 = phi %struct.lua_TValue* [ %36, %38 ], [ %51, %41 ]
  %56 = icmp eq i32 %2, 1, !dbg !2108
  br i1 %56, label %81, label %57, !dbg !2108

; <label>:57:                                     ; preds = %52, %57
  %58 = phi i64 [ %70, %57 ], [ %54, %52 ]
  %59 = phi %struct.lua_TValue* [ %80, %57 ], [ %55, %52 ]
  %60 = add nsw i64 %58, -1, !dbg !2108
  %61 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %59, i64 %60, !dbg !2109
  %62 = getelementptr inbounds %union.Closure, %union.Closure* %30, i64 0, i32 0, i32 8, i64 %60, !dbg !2109
  %63 = bitcast %struct.lua_TValue* %61 to i64*, !dbg !2109
  %64 = bitcast %struct.lua_TValue* %62 to i64*, !dbg !2109
  %65 = load i64, i64* %63, align 8, !dbg !2109
  store i64 %65, i64* %64, align 8, !dbg !2109
  %66 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %59, i64 %60, i32 1, !dbg !2109
  %67 = load i32, i32* %66, align 8, !dbg !2109, !tbaa !382
  %68 = getelementptr inbounds %union.Closure, %union.Closure* %30, i64 0, i32 0, i32 8, i64 %60, i32 1, !dbg !2109
  store i32 %67, i32* %68, align 8, !dbg !2109, !tbaa !382
  %69 = load %struct.lua_TValue*, %struct.lua_TValue** %32, align 8, !dbg !2110, !tbaa !373
  %70 = add nsw i64 %58, -2, !dbg !2108
  %71 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %69, i64 %70, !dbg !2109
  %72 = getelementptr inbounds %union.Closure, %union.Closure* %30, i64 0, i32 0, i32 8, i64 %70, !dbg !2109
  %73 = bitcast %struct.lua_TValue* %71 to i64*, !dbg !2109
  %74 = bitcast %struct.lua_TValue* %72 to i64*, !dbg !2109
  %75 = load i64, i64* %73, align 8, !dbg !2109
  store i64 %75, i64* %74, align 8, !dbg !2109
  %76 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %69, i64 %70, i32 1, !dbg !2109
  %77 = load i32, i32* %76, align 8, !dbg !2109, !tbaa !382
  %78 = getelementptr inbounds %union.Closure, %union.Closure* %30, i64 0, i32 0, i32 8, i64 %70, i32 1, !dbg !2109
  store i32 %77, i32* %78, align 8, !dbg !2109, !tbaa !382
  %79 = icmp eq i64 %70, 0
  %80 = load %struct.lua_TValue*, %struct.lua_TValue** %32, align 8, !dbg !2110, !tbaa !373
  br i1 %79, label %81, label %57, !dbg !2107, !llvm.loop !2111

; <label>:81:                                     ; preds = %52, %57, %27
  %82 = phi %struct.lua_TValue* [ %36, %27 ], [ %53, %52 ], [ %80, %57 ], !dbg !2110
  %83 = bitcast %struct.lua_TValue* %82 to %union.Closure**, !dbg !2113
  store %union.Closure* %30, %union.Closure** %83, align 8, !dbg !2113, !tbaa !510
  %84 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %82, i64 0, i32 1, !dbg !2113
  store i32 6, i32* %84, align 8, !dbg !2113, !tbaa !382
  %85 = load %struct.lua_TValue*, %struct.lua_TValue** %32, align 8, !dbg !2114, !tbaa !373
  %86 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %85, i64 1, !dbg !2114
  store %struct.lua_TValue* %86, %struct.lua_TValue** %32, align 8, !dbg !2114, !tbaa !373
  ret void, !dbg !2116
}

; Function Attrs: noredzone
declare hidden %union.Closure* @luaF_newCclosure(%struct.lua_State*, i32, %struct.Table*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @lua_pushboolean(%struct.lua_State* nocapture, i32) local_unnamed_addr #0 !dbg !2117 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2125
  %4 = load %struct.lua_TValue*, %struct.lua_TValue** %3, align 8, !dbg !2125, !tbaa !373
  %5 = icmp ne i32 %1, 0, !dbg !2125
  %6 = zext i1 %5 to i32, !dbg !2125
  %7 = bitcast %struct.lua_TValue* %4 to i32*, !dbg !2125
  store i32 %6, i32* %7, align 8, !dbg !2125, !tbaa !510
  %8 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %4, i64 0, i32 1, !dbg !2125
  store i32 1, i32* %8, align 8, !dbg !2125, !tbaa !382
  %9 = load %struct.lua_TValue*, %struct.lua_TValue** %3, align 8, !dbg !2126, !tbaa !373
  %10 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %9, i64 1, !dbg !2126
  store %struct.lua_TValue* %10, %struct.lua_TValue** %3, align 8, !dbg !2126, !tbaa !373
  ret void, !dbg !2128
}

; Function Attrs: noredzone nounwind
define dso_local void @lua_pushlightuserdata(%struct.lua_State* nocapture, i8*) local_unnamed_addr #0 !dbg !2129 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2139
  %4 = load %struct.lua_TValue*, %struct.lua_TValue** %3, align 8, !dbg !2139, !tbaa !373
  %5 = bitcast %struct.lua_TValue* %4 to i8**, !dbg !2139
  store i8* %1, i8** %5, align 8, !dbg !2139, !tbaa !510
  %6 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %4, i64 0, i32 1, !dbg !2139
  store i32 2, i32* %6, align 8, !dbg !2139, !tbaa !382
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %3, align 8, !dbg !2140, !tbaa !373
  %8 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %7, i64 1, !dbg !2140
  store %struct.lua_TValue* %8, %struct.lua_TValue** %3, align 8, !dbg !2140, !tbaa !373
  ret void, !dbg !2142
}

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_pushthread(%struct.lua_State*) local_unnamed_addr #0 !dbg !2143 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2149
  %3 = load %struct.lua_TValue*, %struct.lua_TValue** %2, align 8, !dbg !2149, !tbaa !373
  %4 = bitcast %struct.lua_TValue* %3 to %struct.lua_State**, !dbg !2149
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8, !dbg !2149, !tbaa !510
  %5 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3, i64 0, i32 1, !dbg !2149
  store i32 8, i32* %5, align 8, !dbg !2149, !tbaa !382
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %2, align 8, !dbg !2150, !tbaa !373
  %7 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 1, !dbg !2150
  store %struct.lua_TValue* %7, %struct.lua_TValue** %2, align 8, !dbg !2150, !tbaa !373
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !2152
  %9 = load %struct.global_State*, %struct.global_State** %8, align 8, !dbg !2152, !tbaa !482
  %10 = getelementptr inbounds %struct.global_State, %struct.global_State* %9, i64 0, i32 21, !dbg !2153
  %11 = load %struct.lua_State*, %struct.lua_State** %10, align 8, !dbg !2153, !tbaa !2154
  %12 = icmp eq %struct.lua_State* %11, %0, !dbg !2155
  %13 = zext i1 %12 to i32, !dbg !2155
  ret i32 %13, !dbg !2156
}

; Function Attrs: noredzone nounwind
define dso_local void @lua_gettable(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !2157 {
  %3 = icmp sgt i32 %1, 0, !dbg !2167
  br i1 %3, label %4, label %14, !dbg !2168

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !2169
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8, !dbg !2169, !tbaa !401
  %7 = add nsw i32 %1, -1, !dbg !2170
  %8 = sext i32 %7 to i64, !dbg !2171
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 %8, !dbg !2171
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2173
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !2173, !tbaa !373
  %12 = icmp ult %struct.lua_TValue* %9, %11, !dbg !2174
  %13 = select i1 %12, %struct.lua_TValue* %9, %struct.lua_TValue* @luaO_nilobject_, !dbg !2175
  br label %57

; <label>:14:                                     ; preds = %2
  %15 = icmp sgt i32 %1, -10000, !dbg !2176
  br i1 %15, label %16, label %21, !dbg !2177

; <label>:16:                                     ; preds = %14
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2178
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %17, align 8, !dbg !2178, !tbaa !373
  %19 = sext i32 %1 to i64, !dbg !2179
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 %19, !dbg !2179
  br label %57, !dbg !2180

; <label>:21:                                     ; preds = %14
  switch i32 %1, label %41 [
    i32 -10000, label %22
    i32 -10001, label %26
    i32 -10002, label %39
  ], !dbg !2181

; <label>:22:                                     ; preds = %21
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !2182
  %24 = load %struct.global_State*, %struct.global_State** %23, align 8, !dbg !2182, !tbaa !482
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %24, i64 0, i32 20, !dbg !2182
  br label %57, !dbg !2183

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2184
  %28 = load %struct.CallInfo*, %struct.CallInfo** %27, align 8, !dbg !2184, !tbaa !418
  %29 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %28, i64 0, i32 1, !dbg !2184
  %30 = bitcast %struct.lua_TValue** %29 to %struct.CClosure***, !dbg !2184
  %31 = load %struct.CClosure**, %struct.CClosure*** %30, align 8, !dbg !2184, !tbaa !600
  %32 = load %struct.CClosure*, %struct.CClosure** %31, align 8, !dbg !2184, !tbaa !510
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !2186
  %34 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %32, i64 0, i32 6, !dbg !2186
  %35 = bitcast %struct.Table** %34 to i64*, !dbg !2186
  %36 = load i64, i64* %35, align 8, !dbg !2186, !tbaa !510
  %37 = bitcast %struct.lua_TValue* %33 to i64*, !dbg !2186
  store i64 %36, i64* %37, align 8, !dbg !2186, !tbaa !510
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !2186
  store i32 5, i32* %38, align 8, !dbg !2186, !tbaa !382
  br label %57

; <label>:39:                                     ; preds = %21
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !2187
  br label %57, !dbg !2188

; <label>:41:                                     ; preds = %21
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2189
  %43 = load %struct.CallInfo*, %struct.CallInfo** %42, align 8, !dbg !2189, !tbaa !418
  %44 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %43, i64 0, i32 1, !dbg !2189
  %45 = bitcast %struct.lua_TValue** %44 to %struct.CClosure***, !dbg !2189
  %46 = load %struct.CClosure**, %struct.CClosure*** %45, align 8, !dbg !2189, !tbaa !600
  %47 = load %struct.CClosure*, %struct.CClosure** %46, align 8, !dbg !2189, !tbaa !510
  %48 = sub nsw i32 -10002, %1, !dbg !2191
  %49 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 4, !dbg !2192
  %50 = load i8, i8* %49, align 1, !dbg !2192, !tbaa !510
  %51 = zext i8 %50 to i32, !dbg !2193
  %52 = icmp sgt i32 %48, %51, !dbg !2194
  br i1 %52, label %57, label %53, !dbg !2195

; <label>:53:                                     ; preds = %41
  %54 = add nsw i32 %48, -1, !dbg !2196
  %55 = sext i32 %54 to i64, !dbg !2197
  %56 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 8, i64 %55, !dbg !2197
  br label %57, !dbg !2195

; <label>:57:                                     ; preds = %4, %16, %22, %26, %39, %41, %53
  %58 = phi %struct.lua_TValue* [ %13, %4 ], [ %20, %16 ], [ %40, %39 ], [ %33, %26 ], [ %25, %22 ], [ %56, %53 ], [ @luaO_nilobject_, %41 ], !dbg !2198
  %59 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2200
  %60 = load %struct.lua_TValue*, %struct.lua_TValue** %59, align 8, !dbg !2200, !tbaa !373
  %61 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %60, i64 -1, !dbg !2201
  tail call void @luaV_gettable(%struct.lua_State* %0, %struct.lua_TValue* %58, %struct.lua_TValue* nonnull %61, %struct.lua_TValue* nonnull %61) #7, !dbg !2202
  ret void, !dbg !2203
}

; Function Attrs: noredzone
declare hidden void @luaV_gettable(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @lua_getfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #0 !dbg !2204 {
  %4 = alloca %struct.lua_TValue, align 8
  %5 = bitcast %struct.lua_TValue* %4 to i8*, !dbg !2218
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #6, !dbg !2218
  %6 = icmp sgt i32 %1, 0, !dbg !2222
  br i1 %6, label %7, label %17, !dbg !2223

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !2224
  %9 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8, !dbg !2224, !tbaa !401
  %10 = add nsw i32 %1, -1, !dbg !2225
  %11 = sext i32 %10 to i64, !dbg !2226
  %12 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %9, i64 %11, !dbg !2226
  %13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2228
  %14 = load %struct.lua_TValue*, %struct.lua_TValue** %13, align 8, !dbg !2228, !tbaa !373
  %15 = icmp ult %struct.lua_TValue* %12, %14, !dbg !2229
  %16 = select i1 %15, %struct.lua_TValue* %12, %struct.lua_TValue* @luaO_nilobject_, !dbg !2230
  br label %60

; <label>:17:                                     ; preds = %3
  %18 = icmp sgt i32 %1, -10000, !dbg !2231
  br i1 %18, label %19, label %24, !dbg !2232

; <label>:19:                                     ; preds = %17
  %20 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2233
  %21 = load %struct.lua_TValue*, %struct.lua_TValue** %20, align 8, !dbg !2233, !tbaa !373
  %22 = sext i32 %1 to i64, !dbg !2234
  %23 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %21, i64 %22, !dbg !2234
  br label %60, !dbg !2235

; <label>:24:                                     ; preds = %17
  switch i32 %1, label %44 [
    i32 -10000, label %25
    i32 -10001, label %29
    i32 -10002, label %42
  ], !dbg !2236

; <label>:25:                                     ; preds = %24
  %26 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !2237
  %27 = load %struct.global_State*, %struct.global_State** %26, align 8, !dbg !2237, !tbaa !482
  %28 = getelementptr inbounds %struct.global_State, %struct.global_State* %27, i64 0, i32 20, !dbg !2237
  br label %60, !dbg !2238

; <label>:29:                                     ; preds = %24
  %30 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2239
  %31 = load %struct.CallInfo*, %struct.CallInfo** %30, align 8, !dbg !2239, !tbaa !418
  %32 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %31, i64 0, i32 1, !dbg !2239
  %33 = bitcast %struct.lua_TValue** %32 to %struct.CClosure***, !dbg !2239
  %34 = load %struct.CClosure**, %struct.CClosure*** %33, align 8, !dbg !2239, !tbaa !600
  %35 = load %struct.CClosure*, %struct.CClosure** %34, align 8, !dbg !2239, !tbaa !510
  %36 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !2241
  %37 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %35, i64 0, i32 6, !dbg !2241
  %38 = bitcast %struct.Table** %37 to i64*, !dbg !2241
  %39 = load i64, i64* %38, align 8, !dbg !2241, !tbaa !510
  %40 = bitcast %struct.lua_TValue* %36 to i64*, !dbg !2241
  store i64 %39, i64* %40, align 8, !dbg !2241, !tbaa !510
  %41 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !2241
  store i32 5, i32* %41, align 8, !dbg !2241, !tbaa !382
  br label %60

; <label>:42:                                     ; preds = %24
  %43 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !2242
  br label %60, !dbg !2243

; <label>:44:                                     ; preds = %24
  %45 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2244
  %46 = load %struct.CallInfo*, %struct.CallInfo** %45, align 8, !dbg !2244, !tbaa !418
  %47 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %46, i64 0, i32 1, !dbg !2244
  %48 = bitcast %struct.lua_TValue** %47 to %struct.CClosure***, !dbg !2244
  %49 = load %struct.CClosure**, %struct.CClosure*** %48, align 8, !dbg !2244, !tbaa !600
  %50 = load %struct.CClosure*, %struct.CClosure** %49, align 8, !dbg !2244, !tbaa !510
  %51 = sub nsw i32 -10002, %1, !dbg !2246
  %52 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %50, i64 0, i32 4, !dbg !2247
  %53 = load i8, i8* %52, align 1, !dbg !2247, !tbaa !510
  %54 = zext i8 %53 to i32, !dbg !2248
  %55 = icmp sgt i32 %51, %54, !dbg !2249
  br i1 %55, label %60, label %56, !dbg !2250

; <label>:56:                                     ; preds = %44
  %57 = add nsw i32 %51, -1, !dbg !2251
  %58 = sext i32 %57 to i64, !dbg !2252
  %59 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %50, i64 0, i32 8, i64 %58, !dbg !2252
  br label %60, !dbg !2250

; <label>:60:                                     ; preds = %7, %19, %25, %29, %42, %44, %56
  %61 = phi %struct.lua_TValue* [ %16, %7 ], [ %23, %19 ], [ %43, %42 ], [ %36, %29 ], [ %28, %25 ], [ %59, %56 ], [ @luaO_nilobject_, %44 ], !dbg !2253
  %62 = tail call i64 @strlen(i8* %2) #7, !dbg !2255
  %63 = tail call %union.TString* @luaS_newlstr(%struct.lua_State* %0, i8* %2, i64 %62) #7, !dbg !2255
  %64 = bitcast %struct.lua_TValue* %4 to %union.TString**, !dbg !2255
  store %union.TString* %63, %union.TString** %64, align 8, !dbg !2255, !tbaa !510
  %65 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %4, i64 0, i32 1, !dbg !2255
  store i32 4, i32* %65, align 8, !dbg !2255, !tbaa !382
  %66 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2256
  %67 = load %struct.lua_TValue*, %struct.lua_TValue** %66, align 8, !dbg !2256, !tbaa !373
  call void @luaV_gettable(%struct.lua_State* %0, %struct.lua_TValue* %61, %struct.lua_TValue* nonnull %4, %struct.lua_TValue* %67) #7, !dbg !2258
  %68 = load %struct.lua_TValue*, %struct.lua_TValue** %66, align 8, !dbg !2259, !tbaa !373
  %69 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %68, i64 1, !dbg !2259
  store %struct.lua_TValue* %69, %struct.lua_TValue** %66, align 8, !dbg !2259, !tbaa !373
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #6, !dbg !2261
  ret void, !dbg !2261
}

; Function Attrs: noredzone nounwind
define dso_local void @lua_rawget(%struct.lua_State* nocapture, i32) local_unnamed_addr #0 !dbg !2262 {
  %3 = icmp sgt i32 %1, 0, !dbg !2275
  br i1 %3, label %4, label %14, !dbg !2276

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !2277
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8, !dbg !2277, !tbaa !401
  %7 = add nsw i32 %1, -1, !dbg !2278
  %8 = sext i32 %7 to i64, !dbg !2279
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 %8, !dbg !2279
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2281
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !2281, !tbaa !373
  %12 = icmp ult %struct.lua_TValue* %9, %11, !dbg !2282
  %13 = select i1 %12, %struct.lua_TValue* %9, %struct.lua_TValue* @luaO_nilobject_, !dbg !2283
  br label %57

; <label>:14:                                     ; preds = %2
  %15 = icmp sgt i32 %1, -10000, !dbg !2284
  br i1 %15, label %16, label %21, !dbg !2285

; <label>:16:                                     ; preds = %14
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2286
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %17, align 8, !dbg !2286, !tbaa !373
  %19 = sext i32 %1 to i64, !dbg !2287
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 %19, !dbg !2287
  br label %57, !dbg !2288

; <label>:21:                                     ; preds = %14
  switch i32 %1, label %41 [
    i32 -10000, label %22
    i32 -10001, label %26
    i32 -10002, label %39
  ], !dbg !2289

; <label>:22:                                     ; preds = %21
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !2290
  %24 = load %struct.global_State*, %struct.global_State** %23, align 8, !dbg !2290, !tbaa !482
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %24, i64 0, i32 20, !dbg !2290
  br label %57, !dbg !2291

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2292
  %28 = load %struct.CallInfo*, %struct.CallInfo** %27, align 8, !dbg !2292, !tbaa !418
  %29 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %28, i64 0, i32 1, !dbg !2292
  %30 = bitcast %struct.lua_TValue** %29 to %struct.CClosure***, !dbg !2292
  %31 = load %struct.CClosure**, %struct.CClosure*** %30, align 8, !dbg !2292, !tbaa !600
  %32 = load %struct.CClosure*, %struct.CClosure** %31, align 8, !dbg !2292, !tbaa !510
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !2294
  %34 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %32, i64 0, i32 6, !dbg !2294
  %35 = bitcast %struct.Table** %34 to i64*, !dbg !2294
  %36 = load i64, i64* %35, align 8, !dbg !2294, !tbaa !510
  %37 = bitcast %struct.lua_TValue* %33 to i64*, !dbg !2294
  store i64 %36, i64* %37, align 8, !dbg !2294, !tbaa !510
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !2294
  store i32 5, i32* %38, align 8, !dbg !2294, !tbaa !382
  br label %57

; <label>:39:                                     ; preds = %21
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !2295
  br label %57, !dbg !2296

; <label>:41:                                     ; preds = %21
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2297
  %43 = load %struct.CallInfo*, %struct.CallInfo** %42, align 8, !dbg !2297, !tbaa !418
  %44 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %43, i64 0, i32 1, !dbg !2297
  %45 = bitcast %struct.lua_TValue** %44 to %struct.CClosure***, !dbg !2297
  %46 = load %struct.CClosure**, %struct.CClosure*** %45, align 8, !dbg !2297, !tbaa !600
  %47 = load %struct.CClosure*, %struct.CClosure** %46, align 8, !dbg !2297, !tbaa !510
  %48 = sub nsw i32 -10002, %1, !dbg !2299
  %49 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 4, !dbg !2300
  %50 = load i8, i8* %49, align 1, !dbg !2300, !tbaa !510
  %51 = zext i8 %50 to i32, !dbg !2301
  %52 = icmp sgt i32 %48, %51, !dbg !2302
  br i1 %52, label %57, label %53, !dbg !2303

; <label>:53:                                     ; preds = %41
  %54 = add nsw i32 %48, -1, !dbg !2304
  %55 = sext i32 %54 to i64, !dbg !2305
  %56 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 8, i64 %55, !dbg !2305
  br label %57, !dbg !2303

; <label>:57:                                     ; preds = %4, %16, %22, %26, %39, %41, %53
  %58 = phi %struct.lua_TValue* [ %13, %4 ], [ %20, %16 ], [ %40, %39 ], [ %33, %26 ], [ %25, %22 ], [ %56, %53 ], [ @luaO_nilobject_, %41 ], !dbg !2306
  %59 = bitcast %struct.lua_TValue* %58 to %struct.Table**, !dbg !2308
  %60 = load %struct.Table*, %struct.Table** %59, align 8, !dbg !2308, !tbaa !510
  %61 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2308
  %62 = load %struct.lua_TValue*, %struct.lua_TValue** %61, align 8, !dbg !2308, !tbaa !373
  %63 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %62, i64 -1, !dbg !2308
  %64 = tail call %struct.lua_TValue* @luaH_get(%struct.Table* %60, %struct.lua_TValue* nonnull %63) #7, !dbg !2308
  %65 = load %struct.lua_TValue*, %struct.lua_TValue** %61, align 8, !dbg !2308, !tbaa !373
  %66 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %65, i64 -1, !dbg !2308
  %67 = bitcast %struct.lua_TValue* %64 to i64*, !dbg !2308
  %68 = bitcast %struct.lua_TValue* %66 to i64*, !dbg !2308
  %69 = load i64, i64* %67, align 8, !dbg !2308
  store i64 %69, i64* %68, align 8, !dbg !2308
  %70 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %64, i64 0, i32 1, !dbg !2308
  %71 = load i32, i32* %70, align 8, !dbg !2308, !tbaa !382
  %72 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %65, i64 -1, i32 1, !dbg !2308
  store i32 %71, i32* %72, align 8, !dbg !2308, !tbaa !382
  ret void, !dbg !2309
}

; Function Attrs: noredzone
declare hidden %struct.lua_TValue* @luaH_get(%struct.Table*, %struct.lua_TValue*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @lua_rawgeti(%struct.lua_State* nocapture, i32, i32) local_unnamed_addr #0 !dbg !2310 {
  %4 = icmp sgt i32 %1, 0, !dbg !2327
  br i1 %4, label %5, label %15, !dbg !2328

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !2329
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8, !dbg !2329, !tbaa !401
  %8 = add nsw i32 %1, -1, !dbg !2330
  %9 = sext i32 %8 to i64, !dbg !2331
  %10 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %7, i64 %9, !dbg !2331
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2333
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %11, align 8, !dbg !2333, !tbaa !373
  %13 = icmp ult %struct.lua_TValue* %10, %12, !dbg !2334
  %14 = select i1 %13, %struct.lua_TValue* %10, %struct.lua_TValue* @luaO_nilobject_, !dbg !2335
  br label %58

; <label>:15:                                     ; preds = %3
  %16 = icmp sgt i32 %1, -10000, !dbg !2336
  br i1 %16, label %17, label %22, !dbg !2337

; <label>:17:                                     ; preds = %15
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2338
  %19 = load %struct.lua_TValue*, %struct.lua_TValue** %18, align 8, !dbg !2338, !tbaa !373
  %20 = sext i32 %1 to i64, !dbg !2339
  %21 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %19, i64 %20, !dbg !2339
  br label %58, !dbg !2340

; <label>:22:                                     ; preds = %15
  switch i32 %1, label %42 [
    i32 -10000, label %23
    i32 -10001, label %27
    i32 -10002, label %40
  ], !dbg !2341

; <label>:23:                                     ; preds = %22
  %24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !2342
  %25 = load %struct.global_State*, %struct.global_State** %24, align 8, !dbg !2342, !tbaa !482
  %26 = getelementptr inbounds %struct.global_State, %struct.global_State* %25, i64 0, i32 20, !dbg !2342
  br label %58, !dbg !2343

; <label>:27:                                     ; preds = %22
  %28 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2344
  %29 = load %struct.CallInfo*, %struct.CallInfo** %28, align 8, !dbg !2344, !tbaa !418
  %30 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %29, i64 0, i32 1, !dbg !2344
  %31 = bitcast %struct.lua_TValue** %30 to %struct.CClosure***, !dbg !2344
  %32 = load %struct.CClosure**, %struct.CClosure*** %31, align 8, !dbg !2344, !tbaa !600
  %33 = load %struct.CClosure*, %struct.CClosure** %32, align 8, !dbg !2344, !tbaa !510
  %34 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !2346
  %35 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %33, i64 0, i32 6, !dbg !2346
  %36 = bitcast %struct.Table** %35 to i64*, !dbg !2346
  %37 = load i64, i64* %36, align 8, !dbg !2346, !tbaa !510
  %38 = bitcast %struct.lua_TValue* %34 to i64*, !dbg !2346
  store i64 %37, i64* %38, align 8, !dbg !2346, !tbaa !510
  %39 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !2346
  store i32 5, i32* %39, align 8, !dbg !2346, !tbaa !382
  br label %58

; <label>:40:                                     ; preds = %22
  %41 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !2347
  br label %58, !dbg !2348

; <label>:42:                                     ; preds = %22
  %43 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2349
  %44 = load %struct.CallInfo*, %struct.CallInfo** %43, align 8, !dbg !2349, !tbaa !418
  %45 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %44, i64 0, i32 1, !dbg !2349
  %46 = bitcast %struct.lua_TValue** %45 to %struct.CClosure***, !dbg !2349
  %47 = load %struct.CClosure**, %struct.CClosure*** %46, align 8, !dbg !2349, !tbaa !600
  %48 = load %struct.CClosure*, %struct.CClosure** %47, align 8, !dbg !2349, !tbaa !510
  %49 = sub nsw i32 -10002, %1, !dbg !2351
  %50 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %48, i64 0, i32 4, !dbg !2352
  %51 = load i8, i8* %50, align 1, !dbg !2352, !tbaa !510
  %52 = zext i8 %51 to i32, !dbg !2353
  %53 = icmp sgt i32 %49, %52, !dbg !2354
  br i1 %53, label %58, label %54, !dbg !2355

; <label>:54:                                     ; preds = %42
  %55 = add nsw i32 %49, -1, !dbg !2356
  %56 = sext i32 %55 to i64, !dbg !2357
  %57 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %48, i64 0, i32 8, i64 %56, !dbg !2357
  br label %58, !dbg !2355

; <label>:58:                                     ; preds = %5, %17, %23, %27, %40, %42, %54
  %59 = phi %struct.lua_TValue* [ %14, %5 ], [ %21, %17 ], [ %41, %40 ], [ %34, %27 ], [ %26, %23 ], [ %57, %54 ], [ @luaO_nilobject_, %42 ], !dbg !2358
  %60 = bitcast %struct.lua_TValue* %59 to %struct.Table**, !dbg !2360
  %61 = load %struct.Table*, %struct.Table** %60, align 8, !dbg !2360, !tbaa !510
  %62 = tail call %struct.lua_TValue* @luaH_getnum(%struct.Table* %61, i32 %2) #7, !dbg !2360
  %63 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2360
  %64 = load %struct.lua_TValue*, %struct.lua_TValue** %63, align 8, !dbg !2360, !tbaa !373
  %65 = bitcast %struct.lua_TValue* %62 to i64*, !dbg !2360
  %66 = bitcast %struct.lua_TValue* %64 to i64*, !dbg !2360
  %67 = load i64, i64* %65, align 8, !dbg !2360
  store i64 %67, i64* %66, align 8, !dbg !2360
  %68 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %62, i64 0, i32 1, !dbg !2360
  %69 = load i32, i32* %68, align 8, !dbg !2360, !tbaa !382
  %70 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %64, i64 0, i32 1, !dbg !2360
  store i32 %69, i32* %70, align 8, !dbg !2360, !tbaa !382
  %71 = load %struct.lua_TValue*, %struct.lua_TValue** %63, align 8, !dbg !2361, !tbaa !373
  %72 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %71, i64 1, !dbg !2361
  store %struct.lua_TValue* %72, %struct.lua_TValue** %63, align 8, !dbg !2361, !tbaa !373
  ret void, !dbg !2363
}

; Function Attrs: noredzone
declare hidden %struct.lua_TValue* @luaH_getnum(%struct.Table*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @lua_createtable(%struct.lua_State*, i32, i32) local_unnamed_addr #0 !dbg !2364 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !2374
  %5 = load %struct.global_State*, %struct.global_State** %4, align 8, !dbg !2374, !tbaa !482
  %6 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 14, !dbg !2374
  %7 = load i64, i64* %6, align 8, !dbg !2374, !tbaa !504
  %8 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 13, !dbg !2374
  %9 = load i64, i64* %8, align 8, !dbg !2374, !tbaa !505
  %10 = icmp ult i64 %7, %9, !dbg !2374
  br i1 %10, label %12, label %11, !dbg !2377

; <label>:11:                                     ; preds = %3
  tail call void @luaC_step(%struct.lua_State* nonnull %0) #7, !dbg !2374
  br label %12, !dbg !2374

; <label>:12:                                     ; preds = %3, %11
  %13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2378
  %14 = load %struct.lua_TValue*, %struct.lua_TValue** %13, align 8, !dbg !2378, !tbaa !373
  %15 = tail call %struct.Table* @luaH_new(%struct.lua_State* nonnull %0, i32 %1, i32 %2) #7, !dbg !2378
  %16 = bitcast %struct.lua_TValue* %14 to %struct.Table**, !dbg !2378
  store %struct.Table* %15, %struct.Table** %16, align 8, !dbg !2378, !tbaa !510
  %17 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %14, i64 0, i32 1, !dbg !2378
  store i32 5, i32* %17, align 8, !dbg !2378, !tbaa !382
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %13, align 8, !dbg !2379, !tbaa !373
  %19 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 1, !dbg !2379
  store %struct.lua_TValue* %19, %struct.lua_TValue** %13, align 8, !dbg !2379, !tbaa !373
  ret void, !dbg !2381
}

; Function Attrs: noredzone
declare hidden %struct.Table* @luaH_new(%struct.lua_State*, i32, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_getmetatable(%struct.lua_State* nocapture, i32) local_unnamed_addr #0 !dbg !2382 {
  %3 = icmp sgt i32 %1, 0, !dbg !2399
  br i1 %3, label %4, label %14, !dbg !2400

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !2401
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8, !dbg !2401, !tbaa !401
  %7 = add nsw i32 %1, -1, !dbg !2402
  %8 = sext i32 %7 to i64, !dbg !2403
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 %8, !dbg !2403
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2405
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !2405, !tbaa !373
  %12 = icmp ult %struct.lua_TValue* %9, %11, !dbg !2406
  %13 = select i1 %12, %struct.lua_TValue* %9, %struct.lua_TValue* @luaO_nilobject_, !dbg !2407
  br label %57

; <label>:14:                                     ; preds = %2
  %15 = icmp sgt i32 %1, -10000, !dbg !2408
  br i1 %15, label %16, label %21, !dbg !2409

; <label>:16:                                     ; preds = %14
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2410
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %17, align 8, !dbg !2410, !tbaa !373
  %19 = sext i32 %1 to i64, !dbg !2411
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 %19, !dbg !2411
  br label %57, !dbg !2412

; <label>:21:                                     ; preds = %14
  switch i32 %1, label %41 [
    i32 -10000, label %22
    i32 -10001, label %26
    i32 -10002, label %39
  ], !dbg !2413

; <label>:22:                                     ; preds = %21
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !2414
  %24 = load %struct.global_State*, %struct.global_State** %23, align 8, !dbg !2414, !tbaa !482
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %24, i64 0, i32 20, !dbg !2414
  br label %57, !dbg !2415

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2416
  %28 = load %struct.CallInfo*, %struct.CallInfo** %27, align 8, !dbg !2416, !tbaa !418
  %29 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %28, i64 0, i32 1, !dbg !2416
  %30 = bitcast %struct.lua_TValue** %29 to %struct.CClosure***, !dbg !2416
  %31 = load %struct.CClosure**, %struct.CClosure*** %30, align 8, !dbg !2416, !tbaa !600
  %32 = load %struct.CClosure*, %struct.CClosure** %31, align 8, !dbg !2416, !tbaa !510
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !2418
  %34 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %32, i64 0, i32 6, !dbg !2418
  %35 = bitcast %struct.Table** %34 to i64*, !dbg !2418
  %36 = load i64, i64* %35, align 8, !dbg !2418, !tbaa !510
  %37 = bitcast %struct.lua_TValue* %33 to i64*, !dbg !2418
  store i64 %36, i64* %37, align 8, !dbg !2418, !tbaa !510
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !2418
  store i32 5, i32* %38, align 8, !dbg !2418, !tbaa !382
  br label %57

; <label>:39:                                     ; preds = %21
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !2419
  br label %57, !dbg !2420

; <label>:41:                                     ; preds = %21
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2421
  %43 = load %struct.CallInfo*, %struct.CallInfo** %42, align 8, !dbg !2421, !tbaa !418
  %44 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %43, i64 0, i32 1, !dbg !2421
  %45 = bitcast %struct.lua_TValue** %44 to %struct.CClosure***, !dbg !2421
  %46 = load %struct.CClosure**, %struct.CClosure*** %45, align 8, !dbg !2421, !tbaa !600
  %47 = load %struct.CClosure*, %struct.CClosure** %46, align 8, !dbg !2421, !tbaa !510
  %48 = sub nsw i32 -10002, %1, !dbg !2423
  %49 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 4, !dbg !2424
  %50 = load i8, i8* %49, align 1, !dbg !2424, !tbaa !510
  %51 = zext i8 %50 to i32, !dbg !2425
  %52 = icmp sgt i32 %48, %51, !dbg !2426
  br i1 %52, label %57, label %53, !dbg !2427

; <label>:53:                                     ; preds = %41
  %54 = add nsw i32 %48, -1, !dbg !2428
  %55 = sext i32 %54 to i64, !dbg !2429
  %56 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 8, i64 %55, !dbg !2429
  br label %57, !dbg !2427

; <label>:57:                                     ; preds = %4, %16, %22, %26, %39, %41, %53
  %58 = phi %struct.lua_TValue* [ %13, %4 ], [ %20, %16 ], [ %40, %39 ], [ %33, %26 ], [ %25, %22 ], [ %56, %53 ], [ @luaO_nilobject_, %41 ], !dbg !2430
  %59 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i64 0, i32 1, !dbg !2432
  %60 = load i32, i32* %59, align 8, !dbg !2432, !tbaa !382
  switch i32 %60, label %69 [
    i32 5, label %61
    i32 7, label %65
  ], !dbg !2433

; <label>:61:                                     ; preds = %57
  %62 = bitcast %struct.lua_TValue* %58 to %struct.Table**, !dbg !2434
  %63 = load %struct.Table*, %struct.Table** %62, align 8, !dbg !2434, !tbaa !510
  %64 = getelementptr inbounds %struct.Table, %struct.Table* %63, i64 0, i32 5, !dbg !2436
  br label %74, !dbg !2437

; <label>:65:                                     ; preds = %57
  %66 = bitcast %struct.lua_TValue* %58 to %struct.anon.2**, !dbg !2438
  %67 = load %struct.anon.2*, %struct.anon.2** %66, align 8, !dbg !2438, !tbaa !510
  %68 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %67, i64 0, i32 3, !dbg !2439
  br label %74, !dbg !2440

; <label>:69:                                     ; preds = %57
  %70 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !2441
  %71 = load %struct.global_State*, %struct.global_State** %70, align 8, !dbg !2441, !tbaa !482
  %72 = sext i32 %60 to i64, !dbg !2441
  %73 = getelementptr inbounds %struct.global_State, %struct.global_State* %71, i64 0, i32 23, i64 %72, !dbg !2441
  br label %74, !dbg !2442

; <label>:74:                                     ; preds = %69, %65, %61
  %75 = phi %struct.Table** [ %73, %69 ], [ %68, %65 ], [ %64, %61 ]
  %76 = load %struct.Table*, %struct.Table** %75, align 8, !dbg !2443, !tbaa !510
  %77 = icmp eq %struct.Table* %76, null, !dbg !2444
  br i1 %77, label %85, label %78, !dbg !2445

; <label>:78:                                     ; preds = %74
  %79 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2446
  %80 = load %struct.lua_TValue*, %struct.lua_TValue** %79, align 8, !dbg !2446, !tbaa !373
  %81 = bitcast %struct.lua_TValue* %80 to %struct.Table**, !dbg !2446
  store %struct.Table* %76, %struct.Table** %81, align 8, !dbg !2446, !tbaa !510
  %82 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %80, i64 0, i32 1, !dbg !2446
  store i32 5, i32* %82, align 8, !dbg !2446, !tbaa !382
  %83 = load %struct.lua_TValue*, %struct.lua_TValue** %79, align 8, !dbg !2447, !tbaa !373
  %84 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %83, i64 1, !dbg !2447
  store %struct.lua_TValue* %84, %struct.lua_TValue** %79, align 8, !dbg !2447, !tbaa !373
  br label %85

; <label>:85:                                     ; preds = %74, %78
  %86 = phi i32 [ 1, %78 ], [ 0, %74 ], !dbg !2450
  ret i32 %86, !dbg !2451
}

; Function Attrs: noredzone nounwind
define dso_local void @lua_getfenv(%struct.lua_State* nocapture, i32) local_unnamed_addr #0 !dbg !2452 {
  %3 = icmp sgt i32 %1, 0, !dbg !2470
  br i1 %3, label %4, label %14, !dbg !2471

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !2472
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8, !dbg !2472, !tbaa !401
  %7 = add nsw i32 %1, -1, !dbg !2473
  %8 = sext i32 %7 to i64, !dbg !2474
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 %8, !dbg !2474
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2476
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !2476, !tbaa !373
  %12 = icmp ult %struct.lua_TValue* %9, %11, !dbg !2477
  %13 = select i1 %12, %struct.lua_TValue* %9, %struct.lua_TValue* @luaO_nilobject_, !dbg !2478
  br label %57

; <label>:14:                                     ; preds = %2
  %15 = icmp sgt i32 %1, -10000, !dbg !2479
  br i1 %15, label %16, label %21, !dbg !2480

; <label>:16:                                     ; preds = %14
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2481
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %17, align 8, !dbg !2481, !tbaa !373
  %19 = sext i32 %1 to i64, !dbg !2482
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 %19, !dbg !2482
  br label %57, !dbg !2483

; <label>:21:                                     ; preds = %14
  switch i32 %1, label %41 [
    i32 -10000, label %22
    i32 -10001, label %26
    i32 -10002, label %39
  ], !dbg !2484

; <label>:22:                                     ; preds = %21
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !2485
  %24 = load %struct.global_State*, %struct.global_State** %23, align 8, !dbg !2485, !tbaa !482
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %24, i64 0, i32 20, !dbg !2485
  br label %57, !dbg !2486

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2487
  %28 = load %struct.CallInfo*, %struct.CallInfo** %27, align 8, !dbg !2487, !tbaa !418
  %29 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %28, i64 0, i32 1, !dbg !2487
  %30 = bitcast %struct.lua_TValue** %29 to %struct.CClosure***, !dbg !2487
  %31 = load %struct.CClosure**, %struct.CClosure*** %30, align 8, !dbg !2487, !tbaa !600
  %32 = load %struct.CClosure*, %struct.CClosure** %31, align 8, !dbg !2487, !tbaa !510
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !2489
  %34 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %32, i64 0, i32 6, !dbg !2489
  %35 = bitcast %struct.Table** %34 to i64*, !dbg !2489
  %36 = load i64, i64* %35, align 8, !dbg !2489, !tbaa !510
  %37 = bitcast %struct.lua_TValue* %33 to i64*, !dbg !2489
  store i64 %36, i64* %37, align 8, !dbg !2489, !tbaa !510
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !2489
  store i32 5, i32* %38, align 8, !dbg !2489, !tbaa !382
  br label %57

; <label>:39:                                     ; preds = %21
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !2490
  br label %57, !dbg !2491

; <label>:41:                                     ; preds = %21
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2492
  %43 = load %struct.CallInfo*, %struct.CallInfo** %42, align 8, !dbg !2492, !tbaa !418
  %44 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %43, i64 0, i32 1, !dbg !2492
  %45 = bitcast %struct.lua_TValue** %44 to %struct.CClosure***, !dbg !2492
  %46 = load %struct.CClosure**, %struct.CClosure*** %45, align 8, !dbg !2492, !tbaa !600
  %47 = load %struct.CClosure*, %struct.CClosure** %46, align 8, !dbg !2492, !tbaa !510
  %48 = sub nsw i32 -10002, %1, !dbg !2494
  %49 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 4, !dbg !2495
  %50 = load i8, i8* %49, align 1, !dbg !2495, !tbaa !510
  %51 = zext i8 %50 to i32, !dbg !2496
  %52 = icmp sgt i32 %48, %51, !dbg !2497
  br i1 %52, label %57, label %53, !dbg !2498

; <label>:53:                                     ; preds = %41
  %54 = add nsw i32 %48, -1, !dbg !2499
  %55 = sext i32 %54 to i64, !dbg !2500
  %56 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 8, i64 %55, !dbg !2500
  br label %57, !dbg !2498

; <label>:57:                                     ; preds = %4, %16, %22, %26, %39, %41, %53
  %58 = phi %struct.lua_TValue* [ %13, %4 ], [ %20, %16 ], [ %40, %39 ], [ %33, %26 ], [ %25, %22 ], [ %56, %53 ], [ @luaO_nilobject_, %41 ], !dbg !2501
  %59 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i64 0, i32 1, !dbg !2503
  %60 = load i32, i32* %59, align 8, !dbg !2503, !tbaa !382
  switch i32 %60, label %90 [
    i32 6, label %61
    i32 7, label %70
    i32 8, label %79
  ], !dbg !2504

; <label>:61:                                     ; preds = %57
  %62 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2505
  %63 = load %struct.lua_TValue*, %struct.lua_TValue** %62, align 8, !dbg !2505, !tbaa !373
  %64 = bitcast %struct.lua_TValue* %58 to %struct.CClosure**, !dbg !2505
  %65 = load %struct.CClosure*, %struct.CClosure** %64, align 8, !dbg !2505, !tbaa !510
  %66 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %65, i64 0, i32 6, !dbg !2505
  %67 = bitcast %struct.Table** %66 to i64*, !dbg !2505
  %68 = load i64, i64* %67, align 8, !dbg !2505, !tbaa !510
  %69 = bitcast %struct.lua_TValue* %63 to i64*, !dbg !2505
  store i64 %68, i64* %69, align 8, !dbg !2505, !tbaa !510
  br label %93, !dbg !2506

; <label>:70:                                     ; preds = %57
  %71 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2507
  %72 = load %struct.lua_TValue*, %struct.lua_TValue** %71, align 8, !dbg !2507, !tbaa !373
  %73 = bitcast %struct.lua_TValue* %58 to %struct.anon.2**, !dbg !2507
  %74 = load %struct.anon.2*, %struct.anon.2** %73, align 8, !dbg !2507, !tbaa !510
  %75 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %74, i64 0, i32 4, !dbg !2507
  %76 = bitcast %struct.Table** %75 to i64*, !dbg !2507
  %77 = load i64, i64* %76, align 8, !dbg !2507, !tbaa !510
  %78 = bitcast %struct.lua_TValue* %72 to i64*, !dbg !2507
  store i64 %77, i64* %78, align 8, !dbg !2507, !tbaa !510
  br label %93, !dbg !2508

; <label>:79:                                     ; preds = %57
  %80 = bitcast %struct.lua_TValue* %58 to %struct.lua_State**, !dbg !2509
  %81 = load %struct.lua_State*, %struct.lua_State** %80, align 8, !dbg !2509, !tbaa !510
  %82 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %81, i64 0, i32 22, !dbg !2509
  %83 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2509
  %84 = load %struct.lua_TValue*, %struct.lua_TValue** %83, align 8, !dbg !2509, !tbaa !373
  %85 = bitcast %struct.lua_TValue* %82 to i64*, !dbg !2509
  %86 = bitcast %struct.lua_TValue* %84 to i64*, !dbg !2509
  %87 = load i64, i64* %85, align 8, !dbg !2509
  store i64 %87, i64* %86, align 8, !dbg !2509
  %88 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %81, i64 0, i32 22, i32 1, !dbg !2509
  %89 = load i32, i32* %88, align 8, !dbg !2509, !tbaa !382
  br label %93, !dbg !2510

; <label>:90:                                     ; preds = %57
  %91 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2511
  %92 = load %struct.lua_TValue*, %struct.lua_TValue** %91, align 8, !dbg !2511, !tbaa !373
  br label %93, !dbg !2512

; <label>:93:                                     ; preds = %90, %79, %70, %61
  %94 = phi %struct.lua_TValue* [ %92, %90 ], [ %84, %79 ], [ %72, %70 ], [ %63, %61 ]
  %95 = phi i32 [ 0, %90 ], [ %89, %79 ], [ 5, %70 ], [ 5, %61 ]
  %96 = phi %struct.lua_TValue** [ %91, %90 ], [ %83, %79 ], [ %71, %70 ], [ %62, %61 ], !dbg !2513
  %97 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %94, i64 0, i32 1, !dbg !2515
  store i32 %95, i32* %97, align 8, !dbg !2515, !tbaa !382
  %98 = load %struct.lua_TValue*, %struct.lua_TValue** %96, align 8, !dbg !2513, !tbaa !373
  %99 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %98, i64 1, !dbg !2513
  store %struct.lua_TValue* %99, %struct.lua_TValue** %96, align 8, !dbg !2513, !tbaa !373
  ret void, !dbg !2516
}

; Function Attrs: noredzone nounwind
define dso_local void @lua_settable(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !2517 {
  %3 = icmp sgt i32 %1, 0, !dbg !2527
  br i1 %3, label %4, label %14, !dbg !2528

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !2529
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8, !dbg !2529, !tbaa !401
  %7 = add nsw i32 %1, -1, !dbg !2530
  %8 = sext i32 %7 to i64, !dbg !2531
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 %8, !dbg !2531
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2533
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !2533, !tbaa !373
  %12 = icmp ult %struct.lua_TValue* %9, %11, !dbg !2534
  %13 = select i1 %12, %struct.lua_TValue* %9, %struct.lua_TValue* @luaO_nilobject_, !dbg !2535
  br label %57

; <label>:14:                                     ; preds = %2
  %15 = icmp sgt i32 %1, -10000, !dbg !2536
  br i1 %15, label %16, label %21, !dbg !2537

; <label>:16:                                     ; preds = %14
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2538
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %17, align 8, !dbg !2538, !tbaa !373
  %19 = sext i32 %1 to i64, !dbg !2539
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 %19, !dbg !2539
  br label %57, !dbg !2540

; <label>:21:                                     ; preds = %14
  switch i32 %1, label %41 [
    i32 -10000, label %22
    i32 -10001, label %26
    i32 -10002, label %39
  ], !dbg !2541

; <label>:22:                                     ; preds = %21
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !2542
  %24 = load %struct.global_State*, %struct.global_State** %23, align 8, !dbg !2542, !tbaa !482
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %24, i64 0, i32 20, !dbg !2542
  br label %57, !dbg !2543

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2544
  %28 = load %struct.CallInfo*, %struct.CallInfo** %27, align 8, !dbg !2544, !tbaa !418
  %29 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %28, i64 0, i32 1, !dbg !2544
  %30 = bitcast %struct.lua_TValue** %29 to %struct.CClosure***, !dbg !2544
  %31 = load %struct.CClosure**, %struct.CClosure*** %30, align 8, !dbg !2544, !tbaa !600
  %32 = load %struct.CClosure*, %struct.CClosure** %31, align 8, !dbg !2544, !tbaa !510
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !2546
  %34 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %32, i64 0, i32 6, !dbg !2546
  %35 = bitcast %struct.Table** %34 to i64*, !dbg !2546
  %36 = load i64, i64* %35, align 8, !dbg !2546, !tbaa !510
  %37 = bitcast %struct.lua_TValue* %33 to i64*, !dbg !2546
  store i64 %36, i64* %37, align 8, !dbg !2546, !tbaa !510
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !2546
  store i32 5, i32* %38, align 8, !dbg !2546, !tbaa !382
  br label %57

; <label>:39:                                     ; preds = %21
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !2547
  br label %57, !dbg !2548

; <label>:41:                                     ; preds = %21
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2549
  %43 = load %struct.CallInfo*, %struct.CallInfo** %42, align 8, !dbg !2549, !tbaa !418
  %44 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %43, i64 0, i32 1, !dbg !2549
  %45 = bitcast %struct.lua_TValue** %44 to %struct.CClosure***, !dbg !2549
  %46 = load %struct.CClosure**, %struct.CClosure*** %45, align 8, !dbg !2549, !tbaa !600
  %47 = load %struct.CClosure*, %struct.CClosure** %46, align 8, !dbg !2549, !tbaa !510
  %48 = sub nsw i32 -10002, %1, !dbg !2551
  %49 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 4, !dbg !2552
  %50 = load i8, i8* %49, align 1, !dbg !2552, !tbaa !510
  %51 = zext i8 %50 to i32, !dbg !2553
  %52 = icmp sgt i32 %48, %51, !dbg !2554
  br i1 %52, label %57, label %53, !dbg !2555

; <label>:53:                                     ; preds = %41
  %54 = add nsw i32 %48, -1, !dbg !2556
  %55 = sext i32 %54 to i64, !dbg !2557
  %56 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 8, i64 %55, !dbg !2557
  br label %57, !dbg !2555

; <label>:57:                                     ; preds = %4, %16, %22, %26, %39, %41, %53
  %58 = phi %struct.lua_TValue* [ %13, %4 ], [ %20, %16 ], [ %40, %39 ], [ %33, %26 ], [ %25, %22 ], [ %56, %53 ], [ @luaO_nilobject_, %41 ], !dbg !2558
  %59 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2560
  %60 = load %struct.lua_TValue*, %struct.lua_TValue** %59, align 8, !dbg !2560, !tbaa !373
  %61 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %60, i64 -2, !dbg !2561
  %62 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %60, i64 -1, !dbg !2562
  tail call void @luaV_settable(%struct.lua_State* %0, %struct.lua_TValue* %58, %struct.lua_TValue* nonnull %61, %struct.lua_TValue* nonnull %62) #7, !dbg !2563
  %63 = load %struct.lua_TValue*, %struct.lua_TValue** %59, align 8, !dbg !2564, !tbaa !373
  %64 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %63, i64 -2, !dbg !2564
  store %struct.lua_TValue* %64, %struct.lua_TValue** %59, align 8, !dbg !2564, !tbaa !373
  ret void, !dbg !2565
}

; Function Attrs: noredzone
declare hidden void @luaV_settable(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @lua_setfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #0 !dbg !2566 {
  %4 = alloca %struct.lua_TValue, align 8
  %5 = bitcast %struct.lua_TValue* %4 to i8*, !dbg !2578
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #6, !dbg !2578
  %6 = icmp sgt i32 %1, 0, !dbg !2582
  br i1 %6, label %7, label %17, !dbg !2583

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !2584
  %9 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8, !dbg !2584, !tbaa !401
  %10 = add nsw i32 %1, -1, !dbg !2585
  %11 = sext i32 %10 to i64, !dbg !2586
  %12 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %9, i64 %11, !dbg !2586
  %13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2588
  %14 = load %struct.lua_TValue*, %struct.lua_TValue** %13, align 8, !dbg !2588, !tbaa !373
  %15 = icmp ult %struct.lua_TValue* %12, %14, !dbg !2589
  %16 = select i1 %15, %struct.lua_TValue* %12, %struct.lua_TValue* @luaO_nilobject_, !dbg !2590
  br label %60

; <label>:17:                                     ; preds = %3
  %18 = icmp sgt i32 %1, -10000, !dbg !2591
  br i1 %18, label %19, label %24, !dbg !2592

; <label>:19:                                     ; preds = %17
  %20 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2593
  %21 = load %struct.lua_TValue*, %struct.lua_TValue** %20, align 8, !dbg !2593, !tbaa !373
  %22 = sext i32 %1 to i64, !dbg !2594
  %23 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %21, i64 %22, !dbg !2594
  br label %60, !dbg !2595

; <label>:24:                                     ; preds = %17
  switch i32 %1, label %44 [
    i32 -10000, label %25
    i32 -10001, label %29
    i32 -10002, label %42
  ], !dbg !2596

; <label>:25:                                     ; preds = %24
  %26 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !2597
  %27 = load %struct.global_State*, %struct.global_State** %26, align 8, !dbg !2597, !tbaa !482
  %28 = getelementptr inbounds %struct.global_State, %struct.global_State* %27, i64 0, i32 20, !dbg !2597
  br label %60, !dbg !2598

; <label>:29:                                     ; preds = %24
  %30 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2599
  %31 = load %struct.CallInfo*, %struct.CallInfo** %30, align 8, !dbg !2599, !tbaa !418
  %32 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %31, i64 0, i32 1, !dbg !2599
  %33 = bitcast %struct.lua_TValue** %32 to %struct.CClosure***, !dbg !2599
  %34 = load %struct.CClosure**, %struct.CClosure*** %33, align 8, !dbg !2599, !tbaa !600
  %35 = load %struct.CClosure*, %struct.CClosure** %34, align 8, !dbg !2599, !tbaa !510
  %36 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !2601
  %37 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %35, i64 0, i32 6, !dbg !2601
  %38 = bitcast %struct.Table** %37 to i64*, !dbg !2601
  %39 = load i64, i64* %38, align 8, !dbg !2601, !tbaa !510
  %40 = bitcast %struct.lua_TValue* %36 to i64*, !dbg !2601
  store i64 %39, i64* %40, align 8, !dbg !2601, !tbaa !510
  %41 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !2601
  store i32 5, i32* %41, align 8, !dbg !2601, !tbaa !382
  br label %60

; <label>:42:                                     ; preds = %24
  %43 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !2602
  br label %60, !dbg !2603

; <label>:44:                                     ; preds = %24
  %45 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2604
  %46 = load %struct.CallInfo*, %struct.CallInfo** %45, align 8, !dbg !2604, !tbaa !418
  %47 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %46, i64 0, i32 1, !dbg !2604
  %48 = bitcast %struct.lua_TValue** %47 to %struct.CClosure***, !dbg !2604
  %49 = load %struct.CClosure**, %struct.CClosure*** %48, align 8, !dbg !2604, !tbaa !600
  %50 = load %struct.CClosure*, %struct.CClosure** %49, align 8, !dbg !2604, !tbaa !510
  %51 = sub nsw i32 -10002, %1, !dbg !2606
  %52 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %50, i64 0, i32 4, !dbg !2607
  %53 = load i8, i8* %52, align 1, !dbg !2607, !tbaa !510
  %54 = zext i8 %53 to i32, !dbg !2608
  %55 = icmp sgt i32 %51, %54, !dbg !2609
  br i1 %55, label %60, label %56, !dbg !2610

; <label>:56:                                     ; preds = %44
  %57 = add nsw i32 %51, -1, !dbg !2611
  %58 = sext i32 %57 to i64, !dbg !2612
  %59 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %50, i64 0, i32 8, i64 %58, !dbg !2612
  br label %60, !dbg !2610

; <label>:60:                                     ; preds = %7, %19, %25, %29, %42, %44, %56
  %61 = phi %struct.lua_TValue* [ %16, %7 ], [ %23, %19 ], [ %43, %42 ], [ %36, %29 ], [ %28, %25 ], [ %59, %56 ], [ @luaO_nilobject_, %44 ], !dbg !2613
  %62 = tail call i64 @strlen(i8* %2) #7, !dbg !2615
  %63 = tail call %union.TString* @luaS_newlstr(%struct.lua_State* %0, i8* %2, i64 %62) #7, !dbg !2615
  %64 = bitcast %struct.lua_TValue* %4 to %union.TString**, !dbg !2615
  store %union.TString* %63, %union.TString** %64, align 8, !dbg !2615, !tbaa !510
  %65 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %4, i64 0, i32 1, !dbg !2615
  store i32 4, i32* %65, align 8, !dbg !2615, !tbaa !382
  %66 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2616
  %67 = load %struct.lua_TValue*, %struct.lua_TValue** %66, align 8, !dbg !2616, !tbaa !373
  %68 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %67, i64 -1, !dbg !2617
  call void @luaV_settable(%struct.lua_State* %0, %struct.lua_TValue* %61, %struct.lua_TValue* nonnull %4, %struct.lua_TValue* nonnull %68) #7, !dbg !2619
  %69 = load %struct.lua_TValue*, %struct.lua_TValue** %66, align 8, !dbg !2620, !tbaa !373
  %70 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %69, i64 -1, !dbg !2620
  store %struct.lua_TValue* %70, %struct.lua_TValue** %66, align 8, !dbg !2620, !tbaa !373
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #6, !dbg !2621
  ret void, !dbg !2621
}

; Function Attrs: noredzone nounwind
define dso_local void @lua_rawset(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !2622 {
  %3 = icmp sgt i32 %1, 0, !dbg !2635
  br i1 %3, label %4, label %14, !dbg !2636

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !2637
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8, !dbg !2637, !tbaa !401
  %7 = add nsw i32 %1, -1, !dbg !2638
  %8 = sext i32 %7 to i64, !dbg !2639
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 %8, !dbg !2639
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2641
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !2641, !tbaa !373
  %12 = icmp ult %struct.lua_TValue* %9, %11, !dbg !2642
  %13 = select i1 %12, %struct.lua_TValue* %9, %struct.lua_TValue* @luaO_nilobject_, !dbg !2643
  br label %57

; <label>:14:                                     ; preds = %2
  %15 = icmp sgt i32 %1, -10000, !dbg !2644
  br i1 %15, label %16, label %21, !dbg !2645

; <label>:16:                                     ; preds = %14
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2646
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %17, align 8, !dbg !2646, !tbaa !373
  %19 = sext i32 %1 to i64, !dbg !2647
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 %19, !dbg !2647
  br label %57, !dbg !2648

; <label>:21:                                     ; preds = %14
  switch i32 %1, label %41 [
    i32 -10000, label %22
    i32 -10001, label %26
    i32 -10002, label %39
  ], !dbg !2649

; <label>:22:                                     ; preds = %21
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !2650
  %24 = load %struct.global_State*, %struct.global_State** %23, align 8, !dbg !2650, !tbaa !482
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %24, i64 0, i32 20, !dbg !2650
  br label %57, !dbg !2651

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2652
  %28 = load %struct.CallInfo*, %struct.CallInfo** %27, align 8, !dbg !2652, !tbaa !418
  %29 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %28, i64 0, i32 1, !dbg !2652
  %30 = bitcast %struct.lua_TValue** %29 to %struct.CClosure***, !dbg !2652
  %31 = load %struct.CClosure**, %struct.CClosure*** %30, align 8, !dbg !2652, !tbaa !600
  %32 = load %struct.CClosure*, %struct.CClosure** %31, align 8, !dbg !2652, !tbaa !510
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !2654
  %34 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %32, i64 0, i32 6, !dbg !2654
  %35 = bitcast %struct.Table** %34 to i64*, !dbg !2654
  %36 = load i64, i64* %35, align 8, !dbg !2654, !tbaa !510
  %37 = bitcast %struct.lua_TValue* %33 to i64*, !dbg !2654
  store i64 %36, i64* %37, align 8, !dbg !2654, !tbaa !510
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !2654
  store i32 5, i32* %38, align 8, !dbg !2654, !tbaa !382
  br label %57

; <label>:39:                                     ; preds = %21
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !2655
  br label %57, !dbg !2656

; <label>:41:                                     ; preds = %21
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2657
  %43 = load %struct.CallInfo*, %struct.CallInfo** %42, align 8, !dbg !2657, !tbaa !418
  %44 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %43, i64 0, i32 1, !dbg !2657
  %45 = bitcast %struct.lua_TValue** %44 to %struct.CClosure***, !dbg !2657
  %46 = load %struct.CClosure**, %struct.CClosure*** %45, align 8, !dbg !2657, !tbaa !600
  %47 = load %struct.CClosure*, %struct.CClosure** %46, align 8, !dbg !2657, !tbaa !510
  %48 = sub nsw i32 -10002, %1, !dbg !2659
  %49 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 4, !dbg !2660
  %50 = load i8, i8* %49, align 1, !dbg !2660, !tbaa !510
  %51 = zext i8 %50 to i32, !dbg !2661
  %52 = icmp sgt i32 %48, %51, !dbg !2662
  br i1 %52, label %57, label %53, !dbg !2663

; <label>:53:                                     ; preds = %41
  %54 = add nsw i32 %48, -1, !dbg !2664
  %55 = sext i32 %54 to i64, !dbg !2665
  %56 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 8, i64 %55, !dbg !2665
  br label %57, !dbg !2663

; <label>:57:                                     ; preds = %4, %16, %22, %26, %39, %41, %53
  %58 = phi %struct.lua_TValue* [ %13, %4 ], [ %20, %16 ], [ %40, %39 ], [ %33, %26 ], [ %25, %22 ], [ %56, %53 ], [ @luaO_nilobject_, %41 ], !dbg !2666
  %59 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2668
  %60 = load %struct.lua_TValue*, %struct.lua_TValue** %59, align 8, !dbg !2668, !tbaa !373
  %61 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %60, i64 -1, !dbg !2668
  %62 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i64 0, i32 0, i32 0, !dbg !2668
  %63 = bitcast %struct.lua_TValue* %58 to %struct.Table**, !dbg !2668
  %64 = load %struct.Table*, %struct.Table** %63, align 8, !dbg !2668, !tbaa !510
  %65 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %60, i64 -2, !dbg !2668
  %66 = tail call %struct.lua_TValue* @luaH_set(%struct.lua_State* %0, %struct.Table* %64, %struct.lua_TValue* nonnull %65) #7, !dbg !2668
  %67 = bitcast %struct.lua_TValue* %61 to i64*, !dbg !2668
  %68 = bitcast %struct.lua_TValue* %66 to i64*, !dbg !2668
  %69 = load i64, i64* %67, align 8, !dbg !2668
  store i64 %69, i64* %68, align 8, !dbg !2668
  %70 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %60, i64 -1, i32 1, !dbg !2668
  %71 = load i32, i32* %70, align 8, !dbg !2668, !tbaa !382
  %72 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %66, i64 0, i32 1, !dbg !2668
  store i32 %71, i32* %72, align 8, !dbg !2668, !tbaa !382
  %73 = load %struct.lua_TValue*, %struct.lua_TValue** %59, align 8, !dbg !2669, !tbaa !373
  %74 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %73, i64 -1, i32 1, !dbg !2669
  %75 = load i32, i32* %74, align 8, !dbg !2669, !tbaa !382
  %76 = icmp sgt i32 %75, 3, !dbg !2669
  br i1 %76, label %77, label %94, !dbg !2669

; <label>:77:                                     ; preds = %57
  %78 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %73, i64 -1, i32 0, i32 0, !dbg !2669
  %79 = bitcast %union.GCObject** %78 to %struct.GCheader**, !dbg !2669
  %80 = load %struct.GCheader*, %struct.GCheader** %79, align 8, !dbg !2669, !tbaa !510
  %81 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %80, i64 0, i32 2, !dbg !2669
  %82 = load i8, i8* %81, align 1, !dbg !2669, !tbaa !510
  %83 = and i8 %82, 3, !dbg !2669
  %84 = icmp eq i8 %83, 0, !dbg !2669
  br i1 %84, label %94, label %85, !dbg !2669

; <label>:85:                                     ; preds = %77
  %86 = load %union.GCObject*, %union.GCObject** %62, align 8, !dbg !2669, !tbaa !510
  %87 = getelementptr inbounds %union.GCObject, %union.GCObject* %86, i64 0, i32 0, i32 2, !dbg !2669
  %88 = load i8, i8* %87, align 1, !dbg !2669, !tbaa !510
  %89 = and i8 %88, 4, !dbg !2669
  %90 = icmp eq i8 %89, 0, !dbg !2669
  br i1 %90, label %94, label %91, !dbg !2672

; <label>:91:                                     ; preds = %85
  %92 = bitcast %union.GCObject* %86 to %struct.Table*, !dbg !2669
  tail call void @luaC_barrierback(%struct.lua_State* nonnull %0, %struct.Table* %92) #7, !dbg !2669
  %93 = load %struct.lua_TValue*, %struct.lua_TValue** %59, align 8, !dbg !2673, !tbaa !373
  br label %94, !dbg !2669

; <label>:94:                                     ; preds = %85, %77, %91, %57
  %95 = phi %struct.lua_TValue* [ %73, %85 ], [ %73, %77 ], [ %93, %91 ], [ %73, %57 ], !dbg !2673
  %96 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %95, i64 -2, !dbg !2673
  store %struct.lua_TValue* %96, %struct.lua_TValue** %59, align 8, !dbg !2673, !tbaa !373
  ret void, !dbg !2674
}

; Function Attrs: noredzone
declare hidden %struct.lua_TValue* @luaH_set(%struct.lua_State*, %struct.Table*, %struct.lua_TValue*) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden void @luaC_barrierback(%struct.lua_State*, %struct.Table*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @lua_rawseti(%struct.lua_State*, i32, i32) local_unnamed_addr #0 !dbg !2675 {
  %4 = icmp sgt i32 %1, 0, !dbg !2690
  br i1 %4, label %5, label %15, !dbg !2691

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !2692
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8, !dbg !2692, !tbaa !401
  %8 = add nsw i32 %1, -1, !dbg !2693
  %9 = sext i32 %8 to i64, !dbg !2694
  %10 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %7, i64 %9, !dbg !2694
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2696
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %11, align 8, !dbg !2696, !tbaa !373
  %13 = icmp ult %struct.lua_TValue* %10, %12, !dbg !2697
  %14 = select i1 %13, %struct.lua_TValue* %10, %struct.lua_TValue* @luaO_nilobject_, !dbg !2698
  br label %58

; <label>:15:                                     ; preds = %3
  %16 = icmp sgt i32 %1, -10000, !dbg !2699
  br i1 %16, label %17, label %22, !dbg !2700

; <label>:17:                                     ; preds = %15
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2701
  %19 = load %struct.lua_TValue*, %struct.lua_TValue** %18, align 8, !dbg !2701, !tbaa !373
  %20 = sext i32 %1 to i64, !dbg !2702
  %21 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %19, i64 %20, !dbg !2702
  br label %58, !dbg !2703

; <label>:22:                                     ; preds = %15
  switch i32 %1, label %42 [
    i32 -10000, label %23
    i32 -10001, label %27
    i32 -10002, label %40
  ], !dbg !2704

; <label>:23:                                     ; preds = %22
  %24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !2705
  %25 = load %struct.global_State*, %struct.global_State** %24, align 8, !dbg !2705, !tbaa !482
  %26 = getelementptr inbounds %struct.global_State, %struct.global_State* %25, i64 0, i32 20, !dbg !2705
  br label %58, !dbg !2706

; <label>:27:                                     ; preds = %22
  %28 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2707
  %29 = load %struct.CallInfo*, %struct.CallInfo** %28, align 8, !dbg !2707, !tbaa !418
  %30 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %29, i64 0, i32 1, !dbg !2707
  %31 = bitcast %struct.lua_TValue** %30 to %struct.CClosure***, !dbg !2707
  %32 = load %struct.CClosure**, %struct.CClosure*** %31, align 8, !dbg !2707, !tbaa !600
  %33 = load %struct.CClosure*, %struct.CClosure** %32, align 8, !dbg !2707, !tbaa !510
  %34 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !2709
  %35 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %33, i64 0, i32 6, !dbg !2709
  %36 = bitcast %struct.Table** %35 to i64*, !dbg !2709
  %37 = load i64, i64* %36, align 8, !dbg !2709, !tbaa !510
  %38 = bitcast %struct.lua_TValue* %34 to i64*, !dbg !2709
  store i64 %37, i64* %38, align 8, !dbg !2709, !tbaa !510
  %39 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !2709
  store i32 5, i32* %39, align 8, !dbg !2709, !tbaa !382
  br label %58

; <label>:40:                                     ; preds = %22
  %41 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !2710
  br label %58, !dbg !2711

; <label>:42:                                     ; preds = %22
  %43 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2712
  %44 = load %struct.CallInfo*, %struct.CallInfo** %43, align 8, !dbg !2712, !tbaa !418
  %45 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %44, i64 0, i32 1, !dbg !2712
  %46 = bitcast %struct.lua_TValue** %45 to %struct.CClosure***, !dbg !2712
  %47 = load %struct.CClosure**, %struct.CClosure*** %46, align 8, !dbg !2712, !tbaa !600
  %48 = load %struct.CClosure*, %struct.CClosure** %47, align 8, !dbg !2712, !tbaa !510
  %49 = sub nsw i32 -10002, %1, !dbg !2714
  %50 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %48, i64 0, i32 4, !dbg !2715
  %51 = load i8, i8* %50, align 1, !dbg !2715, !tbaa !510
  %52 = zext i8 %51 to i32, !dbg !2716
  %53 = icmp sgt i32 %49, %52, !dbg !2717
  br i1 %53, label %58, label %54, !dbg !2718

; <label>:54:                                     ; preds = %42
  %55 = add nsw i32 %49, -1, !dbg !2719
  %56 = sext i32 %55 to i64, !dbg !2720
  %57 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %48, i64 0, i32 8, i64 %56, !dbg !2720
  br label %58, !dbg !2718

; <label>:58:                                     ; preds = %5, %17, %23, %27, %40, %42, %54
  %59 = phi %struct.lua_TValue* [ %14, %5 ], [ %21, %17 ], [ %41, %40 ], [ %34, %27 ], [ %26, %23 ], [ %57, %54 ], [ @luaO_nilobject_, %42 ], !dbg !2721
  %60 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2723
  %61 = load %struct.lua_TValue*, %struct.lua_TValue** %60, align 8, !dbg !2723, !tbaa !373
  %62 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %61, i64 -1, !dbg !2723
  %63 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %59, i64 0, i32 0, i32 0, !dbg !2723
  %64 = bitcast %struct.lua_TValue* %59 to %struct.Table**, !dbg !2723
  %65 = load %struct.Table*, %struct.Table** %64, align 8, !dbg !2723, !tbaa !510
  %66 = tail call %struct.lua_TValue* @luaH_setnum(%struct.lua_State* %0, %struct.Table* %65, i32 %2) #7, !dbg !2723
  %67 = bitcast %struct.lua_TValue* %62 to i64*, !dbg !2723
  %68 = bitcast %struct.lua_TValue* %66 to i64*, !dbg !2723
  %69 = load i64, i64* %67, align 8, !dbg !2723
  store i64 %69, i64* %68, align 8, !dbg !2723
  %70 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %61, i64 -1, i32 1, !dbg !2723
  %71 = load i32, i32* %70, align 8, !dbg !2723, !tbaa !382
  %72 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %66, i64 0, i32 1, !dbg !2723
  store i32 %71, i32* %72, align 8, !dbg !2723, !tbaa !382
  %73 = load %struct.lua_TValue*, %struct.lua_TValue** %60, align 8, !dbg !2724, !tbaa !373
  %74 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %73, i64 -1, i32 1, !dbg !2724
  %75 = load i32, i32* %74, align 8, !dbg !2724, !tbaa !382
  %76 = icmp sgt i32 %75, 3, !dbg !2724
  br i1 %76, label %77, label %94, !dbg !2724

; <label>:77:                                     ; preds = %58
  %78 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %73, i64 -1, i32 0, i32 0, !dbg !2724
  %79 = bitcast %union.GCObject** %78 to %struct.GCheader**, !dbg !2724
  %80 = load %struct.GCheader*, %struct.GCheader** %79, align 8, !dbg !2724, !tbaa !510
  %81 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %80, i64 0, i32 2, !dbg !2724
  %82 = load i8, i8* %81, align 1, !dbg !2724, !tbaa !510
  %83 = and i8 %82, 3, !dbg !2724
  %84 = icmp eq i8 %83, 0, !dbg !2724
  br i1 %84, label %94, label %85, !dbg !2724

; <label>:85:                                     ; preds = %77
  %86 = load %union.GCObject*, %union.GCObject** %63, align 8, !dbg !2724, !tbaa !510
  %87 = getelementptr inbounds %union.GCObject, %union.GCObject* %86, i64 0, i32 0, i32 2, !dbg !2724
  %88 = load i8, i8* %87, align 1, !dbg !2724, !tbaa !510
  %89 = and i8 %88, 4, !dbg !2724
  %90 = icmp eq i8 %89, 0, !dbg !2724
  br i1 %90, label %94, label %91, !dbg !2727

; <label>:91:                                     ; preds = %85
  %92 = bitcast %union.GCObject* %86 to %struct.Table*, !dbg !2724
  tail call void @luaC_barrierback(%struct.lua_State* nonnull %0, %struct.Table* %92) #7, !dbg !2724
  %93 = load %struct.lua_TValue*, %struct.lua_TValue** %60, align 8, !dbg !2728, !tbaa !373
  br label %94, !dbg !2724

; <label>:94:                                     ; preds = %85, %77, %91, %58
  %95 = phi %struct.lua_TValue* [ %73, %85 ], [ %73, %77 ], [ %93, %91 ], [ %73, %58 ], !dbg !2728
  %96 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %95, i64 -1, !dbg !2728
  store %struct.lua_TValue* %96, %struct.lua_TValue** %60, align 8, !dbg !2728, !tbaa !373
  ret void, !dbg !2729
}

; Function Attrs: noredzone
declare hidden %struct.lua_TValue* @luaH_setnum(%struct.lua_State*, %struct.Table*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_setmetatable(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !2730 {
  %3 = icmp sgt i32 %1, 0, !dbg !2741
  br i1 %3, label %4, label %14, !dbg !2742

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !2743
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8, !dbg !2743, !tbaa !401
  %7 = add nsw i32 %1, -1, !dbg !2744
  %8 = sext i32 %7 to i64, !dbg !2745
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 %8, !dbg !2745
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2747
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !2747, !tbaa !373
  %12 = icmp ult %struct.lua_TValue* %9, %11, !dbg !2748
  %13 = select i1 %12, %struct.lua_TValue* %9, %struct.lua_TValue* @luaO_nilobject_, !dbg !2749
  br label %57

; <label>:14:                                     ; preds = %2
  %15 = icmp sgt i32 %1, -10000, !dbg !2750
  br i1 %15, label %16, label %21, !dbg !2751

; <label>:16:                                     ; preds = %14
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2752
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %17, align 8, !dbg !2752, !tbaa !373
  %19 = sext i32 %1 to i64, !dbg !2753
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 %19, !dbg !2753
  br label %57, !dbg !2754

; <label>:21:                                     ; preds = %14
  switch i32 %1, label %41 [
    i32 -10000, label %22
    i32 -10001, label %26
    i32 -10002, label %39
  ], !dbg !2755

; <label>:22:                                     ; preds = %21
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !2756
  %24 = load %struct.global_State*, %struct.global_State** %23, align 8, !dbg !2756, !tbaa !482
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %24, i64 0, i32 20, !dbg !2756
  br label %57, !dbg !2757

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2758
  %28 = load %struct.CallInfo*, %struct.CallInfo** %27, align 8, !dbg !2758, !tbaa !418
  %29 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %28, i64 0, i32 1, !dbg !2758
  %30 = bitcast %struct.lua_TValue** %29 to %struct.CClosure***, !dbg !2758
  %31 = load %struct.CClosure**, %struct.CClosure*** %30, align 8, !dbg !2758, !tbaa !600
  %32 = load %struct.CClosure*, %struct.CClosure** %31, align 8, !dbg !2758, !tbaa !510
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !2760
  %34 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %32, i64 0, i32 6, !dbg !2760
  %35 = bitcast %struct.Table** %34 to i64*, !dbg !2760
  %36 = load i64, i64* %35, align 8, !dbg !2760, !tbaa !510
  %37 = bitcast %struct.lua_TValue* %33 to i64*, !dbg !2760
  store i64 %36, i64* %37, align 8, !dbg !2760, !tbaa !510
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !2760
  store i32 5, i32* %38, align 8, !dbg !2760, !tbaa !382
  br label %57

; <label>:39:                                     ; preds = %21
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !2761
  br label %57, !dbg !2762

; <label>:41:                                     ; preds = %21
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2763
  %43 = load %struct.CallInfo*, %struct.CallInfo** %42, align 8, !dbg !2763, !tbaa !418
  %44 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %43, i64 0, i32 1, !dbg !2763
  %45 = bitcast %struct.lua_TValue** %44 to %struct.CClosure***, !dbg !2763
  %46 = load %struct.CClosure**, %struct.CClosure*** %45, align 8, !dbg !2763, !tbaa !600
  %47 = load %struct.CClosure*, %struct.CClosure** %46, align 8, !dbg !2763, !tbaa !510
  %48 = sub nsw i32 -10002, %1, !dbg !2765
  %49 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 4, !dbg !2766
  %50 = load i8, i8* %49, align 1, !dbg !2766, !tbaa !510
  %51 = zext i8 %50 to i32, !dbg !2767
  %52 = icmp sgt i32 %48, %51, !dbg !2768
  br i1 %52, label %57, label %53, !dbg !2769

; <label>:53:                                     ; preds = %41
  %54 = add nsw i32 %48, -1, !dbg !2770
  %55 = sext i32 %54 to i64, !dbg !2771
  %56 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 8, i64 %55, !dbg !2771
  br label %57, !dbg !2769

; <label>:57:                                     ; preds = %4, %16, %22, %26, %39, %41, %53
  %58 = phi %struct.lua_TValue* [ %13, %4 ], [ %20, %16 ], [ %40, %39 ], [ %33, %26 ], [ %25, %22 ], [ %56, %53 ], [ @luaO_nilobject_, %41 ], !dbg !2772
  %59 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2774
  %60 = load %struct.lua_TValue*, %struct.lua_TValue** %59, align 8, !dbg !2774, !tbaa !373
  %61 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %60, i64 -1, i32 1, !dbg !2774
  %62 = load i32, i32* %61, align 8, !dbg !2774, !tbaa !382
  %63 = icmp eq i32 %62, 0, !dbg !2774
  br i1 %63, label %69, label %64, !dbg !2776

; <label>:64:                                     ; preds = %57
  %65 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %60, i64 -1, i32 0, i32 0, !dbg !2777
  %66 = bitcast %union.GCObject** %65 to %struct.Table**, !dbg !2777
  %67 = load %struct.Table*, %struct.Table** %66, align 8, !dbg !2777, !tbaa !510
  %68 = bitcast %struct.Table* %67 to %union.GCObject*, !dbg !2779
  br label %69

; <label>:69:                                     ; preds = %57, %64
  %70 = phi %union.GCObject* [ %68, %64 ], [ null, %57 ], !dbg !2780
  %71 = phi %struct.Table* [ %67, %64 ], [ null, %57 ], !dbg !2780
  %72 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i64 0, i32 1, !dbg !2781
  %73 = load i32, i32* %72, align 8, !dbg !2781, !tbaa !382
  switch i32 %73, label %112 [
    i32 5, label %74
    i32 7, label %94
  ], !dbg !2782

; <label>:74:                                     ; preds = %69
  %75 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i64 0, i32 0, i32 0, !dbg !2783
  %76 = bitcast %struct.lua_TValue* %58 to %struct.Table**, !dbg !2783
  %77 = load %struct.Table*, %struct.Table** %76, align 8, !dbg !2783, !tbaa !510
  %78 = getelementptr inbounds %struct.Table, %struct.Table* %77, i64 0, i32 5, !dbg !2786
  %79 = bitcast %struct.Table** %78 to %union.GCObject**, !dbg !2787
  store %union.GCObject* %70, %union.GCObject** %79, align 8, !dbg !2787, !tbaa !510
  %80 = icmp eq %struct.Table* %71, null, !dbg !2788
  br i1 %80, label %117, label %81, !dbg !2790

; <label>:81:                                     ; preds = %74
  %82 = getelementptr inbounds %struct.Table, %struct.Table* %71, i64 0, i32 2, !dbg !2791
  %83 = load i8, i8* %82, align 1, !dbg !2791, !tbaa !510
  %84 = and i8 %83, 3, !dbg !2791
  %85 = icmp eq i8 %84, 0, !dbg !2791
  br i1 %85, label %117, label %86, !dbg !2791

; <label>:86:                                     ; preds = %81
  %87 = load %union.GCObject*, %union.GCObject** %75, align 8, !dbg !2791, !tbaa !510
  %88 = getelementptr inbounds %union.GCObject, %union.GCObject* %87, i64 0, i32 0, i32 2, !dbg !2791
  %89 = load i8, i8* %88, align 1, !dbg !2791, !tbaa !510
  %90 = and i8 %89, 4, !dbg !2791
  %91 = icmp eq i8 %90, 0, !dbg !2791
  br i1 %91, label %117, label %92, !dbg !2794

; <label>:92:                                     ; preds = %86
  %93 = bitcast %union.GCObject* %87 to %struct.Table*, !dbg !2791
  tail call void @luaC_barrierback(%struct.lua_State* nonnull %0, %struct.Table* %93) #7, !dbg !2791
  br label %117, !dbg !2791

; <label>:94:                                     ; preds = %69
  %95 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i64 0, i32 0, i32 0, !dbg !2795
  %96 = bitcast %struct.lua_TValue* %58 to %struct.anon.2**, !dbg !2795
  %97 = load %struct.anon.2*, %struct.anon.2** %96, align 8, !dbg !2795, !tbaa !510
  %98 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %97, i64 0, i32 3, !dbg !2797
  store %struct.Table* %71, %struct.Table** %98, align 8, !dbg !2798, !tbaa !510
  %99 = icmp eq %struct.Table* %71, null, !dbg !2799
  br i1 %99, label %117, label %100, !dbg !2801

; <label>:100:                                    ; preds = %94
  %101 = getelementptr inbounds %union.GCObject, %union.GCObject* %70, i64 0, i32 0, i32 2, !dbg !2802
  %102 = load i8, i8* %101, align 1, !dbg !2802, !tbaa !510
  %103 = and i8 %102, 3, !dbg !2802
  %104 = icmp eq i8 %103, 0, !dbg !2802
  br i1 %104, label %117, label %105, !dbg !2802

; <label>:105:                                    ; preds = %100
  %106 = load %union.GCObject*, %union.GCObject** %95, align 8, !dbg !2802, !tbaa !510
  %107 = getelementptr inbounds %union.GCObject, %union.GCObject* %106, i64 0, i32 0, i32 2, !dbg !2802
  %108 = load i8, i8* %107, align 1, !dbg !2802, !tbaa !510
  %109 = and i8 %108, 4, !dbg !2802
  %110 = icmp eq i8 %109, 0, !dbg !2802
  br i1 %110, label %117, label %111, !dbg !2805

; <label>:111:                                    ; preds = %105
  tail call void @luaC_barrierf(%struct.lua_State* nonnull %0, %union.GCObject* %106, %union.GCObject* nonnull %70) #7, !dbg !2802
  br label %117, !dbg !2802

; <label>:112:                                    ; preds = %69
  %113 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !2806
  %114 = load %struct.global_State*, %struct.global_State** %113, align 8, !dbg !2806, !tbaa !482
  %115 = sext i32 %73 to i64, !dbg !2806
  %116 = getelementptr inbounds %struct.global_State, %struct.global_State* %114, i64 0, i32 23, i64 %115, !dbg !2806
  store %struct.Table* %71, %struct.Table** %116, align 8, !dbg !2808, !tbaa !869
  br label %117, !dbg !2809

; <label>:117:                                    ; preds = %86, %81, %74, %105, %100, %94, %111, %92, %112
  %118 = load %struct.lua_TValue*, %struct.lua_TValue** %59, align 8, !dbg !2810, !tbaa !373
  %119 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %118, i64 -1, !dbg !2810
  store %struct.lua_TValue* %119, %struct.lua_TValue** %59, align 8, !dbg !2810, !tbaa !373
  ret i32 1, !dbg !2811
}

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_setfenv(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !2812 {
  %3 = icmp sgt i32 %1, 0, !dbg !2827
  br i1 %3, label %4, label %14, !dbg !2828

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !2829
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8, !dbg !2829, !tbaa !401
  %7 = add nsw i32 %1, -1, !dbg !2830
  %8 = sext i32 %7 to i64, !dbg !2831
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 %8, !dbg !2831
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2833
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !2833, !tbaa !373
  %12 = icmp ult %struct.lua_TValue* %9, %11, !dbg !2834
  %13 = select i1 %12, %struct.lua_TValue* %9, %struct.lua_TValue* @luaO_nilobject_, !dbg !2835
  br label %57

; <label>:14:                                     ; preds = %2
  %15 = icmp sgt i32 %1, -10000, !dbg !2836
  br i1 %15, label %16, label %21, !dbg !2837

; <label>:16:                                     ; preds = %14
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2838
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %17, align 8, !dbg !2838, !tbaa !373
  %19 = sext i32 %1 to i64, !dbg !2839
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 %19, !dbg !2839
  br label %57, !dbg !2840

; <label>:21:                                     ; preds = %14
  switch i32 %1, label %41 [
    i32 -10000, label %22
    i32 -10001, label %26
    i32 -10002, label %39
  ], !dbg !2841

; <label>:22:                                     ; preds = %21
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !2842
  %24 = load %struct.global_State*, %struct.global_State** %23, align 8, !dbg !2842, !tbaa !482
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %24, i64 0, i32 20, !dbg !2842
  br label %57, !dbg !2843

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2844
  %28 = load %struct.CallInfo*, %struct.CallInfo** %27, align 8, !dbg !2844, !tbaa !418
  %29 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %28, i64 0, i32 1, !dbg !2844
  %30 = bitcast %struct.lua_TValue** %29 to %struct.CClosure***, !dbg !2844
  %31 = load %struct.CClosure**, %struct.CClosure*** %30, align 8, !dbg !2844, !tbaa !600
  %32 = load %struct.CClosure*, %struct.CClosure** %31, align 8, !dbg !2844, !tbaa !510
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !2846
  %34 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %32, i64 0, i32 6, !dbg !2846
  %35 = bitcast %struct.Table** %34 to i64*, !dbg !2846
  %36 = load i64, i64* %35, align 8, !dbg !2846, !tbaa !510
  %37 = bitcast %struct.lua_TValue* %33 to i64*, !dbg !2846
  store i64 %36, i64* %37, align 8, !dbg !2846, !tbaa !510
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !2846
  store i32 5, i32* %38, align 8, !dbg !2846, !tbaa !382
  br label %57

; <label>:39:                                     ; preds = %21
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !2847
  br label %57, !dbg !2848

; <label>:41:                                     ; preds = %21
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2849
  %43 = load %struct.CallInfo*, %struct.CallInfo** %42, align 8, !dbg !2849, !tbaa !418
  %44 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %43, i64 0, i32 1, !dbg !2849
  %45 = bitcast %struct.lua_TValue** %44 to %struct.CClosure***, !dbg !2849
  %46 = load %struct.CClosure**, %struct.CClosure*** %45, align 8, !dbg !2849, !tbaa !600
  %47 = load %struct.CClosure*, %struct.CClosure** %46, align 8, !dbg !2849, !tbaa !510
  %48 = sub nsw i32 -10002, %1, !dbg !2851
  %49 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 4, !dbg !2852
  %50 = load i8, i8* %49, align 1, !dbg !2852, !tbaa !510
  %51 = zext i8 %50 to i32, !dbg !2853
  %52 = icmp sgt i32 %48, %51, !dbg !2854
  br i1 %52, label %57, label %53, !dbg !2855

; <label>:53:                                     ; preds = %41
  %54 = add nsw i32 %48, -1, !dbg !2856
  %55 = sext i32 %54 to i64, !dbg !2857
  %56 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 8, i64 %55, !dbg !2857
  br label %57, !dbg !2855

; <label>:57:                                     ; preds = %4, %16, %22, %26, %39, %41, %53
  %58 = phi %struct.lua_TValue* [ %13, %4 ], [ %20, %16 ], [ %40, %39 ], [ %33, %26 ], [ %25, %22 ], [ %56, %53 ], [ @luaO_nilobject_, %41 ], !dbg !2858
  %59 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i64 0, i32 1, !dbg !2860
  %60 = load i32, i32* %59, align 8, !dbg !2860, !tbaa !382
  switch i32 %60, label %61 [
    i32 6, label %63
    i32 7, label %73
    i32 8, label %83
  ], !dbg !2861

; <label>:61:                                     ; preds = %57
  %62 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2862
  br label %111, !dbg !2861

; <label>:63:                                     ; preds = %57
  %64 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2863
  %65 = load %struct.lua_TValue*, %struct.lua_TValue** %64, align 8, !dbg !2863, !tbaa !373
  %66 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %65, i64 -1, i32 0, i32 0, !dbg !2863
  %67 = bitcast %union.GCObject** %66 to i64*, !dbg !2863
  %68 = load i64, i64* %67, align 8, !dbg !2863, !tbaa !510
  %69 = bitcast %struct.lua_TValue* %58 to %struct.CClosure**, !dbg !2864
  %70 = load %struct.CClosure*, %struct.CClosure** %69, align 8, !dbg !2864, !tbaa !510
  %71 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %70, i64 0, i32 6, !dbg !2865
  %72 = bitcast %struct.Table** %71 to i64*, !dbg !2866
  store i64 %68, i64* %72, align 8, !dbg !2866, !tbaa !510
  br label %94, !dbg !2867

; <label>:73:                                     ; preds = %57
  %74 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2868
  %75 = load %struct.lua_TValue*, %struct.lua_TValue** %74, align 8, !dbg !2868, !tbaa !373
  %76 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %75, i64 -1, i32 0, i32 0, !dbg !2868
  %77 = bitcast %union.GCObject** %76 to i64*, !dbg !2868
  %78 = load i64, i64* %77, align 8, !dbg !2868, !tbaa !510
  %79 = bitcast %struct.lua_TValue* %58 to %struct.anon.2**, !dbg !2869
  %80 = load %struct.anon.2*, %struct.anon.2** %79, align 8, !dbg !2869, !tbaa !510
  %81 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %80, i64 0, i32 4, !dbg !2870
  %82 = bitcast %struct.Table** %81 to i64*, !dbg !2871
  store i64 %78, i64* %82, align 8, !dbg !2871, !tbaa !510
  br label %94, !dbg !2872

; <label>:83:                                     ; preds = %57
  %84 = bitcast %struct.lua_TValue* %58 to %struct.lua_State**, !dbg !2873
  %85 = load %struct.lua_State*, %struct.lua_State** %84, align 8, !dbg !2873, !tbaa !510
  %86 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %85, i64 0, i32 22, !dbg !2873
  %87 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2873
  %88 = load %struct.lua_TValue*, %struct.lua_TValue** %87, align 8, !dbg !2873, !tbaa !373
  %89 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %88, i64 -1, i32 0, i32 0, !dbg !2873
  %90 = bitcast %union.GCObject** %89 to i64*, !dbg !2873
  %91 = load i64, i64* %90, align 8, !dbg !2873, !tbaa !510
  %92 = bitcast %struct.lua_TValue* %86 to i64*, !dbg !2873
  store i64 %91, i64* %92, align 8, !dbg !2873, !tbaa !510
  %93 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %85, i64 0, i32 22, i32 1, !dbg !2873
  store i32 5, i32* %93, align 8, !dbg !2873, !tbaa !382
  br label %94, !dbg !2874

; <label>:94:                                     ; preds = %83, %73, %63
  %95 = phi %struct.lua_TValue** [ %87, %83 ], [ %74, %73 ], [ %64, %63 ], !dbg !2875
  %96 = load %struct.lua_TValue*, %struct.lua_TValue** %95, align 8, !dbg !2875, !tbaa !373
  %97 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %96, i64 -1, i32 0, i32 0, !dbg !2875
  %98 = load %union.GCObject*, %union.GCObject** %97, align 8, !dbg !2875, !tbaa !510
  %99 = getelementptr inbounds %union.GCObject, %union.GCObject* %98, i64 0, i32 0, i32 2, !dbg !2875
  %100 = load i8, i8* %99, align 1, !dbg !2875, !tbaa !510
  %101 = and i8 %100, 3, !dbg !2875
  %102 = icmp eq i8 %101, 0, !dbg !2875
  br i1 %102, label %111, label %103, !dbg !2875

; <label>:103:                                    ; preds = %94
  %104 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i64 0, i32 0, i32 0, !dbg !2875
  %105 = load %union.GCObject*, %union.GCObject** %104, align 8, !dbg !2875, !tbaa !510
  %106 = getelementptr inbounds %union.GCObject, %union.GCObject* %105, i64 0, i32 0, i32 2, !dbg !2875
  %107 = load i8, i8* %106, align 1, !dbg !2875, !tbaa !510
  %108 = and i8 %107, 4, !dbg !2875
  %109 = icmp eq i8 %108, 0, !dbg !2875
  br i1 %109, label %111, label %110, !dbg !2879

; <label>:110:                                    ; preds = %103
  tail call void @luaC_barrierf(%struct.lua_State* nonnull %0, %union.GCObject* %105, %union.GCObject* %98) #7, !dbg !2875
  br label %111, !dbg !2875

; <label>:111:                                    ; preds = %61, %103, %94, %110
  %112 = phi %struct.lua_TValue** [ %62, %61 ], [ %95, %103 ], [ %95, %94 ], [ %95, %110 ], !dbg !2862
  %113 = phi i32 [ 0, %61 ], [ 1, %103 ], [ 1, %94 ], [ 1, %110 ]
  %114 = load %struct.lua_TValue*, %struct.lua_TValue** %112, align 8, !dbg !2880, !tbaa !373
  %115 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %114, i64 -1, !dbg !2880
  store %struct.lua_TValue* %115, %struct.lua_TValue** %112, align 8, !dbg !2880, !tbaa !373
  ret i32 %113, !dbg !2881
}

; Function Attrs: noredzone nounwind
define dso_local void @lua_call(%struct.lua_State*, i32, i32) local_unnamed_addr #0 !dbg !2882 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2891
  %5 = load %struct.lua_TValue*, %struct.lua_TValue** %4, align 8, !dbg !2891, !tbaa !373
  %6 = add nsw i32 %1, 1, !dbg !2892
  %7 = sext i32 %6 to i64, !dbg !2893
  %8 = sub nsw i64 0, %7, !dbg !2893
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %5, i64 %8, !dbg !2893
  tail call void @luaD_call(%struct.lua_State* %0, %struct.lua_TValue* %9, i32 %2) #7, !dbg !2895
  %10 = icmp eq i32 %2, -1, !dbg !2896
  br i1 %10, label %11, label %19, !dbg !2896

; <label>:11:                                     ; preds = %3
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %4, align 8, !dbg !2896, !tbaa !373
  %13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2896
  %14 = load %struct.CallInfo*, %struct.CallInfo** %13, align 8, !dbg !2896, !tbaa !418
  %15 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %14, i64 0, i32 2, !dbg !2896
  %16 = load %struct.lua_TValue*, %struct.lua_TValue** %15, align 8, !dbg !2896, !tbaa !420
  %17 = icmp ult %struct.lua_TValue* %12, %16, !dbg !2896
  br i1 %17, label %19, label %18, !dbg !2899

; <label>:18:                                     ; preds = %11
  store %struct.lua_TValue* %12, %struct.lua_TValue** %15, align 8, !dbg !2896, !tbaa !420
  br label %19, !dbg !2896

; <label>:19:                                     ; preds = %11, %18, %3
  ret void, !dbg !2900
}

; Function Attrs: noredzone
declare hidden void @luaD_call(%struct.lua_State*, %struct.lua_TValue*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_pcall(%struct.lua_State*, i32, i32, i32) local_unnamed_addr #0 !dbg !2901 {
  %5 = alloca %struct.CallS, align 8
  %6 = bitcast %struct.CallS* %5 to i8*, !dbg !2919
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #6, !dbg !2919
  %7 = icmp eq i32 %3, 0, !dbg !2920
  br i1 %7, label %8, label %12, !dbg !2921

; <label>:8:                                      ; preds = %4
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 10
  %10 = bitcast %struct.lua_TValue** %9 to i64*
  %11 = load i64, i64* %10, align 8, !dbg !2922, !tbaa !2923
  br label %74, !dbg !2921

; <label>:12:                                     ; preds = %4
  %13 = icmp sgt i32 %3, 0, !dbg !2927
  br i1 %13, label %14, label %24, !dbg !2928

; <label>:14:                                     ; preds = %12
  %15 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !2929
  %16 = load %struct.lua_TValue*, %struct.lua_TValue** %15, align 8, !dbg !2929, !tbaa !401
  %17 = add nsw i32 %3, -1, !dbg !2930
  %18 = sext i32 %17 to i64, !dbg !2931
  %19 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %16, i64 %18, !dbg !2931
  %20 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2933
  %21 = load %struct.lua_TValue*, %struct.lua_TValue** %20, align 8, !dbg !2933, !tbaa !373
  %22 = icmp ult %struct.lua_TValue* %19, %21, !dbg !2934
  %23 = select i1 %22, %struct.lua_TValue* %19, %struct.lua_TValue* @luaO_nilobject_, !dbg !2935
  br label %67

; <label>:24:                                     ; preds = %12
  %25 = icmp sgt i32 %3, -10000, !dbg !2936
  br i1 %25, label %26, label %31, !dbg !2937

; <label>:26:                                     ; preds = %24
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2938
  %28 = load %struct.lua_TValue*, %struct.lua_TValue** %27, align 8, !dbg !2938, !tbaa !373
  %29 = sext i32 %3 to i64, !dbg !2939
  %30 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %28, i64 %29, !dbg !2939
  br label %67, !dbg !2940

; <label>:31:                                     ; preds = %24
  switch i32 %3, label %51 [
    i32 -10000, label %32
    i32 -10001, label %36
    i32 -10002, label %49
  ], !dbg !2941

; <label>:32:                                     ; preds = %31
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !2942
  %34 = load %struct.global_State*, %struct.global_State** %33, align 8, !dbg !2942, !tbaa !482
  %35 = getelementptr inbounds %struct.global_State, %struct.global_State* %34, i64 0, i32 20, !dbg !2942
  br label %67, !dbg !2943

; <label>:36:                                     ; preds = %31
  %37 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2944
  %38 = load %struct.CallInfo*, %struct.CallInfo** %37, align 8, !dbg !2944, !tbaa !418
  %39 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %38, i64 0, i32 1, !dbg !2944
  %40 = bitcast %struct.lua_TValue** %39 to %struct.CClosure***, !dbg !2944
  %41 = load %struct.CClosure**, %struct.CClosure*** %40, align 8, !dbg !2944, !tbaa !600
  %42 = load %struct.CClosure*, %struct.CClosure** %41, align 8, !dbg !2944, !tbaa !510
  %43 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !2946
  %44 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %42, i64 0, i32 6, !dbg !2946
  %45 = bitcast %struct.Table** %44 to i64*, !dbg !2946
  %46 = load i64, i64* %45, align 8, !dbg !2946, !tbaa !510
  %47 = bitcast %struct.lua_TValue* %43 to i64*, !dbg !2946
  store i64 %46, i64* %47, align 8, !dbg !2946, !tbaa !510
  %48 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !2946
  store i32 5, i32* %48, align 8, !dbg !2946, !tbaa !382
  br label %67

; <label>:49:                                     ; preds = %31
  %50 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !2947
  br label %67, !dbg !2948

; <label>:51:                                     ; preds = %31
  %52 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2949
  %53 = load %struct.CallInfo*, %struct.CallInfo** %52, align 8, !dbg !2949, !tbaa !418
  %54 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %53, i64 0, i32 1, !dbg !2949
  %55 = bitcast %struct.lua_TValue** %54 to %struct.CClosure***, !dbg !2949
  %56 = load %struct.CClosure**, %struct.CClosure*** %55, align 8, !dbg !2949, !tbaa !600
  %57 = load %struct.CClosure*, %struct.CClosure** %56, align 8, !dbg !2949, !tbaa !510
  %58 = sub nsw i32 -10002, %3, !dbg !2951
  %59 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %57, i64 0, i32 4, !dbg !2952
  %60 = load i8, i8* %59, align 1, !dbg !2952, !tbaa !510
  %61 = zext i8 %60 to i32, !dbg !2953
  %62 = icmp sgt i32 %58, %61, !dbg !2954
  br i1 %62, label %67, label %63, !dbg !2955

; <label>:63:                                     ; preds = %51
  %64 = add nsw i32 %58, -1, !dbg !2956
  %65 = sext i32 %64 to i64, !dbg !2957
  %66 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %57, i64 0, i32 8, i64 %65, !dbg !2957
  br label %67, !dbg !2955

; <label>:67:                                     ; preds = %14, %26, %32, %36, %49, %51, %63
  %68 = phi %struct.lua_TValue* [ %23, %14 ], [ %30, %26 ], [ %50, %49 ], [ %43, %36 ], [ %35, %32 ], [ %66, %63 ], [ @luaO_nilobject_, %51 ], !dbg !2958
  %69 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 10, !dbg !2960
  %70 = bitcast %struct.lua_TValue** %69 to i64*, !dbg !2960
  %71 = load i64, i64* %70, align 8, !dbg !2960, !tbaa !2923
  %72 = ptrtoint %struct.lua_TValue* %68 to i64, !dbg !2960
  %73 = sub i64 %72, %71, !dbg !2960
  br label %74

; <label>:74:                                     ; preds = %8, %67
  %75 = phi i64 [ %71, %67 ], [ %11, %8 ], !dbg !2922
  %76 = phi i64 [ %73, %67 ], [ 0, %8 ], !dbg !2962
  %77 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2963
  %78 = load %struct.lua_TValue*, %struct.lua_TValue** %77, align 8, !dbg !2963, !tbaa !373
  %79 = add nsw i32 %1, 1, !dbg !2964
  %80 = sext i32 %79 to i64, !dbg !2965
  %81 = sub nsw i64 0, %80, !dbg !2965
  %82 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %78, i64 %81, !dbg !2965
  %83 = getelementptr inbounds %struct.CallS, %struct.CallS* %5, i64 0, i32 0, !dbg !2966
  store %struct.lua_TValue* %82, %struct.lua_TValue** %83, align 8, !dbg !2967, !tbaa !2968
  %84 = getelementptr inbounds %struct.CallS, %struct.CallS* %5, i64 0, i32 1, !dbg !2970
  store i32 %2, i32* %84, align 8, !dbg !2971, !tbaa !2972
  %85 = ptrtoint %struct.lua_TValue* %82 to i64, !dbg !2922
  %86 = sub i64 %85, %75, !dbg !2922
  %87 = call i32 @luaD_pcall(%struct.lua_State* nonnull %0, void (%struct.lua_State*, i8*)* nonnull @f_call, i8* nonnull %6, i64 %86, i64 %76) #7, !dbg !2973
  %88 = icmp eq i32 %2, -1, !dbg !2975
  br i1 %88, label %89, label %97, !dbg !2975

; <label>:89:                                     ; preds = %74
  %90 = load %struct.lua_TValue*, %struct.lua_TValue** %77, align 8, !dbg !2975, !tbaa !373
  %91 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2975
  %92 = load %struct.CallInfo*, %struct.CallInfo** %91, align 8, !dbg !2975, !tbaa !418
  %93 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %92, i64 0, i32 2, !dbg !2975
  %94 = load %struct.lua_TValue*, %struct.lua_TValue** %93, align 8, !dbg !2975, !tbaa !420
  %95 = icmp ult %struct.lua_TValue* %90, %94, !dbg !2975
  br i1 %95, label %97, label %96, !dbg !2978

; <label>:96:                                     ; preds = %89
  store %struct.lua_TValue* %90, %struct.lua_TValue** %93, align 8, !dbg !2975, !tbaa !420
  br label %97, !dbg !2975

; <label>:97:                                     ; preds = %89, %96, %74
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #6, !dbg !2979
  ret i32 %87, !dbg !2980
}

; Function Attrs: noredzone
declare hidden i32 @luaD_pcall(%struct.lua_State*, void (%struct.lua_State*, i8*)*, i8*, i64, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal void @f_call(%struct.lua_State*, i8* nocapture readonly) #0 !dbg !2981 {
  %3 = bitcast i8* %1 to %struct.lua_TValue**, !dbg !2989
  %4 = load %struct.lua_TValue*, %struct.lua_TValue** %3, align 8, !dbg !2989, !tbaa !2968
  %5 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !2990
  %6 = bitcast i8* %5 to i32*, !dbg !2990
  %7 = load i32, i32* %6, align 8, !dbg !2990, !tbaa !2972
  tail call void @luaD_call(%struct.lua_State* %0, %struct.lua_TValue* %4, i32 %7) #7, !dbg !2991
  ret void, !dbg !2992
}

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_cpcall(%struct.lua_State*, i32 (%struct.lua_State*)*, i8*) local_unnamed_addr #0 !dbg !2993 {
  %4 = alloca %struct.CCallS, align 8
  %5 = bitcast %struct.CCallS* %4 to i8*, !dbg !3005
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #6, !dbg !3005
  %6 = getelementptr inbounds %struct.CCallS, %struct.CCallS* %4, i64 0, i32 0, !dbg !3006
  store i32 (%struct.lua_State*)* %1, i32 (%struct.lua_State*)** %6, align 8, !dbg !3007, !tbaa !3008
  %7 = getelementptr inbounds %struct.CCallS, %struct.CCallS* %4, i64 0, i32 1, !dbg !3010
  store i8* %2, i8** %7, align 8, !dbg !3011, !tbaa !3012
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !3013
  %9 = bitcast %struct.lua_TValue** %8 to i64*, !dbg !3013
  %10 = load i64, i64* %9, align 8, !dbg !3013, !tbaa !373
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 10, !dbg !3013
  %12 = bitcast %struct.lua_TValue** %11 to i64*, !dbg !3013
  %13 = load i64, i64* %12, align 8, !dbg !3013, !tbaa !2923
  %14 = sub i64 %10, %13, !dbg !3013
  %15 = call i32 @luaD_pcall(%struct.lua_State* %0, void (%struct.lua_State*, i8*)* nonnull @f_Ccall, i8* nonnull %5, i64 %14, i64 0) #7, !dbg !3014
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #6, !dbg !3016
  ret i32 %15, !dbg !3017
}

; Function Attrs: noredzone nounwind
define internal void @f_Ccall(%struct.lua_State*, i8* nocapture readonly) #0 !dbg !3018 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !3033
  %4 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8, !dbg !3033, !tbaa !418
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 12, !dbg !3034
  %6 = load %struct.CallInfo*, %struct.CallInfo** %5, align 8, !dbg !3034, !tbaa !705
  %7 = icmp eq %struct.CallInfo* %4, %6, !dbg !3035
  br i1 %7, label %8, label %11, !dbg !3036

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, i32 0, i32 0, !dbg !3037
  %10 = bitcast %union.GCObject** %9 to %struct.Table**, !dbg !3037
  br label %17, !dbg !3038

; <label>:11:                                     ; preds = %2
  %12 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %4, i64 0, i32 1, !dbg !3039
  %13 = bitcast %struct.lua_TValue** %12 to %struct.CClosure***, !dbg !3039
  %14 = load %struct.CClosure**, %struct.CClosure*** %13, align 8, !dbg !3039, !tbaa !600
  %15 = load %struct.CClosure*, %struct.CClosure** %14, align 8, !dbg !3039, !tbaa !510
  %16 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %15, i64 0, i32 6, !dbg !3041
  br label %17

; <label>:17:                                     ; preds = %8, %11
  %18 = phi %struct.Table** [ %10, %8 ], [ %16, %11 ]
  %19 = load %struct.Table*, %struct.Table** %18, align 8, !dbg !3042, !tbaa !510
  %20 = tail call %union.Closure* @luaF_newCclosure(%struct.lua_State* nonnull %0, i32 0, %struct.Table* %19) #7, !dbg !3043
  %21 = bitcast i8* %1 to i64*, !dbg !3045
  %22 = load i64, i64* %21, align 8, !dbg !3045, !tbaa !3008
  %23 = getelementptr inbounds %union.Closure, %union.Closure* %20, i64 0, i32 0, i32 7, !dbg !3046
  %24 = bitcast i32 (%struct.lua_State*)** %23 to i64*, !dbg !3047
  store i64 %22, i64* %24, align 8, !dbg !3047, !tbaa !510
  %25 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !3048
  %26 = load %struct.lua_TValue*, %struct.lua_TValue** %25, align 8, !dbg !3048, !tbaa !373
  %27 = bitcast %struct.lua_TValue* %26 to %union.Closure**, !dbg !3048
  store %union.Closure* %20, %union.Closure** %27, align 8, !dbg !3048, !tbaa !510
  %28 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %26, i64 0, i32 1, !dbg !3048
  store i32 6, i32* %28, align 8, !dbg !3048, !tbaa !382
  %29 = load %struct.lua_TValue*, %struct.lua_TValue** %25, align 8, !dbg !3049, !tbaa !373
  %30 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %29, i64 1, !dbg !3049
  store %struct.lua_TValue* %30, %struct.lua_TValue** %25, align 8, !dbg !3049, !tbaa !373
  %31 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !3051
  %32 = bitcast i8* %31 to i64*, !dbg !3051
  %33 = load i64, i64* %32, align 8, !dbg !3051, !tbaa !3012
  %34 = bitcast %struct.lua_TValue* %30 to i64*, !dbg !3051
  store i64 %33, i64* %34, align 8, !dbg !3051, !tbaa !510
  %35 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %29, i64 1, i32 1, !dbg !3051
  store i32 2, i32* %35, align 8, !dbg !3051, !tbaa !382
  %36 = load %struct.lua_TValue*, %struct.lua_TValue** %25, align 8, !dbg !3052, !tbaa !373
  %37 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %36, i64 1, !dbg !3052
  store %struct.lua_TValue* %37, %struct.lua_TValue** %25, align 8, !dbg !3052, !tbaa !373
  %38 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %36, i64 -1, !dbg !3054
  tail call void @luaD_call(%struct.lua_State* nonnull %0, %struct.lua_TValue* nonnull %38, i32 0) #7, !dbg !3055
  ret void, !dbg !3056
}

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_load(%struct.lua_State*, i8* (%struct.lua_State*, i8*, i64*)*, i8*, i8*) local_unnamed_addr #0 !dbg !3057 {
  %5 = alloca %struct.Zio, align 8
  %6 = bitcast %struct.Zio* %5 to i8*, !dbg !3083
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %6) #6, !dbg !3083
  %7 = icmp eq i8* %3, null, !dbg !3084
  %8 = select i1 %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* %3, !dbg !3086
  call void @luaZ_init(%struct.lua_State* %0, %struct.Zio* nonnull %5, i8* (%struct.lua_State*, i8*, i64*)* %1, i8* %2) #7, !dbg !3088
  %9 = call i32 @luaD_protectedparser(%struct.lua_State* %0, %struct.Zio* nonnull %5, i8* %8) #7, !dbg !3089
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %6) #6, !dbg !3091
  ret i32 %9, !dbg !3092
}

; Function Attrs: noredzone
declare hidden void @luaZ_init(%struct.lua_State*, %struct.Zio*, i8* (%struct.lua_State*, i8*, i64*)*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden i32 @luaD_protectedparser(%struct.lua_State*, %struct.Zio*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_dump(%struct.lua_State*, i32 (%struct.lua_State*, i8*, i64, i8*)*, i8*) local_unnamed_addr #0 !dbg !3093 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !3109
  %5 = load %struct.lua_TValue*, %struct.lua_TValue** %4, align 8, !dbg !3109, !tbaa !373
  %6 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %5, i64 -1, i32 1, !dbg !3111
  %7 = load i32, i32* %6, align 8, !dbg !3111, !tbaa !382
  %8 = icmp eq i32 %7, 6, !dbg !3111
  br i1 %8, label %9, label %21, !dbg !3111

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %5, i64 -1, i32 0, i32 0, !dbg !3111
  %11 = bitcast %union.GCObject** %10 to %union.Closure**, !dbg !3111
  %12 = load %union.Closure*, %union.Closure** %11, align 8, !dbg !3111, !tbaa !510
  %13 = getelementptr inbounds %union.Closure, %union.Closure* %12, i64 0, i32 0, i32 3, !dbg !3111
  %14 = load i8, i8* %13, align 2, !dbg !3111, !tbaa !510
  %15 = icmp eq i8 %14, 0, !dbg !3111
  br i1 %15, label %16, label %21, !dbg !3113

; <label>:16:                                     ; preds = %9
  %17 = getelementptr inbounds %union.Closure, %union.Closure* %12, i64 0, i32 0, i32 7, !dbg !3114
  %18 = bitcast i32 (%struct.lua_State*)** %17 to %struct.Proto**, !dbg !3114
  %19 = load %struct.Proto*, %struct.Proto** %18, align 8, !dbg !3114, !tbaa !510
  %20 = tail call i32 @luaU_dump(%struct.lua_State* nonnull %0, %struct.Proto* %19, i32 (%struct.lua_State*, i8*, i64, i8*)* %1, i8* %2, i32 0) #7, !dbg !3115
  br label %21, !dbg !3117

; <label>:21:                                     ; preds = %3, %9, %16
  %22 = phi i32 [ %20, %16 ], [ 1, %9 ], [ 1, %3 ], !dbg !3118
  ret i32 %22, !dbg !3119
}

; Function Attrs: noredzone
declare hidden i32 @luaU_dump(%struct.lua_State*, %struct.Proto*, i32 (%struct.lua_State*, i8*, i64, i8*)*, i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind readonly
define dso_local i32 @lua_status(%struct.lua_State* nocapture readonly) local_unnamed_addr #4 !dbg !3120 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 3, !dbg !3124
  %3 = load i8, i8* %2, align 2, !dbg !3124, !tbaa !3125
  %4 = zext i8 %3 to i32, !dbg !3126
  ret i32 %4, !dbg !3127
}

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_gc(%struct.lua_State*, i32, i32) local_unnamed_addr #0 !dbg !3128 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !3142
  %5 = load %struct.global_State*, %struct.global_State** %4, align 8, !dbg !3142, !tbaa !482
  switch i32 %1, label %47 [
    i32 0, label %6
    i32 1, label %8
    i32 2, label %12
    i32 3, label %13
    i32 4, label %18
    i32 5, label %23
    i32 6, label %41
    i32 7, label %44
  ], !dbg !3144

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 13, !dbg !3145
  store i64 -3, i64* %7, align 8, !dbg !3147, !tbaa !505
  br label %47, !dbg !3148

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 14, !dbg !3149
  %10 = load i64, i64* %9, align 8, !dbg !3149, !tbaa !504
  %11 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 13, !dbg !3151
  store i64 %10, i64* %11, align 8, !dbg !3152, !tbaa !505
  br label %47, !dbg !3153

; <label>:12:                                     ; preds = %3
  tail call void @luaC_fullgc(%struct.lua_State* nonnull %0) #7, !dbg !3154
  br label %47, !dbg !3156

; <label>:13:                                     ; preds = %3
  %14 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 14, !dbg !3157
  %15 = load i64, i64* %14, align 8, !dbg !3157, !tbaa !504
  %16 = lshr i64 %15, 10, !dbg !3157
  %17 = trunc i64 %16 to i32, !dbg !3157
  br label %47, !dbg !3159

; <label>:18:                                     ; preds = %3
  %19 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 14, !dbg !3160
  %20 = load i64, i64* %19, align 8, !dbg !3160, !tbaa !504
  %21 = trunc i64 %20 to i32, !dbg !3160
  %22 = and i32 %21, 1023, !dbg !3160
  br label %47, !dbg !3162

; <label>:23:                                     ; preds = %3
  %24 = sext i32 %2 to i64, !dbg !3163
  %25 = shl nsw i64 %24, 10, !dbg !3164
  %26 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 14, !dbg !3166
  %27 = load i64, i64* %26, align 8, !dbg !3166, !tbaa !504
  %28 = icmp ult i64 %27, %25, !dbg !3168
  %29 = select i1 %28, i64 %25, i64 %27, !dbg !3168
  %30 = sub i64 %29, %25, !dbg !3168
  %31 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 13, !dbg !3169
  store i64 %30, i64* %31, align 8, !dbg !3170
  %32 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 4
  %33 = icmp ugt i64 %30, %27, !dbg !3171
  br i1 %33, label %47, label %34, !dbg !3172

; <label>:34:                                     ; preds = %23, %37
  tail call void @luaC_step(%struct.lua_State* %0) #7, !dbg !3173
  %35 = load i8, i8* %32, align 1, !dbg !3175, !tbaa !3177
  %36 = icmp eq i8 %35, 0, !dbg !3178
  br i1 %36, label %47, label %37, !dbg !3179, !llvm.loop !3180

; <label>:37:                                     ; preds = %34
  %38 = load i64, i64* %31, align 8, !dbg !3182, !tbaa !505
  %39 = load i64, i64* %26, align 8, !dbg !3183, !tbaa !504
  %40 = icmp ugt i64 %38, %39, !dbg !3171
  br i1 %40, label %47, label %34, !dbg !3172

; <label>:41:                                     ; preds = %3
  %42 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 17, !dbg !3184
  %43 = load i32, i32* %42, align 8, !dbg !3184, !tbaa !3186
  store i32 %2, i32* %42, align 8, !dbg !3187, !tbaa !3186
  br label %47, !dbg !3188

; <label>:44:                                     ; preds = %3
  %45 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 18, !dbg !3189
  %46 = load i32, i32* %45, align 4, !dbg !3189, !tbaa !3191
  store i32 %2, i32* %45, align 4, !dbg !3192, !tbaa !3191
  br label %47, !dbg !3193

; <label>:47:                                     ; preds = %34, %37, %23, %3, %44, %41, %18, %13, %12, %8, %6
  %48 = phi i32 [ %46, %44 ], [ %43, %41 ], [ %22, %18 ], [ %17, %13 ], [ 0, %12 ], [ 0, %8 ], [ 0, %6 ], [ -1, %3 ], [ 0, %23 ], [ 0, %37 ], [ 1, %34 ], !dbg !3194
  ret i32 %48, !dbg !3195
}

; Function Attrs: noredzone
declare hidden void @luaC_fullgc(%struct.lua_State*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_error(%struct.lua_State*) local_unnamed_addr #0 !dbg !3196 {
  tail call void @luaG_errormsg(%struct.lua_State* %0) #7, !dbg !3200
  ret i32 0, !dbg !3201
}

; Function Attrs: noredzone
declare hidden void @luaG_errormsg(%struct.lua_State*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_next(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !3202 {
  %3 = icmp sgt i32 %1, 0, !dbg !3213
  br i1 %3, label %4, label %14, !dbg !3214

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !3215
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8, !dbg !3215, !tbaa !401
  %7 = add nsw i32 %1, -1, !dbg !3216
  %8 = sext i32 %7 to i64, !dbg !3217
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 %8, !dbg !3217
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !3219
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !3219, !tbaa !373
  %12 = icmp ult %struct.lua_TValue* %9, %11, !dbg !3220
  %13 = select i1 %12, %struct.lua_TValue* %9, %struct.lua_TValue* @luaO_nilobject_, !dbg !3221
  br label %57

; <label>:14:                                     ; preds = %2
  %15 = icmp sgt i32 %1, -10000, !dbg !3222
  br i1 %15, label %16, label %21, !dbg !3223

; <label>:16:                                     ; preds = %14
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !3224
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %17, align 8, !dbg !3224, !tbaa !373
  %19 = sext i32 %1 to i64, !dbg !3225
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 %19, !dbg !3225
  br label %57, !dbg !3226

; <label>:21:                                     ; preds = %14
  switch i32 %1, label %41 [
    i32 -10000, label %22
    i32 -10001, label %26
    i32 -10002, label %39
  ], !dbg !3227

; <label>:22:                                     ; preds = %21
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !3228
  %24 = load %struct.global_State*, %struct.global_State** %23, align 8, !dbg !3228, !tbaa !482
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %24, i64 0, i32 20, !dbg !3228
  br label %57, !dbg !3229

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !3230
  %28 = load %struct.CallInfo*, %struct.CallInfo** %27, align 8, !dbg !3230, !tbaa !418
  %29 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %28, i64 0, i32 1, !dbg !3230
  %30 = bitcast %struct.lua_TValue** %29 to %struct.CClosure***, !dbg !3230
  %31 = load %struct.CClosure**, %struct.CClosure*** %30, align 8, !dbg !3230, !tbaa !600
  %32 = load %struct.CClosure*, %struct.CClosure** %31, align 8, !dbg !3230, !tbaa !510
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !3232
  %34 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %32, i64 0, i32 6, !dbg !3232
  %35 = bitcast %struct.Table** %34 to i64*, !dbg !3232
  %36 = load i64, i64* %35, align 8, !dbg !3232, !tbaa !510
  %37 = bitcast %struct.lua_TValue* %33 to i64*, !dbg !3232
  store i64 %36, i64* %37, align 8, !dbg !3232, !tbaa !510
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !3232
  store i32 5, i32* %38, align 8, !dbg !3232, !tbaa !382
  br label %57

; <label>:39:                                     ; preds = %21
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !3233
  br label %57, !dbg !3234

; <label>:41:                                     ; preds = %21
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !3235
  %43 = load %struct.CallInfo*, %struct.CallInfo** %42, align 8, !dbg !3235, !tbaa !418
  %44 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %43, i64 0, i32 1, !dbg !3235
  %45 = bitcast %struct.lua_TValue** %44 to %struct.CClosure***, !dbg !3235
  %46 = load %struct.CClosure**, %struct.CClosure*** %45, align 8, !dbg !3235, !tbaa !600
  %47 = load %struct.CClosure*, %struct.CClosure** %46, align 8, !dbg !3235, !tbaa !510
  %48 = sub nsw i32 -10002, %1, !dbg !3237
  %49 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 4, !dbg !3238
  %50 = load i8, i8* %49, align 1, !dbg !3238, !tbaa !510
  %51 = zext i8 %50 to i32, !dbg !3239
  %52 = icmp sgt i32 %48, %51, !dbg !3240
  br i1 %52, label %57, label %53, !dbg !3241

; <label>:53:                                     ; preds = %41
  %54 = add nsw i32 %48, -1, !dbg !3242
  %55 = sext i32 %54 to i64, !dbg !3243
  %56 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 8, i64 %55, !dbg !3243
  br label %57, !dbg !3241

; <label>:57:                                     ; preds = %4, %16, %22, %26, %39, %41, %53
  %58 = phi %struct.lua_TValue* [ %13, %4 ], [ %20, %16 ], [ %40, %39 ], [ %33, %26 ], [ %25, %22 ], [ %56, %53 ], [ @luaO_nilobject_, %41 ], !dbg !3244
  %59 = bitcast %struct.lua_TValue* %58 to %struct.Table**, !dbg !3246
  %60 = load %struct.Table*, %struct.Table** %59, align 8, !dbg !3246, !tbaa !510
  %61 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !3247
  %62 = load %struct.lua_TValue*, %struct.lua_TValue** %61, align 8, !dbg !3247, !tbaa !373
  %63 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %62, i64 -1, !dbg !3248
  %64 = tail call i32 @luaH_next(%struct.lua_State* %0, %struct.Table* %60, %struct.lua_TValue* nonnull %63) #7, !dbg !3249
  %65 = icmp eq i32 %64, 0, !dbg !3251
  %66 = load %struct.lua_TValue*, %struct.lua_TValue** %61, align 8, !dbg !3253, !tbaa !373
  %67 = select i1 %65, i64 -1, i64 1, !dbg !3256
  %68 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %66, i64 %67, !dbg !3256
  store %struct.lua_TValue* %68, %struct.lua_TValue** %61, align 8, !dbg !3253, !tbaa !373
  ret i32 %64, !dbg !3257
}

; Function Attrs: noredzone
declare hidden i32 @luaH_next(%struct.lua_State*, %struct.Table*, %struct.lua_TValue*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @lua_concat(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !3258 {
  %3 = icmp sgt i32 %1, 1, !dbg !3269
  br i1 %3, label %4, label %29, !dbg !3270

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !3271
  %6 = load %struct.global_State*, %struct.global_State** %5, align 8, !dbg !3271, !tbaa !482
  %7 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i64 0, i32 14, !dbg !3271
  %8 = load i64, i64* %7, align 8, !dbg !3271, !tbaa !504
  %9 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i64 0, i32 13, !dbg !3271
  %10 = load i64, i64* %9, align 8, !dbg !3271, !tbaa !505
  %11 = icmp ult i64 %8, %10, !dbg !3271
  br i1 %11, label %13, label %12, !dbg !3275

; <label>:12:                                     ; preds = %4
  tail call void @luaC_step(%struct.lua_State* nonnull %0) #7, !dbg !3271
  br label %13, !dbg !3271

; <label>:13:                                     ; preds = %4, %12
  %14 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !3276
  %15 = bitcast %struct.lua_TValue** %14 to i64*, !dbg !3276
  %16 = load i64, i64* %15, align 8, !dbg !3276, !tbaa !373
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !3276
  %18 = bitcast %struct.lua_TValue** %17 to i64*, !dbg !3276
  %19 = load i64, i64* %18, align 8, !dbg !3276, !tbaa !401
  %20 = sub i64 %16, %19, !dbg !3276
  %21 = lshr exact i64 %20, 4, !dbg !3276
  %22 = trunc i64 %21 to i32, !dbg !3276
  %23 = add nsw i32 %22, -1, !dbg !3277
  tail call void @luaV_concat(%struct.lua_State* nonnull %0, i32 %1, i32 %23) #7, !dbg !3278
  %24 = add nsw i32 %1, -1, !dbg !3279
  %25 = load %struct.lua_TValue*, %struct.lua_TValue** %14, align 8, !dbg !3280, !tbaa !373
  %26 = sext i32 %24 to i64, !dbg !3280
  %27 = sub nsw i64 0, %26, !dbg !3280
  %28 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %25, i64 %27, !dbg !3280
  br label %39, !dbg !3281

; <label>:29:                                     ; preds = %2
  %30 = icmp eq i32 %1, 0, !dbg !3282
  br i1 %30, label %31, label %42, !dbg !3283

; <label>:31:                                     ; preds = %29
  %32 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !3284
  %33 = load %struct.lua_TValue*, %struct.lua_TValue** %32, align 8, !dbg !3284, !tbaa !373
  %34 = tail call %union.TString* @luaS_newlstr(%struct.lua_State* %0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i64 0) #7, !dbg !3284
  %35 = bitcast %struct.lua_TValue* %33 to %union.TString**, !dbg !3284
  store %union.TString* %34, %union.TString** %35, align 8, !dbg !3284, !tbaa !510
  %36 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %33, i64 0, i32 1, !dbg !3284
  store i32 4, i32* %36, align 8, !dbg !3284, !tbaa !382
  %37 = load %struct.lua_TValue*, %struct.lua_TValue** %32, align 8, !dbg !3285, !tbaa !373
  %38 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %37, i64 1, !dbg !3285
  br label %39, !dbg !3287

; <label>:39:                                     ; preds = %13, %31
  %40 = phi %struct.lua_TValue** [ %32, %31 ], [ %14, %13 ]
  %41 = phi %struct.lua_TValue* [ %38, %31 ], [ %28, %13 ]
  store %struct.lua_TValue* %41, %struct.lua_TValue** %40, align 8, !dbg !3288, !tbaa !373
  br label %42, !dbg !3289

; <label>:42:                                     ; preds = %39, %29
  ret void, !dbg !3289
}

; Function Attrs: noredzone
declare hidden void @luaV_concat(%struct.lua_State*, i32, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i8* (i8*, i8*, i64, i64)* @lua_getallocf(%struct.lua_State* nocapture readonly, i8**) local_unnamed_addr #0 !dbg !3290 {
  %3 = icmp eq i8** %1, null, !dbg !3300
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !3302
  br i1 %3, label %11, label %5, !dbg !3303

; <label>:5:                                      ; preds = %2
  %6 = load %struct.global_State*, %struct.global_State** %4, align 8, !dbg !3304, !tbaa !482
  %7 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i64 0, i32 2, !dbg !3305
  %8 = bitcast i8** %7 to i64*, !dbg !3305
  %9 = load i64, i64* %8, align 8, !dbg !3305, !tbaa !3306
  %10 = bitcast i8** %1 to i64*, !dbg !3307
  store i64 %9, i64* %10, align 8, !dbg !3307, !tbaa !869
  br label %11, !dbg !3308

; <label>:11:                                     ; preds = %2, %5
  %12 = load %struct.global_State*, %struct.global_State** %4, align 8, !dbg !3309, !tbaa !482
  %13 = getelementptr inbounds %struct.global_State, %struct.global_State* %12, i64 0, i32 1, !dbg !3310
  %14 = load i8* (i8*, i8*, i64, i64)*, i8* (i8*, i8*, i64, i64)** %13, align 8, !dbg !3310, !tbaa !3311
  ret i8* (i8*, i8*, i64, i64)* %14, !dbg !3313
}

; Function Attrs: noredzone nounwind
define dso_local void @lua_setallocf(%struct.lua_State* nocapture readonly, i8* (i8*, i8*, i64, i64)*, i8*) local_unnamed_addr #0 !dbg !3314 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !3324
  %5 = load %struct.global_State*, %struct.global_State** %4, align 8, !dbg !3324, !tbaa !482
  %6 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 2, !dbg !3325
  store i8* %2, i8** %6, align 8, !dbg !3326, !tbaa !3306
  %7 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 1, !dbg !3327
  store i8* (i8*, i8*, i64, i64)* %1, i8* (i8*, i8*, i64, i64)** %7, align 8, !dbg !3328, !tbaa !3311
  ret void, !dbg !3329
}

; Function Attrs: noredzone nounwind
define dso_local nonnull i8* @lua_newuserdata(%struct.lua_State*, i64) local_unnamed_addr #0 !dbg !3330 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !3343
  %4 = load %struct.global_State*, %struct.global_State** %3, align 8, !dbg !3343, !tbaa !482
  %5 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 14, !dbg !3343
  %6 = load i64, i64* %5, align 8, !dbg !3343, !tbaa !504
  %7 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 13, !dbg !3343
  %8 = load i64, i64* %7, align 8, !dbg !3343, !tbaa !505
  %9 = icmp ult i64 %6, %8, !dbg !3343
  br i1 %9, label %11, label %10, !dbg !3346

; <label>:10:                                     ; preds = %2
  tail call void @luaC_step(%struct.lua_State* nonnull %0) #7, !dbg !3343
  br label %11, !dbg !3343

; <label>:11:                                     ; preds = %2, %10
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !3349
  %13 = load %struct.CallInfo*, %struct.CallInfo** %12, align 8, !dbg !3349, !tbaa !418
  %14 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 12, !dbg !3350
  %15 = load %struct.CallInfo*, %struct.CallInfo** %14, align 8, !dbg !3350, !tbaa !705
  %16 = icmp eq %struct.CallInfo* %13, %15, !dbg !3351
  br i1 %16, label %17, label %20, !dbg !3352

; <label>:17:                                     ; preds = %11
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, i32 0, i32 0, !dbg !3353
  %19 = bitcast %union.GCObject** %18 to %struct.Table**, !dbg !3353
  br label %26, !dbg !3354

; <label>:20:                                     ; preds = %11
  %21 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %13, i64 0, i32 1, !dbg !3355
  %22 = bitcast %struct.lua_TValue** %21 to %struct.CClosure***, !dbg !3355
  %23 = load %struct.CClosure**, %struct.CClosure*** %22, align 8, !dbg !3355, !tbaa !600
  %24 = load %struct.CClosure*, %struct.CClosure** %23, align 8, !dbg !3355, !tbaa !510
  %25 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %24, i64 0, i32 6, !dbg !3357
  br label %26

; <label>:26:                                     ; preds = %17, %20
  %27 = phi %struct.Table** [ %19, %17 ], [ %25, %20 ]
  %28 = load %struct.Table*, %struct.Table** %27, align 8, !dbg !3358, !tbaa !510
  %29 = tail call %union.Udata* @luaS_newudata(%struct.lua_State* nonnull %0, i64 %1, %struct.Table* %28) #7, !dbg !3359
  %30 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !3361
  %31 = load %struct.lua_TValue*, %struct.lua_TValue** %30, align 8, !dbg !3361, !tbaa !373
  %32 = bitcast %struct.lua_TValue* %31 to %union.Udata**, !dbg !3361
  store %union.Udata* %29, %union.Udata** %32, align 8, !dbg !3361, !tbaa !510
  %33 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %31, i64 0, i32 1, !dbg !3361
  store i32 7, i32* %33, align 8, !dbg !3361, !tbaa !382
  %34 = load %struct.lua_TValue*, %struct.lua_TValue** %30, align 8, !dbg !3362, !tbaa !373
  %35 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %34, i64 1, !dbg !3362
  store %struct.lua_TValue* %35, %struct.lua_TValue** %30, align 8, !dbg !3362, !tbaa !373
  %36 = getelementptr inbounds %union.Udata, %union.Udata* %29, i64 1, !dbg !3364
  %37 = bitcast %union.Udata* %36 to i8*, !dbg !3365
  ret i8* %37, !dbg !3366
}

; Function Attrs: noredzone
declare hidden %union.Udata* @luaS_newudata(%struct.lua_State*, i64, %struct.Table*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i8* @lua_getupvalue(%struct.lua_State* nocapture, i32, i32) local_unnamed_addr #0 !dbg !3367 {
  %4 = icmp sgt i32 %1, 0, !dbg !3387
  br i1 %4, label %5, label %15, !dbg !3388

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !3389
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8, !dbg !3389, !tbaa !401
  %8 = add nsw i32 %1, -1, !dbg !3390
  %9 = sext i32 %8 to i64, !dbg !3391
  %10 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %7, i64 %9, !dbg !3391
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !3393
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %11, align 8, !dbg !3393, !tbaa !373
  %13 = icmp ult %struct.lua_TValue* %10, %12, !dbg !3394
  %14 = select i1 %13, %struct.lua_TValue* %10, %struct.lua_TValue* @luaO_nilobject_, !dbg !3395
  br label %58

; <label>:15:                                     ; preds = %3
  %16 = icmp sgt i32 %1, -10000, !dbg !3396
  br i1 %16, label %17, label %22, !dbg !3397

; <label>:17:                                     ; preds = %15
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !3398
  %19 = load %struct.lua_TValue*, %struct.lua_TValue** %18, align 8, !dbg !3398, !tbaa !373
  %20 = sext i32 %1 to i64, !dbg !3399
  %21 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %19, i64 %20, !dbg !3399
  br label %58, !dbg !3400

; <label>:22:                                     ; preds = %15
  switch i32 %1, label %42 [
    i32 -10000, label %23
    i32 -10001, label %27
    i32 -10002, label %40
  ], !dbg !3401

; <label>:23:                                     ; preds = %22
  %24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !3402
  %25 = load %struct.global_State*, %struct.global_State** %24, align 8, !dbg !3402, !tbaa !482
  %26 = getelementptr inbounds %struct.global_State, %struct.global_State* %25, i64 0, i32 20, !dbg !3402
  br label %58, !dbg !3403

; <label>:27:                                     ; preds = %22
  %28 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !3404
  %29 = load %struct.CallInfo*, %struct.CallInfo** %28, align 8, !dbg !3404, !tbaa !418
  %30 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %29, i64 0, i32 1, !dbg !3404
  %31 = bitcast %struct.lua_TValue** %30 to %struct.CClosure***, !dbg !3404
  %32 = load %struct.CClosure**, %struct.CClosure*** %31, align 8, !dbg !3404, !tbaa !600
  %33 = load %struct.CClosure*, %struct.CClosure** %32, align 8, !dbg !3404, !tbaa !510
  %34 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !3406
  %35 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %33, i64 0, i32 6, !dbg !3406
  %36 = bitcast %struct.Table** %35 to i64*, !dbg !3406
  %37 = load i64, i64* %36, align 8, !dbg !3406, !tbaa !510
  %38 = bitcast %struct.lua_TValue* %34 to i64*, !dbg !3406
  store i64 %37, i64* %38, align 8, !dbg !3406, !tbaa !510
  %39 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !3406
  store i32 5, i32* %39, align 8, !dbg !3406, !tbaa !382
  br label %58

; <label>:40:                                     ; preds = %22
  %41 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !3407
  br label %58, !dbg !3408

; <label>:42:                                     ; preds = %22
  %43 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !3409
  %44 = load %struct.CallInfo*, %struct.CallInfo** %43, align 8, !dbg !3409, !tbaa !418
  %45 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %44, i64 0, i32 1, !dbg !3409
  %46 = bitcast %struct.lua_TValue** %45 to %struct.CClosure***, !dbg !3409
  %47 = load %struct.CClosure**, %struct.CClosure*** %46, align 8, !dbg !3409, !tbaa !600
  %48 = load %struct.CClosure*, %struct.CClosure** %47, align 8, !dbg !3409, !tbaa !510
  %49 = sub nsw i32 -10002, %1, !dbg !3411
  %50 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %48, i64 0, i32 4, !dbg !3412
  %51 = load i8, i8* %50, align 1, !dbg !3412, !tbaa !510
  %52 = zext i8 %51 to i32, !dbg !3413
  %53 = icmp sgt i32 %49, %52, !dbg !3414
  br i1 %53, label %58, label %54, !dbg !3415

; <label>:54:                                     ; preds = %42
  %55 = add nsw i32 %49, -1, !dbg !3416
  %56 = sext i32 %55 to i64, !dbg !3417
  %57 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %48, i64 0, i32 8, i64 %56, !dbg !3417
  br label %58, !dbg !3415

; <label>:58:                                     ; preds = %5, %17, %23, %27, %40, %42, %54
  %59 = phi %struct.lua_TValue* [ %14, %5 ], [ %21, %17 ], [ %41, %40 ], [ %34, %27 ], [ %26, %23 ], [ %57, %54 ], [ @luaO_nilobject_, %42 ], !dbg !3418
  %60 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %59, i64 0, i32 1, !dbg !3438
  %61 = load i32, i32* %60, align 8, !dbg !3438, !tbaa !382
  %62 = icmp eq i32 %61, 6, !dbg !3438
  br i1 %62, label %63, label %117, !dbg !3440

; <label>:63:                                     ; preds = %58
  %64 = bitcast %struct.lua_TValue* %59 to %union.Closure**, !dbg !3441
  %65 = load %union.Closure*, %union.Closure** %64, align 8, !dbg !3441, !tbaa !510
  %66 = getelementptr inbounds %union.Closure, %union.Closure* %65, i64 0, i32 0, i32 3, !dbg !3443
  %67 = load i8, i8* %66, align 2, !dbg !3443, !tbaa !510
  %68 = icmp eq i8 %67, 0, !dbg !3444
  br i1 %68, label %80, label %69, !dbg !3445

; <label>:69:                                     ; preds = %63
  %70 = icmp sgt i32 %2, 0, !dbg !3446
  br i1 %70, label %71, label %117, !dbg !3449

; <label>:71:                                     ; preds = %69
  %72 = getelementptr inbounds %union.Closure, %union.Closure* %65, i64 0, i32 0, i32 4, !dbg !3450
  %73 = load i8, i8* %72, align 1, !dbg !3450, !tbaa !510
  %74 = zext i8 %73 to i32, !dbg !3451
  %75 = icmp slt i32 %74, %2, !dbg !3452
  br i1 %75, label %117, label %76, !dbg !3453

; <label>:76:                                     ; preds = %71
  %77 = add nsw i32 %2, -1, !dbg !3454
  %78 = sext i32 %77 to i64, !dbg !3455
  %79 = getelementptr inbounds %union.Closure, %union.Closure* %65, i64 0, i32 0, i32 8, i64 %78, !dbg !3455
  br label %104, !dbg !3456

; <label>:80:                                     ; preds = %63
  %81 = getelementptr inbounds %union.Closure, %union.Closure* %65, i64 0, i32 0, i32 7, !dbg !3457
  %82 = bitcast i32 (%struct.lua_State*)** %81 to %struct.Proto**, !dbg !3457
  %83 = load %struct.Proto*, %struct.Proto** %82, align 8, !dbg !3457, !tbaa !510
  %84 = icmp sgt i32 %2, 0, !dbg !3459
  br i1 %84, label %85, label %117, !dbg !3461

; <label>:85:                                     ; preds = %80
  %86 = getelementptr inbounds %struct.Proto, %struct.Proto* %83, i64 0, i32 10, !dbg !3462
  %87 = load i32, i32* %86, align 8, !dbg !3462, !tbaa !3463
  %88 = icmp slt i32 %87, %2, !dbg !3465
  br i1 %88, label %117, label %89, !dbg !3466

; <label>:89:                                     ; preds = %85
  %90 = getelementptr inbounds %union.Closure, %union.Closure* %65, i64 0, i32 0, i32 8, !dbg !3467
  %91 = bitcast [1 x %struct.lua_TValue]* %90 to [1 x %struct.UpVal*]*, !dbg !3467
  %92 = add nsw i32 %2, -1, !dbg !3468
  %93 = sext i32 %92 to i64, !dbg !3469
  %94 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %91, i64 0, i64 %93, !dbg !3469
  %95 = load %struct.UpVal*, %struct.UpVal** %94, align 8, !dbg !3469, !tbaa !510
  %96 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %95, i64 0, i32 3, !dbg !3470
  %97 = load %struct.lua_TValue*, %struct.lua_TValue** %96, align 8, !dbg !3470, !tbaa !3471
  %98 = getelementptr inbounds %struct.Proto, %struct.Proto* %83, i64 0, i32 8, !dbg !3472
  %99 = load %union.TString**, %union.TString*** %98, align 8, !dbg !3472, !tbaa !3473
  %100 = getelementptr inbounds %union.TString*, %union.TString** %99, i64 %93, !dbg !3472
  %101 = load %union.TString*, %union.TString** %100, align 8, !dbg !3472, !tbaa !869
  %102 = getelementptr inbounds %union.TString, %union.TString* %101, i64 1, !dbg !3472
  %103 = bitcast %union.TString* %102 to i8*, !dbg !3472
  br label %104, !dbg !3474

; <label>:104:                                    ; preds = %89, %76
  %105 = phi %struct.lua_TValue* [ %97, %89 ], [ %79, %76 ]
  %106 = phi i8* [ %103, %89 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %76 ], !dbg !3475
  %107 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !3477
  %108 = load %struct.lua_TValue*, %struct.lua_TValue** %107, align 8, !dbg !3477, !tbaa !373
  %109 = bitcast %struct.lua_TValue* %105 to i64*, !dbg !3477
  %110 = bitcast %struct.lua_TValue* %108 to i64*, !dbg !3477
  %111 = load i64, i64* %109, align 8, !dbg !3477
  store i64 %111, i64* %110, align 8, !dbg !3477
  %112 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %105, i64 0, i32 1, !dbg !3477
  %113 = load i32, i32* %112, align 8, !dbg !3477, !tbaa !382
  %114 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %108, i64 0, i32 1, !dbg !3477
  store i32 %113, i32* %114, align 8, !dbg !3477, !tbaa !382
  %115 = load %struct.lua_TValue*, %struct.lua_TValue** %107, align 8, !dbg !3478, !tbaa !373
  %116 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %115, i64 1, !dbg !3478
  store %struct.lua_TValue* %116, %struct.lua_TValue** %107, align 8, !dbg !3478, !tbaa !373
  br label %117, !dbg !3480

; <label>:117:                                    ; preds = %80, %85, %69, %71, %58, %104
  %118 = phi i8* [ %106, %104 ], [ null, %58 ], [ null, %71 ], [ null, %69 ], [ null, %85 ], [ null, %80 ]
  ret i8* %118, !dbg !3481
}

; Function Attrs: noredzone nounwind
define dso_local i8* @lua_setupvalue(%struct.lua_State*, i32, i32) local_unnamed_addr #0 !dbg !3482 {
  %4 = icmp sgt i32 %1, 0, !dbg !3501
  br i1 %4, label %5, label %15, !dbg !3502

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !3503
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8, !dbg !3503, !tbaa !401
  %8 = add nsw i32 %1, -1, !dbg !3504
  %9 = sext i32 %8 to i64, !dbg !3505
  %10 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %7, i64 %9, !dbg !3505
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !3507
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %11, align 8, !dbg !3507, !tbaa !373
  %13 = icmp ult %struct.lua_TValue* %10, %12, !dbg !3508
  %14 = select i1 %13, %struct.lua_TValue* %10, %struct.lua_TValue* @luaO_nilobject_, !dbg !3509
  br label %58

; <label>:15:                                     ; preds = %3
  %16 = icmp sgt i32 %1, -10000, !dbg !3510
  br i1 %16, label %17, label %22, !dbg !3511

; <label>:17:                                     ; preds = %15
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !3512
  %19 = load %struct.lua_TValue*, %struct.lua_TValue** %18, align 8, !dbg !3512, !tbaa !373
  %20 = sext i32 %1 to i64, !dbg !3513
  %21 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %19, i64 %20, !dbg !3513
  br label %58, !dbg !3514

; <label>:22:                                     ; preds = %15
  switch i32 %1, label %42 [
    i32 -10000, label %23
    i32 -10001, label %27
    i32 -10002, label %40
  ], !dbg !3515

; <label>:23:                                     ; preds = %22
  %24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !3516
  %25 = load %struct.global_State*, %struct.global_State** %24, align 8, !dbg !3516, !tbaa !482
  %26 = getelementptr inbounds %struct.global_State, %struct.global_State* %25, i64 0, i32 20, !dbg !3516
  br label %58, !dbg !3517

; <label>:27:                                     ; preds = %22
  %28 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !3518
  %29 = load %struct.CallInfo*, %struct.CallInfo** %28, align 8, !dbg !3518, !tbaa !418
  %30 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %29, i64 0, i32 1, !dbg !3518
  %31 = bitcast %struct.lua_TValue** %30 to %struct.CClosure***, !dbg !3518
  %32 = load %struct.CClosure**, %struct.CClosure*** %31, align 8, !dbg !3518, !tbaa !600
  %33 = load %struct.CClosure*, %struct.CClosure** %32, align 8, !dbg !3518, !tbaa !510
  %34 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !3520
  %35 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %33, i64 0, i32 6, !dbg !3520
  %36 = bitcast %struct.Table** %35 to i64*, !dbg !3520
  %37 = load i64, i64* %36, align 8, !dbg !3520, !tbaa !510
  %38 = bitcast %struct.lua_TValue* %34 to i64*, !dbg !3520
  store i64 %37, i64* %38, align 8, !dbg !3520, !tbaa !510
  %39 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !3520
  store i32 5, i32* %39, align 8, !dbg !3520, !tbaa !382
  br label %58

; <label>:40:                                     ; preds = %22
  %41 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !3521
  br label %58, !dbg !3522

; <label>:42:                                     ; preds = %22
  %43 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !3523
  %44 = load %struct.CallInfo*, %struct.CallInfo** %43, align 8, !dbg !3523, !tbaa !418
  %45 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %44, i64 0, i32 1, !dbg !3523
  %46 = bitcast %struct.lua_TValue** %45 to %struct.CClosure***, !dbg !3523
  %47 = load %struct.CClosure**, %struct.CClosure*** %46, align 8, !dbg !3523, !tbaa !600
  %48 = load %struct.CClosure*, %struct.CClosure** %47, align 8, !dbg !3523, !tbaa !510
  %49 = sub nsw i32 -10002, %1, !dbg !3525
  %50 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %48, i64 0, i32 4, !dbg !3526
  %51 = load i8, i8* %50, align 1, !dbg !3526, !tbaa !510
  %52 = zext i8 %51 to i32, !dbg !3527
  %53 = icmp sgt i32 %49, %52, !dbg !3528
  br i1 %53, label %58, label %54, !dbg !3529

; <label>:54:                                     ; preds = %42
  %55 = add nsw i32 %49, -1, !dbg !3530
  %56 = sext i32 %55 to i64, !dbg !3531
  %57 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %48, i64 0, i32 8, i64 %56, !dbg !3531
  br label %58, !dbg !3529

; <label>:58:                                     ; preds = %5, %17, %23, %27, %40, %42, %54
  %59 = phi %struct.lua_TValue* [ %14, %5 ], [ %21, %17 ], [ %41, %40 ], [ %34, %27 ], [ %26, %23 ], [ %57, %54 ], [ @luaO_nilobject_, %42 ], !dbg !3532
  %60 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %59, i64 0, i32 1, !dbg !3539
  %61 = load i32, i32* %60, align 8, !dbg !3539, !tbaa !382
  %62 = icmp eq i32 %61, 6, !dbg !3539
  br i1 %62, label %63, label %135, !dbg !3540

; <label>:63:                                     ; preds = %58
  %64 = bitcast %struct.lua_TValue* %59 to %union.Closure**, !dbg !3541
  %65 = load %union.Closure*, %union.Closure** %64, align 8, !dbg !3541, !tbaa !510
  %66 = getelementptr inbounds %union.Closure, %union.Closure* %65, i64 0, i32 0, i32 3, !dbg !3543
  %67 = load i8, i8* %66, align 2, !dbg !3543, !tbaa !510
  %68 = icmp eq i8 %67, 0, !dbg !3544
  br i1 %68, label %80, label %69, !dbg !3545

; <label>:69:                                     ; preds = %63
  %70 = icmp sgt i32 %2, 0, !dbg !3546
  br i1 %70, label %71, label %135, !dbg !3547

; <label>:71:                                     ; preds = %69
  %72 = getelementptr inbounds %union.Closure, %union.Closure* %65, i64 0, i32 0, i32 4, !dbg !3548
  %73 = load i8, i8* %72, align 1, !dbg !3548, !tbaa !510
  %74 = zext i8 %73 to i32, !dbg !3549
  %75 = icmp slt i32 %74, %2, !dbg !3550
  br i1 %75, label %135, label %76, !dbg !3551

; <label>:76:                                     ; preds = %71
  %77 = add nsw i32 %2, -1, !dbg !3552
  %78 = sext i32 %77 to i64, !dbg !3553
  %79 = getelementptr inbounds %union.Closure, %union.Closure* %65, i64 0, i32 0, i32 8, i64 %78, !dbg !3553
  br label %104, !dbg !3554

; <label>:80:                                     ; preds = %63
  %81 = getelementptr inbounds %union.Closure, %union.Closure* %65, i64 0, i32 0, i32 7, !dbg !3555
  %82 = bitcast i32 (%struct.lua_State*)** %81 to %struct.Proto**, !dbg !3555
  %83 = load %struct.Proto*, %struct.Proto** %82, align 8, !dbg !3555, !tbaa !510
  %84 = icmp sgt i32 %2, 0, !dbg !3557
  br i1 %84, label %85, label %135, !dbg !3558

; <label>:85:                                     ; preds = %80
  %86 = getelementptr inbounds %struct.Proto, %struct.Proto* %83, i64 0, i32 10, !dbg !3559
  %87 = load i32, i32* %86, align 8, !dbg !3559, !tbaa !3463
  %88 = icmp slt i32 %87, %2, !dbg !3560
  br i1 %88, label %135, label %89, !dbg !3561

; <label>:89:                                     ; preds = %85
  %90 = getelementptr inbounds %union.Closure, %union.Closure* %65, i64 0, i32 0, i32 8, !dbg !3562
  %91 = bitcast [1 x %struct.lua_TValue]* %90 to [1 x %struct.UpVal*]*, !dbg !3562
  %92 = add nsw i32 %2, -1, !dbg !3563
  %93 = sext i32 %92 to i64, !dbg !3564
  %94 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %91, i64 0, i64 %93, !dbg !3564
  %95 = load %struct.UpVal*, %struct.UpVal** %94, align 8, !dbg !3564, !tbaa !510
  %96 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %95, i64 0, i32 3, !dbg !3565
  %97 = load %struct.lua_TValue*, %struct.lua_TValue** %96, align 8, !dbg !3565, !tbaa !3471
  %98 = getelementptr inbounds %struct.Proto, %struct.Proto* %83, i64 0, i32 8, !dbg !3566
  %99 = load %union.TString**, %union.TString*** %98, align 8, !dbg !3566, !tbaa !3473
  %100 = getelementptr inbounds %union.TString*, %union.TString** %99, i64 %93, !dbg !3566
  %101 = load %union.TString*, %union.TString** %100, align 8, !dbg !3566, !tbaa !869
  %102 = getelementptr inbounds %union.TString, %union.TString* %101, i64 1, !dbg !3566
  %103 = bitcast %union.TString* %102 to i8*, !dbg !3566
  br label %104, !dbg !3567

; <label>:104:                                    ; preds = %89, %76
  %105 = phi %struct.lua_TValue* [ %97, %89 ], [ %79, %76 ]
  %106 = phi i8* [ %103, %89 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %76 ], !dbg !3568
  %107 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !3570
  %108 = load %struct.lua_TValue*, %struct.lua_TValue** %107, align 8, !dbg !3571, !tbaa !373
  %109 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %108, i64 -1, !dbg !3571
  store %struct.lua_TValue* %109, %struct.lua_TValue** %107, align 8, !dbg !3571, !tbaa !373
  %110 = bitcast %struct.lua_TValue* %109 to i64*, !dbg !3572
  %111 = bitcast %struct.lua_TValue* %105 to i64*, !dbg !3572
  %112 = load i64, i64* %110, align 8, !dbg !3572
  store i64 %112, i64* %111, align 8, !dbg !3572
  %113 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %108, i64 -1, i32 1, !dbg !3572
  %114 = load i32, i32* %113, align 8, !dbg !3572, !tbaa !382
  %115 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %105, i64 0, i32 1, !dbg !3572
  store i32 %114, i32* %115, align 8, !dbg !3572, !tbaa !382
  %116 = load %struct.lua_TValue*, %struct.lua_TValue** %107, align 8, !dbg !3573, !tbaa !373
  %117 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %116, i64 0, i32 1, !dbg !3573
  %118 = load i32, i32* %117, align 8, !dbg !3573, !tbaa !382
  %119 = icmp sgt i32 %118, 3, !dbg !3573
  br i1 %119, label %120, label %135, !dbg !3573

; <label>:120:                                    ; preds = %104
  %121 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %116, i64 0, i32 0, i32 0, !dbg !3573
  %122 = load %union.GCObject*, %union.GCObject** %121, align 8, !dbg !3573, !tbaa !510
  %123 = getelementptr inbounds %union.GCObject, %union.GCObject* %122, i64 0, i32 0, i32 2, !dbg !3573
  %124 = load i8, i8* %123, align 1, !dbg !3573, !tbaa !510
  %125 = and i8 %124, 3, !dbg !3573
  %126 = icmp eq i8 %125, 0, !dbg !3573
  br i1 %126, label %135, label %127, !dbg !3573

; <label>:127:                                    ; preds = %120
  %128 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %59, i64 0, i32 0, i32 0, !dbg !3573
  %129 = load %union.GCObject*, %union.GCObject** %128, align 8, !dbg !3573, !tbaa !510
  %130 = getelementptr inbounds %union.GCObject, %union.GCObject* %129, i64 0, i32 0, i32 2, !dbg !3573
  %131 = load i8, i8* %130, align 1, !dbg !3573, !tbaa !510
  %132 = and i8 %131, 4, !dbg !3573
  %133 = icmp eq i8 %132, 0, !dbg !3573
  br i1 %133, label %135, label %134, !dbg !3576

; <label>:134:                                    ; preds = %127
  tail call void @luaC_barrierf(%struct.lua_State* nonnull %0, %union.GCObject* %129, %union.GCObject* %122) #7, !dbg !3573
  br label %135, !dbg !3573

; <label>:135:                                    ; preds = %80, %85, %69, %71, %58, %127, %120, %104, %134
  %136 = phi i8* [ %106, %127 ], [ %106, %120 ], [ %106, %104 ], [ %106, %134 ], [ null, %58 ], [ null, %71 ], [ null, %69 ], [ null, %85 ], [ null, %80 ]
  ret i8* %136, !dbg !3577
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noredzone nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!355, !356, !357}
!llvm.ident = !{!358}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "lua_ident", scope: !2, file: !3, line: 34, type: !352, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !351)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lapi.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!6, !8, !9, !35, !340, !257, !85, !180, !74, !341, !346}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCObject", file: !11, line: 36, baseType: !12)
!11 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lobject.h", directory: "/root/.unikraft/apps/redis/build")
!12 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "GCObject", file: !13, line: 136, size: 1472, elements: !14)
!13 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lstate.h", directory: "/root/.unikraft/apps/redis/build")
!14 = !{!15, !25, !53, !112, !336, !337, !338, !339}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "gch", scope: !12, file: !13, line: 137, baseType: !16, size: 128)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCheader", file: !11, line: 51, baseType: !17)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GCheader", file: !11, line: 49, size: 128, elements: !18)
!18 = !{!19, !20, !24}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !17, file: !11, line: 50, baseType: !9, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !17, file: !11, line: 50, baseType: !21, size: 8, offset: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "lu_byte", file: !22, line: 27, baseType: !23)
!22 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/llimits.h", directory: "/root/.unikraft/apps/redis/build")
!23 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !17, file: !11, line: 50, baseType: !21, size: 8, offset: 72)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !12, file: !13, line: 138, baseType: !26, size: 192)
!26 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "TString", file: !11, line: 199, size: 192, elements: !27)
!27 = !{!28, !38}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !26, file: !11, line: 200, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "L_Umaxalign", file: !22, line: 47, baseType: !30)
!30 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !22, line: 47, size: 64, elements: !31)
!31 = !{!32, !34, !36}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !30, file: !22, line: 47, baseType: !33, size: 64)
!33 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !30, file: !22, line: 47, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !30, file: !22, line: 47, baseType: !37, size: 64)
!37 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "tsv", scope: !26, file: !11, line: 206, baseType: !39, size: 192)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !26, file: !11, line: 201, size: 192, elements: !40)
!40 = !{!41, !42, !43, !44, !45, !47}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !39, file: !11, line: 202, baseType: !9, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !39, file: !11, line: 202, baseType: !21, size: 8, offset: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !39, file: !11, line: 202, baseType: !21, size: 8, offset: 72)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !39, file: !11, line: 203, baseType: !21, size: 8, offset: 80)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !39, file: !11, line: 204, baseType: !46, size: 32, offset: 96)
!46 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !39, file: !11, line: 205, baseType: !48, size: 64, offset: 128)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !49, line: 40, baseType: !50)
!49 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !51, line: 129, baseType: !52)
!51 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!52 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !12, file: !13, line: 139, baseType: !54, size: 320)
!54 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "Udata", file: !11, line: 215, size: 320, elements: !55)
!55 = !{!56, !57}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !54, file: !11, line: 216, baseType: !29, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "uv", scope: !54, file: !11, line: 222, baseType: !58, size: 320)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !54, file: !11, line: 217, size: 320, elements: !59)
!59 = !{!60, !61, !62, !63, !110, !111}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !58, file: !11, line: 218, baseType: !9, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !58, file: !11, line: 218, baseType: !21, size: 8, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !58, file: !11, line: 218, baseType: !21, size: 8, offset: 72)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "metatable", scope: !58, file: !11, line: 219, baseType: !64, size: 64, offset: 128)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Table", file: !11, line: 338, size: 512, elements: !66)
!66 = !{!67, !68, !69, !70, !71, !72, !73, !89, !107, !108, !109}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !65, file: !11, line: 339, baseType: !9, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !65, file: !11, line: 339, baseType: !21, size: 8, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !65, file: !11, line: 339, baseType: !21, size: 8, offset: 72)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !65, file: !11, line: 340, baseType: !21, size: 8, offset: 80)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "lsizenode", scope: !65, file: !11, line: 341, baseType: !21, size: 8, offset: 88)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "metatable", scope: !65, file: !11, line: 342, baseType: !64, size: 64, offset: 128)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "array", scope: !65, file: !11, line: 343, baseType: !74, size: 64, offset: 192)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "TValue", file: !11, line: 75, baseType: !76)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lua_TValue", file: !11, line: 73, size: 128, elements: !77)
!77 = !{!78, !88}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !76, file: !11, line: 74, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "Value", file: !11, line: 64, baseType: !80)
!80 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !11, line: 59, size: 64, elements: !81)
!81 = !{!82, !83, !84, !87}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !80, file: !11, line: 60, baseType: !9, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !80, file: !11, line: 61, baseType: !35, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !80, file: !11, line: 62, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Number", file: !86, line: 99, baseType: !33)
!86 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lua.h", directory: "/root/.unikraft/apps/redis/build")
!87 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !80, file: !11, line: 63, baseType: !8, size: 32)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !76, file: !11, line: 74, baseType: !8, size: 32, offset: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !65, file: !11, line: 344, baseType: !90, size: 64, offset: 256)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "Node", file: !11, line: 335, baseType: !92)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Node", file: !11, line: 332, size: 320, elements: !93)
!93 = !{!94, !95}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "i_val", scope: !92, file: !11, line: 333, baseType: !75, size: 128)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "i_key", scope: !92, file: !11, line: 334, baseType: !96, size: 192, offset: 128)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "TKey", file: !11, line: 329, baseType: !97)
!97 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "TKey", file: !11, line: 323, size: 192, elements: !98)
!98 = !{!99, !106}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "nk", scope: !97, file: !11, line: 327, baseType: !100, size: 192)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !97, file: !11, line: 324, size: 192, elements: !101)
!101 = !{!102, !103, !104}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !100, file: !11, line: 325, baseType: !79, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !100, file: !11, line: 325, baseType: !8, size: 32, offset: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !100, file: !11, line: 326, baseType: !105, size: 64, offset: 128)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "tvk", scope: !97, file: !11, line: 328, baseType: !75, size: 128)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "lastfree", scope: !65, file: !11, line: 345, baseType: !90, size: 64, offset: 320)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !65, file: !11, line: 346, baseType: !9, size: 64, offset: 384)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "sizearray", scope: !65, file: !11, line: 347, baseType: !8, size: 32, offset: 448)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !58, file: !11, line: 220, baseType: !64, size: 64, offset: 192)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !58, file: !11, line: 221, baseType: !48, size: 64, offset: 256)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !12, file: !13, line: 140, baseType: !113, size: 448)
!113 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "Closure", file: !11, line: 309, size: 448, elements: !114)
!114 = !{!115, !285}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !113, file: !11, line: 310, baseType: !116, size: 448)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "CClosure", file: !11, line: 299, baseType: !117)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CClosure", file: !11, line: 295, size: 448, elements: !118)
!118 = !{!119, !120, !121, !122, !123, !124, !125, !126, !281}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !117, file: !11, line: 296, baseType: !9, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !117, file: !11, line: 296, baseType: !21, size: 8, offset: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !117, file: !11, line: 296, baseType: !21, size: 8, offset: 72)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "isC", scope: !117, file: !11, line: 296, baseType: !21, size: 8, offset: 80)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "nupvalues", scope: !117, file: !11, line: 296, baseType: !21, size: 8, offset: 88)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !117, file: !11, line: 296, baseType: !9, size: 64, offset: 128)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !117, file: !11, line: 296, baseType: !64, size: 64, offset: 192)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !117, file: !11, line: 297, baseType: !127, size: 64, offset: 256)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_CFunction", file: !86, line: 52, baseType: !128)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DISubroutineType(types: !130)
!130 = !{!8, !131}
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_State", file: !86, line: 50, baseType: !133)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lua_State", file: !13, line: 100, size: 1472, elements: !134)
!134 = !{!135, !136, !137, !138, !139, !141, !142, !218, !232, !233, !234, !235, !236, !237, !238, !239, !241, !242, !243, !244, !245, !246, !271, !272, !273, !274, !275, !278}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !133, file: !13, line: 101, baseType: !9, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !133, file: !13, line: 101, baseType: !21, size: 8, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !133, file: !13, line: 101, baseType: !21, size: 8, offset: 72)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !133, file: !13, line: 102, baseType: !21, size: 8, offset: 80)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !133, file: !13, line: 103, baseType: !140, size: 64, offset: 128)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "StkId", file: !11, line: 193, baseType: !74)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !133, file: !13, line: 104, baseType: !140, size: 64, offset: 192)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "l_G", scope: !133, file: !13, line: 105, baseType: !143, size: 64, offset: 256)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "global_State", file: !13, line: 94, baseType: !145)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "global_State", file: !13, line: 68, size: 3456, elements: !146)
!146 = !{!147, !156, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !179, !181, !182, !183, !184, !185, !186, !187, !188, !190, !208, !212}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "strt", scope: !145, file: !13, line: 69, baseType: !148, size: 128)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "stringtable", file: !13, line: 42, baseType: !149)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stringtable", file: !13, line: 38, size: 128, elements: !150)
!150 = !{!151, !153, !155}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !149, file: !13, line: 39, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "nuse", scope: !149, file: !13, line: 40, baseType: !154, size: 32, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "lu_int32", file: !22, line: 18, baseType: !46)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !149, file: !13, line: 41, baseType: !8, size: 32, offset: 96)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "frealloc", scope: !145, file: !13, line: 70, baseType: !157, size: 64, offset: 128)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Alloc", file: !86, line: 66, baseType: !158)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DISubroutineType(types: !160)
!160 = !{!35, !35, !35, !48, !48}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "ud", scope: !145, file: !13, line: 71, baseType: !35, size: 64, offset: 192)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "currentwhite", scope: !145, file: !13, line: 72, baseType: !21, size: 8, offset: 256)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "gcstate", scope: !145, file: !13, line: 73, baseType: !21, size: 8, offset: 264)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "sweepstrgc", scope: !145, file: !13, line: 74, baseType: !8, size: 32, offset: 288)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "rootgc", scope: !145, file: !13, line: 75, baseType: !9, size: 64, offset: 320)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "sweepgc", scope: !145, file: !13, line: 76, baseType: !152, size: 64, offset: 384)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "gray", scope: !145, file: !13, line: 77, baseType: !9, size: 64, offset: 448)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "grayagain", scope: !145, file: !13, line: 78, baseType: !9, size: 64, offset: 512)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "weak", scope: !145, file: !13, line: 79, baseType: !9, size: 64, offset: 576)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "tmudata", scope: !145, file: !13, line: 80, baseType: !9, size: 64, offset: 640)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "buff", scope: !145, file: !13, line: 81, baseType: !172, size: 192, offset: 704)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "Mbuffer", file: !173, line: 28, baseType: !174)
!173 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lzio.h", directory: "/root/.unikraft/apps/redis/build")
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Mbuffer", file: !173, line: 24, size: 192, elements: !175)
!175 = !{!176, !177, !178}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !174, file: !173, line: 25, baseType: !6, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !174, file: !173, line: 26, baseType: !48, size: 64, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "buffsize", scope: !174, file: !173, line: 27, baseType: !48, size: 64, offset: 128)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "GCthreshold", scope: !145, file: !13, line: 82, baseType: !180, size: 64, offset: 896)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "lu_mem", file: !22, line: 20, baseType: !48)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "totalbytes", scope: !145, file: !13, line: 83, baseType: !180, size: 64, offset: 960)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "estimate", scope: !145, file: !13, line: 84, baseType: !180, size: 64, offset: 1024)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "gcdept", scope: !145, file: !13, line: 85, baseType: !180, size: 64, offset: 1088)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "gcpause", scope: !145, file: !13, line: 86, baseType: !8, size: 32, offset: 1152)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "gcstepmul", scope: !145, file: !13, line: 87, baseType: !8, size: 32, offset: 1184)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "panic", scope: !145, file: !13, line: 88, baseType: !127, size: 64, offset: 1216)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "l_registry", scope: !145, file: !13, line: 89, baseType: !75, size: 128, offset: 1280)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "mainthread", scope: !145, file: !13, line: 90, baseType: !189, size: 64, offset: 1408)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "uvhead", scope: !145, file: !13, line: 91, baseType: !191, size: 320, offset: 1472)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "UpVal", file: !11, line: 284, baseType: !192)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "UpVal", file: !11, line: 274, size: 320, elements: !193)
!193 = !{!194, !195, !196, !197, !198}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !192, file: !11, line: 275, baseType: !9, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !192, file: !11, line: 275, baseType: !21, size: 8, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !192, file: !11, line: 275, baseType: !21, size: 8, offset: 72)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !192, file: !11, line: 276, baseType: !74, size: 64, offset: 128)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !192, file: !11, line: 283, baseType: !199, size: 128, offset: 192)
!199 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !192, file: !11, line: 277, size: 128, elements: !200)
!200 = !{!201, !202}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !199, file: !11, line: 278, baseType: !75, size: 128)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !199, file: !11, line: 282, baseType: !203, size: 128)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !199, file: !11, line: 279, size: 128, elements: !204)
!204 = !{!205, !207}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !203, file: !11, line: 280, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !203, file: !11, line: 281, baseType: !206, size: 64, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "mt", scope: !145, file: !13, line: 92, baseType: !209, size: 576, offset: 1792)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 576, elements: !210)
!210 = !{!211}
!211 = !DISubrange(count: 9)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "tmname", scope: !145, file: !13, line: 93, baseType: !213, size: 1088, offset: 2368)
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 1088, elements: !216)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "TString", file: !11, line: 207, baseType: !26)
!216 = !{!217}
!217 = !DISubrange(count: 17)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "ci", scope: !133, file: !13, line: 106, baseType: !219, size: 64, offset: 320)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "CallInfo", file: !13, line: 55, baseType: !221)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CallInfo", file: !13, line: 48, size: 320, elements: !222)
!222 = !{!223, !224, !225, !226, !230, !231}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !221, file: !13, line: 49, baseType: !140, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !221, file: !13, line: 50, baseType: !140, size: 64, offset: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !221, file: !13, line: 51, baseType: !140, size: 64, offset: 128)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "savedpc", scope: !221, file: !13, line: 52, baseType: !227, size: 64, offset: 192)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !229)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "Instruction", file: !22, line: 88, baseType: !154)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "nresults", scope: !221, file: !13, line: 53, baseType: !8, size: 32, offset: 256)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "tailcalls", scope: !221, file: !13, line: 54, baseType: !8, size: 32, offset: 288)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "savedpc", scope: !133, file: !13, line: 107, baseType: !227, size: 64, offset: 384)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "stack_last", scope: !133, file: !13, line: 108, baseType: !140, size: 64, offset: 448)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !133, file: !13, line: 109, baseType: !140, size: 64, offset: 512)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "end_ci", scope: !133, file: !13, line: 110, baseType: !219, size: 64, offset: 576)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "base_ci", scope: !133, file: !13, line: 111, baseType: !219, size: 64, offset: 640)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "stacksize", scope: !133, file: !13, line: 112, baseType: !8, size: 32, offset: 704)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "size_ci", scope: !133, file: !13, line: 113, baseType: !8, size: 32, offset: 736)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "nCcalls", scope: !133, file: !13, line: 114, baseType: !240, size: 16, offset: 768)
!240 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "baseCcalls", scope: !133, file: !13, line: 115, baseType: !240, size: 16, offset: 784)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "hookmask", scope: !133, file: !13, line: 116, baseType: !21, size: 8, offset: 800)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "allowhook", scope: !133, file: !13, line: 117, baseType: !21, size: 8, offset: 808)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "basehookcount", scope: !133, file: !13, line: 118, baseType: !8, size: 32, offset: 832)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "hookcount", scope: !133, file: !13, line: 119, baseType: !8, size: 32, offset: 864)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "hook", scope: !133, file: !13, line: 120, baseType: !247, size: 64, offset: 896)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Hook", file: !86, line: 330, baseType: !248)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DISubroutineType(types: !250)
!250 = !{null, !131, !251}
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Debug", file: !86, line: 326, baseType: !253)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lua_Debug", file: !86, line: 346, size: 960, elements: !254)
!254 = !{!255, !256, !259, !260, !261, !262, !263, !264, !265, !266, !270}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !253, file: !86, line: 347, baseType: !8, size: 32)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !253, file: !86, line: 348, baseType: !257, size: 64, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "namewhat", scope: !253, file: !86, line: 349, baseType: !257, size: 64, offset: 128)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "what", scope: !253, file: !86, line: 350, baseType: !257, size: 64, offset: 192)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !253, file: !86, line: 351, baseType: !257, size: 64, offset: 256)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "currentline", scope: !253, file: !86, line: 352, baseType: !8, size: 32, offset: 320)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "nups", scope: !253, file: !86, line: 353, baseType: !8, size: 32, offset: 352)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "linedefined", scope: !253, file: !86, line: 354, baseType: !8, size: 32, offset: 384)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "lastlinedefined", scope: !253, file: !86, line: 355, baseType: !8, size: 32, offset: 416)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "short_src", scope: !253, file: !86, line: 356, baseType: !267, size: 480, offset: 448)
!267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 480, elements: !268)
!268 = !{!269}
!269 = !DISubrange(count: 60)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "i_ci", scope: !253, file: !86, line: 358, baseType: !8, size: 32, offset: 928)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "l_gt", scope: !133, file: !13, line: 121, baseType: !75, size: 128, offset: 960)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !133, file: !13, line: 122, baseType: !75, size: 128, offset: 1088)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "openupval", scope: !133, file: !13, line: 123, baseType: !9, size: 64, offset: 1216)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !133, file: !13, line: 124, baseType: !9, size: 64, offset: 1280)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "errorJmp", scope: !133, file: !13, line: 125, baseType: !276, size: 64, offset: 1344)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DICompositeType(tag: DW_TAG_structure_type, name: "lua_longjmp", file: !13, line: 18, flags: DIFlagFwdDecl)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "errfunc", scope: !133, file: !13, line: 126, baseType: !279, size: 64, offset: 1408)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !280, line: 49, baseType: !37)
!280 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!281 = !DIDerivedType(tag: DW_TAG_member, name: "upvalue", scope: !117, file: !11, line: 298, baseType: !282, size: 128, offset: 320)
!282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 128, elements: !283)
!283 = !{!284}
!284 = !DISubrange(count: 1)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !113, file: !11, line: 311, baseType: !286, size: 384)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "LClosure", file: !11, line: 306, baseType: !287)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LClosure", file: !11, line: 302, size: 384, elements: !288)
!288 = !{!289, !290, !291, !292, !293, !294, !295, !296, !333}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !287, file: !11, line: 303, baseType: !9, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !287, file: !11, line: 303, baseType: !21, size: 8, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !287, file: !11, line: 303, baseType: !21, size: 8, offset: 72)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "isC", scope: !287, file: !11, line: 303, baseType: !21, size: 8, offset: 80)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "nupvalues", scope: !287, file: !11, line: 303, baseType: !21, size: 8, offset: 88)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !287, file: !11, line: 303, baseType: !9, size: 64, offset: 128)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !287, file: !11, line: 303, baseType: !64, size: 64, offset: 192)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !287, file: !11, line: 304, baseType: !297, size: 64, offset: 256)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Proto", file: !11, line: 231, size: 960, elements: !299)
!299 = !{!300, !301, !302, !303, !304, !306, !308, !310, !317, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !298, file: !11, line: 232, baseType: !9, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !298, file: !11, line: 232, baseType: !21, size: 8, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !298, file: !11, line: 232, baseType: !21, size: 8, offset: 72)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !298, file: !11, line: 233, baseType: !74, size: 64, offset: 128)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !298, file: !11, line: 234, baseType: !305, size: 64, offset: 192)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !298, file: !11, line: 235, baseType: !307, size: 64, offset: 256)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "lineinfo", scope: !298, file: !11, line: 236, baseType: !309, size: 64, offset: 320)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "locvars", scope: !298, file: !11, line: 237, baseType: !311, size: 64, offset: 384)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LocVar", file: !11, line: 262, size: 128, elements: !313)
!313 = !{!314, !315, !316}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "varname", scope: !312, file: !11, line: 263, baseType: !214, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "startpc", scope: !312, file: !11, line: 264, baseType: !8, size: 32, offset: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "endpc", scope: !312, file: !11, line: 265, baseType: !8, size: 32, offset: 96)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "upvalues", scope: !298, file: !11, line: 238, baseType: !318, size: 64, offset: 448)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !298, file: !11, line: 239, baseType: !214, size: 64, offset: 512)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "sizeupvalues", scope: !298, file: !11, line: 240, baseType: !8, size: 32, offset: 576)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "sizek", scope: !298, file: !11, line: 241, baseType: !8, size: 32, offset: 608)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "sizecode", scope: !298, file: !11, line: 242, baseType: !8, size: 32, offset: 640)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "sizelineinfo", scope: !298, file: !11, line: 243, baseType: !8, size: 32, offset: 672)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "sizep", scope: !298, file: !11, line: 244, baseType: !8, size: 32, offset: 704)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "sizelocvars", scope: !298, file: !11, line: 245, baseType: !8, size: 32, offset: 736)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "linedefined", scope: !298, file: !11, line: 246, baseType: !8, size: 32, offset: 768)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "lastlinedefined", scope: !298, file: !11, line: 247, baseType: !8, size: 32, offset: 800)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !298, file: !11, line: 248, baseType: !9, size: 64, offset: 832)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "nups", scope: !298, file: !11, line: 249, baseType: !21, size: 8, offset: 896)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "numparams", scope: !298, file: !11, line: 250, baseType: !21, size: 8, offset: 904)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "is_vararg", scope: !298, file: !11, line: 251, baseType: !21, size: 8, offset: 912)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "maxstacksize", scope: !298, file: !11, line: 252, baseType: !21, size: 8, offset: 920)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "upvals", scope: !287, file: !11, line: 305, baseType: !334, size: 64, offset: 320)
!334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 64, elements: !283)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "h", scope: !12, file: !13, line: 141, baseType: !65, size: 512)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !12, file: !13, line: 142, baseType: !298, size: 960)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "uv", scope: !12, file: !13, line: 143, baseType: !192, size: 320)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "th", scope: !12, file: !13, line: 144, baseType: !133, size: 1472)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Integer", file: !86, line: 103, baseType: !279)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CallS", file: !3, line: 792, size: 128, elements: !343)
!343 = !{!344, !345}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !342, file: !3, line: 793, baseType: !140, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "nresults", scope: !342, file: !3, line: 794, baseType: !8, size: 32, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CCallS", file: !3, line: 831, size: 128, elements: !348)
!348 = !{!349, !350}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !347, file: !3, line: 832, baseType: !127, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "ud", scope: !347, file: !3, line: 833, baseType: !35, size: 64, offset: 64)
!351 = !{!0}
!352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !258, size: 1128, elements: !353)
!353 = !{!354}
!354 = !DISubrange(count: 141)
!355 = !{i32 2, !"Dwarf Version", i32 4}
!356 = !{i32 2, !"Debug Info Version", i32 3}
!357 = !{i32 1, !"wchar_size", i32 4}
!358 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!359 = distinct !DISubprogram(name: "luaA_pushobject", scope: !3, file: !3, line: 89, type: !360, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !364)
!360 = !DISubroutineType(types: !361)
!361 = !{null, !131, !362}
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!364 = !{!365, !366, !367, !369}
!365 = !DILocalVariable(name: "L", arg: 1, scope: !359, file: !3, line: 89, type: !131)
!366 = !DILocalVariable(name: "o", arg: 2, scope: !359, file: !3, line: 89, type: !362)
!367 = !DILocalVariable(name: "o2", scope: !368, file: !3, line: 90, type: !362)
!368 = distinct !DILexicalBlock(scope: !359, file: !3, line: 90, column: 3)
!369 = !DILocalVariable(name: "o1", scope: !368, file: !3, line: 90, type: !74)
!370 = !DILocation(line: 89, column: 34, scope: !359)
!371 = !DILocation(line: 89, column: 51, scope: !359)
!372 = !DILocation(line: 90, column: 3, scope: !368)
!373 = !{!374, !375, i64 16}
!374 = !{!"lua_State", !375, i64 0, !376, i64 8, !376, i64 9, !376, i64 10, !375, i64 16, !375, i64 24, !375, i64 32, !375, i64 40, !375, i64 48, !375, i64 56, !375, i64 64, !375, i64 72, !375, i64 80, !378, i64 88, !378, i64 92, !379, i64 96, !379, i64 98, !376, i64 100, !376, i64 101, !378, i64 104, !378, i64 108, !375, i64 112, !380, i64 120, !380, i64 136, !375, i64 152, !375, i64 160, !375, i64 168, !381, i64 176}
!375 = !{!"any pointer", !376, i64 0}
!376 = !{!"omnipotent char", !377, i64 0}
!377 = !{!"Simple C/C++ TBAA"}
!378 = !{!"int", !376, i64 0}
!379 = !{!"short", !376, i64 0}
!380 = !{!"lua_TValue", !376, i64 0, !378, i64 8}
!381 = !{!"long", !376, i64 0}
!382 = !{!380, !378, i64 8}
!383 = !DILocation(line: 91, column: 3, scope: !384)
!384 = distinct !DILexicalBlock(scope: !359, file: !3, line: 91, column: 3)
!385 = !DILocation(line: 92, column: 1, scope: !359)
!386 = distinct !DISubprogram(name: "lua_checkstack", scope: !3, file: !3, line: 95, type: !387, isLocal: false, isDefinition: true, scopeLine: 95, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !389)
!387 = !DISubroutineType(types: !388)
!388 = !{!8, !131, !8}
!389 = !{!390, !391, !392}
!390 = !DILocalVariable(name: "L", arg: 1, scope: !386, file: !3, line: 95, type: !131)
!391 = !DILocalVariable(name: "size", arg: 2, scope: !386, file: !3, line: 95, type: !8)
!392 = !DILocalVariable(name: "res", scope: !386, file: !3, line: 96, type: !8)
!393 = !DILocation(line: 95, column: 40, scope: !386)
!394 = !DILocation(line: 95, column: 47, scope: !386)
!395 = !DILocation(line: 96, column: 7, scope: !386)
!396 = !DILocation(line: 98, column: 12, scope: !397)
!397 = distinct !DILexicalBlock(scope: !386, file: !3, line: 98, column: 7)
!398 = !DILocation(line: 98, column: 29, scope: !397)
!399 = !DILocation(line: 98, column: 36, scope: !397)
!400 = !DILocation(line: 98, column: 45, scope: !397)
!401 = !{!374, !375, i64 24}
!402 = !DILocation(line: 98, column: 40, scope: !397)
!403 = !DILocation(line: 98, column: 52, scope: !397)
!404 = !DILocation(line: 98, column: 50, scope: !397)
!405 = !DILocation(line: 98, column: 58, scope: !397)
!406 = !DILocation(line: 98, column: 7, scope: !386)
!407 = !DILocation(line: 100, column: 17, scope: !408)
!408 = distinct !DILexicalBlock(scope: !397, file: !3, line: 100, column: 12)
!409 = !DILocation(line: 100, column: 12, scope: !397)
!410 = !DILocation(line: 101, column: 5, scope: !411)
!411 = distinct !DILexicalBlock(scope: !412, file: !3, line: 101, column: 5)
!412 = distinct !DILexicalBlock(scope: !408, file: !3, line: 100, column: 22)
!413 = !{!374, !375, i64 56}
!414 = !DILocation(line: 101, column: 5, scope: !412)
!415 = !DILocation(line: 102, column: 25, scope: !416)
!416 = distinct !DILexicalBlock(scope: !412, file: !3, line: 102, column: 9)
!417 = !DILocation(line: 102, column: 12, scope: !416)
!418 = !{!374, !375, i64 40}
!419 = !DILocation(line: 102, column: 16, scope: !416)
!420 = !{!421, !375, i64 16}
!421 = !{!"CallInfo", !375, i64 0, !375, i64 8, !375, i64 16, !375, i64 24, !378, i64 32, !378, i64 36}
!422 = !DILocation(line: 102, column: 29, scope: !416)
!423 = !DILocation(line: 102, column: 20, scope: !416)
!424 = !DILocation(line: 102, column: 9, scope: !412)
!425 = !DILocation(line: 103, column: 18, scope: !416)
!426 = !DILocation(line: 103, column: 7, scope: !416)
!427 = !DILocation(line: 0, scope: !386)
!428 = !DILocation(line: 106, column: 3, scope: !386)
!429 = distinct !DISubprogram(name: "lua_xmove", scope: !3, file: !3, line: 110, type: !430, isLocal: false, isDefinition: true, scopeLine: 110, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !432)
!430 = !DISubroutineType(types: !431)
!431 = !{null, !131, !131, !8}
!432 = !{!433, !434, !435, !436, !437, !442}
!433 = !DILocalVariable(name: "from", arg: 1, scope: !429, file: !3, line: 110, type: !131)
!434 = !DILocalVariable(name: "to", arg: 2, scope: !429, file: !3, line: 110, type: !131)
!435 = !DILocalVariable(name: "n", arg: 3, scope: !429, file: !3, line: 110, type: !8)
!436 = !DILocalVariable(name: "i", scope: !429, file: !3, line: 111, type: !8)
!437 = !DILocalVariable(name: "o2", scope: !438, file: !3, line: 119, type: !362)
!438 = distinct !DILexicalBlock(scope: !439, file: !3, line: 119, column: 5)
!439 = distinct !DILexicalBlock(scope: !440, file: !3, line: 118, column: 27)
!440 = distinct !DILexicalBlock(scope: !441, file: !3, line: 118, column: 3)
!441 = distinct !DILexicalBlock(scope: !429, file: !3, line: 118, column: 3)
!442 = !DILocalVariable(name: "o1", scope: !438, file: !3, line: 119, type: !74)
!443 = !DILocation(line: 110, column: 36, scope: !429)
!444 = !DILocation(line: 110, column: 53, scope: !429)
!445 = !DILocation(line: 110, column: 61, scope: !429)
!446 = !DILocation(line: 112, column: 12, scope: !447)
!447 = distinct !DILexicalBlock(scope: !429, file: !3, line: 112, column: 7)
!448 = !DILocation(line: 112, column: 7, scope: !429)
!449 = !DILocation(line: 117, column: 9, scope: !429)
!450 = !DILocation(line: 117, column: 13, scope: !429)
!451 = !DILocation(line: 111, column: 7, scope: !429)
!452 = !DILocation(line: 118, column: 17, scope: !440)
!453 = !DILocation(line: 118, column: 3, scope: !441)
!454 = !DILocation(line: 119, column: 5, scope: !438)
!455 = distinct !{!455, !453, !456}
!456 = !DILocation(line: 120, column: 3, scope: !441)
!457 = !DILocation(line: 118, column: 23, scope: !440)
!458 = !DILocation(line: 122, column: 1, scope: !429)
!459 = distinct !DISubprogram(name: "lua_setlevel", scope: !3, file: !3, line: 125, type: !460, isLocal: false, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !462)
!460 = !DISubroutineType(types: !461)
!461 = !{null, !131, !131}
!462 = !{!463, !464}
!463 = !DILocalVariable(name: "from", arg: 1, scope: !459, file: !3, line: 125, type: !131)
!464 = !DILocalVariable(name: "to", arg: 2, scope: !459, file: !3, line: 125, type: !131)
!465 = !DILocation(line: 125, column: 39, scope: !459)
!466 = !DILocation(line: 125, column: 56, scope: !459)
!467 = !DILocation(line: 126, column: 23, scope: !459)
!468 = !{!374, !379, i64 96}
!469 = !DILocation(line: 126, column: 7, scope: !459)
!470 = !DILocation(line: 126, column: 15, scope: !459)
!471 = !DILocation(line: 127, column: 1, scope: !459)
!472 = distinct !DISubprogram(name: "lua_atpanic", scope: !3, file: !3, line: 130, type: !473, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !475)
!473 = !DISubroutineType(types: !474)
!474 = !{!127, !131, !127}
!475 = !{!476, !477, !478}
!476 = !DILocalVariable(name: "L", arg: 1, scope: !472, file: !3, line: 130, type: !131)
!477 = !DILocalVariable(name: "panicf", arg: 2, scope: !472, file: !3, line: 130, type: !127)
!478 = !DILocalVariable(name: "old", scope: !472, file: !3, line: 131, type: !127)
!479 = !DILocation(line: 130, column: 47, scope: !472)
!480 = !DILocation(line: 130, column: 64, scope: !472)
!481 = !DILocation(line: 133, column: 9, scope: !472)
!482 = !{!374, !375, i64 32}
!483 = !DILocation(line: 133, column: 15, scope: !472)
!484 = !{!485, !375, i64 152}
!485 = !{!"global_State", !486, i64 0, !375, i64 16, !375, i64 24, !376, i64 32, !376, i64 33, !378, i64 36, !375, i64 40, !375, i64 48, !375, i64 56, !375, i64 64, !375, i64 72, !375, i64 80, !487, i64 88, !381, i64 112, !381, i64 120, !381, i64 128, !381, i64 136, !378, i64 144, !378, i64 148, !375, i64 152, !380, i64 160, !375, i64 176, !488, i64 184, !376, i64 224, !376, i64 296}
!486 = !{!"stringtable", !375, i64 0, !378, i64 8, !378, i64 12}
!487 = !{!"Mbuffer", !375, i64 0, !381, i64 8, !381, i64 16}
!488 = !{!"UpVal", !375, i64 0, !376, i64 8, !376, i64 9, !375, i64 16, !376, i64 24}
!489 = !DILocation(line: 131, column: 17, scope: !472)
!490 = !DILocation(line: 134, column: 15, scope: !472)
!491 = !DILocation(line: 136, column: 3, scope: !472)
!492 = distinct !DISubprogram(name: "lua_newthread", scope: !3, file: !3, line: 140, type: !493, isLocal: false, isDefinition: true, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !495)
!493 = !DISubroutineType(types: !494)
!494 = !{!131, !131}
!495 = !{!496, !497, !498}
!496 = !DILocalVariable(name: "L", arg: 1, scope: !492, file: !3, line: 140, type: !131)
!497 = !DILocalVariable(name: "L1", scope: !492, file: !3, line: 141, type: !131)
!498 = !DILocalVariable(name: "i_o", scope: !499, file: !3, line: 145, type: !74)
!499 = distinct !DILexicalBlock(scope: !492, file: !3, line: 145, column: 3)
!500 = !DILocation(line: 140, column: 46, scope: !492)
!501 = !DILocation(line: 143, column: 3, scope: !502)
!502 = distinct !DILexicalBlock(scope: !503, file: !3, line: 143, column: 3)
!503 = distinct !DILexicalBlock(scope: !492, file: !3, line: 143, column: 3)
!504 = !{!485, !381, i64 120}
!505 = !{!485, !381, i64 112}
!506 = !DILocation(line: 143, column: 3, scope: !503)
!507 = !DILocation(line: 144, column: 8, scope: !492)
!508 = !DILocation(line: 141, column: 14, scope: !492)
!509 = !DILocation(line: 145, column: 3, scope: !499)
!510 = !{!376, !376, i64 0}
!511 = !DILocation(line: 146, column: 3, scope: !512)
!512 = distinct !DILexicalBlock(scope: !492, file: !3, line: 146, column: 3)
!513 = !DILocation(line: 149, column: 3, scope: !492)
!514 = distinct !DISubprogram(name: "lua_gettop", scope: !3, file: !3, line: 159, type: !129, isLocal: false, isDefinition: true, scopeLine: 159, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !515)
!515 = !{!516}
!516 = !DILocalVariable(name: "L", arg: 1, scope: !514, file: !3, line: 159, type: !131)
!517 = !DILocation(line: 159, column: 36, scope: !514)
!518 = !DILocation(line: 160, column: 10, scope: !514)
!519 = !DILocation(line: 160, column: 3, scope: !514)
!520 = distinct !DISubprogram(name: "lua_settop", scope: !3, file: !3, line: 164, type: !521, isLocal: false, isDefinition: true, scopeLine: 164, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !523)
!521 = !DISubroutineType(types: !522)
!522 = !{null, !131, !8}
!523 = !{!524, !525}
!524 = !DILocalVariable(name: "L", arg: 1, scope: !520, file: !3, line: 164, type: !131)
!525 = !DILocalVariable(name: "idx", arg: 2, scope: !520, file: !3, line: 164, type: !8)
!526 = !DILocation(line: 164, column: 37, scope: !520)
!527 = !DILocation(line: 164, column: 44, scope: !520)
!528 = !DILocation(line: 166, column: 11, scope: !529)
!529 = distinct !DILexicalBlock(scope: !520, file: !3, line: 166, column: 7)
!530 = !DILocation(line: 166, column: 7, scope: !520)
!531 = !DILocation(line: 168, column: 15, scope: !532)
!532 = distinct !DILexicalBlock(scope: !529, file: !3, line: 166, column: 17)
!533 = !DILocation(line: 168, column: 24, scope: !532)
!534 = !DILocation(line: 168, column: 29, scope: !532)
!535 = !DILocation(line: 168, column: 19, scope: !532)
!536 = !DILocation(line: 168, column: 5, scope: !532)
!537 = !DILocation(line: 169, column: 7, scope: !532)
!538 = distinct !{!538, !539}
!539 = !{!"llvm.loop.unroll.disable"}
!540 = distinct !{!540, !536, !537}
!541 = !DILocation(line: 170, column: 12, scope: !532)
!542 = !DILocation(line: 171, column: 3, scope: !532)
!543 = !DILocation(line: 174, column: 18, scope: !544)
!544 = distinct !DILexicalBlock(scope: !529, file: !3, line: 172, column: 8)
!545 = !DILocation(line: 174, column: 8, scope: !544)
!546 = !DILocation(line: 174, column: 12, scope: !544)
!547 = !DILocation(line: 177, column: 1, scope: !520)
!548 = distinct !DISubprogram(name: "lua_remove", scope: !3, file: !3, line: 180, type: !521, isLocal: false, isDefinition: true, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !549)
!549 = !{!550, !551, !552, !553, !555}
!550 = !DILocalVariable(name: "L", arg: 1, scope: !548, file: !3, line: 180, type: !131)
!551 = !DILocalVariable(name: "idx", arg: 2, scope: !548, file: !3, line: 180, type: !8)
!552 = !DILocalVariable(name: "p", scope: !548, file: !3, line: 181, type: !140)
!553 = !DILocalVariable(name: "o2", scope: !554, file: !3, line: 185, type: !362)
!554 = distinct !DILexicalBlock(scope: !548, file: !3, line: 185, column: 24)
!555 = !DILocalVariable(name: "o1", scope: !554, file: !3, line: 185, type: !74)
!556 = !DILocation(line: 180, column: 37, scope: !548)
!557 = !DILocation(line: 180, column: 44, scope: !548)
!558 = !DILocalVariable(name: "L", arg: 1, scope: !559, file: !3, line: 49, type: !131)
!559 = distinct !DISubprogram(name: "index2adr", scope: !3, file: !3, line: 49, type: !560, isLocal: true, isDefinition: true, scopeLine: 49, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !562)
!560 = !DISubroutineType(types: !561)
!561 = !{!74, !131, !8}
!562 = !{!558, !563, !564, !567, !573, !575}
!563 = !DILocalVariable(name: "idx", arg: 2, scope: !559, file: !3, line: 49, type: !8)
!564 = !DILocalVariable(name: "o", scope: !565, file: !3, line: 51, type: !74)
!565 = distinct !DILexicalBlock(scope: !566, file: !3, line: 50, column: 16)
!566 = distinct !DILexicalBlock(scope: !559, file: !3, line: 50, column: 7)
!567 = !DILocalVariable(name: "func", scope: !568, file: !3, line: 63, type: !571)
!568 = distinct !DILexicalBlock(scope: !569, file: !3, line: 62, column: 28)
!569 = distinct !DILexicalBlock(scope: !570, file: !3, line: 60, column: 21)
!570 = distinct !DILexicalBlock(scope: !566, file: !3, line: 56, column: 12)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "Closure", file: !11, line: 312, baseType: !113)
!573 = !DILocalVariable(name: "i_o", scope: !574, file: !3, line: 64, type: !74)
!574 = distinct !DILexicalBlock(scope: !568, file: !3, line: 64, column: 7)
!575 = !DILocalVariable(name: "func", scope: !576, file: !3, line: 69, type: !571)
!576 = distinct !DILexicalBlock(scope: !569, file: !3, line: 68, column: 14)
!577 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !578)
!578 = distinct !DILocation(line: 183, column: 7, scope: !548)
!579 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !578)
!580 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !578)
!581 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !578)
!582 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !578)
!583 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !578)
!584 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !578)
!585 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !578)
!586 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !578)
!587 = distinct !DILexicalBlock(scope: !565, file: !3, line: 53, column: 9)
!588 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !578)
!589 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !578)
!590 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !578)
!591 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !578)
!592 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !578)
!593 = distinct !DILexicalBlock(scope: !570, file: !3, line: 56, column: 37)
!594 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !578)
!595 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !578)
!596 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !578)
!597 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !578)
!598 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !578)
!599 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !578)
!600 = !{!421, !375, i64 8}
!601 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !578)
!602 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !578)
!603 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !578)
!604 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !578)
!605 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !578)
!606 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !578)
!607 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !578)
!608 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !578)
!609 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !578)
!610 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !578)
!611 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !578)
!612 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !578)
!613 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !578)
!614 = !DILocation(line: 0, scope: !569, inlinedAt: !578)
!615 = !DILocation(line: 181, column: 9, scope: !548)
!616 = !DILocation(line: 185, column: 10, scope: !548)
!617 = !DILocation(line: 185, column: 19, scope: !548)
!618 = !DILocation(line: 185, column: 14, scope: !548)
!619 = !DILocation(line: 185, column: 3, scope: !548)
!620 = !DILocation(line: 185, column: 24, scope: !554)
!621 = distinct !{!621, !619, !622}
!622 = !DILocation(line: 185, column: 24, scope: !548)
!623 = !DILocation(line: 186, column: 9, scope: !548)
!624 = !DILocation(line: 188, column: 1, scope: !548)
!625 = distinct !DISubprogram(name: "lua_insert", scope: !3, file: !3, line: 191, type: !521, isLocal: false, isDefinition: true, scopeLine: 191, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !626)
!626 = !{!627, !628, !629, !630, !631, !635, !636, !638}
!627 = !DILocalVariable(name: "L", arg: 1, scope: !625, file: !3, line: 191, type: !131)
!628 = !DILocalVariable(name: "idx", arg: 2, scope: !625, file: !3, line: 191, type: !8)
!629 = !DILocalVariable(name: "p", scope: !625, file: !3, line: 192, type: !140)
!630 = !DILocalVariable(name: "q", scope: !625, file: !3, line: 193, type: !140)
!631 = !DILocalVariable(name: "o2", scope: !632, file: !3, line: 197, type: !362)
!632 = distinct !DILexicalBlock(scope: !633, file: !3, line: 197, column: 30)
!633 = distinct !DILexicalBlock(scope: !634, file: !3, line: 197, column: 3)
!634 = distinct !DILexicalBlock(scope: !625, file: !3, line: 197, column: 3)
!635 = !DILocalVariable(name: "o1", scope: !632, file: !3, line: 197, type: !74)
!636 = !DILocalVariable(name: "o2", scope: !637, file: !3, line: 198, type: !362)
!637 = distinct !DILexicalBlock(scope: !625, file: !3, line: 198, column: 3)
!638 = !DILocalVariable(name: "o1", scope: !637, file: !3, line: 198, type: !74)
!639 = !DILocation(line: 191, column: 37, scope: !625)
!640 = !DILocation(line: 191, column: 44, scope: !625)
!641 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !642)
!642 = distinct !DILocation(line: 195, column: 7, scope: !625)
!643 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !642)
!644 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !642)
!645 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !642)
!646 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !642)
!647 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !642)
!648 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !642)
!649 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !642)
!650 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !642)
!651 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !642)
!652 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !642)
!653 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !642)
!654 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !642)
!655 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !642)
!656 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !642)
!657 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !642)
!658 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !642)
!659 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !642)
!660 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !642)
!661 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !642)
!662 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !642)
!663 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !642)
!664 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !642)
!665 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !642)
!666 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !642)
!667 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !642)
!668 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !642)
!669 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !642)
!670 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !642)
!671 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !642)
!672 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !642)
!673 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !642)
!674 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !642)
!675 = !DILocation(line: 0, scope: !569, inlinedAt: !642)
!676 = !DILocation(line: 192, column: 9, scope: !625)
!677 = !DILocation(line: 197, column: 15, scope: !634)
!678 = !DILocation(line: 193, column: 9, scope: !625)
!679 = !DILocation(line: 197, column: 21, scope: !633)
!680 = !DILocation(line: 197, column: 3, scope: !634)
!681 = !DILocation(line: 197, column: 30, scope: !632)
!682 = distinct !{!682, !680, !683}
!683 = !DILocation(line: 197, column: 30, scope: !634)
!684 = !DILocation(line: 198, column: 3, scope: !637)
!685 = !DILocation(line: 200, column: 1, scope: !625)
!686 = distinct !DISubprogram(name: "lua_replace", scope: !3, file: !3, line: 203, type: !521, isLocal: false, isDefinition: true, scopeLine: 203, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !687)
!687 = !{!688, !689, !690, !691, !694, !697}
!688 = !DILocalVariable(name: "L", arg: 1, scope: !686, file: !3, line: 203, type: !131)
!689 = !DILocalVariable(name: "idx", arg: 2, scope: !686, file: !3, line: 203, type: !8)
!690 = !DILocalVariable(name: "o", scope: !686, file: !3, line: 204, type: !140)
!691 = !DILocalVariable(name: "func", scope: !692, file: !3, line: 213, type: !571)
!692 = distinct !DILexicalBlock(scope: !693, file: !3, line: 212, column: 32)
!693 = distinct !DILexicalBlock(scope: !686, file: !3, line: 212, column: 7)
!694 = !DILocalVariable(name: "o2", scope: !695, file: !3, line: 219, type: !362)
!695 = distinct !DILexicalBlock(scope: !696, file: !3, line: 219, column: 5)
!696 = distinct !DILexicalBlock(scope: !693, file: !3, line: 218, column: 8)
!697 = !DILocalVariable(name: "o1", scope: !695, file: !3, line: 219, type: !74)
!698 = !DILocation(line: 203, column: 38, scope: !686)
!699 = !DILocation(line: 203, column: 45, scope: !686)
!700 = !DILocation(line: 207, column: 11, scope: !701)
!701 = distinct !DILexicalBlock(scope: !686, file: !3, line: 207, column: 7)
!702 = !DILocation(line: 207, column: 31, scope: !701)
!703 = !DILocation(line: 207, column: 37, scope: !701)
!704 = !DILocation(line: 207, column: 46, scope: !701)
!705 = !{!374, !375, i64 80}
!706 = !DILocation(line: 207, column: 40, scope: !701)
!707 = !DILocation(line: 207, column: 7, scope: !686)
!708 = !DILocation(line: 208, column: 5, scope: !701)
!709 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !710)
!710 = distinct !DILocation(line: 210, column: 7, scope: !686)
!711 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !710)
!712 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !710)
!713 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !710)
!714 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !710)
!715 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !710)
!716 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !710)
!717 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !710)
!718 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !710)
!719 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !710)
!720 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !710)
!721 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !710)
!722 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !710)
!723 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !710)
!724 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !710)
!725 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !710)
!726 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !710)
!727 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !710)
!728 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !710)
!729 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !710)
!730 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !710)
!731 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !710)
!732 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !710)
!733 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !710)
!734 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !710)
!735 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !710)
!736 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !710)
!737 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !710)
!738 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !710)
!739 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !710)
!740 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !710)
!741 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !710)
!742 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !710)
!743 = !DILocation(line: 204, column: 9, scope: !686)
!744 = !DILocation(line: 213, column: 21, scope: !692)
!745 = !DILocation(line: 213, column: 14, scope: !692)
!746 = !DILocation(line: 215, column: 19, scope: !692)
!747 = !DILocation(line: 215, column: 13, scope: !692)
!748 = !DILocation(line: 215, column: 17, scope: !692)
!749 = !DILocation(line: 216, column: 5, scope: !750)
!750 = distinct !DILexicalBlock(scope: !751, file: !3, line: 216, column: 5)
!751 = distinct !DILexicalBlock(scope: !692, file: !3, line: 216, column: 5)
!752 = !DILocation(line: 216, column: 5, scope: !751)
!753 = !DILocation(line: 219, column: 5, scope: !695)
!754 = !DILocation(line: 220, column: 13, scope: !755)
!755 = distinct !DILexicalBlock(scope: !696, file: !3, line: 220, column: 9)
!756 = !DILocation(line: 220, column: 9, scope: !696)
!757 = !DILocation(line: 221, column: 7, scope: !758)
!758 = distinct !DILexicalBlock(scope: !759, file: !3, line: 221, column: 7)
!759 = distinct !DILexicalBlock(scope: !755, file: !3, line: 221, column: 7)
!760 = !DILocation(line: 221, column: 7, scope: !759)
!761 = !DILocation(line: 223, column: 6, scope: !686)
!762 = !DILocation(line: 223, column: 9, scope: !686)
!763 = !DILocation(line: 225, column: 1, scope: !686)
!764 = distinct !DISubprogram(name: "lua_pushvalue", scope: !3, file: !3, line: 228, type: !521, isLocal: false, isDefinition: true, scopeLine: 228, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !765)
!765 = !{!766, !767, !768, !770}
!766 = !DILocalVariable(name: "L", arg: 1, scope: !764, file: !3, line: 228, type: !131)
!767 = !DILocalVariable(name: "idx", arg: 2, scope: !764, file: !3, line: 228, type: !8)
!768 = !DILocalVariable(name: "o2", scope: !769, file: !3, line: 230, type: !362)
!769 = distinct !DILexicalBlock(scope: !764, file: !3, line: 230, column: 3)
!770 = !DILocalVariable(name: "o1", scope: !769, file: !3, line: 230, type: !74)
!771 = !DILocation(line: 228, column: 40, scope: !764)
!772 = !DILocation(line: 228, column: 47, scope: !764)
!773 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !774)
!774 = distinct !DILocation(line: 230, column: 3, scope: !769)
!775 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !774)
!776 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !774)
!777 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !774)
!778 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !774)
!779 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !774)
!780 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !774)
!781 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !774)
!782 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !774)
!783 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !774)
!784 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !774)
!785 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !774)
!786 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !774)
!787 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !774)
!788 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !774)
!789 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !774)
!790 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !774)
!791 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !774)
!792 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !774)
!793 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !774)
!794 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !774)
!795 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !774)
!796 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !774)
!797 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !774)
!798 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !774)
!799 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !774)
!800 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !774)
!801 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !774)
!802 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !774)
!803 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !774)
!804 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !774)
!805 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !774)
!806 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !774)
!807 = !DILocation(line: 0, scope: !569, inlinedAt: !774)
!808 = !DILocation(line: 230, column: 3, scope: !769)
!809 = !DILocation(line: 231, column: 3, scope: !810)
!810 = distinct !DILexicalBlock(scope: !764, file: !3, line: 231, column: 3)
!811 = !DILocation(line: 233, column: 1, scope: !764)
!812 = distinct !DISubprogram(name: "lua_type", scope: !3, file: !3, line: 242, type: !387, isLocal: false, isDefinition: true, scopeLine: 242, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !813)
!813 = !{!814, !815, !816}
!814 = !DILocalVariable(name: "L", arg: 1, scope: !812, file: !3, line: 242, type: !131)
!815 = !DILocalVariable(name: "idx", arg: 2, scope: !812, file: !3, line: 242, type: !8)
!816 = !DILocalVariable(name: "o", scope: !812, file: !3, line: 243, type: !140)
!817 = !DILocation(line: 242, column: 34, scope: !812)
!818 = !DILocation(line: 242, column: 41, scope: !812)
!819 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !820)
!820 = distinct !DILocation(line: 243, column: 13, scope: !812)
!821 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !820)
!822 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !820)
!823 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !820)
!824 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !820)
!825 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !820)
!826 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !820)
!827 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !820)
!828 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !820)
!829 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !820)
!830 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !820)
!831 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !820)
!832 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !820)
!833 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !820)
!834 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !820)
!835 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !820)
!836 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !820)
!837 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !820)
!838 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !820)
!839 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !820)
!840 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !820)
!841 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !820)
!842 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !820)
!843 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !820)
!844 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !820)
!845 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !820)
!846 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !820)
!847 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !820)
!848 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !820)
!849 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !820)
!850 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !820)
!851 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !820)
!852 = !DILocation(line: 0, scope: !569, inlinedAt: !820)
!853 = !DILocation(line: 243, column: 9, scope: !812)
!854 = !DILocation(line: 244, column: 13, scope: !812)
!855 = !DILocation(line: 244, column: 10, scope: !812)
!856 = !DILocation(line: 244, column: 46, scope: !812)
!857 = !DILocation(line: 244, column: 3, scope: !812)
!858 = distinct !DISubprogram(name: "lua_typename", scope: !3, file: !3, line: 248, type: !859, isLocal: false, isDefinition: true, scopeLine: 248, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !861)
!859 = !DISubroutineType(types: !860)
!860 = !{!257, !131, !8}
!861 = !{!862, !863}
!862 = !DILocalVariable(name: "L", arg: 1, scope: !858, file: !3, line: 248, type: !131)
!863 = !DILocalVariable(name: "t", arg: 2, scope: !858, file: !3, line: 248, type: !8)
!864 = !DILocation(line: 248, column: 46, scope: !858)
!865 = !DILocation(line: 248, column: 53, scope: !858)
!866 = !DILocation(line: 250, column: 13, scope: !858)
!867 = !DILocation(line: 250, column: 10, scope: !858)
!868 = !DILocation(line: 250, column: 42, scope: !858)
!869 = !{!375, !375, i64 0}
!870 = !DILocation(line: 250, column: 3, scope: !858)
!871 = distinct !DISubprogram(name: "lua_iscfunction", scope: !3, file: !3, line: 254, type: !387, isLocal: false, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !872)
!872 = !{!873, !874, !875}
!873 = !DILocalVariable(name: "L", arg: 1, scope: !871, file: !3, line: 254, type: !131)
!874 = !DILocalVariable(name: "idx", arg: 2, scope: !871, file: !3, line: 254, type: !8)
!875 = !DILocalVariable(name: "o", scope: !871, file: !3, line: 255, type: !140)
!876 = !DILocation(line: 254, column: 41, scope: !871)
!877 = !DILocation(line: 254, column: 48, scope: !871)
!878 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !879)
!879 = distinct !DILocation(line: 255, column: 13, scope: !871)
!880 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !879)
!881 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !879)
!882 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !879)
!883 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !879)
!884 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !879)
!885 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !879)
!886 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !879)
!887 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !879)
!888 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !879)
!889 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !879)
!890 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !879)
!891 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !879)
!892 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !879)
!893 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !879)
!894 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !879)
!895 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !879)
!896 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !879)
!897 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !879)
!898 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !879)
!899 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !879)
!900 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !879)
!901 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !879)
!902 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !879)
!903 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !879)
!904 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !879)
!905 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !879)
!906 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !879)
!907 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !879)
!908 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !879)
!909 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !879)
!910 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !879)
!911 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !879)
!912 = !DILocation(line: 0, scope: !569, inlinedAt: !879)
!913 = !DILocation(line: 255, column: 9, scope: !871)
!914 = !DILocation(line: 256, column: 10, scope: !871)
!915 = !DILocation(line: 256, column: 3, scope: !871)
!916 = distinct !DISubprogram(name: "lua_isnumber", scope: !3, file: !3, line: 260, type: !387, isLocal: false, isDefinition: true, scopeLine: 260, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !917)
!917 = !{!918, !919, !920, !921}
!918 = !DILocalVariable(name: "L", arg: 1, scope: !916, file: !3, line: 260, type: !131)
!919 = !DILocalVariable(name: "idx", arg: 2, scope: !916, file: !3, line: 260, type: !8)
!920 = !DILocalVariable(name: "n", scope: !916, file: !3, line: 261, type: !75)
!921 = !DILocalVariable(name: "o", scope: !916, file: !3, line: 262, type: !362)
!922 = !DILocation(line: 260, column: 38, scope: !916)
!923 = !DILocation(line: 260, column: 45, scope: !916)
!924 = !DILocation(line: 261, column: 3, scope: !916)
!925 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !926)
!926 = distinct !DILocation(line: 262, column: 21, scope: !916)
!927 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !926)
!928 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !926)
!929 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !926)
!930 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !926)
!931 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !926)
!932 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !926)
!933 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !926)
!934 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !926)
!935 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !926)
!936 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !926)
!937 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !926)
!938 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !926)
!939 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !926)
!940 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !926)
!941 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !926)
!942 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !926)
!943 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !926)
!944 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !926)
!945 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !926)
!946 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !926)
!947 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !926)
!948 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !926)
!949 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !926)
!950 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !926)
!951 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !926)
!952 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !926)
!953 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !926)
!954 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !926)
!955 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !926)
!956 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !926)
!957 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !926)
!958 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !926)
!959 = !DILocation(line: 0, scope: !569, inlinedAt: !926)
!960 = !DILocation(line: 262, column: 17, scope: !916)
!961 = !DILocation(line: 263, column: 10, scope: !916)
!962 = !DILocation(line: 261, column: 10, scope: !916)
!963 = !DILocation(line: 264, column: 1, scope: !916)
!964 = !DILocation(line: 263, column: 3, scope: !916)
!965 = distinct !DISubprogram(name: "lua_isstring", scope: !3, file: !3, line: 267, type: !387, isLocal: false, isDefinition: true, scopeLine: 267, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !966)
!966 = !{!967, !968, !969}
!967 = !DILocalVariable(name: "L", arg: 1, scope: !965, file: !3, line: 267, type: !131)
!968 = !DILocalVariable(name: "idx", arg: 2, scope: !965, file: !3, line: 267, type: !8)
!969 = !DILocalVariable(name: "t", scope: !965, file: !3, line: 268, type: !8)
!970 = !DILocation(line: 267, column: 38, scope: !965)
!971 = !DILocation(line: 267, column: 45, scope: !965)
!972 = !DILocation(line: 242, column: 34, scope: !812, inlinedAt: !973)
!973 = distinct !DILocation(line: 268, column: 11, scope: !965)
!974 = !DILocation(line: 242, column: 41, scope: !812, inlinedAt: !973)
!975 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !976)
!976 = distinct !DILocation(line: 243, column: 13, scope: !812, inlinedAt: !973)
!977 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !976)
!978 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !976)
!979 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !976)
!980 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !976)
!981 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !976)
!982 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !976)
!983 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !976)
!984 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !976)
!985 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !976)
!986 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !976)
!987 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !976)
!988 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !976)
!989 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !976)
!990 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !976)
!991 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !976)
!992 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !976)
!993 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !976)
!994 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !976)
!995 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !976)
!996 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !976)
!997 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !976)
!998 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !976)
!999 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !976)
!1000 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !976)
!1001 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !976)
!1002 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !976)
!1003 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !976)
!1004 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !976)
!1005 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !976)
!1006 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !976)
!1007 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !976)
!1008 = !DILocation(line: 0, scope: !569, inlinedAt: !976)
!1009 = !DILocation(line: 243, column: 9, scope: !812, inlinedAt: !973)
!1010 = !DILocation(line: 244, column: 13, scope: !812, inlinedAt: !973)
!1011 = !DILocation(line: 244, column: 10, scope: !812, inlinedAt: !973)
!1012 = !DILocation(line: 244, column: 46, scope: !812, inlinedAt: !973)
!1013 = !DILocation(line: 269, column: 3, scope: !965)
!1014 = distinct !DISubprogram(name: "lua_isuserdata", scope: !3, file: !3, line: 273, type: !387, isLocal: false, isDefinition: true, scopeLine: 273, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1015)
!1015 = !{!1016, !1017, !1018}
!1016 = !DILocalVariable(name: "L", arg: 1, scope: !1014, file: !3, line: 273, type: !131)
!1017 = !DILocalVariable(name: "idx", arg: 2, scope: !1014, file: !3, line: 273, type: !8)
!1018 = !DILocalVariable(name: "o", scope: !1014, file: !3, line: 274, type: !362)
!1019 = !DILocation(line: 273, column: 40, scope: !1014)
!1020 = !DILocation(line: 273, column: 47, scope: !1014)
!1021 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !1022)
!1022 = distinct !DILocation(line: 274, column: 21, scope: !1014)
!1023 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !1022)
!1024 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !1022)
!1025 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !1022)
!1026 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !1022)
!1027 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !1022)
!1028 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !1022)
!1029 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !1022)
!1030 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !1022)
!1031 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !1022)
!1032 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !1022)
!1033 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !1022)
!1034 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !1022)
!1035 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !1022)
!1036 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !1022)
!1037 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !1022)
!1038 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !1022)
!1039 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !1022)
!1040 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !1022)
!1041 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !1022)
!1042 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !1022)
!1043 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !1022)
!1044 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !1022)
!1045 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !1022)
!1046 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !1022)
!1047 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !1022)
!1048 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !1022)
!1049 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !1022)
!1050 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !1022)
!1051 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !1022)
!1052 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !1022)
!1053 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !1022)
!1054 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !1022)
!1055 = !DILocation(line: 0, scope: !569, inlinedAt: !1022)
!1056 = !DILocation(line: 274, column: 17, scope: !1014)
!1057 = !DILocation(line: 275, column: 11, scope: !1014)
!1058 = !DILocation(line: 275, column: 30, scope: !1014)
!1059 = !DILocation(line: 275, column: 27, scope: !1014)
!1060 = !DILocation(line: 275, column: 3, scope: !1014)
!1061 = distinct !DISubprogram(name: "lua_rawequal", scope: !3, file: !3, line: 279, type: !1062, isLocal: false, isDefinition: true, scopeLine: 279, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1064)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{!8, !131, !8, !8}
!1064 = !{!1065, !1066, !1067, !1068, !1069}
!1065 = !DILocalVariable(name: "L", arg: 1, scope: !1061, file: !3, line: 279, type: !131)
!1066 = !DILocalVariable(name: "index1", arg: 2, scope: !1061, file: !3, line: 279, type: !8)
!1067 = !DILocalVariable(name: "index2", arg: 3, scope: !1061, file: !3, line: 279, type: !8)
!1068 = !DILocalVariable(name: "o1", scope: !1061, file: !3, line: 280, type: !140)
!1069 = !DILocalVariable(name: "o2", scope: !1061, file: !3, line: 281, type: !140)
!1070 = !DILocation(line: 279, column: 38, scope: !1061)
!1071 = !DILocation(line: 279, column: 45, scope: !1061)
!1072 = !DILocation(line: 279, column: 57, scope: !1061)
!1073 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !1074)
!1074 = distinct !DILocation(line: 280, column: 14, scope: !1061)
!1075 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !1074)
!1076 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !1074)
!1077 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !1074)
!1078 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !1074)
!1079 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !1074)
!1080 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !1074)
!1081 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !1074)
!1082 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !1074)
!1083 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !1074)
!1084 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !1074)
!1085 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !1074)
!1086 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !1074)
!1087 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !1074)
!1088 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !1074)
!1089 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !1074)
!1090 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !1074)
!1091 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !1074)
!1092 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !1074)
!1093 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !1074)
!1094 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !1074)
!1095 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !1074)
!1096 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !1074)
!1097 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !1074)
!1098 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !1074)
!1099 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !1074)
!1100 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !1074)
!1101 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !1074)
!1102 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !1074)
!1103 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !1074)
!1104 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !1074)
!1105 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !1074)
!1106 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !1074)
!1107 = !DILocation(line: 0, scope: !569, inlinedAt: !1074)
!1108 = !DILocation(line: 280, column: 9, scope: !1061)
!1109 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !1110)
!1110 = distinct !DILocation(line: 281, column: 14, scope: !1061)
!1111 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !1110)
!1112 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !1110)
!1113 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !1110)
!1114 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !1110)
!1115 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !1110)
!1116 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !1110)
!1117 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !1110)
!1118 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !1110)
!1119 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !1110)
!1120 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !1110)
!1121 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !1110)
!1122 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !1110)
!1123 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !1110)
!1124 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !1110)
!1125 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !1110)
!1126 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !1110)
!1127 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !1110)
!1128 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !1110)
!1129 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !1110)
!1130 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !1110)
!1131 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !1110)
!1132 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !1110)
!1133 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !1110)
!1134 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !1110)
!1135 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !1110)
!1136 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !1110)
!1137 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !1110)
!1138 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !1110)
!1139 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !1110)
!1140 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !1110)
!1141 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !1110)
!1142 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !1110)
!1143 = !DILocation(line: 0, scope: !569, inlinedAt: !1110)
!1144 = !DILocation(line: 281, column: 9, scope: !1061)
!1145 = !DILocation(line: 282, column: 14, scope: !1061)
!1146 = !DILocation(line: 282, column: 38, scope: !1061)
!1147 = !DILocation(line: 282, column: 32, scope: !1061)
!1148 = !DILocation(line: 283, column: 12, scope: !1061)
!1149 = !DILocation(line: 282, column: 10, scope: !1061)
!1150 = !DILocation(line: 282, column: 3, scope: !1061)
!1151 = distinct !DISubprogram(name: "lua_equal", scope: !3, file: !3, line: 287, type: !1062, isLocal: false, isDefinition: true, scopeLine: 287, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1152)
!1152 = !{!1153, !1154, !1155, !1156, !1157, !1158}
!1153 = !DILocalVariable(name: "L", arg: 1, scope: !1151, file: !3, line: 287, type: !131)
!1154 = !DILocalVariable(name: "index1", arg: 2, scope: !1151, file: !3, line: 287, type: !8)
!1155 = !DILocalVariable(name: "index2", arg: 3, scope: !1151, file: !3, line: 287, type: !8)
!1156 = !DILocalVariable(name: "o1", scope: !1151, file: !3, line: 288, type: !140)
!1157 = !DILocalVariable(name: "o2", scope: !1151, file: !3, line: 288, type: !140)
!1158 = !DILocalVariable(name: "i", scope: !1151, file: !3, line: 289, type: !8)
!1159 = !DILocation(line: 287, column: 35, scope: !1151)
!1160 = !DILocation(line: 287, column: 42, scope: !1151)
!1161 = !DILocation(line: 287, column: 54, scope: !1151)
!1162 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !1163)
!1163 = distinct !DILocation(line: 291, column: 8, scope: !1151)
!1164 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !1163)
!1165 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !1163)
!1166 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !1163)
!1167 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !1163)
!1168 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !1163)
!1169 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !1163)
!1170 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !1163)
!1171 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !1163)
!1172 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !1163)
!1173 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !1163)
!1174 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !1163)
!1175 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !1163)
!1176 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !1163)
!1177 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !1163)
!1178 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !1163)
!1179 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !1163)
!1180 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !1163)
!1181 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !1163)
!1182 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !1163)
!1183 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !1163)
!1184 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !1163)
!1185 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !1163)
!1186 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !1163)
!1187 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !1163)
!1188 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !1163)
!1189 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !1163)
!1190 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !1163)
!1191 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !1163)
!1192 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !1163)
!1193 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !1163)
!1194 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !1163)
!1195 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !1163)
!1196 = !DILocation(line: 0, scope: !569, inlinedAt: !1163)
!1197 = !DILocation(line: 288, column: 9, scope: !1151)
!1198 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !1199)
!1199 = distinct !DILocation(line: 292, column: 8, scope: !1151)
!1200 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !1199)
!1201 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !1199)
!1202 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !1199)
!1203 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !1199)
!1204 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !1199)
!1205 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !1199)
!1206 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !1199)
!1207 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !1199)
!1208 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !1199)
!1209 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !1199)
!1210 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !1199)
!1211 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !1199)
!1212 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !1199)
!1213 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !1199)
!1214 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !1199)
!1215 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !1199)
!1216 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !1199)
!1217 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !1199)
!1218 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !1199)
!1219 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !1199)
!1220 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !1199)
!1221 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !1199)
!1222 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !1199)
!1223 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !1199)
!1224 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !1199)
!1225 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !1199)
!1226 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !1199)
!1227 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !1199)
!1228 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !1199)
!1229 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !1199)
!1230 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !1199)
!1231 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !1199)
!1232 = !DILocation(line: 0, scope: !569, inlinedAt: !1199)
!1233 = !DILocation(line: 288, column: 13, scope: !1151)
!1234 = !DILocation(line: 293, column: 11, scope: !1151)
!1235 = !DILocation(line: 293, column: 35, scope: !1151)
!1236 = !DILocation(line: 293, column: 29, scope: !1151)
!1237 = !DILocation(line: 293, column: 60, scope: !1151)
!1238 = !DILocation(line: 293, column: 7, scope: !1151)
!1239 = !DILocation(line: 289, column: 7, scope: !1151)
!1240 = !DILocation(line: 295, column: 3, scope: !1151)
!1241 = distinct !DISubprogram(name: "lua_lessthan", scope: !3, file: !3, line: 299, type: !1062, isLocal: false, isDefinition: true, scopeLine: 299, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1242)
!1242 = !{!1243, !1244, !1245, !1246, !1247, !1248}
!1243 = !DILocalVariable(name: "L", arg: 1, scope: !1241, file: !3, line: 299, type: !131)
!1244 = !DILocalVariable(name: "index1", arg: 2, scope: !1241, file: !3, line: 299, type: !8)
!1245 = !DILocalVariable(name: "index2", arg: 3, scope: !1241, file: !3, line: 299, type: !8)
!1246 = !DILocalVariable(name: "o1", scope: !1241, file: !3, line: 300, type: !140)
!1247 = !DILocalVariable(name: "o2", scope: !1241, file: !3, line: 300, type: !140)
!1248 = !DILocalVariable(name: "i", scope: !1241, file: !3, line: 301, type: !8)
!1249 = !DILocation(line: 299, column: 38, scope: !1241)
!1250 = !DILocation(line: 299, column: 45, scope: !1241)
!1251 = !DILocation(line: 299, column: 57, scope: !1241)
!1252 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !1253)
!1253 = distinct !DILocation(line: 303, column: 8, scope: !1241)
!1254 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !1253)
!1255 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !1253)
!1256 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !1253)
!1257 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !1253)
!1258 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !1253)
!1259 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !1253)
!1260 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !1253)
!1261 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !1253)
!1262 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !1253)
!1263 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !1253)
!1264 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !1253)
!1265 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !1253)
!1266 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !1253)
!1267 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !1253)
!1268 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !1253)
!1269 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !1253)
!1270 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !1253)
!1271 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !1253)
!1272 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !1253)
!1273 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !1253)
!1274 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !1253)
!1275 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !1253)
!1276 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !1253)
!1277 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !1253)
!1278 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !1253)
!1279 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !1253)
!1280 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !1253)
!1281 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !1253)
!1282 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !1253)
!1283 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !1253)
!1284 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !1253)
!1285 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !1253)
!1286 = !DILocation(line: 0, scope: !569, inlinedAt: !1253)
!1287 = !DILocation(line: 300, column: 9, scope: !1241)
!1288 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !1289)
!1289 = distinct !DILocation(line: 304, column: 8, scope: !1241)
!1290 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !1289)
!1291 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !1289)
!1292 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !1289)
!1293 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !1289)
!1294 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !1289)
!1295 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !1289)
!1296 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !1289)
!1297 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !1289)
!1298 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !1289)
!1299 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !1289)
!1300 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !1289)
!1301 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !1289)
!1302 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !1289)
!1303 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !1289)
!1304 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !1289)
!1305 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !1289)
!1306 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !1289)
!1307 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !1289)
!1308 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !1289)
!1309 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !1289)
!1310 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !1289)
!1311 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !1289)
!1312 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !1289)
!1313 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !1289)
!1314 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !1289)
!1315 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !1289)
!1316 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !1289)
!1317 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !1289)
!1318 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !1289)
!1319 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !1289)
!1320 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !1289)
!1321 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !1289)
!1322 = !DILocation(line: 0, scope: !569, inlinedAt: !1289)
!1323 = !DILocation(line: 300, column: 13, scope: !1241)
!1324 = !DILocation(line: 305, column: 11, scope: !1241)
!1325 = !DILocation(line: 305, column: 35, scope: !1241)
!1326 = !DILocation(line: 305, column: 29, scope: !1241)
!1327 = !DILocation(line: 306, column: 10, scope: !1241)
!1328 = !DILocation(line: 305, column: 7, scope: !1241)
!1329 = !DILocation(line: 301, column: 7, scope: !1241)
!1330 = !DILocation(line: 308, column: 3, scope: !1241)
!1331 = distinct !DISubprogram(name: "lua_tonumber", scope: !3, file: !3, line: 313, type: !1332, isLocal: false, isDefinition: true, scopeLine: 313, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1334)
!1332 = !DISubroutineType(types: !1333)
!1333 = !{!85, !131, !8}
!1334 = !{!1335, !1336, !1337, !1338}
!1335 = !DILocalVariable(name: "L", arg: 1, scope: !1331, file: !3, line: 313, type: !131)
!1336 = !DILocalVariable(name: "idx", arg: 2, scope: !1331, file: !3, line: 313, type: !8)
!1337 = !DILocalVariable(name: "n", scope: !1331, file: !3, line: 314, type: !75)
!1338 = !DILocalVariable(name: "o", scope: !1331, file: !3, line: 315, type: !362)
!1339 = !DILocation(line: 313, column: 45, scope: !1331)
!1340 = !DILocation(line: 313, column: 52, scope: !1331)
!1341 = !DILocation(line: 314, column: 3, scope: !1331)
!1342 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !1343)
!1343 = distinct !DILocation(line: 315, column: 21, scope: !1331)
!1344 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !1343)
!1345 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !1343)
!1346 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !1343)
!1347 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !1343)
!1348 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !1343)
!1349 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !1343)
!1350 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !1343)
!1351 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !1343)
!1352 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !1343)
!1353 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !1343)
!1354 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !1343)
!1355 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !1343)
!1356 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !1343)
!1357 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !1343)
!1358 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !1343)
!1359 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !1343)
!1360 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !1343)
!1361 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !1343)
!1362 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !1343)
!1363 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !1343)
!1364 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !1343)
!1365 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !1343)
!1366 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !1343)
!1367 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !1343)
!1368 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !1343)
!1369 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !1343)
!1370 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !1343)
!1371 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !1343)
!1372 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !1343)
!1373 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !1343)
!1374 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !1343)
!1375 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !1343)
!1376 = !DILocation(line: 0, scope: !569, inlinedAt: !1343)
!1377 = !DILocation(line: 315, column: 17, scope: !1331)
!1378 = !DILocation(line: 316, column: 7, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1331, file: !3, line: 316, column: 7)
!1380 = !DILocation(line: 314, column: 10, scope: !1331)
!1381 = !DILocation(line: 316, column: 7, scope: !1331)
!1382 = !DILocation(line: 0, scope: !1379)
!1383 = !DILocation(line: 317, column: 12, scope: !1379)
!1384 = !DILocation(line: 317, column: 5, scope: !1379)
!1385 = !DILocation(line: 320, column: 1, scope: !1331)
!1386 = distinct !DISubprogram(name: "lua_tointeger", scope: !3, file: !3, line: 323, type: !1387, isLocal: false, isDefinition: true, scopeLine: 323, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1389)
!1387 = !DISubroutineType(types: !1388)
!1388 = !{!340, !131, !8}
!1389 = !{!1390, !1391, !1392, !1393, !1394, !1397}
!1390 = !DILocalVariable(name: "L", arg: 1, scope: !1386, file: !3, line: 323, type: !131)
!1391 = !DILocalVariable(name: "idx", arg: 2, scope: !1386, file: !3, line: 323, type: !8)
!1392 = !DILocalVariable(name: "n", scope: !1386, file: !3, line: 324, type: !75)
!1393 = !DILocalVariable(name: "o", scope: !1386, file: !3, line: 325, type: !362)
!1394 = !DILocalVariable(name: "res", scope: !1395, file: !3, line: 327, type: !340)
!1395 = distinct !DILexicalBlock(scope: !1396, file: !3, line: 326, column: 24)
!1396 = distinct !DILexicalBlock(scope: !1386, file: !3, line: 326, column: 7)
!1397 = !DILocalVariable(name: "num", scope: !1395, file: !3, line: 328, type: !85)
!1398 = !DILocation(line: 323, column: 47, scope: !1386)
!1399 = !DILocation(line: 323, column: 54, scope: !1386)
!1400 = !DILocation(line: 324, column: 3, scope: !1386)
!1401 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !1402)
!1402 = distinct !DILocation(line: 325, column: 21, scope: !1386)
!1403 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !1402)
!1404 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !1402)
!1405 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !1402)
!1406 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !1402)
!1407 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !1402)
!1408 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !1402)
!1409 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !1402)
!1410 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !1402)
!1411 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !1402)
!1412 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !1402)
!1413 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !1402)
!1414 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !1402)
!1415 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !1402)
!1416 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !1402)
!1417 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !1402)
!1418 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !1402)
!1419 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !1402)
!1420 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !1402)
!1421 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !1402)
!1422 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !1402)
!1423 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !1402)
!1424 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !1402)
!1425 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !1402)
!1426 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !1402)
!1427 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !1402)
!1428 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !1402)
!1429 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !1402)
!1430 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !1402)
!1431 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !1402)
!1432 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !1402)
!1433 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !1402)
!1434 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !1402)
!1435 = !DILocation(line: 0, scope: !569, inlinedAt: !1402)
!1436 = !DILocation(line: 325, column: 17, scope: !1386)
!1437 = !DILocation(line: 326, column: 7, scope: !1396)
!1438 = !DILocation(line: 324, column: 10, scope: !1386)
!1439 = !DILocation(line: 326, column: 7, scope: !1386)
!1440 = !DILocation(line: 0, scope: !1396)
!1441 = !DILocation(line: 328, column: 22, scope: !1395)
!1442 = !DILocation(line: 328, column: 16, scope: !1395)
!1443 = !DILocation(line: 329, column: 5, scope: !1395)
!1444 = !DILocation(line: 327, column: 17, scope: !1395)
!1445 = !DILocation(line: 334, column: 1, scope: !1386)
!1446 = distinct !DISubprogram(name: "lua_toboolean", scope: !3, file: !3, line: 337, type: !387, isLocal: false, isDefinition: true, scopeLine: 337, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1447)
!1447 = !{!1448, !1449, !1450}
!1448 = !DILocalVariable(name: "L", arg: 1, scope: !1446, file: !3, line: 337, type: !131)
!1449 = !DILocalVariable(name: "idx", arg: 2, scope: !1446, file: !3, line: 337, type: !8)
!1450 = !DILocalVariable(name: "o", scope: !1446, file: !3, line: 338, type: !362)
!1451 = !DILocation(line: 337, column: 39, scope: !1446)
!1452 = !DILocation(line: 337, column: 46, scope: !1446)
!1453 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !1454)
!1454 = distinct !DILocation(line: 338, column: 21, scope: !1446)
!1455 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !1454)
!1456 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !1454)
!1457 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !1454)
!1458 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !1454)
!1459 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !1454)
!1460 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !1454)
!1461 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !1454)
!1462 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !1454)
!1463 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !1454)
!1464 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !1454)
!1465 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !1454)
!1466 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !1454)
!1467 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !1454)
!1468 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !1454)
!1469 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !1454)
!1470 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !1454)
!1471 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !1454)
!1472 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !1454)
!1473 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !1454)
!1474 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !1454)
!1475 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !1454)
!1476 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !1454)
!1477 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !1454)
!1478 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !1454)
!1479 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !1454)
!1480 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !1454)
!1481 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !1454)
!1482 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !1454)
!1483 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !1454)
!1484 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !1454)
!1485 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !1454)
!1486 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !1454)
!1487 = !DILocation(line: 0, scope: !569, inlinedAt: !1454)
!1488 = !DILocation(line: 338, column: 17, scope: !1446)
!1489 = !DILocation(line: 339, column: 11, scope: !1446)
!1490 = !DILocation(line: 339, column: 3, scope: !1446)
!1491 = distinct !DISubprogram(name: "lua_tolstring", scope: !3, file: !3, line: 343, type: !1492, isLocal: false, isDefinition: true, scopeLine: 343, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1495)
!1492 = !DISubroutineType(types: !1493)
!1493 = !{!257, !131, !8, !1494}
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!1495 = !{!1496, !1497, !1498, !1499}
!1496 = !DILocalVariable(name: "L", arg: 1, scope: !1491, file: !3, line: 343, type: !131)
!1497 = !DILocalVariable(name: "idx", arg: 2, scope: !1491, file: !3, line: 343, type: !8)
!1498 = !DILocalVariable(name: "len", arg: 3, scope: !1491, file: !3, line: 343, type: !1494)
!1499 = !DILocalVariable(name: "o", scope: !1491, file: !3, line: 344, type: !140)
!1500 = !DILocation(line: 343, column: 47, scope: !1491)
!1501 = !DILocation(line: 343, column: 54, scope: !1491)
!1502 = !DILocation(line: 343, column: 67, scope: !1491)
!1503 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !1504)
!1504 = distinct !DILocation(line: 344, column: 13, scope: !1491)
!1505 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !1504)
!1506 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !1504)
!1507 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !1504)
!1508 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !1504)
!1509 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !1504)
!1510 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !1504)
!1511 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !1504)
!1512 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !1504)
!1513 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !1504)
!1514 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !1504)
!1515 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !1504)
!1516 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !1504)
!1517 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !1504)
!1518 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !1504)
!1519 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !1504)
!1520 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !1504)
!1521 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !1504)
!1522 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !1504)
!1523 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !1504)
!1524 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !1504)
!1525 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !1504)
!1526 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !1504)
!1527 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !1504)
!1528 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !1504)
!1529 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !1504)
!1530 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !1504)
!1531 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !1504)
!1532 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !1504)
!1533 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !1504)
!1534 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !1504)
!1535 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !1504)
!1536 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !1504)
!1537 = !DILocation(line: 0, scope: !569, inlinedAt: !1504)
!1538 = !DILocation(line: 344, column: 9, scope: !1491)
!1539 = !DILocation(line: 345, column: 8, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1491, file: !3, line: 345, column: 7)
!1541 = !DILocation(line: 345, column: 7, scope: !1491)
!1542 = !DILocation(line: 347, column: 10, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1544, file: !3, line: 347, column: 9)
!1544 = distinct !DILexicalBlock(scope: !1540, file: !3, line: 345, column: 23)
!1545 = !DILocation(line: 347, column: 9, scope: !1544)
!1546 = !DILocation(line: 348, column: 15, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1548, file: !3, line: 348, column: 11)
!1548 = distinct !DILexicalBlock(scope: !1543, file: !3, line: 347, column: 31)
!1549 = !DILocation(line: 348, column: 11, scope: !1548)
!1550 = !DILocation(line: 348, column: 29, scope: !1547)
!1551 = !{!381, !381, i64 0}
!1552 = !DILocation(line: 348, column: 24, scope: !1547)
!1553 = !DILocation(line: 352, column: 5, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1555, file: !3, line: 352, column: 5)
!1555 = distinct !DILexicalBlock(scope: !1544, file: !3, line: 352, column: 5)
!1556 = !DILocation(line: 352, column: 5, scope: !1555)
!1557 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !1558)
!1558 = distinct !DILocation(line: 353, column: 9, scope: !1544)
!1559 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !1558)
!1560 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !1558)
!1561 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !1558)
!1562 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !1558)
!1563 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !1558)
!1564 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !1558)
!1565 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !1558)
!1566 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !1558)
!1567 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !1558)
!1568 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !1558)
!1569 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !1558)
!1570 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !1558)
!1571 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !1558)
!1572 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !1558)
!1573 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !1558)
!1574 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !1558)
!1575 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !1558)
!1576 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !1558)
!1577 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !1558)
!1578 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !1558)
!1579 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !1558)
!1580 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !1558)
!1581 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !1558)
!1582 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !1558)
!1583 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !1558)
!1584 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !1558)
!1585 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !1558)
!1586 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !1558)
!1587 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !1558)
!1588 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !1558)
!1589 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !1558)
!1590 = !DILocation(line: 0, scope: !1544)
!1591 = !DILocation(line: 356, column: 11, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1491, file: !3, line: 356, column: 7)
!1593 = !DILocation(line: 356, column: 7, scope: !1491)
!1594 = !DILocation(line: 356, column: 27, scope: !1592)
!1595 = !DILocation(line: 356, column: 39, scope: !1592)
!1596 = !DILocation(line: 356, column: 25, scope: !1592)
!1597 = !DILocation(line: 356, column: 20, scope: !1592)
!1598 = !DILocation(line: 357, column: 10, scope: !1491)
!1599 = !DILocation(line: 357, column: 3, scope: !1491)
!1600 = !DILocation(line: 0, scope: !1548)
!1601 = !DILocation(line: 358, column: 1, scope: !1491)
!1602 = distinct !DISubprogram(name: "lua_objlen", scope: !3, file: !3, line: 361, type: !1603, isLocal: false, isDefinition: true, scopeLine: 361, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1605)
!1603 = !DISubroutineType(types: !1604)
!1604 = !{!48, !131, !8}
!1605 = !{!1606, !1607, !1608, !1609}
!1606 = !DILocalVariable(name: "L", arg: 1, scope: !1602, file: !3, line: 361, type: !131)
!1607 = !DILocalVariable(name: "idx", arg: 2, scope: !1602, file: !3, line: 361, type: !8)
!1608 = !DILocalVariable(name: "o", scope: !1602, file: !3, line: 362, type: !140)
!1609 = !DILocalVariable(name: "l", scope: !1610, file: !3, line: 368, type: !48)
!1610 = distinct !DILexicalBlock(scope: !1611, file: !3, line: 367, column: 23)
!1611 = distinct !DILexicalBlock(scope: !1602, file: !3, line: 363, column: 21)
!1612 = !DILocation(line: 361, column: 39, scope: !1602)
!1613 = !DILocation(line: 361, column: 46, scope: !1602)
!1614 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !1615)
!1615 = distinct !DILocation(line: 362, column: 13, scope: !1602)
!1616 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !1615)
!1617 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !1615)
!1618 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !1615)
!1619 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !1615)
!1620 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !1615)
!1621 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !1615)
!1622 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !1615)
!1623 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !1615)
!1624 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !1615)
!1625 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !1615)
!1626 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !1615)
!1627 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !1615)
!1628 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !1615)
!1629 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !1615)
!1630 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !1615)
!1631 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !1615)
!1632 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !1615)
!1633 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !1615)
!1634 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !1615)
!1635 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !1615)
!1636 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !1615)
!1637 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !1615)
!1638 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !1615)
!1639 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !1615)
!1640 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !1615)
!1641 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !1615)
!1642 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !1615)
!1643 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !1615)
!1644 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !1615)
!1645 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !1615)
!1646 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !1615)
!1647 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !1615)
!1648 = !DILocation(line: 0, scope: !569, inlinedAt: !1615)
!1649 = !DILocation(line: 362, column: 9, scope: !1602)
!1650 = !DILocation(line: 363, column: 11, scope: !1602)
!1651 = !DILocation(line: 363, column: 3, scope: !1602)
!1652 = !DILocation(line: 364, column: 30, scope: !1611)
!1653 = !DILocation(line: 364, column: 42, scope: !1611)
!1654 = !DILocation(line: 364, column: 23, scope: !1611)
!1655 = !DILocation(line: 365, column: 32, scope: !1611)
!1656 = !DILocation(line: 365, column: 43, scope: !1611)
!1657 = !DILocation(line: 365, column: 25, scope: !1611)
!1658 = !DILocation(line: 366, column: 39, scope: !1611)
!1659 = !DILocation(line: 366, column: 29, scope: !1611)
!1660 = !DILocation(line: 366, column: 22, scope: !1611)
!1661 = !DILocation(line: 370, column: 12, scope: !1610)
!1662 = !DILocation(line: 370, column: 34, scope: !1610)
!1663 = !DILocation(line: 370, column: 46, scope: !1610)
!1664 = !DILocation(line: 0, scope: !1611)
!1665 = !DILocation(line: 376, column: 1, scope: !1602)
!1666 = distinct !DISubprogram(name: "lua_tocfunction", scope: !3, file: !3, line: 379, type: !1667, isLocal: false, isDefinition: true, scopeLine: 379, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1669)
!1667 = !DISubroutineType(types: !1668)
!1668 = !{!127, !131, !8}
!1669 = !{!1670, !1671, !1672}
!1670 = !DILocalVariable(name: "L", arg: 1, scope: !1666, file: !3, line: 379, type: !131)
!1671 = !DILocalVariable(name: "idx", arg: 2, scope: !1666, file: !3, line: 379, type: !8)
!1672 = !DILocalVariable(name: "o", scope: !1666, file: !3, line: 380, type: !140)
!1673 = !DILocation(line: 379, column: 51, scope: !1666)
!1674 = !DILocation(line: 379, column: 58, scope: !1666)
!1675 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !1676)
!1676 = distinct !DILocation(line: 380, column: 13, scope: !1666)
!1677 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !1676)
!1678 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !1676)
!1679 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !1676)
!1680 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !1676)
!1681 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !1676)
!1682 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !1676)
!1683 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !1676)
!1684 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !1676)
!1685 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !1676)
!1686 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !1676)
!1687 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !1676)
!1688 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !1676)
!1689 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !1676)
!1690 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !1676)
!1691 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !1676)
!1692 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !1676)
!1693 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !1676)
!1694 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !1676)
!1695 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !1676)
!1696 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !1676)
!1697 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !1676)
!1698 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !1676)
!1699 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !1676)
!1700 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !1676)
!1701 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !1676)
!1702 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !1676)
!1703 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !1676)
!1704 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !1676)
!1705 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !1676)
!1706 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !1676)
!1707 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !1676)
!1708 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !1676)
!1709 = !DILocation(line: 0, scope: !569, inlinedAt: !1676)
!1710 = !DILocation(line: 380, column: 9, scope: !1666)
!1711 = !DILocation(line: 381, column: 12, scope: !1666)
!1712 = !DILocation(line: 381, column: 10, scope: !1666)
!1713 = !DILocation(line: 381, column: 51, scope: !1666)
!1714 = !DILocation(line: 381, column: 3, scope: !1666)
!1715 = distinct !DISubprogram(name: "lua_touserdata", scope: !3, file: !3, line: 385, type: !1716, isLocal: false, isDefinition: true, scopeLine: 385, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1718)
!1716 = !DISubroutineType(types: !1717)
!1717 = !{!35, !131, !8}
!1718 = !{!1719, !1720, !1721}
!1719 = !DILocalVariable(name: "L", arg: 1, scope: !1715, file: !3, line: 385, type: !131)
!1720 = !DILocalVariable(name: "idx", arg: 2, scope: !1715, file: !3, line: 385, type: !8)
!1721 = !DILocalVariable(name: "o", scope: !1715, file: !3, line: 386, type: !140)
!1722 = !DILocation(line: 385, column: 42, scope: !1715)
!1723 = !DILocation(line: 385, column: 49, scope: !1715)
!1724 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !1725)
!1725 = distinct !DILocation(line: 386, column: 13, scope: !1715)
!1726 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !1725)
!1727 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !1725)
!1728 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !1725)
!1729 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !1725)
!1730 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !1725)
!1731 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !1725)
!1732 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !1725)
!1733 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !1725)
!1734 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !1725)
!1735 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !1725)
!1736 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !1725)
!1737 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !1725)
!1738 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !1725)
!1739 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !1725)
!1740 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !1725)
!1741 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !1725)
!1742 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !1725)
!1743 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !1725)
!1744 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !1725)
!1745 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !1725)
!1746 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !1725)
!1747 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !1725)
!1748 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !1725)
!1749 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !1725)
!1750 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !1725)
!1751 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !1725)
!1752 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !1725)
!1753 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !1725)
!1754 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !1725)
!1755 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !1725)
!1756 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !1725)
!1757 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !1725)
!1758 = !DILocation(line: 0, scope: !569, inlinedAt: !1725)
!1759 = !DILocation(line: 386, column: 9, scope: !1715)
!1760 = !DILocation(line: 387, column: 11, scope: !1715)
!1761 = !DILocation(line: 387, column: 3, scope: !1715)
!1762 = !DILocation(line: 388, column: 33, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1715, file: !3, line: 387, column: 21)
!1764 = !DILocation(line: 388, column: 46, scope: !1763)
!1765 = !DILocation(line: 388, column: 32, scope: !1763)
!1766 = !DILocation(line: 388, column: 25, scope: !1763)
!1767 = !DILocation(line: 389, column: 37, scope: !1763)
!1768 = !DILocation(line: 389, column: 30, scope: !1763)
!1769 = !DILocation(line: 0, scope: !1763)
!1770 = !DILocation(line: 392, column: 1, scope: !1715)
!1771 = distinct !DISubprogram(name: "lua_tothread", scope: !3, file: !3, line: 395, type: !1772, isLocal: false, isDefinition: true, scopeLine: 395, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1774)
!1772 = !DISubroutineType(types: !1773)
!1773 = !{!131, !131, !8}
!1774 = !{!1775, !1776, !1777}
!1775 = !DILocalVariable(name: "L", arg: 1, scope: !1771, file: !3, line: 395, type: !131)
!1776 = !DILocalVariable(name: "idx", arg: 2, scope: !1771, file: !3, line: 395, type: !8)
!1777 = !DILocalVariable(name: "o", scope: !1771, file: !3, line: 396, type: !140)
!1778 = !DILocation(line: 395, column: 45, scope: !1771)
!1779 = !DILocation(line: 395, column: 52, scope: !1771)
!1780 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !1781)
!1781 = distinct !DILocation(line: 396, column: 13, scope: !1771)
!1782 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !1781)
!1783 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !1781)
!1784 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !1781)
!1785 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !1781)
!1786 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !1781)
!1787 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !1781)
!1788 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !1781)
!1789 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !1781)
!1790 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !1781)
!1791 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !1781)
!1792 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !1781)
!1793 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !1781)
!1794 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !1781)
!1795 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !1781)
!1796 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !1781)
!1797 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !1781)
!1798 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !1781)
!1799 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !1781)
!1800 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !1781)
!1801 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !1781)
!1802 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !1781)
!1803 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !1781)
!1804 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !1781)
!1805 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !1781)
!1806 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !1781)
!1807 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !1781)
!1808 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !1781)
!1809 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !1781)
!1810 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !1781)
!1811 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !1781)
!1812 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !1781)
!1813 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !1781)
!1814 = !DILocation(line: 0, scope: !569, inlinedAt: !1781)
!1815 = !DILocation(line: 396, column: 9, scope: !1771)
!1816 = !DILocation(line: 397, column: 12, scope: !1771)
!1817 = !DILocation(line: 397, column: 10, scope: !1771)
!1818 = !DILocation(line: 397, column: 36, scope: !1771)
!1819 = !DILocation(line: 397, column: 3, scope: !1771)
!1820 = distinct !DISubprogram(name: "lua_topointer", scope: !3, file: !3, line: 401, type: !1821, isLocal: false, isDefinition: true, scopeLine: 401, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1825)
!1821 = !DISubroutineType(types: !1822)
!1822 = !{!1823, !131, !8}
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1825 = !{!1826, !1827, !1828}
!1826 = !DILocalVariable(name: "L", arg: 1, scope: !1820, file: !3, line: 401, type: !131)
!1827 = !DILocalVariable(name: "idx", arg: 2, scope: !1820, file: !3, line: 401, type: !8)
!1828 = !DILocalVariable(name: "o", scope: !1820, file: !3, line: 402, type: !140)
!1829 = !DILocation(line: 401, column: 47, scope: !1820)
!1830 = !DILocation(line: 401, column: 54, scope: !1820)
!1831 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !1832)
!1832 = distinct !DILocation(line: 402, column: 13, scope: !1820)
!1833 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !1832)
!1834 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !1832)
!1835 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !1832)
!1836 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !1832)
!1837 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !1832)
!1838 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !1832)
!1839 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !1832)
!1840 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !1832)
!1841 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !1832)
!1842 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !1832)
!1843 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !1832)
!1844 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !1832)
!1845 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !1832)
!1846 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !1832)
!1847 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !1832)
!1848 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !1832)
!1849 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !1832)
!1850 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !1832)
!1851 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !1832)
!1852 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !1832)
!1853 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !1832)
!1854 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !1832)
!1855 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !1832)
!1856 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !1832)
!1857 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !1832)
!1858 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !1832)
!1859 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !1832)
!1860 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !1832)
!1861 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !1832)
!1862 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !1832)
!1863 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !1832)
!1864 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !1832)
!1865 = !DILocation(line: 0, scope: !569, inlinedAt: !1832)
!1866 = !DILocation(line: 402, column: 9, scope: !1820)
!1867 = !DILocation(line: 403, column: 11, scope: !1820)
!1868 = !DILocation(line: 403, column: 3, scope: !1820)
!1869 = !DILocation(line: 404, column: 29, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1820, file: !3, line: 403, column: 21)
!1871 = !DILocation(line: 404, column: 22, scope: !1870)
!1872 = !DILocation(line: 405, column: 32, scope: !1870)
!1873 = !DILocation(line: 405, column: 25, scope: !1870)
!1874 = !DILocation(line: 406, column: 30, scope: !1870)
!1875 = !DILocation(line: 406, column: 23, scope: !1870)
!1876 = !DILocation(line: 385, column: 42, scope: !1715, inlinedAt: !1877)
!1877 = distinct !DILocation(line: 409, column: 14, scope: !1870)
!1878 = !DILocation(line: 385, column: 49, scope: !1715, inlinedAt: !1877)
!1879 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !1880)
!1880 = distinct !DILocation(line: 386, column: 13, scope: !1715, inlinedAt: !1877)
!1881 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !1880)
!1882 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !1880)
!1883 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !1880)
!1884 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !1880)
!1885 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !1880)
!1886 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !1880)
!1887 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !1880)
!1888 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !1880)
!1889 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !1880)
!1890 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !1880)
!1891 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !1880)
!1892 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !1880)
!1893 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !1880)
!1894 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !1880)
!1895 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !1880)
!1896 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !1880)
!1897 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !1880)
!1898 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !1880)
!1899 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !1880)
!1900 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !1880)
!1901 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !1880)
!1902 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !1880)
!1903 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !1880)
!1904 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !1880)
!1905 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !1880)
!1906 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !1880)
!1907 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !1880)
!1908 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !1880)
!1909 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !1880)
!1910 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !1880)
!1911 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !1880)
!1912 = !DILocation(line: 0, scope: !569, inlinedAt: !1880)
!1913 = !DILocation(line: 386, column: 9, scope: !1715, inlinedAt: !1877)
!1914 = !DILocation(line: 387, column: 11, scope: !1715, inlinedAt: !1877)
!1915 = !DILocation(line: 387, column: 3, scope: !1715, inlinedAt: !1877)
!1916 = !DILocation(line: 388, column: 33, scope: !1763, inlinedAt: !1877)
!1917 = !DILocation(line: 388, column: 46, scope: !1763, inlinedAt: !1877)
!1918 = !DILocation(line: 388, column: 32, scope: !1763, inlinedAt: !1877)
!1919 = !DILocation(line: 388, column: 25, scope: !1763, inlinedAt: !1877)
!1920 = !DILocation(line: 389, column: 37, scope: !1763, inlinedAt: !1877)
!1921 = !DILocation(line: 389, column: 30, scope: !1763, inlinedAt: !1877)
!1922 = !DILocation(line: 0, scope: !1870)
!1923 = !DILocation(line: 412, column: 1, scope: !1820)
!1924 = distinct !DISubprogram(name: "lua_pushnil", scope: !3, file: !3, line: 421, type: !1925, isLocal: false, isDefinition: true, scopeLine: 421, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1927)
!1925 = !DISubroutineType(types: !1926)
!1926 = !{null, !131}
!1927 = !{!1928}
!1928 = !DILocalVariable(name: "L", arg: 1, scope: !1924, file: !3, line: 421, type: !131)
!1929 = !DILocation(line: 421, column: 38, scope: !1924)
!1930 = !DILocation(line: 423, column: 3, scope: !1924)
!1931 = !DILocation(line: 424, column: 3, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1924, file: !3, line: 424, column: 3)
!1933 = !DILocation(line: 426, column: 1, scope: !1924)
!1934 = distinct !DISubprogram(name: "lua_pushnumber", scope: !3, file: !3, line: 429, type: !1935, isLocal: false, isDefinition: true, scopeLine: 429, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1937)
!1935 = !DISubroutineType(types: !1936)
!1936 = !{null, !131, !85}
!1937 = !{!1938, !1939, !1940}
!1938 = !DILocalVariable(name: "L", arg: 1, scope: !1934, file: !3, line: 429, type: !131)
!1939 = !DILocalVariable(name: "n", arg: 2, scope: !1934, file: !3, line: 429, type: !85)
!1940 = !DILocalVariable(name: "i_o", scope: !1941, file: !3, line: 431, type: !74)
!1941 = distinct !DILexicalBlock(scope: !1934, file: !3, line: 431, column: 3)
!1942 = !DILocation(line: 429, column: 41, scope: !1934)
!1943 = !DILocation(line: 429, column: 55, scope: !1934)
!1944 = !DILocation(line: 431, column: 3, scope: !1941)
!1945 = !DILocation(line: 432, column: 3, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1934, file: !3, line: 432, column: 3)
!1947 = !DILocation(line: 434, column: 1, scope: !1934)
!1948 = distinct !DISubprogram(name: "lua_pushinteger", scope: !3, file: !3, line: 437, type: !1949, isLocal: false, isDefinition: true, scopeLine: 437, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1951)
!1949 = !DISubroutineType(types: !1950)
!1950 = !{null, !131, !340}
!1951 = !{!1952, !1953, !1954}
!1952 = !DILocalVariable(name: "L", arg: 1, scope: !1948, file: !3, line: 437, type: !131)
!1953 = !DILocalVariable(name: "n", arg: 2, scope: !1948, file: !3, line: 437, type: !340)
!1954 = !DILocalVariable(name: "i_o", scope: !1955, file: !3, line: 439, type: !74)
!1955 = distinct !DILexicalBlock(scope: !1948, file: !3, line: 439, column: 3)
!1956 = !DILocation(line: 437, column: 42, scope: !1948)
!1957 = !DILocation(line: 437, column: 57, scope: !1948)
!1958 = !DILocation(line: 439, column: 3, scope: !1955)
!1959 = !DILocation(line: 440, column: 3, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1948, file: !3, line: 440, column: 3)
!1961 = !DILocation(line: 442, column: 1, scope: !1948)
!1962 = distinct !DISubprogram(name: "lua_pushlstring", scope: !3, file: !3, line: 445, type: !1963, isLocal: false, isDefinition: true, scopeLine: 445, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1965)
!1963 = !DISubroutineType(types: !1964)
!1964 = !{null, !131, !257, !48}
!1965 = !{!1966, !1967, !1968, !1969}
!1966 = !DILocalVariable(name: "L", arg: 1, scope: !1962, file: !3, line: 445, type: !131)
!1967 = !DILocalVariable(name: "s", arg: 2, scope: !1962, file: !3, line: 445, type: !257)
!1968 = !DILocalVariable(name: "len", arg: 3, scope: !1962, file: !3, line: 445, type: !48)
!1969 = !DILocalVariable(name: "i_o", scope: !1970, file: !3, line: 448, type: !74)
!1970 = distinct !DILexicalBlock(scope: !1962, file: !3, line: 448, column: 3)
!1971 = !DILocation(line: 445, column: 42, scope: !1962)
!1972 = !DILocation(line: 445, column: 57, scope: !1962)
!1973 = !DILocation(line: 445, column: 67, scope: !1962)
!1974 = !DILocation(line: 447, column: 3, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1976, file: !3, line: 447, column: 3)
!1976 = distinct !DILexicalBlock(scope: !1962, file: !3, line: 447, column: 3)
!1977 = !DILocation(line: 447, column: 3, scope: !1976)
!1978 = !DILocation(line: 448, column: 3, scope: !1970)
!1979 = !DILocation(line: 449, column: 3, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1962, file: !3, line: 449, column: 3)
!1981 = !DILocation(line: 451, column: 1, scope: !1962)
!1982 = distinct !DISubprogram(name: "lua_pushstring", scope: !3, file: !3, line: 454, type: !1983, isLocal: false, isDefinition: true, scopeLine: 454, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1985)
!1983 = !DISubroutineType(types: !1984)
!1984 = !{null, !131, !257}
!1985 = !{!1986, !1987}
!1986 = !DILocalVariable(name: "L", arg: 1, scope: !1982, file: !3, line: 454, type: !131)
!1987 = !DILocalVariable(name: "s", arg: 2, scope: !1982, file: !3, line: 454, type: !257)
!1988 = !DILocation(line: 454, column: 41, scope: !1982)
!1989 = !DILocation(line: 454, column: 56, scope: !1982)
!1990 = !DILocation(line: 455, column: 9, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1982, file: !3, line: 455, column: 7)
!1992 = !DILocation(line: 455, column: 7, scope: !1982)
!1993 = !DILocation(line: 421, column: 38, scope: !1924, inlinedAt: !1994)
!1994 = distinct !DILocation(line: 456, column: 5, scope: !1991)
!1995 = !DILocation(line: 423, column: 3, scope: !1924, inlinedAt: !1994)
!1996 = !DILocation(line: 456, column: 5, scope: !1991)
!1997 = !DILocation(line: 458, column: 27, scope: !1991)
!1998 = !DILocation(line: 445, column: 42, scope: !1962, inlinedAt: !1999)
!1999 = distinct !DILocation(line: 458, column: 5, scope: !1991)
!2000 = !DILocation(line: 445, column: 57, scope: !1962, inlinedAt: !1999)
!2001 = !DILocation(line: 445, column: 67, scope: !1962, inlinedAt: !1999)
!2002 = !DILocation(line: 447, column: 3, scope: !1975, inlinedAt: !1999)
!2003 = !DILocation(line: 447, column: 3, scope: !1976, inlinedAt: !1999)
!2004 = !DILocation(line: 448, column: 3, scope: !1970, inlinedAt: !1999)
!2005 = !DILocation(line: 449, column: 3, scope: !1980, inlinedAt: !1999)
!2006 = !DILocation(line: 0, scope: !1991)
!2007 = !DILocation(line: 459, column: 1, scope: !1982)
!2008 = distinct !DISubprogram(name: "lua_pushvfstring", scope: !3, file: !3, line: 462, type: !2009, isLocal: false, isDefinition: true, scopeLine: 463, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2018)
!2009 = !DISubroutineType(types: !2010)
!2010 = !{!257, !131, !257, !2011}
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 459, size: 192, elements: !2013)
!2013 = !{!2014, !2015, !2016, !2017}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2012, file: !3, line: 459, baseType: !46, size: 32)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2012, file: !3, line: 459, baseType: !46, size: 32, offset: 32)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2012, file: !3, line: 459, baseType: !35, size: 64, offset: 64)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2012, file: !3, line: 459, baseType: !35, size: 64, offset: 128)
!2018 = !{!2019, !2020, !2021, !2022}
!2019 = !DILocalVariable(name: "L", arg: 1, scope: !2008, file: !3, line: 462, type: !131)
!2020 = !DILocalVariable(name: "fmt", arg: 2, scope: !2008, file: !3, line: 462, type: !257)
!2021 = !DILocalVariable(name: "argp", arg: 3, scope: !2008, file: !3, line: 463, type: !2011)
!2022 = !DILocalVariable(name: "ret", scope: !2008, file: !3, line: 464, type: !257)
!2023 = !DILocation(line: 462, column: 50, scope: !2008)
!2024 = !DILocation(line: 462, column: 65, scope: !2008)
!2025 = !DILocation(line: 463, column: 47, scope: !2008)
!2026 = !DILocation(line: 466, column: 3, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !2028, file: !3, line: 466, column: 3)
!2028 = distinct !DILexicalBlock(scope: !2008, file: !3, line: 466, column: 3)
!2029 = !DILocation(line: 466, column: 3, scope: !2028)
!2030 = !DILocation(line: 467, column: 9, scope: !2008)
!2031 = !DILocation(line: 464, column: 15, scope: !2008)
!2032 = !DILocation(line: 469, column: 3, scope: !2008)
!2033 = distinct !DISubprogram(name: "lua_pushfstring", scope: !3, file: !3, line: 473, type: !2034, isLocal: false, isDefinition: true, scopeLine: 473, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2036)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{!257, !131, !257, null}
!2036 = !{!2037, !2038, !2039, !2040}
!2037 = !DILocalVariable(name: "L", arg: 1, scope: !2033, file: !3, line: 473, type: !131)
!2038 = !DILocalVariable(name: "fmt", arg: 2, scope: !2033, file: !3, line: 473, type: !257)
!2039 = !DILocalVariable(name: "ret", scope: !2033, file: !3, line: 474, type: !257)
!2040 = !DILocalVariable(name: "argp", scope: !2033, file: !3, line: 475, type: !2041)
!2041 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2042, line: 32, baseType: !2043)
!2042 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!2043 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 475, baseType: !2044)
!2044 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2012, size: 192, elements: !283)
!2045 = !DILocation(line: 473, column: 49, scope: !2033)
!2046 = !DILocation(line: 473, column: 64, scope: !2033)
!2047 = !DILocation(line: 475, column: 3, scope: !2033)
!2048 = !DILocation(line: 475, column: 11, scope: !2033)
!2049 = !DILocation(line: 477, column: 3, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2051, file: !3, line: 477, column: 3)
!2051 = distinct !DILexicalBlock(scope: !2033, file: !3, line: 477, column: 3)
!2052 = !DILocation(line: 477, column: 3, scope: !2051)
!2053 = !DILocation(line: 478, column: 3, scope: !2033)
!2054 = !DILocation(line: 479, column: 9, scope: !2033)
!2055 = !DILocation(line: 474, column: 15, scope: !2033)
!2056 = !DILocation(line: 480, column: 3, scope: !2033)
!2057 = !DILocation(line: 483, column: 1, scope: !2033)
!2058 = !DILocation(line: 482, column: 3, scope: !2033)
!2059 = distinct !DISubprogram(name: "lua_pushcclosure", scope: !3, file: !3, line: 486, type: !2060, isLocal: false, isDefinition: true, scopeLine: 486, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2062)
!2060 = !DISubroutineType(types: !2061)
!2061 = !{null, !131, !127, !8}
!2062 = !{!2063, !2064, !2065, !2066, !2067, !2069, !2070}
!2063 = !DILocalVariable(name: "L", arg: 1, scope: !2059, file: !3, line: 486, type: !131)
!2064 = !DILocalVariable(name: "fn", arg: 2, scope: !2059, file: !3, line: 486, type: !127)
!2065 = !DILocalVariable(name: "n", arg: 3, scope: !2059, file: !3, line: 486, type: !8)
!2066 = !DILocalVariable(name: "cl", scope: !2059, file: !3, line: 487, type: !571)
!2067 = !DILocalVariable(name: "o2", scope: !2068, file: !3, line: 495, type: !362)
!2068 = distinct !DILexicalBlock(scope: !2059, file: !3, line: 495, column: 5)
!2069 = !DILocalVariable(name: "o1", scope: !2068, file: !3, line: 495, type: !74)
!2070 = !DILocalVariable(name: "i_o", scope: !2071, file: !3, line: 496, type: !74)
!2071 = distinct !DILexicalBlock(scope: !2059, file: !3, line: 496, column: 3)
!2072 = !DILocation(line: 486, column: 43, scope: !2059)
!2073 = !DILocation(line: 486, column: 60, scope: !2059)
!2074 = !DILocation(line: 486, column: 68, scope: !2059)
!2075 = !DILocation(line: 489, column: 3, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2077, file: !3, line: 489, column: 3)
!2077 = distinct !DILexicalBlock(scope: !2059, file: !3, line: 489, column: 3)
!2078 = !DILocation(line: 489, column: 3, scope: !2077)
!2079 = !DILocalVariable(name: "L", arg: 1, scope: !2080, file: !3, line: 79, type: !131)
!2080 = distinct !DISubprogram(name: "getcurrenv", scope: !3, file: !3, line: 79, type: !2081, isLocal: true, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2085)
!2081 = !DISubroutineType(types: !2082)
!2082 = !{!2083, !131}
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = !DIDerivedType(tag: DW_TAG_typedef, name: "Table", file: !11, line: 348, baseType: !65)
!2085 = !{!2079, !2086}
!2086 = !DILocalVariable(name: "func", scope: !2087, file: !3, line: 83, type: !571)
!2087 = distinct !DILexicalBlock(scope: !2088, file: !3, line: 82, column: 8)
!2088 = distinct !DILexicalBlock(scope: !2080, file: !3, line: 80, column: 7)
!2089 = !DILocation(line: 79, column: 38, scope: !2080, inlinedAt: !2090)
!2090 = distinct !DILocation(line: 491, column: 31, scope: !2059)
!2091 = !DILocation(line: 80, column: 10, scope: !2088, inlinedAt: !2090)
!2092 = !DILocation(line: 80, column: 19, scope: !2088, inlinedAt: !2090)
!2093 = !DILocation(line: 80, column: 13, scope: !2088, inlinedAt: !2090)
!2094 = !DILocation(line: 80, column: 7, scope: !2080, inlinedAt: !2090)
!2095 = !DILocation(line: 81, column: 12, scope: !2088, inlinedAt: !2090)
!2096 = !DILocation(line: 81, column: 5, scope: !2088, inlinedAt: !2090)
!2097 = !DILocation(line: 83, column: 21, scope: !2087, inlinedAt: !2090)
!2098 = !DILocation(line: 83, column: 14, scope: !2087, inlinedAt: !2090)
!2099 = !DILocation(line: 84, column: 20, scope: !2087, inlinedAt: !2090)
!2100 = !DILocation(line: 0, scope: !2087, inlinedAt: !2090)
!2101 = !DILocation(line: 491, column: 8, scope: !2059)
!2102 = !DILocation(line: 487, column: 12, scope: !2059)
!2103 = !DILocation(line: 492, column: 9, scope: !2059)
!2104 = !DILocation(line: 492, column: 11, scope: !2059)
!2105 = !DILocation(line: 493, column: 6, scope: !2059)
!2106 = !DILocation(line: 493, column: 10, scope: !2059)
!2107 = !DILocation(line: 494, column: 3, scope: !2059)
!2108 = !DILocation(line: 494, column: 11, scope: !2059)
!2109 = !DILocation(line: 495, column: 5, scope: !2068)
!2110 = !DILocation(line: 0, scope: !2068)
!2111 = distinct !{!2111, !2107, !2112}
!2112 = !DILocation(line: 495, column: 5, scope: !2059)
!2113 = !DILocation(line: 496, column: 3, scope: !2071)
!2114 = !DILocation(line: 498, column: 3, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2059, file: !3, line: 498, column: 3)
!2116 = !DILocation(line: 500, column: 1, scope: !2059)
!2117 = distinct !DISubprogram(name: "lua_pushboolean", scope: !3, file: !3, line: 503, type: !521, isLocal: false, isDefinition: true, scopeLine: 503, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2118)
!2118 = !{!2119, !2120, !2121}
!2119 = !DILocalVariable(name: "L", arg: 1, scope: !2117, file: !3, line: 503, type: !131)
!2120 = !DILocalVariable(name: "b", arg: 2, scope: !2117, file: !3, line: 503, type: !8)
!2121 = !DILocalVariable(name: "i_o", scope: !2122, file: !3, line: 505, type: !74)
!2122 = distinct !DILexicalBlock(scope: !2117, file: !3, line: 505, column: 3)
!2123 = !DILocation(line: 503, column: 42, scope: !2117)
!2124 = !DILocation(line: 503, column: 49, scope: !2117)
!2125 = !DILocation(line: 505, column: 3, scope: !2122)
!2126 = !DILocation(line: 506, column: 3, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2117, file: !3, line: 506, column: 3)
!2128 = !DILocation(line: 508, column: 1, scope: !2117)
!2129 = distinct !DISubprogram(name: "lua_pushlightuserdata", scope: !3, file: !3, line: 511, type: !2130, isLocal: false, isDefinition: true, scopeLine: 511, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2132)
!2130 = !DISubroutineType(types: !2131)
!2131 = !{null, !131, !35}
!2132 = !{!2133, !2134, !2135}
!2133 = !DILocalVariable(name: "L", arg: 1, scope: !2129, file: !3, line: 511, type: !131)
!2134 = !DILocalVariable(name: "p", arg: 2, scope: !2129, file: !3, line: 511, type: !35)
!2135 = !DILocalVariable(name: "i_o", scope: !2136, file: !3, line: 513, type: !74)
!2136 = distinct !DILexicalBlock(scope: !2129, file: !3, line: 513, column: 3)
!2137 = !DILocation(line: 511, column: 48, scope: !2129)
!2138 = !DILocation(line: 511, column: 57, scope: !2129)
!2139 = !DILocation(line: 513, column: 3, scope: !2136)
!2140 = !DILocation(line: 514, column: 3, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2129, file: !3, line: 514, column: 3)
!2142 = !DILocation(line: 516, column: 1, scope: !2129)
!2143 = distinct !DISubprogram(name: "lua_pushthread", scope: !3, file: !3, line: 519, type: !129, isLocal: false, isDefinition: true, scopeLine: 519, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2144)
!2144 = !{!2145, !2146}
!2145 = !DILocalVariable(name: "L", arg: 1, scope: !2143, file: !3, line: 519, type: !131)
!2146 = !DILocalVariable(name: "i_o", scope: !2147, file: !3, line: 521, type: !74)
!2147 = distinct !DILexicalBlock(scope: !2143, file: !3, line: 521, column: 3)
!2148 = !DILocation(line: 519, column: 40, scope: !2143)
!2149 = !DILocation(line: 521, column: 3, scope: !2147)
!2150 = !DILocation(line: 522, column: 3, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2143, file: !3, line: 522, column: 3)
!2152 = !DILocation(line: 524, column: 11, scope: !2143)
!2153 = !DILocation(line: 524, column: 17, scope: !2143)
!2154 = !{!485, !375, i64 176}
!2155 = !DILocation(line: 524, column: 28, scope: !2143)
!2156 = !DILocation(line: 524, column: 3, scope: !2143)
!2157 = distinct !DISubprogram(name: "lua_gettable", scope: !3, file: !3, line: 534, type: !521, isLocal: false, isDefinition: true, scopeLine: 534, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2158)
!2158 = !{!2159, !2160, !2161}
!2159 = !DILocalVariable(name: "L", arg: 1, scope: !2157, file: !3, line: 534, type: !131)
!2160 = !DILocalVariable(name: "idx", arg: 2, scope: !2157, file: !3, line: 534, type: !8)
!2161 = !DILocalVariable(name: "t", scope: !2157, file: !3, line: 535, type: !140)
!2162 = !DILocation(line: 534, column: 39, scope: !2157)
!2163 = !DILocation(line: 534, column: 46, scope: !2157)
!2164 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !2165)
!2165 = distinct !DILocation(line: 537, column: 7, scope: !2157)
!2166 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !2165)
!2167 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !2165)
!2168 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !2165)
!2169 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !2165)
!2170 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !2165)
!2171 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !2165)
!2172 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !2165)
!2173 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !2165)
!2174 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !2165)
!2175 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !2165)
!2176 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !2165)
!2177 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !2165)
!2178 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !2165)
!2179 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !2165)
!2180 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !2165)
!2181 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !2165)
!2182 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !2165)
!2183 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !2165)
!2184 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !2165)
!2185 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !2165)
!2186 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !2165)
!2187 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !2165)
!2188 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !2165)
!2189 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !2165)
!2190 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !2165)
!2191 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !2165)
!2192 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !2165)
!2193 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !2165)
!2194 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !2165)
!2195 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !2165)
!2196 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !2165)
!2197 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !2165)
!2198 = !DILocation(line: 0, scope: !569, inlinedAt: !2165)
!2199 = !DILocation(line: 535, column: 9, scope: !2157)
!2200 = !DILocation(line: 539, column: 26, scope: !2157)
!2201 = !DILocation(line: 539, column: 30, scope: !2157)
!2202 = !DILocation(line: 539, column: 3, scope: !2157)
!2203 = !DILocation(line: 541, column: 1, scope: !2157)
!2204 = distinct !DISubprogram(name: "lua_getfield", scope: !3, file: !3, line: 544, type: !2205, isLocal: false, isDefinition: true, scopeLine: 544, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2207)
!2205 = !DISubroutineType(types: !2206)
!2206 = !{null, !131, !8, !257}
!2207 = !{!2208, !2209, !2210, !2211, !2212, !2213}
!2208 = !DILocalVariable(name: "L", arg: 1, scope: !2204, file: !3, line: 544, type: !131)
!2209 = !DILocalVariable(name: "idx", arg: 2, scope: !2204, file: !3, line: 544, type: !8)
!2210 = !DILocalVariable(name: "k", arg: 3, scope: !2204, file: !3, line: 544, type: !257)
!2211 = !DILocalVariable(name: "t", scope: !2204, file: !3, line: 545, type: !140)
!2212 = !DILocalVariable(name: "key", scope: !2204, file: !3, line: 546, type: !75)
!2213 = !DILocalVariable(name: "i_o", scope: !2214, file: !3, line: 550, type: !74)
!2214 = distinct !DILexicalBlock(scope: !2204, file: !3, line: 550, column: 3)
!2215 = !DILocation(line: 544, column: 39, scope: !2204)
!2216 = !DILocation(line: 544, column: 46, scope: !2204)
!2217 = !DILocation(line: 544, column: 63, scope: !2204)
!2218 = !DILocation(line: 546, column: 3, scope: !2204)
!2219 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !2220)
!2220 = distinct !DILocation(line: 548, column: 7, scope: !2204)
!2221 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !2220)
!2222 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !2220)
!2223 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !2220)
!2224 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !2220)
!2225 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !2220)
!2226 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !2220)
!2227 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !2220)
!2228 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !2220)
!2229 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !2220)
!2230 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !2220)
!2231 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !2220)
!2232 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !2220)
!2233 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !2220)
!2234 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !2220)
!2235 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !2220)
!2236 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !2220)
!2237 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !2220)
!2238 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !2220)
!2239 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !2220)
!2240 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !2220)
!2241 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !2220)
!2242 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !2220)
!2243 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !2220)
!2244 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !2220)
!2245 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !2220)
!2246 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !2220)
!2247 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !2220)
!2248 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !2220)
!2249 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !2220)
!2250 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !2220)
!2251 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !2220)
!2252 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !2220)
!2253 = !DILocation(line: 0, scope: !569, inlinedAt: !2220)
!2254 = !DILocation(line: 545, column: 9, scope: !2204)
!2255 = !DILocation(line: 550, column: 3, scope: !2214)
!2256 = !DILocation(line: 551, column: 32, scope: !2204)
!2257 = !DILocation(line: 546, column: 10, scope: !2204)
!2258 = !DILocation(line: 551, column: 3, scope: !2204)
!2259 = !DILocation(line: 552, column: 3, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2204, file: !3, line: 552, column: 3)
!2261 = !DILocation(line: 554, column: 1, scope: !2204)
!2262 = distinct !DISubprogram(name: "lua_rawget", scope: !3, file: !3, line: 557, type: !521, isLocal: false, isDefinition: true, scopeLine: 557, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2263)
!2263 = !{!2264, !2265, !2266, !2267, !2269}
!2264 = !DILocalVariable(name: "L", arg: 1, scope: !2262, file: !3, line: 557, type: !131)
!2265 = !DILocalVariable(name: "idx", arg: 2, scope: !2262, file: !3, line: 557, type: !8)
!2266 = !DILocalVariable(name: "t", scope: !2262, file: !3, line: 558, type: !140)
!2267 = !DILocalVariable(name: "o2", scope: !2268, file: !3, line: 562, type: !362)
!2268 = distinct !DILexicalBlock(scope: !2262, file: !3, line: 562, column: 3)
!2269 = !DILocalVariable(name: "o1", scope: !2268, file: !3, line: 562, type: !74)
!2270 = !DILocation(line: 557, column: 37, scope: !2262)
!2271 = !DILocation(line: 557, column: 44, scope: !2262)
!2272 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !2273)
!2273 = distinct !DILocation(line: 560, column: 7, scope: !2262)
!2274 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !2273)
!2275 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !2273)
!2276 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !2273)
!2277 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !2273)
!2278 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !2273)
!2279 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !2273)
!2280 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !2273)
!2281 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !2273)
!2282 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !2273)
!2283 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !2273)
!2284 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !2273)
!2285 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !2273)
!2286 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !2273)
!2287 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !2273)
!2288 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !2273)
!2289 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !2273)
!2290 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !2273)
!2291 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !2273)
!2292 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !2273)
!2293 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !2273)
!2294 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !2273)
!2295 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !2273)
!2296 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !2273)
!2297 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !2273)
!2298 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !2273)
!2299 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !2273)
!2300 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !2273)
!2301 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !2273)
!2302 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !2273)
!2303 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !2273)
!2304 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !2273)
!2305 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !2273)
!2306 = !DILocation(line: 0, scope: !569, inlinedAt: !2273)
!2307 = !DILocation(line: 558, column: 9, scope: !2262)
!2308 = !DILocation(line: 562, column: 3, scope: !2268)
!2309 = !DILocation(line: 564, column: 1, scope: !2262)
!2310 = distinct !DISubprogram(name: "lua_rawgeti", scope: !3, file: !3, line: 567, type: !2311, isLocal: false, isDefinition: true, scopeLine: 567, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2313)
!2311 = !DISubroutineType(types: !2312)
!2312 = !{null, !131, !8, !8}
!2313 = !{!2314, !2315, !2316, !2317, !2318, !2320}
!2314 = !DILocalVariable(name: "L", arg: 1, scope: !2310, file: !3, line: 567, type: !131)
!2315 = !DILocalVariable(name: "idx", arg: 2, scope: !2310, file: !3, line: 567, type: !8)
!2316 = !DILocalVariable(name: "n", arg: 3, scope: !2310, file: !3, line: 567, type: !8)
!2317 = !DILocalVariable(name: "o", scope: !2310, file: !3, line: 568, type: !140)
!2318 = !DILocalVariable(name: "o2", scope: !2319, file: !3, line: 572, type: !362)
!2319 = distinct !DILexicalBlock(scope: !2310, file: !3, line: 572, column: 3)
!2320 = !DILocalVariable(name: "o1", scope: !2319, file: !3, line: 572, type: !74)
!2321 = !DILocation(line: 567, column: 38, scope: !2310)
!2322 = !DILocation(line: 567, column: 45, scope: !2310)
!2323 = !DILocation(line: 567, column: 54, scope: !2310)
!2324 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !2325)
!2325 = distinct !DILocation(line: 570, column: 7, scope: !2310)
!2326 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !2325)
!2327 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !2325)
!2328 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !2325)
!2329 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !2325)
!2330 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !2325)
!2331 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !2325)
!2332 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !2325)
!2333 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !2325)
!2334 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !2325)
!2335 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !2325)
!2336 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !2325)
!2337 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !2325)
!2338 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !2325)
!2339 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !2325)
!2340 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !2325)
!2341 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !2325)
!2342 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !2325)
!2343 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !2325)
!2344 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !2325)
!2345 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !2325)
!2346 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !2325)
!2347 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !2325)
!2348 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !2325)
!2349 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !2325)
!2350 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !2325)
!2351 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !2325)
!2352 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !2325)
!2353 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !2325)
!2354 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !2325)
!2355 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !2325)
!2356 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !2325)
!2357 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !2325)
!2358 = !DILocation(line: 0, scope: !569, inlinedAt: !2325)
!2359 = !DILocation(line: 568, column: 9, scope: !2310)
!2360 = !DILocation(line: 572, column: 3, scope: !2319)
!2361 = !DILocation(line: 573, column: 3, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2310, file: !3, line: 573, column: 3)
!2363 = !DILocation(line: 575, column: 1, scope: !2310)
!2364 = distinct !DISubprogram(name: "lua_createtable", scope: !3, file: !3, line: 578, type: !2311, isLocal: false, isDefinition: true, scopeLine: 578, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2365)
!2365 = !{!2366, !2367, !2368, !2369}
!2366 = !DILocalVariable(name: "L", arg: 1, scope: !2364, file: !3, line: 578, type: !131)
!2367 = !DILocalVariable(name: "narray", arg: 2, scope: !2364, file: !3, line: 578, type: !8)
!2368 = !DILocalVariable(name: "nrec", arg: 3, scope: !2364, file: !3, line: 578, type: !8)
!2369 = !DILocalVariable(name: "i_o", scope: !2370, file: !3, line: 581, type: !74)
!2370 = distinct !DILexicalBlock(scope: !2364, file: !3, line: 581, column: 3)
!2371 = !DILocation(line: 578, column: 42, scope: !2364)
!2372 = !DILocation(line: 578, column: 49, scope: !2364)
!2373 = !DILocation(line: 578, column: 61, scope: !2364)
!2374 = !DILocation(line: 580, column: 3, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2376, file: !3, line: 580, column: 3)
!2376 = distinct !DILexicalBlock(scope: !2364, file: !3, line: 580, column: 3)
!2377 = !DILocation(line: 580, column: 3, scope: !2376)
!2378 = !DILocation(line: 581, column: 3, scope: !2370)
!2379 = !DILocation(line: 582, column: 3, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !2364, file: !3, line: 582, column: 3)
!2381 = !DILocation(line: 584, column: 1, scope: !2364)
!2382 = distinct !DISubprogram(name: "lua_getmetatable", scope: !3, file: !3, line: 587, type: !387, isLocal: false, isDefinition: true, scopeLine: 587, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2383)
!2383 = !{!2384, !2385, !2386, !2387, !2388, !2389}
!2384 = !DILocalVariable(name: "L", arg: 1, scope: !2382, file: !3, line: 587, type: !131)
!2385 = !DILocalVariable(name: "objindex", arg: 2, scope: !2382, file: !3, line: 587, type: !8)
!2386 = !DILocalVariable(name: "obj", scope: !2382, file: !3, line: 588, type: !362)
!2387 = !DILocalVariable(name: "mt", scope: !2382, file: !3, line: 589, type: !2083)
!2388 = !DILocalVariable(name: "res", scope: !2382, file: !3, line: 590, type: !8)
!2389 = !DILocalVariable(name: "i_o", scope: !2390, file: !3, line: 607, type: !74)
!2390 = distinct !DILexicalBlock(scope: !2391, file: !3, line: 607, column: 5)
!2391 = distinct !DILexicalBlock(scope: !2392, file: !3, line: 606, column: 8)
!2392 = distinct !DILexicalBlock(scope: !2382, file: !3, line: 604, column: 7)
!2393 = !DILocation(line: 587, column: 42, scope: !2382)
!2394 = !DILocation(line: 587, column: 49, scope: !2382)
!2395 = !DILocation(line: 589, column: 10, scope: !2382)
!2396 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !2397)
!2397 = distinct !DILocation(line: 592, column: 9, scope: !2382)
!2398 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !2397)
!2399 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !2397)
!2400 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !2397)
!2401 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !2397)
!2402 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !2397)
!2403 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !2397)
!2404 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !2397)
!2405 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !2397)
!2406 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !2397)
!2407 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !2397)
!2408 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !2397)
!2409 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !2397)
!2410 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !2397)
!2411 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !2397)
!2412 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !2397)
!2413 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !2397)
!2414 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !2397)
!2415 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !2397)
!2416 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !2397)
!2417 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !2397)
!2418 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !2397)
!2419 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !2397)
!2420 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !2397)
!2421 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !2397)
!2422 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !2397)
!2423 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !2397)
!2424 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !2397)
!2425 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !2397)
!2426 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !2397)
!2427 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !2397)
!2428 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !2397)
!2429 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !2397)
!2430 = !DILocation(line: 0, scope: !569, inlinedAt: !2397)
!2431 = !DILocation(line: 588, column: 17, scope: !2382)
!2432 = !DILocation(line: 593, column: 11, scope: !2382)
!2433 = !DILocation(line: 593, column: 3, scope: !2382)
!2434 = !DILocation(line: 595, column: 12, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !2382, file: !3, line: 593, column: 23)
!2436 = !DILocation(line: 595, column: 25, scope: !2435)
!2437 = !DILocation(line: 596, column: 7, scope: !2435)
!2438 = !DILocation(line: 598, column: 12, scope: !2435)
!2439 = !DILocation(line: 598, column: 25, scope: !2435)
!2440 = !DILocation(line: 599, column: 7, scope: !2435)
!2441 = !DILocation(line: 601, column: 12, scope: !2435)
!2442 = !DILocation(line: 602, column: 7, scope: !2435)
!2443 = !DILocation(line: 0, scope: !2435)
!2444 = !DILocation(line: 604, column: 10, scope: !2392)
!2445 = !DILocation(line: 604, column: 7, scope: !2382)
!2446 = !DILocation(line: 607, column: 5, scope: !2390)
!2447 = !DILocation(line: 608, column: 5, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2391, file: !3, line: 608, column: 5)
!2449 = !DILocation(line: 590, column: 7, scope: !2382)
!2450 = !DILocation(line: 0, scope: !2391)
!2451 = !DILocation(line: 612, column: 3, scope: !2382)
!2452 = distinct !DISubprogram(name: "lua_getfenv", scope: !3, file: !3, line: 616, type: !521, isLocal: false, isDefinition: true, scopeLine: 616, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2453)
!2453 = !{!2454, !2455, !2456, !2457, !2460, !2462, !2464}
!2454 = !DILocalVariable(name: "L", arg: 1, scope: !2452, file: !3, line: 616, type: !131)
!2455 = !DILocalVariable(name: "idx", arg: 2, scope: !2452, file: !3, line: 616, type: !8)
!2456 = !DILocalVariable(name: "o", scope: !2452, file: !3, line: 617, type: !140)
!2457 = !DILocalVariable(name: "i_o", scope: !2458, file: !3, line: 623, type: !74)
!2458 = distinct !DILexicalBlock(scope: !2459, file: !3, line: 623, column: 7)
!2459 = distinct !DILexicalBlock(scope: !2452, file: !3, line: 621, column: 21)
!2460 = !DILocalVariable(name: "i_o", scope: !2461, file: !3, line: 626, type: !74)
!2461 = distinct !DILexicalBlock(scope: !2459, file: !3, line: 626, column: 7)
!2462 = !DILocalVariable(name: "o2", scope: !2463, file: !3, line: 629, type: !362)
!2463 = distinct !DILexicalBlock(scope: !2459, file: !3, line: 629, column: 7)
!2464 = !DILocalVariable(name: "o1", scope: !2463, file: !3, line: 629, type: !74)
!2465 = !DILocation(line: 616, column: 38, scope: !2452)
!2466 = !DILocation(line: 616, column: 45, scope: !2452)
!2467 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !2468)
!2468 = distinct !DILocation(line: 619, column: 7, scope: !2452)
!2469 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !2468)
!2470 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !2468)
!2471 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !2468)
!2472 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !2468)
!2473 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !2468)
!2474 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !2468)
!2475 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !2468)
!2476 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !2468)
!2477 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !2468)
!2478 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !2468)
!2479 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !2468)
!2480 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !2468)
!2481 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !2468)
!2482 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !2468)
!2483 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !2468)
!2484 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !2468)
!2485 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !2468)
!2486 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !2468)
!2487 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !2468)
!2488 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !2468)
!2489 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !2468)
!2490 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !2468)
!2491 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !2468)
!2492 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !2468)
!2493 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !2468)
!2494 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !2468)
!2495 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !2468)
!2496 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !2468)
!2497 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !2468)
!2498 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !2468)
!2499 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !2468)
!2500 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !2468)
!2501 = !DILocation(line: 0, scope: !569, inlinedAt: !2468)
!2502 = !DILocation(line: 617, column: 9, scope: !2452)
!2503 = !DILocation(line: 621, column: 11, scope: !2452)
!2504 = !DILocation(line: 621, column: 3, scope: !2452)
!2505 = !DILocation(line: 623, column: 7, scope: !2458)
!2506 = !DILocation(line: 624, column: 7, scope: !2459)
!2507 = !DILocation(line: 626, column: 7, scope: !2461)
!2508 = !DILocation(line: 627, column: 7, scope: !2459)
!2509 = !DILocation(line: 629, column: 7, scope: !2463)
!2510 = !DILocation(line: 630, column: 7, scope: !2459)
!2511 = !DILocation(line: 632, column: 7, scope: !2459)
!2512 = !DILocation(line: 633, column: 7, scope: !2459)
!2513 = !DILocation(line: 635, column: 3, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2452, file: !3, line: 635, column: 3)
!2515 = !DILocation(line: 0, scope: !2458)
!2516 = !DILocation(line: 637, column: 1, scope: !2452)
!2517 = distinct !DISubprogram(name: "lua_settable", scope: !3, file: !3, line: 645, type: !521, isLocal: false, isDefinition: true, scopeLine: 645, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2518)
!2518 = !{!2519, !2520, !2521}
!2519 = !DILocalVariable(name: "L", arg: 1, scope: !2517, file: !3, line: 645, type: !131)
!2520 = !DILocalVariable(name: "idx", arg: 2, scope: !2517, file: !3, line: 645, type: !8)
!2521 = !DILocalVariable(name: "t", scope: !2517, file: !3, line: 646, type: !140)
!2522 = !DILocation(line: 645, column: 39, scope: !2517)
!2523 = !DILocation(line: 645, column: 46, scope: !2517)
!2524 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !2525)
!2525 = distinct !DILocation(line: 649, column: 7, scope: !2517)
!2526 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !2525)
!2527 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !2525)
!2528 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !2525)
!2529 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !2525)
!2530 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !2525)
!2531 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !2525)
!2532 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !2525)
!2533 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !2525)
!2534 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !2525)
!2535 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !2525)
!2536 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !2525)
!2537 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !2525)
!2538 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !2525)
!2539 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !2525)
!2540 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !2525)
!2541 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !2525)
!2542 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !2525)
!2543 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !2525)
!2544 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !2525)
!2545 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !2525)
!2546 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !2525)
!2547 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !2525)
!2548 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !2525)
!2549 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !2525)
!2550 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !2525)
!2551 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !2525)
!2552 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !2525)
!2553 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !2525)
!2554 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !2525)
!2555 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !2525)
!2556 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !2525)
!2557 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !2525)
!2558 = !DILocation(line: 0, scope: !569, inlinedAt: !2525)
!2559 = !DILocation(line: 646, column: 9, scope: !2517)
!2560 = !DILocation(line: 651, column: 26, scope: !2517)
!2561 = !DILocation(line: 651, column: 30, scope: !2517)
!2562 = !DILocation(line: 651, column: 42, scope: !2517)
!2563 = !DILocation(line: 651, column: 3, scope: !2517)
!2564 = !DILocation(line: 652, column: 10, scope: !2517)
!2565 = !DILocation(line: 654, column: 1, scope: !2517)
!2566 = distinct !DISubprogram(name: "lua_setfield", scope: !3, file: !3, line: 657, type: !2205, isLocal: false, isDefinition: true, scopeLine: 657, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2567)
!2567 = !{!2568, !2569, !2570, !2571, !2572, !2573}
!2568 = !DILocalVariable(name: "L", arg: 1, scope: !2566, file: !3, line: 657, type: !131)
!2569 = !DILocalVariable(name: "idx", arg: 2, scope: !2566, file: !3, line: 657, type: !8)
!2570 = !DILocalVariable(name: "k", arg: 3, scope: !2566, file: !3, line: 657, type: !257)
!2571 = !DILocalVariable(name: "t", scope: !2566, file: !3, line: 658, type: !140)
!2572 = !DILocalVariable(name: "key", scope: !2566, file: !3, line: 659, type: !75)
!2573 = !DILocalVariable(name: "i_o", scope: !2574, file: !3, line: 664, type: !74)
!2574 = distinct !DILexicalBlock(scope: !2566, file: !3, line: 664, column: 3)
!2575 = !DILocation(line: 657, column: 39, scope: !2566)
!2576 = !DILocation(line: 657, column: 46, scope: !2566)
!2577 = !DILocation(line: 657, column: 63, scope: !2566)
!2578 = !DILocation(line: 659, column: 3, scope: !2566)
!2579 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !2580)
!2580 = distinct !DILocation(line: 662, column: 7, scope: !2566)
!2581 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !2580)
!2582 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !2580)
!2583 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !2580)
!2584 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !2580)
!2585 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !2580)
!2586 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !2580)
!2587 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !2580)
!2588 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !2580)
!2589 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !2580)
!2590 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !2580)
!2591 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !2580)
!2592 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !2580)
!2593 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !2580)
!2594 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !2580)
!2595 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !2580)
!2596 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !2580)
!2597 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !2580)
!2598 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !2580)
!2599 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !2580)
!2600 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !2580)
!2601 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !2580)
!2602 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !2580)
!2603 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !2580)
!2604 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !2580)
!2605 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !2580)
!2606 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !2580)
!2607 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !2580)
!2608 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !2580)
!2609 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !2580)
!2610 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !2580)
!2611 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !2580)
!2612 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !2580)
!2613 = !DILocation(line: 0, scope: !569, inlinedAt: !2580)
!2614 = !DILocation(line: 658, column: 9, scope: !2566)
!2615 = !DILocation(line: 664, column: 3, scope: !2574)
!2616 = !DILocation(line: 665, column: 32, scope: !2566)
!2617 = !DILocation(line: 665, column: 36, scope: !2566)
!2618 = !DILocation(line: 659, column: 10, scope: !2566)
!2619 = !DILocation(line: 665, column: 3, scope: !2566)
!2620 = !DILocation(line: 666, column: 9, scope: !2566)
!2621 = !DILocation(line: 668, column: 1, scope: !2566)
!2622 = distinct !DISubprogram(name: "lua_rawset", scope: !3, file: !3, line: 671, type: !521, isLocal: false, isDefinition: true, scopeLine: 671, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2623)
!2623 = !{!2624, !2625, !2626, !2627, !2629}
!2624 = !DILocalVariable(name: "L", arg: 1, scope: !2622, file: !3, line: 671, type: !131)
!2625 = !DILocalVariable(name: "idx", arg: 2, scope: !2622, file: !3, line: 671, type: !8)
!2626 = !DILocalVariable(name: "t", scope: !2622, file: !3, line: 672, type: !140)
!2627 = !DILocalVariable(name: "o2", scope: !2628, file: !3, line: 677, type: !362)
!2628 = distinct !DILexicalBlock(scope: !2622, file: !3, line: 677, column: 3)
!2629 = !DILocalVariable(name: "o1", scope: !2628, file: !3, line: 677, type: !74)
!2630 = !DILocation(line: 671, column: 37, scope: !2622)
!2631 = !DILocation(line: 671, column: 44, scope: !2622)
!2632 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !2633)
!2633 = distinct !DILocation(line: 675, column: 7, scope: !2622)
!2634 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !2633)
!2635 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !2633)
!2636 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !2633)
!2637 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !2633)
!2638 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !2633)
!2639 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !2633)
!2640 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !2633)
!2641 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !2633)
!2642 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !2633)
!2643 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !2633)
!2644 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !2633)
!2645 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !2633)
!2646 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !2633)
!2647 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !2633)
!2648 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !2633)
!2649 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !2633)
!2650 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !2633)
!2651 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !2633)
!2652 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !2633)
!2653 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !2633)
!2654 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !2633)
!2655 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !2633)
!2656 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !2633)
!2657 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !2633)
!2658 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !2633)
!2659 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !2633)
!2660 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !2633)
!2661 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !2633)
!2662 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !2633)
!2663 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !2633)
!2664 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !2633)
!2665 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !2633)
!2666 = !DILocation(line: 0, scope: !569, inlinedAt: !2633)
!2667 = !DILocation(line: 672, column: 9, scope: !2622)
!2668 = !DILocation(line: 677, column: 3, scope: !2628)
!2669 = !DILocation(line: 678, column: 3, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2671, file: !3, line: 678, column: 3)
!2671 = distinct !DILexicalBlock(scope: !2622, file: !3, line: 678, column: 3)
!2672 = !DILocation(line: 678, column: 3, scope: !2671)
!2673 = !DILocation(line: 679, column: 10, scope: !2622)
!2674 = !DILocation(line: 681, column: 1, scope: !2622)
!2675 = distinct !DISubprogram(name: "lua_rawseti", scope: !3, file: !3, line: 684, type: !2311, isLocal: false, isDefinition: true, scopeLine: 684, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2676)
!2676 = !{!2677, !2678, !2679, !2680, !2681, !2683}
!2677 = !DILocalVariable(name: "L", arg: 1, scope: !2675, file: !3, line: 684, type: !131)
!2678 = !DILocalVariable(name: "idx", arg: 2, scope: !2675, file: !3, line: 684, type: !8)
!2679 = !DILocalVariable(name: "n", arg: 3, scope: !2675, file: !3, line: 684, type: !8)
!2680 = !DILocalVariable(name: "o", scope: !2675, file: !3, line: 685, type: !140)
!2681 = !DILocalVariable(name: "o2", scope: !2682, file: !3, line: 690, type: !362)
!2682 = distinct !DILexicalBlock(scope: !2675, file: !3, line: 690, column: 3)
!2683 = !DILocalVariable(name: "o1", scope: !2682, file: !3, line: 690, type: !74)
!2684 = !DILocation(line: 684, column: 38, scope: !2675)
!2685 = !DILocation(line: 684, column: 45, scope: !2675)
!2686 = !DILocation(line: 684, column: 54, scope: !2675)
!2687 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !2688)
!2688 = distinct !DILocation(line: 688, column: 7, scope: !2675)
!2689 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !2688)
!2690 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !2688)
!2691 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !2688)
!2692 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !2688)
!2693 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !2688)
!2694 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !2688)
!2695 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !2688)
!2696 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !2688)
!2697 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !2688)
!2698 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !2688)
!2699 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !2688)
!2700 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !2688)
!2701 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !2688)
!2702 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !2688)
!2703 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !2688)
!2704 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !2688)
!2705 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !2688)
!2706 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !2688)
!2707 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !2688)
!2708 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !2688)
!2709 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !2688)
!2710 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !2688)
!2711 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !2688)
!2712 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !2688)
!2713 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !2688)
!2714 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !2688)
!2715 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !2688)
!2716 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !2688)
!2717 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !2688)
!2718 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !2688)
!2719 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !2688)
!2720 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !2688)
!2721 = !DILocation(line: 0, scope: !569, inlinedAt: !2688)
!2722 = !DILocation(line: 685, column: 9, scope: !2675)
!2723 = !DILocation(line: 690, column: 3, scope: !2682)
!2724 = !DILocation(line: 691, column: 3, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2726, file: !3, line: 691, column: 3)
!2726 = distinct !DILexicalBlock(scope: !2675, file: !3, line: 691, column: 3)
!2727 = !DILocation(line: 691, column: 3, scope: !2726)
!2728 = !DILocation(line: 692, column: 9, scope: !2675)
!2729 = !DILocation(line: 694, column: 1, scope: !2675)
!2730 = distinct !DISubprogram(name: "lua_setmetatable", scope: !3, file: !3, line: 697, type: !387, isLocal: false, isDefinition: true, scopeLine: 697, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2731)
!2731 = !{!2732, !2733, !2734, !2735}
!2732 = !DILocalVariable(name: "L", arg: 1, scope: !2730, file: !3, line: 697, type: !131)
!2733 = !DILocalVariable(name: "objindex", arg: 2, scope: !2730, file: !3, line: 697, type: !8)
!2734 = !DILocalVariable(name: "obj", scope: !2730, file: !3, line: 698, type: !74)
!2735 = !DILocalVariable(name: "mt", scope: !2730, file: !3, line: 699, type: !2083)
!2736 = !DILocation(line: 697, column: 42, scope: !2730)
!2737 = !DILocation(line: 697, column: 49, scope: !2730)
!2738 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !2739)
!2739 = distinct !DILocation(line: 702, column: 9, scope: !2730)
!2740 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !2739)
!2741 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !2739)
!2742 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !2739)
!2743 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !2739)
!2744 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !2739)
!2745 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !2739)
!2746 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !2739)
!2747 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !2739)
!2748 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !2739)
!2749 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !2739)
!2750 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !2739)
!2751 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !2739)
!2752 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !2739)
!2753 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !2739)
!2754 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !2739)
!2755 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !2739)
!2756 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !2739)
!2757 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !2739)
!2758 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !2739)
!2759 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !2739)
!2760 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !2739)
!2761 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !2739)
!2762 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !2739)
!2763 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !2739)
!2764 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !2739)
!2765 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !2739)
!2766 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !2739)
!2767 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !2739)
!2768 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !2739)
!2769 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !2739)
!2770 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !2739)
!2771 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !2739)
!2772 = !DILocation(line: 0, scope: !569, inlinedAt: !2739)
!2773 = !DILocation(line: 698, column: 11, scope: !2730)
!2774 = !DILocation(line: 704, column: 7, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2730, file: !3, line: 704, column: 7)
!2776 = !DILocation(line: 704, column: 7, scope: !2730)
!2777 = !DILocation(line: 708, column: 10, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !2775, file: !3, line: 706, column: 8)
!2779 = !DILocation(line: 699, column: 10, scope: !2730)
!2780 = !DILocation(line: 0, scope: !2778)
!2781 = !DILocation(line: 710, column: 11, scope: !2730)
!2782 = !DILocation(line: 710, column: 3, scope: !2730)
!2783 = !DILocation(line: 712, column: 7, scope: !2784)
!2784 = distinct !DILexicalBlock(scope: !2785, file: !3, line: 711, column: 22)
!2785 = distinct !DILexicalBlock(scope: !2730, file: !3, line: 710, column: 23)
!2786 = !DILocation(line: 712, column: 20, scope: !2784)
!2787 = !DILocation(line: 712, column: 30, scope: !2784)
!2788 = !DILocation(line: 713, column: 11, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2784, file: !3, line: 713, column: 11)
!2790 = !DILocation(line: 713, column: 11, scope: !2784)
!2791 = !DILocation(line: 714, column: 9, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2793, file: !3, line: 714, column: 9)
!2793 = distinct !DILexicalBlock(scope: !2789, file: !3, line: 714, column: 9)
!2794 = !DILocation(line: 714, column: 9, scope: !2793)
!2795 = !DILocation(line: 718, column: 7, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2785, file: !3, line: 717, column: 25)
!2797 = !DILocation(line: 718, column: 20, scope: !2796)
!2798 = !DILocation(line: 718, column: 30, scope: !2796)
!2799 = !DILocation(line: 719, column: 11, scope: !2800)
!2800 = distinct !DILexicalBlock(scope: !2796, file: !3, line: 719, column: 11)
!2801 = !DILocation(line: 719, column: 11, scope: !2796)
!2802 = !DILocation(line: 720, column: 9, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2804, file: !3, line: 720, column: 9)
!2804 = distinct !DILexicalBlock(scope: !2800, file: !3, line: 720, column: 9)
!2805 = !DILocation(line: 720, column: 9, scope: !2804)
!2806 = !DILocation(line: 724, column: 7, scope: !2807)
!2807 = distinct !DILexicalBlock(scope: !2785, file: !3, line: 723, column: 14)
!2808 = !DILocation(line: 724, column: 28, scope: !2807)
!2809 = !DILocation(line: 725, column: 7, scope: !2807)
!2810 = !DILocation(line: 728, column: 9, scope: !2730)
!2811 = !DILocation(line: 730, column: 3, scope: !2730)
!2812 = distinct !DISubprogram(name: "lua_setfenv", scope: !3, file: !3, line: 734, type: !387, isLocal: false, isDefinition: true, scopeLine: 734, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2813)
!2813 = !{!2814, !2815, !2816, !2817, !2818}
!2814 = !DILocalVariable(name: "L", arg: 1, scope: !2812, file: !3, line: 734, type: !131)
!2815 = !DILocalVariable(name: "idx", arg: 2, scope: !2812, file: !3, line: 734, type: !8)
!2816 = !DILocalVariable(name: "o", scope: !2812, file: !3, line: 735, type: !140)
!2817 = !DILocalVariable(name: "res", scope: !2812, file: !3, line: 736, type: !8)
!2818 = !DILocalVariable(name: "i_o", scope: !2819, file: !3, line: 750, type: !74)
!2819 = distinct !DILexicalBlock(scope: !2820, file: !3, line: 750, column: 7)
!2820 = distinct !DILexicalBlock(scope: !2812, file: !3, line: 742, column: 21)
!2821 = !DILocation(line: 734, column: 37, scope: !2812)
!2822 = !DILocation(line: 734, column: 44, scope: !2812)
!2823 = !DILocation(line: 736, column: 7, scope: !2812)
!2824 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !2825)
!2825 = distinct !DILocation(line: 739, column: 7, scope: !2812)
!2826 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !2825)
!2827 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !2825)
!2828 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !2825)
!2829 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !2825)
!2830 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !2825)
!2831 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !2825)
!2832 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !2825)
!2833 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !2825)
!2834 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !2825)
!2835 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !2825)
!2836 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !2825)
!2837 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !2825)
!2838 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !2825)
!2839 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !2825)
!2840 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !2825)
!2841 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !2825)
!2842 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !2825)
!2843 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !2825)
!2844 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !2825)
!2845 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !2825)
!2846 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !2825)
!2847 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !2825)
!2848 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !2825)
!2849 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !2825)
!2850 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !2825)
!2851 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !2825)
!2852 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !2825)
!2853 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !2825)
!2854 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !2825)
!2855 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !2825)
!2856 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !2825)
!2857 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !2825)
!2858 = !DILocation(line: 0, scope: !569, inlinedAt: !2825)
!2859 = !DILocation(line: 735, column: 9, scope: !2812)
!2860 = !DILocation(line: 742, column: 11, scope: !2812)
!2861 = !DILocation(line: 742, column: 3, scope: !2812)
!2862 = !DILocation(line: 757, column: 6, scope: !2812)
!2863 = !DILocation(line: 744, column: 27, scope: !2820)
!2864 = !DILocation(line: 744, column: 7, scope: !2820)
!2865 = !DILocation(line: 744, column: 21, scope: !2820)
!2866 = !DILocation(line: 744, column: 25, scope: !2820)
!2867 = !DILocation(line: 745, column: 7, scope: !2820)
!2868 = !DILocation(line: 747, column: 24, scope: !2820)
!2869 = !DILocation(line: 747, column: 7, scope: !2820)
!2870 = !DILocation(line: 747, column: 18, scope: !2820)
!2871 = !DILocation(line: 747, column: 22, scope: !2820)
!2872 = !DILocation(line: 748, column: 7, scope: !2820)
!2873 = !DILocation(line: 750, column: 7, scope: !2819)
!2874 = !DILocation(line: 751, column: 7, scope: !2820)
!2875 = !DILocation(line: 756, column: 12, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2877, file: !3, line: 756, column: 12)
!2877 = distinct !DILexicalBlock(scope: !2878, file: !3, line: 756, column: 12)
!2878 = distinct !DILexicalBlock(scope: !2812, file: !3, line: 756, column: 7)
!2879 = !DILocation(line: 756, column: 12, scope: !2877)
!2880 = !DILocation(line: 757, column: 9, scope: !2812)
!2881 = !DILocation(line: 759, column: 3, scope: !2812)
!2882 = distinct !DISubprogram(name: "lua_call", scope: !3, file: !3, line: 776, type: !2311, isLocal: false, isDefinition: true, scopeLine: 776, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2883)
!2883 = !{!2884, !2885, !2886, !2887}
!2884 = !DILocalVariable(name: "L", arg: 1, scope: !2882, file: !3, line: 776, type: !131)
!2885 = !DILocalVariable(name: "nargs", arg: 2, scope: !2882, file: !3, line: 776, type: !8)
!2886 = !DILocalVariable(name: "nresults", arg: 3, scope: !2882, file: !3, line: 776, type: !8)
!2887 = !DILocalVariable(name: "func", scope: !2882, file: !3, line: 777, type: !140)
!2888 = !DILocation(line: 776, column: 35, scope: !2882)
!2889 = !DILocation(line: 776, column: 42, scope: !2882)
!2890 = !DILocation(line: 776, column: 53, scope: !2882)
!2891 = !DILocation(line: 781, column: 13, scope: !2882)
!2892 = !DILocation(line: 781, column: 25, scope: !2882)
!2893 = !DILocation(line: 781, column: 17, scope: !2882)
!2894 = !DILocation(line: 777, column: 9, scope: !2882)
!2895 = !DILocation(line: 782, column: 3, scope: !2882)
!2896 = !DILocation(line: 783, column: 3, scope: !2897)
!2897 = distinct !DILexicalBlock(scope: !2898, file: !3, line: 783, column: 3)
!2898 = distinct !DILexicalBlock(scope: !2882, file: !3, line: 783, column: 3)
!2899 = !DILocation(line: 783, column: 3, scope: !2898)
!2900 = !DILocation(line: 785, column: 1, scope: !2882)
!2901 = distinct !DISubprogram(name: "lua_pcall", scope: !3, file: !3, line: 805, type: !2902, isLocal: false, isDefinition: true, scopeLine: 805, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2904)
!2902 = !DISubroutineType(types: !2903)
!2903 = !{!8, !131, !8, !8, !8}
!2904 = !{!2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912}
!2905 = !DILocalVariable(name: "L", arg: 1, scope: !2901, file: !3, line: 805, type: !131)
!2906 = !DILocalVariable(name: "nargs", arg: 2, scope: !2901, file: !3, line: 805, type: !8)
!2907 = !DILocalVariable(name: "nresults", arg: 3, scope: !2901, file: !3, line: 805, type: !8)
!2908 = !DILocalVariable(name: "errfunc", arg: 4, scope: !2901, file: !3, line: 805, type: !8)
!2909 = !DILocalVariable(name: "c", scope: !2901, file: !3, line: 806, type: !342)
!2910 = !DILocalVariable(name: "status", scope: !2901, file: !3, line: 807, type: !8)
!2911 = !DILocalVariable(name: "func", scope: !2901, file: !3, line: 808, type: !279)
!2912 = !DILocalVariable(name: "o", scope: !2913, file: !3, line: 815, type: !140)
!2913 = distinct !DILexicalBlock(scope: !2914, file: !3, line: 814, column: 8)
!2914 = distinct !DILexicalBlock(scope: !2901, file: !3, line: 812, column: 7)
!2915 = !DILocation(line: 805, column: 35, scope: !2901)
!2916 = !DILocation(line: 805, column: 42, scope: !2901)
!2917 = !DILocation(line: 805, column: 53, scope: !2901)
!2918 = !DILocation(line: 805, column: 67, scope: !2901)
!2919 = !DILocation(line: 806, column: 3, scope: !2901)
!2920 = !DILocation(line: 812, column: 15, scope: !2914)
!2921 = !DILocation(line: 812, column: 7, scope: !2901)
!2922 = !DILocation(line: 821, column: 38, scope: !2901)
!2923 = !{!374, !375, i64 64}
!2924 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !2925)
!2925 = distinct !DILocation(line: 815, column: 15, scope: !2913)
!2926 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !2925)
!2927 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !2925)
!2928 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !2925)
!2929 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !2925)
!2930 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !2925)
!2931 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !2925)
!2932 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !2925)
!2933 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !2925)
!2934 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !2925)
!2935 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !2925)
!2936 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !2925)
!2937 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !2925)
!2938 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !2925)
!2939 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !2925)
!2940 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !2925)
!2941 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !2925)
!2942 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !2925)
!2943 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !2925)
!2944 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !2925)
!2945 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !2925)
!2946 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !2925)
!2947 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !2925)
!2948 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !2925)
!2949 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !2925)
!2950 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !2925)
!2951 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !2925)
!2952 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !2925)
!2953 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !2925)
!2954 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !2925)
!2955 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !2925)
!2956 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !2925)
!2957 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !2925)
!2958 = !DILocation(line: 0, scope: !569, inlinedAt: !2925)
!2959 = !DILocation(line: 815, column: 11, scope: !2913)
!2960 = !DILocation(line: 817, column: 12, scope: !2913)
!2961 = !DILocation(line: 808, column: 13, scope: !2901)
!2962 = !DILocation(line: 0, scope: !2913)
!2963 = !DILocation(line: 819, column: 15, scope: !2901)
!2964 = !DILocation(line: 819, column: 27, scope: !2901)
!2965 = !DILocation(line: 819, column: 19, scope: !2901)
!2966 = !DILocation(line: 819, column: 5, scope: !2901)
!2967 = !DILocation(line: 819, column: 10, scope: !2901)
!2968 = !{!2969, !375, i64 0}
!2969 = !{!"CallS", !375, i64 0, !378, i64 8}
!2970 = !DILocation(line: 820, column: 5, scope: !2901)
!2971 = !DILocation(line: 820, column: 14, scope: !2901)
!2972 = !{!2969, !378, i64 8}
!2973 = !DILocation(line: 821, column: 12, scope: !2901)
!2974 = !DILocation(line: 807, column: 7, scope: !2901)
!2975 = !DILocation(line: 822, column: 3, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !2977, file: !3, line: 822, column: 3)
!2977 = distinct !DILexicalBlock(scope: !2901, file: !3, line: 822, column: 3)
!2978 = !DILocation(line: 822, column: 3, scope: !2977)
!2979 = !DILocation(line: 825, column: 1, scope: !2901)
!2980 = !DILocation(line: 824, column: 3, scope: !2901)
!2981 = distinct !DISubprogram(name: "f_call", scope: !3, file: !3, line: 798, type: !2130, isLocal: true, isDefinition: true, scopeLine: 798, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2982)
!2982 = !{!2983, !2984, !2985}
!2983 = !DILocalVariable(name: "L", arg: 1, scope: !2981, file: !3, line: 798, type: !131)
!2984 = !DILocalVariable(name: "ud", arg: 2, scope: !2981, file: !3, line: 798, type: !35)
!2985 = !DILocalVariable(name: "c", scope: !2981, file: !3, line: 799, type: !341)
!2986 = !DILocation(line: 798, column: 32, scope: !2981)
!2987 = !DILocation(line: 798, column: 41, scope: !2981)
!2988 = !DILocation(line: 799, column: 17, scope: !2981)
!2989 = !DILocation(line: 800, column: 19, scope: !2981)
!2990 = !DILocation(line: 800, column: 28, scope: !2981)
!2991 = !DILocation(line: 800, column: 3, scope: !2981)
!2992 = !DILocation(line: 801, column: 1, scope: !2981)
!2993 = distinct !DISubprogram(name: "lua_cpcall", scope: !3, file: !3, line: 850, type: !2994, isLocal: false, isDefinition: true, scopeLine: 850, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2996)
!2994 = !DISubroutineType(types: !2995)
!2995 = !{!8, !131, !127, !35}
!2996 = !{!2997, !2998, !2999, !3000, !3001}
!2997 = !DILocalVariable(name: "L", arg: 1, scope: !2993, file: !3, line: 850, type: !131)
!2998 = !DILocalVariable(name: "func", arg: 2, scope: !2993, file: !3, line: 850, type: !127)
!2999 = !DILocalVariable(name: "ud", arg: 3, scope: !2993, file: !3, line: 850, type: !35)
!3000 = !DILocalVariable(name: "c", scope: !2993, file: !3, line: 851, type: !347)
!3001 = !DILocalVariable(name: "status", scope: !2993, file: !3, line: 852, type: !8)
!3002 = !DILocation(line: 850, column: 36, scope: !2993)
!3003 = !DILocation(line: 850, column: 53, scope: !2993)
!3004 = !DILocation(line: 850, column: 65, scope: !2993)
!3005 = !DILocation(line: 851, column: 3, scope: !2993)
!3006 = !DILocation(line: 854, column: 5, scope: !2993)
!3007 = !DILocation(line: 854, column: 10, scope: !2993)
!3008 = !{!3009, !375, i64 0}
!3009 = !{!"CCallS", !375, i64 0, !375, i64 8}
!3010 = !DILocation(line: 855, column: 5, scope: !2993)
!3011 = !DILocation(line: 855, column: 8, scope: !2993)
!3012 = !{!3009, !375, i64 8}
!3013 = !DILocation(line: 856, column: 39, scope: !2993)
!3014 = !DILocation(line: 856, column: 12, scope: !2993)
!3015 = !DILocation(line: 852, column: 7, scope: !2993)
!3016 = !DILocation(line: 859, column: 1, scope: !2993)
!3017 = !DILocation(line: 858, column: 3, scope: !2993)
!3018 = distinct !DISubprogram(name: "f_Ccall", scope: !3, file: !3, line: 837, type: !2130, isLocal: true, isDefinition: true, scopeLine: 837, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3019)
!3019 = !{!3020, !3021, !3022, !3023, !3024, !3026}
!3020 = !DILocalVariable(name: "L", arg: 1, scope: !3018, file: !3, line: 837, type: !131)
!3021 = !DILocalVariable(name: "ud", arg: 2, scope: !3018, file: !3, line: 837, type: !35)
!3022 = !DILocalVariable(name: "c", scope: !3018, file: !3, line: 838, type: !346)
!3023 = !DILocalVariable(name: "cl", scope: !3018, file: !3, line: 839, type: !571)
!3024 = !DILocalVariable(name: "i_o", scope: !3025, file: !3, line: 842, type: !74)
!3025 = distinct !DILexicalBlock(scope: !3018, file: !3, line: 842, column: 3)
!3026 = !DILocalVariable(name: "i_o", scope: !3027, file: !3, line: 844, type: !74)
!3027 = distinct !DILexicalBlock(scope: !3018, file: !3, line: 844, column: 3)
!3028 = !DILocation(line: 837, column: 33, scope: !3018)
!3029 = !DILocation(line: 837, column: 42, scope: !3018)
!3030 = !DILocation(line: 838, column: 18, scope: !3018)
!3031 = !DILocation(line: 79, column: 38, scope: !2080, inlinedAt: !3032)
!3032 = distinct !DILocation(line: 840, column: 31, scope: !3018)
!3033 = !DILocation(line: 80, column: 10, scope: !2088, inlinedAt: !3032)
!3034 = !DILocation(line: 80, column: 19, scope: !2088, inlinedAt: !3032)
!3035 = !DILocation(line: 80, column: 13, scope: !2088, inlinedAt: !3032)
!3036 = !DILocation(line: 80, column: 7, scope: !2080, inlinedAt: !3032)
!3037 = !DILocation(line: 81, column: 12, scope: !2088, inlinedAt: !3032)
!3038 = !DILocation(line: 81, column: 5, scope: !2088, inlinedAt: !3032)
!3039 = !DILocation(line: 83, column: 21, scope: !2087, inlinedAt: !3032)
!3040 = !DILocation(line: 83, column: 14, scope: !2087, inlinedAt: !3032)
!3041 = !DILocation(line: 84, column: 20, scope: !2087, inlinedAt: !3032)
!3042 = !DILocation(line: 0, scope: !2087, inlinedAt: !3032)
!3043 = !DILocation(line: 840, column: 8, scope: !3018)
!3044 = !DILocation(line: 839, column: 12, scope: !3018)
!3045 = !DILocation(line: 841, column: 16, scope: !3018)
!3046 = !DILocation(line: 841, column: 9, scope: !3018)
!3047 = !DILocation(line: 841, column: 11, scope: !3018)
!3048 = !DILocation(line: 842, column: 3, scope: !3025)
!3049 = !DILocation(line: 843, column: 3, scope: !3050)
!3050 = distinct !DILexicalBlock(scope: !3018, file: !3, line: 843, column: 3)
!3051 = !DILocation(line: 844, column: 3, scope: !3027)
!3052 = !DILocation(line: 845, column: 3, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !3018, file: !3, line: 845, column: 3)
!3054 = !DILocation(line: 846, column: 23, scope: !3018)
!3055 = !DILocation(line: 846, column: 3, scope: !3018)
!3056 = !DILocation(line: 847, column: 1, scope: !3018)
!3057 = distinct !DISubprogram(name: "lua_load", scope: !3, file: !3, line: 862, type: !3058, isLocal: false, isDefinition: true, scopeLine: 863, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3064)
!3058 = !DISubroutineType(types: !3059)
!3059 = !{!8, !131, !3060, !35, !257}
!3060 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Reader", file: !86, line: 58, baseType: !3061)
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = !DISubroutineType(types: !3063)
!3063 = !{!257, !131, !35, !1494}
!3064 = !{!3065, !3066, !3067, !3068, !3069, !3078}
!3065 = !DILocalVariable(name: "L", arg: 1, scope: !3057, file: !3, line: 862, type: !131)
!3066 = !DILocalVariable(name: "reader", arg: 2, scope: !3057, file: !3, line: 862, type: !3060)
!3067 = !DILocalVariable(name: "data", arg: 3, scope: !3057, file: !3, line: 862, type: !35)
!3068 = !DILocalVariable(name: "chunkname", arg: 4, scope: !3057, file: !3, line: 863, type: !257)
!3069 = !DILocalVariable(name: "z", scope: !3057, file: !3, line: 864, type: !3070)
!3070 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZIO", file: !173, line: 18, baseType: !3071)
!3071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Zio", file: !173, line: 56, size: 320, elements: !3072)
!3072 = !{!3073, !3074, !3075, !3076, !3077}
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !3071, file: !173, line: 57, baseType: !48, size: 64)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3071, file: !173, line: 58, baseType: !257, size: 64, offset: 64)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "reader", scope: !3071, file: !173, line: 59, baseType: !3060, size: 64, offset: 128)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3071, file: !173, line: 60, baseType: !35, size: 64, offset: 192)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "L", scope: !3071, file: !173, line: 61, baseType: !131, size: 64, offset: 256)
!3078 = !DILocalVariable(name: "status", scope: !3057, file: !3, line: 865, type: !8)
!3079 = !DILocation(line: 862, column: 34, scope: !3057)
!3080 = !DILocation(line: 862, column: 48, scope: !3057)
!3081 = !DILocation(line: 862, column: 62, scope: !3057)
!3082 = !DILocation(line: 863, column: 35, scope: !3057)
!3083 = !DILocation(line: 864, column: 3, scope: !3057)
!3084 = !DILocation(line: 867, column: 8, scope: !3085)
!3085 = distinct !DILexicalBlock(scope: !3057, file: !3, line: 867, column: 7)
!3086 = !DILocation(line: 867, column: 7, scope: !3057)
!3087 = !DILocation(line: 864, column: 7, scope: !3057)
!3088 = !DILocation(line: 868, column: 3, scope: !3057)
!3089 = !DILocation(line: 869, column: 12, scope: !3057)
!3090 = !DILocation(line: 865, column: 7, scope: !3057)
!3091 = !DILocation(line: 872, column: 1, scope: !3057)
!3092 = !DILocation(line: 871, column: 3, scope: !3057)
!3093 = distinct !DISubprogram(name: "lua_dump", scope: !3, file: !3, line: 875, type: !3094, isLocal: false, isDefinition: true, scopeLine: 875, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3100)
!3094 = !DISubroutineType(types: !3095)
!3095 = !{!8, !131, !3096, !35}
!3096 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Writer", file: !86, line: 60, baseType: !3097)
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = !DISubroutineType(types: !3099)
!3099 = !{!8, !131, !1823, !48, !35}
!3100 = !{!3101, !3102, !3103, !3104, !3105}
!3101 = !DILocalVariable(name: "L", arg: 1, scope: !3093, file: !3, line: 875, type: !131)
!3102 = !DILocalVariable(name: "writer", arg: 2, scope: !3093, file: !3, line: 875, type: !3096)
!3103 = !DILocalVariable(name: "data", arg: 3, scope: !3093, file: !3, line: 875, type: !35)
!3104 = !DILocalVariable(name: "status", scope: !3093, file: !3, line: 876, type: !8)
!3105 = !DILocalVariable(name: "o", scope: !3093, file: !3, line: 877, type: !74)
!3106 = !DILocation(line: 875, column: 34, scope: !3093)
!3107 = !DILocation(line: 875, column: 48, scope: !3093)
!3108 = !DILocation(line: 875, column: 62, scope: !3093)
!3109 = !DILocation(line: 880, column: 10, scope: !3093)
!3110 = !DILocation(line: 877, column: 11, scope: !3093)
!3111 = !DILocation(line: 881, column: 7, scope: !3112)
!3112 = distinct !DILexicalBlock(scope: !3093, file: !3, line: 881, column: 7)
!3113 = !DILocation(line: 881, column: 7, scope: !3093)
!3114 = !DILocation(line: 882, column: 41, scope: !3112)
!3115 = !DILocation(line: 882, column: 14, scope: !3112)
!3116 = !DILocation(line: 876, column: 7, scope: !3093)
!3117 = !DILocation(line: 882, column: 5, scope: !3112)
!3118 = !DILocation(line: 0, scope: !3112)
!3119 = !DILocation(line: 886, column: 3, scope: !3093)
!3120 = distinct !DISubprogram(name: "lua_status", scope: !3, file: !3, line: 890, type: !129, isLocal: false, isDefinition: true, scopeLine: 890, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3121)
!3121 = !{!3122}
!3122 = !DILocalVariable(name: "L", arg: 1, scope: !3120, file: !3, line: 890, type: !131)
!3123 = !DILocation(line: 890, column: 37, scope: !3120)
!3124 = !DILocation(line: 891, column: 13, scope: !3120)
!3125 = !{!374, !376, i64 10}
!3126 = !DILocation(line: 891, column: 10, scope: !3120)
!3127 = !DILocation(line: 891, column: 3, scope: !3120)
!3128 = distinct !DISubprogram(name: "lua_gc", scope: !3, file: !3, line: 899, type: !1062, isLocal: false, isDefinition: true, scopeLine: 899, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3129)
!3129 = !{!3130, !3131, !3132, !3133, !3134, !3135}
!3130 = !DILocalVariable(name: "L", arg: 1, scope: !3128, file: !3, line: 899, type: !131)
!3131 = !DILocalVariable(name: "what", arg: 2, scope: !3128, file: !3, line: 899, type: !8)
!3132 = !DILocalVariable(name: "data", arg: 3, scope: !3128, file: !3, line: 899, type: !8)
!3133 = !DILocalVariable(name: "res", scope: !3128, file: !3, line: 900, type: !8)
!3134 = !DILocalVariable(name: "g", scope: !3128, file: !3, line: 901, type: !143)
!3135 = !DILocalVariable(name: "a", scope: !3136, file: !3, line: 927, type: !180)
!3136 = distinct !DILexicalBlock(scope: !3137, file: !3, line: 926, column: 22)
!3137 = distinct !DILexicalBlock(scope: !3128, file: !3, line: 904, column: 17)
!3138 = !DILocation(line: 899, column: 32, scope: !3128)
!3139 = !DILocation(line: 899, column: 39, scope: !3128)
!3140 = !DILocation(line: 899, column: 49, scope: !3128)
!3141 = !DILocation(line: 900, column: 7, scope: !3128)
!3142 = !DILocation(line: 903, column: 7, scope: !3128)
!3143 = !DILocation(line: 901, column: 17, scope: !3128)
!3144 = !DILocation(line: 904, column: 3, scope: !3128)
!3145 = !DILocation(line: 906, column: 10, scope: !3146)
!3146 = distinct !DILexicalBlock(scope: !3137, file: !3, line: 905, column: 22)
!3147 = !DILocation(line: 906, column: 22, scope: !3146)
!3148 = !DILocation(line: 907, column: 7, scope: !3146)
!3149 = !DILocation(line: 910, column: 27, scope: !3150)
!3150 = distinct !DILexicalBlock(scope: !3137, file: !3, line: 909, column: 25)
!3151 = !DILocation(line: 910, column: 10, scope: !3150)
!3152 = !DILocation(line: 910, column: 22, scope: !3150)
!3153 = !DILocation(line: 911, column: 7, scope: !3150)
!3154 = !DILocation(line: 914, column: 7, scope: !3155)
!3155 = distinct !DILexicalBlock(scope: !3137, file: !3, line: 913, column: 25)
!3156 = !DILocation(line: 915, column: 7, scope: !3155)
!3157 = !DILocation(line: 919, column: 13, scope: !3158)
!3158 = distinct !DILexicalBlock(scope: !3137, file: !3, line: 917, column: 23)
!3159 = !DILocation(line: 920, column: 7, scope: !3158)
!3160 = !DILocation(line: 923, column: 13, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !3137, file: !3, line: 922, column: 24)
!3162 = !DILocation(line: 924, column: 7, scope: !3161)
!3163 = !DILocation(line: 927, column: 19, scope: !3136)
!3164 = !DILocation(line: 927, column: 38, scope: !3136)
!3165 = !DILocation(line: 927, column: 14, scope: !3136)
!3166 = !DILocation(line: 928, column: 19, scope: !3167)
!3167 = distinct !DILexicalBlock(scope: !3136, file: !3, line: 928, column: 11)
!3168 = !DILocation(line: 928, column: 11, scope: !3136)
!3169 = !DILocation(line: 931, column: 12, scope: !3167)
!3170 = !DILocation(line: 931, column: 24, scope: !3167)
!3171 = !DILocation(line: 932, column: 29, scope: !3136)
!3172 = !DILocation(line: 932, column: 7, scope: !3136)
!3173 = !DILocation(line: 933, column: 9, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !3136, file: !3, line: 932, column: 47)
!3175 = !DILocation(line: 934, column: 16, scope: !3176)
!3176 = distinct !DILexicalBlock(scope: !3174, file: !3, line: 934, column: 13)
!3177 = !{!485, !376, i64 33}
!3178 = !DILocation(line: 934, column: 24, scope: !3176)
!3179 = !DILocation(line: 934, column: 13, scope: !3174)
!3180 = distinct !{!3180, !3172, !3181}
!3181 = !DILocation(line: 938, column: 7, scope: !3136)
!3182 = !DILocation(line: 932, column: 17, scope: !3136)
!3183 = !DILocation(line: 932, column: 35, scope: !3136)
!3184 = !DILocation(line: 942, column: 16, scope: !3185)
!3185 = distinct !DILexicalBlock(scope: !3137, file: !3, line: 941, column: 26)
!3186 = !{!485, !378, i64 144}
!3187 = !DILocation(line: 943, column: 18, scope: !3185)
!3188 = !DILocation(line: 944, column: 7, scope: !3185)
!3189 = !DILocation(line: 947, column: 16, scope: !3190)
!3190 = distinct !DILexicalBlock(scope: !3137, file: !3, line: 946, column: 28)
!3191 = !{!485, !378, i64 148}
!3192 = !DILocation(line: 948, column: 20, scope: !3190)
!3193 = !DILocation(line: 949, column: 7, scope: !3190)
!3194 = !DILocation(line: 0, scope: !3128)
!3195 = !DILocation(line: 954, column: 3, scope: !3128)
!3196 = distinct !DISubprogram(name: "lua_error", scope: !3, file: !3, line: 964, type: !129, isLocal: false, isDefinition: true, scopeLine: 964, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3197)
!3197 = !{!3198}
!3198 = !DILocalVariable(name: "L", arg: 1, scope: !3196, file: !3, line: 964, type: !131)
!3199 = !DILocation(line: 964, column: 35, scope: !3196)
!3200 = !DILocation(line: 967, column: 3, scope: !3196)
!3201 = !DILocation(line: 969, column: 3, scope: !3196)
!3202 = distinct !DISubprogram(name: "lua_next", scope: !3, file: !3, line: 973, type: !387, isLocal: false, isDefinition: true, scopeLine: 973, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3203)
!3203 = !{!3204, !3205, !3206, !3207}
!3204 = !DILocalVariable(name: "L", arg: 1, scope: !3202, file: !3, line: 973, type: !131)
!3205 = !DILocalVariable(name: "idx", arg: 2, scope: !3202, file: !3, line: 973, type: !8)
!3206 = !DILocalVariable(name: "t", scope: !3202, file: !3, line: 974, type: !140)
!3207 = !DILocalVariable(name: "more", scope: !3202, file: !3, line: 975, type: !8)
!3208 = !DILocation(line: 973, column: 34, scope: !3202)
!3209 = !DILocation(line: 973, column: 41, scope: !3202)
!3210 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !3211)
!3211 = distinct !DILocation(line: 977, column: 7, scope: !3202)
!3212 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !3211)
!3213 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !3211)
!3214 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !3211)
!3215 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !3211)
!3216 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !3211)
!3217 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !3211)
!3218 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !3211)
!3219 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !3211)
!3220 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !3211)
!3221 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !3211)
!3222 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !3211)
!3223 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !3211)
!3224 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !3211)
!3225 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !3211)
!3226 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !3211)
!3227 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !3211)
!3228 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !3211)
!3229 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !3211)
!3230 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !3211)
!3231 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !3211)
!3232 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !3211)
!3233 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !3211)
!3234 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !3211)
!3235 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !3211)
!3236 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !3211)
!3237 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !3211)
!3238 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !3211)
!3239 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !3211)
!3240 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !3211)
!3241 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !3211)
!3242 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !3211)
!3243 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !3211)
!3244 = !DILocation(line: 0, scope: !569, inlinedAt: !3211)
!3245 = !DILocation(line: 974, column: 9, scope: !3202)
!3246 = !DILocation(line: 979, column: 23, scope: !3202)
!3247 = !DILocation(line: 979, column: 37, scope: !3202)
!3248 = !DILocation(line: 979, column: 41, scope: !3202)
!3249 = !DILocation(line: 979, column: 10, scope: !3202)
!3250 = !DILocation(line: 975, column: 7, scope: !3202)
!3251 = !DILocation(line: 980, column: 7, scope: !3252)
!3252 = distinct !DILexicalBlock(scope: !3202, file: !3, line: 980, column: 7)
!3253 = !DILocation(line: 0, scope: !3254)
!3254 = distinct !DILexicalBlock(scope: !3255, file: !3, line: 981, column: 5)
!3255 = distinct !DILexicalBlock(scope: !3252, file: !3, line: 980, column: 13)
!3256 = !DILocation(line: 980, column: 7, scope: !3202)
!3257 = !DILocation(line: 986, column: 3, scope: !3202)
!3258 = distinct !DISubprogram(name: "lua_concat", scope: !3, file: !3, line: 990, type: !521, isLocal: false, isDefinition: true, scopeLine: 990, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3259)
!3259 = !{!3260, !3261, !3262}
!3260 = !DILocalVariable(name: "L", arg: 1, scope: !3258, file: !3, line: 990, type: !131)
!3261 = !DILocalVariable(name: "n", arg: 2, scope: !3258, file: !3, line: 990, type: !8)
!3262 = !DILocalVariable(name: "i_o", scope: !3263, file: !3, line: 999, type: !74)
!3263 = distinct !DILexicalBlock(scope: !3264, file: !3, line: 999, column: 5)
!3264 = distinct !DILexicalBlock(scope: !3265, file: !3, line: 998, column: 20)
!3265 = distinct !DILexicalBlock(scope: !3266, file: !3, line: 998, column: 12)
!3266 = distinct !DILexicalBlock(scope: !3258, file: !3, line: 993, column: 7)
!3267 = !DILocation(line: 990, column: 37, scope: !3258)
!3268 = !DILocation(line: 990, column: 44, scope: !3258)
!3269 = !DILocation(line: 993, column: 9, scope: !3266)
!3270 = !DILocation(line: 993, column: 7, scope: !3258)
!3271 = !DILocation(line: 994, column: 5, scope: !3272)
!3272 = distinct !DILexicalBlock(scope: !3273, file: !3, line: 994, column: 5)
!3273 = distinct !DILexicalBlock(scope: !3274, file: !3, line: 994, column: 5)
!3274 = distinct !DILexicalBlock(scope: !3266, file: !3, line: 993, column: 15)
!3275 = !DILocation(line: 994, column: 5, scope: !3273)
!3276 = !DILocation(line: 995, column: 23, scope: !3274)
!3277 = !DILocation(line: 995, column: 50, scope: !3274)
!3278 = !DILocation(line: 995, column: 5, scope: !3274)
!3279 = !DILocation(line: 996, column: 17, scope: !3274)
!3280 = !DILocation(line: 996, column: 12, scope: !3274)
!3281 = !DILocation(line: 997, column: 3, scope: !3274)
!3282 = !DILocation(line: 998, column: 14, scope: !3265)
!3283 = !DILocation(line: 998, column: 12, scope: !3266)
!3284 = !DILocation(line: 999, column: 5, scope: !3263)
!3285 = !DILocation(line: 1000, column: 5, scope: !3286)
!3286 = distinct !DILexicalBlock(scope: !3264, file: !3, line: 1000, column: 5)
!3287 = !DILocation(line: 1001, column: 3, scope: !3264)
!3288 = !DILocation(line: 0, scope: !3274)
!3289 = !DILocation(line: 1004, column: 1, scope: !3258)
!3290 = distinct !DISubprogram(name: "lua_getallocf", scope: !3, file: !3, line: 1007, type: !3291, isLocal: false, isDefinition: true, scopeLine: 1007, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3294)
!3291 = !DISubroutineType(types: !3292)
!3292 = !{!157, !131, !3293}
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!3294 = !{!3295, !3296, !3297}
!3295 = !DILocalVariable(name: "L", arg: 1, scope: !3290, file: !3, line: 1007, type: !131)
!3296 = !DILocalVariable(name: "ud", arg: 2, scope: !3290, file: !3, line: 1007, type: !3293)
!3297 = !DILocalVariable(name: "f", scope: !3290, file: !3, line: 1008, type: !157)
!3298 = !DILocation(line: 1007, column: 45, scope: !3290)
!3299 = !DILocation(line: 1007, column: 55, scope: !3290)
!3300 = !DILocation(line: 1010, column: 7, scope: !3301)
!3301 = distinct !DILexicalBlock(scope: !3290, file: !3, line: 1010, column: 7)
!3302 = !DILocation(line: 0, scope: !3301)
!3303 = !DILocation(line: 1010, column: 7, scope: !3290)
!3304 = !DILocation(line: 1010, column: 17, scope: !3301)
!3305 = !DILocation(line: 1010, column: 23, scope: !3301)
!3306 = !{!485, !375, i64 24}
!3307 = !DILocation(line: 1010, column: 15, scope: !3301)
!3308 = !DILocation(line: 1010, column: 11, scope: !3301)
!3309 = !DILocation(line: 1011, column: 7, scope: !3290)
!3310 = !DILocation(line: 1011, column: 13, scope: !3290)
!3311 = !{!485, !375, i64 16}
!3312 = !DILocation(line: 1008, column: 13, scope: !3290)
!3313 = !DILocation(line: 1013, column: 3, scope: !3290)
!3314 = distinct !DISubprogram(name: "lua_setallocf", scope: !3, file: !3, line: 1017, type: !3315, isLocal: false, isDefinition: true, scopeLine: 1017, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3317)
!3315 = !DISubroutineType(types: !3316)
!3316 = !{null, !131, !157, !35}
!3317 = !{!3318, !3319, !3320}
!3318 = !DILocalVariable(name: "L", arg: 1, scope: !3314, file: !3, line: 1017, type: !131)
!3319 = !DILocalVariable(name: "f", arg: 2, scope: !3314, file: !3, line: 1017, type: !157)
!3320 = !DILocalVariable(name: "ud", arg: 3, scope: !3314, file: !3, line: 1017, type: !35)
!3321 = !DILocation(line: 1017, column: 40, scope: !3314)
!3322 = !DILocation(line: 1017, column: 53, scope: !3314)
!3323 = !DILocation(line: 1017, column: 62, scope: !3314)
!3324 = !DILocation(line: 1019, column: 3, scope: !3314)
!3325 = !DILocation(line: 1019, column: 9, scope: !3314)
!3326 = !DILocation(line: 1019, column: 12, scope: !3314)
!3327 = !DILocation(line: 1020, column: 9, scope: !3314)
!3328 = !DILocation(line: 1020, column: 18, scope: !3314)
!3329 = !DILocation(line: 1022, column: 1, scope: !3314)
!3330 = distinct !DISubprogram(name: "lua_newuserdata", scope: !3, file: !3, line: 1025, type: !3331, isLocal: false, isDefinition: true, scopeLine: 1025, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3333)
!3331 = !DISubroutineType(types: !3332)
!3332 = !{!35, !131, !48}
!3333 = !{!3334, !3335, !3336, !3339}
!3334 = !DILocalVariable(name: "L", arg: 1, scope: !3330, file: !3, line: 1025, type: !131)
!3335 = !DILocalVariable(name: "size", arg: 2, scope: !3330, file: !3, line: 1025, type: !48)
!3336 = !DILocalVariable(name: "u", scope: !3330, file: !3, line: 1026, type: !3337)
!3337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3338, size: 64)
!3338 = !DIDerivedType(tag: DW_TAG_typedef, name: "Udata", file: !11, line: 223, baseType: !54)
!3339 = !DILocalVariable(name: "i_o", scope: !3340, file: !3, line: 1030, type: !74)
!3340 = distinct !DILexicalBlock(scope: !3330, file: !3, line: 1030, column: 3)
!3341 = !DILocation(line: 1025, column: 43, scope: !3330)
!3342 = !DILocation(line: 1025, column: 53, scope: !3330)
!3343 = !DILocation(line: 1028, column: 3, scope: !3344)
!3344 = distinct !DILexicalBlock(scope: !3345, file: !3, line: 1028, column: 3)
!3345 = distinct !DILexicalBlock(scope: !3330, file: !3, line: 1028, column: 3)
!3346 = !DILocation(line: 1028, column: 3, scope: !3345)
!3347 = !DILocation(line: 79, column: 38, scope: !2080, inlinedAt: !3348)
!3348 = distinct !DILocation(line: 1029, column: 30, scope: !3330)
!3349 = !DILocation(line: 80, column: 10, scope: !2088, inlinedAt: !3348)
!3350 = !DILocation(line: 80, column: 19, scope: !2088, inlinedAt: !3348)
!3351 = !DILocation(line: 80, column: 13, scope: !2088, inlinedAt: !3348)
!3352 = !DILocation(line: 80, column: 7, scope: !2080, inlinedAt: !3348)
!3353 = !DILocation(line: 81, column: 12, scope: !2088, inlinedAt: !3348)
!3354 = !DILocation(line: 81, column: 5, scope: !2088, inlinedAt: !3348)
!3355 = !DILocation(line: 83, column: 21, scope: !2087, inlinedAt: !3348)
!3356 = !DILocation(line: 83, column: 14, scope: !2087, inlinedAt: !3348)
!3357 = !DILocation(line: 84, column: 20, scope: !2087, inlinedAt: !3348)
!3358 = !DILocation(line: 0, scope: !2087, inlinedAt: !3348)
!3359 = !DILocation(line: 1029, column: 7, scope: !3330)
!3360 = !DILocation(line: 1026, column: 10, scope: !3330)
!3361 = !DILocation(line: 1030, column: 3, scope: !3340)
!3362 = !DILocation(line: 1031, column: 3, scope: !3363)
!3363 = distinct !DILexicalBlock(scope: !3330, file: !3, line: 1031, column: 3)
!3364 = !DILocation(line: 1033, column: 12, scope: !3330)
!3365 = !DILocation(line: 1033, column: 10, scope: !3330)
!3366 = !DILocation(line: 1033, column: 3, scope: !3330)
!3367 = distinct !DISubprogram(name: "lua_getupvalue", scope: !3, file: !3, line: 1057, type: !3368, isLocal: false, isDefinition: true, scopeLine: 1057, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3370)
!3368 = !DISubroutineType(types: !3369)
!3369 = !{!257, !131, !8, !8}
!3370 = !{!3371, !3372, !3373, !3374, !3375, !3376, !3380}
!3371 = !DILocalVariable(name: "L", arg: 1, scope: !3367, file: !3, line: 1057, type: !131)
!3372 = !DILocalVariable(name: "funcindex", arg: 2, scope: !3367, file: !3, line: 1057, type: !8)
!3373 = !DILocalVariable(name: "n", arg: 3, scope: !3367, file: !3, line: 1057, type: !8)
!3374 = !DILocalVariable(name: "name", scope: !3367, file: !3, line: 1058, type: !257)
!3375 = !DILocalVariable(name: "val", scope: !3367, file: !3, line: 1059, type: !74)
!3376 = !DILocalVariable(name: "o2", scope: !3377, file: !3, line: 1063, type: !362)
!3377 = distinct !DILexicalBlock(scope: !3378, file: !3, line: 1063, column: 5)
!3378 = distinct !DILexicalBlock(scope: !3379, file: !3, line: 1062, column: 13)
!3379 = distinct !DILexicalBlock(scope: !3367, file: !3, line: 1062, column: 7)
!3380 = !DILocalVariable(name: "o1", scope: !3377, file: !3, line: 1063, type: !74)
!3381 = !DILocation(line: 1057, column: 48, scope: !3367)
!3382 = !DILocation(line: 1057, column: 55, scope: !3367)
!3383 = !DILocation(line: 1057, column: 70, scope: !3367)
!3384 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !3385)
!3385 = distinct !DILocation(line: 1061, column: 22, scope: !3367)
!3386 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !3385)
!3387 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !3385)
!3388 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !3385)
!3389 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !3385)
!3390 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !3385)
!3391 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !3385)
!3392 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !3385)
!3393 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !3385)
!3394 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !3385)
!3395 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !3385)
!3396 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !3385)
!3397 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !3385)
!3398 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !3385)
!3399 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !3385)
!3400 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !3385)
!3401 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !3385)
!3402 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !3385)
!3403 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !3385)
!3404 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !3385)
!3405 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !3385)
!3406 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !3385)
!3407 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !3385)
!3408 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !3385)
!3409 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !3385)
!3410 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !3385)
!3411 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !3385)
!3412 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !3385)
!3413 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !3385)
!3414 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !3385)
!3415 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !3385)
!3416 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !3385)
!3417 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !3385)
!3418 = !DILocation(line: 0, scope: !569, inlinedAt: !3385)
!3419 = !DILocation(line: 1059, column: 11, scope: !3367)
!3420 = !DILocalVariable(name: "fi", arg: 1, scope: !3421, file: !3, line: 1039, type: !140)
!3421 = distinct !DISubprogram(name: "aux_upvalue", scope: !3, file: !3, line: 1039, type: !3422, isLocal: true, isDefinition: true, scopeLine: 1039, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3425)
!3422 = !DISubroutineType(types: !3423)
!3423 = !{!257, !140, !8, !3424}
!3424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!3425 = !{!3420, !3426, !3427, !3428, !3429}
!3426 = !DILocalVariable(name: "n", arg: 2, scope: !3421, file: !3, line: 1039, type: !8)
!3427 = !DILocalVariable(name: "val", arg: 3, scope: !3421, file: !3, line: 1039, type: !3424)
!3428 = !DILocalVariable(name: "f", scope: !3421, file: !3, line: 1040, type: !571)
!3429 = !DILocalVariable(name: "p", scope: !3430, file: !3, line: 1049, type: !3432)
!3430 = distinct !DILexicalBlock(scope: !3431, file: !3, line: 1048, column: 8)
!3431 = distinct !DILexicalBlock(scope: !3421, file: !3, line: 1043, column: 7)
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3433, size: 64)
!3433 = !DIDerivedType(tag: DW_TAG_typedef, name: "Proto", file: !11, line: 253, baseType: !298)
!3434 = !DILocation(line: 1039, column: 39, scope: !3421, inlinedAt: !3435)
!3435 = distinct !DILocation(line: 1061, column: 10, scope: !3367)
!3436 = !DILocation(line: 1039, column: 47, scope: !3421, inlinedAt: !3435)
!3437 = !DILocation(line: 1039, column: 59, scope: !3421, inlinedAt: !3435)
!3438 = !DILocation(line: 1041, column: 8, scope: !3439, inlinedAt: !3435)
!3439 = distinct !DILexicalBlock(scope: !3421, file: !3, line: 1041, column: 7)
!3440 = !DILocation(line: 1041, column: 7, scope: !3421, inlinedAt: !3435)
!3441 = !DILocation(line: 1042, column: 7, scope: !3421, inlinedAt: !3435)
!3442 = !DILocation(line: 1040, column: 12, scope: !3421, inlinedAt: !3435)
!3443 = !DILocation(line: 1043, column: 12, scope: !3431, inlinedAt: !3435)
!3444 = !DILocation(line: 1043, column: 7, scope: !3431, inlinedAt: !3435)
!3445 = !DILocation(line: 1043, column: 7, scope: !3421, inlinedAt: !3435)
!3446 = !DILocation(line: 1044, column: 13, scope: !3447, inlinedAt: !3435)
!3447 = distinct !DILexicalBlock(scope: !3448, file: !3, line: 1044, column: 9)
!3448 = distinct !DILexicalBlock(scope: !3431, file: !3, line: 1043, column: 17)
!3449 = !DILocation(line: 1044, column: 18, scope: !3447, inlinedAt: !3435)
!3450 = !DILocation(line: 1044, column: 31, scope: !3447, inlinedAt: !3435)
!3451 = !DILocation(line: 1044, column: 26, scope: !3447, inlinedAt: !3435)
!3452 = !DILocation(line: 1044, column: 23, scope: !3447, inlinedAt: !3435)
!3453 = !DILocation(line: 1044, column: 9, scope: !3448, inlinedAt: !3435)
!3454 = !DILocation(line: 1045, column: 27, scope: !3448, inlinedAt: !3435)
!3455 = !DILocation(line: 1045, column: 13, scope: !3448, inlinedAt: !3435)
!3456 = !DILocation(line: 1046, column: 5, scope: !3448, inlinedAt: !3435)
!3457 = !DILocation(line: 1049, column: 21, scope: !3430, inlinedAt: !3435)
!3458 = !DILocation(line: 1049, column: 12, scope: !3430, inlinedAt: !3435)
!3459 = !DILocation(line: 1050, column: 13, scope: !3460, inlinedAt: !3435)
!3460 = distinct !DILexicalBlock(scope: !3430, file: !3, line: 1050, column: 9)
!3461 = !DILocation(line: 1050, column: 18, scope: !3460, inlinedAt: !3435)
!3462 = !DILocation(line: 1050, column: 29, scope: !3460, inlinedAt: !3435)
!3463 = !{!3464, !378, i64 72}
!3464 = !{!"Proto", !375, i64 0, !376, i64 8, !376, i64 9, !375, i64 16, !375, i64 24, !375, i64 32, !375, i64 40, !375, i64 48, !375, i64 56, !375, i64 64, !378, i64 72, !378, i64 76, !378, i64 80, !378, i64 84, !378, i64 88, !378, i64 92, !378, i64 96, !378, i64 100, !375, i64 104, !376, i64 112, !376, i64 113, !376, i64 114, !376, i64 115}
!3465 = !DILocation(line: 1050, column: 23, scope: !3460, inlinedAt: !3435)
!3466 = !DILocation(line: 1050, column: 9, scope: !3430, inlinedAt: !3435)
!3467 = !DILocation(line: 1051, column: 17, scope: !3430, inlinedAt: !3435)
!3468 = !DILocation(line: 1051, column: 25, scope: !3430, inlinedAt: !3435)
!3469 = !DILocation(line: 1051, column: 12, scope: !3430, inlinedAt: !3435)
!3470 = !DILocation(line: 1051, column: 30, scope: !3430, inlinedAt: !3435)
!3471 = !{!488, !375, i64 16}
!3472 = !DILocation(line: 1052, column: 12, scope: !3430, inlinedAt: !3435)
!3473 = !{!3464, !375, i64 56}
!3474 = !DILocation(line: 1052, column: 5, scope: !3430, inlinedAt: !3435)
!3475 = !DILocation(line: 0, scope: !3439, inlinedAt: !3435)
!3476 = !DILocation(line: 1058, column: 15, scope: !3367)
!3477 = !DILocation(line: 1063, column: 5, scope: !3377)
!3478 = !DILocation(line: 1064, column: 5, scope: !3479)
!3479 = distinct !DILexicalBlock(scope: !3378, file: !3, line: 1064, column: 5)
!3480 = !DILocation(line: 1065, column: 3, scope: !3378)
!3481 = !DILocation(line: 1067, column: 3, scope: !3367)
!3482 = distinct !DISubprogram(name: "lua_setupvalue", scope: !3, file: !3, line: 1071, type: !3368, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3483)
!3483 = !{!3484, !3485, !3486, !3487, !3488, !3489, !3490, !3494}
!3484 = !DILocalVariable(name: "L", arg: 1, scope: !3482, file: !3, line: 1071, type: !131)
!3485 = !DILocalVariable(name: "funcindex", arg: 2, scope: !3482, file: !3, line: 1071, type: !8)
!3486 = !DILocalVariable(name: "n", arg: 3, scope: !3482, file: !3, line: 1071, type: !8)
!3487 = !DILocalVariable(name: "name", scope: !3482, file: !3, line: 1072, type: !257)
!3488 = !DILocalVariable(name: "val", scope: !3482, file: !3, line: 1073, type: !74)
!3489 = !DILocalVariable(name: "fi", scope: !3482, file: !3, line: 1074, type: !140)
!3490 = !DILocalVariable(name: "o2", scope: !3491, file: !3, line: 1081, type: !362)
!3491 = distinct !DILexicalBlock(scope: !3492, file: !3, line: 1081, column: 5)
!3492 = distinct !DILexicalBlock(scope: !3493, file: !3, line: 1079, column: 13)
!3493 = distinct !DILexicalBlock(scope: !3482, file: !3, line: 1079, column: 7)
!3494 = !DILocalVariable(name: "o1", scope: !3491, file: !3, line: 1081, type: !74)
!3495 = !DILocation(line: 1071, column: 48, scope: !3482)
!3496 = !DILocation(line: 1071, column: 55, scope: !3482)
!3497 = !DILocation(line: 1071, column: 70, scope: !3482)
!3498 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !3499)
!3499 = distinct !DILocation(line: 1076, column: 8, scope: !3482)
!3500 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !3499)
!3501 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !3499)
!3502 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !3499)
!3503 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !3499)
!3504 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !3499)
!3505 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !3499)
!3506 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !3499)
!3507 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !3499)
!3508 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !3499)
!3509 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !3499)
!3510 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !3499)
!3511 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !3499)
!3512 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !3499)
!3513 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !3499)
!3514 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !3499)
!3515 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !3499)
!3516 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !3499)
!3517 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !3499)
!3518 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !3499)
!3519 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !3499)
!3520 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !3499)
!3521 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !3499)
!3522 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !3499)
!3523 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !3499)
!3524 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !3499)
!3525 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !3499)
!3526 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !3499)
!3527 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !3499)
!3528 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !3499)
!3529 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !3499)
!3530 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !3499)
!3531 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !3499)
!3532 = !DILocation(line: 0, scope: !569, inlinedAt: !3499)
!3533 = !DILocation(line: 1074, column: 9, scope: !3482)
!3534 = !DILocation(line: 1073, column: 11, scope: !3482)
!3535 = !DILocation(line: 1039, column: 39, scope: !3421, inlinedAt: !3536)
!3536 = distinct !DILocation(line: 1078, column: 10, scope: !3482)
!3537 = !DILocation(line: 1039, column: 47, scope: !3421, inlinedAt: !3536)
!3538 = !DILocation(line: 1039, column: 59, scope: !3421, inlinedAt: !3536)
!3539 = !DILocation(line: 1041, column: 8, scope: !3439, inlinedAt: !3536)
!3540 = !DILocation(line: 1041, column: 7, scope: !3421, inlinedAt: !3536)
!3541 = !DILocation(line: 1042, column: 7, scope: !3421, inlinedAt: !3536)
!3542 = !DILocation(line: 1040, column: 12, scope: !3421, inlinedAt: !3536)
!3543 = !DILocation(line: 1043, column: 12, scope: !3431, inlinedAt: !3536)
!3544 = !DILocation(line: 1043, column: 7, scope: !3431, inlinedAt: !3536)
!3545 = !DILocation(line: 1043, column: 7, scope: !3421, inlinedAt: !3536)
!3546 = !DILocation(line: 1044, column: 13, scope: !3447, inlinedAt: !3536)
!3547 = !DILocation(line: 1044, column: 18, scope: !3447, inlinedAt: !3536)
!3548 = !DILocation(line: 1044, column: 31, scope: !3447, inlinedAt: !3536)
!3549 = !DILocation(line: 1044, column: 26, scope: !3447, inlinedAt: !3536)
!3550 = !DILocation(line: 1044, column: 23, scope: !3447, inlinedAt: !3536)
!3551 = !DILocation(line: 1044, column: 9, scope: !3448, inlinedAt: !3536)
!3552 = !DILocation(line: 1045, column: 27, scope: !3448, inlinedAt: !3536)
!3553 = !DILocation(line: 1045, column: 13, scope: !3448, inlinedAt: !3536)
!3554 = !DILocation(line: 1046, column: 5, scope: !3448, inlinedAt: !3536)
!3555 = !DILocation(line: 1049, column: 21, scope: !3430, inlinedAt: !3536)
!3556 = !DILocation(line: 1049, column: 12, scope: !3430, inlinedAt: !3536)
!3557 = !DILocation(line: 1050, column: 13, scope: !3460, inlinedAt: !3536)
!3558 = !DILocation(line: 1050, column: 18, scope: !3460, inlinedAt: !3536)
!3559 = !DILocation(line: 1050, column: 29, scope: !3460, inlinedAt: !3536)
!3560 = !DILocation(line: 1050, column: 23, scope: !3460, inlinedAt: !3536)
!3561 = !DILocation(line: 1050, column: 9, scope: !3430, inlinedAt: !3536)
!3562 = !DILocation(line: 1051, column: 17, scope: !3430, inlinedAt: !3536)
!3563 = !DILocation(line: 1051, column: 25, scope: !3430, inlinedAt: !3536)
!3564 = !DILocation(line: 1051, column: 12, scope: !3430, inlinedAt: !3536)
!3565 = !DILocation(line: 1051, column: 30, scope: !3430, inlinedAt: !3536)
!3566 = !DILocation(line: 1052, column: 12, scope: !3430, inlinedAt: !3536)
!3567 = !DILocation(line: 1052, column: 5, scope: !3430, inlinedAt: !3536)
!3568 = !DILocation(line: 0, scope: !3439, inlinedAt: !3536)
!3569 = !DILocation(line: 1072, column: 15, scope: !3482)
!3570 = !DILocation(line: 1080, column: 8, scope: !3492)
!3571 = !DILocation(line: 1080, column: 11, scope: !3492)
!3572 = !DILocation(line: 1081, column: 5, scope: !3491)
!3573 = !DILocation(line: 1082, column: 5, scope: !3574)
!3574 = distinct !DILexicalBlock(scope: !3575, file: !3, line: 1082, column: 5)
!3575 = distinct !DILexicalBlock(scope: !3492, file: !3, line: 1082, column: 5)
!3576 = !DILocation(line: 1082, column: 5, scope: !3575)
!3577 = !DILocation(line: 1085, column: 3, scope: !3482)
