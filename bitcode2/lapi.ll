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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !398
  br i1 %3, label %17, label %4, !dbg !398

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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !406
  %16 = inttoptr i64 %7 to %struct.lua_TValue*, !dbg !406
  br i1 %15, label %17, label %18, !dbg !406

; <label>:17:                                     ; preds = %4, %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !407
  br label %39, !dbg !407

; <label>:18:                                     ; preds = %4
  %19 = icmp sgt i32 %1, 0, !dbg !408
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !410
  br i1 %19, label %20, label %39, !dbg !410

; <label>:20:                                     ; preds = %18
  %21 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 9, !dbg !411
  %22 = bitcast %struct.lua_TValue** %21 to i64*, !dbg !411
  %23 = load i64, i64* %22, align 8, !dbg !411, !tbaa !414
  %24 = sub i64 %23, %7, !dbg !411
  %25 = shl nsw i32 %1, 4, !dbg !411
  %26 = sext i32 %25 to i64, !dbg !411
  %27 = icmp sgt i64 %24, %26, !dbg !411
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !415
  br i1 %27, label %30, label %28, !dbg !415

; <label>:28:                                     ; preds = %20
  tail call void @luaD_growstack(%struct.lua_State* nonnull %0, i32 %1) #5, !dbg !411
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !411
  %29 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8, !dbg !416, !tbaa !373
  br label %30, !dbg !411

; <label>:30:                                     ; preds = %20, %28
  %31 = phi %struct.lua_TValue* [ %16, %20 ], [ %29, %28 ], !dbg !416
  %32 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !418
  %33 = load %struct.CallInfo*, %struct.CallInfo** %32, align 8, !dbg !418, !tbaa !419
  %34 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %33, i64 0, i32 2, !dbg !420
  %35 = load %struct.lua_TValue*, %struct.lua_TValue** %34, align 8, !dbg !420, !tbaa !421
  %36 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %31, i64 %13, !dbg !423
  %37 = icmp ult %struct.lua_TValue* %35, %36, !dbg !424
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !425
  br i1 %37, label %38, label %39, !dbg !425

; <label>:38:                                     ; preds = %30
  store %struct.lua_TValue* %36, %struct.lua_TValue** %34, align 8, !dbg !426, !tbaa !421
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !427
  br label %39, !dbg !427

; <label>:39:                                     ; preds = %18, %38, %30, %17
  %40 = phi i32 [ 0, %17 ], [ 1, %38 ], [ 1, %30 ], [ 1, %18 ], !dbg !428
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !429
  ret i32 %40, !dbg !429
}

; Function Attrs: noredzone
declare hidden void @luaD_growstack(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @lua_xmove(%struct.lua_State*, %struct.lua_State*, i32) local_unnamed_addr #0 !dbg !430 {
  %4 = icmp eq %struct.lua_State* %0, %1, !dbg !447
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !449
  br i1 %4, label %73, label %5, !dbg !449

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !450
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8, !dbg !451, !tbaa !373
  %8 = sext i32 %2 to i64, !dbg !451
  %9 = sub nsw i64 0, %8, !dbg !451
  %10 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %7, i64 %9, !dbg !451
  store %struct.lua_TValue* %10, %struct.lua_TValue** %6, align 8, !dbg !451, !tbaa !373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !453
  %11 = icmp sgt i32 %2, 0, !dbg !454
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !455
  br i1 %11, label %12, label %73, !dbg !455

; <label>:12:                                     ; preds = %5
  %13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %1, i64 0, i32 4
  %14 = zext i32 %2 to i64
  %15 = load %struct.lua_TValue*, %struct.lua_TValue** %13, align 8, !dbg !456, !tbaa !373
  %16 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %15, i64 1, !dbg !456
  store %struct.lua_TValue* %16, %struct.lua_TValue** %13, align 8, !dbg !456, !tbaa !373
  %17 = bitcast %struct.lua_TValue* %10 to i64*, !dbg !456
  %18 = bitcast %struct.lua_TValue* %15 to i64*, !dbg !456
  %19 = load i64, i64* %17, align 8, !dbg !456
  store i64 %19, i64* %18, align 8, !dbg !456
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %7, i64 %9, i32 1, !dbg !456
  %21 = load i32, i32* %20, align 8, !dbg !456, !tbaa !382
  %22 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %15, i64 0, i32 1, !dbg !456
  store i32 %21, i32* %22, align 8, !dbg !456, !tbaa !382
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !457
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !455
  %23 = icmp eq i32 %2, 1, !dbg !454
  br i1 %23, label %73, label %24, !dbg !455, !llvm.loop !458

; <label>:24:                                     ; preds = %12
  %25 = and i32 %2, 1, !dbg !456
  %26 = xor i32 %25, 1, !dbg !456
  %27 = icmp eq i32 %2, 2, !dbg !456
  br i1 %27, label %59, label %28, !dbg !456

; <label>:28:                                     ; preds = %24
  %29 = zext i32 %26 to i64, !dbg !456
  %30 = xor i64 %29, -1, !dbg !456
  %31 = add nsw i64 %30, %14, !dbg !456
  br label %32, !dbg !456

; <label>:32:                                     ; preds = %32, %28
  %33 = phi i64 [ 1, %28 ], [ %56, %32 ]
  %34 = phi i64 [ %31, %28 ], [ %57, %32 ]
  %35 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8, !dbg !456, !tbaa !373
  %36 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %35, i64 %33, !dbg !456
  %37 = load %struct.lua_TValue*, %struct.lua_TValue** %13, align 8, !dbg !456, !tbaa !373
  %38 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %37, i64 1, !dbg !456
  store %struct.lua_TValue* %38, %struct.lua_TValue** %13, align 8, !dbg !456, !tbaa !373
  %39 = bitcast %struct.lua_TValue* %36 to i64*, !dbg !456
  %40 = bitcast %struct.lua_TValue* %37 to i64*, !dbg !456
  %41 = load i64, i64* %39, align 8, !dbg !456
  store i64 %41, i64* %40, align 8, !dbg !456
  %42 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %35, i64 %33, i32 1, !dbg !456
  %43 = load i32, i32* %42, align 8, !dbg !456, !tbaa !382
  %44 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %37, i64 0, i32 1, !dbg !456
  store i32 %43, i32* %44, align 8, !dbg !456, !tbaa !382
  %45 = add nuw nsw i64 %33, 1, !dbg !460
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !457
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !455
  %46 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8, !dbg !456, !tbaa !373
  %47 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %46, i64 %45, !dbg !456
  %48 = load %struct.lua_TValue*, %struct.lua_TValue** %13, align 8, !dbg !456, !tbaa !373
  %49 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %48, i64 1, !dbg !456
  store %struct.lua_TValue* %49, %struct.lua_TValue** %13, align 8, !dbg !456, !tbaa !373
  %50 = bitcast %struct.lua_TValue* %47 to i64*, !dbg !456
  %51 = bitcast %struct.lua_TValue* %48 to i64*, !dbg !456
  %52 = load i64, i64* %50, align 8, !dbg !456
  store i64 %52, i64* %51, align 8, !dbg !456
  %53 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %46, i64 %45, i32 1, !dbg !456
  %54 = load i32, i32* %53, align 8, !dbg !456, !tbaa !382
  %55 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %48, i64 0, i32 1, !dbg !456
  store i32 %54, i32* %55, align 8, !dbg !456, !tbaa !382
  %56 = add nuw nsw i64 %33, 2, !dbg !460
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !457
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !455
  %57 = add i64 %34, -2, !dbg !455
  %58 = icmp eq i64 %57, 0, !dbg !455
  br i1 %58, label %59, label %32, !dbg !455, !llvm.loop !458

; <label>:59:                                     ; preds = %32, %24
  %60 = phi i64 [ 1, %24 ], [ %56, %32 ]
  %61 = icmp eq i32 %26, 0, !dbg !455
  br i1 %61, label %73, label %62, !dbg !455

; <label>:62:                                     ; preds = %59
  %63 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8, !dbg !456, !tbaa !373
  %64 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %63, i64 %60, !dbg !456
  %65 = load %struct.lua_TValue*, %struct.lua_TValue** %13, align 8, !dbg !456, !tbaa !373
  %66 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %65, i64 1, !dbg !456
  store %struct.lua_TValue* %66, %struct.lua_TValue** %13, align 8, !dbg !456, !tbaa !373
  %67 = bitcast %struct.lua_TValue* %64 to i64*, !dbg !456
  %68 = bitcast %struct.lua_TValue* %65 to i64*, !dbg !456
  %69 = load i64, i64* %67, align 8, !dbg !456
  store i64 %69, i64* %68, align 8, !dbg !456
  %70 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %63, i64 %60, i32 1, !dbg !456
  %71 = load i32, i32* %70, align 8, !dbg !456, !tbaa !382
  %72 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %65, i64 0, i32 1, !dbg !456
  store i32 %71, i32* %72, align 8, !dbg !456, !tbaa !382
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !457
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !455
  br label %73, !dbg !461

; <label>:73:                                     ; preds = %62, %59, %5, %12, %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !461
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !462
  ret void, !dbg !462
}

; Function Attrs: noredzone nounwind
define dso_local void @lua_setlevel(%struct.lua_State* nocapture readonly, %struct.lua_State* nocapture) local_unnamed_addr #0 !dbg !463 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 15, !dbg !471
  %4 = load i16, i16* %3, align 8, !dbg !471, !tbaa !472
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %1, i64 0, i32 15, !dbg !473
  store i16 %4, i16* %5, align 8, !dbg !474, !tbaa !472
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !475
  ret void, !dbg !475
}

; Function Attrs: noredzone nounwind
define dso_local i32 (%struct.lua_State*)* @lua_atpanic(%struct.lua_State* nocapture readonly, i32 (%struct.lua_State*)*) local_unnamed_addr #0 !dbg !476 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !485
  %4 = load %struct.global_State*, %struct.global_State** %3, align 8, !dbg !485, !tbaa !486
  %5 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 19, !dbg !487
  %6 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %5, align 8, !dbg !487, !tbaa !488
  store i32 (%struct.lua_State*)* %1, i32 (%struct.lua_State*)** %5, align 8, !dbg !494, !tbaa !488
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !495
  ret i32 (%struct.lua_State*)* %6, !dbg !495
}

; Function Attrs: noredzone nounwind
define dso_local %struct.lua_State* @lua_newthread(%struct.lua_State*) local_unnamed_addr #0 !dbg !496 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !505
  %3 = load %struct.global_State*, %struct.global_State** %2, align 8, !dbg !505, !tbaa !486
  %4 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 14, !dbg !505
  %5 = load i64, i64* %4, align 8, !dbg !505, !tbaa !508
  %6 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 13, !dbg !505
  %7 = load i64, i64* %6, align 8, !dbg !505, !tbaa !509
  %8 = icmp ult i64 %5, %7, !dbg !505
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !510
  br i1 %8, label %10, label %9, !dbg !510

; <label>:9:                                      ; preds = %1
  tail call void @luaC_step(%struct.lua_State* nonnull %0) #5, !dbg !505
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !505
  br label %10, !dbg !505

; <label>:10:                                     ; preds = %1, %9
  %11 = tail call %struct.lua_State* @luaE_newthread(%struct.lua_State* nonnull %0) #5, !dbg !511
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !513
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %12, align 8, !dbg !513, !tbaa !373
  %14 = bitcast %struct.lua_TValue* %13 to %struct.lua_State**, !dbg !513
  store %struct.lua_State* %11, %struct.lua_State** %14, align 8, !dbg !513, !tbaa !514
  %15 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %13, i64 0, i32 1, !dbg !513
  store i32 8, i32* %15, align 8, !dbg !513, !tbaa !382
  %16 = load %struct.lua_TValue*, %struct.lua_TValue** %12, align 8, !dbg !515, !tbaa !373
  %17 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %16, i64 1, !dbg !515
  store %struct.lua_TValue* %17, %struct.lua_TValue** %12, align 8, !dbg !515, !tbaa !373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !517
  ret %struct.lua_State* %11, !dbg !517
}

; Function Attrs: noredzone
declare hidden void @luaC_step(%struct.lua_State*) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden %struct.lua_State* @luaE_newthread(%struct.lua_State*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_gettop(%struct.lua_State* nocapture readonly) local_unnamed_addr #0 !dbg !518 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !522
  %3 = bitcast %struct.lua_TValue** %2 to i64*, !dbg !522
  %4 = load i64, i64* %3, align 8, !dbg !522, !tbaa !373
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !522
  %6 = bitcast %struct.lua_TValue** %5 to i64*, !dbg !522
  %7 = load i64, i64* %6, align 8, !dbg !522, !tbaa !401
  %8 = sub i64 %4, %7, !dbg !522
  %9 = lshr exact i64 %8, 4, !dbg !522
  %10 = trunc i64 %9 to i32, !dbg !522
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !523
  ret i32 %10, !dbg !523
}

; Function Attrs: noredzone nounwind
define dso_local void @lua_settop(%struct.lua_State* nocapture, i32) local_unnamed_addr #0 !dbg !524 {
  %3 = icmp sgt i32 %1, -1, !dbg !532
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !534
  br i1 %3, label %4, label %18, !dbg !534

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !535
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8, !dbg !535, !tbaa !373
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !537
  %8 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8, !dbg !537, !tbaa !401
  %9 = sext i32 %1 to i64, !dbg !538
  %10 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %8, i64 %9, !dbg !538
  %11 = icmp ult %struct.lua_TValue* %6, %10, !dbg !539
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !540
  br i1 %11, label %12, label %17, !dbg !540

; <label>:12:                                     ; preds = %4, %12
  %13 = phi %struct.lua_TValue* [ %14, %12 ], [ %6, %4 ]
  %14 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %13, i64 1, !dbg !541
  store %struct.lua_TValue* %14, %struct.lua_TValue** %5, align 8, !dbg !541, !tbaa !373
  %15 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %13, i64 0, i32 1, !dbg !541
  store i32 0, i32* %15, align 8, !dbg !541, !tbaa !382
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !540
  %16 = icmp ult %struct.lua_TValue* %14, %10, !dbg !539
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !540
  br i1 %16, label %12, label %17, !dbg !540, !llvm.loop !542

; <label>:17:                                     ; preds = %12, %4
  store %struct.lua_TValue* %10, %struct.lua_TValue** %5, align 8, !dbg !543, !tbaa !373
  br label %24, !dbg !544

; <label>:18:                                     ; preds = %2
  %19 = add nsw i32 %1, 1, !dbg !545
  %20 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !547
  %21 = load %struct.lua_TValue*, %struct.lua_TValue** %20, align 8, !dbg !548, !tbaa !373
  %22 = sext i32 %19 to i64, !dbg !548
  %23 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %21, i64 %22, !dbg !548
  store %struct.lua_TValue* %23, %struct.lua_TValue** %20, align 8, !dbg !548, !tbaa !373
  br label %24

; <label>:24:                                     ; preds = %18, %17
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !549
  ret void, !dbg !549
}

; Function Attrs: noredzone nounwind
define dso_local void @lua_remove(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !550 {
  %3 = icmp sgt i32 %1, 0, !dbg !582
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !583
  br i1 %3, label %4, label %14, !dbg !583

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !584
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8, !dbg !584, !tbaa !401
  %7 = add nsw i32 %1, -1, !dbg !585
  %8 = sext i32 %7 to i64, !dbg !586
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 %8, !dbg !586
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !588
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !588, !tbaa !373
  %12 = icmp ult %struct.lua_TValue* %9, %11, !dbg !590
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !591
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !592
  %13 = select i1 %12, %struct.lua_TValue* %9, %struct.lua_TValue* @luaO_nilobject_, !dbg !593
  br label %57

; <label>:14:                                     ; preds = %2
  %15 = icmp sgt i32 %1, -10000, !dbg !594
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !595
  br i1 %15, label %16, label %21, !dbg !595

; <label>:16:                                     ; preds = %14
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !596
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %17, align 8, !dbg !596, !tbaa !373
  %19 = sext i32 %1 to i64, !dbg !598
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 %19, !dbg !598
  br label %57, !dbg !599

; <label>:21:                                     ; preds = %14
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !600
  switch i32 %1, label %41 [
    i32 -10000, label %22
    i32 -10001, label %26
    i32 -10002, label %39
  ], !dbg !600

; <label>:22:                                     ; preds = %21
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !601
  %24 = load %struct.global_State*, %struct.global_State** %23, align 8, !dbg !601, !tbaa !486
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %24, i64 0, i32 20, !dbg !601
  br label %57, !dbg !602

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !603
  %28 = load %struct.CallInfo*, %struct.CallInfo** %27, align 8, !dbg !603, !tbaa !419
  %29 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %28, i64 0, i32 1, !dbg !603
  %30 = bitcast %struct.lua_TValue** %29 to %struct.CClosure***, !dbg !603
  %31 = load %struct.CClosure**, %struct.CClosure*** %30, align 8, !dbg !603, !tbaa !604
  %32 = load %struct.CClosure*, %struct.CClosure** %31, align 8, !dbg !603, !tbaa !514
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !606
  %34 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %32, i64 0, i32 6, !dbg !606
  %35 = bitcast %struct.Table** %34 to i64*, !dbg !606
  %36 = load i64, i64* %35, align 8, !dbg !606, !tbaa !514
  %37 = bitcast %struct.lua_TValue* %33 to i64*, !dbg !606
  store i64 %36, i64* %37, align 8, !dbg !606, !tbaa !514
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !606
  store i32 5, i32* %38, align 8, !dbg !606, !tbaa !382
  br label %57

; <label>:39:                                     ; preds = %21
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !607
  br label %57, !dbg !608

; <label>:41:                                     ; preds = %21
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !609
  %43 = load %struct.CallInfo*, %struct.CallInfo** %42, align 8, !dbg !609, !tbaa !419
  %44 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %43, i64 0, i32 1, !dbg !609
  %45 = bitcast %struct.lua_TValue** %44 to %struct.CClosure***, !dbg !609
  %46 = load %struct.CClosure**, %struct.CClosure*** %45, align 8, !dbg !609, !tbaa !604
  %47 = load %struct.CClosure*, %struct.CClosure** %46, align 8, !dbg !609, !tbaa !514
  %48 = sub nsw i32 -10002, %1, !dbg !611
  %49 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 4, !dbg !612
  %50 = load i8, i8* %49, align 1, !dbg !612, !tbaa !514
  %51 = zext i8 %50 to i32, !dbg !613
  %52 = icmp sgt i32 %48, %51, !dbg !614
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !615
  br i1 %52, label %57, label %53, !dbg !615

; <label>:53:                                     ; preds = %41
  %54 = add nsw i32 %48, -1, !dbg !616
  %55 = sext i32 %54 to i64, !dbg !617
  %56 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 8, i64 %55, !dbg !617
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !615
  br label %57, !dbg !615

; <label>:57:                                     ; preds = %41, %53, %4, %16, %22, %26, %39
  %58 = phi %struct.lua_TValue* [ %13, %4 ], [ %20, %16 ], [ %40, %39 ], [ %33, %26 ], [ %25, %22 ], [ %56, %53 ], [ @luaO_nilobject_, %41 ], !dbg !618
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !619
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !621
  %59 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i64 1, !dbg !622
  %60 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !623
  %61 = load %struct.lua_TValue*, %struct.lua_TValue** %60, align 8, !dbg !623, !tbaa !373
  %62 = icmp ult %struct.lua_TValue* %59, %61, !dbg !624
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !621
  br i1 %62, label %63, label %75, !dbg !621

; <label>:63:                                     ; preds = %57, %63
  %64 = phi %struct.lua_TValue* [ %72, %63 ], [ %59, %57 ]
  %65 = phi %struct.lua_TValue* [ %64, %63 ], [ %58, %57 ]
  %66 = bitcast %struct.lua_TValue* %64 to i64*, !dbg !625
  %67 = bitcast %struct.lua_TValue* %65 to i64*, !dbg !625
  %68 = load i64, i64* %66, align 8, !dbg !625
  store i64 %68, i64* %67, align 8, !dbg !625
  %69 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %65, i64 1, i32 1, !dbg !625
  %70 = load i32, i32* %69, align 8, !dbg !625, !tbaa !382
  %71 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %65, i64 0, i32 1, !dbg !625
  store i32 %70, i32* %71, align 8, !dbg !625, !tbaa !382
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !621
  %72 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %64, i64 1, !dbg !622
  %73 = load %struct.lua_TValue*, %struct.lua_TValue** %60, align 8, !dbg !623, !tbaa !373
  %74 = icmp ult %struct.lua_TValue* %72, %73, !dbg !624
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !621
  br i1 %74, label %63, label %75, !dbg !621, !llvm.loop !626

; <label>:75:                                     ; preds = %63, %57
  %76 = phi %struct.lua_TValue* [ %61, %57 ], [ %73, %63 ], !dbg !623
  %77 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %76, i64 -1, !dbg !628
  store %struct.lua_TValue* %77, %struct.lua_TValue** %60, align 8, !dbg !628, !tbaa !373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !629
  ret void, !dbg !629
}

; Function Attrs: noredzone nounwind
define dso_local void @lua_insert(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !630 {
  %3 = icmp sgt i32 %1, 0, !dbg !649
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !650
  br i1 %3, label %4, label %14, !dbg !650

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !651
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8, !dbg !651, !tbaa !401
  %7 = add nsw i32 %1, -1, !dbg !652
  %8 = sext i32 %7 to i64, !dbg !653
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 %8, !dbg !653
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !655
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !655, !tbaa !373
  %12 = icmp ult %struct.lua_TValue* %9, %11, !dbg !656
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !657
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !658
  %13 = select i1 %12, %struct.lua_TValue* %9, %struct.lua_TValue* @luaO_nilobject_, !dbg !659
  br label %57

; <label>:14:                                     ; preds = %2
  %15 = icmp sgt i32 %1, -10000, !dbg !660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !661
  br i1 %15, label %16, label %21, !dbg !661

; <label>:16:                                     ; preds = %14
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !662
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %17, align 8, !dbg !662, !tbaa !373
  %19 = sext i32 %1 to i64, !dbg !663
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 %19, !dbg !663
  br label %57, !dbg !664

; <label>:21:                                     ; preds = %14
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !665
  switch i32 %1, label %41 [
    i32 -10000, label %22
    i32 -10001, label %26
    i32 -10002, label %39
  ], !dbg !665

; <label>:22:                                     ; preds = %21
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !666
  %24 = load %struct.global_State*, %struct.global_State** %23, align 8, !dbg !666, !tbaa !486
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %24, i64 0, i32 20, !dbg !666
  br label %57, !dbg !667

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !668
  %28 = load %struct.CallInfo*, %struct.CallInfo** %27, align 8, !dbg !668, !tbaa !419
  %29 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %28, i64 0, i32 1, !dbg !668
  %30 = bitcast %struct.lua_TValue** %29 to %struct.CClosure***, !dbg !668
  %31 = load %struct.CClosure**, %struct.CClosure*** %30, align 8, !dbg !668, !tbaa !604
  %32 = load %struct.CClosure*, %struct.CClosure** %31, align 8, !dbg !668, !tbaa !514
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !670
  %34 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %32, i64 0, i32 6, !dbg !670
  %35 = bitcast %struct.Table** %34 to i64*, !dbg !670
  %36 = load i64, i64* %35, align 8, !dbg !670, !tbaa !514
  %37 = bitcast %struct.lua_TValue* %33 to i64*, !dbg !670
  store i64 %36, i64* %37, align 8, !dbg !670, !tbaa !514
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !670
  store i32 5, i32* %38, align 8, !dbg !670, !tbaa !382
  br label %57

; <label>:39:                                     ; preds = %21
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !671
  br label %57, !dbg !672

; <label>:41:                                     ; preds = %21
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !673
  %43 = load %struct.CallInfo*, %struct.CallInfo** %42, align 8, !dbg !673, !tbaa !419
  %44 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %43, i64 0, i32 1, !dbg !673
  %45 = bitcast %struct.lua_TValue** %44 to %struct.CClosure***, !dbg !673
  %46 = load %struct.CClosure**, %struct.CClosure*** %45, align 8, !dbg !673, !tbaa !604
  %47 = load %struct.CClosure*, %struct.CClosure** %46, align 8, !dbg !673, !tbaa !514
  %48 = sub nsw i32 -10002, %1, !dbg !675
  %49 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 4, !dbg !676
  %50 = load i8, i8* %49, align 1, !dbg !676, !tbaa !514
  %51 = zext i8 %50 to i32, !dbg !677
  %52 = icmp sgt i32 %48, %51, !dbg !678
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !679
  br i1 %52, label %57, label %53, !dbg !679

; <label>:53:                                     ; preds = %41
  %54 = add nsw i32 %48, -1, !dbg !680
  %55 = sext i32 %54 to i64, !dbg !681
  %56 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 8, i64 %55, !dbg !681
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !679
  br label %57, !dbg !679

; <label>:57:                                     ; preds = %41, %53, %4, %16, %22, %26, %39
  %58 = phi %struct.lua_TValue* [ %13, %4 ], [ %20, %16 ], [ %40, %39 ], [ %33, %26 ], [ %25, %22 ], [ %56, %53 ], [ @luaO_nilobject_, %41 ], !dbg !682
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !683
  %59 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !685
  %60 = load %struct.lua_TValue*, %struct.lua_TValue** %59, align 8, !dbg !685, !tbaa !373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !687
  %61 = icmp ugt %struct.lua_TValue* %60, %58, !dbg !688
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !689
  br i1 %61, label %62, label %74, !dbg !689

; <label>:62:                                     ; preds = %57, %62
  %63 = phi %struct.lua_TValue* [ %64, %62 ], [ %60, %57 ]
  %64 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %63, i64 -1, !dbg !690
  %65 = bitcast %struct.lua_TValue* %64 to i64*, !dbg !690
  %66 = bitcast %struct.lua_TValue* %63 to i64*, !dbg !690
  %67 = load i64, i64* %65, align 8, !dbg !690
  store i64 %67, i64* %66, align 8, !dbg !690
  %68 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %63, i64 -1, i32 1, !dbg !690
  %69 = load i32, i32* %68, align 8, !dbg !690, !tbaa !382
  %70 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %63, i64 0, i32 1, !dbg !690
  store i32 %69, i32* %70, align 8, !dbg !690, !tbaa !382
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !691
  %71 = icmp ugt %struct.lua_TValue* %64, %58, !dbg !688
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !689
  br i1 %71, label %62, label %72, !dbg !689, !llvm.loop !692

; <label>:72:                                     ; preds = %62
  %73 = load %struct.lua_TValue*, %struct.lua_TValue** %59, align 8, !dbg !694, !tbaa !373
  br label %74, !dbg !694

; <label>:74:                                     ; preds = %72, %57
  %75 = phi %struct.lua_TValue* [ %73, %72 ], [ %60, %57 ], !dbg !694
  %76 = bitcast %struct.lua_TValue* %75 to i64*, !dbg !694
  %77 = bitcast %struct.lua_TValue* %58 to i64*, !dbg !694
  %78 = load i64, i64* %76, align 8, !dbg !694
  store i64 %78, i64* %77, align 8, !dbg !694
  %79 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %75, i64 0, i32 1, !dbg !694
  %80 = load i32, i32* %79, align 8, !dbg !694, !tbaa !382
  %81 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i64 0, i32 1, !dbg !694
  store i32 %80, i32* %81, align 8, !dbg !694, !tbaa !382
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !695
  ret void, !dbg !695
}

; Function Attrs: noredzone nounwind
define dso_local void @lua_replace(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !696 {
  %3 = icmp eq i32 %1, -10001, !dbg !710
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !712
  br i1 %3, label %4, label %12, !dbg !712

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !713
  %6 = load %struct.CallInfo*, %struct.CallInfo** %5, align 8, !dbg !713, !tbaa !419
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 12, !dbg !714
  %8 = load %struct.CallInfo*, %struct.CallInfo** %7, align 8, !dbg !714, !tbaa !715
  %9 = icmp eq %struct.CallInfo* %6, %8, !dbg !716
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !717
  br i1 %9, label %10, label %11, !dbg !717

; <label>:10:                                     ; preds = %4
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0)) #5, !dbg !718
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !718
  br label %11, !dbg !718

; <label>:11:                                     ; preds = %10, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !722
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !723
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !724
  br label %56, !dbg !724

; <label>:12:                                     ; preds = %2
  %13 = icmp sgt i32 %1, 0, !dbg !725
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !722
  br i1 %13, label %14, label %24, !dbg !722

; <label>:14:                                     ; preds = %12
  %15 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !726
  %16 = load %struct.lua_TValue*, %struct.lua_TValue** %15, align 8, !dbg !726, !tbaa !401
  %17 = add nsw i32 %1, -1, !dbg !727
  %18 = sext i32 %17 to i64, !dbg !728
  %19 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %16, i64 %18, !dbg !728
  %20 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !730
  %21 = load %struct.lua_TValue*, %struct.lua_TValue** %20, align 8, !dbg !730, !tbaa !373
  %22 = icmp ult %struct.lua_TValue* %19, %21, !dbg !731
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !732
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !733
  %23 = select i1 %22, %struct.lua_TValue* %19, %struct.lua_TValue* @luaO_nilobject_, !dbg !734
  br label %97

; <label>:24:                                     ; preds = %12
  %25 = icmp sgt i32 %1, -10000, !dbg !735
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !723
  br i1 %25, label %26, label %31, !dbg !723

; <label>:26:                                     ; preds = %24
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !736
  %28 = load %struct.lua_TValue*, %struct.lua_TValue** %27, align 8, !dbg !736, !tbaa !373
  %29 = sext i32 %1 to i64, !dbg !737
  %30 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %28, i64 %29, !dbg !737
  br label %97, !dbg !738

; <label>:31:                                     ; preds = %24
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !724
  switch i32 %1, label %40 [
    i32 -10000, label %34
    i32 -10001, label %32
    i32 -10002, label %38
  ], !dbg !724

; <label>:32:                                     ; preds = %31
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !739
  br label %56, !dbg !724

; <label>:34:                                     ; preds = %31
  %35 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !740
  %36 = load %struct.global_State*, %struct.global_State** %35, align 8, !dbg !740, !tbaa !486
  %37 = getelementptr inbounds %struct.global_State, %struct.global_State* %36, i64 0, i32 20, !dbg !740
  br label %97, !dbg !741

; <label>:38:                                     ; preds = %31
  %39 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !742
  br label %97, !dbg !743

; <label>:40:                                     ; preds = %31
  %41 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !744
  %42 = load %struct.CallInfo*, %struct.CallInfo** %41, align 8, !dbg !744, !tbaa !419
  %43 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %42, i64 0, i32 1, !dbg !744
  %44 = bitcast %struct.lua_TValue** %43 to %struct.CClosure***, !dbg !744
  %45 = load %struct.CClosure**, %struct.CClosure*** %44, align 8, !dbg !744, !tbaa !604
  %46 = load %struct.CClosure*, %struct.CClosure** %45, align 8, !dbg !744, !tbaa !514
  %47 = sub nsw i32 -10002, %1, !dbg !746
  %48 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %46, i64 0, i32 4, !dbg !747
  %49 = load i8, i8* %48, align 1, !dbg !747, !tbaa !514
  %50 = zext i8 %49 to i32, !dbg !748
  %51 = icmp sgt i32 %47, %50, !dbg !749
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !750
  br i1 %51, label %97, label %52, !dbg !750

; <label>:52:                                     ; preds = %40
  %53 = add nsw i32 %47, -1, !dbg !751
  %54 = sext i32 %53 to i64, !dbg !752
  %55 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %46, i64 0, i32 8, i64 %54, !dbg !752
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !750
  br label %97, !dbg !750

; <label>:56:                                     ; preds = %32, %11
  %57 = phi %struct.CallInfo** [ %33, %32 ], [ %5, %11 ], !dbg !739
  %58 = load %struct.CallInfo*, %struct.CallInfo** %57, align 8, !dbg !739, !tbaa !419
  %59 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %58, i64 0, i32 1, !dbg !739
  %60 = bitcast %struct.lua_TValue** %59 to %struct.CClosure***, !dbg !739
  %61 = load %struct.CClosure**, %struct.CClosure*** %60, align 8, !dbg !739, !tbaa !604
  %62 = load %struct.CClosure*, %struct.CClosure** %61, align 8, !dbg !739, !tbaa !514
  %63 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !754
  %64 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %62, i64 0, i32 6, !dbg !754
  %65 = bitcast %struct.Table** %64 to i64*, !dbg !754
  %66 = load i64, i64* %65, align 8, !dbg !754, !tbaa !514
  %67 = bitcast %struct.lua_TValue* %63 to i64*, !dbg !754
  store i64 %66, i64* %67, align 8, !dbg !754, !tbaa !514
  %68 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !754
  store i32 5, i32* %68, align 8, !dbg !754, !tbaa !382
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !755
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !757
  %69 = load %struct.lua_TValue*, %struct.lua_TValue** %59, align 8, !dbg !758, !tbaa !604
  %70 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %69, i64 0, i32 0, i32 0, !dbg !758
  %71 = load %union.GCObject*, %union.GCObject** %70, align 8, !dbg !758, !tbaa !514
  %72 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !760
  %73 = load %struct.lua_TValue*, %struct.lua_TValue** %72, align 8, !dbg !760, !tbaa !373
  %74 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %73, i64 -1, i32 0, i32 0, !dbg !760
  %75 = bitcast %union.GCObject** %74 to i64*, !dbg !760
  %76 = load i64, i64* %75, align 8, !dbg !760, !tbaa !514
  %77 = getelementptr inbounds %union.GCObject, %union.GCObject* %71, i64 0, i32 0, i32 5, !dbg !761
  %78 = bitcast %struct.lua_TValue** %77 to i64*, !dbg !762
  store i64 %76, i64* %78, align 8, !dbg !762, !tbaa !514
  %79 = load %struct.lua_TValue*, %struct.lua_TValue** %72, align 8, !dbg !763, !tbaa !373
  %80 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %79, i64 -1, i32 1, !dbg !763
  %81 = load i32, i32* %80, align 8, !dbg !763, !tbaa !382
  %82 = icmp sgt i32 %81, 3, !dbg !763
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !763
  br i1 %82, label %83, label %96, !dbg !763

; <label>:83:                                     ; preds = %56
  %84 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %79, i64 -1, i32 0, i32 0, !dbg !763
  %85 = load %union.GCObject*, %union.GCObject** %84, align 8, !dbg !763, !tbaa !514
  %86 = getelementptr inbounds %union.GCObject, %union.GCObject* %85, i64 0, i32 0, i32 2, !dbg !763
  %87 = load i8, i8* %86, align 1, !dbg !763, !tbaa !514
  %88 = and i8 %87, 3, !dbg !763
  %89 = icmp eq i8 %88, 0, !dbg !763
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !763
  br i1 %89, label %96, label %90, !dbg !763

; <label>:90:                                     ; preds = %83
  %91 = getelementptr inbounds %union.GCObject, %union.GCObject* %71, i64 0, i32 0, i32 2, !dbg !763
  %92 = load i8, i8* %91, align 1, !dbg !763, !tbaa !514
  %93 = and i8 %92, 4, !dbg !763
  %94 = icmp eq i8 %93, 0, !dbg !763
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !766
  br i1 %94, label %96, label %95, !dbg !766

; <label>:95:                                     ; preds = %90
  tail call void @luaC_barrierf(%struct.lua_State* nonnull %0, %union.GCObject* nonnull %71, %union.GCObject* %85) #5, !dbg !763
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !763
  br label %96, !dbg !763

; <label>:96:                                     ; preds = %90, %83, %95, %56
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !767
  br label %133, !dbg !767

; <label>:97:                                     ; preds = %40, %52, %14, %26, %34, %38
  %98 = phi %struct.lua_TValue* [ %37, %34 ], [ %39, %38 ], [ %30, %26 ], [ %23, %14 ], [ %55, %52 ], [ @luaO_nilobject_, %40 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !755
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !757
  %99 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !768
  %100 = load %struct.lua_TValue*, %struct.lua_TValue** %99, align 8, !dbg !768, !tbaa !373
  %101 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %100, i64 -1, !dbg !768
  %102 = bitcast %struct.lua_TValue* %101 to i64*, !dbg !768
  %103 = bitcast %struct.lua_TValue* %98 to i64*, !dbg !768
  %104 = load i64, i64* %102, align 8, !dbg !768
  store i64 %104, i64* %103, align 8, !dbg !768
  %105 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %100, i64 -1, i32 1, !dbg !768
  %106 = load i32, i32* %105, align 8, !dbg !768, !tbaa !382
  %107 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %98, i64 0, i32 1, !dbg !768
  store i32 %106, i32* %107, align 8, !dbg !768, !tbaa !382
  %108 = icmp slt i32 %1, -10002, !dbg !769
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !771
  br i1 %108, label %109, label %133, !dbg !771

; <label>:109:                                    ; preds = %97
  %110 = load %struct.lua_TValue*, %struct.lua_TValue** %99, align 8, !dbg !772, !tbaa !373
  %111 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %110, i64 -1, i32 1, !dbg !772
  %112 = load i32, i32* %111, align 8, !dbg !772, !tbaa !382
  %113 = icmp sgt i32 %112, 3, !dbg !772
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !772
  br i1 %113, label %114, label %133, !dbg !772

; <label>:114:                                    ; preds = %109
  %115 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %110, i64 -1, i32 0, i32 0, !dbg !772
  %116 = load %union.GCObject*, %union.GCObject** %115, align 8, !dbg !772, !tbaa !514
  %117 = getelementptr inbounds %union.GCObject, %union.GCObject* %116, i64 0, i32 0, i32 2, !dbg !772
  %118 = load i8, i8* %117, align 1, !dbg !772, !tbaa !514
  %119 = and i8 %118, 3, !dbg !772
  %120 = icmp eq i8 %119, 0, !dbg !772
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !772
  br i1 %120, label %133, label %121, !dbg !772

; <label>:121:                                    ; preds = %114
  %122 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !772
  %123 = load %struct.CallInfo*, %struct.CallInfo** %122, align 8, !dbg !772, !tbaa !419
  %124 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %123, i64 0, i32 1, !dbg !772
  %125 = load %struct.lua_TValue*, %struct.lua_TValue** %124, align 8, !dbg !772, !tbaa !604
  %126 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %125, i64 0, i32 0, i32 0, !dbg !772
  %127 = load %union.GCObject*, %union.GCObject** %126, align 8, !dbg !772, !tbaa !514
  %128 = getelementptr inbounds %union.GCObject, %union.GCObject* %127, i64 0, i32 0, i32 2, !dbg !772
  %129 = load i8, i8* %128, align 1, !dbg !772, !tbaa !514
  %130 = and i8 %129, 4, !dbg !772
  %131 = icmp eq i8 %130, 0, !dbg !772
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !775
  br i1 %131, label %133, label %132, !dbg !775

; <label>:132:                                    ; preds = %121
  tail call void @luaC_barrierf(%struct.lua_State* nonnull %0, %union.GCObject* %127, %union.GCObject* %116) #5, !dbg !772
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !772
  br label %133, !dbg !772

; <label>:133:                                    ; preds = %121, %114, %97, %132, %109, %96
  %134 = phi %struct.lua_TValue** [ %99, %121 ], [ %99, %114 ], [ %99, %97 ], [ %99, %132 ], [ %99, %109 ], [ %72, %96 ], !dbg !776
  %135 = load %struct.lua_TValue*, %struct.lua_TValue** %134, align 8, !dbg !777, !tbaa !373
  %136 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %135, i64 -1, !dbg !777
  store %struct.lua_TValue* %136, %struct.lua_TValue** %134, align 8, !dbg !777, !tbaa !373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !778
  ret void, !dbg !778
}

; Function Attrs: noredzone
declare hidden void @luaG_runerror(%struct.lua_State*, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden void @luaC_barrierf(%struct.lua_State*, %union.GCObject*, %union.GCObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @lua_pushvalue(%struct.lua_State* nocapture, i32) local_unnamed_addr #0 !dbg !779 {
  %3 = icmp sgt i32 %1, 0, !dbg !791
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !792
  br i1 %3, label %4, label %14, !dbg !792

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !793
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8, !dbg !793, !tbaa !401
  %7 = add nsw i32 %1, -1, !dbg !794
  %8 = sext i32 %7 to i64, !dbg !795
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 %8, !dbg !795
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !797
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !797, !tbaa !373
  %12 = icmp ult %struct.lua_TValue* %9, %11, !dbg !798
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !799
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !800
  %13 = select i1 %12, %struct.lua_TValue* %9, %struct.lua_TValue* @luaO_nilobject_, !dbg !801
  br label %57

; <label>:14:                                     ; preds = %2
  %15 = icmp sgt i32 %1, -10000, !dbg !802
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !803
  br i1 %15, label %16, label %21, !dbg !803

; <label>:16:                                     ; preds = %14
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !804
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %17, align 8, !dbg !804, !tbaa !373
  %19 = sext i32 %1 to i64, !dbg !805
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 %19, !dbg !805
  br label %57, !dbg !806

; <label>:21:                                     ; preds = %14
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !807
  switch i32 %1, label %41 [
    i32 -10000, label %22
    i32 -10001, label %26
    i32 -10002, label %39
  ], !dbg !807

; <label>:22:                                     ; preds = %21
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !808
  %24 = load %struct.global_State*, %struct.global_State** %23, align 8, !dbg !808, !tbaa !486
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %24, i64 0, i32 20, !dbg !808
  br label %57, !dbg !809

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !810
  %28 = load %struct.CallInfo*, %struct.CallInfo** %27, align 8, !dbg !810, !tbaa !419
  %29 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %28, i64 0, i32 1, !dbg !810
  %30 = bitcast %struct.lua_TValue** %29 to %struct.CClosure***, !dbg !810
  %31 = load %struct.CClosure**, %struct.CClosure*** %30, align 8, !dbg !810, !tbaa !604
  %32 = load %struct.CClosure*, %struct.CClosure** %31, align 8, !dbg !810, !tbaa !514
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !812
  %34 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %32, i64 0, i32 6, !dbg !812
  %35 = bitcast %struct.Table** %34 to i64*, !dbg !812
  %36 = load i64, i64* %35, align 8, !dbg !812, !tbaa !514
  %37 = bitcast %struct.lua_TValue* %33 to i64*, !dbg !812
  store i64 %36, i64* %37, align 8, !dbg !812, !tbaa !514
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !812
  store i32 5, i32* %38, align 8, !dbg !812, !tbaa !382
  br label %57

; <label>:39:                                     ; preds = %21
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !813
  br label %57, !dbg !814

; <label>:41:                                     ; preds = %21
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !815
  %43 = load %struct.CallInfo*, %struct.CallInfo** %42, align 8, !dbg !815, !tbaa !419
  %44 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %43, i64 0, i32 1, !dbg !815
  %45 = bitcast %struct.lua_TValue** %44 to %struct.CClosure***, !dbg !815
  %46 = load %struct.CClosure**, %struct.CClosure*** %45, align 8, !dbg !815, !tbaa !604
  %47 = load %struct.CClosure*, %struct.CClosure** %46, align 8, !dbg !815, !tbaa !514
  %48 = sub nsw i32 -10002, %1, !dbg !817
  %49 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 4, !dbg !818
  %50 = load i8, i8* %49, align 1, !dbg !818, !tbaa !514
  %51 = zext i8 %50 to i32, !dbg !819
  %52 = icmp sgt i32 %48, %51, !dbg !820
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !821
  br i1 %52, label %57, label %53, !dbg !821

; <label>:53:                                     ; preds = %41
  %54 = add nsw i32 %48, -1, !dbg !822
  %55 = sext i32 %54 to i64, !dbg !823
  %56 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 8, i64 %55, !dbg !823
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !821
  br label %57, !dbg !821

; <label>:57:                                     ; preds = %41, %53, %4, %16, %22, %26, %39
  %58 = phi %struct.lua_TValue* [ %13, %4 ], [ %20, %16 ], [ %40, %39 ], [ %33, %26 ], [ %25, %22 ], [ %56, %53 ], [ @luaO_nilobject_, %41 ], !dbg !824
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !825
  %59 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !826
  %60 = load %struct.lua_TValue*, %struct.lua_TValue** %59, align 8, !dbg !826, !tbaa !373
  %61 = bitcast %struct.lua_TValue* %58 to i64*, !dbg !826
  %62 = bitcast %struct.lua_TValue* %60 to i64*, !dbg !826
  %63 = load i64, i64* %61, align 8, !dbg !826
  store i64 %63, i64* %62, align 8, !dbg !826
  %64 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i64 0, i32 1, !dbg !826
  %65 = load i32, i32* %64, align 8, !dbg !826, !tbaa !382
  %66 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %60, i64 0, i32 1, !dbg !826
  store i32 %65, i32* %66, align 8, !dbg !826, !tbaa !382
  %67 = load %struct.lua_TValue*, %struct.lua_TValue** %59, align 8, !dbg !827, !tbaa !373
  %68 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %67, i64 1, !dbg !827
  store %struct.lua_TValue* %68, %struct.lua_TValue** %59, align 8, !dbg !827, !tbaa !373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !829
  ret void, !dbg !829
}

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_type(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !830 {
  %3 = icmp sgt i32 %1, 0, !dbg !840
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !841
  br i1 %3, label %4, label %14, !dbg !841

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !842
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8, !dbg !842, !tbaa !401
  %7 = add nsw i32 %1, -1, !dbg !843
  %8 = sext i32 %7 to i64, !dbg !844
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 %8, !dbg !844
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !846
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !846, !tbaa !373
  %12 = icmp ult %struct.lua_TValue* %9, %11, !dbg !847
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !848
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !849
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br i1 %12, label %59, label %13

; <label>:13:                                     ; preds = %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !850
  br label %65, !dbg !852

; <label>:14:                                     ; preds = %2
  %15 = icmp sgt i32 %1, -10000, !dbg !853
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !854
  br i1 %15, label %16, label %21, !dbg !854

; <label>:16:                                     ; preds = %14
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !855
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %17, align 8, !dbg !855, !tbaa !373
  %19 = sext i32 %1 to i64, !dbg !856
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 %19, !dbg !856
  br label %57, !dbg !857

; <label>:21:                                     ; preds = %14
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !858
  switch i32 %1, label %41 [
    i32 -10000, label %22
    i32 -10001, label %26
    i32 -10002, label %39
  ], !dbg !858

; <label>:22:                                     ; preds = %21
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !859
  %24 = load %struct.global_State*, %struct.global_State** %23, align 8, !dbg !859, !tbaa !486
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %24, i64 0, i32 20, !dbg !859
  br label %57, !dbg !860

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !861
  %28 = load %struct.CallInfo*, %struct.CallInfo** %27, align 8, !dbg !861, !tbaa !419
  %29 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %28, i64 0, i32 1, !dbg !861
  %30 = bitcast %struct.lua_TValue** %29 to %struct.CClosure***, !dbg !861
  %31 = load %struct.CClosure**, %struct.CClosure*** %30, align 8, !dbg !861, !tbaa !604
  %32 = load %struct.CClosure*, %struct.CClosure** %31, align 8, !dbg !861, !tbaa !514
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !863
  %34 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %32, i64 0, i32 6, !dbg !863
  %35 = bitcast %struct.Table** %34 to i64*, !dbg !863
  %36 = load i64, i64* %35, align 8, !dbg !863, !tbaa !514
  %37 = bitcast %struct.lua_TValue* %33 to i64*, !dbg !863
  store i64 %36, i64* %37, align 8, !dbg !863, !tbaa !514
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !863
  store i32 5, i32* %38, align 8, !dbg !863, !tbaa !382
  br label %57

; <label>:39:                                     ; preds = %21
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !864
  br label %57, !dbg !865

; <label>:41:                                     ; preds = %21
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !866
  %43 = load %struct.CallInfo*, %struct.CallInfo** %42, align 8, !dbg !866, !tbaa !419
  %44 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %43, i64 0, i32 1, !dbg !866
  %45 = bitcast %struct.lua_TValue** %44 to %struct.CClosure***, !dbg !866
  %46 = load %struct.CClosure**, %struct.CClosure*** %45, align 8, !dbg !866, !tbaa !604
  %47 = load %struct.CClosure*, %struct.CClosure** %46, align 8, !dbg !866, !tbaa !514
  %48 = sub nsw i32 -10002, %1, !dbg !868
  %49 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 4, !dbg !869
  %50 = load i8, i8* %49, align 1, !dbg !869, !tbaa !514
  %51 = zext i8 %50 to i32, !dbg !870
  %52 = icmp sgt i32 %48, %51, !dbg !871
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !872
  br i1 %52, label %57, label %53, !dbg !872

; <label>:53:                                     ; preds = %41
  %54 = add nsw i32 %48, -1, !dbg !873
  %55 = sext i32 %54 to i64, !dbg !874
  %56 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 8, i64 %55, !dbg !874
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !872
  br label %57, !dbg !872

; <label>:57:                                     ; preds = %41, %53, %39, %26, %22, %16
  %58 = phi %struct.lua_TValue* [ %25, %22 ], [ %33, %26 ], [ %40, %39 ], [ %20, %16 ], [ %56, %53 ], [ @luaO_nilobject_, %41 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %59, !dbg !850

; <label>:59:                                     ; preds = %57, %4
  %60 = phi %struct.lua_TValue* [ %9, %4 ], [ %58, %57 ], !dbg !875
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !850
  %61 = icmp eq %struct.lua_TValue* %60, @luaO_nilobject_, !dbg !876
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !852
  br i1 %61, label %67, label %62, !dbg !852

; <label>:62:                                     ; preds = %59
  %63 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %60, i64 0, i32 1, !dbg !877
  %64 = load i32, i32* %63, align 8, !dbg !877, !tbaa !382
  br label %65, !dbg !852

; <label>:65:                                     ; preds = %62, %13
  %66 = phi i32 [ -1, %13 ], [ %64, %62 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !852
  br label %67, !dbg !878

; <label>:67:                                     ; preds = %65, %59
  %68 = phi i32 [ -1, %59 ], [ %66, %65 ], !dbg !852
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !878
  ret i32 %68, !dbg !878
}

; Function Attrs: noredzone nounwind
define dso_local i8* @lua_typename(%struct.lua_State* nocapture readnone, i32) local_unnamed_addr #0 !dbg !879 {
  %3 = icmp eq i32 %1, -1, !dbg !887
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !888
  br i1 %3, label %8, label %4, !dbg !888

; <label>:4:                                      ; preds = %2
  %5 = sext i32 %1 to i64, !dbg !889
  %6 = getelementptr inbounds [0 x i8*], [0 x i8*]* @luaT_typenames, i64 0, i64 %5, !dbg !889
  %7 = load i8*, i8** %6, align 8, !dbg !889, !tbaa !890
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !888
  br label %8, !dbg !888

; <label>:8:                                      ; preds = %2, %4
  %9 = phi i8* [ %7, %4 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %2 ], !dbg !888
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !891
  ret i8* %9, !dbg !891
}

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_iscfunction(%struct.lua_State* nocapture, i32) local_unnamed_addr #0 !dbg !892 {
  %3 = icmp sgt i32 %1, 0, !dbg !902
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !903
  br i1 %3, label %4, label %14, !dbg !903

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !904
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8, !dbg !904, !tbaa !401
  %7 = add nsw i32 %1, -1, !dbg !905
  %8 = sext i32 %7 to i64, !dbg !906
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 %8, !dbg !906
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !908
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !908, !tbaa !373
  %12 = icmp ult %struct.lua_TValue* %9, %11, !dbg !909
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !910
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !911
  %13 = select i1 %12, %struct.lua_TValue* %9, %struct.lua_TValue* @luaO_nilobject_, !dbg !912
  br label %57

; <label>:14:                                     ; preds = %2
  %15 = icmp sgt i32 %1, -10000, !dbg !913
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !914
  br i1 %15, label %16, label %21, !dbg !914

; <label>:16:                                     ; preds = %14
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !915
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %17, align 8, !dbg !915, !tbaa !373
  %19 = sext i32 %1 to i64, !dbg !916
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 %19, !dbg !916
  br label %57, !dbg !917

; <label>:21:                                     ; preds = %14
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !918
  switch i32 %1, label %41 [
    i32 -10000, label %22
    i32 -10001, label %26
    i32 -10002, label %39
  ], !dbg !918

; <label>:22:                                     ; preds = %21
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !919
  %24 = load %struct.global_State*, %struct.global_State** %23, align 8, !dbg !919, !tbaa !486
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %24, i64 0, i32 20, !dbg !919
  br label %57, !dbg !920

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !921
  %28 = load %struct.CallInfo*, %struct.CallInfo** %27, align 8, !dbg !921, !tbaa !419
  %29 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %28, i64 0, i32 1, !dbg !921
  %30 = bitcast %struct.lua_TValue** %29 to %struct.CClosure***, !dbg !921
  %31 = load %struct.CClosure**, %struct.CClosure*** %30, align 8, !dbg !921, !tbaa !604
  %32 = load %struct.CClosure*, %struct.CClosure** %31, align 8, !dbg !921, !tbaa !514
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !923
  %34 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %32, i64 0, i32 6, !dbg !923
  %35 = bitcast %struct.Table** %34 to i64*, !dbg !923
  %36 = load i64, i64* %35, align 8, !dbg !923, !tbaa !514
  %37 = bitcast %struct.lua_TValue* %33 to i64*, !dbg !923
  store i64 %36, i64* %37, align 8, !dbg !923, !tbaa !514
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !923
  store i32 5, i32* %38, align 8, !dbg !923, !tbaa !382
  br label %57

; <label>:39:                                     ; preds = %21
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !924
  br label %57, !dbg !925

; <label>:41:                                     ; preds = %21
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !926
  %43 = load %struct.CallInfo*, %struct.CallInfo** %42, align 8, !dbg !926, !tbaa !419
  %44 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %43, i64 0, i32 1, !dbg !926
  %45 = bitcast %struct.lua_TValue** %44 to %struct.CClosure***, !dbg !926
  %46 = load %struct.CClosure**, %struct.CClosure*** %45, align 8, !dbg !926, !tbaa !604
  %47 = load %struct.CClosure*, %struct.CClosure** %46, align 8, !dbg !926, !tbaa !514
  %48 = sub nsw i32 -10002, %1, !dbg !928
  %49 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 4, !dbg !929
  %50 = load i8, i8* %49, align 1, !dbg !929, !tbaa !514
  %51 = zext i8 %50 to i32, !dbg !930
  %52 = icmp sgt i32 %48, %51, !dbg !931
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !932
  br i1 %52, label %57, label %53, !dbg !932

; <label>:53:                                     ; preds = %41
  %54 = add nsw i32 %48, -1, !dbg !933
  %55 = sext i32 %54 to i64, !dbg !934
  %56 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 8, i64 %55, !dbg !934
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !932
  br label %57, !dbg !932

; <label>:57:                                     ; preds = %41, %53, %4, %16, %22, %26, %39
  %58 = phi %struct.lua_TValue* [ %13, %4 ], [ %20, %16 ], [ %40, %39 ], [ %33, %26 ], [ %25, %22 ], [ %56, %53 ], [ @luaO_nilobject_, %41 ], !dbg !935
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !936
  %59 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i64 0, i32 1, !dbg !938
  %60 = load i32, i32* %59, align 8, !dbg !938, !tbaa !382
  %61 = icmp eq i32 %60, 6, !dbg !938
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !938
  br i1 %61, label %62, label %69, !dbg !938

; <label>:62:                                     ; preds = %57
  %63 = bitcast %struct.lua_TValue* %58 to %struct.CClosure**, !dbg !938
  %64 = load %struct.CClosure*, %struct.CClosure** %63, align 8, !dbg !938, !tbaa !514
  %65 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %64, i64 0, i32 3, !dbg !938
  %66 = load i8, i8* %65, align 2, !dbg !938, !tbaa !514
  %67 = icmp ne i8 %66, 0, !dbg !938
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %68 = zext i1 %67 to i32
  br label %69

; <label>:69:                                     ; preds = %62, %57
  %70 = phi i32 [ 0, %57 ], [ %68, %62 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !939
  ret i32 %70, !dbg !939
}

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_isnumber(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !940 {
  %3 = alloca %struct.lua_TValue, align 8
  %4 = bitcast %struct.lua_TValue* %3 to i8*, !dbg !948
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #4, !dbg !948
  %5 = icmp sgt i32 %1, 0, !dbg !952
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !953
  br i1 %5, label %6, label %16, !dbg !953

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !954
  %8 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8, !dbg !954, !tbaa !401
  %9 = add nsw i32 %1, -1, !dbg !955
  %10 = sext i32 %9 to i64, !dbg !956
  %11 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %8, i64 %10, !dbg !956
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !958
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %12, align 8, !dbg !958, !tbaa !373
  %14 = icmp ult %struct.lua_TValue* %11, %13, !dbg !959
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !960
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !961
  %15 = select i1 %14, %struct.lua_TValue* %11, %struct.lua_TValue* @luaO_nilobject_, !dbg !962
  br label %59

; <label>:16:                                     ; preds = %2
  %17 = icmp sgt i32 %1, -10000, !dbg !963
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !964
  br i1 %17, label %18, label %23, !dbg !964

; <label>:18:                                     ; preds = %16
  %19 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !965
  %20 = load %struct.lua_TValue*, %struct.lua_TValue** %19, align 8, !dbg !965, !tbaa !373
  %21 = sext i32 %1 to i64, !dbg !966
  %22 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %20, i64 %21, !dbg !966
  br label %59, !dbg !967

; <label>:23:                                     ; preds = %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !968
  switch i32 %1, label %43 [
    i32 -10000, label %24
    i32 -10001, label %28
    i32 -10002, label %41
  ], !dbg !968

; <label>:24:                                     ; preds = %23
  %25 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !969
  %26 = load %struct.global_State*, %struct.global_State** %25, align 8, !dbg !969, !tbaa !486
  %27 = getelementptr inbounds %struct.global_State, %struct.global_State* %26, i64 0, i32 20, !dbg !969
  br label %59, !dbg !970

; <label>:28:                                     ; preds = %23
  %29 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !971
  %30 = load %struct.CallInfo*, %struct.CallInfo** %29, align 8, !dbg !971, !tbaa !419
  %31 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %30, i64 0, i32 1, !dbg !971
  %32 = bitcast %struct.lua_TValue** %31 to %struct.CClosure***, !dbg !971
  %33 = load %struct.CClosure**, %struct.CClosure*** %32, align 8, !dbg !971, !tbaa !604
  %34 = load %struct.CClosure*, %struct.CClosure** %33, align 8, !dbg !971, !tbaa !514
  %35 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !973
  %36 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %34, i64 0, i32 6, !dbg !973
  %37 = bitcast %struct.Table** %36 to i64*, !dbg !973
  %38 = load i64, i64* %37, align 8, !dbg !973, !tbaa !514
  %39 = bitcast %struct.lua_TValue* %35 to i64*, !dbg !973
  store i64 %38, i64* %39, align 8, !dbg !973, !tbaa !514
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !973
  store i32 5, i32* %40, align 8, !dbg !973, !tbaa !382
  br label %59

; <label>:41:                                     ; preds = %23
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !974
  br label %59, !dbg !975

; <label>:43:                                     ; preds = %23
  %44 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !976
  %45 = load %struct.CallInfo*, %struct.CallInfo** %44, align 8, !dbg !976, !tbaa !419
  %46 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %45, i64 0, i32 1, !dbg !976
  %47 = bitcast %struct.lua_TValue** %46 to %struct.CClosure***, !dbg !976
  %48 = load %struct.CClosure**, %struct.CClosure*** %47, align 8, !dbg !976, !tbaa !604
  %49 = load %struct.CClosure*, %struct.CClosure** %48, align 8, !dbg !976, !tbaa !514
  %50 = sub nsw i32 -10002, %1, !dbg !978
  %51 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %49, i64 0, i32 4, !dbg !979
  %52 = load i8, i8* %51, align 1, !dbg !979, !tbaa !514
  %53 = zext i8 %52 to i32, !dbg !980
  %54 = icmp sgt i32 %50, %53, !dbg !981
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !982
  br i1 %54, label %59, label %55, !dbg !982

; <label>:55:                                     ; preds = %43
  %56 = add nsw i32 %50, -1, !dbg !983
  %57 = sext i32 %56 to i64, !dbg !984
  %58 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %49, i64 0, i32 8, i64 %57, !dbg !984
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !982
  br label %59, !dbg !982

; <label>:59:                                     ; preds = %43, %55, %6, %18, %24, %28, %41
  %60 = phi %struct.lua_TValue* [ %15, %6 ], [ %22, %18 ], [ %42, %41 ], [ %35, %28 ], [ %27, %24 ], [ %58, %55 ], [ @luaO_nilobject_, %43 ], !dbg !985
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !986
  %61 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %60, i64 0, i32 1, !dbg !988
  %62 = load i32, i32* %61, align 8, !dbg !988, !tbaa !382
  %63 = icmp eq i32 %62, 3, !dbg !988
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !988
  br i1 %63, label %68, label %64, !dbg !988

; <label>:64:                                     ; preds = %59
  %65 = call %struct.lua_TValue* @luaV_tonumber(%struct.lua_TValue* %60, %struct.lua_TValue* nonnull %3) #5, !dbg !988
  %66 = icmp ne %struct.lua_TValue* %65, null, !dbg !988
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !988
  %67 = zext i1 %66 to i32, !dbg !988
  br label %68, !dbg !988

; <label>:68:                                     ; preds = %64, %59
  %69 = phi i32 [ 1, %59 ], [ %67, %64 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #4, !dbg !990
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !991
  ret i32 %69, !dbg !991
}

; Function Attrs: noredzone
declare hidden %struct.lua_TValue* @luaV_tonumber(%struct.lua_TValue*, %struct.lua_TValue*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_isstring(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !992 {
  %3 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %1) #6, !dbg !999
  %4 = add i32 %3, -3, !dbg !1001
  %5 = icmp ult i32 %4, 2, !dbg !1001
  %6 = zext i1 %5 to i32, !dbg !1001
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1002
  ret i32 %6, !dbg !1002
}

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_isuserdata(%struct.lua_State* nocapture, i32) local_unnamed_addr #0 !dbg !1003 {
  %3 = icmp sgt i32 %1, 0, !dbg !1013
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1014
  br i1 %3, label %4, label %14, !dbg !1014

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !1015
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8, !dbg !1015, !tbaa !401
  %7 = add nsw i32 %1, -1, !dbg !1016
  %8 = sext i32 %7 to i64, !dbg !1017
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 %8, !dbg !1017
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1019
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !1019, !tbaa !373
  %12 = icmp ult %struct.lua_TValue* %9, %11, !dbg !1020
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1021
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1022
  %13 = select i1 %12, %struct.lua_TValue* %9, %struct.lua_TValue* @luaO_nilobject_, !dbg !1023
  br label %57

; <label>:14:                                     ; preds = %2
  %15 = icmp sgt i32 %1, -10000, !dbg !1024
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1025
  br i1 %15, label %16, label %21, !dbg !1025

; <label>:16:                                     ; preds = %14
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1026
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %17, align 8, !dbg !1026, !tbaa !373
  %19 = sext i32 %1 to i64, !dbg !1027
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 %19, !dbg !1027
  br label %57, !dbg !1028

; <label>:21:                                     ; preds = %14
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1029
  switch i32 %1, label %41 [
    i32 -10000, label %22
    i32 -10001, label %26
    i32 -10002, label %39
  ], !dbg !1029

; <label>:22:                                     ; preds = %21
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1030
  %24 = load %struct.global_State*, %struct.global_State** %23, align 8, !dbg !1030, !tbaa !486
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %24, i64 0, i32 20, !dbg !1030
  br label %57, !dbg !1031

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1032
  %28 = load %struct.CallInfo*, %struct.CallInfo** %27, align 8, !dbg !1032, !tbaa !419
  %29 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %28, i64 0, i32 1, !dbg !1032
  %30 = bitcast %struct.lua_TValue** %29 to %struct.CClosure***, !dbg !1032
  %31 = load %struct.CClosure**, %struct.CClosure*** %30, align 8, !dbg !1032, !tbaa !604
  %32 = load %struct.CClosure*, %struct.CClosure** %31, align 8, !dbg !1032, !tbaa !514
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !1034
  %34 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %32, i64 0, i32 6, !dbg !1034
  %35 = bitcast %struct.Table** %34 to i64*, !dbg !1034
  %36 = load i64, i64* %35, align 8, !dbg !1034, !tbaa !514
  %37 = bitcast %struct.lua_TValue* %33 to i64*, !dbg !1034
  store i64 %36, i64* %37, align 8, !dbg !1034, !tbaa !514
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !1034
  store i32 5, i32* %38, align 8, !dbg !1034, !tbaa !382
  br label %57

; <label>:39:                                     ; preds = %21
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !1035
  br label %57, !dbg !1036

; <label>:41:                                     ; preds = %21
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1037
  %43 = load %struct.CallInfo*, %struct.CallInfo** %42, align 8, !dbg !1037, !tbaa !419
  %44 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %43, i64 0, i32 1, !dbg !1037
  %45 = bitcast %struct.lua_TValue** %44 to %struct.CClosure***, !dbg !1037
  %46 = load %struct.CClosure**, %struct.CClosure*** %45, align 8, !dbg !1037, !tbaa !604
  %47 = load %struct.CClosure*, %struct.CClosure** %46, align 8, !dbg !1037, !tbaa !514
  %48 = sub nsw i32 -10002, %1, !dbg !1039
  %49 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 4, !dbg !1040
  %50 = load i8, i8* %49, align 1, !dbg !1040, !tbaa !514
  %51 = zext i8 %50 to i32, !dbg !1041
  %52 = icmp sgt i32 %48, %51, !dbg !1042
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1043
  br i1 %52, label %57, label %53, !dbg !1043

; <label>:53:                                     ; preds = %41
  %54 = add nsw i32 %48, -1, !dbg !1044
  %55 = sext i32 %54 to i64, !dbg !1045
  %56 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 8, i64 %55, !dbg !1045
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1043
  br label %57, !dbg !1043

; <label>:57:                                     ; preds = %41, %53, %4, %16, %22, %26, %39
  %58 = phi %struct.lua_TValue* [ %13, %4 ], [ %20, %16 ], [ %40, %39 ], [ %33, %26 ], [ %25, %22 ], [ %56, %53 ], [ @luaO_nilobject_, %41 ], !dbg !1046
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1047
  %59 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i64 0, i32 1, !dbg !1049
  %60 = load i32, i32* %59, align 8, !dbg !1049, !tbaa !382
  %61 = icmp eq i32 %60, 7, !dbg !1049
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1050
  br i1 %61, label %65, label %62, !dbg !1050

; <label>:62:                                     ; preds = %57
  %63 = icmp eq i32 %60, 2, !dbg !1051
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1050
  %64 = zext i1 %63 to i32, !dbg !1050
  br label %65, !dbg !1050

; <label>:65:                                     ; preds = %62, %57
  %66 = phi i32 [ 1, %57 ], [ %64, %62 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1052
  ret i32 %66, !dbg !1052
}

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_rawequal(%struct.lua_State*, i32, i32) local_unnamed_addr #0 !dbg !1053 {
  %4 = icmp sgt i32 %1, 0, !dbg !1068
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1069
  br i1 %4, label %5, label %15, !dbg !1069

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !1070
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8, !dbg !1070, !tbaa !401
  %8 = add nsw i32 %1, -1, !dbg !1071
  %9 = sext i32 %8 to i64, !dbg !1072
  %10 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %7, i64 %9, !dbg !1072
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1074
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %11, align 8, !dbg !1074, !tbaa !373
  %13 = icmp ult %struct.lua_TValue* %10, %12, !dbg !1075
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1076
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1077
  %14 = select i1 %13, %struct.lua_TValue* %10, %struct.lua_TValue* @luaO_nilobject_, !dbg !1078
  br label %58

; <label>:15:                                     ; preds = %3
  %16 = icmp sgt i32 %1, -10000, !dbg !1079
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1080
  br i1 %16, label %17, label %22, !dbg !1080

; <label>:17:                                     ; preds = %15
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1081
  %19 = load %struct.lua_TValue*, %struct.lua_TValue** %18, align 8, !dbg !1081, !tbaa !373
  %20 = sext i32 %1 to i64, !dbg !1082
  %21 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %19, i64 %20, !dbg !1082
  br label %58, !dbg !1083

; <label>:22:                                     ; preds = %15
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1084
  switch i32 %1, label %42 [
    i32 -10000, label %23
    i32 -10001, label %27
    i32 -10002, label %40
  ], !dbg !1084

; <label>:23:                                     ; preds = %22
  %24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1085
  %25 = load %struct.global_State*, %struct.global_State** %24, align 8, !dbg !1085, !tbaa !486
  %26 = getelementptr inbounds %struct.global_State, %struct.global_State* %25, i64 0, i32 20, !dbg !1085
  br label %58, !dbg !1086

; <label>:27:                                     ; preds = %22
  %28 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1087
  %29 = load %struct.CallInfo*, %struct.CallInfo** %28, align 8, !dbg !1087, !tbaa !419
  %30 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %29, i64 0, i32 1, !dbg !1087
  %31 = bitcast %struct.lua_TValue** %30 to %struct.CClosure***, !dbg !1087
  %32 = load %struct.CClosure**, %struct.CClosure*** %31, align 8, !dbg !1087, !tbaa !604
  %33 = load %struct.CClosure*, %struct.CClosure** %32, align 8, !dbg !1087, !tbaa !514
  %34 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !1089
  %35 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %33, i64 0, i32 6, !dbg !1089
  %36 = bitcast %struct.Table** %35 to i64*, !dbg !1089
  %37 = load i64, i64* %36, align 8, !dbg !1089, !tbaa !514
  %38 = bitcast %struct.lua_TValue* %34 to i64*, !dbg !1089
  store i64 %37, i64* %38, align 8, !dbg !1089, !tbaa !514
  %39 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !1089
  store i32 5, i32* %39, align 8, !dbg !1089, !tbaa !382
  br label %58

; <label>:40:                                     ; preds = %22
  %41 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !1090
  br label %58, !dbg !1091

; <label>:42:                                     ; preds = %22
  %43 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1092
  %44 = load %struct.CallInfo*, %struct.CallInfo** %43, align 8, !dbg !1092, !tbaa !419
  %45 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %44, i64 0, i32 1, !dbg !1092
  %46 = bitcast %struct.lua_TValue** %45 to %struct.CClosure***, !dbg !1092
  %47 = load %struct.CClosure**, %struct.CClosure*** %46, align 8, !dbg !1092, !tbaa !604
  %48 = load %struct.CClosure*, %struct.CClosure** %47, align 8, !dbg !1092, !tbaa !514
  %49 = sub nsw i32 -10002, %1, !dbg !1094
  %50 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %48, i64 0, i32 4, !dbg !1095
  %51 = load i8, i8* %50, align 1, !dbg !1095, !tbaa !514
  %52 = zext i8 %51 to i32, !dbg !1096
  %53 = icmp sgt i32 %49, %52, !dbg !1097
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1098
  br i1 %53, label %58, label %54, !dbg !1098

; <label>:54:                                     ; preds = %42
  %55 = add nsw i32 %49, -1, !dbg !1099
  %56 = sext i32 %55 to i64, !dbg !1100
  %57 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %48, i64 0, i32 8, i64 %56, !dbg !1100
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1098
  br label %58, !dbg !1098

; <label>:58:                                     ; preds = %42, %54, %5, %17, %23, %27, %40
  %59 = phi %struct.lua_TValue* [ %14, %5 ], [ %21, %17 ], [ %41, %40 ], [ %34, %27 ], [ %26, %23 ], [ %57, %54 ], [ @luaO_nilobject_, %42 ], !dbg !1101
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1102
  %60 = icmp sgt i32 %2, 0, !dbg !1107
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1108
  br i1 %60, label %61, label %71, !dbg !1108

; <label>:61:                                     ; preds = %58
  %62 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !1109
  %63 = load %struct.lua_TValue*, %struct.lua_TValue** %62, align 8, !dbg !1109, !tbaa !401
  %64 = add nsw i32 %2, -1, !dbg !1110
  %65 = sext i32 %64 to i64, !dbg !1111
  %66 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %63, i64 %65, !dbg !1111
  %67 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1113
  %68 = load %struct.lua_TValue*, %struct.lua_TValue** %67, align 8, !dbg !1113, !tbaa !373
  %69 = icmp ult %struct.lua_TValue* %66, %68, !dbg !1114
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1115
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1116
  %70 = select i1 %69, %struct.lua_TValue* %66, %struct.lua_TValue* @luaO_nilobject_, !dbg !1117
  br label %114

; <label>:71:                                     ; preds = %58
  %72 = icmp sgt i32 %2, -10000, !dbg !1118
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1119
  br i1 %72, label %73, label %78, !dbg !1119

; <label>:73:                                     ; preds = %71
  %74 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1120
  %75 = load %struct.lua_TValue*, %struct.lua_TValue** %74, align 8, !dbg !1120, !tbaa !373
  %76 = sext i32 %2 to i64, !dbg !1121
  %77 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %75, i64 %76, !dbg !1121
  br label %114, !dbg !1122

; <label>:78:                                     ; preds = %71
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1123
  switch i32 %2, label %98 [
    i32 -10000, label %79
    i32 -10001, label %83
    i32 -10002, label %96
  ], !dbg !1123

; <label>:79:                                     ; preds = %78
  %80 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1124
  %81 = load %struct.global_State*, %struct.global_State** %80, align 8, !dbg !1124, !tbaa !486
  %82 = getelementptr inbounds %struct.global_State, %struct.global_State* %81, i64 0, i32 20, !dbg !1124
  br label %114, !dbg !1125

; <label>:83:                                     ; preds = %78
  %84 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1126
  %85 = load %struct.CallInfo*, %struct.CallInfo** %84, align 8, !dbg !1126, !tbaa !419
  %86 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %85, i64 0, i32 1, !dbg !1126
  %87 = bitcast %struct.lua_TValue** %86 to %struct.CClosure***, !dbg !1126
  %88 = load %struct.CClosure**, %struct.CClosure*** %87, align 8, !dbg !1126, !tbaa !604
  %89 = load %struct.CClosure*, %struct.CClosure** %88, align 8, !dbg !1126, !tbaa !514
  %90 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !1128
  %91 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %89, i64 0, i32 6, !dbg !1128
  %92 = bitcast %struct.Table** %91 to i64*, !dbg !1128
  %93 = load i64, i64* %92, align 8, !dbg !1128, !tbaa !514
  %94 = bitcast %struct.lua_TValue* %90 to i64*, !dbg !1128
  store i64 %93, i64* %94, align 8, !dbg !1128, !tbaa !514
  %95 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !1128
  store i32 5, i32* %95, align 8, !dbg !1128, !tbaa !382
  br label %114

; <label>:96:                                     ; preds = %78
  %97 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !1129
  br label %114, !dbg !1130

; <label>:98:                                     ; preds = %78
  %99 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1131
  %100 = load %struct.CallInfo*, %struct.CallInfo** %99, align 8, !dbg !1131, !tbaa !419
  %101 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %100, i64 0, i32 1, !dbg !1131
  %102 = bitcast %struct.lua_TValue** %101 to %struct.CClosure***, !dbg !1131
  %103 = load %struct.CClosure**, %struct.CClosure*** %102, align 8, !dbg !1131, !tbaa !604
  %104 = load %struct.CClosure*, %struct.CClosure** %103, align 8, !dbg !1131, !tbaa !514
  %105 = sub nsw i32 -10002, %2, !dbg !1133
  %106 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %104, i64 0, i32 4, !dbg !1134
  %107 = load i8, i8* %106, align 1, !dbg !1134, !tbaa !514
  %108 = zext i8 %107 to i32, !dbg !1135
  %109 = icmp sgt i32 %105, %108, !dbg !1136
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1137
  br i1 %109, label %114, label %110, !dbg !1137

; <label>:110:                                    ; preds = %98
  %111 = add nsw i32 %105, -1, !dbg !1138
  %112 = sext i32 %111 to i64, !dbg !1139
  %113 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %104, i64 0, i32 8, i64 %112, !dbg !1139
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1137
  br label %114, !dbg !1137

; <label>:114:                                    ; preds = %98, %110, %61, %73, %79, %83, %96
  %115 = phi %struct.lua_TValue* [ %70, %61 ], [ %77, %73 ], [ %97, %96 ], [ %90, %83 ], [ %82, %79 ], [ %113, %110 ], [ @luaO_nilobject_, %98 ], !dbg !1140
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1141
  %116 = icmp eq %struct.lua_TValue* %59, @luaO_nilobject_, !dbg !1143
  %117 = icmp eq %struct.lua_TValue* %115, @luaO_nilobject_, !dbg !1144
  %118 = or i1 %116, %117, !dbg !1145
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1145
  br i1 %118, label %121, label %119, !dbg !1145

; <label>:119:                                    ; preds = %114
  %120 = tail call i32 @luaO_rawequalObj(%struct.lua_TValue* %59, %struct.lua_TValue* %115) #5, !dbg !1146
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1147
  br label %121, !dbg !1147

; <label>:121:                                    ; preds = %114, %119
  %122 = phi i32 [ %120, %119 ], [ 0, %114 ], !dbg !1147
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1148
  ret i32 %122, !dbg !1148
}

; Function Attrs: noredzone
declare hidden i32 @luaO_rawequalObj(%struct.lua_TValue*, %struct.lua_TValue*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_equal(%struct.lua_State*, i32, i32) local_unnamed_addr #0 !dbg !1149 {
  %4 = icmp sgt i32 %1, 0, !dbg !1163
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1164
  br i1 %4, label %5, label %15, !dbg !1164

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !1165
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8, !dbg !1165, !tbaa !401
  %8 = add nsw i32 %1, -1, !dbg !1166
  %9 = sext i32 %8 to i64, !dbg !1167
  %10 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %7, i64 %9, !dbg !1167
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1169
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %11, align 8, !dbg !1169, !tbaa !373
  %13 = icmp ult %struct.lua_TValue* %10, %12, !dbg !1170
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1171
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1172
  %14 = select i1 %13, %struct.lua_TValue* %10, %struct.lua_TValue* @luaO_nilobject_, !dbg !1173
  br label %58

; <label>:15:                                     ; preds = %3
  %16 = icmp sgt i32 %1, -10000, !dbg !1174
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1175
  br i1 %16, label %17, label %22, !dbg !1175

; <label>:17:                                     ; preds = %15
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1176
  %19 = load %struct.lua_TValue*, %struct.lua_TValue** %18, align 8, !dbg !1176, !tbaa !373
  %20 = sext i32 %1 to i64, !dbg !1177
  %21 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %19, i64 %20, !dbg !1177
  br label %58, !dbg !1178

; <label>:22:                                     ; preds = %15
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1179
  switch i32 %1, label %42 [
    i32 -10000, label %23
    i32 -10001, label %27
    i32 -10002, label %40
  ], !dbg !1179

; <label>:23:                                     ; preds = %22
  %24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1180
  %25 = load %struct.global_State*, %struct.global_State** %24, align 8, !dbg !1180, !tbaa !486
  %26 = getelementptr inbounds %struct.global_State, %struct.global_State* %25, i64 0, i32 20, !dbg !1180
  br label %58, !dbg !1181

; <label>:27:                                     ; preds = %22
  %28 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1182
  %29 = load %struct.CallInfo*, %struct.CallInfo** %28, align 8, !dbg !1182, !tbaa !419
  %30 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %29, i64 0, i32 1, !dbg !1182
  %31 = bitcast %struct.lua_TValue** %30 to %struct.CClosure***, !dbg !1182
  %32 = load %struct.CClosure**, %struct.CClosure*** %31, align 8, !dbg !1182, !tbaa !604
  %33 = load %struct.CClosure*, %struct.CClosure** %32, align 8, !dbg !1182, !tbaa !514
  %34 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !1184
  %35 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %33, i64 0, i32 6, !dbg !1184
  %36 = bitcast %struct.Table** %35 to i64*, !dbg !1184
  %37 = load i64, i64* %36, align 8, !dbg !1184, !tbaa !514
  %38 = bitcast %struct.lua_TValue* %34 to i64*, !dbg !1184
  store i64 %37, i64* %38, align 8, !dbg !1184, !tbaa !514
  %39 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !1184
  store i32 5, i32* %39, align 8, !dbg !1184, !tbaa !382
  br label %58

; <label>:40:                                     ; preds = %22
  %41 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !1185
  br label %58, !dbg !1186

; <label>:42:                                     ; preds = %22
  %43 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1187
  %44 = load %struct.CallInfo*, %struct.CallInfo** %43, align 8, !dbg !1187, !tbaa !419
  %45 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %44, i64 0, i32 1, !dbg !1187
  %46 = bitcast %struct.lua_TValue** %45 to %struct.CClosure***, !dbg !1187
  %47 = load %struct.CClosure**, %struct.CClosure*** %46, align 8, !dbg !1187, !tbaa !604
  %48 = load %struct.CClosure*, %struct.CClosure** %47, align 8, !dbg !1187, !tbaa !514
  %49 = sub nsw i32 -10002, %1, !dbg !1189
  %50 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %48, i64 0, i32 4, !dbg !1190
  %51 = load i8, i8* %50, align 1, !dbg !1190, !tbaa !514
  %52 = zext i8 %51 to i32, !dbg !1191
  %53 = icmp sgt i32 %49, %52, !dbg !1192
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1193
  br i1 %53, label %58, label %54, !dbg !1193

; <label>:54:                                     ; preds = %42
  %55 = add nsw i32 %49, -1, !dbg !1194
  %56 = sext i32 %55 to i64, !dbg !1195
  %57 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %48, i64 0, i32 8, i64 %56, !dbg !1195
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1193
  br label %58, !dbg !1193

; <label>:58:                                     ; preds = %42, %54, %5, %17, %23, %27, %40
  %59 = phi %struct.lua_TValue* [ %14, %5 ], [ %21, %17 ], [ %41, %40 ], [ %34, %27 ], [ %26, %23 ], [ %57, %54 ], [ @luaO_nilobject_, %42 ], !dbg !1196
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1197
  %60 = icmp sgt i32 %2, 0, !dbg !1202
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1203
  br i1 %60, label %61, label %71, !dbg !1203

; <label>:61:                                     ; preds = %58
  %62 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !1204
  %63 = load %struct.lua_TValue*, %struct.lua_TValue** %62, align 8, !dbg !1204, !tbaa !401
  %64 = add nsw i32 %2, -1, !dbg !1205
  %65 = sext i32 %64 to i64, !dbg !1206
  %66 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %63, i64 %65, !dbg !1206
  %67 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1208
  %68 = load %struct.lua_TValue*, %struct.lua_TValue** %67, align 8, !dbg !1208, !tbaa !373
  %69 = icmp ult %struct.lua_TValue* %66, %68, !dbg !1209
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1210
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1211
  %70 = select i1 %69, %struct.lua_TValue* %66, %struct.lua_TValue* @luaO_nilobject_, !dbg !1212
  br label %114

; <label>:71:                                     ; preds = %58
  %72 = icmp sgt i32 %2, -10000, !dbg !1213
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1214
  br i1 %72, label %73, label %78, !dbg !1214

; <label>:73:                                     ; preds = %71
  %74 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1215
  %75 = load %struct.lua_TValue*, %struct.lua_TValue** %74, align 8, !dbg !1215, !tbaa !373
  %76 = sext i32 %2 to i64, !dbg !1216
  %77 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %75, i64 %76, !dbg !1216
  br label %114, !dbg !1217

; <label>:78:                                     ; preds = %71
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1218
  switch i32 %2, label %98 [
    i32 -10000, label %79
    i32 -10001, label %83
    i32 -10002, label %96
  ], !dbg !1218

; <label>:79:                                     ; preds = %78
  %80 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1219
  %81 = load %struct.global_State*, %struct.global_State** %80, align 8, !dbg !1219, !tbaa !486
  %82 = getelementptr inbounds %struct.global_State, %struct.global_State* %81, i64 0, i32 20, !dbg !1219
  br label %114, !dbg !1220

; <label>:83:                                     ; preds = %78
  %84 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1221
  %85 = load %struct.CallInfo*, %struct.CallInfo** %84, align 8, !dbg !1221, !tbaa !419
  %86 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %85, i64 0, i32 1, !dbg !1221
  %87 = bitcast %struct.lua_TValue** %86 to %struct.CClosure***, !dbg !1221
  %88 = load %struct.CClosure**, %struct.CClosure*** %87, align 8, !dbg !1221, !tbaa !604
  %89 = load %struct.CClosure*, %struct.CClosure** %88, align 8, !dbg !1221, !tbaa !514
  %90 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !1223
  %91 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %89, i64 0, i32 6, !dbg !1223
  %92 = bitcast %struct.Table** %91 to i64*, !dbg !1223
  %93 = load i64, i64* %92, align 8, !dbg !1223, !tbaa !514
  %94 = bitcast %struct.lua_TValue* %90 to i64*, !dbg !1223
  store i64 %93, i64* %94, align 8, !dbg !1223, !tbaa !514
  %95 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !1223
  store i32 5, i32* %95, align 8, !dbg !1223, !tbaa !382
  br label %114

; <label>:96:                                     ; preds = %78
  %97 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !1224
  br label %114, !dbg !1225

; <label>:98:                                     ; preds = %78
  %99 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1226
  %100 = load %struct.CallInfo*, %struct.CallInfo** %99, align 8, !dbg !1226, !tbaa !419
  %101 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %100, i64 0, i32 1, !dbg !1226
  %102 = bitcast %struct.lua_TValue** %101 to %struct.CClosure***, !dbg !1226
  %103 = load %struct.CClosure**, %struct.CClosure*** %102, align 8, !dbg !1226, !tbaa !604
  %104 = load %struct.CClosure*, %struct.CClosure** %103, align 8, !dbg !1226, !tbaa !514
  %105 = sub nsw i32 -10002, %2, !dbg !1228
  %106 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %104, i64 0, i32 4, !dbg !1229
  %107 = load i8, i8* %106, align 1, !dbg !1229, !tbaa !514
  %108 = zext i8 %107 to i32, !dbg !1230
  %109 = icmp sgt i32 %105, %108, !dbg !1231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1232
  br i1 %109, label %114, label %110, !dbg !1232

; <label>:110:                                    ; preds = %98
  %111 = add nsw i32 %105, -1, !dbg !1233
  %112 = sext i32 %111 to i64, !dbg !1234
  %113 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %104, i64 0, i32 8, i64 %112, !dbg !1234
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1232
  br label %114, !dbg !1232

; <label>:114:                                    ; preds = %98, %110, %61, %73, %79, %83, %96
  %115 = phi %struct.lua_TValue* [ %70, %61 ], [ %77, %73 ], [ %97, %96 ], [ %90, %83 ], [ %82, %79 ], [ %113, %110 ], [ @luaO_nilobject_, %98 ], !dbg !1235
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1236
  %116 = icmp eq %struct.lua_TValue* %59, @luaO_nilobject_, !dbg !1238
  %117 = icmp eq %struct.lua_TValue* %115, @luaO_nilobject_, !dbg !1239
  %118 = or i1 %116, %117, !dbg !1240
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1240
  br i1 %118, label %131, label %119, !dbg !1240

; <label>:119:                                    ; preds = %114
  %120 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %59, i64 0, i32 1, !dbg !1241
  %121 = load i32, i32* %120, align 8, !dbg !1241, !tbaa !382
  %122 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %115, i64 0, i32 1, !dbg !1241
  %123 = load i32, i32* %122, align 8, !dbg !1241, !tbaa !382
  %124 = icmp eq i32 %121, %123, !dbg !1241
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1241
  br i1 %124, label %125, label %129, !dbg !1241

; <label>:125:                                    ; preds = %119
  %126 = tail call i32 @luaV_equalval(%struct.lua_State* %0, %struct.lua_TValue* %59, %struct.lua_TValue* %115) #5, !dbg !1241
  %127 = icmp ne i32 %126, 0, !dbg !1241
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %128 = zext i1 %127 to i32
  br label %129

; <label>:129:                                    ; preds = %125, %119
  %130 = phi i32 [ 0, %119 ], [ %128, %125 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1242
  br label %131, !dbg !1242

; <label>:131:                                    ; preds = %114, %129
  %132 = phi i32 [ %130, %129 ], [ 0, %114 ], !dbg !1242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1244
  ret i32 %132, !dbg !1244
}

; Function Attrs: noredzone
declare hidden i32 @luaV_equalval(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_lessthan(%struct.lua_State*, i32, i32) local_unnamed_addr #0 !dbg !1245 {
  %4 = icmp sgt i32 %1, 0, !dbg !1259
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1260
  br i1 %4, label %5, label %15, !dbg !1260

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !1261
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8, !dbg !1261, !tbaa !401
  %8 = add nsw i32 %1, -1, !dbg !1262
  %9 = sext i32 %8 to i64, !dbg !1263
  %10 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %7, i64 %9, !dbg !1263
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1265
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %11, align 8, !dbg !1265, !tbaa !373
  %13 = icmp ult %struct.lua_TValue* %10, %12, !dbg !1266
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1267
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1268
  %14 = select i1 %13, %struct.lua_TValue* %10, %struct.lua_TValue* @luaO_nilobject_, !dbg !1269
  br label %58

; <label>:15:                                     ; preds = %3
  %16 = icmp sgt i32 %1, -10000, !dbg !1270
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1271
  br i1 %16, label %17, label %22, !dbg !1271

; <label>:17:                                     ; preds = %15
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1272
  %19 = load %struct.lua_TValue*, %struct.lua_TValue** %18, align 8, !dbg !1272, !tbaa !373
  %20 = sext i32 %1 to i64, !dbg !1273
  %21 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %19, i64 %20, !dbg !1273
  br label %58, !dbg !1274

; <label>:22:                                     ; preds = %15
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1275
  switch i32 %1, label %42 [
    i32 -10000, label %23
    i32 -10001, label %27
    i32 -10002, label %40
  ], !dbg !1275

; <label>:23:                                     ; preds = %22
  %24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1276
  %25 = load %struct.global_State*, %struct.global_State** %24, align 8, !dbg !1276, !tbaa !486
  %26 = getelementptr inbounds %struct.global_State, %struct.global_State* %25, i64 0, i32 20, !dbg !1276
  br label %58, !dbg !1277

; <label>:27:                                     ; preds = %22
  %28 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1278
  %29 = load %struct.CallInfo*, %struct.CallInfo** %28, align 8, !dbg !1278, !tbaa !419
  %30 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %29, i64 0, i32 1, !dbg !1278
  %31 = bitcast %struct.lua_TValue** %30 to %struct.CClosure***, !dbg !1278
  %32 = load %struct.CClosure**, %struct.CClosure*** %31, align 8, !dbg !1278, !tbaa !604
  %33 = load %struct.CClosure*, %struct.CClosure** %32, align 8, !dbg !1278, !tbaa !514
  %34 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !1280
  %35 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %33, i64 0, i32 6, !dbg !1280
  %36 = bitcast %struct.Table** %35 to i64*, !dbg !1280
  %37 = load i64, i64* %36, align 8, !dbg !1280, !tbaa !514
  %38 = bitcast %struct.lua_TValue* %34 to i64*, !dbg !1280
  store i64 %37, i64* %38, align 8, !dbg !1280, !tbaa !514
  %39 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !1280
  store i32 5, i32* %39, align 8, !dbg !1280, !tbaa !382
  br label %58

; <label>:40:                                     ; preds = %22
  %41 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !1281
  br label %58, !dbg !1282

; <label>:42:                                     ; preds = %22
  %43 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1283
  %44 = load %struct.CallInfo*, %struct.CallInfo** %43, align 8, !dbg !1283, !tbaa !419
  %45 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %44, i64 0, i32 1, !dbg !1283
  %46 = bitcast %struct.lua_TValue** %45 to %struct.CClosure***, !dbg !1283
  %47 = load %struct.CClosure**, %struct.CClosure*** %46, align 8, !dbg !1283, !tbaa !604
  %48 = load %struct.CClosure*, %struct.CClosure** %47, align 8, !dbg !1283, !tbaa !514
  %49 = sub nsw i32 -10002, %1, !dbg !1285
  %50 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %48, i64 0, i32 4, !dbg !1286
  %51 = load i8, i8* %50, align 1, !dbg !1286, !tbaa !514
  %52 = zext i8 %51 to i32, !dbg !1287
  %53 = icmp sgt i32 %49, %52, !dbg !1288
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1289
  br i1 %53, label %58, label %54, !dbg !1289

; <label>:54:                                     ; preds = %42
  %55 = add nsw i32 %49, -1, !dbg !1290
  %56 = sext i32 %55 to i64, !dbg !1291
  %57 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %48, i64 0, i32 8, i64 %56, !dbg !1291
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1289
  br label %58, !dbg !1289

; <label>:58:                                     ; preds = %42, %54, %5, %17, %23, %27, %40
  %59 = phi %struct.lua_TValue* [ %14, %5 ], [ %21, %17 ], [ %41, %40 ], [ %34, %27 ], [ %26, %23 ], [ %57, %54 ], [ @luaO_nilobject_, %42 ], !dbg !1292
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1293
  %60 = icmp sgt i32 %2, 0, !dbg !1298
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1299
  br i1 %60, label %61, label %71, !dbg !1299

; <label>:61:                                     ; preds = %58
  %62 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !1300
  %63 = load %struct.lua_TValue*, %struct.lua_TValue** %62, align 8, !dbg !1300, !tbaa !401
  %64 = add nsw i32 %2, -1, !dbg !1301
  %65 = sext i32 %64 to i64, !dbg !1302
  %66 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %63, i64 %65, !dbg !1302
  %67 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1304
  %68 = load %struct.lua_TValue*, %struct.lua_TValue** %67, align 8, !dbg !1304, !tbaa !373
  %69 = icmp ult %struct.lua_TValue* %66, %68, !dbg !1305
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1306
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1307
  %70 = select i1 %69, %struct.lua_TValue* %66, %struct.lua_TValue* @luaO_nilobject_, !dbg !1308
  br label %114

; <label>:71:                                     ; preds = %58
  %72 = icmp sgt i32 %2, -10000, !dbg !1309
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1310
  br i1 %72, label %73, label %78, !dbg !1310

; <label>:73:                                     ; preds = %71
  %74 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1311
  %75 = load %struct.lua_TValue*, %struct.lua_TValue** %74, align 8, !dbg !1311, !tbaa !373
  %76 = sext i32 %2 to i64, !dbg !1312
  %77 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %75, i64 %76, !dbg !1312
  br label %114, !dbg !1313

; <label>:78:                                     ; preds = %71
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1314
  switch i32 %2, label %98 [
    i32 -10000, label %79
    i32 -10001, label %83
    i32 -10002, label %96
  ], !dbg !1314

; <label>:79:                                     ; preds = %78
  %80 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1315
  %81 = load %struct.global_State*, %struct.global_State** %80, align 8, !dbg !1315, !tbaa !486
  %82 = getelementptr inbounds %struct.global_State, %struct.global_State* %81, i64 0, i32 20, !dbg !1315
  br label %114, !dbg !1316

; <label>:83:                                     ; preds = %78
  %84 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1317
  %85 = load %struct.CallInfo*, %struct.CallInfo** %84, align 8, !dbg !1317, !tbaa !419
  %86 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %85, i64 0, i32 1, !dbg !1317
  %87 = bitcast %struct.lua_TValue** %86 to %struct.CClosure***, !dbg !1317
  %88 = load %struct.CClosure**, %struct.CClosure*** %87, align 8, !dbg !1317, !tbaa !604
  %89 = load %struct.CClosure*, %struct.CClosure** %88, align 8, !dbg !1317, !tbaa !514
  %90 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !1319
  %91 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %89, i64 0, i32 6, !dbg !1319
  %92 = bitcast %struct.Table** %91 to i64*, !dbg !1319
  %93 = load i64, i64* %92, align 8, !dbg !1319, !tbaa !514
  %94 = bitcast %struct.lua_TValue* %90 to i64*, !dbg !1319
  store i64 %93, i64* %94, align 8, !dbg !1319, !tbaa !514
  %95 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !1319
  store i32 5, i32* %95, align 8, !dbg !1319, !tbaa !382
  br label %114

; <label>:96:                                     ; preds = %78
  %97 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !1320
  br label %114, !dbg !1321

; <label>:98:                                     ; preds = %78
  %99 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1322
  %100 = load %struct.CallInfo*, %struct.CallInfo** %99, align 8, !dbg !1322, !tbaa !419
  %101 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %100, i64 0, i32 1, !dbg !1322
  %102 = bitcast %struct.lua_TValue** %101 to %struct.CClosure***, !dbg !1322
  %103 = load %struct.CClosure**, %struct.CClosure*** %102, align 8, !dbg !1322, !tbaa !604
  %104 = load %struct.CClosure*, %struct.CClosure** %103, align 8, !dbg !1322, !tbaa !514
  %105 = sub nsw i32 -10002, %2, !dbg !1324
  %106 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %104, i64 0, i32 4, !dbg !1325
  %107 = load i8, i8* %106, align 1, !dbg !1325, !tbaa !514
  %108 = zext i8 %107 to i32, !dbg !1326
  %109 = icmp sgt i32 %105, %108, !dbg !1327
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1328
  br i1 %109, label %114, label %110, !dbg !1328

; <label>:110:                                    ; preds = %98
  %111 = add nsw i32 %105, -1, !dbg !1329
  %112 = sext i32 %111 to i64, !dbg !1330
  %113 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %104, i64 0, i32 8, i64 %112, !dbg !1330
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1328
  br label %114, !dbg !1328

; <label>:114:                                    ; preds = %98, %110, %61, %73, %79, %83, %96
  %115 = phi %struct.lua_TValue* [ %70, %61 ], [ %77, %73 ], [ %97, %96 ], [ %90, %83 ], [ %82, %79 ], [ %113, %110 ], [ @luaO_nilobject_, %98 ], !dbg !1331
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1332
  %116 = icmp eq %struct.lua_TValue* %59, @luaO_nilobject_, !dbg !1334
  %117 = icmp eq %struct.lua_TValue* %115, @luaO_nilobject_, !dbg !1335
  %118 = or i1 %116, %117, !dbg !1336
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1336
  br i1 %118, label %121, label %119, !dbg !1336

; <label>:119:                                    ; preds = %114
  %120 = tail call i32 @luaV_lessthan(%struct.lua_State* %0, %struct.lua_TValue* %59, %struct.lua_TValue* %115) #5, !dbg !1337
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1338
  br label %121, !dbg !1338

; <label>:121:                                    ; preds = %114, %119
  %122 = phi i32 [ %120, %119 ], [ 0, %114 ], !dbg !1338
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1340
  ret i32 %122, !dbg !1340
}

; Function Attrs: noredzone
declare hidden i32 @luaV_lessthan(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local double @lua_tonumber(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !1341 {
  %3 = alloca %struct.lua_TValue, align 8
  %4 = bitcast %struct.lua_TValue* %3 to i8*, !dbg !1351
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #4, !dbg !1351
  %5 = icmp sgt i32 %1, 0, !dbg !1355
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1356
  br i1 %5, label %6, label %16, !dbg !1356

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !1357
  %8 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8, !dbg !1357, !tbaa !401
  %9 = add nsw i32 %1, -1, !dbg !1358
  %10 = sext i32 %9 to i64, !dbg !1359
  %11 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %8, i64 %10, !dbg !1359
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1361
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %12, align 8, !dbg !1361, !tbaa !373
  %14 = icmp ult %struct.lua_TValue* %11, %13, !dbg !1362
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1363
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1364
  %15 = select i1 %14, %struct.lua_TValue* %11, %struct.lua_TValue* @luaO_nilobject_, !dbg !1365
  br label %59

; <label>:16:                                     ; preds = %2
  %17 = icmp sgt i32 %1, -10000, !dbg !1366
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1367
  br i1 %17, label %18, label %23, !dbg !1367

; <label>:18:                                     ; preds = %16
  %19 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1368
  %20 = load %struct.lua_TValue*, %struct.lua_TValue** %19, align 8, !dbg !1368, !tbaa !373
  %21 = sext i32 %1 to i64, !dbg !1369
  %22 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %20, i64 %21, !dbg !1369
  br label %59, !dbg !1370

; <label>:23:                                     ; preds = %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1371
  switch i32 %1, label %43 [
    i32 -10000, label %24
    i32 -10001, label %28
    i32 -10002, label %41
  ], !dbg !1371

; <label>:24:                                     ; preds = %23
  %25 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1372
  %26 = load %struct.global_State*, %struct.global_State** %25, align 8, !dbg !1372, !tbaa !486
  %27 = getelementptr inbounds %struct.global_State, %struct.global_State* %26, i64 0, i32 20, !dbg !1372
  br label %59, !dbg !1373

; <label>:28:                                     ; preds = %23
  %29 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1374
  %30 = load %struct.CallInfo*, %struct.CallInfo** %29, align 8, !dbg !1374, !tbaa !419
  %31 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %30, i64 0, i32 1, !dbg !1374
  %32 = bitcast %struct.lua_TValue** %31 to %struct.CClosure***, !dbg !1374
  %33 = load %struct.CClosure**, %struct.CClosure*** %32, align 8, !dbg !1374, !tbaa !604
  %34 = load %struct.CClosure*, %struct.CClosure** %33, align 8, !dbg !1374, !tbaa !514
  %35 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !1376
  %36 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %34, i64 0, i32 6, !dbg !1376
  %37 = bitcast %struct.Table** %36 to i64*, !dbg !1376
  %38 = load i64, i64* %37, align 8, !dbg !1376, !tbaa !514
  %39 = bitcast %struct.lua_TValue* %35 to i64*, !dbg !1376
  store i64 %38, i64* %39, align 8, !dbg !1376, !tbaa !514
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !1376
  store i32 5, i32* %40, align 8, !dbg !1376, !tbaa !382
  br label %59

; <label>:41:                                     ; preds = %23
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !1377
  br label %59, !dbg !1378

; <label>:43:                                     ; preds = %23
  %44 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1379
  %45 = load %struct.CallInfo*, %struct.CallInfo** %44, align 8, !dbg !1379, !tbaa !419
  %46 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %45, i64 0, i32 1, !dbg !1379
  %47 = bitcast %struct.lua_TValue** %46 to %struct.CClosure***, !dbg !1379
  %48 = load %struct.CClosure**, %struct.CClosure*** %47, align 8, !dbg !1379, !tbaa !604
  %49 = load %struct.CClosure*, %struct.CClosure** %48, align 8, !dbg !1379, !tbaa !514
  %50 = sub nsw i32 -10002, %1, !dbg !1381
  %51 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %49, i64 0, i32 4, !dbg !1382
  %52 = load i8, i8* %51, align 1, !dbg !1382, !tbaa !514
  %53 = zext i8 %52 to i32, !dbg !1383
  %54 = icmp sgt i32 %50, %53, !dbg !1384
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1385
  br i1 %54, label %59, label %55, !dbg !1385

; <label>:55:                                     ; preds = %43
  %56 = add nsw i32 %50, -1, !dbg !1386
  %57 = sext i32 %56 to i64, !dbg !1387
  %58 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %49, i64 0, i32 8, i64 %57, !dbg !1387
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1385
  br label %59, !dbg !1385

; <label>:59:                                     ; preds = %43, %55, %6, %18, %24, %28, %41
  %60 = phi %struct.lua_TValue* [ %15, %6 ], [ %22, %18 ], [ %42, %41 ], [ %35, %28 ], [ %27, %24 ], [ %58, %55 ], [ @luaO_nilobject_, %43 ], !dbg !1388
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1389
  %61 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %60, i64 0, i32 1, !dbg !1391
  %62 = load i32, i32* %61, align 8, !dbg !1391, !tbaa !382
  %63 = icmp eq i32 %62, 3, !dbg !1391
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1391
  br i1 %63, label %67, label %64, !dbg !1391

; <label>:64:                                     ; preds = %59
  %65 = call %struct.lua_TValue* @luaV_tonumber(%struct.lua_TValue* %60, %struct.lua_TValue* nonnull %3) #5, !dbg !1391
  %66 = icmp eq %struct.lua_TValue* %65, null, !dbg !1391
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1394
  br i1 %66, label %71, label %67, !dbg !1394

; <label>:67:                                     ; preds = %64, %59
  %68 = phi %struct.lua_TValue* [ %60, %59 ], [ %65, %64 ], !dbg !1395
  %69 = bitcast %struct.lua_TValue* %68 to double*, !dbg !1396
  %70 = load double, double* %69, align 8, !dbg !1396, !tbaa !514
  br label %71, !dbg !1397

; <label>:71:                                     ; preds = %64, %67
  %72 = phi double [ %70, %67 ], [ 0.000000e+00, %64 ], !dbg !1395
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1395
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #4, !dbg !1398
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1398
  ret double %72, !dbg !1398
}

; Function Attrs: noredzone nounwind
define dso_local i64 @lua_tointeger(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !1399 {
  %3 = alloca %struct.lua_TValue, align 8
  %4 = bitcast %struct.lua_TValue* %3 to i8*, !dbg !1413
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #4, !dbg !1413
  %5 = icmp sgt i32 %1, 0, !dbg !1417
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1418
  br i1 %5, label %6, label %16, !dbg !1418

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !1419
  %8 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8, !dbg !1419, !tbaa !401
  %9 = add nsw i32 %1, -1, !dbg !1420
  %10 = sext i32 %9 to i64, !dbg !1421
  %11 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %8, i64 %10, !dbg !1421
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1423
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %12, align 8, !dbg !1423, !tbaa !373
  %14 = icmp ult %struct.lua_TValue* %11, %13, !dbg !1424
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1425
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1426
  %15 = select i1 %14, %struct.lua_TValue* %11, %struct.lua_TValue* @luaO_nilobject_, !dbg !1427
  br label %59

; <label>:16:                                     ; preds = %2
  %17 = icmp sgt i32 %1, -10000, !dbg !1428
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1429
  br i1 %17, label %18, label %23, !dbg !1429

; <label>:18:                                     ; preds = %16
  %19 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1430
  %20 = load %struct.lua_TValue*, %struct.lua_TValue** %19, align 8, !dbg !1430, !tbaa !373
  %21 = sext i32 %1 to i64, !dbg !1431
  %22 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %20, i64 %21, !dbg !1431
  br label %59, !dbg !1432

; <label>:23:                                     ; preds = %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1433
  switch i32 %1, label %43 [
    i32 -10000, label %24
    i32 -10001, label %28
    i32 -10002, label %41
  ], !dbg !1433

; <label>:24:                                     ; preds = %23
  %25 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1434
  %26 = load %struct.global_State*, %struct.global_State** %25, align 8, !dbg !1434, !tbaa !486
  %27 = getelementptr inbounds %struct.global_State, %struct.global_State* %26, i64 0, i32 20, !dbg !1434
  br label %59, !dbg !1435

; <label>:28:                                     ; preds = %23
  %29 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1436
  %30 = load %struct.CallInfo*, %struct.CallInfo** %29, align 8, !dbg !1436, !tbaa !419
  %31 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %30, i64 0, i32 1, !dbg !1436
  %32 = bitcast %struct.lua_TValue** %31 to %struct.CClosure***, !dbg !1436
  %33 = load %struct.CClosure**, %struct.CClosure*** %32, align 8, !dbg !1436, !tbaa !604
  %34 = load %struct.CClosure*, %struct.CClosure** %33, align 8, !dbg !1436, !tbaa !514
  %35 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !1438
  %36 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %34, i64 0, i32 6, !dbg !1438
  %37 = bitcast %struct.Table** %36 to i64*, !dbg !1438
  %38 = load i64, i64* %37, align 8, !dbg !1438, !tbaa !514
  %39 = bitcast %struct.lua_TValue* %35 to i64*, !dbg !1438
  store i64 %38, i64* %39, align 8, !dbg !1438, !tbaa !514
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !1438
  store i32 5, i32* %40, align 8, !dbg !1438, !tbaa !382
  br label %59

; <label>:41:                                     ; preds = %23
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !1439
  br label %59, !dbg !1440

; <label>:43:                                     ; preds = %23
  %44 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1441
  %45 = load %struct.CallInfo*, %struct.CallInfo** %44, align 8, !dbg !1441, !tbaa !419
  %46 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %45, i64 0, i32 1, !dbg !1441
  %47 = bitcast %struct.lua_TValue** %46 to %struct.CClosure***, !dbg !1441
  %48 = load %struct.CClosure**, %struct.CClosure*** %47, align 8, !dbg !1441, !tbaa !604
  %49 = load %struct.CClosure*, %struct.CClosure** %48, align 8, !dbg !1441, !tbaa !514
  %50 = sub nsw i32 -10002, %1, !dbg !1443
  %51 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %49, i64 0, i32 4, !dbg !1444
  %52 = load i8, i8* %51, align 1, !dbg !1444, !tbaa !514
  %53 = zext i8 %52 to i32, !dbg !1445
  %54 = icmp sgt i32 %50, %53, !dbg !1446
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1447
  br i1 %54, label %59, label %55, !dbg !1447

; <label>:55:                                     ; preds = %43
  %56 = add nsw i32 %50, -1, !dbg !1448
  %57 = sext i32 %56 to i64, !dbg !1449
  %58 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %49, i64 0, i32 8, i64 %57, !dbg !1449
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1447
  br label %59, !dbg !1447

; <label>:59:                                     ; preds = %43, %55, %6, %18, %24, %28, %41
  %60 = phi %struct.lua_TValue* [ %15, %6 ], [ %22, %18 ], [ %42, %41 ], [ %35, %28 ], [ %27, %24 ], [ %58, %55 ], [ @luaO_nilobject_, %43 ], !dbg !1450
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1451
  %61 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %60, i64 0, i32 1, !dbg !1453
  %62 = load i32, i32* %61, align 8, !dbg !1453, !tbaa !382
  %63 = icmp eq i32 %62, 3, !dbg !1453
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1453
  br i1 %63, label %67, label %64, !dbg !1453

; <label>:64:                                     ; preds = %59
  %65 = call %struct.lua_TValue* @luaV_tonumber(%struct.lua_TValue* %60, %struct.lua_TValue* nonnull %3) #5, !dbg !1453
  %66 = icmp eq %struct.lua_TValue* %65, null, !dbg !1453
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1455
  br i1 %66, label %72, label %67, !dbg !1455

; <label>:67:                                     ; preds = %64, %59
  %68 = phi %struct.lua_TValue* [ %60, %59 ], [ %65, %64 ], !dbg !1456
  %69 = bitcast %struct.lua_TValue* %68 to double*, !dbg !1457
  %70 = load double, double* %69, align 8, !dbg !1457, !tbaa !514
  %71 = fptosi double %70 to i64, !dbg !1459
  br label %72

; <label>:72:                                     ; preds = %64, %67
  %73 = phi i64 [ %71, %67 ], [ 0, %64 ], !dbg !1456
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #4, !dbg !1461
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1461
  ret i64 %73, !dbg !1461
}

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_toboolean(%struct.lua_State* nocapture, i32) local_unnamed_addr #0 !dbg !1462 {
  %3 = icmp sgt i32 %1, 0, !dbg !1472
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1473
  br i1 %3, label %4, label %14, !dbg !1473

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !1474
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8, !dbg !1474, !tbaa !401
  %7 = add nsw i32 %1, -1, !dbg !1475
  %8 = sext i32 %7 to i64, !dbg !1476
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 %8, !dbg !1476
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1478
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !1478, !tbaa !373
  %12 = icmp ult %struct.lua_TValue* %9, %11, !dbg !1479
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1480
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1481
  %13 = select i1 %12, %struct.lua_TValue* %9, %struct.lua_TValue* @luaO_nilobject_, !dbg !1482
  br label %57

; <label>:14:                                     ; preds = %2
  %15 = icmp sgt i32 %1, -10000, !dbg !1483
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1484
  br i1 %15, label %16, label %21, !dbg !1484

; <label>:16:                                     ; preds = %14
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1485
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %17, align 8, !dbg !1485, !tbaa !373
  %19 = sext i32 %1 to i64, !dbg !1486
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 %19, !dbg !1486
  br label %57, !dbg !1487

; <label>:21:                                     ; preds = %14
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1488
  switch i32 %1, label %41 [
    i32 -10000, label %22
    i32 -10001, label %26
    i32 -10002, label %39
  ], !dbg !1488

; <label>:22:                                     ; preds = %21
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1489
  %24 = load %struct.global_State*, %struct.global_State** %23, align 8, !dbg !1489, !tbaa !486
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %24, i64 0, i32 20, !dbg !1489
  br label %57, !dbg !1490

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1491
  %28 = load %struct.CallInfo*, %struct.CallInfo** %27, align 8, !dbg !1491, !tbaa !419
  %29 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %28, i64 0, i32 1, !dbg !1491
  %30 = bitcast %struct.lua_TValue** %29 to %struct.CClosure***, !dbg !1491
  %31 = load %struct.CClosure**, %struct.CClosure*** %30, align 8, !dbg !1491, !tbaa !604
  %32 = load %struct.CClosure*, %struct.CClosure** %31, align 8, !dbg !1491, !tbaa !514
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !1493
  %34 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %32, i64 0, i32 6, !dbg !1493
  %35 = bitcast %struct.Table** %34 to i64*, !dbg !1493
  %36 = load i64, i64* %35, align 8, !dbg !1493, !tbaa !514
  %37 = bitcast %struct.lua_TValue* %33 to i64*, !dbg !1493
  store i64 %36, i64* %37, align 8, !dbg !1493, !tbaa !514
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !1493
  store i32 5, i32* %38, align 8, !dbg !1493, !tbaa !382
  br label %57

; <label>:39:                                     ; preds = %21
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !1494
  br label %57, !dbg !1495

; <label>:41:                                     ; preds = %21
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1496
  %43 = load %struct.CallInfo*, %struct.CallInfo** %42, align 8, !dbg !1496, !tbaa !419
  %44 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %43, i64 0, i32 1, !dbg !1496
  %45 = bitcast %struct.lua_TValue** %44 to %struct.CClosure***, !dbg !1496
  %46 = load %struct.CClosure**, %struct.CClosure*** %45, align 8, !dbg !1496, !tbaa !604
  %47 = load %struct.CClosure*, %struct.CClosure** %46, align 8, !dbg !1496, !tbaa !514
  %48 = sub nsw i32 -10002, %1, !dbg !1498
  %49 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 4, !dbg !1499
  %50 = load i8, i8* %49, align 1, !dbg !1499, !tbaa !514
  %51 = zext i8 %50 to i32, !dbg !1500
  %52 = icmp sgt i32 %48, %51, !dbg !1501
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1502
  br i1 %52, label %57, label %53, !dbg !1502

; <label>:53:                                     ; preds = %41
  %54 = add nsw i32 %48, -1, !dbg !1503
  %55 = sext i32 %54 to i64, !dbg !1504
  %56 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 8, i64 %55, !dbg !1504
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1502
  br label %57, !dbg !1502

; <label>:57:                                     ; preds = %41, %53, %4, %16, %22, %26, %39
  %58 = phi %struct.lua_TValue* [ %13, %4 ], [ %20, %16 ], [ %40, %39 ], [ %33, %26 ], [ %25, %22 ], [ %56, %53 ], [ @luaO_nilobject_, %41 ], !dbg !1505
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1506
  %59 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i64 0, i32 1, !dbg !1508
  %60 = load i32, i32* %59, align 8, !dbg !1508, !tbaa !382
  %61 = icmp eq i32 %60, 0, !dbg !1508
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1508
  br i1 %61, label %69, label %62, !dbg !1508

; <label>:62:                                     ; preds = %57
  %63 = icmp eq i32 %60, 1, !dbg !1508
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1508
  br i1 %63, label %64, label %69, !dbg !1508

; <label>:64:                                     ; preds = %62
  %65 = bitcast %struct.lua_TValue* %58 to i32*, !dbg !1508
  %66 = load i32, i32* %65, align 8, !dbg !1508, !tbaa !514
  %67 = icmp ne i32 %66, 0, !dbg !1508
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %68 = zext i1 %67 to i32
  br label %69

; <label>:69:                                     ; preds = %62, %64, %57
  %70 = phi i32 [ 0, %57 ], [ 1, %62 ], [ %68, %64 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1509
  ret i32 %70, !dbg !1509
}

; Function Attrs: noredzone nounwind
define dso_local i8* @lua_tolstring(%struct.lua_State*, i32, i64*) local_unnamed_addr #0 !dbg !1510 {
  %4 = icmp sgt i32 %1, 0, !dbg !1525
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1526
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1534
  %14 = select i1 %13, %struct.lua_TValue* %10, %struct.lua_TValue* @luaO_nilobject_, !dbg !1535
  br label %58

; <label>:15:                                     ; preds = %3
  %16 = icmp sgt i32 %1, -10000, !dbg !1536
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1537
  br i1 %16, label %17, label %22, !dbg !1537

; <label>:17:                                     ; preds = %15
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1538
  %19 = load %struct.lua_TValue*, %struct.lua_TValue** %18, align 8, !dbg !1538, !tbaa !373
  %20 = sext i32 %1 to i64, !dbg !1539
  %21 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %19, i64 %20, !dbg !1539
  br label %58, !dbg !1540

; <label>:22:                                     ; preds = %15
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1541
  switch i32 %1, label %42 [
    i32 -10000, label %23
    i32 -10001, label %27
    i32 -10002, label %40
  ], !dbg !1541

; <label>:23:                                     ; preds = %22
  %24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1542
  %25 = load %struct.global_State*, %struct.global_State** %24, align 8, !dbg !1542, !tbaa !486
  %26 = getelementptr inbounds %struct.global_State, %struct.global_State* %25, i64 0, i32 20, !dbg !1542
  br label %58, !dbg !1543

; <label>:27:                                     ; preds = %22
  %28 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1544
  %29 = load %struct.CallInfo*, %struct.CallInfo** %28, align 8, !dbg !1544, !tbaa !419
  %30 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %29, i64 0, i32 1, !dbg !1544
  %31 = bitcast %struct.lua_TValue** %30 to %struct.CClosure***, !dbg !1544
  %32 = load %struct.CClosure**, %struct.CClosure*** %31, align 8, !dbg !1544, !tbaa !604
  %33 = load %struct.CClosure*, %struct.CClosure** %32, align 8, !dbg !1544, !tbaa !514
  %34 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !1546
  %35 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %33, i64 0, i32 6, !dbg !1546
  %36 = bitcast %struct.Table** %35 to i64*, !dbg !1546
  %37 = load i64, i64* %36, align 8, !dbg !1546, !tbaa !514
  %38 = bitcast %struct.lua_TValue* %34 to i64*, !dbg !1546
  store i64 %37, i64* %38, align 8, !dbg !1546, !tbaa !514
  %39 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !1546
  store i32 5, i32* %39, align 8, !dbg !1546, !tbaa !382
  br label %58

; <label>:40:                                     ; preds = %22
  %41 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !1547
  br label %58, !dbg !1548

; <label>:42:                                     ; preds = %22
  %43 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1549
  %44 = load %struct.CallInfo*, %struct.CallInfo** %43, align 8, !dbg !1549, !tbaa !419
  %45 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %44, i64 0, i32 1, !dbg !1549
  %46 = bitcast %struct.lua_TValue** %45 to %struct.CClosure***, !dbg !1549
  %47 = load %struct.CClosure**, %struct.CClosure*** %46, align 8, !dbg !1549, !tbaa !604
  %48 = load %struct.CClosure*, %struct.CClosure** %47, align 8, !dbg !1549, !tbaa !514
  %49 = sub nsw i32 -10002, %1, !dbg !1551
  %50 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %48, i64 0, i32 4, !dbg !1552
  %51 = load i8, i8* %50, align 1, !dbg !1552, !tbaa !514
  %52 = zext i8 %51 to i32, !dbg !1553
  %53 = icmp sgt i32 %49, %52, !dbg !1554
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1555
  br i1 %53, label %58, label %54, !dbg !1555

; <label>:54:                                     ; preds = %42
  %55 = add nsw i32 %49, -1, !dbg !1556
  %56 = sext i32 %55 to i64, !dbg !1557
  %57 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %48, i64 0, i32 8, i64 %56, !dbg !1557
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1555
  br label %58, !dbg !1555

; <label>:58:                                     ; preds = %42, %54, %5, %17, %23, %27, %40
  %59 = phi %struct.lua_TValue* [ %14, %5 ], [ %21, %17 ], [ %41, %40 ], [ %34, %27 ], [ %26, %23 ], [ %57, %54 ], [ @luaO_nilobject_, %42 ], !dbg !1558
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1559
  %60 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %59, i64 0, i32 1, !dbg !1561
  %61 = load i32, i32* %60, align 8, !dbg !1561, !tbaa !382
  %62 = icmp eq i32 %61, 4, !dbg !1561
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1563
  br i1 %62, label %133, label %63, !dbg !1563

; <label>:63:                                     ; preds = %58
  %64 = tail call i32 @luaV_tostring(%struct.lua_State* %0, %struct.lua_TValue* %59) #5, !dbg !1564
  %65 = icmp eq i32 %64, 0, !dbg !1564
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1567
  br i1 %65, label %66, label %69, !dbg !1567

; <label>:66:                                     ; preds = %63
  %67 = icmp eq i64* %2, null, !dbg !1568
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1571
  br i1 %67, label %146, label %68, !dbg !1571

; <label>:68:                                     ; preds = %66
  store i64 0, i64* %2, align 8, !dbg !1572, !tbaa !1573
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1574
  br label %146, !dbg !1574

; <label>:69:                                     ; preds = %63
  %70 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1575
  %71 = load %struct.global_State*, %struct.global_State** %70, align 8, !dbg !1575, !tbaa !486
  %72 = getelementptr inbounds %struct.global_State, %struct.global_State* %71, i64 0, i32 14, !dbg !1575
  %73 = load i64, i64* %72, align 8, !dbg !1575, !tbaa !508
  %74 = getelementptr inbounds %struct.global_State, %struct.global_State* %71, i64 0, i32 13, !dbg !1575
  %75 = load i64, i64* %74, align 8, !dbg !1575, !tbaa !509
  %76 = icmp ult i64 %73, %75, !dbg !1575
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1578
  br i1 %76, label %78, label %77, !dbg !1578

; <label>:77:                                     ; preds = %69
  tail call void @luaC_step(%struct.lua_State* nonnull %0) #5, !dbg !1575
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1575
  br label %78, !dbg !1575

; <label>:78:                                     ; preds = %69, %77
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1582
  br i1 %4, label %79, label %89, !dbg !1582

; <label>:79:                                     ; preds = %78
  %80 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !1583
  %81 = load %struct.lua_TValue*, %struct.lua_TValue** %80, align 8, !dbg !1583, !tbaa !401
  %82 = add nsw i32 %1, -1, !dbg !1584
  %83 = sext i32 %82 to i64, !dbg !1585
  %84 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %81, i64 %83, !dbg !1585
  %85 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1587
  %86 = load %struct.lua_TValue*, %struct.lua_TValue** %85, align 8, !dbg !1587, !tbaa !373
  %87 = icmp ult %struct.lua_TValue* %84, %86, !dbg !1588
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1589
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1590
  %88 = select i1 %87, %struct.lua_TValue* %84, %struct.lua_TValue* @luaO_nilobject_, !dbg !1591
  br label %131

; <label>:89:                                     ; preds = %78
  %90 = icmp sgt i32 %1, -10000, !dbg !1592
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1593
  br i1 %90, label %91, label %96, !dbg !1593

; <label>:91:                                     ; preds = %89
  %92 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1594
  %93 = load %struct.lua_TValue*, %struct.lua_TValue** %92, align 8, !dbg !1594, !tbaa !373
  %94 = sext i32 %1 to i64, !dbg !1595
  %95 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %93, i64 %94, !dbg !1595
  br label %131, !dbg !1596

; <label>:96:                                     ; preds = %89
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1597
  switch i32 %1, label %115 [
    i32 -10000, label %97
    i32 -10001, label %100
    i32 -10002, label %113
  ], !dbg !1597

; <label>:97:                                     ; preds = %96
  %98 = load %struct.global_State*, %struct.global_State** %70, align 8, !dbg !1598, !tbaa !486
  %99 = getelementptr inbounds %struct.global_State, %struct.global_State* %98, i64 0, i32 20, !dbg !1598
  br label %131, !dbg !1599

; <label>:100:                                    ; preds = %96
  %101 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1600
  %102 = load %struct.CallInfo*, %struct.CallInfo** %101, align 8, !dbg !1600, !tbaa !419
  %103 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %102, i64 0, i32 1, !dbg !1600
  %104 = bitcast %struct.lua_TValue** %103 to %struct.CClosure***, !dbg !1600
  %105 = load %struct.CClosure**, %struct.CClosure*** %104, align 8, !dbg !1600, !tbaa !604
  %106 = load %struct.CClosure*, %struct.CClosure** %105, align 8, !dbg !1600, !tbaa !514
  %107 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !1602
  %108 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %106, i64 0, i32 6, !dbg !1602
  %109 = bitcast %struct.Table** %108 to i64*, !dbg !1602
  %110 = load i64, i64* %109, align 8, !dbg !1602, !tbaa !514
  %111 = bitcast %struct.lua_TValue* %107 to i64*, !dbg !1602
  store i64 %110, i64* %111, align 8, !dbg !1602, !tbaa !514
  %112 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !1602
  store i32 5, i32* %112, align 8, !dbg !1602, !tbaa !382
  br label %131

; <label>:113:                                    ; preds = %96
  %114 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !1603
  br label %131, !dbg !1604

; <label>:115:                                    ; preds = %96
  %116 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1605
  %117 = load %struct.CallInfo*, %struct.CallInfo** %116, align 8, !dbg !1605, !tbaa !419
  %118 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %117, i64 0, i32 1, !dbg !1605
  %119 = bitcast %struct.lua_TValue** %118 to %struct.CClosure***, !dbg !1605
  %120 = load %struct.CClosure**, %struct.CClosure*** %119, align 8, !dbg !1605, !tbaa !604
  %121 = load %struct.CClosure*, %struct.CClosure** %120, align 8, !dbg !1605, !tbaa !514
  %122 = sub nsw i32 -10002, %1, !dbg !1607
  %123 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %121, i64 0, i32 4, !dbg !1608
  %124 = load i8, i8* %123, align 1, !dbg !1608, !tbaa !514
  %125 = zext i8 %124 to i32, !dbg !1609
  %126 = icmp sgt i32 %122, %125, !dbg !1610
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1611
  br i1 %126, label %131, label %127, !dbg !1611

; <label>:127:                                    ; preds = %115
  %128 = add nsw i32 %122, -1, !dbg !1612
  %129 = sext i32 %128 to i64, !dbg !1613
  %130 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %121, i64 0, i32 8, i64 %129, !dbg !1613
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1611
  br label %131, !dbg !1611

; <label>:131:                                    ; preds = %115, %127, %79, %91, %97, %100, %113
  %132 = phi %struct.lua_TValue* [ %88, %79 ], [ %95, %91 ], [ %114, %113 ], [ %107, %100 ], [ %99, %97 ], [ %130, %127 ], [ @luaO_nilobject_, %115 ], !dbg !1614
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1615
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1616
  br label %133, !dbg !1616

; <label>:133:                                    ; preds = %131, %58
  %134 = phi %struct.lua_TValue* [ %59, %58 ], [ %132, %131 ], !dbg !1617
  %135 = icmp eq i64* %2, null, !dbg !1618
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1620
  br i1 %135, label %141, label %136, !dbg !1620

; <label>:136:                                    ; preds = %133
  %137 = bitcast %struct.lua_TValue* %134 to %struct.anon.1**, !dbg !1621
  %138 = load %struct.anon.1*, %struct.anon.1** %137, align 8, !dbg !1621, !tbaa !514
  %139 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %138, i64 0, i32 5, !dbg !1622
  %140 = load i64, i64* %139, align 8, !dbg !1622, !tbaa !514
  store i64 %140, i64* %2, align 8, !dbg !1623, !tbaa !1573
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1624
  br label %141, !dbg !1624

; <label>:141:                                    ; preds = %133, %136
  %142 = bitcast %struct.lua_TValue* %134 to %union.TString**, !dbg !1625
  %143 = load %union.TString*, %union.TString** %142, align 8, !dbg !1625, !tbaa !514
  %144 = getelementptr inbounds %union.TString, %union.TString* %143, i64 1, !dbg !1625
  %145 = bitcast %union.TString* %144 to i8*, !dbg !1625
  br label %146, !dbg !1626

; <label>:146:                                    ; preds = %68, %66, %141
  %147 = phi i8* [ %145, %141 ], [ null, %66 ], [ null, %68 ], !dbg !1627
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1627
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1628
  ret i8* %147, !dbg !1628
}

; Function Attrs: noredzone
declare hidden i32 @luaV_tostring(%struct.lua_State*, %struct.lua_TValue*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i64 @lua_objlen(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !1629 {
  %3 = icmp sgt i32 %1, 0, !dbg !1644
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1645
  br i1 %3, label %4, label %14, !dbg !1645

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !1646
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8, !dbg !1646, !tbaa !401
  %7 = add nsw i32 %1, -1, !dbg !1647
  %8 = sext i32 %7 to i64, !dbg !1648
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 %8, !dbg !1648
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1650
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !1650, !tbaa !373
  %12 = icmp ult %struct.lua_TValue* %9, %11, !dbg !1651
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1652
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1653
  %13 = select i1 %12, %struct.lua_TValue* %9, %struct.lua_TValue* @luaO_nilobject_, !dbg !1654
  br label %57

; <label>:14:                                     ; preds = %2
  %15 = icmp sgt i32 %1, -10000, !dbg !1655
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1656
  br i1 %15, label %16, label %21, !dbg !1656

; <label>:16:                                     ; preds = %14
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1657
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %17, align 8, !dbg !1657, !tbaa !373
  %19 = sext i32 %1 to i64, !dbg !1658
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 %19, !dbg !1658
  br label %57, !dbg !1659

; <label>:21:                                     ; preds = %14
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1660
  switch i32 %1, label %41 [
    i32 -10000, label %22
    i32 -10001, label %26
    i32 -10002, label %39
  ], !dbg !1660

; <label>:22:                                     ; preds = %21
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1661
  %24 = load %struct.global_State*, %struct.global_State** %23, align 8, !dbg !1661, !tbaa !486
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %24, i64 0, i32 20, !dbg !1661
  br label %57, !dbg !1662

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1663
  %28 = load %struct.CallInfo*, %struct.CallInfo** %27, align 8, !dbg !1663, !tbaa !419
  %29 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %28, i64 0, i32 1, !dbg !1663
  %30 = bitcast %struct.lua_TValue** %29 to %struct.CClosure***, !dbg !1663
  %31 = load %struct.CClosure**, %struct.CClosure*** %30, align 8, !dbg !1663, !tbaa !604
  %32 = load %struct.CClosure*, %struct.CClosure** %31, align 8, !dbg !1663, !tbaa !514
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !1665
  %34 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %32, i64 0, i32 6, !dbg !1665
  %35 = bitcast %struct.Table** %34 to i64*, !dbg !1665
  %36 = load i64, i64* %35, align 8, !dbg !1665, !tbaa !514
  %37 = bitcast %struct.lua_TValue* %33 to i64*, !dbg !1665
  store i64 %36, i64* %37, align 8, !dbg !1665, !tbaa !514
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !1665
  store i32 5, i32* %38, align 8, !dbg !1665, !tbaa !382
  br label %57

; <label>:39:                                     ; preds = %21
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !1666
  br label %57, !dbg !1667

; <label>:41:                                     ; preds = %21
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1668
  %43 = load %struct.CallInfo*, %struct.CallInfo** %42, align 8, !dbg !1668, !tbaa !419
  %44 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %43, i64 0, i32 1, !dbg !1668
  %45 = bitcast %struct.lua_TValue** %44 to %struct.CClosure***, !dbg !1668
  %46 = load %struct.CClosure**, %struct.CClosure*** %45, align 8, !dbg !1668, !tbaa !604
  %47 = load %struct.CClosure*, %struct.CClosure** %46, align 8, !dbg !1668, !tbaa !514
  %48 = sub nsw i32 -10002, %1, !dbg !1670
  %49 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 4, !dbg !1671
  %50 = load i8, i8* %49, align 1, !dbg !1671, !tbaa !514
  %51 = zext i8 %50 to i32, !dbg !1672
  %52 = icmp sgt i32 %48, %51, !dbg !1673
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1674
  br i1 %52, label %57, label %53, !dbg !1674

; <label>:53:                                     ; preds = %41
  %54 = add nsw i32 %48, -1, !dbg !1675
  %55 = sext i32 %54 to i64, !dbg !1676
  %56 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 8, i64 %55, !dbg !1676
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1674
  br label %57, !dbg !1674

; <label>:57:                                     ; preds = %41, %53, %4, %16, %22, %26, %39
  %58 = phi %struct.lua_TValue* [ %13, %4 ], [ %20, %16 ], [ %40, %39 ], [ %33, %26 ], [ %25, %22 ], [ %56, %53 ], [ @luaO_nilobject_, %41 ], !dbg !1677
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1678
  %59 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i64 0, i32 1, !dbg !1680
  %60 = load i32, i32* %59, align 8, !dbg !1680, !tbaa !382
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1681
  switch i32 %60, label %84 [
    i32 4, label %61
    i32 7, label %66
    i32 5, label %71
    i32 3, label %76
  ], !dbg !1681

; <label>:61:                                     ; preds = %57
  %62 = bitcast %struct.lua_TValue* %58 to %struct.anon.1**, !dbg !1682
  %63 = load %struct.anon.1*, %struct.anon.1** %62, align 8, !dbg !1682, !tbaa !514
  %64 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %63, i64 0, i32 5, !dbg !1683
  %65 = load i64, i64* %64, align 8, !dbg !1683, !tbaa !514
  br label %84, !dbg !1684

; <label>:66:                                     ; preds = %57
  %67 = bitcast %struct.lua_TValue* %58 to %struct.anon.2**, !dbg !1685
  %68 = load %struct.anon.2*, %struct.anon.2** %67, align 8, !dbg !1685, !tbaa !514
  %69 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %68, i64 0, i32 5, !dbg !1686
  %70 = load i64, i64* %69, align 8, !dbg !1686, !tbaa !514
  br label %84, !dbg !1687

; <label>:71:                                     ; preds = %57
  %72 = bitcast %struct.lua_TValue* %58 to %struct.Table**, !dbg !1688
  %73 = load %struct.Table*, %struct.Table** %72, align 8, !dbg !1688, !tbaa !514
  %74 = tail call i32 @luaH_getn(%struct.Table* %73) #5, !dbg !1689
  %75 = sext i32 %74 to i64, !dbg !1689
  br label %84, !dbg !1690

; <label>:76:                                     ; preds = %57
  %77 = tail call i32 @luaV_tostring(%struct.lua_State* %0, %struct.lua_TValue* %58) #5, !dbg !1691
  %78 = icmp eq i32 %77, 0, !dbg !1691
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1691
  br i1 %78, label %84, label %79, !dbg !1691

; <label>:79:                                     ; preds = %76
  %80 = bitcast %struct.lua_TValue* %58 to %struct.anon.1**, !dbg !1692
  %81 = load %struct.anon.1*, %struct.anon.1** %80, align 8, !dbg !1692, !tbaa !514
  %82 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %81, i64 0, i32 5, !dbg !1693
  %83 = load i64, i64* %82, align 8, !dbg !1693, !tbaa !514
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1691
  br label %84, !dbg !1691

; <label>:84:                                     ; preds = %57, %79, %76, %71, %66, %61
  %85 = phi i64 [ %75, %71 ], [ %70, %66 ], [ %65, %61 ], [ %83, %79 ], [ 0, %76 ], [ 0, %57 ], !dbg !1694
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1695
  ret i64 %85, !dbg !1695
}

; Function Attrs: noredzone
declare hidden i32 @luaH_getn(%struct.Table*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 (%struct.lua_State*)* @lua_tocfunction(%struct.lua_State* nocapture, i32) local_unnamed_addr #0 !dbg !1696 {
  %3 = icmp sgt i32 %1, 0, !dbg !1708
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1709
  br i1 %3, label %4, label %14, !dbg !1709

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !1710
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8, !dbg !1710, !tbaa !401
  %7 = add nsw i32 %1, -1, !dbg !1711
  %8 = sext i32 %7 to i64, !dbg !1712
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 %8, !dbg !1712
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1714
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !1714, !tbaa !373
  %12 = icmp ult %struct.lua_TValue* %9, %11, !dbg !1715
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1716
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1717
  %13 = select i1 %12, %struct.lua_TValue* %9, %struct.lua_TValue* @luaO_nilobject_, !dbg !1718
  br label %57

; <label>:14:                                     ; preds = %2
  %15 = icmp sgt i32 %1, -10000, !dbg !1719
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1720
  br i1 %15, label %16, label %21, !dbg !1720

; <label>:16:                                     ; preds = %14
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1721
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %17, align 8, !dbg !1721, !tbaa !373
  %19 = sext i32 %1 to i64, !dbg !1722
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 %19, !dbg !1722
  br label %57, !dbg !1723

; <label>:21:                                     ; preds = %14
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1724
  switch i32 %1, label %41 [
    i32 -10000, label %22
    i32 -10001, label %26
    i32 -10002, label %39
  ], !dbg !1724

; <label>:22:                                     ; preds = %21
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1725
  %24 = load %struct.global_State*, %struct.global_State** %23, align 8, !dbg !1725, !tbaa !486
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %24, i64 0, i32 20, !dbg !1725
  br label %57, !dbg !1726

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1727
  %28 = load %struct.CallInfo*, %struct.CallInfo** %27, align 8, !dbg !1727, !tbaa !419
  %29 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %28, i64 0, i32 1, !dbg !1727
  %30 = bitcast %struct.lua_TValue** %29 to %struct.CClosure***, !dbg !1727
  %31 = load %struct.CClosure**, %struct.CClosure*** %30, align 8, !dbg !1727, !tbaa !604
  %32 = load %struct.CClosure*, %struct.CClosure** %31, align 8, !dbg !1727, !tbaa !514
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !1729
  %34 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %32, i64 0, i32 6, !dbg !1729
  %35 = bitcast %struct.Table** %34 to i64*, !dbg !1729
  %36 = load i64, i64* %35, align 8, !dbg !1729, !tbaa !514
  %37 = bitcast %struct.lua_TValue* %33 to i64*, !dbg !1729
  store i64 %36, i64* %37, align 8, !dbg !1729, !tbaa !514
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !1729
  store i32 5, i32* %38, align 8, !dbg !1729, !tbaa !382
  br label %57

; <label>:39:                                     ; preds = %21
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !1730
  br label %57, !dbg !1731

; <label>:41:                                     ; preds = %21
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1732
  %43 = load %struct.CallInfo*, %struct.CallInfo** %42, align 8, !dbg !1732, !tbaa !419
  %44 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %43, i64 0, i32 1, !dbg !1732
  %45 = bitcast %struct.lua_TValue** %44 to %struct.CClosure***, !dbg !1732
  %46 = load %struct.CClosure**, %struct.CClosure*** %45, align 8, !dbg !1732, !tbaa !604
  %47 = load %struct.CClosure*, %struct.CClosure** %46, align 8, !dbg !1732, !tbaa !514
  %48 = sub nsw i32 -10002, %1, !dbg !1734
  %49 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 4, !dbg !1735
  %50 = load i8, i8* %49, align 1, !dbg !1735, !tbaa !514
  %51 = zext i8 %50 to i32, !dbg !1736
  %52 = icmp sgt i32 %48, %51, !dbg !1737
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1738
  br i1 %52, label %57, label %53, !dbg !1738

; <label>:53:                                     ; preds = %41
  %54 = add nsw i32 %48, -1, !dbg !1739
  %55 = sext i32 %54 to i64, !dbg !1740
  %56 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 8, i64 %55, !dbg !1740
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1738
  br label %57, !dbg !1738

; <label>:57:                                     ; preds = %41, %53, %4, %16, %22, %26, %39
  %58 = phi %struct.lua_TValue* [ %13, %4 ], [ %20, %16 ], [ %40, %39 ], [ %33, %26 ], [ %25, %22 ], [ %56, %53 ], [ @luaO_nilobject_, %41 ], !dbg !1741
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1742
  %59 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i64 0, i32 1, !dbg !1744
  %60 = load i32, i32* %59, align 8, !dbg !1744, !tbaa !382
  %61 = icmp eq i32 %60, 6, !dbg !1744
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1744
  br i1 %61, label %62, label %71, !dbg !1744

; <label>:62:                                     ; preds = %57
  %63 = bitcast %struct.lua_TValue* %58 to %struct.CClosure**, !dbg !1744
  %64 = load %struct.CClosure*, %struct.CClosure** %63, align 8, !dbg !1744, !tbaa !514
  %65 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %64, i64 0, i32 3, !dbg !1744
  %66 = load i8, i8* %65, align 2, !dbg !1744, !tbaa !514
  %67 = icmp eq i8 %66, 0, !dbg !1744
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1745
  br i1 %67, label %71, label %68, !dbg !1745

; <label>:68:                                     ; preds = %62
  %69 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %64, i64 0, i32 7, !dbg !1746
  %70 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %69, align 8, !dbg !1746, !tbaa !514
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1745
  br label %71, !dbg !1745

; <label>:71:                                     ; preds = %62, %57, %68
  %72 = phi i32 (%struct.lua_State*)* [ %70, %68 ], [ null, %62 ], [ null, %57 ], !dbg !1745
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1747
  ret i32 (%struct.lua_State*)* %72, !dbg !1747
}

; Function Attrs: noredzone nounwind
define dso_local i8* @lua_touserdata(%struct.lua_State* nocapture, i32) local_unnamed_addr #0 !dbg !1748 {
  %3 = icmp sgt i32 %1, 0, !dbg !1760
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1761
  br i1 %3, label %4, label %14, !dbg !1761

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !1762
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8, !dbg !1762, !tbaa !401
  %7 = add nsw i32 %1, -1, !dbg !1763
  %8 = sext i32 %7 to i64, !dbg !1764
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 %8, !dbg !1764
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1766
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !1766, !tbaa !373
  %12 = icmp ult %struct.lua_TValue* %9, %11, !dbg !1767
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1768
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1769
  %13 = select i1 %12, %struct.lua_TValue* %9, %struct.lua_TValue* @luaO_nilobject_, !dbg !1770
  br label %57

; <label>:14:                                     ; preds = %2
  %15 = icmp sgt i32 %1, -10000, !dbg !1771
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1772
  br i1 %15, label %16, label %21, !dbg !1772

; <label>:16:                                     ; preds = %14
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1773
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %17, align 8, !dbg !1773, !tbaa !373
  %19 = sext i32 %1 to i64, !dbg !1774
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 %19, !dbg !1774
  br label %57, !dbg !1775

; <label>:21:                                     ; preds = %14
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1776
  switch i32 %1, label %41 [
    i32 -10000, label %22
    i32 -10001, label %26
    i32 -10002, label %39
  ], !dbg !1776

; <label>:22:                                     ; preds = %21
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1777
  %24 = load %struct.global_State*, %struct.global_State** %23, align 8, !dbg !1777, !tbaa !486
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %24, i64 0, i32 20, !dbg !1777
  br label %57, !dbg !1778

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1779
  %28 = load %struct.CallInfo*, %struct.CallInfo** %27, align 8, !dbg !1779, !tbaa !419
  %29 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %28, i64 0, i32 1, !dbg !1779
  %30 = bitcast %struct.lua_TValue** %29 to %struct.CClosure***, !dbg !1779
  %31 = load %struct.CClosure**, %struct.CClosure*** %30, align 8, !dbg !1779, !tbaa !604
  %32 = load %struct.CClosure*, %struct.CClosure** %31, align 8, !dbg !1779, !tbaa !514
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !1781
  %34 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %32, i64 0, i32 6, !dbg !1781
  %35 = bitcast %struct.Table** %34 to i64*, !dbg !1781
  %36 = load i64, i64* %35, align 8, !dbg !1781, !tbaa !514
  %37 = bitcast %struct.lua_TValue* %33 to i64*, !dbg !1781
  store i64 %36, i64* %37, align 8, !dbg !1781, !tbaa !514
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !1781
  store i32 5, i32* %38, align 8, !dbg !1781, !tbaa !382
  br label %57

; <label>:39:                                     ; preds = %21
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !1782
  br label %57, !dbg !1783

; <label>:41:                                     ; preds = %21
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1784
  %43 = load %struct.CallInfo*, %struct.CallInfo** %42, align 8, !dbg !1784, !tbaa !419
  %44 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %43, i64 0, i32 1, !dbg !1784
  %45 = bitcast %struct.lua_TValue** %44 to %struct.CClosure***, !dbg !1784
  %46 = load %struct.CClosure**, %struct.CClosure*** %45, align 8, !dbg !1784, !tbaa !604
  %47 = load %struct.CClosure*, %struct.CClosure** %46, align 8, !dbg !1784, !tbaa !514
  %48 = sub nsw i32 -10002, %1, !dbg !1786
  %49 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 4, !dbg !1787
  %50 = load i8, i8* %49, align 1, !dbg !1787, !tbaa !514
  %51 = zext i8 %50 to i32, !dbg !1788
  %52 = icmp sgt i32 %48, %51, !dbg !1789
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1790
  br i1 %52, label %57, label %53, !dbg !1790

; <label>:53:                                     ; preds = %41
  %54 = add nsw i32 %48, -1, !dbg !1791
  %55 = sext i32 %54 to i64, !dbg !1792
  %56 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 8, i64 %55, !dbg !1792
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1790
  br label %57, !dbg !1790

; <label>:57:                                     ; preds = %41, %53, %4, %16, %22, %26, %39
  %58 = phi %struct.lua_TValue* [ %13, %4 ], [ %20, %16 ], [ %40, %39 ], [ %33, %26 ], [ %25, %22 ], [ %56, %53 ], [ @luaO_nilobject_, %41 ], !dbg !1793
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1794
  %59 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i64 0, i32 1, !dbg !1796
  %60 = load i32, i32* %59, align 8, !dbg !1796, !tbaa !382
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1797
  switch i32 %60, label %69 [
    i32 7, label %61
    i32 2, label %66
  ], !dbg !1797

; <label>:61:                                     ; preds = %57
  %62 = bitcast %struct.lua_TValue* %58 to %union.Udata**, !dbg !1798
  %63 = load %union.Udata*, %union.Udata** %62, align 8, !dbg !1798, !tbaa !514
  %64 = getelementptr inbounds %union.Udata, %union.Udata* %63, i64 1, !dbg !1800
  %65 = bitcast %union.Udata* %64 to i8*, !dbg !1801
  br label %69, !dbg !1802

; <label>:66:                                     ; preds = %57
  %67 = bitcast %struct.lua_TValue* %58 to i8**, !dbg !1803
  %68 = load i8*, i8** %67, align 8, !dbg !1803, !tbaa !514
  br label %69, !dbg !1804

; <label>:69:                                     ; preds = %57, %66, %61
  %70 = phi i8* [ %68, %66 ], [ %65, %61 ], [ null, %57 ], !dbg !1805
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1805
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1806
  ret i8* %70, !dbg !1806
}

; Function Attrs: noredzone nounwind
define dso_local %struct.lua_State* @lua_tothread(%struct.lua_State* nocapture, i32) local_unnamed_addr #0 !dbg !1807 {
  %3 = icmp sgt i32 %1, 0, !dbg !1819
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1820
  br i1 %3, label %4, label %14, !dbg !1820

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !1821
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8, !dbg !1821, !tbaa !401
  %7 = add nsw i32 %1, -1, !dbg !1822
  %8 = sext i32 %7 to i64, !dbg !1823
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 %8, !dbg !1823
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1825
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !1825, !tbaa !373
  %12 = icmp ult %struct.lua_TValue* %9, %11, !dbg !1826
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1827
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1828
  %13 = select i1 %12, %struct.lua_TValue* %9, %struct.lua_TValue* @luaO_nilobject_, !dbg !1829
  br label %57

; <label>:14:                                     ; preds = %2
  %15 = icmp sgt i32 %1, -10000, !dbg !1830
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1831
  br i1 %15, label %16, label %21, !dbg !1831

; <label>:16:                                     ; preds = %14
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1832
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %17, align 8, !dbg !1832, !tbaa !373
  %19 = sext i32 %1 to i64, !dbg !1833
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 %19, !dbg !1833
  br label %57, !dbg !1834

; <label>:21:                                     ; preds = %14
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1835
  switch i32 %1, label %41 [
    i32 -10000, label %22
    i32 -10001, label %26
    i32 -10002, label %39
  ], !dbg !1835

; <label>:22:                                     ; preds = %21
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1836
  %24 = load %struct.global_State*, %struct.global_State** %23, align 8, !dbg !1836, !tbaa !486
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %24, i64 0, i32 20, !dbg !1836
  br label %57, !dbg !1837

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1838
  %28 = load %struct.CallInfo*, %struct.CallInfo** %27, align 8, !dbg !1838, !tbaa !419
  %29 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %28, i64 0, i32 1, !dbg !1838
  %30 = bitcast %struct.lua_TValue** %29 to %struct.CClosure***, !dbg !1838
  %31 = load %struct.CClosure**, %struct.CClosure*** %30, align 8, !dbg !1838, !tbaa !604
  %32 = load %struct.CClosure*, %struct.CClosure** %31, align 8, !dbg !1838, !tbaa !514
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !1840
  %34 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %32, i64 0, i32 6, !dbg !1840
  %35 = bitcast %struct.Table** %34 to i64*, !dbg !1840
  %36 = load i64, i64* %35, align 8, !dbg !1840, !tbaa !514
  %37 = bitcast %struct.lua_TValue* %33 to i64*, !dbg !1840
  store i64 %36, i64* %37, align 8, !dbg !1840, !tbaa !514
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !1840
  store i32 5, i32* %38, align 8, !dbg !1840, !tbaa !382
  br label %57

; <label>:39:                                     ; preds = %21
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !1841
  br label %57, !dbg !1842

; <label>:41:                                     ; preds = %21
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1843
  %43 = load %struct.CallInfo*, %struct.CallInfo** %42, align 8, !dbg !1843, !tbaa !419
  %44 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %43, i64 0, i32 1, !dbg !1843
  %45 = bitcast %struct.lua_TValue** %44 to %struct.CClosure***, !dbg !1843
  %46 = load %struct.CClosure**, %struct.CClosure*** %45, align 8, !dbg !1843, !tbaa !604
  %47 = load %struct.CClosure*, %struct.CClosure** %46, align 8, !dbg !1843, !tbaa !514
  %48 = sub nsw i32 -10002, %1, !dbg !1845
  %49 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 4, !dbg !1846
  %50 = load i8, i8* %49, align 1, !dbg !1846, !tbaa !514
  %51 = zext i8 %50 to i32, !dbg !1847
  %52 = icmp sgt i32 %48, %51, !dbg !1848
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1849
  br i1 %52, label %57, label %53, !dbg !1849

; <label>:53:                                     ; preds = %41
  %54 = add nsw i32 %48, -1, !dbg !1850
  %55 = sext i32 %54 to i64, !dbg !1851
  %56 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 8, i64 %55, !dbg !1851
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1849
  br label %57, !dbg !1849

; <label>:57:                                     ; preds = %41, %53, %4, %16, %22, %26, %39
  %58 = phi %struct.lua_TValue* [ %13, %4 ], [ %20, %16 ], [ %40, %39 ], [ %33, %26 ], [ %25, %22 ], [ %56, %53 ], [ @luaO_nilobject_, %41 ], !dbg !1852
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1853
  %59 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i64 0, i32 1, !dbg !1855
  %60 = load i32, i32* %59, align 8, !dbg !1855, !tbaa !382
  %61 = icmp eq i32 %60, 8, !dbg !1855
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1856
  br i1 %61, label %62, label %65, !dbg !1856

; <label>:62:                                     ; preds = %57
  %63 = bitcast %struct.lua_TValue* %58 to %struct.lua_State**, !dbg !1857
  %64 = load %struct.lua_State*, %struct.lua_State** %63, align 8, !dbg !1857, !tbaa !514
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1856
  br label %65, !dbg !1856

; <label>:65:                                     ; preds = %57, %62
  %66 = phi %struct.lua_State* [ %64, %62 ], [ null, %57 ], !dbg !1856
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1858
  ret %struct.lua_State* %66, !dbg !1858
}

; Function Attrs: noredzone nounwind
define dso_local i8* @lua_topointer(%struct.lua_State* nocapture, i32) local_unnamed_addr #0 !dbg !1859 {
  %3 = icmp sgt i32 %1, 0, !dbg !1873
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1874
  br i1 %3, label %4, label %14, !dbg !1874

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !1875
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8, !dbg !1875, !tbaa !401
  %7 = add nsw i32 %1, -1, !dbg !1876
  %8 = sext i32 %7 to i64, !dbg !1877
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 %8, !dbg !1877
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1879
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !1879, !tbaa !373
  %12 = icmp ult %struct.lua_TValue* %9, %11, !dbg !1880
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1881
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1882
  %13 = select i1 %12, %struct.lua_TValue* %9, %struct.lua_TValue* @luaO_nilobject_, !dbg !1883
  br label %57

; <label>:14:                                     ; preds = %2
  %15 = icmp sgt i32 %1, -10000, !dbg !1884
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1885
  br i1 %15, label %16, label %21, !dbg !1885

; <label>:16:                                     ; preds = %14
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1886
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %17, align 8, !dbg !1886, !tbaa !373
  %19 = sext i32 %1 to i64, !dbg !1887
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 %19, !dbg !1887
  br label %57, !dbg !1888

; <label>:21:                                     ; preds = %14
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1889
  switch i32 %1, label %41 [
    i32 -10000, label %22
    i32 -10001, label %26
    i32 -10002, label %39
  ], !dbg !1889

; <label>:22:                                     ; preds = %21
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1890
  %24 = load %struct.global_State*, %struct.global_State** %23, align 8, !dbg !1890, !tbaa !486
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %24, i64 0, i32 20, !dbg !1890
  br label %57, !dbg !1891

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1892
  %28 = load %struct.CallInfo*, %struct.CallInfo** %27, align 8, !dbg !1892, !tbaa !419
  %29 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %28, i64 0, i32 1, !dbg !1892
  %30 = bitcast %struct.lua_TValue** %29 to %struct.CClosure***, !dbg !1892
  %31 = load %struct.CClosure**, %struct.CClosure*** %30, align 8, !dbg !1892, !tbaa !604
  %32 = load %struct.CClosure*, %struct.CClosure** %31, align 8, !dbg !1892, !tbaa !514
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !1894
  %34 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %32, i64 0, i32 6, !dbg !1894
  %35 = bitcast %struct.Table** %34 to i64*, !dbg !1894
  %36 = load i64, i64* %35, align 8, !dbg !1894, !tbaa !514
  %37 = bitcast %struct.lua_TValue* %33 to i64*, !dbg !1894
  store i64 %36, i64* %37, align 8, !dbg !1894, !tbaa !514
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !1894
  store i32 5, i32* %38, align 8, !dbg !1894, !tbaa !382
  br label %57

; <label>:39:                                     ; preds = %21
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !1895
  br label %57, !dbg !1896

; <label>:41:                                     ; preds = %21
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1897
  %43 = load %struct.CallInfo*, %struct.CallInfo** %42, align 8, !dbg !1897, !tbaa !419
  %44 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %43, i64 0, i32 1, !dbg !1897
  %45 = bitcast %struct.lua_TValue** %44 to %struct.CClosure***, !dbg !1897
  %46 = load %struct.CClosure**, %struct.CClosure*** %45, align 8, !dbg !1897, !tbaa !604
  %47 = load %struct.CClosure*, %struct.CClosure** %46, align 8, !dbg !1897, !tbaa !514
  %48 = sub nsw i32 -10002, %1, !dbg !1899
  %49 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 4, !dbg !1900
  %50 = load i8, i8* %49, align 1, !dbg !1900, !tbaa !514
  %51 = zext i8 %50 to i32, !dbg !1901
  %52 = icmp sgt i32 %48, %51, !dbg !1902
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1903
  br i1 %52, label %57, label %53, !dbg !1903

; <label>:53:                                     ; preds = %41
  %54 = add nsw i32 %48, -1, !dbg !1904
  %55 = sext i32 %54 to i64, !dbg !1905
  %56 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 8, i64 %55, !dbg !1905
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1903
  br label %57, !dbg !1903

; <label>:57:                                     ; preds = %41, %53, %4, %16, %22, %26, %39
  %58 = phi %struct.lua_TValue* [ %13, %4 ], [ %20, %16 ], [ %40, %39 ], [ %33, %26 ], [ %25, %22 ], [ %56, %53 ], [ @luaO_nilobject_, %41 ], !dbg !1906
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1907
  %59 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i64 0, i32 1, !dbg !1909
  %60 = load i32, i32* %59, align 8, !dbg !1909, !tbaa !382
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1910
  switch i32 %60, label %72 [
    i32 5, label %61
    i32 6, label %64
    i32 8, label %67
    i32 7, label %70
    i32 2, label %70
  ], !dbg !1910

; <label>:61:                                     ; preds = %57
  %62 = bitcast %struct.lua_TValue* %58 to i8**, !dbg !1911
  %63 = load i8*, i8** %62, align 8, !dbg !1911, !tbaa !514
  br label %72, !dbg !1913

; <label>:64:                                     ; preds = %57
  %65 = bitcast %struct.lua_TValue* %58 to i8**, !dbg !1914
  %66 = load i8*, i8** %65, align 8, !dbg !1914, !tbaa !514
  br label %72, !dbg !1915

; <label>:67:                                     ; preds = %57
  %68 = bitcast %struct.lua_TValue* %58 to i8**, !dbg !1916
  %69 = load i8*, i8** %68, align 8, !dbg !1916, !tbaa !514
  br label %72, !dbg !1917

; <label>:70:                                     ; preds = %57, %57
  %71 = tail call i8* @lua_touserdata(%struct.lua_State* %0, i32 %1) #6, !dbg !1918
  br label %72, !dbg !1919

; <label>:72:                                     ; preds = %57, %70, %67, %64, %61
  %73 = phi i8* [ %71, %70 ], [ %69, %67 ], [ %66, %64 ], [ %63, %61 ], [ null, %57 ], !dbg !1920
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1920
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1921
  ret i8* %73, !dbg !1921
}

; Function Attrs: noredzone nounwind
define dso_local void @lua_pushnil(%struct.lua_State* nocapture) local_unnamed_addr #0 !dbg !1922 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1928
  %3 = load %struct.lua_TValue*, %struct.lua_TValue** %2, align 8, !dbg !1928, !tbaa !373
  %4 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3, i64 0, i32 1, !dbg !1928
  store i32 0, i32* %4, align 8, !dbg !1928, !tbaa !382
  %5 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3, i64 1, !dbg !1929
  store %struct.lua_TValue* %5, %struct.lua_TValue** %2, align 8, !dbg !1929, !tbaa !373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1931
  ret void, !dbg !1931
}

; Function Attrs: noredzone nounwind
define dso_local void @lua_pushnumber(%struct.lua_State* nocapture, double) local_unnamed_addr #0 !dbg !1932 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1942
  %4 = load %struct.lua_TValue*, %struct.lua_TValue** %3, align 8, !dbg !1942, !tbaa !373
  %5 = bitcast %struct.lua_TValue* %4 to double*, !dbg !1942
  store double %1, double* %5, align 8, !dbg !1942, !tbaa !514
  %6 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %4, i64 0, i32 1, !dbg !1942
  store i32 3, i32* %6, align 8, !dbg !1942, !tbaa !382
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %3, align 8, !dbg !1943, !tbaa !373
  %8 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %7, i64 1, !dbg !1943
  store %struct.lua_TValue* %8, %struct.lua_TValue** %3, align 8, !dbg !1943, !tbaa !373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1945
  ret void, !dbg !1945
}

; Function Attrs: noredzone nounwind
define dso_local void @lua_pushinteger(%struct.lua_State* nocapture, i64) local_unnamed_addr #0 !dbg !1946 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1956
  %4 = load %struct.lua_TValue*, %struct.lua_TValue** %3, align 8, !dbg !1956, !tbaa !373
  %5 = sitofp i64 %1 to double, !dbg !1956
  %6 = bitcast %struct.lua_TValue* %4 to double*, !dbg !1956
  store double %5, double* %6, align 8, !dbg !1956, !tbaa !514
  %7 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %4, i64 0, i32 1, !dbg !1956
  store i32 3, i32* %7, align 8, !dbg !1956, !tbaa !382
  %8 = load %struct.lua_TValue*, %struct.lua_TValue** %3, align 8, !dbg !1957, !tbaa !373
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %8, i64 1, !dbg !1957
  store %struct.lua_TValue* %9, %struct.lua_TValue** %3, align 8, !dbg !1957, !tbaa !373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1959
  ret void, !dbg !1959
}

; Function Attrs: noredzone nounwind
define dso_local void @lua_pushlstring(%struct.lua_State*, i8*, i64) local_unnamed_addr #0 !dbg !1960 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1972
  %5 = load %struct.global_State*, %struct.global_State** %4, align 8, !dbg !1972, !tbaa !486
  %6 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 14, !dbg !1972
  %7 = load i64, i64* %6, align 8, !dbg !1972, !tbaa !508
  %8 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 13, !dbg !1972
  %9 = load i64, i64* %8, align 8, !dbg !1972, !tbaa !509
  %10 = icmp ult i64 %7, %9, !dbg !1972
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1975
  br i1 %10, label %12, label %11, !dbg !1975

; <label>:11:                                     ; preds = %3
  tail call void @luaC_step(%struct.lua_State* nonnull %0) #5, !dbg !1972
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1972
  br label %12, !dbg !1972

; <label>:12:                                     ; preds = %3, %11
  %13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1976
  %14 = load %struct.lua_TValue*, %struct.lua_TValue** %13, align 8, !dbg !1976, !tbaa !373
  %15 = tail call %union.TString* @luaS_newlstr(%struct.lua_State* nonnull %0, i8* %1, i64 %2) #5, !dbg !1976
  %16 = bitcast %struct.lua_TValue* %14 to %union.TString**, !dbg !1976
  store %union.TString* %15, %union.TString** %16, align 8, !dbg !1976, !tbaa !514
  %17 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %14, i64 0, i32 1, !dbg !1976
  store i32 4, i32* %17, align 8, !dbg !1976, !tbaa !382
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %13, align 8, !dbg !1977, !tbaa !373
  %19 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 1, !dbg !1977
  store %struct.lua_TValue* %19, %struct.lua_TValue** %13, align 8, !dbg !1977, !tbaa !373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1979
  ret void, !dbg !1979
}

; Function Attrs: noredzone
declare hidden %union.TString* @luaS_newlstr(%struct.lua_State*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @lua_pushstring(%struct.lua_State*, i8*) local_unnamed_addr #0 !dbg !1980 {
  %3 = icmp eq i8* %1, null, !dbg !1988
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1990
  br i1 %3, label %4, label %8, !dbg !1990

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1993
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8, !dbg !1993, !tbaa !373
  %7 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 0, i32 1, !dbg !1993
  store i32 0, i32* %7, align 8, !dbg !1993, !tbaa !382
  br label %25, !dbg !1994

; <label>:8:                                      ; preds = %2
  %9 = tail call i64 @strlen(i8* nonnull %1) #5, !dbg !1995
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !2000
  %11 = load %struct.global_State*, %struct.global_State** %10, align 8, !dbg !2000, !tbaa !486
  %12 = getelementptr inbounds %struct.global_State, %struct.global_State* %11, i64 0, i32 14, !dbg !2000
  %13 = load i64, i64* %12, align 8, !dbg !2000, !tbaa !508
  %14 = getelementptr inbounds %struct.global_State, %struct.global_State* %11, i64 0, i32 13, !dbg !2000
  %15 = load i64, i64* %14, align 8, !dbg !2000, !tbaa !509
  %16 = icmp ult i64 %13, %15, !dbg !2000
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2001
  br i1 %16, label %18, label %17, !dbg !2001

; <label>:17:                                     ; preds = %8
  tail call void @luaC_step(%struct.lua_State* nonnull %0) #5, !dbg !2000
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2000
  br label %18, !dbg !2000

; <label>:18:                                     ; preds = %8, %17
  %19 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2002
  %20 = load %struct.lua_TValue*, %struct.lua_TValue** %19, align 8, !dbg !2002, !tbaa !373
  %21 = tail call %union.TString* @luaS_newlstr(%struct.lua_State* nonnull %0, i8* nonnull %1, i64 %9) #5, !dbg !2002
  %22 = bitcast %struct.lua_TValue* %20 to %union.TString**, !dbg !2002
  store %union.TString* %21, %union.TString** %22, align 8, !dbg !2002, !tbaa !514
  %23 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %20, i64 0, i32 1, !dbg !2002
  store i32 4, i32* %23, align 8, !dbg !2002, !tbaa !382
  %24 = load %struct.lua_TValue*, %struct.lua_TValue** %19, align 8, !dbg !2003, !tbaa !373
  br label %25

; <label>:25:                                     ; preds = %18, %4
  %26 = phi %struct.lua_TValue* [ %24, %18 ], [ %6, %4 ]
  %27 = phi %struct.lua_TValue** [ %19, %18 ], [ %5, %4 ]
  %28 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %26, i64 1, !dbg !2004
  store %struct.lua_TValue* %28, %struct.lua_TValue** %27, align 8, !dbg !2004, !tbaa !373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2004
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2005
  ret void, !dbg !2005
}

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i8* @lua_pushvfstring(%struct.lua_State*, i8*, %struct.__va_list_tag*) local_unnamed_addr #0 !dbg !2006 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !2024
  %5 = load %struct.global_State*, %struct.global_State** %4, align 8, !dbg !2024, !tbaa !486
  %6 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 14, !dbg !2024
  %7 = load i64, i64* %6, align 8, !dbg !2024, !tbaa !508
  %8 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 13, !dbg !2024
  %9 = load i64, i64* %8, align 8, !dbg !2024, !tbaa !509
  %10 = icmp ult i64 %7, %9, !dbg !2024
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2027
  br i1 %10, label %12, label %11, !dbg !2027

; <label>:11:                                     ; preds = %3
  tail call void @luaC_step(%struct.lua_State* nonnull %0) #5, !dbg !2024
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2024
  br label %12, !dbg !2024

; <label>:12:                                     ; preds = %3, %11
  %13 = tail call i8* @luaO_pushvfstring(%struct.lua_State* nonnull %0, i8* %1, %struct.__va_list_tag* %2) #5, !dbg !2028
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2030
  ret i8* %13, !dbg !2030
}

; Function Attrs: noredzone
declare hidden i8* @luaO_pushvfstring(%struct.lua_State*, i8*, %struct.__va_list_tag*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i8* @lua_pushfstring(%struct.lua_State*, i8*, ...) local_unnamed_addr #0 !dbg !2031 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !2045
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #4, !dbg !2045
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !2047
  %6 = load %struct.global_State*, %struct.global_State** %5, align 8, !dbg !2047, !tbaa !486
  %7 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i64 0, i32 14, !dbg !2047
  %8 = load i64, i64* %7, align 8, !dbg !2047, !tbaa !508
  %9 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i64 0, i32 13, !dbg !2047
  %10 = load i64, i64* %9, align 8, !dbg !2047, !tbaa !509
  %11 = icmp ult i64 %8, %10, !dbg !2047
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2050
  br i1 %11, label %13, label %12, !dbg !2050

; <label>:12:                                     ; preds = %2
  tail call void @luaC_step(%struct.lua_State* nonnull %0) #5, !dbg !2047
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2047
  br label %13, !dbg !2047

; <label>:13:                                     ; preds = %2, %12
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, !dbg !2051
  call void @llvm.va_start(i8* nonnull %4), !dbg !2051
  %15 = call i8* @luaO_pushvfstring(%struct.lua_State* nonnull %0, i8* %1, %struct.__va_list_tag* nonnull %14) #5, !dbg !2052
  call void @llvm.va_end(i8* nonnull %4), !dbg !2054
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #4, !dbg !2055
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2056
  ret i8* %15, !dbg !2056
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

; Function Attrs: noredzone nounwind
define dso_local void @lua_pushcclosure(%struct.lua_State*, i32 (%struct.lua_State*)*, i32) local_unnamed_addr #0 !dbg !2057 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !2073
  %5 = load %struct.global_State*, %struct.global_State** %4, align 8, !dbg !2073, !tbaa !486
  %6 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 14, !dbg !2073
  %7 = load i64, i64* %6, align 8, !dbg !2073, !tbaa !508
  %8 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 13, !dbg !2073
  %9 = load i64, i64* %8, align 8, !dbg !2073, !tbaa !509
  %10 = icmp ult i64 %7, %9, !dbg !2073
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2076
  br i1 %10, label %12, label %11, !dbg !2076

; <label>:11:                                     ; preds = %3
  tail call void @luaC_step(%struct.lua_State* nonnull %0) #5, !dbg !2073
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2073
  br label %12, !dbg !2073

; <label>:12:                                     ; preds = %3, %11
  %13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2089
  %14 = load %struct.CallInfo*, %struct.CallInfo** %13, align 8, !dbg !2089, !tbaa !419
  %15 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 12, !dbg !2090
  %16 = load %struct.CallInfo*, %struct.CallInfo** %15, align 8, !dbg !2090, !tbaa !715
  %17 = icmp eq %struct.CallInfo* %14, %16, !dbg !2091
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2092
  br i1 %17, label %18, label %21, !dbg !2092

; <label>:18:                                     ; preds = %12
  %19 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, i32 0, i32 0, !dbg !2093
  %20 = bitcast %union.GCObject** %19 to %struct.Table**, !dbg !2093
  br label %27, !dbg !2094

; <label>:21:                                     ; preds = %12
  %22 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %14, i64 0, i32 1, !dbg !2095
  %23 = bitcast %struct.lua_TValue** %22 to %struct.CClosure***, !dbg !2095
  %24 = load %struct.CClosure**, %struct.CClosure*** %23, align 8, !dbg !2095, !tbaa !604
  %25 = load %struct.CClosure*, %struct.CClosure** %24, align 8, !dbg !2095, !tbaa !514
  %26 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %25, i64 0, i32 6, !dbg !2097
  br label %27

; <label>:27:                                     ; preds = %18, %21
  %28 = phi %struct.Table** [ %20, %18 ], [ %26, %21 ]
  %29 = load %struct.Table*, %struct.Table** %28, align 8, !dbg !2098, !tbaa !514
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2099
  %30 = tail call %union.Closure* @luaF_newCclosure(%struct.lua_State* nonnull %0, i32 %2, %struct.Table* %29) #5, !dbg !2100
  %31 = getelementptr inbounds %union.Closure, %union.Closure* %30, i64 0, i32 0, i32 7, !dbg !2102
  store i32 (%struct.lua_State*)* %1, i32 (%struct.lua_State*)** %31, align 8, !dbg !2103, !tbaa !514
  %32 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2104
  %33 = load %struct.lua_TValue*, %struct.lua_TValue** %32, align 8, !dbg !2105, !tbaa !373
  %34 = sext i32 %2 to i64, !dbg !2105
  %35 = sub nsw i64 0, %34, !dbg !2105
  %36 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %33, i64 %35, !dbg !2105
  store %struct.lua_TValue* %36, %struct.lua_TValue** %32, align 8, !dbg !2105, !tbaa !373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2106
  %37 = icmp eq i32 %2, 0, !dbg !2106
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2106
  br i1 %37, label %81, label %38, !dbg !2106

; <label>:38:                                     ; preds = %27
  %39 = and i64 %34, 1, !dbg !2107
  %40 = icmp eq i64 %39, 0, !dbg !2107
  br i1 %40, label %52, label %41, !dbg !2107

; <label>:41:                                     ; preds = %38
  %42 = add nsw i64 %34, -1, !dbg !2107
  %43 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %33, i64 -1, !dbg !2108
  %44 = getelementptr inbounds %union.Closure, %union.Closure* %30, i64 0, i32 0, i32 8, i64 %42, !dbg !2108
  %45 = bitcast %struct.lua_TValue* %43 to i64*, !dbg !2108
  %46 = bitcast %struct.lua_TValue* %44 to i64*, !dbg !2108
  %47 = load i64, i64* %45, align 8, !dbg !2108
  store i64 %47, i64* %46, align 8, !dbg !2108
  %48 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %33, i64 -1, i32 1, !dbg !2108
  %49 = load i32, i32* %48, align 8, !dbg !2108, !tbaa !382
  %50 = getelementptr inbounds %union.Closure, %union.Closure* %30, i64 0, i32 0, i32 8, i64 %42, i32 1, !dbg !2108
  store i32 %49, i32* %50, align 8, !dbg !2108, !tbaa !382
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2106
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2106
  %51 = load %struct.lua_TValue*, %struct.lua_TValue** %32, align 8, !dbg !2109, !tbaa !373
  br label %52, !dbg !2106

; <label>:52:                                     ; preds = %38, %41
  %53 = phi %struct.lua_TValue* [ undef, %38 ], [ %51, %41 ]
  %54 = phi i64 [ %34, %38 ], [ %42, %41 ]
  %55 = phi %struct.lua_TValue* [ %36, %38 ], [ %51, %41 ]
  %56 = icmp eq i32 %2, 1, !dbg !2107
  br i1 %56, label %81, label %57, !dbg !2107

; <label>:57:                                     ; preds = %52, %57
  %58 = phi i64 [ %70, %57 ], [ %54, %52 ]
  %59 = phi %struct.lua_TValue* [ %80, %57 ], [ %55, %52 ]
  %60 = add nsw i64 %58, -1, !dbg !2107
  %61 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %59, i64 %60, !dbg !2108
  %62 = getelementptr inbounds %union.Closure, %union.Closure* %30, i64 0, i32 0, i32 8, i64 %60, !dbg !2108
  %63 = bitcast %struct.lua_TValue* %61 to i64*, !dbg !2108
  %64 = bitcast %struct.lua_TValue* %62 to i64*, !dbg !2108
  %65 = load i64, i64* %63, align 8, !dbg !2108
  store i64 %65, i64* %64, align 8, !dbg !2108
  %66 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %59, i64 %60, i32 1, !dbg !2108
  %67 = load i32, i32* %66, align 8, !dbg !2108, !tbaa !382
  %68 = getelementptr inbounds %union.Closure, %union.Closure* %30, i64 0, i32 0, i32 8, i64 %60, i32 1, !dbg !2108
  store i32 %67, i32* %68, align 8, !dbg !2108, !tbaa !382
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2106
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2106
  %69 = load %struct.lua_TValue*, %struct.lua_TValue** %32, align 8, !dbg !2109, !tbaa !373
  %70 = add nsw i64 %58, -2, !dbg !2107
  %71 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %69, i64 %70, !dbg !2108
  %72 = getelementptr inbounds %union.Closure, %union.Closure* %30, i64 0, i32 0, i32 8, i64 %70, !dbg !2108
  %73 = bitcast %struct.lua_TValue* %71 to i64*, !dbg !2108
  %74 = bitcast %struct.lua_TValue* %72 to i64*, !dbg !2108
  %75 = load i64, i64* %73, align 8, !dbg !2108
  store i64 %75, i64* %74, align 8, !dbg !2108
  %76 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %69, i64 %70, i32 1, !dbg !2108
  %77 = load i32, i32* %76, align 8, !dbg !2108, !tbaa !382
  %78 = getelementptr inbounds %union.Closure, %union.Closure* %30, i64 0, i32 0, i32 8, i64 %70, i32 1, !dbg !2108
  store i32 %77, i32* %78, align 8, !dbg !2108, !tbaa !382
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2106
  %79 = icmp eq i64 %70, 0
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2106
  %80 = load %struct.lua_TValue*, %struct.lua_TValue** %32, align 8, !dbg !2109, !tbaa !373
  br i1 %79, label %81, label %57, !dbg !2106, !llvm.loop !2110

; <label>:81:                                     ; preds = %52, %57, %27
  %82 = phi %struct.lua_TValue* [ %36, %27 ], [ %53, %52 ], [ %80, %57 ], !dbg !2109
  %83 = bitcast %struct.lua_TValue* %82 to %union.Closure**, !dbg !2112
  store %union.Closure* %30, %union.Closure** %83, align 8, !dbg !2112, !tbaa !514
  %84 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %82, i64 0, i32 1, !dbg !2112
  store i32 6, i32* %84, align 8, !dbg !2112, !tbaa !382
  %85 = load %struct.lua_TValue*, %struct.lua_TValue** %32, align 8, !dbg !2113, !tbaa !373
  %86 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %85, i64 1, !dbg !2113
  store %struct.lua_TValue* %86, %struct.lua_TValue** %32, align 8, !dbg !2113, !tbaa !373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2115
  ret void, !dbg !2115
}

; Function Attrs: noredzone
declare hidden %union.Closure* @luaF_newCclosure(%struct.lua_State*, i32, %struct.Table*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @lua_pushboolean(%struct.lua_State* nocapture, i32) local_unnamed_addr #0 !dbg !2116 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2124
  %4 = load %struct.lua_TValue*, %struct.lua_TValue** %3, align 8, !dbg !2124, !tbaa !373
  %5 = icmp ne i32 %1, 0, !dbg !2124
  %6 = zext i1 %5 to i32, !dbg !2124
  %7 = bitcast %struct.lua_TValue* %4 to i32*, !dbg !2124
  store i32 %6, i32* %7, align 8, !dbg !2124, !tbaa !514
  %8 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %4, i64 0, i32 1, !dbg !2124
  store i32 1, i32* %8, align 8, !dbg !2124, !tbaa !382
  %9 = load %struct.lua_TValue*, %struct.lua_TValue** %3, align 8, !dbg !2125, !tbaa !373
  %10 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %9, i64 1, !dbg !2125
  store %struct.lua_TValue* %10, %struct.lua_TValue** %3, align 8, !dbg !2125, !tbaa !373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2127
  ret void, !dbg !2127
}

; Function Attrs: noredzone nounwind
define dso_local void @lua_pushlightuserdata(%struct.lua_State* nocapture, i8*) local_unnamed_addr #0 !dbg !2128 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2138
  %4 = load %struct.lua_TValue*, %struct.lua_TValue** %3, align 8, !dbg !2138, !tbaa !373
  %5 = bitcast %struct.lua_TValue* %4 to i8**, !dbg !2138
  store i8* %1, i8** %5, align 8, !dbg !2138, !tbaa !514
  %6 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %4, i64 0, i32 1, !dbg !2138
  store i32 2, i32* %6, align 8, !dbg !2138, !tbaa !382
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %3, align 8, !dbg !2139, !tbaa !373
  %8 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %7, i64 1, !dbg !2139
  store %struct.lua_TValue* %8, %struct.lua_TValue** %3, align 8, !dbg !2139, !tbaa !373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2141
  ret void, !dbg !2141
}

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_pushthread(%struct.lua_State*) local_unnamed_addr #0 !dbg !2142 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2148
  %3 = load %struct.lua_TValue*, %struct.lua_TValue** %2, align 8, !dbg !2148, !tbaa !373
  %4 = bitcast %struct.lua_TValue* %3 to %struct.lua_State**, !dbg !2148
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8, !dbg !2148, !tbaa !514
  %5 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3, i64 0, i32 1, !dbg !2148
  store i32 8, i32* %5, align 8, !dbg !2148, !tbaa !382
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %2, align 8, !dbg !2149, !tbaa !373
  %7 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 1, !dbg !2149
  store %struct.lua_TValue* %7, %struct.lua_TValue** %2, align 8, !dbg !2149, !tbaa !373
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !2151
  %9 = load %struct.global_State*, %struct.global_State** %8, align 8, !dbg !2151, !tbaa !486
  %10 = getelementptr inbounds %struct.global_State, %struct.global_State* %9, i64 0, i32 21, !dbg !2152
  %11 = load %struct.lua_State*, %struct.lua_State** %10, align 8, !dbg !2152, !tbaa !2153
  %12 = icmp eq %struct.lua_State* %11, %0, !dbg !2154
  %13 = zext i1 %12 to i32, !dbg !2154
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2155
  ret i32 %13, !dbg !2155
}

; Function Attrs: noredzone nounwind
define dso_local void @lua_gettable(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !2156 {
  %3 = icmp sgt i32 %1, 0, !dbg !2166
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2167
  br i1 %3, label %4, label %14, !dbg !2167

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !2168
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8, !dbg !2168, !tbaa !401
  %7 = add nsw i32 %1, -1, !dbg !2169
  %8 = sext i32 %7 to i64, !dbg !2170
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 %8, !dbg !2170
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2172
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !2172, !tbaa !373
  %12 = icmp ult %struct.lua_TValue* %9, %11, !dbg !2173
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2174
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2175
  %13 = select i1 %12, %struct.lua_TValue* %9, %struct.lua_TValue* @luaO_nilobject_, !dbg !2176
  br label %57

; <label>:14:                                     ; preds = %2
  %15 = icmp sgt i32 %1, -10000, !dbg !2177
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2178
  br i1 %15, label %16, label %21, !dbg !2178

; <label>:16:                                     ; preds = %14
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2179
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %17, align 8, !dbg !2179, !tbaa !373
  %19 = sext i32 %1 to i64, !dbg !2180
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 %19, !dbg !2180
  br label %57, !dbg !2181

; <label>:21:                                     ; preds = %14
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2182
  switch i32 %1, label %41 [
    i32 -10000, label %22
    i32 -10001, label %26
    i32 -10002, label %39
  ], !dbg !2182

; <label>:22:                                     ; preds = %21
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !2183
  %24 = load %struct.global_State*, %struct.global_State** %23, align 8, !dbg !2183, !tbaa !486
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %24, i64 0, i32 20, !dbg !2183
  br label %57, !dbg !2184

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2185
  %28 = load %struct.CallInfo*, %struct.CallInfo** %27, align 8, !dbg !2185, !tbaa !419
  %29 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %28, i64 0, i32 1, !dbg !2185
  %30 = bitcast %struct.lua_TValue** %29 to %struct.CClosure***, !dbg !2185
  %31 = load %struct.CClosure**, %struct.CClosure*** %30, align 8, !dbg !2185, !tbaa !604
  %32 = load %struct.CClosure*, %struct.CClosure** %31, align 8, !dbg !2185, !tbaa !514
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !2187
  %34 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %32, i64 0, i32 6, !dbg !2187
  %35 = bitcast %struct.Table** %34 to i64*, !dbg !2187
  %36 = load i64, i64* %35, align 8, !dbg !2187, !tbaa !514
  %37 = bitcast %struct.lua_TValue* %33 to i64*, !dbg !2187
  store i64 %36, i64* %37, align 8, !dbg !2187, !tbaa !514
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !2187
  store i32 5, i32* %38, align 8, !dbg !2187, !tbaa !382
  br label %57

; <label>:39:                                     ; preds = %21
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !2188
  br label %57, !dbg !2189

; <label>:41:                                     ; preds = %21
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2190
  %43 = load %struct.CallInfo*, %struct.CallInfo** %42, align 8, !dbg !2190, !tbaa !419
  %44 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %43, i64 0, i32 1, !dbg !2190
  %45 = bitcast %struct.lua_TValue** %44 to %struct.CClosure***, !dbg !2190
  %46 = load %struct.CClosure**, %struct.CClosure*** %45, align 8, !dbg !2190, !tbaa !604
  %47 = load %struct.CClosure*, %struct.CClosure** %46, align 8, !dbg !2190, !tbaa !514
  %48 = sub nsw i32 -10002, %1, !dbg !2192
  %49 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 4, !dbg !2193
  %50 = load i8, i8* %49, align 1, !dbg !2193, !tbaa !514
  %51 = zext i8 %50 to i32, !dbg !2194
  %52 = icmp sgt i32 %48, %51, !dbg !2195
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2196
  br i1 %52, label %57, label %53, !dbg !2196

; <label>:53:                                     ; preds = %41
  %54 = add nsw i32 %48, -1, !dbg !2197
  %55 = sext i32 %54 to i64, !dbg !2198
  %56 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 8, i64 %55, !dbg !2198
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2196
  br label %57, !dbg !2196

; <label>:57:                                     ; preds = %41, %53, %4, %16, %22, %26, %39
  %58 = phi %struct.lua_TValue* [ %13, %4 ], [ %20, %16 ], [ %40, %39 ], [ %33, %26 ], [ %25, %22 ], [ %56, %53 ], [ @luaO_nilobject_, %41 ], !dbg !2199
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2200
  %59 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2202
  %60 = load %struct.lua_TValue*, %struct.lua_TValue** %59, align 8, !dbg !2202, !tbaa !373
  %61 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %60, i64 -1, !dbg !2203
  tail call void @luaV_gettable(%struct.lua_State* %0, %struct.lua_TValue* %58, %struct.lua_TValue* nonnull %61, %struct.lua_TValue* nonnull %61) #5, !dbg !2204
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2205
  ret void, !dbg !2205
}

; Function Attrs: noredzone
declare hidden void @luaV_gettable(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @lua_getfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #0 !dbg !2206 {
  %4 = alloca %struct.lua_TValue, align 8
  %5 = bitcast %struct.lua_TValue* %4 to i8*, !dbg !2220
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #4, !dbg !2220
  %6 = icmp sgt i32 %1, 0, !dbg !2224
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2225
  br i1 %6, label %7, label %17, !dbg !2225

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !2226
  %9 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8, !dbg !2226, !tbaa !401
  %10 = add nsw i32 %1, -1, !dbg !2227
  %11 = sext i32 %10 to i64, !dbg !2228
  %12 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %9, i64 %11, !dbg !2228
  %13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2230
  %14 = load %struct.lua_TValue*, %struct.lua_TValue** %13, align 8, !dbg !2230, !tbaa !373
  %15 = icmp ult %struct.lua_TValue* %12, %14, !dbg !2231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2232
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2233
  %16 = select i1 %15, %struct.lua_TValue* %12, %struct.lua_TValue* @luaO_nilobject_, !dbg !2234
  br label %60

; <label>:17:                                     ; preds = %3
  %18 = icmp sgt i32 %1, -10000, !dbg !2235
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2236
  br i1 %18, label %19, label %24, !dbg !2236

; <label>:19:                                     ; preds = %17
  %20 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2237
  %21 = load %struct.lua_TValue*, %struct.lua_TValue** %20, align 8, !dbg !2237, !tbaa !373
  %22 = sext i32 %1 to i64, !dbg !2238
  %23 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %21, i64 %22, !dbg !2238
  br label %60, !dbg !2239

; <label>:24:                                     ; preds = %17
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2240
  switch i32 %1, label %44 [
    i32 -10000, label %25
    i32 -10001, label %29
    i32 -10002, label %42
  ], !dbg !2240

; <label>:25:                                     ; preds = %24
  %26 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !2241
  %27 = load %struct.global_State*, %struct.global_State** %26, align 8, !dbg !2241, !tbaa !486
  %28 = getelementptr inbounds %struct.global_State, %struct.global_State* %27, i64 0, i32 20, !dbg !2241
  br label %60, !dbg !2242

; <label>:29:                                     ; preds = %24
  %30 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2243
  %31 = load %struct.CallInfo*, %struct.CallInfo** %30, align 8, !dbg !2243, !tbaa !419
  %32 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %31, i64 0, i32 1, !dbg !2243
  %33 = bitcast %struct.lua_TValue** %32 to %struct.CClosure***, !dbg !2243
  %34 = load %struct.CClosure**, %struct.CClosure*** %33, align 8, !dbg !2243, !tbaa !604
  %35 = load %struct.CClosure*, %struct.CClosure** %34, align 8, !dbg !2243, !tbaa !514
  %36 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !2245
  %37 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %35, i64 0, i32 6, !dbg !2245
  %38 = bitcast %struct.Table** %37 to i64*, !dbg !2245
  %39 = load i64, i64* %38, align 8, !dbg !2245, !tbaa !514
  %40 = bitcast %struct.lua_TValue* %36 to i64*, !dbg !2245
  store i64 %39, i64* %40, align 8, !dbg !2245, !tbaa !514
  %41 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !2245
  store i32 5, i32* %41, align 8, !dbg !2245, !tbaa !382
  br label %60

; <label>:42:                                     ; preds = %24
  %43 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !2246
  br label %60, !dbg !2247

; <label>:44:                                     ; preds = %24
  %45 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2248
  %46 = load %struct.CallInfo*, %struct.CallInfo** %45, align 8, !dbg !2248, !tbaa !419
  %47 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %46, i64 0, i32 1, !dbg !2248
  %48 = bitcast %struct.lua_TValue** %47 to %struct.CClosure***, !dbg !2248
  %49 = load %struct.CClosure**, %struct.CClosure*** %48, align 8, !dbg !2248, !tbaa !604
  %50 = load %struct.CClosure*, %struct.CClosure** %49, align 8, !dbg !2248, !tbaa !514
  %51 = sub nsw i32 -10002, %1, !dbg !2250
  %52 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %50, i64 0, i32 4, !dbg !2251
  %53 = load i8, i8* %52, align 1, !dbg !2251, !tbaa !514
  %54 = zext i8 %53 to i32, !dbg !2252
  %55 = icmp sgt i32 %51, %54, !dbg !2253
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2254
  br i1 %55, label %60, label %56, !dbg !2254

; <label>:56:                                     ; preds = %44
  %57 = add nsw i32 %51, -1, !dbg !2255
  %58 = sext i32 %57 to i64, !dbg !2256
  %59 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %50, i64 0, i32 8, i64 %58, !dbg !2256
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2254
  br label %60, !dbg !2254

; <label>:60:                                     ; preds = %44, %56, %7, %19, %25, %29, %42
  %61 = phi %struct.lua_TValue* [ %16, %7 ], [ %23, %19 ], [ %43, %42 ], [ %36, %29 ], [ %28, %25 ], [ %59, %56 ], [ @luaO_nilobject_, %44 ], !dbg !2257
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2258
  %62 = tail call i64 @strlen(i8* %2) #5, !dbg !2260
  %63 = tail call %union.TString* @luaS_newlstr(%struct.lua_State* %0, i8* %2, i64 %62) #5, !dbg !2260
  %64 = bitcast %struct.lua_TValue* %4 to %union.TString**, !dbg !2260
  store %union.TString* %63, %union.TString** %64, align 8, !dbg !2260, !tbaa !514
  %65 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %4, i64 0, i32 1, !dbg !2260
  store i32 4, i32* %65, align 8, !dbg !2260, !tbaa !382
  %66 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2261
  %67 = load %struct.lua_TValue*, %struct.lua_TValue** %66, align 8, !dbg !2261, !tbaa !373
  call void @luaV_gettable(%struct.lua_State* %0, %struct.lua_TValue* %61, %struct.lua_TValue* nonnull %4, %struct.lua_TValue* %67) #5, !dbg !2263
  %68 = load %struct.lua_TValue*, %struct.lua_TValue** %66, align 8, !dbg !2264, !tbaa !373
  %69 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %68, i64 1, !dbg !2264
  store %struct.lua_TValue* %69, %struct.lua_TValue** %66, align 8, !dbg !2264, !tbaa !373
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #4, !dbg !2266
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2266
  ret void, !dbg !2266
}

; Function Attrs: noredzone nounwind
define dso_local void @lua_rawget(%struct.lua_State* nocapture, i32) local_unnamed_addr #0 !dbg !2267 {
  %3 = icmp sgt i32 %1, 0, !dbg !2280
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2281
  br i1 %3, label %4, label %14, !dbg !2281

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !2282
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8, !dbg !2282, !tbaa !401
  %7 = add nsw i32 %1, -1, !dbg !2283
  %8 = sext i32 %7 to i64, !dbg !2284
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 %8, !dbg !2284
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2286
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !2286, !tbaa !373
  %12 = icmp ult %struct.lua_TValue* %9, %11, !dbg !2287
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2288
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2289
  %13 = select i1 %12, %struct.lua_TValue* %9, %struct.lua_TValue* @luaO_nilobject_, !dbg !2290
  br label %57

; <label>:14:                                     ; preds = %2
  %15 = icmp sgt i32 %1, -10000, !dbg !2291
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2292
  br i1 %15, label %16, label %21, !dbg !2292

; <label>:16:                                     ; preds = %14
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2293
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %17, align 8, !dbg !2293, !tbaa !373
  %19 = sext i32 %1 to i64, !dbg !2294
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 %19, !dbg !2294
  br label %57, !dbg !2295

; <label>:21:                                     ; preds = %14
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2296
  switch i32 %1, label %41 [
    i32 -10000, label %22
    i32 -10001, label %26
    i32 -10002, label %39
  ], !dbg !2296

; <label>:22:                                     ; preds = %21
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !2297
  %24 = load %struct.global_State*, %struct.global_State** %23, align 8, !dbg !2297, !tbaa !486
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %24, i64 0, i32 20, !dbg !2297
  br label %57, !dbg !2298

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2299
  %28 = load %struct.CallInfo*, %struct.CallInfo** %27, align 8, !dbg !2299, !tbaa !419
  %29 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %28, i64 0, i32 1, !dbg !2299
  %30 = bitcast %struct.lua_TValue** %29 to %struct.CClosure***, !dbg !2299
  %31 = load %struct.CClosure**, %struct.CClosure*** %30, align 8, !dbg !2299, !tbaa !604
  %32 = load %struct.CClosure*, %struct.CClosure** %31, align 8, !dbg !2299, !tbaa !514
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !2301
  %34 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %32, i64 0, i32 6, !dbg !2301
  %35 = bitcast %struct.Table** %34 to i64*, !dbg !2301
  %36 = load i64, i64* %35, align 8, !dbg !2301, !tbaa !514
  %37 = bitcast %struct.lua_TValue* %33 to i64*, !dbg !2301
  store i64 %36, i64* %37, align 8, !dbg !2301, !tbaa !514
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !2301
  store i32 5, i32* %38, align 8, !dbg !2301, !tbaa !382
  br label %57

; <label>:39:                                     ; preds = %21
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !2302
  br label %57, !dbg !2303

; <label>:41:                                     ; preds = %21
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2304
  %43 = load %struct.CallInfo*, %struct.CallInfo** %42, align 8, !dbg !2304, !tbaa !419
  %44 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %43, i64 0, i32 1, !dbg !2304
  %45 = bitcast %struct.lua_TValue** %44 to %struct.CClosure***, !dbg !2304
  %46 = load %struct.CClosure**, %struct.CClosure*** %45, align 8, !dbg !2304, !tbaa !604
  %47 = load %struct.CClosure*, %struct.CClosure** %46, align 8, !dbg !2304, !tbaa !514
  %48 = sub nsw i32 -10002, %1, !dbg !2306
  %49 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 4, !dbg !2307
  %50 = load i8, i8* %49, align 1, !dbg !2307, !tbaa !514
  %51 = zext i8 %50 to i32, !dbg !2308
  %52 = icmp sgt i32 %48, %51, !dbg !2309
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2310
  br i1 %52, label %57, label %53, !dbg !2310

; <label>:53:                                     ; preds = %41
  %54 = add nsw i32 %48, -1, !dbg !2311
  %55 = sext i32 %54 to i64, !dbg !2312
  %56 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 8, i64 %55, !dbg !2312
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2310
  br label %57, !dbg !2310

; <label>:57:                                     ; preds = %41, %53, %4, %16, %22, %26, %39
  %58 = phi %struct.lua_TValue* [ %13, %4 ], [ %20, %16 ], [ %40, %39 ], [ %33, %26 ], [ %25, %22 ], [ %56, %53 ], [ @luaO_nilobject_, %41 ], !dbg !2313
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2314
  %59 = bitcast %struct.lua_TValue* %58 to %struct.Table**, !dbg !2316
  %60 = load %struct.Table*, %struct.Table** %59, align 8, !dbg !2316, !tbaa !514
  %61 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2316
  %62 = load %struct.lua_TValue*, %struct.lua_TValue** %61, align 8, !dbg !2316, !tbaa !373
  %63 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %62, i64 -1, !dbg !2316
  %64 = tail call %struct.lua_TValue* @luaH_get(%struct.Table* %60, %struct.lua_TValue* nonnull %63) #5, !dbg !2316
  %65 = load %struct.lua_TValue*, %struct.lua_TValue** %61, align 8, !dbg !2316, !tbaa !373
  %66 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %65, i64 -1, !dbg !2316
  %67 = bitcast %struct.lua_TValue* %64 to i64*, !dbg !2316
  %68 = bitcast %struct.lua_TValue* %66 to i64*, !dbg !2316
  %69 = load i64, i64* %67, align 8, !dbg !2316
  store i64 %69, i64* %68, align 8, !dbg !2316
  %70 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %64, i64 0, i32 1, !dbg !2316
  %71 = load i32, i32* %70, align 8, !dbg !2316, !tbaa !382
  %72 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %65, i64 -1, i32 1, !dbg !2316
  store i32 %71, i32* %72, align 8, !dbg !2316, !tbaa !382
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2317
  ret void, !dbg !2317
}

; Function Attrs: noredzone
declare hidden %struct.lua_TValue* @luaH_get(%struct.Table*, %struct.lua_TValue*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @lua_rawgeti(%struct.lua_State* nocapture, i32, i32) local_unnamed_addr #0 !dbg !2318 {
  %4 = icmp sgt i32 %1, 0, !dbg !2335
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2336
  br i1 %4, label %5, label %15, !dbg !2336

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !2337
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8, !dbg !2337, !tbaa !401
  %8 = add nsw i32 %1, -1, !dbg !2338
  %9 = sext i32 %8 to i64, !dbg !2339
  %10 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %7, i64 %9, !dbg !2339
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2341
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %11, align 8, !dbg !2341, !tbaa !373
  %13 = icmp ult %struct.lua_TValue* %10, %12, !dbg !2342
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2343
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2344
  %14 = select i1 %13, %struct.lua_TValue* %10, %struct.lua_TValue* @luaO_nilobject_, !dbg !2345
  br label %58

; <label>:15:                                     ; preds = %3
  %16 = icmp sgt i32 %1, -10000, !dbg !2346
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2347
  br i1 %16, label %17, label %22, !dbg !2347

; <label>:17:                                     ; preds = %15
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2348
  %19 = load %struct.lua_TValue*, %struct.lua_TValue** %18, align 8, !dbg !2348, !tbaa !373
  %20 = sext i32 %1 to i64, !dbg !2349
  %21 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %19, i64 %20, !dbg !2349
  br label %58, !dbg !2350

; <label>:22:                                     ; preds = %15
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2351
  switch i32 %1, label %42 [
    i32 -10000, label %23
    i32 -10001, label %27
    i32 -10002, label %40
  ], !dbg !2351

; <label>:23:                                     ; preds = %22
  %24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !2352
  %25 = load %struct.global_State*, %struct.global_State** %24, align 8, !dbg !2352, !tbaa !486
  %26 = getelementptr inbounds %struct.global_State, %struct.global_State* %25, i64 0, i32 20, !dbg !2352
  br label %58, !dbg !2353

; <label>:27:                                     ; preds = %22
  %28 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2354
  %29 = load %struct.CallInfo*, %struct.CallInfo** %28, align 8, !dbg !2354, !tbaa !419
  %30 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %29, i64 0, i32 1, !dbg !2354
  %31 = bitcast %struct.lua_TValue** %30 to %struct.CClosure***, !dbg !2354
  %32 = load %struct.CClosure**, %struct.CClosure*** %31, align 8, !dbg !2354, !tbaa !604
  %33 = load %struct.CClosure*, %struct.CClosure** %32, align 8, !dbg !2354, !tbaa !514
  %34 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !2356
  %35 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %33, i64 0, i32 6, !dbg !2356
  %36 = bitcast %struct.Table** %35 to i64*, !dbg !2356
  %37 = load i64, i64* %36, align 8, !dbg !2356, !tbaa !514
  %38 = bitcast %struct.lua_TValue* %34 to i64*, !dbg !2356
  store i64 %37, i64* %38, align 8, !dbg !2356, !tbaa !514
  %39 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !2356
  store i32 5, i32* %39, align 8, !dbg !2356, !tbaa !382
  br label %58

; <label>:40:                                     ; preds = %22
  %41 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !2357
  br label %58, !dbg !2358

; <label>:42:                                     ; preds = %22
  %43 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2359
  %44 = load %struct.CallInfo*, %struct.CallInfo** %43, align 8, !dbg !2359, !tbaa !419
  %45 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %44, i64 0, i32 1, !dbg !2359
  %46 = bitcast %struct.lua_TValue** %45 to %struct.CClosure***, !dbg !2359
  %47 = load %struct.CClosure**, %struct.CClosure*** %46, align 8, !dbg !2359, !tbaa !604
  %48 = load %struct.CClosure*, %struct.CClosure** %47, align 8, !dbg !2359, !tbaa !514
  %49 = sub nsw i32 -10002, %1, !dbg !2361
  %50 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %48, i64 0, i32 4, !dbg !2362
  %51 = load i8, i8* %50, align 1, !dbg !2362, !tbaa !514
  %52 = zext i8 %51 to i32, !dbg !2363
  %53 = icmp sgt i32 %49, %52, !dbg !2364
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2365
  br i1 %53, label %58, label %54, !dbg !2365

; <label>:54:                                     ; preds = %42
  %55 = add nsw i32 %49, -1, !dbg !2366
  %56 = sext i32 %55 to i64, !dbg !2367
  %57 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %48, i64 0, i32 8, i64 %56, !dbg !2367
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2365
  br label %58, !dbg !2365

; <label>:58:                                     ; preds = %42, %54, %5, %17, %23, %27, %40
  %59 = phi %struct.lua_TValue* [ %14, %5 ], [ %21, %17 ], [ %41, %40 ], [ %34, %27 ], [ %26, %23 ], [ %57, %54 ], [ @luaO_nilobject_, %42 ], !dbg !2368
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2369
  %60 = bitcast %struct.lua_TValue* %59 to %struct.Table**, !dbg !2371
  %61 = load %struct.Table*, %struct.Table** %60, align 8, !dbg !2371, !tbaa !514
  %62 = tail call %struct.lua_TValue* @luaH_getnum(%struct.Table* %61, i32 %2) #5, !dbg !2371
  %63 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2371
  %64 = load %struct.lua_TValue*, %struct.lua_TValue** %63, align 8, !dbg !2371, !tbaa !373
  %65 = bitcast %struct.lua_TValue* %62 to i64*, !dbg !2371
  %66 = bitcast %struct.lua_TValue* %64 to i64*, !dbg !2371
  %67 = load i64, i64* %65, align 8, !dbg !2371
  store i64 %67, i64* %66, align 8, !dbg !2371
  %68 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %62, i64 0, i32 1, !dbg !2371
  %69 = load i32, i32* %68, align 8, !dbg !2371, !tbaa !382
  %70 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %64, i64 0, i32 1, !dbg !2371
  store i32 %69, i32* %70, align 8, !dbg !2371, !tbaa !382
  %71 = load %struct.lua_TValue*, %struct.lua_TValue** %63, align 8, !dbg !2372, !tbaa !373
  %72 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %71, i64 1, !dbg !2372
  store %struct.lua_TValue* %72, %struct.lua_TValue** %63, align 8, !dbg !2372, !tbaa !373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2374
  ret void, !dbg !2374
}

; Function Attrs: noredzone
declare hidden %struct.lua_TValue* @luaH_getnum(%struct.Table*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @lua_createtable(%struct.lua_State*, i32, i32) local_unnamed_addr #0 !dbg !2375 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !2385
  %5 = load %struct.global_State*, %struct.global_State** %4, align 8, !dbg !2385, !tbaa !486
  %6 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 14, !dbg !2385
  %7 = load i64, i64* %6, align 8, !dbg !2385, !tbaa !508
  %8 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 13, !dbg !2385
  %9 = load i64, i64* %8, align 8, !dbg !2385, !tbaa !509
  %10 = icmp ult i64 %7, %9, !dbg !2385
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2388
  br i1 %10, label %12, label %11, !dbg !2388

; <label>:11:                                     ; preds = %3
  tail call void @luaC_step(%struct.lua_State* nonnull %0) #5, !dbg !2385
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2385
  br label %12, !dbg !2385

; <label>:12:                                     ; preds = %3, %11
  %13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2389
  %14 = load %struct.lua_TValue*, %struct.lua_TValue** %13, align 8, !dbg !2389, !tbaa !373
  %15 = tail call %struct.Table* @luaH_new(%struct.lua_State* nonnull %0, i32 %1, i32 %2) #5, !dbg !2389
  %16 = bitcast %struct.lua_TValue* %14 to %struct.Table**, !dbg !2389
  store %struct.Table* %15, %struct.Table** %16, align 8, !dbg !2389, !tbaa !514
  %17 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %14, i64 0, i32 1, !dbg !2389
  store i32 5, i32* %17, align 8, !dbg !2389, !tbaa !382
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %13, align 8, !dbg !2390, !tbaa !373
  %19 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 1, !dbg !2390
  store %struct.lua_TValue* %19, %struct.lua_TValue** %13, align 8, !dbg !2390, !tbaa !373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2392
  ret void, !dbg !2392
}

; Function Attrs: noredzone
declare hidden %struct.Table* @luaH_new(%struct.lua_State*, i32, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_getmetatable(%struct.lua_State* nocapture, i32) local_unnamed_addr #0 !dbg !2393 {
  %3 = icmp sgt i32 %1, 0, !dbg !2410
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2411
  br i1 %3, label %4, label %14, !dbg !2411

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !2412
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8, !dbg !2412, !tbaa !401
  %7 = add nsw i32 %1, -1, !dbg !2413
  %8 = sext i32 %7 to i64, !dbg !2414
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 %8, !dbg !2414
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2416
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !2416, !tbaa !373
  %12 = icmp ult %struct.lua_TValue* %9, %11, !dbg !2417
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2418
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2419
  %13 = select i1 %12, %struct.lua_TValue* %9, %struct.lua_TValue* @luaO_nilobject_, !dbg !2420
  br label %57

; <label>:14:                                     ; preds = %2
  %15 = icmp sgt i32 %1, -10000, !dbg !2421
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2422
  br i1 %15, label %16, label %21, !dbg !2422

; <label>:16:                                     ; preds = %14
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2423
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %17, align 8, !dbg !2423, !tbaa !373
  %19 = sext i32 %1 to i64, !dbg !2424
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 %19, !dbg !2424
  br label %57, !dbg !2425

; <label>:21:                                     ; preds = %14
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2426
  switch i32 %1, label %41 [
    i32 -10000, label %22
    i32 -10001, label %26
    i32 -10002, label %39
  ], !dbg !2426

; <label>:22:                                     ; preds = %21
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !2427
  %24 = load %struct.global_State*, %struct.global_State** %23, align 8, !dbg !2427, !tbaa !486
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %24, i64 0, i32 20, !dbg !2427
  br label %57, !dbg !2428

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2429
  %28 = load %struct.CallInfo*, %struct.CallInfo** %27, align 8, !dbg !2429, !tbaa !419
  %29 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %28, i64 0, i32 1, !dbg !2429
  %30 = bitcast %struct.lua_TValue** %29 to %struct.CClosure***, !dbg !2429
  %31 = load %struct.CClosure**, %struct.CClosure*** %30, align 8, !dbg !2429, !tbaa !604
  %32 = load %struct.CClosure*, %struct.CClosure** %31, align 8, !dbg !2429, !tbaa !514
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !2431
  %34 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %32, i64 0, i32 6, !dbg !2431
  %35 = bitcast %struct.Table** %34 to i64*, !dbg !2431
  %36 = load i64, i64* %35, align 8, !dbg !2431, !tbaa !514
  %37 = bitcast %struct.lua_TValue* %33 to i64*, !dbg !2431
  store i64 %36, i64* %37, align 8, !dbg !2431, !tbaa !514
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !2431
  store i32 5, i32* %38, align 8, !dbg !2431, !tbaa !382
  br label %57

; <label>:39:                                     ; preds = %21
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !2432
  br label %57, !dbg !2433

; <label>:41:                                     ; preds = %21
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2434
  %43 = load %struct.CallInfo*, %struct.CallInfo** %42, align 8, !dbg !2434, !tbaa !419
  %44 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %43, i64 0, i32 1, !dbg !2434
  %45 = bitcast %struct.lua_TValue** %44 to %struct.CClosure***, !dbg !2434
  %46 = load %struct.CClosure**, %struct.CClosure*** %45, align 8, !dbg !2434, !tbaa !604
  %47 = load %struct.CClosure*, %struct.CClosure** %46, align 8, !dbg !2434, !tbaa !514
  %48 = sub nsw i32 -10002, %1, !dbg !2436
  %49 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 4, !dbg !2437
  %50 = load i8, i8* %49, align 1, !dbg !2437, !tbaa !514
  %51 = zext i8 %50 to i32, !dbg !2438
  %52 = icmp sgt i32 %48, %51, !dbg !2439
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2440
  br i1 %52, label %57, label %53, !dbg !2440

; <label>:53:                                     ; preds = %41
  %54 = add nsw i32 %48, -1, !dbg !2441
  %55 = sext i32 %54 to i64, !dbg !2442
  %56 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 8, i64 %55, !dbg !2442
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2440
  br label %57, !dbg !2440

; <label>:57:                                     ; preds = %41, %53, %4, %16, %22, %26, %39
  %58 = phi %struct.lua_TValue* [ %13, %4 ], [ %20, %16 ], [ %40, %39 ], [ %33, %26 ], [ %25, %22 ], [ %56, %53 ], [ @luaO_nilobject_, %41 ], !dbg !2443
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2444
  %59 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i64 0, i32 1, !dbg !2446
  %60 = load i32, i32* %59, align 8, !dbg !2446, !tbaa !382
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2447
  switch i32 %60, label %69 [
    i32 5, label %61
    i32 7, label %65
  ], !dbg !2447

; <label>:61:                                     ; preds = %57
  %62 = bitcast %struct.lua_TValue* %58 to %struct.Table**, !dbg !2448
  %63 = load %struct.Table*, %struct.Table** %62, align 8, !dbg !2448, !tbaa !514
  %64 = getelementptr inbounds %struct.Table, %struct.Table* %63, i64 0, i32 5, !dbg !2450
  br label %74, !dbg !2451

; <label>:65:                                     ; preds = %57
  %66 = bitcast %struct.lua_TValue* %58 to %struct.anon.2**, !dbg !2452
  %67 = load %struct.anon.2*, %struct.anon.2** %66, align 8, !dbg !2452, !tbaa !514
  %68 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %67, i64 0, i32 3, !dbg !2453
  br label %74, !dbg !2454

; <label>:69:                                     ; preds = %57
  %70 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !2455
  %71 = load %struct.global_State*, %struct.global_State** %70, align 8, !dbg !2455, !tbaa !486
  %72 = sext i32 %60 to i64, !dbg !2455
  %73 = getelementptr inbounds %struct.global_State, %struct.global_State* %71, i64 0, i32 23, i64 %72, !dbg !2455
  br label %74, !dbg !2456

; <label>:74:                                     ; preds = %69, %65, %61
  %75 = phi %struct.Table** [ %73, %69 ], [ %68, %65 ], [ %64, %61 ]
  %76 = load %struct.Table*, %struct.Table** %75, align 8, !dbg !2457, !tbaa !514
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2457
  %77 = icmp eq %struct.Table* %76, null, !dbg !2458
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2459
  br i1 %77, label %85, label %78, !dbg !2459

; <label>:78:                                     ; preds = %74
  %79 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2460
  %80 = load %struct.lua_TValue*, %struct.lua_TValue** %79, align 8, !dbg !2460, !tbaa !373
  %81 = bitcast %struct.lua_TValue* %80 to %struct.Table**, !dbg !2460
  store %struct.Table* %76, %struct.Table** %81, align 8, !dbg !2460, !tbaa !514
  %82 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %80, i64 0, i32 1, !dbg !2460
  store i32 5, i32* %82, align 8, !dbg !2460, !tbaa !382
  %83 = load %struct.lua_TValue*, %struct.lua_TValue** %79, align 8, !dbg !2461, !tbaa !373
  %84 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %83, i64 1, !dbg !2461
  store %struct.lua_TValue* %84, %struct.lua_TValue** %79, align 8, !dbg !2461, !tbaa !373
  br label %85

; <label>:85:                                     ; preds = %74, %78
  %86 = phi i32 [ 1, %78 ], [ 0, %74 ], !dbg !2464
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2465
  ret i32 %86, !dbg !2465
}

; Function Attrs: noredzone nounwind
define dso_local void @lua_getfenv(%struct.lua_State* nocapture, i32) local_unnamed_addr #0 !dbg !2466 {
  %3 = icmp sgt i32 %1, 0, !dbg !2484
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2485
  br i1 %3, label %4, label %14, !dbg !2485

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !2486
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8, !dbg !2486, !tbaa !401
  %7 = add nsw i32 %1, -1, !dbg !2487
  %8 = sext i32 %7 to i64, !dbg !2488
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 %8, !dbg !2488
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2490
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !2490, !tbaa !373
  %12 = icmp ult %struct.lua_TValue* %9, %11, !dbg !2491
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2492
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2493
  %13 = select i1 %12, %struct.lua_TValue* %9, %struct.lua_TValue* @luaO_nilobject_, !dbg !2494
  br label %57

; <label>:14:                                     ; preds = %2
  %15 = icmp sgt i32 %1, -10000, !dbg !2495
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2496
  br i1 %15, label %16, label %21, !dbg !2496

; <label>:16:                                     ; preds = %14
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2497
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %17, align 8, !dbg !2497, !tbaa !373
  %19 = sext i32 %1 to i64, !dbg !2498
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 %19, !dbg !2498
  br label %57, !dbg !2499

; <label>:21:                                     ; preds = %14
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2500
  switch i32 %1, label %41 [
    i32 -10000, label %22
    i32 -10001, label %26
    i32 -10002, label %39
  ], !dbg !2500

; <label>:22:                                     ; preds = %21
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !2501
  %24 = load %struct.global_State*, %struct.global_State** %23, align 8, !dbg !2501, !tbaa !486
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %24, i64 0, i32 20, !dbg !2501
  br label %57, !dbg !2502

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2503
  %28 = load %struct.CallInfo*, %struct.CallInfo** %27, align 8, !dbg !2503, !tbaa !419
  %29 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %28, i64 0, i32 1, !dbg !2503
  %30 = bitcast %struct.lua_TValue** %29 to %struct.CClosure***, !dbg !2503
  %31 = load %struct.CClosure**, %struct.CClosure*** %30, align 8, !dbg !2503, !tbaa !604
  %32 = load %struct.CClosure*, %struct.CClosure** %31, align 8, !dbg !2503, !tbaa !514
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !2505
  %34 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %32, i64 0, i32 6, !dbg !2505
  %35 = bitcast %struct.Table** %34 to i64*, !dbg !2505
  %36 = load i64, i64* %35, align 8, !dbg !2505, !tbaa !514
  %37 = bitcast %struct.lua_TValue* %33 to i64*, !dbg !2505
  store i64 %36, i64* %37, align 8, !dbg !2505, !tbaa !514
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !2505
  store i32 5, i32* %38, align 8, !dbg !2505, !tbaa !382
  br label %57

; <label>:39:                                     ; preds = %21
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !2506
  br label %57, !dbg !2507

; <label>:41:                                     ; preds = %21
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2508
  %43 = load %struct.CallInfo*, %struct.CallInfo** %42, align 8, !dbg !2508, !tbaa !419
  %44 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %43, i64 0, i32 1, !dbg !2508
  %45 = bitcast %struct.lua_TValue** %44 to %struct.CClosure***, !dbg !2508
  %46 = load %struct.CClosure**, %struct.CClosure*** %45, align 8, !dbg !2508, !tbaa !604
  %47 = load %struct.CClosure*, %struct.CClosure** %46, align 8, !dbg !2508, !tbaa !514
  %48 = sub nsw i32 -10002, %1, !dbg !2510
  %49 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 4, !dbg !2511
  %50 = load i8, i8* %49, align 1, !dbg !2511, !tbaa !514
  %51 = zext i8 %50 to i32, !dbg !2512
  %52 = icmp sgt i32 %48, %51, !dbg !2513
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2514
  br i1 %52, label %57, label %53, !dbg !2514

; <label>:53:                                     ; preds = %41
  %54 = add nsw i32 %48, -1, !dbg !2515
  %55 = sext i32 %54 to i64, !dbg !2516
  %56 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 8, i64 %55, !dbg !2516
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2514
  br label %57, !dbg !2514

; <label>:57:                                     ; preds = %41, %53, %4, %16, %22, %26, %39
  %58 = phi %struct.lua_TValue* [ %13, %4 ], [ %20, %16 ], [ %40, %39 ], [ %33, %26 ], [ %25, %22 ], [ %56, %53 ], [ @luaO_nilobject_, %41 ], !dbg !2517
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2518
  %59 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i64 0, i32 1, !dbg !2520
  %60 = load i32, i32* %59, align 8, !dbg !2520, !tbaa !382
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2521
  switch i32 %60, label %90 [
    i32 6, label %61
    i32 7, label %70
    i32 8, label %79
  ], !dbg !2521

; <label>:61:                                     ; preds = %57
  %62 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2522
  %63 = load %struct.lua_TValue*, %struct.lua_TValue** %62, align 8, !dbg !2522, !tbaa !373
  %64 = bitcast %struct.lua_TValue* %58 to %struct.CClosure**, !dbg !2522
  %65 = load %struct.CClosure*, %struct.CClosure** %64, align 8, !dbg !2522, !tbaa !514
  %66 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %65, i64 0, i32 6, !dbg !2522
  %67 = bitcast %struct.Table** %66 to i64*, !dbg !2522
  %68 = load i64, i64* %67, align 8, !dbg !2522, !tbaa !514
  %69 = bitcast %struct.lua_TValue* %63 to i64*, !dbg !2522
  store i64 %68, i64* %69, align 8, !dbg !2522, !tbaa !514
  br label %93, !dbg !2523

; <label>:70:                                     ; preds = %57
  %71 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2524
  %72 = load %struct.lua_TValue*, %struct.lua_TValue** %71, align 8, !dbg !2524, !tbaa !373
  %73 = bitcast %struct.lua_TValue* %58 to %struct.anon.2**, !dbg !2524
  %74 = load %struct.anon.2*, %struct.anon.2** %73, align 8, !dbg !2524, !tbaa !514
  %75 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %74, i64 0, i32 4, !dbg !2524
  %76 = bitcast %struct.Table** %75 to i64*, !dbg !2524
  %77 = load i64, i64* %76, align 8, !dbg !2524, !tbaa !514
  %78 = bitcast %struct.lua_TValue* %72 to i64*, !dbg !2524
  store i64 %77, i64* %78, align 8, !dbg !2524, !tbaa !514
  br label %93, !dbg !2525

; <label>:79:                                     ; preds = %57
  %80 = bitcast %struct.lua_TValue* %58 to %struct.lua_State**, !dbg !2526
  %81 = load %struct.lua_State*, %struct.lua_State** %80, align 8, !dbg !2526, !tbaa !514
  %82 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %81, i64 0, i32 22, !dbg !2526
  %83 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2526
  %84 = load %struct.lua_TValue*, %struct.lua_TValue** %83, align 8, !dbg !2526, !tbaa !373
  %85 = bitcast %struct.lua_TValue* %82 to i64*, !dbg !2526
  %86 = bitcast %struct.lua_TValue* %84 to i64*, !dbg !2526
  %87 = load i64, i64* %85, align 8, !dbg !2526
  store i64 %87, i64* %86, align 8, !dbg !2526
  %88 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %81, i64 0, i32 22, i32 1, !dbg !2526
  %89 = load i32, i32* %88, align 8, !dbg !2526, !tbaa !382
  br label %93, !dbg !2527

; <label>:90:                                     ; preds = %57
  %91 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2528
  %92 = load %struct.lua_TValue*, %struct.lua_TValue** %91, align 8, !dbg !2528, !tbaa !373
  br label %93, !dbg !2529

; <label>:93:                                     ; preds = %90, %79, %70, %61
  %94 = phi %struct.lua_TValue* [ %92, %90 ], [ %84, %79 ], [ %72, %70 ], [ %63, %61 ]
  %95 = phi i32 [ 0, %90 ], [ %89, %79 ], [ 5, %70 ], [ 5, %61 ]
  %96 = phi %struct.lua_TValue** [ %91, %90 ], [ %83, %79 ], [ %71, %70 ], [ %62, %61 ], !dbg !2530
  %97 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %94, i64 0, i32 1, !dbg !2532
  store i32 %95, i32* %97, align 8, !dbg !2532, !tbaa !382
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2533
  %98 = load %struct.lua_TValue*, %struct.lua_TValue** %96, align 8, !dbg !2530, !tbaa !373
  %99 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %98, i64 1, !dbg !2530
  store %struct.lua_TValue* %99, %struct.lua_TValue** %96, align 8, !dbg !2530, !tbaa !373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2534
  ret void, !dbg !2534
}

; Function Attrs: noredzone nounwind
define dso_local void @lua_settable(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !2535 {
  %3 = icmp sgt i32 %1, 0, !dbg !2545
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2546
  br i1 %3, label %4, label %14, !dbg !2546

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !2547
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8, !dbg !2547, !tbaa !401
  %7 = add nsw i32 %1, -1, !dbg !2548
  %8 = sext i32 %7 to i64, !dbg !2549
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 %8, !dbg !2549
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2551
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !2551, !tbaa !373
  %12 = icmp ult %struct.lua_TValue* %9, %11, !dbg !2552
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2553
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2554
  %13 = select i1 %12, %struct.lua_TValue* %9, %struct.lua_TValue* @luaO_nilobject_, !dbg !2555
  br label %57

; <label>:14:                                     ; preds = %2
  %15 = icmp sgt i32 %1, -10000, !dbg !2556
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2557
  br i1 %15, label %16, label %21, !dbg !2557

; <label>:16:                                     ; preds = %14
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2558
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %17, align 8, !dbg !2558, !tbaa !373
  %19 = sext i32 %1 to i64, !dbg !2559
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 %19, !dbg !2559
  br label %57, !dbg !2560

; <label>:21:                                     ; preds = %14
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2561
  switch i32 %1, label %41 [
    i32 -10000, label %22
    i32 -10001, label %26
    i32 -10002, label %39
  ], !dbg !2561

; <label>:22:                                     ; preds = %21
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !2562
  %24 = load %struct.global_State*, %struct.global_State** %23, align 8, !dbg !2562, !tbaa !486
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %24, i64 0, i32 20, !dbg !2562
  br label %57, !dbg !2563

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2564
  %28 = load %struct.CallInfo*, %struct.CallInfo** %27, align 8, !dbg !2564, !tbaa !419
  %29 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %28, i64 0, i32 1, !dbg !2564
  %30 = bitcast %struct.lua_TValue** %29 to %struct.CClosure***, !dbg !2564
  %31 = load %struct.CClosure**, %struct.CClosure*** %30, align 8, !dbg !2564, !tbaa !604
  %32 = load %struct.CClosure*, %struct.CClosure** %31, align 8, !dbg !2564, !tbaa !514
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !2566
  %34 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %32, i64 0, i32 6, !dbg !2566
  %35 = bitcast %struct.Table** %34 to i64*, !dbg !2566
  %36 = load i64, i64* %35, align 8, !dbg !2566, !tbaa !514
  %37 = bitcast %struct.lua_TValue* %33 to i64*, !dbg !2566
  store i64 %36, i64* %37, align 8, !dbg !2566, !tbaa !514
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !2566
  store i32 5, i32* %38, align 8, !dbg !2566, !tbaa !382
  br label %57

; <label>:39:                                     ; preds = %21
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !2567
  br label %57, !dbg !2568

; <label>:41:                                     ; preds = %21
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2569
  %43 = load %struct.CallInfo*, %struct.CallInfo** %42, align 8, !dbg !2569, !tbaa !419
  %44 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %43, i64 0, i32 1, !dbg !2569
  %45 = bitcast %struct.lua_TValue** %44 to %struct.CClosure***, !dbg !2569
  %46 = load %struct.CClosure**, %struct.CClosure*** %45, align 8, !dbg !2569, !tbaa !604
  %47 = load %struct.CClosure*, %struct.CClosure** %46, align 8, !dbg !2569, !tbaa !514
  %48 = sub nsw i32 -10002, %1, !dbg !2571
  %49 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 4, !dbg !2572
  %50 = load i8, i8* %49, align 1, !dbg !2572, !tbaa !514
  %51 = zext i8 %50 to i32, !dbg !2573
  %52 = icmp sgt i32 %48, %51, !dbg !2574
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2575
  br i1 %52, label %57, label %53, !dbg !2575

; <label>:53:                                     ; preds = %41
  %54 = add nsw i32 %48, -1, !dbg !2576
  %55 = sext i32 %54 to i64, !dbg !2577
  %56 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 8, i64 %55, !dbg !2577
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2575
  br label %57, !dbg !2575

; <label>:57:                                     ; preds = %41, %53, %4, %16, %22, %26, %39
  %58 = phi %struct.lua_TValue* [ %13, %4 ], [ %20, %16 ], [ %40, %39 ], [ %33, %26 ], [ %25, %22 ], [ %56, %53 ], [ @luaO_nilobject_, %41 ], !dbg !2578
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2579
  %59 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2581
  %60 = load %struct.lua_TValue*, %struct.lua_TValue** %59, align 8, !dbg !2581, !tbaa !373
  %61 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %60, i64 -2, !dbg !2582
  %62 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %60, i64 -1, !dbg !2583
  tail call void @luaV_settable(%struct.lua_State* %0, %struct.lua_TValue* %58, %struct.lua_TValue* nonnull %61, %struct.lua_TValue* nonnull %62) #5, !dbg !2584
  %63 = load %struct.lua_TValue*, %struct.lua_TValue** %59, align 8, !dbg !2585, !tbaa !373
  %64 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %63, i64 -2, !dbg !2585
  store %struct.lua_TValue* %64, %struct.lua_TValue** %59, align 8, !dbg !2585, !tbaa !373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2586
  ret void, !dbg !2586
}

; Function Attrs: noredzone
declare hidden void @luaV_settable(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @lua_setfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #0 !dbg !2587 {
  %4 = alloca %struct.lua_TValue, align 8
  %5 = bitcast %struct.lua_TValue* %4 to i8*, !dbg !2599
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #4, !dbg !2599
  %6 = icmp sgt i32 %1, 0, !dbg !2603
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2604
  br i1 %6, label %7, label %17, !dbg !2604

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !2605
  %9 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8, !dbg !2605, !tbaa !401
  %10 = add nsw i32 %1, -1, !dbg !2606
  %11 = sext i32 %10 to i64, !dbg !2607
  %12 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %9, i64 %11, !dbg !2607
  %13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2609
  %14 = load %struct.lua_TValue*, %struct.lua_TValue** %13, align 8, !dbg !2609, !tbaa !373
  %15 = icmp ult %struct.lua_TValue* %12, %14, !dbg !2610
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2611
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2612
  %16 = select i1 %15, %struct.lua_TValue* %12, %struct.lua_TValue* @luaO_nilobject_, !dbg !2613
  br label %60

; <label>:17:                                     ; preds = %3
  %18 = icmp sgt i32 %1, -10000, !dbg !2614
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2615
  br i1 %18, label %19, label %24, !dbg !2615

; <label>:19:                                     ; preds = %17
  %20 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2616
  %21 = load %struct.lua_TValue*, %struct.lua_TValue** %20, align 8, !dbg !2616, !tbaa !373
  %22 = sext i32 %1 to i64, !dbg !2617
  %23 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %21, i64 %22, !dbg !2617
  br label %60, !dbg !2618

; <label>:24:                                     ; preds = %17
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2619
  switch i32 %1, label %44 [
    i32 -10000, label %25
    i32 -10001, label %29
    i32 -10002, label %42
  ], !dbg !2619

; <label>:25:                                     ; preds = %24
  %26 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !2620
  %27 = load %struct.global_State*, %struct.global_State** %26, align 8, !dbg !2620, !tbaa !486
  %28 = getelementptr inbounds %struct.global_State, %struct.global_State* %27, i64 0, i32 20, !dbg !2620
  br label %60, !dbg !2621

; <label>:29:                                     ; preds = %24
  %30 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2622
  %31 = load %struct.CallInfo*, %struct.CallInfo** %30, align 8, !dbg !2622, !tbaa !419
  %32 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %31, i64 0, i32 1, !dbg !2622
  %33 = bitcast %struct.lua_TValue** %32 to %struct.CClosure***, !dbg !2622
  %34 = load %struct.CClosure**, %struct.CClosure*** %33, align 8, !dbg !2622, !tbaa !604
  %35 = load %struct.CClosure*, %struct.CClosure** %34, align 8, !dbg !2622, !tbaa !514
  %36 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !2624
  %37 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %35, i64 0, i32 6, !dbg !2624
  %38 = bitcast %struct.Table** %37 to i64*, !dbg !2624
  %39 = load i64, i64* %38, align 8, !dbg !2624, !tbaa !514
  %40 = bitcast %struct.lua_TValue* %36 to i64*, !dbg !2624
  store i64 %39, i64* %40, align 8, !dbg !2624, !tbaa !514
  %41 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !2624
  store i32 5, i32* %41, align 8, !dbg !2624, !tbaa !382
  br label %60

; <label>:42:                                     ; preds = %24
  %43 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !2625
  br label %60, !dbg !2626

; <label>:44:                                     ; preds = %24
  %45 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2627
  %46 = load %struct.CallInfo*, %struct.CallInfo** %45, align 8, !dbg !2627, !tbaa !419
  %47 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %46, i64 0, i32 1, !dbg !2627
  %48 = bitcast %struct.lua_TValue** %47 to %struct.CClosure***, !dbg !2627
  %49 = load %struct.CClosure**, %struct.CClosure*** %48, align 8, !dbg !2627, !tbaa !604
  %50 = load %struct.CClosure*, %struct.CClosure** %49, align 8, !dbg !2627, !tbaa !514
  %51 = sub nsw i32 -10002, %1, !dbg !2629
  %52 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %50, i64 0, i32 4, !dbg !2630
  %53 = load i8, i8* %52, align 1, !dbg !2630, !tbaa !514
  %54 = zext i8 %53 to i32, !dbg !2631
  %55 = icmp sgt i32 %51, %54, !dbg !2632
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2633
  br i1 %55, label %60, label %56, !dbg !2633

; <label>:56:                                     ; preds = %44
  %57 = add nsw i32 %51, -1, !dbg !2634
  %58 = sext i32 %57 to i64, !dbg !2635
  %59 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %50, i64 0, i32 8, i64 %58, !dbg !2635
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2633
  br label %60, !dbg !2633

; <label>:60:                                     ; preds = %44, %56, %7, %19, %25, %29, %42
  %61 = phi %struct.lua_TValue* [ %16, %7 ], [ %23, %19 ], [ %43, %42 ], [ %36, %29 ], [ %28, %25 ], [ %59, %56 ], [ @luaO_nilobject_, %44 ], !dbg !2636
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2637
  %62 = tail call i64 @strlen(i8* %2) #5, !dbg !2639
  %63 = tail call %union.TString* @luaS_newlstr(%struct.lua_State* %0, i8* %2, i64 %62) #5, !dbg !2639
  %64 = bitcast %struct.lua_TValue* %4 to %union.TString**, !dbg !2639
  store %union.TString* %63, %union.TString** %64, align 8, !dbg !2639, !tbaa !514
  %65 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %4, i64 0, i32 1, !dbg !2639
  store i32 4, i32* %65, align 8, !dbg !2639, !tbaa !382
  %66 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2640
  %67 = load %struct.lua_TValue*, %struct.lua_TValue** %66, align 8, !dbg !2640, !tbaa !373
  %68 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %67, i64 -1, !dbg !2641
  call void @luaV_settable(%struct.lua_State* %0, %struct.lua_TValue* %61, %struct.lua_TValue* nonnull %4, %struct.lua_TValue* nonnull %68) #5, !dbg !2643
  %69 = load %struct.lua_TValue*, %struct.lua_TValue** %66, align 8, !dbg !2644, !tbaa !373
  %70 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %69, i64 -1, !dbg !2644
  store %struct.lua_TValue* %70, %struct.lua_TValue** %66, align 8, !dbg !2644, !tbaa !373
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #4, !dbg !2645
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2645
  ret void, !dbg !2645
}

; Function Attrs: noredzone nounwind
define dso_local void @lua_rawset(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !2646 {
  %3 = icmp sgt i32 %1, 0, !dbg !2659
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2660
  br i1 %3, label %4, label %14, !dbg !2660

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !2661
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8, !dbg !2661, !tbaa !401
  %7 = add nsw i32 %1, -1, !dbg !2662
  %8 = sext i32 %7 to i64, !dbg !2663
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 %8, !dbg !2663
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2665
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !2665, !tbaa !373
  %12 = icmp ult %struct.lua_TValue* %9, %11, !dbg !2666
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2667
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2668
  %13 = select i1 %12, %struct.lua_TValue* %9, %struct.lua_TValue* @luaO_nilobject_, !dbg !2669
  br label %57

; <label>:14:                                     ; preds = %2
  %15 = icmp sgt i32 %1, -10000, !dbg !2670
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2671
  br i1 %15, label %16, label %21, !dbg !2671

; <label>:16:                                     ; preds = %14
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2672
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %17, align 8, !dbg !2672, !tbaa !373
  %19 = sext i32 %1 to i64, !dbg !2673
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 %19, !dbg !2673
  br label %57, !dbg !2674

; <label>:21:                                     ; preds = %14
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2675
  switch i32 %1, label %41 [
    i32 -10000, label %22
    i32 -10001, label %26
    i32 -10002, label %39
  ], !dbg !2675

; <label>:22:                                     ; preds = %21
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !2676
  %24 = load %struct.global_State*, %struct.global_State** %23, align 8, !dbg !2676, !tbaa !486
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %24, i64 0, i32 20, !dbg !2676
  br label %57, !dbg !2677

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2678
  %28 = load %struct.CallInfo*, %struct.CallInfo** %27, align 8, !dbg !2678, !tbaa !419
  %29 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %28, i64 0, i32 1, !dbg !2678
  %30 = bitcast %struct.lua_TValue** %29 to %struct.CClosure***, !dbg !2678
  %31 = load %struct.CClosure**, %struct.CClosure*** %30, align 8, !dbg !2678, !tbaa !604
  %32 = load %struct.CClosure*, %struct.CClosure** %31, align 8, !dbg !2678, !tbaa !514
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !2680
  %34 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %32, i64 0, i32 6, !dbg !2680
  %35 = bitcast %struct.Table** %34 to i64*, !dbg !2680
  %36 = load i64, i64* %35, align 8, !dbg !2680, !tbaa !514
  %37 = bitcast %struct.lua_TValue* %33 to i64*, !dbg !2680
  store i64 %36, i64* %37, align 8, !dbg !2680, !tbaa !514
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !2680
  store i32 5, i32* %38, align 8, !dbg !2680, !tbaa !382
  br label %57

; <label>:39:                                     ; preds = %21
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !2681
  br label %57, !dbg !2682

; <label>:41:                                     ; preds = %21
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2683
  %43 = load %struct.CallInfo*, %struct.CallInfo** %42, align 8, !dbg !2683, !tbaa !419
  %44 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %43, i64 0, i32 1, !dbg !2683
  %45 = bitcast %struct.lua_TValue** %44 to %struct.CClosure***, !dbg !2683
  %46 = load %struct.CClosure**, %struct.CClosure*** %45, align 8, !dbg !2683, !tbaa !604
  %47 = load %struct.CClosure*, %struct.CClosure** %46, align 8, !dbg !2683, !tbaa !514
  %48 = sub nsw i32 -10002, %1, !dbg !2685
  %49 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 4, !dbg !2686
  %50 = load i8, i8* %49, align 1, !dbg !2686, !tbaa !514
  %51 = zext i8 %50 to i32, !dbg !2687
  %52 = icmp sgt i32 %48, %51, !dbg !2688
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2689
  br i1 %52, label %57, label %53, !dbg !2689

; <label>:53:                                     ; preds = %41
  %54 = add nsw i32 %48, -1, !dbg !2690
  %55 = sext i32 %54 to i64, !dbg !2691
  %56 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 8, i64 %55, !dbg !2691
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2689
  br label %57, !dbg !2689

; <label>:57:                                     ; preds = %41, %53, %4, %16, %22, %26, %39
  %58 = phi %struct.lua_TValue* [ %13, %4 ], [ %20, %16 ], [ %40, %39 ], [ %33, %26 ], [ %25, %22 ], [ %56, %53 ], [ @luaO_nilobject_, %41 ], !dbg !2692
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2693
  %59 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2695
  %60 = load %struct.lua_TValue*, %struct.lua_TValue** %59, align 8, !dbg !2695, !tbaa !373
  %61 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %60, i64 -1, !dbg !2695
  %62 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i64 0, i32 0, i32 0, !dbg !2695
  %63 = bitcast %struct.lua_TValue* %58 to %struct.Table**, !dbg !2695
  %64 = load %struct.Table*, %struct.Table** %63, align 8, !dbg !2695, !tbaa !514
  %65 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %60, i64 -2, !dbg !2695
  %66 = tail call %struct.lua_TValue* @luaH_set(%struct.lua_State* %0, %struct.Table* %64, %struct.lua_TValue* nonnull %65) #5, !dbg !2695
  %67 = bitcast %struct.lua_TValue* %61 to i64*, !dbg !2695
  %68 = bitcast %struct.lua_TValue* %66 to i64*, !dbg !2695
  %69 = load i64, i64* %67, align 8, !dbg !2695
  store i64 %69, i64* %68, align 8, !dbg !2695
  %70 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %60, i64 -1, i32 1, !dbg !2695
  %71 = load i32, i32* %70, align 8, !dbg !2695, !tbaa !382
  %72 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %66, i64 0, i32 1, !dbg !2695
  store i32 %71, i32* %72, align 8, !dbg !2695, !tbaa !382
  %73 = load %struct.lua_TValue*, %struct.lua_TValue** %59, align 8, !dbg !2696, !tbaa !373
  %74 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %73, i64 -1, i32 1, !dbg !2696
  %75 = load i32, i32* %74, align 8, !dbg !2696, !tbaa !382
  %76 = icmp sgt i32 %75, 3, !dbg !2696
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2696
  br i1 %76, label %77, label %94, !dbg !2696

; <label>:77:                                     ; preds = %57
  %78 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %73, i64 -1, i32 0, i32 0, !dbg !2696
  %79 = bitcast %union.GCObject** %78 to %struct.GCheader**, !dbg !2696
  %80 = load %struct.GCheader*, %struct.GCheader** %79, align 8, !dbg !2696, !tbaa !514
  %81 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %80, i64 0, i32 2, !dbg !2696
  %82 = load i8, i8* %81, align 1, !dbg !2696, !tbaa !514
  %83 = and i8 %82, 3, !dbg !2696
  %84 = icmp eq i8 %83, 0, !dbg !2696
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2696
  br i1 %84, label %94, label %85, !dbg !2696

; <label>:85:                                     ; preds = %77
  %86 = load %union.GCObject*, %union.GCObject** %62, align 8, !dbg !2696, !tbaa !514
  %87 = getelementptr inbounds %union.GCObject, %union.GCObject* %86, i64 0, i32 0, i32 2, !dbg !2696
  %88 = load i8, i8* %87, align 1, !dbg !2696, !tbaa !514
  %89 = and i8 %88, 4, !dbg !2696
  %90 = icmp eq i8 %89, 0, !dbg !2696
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2699
  br i1 %90, label %94, label %91, !dbg !2699

; <label>:91:                                     ; preds = %85
  %92 = bitcast %union.GCObject* %86 to %struct.Table*, !dbg !2696
  tail call void @luaC_barrierback(%struct.lua_State* nonnull %0, %struct.Table* %92) #5, !dbg !2696
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2696
  %93 = load %struct.lua_TValue*, %struct.lua_TValue** %59, align 8, !dbg !2700, !tbaa !373
  br label %94, !dbg !2696

; <label>:94:                                     ; preds = %85, %77, %91, %57
  %95 = phi %struct.lua_TValue* [ %73, %85 ], [ %73, %77 ], [ %93, %91 ], [ %73, %57 ], !dbg !2700
  %96 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %95, i64 -2, !dbg !2700
  store %struct.lua_TValue* %96, %struct.lua_TValue** %59, align 8, !dbg !2700, !tbaa !373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2701
  ret void, !dbg !2701
}

; Function Attrs: noredzone
declare hidden %struct.lua_TValue* @luaH_set(%struct.lua_State*, %struct.Table*, %struct.lua_TValue*) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden void @luaC_barrierback(%struct.lua_State*, %struct.Table*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @lua_rawseti(%struct.lua_State*, i32, i32) local_unnamed_addr #0 !dbg !2702 {
  %4 = icmp sgt i32 %1, 0, !dbg !2717
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2718
  br i1 %4, label %5, label %15, !dbg !2718

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !2719
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8, !dbg !2719, !tbaa !401
  %8 = add nsw i32 %1, -1, !dbg !2720
  %9 = sext i32 %8 to i64, !dbg !2721
  %10 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %7, i64 %9, !dbg !2721
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2723
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %11, align 8, !dbg !2723, !tbaa !373
  %13 = icmp ult %struct.lua_TValue* %10, %12, !dbg !2724
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2725
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2726
  %14 = select i1 %13, %struct.lua_TValue* %10, %struct.lua_TValue* @luaO_nilobject_, !dbg !2727
  br label %58

; <label>:15:                                     ; preds = %3
  %16 = icmp sgt i32 %1, -10000, !dbg !2728
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2729
  br i1 %16, label %17, label %22, !dbg !2729

; <label>:17:                                     ; preds = %15
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2730
  %19 = load %struct.lua_TValue*, %struct.lua_TValue** %18, align 8, !dbg !2730, !tbaa !373
  %20 = sext i32 %1 to i64, !dbg !2731
  %21 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %19, i64 %20, !dbg !2731
  br label %58, !dbg !2732

; <label>:22:                                     ; preds = %15
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2733
  switch i32 %1, label %42 [
    i32 -10000, label %23
    i32 -10001, label %27
    i32 -10002, label %40
  ], !dbg !2733

; <label>:23:                                     ; preds = %22
  %24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !2734
  %25 = load %struct.global_State*, %struct.global_State** %24, align 8, !dbg !2734, !tbaa !486
  %26 = getelementptr inbounds %struct.global_State, %struct.global_State* %25, i64 0, i32 20, !dbg !2734
  br label %58, !dbg !2735

; <label>:27:                                     ; preds = %22
  %28 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2736
  %29 = load %struct.CallInfo*, %struct.CallInfo** %28, align 8, !dbg !2736, !tbaa !419
  %30 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %29, i64 0, i32 1, !dbg !2736
  %31 = bitcast %struct.lua_TValue** %30 to %struct.CClosure***, !dbg !2736
  %32 = load %struct.CClosure**, %struct.CClosure*** %31, align 8, !dbg !2736, !tbaa !604
  %33 = load %struct.CClosure*, %struct.CClosure** %32, align 8, !dbg !2736, !tbaa !514
  %34 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !2738
  %35 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %33, i64 0, i32 6, !dbg !2738
  %36 = bitcast %struct.Table** %35 to i64*, !dbg !2738
  %37 = load i64, i64* %36, align 8, !dbg !2738, !tbaa !514
  %38 = bitcast %struct.lua_TValue* %34 to i64*, !dbg !2738
  store i64 %37, i64* %38, align 8, !dbg !2738, !tbaa !514
  %39 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !2738
  store i32 5, i32* %39, align 8, !dbg !2738, !tbaa !382
  br label %58

; <label>:40:                                     ; preds = %22
  %41 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !2739
  br label %58, !dbg !2740

; <label>:42:                                     ; preds = %22
  %43 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2741
  %44 = load %struct.CallInfo*, %struct.CallInfo** %43, align 8, !dbg !2741, !tbaa !419
  %45 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %44, i64 0, i32 1, !dbg !2741
  %46 = bitcast %struct.lua_TValue** %45 to %struct.CClosure***, !dbg !2741
  %47 = load %struct.CClosure**, %struct.CClosure*** %46, align 8, !dbg !2741, !tbaa !604
  %48 = load %struct.CClosure*, %struct.CClosure** %47, align 8, !dbg !2741, !tbaa !514
  %49 = sub nsw i32 -10002, %1, !dbg !2743
  %50 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %48, i64 0, i32 4, !dbg !2744
  %51 = load i8, i8* %50, align 1, !dbg !2744, !tbaa !514
  %52 = zext i8 %51 to i32, !dbg !2745
  %53 = icmp sgt i32 %49, %52, !dbg !2746
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2747
  br i1 %53, label %58, label %54, !dbg !2747

; <label>:54:                                     ; preds = %42
  %55 = add nsw i32 %49, -1, !dbg !2748
  %56 = sext i32 %55 to i64, !dbg !2749
  %57 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %48, i64 0, i32 8, i64 %56, !dbg !2749
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2747
  br label %58, !dbg !2747

; <label>:58:                                     ; preds = %42, %54, %5, %17, %23, %27, %40
  %59 = phi %struct.lua_TValue* [ %14, %5 ], [ %21, %17 ], [ %41, %40 ], [ %34, %27 ], [ %26, %23 ], [ %57, %54 ], [ @luaO_nilobject_, %42 ], !dbg !2750
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2751
  %60 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2753
  %61 = load %struct.lua_TValue*, %struct.lua_TValue** %60, align 8, !dbg !2753, !tbaa !373
  %62 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %61, i64 -1, !dbg !2753
  %63 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %59, i64 0, i32 0, i32 0, !dbg !2753
  %64 = bitcast %struct.lua_TValue* %59 to %struct.Table**, !dbg !2753
  %65 = load %struct.Table*, %struct.Table** %64, align 8, !dbg !2753, !tbaa !514
  %66 = tail call %struct.lua_TValue* @luaH_setnum(%struct.lua_State* %0, %struct.Table* %65, i32 %2) #5, !dbg !2753
  %67 = bitcast %struct.lua_TValue* %62 to i64*, !dbg !2753
  %68 = bitcast %struct.lua_TValue* %66 to i64*, !dbg !2753
  %69 = load i64, i64* %67, align 8, !dbg !2753
  store i64 %69, i64* %68, align 8, !dbg !2753
  %70 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %61, i64 -1, i32 1, !dbg !2753
  %71 = load i32, i32* %70, align 8, !dbg !2753, !tbaa !382
  %72 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %66, i64 0, i32 1, !dbg !2753
  store i32 %71, i32* %72, align 8, !dbg !2753, !tbaa !382
  %73 = load %struct.lua_TValue*, %struct.lua_TValue** %60, align 8, !dbg !2754, !tbaa !373
  %74 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %73, i64 -1, i32 1, !dbg !2754
  %75 = load i32, i32* %74, align 8, !dbg !2754, !tbaa !382
  %76 = icmp sgt i32 %75, 3, !dbg !2754
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2754
  br i1 %76, label %77, label %94, !dbg !2754

; <label>:77:                                     ; preds = %58
  %78 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %73, i64 -1, i32 0, i32 0, !dbg !2754
  %79 = bitcast %union.GCObject** %78 to %struct.GCheader**, !dbg !2754
  %80 = load %struct.GCheader*, %struct.GCheader** %79, align 8, !dbg !2754, !tbaa !514
  %81 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %80, i64 0, i32 2, !dbg !2754
  %82 = load i8, i8* %81, align 1, !dbg !2754, !tbaa !514
  %83 = and i8 %82, 3, !dbg !2754
  %84 = icmp eq i8 %83, 0, !dbg !2754
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2754
  br i1 %84, label %94, label %85, !dbg !2754

; <label>:85:                                     ; preds = %77
  %86 = load %union.GCObject*, %union.GCObject** %63, align 8, !dbg !2754, !tbaa !514
  %87 = getelementptr inbounds %union.GCObject, %union.GCObject* %86, i64 0, i32 0, i32 2, !dbg !2754
  %88 = load i8, i8* %87, align 1, !dbg !2754, !tbaa !514
  %89 = and i8 %88, 4, !dbg !2754
  %90 = icmp eq i8 %89, 0, !dbg !2754
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2757
  br i1 %90, label %94, label %91, !dbg !2757

; <label>:91:                                     ; preds = %85
  %92 = bitcast %union.GCObject* %86 to %struct.Table*, !dbg !2754
  tail call void @luaC_barrierback(%struct.lua_State* nonnull %0, %struct.Table* %92) #5, !dbg !2754
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2754
  %93 = load %struct.lua_TValue*, %struct.lua_TValue** %60, align 8, !dbg !2758, !tbaa !373
  br label %94, !dbg !2754

; <label>:94:                                     ; preds = %85, %77, %91, %58
  %95 = phi %struct.lua_TValue* [ %73, %85 ], [ %73, %77 ], [ %93, %91 ], [ %73, %58 ], !dbg !2758
  %96 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %95, i64 -1, !dbg !2758
  store %struct.lua_TValue* %96, %struct.lua_TValue** %60, align 8, !dbg !2758, !tbaa !373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2759
  ret void, !dbg !2759
}

; Function Attrs: noredzone
declare hidden %struct.lua_TValue* @luaH_setnum(%struct.lua_State*, %struct.Table*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_setmetatable(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !2760 {
  %3 = icmp sgt i32 %1, 0, !dbg !2771
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2772
  br i1 %3, label %4, label %14, !dbg !2772

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !2773
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8, !dbg !2773, !tbaa !401
  %7 = add nsw i32 %1, -1, !dbg !2774
  %8 = sext i32 %7 to i64, !dbg !2775
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 %8, !dbg !2775
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2777
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !2777, !tbaa !373
  %12 = icmp ult %struct.lua_TValue* %9, %11, !dbg !2778
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2779
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2780
  %13 = select i1 %12, %struct.lua_TValue* %9, %struct.lua_TValue* @luaO_nilobject_, !dbg !2781
  br label %57

; <label>:14:                                     ; preds = %2
  %15 = icmp sgt i32 %1, -10000, !dbg !2782
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2783
  br i1 %15, label %16, label %21, !dbg !2783

; <label>:16:                                     ; preds = %14
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2784
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %17, align 8, !dbg !2784, !tbaa !373
  %19 = sext i32 %1 to i64, !dbg !2785
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 %19, !dbg !2785
  br label %57, !dbg !2786

; <label>:21:                                     ; preds = %14
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2787
  switch i32 %1, label %41 [
    i32 -10000, label %22
    i32 -10001, label %26
    i32 -10002, label %39
  ], !dbg !2787

; <label>:22:                                     ; preds = %21
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !2788
  %24 = load %struct.global_State*, %struct.global_State** %23, align 8, !dbg !2788, !tbaa !486
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %24, i64 0, i32 20, !dbg !2788
  br label %57, !dbg !2789

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2790
  %28 = load %struct.CallInfo*, %struct.CallInfo** %27, align 8, !dbg !2790, !tbaa !419
  %29 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %28, i64 0, i32 1, !dbg !2790
  %30 = bitcast %struct.lua_TValue** %29 to %struct.CClosure***, !dbg !2790
  %31 = load %struct.CClosure**, %struct.CClosure*** %30, align 8, !dbg !2790, !tbaa !604
  %32 = load %struct.CClosure*, %struct.CClosure** %31, align 8, !dbg !2790, !tbaa !514
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !2792
  %34 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %32, i64 0, i32 6, !dbg !2792
  %35 = bitcast %struct.Table** %34 to i64*, !dbg !2792
  %36 = load i64, i64* %35, align 8, !dbg !2792, !tbaa !514
  %37 = bitcast %struct.lua_TValue* %33 to i64*, !dbg !2792
  store i64 %36, i64* %37, align 8, !dbg !2792, !tbaa !514
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !2792
  store i32 5, i32* %38, align 8, !dbg !2792, !tbaa !382
  br label %57

; <label>:39:                                     ; preds = %21
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !2793
  br label %57, !dbg !2794

; <label>:41:                                     ; preds = %21
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2795
  %43 = load %struct.CallInfo*, %struct.CallInfo** %42, align 8, !dbg !2795, !tbaa !419
  %44 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %43, i64 0, i32 1, !dbg !2795
  %45 = bitcast %struct.lua_TValue** %44 to %struct.CClosure***, !dbg !2795
  %46 = load %struct.CClosure**, %struct.CClosure*** %45, align 8, !dbg !2795, !tbaa !604
  %47 = load %struct.CClosure*, %struct.CClosure** %46, align 8, !dbg !2795, !tbaa !514
  %48 = sub nsw i32 -10002, %1, !dbg !2797
  %49 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 4, !dbg !2798
  %50 = load i8, i8* %49, align 1, !dbg !2798, !tbaa !514
  %51 = zext i8 %50 to i32, !dbg !2799
  %52 = icmp sgt i32 %48, %51, !dbg !2800
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2801
  br i1 %52, label %57, label %53, !dbg !2801

; <label>:53:                                     ; preds = %41
  %54 = add nsw i32 %48, -1, !dbg !2802
  %55 = sext i32 %54 to i64, !dbg !2803
  %56 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 8, i64 %55, !dbg !2803
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2801
  br label %57, !dbg !2801

; <label>:57:                                     ; preds = %41, %53, %4, %16, %22, %26, %39
  %58 = phi %struct.lua_TValue* [ %13, %4 ], [ %20, %16 ], [ %40, %39 ], [ %33, %26 ], [ %25, %22 ], [ %56, %53 ], [ @luaO_nilobject_, %41 ], !dbg !2804
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2805
  %59 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2807
  %60 = load %struct.lua_TValue*, %struct.lua_TValue** %59, align 8, !dbg !2807, !tbaa !373
  %61 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %60, i64 -1, i32 1, !dbg !2807
  %62 = load i32, i32* %61, align 8, !dbg !2807, !tbaa !382
  %63 = icmp eq i32 %62, 0, !dbg !2807
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2809
  br i1 %63, label %69, label %64, !dbg !2809

; <label>:64:                                     ; preds = %57
  %65 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %60, i64 -1, i32 0, i32 0, !dbg !2810
  %66 = bitcast %union.GCObject** %65 to %struct.Table**, !dbg !2810
  %67 = load %struct.Table*, %struct.Table** %66, align 8, !dbg !2810, !tbaa !514
  %68 = bitcast %struct.Table* %67 to %union.GCObject*, !dbg !2812
  br label %69

; <label>:69:                                     ; preds = %57, %64
  %70 = phi %union.GCObject* [ %68, %64 ], [ null, %57 ], !dbg !2813
  %71 = phi %struct.Table* [ %67, %64 ], [ null, %57 ], !dbg !2813
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %72 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i64 0, i32 1, !dbg !2814
  %73 = load i32, i32* %72, align 8, !dbg !2814, !tbaa !382
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2815
  switch i32 %73, label %112 [
    i32 5, label %74
    i32 7, label %94
  ], !dbg !2815

; <label>:74:                                     ; preds = %69
  %75 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i64 0, i32 0, i32 0, !dbg !2816
  %76 = bitcast %struct.lua_TValue* %58 to %struct.Table**, !dbg !2816
  %77 = load %struct.Table*, %struct.Table** %76, align 8, !dbg !2816, !tbaa !514
  %78 = getelementptr inbounds %struct.Table, %struct.Table* %77, i64 0, i32 5, !dbg !2819
  %79 = bitcast %struct.Table** %78 to %union.GCObject**, !dbg !2820
  store %union.GCObject* %70, %union.GCObject** %79, align 8, !dbg !2820, !tbaa !514
  %80 = icmp eq %struct.Table* %71, null, !dbg !2821
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2823
  br i1 %80, label %117, label %81, !dbg !2823

; <label>:81:                                     ; preds = %74
  %82 = getelementptr inbounds %struct.Table, %struct.Table* %71, i64 0, i32 2, !dbg !2824
  %83 = load i8, i8* %82, align 1, !dbg !2824, !tbaa !514
  %84 = and i8 %83, 3, !dbg !2824
  %85 = icmp eq i8 %84, 0, !dbg !2824
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2824
  br i1 %85, label %117, label %86, !dbg !2824

; <label>:86:                                     ; preds = %81
  %87 = load %union.GCObject*, %union.GCObject** %75, align 8, !dbg !2824, !tbaa !514
  %88 = getelementptr inbounds %union.GCObject, %union.GCObject* %87, i64 0, i32 0, i32 2, !dbg !2824
  %89 = load i8, i8* %88, align 1, !dbg !2824, !tbaa !514
  %90 = and i8 %89, 4, !dbg !2824
  %91 = icmp eq i8 %90, 0, !dbg !2824
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2827
  br i1 %91, label %117, label %92, !dbg !2827

; <label>:92:                                     ; preds = %86
  %93 = bitcast %union.GCObject* %87 to %struct.Table*, !dbg !2824
  tail call void @luaC_barrierback(%struct.lua_State* nonnull %0, %struct.Table* %93) #5, !dbg !2824
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2824
  br label %117, !dbg !2824

; <label>:94:                                     ; preds = %69
  %95 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i64 0, i32 0, i32 0, !dbg !2828
  %96 = bitcast %struct.lua_TValue* %58 to %struct.anon.2**, !dbg !2828
  %97 = load %struct.anon.2*, %struct.anon.2** %96, align 8, !dbg !2828, !tbaa !514
  %98 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %97, i64 0, i32 3, !dbg !2830
  store %struct.Table* %71, %struct.Table** %98, align 8, !dbg !2831, !tbaa !514
  %99 = icmp eq %struct.Table* %71, null, !dbg !2832
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2834
  br i1 %99, label %117, label %100, !dbg !2834

; <label>:100:                                    ; preds = %94
  %101 = getelementptr inbounds %union.GCObject, %union.GCObject* %70, i64 0, i32 0, i32 2, !dbg !2835
  %102 = load i8, i8* %101, align 1, !dbg !2835, !tbaa !514
  %103 = and i8 %102, 3, !dbg !2835
  %104 = icmp eq i8 %103, 0, !dbg !2835
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2835
  br i1 %104, label %117, label %105, !dbg !2835

; <label>:105:                                    ; preds = %100
  %106 = load %union.GCObject*, %union.GCObject** %95, align 8, !dbg !2835, !tbaa !514
  %107 = getelementptr inbounds %union.GCObject, %union.GCObject* %106, i64 0, i32 0, i32 2, !dbg !2835
  %108 = load i8, i8* %107, align 1, !dbg !2835, !tbaa !514
  %109 = and i8 %108, 4, !dbg !2835
  %110 = icmp eq i8 %109, 0, !dbg !2835
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2838
  br i1 %110, label %117, label %111, !dbg !2838

; <label>:111:                                    ; preds = %105
  tail call void @luaC_barrierf(%struct.lua_State* nonnull %0, %union.GCObject* %106, %union.GCObject* nonnull %70) #5, !dbg !2835
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2835
  br label %117, !dbg !2835

; <label>:112:                                    ; preds = %69
  %113 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !2839
  %114 = load %struct.global_State*, %struct.global_State** %113, align 8, !dbg !2839, !tbaa !486
  %115 = sext i32 %73 to i64, !dbg !2839
  %116 = getelementptr inbounds %struct.global_State, %struct.global_State* %114, i64 0, i32 23, i64 %115, !dbg !2839
  store %struct.Table* %71, %struct.Table** %116, align 8, !dbg !2841, !tbaa !890
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2842
  br label %117, !dbg !2842

; <label>:117:                                    ; preds = %86, %81, %74, %105, %100, %94, %111, %92, %112
  %118 = load %struct.lua_TValue*, %struct.lua_TValue** %59, align 8, !dbg !2843, !tbaa !373
  %119 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %118, i64 -1, !dbg !2843
  store %struct.lua_TValue* %119, %struct.lua_TValue** %59, align 8, !dbg !2843, !tbaa !373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2844
  ret i32 1, !dbg !2844
}

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_setfenv(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !2845 {
  %3 = icmp sgt i32 %1, 0, !dbg !2860
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2861
  br i1 %3, label %4, label %14, !dbg !2861

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !2862
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8, !dbg !2862, !tbaa !401
  %7 = add nsw i32 %1, -1, !dbg !2863
  %8 = sext i32 %7 to i64, !dbg !2864
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 %8, !dbg !2864
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2866
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !2866, !tbaa !373
  %12 = icmp ult %struct.lua_TValue* %9, %11, !dbg !2867
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2868
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2869
  %13 = select i1 %12, %struct.lua_TValue* %9, %struct.lua_TValue* @luaO_nilobject_, !dbg !2870
  br label %57

; <label>:14:                                     ; preds = %2
  %15 = icmp sgt i32 %1, -10000, !dbg !2871
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2872
  br i1 %15, label %16, label %21, !dbg !2872

; <label>:16:                                     ; preds = %14
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2873
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %17, align 8, !dbg !2873, !tbaa !373
  %19 = sext i32 %1 to i64, !dbg !2874
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 %19, !dbg !2874
  br label %57, !dbg !2875

; <label>:21:                                     ; preds = %14
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2876
  switch i32 %1, label %41 [
    i32 -10000, label %22
    i32 -10001, label %26
    i32 -10002, label %39
  ], !dbg !2876

; <label>:22:                                     ; preds = %21
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !2877
  %24 = load %struct.global_State*, %struct.global_State** %23, align 8, !dbg !2877, !tbaa !486
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %24, i64 0, i32 20, !dbg !2877
  br label %57, !dbg !2878

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2879
  %28 = load %struct.CallInfo*, %struct.CallInfo** %27, align 8, !dbg !2879, !tbaa !419
  %29 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %28, i64 0, i32 1, !dbg !2879
  %30 = bitcast %struct.lua_TValue** %29 to %struct.CClosure***, !dbg !2879
  %31 = load %struct.CClosure**, %struct.CClosure*** %30, align 8, !dbg !2879, !tbaa !604
  %32 = load %struct.CClosure*, %struct.CClosure** %31, align 8, !dbg !2879, !tbaa !514
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !2881
  %34 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %32, i64 0, i32 6, !dbg !2881
  %35 = bitcast %struct.Table** %34 to i64*, !dbg !2881
  %36 = load i64, i64* %35, align 8, !dbg !2881, !tbaa !514
  %37 = bitcast %struct.lua_TValue* %33 to i64*, !dbg !2881
  store i64 %36, i64* %37, align 8, !dbg !2881, !tbaa !514
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !2881
  store i32 5, i32* %38, align 8, !dbg !2881, !tbaa !382
  br label %57

; <label>:39:                                     ; preds = %21
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !2882
  br label %57, !dbg !2883

; <label>:41:                                     ; preds = %21
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2884
  %43 = load %struct.CallInfo*, %struct.CallInfo** %42, align 8, !dbg !2884, !tbaa !419
  %44 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %43, i64 0, i32 1, !dbg !2884
  %45 = bitcast %struct.lua_TValue** %44 to %struct.CClosure***, !dbg !2884
  %46 = load %struct.CClosure**, %struct.CClosure*** %45, align 8, !dbg !2884, !tbaa !604
  %47 = load %struct.CClosure*, %struct.CClosure** %46, align 8, !dbg !2884, !tbaa !514
  %48 = sub nsw i32 -10002, %1, !dbg !2886
  %49 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 4, !dbg !2887
  %50 = load i8, i8* %49, align 1, !dbg !2887, !tbaa !514
  %51 = zext i8 %50 to i32, !dbg !2888
  %52 = icmp sgt i32 %48, %51, !dbg !2889
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2890
  br i1 %52, label %57, label %53, !dbg !2890

; <label>:53:                                     ; preds = %41
  %54 = add nsw i32 %48, -1, !dbg !2891
  %55 = sext i32 %54 to i64, !dbg !2892
  %56 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 8, i64 %55, !dbg !2892
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2890
  br label %57, !dbg !2890

; <label>:57:                                     ; preds = %41, %53, %4, %16, %22, %26, %39
  %58 = phi %struct.lua_TValue* [ %13, %4 ], [ %20, %16 ], [ %40, %39 ], [ %33, %26 ], [ %25, %22 ], [ %56, %53 ], [ @luaO_nilobject_, %41 ], !dbg !2893
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2894
  %59 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i64 0, i32 1, !dbg !2896
  %60 = load i32, i32* %59, align 8, !dbg !2896, !tbaa !382
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2897
  switch i32 %60, label %92 [
    i32 6, label %61
    i32 7, label %71
    i32 8, label %81
  ], !dbg !2897

; <label>:61:                                     ; preds = %57
  %62 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2898
  %63 = load %struct.lua_TValue*, %struct.lua_TValue** %62, align 8, !dbg !2898, !tbaa !373
  %64 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %63, i64 -1, i32 0, i32 0, !dbg !2898
  %65 = bitcast %union.GCObject** %64 to i64*, !dbg !2898
  %66 = load i64, i64* %65, align 8, !dbg !2898, !tbaa !514
  %67 = bitcast %struct.lua_TValue* %58 to %struct.CClosure**, !dbg !2899
  %68 = load %struct.CClosure*, %struct.CClosure** %67, align 8, !dbg !2899, !tbaa !514
  %69 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %68, i64 0, i32 6, !dbg !2900
  %70 = bitcast %struct.Table** %69 to i64*, !dbg !2901
  store i64 %66, i64* %70, align 8, !dbg !2901, !tbaa !514
  br label %94, !dbg !2902

; <label>:71:                                     ; preds = %57
  %72 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2903
  %73 = load %struct.lua_TValue*, %struct.lua_TValue** %72, align 8, !dbg !2903, !tbaa !373
  %74 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %73, i64 -1, i32 0, i32 0, !dbg !2903
  %75 = bitcast %union.GCObject** %74 to i64*, !dbg !2903
  %76 = load i64, i64* %75, align 8, !dbg !2903, !tbaa !514
  %77 = bitcast %struct.lua_TValue* %58 to %struct.anon.2**, !dbg !2904
  %78 = load %struct.anon.2*, %struct.anon.2** %77, align 8, !dbg !2904, !tbaa !514
  %79 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %78, i64 0, i32 4, !dbg !2905
  %80 = bitcast %struct.Table** %79 to i64*, !dbg !2906
  store i64 %76, i64* %80, align 8, !dbg !2906, !tbaa !514
  br label %94, !dbg !2907

; <label>:81:                                     ; preds = %57
  %82 = bitcast %struct.lua_TValue* %58 to %struct.lua_State**, !dbg !2908
  %83 = load %struct.lua_State*, %struct.lua_State** %82, align 8, !dbg !2908, !tbaa !514
  %84 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %83, i64 0, i32 22, !dbg !2908
  %85 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2908
  %86 = load %struct.lua_TValue*, %struct.lua_TValue** %85, align 8, !dbg !2908, !tbaa !373
  %87 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %86, i64 -1, i32 0, i32 0, !dbg !2908
  %88 = bitcast %union.GCObject** %87 to i64*, !dbg !2908
  %89 = load i64, i64* %88, align 8, !dbg !2908, !tbaa !514
  %90 = bitcast %struct.lua_TValue* %84 to i64*, !dbg !2908
  store i64 %89, i64* %90, align 8, !dbg !2908, !tbaa !514
  %91 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %83, i64 0, i32 22, i32 1, !dbg !2908
  store i32 5, i32* %91, align 8, !dbg !2908, !tbaa !382
  br label %94, !dbg !2909

; <label>:92:                                     ; preds = %57
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2910
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2911
  %93 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2912
  br label %111, !dbg !2911

; <label>:94:                                     ; preds = %81, %71, %61
  %95 = phi %struct.lua_TValue** [ %85, %81 ], [ %72, %71 ], [ %62, %61 ], !dbg !2913
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2917
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2911
  %96 = load %struct.lua_TValue*, %struct.lua_TValue** %95, align 8, !dbg !2913, !tbaa !373
  %97 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %96, i64 -1, i32 0, i32 0, !dbg !2913
  %98 = load %union.GCObject*, %union.GCObject** %97, align 8, !dbg !2913, !tbaa !514
  %99 = getelementptr inbounds %union.GCObject, %union.GCObject* %98, i64 0, i32 0, i32 2, !dbg !2913
  %100 = load i8, i8* %99, align 1, !dbg !2913, !tbaa !514
  %101 = and i8 %100, 3, !dbg !2913
  %102 = icmp eq i8 %101, 0, !dbg !2913
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2913
  br i1 %102, label %111, label %103, !dbg !2913

; <label>:103:                                    ; preds = %94
  %104 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i64 0, i32 0, i32 0, !dbg !2913
  %105 = load %union.GCObject*, %union.GCObject** %104, align 8, !dbg !2913, !tbaa !514
  %106 = getelementptr inbounds %union.GCObject, %union.GCObject* %105, i64 0, i32 0, i32 2, !dbg !2913
  %107 = load i8, i8* %106, align 1, !dbg !2913, !tbaa !514
  %108 = and i8 %107, 4, !dbg !2913
  %109 = icmp eq i8 %108, 0, !dbg !2913
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2918
  br i1 %109, label %111, label %110, !dbg !2918

; <label>:110:                                    ; preds = %103
  tail call void @luaC_barrierf(%struct.lua_State* nonnull %0, %union.GCObject* %105, %union.GCObject* %98) #5, !dbg !2913
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2913
  br label %111, !dbg !2913

; <label>:111:                                    ; preds = %92, %103, %94, %110
  %112 = phi %struct.lua_TValue** [ %93, %92 ], [ %95, %103 ], [ %95, %94 ], [ %95, %110 ], !dbg !2912
  %113 = phi i32 [ 0, %92 ], [ 1, %103 ], [ 1, %94 ], [ 1, %110 ]
  %114 = load %struct.lua_TValue*, %struct.lua_TValue** %112, align 8, !dbg !2919, !tbaa !373
  %115 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %114, i64 -1, !dbg !2919
  store %struct.lua_TValue* %115, %struct.lua_TValue** %112, align 8, !dbg !2919, !tbaa !373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2920
  ret i32 %113, !dbg !2920
}

; Function Attrs: noredzone nounwind
define dso_local void @lua_call(%struct.lua_State*, i32, i32) local_unnamed_addr #0 !dbg !2921 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2930
  %5 = load %struct.lua_TValue*, %struct.lua_TValue** %4, align 8, !dbg !2930, !tbaa !373
  %6 = add nsw i32 %1, 1, !dbg !2931
  %7 = sext i32 %6 to i64, !dbg !2932
  %8 = sub nsw i64 0, %7, !dbg !2932
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %5, i64 %8, !dbg !2932
  tail call void @luaD_call(%struct.lua_State* %0, %struct.lua_TValue* %9, i32 %2) #5, !dbg !2934
  %10 = icmp eq i32 %2, -1, !dbg !2935
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2935
  br i1 %10, label %11, label %19, !dbg !2935

; <label>:11:                                     ; preds = %3
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %4, align 8, !dbg !2935, !tbaa !373
  %13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2935
  %14 = load %struct.CallInfo*, %struct.CallInfo** %13, align 8, !dbg !2935, !tbaa !419
  %15 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %14, i64 0, i32 2, !dbg !2935
  %16 = load %struct.lua_TValue*, %struct.lua_TValue** %15, align 8, !dbg !2935, !tbaa !421
  %17 = icmp ult %struct.lua_TValue* %12, %16, !dbg !2935
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2938
  br i1 %17, label %19, label %18, !dbg !2938

; <label>:18:                                     ; preds = %11
  store %struct.lua_TValue* %12, %struct.lua_TValue** %15, align 8, !dbg !2935, !tbaa !421
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2935
  br label %19, !dbg !2935

; <label>:19:                                     ; preds = %11, %18, %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2939
  ret void, !dbg !2939
}

; Function Attrs: noredzone
declare hidden void @luaD_call(%struct.lua_State*, %struct.lua_TValue*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_pcall(%struct.lua_State*, i32, i32, i32) local_unnamed_addr #0 !dbg !2940 {
  %5 = alloca %struct.CallS, align 8
  %6 = bitcast %struct.CallS* %5 to i8*, !dbg !2958
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #4, !dbg !2958
  %7 = icmp eq i32 %3, 0, !dbg !2959
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2960
  br i1 %7, label %8, label %12, !dbg !2960

; <label>:8:                                      ; preds = %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2962
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 10
  %10 = bitcast %struct.lua_TValue** %9 to i64*
  %11 = load i64, i64* %10, align 8, !dbg !2963, !tbaa !2964
  br label %74, !dbg !2962

; <label>:12:                                     ; preds = %4
  %13 = icmp sgt i32 %3, 0, !dbg !2968
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2969
  br i1 %13, label %14, label %24, !dbg !2969

; <label>:14:                                     ; preds = %12
  %15 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !2970
  %16 = load %struct.lua_TValue*, %struct.lua_TValue** %15, align 8, !dbg !2970, !tbaa !401
  %17 = add nsw i32 %3, -1, !dbg !2971
  %18 = sext i32 %17 to i64, !dbg !2972
  %19 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %16, i64 %18, !dbg !2972
  %20 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2974
  %21 = load %struct.lua_TValue*, %struct.lua_TValue** %20, align 8, !dbg !2974, !tbaa !373
  %22 = icmp ult %struct.lua_TValue* %19, %21, !dbg !2975
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2976
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2977
  %23 = select i1 %22, %struct.lua_TValue* %19, %struct.lua_TValue* @luaO_nilobject_, !dbg !2978
  br label %67

; <label>:24:                                     ; preds = %12
  %25 = icmp sgt i32 %3, -10000, !dbg !2979
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2980
  br i1 %25, label %26, label %31, !dbg !2980

; <label>:26:                                     ; preds = %24
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !2981
  %28 = load %struct.lua_TValue*, %struct.lua_TValue** %27, align 8, !dbg !2981, !tbaa !373
  %29 = sext i32 %3 to i64, !dbg !2982
  %30 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %28, i64 %29, !dbg !2982
  br label %67, !dbg !2983

; <label>:31:                                     ; preds = %24
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2984
  switch i32 %3, label %51 [
    i32 -10000, label %32
    i32 -10001, label %36
    i32 -10002, label %49
  ], !dbg !2984

; <label>:32:                                     ; preds = %31
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !2985
  %34 = load %struct.global_State*, %struct.global_State** %33, align 8, !dbg !2985, !tbaa !486
  %35 = getelementptr inbounds %struct.global_State, %struct.global_State* %34, i64 0, i32 20, !dbg !2985
  br label %67, !dbg !2986

; <label>:36:                                     ; preds = %31
  %37 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2987
  %38 = load %struct.CallInfo*, %struct.CallInfo** %37, align 8, !dbg !2987, !tbaa !419
  %39 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %38, i64 0, i32 1, !dbg !2987
  %40 = bitcast %struct.lua_TValue** %39 to %struct.CClosure***, !dbg !2987
  %41 = load %struct.CClosure**, %struct.CClosure*** %40, align 8, !dbg !2987, !tbaa !604
  %42 = load %struct.CClosure*, %struct.CClosure** %41, align 8, !dbg !2987, !tbaa !514
  %43 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !2989
  %44 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %42, i64 0, i32 6, !dbg !2989
  %45 = bitcast %struct.Table** %44 to i64*, !dbg !2989
  %46 = load i64, i64* %45, align 8, !dbg !2989, !tbaa !514
  %47 = bitcast %struct.lua_TValue* %43 to i64*, !dbg !2989
  store i64 %46, i64* %47, align 8, !dbg !2989, !tbaa !514
  %48 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !2989
  store i32 5, i32* %48, align 8, !dbg !2989, !tbaa !382
  br label %67

; <label>:49:                                     ; preds = %31
  %50 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !2990
  br label %67, !dbg !2991

; <label>:51:                                     ; preds = %31
  %52 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !2992
  %53 = load %struct.CallInfo*, %struct.CallInfo** %52, align 8, !dbg !2992, !tbaa !419
  %54 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %53, i64 0, i32 1, !dbg !2992
  %55 = bitcast %struct.lua_TValue** %54 to %struct.CClosure***, !dbg !2992
  %56 = load %struct.CClosure**, %struct.CClosure*** %55, align 8, !dbg !2992, !tbaa !604
  %57 = load %struct.CClosure*, %struct.CClosure** %56, align 8, !dbg !2992, !tbaa !514
  %58 = sub nsw i32 -10002, %3, !dbg !2994
  %59 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %57, i64 0, i32 4, !dbg !2995
  %60 = load i8, i8* %59, align 1, !dbg !2995, !tbaa !514
  %61 = zext i8 %60 to i32, !dbg !2996
  %62 = icmp sgt i32 %58, %61, !dbg !2997
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2998
  br i1 %62, label %67, label %63, !dbg !2998

; <label>:63:                                     ; preds = %51
  %64 = add nsw i32 %58, -1, !dbg !2999
  %65 = sext i32 %64 to i64, !dbg !3000
  %66 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %57, i64 0, i32 8, i64 %65, !dbg !3000
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2998
  br label %67, !dbg !2998

; <label>:67:                                     ; preds = %51, %63, %14, %26, %32, %36, %49
  %68 = phi %struct.lua_TValue* [ %23, %14 ], [ %30, %26 ], [ %50, %49 ], [ %43, %36 ], [ %35, %32 ], [ %66, %63 ], [ @luaO_nilobject_, %51 ], !dbg !3001
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3002
  %69 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 10, !dbg !3004
  %70 = bitcast %struct.lua_TValue** %69 to i64*, !dbg !3004
  %71 = load i64, i64* %70, align 8, !dbg !3004, !tbaa !2964
  %72 = ptrtoint %struct.lua_TValue* %68 to i64, !dbg !3004
  %73 = sub i64 %72, %71, !dbg !3004
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %74

; <label>:74:                                     ; preds = %67, %8
  %75 = phi i64 [ %11, %8 ], [ %71, %67 ], !dbg !2963
  %76 = phi i64 [ 0, %8 ], [ %73, %67 ], !dbg !3005
  %77 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !3006
  %78 = load %struct.lua_TValue*, %struct.lua_TValue** %77, align 8, !dbg !3006, !tbaa !373
  %79 = add nsw i32 %1, 1, !dbg !3007
  %80 = sext i32 %79 to i64, !dbg !3008
  %81 = sub nsw i64 0, %80, !dbg !3008
  %82 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %78, i64 %81, !dbg !3008
  %83 = getelementptr inbounds %struct.CallS, %struct.CallS* %5, i64 0, i32 0, !dbg !3009
  store %struct.lua_TValue* %82, %struct.lua_TValue** %83, align 8, !dbg !3010, !tbaa !3011
  %84 = getelementptr inbounds %struct.CallS, %struct.CallS* %5, i64 0, i32 1, !dbg !3013
  store i32 %2, i32* %84, align 8, !dbg !3014, !tbaa !3015
  %85 = ptrtoint %struct.lua_TValue* %82 to i64, !dbg !2963
  %86 = sub i64 %85, %75, !dbg !2963
  %87 = call i32 @luaD_pcall(%struct.lua_State* nonnull %0, void (%struct.lua_State*, i8*)* nonnull @f_call, i8* nonnull %6, i64 %86, i64 %76) #5, !dbg !3016
  %88 = icmp eq i32 %2, -1, !dbg !3018
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3018
  br i1 %88, label %89, label %97, !dbg !3018

; <label>:89:                                     ; preds = %74
  %90 = load %struct.lua_TValue*, %struct.lua_TValue** %77, align 8, !dbg !3018, !tbaa !373
  %91 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !3018
  %92 = load %struct.CallInfo*, %struct.CallInfo** %91, align 8, !dbg !3018, !tbaa !419
  %93 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %92, i64 0, i32 2, !dbg !3018
  %94 = load %struct.lua_TValue*, %struct.lua_TValue** %93, align 8, !dbg !3018, !tbaa !421
  %95 = icmp ult %struct.lua_TValue* %90, %94, !dbg !3018
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3021
  br i1 %95, label %97, label %96, !dbg !3021

; <label>:96:                                     ; preds = %89
  store %struct.lua_TValue* %90, %struct.lua_TValue** %93, align 8, !dbg !3018, !tbaa !421
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3018
  br label %97, !dbg !3018

; <label>:97:                                     ; preds = %89, %96, %74
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #4, !dbg !3022
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3023
  ret i32 %87, !dbg !3023
}

; Function Attrs: noredzone
declare hidden i32 @luaD_pcall(%struct.lua_State*, void (%struct.lua_State*, i8*)*, i8*, i64, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal void @f_call(%struct.lua_State*, i8* nocapture readonly) #0 !dbg !3024 {
  %3 = bitcast i8* %1 to %struct.lua_TValue**, !dbg !3032
  %4 = load %struct.lua_TValue*, %struct.lua_TValue** %3, align 8, !dbg !3032, !tbaa !3011
  %5 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !3033
  %6 = bitcast i8* %5 to i32*, !dbg !3033
  %7 = load i32, i32* %6, align 8, !dbg !3033, !tbaa !3015
  tail call void @luaD_call(%struct.lua_State* %0, %struct.lua_TValue* %4, i32 %7) #5, !dbg !3034
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3035
  ret void, !dbg !3035
}

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_cpcall(%struct.lua_State*, i32 (%struct.lua_State*)*, i8*) local_unnamed_addr #0 !dbg !3036 {
  %4 = alloca %struct.CCallS, align 8
  %5 = bitcast %struct.CCallS* %4 to i8*, !dbg !3048
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #4, !dbg !3048
  %6 = getelementptr inbounds %struct.CCallS, %struct.CCallS* %4, i64 0, i32 0, !dbg !3049
  store i32 (%struct.lua_State*)* %1, i32 (%struct.lua_State*)** %6, align 8, !dbg !3050, !tbaa !3051
  %7 = getelementptr inbounds %struct.CCallS, %struct.CCallS* %4, i64 0, i32 1, !dbg !3053
  store i8* %2, i8** %7, align 8, !dbg !3054, !tbaa !3055
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !3056
  %9 = bitcast %struct.lua_TValue** %8 to i64*, !dbg !3056
  %10 = load i64, i64* %9, align 8, !dbg !3056, !tbaa !373
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 10, !dbg !3056
  %12 = bitcast %struct.lua_TValue** %11 to i64*, !dbg !3056
  %13 = load i64, i64* %12, align 8, !dbg !3056, !tbaa !2964
  %14 = sub i64 %10, %13, !dbg !3056
  %15 = call i32 @luaD_pcall(%struct.lua_State* %0, void (%struct.lua_State*, i8*)* nonnull @f_Ccall, i8* nonnull %5, i64 %14, i64 0) #5, !dbg !3057
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #4, !dbg !3059
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3060
  ret i32 %15, !dbg !3060
}

; Function Attrs: noredzone nounwind
define internal void @f_Ccall(%struct.lua_State*, i8* nocapture readonly) #0 !dbg !3061 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !3076
  %4 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8, !dbg !3076, !tbaa !419
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 12, !dbg !3077
  %6 = load %struct.CallInfo*, %struct.CallInfo** %5, align 8, !dbg !3077, !tbaa !715
  %7 = icmp eq %struct.CallInfo* %4, %6, !dbg !3078
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3079
  br i1 %7, label %8, label %11, !dbg !3079

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, i32 0, i32 0, !dbg !3080
  %10 = bitcast %union.GCObject** %9 to %struct.Table**, !dbg !3080
  br label %17, !dbg !3081

; <label>:11:                                     ; preds = %2
  %12 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %4, i64 0, i32 1, !dbg !3082
  %13 = bitcast %struct.lua_TValue** %12 to %struct.CClosure***, !dbg !3082
  %14 = load %struct.CClosure**, %struct.CClosure*** %13, align 8, !dbg !3082, !tbaa !604
  %15 = load %struct.CClosure*, %struct.CClosure** %14, align 8, !dbg !3082, !tbaa !514
  %16 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %15, i64 0, i32 6, !dbg !3084
  br label %17

; <label>:17:                                     ; preds = %8, %11
  %18 = phi %struct.Table** [ %10, %8 ], [ %16, %11 ]
  %19 = load %struct.Table*, %struct.Table** %18, align 8, !dbg !3085, !tbaa !514
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3086
  %20 = tail call %union.Closure* @luaF_newCclosure(%struct.lua_State* nonnull %0, i32 0, %struct.Table* %19) #5, !dbg !3087
  %21 = bitcast i8* %1 to i64*, !dbg !3089
  %22 = load i64, i64* %21, align 8, !dbg !3089, !tbaa !3051
  %23 = getelementptr inbounds %union.Closure, %union.Closure* %20, i64 0, i32 0, i32 7, !dbg !3090
  %24 = bitcast i32 (%struct.lua_State*)** %23 to i64*, !dbg !3091
  store i64 %22, i64* %24, align 8, !dbg !3091, !tbaa !514
  %25 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !3092
  %26 = load %struct.lua_TValue*, %struct.lua_TValue** %25, align 8, !dbg !3092, !tbaa !373
  %27 = bitcast %struct.lua_TValue* %26 to %union.Closure**, !dbg !3092
  store %union.Closure* %20, %union.Closure** %27, align 8, !dbg !3092, !tbaa !514
  %28 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %26, i64 0, i32 1, !dbg !3092
  store i32 6, i32* %28, align 8, !dbg !3092, !tbaa !382
  %29 = load %struct.lua_TValue*, %struct.lua_TValue** %25, align 8, !dbg !3093, !tbaa !373
  %30 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %29, i64 1, !dbg !3093
  store %struct.lua_TValue* %30, %struct.lua_TValue** %25, align 8, !dbg !3093, !tbaa !373
  %31 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !3095
  %32 = bitcast i8* %31 to i64*, !dbg !3095
  %33 = load i64, i64* %32, align 8, !dbg !3095, !tbaa !3055
  %34 = bitcast %struct.lua_TValue* %30 to i64*, !dbg !3095
  store i64 %33, i64* %34, align 8, !dbg !3095, !tbaa !514
  %35 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %29, i64 1, i32 1, !dbg !3095
  store i32 2, i32* %35, align 8, !dbg !3095, !tbaa !382
  %36 = load %struct.lua_TValue*, %struct.lua_TValue** %25, align 8, !dbg !3096, !tbaa !373
  %37 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %36, i64 1, !dbg !3096
  store %struct.lua_TValue* %37, %struct.lua_TValue** %25, align 8, !dbg !3096, !tbaa !373
  %38 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %36, i64 -1, !dbg !3098
  tail call void @luaD_call(%struct.lua_State* nonnull %0, %struct.lua_TValue* nonnull %38, i32 0) #5, !dbg !3099
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3100
  ret void, !dbg !3100
}

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_load(%struct.lua_State*, i8* (%struct.lua_State*, i8*, i64*)*, i8*, i8*) local_unnamed_addr #0 !dbg !3101 {
  %5 = alloca %struct.Zio, align 8
  %6 = bitcast %struct.Zio* %5 to i8*, !dbg !3127
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %6) #4, !dbg !3127
  %7 = icmp eq i8* %3, null, !dbg !3128
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3130
  br i1 %7, label %8, label %9, !dbg !3130

; <label>:8:                                      ; preds = %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3131
  br label %9, !dbg !3131

; <label>:9:                                      ; preds = %4, %8
  %10 = phi i8* [ %3, %4 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), %8 ]
  call void @luaZ_init(%struct.lua_State* %0, %struct.Zio* nonnull %5, i8* (%struct.lua_State*, i8*, i64*)* %1, i8* %2) #5, !dbg !3133
  %11 = call i32 @luaD_protectedparser(%struct.lua_State* %0, %struct.Zio* nonnull %5, i8* nonnull %10) #5, !dbg !3134
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %6) #4, !dbg !3136
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3137
  ret i32 %11, !dbg !3137
}

; Function Attrs: noredzone
declare hidden void @luaZ_init(%struct.lua_State*, %struct.Zio*, i8* (%struct.lua_State*, i8*, i64*)*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden i32 @luaD_protectedparser(%struct.lua_State*, %struct.Zio*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_dump(%struct.lua_State*, i32 (%struct.lua_State*, i8*, i64, i8*)*, i8*) local_unnamed_addr #0 !dbg !3138 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !3154
  %5 = load %struct.lua_TValue*, %struct.lua_TValue** %4, align 8, !dbg !3154, !tbaa !373
  %6 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %5, i64 -1, i32 1, !dbg !3156
  %7 = load i32, i32* %6, align 8, !dbg !3156, !tbaa !382
  %8 = icmp eq i32 %7, 6, !dbg !3156
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3156
  br i1 %8, label %9, label %21, !dbg !3156

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %5, i64 -1, i32 0, i32 0, !dbg !3156
  %11 = bitcast %union.GCObject** %10 to %union.Closure**, !dbg !3156
  %12 = load %union.Closure*, %union.Closure** %11, align 8, !dbg !3156, !tbaa !514
  %13 = getelementptr inbounds %union.Closure, %union.Closure* %12, i64 0, i32 0, i32 3, !dbg !3156
  %14 = load i8, i8* %13, align 2, !dbg !3156, !tbaa !514
  %15 = icmp eq i8 %14, 0, !dbg !3156
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3158
  br i1 %15, label %16, label %21, !dbg !3158

; <label>:16:                                     ; preds = %9
  %17 = getelementptr inbounds %union.Closure, %union.Closure* %12, i64 0, i32 0, i32 7, !dbg !3159
  %18 = bitcast i32 (%struct.lua_State*)** %17 to %struct.Proto**, !dbg !3159
  %19 = load %struct.Proto*, %struct.Proto** %18, align 8, !dbg !3159, !tbaa !514
  %20 = tail call i32 @luaU_dump(%struct.lua_State* nonnull %0, %struct.Proto* %19, i32 (%struct.lua_State*, i8*, i64, i8*)* %1, i8* %2, i32 0) #5, !dbg !3160
  br label %21, !dbg !3162

; <label>:21:                                     ; preds = %3, %9, %16
  %22 = phi i32 [ %20, %16 ], [ 1, %9 ], [ 1, %3 ], !dbg !3163
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3164
  ret i32 %22, !dbg !3164
}

; Function Attrs: noredzone
declare hidden i32 @luaU_dump(%struct.lua_State*, %struct.Proto*, i32 (%struct.lua_State*, i8*, i64, i8*)*, i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_status(%struct.lua_State* nocapture readonly) local_unnamed_addr #0 !dbg !3165 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 3, !dbg !3169
  %3 = load i8, i8* %2, align 2, !dbg !3169, !tbaa !3170
  %4 = zext i8 %3 to i32, !dbg !3171
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3172
  ret i32 %4, !dbg !3172
}

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_gc(%struct.lua_State*, i32, i32) local_unnamed_addr #0 !dbg !3173 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !3187
  %5 = load %struct.global_State*, %struct.global_State** %4, align 8, !dbg !3187, !tbaa !486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3189
  switch i32 %1, label %48 [
    i32 0, label %6
    i32 1, label %8
    i32 2, label %12
    i32 3, label %13
    i32 4, label %18
    i32 5, label %23
    i32 6, label %42
    i32 7, label %45
  ], !dbg !3189

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 13, !dbg !3190
  store i64 -3, i64* %7, align 8, !dbg !3192, !tbaa !509
  br label %48, !dbg !3193

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 14, !dbg !3194
  %10 = load i64, i64* %9, align 8, !dbg !3194, !tbaa !508
  %11 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 13, !dbg !3196
  store i64 %10, i64* %11, align 8, !dbg !3197, !tbaa !509
  br label %48, !dbg !3198

; <label>:12:                                     ; preds = %3
  tail call void @luaC_fullgc(%struct.lua_State* nonnull %0) #5, !dbg !3199
  br label %48, !dbg !3201

; <label>:13:                                     ; preds = %3
  %14 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 14, !dbg !3202
  %15 = load i64, i64* %14, align 8, !dbg !3202, !tbaa !508
  %16 = lshr i64 %15, 10, !dbg !3202
  %17 = trunc i64 %16 to i32, !dbg !3202
  br label %48, !dbg !3204

; <label>:18:                                     ; preds = %3
  %19 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 14, !dbg !3205
  %20 = load i64, i64* %19, align 8, !dbg !3205, !tbaa !508
  %21 = trunc i64 %20 to i32, !dbg !3205
  %22 = and i32 %21, 1023, !dbg !3205
  br label %48, !dbg !3207

; <label>:23:                                     ; preds = %3
  %24 = sext i32 %2 to i64, !dbg !3208
  %25 = shl nsw i64 %24, 10, !dbg !3209
  %26 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 14, !dbg !3211
  %27 = load i64, i64* %26, align 8, !dbg !3211, !tbaa !508
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3213
  %28 = icmp ult i64 %27, %25, !dbg !3213
  %29 = select i1 %28, i64 %25, i64 %27, !dbg !3213
  %30 = sub i64 %29, %25, !dbg !3213
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %31 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 13, !dbg !3214
  store i64 %30, i64* %31, align 8, !dbg !3215
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3216
  %32 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 4
  %33 = icmp ugt i64 %30, %27, !dbg !3217
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3216
  br i1 %33, label %48, label %34, !dbg !3216

; <label>:34:                                     ; preds = %23, %37
  tail call void @luaC_step(%struct.lua_State* %0) #5, !dbg !3218
  %35 = load i8, i8* %32, align 1, !dbg !3220, !tbaa !3222
  %36 = icmp eq i8 %35, 0, !dbg !3223
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3224
  br i1 %36, label %41, label %37, !dbg !3224, !llvm.loop !3225

; <label>:37:                                     ; preds = %34
  %38 = load i64, i64* %31, align 8, !dbg !3227, !tbaa !509
  %39 = load i64, i64* %26, align 8, !dbg !3228, !tbaa !508
  %40 = icmp ugt i64 %38, %39, !dbg !3217
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3216
  br i1 %40, label %48, label %34, !dbg !3216

; <label>:41:                                     ; preds = %34
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3229
  br label %48, !dbg !3229

; <label>:42:                                     ; preds = %3
  %43 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 17, !dbg !3231
  %44 = load i32, i32* %43, align 8, !dbg !3231, !tbaa !3233
  store i32 %2, i32* %43, align 8, !dbg !3234, !tbaa !3233
  br label %48, !dbg !3235

; <label>:45:                                     ; preds = %3
  %46 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 18, !dbg !3236
  %47 = load i32, i32* %46, align 4, !dbg !3236, !tbaa !3238
  store i32 %2, i32* %46, align 4, !dbg !3239, !tbaa !3238
  br label %48, !dbg !3240

; <label>:48:                                     ; preds = %37, %3, %41, %23, %45, %42, %18, %13, %12, %8, %6
  %49 = phi i32 [ %47, %45 ], [ %44, %42 ], [ %22, %18 ], [ %17, %13 ], [ 0, %12 ], [ 0, %8 ], [ 0, %6 ], [ 1, %41 ], [ 0, %23 ], [ -1, %3 ], [ 0, %37 ], !dbg !3241
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3242
  ret i32 %49, !dbg !3242
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3261
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3268
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3269
  %13 = select i1 %12, %struct.lua_TValue* %9, %struct.lua_TValue* @luaO_nilobject_, !dbg !3270
  br label %57

; <label>:14:                                     ; preds = %2
  %15 = icmp sgt i32 %1, -10000, !dbg !3271
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3272
  br i1 %15, label %16, label %21, !dbg !3272

; <label>:16:                                     ; preds = %14
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !3273
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %17, align 8, !dbg !3273, !tbaa !373
  %19 = sext i32 %1 to i64, !dbg !3274
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 %19, !dbg !3274
  br label %57, !dbg !3275

; <label>:21:                                     ; preds = %14
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3276
  switch i32 %1, label %41 [
    i32 -10000, label %22
    i32 -10001, label %26
    i32 -10002, label %39
  ], !dbg !3276

; <label>:22:                                     ; preds = %21
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !3277
  %24 = load %struct.global_State*, %struct.global_State** %23, align 8, !dbg !3277, !tbaa !486
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %24, i64 0, i32 20, !dbg !3277
  br label %57, !dbg !3278

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !3279
  %28 = load %struct.CallInfo*, %struct.CallInfo** %27, align 8, !dbg !3279, !tbaa !419
  %29 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %28, i64 0, i32 1, !dbg !3279
  %30 = bitcast %struct.lua_TValue** %29 to %struct.CClosure***, !dbg !3279
  %31 = load %struct.CClosure**, %struct.CClosure*** %30, align 8, !dbg !3279, !tbaa !604
  %32 = load %struct.CClosure*, %struct.CClosure** %31, align 8, !dbg !3279, !tbaa !514
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !3281
  %34 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %32, i64 0, i32 6, !dbg !3281
  %35 = bitcast %struct.Table** %34 to i64*, !dbg !3281
  %36 = load i64, i64* %35, align 8, !dbg !3281, !tbaa !514
  %37 = bitcast %struct.lua_TValue* %33 to i64*, !dbg !3281
  store i64 %36, i64* %37, align 8, !dbg !3281, !tbaa !514
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !3281
  store i32 5, i32* %38, align 8, !dbg !3281, !tbaa !382
  br label %57

; <label>:39:                                     ; preds = %21
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !3282
  br label %57, !dbg !3283

; <label>:41:                                     ; preds = %21
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !3284
  %43 = load %struct.CallInfo*, %struct.CallInfo** %42, align 8, !dbg !3284, !tbaa !419
  %44 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %43, i64 0, i32 1, !dbg !3284
  %45 = bitcast %struct.lua_TValue** %44 to %struct.CClosure***, !dbg !3284
  %46 = load %struct.CClosure**, %struct.CClosure*** %45, align 8, !dbg !3284, !tbaa !604
  %47 = load %struct.CClosure*, %struct.CClosure** %46, align 8, !dbg !3284, !tbaa !514
  %48 = sub nsw i32 -10002, %1, !dbg !3286
  %49 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 4, !dbg !3287
  %50 = load i8, i8* %49, align 1, !dbg !3287, !tbaa !514
  %51 = zext i8 %50 to i32, !dbg !3288
  %52 = icmp sgt i32 %48, %51, !dbg !3289
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3290
  br i1 %52, label %57, label %53, !dbg !3290

; <label>:53:                                     ; preds = %41
  %54 = add nsw i32 %48, -1, !dbg !3291
  %55 = sext i32 %54 to i64, !dbg !3292
  %56 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i64 0, i32 8, i64 %55, !dbg !3292
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3290
  br label %57, !dbg !3290

; <label>:57:                                     ; preds = %41, %53, %4, %16, %22, %26, %39
  %58 = phi %struct.lua_TValue* [ %13, %4 ], [ %20, %16 ], [ %40, %39 ], [ %33, %26 ], [ %25, %22 ], [ %56, %53 ], [ @luaO_nilobject_, %41 ], !dbg !3293
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3294
  %59 = bitcast %struct.lua_TValue* %58 to %struct.Table**, !dbg !3296
  %60 = load %struct.Table*, %struct.Table** %59, align 8, !dbg !3296, !tbaa !514
  %61 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !3297
  %62 = load %struct.lua_TValue*, %struct.lua_TValue** %61, align 8, !dbg !3297, !tbaa !373
  %63 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %62, i64 -1, !dbg !3298
  %64 = tail call i32 @luaH_next(%struct.lua_State* %0, %struct.Table* %60, %struct.lua_TValue* nonnull %63) #5, !dbg !3299
  %65 = icmp eq i32 %64, 0, !dbg !3301
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3303
  %66 = load %struct.lua_TValue*, %struct.lua_TValue** %61, align 8, !dbg !3304, !tbaa !373
  %67 = select i1 %65, i64 -1, i64 1, !dbg !3303
  %68 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %66, i64 %67, !dbg !3304
  store %struct.lua_TValue* %68, %struct.lua_TValue** %61, align 8, !dbg !3304, !tbaa !373
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3307
  ret i32 %64, !dbg !3307
}

; Function Attrs: noredzone
declare hidden i32 @luaH_next(%struct.lua_State*, %struct.Table*, %struct.lua_TValue*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @lua_concat(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !3308 {
  %3 = icmp sgt i32 %1, 1, !dbg !3319
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3320
  br i1 %3, label %4, label %29, !dbg !3320

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !3321
  %6 = load %struct.global_State*, %struct.global_State** %5, align 8, !dbg !3321, !tbaa !486
  %7 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i64 0, i32 14, !dbg !3321
  %8 = load i64, i64* %7, align 8, !dbg !3321, !tbaa !508
  %9 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i64 0, i32 13, !dbg !3321
  %10 = load i64, i64* %9, align 8, !dbg !3321, !tbaa !509
  %11 = icmp ult i64 %8, %10, !dbg !3321
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3325
  br i1 %11, label %13, label %12, !dbg !3325

; <label>:12:                                     ; preds = %4
  tail call void @luaC_step(%struct.lua_State* nonnull %0) #5, !dbg !3321
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3321
  br label %13, !dbg !3321

; <label>:13:                                     ; preds = %4, %12
  %14 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !3326
  %15 = bitcast %struct.lua_TValue** %14 to i64*, !dbg !3326
  %16 = load i64, i64* %15, align 8, !dbg !3326, !tbaa !373
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !3326
  %18 = bitcast %struct.lua_TValue** %17 to i64*, !dbg !3326
  %19 = load i64, i64* %18, align 8, !dbg !3326, !tbaa !401
  %20 = sub i64 %16, %19, !dbg !3326
  %21 = lshr exact i64 %20, 4, !dbg !3326
  %22 = trunc i64 %21 to i32, !dbg !3326
  %23 = add nsw i32 %22, -1, !dbg !3327
  tail call void @luaV_concat(%struct.lua_State* nonnull %0, i32 %1, i32 %23) #5, !dbg !3328
  %24 = add nsw i32 %1, -1, !dbg !3329
  %25 = load %struct.lua_TValue*, %struct.lua_TValue** %14, align 8, !dbg !3330, !tbaa !373
  %26 = sext i32 %24 to i64, !dbg !3330
  %27 = sub nsw i64 0, %26, !dbg !3330
  %28 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %25, i64 %27, !dbg !3330
  br label %39, !dbg !3331

; <label>:29:                                     ; preds = %2
  %30 = icmp eq i32 %1, 0, !dbg !3332
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3333
  br i1 %30, label %31, label %42, !dbg !3333

; <label>:31:                                     ; preds = %29
  %32 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !3334
  %33 = load %struct.lua_TValue*, %struct.lua_TValue** %32, align 8, !dbg !3334, !tbaa !373
  %34 = tail call %union.TString* @luaS_newlstr(%struct.lua_State* %0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i64 0) #5, !dbg !3334
  %35 = bitcast %struct.lua_TValue* %33 to %union.TString**, !dbg !3334
  store %union.TString* %34, %union.TString** %35, align 8, !dbg !3334, !tbaa !514
  %36 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %33, i64 0, i32 1, !dbg !3334
  store i32 4, i32* %36, align 8, !dbg !3334, !tbaa !382
  %37 = load %struct.lua_TValue*, %struct.lua_TValue** %32, align 8, !dbg !3335, !tbaa !373
  %38 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %37, i64 1, !dbg !3335
  br label %39, !dbg !3337

; <label>:39:                                     ; preds = %13, %31
  %40 = phi %struct.lua_TValue** [ %32, %31 ], [ %14, %13 ]
  %41 = phi %struct.lua_TValue* [ %38, %31 ], [ %28, %13 ]
  store %struct.lua_TValue* %41, %struct.lua_TValue** %40, align 8, !dbg !3338, !tbaa !373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3338
  br label %42, !dbg !3339

; <label>:42:                                     ; preds = %39, %29
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3339
  ret void, !dbg !3339
}

; Function Attrs: noredzone
declare hidden void @luaV_concat(%struct.lua_State*, i32, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i8* (i8*, i8*, i64, i64)* @lua_getallocf(%struct.lua_State* nocapture readonly, i8**) local_unnamed_addr #0 !dbg !3340 {
  %3 = icmp eq i8** %1, null, !dbg !3350
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3352
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !3353
  br i1 %3, label %11, label %5, !dbg !3352

; <label>:5:                                      ; preds = %2
  %6 = load %struct.global_State*, %struct.global_State** %4, align 8, !dbg !3354, !tbaa !486
  %7 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i64 0, i32 2, !dbg !3355
  %8 = bitcast i8** %7 to i64*, !dbg !3355
  %9 = load i64, i64* %8, align 8, !dbg !3355, !tbaa !3356
  %10 = bitcast i8** %1 to i64*, !dbg !3357
  store i64 %9, i64* %10, align 8, !dbg !3357, !tbaa !890
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3358
  br label %11, !dbg !3358

; <label>:11:                                     ; preds = %2, %5
  %12 = load %struct.global_State*, %struct.global_State** %4, align 8, !dbg !3359, !tbaa !486
  %13 = getelementptr inbounds %struct.global_State, %struct.global_State* %12, i64 0, i32 1, !dbg !3360
  %14 = load i8* (i8*, i8*, i64, i64)*, i8* (i8*, i8*, i64, i64)** %13, align 8, !dbg !3360, !tbaa !3361
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3363
  ret i8* (i8*, i8*, i64, i64)* %14, !dbg !3363
}

; Function Attrs: noredzone nounwind
define dso_local void @lua_setallocf(%struct.lua_State* nocapture readonly, i8* (i8*, i8*, i64, i64)*, i8*) local_unnamed_addr #0 !dbg !3364 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !3374
  %5 = load %struct.global_State*, %struct.global_State** %4, align 8, !dbg !3374, !tbaa !486
  %6 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 2, !dbg !3375
  store i8* %2, i8** %6, align 8, !dbg !3376, !tbaa !3356
  %7 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 1, !dbg !3377
  store i8* (i8*, i8*, i64, i64)* %1, i8* (i8*, i8*, i64, i64)** %7, align 8, !dbg !3378, !tbaa !3361
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3379
  ret void, !dbg !3379
}

; Function Attrs: noredzone nounwind
define dso_local nonnull i8* @lua_newuserdata(%struct.lua_State*, i64) local_unnamed_addr #0 !dbg !3380 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !3393
  %4 = load %struct.global_State*, %struct.global_State** %3, align 8, !dbg !3393, !tbaa !486
  %5 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 14, !dbg !3393
  %6 = load i64, i64* %5, align 8, !dbg !3393, !tbaa !508
  %7 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 13, !dbg !3393
  %8 = load i64, i64* %7, align 8, !dbg !3393, !tbaa !509
  %9 = icmp ult i64 %6, %8, !dbg !3393
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3396
  br i1 %9, label %11, label %10, !dbg !3396

; <label>:10:                                     ; preds = %2
  tail call void @luaC_step(%struct.lua_State* nonnull %0) #5, !dbg !3393
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3393
  br label %11, !dbg !3393

; <label>:11:                                     ; preds = %2, %10
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !3399
  %13 = load %struct.CallInfo*, %struct.CallInfo** %12, align 8, !dbg !3399, !tbaa !419
  %14 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 12, !dbg !3400
  %15 = load %struct.CallInfo*, %struct.CallInfo** %14, align 8, !dbg !3400, !tbaa !715
  %16 = icmp eq %struct.CallInfo* %13, %15, !dbg !3401
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3402
  br i1 %16, label %17, label %20, !dbg !3402

; <label>:17:                                     ; preds = %11
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, i32 0, i32 0, !dbg !3403
  %19 = bitcast %union.GCObject** %18 to %struct.Table**, !dbg !3403
  br label %26, !dbg !3404

; <label>:20:                                     ; preds = %11
  %21 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %13, i64 0, i32 1, !dbg !3405
  %22 = bitcast %struct.lua_TValue** %21 to %struct.CClosure***, !dbg !3405
  %23 = load %struct.CClosure**, %struct.CClosure*** %22, align 8, !dbg !3405, !tbaa !604
  %24 = load %struct.CClosure*, %struct.CClosure** %23, align 8, !dbg !3405, !tbaa !514
  %25 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %24, i64 0, i32 6, !dbg !3407
  br label %26

; <label>:26:                                     ; preds = %17, %20
  %27 = phi %struct.Table** [ %19, %17 ], [ %25, %20 ]
  %28 = load %struct.Table*, %struct.Table** %27, align 8, !dbg !3408, !tbaa !514
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3409
  %29 = tail call %union.Udata* @luaS_newudata(%struct.lua_State* nonnull %0, i64 %1, %struct.Table* %28) #5, !dbg !3410
  %30 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !3412
  %31 = load %struct.lua_TValue*, %struct.lua_TValue** %30, align 8, !dbg !3412, !tbaa !373
  %32 = bitcast %struct.lua_TValue* %31 to %union.Udata**, !dbg !3412
  store %union.Udata* %29, %union.Udata** %32, align 8, !dbg !3412, !tbaa !514
  %33 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %31, i64 0, i32 1, !dbg !3412
  store i32 7, i32* %33, align 8, !dbg !3412, !tbaa !382
  %34 = load %struct.lua_TValue*, %struct.lua_TValue** %30, align 8, !dbg !3413, !tbaa !373
  %35 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %34, i64 1, !dbg !3413
  store %struct.lua_TValue* %35, %struct.lua_TValue** %30, align 8, !dbg !3413, !tbaa !373
  %36 = getelementptr inbounds %union.Udata, %union.Udata* %29, i64 1, !dbg !3415
  %37 = bitcast %union.Udata* %36 to i8*, !dbg !3416
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3417
  ret i8* %37, !dbg !3417
}

; Function Attrs: noredzone
declare hidden %union.Udata* @luaS_newudata(%struct.lua_State*, i64, %struct.Table*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i8* @lua_getupvalue(%struct.lua_State* nocapture, i32, i32) local_unnamed_addr #0 !dbg !3418 {
  %4 = icmp sgt i32 %1, 0, !dbg !3438
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3439
  br i1 %4, label %5, label %15, !dbg !3439

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !3440
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8, !dbg !3440, !tbaa !401
  %8 = add nsw i32 %1, -1, !dbg !3441
  %9 = sext i32 %8 to i64, !dbg !3442
  %10 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %7, i64 %9, !dbg !3442
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !3444
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %11, align 8, !dbg !3444, !tbaa !373
  %13 = icmp ult %struct.lua_TValue* %10, %12, !dbg !3445
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3446
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3447
  %14 = select i1 %13, %struct.lua_TValue* %10, %struct.lua_TValue* @luaO_nilobject_, !dbg !3448
  br label %58

; <label>:15:                                     ; preds = %3
  %16 = icmp sgt i32 %1, -10000, !dbg !3449
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3450
  br i1 %16, label %17, label %22, !dbg !3450

; <label>:17:                                     ; preds = %15
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !3451
  %19 = load %struct.lua_TValue*, %struct.lua_TValue** %18, align 8, !dbg !3451, !tbaa !373
  %20 = sext i32 %1 to i64, !dbg !3452
  %21 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %19, i64 %20, !dbg !3452
  br label %58, !dbg !3453

; <label>:22:                                     ; preds = %15
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3454
  switch i32 %1, label %42 [
    i32 -10000, label %23
    i32 -10001, label %27
    i32 -10002, label %40
  ], !dbg !3454

; <label>:23:                                     ; preds = %22
  %24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !3455
  %25 = load %struct.global_State*, %struct.global_State** %24, align 8, !dbg !3455, !tbaa !486
  %26 = getelementptr inbounds %struct.global_State, %struct.global_State* %25, i64 0, i32 20, !dbg !3455
  br label %58, !dbg !3456

; <label>:27:                                     ; preds = %22
  %28 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !3457
  %29 = load %struct.CallInfo*, %struct.CallInfo** %28, align 8, !dbg !3457, !tbaa !419
  %30 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %29, i64 0, i32 1, !dbg !3457
  %31 = bitcast %struct.lua_TValue** %30 to %struct.CClosure***, !dbg !3457
  %32 = load %struct.CClosure**, %struct.CClosure*** %31, align 8, !dbg !3457, !tbaa !604
  %33 = load %struct.CClosure*, %struct.CClosure** %32, align 8, !dbg !3457, !tbaa !514
  %34 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !3459
  %35 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %33, i64 0, i32 6, !dbg !3459
  %36 = bitcast %struct.Table** %35 to i64*, !dbg !3459
  %37 = load i64, i64* %36, align 8, !dbg !3459, !tbaa !514
  %38 = bitcast %struct.lua_TValue* %34 to i64*, !dbg !3459
  store i64 %37, i64* %38, align 8, !dbg !3459, !tbaa !514
  %39 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !3459
  store i32 5, i32* %39, align 8, !dbg !3459, !tbaa !382
  br label %58

; <label>:40:                                     ; preds = %22
  %41 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !3460
  br label %58, !dbg !3461

; <label>:42:                                     ; preds = %22
  %43 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !3462
  %44 = load %struct.CallInfo*, %struct.CallInfo** %43, align 8, !dbg !3462, !tbaa !419
  %45 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %44, i64 0, i32 1, !dbg !3462
  %46 = bitcast %struct.lua_TValue** %45 to %struct.CClosure***, !dbg !3462
  %47 = load %struct.CClosure**, %struct.CClosure*** %46, align 8, !dbg !3462, !tbaa !604
  %48 = load %struct.CClosure*, %struct.CClosure** %47, align 8, !dbg !3462, !tbaa !514
  %49 = sub nsw i32 -10002, %1, !dbg !3464
  %50 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %48, i64 0, i32 4, !dbg !3465
  %51 = load i8, i8* %50, align 1, !dbg !3465, !tbaa !514
  %52 = zext i8 %51 to i32, !dbg !3466
  %53 = icmp sgt i32 %49, %52, !dbg !3467
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3468
  br i1 %53, label %58, label %54, !dbg !3468

; <label>:54:                                     ; preds = %42
  %55 = add nsw i32 %49, -1, !dbg !3469
  %56 = sext i32 %55 to i64, !dbg !3470
  %57 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %48, i64 0, i32 8, i64 %56, !dbg !3470
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3468
  br label %58, !dbg !3468

; <label>:58:                                     ; preds = %42, %54, %5, %17, %23, %27, %40
  %59 = phi %struct.lua_TValue* [ %14, %5 ], [ %21, %17 ], [ %41, %40 ], [ %34, %27 ], [ %26, %23 ], [ %57, %54 ], [ @luaO_nilobject_, %42 ], !dbg !3471
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3472
  %60 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %59, i64 0, i32 1, !dbg !3492
  %61 = load i32, i32* %60, align 8, !dbg !3492, !tbaa !382
  %62 = icmp eq i32 %61, 6, !dbg !3492
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3494
  br i1 %62, label %63, label %90, !dbg !3494

; <label>:63:                                     ; preds = %58
  %64 = bitcast %struct.lua_TValue* %59 to %union.Closure**, !dbg !3495
  %65 = load %union.Closure*, %union.Closure** %64, align 8, !dbg !3495, !tbaa !514
  %66 = getelementptr inbounds %union.Closure, %union.Closure* %65, i64 0, i32 0, i32 3, !dbg !3497
  %67 = load i8, i8* %66, align 2, !dbg !3497, !tbaa !514
  %68 = icmp eq i8 %67, 0, !dbg !3498
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3499
  br i1 %68, label %80, label %69, !dbg !3499

; <label>:69:                                     ; preds = %63
  %70 = icmp sgt i32 %2, 0, !dbg !3500
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3503
  br i1 %70, label %71, label %90, !dbg !3503

; <label>:71:                                     ; preds = %69
  %72 = getelementptr inbounds %union.Closure, %union.Closure* %65, i64 0, i32 0, i32 4, !dbg !3504
  %73 = load i8, i8* %72, align 1, !dbg !3504, !tbaa !514
  %74 = zext i8 %73 to i32, !dbg !3505
  %75 = icmp slt i32 %74, %2, !dbg !3506
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3507
  br i1 %75, label %90, label %76, !dbg !3507

; <label>:76:                                     ; preds = %71
  %77 = add nsw i32 %2, -1, !dbg !3508
  %78 = sext i32 %77 to i64, !dbg !3509
  %79 = getelementptr inbounds %union.Closure, %union.Closure* %65, i64 0, i32 0, i32 8, i64 %78, !dbg !3509
  br label %106, !dbg !3511

; <label>:80:                                     ; preds = %63
  %81 = getelementptr inbounds %union.Closure, %union.Closure* %65, i64 0, i32 0, i32 7, !dbg !3512
  %82 = bitcast i32 (%struct.lua_State*)** %81 to %struct.Proto**, !dbg !3512
  %83 = load %struct.Proto*, %struct.Proto** %82, align 8, !dbg !3512, !tbaa !514
  %84 = icmp sgt i32 %2, 0, !dbg !3514
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3516
  br i1 %84, label %85, label %89, !dbg !3516

; <label>:85:                                     ; preds = %80
  %86 = getelementptr inbounds %struct.Proto, %struct.Proto* %83, i64 0, i32 10, !dbg !3517
  %87 = load i32, i32* %86, align 8, !dbg !3517, !tbaa !3518
  %88 = icmp slt i32 %87, %2, !dbg !3520
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3521
  br i1 %88, label %89, label %91, !dbg !3521

; <label>:89:                                     ; preds = %80, %85
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3522
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3523
  br label %119, !dbg !3511

; <label>:90:                                     ; preds = %69, %71, %58
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3524
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3523
  br label %119, !dbg !3511

; <label>:91:                                     ; preds = %85
  %92 = getelementptr inbounds %union.Closure, %union.Closure* %65, i64 0, i32 0, i32 8, !dbg !3525
  %93 = bitcast [1 x %struct.lua_TValue]* %92 to [1 x %struct.UpVal*]*, !dbg !3525
  %94 = add nsw i32 %2, -1, !dbg !3526
  %95 = sext i32 %94 to i64, !dbg !3527
  %96 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %93, i64 0, i64 %95, !dbg !3527
  %97 = load %struct.UpVal*, %struct.UpVal** %96, align 8, !dbg !3527, !tbaa !514
  %98 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %97, i64 0, i32 3, !dbg !3528
  %99 = load %struct.lua_TValue*, %struct.lua_TValue** %98, align 8, !dbg !3528, !tbaa !3529
  %100 = getelementptr inbounds %struct.Proto, %struct.Proto* %83, i64 0, i32 8, !dbg !3530
  %101 = load %union.TString**, %union.TString*** %100, align 8, !dbg !3530, !tbaa !3531
  %102 = getelementptr inbounds %union.TString*, %union.TString** %101, i64 %95, !dbg !3530
  %103 = load %union.TString*, %union.TString** %102, align 8, !dbg !3530, !tbaa !890
  %104 = getelementptr inbounds %union.TString, %union.TString* %103, i64 1, !dbg !3530
  %105 = bitcast %union.TString* %104 to i8*, !dbg !3530
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3532
  br label %106

; <label>:106:                                    ; preds = %91, %76
  %107 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %76 ], [ %105, %91 ]
  %108 = phi %struct.lua_TValue* [ %79, %76 ], [ %99, %91 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3523
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3511
  %109 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !3533
  %110 = load %struct.lua_TValue*, %struct.lua_TValue** %109, align 8, !dbg !3533, !tbaa !373
  %111 = bitcast %struct.lua_TValue* %108 to i64*, !dbg !3533
  %112 = bitcast %struct.lua_TValue* %110 to i64*, !dbg !3533
  %113 = load i64, i64* %111, align 8, !dbg !3533
  store i64 %113, i64* %112, align 8, !dbg !3533
  %114 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %108, i64 0, i32 1, !dbg !3533
  %115 = load i32, i32* %114, align 8, !dbg !3533, !tbaa !382
  %116 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %110, i64 0, i32 1, !dbg !3533
  store i32 %115, i32* %116, align 8, !dbg !3533, !tbaa !382
  %117 = load %struct.lua_TValue*, %struct.lua_TValue** %109, align 8, !dbg !3534, !tbaa !373
  %118 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %117, i64 1, !dbg !3534
  store %struct.lua_TValue* %118, %struct.lua_TValue** %109, align 8, !dbg !3534, !tbaa !373
  br label %119, !dbg !3536

; <label>:119:                                    ; preds = %89, %90, %106
  %120 = phi i8* [ null, %90 ], [ %107, %106 ], [ null, %89 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3537
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3538
  ret i8* %120, !dbg !3538
}

; Function Attrs: noredzone nounwind
define dso_local i8* @lua_setupvalue(%struct.lua_State*, i32, i32) local_unnamed_addr #0 !dbg !3539 {
  %4 = icmp sgt i32 %1, 0, !dbg !3558
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3559
  br i1 %4, label %5, label %15, !dbg !3559

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !3560
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8, !dbg !3560, !tbaa !401
  %8 = add nsw i32 %1, -1, !dbg !3561
  %9 = sext i32 %8 to i64, !dbg !3562
  %10 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %7, i64 %9, !dbg !3562
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !3564
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %11, align 8, !dbg !3564, !tbaa !373
  %13 = icmp ult %struct.lua_TValue* %10, %12, !dbg !3565
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3566
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3567
  %14 = select i1 %13, %struct.lua_TValue* %10, %struct.lua_TValue* @luaO_nilobject_, !dbg !3568
  br label %58

; <label>:15:                                     ; preds = %3
  %16 = icmp sgt i32 %1, -10000, !dbg !3569
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3570
  br i1 %16, label %17, label %22, !dbg !3570

; <label>:17:                                     ; preds = %15
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !3571
  %19 = load %struct.lua_TValue*, %struct.lua_TValue** %18, align 8, !dbg !3571, !tbaa !373
  %20 = sext i32 %1 to i64, !dbg !3572
  %21 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %19, i64 %20, !dbg !3572
  br label %58, !dbg !3573

; <label>:22:                                     ; preds = %15
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3574
  switch i32 %1, label %42 [
    i32 -10000, label %23
    i32 -10001, label %27
    i32 -10002, label %40
  ], !dbg !3574

; <label>:23:                                     ; preds = %22
  %24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !3575
  %25 = load %struct.global_State*, %struct.global_State** %24, align 8, !dbg !3575, !tbaa !486
  %26 = getelementptr inbounds %struct.global_State, %struct.global_State* %25, i64 0, i32 20, !dbg !3575
  br label %58, !dbg !3576

; <label>:27:                                     ; preds = %22
  %28 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !3577
  %29 = load %struct.CallInfo*, %struct.CallInfo** %28, align 8, !dbg !3577, !tbaa !419
  %30 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %29, i64 0, i32 1, !dbg !3577
  %31 = bitcast %struct.lua_TValue** %30 to %struct.CClosure***, !dbg !3577
  %32 = load %struct.CClosure**, %struct.CClosure*** %31, align 8, !dbg !3577, !tbaa !604
  %33 = load %struct.CClosure*, %struct.CClosure** %32, align 8, !dbg !3577, !tbaa !514
  %34 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, !dbg !3579
  %35 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %33, i64 0, i32 6, !dbg !3579
  %36 = bitcast %struct.Table** %35 to i64*, !dbg !3579
  %37 = load i64, i64* %36, align 8, !dbg !3579, !tbaa !514
  %38 = bitcast %struct.lua_TValue* %34 to i64*, !dbg !3579
  store i64 %37, i64* %38, align 8, !dbg !3579, !tbaa !514
  %39 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23, i32 1, !dbg !3579
  store i32 5, i32* %39, align 8, !dbg !3579, !tbaa !382
  br label %58

; <label>:40:                                     ; preds = %22
  %41 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !3580
  br label %58, !dbg !3581

; <label>:42:                                     ; preds = %22
  %43 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !3582
  %44 = load %struct.CallInfo*, %struct.CallInfo** %43, align 8, !dbg !3582, !tbaa !419
  %45 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %44, i64 0, i32 1, !dbg !3582
  %46 = bitcast %struct.lua_TValue** %45 to %struct.CClosure***, !dbg !3582
  %47 = load %struct.CClosure**, %struct.CClosure*** %46, align 8, !dbg !3582, !tbaa !604
  %48 = load %struct.CClosure*, %struct.CClosure** %47, align 8, !dbg !3582, !tbaa !514
  %49 = sub nsw i32 -10002, %1, !dbg !3584
  %50 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %48, i64 0, i32 4, !dbg !3585
  %51 = load i8, i8* %50, align 1, !dbg !3585, !tbaa !514
  %52 = zext i8 %51 to i32, !dbg !3586
  %53 = icmp sgt i32 %49, %52, !dbg !3587
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3588
  br i1 %53, label %58, label %54, !dbg !3588

; <label>:54:                                     ; preds = %42
  %55 = add nsw i32 %49, -1, !dbg !3589
  %56 = sext i32 %55 to i64, !dbg !3590
  %57 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %48, i64 0, i32 8, i64 %56, !dbg !3590
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3588
  br label %58, !dbg !3588

; <label>:58:                                     ; preds = %42, %54, %5, %17, %23, %27, %40
  %59 = phi %struct.lua_TValue* [ %14, %5 ], [ %21, %17 ], [ %41, %40 ], [ %34, %27 ], [ %26, %23 ], [ %57, %54 ], [ @luaO_nilobject_, %42 ], !dbg !3591
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3592
  %60 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %59, i64 0, i32 1, !dbg !3599
  %61 = load i32, i32* %60, align 8, !dbg !3599, !tbaa !382
  %62 = icmp eq i32 %61, 6, !dbg !3599
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3600
  br i1 %62, label %63, label %90, !dbg !3600

; <label>:63:                                     ; preds = %58
  %64 = bitcast %struct.lua_TValue* %59 to %union.Closure**, !dbg !3601
  %65 = load %union.Closure*, %union.Closure** %64, align 8, !dbg !3601, !tbaa !514
  %66 = getelementptr inbounds %union.Closure, %union.Closure* %65, i64 0, i32 0, i32 3, !dbg !3603
  %67 = load i8, i8* %66, align 2, !dbg !3603, !tbaa !514
  %68 = icmp eq i8 %67, 0, !dbg !3604
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3605
  br i1 %68, label %80, label %69, !dbg !3605

; <label>:69:                                     ; preds = %63
  %70 = icmp sgt i32 %2, 0, !dbg !3606
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3607
  br i1 %70, label %71, label %90, !dbg !3607

; <label>:71:                                     ; preds = %69
  %72 = getelementptr inbounds %union.Closure, %union.Closure* %65, i64 0, i32 0, i32 4, !dbg !3608
  %73 = load i8, i8* %72, align 1, !dbg !3608, !tbaa !514
  %74 = zext i8 %73 to i32, !dbg !3609
  %75 = icmp slt i32 %74, %2, !dbg !3610
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3611
  br i1 %75, label %90, label %76, !dbg !3611

; <label>:76:                                     ; preds = %71
  %77 = add nsw i32 %2, -1, !dbg !3612
  %78 = sext i32 %77 to i64, !dbg !3613
  %79 = getelementptr inbounds %union.Closure, %union.Closure* %65, i64 0, i32 0, i32 8, i64 %78, !dbg !3613
  br label %106, !dbg !3615

; <label>:80:                                     ; preds = %63
  %81 = getelementptr inbounds %union.Closure, %union.Closure* %65, i64 0, i32 0, i32 7, !dbg !3616
  %82 = bitcast i32 (%struct.lua_State*)** %81 to %struct.Proto**, !dbg !3616
  %83 = load %struct.Proto*, %struct.Proto** %82, align 8, !dbg !3616, !tbaa !514
  %84 = icmp sgt i32 %2, 0, !dbg !3618
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3619
  br i1 %84, label %85, label %89, !dbg !3619

; <label>:85:                                     ; preds = %80
  %86 = getelementptr inbounds %struct.Proto, %struct.Proto* %83, i64 0, i32 10, !dbg !3620
  %87 = load i32, i32* %86, align 8, !dbg !3620, !tbaa !3518
  %88 = icmp slt i32 %87, %2, !dbg !3621
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3622
  br i1 %88, label %89, label %91, !dbg !3622

; <label>:89:                                     ; preds = %80, %85
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3623
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3624
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3615
  br label %137, !dbg !3615

; <label>:90:                                     ; preds = %69, %71, %58
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3625
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3624
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3615
  br label %137, !dbg !3615

; <label>:91:                                     ; preds = %85
  %92 = getelementptr inbounds %union.Closure, %union.Closure* %65, i64 0, i32 0, i32 8, !dbg !3626
  %93 = bitcast [1 x %struct.lua_TValue]* %92 to [1 x %struct.UpVal*]*, !dbg !3626
  %94 = add nsw i32 %2, -1, !dbg !3627
  %95 = sext i32 %94 to i64, !dbg !3628
  %96 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %93, i64 0, i64 %95, !dbg !3628
  %97 = load %struct.UpVal*, %struct.UpVal** %96, align 8, !dbg !3628, !tbaa !514
  %98 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %97, i64 0, i32 3, !dbg !3629
  %99 = load %struct.lua_TValue*, %struct.lua_TValue** %98, align 8, !dbg !3629, !tbaa !3529
  %100 = getelementptr inbounds %struct.Proto, %struct.Proto* %83, i64 0, i32 8, !dbg !3630
  %101 = load %union.TString**, %union.TString*** %100, align 8, !dbg !3630, !tbaa !3531
  %102 = getelementptr inbounds %union.TString*, %union.TString** %101, i64 %95, !dbg !3630
  %103 = load %union.TString*, %union.TString** %102, align 8, !dbg !3630, !tbaa !890
  %104 = getelementptr inbounds %union.TString, %union.TString* %103, i64 1, !dbg !3630
  %105 = bitcast %union.TString* %104 to i8*, !dbg !3630
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3631
  br label %106

; <label>:106:                                    ; preds = %91, %76
  %107 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %76 ], [ %105, %91 ]
  %108 = phi %struct.lua_TValue* [ %79, %76 ], [ %99, %91 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3624
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3615
  %109 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !3632
  %110 = load %struct.lua_TValue*, %struct.lua_TValue** %109, align 8, !dbg !3633, !tbaa !373
  %111 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %110, i64 -1, !dbg !3633
  store %struct.lua_TValue* %111, %struct.lua_TValue** %109, align 8, !dbg !3633, !tbaa !373
  %112 = bitcast %struct.lua_TValue* %111 to i64*, !dbg !3634
  %113 = bitcast %struct.lua_TValue* %108 to i64*, !dbg !3634
  %114 = load i64, i64* %112, align 8, !dbg !3634
  store i64 %114, i64* %113, align 8, !dbg !3634
  %115 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %110, i64 -1, i32 1, !dbg !3634
  %116 = load i32, i32* %115, align 8, !dbg !3634, !tbaa !382
  %117 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %108, i64 0, i32 1, !dbg !3634
  store i32 %116, i32* %117, align 8, !dbg !3634, !tbaa !382
  %118 = load %struct.lua_TValue*, %struct.lua_TValue** %109, align 8, !dbg !3635, !tbaa !373
  %119 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %118, i64 0, i32 1, !dbg !3635
  %120 = load i32, i32* %119, align 8, !dbg !3635, !tbaa !382
  %121 = icmp sgt i32 %120, 3, !dbg !3635
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3635
  br i1 %121, label %122, label %137, !dbg !3635

; <label>:122:                                    ; preds = %106
  %123 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %118, i64 0, i32 0, i32 0, !dbg !3635
  %124 = load %union.GCObject*, %union.GCObject** %123, align 8, !dbg !3635, !tbaa !514
  %125 = getelementptr inbounds %union.GCObject, %union.GCObject* %124, i64 0, i32 0, i32 2, !dbg !3635
  %126 = load i8, i8* %125, align 1, !dbg !3635, !tbaa !514
  %127 = and i8 %126, 3, !dbg !3635
  %128 = icmp eq i8 %127, 0, !dbg !3635
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3635
  br i1 %128, label %137, label %129, !dbg !3635

; <label>:129:                                    ; preds = %122
  %130 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %59, i64 0, i32 0, i32 0, !dbg !3635
  %131 = load %union.GCObject*, %union.GCObject** %130, align 8, !dbg !3635, !tbaa !514
  %132 = getelementptr inbounds %union.GCObject, %union.GCObject* %131, i64 0, i32 0, i32 2, !dbg !3635
  %133 = load i8, i8* %132, align 1, !dbg !3635, !tbaa !514
  %134 = and i8 %133, 4, !dbg !3635
  %135 = icmp eq i8 %134, 0, !dbg !3635
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3638
  br i1 %135, label %137, label %136, !dbg !3638

; <label>:136:                                    ; preds = %129
  tail call void @luaC_barrierf(%struct.lua_State* nonnull %0, %union.GCObject* %131, %union.GCObject* %124) #5, !dbg !3635
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3635
  br label %137, !dbg !3635

; <label>:137:                                    ; preds = %89, %90, %129, %122, %106, %136
  %138 = phi i8* [ null, %90 ], [ %107, %129 ], [ %107, %122 ], [ %107, %106 ], [ %107, %136 ], [ null, %89 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3639
  ret i8* %138, !dbg !3639
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }
attributes #6 = { nobuiltin noredzone }

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
!407 = !DILocation(line: 99, column: 5, scope: !397)
!408 = !DILocation(line: 100, column: 17, scope: !409)
!409 = distinct !DILexicalBlock(scope: !397, file: !3, line: 100, column: 12)
!410 = !DILocation(line: 100, column: 12, scope: !397)
!411 = !DILocation(line: 101, column: 5, scope: !412)
!412 = distinct !DILexicalBlock(scope: !413, file: !3, line: 101, column: 5)
!413 = distinct !DILexicalBlock(scope: !409, file: !3, line: 100, column: 22)
!414 = !{!374, !375, i64 56}
!415 = !DILocation(line: 101, column: 5, scope: !413)
!416 = !DILocation(line: 102, column: 25, scope: !417)
!417 = distinct !DILexicalBlock(scope: !413, file: !3, line: 102, column: 9)
!418 = !DILocation(line: 102, column: 12, scope: !417)
!419 = !{!374, !375, i64 40}
!420 = !DILocation(line: 102, column: 16, scope: !417)
!421 = !{!422, !375, i64 16}
!422 = !{!"CallInfo", !375, i64 0, !375, i64 8, !375, i64 16, !375, i64 24, !378, i64 32, !378, i64 36}
!423 = !DILocation(line: 102, column: 29, scope: !417)
!424 = !DILocation(line: 102, column: 20, scope: !417)
!425 = !DILocation(line: 102, column: 9, scope: !413)
!426 = !DILocation(line: 103, column: 18, scope: !417)
!427 = !DILocation(line: 103, column: 7, scope: !417)
!428 = !DILocation(line: 0, scope: !386)
!429 = !DILocation(line: 106, column: 3, scope: !386)
!430 = distinct !DISubprogram(name: "lua_xmove", scope: !3, file: !3, line: 110, type: !431, isLocal: false, isDefinition: true, scopeLine: 110, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !433)
!431 = !DISubroutineType(types: !432)
!432 = !{null, !131, !131, !8}
!433 = !{!434, !435, !436, !437, !438, !443}
!434 = !DILocalVariable(name: "from", arg: 1, scope: !430, file: !3, line: 110, type: !131)
!435 = !DILocalVariable(name: "to", arg: 2, scope: !430, file: !3, line: 110, type: !131)
!436 = !DILocalVariable(name: "n", arg: 3, scope: !430, file: !3, line: 110, type: !8)
!437 = !DILocalVariable(name: "i", scope: !430, file: !3, line: 111, type: !8)
!438 = !DILocalVariable(name: "o2", scope: !439, file: !3, line: 119, type: !362)
!439 = distinct !DILexicalBlock(scope: !440, file: !3, line: 119, column: 5)
!440 = distinct !DILexicalBlock(scope: !441, file: !3, line: 118, column: 27)
!441 = distinct !DILexicalBlock(scope: !442, file: !3, line: 118, column: 3)
!442 = distinct !DILexicalBlock(scope: !430, file: !3, line: 118, column: 3)
!443 = !DILocalVariable(name: "o1", scope: !439, file: !3, line: 119, type: !74)
!444 = !DILocation(line: 110, column: 36, scope: !430)
!445 = !DILocation(line: 110, column: 53, scope: !430)
!446 = !DILocation(line: 110, column: 61, scope: !430)
!447 = !DILocation(line: 112, column: 12, scope: !448)
!448 = distinct !DILexicalBlock(scope: !430, file: !3, line: 112, column: 7)
!449 = !DILocation(line: 112, column: 7, scope: !430)
!450 = !DILocation(line: 117, column: 9, scope: !430)
!451 = !DILocation(line: 117, column: 13, scope: !430)
!452 = !DILocation(line: 111, column: 7, scope: !430)
!453 = !DILocation(line: 118, column: 8, scope: !442)
!454 = !DILocation(line: 118, column: 17, scope: !441)
!455 = !DILocation(line: 118, column: 3, scope: !442)
!456 = !DILocation(line: 119, column: 5, scope: !439)
!457 = !DILocation(line: 118, column: 3, scope: !441)
!458 = distinct !{!458, !455, !459}
!459 = !DILocation(line: 120, column: 3, scope: !442)
!460 = !DILocation(line: 118, column: 23, scope: !441)
!461 = !DILocation(line: 0, scope: !448)
!462 = !DILocation(line: 122, column: 1, scope: !430)
!463 = distinct !DISubprogram(name: "lua_setlevel", scope: !3, file: !3, line: 125, type: !464, isLocal: false, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !466)
!464 = !DISubroutineType(types: !465)
!465 = !{null, !131, !131}
!466 = !{!467, !468}
!467 = !DILocalVariable(name: "from", arg: 1, scope: !463, file: !3, line: 125, type: !131)
!468 = !DILocalVariable(name: "to", arg: 2, scope: !463, file: !3, line: 125, type: !131)
!469 = !DILocation(line: 125, column: 39, scope: !463)
!470 = !DILocation(line: 125, column: 56, scope: !463)
!471 = !DILocation(line: 126, column: 23, scope: !463)
!472 = !{!374, !379, i64 96}
!473 = !DILocation(line: 126, column: 7, scope: !463)
!474 = !DILocation(line: 126, column: 15, scope: !463)
!475 = !DILocation(line: 127, column: 1, scope: !463)
!476 = distinct !DISubprogram(name: "lua_atpanic", scope: !3, file: !3, line: 130, type: !477, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !479)
!477 = !DISubroutineType(types: !478)
!478 = !{!127, !131, !127}
!479 = !{!480, !481, !482}
!480 = !DILocalVariable(name: "L", arg: 1, scope: !476, file: !3, line: 130, type: !131)
!481 = !DILocalVariable(name: "panicf", arg: 2, scope: !476, file: !3, line: 130, type: !127)
!482 = !DILocalVariable(name: "old", scope: !476, file: !3, line: 131, type: !127)
!483 = !DILocation(line: 130, column: 47, scope: !476)
!484 = !DILocation(line: 130, column: 64, scope: !476)
!485 = !DILocation(line: 133, column: 9, scope: !476)
!486 = !{!374, !375, i64 32}
!487 = !DILocation(line: 133, column: 15, scope: !476)
!488 = !{!489, !375, i64 152}
!489 = !{!"global_State", !490, i64 0, !375, i64 16, !375, i64 24, !376, i64 32, !376, i64 33, !378, i64 36, !375, i64 40, !375, i64 48, !375, i64 56, !375, i64 64, !375, i64 72, !375, i64 80, !491, i64 88, !381, i64 112, !381, i64 120, !381, i64 128, !381, i64 136, !378, i64 144, !378, i64 148, !375, i64 152, !380, i64 160, !375, i64 176, !492, i64 184, !376, i64 224, !376, i64 296}
!490 = !{!"stringtable", !375, i64 0, !378, i64 8, !378, i64 12}
!491 = !{!"Mbuffer", !375, i64 0, !381, i64 8, !381, i64 16}
!492 = !{!"UpVal", !375, i64 0, !376, i64 8, !376, i64 9, !375, i64 16, !376, i64 24}
!493 = !DILocation(line: 131, column: 17, scope: !476)
!494 = !DILocation(line: 134, column: 15, scope: !476)
!495 = !DILocation(line: 136, column: 3, scope: !476)
!496 = distinct !DISubprogram(name: "lua_newthread", scope: !3, file: !3, line: 140, type: !497, isLocal: false, isDefinition: true, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !499)
!497 = !DISubroutineType(types: !498)
!498 = !{!131, !131}
!499 = !{!500, !501, !502}
!500 = !DILocalVariable(name: "L", arg: 1, scope: !496, file: !3, line: 140, type: !131)
!501 = !DILocalVariable(name: "L1", scope: !496, file: !3, line: 141, type: !131)
!502 = !DILocalVariable(name: "i_o", scope: !503, file: !3, line: 145, type: !74)
!503 = distinct !DILexicalBlock(scope: !496, file: !3, line: 145, column: 3)
!504 = !DILocation(line: 140, column: 46, scope: !496)
!505 = !DILocation(line: 143, column: 3, scope: !506)
!506 = distinct !DILexicalBlock(scope: !507, file: !3, line: 143, column: 3)
!507 = distinct !DILexicalBlock(scope: !496, file: !3, line: 143, column: 3)
!508 = !{!489, !381, i64 120}
!509 = !{!489, !381, i64 112}
!510 = !DILocation(line: 143, column: 3, scope: !507)
!511 = !DILocation(line: 144, column: 8, scope: !496)
!512 = !DILocation(line: 141, column: 14, scope: !496)
!513 = !DILocation(line: 145, column: 3, scope: !503)
!514 = !{!376, !376, i64 0}
!515 = !DILocation(line: 146, column: 3, scope: !516)
!516 = distinct !DILexicalBlock(scope: !496, file: !3, line: 146, column: 3)
!517 = !DILocation(line: 149, column: 3, scope: !496)
!518 = distinct !DISubprogram(name: "lua_gettop", scope: !3, file: !3, line: 159, type: !129, isLocal: false, isDefinition: true, scopeLine: 159, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !519)
!519 = !{!520}
!520 = !DILocalVariable(name: "L", arg: 1, scope: !518, file: !3, line: 159, type: !131)
!521 = !DILocation(line: 159, column: 36, scope: !518)
!522 = !DILocation(line: 160, column: 10, scope: !518)
!523 = !DILocation(line: 160, column: 3, scope: !518)
!524 = distinct !DISubprogram(name: "lua_settop", scope: !3, file: !3, line: 164, type: !525, isLocal: false, isDefinition: true, scopeLine: 164, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !527)
!525 = !DISubroutineType(types: !526)
!526 = !{null, !131, !8}
!527 = !{!528, !529}
!528 = !DILocalVariable(name: "L", arg: 1, scope: !524, file: !3, line: 164, type: !131)
!529 = !DILocalVariable(name: "idx", arg: 2, scope: !524, file: !3, line: 164, type: !8)
!530 = !DILocation(line: 164, column: 37, scope: !524)
!531 = !DILocation(line: 164, column: 44, scope: !524)
!532 = !DILocation(line: 166, column: 11, scope: !533)
!533 = distinct !DILexicalBlock(scope: !524, file: !3, line: 166, column: 7)
!534 = !DILocation(line: 166, column: 7, scope: !524)
!535 = !DILocation(line: 168, column: 15, scope: !536)
!536 = distinct !DILexicalBlock(scope: !533, file: !3, line: 166, column: 17)
!537 = !DILocation(line: 168, column: 24, scope: !536)
!538 = !DILocation(line: 168, column: 29, scope: !536)
!539 = !DILocation(line: 168, column: 19, scope: !536)
!540 = !DILocation(line: 168, column: 5, scope: !536)
!541 = !DILocation(line: 169, column: 7, scope: !536)
!542 = distinct !{!542, !540, !541}
!543 = !DILocation(line: 170, column: 12, scope: !536)
!544 = !DILocation(line: 171, column: 3, scope: !536)
!545 = !DILocation(line: 174, column: 18, scope: !546)
!546 = distinct !DILexicalBlock(scope: !533, file: !3, line: 172, column: 8)
!547 = !DILocation(line: 174, column: 8, scope: !546)
!548 = !DILocation(line: 174, column: 12, scope: !546)
!549 = !DILocation(line: 177, column: 1, scope: !524)
!550 = distinct !DISubprogram(name: "lua_remove", scope: !3, file: !3, line: 180, type: !525, isLocal: false, isDefinition: true, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !551)
!551 = !{!552, !553, !554, !555, !557}
!552 = !DILocalVariable(name: "L", arg: 1, scope: !550, file: !3, line: 180, type: !131)
!553 = !DILocalVariable(name: "idx", arg: 2, scope: !550, file: !3, line: 180, type: !8)
!554 = !DILocalVariable(name: "p", scope: !550, file: !3, line: 181, type: !140)
!555 = !DILocalVariable(name: "o2", scope: !556, file: !3, line: 185, type: !362)
!556 = distinct !DILexicalBlock(scope: !550, file: !3, line: 185, column: 24)
!557 = !DILocalVariable(name: "o1", scope: !556, file: !3, line: 185, type: !74)
!558 = !DILocation(line: 180, column: 37, scope: !550)
!559 = !DILocation(line: 180, column: 44, scope: !550)
!560 = !DILocalVariable(name: "L", arg: 1, scope: !561, file: !3, line: 49, type: !131)
!561 = distinct !DISubprogram(name: "index2adr", scope: !3, file: !3, line: 49, type: !562, isLocal: true, isDefinition: true, scopeLine: 49, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !564)
!562 = !DISubroutineType(types: !563)
!563 = !{!74, !131, !8}
!564 = !{!560, !565, !566, !569, !575, !577}
!565 = !DILocalVariable(name: "idx", arg: 2, scope: !561, file: !3, line: 49, type: !8)
!566 = !DILocalVariable(name: "o", scope: !567, file: !3, line: 51, type: !74)
!567 = distinct !DILexicalBlock(scope: !568, file: !3, line: 50, column: 16)
!568 = distinct !DILexicalBlock(scope: !561, file: !3, line: 50, column: 7)
!569 = !DILocalVariable(name: "func", scope: !570, file: !3, line: 63, type: !573)
!570 = distinct !DILexicalBlock(scope: !571, file: !3, line: 62, column: 28)
!571 = distinct !DILexicalBlock(scope: !572, file: !3, line: 60, column: 21)
!572 = distinct !DILexicalBlock(scope: !568, file: !3, line: 56, column: 12)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "Closure", file: !11, line: 312, baseType: !113)
!575 = !DILocalVariable(name: "i_o", scope: !576, file: !3, line: 64, type: !74)
!576 = distinct !DILexicalBlock(scope: !570, file: !3, line: 64, column: 7)
!577 = !DILocalVariable(name: "func", scope: !578, file: !3, line: 69, type: !573)
!578 = distinct !DILexicalBlock(scope: !571, file: !3, line: 68, column: 14)
!579 = !DILocation(line: 49, column: 38, scope: !561, inlinedAt: !580)
!580 = distinct !DILocation(line: 183, column: 7, scope: !550)
!581 = !DILocation(line: 49, column: 45, scope: !561, inlinedAt: !580)
!582 = !DILocation(line: 50, column: 11, scope: !568, inlinedAt: !580)
!583 = !DILocation(line: 50, column: 7, scope: !561, inlinedAt: !580)
!584 = !DILocation(line: 51, column: 20, scope: !567, inlinedAt: !580)
!585 = !DILocation(line: 51, column: 32, scope: !567, inlinedAt: !580)
!586 = !DILocation(line: 51, column: 25, scope: !567, inlinedAt: !580)
!587 = !DILocation(line: 51, column: 13, scope: !567, inlinedAt: !580)
!588 = !DILocation(line: 53, column: 17, scope: !589, inlinedAt: !580)
!589 = distinct !DILexicalBlock(scope: !567, file: !3, line: 53, column: 9)
!590 = !DILocation(line: 53, column: 11, scope: !589, inlinedAt: !580)
!591 = !DILocation(line: 53, column: 9, scope: !567, inlinedAt: !580)
!592 = !DILocation(line: 0, scope: !589, inlinedAt: !580)
!593 = !DILocation(line: 54, column: 10, scope: !589, inlinedAt: !580)
!594 = !DILocation(line: 56, column: 16, scope: !572, inlinedAt: !580)
!595 = !DILocation(line: 56, column: 12, scope: !568, inlinedAt: !580)
!596 = !DILocation(line: 58, column: 15, scope: !597, inlinedAt: !580)
!597 = distinct !DILexicalBlock(scope: !572, file: !3, line: 56, column: 37)
!598 = !DILocation(line: 58, column: 19, scope: !597, inlinedAt: !580)
!599 = !DILocation(line: 58, column: 5, scope: !597, inlinedAt: !580)
!600 = !DILocation(line: 60, column: 8, scope: !572, inlinedAt: !580)
!601 = !DILocation(line: 61, column: 36, scope: !571, inlinedAt: !580)
!602 = !DILocation(line: 61, column: 29, scope: !571, inlinedAt: !580)
!603 = !DILocation(line: 63, column: 23, scope: !570, inlinedAt: !580)
!604 = !{!422, !375, i64 8}
!605 = !DILocation(line: 63, column: 16, scope: !570, inlinedAt: !580)
!606 = !DILocation(line: 64, column: 7, scope: !576, inlinedAt: !580)
!607 = !DILocation(line: 67, column: 35, scope: !571, inlinedAt: !580)
!608 = !DILocation(line: 67, column: 28, scope: !571, inlinedAt: !580)
!609 = !DILocation(line: 69, column: 23, scope: !578, inlinedAt: !580)
!610 = !DILocation(line: 69, column: 16, scope: !578, inlinedAt: !580)
!611 = !DILocation(line: 70, column: 30, scope: !578, inlinedAt: !580)
!612 = !DILocation(line: 71, column: 30, scope: !578, inlinedAt: !580)
!613 = !DILocation(line: 71, column: 22, scope: !578, inlinedAt: !580)
!614 = !DILocation(line: 71, column: 19, scope: !578, inlinedAt: !580)
!615 = !DILocation(line: 71, column: 14, scope: !578, inlinedAt: !580)
!616 = !DILocation(line: 72, column: 39, scope: !578, inlinedAt: !580)
!617 = !DILocation(line: 72, column: 20, scope: !578, inlinedAt: !580)
!618 = !DILocation(line: 0, scope: !571, inlinedAt: !580)
!619 = !DILocation(line: 76, column: 1, scope: !561, inlinedAt: !580)
!620 = !DILocation(line: 181, column: 9, scope: !550)
!621 = !DILocation(line: 185, column: 3, scope: !550)
!622 = !DILocation(line: 185, column: 10, scope: !550)
!623 = !DILocation(line: 185, column: 19, scope: !550)
!624 = !DILocation(line: 185, column: 14, scope: !550)
!625 = !DILocation(line: 185, column: 24, scope: !556)
!626 = distinct !{!626, !621, !627}
!627 = !DILocation(line: 185, column: 24, scope: !550)
!628 = !DILocation(line: 186, column: 9, scope: !550)
!629 = !DILocation(line: 188, column: 1, scope: !550)
!630 = distinct !DISubprogram(name: "lua_insert", scope: !3, file: !3, line: 191, type: !525, isLocal: false, isDefinition: true, scopeLine: 191, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !631)
!631 = !{!632, !633, !634, !635, !636, !640, !641, !643}
!632 = !DILocalVariable(name: "L", arg: 1, scope: !630, file: !3, line: 191, type: !131)
!633 = !DILocalVariable(name: "idx", arg: 2, scope: !630, file: !3, line: 191, type: !8)
!634 = !DILocalVariable(name: "p", scope: !630, file: !3, line: 192, type: !140)
!635 = !DILocalVariable(name: "q", scope: !630, file: !3, line: 193, type: !140)
!636 = !DILocalVariable(name: "o2", scope: !637, file: !3, line: 197, type: !362)
!637 = distinct !DILexicalBlock(scope: !638, file: !3, line: 197, column: 30)
!638 = distinct !DILexicalBlock(scope: !639, file: !3, line: 197, column: 3)
!639 = distinct !DILexicalBlock(scope: !630, file: !3, line: 197, column: 3)
!640 = !DILocalVariable(name: "o1", scope: !637, file: !3, line: 197, type: !74)
!641 = !DILocalVariable(name: "o2", scope: !642, file: !3, line: 198, type: !362)
!642 = distinct !DILexicalBlock(scope: !630, file: !3, line: 198, column: 3)
!643 = !DILocalVariable(name: "o1", scope: !642, file: !3, line: 198, type: !74)
!644 = !DILocation(line: 191, column: 37, scope: !630)
!645 = !DILocation(line: 191, column: 44, scope: !630)
!646 = !DILocation(line: 49, column: 38, scope: !561, inlinedAt: !647)
!647 = distinct !DILocation(line: 195, column: 7, scope: !630)
!648 = !DILocation(line: 49, column: 45, scope: !561, inlinedAt: !647)
!649 = !DILocation(line: 50, column: 11, scope: !568, inlinedAt: !647)
!650 = !DILocation(line: 50, column: 7, scope: !561, inlinedAt: !647)
!651 = !DILocation(line: 51, column: 20, scope: !567, inlinedAt: !647)
!652 = !DILocation(line: 51, column: 32, scope: !567, inlinedAt: !647)
!653 = !DILocation(line: 51, column: 25, scope: !567, inlinedAt: !647)
!654 = !DILocation(line: 51, column: 13, scope: !567, inlinedAt: !647)
!655 = !DILocation(line: 53, column: 17, scope: !589, inlinedAt: !647)
!656 = !DILocation(line: 53, column: 11, scope: !589, inlinedAt: !647)
!657 = !DILocation(line: 53, column: 9, scope: !567, inlinedAt: !647)
!658 = !DILocation(line: 0, scope: !589, inlinedAt: !647)
!659 = !DILocation(line: 54, column: 10, scope: !589, inlinedAt: !647)
!660 = !DILocation(line: 56, column: 16, scope: !572, inlinedAt: !647)
!661 = !DILocation(line: 56, column: 12, scope: !568, inlinedAt: !647)
!662 = !DILocation(line: 58, column: 15, scope: !597, inlinedAt: !647)
!663 = !DILocation(line: 58, column: 19, scope: !597, inlinedAt: !647)
!664 = !DILocation(line: 58, column: 5, scope: !597, inlinedAt: !647)
!665 = !DILocation(line: 60, column: 8, scope: !572, inlinedAt: !647)
!666 = !DILocation(line: 61, column: 36, scope: !571, inlinedAt: !647)
!667 = !DILocation(line: 61, column: 29, scope: !571, inlinedAt: !647)
!668 = !DILocation(line: 63, column: 23, scope: !570, inlinedAt: !647)
!669 = !DILocation(line: 63, column: 16, scope: !570, inlinedAt: !647)
!670 = !DILocation(line: 64, column: 7, scope: !576, inlinedAt: !647)
!671 = !DILocation(line: 67, column: 35, scope: !571, inlinedAt: !647)
!672 = !DILocation(line: 67, column: 28, scope: !571, inlinedAt: !647)
!673 = !DILocation(line: 69, column: 23, scope: !578, inlinedAt: !647)
!674 = !DILocation(line: 69, column: 16, scope: !578, inlinedAt: !647)
!675 = !DILocation(line: 70, column: 30, scope: !578, inlinedAt: !647)
!676 = !DILocation(line: 71, column: 30, scope: !578, inlinedAt: !647)
!677 = !DILocation(line: 71, column: 22, scope: !578, inlinedAt: !647)
!678 = !DILocation(line: 71, column: 19, scope: !578, inlinedAt: !647)
!679 = !DILocation(line: 71, column: 14, scope: !578, inlinedAt: !647)
!680 = !DILocation(line: 72, column: 39, scope: !578, inlinedAt: !647)
!681 = !DILocation(line: 72, column: 20, scope: !578, inlinedAt: !647)
!682 = !DILocation(line: 0, scope: !571, inlinedAt: !647)
!683 = !DILocation(line: 76, column: 1, scope: !561, inlinedAt: !647)
!684 = !DILocation(line: 192, column: 9, scope: !630)
!685 = !DILocation(line: 197, column: 15, scope: !639)
!686 = !DILocation(line: 193, column: 9, scope: !630)
!687 = !DILocation(line: 197, column: 8, scope: !639)
!688 = !DILocation(line: 197, column: 21, scope: !638)
!689 = !DILocation(line: 197, column: 3, scope: !639)
!690 = !DILocation(line: 197, column: 30, scope: !637)
!691 = !DILocation(line: 197, column: 3, scope: !638)
!692 = distinct !{!692, !689, !693}
!693 = !DILocation(line: 197, column: 30, scope: !639)
!694 = !DILocation(line: 198, column: 3, scope: !642)
!695 = !DILocation(line: 200, column: 1, scope: !630)
!696 = distinct !DISubprogram(name: "lua_replace", scope: !3, file: !3, line: 203, type: !525, isLocal: false, isDefinition: true, scopeLine: 203, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !697)
!697 = !{!698, !699, !700, !701, !704, !707}
!698 = !DILocalVariable(name: "L", arg: 1, scope: !696, file: !3, line: 203, type: !131)
!699 = !DILocalVariable(name: "idx", arg: 2, scope: !696, file: !3, line: 203, type: !8)
!700 = !DILocalVariable(name: "o", scope: !696, file: !3, line: 204, type: !140)
!701 = !DILocalVariable(name: "func", scope: !702, file: !3, line: 213, type: !573)
!702 = distinct !DILexicalBlock(scope: !703, file: !3, line: 212, column: 32)
!703 = distinct !DILexicalBlock(scope: !696, file: !3, line: 212, column: 7)
!704 = !DILocalVariable(name: "o2", scope: !705, file: !3, line: 219, type: !362)
!705 = distinct !DILexicalBlock(scope: !706, file: !3, line: 219, column: 5)
!706 = distinct !DILexicalBlock(scope: !703, file: !3, line: 218, column: 8)
!707 = !DILocalVariable(name: "o1", scope: !705, file: !3, line: 219, type: !74)
!708 = !DILocation(line: 203, column: 38, scope: !696)
!709 = !DILocation(line: 203, column: 45, scope: !696)
!710 = !DILocation(line: 207, column: 11, scope: !711)
!711 = distinct !DILexicalBlock(scope: !696, file: !3, line: 207, column: 7)
!712 = !DILocation(line: 207, column: 31, scope: !711)
!713 = !DILocation(line: 207, column: 37, scope: !711)
!714 = !DILocation(line: 207, column: 46, scope: !711)
!715 = !{!374, !375, i64 80}
!716 = !DILocation(line: 207, column: 40, scope: !711)
!717 = !DILocation(line: 207, column: 7, scope: !696)
!718 = !DILocation(line: 208, column: 5, scope: !711)
!719 = !DILocation(line: 49, column: 38, scope: !561, inlinedAt: !720)
!720 = distinct !DILocation(line: 210, column: 7, scope: !696)
!721 = !DILocation(line: 49, column: 45, scope: !561, inlinedAt: !720)
!722 = !DILocation(line: 50, column: 7, scope: !561, inlinedAt: !720)
!723 = !DILocation(line: 56, column: 12, scope: !568, inlinedAt: !720)
!724 = !DILocation(line: 60, column: 8, scope: !572, inlinedAt: !720)
!725 = !DILocation(line: 50, column: 11, scope: !568, inlinedAt: !720)
!726 = !DILocation(line: 51, column: 20, scope: !567, inlinedAt: !720)
!727 = !DILocation(line: 51, column: 32, scope: !567, inlinedAt: !720)
!728 = !DILocation(line: 51, column: 25, scope: !567, inlinedAt: !720)
!729 = !DILocation(line: 51, column: 13, scope: !567, inlinedAt: !720)
!730 = !DILocation(line: 53, column: 17, scope: !589, inlinedAt: !720)
!731 = !DILocation(line: 53, column: 11, scope: !589, inlinedAt: !720)
!732 = !DILocation(line: 53, column: 9, scope: !567, inlinedAt: !720)
!733 = !DILocation(line: 0, scope: !589, inlinedAt: !720)
!734 = !DILocation(line: 54, column: 10, scope: !589, inlinedAt: !720)
!735 = !DILocation(line: 56, column: 16, scope: !572, inlinedAt: !720)
!736 = !DILocation(line: 58, column: 15, scope: !597, inlinedAt: !720)
!737 = !DILocation(line: 58, column: 19, scope: !597, inlinedAt: !720)
!738 = !DILocation(line: 58, column: 5, scope: !597, inlinedAt: !720)
!739 = !DILocation(line: 63, column: 23, scope: !570, inlinedAt: !720)
!740 = !DILocation(line: 61, column: 36, scope: !571, inlinedAt: !720)
!741 = !DILocation(line: 61, column: 29, scope: !571, inlinedAt: !720)
!742 = !DILocation(line: 67, column: 35, scope: !571, inlinedAt: !720)
!743 = !DILocation(line: 67, column: 28, scope: !571, inlinedAt: !720)
!744 = !DILocation(line: 69, column: 23, scope: !578, inlinedAt: !720)
!745 = !DILocation(line: 69, column: 16, scope: !578, inlinedAt: !720)
!746 = !DILocation(line: 70, column: 30, scope: !578, inlinedAt: !720)
!747 = !DILocation(line: 71, column: 30, scope: !578, inlinedAt: !720)
!748 = !DILocation(line: 71, column: 22, scope: !578, inlinedAt: !720)
!749 = !DILocation(line: 71, column: 19, scope: !578, inlinedAt: !720)
!750 = !DILocation(line: 71, column: 14, scope: !578, inlinedAt: !720)
!751 = !DILocation(line: 72, column: 39, scope: !578, inlinedAt: !720)
!752 = !DILocation(line: 72, column: 20, scope: !578, inlinedAt: !720)
!753 = !DILocation(line: 63, column: 16, scope: !570, inlinedAt: !720)
!754 = !DILocation(line: 64, column: 7, scope: !576, inlinedAt: !720)
!755 = !DILocation(line: 76, column: 1, scope: !561, inlinedAt: !720)
!756 = !DILocation(line: 204, column: 9, scope: !696)
!757 = !DILocation(line: 212, column: 7, scope: !696)
!758 = !DILocation(line: 213, column: 21, scope: !702)
!759 = !DILocation(line: 213, column: 14, scope: !702)
!760 = !DILocation(line: 215, column: 19, scope: !702)
!761 = !DILocation(line: 215, column: 13, scope: !702)
!762 = !DILocation(line: 215, column: 17, scope: !702)
!763 = !DILocation(line: 216, column: 5, scope: !764)
!764 = distinct !DILexicalBlock(scope: !765, file: !3, line: 216, column: 5)
!765 = distinct !DILexicalBlock(scope: !702, file: !3, line: 216, column: 5)
!766 = !DILocation(line: 216, column: 5, scope: !765)
!767 = !DILocation(line: 217, column: 3, scope: !702)
!768 = !DILocation(line: 219, column: 5, scope: !705)
!769 = !DILocation(line: 220, column: 13, scope: !770)
!770 = distinct !DILexicalBlock(scope: !706, file: !3, line: 220, column: 9)
!771 = !DILocation(line: 220, column: 9, scope: !706)
!772 = !DILocation(line: 221, column: 7, scope: !773)
!773 = distinct !DILexicalBlock(scope: !774, file: !3, line: 221, column: 7)
!774 = distinct !DILexicalBlock(scope: !770, file: !3, line: 221, column: 7)
!775 = !DILocation(line: 221, column: 7, scope: !774)
!776 = !DILocation(line: 223, column: 6, scope: !696)
!777 = !DILocation(line: 223, column: 9, scope: !696)
!778 = !DILocation(line: 225, column: 1, scope: !696)
!779 = distinct !DISubprogram(name: "lua_pushvalue", scope: !3, file: !3, line: 228, type: !525, isLocal: false, isDefinition: true, scopeLine: 228, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !780)
!780 = !{!781, !782, !783, !785}
!781 = !DILocalVariable(name: "L", arg: 1, scope: !779, file: !3, line: 228, type: !131)
!782 = !DILocalVariable(name: "idx", arg: 2, scope: !779, file: !3, line: 228, type: !8)
!783 = !DILocalVariable(name: "o2", scope: !784, file: !3, line: 230, type: !362)
!784 = distinct !DILexicalBlock(scope: !779, file: !3, line: 230, column: 3)
!785 = !DILocalVariable(name: "o1", scope: !784, file: !3, line: 230, type: !74)
!786 = !DILocation(line: 228, column: 40, scope: !779)
!787 = !DILocation(line: 228, column: 47, scope: !779)
!788 = !DILocation(line: 49, column: 38, scope: !561, inlinedAt: !789)
!789 = distinct !DILocation(line: 230, column: 3, scope: !784)
!790 = !DILocation(line: 49, column: 45, scope: !561, inlinedAt: !789)
!791 = !DILocation(line: 50, column: 11, scope: !568, inlinedAt: !789)
!792 = !DILocation(line: 50, column: 7, scope: !561, inlinedAt: !789)
!793 = !DILocation(line: 51, column: 20, scope: !567, inlinedAt: !789)
!794 = !DILocation(line: 51, column: 32, scope: !567, inlinedAt: !789)
!795 = !DILocation(line: 51, column: 25, scope: !567, inlinedAt: !789)
!796 = !DILocation(line: 51, column: 13, scope: !567, inlinedAt: !789)
!797 = !DILocation(line: 53, column: 17, scope: !589, inlinedAt: !789)
!798 = !DILocation(line: 53, column: 11, scope: !589, inlinedAt: !789)
!799 = !DILocation(line: 53, column: 9, scope: !567, inlinedAt: !789)
!800 = !DILocation(line: 0, scope: !589, inlinedAt: !789)
!801 = !DILocation(line: 54, column: 10, scope: !589, inlinedAt: !789)
!802 = !DILocation(line: 56, column: 16, scope: !572, inlinedAt: !789)
!803 = !DILocation(line: 56, column: 12, scope: !568, inlinedAt: !789)
!804 = !DILocation(line: 58, column: 15, scope: !597, inlinedAt: !789)
!805 = !DILocation(line: 58, column: 19, scope: !597, inlinedAt: !789)
!806 = !DILocation(line: 58, column: 5, scope: !597, inlinedAt: !789)
!807 = !DILocation(line: 60, column: 8, scope: !572, inlinedAt: !789)
!808 = !DILocation(line: 61, column: 36, scope: !571, inlinedAt: !789)
!809 = !DILocation(line: 61, column: 29, scope: !571, inlinedAt: !789)
!810 = !DILocation(line: 63, column: 23, scope: !570, inlinedAt: !789)
!811 = !DILocation(line: 63, column: 16, scope: !570, inlinedAt: !789)
!812 = !DILocation(line: 64, column: 7, scope: !576, inlinedAt: !789)
!813 = !DILocation(line: 67, column: 35, scope: !571, inlinedAt: !789)
!814 = !DILocation(line: 67, column: 28, scope: !571, inlinedAt: !789)
!815 = !DILocation(line: 69, column: 23, scope: !578, inlinedAt: !789)
!816 = !DILocation(line: 69, column: 16, scope: !578, inlinedAt: !789)
!817 = !DILocation(line: 70, column: 30, scope: !578, inlinedAt: !789)
!818 = !DILocation(line: 71, column: 30, scope: !578, inlinedAt: !789)
!819 = !DILocation(line: 71, column: 22, scope: !578, inlinedAt: !789)
!820 = !DILocation(line: 71, column: 19, scope: !578, inlinedAt: !789)
!821 = !DILocation(line: 71, column: 14, scope: !578, inlinedAt: !789)
!822 = !DILocation(line: 72, column: 39, scope: !578, inlinedAt: !789)
!823 = !DILocation(line: 72, column: 20, scope: !578, inlinedAt: !789)
!824 = !DILocation(line: 0, scope: !571, inlinedAt: !789)
!825 = !DILocation(line: 76, column: 1, scope: !561, inlinedAt: !789)
!826 = !DILocation(line: 230, column: 3, scope: !784)
!827 = !DILocation(line: 231, column: 3, scope: !828)
!828 = distinct !DILexicalBlock(scope: !779, file: !3, line: 231, column: 3)
!829 = !DILocation(line: 233, column: 1, scope: !779)
!830 = distinct !DISubprogram(name: "lua_type", scope: !3, file: !3, line: 242, type: !387, isLocal: false, isDefinition: true, scopeLine: 242, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !831)
!831 = !{!832, !833, !834}
!832 = !DILocalVariable(name: "L", arg: 1, scope: !830, file: !3, line: 242, type: !131)
!833 = !DILocalVariable(name: "idx", arg: 2, scope: !830, file: !3, line: 242, type: !8)
!834 = !DILocalVariable(name: "o", scope: !830, file: !3, line: 243, type: !140)
!835 = !DILocation(line: 242, column: 34, scope: !830)
!836 = !DILocation(line: 242, column: 41, scope: !830)
!837 = !DILocation(line: 49, column: 38, scope: !561, inlinedAt: !838)
!838 = distinct !DILocation(line: 243, column: 13, scope: !830)
!839 = !DILocation(line: 49, column: 45, scope: !561, inlinedAt: !838)
!840 = !DILocation(line: 50, column: 11, scope: !568, inlinedAt: !838)
!841 = !DILocation(line: 50, column: 7, scope: !561, inlinedAt: !838)
!842 = !DILocation(line: 51, column: 20, scope: !567, inlinedAt: !838)
!843 = !DILocation(line: 51, column: 32, scope: !567, inlinedAt: !838)
!844 = !DILocation(line: 51, column: 25, scope: !567, inlinedAt: !838)
!845 = !DILocation(line: 51, column: 13, scope: !567, inlinedAt: !838)
!846 = !DILocation(line: 53, column: 17, scope: !589, inlinedAt: !838)
!847 = !DILocation(line: 53, column: 11, scope: !589, inlinedAt: !838)
!848 = !DILocation(line: 53, column: 9, scope: !567, inlinedAt: !838)
!849 = !DILocation(line: 0, scope: !589, inlinedAt: !838)
!850 = !DILocation(line: 76, column: 1, scope: !561, inlinedAt: !838)
!851 = !DILocation(line: 243, column: 9, scope: !830)
!852 = !DILocation(line: 244, column: 10, scope: !830)
!853 = !DILocation(line: 56, column: 16, scope: !572, inlinedAt: !838)
!854 = !DILocation(line: 56, column: 12, scope: !568, inlinedAt: !838)
!855 = !DILocation(line: 58, column: 15, scope: !597, inlinedAt: !838)
!856 = !DILocation(line: 58, column: 19, scope: !597, inlinedAt: !838)
!857 = !DILocation(line: 58, column: 5, scope: !597, inlinedAt: !838)
!858 = !DILocation(line: 60, column: 8, scope: !572, inlinedAt: !838)
!859 = !DILocation(line: 61, column: 36, scope: !571, inlinedAt: !838)
!860 = !DILocation(line: 61, column: 29, scope: !571, inlinedAt: !838)
!861 = !DILocation(line: 63, column: 23, scope: !570, inlinedAt: !838)
!862 = !DILocation(line: 63, column: 16, scope: !570, inlinedAt: !838)
!863 = !DILocation(line: 64, column: 7, scope: !576, inlinedAt: !838)
!864 = !DILocation(line: 67, column: 35, scope: !571, inlinedAt: !838)
!865 = !DILocation(line: 67, column: 28, scope: !571, inlinedAt: !838)
!866 = !DILocation(line: 69, column: 23, scope: !578, inlinedAt: !838)
!867 = !DILocation(line: 69, column: 16, scope: !578, inlinedAt: !838)
!868 = !DILocation(line: 70, column: 30, scope: !578, inlinedAt: !838)
!869 = !DILocation(line: 71, column: 30, scope: !578, inlinedAt: !838)
!870 = !DILocation(line: 71, column: 22, scope: !578, inlinedAt: !838)
!871 = !DILocation(line: 71, column: 19, scope: !578, inlinedAt: !838)
!872 = !DILocation(line: 71, column: 14, scope: !578, inlinedAt: !838)
!873 = !DILocation(line: 72, column: 39, scope: !578, inlinedAt: !838)
!874 = !DILocation(line: 72, column: 20, scope: !578, inlinedAt: !838)
!875 = !DILocation(line: 0, scope: !571, inlinedAt: !838)
!876 = !DILocation(line: 244, column: 13, scope: !830)
!877 = !DILocation(line: 244, column: 46, scope: !830)
!878 = !DILocation(line: 244, column: 3, scope: !830)
!879 = distinct !DISubprogram(name: "lua_typename", scope: !3, file: !3, line: 248, type: !880, isLocal: false, isDefinition: true, scopeLine: 248, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !882)
!880 = !DISubroutineType(types: !881)
!881 = !{!257, !131, !8}
!882 = !{!883, !884}
!883 = !DILocalVariable(name: "L", arg: 1, scope: !879, file: !3, line: 248, type: !131)
!884 = !DILocalVariable(name: "t", arg: 2, scope: !879, file: !3, line: 248, type: !8)
!885 = !DILocation(line: 248, column: 46, scope: !879)
!886 = !DILocation(line: 248, column: 53, scope: !879)
!887 = !DILocation(line: 250, column: 13, scope: !879)
!888 = !DILocation(line: 250, column: 10, scope: !879)
!889 = !DILocation(line: 250, column: 42, scope: !879)
!890 = !{!375, !375, i64 0}
!891 = !DILocation(line: 250, column: 3, scope: !879)
!892 = distinct !DISubprogram(name: "lua_iscfunction", scope: !3, file: !3, line: 254, type: !387, isLocal: false, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !893)
!893 = !{!894, !895, !896}
!894 = !DILocalVariable(name: "L", arg: 1, scope: !892, file: !3, line: 254, type: !131)
!895 = !DILocalVariable(name: "idx", arg: 2, scope: !892, file: !3, line: 254, type: !8)
!896 = !DILocalVariable(name: "o", scope: !892, file: !3, line: 255, type: !140)
!897 = !DILocation(line: 254, column: 41, scope: !892)
!898 = !DILocation(line: 254, column: 48, scope: !892)
!899 = !DILocation(line: 49, column: 38, scope: !561, inlinedAt: !900)
!900 = distinct !DILocation(line: 255, column: 13, scope: !892)
!901 = !DILocation(line: 49, column: 45, scope: !561, inlinedAt: !900)
!902 = !DILocation(line: 50, column: 11, scope: !568, inlinedAt: !900)
!903 = !DILocation(line: 50, column: 7, scope: !561, inlinedAt: !900)
!904 = !DILocation(line: 51, column: 20, scope: !567, inlinedAt: !900)
!905 = !DILocation(line: 51, column: 32, scope: !567, inlinedAt: !900)
!906 = !DILocation(line: 51, column: 25, scope: !567, inlinedAt: !900)
!907 = !DILocation(line: 51, column: 13, scope: !567, inlinedAt: !900)
!908 = !DILocation(line: 53, column: 17, scope: !589, inlinedAt: !900)
!909 = !DILocation(line: 53, column: 11, scope: !589, inlinedAt: !900)
!910 = !DILocation(line: 53, column: 9, scope: !567, inlinedAt: !900)
!911 = !DILocation(line: 0, scope: !589, inlinedAt: !900)
!912 = !DILocation(line: 54, column: 10, scope: !589, inlinedAt: !900)
!913 = !DILocation(line: 56, column: 16, scope: !572, inlinedAt: !900)
!914 = !DILocation(line: 56, column: 12, scope: !568, inlinedAt: !900)
!915 = !DILocation(line: 58, column: 15, scope: !597, inlinedAt: !900)
!916 = !DILocation(line: 58, column: 19, scope: !597, inlinedAt: !900)
!917 = !DILocation(line: 58, column: 5, scope: !597, inlinedAt: !900)
!918 = !DILocation(line: 60, column: 8, scope: !572, inlinedAt: !900)
!919 = !DILocation(line: 61, column: 36, scope: !571, inlinedAt: !900)
!920 = !DILocation(line: 61, column: 29, scope: !571, inlinedAt: !900)
!921 = !DILocation(line: 63, column: 23, scope: !570, inlinedAt: !900)
!922 = !DILocation(line: 63, column: 16, scope: !570, inlinedAt: !900)
!923 = !DILocation(line: 64, column: 7, scope: !576, inlinedAt: !900)
!924 = !DILocation(line: 67, column: 35, scope: !571, inlinedAt: !900)
!925 = !DILocation(line: 67, column: 28, scope: !571, inlinedAt: !900)
!926 = !DILocation(line: 69, column: 23, scope: !578, inlinedAt: !900)
!927 = !DILocation(line: 69, column: 16, scope: !578, inlinedAt: !900)
!928 = !DILocation(line: 70, column: 30, scope: !578, inlinedAt: !900)
!929 = !DILocation(line: 71, column: 30, scope: !578, inlinedAt: !900)
!930 = !DILocation(line: 71, column: 22, scope: !578, inlinedAt: !900)
!931 = !DILocation(line: 71, column: 19, scope: !578, inlinedAt: !900)
!932 = !DILocation(line: 71, column: 14, scope: !578, inlinedAt: !900)
!933 = !DILocation(line: 72, column: 39, scope: !578, inlinedAt: !900)
!934 = !DILocation(line: 72, column: 20, scope: !578, inlinedAt: !900)
!935 = !DILocation(line: 0, scope: !571, inlinedAt: !900)
!936 = !DILocation(line: 76, column: 1, scope: !561, inlinedAt: !900)
!937 = !DILocation(line: 255, column: 9, scope: !892)
!938 = !DILocation(line: 256, column: 10, scope: !892)
!939 = !DILocation(line: 256, column: 3, scope: !892)
!940 = distinct !DISubprogram(name: "lua_isnumber", scope: !3, file: !3, line: 260, type: !387, isLocal: false, isDefinition: true, scopeLine: 260, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !941)
!941 = !{!942, !943, !944, !945}
!942 = !DILocalVariable(name: "L", arg: 1, scope: !940, file: !3, line: 260, type: !131)
!943 = !DILocalVariable(name: "idx", arg: 2, scope: !940, file: !3, line: 260, type: !8)
!944 = !DILocalVariable(name: "n", scope: !940, file: !3, line: 261, type: !75)
!945 = !DILocalVariable(name: "o", scope: !940, file: !3, line: 262, type: !362)
!946 = !DILocation(line: 260, column: 38, scope: !940)
!947 = !DILocation(line: 260, column: 45, scope: !940)
!948 = !DILocation(line: 261, column: 3, scope: !940)
!949 = !DILocation(line: 49, column: 38, scope: !561, inlinedAt: !950)
!950 = distinct !DILocation(line: 262, column: 21, scope: !940)
!951 = !DILocation(line: 49, column: 45, scope: !561, inlinedAt: !950)
!952 = !DILocation(line: 50, column: 11, scope: !568, inlinedAt: !950)
!953 = !DILocation(line: 50, column: 7, scope: !561, inlinedAt: !950)
!954 = !DILocation(line: 51, column: 20, scope: !567, inlinedAt: !950)
!955 = !DILocation(line: 51, column: 32, scope: !567, inlinedAt: !950)
!956 = !DILocation(line: 51, column: 25, scope: !567, inlinedAt: !950)
!957 = !DILocation(line: 51, column: 13, scope: !567, inlinedAt: !950)
!958 = !DILocation(line: 53, column: 17, scope: !589, inlinedAt: !950)
!959 = !DILocation(line: 53, column: 11, scope: !589, inlinedAt: !950)
!960 = !DILocation(line: 53, column: 9, scope: !567, inlinedAt: !950)
!961 = !DILocation(line: 0, scope: !589, inlinedAt: !950)
!962 = !DILocation(line: 54, column: 10, scope: !589, inlinedAt: !950)
!963 = !DILocation(line: 56, column: 16, scope: !572, inlinedAt: !950)
!964 = !DILocation(line: 56, column: 12, scope: !568, inlinedAt: !950)
!965 = !DILocation(line: 58, column: 15, scope: !597, inlinedAt: !950)
!966 = !DILocation(line: 58, column: 19, scope: !597, inlinedAt: !950)
!967 = !DILocation(line: 58, column: 5, scope: !597, inlinedAt: !950)
!968 = !DILocation(line: 60, column: 8, scope: !572, inlinedAt: !950)
!969 = !DILocation(line: 61, column: 36, scope: !571, inlinedAt: !950)
!970 = !DILocation(line: 61, column: 29, scope: !571, inlinedAt: !950)
!971 = !DILocation(line: 63, column: 23, scope: !570, inlinedAt: !950)
!972 = !DILocation(line: 63, column: 16, scope: !570, inlinedAt: !950)
!973 = !DILocation(line: 64, column: 7, scope: !576, inlinedAt: !950)
!974 = !DILocation(line: 67, column: 35, scope: !571, inlinedAt: !950)
!975 = !DILocation(line: 67, column: 28, scope: !571, inlinedAt: !950)
!976 = !DILocation(line: 69, column: 23, scope: !578, inlinedAt: !950)
!977 = !DILocation(line: 69, column: 16, scope: !578, inlinedAt: !950)
!978 = !DILocation(line: 70, column: 30, scope: !578, inlinedAt: !950)
!979 = !DILocation(line: 71, column: 30, scope: !578, inlinedAt: !950)
!980 = !DILocation(line: 71, column: 22, scope: !578, inlinedAt: !950)
!981 = !DILocation(line: 71, column: 19, scope: !578, inlinedAt: !950)
!982 = !DILocation(line: 71, column: 14, scope: !578, inlinedAt: !950)
!983 = !DILocation(line: 72, column: 39, scope: !578, inlinedAt: !950)
!984 = !DILocation(line: 72, column: 20, scope: !578, inlinedAt: !950)
!985 = !DILocation(line: 0, scope: !571, inlinedAt: !950)
!986 = !DILocation(line: 76, column: 1, scope: !561, inlinedAt: !950)
!987 = !DILocation(line: 262, column: 17, scope: !940)
!988 = !DILocation(line: 263, column: 10, scope: !940)
!989 = !DILocation(line: 261, column: 10, scope: !940)
!990 = !DILocation(line: 264, column: 1, scope: !940)
!991 = !DILocation(line: 263, column: 3, scope: !940)
!992 = distinct !DISubprogram(name: "lua_isstring", scope: !3, file: !3, line: 267, type: !387, isLocal: false, isDefinition: true, scopeLine: 267, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !993)
!993 = !{!994, !995, !996}
!994 = !DILocalVariable(name: "L", arg: 1, scope: !992, file: !3, line: 267, type: !131)
!995 = !DILocalVariable(name: "idx", arg: 2, scope: !992, file: !3, line: 267, type: !8)
!996 = !DILocalVariable(name: "t", scope: !992, file: !3, line: 268, type: !8)
!997 = !DILocation(line: 267, column: 38, scope: !992)
!998 = !DILocation(line: 267, column: 45, scope: !992)
!999 = !DILocation(line: 268, column: 11, scope: !992)
!1000 = !DILocation(line: 268, column: 7, scope: !992)
!1001 = !DILocation(line: 269, column: 28, scope: !992)
!1002 = !DILocation(line: 269, column: 3, scope: !992)
!1003 = distinct !DISubprogram(name: "lua_isuserdata", scope: !3, file: !3, line: 273, type: !387, isLocal: false, isDefinition: true, scopeLine: 273, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1004)
!1004 = !{!1005, !1006, !1007}
!1005 = !DILocalVariable(name: "L", arg: 1, scope: !1003, file: !3, line: 273, type: !131)
!1006 = !DILocalVariable(name: "idx", arg: 2, scope: !1003, file: !3, line: 273, type: !8)
!1007 = !DILocalVariable(name: "o", scope: !1003, file: !3, line: 274, type: !362)
!1008 = !DILocation(line: 273, column: 40, scope: !1003)
!1009 = !DILocation(line: 273, column: 47, scope: !1003)
!1010 = !DILocation(line: 49, column: 38, scope: !561, inlinedAt: !1011)
!1011 = distinct !DILocation(line: 274, column: 21, scope: !1003)
!1012 = !DILocation(line: 49, column: 45, scope: !561, inlinedAt: !1011)
!1013 = !DILocation(line: 50, column: 11, scope: !568, inlinedAt: !1011)
!1014 = !DILocation(line: 50, column: 7, scope: !561, inlinedAt: !1011)
!1015 = !DILocation(line: 51, column: 20, scope: !567, inlinedAt: !1011)
!1016 = !DILocation(line: 51, column: 32, scope: !567, inlinedAt: !1011)
!1017 = !DILocation(line: 51, column: 25, scope: !567, inlinedAt: !1011)
!1018 = !DILocation(line: 51, column: 13, scope: !567, inlinedAt: !1011)
!1019 = !DILocation(line: 53, column: 17, scope: !589, inlinedAt: !1011)
!1020 = !DILocation(line: 53, column: 11, scope: !589, inlinedAt: !1011)
!1021 = !DILocation(line: 53, column: 9, scope: !567, inlinedAt: !1011)
!1022 = !DILocation(line: 0, scope: !589, inlinedAt: !1011)
!1023 = !DILocation(line: 54, column: 10, scope: !589, inlinedAt: !1011)
!1024 = !DILocation(line: 56, column: 16, scope: !572, inlinedAt: !1011)
!1025 = !DILocation(line: 56, column: 12, scope: !568, inlinedAt: !1011)
!1026 = !DILocation(line: 58, column: 15, scope: !597, inlinedAt: !1011)
!1027 = !DILocation(line: 58, column: 19, scope: !597, inlinedAt: !1011)
!1028 = !DILocation(line: 58, column: 5, scope: !597, inlinedAt: !1011)
!1029 = !DILocation(line: 60, column: 8, scope: !572, inlinedAt: !1011)
!1030 = !DILocation(line: 61, column: 36, scope: !571, inlinedAt: !1011)
!1031 = !DILocation(line: 61, column: 29, scope: !571, inlinedAt: !1011)
!1032 = !DILocation(line: 63, column: 23, scope: !570, inlinedAt: !1011)
!1033 = !DILocation(line: 63, column: 16, scope: !570, inlinedAt: !1011)
!1034 = !DILocation(line: 64, column: 7, scope: !576, inlinedAt: !1011)
!1035 = !DILocation(line: 67, column: 35, scope: !571, inlinedAt: !1011)
!1036 = !DILocation(line: 67, column: 28, scope: !571, inlinedAt: !1011)
!1037 = !DILocation(line: 69, column: 23, scope: !578, inlinedAt: !1011)
!1038 = !DILocation(line: 69, column: 16, scope: !578, inlinedAt: !1011)
!1039 = !DILocation(line: 70, column: 30, scope: !578, inlinedAt: !1011)
!1040 = !DILocation(line: 71, column: 30, scope: !578, inlinedAt: !1011)
!1041 = !DILocation(line: 71, column: 22, scope: !578, inlinedAt: !1011)
!1042 = !DILocation(line: 71, column: 19, scope: !578, inlinedAt: !1011)
!1043 = !DILocation(line: 71, column: 14, scope: !578, inlinedAt: !1011)
!1044 = !DILocation(line: 72, column: 39, scope: !578, inlinedAt: !1011)
!1045 = !DILocation(line: 72, column: 20, scope: !578, inlinedAt: !1011)
!1046 = !DILocation(line: 0, scope: !571, inlinedAt: !1011)
!1047 = !DILocation(line: 76, column: 1, scope: !561, inlinedAt: !1011)
!1048 = !DILocation(line: 274, column: 17, scope: !1003)
!1049 = !DILocation(line: 275, column: 11, scope: !1003)
!1050 = !DILocation(line: 275, column: 27, scope: !1003)
!1051 = !DILocation(line: 275, column: 30, scope: !1003)
!1052 = !DILocation(line: 275, column: 3, scope: !1003)
!1053 = distinct !DISubprogram(name: "lua_rawequal", scope: !3, file: !3, line: 279, type: !1054, isLocal: false, isDefinition: true, scopeLine: 279, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1056)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{!8, !131, !8, !8}
!1056 = !{!1057, !1058, !1059, !1060, !1061}
!1057 = !DILocalVariable(name: "L", arg: 1, scope: !1053, file: !3, line: 279, type: !131)
!1058 = !DILocalVariable(name: "index1", arg: 2, scope: !1053, file: !3, line: 279, type: !8)
!1059 = !DILocalVariable(name: "index2", arg: 3, scope: !1053, file: !3, line: 279, type: !8)
!1060 = !DILocalVariable(name: "o1", scope: !1053, file: !3, line: 280, type: !140)
!1061 = !DILocalVariable(name: "o2", scope: !1053, file: !3, line: 281, type: !140)
!1062 = !DILocation(line: 279, column: 38, scope: !1053)
!1063 = !DILocation(line: 279, column: 45, scope: !1053)
!1064 = !DILocation(line: 279, column: 57, scope: !1053)
!1065 = !DILocation(line: 49, column: 38, scope: !561, inlinedAt: !1066)
!1066 = distinct !DILocation(line: 280, column: 14, scope: !1053)
!1067 = !DILocation(line: 49, column: 45, scope: !561, inlinedAt: !1066)
!1068 = !DILocation(line: 50, column: 11, scope: !568, inlinedAt: !1066)
!1069 = !DILocation(line: 50, column: 7, scope: !561, inlinedAt: !1066)
!1070 = !DILocation(line: 51, column: 20, scope: !567, inlinedAt: !1066)
!1071 = !DILocation(line: 51, column: 32, scope: !567, inlinedAt: !1066)
!1072 = !DILocation(line: 51, column: 25, scope: !567, inlinedAt: !1066)
!1073 = !DILocation(line: 51, column: 13, scope: !567, inlinedAt: !1066)
!1074 = !DILocation(line: 53, column: 17, scope: !589, inlinedAt: !1066)
!1075 = !DILocation(line: 53, column: 11, scope: !589, inlinedAt: !1066)
!1076 = !DILocation(line: 53, column: 9, scope: !567, inlinedAt: !1066)
!1077 = !DILocation(line: 0, scope: !589, inlinedAt: !1066)
!1078 = !DILocation(line: 54, column: 10, scope: !589, inlinedAt: !1066)
!1079 = !DILocation(line: 56, column: 16, scope: !572, inlinedAt: !1066)
!1080 = !DILocation(line: 56, column: 12, scope: !568, inlinedAt: !1066)
!1081 = !DILocation(line: 58, column: 15, scope: !597, inlinedAt: !1066)
!1082 = !DILocation(line: 58, column: 19, scope: !597, inlinedAt: !1066)
!1083 = !DILocation(line: 58, column: 5, scope: !597, inlinedAt: !1066)
!1084 = !DILocation(line: 60, column: 8, scope: !572, inlinedAt: !1066)
!1085 = !DILocation(line: 61, column: 36, scope: !571, inlinedAt: !1066)
!1086 = !DILocation(line: 61, column: 29, scope: !571, inlinedAt: !1066)
!1087 = !DILocation(line: 63, column: 23, scope: !570, inlinedAt: !1066)
!1088 = !DILocation(line: 63, column: 16, scope: !570, inlinedAt: !1066)
!1089 = !DILocation(line: 64, column: 7, scope: !576, inlinedAt: !1066)
!1090 = !DILocation(line: 67, column: 35, scope: !571, inlinedAt: !1066)
!1091 = !DILocation(line: 67, column: 28, scope: !571, inlinedAt: !1066)
!1092 = !DILocation(line: 69, column: 23, scope: !578, inlinedAt: !1066)
!1093 = !DILocation(line: 69, column: 16, scope: !578, inlinedAt: !1066)
!1094 = !DILocation(line: 70, column: 30, scope: !578, inlinedAt: !1066)
!1095 = !DILocation(line: 71, column: 30, scope: !578, inlinedAt: !1066)
!1096 = !DILocation(line: 71, column: 22, scope: !578, inlinedAt: !1066)
!1097 = !DILocation(line: 71, column: 19, scope: !578, inlinedAt: !1066)
!1098 = !DILocation(line: 71, column: 14, scope: !578, inlinedAt: !1066)
!1099 = !DILocation(line: 72, column: 39, scope: !578, inlinedAt: !1066)
!1100 = !DILocation(line: 72, column: 20, scope: !578, inlinedAt: !1066)
!1101 = !DILocation(line: 0, scope: !571, inlinedAt: !1066)
!1102 = !DILocation(line: 76, column: 1, scope: !561, inlinedAt: !1066)
!1103 = !DILocation(line: 280, column: 9, scope: !1053)
!1104 = !DILocation(line: 49, column: 38, scope: !561, inlinedAt: !1105)
!1105 = distinct !DILocation(line: 281, column: 14, scope: !1053)
!1106 = !DILocation(line: 49, column: 45, scope: !561, inlinedAt: !1105)
!1107 = !DILocation(line: 50, column: 11, scope: !568, inlinedAt: !1105)
!1108 = !DILocation(line: 50, column: 7, scope: !561, inlinedAt: !1105)
!1109 = !DILocation(line: 51, column: 20, scope: !567, inlinedAt: !1105)
!1110 = !DILocation(line: 51, column: 32, scope: !567, inlinedAt: !1105)
!1111 = !DILocation(line: 51, column: 25, scope: !567, inlinedAt: !1105)
!1112 = !DILocation(line: 51, column: 13, scope: !567, inlinedAt: !1105)
!1113 = !DILocation(line: 53, column: 17, scope: !589, inlinedAt: !1105)
!1114 = !DILocation(line: 53, column: 11, scope: !589, inlinedAt: !1105)
!1115 = !DILocation(line: 53, column: 9, scope: !567, inlinedAt: !1105)
!1116 = !DILocation(line: 0, scope: !589, inlinedAt: !1105)
!1117 = !DILocation(line: 54, column: 10, scope: !589, inlinedAt: !1105)
!1118 = !DILocation(line: 56, column: 16, scope: !572, inlinedAt: !1105)
!1119 = !DILocation(line: 56, column: 12, scope: !568, inlinedAt: !1105)
!1120 = !DILocation(line: 58, column: 15, scope: !597, inlinedAt: !1105)
!1121 = !DILocation(line: 58, column: 19, scope: !597, inlinedAt: !1105)
!1122 = !DILocation(line: 58, column: 5, scope: !597, inlinedAt: !1105)
!1123 = !DILocation(line: 60, column: 8, scope: !572, inlinedAt: !1105)
!1124 = !DILocation(line: 61, column: 36, scope: !571, inlinedAt: !1105)
!1125 = !DILocation(line: 61, column: 29, scope: !571, inlinedAt: !1105)
!1126 = !DILocation(line: 63, column: 23, scope: !570, inlinedAt: !1105)
!1127 = !DILocation(line: 63, column: 16, scope: !570, inlinedAt: !1105)
!1128 = !DILocation(line: 64, column: 7, scope: !576, inlinedAt: !1105)
!1129 = !DILocation(line: 67, column: 35, scope: !571, inlinedAt: !1105)
!1130 = !DILocation(line: 67, column: 28, scope: !571, inlinedAt: !1105)
!1131 = !DILocation(line: 69, column: 23, scope: !578, inlinedAt: !1105)
!1132 = !DILocation(line: 69, column: 16, scope: !578, inlinedAt: !1105)
!1133 = !DILocation(line: 70, column: 30, scope: !578, inlinedAt: !1105)
!1134 = !DILocation(line: 71, column: 30, scope: !578, inlinedAt: !1105)
!1135 = !DILocation(line: 71, column: 22, scope: !578, inlinedAt: !1105)
!1136 = !DILocation(line: 71, column: 19, scope: !578, inlinedAt: !1105)
!1137 = !DILocation(line: 71, column: 14, scope: !578, inlinedAt: !1105)
!1138 = !DILocation(line: 72, column: 39, scope: !578, inlinedAt: !1105)
!1139 = !DILocation(line: 72, column: 20, scope: !578, inlinedAt: !1105)
!1140 = !DILocation(line: 0, scope: !571, inlinedAt: !1105)
!1141 = !DILocation(line: 76, column: 1, scope: !561, inlinedAt: !1105)
!1142 = !DILocation(line: 281, column: 9, scope: !1053)
!1143 = !DILocation(line: 282, column: 14, scope: !1053)
!1144 = !DILocation(line: 282, column: 38, scope: !1053)
!1145 = !DILocation(line: 282, column: 32, scope: !1053)
!1146 = !DILocation(line: 283, column: 12, scope: !1053)
!1147 = !DILocation(line: 282, column: 10, scope: !1053)
!1148 = !DILocation(line: 282, column: 3, scope: !1053)
!1149 = distinct !DISubprogram(name: "lua_equal", scope: !3, file: !3, line: 287, type: !1054, isLocal: false, isDefinition: true, scopeLine: 287, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1150)
!1150 = !{!1151, !1152, !1153, !1154, !1155, !1156}
!1151 = !DILocalVariable(name: "L", arg: 1, scope: !1149, file: !3, line: 287, type: !131)
!1152 = !DILocalVariable(name: "index1", arg: 2, scope: !1149, file: !3, line: 287, type: !8)
!1153 = !DILocalVariable(name: "index2", arg: 3, scope: !1149, file: !3, line: 287, type: !8)
!1154 = !DILocalVariable(name: "o1", scope: !1149, file: !3, line: 288, type: !140)
!1155 = !DILocalVariable(name: "o2", scope: !1149, file: !3, line: 288, type: !140)
!1156 = !DILocalVariable(name: "i", scope: !1149, file: !3, line: 289, type: !8)
!1157 = !DILocation(line: 287, column: 35, scope: !1149)
!1158 = !DILocation(line: 287, column: 42, scope: !1149)
!1159 = !DILocation(line: 287, column: 54, scope: !1149)
!1160 = !DILocation(line: 49, column: 38, scope: !561, inlinedAt: !1161)
!1161 = distinct !DILocation(line: 291, column: 8, scope: !1149)
!1162 = !DILocation(line: 49, column: 45, scope: !561, inlinedAt: !1161)
!1163 = !DILocation(line: 50, column: 11, scope: !568, inlinedAt: !1161)
!1164 = !DILocation(line: 50, column: 7, scope: !561, inlinedAt: !1161)
!1165 = !DILocation(line: 51, column: 20, scope: !567, inlinedAt: !1161)
!1166 = !DILocation(line: 51, column: 32, scope: !567, inlinedAt: !1161)
!1167 = !DILocation(line: 51, column: 25, scope: !567, inlinedAt: !1161)
!1168 = !DILocation(line: 51, column: 13, scope: !567, inlinedAt: !1161)
!1169 = !DILocation(line: 53, column: 17, scope: !589, inlinedAt: !1161)
!1170 = !DILocation(line: 53, column: 11, scope: !589, inlinedAt: !1161)
!1171 = !DILocation(line: 53, column: 9, scope: !567, inlinedAt: !1161)
!1172 = !DILocation(line: 0, scope: !589, inlinedAt: !1161)
!1173 = !DILocation(line: 54, column: 10, scope: !589, inlinedAt: !1161)
!1174 = !DILocation(line: 56, column: 16, scope: !572, inlinedAt: !1161)
!1175 = !DILocation(line: 56, column: 12, scope: !568, inlinedAt: !1161)
!1176 = !DILocation(line: 58, column: 15, scope: !597, inlinedAt: !1161)
!1177 = !DILocation(line: 58, column: 19, scope: !597, inlinedAt: !1161)
!1178 = !DILocation(line: 58, column: 5, scope: !597, inlinedAt: !1161)
!1179 = !DILocation(line: 60, column: 8, scope: !572, inlinedAt: !1161)
!1180 = !DILocation(line: 61, column: 36, scope: !571, inlinedAt: !1161)
!1181 = !DILocation(line: 61, column: 29, scope: !571, inlinedAt: !1161)
!1182 = !DILocation(line: 63, column: 23, scope: !570, inlinedAt: !1161)
!1183 = !DILocation(line: 63, column: 16, scope: !570, inlinedAt: !1161)
!1184 = !DILocation(line: 64, column: 7, scope: !576, inlinedAt: !1161)
!1185 = !DILocation(line: 67, column: 35, scope: !571, inlinedAt: !1161)
!1186 = !DILocation(line: 67, column: 28, scope: !571, inlinedAt: !1161)
!1187 = !DILocation(line: 69, column: 23, scope: !578, inlinedAt: !1161)
!1188 = !DILocation(line: 69, column: 16, scope: !578, inlinedAt: !1161)
!1189 = !DILocation(line: 70, column: 30, scope: !578, inlinedAt: !1161)
!1190 = !DILocation(line: 71, column: 30, scope: !578, inlinedAt: !1161)
!1191 = !DILocation(line: 71, column: 22, scope: !578, inlinedAt: !1161)
!1192 = !DILocation(line: 71, column: 19, scope: !578, inlinedAt: !1161)
!1193 = !DILocation(line: 71, column: 14, scope: !578, inlinedAt: !1161)
!1194 = !DILocation(line: 72, column: 39, scope: !578, inlinedAt: !1161)
!1195 = !DILocation(line: 72, column: 20, scope: !578, inlinedAt: !1161)
!1196 = !DILocation(line: 0, scope: !571, inlinedAt: !1161)
!1197 = !DILocation(line: 76, column: 1, scope: !561, inlinedAt: !1161)
!1198 = !DILocation(line: 288, column: 9, scope: !1149)
!1199 = !DILocation(line: 49, column: 38, scope: !561, inlinedAt: !1200)
!1200 = distinct !DILocation(line: 292, column: 8, scope: !1149)
!1201 = !DILocation(line: 49, column: 45, scope: !561, inlinedAt: !1200)
!1202 = !DILocation(line: 50, column: 11, scope: !568, inlinedAt: !1200)
!1203 = !DILocation(line: 50, column: 7, scope: !561, inlinedAt: !1200)
!1204 = !DILocation(line: 51, column: 20, scope: !567, inlinedAt: !1200)
!1205 = !DILocation(line: 51, column: 32, scope: !567, inlinedAt: !1200)
!1206 = !DILocation(line: 51, column: 25, scope: !567, inlinedAt: !1200)
!1207 = !DILocation(line: 51, column: 13, scope: !567, inlinedAt: !1200)
!1208 = !DILocation(line: 53, column: 17, scope: !589, inlinedAt: !1200)
!1209 = !DILocation(line: 53, column: 11, scope: !589, inlinedAt: !1200)
!1210 = !DILocation(line: 53, column: 9, scope: !567, inlinedAt: !1200)
!1211 = !DILocation(line: 0, scope: !589, inlinedAt: !1200)
!1212 = !DILocation(line: 54, column: 10, scope: !589, inlinedAt: !1200)
!1213 = !DILocation(line: 56, column: 16, scope: !572, inlinedAt: !1200)
!1214 = !DILocation(line: 56, column: 12, scope: !568, inlinedAt: !1200)
!1215 = !DILocation(line: 58, column: 15, scope: !597, inlinedAt: !1200)
!1216 = !DILocation(line: 58, column: 19, scope: !597, inlinedAt: !1200)
!1217 = !DILocation(line: 58, column: 5, scope: !597, inlinedAt: !1200)
!1218 = !DILocation(line: 60, column: 8, scope: !572, inlinedAt: !1200)
!1219 = !DILocation(line: 61, column: 36, scope: !571, inlinedAt: !1200)
!1220 = !DILocation(line: 61, column: 29, scope: !571, inlinedAt: !1200)
!1221 = !DILocation(line: 63, column: 23, scope: !570, inlinedAt: !1200)
!1222 = !DILocation(line: 63, column: 16, scope: !570, inlinedAt: !1200)
!1223 = !DILocation(line: 64, column: 7, scope: !576, inlinedAt: !1200)
!1224 = !DILocation(line: 67, column: 35, scope: !571, inlinedAt: !1200)
!1225 = !DILocation(line: 67, column: 28, scope: !571, inlinedAt: !1200)
!1226 = !DILocation(line: 69, column: 23, scope: !578, inlinedAt: !1200)
!1227 = !DILocation(line: 69, column: 16, scope: !578, inlinedAt: !1200)
!1228 = !DILocation(line: 70, column: 30, scope: !578, inlinedAt: !1200)
!1229 = !DILocation(line: 71, column: 30, scope: !578, inlinedAt: !1200)
!1230 = !DILocation(line: 71, column: 22, scope: !578, inlinedAt: !1200)
!1231 = !DILocation(line: 71, column: 19, scope: !578, inlinedAt: !1200)
!1232 = !DILocation(line: 71, column: 14, scope: !578, inlinedAt: !1200)
!1233 = !DILocation(line: 72, column: 39, scope: !578, inlinedAt: !1200)
!1234 = !DILocation(line: 72, column: 20, scope: !578, inlinedAt: !1200)
!1235 = !DILocation(line: 0, scope: !571, inlinedAt: !1200)
!1236 = !DILocation(line: 76, column: 1, scope: !561, inlinedAt: !1200)
!1237 = !DILocation(line: 288, column: 13, scope: !1149)
!1238 = !DILocation(line: 293, column: 11, scope: !1149)
!1239 = !DILocation(line: 293, column: 35, scope: !1149)
!1240 = !DILocation(line: 293, column: 29, scope: !1149)
!1241 = !DILocation(line: 293, column: 60, scope: !1149)
!1242 = !DILocation(line: 293, column: 7, scope: !1149)
!1243 = !DILocation(line: 289, column: 7, scope: !1149)
!1244 = !DILocation(line: 295, column: 3, scope: !1149)
!1245 = distinct !DISubprogram(name: "lua_lessthan", scope: !3, file: !3, line: 299, type: !1054, isLocal: false, isDefinition: true, scopeLine: 299, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1246)
!1246 = !{!1247, !1248, !1249, !1250, !1251, !1252}
!1247 = !DILocalVariable(name: "L", arg: 1, scope: !1245, file: !3, line: 299, type: !131)
!1248 = !DILocalVariable(name: "index1", arg: 2, scope: !1245, file: !3, line: 299, type: !8)
!1249 = !DILocalVariable(name: "index2", arg: 3, scope: !1245, file: !3, line: 299, type: !8)
!1250 = !DILocalVariable(name: "o1", scope: !1245, file: !3, line: 300, type: !140)
!1251 = !DILocalVariable(name: "o2", scope: !1245, file: !3, line: 300, type: !140)
!1252 = !DILocalVariable(name: "i", scope: !1245, file: !3, line: 301, type: !8)
!1253 = !DILocation(line: 299, column: 38, scope: !1245)
!1254 = !DILocation(line: 299, column: 45, scope: !1245)
!1255 = !DILocation(line: 299, column: 57, scope: !1245)
!1256 = !DILocation(line: 49, column: 38, scope: !561, inlinedAt: !1257)
!1257 = distinct !DILocation(line: 303, column: 8, scope: !1245)
!1258 = !DILocation(line: 49, column: 45, scope: !561, inlinedAt: !1257)
!1259 = !DILocation(line: 50, column: 11, scope: !568, inlinedAt: !1257)
!1260 = !DILocation(line: 50, column: 7, scope: !561, inlinedAt: !1257)
!1261 = !DILocation(line: 51, column: 20, scope: !567, inlinedAt: !1257)
!1262 = !DILocation(line: 51, column: 32, scope: !567, inlinedAt: !1257)
!1263 = !DILocation(line: 51, column: 25, scope: !567, inlinedAt: !1257)
!1264 = !DILocation(line: 51, column: 13, scope: !567, inlinedAt: !1257)
!1265 = !DILocation(line: 53, column: 17, scope: !589, inlinedAt: !1257)
!1266 = !DILocation(line: 53, column: 11, scope: !589, inlinedAt: !1257)
!1267 = !DILocation(line: 53, column: 9, scope: !567, inlinedAt: !1257)
!1268 = !DILocation(line: 0, scope: !589, inlinedAt: !1257)
!1269 = !DILocation(line: 54, column: 10, scope: !589, inlinedAt: !1257)
!1270 = !DILocation(line: 56, column: 16, scope: !572, inlinedAt: !1257)
!1271 = !DILocation(line: 56, column: 12, scope: !568, inlinedAt: !1257)
!1272 = !DILocation(line: 58, column: 15, scope: !597, inlinedAt: !1257)
!1273 = !DILocation(line: 58, column: 19, scope: !597, inlinedAt: !1257)
!1274 = !DILocation(line: 58, column: 5, scope: !597, inlinedAt: !1257)
!1275 = !DILocation(line: 60, column: 8, scope: !572, inlinedAt: !1257)
!1276 = !DILocation(line: 61, column: 36, scope: !571, inlinedAt: !1257)
!1277 = !DILocation(line: 61, column: 29, scope: !571, inlinedAt: !1257)
!1278 = !DILocation(line: 63, column: 23, scope: !570, inlinedAt: !1257)
!1279 = !DILocation(line: 63, column: 16, scope: !570, inlinedAt: !1257)
!1280 = !DILocation(line: 64, column: 7, scope: !576, inlinedAt: !1257)
!1281 = !DILocation(line: 67, column: 35, scope: !571, inlinedAt: !1257)
!1282 = !DILocation(line: 67, column: 28, scope: !571, inlinedAt: !1257)
!1283 = !DILocation(line: 69, column: 23, scope: !578, inlinedAt: !1257)
!1284 = !DILocation(line: 69, column: 16, scope: !578, inlinedAt: !1257)
!1285 = !DILocation(line: 70, column: 30, scope: !578, inlinedAt: !1257)
!1286 = !DILocation(line: 71, column: 30, scope: !578, inlinedAt: !1257)
!1287 = !DILocation(line: 71, column: 22, scope: !578, inlinedAt: !1257)
!1288 = !DILocation(line: 71, column: 19, scope: !578, inlinedAt: !1257)
!1289 = !DILocation(line: 71, column: 14, scope: !578, inlinedAt: !1257)
!1290 = !DILocation(line: 72, column: 39, scope: !578, inlinedAt: !1257)
!1291 = !DILocation(line: 72, column: 20, scope: !578, inlinedAt: !1257)
!1292 = !DILocation(line: 0, scope: !571, inlinedAt: !1257)
!1293 = !DILocation(line: 76, column: 1, scope: !561, inlinedAt: !1257)
!1294 = !DILocation(line: 300, column: 9, scope: !1245)
!1295 = !DILocation(line: 49, column: 38, scope: !561, inlinedAt: !1296)
!1296 = distinct !DILocation(line: 304, column: 8, scope: !1245)
!1297 = !DILocation(line: 49, column: 45, scope: !561, inlinedAt: !1296)
!1298 = !DILocation(line: 50, column: 11, scope: !568, inlinedAt: !1296)
!1299 = !DILocation(line: 50, column: 7, scope: !561, inlinedAt: !1296)
!1300 = !DILocation(line: 51, column: 20, scope: !567, inlinedAt: !1296)
!1301 = !DILocation(line: 51, column: 32, scope: !567, inlinedAt: !1296)
!1302 = !DILocation(line: 51, column: 25, scope: !567, inlinedAt: !1296)
!1303 = !DILocation(line: 51, column: 13, scope: !567, inlinedAt: !1296)
!1304 = !DILocation(line: 53, column: 17, scope: !589, inlinedAt: !1296)
!1305 = !DILocation(line: 53, column: 11, scope: !589, inlinedAt: !1296)
!1306 = !DILocation(line: 53, column: 9, scope: !567, inlinedAt: !1296)
!1307 = !DILocation(line: 0, scope: !589, inlinedAt: !1296)
!1308 = !DILocation(line: 54, column: 10, scope: !589, inlinedAt: !1296)
!1309 = !DILocation(line: 56, column: 16, scope: !572, inlinedAt: !1296)
!1310 = !DILocation(line: 56, column: 12, scope: !568, inlinedAt: !1296)
!1311 = !DILocation(line: 58, column: 15, scope: !597, inlinedAt: !1296)
!1312 = !DILocation(line: 58, column: 19, scope: !597, inlinedAt: !1296)
!1313 = !DILocation(line: 58, column: 5, scope: !597, inlinedAt: !1296)
!1314 = !DILocation(line: 60, column: 8, scope: !572, inlinedAt: !1296)
!1315 = !DILocation(line: 61, column: 36, scope: !571, inlinedAt: !1296)
!1316 = !DILocation(line: 61, column: 29, scope: !571, inlinedAt: !1296)
!1317 = !DILocation(line: 63, column: 23, scope: !570, inlinedAt: !1296)
!1318 = !DILocation(line: 63, column: 16, scope: !570, inlinedAt: !1296)
!1319 = !DILocation(line: 64, column: 7, scope: !576, inlinedAt: !1296)
!1320 = !DILocation(line: 67, column: 35, scope: !571, inlinedAt: !1296)
!1321 = !DILocation(line: 67, column: 28, scope: !571, inlinedAt: !1296)
!1322 = !DILocation(line: 69, column: 23, scope: !578, inlinedAt: !1296)
!1323 = !DILocation(line: 69, column: 16, scope: !578, inlinedAt: !1296)
!1324 = !DILocation(line: 70, column: 30, scope: !578, inlinedAt: !1296)
!1325 = !DILocation(line: 71, column: 30, scope: !578, inlinedAt: !1296)
!1326 = !DILocation(line: 71, column: 22, scope: !578, inlinedAt: !1296)
!1327 = !DILocation(line: 71, column: 19, scope: !578, inlinedAt: !1296)
!1328 = !DILocation(line: 71, column: 14, scope: !578, inlinedAt: !1296)
!1329 = !DILocation(line: 72, column: 39, scope: !578, inlinedAt: !1296)
!1330 = !DILocation(line: 72, column: 20, scope: !578, inlinedAt: !1296)
!1331 = !DILocation(line: 0, scope: !571, inlinedAt: !1296)
!1332 = !DILocation(line: 76, column: 1, scope: !561, inlinedAt: !1296)
!1333 = !DILocation(line: 300, column: 13, scope: !1245)
!1334 = !DILocation(line: 305, column: 11, scope: !1245)
!1335 = !DILocation(line: 305, column: 35, scope: !1245)
!1336 = !DILocation(line: 305, column: 29, scope: !1245)
!1337 = !DILocation(line: 306, column: 10, scope: !1245)
!1338 = !DILocation(line: 305, column: 7, scope: !1245)
!1339 = !DILocation(line: 301, column: 7, scope: !1245)
!1340 = !DILocation(line: 308, column: 3, scope: !1245)
!1341 = distinct !DISubprogram(name: "lua_tonumber", scope: !3, file: !3, line: 313, type: !1342, isLocal: false, isDefinition: true, scopeLine: 313, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1344)
!1342 = !DISubroutineType(types: !1343)
!1343 = !{!85, !131, !8}
!1344 = !{!1345, !1346, !1347, !1348}
!1345 = !DILocalVariable(name: "L", arg: 1, scope: !1341, file: !3, line: 313, type: !131)
!1346 = !DILocalVariable(name: "idx", arg: 2, scope: !1341, file: !3, line: 313, type: !8)
!1347 = !DILocalVariable(name: "n", scope: !1341, file: !3, line: 314, type: !75)
!1348 = !DILocalVariable(name: "o", scope: !1341, file: !3, line: 315, type: !362)
!1349 = !DILocation(line: 313, column: 45, scope: !1341)
!1350 = !DILocation(line: 313, column: 52, scope: !1341)
!1351 = !DILocation(line: 314, column: 3, scope: !1341)
!1352 = !DILocation(line: 49, column: 38, scope: !561, inlinedAt: !1353)
!1353 = distinct !DILocation(line: 315, column: 21, scope: !1341)
!1354 = !DILocation(line: 49, column: 45, scope: !561, inlinedAt: !1353)
!1355 = !DILocation(line: 50, column: 11, scope: !568, inlinedAt: !1353)
!1356 = !DILocation(line: 50, column: 7, scope: !561, inlinedAt: !1353)
!1357 = !DILocation(line: 51, column: 20, scope: !567, inlinedAt: !1353)
!1358 = !DILocation(line: 51, column: 32, scope: !567, inlinedAt: !1353)
!1359 = !DILocation(line: 51, column: 25, scope: !567, inlinedAt: !1353)
!1360 = !DILocation(line: 51, column: 13, scope: !567, inlinedAt: !1353)
!1361 = !DILocation(line: 53, column: 17, scope: !589, inlinedAt: !1353)
!1362 = !DILocation(line: 53, column: 11, scope: !589, inlinedAt: !1353)
!1363 = !DILocation(line: 53, column: 9, scope: !567, inlinedAt: !1353)
!1364 = !DILocation(line: 0, scope: !589, inlinedAt: !1353)
!1365 = !DILocation(line: 54, column: 10, scope: !589, inlinedAt: !1353)
!1366 = !DILocation(line: 56, column: 16, scope: !572, inlinedAt: !1353)
!1367 = !DILocation(line: 56, column: 12, scope: !568, inlinedAt: !1353)
!1368 = !DILocation(line: 58, column: 15, scope: !597, inlinedAt: !1353)
!1369 = !DILocation(line: 58, column: 19, scope: !597, inlinedAt: !1353)
!1370 = !DILocation(line: 58, column: 5, scope: !597, inlinedAt: !1353)
!1371 = !DILocation(line: 60, column: 8, scope: !572, inlinedAt: !1353)
!1372 = !DILocation(line: 61, column: 36, scope: !571, inlinedAt: !1353)
!1373 = !DILocation(line: 61, column: 29, scope: !571, inlinedAt: !1353)
!1374 = !DILocation(line: 63, column: 23, scope: !570, inlinedAt: !1353)
!1375 = !DILocation(line: 63, column: 16, scope: !570, inlinedAt: !1353)
!1376 = !DILocation(line: 64, column: 7, scope: !576, inlinedAt: !1353)
!1377 = !DILocation(line: 67, column: 35, scope: !571, inlinedAt: !1353)
!1378 = !DILocation(line: 67, column: 28, scope: !571, inlinedAt: !1353)
!1379 = !DILocation(line: 69, column: 23, scope: !578, inlinedAt: !1353)
!1380 = !DILocation(line: 69, column: 16, scope: !578, inlinedAt: !1353)
!1381 = !DILocation(line: 70, column: 30, scope: !578, inlinedAt: !1353)
!1382 = !DILocation(line: 71, column: 30, scope: !578, inlinedAt: !1353)
!1383 = !DILocation(line: 71, column: 22, scope: !578, inlinedAt: !1353)
!1384 = !DILocation(line: 71, column: 19, scope: !578, inlinedAt: !1353)
!1385 = !DILocation(line: 71, column: 14, scope: !578, inlinedAt: !1353)
!1386 = !DILocation(line: 72, column: 39, scope: !578, inlinedAt: !1353)
!1387 = !DILocation(line: 72, column: 20, scope: !578, inlinedAt: !1353)
!1388 = !DILocation(line: 0, scope: !571, inlinedAt: !1353)
!1389 = !DILocation(line: 76, column: 1, scope: !561, inlinedAt: !1353)
!1390 = !DILocation(line: 315, column: 17, scope: !1341)
!1391 = !DILocation(line: 316, column: 7, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1341, file: !3, line: 316, column: 7)
!1393 = !DILocation(line: 314, column: 10, scope: !1341)
!1394 = !DILocation(line: 316, column: 7, scope: !1341)
!1395 = !DILocation(line: 0, scope: !1392)
!1396 = !DILocation(line: 317, column: 12, scope: !1392)
!1397 = !DILocation(line: 317, column: 5, scope: !1392)
!1398 = !DILocation(line: 320, column: 1, scope: !1341)
!1399 = distinct !DISubprogram(name: "lua_tointeger", scope: !3, file: !3, line: 323, type: !1400, isLocal: false, isDefinition: true, scopeLine: 323, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1402)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{!340, !131, !8}
!1402 = !{!1403, !1404, !1405, !1406, !1407, !1410}
!1403 = !DILocalVariable(name: "L", arg: 1, scope: !1399, file: !3, line: 323, type: !131)
!1404 = !DILocalVariable(name: "idx", arg: 2, scope: !1399, file: !3, line: 323, type: !8)
!1405 = !DILocalVariable(name: "n", scope: !1399, file: !3, line: 324, type: !75)
!1406 = !DILocalVariable(name: "o", scope: !1399, file: !3, line: 325, type: !362)
!1407 = !DILocalVariable(name: "res", scope: !1408, file: !3, line: 327, type: !340)
!1408 = distinct !DILexicalBlock(scope: !1409, file: !3, line: 326, column: 24)
!1409 = distinct !DILexicalBlock(scope: !1399, file: !3, line: 326, column: 7)
!1410 = !DILocalVariable(name: "num", scope: !1408, file: !3, line: 328, type: !85)
!1411 = !DILocation(line: 323, column: 47, scope: !1399)
!1412 = !DILocation(line: 323, column: 54, scope: !1399)
!1413 = !DILocation(line: 324, column: 3, scope: !1399)
!1414 = !DILocation(line: 49, column: 38, scope: !561, inlinedAt: !1415)
!1415 = distinct !DILocation(line: 325, column: 21, scope: !1399)
!1416 = !DILocation(line: 49, column: 45, scope: !561, inlinedAt: !1415)
!1417 = !DILocation(line: 50, column: 11, scope: !568, inlinedAt: !1415)
!1418 = !DILocation(line: 50, column: 7, scope: !561, inlinedAt: !1415)
!1419 = !DILocation(line: 51, column: 20, scope: !567, inlinedAt: !1415)
!1420 = !DILocation(line: 51, column: 32, scope: !567, inlinedAt: !1415)
!1421 = !DILocation(line: 51, column: 25, scope: !567, inlinedAt: !1415)
!1422 = !DILocation(line: 51, column: 13, scope: !567, inlinedAt: !1415)
!1423 = !DILocation(line: 53, column: 17, scope: !589, inlinedAt: !1415)
!1424 = !DILocation(line: 53, column: 11, scope: !589, inlinedAt: !1415)
!1425 = !DILocation(line: 53, column: 9, scope: !567, inlinedAt: !1415)
!1426 = !DILocation(line: 0, scope: !589, inlinedAt: !1415)
!1427 = !DILocation(line: 54, column: 10, scope: !589, inlinedAt: !1415)
!1428 = !DILocation(line: 56, column: 16, scope: !572, inlinedAt: !1415)
!1429 = !DILocation(line: 56, column: 12, scope: !568, inlinedAt: !1415)
!1430 = !DILocation(line: 58, column: 15, scope: !597, inlinedAt: !1415)
!1431 = !DILocation(line: 58, column: 19, scope: !597, inlinedAt: !1415)
!1432 = !DILocation(line: 58, column: 5, scope: !597, inlinedAt: !1415)
!1433 = !DILocation(line: 60, column: 8, scope: !572, inlinedAt: !1415)
!1434 = !DILocation(line: 61, column: 36, scope: !571, inlinedAt: !1415)
!1435 = !DILocation(line: 61, column: 29, scope: !571, inlinedAt: !1415)
!1436 = !DILocation(line: 63, column: 23, scope: !570, inlinedAt: !1415)
!1437 = !DILocation(line: 63, column: 16, scope: !570, inlinedAt: !1415)
!1438 = !DILocation(line: 64, column: 7, scope: !576, inlinedAt: !1415)
!1439 = !DILocation(line: 67, column: 35, scope: !571, inlinedAt: !1415)
!1440 = !DILocation(line: 67, column: 28, scope: !571, inlinedAt: !1415)
!1441 = !DILocation(line: 69, column: 23, scope: !578, inlinedAt: !1415)
!1442 = !DILocation(line: 69, column: 16, scope: !578, inlinedAt: !1415)
!1443 = !DILocation(line: 70, column: 30, scope: !578, inlinedAt: !1415)
!1444 = !DILocation(line: 71, column: 30, scope: !578, inlinedAt: !1415)
!1445 = !DILocation(line: 71, column: 22, scope: !578, inlinedAt: !1415)
!1446 = !DILocation(line: 71, column: 19, scope: !578, inlinedAt: !1415)
!1447 = !DILocation(line: 71, column: 14, scope: !578, inlinedAt: !1415)
!1448 = !DILocation(line: 72, column: 39, scope: !578, inlinedAt: !1415)
!1449 = !DILocation(line: 72, column: 20, scope: !578, inlinedAt: !1415)
!1450 = !DILocation(line: 0, scope: !571, inlinedAt: !1415)
!1451 = !DILocation(line: 76, column: 1, scope: !561, inlinedAt: !1415)
!1452 = !DILocation(line: 325, column: 17, scope: !1399)
!1453 = !DILocation(line: 326, column: 7, scope: !1409)
!1454 = !DILocation(line: 324, column: 10, scope: !1399)
!1455 = !DILocation(line: 326, column: 7, scope: !1399)
!1456 = !DILocation(line: 0, scope: !1409)
!1457 = !DILocation(line: 328, column: 22, scope: !1408)
!1458 = !DILocation(line: 328, column: 16, scope: !1408)
!1459 = !DILocation(line: 329, column: 5, scope: !1408)
!1460 = !DILocation(line: 327, column: 17, scope: !1408)
!1461 = !DILocation(line: 334, column: 1, scope: !1399)
!1462 = distinct !DISubprogram(name: "lua_toboolean", scope: !3, file: !3, line: 337, type: !387, isLocal: false, isDefinition: true, scopeLine: 337, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1463)
!1463 = !{!1464, !1465, !1466}
!1464 = !DILocalVariable(name: "L", arg: 1, scope: !1462, file: !3, line: 337, type: !131)
!1465 = !DILocalVariable(name: "idx", arg: 2, scope: !1462, file: !3, line: 337, type: !8)
!1466 = !DILocalVariable(name: "o", scope: !1462, file: !3, line: 338, type: !362)
!1467 = !DILocation(line: 337, column: 39, scope: !1462)
!1468 = !DILocation(line: 337, column: 46, scope: !1462)
!1469 = !DILocation(line: 49, column: 38, scope: !561, inlinedAt: !1470)
!1470 = distinct !DILocation(line: 338, column: 21, scope: !1462)
!1471 = !DILocation(line: 49, column: 45, scope: !561, inlinedAt: !1470)
!1472 = !DILocation(line: 50, column: 11, scope: !568, inlinedAt: !1470)
!1473 = !DILocation(line: 50, column: 7, scope: !561, inlinedAt: !1470)
!1474 = !DILocation(line: 51, column: 20, scope: !567, inlinedAt: !1470)
!1475 = !DILocation(line: 51, column: 32, scope: !567, inlinedAt: !1470)
!1476 = !DILocation(line: 51, column: 25, scope: !567, inlinedAt: !1470)
!1477 = !DILocation(line: 51, column: 13, scope: !567, inlinedAt: !1470)
!1478 = !DILocation(line: 53, column: 17, scope: !589, inlinedAt: !1470)
!1479 = !DILocation(line: 53, column: 11, scope: !589, inlinedAt: !1470)
!1480 = !DILocation(line: 53, column: 9, scope: !567, inlinedAt: !1470)
!1481 = !DILocation(line: 0, scope: !589, inlinedAt: !1470)
!1482 = !DILocation(line: 54, column: 10, scope: !589, inlinedAt: !1470)
!1483 = !DILocation(line: 56, column: 16, scope: !572, inlinedAt: !1470)
!1484 = !DILocation(line: 56, column: 12, scope: !568, inlinedAt: !1470)
!1485 = !DILocation(line: 58, column: 15, scope: !597, inlinedAt: !1470)
!1486 = !DILocation(line: 58, column: 19, scope: !597, inlinedAt: !1470)
!1487 = !DILocation(line: 58, column: 5, scope: !597, inlinedAt: !1470)
!1488 = !DILocation(line: 60, column: 8, scope: !572, inlinedAt: !1470)
!1489 = !DILocation(line: 61, column: 36, scope: !571, inlinedAt: !1470)
!1490 = !DILocation(line: 61, column: 29, scope: !571, inlinedAt: !1470)
!1491 = !DILocation(line: 63, column: 23, scope: !570, inlinedAt: !1470)
!1492 = !DILocation(line: 63, column: 16, scope: !570, inlinedAt: !1470)
!1493 = !DILocation(line: 64, column: 7, scope: !576, inlinedAt: !1470)
!1494 = !DILocation(line: 67, column: 35, scope: !571, inlinedAt: !1470)
!1495 = !DILocation(line: 67, column: 28, scope: !571, inlinedAt: !1470)
!1496 = !DILocation(line: 69, column: 23, scope: !578, inlinedAt: !1470)
!1497 = !DILocation(line: 69, column: 16, scope: !578, inlinedAt: !1470)
!1498 = !DILocation(line: 70, column: 30, scope: !578, inlinedAt: !1470)
!1499 = !DILocation(line: 71, column: 30, scope: !578, inlinedAt: !1470)
!1500 = !DILocation(line: 71, column: 22, scope: !578, inlinedAt: !1470)
!1501 = !DILocation(line: 71, column: 19, scope: !578, inlinedAt: !1470)
!1502 = !DILocation(line: 71, column: 14, scope: !578, inlinedAt: !1470)
!1503 = !DILocation(line: 72, column: 39, scope: !578, inlinedAt: !1470)
!1504 = !DILocation(line: 72, column: 20, scope: !578, inlinedAt: !1470)
!1505 = !DILocation(line: 0, scope: !571, inlinedAt: !1470)
!1506 = !DILocation(line: 76, column: 1, scope: !561, inlinedAt: !1470)
!1507 = !DILocation(line: 338, column: 17, scope: !1462)
!1508 = !DILocation(line: 339, column: 11, scope: !1462)
!1509 = !DILocation(line: 339, column: 3, scope: !1462)
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
!1522 = !DILocation(line: 49, column: 38, scope: !561, inlinedAt: !1523)
!1523 = distinct !DILocation(line: 344, column: 13, scope: !1510)
!1524 = !DILocation(line: 49, column: 45, scope: !561, inlinedAt: !1523)
!1525 = !DILocation(line: 50, column: 11, scope: !568, inlinedAt: !1523)
!1526 = !DILocation(line: 50, column: 7, scope: !561, inlinedAt: !1523)
!1527 = !DILocation(line: 51, column: 20, scope: !567, inlinedAt: !1523)
!1528 = !DILocation(line: 51, column: 32, scope: !567, inlinedAt: !1523)
!1529 = !DILocation(line: 51, column: 25, scope: !567, inlinedAt: !1523)
!1530 = !DILocation(line: 51, column: 13, scope: !567, inlinedAt: !1523)
!1531 = !DILocation(line: 53, column: 17, scope: !589, inlinedAt: !1523)
!1532 = !DILocation(line: 53, column: 11, scope: !589, inlinedAt: !1523)
!1533 = !DILocation(line: 53, column: 9, scope: !567, inlinedAt: !1523)
!1534 = !DILocation(line: 0, scope: !589, inlinedAt: !1523)
!1535 = !DILocation(line: 54, column: 10, scope: !589, inlinedAt: !1523)
!1536 = !DILocation(line: 56, column: 16, scope: !572, inlinedAt: !1523)
!1537 = !DILocation(line: 56, column: 12, scope: !568, inlinedAt: !1523)
!1538 = !DILocation(line: 58, column: 15, scope: !597, inlinedAt: !1523)
!1539 = !DILocation(line: 58, column: 19, scope: !597, inlinedAt: !1523)
!1540 = !DILocation(line: 58, column: 5, scope: !597, inlinedAt: !1523)
!1541 = !DILocation(line: 60, column: 8, scope: !572, inlinedAt: !1523)
!1542 = !DILocation(line: 61, column: 36, scope: !571, inlinedAt: !1523)
!1543 = !DILocation(line: 61, column: 29, scope: !571, inlinedAt: !1523)
!1544 = !DILocation(line: 63, column: 23, scope: !570, inlinedAt: !1523)
!1545 = !DILocation(line: 63, column: 16, scope: !570, inlinedAt: !1523)
!1546 = !DILocation(line: 64, column: 7, scope: !576, inlinedAt: !1523)
!1547 = !DILocation(line: 67, column: 35, scope: !571, inlinedAt: !1523)
!1548 = !DILocation(line: 67, column: 28, scope: !571, inlinedAt: !1523)
!1549 = !DILocation(line: 69, column: 23, scope: !578, inlinedAt: !1523)
!1550 = !DILocation(line: 69, column: 16, scope: !578, inlinedAt: !1523)
!1551 = !DILocation(line: 70, column: 30, scope: !578, inlinedAt: !1523)
!1552 = !DILocation(line: 71, column: 30, scope: !578, inlinedAt: !1523)
!1553 = !DILocation(line: 71, column: 22, scope: !578, inlinedAt: !1523)
!1554 = !DILocation(line: 71, column: 19, scope: !578, inlinedAt: !1523)
!1555 = !DILocation(line: 71, column: 14, scope: !578, inlinedAt: !1523)
!1556 = !DILocation(line: 72, column: 39, scope: !578, inlinedAt: !1523)
!1557 = !DILocation(line: 72, column: 20, scope: !578, inlinedAt: !1523)
!1558 = !DILocation(line: 0, scope: !571, inlinedAt: !1523)
!1559 = !DILocation(line: 76, column: 1, scope: !561, inlinedAt: !1523)
!1560 = !DILocation(line: 344, column: 9, scope: !1510)
!1561 = !DILocation(line: 345, column: 8, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1510, file: !3, line: 345, column: 7)
!1563 = !DILocation(line: 345, column: 7, scope: !1510)
!1564 = !DILocation(line: 347, column: 10, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1566, file: !3, line: 347, column: 9)
!1566 = distinct !DILexicalBlock(scope: !1562, file: !3, line: 345, column: 23)
!1567 = !DILocation(line: 347, column: 9, scope: !1566)
!1568 = !DILocation(line: 348, column: 15, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1570, file: !3, line: 348, column: 11)
!1570 = distinct !DILexicalBlock(scope: !1565, file: !3, line: 347, column: 31)
!1571 = !DILocation(line: 348, column: 11, scope: !1570)
!1572 = !DILocation(line: 348, column: 29, scope: !1569)
!1573 = !{!381, !381, i64 0}
!1574 = !DILocation(line: 348, column: 24, scope: !1569)
!1575 = !DILocation(line: 352, column: 5, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1577, file: !3, line: 352, column: 5)
!1577 = distinct !DILexicalBlock(scope: !1566, file: !3, line: 352, column: 5)
!1578 = !DILocation(line: 352, column: 5, scope: !1577)
!1579 = !DILocation(line: 49, column: 38, scope: !561, inlinedAt: !1580)
!1580 = distinct !DILocation(line: 353, column: 9, scope: !1566)
!1581 = !DILocation(line: 49, column: 45, scope: !561, inlinedAt: !1580)
!1582 = !DILocation(line: 50, column: 7, scope: !561, inlinedAt: !1580)
!1583 = !DILocation(line: 51, column: 20, scope: !567, inlinedAt: !1580)
!1584 = !DILocation(line: 51, column: 32, scope: !567, inlinedAt: !1580)
!1585 = !DILocation(line: 51, column: 25, scope: !567, inlinedAt: !1580)
!1586 = !DILocation(line: 51, column: 13, scope: !567, inlinedAt: !1580)
!1587 = !DILocation(line: 53, column: 17, scope: !589, inlinedAt: !1580)
!1588 = !DILocation(line: 53, column: 11, scope: !589, inlinedAt: !1580)
!1589 = !DILocation(line: 53, column: 9, scope: !567, inlinedAt: !1580)
!1590 = !DILocation(line: 0, scope: !589, inlinedAt: !1580)
!1591 = !DILocation(line: 54, column: 10, scope: !589, inlinedAt: !1580)
!1592 = !DILocation(line: 56, column: 16, scope: !572, inlinedAt: !1580)
!1593 = !DILocation(line: 56, column: 12, scope: !568, inlinedAt: !1580)
!1594 = !DILocation(line: 58, column: 15, scope: !597, inlinedAt: !1580)
!1595 = !DILocation(line: 58, column: 19, scope: !597, inlinedAt: !1580)
!1596 = !DILocation(line: 58, column: 5, scope: !597, inlinedAt: !1580)
!1597 = !DILocation(line: 60, column: 8, scope: !572, inlinedAt: !1580)
!1598 = !DILocation(line: 61, column: 36, scope: !571, inlinedAt: !1580)
!1599 = !DILocation(line: 61, column: 29, scope: !571, inlinedAt: !1580)
!1600 = !DILocation(line: 63, column: 23, scope: !570, inlinedAt: !1580)
!1601 = !DILocation(line: 63, column: 16, scope: !570, inlinedAt: !1580)
!1602 = !DILocation(line: 64, column: 7, scope: !576, inlinedAt: !1580)
!1603 = !DILocation(line: 67, column: 35, scope: !571, inlinedAt: !1580)
!1604 = !DILocation(line: 67, column: 28, scope: !571, inlinedAt: !1580)
!1605 = !DILocation(line: 69, column: 23, scope: !578, inlinedAt: !1580)
!1606 = !DILocation(line: 69, column: 16, scope: !578, inlinedAt: !1580)
!1607 = !DILocation(line: 70, column: 30, scope: !578, inlinedAt: !1580)
!1608 = !DILocation(line: 71, column: 30, scope: !578, inlinedAt: !1580)
!1609 = !DILocation(line: 71, column: 22, scope: !578, inlinedAt: !1580)
!1610 = !DILocation(line: 71, column: 19, scope: !578, inlinedAt: !1580)
!1611 = !DILocation(line: 71, column: 14, scope: !578, inlinedAt: !1580)
!1612 = !DILocation(line: 72, column: 39, scope: !578, inlinedAt: !1580)
!1613 = !DILocation(line: 72, column: 20, scope: !578, inlinedAt: !1580)
!1614 = !DILocation(line: 0, scope: !571, inlinedAt: !1580)
!1615 = !DILocation(line: 76, column: 1, scope: !561, inlinedAt: !1580)
!1616 = !DILocation(line: 355, column: 3, scope: !1566)
!1617 = !DILocation(line: 0, scope: !1566)
!1618 = !DILocation(line: 356, column: 11, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1510, file: !3, line: 356, column: 7)
!1620 = !DILocation(line: 356, column: 7, scope: !1510)
!1621 = !DILocation(line: 356, column: 27, scope: !1619)
!1622 = !DILocation(line: 356, column: 39, scope: !1619)
!1623 = !DILocation(line: 356, column: 25, scope: !1619)
!1624 = !DILocation(line: 356, column: 20, scope: !1619)
!1625 = !DILocation(line: 357, column: 10, scope: !1510)
!1626 = !DILocation(line: 357, column: 3, scope: !1510)
!1627 = !DILocation(line: 0, scope: !1570)
!1628 = !DILocation(line: 358, column: 1, scope: !1510)
!1629 = distinct !DISubprogram(name: "lua_objlen", scope: !3, file: !3, line: 361, type: !1630, isLocal: false, isDefinition: true, scopeLine: 361, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1632)
!1630 = !DISubroutineType(types: !1631)
!1631 = !{!48, !131, !8}
!1632 = !{!1633, !1634, !1635, !1636}
!1633 = !DILocalVariable(name: "L", arg: 1, scope: !1629, file: !3, line: 361, type: !131)
!1634 = !DILocalVariable(name: "idx", arg: 2, scope: !1629, file: !3, line: 361, type: !8)
!1635 = !DILocalVariable(name: "o", scope: !1629, file: !3, line: 362, type: !140)
!1636 = !DILocalVariable(name: "l", scope: !1637, file: !3, line: 368, type: !48)
!1637 = distinct !DILexicalBlock(scope: !1638, file: !3, line: 367, column: 23)
!1638 = distinct !DILexicalBlock(scope: !1629, file: !3, line: 363, column: 21)
!1639 = !DILocation(line: 361, column: 39, scope: !1629)
!1640 = !DILocation(line: 361, column: 46, scope: !1629)
!1641 = !DILocation(line: 49, column: 38, scope: !561, inlinedAt: !1642)
!1642 = distinct !DILocation(line: 362, column: 13, scope: !1629)
!1643 = !DILocation(line: 49, column: 45, scope: !561, inlinedAt: !1642)
!1644 = !DILocation(line: 50, column: 11, scope: !568, inlinedAt: !1642)
!1645 = !DILocation(line: 50, column: 7, scope: !561, inlinedAt: !1642)
!1646 = !DILocation(line: 51, column: 20, scope: !567, inlinedAt: !1642)
!1647 = !DILocation(line: 51, column: 32, scope: !567, inlinedAt: !1642)
!1648 = !DILocation(line: 51, column: 25, scope: !567, inlinedAt: !1642)
!1649 = !DILocation(line: 51, column: 13, scope: !567, inlinedAt: !1642)
!1650 = !DILocation(line: 53, column: 17, scope: !589, inlinedAt: !1642)
!1651 = !DILocation(line: 53, column: 11, scope: !589, inlinedAt: !1642)
!1652 = !DILocation(line: 53, column: 9, scope: !567, inlinedAt: !1642)
!1653 = !DILocation(line: 0, scope: !589, inlinedAt: !1642)
!1654 = !DILocation(line: 54, column: 10, scope: !589, inlinedAt: !1642)
!1655 = !DILocation(line: 56, column: 16, scope: !572, inlinedAt: !1642)
!1656 = !DILocation(line: 56, column: 12, scope: !568, inlinedAt: !1642)
!1657 = !DILocation(line: 58, column: 15, scope: !597, inlinedAt: !1642)
!1658 = !DILocation(line: 58, column: 19, scope: !597, inlinedAt: !1642)
!1659 = !DILocation(line: 58, column: 5, scope: !597, inlinedAt: !1642)
!1660 = !DILocation(line: 60, column: 8, scope: !572, inlinedAt: !1642)
!1661 = !DILocation(line: 61, column: 36, scope: !571, inlinedAt: !1642)
!1662 = !DILocation(line: 61, column: 29, scope: !571, inlinedAt: !1642)
!1663 = !DILocation(line: 63, column: 23, scope: !570, inlinedAt: !1642)
!1664 = !DILocation(line: 63, column: 16, scope: !570, inlinedAt: !1642)
!1665 = !DILocation(line: 64, column: 7, scope: !576, inlinedAt: !1642)
!1666 = !DILocation(line: 67, column: 35, scope: !571, inlinedAt: !1642)
!1667 = !DILocation(line: 67, column: 28, scope: !571, inlinedAt: !1642)
!1668 = !DILocation(line: 69, column: 23, scope: !578, inlinedAt: !1642)
!1669 = !DILocation(line: 69, column: 16, scope: !578, inlinedAt: !1642)
!1670 = !DILocation(line: 70, column: 30, scope: !578, inlinedAt: !1642)
!1671 = !DILocation(line: 71, column: 30, scope: !578, inlinedAt: !1642)
!1672 = !DILocation(line: 71, column: 22, scope: !578, inlinedAt: !1642)
!1673 = !DILocation(line: 71, column: 19, scope: !578, inlinedAt: !1642)
!1674 = !DILocation(line: 71, column: 14, scope: !578, inlinedAt: !1642)
!1675 = !DILocation(line: 72, column: 39, scope: !578, inlinedAt: !1642)
!1676 = !DILocation(line: 72, column: 20, scope: !578, inlinedAt: !1642)
!1677 = !DILocation(line: 0, scope: !571, inlinedAt: !1642)
!1678 = !DILocation(line: 76, column: 1, scope: !561, inlinedAt: !1642)
!1679 = !DILocation(line: 362, column: 9, scope: !1629)
!1680 = !DILocation(line: 363, column: 11, scope: !1629)
!1681 = !DILocation(line: 363, column: 3, scope: !1629)
!1682 = !DILocation(line: 364, column: 30, scope: !1638)
!1683 = !DILocation(line: 364, column: 42, scope: !1638)
!1684 = !DILocation(line: 364, column: 23, scope: !1638)
!1685 = !DILocation(line: 365, column: 32, scope: !1638)
!1686 = !DILocation(line: 365, column: 43, scope: !1638)
!1687 = !DILocation(line: 365, column: 25, scope: !1638)
!1688 = !DILocation(line: 366, column: 39, scope: !1638)
!1689 = !DILocation(line: 366, column: 29, scope: !1638)
!1690 = !DILocation(line: 366, column: 22, scope: !1638)
!1691 = !DILocation(line: 370, column: 12, scope: !1637)
!1692 = !DILocation(line: 370, column: 34, scope: !1637)
!1693 = !DILocation(line: 370, column: 46, scope: !1637)
!1694 = !DILocation(line: 0, scope: !1638)
!1695 = !DILocation(line: 376, column: 1, scope: !1629)
!1696 = distinct !DISubprogram(name: "lua_tocfunction", scope: !3, file: !3, line: 379, type: !1697, isLocal: false, isDefinition: true, scopeLine: 379, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1699)
!1697 = !DISubroutineType(types: !1698)
!1698 = !{!127, !131, !8}
!1699 = !{!1700, !1701, !1702}
!1700 = !DILocalVariable(name: "L", arg: 1, scope: !1696, file: !3, line: 379, type: !131)
!1701 = !DILocalVariable(name: "idx", arg: 2, scope: !1696, file: !3, line: 379, type: !8)
!1702 = !DILocalVariable(name: "o", scope: !1696, file: !3, line: 380, type: !140)
!1703 = !DILocation(line: 379, column: 51, scope: !1696)
!1704 = !DILocation(line: 379, column: 58, scope: !1696)
!1705 = !DILocation(line: 49, column: 38, scope: !561, inlinedAt: !1706)
!1706 = distinct !DILocation(line: 380, column: 13, scope: !1696)
!1707 = !DILocation(line: 49, column: 45, scope: !561, inlinedAt: !1706)
!1708 = !DILocation(line: 50, column: 11, scope: !568, inlinedAt: !1706)
!1709 = !DILocation(line: 50, column: 7, scope: !561, inlinedAt: !1706)
!1710 = !DILocation(line: 51, column: 20, scope: !567, inlinedAt: !1706)
!1711 = !DILocation(line: 51, column: 32, scope: !567, inlinedAt: !1706)
!1712 = !DILocation(line: 51, column: 25, scope: !567, inlinedAt: !1706)
!1713 = !DILocation(line: 51, column: 13, scope: !567, inlinedAt: !1706)
!1714 = !DILocation(line: 53, column: 17, scope: !589, inlinedAt: !1706)
!1715 = !DILocation(line: 53, column: 11, scope: !589, inlinedAt: !1706)
!1716 = !DILocation(line: 53, column: 9, scope: !567, inlinedAt: !1706)
!1717 = !DILocation(line: 0, scope: !589, inlinedAt: !1706)
!1718 = !DILocation(line: 54, column: 10, scope: !589, inlinedAt: !1706)
!1719 = !DILocation(line: 56, column: 16, scope: !572, inlinedAt: !1706)
!1720 = !DILocation(line: 56, column: 12, scope: !568, inlinedAt: !1706)
!1721 = !DILocation(line: 58, column: 15, scope: !597, inlinedAt: !1706)
!1722 = !DILocation(line: 58, column: 19, scope: !597, inlinedAt: !1706)
!1723 = !DILocation(line: 58, column: 5, scope: !597, inlinedAt: !1706)
!1724 = !DILocation(line: 60, column: 8, scope: !572, inlinedAt: !1706)
!1725 = !DILocation(line: 61, column: 36, scope: !571, inlinedAt: !1706)
!1726 = !DILocation(line: 61, column: 29, scope: !571, inlinedAt: !1706)
!1727 = !DILocation(line: 63, column: 23, scope: !570, inlinedAt: !1706)
!1728 = !DILocation(line: 63, column: 16, scope: !570, inlinedAt: !1706)
!1729 = !DILocation(line: 64, column: 7, scope: !576, inlinedAt: !1706)
!1730 = !DILocation(line: 67, column: 35, scope: !571, inlinedAt: !1706)
!1731 = !DILocation(line: 67, column: 28, scope: !571, inlinedAt: !1706)
!1732 = !DILocation(line: 69, column: 23, scope: !578, inlinedAt: !1706)
!1733 = !DILocation(line: 69, column: 16, scope: !578, inlinedAt: !1706)
!1734 = !DILocation(line: 70, column: 30, scope: !578, inlinedAt: !1706)
!1735 = !DILocation(line: 71, column: 30, scope: !578, inlinedAt: !1706)
!1736 = !DILocation(line: 71, column: 22, scope: !578, inlinedAt: !1706)
!1737 = !DILocation(line: 71, column: 19, scope: !578, inlinedAt: !1706)
!1738 = !DILocation(line: 71, column: 14, scope: !578, inlinedAt: !1706)
!1739 = !DILocation(line: 72, column: 39, scope: !578, inlinedAt: !1706)
!1740 = !DILocation(line: 72, column: 20, scope: !578, inlinedAt: !1706)
!1741 = !DILocation(line: 0, scope: !571, inlinedAt: !1706)
!1742 = !DILocation(line: 76, column: 1, scope: !561, inlinedAt: !1706)
!1743 = !DILocation(line: 380, column: 9, scope: !1696)
!1744 = !DILocation(line: 381, column: 12, scope: !1696)
!1745 = !DILocation(line: 381, column: 10, scope: !1696)
!1746 = !DILocation(line: 381, column: 51, scope: !1696)
!1747 = !DILocation(line: 381, column: 3, scope: !1696)
!1748 = distinct !DISubprogram(name: "lua_touserdata", scope: !3, file: !3, line: 385, type: !1749, isLocal: false, isDefinition: true, scopeLine: 385, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1751)
!1749 = !DISubroutineType(types: !1750)
!1750 = !{!35, !131, !8}
!1751 = !{!1752, !1753, !1754}
!1752 = !DILocalVariable(name: "L", arg: 1, scope: !1748, file: !3, line: 385, type: !131)
!1753 = !DILocalVariable(name: "idx", arg: 2, scope: !1748, file: !3, line: 385, type: !8)
!1754 = !DILocalVariable(name: "o", scope: !1748, file: !3, line: 386, type: !140)
!1755 = !DILocation(line: 385, column: 42, scope: !1748)
!1756 = !DILocation(line: 385, column: 49, scope: !1748)
!1757 = !DILocation(line: 49, column: 38, scope: !561, inlinedAt: !1758)
!1758 = distinct !DILocation(line: 386, column: 13, scope: !1748)
!1759 = !DILocation(line: 49, column: 45, scope: !561, inlinedAt: !1758)
!1760 = !DILocation(line: 50, column: 11, scope: !568, inlinedAt: !1758)
!1761 = !DILocation(line: 50, column: 7, scope: !561, inlinedAt: !1758)
!1762 = !DILocation(line: 51, column: 20, scope: !567, inlinedAt: !1758)
!1763 = !DILocation(line: 51, column: 32, scope: !567, inlinedAt: !1758)
!1764 = !DILocation(line: 51, column: 25, scope: !567, inlinedAt: !1758)
!1765 = !DILocation(line: 51, column: 13, scope: !567, inlinedAt: !1758)
!1766 = !DILocation(line: 53, column: 17, scope: !589, inlinedAt: !1758)
!1767 = !DILocation(line: 53, column: 11, scope: !589, inlinedAt: !1758)
!1768 = !DILocation(line: 53, column: 9, scope: !567, inlinedAt: !1758)
!1769 = !DILocation(line: 0, scope: !589, inlinedAt: !1758)
!1770 = !DILocation(line: 54, column: 10, scope: !589, inlinedAt: !1758)
!1771 = !DILocation(line: 56, column: 16, scope: !572, inlinedAt: !1758)
!1772 = !DILocation(line: 56, column: 12, scope: !568, inlinedAt: !1758)
!1773 = !DILocation(line: 58, column: 15, scope: !597, inlinedAt: !1758)
!1774 = !DILocation(line: 58, column: 19, scope: !597, inlinedAt: !1758)
!1775 = !DILocation(line: 58, column: 5, scope: !597, inlinedAt: !1758)
!1776 = !DILocation(line: 60, column: 8, scope: !572, inlinedAt: !1758)
!1777 = !DILocation(line: 61, column: 36, scope: !571, inlinedAt: !1758)
!1778 = !DILocation(line: 61, column: 29, scope: !571, inlinedAt: !1758)
!1779 = !DILocation(line: 63, column: 23, scope: !570, inlinedAt: !1758)
!1780 = !DILocation(line: 63, column: 16, scope: !570, inlinedAt: !1758)
!1781 = !DILocation(line: 64, column: 7, scope: !576, inlinedAt: !1758)
!1782 = !DILocation(line: 67, column: 35, scope: !571, inlinedAt: !1758)
!1783 = !DILocation(line: 67, column: 28, scope: !571, inlinedAt: !1758)
!1784 = !DILocation(line: 69, column: 23, scope: !578, inlinedAt: !1758)
!1785 = !DILocation(line: 69, column: 16, scope: !578, inlinedAt: !1758)
!1786 = !DILocation(line: 70, column: 30, scope: !578, inlinedAt: !1758)
!1787 = !DILocation(line: 71, column: 30, scope: !578, inlinedAt: !1758)
!1788 = !DILocation(line: 71, column: 22, scope: !578, inlinedAt: !1758)
!1789 = !DILocation(line: 71, column: 19, scope: !578, inlinedAt: !1758)
!1790 = !DILocation(line: 71, column: 14, scope: !578, inlinedAt: !1758)
!1791 = !DILocation(line: 72, column: 39, scope: !578, inlinedAt: !1758)
!1792 = !DILocation(line: 72, column: 20, scope: !578, inlinedAt: !1758)
!1793 = !DILocation(line: 0, scope: !571, inlinedAt: !1758)
!1794 = !DILocation(line: 76, column: 1, scope: !561, inlinedAt: !1758)
!1795 = !DILocation(line: 386, column: 9, scope: !1748)
!1796 = !DILocation(line: 387, column: 11, scope: !1748)
!1797 = !DILocation(line: 387, column: 3, scope: !1748)
!1798 = !DILocation(line: 388, column: 33, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1748, file: !3, line: 387, column: 21)
!1800 = !DILocation(line: 388, column: 46, scope: !1799)
!1801 = !DILocation(line: 388, column: 32, scope: !1799)
!1802 = !DILocation(line: 388, column: 25, scope: !1799)
!1803 = !DILocation(line: 389, column: 37, scope: !1799)
!1804 = !DILocation(line: 389, column: 30, scope: !1799)
!1805 = !DILocation(line: 0, scope: !1799)
!1806 = !DILocation(line: 392, column: 1, scope: !1748)
!1807 = distinct !DISubprogram(name: "lua_tothread", scope: !3, file: !3, line: 395, type: !1808, isLocal: false, isDefinition: true, scopeLine: 395, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1810)
!1808 = !DISubroutineType(types: !1809)
!1809 = !{!131, !131, !8}
!1810 = !{!1811, !1812, !1813}
!1811 = !DILocalVariable(name: "L", arg: 1, scope: !1807, file: !3, line: 395, type: !131)
!1812 = !DILocalVariable(name: "idx", arg: 2, scope: !1807, file: !3, line: 395, type: !8)
!1813 = !DILocalVariable(name: "o", scope: !1807, file: !3, line: 396, type: !140)
!1814 = !DILocation(line: 395, column: 45, scope: !1807)
!1815 = !DILocation(line: 395, column: 52, scope: !1807)
!1816 = !DILocation(line: 49, column: 38, scope: !561, inlinedAt: !1817)
!1817 = distinct !DILocation(line: 396, column: 13, scope: !1807)
!1818 = !DILocation(line: 49, column: 45, scope: !561, inlinedAt: !1817)
!1819 = !DILocation(line: 50, column: 11, scope: !568, inlinedAt: !1817)
!1820 = !DILocation(line: 50, column: 7, scope: !561, inlinedAt: !1817)
!1821 = !DILocation(line: 51, column: 20, scope: !567, inlinedAt: !1817)
!1822 = !DILocation(line: 51, column: 32, scope: !567, inlinedAt: !1817)
!1823 = !DILocation(line: 51, column: 25, scope: !567, inlinedAt: !1817)
!1824 = !DILocation(line: 51, column: 13, scope: !567, inlinedAt: !1817)
!1825 = !DILocation(line: 53, column: 17, scope: !589, inlinedAt: !1817)
!1826 = !DILocation(line: 53, column: 11, scope: !589, inlinedAt: !1817)
!1827 = !DILocation(line: 53, column: 9, scope: !567, inlinedAt: !1817)
!1828 = !DILocation(line: 0, scope: !589, inlinedAt: !1817)
!1829 = !DILocation(line: 54, column: 10, scope: !589, inlinedAt: !1817)
!1830 = !DILocation(line: 56, column: 16, scope: !572, inlinedAt: !1817)
!1831 = !DILocation(line: 56, column: 12, scope: !568, inlinedAt: !1817)
!1832 = !DILocation(line: 58, column: 15, scope: !597, inlinedAt: !1817)
!1833 = !DILocation(line: 58, column: 19, scope: !597, inlinedAt: !1817)
!1834 = !DILocation(line: 58, column: 5, scope: !597, inlinedAt: !1817)
!1835 = !DILocation(line: 60, column: 8, scope: !572, inlinedAt: !1817)
!1836 = !DILocation(line: 61, column: 36, scope: !571, inlinedAt: !1817)
!1837 = !DILocation(line: 61, column: 29, scope: !571, inlinedAt: !1817)
!1838 = !DILocation(line: 63, column: 23, scope: !570, inlinedAt: !1817)
!1839 = !DILocation(line: 63, column: 16, scope: !570, inlinedAt: !1817)
!1840 = !DILocation(line: 64, column: 7, scope: !576, inlinedAt: !1817)
!1841 = !DILocation(line: 67, column: 35, scope: !571, inlinedAt: !1817)
!1842 = !DILocation(line: 67, column: 28, scope: !571, inlinedAt: !1817)
!1843 = !DILocation(line: 69, column: 23, scope: !578, inlinedAt: !1817)
!1844 = !DILocation(line: 69, column: 16, scope: !578, inlinedAt: !1817)
!1845 = !DILocation(line: 70, column: 30, scope: !578, inlinedAt: !1817)
!1846 = !DILocation(line: 71, column: 30, scope: !578, inlinedAt: !1817)
!1847 = !DILocation(line: 71, column: 22, scope: !578, inlinedAt: !1817)
!1848 = !DILocation(line: 71, column: 19, scope: !578, inlinedAt: !1817)
!1849 = !DILocation(line: 71, column: 14, scope: !578, inlinedAt: !1817)
!1850 = !DILocation(line: 72, column: 39, scope: !578, inlinedAt: !1817)
!1851 = !DILocation(line: 72, column: 20, scope: !578, inlinedAt: !1817)
!1852 = !DILocation(line: 0, scope: !571, inlinedAt: !1817)
!1853 = !DILocation(line: 76, column: 1, scope: !561, inlinedAt: !1817)
!1854 = !DILocation(line: 396, column: 9, scope: !1807)
!1855 = !DILocation(line: 397, column: 12, scope: !1807)
!1856 = !DILocation(line: 397, column: 10, scope: !1807)
!1857 = !DILocation(line: 397, column: 36, scope: !1807)
!1858 = !DILocation(line: 397, column: 3, scope: !1807)
!1859 = distinct !DISubprogram(name: "lua_topointer", scope: !3, file: !3, line: 401, type: !1860, isLocal: false, isDefinition: true, scopeLine: 401, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1864)
!1860 = !DISubroutineType(types: !1861)
!1861 = !{!1862, !131, !8}
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!1863 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1864 = !{!1865, !1866, !1867}
!1865 = !DILocalVariable(name: "L", arg: 1, scope: !1859, file: !3, line: 401, type: !131)
!1866 = !DILocalVariable(name: "idx", arg: 2, scope: !1859, file: !3, line: 401, type: !8)
!1867 = !DILocalVariable(name: "o", scope: !1859, file: !3, line: 402, type: !140)
!1868 = !DILocation(line: 401, column: 47, scope: !1859)
!1869 = !DILocation(line: 401, column: 54, scope: !1859)
!1870 = !DILocation(line: 49, column: 38, scope: !561, inlinedAt: !1871)
!1871 = distinct !DILocation(line: 402, column: 13, scope: !1859)
!1872 = !DILocation(line: 49, column: 45, scope: !561, inlinedAt: !1871)
!1873 = !DILocation(line: 50, column: 11, scope: !568, inlinedAt: !1871)
!1874 = !DILocation(line: 50, column: 7, scope: !561, inlinedAt: !1871)
!1875 = !DILocation(line: 51, column: 20, scope: !567, inlinedAt: !1871)
!1876 = !DILocation(line: 51, column: 32, scope: !567, inlinedAt: !1871)
!1877 = !DILocation(line: 51, column: 25, scope: !567, inlinedAt: !1871)
!1878 = !DILocation(line: 51, column: 13, scope: !567, inlinedAt: !1871)
!1879 = !DILocation(line: 53, column: 17, scope: !589, inlinedAt: !1871)
!1880 = !DILocation(line: 53, column: 11, scope: !589, inlinedAt: !1871)
!1881 = !DILocation(line: 53, column: 9, scope: !567, inlinedAt: !1871)
!1882 = !DILocation(line: 0, scope: !589, inlinedAt: !1871)
!1883 = !DILocation(line: 54, column: 10, scope: !589, inlinedAt: !1871)
!1884 = !DILocation(line: 56, column: 16, scope: !572, inlinedAt: !1871)
!1885 = !DILocation(line: 56, column: 12, scope: !568, inlinedAt: !1871)
!1886 = !DILocation(line: 58, column: 15, scope: !597, inlinedAt: !1871)
!1887 = !DILocation(line: 58, column: 19, scope: !597, inlinedAt: !1871)
!1888 = !DILocation(line: 58, column: 5, scope: !597, inlinedAt: !1871)
!1889 = !DILocation(line: 60, column: 8, scope: !572, inlinedAt: !1871)
!1890 = !DILocation(line: 61, column: 36, scope: !571, inlinedAt: !1871)
!1891 = !DILocation(line: 61, column: 29, scope: !571, inlinedAt: !1871)
!1892 = !DILocation(line: 63, column: 23, scope: !570, inlinedAt: !1871)
!1893 = !DILocation(line: 63, column: 16, scope: !570, inlinedAt: !1871)
!1894 = !DILocation(line: 64, column: 7, scope: !576, inlinedAt: !1871)
!1895 = !DILocation(line: 67, column: 35, scope: !571, inlinedAt: !1871)
!1896 = !DILocation(line: 67, column: 28, scope: !571, inlinedAt: !1871)
!1897 = !DILocation(line: 69, column: 23, scope: !578, inlinedAt: !1871)
!1898 = !DILocation(line: 69, column: 16, scope: !578, inlinedAt: !1871)
!1899 = !DILocation(line: 70, column: 30, scope: !578, inlinedAt: !1871)
!1900 = !DILocation(line: 71, column: 30, scope: !578, inlinedAt: !1871)
!1901 = !DILocation(line: 71, column: 22, scope: !578, inlinedAt: !1871)
!1902 = !DILocation(line: 71, column: 19, scope: !578, inlinedAt: !1871)
!1903 = !DILocation(line: 71, column: 14, scope: !578, inlinedAt: !1871)
!1904 = !DILocation(line: 72, column: 39, scope: !578, inlinedAt: !1871)
!1905 = !DILocation(line: 72, column: 20, scope: !578, inlinedAt: !1871)
!1906 = !DILocation(line: 0, scope: !571, inlinedAt: !1871)
!1907 = !DILocation(line: 76, column: 1, scope: !561, inlinedAt: !1871)
!1908 = !DILocation(line: 402, column: 9, scope: !1859)
!1909 = !DILocation(line: 403, column: 11, scope: !1859)
!1910 = !DILocation(line: 403, column: 3, scope: !1859)
!1911 = !DILocation(line: 404, column: 29, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1859, file: !3, line: 403, column: 21)
!1913 = !DILocation(line: 404, column: 22, scope: !1912)
!1914 = !DILocation(line: 405, column: 32, scope: !1912)
!1915 = !DILocation(line: 405, column: 25, scope: !1912)
!1916 = !DILocation(line: 406, column: 30, scope: !1912)
!1917 = !DILocation(line: 406, column: 23, scope: !1912)
!1918 = !DILocation(line: 409, column: 14, scope: !1912)
!1919 = !DILocation(line: 409, column: 7, scope: !1912)
!1920 = !DILocation(line: 0, scope: !1912)
!1921 = !DILocation(line: 412, column: 1, scope: !1859)
!1922 = distinct !DISubprogram(name: "lua_pushnil", scope: !3, file: !3, line: 421, type: !1923, isLocal: false, isDefinition: true, scopeLine: 421, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1925)
!1923 = !DISubroutineType(types: !1924)
!1924 = !{null, !131}
!1925 = !{!1926}
!1926 = !DILocalVariable(name: "L", arg: 1, scope: !1922, file: !3, line: 421, type: !131)
!1927 = !DILocation(line: 421, column: 38, scope: !1922)
!1928 = !DILocation(line: 423, column: 3, scope: !1922)
!1929 = !DILocation(line: 424, column: 3, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1922, file: !3, line: 424, column: 3)
!1931 = !DILocation(line: 426, column: 1, scope: !1922)
!1932 = distinct !DISubprogram(name: "lua_pushnumber", scope: !3, file: !3, line: 429, type: !1933, isLocal: false, isDefinition: true, scopeLine: 429, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1935)
!1933 = !DISubroutineType(types: !1934)
!1934 = !{null, !131, !85}
!1935 = !{!1936, !1937, !1938}
!1936 = !DILocalVariable(name: "L", arg: 1, scope: !1932, file: !3, line: 429, type: !131)
!1937 = !DILocalVariable(name: "n", arg: 2, scope: !1932, file: !3, line: 429, type: !85)
!1938 = !DILocalVariable(name: "i_o", scope: !1939, file: !3, line: 431, type: !74)
!1939 = distinct !DILexicalBlock(scope: !1932, file: !3, line: 431, column: 3)
!1940 = !DILocation(line: 429, column: 41, scope: !1932)
!1941 = !DILocation(line: 429, column: 55, scope: !1932)
!1942 = !DILocation(line: 431, column: 3, scope: !1939)
!1943 = !DILocation(line: 432, column: 3, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1932, file: !3, line: 432, column: 3)
!1945 = !DILocation(line: 434, column: 1, scope: !1932)
!1946 = distinct !DISubprogram(name: "lua_pushinteger", scope: !3, file: !3, line: 437, type: !1947, isLocal: false, isDefinition: true, scopeLine: 437, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1949)
!1947 = !DISubroutineType(types: !1948)
!1948 = !{null, !131, !340}
!1949 = !{!1950, !1951, !1952}
!1950 = !DILocalVariable(name: "L", arg: 1, scope: !1946, file: !3, line: 437, type: !131)
!1951 = !DILocalVariable(name: "n", arg: 2, scope: !1946, file: !3, line: 437, type: !340)
!1952 = !DILocalVariable(name: "i_o", scope: !1953, file: !3, line: 439, type: !74)
!1953 = distinct !DILexicalBlock(scope: !1946, file: !3, line: 439, column: 3)
!1954 = !DILocation(line: 437, column: 42, scope: !1946)
!1955 = !DILocation(line: 437, column: 57, scope: !1946)
!1956 = !DILocation(line: 439, column: 3, scope: !1953)
!1957 = !DILocation(line: 440, column: 3, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1946, file: !3, line: 440, column: 3)
!1959 = !DILocation(line: 442, column: 1, scope: !1946)
!1960 = distinct !DISubprogram(name: "lua_pushlstring", scope: !3, file: !3, line: 445, type: !1961, isLocal: false, isDefinition: true, scopeLine: 445, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1963)
!1961 = !DISubroutineType(types: !1962)
!1962 = !{null, !131, !257, !48}
!1963 = !{!1964, !1965, !1966, !1967}
!1964 = !DILocalVariable(name: "L", arg: 1, scope: !1960, file: !3, line: 445, type: !131)
!1965 = !DILocalVariable(name: "s", arg: 2, scope: !1960, file: !3, line: 445, type: !257)
!1966 = !DILocalVariable(name: "len", arg: 3, scope: !1960, file: !3, line: 445, type: !48)
!1967 = !DILocalVariable(name: "i_o", scope: !1968, file: !3, line: 448, type: !74)
!1968 = distinct !DILexicalBlock(scope: !1960, file: !3, line: 448, column: 3)
!1969 = !DILocation(line: 445, column: 42, scope: !1960)
!1970 = !DILocation(line: 445, column: 57, scope: !1960)
!1971 = !DILocation(line: 445, column: 67, scope: !1960)
!1972 = !DILocation(line: 447, column: 3, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1974, file: !3, line: 447, column: 3)
!1974 = distinct !DILexicalBlock(scope: !1960, file: !3, line: 447, column: 3)
!1975 = !DILocation(line: 447, column: 3, scope: !1974)
!1976 = !DILocation(line: 448, column: 3, scope: !1968)
!1977 = !DILocation(line: 449, column: 3, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1960, file: !3, line: 449, column: 3)
!1979 = !DILocation(line: 451, column: 1, scope: !1960)
!1980 = distinct !DISubprogram(name: "lua_pushstring", scope: !3, file: !3, line: 454, type: !1981, isLocal: false, isDefinition: true, scopeLine: 454, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1983)
!1981 = !DISubroutineType(types: !1982)
!1982 = !{null, !131, !257}
!1983 = !{!1984, !1985}
!1984 = !DILocalVariable(name: "L", arg: 1, scope: !1980, file: !3, line: 454, type: !131)
!1985 = !DILocalVariable(name: "s", arg: 2, scope: !1980, file: !3, line: 454, type: !257)
!1986 = !DILocation(line: 454, column: 41, scope: !1980)
!1987 = !DILocation(line: 454, column: 56, scope: !1980)
!1988 = !DILocation(line: 455, column: 9, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1980, file: !3, line: 455, column: 7)
!1990 = !DILocation(line: 455, column: 7, scope: !1980)
!1991 = !DILocation(line: 421, column: 38, scope: !1922, inlinedAt: !1992)
!1992 = distinct !DILocation(line: 456, column: 5, scope: !1989)
!1993 = !DILocation(line: 423, column: 3, scope: !1922, inlinedAt: !1992)
!1994 = !DILocation(line: 456, column: 5, scope: !1989)
!1995 = !DILocation(line: 458, column: 27, scope: !1989)
!1996 = !DILocation(line: 445, column: 42, scope: !1960, inlinedAt: !1997)
!1997 = distinct !DILocation(line: 458, column: 5, scope: !1989)
!1998 = !DILocation(line: 445, column: 57, scope: !1960, inlinedAt: !1997)
!1999 = !DILocation(line: 445, column: 67, scope: !1960, inlinedAt: !1997)
!2000 = !DILocation(line: 447, column: 3, scope: !1973, inlinedAt: !1997)
!2001 = !DILocation(line: 447, column: 3, scope: !1974, inlinedAt: !1997)
!2002 = !DILocation(line: 448, column: 3, scope: !1968, inlinedAt: !1997)
!2003 = !DILocation(line: 449, column: 3, scope: !1978, inlinedAt: !1997)
!2004 = !DILocation(line: 0, scope: !1989)
!2005 = !DILocation(line: 459, column: 1, scope: !1980)
!2006 = distinct !DISubprogram(name: "lua_pushvfstring", scope: !3, file: !3, line: 462, type: !2007, isLocal: false, isDefinition: true, scopeLine: 463, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2016)
!2007 = !DISubroutineType(types: !2008)
!2008 = !{!257, !131, !257, !2009}
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 459, size: 192, elements: !2011)
!2011 = !{!2012, !2013, !2014, !2015}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2010, file: !3, line: 459, baseType: !46, size: 32)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2010, file: !3, line: 459, baseType: !46, size: 32, offset: 32)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2010, file: !3, line: 459, baseType: !35, size: 64, offset: 64)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2010, file: !3, line: 459, baseType: !35, size: 64, offset: 128)
!2016 = !{!2017, !2018, !2019, !2020}
!2017 = !DILocalVariable(name: "L", arg: 1, scope: !2006, file: !3, line: 462, type: !131)
!2018 = !DILocalVariable(name: "fmt", arg: 2, scope: !2006, file: !3, line: 462, type: !257)
!2019 = !DILocalVariable(name: "argp", arg: 3, scope: !2006, file: !3, line: 463, type: !2009)
!2020 = !DILocalVariable(name: "ret", scope: !2006, file: !3, line: 464, type: !257)
!2021 = !DILocation(line: 462, column: 50, scope: !2006)
!2022 = !DILocation(line: 462, column: 65, scope: !2006)
!2023 = !DILocation(line: 463, column: 47, scope: !2006)
!2024 = !DILocation(line: 466, column: 3, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2026, file: !3, line: 466, column: 3)
!2026 = distinct !DILexicalBlock(scope: !2006, file: !3, line: 466, column: 3)
!2027 = !DILocation(line: 466, column: 3, scope: !2026)
!2028 = !DILocation(line: 467, column: 9, scope: !2006)
!2029 = !DILocation(line: 464, column: 15, scope: !2006)
!2030 = !DILocation(line: 469, column: 3, scope: !2006)
!2031 = distinct !DISubprogram(name: "lua_pushfstring", scope: !3, file: !3, line: 473, type: !2032, isLocal: false, isDefinition: true, scopeLine: 473, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2034)
!2032 = !DISubroutineType(types: !2033)
!2033 = !{!257, !131, !257, null}
!2034 = !{!2035, !2036, !2037, !2038}
!2035 = !DILocalVariable(name: "L", arg: 1, scope: !2031, file: !3, line: 473, type: !131)
!2036 = !DILocalVariable(name: "fmt", arg: 2, scope: !2031, file: !3, line: 473, type: !257)
!2037 = !DILocalVariable(name: "ret", scope: !2031, file: !3, line: 474, type: !257)
!2038 = !DILocalVariable(name: "argp", scope: !2031, file: !3, line: 475, type: !2039)
!2039 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2040, line: 32, baseType: !2041)
!2040 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!2041 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 475, baseType: !2042)
!2042 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2010, size: 192, elements: !283)
!2043 = !DILocation(line: 473, column: 49, scope: !2031)
!2044 = !DILocation(line: 473, column: 64, scope: !2031)
!2045 = !DILocation(line: 475, column: 3, scope: !2031)
!2046 = !DILocation(line: 475, column: 11, scope: !2031)
!2047 = !DILocation(line: 477, column: 3, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2049, file: !3, line: 477, column: 3)
!2049 = distinct !DILexicalBlock(scope: !2031, file: !3, line: 477, column: 3)
!2050 = !DILocation(line: 477, column: 3, scope: !2049)
!2051 = !DILocation(line: 478, column: 3, scope: !2031)
!2052 = !DILocation(line: 479, column: 9, scope: !2031)
!2053 = !DILocation(line: 474, column: 15, scope: !2031)
!2054 = !DILocation(line: 480, column: 3, scope: !2031)
!2055 = !DILocation(line: 483, column: 1, scope: !2031)
!2056 = !DILocation(line: 482, column: 3, scope: !2031)
!2057 = distinct !DISubprogram(name: "lua_pushcclosure", scope: !3, file: !3, line: 486, type: !2058, isLocal: false, isDefinition: true, scopeLine: 486, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2060)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{null, !131, !127, !8}
!2060 = !{!2061, !2062, !2063, !2064, !2065, !2067, !2068}
!2061 = !DILocalVariable(name: "L", arg: 1, scope: !2057, file: !3, line: 486, type: !131)
!2062 = !DILocalVariable(name: "fn", arg: 2, scope: !2057, file: !3, line: 486, type: !127)
!2063 = !DILocalVariable(name: "n", arg: 3, scope: !2057, file: !3, line: 486, type: !8)
!2064 = !DILocalVariable(name: "cl", scope: !2057, file: !3, line: 487, type: !573)
!2065 = !DILocalVariable(name: "o2", scope: !2066, file: !3, line: 495, type: !362)
!2066 = distinct !DILexicalBlock(scope: !2057, file: !3, line: 495, column: 5)
!2067 = !DILocalVariable(name: "o1", scope: !2066, file: !3, line: 495, type: !74)
!2068 = !DILocalVariable(name: "i_o", scope: !2069, file: !3, line: 496, type: !74)
!2069 = distinct !DILexicalBlock(scope: !2057, file: !3, line: 496, column: 3)
!2070 = !DILocation(line: 486, column: 43, scope: !2057)
!2071 = !DILocation(line: 486, column: 60, scope: !2057)
!2072 = !DILocation(line: 486, column: 68, scope: !2057)
!2073 = !DILocation(line: 489, column: 3, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2075, file: !3, line: 489, column: 3)
!2075 = distinct !DILexicalBlock(scope: !2057, file: !3, line: 489, column: 3)
!2076 = !DILocation(line: 489, column: 3, scope: !2075)
!2077 = !DILocalVariable(name: "L", arg: 1, scope: !2078, file: !3, line: 79, type: !131)
!2078 = distinct !DISubprogram(name: "getcurrenv", scope: !3, file: !3, line: 79, type: !2079, isLocal: true, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2083)
!2079 = !DISubroutineType(types: !2080)
!2080 = !{!2081, !131}
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = !DIDerivedType(tag: DW_TAG_typedef, name: "Table", file: !11, line: 348, baseType: !65)
!2083 = !{!2077, !2084}
!2084 = !DILocalVariable(name: "func", scope: !2085, file: !3, line: 83, type: !573)
!2085 = distinct !DILexicalBlock(scope: !2086, file: !3, line: 82, column: 8)
!2086 = distinct !DILexicalBlock(scope: !2078, file: !3, line: 80, column: 7)
!2087 = !DILocation(line: 79, column: 38, scope: !2078, inlinedAt: !2088)
!2088 = distinct !DILocation(line: 491, column: 31, scope: !2057)
!2089 = !DILocation(line: 80, column: 10, scope: !2086, inlinedAt: !2088)
!2090 = !DILocation(line: 80, column: 19, scope: !2086, inlinedAt: !2088)
!2091 = !DILocation(line: 80, column: 13, scope: !2086, inlinedAt: !2088)
!2092 = !DILocation(line: 80, column: 7, scope: !2078, inlinedAt: !2088)
!2093 = !DILocation(line: 81, column: 12, scope: !2086, inlinedAt: !2088)
!2094 = !DILocation(line: 81, column: 5, scope: !2086, inlinedAt: !2088)
!2095 = !DILocation(line: 83, column: 21, scope: !2085, inlinedAt: !2088)
!2096 = !DILocation(line: 83, column: 14, scope: !2085, inlinedAt: !2088)
!2097 = !DILocation(line: 84, column: 20, scope: !2085, inlinedAt: !2088)
!2098 = !DILocation(line: 0, scope: !2057)
!2099 = !DILocation(line: 86, column: 1, scope: !2078, inlinedAt: !2088)
!2100 = !DILocation(line: 491, column: 8, scope: !2057)
!2101 = !DILocation(line: 487, column: 12, scope: !2057)
!2102 = !DILocation(line: 492, column: 9, scope: !2057)
!2103 = !DILocation(line: 492, column: 11, scope: !2057)
!2104 = !DILocation(line: 493, column: 6, scope: !2057)
!2105 = !DILocation(line: 493, column: 10, scope: !2057)
!2106 = !DILocation(line: 494, column: 3, scope: !2057)
!2107 = !DILocation(line: 494, column: 11, scope: !2057)
!2108 = !DILocation(line: 495, column: 5, scope: !2066)
!2109 = !DILocation(line: 0, scope: !2066)
!2110 = distinct !{!2110, !2106, !2111}
!2111 = !DILocation(line: 495, column: 5, scope: !2057)
!2112 = !DILocation(line: 496, column: 3, scope: !2069)
!2113 = !DILocation(line: 498, column: 3, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2057, file: !3, line: 498, column: 3)
!2115 = !DILocation(line: 500, column: 1, scope: !2057)
!2116 = distinct !DISubprogram(name: "lua_pushboolean", scope: !3, file: !3, line: 503, type: !525, isLocal: false, isDefinition: true, scopeLine: 503, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2117)
!2117 = !{!2118, !2119, !2120}
!2118 = !DILocalVariable(name: "L", arg: 1, scope: !2116, file: !3, line: 503, type: !131)
!2119 = !DILocalVariable(name: "b", arg: 2, scope: !2116, file: !3, line: 503, type: !8)
!2120 = !DILocalVariable(name: "i_o", scope: !2121, file: !3, line: 505, type: !74)
!2121 = distinct !DILexicalBlock(scope: !2116, file: !3, line: 505, column: 3)
!2122 = !DILocation(line: 503, column: 42, scope: !2116)
!2123 = !DILocation(line: 503, column: 49, scope: !2116)
!2124 = !DILocation(line: 505, column: 3, scope: !2121)
!2125 = !DILocation(line: 506, column: 3, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2116, file: !3, line: 506, column: 3)
!2127 = !DILocation(line: 508, column: 1, scope: !2116)
!2128 = distinct !DISubprogram(name: "lua_pushlightuserdata", scope: !3, file: !3, line: 511, type: !2129, isLocal: false, isDefinition: true, scopeLine: 511, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2131)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{null, !131, !35}
!2131 = !{!2132, !2133, !2134}
!2132 = !DILocalVariable(name: "L", arg: 1, scope: !2128, file: !3, line: 511, type: !131)
!2133 = !DILocalVariable(name: "p", arg: 2, scope: !2128, file: !3, line: 511, type: !35)
!2134 = !DILocalVariable(name: "i_o", scope: !2135, file: !3, line: 513, type: !74)
!2135 = distinct !DILexicalBlock(scope: !2128, file: !3, line: 513, column: 3)
!2136 = !DILocation(line: 511, column: 48, scope: !2128)
!2137 = !DILocation(line: 511, column: 57, scope: !2128)
!2138 = !DILocation(line: 513, column: 3, scope: !2135)
!2139 = !DILocation(line: 514, column: 3, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2128, file: !3, line: 514, column: 3)
!2141 = !DILocation(line: 516, column: 1, scope: !2128)
!2142 = distinct !DISubprogram(name: "lua_pushthread", scope: !3, file: !3, line: 519, type: !129, isLocal: false, isDefinition: true, scopeLine: 519, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2143)
!2143 = !{!2144, !2145}
!2144 = !DILocalVariable(name: "L", arg: 1, scope: !2142, file: !3, line: 519, type: !131)
!2145 = !DILocalVariable(name: "i_o", scope: !2146, file: !3, line: 521, type: !74)
!2146 = distinct !DILexicalBlock(scope: !2142, file: !3, line: 521, column: 3)
!2147 = !DILocation(line: 519, column: 40, scope: !2142)
!2148 = !DILocation(line: 521, column: 3, scope: !2146)
!2149 = !DILocation(line: 522, column: 3, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2142, file: !3, line: 522, column: 3)
!2151 = !DILocation(line: 524, column: 11, scope: !2142)
!2152 = !DILocation(line: 524, column: 17, scope: !2142)
!2153 = !{!489, !375, i64 176}
!2154 = !DILocation(line: 524, column: 28, scope: !2142)
!2155 = !DILocation(line: 524, column: 3, scope: !2142)
!2156 = distinct !DISubprogram(name: "lua_gettable", scope: !3, file: !3, line: 534, type: !525, isLocal: false, isDefinition: true, scopeLine: 534, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2157)
!2157 = !{!2158, !2159, !2160}
!2158 = !DILocalVariable(name: "L", arg: 1, scope: !2156, file: !3, line: 534, type: !131)
!2159 = !DILocalVariable(name: "idx", arg: 2, scope: !2156, file: !3, line: 534, type: !8)
!2160 = !DILocalVariable(name: "t", scope: !2156, file: !3, line: 535, type: !140)
!2161 = !DILocation(line: 534, column: 39, scope: !2156)
!2162 = !DILocation(line: 534, column: 46, scope: !2156)
!2163 = !DILocation(line: 49, column: 38, scope: !561, inlinedAt: !2164)
!2164 = distinct !DILocation(line: 537, column: 7, scope: !2156)
!2165 = !DILocation(line: 49, column: 45, scope: !561, inlinedAt: !2164)
!2166 = !DILocation(line: 50, column: 11, scope: !568, inlinedAt: !2164)
!2167 = !DILocation(line: 50, column: 7, scope: !561, inlinedAt: !2164)
!2168 = !DILocation(line: 51, column: 20, scope: !567, inlinedAt: !2164)
!2169 = !DILocation(line: 51, column: 32, scope: !567, inlinedAt: !2164)
!2170 = !DILocation(line: 51, column: 25, scope: !567, inlinedAt: !2164)
!2171 = !DILocation(line: 51, column: 13, scope: !567, inlinedAt: !2164)
!2172 = !DILocation(line: 53, column: 17, scope: !589, inlinedAt: !2164)
!2173 = !DILocation(line: 53, column: 11, scope: !589, inlinedAt: !2164)
!2174 = !DILocation(line: 53, column: 9, scope: !567, inlinedAt: !2164)
!2175 = !DILocation(line: 0, scope: !589, inlinedAt: !2164)
!2176 = !DILocation(line: 54, column: 10, scope: !589, inlinedAt: !2164)
!2177 = !DILocation(line: 56, column: 16, scope: !572, inlinedAt: !2164)
!2178 = !DILocation(line: 56, column: 12, scope: !568, inlinedAt: !2164)
!2179 = !DILocation(line: 58, column: 15, scope: !597, inlinedAt: !2164)
!2180 = !DILocation(line: 58, column: 19, scope: !597, inlinedAt: !2164)
!2181 = !DILocation(line: 58, column: 5, scope: !597, inlinedAt: !2164)
!2182 = !DILocation(line: 60, column: 8, scope: !572, inlinedAt: !2164)
!2183 = !DILocation(line: 61, column: 36, scope: !571, inlinedAt: !2164)
!2184 = !DILocation(line: 61, column: 29, scope: !571, inlinedAt: !2164)
!2185 = !DILocation(line: 63, column: 23, scope: !570, inlinedAt: !2164)
!2186 = !DILocation(line: 63, column: 16, scope: !570, inlinedAt: !2164)
!2187 = !DILocation(line: 64, column: 7, scope: !576, inlinedAt: !2164)
!2188 = !DILocation(line: 67, column: 35, scope: !571, inlinedAt: !2164)
!2189 = !DILocation(line: 67, column: 28, scope: !571, inlinedAt: !2164)
!2190 = !DILocation(line: 69, column: 23, scope: !578, inlinedAt: !2164)
!2191 = !DILocation(line: 69, column: 16, scope: !578, inlinedAt: !2164)
!2192 = !DILocation(line: 70, column: 30, scope: !578, inlinedAt: !2164)
!2193 = !DILocation(line: 71, column: 30, scope: !578, inlinedAt: !2164)
!2194 = !DILocation(line: 71, column: 22, scope: !578, inlinedAt: !2164)
!2195 = !DILocation(line: 71, column: 19, scope: !578, inlinedAt: !2164)
!2196 = !DILocation(line: 71, column: 14, scope: !578, inlinedAt: !2164)
!2197 = !DILocation(line: 72, column: 39, scope: !578, inlinedAt: !2164)
!2198 = !DILocation(line: 72, column: 20, scope: !578, inlinedAt: !2164)
!2199 = !DILocation(line: 0, scope: !571, inlinedAt: !2164)
!2200 = !DILocation(line: 76, column: 1, scope: !561, inlinedAt: !2164)
!2201 = !DILocation(line: 535, column: 9, scope: !2156)
!2202 = !DILocation(line: 539, column: 26, scope: !2156)
!2203 = !DILocation(line: 539, column: 30, scope: !2156)
!2204 = !DILocation(line: 539, column: 3, scope: !2156)
!2205 = !DILocation(line: 541, column: 1, scope: !2156)
!2206 = distinct !DISubprogram(name: "lua_getfield", scope: !3, file: !3, line: 544, type: !2207, isLocal: false, isDefinition: true, scopeLine: 544, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2209)
!2207 = !DISubroutineType(types: !2208)
!2208 = !{null, !131, !8, !257}
!2209 = !{!2210, !2211, !2212, !2213, !2214, !2215}
!2210 = !DILocalVariable(name: "L", arg: 1, scope: !2206, file: !3, line: 544, type: !131)
!2211 = !DILocalVariable(name: "idx", arg: 2, scope: !2206, file: !3, line: 544, type: !8)
!2212 = !DILocalVariable(name: "k", arg: 3, scope: !2206, file: !3, line: 544, type: !257)
!2213 = !DILocalVariable(name: "t", scope: !2206, file: !3, line: 545, type: !140)
!2214 = !DILocalVariable(name: "key", scope: !2206, file: !3, line: 546, type: !75)
!2215 = !DILocalVariable(name: "i_o", scope: !2216, file: !3, line: 550, type: !74)
!2216 = distinct !DILexicalBlock(scope: !2206, file: !3, line: 550, column: 3)
!2217 = !DILocation(line: 544, column: 39, scope: !2206)
!2218 = !DILocation(line: 544, column: 46, scope: !2206)
!2219 = !DILocation(line: 544, column: 63, scope: !2206)
!2220 = !DILocation(line: 546, column: 3, scope: !2206)
!2221 = !DILocation(line: 49, column: 38, scope: !561, inlinedAt: !2222)
!2222 = distinct !DILocation(line: 548, column: 7, scope: !2206)
!2223 = !DILocation(line: 49, column: 45, scope: !561, inlinedAt: !2222)
!2224 = !DILocation(line: 50, column: 11, scope: !568, inlinedAt: !2222)
!2225 = !DILocation(line: 50, column: 7, scope: !561, inlinedAt: !2222)
!2226 = !DILocation(line: 51, column: 20, scope: !567, inlinedAt: !2222)
!2227 = !DILocation(line: 51, column: 32, scope: !567, inlinedAt: !2222)
!2228 = !DILocation(line: 51, column: 25, scope: !567, inlinedAt: !2222)
!2229 = !DILocation(line: 51, column: 13, scope: !567, inlinedAt: !2222)
!2230 = !DILocation(line: 53, column: 17, scope: !589, inlinedAt: !2222)
!2231 = !DILocation(line: 53, column: 11, scope: !589, inlinedAt: !2222)
!2232 = !DILocation(line: 53, column: 9, scope: !567, inlinedAt: !2222)
!2233 = !DILocation(line: 0, scope: !589, inlinedAt: !2222)
!2234 = !DILocation(line: 54, column: 10, scope: !589, inlinedAt: !2222)
!2235 = !DILocation(line: 56, column: 16, scope: !572, inlinedAt: !2222)
!2236 = !DILocation(line: 56, column: 12, scope: !568, inlinedAt: !2222)
!2237 = !DILocation(line: 58, column: 15, scope: !597, inlinedAt: !2222)
!2238 = !DILocation(line: 58, column: 19, scope: !597, inlinedAt: !2222)
!2239 = !DILocation(line: 58, column: 5, scope: !597, inlinedAt: !2222)
!2240 = !DILocation(line: 60, column: 8, scope: !572, inlinedAt: !2222)
!2241 = !DILocation(line: 61, column: 36, scope: !571, inlinedAt: !2222)
!2242 = !DILocation(line: 61, column: 29, scope: !571, inlinedAt: !2222)
!2243 = !DILocation(line: 63, column: 23, scope: !570, inlinedAt: !2222)
!2244 = !DILocation(line: 63, column: 16, scope: !570, inlinedAt: !2222)
!2245 = !DILocation(line: 64, column: 7, scope: !576, inlinedAt: !2222)
!2246 = !DILocation(line: 67, column: 35, scope: !571, inlinedAt: !2222)
!2247 = !DILocation(line: 67, column: 28, scope: !571, inlinedAt: !2222)
!2248 = !DILocation(line: 69, column: 23, scope: !578, inlinedAt: !2222)
!2249 = !DILocation(line: 69, column: 16, scope: !578, inlinedAt: !2222)
!2250 = !DILocation(line: 70, column: 30, scope: !578, inlinedAt: !2222)
!2251 = !DILocation(line: 71, column: 30, scope: !578, inlinedAt: !2222)
!2252 = !DILocation(line: 71, column: 22, scope: !578, inlinedAt: !2222)
!2253 = !DILocation(line: 71, column: 19, scope: !578, inlinedAt: !2222)
!2254 = !DILocation(line: 71, column: 14, scope: !578, inlinedAt: !2222)
!2255 = !DILocation(line: 72, column: 39, scope: !578, inlinedAt: !2222)
!2256 = !DILocation(line: 72, column: 20, scope: !578, inlinedAt: !2222)
!2257 = !DILocation(line: 0, scope: !571, inlinedAt: !2222)
!2258 = !DILocation(line: 76, column: 1, scope: !561, inlinedAt: !2222)
!2259 = !DILocation(line: 545, column: 9, scope: !2206)
!2260 = !DILocation(line: 550, column: 3, scope: !2216)
!2261 = !DILocation(line: 551, column: 32, scope: !2206)
!2262 = !DILocation(line: 546, column: 10, scope: !2206)
!2263 = !DILocation(line: 551, column: 3, scope: !2206)
!2264 = !DILocation(line: 552, column: 3, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2206, file: !3, line: 552, column: 3)
!2266 = !DILocation(line: 554, column: 1, scope: !2206)
!2267 = distinct !DISubprogram(name: "lua_rawget", scope: !3, file: !3, line: 557, type: !525, isLocal: false, isDefinition: true, scopeLine: 557, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2268)
!2268 = !{!2269, !2270, !2271, !2272, !2274}
!2269 = !DILocalVariable(name: "L", arg: 1, scope: !2267, file: !3, line: 557, type: !131)
!2270 = !DILocalVariable(name: "idx", arg: 2, scope: !2267, file: !3, line: 557, type: !8)
!2271 = !DILocalVariable(name: "t", scope: !2267, file: !3, line: 558, type: !140)
!2272 = !DILocalVariable(name: "o2", scope: !2273, file: !3, line: 562, type: !362)
!2273 = distinct !DILexicalBlock(scope: !2267, file: !3, line: 562, column: 3)
!2274 = !DILocalVariable(name: "o1", scope: !2273, file: !3, line: 562, type: !74)
!2275 = !DILocation(line: 557, column: 37, scope: !2267)
!2276 = !DILocation(line: 557, column: 44, scope: !2267)
!2277 = !DILocation(line: 49, column: 38, scope: !561, inlinedAt: !2278)
!2278 = distinct !DILocation(line: 560, column: 7, scope: !2267)
!2279 = !DILocation(line: 49, column: 45, scope: !561, inlinedAt: !2278)
!2280 = !DILocation(line: 50, column: 11, scope: !568, inlinedAt: !2278)
!2281 = !DILocation(line: 50, column: 7, scope: !561, inlinedAt: !2278)
!2282 = !DILocation(line: 51, column: 20, scope: !567, inlinedAt: !2278)
!2283 = !DILocation(line: 51, column: 32, scope: !567, inlinedAt: !2278)
!2284 = !DILocation(line: 51, column: 25, scope: !567, inlinedAt: !2278)
!2285 = !DILocation(line: 51, column: 13, scope: !567, inlinedAt: !2278)
!2286 = !DILocation(line: 53, column: 17, scope: !589, inlinedAt: !2278)
!2287 = !DILocation(line: 53, column: 11, scope: !589, inlinedAt: !2278)
!2288 = !DILocation(line: 53, column: 9, scope: !567, inlinedAt: !2278)
!2289 = !DILocation(line: 0, scope: !589, inlinedAt: !2278)
!2290 = !DILocation(line: 54, column: 10, scope: !589, inlinedAt: !2278)
!2291 = !DILocation(line: 56, column: 16, scope: !572, inlinedAt: !2278)
!2292 = !DILocation(line: 56, column: 12, scope: !568, inlinedAt: !2278)
!2293 = !DILocation(line: 58, column: 15, scope: !597, inlinedAt: !2278)
!2294 = !DILocation(line: 58, column: 19, scope: !597, inlinedAt: !2278)
!2295 = !DILocation(line: 58, column: 5, scope: !597, inlinedAt: !2278)
!2296 = !DILocation(line: 60, column: 8, scope: !572, inlinedAt: !2278)
!2297 = !DILocation(line: 61, column: 36, scope: !571, inlinedAt: !2278)
!2298 = !DILocation(line: 61, column: 29, scope: !571, inlinedAt: !2278)
!2299 = !DILocation(line: 63, column: 23, scope: !570, inlinedAt: !2278)
!2300 = !DILocation(line: 63, column: 16, scope: !570, inlinedAt: !2278)
!2301 = !DILocation(line: 64, column: 7, scope: !576, inlinedAt: !2278)
!2302 = !DILocation(line: 67, column: 35, scope: !571, inlinedAt: !2278)
!2303 = !DILocation(line: 67, column: 28, scope: !571, inlinedAt: !2278)
!2304 = !DILocation(line: 69, column: 23, scope: !578, inlinedAt: !2278)
!2305 = !DILocation(line: 69, column: 16, scope: !578, inlinedAt: !2278)
!2306 = !DILocation(line: 70, column: 30, scope: !578, inlinedAt: !2278)
!2307 = !DILocation(line: 71, column: 30, scope: !578, inlinedAt: !2278)
!2308 = !DILocation(line: 71, column: 22, scope: !578, inlinedAt: !2278)
!2309 = !DILocation(line: 71, column: 19, scope: !578, inlinedAt: !2278)
!2310 = !DILocation(line: 71, column: 14, scope: !578, inlinedAt: !2278)
!2311 = !DILocation(line: 72, column: 39, scope: !578, inlinedAt: !2278)
!2312 = !DILocation(line: 72, column: 20, scope: !578, inlinedAt: !2278)
!2313 = !DILocation(line: 0, scope: !571, inlinedAt: !2278)
!2314 = !DILocation(line: 76, column: 1, scope: !561, inlinedAt: !2278)
!2315 = !DILocation(line: 558, column: 9, scope: !2267)
!2316 = !DILocation(line: 562, column: 3, scope: !2273)
!2317 = !DILocation(line: 564, column: 1, scope: !2267)
!2318 = distinct !DISubprogram(name: "lua_rawgeti", scope: !3, file: !3, line: 567, type: !2319, isLocal: false, isDefinition: true, scopeLine: 567, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2321)
!2319 = !DISubroutineType(types: !2320)
!2320 = !{null, !131, !8, !8}
!2321 = !{!2322, !2323, !2324, !2325, !2326, !2328}
!2322 = !DILocalVariable(name: "L", arg: 1, scope: !2318, file: !3, line: 567, type: !131)
!2323 = !DILocalVariable(name: "idx", arg: 2, scope: !2318, file: !3, line: 567, type: !8)
!2324 = !DILocalVariable(name: "n", arg: 3, scope: !2318, file: !3, line: 567, type: !8)
!2325 = !DILocalVariable(name: "o", scope: !2318, file: !3, line: 568, type: !140)
!2326 = !DILocalVariable(name: "o2", scope: !2327, file: !3, line: 572, type: !362)
!2327 = distinct !DILexicalBlock(scope: !2318, file: !3, line: 572, column: 3)
!2328 = !DILocalVariable(name: "o1", scope: !2327, file: !3, line: 572, type: !74)
!2329 = !DILocation(line: 567, column: 38, scope: !2318)
!2330 = !DILocation(line: 567, column: 45, scope: !2318)
!2331 = !DILocation(line: 567, column: 54, scope: !2318)
!2332 = !DILocation(line: 49, column: 38, scope: !561, inlinedAt: !2333)
!2333 = distinct !DILocation(line: 570, column: 7, scope: !2318)
!2334 = !DILocation(line: 49, column: 45, scope: !561, inlinedAt: !2333)
!2335 = !DILocation(line: 50, column: 11, scope: !568, inlinedAt: !2333)
!2336 = !DILocation(line: 50, column: 7, scope: !561, inlinedAt: !2333)
!2337 = !DILocation(line: 51, column: 20, scope: !567, inlinedAt: !2333)
!2338 = !DILocation(line: 51, column: 32, scope: !567, inlinedAt: !2333)
!2339 = !DILocation(line: 51, column: 25, scope: !567, inlinedAt: !2333)
!2340 = !DILocation(line: 51, column: 13, scope: !567, inlinedAt: !2333)
!2341 = !DILocation(line: 53, column: 17, scope: !589, inlinedAt: !2333)
!2342 = !DILocation(line: 53, column: 11, scope: !589, inlinedAt: !2333)
!2343 = !DILocation(line: 53, column: 9, scope: !567, inlinedAt: !2333)
!2344 = !DILocation(line: 0, scope: !589, inlinedAt: !2333)
!2345 = !DILocation(line: 54, column: 10, scope: !589, inlinedAt: !2333)
!2346 = !DILocation(line: 56, column: 16, scope: !572, inlinedAt: !2333)
!2347 = !DILocation(line: 56, column: 12, scope: !568, inlinedAt: !2333)
!2348 = !DILocation(line: 58, column: 15, scope: !597, inlinedAt: !2333)
!2349 = !DILocation(line: 58, column: 19, scope: !597, inlinedAt: !2333)
!2350 = !DILocation(line: 58, column: 5, scope: !597, inlinedAt: !2333)
!2351 = !DILocation(line: 60, column: 8, scope: !572, inlinedAt: !2333)
!2352 = !DILocation(line: 61, column: 36, scope: !571, inlinedAt: !2333)
!2353 = !DILocation(line: 61, column: 29, scope: !571, inlinedAt: !2333)
!2354 = !DILocation(line: 63, column: 23, scope: !570, inlinedAt: !2333)
!2355 = !DILocation(line: 63, column: 16, scope: !570, inlinedAt: !2333)
!2356 = !DILocation(line: 64, column: 7, scope: !576, inlinedAt: !2333)
!2357 = !DILocation(line: 67, column: 35, scope: !571, inlinedAt: !2333)
!2358 = !DILocation(line: 67, column: 28, scope: !571, inlinedAt: !2333)
!2359 = !DILocation(line: 69, column: 23, scope: !578, inlinedAt: !2333)
!2360 = !DILocation(line: 69, column: 16, scope: !578, inlinedAt: !2333)
!2361 = !DILocation(line: 70, column: 30, scope: !578, inlinedAt: !2333)
!2362 = !DILocation(line: 71, column: 30, scope: !578, inlinedAt: !2333)
!2363 = !DILocation(line: 71, column: 22, scope: !578, inlinedAt: !2333)
!2364 = !DILocation(line: 71, column: 19, scope: !578, inlinedAt: !2333)
!2365 = !DILocation(line: 71, column: 14, scope: !578, inlinedAt: !2333)
!2366 = !DILocation(line: 72, column: 39, scope: !578, inlinedAt: !2333)
!2367 = !DILocation(line: 72, column: 20, scope: !578, inlinedAt: !2333)
!2368 = !DILocation(line: 0, scope: !571, inlinedAt: !2333)
!2369 = !DILocation(line: 76, column: 1, scope: !561, inlinedAt: !2333)
!2370 = !DILocation(line: 568, column: 9, scope: !2318)
!2371 = !DILocation(line: 572, column: 3, scope: !2327)
!2372 = !DILocation(line: 573, column: 3, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2318, file: !3, line: 573, column: 3)
!2374 = !DILocation(line: 575, column: 1, scope: !2318)
!2375 = distinct !DISubprogram(name: "lua_createtable", scope: !3, file: !3, line: 578, type: !2319, isLocal: false, isDefinition: true, scopeLine: 578, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2376)
!2376 = !{!2377, !2378, !2379, !2380}
!2377 = !DILocalVariable(name: "L", arg: 1, scope: !2375, file: !3, line: 578, type: !131)
!2378 = !DILocalVariable(name: "narray", arg: 2, scope: !2375, file: !3, line: 578, type: !8)
!2379 = !DILocalVariable(name: "nrec", arg: 3, scope: !2375, file: !3, line: 578, type: !8)
!2380 = !DILocalVariable(name: "i_o", scope: !2381, file: !3, line: 581, type: !74)
!2381 = distinct !DILexicalBlock(scope: !2375, file: !3, line: 581, column: 3)
!2382 = !DILocation(line: 578, column: 42, scope: !2375)
!2383 = !DILocation(line: 578, column: 49, scope: !2375)
!2384 = !DILocation(line: 578, column: 61, scope: !2375)
!2385 = !DILocation(line: 580, column: 3, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2387, file: !3, line: 580, column: 3)
!2387 = distinct !DILexicalBlock(scope: !2375, file: !3, line: 580, column: 3)
!2388 = !DILocation(line: 580, column: 3, scope: !2387)
!2389 = !DILocation(line: 581, column: 3, scope: !2381)
!2390 = !DILocation(line: 582, column: 3, scope: !2391)
!2391 = distinct !DILexicalBlock(scope: !2375, file: !3, line: 582, column: 3)
!2392 = !DILocation(line: 584, column: 1, scope: !2375)
!2393 = distinct !DISubprogram(name: "lua_getmetatable", scope: !3, file: !3, line: 587, type: !387, isLocal: false, isDefinition: true, scopeLine: 587, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2394)
!2394 = !{!2395, !2396, !2397, !2398, !2399, !2400}
!2395 = !DILocalVariable(name: "L", arg: 1, scope: !2393, file: !3, line: 587, type: !131)
!2396 = !DILocalVariable(name: "objindex", arg: 2, scope: !2393, file: !3, line: 587, type: !8)
!2397 = !DILocalVariable(name: "obj", scope: !2393, file: !3, line: 588, type: !362)
!2398 = !DILocalVariable(name: "mt", scope: !2393, file: !3, line: 589, type: !2081)
!2399 = !DILocalVariable(name: "res", scope: !2393, file: !3, line: 590, type: !8)
!2400 = !DILocalVariable(name: "i_o", scope: !2401, file: !3, line: 607, type: !74)
!2401 = distinct !DILexicalBlock(scope: !2402, file: !3, line: 607, column: 5)
!2402 = distinct !DILexicalBlock(scope: !2403, file: !3, line: 606, column: 8)
!2403 = distinct !DILexicalBlock(scope: !2393, file: !3, line: 604, column: 7)
!2404 = !DILocation(line: 587, column: 42, scope: !2393)
!2405 = !DILocation(line: 587, column: 49, scope: !2393)
!2406 = !DILocation(line: 589, column: 10, scope: !2393)
!2407 = !DILocation(line: 49, column: 38, scope: !561, inlinedAt: !2408)
!2408 = distinct !DILocation(line: 592, column: 9, scope: !2393)
!2409 = !DILocation(line: 49, column: 45, scope: !561, inlinedAt: !2408)
!2410 = !DILocation(line: 50, column: 11, scope: !568, inlinedAt: !2408)
!2411 = !DILocation(line: 50, column: 7, scope: !561, inlinedAt: !2408)
!2412 = !DILocation(line: 51, column: 20, scope: !567, inlinedAt: !2408)
!2413 = !DILocation(line: 51, column: 32, scope: !567, inlinedAt: !2408)
!2414 = !DILocation(line: 51, column: 25, scope: !567, inlinedAt: !2408)
!2415 = !DILocation(line: 51, column: 13, scope: !567, inlinedAt: !2408)
!2416 = !DILocation(line: 53, column: 17, scope: !589, inlinedAt: !2408)
!2417 = !DILocation(line: 53, column: 11, scope: !589, inlinedAt: !2408)
!2418 = !DILocation(line: 53, column: 9, scope: !567, inlinedAt: !2408)
!2419 = !DILocation(line: 0, scope: !589, inlinedAt: !2408)
!2420 = !DILocation(line: 54, column: 10, scope: !589, inlinedAt: !2408)
!2421 = !DILocation(line: 56, column: 16, scope: !572, inlinedAt: !2408)
!2422 = !DILocation(line: 56, column: 12, scope: !568, inlinedAt: !2408)
!2423 = !DILocation(line: 58, column: 15, scope: !597, inlinedAt: !2408)
!2424 = !DILocation(line: 58, column: 19, scope: !597, inlinedAt: !2408)
!2425 = !DILocation(line: 58, column: 5, scope: !597, inlinedAt: !2408)
!2426 = !DILocation(line: 60, column: 8, scope: !572, inlinedAt: !2408)
!2427 = !DILocation(line: 61, column: 36, scope: !571, inlinedAt: !2408)
!2428 = !DILocation(line: 61, column: 29, scope: !571, inlinedAt: !2408)
!2429 = !DILocation(line: 63, column: 23, scope: !570, inlinedAt: !2408)
!2430 = !DILocation(line: 63, column: 16, scope: !570, inlinedAt: !2408)
!2431 = !DILocation(line: 64, column: 7, scope: !576, inlinedAt: !2408)
!2432 = !DILocation(line: 67, column: 35, scope: !571, inlinedAt: !2408)
!2433 = !DILocation(line: 67, column: 28, scope: !571, inlinedAt: !2408)
!2434 = !DILocation(line: 69, column: 23, scope: !578, inlinedAt: !2408)
!2435 = !DILocation(line: 69, column: 16, scope: !578, inlinedAt: !2408)
!2436 = !DILocation(line: 70, column: 30, scope: !578, inlinedAt: !2408)
!2437 = !DILocation(line: 71, column: 30, scope: !578, inlinedAt: !2408)
!2438 = !DILocation(line: 71, column: 22, scope: !578, inlinedAt: !2408)
!2439 = !DILocation(line: 71, column: 19, scope: !578, inlinedAt: !2408)
!2440 = !DILocation(line: 71, column: 14, scope: !578, inlinedAt: !2408)
!2441 = !DILocation(line: 72, column: 39, scope: !578, inlinedAt: !2408)
!2442 = !DILocation(line: 72, column: 20, scope: !578, inlinedAt: !2408)
!2443 = !DILocation(line: 0, scope: !571, inlinedAt: !2408)
!2444 = !DILocation(line: 76, column: 1, scope: !561, inlinedAt: !2408)
!2445 = !DILocation(line: 588, column: 17, scope: !2393)
!2446 = !DILocation(line: 593, column: 11, scope: !2393)
!2447 = !DILocation(line: 593, column: 3, scope: !2393)
!2448 = !DILocation(line: 595, column: 12, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2393, file: !3, line: 593, column: 23)
!2450 = !DILocation(line: 595, column: 25, scope: !2449)
!2451 = !DILocation(line: 596, column: 7, scope: !2449)
!2452 = !DILocation(line: 598, column: 12, scope: !2449)
!2453 = !DILocation(line: 598, column: 25, scope: !2449)
!2454 = !DILocation(line: 599, column: 7, scope: !2449)
!2455 = !DILocation(line: 601, column: 12, scope: !2449)
!2456 = !DILocation(line: 602, column: 7, scope: !2449)
!2457 = !DILocation(line: 0, scope: !2449)
!2458 = !DILocation(line: 604, column: 10, scope: !2403)
!2459 = !DILocation(line: 604, column: 7, scope: !2393)
!2460 = !DILocation(line: 607, column: 5, scope: !2401)
!2461 = !DILocation(line: 608, column: 5, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2402, file: !3, line: 608, column: 5)
!2463 = !DILocation(line: 590, column: 7, scope: !2393)
!2464 = !DILocation(line: 0, scope: !2402)
!2465 = !DILocation(line: 612, column: 3, scope: !2393)
!2466 = distinct !DISubprogram(name: "lua_getfenv", scope: !3, file: !3, line: 616, type: !525, isLocal: false, isDefinition: true, scopeLine: 616, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2467)
!2467 = !{!2468, !2469, !2470, !2471, !2474, !2476, !2478}
!2468 = !DILocalVariable(name: "L", arg: 1, scope: !2466, file: !3, line: 616, type: !131)
!2469 = !DILocalVariable(name: "idx", arg: 2, scope: !2466, file: !3, line: 616, type: !8)
!2470 = !DILocalVariable(name: "o", scope: !2466, file: !3, line: 617, type: !140)
!2471 = !DILocalVariable(name: "i_o", scope: !2472, file: !3, line: 623, type: !74)
!2472 = distinct !DILexicalBlock(scope: !2473, file: !3, line: 623, column: 7)
!2473 = distinct !DILexicalBlock(scope: !2466, file: !3, line: 621, column: 21)
!2474 = !DILocalVariable(name: "i_o", scope: !2475, file: !3, line: 626, type: !74)
!2475 = distinct !DILexicalBlock(scope: !2473, file: !3, line: 626, column: 7)
!2476 = !DILocalVariable(name: "o2", scope: !2477, file: !3, line: 629, type: !362)
!2477 = distinct !DILexicalBlock(scope: !2473, file: !3, line: 629, column: 7)
!2478 = !DILocalVariable(name: "o1", scope: !2477, file: !3, line: 629, type: !74)
!2479 = !DILocation(line: 616, column: 38, scope: !2466)
!2480 = !DILocation(line: 616, column: 45, scope: !2466)
!2481 = !DILocation(line: 49, column: 38, scope: !561, inlinedAt: !2482)
!2482 = distinct !DILocation(line: 619, column: 7, scope: !2466)
!2483 = !DILocation(line: 49, column: 45, scope: !561, inlinedAt: !2482)
!2484 = !DILocation(line: 50, column: 11, scope: !568, inlinedAt: !2482)
!2485 = !DILocation(line: 50, column: 7, scope: !561, inlinedAt: !2482)
!2486 = !DILocation(line: 51, column: 20, scope: !567, inlinedAt: !2482)
!2487 = !DILocation(line: 51, column: 32, scope: !567, inlinedAt: !2482)
!2488 = !DILocation(line: 51, column: 25, scope: !567, inlinedAt: !2482)
!2489 = !DILocation(line: 51, column: 13, scope: !567, inlinedAt: !2482)
!2490 = !DILocation(line: 53, column: 17, scope: !589, inlinedAt: !2482)
!2491 = !DILocation(line: 53, column: 11, scope: !589, inlinedAt: !2482)
!2492 = !DILocation(line: 53, column: 9, scope: !567, inlinedAt: !2482)
!2493 = !DILocation(line: 0, scope: !589, inlinedAt: !2482)
!2494 = !DILocation(line: 54, column: 10, scope: !589, inlinedAt: !2482)
!2495 = !DILocation(line: 56, column: 16, scope: !572, inlinedAt: !2482)
!2496 = !DILocation(line: 56, column: 12, scope: !568, inlinedAt: !2482)
!2497 = !DILocation(line: 58, column: 15, scope: !597, inlinedAt: !2482)
!2498 = !DILocation(line: 58, column: 19, scope: !597, inlinedAt: !2482)
!2499 = !DILocation(line: 58, column: 5, scope: !597, inlinedAt: !2482)
!2500 = !DILocation(line: 60, column: 8, scope: !572, inlinedAt: !2482)
!2501 = !DILocation(line: 61, column: 36, scope: !571, inlinedAt: !2482)
!2502 = !DILocation(line: 61, column: 29, scope: !571, inlinedAt: !2482)
!2503 = !DILocation(line: 63, column: 23, scope: !570, inlinedAt: !2482)
!2504 = !DILocation(line: 63, column: 16, scope: !570, inlinedAt: !2482)
!2505 = !DILocation(line: 64, column: 7, scope: !576, inlinedAt: !2482)
!2506 = !DILocation(line: 67, column: 35, scope: !571, inlinedAt: !2482)
!2507 = !DILocation(line: 67, column: 28, scope: !571, inlinedAt: !2482)
!2508 = !DILocation(line: 69, column: 23, scope: !578, inlinedAt: !2482)
!2509 = !DILocation(line: 69, column: 16, scope: !578, inlinedAt: !2482)
!2510 = !DILocation(line: 70, column: 30, scope: !578, inlinedAt: !2482)
!2511 = !DILocation(line: 71, column: 30, scope: !578, inlinedAt: !2482)
!2512 = !DILocation(line: 71, column: 22, scope: !578, inlinedAt: !2482)
!2513 = !DILocation(line: 71, column: 19, scope: !578, inlinedAt: !2482)
!2514 = !DILocation(line: 71, column: 14, scope: !578, inlinedAt: !2482)
!2515 = !DILocation(line: 72, column: 39, scope: !578, inlinedAt: !2482)
!2516 = !DILocation(line: 72, column: 20, scope: !578, inlinedAt: !2482)
!2517 = !DILocation(line: 0, scope: !571, inlinedAt: !2482)
!2518 = !DILocation(line: 76, column: 1, scope: !561, inlinedAt: !2482)
!2519 = !DILocation(line: 617, column: 9, scope: !2466)
!2520 = !DILocation(line: 621, column: 11, scope: !2466)
!2521 = !DILocation(line: 621, column: 3, scope: !2466)
!2522 = !DILocation(line: 623, column: 7, scope: !2472)
!2523 = !DILocation(line: 624, column: 7, scope: !2473)
!2524 = !DILocation(line: 626, column: 7, scope: !2475)
!2525 = !DILocation(line: 627, column: 7, scope: !2473)
!2526 = !DILocation(line: 629, column: 7, scope: !2477)
!2527 = !DILocation(line: 630, column: 7, scope: !2473)
!2528 = !DILocation(line: 632, column: 7, scope: !2473)
!2529 = !DILocation(line: 633, column: 7, scope: !2473)
!2530 = !DILocation(line: 635, column: 3, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2466, file: !3, line: 635, column: 3)
!2532 = !DILocation(line: 0, scope: !2472)
!2533 = !DILocation(line: 0, scope: !2473)
!2534 = !DILocation(line: 637, column: 1, scope: !2466)
!2535 = distinct !DISubprogram(name: "lua_settable", scope: !3, file: !3, line: 645, type: !525, isLocal: false, isDefinition: true, scopeLine: 645, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2536)
!2536 = !{!2537, !2538, !2539}
!2537 = !DILocalVariable(name: "L", arg: 1, scope: !2535, file: !3, line: 645, type: !131)
!2538 = !DILocalVariable(name: "idx", arg: 2, scope: !2535, file: !3, line: 645, type: !8)
!2539 = !DILocalVariable(name: "t", scope: !2535, file: !3, line: 646, type: !140)
!2540 = !DILocation(line: 645, column: 39, scope: !2535)
!2541 = !DILocation(line: 645, column: 46, scope: !2535)
!2542 = !DILocation(line: 49, column: 38, scope: !561, inlinedAt: !2543)
!2543 = distinct !DILocation(line: 649, column: 7, scope: !2535)
!2544 = !DILocation(line: 49, column: 45, scope: !561, inlinedAt: !2543)
!2545 = !DILocation(line: 50, column: 11, scope: !568, inlinedAt: !2543)
!2546 = !DILocation(line: 50, column: 7, scope: !561, inlinedAt: !2543)
!2547 = !DILocation(line: 51, column: 20, scope: !567, inlinedAt: !2543)
!2548 = !DILocation(line: 51, column: 32, scope: !567, inlinedAt: !2543)
!2549 = !DILocation(line: 51, column: 25, scope: !567, inlinedAt: !2543)
!2550 = !DILocation(line: 51, column: 13, scope: !567, inlinedAt: !2543)
!2551 = !DILocation(line: 53, column: 17, scope: !589, inlinedAt: !2543)
!2552 = !DILocation(line: 53, column: 11, scope: !589, inlinedAt: !2543)
!2553 = !DILocation(line: 53, column: 9, scope: !567, inlinedAt: !2543)
!2554 = !DILocation(line: 0, scope: !589, inlinedAt: !2543)
!2555 = !DILocation(line: 54, column: 10, scope: !589, inlinedAt: !2543)
!2556 = !DILocation(line: 56, column: 16, scope: !572, inlinedAt: !2543)
!2557 = !DILocation(line: 56, column: 12, scope: !568, inlinedAt: !2543)
!2558 = !DILocation(line: 58, column: 15, scope: !597, inlinedAt: !2543)
!2559 = !DILocation(line: 58, column: 19, scope: !597, inlinedAt: !2543)
!2560 = !DILocation(line: 58, column: 5, scope: !597, inlinedAt: !2543)
!2561 = !DILocation(line: 60, column: 8, scope: !572, inlinedAt: !2543)
!2562 = !DILocation(line: 61, column: 36, scope: !571, inlinedAt: !2543)
!2563 = !DILocation(line: 61, column: 29, scope: !571, inlinedAt: !2543)
!2564 = !DILocation(line: 63, column: 23, scope: !570, inlinedAt: !2543)
!2565 = !DILocation(line: 63, column: 16, scope: !570, inlinedAt: !2543)
!2566 = !DILocation(line: 64, column: 7, scope: !576, inlinedAt: !2543)
!2567 = !DILocation(line: 67, column: 35, scope: !571, inlinedAt: !2543)
!2568 = !DILocation(line: 67, column: 28, scope: !571, inlinedAt: !2543)
!2569 = !DILocation(line: 69, column: 23, scope: !578, inlinedAt: !2543)
!2570 = !DILocation(line: 69, column: 16, scope: !578, inlinedAt: !2543)
!2571 = !DILocation(line: 70, column: 30, scope: !578, inlinedAt: !2543)
!2572 = !DILocation(line: 71, column: 30, scope: !578, inlinedAt: !2543)
!2573 = !DILocation(line: 71, column: 22, scope: !578, inlinedAt: !2543)
!2574 = !DILocation(line: 71, column: 19, scope: !578, inlinedAt: !2543)
!2575 = !DILocation(line: 71, column: 14, scope: !578, inlinedAt: !2543)
!2576 = !DILocation(line: 72, column: 39, scope: !578, inlinedAt: !2543)
!2577 = !DILocation(line: 72, column: 20, scope: !578, inlinedAt: !2543)
!2578 = !DILocation(line: 0, scope: !571, inlinedAt: !2543)
!2579 = !DILocation(line: 76, column: 1, scope: !561, inlinedAt: !2543)
!2580 = !DILocation(line: 646, column: 9, scope: !2535)
!2581 = !DILocation(line: 651, column: 26, scope: !2535)
!2582 = !DILocation(line: 651, column: 30, scope: !2535)
!2583 = !DILocation(line: 651, column: 42, scope: !2535)
!2584 = !DILocation(line: 651, column: 3, scope: !2535)
!2585 = !DILocation(line: 652, column: 10, scope: !2535)
!2586 = !DILocation(line: 654, column: 1, scope: !2535)
!2587 = distinct !DISubprogram(name: "lua_setfield", scope: !3, file: !3, line: 657, type: !2207, isLocal: false, isDefinition: true, scopeLine: 657, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2588)
!2588 = !{!2589, !2590, !2591, !2592, !2593, !2594}
!2589 = !DILocalVariable(name: "L", arg: 1, scope: !2587, file: !3, line: 657, type: !131)
!2590 = !DILocalVariable(name: "idx", arg: 2, scope: !2587, file: !3, line: 657, type: !8)
!2591 = !DILocalVariable(name: "k", arg: 3, scope: !2587, file: !3, line: 657, type: !257)
!2592 = !DILocalVariable(name: "t", scope: !2587, file: !3, line: 658, type: !140)
!2593 = !DILocalVariable(name: "key", scope: !2587, file: !3, line: 659, type: !75)
!2594 = !DILocalVariable(name: "i_o", scope: !2595, file: !3, line: 664, type: !74)
!2595 = distinct !DILexicalBlock(scope: !2587, file: !3, line: 664, column: 3)
!2596 = !DILocation(line: 657, column: 39, scope: !2587)
!2597 = !DILocation(line: 657, column: 46, scope: !2587)
!2598 = !DILocation(line: 657, column: 63, scope: !2587)
!2599 = !DILocation(line: 659, column: 3, scope: !2587)
!2600 = !DILocation(line: 49, column: 38, scope: !561, inlinedAt: !2601)
!2601 = distinct !DILocation(line: 662, column: 7, scope: !2587)
!2602 = !DILocation(line: 49, column: 45, scope: !561, inlinedAt: !2601)
!2603 = !DILocation(line: 50, column: 11, scope: !568, inlinedAt: !2601)
!2604 = !DILocation(line: 50, column: 7, scope: !561, inlinedAt: !2601)
!2605 = !DILocation(line: 51, column: 20, scope: !567, inlinedAt: !2601)
!2606 = !DILocation(line: 51, column: 32, scope: !567, inlinedAt: !2601)
!2607 = !DILocation(line: 51, column: 25, scope: !567, inlinedAt: !2601)
!2608 = !DILocation(line: 51, column: 13, scope: !567, inlinedAt: !2601)
!2609 = !DILocation(line: 53, column: 17, scope: !589, inlinedAt: !2601)
!2610 = !DILocation(line: 53, column: 11, scope: !589, inlinedAt: !2601)
!2611 = !DILocation(line: 53, column: 9, scope: !567, inlinedAt: !2601)
!2612 = !DILocation(line: 0, scope: !589, inlinedAt: !2601)
!2613 = !DILocation(line: 54, column: 10, scope: !589, inlinedAt: !2601)
!2614 = !DILocation(line: 56, column: 16, scope: !572, inlinedAt: !2601)
!2615 = !DILocation(line: 56, column: 12, scope: !568, inlinedAt: !2601)
!2616 = !DILocation(line: 58, column: 15, scope: !597, inlinedAt: !2601)
!2617 = !DILocation(line: 58, column: 19, scope: !597, inlinedAt: !2601)
!2618 = !DILocation(line: 58, column: 5, scope: !597, inlinedAt: !2601)
!2619 = !DILocation(line: 60, column: 8, scope: !572, inlinedAt: !2601)
!2620 = !DILocation(line: 61, column: 36, scope: !571, inlinedAt: !2601)
!2621 = !DILocation(line: 61, column: 29, scope: !571, inlinedAt: !2601)
!2622 = !DILocation(line: 63, column: 23, scope: !570, inlinedAt: !2601)
!2623 = !DILocation(line: 63, column: 16, scope: !570, inlinedAt: !2601)
!2624 = !DILocation(line: 64, column: 7, scope: !576, inlinedAt: !2601)
!2625 = !DILocation(line: 67, column: 35, scope: !571, inlinedAt: !2601)
!2626 = !DILocation(line: 67, column: 28, scope: !571, inlinedAt: !2601)
!2627 = !DILocation(line: 69, column: 23, scope: !578, inlinedAt: !2601)
!2628 = !DILocation(line: 69, column: 16, scope: !578, inlinedAt: !2601)
!2629 = !DILocation(line: 70, column: 30, scope: !578, inlinedAt: !2601)
!2630 = !DILocation(line: 71, column: 30, scope: !578, inlinedAt: !2601)
!2631 = !DILocation(line: 71, column: 22, scope: !578, inlinedAt: !2601)
!2632 = !DILocation(line: 71, column: 19, scope: !578, inlinedAt: !2601)
!2633 = !DILocation(line: 71, column: 14, scope: !578, inlinedAt: !2601)
!2634 = !DILocation(line: 72, column: 39, scope: !578, inlinedAt: !2601)
!2635 = !DILocation(line: 72, column: 20, scope: !578, inlinedAt: !2601)
!2636 = !DILocation(line: 0, scope: !571, inlinedAt: !2601)
!2637 = !DILocation(line: 76, column: 1, scope: !561, inlinedAt: !2601)
!2638 = !DILocation(line: 658, column: 9, scope: !2587)
!2639 = !DILocation(line: 664, column: 3, scope: !2595)
!2640 = !DILocation(line: 665, column: 32, scope: !2587)
!2641 = !DILocation(line: 665, column: 36, scope: !2587)
!2642 = !DILocation(line: 659, column: 10, scope: !2587)
!2643 = !DILocation(line: 665, column: 3, scope: !2587)
!2644 = !DILocation(line: 666, column: 9, scope: !2587)
!2645 = !DILocation(line: 668, column: 1, scope: !2587)
!2646 = distinct !DISubprogram(name: "lua_rawset", scope: !3, file: !3, line: 671, type: !525, isLocal: false, isDefinition: true, scopeLine: 671, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2647)
!2647 = !{!2648, !2649, !2650, !2651, !2653}
!2648 = !DILocalVariable(name: "L", arg: 1, scope: !2646, file: !3, line: 671, type: !131)
!2649 = !DILocalVariable(name: "idx", arg: 2, scope: !2646, file: !3, line: 671, type: !8)
!2650 = !DILocalVariable(name: "t", scope: !2646, file: !3, line: 672, type: !140)
!2651 = !DILocalVariable(name: "o2", scope: !2652, file: !3, line: 677, type: !362)
!2652 = distinct !DILexicalBlock(scope: !2646, file: !3, line: 677, column: 3)
!2653 = !DILocalVariable(name: "o1", scope: !2652, file: !3, line: 677, type: !74)
!2654 = !DILocation(line: 671, column: 37, scope: !2646)
!2655 = !DILocation(line: 671, column: 44, scope: !2646)
!2656 = !DILocation(line: 49, column: 38, scope: !561, inlinedAt: !2657)
!2657 = distinct !DILocation(line: 675, column: 7, scope: !2646)
!2658 = !DILocation(line: 49, column: 45, scope: !561, inlinedAt: !2657)
!2659 = !DILocation(line: 50, column: 11, scope: !568, inlinedAt: !2657)
!2660 = !DILocation(line: 50, column: 7, scope: !561, inlinedAt: !2657)
!2661 = !DILocation(line: 51, column: 20, scope: !567, inlinedAt: !2657)
!2662 = !DILocation(line: 51, column: 32, scope: !567, inlinedAt: !2657)
!2663 = !DILocation(line: 51, column: 25, scope: !567, inlinedAt: !2657)
!2664 = !DILocation(line: 51, column: 13, scope: !567, inlinedAt: !2657)
!2665 = !DILocation(line: 53, column: 17, scope: !589, inlinedAt: !2657)
!2666 = !DILocation(line: 53, column: 11, scope: !589, inlinedAt: !2657)
!2667 = !DILocation(line: 53, column: 9, scope: !567, inlinedAt: !2657)
!2668 = !DILocation(line: 0, scope: !589, inlinedAt: !2657)
!2669 = !DILocation(line: 54, column: 10, scope: !589, inlinedAt: !2657)
!2670 = !DILocation(line: 56, column: 16, scope: !572, inlinedAt: !2657)
!2671 = !DILocation(line: 56, column: 12, scope: !568, inlinedAt: !2657)
!2672 = !DILocation(line: 58, column: 15, scope: !597, inlinedAt: !2657)
!2673 = !DILocation(line: 58, column: 19, scope: !597, inlinedAt: !2657)
!2674 = !DILocation(line: 58, column: 5, scope: !597, inlinedAt: !2657)
!2675 = !DILocation(line: 60, column: 8, scope: !572, inlinedAt: !2657)
!2676 = !DILocation(line: 61, column: 36, scope: !571, inlinedAt: !2657)
!2677 = !DILocation(line: 61, column: 29, scope: !571, inlinedAt: !2657)
!2678 = !DILocation(line: 63, column: 23, scope: !570, inlinedAt: !2657)
!2679 = !DILocation(line: 63, column: 16, scope: !570, inlinedAt: !2657)
!2680 = !DILocation(line: 64, column: 7, scope: !576, inlinedAt: !2657)
!2681 = !DILocation(line: 67, column: 35, scope: !571, inlinedAt: !2657)
!2682 = !DILocation(line: 67, column: 28, scope: !571, inlinedAt: !2657)
!2683 = !DILocation(line: 69, column: 23, scope: !578, inlinedAt: !2657)
!2684 = !DILocation(line: 69, column: 16, scope: !578, inlinedAt: !2657)
!2685 = !DILocation(line: 70, column: 30, scope: !578, inlinedAt: !2657)
!2686 = !DILocation(line: 71, column: 30, scope: !578, inlinedAt: !2657)
!2687 = !DILocation(line: 71, column: 22, scope: !578, inlinedAt: !2657)
!2688 = !DILocation(line: 71, column: 19, scope: !578, inlinedAt: !2657)
!2689 = !DILocation(line: 71, column: 14, scope: !578, inlinedAt: !2657)
!2690 = !DILocation(line: 72, column: 39, scope: !578, inlinedAt: !2657)
!2691 = !DILocation(line: 72, column: 20, scope: !578, inlinedAt: !2657)
!2692 = !DILocation(line: 0, scope: !571, inlinedAt: !2657)
!2693 = !DILocation(line: 76, column: 1, scope: !561, inlinedAt: !2657)
!2694 = !DILocation(line: 672, column: 9, scope: !2646)
!2695 = !DILocation(line: 677, column: 3, scope: !2652)
!2696 = !DILocation(line: 678, column: 3, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2698, file: !3, line: 678, column: 3)
!2698 = distinct !DILexicalBlock(scope: !2646, file: !3, line: 678, column: 3)
!2699 = !DILocation(line: 678, column: 3, scope: !2698)
!2700 = !DILocation(line: 679, column: 10, scope: !2646)
!2701 = !DILocation(line: 681, column: 1, scope: !2646)
!2702 = distinct !DISubprogram(name: "lua_rawseti", scope: !3, file: !3, line: 684, type: !2319, isLocal: false, isDefinition: true, scopeLine: 684, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2703)
!2703 = !{!2704, !2705, !2706, !2707, !2708, !2710}
!2704 = !DILocalVariable(name: "L", arg: 1, scope: !2702, file: !3, line: 684, type: !131)
!2705 = !DILocalVariable(name: "idx", arg: 2, scope: !2702, file: !3, line: 684, type: !8)
!2706 = !DILocalVariable(name: "n", arg: 3, scope: !2702, file: !3, line: 684, type: !8)
!2707 = !DILocalVariable(name: "o", scope: !2702, file: !3, line: 685, type: !140)
!2708 = !DILocalVariable(name: "o2", scope: !2709, file: !3, line: 690, type: !362)
!2709 = distinct !DILexicalBlock(scope: !2702, file: !3, line: 690, column: 3)
!2710 = !DILocalVariable(name: "o1", scope: !2709, file: !3, line: 690, type: !74)
!2711 = !DILocation(line: 684, column: 38, scope: !2702)
!2712 = !DILocation(line: 684, column: 45, scope: !2702)
!2713 = !DILocation(line: 684, column: 54, scope: !2702)
!2714 = !DILocation(line: 49, column: 38, scope: !561, inlinedAt: !2715)
!2715 = distinct !DILocation(line: 688, column: 7, scope: !2702)
!2716 = !DILocation(line: 49, column: 45, scope: !561, inlinedAt: !2715)
!2717 = !DILocation(line: 50, column: 11, scope: !568, inlinedAt: !2715)
!2718 = !DILocation(line: 50, column: 7, scope: !561, inlinedAt: !2715)
!2719 = !DILocation(line: 51, column: 20, scope: !567, inlinedAt: !2715)
!2720 = !DILocation(line: 51, column: 32, scope: !567, inlinedAt: !2715)
!2721 = !DILocation(line: 51, column: 25, scope: !567, inlinedAt: !2715)
!2722 = !DILocation(line: 51, column: 13, scope: !567, inlinedAt: !2715)
!2723 = !DILocation(line: 53, column: 17, scope: !589, inlinedAt: !2715)
!2724 = !DILocation(line: 53, column: 11, scope: !589, inlinedAt: !2715)
!2725 = !DILocation(line: 53, column: 9, scope: !567, inlinedAt: !2715)
!2726 = !DILocation(line: 0, scope: !589, inlinedAt: !2715)
!2727 = !DILocation(line: 54, column: 10, scope: !589, inlinedAt: !2715)
!2728 = !DILocation(line: 56, column: 16, scope: !572, inlinedAt: !2715)
!2729 = !DILocation(line: 56, column: 12, scope: !568, inlinedAt: !2715)
!2730 = !DILocation(line: 58, column: 15, scope: !597, inlinedAt: !2715)
!2731 = !DILocation(line: 58, column: 19, scope: !597, inlinedAt: !2715)
!2732 = !DILocation(line: 58, column: 5, scope: !597, inlinedAt: !2715)
!2733 = !DILocation(line: 60, column: 8, scope: !572, inlinedAt: !2715)
!2734 = !DILocation(line: 61, column: 36, scope: !571, inlinedAt: !2715)
!2735 = !DILocation(line: 61, column: 29, scope: !571, inlinedAt: !2715)
!2736 = !DILocation(line: 63, column: 23, scope: !570, inlinedAt: !2715)
!2737 = !DILocation(line: 63, column: 16, scope: !570, inlinedAt: !2715)
!2738 = !DILocation(line: 64, column: 7, scope: !576, inlinedAt: !2715)
!2739 = !DILocation(line: 67, column: 35, scope: !571, inlinedAt: !2715)
!2740 = !DILocation(line: 67, column: 28, scope: !571, inlinedAt: !2715)
!2741 = !DILocation(line: 69, column: 23, scope: !578, inlinedAt: !2715)
!2742 = !DILocation(line: 69, column: 16, scope: !578, inlinedAt: !2715)
!2743 = !DILocation(line: 70, column: 30, scope: !578, inlinedAt: !2715)
!2744 = !DILocation(line: 71, column: 30, scope: !578, inlinedAt: !2715)
!2745 = !DILocation(line: 71, column: 22, scope: !578, inlinedAt: !2715)
!2746 = !DILocation(line: 71, column: 19, scope: !578, inlinedAt: !2715)
!2747 = !DILocation(line: 71, column: 14, scope: !578, inlinedAt: !2715)
!2748 = !DILocation(line: 72, column: 39, scope: !578, inlinedAt: !2715)
!2749 = !DILocation(line: 72, column: 20, scope: !578, inlinedAt: !2715)
!2750 = !DILocation(line: 0, scope: !571, inlinedAt: !2715)
!2751 = !DILocation(line: 76, column: 1, scope: !561, inlinedAt: !2715)
!2752 = !DILocation(line: 685, column: 9, scope: !2702)
!2753 = !DILocation(line: 690, column: 3, scope: !2709)
!2754 = !DILocation(line: 691, column: 3, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !2756, file: !3, line: 691, column: 3)
!2756 = distinct !DILexicalBlock(scope: !2702, file: !3, line: 691, column: 3)
!2757 = !DILocation(line: 691, column: 3, scope: !2756)
!2758 = !DILocation(line: 692, column: 9, scope: !2702)
!2759 = !DILocation(line: 694, column: 1, scope: !2702)
!2760 = distinct !DISubprogram(name: "lua_setmetatable", scope: !3, file: !3, line: 697, type: !387, isLocal: false, isDefinition: true, scopeLine: 697, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2761)
!2761 = !{!2762, !2763, !2764, !2765}
!2762 = !DILocalVariable(name: "L", arg: 1, scope: !2760, file: !3, line: 697, type: !131)
!2763 = !DILocalVariable(name: "objindex", arg: 2, scope: !2760, file: !3, line: 697, type: !8)
!2764 = !DILocalVariable(name: "obj", scope: !2760, file: !3, line: 698, type: !74)
!2765 = !DILocalVariable(name: "mt", scope: !2760, file: !3, line: 699, type: !2081)
!2766 = !DILocation(line: 697, column: 42, scope: !2760)
!2767 = !DILocation(line: 697, column: 49, scope: !2760)
!2768 = !DILocation(line: 49, column: 38, scope: !561, inlinedAt: !2769)
!2769 = distinct !DILocation(line: 702, column: 9, scope: !2760)
!2770 = !DILocation(line: 49, column: 45, scope: !561, inlinedAt: !2769)
!2771 = !DILocation(line: 50, column: 11, scope: !568, inlinedAt: !2769)
!2772 = !DILocation(line: 50, column: 7, scope: !561, inlinedAt: !2769)
!2773 = !DILocation(line: 51, column: 20, scope: !567, inlinedAt: !2769)
!2774 = !DILocation(line: 51, column: 32, scope: !567, inlinedAt: !2769)
!2775 = !DILocation(line: 51, column: 25, scope: !567, inlinedAt: !2769)
!2776 = !DILocation(line: 51, column: 13, scope: !567, inlinedAt: !2769)
!2777 = !DILocation(line: 53, column: 17, scope: !589, inlinedAt: !2769)
!2778 = !DILocation(line: 53, column: 11, scope: !589, inlinedAt: !2769)
!2779 = !DILocation(line: 53, column: 9, scope: !567, inlinedAt: !2769)
!2780 = !DILocation(line: 0, scope: !589, inlinedAt: !2769)
!2781 = !DILocation(line: 54, column: 10, scope: !589, inlinedAt: !2769)
!2782 = !DILocation(line: 56, column: 16, scope: !572, inlinedAt: !2769)
!2783 = !DILocation(line: 56, column: 12, scope: !568, inlinedAt: !2769)
!2784 = !DILocation(line: 58, column: 15, scope: !597, inlinedAt: !2769)
!2785 = !DILocation(line: 58, column: 19, scope: !597, inlinedAt: !2769)
!2786 = !DILocation(line: 58, column: 5, scope: !597, inlinedAt: !2769)
!2787 = !DILocation(line: 60, column: 8, scope: !572, inlinedAt: !2769)
!2788 = !DILocation(line: 61, column: 36, scope: !571, inlinedAt: !2769)
!2789 = !DILocation(line: 61, column: 29, scope: !571, inlinedAt: !2769)
!2790 = !DILocation(line: 63, column: 23, scope: !570, inlinedAt: !2769)
!2791 = !DILocation(line: 63, column: 16, scope: !570, inlinedAt: !2769)
!2792 = !DILocation(line: 64, column: 7, scope: !576, inlinedAt: !2769)
!2793 = !DILocation(line: 67, column: 35, scope: !571, inlinedAt: !2769)
!2794 = !DILocation(line: 67, column: 28, scope: !571, inlinedAt: !2769)
!2795 = !DILocation(line: 69, column: 23, scope: !578, inlinedAt: !2769)
!2796 = !DILocation(line: 69, column: 16, scope: !578, inlinedAt: !2769)
!2797 = !DILocation(line: 70, column: 30, scope: !578, inlinedAt: !2769)
!2798 = !DILocation(line: 71, column: 30, scope: !578, inlinedAt: !2769)
!2799 = !DILocation(line: 71, column: 22, scope: !578, inlinedAt: !2769)
!2800 = !DILocation(line: 71, column: 19, scope: !578, inlinedAt: !2769)
!2801 = !DILocation(line: 71, column: 14, scope: !578, inlinedAt: !2769)
!2802 = !DILocation(line: 72, column: 39, scope: !578, inlinedAt: !2769)
!2803 = !DILocation(line: 72, column: 20, scope: !578, inlinedAt: !2769)
!2804 = !DILocation(line: 0, scope: !571, inlinedAt: !2769)
!2805 = !DILocation(line: 76, column: 1, scope: !561, inlinedAt: !2769)
!2806 = !DILocation(line: 698, column: 11, scope: !2760)
!2807 = !DILocation(line: 704, column: 7, scope: !2808)
!2808 = distinct !DILexicalBlock(scope: !2760, file: !3, line: 704, column: 7)
!2809 = !DILocation(line: 704, column: 7, scope: !2760)
!2810 = !DILocation(line: 708, column: 10, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2808, file: !3, line: 706, column: 8)
!2812 = !DILocation(line: 699, column: 10, scope: !2760)
!2813 = !DILocation(line: 0, scope: !2811)
!2814 = !DILocation(line: 710, column: 11, scope: !2760)
!2815 = !DILocation(line: 710, column: 3, scope: !2760)
!2816 = !DILocation(line: 712, column: 7, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2818, file: !3, line: 711, column: 22)
!2818 = distinct !DILexicalBlock(scope: !2760, file: !3, line: 710, column: 23)
!2819 = !DILocation(line: 712, column: 20, scope: !2817)
!2820 = !DILocation(line: 712, column: 30, scope: !2817)
!2821 = !DILocation(line: 713, column: 11, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2817, file: !3, line: 713, column: 11)
!2823 = !DILocation(line: 713, column: 11, scope: !2817)
!2824 = !DILocation(line: 714, column: 9, scope: !2825)
!2825 = distinct !DILexicalBlock(scope: !2826, file: !3, line: 714, column: 9)
!2826 = distinct !DILexicalBlock(scope: !2822, file: !3, line: 714, column: 9)
!2827 = !DILocation(line: 714, column: 9, scope: !2826)
!2828 = !DILocation(line: 718, column: 7, scope: !2829)
!2829 = distinct !DILexicalBlock(scope: !2818, file: !3, line: 717, column: 25)
!2830 = !DILocation(line: 718, column: 20, scope: !2829)
!2831 = !DILocation(line: 718, column: 30, scope: !2829)
!2832 = !DILocation(line: 719, column: 11, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2829, file: !3, line: 719, column: 11)
!2834 = !DILocation(line: 719, column: 11, scope: !2829)
!2835 = !DILocation(line: 720, column: 9, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !2837, file: !3, line: 720, column: 9)
!2837 = distinct !DILexicalBlock(scope: !2833, file: !3, line: 720, column: 9)
!2838 = !DILocation(line: 720, column: 9, scope: !2837)
!2839 = !DILocation(line: 724, column: 7, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !2818, file: !3, line: 723, column: 14)
!2841 = !DILocation(line: 724, column: 28, scope: !2840)
!2842 = !DILocation(line: 725, column: 7, scope: !2840)
!2843 = !DILocation(line: 728, column: 9, scope: !2760)
!2844 = !DILocation(line: 730, column: 3, scope: !2760)
!2845 = distinct !DISubprogram(name: "lua_setfenv", scope: !3, file: !3, line: 734, type: !387, isLocal: false, isDefinition: true, scopeLine: 734, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2846)
!2846 = !{!2847, !2848, !2849, !2850, !2851}
!2847 = !DILocalVariable(name: "L", arg: 1, scope: !2845, file: !3, line: 734, type: !131)
!2848 = !DILocalVariable(name: "idx", arg: 2, scope: !2845, file: !3, line: 734, type: !8)
!2849 = !DILocalVariable(name: "o", scope: !2845, file: !3, line: 735, type: !140)
!2850 = !DILocalVariable(name: "res", scope: !2845, file: !3, line: 736, type: !8)
!2851 = !DILocalVariable(name: "i_o", scope: !2852, file: !3, line: 750, type: !74)
!2852 = distinct !DILexicalBlock(scope: !2853, file: !3, line: 750, column: 7)
!2853 = distinct !DILexicalBlock(scope: !2845, file: !3, line: 742, column: 21)
!2854 = !DILocation(line: 734, column: 37, scope: !2845)
!2855 = !DILocation(line: 734, column: 44, scope: !2845)
!2856 = !DILocation(line: 736, column: 7, scope: !2845)
!2857 = !DILocation(line: 49, column: 38, scope: !561, inlinedAt: !2858)
!2858 = distinct !DILocation(line: 739, column: 7, scope: !2845)
!2859 = !DILocation(line: 49, column: 45, scope: !561, inlinedAt: !2858)
!2860 = !DILocation(line: 50, column: 11, scope: !568, inlinedAt: !2858)
!2861 = !DILocation(line: 50, column: 7, scope: !561, inlinedAt: !2858)
!2862 = !DILocation(line: 51, column: 20, scope: !567, inlinedAt: !2858)
!2863 = !DILocation(line: 51, column: 32, scope: !567, inlinedAt: !2858)
!2864 = !DILocation(line: 51, column: 25, scope: !567, inlinedAt: !2858)
!2865 = !DILocation(line: 51, column: 13, scope: !567, inlinedAt: !2858)
!2866 = !DILocation(line: 53, column: 17, scope: !589, inlinedAt: !2858)
!2867 = !DILocation(line: 53, column: 11, scope: !589, inlinedAt: !2858)
!2868 = !DILocation(line: 53, column: 9, scope: !567, inlinedAt: !2858)
!2869 = !DILocation(line: 0, scope: !589, inlinedAt: !2858)
!2870 = !DILocation(line: 54, column: 10, scope: !589, inlinedAt: !2858)
!2871 = !DILocation(line: 56, column: 16, scope: !572, inlinedAt: !2858)
!2872 = !DILocation(line: 56, column: 12, scope: !568, inlinedAt: !2858)
!2873 = !DILocation(line: 58, column: 15, scope: !597, inlinedAt: !2858)
!2874 = !DILocation(line: 58, column: 19, scope: !597, inlinedAt: !2858)
!2875 = !DILocation(line: 58, column: 5, scope: !597, inlinedAt: !2858)
!2876 = !DILocation(line: 60, column: 8, scope: !572, inlinedAt: !2858)
!2877 = !DILocation(line: 61, column: 36, scope: !571, inlinedAt: !2858)
!2878 = !DILocation(line: 61, column: 29, scope: !571, inlinedAt: !2858)
!2879 = !DILocation(line: 63, column: 23, scope: !570, inlinedAt: !2858)
!2880 = !DILocation(line: 63, column: 16, scope: !570, inlinedAt: !2858)
!2881 = !DILocation(line: 64, column: 7, scope: !576, inlinedAt: !2858)
!2882 = !DILocation(line: 67, column: 35, scope: !571, inlinedAt: !2858)
!2883 = !DILocation(line: 67, column: 28, scope: !571, inlinedAt: !2858)
!2884 = !DILocation(line: 69, column: 23, scope: !578, inlinedAt: !2858)
!2885 = !DILocation(line: 69, column: 16, scope: !578, inlinedAt: !2858)
!2886 = !DILocation(line: 70, column: 30, scope: !578, inlinedAt: !2858)
!2887 = !DILocation(line: 71, column: 30, scope: !578, inlinedAt: !2858)
!2888 = !DILocation(line: 71, column: 22, scope: !578, inlinedAt: !2858)
!2889 = !DILocation(line: 71, column: 19, scope: !578, inlinedAt: !2858)
!2890 = !DILocation(line: 71, column: 14, scope: !578, inlinedAt: !2858)
!2891 = !DILocation(line: 72, column: 39, scope: !578, inlinedAt: !2858)
!2892 = !DILocation(line: 72, column: 20, scope: !578, inlinedAt: !2858)
!2893 = !DILocation(line: 0, scope: !571, inlinedAt: !2858)
!2894 = !DILocation(line: 76, column: 1, scope: !561, inlinedAt: !2858)
!2895 = !DILocation(line: 735, column: 9, scope: !2845)
!2896 = !DILocation(line: 742, column: 11, scope: !2845)
!2897 = !DILocation(line: 742, column: 3, scope: !2845)
!2898 = !DILocation(line: 744, column: 27, scope: !2853)
!2899 = !DILocation(line: 744, column: 7, scope: !2853)
!2900 = !DILocation(line: 744, column: 21, scope: !2853)
!2901 = !DILocation(line: 744, column: 25, scope: !2853)
!2902 = !DILocation(line: 745, column: 7, scope: !2853)
!2903 = !DILocation(line: 747, column: 24, scope: !2853)
!2904 = !DILocation(line: 747, column: 7, scope: !2853)
!2905 = !DILocation(line: 747, column: 18, scope: !2853)
!2906 = !DILocation(line: 747, column: 22, scope: !2853)
!2907 = !DILocation(line: 748, column: 7, scope: !2853)
!2908 = !DILocation(line: 750, column: 7, scope: !2852)
!2909 = !DILocation(line: 751, column: 7, scope: !2853)
!2910 = !DILocation(line: 754, column: 7, scope: !2853)
!2911 = !DILocation(line: 756, column: 7, scope: !2845)
!2912 = !DILocation(line: 757, column: 6, scope: !2845)
!2913 = !DILocation(line: 756, column: 12, scope: !2914)
!2914 = distinct !DILexicalBlock(scope: !2915, file: !3, line: 756, column: 12)
!2915 = distinct !DILexicalBlock(scope: !2916, file: !3, line: 756, column: 12)
!2916 = distinct !DILexicalBlock(scope: !2845, file: !3, line: 756, column: 7)
!2917 = !DILocation(line: 0, scope: !2853)
!2918 = !DILocation(line: 756, column: 12, scope: !2915)
!2919 = !DILocation(line: 757, column: 9, scope: !2845)
!2920 = !DILocation(line: 759, column: 3, scope: !2845)
!2921 = distinct !DISubprogram(name: "lua_call", scope: !3, file: !3, line: 776, type: !2319, isLocal: false, isDefinition: true, scopeLine: 776, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2922)
!2922 = !{!2923, !2924, !2925, !2926}
!2923 = !DILocalVariable(name: "L", arg: 1, scope: !2921, file: !3, line: 776, type: !131)
!2924 = !DILocalVariable(name: "nargs", arg: 2, scope: !2921, file: !3, line: 776, type: !8)
!2925 = !DILocalVariable(name: "nresults", arg: 3, scope: !2921, file: !3, line: 776, type: !8)
!2926 = !DILocalVariable(name: "func", scope: !2921, file: !3, line: 777, type: !140)
!2927 = !DILocation(line: 776, column: 35, scope: !2921)
!2928 = !DILocation(line: 776, column: 42, scope: !2921)
!2929 = !DILocation(line: 776, column: 53, scope: !2921)
!2930 = !DILocation(line: 781, column: 13, scope: !2921)
!2931 = !DILocation(line: 781, column: 25, scope: !2921)
!2932 = !DILocation(line: 781, column: 17, scope: !2921)
!2933 = !DILocation(line: 777, column: 9, scope: !2921)
!2934 = !DILocation(line: 782, column: 3, scope: !2921)
!2935 = !DILocation(line: 783, column: 3, scope: !2936)
!2936 = distinct !DILexicalBlock(scope: !2937, file: !3, line: 783, column: 3)
!2937 = distinct !DILexicalBlock(scope: !2921, file: !3, line: 783, column: 3)
!2938 = !DILocation(line: 783, column: 3, scope: !2937)
!2939 = !DILocation(line: 785, column: 1, scope: !2921)
!2940 = distinct !DISubprogram(name: "lua_pcall", scope: !3, file: !3, line: 805, type: !2941, isLocal: false, isDefinition: true, scopeLine: 805, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2943)
!2941 = !DISubroutineType(types: !2942)
!2942 = !{!8, !131, !8, !8, !8}
!2943 = !{!2944, !2945, !2946, !2947, !2948, !2949, !2950, !2951}
!2944 = !DILocalVariable(name: "L", arg: 1, scope: !2940, file: !3, line: 805, type: !131)
!2945 = !DILocalVariable(name: "nargs", arg: 2, scope: !2940, file: !3, line: 805, type: !8)
!2946 = !DILocalVariable(name: "nresults", arg: 3, scope: !2940, file: !3, line: 805, type: !8)
!2947 = !DILocalVariable(name: "errfunc", arg: 4, scope: !2940, file: !3, line: 805, type: !8)
!2948 = !DILocalVariable(name: "c", scope: !2940, file: !3, line: 806, type: !342)
!2949 = !DILocalVariable(name: "status", scope: !2940, file: !3, line: 807, type: !8)
!2950 = !DILocalVariable(name: "func", scope: !2940, file: !3, line: 808, type: !279)
!2951 = !DILocalVariable(name: "o", scope: !2952, file: !3, line: 815, type: !140)
!2952 = distinct !DILexicalBlock(scope: !2953, file: !3, line: 814, column: 8)
!2953 = distinct !DILexicalBlock(scope: !2940, file: !3, line: 812, column: 7)
!2954 = !DILocation(line: 805, column: 35, scope: !2940)
!2955 = !DILocation(line: 805, column: 42, scope: !2940)
!2956 = !DILocation(line: 805, column: 53, scope: !2940)
!2957 = !DILocation(line: 805, column: 67, scope: !2940)
!2958 = !DILocation(line: 806, column: 3, scope: !2940)
!2959 = !DILocation(line: 812, column: 15, scope: !2953)
!2960 = !DILocation(line: 812, column: 7, scope: !2940)
!2961 = !DILocation(line: 808, column: 13, scope: !2940)
!2962 = !DILocation(line: 813, column: 5, scope: !2953)
!2963 = !DILocation(line: 821, column: 38, scope: !2940)
!2964 = !{!374, !375, i64 64}
!2965 = !DILocation(line: 49, column: 38, scope: !561, inlinedAt: !2966)
!2966 = distinct !DILocation(line: 815, column: 15, scope: !2952)
!2967 = !DILocation(line: 49, column: 45, scope: !561, inlinedAt: !2966)
!2968 = !DILocation(line: 50, column: 11, scope: !568, inlinedAt: !2966)
!2969 = !DILocation(line: 50, column: 7, scope: !561, inlinedAt: !2966)
!2970 = !DILocation(line: 51, column: 20, scope: !567, inlinedAt: !2966)
!2971 = !DILocation(line: 51, column: 32, scope: !567, inlinedAt: !2966)
!2972 = !DILocation(line: 51, column: 25, scope: !567, inlinedAt: !2966)
!2973 = !DILocation(line: 51, column: 13, scope: !567, inlinedAt: !2966)
!2974 = !DILocation(line: 53, column: 17, scope: !589, inlinedAt: !2966)
!2975 = !DILocation(line: 53, column: 11, scope: !589, inlinedAt: !2966)
!2976 = !DILocation(line: 53, column: 9, scope: !567, inlinedAt: !2966)
!2977 = !DILocation(line: 0, scope: !589, inlinedAt: !2966)
!2978 = !DILocation(line: 54, column: 10, scope: !589, inlinedAt: !2966)
!2979 = !DILocation(line: 56, column: 16, scope: !572, inlinedAt: !2966)
!2980 = !DILocation(line: 56, column: 12, scope: !568, inlinedAt: !2966)
!2981 = !DILocation(line: 58, column: 15, scope: !597, inlinedAt: !2966)
!2982 = !DILocation(line: 58, column: 19, scope: !597, inlinedAt: !2966)
!2983 = !DILocation(line: 58, column: 5, scope: !597, inlinedAt: !2966)
!2984 = !DILocation(line: 60, column: 8, scope: !572, inlinedAt: !2966)
!2985 = !DILocation(line: 61, column: 36, scope: !571, inlinedAt: !2966)
!2986 = !DILocation(line: 61, column: 29, scope: !571, inlinedAt: !2966)
!2987 = !DILocation(line: 63, column: 23, scope: !570, inlinedAt: !2966)
!2988 = !DILocation(line: 63, column: 16, scope: !570, inlinedAt: !2966)
!2989 = !DILocation(line: 64, column: 7, scope: !576, inlinedAt: !2966)
!2990 = !DILocation(line: 67, column: 35, scope: !571, inlinedAt: !2966)
!2991 = !DILocation(line: 67, column: 28, scope: !571, inlinedAt: !2966)
!2992 = !DILocation(line: 69, column: 23, scope: !578, inlinedAt: !2966)
!2993 = !DILocation(line: 69, column: 16, scope: !578, inlinedAt: !2966)
!2994 = !DILocation(line: 70, column: 30, scope: !578, inlinedAt: !2966)
!2995 = !DILocation(line: 71, column: 30, scope: !578, inlinedAt: !2966)
!2996 = !DILocation(line: 71, column: 22, scope: !578, inlinedAt: !2966)
!2997 = !DILocation(line: 71, column: 19, scope: !578, inlinedAt: !2966)
!2998 = !DILocation(line: 71, column: 14, scope: !578, inlinedAt: !2966)
!2999 = !DILocation(line: 72, column: 39, scope: !578, inlinedAt: !2966)
!3000 = !DILocation(line: 72, column: 20, scope: !578, inlinedAt: !2966)
!3001 = !DILocation(line: 0, scope: !571, inlinedAt: !2966)
!3002 = !DILocation(line: 76, column: 1, scope: !561, inlinedAt: !2966)
!3003 = !DILocation(line: 815, column: 11, scope: !2952)
!3004 = !DILocation(line: 817, column: 12, scope: !2952)
!3005 = !DILocation(line: 0, scope: !2952)
!3006 = !DILocation(line: 819, column: 15, scope: !2940)
!3007 = !DILocation(line: 819, column: 27, scope: !2940)
!3008 = !DILocation(line: 819, column: 19, scope: !2940)
!3009 = !DILocation(line: 819, column: 5, scope: !2940)
!3010 = !DILocation(line: 819, column: 10, scope: !2940)
!3011 = !{!3012, !375, i64 0}
!3012 = !{!"CallS", !375, i64 0, !378, i64 8}
!3013 = !DILocation(line: 820, column: 5, scope: !2940)
!3014 = !DILocation(line: 820, column: 14, scope: !2940)
!3015 = !{!3012, !378, i64 8}
!3016 = !DILocation(line: 821, column: 12, scope: !2940)
!3017 = !DILocation(line: 807, column: 7, scope: !2940)
!3018 = !DILocation(line: 822, column: 3, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !3020, file: !3, line: 822, column: 3)
!3020 = distinct !DILexicalBlock(scope: !2940, file: !3, line: 822, column: 3)
!3021 = !DILocation(line: 822, column: 3, scope: !3020)
!3022 = !DILocation(line: 825, column: 1, scope: !2940)
!3023 = !DILocation(line: 824, column: 3, scope: !2940)
!3024 = distinct !DISubprogram(name: "f_call", scope: !3, file: !3, line: 798, type: !2129, isLocal: true, isDefinition: true, scopeLine: 798, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3025)
!3025 = !{!3026, !3027, !3028}
!3026 = !DILocalVariable(name: "L", arg: 1, scope: !3024, file: !3, line: 798, type: !131)
!3027 = !DILocalVariable(name: "ud", arg: 2, scope: !3024, file: !3, line: 798, type: !35)
!3028 = !DILocalVariable(name: "c", scope: !3024, file: !3, line: 799, type: !341)
!3029 = !DILocation(line: 798, column: 32, scope: !3024)
!3030 = !DILocation(line: 798, column: 41, scope: !3024)
!3031 = !DILocation(line: 799, column: 17, scope: !3024)
!3032 = !DILocation(line: 800, column: 19, scope: !3024)
!3033 = !DILocation(line: 800, column: 28, scope: !3024)
!3034 = !DILocation(line: 800, column: 3, scope: !3024)
!3035 = !DILocation(line: 801, column: 1, scope: !3024)
!3036 = distinct !DISubprogram(name: "lua_cpcall", scope: !3, file: !3, line: 850, type: !3037, isLocal: false, isDefinition: true, scopeLine: 850, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3039)
!3037 = !DISubroutineType(types: !3038)
!3038 = !{!8, !131, !127, !35}
!3039 = !{!3040, !3041, !3042, !3043, !3044}
!3040 = !DILocalVariable(name: "L", arg: 1, scope: !3036, file: !3, line: 850, type: !131)
!3041 = !DILocalVariable(name: "func", arg: 2, scope: !3036, file: !3, line: 850, type: !127)
!3042 = !DILocalVariable(name: "ud", arg: 3, scope: !3036, file: !3, line: 850, type: !35)
!3043 = !DILocalVariable(name: "c", scope: !3036, file: !3, line: 851, type: !347)
!3044 = !DILocalVariable(name: "status", scope: !3036, file: !3, line: 852, type: !8)
!3045 = !DILocation(line: 850, column: 36, scope: !3036)
!3046 = !DILocation(line: 850, column: 53, scope: !3036)
!3047 = !DILocation(line: 850, column: 65, scope: !3036)
!3048 = !DILocation(line: 851, column: 3, scope: !3036)
!3049 = !DILocation(line: 854, column: 5, scope: !3036)
!3050 = !DILocation(line: 854, column: 10, scope: !3036)
!3051 = !{!3052, !375, i64 0}
!3052 = !{!"CCallS", !375, i64 0, !375, i64 8}
!3053 = !DILocation(line: 855, column: 5, scope: !3036)
!3054 = !DILocation(line: 855, column: 8, scope: !3036)
!3055 = !{!3052, !375, i64 8}
!3056 = !DILocation(line: 856, column: 39, scope: !3036)
!3057 = !DILocation(line: 856, column: 12, scope: !3036)
!3058 = !DILocation(line: 852, column: 7, scope: !3036)
!3059 = !DILocation(line: 859, column: 1, scope: !3036)
!3060 = !DILocation(line: 858, column: 3, scope: !3036)
!3061 = distinct !DISubprogram(name: "f_Ccall", scope: !3, file: !3, line: 837, type: !2129, isLocal: true, isDefinition: true, scopeLine: 837, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3062)
!3062 = !{!3063, !3064, !3065, !3066, !3067, !3069}
!3063 = !DILocalVariable(name: "L", arg: 1, scope: !3061, file: !3, line: 837, type: !131)
!3064 = !DILocalVariable(name: "ud", arg: 2, scope: !3061, file: !3, line: 837, type: !35)
!3065 = !DILocalVariable(name: "c", scope: !3061, file: !3, line: 838, type: !346)
!3066 = !DILocalVariable(name: "cl", scope: !3061, file: !3, line: 839, type: !573)
!3067 = !DILocalVariable(name: "i_o", scope: !3068, file: !3, line: 842, type: !74)
!3068 = distinct !DILexicalBlock(scope: !3061, file: !3, line: 842, column: 3)
!3069 = !DILocalVariable(name: "i_o", scope: !3070, file: !3, line: 844, type: !74)
!3070 = distinct !DILexicalBlock(scope: !3061, file: !3, line: 844, column: 3)
!3071 = !DILocation(line: 837, column: 33, scope: !3061)
!3072 = !DILocation(line: 837, column: 42, scope: !3061)
!3073 = !DILocation(line: 838, column: 18, scope: !3061)
!3074 = !DILocation(line: 79, column: 38, scope: !2078, inlinedAt: !3075)
!3075 = distinct !DILocation(line: 840, column: 31, scope: !3061)
!3076 = !DILocation(line: 80, column: 10, scope: !2086, inlinedAt: !3075)
!3077 = !DILocation(line: 80, column: 19, scope: !2086, inlinedAt: !3075)
!3078 = !DILocation(line: 80, column: 13, scope: !2086, inlinedAt: !3075)
!3079 = !DILocation(line: 80, column: 7, scope: !2078, inlinedAt: !3075)
!3080 = !DILocation(line: 81, column: 12, scope: !2086, inlinedAt: !3075)
!3081 = !DILocation(line: 81, column: 5, scope: !2086, inlinedAt: !3075)
!3082 = !DILocation(line: 83, column: 21, scope: !2085, inlinedAt: !3075)
!3083 = !DILocation(line: 83, column: 14, scope: !2085, inlinedAt: !3075)
!3084 = !DILocation(line: 84, column: 20, scope: !2085, inlinedAt: !3075)
!3085 = !DILocation(line: 0, scope: !3061)
!3086 = !DILocation(line: 86, column: 1, scope: !2078, inlinedAt: !3075)
!3087 = !DILocation(line: 840, column: 8, scope: !3061)
!3088 = !DILocation(line: 839, column: 12, scope: !3061)
!3089 = !DILocation(line: 841, column: 16, scope: !3061)
!3090 = !DILocation(line: 841, column: 9, scope: !3061)
!3091 = !DILocation(line: 841, column: 11, scope: !3061)
!3092 = !DILocation(line: 842, column: 3, scope: !3068)
!3093 = !DILocation(line: 843, column: 3, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !3061, file: !3, line: 843, column: 3)
!3095 = !DILocation(line: 844, column: 3, scope: !3070)
!3096 = !DILocation(line: 845, column: 3, scope: !3097)
!3097 = distinct !DILexicalBlock(scope: !3061, file: !3, line: 845, column: 3)
!3098 = !DILocation(line: 846, column: 23, scope: !3061)
!3099 = !DILocation(line: 846, column: 3, scope: !3061)
!3100 = !DILocation(line: 847, column: 1, scope: !3061)
!3101 = distinct !DISubprogram(name: "lua_load", scope: !3, file: !3, line: 862, type: !3102, isLocal: false, isDefinition: true, scopeLine: 863, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3108)
!3102 = !DISubroutineType(types: !3103)
!3103 = !{!8, !131, !3104, !35, !257}
!3104 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Reader", file: !86, line: 58, baseType: !3105)
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{!257, !131, !35, !1513}
!3108 = !{!3109, !3110, !3111, !3112, !3113, !3122}
!3109 = !DILocalVariable(name: "L", arg: 1, scope: !3101, file: !3, line: 862, type: !131)
!3110 = !DILocalVariable(name: "reader", arg: 2, scope: !3101, file: !3, line: 862, type: !3104)
!3111 = !DILocalVariable(name: "data", arg: 3, scope: !3101, file: !3, line: 862, type: !35)
!3112 = !DILocalVariable(name: "chunkname", arg: 4, scope: !3101, file: !3, line: 863, type: !257)
!3113 = !DILocalVariable(name: "z", scope: !3101, file: !3, line: 864, type: !3114)
!3114 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZIO", file: !173, line: 18, baseType: !3115)
!3115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Zio", file: !173, line: 56, size: 320, elements: !3116)
!3116 = !{!3117, !3118, !3119, !3120, !3121}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !3115, file: !173, line: 57, baseType: !48, size: 64)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3115, file: !173, line: 58, baseType: !257, size: 64, offset: 64)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "reader", scope: !3115, file: !173, line: 59, baseType: !3104, size: 64, offset: 128)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3115, file: !173, line: 60, baseType: !35, size: 64, offset: 192)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "L", scope: !3115, file: !173, line: 61, baseType: !131, size: 64, offset: 256)
!3122 = !DILocalVariable(name: "status", scope: !3101, file: !3, line: 865, type: !8)
!3123 = !DILocation(line: 862, column: 34, scope: !3101)
!3124 = !DILocation(line: 862, column: 48, scope: !3101)
!3125 = !DILocation(line: 862, column: 62, scope: !3101)
!3126 = !DILocation(line: 863, column: 35, scope: !3101)
!3127 = !DILocation(line: 864, column: 3, scope: !3101)
!3128 = !DILocation(line: 867, column: 8, scope: !3129)
!3129 = distinct !DILexicalBlock(scope: !3101, file: !3, line: 867, column: 7)
!3130 = !DILocation(line: 867, column: 7, scope: !3101)
!3131 = !DILocation(line: 867, column: 19, scope: !3129)
!3132 = !DILocation(line: 864, column: 7, scope: !3101)
!3133 = !DILocation(line: 868, column: 3, scope: !3101)
!3134 = !DILocation(line: 869, column: 12, scope: !3101)
!3135 = !DILocation(line: 865, column: 7, scope: !3101)
!3136 = !DILocation(line: 872, column: 1, scope: !3101)
!3137 = !DILocation(line: 871, column: 3, scope: !3101)
!3138 = distinct !DISubprogram(name: "lua_dump", scope: !3, file: !3, line: 875, type: !3139, isLocal: false, isDefinition: true, scopeLine: 875, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3145)
!3139 = !DISubroutineType(types: !3140)
!3140 = !{!8, !131, !3141, !35}
!3141 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Writer", file: !86, line: 60, baseType: !3142)
!3142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3143, size: 64)
!3143 = !DISubroutineType(types: !3144)
!3144 = !{!8, !131, !1862, !48, !35}
!3145 = !{!3146, !3147, !3148, !3149, !3150}
!3146 = !DILocalVariable(name: "L", arg: 1, scope: !3138, file: !3, line: 875, type: !131)
!3147 = !DILocalVariable(name: "writer", arg: 2, scope: !3138, file: !3, line: 875, type: !3141)
!3148 = !DILocalVariable(name: "data", arg: 3, scope: !3138, file: !3, line: 875, type: !35)
!3149 = !DILocalVariable(name: "status", scope: !3138, file: !3, line: 876, type: !8)
!3150 = !DILocalVariable(name: "o", scope: !3138, file: !3, line: 877, type: !74)
!3151 = !DILocation(line: 875, column: 34, scope: !3138)
!3152 = !DILocation(line: 875, column: 48, scope: !3138)
!3153 = !DILocation(line: 875, column: 62, scope: !3138)
!3154 = !DILocation(line: 880, column: 10, scope: !3138)
!3155 = !DILocation(line: 877, column: 11, scope: !3138)
!3156 = !DILocation(line: 881, column: 7, scope: !3157)
!3157 = distinct !DILexicalBlock(scope: !3138, file: !3, line: 881, column: 7)
!3158 = !DILocation(line: 881, column: 7, scope: !3138)
!3159 = !DILocation(line: 882, column: 41, scope: !3157)
!3160 = !DILocation(line: 882, column: 14, scope: !3157)
!3161 = !DILocation(line: 876, column: 7, scope: !3138)
!3162 = !DILocation(line: 882, column: 5, scope: !3157)
!3163 = !DILocation(line: 0, scope: !3157)
!3164 = !DILocation(line: 886, column: 3, scope: !3138)
!3165 = distinct !DISubprogram(name: "lua_status", scope: !3, file: !3, line: 890, type: !129, isLocal: false, isDefinition: true, scopeLine: 890, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3166)
!3166 = !{!3167}
!3167 = !DILocalVariable(name: "L", arg: 1, scope: !3165, file: !3, line: 890, type: !131)
!3168 = !DILocation(line: 890, column: 37, scope: !3165)
!3169 = !DILocation(line: 891, column: 13, scope: !3165)
!3170 = !{!374, !376, i64 10}
!3171 = !DILocation(line: 891, column: 10, scope: !3165)
!3172 = !DILocation(line: 891, column: 3, scope: !3165)
!3173 = distinct !DISubprogram(name: "lua_gc", scope: !3, file: !3, line: 899, type: !1054, isLocal: false, isDefinition: true, scopeLine: 899, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3174)
!3174 = !{!3175, !3176, !3177, !3178, !3179, !3180}
!3175 = !DILocalVariable(name: "L", arg: 1, scope: !3173, file: !3, line: 899, type: !131)
!3176 = !DILocalVariable(name: "what", arg: 2, scope: !3173, file: !3, line: 899, type: !8)
!3177 = !DILocalVariable(name: "data", arg: 3, scope: !3173, file: !3, line: 899, type: !8)
!3178 = !DILocalVariable(name: "res", scope: !3173, file: !3, line: 900, type: !8)
!3179 = !DILocalVariable(name: "g", scope: !3173, file: !3, line: 901, type: !143)
!3180 = !DILocalVariable(name: "a", scope: !3181, file: !3, line: 927, type: !180)
!3181 = distinct !DILexicalBlock(scope: !3182, file: !3, line: 926, column: 22)
!3182 = distinct !DILexicalBlock(scope: !3173, file: !3, line: 904, column: 17)
!3183 = !DILocation(line: 899, column: 32, scope: !3173)
!3184 = !DILocation(line: 899, column: 39, scope: !3173)
!3185 = !DILocation(line: 899, column: 49, scope: !3173)
!3186 = !DILocation(line: 900, column: 7, scope: !3173)
!3187 = !DILocation(line: 903, column: 7, scope: !3173)
!3188 = !DILocation(line: 901, column: 17, scope: !3173)
!3189 = !DILocation(line: 904, column: 3, scope: !3173)
!3190 = !DILocation(line: 906, column: 10, scope: !3191)
!3191 = distinct !DILexicalBlock(scope: !3182, file: !3, line: 905, column: 22)
!3192 = !DILocation(line: 906, column: 22, scope: !3191)
!3193 = !DILocation(line: 907, column: 7, scope: !3191)
!3194 = !DILocation(line: 910, column: 27, scope: !3195)
!3195 = distinct !DILexicalBlock(scope: !3182, file: !3, line: 909, column: 25)
!3196 = !DILocation(line: 910, column: 10, scope: !3195)
!3197 = !DILocation(line: 910, column: 22, scope: !3195)
!3198 = !DILocation(line: 911, column: 7, scope: !3195)
!3199 = !DILocation(line: 914, column: 7, scope: !3200)
!3200 = distinct !DILexicalBlock(scope: !3182, file: !3, line: 913, column: 25)
!3201 = !DILocation(line: 915, column: 7, scope: !3200)
!3202 = !DILocation(line: 919, column: 13, scope: !3203)
!3203 = distinct !DILexicalBlock(scope: !3182, file: !3, line: 917, column: 23)
!3204 = !DILocation(line: 920, column: 7, scope: !3203)
!3205 = !DILocation(line: 923, column: 13, scope: !3206)
!3206 = distinct !DILexicalBlock(scope: !3182, file: !3, line: 922, column: 24)
!3207 = !DILocation(line: 924, column: 7, scope: !3206)
!3208 = !DILocation(line: 927, column: 19, scope: !3181)
!3209 = !DILocation(line: 927, column: 38, scope: !3181)
!3210 = !DILocation(line: 927, column: 14, scope: !3181)
!3211 = !DILocation(line: 928, column: 19, scope: !3212)
!3212 = distinct !DILexicalBlock(scope: !3181, file: !3, line: 928, column: 11)
!3213 = !DILocation(line: 928, column: 11, scope: !3181)
!3214 = !DILocation(line: 931, column: 12, scope: !3212)
!3215 = !DILocation(line: 931, column: 24, scope: !3212)
!3216 = !DILocation(line: 932, column: 7, scope: !3181)
!3217 = !DILocation(line: 932, column: 29, scope: !3181)
!3218 = !DILocation(line: 933, column: 9, scope: !3219)
!3219 = distinct !DILexicalBlock(scope: !3181, file: !3, line: 932, column: 47)
!3220 = !DILocation(line: 934, column: 16, scope: !3221)
!3221 = distinct !DILexicalBlock(scope: !3219, file: !3, line: 934, column: 13)
!3222 = !{!489, !376, i64 33}
!3223 = !DILocation(line: 934, column: 24, scope: !3221)
!3224 = !DILocation(line: 934, column: 13, scope: !3219)
!3225 = distinct !{!3225, !3216, !3226}
!3226 = !DILocation(line: 938, column: 7, scope: !3181)
!3227 = !DILocation(line: 932, column: 17, scope: !3181)
!3228 = !DILocation(line: 932, column: 35, scope: !3181)
!3229 = !DILocation(line: 936, column: 11, scope: !3230)
!3230 = distinct !DILexicalBlock(scope: !3221, file: !3, line: 934, column: 37)
!3231 = !DILocation(line: 942, column: 16, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !3182, file: !3, line: 941, column: 26)
!3233 = !{!489, !378, i64 144}
!3234 = !DILocation(line: 943, column: 18, scope: !3232)
!3235 = !DILocation(line: 944, column: 7, scope: !3232)
!3236 = !DILocation(line: 947, column: 16, scope: !3237)
!3237 = distinct !DILexicalBlock(scope: !3182, file: !3, line: 946, column: 28)
!3238 = !{!489, !378, i64 148}
!3239 = !DILocation(line: 948, column: 20, scope: !3237)
!3240 = !DILocation(line: 949, column: 7, scope: !3237)
!3241 = !DILocation(line: 0, scope: !3173)
!3242 = !DILocation(line: 954, column: 3, scope: !3173)
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
!3257 = !DILocation(line: 49, column: 38, scope: !561, inlinedAt: !3258)
!3258 = distinct !DILocation(line: 977, column: 7, scope: !3249)
!3259 = !DILocation(line: 49, column: 45, scope: !561, inlinedAt: !3258)
!3260 = !DILocation(line: 50, column: 11, scope: !568, inlinedAt: !3258)
!3261 = !DILocation(line: 50, column: 7, scope: !561, inlinedAt: !3258)
!3262 = !DILocation(line: 51, column: 20, scope: !567, inlinedAt: !3258)
!3263 = !DILocation(line: 51, column: 32, scope: !567, inlinedAt: !3258)
!3264 = !DILocation(line: 51, column: 25, scope: !567, inlinedAt: !3258)
!3265 = !DILocation(line: 51, column: 13, scope: !567, inlinedAt: !3258)
!3266 = !DILocation(line: 53, column: 17, scope: !589, inlinedAt: !3258)
!3267 = !DILocation(line: 53, column: 11, scope: !589, inlinedAt: !3258)
!3268 = !DILocation(line: 53, column: 9, scope: !567, inlinedAt: !3258)
!3269 = !DILocation(line: 0, scope: !589, inlinedAt: !3258)
!3270 = !DILocation(line: 54, column: 10, scope: !589, inlinedAt: !3258)
!3271 = !DILocation(line: 56, column: 16, scope: !572, inlinedAt: !3258)
!3272 = !DILocation(line: 56, column: 12, scope: !568, inlinedAt: !3258)
!3273 = !DILocation(line: 58, column: 15, scope: !597, inlinedAt: !3258)
!3274 = !DILocation(line: 58, column: 19, scope: !597, inlinedAt: !3258)
!3275 = !DILocation(line: 58, column: 5, scope: !597, inlinedAt: !3258)
!3276 = !DILocation(line: 60, column: 8, scope: !572, inlinedAt: !3258)
!3277 = !DILocation(line: 61, column: 36, scope: !571, inlinedAt: !3258)
!3278 = !DILocation(line: 61, column: 29, scope: !571, inlinedAt: !3258)
!3279 = !DILocation(line: 63, column: 23, scope: !570, inlinedAt: !3258)
!3280 = !DILocation(line: 63, column: 16, scope: !570, inlinedAt: !3258)
!3281 = !DILocation(line: 64, column: 7, scope: !576, inlinedAt: !3258)
!3282 = !DILocation(line: 67, column: 35, scope: !571, inlinedAt: !3258)
!3283 = !DILocation(line: 67, column: 28, scope: !571, inlinedAt: !3258)
!3284 = !DILocation(line: 69, column: 23, scope: !578, inlinedAt: !3258)
!3285 = !DILocation(line: 69, column: 16, scope: !578, inlinedAt: !3258)
!3286 = !DILocation(line: 70, column: 30, scope: !578, inlinedAt: !3258)
!3287 = !DILocation(line: 71, column: 30, scope: !578, inlinedAt: !3258)
!3288 = !DILocation(line: 71, column: 22, scope: !578, inlinedAt: !3258)
!3289 = !DILocation(line: 71, column: 19, scope: !578, inlinedAt: !3258)
!3290 = !DILocation(line: 71, column: 14, scope: !578, inlinedAt: !3258)
!3291 = !DILocation(line: 72, column: 39, scope: !578, inlinedAt: !3258)
!3292 = !DILocation(line: 72, column: 20, scope: !578, inlinedAt: !3258)
!3293 = !DILocation(line: 0, scope: !571, inlinedAt: !3258)
!3294 = !DILocation(line: 76, column: 1, scope: !561, inlinedAt: !3258)
!3295 = !DILocation(line: 974, column: 9, scope: !3249)
!3296 = !DILocation(line: 979, column: 23, scope: !3249)
!3297 = !DILocation(line: 979, column: 37, scope: !3249)
!3298 = !DILocation(line: 979, column: 41, scope: !3249)
!3299 = !DILocation(line: 979, column: 10, scope: !3249)
!3300 = !DILocation(line: 975, column: 7, scope: !3249)
!3301 = !DILocation(line: 980, column: 7, scope: !3302)
!3302 = distinct !DILexicalBlock(scope: !3249, file: !3, line: 980, column: 7)
!3303 = !DILocation(line: 980, column: 7, scope: !3249)
!3304 = !DILocation(line: 0, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !3306, file: !3, line: 981, column: 5)
!3306 = distinct !DILexicalBlock(scope: !3302, file: !3, line: 980, column: 13)
!3307 = !DILocation(line: 986, column: 3, scope: !3249)
!3308 = distinct !DISubprogram(name: "lua_concat", scope: !3, file: !3, line: 990, type: !525, isLocal: false, isDefinition: true, scopeLine: 990, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3309)
!3309 = !{!3310, !3311, !3312}
!3310 = !DILocalVariable(name: "L", arg: 1, scope: !3308, file: !3, line: 990, type: !131)
!3311 = !DILocalVariable(name: "n", arg: 2, scope: !3308, file: !3, line: 990, type: !8)
!3312 = !DILocalVariable(name: "i_o", scope: !3313, file: !3, line: 999, type: !74)
!3313 = distinct !DILexicalBlock(scope: !3314, file: !3, line: 999, column: 5)
!3314 = distinct !DILexicalBlock(scope: !3315, file: !3, line: 998, column: 20)
!3315 = distinct !DILexicalBlock(scope: !3316, file: !3, line: 998, column: 12)
!3316 = distinct !DILexicalBlock(scope: !3308, file: !3, line: 993, column: 7)
!3317 = !DILocation(line: 990, column: 37, scope: !3308)
!3318 = !DILocation(line: 990, column: 44, scope: !3308)
!3319 = !DILocation(line: 993, column: 9, scope: !3316)
!3320 = !DILocation(line: 993, column: 7, scope: !3308)
!3321 = !DILocation(line: 994, column: 5, scope: !3322)
!3322 = distinct !DILexicalBlock(scope: !3323, file: !3, line: 994, column: 5)
!3323 = distinct !DILexicalBlock(scope: !3324, file: !3, line: 994, column: 5)
!3324 = distinct !DILexicalBlock(scope: !3316, file: !3, line: 993, column: 15)
!3325 = !DILocation(line: 994, column: 5, scope: !3323)
!3326 = !DILocation(line: 995, column: 23, scope: !3324)
!3327 = !DILocation(line: 995, column: 50, scope: !3324)
!3328 = !DILocation(line: 995, column: 5, scope: !3324)
!3329 = !DILocation(line: 996, column: 17, scope: !3324)
!3330 = !DILocation(line: 996, column: 12, scope: !3324)
!3331 = !DILocation(line: 997, column: 3, scope: !3324)
!3332 = !DILocation(line: 998, column: 14, scope: !3315)
!3333 = !DILocation(line: 998, column: 12, scope: !3316)
!3334 = !DILocation(line: 999, column: 5, scope: !3313)
!3335 = !DILocation(line: 1000, column: 5, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !3314, file: !3, line: 1000, column: 5)
!3337 = !DILocation(line: 1001, column: 3, scope: !3314)
!3338 = !DILocation(line: 0, scope: !3324)
!3339 = !DILocation(line: 1004, column: 1, scope: !3308)
!3340 = distinct !DISubprogram(name: "lua_getallocf", scope: !3, file: !3, line: 1007, type: !3341, isLocal: false, isDefinition: true, scopeLine: 1007, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3344)
!3341 = !DISubroutineType(types: !3342)
!3342 = !{!157, !131, !3343}
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!3344 = !{!3345, !3346, !3347}
!3345 = !DILocalVariable(name: "L", arg: 1, scope: !3340, file: !3, line: 1007, type: !131)
!3346 = !DILocalVariable(name: "ud", arg: 2, scope: !3340, file: !3, line: 1007, type: !3343)
!3347 = !DILocalVariable(name: "f", scope: !3340, file: !3, line: 1008, type: !157)
!3348 = !DILocation(line: 1007, column: 45, scope: !3340)
!3349 = !DILocation(line: 1007, column: 55, scope: !3340)
!3350 = !DILocation(line: 1010, column: 7, scope: !3351)
!3351 = distinct !DILexicalBlock(scope: !3340, file: !3, line: 1010, column: 7)
!3352 = !DILocation(line: 1010, column: 7, scope: !3340)
!3353 = !DILocation(line: 0, scope: !3351)
!3354 = !DILocation(line: 1010, column: 17, scope: !3351)
!3355 = !DILocation(line: 1010, column: 23, scope: !3351)
!3356 = !{!489, !375, i64 24}
!3357 = !DILocation(line: 1010, column: 15, scope: !3351)
!3358 = !DILocation(line: 1010, column: 11, scope: !3351)
!3359 = !DILocation(line: 1011, column: 7, scope: !3340)
!3360 = !DILocation(line: 1011, column: 13, scope: !3340)
!3361 = !{!489, !375, i64 16}
!3362 = !DILocation(line: 1008, column: 13, scope: !3340)
!3363 = !DILocation(line: 1013, column: 3, scope: !3340)
!3364 = distinct !DISubprogram(name: "lua_setallocf", scope: !3, file: !3, line: 1017, type: !3365, isLocal: false, isDefinition: true, scopeLine: 1017, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3367)
!3365 = !DISubroutineType(types: !3366)
!3366 = !{null, !131, !157, !35}
!3367 = !{!3368, !3369, !3370}
!3368 = !DILocalVariable(name: "L", arg: 1, scope: !3364, file: !3, line: 1017, type: !131)
!3369 = !DILocalVariable(name: "f", arg: 2, scope: !3364, file: !3, line: 1017, type: !157)
!3370 = !DILocalVariable(name: "ud", arg: 3, scope: !3364, file: !3, line: 1017, type: !35)
!3371 = !DILocation(line: 1017, column: 40, scope: !3364)
!3372 = !DILocation(line: 1017, column: 53, scope: !3364)
!3373 = !DILocation(line: 1017, column: 62, scope: !3364)
!3374 = !DILocation(line: 1019, column: 3, scope: !3364)
!3375 = !DILocation(line: 1019, column: 9, scope: !3364)
!3376 = !DILocation(line: 1019, column: 12, scope: !3364)
!3377 = !DILocation(line: 1020, column: 9, scope: !3364)
!3378 = !DILocation(line: 1020, column: 18, scope: !3364)
!3379 = !DILocation(line: 1022, column: 1, scope: !3364)
!3380 = distinct !DISubprogram(name: "lua_newuserdata", scope: !3, file: !3, line: 1025, type: !3381, isLocal: false, isDefinition: true, scopeLine: 1025, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3383)
!3381 = !DISubroutineType(types: !3382)
!3382 = !{!35, !131, !48}
!3383 = !{!3384, !3385, !3386, !3389}
!3384 = !DILocalVariable(name: "L", arg: 1, scope: !3380, file: !3, line: 1025, type: !131)
!3385 = !DILocalVariable(name: "size", arg: 2, scope: !3380, file: !3, line: 1025, type: !48)
!3386 = !DILocalVariable(name: "u", scope: !3380, file: !3, line: 1026, type: !3387)
!3387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3388, size: 64)
!3388 = !DIDerivedType(tag: DW_TAG_typedef, name: "Udata", file: !11, line: 223, baseType: !54)
!3389 = !DILocalVariable(name: "i_o", scope: !3390, file: !3, line: 1030, type: !74)
!3390 = distinct !DILexicalBlock(scope: !3380, file: !3, line: 1030, column: 3)
!3391 = !DILocation(line: 1025, column: 43, scope: !3380)
!3392 = !DILocation(line: 1025, column: 53, scope: !3380)
!3393 = !DILocation(line: 1028, column: 3, scope: !3394)
!3394 = distinct !DILexicalBlock(scope: !3395, file: !3, line: 1028, column: 3)
!3395 = distinct !DILexicalBlock(scope: !3380, file: !3, line: 1028, column: 3)
!3396 = !DILocation(line: 1028, column: 3, scope: !3395)
!3397 = !DILocation(line: 79, column: 38, scope: !2078, inlinedAt: !3398)
!3398 = distinct !DILocation(line: 1029, column: 30, scope: !3380)
!3399 = !DILocation(line: 80, column: 10, scope: !2086, inlinedAt: !3398)
!3400 = !DILocation(line: 80, column: 19, scope: !2086, inlinedAt: !3398)
!3401 = !DILocation(line: 80, column: 13, scope: !2086, inlinedAt: !3398)
!3402 = !DILocation(line: 80, column: 7, scope: !2078, inlinedAt: !3398)
!3403 = !DILocation(line: 81, column: 12, scope: !2086, inlinedAt: !3398)
!3404 = !DILocation(line: 81, column: 5, scope: !2086, inlinedAt: !3398)
!3405 = !DILocation(line: 83, column: 21, scope: !2085, inlinedAt: !3398)
!3406 = !DILocation(line: 83, column: 14, scope: !2085, inlinedAt: !3398)
!3407 = !DILocation(line: 84, column: 20, scope: !2085, inlinedAt: !3398)
!3408 = !DILocation(line: 0, scope: !3380)
!3409 = !DILocation(line: 86, column: 1, scope: !2078, inlinedAt: !3398)
!3410 = !DILocation(line: 1029, column: 7, scope: !3380)
!3411 = !DILocation(line: 1026, column: 10, scope: !3380)
!3412 = !DILocation(line: 1030, column: 3, scope: !3390)
!3413 = !DILocation(line: 1031, column: 3, scope: !3414)
!3414 = distinct !DILexicalBlock(scope: !3380, file: !3, line: 1031, column: 3)
!3415 = !DILocation(line: 1033, column: 12, scope: !3380)
!3416 = !DILocation(line: 1033, column: 10, scope: !3380)
!3417 = !DILocation(line: 1033, column: 3, scope: !3380)
!3418 = distinct !DISubprogram(name: "lua_getupvalue", scope: !3, file: !3, line: 1057, type: !3419, isLocal: false, isDefinition: true, scopeLine: 1057, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3421)
!3419 = !DISubroutineType(types: !3420)
!3420 = !{!257, !131, !8, !8}
!3421 = !{!3422, !3423, !3424, !3425, !3426, !3427, !3431}
!3422 = !DILocalVariable(name: "L", arg: 1, scope: !3418, file: !3, line: 1057, type: !131)
!3423 = !DILocalVariable(name: "funcindex", arg: 2, scope: !3418, file: !3, line: 1057, type: !8)
!3424 = !DILocalVariable(name: "n", arg: 3, scope: !3418, file: !3, line: 1057, type: !8)
!3425 = !DILocalVariable(name: "name", scope: !3418, file: !3, line: 1058, type: !257)
!3426 = !DILocalVariable(name: "val", scope: !3418, file: !3, line: 1059, type: !74)
!3427 = !DILocalVariable(name: "o2", scope: !3428, file: !3, line: 1063, type: !362)
!3428 = distinct !DILexicalBlock(scope: !3429, file: !3, line: 1063, column: 5)
!3429 = distinct !DILexicalBlock(scope: !3430, file: !3, line: 1062, column: 13)
!3430 = distinct !DILexicalBlock(scope: !3418, file: !3, line: 1062, column: 7)
!3431 = !DILocalVariable(name: "o1", scope: !3428, file: !3, line: 1063, type: !74)
!3432 = !DILocation(line: 1057, column: 48, scope: !3418)
!3433 = !DILocation(line: 1057, column: 55, scope: !3418)
!3434 = !DILocation(line: 1057, column: 70, scope: !3418)
!3435 = !DILocation(line: 49, column: 38, scope: !561, inlinedAt: !3436)
!3436 = distinct !DILocation(line: 1061, column: 22, scope: !3418)
!3437 = !DILocation(line: 49, column: 45, scope: !561, inlinedAt: !3436)
!3438 = !DILocation(line: 50, column: 11, scope: !568, inlinedAt: !3436)
!3439 = !DILocation(line: 50, column: 7, scope: !561, inlinedAt: !3436)
!3440 = !DILocation(line: 51, column: 20, scope: !567, inlinedAt: !3436)
!3441 = !DILocation(line: 51, column: 32, scope: !567, inlinedAt: !3436)
!3442 = !DILocation(line: 51, column: 25, scope: !567, inlinedAt: !3436)
!3443 = !DILocation(line: 51, column: 13, scope: !567, inlinedAt: !3436)
!3444 = !DILocation(line: 53, column: 17, scope: !589, inlinedAt: !3436)
!3445 = !DILocation(line: 53, column: 11, scope: !589, inlinedAt: !3436)
!3446 = !DILocation(line: 53, column: 9, scope: !567, inlinedAt: !3436)
!3447 = !DILocation(line: 0, scope: !589, inlinedAt: !3436)
!3448 = !DILocation(line: 54, column: 10, scope: !589, inlinedAt: !3436)
!3449 = !DILocation(line: 56, column: 16, scope: !572, inlinedAt: !3436)
!3450 = !DILocation(line: 56, column: 12, scope: !568, inlinedAt: !3436)
!3451 = !DILocation(line: 58, column: 15, scope: !597, inlinedAt: !3436)
!3452 = !DILocation(line: 58, column: 19, scope: !597, inlinedAt: !3436)
!3453 = !DILocation(line: 58, column: 5, scope: !597, inlinedAt: !3436)
!3454 = !DILocation(line: 60, column: 8, scope: !572, inlinedAt: !3436)
!3455 = !DILocation(line: 61, column: 36, scope: !571, inlinedAt: !3436)
!3456 = !DILocation(line: 61, column: 29, scope: !571, inlinedAt: !3436)
!3457 = !DILocation(line: 63, column: 23, scope: !570, inlinedAt: !3436)
!3458 = !DILocation(line: 63, column: 16, scope: !570, inlinedAt: !3436)
!3459 = !DILocation(line: 64, column: 7, scope: !576, inlinedAt: !3436)
!3460 = !DILocation(line: 67, column: 35, scope: !571, inlinedAt: !3436)
!3461 = !DILocation(line: 67, column: 28, scope: !571, inlinedAt: !3436)
!3462 = !DILocation(line: 69, column: 23, scope: !578, inlinedAt: !3436)
!3463 = !DILocation(line: 69, column: 16, scope: !578, inlinedAt: !3436)
!3464 = !DILocation(line: 70, column: 30, scope: !578, inlinedAt: !3436)
!3465 = !DILocation(line: 71, column: 30, scope: !578, inlinedAt: !3436)
!3466 = !DILocation(line: 71, column: 22, scope: !578, inlinedAt: !3436)
!3467 = !DILocation(line: 71, column: 19, scope: !578, inlinedAt: !3436)
!3468 = !DILocation(line: 71, column: 14, scope: !578, inlinedAt: !3436)
!3469 = !DILocation(line: 72, column: 39, scope: !578, inlinedAt: !3436)
!3470 = !DILocation(line: 72, column: 20, scope: !578, inlinedAt: !3436)
!3471 = !DILocation(line: 0, scope: !571, inlinedAt: !3436)
!3472 = !DILocation(line: 76, column: 1, scope: !561, inlinedAt: !3436)
!3473 = !DILocation(line: 1059, column: 11, scope: !3418)
!3474 = !DILocalVariable(name: "fi", arg: 1, scope: !3475, file: !3, line: 1039, type: !140)
!3475 = distinct !DISubprogram(name: "aux_upvalue", scope: !3, file: !3, line: 1039, type: !3476, isLocal: true, isDefinition: true, scopeLine: 1039, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3479)
!3476 = !DISubroutineType(types: !3477)
!3477 = !{!257, !140, !8, !3478}
!3478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!3479 = !{!3474, !3480, !3481, !3482, !3483}
!3480 = !DILocalVariable(name: "n", arg: 2, scope: !3475, file: !3, line: 1039, type: !8)
!3481 = !DILocalVariable(name: "val", arg: 3, scope: !3475, file: !3, line: 1039, type: !3478)
!3482 = !DILocalVariable(name: "f", scope: !3475, file: !3, line: 1040, type: !573)
!3483 = !DILocalVariable(name: "p", scope: !3484, file: !3, line: 1049, type: !3486)
!3484 = distinct !DILexicalBlock(scope: !3485, file: !3, line: 1048, column: 8)
!3485 = distinct !DILexicalBlock(scope: !3475, file: !3, line: 1043, column: 7)
!3486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3487, size: 64)
!3487 = !DIDerivedType(tag: DW_TAG_typedef, name: "Proto", file: !11, line: 253, baseType: !298)
!3488 = !DILocation(line: 1039, column: 39, scope: !3475, inlinedAt: !3489)
!3489 = distinct !DILocation(line: 1061, column: 10, scope: !3418)
!3490 = !DILocation(line: 1039, column: 47, scope: !3475, inlinedAt: !3489)
!3491 = !DILocation(line: 1039, column: 59, scope: !3475, inlinedAt: !3489)
!3492 = !DILocation(line: 1041, column: 8, scope: !3493, inlinedAt: !3489)
!3493 = distinct !DILexicalBlock(scope: !3475, file: !3, line: 1041, column: 7)
!3494 = !DILocation(line: 1041, column: 7, scope: !3475, inlinedAt: !3489)
!3495 = !DILocation(line: 1042, column: 7, scope: !3475, inlinedAt: !3489)
!3496 = !DILocation(line: 1040, column: 12, scope: !3475, inlinedAt: !3489)
!3497 = !DILocation(line: 1043, column: 12, scope: !3485, inlinedAt: !3489)
!3498 = !DILocation(line: 1043, column: 7, scope: !3485, inlinedAt: !3489)
!3499 = !DILocation(line: 1043, column: 7, scope: !3475, inlinedAt: !3489)
!3500 = !DILocation(line: 1044, column: 13, scope: !3501, inlinedAt: !3489)
!3501 = distinct !DILexicalBlock(scope: !3502, file: !3, line: 1044, column: 9)
!3502 = distinct !DILexicalBlock(scope: !3485, file: !3, line: 1043, column: 17)
!3503 = !DILocation(line: 1044, column: 18, scope: !3501, inlinedAt: !3489)
!3504 = !DILocation(line: 1044, column: 31, scope: !3501, inlinedAt: !3489)
!3505 = !DILocation(line: 1044, column: 26, scope: !3501, inlinedAt: !3489)
!3506 = !DILocation(line: 1044, column: 23, scope: !3501, inlinedAt: !3489)
!3507 = !DILocation(line: 1044, column: 9, scope: !3502, inlinedAt: !3489)
!3508 = !DILocation(line: 1045, column: 27, scope: !3502, inlinedAt: !3489)
!3509 = !DILocation(line: 1045, column: 13, scope: !3502, inlinedAt: !3489)
!3510 = !DILocation(line: 1058, column: 15, scope: !3418)
!3511 = !DILocation(line: 1062, column: 7, scope: !3418)
!3512 = !DILocation(line: 1049, column: 21, scope: !3484, inlinedAt: !3489)
!3513 = !DILocation(line: 1049, column: 12, scope: !3484, inlinedAt: !3489)
!3514 = !DILocation(line: 1050, column: 13, scope: !3515, inlinedAt: !3489)
!3515 = distinct !DILexicalBlock(scope: !3484, file: !3, line: 1050, column: 9)
!3516 = !DILocation(line: 1050, column: 18, scope: !3515, inlinedAt: !3489)
!3517 = !DILocation(line: 1050, column: 29, scope: !3515, inlinedAt: !3489)
!3518 = !{!3519, !378, i64 72}
!3519 = !{!"Proto", !375, i64 0, !376, i64 8, !376, i64 9, !375, i64 16, !375, i64 24, !375, i64 32, !375, i64 40, !375, i64 48, !375, i64 56, !375, i64 64, !378, i64 72, !378, i64 76, !378, i64 80, !378, i64 84, !378, i64 88, !378, i64 92, !378, i64 96, !378, i64 100, !375, i64 104, !376, i64 112, !376, i64 113, !376, i64 114, !376, i64 115}
!3520 = !DILocation(line: 1050, column: 23, scope: !3515, inlinedAt: !3489)
!3521 = !DILocation(line: 1050, column: 9, scope: !3484, inlinedAt: !3489)
!3522 = !DILocation(line: 1050, column: 44, scope: !3515, inlinedAt: !3489)
!3523 = !DILocation(line: 1054, column: 1, scope: !3475, inlinedAt: !3489)
!3524 = !DILocation(line: 0, scope: !3418)
!3525 = !DILocation(line: 1051, column: 17, scope: !3484, inlinedAt: !3489)
!3526 = !DILocation(line: 1051, column: 25, scope: !3484, inlinedAt: !3489)
!3527 = !DILocation(line: 1051, column: 12, scope: !3484, inlinedAt: !3489)
!3528 = !DILocation(line: 1051, column: 30, scope: !3484, inlinedAt: !3489)
!3529 = !{!492, !375, i64 16}
!3530 = !DILocation(line: 1052, column: 12, scope: !3484, inlinedAt: !3489)
!3531 = !{!3519, !375, i64 56}
!3532 = !DILocation(line: 1052, column: 5, scope: !3484, inlinedAt: !3489)
!3533 = !DILocation(line: 1063, column: 5, scope: !3428)
!3534 = !DILocation(line: 1064, column: 5, scope: !3535)
!3535 = distinct !DILexicalBlock(scope: !3429, file: !3, line: 1064, column: 5)
!3536 = !DILocation(line: 1065, column: 3, scope: !3429)
!3537 = !DILocation(line: 0, scope: !3429)
!3538 = !DILocation(line: 1067, column: 3, scope: !3418)
!3539 = distinct !DISubprogram(name: "lua_setupvalue", scope: !3, file: !3, line: 1071, type: !3419, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3540)
!3540 = !{!3541, !3542, !3543, !3544, !3545, !3546, !3547, !3551}
!3541 = !DILocalVariable(name: "L", arg: 1, scope: !3539, file: !3, line: 1071, type: !131)
!3542 = !DILocalVariable(name: "funcindex", arg: 2, scope: !3539, file: !3, line: 1071, type: !8)
!3543 = !DILocalVariable(name: "n", arg: 3, scope: !3539, file: !3, line: 1071, type: !8)
!3544 = !DILocalVariable(name: "name", scope: !3539, file: !3, line: 1072, type: !257)
!3545 = !DILocalVariable(name: "val", scope: !3539, file: !3, line: 1073, type: !74)
!3546 = !DILocalVariable(name: "fi", scope: !3539, file: !3, line: 1074, type: !140)
!3547 = !DILocalVariable(name: "o2", scope: !3548, file: !3, line: 1081, type: !362)
!3548 = distinct !DILexicalBlock(scope: !3549, file: !3, line: 1081, column: 5)
!3549 = distinct !DILexicalBlock(scope: !3550, file: !3, line: 1079, column: 13)
!3550 = distinct !DILexicalBlock(scope: !3539, file: !3, line: 1079, column: 7)
!3551 = !DILocalVariable(name: "o1", scope: !3548, file: !3, line: 1081, type: !74)
!3552 = !DILocation(line: 1071, column: 48, scope: !3539)
!3553 = !DILocation(line: 1071, column: 55, scope: !3539)
!3554 = !DILocation(line: 1071, column: 70, scope: !3539)
!3555 = !DILocation(line: 49, column: 38, scope: !561, inlinedAt: !3556)
!3556 = distinct !DILocation(line: 1076, column: 8, scope: !3539)
!3557 = !DILocation(line: 49, column: 45, scope: !561, inlinedAt: !3556)
!3558 = !DILocation(line: 50, column: 11, scope: !568, inlinedAt: !3556)
!3559 = !DILocation(line: 50, column: 7, scope: !561, inlinedAt: !3556)
!3560 = !DILocation(line: 51, column: 20, scope: !567, inlinedAt: !3556)
!3561 = !DILocation(line: 51, column: 32, scope: !567, inlinedAt: !3556)
!3562 = !DILocation(line: 51, column: 25, scope: !567, inlinedAt: !3556)
!3563 = !DILocation(line: 51, column: 13, scope: !567, inlinedAt: !3556)
!3564 = !DILocation(line: 53, column: 17, scope: !589, inlinedAt: !3556)
!3565 = !DILocation(line: 53, column: 11, scope: !589, inlinedAt: !3556)
!3566 = !DILocation(line: 53, column: 9, scope: !567, inlinedAt: !3556)
!3567 = !DILocation(line: 0, scope: !589, inlinedAt: !3556)
!3568 = !DILocation(line: 54, column: 10, scope: !589, inlinedAt: !3556)
!3569 = !DILocation(line: 56, column: 16, scope: !572, inlinedAt: !3556)
!3570 = !DILocation(line: 56, column: 12, scope: !568, inlinedAt: !3556)
!3571 = !DILocation(line: 58, column: 15, scope: !597, inlinedAt: !3556)
!3572 = !DILocation(line: 58, column: 19, scope: !597, inlinedAt: !3556)
!3573 = !DILocation(line: 58, column: 5, scope: !597, inlinedAt: !3556)
!3574 = !DILocation(line: 60, column: 8, scope: !572, inlinedAt: !3556)
!3575 = !DILocation(line: 61, column: 36, scope: !571, inlinedAt: !3556)
!3576 = !DILocation(line: 61, column: 29, scope: !571, inlinedAt: !3556)
!3577 = !DILocation(line: 63, column: 23, scope: !570, inlinedAt: !3556)
!3578 = !DILocation(line: 63, column: 16, scope: !570, inlinedAt: !3556)
!3579 = !DILocation(line: 64, column: 7, scope: !576, inlinedAt: !3556)
!3580 = !DILocation(line: 67, column: 35, scope: !571, inlinedAt: !3556)
!3581 = !DILocation(line: 67, column: 28, scope: !571, inlinedAt: !3556)
!3582 = !DILocation(line: 69, column: 23, scope: !578, inlinedAt: !3556)
!3583 = !DILocation(line: 69, column: 16, scope: !578, inlinedAt: !3556)
!3584 = !DILocation(line: 70, column: 30, scope: !578, inlinedAt: !3556)
!3585 = !DILocation(line: 71, column: 30, scope: !578, inlinedAt: !3556)
!3586 = !DILocation(line: 71, column: 22, scope: !578, inlinedAt: !3556)
!3587 = !DILocation(line: 71, column: 19, scope: !578, inlinedAt: !3556)
!3588 = !DILocation(line: 71, column: 14, scope: !578, inlinedAt: !3556)
!3589 = !DILocation(line: 72, column: 39, scope: !578, inlinedAt: !3556)
!3590 = !DILocation(line: 72, column: 20, scope: !578, inlinedAt: !3556)
!3591 = !DILocation(line: 0, scope: !571, inlinedAt: !3556)
!3592 = !DILocation(line: 76, column: 1, scope: !561, inlinedAt: !3556)
!3593 = !DILocation(line: 1074, column: 9, scope: !3539)
!3594 = !DILocation(line: 1073, column: 11, scope: !3539)
!3595 = !DILocation(line: 1039, column: 39, scope: !3475, inlinedAt: !3596)
!3596 = distinct !DILocation(line: 1078, column: 10, scope: !3539)
!3597 = !DILocation(line: 1039, column: 47, scope: !3475, inlinedAt: !3596)
!3598 = !DILocation(line: 1039, column: 59, scope: !3475, inlinedAt: !3596)
!3599 = !DILocation(line: 1041, column: 8, scope: !3493, inlinedAt: !3596)
!3600 = !DILocation(line: 1041, column: 7, scope: !3475, inlinedAt: !3596)
!3601 = !DILocation(line: 1042, column: 7, scope: !3475, inlinedAt: !3596)
!3602 = !DILocation(line: 1040, column: 12, scope: !3475, inlinedAt: !3596)
!3603 = !DILocation(line: 1043, column: 12, scope: !3485, inlinedAt: !3596)
!3604 = !DILocation(line: 1043, column: 7, scope: !3485, inlinedAt: !3596)
!3605 = !DILocation(line: 1043, column: 7, scope: !3475, inlinedAt: !3596)
!3606 = !DILocation(line: 1044, column: 13, scope: !3501, inlinedAt: !3596)
!3607 = !DILocation(line: 1044, column: 18, scope: !3501, inlinedAt: !3596)
!3608 = !DILocation(line: 1044, column: 31, scope: !3501, inlinedAt: !3596)
!3609 = !DILocation(line: 1044, column: 26, scope: !3501, inlinedAt: !3596)
!3610 = !DILocation(line: 1044, column: 23, scope: !3501, inlinedAt: !3596)
!3611 = !DILocation(line: 1044, column: 9, scope: !3502, inlinedAt: !3596)
!3612 = !DILocation(line: 1045, column: 27, scope: !3502, inlinedAt: !3596)
!3613 = !DILocation(line: 1045, column: 13, scope: !3502, inlinedAt: !3596)
!3614 = !DILocation(line: 1072, column: 15, scope: !3539)
!3615 = !DILocation(line: 1079, column: 7, scope: !3539)
!3616 = !DILocation(line: 1049, column: 21, scope: !3484, inlinedAt: !3596)
!3617 = !DILocation(line: 1049, column: 12, scope: !3484, inlinedAt: !3596)
!3618 = !DILocation(line: 1050, column: 13, scope: !3515, inlinedAt: !3596)
!3619 = !DILocation(line: 1050, column: 18, scope: !3515, inlinedAt: !3596)
!3620 = !DILocation(line: 1050, column: 29, scope: !3515, inlinedAt: !3596)
!3621 = !DILocation(line: 1050, column: 23, scope: !3515, inlinedAt: !3596)
!3622 = !DILocation(line: 1050, column: 9, scope: !3484, inlinedAt: !3596)
!3623 = !DILocation(line: 1050, column: 44, scope: !3515, inlinedAt: !3596)
!3624 = !DILocation(line: 1054, column: 1, scope: !3475, inlinedAt: !3596)
!3625 = !DILocation(line: 0, scope: !3539)
!3626 = !DILocation(line: 1051, column: 17, scope: !3484, inlinedAt: !3596)
!3627 = !DILocation(line: 1051, column: 25, scope: !3484, inlinedAt: !3596)
!3628 = !DILocation(line: 1051, column: 12, scope: !3484, inlinedAt: !3596)
!3629 = !DILocation(line: 1051, column: 30, scope: !3484, inlinedAt: !3596)
!3630 = !DILocation(line: 1052, column: 12, scope: !3484, inlinedAt: !3596)
!3631 = !DILocation(line: 1052, column: 5, scope: !3484, inlinedAt: !3596)
!3632 = !DILocation(line: 1080, column: 8, scope: !3549)
!3633 = !DILocation(line: 1080, column: 11, scope: !3549)
!3634 = !DILocation(line: 1081, column: 5, scope: !3548)
!3635 = !DILocation(line: 1082, column: 5, scope: !3636)
!3636 = distinct !DILexicalBlock(scope: !3637, file: !3, line: 1082, column: 5)
!3637 = distinct !DILexicalBlock(scope: !3549, file: !3, line: 1082, column: 5)
!3638 = !DILocation(line: 1082, column: 5, scope: !3637)
!3639 = !DILocation(line: 1085, column: 3, scope: !3539)
