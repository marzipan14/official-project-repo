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
@__A_VARIABLE = internal global i32 0

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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !385
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
  tail call void @luaD_growstack(%struct.lua_State* nonnull %0, i32 %1) #5, !dbg !410
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !428
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !458
  ret void, !dbg !458
}

; Function Attrs: noredzone nounwind
define dso_local void @lua_setlevel(%struct.lua_State* nocapture readonly, %struct.lua_State* nocapture) local_unnamed_addr #0 !dbg !459 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 15, !dbg !467
  %4 = load i16, i16* %3, align 8, !dbg !467, !tbaa !468
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %1, i64 0, i32 15, !dbg !469
  store i16 %4, i16* %5, align 8, !dbg !470, !tbaa !468
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !471
  ret void, !dbg !471
}

; Function Attrs: noredzone nounwind
define dso_local i32 (%struct.lua_State*)* @lua_atpanic(%struct.lua_State* nocapture readonly, i32 (%struct.lua_State*)*) local_unnamed_addr #0 !dbg !472 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !481
  %4 = load %struct.global_State*, %struct.global_State** %3, align 8, !dbg !481, !tbaa !482
  %5 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 19, !dbg !483
  %6 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %5, align 8, !dbg !483, !tbaa !484
  store i32 (%struct.lua_State*)* %1, i32 (%struct.lua_State*)** %5, align 8, !dbg !490, !tbaa !484
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !491
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
  tail call void @luaC_step(%struct.lua_State* nonnull %0) #5, !dbg !501
  br label %10, !dbg !501

; <label>:10:                                     ; preds = %1, %9
  %11 = tail call %struct.lua_State* @luaE_newthread(%struct.lua_State* nonnull %0) #5, !dbg !507
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !509
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %12, align 8, !dbg !509, !tbaa !373
  %14 = bitcast %struct.lua_TValue* %13 to %struct.lua_State**, !dbg !509
  store %struct.lua_State* %11, %struct.lua_State** %14, align 8, !dbg !509, !tbaa !510
  %15 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %13, i64 0, i32 1, !dbg !509
  store i32 8, i32* %15, align 8, !dbg !509, !tbaa !382
  %16 = load %struct.lua_TValue*, %struct.lua_TValue** %12, align 8, !dbg !511, !tbaa !373
  %17 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %16, i64 1, !dbg !511
  store %struct.lua_TValue* %17, %struct.lua_TValue** %12, align 8, !dbg !511, !tbaa !373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !513
  ret %struct.lua_State* %11, !dbg !513
}

; Function Attrs: noredzone
declare hidden void @luaC_step(%struct.lua_State*) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden %struct.lua_State* @luaE_newthread(%struct.lua_State*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_gettop(%struct.lua_State* nocapture readonly) local_unnamed_addr #0 !dbg !514 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !518
  %3 = bitcast %struct.lua_TValue** %2 to i64*, !dbg !518
  %4 = load i64, i64* %3, align 8, !dbg !518, !tbaa !373
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !518
  %6 = bitcast %struct.lua_TValue** %5 to i64*, !dbg !518
  %7 = load i64, i64* %6, align 8, !dbg !518, !tbaa !401
  %8 = sub i64 %4, %7, !dbg !518
  %9 = lshr exact i64 %8, 4, !dbg !518
  %10 = trunc i64 %9 to i32, !dbg !518
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !519
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !547
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !615
  %59 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i64 1, !dbg !617
  %60 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !618
  %61 = load %struct.lua_TValue*, %struct.lua_TValue** %60, align 8, !dbg !618, !tbaa !373
  %62 = icmp ult %struct.lua_TValue* %59, %61, !dbg !619
  br i1 %62, label %63, label %75, !dbg !620

; <label>:63:                                     ; preds = %57, %63
  %64 = phi %struct.lua_TValue* [ %72, %63 ], [ %59, %57 ]
  %65 = phi %struct.lua_TValue* [ %64, %63 ], [ %58, %57 ]
  %66 = bitcast %struct.lua_TValue* %64 to i64*, !dbg !621
  %67 = bitcast %struct.lua_TValue* %65 to i64*, !dbg !621
  %68 = load i64, i64* %66, align 8, !dbg !621
  store i64 %68, i64* %67, align 8, !dbg !621
  %69 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %65, i64 1, i32 1, !dbg !621
  %70 = load i32, i32* %69, align 8, !dbg !621, !tbaa !382
  %71 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %65, i64 0, i32 1, !dbg !621
  store i32 %70, i32* %71, align 8, !dbg !621, !tbaa !382
  %72 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %64, i64 1, !dbg !617
  %73 = load %struct.lua_TValue*, %struct.lua_TValue** %60, align 8, !dbg !618, !tbaa !373
  %74 = icmp ult %struct.lua_TValue* %72, %73, !dbg !619
  br i1 %74, label %63, label %75, !dbg !620, !llvm.loop !622

; <label>:75:                                     ; preds = %63, %57
  %76 = phi %struct.lua_TValue* [ %61, %57 ], [ %73, %63 ], !dbg !618
  %77 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %76, i64 -1, !dbg !624
  store %struct.lua_TValue* %77, %struct.lua_TValue** %60, align 8, !dbg !624, !tbaa !373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !625
  ret void, !dbg !625
}

; Function Attrs: noredzone nounwind
define dso_local void @lua_insert(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !626 {
  %3 = icmp sgt i32 %1, 0, !dbg !645
  br i1 %3, label %4, label %14, !dbg !646

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !647
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8, !dbg !647, !tbaa !401
  %7 = add nsw i32 %1, -1, !dbg !648
  %8 = sext i32 %7 to i64, !dbg !649
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 %8, !dbg !649
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !651
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !651, !tbaa !373
  %12 = icmp ult %struct.lua_TValue* %9, %11, !dbg !652
  %13 = select i1 %12, %struct.lua_TValue* %9, %struct.lua_TValue* @luaO_nilobject_, !dbg !653
  br label %57

; <label>:14:                                     ; preds = %2
  %15 = icmp sgt i32 %1, -10000, !dbg !654
  br i1 %15, label %16, label %21, !dbg !655

; <label>:16:                                     ; preds = %14
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !656
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %17, align 8, !dbg !656, !tbaa !373
  %19 = sext i32 %1 to i64, !dbg !657
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 %19, !dbg !657
  br label %57, !dbg !658

; <label>:21:                                     ; preds = %14
  switch i32 %1, label %41 [
    i32 -10000, label %22
    i32 -10001, label %26
    i32 -10002, label %39
  ], !dbg !659

; <label>:22:                                     ; preds = %21
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !660
  %24 = load %struct.global_State*, %struct.global_State** %23, align 8, !dbg !660, !tbaa !482
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %24, i64 0, i32 20, !dbg !660
  br label %57, !dbg !661

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !662
  %28 = load %struct.CallInfo*, %struct.CallInfo** %27, align 8, !dbg !662, !tbaa !418
  %29 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %28, i64 0, i32 1, !dbg !662
  %30 = bitcast %struct.lua_TValue** %29 to %struct.CClosure***, !dbg !662
  %31 = load %struct.CClosure**, %struct.CClosure*** %30, align 8, !dbg !662, !tbaa !600
  %32 = load %struct.CClosure*, %struct.CClosure** %31, align 8, !dbg !662, !tbaa !510
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !664
  %34 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %32, i64 0, i32 6, !dbg !664
  %35 = bitcast %struct.Table** %34 to i64*, !dbg !664
  %36 = load i64, i64* %35, align 8, !dbg !664, !tbaa !510
  %37 = bitcast %struct.lua_TValue* %33 to i64*, !dbg !664
  store i64 %36, i64* %37, align 8, !dbg !664, !tbaa !510
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !664
  store i32 5, i32* %38, align 8, !dbg !664, !tbaa !382
  br label %57

; <label>:39:                                     ; preds = %21
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !665
  br label %57, !dbg !666

; <label>:41:                                     ; preds = %21
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !667
  %43 = load %struct.CallInfo*, %struct.CallInfo** %42, align 8, !dbg !667, !tbaa !418
  %44 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %43, i64 0, i32 1, !dbg !667
  %45 = bitcast %struct.lua_TValue** %44 to %struct.CClosure***, !dbg !667
  %46 = load %struct.CClosure**, %struct.CClosure*** %45, align 8, !dbg !667, !tbaa !600
  %47 = load %struct.CClosure*, %struct.CClosure** %46, align 8, !dbg !667, !tbaa !510
  %48 = sub nsw i32 -10002, %1, !dbg !669
  %49 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 4, !dbg !670
  %50 = load i8, i8* %49, align 1, !dbg !670, !tbaa !510
  %51 = zext i8 %50 to i32, !dbg !671
  %52 = icmp sgt i32 %48, %51, !dbg !672
  br i1 %52, label %57, label %53, !dbg !673

; <label>:53:                                     ; preds = %41
  %54 = add nsw i32 %48, -1, !dbg !674
  %55 = sext i32 %54 to i64, !dbg !675
  %56 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 8, i64 %55, !dbg !675
  br label %57, !dbg !673

; <label>:57:                                     ; preds = %4, %16, %22, %26, %39, %41, %53
  %58 = phi %struct.lua_TValue* [ %13, %4 ], [ %20, %16 ], [ %40, %39 ], [ %33, %26 ], [ %25, %22 ], [ %56, %53 ], [ @luaO_nilobject_, %41 ], !dbg !676
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !677
  %59 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !679
  %60 = load %struct.lua_TValue*, %struct.lua_TValue** %59, align 8, !dbg !679, !tbaa !373
  %61 = icmp ugt %struct.lua_TValue* %60, %58, !dbg !681
  br i1 %61, label %62, label %74, !dbg !682

; <label>:62:                                     ; preds = %57, %62
  %63 = phi %struct.lua_TValue* [ %64, %62 ], [ %60, %57 ]
  %64 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %63, i64 -1, !dbg !683
  %65 = bitcast %struct.lua_TValue* %64 to i64*, !dbg !683
  %66 = bitcast %struct.lua_TValue* %63 to i64*, !dbg !683
  %67 = load i64, i64* %65, align 8, !dbg !683
  store i64 %67, i64* %66, align 8, !dbg !683
  %68 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %63, i64 -1, i32 1, !dbg !683
  %69 = load i32, i32* %68, align 8, !dbg !683, !tbaa !382
  %70 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %63, i64 0, i32 1, !dbg !683
  store i32 %69, i32* %70, align 8, !dbg !683, !tbaa !382
  %71 = icmp ugt %struct.lua_TValue* %64, %58, !dbg !681
  br i1 %71, label %62, label %72, !dbg !682, !llvm.loop !684

; <label>:72:                                     ; preds = %62
  %73 = load %struct.lua_TValue*, %struct.lua_TValue** %59, align 8, !dbg !686, !tbaa !373
  br label %74, !dbg !686

; <label>:74:                                     ; preds = %72, %57
  %75 = phi %struct.lua_TValue* [ %73, %72 ], [ %60, %57 ], !dbg !686
  %76 = bitcast %struct.lua_TValue* %75 to i64*, !dbg !686
  %77 = bitcast %struct.lua_TValue* %58 to i64*, !dbg !686
  %78 = load i64, i64* %76, align 8, !dbg !686
  store i64 %78, i64* %77, align 8, !dbg !686
  %79 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %75, i64 0, i32 1, !dbg !686
  %80 = load i32, i32* %79, align 8, !dbg !686, !tbaa !382
  %81 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i64 0, i32 1, !dbg !686
  store i32 %80, i32* %81, align 8, !dbg !686, !tbaa !382
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !687
  ret void, !dbg !687
}

; Function Attrs: noredzone nounwind
define dso_local void @lua_replace(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !688 {
  %3 = icmp eq i32 %1, -10001, !dbg !702
  br i1 %3, label %4, label %11, !dbg !704

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !705
  %6 = load %struct.CallInfo*, %struct.CallInfo** %5, align 8, !dbg !705, !tbaa !418
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 12, !dbg !706
  %8 = load %struct.CallInfo*, %struct.CallInfo** %7, align 8, !dbg !706, !tbaa !707
  %9 = icmp eq %struct.CallInfo* %6, %8, !dbg !708
  br i1 %9, label %10, label %55, !dbg !709

; <label>:10:                                     ; preds = %4
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0)) #5, !dbg !710
  br label %55, !dbg !710

; <label>:11:                                     ; preds = %2
  %12 = icmp sgt i32 %1, 0, !dbg !714
  br i1 %12, label %13, label %23, !dbg !715

; <label>:13:                                     ; preds = %11
  %14 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !716
  %15 = load %struct.lua_TValue*, %struct.lua_TValue** %14, align 8, !dbg !716, !tbaa !401
  %16 = add nsw i32 %1, -1, !dbg !717
  %17 = sext i32 %16 to i64, !dbg !718
  %18 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %15, i64 %17, !dbg !718
  %19 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !720
  %20 = load %struct.lua_TValue*, %struct.lua_TValue** %19, align 8, !dbg !720, !tbaa !373
  %21 = icmp ult %struct.lua_TValue* %18, %20, !dbg !721
  %22 = select i1 %21, %struct.lua_TValue* %18, %struct.lua_TValue* @luaO_nilobject_, !dbg !722
  br label %95

; <label>:23:                                     ; preds = %11
  %24 = icmp sgt i32 %1, -10000, !dbg !723
  br i1 %24, label %25, label %30, !dbg !724

; <label>:25:                                     ; preds = %23
  %26 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !725
  %27 = load %struct.lua_TValue*, %struct.lua_TValue** %26, align 8, !dbg !725, !tbaa !373
  %28 = sext i32 %1 to i64, !dbg !726
  %29 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %27, i64 %28, !dbg !726
  br label %95, !dbg !727

; <label>:30:                                     ; preds = %23
  switch i32 %1, label %39 [
    i32 -10000, label %33
    i32 -10001, label %31
    i32 -10002, label %37
  ], !dbg !728

; <label>:31:                                     ; preds = %30
  %32 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !729
  br label %55, !dbg !728

; <label>:33:                                     ; preds = %30
  %34 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !730
  %35 = load %struct.global_State*, %struct.global_State** %34, align 8, !dbg !730, !tbaa !482
  %36 = getelementptr inbounds %struct.global_State, %struct.global_State* %35, i64 0, i32 20, !dbg !730
  br label %95, !dbg !731

; <label>:37:                                     ; preds = %30
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !732
  br label %95, !dbg !733

; <label>:39:                                     ; preds = %30
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !734
  %41 = load %struct.CallInfo*, %struct.CallInfo** %40, align 8, !dbg !734, !tbaa !418
  %42 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %41, i64 0, i32 1, !dbg !734
  %43 = bitcast %struct.lua_TValue** %42 to %struct.CClosure***, !dbg !734
  %44 = load %struct.CClosure**, %struct.CClosure*** %43, align 8, !dbg !734, !tbaa !600
  %45 = load %struct.CClosure*, %struct.CClosure** %44, align 8, !dbg !734, !tbaa !510
  %46 = sub nsw i32 -10002, %1, !dbg !736
  %47 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %45, i64 0, i32 4, !dbg !737
  %48 = load i8, i8* %47, align 1, !dbg !737, !tbaa !510
  %49 = zext i8 %48 to i32, !dbg !738
  %50 = icmp sgt i32 %46, %49, !dbg !739
  br i1 %50, label %95, label %51, !dbg !740

; <label>:51:                                     ; preds = %39
  %52 = add nsw i32 %46, -1, !dbg !741
  %53 = sext i32 %52 to i64, !dbg !742
  %54 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %45, i64 0, i32 8, i64 %53, !dbg !742
  br label %95, !dbg !740

; <label>:55:                                     ; preds = %31, %4, %10
  %56 = phi %struct.CallInfo** [ %32, %31 ], [ %5, %4 ], [ %5, %10 ], !dbg !729
  %57 = load %struct.CallInfo*, %struct.CallInfo** %56, align 8, !dbg !729, !tbaa !418
  %58 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %57, i64 0, i32 1, !dbg !729
  %59 = bitcast %struct.lua_TValue** %58 to %struct.CClosure***, !dbg !729
  %60 = load %struct.CClosure**, %struct.CClosure*** %59, align 8, !dbg !729, !tbaa !600
  %61 = load %struct.CClosure*, %struct.CClosure** %60, align 8, !dbg !729, !tbaa !510
  %62 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !744
  %63 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %61, i64 0, i32 6, !dbg !744
  %64 = bitcast %struct.Table** %63 to i64*, !dbg !744
  %65 = load i64, i64* %64, align 8, !dbg !744, !tbaa !510
  %66 = bitcast %struct.lua_TValue* %62 to i64*, !dbg !744
  store i64 %65, i64* %66, align 8, !dbg !744, !tbaa !510
  %67 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !744
  store i32 5, i32* %67, align 8, !dbg !744, !tbaa !382
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !745
  %68 = load %struct.lua_TValue*, %struct.lua_TValue** %58, align 8, !dbg !747, !tbaa !600
  %69 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %68, i64 0, i32 0, i32 0, !dbg !747
  %70 = load %union.GCObject*, %union.GCObject** %69, align 8, !dbg !747, !tbaa !510
  %71 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !749
  %72 = load %struct.lua_TValue*, %struct.lua_TValue** %71, align 8, !dbg !749, !tbaa !373
  %73 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %72, i64 -1, i32 0, i32 0, !dbg !749
  %74 = bitcast %union.GCObject** %73 to i64*, !dbg !749
  %75 = load i64, i64* %74, align 8, !dbg !749, !tbaa !510
  %76 = getelementptr inbounds %union.GCObject, %union.GCObject* %70, i64 0, i32 0, i32 5, !dbg !750
  %77 = bitcast %struct.lua_TValue** %76 to i64*, !dbg !751
  store i64 %75, i64* %77, align 8, !dbg !751, !tbaa !510
  %78 = load %struct.lua_TValue*, %struct.lua_TValue** %71, align 8, !dbg !752, !tbaa !373
  %79 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %78, i64 -1, i32 1, !dbg !752
  %80 = load i32, i32* %79, align 8, !dbg !752, !tbaa !382
  %81 = icmp sgt i32 %80, 3, !dbg !752
  br i1 %81, label %82, label %131, !dbg !752

; <label>:82:                                     ; preds = %55
  %83 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %78, i64 -1, i32 0, i32 0, !dbg !752
  %84 = load %union.GCObject*, %union.GCObject** %83, align 8, !dbg !752, !tbaa !510
  %85 = getelementptr inbounds %union.GCObject, %union.GCObject* %84, i64 0, i32 0, i32 2, !dbg !752
  %86 = load i8, i8* %85, align 1, !dbg !752, !tbaa !510
  %87 = and i8 %86, 3, !dbg !752
  %88 = icmp eq i8 %87, 0, !dbg !752
  br i1 %88, label %131, label %89, !dbg !752

; <label>:89:                                     ; preds = %82
  %90 = getelementptr inbounds %union.GCObject, %union.GCObject* %70, i64 0, i32 0, i32 2, !dbg !752
  %91 = load i8, i8* %90, align 1, !dbg !752, !tbaa !510
  %92 = and i8 %91, 4, !dbg !752
  %93 = icmp eq i8 %92, 0, !dbg !752
  br i1 %93, label %131, label %94, !dbg !755

; <label>:94:                                     ; preds = %89
  tail call void @luaC_barrierf(%struct.lua_State* nonnull %0, %union.GCObject* nonnull %70, %union.GCObject* %84) #5, !dbg !752
  br label %131, !dbg !752

; <label>:95:                                     ; preds = %13, %25, %33, %37, %39, %51
  %96 = phi %struct.lua_TValue* [ @luaO_nilobject_, %39 ], [ %54, %51 ], [ %36, %33 ], [ %38, %37 ], [ %29, %25 ], [ %22, %13 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !745
  %97 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !756
  %98 = load %struct.lua_TValue*, %struct.lua_TValue** %97, align 8, !dbg !756, !tbaa !373
  %99 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %98, i64 -1, !dbg !756
  %100 = bitcast %struct.lua_TValue* %99 to i64*, !dbg !756
  %101 = bitcast %struct.lua_TValue* %96 to i64*, !dbg !756
  %102 = load i64, i64* %100, align 8, !dbg !756
  store i64 %102, i64* %101, align 8, !dbg !756
  %103 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %98, i64 -1, i32 1, !dbg !756
  %104 = load i32, i32* %103, align 8, !dbg !756, !tbaa !382
  %105 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %96, i64 0, i32 1, !dbg !756
  store i32 %104, i32* %105, align 8, !dbg !756, !tbaa !382
  %106 = icmp slt i32 %1, -10002, !dbg !757
  br i1 %106, label %107, label %131, !dbg !759

; <label>:107:                                    ; preds = %95
  %108 = load %struct.lua_TValue*, %struct.lua_TValue** %97, align 8, !dbg !760, !tbaa !373
  %109 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %108, i64 -1, i32 1, !dbg !760
  %110 = load i32, i32* %109, align 8, !dbg !760, !tbaa !382
  %111 = icmp sgt i32 %110, 3, !dbg !760
  br i1 %111, label %112, label %131, !dbg !760

; <label>:112:                                    ; preds = %107
  %113 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %108, i64 -1, i32 0, i32 0, !dbg !760
  %114 = load %union.GCObject*, %union.GCObject** %113, align 8, !dbg !760, !tbaa !510
  %115 = getelementptr inbounds %union.GCObject, %union.GCObject* %114, i64 0, i32 0, i32 2, !dbg !760
  %116 = load i8, i8* %115, align 1, !dbg !760, !tbaa !510
  %117 = and i8 %116, 3, !dbg !760
  %118 = icmp eq i8 %117, 0, !dbg !760
  br i1 %118, label %131, label %119, !dbg !760

; <label>:119:                                    ; preds = %112
  %120 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !760
  %121 = load %struct.CallInfo*, %struct.CallInfo** %120, align 8, !dbg !760, !tbaa !418
  %122 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %121, i64 0, i32 1, !dbg !760
  %123 = load %struct.lua_TValue*, %struct.lua_TValue** %122, align 8, !dbg !760, !tbaa !600
  %124 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %123, i64 0, i32 0, i32 0, !dbg !760
  %125 = load %union.GCObject*, %union.GCObject** %124, align 8, !dbg !760, !tbaa !510
  %126 = getelementptr inbounds %union.GCObject, %union.GCObject* %125, i64 0, i32 0, i32 2, !dbg !760
  %127 = load i8, i8* %126, align 1, !dbg !760, !tbaa !510
  %128 = and i8 %127, 4, !dbg !760
  %129 = icmp eq i8 %128, 0, !dbg !760
  br i1 %129, label %131, label %130, !dbg !763

; <label>:130:                                    ; preds = %119
  tail call void @luaC_barrierf(%struct.lua_State* nonnull %0, %union.GCObject* %125, %union.GCObject* %114) #5, !dbg !760
  br label %131, !dbg !760

; <label>:131:                                    ; preds = %55, %94, %82, %89, %119, %112, %95, %130, %107
  %132 = phi %struct.lua_TValue** [ %71, %55 ], [ %71, %94 ], [ %71, %82 ], [ %71, %89 ], [ %97, %119 ], [ %97, %112 ], [ %97, %95 ], [ %97, %130 ], [ %97, %107 ], !dbg !764
  %133 = load %struct.lua_TValue*, %struct.lua_TValue** %132, align 8, !dbg !765, !tbaa !373
  %134 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %133, i64 -1, !dbg !765
  store %struct.lua_TValue* %134, %struct.lua_TValue** %132, align 8, !dbg !765, !tbaa !373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !766
  ret void, !dbg !766
}

; Function Attrs: noredzone
declare hidden void @luaG_runerror(%struct.lua_State*, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden void @luaC_barrierf(%struct.lua_State*, %union.GCObject*, %union.GCObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @lua_pushvalue(%struct.lua_State* nocapture, i32) local_unnamed_addr #0 !dbg !767 {
  %3 = icmp sgt i32 %1, 0, !dbg !779
  br i1 %3, label %4, label %14, !dbg !780

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !781
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8, !dbg !781, !tbaa !401
  %7 = add nsw i32 %1, -1, !dbg !782
  %8 = sext i32 %7 to i64, !dbg !783
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 %8, !dbg !783
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !785
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !785, !tbaa !373
  %12 = icmp ult %struct.lua_TValue* %9, %11, !dbg !786
  %13 = select i1 %12, %struct.lua_TValue* %9, %struct.lua_TValue* @luaO_nilobject_, !dbg !787
  br label %57

; <label>:14:                                     ; preds = %2
  %15 = icmp sgt i32 %1, -10000, !dbg !788
  br i1 %15, label %16, label %21, !dbg !789

; <label>:16:                                     ; preds = %14
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !790
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %17, align 8, !dbg !790, !tbaa !373
  %19 = sext i32 %1 to i64, !dbg !791
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 %19, !dbg !791
  br label %57, !dbg !792

; <label>:21:                                     ; preds = %14
  switch i32 %1, label %41 [
    i32 -10000, label %22
    i32 -10001, label %26
    i32 -10002, label %39
  ], !dbg !793

; <label>:22:                                     ; preds = %21
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !794
  %24 = load %struct.global_State*, %struct.global_State** %23, align 8, !dbg !794, !tbaa !482
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %24, i64 0, i32 20, !dbg !794
  br label %57, !dbg !795

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !796
  %28 = load %struct.CallInfo*, %struct.CallInfo** %27, align 8, !dbg !796, !tbaa !418
  %29 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %28, i64 0, i32 1, !dbg !796
  %30 = bitcast %struct.lua_TValue** %29 to %struct.CClosure***, !dbg !796
  %31 = load %struct.CClosure**, %struct.CClosure*** %30, align 8, !dbg !796, !tbaa !600
  %32 = load %struct.CClosure*, %struct.CClosure** %31, align 8, !dbg !796, !tbaa !510
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !798
  %34 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %32, i64 0, i32 6, !dbg !798
  %35 = bitcast %struct.Table** %34 to i64*, !dbg !798
  %36 = load i64, i64* %35, align 8, !dbg !798, !tbaa !510
  %37 = bitcast %struct.lua_TValue* %33 to i64*, !dbg !798
  store i64 %36, i64* %37, align 8, !dbg !798, !tbaa !510
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !798
  store i32 5, i32* %38, align 8, !dbg !798, !tbaa !382
  br label %57

; <label>:39:                                     ; preds = %21
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !799
  br label %57, !dbg !800

; <label>:41:                                     ; preds = %21
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !801
  %43 = load %struct.CallInfo*, %struct.CallInfo** %42, align 8, !dbg !801, !tbaa !418
  %44 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %43, i64 0, i32 1, !dbg !801
  %45 = bitcast %struct.lua_TValue** %44 to %struct.CClosure***, !dbg !801
  %46 = load %struct.CClosure**, %struct.CClosure*** %45, align 8, !dbg !801, !tbaa !600
  %47 = load %struct.CClosure*, %struct.CClosure** %46, align 8, !dbg !801, !tbaa !510
  %48 = sub nsw i32 -10002, %1, !dbg !803
  %49 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 4, !dbg !804
  %50 = load i8, i8* %49, align 1, !dbg !804, !tbaa !510
  %51 = zext i8 %50 to i32, !dbg !805
  %52 = icmp sgt i32 %48, %51, !dbg !806
  br i1 %52, label %57, label %53, !dbg !807

; <label>:53:                                     ; preds = %41
  %54 = add nsw i32 %48, -1, !dbg !808
  %55 = sext i32 %54 to i64, !dbg !809
  %56 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 8, i64 %55, !dbg !809
  br label %57, !dbg !807

; <label>:57:                                     ; preds = %4, %16, %22, %26, %39, %41, %53
  %58 = phi %struct.lua_TValue* [ %13, %4 ], [ %20, %16 ], [ %40, %39 ], [ %33, %26 ], [ %25, %22 ], [ %56, %53 ], [ @luaO_nilobject_, %41 ], !dbg !810
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !811
  %59 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !812
  %60 = load %struct.lua_TValue*, %struct.lua_TValue** %59, align 8, !dbg !812, !tbaa !373
  %61 = bitcast %struct.lua_TValue* %58 to i64*, !dbg !812
  %62 = bitcast %struct.lua_TValue* %60 to i64*, !dbg !812
  %63 = load i64, i64* %61, align 8, !dbg !812
  store i64 %63, i64* %62, align 8, !dbg !812
  %64 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i64 0, i32 1, !dbg !812
  %65 = load i32, i32* %64, align 8, !dbg !812, !tbaa !382
  %66 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %60, i64 0, i32 1, !dbg !812
  store i32 %65, i32* %66, align 8, !dbg !812, !tbaa !382
  %67 = load %struct.lua_TValue*, %struct.lua_TValue** %59, align 8, !dbg !813, !tbaa !373
  %68 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %67, i64 1, !dbg !813
  store %struct.lua_TValue* %68, %struct.lua_TValue** %59, align 8, !dbg !813, !tbaa !373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !815
  ret void, !dbg !815
}

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_type(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !816 {
  %3 = icmp sgt i32 %1, 0, !dbg !826
  br i1 %3, label %4, label %13, !dbg !827

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !828
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8, !dbg !828, !tbaa !401
  %7 = add nsw i32 %1, -1, !dbg !829
  %8 = sext i32 %7 to i64, !dbg !830
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 %8, !dbg !830
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !832
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !832, !tbaa !373
  %12 = icmp ult %struct.lua_TValue* %9, %11, !dbg !833
  br i1 %12, label %57, label %56

; <label>:13:                                     ; preds = %2
  %14 = icmp sgt i32 %1, -10000, !dbg !834
  br i1 %14, label %15, label %20, !dbg !835

; <label>:15:                                     ; preds = %13
  %16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !836
  %17 = load %struct.lua_TValue*, %struct.lua_TValue** %16, align 8, !dbg !836, !tbaa !373
  %18 = sext i32 %1 to i64, !dbg !837
  %19 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %17, i64 %18, !dbg !837
  br label %57, !dbg !838

; <label>:20:                                     ; preds = %13
  switch i32 %1, label %40 [
    i32 -10000, label %21
    i32 -10001, label %25
    i32 -10002, label %38
  ], !dbg !839

; <label>:21:                                     ; preds = %20
  %22 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !840
  %23 = load %struct.global_State*, %struct.global_State** %22, align 8, !dbg !840, !tbaa !482
  %24 = getelementptr inbounds %struct.global_State, %struct.global_State* %23, i64 0, i32 20, !dbg !840
  br label %57, !dbg !841

; <label>:25:                                     ; preds = %20
  %26 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !842
  %27 = load %struct.CallInfo*, %struct.CallInfo** %26, align 8, !dbg !842, !tbaa !418
  %28 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %27, i64 0, i32 1, !dbg !842
  %29 = bitcast %struct.lua_TValue** %28 to %struct.CClosure***, !dbg !842
  %30 = load %struct.CClosure**, %struct.CClosure*** %29, align 8, !dbg !842, !tbaa !600
  %31 = load %struct.CClosure*, %struct.CClosure** %30, align 8, !dbg !842, !tbaa !510
  %32 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !844
  %33 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %31, i64 0, i32 6, !dbg !844
  %34 = bitcast %struct.Table** %33 to i64*, !dbg !844
  %35 = load i64, i64* %34, align 8, !dbg !844, !tbaa !510
  %36 = bitcast %struct.lua_TValue* %32 to i64*, !dbg !844
  store i64 %35, i64* %36, align 8, !dbg !844, !tbaa !510
  %37 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !844
  store i32 5, i32* %37, align 8, !dbg !844, !tbaa !382
  br label %57

; <label>:38:                                     ; preds = %20
  %39 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !845
  br label %57, !dbg !846

; <label>:40:                                     ; preds = %20
  %41 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !847
  %42 = load %struct.CallInfo*, %struct.CallInfo** %41, align 8, !dbg !847, !tbaa !418
  %43 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %42, i64 0, i32 1, !dbg !847
  %44 = bitcast %struct.lua_TValue** %43 to %struct.CClosure***, !dbg !847
  %45 = load %struct.CClosure**, %struct.CClosure*** %44, align 8, !dbg !847, !tbaa !600
  %46 = load %struct.CClosure*, %struct.CClosure** %45, align 8, !dbg !847, !tbaa !510
  %47 = sub nsw i32 -10002, %1, !dbg !849
  %48 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %46, i64 0, i32 4, !dbg !850
  %49 = load i8, i8* %48, align 1, !dbg !850, !tbaa !510
  %50 = zext i8 %49 to i32, !dbg !851
  %51 = icmp sgt i32 %47, %50, !dbg !852
  br i1 %51, label %56, label %52, !dbg !853

; <label>:52:                                     ; preds = %40
  %53 = add nsw i32 %47, -1, !dbg !854
  %54 = sext i32 %53 to i64, !dbg !855
  %55 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %46, i64 0, i32 8, i64 %54, !dbg !855
  br label %57, !dbg !853

; <label>:56:                                     ; preds = %4, %40
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !856
  br label %63, !dbg !858

; <label>:57:                                     ; preds = %4, %15, %21, %25, %38, %52
  %58 = phi %struct.lua_TValue* [ %19, %15 ], [ %39, %38 ], [ %32, %25 ], [ %24, %21 ], [ %55, %52 ], [ %9, %4 ], !dbg !859
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !856
  %59 = icmp eq %struct.lua_TValue* %58, @luaO_nilobject_, !dbg !860
  br i1 %59, label %63, label %60, !dbg !858

; <label>:60:                                     ; preds = %57
  %61 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i64 0, i32 1, !dbg !861
  %62 = load i32, i32* %61, align 8, !dbg !861, !tbaa !382
  br label %63, !dbg !858

; <label>:63:                                     ; preds = %56, %57, %60
  %64 = phi i32 [ %62, %60 ], [ -1, %57 ], [ -1, %56 ], !dbg !858
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !862
  ret i32 %64, !dbg !862
}

; Function Attrs: noredzone nounwind
define dso_local i8* @lua_typename(%struct.lua_State* nocapture readnone, i32) local_unnamed_addr #0 !dbg !863 {
  %3 = icmp eq i32 %1, -1, !dbg !871
  br i1 %3, label %8, label %4, !dbg !872

; <label>:4:                                      ; preds = %2
  %5 = sext i32 %1 to i64, !dbg !873
  %6 = getelementptr inbounds [0 x i8*], [0 x i8*]* @luaT_typenames, i64 0, i64 %5, !dbg !873
  %7 = load i8*, i8** %6, align 8, !dbg !873, !tbaa !874
  br label %8, !dbg !872

; <label>:8:                                      ; preds = %2, %4
  %9 = phi i8* [ %7, %4 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %2 ], !dbg !872
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !875
  ret i8* %9, !dbg !875
}

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_iscfunction(%struct.lua_State* nocapture, i32) local_unnamed_addr #0 !dbg !876 {
  %3 = icmp sgt i32 %1, 0, !dbg !886
  br i1 %3, label %4, label %14, !dbg !887

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !888
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8, !dbg !888, !tbaa !401
  %7 = add nsw i32 %1, -1, !dbg !889
  %8 = sext i32 %7 to i64, !dbg !890
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 %8, !dbg !890
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !892
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !892, !tbaa !373
  %12 = icmp ult %struct.lua_TValue* %9, %11, !dbg !893
  %13 = select i1 %12, %struct.lua_TValue* %9, %struct.lua_TValue* @luaO_nilobject_, !dbg !894
  br label %57

; <label>:14:                                     ; preds = %2
  %15 = icmp sgt i32 %1, -10000, !dbg !895
  br i1 %15, label %16, label %21, !dbg !896

; <label>:16:                                     ; preds = %14
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !897
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %17, align 8, !dbg !897, !tbaa !373
  %19 = sext i32 %1 to i64, !dbg !898
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 %19, !dbg !898
  br label %57, !dbg !899

; <label>:21:                                     ; preds = %14
  switch i32 %1, label %41 [
    i32 -10000, label %22
    i32 -10001, label %26
    i32 -10002, label %39
  ], !dbg !900

; <label>:22:                                     ; preds = %21
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !901
  %24 = load %struct.global_State*, %struct.global_State** %23, align 8, !dbg !901, !tbaa !482
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %24, i64 0, i32 20, !dbg !901
  br label %57, !dbg !902

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !903
  %28 = load %struct.CallInfo*, %struct.CallInfo** %27, align 8, !dbg !903, !tbaa !418
  %29 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %28, i64 0, i32 1, !dbg !903
  %30 = bitcast %struct.lua_TValue** %29 to %struct.CClosure***, !dbg !903
  %31 = load %struct.CClosure**, %struct.CClosure*** %30, align 8, !dbg !903, !tbaa !600
  %32 = load %struct.CClosure*, %struct.CClosure** %31, align 8, !dbg !903, !tbaa !510
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !905
  %34 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %32, i64 0, i32 6, !dbg !905
  %35 = bitcast %struct.Table** %34 to i64*, !dbg !905
  %36 = load i64, i64* %35, align 8, !dbg !905, !tbaa !510
  %37 = bitcast %struct.lua_TValue* %33 to i64*, !dbg !905
  store i64 %36, i64* %37, align 8, !dbg !905, !tbaa !510
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !905
  store i32 5, i32* %38, align 8, !dbg !905, !tbaa !382
  br label %57

; <label>:39:                                     ; preds = %21
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !906
  br label %57, !dbg !907

; <label>:41:                                     ; preds = %21
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !908
  %43 = load %struct.CallInfo*, %struct.CallInfo** %42, align 8, !dbg !908, !tbaa !418
  %44 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %43, i64 0, i32 1, !dbg !908
  %45 = bitcast %struct.lua_TValue** %44 to %struct.CClosure***, !dbg !908
  %46 = load %struct.CClosure**, %struct.CClosure*** %45, align 8, !dbg !908, !tbaa !600
  %47 = load %struct.CClosure*, %struct.CClosure** %46, align 8, !dbg !908, !tbaa !510
  %48 = sub nsw i32 -10002, %1, !dbg !910
  %49 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 4, !dbg !911
  %50 = load i8, i8* %49, align 1, !dbg !911, !tbaa !510
  %51 = zext i8 %50 to i32, !dbg !912
  %52 = icmp sgt i32 %48, %51, !dbg !913
  br i1 %52, label %57, label %53, !dbg !914

; <label>:53:                                     ; preds = %41
  %54 = add nsw i32 %48, -1, !dbg !915
  %55 = sext i32 %54 to i64, !dbg !916
  %56 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 8, i64 %55, !dbg !916
  br label %57, !dbg !914

; <label>:57:                                     ; preds = %4, %16, %22, %26, %39, %41, %53
  %58 = phi %struct.lua_TValue* [ %13, %4 ], [ %20, %16 ], [ %40, %39 ], [ %33, %26 ], [ %25, %22 ], [ %56, %53 ], [ @luaO_nilobject_, %41 ], !dbg !917
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !918
  %59 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i64 0, i32 1, !dbg !920
  %60 = load i32, i32* %59, align 8, !dbg !920, !tbaa !382
  %61 = icmp eq i32 %60, 6, !dbg !920
  br i1 %61, label %62, label %69, !dbg !920

; <label>:62:                                     ; preds = %57
  %63 = bitcast %struct.lua_TValue* %58 to %struct.CClosure**, !dbg !920
  %64 = load %struct.CClosure*, %struct.CClosure** %63, align 8, !dbg !920, !tbaa !510
  %65 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %64, i64 0, i32 3, !dbg !920
  %66 = load i8, i8* %65, align 2, !dbg !920, !tbaa !510
  %67 = icmp ne i8 %66, 0, !dbg !920
  %68 = zext i1 %67 to i32
  br label %69

; <label>:69:                                     ; preds = %62, %57
  %70 = phi i32 [ 0, %57 ], [ %68, %62 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !921
  ret i32 %70, !dbg !921
}

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_isnumber(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !922 {
  %3 = alloca %struct.lua_TValue, align 8
  %4 = bitcast %struct.lua_TValue* %3 to i8*, !dbg !930
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #4, !dbg !930
  %5 = icmp sgt i32 %1, 0, !dbg !934
  br i1 %5, label %6, label %16, !dbg !935

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !936
  %8 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8, !dbg !936, !tbaa !401
  %9 = add nsw i32 %1, -1, !dbg !937
  %10 = sext i32 %9 to i64, !dbg !938
  %11 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %8, i64 %10, !dbg !938
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !940
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %12, align 8, !dbg !940, !tbaa !373
  %14 = icmp ult %struct.lua_TValue* %11, %13, !dbg !941
  %15 = select i1 %14, %struct.lua_TValue* %11, %struct.lua_TValue* @luaO_nilobject_, !dbg !942
  br label %59

; <label>:16:                                     ; preds = %2
  %17 = icmp sgt i32 %1, -10000, !dbg !943
  br i1 %17, label %18, label %23, !dbg !944

; <label>:18:                                     ; preds = %16
  %19 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !945
  %20 = load %struct.lua_TValue*, %struct.lua_TValue** %19, align 8, !dbg !945, !tbaa !373
  %21 = sext i32 %1 to i64, !dbg !946
  %22 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %20, i64 %21, !dbg !946
  br label %59, !dbg !947

; <label>:23:                                     ; preds = %16
  switch i32 %1, label %43 [
    i32 -10000, label %24
    i32 -10001, label %28
    i32 -10002, label %41
  ], !dbg !948

; <label>:24:                                     ; preds = %23
  %25 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !949
  %26 = load %struct.global_State*, %struct.global_State** %25, align 8, !dbg !949, !tbaa !482
  %27 = getelementptr inbounds %struct.global_State, %struct.global_State* %26, i64 0, i32 20, !dbg !949
  br label %59, !dbg !950

; <label>:28:                                     ; preds = %23
  %29 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !951
  %30 = load %struct.CallInfo*, %struct.CallInfo** %29, align 8, !dbg !951, !tbaa !418
  %31 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %30, i64 0, i32 1, !dbg !951
  %32 = bitcast %struct.lua_TValue** %31 to %struct.CClosure***, !dbg !951
  %33 = load %struct.CClosure**, %struct.CClosure*** %32, align 8, !dbg !951, !tbaa !600
  %34 = load %struct.CClosure*, %struct.CClosure** %33, align 8, !dbg !951, !tbaa !510
  %35 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !953
  %36 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %34, i64 0, i32 6, !dbg !953
  %37 = bitcast %struct.Table** %36 to i64*, !dbg !953
  %38 = load i64, i64* %37, align 8, !dbg !953, !tbaa !510
  %39 = bitcast %struct.lua_TValue* %35 to i64*, !dbg !953
  store i64 %38, i64* %39, align 8, !dbg !953, !tbaa !510
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !953
  store i32 5, i32* %40, align 8, !dbg !953, !tbaa !382
  br label %59

; <label>:41:                                     ; preds = %23
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !954
  br label %59, !dbg !955

; <label>:43:                                     ; preds = %23
  %44 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !956
  %45 = load %struct.CallInfo*, %struct.CallInfo** %44, align 8, !dbg !956, !tbaa !418
  %46 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %45, i64 0, i32 1, !dbg !956
  %47 = bitcast %struct.lua_TValue** %46 to %struct.CClosure***, !dbg !956
  %48 = load %struct.CClosure**, %struct.CClosure*** %47, align 8, !dbg !956, !tbaa !600
  %49 = load %struct.CClosure*, %struct.CClosure** %48, align 8, !dbg !956, !tbaa !510
  %50 = sub nsw i32 -10002, %1, !dbg !958
  %51 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %49, i64 0, i32 4, !dbg !959
  %52 = load i8, i8* %51, align 1, !dbg !959, !tbaa !510
  %53 = zext i8 %52 to i32, !dbg !960
  %54 = icmp sgt i32 %50, %53, !dbg !961
  br i1 %54, label %59, label %55, !dbg !962

; <label>:55:                                     ; preds = %43
  %56 = add nsw i32 %50, -1, !dbg !963
  %57 = sext i32 %56 to i64, !dbg !964
  %58 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %49, i64 0, i32 8, i64 %57, !dbg !964
  br label %59, !dbg !962

; <label>:59:                                     ; preds = %6, %18, %24, %28, %41, %43, %55
  %60 = phi %struct.lua_TValue* [ %15, %6 ], [ %22, %18 ], [ %42, %41 ], [ %35, %28 ], [ %27, %24 ], [ %58, %55 ], [ @luaO_nilobject_, %43 ], !dbg !965
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !966
  %61 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %60, i64 0, i32 1, !dbg !968
  %62 = load i32, i32* %61, align 8, !dbg !968, !tbaa !382
  %63 = icmp eq i32 %62, 3, !dbg !968
  br i1 %63, label %68, label %64, !dbg !968

; <label>:64:                                     ; preds = %59
  %65 = call %struct.lua_TValue* @luaV_tonumber(%struct.lua_TValue* %60, %struct.lua_TValue* nonnull %3) #5, !dbg !968
  %66 = icmp ne %struct.lua_TValue* %65, null, !dbg !968
  %67 = zext i1 %66 to i32, !dbg !968
  br label %68, !dbg !968

; <label>:68:                                     ; preds = %64, %59
  %69 = phi i32 [ 1, %59 ], [ %67, %64 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #4, !dbg !970
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !971
  ret i32 %69, !dbg !971
}

; Function Attrs: noredzone
declare hidden %struct.lua_TValue* @luaV_tonumber(%struct.lua_TValue*, %struct.lua_TValue*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_isstring(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !972 {
  %3 = icmp sgt i32 %1, 0, !dbg !985
  br i1 %3, label %4, label %13, !dbg !986

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !987
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8, !dbg !987, !tbaa !401
  %7 = add nsw i32 %1, -1, !dbg !988
  %8 = sext i32 %7 to i64, !dbg !989
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 %8, !dbg !989
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !991
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !991, !tbaa !373
  %12 = icmp ult %struct.lua_TValue* %9, %11, !dbg !992
  br i1 %12, label %57, label %56

; <label>:13:                                     ; preds = %2
  %14 = icmp sgt i32 %1, -10000, !dbg !993
  br i1 %14, label %15, label %20, !dbg !994

; <label>:15:                                     ; preds = %13
  %16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !995
  %17 = load %struct.lua_TValue*, %struct.lua_TValue** %16, align 8, !dbg !995, !tbaa !373
  %18 = sext i32 %1 to i64, !dbg !996
  %19 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %17, i64 %18, !dbg !996
  br label %57, !dbg !997

; <label>:20:                                     ; preds = %13
  switch i32 %1, label %40 [
    i32 -10000, label %21
    i32 -10001, label %25
    i32 -10002, label %38
  ], !dbg !998

; <label>:21:                                     ; preds = %20
  %22 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !999
  %23 = load %struct.global_State*, %struct.global_State** %22, align 8, !dbg !999, !tbaa !482
  %24 = getelementptr inbounds %struct.global_State, %struct.global_State* %23, i64 0, i32 20, !dbg !999
  br label %57, !dbg !1000

; <label>:25:                                     ; preds = %20
  %26 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1001
  %27 = load %struct.CallInfo*, %struct.CallInfo** %26, align 8, !dbg !1001, !tbaa !418
  %28 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %27, i64 0, i32 1, !dbg !1001
  %29 = bitcast %struct.lua_TValue** %28 to %struct.CClosure***, !dbg !1001
  %30 = load %struct.CClosure**, %struct.CClosure*** %29, align 8, !dbg !1001, !tbaa !600
  %31 = load %struct.CClosure*, %struct.CClosure** %30, align 8, !dbg !1001, !tbaa !510
  %32 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !1003
  %33 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %31, i64 0, i32 6, !dbg !1003
  %34 = bitcast %struct.Table** %33 to i64*, !dbg !1003
  %35 = load i64, i64* %34, align 8, !dbg !1003, !tbaa !510
  %36 = bitcast %struct.lua_TValue* %32 to i64*, !dbg !1003
  store i64 %35, i64* %36, align 8, !dbg !1003, !tbaa !510
  %37 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !1003
  store i32 5, i32* %37, align 8, !dbg !1003, !tbaa !382
  br label %57

; <label>:38:                                     ; preds = %20
  %39 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !1004
  br label %57, !dbg !1005

; <label>:40:                                     ; preds = %20
  %41 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1006
  %42 = load %struct.CallInfo*, %struct.CallInfo** %41, align 8, !dbg !1006, !tbaa !418
  %43 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %42, i64 0, i32 1, !dbg !1006
  %44 = bitcast %struct.lua_TValue** %43 to %struct.CClosure***, !dbg !1006
  %45 = load %struct.CClosure**, %struct.CClosure*** %44, align 8, !dbg !1006, !tbaa !600
  %46 = load %struct.CClosure*, %struct.CClosure** %45, align 8, !dbg !1006, !tbaa !510
  %47 = sub nsw i32 -10002, %1, !dbg !1008
  %48 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %46, i64 0, i32 4, !dbg !1009
  %49 = load i8, i8* %48, align 1, !dbg !1009, !tbaa !510
  %50 = zext i8 %49 to i32, !dbg !1010
  %51 = icmp sgt i32 %47, %50, !dbg !1011
  br i1 %51, label %56, label %52, !dbg !1012

; <label>:52:                                     ; preds = %40
  %53 = add nsw i32 %47, -1, !dbg !1013
  %54 = sext i32 %53 to i64, !dbg !1014
  %55 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %46, i64 0, i32 8, i64 %54, !dbg !1014
  br label %57, !dbg !1012

; <label>:56:                                     ; preds = %40, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1015
  br label %66, !dbg !1017

; <label>:57:                                     ; preds = %52, %38, %25, %21, %15, %4
  %58 = phi %struct.lua_TValue* [ %19, %15 ], [ %39, %38 ], [ %32, %25 ], [ %24, %21 ], [ %55, %52 ], [ %9, %4 ], !dbg !1018
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1015
  %59 = icmp eq %struct.lua_TValue* %58, @luaO_nilobject_, !dbg !1019
  br i1 %59, label %66, label %60, !dbg !1017

; <label>:60:                                     ; preds = %57
  %61 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i64 0, i32 1, !dbg !1020
  %62 = load i32, i32* %61, align 8, !dbg !1020, !tbaa !382
  %63 = add i32 %62, -3, !dbg !1017
  %64 = icmp ult i32 %63, 2, !dbg !1017
  %65 = zext i1 %64 to i32, !dbg !1017
  br label %66, !dbg !1017

; <label>:66:                                     ; preds = %56, %57, %60
  %67 = phi i32 [ %65, %60 ], [ 0, %57 ], [ 0, %56 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1021
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1022
  ret i32 %67, !dbg !1022
}

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_isuserdata(%struct.lua_State* nocapture, i32) local_unnamed_addr #0 !dbg !1023 {
  %3 = icmp sgt i32 %1, 0, !dbg !1033
  br i1 %3, label %4, label %14, !dbg !1034

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !1035
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8, !dbg !1035, !tbaa !401
  %7 = add nsw i32 %1, -1, !dbg !1036
  %8 = sext i32 %7 to i64, !dbg !1037
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 %8, !dbg !1037
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1039
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !1039, !tbaa !373
  %12 = icmp ult %struct.lua_TValue* %9, %11, !dbg !1040
  %13 = select i1 %12, %struct.lua_TValue* %9, %struct.lua_TValue* @luaO_nilobject_, !dbg !1041
  br label %57

; <label>:14:                                     ; preds = %2
  %15 = icmp sgt i32 %1, -10000, !dbg !1042
  br i1 %15, label %16, label %21, !dbg !1043

; <label>:16:                                     ; preds = %14
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1044
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %17, align 8, !dbg !1044, !tbaa !373
  %19 = sext i32 %1 to i64, !dbg !1045
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 %19, !dbg !1045
  br label %57, !dbg !1046

; <label>:21:                                     ; preds = %14
  switch i32 %1, label %41 [
    i32 -10000, label %22
    i32 -10001, label %26
    i32 -10002, label %39
  ], !dbg !1047

; <label>:22:                                     ; preds = %21
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1048
  %24 = load %struct.global_State*, %struct.global_State** %23, align 8, !dbg !1048, !tbaa !482
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %24, i64 0, i32 20, !dbg !1048
  br label %57, !dbg !1049

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1050
  %28 = load %struct.CallInfo*, %struct.CallInfo** %27, align 8, !dbg !1050, !tbaa !418
  %29 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %28, i64 0, i32 1, !dbg !1050
  %30 = bitcast %struct.lua_TValue** %29 to %struct.CClosure***, !dbg !1050
  %31 = load %struct.CClosure**, %struct.CClosure*** %30, align 8, !dbg !1050, !tbaa !600
  %32 = load %struct.CClosure*, %struct.CClosure** %31, align 8, !dbg !1050, !tbaa !510
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !1052
  %34 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %32, i64 0, i32 6, !dbg !1052
  %35 = bitcast %struct.Table** %34 to i64*, !dbg !1052
  %36 = load i64, i64* %35, align 8, !dbg !1052, !tbaa !510
  %37 = bitcast %struct.lua_TValue* %33 to i64*, !dbg !1052
  store i64 %36, i64* %37, align 8, !dbg !1052, !tbaa !510
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !1052
  store i32 5, i32* %38, align 8, !dbg !1052, !tbaa !382
  br label %57

; <label>:39:                                     ; preds = %21
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !1053
  br label %57, !dbg !1054

; <label>:41:                                     ; preds = %21
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1055
  %43 = load %struct.CallInfo*, %struct.CallInfo** %42, align 8, !dbg !1055, !tbaa !418
  %44 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %43, i64 0, i32 1, !dbg !1055
  %45 = bitcast %struct.lua_TValue** %44 to %struct.CClosure***, !dbg !1055
  %46 = load %struct.CClosure**, %struct.CClosure*** %45, align 8, !dbg !1055, !tbaa !600
  %47 = load %struct.CClosure*, %struct.CClosure** %46, align 8, !dbg !1055, !tbaa !510
  %48 = sub nsw i32 -10002, %1, !dbg !1057
  %49 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 4, !dbg !1058
  %50 = load i8, i8* %49, align 1, !dbg !1058, !tbaa !510
  %51 = zext i8 %50 to i32, !dbg !1059
  %52 = icmp sgt i32 %48, %51, !dbg !1060
  br i1 %52, label %57, label %53, !dbg !1061

; <label>:53:                                     ; preds = %41
  %54 = add nsw i32 %48, -1, !dbg !1062
  %55 = sext i32 %54 to i64, !dbg !1063
  %56 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 8, i64 %55, !dbg !1063
  br label %57, !dbg !1061

; <label>:57:                                     ; preds = %4, %16, %22, %26, %39, %41, %53
  %58 = phi %struct.lua_TValue* [ %13, %4 ], [ %20, %16 ], [ %40, %39 ], [ %33, %26 ], [ %25, %22 ], [ %56, %53 ], [ @luaO_nilobject_, %41 ], !dbg !1064
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1065
  %59 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i64 0, i32 1, !dbg !1067
  %60 = load i32, i32* %59, align 8, !dbg !1067, !tbaa !382
  %61 = icmp eq i32 %60, 7, !dbg !1067
  %62 = icmp eq i32 %60, 2, !dbg !1068
  %63 = or i1 %61, %62, !dbg !1069
  %64 = zext i1 %63 to i32, !dbg !1069
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1070
  ret i32 %64, !dbg !1070
}

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_rawequal(%struct.lua_State*, i32, i32) local_unnamed_addr #0 !dbg !1071 {
  %4 = icmp sgt i32 %1, 0, !dbg !1086
  br i1 %4, label %5, label %15, !dbg !1087

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !1088
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8, !dbg !1088, !tbaa !401
  %8 = add nsw i32 %1, -1, !dbg !1089
  %9 = sext i32 %8 to i64, !dbg !1090
  %10 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %7, i64 %9, !dbg !1090
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1092
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %11, align 8, !dbg !1092, !tbaa !373
  %13 = icmp ult %struct.lua_TValue* %10, %12, !dbg !1093
  %14 = select i1 %13, %struct.lua_TValue* %10, %struct.lua_TValue* @luaO_nilobject_, !dbg !1094
  br label %58

; <label>:15:                                     ; preds = %3
  %16 = icmp sgt i32 %1, -10000, !dbg !1095
  br i1 %16, label %17, label %22, !dbg !1096

; <label>:17:                                     ; preds = %15
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1097
  %19 = load %struct.lua_TValue*, %struct.lua_TValue** %18, align 8, !dbg !1097, !tbaa !373
  %20 = sext i32 %1 to i64, !dbg !1098
  %21 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %19, i64 %20, !dbg !1098
  br label %58, !dbg !1099

; <label>:22:                                     ; preds = %15
  switch i32 %1, label %42 [
    i32 -10000, label %23
    i32 -10001, label %27
    i32 -10002, label %40
  ], !dbg !1100

; <label>:23:                                     ; preds = %22
  %24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1101
  %25 = load %struct.global_State*, %struct.global_State** %24, align 8, !dbg !1101, !tbaa !482
  %26 = getelementptr inbounds %struct.global_State, %struct.global_State* %25, i64 0, i32 20, !dbg !1101
  br label %58, !dbg !1102

; <label>:27:                                     ; preds = %22
  %28 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1103
  %29 = load %struct.CallInfo*, %struct.CallInfo** %28, align 8, !dbg !1103, !tbaa !418
  %30 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %29, i64 0, i32 1, !dbg !1103
  %31 = bitcast %struct.lua_TValue** %30 to %struct.CClosure***, !dbg !1103
  %32 = load %struct.CClosure**, %struct.CClosure*** %31, align 8, !dbg !1103, !tbaa !600
  %33 = load %struct.CClosure*, %struct.CClosure** %32, align 8, !dbg !1103, !tbaa !510
  %34 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !1105
  %35 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %33, i64 0, i32 6, !dbg !1105
  %36 = bitcast %struct.Table** %35 to i64*, !dbg !1105
  %37 = load i64, i64* %36, align 8, !dbg !1105, !tbaa !510
  %38 = bitcast %struct.lua_TValue* %34 to i64*, !dbg !1105
  store i64 %37, i64* %38, align 8, !dbg !1105, !tbaa !510
  %39 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !1105
  store i32 5, i32* %39, align 8, !dbg !1105, !tbaa !382
  br label %58

; <label>:40:                                     ; preds = %22
  %41 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !1106
  br label %58, !dbg !1107

; <label>:42:                                     ; preds = %22
  %43 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1108
  %44 = load %struct.CallInfo*, %struct.CallInfo** %43, align 8, !dbg !1108, !tbaa !418
  %45 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %44, i64 0, i32 1, !dbg !1108
  %46 = bitcast %struct.lua_TValue** %45 to %struct.CClosure***, !dbg !1108
  %47 = load %struct.CClosure**, %struct.CClosure*** %46, align 8, !dbg !1108, !tbaa !600
  %48 = load %struct.CClosure*, %struct.CClosure** %47, align 8, !dbg !1108, !tbaa !510
  %49 = sub nsw i32 -10002, %1, !dbg !1110
  %50 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %48, i64 0, i32 4, !dbg !1111
  %51 = load i8, i8* %50, align 1, !dbg !1111, !tbaa !510
  %52 = zext i8 %51 to i32, !dbg !1112
  %53 = icmp sgt i32 %49, %52, !dbg !1113
  br i1 %53, label %58, label %54, !dbg !1114

; <label>:54:                                     ; preds = %42
  %55 = add nsw i32 %49, -1, !dbg !1115
  %56 = sext i32 %55 to i64, !dbg !1116
  %57 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %48, i64 0, i32 8, i64 %56, !dbg !1116
  br label %58, !dbg !1114

; <label>:58:                                     ; preds = %5, %17, %23, %27, %40, %42, %54
  %59 = phi %struct.lua_TValue* [ %14, %5 ], [ %21, %17 ], [ %41, %40 ], [ %34, %27 ], [ %26, %23 ], [ %57, %54 ], [ @luaO_nilobject_, %42 ], !dbg !1117
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1118
  %60 = icmp sgt i32 %2, 0, !dbg !1123
  br i1 %60, label %61, label %71, !dbg !1124

; <label>:61:                                     ; preds = %58
  %62 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !1125
  %63 = load %struct.lua_TValue*, %struct.lua_TValue** %62, align 8, !dbg !1125, !tbaa !401
  %64 = add nsw i32 %2, -1, !dbg !1126
  %65 = sext i32 %64 to i64, !dbg !1127
  %66 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %63, i64 %65, !dbg !1127
  %67 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1129
  %68 = load %struct.lua_TValue*, %struct.lua_TValue** %67, align 8, !dbg !1129, !tbaa !373
  %69 = icmp ult %struct.lua_TValue* %66, %68, !dbg !1130
  %70 = select i1 %69, %struct.lua_TValue* %66, %struct.lua_TValue* @luaO_nilobject_, !dbg !1131
  br label %115

; <label>:71:                                     ; preds = %58
  %72 = icmp sgt i32 %2, -10000, !dbg !1132
  br i1 %72, label %73, label %78, !dbg !1133

; <label>:73:                                     ; preds = %71
  %74 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1134
  %75 = load %struct.lua_TValue*, %struct.lua_TValue** %74, align 8, !dbg !1134, !tbaa !373
  %76 = sext i32 %2 to i64, !dbg !1135
  %77 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %75, i64 %76, !dbg !1135
  br label %115, !dbg !1136

; <label>:78:                                     ; preds = %71
  switch i32 %2, label %98 [
    i32 -10000, label %79
    i32 -10001, label %83
    i32 -10002, label %96
  ], !dbg !1137

; <label>:79:                                     ; preds = %78
  %80 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1138
  %81 = load %struct.global_State*, %struct.global_State** %80, align 8, !dbg !1138, !tbaa !482
  %82 = getelementptr inbounds %struct.global_State, %struct.global_State* %81, i64 0, i32 20, !dbg !1138
  br label %115, !dbg !1139

; <label>:83:                                     ; preds = %78
  %84 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1140
  %85 = load %struct.CallInfo*, %struct.CallInfo** %84, align 8, !dbg !1140, !tbaa !418
  %86 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %85, i64 0, i32 1, !dbg !1140
  %87 = bitcast %struct.lua_TValue** %86 to %struct.CClosure***, !dbg !1140
  %88 = load %struct.CClosure**, %struct.CClosure*** %87, align 8, !dbg !1140, !tbaa !600
  %89 = load %struct.CClosure*, %struct.CClosure** %88, align 8, !dbg !1140, !tbaa !510
  %90 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !1142
  %91 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %89, i64 0, i32 6, !dbg !1142
  %92 = bitcast %struct.Table** %91 to i64*, !dbg !1142
  %93 = load i64, i64* %92, align 8, !dbg !1142, !tbaa !510
  %94 = bitcast %struct.lua_TValue* %90 to i64*, !dbg !1142
  store i64 %93, i64* %94, align 8, !dbg !1142, !tbaa !510
  %95 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !1142
  store i32 5, i32* %95, align 8, !dbg !1142, !tbaa !382
  br label %115

; <label>:96:                                     ; preds = %78
  %97 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !1143
  br label %115, !dbg !1144

; <label>:98:                                     ; preds = %78
  %99 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1145
  %100 = load %struct.CallInfo*, %struct.CallInfo** %99, align 8, !dbg !1145, !tbaa !418
  %101 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %100, i64 0, i32 1, !dbg !1145
  %102 = bitcast %struct.lua_TValue** %101 to %struct.CClosure***, !dbg !1145
  %103 = load %struct.CClosure**, %struct.CClosure*** %102, align 8, !dbg !1145, !tbaa !600
  %104 = load %struct.CClosure*, %struct.CClosure** %103, align 8, !dbg !1145, !tbaa !510
  %105 = sub nsw i32 -10002, %2, !dbg !1147
  %106 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %104, i64 0, i32 4, !dbg !1148
  %107 = load i8, i8* %106, align 1, !dbg !1148, !tbaa !510
  %108 = zext i8 %107 to i32, !dbg !1149
  %109 = icmp sgt i32 %105, %108, !dbg !1150
  br i1 %109, label %110, label %111, !dbg !1151

; <label>:110:                                    ; preds = %98
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1152
  br label %122, !dbg !1154

; <label>:111:                                    ; preds = %98
  %112 = add nsw i32 %105, -1, !dbg !1155
  %113 = sext i32 %112 to i64, !dbg !1156
  %114 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %104, i64 0, i32 8, i64 %113, !dbg !1156
  br label %115, !dbg !1151

; <label>:115:                                    ; preds = %61, %73, %79, %83, %96, %111
  %116 = phi %struct.lua_TValue* [ %70, %61 ], [ %77, %73 ], [ %97, %96 ], [ %90, %83 ], [ %82, %79 ], [ %114, %111 ], !dbg !1157
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1152
  %117 = icmp eq %struct.lua_TValue* %59, @luaO_nilobject_, !dbg !1158
  %118 = icmp eq %struct.lua_TValue* %116, @luaO_nilobject_, !dbg !1159
  %119 = or i1 %117, %118, !dbg !1154
  br i1 %119, label %122, label %120, !dbg !1154

; <label>:120:                                    ; preds = %115
  %121 = tail call i32 @luaO_rawequalObj(%struct.lua_TValue* %59, %struct.lua_TValue* %116) #5, !dbg !1160
  br label %122, !dbg !1161

; <label>:122:                                    ; preds = %110, %115, %120
  %123 = phi i32 [ %121, %120 ], [ 0, %115 ], [ 0, %110 ], !dbg !1161
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1162
  ret i32 %123, !dbg !1162
}

; Function Attrs: noredzone
declare hidden i32 @luaO_rawequalObj(%struct.lua_TValue*, %struct.lua_TValue*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_equal(%struct.lua_State*, i32, i32) local_unnamed_addr #0 !dbg !1163 {
  %4 = icmp sgt i32 %1, 0, !dbg !1177
  br i1 %4, label %5, label %15, !dbg !1178

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !1179
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8, !dbg !1179, !tbaa !401
  %8 = add nsw i32 %1, -1, !dbg !1180
  %9 = sext i32 %8 to i64, !dbg !1181
  %10 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %7, i64 %9, !dbg !1181
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1183
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %11, align 8, !dbg !1183, !tbaa !373
  %13 = icmp ult %struct.lua_TValue* %10, %12, !dbg !1184
  %14 = select i1 %13, %struct.lua_TValue* %10, %struct.lua_TValue* @luaO_nilobject_, !dbg !1185
  br label %58

; <label>:15:                                     ; preds = %3
  %16 = icmp sgt i32 %1, -10000, !dbg !1186
  br i1 %16, label %17, label %22, !dbg !1187

; <label>:17:                                     ; preds = %15
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1188
  %19 = load %struct.lua_TValue*, %struct.lua_TValue** %18, align 8, !dbg !1188, !tbaa !373
  %20 = sext i32 %1 to i64, !dbg !1189
  %21 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %19, i64 %20, !dbg !1189
  br label %58, !dbg !1190

; <label>:22:                                     ; preds = %15
  switch i32 %1, label %42 [
    i32 -10000, label %23
    i32 -10001, label %27
    i32 -10002, label %40
  ], !dbg !1191

; <label>:23:                                     ; preds = %22
  %24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1192
  %25 = load %struct.global_State*, %struct.global_State** %24, align 8, !dbg !1192, !tbaa !482
  %26 = getelementptr inbounds %struct.global_State, %struct.global_State* %25, i64 0, i32 20, !dbg !1192
  br label %58, !dbg !1193

; <label>:27:                                     ; preds = %22
  %28 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1194
  %29 = load %struct.CallInfo*, %struct.CallInfo** %28, align 8, !dbg !1194, !tbaa !418
  %30 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %29, i64 0, i32 1, !dbg !1194
  %31 = bitcast %struct.lua_TValue** %30 to %struct.CClosure***, !dbg !1194
  %32 = load %struct.CClosure**, %struct.CClosure*** %31, align 8, !dbg !1194, !tbaa !600
  %33 = load %struct.CClosure*, %struct.CClosure** %32, align 8, !dbg !1194, !tbaa !510
  %34 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !1196
  %35 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %33, i64 0, i32 6, !dbg !1196
  %36 = bitcast %struct.Table** %35 to i64*, !dbg !1196
  %37 = load i64, i64* %36, align 8, !dbg !1196, !tbaa !510
  %38 = bitcast %struct.lua_TValue* %34 to i64*, !dbg !1196
  store i64 %37, i64* %38, align 8, !dbg !1196, !tbaa !510
  %39 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !1196
  store i32 5, i32* %39, align 8, !dbg !1196, !tbaa !382
  br label %58

; <label>:40:                                     ; preds = %22
  %41 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !1197
  br label %58, !dbg !1198

; <label>:42:                                     ; preds = %22
  %43 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1199
  %44 = load %struct.CallInfo*, %struct.CallInfo** %43, align 8, !dbg !1199, !tbaa !418
  %45 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %44, i64 0, i32 1, !dbg !1199
  %46 = bitcast %struct.lua_TValue** %45 to %struct.CClosure***, !dbg !1199
  %47 = load %struct.CClosure**, %struct.CClosure*** %46, align 8, !dbg !1199, !tbaa !600
  %48 = load %struct.CClosure*, %struct.CClosure** %47, align 8, !dbg !1199, !tbaa !510
  %49 = sub nsw i32 -10002, %1, !dbg !1201
  %50 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %48, i64 0, i32 4, !dbg !1202
  %51 = load i8, i8* %50, align 1, !dbg !1202, !tbaa !510
  %52 = zext i8 %51 to i32, !dbg !1203
  %53 = icmp sgt i32 %49, %52, !dbg !1204
  br i1 %53, label %58, label %54, !dbg !1205

; <label>:54:                                     ; preds = %42
  %55 = add nsw i32 %49, -1, !dbg !1206
  %56 = sext i32 %55 to i64, !dbg !1207
  %57 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %48, i64 0, i32 8, i64 %56, !dbg !1207
  br label %58, !dbg !1205

; <label>:58:                                     ; preds = %5, %17, %23, %27, %40, %42, %54
  %59 = phi %struct.lua_TValue* [ %14, %5 ], [ %21, %17 ], [ %41, %40 ], [ %34, %27 ], [ %26, %23 ], [ %57, %54 ], [ @luaO_nilobject_, %42 ], !dbg !1208
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1209
  %60 = icmp sgt i32 %2, 0, !dbg !1214
  br i1 %60, label %61, label %71, !dbg !1215

; <label>:61:                                     ; preds = %58
  %62 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !1216
  %63 = load %struct.lua_TValue*, %struct.lua_TValue** %62, align 8, !dbg !1216, !tbaa !401
  %64 = add nsw i32 %2, -1, !dbg !1217
  %65 = sext i32 %64 to i64, !dbg !1218
  %66 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %63, i64 %65, !dbg !1218
  %67 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1220
  %68 = load %struct.lua_TValue*, %struct.lua_TValue** %67, align 8, !dbg !1220, !tbaa !373
  %69 = icmp ult %struct.lua_TValue* %66, %68, !dbg !1221
  %70 = select i1 %69, %struct.lua_TValue* %66, %struct.lua_TValue* @luaO_nilobject_, !dbg !1222
  br label %115

; <label>:71:                                     ; preds = %58
  %72 = icmp sgt i32 %2, -10000, !dbg !1223
  br i1 %72, label %73, label %78, !dbg !1224

; <label>:73:                                     ; preds = %71
  %74 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1225
  %75 = load %struct.lua_TValue*, %struct.lua_TValue** %74, align 8, !dbg !1225, !tbaa !373
  %76 = sext i32 %2 to i64, !dbg !1226
  %77 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %75, i64 %76, !dbg !1226
  br label %115, !dbg !1227

; <label>:78:                                     ; preds = %71
  switch i32 %2, label %98 [
    i32 -10000, label %79
    i32 -10001, label %83
    i32 -10002, label %96
  ], !dbg !1228

; <label>:79:                                     ; preds = %78
  %80 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1229
  %81 = load %struct.global_State*, %struct.global_State** %80, align 8, !dbg !1229, !tbaa !482
  %82 = getelementptr inbounds %struct.global_State, %struct.global_State* %81, i64 0, i32 20, !dbg !1229
  br label %115, !dbg !1230

; <label>:83:                                     ; preds = %78
  %84 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1231
  %85 = load %struct.CallInfo*, %struct.CallInfo** %84, align 8, !dbg !1231, !tbaa !418
  %86 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %85, i64 0, i32 1, !dbg !1231
  %87 = bitcast %struct.lua_TValue** %86 to %struct.CClosure***, !dbg !1231
  %88 = load %struct.CClosure**, %struct.CClosure*** %87, align 8, !dbg !1231, !tbaa !600
  %89 = load %struct.CClosure*, %struct.CClosure** %88, align 8, !dbg !1231, !tbaa !510
  %90 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !1233
  %91 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %89, i64 0, i32 6, !dbg !1233
  %92 = bitcast %struct.Table** %91 to i64*, !dbg !1233
  %93 = load i64, i64* %92, align 8, !dbg !1233, !tbaa !510
  %94 = bitcast %struct.lua_TValue* %90 to i64*, !dbg !1233
  store i64 %93, i64* %94, align 8, !dbg !1233, !tbaa !510
  %95 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !1233
  store i32 5, i32* %95, align 8, !dbg !1233, !tbaa !382
  br label %115

; <label>:96:                                     ; preds = %78
  %97 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !1234
  br label %115, !dbg !1235

; <label>:98:                                     ; preds = %78
  %99 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1236
  %100 = load %struct.CallInfo*, %struct.CallInfo** %99, align 8, !dbg !1236, !tbaa !418
  %101 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %100, i64 0, i32 1, !dbg !1236
  %102 = bitcast %struct.lua_TValue** %101 to %struct.CClosure***, !dbg !1236
  %103 = load %struct.CClosure**, %struct.CClosure*** %102, align 8, !dbg !1236, !tbaa !600
  %104 = load %struct.CClosure*, %struct.CClosure** %103, align 8, !dbg !1236, !tbaa !510
  %105 = sub nsw i32 -10002, %2, !dbg !1238
  %106 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %104, i64 0, i32 4, !dbg !1239
  %107 = load i8, i8* %106, align 1, !dbg !1239, !tbaa !510
  %108 = zext i8 %107 to i32, !dbg !1240
  %109 = icmp sgt i32 %105, %108, !dbg !1241
  br i1 %109, label %110, label %111, !dbg !1242

; <label>:110:                                    ; preds = %98
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1243
  br label %130, !dbg !1245

; <label>:111:                                    ; preds = %98
  %112 = add nsw i32 %105, -1, !dbg !1246
  %113 = sext i32 %112 to i64, !dbg !1247
  %114 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %104, i64 0, i32 8, i64 %113, !dbg !1247
  br label %115, !dbg !1242

; <label>:115:                                    ; preds = %61, %73, %79, %83, %96, %111
  %116 = phi %struct.lua_TValue* [ %70, %61 ], [ %77, %73 ], [ %97, %96 ], [ %90, %83 ], [ %82, %79 ], [ %114, %111 ], !dbg !1248
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1243
  %117 = icmp eq %struct.lua_TValue* %59, @luaO_nilobject_, !dbg !1249
  %118 = icmp eq %struct.lua_TValue* %116, @luaO_nilobject_, !dbg !1250
  %119 = or i1 %117, %118, !dbg !1245
  br i1 %119, label %130, label %120, !dbg !1245

; <label>:120:                                    ; preds = %115
  %121 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %59, i64 0, i32 1, !dbg !1251
  %122 = load i32, i32* %121, align 8, !dbg !1251, !tbaa !382
  %123 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %116, i64 0, i32 1, !dbg !1251
  %124 = load i32, i32* %123, align 8, !dbg !1251, !tbaa !382
  %125 = icmp eq i32 %122, %124, !dbg !1251
  br i1 %125, label %126, label %130, !dbg !1251

; <label>:126:                                    ; preds = %120
  %127 = tail call i32 @luaV_equalval(%struct.lua_State* %0, %struct.lua_TValue* %59, %struct.lua_TValue* %116) #5, !dbg !1251
  %128 = icmp ne i32 %127, 0, !dbg !1251
  %129 = zext i1 %128 to i32
  br label %130

; <label>:130:                                    ; preds = %110, %120, %126, %115
  %131 = phi i32 [ 0, %115 ], [ 0, %120 ], [ %129, %126 ], [ 0, %110 ], !dbg !1252
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1254
  ret i32 %131, !dbg !1254
}

; Function Attrs: noredzone
declare hidden i32 @luaV_equalval(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_lessthan(%struct.lua_State*, i32, i32) local_unnamed_addr #0 !dbg !1255 {
  %4 = icmp sgt i32 %1, 0, !dbg !1269
  br i1 %4, label %5, label %15, !dbg !1270

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !1271
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8, !dbg !1271, !tbaa !401
  %8 = add nsw i32 %1, -1, !dbg !1272
  %9 = sext i32 %8 to i64, !dbg !1273
  %10 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %7, i64 %9, !dbg !1273
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1275
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %11, align 8, !dbg !1275, !tbaa !373
  %13 = icmp ult %struct.lua_TValue* %10, %12, !dbg !1276
  %14 = select i1 %13, %struct.lua_TValue* %10, %struct.lua_TValue* @luaO_nilobject_, !dbg !1277
  br label %58

; <label>:15:                                     ; preds = %3
  %16 = icmp sgt i32 %1, -10000, !dbg !1278
  br i1 %16, label %17, label %22, !dbg !1279

; <label>:17:                                     ; preds = %15
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1280
  %19 = load %struct.lua_TValue*, %struct.lua_TValue** %18, align 8, !dbg !1280, !tbaa !373
  %20 = sext i32 %1 to i64, !dbg !1281
  %21 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %19, i64 %20, !dbg !1281
  br label %58, !dbg !1282

; <label>:22:                                     ; preds = %15
  switch i32 %1, label %42 [
    i32 -10000, label %23
    i32 -10001, label %27
    i32 -10002, label %40
  ], !dbg !1283

; <label>:23:                                     ; preds = %22
  %24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1284
  %25 = load %struct.global_State*, %struct.global_State** %24, align 8, !dbg !1284, !tbaa !482
  %26 = getelementptr inbounds %struct.global_State, %struct.global_State* %25, i64 0, i32 20, !dbg !1284
  br label %58, !dbg !1285

; <label>:27:                                     ; preds = %22
  %28 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1286
  %29 = load %struct.CallInfo*, %struct.CallInfo** %28, align 8, !dbg !1286, !tbaa !418
  %30 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %29, i64 0, i32 1, !dbg !1286
  %31 = bitcast %struct.lua_TValue** %30 to %struct.CClosure***, !dbg !1286
  %32 = load %struct.CClosure**, %struct.CClosure*** %31, align 8, !dbg !1286, !tbaa !600
  %33 = load %struct.CClosure*, %struct.CClosure** %32, align 8, !dbg !1286, !tbaa !510
  %34 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !1288
  %35 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %33, i64 0, i32 6, !dbg !1288
  %36 = bitcast %struct.Table** %35 to i64*, !dbg !1288
  %37 = load i64, i64* %36, align 8, !dbg !1288, !tbaa !510
  %38 = bitcast %struct.lua_TValue* %34 to i64*, !dbg !1288
  store i64 %37, i64* %38, align 8, !dbg !1288, !tbaa !510
  %39 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !1288
  store i32 5, i32* %39, align 8, !dbg !1288, !tbaa !382
  br label %58

; <label>:40:                                     ; preds = %22
  %41 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !1289
  br label %58, !dbg !1290

; <label>:42:                                     ; preds = %22
  %43 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1291
  %44 = load %struct.CallInfo*, %struct.CallInfo** %43, align 8, !dbg !1291, !tbaa !418
  %45 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %44, i64 0, i32 1, !dbg !1291
  %46 = bitcast %struct.lua_TValue** %45 to %struct.CClosure***, !dbg !1291
  %47 = load %struct.CClosure**, %struct.CClosure*** %46, align 8, !dbg !1291, !tbaa !600
  %48 = load %struct.CClosure*, %struct.CClosure** %47, align 8, !dbg !1291, !tbaa !510
  %49 = sub nsw i32 -10002, %1, !dbg !1293
  %50 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %48, i64 0, i32 4, !dbg !1294
  %51 = load i8, i8* %50, align 1, !dbg !1294, !tbaa !510
  %52 = zext i8 %51 to i32, !dbg !1295
  %53 = icmp sgt i32 %49, %52, !dbg !1296
  br i1 %53, label %58, label %54, !dbg !1297

; <label>:54:                                     ; preds = %42
  %55 = add nsw i32 %49, -1, !dbg !1298
  %56 = sext i32 %55 to i64, !dbg !1299
  %57 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %48, i64 0, i32 8, i64 %56, !dbg !1299
  br label %58, !dbg !1297

; <label>:58:                                     ; preds = %5, %17, %23, %27, %40, %42, %54
  %59 = phi %struct.lua_TValue* [ %14, %5 ], [ %21, %17 ], [ %41, %40 ], [ %34, %27 ], [ %26, %23 ], [ %57, %54 ], [ @luaO_nilobject_, %42 ], !dbg !1300
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1301
  %60 = icmp sgt i32 %2, 0, !dbg !1306
  br i1 %60, label %61, label %71, !dbg !1307

; <label>:61:                                     ; preds = %58
  %62 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !1308
  %63 = load %struct.lua_TValue*, %struct.lua_TValue** %62, align 8, !dbg !1308, !tbaa !401
  %64 = add nsw i32 %2, -1, !dbg !1309
  %65 = sext i32 %64 to i64, !dbg !1310
  %66 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %63, i64 %65, !dbg !1310
  %67 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1312
  %68 = load %struct.lua_TValue*, %struct.lua_TValue** %67, align 8, !dbg !1312, !tbaa !373
  %69 = icmp ult %struct.lua_TValue* %66, %68, !dbg !1313
  %70 = select i1 %69, %struct.lua_TValue* %66, %struct.lua_TValue* @luaO_nilobject_, !dbg !1314
  br label %115

; <label>:71:                                     ; preds = %58
  %72 = icmp sgt i32 %2, -10000, !dbg !1315
  br i1 %72, label %73, label %78, !dbg !1316

; <label>:73:                                     ; preds = %71
  %74 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1317
  %75 = load %struct.lua_TValue*, %struct.lua_TValue** %74, align 8, !dbg !1317, !tbaa !373
  %76 = sext i32 %2 to i64, !dbg !1318
  %77 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %75, i64 %76, !dbg !1318
  br label %115, !dbg !1319

; <label>:78:                                     ; preds = %71
  switch i32 %2, label %98 [
    i32 -10000, label %79
    i32 -10001, label %83
    i32 -10002, label %96
  ], !dbg !1320

; <label>:79:                                     ; preds = %78
  %80 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1321
  %81 = load %struct.global_State*, %struct.global_State** %80, align 8, !dbg !1321, !tbaa !482
  %82 = getelementptr inbounds %struct.global_State, %struct.global_State* %81, i64 0, i32 20, !dbg !1321
  br label %115, !dbg !1322

; <label>:83:                                     ; preds = %78
  %84 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1323
  %85 = load %struct.CallInfo*, %struct.CallInfo** %84, align 8, !dbg !1323, !tbaa !418
  %86 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %85, i64 0, i32 1, !dbg !1323
  %87 = bitcast %struct.lua_TValue** %86 to %struct.CClosure***, !dbg !1323
  %88 = load %struct.CClosure**, %struct.CClosure*** %87, align 8, !dbg !1323, !tbaa !600
  %89 = load %struct.CClosure*, %struct.CClosure** %88, align 8, !dbg !1323, !tbaa !510
  %90 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !1325
  %91 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %89, i64 0, i32 6, !dbg !1325
  %92 = bitcast %struct.Table** %91 to i64*, !dbg !1325
  %93 = load i64, i64* %92, align 8, !dbg !1325, !tbaa !510
  %94 = bitcast %struct.lua_TValue* %90 to i64*, !dbg !1325
  store i64 %93, i64* %94, align 8, !dbg !1325, !tbaa !510
  %95 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !1325
  store i32 5, i32* %95, align 8, !dbg !1325, !tbaa !382
  br label %115

; <label>:96:                                     ; preds = %78
  %97 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !1326
  br label %115, !dbg !1327

; <label>:98:                                     ; preds = %78
  %99 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1328
  %100 = load %struct.CallInfo*, %struct.CallInfo** %99, align 8, !dbg !1328, !tbaa !418
  %101 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %100, i64 0, i32 1, !dbg !1328
  %102 = bitcast %struct.lua_TValue** %101 to %struct.CClosure***, !dbg !1328
  %103 = load %struct.CClosure**, %struct.CClosure*** %102, align 8, !dbg !1328, !tbaa !600
  %104 = load %struct.CClosure*, %struct.CClosure** %103, align 8, !dbg !1328, !tbaa !510
  %105 = sub nsw i32 -10002, %2, !dbg !1330
  %106 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %104, i64 0, i32 4, !dbg !1331
  %107 = load i8, i8* %106, align 1, !dbg !1331, !tbaa !510
  %108 = zext i8 %107 to i32, !dbg !1332
  %109 = icmp sgt i32 %105, %108, !dbg !1333
  br i1 %109, label %110, label %111, !dbg !1334

; <label>:110:                                    ; preds = %98
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1335
  br label %122, !dbg !1337

; <label>:111:                                    ; preds = %98
  %112 = add nsw i32 %105, -1, !dbg !1338
  %113 = sext i32 %112 to i64, !dbg !1339
  %114 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %104, i64 0, i32 8, i64 %113, !dbg !1339
  br label %115, !dbg !1334

; <label>:115:                                    ; preds = %61, %73, %79, %83, %96, %111
  %116 = phi %struct.lua_TValue* [ %70, %61 ], [ %77, %73 ], [ %97, %96 ], [ %90, %83 ], [ %82, %79 ], [ %114, %111 ], !dbg !1340
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1335
  %117 = icmp eq %struct.lua_TValue* %59, @luaO_nilobject_, !dbg !1341
  %118 = icmp eq %struct.lua_TValue* %116, @luaO_nilobject_, !dbg !1342
  %119 = or i1 %117, %118, !dbg !1337
  br i1 %119, label %122, label %120, !dbg !1337

; <label>:120:                                    ; preds = %115
  %121 = tail call i32 @luaV_lessthan(%struct.lua_State* %0, %struct.lua_TValue* %59, %struct.lua_TValue* %116) #5, !dbg !1343
  br label %122, !dbg !1344

; <label>:122:                                    ; preds = %110, %115, %120
  %123 = phi i32 [ %121, %120 ], [ 0, %115 ], [ 0, %110 ], !dbg !1344
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1346
  ret i32 %123, !dbg !1346
}

; Function Attrs: noredzone
declare hidden i32 @luaV_lessthan(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local double @lua_tonumber(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !1347 {
  %3 = alloca %struct.lua_TValue, align 8
  %4 = bitcast %struct.lua_TValue* %3 to i8*, !dbg !1357
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #4, !dbg !1357
  %5 = icmp sgt i32 %1, 0, !dbg !1361
  br i1 %5, label %6, label %16, !dbg !1362

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !1363
  %8 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8, !dbg !1363, !tbaa !401
  %9 = add nsw i32 %1, -1, !dbg !1364
  %10 = sext i32 %9 to i64, !dbg !1365
  %11 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %8, i64 %10, !dbg !1365
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1367
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %12, align 8, !dbg !1367, !tbaa !373
  %14 = icmp ult %struct.lua_TValue* %11, %13, !dbg !1368
  %15 = select i1 %14, %struct.lua_TValue* %11, %struct.lua_TValue* @luaO_nilobject_, !dbg !1369
  br label %59

; <label>:16:                                     ; preds = %2
  %17 = icmp sgt i32 %1, -10000, !dbg !1370
  br i1 %17, label %18, label %23, !dbg !1371

; <label>:18:                                     ; preds = %16
  %19 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1372
  %20 = load %struct.lua_TValue*, %struct.lua_TValue** %19, align 8, !dbg !1372, !tbaa !373
  %21 = sext i32 %1 to i64, !dbg !1373
  %22 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %20, i64 %21, !dbg !1373
  br label %59, !dbg !1374

; <label>:23:                                     ; preds = %16
  switch i32 %1, label %43 [
    i32 -10000, label %24
    i32 -10001, label %28
    i32 -10002, label %41
  ], !dbg !1375

; <label>:24:                                     ; preds = %23
  %25 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1376
  %26 = load %struct.global_State*, %struct.global_State** %25, align 8, !dbg !1376, !tbaa !482
  %27 = getelementptr inbounds %struct.global_State, %struct.global_State* %26, i64 0, i32 20, !dbg !1376
  br label %59, !dbg !1377

; <label>:28:                                     ; preds = %23
  %29 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1378
  %30 = load %struct.CallInfo*, %struct.CallInfo** %29, align 8, !dbg !1378, !tbaa !418
  %31 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %30, i64 0, i32 1, !dbg !1378
  %32 = bitcast %struct.lua_TValue** %31 to %struct.CClosure***, !dbg !1378
  %33 = load %struct.CClosure**, %struct.CClosure*** %32, align 8, !dbg !1378, !tbaa !600
  %34 = load %struct.CClosure*, %struct.CClosure** %33, align 8, !dbg !1378, !tbaa !510
  %35 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !1380
  %36 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %34, i64 0, i32 6, !dbg !1380
  %37 = bitcast %struct.Table** %36 to i64*, !dbg !1380
  %38 = load i64, i64* %37, align 8, !dbg !1380, !tbaa !510
  %39 = bitcast %struct.lua_TValue* %35 to i64*, !dbg !1380
  store i64 %38, i64* %39, align 8, !dbg !1380, !tbaa !510
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !1380
  store i32 5, i32* %40, align 8, !dbg !1380, !tbaa !382
  br label %59

; <label>:41:                                     ; preds = %23
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !1381
  br label %59, !dbg !1382

; <label>:43:                                     ; preds = %23
  %44 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1383
  %45 = load %struct.CallInfo*, %struct.CallInfo** %44, align 8, !dbg !1383, !tbaa !418
  %46 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %45, i64 0, i32 1, !dbg !1383
  %47 = bitcast %struct.lua_TValue** %46 to %struct.CClosure***, !dbg !1383
  %48 = load %struct.CClosure**, %struct.CClosure*** %47, align 8, !dbg !1383, !tbaa !600
  %49 = load %struct.CClosure*, %struct.CClosure** %48, align 8, !dbg !1383, !tbaa !510
  %50 = sub nsw i32 -10002, %1, !dbg !1385
  %51 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %49, i64 0, i32 4, !dbg !1386
  %52 = load i8, i8* %51, align 1, !dbg !1386, !tbaa !510
  %53 = zext i8 %52 to i32, !dbg !1387
  %54 = icmp sgt i32 %50, %53, !dbg !1388
  br i1 %54, label %59, label %55, !dbg !1389

; <label>:55:                                     ; preds = %43
  %56 = add nsw i32 %50, -1, !dbg !1390
  %57 = sext i32 %56 to i64, !dbg !1391
  %58 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %49, i64 0, i32 8, i64 %57, !dbg !1391
  br label %59, !dbg !1389

; <label>:59:                                     ; preds = %6, %18, %24, %28, %41, %43, %55
  %60 = phi %struct.lua_TValue* [ %15, %6 ], [ %22, %18 ], [ %42, %41 ], [ %35, %28 ], [ %27, %24 ], [ %58, %55 ], [ @luaO_nilobject_, %43 ], !dbg !1392
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1393
  %61 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %60, i64 0, i32 1, !dbg !1395
  %62 = load i32, i32* %61, align 8, !dbg !1395, !tbaa !382
  %63 = icmp eq i32 %62, 3, !dbg !1395
  br i1 %63, label %67, label %64, !dbg !1395

; <label>:64:                                     ; preds = %59
  %65 = call %struct.lua_TValue* @luaV_tonumber(%struct.lua_TValue* %60, %struct.lua_TValue* nonnull %3) #5, !dbg !1395
  %66 = icmp eq %struct.lua_TValue* %65, null, !dbg !1395
  br i1 %66, label %71, label %67, !dbg !1398

; <label>:67:                                     ; preds = %64, %59
  %68 = phi %struct.lua_TValue* [ %60, %59 ], [ %65, %64 ], !dbg !1399
  %69 = bitcast %struct.lua_TValue* %68 to double*, !dbg !1400
  %70 = load double, double* %69, align 8, !dbg !1400, !tbaa !510
  br label %71, !dbg !1401

; <label>:71:                                     ; preds = %64, %67
  %72 = phi double [ %70, %67 ], [ 0.000000e+00, %64 ], !dbg !1399
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #4, !dbg !1402
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1402
  ret double %72, !dbg !1402
}

; Function Attrs: noredzone nounwind
define dso_local i64 @lua_tointeger(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !1403 {
  %3 = alloca %struct.lua_TValue, align 8
  %4 = bitcast %struct.lua_TValue* %3 to i8*, !dbg !1417
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #4, !dbg !1417
  %5 = icmp sgt i32 %1, 0, !dbg !1421
  br i1 %5, label %6, label %16, !dbg !1422

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !1423
  %8 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8, !dbg !1423, !tbaa !401
  %9 = add nsw i32 %1, -1, !dbg !1424
  %10 = sext i32 %9 to i64, !dbg !1425
  %11 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %8, i64 %10, !dbg !1425
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1427
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %12, align 8, !dbg !1427, !tbaa !373
  %14 = icmp ult %struct.lua_TValue* %11, %13, !dbg !1428
  %15 = select i1 %14, %struct.lua_TValue* %11, %struct.lua_TValue* @luaO_nilobject_, !dbg !1429
  br label %59

; <label>:16:                                     ; preds = %2
  %17 = icmp sgt i32 %1, -10000, !dbg !1430
  br i1 %17, label %18, label %23, !dbg !1431

; <label>:18:                                     ; preds = %16
  %19 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1432
  %20 = load %struct.lua_TValue*, %struct.lua_TValue** %19, align 8, !dbg !1432, !tbaa !373
  %21 = sext i32 %1 to i64, !dbg !1433
  %22 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %20, i64 %21, !dbg !1433
  br label %59, !dbg !1434

; <label>:23:                                     ; preds = %16
  switch i32 %1, label %43 [
    i32 -10000, label %24
    i32 -10001, label %28
    i32 -10002, label %41
  ], !dbg !1435

; <label>:24:                                     ; preds = %23
  %25 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1436
  %26 = load %struct.global_State*, %struct.global_State** %25, align 8, !dbg !1436, !tbaa !482
  %27 = getelementptr inbounds %struct.global_State, %struct.global_State* %26, i64 0, i32 20, !dbg !1436
  br label %59, !dbg !1437

; <label>:28:                                     ; preds = %23
  %29 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1438
  %30 = load %struct.CallInfo*, %struct.CallInfo** %29, align 8, !dbg !1438, !tbaa !418
  %31 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %30, i64 0, i32 1, !dbg !1438
  %32 = bitcast %struct.lua_TValue** %31 to %struct.CClosure***, !dbg !1438
  %33 = load %struct.CClosure**, %struct.CClosure*** %32, align 8, !dbg !1438, !tbaa !600
  %34 = load %struct.CClosure*, %struct.CClosure** %33, align 8, !dbg !1438, !tbaa !510
  %35 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !1440
  %36 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %34, i64 0, i32 6, !dbg !1440
  %37 = bitcast %struct.Table** %36 to i64*, !dbg !1440
  %38 = load i64, i64* %37, align 8, !dbg !1440, !tbaa !510
  %39 = bitcast %struct.lua_TValue* %35 to i64*, !dbg !1440
  store i64 %38, i64* %39, align 8, !dbg !1440, !tbaa !510
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !1440
  store i32 5, i32* %40, align 8, !dbg !1440, !tbaa !382
  br label %59

; <label>:41:                                     ; preds = %23
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !1441
  br label %59, !dbg !1442

; <label>:43:                                     ; preds = %23
  %44 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1443
  %45 = load %struct.CallInfo*, %struct.CallInfo** %44, align 8, !dbg !1443, !tbaa !418
  %46 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %45, i64 0, i32 1, !dbg !1443
  %47 = bitcast %struct.lua_TValue** %46 to %struct.CClosure***, !dbg !1443
  %48 = load %struct.CClosure**, %struct.CClosure*** %47, align 8, !dbg !1443, !tbaa !600
  %49 = load %struct.CClosure*, %struct.CClosure** %48, align 8, !dbg !1443, !tbaa !510
  %50 = sub nsw i32 -10002, %1, !dbg !1445
  %51 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %49, i64 0, i32 4, !dbg !1446
  %52 = load i8, i8* %51, align 1, !dbg !1446, !tbaa !510
  %53 = zext i8 %52 to i32, !dbg !1447
  %54 = icmp sgt i32 %50, %53, !dbg !1448
  br i1 %54, label %59, label %55, !dbg !1449

; <label>:55:                                     ; preds = %43
  %56 = add nsw i32 %50, -1, !dbg !1450
  %57 = sext i32 %56 to i64, !dbg !1451
  %58 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %49, i64 0, i32 8, i64 %57, !dbg !1451
  br label %59, !dbg !1449

; <label>:59:                                     ; preds = %6, %18, %24, %28, %41, %43, %55
  %60 = phi %struct.lua_TValue* [ %15, %6 ], [ %22, %18 ], [ %42, %41 ], [ %35, %28 ], [ %27, %24 ], [ %58, %55 ], [ @luaO_nilobject_, %43 ], !dbg !1452
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1453
  %61 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %60, i64 0, i32 1, !dbg !1455
  %62 = load i32, i32* %61, align 8, !dbg !1455, !tbaa !382
  %63 = icmp eq i32 %62, 3, !dbg !1455
  br i1 %63, label %67, label %64, !dbg !1455

; <label>:64:                                     ; preds = %59
  %65 = call %struct.lua_TValue* @luaV_tonumber(%struct.lua_TValue* %60, %struct.lua_TValue* nonnull %3) #5, !dbg !1455
  %66 = icmp eq %struct.lua_TValue* %65, null, !dbg !1455
  br i1 %66, label %72, label %67, !dbg !1457

; <label>:67:                                     ; preds = %64, %59
  %68 = phi %struct.lua_TValue* [ %60, %59 ], [ %65, %64 ], !dbg !1458
  %69 = bitcast %struct.lua_TValue* %68 to double*, !dbg !1459
  %70 = load double, double* %69, align 8, !dbg !1459, !tbaa !510
  %71 = fptosi double %70 to i64, !dbg !1461
  br label %72

; <label>:72:                                     ; preds = %64, %67
  %73 = phi i64 [ %71, %67 ], [ 0, %64 ], !dbg !1458
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #4, !dbg !1463
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1463
  ret i64 %73, !dbg !1463
}

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_toboolean(%struct.lua_State* nocapture, i32) local_unnamed_addr #0 !dbg !1464 {
  %3 = icmp sgt i32 %1, 0, !dbg !1474
  br i1 %3, label %4, label %14, !dbg !1475

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !1476
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8, !dbg !1476, !tbaa !401
  %7 = add nsw i32 %1, -1, !dbg !1477
  %8 = sext i32 %7 to i64, !dbg !1478
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 %8, !dbg !1478
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1480
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !1480, !tbaa !373
  %12 = icmp ult %struct.lua_TValue* %9, %11, !dbg !1481
  %13 = select i1 %12, %struct.lua_TValue* %9, %struct.lua_TValue* @luaO_nilobject_, !dbg !1482
  br label %57

; <label>:14:                                     ; preds = %2
  %15 = icmp sgt i32 %1, -10000, !dbg !1483
  br i1 %15, label %16, label %21, !dbg !1484

; <label>:16:                                     ; preds = %14
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1485
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %17, align 8, !dbg !1485, !tbaa !373
  %19 = sext i32 %1 to i64, !dbg !1486
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 %19, !dbg !1486
  br label %57, !dbg !1487

; <label>:21:                                     ; preds = %14
  switch i32 %1, label %41 [
    i32 -10000, label %22
    i32 -10001, label %26
    i32 -10002, label %39
  ], !dbg !1488

; <label>:22:                                     ; preds = %21
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1489
  %24 = load %struct.global_State*, %struct.global_State** %23, align 8, !dbg !1489, !tbaa !482
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %24, i64 0, i32 20, !dbg !1489
  br label %57, !dbg !1490

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1491
  %28 = load %struct.CallInfo*, %struct.CallInfo** %27, align 8, !dbg !1491, !tbaa !418
  %29 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %28, i64 0, i32 1, !dbg !1491
  %30 = bitcast %struct.lua_TValue** %29 to %struct.CClosure***, !dbg !1491
  %31 = load %struct.CClosure**, %struct.CClosure*** %30, align 8, !dbg !1491, !tbaa !600
  %32 = load %struct.CClosure*, %struct.CClosure** %31, align 8, !dbg !1491, !tbaa !510
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !1493
  %34 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %32, i64 0, i32 6, !dbg !1493
  %35 = bitcast %struct.Table** %34 to i64*, !dbg !1493
  %36 = load i64, i64* %35, align 8, !dbg !1493, !tbaa !510
  %37 = bitcast %struct.lua_TValue* %33 to i64*, !dbg !1493
  store i64 %36, i64* %37, align 8, !dbg !1493, !tbaa !510
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !1493
  store i32 5, i32* %38, align 8, !dbg !1493, !tbaa !382
  br label %57

; <label>:39:                                     ; preds = %21
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !1494
  br label %57, !dbg !1495

; <label>:41:                                     ; preds = %21
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1496
  %43 = load %struct.CallInfo*, %struct.CallInfo** %42, align 8, !dbg !1496, !tbaa !418
  %44 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %43, i64 0, i32 1, !dbg !1496
  %45 = bitcast %struct.lua_TValue** %44 to %struct.CClosure***, !dbg !1496
  %46 = load %struct.CClosure**, %struct.CClosure*** %45, align 8, !dbg !1496, !tbaa !600
  %47 = load %struct.CClosure*, %struct.CClosure** %46, align 8, !dbg !1496, !tbaa !510
  %48 = sub nsw i32 -10002, %1, !dbg !1498
  %49 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 4, !dbg !1499
  %50 = load i8, i8* %49, align 1, !dbg !1499, !tbaa !510
  %51 = zext i8 %50 to i32, !dbg !1500
  %52 = icmp sgt i32 %48, %51, !dbg !1501
  br i1 %52, label %57, label %53, !dbg !1502

; <label>:53:                                     ; preds = %41
  %54 = add nsw i32 %48, -1, !dbg !1503
  %55 = sext i32 %54 to i64, !dbg !1504
  %56 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 8, i64 %55, !dbg !1504
  br label %57, !dbg !1502

; <label>:57:                                     ; preds = %4, %16, %22, %26, %39, %41, %53
  %58 = phi %struct.lua_TValue* [ %13, %4 ], [ %20, %16 ], [ %40, %39 ], [ %33, %26 ], [ %25, %22 ], [ %56, %53 ], [ @luaO_nilobject_, %41 ], !dbg !1505
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1506
  %59 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i64 0, i32 1, !dbg !1508
  %60 = load i32, i32* %59, align 8, !dbg !1508, !tbaa !382
  switch i32 %60, label %66 [
    i32 0, label %67
    i32 1, label %61
  ], !dbg !1508

; <label>:61:                                     ; preds = %57
  %62 = bitcast %struct.lua_TValue* %58 to i32*, !dbg !1508
  %63 = load i32, i32* %62, align 8, !dbg !1508, !tbaa !510
  %64 = icmp ne i32 %63, 0, !dbg !1508
  %65 = zext i1 %64 to i32
  br label %67

; <label>:66:                                     ; preds = %57
  br label %67, !dbg !1509

; <label>:67:                                     ; preds = %57, %66, %61
  %68 = phi i32 [ %60, %57 ], [ %65, %61 ], [ 1, %66 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1509
  ret i32 %68, !dbg !1509
}

; Function Attrs: noredzone nounwind
define dso_local i8* @lua_tolstring(%struct.lua_State*, i32, i64*) local_unnamed_addr #0 !dbg !1510 {
  %4 = icmp sgt i32 %1, 0, !dbg !1525
  br i1 %4, label %5, label %15, !dbg !1526

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !1527
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8, !dbg !1527, !tbaa !401
  %8 = add nsw i32 %1, -1, !dbg !1528
  %9 = sext i32 %8 to i64, !dbg !1529
  %10 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %7, i64 %9, !dbg !1529
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1531
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %11, align 8, !dbg !1531, !tbaa !373
  %13 = icmp ult %struct.lua_TValue* %10, %12, !dbg !1532
  %14 = select i1 %13, %struct.lua_TValue* %10, %struct.lua_TValue* @luaO_nilobject_, !dbg !1533
  br label %58

; <label>:15:                                     ; preds = %3
  %16 = icmp sgt i32 %1, -10000, !dbg !1534
  br i1 %16, label %17, label %22, !dbg !1535

; <label>:17:                                     ; preds = %15
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1536
  %19 = load %struct.lua_TValue*, %struct.lua_TValue** %18, align 8, !dbg !1536, !tbaa !373
  %20 = sext i32 %1 to i64, !dbg !1537
  %21 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %19, i64 %20, !dbg !1537
  br label %58, !dbg !1538

; <label>:22:                                     ; preds = %15
  switch i32 %1, label %42 [
    i32 -10000, label %23
    i32 -10001, label %27
    i32 -10002, label %40
  ], !dbg !1539

; <label>:23:                                     ; preds = %22
  %24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1540
  %25 = load %struct.global_State*, %struct.global_State** %24, align 8, !dbg !1540, !tbaa !482
  %26 = getelementptr inbounds %struct.global_State, %struct.global_State* %25, i64 0, i32 20, !dbg !1540
  br label %58, !dbg !1541

; <label>:27:                                     ; preds = %22
  %28 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1542
  %29 = load %struct.CallInfo*, %struct.CallInfo** %28, align 8, !dbg !1542, !tbaa !418
  %30 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %29, i64 0, i32 1, !dbg !1542
  %31 = bitcast %struct.lua_TValue** %30 to %struct.CClosure***, !dbg !1542
  %32 = load %struct.CClosure**, %struct.CClosure*** %31, align 8, !dbg !1542, !tbaa !600
  %33 = load %struct.CClosure*, %struct.CClosure** %32, align 8, !dbg !1542, !tbaa !510
  %34 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !1544
  %35 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %33, i64 0, i32 6, !dbg !1544
  %36 = bitcast %struct.Table** %35 to i64*, !dbg !1544
  %37 = load i64, i64* %36, align 8, !dbg !1544, !tbaa !510
  %38 = bitcast %struct.lua_TValue* %34 to i64*, !dbg !1544
  store i64 %37, i64* %38, align 8, !dbg !1544, !tbaa !510
  %39 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !1544
  store i32 5, i32* %39, align 8, !dbg !1544, !tbaa !382
  br label %58

; <label>:40:                                     ; preds = %22
  %41 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !1545
  br label %58, !dbg !1546

; <label>:42:                                     ; preds = %22
  %43 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1547
  %44 = load %struct.CallInfo*, %struct.CallInfo** %43, align 8, !dbg !1547, !tbaa !418
  %45 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %44, i64 0, i32 1, !dbg !1547
  %46 = bitcast %struct.lua_TValue** %45 to %struct.CClosure***, !dbg !1547
  %47 = load %struct.CClosure**, %struct.CClosure*** %46, align 8, !dbg !1547, !tbaa !600
  %48 = load %struct.CClosure*, %struct.CClosure** %47, align 8, !dbg !1547, !tbaa !510
  %49 = sub nsw i32 -10002, %1, !dbg !1549
  %50 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %48, i64 0, i32 4, !dbg !1550
  %51 = load i8, i8* %50, align 1, !dbg !1550, !tbaa !510
  %52 = zext i8 %51 to i32, !dbg !1551
  %53 = icmp sgt i32 %49, %52, !dbg !1552
  br i1 %53, label %58, label %54, !dbg !1553

; <label>:54:                                     ; preds = %42
  %55 = add nsw i32 %49, -1, !dbg !1554
  %56 = sext i32 %55 to i64, !dbg !1555
  %57 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %48, i64 0, i32 8, i64 %56, !dbg !1555
  br label %58, !dbg !1553

; <label>:58:                                     ; preds = %5, %17, %23, %27, %40, %42, %54
  %59 = phi %struct.lua_TValue* [ %14, %5 ], [ %21, %17 ], [ %41, %40 ], [ %34, %27 ], [ %26, %23 ], [ %57, %54 ], [ @luaO_nilobject_, %42 ], !dbg !1556
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1557
  %60 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %59, i64 0, i32 1, !dbg !1559
  %61 = load i32, i32* %60, align 8, !dbg !1559, !tbaa !382
  %62 = icmp eq i32 %61, 4, !dbg !1559
  br i1 %62, label %133, label %63, !dbg !1561

; <label>:63:                                     ; preds = %58
  %64 = tail call i32 @luaV_tostring(%struct.lua_State* %0, %struct.lua_TValue* %59) #5, !dbg !1562
  %65 = icmp eq i32 %64, 0, !dbg !1562
  br i1 %65, label %66, label %69, !dbg !1565

; <label>:66:                                     ; preds = %63
  %67 = icmp eq i64* %2, null, !dbg !1566
  br i1 %67, label %146, label %68, !dbg !1569

; <label>:68:                                     ; preds = %66
  store i64 0, i64* %2, align 8, !dbg !1570, !tbaa !1571
  br label %146, !dbg !1572

; <label>:69:                                     ; preds = %63
  %70 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1573
  %71 = load %struct.global_State*, %struct.global_State** %70, align 8, !dbg !1573, !tbaa !482
  %72 = getelementptr inbounds %struct.global_State, %struct.global_State* %71, i64 0, i32 14, !dbg !1573
  %73 = load i64, i64* %72, align 8, !dbg !1573, !tbaa !504
  %74 = getelementptr inbounds %struct.global_State, %struct.global_State* %71, i64 0, i32 13, !dbg !1573
  %75 = load i64, i64* %74, align 8, !dbg !1573, !tbaa !505
  %76 = icmp ult i64 %73, %75, !dbg !1573
  br i1 %76, label %78, label %77, !dbg !1576

; <label>:77:                                     ; preds = %69
  tail call void @luaC_step(%struct.lua_State* nonnull %0) #5, !dbg !1573
  br label %78, !dbg !1573

; <label>:78:                                     ; preds = %69, %77
  br i1 %4, label %79, label %89, !dbg !1580

; <label>:79:                                     ; preds = %78
  %80 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !1581
  %81 = load %struct.lua_TValue*, %struct.lua_TValue** %80, align 8, !dbg !1581, !tbaa !401
  %82 = add nsw i32 %1, -1, !dbg !1582
  %83 = sext i32 %82 to i64, !dbg !1583
  %84 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %81, i64 %83, !dbg !1583
  %85 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1585
  %86 = load %struct.lua_TValue*, %struct.lua_TValue** %85, align 8, !dbg !1585, !tbaa !373
  %87 = icmp ult %struct.lua_TValue* %84, %86, !dbg !1586
  %88 = select i1 %87, %struct.lua_TValue* %84, %struct.lua_TValue* @luaO_nilobject_, !dbg !1587
  br label %131

; <label>:89:                                     ; preds = %78
  %90 = icmp sgt i32 %1, -10000, !dbg !1588
  br i1 %90, label %91, label %96, !dbg !1589

; <label>:91:                                     ; preds = %89
  %92 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1590
  %93 = load %struct.lua_TValue*, %struct.lua_TValue** %92, align 8, !dbg !1590, !tbaa !373
  %94 = sext i32 %1 to i64, !dbg !1591
  %95 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %93, i64 %94, !dbg !1591
  br label %131, !dbg !1592

; <label>:96:                                     ; preds = %89
  switch i32 %1, label %115 [
    i32 -10000, label %97
    i32 -10001, label %100
    i32 -10002, label %113
  ], !dbg !1593

; <label>:97:                                     ; preds = %96
  %98 = load %struct.global_State*, %struct.global_State** %70, align 8, !dbg !1594, !tbaa !482
  %99 = getelementptr inbounds %struct.global_State, %struct.global_State* %98, i64 0, i32 20, !dbg !1594
  br label %131, !dbg !1595

; <label>:100:                                    ; preds = %96
  %101 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1596
  %102 = load %struct.CallInfo*, %struct.CallInfo** %101, align 8, !dbg !1596, !tbaa !418
  %103 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %102, i64 0, i32 1, !dbg !1596
  %104 = bitcast %struct.lua_TValue** %103 to %struct.CClosure***, !dbg !1596
  %105 = load %struct.CClosure**, %struct.CClosure*** %104, align 8, !dbg !1596, !tbaa !600
  %106 = load %struct.CClosure*, %struct.CClosure** %105, align 8, !dbg !1596, !tbaa !510
  %107 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !1598
  %108 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %106, i64 0, i32 6, !dbg !1598
  %109 = bitcast %struct.Table** %108 to i64*, !dbg !1598
  %110 = load i64, i64* %109, align 8, !dbg !1598, !tbaa !510
  %111 = bitcast %struct.lua_TValue* %107 to i64*, !dbg !1598
  store i64 %110, i64* %111, align 8, !dbg !1598, !tbaa !510
  %112 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !1598
  store i32 5, i32* %112, align 8, !dbg !1598, !tbaa !382
  br label %131

; <label>:113:                                    ; preds = %96
  %114 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !1599
  br label %131, !dbg !1600

; <label>:115:                                    ; preds = %96
  %116 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1601
  %117 = load %struct.CallInfo*, %struct.CallInfo** %116, align 8, !dbg !1601, !tbaa !418
  %118 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %117, i64 0, i32 1, !dbg !1601
  %119 = bitcast %struct.lua_TValue** %118 to %struct.CClosure***, !dbg !1601
  %120 = load %struct.CClosure**, %struct.CClosure*** %119, align 8, !dbg !1601, !tbaa !600
  %121 = load %struct.CClosure*, %struct.CClosure** %120, align 8, !dbg !1601, !tbaa !510
  %122 = sub nsw i32 -10002, %1, !dbg !1603
  %123 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %121, i64 0, i32 4, !dbg !1604
  %124 = load i8, i8* %123, align 1, !dbg !1604, !tbaa !510
  %125 = zext i8 %124 to i32, !dbg !1605
  %126 = icmp sgt i32 %122, %125, !dbg !1606
  br i1 %126, label %131, label %127, !dbg !1607

; <label>:127:                                    ; preds = %115
  %128 = add nsw i32 %122, -1, !dbg !1608
  %129 = sext i32 %128 to i64, !dbg !1609
  %130 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %121, i64 0, i32 8, i64 %129, !dbg !1609
  br label %131, !dbg !1607

; <label>:131:                                    ; preds = %79, %91, %97, %100, %113, %115, %127
  %132 = phi %struct.lua_TValue* [ %88, %79 ], [ %95, %91 ], [ %114, %113 ], [ %107, %100 ], [ %99, %97 ], [ %130, %127 ], [ @luaO_nilobject_, %115 ], !dbg !1610
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1611
  br label %133, !dbg !1612

; <label>:133:                                    ; preds = %131, %58
  %134 = phi %struct.lua_TValue* [ %59, %58 ], [ %132, %131 ], !dbg !1613
  %135 = icmp eq i64* %2, null, !dbg !1614
  br i1 %135, label %141, label %136, !dbg !1616

; <label>:136:                                    ; preds = %133
  %137 = bitcast %struct.lua_TValue* %134 to %struct.anon.1**, !dbg !1617
  %138 = load %struct.anon.1*, %struct.anon.1** %137, align 8, !dbg !1617, !tbaa !510
  %139 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %138, i64 0, i32 5, !dbg !1618
  %140 = load i64, i64* %139, align 8, !dbg !1618, !tbaa !510
  store i64 %140, i64* %2, align 8, !dbg !1619, !tbaa !1571
  br label %141, !dbg !1620

; <label>:141:                                    ; preds = %133, %136
  %142 = bitcast %struct.lua_TValue* %134 to %union.TString**, !dbg !1621
  %143 = load %union.TString*, %union.TString** %142, align 8, !dbg !1621, !tbaa !510
  %144 = getelementptr inbounds %union.TString, %union.TString* %143, i64 1, !dbg !1621
  %145 = bitcast %union.TString* %144 to i8*, !dbg !1621
  br label %146, !dbg !1622

; <label>:146:                                    ; preds = %68, %66, %141
  %147 = phi i8* [ %145, %141 ], [ null, %66 ], [ null, %68 ], !dbg !1623
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1624
  ret i8* %147, !dbg !1624
}

; Function Attrs: noredzone
declare hidden i32 @luaV_tostring(%struct.lua_State*, %struct.lua_TValue*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i64 @lua_objlen(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !1625 {
  %3 = icmp sgt i32 %1, 0, !dbg !1640
  br i1 %3, label %4, label %14, !dbg !1641

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !1642
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8, !dbg !1642, !tbaa !401
  %7 = add nsw i32 %1, -1, !dbg !1643
  %8 = sext i32 %7 to i64, !dbg !1644
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 %8, !dbg !1644
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1646
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !1646, !tbaa !373
  %12 = icmp ult %struct.lua_TValue* %9, %11, !dbg !1647
  %13 = select i1 %12, %struct.lua_TValue* %9, %struct.lua_TValue* @luaO_nilobject_, !dbg !1648
  br label %57

; <label>:14:                                     ; preds = %2
  %15 = icmp sgt i32 %1, -10000, !dbg !1649
  br i1 %15, label %16, label %21, !dbg !1650

; <label>:16:                                     ; preds = %14
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1651
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %17, align 8, !dbg !1651, !tbaa !373
  %19 = sext i32 %1 to i64, !dbg !1652
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 %19, !dbg !1652
  br label %57, !dbg !1653

; <label>:21:                                     ; preds = %14
  switch i32 %1, label %41 [
    i32 -10000, label %22
    i32 -10001, label %26
    i32 -10002, label %39
  ], !dbg !1654

; <label>:22:                                     ; preds = %21
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1655
  %24 = load %struct.global_State*, %struct.global_State** %23, align 8, !dbg !1655, !tbaa !482
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %24, i64 0, i32 20, !dbg !1655
  br label %57, !dbg !1656

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1657
  %28 = load %struct.CallInfo*, %struct.CallInfo** %27, align 8, !dbg !1657, !tbaa !418
  %29 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %28, i64 0, i32 1, !dbg !1657
  %30 = bitcast %struct.lua_TValue** %29 to %struct.CClosure***, !dbg !1657
  %31 = load %struct.CClosure**, %struct.CClosure*** %30, align 8, !dbg !1657, !tbaa !600
  %32 = load %struct.CClosure*, %struct.CClosure** %31, align 8, !dbg !1657, !tbaa !510
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !1659
  %34 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %32, i64 0, i32 6, !dbg !1659
  %35 = bitcast %struct.Table** %34 to i64*, !dbg !1659
  %36 = load i64, i64* %35, align 8, !dbg !1659, !tbaa !510
  %37 = bitcast %struct.lua_TValue* %33 to i64*, !dbg !1659
  store i64 %36, i64* %37, align 8, !dbg !1659, !tbaa !510
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !1659
  store i32 5, i32* %38, align 8, !dbg !1659, !tbaa !382
  br label %57

; <label>:39:                                     ; preds = %21
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !1660
  br label %57, !dbg !1661

; <label>:41:                                     ; preds = %21
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1662
  %43 = load %struct.CallInfo*, %struct.CallInfo** %42, align 8, !dbg !1662, !tbaa !418
  %44 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %43, i64 0, i32 1, !dbg !1662
  %45 = bitcast %struct.lua_TValue** %44 to %struct.CClosure***, !dbg !1662
  %46 = load %struct.CClosure**, %struct.CClosure*** %45, align 8, !dbg !1662, !tbaa !600
  %47 = load %struct.CClosure*, %struct.CClosure** %46, align 8, !dbg !1662, !tbaa !510
  %48 = sub nsw i32 -10002, %1, !dbg !1664
  %49 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 4, !dbg !1665
  %50 = load i8, i8* %49, align 1, !dbg !1665, !tbaa !510
  %51 = zext i8 %50 to i32, !dbg !1666
  %52 = icmp sgt i32 %48, %51, !dbg !1667
  br i1 %52, label %57, label %53, !dbg !1668

; <label>:53:                                     ; preds = %41
  %54 = add nsw i32 %48, -1, !dbg !1669
  %55 = sext i32 %54 to i64, !dbg !1670
  %56 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 8, i64 %55, !dbg !1670
  br label %57, !dbg !1668

; <label>:57:                                     ; preds = %4, %16, %22, %26, %39, %41, %53
  %58 = phi %struct.lua_TValue* [ %13, %4 ], [ %20, %16 ], [ %40, %39 ], [ %33, %26 ], [ %25, %22 ], [ %56, %53 ], [ @luaO_nilobject_, %41 ], !dbg !1671
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1672
  %59 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i64 0, i32 1, !dbg !1674
  %60 = load i32, i32* %59, align 8, !dbg !1674, !tbaa !382
  switch i32 %60, label %84 [
    i32 4, label %61
    i32 7, label %66
    i32 5, label %71
    i32 3, label %76
  ], !dbg !1675

; <label>:61:                                     ; preds = %57
  %62 = bitcast %struct.lua_TValue* %58 to %struct.anon.1**, !dbg !1676
  %63 = load %struct.anon.1*, %struct.anon.1** %62, align 8, !dbg !1676, !tbaa !510
  %64 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %63, i64 0, i32 5, !dbg !1677
  %65 = load i64, i64* %64, align 8, !dbg !1677, !tbaa !510
  br label %84, !dbg !1678

; <label>:66:                                     ; preds = %57
  %67 = bitcast %struct.lua_TValue* %58 to %struct.anon.2**, !dbg !1679
  %68 = load %struct.anon.2*, %struct.anon.2** %67, align 8, !dbg !1679, !tbaa !510
  %69 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %68, i64 0, i32 5, !dbg !1680
  %70 = load i64, i64* %69, align 8, !dbg !1680, !tbaa !510
  br label %84, !dbg !1681

; <label>:71:                                     ; preds = %57
  %72 = bitcast %struct.lua_TValue* %58 to %struct.Table**, !dbg !1682
  %73 = load %struct.Table*, %struct.Table** %72, align 8, !dbg !1682, !tbaa !510
  %74 = tail call i32 @luaH_getn(%struct.Table* %73) #5, !dbg !1683
  %75 = sext i32 %74 to i64, !dbg !1683
  br label %84, !dbg !1684

; <label>:76:                                     ; preds = %57
  %77 = tail call i32 @luaV_tostring(%struct.lua_State* %0, %struct.lua_TValue* %58) #5, !dbg !1685
  %78 = icmp eq i32 %77, 0, !dbg !1685
  br i1 %78, label %84, label %79, !dbg !1685

; <label>:79:                                     ; preds = %76
  %80 = bitcast %struct.lua_TValue* %58 to %struct.anon.1**, !dbg !1686
  %81 = load %struct.anon.1*, %struct.anon.1** %80, align 8, !dbg !1686, !tbaa !510
  %82 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %81, i64 0, i32 5, !dbg !1687
  %83 = load i64, i64* %82, align 8, !dbg !1687, !tbaa !510
  br label %84, !dbg !1685

; <label>:84:                                     ; preds = %57, %79, %76, %71, %66, %61
  %85 = phi i64 [ %75, %71 ], [ %70, %66 ], [ %65, %61 ], [ %83, %79 ], [ 0, %76 ], [ 0, %57 ], !dbg !1688
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1689
  ret i64 %85, !dbg !1689
}

; Function Attrs: noredzone
declare hidden i32 @luaH_getn(%struct.Table*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 (%struct.lua_State*)* @lua_tocfunction(%struct.lua_State* nocapture, i32) local_unnamed_addr #0 !dbg !1690 {
  %3 = icmp sgt i32 %1, 0, !dbg !1702
  br i1 %3, label %4, label %14, !dbg !1703

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !1704
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8, !dbg !1704, !tbaa !401
  %7 = add nsw i32 %1, -1, !dbg !1705
  %8 = sext i32 %7 to i64, !dbg !1706
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 %8, !dbg !1706
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1708
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !1708, !tbaa !373
  %12 = icmp ult %struct.lua_TValue* %9, %11, !dbg !1709
  %13 = select i1 %12, %struct.lua_TValue* %9, %struct.lua_TValue* @luaO_nilobject_, !dbg !1710
  br label %57

; <label>:14:                                     ; preds = %2
  %15 = icmp sgt i32 %1, -10000, !dbg !1711
  br i1 %15, label %16, label %21, !dbg !1712

; <label>:16:                                     ; preds = %14
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1713
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %17, align 8, !dbg !1713, !tbaa !373
  %19 = sext i32 %1 to i64, !dbg !1714
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 %19, !dbg !1714
  br label %57, !dbg !1715

; <label>:21:                                     ; preds = %14
  switch i32 %1, label %41 [
    i32 -10000, label %22
    i32 -10001, label %26
    i32 -10002, label %39
  ], !dbg !1716

; <label>:22:                                     ; preds = %21
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1717
  %24 = load %struct.global_State*, %struct.global_State** %23, align 8, !dbg !1717, !tbaa !482
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %24, i64 0, i32 20, !dbg !1717
  br label %57, !dbg !1718

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1719
  %28 = load %struct.CallInfo*, %struct.CallInfo** %27, align 8, !dbg !1719, !tbaa !418
  %29 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %28, i64 0, i32 1, !dbg !1719
  %30 = bitcast %struct.lua_TValue** %29 to %struct.CClosure***, !dbg !1719
  %31 = load %struct.CClosure**, %struct.CClosure*** %30, align 8, !dbg !1719, !tbaa !600
  %32 = load %struct.CClosure*, %struct.CClosure** %31, align 8, !dbg !1719, !tbaa !510
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !1721
  %34 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %32, i64 0, i32 6, !dbg !1721
  %35 = bitcast %struct.Table** %34 to i64*, !dbg !1721
  %36 = load i64, i64* %35, align 8, !dbg !1721, !tbaa !510
  %37 = bitcast %struct.lua_TValue* %33 to i64*, !dbg !1721
  store i64 %36, i64* %37, align 8, !dbg !1721, !tbaa !510
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !1721
  store i32 5, i32* %38, align 8, !dbg !1721, !tbaa !382
  br label %57

; <label>:39:                                     ; preds = %21
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !1722
  br label %57, !dbg !1723

; <label>:41:                                     ; preds = %21
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1724
  %43 = load %struct.CallInfo*, %struct.CallInfo** %42, align 8, !dbg !1724, !tbaa !418
  %44 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %43, i64 0, i32 1, !dbg !1724
  %45 = bitcast %struct.lua_TValue** %44 to %struct.CClosure***, !dbg !1724
  %46 = load %struct.CClosure**, %struct.CClosure*** %45, align 8, !dbg !1724, !tbaa !600
  %47 = load %struct.CClosure*, %struct.CClosure** %46, align 8, !dbg !1724, !tbaa !510
  %48 = sub nsw i32 -10002, %1, !dbg !1726
  %49 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 4, !dbg !1727
  %50 = load i8, i8* %49, align 1, !dbg !1727, !tbaa !510
  %51 = zext i8 %50 to i32, !dbg !1728
  %52 = icmp sgt i32 %48, %51, !dbg !1729
  br i1 %52, label %57, label %53, !dbg !1730

; <label>:53:                                     ; preds = %41
  %54 = add nsw i32 %48, -1, !dbg !1731
  %55 = sext i32 %54 to i64, !dbg !1732
  %56 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 8, i64 %55, !dbg !1732
  br label %57, !dbg !1730

; <label>:57:                                     ; preds = %4, %16, %22, %26, %39, %41, %53
  %58 = phi %struct.lua_TValue* [ %13, %4 ], [ %20, %16 ], [ %40, %39 ], [ %33, %26 ], [ %25, %22 ], [ %56, %53 ], [ @luaO_nilobject_, %41 ], !dbg !1733
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1734
  %59 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i64 0, i32 1, !dbg !1736
  %60 = load i32, i32* %59, align 8, !dbg !1736, !tbaa !382
  %61 = icmp eq i32 %60, 6, !dbg !1736
  br i1 %61, label %62, label %71, !dbg !1736

; <label>:62:                                     ; preds = %57
  %63 = bitcast %struct.lua_TValue* %58 to %struct.CClosure**, !dbg !1736
  %64 = load %struct.CClosure*, %struct.CClosure** %63, align 8, !dbg !1736, !tbaa !510
  %65 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %64, i64 0, i32 3, !dbg !1736
  %66 = load i8, i8* %65, align 2, !dbg !1736, !tbaa !510
  %67 = icmp eq i8 %66, 0, !dbg !1736
  br i1 %67, label %71, label %68, !dbg !1737

; <label>:68:                                     ; preds = %62
  %69 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %64, i64 0, i32 7, !dbg !1738
  %70 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %69, align 8, !dbg !1738, !tbaa !510
  br label %71, !dbg !1737

; <label>:71:                                     ; preds = %62, %57, %68
  %72 = phi i32 (%struct.lua_State*)* [ %70, %68 ], [ null, %62 ], [ null, %57 ], !dbg !1737
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1739
  ret i32 (%struct.lua_State*)* %72, !dbg !1739
}

; Function Attrs: noredzone nounwind
define dso_local i8* @lua_touserdata(%struct.lua_State* nocapture, i32) local_unnamed_addr #0 !dbg !1740 {
  %3 = icmp sgt i32 %1, 0, !dbg !1752
  br i1 %3, label %4, label %14, !dbg !1753

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !1754
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8, !dbg !1754, !tbaa !401
  %7 = add nsw i32 %1, -1, !dbg !1755
  %8 = sext i32 %7 to i64, !dbg !1756
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 %8, !dbg !1756
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1758
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !1758, !tbaa !373
  %12 = icmp ult %struct.lua_TValue* %9, %11, !dbg !1759
  %13 = select i1 %12, %struct.lua_TValue* %9, %struct.lua_TValue* @luaO_nilobject_, !dbg !1760
  br label %57

; <label>:14:                                     ; preds = %2
  %15 = icmp sgt i32 %1, -10000, !dbg !1761
  br i1 %15, label %16, label %21, !dbg !1762

; <label>:16:                                     ; preds = %14
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1763
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %17, align 8, !dbg !1763, !tbaa !373
  %19 = sext i32 %1 to i64, !dbg !1764
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 %19, !dbg !1764
  br label %57, !dbg !1765

; <label>:21:                                     ; preds = %14
  switch i32 %1, label %41 [
    i32 -10000, label %22
    i32 -10001, label %26
    i32 -10002, label %39
  ], !dbg !1766

; <label>:22:                                     ; preds = %21
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1767
  %24 = load %struct.global_State*, %struct.global_State** %23, align 8, !dbg !1767, !tbaa !482
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %24, i64 0, i32 20, !dbg !1767
  br label %57, !dbg !1768

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1769
  %28 = load %struct.CallInfo*, %struct.CallInfo** %27, align 8, !dbg !1769, !tbaa !418
  %29 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %28, i64 0, i32 1, !dbg !1769
  %30 = bitcast %struct.lua_TValue** %29 to %struct.CClosure***, !dbg !1769
  %31 = load %struct.CClosure**, %struct.CClosure*** %30, align 8, !dbg !1769, !tbaa !600
  %32 = load %struct.CClosure*, %struct.CClosure** %31, align 8, !dbg !1769, !tbaa !510
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !1771
  %34 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %32, i64 0, i32 6, !dbg !1771
  %35 = bitcast %struct.Table** %34 to i64*, !dbg !1771
  %36 = load i64, i64* %35, align 8, !dbg !1771, !tbaa !510
  %37 = bitcast %struct.lua_TValue* %33 to i64*, !dbg !1771
  store i64 %36, i64* %37, align 8, !dbg !1771, !tbaa !510
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !1771
  store i32 5, i32* %38, align 8, !dbg !1771, !tbaa !382
  br label %57

; <label>:39:                                     ; preds = %21
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !1772
  br label %57, !dbg !1773

; <label>:41:                                     ; preds = %21
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1774
  %43 = load %struct.CallInfo*, %struct.CallInfo** %42, align 8, !dbg !1774, !tbaa !418
  %44 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %43, i64 0, i32 1, !dbg !1774
  %45 = bitcast %struct.lua_TValue** %44 to %struct.CClosure***, !dbg !1774
  %46 = load %struct.CClosure**, %struct.CClosure*** %45, align 8, !dbg !1774, !tbaa !600
  %47 = load %struct.CClosure*, %struct.CClosure** %46, align 8, !dbg !1774, !tbaa !510
  %48 = sub nsw i32 -10002, %1, !dbg !1776
  %49 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 4, !dbg !1777
  %50 = load i8, i8* %49, align 1, !dbg !1777, !tbaa !510
  %51 = zext i8 %50 to i32, !dbg !1778
  %52 = icmp sgt i32 %48, %51, !dbg !1779
  br i1 %52, label %57, label %53, !dbg !1780

; <label>:53:                                     ; preds = %41
  %54 = add nsw i32 %48, -1, !dbg !1781
  %55 = sext i32 %54 to i64, !dbg !1782
  %56 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 8, i64 %55, !dbg !1782
  br label %57, !dbg !1780

; <label>:57:                                     ; preds = %4, %16, %22, %26, %39, %41, %53
  %58 = phi %struct.lua_TValue* [ %13, %4 ], [ %20, %16 ], [ %40, %39 ], [ %33, %26 ], [ %25, %22 ], [ %56, %53 ], [ @luaO_nilobject_, %41 ], !dbg !1783
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1784
  %59 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i64 0, i32 1, !dbg !1786
  %60 = load i32, i32* %59, align 8, !dbg !1786, !tbaa !382
  switch i32 %60, label %69 [
    i32 7, label %61
    i32 2, label %66
  ], !dbg !1787

; <label>:61:                                     ; preds = %57
  %62 = bitcast %struct.lua_TValue* %58 to %union.Udata**, !dbg !1788
  %63 = load %union.Udata*, %union.Udata** %62, align 8, !dbg !1788, !tbaa !510
  %64 = getelementptr inbounds %union.Udata, %union.Udata* %63, i64 1, !dbg !1790
  %65 = bitcast %union.Udata* %64 to i8*, !dbg !1791
  br label %69, !dbg !1792

; <label>:66:                                     ; preds = %57
  %67 = bitcast %struct.lua_TValue* %58 to i8**, !dbg !1793
  %68 = load i8*, i8** %67, align 8, !dbg !1793, !tbaa !510
  br label %69, !dbg !1794

; <label>:69:                                     ; preds = %57, %66, %61
  %70 = phi i8* [ %68, %66 ], [ %65, %61 ], [ null, %57 ], !dbg !1795
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1796
  ret i8* %70, !dbg !1796
}

; Function Attrs: noredzone nounwind
define dso_local %struct.lua_State* @lua_tothread(%struct.lua_State* nocapture, i32) local_unnamed_addr #0 !dbg !1797 {
  %3 = icmp sgt i32 %1, 0, !dbg !1809
  br i1 %3, label %4, label %14, !dbg !1810

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !1811
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8, !dbg !1811, !tbaa !401
  %7 = add nsw i32 %1, -1, !dbg !1812
  %8 = sext i32 %7 to i64, !dbg !1813
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 %8, !dbg !1813
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1815
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !1815, !tbaa !373
  %12 = icmp ult %struct.lua_TValue* %9, %11, !dbg !1816
  %13 = select i1 %12, %struct.lua_TValue* %9, %struct.lua_TValue* @luaO_nilobject_, !dbg !1817
  br label %57

; <label>:14:                                     ; preds = %2
  %15 = icmp sgt i32 %1, -10000, !dbg !1818
  br i1 %15, label %16, label %21, !dbg !1819

; <label>:16:                                     ; preds = %14
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1820
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %17, align 8, !dbg !1820, !tbaa !373
  %19 = sext i32 %1 to i64, !dbg !1821
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 %19, !dbg !1821
  br label %57, !dbg !1822

; <label>:21:                                     ; preds = %14
  switch i32 %1, label %41 [
    i32 -10000, label %22
    i32 -10001, label %26
    i32 -10002, label %39
  ], !dbg !1823

; <label>:22:                                     ; preds = %21
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1824
  %24 = load %struct.global_State*, %struct.global_State** %23, align 8, !dbg !1824, !tbaa !482
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %24, i64 0, i32 20, !dbg !1824
  br label %57, !dbg !1825

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1826
  %28 = load %struct.CallInfo*, %struct.CallInfo** %27, align 8, !dbg !1826, !tbaa !418
  %29 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %28, i64 0, i32 1, !dbg !1826
  %30 = bitcast %struct.lua_TValue** %29 to %struct.CClosure***, !dbg !1826
  %31 = load %struct.CClosure**, %struct.CClosure*** %30, align 8, !dbg !1826, !tbaa !600
  %32 = load %struct.CClosure*, %struct.CClosure** %31, align 8, !dbg !1826, !tbaa !510
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !1828
  %34 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %32, i64 0, i32 6, !dbg !1828
  %35 = bitcast %struct.Table** %34 to i64*, !dbg !1828
  %36 = load i64, i64* %35, align 8, !dbg !1828, !tbaa !510
  %37 = bitcast %struct.lua_TValue* %33 to i64*, !dbg !1828
  store i64 %36, i64* %37, align 8, !dbg !1828, !tbaa !510
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !1828
  store i32 5, i32* %38, align 8, !dbg !1828, !tbaa !382
  br label %57

; <label>:39:                                     ; preds = %21
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !1829
  br label %57, !dbg !1830

; <label>:41:                                     ; preds = %21
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1831
  %43 = load %struct.CallInfo*, %struct.CallInfo** %42, align 8, !dbg !1831, !tbaa !418
  %44 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %43, i64 0, i32 1, !dbg !1831
  %45 = bitcast %struct.lua_TValue** %44 to %struct.CClosure***, !dbg !1831
  %46 = load %struct.CClosure**, %struct.CClosure*** %45, align 8, !dbg !1831, !tbaa !600
  %47 = load %struct.CClosure*, %struct.CClosure** %46, align 8, !dbg !1831, !tbaa !510
  %48 = sub nsw i32 -10002, %1, !dbg !1833
  %49 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 4, !dbg !1834
  %50 = load i8, i8* %49, align 1, !dbg !1834, !tbaa !510
  %51 = zext i8 %50 to i32, !dbg !1835
  %52 = icmp sgt i32 %48, %51, !dbg !1836
  br i1 %52, label %57, label %53, !dbg !1837

; <label>:53:                                     ; preds = %41
  %54 = add nsw i32 %48, -1, !dbg !1838
  %55 = sext i32 %54 to i64, !dbg !1839
  %56 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 8, i64 %55, !dbg !1839
  br label %57, !dbg !1837

; <label>:57:                                     ; preds = %4, %16, %22, %26, %39, %41, %53
  %58 = phi %struct.lua_TValue* [ %13, %4 ], [ %20, %16 ], [ %40, %39 ], [ %33, %26 ], [ %25, %22 ], [ %56, %53 ], [ @luaO_nilobject_, %41 ], !dbg !1840
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1841
  %59 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i64 0, i32 1, !dbg !1843
  %60 = load i32, i32* %59, align 8, !dbg !1843, !tbaa !382
  %61 = icmp eq i32 %60, 8, !dbg !1843
  br i1 %61, label %62, label %65, !dbg !1844

; <label>:62:                                     ; preds = %57
  %63 = bitcast %struct.lua_TValue* %58 to %struct.lua_State**, !dbg !1845
  %64 = load %struct.lua_State*, %struct.lua_State** %63, align 8, !dbg !1845, !tbaa !510
  br label %65, !dbg !1844

; <label>:65:                                     ; preds = %57, %62
  %66 = phi %struct.lua_State* [ %64, %62 ], [ null, %57 ], !dbg !1844
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1846
  ret %struct.lua_State* %66, !dbg !1846
}

; Function Attrs: noredzone nounwind
define dso_local i8* @lua_topointer(%struct.lua_State* nocapture, i32) local_unnamed_addr #0 !dbg !1847 {
  %3 = icmp sgt i32 %1, 0, !dbg !1861
  br i1 %3, label %4, label %14, !dbg !1862

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !1863
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8, !dbg !1863, !tbaa !401
  %7 = add nsw i32 %1, -1, !dbg !1864
  %8 = sext i32 %7 to i64, !dbg !1865
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 %8, !dbg !1865
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1867
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !1867, !tbaa !373
  %12 = icmp ult %struct.lua_TValue* %9, %11, !dbg !1868
  %13 = select i1 %12, %struct.lua_TValue* %9, %struct.lua_TValue* @luaO_nilobject_, !dbg !1869
  br label %57

; <label>:14:                                     ; preds = %2
  %15 = icmp sgt i32 %1, -10000, !dbg !1870
  br i1 %15, label %16, label %21, !dbg !1871

; <label>:16:                                     ; preds = %14
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1872
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %17, align 8, !dbg !1872, !tbaa !373
  %19 = sext i32 %1 to i64, !dbg !1873
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 %19, !dbg !1873
  br label %57, !dbg !1874

; <label>:21:                                     ; preds = %14
  switch i32 %1, label %41 [
    i32 -10000, label %22
    i32 -10001, label %26
    i32 -10002, label %39
  ], !dbg !1875

; <label>:22:                                     ; preds = %21
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1876
  %24 = load %struct.global_State*, %struct.global_State** %23, align 8, !dbg !1876, !tbaa !482
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %24, i64 0, i32 20, !dbg !1876
  br label %57, !dbg !1877

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1878
  %28 = load %struct.CallInfo*, %struct.CallInfo** %27, align 8, !dbg !1878, !tbaa !418
  %29 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %28, i64 0, i32 1, !dbg !1878
  %30 = bitcast %struct.lua_TValue** %29 to %struct.CClosure***, !dbg !1878
  %31 = load %struct.CClosure**, %struct.CClosure*** %30, align 8, !dbg !1878, !tbaa !600
  %32 = load %struct.CClosure*, %struct.CClosure** %31, align 8, !dbg !1878, !tbaa !510
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !1880
  %34 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %32, i64 0, i32 6, !dbg !1880
  %35 = bitcast %struct.Table** %34 to i64*, !dbg !1880
  %36 = load i64, i64* %35, align 8, !dbg !1880, !tbaa !510
  %37 = bitcast %struct.lua_TValue* %33 to i64*, !dbg !1880
  store i64 %36, i64* %37, align 8, !dbg !1880, !tbaa !510
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !1880
  store i32 5, i32* %38, align 8, !dbg !1880, !tbaa !382
  br label %57

; <label>:39:                                     ; preds = %21
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !1881
  br label %57, !dbg !1882

; <label>:41:                                     ; preds = %21
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1883
  %43 = load %struct.CallInfo*, %struct.CallInfo** %42, align 8, !dbg !1883, !tbaa !418
  %44 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %43, i64 0, i32 1, !dbg !1883
  %45 = bitcast %struct.lua_TValue** %44 to %struct.CClosure***, !dbg !1883
  %46 = load %struct.CClosure**, %struct.CClosure*** %45, align 8, !dbg !1883, !tbaa !600
  %47 = load %struct.CClosure*, %struct.CClosure** %46, align 8, !dbg !1883, !tbaa !510
  %48 = sub nsw i32 -10002, %1, !dbg !1885
  %49 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 4, !dbg !1886
  %50 = load i8, i8* %49, align 1, !dbg !1886, !tbaa !510
  %51 = zext i8 %50 to i32, !dbg !1887
  %52 = icmp sgt i32 %48, %51, !dbg !1888
  br i1 %52, label %57, label %53, !dbg !1889

; <label>:53:                                     ; preds = %41
  %54 = add nsw i32 %48, -1, !dbg !1890
  %55 = sext i32 %54 to i64, !dbg !1891
  %56 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 8, i64 %55, !dbg !1891
  br label %57, !dbg !1889

; <label>:57:                                     ; preds = %4, %16, %22, %26, %39, %41, %53
  %58 = phi %struct.lua_TValue* [ %13, %4 ], [ %20, %16 ], [ %40, %39 ], [ %33, %26 ], [ %25, %22 ], [ %56, %53 ], [ @luaO_nilobject_, %41 ], !dbg !1892
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1893
  %59 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i64 0, i32 1, !dbg !1895
  %60 = load i32, i32* %59, align 8, !dbg !1895, !tbaa !382
  switch i32 %60, label %138 [
    i32 5, label %61
    i32 6, label %64
    i32 8, label %67
    i32 7, label %70
    i32 2, label %70
  ], !dbg !1896

; <label>:61:                                     ; preds = %57
  %62 = bitcast %struct.lua_TValue* %58 to i8**, !dbg !1897
  %63 = load i8*, i8** %62, align 8, !dbg !1897, !tbaa !510
  br label %138, !dbg !1899

; <label>:64:                                     ; preds = %57
  %65 = bitcast %struct.lua_TValue* %58 to i8**, !dbg !1900
  %66 = load i8*, i8** %65, align 8, !dbg !1900, !tbaa !510
  br label %138, !dbg !1901

; <label>:67:                                     ; preds = %57
  %68 = bitcast %struct.lua_TValue* %58 to i8**, !dbg !1902
  %69 = load i8*, i8** %68, align 8, !dbg !1902, !tbaa !510
  br label %138, !dbg !1903

; <label>:70:                                     ; preds = %57, %57
  br i1 %3, label %71, label %81, !dbg !1910

; <label>:71:                                     ; preds = %70
  %72 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !1911
  %73 = load %struct.lua_TValue*, %struct.lua_TValue** %72, align 8, !dbg !1911, !tbaa !401
  %74 = add nsw i32 %1, -1, !dbg !1912
  %75 = sext i32 %74 to i64, !dbg !1913
  %76 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %73, i64 %75, !dbg !1913
  %77 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1915
  %78 = load %struct.lua_TValue*, %struct.lua_TValue** %77, align 8, !dbg !1915, !tbaa !373
  %79 = icmp ult %struct.lua_TValue* %76, %78, !dbg !1916
  %80 = select i1 %79, %struct.lua_TValue* %76, %struct.lua_TValue* @luaO_nilobject_, !dbg !1917
  br label %124

; <label>:81:                                     ; preds = %70
  %82 = icmp sgt i32 %1, -10000, !dbg !1918
  br i1 %82, label %83, label %88, !dbg !1919

; <label>:83:                                     ; preds = %81
  %84 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1920
  %85 = load %struct.lua_TValue*, %struct.lua_TValue** %84, align 8, !dbg !1920, !tbaa !373
  %86 = sext i32 %1 to i64, !dbg !1921
  %87 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %85, i64 %86, !dbg !1921
  br label %124, !dbg !1922

; <label>:88:                                     ; preds = %81
  switch i32 %1, label %108 [
    i32 -10000, label %89
    i32 -10001, label %93
    i32 -10002, label %106
  ], !dbg !1923

; <label>:89:                                     ; preds = %88
  %90 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1924
  %91 = load %struct.global_State*, %struct.global_State** %90, align 8, !dbg !1924, !tbaa !482
  %92 = getelementptr inbounds %struct.global_State, %struct.global_State* %91, i64 0, i32 20, !dbg !1924
  br label %124, !dbg !1925

; <label>:93:                                     ; preds = %88
  %94 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1926
  %95 = load %struct.CallInfo*, %struct.CallInfo** %94, align 8, !dbg !1926, !tbaa !418
  %96 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %95, i64 0, i32 1, !dbg !1926
  %97 = bitcast %struct.lua_TValue** %96 to %struct.CClosure***, !dbg !1926
  %98 = load %struct.CClosure**, %struct.CClosure*** %97, align 8, !dbg !1926, !tbaa !600
  %99 = load %struct.CClosure*, %struct.CClosure** %98, align 8, !dbg !1926, !tbaa !510
  %100 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !1928
  %101 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %99, i64 0, i32 6, !dbg !1928
  %102 = bitcast %struct.Table** %101 to i64*, !dbg !1928
  %103 = load i64, i64* %102, align 8, !dbg !1928, !tbaa !510
  %104 = bitcast %struct.lua_TValue* %100 to i64*, !dbg !1928
  store i64 %103, i64* %104, align 8, !dbg !1928, !tbaa !510
  %105 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !1928
  store i32 5, i32* %105, align 8, !dbg !1928, !tbaa !382
  br label %124

; <label>:106:                                    ; preds = %88
  %107 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !1929
  br label %124, !dbg !1930

; <label>:108:                                    ; preds = %88
  %109 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1931
  %110 = load %struct.CallInfo*, %struct.CallInfo** %109, align 8, !dbg !1931, !tbaa !418
  %111 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %110, i64 0, i32 1, !dbg !1931
  %112 = bitcast %struct.lua_TValue** %111 to %struct.CClosure***, !dbg !1931
  %113 = load %struct.CClosure**, %struct.CClosure*** %112, align 8, !dbg !1931, !tbaa !600
  %114 = load %struct.CClosure*, %struct.CClosure** %113, align 8, !dbg !1931, !tbaa !510
  %115 = sub nsw i32 -10002, %1, !dbg !1933
  %116 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %114, i64 0, i32 4, !dbg !1934
  %117 = load i8, i8* %116, align 1, !dbg !1934, !tbaa !510
  %118 = zext i8 %117 to i32, !dbg !1935
  %119 = icmp sgt i32 %115, %118, !dbg !1936
  br i1 %119, label %124, label %120, !dbg !1937

; <label>:120:                                    ; preds = %108
  %121 = add nsw i32 %115, -1, !dbg !1938
  %122 = sext i32 %121 to i64, !dbg !1939
  %123 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %114, i64 0, i32 8, i64 %122, !dbg !1939
  br label %124, !dbg !1937

; <label>:124:                                    ; preds = %120, %108, %106, %93, %89, %83, %71
  %125 = phi %struct.lua_TValue* [ %80, %71 ], [ %87, %83 ], [ %107, %106 ], [ %100, %93 ], [ %92, %89 ], [ %123, %120 ], [ @luaO_nilobject_, %108 ], !dbg !1940
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1941
  %126 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %125, i64 0, i32 1, !dbg !1943
  %127 = load i32, i32* %126, align 8, !dbg !1943, !tbaa !382
  switch i32 %127, label %136 [
    i32 7, label %128
    i32 2, label %133
  ], !dbg !1944

; <label>:128:                                    ; preds = %124
  %129 = bitcast %struct.lua_TValue* %125 to %union.Udata**, !dbg !1945
  %130 = load %union.Udata*, %union.Udata** %129, align 8, !dbg !1945, !tbaa !510
  %131 = getelementptr inbounds %union.Udata, %union.Udata* %130, i64 1, !dbg !1946
  %132 = bitcast %union.Udata* %131 to i8*, !dbg !1947
  br label %136, !dbg !1948

; <label>:133:                                    ; preds = %124
  %134 = bitcast %struct.lua_TValue* %125 to i8**, !dbg !1949
  %135 = load i8*, i8** %134, align 8, !dbg !1949, !tbaa !510
  br label %136, !dbg !1950

; <label>:136:                                    ; preds = %124, %128, %133
  %137 = phi i8* [ %135, %133 ], [ %132, %128 ], [ null, %124 ], !dbg !1951
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1952
  br label %138, !dbg !1953

; <label>:138:                                    ; preds = %57, %136, %67, %64, %61
  %139 = phi i8* [ %137, %136 ], [ %69, %67 ], [ %66, %64 ], [ %63, %61 ], [ null, %57 ], !dbg !1954
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1955
  ret i8* %139, !dbg !1955
}

; Function Attrs: noredzone nounwind
define dso_local void @lua_pushnil(%struct.lua_State* nocapture) local_unnamed_addr #0 !dbg !1956 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1962
  %3 = load %struct.lua_TValue*, %struct.lua_TValue** %2, align 8, !dbg !1962, !tbaa !373
  %4 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3, i64 0, i32 1, !dbg !1962
  store i32 0, i32* %4, align 8, !dbg !1962, !tbaa !382
  %5 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3, i64 1, !dbg !1963
  store %struct.lua_TValue* %5, %struct.lua_TValue** %2, align 8, !dbg !1963, !tbaa !373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1965
  ret void, !dbg !1965
}

; Function Attrs: noredzone nounwind
define dso_local void @lua_pushnumber(%struct.lua_State* nocapture, double) local_unnamed_addr #0 !dbg !1966 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1976
  %4 = load %struct.lua_TValue*, %struct.lua_TValue** %3, align 8, !dbg !1976, !tbaa !373
  %5 = bitcast %struct.lua_TValue* %4 to double*, !dbg !1976
  store double %1, double* %5, align 8, !dbg !1976, !tbaa !510
  %6 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %4, i64 0, i32 1, !dbg !1976
  store i32 3, i32* %6, align 8, !dbg !1976, !tbaa !382
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %3, align 8, !dbg !1977, !tbaa !373
  %8 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %7, i64 1, !dbg !1977
  store %struct.lua_TValue* %8, %struct.lua_TValue** %3, align 8, !dbg !1977, !tbaa !373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1979
  ret void, !dbg !1979
}

; Function Attrs: noredzone nounwind
define dso_local void @lua_pushinteger(%struct.lua_State* nocapture, i64) local_unnamed_addr #0 !dbg !1980 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1990
  %4 = load %struct.lua_TValue*, %struct.lua_TValue** %3, align 8, !dbg !1990, !tbaa !373
  %5 = sitofp i64 %1 to double, !dbg !1990
  %6 = bitcast %struct.lua_TValue* %4 to double*, !dbg !1990
  store double %5, double* %6, align 8, !dbg !1990, !tbaa !510
  %7 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %4, i64 0, i32 1, !dbg !1990
  store i32 3, i32* %7, align 8, !dbg !1990, !tbaa !382
  %8 = load %struct.lua_TValue*, %struct.lua_TValue** %3, align 8, !dbg !1991, !tbaa !373
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %8, i64 1, !dbg !1991
  store %struct.lua_TValue* %9, %struct.lua_TValue** %3, align 8, !dbg !1991, !tbaa !373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1993
  ret void, !dbg !1993
}

; Function Attrs: noredzone nounwind
define dso_local void @lua_pushlstring(%struct.lua_State*, i8*, i64) local_unnamed_addr #0 !dbg !1994 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !2006
  %5 = load %struct.global_State*, %struct.global_State** %4, align 8, !dbg !2006, !tbaa !482
  %6 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 14, !dbg !2006
  %7 = load i64, i64* %6, align 8, !dbg !2006, !tbaa !504
  %8 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 13, !dbg !2006
  %9 = load i64, i64* %8, align 8, !dbg !2006, !tbaa !505
  %10 = icmp ult i64 %7, %9, !dbg !2006
  br i1 %10, label %12, label %11, !dbg !2009

; <label>:11:                                     ; preds = %3
  tail call void @luaC_step(%struct.lua_State* nonnull %0) #5, !dbg !2006
  br label %12, !dbg !2006

; <label>:12:                                     ; preds = %3, %11
  %13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2010
  %14 = load %struct.lua_TValue*, %struct.lua_TValue** %13, align 8, !dbg !2010, !tbaa !373
  %15 = tail call %union.TString* @luaS_newlstr(%struct.lua_State* nonnull %0, i8* %1, i64 %2) #5, !dbg !2010
  %16 = bitcast %struct.lua_TValue* %14 to %union.TString**, !dbg !2010
  store %union.TString* %15, %union.TString** %16, align 8, !dbg !2010, !tbaa !510
  %17 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %14, i64 0, i32 1, !dbg !2010
  store i32 4, i32* %17, align 8, !dbg !2010, !tbaa !382
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %13, align 8, !dbg !2011, !tbaa !373
  %19 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 1, !dbg !2011
  store %struct.lua_TValue* %19, %struct.lua_TValue** %13, align 8, !dbg !2011, !tbaa !373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2013
  ret void, !dbg !2013
}

; Function Attrs: noredzone
declare hidden %union.TString* @luaS_newlstr(%struct.lua_State*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @lua_pushstring(%struct.lua_State*, i8*) local_unnamed_addr #0 !dbg !2014 {
  %3 = icmp eq i8* %1, null, !dbg !2022
  br i1 %3, label %4, label %8, !dbg !2024

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2027
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8, !dbg !2027, !tbaa !373
  %7 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 0, i32 1, !dbg !2027
  store i32 0, i32* %7, align 8, !dbg !2027, !tbaa !382
  br label %25, !dbg !2028

; <label>:8:                                      ; preds = %2
  %9 = tail call i64 @strlen(i8* nonnull %1) #5, !dbg !2029
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !2034
  %11 = load %struct.global_State*, %struct.global_State** %10, align 8, !dbg !2034, !tbaa !482
  %12 = getelementptr inbounds %struct.global_State, %struct.global_State* %11, i64 0, i32 14, !dbg !2034
  %13 = load i64, i64* %12, align 8, !dbg !2034, !tbaa !504
  %14 = getelementptr inbounds %struct.global_State, %struct.global_State* %11, i64 0, i32 13, !dbg !2034
  %15 = load i64, i64* %14, align 8, !dbg !2034, !tbaa !505
  %16 = icmp ult i64 %13, %15, !dbg !2034
  br i1 %16, label %18, label %17, !dbg !2035

; <label>:17:                                     ; preds = %8
  tail call void @luaC_step(%struct.lua_State* nonnull %0) #5, !dbg !2034
  br label %18, !dbg !2034

; <label>:18:                                     ; preds = %8, %17
  %19 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2036
  %20 = load %struct.lua_TValue*, %struct.lua_TValue** %19, align 8, !dbg !2036, !tbaa !373
  %21 = tail call %union.TString* @luaS_newlstr(%struct.lua_State* nonnull %0, i8* nonnull %1, i64 %9) #5, !dbg !2036
  %22 = bitcast %struct.lua_TValue* %20 to %union.TString**, !dbg !2036
  store %union.TString* %21, %union.TString** %22, align 8, !dbg !2036, !tbaa !510
  %23 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %20, i64 0, i32 1, !dbg !2036
  store i32 4, i32* %23, align 8, !dbg !2036, !tbaa !382
  %24 = load %struct.lua_TValue*, %struct.lua_TValue** %19, align 8, !dbg !2037, !tbaa !373
  br label %25

; <label>:25:                                     ; preds = %18, %4
  %26 = phi %struct.lua_TValue* [ %24, %18 ], [ %6, %4 ]
  %27 = phi %struct.lua_TValue** [ %19, %18 ], [ %5, %4 ]
  %28 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %26, i64 1, !dbg !2038
  store %struct.lua_TValue* %28, %struct.lua_TValue** %27, align 8, !dbg !2038, !tbaa !373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2039
  ret void, !dbg !2039
}

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i8* @lua_pushvfstring(%struct.lua_State*, i8*, %struct.__va_list_tag*) local_unnamed_addr #0 !dbg !2040 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !2058
  %5 = load %struct.global_State*, %struct.global_State** %4, align 8, !dbg !2058, !tbaa !482
  %6 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 14, !dbg !2058
  %7 = load i64, i64* %6, align 8, !dbg !2058, !tbaa !504
  %8 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 13, !dbg !2058
  %9 = load i64, i64* %8, align 8, !dbg !2058, !tbaa !505
  %10 = icmp ult i64 %7, %9, !dbg !2058
  br i1 %10, label %12, label %11, !dbg !2061

; <label>:11:                                     ; preds = %3
  tail call void @luaC_step(%struct.lua_State* nonnull %0) #5, !dbg !2058
  br label %12, !dbg !2058

; <label>:12:                                     ; preds = %3, %11
  %13 = tail call i8* @luaO_pushvfstring(%struct.lua_State* nonnull %0, i8* %1, %struct.__va_list_tag* %2) #5, !dbg !2062
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2064
  ret i8* %13, !dbg !2064
}

; Function Attrs: noredzone
declare hidden i8* @luaO_pushvfstring(%struct.lua_State*, i8*, %struct.__va_list_tag*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i8* @lua_pushfstring(%struct.lua_State*, i8*, ...) local_unnamed_addr #0 !dbg !2065 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !2079
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #4, !dbg !2079
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !2081
  %6 = load %struct.global_State*, %struct.global_State** %5, align 8, !dbg !2081, !tbaa !482
  %7 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i64 0, i32 14, !dbg !2081
  %8 = load i64, i64* %7, align 8, !dbg !2081, !tbaa !504
  %9 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i64 0, i32 13, !dbg !2081
  %10 = load i64, i64* %9, align 8, !dbg !2081, !tbaa !505
  %11 = icmp ult i64 %8, %10, !dbg !2081
  br i1 %11, label %13, label %12, !dbg !2084

; <label>:12:                                     ; preds = %2
  tail call void @luaC_step(%struct.lua_State* nonnull %0) #5, !dbg !2081
  br label %13, !dbg !2081

; <label>:13:                                     ; preds = %2, %12
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, !dbg !2085
  call void @llvm.va_start(i8* nonnull %4), !dbg !2085
  %15 = call i8* @luaO_pushvfstring(%struct.lua_State* nonnull %0, i8* %1, %struct.__va_list_tag* nonnull %14) #5, !dbg !2086
  call void @llvm.va_end(i8* nonnull %4), !dbg !2088
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #4, !dbg !2089
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2090
  ret i8* %15, !dbg !2090
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

; Function Attrs: noredzone nounwind
define dso_local void @lua_pushcclosure(%struct.lua_State*, i32 (%struct.lua_State*)*, i32) local_unnamed_addr #0 !dbg !2091 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !2107
  %5 = load %struct.global_State*, %struct.global_State** %4, align 8, !dbg !2107, !tbaa !482
  %6 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 14, !dbg !2107
  %7 = load i64, i64* %6, align 8, !dbg !2107, !tbaa !504
  %8 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 13, !dbg !2107
  %9 = load i64, i64* %8, align 8, !dbg !2107, !tbaa !505
  %10 = icmp ult i64 %7, %9, !dbg !2107
  br i1 %10, label %12, label %11, !dbg !2110

; <label>:11:                                     ; preds = %3
  tail call void @luaC_step(%struct.lua_State* nonnull %0) #5, !dbg !2107
  br label %12, !dbg !2107

; <label>:12:                                     ; preds = %3, %11
  %13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2123
  %14 = load %struct.CallInfo*, %struct.CallInfo** %13, align 8, !dbg !2123, !tbaa !418
  %15 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 12, !dbg !2124
  %16 = load %struct.CallInfo*, %struct.CallInfo** %15, align 8, !dbg !2124, !tbaa !707
  %17 = icmp eq %struct.CallInfo* %14, %16, !dbg !2125
  br i1 %17, label %18, label %21, !dbg !2126

; <label>:18:                                     ; preds = %12
  %19 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, i32 0, i32 0, !dbg !2127
  %20 = bitcast %union.GCObject** %19 to %struct.Table**, !dbg !2127
  br label %27, !dbg !2128

; <label>:21:                                     ; preds = %12
  %22 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %14, i64 0, i32 1, !dbg !2129
  %23 = bitcast %struct.lua_TValue** %22 to %struct.CClosure***, !dbg !2129
  %24 = load %struct.CClosure**, %struct.CClosure*** %23, align 8, !dbg !2129, !tbaa !600
  %25 = load %struct.CClosure*, %struct.CClosure** %24, align 8, !dbg !2129, !tbaa !510
  %26 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %25, i64 0, i32 6, !dbg !2131
  br label %27

; <label>:27:                                     ; preds = %18, %21
  %28 = phi %struct.Table** [ %20, %18 ], [ %26, %21 ]
  %29 = load %struct.Table*, %struct.Table** %28, align 8, !dbg !2132, !tbaa !510
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2133
  %30 = tail call %union.Closure* @luaF_newCclosure(%struct.lua_State* nonnull %0, i32 %2, %struct.Table* %29) #5, !dbg !2134
  %31 = getelementptr inbounds %union.Closure, %union.Closure* %30, i64 0, i32 0, i32 7, !dbg !2136
  store i32 (%struct.lua_State*)* %1, i32 (%struct.lua_State*)** %31, align 8, !dbg !2137, !tbaa !510
  %32 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2138
  %33 = load %struct.lua_TValue*, %struct.lua_TValue** %32, align 8, !dbg !2139, !tbaa !373
  %34 = sext i32 %2 to i64, !dbg !2139
  %35 = sub nsw i64 0, %34, !dbg !2139
  %36 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %33, i64 %35, !dbg !2139
  store %struct.lua_TValue* %36, %struct.lua_TValue** %32, align 8, !dbg !2139, !tbaa !373
  %37 = icmp eq i32 %2, 0, !dbg !2140
  br i1 %37, label %81, label %38, !dbg !2140

; <label>:38:                                     ; preds = %27
  %39 = and i64 %34, 1, !dbg !2141
  %40 = icmp eq i64 %39, 0, !dbg !2141
  br i1 %40, label %52, label %41, !dbg !2141

; <label>:41:                                     ; preds = %38
  %42 = add nsw i64 %34, -1, !dbg !2141
  %43 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %33, i64 -1, !dbg !2142
  %44 = getelementptr inbounds %union.Closure, %union.Closure* %30, i64 0, i32 0, i32 8, i64 %42, !dbg !2142
  %45 = bitcast %struct.lua_TValue* %43 to i64*, !dbg !2142
  %46 = bitcast %struct.lua_TValue* %44 to i64*, !dbg !2142
  %47 = load i64, i64* %45, align 8, !dbg !2142
  store i64 %47, i64* %46, align 8, !dbg !2142
  %48 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %33, i64 -1, i32 1, !dbg !2142
  %49 = load i32, i32* %48, align 8, !dbg !2142, !tbaa !382
  %50 = getelementptr inbounds %union.Closure, %union.Closure* %30, i64 0, i32 0, i32 8, i64 %42, i32 1, !dbg !2142
  store i32 %49, i32* %50, align 8, !dbg !2142, !tbaa !382
  %51 = load %struct.lua_TValue*, %struct.lua_TValue** %32, align 8, !dbg !2143, !tbaa !373
  br label %52, !dbg !2140

; <label>:52:                                     ; preds = %38, %41
  %53 = phi %struct.lua_TValue* [ undef, %38 ], [ %51, %41 ]
  %54 = phi i64 [ %34, %38 ], [ %42, %41 ]
  %55 = phi %struct.lua_TValue* [ %36, %38 ], [ %51, %41 ]
  %56 = icmp eq i32 %2, 1, !dbg !2141
  br i1 %56, label %81, label %57, !dbg !2141

; <label>:57:                                     ; preds = %52, %57
  %58 = phi i64 [ %70, %57 ], [ %54, %52 ]
  %59 = phi %struct.lua_TValue* [ %80, %57 ], [ %55, %52 ]
  %60 = add nsw i64 %58, -1, !dbg !2141
  %61 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %59, i64 %60, !dbg !2142
  %62 = getelementptr inbounds %union.Closure, %union.Closure* %30, i64 0, i32 0, i32 8, i64 %60, !dbg !2142
  %63 = bitcast %struct.lua_TValue* %61 to i64*, !dbg !2142
  %64 = bitcast %struct.lua_TValue* %62 to i64*, !dbg !2142
  %65 = load i64, i64* %63, align 8, !dbg !2142
  store i64 %65, i64* %64, align 8, !dbg !2142
  %66 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %59, i64 %60, i32 1, !dbg !2142
  %67 = load i32, i32* %66, align 8, !dbg !2142, !tbaa !382
  %68 = getelementptr inbounds %union.Closure, %union.Closure* %30, i64 0, i32 0, i32 8, i64 %60, i32 1, !dbg !2142
  store i32 %67, i32* %68, align 8, !dbg !2142, !tbaa !382
  %69 = load %struct.lua_TValue*, %struct.lua_TValue** %32, align 8, !dbg !2143, !tbaa !373
  %70 = add nsw i64 %58, -2, !dbg !2141
  %71 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %69, i64 %70, !dbg !2142
  %72 = getelementptr inbounds %union.Closure, %union.Closure* %30, i64 0, i32 0, i32 8, i64 %70, !dbg !2142
  %73 = bitcast %struct.lua_TValue* %71 to i64*, !dbg !2142
  %74 = bitcast %struct.lua_TValue* %72 to i64*, !dbg !2142
  %75 = load i64, i64* %73, align 8, !dbg !2142
  store i64 %75, i64* %74, align 8, !dbg !2142
  %76 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %69, i64 %70, i32 1, !dbg !2142
  %77 = load i32, i32* %76, align 8, !dbg !2142, !tbaa !382
  %78 = getelementptr inbounds %union.Closure, %union.Closure* %30, i64 0, i32 0, i32 8, i64 %70, i32 1, !dbg !2142
  store i32 %77, i32* %78, align 8, !dbg !2142, !tbaa !382
  %79 = icmp eq i64 %70, 0
  %80 = load %struct.lua_TValue*, %struct.lua_TValue** %32, align 8, !dbg !2143, !tbaa !373
  br i1 %79, label %81, label %57, !dbg !2140, !llvm.loop !2144

; <label>:81:                                     ; preds = %52, %57, %27
  %82 = phi %struct.lua_TValue* [ %36, %27 ], [ %53, %52 ], [ %80, %57 ], !dbg !2143
  %83 = bitcast %struct.lua_TValue* %82 to %union.Closure**, !dbg !2146
  store %union.Closure* %30, %union.Closure** %83, align 8, !dbg !2146, !tbaa !510
  %84 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %82, i64 0, i32 1, !dbg !2146
  store i32 6, i32* %84, align 8, !dbg !2146, !tbaa !382
  %85 = load %struct.lua_TValue*, %struct.lua_TValue** %32, align 8, !dbg !2147, !tbaa !373
  %86 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %85, i64 1, !dbg !2147
  store %struct.lua_TValue* %86, %struct.lua_TValue** %32, align 8, !dbg !2147, !tbaa !373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2149
  ret void, !dbg !2149
}

; Function Attrs: noredzone
declare hidden %union.Closure* @luaF_newCclosure(%struct.lua_State*, i32, %struct.Table*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @lua_pushboolean(%struct.lua_State* nocapture, i32) local_unnamed_addr #0 !dbg !2150 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2158
  %4 = load %struct.lua_TValue*, %struct.lua_TValue** %3, align 8, !dbg !2158, !tbaa !373
  %5 = icmp ne i32 %1, 0, !dbg !2158
  %6 = zext i1 %5 to i32, !dbg !2158
  %7 = bitcast %struct.lua_TValue* %4 to i32*, !dbg !2158
  store i32 %6, i32* %7, align 8, !dbg !2158, !tbaa !510
  %8 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %4, i64 0, i32 1, !dbg !2158
  store i32 1, i32* %8, align 8, !dbg !2158, !tbaa !382
  %9 = load %struct.lua_TValue*, %struct.lua_TValue** %3, align 8, !dbg !2159, !tbaa !373
  %10 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %9, i64 1, !dbg !2159
  store %struct.lua_TValue* %10, %struct.lua_TValue** %3, align 8, !dbg !2159, !tbaa !373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2161
  ret void, !dbg !2161
}

; Function Attrs: noredzone nounwind
define dso_local void @lua_pushlightuserdata(%struct.lua_State* nocapture, i8*) local_unnamed_addr #0 !dbg !2162 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2172
  %4 = load %struct.lua_TValue*, %struct.lua_TValue** %3, align 8, !dbg !2172, !tbaa !373
  %5 = bitcast %struct.lua_TValue* %4 to i8**, !dbg !2172
  store i8* %1, i8** %5, align 8, !dbg !2172, !tbaa !510
  %6 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %4, i64 0, i32 1, !dbg !2172
  store i32 2, i32* %6, align 8, !dbg !2172, !tbaa !382
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %3, align 8, !dbg !2173, !tbaa !373
  %8 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %7, i64 1, !dbg !2173
  store %struct.lua_TValue* %8, %struct.lua_TValue** %3, align 8, !dbg !2173, !tbaa !373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2175
  ret void, !dbg !2175
}

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_pushthread(%struct.lua_State*) local_unnamed_addr #0 !dbg !2176 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2182
  %3 = load %struct.lua_TValue*, %struct.lua_TValue** %2, align 8, !dbg !2182, !tbaa !373
  %4 = bitcast %struct.lua_TValue* %3 to %struct.lua_State**, !dbg !2182
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8, !dbg !2182, !tbaa !510
  %5 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3, i64 0, i32 1, !dbg !2182
  store i32 8, i32* %5, align 8, !dbg !2182, !tbaa !382
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %2, align 8, !dbg !2183, !tbaa !373
  %7 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 1, !dbg !2183
  store %struct.lua_TValue* %7, %struct.lua_TValue** %2, align 8, !dbg !2183, !tbaa !373
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !2185
  %9 = load %struct.global_State*, %struct.global_State** %8, align 8, !dbg !2185, !tbaa !482
  %10 = getelementptr inbounds %struct.global_State, %struct.global_State* %9, i64 0, i32 21, !dbg !2186
  %11 = load %struct.lua_State*, %struct.lua_State** %10, align 8, !dbg !2186, !tbaa !2187
  %12 = icmp eq %struct.lua_State* %11, %0, !dbg !2188
  %13 = zext i1 %12 to i32, !dbg !2188
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2189
  ret i32 %13, !dbg !2189
}

; Function Attrs: noredzone nounwind
define dso_local void @lua_gettable(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !2190 {
  %3 = icmp sgt i32 %1, 0, !dbg !2200
  br i1 %3, label %4, label %14, !dbg !2201

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !2202
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8, !dbg !2202, !tbaa !401
  %7 = add nsw i32 %1, -1, !dbg !2203
  %8 = sext i32 %7 to i64, !dbg !2204
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 %8, !dbg !2204
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2206
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !2206, !tbaa !373
  %12 = icmp ult %struct.lua_TValue* %9, %11, !dbg !2207
  %13 = select i1 %12, %struct.lua_TValue* %9, %struct.lua_TValue* @luaO_nilobject_, !dbg !2208
  br label %57

; <label>:14:                                     ; preds = %2
  %15 = icmp sgt i32 %1, -10000, !dbg !2209
  br i1 %15, label %16, label %21, !dbg !2210

; <label>:16:                                     ; preds = %14
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2211
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %17, align 8, !dbg !2211, !tbaa !373
  %19 = sext i32 %1 to i64, !dbg !2212
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 %19, !dbg !2212
  br label %57, !dbg !2213

; <label>:21:                                     ; preds = %14
  switch i32 %1, label %41 [
    i32 -10000, label %22
    i32 -10001, label %26
    i32 -10002, label %39
  ], !dbg !2214

; <label>:22:                                     ; preds = %21
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !2215
  %24 = load %struct.global_State*, %struct.global_State** %23, align 8, !dbg !2215, !tbaa !482
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %24, i64 0, i32 20, !dbg !2215
  br label %57, !dbg !2216

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2217
  %28 = load %struct.CallInfo*, %struct.CallInfo** %27, align 8, !dbg !2217, !tbaa !418
  %29 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %28, i64 0, i32 1, !dbg !2217
  %30 = bitcast %struct.lua_TValue** %29 to %struct.CClosure***, !dbg !2217
  %31 = load %struct.CClosure**, %struct.CClosure*** %30, align 8, !dbg !2217, !tbaa !600
  %32 = load %struct.CClosure*, %struct.CClosure** %31, align 8, !dbg !2217, !tbaa !510
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !2219
  %34 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %32, i64 0, i32 6, !dbg !2219
  %35 = bitcast %struct.Table** %34 to i64*, !dbg !2219
  %36 = load i64, i64* %35, align 8, !dbg !2219, !tbaa !510
  %37 = bitcast %struct.lua_TValue* %33 to i64*, !dbg !2219
  store i64 %36, i64* %37, align 8, !dbg !2219, !tbaa !510
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !2219
  store i32 5, i32* %38, align 8, !dbg !2219, !tbaa !382
  br label %57

; <label>:39:                                     ; preds = %21
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !2220
  br label %57, !dbg !2221

; <label>:41:                                     ; preds = %21
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2222
  %43 = load %struct.CallInfo*, %struct.CallInfo** %42, align 8, !dbg !2222, !tbaa !418
  %44 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %43, i64 0, i32 1, !dbg !2222
  %45 = bitcast %struct.lua_TValue** %44 to %struct.CClosure***, !dbg !2222
  %46 = load %struct.CClosure**, %struct.CClosure*** %45, align 8, !dbg !2222, !tbaa !600
  %47 = load %struct.CClosure*, %struct.CClosure** %46, align 8, !dbg !2222, !tbaa !510
  %48 = sub nsw i32 -10002, %1, !dbg !2224
  %49 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 4, !dbg !2225
  %50 = load i8, i8* %49, align 1, !dbg !2225, !tbaa !510
  %51 = zext i8 %50 to i32, !dbg !2226
  %52 = icmp sgt i32 %48, %51, !dbg !2227
  br i1 %52, label %57, label %53, !dbg !2228

; <label>:53:                                     ; preds = %41
  %54 = add nsw i32 %48, -1, !dbg !2229
  %55 = sext i32 %54 to i64, !dbg !2230
  %56 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 8, i64 %55, !dbg !2230
  br label %57, !dbg !2228

; <label>:57:                                     ; preds = %4, %16, %22, %26, %39, %41, %53
  %58 = phi %struct.lua_TValue* [ %13, %4 ], [ %20, %16 ], [ %40, %39 ], [ %33, %26 ], [ %25, %22 ], [ %56, %53 ], [ @luaO_nilobject_, %41 ], !dbg !2231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2232
  %59 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2234
  %60 = load %struct.lua_TValue*, %struct.lua_TValue** %59, align 8, !dbg !2234, !tbaa !373
  %61 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %60, i64 -1, !dbg !2235
  tail call void @luaV_gettable(%struct.lua_State* %0, %struct.lua_TValue* %58, %struct.lua_TValue* nonnull %61, %struct.lua_TValue* nonnull %61) #5, !dbg !2236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2237
  ret void, !dbg !2237
}

; Function Attrs: noredzone
declare hidden void @luaV_gettable(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @lua_getfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #0 !dbg !2238 {
  %4 = alloca %struct.lua_TValue, align 8
  %5 = bitcast %struct.lua_TValue* %4 to i8*, !dbg !2252
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #4, !dbg !2252
  %6 = icmp sgt i32 %1, 0, !dbg !2256
  br i1 %6, label %7, label %17, !dbg !2257

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !2258
  %9 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8, !dbg !2258, !tbaa !401
  %10 = add nsw i32 %1, -1, !dbg !2259
  %11 = sext i32 %10 to i64, !dbg !2260
  %12 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %9, i64 %11, !dbg !2260
  %13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2262
  %14 = load %struct.lua_TValue*, %struct.lua_TValue** %13, align 8, !dbg !2262, !tbaa !373
  %15 = icmp ult %struct.lua_TValue* %12, %14, !dbg !2263
  %16 = select i1 %15, %struct.lua_TValue* %12, %struct.lua_TValue* @luaO_nilobject_, !dbg !2264
  br label %60

; <label>:17:                                     ; preds = %3
  %18 = icmp sgt i32 %1, -10000, !dbg !2265
  br i1 %18, label %19, label %24, !dbg !2266

; <label>:19:                                     ; preds = %17
  %20 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2267
  %21 = load %struct.lua_TValue*, %struct.lua_TValue** %20, align 8, !dbg !2267, !tbaa !373
  %22 = sext i32 %1 to i64, !dbg !2268
  %23 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %21, i64 %22, !dbg !2268
  br label %60, !dbg !2269

; <label>:24:                                     ; preds = %17
  switch i32 %1, label %44 [
    i32 -10000, label %25
    i32 -10001, label %29
    i32 -10002, label %42
  ], !dbg !2270

; <label>:25:                                     ; preds = %24
  %26 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !2271
  %27 = load %struct.global_State*, %struct.global_State** %26, align 8, !dbg !2271, !tbaa !482
  %28 = getelementptr inbounds %struct.global_State, %struct.global_State* %27, i64 0, i32 20, !dbg !2271
  br label %60, !dbg !2272

; <label>:29:                                     ; preds = %24
  %30 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2273
  %31 = load %struct.CallInfo*, %struct.CallInfo** %30, align 8, !dbg !2273, !tbaa !418
  %32 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %31, i64 0, i32 1, !dbg !2273
  %33 = bitcast %struct.lua_TValue** %32 to %struct.CClosure***, !dbg !2273
  %34 = load %struct.CClosure**, %struct.CClosure*** %33, align 8, !dbg !2273, !tbaa !600
  %35 = load %struct.CClosure*, %struct.CClosure** %34, align 8, !dbg !2273, !tbaa !510
  %36 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !2275
  %37 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %35, i64 0, i32 6, !dbg !2275
  %38 = bitcast %struct.Table** %37 to i64*, !dbg !2275
  %39 = load i64, i64* %38, align 8, !dbg !2275, !tbaa !510
  %40 = bitcast %struct.lua_TValue* %36 to i64*, !dbg !2275
  store i64 %39, i64* %40, align 8, !dbg !2275, !tbaa !510
  %41 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !2275
  store i32 5, i32* %41, align 8, !dbg !2275, !tbaa !382
  br label %60

; <label>:42:                                     ; preds = %24
  %43 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !2276
  br label %60, !dbg !2277

; <label>:44:                                     ; preds = %24
  %45 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2278
  %46 = load %struct.CallInfo*, %struct.CallInfo** %45, align 8, !dbg !2278, !tbaa !418
  %47 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %46, i64 0, i32 1, !dbg !2278
  %48 = bitcast %struct.lua_TValue** %47 to %struct.CClosure***, !dbg !2278
  %49 = load %struct.CClosure**, %struct.CClosure*** %48, align 8, !dbg !2278, !tbaa !600
  %50 = load %struct.CClosure*, %struct.CClosure** %49, align 8, !dbg !2278, !tbaa !510
  %51 = sub nsw i32 -10002, %1, !dbg !2280
  %52 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %50, i64 0, i32 4, !dbg !2281
  %53 = load i8, i8* %52, align 1, !dbg !2281, !tbaa !510
  %54 = zext i8 %53 to i32, !dbg !2282
  %55 = icmp sgt i32 %51, %54, !dbg !2283
  br i1 %55, label %60, label %56, !dbg !2284

; <label>:56:                                     ; preds = %44
  %57 = add nsw i32 %51, -1, !dbg !2285
  %58 = sext i32 %57 to i64, !dbg !2286
  %59 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %50, i64 0, i32 8, i64 %58, !dbg !2286
  br label %60, !dbg !2284

; <label>:60:                                     ; preds = %7, %19, %25, %29, %42, %44, %56
  %61 = phi %struct.lua_TValue* [ %16, %7 ], [ %23, %19 ], [ %43, %42 ], [ %36, %29 ], [ %28, %25 ], [ %59, %56 ], [ @luaO_nilobject_, %44 ], !dbg !2287
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2288
  %62 = tail call i64 @strlen(i8* %2) #5, !dbg !2290
  %63 = tail call %union.TString* @luaS_newlstr(%struct.lua_State* %0, i8* %2, i64 %62) #5, !dbg !2290
  %64 = bitcast %struct.lua_TValue* %4 to %union.TString**, !dbg !2290
  store %union.TString* %63, %union.TString** %64, align 8, !dbg !2290, !tbaa !510
  %65 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %4, i64 0, i32 1, !dbg !2290
  store i32 4, i32* %65, align 8, !dbg !2290, !tbaa !382
  %66 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2291
  %67 = load %struct.lua_TValue*, %struct.lua_TValue** %66, align 8, !dbg !2291, !tbaa !373
  call void @luaV_gettable(%struct.lua_State* %0, %struct.lua_TValue* %61, %struct.lua_TValue* nonnull %4, %struct.lua_TValue* %67) #5, !dbg !2293
  %68 = load %struct.lua_TValue*, %struct.lua_TValue** %66, align 8, !dbg !2294, !tbaa !373
  %69 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %68, i64 1, !dbg !2294
  store %struct.lua_TValue* %69, %struct.lua_TValue** %66, align 8, !dbg !2294, !tbaa !373
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #4, !dbg !2296
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2296
  ret void, !dbg !2296
}

; Function Attrs: noredzone nounwind
define dso_local void @lua_rawget(%struct.lua_State* nocapture, i32) local_unnamed_addr #0 !dbg !2297 {
  %3 = icmp sgt i32 %1, 0, !dbg !2310
  br i1 %3, label %4, label %14, !dbg !2311

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !2312
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8, !dbg !2312, !tbaa !401
  %7 = add nsw i32 %1, -1, !dbg !2313
  %8 = sext i32 %7 to i64, !dbg !2314
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 %8, !dbg !2314
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2316
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !2316, !tbaa !373
  %12 = icmp ult %struct.lua_TValue* %9, %11, !dbg !2317
  %13 = select i1 %12, %struct.lua_TValue* %9, %struct.lua_TValue* @luaO_nilobject_, !dbg !2318
  br label %57

; <label>:14:                                     ; preds = %2
  %15 = icmp sgt i32 %1, -10000, !dbg !2319
  br i1 %15, label %16, label %21, !dbg !2320

; <label>:16:                                     ; preds = %14
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2321
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %17, align 8, !dbg !2321, !tbaa !373
  %19 = sext i32 %1 to i64, !dbg !2322
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 %19, !dbg !2322
  br label %57, !dbg !2323

; <label>:21:                                     ; preds = %14
  switch i32 %1, label %41 [
    i32 -10000, label %22
    i32 -10001, label %26
    i32 -10002, label %39
  ], !dbg !2324

; <label>:22:                                     ; preds = %21
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !2325
  %24 = load %struct.global_State*, %struct.global_State** %23, align 8, !dbg !2325, !tbaa !482
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %24, i64 0, i32 20, !dbg !2325
  br label %57, !dbg !2326

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2327
  %28 = load %struct.CallInfo*, %struct.CallInfo** %27, align 8, !dbg !2327, !tbaa !418
  %29 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %28, i64 0, i32 1, !dbg !2327
  %30 = bitcast %struct.lua_TValue** %29 to %struct.CClosure***, !dbg !2327
  %31 = load %struct.CClosure**, %struct.CClosure*** %30, align 8, !dbg !2327, !tbaa !600
  %32 = load %struct.CClosure*, %struct.CClosure** %31, align 8, !dbg !2327, !tbaa !510
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !2329
  %34 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %32, i64 0, i32 6, !dbg !2329
  %35 = bitcast %struct.Table** %34 to i64*, !dbg !2329
  %36 = load i64, i64* %35, align 8, !dbg !2329, !tbaa !510
  %37 = bitcast %struct.lua_TValue* %33 to i64*, !dbg !2329
  store i64 %36, i64* %37, align 8, !dbg !2329, !tbaa !510
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !2329
  store i32 5, i32* %38, align 8, !dbg !2329, !tbaa !382
  br label %57

; <label>:39:                                     ; preds = %21
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !2330
  br label %57, !dbg !2331

; <label>:41:                                     ; preds = %21
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2332
  %43 = load %struct.CallInfo*, %struct.CallInfo** %42, align 8, !dbg !2332, !tbaa !418
  %44 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %43, i64 0, i32 1, !dbg !2332
  %45 = bitcast %struct.lua_TValue** %44 to %struct.CClosure***, !dbg !2332
  %46 = load %struct.CClosure**, %struct.CClosure*** %45, align 8, !dbg !2332, !tbaa !600
  %47 = load %struct.CClosure*, %struct.CClosure** %46, align 8, !dbg !2332, !tbaa !510
  %48 = sub nsw i32 -10002, %1, !dbg !2334
  %49 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 4, !dbg !2335
  %50 = load i8, i8* %49, align 1, !dbg !2335, !tbaa !510
  %51 = zext i8 %50 to i32, !dbg !2336
  %52 = icmp sgt i32 %48, %51, !dbg !2337
  br i1 %52, label %57, label %53, !dbg !2338

; <label>:53:                                     ; preds = %41
  %54 = add nsw i32 %48, -1, !dbg !2339
  %55 = sext i32 %54 to i64, !dbg !2340
  %56 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 8, i64 %55, !dbg !2340
  br label %57, !dbg !2338

; <label>:57:                                     ; preds = %4, %16, %22, %26, %39, %41, %53
  %58 = phi %struct.lua_TValue* [ %13, %4 ], [ %20, %16 ], [ %40, %39 ], [ %33, %26 ], [ %25, %22 ], [ %56, %53 ], [ @luaO_nilobject_, %41 ], !dbg !2341
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2342
  %59 = bitcast %struct.lua_TValue* %58 to %struct.Table**, !dbg !2344
  %60 = load %struct.Table*, %struct.Table** %59, align 8, !dbg !2344, !tbaa !510
  %61 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2344
  %62 = load %struct.lua_TValue*, %struct.lua_TValue** %61, align 8, !dbg !2344, !tbaa !373
  %63 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %62, i64 -1, !dbg !2344
  %64 = tail call %struct.lua_TValue* @luaH_get(%struct.Table* %60, %struct.lua_TValue* nonnull %63) #5, !dbg !2344
  %65 = load %struct.lua_TValue*, %struct.lua_TValue** %61, align 8, !dbg !2344, !tbaa !373
  %66 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %65, i64 -1, !dbg !2344
  %67 = bitcast %struct.lua_TValue* %64 to i64*, !dbg !2344
  %68 = bitcast %struct.lua_TValue* %66 to i64*, !dbg !2344
  %69 = load i64, i64* %67, align 8, !dbg !2344
  store i64 %69, i64* %68, align 8, !dbg !2344
  %70 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %64, i64 0, i32 1, !dbg !2344
  %71 = load i32, i32* %70, align 8, !dbg !2344, !tbaa !382
  %72 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %65, i64 -1, i32 1, !dbg !2344
  store i32 %71, i32* %72, align 8, !dbg !2344, !tbaa !382
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2345
  ret void, !dbg !2345
}

; Function Attrs: noredzone
declare hidden %struct.lua_TValue* @luaH_get(%struct.Table*, %struct.lua_TValue*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @lua_rawgeti(%struct.lua_State* nocapture, i32, i32) local_unnamed_addr #0 !dbg !2346 {
  %4 = icmp sgt i32 %1, 0, !dbg !2363
  br i1 %4, label %5, label %15, !dbg !2364

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !2365
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8, !dbg !2365, !tbaa !401
  %8 = add nsw i32 %1, -1, !dbg !2366
  %9 = sext i32 %8 to i64, !dbg !2367
  %10 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %7, i64 %9, !dbg !2367
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2369
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %11, align 8, !dbg !2369, !tbaa !373
  %13 = icmp ult %struct.lua_TValue* %10, %12, !dbg !2370
  %14 = select i1 %13, %struct.lua_TValue* %10, %struct.lua_TValue* @luaO_nilobject_, !dbg !2371
  br label %58

; <label>:15:                                     ; preds = %3
  %16 = icmp sgt i32 %1, -10000, !dbg !2372
  br i1 %16, label %17, label %22, !dbg !2373

; <label>:17:                                     ; preds = %15
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2374
  %19 = load %struct.lua_TValue*, %struct.lua_TValue** %18, align 8, !dbg !2374, !tbaa !373
  %20 = sext i32 %1 to i64, !dbg !2375
  %21 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %19, i64 %20, !dbg !2375
  br label %58, !dbg !2376

; <label>:22:                                     ; preds = %15
  switch i32 %1, label %42 [
    i32 -10000, label %23
    i32 -10001, label %27
    i32 -10002, label %40
  ], !dbg !2377

; <label>:23:                                     ; preds = %22
  %24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !2378
  %25 = load %struct.global_State*, %struct.global_State** %24, align 8, !dbg !2378, !tbaa !482
  %26 = getelementptr inbounds %struct.global_State, %struct.global_State* %25, i64 0, i32 20, !dbg !2378
  br label %58, !dbg !2379

; <label>:27:                                     ; preds = %22
  %28 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2380
  %29 = load %struct.CallInfo*, %struct.CallInfo** %28, align 8, !dbg !2380, !tbaa !418
  %30 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %29, i64 0, i32 1, !dbg !2380
  %31 = bitcast %struct.lua_TValue** %30 to %struct.CClosure***, !dbg !2380
  %32 = load %struct.CClosure**, %struct.CClosure*** %31, align 8, !dbg !2380, !tbaa !600
  %33 = load %struct.CClosure*, %struct.CClosure** %32, align 8, !dbg !2380, !tbaa !510
  %34 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !2382
  %35 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %33, i64 0, i32 6, !dbg !2382
  %36 = bitcast %struct.Table** %35 to i64*, !dbg !2382
  %37 = load i64, i64* %36, align 8, !dbg !2382, !tbaa !510
  %38 = bitcast %struct.lua_TValue* %34 to i64*, !dbg !2382
  store i64 %37, i64* %38, align 8, !dbg !2382, !tbaa !510
  %39 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !2382
  store i32 5, i32* %39, align 8, !dbg !2382, !tbaa !382
  br label %58

; <label>:40:                                     ; preds = %22
  %41 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !2383
  br label %58, !dbg !2384

; <label>:42:                                     ; preds = %22
  %43 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2385
  %44 = load %struct.CallInfo*, %struct.CallInfo** %43, align 8, !dbg !2385, !tbaa !418
  %45 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %44, i64 0, i32 1, !dbg !2385
  %46 = bitcast %struct.lua_TValue** %45 to %struct.CClosure***, !dbg !2385
  %47 = load %struct.CClosure**, %struct.CClosure*** %46, align 8, !dbg !2385, !tbaa !600
  %48 = load %struct.CClosure*, %struct.CClosure** %47, align 8, !dbg !2385, !tbaa !510
  %49 = sub nsw i32 -10002, %1, !dbg !2387
  %50 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %48, i64 0, i32 4, !dbg !2388
  %51 = load i8, i8* %50, align 1, !dbg !2388, !tbaa !510
  %52 = zext i8 %51 to i32, !dbg !2389
  %53 = icmp sgt i32 %49, %52, !dbg !2390
  br i1 %53, label %58, label %54, !dbg !2391

; <label>:54:                                     ; preds = %42
  %55 = add nsw i32 %49, -1, !dbg !2392
  %56 = sext i32 %55 to i64, !dbg !2393
  %57 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %48, i64 0, i32 8, i64 %56, !dbg !2393
  br label %58, !dbg !2391

; <label>:58:                                     ; preds = %5, %17, %23, %27, %40, %42, %54
  %59 = phi %struct.lua_TValue* [ %14, %5 ], [ %21, %17 ], [ %41, %40 ], [ %34, %27 ], [ %26, %23 ], [ %57, %54 ], [ @luaO_nilobject_, %42 ], !dbg !2394
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2395
  %60 = bitcast %struct.lua_TValue* %59 to %struct.Table**, !dbg !2397
  %61 = load %struct.Table*, %struct.Table** %60, align 8, !dbg !2397, !tbaa !510
  %62 = tail call %struct.lua_TValue* @luaH_getnum(%struct.Table* %61, i32 %2) #5, !dbg !2397
  %63 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2397
  %64 = load %struct.lua_TValue*, %struct.lua_TValue** %63, align 8, !dbg !2397, !tbaa !373
  %65 = bitcast %struct.lua_TValue* %62 to i64*, !dbg !2397
  %66 = bitcast %struct.lua_TValue* %64 to i64*, !dbg !2397
  %67 = load i64, i64* %65, align 8, !dbg !2397
  store i64 %67, i64* %66, align 8, !dbg !2397
  %68 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %62, i64 0, i32 1, !dbg !2397
  %69 = load i32, i32* %68, align 8, !dbg !2397, !tbaa !382
  %70 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %64, i64 0, i32 1, !dbg !2397
  store i32 %69, i32* %70, align 8, !dbg !2397, !tbaa !382
  %71 = load %struct.lua_TValue*, %struct.lua_TValue** %63, align 8, !dbg !2398, !tbaa !373
  %72 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %71, i64 1, !dbg !2398
  store %struct.lua_TValue* %72, %struct.lua_TValue** %63, align 8, !dbg !2398, !tbaa !373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2400
  ret void, !dbg !2400
}

; Function Attrs: noredzone
declare hidden %struct.lua_TValue* @luaH_getnum(%struct.Table*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @lua_createtable(%struct.lua_State*, i32, i32) local_unnamed_addr #0 !dbg !2401 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !2411
  %5 = load %struct.global_State*, %struct.global_State** %4, align 8, !dbg !2411, !tbaa !482
  %6 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 14, !dbg !2411
  %7 = load i64, i64* %6, align 8, !dbg !2411, !tbaa !504
  %8 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 13, !dbg !2411
  %9 = load i64, i64* %8, align 8, !dbg !2411, !tbaa !505
  %10 = icmp ult i64 %7, %9, !dbg !2411
  br i1 %10, label %12, label %11, !dbg !2414

; <label>:11:                                     ; preds = %3
  tail call void @luaC_step(%struct.lua_State* nonnull %0) #5, !dbg !2411
  br label %12, !dbg !2411

; <label>:12:                                     ; preds = %3, %11
  %13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2415
  %14 = load %struct.lua_TValue*, %struct.lua_TValue** %13, align 8, !dbg !2415, !tbaa !373
  %15 = tail call %struct.Table* @luaH_new(%struct.lua_State* nonnull %0, i32 %1, i32 %2) #5, !dbg !2415
  %16 = bitcast %struct.lua_TValue* %14 to %struct.Table**, !dbg !2415
  store %struct.Table* %15, %struct.Table** %16, align 8, !dbg !2415, !tbaa !510
  %17 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %14, i64 0, i32 1, !dbg !2415
  store i32 5, i32* %17, align 8, !dbg !2415, !tbaa !382
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %13, align 8, !dbg !2416, !tbaa !373
  %19 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 1, !dbg !2416
  store %struct.lua_TValue* %19, %struct.lua_TValue** %13, align 8, !dbg !2416, !tbaa !373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2418
  ret void, !dbg !2418
}

; Function Attrs: noredzone
declare hidden %struct.Table* @luaH_new(%struct.lua_State*, i32, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_getmetatable(%struct.lua_State* nocapture, i32) local_unnamed_addr #0 !dbg !2419 {
  %3 = icmp sgt i32 %1, 0, !dbg !2436
  br i1 %3, label %4, label %14, !dbg !2437

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !2438
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8, !dbg !2438, !tbaa !401
  %7 = add nsw i32 %1, -1, !dbg !2439
  %8 = sext i32 %7 to i64, !dbg !2440
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 %8, !dbg !2440
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2442
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !2442, !tbaa !373
  %12 = icmp ult %struct.lua_TValue* %9, %11, !dbg !2443
  %13 = select i1 %12, %struct.lua_TValue* %9, %struct.lua_TValue* @luaO_nilobject_, !dbg !2444
  br label %57

; <label>:14:                                     ; preds = %2
  %15 = icmp sgt i32 %1, -10000, !dbg !2445
  br i1 %15, label %16, label %21, !dbg !2446

; <label>:16:                                     ; preds = %14
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2447
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %17, align 8, !dbg !2447, !tbaa !373
  %19 = sext i32 %1 to i64, !dbg !2448
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 %19, !dbg !2448
  br label %57, !dbg !2449

; <label>:21:                                     ; preds = %14
  switch i32 %1, label %41 [
    i32 -10000, label %22
    i32 -10001, label %26
    i32 -10002, label %39
  ], !dbg !2450

; <label>:22:                                     ; preds = %21
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !2451
  %24 = load %struct.global_State*, %struct.global_State** %23, align 8, !dbg !2451, !tbaa !482
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %24, i64 0, i32 20, !dbg !2451
  br label %57, !dbg !2452

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2453
  %28 = load %struct.CallInfo*, %struct.CallInfo** %27, align 8, !dbg !2453, !tbaa !418
  %29 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %28, i64 0, i32 1, !dbg !2453
  %30 = bitcast %struct.lua_TValue** %29 to %struct.CClosure***, !dbg !2453
  %31 = load %struct.CClosure**, %struct.CClosure*** %30, align 8, !dbg !2453, !tbaa !600
  %32 = load %struct.CClosure*, %struct.CClosure** %31, align 8, !dbg !2453, !tbaa !510
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !2455
  %34 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %32, i64 0, i32 6, !dbg !2455
  %35 = bitcast %struct.Table** %34 to i64*, !dbg !2455
  %36 = load i64, i64* %35, align 8, !dbg !2455, !tbaa !510
  %37 = bitcast %struct.lua_TValue* %33 to i64*, !dbg !2455
  store i64 %36, i64* %37, align 8, !dbg !2455, !tbaa !510
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !2455
  store i32 5, i32* %38, align 8, !dbg !2455, !tbaa !382
  br label %57

; <label>:39:                                     ; preds = %21
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !2456
  br label %57, !dbg !2457

; <label>:41:                                     ; preds = %21
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2458
  %43 = load %struct.CallInfo*, %struct.CallInfo** %42, align 8, !dbg !2458, !tbaa !418
  %44 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %43, i64 0, i32 1, !dbg !2458
  %45 = bitcast %struct.lua_TValue** %44 to %struct.CClosure***, !dbg !2458
  %46 = load %struct.CClosure**, %struct.CClosure*** %45, align 8, !dbg !2458, !tbaa !600
  %47 = load %struct.CClosure*, %struct.CClosure** %46, align 8, !dbg !2458, !tbaa !510
  %48 = sub nsw i32 -10002, %1, !dbg !2460
  %49 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 4, !dbg !2461
  %50 = load i8, i8* %49, align 1, !dbg !2461, !tbaa !510
  %51 = zext i8 %50 to i32, !dbg !2462
  %52 = icmp sgt i32 %48, %51, !dbg !2463
  br i1 %52, label %57, label %53, !dbg !2464

; <label>:53:                                     ; preds = %41
  %54 = add nsw i32 %48, -1, !dbg !2465
  %55 = sext i32 %54 to i64, !dbg !2466
  %56 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 8, i64 %55, !dbg !2466
  br label %57, !dbg !2464

; <label>:57:                                     ; preds = %4, %16, %22, %26, %39, %41, %53
  %58 = phi %struct.lua_TValue* [ %13, %4 ], [ %20, %16 ], [ %40, %39 ], [ %33, %26 ], [ %25, %22 ], [ %56, %53 ], [ @luaO_nilobject_, %41 ], !dbg !2467
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2468
  %59 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i64 0, i32 1, !dbg !2470
  %60 = load i32, i32* %59, align 8, !dbg !2470, !tbaa !382
  switch i32 %60, label %69 [
    i32 5, label %61
    i32 7, label %65
  ], !dbg !2471

; <label>:61:                                     ; preds = %57
  %62 = bitcast %struct.lua_TValue* %58 to %struct.Table**, !dbg !2472
  %63 = load %struct.Table*, %struct.Table** %62, align 8, !dbg !2472, !tbaa !510
  %64 = getelementptr inbounds %struct.Table, %struct.Table* %63, i64 0, i32 5, !dbg !2474
  br label %74, !dbg !2475

; <label>:65:                                     ; preds = %57
  %66 = bitcast %struct.lua_TValue* %58 to %struct.anon.2**, !dbg !2476
  %67 = load %struct.anon.2*, %struct.anon.2** %66, align 8, !dbg !2476, !tbaa !510
  %68 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %67, i64 0, i32 3, !dbg !2477
  br label %74, !dbg !2478

; <label>:69:                                     ; preds = %57
  %70 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !2479
  %71 = load %struct.global_State*, %struct.global_State** %70, align 8, !dbg !2479, !tbaa !482
  %72 = sext i32 %60 to i64, !dbg !2479
  %73 = getelementptr inbounds %struct.global_State, %struct.global_State* %71, i64 0, i32 23, i64 %72, !dbg !2479
  br label %74, !dbg !2480

; <label>:74:                                     ; preds = %69, %65, %61
  %75 = phi %struct.Table** [ %73, %69 ], [ %68, %65 ], [ %64, %61 ]
  %76 = load %struct.Table*, %struct.Table** %75, align 8, !dbg !2481, !tbaa !510
  %77 = icmp eq %struct.Table* %76, null, !dbg !2482
  br i1 %77, label %85, label %78, !dbg !2483

; <label>:78:                                     ; preds = %74
  %79 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2484
  %80 = load %struct.lua_TValue*, %struct.lua_TValue** %79, align 8, !dbg !2484, !tbaa !373
  %81 = bitcast %struct.lua_TValue* %80 to %struct.Table**, !dbg !2484
  store %struct.Table* %76, %struct.Table** %81, align 8, !dbg !2484, !tbaa !510
  %82 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %80, i64 0, i32 1, !dbg !2484
  store i32 5, i32* %82, align 8, !dbg !2484, !tbaa !382
  %83 = load %struct.lua_TValue*, %struct.lua_TValue** %79, align 8, !dbg !2485, !tbaa !373
  %84 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %83, i64 1, !dbg !2485
  store %struct.lua_TValue* %84, %struct.lua_TValue** %79, align 8, !dbg !2485, !tbaa !373
  br label %85

; <label>:85:                                     ; preds = %74, %78
  %86 = phi i32 [ 1, %78 ], [ 0, %74 ], !dbg !2488
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2489
  ret i32 %86, !dbg !2489
}

; Function Attrs: noredzone nounwind
define dso_local void @lua_getfenv(%struct.lua_State* nocapture, i32) local_unnamed_addr #0 !dbg !2490 {
  %3 = icmp sgt i32 %1, 0, !dbg !2508
  br i1 %3, label %4, label %14, !dbg !2509

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !2510
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8, !dbg !2510, !tbaa !401
  %7 = add nsw i32 %1, -1, !dbg !2511
  %8 = sext i32 %7 to i64, !dbg !2512
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 %8, !dbg !2512
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2514
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !2514, !tbaa !373
  %12 = icmp ult %struct.lua_TValue* %9, %11, !dbg !2515
  %13 = select i1 %12, %struct.lua_TValue* %9, %struct.lua_TValue* @luaO_nilobject_, !dbg !2516
  br label %57

; <label>:14:                                     ; preds = %2
  %15 = icmp sgt i32 %1, -10000, !dbg !2517
  br i1 %15, label %16, label %21, !dbg !2518

; <label>:16:                                     ; preds = %14
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2519
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %17, align 8, !dbg !2519, !tbaa !373
  %19 = sext i32 %1 to i64, !dbg !2520
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 %19, !dbg !2520
  br label %57, !dbg !2521

; <label>:21:                                     ; preds = %14
  switch i32 %1, label %41 [
    i32 -10000, label %22
    i32 -10001, label %26
    i32 -10002, label %39
  ], !dbg !2522

; <label>:22:                                     ; preds = %21
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !2523
  %24 = load %struct.global_State*, %struct.global_State** %23, align 8, !dbg !2523, !tbaa !482
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %24, i64 0, i32 20, !dbg !2523
  br label %57, !dbg !2524

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2525
  %28 = load %struct.CallInfo*, %struct.CallInfo** %27, align 8, !dbg !2525, !tbaa !418
  %29 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %28, i64 0, i32 1, !dbg !2525
  %30 = bitcast %struct.lua_TValue** %29 to %struct.CClosure***, !dbg !2525
  %31 = load %struct.CClosure**, %struct.CClosure*** %30, align 8, !dbg !2525, !tbaa !600
  %32 = load %struct.CClosure*, %struct.CClosure** %31, align 8, !dbg !2525, !tbaa !510
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !2527
  %34 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %32, i64 0, i32 6, !dbg !2527
  %35 = bitcast %struct.Table** %34 to i64*, !dbg !2527
  %36 = load i64, i64* %35, align 8, !dbg !2527, !tbaa !510
  %37 = bitcast %struct.lua_TValue* %33 to i64*, !dbg !2527
  store i64 %36, i64* %37, align 8, !dbg !2527, !tbaa !510
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !2527
  store i32 5, i32* %38, align 8, !dbg !2527, !tbaa !382
  br label %57

; <label>:39:                                     ; preds = %21
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !2528
  br label %57, !dbg !2529

; <label>:41:                                     ; preds = %21
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2530
  %43 = load %struct.CallInfo*, %struct.CallInfo** %42, align 8, !dbg !2530, !tbaa !418
  %44 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %43, i64 0, i32 1, !dbg !2530
  %45 = bitcast %struct.lua_TValue** %44 to %struct.CClosure***, !dbg !2530
  %46 = load %struct.CClosure**, %struct.CClosure*** %45, align 8, !dbg !2530, !tbaa !600
  %47 = load %struct.CClosure*, %struct.CClosure** %46, align 8, !dbg !2530, !tbaa !510
  %48 = sub nsw i32 -10002, %1, !dbg !2532
  %49 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 4, !dbg !2533
  %50 = load i8, i8* %49, align 1, !dbg !2533, !tbaa !510
  %51 = zext i8 %50 to i32, !dbg !2534
  %52 = icmp sgt i32 %48, %51, !dbg !2535
  br i1 %52, label %57, label %53, !dbg !2536

; <label>:53:                                     ; preds = %41
  %54 = add nsw i32 %48, -1, !dbg !2537
  %55 = sext i32 %54 to i64, !dbg !2538
  %56 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 8, i64 %55, !dbg !2538
  br label %57, !dbg !2536

; <label>:57:                                     ; preds = %4, %16, %22, %26, %39, %41, %53
  %58 = phi %struct.lua_TValue* [ %13, %4 ], [ %20, %16 ], [ %40, %39 ], [ %33, %26 ], [ %25, %22 ], [ %56, %53 ], [ @luaO_nilobject_, %41 ], !dbg !2539
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2540
  %59 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i64 0, i32 1, !dbg !2542
  %60 = load i32, i32* %59, align 8, !dbg !2542, !tbaa !382
  switch i32 %60, label %90 [
    i32 6, label %61
    i32 7, label %70
    i32 8, label %79
  ], !dbg !2543

; <label>:61:                                     ; preds = %57
  %62 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2544
  %63 = load %struct.lua_TValue*, %struct.lua_TValue** %62, align 8, !dbg !2544, !tbaa !373
  %64 = bitcast %struct.lua_TValue* %58 to %struct.CClosure**, !dbg !2544
  %65 = load %struct.CClosure*, %struct.CClosure** %64, align 8, !dbg !2544, !tbaa !510
  %66 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %65, i64 0, i32 6, !dbg !2544
  %67 = bitcast %struct.Table** %66 to i64*, !dbg !2544
  %68 = load i64, i64* %67, align 8, !dbg !2544, !tbaa !510
  %69 = bitcast %struct.lua_TValue* %63 to i64*, !dbg !2544
  store i64 %68, i64* %69, align 8, !dbg !2544, !tbaa !510
  br label %93, !dbg !2545

; <label>:70:                                     ; preds = %57
  %71 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2546
  %72 = load %struct.lua_TValue*, %struct.lua_TValue** %71, align 8, !dbg !2546, !tbaa !373
  %73 = bitcast %struct.lua_TValue* %58 to %struct.anon.2**, !dbg !2546
  %74 = load %struct.anon.2*, %struct.anon.2** %73, align 8, !dbg !2546, !tbaa !510
  %75 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %74, i64 0, i32 4, !dbg !2546
  %76 = bitcast %struct.Table** %75 to i64*, !dbg !2546
  %77 = load i64, i64* %76, align 8, !dbg !2546, !tbaa !510
  %78 = bitcast %struct.lua_TValue* %72 to i64*, !dbg !2546
  store i64 %77, i64* %78, align 8, !dbg !2546, !tbaa !510
  br label %93, !dbg !2547

; <label>:79:                                     ; preds = %57
  %80 = bitcast %struct.lua_TValue* %58 to %struct.lua_State**, !dbg !2548
  %81 = load %struct.lua_State*, %struct.lua_State** %80, align 8, !dbg !2548, !tbaa !510
  %82 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %81, i64 0, i32 22, !dbg !2548
  %83 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2548
  %84 = load %struct.lua_TValue*, %struct.lua_TValue** %83, align 8, !dbg !2548, !tbaa !373
  %85 = bitcast %struct.lua_TValue* %82 to i64*, !dbg !2548
  %86 = bitcast %struct.lua_TValue* %84 to i64*, !dbg !2548
  %87 = load i64, i64* %85, align 8, !dbg !2548
  store i64 %87, i64* %86, align 8, !dbg !2548
  %88 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %81, i64 0, i32 22, i32 1, !dbg !2548
  %89 = load i32, i32* %88, align 8, !dbg !2548, !tbaa !382
  br label %93, !dbg !2549

; <label>:90:                                     ; preds = %57
  %91 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2550
  %92 = load %struct.lua_TValue*, %struct.lua_TValue** %91, align 8, !dbg !2550, !tbaa !373
  br label %93, !dbg !2551

; <label>:93:                                     ; preds = %90, %79, %70, %61
  %94 = phi %struct.lua_TValue* [ %92, %90 ], [ %84, %79 ], [ %72, %70 ], [ %63, %61 ]
  %95 = phi i32 [ 0, %90 ], [ %89, %79 ], [ 5, %70 ], [ 5, %61 ]
  %96 = phi %struct.lua_TValue** [ %91, %90 ], [ %83, %79 ], [ %71, %70 ], [ %62, %61 ], !dbg !2552
  %97 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %94, i64 0, i32 1, !dbg !2554
  store i32 %95, i32* %97, align 8, !dbg !2554, !tbaa !382
  %98 = load %struct.lua_TValue*, %struct.lua_TValue** %96, align 8, !dbg !2552, !tbaa !373
  %99 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %98, i64 1, !dbg !2552
  store %struct.lua_TValue* %99, %struct.lua_TValue** %96, align 8, !dbg !2552, !tbaa !373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2555
  ret void, !dbg !2555
}

; Function Attrs: noredzone nounwind
define dso_local void @lua_settable(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !2556 {
  %3 = icmp sgt i32 %1, 0, !dbg !2566
  br i1 %3, label %4, label %14, !dbg !2567

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !2568
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8, !dbg !2568, !tbaa !401
  %7 = add nsw i32 %1, -1, !dbg !2569
  %8 = sext i32 %7 to i64, !dbg !2570
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 %8, !dbg !2570
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2572
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !2572, !tbaa !373
  %12 = icmp ult %struct.lua_TValue* %9, %11, !dbg !2573
  %13 = select i1 %12, %struct.lua_TValue* %9, %struct.lua_TValue* @luaO_nilobject_, !dbg !2574
  br label %57

; <label>:14:                                     ; preds = %2
  %15 = icmp sgt i32 %1, -10000, !dbg !2575
  br i1 %15, label %16, label %21, !dbg !2576

; <label>:16:                                     ; preds = %14
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2577
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %17, align 8, !dbg !2577, !tbaa !373
  %19 = sext i32 %1 to i64, !dbg !2578
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 %19, !dbg !2578
  br label %57, !dbg !2579

; <label>:21:                                     ; preds = %14
  switch i32 %1, label %41 [
    i32 -10000, label %22
    i32 -10001, label %26
    i32 -10002, label %39
  ], !dbg !2580

; <label>:22:                                     ; preds = %21
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !2581
  %24 = load %struct.global_State*, %struct.global_State** %23, align 8, !dbg !2581, !tbaa !482
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %24, i64 0, i32 20, !dbg !2581
  br label %57, !dbg !2582

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2583
  %28 = load %struct.CallInfo*, %struct.CallInfo** %27, align 8, !dbg !2583, !tbaa !418
  %29 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %28, i64 0, i32 1, !dbg !2583
  %30 = bitcast %struct.lua_TValue** %29 to %struct.CClosure***, !dbg !2583
  %31 = load %struct.CClosure**, %struct.CClosure*** %30, align 8, !dbg !2583, !tbaa !600
  %32 = load %struct.CClosure*, %struct.CClosure** %31, align 8, !dbg !2583, !tbaa !510
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !2585
  %34 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %32, i64 0, i32 6, !dbg !2585
  %35 = bitcast %struct.Table** %34 to i64*, !dbg !2585
  %36 = load i64, i64* %35, align 8, !dbg !2585, !tbaa !510
  %37 = bitcast %struct.lua_TValue* %33 to i64*, !dbg !2585
  store i64 %36, i64* %37, align 8, !dbg !2585, !tbaa !510
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !2585
  store i32 5, i32* %38, align 8, !dbg !2585, !tbaa !382
  br label %57

; <label>:39:                                     ; preds = %21
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !2586
  br label %57, !dbg !2587

; <label>:41:                                     ; preds = %21
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2588
  %43 = load %struct.CallInfo*, %struct.CallInfo** %42, align 8, !dbg !2588, !tbaa !418
  %44 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %43, i64 0, i32 1, !dbg !2588
  %45 = bitcast %struct.lua_TValue** %44 to %struct.CClosure***, !dbg !2588
  %46 = load %struct.CClosure**, %struct.CClosure*** %45, align 8, !dbg !2588, !tbaa !600
  %47 = load %struct.CClosure*, %struct.CClosure** %46, align 8, !dbg !2588, !tbaa !510
  %48 = sub nsw i32 -10002, %1, !dbg !2590
  %49 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 4, !dbg !2591
  %50 = load i8, i8* %49, align 1, !dbg !2591, !tbaa !510
  %51 = zext i8 %50 to i32, !dbg !2592
  %52 = icmp sgt i32 %48, %51, !dbg !2593
  br i1 %52, label %57, label %53, !dbg !2594

; <label>:53:                                     ; preds = %41
  %54 = add nsw i32 %48, -1, !dbg !2595
  %55 = sext i32 %54 to i64, !dbg !2596
  %56 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 8, i64 %55, !dbg !2596
  br label %57, !dbg !2594

; <label>:57:                                     ; preds = %4, %16, %22, %26, %39, %41, %53
  %58 = phi %struct.lua_TValue* [ %13, %4 ], [ %20, %16 ], [ %40, %39 ], [ %33, %26 ], [ %25, %22 ], [ %56, %53 ], [ @luaO_nilobject_, %41 ], !dbg !2597
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2598
  %59 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2600
  %60 = load %struct.lua_TValue*, %struct.lua_TValue** %59, align 8, !dbg !2600, !tbaa !373
  %61 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %60, i64 -2, !dbg !2601
  %62 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %60, i64 -1, !dbg !2602
  tail call void @luaV_settable(%struct.lua_State* %0, %struct.lua_TValue* %58, %struct.lua_TValue* nonnull %61, %struct.lua_TValue* nonnull %62) #5, !dbg !2603
  %63 = load %struct.lua_TValue*, %struct.lua_TValue** %59, align 8, !dbg !2604, !tbaa !373
  %64 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %63, i64 -2, !dbg !2604
  store %struct.lua_TValue* %64, %struct.lua_TValue** %59, align 8, !dbg !2604, !tbaa !373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2605
  ret void, !dbg !2605
}

; Function Attrs: noredzone
declare hidden void @luaV_settable(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @lua_setfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #0 !dbg !2606 {
  %4 = alloca %struct.lua_TValue, align 8
  %5 = bitcast %struct.lua_TValue* %4 to i8*, !dbg !2618
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #4, !dbg !2618
  %6 = icmp sgt i32 %1, 0, !dbg !2622
  br i1 %6, label %7, label %17, !dbg !2623

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !2624
  %9 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8, !dbg !2624, !tbaa !401
  %10 = add nsw i32 %1, -1, !dbg !2625
  %11 = sext i32 %10 to i64, !dbg !2626
  %12 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %9, i64 %11, !dbg !2626
  %13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2628
  %14 = load %struct.lua_TValue*, %struct.lua_TValue** %13, align 8, !dbg !2628, !tbaa !373
  %15 = icmp ult %struct.lua_TValue* %12, %14, !dbg !2629
  %16 = select i1 %15, %struct.lua_TValue* %12, %struct.lua_TValue* @luaO_nilobject_, !dbg !2630
  br label %60

; <label>:17:                                     ; preds = %3
  %18 = icmp sgt i32 %1, -10000, !dbg !2631
  br i1 %18, label %19, label %24, !dbg !2632

; <label>:19:                                     ; preds = %17
  %20 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2633
  %21 = load %struct.lua_TValue*, %struct.lua_TValue** %20, align 8, !dbg !2633, !tbaa !373
  %22 = sext i32 %1 to i64, !dbg !2634
  %23 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %21, i64 %22, !dbg !2634
  br label %60, !dbg !2635

; <label>:24:                                     ; preds = %17
  switch i32 %1, label %44 [
    i32 -10000, label %25
    i32 -10001, label %29
    i32 -10002, label %42
  ], !dbg !2636

; <label>:25:                                     ; preds = %24
  %26 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !2637
  %27 = load %struct.global_State*, %struct.global_State** %26, align 8, !dbg !2637, !tbaa !482
  %28 = getelementptr inbounds %struct.global_State, %struct.global_State* %27, i64 0, i32 20, !dbg !2637
  br label %60, !dbg !2638

; <label>:29:                                     ; preds = %24
  %30 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2639
  %31 = load %struct.CallInfo*, %struct.CallInfo** %30, align 8, !dbg !2639, !tbaa !418
  %32 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %31, i64 0, i32 1, !dbg !2639
  %33 = bitcast %struct.lua_TValue** %32 to %struct.CClosure***, !dbg !2639
  %34 = load %struct.CClosure**, %struct.CClosure*** %33, align 8, !dbg !2639, !tbaa !600
  %35 = load %struct.CClosure*, %struct.CClosure** %34, align 8, !dbg !2639, !tbaa !510
  %36 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !2641
  %37 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %35, i64 0, i32 6, !dbg !2641
  %38 = bitcast %struct.Table** %37 to i64*, !dbg !2641
  %39 = load i64, i64* %38, align 8, !dbg !2641, !tbaa !510
  %40 = bitcast %struct.lua_TValue* %36 to i64*, !dbg !2641
  store i64 %39, i64* %40, align 8, !dbg !2641, !tbaa !510
  %41 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !2641
  store i32 5, i32* %41, align 8, !dbg !2641, !tbaa !382
  br label %60

; <label>:42:                                     ; preds = %24
  %43 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !2642
  br label %60, !dbg !2643

; <label>:44:                                     ; preds = %24
  %45 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2644
  %46 = load %struct.CallInfo*, %struct.CallInfo** %45, align 8, !dbg !2644, !tbaa !418
  %47 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %46, i64 0, i32 1, !dbg !2644
  %48 = bitcast %struct.lua_TValue** %47 to %struct.CClosure***, !dbg !2644
  %49 = load %struct.CClosure**, %struct.CClosure*** %48, align 8, !dbg !2644, !tbaa !600
  %50 = load %struct.CClosure*, %struct.CClosure** %49, align 8, !dbg !2644, !tbaa !510
  %51 = sub nsw i32 -10002, %1, !dbg !2646
  %52 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %50, i64 0, i32 4, !dbg !2647
  %53 = load i8, i8* %52, align 1, !dbg !2647, !tbaa !510
  %54 = zext i8 %53 to i32, !dbg !2648
  %55 = icmp sgt i32 %51, %54, !dbg !2649
  br i1 %55, label %60, label %56, !dbg !2650

; <label>:56:                                     ; preds = %44
  %57 = add nsw i32 %51, -1, !dbg !2651
  %58 = sext i32 %57 to i64, !dbg !2652
  %59 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %50, i64 0, i32 8, i64 %58, !dbg !2652
  br label %60, !dbg !2650

; <label>:60:                                     ; preds = %7, %19, %25, %29, %42, %44, %56
  %61 = phi %struct.lua_TValue* [ %16, %7 ], [ %23, %19 ], [ %43, %42 ], [ %36, %29 ], [ %28, %25 ], [ %59, %56 ], [ @luaO_nilobject_, %44 ], !dbg !2653
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2654
  %62 = tail call i64 @strlen(i8* %2) #5, !dbg !2656
  %63 = tail call %union.TString* @luaS_newlstr(%struct.lua_State* %0, i8* %2, i64 %62) #5, !dbg !2656
  %64 = bitcast %struct.lua_TValue* %4 to %union.TString**, !dbg !2656
  store %union.TString* %63, %union.TString** %64, align 8, !dbg !2656, !tbaa !510
  %65 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %4, i64 0, i32 1, !dbg !2656
  store i32 4, i32* %65, align 8, !dbg !2656, !tbaa !382
  %66 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2657
  %67 = load %struct.lua_TValue*, %struct.lua_TValue** %66, align 8, !dbg !2657, !tbaa !373
  %68 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %67, i64 -1, !dbg !2658
  call void @luaV_settable(%struct.lua_State* %0, %struct.lua_TValue* %61, %struct.lua_TValue* nonnull %4, %struct.lua_TValue* nonnull %68) #5, !dbg !2660
  %69 = load %struct.lua_TValue*, %struct.lua_TValue** %66, align 8, !dbg !2661, !tbaa !373
  %70 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %69, i64 -1, !dbg !2661
  store %struct.lua_TValue* %70, %struct.lua_TValue** %66, align 8, !dbg !2661, !tbaa !373
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #4, !dbg !2662
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2662
  ret void, !dbg !2662
}

; Function Attrs: noredzone nounwind
define dso_local void @lua_rawset(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !2663 {
  %3 = icmp sgt i32 %1, 0, !dbg !2676
  br i1 %3, label %4, label %14, !dbg !2677

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !2678
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8, !dbg !2678, !tbaa !401
  %7 = add nsw i32 %1, -1, !dbg !2679
  %8 = sext i32 %7 to i64, !dbg !2680
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 %8, !dbg !2680
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2682
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !2682, !tbaa !373
  %12 = icmp ult %struct.lua_TValue* %9, %11, !dbg !2683
  %13 = select i1 %12, %struct.lua_TValue* %9, %struct.lua_TValue* @luaO_nilobject_, !dbg !2684
  br label %57

; <label>:14:                                     ; preds = %2
  %15 = icmp sgt i32 %1, -10000, !dbg !2685
  br i1 %15, label %16, label %21, !dbg !2686

; <label>:16:                                     ; preds = %14
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2687
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %17, align 8, !dbg !2687, !tbaa !373
  %19 = sext i32 %1 to i64, !dbg !2688
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 %19, !dbg !2688
  br label %57, !dbg !2689

; <label>:21:                                     ; preds = %14
  switch i32 %1, label %41 [
    i32 -10000, label %22
    i32 -10001, label %26
    i32 -10002, label %39
  ], !dbg !2690

; <label>:22:                                     ; preds = %21
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !2691
  %24 = load %struct.global_State*, %struct.global_State** %23, align 8, !dbg !2691, !tbaa !482
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %24, i64 0, i32 20, !dbg !2691
  br label %57, !dbg !2692

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2693
  %28 = load %struct.CallInfo*, %struct.CallInfo** %27, align 8, !dbg !2693, !tbaa !418
  %29 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %28, i64 0, i32 1, !dbg !2693
  %30 = bitcast %struct.lua_TValue** %29 to %struct.CClosure***, !dbg !2693
  %31 = load %struct.CClosure**, %struct.CClosure*** %30, align 8, !dbg !2693, !tbaa !600
  %32 = load %struct.CClosure*, %struct.CClosure** %31, align 8, !dbg !2693, !tbaa !510
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !2695
  %34 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %32, i64 0, i32 6, !dbg !2695
  %35 = bitcast %struct.Table** %34 to i64*, !dbg !2695
  %36 = load i64, i64* %35, align 8, !dbg !2695, !tbaa !510
  %37 = bitcast %struct.lua_TValue* %33 to i64*, !dbg !2695
  store i64 %36, i64* %37, align 8, !dbg !2695, !tbaa !510
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !2695
  store i32 5, i32* %38, align 8, !dbg !2695, !tbaa !382
  br label %57

; <label>:39:                                     ; preds = %21
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !2696
  br label %57, !dbg !2697

; <label>:41:                                     ; preds = %21
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2698
  %43 = load %struct.CallInfo*, %struct.CallInfo** %42, align 8, !dbg !2698, !tbaa !418
  %44 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %43, i64 0, i32 1, !dbg !2698
  %45 = bitcast %struct.lua_TValue** %44 to %struct.CClosure***, !dbg !2698
  %46 = load %struct.CClosure**, %struct.CClosure*** %45, align 8, !dbg !2698, !tbaa !600
  %47 = load %struct.CClosure*, %struct.CClosure** %46, align 8, !dbg !2698, !tbaa !510
  %48 = sub nsw i32 -10002, %1, !dbg !2700
  %49 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 4, !dbg !2701
  %50 = load i8, i8* %49, align 1, !dbg !2701, !tbaa !510
  %51 = zext i8 %50 to i32, !dbg !2702
  %52 = icmp sgt i32 %48, %51, !dbg !2703
  br i1 %52, label %57, label %53, !dbg !2704

; <label>:53:                                     ; preds = %41
  %54 = add nsw i32 %48, -1, !dbg !2705
  %55 = sext i32 %54 to i64, !dbg !2706
  %56 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 8, i64 %55, !dbg !2706
  br label %57, !dbg !2704

; <label>:57:                                     ; preds = %4, %16, %22, %26, %39, %41, %53
  %58 = phi %struct.lua_TValue* [ %13, %4 ], [ %20, %16 ], [ %40, %39 ], [ %33, %26 ], [ %25, %22 ], [ %56, %53 ], [ @luaO_nilobject_, %41 ], !dbg !2707
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2708
  %59 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2710
  %60 = load %struct.lua_TValue*, %struct.lua_TValue** %59, align 8, !dbg !2710, !tbaa !373
  %61 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %60, i64 -1, !dbg !2710
  %62 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i64 0, i32 0, i32 0, !dbg !2710
  %63 = bitcast %struct.lua_TValue* %58 to %struct.Table**, !dbg !2710
  %64 = load %struct.Table*, %struct.Table** %63, align 8, !dbg !2710, !tbaa !510
  %65 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %60, i64 -2, !dbg !2710
  %66 = tail call %struct.lua_TValue* @luaH_set(%struct.lua_State* %0, %struct.Table* %64, %struct.lua_TValue* nonnull %65) #5, !dbg !2710
  %67 = bitcast %struct.lua_TValue* %61 to i64*, !dbg !2710
  %68 = bitcast %struct.lua_TValue* %66 to i64*, !dbg !2710
  %69 = load i64, i64* %67, align 8, !dbg !2710
  store i64 %69, i64* %68, align 8, !dbg !2710
  %70 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %60, i64 -1, i32 1, !dbg !2710
  %71 = load i32, i32* %70, align 8, !dbg !2710, !tbaa !382
  %72 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %66, i64 0, i32 1, !dbg !2710
  store i32 %71, i32* %72, align 8, !dbg !2710, !tbaa !382
  %73 = load %struct.lua_TValue*, %struct.lua_TValue** %59, align 8, !dbg !2711, !tbaa !373
  %74 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %73, i64 -1, i32 1, !dbg !2711
  %75 = load i32, i32* %74, align 8, !dbg !2711, !tbaa !382
  %76 = icmp sgt i32 %75, 3, !dbg !2711
  br i1 %76, label %77, label %94, !dbg !2711

; <label>:77:                                     ; preds = %57
  %78 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %73, i64 -1, i32 0, i32 0, !dbg !2711
  %79 = bitcast %union.GCObject** %78 to %struct.GCheader**, !dbg !2711
  %80 = load %struct.GCheader*, %struct.GCheader** %79, align 8, !dbg !2711, !tbaa !510
  %81 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %80, i64 0, i32 2, !dbg !2711
  %82 = load i8, i8* %81, align 1, !dbg !2711, !tbaa !510
  %83 = and i8 %82, 3, !dbg !2711
  %84 = icmp eq i8 %83, 0, !dbg !2711
  br i1 %84, label %94, label %85, !dbg !2711

; <label>:85:                                     ; preds = %77
  %86 = load %union.GCObject*, %union.GCObject** %62, align 8, !dbg !2711, !tbaa !510
  %87 = getelementptr inbounds %union.GCObject, %union.GCObject* %86, i64 0, i32 0, i32 2, !dbg !2711
  %88 = load i8, i8* %87, align 1, !dbg !2711, !tbaa !510
  %89 = and i8 %88, 4, !dbg !2711
  %90 = icmp eq i8 %89, 0, !dbg !2711
  br i1 %90, label %94, label %91, !dbg !2714

; <label>:91:                                     ; preds = %85
  %92 = bitcast %union.GCObject* %86 to %struct.Table*, !dbg !2711
  tail call void @luaC_barrierback(%struct.lua_State* nonnull %0, %struct.Table* %92) #5, !dbg !2711
  %93 = load %struct.lua_TValue*, %struct.lua_TValue** %59, align 8, !dbg !2715, !tbaa !373
  br label %94, !dbg !2711

; <label>:94:                                     ; preds = %85, %77, %91, %57
  %95 = phi %struct.lua_TValue* [ %73, %85 ], [ %73, %77 ], [ %93, %91 ], [ %73, %57 ], !dbg !2715
  %96 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %95, i64 -2, !dbg !2715
  store %struct.lua_TValue* %96, %struct.lua_TValue** %59, align 8, !dbg !2715, !tbaa !373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2716
  ret void, !dbg !2716
}

; Function Attrs: noredzone
declare hidden %struct.lua_TValue* @luaH_set(%struct.lua_State*, %struct.Table*, %struct.lua_TValue*) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden void @luaC_barrierback(%struct.lua_State*, %struct.Table*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @lua_rawseti(%struct.lua_State*, i32, i32) local_unnamed_addr #0 !dbg !2717 {
  %4 = icmp sgt i32 %1, 0, !dbg !2732
  br i1 %4, label %5, label %15, !dbg !2733

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !2734
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8, !dbg !2734, !tbaa !401
  %8 = add nsw i32 %1, -1, !dbg !2735
  %9 = sext i32 %8 to i64, !dbg !2736
  %10 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %7, i64 %9, !dbg !2736
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2738
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %11, align 8, !dbg !2738, !tbaa !373
  %13 = icmp ult %struct.lua_TValue* %10, %12, !dbg !2739
  %14 = select i1 %13, %struct.lua_TValue* %10, %struct.lua_TValue* @luaO_nilobject_, !dbg !2740
  br label %58

; <label>:15:                                     ; preds = %3
  %16 = icmp sgt i32 %1, -10000, !dbg !2741
  br i1 %16, label %17, label %22, !dbg !2742

; <label>:17:                                     ; preds = %15
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2743
  %19 = load %struct.lua_TValue*, %struct.lua_TValue** %18, align 8, !dbg !2743, !tbaa !373
  %20 = sext i32 %1 to i64, !dbg !2744
  %21 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %19, i64 %20, !dbg !2744
  br label %58, !dbg !2745

; <label>:22:                                     ; preds = %15
  switch i32 %1, label %42 [
    i32 -10000, label %23
    i32 -10001, label %27
    i32 -10002, label %40
  ], !dbg !2746

; <label>:23:                                     ; preds = %22
  %24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !2747
  %25 = load %struct.global_State*, %struct.global_State** %24, align 8, !dbg !2747, !tbaa !482
  %26 = getelementptr inbounds %struct.global_State, %struct.global_State* %25, i64 0, i32 20, !dbg !2747
  br label %58, !dbg !2748

; <label>:27:                                     ; preds = %22
  %28 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2749
  %29 = load %struct.CallInfo*, %struct.CallInfo** %28, align 8, !dbg !2749, !tbaa !418
  %30 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %29, i64 0, i32 1, !dbg !2749
  %31 = bitcast %struct.lua_TValue** %30 to %struct.CClosure***, !dbg !2749
  %32 = load %struct.CClosure**, %struct.CClosure*** %31, align 8, !dbg !2749, !tbaa !600
  %33 = load %struct.CClosure*, %struct.CClosure** %32, align 8, !dbg !2749, !tbaa !510
  %34 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !2751
  %35 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %33, i64 0, i32 6, !dbg !2751
  %36 = bitcast %struct.Table** %35 to i64*, !dbg !2751
  %37 = load i64, i64* %36, align 8, !dbg !2751, !tbaa !510
  %38 = bitcast %struct.lua_TValue* %34 to i64*, !dbg !2751
  store i64 %37, i64* %38, align 8, !dbg !2751, !tbaa !510
  %39 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !2751
  store i32 5, i32* %39, align 8, !dbg !2751, !tbaa !382
  br label %58

; <label>:40:                                     ; preds = %22
  %41 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !2752
  br label %58, !dbg !2753

; <label>:42:                                     ; preds = %22
  %43 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2754
  %44 = load %struct.CallInfo*, %struct.CallInfo** %43, align 8, !dbg !2754, !tbaa !418
  %45 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %44, i64 0, i32 1, !dbg !2754
  %46 = bitcast %struct.lua_TValue** %45 to %struct.CClosure***, !dbg !2754
  %47 = load %struct.CClosure**, %struct.CClosure*** %46, align 8, !dbg !2754, !tbaa !600
  %48 = load %struct.CClosure*, %struct.CClosure** %47, align 8, !dbg !2754, !tbaa !510
  %49 = sub nsw i32 -10002, %1, !dbg !2756
  %50 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %48, i64 0, i32 4, !dbg !2757
  %51 = load i8, i8* %50, align 1, !dbg !2757, !tbaa !510
  %52 = zext i8 %51 to i32, !dbg !2758
  %53 = icmp sgt i32 %49, %52, !dbg !2759
  br i1 %53, label %58, label %54, !dbg !2760

; <label>:54:                                     ; preds = %42
  %55 = add nsw i32 %49, -1, !dbg !2761
  %56 = sext i32 %55 to i64, !dbg !2762
  %57 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %48, i64 0, i32 8, i64 %56, !dbg !2762
  br label %58, !dbg !2760

; <label>:58:                                     ; preds = %5, %17, %23, %27, %40, %42, %54
  %59 = phi %struct.lua_TValue* [ %14, %5 ], [ %21, %17 ], [ %41, %40 ], [ %34, %27 ], [ %26, %23 ], [ %57, %54 ], [ @luaO_nilobject_, %42 ], !dbg !2763
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2764
  %60 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2766
  %61 = load %struct.lua_TValue*, %struct.lua_TValue** %60, align 8, !dbg !2766, !tbaa !373
  %62 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %61, i64 -1, !dbg !2766
  %63 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %59, i64 0, i32 0, i32 0, !dbg !2766
  %64 = bitcast %struct.lua_TValue* %59 to %struct.Table**, !dbg !2766
  %65 = load %struct.Table*, %struct.Table** %64, align 8, !dbg !2766, !tbaa !510
  %66 = tail call %struct.lua_TValue* @luaH_setnum(%struct.lua_State* %0, %struct.Table* %65, i32 %2) #5, !dbg !2766
  %67 = bitcast %struct.lua_TValue* %62 to i64*, !dbg !2766
  %68 = bitcast %struct.lua_TValue* %66 to i64*, !dbg !2766
  %69 = load i64, i64* %67, align 8, !dbg !2766
  store i64 %69, i64* %68, align 8, !dbg !2766
  %70 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %61, i64 -1, i32 1, !dbg !2766
  %71 = load i32, i32* %70, align 8, !dbg !2766, !tbaa !382
  %72 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %66, i64 0, i32 1, !dbg !2766
  store i32 %71, i32* %72, align 8, !dbg !2766, !tbaa !382
  %73 = load %struct.lua_TValue*, %struct.lua_TValue** %60, align 8, !dbg !2767, !tbaa !373
  %74 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %73, i64 -1, i32 1, !dbg !2767
  %75 = load i32, i32* %74, align 8, !dbg !2767, !tbaa !382
  %76 = icmp sgt i32 %75, 3, !dbg !2767
  br i1 %76, label %77, label %94, !dbg !2767

; <label>:77:                                     ; preds = %58
  %78 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %73, i64 -1, i32 0, i32 0, !dbg !2767
  %79 = bitcast %union.GCObject** %78 to %struct.GCheader**, !dbg !2767
  %80 = load %struct.GCheader*, %struct.GCheader** %79, align 8, !dbg !2767, !tbaa !510
  %81 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %80, i64 0, i32 2, !dbg !2767
  %82 = load i8, i8* %81, align 1, !dbg !2767, !tbaa !510
  %83 = and i8 %82, 3, !dbg !2767
  %84 = icmp eq i8 %83, 0, !dbg !2767
  br i1 %84, label %94, label %85, !dbg !2767

; <label>:85:                                     ; preds = %77
  %86 = load %union.GCObject*, %union.GCObject** %63, align 8, !dbg !2767, !tbaa !510
  %87 = getelementptr inbounds %union.GCObject, %union.GCObject* %86, i64 0, i32 0, i32 2, !dbg !2767
  %88 = load i8, i8* %87, align 1, !dbg !2767, !tbaa !510
  %89 = and i8 %88, 4, !dbg !2767
  %90 = icmp eq i8 %89, 0, !dbg !2767
  br i1 %90, label %94, label %91, !dbg !2770

; <label>:91:                                     ; preds = %85
  %92 = bitcast %union.GCObject* %86 to %struct.Table*, !dbg !2767
  tail call void @luaC_barrierback(%struct.lua_State* nonnull %0, %struct.Table* %92) #5, !dbg !2767
  %93 = load %struct.lua_TValue*, %struct.lua_TValue** %60, align 8, !dbg !2771, !tbaa !373
  br label %94, !dbg !2767

; <label>:94:                                     ; preds = %85, %77, %91, %58
  %95 = phi %struct.lua_TValue* [ %73, %85 ], [ %73, %77 ], [ %93, %91 ], [ %73, %58 ], !dbg !2771
  %96 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %95, i64 -1, !dbg !2771
  store %struct.lua_TValue* %96, %struct.lua_TValue** %60, align 8, !dbg !2771, !tbaa !373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2772
  ret void, !dbg !2772
}

; Function Attrs: noredzone
declare hidden %struct.lua_TValue* @luaH_setnum(%struct.lua_State*, %struct.Table*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_setmetatable(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !2773 {
  %3 = icmp sgt i32 %1, 0, !dbg !2784
  br i1 %3, label %4, label %14, !dbg !2785

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !2786
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8, !dbg !2786, !tbaa !401
  %7 = add nsw i32 %1, -1, !dbg !2787
  %8 = sext i32 %7 to i64, !dbg !2788
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 %8, !dbg !2788
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2790
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !2790, !tbaa !373
  %12 = icmp ult %struct.lua_TValue* %9, %11, !dbg !2791
  %13 = select i1 %12, %struct.lua_TValue* %9, %struct.lua_TValue* @luaO_nilobject_, !dbg !2792
  br label %57

; <label>:14:                                     ; preds = %2
  %15 = icmp sgt i32 %1, -10000, !dbg !2793
  br i1 %15, label %16, label %21, !dbg !2794

; <label>:16:                                     ; preds = %14
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2795
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %17, align 8, !dbg !2795, !tbaa !373
  %19 = sext i32 %1 to i64, !dbg !2796
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 %19, !dbg !2796
  br label %57, !dbg !2797

; <label>:21:                                     ; preds = %14
  switch i32 %1, label %41 [
    i32 -10000, label %22
    i32 -10001, label %26
    i32 -10002, label %39
  ], !dbg !2798

; <label>:22:                                     ; preds = %21
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !2799
  %24 = load %struct.global_State*, %struct.global_State** %23, align 8, !dbg !2799, !tbaa !482
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %24, i64 0, i32 20, !dbg !2799
  br label %57, !dbg !2800

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2801
  %28 = load %struct.CallInfo*, %struct.CallInfo** %27, align 8, !dbg !2801, !tbaa !418
  %29 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %28, i64 0, i32 1, !dbg !2801
  %30 = bitcast %struct.lua_TValue** %29 to %struct.CClosure***, !dbg !2801
  %31 = load %struct.CClosure**, %struct.CClosure*** %30, align 8, !dbg !2801, !tbaa !600
  %32 = load %struct.CClosure*, %struct.CClosure** %31, align 8, !dbg !2801, !tbaa !510
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !2803
  %34 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %32, i64 0, i32 6, !dbg !2803
  %35 = bitcast %struct.Table** %34 to i64*, !dbg !2803
  %36 = load i64, i64* %35, align 8, !dbg !2803, !tbaa !510
  %37 = bitcast %struct.lua_TValue* %33 to i64*, !dbg !2803
  store i64 %36, i64* %37, align 8, !dbg !2803, !tbaa !510
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !2803
  store i32 5, i32* %38, align 8, !dbg !2803, !tbaa !382
  br label %57

; <label>:39:                                     ; preds = %21
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !2804
  br label %57, !dbg !2805

; <label>:41:                                     ; preds = %21
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2806
  %43 = load %struct.CallInfo*, %struct.CallInfo** %42, align 8, !dbg !2806, !tbaa !418
  %44 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %43, i64 0, i32 1, !dbg !2806
  %45 = bitcast %struct.lua_TValue** %44 to %struct.CClosure***, !dbg !2806
  %46 = load %struct.CClosure**, %struct.CClosure*** %45, align 8, !dbg !2806, !tbaa !600
  %47 = load %struct.CClosure*, %struct.CClosure** %46, align 8, !dbg !2806, !tbaa !510
  %48 = sub nsw i32 -10002, %1, !dbg !2808
  %49 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 4, !dbg !2809
  %50 = load i8, i8* %49, align 1, !dbg !2809, !tbaa !510
  %51 = zext i8 %50 to i32, !dbg !2810
  %52 = icmp sgt i32 %48, %51, !dbg !2811
  br i1 %52, label %57, label %53, !dbg !2812

; <label>:53:                                     ; preds = %41
  %54 = add nsw i32 %48, -1, !dbg !2813
  %55 = sext i32 %54 to i64, !dbg !2814
  %56 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 8, i64 %55, !dbg !2814
  br label %57, !dbg !2812

; <label>:57:                                     ; preds = %4, %16, %22, %26, %39, %41, %53
  %58 = phi %struct.lua_TValue* [ %13, %4 ], [ %20, %16 ], [ %40, %39 ], [ %33, %26 ], [ %25, %22 ], [ %56, %53 ], [ @luaO_nilobject_, %41 ], !dbg !2815
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2816
  %59 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2818
  %60 = load %struct.lua_TValue*, %struct.lua_TValue** %59, align 8, !dbg !2818, !tbaa !373
  %61 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %60, i64 -1, i32 1, !dbg !2818
  %62 = load i32, i32* %61, align 8, !dbg !2818, !tbaa !382
  %63 = icmp eq i32 %62, 0, !dbg !2818
  br i1 %63, label %69, label %64, !dbg !2820

; <label>:64:                                     ; preds = %57
  %65 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %60, i64 -1, i32 0, i32 0, !dbg !2821
  %66 = bitcast %union.GCObject** %65 to %struct.Table**, !dbg !2821
  %67 = load %struct.Table*, %struct.Table** %66, align 8, !dbg !2821, !tbaa !510
  %68 = bitcast %struct.Table* %67 to %union.GCObject*, !dbg !2823
  br label %69

; <label>:69:                                     ; preds = %57, %64
  %70 = phi %union.GCObject* [ %68, %64 ], [ null, %57 ], !dbg !2824
  %71 = phi %struct.Table* [ %67, %64 ], [ null, %57 ], !dbg !2824
  %72 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i64 0, i32 1, !dbg !2825
  %73 = load i32, i32* %72, align 8, !dbg !2825, !tbaa !382
  switch i32 %73, label %112 [
    i32 5, label %74
    i32 7, label %94
  ], !dbg !2826

; <label>:74:                                     ; preds = %69
  %75 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i64 0, i32 0, i32 0, !dbg !2827
  %76 = bitcast %struct.lua_TValue* %58 to %struct.Table**, !dbg !2827
  %77 = load %struct.Table*, %struct.Table** %76, align 8, !dbg !2827, !tbaa !510
  %78 = getelementptr inbounds %struct.Table, %struct.Table* %77, i64 0, i32 5, !dbg !2830
  %79 = bitcast %struct.Table** %78 to %union.GCObject**, !dbg !2831
  store %union.GCObject* %70, %union.GCObject** %79, align 8, !dbg !2831, !tbaa !510
  %80 = icmp eq %struct.Table* %71, null, !dbg !2832
  br i1 %80, label %117, label %81, !dbg !2834

; <label>:81:                                     ; preds = %74
  %82 = getelementptr inbounds %struct.Table, %struct.Table* %71, i64 0, i32 2, !dbg !2835
  %83 = load i8, i8* %82, align 1, !dbg !2835, !tbaa !510
  %84 = and i8 %83, 3, !dbg !2835
  %85 = icmp eq i8 %84, 0, !dbg !2835
  br i1 %85, label %117, label %86, !dbg !2835

; <label>:86:                                     ; preds = %81
  %87 = load %union.GCObject*, %union.GCObject** %75, align 8, !dbg !2835, !tbaa !510
  %88 = getelementptr inbounds %union.GCObject, %union.GCObject* %87, i64 0, i32 0, i32 2, !dbg !2835
  %89 = load i8, i8* %88, align 1, !dbg !2835, !tbaa !510
  %90 = and i8 %89, 4, !dbg !2835
  %91 = icmp eq i8 %90, 0, !dbg !2835
  br i1 %91, label %117, label %92, !dbg !2838

; <label>:92:                                     ; preds = %86
  %93 = bitcast %union.GCObject* %87 to %struct.Table*, !dbg !2835
  tail call void @luaC_barrierback(%struct.lua_State* nonnull %0, %struct.Table* %93) #5, !dbg !2835
  br label %117, !dbg !2835

; <label>:94:                                     ; preds = %69
  %95 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i64 0, i32 0, i32 0, !dbg !2839
  %96 = bitcast %struct.lua_TValue* %58 to %struct.anon.2**, !dbg !2839
  %97 = load %struct.anon.2*, %struct.anon.2** %96, align 8, !dbg !2839, !tbaa !510
  %98 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %97, i64 0, i32 3, !dbg !2841
  store %struct.Table* %71, %struct.Table** %98, align 8, !dbg !2842, !tbaa !510
  %99 = icmp eq %struct.Table* %71, null, !dbg !2843
  br i1 %99, label %117, label %100, !dbg !2845

; <label>:100:                                    ; preds = %94
  %101 = getelementptr inbounds %union.GCObject, %union.GCObject* %70, i64 0, i32 0, i32 2, !dbg !2846
  %102 = load i8, i8* %101, align 1, !dbg !2846, !tbaa !510
  %103 = and i8 %102, 3, !dbg !2846
  %104 = icmp eq i8 %103, 0, !dbg !2846
  br i1 %104, label %117, label %105, !dbg !2846

; <label>:105:                                    ; preds = %100
  %106 = load %union.GCObject*, %union.GCObject** %95, align 8, !dbg !2846, !tbaa !510
  %107 = getelementptr inbounds %union.GCObject, %union.GCObject* %106, i64 0, i32 0, i32 2, !dbg !2846
  %108 = load i8, i8* %107, align 1, !dbg !2846, !tbaa !510
  %109 = and i8 %108, 4, !dbg !2846
  %110 = icmp eq i8 %109, 0, !dbg !2846
  br i1 %110, label %117, label %111, !dbg !2849

; <label>:111:                                    ; preds = %105
  tail call void @luaC_barrierf(%struct.lua_State* nonnull %0, %union.GCObject* %106, %union.GCObject* nonnull %70) #5, !dbg !2846
  br label %117, !dbg !2846

; <label>:112:                                    ; preds = %69
  %113 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !2850
  %114 = load %struct.global_State*, %struct.global_State** %113, align 8, !dbg !2850, !tbaa !482
  %115 = sext i32 %73 to i64, !dbg !2850
  %116 = getelementptr inbounds %struct.global_State, %struct.global_State* %114, i64 0, i32 23, i64 %115, !dbg !2850
  store %struct.Table* %71, %struct.Table** %116, align 8, !dbg !2852, !tbaa !874
  br label %117, !dbg !2853

; <label>:117:                                    ; preds = %86, %81, %74, %105, %100, %94, %111, %92, %112
  %118 = load %struct.lua_TValue*, %struct.lua_TValue** %59, align 8, !dbg !2854, !tbaa !373
  %119 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %118, i64 -1, !dbg !2854
  store %struct.lua_TValue* %119, %struct.lua_TValue** %59, align 8, !dbg !2854, !tbaa !373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2855
  ret i32 1, !dbg !2855
}

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_setfenv(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !2856 {
  %3 = icmp sgt i32 %1, 0, !dbg !2871
  br i1 %3, label %4, label %14, !dbg !2872

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !2873
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8, !dbg !2873, !tbaa !401
  %7 = add nsw i32 %1, -1, !dbg !2874
  %8 = sext i32 %7 to i64, !dbg !2875
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 %8, !dbg !2875
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2877
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !2877, !tbaa !373
  %12 = icmp ult %struct.lua_TValue* %9, %11, !dbg !2878
  %13 = select i1 %12, %struct.lua_TValue* %9, %struct.lua_TValue* @luaO_nilobject_, !dbg !2879
  br label %57

; <label>:14:                                     ; preds = %2
  %15 = icmp sgt i32 %1, -10000, !dbg !2880
  br i1 %15, label %16, label %21, !dbg !2881

; <label>:16:                                     ; preds = %14
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2882
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %17, align 8, !dbg !2882, !tbaa !373
  %19 = sext i32 %1 to i64, !dbg !2883
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 %19, !dbg !2883
  br label %57, !dbg !2884

; <label>:21:                                     ; preds = %14
  switch i32 %1, label %41 [
    i32 -10000, label %22
    i32 -10001, label %26
    i32 -10002, label %39
  ], !dbg !2885

; <label>:22:                                     ; preds = %21
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !2886
  %24 = load %struct.global_State*, %struct.global_State** %23, align 8, !dbg !2886, !tbaa !482
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %24, i64 0, i32 20, !dbg !2886
  br label %57, !dbg !2887

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2888
  %28 = load %struct.CallInfo*, %struct.CallInfo** %27, align 8, !dbg !2888, !tbaa !418
  %29 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %28, i64 0, i32 1, !dbg !2888
  %30 = bitcast %struct.lua_TValue** %29 to %struct.CClosure***, !dbg !2888
  %31 = load %struct.CClosure**, %struct.CClosure*** %30, align 8, !dbg !2888, !tbaa !600
  %32 = load %struct.CClosure*, %struct.CClosure** %31, align 8, !dbg !2888, !tbaa !510
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !2890
  %34 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %32, i64 0, i32 6, !dbg !2890
  %35 = bitcast %struct.Table** %34 to i64*, !dbg !2890
  %36 = load i64, i64* %35, align 8, !dbg !2890, !tbaa !510
  %37 = bitcast %struct.lua_TValue* %33 to i64*, !dbg !2890
  store i64 %36, i64* %37, align 8, !dbg !2890, !tbaa !510
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !2890
  store i32 5, i32* %38, align 8, !dbg !2890, !tbaa !382
  br label %57

; <label>:39:                                     ; preds = %21
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !2891
  br label %57, !dbg !2892

; <label>:41:                                     ; preds = %21
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2893
  %43 = load %struct.CallInfo*, %struct.CallInfo** %42, align 8, !dbg !2893, !tbaa !418
  %44 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %43, i64 0, i32 1, !dbg !2893
  %45 = bitcast %struct.lua_TValue** %44 to %struct.CClosure***, !dbg !2893
  %46 = load %struct.CClosure**, %struct.CClosure*** %45, align 8, !dbg !2893, !tbaa !600
  %47 = load %struct.CClosure*, %struct.CClosure** %46, align 8, !dbg !2893, !tbaa !510
  %48 = sub nsw i32 -10002, %1, !dbg !2895
  %49 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 4, !dbg !2896
  %50 = load i8, i8* %49, align 1, !dbg !2896, !tbaa !510
  %51 = zext i8 %50 to i32, !dbg !2897
  %52 = icmp sgt i32 %48, %51, !dbg !2898
  br i1 %52, label %57, label %53, !dbg !2899

; <label>:53:                                     ; preds = %41
  %54 = add nsw i32 %48, -1, !dbg !2900
  %55 = sext i32 %54 to i64, !dbg !2901
  %56 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 8, i64 %55, !dbg !2901
  br label %57, !dbg !2899

; <label>:57:                                     ; preds = %4, %16, %22, %26, %39, %41, %53
  %58 = phi %struct.lua_TValue* [ %13, %4 ], [ %20, %16 ], [ %40, %39 ], [ %33, %26 ], [ %25, %22 ], [ %56, %53 ], [ @luaO_nilobject_, %41 ], !dbg !2902
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2903
  %59 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i64 0, i32 1, !dbg !2905
  %60 = load i32, i32* %59, align 8, !dbg !2905, !tbaa !382
  switch i32 %60, label %61 [
    i32 6, label %63
    i32 7, label %73
    i32 8, label %83
  ], !dbg !2906

; <label>:61:                                     ; preds = %57
  %62 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2907
  br label %111, !dbg !2906

; <label>:63:                                     ; preds = %57
  %64 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2908
  %65 = load %struct.lua_TValue*, %struct.lua_TValue** %64, align 8, !dbg !2908, !tbaa !373
  %66 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %65, i64 -1, i32 0, i32 0, !dbg !2908
  %67 = bitcast %union.GCObject** %66 to i64*, !dbg !2908
  %68 = load i64, i64* %67, align 8, !dbg !2908, !tbaa !510
  %69 = bitcast %struct.lua_TValue* %58 to %struct.CClosure**, !dbg !2909
  %70 = load %struct.CClosure*, %struct.CClosure** %69, align 8, !dbg !2909, !tbaa !510
  %71 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %70, i64 0, i32 6, !dbg !2910
  %72 = bitcast %struct.Table** %71 to i64*, !dbg !2911
  store i64 %68, i64* %72, align 8, !dbg !2911, !tbaa !510
  br label %94, !dbg !2912

; <label>:73:                                     ; preds = %57
  %74 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2913
  %75 = load %struct.lua_TValue*, %struct.lua_TValue** %74, align 8, !dbg !2913, !tbaa !373
  %76 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %75, i64 -1, i32 0, i32 0, !dbg !2913
  %77 = bitcast %union.GCObject** %76 to i64*, !dbg !2913
  %78 = load i64, i64* %77, align 8, !dbg !2913, !tbaa !510
  %79 = bitcast %struct.lua_TValue* %58 to %struct.anon.2**, !dbg !2914
  %80 = load %struct.anon.2*, %struct.anon.2** %79, align 8, !dbg !2914, !tbaa !510
  %81 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %80, i64 0, i32 4, !dbg !2915
  %82 = bitcast %struct.Table** %81 to i64*, !dbg !2916
  store i64 %78, i64* %82, align 8, !dbg !2916, !tbaa !510
  br label %94, !dbg !2917

; <label>:83:                                     ; preds = %57
  %84 = bitcast %struct.lua_TValue* %58 to %struct.lua_State**, !dbg !2918
  %85 = load %struct.lua_State*, %struct.lua_State** %84, align 8, !dbg !2918, !tbaa !510
  %86 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %85, i64 0, i32 22, !dbg !2918
  %87 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2918
  %88 = load %struct.lua_TValue*, %struct.lua_TValue** %87, align 8, !dbg !2918, !tbaa !373
  %89 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %88, i64 -1, i32 0, i32 0, !dbg !2918
  %90 = bitcast %union.GCObject** %89 to i64*, !dbg !2918
  %91 = load i64, i64* %90, align 8, !dbg !2918, !tbaa !510
  %92 = bitcast %struct.lua_TValue* %86 to i64*, !dbg !2918
  store i64 %91, i64* %92, align 8, !dbg !2918, !tbaa !510
  %93 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %85, i64 0, i32 22, i32 1, !dbg !2918
  store i32 5, i32* %93, align 8, !dbg !2918, !tbaa !382
  br label %94, !dbg !2919

; <label>:94:                                     ; preds = %83, %73, %63
  %95 = phi %struct.lua_TValue** [ %87, %83 ], [ %74, %73 ], [ %64, %63 ], !dbg !2920
  %96 = load %struct.lua_TValue*, %struct.lua_TValue** %95, align 8, !dbg !2920, !tbaa !373
  %97 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %96, i64 -1, i32 0, i32 0, !dbg !2920
  %98 = load %union.GCObject*, %union.GCObject** %97, align 8, !dbg !2920, !tbaa !510
  %99 = getelementptr inbounds %union.GCObject, %union.GCObject* %98, i64 0, i32 0, i32 2, !dbg !2920
  %100 = load i8, i8* %99, align 1, !dbg !2920, !tbaa !510
  %101 = and i8 %100, 3, !dbg !2920
  %102 = icmp eq i8 %101, 0, !dbg !2920
  br i1 %102, label %111, label %103, !dbg !2920

; <label>:103:                                    ; preds = %94
  %104 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i64 0, i32 0, i32 0, !dbg !2920
  %105 = load %union.GCObject*, %union.GCObject** %104, align 8, !dbg !2920, !tbaa !510
  %106 = getelementptr inbounds %union.GCObject, %union.GCObject* %105, i64 0, i32 0, i32 2, !dbg !2920
  %107 = load i8, i8* %106, align 1, !dbg !2920, !tbaa !510
  %108 = and i8 %107, 4, !dbg !2920
  %109 = icmp eq i8 %108, 0, !dbg !2920
  br i1 %109, label %111, label %110, !dbg !2924

; <label>:110:                                    ; preds = %103
  tail call void @luaC_barrierf(%struct.lua_State* nonnull %0, %union.GCObject* %105, %union.GCObject* %98) #5, !dbg !2920
  br label %111, !dbg !2920

; <label>:111:                                    ; preds = %61, %103, %94, %110
  %112 = phi %struct.lua_TValue** [ %62, %61 ], [ %95, %103 ], [ %95, %94 ], [ %95, %110 ], !dbg !2907
  %113 = phi i32 [ 0, %61 ], [ 1, %103 ], [ 1, %94 ], [ 1, %110 ]
  %114 = load %struct.lua_TValue*, %struct.lua_TValue** %112, align 8, !dbg !2925, !tbaa !373
  %115 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %114, i64 -1, !dbg !2925
  store %struct.lua_TValue* %115, %struct.lua_TValue** %112, align 8, !dbg !2925, !tbaa !373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2926
  ret i32 %113, !dbg !2926
}

; Function Attrs: noredzone nounwind
define dso_local void @lua_call(%struct.lua_State*, i32, i32) local_unnamed_addr #0 !dbg !2927 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2936
  %5 = load %struct.lua_TValue*, %struct.lua_TValue** %4, align 8, !dbg !2936, !tbaa !373
  %6 = add nsw i32 %1, 1, !dbg !2937
  %7 = sext i32 %6 to i64, !dbg !2938
  %8 = sub nsw i64 0, %7, !dbg !2938
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %5, i64 %8, !dbg !2938
  tail call void @luaD_call(%struct.lua_State* %0, %struct.lua_TValue* %9, i32 %2) #5, !dbg !2940
  %10 = icmp eq i32 %2, -1, !dbg !2941
  br i1 %10, label %11, label %19, !dbg !2941

; <label>:11:                                     ; preds = %3
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %4, align 8, !dbg !2941, !tbaa !373
  %13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2941
  %14 = load %struct.CallInfo*, %struct.CallInfo** %13, align 8, !dbg !2941, !tbaa !418
  %15 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %14, i64 0, i32 2, !dbg !2941
  %16 = load %struct.lua_TValue*, %struct.lua_TValue** %15, align 8, !dbg !2941, !tbaa !420
  %17 = icmp ult %struct.lua_TValue* %12, %16, !dbg !2941
  br i1 %17, label %19, label %18, !dbg !2944

; <label>:18:                                     ; preds = %11
  store %struct.lua_TValue* %12, %struct.lua_TValue** %15, align 8, !dbg !2941, !tbaa !420
  br label %19, !dbg !2941

; <label>:19:                                     ; preds = %11, %18, %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2945
  ret void, !dbg !2945
}

; Function Attrs: noredzone
declare hidden void @luaD_call(%struct.lua_State*, %struct.lua_TValue*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_pcall(%struct.lua_State*, i32, i32, i32) local_unnamed_addr #0 !dbg !2946 {
  %5 = alloca %struct.CallS, align 8
  %6 = bitcast %struct.CallS* %5 to i8*, !dbg !2964
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #4, !dbg !2964
  %7 = icmp eq i32 %3, 0, !dbg !2965
  br i1 %7, label %8, label %12, !dbg !2966

; <label>:8:                                      ; preds = %4
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 10
  %10 = bitcast %struct.lua_TValue** %9 to i64*
  %11 = load i64, i64* %10, align 8, !dbg !2967, !tbaa !2968
  br label %74, !dbg !2966

; <label>:12:                                     ; preds = %4
  %13 = icmp sgt i32 %3, 0, !dbg !2972
  br i1 %13, label %14, label %24, !dbg !2973

; <label>:14:                                     ; preds = %12
  %15 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !2974
  %16 = load %struct.lua_TValue*, %struct.lua_TValue** %15, align 8, !dbg !2974, !tbaa !401
  %17 = add nsw i32 %3, -1, !dbg !2975
  %18 = sext i32 %17 to i64, !dbg !2976
  %19 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %16, i64 %18, !dbg !2976
  %20 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2978
  %21 = load %struct.lua_TValue*, %struct.lua_TValue** %20, align 8, !dbg !2978, !tbaa !373
  %22 = icmp ult %struct.lua_TValue* %19, %21, !dbg !2979
  %23 = select i1 %22, %struct.lua_TValue* %19, %struct.lua_TValue* @luaO_nilobject_, !dbg !2980
  br label %67

; <label>:24:                                     ; preds = %12
  %25 = icmp sgt i32 %3, -10000, !dbg !2981
  br i1 %25, label %26, label %31, !dbg !2982

; <label>:26:                                     ; preds = %24
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2983
  %28 = load %struct.lua_TValue*, %struct.lua_TValue** %27, align 8, !dbg !2983, !tbaa !373
  %29 = sext i32 %3 to i64, !dbg !2984
  %30 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %28, i64 %29, !dbg !2984
  br label %67, !dbg !2985

; <label>:31:                                     ; preds = %24
  switch i32 %3, label %51 [
    i32 -10000, label %32
    i32 -10001, label %36
    i32 -10002, label %49
  ], !dbg !2986

; <label>:32:                                     ; preds = %31
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !2987
  %34 = load %struct.global_State*, %struct.global_State** %33, align 8, !dbg !2987, !tbaa !482
  %35 = getelementptr inbounds %struct.global_State, %struct.global_State* %34, i64 0, i32 20, !dbg !2987
  br label %67, !dbg !2988

; <label>:36:                                     ; preds = %31
  %37 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2989
  %38 = load %struct.CallInfo*, %struct.CallInfo** %37, align 8, !dbg !2989, !tbaa !418
  %39 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %38, i64 0, i32 1, !dbg !2989
  %40 = bitcast %struct.lua_TValue** %39 to %struct.CClosure***, !dbg !2989
  %41 = load %struct.CClosure**, %struct.CClosure*** %40, align 8, !dbg !2989, !tbaa !600
  %42 = load %struct.CClosure*, %struct.CClosure** %41, align 8, !dbg !2989, !tbaa !510
  %43 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !2991
  %44 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %42, i64 0, i32 6, !dbg !2991
  %45 = bitcast %struct.Table** %44 to i64*, !dbg !2991
  %46 = load i64, i64* %45, align 8, !dbg !2991, !tbaa !510
  %47 = bitcast %struct.lua_TValue* %43 to i64*, !dbg !2991
  store i64 %46, i64* %47, align 8, !dbg !2991, !tbaa !510
  %48 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !2991
  store i32 5, i32* %48, align 8, !dbg !2991, !tbaa !382
  br label %67

; <label>:49:                                     ; preds = %31
  %50 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !2992
  br label %67, !dbg !2993

; <label>:51:                                     ; preds = %31
  %52 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2994
  %53 = load %struct.CallInfo*, %struct.CallInfo** %52, align 8, !dbg !2994, !tbaa !418
  %54 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %53, i64 0, i32 1, !dbg !2994
  %55 = bitcast %struct.lua_TValue** %54 to %struct.CClosure***, !dbg !2994
  %56 = load %struct.CClosure**, %struct.CClosure*** %55, align 8, !dbg !2994, !tbaa !600
  %57 = load %struct.CClosure*, %struct.CClosure** %56, align 8, !dbg !2994, !tbaa !510
  %58 = sub nsw i32 -10002, %3, !dbg !2996
  %59 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %57, i64 0, i32 4, !dbg !2997
  %60 = load i8, i8* %59, align 1, !dbg !2997, !tbaa !510
  %61 = zext i8 %60 to i32, !dbg !2998
  %62 = icmp sgt i32 %58, %61, !dbg !2999
  br i1 %62, label %67, label %63, !dbg !3000

; <label>:63:                                     ; preds = %51
  %64 = add nsw i32 %58, -1, !dbg !3001
  %65 = sext i32 %64 to i64, !dbg !3002
  %66 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %57, i64 0, i32 8, i64 %65, !dbg !3002
  br label %67, !dbg !3000

; <label>:67:                                     ; preds = %14, %26, %32, %36, %49, %51, %63
  %68 = phi %struct.lua_TValue* [ %23, %14 ], [ %30, %26 ], [ %50, %49 ], [ %43, %36 ], [ %35, %32 ], [ %66, %63 ], [ @luaO_nilobject_, %51 ], !dbg !3003
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3004
  %69 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 10, !dbg !3006
  %70 = bitcast %struct.lua_TValue** %69 to i64*, !dbg !3006
  %71 = load i64, i64* %70, align 8, !dbg !3006, !tbaa !2968
  %72 = ptrtoint %struct.lua_TValue* %68 to i64, !dbg !3006
  %73 = sub i64 %72, %71, !dbg !3006
  br label %74

; <label>:74:                                     ; preds = %8, %67
  %75 = phi i64 [ %71, %67 ], [ %11, %8 ], !dbg !2967
  %76 = phi i64 [ %73, %67 ], [ 0, %8 ], !dbg !3008
  %77 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !3009
  %78 = load %struct.lua_TValue*, %struct.lua_TValue** %77, align 8, !dbg !3009, !tbaa !373
  %79 = add nsw i32 %1, 1, !dbg !3010
  %80 = sext i32 %79 to i64, !dbg !3011
  %81 = sub nsw i64 0, %80, !dbg !3011
  %82 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %78, i64 %81, !dbg !3011
  %83 = getelementptr inbounds %struct.CallS, %struct.CallS* %5, i64 0, i32 0, !dbg !3012
  store %struct.lua_TValue* %82, %struct.lua_TValue** %83, align 8, !dbg !3013, !tbaa !3014
  %84 = getelementptr inbounds %struct.CallS, %struct.CallS* %5, i64 0, i32 1, !dbg !3016
  store i32 %2, i32* %84, align 8, !dbg !3017, !tbaa !3018
  %85 = ptrtoint %struct.lua_TValue* %82 to i64, !dbg !2967
  %86 = sub i64 %85, %75, !dbg !2967
  %87 = call i32 @luaD_pcall(%struct.lua_State* nonnull %0, void (%struct.lua_State*, i8*)* nonnull @f_call, i8* nonnull %6, i64 %86, i64 %76) #5, !dbg !3019
  %88 = icmp eq i32 %2, -1, !dbg !3021
  br i1 %88, label %89, label %97, !dbg !3021

; <label>:89:                                     ; preds = %74
  %90 = load %struct.lua_TValue*, %struct.lua_TValue** %77, align 8, !dbg !3021, !tbaa !373
  %91 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !3021
  %92 = load %struct.CallInfo*, %struct.CallInfo** %91, align 8, !dbg !3021, !tbaa !418
  %93 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %92, i64 0, i32 2, !dbg !3021
  %94 = load %struct.lua_TValue*, %struct.lua_TValue** %93, align 8, !dbg !3021, !tbaa !420
  %95 = icmp ult %struct.lua_TValue* %90, %94, !dbg !3021
  br i1 %95, label %97, label %96, !dbg !3024

; <label>:96:                                     ; preds = %89
  store %struct.lua_TValue* %90, %struct.lua_TValue** %93, align 8, !dbg !3021, !tbaa !420
  br label %97, !dbg !3021

; <label>:97:                                     ; preds = %89, %96, %74
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #4, !dbg !3025
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3026
  ret i32 %87, !dbg !3026
}

; Function Attrs: noredzone
declare hidden i32 @luaD_pcall(%struct.lua_State*, void (%struct.lua_State*, i8*)*, i8*, i64, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal void @f_call(%struct.lua_State*, i8* nocapture readonly) #0 !dbg !3027 {
  %3 = bitcast i8* %1 to %struct.lua_TValue**, !dbg !3035
  %4 = load %struct.lua_TValue*, %struct.lua_TValue** %3, align 8, !dbg !3035, !tbaa !3014
  %5 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !3036
  %6 = bitcast i8* %5 to i32*, !dbg !3036
  %7 = load i32, i32* %6, align 8, !dbg !3036, !tbaa !3018
  tail call void @luaD_call(%struct.lua_State* %0, %struct.lua_TValue* %4, i32 %7) #5, !dbg !3037
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3038
  ret void, !dbg !3038
}

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_cpcall(%struct.lua_State*, i32 (%struct.lua_State*)*, i8*) local_unnamed_addr #0 !dbg !3039 {
  %4 = alloca %struct.CCallS, align 8
  %5 = bitcast %struct.CCallS* %4 to i8*, !dbg !3051
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #4, !dbg !3051
  %6 = getelementptr inbounds %struct.CCallS, %struct.CCallS* %4, i64 0, i32 0, !dbg !3052
  store i32 (%struct.lua_State*)* %1, i32 (%struct.lua_State*)** %6, align 8, !dbg !3053, !tbaa !3054
  %7 = getelementptr inbounds %struct.CCallS, %struct.CCallS* %4, i64 0, i32 1, !dbg !3056
  store i8* %2, i8** %7, align 8, !dbg !3057, !tbaa !3058
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !3059
  %9 = bitcast %struct.lua_TValue** %8 to i64*, !dbg !3059
  %10 = load i64, i64* %9, align 8, !dbg !3059, !tbaa !373
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 10, !dbg !3059
  %12 = bitcast %struct.lua_TValue** %11 to i64*, !dbg !3059
  %13 = load i64, i64* %12, align 8, !dbg !3059, !tbaa !2968
  %14 = sub i64 %10, %13, !dbg !3059
  %15 = call i32 @luaD_pcall(%struct.lua_State* %0, void (%struct.lua_State*, i8*)* nonnull @f_Ccall, i8* nonnull %5, i64 %14, i64 0) #5, !dbg !3060
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #4, !dbg !3062
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3063
  ret i32 %15, !dbg !3063
}

; Function Attrs: noredzone nounwind
define internal void @f_Ccall(%struct.lua_State*, i8* nocapture readonly) #0 !dbg !3064 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !3079
  %4 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8, !dbg !3079, !tbaa !418
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 12, !dbg !3080
  %6 = load %struct.CallInfo*, %struct.CallInfo** %5, align 8, !dbg !3080, !tbaa !707
  %7 = icmp eq %struct.CallInfo* %4, %6, !dbg !3081
  br i1 %7, label %8, label %11, !dbg !3082

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, i32 0, i32 0, !dbg !3083
  %10 = bitcast %union.GCObject** %9 to %struct.Table**, !dbg !3083
  br label %17, !dbg !3084

; <label>:11:                                     ; preds = %2
  %12 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %4, i64 0, i32 1, !dbg !3085
  %13 = bitcast %struct.lua_TValue** %12 to %struct.CClosure***, !dbg !3085
  %14 = load %struct.CClosure**, %struct.CClosure*** %13, align 8, !dbg !3085, !tbaa !600
  %15 = load %struct.CClosure*, %struct.CClosure** %14, align 8, !dbg !3085, !tbaa !510
  %16 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %15, i64 0, i32 6, !dbg !3087
  br label %17

; <label>:17:                                     ; preds = %8, %11
  %18 = phi %struct.Table** [ %10, %8 ], [ %16, %11 ]
  %19 = load %struct.Table*, %struct.Table** %18, align 8, !dbg !3088, !tbaa !510
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3089
  %20 = tail call %union.Closure* @luaF_newCclosure(%struct.lua_State* nonnull %0, i32 0, %struct.Table* %19) #5, !dbg !3090
  %21 = bitcast i8* %1 to i64*, !dbg !3092
  %22 = load i64, i64* %21, align 8, !dbg !3092, !tbaa !3054
  %23 = getelementptr inbounds %union.Closure, %union.Closure* %20, i64 0, i32 0, i32 7, !dbg !3093
  %24 = bitcast i32 (%struct.lua_State*)** %23 to i64*, !dbg !3094
  store i64 %22, i64* %24, align 8, !dbg !3094, !tbaa !510
  %25 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !3095
  %26 = load %struct.lua_TValue*, %struct.lua_TValue** %25, align 8, !dbg !3095, !tbaa !373
  %27 = bitcast %struct.lua_TValue* %26 to %union.Closure**, !dbg !3095
  store %union.Closure* %20, %union.Closure** %27, align 8, !dbg !3095, !tbaa !510
  %28 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %26, i64 0, i32 1, !dbg !3095
  store i32 6, i32* %28, align 8, !dbg !3095, !tbaa !382
  %29 = load %struct.lua_TValue*, %struct.lua_TValue** %25, align 8, !dbg !3096, !tbaa !373
  %30 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %29, i64 1, !dbg !3096
  store %struct.lua_TValue* %30, %struct.lua_TValue** %25, align 8, !dbg !3096, !tbaa !373
  %31 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !3098
  %32 = bitcast i8* %31 to i64*, !dbg !3098
  %33 = load i64, i64* %32, align 8, !dbg !3098, !tbaa !3058
  %34 = bitcast %struct.lua_TValue* %30 to i64*, !dbg !3098
  store i64 %33, i64* %34, align 8, !dbg !3098, !tbaa !510
  %35 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %29, i64 1, i32 1, !dbg !3098
  store i32 2, i32* %35, align 8, !dbg !3098, !tbaa !382
  %36 = load %struct.lua_TValue*, %struct.lua_TValue** %25, align 8, !dbg !3099, !tbaa !373
  %37 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %36, i64 1, !dbg !3099
  store %struct.lua_TValue* %37, %struct.lua_TValue** %25, align 8, !dbg !3099, !tbaa !373
  %38 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %36, i64 -1, !dbg !3101
  tail call void @luaD_call(%struct.lua_State* nonnull %0, %struct.lua_TValue* nonnull %38, i32 0) #5, !dbg !3102
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3103
  ret void, !dbg !3103
}

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_load(%struct.lua_State*, i8* (%struct.lua_State*, i8*, i64*)*, i8*, i8*) local_unnamed_addr #0 !dbg !3104 {
  %5 = alloca %struct.Zio, align 8
  %6 = bitcast %struct.Zio* %5 to i8*, !dbg !3130
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %6) #4, !dbg !3130
  %7 = icmp eq i8* %3, null, !dbg !3131
  %8 = select i1 %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* %3, !dbg !3133
  call void @luaZ_init(%struct.lua_State* %0, %struct.Zio* nonnull %5, i8* (%struct.lua_State*, i8*, i64*)* %1, i8* %2) #5, !dbg !3135
  %9 = call i32 @luaD_protectedparser(%struct.lua_State* %0, %struct.Zio* nonnull %5, i8* %8) #5, !dbg !3136
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %6) #4, !dbg !3138
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3139
  ret i32 %9, !dbg !3139
}

; Function Attrs: noredzone
declare hidden void @luaZ_init(%struct.lua_State*, %struct.Zio*, i8* (%struct.lua_State*, i8*, i64*)*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden i32 @luaD_protectedparser(%struct.lua_State*, %struct.Zio*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_dump(%struct.lua_State*, i32 (%struct.lua_State*, i8*, i64, i8*)*, i8*) local_unnamed_addr #0 !dbg !3140 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !3156
  %5 = load %struct.lua_TValue*, %struct.lua_TValue** %4, align 8, !dbg !3156, !tbaa !373
  %6 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %5, i64 -1, i32 1, !dbg !3158
  %7 = load i32, i32* %6, align 8, !dbg !3158, !tbaa !382
  %8 = icmp eq i32 %7, 6, !dbg !3158
  br i1 %8, label %9, label %21, !dbg !3158

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %5, i64 -1, i32 0, i32 0, !dbg !3158
  %11 = bitcast %union.GCObject** %10 to %union.Closure**, !dbg !3158
  %12 = load %union.Closure*, %union.Closure** %11, align 8, !dbg !3158, !tbaa !510
  %13 = getelementptr inbounds %union.Closure, %union.Closure* %12, i64 0, i32 0, i32 3, !dbg !3158
  %14 = load i8, i8* %13, align 2, !dbg !3158, !tbaa !510
  %15 = icmp eq i8 %14, 0, !dbg !3158
  br i1 %15, label %16, label %21, !dbg !3160

; <label>:16:                                     ; preds = %9
  %17 = getelementptr inbounds %union.Closure, %union.Closure* %12, i64 0, i32 0, i32 7, !dbg !3161
  %18 = bitcast i32 (%struct.lua_State*)** %17 to %struct.Proto**, !dbg !3161
  %19 = load %struct.Proto*, %struct.Proto** %18, align 8, !dbg !3161, !tbaa !510
  %20 = tail call i32 @luaU_dump(%struct.lua_State* nonnull %0, %struct.Proto* %19, i32 (%struct.lua_State*, i8*, i64, i8*)* %1, i8* %2, i32 0) #5, !dbg !3162
  br label %21, !dbg !3164

; <label>:21:                                     ; preds = %3, %9, %16
  %22 = phi i32 [ %20, %16 ], [ 1, %9 ], [ 1, %3 ], !dbg !3165
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3166
  ret i32 %22, !dbg !3166
}

; Function Attrs: noredzone
declare hidden i32 @luaU_dump(%struct.lua_State*, %struct.Proto*, i32 (%struct.lua_State*, i8*, i64, i8*)*, i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_status(%struct.lua_State* nocapture readonly) local_unnamed_addr #0 !dbg !3167 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 3, !dbg !3171
  %3 = load i8, i8* %2, align 2, !dbg !3171, !tbaa !3172
  %4 = zext i8 %3 to i32, !dbg !3173
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3174
  ret i32 %4, !dbg !3174
}

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_gc(%struct.lua_State*, i32, i32) local_unnamed_addr #0 !dbg !3175 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !3189
  %5 = load %struct.global_State*, %struct.global_State** %4, align 8, !dbg !3189, !tbaa !482
  switch i32 %1, label %47 [
    i32 0, label %6
    i32 1, label %8
    i32 2, label %12
    i32 3, label %13
    i32 4, label %18
    i32 5, label %23
    i32 6, label %41
    i32 7, label %44
  ], !dbg !3191

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 13, !dbg !3192
  store i64 -3, i64* %7, align 8, !dbg !3194, !tbaa !505
  br label %47, !dbg !3195

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 14, !dbg !3196
  %10 = load i64, i64* %9, align 8, !dbg !3196, !tbaa !504
  %11 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 13, !dbg !3198
  store i64 %10, i64* %11, align 8, !dbg !3199, !tbaa !505
  br label %47, !dbg !3200

; <label>:12:                                     ; preds = %3
  tail call void @luaC_fullgc(%struct.lua_State* nonnull %0) #5, !dbg !3201
  br label %47, !dbg !3203

; <label>:13:                                     ; preds = %3
  %14 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 14, !dbg !3204
  %15 = load i64, i64* %14, align 8, !dbg !3204, !tbaa !504
  %16 = lshr i64 %15, 10, !dbg !3204
  %17 = trunc i64 %16 to i32, !dbg !3204
  br label %47, !dbg !3206

; <label>:18:                                     ; preds = %3
  %19 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 14, !dbg !3207
  %20 = load i64, i64* %19, align 8, !dbg !3207, !tbaa !504
  %21 = trunc i64 %20 to i32, !dbg !3207
  %22 = and i32 %21, 1023, !dbg !3207
  br label %47, !dbg !3209

; <label>:23:                                     ; preds = %3
  %24 = sext i32 %2 to i64, !dbg !3210
  %25 = shl nsw i64 %24, 10, !dbg !3211
  %26 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 14, !dbg !3213
  %27 = load i64, i64* %26, align 8, !dbg !3213, !tbaa !504
  %28 = icmp ult i64 %27, %25, !dbg !3215
  %29 = select i1 %28, i64 %25, i64 %27, !dbg !3215
  %30 = sub i64 %29, %25, !dbg !3215
  %31 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 13, !dbg !3216
  store i64 %30, i64* %31, align 8, !dbg !3217
  %32 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 4
  %33 = icmp ugt i64 %30, %27, !dbg !3218
  br i1 %33, label %47, label %34, !dbg !3219

; <label>:34:                                     ; preds = %23, %37
  tail call void @luaC_step(%struct.lua_State* %0) #5, !dbg !3220
  %35 = load i8, i8* %32, align 1, !dbg !3222, !tbaa !3224
  %36 = icmp eq i8 %35, 0, !dbg !3225
  br i1 %36, label %47, label %37, !dbg !3226, !llvm.loop !3227

; <label>:37:                                     ; preds = %34
  %38 = load i64, i64* %31, align 8, !dbg !3229, !tbaa !505
  %39 = load i64, i64* %26, align 8, !dbg !3230, !tbaa !504
  %40 = icmp ugt i64 %38, %39, !dbg !3218
  br i1 %40, label %47, label %34, !dbg !3219

; <label>:41:                                     ; preds = %3
  %42 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 17, !dbg !3231
  %43 = load i32, i32* %42, align 8, !dbg !3231, !tbaa !3233
  store i32 %2, i32* %42, align 8, !dbg !3234, !tbaa !3233
  br label %47, !dbg !3235

; <label>:44:                                     ; preds = %3
  %45 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 18, !dbg !3236
  %46 = load i32, i32* %45, align 4, !dbg !3236, !tbaa !3238
  store i32 %2, i32* %45, align 4, !dbg !3239, !tbaa !3238
  br label %47, !dbg !3240

; <label>:47:                                     ; preds = %34, %37, %23, %3, %44, %41, %18, %13, %12, %8, %6
  %48 = phi i32 [ %46, %44 ], [ %43, %41 ], [ %22, %18 ], [ %17, %13 ], [ 0, %12 ], [ 0, %8 ], [ 0, %6 ], [ -1, %3 ], [ 0, %23 ], [ 0, %37 ], [ 1, %34 ], !dbg !3241
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3242
  ret i32 %48, !dbg !3242
}

; Function Attrs: noredzone
declare hidden void @luaC_fullgc(%struct.lua_State*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_error(%struct.lua_State*) local_unnamed_addr #0 !dbg !3243 {
  tail call void @luaG_errormsg(%struct.lua_State* %0) #5, !dbg !3247
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3248
  ret i32 0, !dbg !3248
}

; Function Attrs: noredzone
declare hidden void @luaG_errormsg(%struct.lua_State*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_next(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !3249 {
  %3 = icmp sgt i32 %1, 0, !dbg !3260
  br i1 %3, label %4, label %14, !dbg !3261

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !3262
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8, !dbg !3262, !tbaa !401
  %7 = add nsw i32 %1, -1, !dbg !3263
  %8 = sext i32 %7 to i64, !dbg !3264
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 %8, !dbg !3264
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !3266
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !3266, !tbaa !373
  %12 = icmp ult %struct.lua_TValue* %9, %11, !dbg !3267
  %13 = select i1 %12, %struct.lua_TValue* %9, %struct.lua_TValue* @luaO_nilobject_, !dbg !3268
  br label %57

; <label>:14:                                     ; preds = %2
  %15 = icmp sgt i32 %1, -10000, !dbg !3269
  br i1 %15, label %16, label %21, !dbg !3270

; <label>:16:                                     ; preds = %14
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !3271
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %17, align 8, !dbg !3271, !tbaa !373
  %19 = sext i32 %1 to i64, !dbg !3272
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 %19, !dbg !3272
  br label %57, !dbg !3273

; <label>:21:                                     ; preds = %14
  switch i32 %1, label %41 [
    i32 -10000, label %22
    i32 -10001, label %26
    i32 -10002, label %39
  ], !dbg !3274

; <label>:22:                                     ; preds = %21
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !3275
  %24 = load %struct.global_State*, %struct.global_State** %23, align 8, !dbg !3275, !tbaa !482
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %24, i64 0, i32 20, !dbg !3275
  br label %57, !dbg !3276

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !3277
  %28 = load %struct.CallInfo*, %struct.CallInfo** %27, align 8, !dbg !3277, !tbaa !418
  %29 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %28, i64 0, i32 1, !dbg !3277
  %30 = bitcast %struct.lua_TValue** %29 to %struct.CClosure***, !dbg !3277
  %31 = load %struct.CClosure**, %struct.CClosure*** %30, align 8, !dbg !3277, !tbaa !600
  %32 = load %struct.CClosure*, %struct.CClosure** %31, align 8, !dbg !3277, !tbaa !510
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !3279
  %34 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %32, i64 0, i32 6, !dbg !3279
  %35 = bitcast %struct.Table** %34 to i64*, !dbg !3279
  %36 = load i64, i64* %35, align 8, !dbg !3279, !tbaa !510
  %37 = bitcast %struct.lua_TValue* %33 to i64*, !dbg !3279
  store i64 %36, i64* %37, align 8, !dbg !3279, !tbaa !510
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !3279
  store i32 5, i32* %38, align 8, !dbg !3279, !tbaa !382
  br label %57

; <label>:39:                                     ; preds = %21
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !3280
  br label %57, !dbg !3281

; <label>:41:                                     ; preds = %21
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !3282
  %43 = load %struct.CallInfo*, %struct.CallInfo** %42, align 8, !dbg !3282, !tbaa !418
  %44 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %43, i64 0, i32 1, !dbg !3282
  %45 = bitcast %struct.lua_TValue** %44 to %struct.CClosure***, !dbg !3282
  %46 = load %struct.CClosure**, %struct.CClosure*** %45, align 8, !dbg !3282, !tbaa !600
  %47 = load %struct.CClosure*, %struct.CClosure** %46, align 8, !dbg !3282, !tbaa !510
  %48 = sub nsw i32 -10002, %1, !dbg !3284
  %49 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 4, !dbg !3285
  %50 = load i8, i8* %49, align 1, !dbg !3285, !tbaa !510
  %51 = zext i8 %50 to i32, !dbg !3286
  %52 = icmp sgt i32 %48, %51, !dbg !3287
  br i1 %52, label %57, label %53, !dbg !3288

; <label>:53:                                     ; preds = %41
  %54 = add nsw i32 %48, -1, !dbg !3289
  %55 = sext i32 %54 to i64, !dbg !3290
  %56 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 8, i64 %55, !dbg !3290
  br label %57, !dbg !3288

; <label>:57:                                     ; preds = %4, %16, %22, %26, %39, %41, %53
  %58 = phi %struct.lua_TValue* [ %13, %4 ], [ %20, %16 ], [ %40, %39 ], [ %33, %26 ], [ %25, %22 ], [ %56, %53 ], [ @luaO_nilobject_, %41 ], !dbg !3291
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3292
  %59 = bitcast %struct.lua_TValue* %58 to %struct.Table**, !dbg !3294
  %60 = load %struct.Table*, %struct.Table** %59, align 8, !dbg !3294, !tbaa !510
  %61 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !3295
  %62 = load %struct.lua_TValue*, %struct.lua_TValue** %61, align 8, !dbg !3295, !tbaa !373
  %63 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %62, i64 -1, !dbg !3296
  %64 = tail call i32 @luaH_next(%struct.lua_State* %0, %struct.Table* %60, %struct.lua_TValue* nonnull %63) #5, !dbg !3297
  %65 = icmp eq i32 %64, 0, !dbg !3299
  %66 = load %struct.lua_TValue*, %struct.lua_TValue** %61, align 8, !dbg !3301, !tbaa !373
  %67 = select i1 %65, i64 -1, i64 1, !dbg !3304
  %68 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %66, i64 %67, !dbg !3304
  store %struct.lua_TValue* %68, %struct.lua_TValue** %61, align 8, !dbg !3301, !tbaa !373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3305
  ret i32 %64, !dbg !3305
}

; Function Attrs: noredzone
declare hidden i32 @luaH_next(%struct.lua_State*, %struct.Table*, %struct.lua_TValue*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @lua_concat(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !3306 {
  %3 = icmp sgt i32 %1, 1, !dbg !3317
  br i1 %3, label %4, label %29, !dbg !3318

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !3319
  %6 = load %struct.global_State*, %struct.global_State** %5, align 8, !dbg !3319, !tbaa !482
  %7 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i64 0, i32 14, !dbg !3319
  %8 = load i64, i64* %7, align 8, !dbg !3319, !tbaa !504
  %9 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i64 0, i32 13, !dbg !3319
  %10 = load i64, i64* %9, align 8, !dbg !3319, !tbaa !505
  %11 = icmp ult i64 %8, %10, !dbg !3319
  br i1 %11, label %13, label %12, !dbg !3323

; <label>:12:                                     ; preds = %4
  tail call void @luaC_step(%struct.lua_State* nonnull %0) #5, !dbg !3319
  br label %13, !dbg !3319

; <label>:13:                                     ; preds = %4, %12
  %14 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !3324
  %15 = bitcast %struct.lua_TValue** %14 to i64*, !dbg !3324
  %16 = load i64, i64* %15, align 8, !dbg !3324, !tbaa !373
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !3324
  %18 = bitcast %struct.lua_TValue** %17 to i64*, !dbg !3324
  %19 = load i64, i64* %18, align 8, !dbg !3324, !tbaa !401
  %20 = sub i64 %16, %19, !dbg !3324
  %21 = lshr exact i64 %20, 4, !dbg !3324
  %22 = trunc i64 %21 to i32, !dbg !3324
  %23 = add nsw i32 %22, -1, !dbg !3325
  tail call void @luaV_concat(%struct.lua_State* nonnull %0, i32 %1, i32 %23) #5, !dbg !3326
  %24 = add nsw i32 %1, -1, !dbg !3327
  %25 = load %struct.lua_TValue*, %struct.lua_TValue** %14, align 8, !dbg !3328, !tbaa !373
  %26 = sext i32 %24 to i64, !dbg !3328
  %27 = sub nsw i64 0, %26, !dbg !3328
  %28 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %25, i64 %27, !dbg !3328
  br label %39, !dbg !3329

; <label>:29:                                     ; preds = %2
  %30 = icmp eq i32 %1, 0, !dbg !3330
  br i1 %30, label %31, label %42, !dbg !3331

; <label>:31:                                     ; preds = %29
  %32 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !3332
  %33 = load %struct.lua_TValue*, %struct.lua_TValue** %32, align 8, !dbg !3332, !tbaa !373
  %34 = tail call %union.TString* @luaS_newlstr(%struct.lua_State* %0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i64 0) #5, !dbg !3332
  %35 = bitcast %struct.lua_TValue* %33 to %union.TString**, !dbg !3332
  store %union.TString* %34, %union.TString** %35, align 8, !dbg !3332, !tbaa !510
  %36 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %33, i64 0, i32 1, !dbg !3332
  store i32 4, i32* %36, align 8, !dbg !3332, !tbaa !382
  %37 = load %struct.lua_TValue*, %struct.lua_TValue** %32, align 8, !dbg !3333, !tbaa !373
  %38 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %37, i64 1, !dbg !3333
  br label %39, !dbg !3335

; <label>:39:                                     ; preds = %13, %31
  %40 = phi %struct.lua_TValue** [ %32, %31 ], [ %14, %13 ]
  %41 = phi %struct.lua_TValue* [ %38, %31 ], [ %28, %13 ]
  store %struct.lua_TValue* %41, %struct.lua_TValue** %40, align 8, !dbg !3336, !tbaa !373
  br label %42, !dbg !3337

; <label>:42:                                     ; preds = %39, %29
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3337
  ret void, !dbg !3337
}

; Function Attrs: noredzone
declare hidden void @luaV_concat(%struct.lua_State*, i32, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i8* (i8*, i8*, i64, i64)* @lua_getallocf(%struct.lua_State* nocapture readonly, i8**) local_unnamed_addr #0 !dbg !3338 {
  %3 = icmp eq i8** %1, null, !dbg !3348
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !3350
  br i1 %3, label %11, label %5, !dbg !3351

; <label>:5:                                      ; preds = %2
  %6 = load %struct.global_State*, %struct.global_State** %4, align 8, !dbg !3352, !tbaa !482
  %7 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i64 0, i32 2, !dbg !3353
  %8 = bitcast i8** %7 to i64*, !dbg !3353
  %9 = load i64, i64* %8, align 8, !dbg !3353, !tbaa !3354
  %10 = bitcast i8** %1 to i64*, !dbg !3355
  store i64 %9, i64* %10, align 8, !dbg !3355, !tbaa !874
  br label %11, !dbg !3356

; <label>:11:                                     ; preds = %2, %5
  %12 = load %struct.global_State*, %struct.global_State** %4, align 8, !dbg !3357, !tbaa !482
  %13 = getelementptr inbounds %struct.global_State, %struct.global_State* %12, i64 0, i32 1, !dbg !3358
  %14 = load i8* (i8*, i8*, i64, i64)*, i8* (i8*, i8*, i64, i64)** %13, align 8, !dbg !3358, !tbaa !3359
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3361
  ret i8* (i8*, i8*, i64, i64)* %14, !dbg !3361
}

; Function Attrs: noredzone nounwind
define dso_local void @lua_setallocf(%struct.lua_State* nocapture readonly, i8* (i8*, i8*, i64, i64)*, i8*) local_unnamed_addr #0 !dbg !3362 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !3372
  %5 = load %struct.global_State*, %struct.global_State** %4, align 8, !dbg !3372, !tbaa !482
  %6 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 2, !dbg !3373
  store i8* %2, i8** %6, align 8, !dbg !3374, !tbaa !3354
  %7 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 1, !dbg !3375
  store i8* (i8*, i8*, i64, i64)* %1, i8* (i8*, i8*, i64, i64)** %7, align 8, !dbg !3376, !tbaa !3359
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3377
  ret void, !dbg !3377
}

; Function Attrs: noredzone nounwind
define dso_local nonnull i8* @lua_newuserdata(%struct.lua_State*, i64) local_unnamed_addr #0 !dbg !3378 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !3391
  %4 = load %struct.global_State*, %struct.global_State** %3, align 8, !dbg !3391, !tbaa !482
  %5 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 14, !dbg !3391
  %6 = load i64, i64* %5, align 8, !dbg !3391, !tbaa !504
  %7 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 13, !dbg !3391
  %8 = load i64, i64* %7, align 8, !dbg !3391, !tbaa !505
  %9 = icmp ult i64 %6, %8, !dbg !3391
  br i1 %9, label %11, label %10, !dbg !3394

; <label>:10:                                     ; preds = %2
  tail call void @luaC_step(%struct.lua_State* nonnull %0) #5, !dbg !3391
  br label %11, !dbg !3391

; <label>:11:                                     ; preds = %2, %10
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !3397
  %13 = load %struct.CallInfo*, %struct.CallInfo** %12, align 8, !dbg !3397, !tbaa !418
  %14 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 12, !dbg !3398
  %15 = load %struct.CallInfo*, %struct.CallInfo** %14, align 8, !dbg !3398, !tbaa !707
  %16 = icmp eq %struct.CallInfo* %13, %15, !dbg !3399
  br i1 %16, label %17, label %20, !dbg !3400

; <label>:17:                                     ; preds = %11
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, i32 0, i32 0, !dbg !3401
  %19 = bitcast %union.GCObject** %18 to %struct.Table**, !dbg !3401
  br label %26, !dbg !3402

; <label>:20:                                     ; preds = %11
  %21 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %13, i64 0, i32 1, !dbg !3403
  %22 = bitcast %struct.lua_TValue** %21 to %struct.CClosure***, !dbg !3403
  %23 = load %struct.CClosure**, %struct.CClosure*** %22, align 8, !dbg !3403, !tbaa !600
  %24 = load %struct.CClosure*, %struct.CClosure** %23, align 8, !dbg !3403, !tbaa !510
  %25 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %24, i64 0, i32 6, !dbg !3405
  br label %26

; <label>:26:                                     ; preds = %17, %20
  %27 = phi %struct.Table** [ %19, %17 ], [ %25, %20 ]
  %28 = load %struct.Table*, %struct.Table** %27, align 8, !dbg !3406, !tbaa !510
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3407
  %29 = tail call %union.Udata* @luaS_newudata(%struct.lua_State* nonnull %0, i64 %1, %struct.Table* %28) #5, !dbg !3408
  %30 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !3410
  %31 = load %struct.lua_TValue*, %struct.lua_TValue** %30, align 8, !dbg !3410, !tbaa !373
  %32 = bitcast %struct.lua_TValue* %31 to %union.Udata**, !dbg !3410
  store %union.Udata* %29, %union.Udata** %32, align 8, !dbg !3410, !tbaa !510
  %33 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %31, i64 0, i32 1, !dbg !3410
  store i32 7, i32* %33, align 8, !dbg !3410, !tbaa !382
  %34 = load %struct.lua_TValue*, %struct.lua_TValue** %30, align 8, !dbg !3411, !tbaa !373
  %35 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %34, i64 1, !dbg !3411
  store %struct.lua_TValue* %35, %struct.lua_TValue** %30, align 8, !dbg !3411, !tbaa !373
  %36 = getelementptr inbounds %union.Udata, %union.Udata* %29, i64 1, !dbg !3413
  %37 = bitcast %union.Udata* %36 to i8*, !dbg !3414
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3415
  ret i8* %37, !dbg !3415
}

; Function Attrs: noredzone
declare hidden %union.Udata* @luaS_newudata(%struct.lua_State*, i64, %struct.Table*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i8* @lua_getupvalue(%struct.lua_State* nocapture, i32, i32) local_unnamed_addr #0 !dbg !3416 {
  %4 = icmp sgt i32 %1, 0, !dbg !3436
  br i1 %4, label %5, label %15, !dbg !3437

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !3438
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8, !dbg !3438, !tbaa !401
  %8 = add nsw i32 %1, -1, !dbg !3439
  %9 = sext i32 %8 to i64, !dbg !3440
  %10 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %7, i64 %9, !dbg !3440
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !3442
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %11, align 8, !dbg !3442, !tbaa !373
  %13 = icmp ult %struct.lua_TValue* %10, %12, !dbg !3443
  %14 = select i1 %13, %struct.lua_TValue* %10, %struct.lua_TValue* @luaO_nilobject_, !dbg !3444
  br label %58

; <label>:15:                                     ; preds = %3
  %16 = icmp sgt i32 %1, -10000, !dbg !3445
  br i1 %16, label %17, label %22, !dbg !3446

; <label>:17:                                     ; preds = %15
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !3447
  %19 = load %struct.lua_TValue*, %struct.lua_TValue** %18, align 8, !dbg !3447, !tbaa !373
  %20 = sext i32 %1 to i64, !dbg !3448
  %21 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %19, i64 %20, !dbg !3448
  br label %58, !dbg !3449

; <label>:22:                                     ; preds = %15
  switch i32 %1, label %42 [
    i32 -10000, label %23
    i32 -10001, label %27
    i32 -10002, label %40
  ], !dbg !3450

; <label>:23:                                     ; preds = %22
  %24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !3451
  %25 = load %struct.global_State*, %struct.global_State** %24, align 8, !dbg !3451, !tbaa !482
  %26 = getelementptr inbounds %struct.global_State, %struct.global_State* %25, i64 0, i32 20, !dbg !3451
  br label %58, !dbg !3452

; <label>:27:                                     ; preds = %22
  %28 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !3453
  %29 = load %struct.CallInfo*, %struct.CallInfo** %28, align 8, !dbg !3453, !tbaa !418
  %30 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %29, i64 0, i32 1, !dbg !3453
  %31 = bitcast %struct.lua_TValue** %30 to %struct.CClosure***, !dbg !3453
  %32 = load %struct.CClosure**, %struct.CClosure*** %31, align 8, !dbg !3453, !tbaa !600
  %33 = load %struct.CClosure*, %struct.CClosure** %32, align 8, !dbg !3453, !tbaa !510
  %34 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !3455
  %35 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %33, i64 0, i32 6, !dbg !3455
  %36 = bitcast %struct.Table** %35 to i64*, !dbg !3455
  %37 = load i64, i64* %36, align 8, !dbg !3455, !tbaa !510
  %38 = bitcast %struct.lua_TValue* %34 to i64*, !dbg !3455
  store i64 %37, i64* %38, align 8, !dbg !3455, !tbaa !510
  %39 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !3455
  store i32 5, i32* %39, align 8, !dbg !3455, !tbaa !382
  br label %58

; <label>:40:                                     ; preds = %22
  %41 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !3456
  br label %58, !dbg !3457

; <label>:42:                                     ; preds = %22
  %43 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !3458
  %44 = load %struct.CallInfo*, %struct.CallInfo** %43, align 8, !dbg !3458, !tbaa !418
  %45 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %44, i64 0, i32 1, !dbg !3458
  %46 = bitcast %struct.lua_TValue** %45 to %struct.CClosure***, !dbg !3458
  %47 = load %struct.CClosure**, %struct.CClosure*** %46, align 8, !dbg !3458, !tbaa !600
  %48 = load %struct.CClosure*, %struct.CClosure** %47, align 8, !dbg !3458, !tbaa !510
  %49 = sub nsw i32 -10002, %1, !dbg !3460
  %50 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %48, i64 0, i32 4, !dbg !3461
  %51 = load i8, i8* %50, align 1, !dbg !3461, !tbaa !510
  %52 = zext i8 %51 to i32, !dbg !3462
  %53 = icmp sgt i32 %49, %52, !dbg !3463
  br i1 %53, label %58, label %54, !dbg !3464

; <label>:54:                                     ; preds = %42
  %55 = add nsw i32 %49, -1, !dbg !3465
  %56 = sext i32 %55 to i64, !dbg !3466
  %57 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %48, i64 0, i32 8, i64 %56, !dbg !3466
  br label %58, !dbg !3464

; <label>:58:                                     ; preds = %5, %17, %23, %27, %40, %42, %54
  %59 = phi %struct.lua_TValue* [ %14, %5 ], [ %21, %17 ], [ %41, %40 ], [ %34, %27 ], [ %26, %23 ], [ %57, %54 ], [ @luaO_nilobject_, %42 ], !dbg !3467
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3468
  %60 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %59, i64 0, i32 1, !dbg !3488
  %61 = load i32, i32* %60, align 8, !dbg !3488, !tbaa !382
  %62 = icmp eq i32 %61, 6, !dbg !3488
  br i1 %62, label %63, label %104, !dbg !3490

; <label>:63:                                     ; preds = %58
  %64 = bitcast %struct.lua_TValue* %59 to %union.Closure**, !dbg !3491
  %65 = load %union.Closure*, %union.Closure** %64, align 8, !dbg !3491, !tbaa !510
  %66 = getelementptr inbounds %union.Closure, %union.Closure* %65, i64 0, i32 0, i32 3, !dbg !3493
  %67 = load i8, i8* %66, align 2, !dbg !3493, !tbaa !510
  %68 = icmp eq i8 %67, 0, !dbg !3494
  br i1 %68, label %80, label %69, !dbg !3495

; <label>:69:                                     ; preds = %63
  %70 = icmp sgt i32 %2, 0, !dbg !3496
  br i1 %70, label %71, label %104, !dbg !3499

; <label>:71:                                     ; preds = %69
  %72 = getelementptr inbounds %union.Closure, %union.Closure* %65, i64 0, i32 0, i32 4, !dbg !3500
  %73 = load i8, i8* %72, align 1, !dbg !3500, !tbaa !510
  %74 = zext i8 %73 to i32, !dbg !3501
  %75 = icmp slt i32 %74, %2, !dbg !3502
  br i1 %75, label %104, label %76, !dbg !3503

; <label>:76:                                     ; preds = %71
  %77 = add nsw i32 %2, -1, !dbg !3504
  %78 = sext i32 %77 to i64, !dbg !3505
  %79 = getelementptr inbounds %union.Closure, %union.Closure* %65, i64 0, i32 0, i32 8, i64 %78, !dbg !3505
  br label %105, !dbg !3506

; <label>:80:                                     ; preds = %63
  %81 = getelementptr inbounds %union.Closure, %union.Closure* %65, i64 0, i32 0, i32 7, !dbg !3507
  %82 = bitcast i32 (%struct.lua_State*)** %81 to %struct.Proto**, !dbg !3507
  %83 = load %struct.Proto*, %struct.Proto** %82, align 8, !dbg !3507, !tbaa !510
  %84 = icmp sgt i32 %2, 0, !dbg !3509
  br i1 %84, label %85, label %104, !dbg !3511

; <label>:85:                                     ; preds = %80
  %86 = getelementptr inbounds %struct.Proto, %struct.Proto* %83, i64 0, i32 10, !dbg !3512
  %87 = load i32, i32* %86, align 8, !dbg !3512, !tbaa !3513
  %88 = icmp slt i32 %87, %2, !dbg !3515
  br i1 %88, label %104, label %89, !dbg !3516

; <label>:89:                                     ; preds = %85
  %90 = getelementptr inbounds %union.Closure, %union.Closure* %65, i64 0, i32 0, i32 8, !dbg !3517
  %91 = bitcast [1 x %struct.lua_TValue]* %90 to [1 x %struct.UpVal*]*, !dbg !3517
  %92 = add nsw i32 %2, -1, !dbg !3518
  %93 = sext i32 %92 to i64, !dbg !3519
  %94 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %91, i64 0, i64 %93, !dbg !3519
  %95 = load %struct.UpVal*, %struct.UpVal** %94, align 8, !dbg !3519, !tbaa !510
  %96 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %95, i64 0, i32 3, !dbg !3520
  %97 = load %struct.lua_TValue*, %struct.lua_TValue** %96, align 8, !dbg !3520, !tbaa !3521
  %98 = getelementptr inbounds %struct.Proto, %struct.Proto* %83, i64 0, i32 8, !dbg !3522
  %99 = load %union.TString**, %union.TString*** %98, align 8, !dbg !3522, !tbaa !3523
  %100 = getelementptr inbounds %union.TString*, %union.TString** %99, i64 %93, !dbg !3522
  %101 = load %union.TString*, %union.TString** %100, align 8, !dbg !3522, !tbaa !874
  %102 = getelementptr inbounds %union.TString, %union.TString* %101, i64 1, !dbg !3522
  %103 = bitcast %union.TString* %102 to i8*, !dbg !3522
  br label %105, !dbg !3524

; <label>:104:                                    ; preds = %58, %71, %69, %85, %80
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3525
  br label %118, !dbg !3527

; <label>:105:                                    ; preds = %89, %76
  %106 = phi %struct.lua_TValue* [ %97, %89 ], [ %79, %76 ]
  %107 = phi i8* [ %103, %89 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %76 ], !dbg !3528
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3525
  %108 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !3529
  %109 = load %struct.lua_TValue*, %struct.lua_TValue** %108, align 8, !dbg !3529, !tbaa !373
  %110 = bitcast %struct.lua_TValue* %106 to i64*, !dbg !3529
  %111 = bitcast %struct.lua_TValue* %109 to i64*, !dbg !3529
  %112 = load i64, i64* %110, align 8, !dbg !3529
  store i64 %112, i64* %111, align 8, !dbg !3529
  %113 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %106, i64 0, i32 1, !dbg !3529
  %114 = load i32, i32* %113, align 8, !dbg !3529, !tbaa !382
  %115 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %109, i64 0, i32 1, !dbg !3529
  store i32 %114, i32* %115, align 8, !dbg !3529, !tbaa !382
  %116 = load %struct.lua_TValue*, %struct.lua_TValue** %108, align 8, !dbg !3530, !tbaa !373
  %117 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %116, i64 1, !dbg !3530
  store %struct.lua_TValue* %117, %struct.lua_TValue** %108, align 8, !dbg !3530, !tbaa !373
  br label %118, !dbg !3532

; <label>:118:                                    ; preds = %104, %105
  %119 = phi i8* [ null, %104 ], [ %107, %105 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3533
  ret i8* %119, !dbg !3533
}

; Function Attrs: noredzone nounwind
define dso_local i8* @lua_setupvalue(%struct.lua_State*, i32, i32) local_unnamed_addr #0 !dbg !3534 {
  %4 = icmp sgt i32 %1, 0, !dbg !3553
  br i1 %4, label %5, label %15, !dbg !3554

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !3555
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8, !dbg !3555, !tbaa !401
  %8 = add nsw i32 %1, -1, !dbg !3556
  %9 = sext i32 %8 to i64, !dbg !3557
  %10 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %7, i64 %9, !dbg !3557
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !3559
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %11, align 8, !dbg !3559, !tbaa !373
  %13 = icmp ult %struct.lua_TValue* %10, %12, !dbg !3560
  %14 = select i1 %13, %struct.lua_TValue* %10, %struct.lua_TValue* @luaO_nilobject_, !dbg !3561
  br label %58

; <label>:15:                                     ; preds = %3
  %16 = icmp sgt i32 %1, -10000, !dbg !3562
  br i1 %16, label %17, label %22, !dbg !3563

; <label>:17:                                     ; preds = %15
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !3564
  %19 = load %struct.lua_TValue*, %struct.lua_TValue** %18, align 8, !dbg !3564, !tbaa !373
  %20 = sext i32 %1 to i64, !dbg !3565
  %21 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %19, i64 %20, !dbg !3565
  br label %58, !dbg !3566

; <label>:22:                                     ; preds = %15
  switch i32 %1, label %42 [
    i32 -10000, label %23
    i32 -10001, label %27
    i32 -10002, label %40
  ], !dbg !3567

; <label>:23:                                     ; preds = %22
  %24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !3568
  %25 = load %struct.global_State*, %struct.global_State** %24, align 8, !dbg !3568, !tbaa !482
  %26 = getelementptr inbounds %struct.global_State, %struct.global_State* %25, i64 0, i32 20, !dbg !3568
  br label %58, !dbg !3569

; <label>:27:                                     ; preds = %22
  %28 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !3570
  %29 = load %struct.CallInfo*, %struct.CallInfo** %28, align 8, !dbg !3570, !tbaa !418
  %30 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %29, i64 0, i32 1, !dbg !3570
  %31 = bitcast %struct.lua_TValue** %30 to %struct.CClosure***, !dbg !3570
  %32 = load %struct.CClosure**, %struct.CClosure*** %31, align 8, !dbg !3570, !tbaa !600
  %33 = load %struct.CClosure*, %struct.CClosure** %32, align 8, !dbg !3570, !tbaa !510
  %34 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !3572
  %35 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %33, i64 0, i32 6, !dbg !3572
  %36 = bitcast %struct.Table** %35 to i64*, !dbg !3572
  %37 = load i64, i64* %36, align 8, !dbg !3572, !tbaa !510
  %38 = bitcast %struct.lua_TValue* %34 to i64*, !dbg !3572
  store i64 %37, i64* %38, align 8, !dbg !3572, !tbaa !510
  %39 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !3572
  store i32 5, i32* %39, align 8, !dbg !3572, !tbaa !382
  br label %58

; <label>:40:                                     ; preds = %22
  %41 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !3573
  br label %58, !dbg !3574

; <label>:42:                                     ; preds = %22
  %43 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !3575
  %44 = load %struct.CallInfo*, %struct.CallInfo** %43, align 8, !dbg !3575, !tbaa !418
  %45 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %44, i64 0, i32 1, !dbg !3575
  %46 = bitcast %struct.lua_TValue** %45 to %struct.CClosure***, !dbg !3575
  %47 = load %struct.CClosure**, %struct.CClosure*** %46, align 8, !dbg !3575, !tbaa !600
  %48 = load %struct.CClosure*, %struct.CClosure** %47, align 8, !dbg !3575, !tbaa !510
  %49 = sub nsw i32 -10002, %1, !dbg !3577
  %50 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %48, i64 0, i32 4, !dbg !3578
  %51 = load i8, i8* %50, align 1, !dbg !3578, !tbaa !510
  %52 = zext i8 %51 to i32, !dbg !3579
  %53 = icmp sgt i32 %49, %52, !dbg !3580
  br i1 %53, label %58, label %54, !dbg !3581

; <label>:54:                                     ; preds = %42
  %55 = add nsw i32 %49, -1, !dbg !3582
  %56 = sext i32 %55 to i64, !dbg !3583
  %57 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %48, i64 0, i32 8, i64 %56, !dbg !3583
  br label %58, !dbg !3581

; <label>:58:                                     ; preds = %5, %17, %23, %27, %40, %42, %54
  %59 = phi %struct.lua_TValue* [ %14, %5 ], [ %21, %17 ], [ %41, %40 ], [ %34, %27 ], [ %26, %23 ], [ %57, %54 ], [ @luaO_nilobject_, %42 ], !dbg !3584
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3585
  %60 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %59, i64 0, i32 1, !dbg !3592
  %61 = load i32, i32* %60, align 8, !dbg !3592, !tbaa !382
  %62 = icmp eq i32 %61, 6, !dbg !3592
  br i1 %62, label %63, label %104, !dbg !3593

; <label>:63:                                     ; preds = %58
  %64 = bitcast %struct.lua_TValue* %59 to %union.Closure**, !dbg !3594
  %65 = load %union.Closure*, %union.Closure** %64, align 8, !dbg !3594, !tbaa !510
  %66 = getelementptr inbounds %union.Closure, %union.Closure* %65, i64 0, i32 0, i32 3, !dbg !3596
  %67 = load i8, i8* %66, align 2, !dbg !3596, !tbaa !510
  %68 = icmp eq i8 %67, 0, !dbg !3597
  br i1 %68, label %80, label %69, !dbg !3598

; <label>:69:                                     ; preds = %63
  %70 = icmp sgt i32 %2, 0, !dbg !3599
  br i1 %70, label %71, label %104, !dbg !3600

; <label>:71:                                     ; preds = %69
  %72 = getelementptr inbounds %union.Closure, %union.Closure* %65, i64 0, i32 0, i32 4, !dbg !3601
  %73 = load i8, i8* %72, align 1, !dbg !3601, !tbaa !510
  %74 = zext i8 %73 to i32, !dbg !3602
  %75 = icmp slt i32 %74, %2, !dbg !3603
  br i1 %75, label %104, label %76, !dbg !3604

; <label>:76:                                     ; preds = %71
  %77 = add nsw i32 %2, -1, !dbg !3605
  %78 = sext i32 %77 to i64, !dbg !3606
  %79 = getelementptr inbounds %union.Closure, %union.Closure* %65, i64 0, i32 0, i32 8, i64 %78, !dbg !3606
  br label %105, !dbg !3607

; <label>:80:                                     ; preds = %63
  %81 = getelementptr inbounds %union.Closure, %union.Closure* %65, i64 0, i32 0, i32 7, !dbg !3608
  %82 = bitcast i32 (%struct.lua_State*)** %81 to %struct.Proto**, !dbg !3608
  %83 = load %struct.Proto*, %struct.Proto** %82, align 8, !dbg !3608, !tbaa !510
  %84 = icmp sgt i32 %2, 0, !dbg !3610
  br i1 %84, label %85, label %104, !dbg !3611

; <label>:85:                                     ; preds = %80
  %86 = getelementptr inbounds %struct.Proto, %struct.Proto* %83, i64 0, i32 10, !dbg !3612
  %87 = load i32, i32* %86, align 8, !dbg !3612, !tbaa !3513
  %88 = icmp slt i32 %87, %2, !dbg !3613
  br i1 %88, label %104, label %89, !dbg !3614

; <label>:89:                                     ; preds = %85
  %90 = getelementptr inbounds %union.Closure, %union.Closure* %65, i64 0, i32 0, i32 8, !dbg !3615
  %91 = bitcast [1 x %struct.lua_TValue]* %90 to [1 x %struct.UpVal*]*, !dbg !3615
  %92 = add nsw i32 %2, -1, !dbg !3616
  %93 = sext i32 %92 to i64, !dbg !3617
  %94 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %91, i64 0, i64 %93, !dbg !3617
  %95 = load %struct.UpVal*, %struct.UpVal** %94, align 8, !dbg !3617, !tbaa !510
  %96 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %95, i64 0, i32 3, !dbg !3618
  %97 = load %struct.lua_TValue*, %struct.lua_TValue** %96, align 8, !dbg !3618, !tbaa !3521
  %98 = getelementptr inbounds %struct.Proto, %struct.Proto* %83, i64 0, i32 8, !dbg !3619
  %99 = load %union.TString**, %union.TString*** %98, align 8, !dbg !3619, !tbaa !3523
  %100 = getelementptr inbounds %union.TString*, %union.TString** %99, i64 %93, !dbg !3619
  %101 = load %union.TString*, %union.TString** %100, align 8, !dbg !3619, !tbaa !874
  %102 = getelementptr inbounds %union.TString, %union.TString* %101, i64 1, !dbg !3619
  %103 = bitcast %union.TString* %102 to i8*, !dbg !3619
  br label %105, !dbg !3620

; <label>:104:                                    ; preds = %58, %71, %69, %85, %80
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3621
  br label %136, !dbg !3623

; <label>:105:                                    ; preds = %89, %76
  %106 = phi %struct.lua_TValue* [ %97, %89 ], [ %79, %76 ]
  %107 = phi i8* [ %103, %89 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %76 ], !dbg !3624
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3621
  %108 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !3625
  %109 = load %struct.lua_TValue*, %struct.lua_TValue** %108, align 8, !dbg !3626, !tbaa !373
  %110 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %109, i64 -1, !dbg !3626
  store %struct.lua_TValue* %110, %struct.lua_TValue** %108, align 8, !dbg !3626, !tbaa !373
  %111 = bitcast %struct.lua_TValue* %110 to i64*, !dbg !3627
  %112 = bitcast %struct.lua_TValue* %106 to i64*, !dbg !3627
  %113 = load i64, i64* %111, align 8, !dbg !3627
  store i64 %113, i64* %112, align 8, !dbg !3627
  %114 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %109, i64 -1, i32 1, !dbg !3627
  %115 = load i32, i32* %114, align 8, !dbg !3627, !tbaa !382
  %116 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %106, i64 0, i32 1, !dbg !3627
  store i32 %115, i32* %116, align 8, !dbg !3627, !tbaa !382
  %117 = load %struct.lua_TValue*, %struct.lua_TValue** %108, align 8, !dbg !3628, !tbaa !373
  %118 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %117, i64 0, i32 1, !dbg !3628
  %119 = load i32, i32* %118, align 8, !dbg !3628, !tbaa !382
  %120 = icmp sgt i32 %119, 3, !dbg !3628
  br i1 %120, label %121, label %136, !dbg !3628

; <label>:121:                                    ; preds = %105
  %122 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %117, i64 0, i32 0, i32 0, !dbg !3628
  %123 = load %union.GCObject*, %union.GCObject** %122, align 8, !dbg !3628, !tbaa !510
  %124 = getelementptr inbounds %union.GCObject, %union.GCObject* %123, i64 0, i32 0, i32 2, !dbg !3628
  %125 = load i8, i8* %124, align 1, !dbg !3628, !tbaa !510
  %126 = and i8 %125, 3, !dbg !3628
  %127 = icmp eq i8 %126, 0, !dbg !3628
  br i1 %127, label %136, label %128, !dbg !3628

; <label>:128:                                    ; preds = %121
  %129 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %59, i64 0, i32 0, i32 0, !dbg !3628
  %130 = load %union.GCObject*, %union.GCObject** %129, align 8, !dbg !3628, !tbaa !510
  %131 = getelementptr inbounds %union.GCObject, %union.GCObject* %130, i64 0, i32 0, i32 2, !dbg !3628
  %132 = load i8, i8* %131, align 1, !dbg !3628, !tbaa !510
  %133 = and i8 %132, 4, !dbg !3628
  %134 = icmp eq i8 %133, 0, !dbg !3628
  br i1 %134, label %136, label %135, !dbg !3631

; <label>:135:                                    ; preds = %128
  tail call void @luaC_barrierf(%struct.lua_State* nonnull %0, %union.GCObject* %130, %union.GCObject* %123) #5, !dbg !3628
  br label %136, !dbg !3628

; <label>:136:                                    ; preds = %104, %128, %121, %105, %135
  %137 = phi i8* [ null, %104 ], [ %107, %128 ], [ %107, %121 ], [ %107, %105 ], [ %107, %135 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3632
  ret i8* %137, !dbg !3632
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }

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
!615 = !DILocation(line: 76, column: 1, scope: !559, inlinedAt: !578)
!616 = !DILocation(line: 181, column: 9, scope: !548)
!617 = !DILocation(line: 185, column: 10, scope: !548)
!618 = !DILocation(line: 185, column: 19, scope: !548)
!619 = !DILocation(line: 185, column: 14, scope: !548)
!620 = !DILocation(line: 185, column: 3, scope: !548)
!621 = !DILocation(line: 185, column: 24, scope: !554)
!622 = distinct !{!622, !620, !623}
!623 = !DILocation(line: 185, column: 24, scope: !548)
!624 = !DILocation(line: 186, column: 9, scope: !548)
!625 = !DILocation(line: 188, column: 1, scope: !548)
!626 = distinct !DISubprogram(name: "lua_insert", scope: !3, file: !3, line: 191, type: !521, isLocal: false, isDefinition: true, scopeLine: 191, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !627)
!627 = !{!628, !629, !630, !631, !632, !636, !637, !639}
!628 = !DILocalVariable(name: "L", arg: 1, scope: !626, file: !3, line: 191, type: !131)
!629 = !DILocalVariable(name: "idx", arg: 2, scope: !626, file: !3, line: 191, type: !8)
!630 = !DILocalVariable(name: "p", scope: !626, file: !3, line: 192, type: !140)
!631 = !DILocalVariable(name: "q", scope: !626, file: !3, line: 193, type: !140)
!632 = !DILocalVariable(name: "o2", scope: !633, file: !3, line: 197, type: !362)
!633 = distinct !DILexicalBlock(scope: !634, file: !3, line: 197, column: 30)
!634 = distinct !DILexicalBlock(scope: !635, file: !3, line: 197, column: 3)
!635 = distinct !DILexicalBlock(scope: !626, file: !3, line: 197, column: 3)
!636 = !DILocalVariable(name: "o1", scope: !633, file: !3, line: 197, type: !74)
!637 = !DILocalVariable(name: "o2", scope: !638, file: !3, line: 198, type: !362)
!638 = distinct !DILexicalBlock(scope: !626, file: !3, line: 198, column: 3)
!639 = !DILocalVariable(name: "o1", scope: !638, file: !3, line: 198, type: !74)
!640 = !DILocation(line: 191, column: 37, scope: !626)
!641 = !DILocation(line: 191, column: 44, scope: !626)
!642 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !643)
!643 = distinct !DILocation(line: 195, column: 7, scope: !626)
!644 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !643)
!645 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !643)
!646 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !643)
!647 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !643)
!648 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !643)
!649 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !643)
!650 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !643)
!651 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !643)
!652 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !643)
!653 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !643)
!654 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !643)
!655 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !643)
!656 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !643)
!657 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !643)
!658 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !643)
!659 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !643)
!660 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !643)
!661 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !643)
!662 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !643)
!663 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !643)
!664 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !643)
!665 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !643)
!666 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !643)
!667 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !643)
!668 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !643)
!669 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !643)
!670 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !643)
!671 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !643)
!672 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !643)
!673 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !643)
!674 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !643)
!675 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !643)
!676 = !DILocation(line: 0, scope: !569, inlinedAt: !643)
!677 = !DILocation(line: 76, column: 1, scope: !559, inlinedAt: !643)
!678 = !DILocation(line: 192, column: 9, scope: !626)
!679 = !DILocation(line: 197, column: 15, scope: !635)
!680 = !DILocation(line: 193, column: 9, scope: !626)
!681 = !DILocation(line: 197, column: 21, scope: !634)
!682 = !DILocation(line: 197, column: 3, scope: !635)
!683 = !DILocation(line: 197, column: 30, scope: !633)
!684 = distinct !{!684, !682, !685}
!685 = !DILocation(line: 197, column: 30, scope: !635)
!686 = !DILocation(line: 198, column: 3, scope: !638)
!687 = !DILocation(line: 200, column: 1, scope: !626)
!688 = distinct !DISubprogram(name: "lua_replace", scope: !3, file: !3, line: 203, type: !521, isLocal: false, isDefinition: true, scopeLine: 203, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !689)
!689 = !{!690, !691, !692, !693, !696, !699}
!690 = !DILocalVariable(name: "L", arg: 1, scope: !688, file: !3, line: 203, type: !131)
!691 = !DILocalVariable(name: "idx", arg: 2, scope: !688, file: !3, line: 203, type: !8)
!692 = !DILocalVariable(name: "o", scope: !688, file: !3, line: 204, type: !140)
!693 = !DILocalVariable(name: "func", scope: !694, file: !3, line: 213, type: !571)
!694 = distinct !DILexicalBlock(scope: !695, file: !3, line: 212, column: 32)
!695 = distinct !DILexicalBlock(scope: !688, file: !3, line: 212, column: 7)
!696 = !DILocalVariable(name: "o2", scope: !697, file: !3, line: 219, type: !362)
!697 = distinct !DILexicalBlock(scope: !698, file: !3, line: 219, column: 5)
!698 = distinct !DILexicalBlock(scope: !695, file: !3, line: 218, column: 8)
!699 = !DILocalVariable(name: "o1", scope: !697, file: !3, line: 219, type: !74)
!700 = !DILocation(line: 203, column: 38, scope: !688)
!701 = !DILocation(line: 203, column: 45, scope: !688)
!702 = !DILocation(line: 207, column: 11, scope: !703)
!703 = distinct !DILexicalBlock(scope: !688, file: !3, line: 207, column: 7)
!704 = !DILocation(line: 207, column: 31, scope: !703)
!705 = !DILocation(line: 207, column: 37, scope: !703)
!706 = !DILocation(line: 207, column: 46, scope: !703)
!707 = !{!374, !375, i64 80}
!708 = !DILocation(line: 207, column: 40, scope: !703)
!709 = !DILocation(line: 207, column: 7, scope: !688)
!710 = !DILocation(line: 208, column: 5, scope: !703)
!711 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !712)
!712 = distinct !DILocation(line: 210, column: 7, scope: !688)
!713 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !712)
!714 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !712)
!715 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !712)
!716 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !712)
!717 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !712)
!718 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !712)
!719 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !712)
!720 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !712)
!721 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !712)
!722 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !712)
!723 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !712)
!724 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !712)
!725 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !712)
!726 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !712)
!727 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !712)
!728 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !712)
!729 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !712)
!730 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !712)
!731 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !712)
!732 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !712)
!733 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !712)
!734 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !712)
!735 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !712)
!736 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !712)
!737 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !712)
!738 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !712)
!739 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !712)
!740 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !712)
!741 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !712)
!742 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !712)
!743 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !712)
!744 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !712)
!745 = !DILocation(line: 76, column: 1, scope: !559, inlinedAt: !712)
!746 = !DILocation(line: 204, column: 9, scope: !688)
!747 = !DILocation(line: 213, column: 21, scope: !694)
!748 = !DILocation(line: 213, column: 14, scope: !694)
!749 = !DILocation(line: 215, column: 19, scope: !694)
!750 = !DILocation(line: 215, column: 13, scope: !694)
!751 = !DILocation(line: 215, column: 17, scope: !694)
!752 = !DILocation(line: 216, column: 5, scope: !753)
!753 = distinct !DILexicalBlock(scope: !754, file: !3, line: 216, column: 5)
!754 = distinct !DILexicalBlock(scope: !694, file: !3, line: 216, column: 5)
!755 = !DILocation(line: 216, column: 5, scope: !754)
!756 = !DILocation(line: 219, column: 5, scope: !697)
!757 = !DILocation(line: 220, column: 13, scope: !758)
!758 = distinct !DILexicalBlock(scope: !698, file: !3, line: 220, column: 9)
!759 = !DILocation(line: 220, column: 9, scope: !698)
!760 = !DILocation(line: 221, column: 7, scope: !761)
!761 = distinct !DILexicalBlock(scope: !762, file: !3, line: 221, column: 7)
!762 = distinct !DILexicalBlock(scope: !758, file: !3, line: 221, column: 7)
!763 = !DILocation(line: 221, column: 7, scope: !762)
!764 = !DILocation(line: 223, column: 6, scope: !688)
!765 = !DILocation(line: 223, column: 9, scope: !688)
!766 = !DILocation(line: 225, column: 1, scope: !688)
!767 = distinct !DISubprogram(name: "lua_pushvalue", scope: !3, file: !3, line: 228, type: !521, isLocal: false, isDefinition: true, scopeLine: 228, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !768)
!768 = !{!769, !770, !771, !773}
!769 = !DILocalVariable(name: "L", arg: 1, scope: !767, file: !3, line: 228, type: !131)
!770 = !DILocalVariable(name: "idx", arg: 2, scope: !767, file: !3, line: 228, type: !8)
!771 = !DILocalVariable(name: "o2", scope: !772, file: !3, line: 230, type: !362)
!772 = distinct !DILexicalBlock(scope: !767, file: !3, line: 230, column: 3)
!773 = !DILocalVariable(name: "o1", scope: !772, file: !3, line: 230, type: !74)
!774 = !DILocation(line: 228, column: 40, scope: !767)
!775 = !DILocation(line: 228, column: 47, scope: !767)
!776 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !777)
!777 = distinct !DILocation(line: 230, column: 3, scope: !772)
!778 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !777)
!779 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !777)
!780 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !777)
!781 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !777)
!782 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !777)
!783 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !777)
!784 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !777)
!785 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !777)
!786 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !777)
!787 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !777)
!788 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !777)
!789 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !777)
!790 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !777)
!791 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !777)
!792 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !777)
!793 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !777)
!794 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !777)
!795 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !777)
!796 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !777)
!797 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !777)
!798 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !777)
!799 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !777)
!800 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !777)
!801 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !777)
!802 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !777)
!803 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !777)
!804 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !777)
!805 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !777)
!806 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !777)
!807 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !777)
!808 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !777)
!809 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !777)
!810 = !DILocation(line: 0, scope: !569, inlinedAt: !777)
!811 = !DILocation(line: 76, column: 1, scope: !559, inlinedAt: !777)
!812 = !DILocation(line: 230, column: 3, scope: !772)
!813 = !DILocation(line: 231, column: 3, scope: !814)
!814 = distinct !DILexicalBlock(scope: !767, file: !3, line: 231, column: 3)
!815 = !DILocation(line: 233, column: 1, scope: !767)
!816 = distinct !DISubprogram(name: "lua_type", scope: !3, file: !3, line: 242, type: !387, isLocal: false, isDefinition: true, scopeLine: 242, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !817)
!817 = !{!818, !819, !820}
!818 = !DILocalVariable(name: "L", arg: 1, scope: !816, file: !3, line: 242, type: !131)
!819 = !DILocalVariable(name: "idx", arg: 2, scope: !816, file: !3, line: 242, type: !8)
!820 = !DILocalVariable(name: "o", scope: !816, file: !3, line: 243, type: !140)
!821 = !DILocation(line: 242, column: 34, scope: !816)
!822 = !DILocation(line: 242, column: 41, scope: !816)
!823 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !824)
!824 = distinct !DILocation(line: 243, column: 13, scope: !816)
!825 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !824)
!826 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !824)
!827 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !824)
!828 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !824)
!829 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !824)
!830 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !824)
!831 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !824)
!832 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !824)
!833 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !824)
!834 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !824)
!835 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !824)
!836 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !824)
!837 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !824)
!838 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !824)
!839 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !824)
!840 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !824)
!841 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !824)
!842 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !824)
!843 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !824)
!844 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !824)
!845 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !824)
!846 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !824)
!847 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !824)
!848 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !824)
!849 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !824)
!850 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !824)
!851 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !824)
!852 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !824)
!853 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !824)
!854 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !824)
!855 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !824)
!856 = !DILocation(line: 76, column: 1, scope: !559, inlinedAt: !824)
!857 = !DILocation(line: 243, column: 9, scope: !816)
!858 = !DILocation(line: 244, column: 10, scope: !816)
!859 = !DILocation(line: 0, scope: !569, inlinedAt: !824)
!860 = !DILocation(line: 244, column: 13, scope: !816)
!861 = !DILocation(line: 244, column: 46, scope: !816)
!862 = !DILocation(line: 244, column: 3, scope: !816)
!863 = distinct !DISubprogram(name: "lua_typename", scope: !3, file: !3, line: 248, type: !864, isLocal: false, isDefinition: true, scopeLine: 248, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !866)
!864 = !DISubroutineType(types: !865)
!865 = !{!257, !131, !8}
!866 = !{!867, !868}
!867 = !DILocalVariable(name: "L", arg: 1, scope: !863, file: !3, line: 248, type: !131)
!868 = !DILocalVariable(name: "t", arg: 2, scope: !863, file: !3, line: 248, type: !8)
!869 = !DILocation(line: 248, column: 46, scope: !863)
!870 = !DILocation(line: 248, column: 53, scope: !863)
!871 = !DILocation(line: 250, column: 13, scope: !863)
!872 = !DILocation(line: 250, column: 10, scope: !863)
!873 = !DILocation(line: 250, column: 42, scope: !863)
!874 = !{!375, !375, i64 0}
!875 = !DILocation(line: 250, column: 3, scope: !863)
!876 = distinct !DISubprogram(name: "lua_iscfunction", scope: !3, file: !3, line: 254, type: !387, isLocal: false, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !877)
!877 = !{!878, !879, !880}
!878 = !DILocalVariable(name: "L", arg: 1, scope: !876, file: !3, line: 254, type: !131)
!879 = !DILocalVariable(name: "idx", arg: 2, scope: !876, file: !3, line: 254, type: !8)
!880 = !DILocalVariable(name: "o", scope: !876, file: !3, line: 255, type: !140)
!881 = !DILocation(line: 254, column: 41, scope: !876)
!882 = !DILocation(line: 254, column: 48, scope: !876)
!883 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !884)
!884 = distinct !DILocation(line: 255, column: 13, scope: !876)
!885 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !884)
!886 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !884)
!887 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !884)
!888 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !884)
!889 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !884)
!890 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !884)
!891 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !884)
!892 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !884)
!893 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !884)
!894 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !884)
!895 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !884)
!896 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !884)
!897 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !884)
!898 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !884)
!899 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !884)
!900 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !884)
!901 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !884)
!902 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !884)
!903 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !884)
!904 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !884)
!905 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !884)
!906 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !884)
!907 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !884)
!908 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !884)
!909 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !884)
!910 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !884)
!911 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !884)
!912 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !884)
!913 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !884)
!914 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !884)
!915 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !884)
!916 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !884)
!917 = !DILocation(line: 0, scope: !569, inlinedAt: !884)
!918 = !DILocation(line: 76, column: 1, scope: !559, inlinedAt: !884)
!919 = !DILocation(line: 255, column: 9, scope: !876)
!920 = !DILocation(line: 256, column: 10, scope: !876)
!921 = !DILocation(line: 256, column: 3, scope: !876)
!922 = distinct !DISubprogram(name: "lua_isnumber", scope: !3, file: !3, line: 260, type: !387, isLocal: false, isDefinition: true, scopeLine: 260, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !923)
!923 = !{!924, !925, !926, !927}
!924 = !DILocalVariable(name: "L", arg: 1, scope: !922, file: !3, line: 260, type: !131)
!925 = !DILocalVariable(name: "idx", arg: 2, scope: !922, file: !3, line: 260, type: !8)
!926 = !DILocalVariable(name: "n", scope: !922, file: !3, line: 261, type: !75)
!927 = !DILocalVariable(name: "o", scope: !922, file: !3, line: 262, type: !362)
!928 = !DILocation(line: 260, column: 38, scope: !922)
!929 = !DILocation(line: 260, column: 45, scope: !922)
!930 = !DILocation(line: 261, column: 3, scope: !922)
!931 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !932)
!932 = distinct !DILocation(line: 262, column: 21, scope: !922)
!933 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !932)
!934 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !932)
!935 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !932)
!936 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !932)
!937 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !932)
!938 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !932)
!939 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !932)
!940 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !932)
!941 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !932)
!942 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !932)
!943 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !932)
!944 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !932)
!945 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !932)
!946 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !932)
!947 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !932)
!948 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !932)
!949 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !932)
!950 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !932)
!951 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !932)
!952 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !932)
!953 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !932)
!954 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !932)
!955 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !932)
!956 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !932)
!957 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !932)
!958 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !932)
!959 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !932)
!960 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !932)
!961 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !932)
!962 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !932)
!963 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !932)
!964 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !932)
!965 = !DILocation(line: 0, scope: !569, inlinedAt: !932)
!966 = !DILocation(line: 76, column: 1, scope: !559, inlinedAt: !932)
!967 = !DILocation(line: 262, column: 17, scope: !922)
!968 = !DILocation(line: 263, column: 10, scope: !922)
!969 = !DILocation(line: 261, column: 10, scope: !922)
!970 = !DILocation(line: 264, column: 1, scope: !922)
!971 = !DILocation(line: 263, column: 3, scope: !922)
!972 = distinct !DISubprogram(name: "lua_isstring", scope: !3, file: !3, line: 267, type: !387, isLocal: false, isDefinition: true, scopeLine: 267, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !973)
!973 = !{!974, !975, !976}
!974 = !DILocalVariable(name: "L", arg: 1, scope: !972, file: !3, line: 267, type: !131)
!975 = !DILocalVariable(name: "idx", arg: 2, scope: !972, file: !3, line: 267, type: !8)
!976 = !DILocalVariable(name: "t", scope: !972, file: !3, line: 268, type: !8)
!977 = !DILocation(line: 267, column: 38, scope: !972)
!978 = !DILocation(line: 267, column: 45, scope: !972)
!979 = !DILocation(line: 242, column: 34, scope: !816, inlinedAt: !980)
!980 = distinct !DILocation(line: 268, column: 11, scope: !972)
!981 = !DILocation(line: 242, column: 41, scope: !816, inlinedAt: !980)
!982 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !983)
!983 = distinct !DILocation(line: 243, column: 13, scope: !816, inlinedAt: !980)
!984 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !983)
!985 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !983)
!986 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !983)
!987 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !983)
!988 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !983)
!989 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !983)
!990 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !983)
!991 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !983)
!992 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !983)
!993 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !983)
!994 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !983)
!995 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !983)
!996 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !983)
!997 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !983)
!998 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !983)
!999 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !983)
!1000 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !983)
!1001 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !983)
!1002 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !983)
!1003 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !983)
!1004 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !983)
!1005 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !983)
!1006 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !983)
!1007 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !983)
!1008 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !983)
!1009 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !983)
!1010 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !983)
!1011 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !983)
!1012 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !983)
!1013 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !983)
!1014 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !983)
!1015 = !DILocation(line: 76, column: 1, scope: !559, inlinedAt: !983)
!1016 = !DILocation(line: 243, column: 9, scope: !816, inlinedAt: !980)
!1017 = !DILocation(line: 244, column: 10, scope: !816, inlinedAt: !980)
!1018 = !DILocation(line: 0, scope: !569, inlinedAt: !983)
!1019 = !DILocation(line: 244, column: 13, scope: !816, inlinedAt: !980)
!1020 = !DILocation(line: 244, column: 46, scope: !816, inlinedAt: !980)
!1021 = !DILocation(line: 244, column: 3, scope: !816, inlinedAt: !980)
!1022 = !DILocation(line: 269, column: 3, scope: !972)
!1023 = distinct !DISubprogram(name: "lua_isuserdata", scope: !3, file: !3, line: 273, type: !387, isLocal: false, isDefinition: true, scopeLine: 273, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1024)
!1024 = !{!1025, !1026, !1027}
!1025 = !DILocalVariable(name: "L", arg: 1, scope: !1023, file: !3, line: 273, type: !131)
!1026 = !DILocalVariable(name: "idx", arg: 2, scope: !1023, file: !3, line: 273, type: !8)
!1027 = !DILocalVariable(name: "o", scope: !1023, file: !3, line: 274, type: !362)
!1028 = !DILocation(line: 273, column: 40, scope: !1023)
!1029 = !DILocation(line: 273, column: 47, scope: !1023)
!1030 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !1031)
!1031 = distinct !DILocation(line: 274, column: 21, scope: !1023)
!1032 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !1031)
!1033 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !1031)
!1034 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !1031)
!1035 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !1031)
!1036 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !1031)
!1037 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !1031)
!1038 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !1031)
!1039 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !1031)
!1040 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !1031)
!1041 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !1031)
!1042 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !1031)
!1043 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !1031)
!1044 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !1031)
!1045 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !1031)
!1046 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !1031)
!1047 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !1031)
!1048 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !1031)
!1049 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !1031)
!1050 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !1031)
!1051 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !1031)
!1052 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !1031)
!1053 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !1031)
!1054 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !1031)
!1055 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !1031)
!1056 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !1031)
!1057 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !1031)
!1058 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !1031)
!1059 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !1031)
!1060 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !1031)
!1061 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !1031)
!1062 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !1031)
!1063 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !1031)
!1064 = !DILocation(line: 0, scope: !569, inlinedAt: !1031)
!1065 = !DILocation(line: 76, column: 1, scope: !559, inlinedAt: !1031)
!1066 = !DILocation(line: 274, column: 17, scope: !1023)
!1067 = !DILocation(line: 275, column: 11, scope: !1023)
!1068 = !DILocation(line: 275, column: 30, scope: !1023)
!1069 = !DILocation(line: 275, column: 27, scope: !1023)
!1070 = !DILocation(line: 275, column: 3, scope: !1023)
!1071 = distinct !DISubprogram(name: "lua_rawequal", scope: !3, file: !3, line: 279, type: !1072, isLocal: false, isDefinition: true, scopeLine: 279, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1074)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!8, !131, !8, !8}
!1074 = !{!1075, !1076, !1077, !1078, !1079}
!1075 = !DILocalVariable(name: "L", arg: 1, scope: !1071, file: !3, line: 279, type: !131)
!1076 = !DILocalVariable(name: "index1", arg: 2, scope: !1071, file: !3, line: 279, type: !8)
!1077 = !DILocalVariable(name: "index2", arg: 3, scope: !1071, file: !3, line: 279, type: !8)
!1078 = !DILocalVariable(name: "o1", scope: !1071, file: !3, line: 280, type: !140)
!1079 = !DILocalVariable(name: "o2", scope: !1071, file: !3, line: 281, type: !140)
!1080 = !DILocation(line: 279, column: 38, scope: !1071)
!1081 = !DILocation(line: 279, column: 45, scope: !1071)
!1082 = !DILocation(line: 279, column: 57, scope: !1071)
!1083 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !1084)
!1084 = distinct !DILocation(line: 280, column: 14, scope: !1071)
!1085 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !1084)
!1086 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !1084)
!1087 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !1084)
!1088 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !1084)
!1089 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !1084)
!1090 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !1084)
!1091 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !1084)
!1092 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !1084)
!1093 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !1084)
!1094 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !1084)
!1095 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !1084)
!1096 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !1084)
!1097 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !1084)
!1098 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !1084)
!1099 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !1084)
!1100 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !1084)
!1101 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !1084)
!1102 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !1084)
!1103 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !1084)
!1104 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !1084)
!1105 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !1084)
!1106 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !1084)
!1107 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !1084)
!1108 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !1084)
!1109 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !1084)
!1110 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !1084)
!1111 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !1084)
!1112 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !1084)
!1113 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !1084)
!1114 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !1084)
!1115 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !1084)
!1116 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !1084)
!1117 = !DILocation(line: 0, scope: !569, inlinedAt: !1084)
!1118 = !DILocation(line: 76, column: 1, scope: !559, inlinedAt: !1084)
!1119 = !DILocation(line: 280, column: 9, scope: !1071)
!1120 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !1121)
!1121 = distinct !DILocation(line: 281, column: 14, scope: !1071)
!1122 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !1121)
!1123 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !1121)
!1124 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !1121)
!1125 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !1121)
!1126 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !1121)
!1127 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !1121)
!1128 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !1121)
!1129 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !1121)
!1130 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !1121)
!1131 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !1121)
!1132 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !1121)
!1133 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !1121)
!1134 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !1121)
!1135 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !1121)
!1136 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !1121)
!1137 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !1121)
!1138 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !1121)
!1139 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !1121)
!1140 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !1121)
!1141 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !1121)
!1142 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !1121)
!1143 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !1121)
!1144 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !1121)
!1145 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !1121)
!1146 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !1121)
!1147 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !1121)
!1148 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !1121)
!1149 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !1121)
!1150 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !1121)
!1151 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !1121)
!1152 = !DILocation(line: 76, column: 1, scope: !559, inlinedAt: !1121)
!1153 = !DILocation(line: 281, column: 9, scope: !1071)
!1154 = !DILocation(line: 282, column: 32, scope: !1071)
!1155 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !1121)
!1156 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !1121)
!1157 = !DILocation(line: 0, scope: !569, inlinedAt: !1121)
!1158 = !DILocation(line: 282, column: 14, scope: !1071)
!1159 = !DILocation(line: 282, column: 38, scope: !1071)
!1160 = !DILocation(line: 283, column: 12, scope: !1071)
!1161 = !DILocation(line: 282, column: 10, scope: !1071)
!1162 = !DILocation(line: 282, column: 3, scope: !1071)
!1163 = distinct !DISubprogram(name: "lua_equal", scope: !3, file: !3, line: 287, type: !1072, isLocal: false, isDefinition: true, scopeLine: 287, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1164)
!1164 = !{!1165, !1166, !1167, !1168, !1169, !1170}
!1165 = !DILocalVariable(name: "L", arg: 1, scope: !1163, file: !3, line: 287, type: !131)
!1166 = !DILocalVariable(name: "index1", arg: 2, scope: !1163, file: !3, line: 287, type: !8)
!1167 = !DILocalVariable(name: "index2", arg: 3, scope: !1163, file: !3, line: 287, type: !8)
!1168 = !DILocalVariable(name: "o1", scope: !1163, file: !3, line: 288, type: !140)
!1169 = !DILocalVariable(name: "o2", scope: !1163, file: !3, line: 288, type: !140)
!1170 = !DILocalVariable(name: "i", scope: !1163, file: !3, line: 289, type: !8)
!1171 = !DILocation(line: 287, column: 35, scope: !1163)
!1172 = !DILocation(line: 287, column: 42, scope: !1163)
!1173 = !DILocation(line: 287, column: 54, scope: !1163)
!1174 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !1175)
!1175 = distinct !DILocation(line: 291, column: 8, scope: !1163)
!1176 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !1175)
!1177 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !1175)
!1178 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !1175)
!1179 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !1175)
!1180 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !1175)
!1181 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !1175)
!1182 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !1175)
!1183 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !1175)
!1184 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !1175)
!1185 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !1175)
!1186 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !1175)
!1187 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !1175)
!1188 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !1175)
!1189 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !1175)
!1190 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !1175)
!1191 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !1175)
!1192 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !1175)
!1193 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !1175)
!1194 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !1175)
!1195 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !1175)
!1196 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !1175)
!1197 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !1175)
!1198 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !1175)
!1199 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !1175)
!1200 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !1175)
!1201 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !1175)
!1202 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !1175)
!1203 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !1175)
!1204 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !1175)
!1205 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !1175)
!1206 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !1175)
!1207 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !1175)
!1208 = !DILocation(line: 0, scope: !569, inlinedAt: !1175)
!1209 = !DILocation(line: 76, column: 1, scope: !559, inlinedAt: !1175)
!1210 = !DILocation(line: 288, column: 9, scope: !1163)
!1211 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !1212)
!1212 = distinct !DILocation(line: 292, column: 8, scope: !1163)
!1213 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !1212)
!1214 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !1212)
!1215 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !1212)
!1216 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !1212)
!1217 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !1212)
!1218 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !1212)
!1219 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !1212)
!1220 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !1212)
!1221 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !1212)
!1222 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !1212)
!1223 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !1212)
!1224 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !1212)
!1225 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !1212)
!1226 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !1212)
!1227 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !1212)
!1228 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !1212)
!1229 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !1212)
!1230 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !1212)
!1231 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !1212)
!1232 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !1212)
!1233 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !1212)
!1234 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !1212)
!1235 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !1212)
!1236 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !1212)
!1237 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !1212)
!1238 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !1212)
!1239 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !1212)
!1240 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !1212)
!1241 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !1212)
!1242 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !1212)
!1243 = !DILocation(line: 76, column: 1, scope: !559, inlinedAt: !1212)
!1244 = !DILocation(line: 288, column: 13, scope: !1163)
!1245 = !DILocation(line: 293, column: 29, scope: !1163)
!1246 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !1212)
!1247 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !1212)
!1248 = !DILocation(line: 0, scope: !569, inlinedAt: !1212)
!1249 = !DILocation(line: 293, column: 11, scope: !1163)
!1250 = !DILocation(line: 293, column: 35, scope: !1163)
!1251 = !DILocation(line: 293, column: 60, scope: !1163)
!1252 = !DILocation(line: 293, column: 7, scope: !1163)
!1253 = !DILocation(line: 289, column: 7, scope: !1163)
!1254 = !DILocation(line: 295, column: 3, scope: !1163)
!1255 = distinct !DISubprogram(name: "lua_lessthan", scope: !3, file: !3, line: 299, type: !1072, isLocal: false, isDefinition: true, scopeLine: 299, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1256)
!1256 = !{!1257, !1258, !1259, !1260, !1261, !1262}
!1257 = !DILocalVariable(name: "L", arg: 1, scope: !1255, file: !3, line: 299, type: !131)
!1258 = !DILocalVariable(name: "index1", arg: 2, scope: !1255, file: !3, line: 299, type: !8)
!1259 = !DILocalVariable(name: "index2", arg: 3, scope: !1255, file: !3, line: 299, type: !8)
!1260 = !DILocalVariable(name: "o1", scope: !1255, file: !3, line: 300, type: !140)
!1261 = !DILocalVariable(name: "o2", scope: !1255, file: !3, line: 300, type: !140)
!1262 = !DILocalVariable(name: "i", scope: !1255, file: !3, line: 301, type: !8)
!1263 = !DILocation(line: 299, column: 38, scope: !1255)
!1264 = !DILocation(line: 299, column: 45, scope: !1255)
!1265 = !DILocation(line: 299, column: 57, scope: !1255)
!1266 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !1267)
!1267 = distinct !DILocation(line: 303, column: 8, scope: !1255)
!1268 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !1267)
!1269 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !1267)
!1270 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !1267)
!1271 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !1267)
!1272 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !1267)
!1273 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !1267)
!1274 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !1267)
!1275 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !1267)
!1276 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !1267)
!1277 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !1267)
!1278 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !1267)
!1279 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !1267)
!1280 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !1267)
!1281 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !1267)
!1282 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !1267)
!1283 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !1267)
!1284 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !1267)
!1285 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !1267)
!1286 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !1267)
!1287 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !1267)
!1288 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !1267)
!1289 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !1267)
!1290 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !1267)
!1291 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !1267)
!1292 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !1267)
!1293 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !1267)
!1294 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !1267)
!1295 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !1267)
!1296 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !1267)
!1297 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !1267)
!1298 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !1267)
!1299 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !1267)
!1300 = !DILocation(line: 0, scope: !569, inlinedAt: !1267)
!1301 = !DILocation(line: 76, column: 1, scope: !559, inlinedAt: !1267)
!1302 = !DILocation(line: 300, column: 9, scope: !1255)
!1303 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !1304)
!1304 = distinct !DILocation(line: 304, column: 8, scope: !1255)
!1305 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !1304)
!1306 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !1304)
!1307 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !1304)
!1308 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !1304)
!1309 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !1304)
!1310 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !1304)
!1311 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !1304)
!1312 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !1304)
!1313 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !1304)
!1314 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !1304)
!1315 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !1304)
!1316 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !1304)
!1317 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !1304)
!1318 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !1304)
!1319 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !1304)
!1320 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !1304)
!1321 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !1304)
!1322 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !1304)
!1323 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !1304)
!1324 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !1304)
!1325 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !1304)
!1326 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !1304)
!1327 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !1304)
!1328 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !1304)
!1329 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !1304)
!1330 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !1304)
!1331 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !1304)
!1332 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !1304)
!1333 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !1304)
!1334 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !1304)
!1335 = !DILocation(line: 76, column: 1, scope: !559, inlinedAt: !1304)
!1336 = !DILocation(line: 300, column: 13, scope: !1255)
!1337 = !DILocation(line: 305, column: 29, scope: !1255)
!1338 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !1304)
!1339 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !1304)
!1340 = !DILocation(line: 0, scope: !569, inlinedAt: !1304)
!1341 = !DILocation(line: 305, column: 11, scope: !1255)
!1342 = !DILocation(line: 305, column: 35, scope: !1255)
!1343 = !DILocation(line: 306, column: 10, scope: !1255)
!1344 = !DILocation(line: 305, column: 7, scope: !1255)
!1345 = !DILocation(line: 301, column: 7, scope: !1255)
!1346 = !DILocation(line: 308, column: 3, scope: !1255)
!1347 = distinct !DISubprogram(name: "lua_tonumber", scope: !3, file: !3, line: 313, type: !1348, isLocal: false, isDefinition: true, scopeLine: 313, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1350)
!1348 = !DISubroutineType(types: !1349)
!1349 = !{!85, !131, !8}
!1350 = !{!1351, !1352, !1353, !1354}
!1351 = !DILocalVariable(name: "L", arg: 1, scope: !1347, file: !3, line: 313, type: !131)
!1352 = !DILocalVariable(name: "idx", arg: 2, scope: !1347, file: !3, line: 313, type: !8)
!1353 = !DILocalVariable(name: "n", scope: !1347, file: !3, line: 314, type: !75)
!1354 = !DILocalVariable(name: "o", scope: !1347, file: !3, line: 315, type: !362)
!1355 = !DILocation(line: 313, column: 45, scope: !1347)
!1356 = !DILocation(line: 313, column: 52, scope: !1347)
!1357 = !DILocation(line: 314, column: 3, scope: !1347)
!1358 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !1359)
!1359 = distinct !DILocation(line: 315, column: 21, scope: !1347)
!1360 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !1359)
!1361 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !1359)
!1362 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !1359)
!1363 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !1359)
!1364 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !1359)
!1365 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !1359)
!1366 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !1359)
!1367 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !1359)
!1368 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !1359)
!1369 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !1359)
!1370 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !1359)
!1371 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !1359)
!1372 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !1359)
!1373 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !1359)
!1374 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !1359)
!1375 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !1359)
!1376 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !1359)
!1377 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !1359)
!1378 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !1359)
!1379 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !1359)
!1380 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !1359)
!1381 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !1359)
!1382 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !1359)
!1383 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !1359)
!1384 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !1359)
!1385 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !1359)
!1386 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !1359)
!1387 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !1359)
!1388 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !1359)
!1389 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !1359)
!1390 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !1359)
!1391 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !1359)
!1392 = !DILocation(line: 0, scope: !569, inlinedAt: !1359)
!1393 = !DILocation(line: 76, column: 1, scope: !559, inlinedAt: !1359)
!1394 = !DILocation(line: 315, column: 17, scope: !1347)
!1395 = !DILocation(line: 316, column: 7, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1347, file: !3, line: 316, column: 7)
!1397 = !DILocation(line: 314, column: 10, scope: !1347)
!1398 = !DILocation(line: 316, column: 7, scope: !1347)
!1399 = !DILocation(line: 0, scope: !1396)
!1400 = !DILocation(line: 317, column: 12, scope: !1396)
!1401 = !DILocation(line: 317, column: 5, scope: !1396)
!1402 = !DILocation(line: 320, column: 1, scope: !1347)
!1403 = distinct !DISubprogram(name: "lua_tointeger", scope: !3, file: !3, line: 323, type: !1404, isLocal: false, isDefinition: true, scopeLine: 323, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1406)
!1404 = !DISubroutineType(types: !1405)
!1405 = !{!340, !131, !8}
!1406 = !{!1407, !1408, !1409, !1410, !1411, !1414}
!1407 = !DILocalVariable(name: "L", arg: 1, scope: !1403, file: !3, line: 323, type: !131)
!1408 = !DILocalVariable(name: "idx", arg: 2, scope: !1403, file: !3, line: 323, type: !8)
!1409 = !DILocalVariable(name: "n", scope: !1403, file: !3, line: 324, type: !75)
!1410 = !DILocalVariable(name: "o", scope: !1403, file: !3, line: 325, type: !362)
!1411 = !DILocalVariable(name: "res", scope: !1412, file: !3, line: 327, type: !340)
!1412 = distinct !DILexicalBlock(scope: !1413, file: !3, line: 326, column: 24)
!1413 = distinct !DILexicalBlock(scope: !1403, file: !3, line: 326, column: 7)
!1414 = !DILocalVariable(name: "num", scope: !1412, file: !3, line: 328, type: !85)
!1415 = !DILocation(line: 323, column: 47, scope: !1403)
!1416 = !DILocation(line: 323, column: 54, scope: !1403)
!1417 = !DILocation(line: 324, column: 3, scope: !1403)
!1418 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !1419)
!1419 = distinct !DILocation(line: 325, column: 21, scope: !1403)
!1420 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !1419)
!1421 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !1419)
!1422 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !1419)
!1423 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !1419)
!1424 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !1419)
!1425 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !1419)
!1426 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !1419)
!1427 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !1419)
!1428 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !1419)
!1429 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !1419)
!1430 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !1419)
!1431 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !1419)
!1432 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !1419)
!1433 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !1419)
!1434 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !1419)
!1435 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !1419)
!1436 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !1419)
!1437 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !1419)
!1438 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !1419)
!1439 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !1419)
!1440 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !1419)
!1441 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !1419)
!1442 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !1419)
!1443 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !1419)
!1444 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !1419)
!1445 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !1419)
!1446 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !1419)
!1447 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !1419)
!1448 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !1419)
!1449 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !1419)
!1450 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !1419)
!1451 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !1419)
!1452 = !DILocation(line: 0, scope: !569, inlinedAt: !1419)
!1453 = !DILocation(line: 76, column: 1, scope: !559, inlinedAt: !1419)
!1454 = !DILocation(line: 325, column: 17, scope: !1403)
!1455 = !DILocation(line: 326, column: 7, scope: !1413)
!1456 = !DILocation(line: 324, column: 10, scope: !1403)
!1457 = !DILocation(line: 326, column: 7, scope: !1403)
!1458 = !DILocation(line: 0, scope: !1413)
!1459 = !DILocation(line: 328, column: 22, scope: !1412)
!1460 = !DILocation(line: 328, column: 16, scope: !1412)
!1461 = !DILocation(line: 329, column: 5, scope: !1412)
!1462 = !DILocation(line: 327, column: 17, scope: !1412)
!1463 = !DILocation(line: 334, column: 1, scope: !1403)
!1464 = distinct !DISubprogram(name: "lua_toboolean", scope: !3, file: !3, line: 337, type: !387, isLocal: false, isDefinition: true, scopeLine: 337, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1465)
!1465 = !{!1466, !1467, !1468}
!1466 = !DILocalVariable(name: "L", arg: 1, scope: !1464, file: !3, line: 337, type: !131)
!1467 = !DILocalVariable(name: "idx", arg: 2, scope: !1464, file: !3, line: 337, type: !8)
!1468 = !DILocalVariable(name: "o", scope: !1464, file: !3, line: 338, type: !362)
!1469 = !DILocation(line: 337, column: 39, scope: !1464)
!1470 = !DILocation(line: 337, column: 46, scope: !1464)
!1471 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !1472)
!1472 = distinct !DILocation(line: 338, column: 21, scope: !1464)
!1473 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !1472)
!1474 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !1472)
!1475 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !1472)
!1476 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !1472)
!1477 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !1472)
!1478 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !1472)
!1479 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !1472)
!1480 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !1472)
!1481 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !1472)
!1482 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !1472)
!1483 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !1472)
!1484 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !1472)
!1485 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !1472)
!1486 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !1472)
!1487 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !1472)
!1488 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !1472)
!1489 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !1472)
!1490 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !1472)
!1491 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !1472)
!1492 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !1472)
!1493 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !1472)
!1494 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !1472)
!1495 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !1472)
!1496 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !1472)
!1497 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !1472)
!1498 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !1472)
!1499 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !1472)
!1500 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !1472)
!1501 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !1472)
!1502 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !1472)
!1503 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !1472)
!1504 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !1472)
!1505 = !DILocation(line: 0, scope: !569, inlinedAt: !1472)
!1506 = !DILocation(line: 76, column: 1, scope: !559, inlinedAt: !1472)
!1507 = !DILocation(line: 338, column: 17, scope: !1464)
!1508 = !DILocation(line: 339, column: 11, scope: !1464)
!1509 = !DILocation(line: 339, column: 3, scope: !1464)
!1510 = distinct !DISubprogram(name: "lua_tolstring", scope: !3, file: !3, line: 343, type: !1511, isLocal: false, isDefinition: true, scopeLine: 343, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1514)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{!257, !131, !8, !1513}
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!1514 = !{!1515, !1516, !1517, !1518}
!1515 = !DILocalVariable(name: "L", arg: 1, scope: !1510, file: !3, line: 343, type: !131)
!1516 = !DILocalVariable(name: "idx", arg: 2, scope: !1510, file: !3, line: 343, type: !8)
!1517 = !DILocalVariable(name: "len", arg: 3, scope: !1510, file: !3, line: 343, type: !1513)
!1518 = !DILocalVariable(name: "o", scope: !1510, file: !3, line: 344, type: !140)
!1519 = !DILocation(line: 343, column: 47, scope: !1510)
!1520 = !DILocation(line: 343, column: 54, scope: !1510)
!1521 = !DILocation(line: 343, column: 67, scope: !1510)
!1522 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !1523)
!1523 = distinct !DILocation(line: 344, column: 13, scope: !1510)
!1524 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !1523)
!1525 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !1523)
!1526 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !1523)
!1527 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !1523)
!1528 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !1523)
!1529 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !1523)
!1530 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !1523)
!1531 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !1523)
!1532 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !1523)
!1533 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !1523)
!1534 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !1523)
!1535 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !1523)
!1536 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !1523)
!1537 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !1523)
!1538 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !1523)
!1539 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !1523)
!1540 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !1523)
!1541 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !1523)
!1542 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !1523)
!1543 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !1523)
!1544 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !1523)
!1545 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !1523)
!1546 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !1523)
!1547 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !1523)
!1548 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !1523)
!1549 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !1523)
!1550 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !1523)
!1551 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !1523)
!1552 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !1523)
!1553 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !1523)
!1554 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !1523)
!1555 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !1523)
!1556 = !DILocation(line: 0, scope: !569, inlinedAt: !1523)
!1557 = !DILocation(line: 76, column: 1, scope: !559, inlinedAt: !1523)
!1558 = !DILocation(line: 344, column: 9, scope: !1510)
!1559 = !DILocation(line: 345, column: 8, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1510, file: !3, line: 345, column: 7)
!1561 = !DILocation(line: 345, column: 7, scope: !1510)
!1562 = !DILocation(line: 347, column: 10, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1564, file: !3, line: 347, column: 9)
!1564 = distinct !DILexicalBlock(scope: !1560, file: !3, line: 345, column: 23)
!1565 = !DILocation(line: 347, column: 9, scope: !1564)
!1566 = !DILocation(line: 348, column: 15, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1568, file: !3, line: 348, column: 11)
!1568 = distinct !DILexicalBlock(scope: !1563, file: !3, line: 347, column: 31)
!1569 = !DILocation(line: 348, column: 11, scope: !1568)
!1570 = !DILocation(line: 348, column: 29, scope: !1567)
!1571 = !{!381, !381, i64 0}
!1572 = !DILocation(line: 348, column: 24, scope: !1567)
!1573 = !DILocation(line: 352, column: 5, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1575, file: !3, line: 352, column: 5)
!1575 = distinct !DILexicalBlock(scope: !1564, file: !3, line: 352, column: 5)
!1576 = !DILocation(line: 352, column: 5, scope: !1575)
!1577 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !1578)
!1578 = distinct !DILocation(line: 353, column: 9, scope: !1564)
!1579 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !1578)
!1580 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !1578)
!1581 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !1578)
!1582 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !1578)
!1583 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !1578)
!1584 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !1578)
!1585 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !1578)
!1586 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !1578)
!1587 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !1578)
!1588 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !1578)
!1589 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !1578)
!1590 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !1578)
!1591 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !1578)
!1592 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !1578)
!1593 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !1578)
!1594 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !1578)
!1595 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !1578)
!1596 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !1578)
!1597 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !1578)
!1598 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !1578)
!1599 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !1578)
!1600 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !1578)
!1601 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !1578)
!1602 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !1578)
!1603 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !1578)
!1604 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !1578)
!1605 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !1578)
!1606 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !1578)
!1607 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !1578)
!1608 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !1578)
!1609 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !1578)
!1610 = !DILocation(line: 0, scope: !569, inlinedAt: !1578)
!1611 = !DILocation(line: 76, column: 1, scope: !559, inlinedAt: !1578)
!1612 = !DILocation(line: 355, column: 3, scope: !1564)
!1613 = !DILocation(line: 0, scope: !1564)
!1614 = !DILocation(line: 356, column: 11, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1510, file: !3, line: 356, column: 7)
!1616 = !DILocation(line: 356, column: 7, scope: !1510)
!1617 = !DILocation(line: 356, column: 27, scope: !1615)
!1618 = !DILocation(line: 356, column: 39, scope: !1615)
!1619 = !DILocation(line: 356, column: 25, scope: !1615)
!1620 = !DILocation(line: 356, column: 20, scope: !1615)
!1621 = !DILocation(line: 357, column: 10, scope: !1510)
!1622 = !DILocation(line: 357, column: 3, scope: !1510)
!1623 = !DILocation(line: 0, scope: !1568)
!1624 = !DILocation(line: 358, column: 1, scope: !1510)
!1625 = distinct !DISubprogram(name: "lua_objlen", scope: !3, file: !3, line: 361, type: !1626, isLocal: false, isDefinition: true, scopeLine: 361, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1628)
!1626 = !DISubroutineType(types: !1627)
!1627 = !{!48, !131, !8}
!1628 = !{!1629, !1630, !1631, !1632}
!1629 = !DILocalVariable(name: "L", arg: 1, scope: !1625, file: !3, line: 361, type: !131)
!1630 = !DILocalVariable(name: "idx", arg: 2, scope: !1625, file: !3, line: 361, type: !8)
!1631 = !DILocalVariable(name: "o", scope: !1625, file: !3, line: 362, type: !140)
!1632 = !DILocalVariable(name: "l", scope: !1633, file: !3, line: 368, type: !48)
!1633 = distinct !DILexicalBlock(scope: !1634, file: !3, line: 367, column: 23)
!1634 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 363, column: 21)
!1635 = !DILocation(line: 361, column: 39, scope: !1625)
!1636 = !DILocation(line: 361, column: 46, scope: !1625)
!1637 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !1638)
!1638 = distinct !DILocation(line: 362, column: 13, scope: !1625)
!1639 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !1638)
!1640 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !1638)
!1641 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !1638)
!1642 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !1638)
!1643 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !1638)
!1644 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !1638)
!1645 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !1638)
!1646 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !1638)
!1647 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !1638)
!1648 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !1638)
!1649 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !1638)
!1650 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !1638)
!1651 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !1638)
!1652 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !1638)
!1653 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !1638)
!1654 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !1638)
!1655 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !1638)
!1656 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !1638)
!1657 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !1638)
!1658 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !1638)
!1659 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !1638)
!1660 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !1638)
!1661 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !1638)
!1662 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !1638)
!1663 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !1638)
!1664 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !1638)
!1665 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !1638)
!1666 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !1638)
!1667 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !1638)
!1668 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !1638)
!1669 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !1638)
!1670 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !1638)
!1671 = !DILocation(line: 0, scope: !569, inlinedAt: !1638)
!1672 = !DILocation(line: 76, column: 1, scope: !559, inlinedAt: !1638)
!1673 = !DILocation(line: 362, column: 9, scope: !1625)
!1674 = !DILocation(line: 363, column: 11, scope: !1625)
!1675 = !DILocation(line: 363, column: 3, scope: !1625)
!1676 = !DILocation(line: 364, column: 30, scope: !1634)
!1677 = !DILocation(line: 364, column: 42, scope: !1634)
!1678 = !DILocation(line: 364, column: 23, scope: !1634)
!1679 = !DILocation(line: 365, column: 32, scope: !1634)
!1680 = !DILocation(line: 365, column: 43, scope: !1634)
!1681 = !DILocation(line: 365, column: 25, scope: !1634)
!1682 = !DILocation(line: 366, column: 39, scope: !1634)
!1683 = !DILocation(line: 366, column: 29, scope: !1634)
!1684 = !DILocation(line: 366, column: 22, scope: !1634)
!1685 = !DILocation(line: 370, column: 12, scope: !1633)
!1686 = !DILocation(line: 370, column: 34, scope: !1633)
!1687 = !DILocation(line: 370, column: 46, scope: !1633)
!1688 = !DILocation(line: 0, scope: !1634)
!1689 = !DILocation(line: 376, column: 1, scope: !1625)
!1690 = distinct !DISubprogram(name: "lua_tocfunction", scope: !3, file: !3, line: 379, type: !1691, isLocal: false, isDefinition: true, scopeLine: 379, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1693)
!1691 = !DISubroutineType(types: !1692)
!1692 = !{!127, !131, !8}
!1693 = !{!1694, !1695, !1696}
!1694 = !DILocalVariable(name: "L", arg: 1, scope: !1690, file: !3, line: 379, type: !131)
!1695 = !DILocalVariable(name: "idx", arg: 2, scope: !1690, file: !3, line: 379, type: !8)
!1696 = !DILocalVariable(name: "o", scope: !1690, file: !3, line: 380, type: !140)
!1697 = !DILocation(line: 379, column: 51, scope: !1690)
!1698 = !DILocation(line: 379, column: 58, scope: !1690)
!1699 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !1700)
!1700 = distinct !DILocation(line: 380, column: 13, scope: !1690)
!1701 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !1700)
!1702 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !1700)
!1703 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !1700)
!1704 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !1700)
!1705 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !1700)
!1706 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !1700)
!1707 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !1700)
!1708 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !1700)
!1709 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !1700)
!1710 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !1700)
!1711 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !1700)
!1712 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !1700)
!1713 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !1700)
!1714 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !1700)
!1715 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !1700)
!1716 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !1700)
!1717 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !1700)
!1718 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !1700)
!1719 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !1700)
!1720 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !1700)
!1721 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !1700)
!1722 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !1700)
!1723 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !1700)
!1724 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !1700)
!1725 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !1700)
!1726 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !1700)
!1727 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !1700)
!1728 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !1700)
!1729 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !1700)
!1730 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !1700)
!1731 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !1700)
!1732 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !1700)
!1733 = !DILocation(line: 0, scope: !569, inlinedAt: !1700)
!1734 = !DILocation(line: 76, column: 1, scope: !559, inlinedAt: !1700)
!1735 = !DILocation(line: 380, column: 9, scope: !1690)
!1736 = !DILocation(line: 381, column: 12, scope: !1690)
!1737 = !DILocation(line: 381, column: 10, scope: !1690)
!1738 = !DILocation(line: 381, column: 51, scope: !1690)
!1739 = !DILocation(line: 381, column: 3, scope: !1690)
!1740 = distinct !DISubprogram(name: "lua_touserdata", scope: !3, file: !3, line: 385, type: !1741, isLocal: false, isDefinition: true, scopeLine: 385, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1743)
!1741 = !DISubroutineType(types: !1742)
!1742 = !{!35, !131, !8}
!1743 = !{!1744, !1745, !1746}
!1744 = !DILocalVariable(name: "L", arg: 1, scope: !1740, file: !3, line: 385, type: !131)
!1745 = !DILocalVariable(name: "idx", arg: 2, scope: !1740, file: !3, line: 385, type: !8)
!1746 = !DILocalVariable(name: "o", scope: !1740, file: !3, line: 386, type: !140)
!1747 = !DILocation(line: 385, column: 42, scope: !1740)
!1748 = !DILocation(line: 385, column: 49, scope: !1740)
!1749 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !1750)
!1750 = distinct !DILocation(line: 386, column: 13, scope: !1740)
!1751 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !1750)
!1752 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !1750)
!1753 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !1750)
!1754 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !1750)
!1755 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !1750)
!1756 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !1750)
!1757 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !1750)
!1758 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !1750)
!1759 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !1750)
!1760 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !1750)
!1761 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !1750)
!1762 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !1750)
!1763 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !1750)
!1764 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !1750)
!1765 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !1750)
!1766 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !1750)
!1767 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !1750)
!1768 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !1750)
!1769 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !1750)
!1770 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !1750)
!1771 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !1750)
!1772 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !1750)
!1773 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !1750)
!1774 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !1750)
!1775 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !1750)
!1776 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !1750)
!1777 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !1750)
!1778 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !1750)
!1779 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !1750)
!1780 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !1750)
!1781 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !1750)
!1782 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !1750)
!1783 = !DILocation(line: 0, scope: !569, inlinedAt: !1750)
!1784 = !DILocation(line: 76, column: 1, scope: !559, inlinedAt: !1750)
!1785 = !DILocation(line: 386, column: 9, scope: !1740)
!1786 = !DILocation(line: 387, column: 11, scope: !1740)
!1787 = !DILocation(line: 387, column: 3, scope: !1740)
!1788 = !DILocation(line: 388, column: 33, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1740, file: !3, line: 387, column: 21)
!1790 = !DILocation(line: 388, column: 46, scope: !1789)
!1791 = !DILocation(line: 388, column: 32, scope: !1789)
!1792 = !DILocation(line: 388, column: 25, scope: !1789)
!1793 = !DILocation(line: 389, column: 37, scope: !1789)
!1794 = !DILocation(line: 389, column: 30, scope: !1789)
!1795 = !DILocation(line: 0, scope: !1789)
!1796 = !DILocation(line: 392, column: 1, scope: !1740)
!1797 = distinct !DISubprogram(name: "lua_tothread", scope: !3, file: !3, line: 395, type: !1798, isLocal: false, isDefinition: true, scopeLine: 395, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1800)
!1798 = !DISubroutineType(types: !1799)
!1799 = !{!131, !131, !8}
!1800 = !{!1801, !1802, !1803}
!1801 = !DILocalVariable(name: "L", arg: 1, scope: !1797, file: !3, line: 395, type: !131)
!1802 = !DILocalVariable(name: "idx", arg: 2, scope: !1797, file: !3, line: 395, type: !8)
!1803 = !DILocalVariable(name: "o", scope: !1797, file: !3, line: 396, type: !140)
!1804 = !DILocation(line: 395, column: 45, scope: !1797)
!1805 = !DILocation(line: 395, column: 52, scope: !1797)
!1806 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !1807)
!1807 = distinct !DILocation(line: 396, column: 13, scope: !1797)
!1808 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !1807)
!1809 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !1807)
!1810 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !1807)
!1811 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !1807)
!1812 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !1807)
!1813 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !1807)
!1814 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !1807)
!1815 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !1807)
!1816 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !1807)
!1817 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !1807)
!1818 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !1807)
!1819 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !1807)
!1820 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !1807)
!1821 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !1807)
!1822 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !1807)
!1823 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !1807)
!1824 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !1807)
!1825 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !1807)
!1826 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !1807)
!1827 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !1807)
!1828 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !1807)
!1829 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !1807)
!1830 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !1807)
!1831 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !1807)
!1832 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !1807)
!1833 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !1807)
!1834 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !1807)
!1835 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !1807)
!1836 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !1807)
!1837 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !1807)
!1838 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !1807)
!1839 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !1807)
!1840 = !DILocation(line: 0, scope: !569, inlinedAt: !1807)
!1841 = !DILocation(line: 76, column: 1, scope: !559, inlinedAt: !1807)
!1842 = !DILocation(line: 396, column: 9, scope: !1797)
!1843 = !DILocation(line: 397, column: 12, scope: !1797)
!1844 = !DILocation(line: 397, column: 10, scope: !1797)
!1845 = !DILocation(line: 397, column: 36, scope: !1797)
!1846 = !DILocation(line: 397, column: 3, scope: !1797)
!1847 = distinct !DISubprogram(name: "lua_topointer", scope: !3, file: !3, line: 401, type: !1848, isLocal: false, isDefinition: true, scopeLine: 401, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1852)
!1848 = !DISubroutineType(types: !1849)
!1849 = !{!1850, !131, !8}
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1852 = !{!1853, !1854, !1855}
!1853 = !DILocalVariable(name: "L", arg: 1, scope: !1847, file: !3, line: 401, type: !131)
!1854 = !DILocalVariable(name: "idx", arg: 2, scope: !1847, file: !3, line: 401, type: !8)
!1855 = !DILocalVariable(name: "o", scope: !1847, file: !3, line: 402, type: !140)
!1856 = !DILocation(line: 401, column: 47, scope: !1847)
!1857 = !DILocation(line: 401, column: 54, scope: !1847)
!1858 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !1859)
!1859 = distinct !DILocation(line: 402, column: 13, scope: !1847)
!1860 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !1859)
!1861 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !1859)
!1862 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !1859)
!1863 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !1859)
!1864 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !1859)
!1865 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !1859)
!1866 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !1859)
!1867 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !1859)
!1868 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !1859)
!1869 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !1859)
!1870 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !1859)
!1871 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !1859)
!1872 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !1859)
!1873 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !1859)
!1874 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !1859)
!1875 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !1859)
!1876 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !1859)
!1877 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !1859)
!1878 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !1859)
!1879 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !1859)
!1880 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !1859)
!1881 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !1859)
!1882 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !1859)
!1883 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !1859)
!1884 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !1859)
!1885 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !1859)
!1886 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !1859)
!1887 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !1859)
!1888 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !1859)
!1889 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !1859)
!1890 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !1859)
!1891 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !1859)
!1892 = !DILocation(line: 0, scope: !569, inlinedAt: !1859)
!1893 = !DILocation(line: 76, column: 1, scope: !559, inlinedAt: !1859)
!1894 = !DILocation(line: 402, column: 9, scope: !1847)
!1895 = !DILocation(line: 403, column: 11, scope: !1847)
!1896 = !DILocation(line: 403, column: 3, scope: !1847)
!1897 = !DILocation(line: 404, column: 29, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1847, file: !3, line: 403, column: 21)
!1899 = !DILocation(line: 404, column: 22, scope: !1898)
!1900 = !DILocation(line: 405, column: 32, scope: !1898)
!1901 = !DILocation(line: 405, column: 25, scope: !1898)
!1902 = !DILocation(line: 406, column: 30, scope: !1898)
!1903 = !DILocation(line: 406, column: 23, scope: !1898)
!1904 = !DILocation(line: 385, column: 42, scope: !1740, inlinedAt: !1905)
!1905 = distinct !DILocation(line: 409, column: 14, scope: !1898)
!1906 = !DILocation(line: 385, column: 49, scope: !1740, inlinedAt: !1905)
!1907 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !1908)
!1908 = distinct !DILocation(line: 386, column: 13, scope: !1740, inlinedAt: !1905)
!1909 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !1908)
!1910 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !1908)
!1911 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !1908)
!1912 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !1908)
!1913 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !1908)
!1914 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !1908)
!1915 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !1908)
!1916 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !1908)
!1917 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !1908)
!1918 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !1908)
!1919 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !1908)
!1920 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !1908)
!1921 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !1908)
!1922 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !1908)
!1923 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !1908)
!1924 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !1908)
!1925 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !1908)
!1926 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !1908)
!1927 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !1908)
!1928 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !1908)
!1929 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !1908)
!1930 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !1908)
!1931 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !1908)
!1932 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !1908)
!1933 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !1908)
!1934 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !1908)
!1935 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !1908)
!1936 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !1908)
!1937 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !1908)
!1938 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !1908)
!1939 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !1908)
!1940 = !DILocation(line: 0, scope: !569, inlinedAt: !1908)
!1941 = !DILocation(line: 76, column: 1, scope: !559, inlinedAt: !1908)
!1942 = !DILocation(line: 386, column: 9, scope: !1740, inlinedAt: !1905)
!1943 = !DILocation(line: 387, column: 11, scope: !1740, inlinedAt: !1905)
!1944 = !DILocation(line: 387, column: 3, scope: !1740, inlinedAt: !1905)
!1945 = !DILocation(line: 388, column: 33, scope: !1789, inlinedAt: !1905)
!1946 = !DILocation(line: 388, column: 46, scope: !1789, inlinedAt: !1905)
!1947 = !DILocation(line: 388, column: 32, scope: !1789, inlinedAt: !1905)
!1948 = !DILocation(line: 388, column: 25, scope: !1789, inlinedAt: !1905)
!1949 = !DILocation(line: 389, column: 37, scope: !1789, inlinedAt: !1905)
!1950 = !DILocation(line: 389, column: 30, scope: !1789, inlinedAt: !1905)
!1951 = !DILocation(line: 0, scope: !1789, inlinedAt: !1905)
!1952 = !DILocation(line: 392, column: 1, scope: !1740, inlinedAt: !1905)
!1953 = !DILocation(line: 409, column: 7, scope: !1898)
!1954 = !DILocation(line: 0, scope: !1898)
!1955 = !DILocation(line: 412, column: 1, scope: !1847)
!1956 = distinct !DISubprogram(name: "lua_pushnil", scope: !3, file: !3, line: 421, type: !1957, isLocal: false, isDefinition: true, scopeLine: 421, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1959)
!1957 = !DISubroutineType(types: !1958)
!1958 = !{null, !131}
!1959 = !{!1960}
!1960 = !DILocalVariable(name: "L", arg: 1, scope: !1956, file: !3, line: 421, type: !131)
!1961 = !DILocation(line: 421, column: 38, scope: !1956)
!1962 = !DILocation(line: 423, column: 3, scope: !1956)
!1963 = !DILocation(line: 424, column: 3, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1956, file: !3, line: 424, column: 3)
!1965 = !DILocation(line: 426, column: 1, scope: !1956)
!1966 = distinct !DISubprogram(name: "lua_pushnumber", scope: !3, file: !3, line: 429, type: !1967, isLocal: false, isDefinition: true, scopeLine: 429, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1969)
!1967 = !DISubroutineType(types: !1968)
!1968 = !{null, !131, !85}
!1969 = !{!1970, !1971, !1972}
!1970 = !DILocalVariable(name: "L", arg: 1, scope: !1966, file: !3, line: 429, type: !131)
!1971 = !DILocalVariable(name: "n", arg: 2, scope: !1966, file: !3, line: 429, type: !85)
!1972 = !DILocalVariable(name: "i_o", scope: !1973, file: !3, line: 431, type: !74)
!1973 = distinct !DILexicalBlock(scope: !1966, file: !3, line: 431, column: 3)
!1974 = !DILocation(line: 429, column: 41, scope: !1966)
!1975 = !DILocation(line: 429, column: 55, scope: !1966)
!1976 = !DILocation(line: 431, column: 3, scope: !1973)
!1977 = !DILocation(line: 432, column: 3, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1966, file: !3, line: 432, column: 3)
!1979 = !DILocation(line: 434, column: 1, scope: !1966)
!1980 = distinct !DISubprogram(name: "lua_pushinteger", scope: !3, file: !3, line: 437, type: !1981, isLocal: false, isDefinition: true, scopeLine: 437, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1983)
!1981 = !DISubroutineType(types: !1982)
!1982 = !{null, !131, !340}
!1983 = !{!1984, !1985, !1986}
!1984 = !DILocalVariable(name: "L", arg: 1, scope: !1980, file: !3, line: 437, type: !131)
!1985 = !DILocalVariable(name: "n", arg: 2, scope: !1980, file: !3, line: 437, type: !340)
!1986 = !DILocalVariable(name: "i_o", scope: !1987, file: !3, line: 439, type: !74)
!1987 = distinct !DILexicalBlock(scope: !1980, file: !3, line: 439, column: 3)
!1988 = !DILocation(line: 437, column: 42, scope: !1980)
!1989 = !DILocation(line: 437, column: 57, scope: !1980)
!1990 = !DILocation(line: 439, column: 3, scope: !1987)
!1991 = !DILocation(line: 440, column: 3, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1980, file: !3, line: 440, column: 3)
!1993 = !DILocation(line: 442, column: 1, scope: !1980)
!1994 = distinct !DISubprogram(name: "lua_pushlstring", scope: !3, file: !3, line: 445, type: !1995, isLocal: false, isDefinition: true, scopeLine: 445, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1997)
!1995 = !DISubroutineType(types: !1996)
!1996 = !{null, !131, !257, !48}
!1997 = !{!1998, !1999, !2000, !2001}
!1998 = !DILocalVariable(name: "L", arg: 1, scope: !1994, file: !3, line: 445, type: !131)
!1999 = !DILocalVariable(name: "s", arg: 2, scope: !1994, file: !3, line: 445, type: !257)
!2000 = !DILocalVariable(name: "len", arg: 3, scope: !1994, file: !3, line: 445, type: !48)
!2001 = !DILocalVariable(name: "i_o", scope: !2002, file: !3, line: 448, type: !74)
!2002 = distinct !DILexicalBlock(scope: !1994, file: !3, line: 448, column: 3)
!2003 = !DILocation(line: 445, column: 42, scope: !1994)
!2004 = !DILocation(line: 445, column: 57, scope: !1994)
!2005 = !DILocation(line: 445, column: 67, scope: !1994)
!2006 = !DILocation(line: 447, column: 3, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !2008, file: !3, line: 447, column: 3)
!2008 = distinct !DILexicalBlock(scope: !1994, file: !3, line: 447, column: 3)
!2009 = !DILocation(line: 447, column: 3, scope: !2008)
!2010 = !DILocation(line: 448, column: 3, scope: !2002)
!2011 = !DILocation(line: 449, column: 3, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !1994, file: !3, line: 449, column: 3)
!2013 = !DILocation(line: 451, column: 1, scope: !1994)
!2014 = distinct !DISubprogram(name: "lua_pushstring", scope: !3, file: !3, line: 454, type: !2015, isLocal: false, isDefinition: true, scopeLine: 454, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2017)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{null, !131, !257}
!2017 = !{!2018, !2019}
!2018 = !DILocalVariable(name: "L", arg: 1, scope: !2014, file: !3, line: 454, type: !131)
!2019 = !DILocalVariable(name: "s", arg: 2, scope: !2014, file: !3, line: 454, type: !257)
!2020 = !DILocation(line: 454, column: 41, scope: !2014)
!2021 = !DILocation(line: 454, column: 56, scope: !2014)
!2022 = !DILocation(line: 455, column: 9, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !2014, file: !3, line: 455, column: 7)
!2024 = !DILocation(line: 455, column: 7, scope: !2014)
!2025 = !DILocation(line: 421, column: 38, scope: !1956, inlinedAt: !2026)
!2026 = distinct !DILocation(line: 456, column: 5, scope: !2023)
!2027 = !DILocation(line: 423, column: 3, scope: !1956, inlinedAt: !2026)
!2028 = !DILocation(line: 456, column: 5, scope: !2023)
!2029 = !DILocation(line: 458, column: 27, scope: !2023)
!2030 = !DILocation(line: 445, column: 42, scope: !1994, inlinedAt: !2031)
!2031 = distinct !DILocation(line: 458, column: 5, scope: !2023)
!2032 = !DILocation(line: 445, column: 57, scope: !1994, inlinedAt: !2031)
!2033 = !DILocation(line: 445, column: 67, scope: !1994, inlinedAt: !2031)
!2034 = !DILocation(line: 447, column: 3, scope: !2007, inlinedAt: !2031)
!2035 = !DILocation(line: 447, column: 3, scope: !2008, inlinedAt: !2031)
!2036 = !DILocation(line: 448, column: 3, scope: !2002, inlinedAt: !2031)
!2037 = !DILocation(line: 449, column: 3, scope: !2012, inlinedAt: !2031)
!2038 = !DILocation(line: 0, scope: !2023)
!2039 = !DILocation(line: 459, column: 1, scope: !2014)
!2040 = distinct !DISubprogram(name: "lua_pushvfstring", scope: !3, file: !3, line: 462, type: !2041, isLocal: false, isDefinition: true, scopeLine: 463, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2050)
!2041 = !DISubroutineType(types: !2042)
!2042 = !{!257, !131, !257, !2043}
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 459, size: 192, elements: !2045)
!2045 = !{!2046, !2047, !2048, !2049}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2044, file: !3, line: 459, baseType: !46, size: 32)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2044, file: !3, line: 459, baseType: !46, size: 32, offset: 32)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2044, file: !3, line: 459, baseType: !35, size: 64, offset: 64)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2044, file: !3, line: 459, baseType: !35, size: 64, offset: 128)
!2050 = !{!2051, !2052, !2053, !2054}
!2051 = !DILocalVariable(name: "L", arg: 1, scope: !2040, file: !3, line: 462, type: !131)
!2052 = !DILocalVariable(name: "fmt", arg: 2, scope: !2040, file: !3, line: 462, type: !257)
!2053 = !DILocalVariable(name: "argp", arg: 3, scope: !2040, file: !3, line: 463, type: !2043)
!2054 = !DILocalVariable(name: "ret", scope: !2040, file: !3, line: 464, type: !257)
!2055 = !DILocation(line: 462, column: 50, scope: !2040)
!2056 = !DILocation(line: 462, column: 65, scope: !2040)
!2057 = !DILocation(line: 463, column: 47, scope: !2040)
!2058 = !DILocation(line: 466, column: 3, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2060, file: !3, line: 466, column: 3)
!2060 = distinct !DILexicalBlock(scope: !2040, file: !3, line: 466, column: 3)
!2061 = !DILocation(line: 466, column: 3, scope: !2060)
!2062 = !DILocation(line: 467, column: 9, scope: !2040)
!2063 = !DILocation(line: 464, column: 15, scope: !2040)
!2064 = !DILocation(line: 469, column: 3, scope: !2040)
!2065 = distinct !DISubprogram(name: "lua_pushfstring", scope: !3, file: !3, line: 473, type: !2066, isLocal: false, isDefinition: true, scopeLine: 473, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2068)
!2066 = !DISubroutineType(types: !2067)
!2067 = !{!257, !131, !257, null}
!2068 = !{!2069, !2070, !2071, !2072}
!2069 = !DILocalVariable(name: "L", arg: 1, scope: !2065, file: !3, line: 473, type: !131)
!2070 = !DILocalVariable(name: "fmt", arg: 2, scope: !2065, file: !3, line: 473, type: !257)
!2071 = !DILocalVariable(name: "ret", scope: !2065, file: !3, line: 474, type: !257)
!2072 = !DILocalVariable(name: "argp", scope: !2065, file: !3, line: 475, type: !2073)
!2073 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2074, line: 32, baseType: !2075)
!2074 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!2075 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 475, baseType: !2076)
!2076 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2044, size: 192, elements: !283)
!2077 = !DILocation(line: 473, column: 49, scope: !2065)
!2078 = !DILocation(line: 473, column: 64, scope: !2065)
!2079 = !DILocation(line: 475, column: 3, scope: !2065)
!2080 = !DILocation(line: 475, column: 11, scope: !2065)
!2081 = !DILocation(line: 477, column: 3, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2083, file: !3, line: 477, column: 3)
!2083 = distinct !DILexicalBlock(scope: !2065, file: !3, line: 477, column: 3)
!2084 = !DILocation(line: 477, column: 3, scope: !2083)
!2085 = !DILocation(line: 478, column: 3, scope: !2065)
!2086 = !DILocation(line: 479, column: 9, scope: !2065)
!2087 = !DILocation(line: 474, column: 15, scope: !2065)
!2088 = !DILocation(line: 480, column: 3, scope: !2065)
!2089 = !DILocation(line: 483, column: 1, scope: !2065)
!2090 = !DILocation(line: 482, column: 3, scope: !2065)
!2091 = distinct !DISubprogram(name: "lua_pushcclosure", scope: !3, file: !3, line: 486, type: !2092, isLocal: false, isDefinition: true, scopeLine: 486, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2094)
!2092 = !DISubroutineType(types: !2093)
!2093 = !{null, !131, !127, !8}
!2094 = !{!2095, !2096, !2097, !2098, !2099, !2101, !2102}
!2095 = !DILocalVariable(name: "L", arg: 1, scope: !2091, file: !3, line: 486, type: !131)
!2096 = !DILocalVariable(name: "fn", arg: 2, scope: !2091, file: !3, line: 486, type: !127)
!2097 = !DILocalVariable(name: "n", arg: 3, scope: !2091, file: !3, line: 486, type: !8)
!2098 = !DILocalVariable(name: "cl", scope: !2091, file: !3, line: 487, type: !571)
!2099 = !DILocalVariable(name: "o2", scope: !2100, file: !3, line: 495, type: !362)
!2100 = distinct !DILexicalBlock(scope: !2091, file: !3, line: 495, column: 5)
!2101 = !DILocalVariable(name: "o1", scope: !2100, file: !3, line: 495, type: !74)
!2102 = !DILocalVariable(name: "i_o", scope: !2103, file: !3, line: 496, type: !74)
!2103 = distinct !DILexicalBlock(scope: !2091, file: !3, line: 496, column: 3)
!2104 = !DILocation(line: 486, column: 43, scope: !2091)
!2105 = !DILocation(line: 486, column: 60, scope: !2091)
!2106 = !DILocation(line: 486, column: 68, scope: !2091)
!2107 = !DILocation(line: 489, column: 3, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2109, file: !3, line: 489, column: 3)
!2109 = distinct !DILexicalBlock(scope: !2091, file: !3, line: 489, column: 3)
!2110 = !DILocation(line: 489, column: 3, scope: !2109)
!2111 = !DILocalVariable(name: "L", arg: 1, scope: !2112, file: !3, line: 79, type: !131)
!2112 = distinct !DISubprogram(name: "getcurrenv", scope: !3, file: !3, line: 79, type: !2113, isLocal: true, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2117)
!2113 = !DISubroutineType(types: !2114)
!2114 = !{!2115, !131}
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = !DIDerivedType(tag: DW_TAG_typedef, name: "Table", file: !11, line: 348, baseType: !65)
!2117 = !{!2111, !2118}
!2118 = !DILocalVariable(name: "func", scope: !2119, file: !3, line: 83, type: !571)
!2119 = distinct !DILexicalBlock(scope: !2120, file: !3, line: 82, column: 8)
!2120 = distinct !DILexicalBlock(scope: !2112, file: !3, line: 80, column: 7)
!2121 = !DILocation(line: 79, column: 38, scope: !2112, inlinedAt: !2122)
!2122 = distinct !DILocation(line: 491, column: 31, scope: !2091)
!2123 = !DILocation(line: 80, column: 10, scope: !2120, inlinedAt: !2122)
!2124 = !DILocation(line: 80, column: 19, scope: !2120, inlinedAt: !2122)
!2125 = !DILocation(line: 80, column: 13, scope: !2120, inlinedAt: !2122)
!2126 = !DILocation(line: 80, column: 7, scope: !2112, inlinedAt: !2122)
!2127 = !DILocation(line: 81, column: 12, scope: !2120, inlinedAt: !2122)
!2128 = !DILocation(line: 81, column: 5, scope: !2120, inlinedAt: !2122)
!2129 = !DILocation(line: 83, column: 21, scope: !2119, inlinedAt: !2122)
!2130 = !DILocation(line: 83, column: 14, scope: !2119, inlinedAt: !2122)
!2131 = !DILocation(line: 84, column: 20, scope: !2119, inlinedAt: !2122)
!2132 = !DILocation(line: 0, scope: !2119, inlinedAt: !2122)
!2133 = !DILocation(line: 86, column: 1, scope: !2112, inlinedAt: !2122)
!2134 = !DILocation(line: 491, column: 8, scope: !2091)
!2135 = !DILocation(line: 487, column: 12, scope: !2091)
!2136 = !DILocation(line: 492, column: 9, scope: !2091)
!2137 = !DILocation(line: 492, column: 11, scope: !2091)
!2138 = !DILocation(line: 493, column: 6, scope: !2091)
!2139 = !DILocation(line: 493, column: 10, scope: !2091)
!2140 = !DILocation(line: 494, column: 3, scope: !2091)
!2141 = !DILocation(line: 494, column: 11, scope: !2091)
!2142 = !DILocation(line: 495, column: 5, scope: !2100)
!2143 = !DILocation(line: 0, scope: !2100)
!2144 = distinct !{!2144, !2140, !2145}
!2145 = !DILocation(line: 495, column: 5, scope: !2091)
!2146 = !DILocation(line: 496, column: 3, scope: !2103)
!2147 = !DILocation(line: 498, column: 3, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2091, file: !3, line: 498, column: 3)
!2149 = !DILocation(line: 500, column: 1, scope: !2091)
!2150 = distinct !DISubprogram(name: "lua_pushboolean", scope: !3, file: !3, line: 503, type: !521, isLocal: false, isDefinition: true, scopeLine: 503, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2151)
!2151 = !{!2152, !2153, !2154}
!2152 = !DILocalVariable(name: "L", arg: 1, scope: !2150, file: !3, line: 503, type: !131)
!2153 = !DILocalVariable(name: "b", arg: 2, scope: !2150, file: !3, line: 503, type: !8)
!2154 = !DILocalVariable(name: "i_o", scope: !2155, file: !3, line: 505, type: !74)
!2155 = distinct !DILexicalBlock(scope: !2150, file: !3, line: 505, column: 3)
!2156 = !DILocation(line: 503, column: 42, scope: !2150)
!2157 = !DILocation(line: 503, column: 49, scope: !2150)
!2158 = !DILocation(line: 505, column: 3, scope: !2155)
!2159 = !DILocation(line: 506, column: 3, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2150, file: !3, line: 506, column: 3)
!2161 = !DILocation(line: 508, column: 1, scope: !2150)
!2162 = distinct !DISubprogram(name: "lua_pushlightuserdata", scope: !3, file: !3, line: 511, type: !2163, isLocal: false, isDefinition: true, scopeLine: 511, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2165)
!2163 = !DISubroutineType(types: !2164)
!2164 = !{null, !131, !35}
!2165 = !{!2166, !2167, !2168}
!2166 = !DILocalVariable(name: "L", arg: 1, scope: !2162, file: !3, line: 511, type: !131)
!2167 = !DILocalVariable(name: "p", arg: 2, scope: !2162, file: !3, line: 511, type: !35)
!2168 = !DILocalVariable(name: "i_o", scope: !2169, file: !3, line: 513, type: !74)
!2169 = distinct !DILexicalBlock(scope: !2162, file: !3, line: 513, column: 3)
!2170 = !DILocation(line: 511, column: 48, scope: !2162)
!2171 = !DILocation(line: 511, column: 57, scope: !2162)
!2172 = !DILocation(line: 513, column: 3, scope: !2169)
!2173 = !DILocation(line: 514, column: 3, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2162, file: !3, line: 514, column: 3)
!2175 = !DILocation(line: 516, column: 1, scope: !2162)
!2176 = distinct !DISubprogram(name: "lua_pushthread", scope: !3, file: !3, line: 519, type: !129, isLocal: false, isDefinition: true, scopeLine: 519, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2177)
!2177 = !{!2178, !2179}
!2178 = !DILocalVariable(name: "L", arg: 1, scope: !2176, file: !3, line: 519, type: !131)
!2179 = !DILocalVariable(name: "i_o", scope: !2180, file: !3, line: 521, type: !74)
!2180 = distinct !DILexicalBlock(scope: !2176, file: !3, line: 521, column: 3)
!2181 = !DILocation(line: 519, column: 40, scope: !2176)
!2182 = !DILocation(line: 521, column: 3, scope: !2180)
!2183 = !DILocation(line: 522, column: 3, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2176, file: !3, line: 522, column: 3)
!2185 = !DILocation(line: 524, column: 11, scope: !2176)
!2186 = !DILocation(line: 524, column: 17, scope: !2176)
!2187 = !{!485, !375, i64 176}
!2188 = !DILocation(line: 524, column: 28, scope: !2176)
!2189 = !DILocation(line: 524, column: 3, scope: !2176)
!2190 = distinct !DISubprogram(name: "lua_gettable", scope: !3, file: !3, line: 534, type: !521, isLocal: false, isDefinition: true, scopeLine: 534, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2191)
!2191 = !{!2192, !2193, !2194}
!2192 = !DILocalVariable(name: "L", arg: 1, scope: !2190, file: !3, line: 534, type: !131)
!2193 = !DILocalVariable(name: "idx", arg: 2, scope: !2190, file: !3, line: 534, type: !8)
!2194 = !DILocalVariable(name: "t", scope: !2190, file: !3, line: 535, type: !140)
!2195 = !DILocation(line: 534, column: 39, scope: !2190)
!2196 = !DILocation(line: 534, column: 46, scope: !2190)
!2197 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !2198)
!2198 = distinct !DILocation(line: 537, column: 7, scope: !2190)
!2199 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !2198)
!2200 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !2198)
!2201 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !2198)
!2202 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !2198)
!2203 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !2198)
!2204 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !2198)
!2205 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !2198)
!2206 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !2198)
!2207 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !2198)
!2208 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !2198)
!2209 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !2198)
!2210 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !2198)
!2211 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !2198)
!2212 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !2198)
!2213 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !2198)
!2214 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !2198)
!2215 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !2198)
!2216 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !2198)
!2217 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !2198)
!2218 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !2198)
!2219 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !2198)
!2220 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !2198)
!2221 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !2198)
!2222 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !2198)
!2223 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !2198)
!2224 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !2198)
!2225 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !2198)
!2226 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !2198)
!2227 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !2198)
!2228 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !2198)
!2229 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !2198)
!2230 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !2198)
!2231 = !DILocation(line: 0, scope: !569, inlinedAt: !2198)
!2232 = !DILocation(line: 76, column: 1, scope: !559, inlinedAt: !2198)
!2233 = !DILocation(line: 535, column: 9, scope: !2190)
!2234 = !DILocation(line: 539, column: 26, scope: !2190)
!2235 = !DILocation(line: 539, column: 30, scope: !2190)
!2236 = !DILocation(line: 539, column: 3, scope: !2190)
!2237 = !DILocation(line: 541, column: 1, scope: !2190)
!2238 = distinct !DISubprogram(name: "lua_getfield", scope: !3, file: !3, line: 544, type: !2239, isLocal: false, isDefinition: true, scopeLine: 544, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2241)
!2239 = !DISubroutineType(types: !2240)
!2240 = !{null, !131, !8, !257}
!2241 = !{!2242, !2243, !2244, !2245, !2246, !2247}
!2242 = !DILocalVariable(name: "L", arg: 1, scope: !2238, file: !3, line: 544, type: !131)
!2243 = !DILocalVariable(name: "idx", arg: 2, scope: !2238, file: !3, line: 544, type: !8)
!2244 = !DILocalVariable(name: "k", arg: 3, scope: !2238, file: !3, line: 544, type: !257)
!2245 = !DILocalVariable(name: "t", scope: !2238, file: !3, line: 545, type: !140)
!2246 = !DILocalVariable(name: "key", scope: !2238, file: !3, line: 546, type: !75)
!2247 = !DILocalVariable(name: "i_o", scope: !2248, file: !3, line: 550, type: !74)
!2248 = distinct !DILexicalBlock(scope: !2238, file: !3, line: 550, column: 3)
!2249 = !DILocation(line: 544, column: 39, scope: !2238)
!2250 = !DILocation(line: 544, column: 46, scope: !2238)
!2251 = !DILocation(line: 544, column: 63, scope: !2238)
!2252 = !DILocation(line: 546, column: 3, scope: !2238)
!2253 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !2254)
!2254 = distinct !DILocation(line: 548, column: 7, scope: !2238)
!2255 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !2254)
!2256 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !2254)
!2257 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !2254)
!2258 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !2254)
!2259 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !2254)
!2260 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !2254)
!2261 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !2254)
!2262 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !2254)
!2263 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !2254)
!2264 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !2254)
!2265 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !2254)
!2266 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !2254)
!2267 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !2254)
!2268 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !2254)
!2269 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !2254)
!2270 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !2254)
!2271 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !2254)
!2272 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !2254)
!2273 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !2254)
!2274 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !2254)
!2275 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !2254)
!2276 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !2254)
!2277 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !2254)
!2278 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !2254)
!2279 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !2254)
!2280 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !2254)
!2281 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !2254)
!2282 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !2254)
!2283 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !2254)
!2284 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !2254)
!2285 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !2254)
!2286 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !2254)
!2287 = !DILocation(line: 0, scope: !569, inlinedAt: !2254)
!2288 = !DILocation(line: 76, column: 1, scope: !559, inlinedAt: !2254)
!2289 = !DILocation(line: 545, column: 9, scope: !2238)
!2290 = !DILocation(line: 550, column: 3, scope: !2248)
!2291 = !DILocation(line: 551, column: 32, scope: !2238)
!2292 = !DILocation(line: 546, column: 10, scope: !2238)
!2293 = !DILocation(line: 551, column: 3, scope: !2238)
!2294 = !DILocation(line: 552, column: 3, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2238, file: !3, line: 552, column: 3)
!2296 = !DILocation(line: 554, column: 1, scope: !2238)
!2297 = distinct !DISubprogram(name: "lua_rawget", scope: !3, file: !3, line: 557, type: !521, isLocal: false, isDefinition: true, scopeLine: 557, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2298)
!2298 = !{!2299, !2300, !2301, !2302, !2304}
!2299 = !DILocalVariable(name: "L", arg: 1, scope: !2297, file: !3, line: 557, type: !131)
!2300 = !DILocalVariable(name: "idx", arg: 2, scope: !2297, file: !3, line: 557, type: !8)
!2301 = !DILocalVariable(name: "t", scope: !2297, file: !3, line: 558, type: !140)
!2302 = !DILocalVariable(name: "o2", scope: !2303, file: !3, line: 562, type: !362)
!2303 = distinct !DILexicalBlock(scope: !2297, file: !3, line: 562, column: 3)
!2304 = !DILocalVariable(name: "o1", scope: !2303, file: !3, line: 562, type: !74)
!2305 = !DILocation(line: 557, column: 37, scope: !2297)
!2306 = !DILocation(line: 557, column: 44, scope: !2297)
!2307 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !2308)
!2308 = distinct !DILocation(line: 560, column: 7, scope: !2297)
!2309 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !2308)
!2310 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !2308)
!2311 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !2308)
!2312 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !2308)
!2313 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !2308)
!2314 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !2308)
!2315 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !2308)
!2316 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !2308)
!2317 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !2308)
!2318 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !2308)
!2319 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !2308)
!2320 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !2308)
!2321 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !2308)
!2322 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !2308)
!2323 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !2308)
!2324 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !2308)
!2325 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !2308)
!2326 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !2308)
!2327 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !2308)
!2328 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !2308)
!2329 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !2308)
!2330 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !2308)
!2331 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !2308)
!2332 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !2308)
!2333 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !2308)
!2334 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !2308)
!2335 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !2308)
!2336 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !2308)
!2337 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !2308)
!2338 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !2308)
!2339 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !2308)
!2340 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !2308)
!2341 = !DILocation(line: 0, scope: !569, inlinedAt: !2308)
!2342 = !DILocation(line: 76, column: 1, scope: !559, inlinedAt: !2308)
!2343 = !DILocation(line: 558, column: 9, scope: !2297)
!2344 = !DILocation(line: 562, column: 3, scope: !2303)
!2345 = !DILocation(line: 564, column: 1, scope: !2297)
!2346 = distinct !DISubprogram(name: "lua_rawgeti", scope: !3, file: !3, line: 567, type: !2347, isLocal: false, isDefinition: true, scopeLine: 567, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2349)
!2347 = !DISubroutineType(types: !2348)
!2348 = !{null, !131, !8, !8}
!2349 = !{!2350, !2351, !2352, !2353, !2354, !2356}
!2350 = !DILocalVariable(name: "L", arg: 1, scope: !2346, file: !3, line: 567, type: !131)
!2351 = !DILocalVariable(name: "idx", arg: 2, scope: !2346, file: !3, line: 567, type: !8)
!2352 = !DILocalVariable(name: "n", arg: 3, scope: !2346, file: !3, line: 567, type: !8)
!2353 = !DILocalVariable(name: "o", scope: !2346, file: !3, line: 568, type: !140)
!2354 = !DILocalVariable(name: "o2", scope: !2355, file: !3, line: 572, type: !362)
!2355 = distinct !DILexicalBlock(scope: !2346, file: !3, line: 572, column: 3)
!2356 = !DILocalVariable(name: "o1", scope: !2355, file: !3, line: 572, type: !74)
!2357 = !DILocation(line: 567, column: 38, scope: !2346)
!2358 = !DILocation(line: 567, column: 45, scope: !2346)
!2359 = !DILocation(line: 567, column: 54, scope: !2346)
!2360 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !2361)
!2361 = distinct !DILocation(line: 570, column: 7, scope: !2346)
!2362 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !2361)
!2363 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !2361)
!2364 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !2361)
!2365 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !2361)
!2366 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !2361)
!2367 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !2361)
!2368 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !2361)
!2369 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !2361)
!2370 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !2361)
!2371 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !2361)
!2372 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !2361)
!2373 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !2361)
!2374 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !2361)
!2375 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !2361)
!2376 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !2361)
!2377 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !2361)
!2378 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !2361)
!2379 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !2361)
!2380 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !2361)
!2381 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !2361)
!2382 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !2361)
!2383 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !2361)
!2384 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !2361)
!2385 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !2361)
!2386 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !2361)
!2387 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !2361)
!2388 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !2361)
!2389 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !2361)
!2390 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !2361)
!2391 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !2361)
!2392 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !2361)
!2393 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !2361)
!2394 = !DILocation(line: 0, scope: !569, inlinedAt: !2361)
!2395 = !DILocation(line: 76, column: 1, scope: !559, inlinedAt: !2361)
!2396 = !DILocation(line: 568, column: 9, scope: !2346)
!2397 = !DILocation(line: 572, column: 3, scope: !2355)
!2398 = !DILocation(line: 573, column: 3, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2346, file: !3, line: 573, column: 3)
!2400 = !DILocation(line: 575, column: 1, scope: !2346)
!2401 = distinct !DISubprogram(name: "lua_createtable", scope: !3, file: !3, line: 578, type: !2347, isLocal: false, isDefinition: true, scopeLine: 578, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2402)
!2402 = !{!2403, !2404, !2405, !2406}
!2403 = !DILocalVariable(name: "L", arg: 1, scope: !2401, file: !3, line: 578, type: !131)
!2404 = !DILocalVariable(name: "narray", arg: 2, scope: !2401, file: !3, line: 578, type: !8)
!2405 = !DILocalVariable(name: "nrec", arg: 3, scope: !2401, file: !3, line: 578, type: !8)
!2406 = !DILocalVariable(name: "i_o", scope: !2407, file: !3, line: 581, type: !74)
!2407 = distinct !DILexicalBlock(scope: !2401, file: !3, line: 581, column: 3)
!2408 = !DILocation(line: 578, column: 42, scope: !2401)
!2409 = !DILocation(line: 578, column: 49, scope: !2401)
!2410 = !DILocation(line: 578, column: 61, scope: !2401)
!2411 = !DILocation(line: 580, column: 3, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2413, file: !3, line: 580, column: 3)
!2413 = distinct !DILexicalBlock(scope: !2401, file: !3, line: 580, column: 3)
!2414 = !DILocation(line: 580, column: 3, scope: !2413)
!2415 = !DILocation(line: 581, column: 3, scope: !2407)
!2416 = !DILocation(line: 582, column: 3, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2401, file: !3, line: 582, column: 3)
!2418 = !DILocation(line: 584, column: 1, scope: !2401)
!2419 = distinct !DISubprogram(name: "lua_getmetatable", scope: !3, file: !3, line: 587, type: !387, isLocal: false, isDefinition: true, scopeLine: 587, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2420)
!2420 = !{!2421, !2422, !2423, !2424, !2425, !2426}
!2421 = !DILocalVariable(name: "L", arg: 1, scope: !2419, file: !3, line: 587, type: !131)
!2422 = !DILocalVariable(name: "objindex", arg: 2, scope: !2419, file: !3, line: 587, type: !8)
!2423 = !DILocalVariable(name: "obj", scope: !2419, file: !3, line: 588, type: !362)
!2424 = !DILocalVariable(name: "mt", scope: !2419, file: !3, line: 589, type: !2115)
!2425 = !DILocalVariable(name: "res", scope: !2419, file: !3, line: 590, type: !8)
!2426 = !DILocalVariable(name: "i_o", scope: !2427, file: !3, line: 607, type: !74)
!2427 = distinct !DILexicalBlock(scope: !2428, file: !3, line: 607, column: 5)
!2428 = distinct !DILexicalBlock(scope: !2429, file: !3, line: 606, column: 8)
!2429 = distinct !DILexicalBlock(scope: !2419, file: !3, line: 604, column: 7)
!2430 = !DILocation(line: 587, column: 42, scope: !2419)
!2431 = !DILocation(line: 587, column: 49, scope: !2419)
!2432 = !DILocation(line: 589, column: 10, scope: !2419)
!2433 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !2434)
!2434 = distinct !DILocation(line: 592, column: 9, scope: !2419)
!2435 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !2434)
!2436 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !2434)
!2437 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !2434)
!2438 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !2434)
!2439 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !2434)
!2440 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !2434)
!2441 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !2434)
!2442 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !2434)
!2443 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !2434)
!2444 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !2434)
!2445 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !2434)
!2446 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !2434)
!2447 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !2434)
!2448 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !2434)
!2449 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !2434)
!2450 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !2434)
!2451 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !2434)
!2452 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !2434)
!2453 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !2434)
!2454 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !2434)
!2455 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !2434)
!2456 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !2434)
!2457 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !2434)
!2458 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !2434)
!2459 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !2434)
!2460 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !2434)
!2461 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !2434)
!2462 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !2434)
!2463 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !2434)
!2464 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !2434)
!2465 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !2434)
!2466 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !2434)
!2467 = !DILocation(line: 0, scope: !569, inlinedAt: !2434)
!2468 = !DILocation(line: 76, column: 1, scope: !559, inlinedAt: !2434)
!2469 = !DILocation(line: 588, column: 17, scope: !2419)
!2470 = !DILocation(line: 593, column: 11, scope: !2419)
!2471 = !DILocation(line: 593, column: 3, scope: !2419)
!2472 = !DILocation(line: 595, column: 12, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2419, file: !3, line: 593, column: 23)
!2474 = !DILocation(line: 595, column: 25, scope: !2473)
!2475 = !DILocation(line: 596, column: 7, scope: !2473)
!2476 = !DILocation(line: 598, column: 12, scope: !2473)
!2477 = !DILocation(line: 598, column: 25, scope: !2473)
!2478 = !DILocation(line: 599, column: 7, scope: !2473)
!2479 = !DILocation(line: 601, column: 12, scope: !2473)
!2480 = !DILocation(line: 602, column: 7, scope: !2473)
!2481 = !DILocation(line: 0, scope: !2473)
!2482 = !DILocation(line: 604, column: 10, scope: !2429)
!2483 = !DILocation(line: 604, column: 7, scope: !2419)
!2484 = !DILocation(line: 607, column: 5, scope: !2427)
!2485 = !DILocation(line: 608, column: 5, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2428, file: !3, line: 608, column: 5)
!2487 = !DILocation(line: 590, column: 7, scope: !2419)
!2488 = !DILocation(line: 0, scope: !2428)
!2489 = !DILocation(line: 612, column: 3, scope: !2419)
!2490 = distinct !DISubprogram(name: "lua_getfenv", scope: !3, file: !3, line: 616, type: !521, isLocal: false, isDefinition: true, scopeLine: 616, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2491)
!2491 = !{!2492, !2493, !2494, !2495, !2498, !2500, !2502}
!2492 = !DILocalVariable(name: "L", arg: 1, scope: !2490, file: !3, line: 616, type: !131)
!2493 = !DILocalVariable(name: "idx", arg: 2, scope: !2490, file: !3, line: 616, type: !8)
!2494 = !DILocalVariable(name: "o", scope: !2490, file: !3, line: 617, type: !140)
!2495 = !DILocalVariable(name: "i_o", scope: !2496, file: !3, line: 623, type: !74)
!2496 = distinct !DILexicalBlock(scope: !2497, file: !3, line: 623, column: 7)
!2497 = distinct !DILexicalBlock(scope: !2490, file: !3, line: 621, column: 21)
!2498 = !DILocalVariable(name: "i_o", scope: !2499, file: !3, line: 626, type: !74)
!2499 = distinct !DILexicalBlock(scope: !2497, file: !3, line: 626, column: 7)
!2500 = !DILocalVariable(name: "o2", scope: !2501, file: !3, line: 629, type: !362)
!2501 = distinct !DILexicalBlock(scope: !2497, file: !3, line: 629, column: 7)
!2502 = !DILocalVariable(name: "o1", scope: !2501, file: !3, line: 629, type: !74)
!2503 = !DILocation(line: 616, column: 38, scope: !2490)
!2504 = !DILocation(line: 616, column: 45, scope: !2490)
!2505 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !2506)
!2506 = distinct !DILocation(line: 619, column: 7, scope: !2490)
!2507 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !2506)
!2508 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !2506)
!2509 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !2506)
!2510 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !2506)
!2511 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !2506)
!2512 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !2506)
!2513 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !2506)
!2514 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !2506)
!2515 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !2506)
!2516 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !2506)
!2517 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !2506)
!2518 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !2506)
!2519 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !2506)
!2520 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !2506)
!2521 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !2506)
!2522 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !2506)
!2523 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !2506)
!2524 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !2506)
!2525 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !2506)
!2526 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !2506)
!2527 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !2506)
!2528 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !2506)
!2529 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !2506)
!2530 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !2506)
!2531 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !2506)
!2532 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !2506)
!2533 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !2506)
!2534 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !2506)
!2535 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !2506)
!2536 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !2506)
!2537 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !2506)
!2538 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !2506)
!2539 = !DILocation(line: 0, scope: !569, inlinedAt: !2506)
!2540 = !DILocation(line: 76, column: 1, scope: !559, inlinedAt: !2506)
!2541 = !DILocation(line: 617, column: 9, scope: !2490)
!2542 = !DILocation(line: 621, column: 11, scope: !2490)
!2543 = !DILocation(line: 621, column: 3, scope: !2490)
!2544 = !DILocation(line: 623, column: 7, scope: !2496)
!2545 = !DILocation(line: 624, column: 7, scope: !2497)
!2546 = !DILocation(line: 626, column: 7, scope: !2499)
!2547 = !DILocation(line: 627, column: 7, scope: !2497)
!2548 = !DILocation(line: 629, column: 7, scope: !2501)
!2549 = !DILocation(line: 630, column: 7, scope: !2497)
!2550 = !DILocation(line: 632, column: 7, scope: !2497)
!2551 = !DILocation(line: 633, column: 7, scope: !2497)
!2552 = !DILocation(line: 635, column: 3, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2490, file: !3, line: 635, column: 3)
!2554 = !DILocation(line: 0, scope: !2496)
!2555 = !DILocation(line: 637, column: 1, scope: !2490)
!2556 = distinct !DISubprogram(name: "lua_settable", scope: !3, file: !3, line: 645, type: !521, isLocal: false, isDefinition: true, scopeLine: 645, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2557)
!2557 = !{!2558, !2559, !2560}
!2558 = !DILocalVariable(name: "L", arg: 1, scope: !2556, file: !3, line: 645, type: !131)
!2559 = !DILocalVariable(name: "idx", arg: 2, scope: !2556, file: !3, line: 645, type: !8)
!2560 = !DILocalVariable(name: "t", scope: !2556, file: !3, line: 646, type: !140)
!2561 = !DILocation(line: 645, column: 39, scope: !2556)
!2562 = !DILocation(line: 645, column: 46, scope: !2556)
!2563 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !2564)
!2564 = distinct !DILocation(line: 649, column: 7, scope: !2556)
!2565 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !2564)
!2566 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !2564)
!2567 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !2564)
!2568 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !2564)
!2569 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !2564)
!2570 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !2564)
!2571 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !2564)
!2572 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !2564)
!2573 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !2564)
!2574 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !2564)
!2575 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !2564)
!2576 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !2564)
!2577 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !2564)
!2578 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !2564)
!2579 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !2564)
!2580 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !2564)
!2581 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !2564)
!2582 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !2564)
!2583 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !2564)
!2584 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !2564)
!2585 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !2564)
!2586 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !2564)
!2587 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !2564)
!2588 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !2564)
!2589 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !2564)
!2590 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !2564)
!2591 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !2564)
!2592 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !2564)
!2593 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !2564)
!2594 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !2564)
!2595 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !2564)
!2596 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !2564)
!2597 = !DILocation(line: 0, scope: !569, inlinedAt: !2564)
!2598 = !DILocation(line: 76, column: 1, scope: !559, inlinedAt: !2564)
!2599 = !DILocation(line: 646, column: 9, scope: !2556)
!2600 = !DILocation(line: 651, column: 26, scope: !2556)
!2601 = !DILocation(line: 651, column: 30, scope: !2556)
!2602 = !DILocation(line: 651, column: 42, scope: !2556)
!2603 = !DILocation(line: 651, column: 3, scope: !2556)
!2604 = !DILocation(line: 652, column: 10, scope: !2556)
!2605 = !DILocation(line: 654, column: 1, scope: !2556)
!2606 = distinct !DISubprogram(name: "lua_setfield", scope: !3, file: !3, line: 657, type: !2239, isLocal: false, isDefinition: true, scopeLine: 657, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2607)
!2607 = !{!2608, !2609, !2610, !2611, !2612, !2613}
!2608 = !DILocalVariable(name: "L", arg: 1, scope: !2606, file: !3, line: 657, type: !131)
!2609 = !DILocalVariable(name: "idx", arg: 2, scope: !2606, file: !3, line: 657, type: !8)
!2610 = !DILocalVariable(name: "k", arg: 3, scope: !2606, file: !3, line: 657, type: !257)
!2611 = !DILocalVariable(name: "t", scope: !2606, file: !3, line: 658, type: !140)
!2612 = !DILocalVariable(name: "key", scope: !2606, file: !3, line: 659, type: !75)
!2613 = !DILocalVariable(name: "i_o", scope: !2614, file: !3, line: 664, type: !74)
!2614 = distinct !DILexicalBlock(scope: !2606, file: !3, line: 664, column: 3)
!2615 = !DILocation(line: 657, column: 39, scope: !2606)
!2616 = !DILocation(line: 657, column: 46, scope: !2606)
!2617 = !DILocation(line: 657, column: 63, scope: !2606)
!2618 = !DILocation(line: 659, column: 3, scope: !2606)
!2619 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !2620)
!2620 = distinct !DILocation(line: 662, column: 7, scope: !2606)
!2621 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !2620)
!2622 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !2620)
!2623 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !2620)
!2624 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !2620)
!2625 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !2620)
!2626 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !2620)
!2627 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !2620)
!2628 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !2620)
!2629 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !2620)
!2630 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !2620)
!2631 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !2620)
!2632 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !2620)
!2633 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !2620)
!2634 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !2620)
!2635 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !2620)
!2636 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !2620)
!2637 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !2620)
!2638 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !2620)
!2639 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !2620)
!2640 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !2620)
!2641 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !2620)
!2642 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !2620)
!2643 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !2620)
!2644 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !2620)
!2645 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !2620)
!2646 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !2620)
!2647 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !2620)
!2648 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !2620)
!2649 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !2620)
!2650 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !2620)
!2651 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !2620)
!2652 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !2620)
!2653 = !DILocation(line: 0, scope: !569, inlinedAt: !2620)
!2654 = !DILocation(line: 76, column: 1, scope: !559, inlinedAt: !2620)
!2655 = !DILocation(line: 658, column: 9, scope: !2606)
!2656 = !DILocation(line: 664, column: 3, scope: !2614)
!2657 = !DILocation(line: 665, column: 32, scope: !2606)
!2658 = !DILocation(line: 665, column: 36, scope: !2606)
!2659 = !DILocation(line: 659, column: 10, scope: !2606)
!2660 = !DILocation(line: 665, column: 3, scope: !2606)
!2661 = !DILocation(line: 666, column: 9, scope: !2606)
!2662 = !DILocation(line: 668, column: 1, scope: !2606)
!2663 = distinct !DISubprogram(name: "lua_rawset", scope: !3, file: !3, line: 671, type: !521, isLocal: false, isDefinition: true, scopeLine: 671, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2664)
!2664 = !{!2665, !2666, !2667, !2668, !2670}
!2665 = !DILocalVariable(name: "L", arg: 1, scope: !2663, file: !3, line: 671, type: !131)
!2666 = !DILocalVariable(name: "idx", arg: 2, scope: !2663, file: !3, line: 671, type: !8)
!2667 = !DILocalVariable(name: "t", scope: !2663, file: !3, line: 672, type: !140)
!2668 = !DILocalVariable(name: "o2", scope: !2669, file: !3, line: 677, type: !362)
!2669 = distinct !DILexicalBlock(scope: !2663, file: !3, line: 677, column: 3)
!2670 = !DILocalVariable(name: "o1", scope: !2669, file: !3, line: 677, type: !74)
!2671 = !DILocation(line: 671, column: 37, scope: !2663)
!2672 = !DILocation(line: 671, column: 44, scope: !2663)
!2673 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !2674)
!2674 = distinct !DILocation(line: 675, column: 7, scope: !2663)
!2675 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !2674)
!2676 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !2674)
!2677 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !2674)
!2678 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !2674)
!2679 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !2674)
!2680 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !2674)
!2681 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !2674)
!2682 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !2674)
!2683 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !2674)
!2684 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !2674)
!2685 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !2674)
!2686 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !2674)
!2687 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !2674)
!2688 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !2674)
!2689 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !2674)
!2690 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !2674)
!2691 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !2674)
!2692 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !2674)
!2693 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !2674)
!2694 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !2674)
!2695 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !2674)
!2696 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !2674)
!2697 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !2674)
!2698 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !2674)
!2699 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !2674)
!2700 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !2674)
!2701 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !2674)
!2702 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !2674)
!2703 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !2674)
!2704 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !2674)
!2705 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !2674)
!2706 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !2674)
!2707 = !DILocation(line: 0, scope: !569, inlinedAt: !2674)
!2708 = !DILocation(line: 76, column: 1, scope: !559, inlinedAt: !2674)
!2709 = !DILocation(line: 672, column: 9, scope: !2663)
!2710 = !DILocation(line: 677, column: 3, scope: !2669)
!2711 = !DILocation(line: 678, column: 3, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2713, file: !3, line: 678, column: 3)
!2713 = distinct !DILexicalBlock(scope: !2663, file: !3, line: 678, column: 3)
!2714 = !DILocation(line: 678, column: 3, scope: !2713)
!2715 = !DILocation(line: 679, column: 10, scope: !2663)
!2716 = !DILocation(line: 681, column: 1, scope: !2663)
!2717 = distinct !DISubprogram(name: "lua_rawseti", scope: !3, file: !3, line: 684, type: !2347, isLocal: false, isDefinition: true, scopeLine: 684, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2718)
!2718 = !{!2719, !2720, !2721, !2722, !2723, !2725}
!2719 = !DILocalVariable(name: "L", arg: 1, scope: !2717, file: !3, line: 684, type: !131)
!2720 = !DILocalVariable(name: "idx", arg: 2, scope: !2717, file: !3, line: 684, type: !8)
!2721 = !DILocalVariable(name: "n", arg: 3, scope: !2717, file: !3, line: 684, type: !8)
!2722 = !DILocalVariable(name: "o", scope: !2717, file: !3, line: 685, type: !140)
!2723 = !DILocalVariable(name: "o2", scope: !2724, file: !3, line: 690, type: !362)
!2724 = distinct !DILexicalBlock(scope: !2717, file: !3, line: 690, column: 3)
!2725 = !DILocalVariable(name: "o1", scope: !2724, file: !3, line: 690, type: !74)
!2726 = !DILocation(line: 684, column: 38, scope: !2717)
!2727 = !DILocation(line: 684, column: 45, scope: !2717)
!2728 = !DILocation(line: 684, column: 54, scope: !2717)
!2729 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !2730)
!2730 = distinct !DILocation(line: 688, column: 7, scope: !2717)
!2731 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !2730)
!2732 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !2730)
!2733 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !2730)
!2734 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !2730)
!2735 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !2730)
!2736 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !2730)
!2737 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !2730)
!2738 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !2730)
!2739 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !2730)
!2740 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !2730)
!2741 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !2730)
!2742 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !2730)
!2743 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !2730)
!2744 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !2730)
!2745 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !2730)
!2746 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !2730)
!2747 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !2730)
!2748 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !2730)
!2749 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !2730)
!2750 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !2730)
!2751 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !2730)
!2752 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !2730)
!2753 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !2730)
!2754 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !2730)
!2755 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !2730)
!2756 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !2730)
!2757 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !2730)
!2758 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !2730)
!2759 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !2730)
!2760 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !2730)
!2761 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !2730)
!2762 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !2730)
!2763 = !DILocation(line: 0, scope: !569, inlinedAt: !2730)
!2764 = !DILocation(line: 76, column: 1, scope: !559, inlinedAt: !2730)
!2765 = !DILocation(line: 685, column: 9, scope: !2717)
!2766 = !DILocation(line: 690, column: 3, scope: !2724)
!2767 = !DILocation(line: 691, column: 3, scope: !2768)
!2768 = distinct !DILexicalBlock(scope: !2769, file: !3, line: 691, column: 3)
!2769 = distinct !DILexicalBlock(scope: !2717, file: !3, line: 691, column: 3)
!2770 = !DILocation(line: 691, column: 3, scope: !2769)
!2771 = !DILocation(line: 692, column: 9, scope: !2717)
!2772 = !DILocation(line: 694, column: 1, scope: !2717)
!2773 = distinct !DISubprogram(name: "lua_setmetatable", scope: !3, file: !3, line: 697, type: !387, isLocal: false, isDefinition: true, scopeLine: 697, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2774)
!2774 = !{!2775, !2776, !2777, !2778}
!2775 = !DILocalVariable(name: "L", arg: 1, scope: !2773, file: !3, line: 697, type: !131)
!2776 = !DILocalVariable(name: "objindex", arg: 2, scope: !2773, file: !3, line: 697, type: !8)
!2777 = !DILocalVariable(name: "obj", scope: !2773, file: !3, line: 698, type: !74)
!2778 = !DILocalVariable(name: "mt", scope: !2773, file: !3, line: 699, type: !2115)
!2779 = !DILocation(line: 697, column: 42, scope: !2773)
!2780 = !DILocation(line: 697, column: 49, scope: !2773)
!2781 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !2782)
!2782 = distinct !DILocation(line: 702, column: 9, scope: !2773)
!2783 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !2782)
!2784 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !2782)
!2785 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !2782)
!2786 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !2782)
!2787 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !2782)
!2788 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !2782)
!2789 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !2782)
!2790 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !2782)
!2791 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !2782)
!2792 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !2782)
!2793 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !2782)
!2794 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !2782)
!2795 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !2782)
!2796 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !2782)
!2797 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !2782)
!2798 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !2782)
!2799 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !2782)
!2800 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !2782)
!2801 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !2782)
!2802 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !2782)
!2803 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !2782)
!2804 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !2782)
!2805 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !2782)
!2806 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !2782)
!2807 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !2782)
!2808 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !2782)
!2809 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !2782)
!2810 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !2782)
!2811 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !2782)
!2812 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !2782)
!2813 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !2782)
!2814 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !2782)
!2815 = !DILocation(line: 0, scope: !569, inlinedAt: !2782)
!2816 = !DILocation(line: 76, column: 1, scope: !559, inlinedAt: !2782)
!2817 = !DILocation(line: 698, column: 11, scope: !2773)
!2818 = !DILocation(line: 704, column: 7, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2773, file: !3, line: 704, column: 7)
!2820 = !DILocation(line: 704, column: 7, scope: !2773)
!2821 = !DILocation(line: 708, column: 10, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2819, file: !3, line: 706, column: 8)
!2823 = !DILocation(line: 699, column: 10, scope: !2773)
!2824 = !DILocation(line: 0, scope: !2822)
!2825 = !DILocation(line: 710, column: 11, scope: !2773)
!2826 = !DILocation(line: 710, column: 3, scope: !2773)
!2827 = !DILocation(line: 712, column: 7, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2829, file: !3, line: 711, column: 22)
!2829 = distinct !DILexicalBlock(scope: !2773, file: !3, line: 710, column: 23)
!2830 = !DILocation(line: 712, column: 20, scope: !2828)
!2831 = !DILocation(line: 712, column: 30, scope: !2828)
!2832 = !DILocation(line: 713, column: 11, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2828, file: !3, line: 713, column: 11)
!2834 = !DILocation(line: 713, column: 11, scope: !2828)
!2835 = !DILocation(line: 714, column: 9, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !2837, file: !3, line: 714, column: 9)
!2837 = distinct !DILexicalBlock(scope: !2833, file: !3, line: 714, column: 9)
!2838 = !DILocation(line: 714, column: 9, scope: !2837)
!2839 = !DILocation(line: 718, column: 7, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !2829, file: !3, line: 717, column: 25)
!2841 = !DILocation(line: 718, column: 20, scope: !2840)
!2842 = !DILocation(line: 718, column: 30, scope: !2840)
!2843 = !DILocation(line: 719, column: 11, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2840, file: !3, line: 719, column: 11)
!2845 = !DILocation(line: 719, column: 11, scope: !2840)
!2846 = !DILocation(line: 720, column: 9, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2848, file: !3, line: 720, column: 9)
!2848 = distinct !DILexicalBlock(scope: !2844, file: !3, line: 720, column: 9)
!2849 = !DILocation(line: 720, column: 9, scope: !2848)
!2850 = !DILocation(line: 724, column: 7, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2829, file: !3, line: 723, column: 14)
!2852 = !DILocation(line: 724, column: 28, scope: !2851)
!2853 = !DILocation(line: 725, column: 7, scope: !2851)
!2854 = !DILocation(line: 728, column: 9, scope: !2773)
!2855 = !DILocation(line: 730, column: 3, scope: !2773)
!2856 = distinct !DISubprogram(name: "lua_setfenv", scope: !3, file: !3, line: 734, type: !387, isLocal: false, isDefinition: true, scopeLine: 734, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2857)
!2857 = !{!2858, !2859, !2860, !2861, !2862}
!2858 = !DILocalVariable(name: "L", arg: 1, scope: !2856, file: !3, line: 734, type: !131)
!2859 = !DILocalVariable(name: "idx", arg: 2, scope: !2856, file: !3, line: 734, type: !8)
!2860 = !DILocalVariable(name: "o", scope: !2856, file: !3, line: 735, type: !140)
!2861 = !DILocalVariable(name: "res", scope: !2856, file: !3, line: 736, type: !8)
!2862 = !DILocalVariable(name: "i_o", scope: !2863, file: !3, line: 750, type: !74)
!2863 = distinct !DILexicalBlock(scope: !2864, file: !3, line: 750, column: 7)
!2864 = distinct !DILexicalBlock(scope: !2856, file: !3, line: 742, column: 21)
!2865 = !DILocation(line: 734, column: 37, scope: !2856)
!2866 = !DILocation(line: 734, column: 44, scope: !2856)
!2867 = !DILocation(line: 736, column: 7, scope: !2856)
!2868 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !2869)
!2869 = distinct !DILocation(line: 739, column: 7, scope: !2856)
!2870 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !2869)
!2871 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !2869)
!2872 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !2869)
!2873 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !2869)
!2874 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !2869)
!2875 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !2869)
!2876 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !2869)
!2877 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !2869)
!2878 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !2869)
!2879 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !2869)
!2880 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !2869)
!2881 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !2869)
!2882 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !2869)
!2883 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !2869)
!2884 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !2869)
!2885 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !2869)
!2886 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !2869)
!2887 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !2869)
!2888 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !2869)
!2889 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !2869)
!2890 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !2869)
!2891 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !2869)
!2892 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !2869)
!2893 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !2869)
!2894 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !2869)
!2895 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !2869)
!2896 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !2869)
!2897 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !2869)
!2898 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !2869)
!2899 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !2869)
!2900 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !2869)
!2901 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !2869)
!2902 = !DILocation(line: 0, scope: !569, inlinedAt: !2869)
!2903 = !DILocation(line: 76, column: 1, scope: !559, inlinedAt: !2869)
!2904 = !DILocation(line: 735, column: 9, scope: !2856)
!2905 = !DILocation(line: 742, column: 11, scope: !2856)
!2906 = !DILocation(line: 742, column: 3, scope: !2856)
!2907 = !DILocation(line: 757, column: 6, scope: !2856)
!2908 = !DILocation(line: 744, column: 27, scope: !2864)
!2909 = !DILocation(line: 744, column: 7, scope: !2864)
!2910 = !DILocation(line: 744, column: 21, scope: !2864)
!2911 = !DILocation(line: 744, column: 25, scope: !2864)
!2912 = !DILocation(line: 745, column: 7, scope: !2864)
!2913 = !DILocation(line: 747, column: 24, scope: !2864)
!2914 = !DILocation(line: 747, column: 7, scope: !2864)
!2915 = !DILocation(line: 747, column: 18, scope: !2864)
!2916 = !DILocation(line: 747, column: 22, scope: !2864)
!2917 = !DILocation(line: 748, column: 7, scope: !2864)
!2918 = !DILocation(line: 750, column: 7, scope: !2863)
!2919 = !DILocation(line: 751, column: 7, scope: !2864)
!2920 = !DILocation(line: 756, column: 12, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !2922, file: !3, line: 756, column: 12)
!2922 = distinct !DILexicalBlock(scope: !2923, file: !3, line: 756, column: 12)
!2923 = distinct !DILexicalBlock(scope: !2856, file: !3, line: 756, column: 7)
!2924 = !DILocation(line: 756, column: 12, scope: !2922)
!2925 = !DILocation(line: 757, column: 9, scope: !2856)
!2926 = !DILocation(line: 759, column: 3, scope: !2856)
!2927 = distinct !DISubprogram(name: "lua_call", scope: !3, file: !3, line: 776, type: !2347, isLocal: false, isDefinition: true, scopeLine: 776, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2928)
!2928 = !{!2929, !2930, !2931, !2932}
!2929 = !DILocalVariable(name: "L", arg: 1, scope: !2927, file: !3, line: 776, type: !131)
!2930 = !DILocalVariable(name: "nargs", arg: 2, scope: !2927, file: !3, line: 776, type: !8)
!2931 = !DILocalVariable(name: "nresults", arg: 3, scope: !2927, file: !3, line: 776, type: !8)
!2932 = !DILocalVariable(name: "func", scope: !2927, file: !3, line: 777, type: !140)
!2933 = !DILocation(line: 776, column: 35, scope: !2927)
!2934 = !DILocation(line: 776, column: 42, scope: !2927)
!2935 = !DILocation(line: 776, column: 53, scope: !2927)
!2936 = !DILocation(line: 781, column: 13, scope: !2927)
!2937 = !DILocation(line: 781, column: 25, scope: !2927)
!2938 = !DILocation(line: 781, column: 17, scope: !2927)
!2939 = !DILocation(line: 777, column: 9, scope: !2927)
!2940 = !DILocation(line: 782, column: 3, scope: !2927)
!2941 = !DILocation(line: 783, column: 3, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2943, file: !3, line: 783, column: 3)
!2943 = distinct !DILexicalBlock(scope: !2927, file: !3, line: 783, column: 3)
!2944 = !DILocation(line: 783, column: 3, scope: !2943)
!2945 = !DILocation(line: 785, column: 1, scope: !2927)
!2946 = distinct !DISubprogram(name: "lua_pcall", scope: !3, file: !3, line: 805, type: !2947, isLocal: false, isDefinition: true, scopeLine: 805, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2949)
!2947 = !DISubroutineType(types: !2948)
!2948 = !{!8, !131, !8, !8, !8}
!2949 = !{!2950, !2951, !2952, !2953, !2954, !2955, !2956, !2957}
!2950 = !DILocalVariable(name: "L", arg: 1, scope: !2946, file: !3, line: 805, type: !131)
!2951 = !DILocalVariable(name: "nargs", arg: 2, scope: !2946, file: !3, line: 805, type: !8)
!2952 = !DILocalVariable(name: "nresults", arg: 3, scope: !2946, file: !3, line: 805, type: !8)
!2953 = !DILocalVariable(name: "errfunc", arg: 4, scope: !2946, file: !3, line: 805, type: !8)
!2954 = !DILocalVariable(name: "c", scope: !2946, file: !3, line: 806, type: !342)
!2955 = !DILocalVariable(name: "status", scope: !2946, file: !3, line: 807, type: !8)
!2956 = !DILocalVariable(name: "func", scope: !2946, file: !3, line: 808, type: !279)
!2957 = !DILocalVariable(name: "o", scope: !2958, file: !3, line: 815, type: !140)
!2958 = distinct !DILexicalBlock(scope: !2959, file: !3, line: 814, column: 8)
!2959 = distinct !DILexicalBlock(scope: !2946, file: !3, line: 812, column: 7)
!2960 = !DILocation(line: 805, column: 35, scope: !2946)
!2961 = !DILocation(line: 805, column: 42, scope: !2946)
!2962 = !DILocation(line: 805, column: 53, scope: !2946)
!2963 = !DILocation(line: 805, column: 67, scope: !2946)
!2964 = !DILocation(line: 806, column: 3, scope: !2946)
!2965 = !DILocation(line: 812, column: 15, scope: !2959)
!2966 = !DILocation(line: 812, column: 7, scope: !2946)
!2967 = !DILocation(line: 821, column: 38, scope: !2946)
!2968 = !{!374, !375, i64 64}
!2969 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !2970)
!2970 = distinct !DILocation(line: 815, column: 15, scope: !2958)
!2971 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !2970)
!2972 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !2970)
!2973 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !2970)
!2974 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !2970)
!2975 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !2970)
!2976 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !2970)
!2977 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !2970)
!2978 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !2970)
!2979 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !2970)
!2980 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !2970)
!2981 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !2970)
!2982 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !2970)
!2983 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !2970)
!2984 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !2970)
!2985 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !2970)
!2986 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !2970)
!2987 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !2970)
!2988 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !2970)
!2989 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !2970)
!2990 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !2970)
!2991 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !2970)
!2992 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !2970)
!2993 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !2970)
!2994 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !2970)
!2995 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !2970)
!2996 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !2970)
!2997 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !2970)
!2998 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !2970)
!2999 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !2970)
!3000 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !2970)
!3001 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !2970)
!3002 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !2970)
!3003 = !DILocation(line: 0, scope: !569, inlinedAt: !2970)
!3004 = !DILocation(line: 76, column: 1, scope: !559, inlinedAt: !2970)
!3005 = !DILocation(line: 815, column: 11, scope: !2958)
!3006 = !DILocation(line: 817, column: 12, scope: !2958)
!3007 = !DILocation(line: 808, column: 13, scope: !2946)
!3008 = !DILocation(line: 0, scope: !2958)
!3009 = !DILocation(line: 819, column: 15, scope: !2946)
!3010 = !DILocation(line: 819, column: 27, scope: !2946)
!3011 = !DILocation(line: 819, column: 19, scope: !2946)
!3012 = !DILocation(line: 819, column: 5, scope: !2946)
!3013 = !DILocation(line: 819, column: 10, scope: !2946)
!3014 = !{!3015, !375, i64 0}
!3015 = !{!"CallS", !375, i64 0, !378, i64 8}
!3016 = !DILocation(line: 820, column: 5, scope: !2946)
!3017 = !DILocation(line: 820, column: 14, scope: !2946)
!3018 = !{!3015, !378, i64 8}
!3019 = !DILocation(line: 821, column: 12, scope: !2946)
!3020 = !DILocation(line: 807, column: 7, scope: !2946)
!3021 = !DILocation(line: 822, column: 3, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !3023, file: !3, line: 822, column: 3)
!3023 = distinct !DILexicalBlock(scope: !2946, file: !3, line: 822, column: 3)
!3024 = !DILocation(line: 822, column: 3, scope: !3023)
!3025 = !DILocation(line: 825, column: 1, scope: !2946)
!3026 = !DILocation(line: 824, column: 3, scope: !2946)
!3027 = distinct !DISubprogram(name: "f_call", scope: !3, file: !3, line: 798, type: !2163, isLocal: true, isDefinition: true, scopeLine: 798, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3028)
!3028 = !{!3029, !3030, !3031}
!3029 = !DILocalVariable(name: "L", arg: 1, scope: !3027, file: !3, line: 798, type: !131)
!3030 = !DILocalVariable(name: "ud", arg: 2, scope: !3027, file: !3, line: 798, type: !35)
!3031 = !DILocalVariable(name: "c", scope: !3027, file: !3, line: 799, type: !341)
!3032 = !DILocation(line: 798, column: 32, scope: !3027)
!3033 = !DILocation(line: 798, column: 41, scope: !3027)
!3034 = !DILocation(line: 799, column: 17, scope: !3027)
!3035 = !DILocation(line: 800, column: 19, scope: !3027)
!3036 = !DILocation(line: 800, column: 28, scope: !3027)
!3037 = !DILocation(line: 800, column: 3, scope: !3027)
!3038 = !DILocation(line: 801, column: 1, scope: !3027)
!3039 = distinct !DISubprogram(name: "lua_cpcall", scope: !3, file: !3, line: 850, type: !3040, isLocal: false, isDefinition: true, scopeLine: 850, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3042)
!3040 = !DISubroutineType(types: !3041)
!3041 = !{!8, !131, !127, !35}
!3042 = !{!3043, !3044, !3045, !3046, !3047}
!3043 = !DILocalVariable(name: "L", arg: 1, scope: !3039, file: !3, line: 850, type: !131)
!3044 = !DILocalVariable(name: "func", arg: 2, scope: !3039, file: !3, line: 850, type: !127)
!3045 = !DILocalVariable(name: "ud", arg: 3, scope: !3039, file: !3, line: 850, type: !35)
!3046 = !DILocalVariable(name: "c", scope: !3039, file: !3, line: 851, type: !347)
!3047 = !DILocalVariable(name: "status", scope: !3039, file: !3, line: 852, type: !8)
!3048 = !DILocation(line: 850, column: 36, scope: !3039)
!3049 = !DILocation(line: 850, column: 53, scope: !3039)
!3050 = !DILocation(line: 850, column: 65, scope: !3039)
!3051 = !DILocation(line: 851, column: 3, scope: !3039)
!3052 = !DILocation(line: 854, column: 5, scope: !3039)
!3053 = !DILocation(line: 854, column: 10, scope: !3039)
!3054 = !{!3055, !375, i64 0}
!3055 = !{!"CCallS", !375, i64 0, !375, i64 8}
!3056 = !DILocation(line: 855, column: 5, scope: !3039)
!3057 = !DILocation(line: 855, column: 8, scope: !3039)
!3058 = !{!3055, !375, i64 8}
!3059 = !DILocation(line: 856, column: 39, scope: !3039)
!3060 = !DILocation(line: 856, column: 12, scope: !3039)
!3061 = !DILocation(line: 852, column: 7, scope: !3039)
!3062 = !DILocation(line: 859, column: 1, scope: !3039)
!3063 = !DILocation(line: 858, column: 3, scope: !3039)
!3064 = distinct !DISubprogram(name: "f_Ccall", scope: !3, file: !3, line: 837, type: !2163, isLocal: true, isDefinition: true, scopeLine: 837, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3065)
!3065 = !{!3066, !3067, !3068, !3069, !3070, !3072}
!3066 = !DILocalVariable(name: "L", arg: 1, scope: !3064, file: !3, line: 837, type: !131)
!3067 = !DILocalVariable(name: "ud", arg: 2, scope: !3064, file: !3, line: 837, type: !35)
!3068 = !DILocalVariable(name: "c", scope: !3064, file: !3, line: 838, type: !346)
!3069 = !DILocalVariable(name: "cl", scope: !3064, file: !3, line: 839, type: !571)
!3070 = !DILocalVariable(name: "i_o", scope: !3071, file: !3, line: 842, type: !74)
!3071 = distinct !DILexicalBlock(scope: !3064, file: !3, line: 842, column: 3)
!3072 = !DILocalVariable(name: "i_o", scope: !3073, file: !3, line: 844, type: !74)
!3073 = distinct !DILexicalBlock(scope: !3064, file: !3, line: 844, column: 3)
!3074 = !DILocation(line: 837, column: 33, scope: !3064)
!3075 = !DILocation(line: 837, column: 42, scope: !3064)
!3076 = !DILocation(line: 838, column: 18, scope: !3064)
!3077 = !DILocation(line: 79, column: 38, scope: !2112, inlinedAt: !3078)
!3078 = distinct !DILocation(line: 840, column: 31, scope: !3064)
!3079 = !DILocation(line: 80, column: 10, scope: !2120, inlinedAt: !3078)
!3080 = !DILocation(line: 80, column: 19, scope: !2120, inlinedAt: !3078)
!3081 = !DILocation(line: 80, column: 13, scope: !2120, inlinedAt: !3078)
!3082 = !DILocation(line: 80, column: 7, scope: !2112, inlinedAt: !3078)
!3083 = !DILocation(line: 81, column: 12, scope: !2120, inlinedAt: !3078)
!3084 = !DILocation(line: 81, column: 5, scope: !2120, inlinedAt: !3078)
!3085 = !DILocation(line: 83, column: 21, scope: !2119, inlinedAt: !3078)
!3086 = !DILocation(line: 83, column: 14, scope: !2119, inlinedAt: !3078)
!3087 = !DILocation(line: 84, column: 20, scope: !2119, inlinedAt: !3078)
!3088 = !DILocation(line: 0, scope: !2119, inlinedAt: !3078)
!3089 = !DILocation(line: 86, column: 1, scope: !2112, inlinedAt: !3078)
!3090 = !DILocation(line: 840, column: 8, scope: !3064)
!3091 = !DILocation(line: 839, column: 12, scope: !3064)
!3092 = !DILocation(line: 841, column: 16, scope: !3064)
!3093 = !DILocation(line: 841, column: 9, scope: !3064)
!3094 = !DILocation(line: 841, column: 11, scope: !3064)
!3095 = !DILocation(line: 842, column: 3, scope: !3071)
!3096 = !DILocation(line: 843, column: 3, scope: !3097)
!3097 = distinct !DILexicalBlock(scope: !3064, file: !3, line: 843, column: 3)
!3098 = !DILocation(line: 844, column: 3, scope: !3073)
!3099 = !DILocation(line: 845, column: 3, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !3064, file: !3, line: 845, column: 3)
!3101 = !DILocation(line: 846, column: 23, scope: !3064)
!3102 = !DILocation(line: 846, column: 3, scope: !3064)
!3103 = !DILocation(line: 847, column: 1, scope: !3064)
!3104 = distinct !DISubprogram(name: "lua_load", scope: !3, file: !3, line: 862, type: !3105, isLocal: false, isDefinition: true, scopeLine: 863, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3111)
!3105 = !DISubroutineType(types: !3106)
!3106 = !{!8, !131, !3107, !35, !257}
!3107 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Reader", file: !86, line: 58, baseType: !3108)
!3108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3109, size: 64)
!3109 = !DISubroutineType(types: !3110)
!3110 = !{!257, !131, !35, !1513}
!3111 = !{!3112, !3113, !3114, !3115, !3116, !3125}
!3112 = !DILocalVariable(name: "L", arg: 1, scope: !3104, file: !3, line: 862, type: !131)
!3113 = !DILocalVariable(name: "reader", arg: 2, scope: !3104, file: !3, line: 862, type: !3107)
!3114 = !DILocalVariable(name: "data", arg: 3, scope: !3104, file: !3, line: 862, type: !35)
!3115 = !DILocalVariable(name: "chunkname", arg: 4, scope: !3104, file: !3, line: 863, type: !257)
!3116 = !DILocalVariable(name: "z", scope: !3104, file: !3, line: 864, type: !3117)
!3117 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZIO", file: !173, line: 18, baseType: !3118)
!3118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Zio", file: !173, line: 56, size: 320, elements: !3119)
!3119 = !{!3120, !3121, !3122, !3123, !3124}
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !3118, file: !173, line: 57, baseType: !48, size: 64)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3118, file: !173, line: 58, baseType: !257, size: 64, offset: 64)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "reader", scope: !3118, file: !173, line: 59, baseType: !3107, size: 64, offset: 128)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3118, file: !173, line: 60, baseType: !35, size: 64, offset: 192)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "L", scope: !3118, file: !173, line: 61, baseType: !131, size: 64, offset: 256)
!3125 = !DILocalVariable(name: "status", scope: !3104, file: !3, line: 865, type: !8)
!3126 = !DILocation(line: 862, column: 34, scope: !3104)
!3127 = !DILocation(line: 862, column: 48, scope: !3104)
!3128 = !DILocation(line: 862, column: 62, scope: !3104)
!3129 = !DILocation(line: 863, column: 35, scope: !3104)
!3130 = !DILocation(line: 864, column: 3, scope: !3104)
!3131 = !DILocation(line: 867, column: 8, scope: !3132)
!3132 = distinct !DILexicalBlock(scope: !3104, file: !3, line: 867, column: 7)
!3133 = !DILocation(line: 867, column: 7, scope: !3104)
!3134 = !DILocation(line: 864, column: 7, scope: !3104)
!3135 = !DILocation(line: 868, column: 3, scope: !3104)
!3136 = !DILocation(line: 869, column: 12, scope: !3104)
!3137 = !DILocation(line: 865, column: 7, scope: !3104)
!3138 = !DILocation(line: 872, column: 1, scope: !3104)
!3139 = !DILocation(line: 871, column: 3, scope: !3104)
!3140 = distinct !DISubprogram(name: "lua_dump", scope: !3, file: !3, line: 875, type: !3141, isLocal: false, isDefinition: true, scopeLine: 875, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3147)
!3141 = !DISubroutineType(types: !3142)
!3142 = !{!8, !131, !3143, !35}
!3143 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Writer", file: !86, line: 60, baseType: !3144)
!3144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3145, size: 64)
!3145 = !DISubroutineType(types: !3146)
!3146 = !{!8, !131, !1850, !48, !35}
!3147 = !{!3148, !3149, !3150, !3151, !3152}
!3148 = !DILocalVariable(name: "L", arg: 1, scope: !3140, file: !3, line: 875, type: !131)
!3149 = !DILocalVariable(name: "writer", arg: 2, scope: !3140, file: !3, line: 875, type: !3143)
!3150 = !DILocalVariable(name: "data", arg: 3, scope: !3140, file: !3, line: 875, type: !35)
!3151 = !DILocalVariable(name: "status", scope: !3140, file: !3, line: 876, type: !8)
!3152 = !DILocalVariable(name: "o", scope: !3140, file: !3, line: 877, type: !74)
!3153 = !DILocation(line: 875, column: 34, scope: !3140)
!3154 = !DILocation(line: 875, column: 48, scope: !3140)
!3155 = !DILocation(line: 875, column: 62, scope: !3140)
!3156 = !DILocation(line: 880, column: 10, scope: !3140)
!3157 = !DILocation(line: 877, column: 11, scope: !3140)
!3158 = !DILocation(line: 881, column: 7, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !3140, file: !3, line: 881, column: 7)
!3160 = !DILocation(line: 881, column: 7, scope: !3140)
!3161 = !DILocation(line: 882, column: 41, scope: !3159)
!3162 = !DILocation(line: 882, column: 14, scope: !3159)
!3163 = !DILocation(line: 876, column: 7, scope: !3140)
!3164 = !DILocation(line: 882, column: 5, scope: !3159)
!3165 = !DILocation(line: 0, scope: !3159)
!3166 = !DILocation(line: 886, column: 3, scope: !3140)
!3167 = distinct !DISubprogram(name: "lua_status", scope: !3, file: !3, line: 890, type: !129, isLocal: false, isDefinition: true, scopeLine: 890, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3168)
!3168 = !{!3169}
!3169 = !DILocalVariable(name: "L", arg: 1, scope: !3167, file: !3, line: 890, type: !131)
!3170 = !DILocation(line: 890, column: 37, scope: !3167)
!3171 = !DILocation(line: 891, column: 13, scope: !3167)
!3172 = !{!374, !376, i64 10}
!3173 = !DILocation(line: 891, column: 10, scope: !3167)
!3174 = !DILocation(line: 891, column: 3, scope: !3167)
!3175 = distinct !DISubprogram(name: "lua_gc", scope: !3, file: !3, line: 899, type: !1072, isLocal: false, isDefinition: true, scopeLine: 899, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3176)
!3176 = !{!3177, !3178, !3179, !3180, !3181, !3182}
!3177 = !DILocalVariable(name: "L", arg: 1, scope: !3175, file: !3, line: 899, type: !131)
!3178 = !DILocalVariable(name: "what", arg: 2, scope: !3175, file: !3, line: 899, type: !8)
!3179 = !DILocalVariable(name: "data", arg: 3, scope: !3175, file: !3, line: 899, type: !8)
!3180 = !DILocalVariable(name: "res", scope: !3175, file: !3, line: 900, type: !8)
!3181 = !DILocalVariable(name: "g", scope: !3175, file: !3, line: 901, type: !143)
!3182 = !DILocalVariable(name: "a", scope: !3183, file: !3, line: 927, type: !180)
!3183 = distinct !DILexicalBlock(scope: !3184, file: !3, line: 926, column: 22)
!3184 = distinct !DILexicalBlock(scope: !3175, file: !3, line: 904, column: 17)
!3185 = !DILocation(line: 899, column: 32, scope: !3175)
!3186 = !DILocation(line: 899, column: 39, scope: !3175)
!3187 = !DILocation(line: 899, column: 49, scope: !3175)
!3188 = !DILocation(line: 900, column: 7, scope: !3175)
!3189 = !DILocation(line: 903, column: 7, scope: !3175)
!3190 = !DILocation(line: 901, column: 17, scope: !3175)
!3191 = !DILocation(line: 904, column: 3, scope: !3175)
!3192 = !DILocation(line: 906, column: 10, scope: !3193)
!3193 = distinct !DILexicalBlock(scope: !3184, file: !3, line: 905, column: 22)
!3194 = !DILocation(line: 906, column: 22, scope: !3193)
!3195 = !DILocation(line: 907, column: 7, scope: !3193)
!3196 = !DILocation(line: 910, column: 27, scope: !3197)
!3197 = distinct !DILexicalBlock(scope: !3184, file: !3, line: 909, column: 25)
!3198 = !DILocation(line: 910, column: 10, scope: !3197)
!3199 = !DILocation(line: 910, column: 22, scope: !3197)
!3200 = !DILocation(line: 911, column: 7, scope: !3197)
!3201 = !DILocation(line: 914, column: 7, scope: !3202)
!3202 = distinct !DILexicalBlock(scope: !3184, file: !3, line: 913, column: 25)
!3203 = !DILocation(line: 915, column: 7, scope: !3202)
!3204 = !DILocation(line: 919, column: 13, scope: !3205)
!3205 = distinct !DILexicalBlock(scope: !3184, file: !3, line: 917, column: 23)
!3206 = !DILocation(line: 920, column: 7, scope: !3205)
!3207 = !DILocation(line: 923, column: 13, scope: !3208)
!3208 = distinct !DILexicalBlock(scope: !3184, file: !3, line: 922, column: 24)
!3209 = !DILocation(line: 924, column: 7, scope: !3208)
!3210 = !DILocation(line: 927, column: 19, scope: !3183)
!3211 = !DILocation(line: 927, column: 38, scope: !3183)
!3212 = !DILocation(line: 927, column: 14, scope: !3183)
!3213 = !DILocation(line: 928, column: 19, scope: !3214)
!3214 = distinct !DILexicalBlock(scope: !3183, file: !3, line: 928, column: 11)
!3215 = !DILocation(line: 928, column: 11, scope: !3183)
!3216 = !DILocation(line: 931, column: 12, scope: !3214)
!3217 = !DILocation(line: 931, column: 24, scope: !3214)
!3218 = !DILocation(line: 932, column: 29, scope: !3183)
!3219 = !DILocation(line: 932, column: 7, scope: !3183)
!3220 = !DILocation(line: 933, column: 9, scope: !3221)
!3221 = distinct !DILexicalBlock(scope: !3183, file: !3, line: 932, column: 47)
!3222 = !DILocation(line: 934, column: 16, scope: !3223)
!3223 = distinct !DILexicalBlock(scope: !3221, file: !3, line: 934, column: 13)
!3224 = !{!485, !376, i64 33}
!3225 = !DILocation(line: 934, column: 24, scope: !3223)
!3226 = !DILocation(line: 934, column: 13, scope: !3221)
!3227 = distinct !{!3227, !3219, !3228}
!3228 = !DILocation(line: 938, column: 7, scope: !3183)
!3229 = !DILocation(line: 932, column: 17, scope: !3183)
!3230 = !DILocation(line: 932, column: 35, scope: !3183)
!3231 = !DILocation(line: 942, column: 16, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !3184, file: !3, line: 941, column: 26)
!3233 = !{!485, !378, i64 144}
!3234 = !DILocation(line: 943, column: 18, scope: !3232)
!3235 = !DILocation(line: 944, column: 7, scope: !3232)
!3236 = !DILocation(line: 947, column: 16, scope: !3237)
!3237 = distinct !DILexicalBlock(scope: !3184, file: !3, line: 946, column: 28)
!3238 = !{!485, !378, i64 148}
!3239 = !DILocation(line: 948, column: 20, scope: !3237)
!3240 = !DILocation(line: 949, column: 7, scope: !3237)
!3241 = !DILocation(line: 0, scope: !3175)
!3242 = !DILocation(line: 954, column: 3, scope: !3175)
!3243 = distinct !DISubprogram(name: "lua_error", scope: !3, file: !3, line: 964, type: !129, isLocal: false, isDefinition: true, scopeLine: 964, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3244)
!3244 = !{!3245}
!3245 = !DILocalVariable(name: "L", arg: 1, scope: !3243, file: !3, line: 964, type: !131)
!3246 = !DILocation(line: 964, column: 35, scope: !3243)
!3247 = !DILocation(line: 967, column: 3, scope: !3243)
!3248 = !DILocation(line: 969, column: 3, scope: !3243)
!3249 = distinct !DISubprogram(name: "lua_next", scope: !3, file: !3, line: 973, type: !387, isLocal: false, isDefinition: true, scopeLine: 973, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3250)
!3250 = !{!3251, !3252, !3253, !3254}
!3251 = !DILocalVariable(name: "L", arg: 1, scope: !3249, file: !3, line: 973, type: !131)
!3252 = !DILocalVariable(name: "idx", arg: 2, scope: !3249, file: !3, line: 973, type: !8)
!3253 = !DILocalVariable(name: "t", scope: !3249, file: !3, line: 974, type: !140)
!3254 = !DILocalVariable(name: "more", scope: !3249, file: !3, line: 975, type: !8)
!3255 = !DILocation(line: 973, column: 34, scope: !3249)
!3256 = !DILocation(line: 973, column: 41, scope: !3249)
!3257 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !3258)
!3258 = distinct !DILocation(line: 977, column: 7, scope: !3249)
!3259 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !3258)
!3260 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !3258)
!3261 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !3258)
!3262 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !3258)
!3263 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !3258)
!3264 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !3258)
!3265 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !3258)
!3266 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !3258)
!3267 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !3258)
!3268 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !3258)
!3269 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !3258)
!3270 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !3258)
!3271 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !3258)
!3272 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !3258)
!3273 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !3258)
!3274 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !3258)
!3275 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !3258)
!3276 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !3258)
!3277 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !3258)
!3278 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !3258)
!3279 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !3258)
!3280 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !3258)
!3281 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !3258)
!3282 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !3258)
!3283 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !3258)
!3284 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !3258)
!3285 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !3258)
!3286 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !3258)
!3287 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !3258)
!3288 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !3258)
!3289 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !3258)
!3290 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !3258)
!3291 = !DILocation(line: 0, scope: !569, inlinedAt: !3258)
!3292 = !DILocation(line: 76, column: 1, scope: !559, inlinedAt: !3258)
!3293 = !DILocation(line: 974, column: 9, scope: !3249)
!3294 = !DILocation(line: 979, column: 23, scope: !3249)
!3295 = !DILocation(line: 979, column: 37, scope: !3249)
!3296 = !DILocation(line: 979, column: 41, scope: !3249)
!3297 = !DILocation(line: 979, column: 10, scope: !3249)
!3298 = !DILocation(line: 975, column: 7, scope: !3249)
!3299 = !DILocation(line: 980, column: 7, scope: !3300)
!3300 = distinct !DILexicalBlock(scope: !3249, file: !3, line: 980, column: 7)
!3301 = !DILocation(line: 0, scope: !3302)
!3302 = distinct !DILexicalBlock(scope: !3303, file: !3, line: 981, column: 5)
!3303 = distinct !DILexicalBlock(scope: !3300, file: !3, line: 980, column: 13)
!3304 = !DILocation(line: 980, column: 7, scope: !3249)
!3305 = !DILocation(line: 986, column: 3, scope: !3249)
!3306 = distinct !DISubprogram(name: "lua_concat", scope: !3, file: !3, line: 990, type: !521, isLocal: false, isDefinition: true, scopeLine: 990, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3307)
!3307 = !{!3308, !3309, !3310}
!3308 = !DILocalVariable(name: "L", arg: 1, scope: !3306, file: !3, line: 990, type: !131)
!3309 = !DILocalVariable(name: "n", arg: 2, scope: !3306, file: !3, line: 990, type: !8)
!3310 = !DILocalVariable(name: "i_o", scope: !3311, file: !3, line: 999, type: !74)
!3311 = distinct !DILexicalBlock(scope: !3312, file: !3, line: 999, column: 5)
!3312 = distinct !DILexicalBlock(scope: !3313, file: !3, line: 998, column: 20)
!3313 = distinct !DILexicalBlock(scope: !3314, file: !3, line: 998, column: 12)
!3314 = distinct !DILexicalBlock(scope: !3306, file: !3, line: 993, column: 7)
!3315 = !DILocation(line: 990, column: 37, scope: !3306)
!3316 = !DILocation(line: 990, column: 44, scope: !3306)
!3317 = !DILocation(line: 993, column: 9, scope: !3314)
!3318 = !DILocation(line: 993, column: 7, scope: !3306)
!3319 = !DILocation(line: 994, column: 5, scope: !3320)
!3320 = distinct !DILexicalBlock(scope: !3321, file: !3, line: 994, column: 5)
!3321 = distinct !DILexicalBlock(scope: !3322, file: !3, line: 994, column: 5)
!3322 = distinct !DILexicalBlock(scope: !3314, file: !3, line: 993, column: 15)
!3323 = !DILocation(line: 994, column: 5, scope: !3321)
!3324 = !DILocation(line: 995, column: 23, scope: !3322)
!3325 = !DILocation(line: 995, column: 50, scope: !3322)
!3326 = !DILocation(line: 995, column: 5, scope: !3322)
!3327 = !DILocation(line: 996, column: 17, scope: !3322)
!3328 = !DILocation(line: 996, column: 12, scope: !3322)
!3329 = !DILocation(line: 997, column: 3, scope: !3322)
!3330 = !DILocation(line: 998, column: 14, scope: !3313)
!3331 = !DILocation(line: 998, column: 12, scope: !3314)
!3332 = !DILocation(line: 999, column: 5, scope: !3311)
!3333 = !DILocation(line: 1000, column: 5, scope: !3334)
!3334 = distinct !DILexicalBlock(scope: !3312, file: !3, line: 1000, column: 5)
!3335 = !DILocation(line: 1001, column: 3, scope: !3312)
!3336 = !DILocation(line: 0, scope: !3322)
!3337 = !DILocation(line: 1004, column: 1, scope: !3306)
!3338 = distinct !DISubprogram(name: "lua_getallocf", scope: !3, file: !3, line: 1007, type: !3339, isLocal: false, isDefinition: true, scopeLine: 1007, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3342)
!3339 = !DISubroutineType(types: !3340)
!3340 = !{!157, !131, !3341}
!3341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!3342 = !{!3343, !3344, !3345}
!3343 = !DILocalVariable(name: "L", arg: 1, scope: !3338, file: !3, line: 1007, type: !131)
!3344 = !DILocalVariable(name: "ud", arg: 2, scope: !3338, file: !3, line: 1007, type: !3341)
!3345 = !DILocalVariable(name: "f", scope: !3338, file: !3, line: 1008, type: !157)
!3346 = !DILocation(line: 1007, column: 45, scope: !3338)
!3347 = !DILocation(line: 1007, column: 55, scope: !3338)
!3348 = !DILocation(line: 1010, column: 7, scope: !3349)
!3349 = distinct !DILexicalBlock(scope: !3338, file: !3, line: 1010, column: 7)
!3350 = !DILocation(line: 0, scope: !3349)
!3351 = !DILocation(line: 1010, column: 7, scope: !3338)
!3352 = !DILocation(line: 1010, column: 17, scope: !3349)
!3353 = !DILocation(line: 1010, column: 23, scope: !3349)
!3354 = !{!485, !375, i64 24}
!3355 = !DILocation(line: 1010, column: 15, scope: !3349)
!3356 = !DILocation(line: 1010, column: 11, scope: !3349)
!3357 = !DILocation(line: 1011, column: 7, scope: !3338)
!3358 = !DILocation(line: 1011, column: 13, scope: !3338)
!3359 = !{!485, !375, i64 16}
!3360 = !DILocation(line: 1008, column: 13, scope: !3338)
!3361 = !DILocation(line: 1013, column: 3, scope: !3338)
!3362 = distinct !DISubprogram(name: "lua_setallocf", scope: !3, file: !3, line: 1017, type: !3363, isLocal: false, isDefinition: true, scopeLine: 1017, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3365)
!3363 = !DISubroutineType(types: !3364)
!3364 = !{null, !131, !157, !35}
!3365 = !{!3366, !3367, !3368}
!3366 = !DILocalVariable(name: "L", arg: 1, scope: !3362, file: !3, line: 1017, type: !131)
!3367 = !DILocalVariable(name: "f", arg: 2, scope: !3362, file: !3, line: 1017, type: !157)
!3368 = !DILocalVariable(name: "ud", arg: 3, scope: !3362, file: !3, line: 1017, type: !35)
!3369 = !DILocation(line: 1017, column: 40, scope: !3362)
!3370 = !DILocation(line: 1017, column: 53, scope: !3362)
!3371 = !DILocation(line: 1017, column: 62, scope: !3362)
!3372 = !DILocation(line: 1019, column: 3, scope: !3362)
!3373 = !DILocation(line: 1019, column: 9, scope: !3362)
!3374 = !DILocation(line: 1019, column: 12, scope: !3362)
!3375 = !DILocation(line: 1020, column: 9, scope: !3362)
!3376 = !DILocation(line: 1020, column: 18, scope: !3362)
!3377 = !DILocation(line: 1022, column: 1, scope: !3362)
!3378 = distinct !DISubprogram(name: "lua_newuserdata", scope: !3, file: !3, line: 1025, type: !3379, isLocal: false, isDefinition: true, scopeLine: 1025, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3381)
!3379 = !DISubroutineType(types: !3380)
!3380 = !{!35, !131, !48}
!3381 = !{!3382, !3383, !3384, !3387}
!3382 = !DILocalVariable(name: "L", arg: 1, scope: !3378, file: !3, line: 1025, type: !131)
!3383 = !DILocalVariable(name: "size", arg: 2, scope: !3378, file: !3, line: 1025, type: !48)
!3384 = !DILocalVariable(name: "u", scope: !3378, file: !3, line: 1026, type: !3385)
!3385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3386, size: 64)
!3386 = !DIDerivedType(tag: DW_TAG_typedef, name: "Udata", file: !11, line: 223, baseType: !54)
!3387 = !DILocalVariable(name: "i_o", scope: !3388, file: !3, line: 1030, type: !74)
!3388 = distinct !DILexicalBlock(scope: !3378, file: !3, line: 1030, column: 3)
!3389 = !DILocation(line: 1025, column: 43, scope: !3378)
!3390 = !DILocation(line: 1025, column: 53, scope: !3378)
!3391 = !DILocation(line: 1028, column: 3, scope: !3392)
!3392 = distinct !DILexicalBlock(scope: !3393, file: !3, line: 1028, column: 3)
!3393 = distinct !DILexicalBlock(scope: !3378, file: !3, line: 1028, column: 3)
!3394 = !DILocation(line: 1028, column: 3, scope: !3393)
!3395 = !DILocation(line: 79, column: 38, scope: !2112, inlinedAt: !3396)
!3396 = distinct !DILocation(line: 1029, column: 30, scope: !3378)
!3397 = !DILocation(line: 80, column: 10, scope: !2120, inlinedAt: !3396)
!3398 = !DILocation(line: 80, column: 19, scope: !2120, inlinedAt: !3396)
!3399 = !DILocation(line: 80, column: 13, scope: !2120, inlinedAt: !3396)
!3400 = !DILocation(line: 80, column: 7, scope: !2112, inlinedAt: !3396)
!3401 = !DILocation(line: 81, column: 12, scope: !2120, inlinedAt: !3396)
!3402 = !DILocation(line: 81, column: 5, scope: !2120, inlinedAt: !3396)
!3403 = !DILocation(line: 83, column: 21, scope: !2119, inlinedAt: !3396)
!3404 = !DILocation(line: 83, column: 14, scope: !2119, inlinedAt: !3396)
!3405 = !DILocation(line: 84, column: 20, scope: !2119, inlinedAt: !3396)
!3406 = !DILocation(line: 0, scope: !2119, inlinedAt: !3396)
!3407 = !DILocation(line: 86, column: 1, scope: !2112, inlinedAt: !3396)
!3408 = !DILocation(line: 1029, column: 7, scope: !3378)
!3409 = !DILocation(line: 1026, column: 10, scope: !3378)
!3410 = !DILocation(line: 1030, column: 3, scope: !3388)
!3411 = !DILocation(line: 1031, column: 3, scope: !3412)
!3412 = distinct !DILexicalBlock(scope: !3378, file: !3, line: 1031, column: 3)
!3413 = !DILocation(line: 1033, column: 12, scope: !3378)
!3414 = !DILocation(line: 1033, column: 10, scope: !3378)
!3415 = !DILocation(line: 1033, column: 3, scope: !3378)
!3416 = distinct !DISubprogram(name: "lua_getupvalue", scope: !3, file: !3, line: 1057, type: !3417, isLocal: false, isDefinition: true, scopeLine: 1057, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3419)
!3417 = !DISubroutineType(types: !3418)
!3418 = !{!257, !131, !8, !8}
!3419 = !{!3420, !3421, !3422, !3423, !3424, !3425, !3429}
!3420 = !DILocalVariable(name: "L", arg: 1, scope: !3416, file: !3, line: 1057, type: !131)
!3421 = !DILocalVariable(name: "funcindex", arg: 2, scope: !3416, file: !3, line: 1057, type: !8)
!3422 = !DILocalVariable(name: "n", arg: 3, scope: !3416, file: !3, line: 1057, type: !8)
!3423 = !DILocalVariable(name: "name", scope: !3416, file: !3, line: 1058, type: !257)
!3424 = !DILocalVariable(name: "val", scope: !3416, file: !3, line: 1059, type: !74)
!3425 = !DILocalVariable(name: "o2", scope: !3426, file: !3, line: 1063, type: !362)
!3426 = distinct !DILexicalBlock(scope: !3427, file: !3, line: 1063, column: 5)
!3427 = distinct !DILexicalBlock(scope: !3428, file: !3, line: 1062, column: 13)
!3428 = distinct !DILexicalBlock(scope: !3416, file: !3, line: 1062, column: 7)
!3429 = !DILocalVariable(name: "o1", scope: !3426, file: !3, line: 1063, type: !74)
!3430 = !DILocation(line: 1057, column: 48, scope: !3416)
!3431 = !DILocation(line: 1057, column: 55, scope: !3416)
!3432 = !DILocation(line: 1057, column: 70, scope: !3416)
!3433 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !3434)
!3434 = distinct !DILocation(line: 1061, column: 22, scope: !3416)
!3435 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !3434)
!3436 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !3434)
!3437 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !3434)
!3438 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !3434)
!3439 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !3434)
!3440 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !3434)
!3441 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !3434)
!3442 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !3434)
!3443 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !3434)
!3444 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !3434)
!3445 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !3434)
!3446 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !3434)
!3447 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !3434)
!3448 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !3434)
!3449 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !3434)
!3450 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !3434)
!3451 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !3434)
!3452 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !3434)
!3453 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !3434)
!3454 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !3434)
!3455 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !3434)
!3456 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !3434)
!3457 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !3434)
!3458 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !3434)
!3459 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !3434)
!3460 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !3434)
!3461 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !3434)
!3462 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !3434)
!3463 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !3434)
!3464 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !3434)
!3465 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !3434)
!3466 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !3434)
!3467 = !DILocation(line: 0, scope: !569, inlinedAt: !3434)
!3468 = !DILocation(line: 76, column: 1, scope: !559, inlinedAt: !3434)
!3469 = !DILocation(line: 1059, column: 11, scope: !3416)
!3470 = !DILocalVariable(name: "fi", arg: 1, scope: !3471, file: !3, line: 1039, type: !140)
!3471 = distinct !DISubprogram(name: "aux_upvalue", scope: !3, file: !3, line: 1039, type: !3472, isLocal: true, isDefinition: true, scopeLine: 1039, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3475)
!3472 = !DISubroutineType(types: !3473)
!3473 = !{!257, !140, !8, !3474}
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!3475 = !{!3470, !3476, !3477, !3478, !3479}
!3476 = !DILocalVariable(name: "n", arg: 2, scope: !3471, file: !3, line: 1039, type: !8)
!3477 = !DILocalVariable(name: "val", arg: 3, scope: !3471, file: !3, line: 1039, type: !3474)
!3478 = !DILocalVariable(name: "f", scope: !3471, file: !3, line: 1040, type: !571)
!3479 = !DILocalVariable(name: "p", scope: !3480, file: !3, line: 1049, type: !3482)
!3480 = distinct !DILexicalBlock(scope: !3481, file: !3, line: 1048, column: 8)
!3481 = distinct !DILexicalBlock(scope: !3471, file: !3, line: 1043, column: 7)
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3483, size: 64)
!3483 = !DIDerivedType(tag: DW_TAG_typedef, name: "Proto", file: !11, line: 253, baseType: !298)
!3484 = !DILocation(line: 1039, column: 39, scope: !3471, inlinedAt: !3485)
!3485 = distinct !DILocation(line: 1061, column: 10, scope: !3416)
!3486 = !DILocation(line: 1039, column: 47, scope: !3471, inlinedAt: !3485)
!3487 = !DILocation(line: 1039, column: 59, scope: !3471, inlinedAt: !3485)
!3488 = !DILocation(line: 1041, column: 8, scope: !3489, inlinedAt: !3485)
!3489 = distinct !DILexicalBlock(scope: !3471, file: !3, line: 1041, column: 7)
!3490 = !DILocation(line: 1041, column: 7, scope: !3471, inlinedAt: !3485)
!3491 = !DILocation(line: 1042, column: 7, scope: !3471, inlinedAt: !3485)
!3492 = !DILocation(line: 1040, column: 12, scope: !3471, inlinedAt: !3485)
!3493 = !DILocation(line: 1043, column: 12, scope: !3481, inlinedAt: !3485)
!3494 = !DILocation(line: 1043, column: 7, scope: !3481, inlinedAt: !3485)
!3495 = !DILocation(line: 1043, column: 7, scope: !3471, inlinedAt: !3485)
!3496 = !DILocation(line: 1044, column: 13, scope: !3497, inlinedAt: !3485)
!3497 = distinct !DILexicalBlock(scope: !3498, file: !3, line: 1044, column: 9)
!3498 = distinct !DILexicalBlock(scope: !3481, file: !3, line: 1043, column: 17)
!3499 = !DILocation(line: 1044, column: 18, scope: !3497, inlinedAt: !3485)
!3500 = !DILocation(line: 1044, column: 31, scope: !3497, inlinedAt: !3485)
!3501 = !DILocation(line: 1044, column: 26, scope: !3497, inlinedAt: !3485)
!3502 = !DILocation(line: 1044, column: 23, scope: !3497, inlinedAt: !3485)
!3503 = !DILocation(line: 1044, column: 9, scope: !3498, inlinedAt: !3485)
!3504 = !DILocation(line: 1045, column: 27, scope: !3498, inlinedAt: !3485)
!3505 = !DILocation(line: 1045, column: 13, scope: !3498, inlinedAt: !3485)
!3506 = !DILocation(line: 1046, column: 5, scope: !3498, inlinedAt: !3485)
!3507 = !DILocation(line: 1049, column: 21, scope: !3480, inlinedAt: !3485)
!3508 = !DILocation(line: 1049, column: 12, scope: !3480, inlinedAt: !3485)
!3509 = !DILocation(line: 1050, column: 13, scope: !3510, inlinedAt: !3485)
!3510 = distinct !DILexicalBlock(scope: !3480, file: !3, line: 1050, column: 9)
!3511 = !DILocation(line: 1050, column: 18, scope: !3510, inlinedAt: !3485)
!3512 = !DILocation(line: 1050, column: 29, scope: !3510, inlinedAt: !3485)
!3513 = !{!3514, !378, i64 72}
!3514 = !{!"Proto", !375, i64 0, !376, i64 8, !376, i64 9, !375, i64 16, !375, i64 24, !375, i64 32, !375, i64 40, !375, i64 48, !375, i64 56, !375, i64 64, !378, i64 72, !378, i64 76, !378, i64 80, !378, i64 84, !378, i64 88, !378, i64 92, !378, i64 96, !378, i64 100, !375, i64 104, !376, i64 112, !376, i64 113, !376, i64 114, !376, i64 115}
!3515 = !DILocation(line: 1050, column: 23, scope: !3510, inlinedAt: !3485)
!3516 = !DILocation(line: 1050, column: 9, scope: !3480, inlinedAt: !3485)
!3517 = !DILocation(line: 1051, column: 17, scope: !3480, inlinedAt: !3485)
!3518 = !DILocation(line: 1051, column: 25, scope: !3480, inlinedAt: !3485)
!3519 = !DILocation(line: 1051, column: 12, scope: !3480, inlinedAt: !3485)
!3520 = !DILocation(line: 1051, column: 30, scope: !3480, inlinedAt: !3485)
!3521 = !{!488, !375, i64 16}
!3522 = !DILocation(line: 1052, column: 12, scope: !3480, inlinedAt: !3485)
!3523 = !{!3514, !375, i64 56}
!3524 = !DILocation(line: 1052, column: 5, scope: !3480, inlinedAt: !3485)
!3525 = !DILocation(line: 1054, column: 1, scope: !3471, inlinedAt: !3485)
!3526 = !DILocation(line: 1058, column: 15, scope: !3416)
!3527 = !DILocation(line: 1062, column: 7, scope: !3416)
!3528 = !DILocation(line: 0, scope: !3489, inlinedAt: !3485)
!3529 = !DILocation(line: 1063, column: 5, scope: !3426)
!3530 = !DILocation(line: 1064, column: 5, scope: !3531)
!3531 = distinct !DILexicalBlock(scope: !3427, file: !3, line: 1064, column: 5)
!3532 = !DILocation(line: 1065, column: 3, scope: !3427)
!3533 = !DILocation(line: 1067, column: 3, scope: !3416)
!3534 = distinct !DISubprogram(name: "lua_setupvalue", scope: !3, file: !3, line: 1071, type: !3417, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3535)
!3535 = !{!3536, !3537, !3538, !3539, !3540, !3541, !3542, !3546}
!3536 = !DILocalVariable(name: "L", arg: 1, scope: !3534, file: !3, line: 1071, type: !131)
!3537 = !DILocalVariable(name: "funcindex", arg: 2, scope: !3534, file: !3, line: 1071, type: !8)
!3538 = !DILocalVariable(name: "n", arg: 3, scope: !3534, file: !3, line: 1071, type: !8)
!3539 = !DILocalVariable(name: "name", scope: !3534, file: !3, line: 1072, type: !257)
!3540 = !DILocalVariable(name: "val", scope: !3534, file: !3, line: 1073, type: !74)
!3541 = !DILocalVariable(name: "fi", scope: !3534, file: !3, line: 1074, type: !140)
!3542 = !DILocalVariable(name: "o2", scope: !3543, file: !3, line: 1081, type: !362)
!3543 = distinct !DILexicalBlock(scope: !3544, file: !3, line: 1081, column: 5)
!3544 = distinct !DILexicalBlock(scope: !3545, file: !3, line: 1079, column: 13)
!3545 = distinct !DILexicalBlock(scope: !3534, file: !3, line: 1079, column: 7)
!3546 = !DILocalVariable(name: "o1", scope: !3543, file: !3, line: 1081, type: !74)
!3547 = !DILocation(line: 1071, column: 48, scope: !3534)
!3548 = !DILocation(line: 1071, column: 55, scope: !3534)
!3549 = !DILocation(line: 1071, column: 70, scope: !3534)
!3550 = !DILocation(line: 49, column: 38, scope: !559, inlinedAt: !3551)
!3551 = distinct !DILocation(line: 1076, column: 8, scope: !3534)
!3552 = !DILocation(line: 49, column: 45, scope: !559, inlinedAt: !3551)
!3553 = !DILocation(line: 50, column: 11, scope: !566, inlinedAt: !3551)
!3554 = !DILocation(line: 50, column: 7, scope: !559, inlinedAt: !3551)
!3555 = !DILocation(line: 51, column: 20, scope: !565, inlinedAt: !3551)
!3556 = !DILocation(line: 51, column: 32, scope: !565, inlinedAt: !3551)
!3557 = !DILocation(line: 51, column: 25, scope: !565, inlinedAt: !3551)
!3558 = !DILocation(line: 51, column: 13, scope: !565, inlinedAt: !3551)
!3559 = !DILocation(line: 53, column: 17, scope: !587, inlinedAt: !3551)
!3560 = !DILocation(line: 53, column: 11, scope: !587, inlinedAt: !3551)
!3561 = !DILocation(line: 54, column: 10, scope: !587, inlinedAt: !3551)
!3562 = !DILocation(line: 56, column: 16, scope: !570, inlinedAt: !3551)
!3563 = !DILocation(line: 56, column: 12, scope: !566, inlinedAt: !3551)
!3564 = !DILocation(line: 58, column: 15, scope: !593, inlinedAt: !3551)
!3565 = !DILocation(line: 58, column: 19, scope: !593, inlinedAt: !3551)
!3566 = !DILocation(line: 58, column: 5, scope: !593, inlinedAt: !3551)
!3567 = !DILocation(line: 60, column: 8, scope: !570, inlinedAt: !3551)
!3568 = !DILocation(line: 61, column: 36, scope: !569, inlinedAt: !3551)
!3569 = !DILocation(line: 61, column: 29, scope: !569, inlinedAt: !3551)
!3570 = !DILocation(line: 63, column: 23, scope: !568, inlinedAt: !3551)
!3571 = !DILocation(line: 63, column: 16, scope: !568, inlinedAt: !3551)
!3572 = !DILocation(line: 64, column: 7, scope: !574, inlinedAt: !3551)
!3573 = !DILocation(line: 67, column: 35, scope: !569, inlinedAt: !3551)
!3574 = !DILocation(line: 67, column: 28, scope: !569, inlinedAt: !3551)
!3575 = !DILocation(line: 69, column: 23, scope: !576, inlinedAt: !3551)
!3576 = !DILocation(line: 69, column: 16, scope: !576, inlinedAt: !3551)
!3577 = !DILocation(line: 70, column: 30, scope: !576, inlinedAt: !3551)
!3578 = !DILocation(line: 71, column: 30, scope: !576, inlinedAt: !3551)
!3579 = !DILocation(line: 71, column: 22, scope: !576, inlinedAt: !3551)
!3580 = !DILocation(line: 71, column: 19, scope: !576, inlinedAt: !3551)
!3581 = !DILocation(line: 71, column: 14, scope: !576, inlinedAt: !3551)
!3582 = !DILocation(line: 72, column: 39, scope: !576, inlinedAt: !3551)
!3583 = !DILocation(line: 72, column: 20, scope: !576, inlinedAt: !3551)
!3584 = !DILocation(line: 0, scope: !569, inlinedAt: !3551)
!3585 = !DILocation(line: 76, column: 1, scope: !559, inlinedAt: !3551)
!3586 = !DILocation(line: 1074, column: 9, scope: !3534)
!3587 = !DILocation(line: 1073, column: 11, scope: !3534)
!3588 = !DILocation(line: 1039, column: 39, scope: !3471, inlinedAt: !3589)
!3589 = distinct !DILocation(line: 1078, column: 10, scope: !3534)
!3590 = !DILocation(line: 1039, column: 47, scope: !3471, inlinedAt: !3589)
!3591 = !DILocation(line: 1039, column: 59, scope: !3471, inlinedAt: !3589)
!3592 = !DILocation(line: 1041, column: 8, scope: !3489, inlinedAt: !3589)
!3593 = !DILocation(line: 1041, column: 7, scope: !3471, inlinedAt: !3589)
!3594 = !DILocation(line: 1042, column: 7, scope: !3471, inlinedAt: !3589)
!3595 = !DILocation(line: 1040, column: 12, scope: !3471, inlinedAt: !3589)
!3596 = !DILocation(line: 1043, column: 12, scope: !3481, inlinedAt: !3589)
!3597 = !DILocation(line: 1043, column: 7, scope: !3481, inlinedAt: !3589)
!3598 = !DILocation(line: 1043, column: 7, scope: !3471, inlinedAt: !3589)
!3599 = !DILocation(line: 1044, column: 13, scope: !3497, inlinedAt: !3589)
!3600 = !DILocation(line: 1044, column: 18, scope: !3497, inlinedAt: !3589)
!3601 = !DILocation(line: 1044, column: 31, scope: !3497, inlinedAt: !3589)
!3602 = !DILocation(line: 1044, column: 26, scope: !3497, inlinedAt: !3589)
!3603 = !DILocation(line: 1044, column: 23, scope: !3497, inlinedAt: !3589)
!3604 = !DILocation(line: 1044, column: 9, scope: !3498, inlinedAt: !3589)
!3605 = !DILocation(line: 1045, column: 27, scope: !3498, inlinedAt: !3589)
!3606 = !DILocation(line: 1045, column: 13, scope: !3498, inlinedAt: !3589)
!3607 = !DILocation(line: 1046, column: 5, scope: !3498, inlinedAt: !3589)
!3608 = !DILocation(line: 1049, column: 21, scope: !3480, inlinedAt: !3589)
!3609 = !DILocation(line: 1049, column: 12, scope: !3480, inlinedAt: !3589)
!3610 = !DILocation(line: 1050, column: 13, scope: !3510, inlinedAt: !3589)
!3611 = !DILocation(line: 1050, column: 18, scope: !3510, inlinedAt: !3589)
!3612 = !DILocation(line: 1050, column: 29, scope: !3510, inlinedAt: !3589)
!3613 = !DILocation(line: 1050, column: 23, scope: !3510, inlinedAt: !3589)
!3614 = !DILocation(line: 1050, column: 9, scope: !3480, inlinedAt: !3589)
!3615 = !DILocation(line: 1051, column: 17, scope: !3480, inlinedAt: !3589)
!3616 = !DILocation(line: 1051, column: 25, scope: !3480, inlinedAt: !3589)
!3617 = !DILocation(line: 1051, column: 12, scope: !3480, inlinedAt: !3589)
!3618 = !DILocation(line: 1051, column: 30, scope: !3480, inlinedAt: !3589)
!3619 = !DILocation(line: 1052, column: 12, scope: !3480, inlinedAt: !3589)
!3620 = !DILocation(line: 1052, column: 5, scope: !3480, inlinedAt: !3589)
!3621 = !DILocation(line: 1054, column: 1, scope: !3471, inlinedAt: !3589)
!3622 = !DILocation(line: 1072, column: 15, scope: !3534)
!3623 = !DILocation(line: 1079, column: 7, scope: !3534)
!3624 = !DILocation(line: 0, scope: !3489, inlinedAt: !3589)
!3625 = !DILocation(line: 1080, column: 8, scope: !3544)
!3626 = !DILocation(line: 1080, column: 11, scope: !3544)
!3627 = !DILocation(line: 1081, column: 5, scope: !3543)
!3628 = !DILocation(line: 1082, column: 5, scope: !3629)
!3629 = distinct !DILexicalBlock(scope: !3630, file: !3, line: 1082, column: 5)
!3630 = distinct !DILexicalBlock(scope: !3544, file: !3, line: 1082, column: 5)
!3631 = !DILocation(line: 1082, column: 5, scope: !3630)
!3632 = !DILocation(line: 1085, column: 3, scope: !3534)
