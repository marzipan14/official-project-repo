; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lgc.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lgc.c"
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
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, [60 x i8], i32 }
%struct.lua_TValue = type { %union.Value, i32 }
%union.GCObject = type { %struct.lua_State }
%struct.lua_longjmp = type opaque
%struct.GCheader = type { %union.GCObject*, i8, i8 }
%struct.Proto = type { %union.GCObject*, i8, i8, %struct.lua_TValue*, i32*, %struct.Proto**, i32*, %struct.LocVar*, %union.TString**, %union.TString*, i32, i32, i32, i32, i32, i32, i32, i32, %union.GCObject*, i8, i8, i8, i8 }
%struct.LocVar = type { %union.TString*, i32, i32 }
%union.Closure = type { %struct.CClosure }
%struct.CClosure = type { %union.GCObject*, i8, i8, i8, i8, %union.GCObject*, %struct.Table*, i32 (%struct.lua_State*)*, [1 x %struct.lua_TValue] }

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define hidden i64 @luaC_separateudata(%struct.lua_State* nocapture readonly, i32) local_unnamed_addr #0 !dbg !363 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !375
  %4 = load %struct.global_State*, %struct.global_State** %3, align 8, !dbg !375, !tbaa !376
  %5 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 21, !dbg !387
  %6 = load %struct.lua_State*, %struct.lua_State** %5, align 8, !dbg !387, !tbaa !388
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6, i64 0, i32 0, !dbg !393
  %8 = load %union.GCObject*, %union.GCObject** %7, align 8, !dbg !395, !tbaa !396
  %9 = icmp eq %union.GCObject* %8, null, !dbg !398
  br i1 %9, label %75, label %10, !dbg !399

; <label>:10:                                     ; preds = %2
  %11 = icmp ne i32 %1, 0
  %12 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 11
  %13 = bitcast %union.GCObject** %12 to %struct.GCheader**
  br label %14, !dbg !399

; <label>:14:                                     ; preds = %10, %70
  %15 = phi %union.GCObject* [ %8, %10 ], [ %73, %70 ]
  %16 = phi i64 [ 0, %10 ], [ %72, %70 ]
  %17 = phi %union.GCObject** [ %7, %10 ], [ %71, %70 ]
  %18 = getelementptr inbounds %union.GCObject, %union.GCObject* %15, i64 0, i32 0, i32 2, !dbg !400
  %19 = load i8, i8* %18, align 1, !dbg !400, !tbaa !403
  %20 = and i8 %19, 3, !dbg !400
  %21 = icmp ne i8 %20, 0, !dbg !400
  %22 = or i1 %11, %21, !dbg !404
  %23 = and i8 %19, 8, !dbg !405
  %24 = icmp eq i8 %23, 0, !dbg !405
  %25 = and i1 %24, %22, !dbg !404
  br i1 %25, label %28, label %26, !dbg !404

; <label>:26:                                     ; preds = %14
  %27 = getelementptr inbounds %union.GCObject, %union.GCObject* %15, i64 0, i32 0, i32 0, !dbg !406
  br label %70, !dbg !407

; <label>:28:                                     ; preds = %14
  %29 = getelementptr inbounds %union.GCObject, %union.GCObject* %15, i64 0, i32 0, i32 4, !dbg !408
  %30 = bitcast %struct.lua_TValue** %29 to %struct.Table**, !dbg !408
  %31 = load %struct.Table*, %struct.Table** %30, align 8, !dbg !408, !tbaa !403
  %32 = icmp eq %struct.Table* %31, null, !dbg !408
  br i1 %32, label %46, label %33, !dbg !408

; <label>:33:                                     ; preds = %28
  %34 = getelementptr inbounds %struct.Table, %struct.Table* %31, i64 0, i32 3, !dbg !408
  %35 = load i8, i8* %34, align 2, !dbg !408, !tbaa !410
  %36 = and i8 %35, 4, !dbg !408
  %37 = icmp eq i8 %36, 0, !dbg !408
  br i1 %37, label %38, label %46, !dbg !408

; <label>:38:                                     ; preds = %33
  %39 = load %struct.global_State*, %struct.global_State** %3, align 8, !dbg !408, !tbaa !376
  %40 = getelementptr inbounds %struct.global_State, %struct.global_State* %39, i64 0, i32 24, i64 2, !dbg !408
  %41 = load %union.TString*, %union.TString** %40, align 8, !dbg !408, !tbaa !396
  %42 = tail call %struct.lua_TValue* @luaT_gettm(%struct.Table* nonnull %31, i32 2, %union.TString* %41) #3, !dbg !408
  %43 = icmp eq %struct.lua_TValue* %42, null, !dbg !412
  br i1 %43, label %44, label %50, !dbg !413

; <label>:44:                                     ; preds = %38
  %45 = load i8, i8* %18, align 1, !dbg !414, !tbaa !403
  br label %46, !dbg !413

; <label>:46:                                     ; preds = %44, %33, %28
  %47 = phi i8 [ %45, %44 ], [ %19, %33 ], [ %19, %28 ], !dbg !414
  %48 = or i8 %47, 8, !dbg !414
  store i8 %48, i8* %18, align 1, !dbg !414, !tbaa !403
  %49 = getelementptr inbounds %union.GCObject, %union.GCObject* %15, i64 0, i32 0, i32 0, !dbg !416
  br label %70, !dbg !417

; <label>:50:                                     ; preds = %38
  %51 = getelementptr inbounds %union.GCObject, %union.GCObject* %15, i64 0, i32 0, i32 6, !dbg !418
  %52 = bitcast %struct.global_State** %51 to i64*, !dbg !418
  %53 = load i64, i64* %52, align 8, !dbg !418, !tbaa !403
  %54 = add i64 %16, 40, !dbg !418
  %55 = add i64 %54, %53, !dbg !420
  %56 = load i8, i8* %18, align 1, !dbg !421, !tbaa !403
  %57 = or i8 %56, 8, !dbg !421
  store i8 %57, i8* %18, align 1, !dbg !421, !tbaa !403
  %58 = bitcast %union.GCObject* %15 to i64*, !dbg !422
  %59 = load i64, i64* %58, align 8, !dbg !422, !tbaa !403
  %60 = bitcast %union.GCObject** %17 to i64*, !dbg !423
  store i64 %59, i64* %60, align 8, !dbg !423, !tbaa !396
  %61 = load %union.GCObject*, %union.GCObject** %12, align 8, !dbg !424, !tbaa !426
  %62 = icmp eq %union.GCObject* %61, null, !dbg !427
  br i1 %62, label %63, label %65, !dbg !428

; <label>:63:                                     ; preds = %50
  %64 = getelementptr inbounds %union.GCObject, %union.GCObject* %15, i64 0, i32 0, i32 0, !dbg !422
  store %union.GCObject* %15, %union.GCObject** %64, align 8, !dbg !429, !tbaa !403
  store %union.GCObject* %15, %union.GCObject** %12, align 8, !dbg !430, !tbaa !426
  br label %70, !dbg !431

; <label>:65:                                     ; preds = %50
  %66 = bitcast %union.GCObject* %61 to i64*, !dbg !432
  %67 = load i64, i64* %66, align 8, !dbg !432, !tbaa !403
  store i64 %67, i64* %58, align 8, !dbg !434, !tbaa !403
  %68 = load %struct.GCheader*, %struct.GCheader** %13, align 8, !dbg !435, !tbaa !426
  %69 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %68, i64 0, i32 0, !dbg !436
  store %union.GCObject* %15, %union.GCObject** %69, align 8, !dbg !437, !tbaa !403
  store %union.GCObject* %15, %union.GCObject** %12, align 8, !dbg !438, !tbaa !426
  br label %70

; <label>:70:                                     ; preds = %46, %65, %63, %26
  %71 = phi %union.GCObject** [ %27, %26 ], [ %49, %46 ], [ %17, %63 ], [ %17, %65 ], !dbg !439
  %72 = phi i64 [ %16, %26 ], [ %16, %46 ], [ %55, %63 ], [ %55, %65 ], !dbg !440
  %73 = load %union.GCObject*, %union.GCObject** %71, align 8, !dbg !395, !tbaa !396
  %74 = icmp eq %union.GCObject* %73, null, !dbg !398
  br i1 %74, label %75, label %14, !dbg !399, !llvm.loop !441

; <label>:75:                                     ; preds = %70, %2
  %76 = phi i64 [ 0, %2 ], [ %72, %70 ], !dbg !386
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !443
  ret i64 %76, !dbg !443
}

; Function Attrs: noredzone
declare hidden %struct.lua_TValue* @luaT_gettm(%struct.Table*, i32, %union.TString*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define hidden void @luaC_callGCTM(%struct.lua_State*) local_unnamed_addr #0 !dbg !444 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !450
  %3 = load %struct.global_State*, %struct.global_State** %2, align 8, !dbg !450, !tbaa !376
  %4 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 11, !dbg !451
  %5 = load %union.GCObject*, %union.GCObject** %4, align 8, !dbg !451, !tbaa !426
  %6 = icmp eq %union.GCObject* %5, null, !dbg !452
  br i1 %6, label %12, label %7, !dbg !452

; <label>:7:                                      ; preds = %1, %7
  tail call fastcc void @GCTM(%struct.lua_State* nonnull %0) #4, !dbg !453
  %8 = load %struct.global_State*, %struct.global_State** %2, align 8, !dbg !450, !tbaa !376
  %9 = getelementptr inbounds %struct.global_State, %struct.global_State* %8, i64 0, i32 11, !dbg !451
  %10 = load %union.GCObject*, %union.GCObject** %9, align 8, !dbg !451, !tbaa !426
  %11 = icmp eq %union.GCObject* %10, null, !dbg !452
  br i1 %11, label %12, label %7, !dbg !452, !llvm.loop !454

; <label>:12:                                     ; preds = %7, %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !456
  ret void, !dbg !456
}

; Function Attrs: noredzone nounwind
define internal fastcc void @GCTM(%struct.lua_State*) unnamed_addr #0 !dbg !457 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !478
  %3 = load %struct.global_State*, %struct.global_State** %2, align 8, !dbg !478, !tbaa !376
  %4 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 11, !dbg !480
  %5 = load %union.GCObject*, %union.GCObject** %4, align 8, !dbg !480, !tbaa !426
  %6 = getelementptr inbounds %union.GCObject, %union.GCObject* %5, i64 0, i32 0, i32 0, !dbg !481
  %7 = load %union.GCObject*, %union.GCObject** %6, align 8, !dbg !481, !tbaa !403
  %8 = icmp eq %union.GCObject* %7, %5, !dbg !484
  br i1 %8, label %9, label %11, !dbg !486

; <label>:9:                                      ; preds = %1
  store %union.GCObject* null, %union.GCObject** %4, align 8, !dbg !487, !tbaa !426
  %10 = bitcast %union.GCObject* %7 to i64*, !dbg !488
  br label %15, !dbg !489

; <label>:11:                                     ; preds = %1
  %12 = bitcast %union.GCObject* %7 to i64*, !dbg !490
  %13 = load i64, i64* %12, align 8, !dbg !490, !tbaa !403
  %14 = bitcast %union.GCObject* %5 to i64*, !dbg !491
  store i64 %13, i64* %14, align 8, !dbg !491, !tbaa !403
  br label %15

; <label>:15:                                     ; preds = %11, %9
  %16 = phi i64* [ %12, %11 ], [ %10, %9 ], !dbg !488
  %17 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 21, !dbg !492
  %18 = bitcast %struct.lua_State** %17 to i64**, !dbg !492
  %19 = load i64*, i64** %18, align 8, !dbg !492, !tbaa !388
  %20 = load i64, i64* %19, align 8, !dbg !493, !tbaa !494
  store i64 %20, i64* %16, align 8, !dbg !488, !tbaa !403
  %21 = load %struct.lua_State*, %struct.lua_State** %17, align 8, !dbg !495, !tbaa !388
  %22 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %21, i64 0, i32 0, !dbg !496
  store %union.GCObject* %7, %union.GCObject** %22, align 8, !dbg !497, !tbaa !494
  %23 = getelementptr inbounds %union.GCObject, %union.GCObject* %7, i64 0, i32 0, i32 2, !dbg !498
  %24 = load i8, i8* %23, align 1, !dbg !498, !tbaa !403
  %25 = and i8 %24, -8, !dbg !498
  %26 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 3, !dbg !498
  %27 = load i8, i8* %26, align 8, !dbg !498, !tbaa !499
  %28 = and i8 %27, 3, !dbg !498
  %29 = or i8 %28, %25, !dbg !498
  store i8 %29, i8* %23, align 1, !dbg !498, !tbaa !403
  %30 = getelementptr inbounds %union.GCObject, %union.GCObject* %7, i64 0, i32 0, i32 4, !dbg !500
  %31 = bitcast %struct.lua_TValue** %30 to %struct.Table**, !dbg !500
  %32 = load %struct.Table*, %struct.Table** %31, align 8, !dbg !500, !tbaa !403
  %33 = icmp eq %struct.Table* %32, null, !dbg !500
  br i1 %33, label %66, label %34, !dbg !500

; <label>:34:                                     ; preds = %15
  %35 = getelementptr inbounds %struct.Table, %struct.Table* %32, i64 0, i32 3, !dbg !500
  %36 = load i8, i8* %35, align 2, !dbg !500, !tbaa !410
  %37 = and i8 %36, 4, !dbg !500
  %38 = icmp eq i8 %37, 0, !dbg !500
  br i1 %38, label %39, label %66, !dbg !500

; <label>:39:                                     ; preds = %34
  %40 = load %struct.global_State*, %struct.global_State** %2, align 8, !dbg !500, !tbaa !376
  %41 = getelementptr inbounds %struct.global_State, %struct.global_State* %40, i64 0, i32 24, i64 2, !dbg !500
  %42 = load %union.TString*, %union.TString** %41, align 8, !dbg !500, !tbaa !396
  %43 = tail call %struct.lua_TValue* @luaT_gettm(%struct.Table* nonnull %32, i32 2, %union.TString* %42) #3, !dbg !500
  %44 = icmp eq %struct.lua_TValue* %43, null, !dbg !502
  br i1 %44, label %66, label %45, !dbg !503

; <label>:45:                                     ; preds = %39
  %46 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 18, !dbg !504
  %47 = load i8, i8* %46, align 1, !dbg !504, !tbaa !505
  %48 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 13, !dbg !507
  %49 = load i64, i64* %48, align 8, !dbg !507, !tbaa !508
  store i8 0, i8* %46, align 1, !dbg !510, !tbaa !505
  %50 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 14, !dbg !511
  %51 = load i64, i64* %50, align 8, !dbg !511, !tbaa !512
  %52 = shl i64 %51, 1, !dbg !513
  store i64 %52, i64* %48, align 8, !dbg !514, !tbaa !508
  %53 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !515
  %54 = load %struct.lua_TValue*, %struct.lua_TValue** %53, align 8, !dbg !515, !tbaa !516
  %55 = bitcast %struct.lua_TValue* %43 to i64*, !dbg !515
  %56 = bitcast %struct.lua_TValue* %54 to i64*, !dbg !515
  %57 = load i64, i64* %55, align 8, !dbg !515
  store i64 %57, i64* %56, align 8, !dbg !515
  %58 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %43, i64 0, i32 1, !dbg !515
  %59 = load i32, i32* %58, align 8, !dbg !515, !tbaa !517
  %60 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %54, i64 0, i32 1, !dbg !515
  store i32 %59, i32* %60, align 8, !dbg !515, !tbaa !517
  %61 = load %struct.lua_TValue*, %struct.lua_TValue** %53, align 8, !dbg !518, !tbaa !516
  %62 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %61, i64 1, i32 0, i32 0, !dbg !518
  store %union.GCObject* %7, %union.GCObject** %62, align 8, !dbg !518, !tbaa !403
  %63 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %61, i64 1, i32 1, !dbg !518
  store i32 7, i32* %63, align 8, !dbg !518, !tbaa !517
  %64 = load %struct.lua_TValue*, %struct.lua_TValue** %53, align 8, !dbg !519, !tbaa !516
  %65 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %64, i64 2, !dbg !519
  store %struct.lua_TValue* %65, %struct.lua_TValue** %53, align 8, !dbg !519, !tbaa !516
  tail call void @luaD_call(%struct.lua_State* nonnull %0, %struct.lua_TValue* %64, i32 0) #3, !dbg !520
  store i8 %47, i8* %46, align 1, !dbg !521, !tbaa !505
  store i64 %49, i64* %48, align 8, !dbg !522, !tbaa !508
  br label %66, !dbg !523

; <label>:66:                                     ; preds = %34, %15, %39, %45
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !524
  ret void, !dbg !524
}

; Function Attrs: noredzone nounwind
define hidden void @luaC_freeall(%struct.lua_State*) local_unnamed_addr #0 !dbg !525 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !531
  %3 = load %struct.global_State*, %struct.global_State** %2, align 8, !dbg !531, !tbaa !376
  %4 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 3, !dbg !533
  store i8 67, i8* %4, align 8, !dbg !534, !tbaa !499
  %5 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 6, !dbg !535
  %6 = tail call fastcc %union.GCObject** @sweeplist(%struct.lua_State* %0, %union.GCObject** nonnull %5, i64 -3) #4, !dbg !535
  %7 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 0, i32 2, !dbg !537
  %8 = load i32, i32* %7, align 4, !dbg !537, !tbaa !540
  %9 = icmp sgt i32 %8, 0, !dbg !541
  br i1 %9, label %10, label %21, !dbg !542

; <label>:10:                                     ; preds = %1
  %11 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 0, i32 0
  br label %12, !dbg !542

; <label>:12:                                     ; preds = %10, %12
  %13 = phi i64 [ 0, %10 ], [ %17, %12 ]
  %14 = load %union.GCObject**, %union.GCObject*** %11, align 8, !dbg !543, !tbaa !544
  %15 = getelementptr inbounds %union.GCObject*, %union.GCObject** %14, i64 %13, !dbg !543
  %16 = tail call fastcc %union.GCObject** @sweeplist(%struct.lua_State* %0, %union.GCObject** %15, i64 -3) #4, !dbg !543
  %17 = add nuw nsw i64 %13, 1, !dbg !545
  %18 = load i32, i32* %7, align 4, !dbg !537, !tbaa !540
  %19 = sext i32 %18 to i64, !dbg !541
  %20 = icmp slt i64 %17, %19, !dbg !541
  br i1 %20, label %12, label %21, !dbg !542, !llvm.loop !546

; <label>:21:                                     ; preds = %12, %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !548
  ret void, !dbg !548
}

; Function Attrs: noredzone nounwind
define internal fastcc %union.GCObject** @sweeplist(%struct.lua_State*, %union.GCObject**, i64) unnamed_addr #0 !dbg !549 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !562
  %5 = load %struct.global_State*, %struct.global_State** %4, align 8, !dbg !562, !tbaa !376
  %6 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 3, !dbg !564
  %7 = load i8, i8* %6, align 8, !dbg !564, !tbaa !499
  %8 = xor i8 %7, 3, !dbg !564
  %9 = load %union.GCObject*, %union.GCObject** %1, align 8, !dbg !565, !tbaa !396
  %10 = icmp eq %union.GCObject* %9, null, !dbg !567
  br i1 %10, label %82, label %11, !dbg !568

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 6
  %13 = bitcast %union.GCObject** %12 to i64*
  br label %14, !dbg !568

; <label>:14:                                     ; preds = %11, %78
  %15 = phi %union.GCObject* [ %9, %11 ], [ %80, %78 ]
  %16 = phi %union.GCObject** [ %1, %11 ], [ %79, %78 ]
  %17 = phi i64 [ %2, %11 ], [ %18, %78 ]
  %18 = add i64 %17, -1, !dbg !569
  %19 = icmp eq i64 %17, 0, !dbg !570
  br i1 %19, label %82, label %20, !dbg !571

; <label>:20:                                     ; preds = %14
  %21 = getelementptr inbounds %union.GCObject, %union.GCObject* %15, i64 0, i32 0, i32 1, !dbg !572
  %22 = load i8, i8* %21, align 8, !dbg !572, !tbaa !403
  %23 = icmp eq i8 %22, 8, !dbg !575
  br i1 %23, label %24, label %27, !dbg !576

; <label>:24:                                     ; preds = %20
  %25 = getelementptr inbounds %union.GCObject, %union.GCObject* %15, i64 0, i32 0, i32 24, !dbg !577
  %26 = tail call fastcc %union.GCObject** @sweeplist(%struct.lua_State* %0, %union.GCObject** nonnull %25, i64 -3) #4, !dbg !577
  br label %27, !dbg !577

; <label>:27:                                     ; preds = %24, %20
  %28 = getelementptr inbounds %union.GCObject, %union.GCObject* %15, i64 0, i32 0, i32 2, !dbg !578
  %29 = load i8, i8* %28, align 1, !dbg !578, !tbaa !403
  %30 = xor i8 %29, 3, !dbg !580
  %31 = and i8 %30, %8, !dbg !581
  %32 = icmp eq i8 %31, 0, !dbg !581
  br i1 %32, label %39, label %33, !dbg !582

; <label>:33:                                     ; preds = %27
  %34 = and i8 %29, -8, !dbg !583
  %35 = load i8, i8* %6, align 8, !dbg !583, !tbaa !499
  %36 = and i8 %35, 3, !dbg !583
  %37 = or i8 %36, %34, !dbg !583
  store i8 %37, i8* %28, align 1, !dbg !583, !tbaa !403
  %38 = getelementptr inbounds %union.GCObject, %union.GCObject* %15, i64 0, i32 0, i32 0, !dbg !585
  br label %78, !dbg !586

; <label>:39:                                     ; preds = %27
  %40 = bitcast %union.GCObject* %15 to i64*, !dbg !587
  %41 = load i64, i64* %40, align 8, !dbg !587, !tbaa !403
  %42 = bitcast %union.GCObject** %16 to i64*, !dbg !589
  store i64 %41, i64* %42, align 8, !dbg !589, !tbaa !396
  %43 = load %union.GCObject*, %union.GCObject** %12, align 8, !dbg !590, !tbaa !592
  %44 = icmp eq %union.GCObject* %15, %43, !dbg !593
  br i1 %44, label %45, label %47, !dbg !594

; <label>:45:                                     ; preds = %39
  %46 = load i64, i64* %40, align 8, !dbg !595, !tbaa !403
  store i64 %46, i64* %13, align 8, !dbg !596, !tbaa !592
  br label %47, !dbg !597

; <label>:47:                                     ; preds = %45, %39
  %48 = load i8, i8* %21, align 8, !dbg !607, !tbaa !403
  switch i8 %48, label %77 [
    i8 9, label %49
    i8 6, label %51
    i8 10, label %53
    i8 5, label %55
    i8 8, label %57
    i8 4, label %59
    i8 7, label %70
  ], !dbg !608

; <label>:49:                                     ; preds = %47
  %50 = bitcast %union.GCObject* %15 to %struct.Proto*, !dbg !609
  tail call void @luaF_freeproto(%struct.lua_State* %0, %struct.Proto* %50) #3, !dbg !611
  br label %77, !dbg !612

; <label>:51:                                     ; preds = %47
  %52 = bitcast %union.GCObject* %15 to %union.Closure*, !dbg !613
  tail call void @luaF_freeclosure(%struct.lua_State* %0, %union.Closure* %52) #3, !dbg !614
  br label %77, !dbg !615

; <label>:53:                                     ; preds = %47
  %54 = bitcast %union.GCObject* %15 to %struct.UpVal*, !dbg !616
  tail call void @luaF_freeupval(%struct.lua_State* %0, %struct.UpVal* %54) #3, !dbg !617
  br label %77, !dbg !618

; <label>:55:                                     ; preds = %47
  %56 = bitcast %union.GCObject* %15 to %struct.Table*, !dbg !619
  tail call void @luaH_free(%struct.lua_State* %0, %struct.Table* %56) #3, !dbg !620
  br label %77, !dbg !621

; <label>:57:                                     ; preds = %47
  %58 = getelementptr inbounds %union.GCObject, %union.GCObject* %15, i64 0, i32 0, !dbg !622
  tail call void @luaE_freethread(%struct.lua_State* %0, %struct.lua_State* nonnull %58) #3, !dbg !624
  br label %77, !dbg !625

; <label>:59:                                     ; preds = %47
  %60 = load %struct.global_State*, %struct.global_State** %4, align 8, !dbg !626, !tbaa !376
  %61 = getelementptr inbounds %struct.global_State, %struct.global_State* %60, i64 0, i32 0, i32 1, !dbg !628
  %62 = load i32, i32* %61, align 8, !dbg !629, !tbaa !630
  %63 = add i32 %62, -1, !dbg !629
  store i32 %63, i32* %61, align 8, !dbg !629, !tbaa !630
  %64 = bitcast %union.GCObject* %15 to i8*, !dbg !631
  %65 = getelementptr inbounds %union.GCObject, %union.GCObject* %15, i64 0, i32 0, i32 4, !dbg !631
  %66 = bitcast %struct.lua_TValue** %65 to i64*, !dbg !631
  %67 = load i64, i64* %66, align 8, !dbg !631, !tbaa !403
  %68 = add i64 %67, 25, !dbg !631
  %69 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* %64, i64 %68, i64 0) #3, !dbg !631
  br label %77, !dbg !632

; <label>:70:                                     ; preds = %47
  %71 = bitcast %union.GCObject* %15 to i8*, !dbg !633
  %72 = getelementptr inbounds %union.GCObject, %union.GCObject* %15, i64 0, i32 0, i32 6, !dbg !633
  %73 = bitcast %struct.global_State** %72 to i64*, !dbg !633
  %74 = load i64, i64* %73, align 8, !dbg !633, !tbaa !403
  %75 = add i64 %74, 40, !dbg !633
  %76 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* %71, i64 %75, i64 0) #3, !dbg !633
  br label %77, !dbg !635

; <label>:77:                                     ; preds = %47, %49, %51, %53, %55, %57, %59, %70
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !636
  br label %78

; <label>:78:                                     ; preds = %77, %33
  %79 = phi %union.GCObject** [ %38, %33 ], [ %16, %77 ]
  %80 = load %union.GCObject*, %union.GCObject** %79, align 8, !dbg !565, !tbaa !396
  %81 = icmp eq %union.GCObject* %80, null, !dbg !567
  br i1 %81, label %82, label %14, !dbg !568, !llvm.loop !637

; <label>:82:                                     ; preds = %78, %14, %3
  %83 = phi %union.GCObject** [ %1, %3 ], [ %16, %14 ], [ %79, %78 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !639
  ret %union.GCObject** %83, !dbg !639
}

; Function Attrs: noredzone nounwind
define hidden void @luaC_step(%struct.lua_State*) local_unnamed_addr #0 !dbg !640 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !647
  %3 = load %struct.global_State*, %struct.global_State** %2, align 8, !dbg !647, !tbaa !376
  %4 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 18, !dbg !649
  %5 = load i32, i32* %4, align 4, !dbg !649, !tbaa !650
  %6 = mul i32 %5, 10, !dbg !651
  %7 = zext i32 %6 to i64, !dbg !652
  %8 = icmp eq i32 %6, 0, !dbg !654
  %9 = select i1 %8, i64 9223372036854775806, i64 %7, !dbg !656
  %10 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 14, !dbg !657
  %11 = load i64, i64* %10, align 8, !dbg !657, !tbaa !512
  %12 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 13, !dbg !658
  %13 = load i64, i64* %12, align 8, !dbg !658, !tbaa !508
  %14 = sub i64 %11, %13, !dbg !659
  %15 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 16, !dbg !660
  %16 = load i64, i64* %15, align 8, !dbg !661, !tbaa !662
  %17 = add i64 %14, %16, !dbg !661
  store i64 %17, i64* %15, align 8, !dbg !661, !tbaa !662
  %18 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 4
  br label %19, !dbg !663

; <label>:19:                                     ; preds = %19, %1
  %20 = phi i64 [ %9, %1 ], [ %22, %19 ], !dbg !664
  %21 = tail call fastcc i64 @singlestep(%struct.lua_State* %0) #4, !dbg !666
  %22 = sub nsw i64 %20, %21, !dbg !667
  %23 = load i8, i8* %18, align 1, !dbg !668, !tbaa !670
  %24 = icmp ne i8 %23, 0, !dbg !671
  %25 = icmp sgt i64 %22, 0, !dbg !672
  %26 = and i1 %24, %25, !dbg !673
  br i1 %26, label %19, label %27, !dbg !673, !llvm.loop !674

; <label>:27:                                     ; preds = %19
  br i1 %24, label %28, label %37, !dbg !676

; <label>:28:                                     ; preds = %27
  %29 = load i64, i64* %15, align 8, !dbg !677, !tbaa !662
  %30 = icmp ult i64 %29, 1024, !dbg !681
  br i1 %30, label %31, label %34, !dbg !682

; <label>:31:                                     ; preds = %28
  %32 = load i64, i64* %10, align 8, !dbg !683, !tbaa !512
  %33 = add i64 %32, 1024, !dbg !684
  br label %45, !dbg !685

; <label>:34:                                     ; preds = %28
  %35 = add i64 %29, -1024, !dbg !686
  store i64 %35, i64* %15, align 8, !dbg !686, !tbaa !662
  %36 = load i64, i64* %10, align 8, !dbg !688, !tbaa !512
  br label %45

; <label>:37:                                     ; preds = %27
  %38 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 15, !dbg !689
  %39 = load i64, i64* %38, align 8, !dbg !689, !tbaa !691
  %40 = udiv i64 %39, 100, !dbg !689
  %41 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 17, !dbg !689
  %42 = load i32, i32* %41, align 8, !dbg !689, !tbaa !692
  %43 = sext i32 %42 to i64, !dbg !689
  %44 = mul i64 %40, %43, !dbg !689
  br label %45

; <label>:45:                                     ; preds = %31, %34, %37
  %46 = phi i64 [ %33, %31 ], [ %36, %34 ], [ %44, %37 ]
  store i64 %46, i64* %12, align 8, !dbg !693, !tbaa !508
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !694
  ret void, !dbg !694
}

; Function Attrs: noredzone nounwind
define internal fastcc i64 @singlestep(%struct.lua_State*) unnamed_addr #0 !dbg !695 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !707
  %3 = load %struct.global_State*, %struct.global_State** %2, align 8, !dbg !707, !tbaa !376
  %4 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 4, !dbg !709
  %5 = load i8, i8* %4, align 1, !dbg !709, !tbaa !670
  switch i8 %5, label %311 [
    i8 0, label %6
    i8 1, label %7
    i8 2, label %231
    i8 3, label %253
    i8 4, label %299
  ], !dbg !710

; <label>:6:                                      ; preds = %1
  tail call fastcc void @markroot(%struct.lua_State* nonnull %0) #4, !dbg !711
  br label %311, !dbg !713

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 8, !dbg !714
  %9 = load %union.GCObject*, %union.GCObject** %8, align 8, !dbg !714, !tbaa !717
  %10 = icmp eq %union.GCObject* %9, null, !dbg !718
  br i1 %10, label %13, label %11, !dbg !719

; <label>:11:                                     ; preds = %7
  %12 = tail call fastcc i64 @propagatemark(%struct.global_State* nonnull %3) #4, !dbg !720
  br label %311, !dbg !721

; <label>:13:                                     ; preds = %7
  %14 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 22, !dbg !739
  %15 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 22, i32 4, i32 0, i32 1, !dbg !741
  %16 = bitcast i32* %15 to %struct.UpVal**, !dbg !743
  %17 = load %struct.UpVal*, %struct.UpVal** %16, align 8, !dbg !743, !tbaa !403
  %18 = icmp eq %struct.UpVal* %17, %14, !dbg !745
  br i1 %18, label %19, label %20, !dbg !746

; <label>:19:                                     ; preds = %13
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !747
  br label %52, !dbg !757

; <label>:20:                                     ; preds = %13, %40
  %21 = phi %struct.UpVal* [ %43, %40 ], [ %17, %13 ]
  %22 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %21, i64 0, i32 2, !dbg !758
  %23 = load i8, i8* %22, align 1, !dbg !758, !tbaa !403
  %24 = and i8 %23, 7, !dbg !758
  %25 = icmp eq i8 %24, 0, !dbg !758
  br i1 %25, label %26, label %40, !dbg !758

; <label>:26:                                     ; preds = %20
  %27 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %21, i64 0, i32 3, !dbg !761
  %28 = load %struct.lua_TValue*, %struct.lua_TValue** %27, align 8, !dbg !761, !tbaa !764
  %29 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %28, i64 0, i32 1, !dbg !761
  %30 = load i32, i32* %29, align 8, !dbg !761, !tbaa !517
  %31 = icmp sgt i32 %30, 3, !dbg !761
  br i1 %31, label %32, label %40, !dbg !761

; <label>:32:                                     ; preds = %26
  %33 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %28, i64 0, i32 0, i32 0, !dbg !761
  %34 = load %union.GCObject*, %union.GCObject** %33, align 8, !dbg !761, !tbaa !403
  %35 = getelementptr inbounds %union.GCObject, %union.GCObject* %34, i64 0, i32 0, i32 2, !dbg !761
  %36 = load i8, i8* %35, align 1, !dbg !761, !tbaa !403
  %37 = and i8 %36, 3, !dbg !761
  %38 = icmp eq i8 %37, 0, !dbg !761
  br i1 %38, label %40, label %39, !dbg !765

; <label>:39:                                     ; preds = %32
  tail call fastcc void @reallymarkobject(%struct.global_State* %3, %union.GCObject* %34) #3, !dbg !761
  br label %40, !dbg !761

; <label>:40:                                     ; preds = %39, %32, %26, %20
  %41 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %21, i64 0, i32 4, i32 0, i32 1, !dbg !766
  %42 = bitcast i32* %41 to %struct.UpVal**, !dbg !743
  %43 = load %struct.UpVal*, %struct.UpVal** %42, align 8, !dbg !743, !tbaa !403
  %44 = icmp eq %struct.UpVal* %43, %14, !dbg !745
  br i1 %44, label %45, label %20, !dbg !746, !llvm.loop !767

; <label>:45:                                     ; preds = %40
  %46 = load %union.GCObject*, %union.GCObject** %8, align 8, !dbg !770, !tbaa !717
  %47 = icmp eq %union.GCObject* %46, null, !dbg !747
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !747
  br i1 %47, label %52, label %48, !dbg !757

; <label>:48:                                     ; preds = %45, %48
  %49 = tail call fastcc i64 @propagatemark(%struct.global_State* nonnull %3) #3, !dbg !771
  %50 = load %union.GCObject*, %union.GCObject** %8, align 8, !dbg !770, !tbaa !717
  %51 = icmp eq %union.GCObject* %50, null, !dbg !757
  br i1 %51, label %52, label %48, !dbg !757, !llvm.loop !772

; <label>:52:                                     ; preds = %48, %19, %45
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !775
  %53 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 10, !dbg !776
  %54 = bitcast %union.GCObject** %53 to i64*, !dbg !776
  %55 = load i64, i64* %54, align 8, !dbg !776, !tbaa !777
  %56 = bitcast %union.GCObject** %8 to i64*, !dbg !778
  store i64 %55, i64* %56, align 8, !dbg !778, !tbaa !717
  store %union.GCObject* null, %union.GCObject** %53, align 8, !dbg !779, !tbaa !777
  %57 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 2, !dbg !780
  %58 = load i8, i8* %57, align 1, !dbg !780, !tbaa !403
  %59 = and i8 %58, 3, !dbg !780
  %60 = icmp eq i8 %59, 0, !dbg !780
  br i1 %60, label %63, label %61, !dbg !783

; <label>:61:                                     ; preds = %52
  %62 = bitcast %struct.lua_State* %0 to %union.GCObject*, !dbg !780
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %3, %union.GCObject* %62) #3, !dbg !780
  br label %63, !dbg !780

; <label>:63:                                     ; preds = %61, %52
  tail call fastcc void @markmt(%struct.global_State* nonnull %3) #3, !dbg !784
  %64 = load %union.GCObject*, %union.GCObject** %8, align 8, !dbg !788, !tbaa !717
  %65 = icmp eq %union.GCObject* %64, null, !dbg !789
  br i1 %65, label %70, label %66, !dbg !789

; <label>:66:                                     ; preds = %63, %66
  %67 = tail call fastcc i64 @propagatemark(%struct.global_State* nonnull %3) #3, !dbg !790
  %68 = load %union.GCObject*, %union.GCObject** %8, align 8, !dbg !788, !tbaa !717
  %69 = icmp eq %union.GCObject* %68, null, !dbg !789
  br i1 %69, label %70, label %66, !dbg !789, !llvm.loop !772

; <label>:70:                                     ; preds = %66, %63
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !791
  %71 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 9, !dbg !792
  %72 = bitcast %union.GCObject** %71 to i64*, !dbg !792
  %73 = load i64, i64* %72, align 8, !dbg !792, !tbaa !793
  store i64 %73, i64* %56, align 8, !dbg !794, !tbaa !717
  store %union.GCObject* null, %union.GCObject** %71, align 8, !dbg !795, !tbaa !793
  %74 = icmp eq i64 %73, 0, !dbg !799
  br i1 %74, label %79, label %75, !dbg !799

; <label>:75:                                     ; preds = %70, %75
  %76 = tail call fastcc i64 @propagatemark(%struct.global_State* nonnull %3) #3, !dbg !800
  %77 = load %union.GCObject*, %union.GCObject** %8, align 8, !dbg !801, !tbaa !717
  %78 = icmp eq %union.GCObject* %77, null, !dbg !799
  br i1 %78, label %79, label %75, !dbg !799, !llvm.loop !772

; <label>:79:                                     ; preds = %75, %70
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !802
  %80 = tail call i64 @luaC_separateudata(%struct.lua_State* %0, i32 0) #3, !dbg !803
  %81 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 11, !dbg !811
  %82 = load %union.GCObject*, %union.GCObject** %81, align 8, !dbg !811, !tbaa !426
  %83 = icmp eq %union.GCObject* %82, null, !dbg !813
  br i1 %83, label %98, label %84, !dbg !815

; <label>:84:                                     ; preds = %79
  %85 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 3
  br label %86, !dbg !816

; <label>:86:                                     ; preds = %86, %84
  %87 = phi %union.GCObject* [ %89, %86 ], [ %82, %84 ], !dbg !819
  %88 = getelementptr inbounds %union.GCObject, %union.GCObject* %87, i64 0, i32 0, i32 0, !dbg !816
  %89 = load %union.GCObject*, %union.GCObject** %88, align 8, !dbg !816, !tbaa !403
  %90 = getelementptr inbounds %union.GCObject, %union.GCObject* %89, i64 0, i32 0, i32 2, !dbg !820
  %91 = load i8, i8* %90, align 1, !dbg !820, !tbaa !403
  %92 = and i8 %91, -8, !dbg !820
  %93 = load i8, i8* %85, align 8, !dbg !820, !tbaa !499
  %94 = and i8 %93, 3, !dbg !820
  %95 = or i8 %94, %92, !dbg !820
  store i8 %95, i8* %90, align 1, !dbg !820, !tbaa !403
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %3, %union.GCObject* %89) #3, !dbg !821
  %96 = load %union.GCObject*, %union.GCObject** %81, align 8, !dbg !822, !tbaa !426
  %97 = icmp eq %union.GCObject* %89, %96, !dbg !823
  br i1 %97, label %98, label %86, !dbg !824, !llvm.loop !825

; <label>:98:                                     ; preds = %86, %79
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !828
  %99 = load %union.GCObject*, %union.GCObject** %8, align 8, !dbg !832, !tbaa !717
  %100 = icmp eq %union.GCObject* %99, null, !dbg !833
  br i1 %100, label %107, label %101, !dbg !833

; <label>:101:                                    ; preds = %98, %101
  %102 = phi i64 [ %104, %101 ], [ 0, %98 ]
  %103 = tail call fastcc i64 @propagatemark(%struct.global_State* nonnull %3) #3, !dbg !834
  %104 = add i64 %103, %102, !dbg !835
  %105 = load %union.GCObject*, %union.GCObject** %8, align 8, !dbg !832, !tbaa !717
  %106 = icmp eq %union.GCObject* %105, null, !dbg !833
  br i1 %106, label %107, label %101, !dbg !833, !llvm.loop !772

; <label>:107:                                    ; preds = %101, %98
  %108 = phi i64 [ 0, %98 ], [ %104, %101 ], !dbg !836
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !837
  %109 = load %union.GCObject*, %union.GCObject** %53, align 8, !dbg !838, !tbaa !777
  %110 = icmp eq %union.GCObject* %109, null, !dbg !857
  br i1 %110, label %219, label %111, !dbg !857

; <label>:111:                                    ; preds = %107, %214
  %112 = phi %union.GCObject* [ %217, %214 ], [ %109, %107 ]
  %113 = bitcast %union.GCObject* %112 to %struct.Table*, !dbg !858
  %114 = getelementptr inbounds %union.GCObject, %union.GCObject* %112, i64 0, i32 0, i32 9, !dbg !860
  %115 = bitcast %struct.lua_TValue** %114 to i32*, !dbg !860
  %116 = load i32, i32* %115, align 8, !dbg !860, !tbaa !861
  %117 = getelementptr inbounds %union.GCObject, %union.GCObject* %112, i64 0, i32 0, i32 2, !dbg !863
  %118 = load i8, i8* %117, align 1, !dbg !863, !tbaa !864
  %119 = and i8 %118, 16, !dbg !863
  %120 = icmp eq i8 %119, 0, !dbg !863
  %121 = icmp eq i32 %116, 0, !dbg !865
  %122 = or i1 %121, %120, !dbg !866
  br i1 %122, label %154, label %123, !dbg !866

; <label>:123:                                    ; preds = %111
  %124 = getelementptr inbounds %union.GCObject, %union.GCObject* %112, i64 0, i32 0, i32 5
  %125 = sext i32 %116 to i64, !dbg !865
  br label %126, !dbg !865

; <label>:126:                                    ; preds = %152, %123
  %127 = phi i64 [ %125, %123 ], [ %128, %152 ]
  %128 = add nsw i64 %127, -1, !dbg !867
  %129 = load %struct.lua_TValue*, %struct.lua_TValue** %124, align 8, !dbg !868, !tbaa !869
  %130 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %129, i64 %128, i32 1, !dbg !879
  %131 = load i32, i32* %130, align 8, !dbg !879, !tbaa !517
  %132 = icmp sgt i32 %131, 3, !dbg !879
  br i1 %132, label %133, label %147, !dbg !881

; <label>:133:                                    ; preds = %126
  %134 = icmp eq i32 %131, 4, !dbg !882
  %135 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %129, i64 %128, i32 0, i32 0, !dbg !884
  %136 = load %union.GCObject*, %union.GCObject** %135, align 8, !dbg !884, !tbaa !403
  %137 = getelementptr inbounds %union.GCObject, %union.GCObject* %136, i64 0, i32 0, i32 2, !dbg !884
  %138 = load i8, i8* %137, align 1, !dbg !884, !tbaa !403
  br i1 %134, label %139, label %141, !dbg !885

; <label>:139:                                    ; preds = %133
  %140 = and i8 %138, -4, !dbg !886
  store i8 %140, i8* %137, align 1, !dbg !886, !tbaa !403
  br label %147, !dbg !888

; <label>:141:                                    ; preds = %133
  %142 = and i8 %138, 3, !dbg !889
  %143 = icmp eq i8 %142, 0, !dbg !889
  br i1 %143, label %145, label %144, !dbg !890

; <label>:144:                                    ; preds = %141
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !891
  br label %151, !dbg !892

; <label>:145:                                    ; preds = %141
  %146 = icmp eq i32 %131, 7, !dbg !893
  br i1 %146, label %148, label %147, !dbg !894

; <label>:147:                                    ; preds = %145, %139, %126
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !891
  br label %152, !dbg !892

; <label>:148:                                    ; preds = %145
  %149 = and i8 %138, 8
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !891
  %150 = icmp eq i8 %149, 0, !dbg !895
  br i1 %150, label %152, label %151, !dbg !892

; <label>:151:                                    ; preds = %148, %144
  store i32 0, i32* %130, align 8, !dbg !896, !tbaa !517
  br label %152, !dbg !896

; <label>:152:                                    ; preds = %151, %148, %147
  %153 = icmp eq i64 %128, 0
  br i1 %153, label %154, label %126, !dbg !865, !llvm.loop !897

; <label>:154:                                    ; preds = %152, %111
  %155 = getelementptr inbounds %struct.Table, %struct.Table* %113, i64 0, i32 4, !dbg !900
  %156 = load i8, i8* %155, align 1, !dbg !900, !tbaa !901
  %157 = zext i8 %156 to i32, !dbg !900
  %158 = shl nsw i32 -1, %157, !dbg !902
  %159 = xor i32 %158, -1, !dbg !902
  %160 = getelementptr inbounds %union.GCObject, %union.GCObject* %112, i64 0, i32 0, i32 6
  %161 = bitcast %struct.global_State** %160 to %struct.Node**
  %162 = sext i32 %159 to i64, !dbg !903
  br label %163, !dbg !903

; <label>:163:                                    ; preds = %211, %154
  %164 = phi i64 [ %162, %154 ], [ %212, %211 ]
  %165 = load %struct.Node*, %struct.Node** %161, align 8, !dbg !904, !tbaa !905
  %166 = getelementptr inbounds %struct.Node, %struct.Node* %165, i64 %164, i32 0, i32 1, !dbg !906
  %167 = load i32, i32* %166, align 8, !dbg !906, !tbaa !908
  %168 = icmp eq i32 %167, 0, !dbg !906
  br i1 %168, label %211, label %169, !dbg !910

; <label>:169:                                    ; preds = %163
  %170 = getelementptr inbounds %struct.Node, %struct.Node* %165, i64 %164, i32 1, i32 0, i32 1, !dbg !913
  %171 = load i32, i32* %170, align 8, !dbg !913, !tbaa !517
  %172 = icmp sgt i32 %171, 3, !dbg !913
  br i1 %172, label %173, label %185, !dbg !914

; <label>:173:                                    ; preds = %169
  %174 = icmp eq i32 %171, 4, !dbg !915
  %175 = getelementptr inbounds %struct.Node, %struct.Node* %165, i64 %164, i32 1, i32 0, i32 0, i32 0, !dbg !916
  %176 = load %union.GCObject*, %union.GCObject** %175, align 8, !dbg !916, !tbaa !403
  %177 = getelementptr inbounds %union.GCObject, %union.GCObject* %176, i64 0, i32 0, i32 2, !dbg !916
  %178 = load i8, i8* %177, align 1, !dbg !916, !tbaa !403
  br i1 %174, label %179, label %182, !dbg !917

; <label>:179:                                    ; preds = %173
  %180 = and i8 %178, -4, !dbg !918
  store i8 %180, i8* %177, align 1, !dbg !918, !tbaa !403
  %181 = load i32, i32* %166, align 8, !dbg !919, !tbaa !517
  br label %185, !dbg !921

; <label>:182:                                    ; preds = %173
  %183 = and i8 %178, 3, !dbg !922
  %184 = icmp eq i8 %183, 0, !dbg !922
  br i1 %184, label %185, label %205, !dbg !923

; <label>:185:                                    ; preds = %182, %179, %169
  %186 = phi i32 [ %167, %182 ], [ %181, %179 ], [ %167, %169 ], !dbg !919
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !924
  %187 = icmp sgt i32 %186, 3, !dbg !919
  br i1 %187, label %188, label %201, !dbg !926

; <label>:188:                                    ; preds = %185
  %189 = icmp eq i32 %186, 4, !dbg !927
  %190 = getelementptr inbounds %struct.Node, %struct.Node* %165, i64 %164, i32 0, i32 0, i32 0, !dbg !928
  %191 = load %union.GCObject*, %union.GCObject** %190, align 8, !dbg !928, !tbaa !403
  %192 = getelementptr inbounds %union.GCObject, %union.GCObject* %191, i64 0, i32 0, i32 2, !dbg !928
  %193 = load i8, i8* %192, align 1, !dbg !928, !tbaa !403
  br i1 %189, label %194, label %196, !dbg !929

; <label>:194:                                    ; preds = %188
  %195 = and i8 %193, -4, !dbg !930
  store i8 %195, i8* %192, align 1, !dbg !930, !tbaa !403
  br label %201, !dbg !931

; <label>:196:                                    ; preds = %188
  %197 = and i8 %193, 3, !dbg !932
  %198 = icmp eq i8 %197, 0, !dbg !932
  br i1 %198, label %199, label %205, !dbg !933

; <label>:199:                                    ; preds = %196
  %200 = icmp eq i32 %186, 7, !dbg !934
  br i1 %200, label %202, label %201, !dbg !935

; <label>:201:                                    ; preds = %199, %194, %185
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !936
  br label %211, !dbg !937

; <label>:202:                                    ; preds = %199
  %203 = and i8 %193, 8
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !936
  %204 = icmp eq i8 %203, 0, !dbg !938
  br i1 %204, label %211, label %206, !dbg !937

; <label>:205:                                    ; preds = %196, %182
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !936
  br label %206, !dbg !939

; <label>:206:                                    ; preds = %205, %202
  store i32 0, i32* %166, align 8, !dbg !939, !tbaa !908
  %207 = load i32, i32* %170, align 8, !dbg !941, !tbaa !403
  %208 = icmp sgt i32 %207, 3, !dbg !941
  br i1 %208, label %209, label %210, !dbg !949

; <label>:209:                                    ; preds = %206
  store i32 11, i32* %170, align 8, !dbg !950, !tbaa !403
  br label %210, !dbg !950

; <label>:210:                                    ; preds = %209, %206
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !951
  br label %211, !dbg !952

; <label>:211:                                    ; preds = %210, %202, %201, %163
  %212 = add nsw i64 %164, -1, !dbg !902
  %213 = icmp eq i64 %164, 0
  br i1 %213, label %214, label %163, !dbg !903, !llvm.loop !953

; <label>:214:                                    ; preds = %211
  %215 = getelementptr inbounds %union.GCObject, %union.GCObject* %112, i64 0, i32 0, i32 8, !dbg !956
  %216 = bitcast i32** %215 to %union.GCObject**, !dbg !956
  %217 = load %union.GCObject*, %union.GCObject** %216, align 8, !dbg !956, !tbaa !957
  %218 = icmp eq %union.GCObject* %217, null, !dbg !857
  br i1 %218, label %219, label %111, !dbg !857, !llvm.loop !958

; <label>:219:                                    ; preds = %214, %107
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !961
  %220 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 3, !dbg !962
  %221 = load i8, i8* %220, align 8, !dbg !962, !tbaa !499
  %222 = xor i8 %221, 3, !dbg !962
  store i8 %222, i8* %220, align 8, !dbg !963, !tbaa !499
  %223 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 5, !dbg !964
  store i32 0, i32* %223, align 4, !dbg !965, !tbaa !966
  %224 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 6, !dbg !967
  %225 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 7, !dbg !968
  store %union.GCObject** %224, %union.GCObject*** %225, align 8, !dbg !969, !tbaa !970
  store i8 2, i8* %4, align 1, !dbg !971, !tbaa !670
  %226 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 14, !dbg !972
  %227 = load i64, i64* %226, align 8, !dbg !972, !tbaa !512
  %228 = add i64 %108, %80, !dbg !973
  %229 = sub i64 %227, %228, !dbg !974
  %230 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 15, !dbg !975
  store i64 %229, i64* %230, align 8, !dbg !976, !tbaa !691
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !977
  br label %311, !dbg !978

; <label>:231:                                    ; preds = %1
  %232 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 14, !dbg !979
  %233 = load i64, i64* %232, align 8, !dbg !979, !tbaa !512
  %234 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 0, i32 0, !dbg !981
  %235 = load %union.GCObject**, %union.GCObject*** %234, align 8, !dbg !981, !tbaa !544
  %236 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 5, !dbg !981
  %237 = load i32, i32* %236, align 4, !dbg !981, !tbaa !966
  %238 = add nsw i32 %237, 1, !dbg !981
  store i32 %238, i32* %236, align 4, !dbg !981, !tbaa !966
  %239 = sext i32 %237 to i64, !dbg !981
  %240 = getelementptr inbounds %union.GCObject*, %union.GCObject** %235, i64 %239, !dbg !981
  %241 = tail call fastcc %union.GCObject** @sweeplist(%struct.lua_State* nonnull %0, %union.GCObject** %240, i64 -3) #4, !dbg !981
  %242 = load i32, i32* %236, align 4, !dbg !982, !tbaa !966
  %243 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 0, i32 2, !dbg !984
  %244 = load i32, i32* %243, align 4, !dbg !984, !tbaa !540
  %245 = icmp slt i32 %242, %244, !dbg !985
  br i1 %245, label %247, label %246, !dbg !986

; <label>:246:                                    ; preds = %231
  store i8 3, i8* %4, align 1, !dbg !987, !tbaa !670
  br label %247, !dbg !988

; <label>:247:                                    ; preds = %231, %246
  %248 = load i64, i64* %232, align 8, !dbg !989, !tbaa !512
  %249 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 15, !dbg !990
  %250 = load i64, i64* %249, align 8, !dbg !991, !tbaa !691
  %251 = sub i64 %248, %233, !dbg !991
  %252 = add i64 %251, %250, !dbg !991
  store i64 %252, i64* %249, align 8, !dbg !991, !tbaa !691
  br label %311

; <label>:253:                                    ; preds = %1
  %254 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 14, !dbg !992
  %255 = load i64, i64* %254, align 8, !dbg !992, !tbaa !512
  %256 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 7, !dbg !994
  %257 = load %union.GCObject**, %union.GCObject*** %256, align 8, !dbg !994, !tbaa !970
  %258 = tail call fastcc %union.GCObject** @sweeplist(%struct.lua_State* nonnull %0, %union.GCObject** %257, i64 40) #4, !dbg !995
  store %union.GCObject** %258, %union.GCObject*** %256, align 8, !dbg !996, !tbaa !970
  %259 = load %union.GCObject*, %union.GCObject** %258, align 8, !dbg !997, !tbaa !396
  %260 = icmp eq %union.GCObject* %259, null, !dbg !999
  br i1 %260, label %261, label %293, !dbg !1000

; <label>:261:                                    ; preds = %253
  %262 = load %struct.global_State*, %struct.global_State** %2, align 8, !dbg !1011, !tbaa !376
  %263 = getelementptr inbounds %struct.global_State, %struct.global_State* %262, i64 0, i32 0, i32 1, !dbg !1013
  %264 = load i32, i32* %263, align 8, !dbg !1013, !tbaa !630
  %265 = getelementptr inbounds %struct.global_State, %struct.global_State* %262, i64 0, i32 0, i32 2, !dbg !1015
  %266 = load i32, i32* %265, align 4, !dbg !1015, !tbaa !540
  %267 = sdiv i32 %266, 4, !dbg !1015
  %268 = icmp ult i32 %264, %267, !dbg !1016
  %269 = icmp sgt i32 %266, 64, !dbg !1017
  %270 = and i1 %269, %268, !dbg !1018
  br i1 %270, label %271, label %273, !dbg !1018

; <label>:271:                                    ; preds = %261
  %272 = lshr i32 %266, 1
  tail call void @luaS_resize(%struct.lua_State* nonnull %0, i32 %272) #3, !dbg !1019
  br label %273, !dbg !1019

; <label>:273:                                    ; preds = %271, %261
  %274 = getelementptr inbounds %struct.global_State, %struct.global_State* %262, i64 0, i32 12, !dbg !1020
  %275 = getelementptr inbounds %struct.global_State, %struct.global_State* %262, i64 0, i32 12, i32 2, !dbg !1020
  %276 = load i64, i64* %275, align 8, !dbg !1020, !tbaa !1021
  %277 = icmp ugt i64 %276, 64, !dbg !1022
  br i1 %277, label %278, label %292, !dbg !1023

; <label>:278:                                    ; preds = %273
  %279 = lshr i64 %276, 1, !dbg !1024
  %280 = add nuw i64 %279, 1, !dbg !1026
  %281 = icmp ult i64 %280, -2, !dbg !1026
  br i1 %281, label %282, label %286, !dbg !1026

; <label>:282:                                    ; preds = %278
  %283 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %274, i64 0, i32 0, !dbg !1026
  %284 = load i8*, i8** %283, align 8, !dbg !1026, !tbaa !1027
  %285 = tail call i8* @luaM_realloc_(%struct.lua_State* nonnull %0, i8* %284, i64 %276, i64 %279) #3, !dbg !1026
  br label %289, !dbg !1026

; <label>:286:                                    ; preds = %278
  %287 = tail call i8* @luaM_toobig(%struct.lua_State* nonnull %0) #3, !dbg !1026
  %288 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %274, i64 0, i32 0, !dbg !1026
  br label %289, !dbg !1026

; <label>:289:                                    ; preds = %286, %282
  %290 = phi i8** [ %288, %286 ], [ %283, %282 ], !dbg !1026
  %291 = phi i8* [ %287, %286 ], [ %285, %282 ], !dbg !1026
  store i8* %291, i8** %290, align 8, !dbg !1026, !tbaa !1027
  store i64 %279, i64* %275, align 8, !dbg !1026, !tbaa !1021
  br label %292, !dbg !1028

; <label>:292:                                    ; preds = %273, %289
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1029
  store i8 4, i8* %4, align 1, !dbg !1030, !tbaa !670
  br label %293, !dbg !1031

; <label>:293:                                    ; preds = %292, %253
  %294 = load i64, i64* %254, align 8, !dbg !1032, !tbaa !512
  %295 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 15, !dbg !1033
  %296 = load i64, i64* %295, align 8, !dbg !1034, !tbaa !691
  %297 = sub i64 %294, %255, !dbg !1034
  %298 = add i64 %297, %296, !dbg !1034
  store i64 %298, i64* %295, align 8, !dbg !1034, !tbaa !691
  br label %311

; <label>:299:                                    ; preds = %1
  %300 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 11, !dbg !1035
  %301 = load %union.GCObject*, %union.GCObject** %300, align 8, !dbg !1035, !tbaa !426
  %302 = icmp eq %union.GCObject* %301, null, !dbg !1038
  br i1 %302, label %309, label %303, !dbg !1039

; <label>:303:                                    ; preds = %299
  tail call fastcc void @GCTM(%struct.lua_State* nonnull %0) #4, !dbg !1040
  %304 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 15, !dbg !1042
  %305 = load i64, i64* %304, align 8, !dbg !1042, !tbaa !691
  %306 = icmp ugt i64 %305, 100, !dbg !1044
  br i1 %306, label %307, label %311, !dbg !1045

; <label>:307:                                    ; preds = %303
  %308 = add i64 %305, -100, !dbg !1046
  store i64 %308, i64* %304, align 8, !dbg !1046, !tbaa !691
  br label %311, !dbg !1047

; <label>:309:                                    ; preds = %299
  store i8 0, i8* %4, align 1, !dbg !1048, !tbaa !670
  %310 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 16, !dbg !1050
  store i64 0, i64* %310, align 8, !dbg !1051, !tbaa !662
  br label %311, !dbg !1052

; <label>:311:                                    ; preds = %1, %303, %307, %309, %293, %247, %219, %11, %6
  %312 = phi i64 [ 0, %309 ], [ 400, %293 ], [ 10, %247 ], [ %12, %11 ], [ 0, %219 ], [ 0, %6 ], [ 100, %307 ], [ 100, %303 ], [ 0, %1 ], !dbg !1053
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1054
  ret i64 %312, !dbg !1054
}

; Function Attrs: noredzone nounwind
define hidden void @luaC_fullgc(%struct.lua_State*) local_unnamed_addr #0 !dbg !1055 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1060
  %3 = load %struct.global_State*, %struct.global_State** %2, align 8, !dbg !1060, !tbaa !376
  %4 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 4, !dbg !1062
  %5 = load i8, i8* %4, align 1, !dbg !1062, !tbaa !670
  %6 = icmp ult i8 %5, 2, !dbg !1064
  br i1 %6, label %7, label %14, !dbg !1065

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 5, !dbg !1066
  store i32 0, i32* %8, align 4, !dbg !1068, !tbaa !966
  %9 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 6, !dbg !1069
  %10 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 7, !dbg !1070
  store %union.GCObject** %9, %union.GCObject*** %10, align 8, !dbg !1071, !tbaa !970
  %11 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 8, !dbg !1072
  %12 = bitcast %union.GCObject** %11 to <2 x %union.GCObject*>*, !dbg !1073
  store <2 x %union.GCObject*> zeroinitializer, <2 x %union.GCObject*>* %12, align 8, !dbg !1073, !tbaa !396
  %13 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 10, !dbg !1074
  store %union.GCObject* null, %union.GCObject** %13, align 8, !dbg !1075, !tbaa !777
  store i8 2, i8* %4, align 1, !dbg !1076, !tbaa !670
  br label %16, !dbg !1077

; <label>:14:                                     ; preds = %1
  %15 = icmp eq i8 %5, 4, !dbg !1078
  br i1 %15, label %21, label %16, !dbg !1077

; <label>:16:                                     ; preds = %7, %14
  br label %17, !dbg !1079

; <label>:17:                                     ; preds = %16, %17
  %18 = tail call fastcc i64 @singlestep(%struct.lua_State* %0) #4, !dbg !1079
  %19 = load i8, i8* %4, align 1, !dbg !1081, !tbaa !670
  %20 = icmp eq i8 %19, 4, !dbg !1078
  br i1 %20, label %21, label %17, !dbg !1077, !llvm.loop !1082

; <label>:21:                                     ; preds = %17, %14
  tail call fastcc void @markroot(%struct.lua_State* %0) #4, !dbg !1084
  %22 = load i8, i8* %4, align 1, !dbg !1085, !tbaa !670
  %23 = icmp eq i8 %22, 0, !dbg !1086
  br i1 %23, label %28, label %24, !dbg !1087

; <label>:24:                                     ; preds = %21, %24
  %25 = tail call fastcc i64 @singlestep(%struct.lua_State* %0) #4, !dbg !1088
  %26 = load i8, i8* %4, align 1, !dbg !1085, !tbaa !670
  %27 = icmp eq i8 %26, 0, !dbg !1086
  br i1 %27, label %28, label %24, !dbg !1087, !llvm.loop !1090

; <label>:28:                                     ; preds = %24, %21
  %29 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 15, !dbg !1092
  %30 = load i64, i64* %29, align 8, !dbg !1092, !tbaa !691
  %31 = udiv i64 %30, 100, !dbg !1092
  %32 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 17, !dbg !1092
  %33 = load i32, i32* %32, align 8, !dbg !1092, !tbaa !692
  %34 = sext i32 %33 to i64, !dbg !1092
  %35 = mul i64 %31, %34, !dbg !1092
  %36 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 13, !dbg !1092
  store i64 %35, i64* %36, align 8, !dbg !1092, !tbaa !508
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1093
  ret void, !dbg !1093
}

; Function Attrs: noredzone nounwind
define internal fastcc void @markroot(%struct.lua_State* nocapture readonly) unnamed_addr #0 !dbg !1094 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1099
  %3 = load %struct.global_State*, %struct.global_State** %2, align 8, !dbg !1099, !tbaa !376
  %4 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 8, !dbg !1101
  %5 = bitcast %union.GCObject** %4 to <2 x %union.GCObject*>*, !dbg !1102
  store <2 x %union.GCObject*> zeroinitializer, <2 x %union.GCObject*>* %5, align 8, !dbg !1102, !tbaa !396
  %6 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 10, !dbg !1103
  store %union.GCObject* null, %union.GCObject** %6, align 8, !dbg !1104, !tbaa !777
  %7 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 21, !dbg !1105
  %8 = bitcast %struct.lua_State** %7 to %union.GCObject**, !dbg !1105
  %9 = load %union.GCObject*, %union.GCObject** %8, align 8, !dbg !1105, !tbaa !388
  %10 = getelementptr inbounds %union.GCObject, %union.GCObject* %9, i64 0, i32 0, i32 2, !dbg !1105
  %11 = load i8, i8* %10, align 1, !dbg !1105, !tbaa !403
  %12 = and i8 %11, 3, !dbg !1105
  %13 = icmp eq i8 %12, 0, !dbg !1105
  %14 = getelementptr inbounds %union.GCObject, %union.GCObject* %9, i64 0, i32 0, !dbg !1108
  br i1 %13, label %17, label %15, !dbg !1108

; <label>:15:                                     ; preds = %1
  tail call fastcc void @reallymarkobject(%struct.global_State* %3, %union.GCObject* %9) #4, !dbg !1105
  %16 = load %struct.lua_State*, %struct.lua_State** %7, align 8, !dbg !1109, !tbaa !388
  br label %17, !dbg !1105

; <label>:17:                                     ; preds = %1, %15
  %18 = phi %struct.lua_State* [ %14, %1 ], [ %16, %15 ], !dbg !1109
  %19 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %18, i64 0, i32 22, i32 1, !dbg !1109
  %20 = load i32, i32* %19, align 8, !dbg !1109, !tbaa !1112
  %21 = icmp sgt i32 %20, 3, !dbg !1109
  br i1 %21, label %22, label %30, !dbg !1109

; <label>:22:                                     ; preds = %17
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %18, i64 0, i32 22, i32 0, i32 0, !dbg !1109
  %24 = load %union.GCObject*, %union.GCObject** %23, align 8, !dbg !1109, !tbaa !403
  %25 = getelementptr inbounds %union.GCObject, %union.GCObject* %24, i64 0, i32 0, i32 2, !dbg !1109
  %26 = load i8, i8* %25, align 1, !dbg !1109, !tbaa !403
  %27 = and i8 %26, 3, !dbg !1109
  %28 = icmp eq i8 %27, 0, !dbg !1109
  br i1 %28, label %30, label %29, !dbg !1113

; <label>:29:                                     ; preds = %22
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %3, %union.GCObject* %24) #4, !dbg !1109
  br label %30, !dbg !1109

; <label>:30:                                     ; preds = %22, %29, %17
  %31 = load %struct.global_State*, %struct.global_State** %2, align 8, !dbg !1114, !tbaa !376
  %32 = getelementptr inbounds %struct.global_State, %struct.global_State* %31, i64 0, i32 20, i32 1, !dbg !1114
  %33 = load i32, i32* %32, align 8, !dbg !1114, !tbaa !1117
  %34 = icmp sgt i32 %33, 3, !dbg !1114
  br i1 %34, label %35, label %43, !dbg !1114

; <label>:35:                                     ; preds = %30
  %36 = getelementptr inbounds %struct.global_State, %struct.global_State* %31, i64 0, i32 20, i32 0, i32 0, !dbg !1114
  %37 = load %union.GCObject*, %union.GCObject** %36, align 8, !dbg !1114, !tbaa !403
  %38 = getelementptr inbounds %union.GCObject, %union.GCObject* %37, i64 0, i32 0, i32 2, !dbg !1114
  %39 = load i8, i8* %38, align 1, !dbg !1114, !tbaa !403
  %40 = and i8 %39, 3, !dbg !1114
  %41 = icmp eq i8 %40, 0, !dbg !1114
  br i1 %41, label %43, label %42, !dbg !1118

; <label>:42:                                     ; preds = %35
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %3, %union.GCObject* %37) #4, !dbg !1114
  br label %43, !dbg !1114

; <label>:43:                                     ; preds = %35, %42, %30
  tail call fastcc void @markmt(%struct.global_State* nonnull %3) #4, !dbg !1119
  %44 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 4, !dbg !1120
  store i8 1, i8* %44, align 1, !dbg !1121, !tbaa !670
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1122
  ret void, !dbg !1122
}

; Function Attrs: noredzone nounwind
define hidden void @luaC_barrierf(%struct.lua_State* nocapture readonly, %union.GCObject* nocapture, %union.GCObject*) local_unnamed_addr #0 !dbg !1123 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1134
  %5 = load %struct.global_State*, %struct.global_State** %4, align 8, !dbg !1134, !tbaa !376
  %6 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 4, !dbg !1136
  %7 = load i8, i8* %6, align 1, !dbg !1136, !tbaa !670
  %8 = icmp eq i8 %7, 1, !dbg !1138
  br i1 %8, label %9, label %10, !dbg !1139

; <label>:9:                                      ; preds = %3
  tail call fastcc void @reallymarkobject(%struct.global_State* %5, %union.GCObject* %2) #4, !dbg !1140
  br label %18, !dbg !1140

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds %union.GCObject, %union.GCObject* %1, i64 0, i32 0, i32 2, !dbg !1141
  %12 = load i8, i8* %11, align 1, !dbg !1141, !tbaa !403
  %13 = and i8 %12, -8, !dbg !1141
  %14 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 3, !dbg !1141
  %15 = load i8, i8* %14, align 8, !dbg !1141, !tbaa !499
  %16 = and i8 %15, 3, !dbg !1141
  %17 = or i8 %16, %13, !dbg !1141
  store i8 %17, i8* %11, align 1, !dbg !1141, !tbaa !403
  br label %18

; <label>:18:                                     ; preds = %10, %9
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1142
  ret void, !dbg !1142
}

; Function Attrs: noredzone nounwind
define internal fastcc void @reallymarkobject(%struct.global_State*, %union.GCObject*) unnamed_addr #0 !dbg !1143 {
  %3 = getelementptr inbounds %union.GCObject, %union.GCObject* %1, i64 0, i32 0, i32 2, !dbg !1156
  %4 = load i8, i8* %3, align 1, !dbg !1156, !tbaa !403
  %5 = and i8 %4, -4, !dbg !1156
  store i8 %5, i8* %3, align 1, !dbg !1156, !tbaa !403
  %6 = getelementptr inbounds %union.GCObject, %union.GCObject* %1, i64 0, i32 0, i32 1, !dbg !1157
  %7 = load i8, i8* %6, align 8, !dbg !1157, !tbaa !403
  switch i8 %7, label %77 [
    i8 9, label %71
    i8 7, label %8
    i8 10, label %30
    i8 6, label %53
    i8 5, label %59
    i8 8, label %65
  ], !dbg !1158

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %union.GCObject, %union.GCObject* %1, i64 0, i32 0, i32 4, !dbg !1159
  %10 = bitcast %struct.lua_TValue** %9 to %struct.Table**, !dbg !1159
  %11 = load %struct.Table*, %struct.Table** %10, align 8, !dbg !1159, !tbaa !403
  %12 = or i8 %5, 4, !dbg !1161
  store i8 %12, i8* %3, align 1, !dbg !1161, !tbaa !403
  %13 = icmp eq %struct.Table* %11, null, !dbg !1162
  br i1 %13, label %21, label %14, !dbg !1164

; <label>:14:                                     ; preds = %8
  %15 = getelementptr inbounds %struct.Table, %struct.Table* %11, i64 0, i32 2, !dbg !1165
  %16 = load i8, i8* %15, align 1, !dbg !1165, !tbaa !403
  %17 = and i8 %16, 3, !dbg !1165
  %18 = icmp eq i8 %17, 0, !dbg !1165
  br i1 %18, label %21, label %19, !dbg !1168

; <label>:19:                                     ; preds = %14
  %20 = bitcast %struct.Table* %11 to %union.GCObject*, !dbg !1165
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %union.GCObject* %20) #4, !dbg !1165
  br label %21, !dbg !1165

; <label>:21:                                     ; preds = %14, %8, %19
  %22 = getelementptr inbounds %union.GCObject, %union.GCObject* %1, i64 0, i32 0, i32 5, !dbg !1169
  %23 = bitcast %struct.lua_TValue** %22 to %union.GCObject**, !dbg !1169
  %24 = load %union.GCObject*, %union.GCObject** %23, align 8, !dbg !1169, !tbaa !403
  %25 = getelementptr inbounds %union.GCObject, %union.GCObject* %24, i64 0, i32 0, i32 2, !dbg !1169
  %26 = load i8, i8* %25, align 1, !dbg !1169, !tbaa !403
  %27 = and i8 %26, 3, !dbg !1169
  %28 = icmp eq i8 %27, 0, !dbg !1169
  br i1 %28, label %77, label %29, !dbg !1172

; <label>:29:                                     ; preds = %21
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %union.GCObject* %24) #4, !dbg !1169
  br label %77, !dbg !1169

; <label>:30:                                     ; preds = %2
  %31 = getelementptr inbounds %union.GCObject, %union.GCObject* %1, i64 0, i32 0, i32 4, !dbg !1174
  %32 = load %struct.lua_TValue*, %struct.lua_TValue** %31, align 8, !dbg !1174, !tbaa !764
  %33 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %32, i64 0, i32 1, !dbg !1174
  %34 = load i32, i32* %33, align 8, !dbg !1174, !tbaa !517
  %35 = icmp sgt i32 %34, 3, !dbg !1174
  br i1 %35, label %36, label %45, !dbg !1174

; <label>:36:                                     ; preds = %30
  %37 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %32, i64 0, i32 0, i32 0, !dbg !1174
  %38 = load %union.GCObject*, %union.GCObject** %37, align 8, !dbg !1174, !tbaa !403
  %39 = getelementptr inbounds %union.GCObject, %union.GCObject* %38, i64 0, i32 0, i32 2, !dbg !1174
  %40 = load i8, i8* %39, align 1, !dbg !1174, !tbaa !403
  %41 = and i8 %40, 3, !dbg !1174
  %42 = icmp eq i8 %41, 0, !dbg !1174
  br i1 %42, label %45, label %43, !dbg !1177

; <label>:43:                                     ; preds = %36
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %union.GCObject* %38) #4, !dbg !1174
  %44 = load %struct.lua_TValue*, %struct.lua_TValue** %31, align 8, !dbg !1178, !tbaa !764
  br label %45, !dbg !1174

; <label>:45:                                     ; preds = %36, %43, %30
  %46 = phi %struct.lua_TValue* [ %32, %36 ], [ %44, %43 ], [ %32, %30 ], !dbg !1178
  %47 = getelementptr inbounds %union.GCObject, %union.GCObject* %1, i64 0, i32 0, i32 5, !dbg !1180
  %48 = bitcast %struct.lua_TValue** %47 to %struct.lua_TValue*, !dbg !1181
  %49 = icmp eq %struct.lua_TValue* %46, %48, !dbg !1182
  br i1 %49, label %50, label %77, !dbg !1183

; <label>:50:                                     ; preds = %45
  %51 = load i8, i8* %3, align 1, !dbg !1184, !tbaa !403
  %52 = or i8 %51, 4, !dbg !1184
  store i8 %52, i8* %3, align 1, !dbg !1184, !tbaa !403
  br label %77, !dbg !1184

; <label>:53:                                     ; preds = %2
  %54 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 8, !dbg !1185
  %55 = bitcast %union.GCObject** %54 to i64*, !dbg !1185
  %56 = load i64, i64* %55, align 8, !dbg !1185, !tbaa !717
  %57 = getelementptr inbounds %union.GCObject, %union.GCObject* %1, i64 0, i32 0, i32 4, !dbg !1187
  %58 = bitcast %struct.lua_TValue** %57 to i64*, !dbg !1188
  store i64 %56, i64* %58, align 8, !dbg !1188, !tbaa !403
  store %union.GCObject* %1, %union.GCObject** %54, align 8, !dbg !1189, !tbaa !717
  br label %77, !dbg !1190

; <label>:59:                                     ; preds = %2
  %60 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 8, !dbg !1191
  %61 = bitcast %union.GCObject** %60 to i64*, !dbg !1191
  %62 = load i64, i64* %61, align 8, !dbg !1191, !tbaa !717
  %63 = getelementptr inbounds %union.GCObject, %union.GCObject* %1, i64 0, i32 0, i32 8, !dbg !1193
  %64 = bitcast i32** %63 to i64*, !dbg !1194
  store i64 %62, i64* %64, align 8, !dbg !1194, !tbaa !403
  store %union.GCObject* %1, %union.GCObject** %60, align 8, !dbg !1195, !tbaa !717
  br label %77, !dbg !1196

; <label>:65:                                     ; preds = %2
  %66 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 8, !dbg !1197
  %67 = bitcast %union.GCObject** %66 to i64*, !dbg !1197
  %68 = load i64, i64* %67, align 8, !dbg !1197, !tbaa !717
  %69 = getelementptr inbounds %union.GCObject, %union.GCObject* %1, i64 0, i32 0, i32 25, !dbg !1199
  %70 = bitcast %union.GCObject** %69 to i64*, !dbg !1200
  store i64 %68, i64* %70, align 8, !dbg !1200, !tbaa !403
  store %union.GCObject* %1, %union.GCObject** %66, align 8, !dbg !1201, !tbaa !717
  br label %77, !dbg !1202

; <label>:71:                                     ; preds = %2
  %72 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 8, !dbg !1203
  %73 = bitcast %union.GCObject** %72 to i64*, !dbg !1203
  %74 = load i64, i64* %73, align 8, !dbg !1203, !tbaa !717
  %75 = getelementptr inbounds %union.GCObject, %union.GCObject* %1, i64 0, i32 0, i32 19, !dbg !1205
  %76 = bitcast i32* %75 to i64*, !dbg !1206
  store i64 %74, i64* %76, align 8, !dbg !1206, !tbaa !403
  store %union.GCObject* %1, %union.GCObject** %72, align 8, !dbg !1207, !tbaa !717
  br label %77, !dbg !1208

; <label>:77:                                     ; preds = %45, %50, %29, %21, %2, %71, %65, %59, %53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1209
  ret void, !dbg !1209
}

; Function Attrs: noredzone nounwind
define hidden void @luaC_barrierback(%struct.lua_State* nocapture readonly, %struct.Table*) local_unnamed_addr #0 !dbg !1210 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1220
  %4 = load %struct.global_State*, %struct.global_State** %3, align 8, !dbg !1220, !tbaa !376
  %5 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 2, !dbg !1223
  %6 = load i8, i8* %5, align 1, !dbg !1223, !tbaa !403
  %7 = and i8 %6, -5, !dbg !1223
  store i8 %7, i8* %5, align 1, !dbg !1223, !tbaa !403
  %8 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 9, !dbg !1224
  %9 = bitcast %union.GCObject** %8 to i64*, !dbg !1224
  %10 = load i64, i64* %9, align 8, !dbg !1224, !tbaa !793
  %11 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 9, !dbg !1225
  %12 = bitcast %union.GCObject** %11 to i64*, !dbg !1226
  store i64 %10, i64* %12, align 8, !dbg !1226, !tbaa !957
  %13 = bitcast %union.GCObject** %8 to %struct.Table**, !dbg !1227
  store %struct.Table* %1, %struct.Table** %13, align 8, !dbg !1227, !tbaa !793
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1228
  ret void, !dbg !1228
}

; Function Attrs: noredzone nounwind
define hidden void @luaC_link(%struct.lua_State* nocapture readonly, %union.GCObject*, i8 zeroext) local_unnamed_addr #0 !dbg !1229 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1240
  %5 = load %struct.global_State*, %struct.global_State** %4, align 8, !dbg !1240, !tbaa !376
  %6 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 6, !dbg !1242
  %7 = bitcast %union.GCObject** %6 to i64*, !dbg !1242
  %8 = load i64, i64* %7, align 8, !dbg !1242, !tbaa !592
  %9 = bitcast %union.GCObject* %1 to i64*, !dbg !1243
  store i64 %8, i64* %9, align 8, !dbg !1243, !tbaa !403
  store %union.GCObject* %1, %union.GCObject** %6, align 8, !dbg !1244, !tbaa !592
  %10 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 3, !dbg !1245
  %11 = load i8, i8* %10, align 8, !dbg !1245, !tbaa !499
  %12 = and i8 %11, 3, !dbg !1245
  %13 = getelementptr inbounds %union.GCObject, %union.GCObject* %1, i64 0, i32 0, i32 2, !dbg !1246
  store i8 %12, i8* %13, align 1, !dbg !1247, !tbaa !403
  %14 = getelementptr inbounds %union.GCObject, %union.GCObject* %1, i64 0, i32 0, i32 1, !dbg !1248
  store i8 %2, i8* %14, align 8, !dbg !1249, !tbaa !403
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1250
  ret void, !dbg !1250
}

; Function Attrs: noredzone nounwind
define hidden void @luaC_linkupval(%struct.lua_State* nocapture readonly, %struct.UpVal*) local_unnamed_addr #0 !dbg !1251 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1261
  %4 = load %struct.global_State*, %struct.global_State** %3, align 8, !dbg !1261, !tbaa !376
  %5 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 6, !dbg !1264
  %6 = bitcast %union.GCObject** %5 to i64*, !dbg !1264
  %7 = load i64, i64* %6, align 8, !dbg !1264, !tbaa !592
  %8 = bitcast %struct.UpVal* %1 to i64*, !dbg !1265
  store i64 %7, i64* %8, align 8, !dbg !1265, !tbaa !403
  %9 = bitcast %union.GCObject** %5 to %struct.UpVal**, !dbg !1266
  store %struct.UpVal* %1, %struct.UpVal** %9, align 8, !dbg !1266, !tbaa !592
  %10 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %1, i64 0, i32 2, !dbg !1267
  %11 = load i8, i8* %10, align 1, !dbg !1267, !tbaa !403
  %12 = and i8 %11, 7, !dbg !1267
  %13 = icmp eq i8 %12, 0, !dbg !1267
  br i1 %13, label %14, label %51, !dbg !1267

; <label>:14:                                     ; preds = %2
  %15 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 4, !dbg !1269
  %16 = load i8, i8* %15, align 1, !dbg !1269, !tbaa !670
  %17 = icmp eq i8 %16, 1, !dbg !1272
  br i1 %17, label %18, label %45, !dbg !1273

; <label>:18:                                     ; preds = %14
  %19 = or i8 %11, 4, !dbg !1274
  store i8 %19, i8* %10, align 1, !dbg !1274, !tbaa !403
  %20 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %1, i64 0, i32 3, !dbg !1276
  %21 = load %struct.lua_TValue*, %struct.lua_TValue** %20, align 8, !dbg !1276, !tbaa !764
  %22 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %21, i64 0, i32 1, !dbg !1276
  %23 = load i32, i32* %22, align 8, !dbg !1276, !tbaa !517
  %24 = icmp sgt i32 %23, 3, !dbg !1276
  br i1 %24, label %25, label %51, !dbg !1276

; <label>:25:                                     ; preds = %18
  %26 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %21, i64 0, i32 0, i32 0, !dbg !1276
  %27 = load %union.GCObject*, %union.GCObject** %26, align 8, !dbg !1276, !tbaa !403
  %28 = getelementptr inbounds %union.GCObject, %union.GCObject* %27, i64 0, i32 0, i32 2, !dbg !1276
  %29 = load i8, i8* %28, align 1, !dbg !1276, !tbaa !403
  %30 = and i8 %29, 3, !dbg !1276
  %31 = icmp eq i8 %30, 0, !dbg !1276
  br i1 %31, label %51, label %32, !dbg !1276

; <label>:32:                                     ; preds = %25
  %33 = load %struct.global_State*, %struct.global_State** %3, align 8, !dbg !1283, !tbaa !376
  %34 = getelementptr inbounds %struct.global_State, %struct.global_State* %33, i64 0, i32 4, !dbg !1285
  %35 = load i8, i8* %34, align 1, !dbg !1285, !tbaa !670
  %36 = icmp eq i8 %35, 1, !dbg !1286
  br i1 %36, label %37, label %38, !dbg !1287

; <label>:37:                                     ; preds = %32
  tail call fastcc void @reallymarkobject(%struct.global_State* %33, %union.GCObject* %27) #3, !dbg !1288
  br label %44, !dbg !1288

; <label>:38:                                     ; preds = %32
  %39 = and i8 %11, -8, !dbg !1289
  %40 = getelementptr inbounds %struct.global_State, %struct.global_State* %33, i64 0, i32 3, !dbg !1289
  %41 = load i8, i8* %40, align 8, !dbg !1289, !tbaa !499
  %42 = and i8 %41, 3, !dbg !1289
  %43 = or i8 %42, %39, !dbg !1289
  store i8 %43, i8* %10, align 1, !dbg !1289, !tbaa !403
  br label %44

; <label>:44:                                     ; preds = %37, %38
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1290
  br label %51, !dbg !1276

; <label>:45:                                     ; preds = %14
  %46 = and i8 %11, -8, !dbg !1291
  %47 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 3, !dbg !1291
  %48 = load i8, i8* %47, align 8, !dbg !1291, !tbaa !499
  %49 = and i8 %48, 3, !dbg !1291
  %50 = or i8 %49, %46, !dbg !1291
  store i8 %50, i8* %10, align 1, !dbg !1291, !tbaa !403
  br label %51

; <label>:51:                                     ; preds = %25, %2, %45, %44, %18
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1293
  ret void, !dbg !1293
}

; Function Attrs: noredzone
declare hidden void @luaD_call(%struct.lua_State*, %struct.lua_TValue*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare hidden void @luaF_freeproto(%struct.lua_State*, %struct.Proto*) local_unnamed_addr #1

; Function Attrs: noredzone
declare hidden void @luaF_freeclosure(%struct.lua_State*, %union.Closure*) local_unnamed_addr #1

; Function Attrs: noredzone
declare hidden void @luaF_freeupval(%struct.lua_State*, %struct.UpVal*) local_unnamed_addr #1

; Function Attrs: noredzone
declare hidden void @luaH_free(%struct.lua_State*, %struct.Table*) local_unnamed_addr #1

; Function Attrs: noredzone
declare hidden void @luaE_freethread(%struct.lua_State*, %struct.lua_State*) local_unnamed_addr #1

; Function Attrs: noredzone
declare hidden i8* @luaM_realloc_(%struct.lua_State*, i8*, i64, i64) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define internal fastcc i64 @propagatemark(%struct.global_State*) unnamed_addr #0 !dbg !1294 {
  %2 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 8, !dbg !1314
  %3 = load %union.GCObject*, %union.GCObject** %2, align 8, !dbg !1314, !tbaa !717
  %4 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 2, !dbg !1316
  %5 = load i8, i8* %4, align 1, !dbg !1316, !tbaa !403
  %6 = or i8 %5, 4, !dbg !1316
  store i8 %6, i8* %4, align 1, !dbg !1316, !tbaa !403
  %7 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 1, !dbg !1317
  %8 = load i8, i8* %7, align 8, !dbg !1317, !tbaa !403
  switch i8 %8, label %522 [
    i8 5, label %9
    i8 6, label %175
    i8 8, label %259
    i8 9, label %376
  ], !dbg !1318

; <label>:9:                                      ; preds = %1
  %10 = bitcast %union.GCObject* %3 to %struct.Table*, !dbg !1319
  %11 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 8, !dbg !1321
  %12 = bitcast i32** %11 to i64*, !dbg !1321
  %13 = load i64, i64* %12, align 8, !dbg !1321, !tbaa !957
  %14 = bitcast %union.GCObject** %2 to i64*, !dbg !1322
  store i64 %13, i64* %14, align 8, !dbg !1322, !tbaa !717
  %15 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 4, !dbg !1341
  %16 = bitcast %struct.lua_TValue** %15 to %struct.Table**, !dbg !1341
  %17 = load %struct.Table*, %struct.Table** %16, align 8, !dbg !1341, !tbaa !1343
  %18 = icmp eq %struct.Table* %17, null, !dbg !1344
  br i1 %18, label %74, label %19, !dbg !1345

; <label>:19:                                     ; preds = %9
  %20 = getelementptr inbounds %struct.Table, %struct.Table* %17, i64 0, i32 2, !dbg !1346
  %21 = load i8, i8* %20, align 1, !dbg !1346, !tbaa !403
  %22 = and i8 %21, 3, !dbg !1346
  %23 = icmp eq i8 %22, 0, !dbg !1346
  br i1 %23, label %28, label %24, !dbg !1349

; <label>:24:                                     ; preds = %19
  %25 = bitcast %struct.Table* %17 to %union.GCObject*, !dbg !1346
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %0, %union.GCObject* %25) #3, !dbg !1346
  %26 = load %struct.Table*, %struct.Table** %16, align 8, !dbg !1350, !tbaa !1343
  %27 = icmp eq %struct.Table* %26, null, !dbg !1350
  br i1 %27, label %74, label %28, !dbg !1350

; <label>:28:                                     ; preds = %24, %19
  %29 = phi %struct.Table* [ %26, %24 ], [ %17, %19 ]
  %30 = getelementptr inbounds %struct.Table, %struct.Table* %29, i64 0, i32 3, !dbg !1350
  %31 = load i8, i8* %30, align 2, !dbg !1350, !tbaa !410
  %32 = and i8 %31, 8, !dbg !1350
  %33 = icmp eq i8 %32, 0, !dbg !1350
  br i1 %33, label %34, label %74, !dbg !1350

; <label>:34:                                     ; preds = %28
  %35 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 24, i64 3, !dbg !1350
  %36 = load %union.TString*, %union.TString** %35, align 8, !dbg !1350, !tbaa !396
  %37 = tail call %struct.lua_TValue* @luaT_gettm(%struct.Table* nonnull %29, i32 3, %union.TString* %36) #3, !dbg !1350
  %38 = icmp eq %struct.lua_TValue* %37, null, !dbg !1352
  br i1 %38, label %74, label %39, !dbg !1354

; <label>:39:                                     ; preds = %34
  %40 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %37, i64 0, i32 1, !dbg !1355
  %41 = load i32, i32* %40, align 8, !dbg !1355, !tbaa !517
  %42 = icmp eq i32 %41, 4, !dbg !1355
  br i1 %42, label %43, label %74, !dbg !1356

; <label>:43:                                     ; preds = %39
  %44 = bitcast %struct.lua_TValue* %37 to %union.TString**, !dbg !1357
  %45 = load %union.TString*, %union.TString** %44, align 8, !dbg !1357, !tbaa !403
  %46 = getelementptr inbounds %union.TString, %union.TString* %45, i64 1, !dbg !1357
  %47 = bitcast %union.TString* %46 to i8*, !dbg !1357
  %48 = tail call i8* @strchr(i8* nonnull %47, i32 107) #3, !dbg !1359
  %49 = icmp ne i8* %48, null, !dbg !1360
  %50 = zext i1 %49 to i32, !dbg !1360
  %51 = load %union.TString*, %union.TString** %44, align 8, !dbg !1361, !tbaa !403
  %52 = getelementptr inbounds %union.TString, %union.TString* %51, i64 1, !dbg !1361
  %53 = bitcast %union.TString* %52 to i8*, !dbg !1361
  %54 = tail call i8* @strchr(i8* nonnull %53, i32 118) #3, !dbg !1362
  %55 = icmp ne i8* %54, null, !dbg !1363
  %56 = or i1 %49, %55, !dbg !1364
  br i1 %56, label %57, label %69, !dbg !1364

; <label>:57:                                     ; preds = %43
  %58 = zext i1 %55 to i32, !dbg !1363
  %59 = load i8, i8* %4, align 1, !dbg !1366, !tbaa !864
  %60 = and i8 %59, -25, !dbg !1366
  %61 = shl nuw nsw i32 %50, 3, !dbg !1368
  %62 = shl nuw nsw i32 %58, 4, !dbg !1368
  %63 = or i32 %62, %61, !dbg !1368
  %64 = trunc i32 %63 to i8, !dbg !1369
  %65 = or i8 %60, %64, !dbg !1369
  store i8 %65, i8* %4, align 1, !dbg !1369, !tbaa !864
  %66 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 10, !dbg !1370
  %67 = bitcast %union.GCObject** %66 to i64*, !dbg !1370
  %68 = load i64, i64* %67, align 8, !dbg !1370, !tbaa !777
  store i64 %68, i64* %12, align 8, !dbg !1371, !tbaa !957
  store %union.GCObject* %3, %union.GCObject** %66, align 8, !dbg !1372, !tbaa !777
  br label %69, !dbg !1373

; <label>:69:                                     ; preds = %57, %43
  %70 = and i1 %49, %55, !dbg !1374
  br i1 %70, label %71, label %73, !dbg !1374

; <label>:71:                                     ; preds = %69
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1376
  %72 = getelementptr inbounds %struct.Table, %struct.Table* %10, i64 0, i32 4, !dbg !1377
  br label %157, !dbg !1378

; <label>:73:                                     ; preds = %69
  br i1 %55, label %101, label %74, !dbg !1379

; <label>:74:                                     ; preds = %73, %39, %34, %28, %24, %9
  %75 = phi i32 [ %50, %73 ], [ 0, %9 ], [ 0, %28 ], [ 0, %24 ], [ 0, %34 ], [ 0, %39 ]
  %76 = phi i1 [ %49, %73 ], [ false, %9 ], [ false, %28 ], [ false, %24 ], [ false, %34 ], [ false, %39 ]
  %77 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 9, !dbg !1380
  %78 = bitcast %struct.lua_TValue** %77 to i32*, !dbg !1380
  %79 = load i32, i32* %78, align 8, !dbg !1380, !tbaa !861
  %80 = icmp eq i32 %79, 0, !dbg !1384
  br i1 %80, label %101, label %81, !dbg !1384

; <label>:81:                                     ; preds = %74
  %82 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 5
  %83 = sext i32 %79 to i64, !dbg !1384
  br label %84, !dbg !1384

; <label>:84:                                     ; preds = %99, %81
  %85 = phi i64 [ %83, %81 ], [ %86, %99 ]
  %86 = add nsw i64 %85, -1, !dbg !1385
  %87 = load %struct.lua_TValue*, %struct.lua_TValue** %82, align 8, !dbg !1386, !tbaa !869
  %88 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %87, i64 %86, i32 1, !dbg !1386
  %89 = load i32, i32* %88, align 8, !dbg !1386, !tbaa !517
  %90 = icmp sgt i32 %89, 3, !dbg !1386
  br i1 %90, label %91, label %99, !dbg !1386

; <label>:91:                                     ; preds = %84
  %92 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %87, i64 %86, i32 0, i32 0, !dbg !1386
  %93 = load %union.GCObject*, %union.GCObject** %92, align 8, !dbg !1386, !tbaa !403
  %94 = getelementptr inbounds %union.GCObject, %union.GCObject* %93, i64 0, i32 0, i32 2, !dbg !1386
  %95 = load i8, i8* %94, align 1, !dbg !1386, !tbaa !403
  %96 = and i8 %95, 3, !dbg !1386
  %97 = icmp eq i8 %96, 0, !dbg !1386
  br i1 %97, label %99, label %98, !dbg !1389

; <label>:98:                                     ; preds = %91
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %union.GCObject* %93) #3, !dbg !1386
  br label %99, !dbg !1386

; <label>:99:                                     ; preds = %98, %91, %84
  %100 = icmp eq i64 %86, 0
  br i1 %100, label %101, label %84, !dbg !1384, !llvm.loop !1390

; <label>:101:                                    ; preds = %99, %74, %73
  %102 = phi i32 [ %50, %73 ], [ %75, %74 ], [ %75, %99 ]
  %103 = phi i32 [ 1, %73 ], [ 0, %74 ], [ 0, %99 ]
  %104 = phi i1 [ %49, %73 ], [ %76, %74 ], [ %76, %99 ]
  %105 = phi i1 [ true, %73 ], [ false, %74 ], [ false, %99 ]
  %106 = getelementptr inbounds %struct.Table, %struct.Table* %10, i64 0, i32 4, !dbg !1393
  %107 = load i8, i8* %106, align 1, !dbg !1393, !tbaa !901
  %108 = zext i8 %107 to i32, !dbg !1393
  %109 = shl nsw i32 -1, %108, !dbg !1394
  %110 = xor i32 %109, -1, !dbg !1394
  %111 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 6
  %112 = bitcast %struct.global_State** %111 to %struct.Node**
  %113 = sext i32 %110 to i64, !dbg !1395
  br label %114, !dbg !1395

; <label>:114:                                    ; preds = %151, %101
  %115 = phi i64 [ %113, %101 ], [ %152, %151 ]
  %116 = load %struct.Node*, %struct.Node** %112, align 8, !dbg !1396, !tbaa !905
  %117 = getelementptr inbounds %struct.Node, %struct.Node* %116, i64 %115, i32 0, i32 1, !dbg !1397
  %118 = load i32, i32* %117, align 8, !dbg !1397, !tbaa !908
  %119 = icmp eq i32 %118, 0, !dbg !1397
  br i1 %119, label %120, label %126, !dbg !1399

; <label>:120:                                    ; preds = %114
  %121 = getelementptr inbounds %struct.Node, %struct.Node* %116, i64 %115, i32 1, i32 0, i32 1, !dbg !1400
  %122 = load i32, i32* %121, align 8, !dbg !1400, !tbaa !403
  %123 = icmp sgt i32 %122, 3, !dbg !1400
  br i1 %123, label %124, label %125, !dbg !1402

; <label>:124:                                    ; preds = %120
  store i32 11, i32* %121, align 8, !dbg !1403, !tbaa !403
  br label %125, !dbg !1403

; <label>:125:                                    ; preds = %124, %120
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1404
  br label %151, !dbg !1405

; <label>:126:                                    ; preds = %114
  br i1 %104, label %139, label %127, !dbg !1406

; <label>:127:                                    ; preds = %126
  %128 = getelementptr inbounds %struct.Node, %struct.Node* %116, i64 %115, i32 1, i32 0, i32 1, !dbg !1408
  %129 = load i32, i32* %128, align 8, !dbg !1408, !tbaa !403
  %130 = icmp sgt i32 %129, 3, !dbg !1408
  br i1 %130, label %131, label %139, !dbg !1408

; <label>:131:                                    ; preds = %127
  %132 = getelementptr inbounds %struct.Node, %struct.Node* %116, i64 %115, i32 1, i32 0, i32 0, i32 0, !dbg !1408
  %133 = load %union.GCObject*, %union.GCObject** %132, align 8, !dbg !1408, !tbaa !403
  %134 = getelementptr inbounds %union.GCObject, %union.GCObject* %133, i64 0, i32 0, i32 2, !dbg !1408
  %135 = load i8, i8* %134, align 1, !dbg !1408, !tbaa !403
  %136 = and i8 %135, 3, !dbg !1408
  %137 = icmp eq i8 %136, 0, !dbg !1408
  br i1 %137, label %139, label %138, !dbg !1412

; <label>:138:                                    ; preds = %131
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %union.GCObject* %133) #3, !dbg !1408
  br label %139, !dbg !1408

; <label>:139:                                    ; preds = %138, %131, %127, %126
  br i1 %105, label %151, label %140, !dbg !1413

; <label>:140:                                    ; preds = %139
  %141 = load i32, i32* %117, align 8, !dbg !1414, !tbaa !908
  %142 = icmp sgt i32 %141, 3, !dbg !1414
  br i1 %142, label %143, label %151, !dbg !1414

; <label>:143:                                    ; preds = %140
  %144 = getelementptr inbounds %struct.Node, %struct.Node* %116, i64 %115, i32 0, i32 0, i32 0, !dbg !1414
  %145 = load %union.GCObject*, %union.GCObject** %144, align 8, !dbg !1414, !tbaa !403
  %146 = getelementptr inbounds %union.GCObject, %union.GCObject* %145, i64 0, i32 0, i32 2, !dbg !1414
  %147 = load i8, i8* %146, align 1, !dbg !1414, !tbaa !403
  %148 = and i8 %147, 3, !dbg !1414
  %149 = icmp eq i8 %148, 0, !dbg !1414
  br i1 %149, label %151, label %150, !dbg !1418

; <label>:150:                                    ; preds = %143
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %union.GCObject* %145) #3, !dbg !1414
  br label %151, !dbg !1414

; <label>:151:                                    ; preds = %150, %143, %140, %139, %125
  %152 = add nsw i64 %115, -1, !dbg !1394
  %153 = icmp eq i64 %115, 0
  br i1 %153, label %154, label %114, !dbg !1395, !llvm.loop !1419

; <label>:154:                                    ; preds = %151
  %155 = or i32 %103, %102, !dbg !1422
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1376
  %156 = icmp eq i32 %155, 0, !dbg !1423
  br i1 %156, label %161, label %157, !dbg !1378

; <label>:157:                                    ; preds = %71, %154
  %158 = phi i8* [ %72, %71 ], [ %106, %154 ], !dbg !1377
  %159 = load i8, i8* %4, align 1, !dbg !1424, !tbaa !403
  %160 = and i8 %159, -5, !dbg !1424
  store i8 %160, i8* %4, align 1, !dbg !1424, !tbaa !403
  br label %161, !dbg !1424

; <label>:161:                                    ; preds = %154, %157
  %162 = phi i8* [ %106, %154 ], [ %158, %157 ], !dbg !1377
  %163 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 9, !dbg !1425
  %164 = bitcast %struct.lua_TValue** %163 to i32*, !dbg !1425
  %165 = load i32, i32* %164, align 8, !dbg !1425, !tbaa !861
  %166 = sext i32 %165 to i64, !dbg !1426
  %167 = shl nsw i64 %166, 4, !dbg !1427
  %168 = add nsw i64 %167, 64, !dbg !1428
  %169 = load i8, i8* %162, align 1, !dbg !1377, !tbaa !901
  %170 = zext i8 %169 to i32, !dbg !1377
  %171 = shl i32 1, %170, !dbg !1377
  %172 = sext i32 %171 to i64, !dbg !1377
  %173 = mul nsw i64 %172, 40, !dbg !1429
  %174 = add nsw i64 %168, %173, !dbg !1430
  br label %522

; <label>:175:                                    ; preds = %1
  %176 = bitcast %union.GCObject* %3 to %union.Closure*, !dbg !1431
  %177 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 4, !dbg !1433
  %178 = bitcast %struct.lua_TValue** %177 to i64*, !dbg !1433
  %179 = load i64, i64* %178, align 8, !dbg !1433, !tbaa !403
  %180 = bitcast %union.GCObject** %2 to i64*, !dbg !1434
  store i64 %179, i64* %180, align 8, !dbg !1434, !tbaa !717
  %181 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 5, !dbg !1449
  %182 = bitcast %struct.lua_TValue** %181 to %union.GCObject**, !dbg !1449
  %183 = load %union.GCObject*, %union.GCObject** %182, align 8, !dbg !1449, !tbaa !403
  %184 = getelementptr inbounds %union.GCObject, %union.GCObject* %183, i64 0, i32 0, i32 2, !dbg !1449
  %185 = load i8, i8* %184, align 1, !dbg !1449, !tbaa !403
  %186 = and i8 %185, 3, !dbg !1449
  %187 = icmp eq i8 %186, 0, !dbg !1449
  br i1 %187, label %189, label %188, !dbg !1452

; <label>:188:                                    ; preds = %175
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %0, %union.GCObject* %183) #3, !dbg !1449
  br label %189, !dbg !1449

; <label>:189:                                    ; preds = %188, %175
  %190 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 3, !dbg !1453
  %191 = load i8, i8* %190, align 2, !dbg !1453, !tbaa !403
  %192 = icmp eq i8 %191, 0, !dbg !1454
  br i1 %192, label %217, label %193, !dbg !1455

; <label>:193:                                    ; preds = %189
  %194 = getelementptr inbounds %union.Closure, %union.Closure* %176, i64 0, i32 0, i32 4, !dbg !1457
  %195 = load i8, i8* %194, align 1, !dbg !1457, !tbaa !403
  %196 = icmp eq i8 %195, 0, !dbg !1460
  br i1 %196, label %250, label %197, !dbg !1461

; <label>:197:                                    ; preds = %193, %212
  %198 = phi i8 [ %213, %212 ], [ %195, %193 ]
  %199 = phi i64 [ %214, %212 ], [ 0, %193 ]
  %200 = getelementptr inbounds %union.Closure, %union.Closure* %176, i64 0, i32 0, i32 8, i64 %199, i32 1, !dbg !1462
  %201 = load i32, i32* %200, align 8, !dbg !1462, !tbaa !403
  %202 = icmp sgt i32 %201, 3, !dbg !1462
  br i1 %202, label %203, label %212, !dbg !1462

; <label>:203:                                    ; preds = %197
  %204 = getelementptr inbounds %union.Closure, %union.Closure* %176, i64 0, i32 0, i32 8, i64 %199, i32 0, i32 0, !dbg !1462
  %205 = load %union.GCObject*, %union.GCObject** %204, align 8, !dbg !1462, !tbaa !403
  %206 = getelementptr inbounds %union.GCObject, %union.GCObject* %205, i64 0, i32 0, i32 2, !dbg !1462
  %207 = load i8, i8* %206, align 1, !dbg !1462, !tbaa !403
  %208 = and i8 %207, 3, !dbg !1462
  %209 = icmp eq i8 %208, 0, !dbg !1462
  br i1 %209, label %212, label %210, !dbg !1465

; <label>:210:                                    ; preds = %203
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %union.GCObject* %205) #3, !dbg !1462
  %211 = load i8, i8* %194, align 1, !dbg !1457, !tbaa !403
  br label %212, !dbg !1462

; <label>:212:                                    ; preds = %210, %203, %197
  %213 = phi i8 [ %198, %203 ], [ %198, %197 ], [ %211, %210 ], !dbg !1457
  %214 = add nuw nsw i64 %199, 1, !dbg !1466
  %215 = zext i8 %213 to i64, !dbg !1460
  %216 = icmp ult i64 %214, %215, !dbg !1460
  br i1 %216, label %197, label %250, !dbg !1461, !llvm.loop !1467

; <label>:217:                                    ; preds = %189
  %218 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 6, !dbg !1470
  %219 = bitcast %struct.global_State** %218 to %union.GCObject**, !dbg !1470
  %220 = load %union.GCObject*, %union.GCObject** %219, align 8, !dbg !1470, !tbaa !403
  %221 = getelementptr inbounds %union.GCObject, %union.GCObject* %220, i64 0, i32 0, i32 2, !dbg !1470
  %222 = load i8, i8* %221, align 1, !dbg !1470, !tbaa !403
  %223 = and i8 %222, 3, !dbg !1470
  %224 = icmp eq i8 %223, 0, !dbg !1470
  br i1 %224, label %226, label %225, !dbg !1473

; <label>:225:                                    ; preds = %217
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %0, %union.GCObject* %220) #3, !dbg !1470
  br label %226, !dbg !1470

; <label>:226:                                    ; preds = %225, %217
  %227 = getelementptr inbounds %union.Closure, %union.Closure* %176, i64 0, i32 0, i32 4, !dbg !1475
  %228 = load i8, i8* %227, align 1, !dbg !1475, !tbaa !403
  %229 = icmp eq i8 %228, 0, !dbg !1478
  br i1 %229, label %250, label %230, !dbg !1479

; <label>:230:                                    ; preds = %226
  %231 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 7
  %232 = bitcast %struct.CallInfo** %231 to [1 x %struct.UpVal*]*
  br label %233, !dbg !1479

; <label>:233:                                    ; preds = %245, %230
  %234 = phi i8 [ %228, %230 ], [ %246, %245 ]
  %235 = phi i64 [ 0, %230 ], [ %247, %245 ]
  %236 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %232, i64 0, i64 %235, !dbg !1480
  %237 = bitcast %struct.UpVal** %236 to %union.GCObject**, !dbg !1480
  %238 = load %union.GCObject*, %union.GCObject** %237, align 8, !dbg !1480, !tbaa !403
  %239 = getelementptr inbounds %union.GCObject, %union.GCObject* %238, i64 0, i32 0, i32 2, !dbg !1480
  %240 = load i8, i8* %239, align 1, !dbg !1480, !tbaa !403
  %241 = and i8 %240, 3, !dbg !1480
  %242 = icmp eq i8 %241, 0, !dbg !1480
  br i1 %242, label %245, label %243, !dbg !1483

; <label>:243:                                    ; preds = %233
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %union.GCObject* %238) #3, !dbg !1480
  %244 = load i8, i8* %227, align 1, !dbg !1475, !tbaa !403
  br label %245, !dbg !1480

; <label>:245:                                    ; preds = %243, %233
  %246 = phi i8 [ %234, %233 ], [ %244, %243 ], !dbg !1475
  %247 = add nuw nsw i64 %235, 1, !dbg !1484
  %248 = zext i8 %246 to i64, !dbg !1478
  %249 = icmp ult i64 %247, %248, !dbg !1478
  br i1 %249, label %233, label %250, !dbg !1479, !llvm.loop !1485

; <label>:250:                                    ; preds = %212, %245, %193, %226
  %251 = phi i8 [ 0, %193 ], [ 0, %226 ], [ %246, %245 ], [ %213, %212 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1488
  %252 = load i8, i8* %190, align 2, !dbg !1489, !tbaa !403
  %253 = icmp eq i8 %252, 0, !dbg !1490
  %254 = zext i8 %251 to i32, !dbg !1491
  %255 = select i1 %253, i32 3, i32 4, !dbg !1490
  %256 = shl i32 %254, %255, !dbg !1490
  %257 = add nuw nsw i32 %256, 40, !dbg !1490
  %258 = zext i32 %257 to i64, !dbg !1490
  br label %522

; <label>:259:                                    ; preds = %1
  %260 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, !dbg !1492
  %261 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 25, !dbg !1494
  %262 = bitcast %union.GCObject** %261 to i64*, !dbg !1494
  %263 = load i64, i64* %262, align 8, !dbg !1494, !tbaa !1495
  %264 = bitcast %union.GCObject** %2 to i64*, !dbg !1496
  store i64 %263, i64* %264, align 8, !dbg !1496, !tbaa !717
  %265 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 9, !dbg !1497
  %266 = bitcast %union.GCObject** %265 to i64*, !dbg !1497
  %267 = load i64, i64* %266, align 8, !dbg !1497, !tbaa !793
  store i64 %267, i64* %262, align 8, !dbg !1498, !tbaa !1495
  store %union.GCObject* %3, %union.GCObject** %265, align 8, !dbg !1499, !tbaa !793
  %268 = load i8, i8* %4, align 1, !dbg !1500, !tbaa !403
  %269 = and i8 %268, -5, !dbg !1500
  store i8 %269, i8* %4, align 1, !dbg !1500, !tbaa !403
  %270 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 22, i32 1, !dbg !1513
  %271 = load i32, i32* %270, align 8, !dbg !1513, !tbaa !1112
  %272 = icmp sgt i32 %271, 3, !dbg !1513
  br i1 %272, label %273, label %281, !dbg !1513

; <label>:273:                                    ; preds = %259
  %274 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 22, i32 0, i32 0, !dbg !1513
  %275 = load %union.GCObject*, %union.GCObject** %274, align 8, !dbg !1513, !tbaa !403
  %276 = getelementptr inbounds %union.GCObject, %union.GCObject* %275, i64 0, i32 0, i32 2, !dbg !1513
  %277 = load i8, i8* %276, align 1, !dbg !1513, !tbaa !403
  %278 = and i8 %277, 3, !dbg !1513
  %279 = icmp eq i8 %278, 0, !dbg !1513
  br i1 %279, label %281, label %280, !dbg !1516

; <label>:280:                                    ; preds = %273
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %0, %union.GCObject* %275) #3, !dbg !1513
  br label %281, !dbg !1513

; <label>:281:                                    ; preds = %280, %273, %259
  %282 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 4, !dbg !1517
  %283 = load %struct.lua_TValue*, %struct.lua_TValue** %282, align 8, !dbg !1517, !tbaa !516
  %284 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 12, !dbg !1519
  %285 = load %struct.CallInfo*, %struct.CallInfo** %284, align 8, !dbg !1519, !tbaa !1521
  %286 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 7, !dbg !1523
  %287 = load %struct.CallInfo*, %struct.CallInfo** %286, align 8, !dbg !1523, !tbaa !1525
  %288 = icmp ugt %struct.CallInfo* %285, %287, !dbg !1526
  br i1 %288, label %298, label %289, !dbg !1527

; <label>:289:                                    ; preds = %281, %289
  %290 = phi %struct.CallInfo* [ %296, %289 ], [ %285, %281 ]
  %291 = phi %struct.lua_TValue* [ %295, %289 ], [ %283, %281 ]
  %292 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %290, i64 0, i32 2, !dbg !1528
  %293 = load %struct.lua_TValue*, %struct.lua_TValue** %292, align 8, !dbg !1528, !tbaa !1531
  %294 = icmp ult %struct.lua_TValue* %291, %293, !dbg !1533
  %295 = select i1 %294, %struct.lua_TValue* %293, %struct.lua_TValue* %291, !dbg !1534
  %296 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %290, i64 1, !dbg !1535
  %297 = icmp ugt %struct.CallInfo* %296, %287, !dbg !1526
  br i1 %297, label %298, label %289, !dbg !1527, !llvm.loop !1536

; <label>:298:                                    ; preds = %289, %281
  %299 = phi %struct.lua_TValue* [ %283, %281 ], [ %295, %289 ], !dbg !1539
  %300 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 10, !dbg !1540
  %301 = load %struct.lua_TValue*, %struct.lua_TValue** %300, align 8, !dbg !1540, !tbaa !1542
  %302 = icmp ult %struct.lua_TValue* %301, %283, !dbg !1544
  br i1 %302, label %306, label %303, !dbg !1546

; <label>:303:                                    ; preds = %321, %298
  %304 = phi %struct.lua_TValue* [ %301, %298 ], [ %323, %321 ], !dbg !1547
  %305 = icmp ugt %struct.lua_TValue* %304, %299, !dbg !1548
  br i1 %305, label %330, label %325, !dbg !1551

; <label>:306:                                    ; preds = %298, %321
  %307 = phi %struct.lua_TValue* [ %322, %321 ], [ %283, %298 ]
  %308 = phi %struct.lua_TValue* [ %323, %321 ], [ %301, %298 ]
  %309 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %308, i64 0, i32 1, !dbg !1552
  %310 = load i32, i32* %309, align 8, !dbg !1552, !tbaa !517
  %311 = icmp sgt i32 %310, 3, !dbg !1552
  br i1 %311, label %312, label %321, !dbg !1552

; <label>:312:                                    ; preds = %306
  %313 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %308, i64 0, i32 0, i32 0, !dbg !1552
  %314 = load %union.GCObject*, %union.GCObject** %313, align 8, !dbg !1552, !tbaa !403
  %315 = getelementptr inbounds %union.GCObject, %union.GCObject* %314, i64 0, i32 0, i32 2, !dbg !1552
  %316 = load i8, i8* %315, align 1, !dbg !1552, !tbaa !403
  %317 = and i8 %316, 3, !dbg !1552
  %318 = icmp eq i8 %317, 0, !dbg !1552
  br i1 %318, label %321, label %319, !dbg !1555

; <label>:319:                                    ; preds = %312
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %union.GCObject* %314) #3, !dbg !1552
  %320 = load %struct.lua_TValue*, %struct.lua_TValue** %282, align 8, !dbg !1556, !tbaa !516
  br label %321, !dbg !1552

; <label>:321:                                    ; preds = %319, %312, %306
  %322 = phi %struct.lua_TValue* [ %307, %312 ], [ %307, %306 ], [ %320, %319 ], !dbg !1556
  %323 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %308, i64 1, !dbg !1557
  %324 = icmp ult %struct.lua_TValue* %323, %322, !dbg !1544
  br i1 %324, label %306, label %303, !dbg !1546, !llvm.loop !1558

; <label>:325:                                    ; preds = %303, %325
  %326 = phi %struct.lua_TValue* [ %328, %325 ], [ %304, %303 ]
  %327 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %326, i64 0, i32 1, !dbg !1561
  store i32 0, i32* %327, align 8, !dbg !1561, !tbaa !517
  %328 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %326, i64 1, !dbg !1562
  %329 = icmp ugt %struct.lua_TValue* %328, %299, !dbg !1548
  br i1 %329, label %330, label %325, !dbg !1551, !llvm.loop !1563

; <label>:330:                                    ; preds = %325, %303
  %331 = bitcast %struct.lua_TValue** %300 to i64*, !dbg !1577
  %332 = load i64, i64* %331, align 8, !dbg !1577, !tbaa !1542
  %333 = ptrtoint %struct.lua_TValue* %299 to i64, !dbg !1577
  %334 = sub i64 %333, %332, !dbg !1577
  %335 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 14, !dbg !1578
  %336 = load i32, i32* %335, align 4, !dbg !1578, !tbaa !1580
  %337 = icmp sgt i32 %336, 20000, !dbg !1581
  br i1 %337, label %338, label %340, !dbg !1582

; <label>:338:                                    ; preds = %330
  %339 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 13, !dbg !1583
  br label %366, !dbg !1582

; <label>:340:                                    ; preds = %330
  %341 = bitcast %struct.CallInfo** %286 to i64*, !dbg !1584
  %342 = load i64, i64* %341, align 8, !dbg !1584, !tbaa !1525
  %343 = bitcast %struct.CallInfo** %284 to i64*, !dbg !1584
  %344 = load i64, i64* %343, align 8, !dbg !1584, !tbaa !1521
  %345 = sub i64 %342, %344, !dbg !1584
  %346 = sdiv exact i64 %345, 40, !dbg !1584
  %347 = trunc i64 %346 to i32, !dbg !1584
  %348 = shl nsw i32 %347, 2, !dbg !1586
  %349 = icmp slt i32 %348, %336, !dbg !1588
  %350 = icmp sgt i32 %336, 16, !dbg !1589
  %351 = and i1 %350, %349, !dbg !1590
  br i1 %351, label %352, label %355, !dbg !1590

; <label>:352:                                    ; preds = %340
  %353 = lshr i32 %336, 1
  %354 = and i32 %353, 32767
  tail call void @luaD_reallocCI(%struct.lua_State* nonnull %260, i32 %354) #3, !dbg !1591
  br label %355, !dbg !1591

; <label>:355:                                    ; preds = %352, %340
  %356 = lshr exact i64 %334, 2, !dbg !1592
  %357 = trunc i64 %356 to i32, !dbg !1592
  %358 = and i32 %357, -4, !dbg !1592
  %359 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 13, !dbg !1594
  %360 = load i32, i32* %359, align 8, !dbg !1594, !tbaa !1595
  %361 = icmp slt i32 %358, %360, !dbg !1596
  %362 = icmp sgt i32 %360, 90, !dbg !1597
  %363 = and i1 %361, %362, !dbg !1598
  br i1 %363, label %364, label %366, !dbg !1598

; <label>:364:                                    ; preds = %355
  %365 = lshr i32 %360, 1
  tail call void @luaD_reallocstack(%struct.lua_State* nonnull %260, i32 %365) #3, !dbg !1599
  br label %366, !dbg !1599

; <label>:366:                                    ; preds = %338, %355, %364
  %367 = phi i32* [ %339, %338 ], [ %359, %355 ], [ %359, %364 ], !dbg !1583
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1600
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1601
  %368 = load i32, i32* %367, align 8, !dbg !1583, !tbaa !1595
  %369 = sext i32 %368 to i64, !dbg !1602
  %370 = shl nsw i64 %369, 4, !dbg !1603
  %371 = add nsw i64 %370, 184, !dbg !1604
  %372 = load i32, i32* %335, align 4, !dbg !1605, !tbaa !1580
  %373 = sext i32 %372 to i64, !dbg !1606
  %374 = mul nsw i64 %373, 40, !dbg !1607
  %375 = add nsw i64 %371, %374, !dbg !1608
  br label %522

; <label>:376:                                    ; preds = %1
  %377 = bitcast %union.GCObject* %3 to %struct.Proto*, !dbg !1609
  %378 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 19, !dbg !1611
  %379 = bitcast i32* %378 to i64*, !dbg !1611
  %380 = load i64, i64* %379, align 8, !dbg !1611, !tbaa !1612
  %381 = bitcast %union.GCObject** %2 to i64*, !dbg !1614
  store i64 %380, i64* %381, align 8, !dbg !1614, !tbaa !717
  %382 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 10, !dbg !1625
  %383 = bitcast %struct.lua_TValue** %382 to %union.TString**, !dbg !1625
  %384 = load %union.TString*, %union.TString** %383, align 8, !dbg !1625, !tbaa !1627
  %385 = icmp eq %union.TString* %384, null, !dbg !1628
  br i1 %385, label %390, label %386, !dbg !1629

; <label>:386:                                    ; preds = %376
  %387 = getelementptr inbounds %union.TString, %union.TString* %384, i64 0, i32 0, i32 2, !dbg !1630
  %388 = load i8, i8* %387, align 1, !dbg !1630, !tbaa !403
  %389 = and i8 %388, -4, !dbg !1630
  store i8 %389, i8* %387, align 1, !dbg !1630, !tbaa !403
  br label %390, !dbg !1630

; <label>:390:                                    ; preds = %386, %376
  %391 = getelementptr inbounds %struct.Proto, %struct.Proto* %377, i64 0, i32 11, !dbg !1632
  %392 = load i32, i32* %391, align 4, !dbg !1632, !tbaa !1635
  %393 = icmp sgt i32 %392, 0, !dbg !1636
  br i1 %393, label %394, label %396, !dbg !1637

; <label>:394:                                    ; preds = %390
  %395 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 4
  br label %404, !dbg !1637

; <label>:396:                                    ; preds = %420, %390
  %397 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 11, !dbg !1638
  %398 = bitcast %struct.CallInfo** %397 to i32*, !dbg !1638
  %399 = load i32, i32* %398, align 8, !dbg !1638, !tbaa !1641
  %400 = icmp sgt i32 %399, 0, !dbg !1642
  br i1 %400, label %401, label %425, !dbg !1643

; <label>:401:                                    ; preds = %396
  %402 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 9
  %403 = bitcast %struct.lua_TValue** %402 to %union.TString***
  br label %432, !dbg !1643

; <label>:404:                                    ; preds = %420, %394
  %405 = phi i32 [ %392, %394 ], [ %421, %420 ]
  %406 = phi i64 [ 0, %394 ], [ %422, %420 ]
  %407 = load %struct.lua_TValue*, %struct.lua_TValue** %395, align 8, !dbg !1644, !tbaa !1647
  %408 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %407, i64 %406, i32 1, !dbg !1644
  %409 = load i32, i32* %408, align 8, !dbg !1644, !tbaa !517
  %410 = icmp sgt i32 %409, 3, !dbg !1644
  br i1 %410, label %411, label %420, !dbg !1644

; <label>:411:                                    ; preds = %404
  %412 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %407, i64 %406, i32 0, i32 0, !dbg !1644
  %413 = load %union.GCObject*, %union.GCObject** %412, align 8, !dbg !1644, !tbaa !403
  %414 = getelementptr inbounds %union.GCObject, %union.GCObject* %413, i64 0, i32 0, i32 2, !dbg !1644
  %415 = load i8, i8* %414, align 1, !dbg !1644, !tbaa !403
  %416 = and i8 %415, 3, !dbg !1644
  %417 = icmp eq i8 %416, 0, !dbg !1644
  br i1 %417, label %420, label %418, !dbg !1648

; <label>:418:                                    ; preds = %411
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %union.GCObject* %413) #3, !dbg !1644
  %419 = load i32, i32* %391, align 4, !dbg !1632, !tbaa !1635
  br label %420, !dbg !1644

; <label>:420:                                    ; preds = %418, %411, %404
  %421 = phi i32 [ %405, %411 ], [ %405, %404 ], [ %419, %418 ], !dbg !1632
  %422 = add nuw nsw i64 %406, 1, !dbg !1649
  %423 = sext i32 %421 to i64, !dbg !1636
  %424 = icmp slt i64 %422, %423, !dbg !1636
  br i1 %424, label %404, label %396, !dbg !1637, !llvm.loop !1650

; <label>:425:                                    ; preds = %444, %396
  %426 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 13, !dbg !1653
  %427 = load i32, i32* %426, align 8, !dbg !1653, !tbaa !1656
  %428 = icmp sgt i32 %427, 0, !dbg !1657
  br i1 %428, label %429, label %449, !dbg !1658

; <label>:429:                                    ; preds = %425
  %430 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 6
  %431 = bitcast %struct.global_State** %430 to %struct.Proto***
  br label %459, !dbg !1658

; <label>:432:                                    ; preds = %444, %401
  %433 = phi i32 [ %399, %401 ], [ %445, %444 ]
  %434 = phi i64 [ 0, %401 ], [ %446, %444 ]
  %435 = load %union.TString**, %union.TString*** %403, align 8, !dbg !1659, !tbaa !1662
  %436 = getelementptr inbounds %union.TString*, %union.TString** %435, i64 %434, !dbg !1663
  %437 = load %union.TString*, %union.TString** %436, align 8, !dbg !1663, !tbaa !396
  %438 = icmp eq %union.TString* %437, null, !dbg !1663
  br i1 %438, label %444, label %439, !dbg !1664

; <label>:439:                                    ; preds = %432
  %440 = getelementptr inbounds %union.TString, %union.TString* %437, i64 0, i32 0, i32 2, !dbg !1665
  %441 = load i8, i8* %440, align 1, !dbg !1665, !tbaa !403
  %442 = and i8 %441, -4, !dbg !1665
  store i8 %442, i8* %440, align 1, !dbg !1665, !tbaa !403
  %443 = load i32, i32* %398, align 8, !dbg !1638, !tbaa !1641
  br label %444, !dbg !1665

; <label>:444:                                    ; preds = %439, %432
  %445 = phi i32 [ %433, %432 ], [ %443, %439 ], !dbg !1638
  %446 = add nuw nsw i64 %434, 1, !dbg !1666
  %447 = sext i32 %445 to i64, !dbg !1642
  %448 = icmp slt i64 %446, %447, !dbg !1642
  br i1 %448, label %432, label %425, !dbg !1643, !llvm.loop !1667

; <label>:449:                                    ; preds = %474, %425
  %450 = phi i32 [ %427, %425 ], [ %475, %474 ]
  %451 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 14, !dbg !1670
  %452 = load i32, i32* %451, align 4, !dbg !1670, !tbaa !1673
  %453 = icmp sgt i32 %452, 0, !dbg !1674
  br i1 %453, label %456, label %454, !dbg !1675

; <label>:454:                                    ; preds = %449
  %455 = sext i32 %452 to i64, !dbg !1676
  br label %498, !dbg !1675

; <label>:456:                                    ; preds = %449
  %457 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 8
  %458 = bitcast i32** %457 to %struct.LocVar**
  br label %479, !dbg !1675

; <label>:459:                                    ; preds = %474, %429
  %460 = phi i32 [ %427, %429 ], [ %475, %474 ]
  %461 = phi i64 [ 0, %429 ], [ %476, %474 ]
  %462 = load %struct.Proto**, %struct.Proto*** %431, align 8, !dbg !1677, !tbaa !1680
  %463 = getelementptr inbounds %struct.Proto*, %struct.Proto** %462, i64 %461, !dbg !1681
  %464 = load %struct.Proto*, %struct.Proto** %463, align 8, !dbg !1681, !tbaa !396
  %465 = icmp eq %struct.Proto* %464, null, !dbg !1681
  br i1 %465, label %474, label %466, !dbg !1682

; <label>:466:                                    ; preds = %459
  %467 = getelementptr inbounds %struct.Proto, %struct.Proto* %464, i64 0, i32 2, !dbg !1683
  %468 = load i8, i8* %467, align 1, !dbg !1683, !tbaa !403
  %469 = and i8 %468, 3, !dbg !1683
  %470 = icmp eq i8 %469, 0, !dbg !1683
  br i1 %470, label %474, label %471, !dbg !1686

; <label>:471:                                    ; preds = %466
  %472 = bitcast %struct.Proto* %464 to %union.GCObject*, !dbg !1683
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %union.GCObject* %472) #3, !dbg !1683
  %473 = load i32, i32* %426, align 8, !dbg !1653, !tbaa !1656
  br label %474, !dbg !1683

; <label>:474:                                    ; preds = %471, %466, %459
  %475 = phi i32 [ %460, %466 ], [ %460, %459 ], [ %473, %471 ], !dbg !1653
  %476 = add nuw nsw i64 %461, 1, !dbg !1687
  %477 = sext i32 %475 to i64, !dbg !1657
  %478 = icmp slt i64 %476, %477, !dbg !1657
  br i1 %478, label %459, label %449, !dbg !1658, !llvm.loop !1688

; <label>:479:                                    ; preds = %491, %456
  %480 = phi i32 [ %452, %456 ], [ %492, %491 ]
  %481 = phi i64 [ 0, %456 ], [ %493, %491 ]
  %482 = load %struct.LocVar*, %struct.LocVar** %458, align 8, !dbg !1691, !tbaa !1694
  %483 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %482, i64 %481, i32 0, !dbg !1695
  %484 = load %union.TString*, %union.TString** %483, align 8, !dbg !1695, !tbaa !1696
  %485 = icmp eq %union.TString* %484, null, !dbg !1698
  br i1 %485, label %491, label %486, !dbg !1699

; <label>:486:                                    ; preds = %479
  %487 = getelementptr inbounds %union.TString, %union.TString* %484, i64 0, i32 0, i32 2, !dbg !1700
  %488 = load i8, i8* %487, align 1, !dbg !1700, !tbaa !403
  %489 = and i8 %488, -4, !dbg !1700
  store i8 %489, i8* %487, align 1, !dbg !1700, !tbaa !403
  %490 = load i32, i32* %451, align 4, !dbg !1670, !tbaa !1673
  br label %491, !dbg !1700

; <label>:491:                                    ; preds = %486, %479
  %492 = phi i32 [ %480, %479 ], [ %490, %486 ], !dbg !1670
  %493 = add nuw nsw i64 %481, 1, !dbg !1701
  %494 = sext i32 %492 to i64, !dbg !1674
  %495 = icmp slt i64 %493, %494, !dbg !1674
  br i1 %495, label %479, label %496, !dbg !1675, !llvm.loop !1702

; <label>:496:                                    ; preds = %491
  %497 = load i32, i32* %426, align 8, !dbg !1705, !tbaa !1656
  br label %498, !dbg !1706

; <label>:498:                                    ; preds = %454, %496
  %499 = phi i64 [ %455, %454 ], [ %494, %496 ], !dbg !1676
  %500 = phi i32 [ %450, %454 ], [ %497, %496 ], !dbg !1705
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1706
  %501 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 12, !dbg !1707
  %502 = bitcast %struct.CallInfo** %501 to i32*, !dbg !1707
  %503 = load i32, i32* %502, align 8, !dbg !1707, !tbaa !1708
  %504 = sext i32 %503 to i64, !dbg !1709
  %505 = sext i32 %500 to i64, !dbg !1710
  %506 = load i32, i32* %391, align 4, !dbg !1711, !tbaa !1635
  %507 = sext i32 %506 to i64, !dbg !1712
  %508 = getelementptr inbounds %struct.Proto, %struct.Proto* %377, i64 0, i32 13, !dbg !1713
  %509 = load i32, i32* %508, align 4, !dbg !1713, !tbaa !1714
  %510 = sext i32 %509 to i64, !dbg !1715
  %511 = load i32, i32* %398, align 8, !dbg !1716, !tbaa !1641
  %512 = sext i32 %511 to i64, !dbg !1717
  %513 = add nsw i64 %499, %507
  %514 = shl nsw i64 %513, 4
  %515 = add nsw i64 %512, %505
  %516 = shl nsw i64 %515, 3
  %517 = add nsw i64 %510, %504
  %518 = shl nsw i64 %517, 2
  %519 = add nsw i64 %518, 120, !dbg !1718
  %520 = add nsw i64 %519, %514, !dbg !1719
  %521 = add nsw i64 %520, %516, !dbg !1720
  br label %522

; <label>:522:                                    ; preds = %1, %498, %366, %250, %161
  %523 = phi i64 [ %521, %498 ], [ %375, %366 ], [ %258, %250 ], [ %174, %161 ], [ 0, %1 ], !dbg !1721
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1722
  ret i64 %523, !dbg !1722
}

; Function Attrs: noredzone
declare dso_local i8* @strchr(i8*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare hidden void @luaD_reallocCI(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare hidden void @luaD_reallocstack(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define internal fastcc void @markmt(%struct.global_State*) unnamed_addr #0 !dbg !1723 {
  %2 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 23, i64 0, !dbg !1729
  %3 = load %struct.Table*, %struct.Table** %2, align 8, !dbg !1729, !tbaa !396
  %4 = icmp eq %struct.Table* %3, null, !dbg !1729
  br i1 %4, label %12, label %5, !dbg !1733

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.Table, %struct.Table* %3, i64 0, i32 2, !dbg !1734
  %7 = load i8, i8* %6, align 1, !dbg !1734, !tbaa !403
  %8 = and i8 %7, 3, !dbg !1734
  %9 = icmp eq i8 %8, 0, !dbg !1734
  br i1 %9, label %12, label %10, !dbg !1737

; <label>:10:                                     ; preds = %5
  %11 = bitcast %struct.Table* %3 to %union.GCObject*, !dbg !1734
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %0, %union.GCObject* %11) #4, !dbg !1734
  br label %12, !dbg !1734

; <label>:12:                                     ; preds = %5, %1, %10
  %13 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 23, i64 1, !dbg !1729
  %14 = load %struct.Table*, %struct.Table** %13, align 8, !dbg !1729, !tbaa !396
  %15 = icmp eq %struct.Table* %14, null, !dbg !1729
  br i1 %15, label %23, label %16, !dbg !1733

; <label>:16:                                     ; preds = %12
  %17 = getelementptr inbounds %struct.Table, %struct.Table* %14, i64 0, i32 2, !dbg !1734
  %18 = load i8, i8* %17, align 1, !dbg !1734, !tbaa !403
  %19 = and i8 %18, 3, !dbg !1734
  %20 = icmp eq i8 %19, 0, !dbg !1734
  br i1 %20, label %23, label %21, !dbg !1737

; <label>:21:                                     ; preds = %16
  %22 = bitcast %struct.Table* %14 to %union.GCObject*, !dbg !1734
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %0, %union.GCObject* %22) #4, !dbg !1734
  br label %23, !dbg !1734

; <label>:23:                                     ; preds = %21, %16, %12
  %24 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 23, i64 2, !dbg !1729
  %25 = load %struct.Table*, %struct.Table** %24, align 8, !dbg !1729, !tbaa !396
  %26 = icmp eq %struct.Table* %25, null, !dbg !1729
  br i1 %26, label %34, label %27, !dbg !1733

; <label>:27:                                     ; preds = %23
  %28 = getelementptr inbounds %struct.Table, %struct.Table* %25, i64 0, i32 2, !dbg !1734
  %29 = load i8, i8* %28, align 1, !dbg !1734, !tbaa !403
  %30 = and i8 %29, 3, !dbg !1734
  %31 = icmp eq i8 %30, 0, !dbg !1734
  br i1 %31, label %34, label %32, !dbg !1737

; <label>:32:                                     ; preds = %27
  %33 = bitcast %struct.Table* %25 to %union.GCObject*, !dbg !1734
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %0, %union.GCObject* %33) #4, !dbg !1734
  br label %34, !dbg !1734

; <label>:34:                                     ; preds = %32, %27, %23
  %35 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 23, i64 3, !dbg !1729
  %36 = load %struct.Table*, %struct.Table** %35, align 8, !dbg !1729, !tbaa !396
  %37 = icmp eq %struct.Table* %36, null, !dbg !1729
  br i1 %37, label %45, label %38, !dbg !1733

; <label>:38:                                     ; preds = %34
  %39 = getelementptr inbounds %struct.Table, %struct.Table* %36, i64 0, i32 2, !dbg !1734
  %40 = load i8, i8* %39, align 1, !dbg !1734, !tbaa !403
  %41 = and i8 %40, 3, !dbg !1734
  %42 = icmp eq i8 %41, 0, !dbg !1734
  br i1 %42, label %45, label %43, !dbg !1737

; <label>:43:                                     ; preds = %38
  %44 = bitcast %struct.Table* %36 to %union.GCObject*, !dbg !1734
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %0, %union.GCObject* %44) #4, !dbg !1734
  br label %45, !dbg !1734

; <label>:45:                                     ; preds = %43, %38, %34
  %46 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 23, i64 4, !dbg !1729
  %47 = load %struct.Table*, %struct.Table** %46, align 8, !dbg !1729, !tbaa !396
  %48 = icmp eq %struct.Table* %47, null, !dbg !1729
  br i1 %48, label %56, label %49, !dbg !1733

; <label>:49:                                     ; preds = %45
  %50 = getelementptr inbounds %struct.Table, %struct.Table* %47, i64 0, i32 2, !dbg !1734
  %51 = load i8, i8* %50, align 1, !dbg !1734, !tbaa !403
  %52 = and i8 %51, 3, !dbg !1734
  %53 = icmp eq i8 %52, 0, !dbg !1734
  br i1 %53, label %56, label %54, !dbg !1737

; <label>:54:                                     ; preds = %49
  %55 = bitcast %struct.Table* %47 to %union.GCObject*, !dbg !1734
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %0, %union.GCObject* %55) #4, !dbg !1734
  br label %56, !dbg !1734

; <label>:56:                                     ; preds = %54, %49, %45
  %57 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 23, i64 5, !dbg !1729
  %58 = load %struct.Table*, %struct.Table** %57, align 8, !dbg !1729, !tbaa !396
  %59 = icmp eq %struct.Table* %58, null, !dbg !1729
  br i1 %59, label %67, label %60, !dbg !1733

; <label>:60:                                     ; preds = %56
  %61 = getelementptr inbounds %struct.Table, %struct.Table* %58, i64 0, i32 2, !dbg !1734
  %62 = load i8, i8* %61, align 1, !dbg !1734, !tbaa !403
  %63 = and i8 %62, 3, !dbg !1734
  %64 = icmp eq i8 %63, 0, !dbg !1734
  br i1 %64, label %67, label %65, !dbg !1737

; <label>:65:                                     ; preds = %60
  %66 = bitcast %struct.Table* %58 to %union.GCObject*, !dbg !1734
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %0, %union.GCObject* %66) #4, !dbg !1734
  br label %67, !dbg !1734

; <label>:67:                                     ; preds = %65, %60, %56
  %68 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 23, i64 6, !dbg !1729
  %69 = load %struct.Table*, %struct.Table** %68, align 8, !dbg !1729, !tbaa !396
  %70 = icmp eq %struct.Table* %69, null, !dbg !1729
  br i1 %70, label %78, label %71, !dbg !1733

; <label>:71:                                     ; preds = %67
  %72 = getelementptr inbounds %struct.Table, %struct.Table* %69, i64 0, i32 2, !dbg !1734
  %73 = load i8, i8* %72, align 1, !dbg !1734, !tbaa !403
  %74 = and i8 %73, 3, !dbg !1734
  %75 = icmp eq i8 %74, 0, !dbg !1734
  br i1 %75, label %78, label %76, !dbg !1737

; <label>:76:                                     ; preds = %71
  %77 = bitcast %struct.Table* %69 to %union.GCObject*, !dbg !1734
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %0, %union.GCObject* %77) #4, !dbg !1734
  br label %78, !dbg !1734

; <label>:78:                                     ; preds = %76, %71, %67
  %79 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 23, i64 7, !dbg !1729
  %80 = load %struct.Table*, %struct.Table** %79, align 8, !dbg !1729, !tbaa !396
  %81 = icmp eq %struct.Table* %80, null, !dbg !1729
  br i1 %81, label %89, label %82, !dbg !1733

; <label>:82:                                     ; preds = %78
  %83 = getelementptr inbounds %struct.Table, %struct.Table* %80, i64 0, i32 2, !dbg !1734
  %84 = load i8, i8* %83, align 1, !dbg !1734, !tbaa !403
  %85 = and i8 %84, 3, !dbg !1734
  %86 = icmp eq i8 %85, 0, !dbg !1734
  br i1 %86, label %89, label %87, !dbg !1737

; <label>:87:                                     ; preds = %82
  %88 = bitcast %struct.Table* %80 to %union.GCObject*, !dbg !1734
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %0, %union.GCObject* %88) #4, !dbg !1734
  br label %89, !dbg !1734

; <label>:89:                                     ; preds = %87, %82, %78
  %90 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 23, i64 8, !dbg !1729
  %91 = load %struct.Table*, %struct.Table** %90, align 8, !dbg !1729, !tbaa !396
  %92 = icmp eq %struct.Table* %91, null, !dbg !1729
  br i1 %92, label %100, label %93, !dbg !1733

; <label>:93:                                     ; preds = %89
  %94 = getelementptr inbounds %struct.Table, %struct.Table* %91, i64 0, i32 2, !dbg !1734
  %95 = load i8, i8* %94, align 1, !dbg !1734, !tbaa !403
  %96 = and i8 %95, 3, !dbg !1734
  %97 = icmp eq i8 %96, 0, !dbg !1734
  br i1 %97, label %100, label %98, !dbg !1737

; <label>:98:                                     ; preds = %93
  %99 = bitcast %struct.Table* %91 to %union.GCObject*, !dbg !1734
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %0, %union.GCObject* %99) #4, !dbg !1734
  br label %100, !dbg !1734

; <label>:100:                                    ; preds = %98, %93, %89
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1738
  ret void, !dbg !1738
}

; Function Attrs: noredzone
declare hidden void @luaS_resize(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare hidden i8* @luaM_toobig(%struct.lua_State*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }
attributes #4 = { nobuiltin noredzone }
attributes #5 = { nounwind }

!llvm.module.flags = !{!359, !360, !361}
!llvm.ident = !{!362}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !25)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lgc.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{!3}
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
!25 = !{!26, !27, !34, !36, !105, !276, !172, !195, !29}
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "lu_mem", file: !28, line: 20, baseType: !29)
!28 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/llimits.h", directory: "/root/.unikraft/apps/redis/build")
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !30, line: 40, baseType: !31)
!30 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !32, line: 129, baseType: !33)
!32 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!33 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "lu_byte", file: !28, line: 27, baseType: !35)
!35 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCObject", file: !38, line: 36, baseType: !39)
!38 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lobject.h", directory: "/root/.unikraft/apps/redis/build")
!39 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "GCObject", file: !40, line: 136, size: 1472, elements: !41)
!40 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lstate.h", directory: "/root/.unikraft/apps/redis/build")
!41 = !{!42, !49, !70, !130, !355, !356, !357, !358}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "gch", scope: !39, file: !40, line: 137, baseType: !43, size: 128)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCheader", file: !38, line: 51, baseType: !44)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GCheader", file: !38, line: 49, size: 128, elements: !45)
!45 = !{!46, !47, !48}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !44, file: !38, line: 50, baseType: !36, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !44, file: !38, line: 50, baseType: !34, size: 8, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !44, file: !38, line: 50, baseType: !34, size: 8, offset: 72)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !39, file: !40, line: 138, baseType: !50, size: 192)
!50 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "TString", file: !38, line: 199, size: 192, elements: !51)
!51 = !{!52, !61}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !50, file: !38, line: 200, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "L_Umaxalign", file: !28, line: 47, baseType: !54)
!54 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !28, line: 47, size: 64, elements: !55)
!55 = !{!56, !58, !59}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !54, file: !28, line: 47, baseType: !57, size: 64)
!57 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !54, file: !28, line: 47, baseType: !26, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !54, file: !28, line: 47, baseType: !60, size: 64)
!60 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "tsv", scope: !50, file: !38, line: 206, baseType: !62, size: 192)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !50, file: !38, line: 201, size: 192, elements: !63)
!63 = !{!64, !65, !66, !67, !68, !69}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !62, file: !38, line: 202, baseType: !36, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !62, file: !38, line: 202, baseType: !34, size: 8, offset: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !62, file: !38, line: 202, baseType: !34, size: 8, offset: 72)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !62, file: !38, line: 203, baseType: !34, size: 8, offset: 80)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !62, file: !38, line: 204, baseType: !5, size: 32, offset: 96)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !62, file: !38, line: 205, baseType: !29, size: 64, offset: 128)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !39, file: !40, line: 139, baseType: !71, size: 320)
!71 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "Udata", file: !38, line: 215, size: 320, elements: !72)
!72 = !{!73, !74}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !71, file: !38, line: 216, baseType: !53, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "uv", scope: !71, file: !38, line: 222, baseType: !75, size: 320)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !71, file: !38, line: 217, size: 320, elements: !76)
!76 = !{!77, !78, !79, !80, !128, !129}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !75, file: !38, line: 218, baseType: !36, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !75, file: !38, line: 218, baseType: !34, size: 8, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !75, file: !38, line: 218, baseType: !34, size: 8, offset: 72)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "metatable", scope: !75, file: !38, line: 219, baseType: !81, size: 64, offset: 128)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Table", file: !38, line: 338, size: 512, elements: !83)
!83 = !{!84, !85, !86, !87, !88, !89, !90, !107, !125, !126, !127}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !82, file: !38, line: 339, baseType: !36, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !82, file: !38, line: 339, baseType: !34, size: 8, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !82, file: !38, line: 339, baseType: !34, size: 8, offset: 72)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !82, file: !38, line: 340, baseType: !34, size: 8, offset: 80)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "lsizenode", scope: !82, file: !38, line: 341, baseType: !34, size: 8, offset: 88)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "metatable", scope: !82, file: !38, line: 342, baseType: !81, size: 64, offset: 128)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "array", scope: !82, file: !38, line: 343, baseType: !91, size: 64, offset: 192)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "TValue", file: !38, line: 75, baseType: !93)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lua_TValue", file: !38, line: 73, size: 128, elements: !94)
!94 = !{!95, !106}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !93, file: !38, line: 74, baseType: !96, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "Value", file: !38, line: 64, baseType: !97)
!97 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !38, line: 59, size: 64, elements: !98)
!98 = !{!99, !100, !101, !104}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !97, file: !38, line: 60, baseType: !36, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !97, file: !38, line: 61, baseType: !26, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !97, file: !38, line: 62, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Number", file: !103, line: 99, baseType: !57)
!103 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lua.h", directory: "/root/.unikraft/apps/redis/build")
!104 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !97, file: !38, line: 63, baseType: !105, size: 32)
!105 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !93, file: !38, line: 74, baseType: !105, size: 32, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !82, file: !38, line: 344, baseType: !108, size: 64, offset: 256)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "Node", file: !38, line: 335, baseType: !110)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Node", file: !38, line: 332, size: 320, elements: !111)
!111 = !{!112, !113}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "i_val", scope: !110, file: !38, line: 333, baseType: !92, size: 128)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "i_key", scope: !110, file: !38, line: 334, baseType: !114, size: 192, offset: 128)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "TKey", file: !38, line: 329, baseType: !115)
!115 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "TKey", file: !38, line: 323, size: 192, elements: !116)
!116 = !{!117, !124}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "nk", scope: !115, file: !38, line: 327, baseType: !118, size: 192)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !115, file: !38, line: 324, size: 192, elements: !119)
!119 = !{!120, !121, !122}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !118, file: !38, line: 325, baseType: !96, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !118, file: !38, line: 325, baseType: !105, size: 32, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !118, file: !38, line: 326, baseType: !123, size: 64, offset: 128)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "tvk", scope: !115, file: !38, line: 328, baseType: !92, size: 128)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "lastfree", scope: !82, file: !38, line: 345, baseType: !108, size: 64, offset: 320)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !82, file: !38, line: 346, baseType: !36, size: 64, offset: 384)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "sizearray", scope: !82, file: !38, line: 347, baseType: !105, size: 32, offset: 448)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !75, file: !38, line: 220, baseType: !81, size: 64, offset: 192)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !75, file: !38, line: 221, baseType: !29, size: 64, offset: 256)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !39, file: !40, line: 140, baseType: !131, size: 448)
!131 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "Closure", file: !38, line: 309, size: 448, elements: !132)
!132 = !{!133, !304}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !131, file: !38, line: 310, baseType: !134, size: 448)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "CClosure", file: !38, line: 299, baseType: !135)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CClosure", file: !38, line: 295, size: 448, elements: !136)
!136 = !{!137, !138, !139, !140, !141, !142, !143, !144, !300}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !135, file: !38, line: 296, baseType: !36, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !135, file: !38, line: 296, baseType: !34, size: 8, offset: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !135, file: !38, line: 296, baseType: !34, size: 8, offset: 72)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "isC", scope: !135, file: !38, line: 296, baseType: !34, size: 8, offset: 80)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "nupvalues", scope: !135, file: !38, line: 296, baseType: !34, size: 8, offset: 88)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !135, file: !38, line: 296, baseType: !36, size: 64, offset: 128)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !135, file: !38, line: 296, baseType: !81, size: 64, offset: 192)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !135, file: !38, line: 297, baseType: !145, size: 64, offset: 256)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_CFunction", file: !103, line: 52, baseType: !146)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DISubroutineType(types: !148)
!148 = !{!105, !149}
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_State", file: !103, line: 50, baseType: !151)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lua_State", file: !40, line: 100, size: 1472, elements: !152)
!152 = !{!153, !154, !155, !156, !157, !159, !160, !237, !251, !252, !253, !254, !255, !256, !257, !258, !260, !261, !262, !263, !264, !265, !290, !291, !292, !293, !294, !297}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !151, file: !40, line: 101, baseType: !36, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !151, file: !40, line: 101, baseType: !34, size: 8, offset: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !151, file: !40, line: 101, baseType: !34, size: 8, offset: 72)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !151, file: !40, line: 102, baseType: !34, size: 8, offset: 80)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !151, file: !40, line: 103, baseType: !158, size: 64, offset: 128)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "StkId", file: !38, line: 193, baseType: !91)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !151, file: !40, line: 104, baseType: !158, size: 64, offset: 192)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "l_G", scope: !151, file: !40, line: 105, baseType: !161, size: 64, offset: 256)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "global_State", file: !40, line: 94, baseType: !163)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "global_State", file: !40, line: 68, size: 3456, elements: !164)
!164 = !{!165, !174, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !199, !200, !201, !202, !203, !204, !205, !206, !207, !209, !227, !231}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "strt", scope: !163, file: !40, line: 69, baseType: !166, size: 128)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "stringtable", file: !40, line: 42, baseType: !167)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stringtable", file: !40, line: 38, size: 128, elements: !168)
!168 = !{!169, !171, !173}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !167, file: !40, line: 39, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nuse", scope: !167, file: !40, line: 40, baseType: !172, size: 32, offset: 64)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "lu_int32", file: !28, line: 18, baseType: !5)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !167, file: !40, line: 41, baseType: !105, size: 32, offset: 96)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "frealloc", scope: !163, file: !40, line: 70, baseType: !175, size: 64, offset: 128)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Alloc", file: !103, line: 66, baseType: !176)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DISubroutineType(types: !178)
!178 = !{!26, !26, !26, !29, !29}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "ud", scope: !163, file: !40, line: 71, baseType: !26, size: 64, offset: 192)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "currentwhite", scope: !163, file: !40, line: 72, baseType: !34, size: 8, offset: 256)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "gcstate", scope: !163, file: !40, line: 73, baseType: !34, size: 8, offset: 264)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "sweepstrgc", scope: !163, file: !40, line: 74, baseType: !105, size: 32, offset: 288)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "rootgc", scope: !163, file: !40, line: 75, baseType: !36, size: 64, offset: 320)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "sweepgc", scope: !163, file: !40, line: 76, baseType: !170, size: 64, offset: 384)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "gray", scope: !163, file: !40, line: 77, baseType: !36, size: 64, offset: 448)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "grayagain", scope: !163, file: !40, line: 78, baseType: !36, size: 64, offset: 512)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "weak", scope: !163, file: !40, line: 79, baseType: !36, size: 64, offset: 576)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "tmudata", scope: !163, file: !40, line: 80, baseType: !36, size: 64, offset: 640)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "buff", scope: !163, file: !40, line: 81, baseType: !190, size: 192, offset: 704)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "Mbuffer", file: !191, line: 28, baseType: !192)
!191 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lzio.h", directory: "/root/.unikraft/apps/redis/build")
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Mbuffer", file: !191, line: 24, size: 192, elements: !193)
!193 = !{!194, !197, !198}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !192, file: !191, line: 25, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !192, file: !191, line: 26, baseType: !29, size: 64, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "buffsize", scope: !192, file: !191, line: 27, baseType: !29, size: 64, offset: 128)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "GCthreshold", scope: !163, file: !40, line: 82, baseType: !27, size: 64, offset: 896)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "totalbytes", scope: !163, file: !40, line: 83, baseType: !27, size: 64, offset: 960)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "estimate", scope: !163, file: !40, line: 84, baseType: !27, size: 64, offset: 1024)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "gcdept", scope: !163, file: !40, line: 85, baseType: !27, size: 64, offset: 1088)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "gcpause", scope: !163, file: !40, line: 86, baseType: !105, size: 32, offset: 1152)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "gcstepmul", scope: !163, file: !40, line: 87, baseType: !105, size: 32, offset: 1184)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "panic", scope: !163, file: !40, line: 88, baseType: !145, size: 64, offset: 1216)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "l_registry", scope: !163, file: !40, line: 89, baseType: !92, size: 128, offset: 1280)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "mainthread", scope: !163, file: !40, line: 90, baseType: !208, size: 64, offset: 1408)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "uvhead", scope: !163, file: !40, line: 91, baseType: !210, size: 320, offset: 1472)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "UpVal", file: !38, line: 284, baseType: !211)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "UpVal", file: !38, line: 274, size: 320, elements: !212)
!212 = !{!213, !214, !215, !216, !217}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !211, file: !38, line: 275, baseType: !36, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !211, file: !38, line: 275, baseType: !34, size: 8, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !211, file: !38, line: 275, baseType: !34, size: 8, offset: 72)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !211, file: !38, line: 276, baseType: !91, size: 64, offset: 128)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !211, file: !38, line: 283, baseType: !218, size: 128, offset: 192)
!218 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !211, file: !38, line: 277, size: 128, elements: !219)
!219 = !{!220, !221}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !218, file: !38, line: 278, baseType: !92, size: 128)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !218, file: !38, line: 282, baseType: !222, size: 128)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !218, file: !38, line: 279, size: 128, elements: !223)
!223 = !{!224, !226}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !222, file: !38, line: 280, baseType: !225, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !222, file: !38, line: 281, baseType: !225, size: 64, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "mt", scope: !163, file: !40, line: 92, baseType: !228, size: 576, offset: 1792)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 576, elements: !229)
!229 = !{!230}
!230 = !DISubrange(count: 9)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "tmname", scope: !163, file: !40, line: 93, baseType: !232, size: 1088, offset: 2368)
!232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 1088, elements: !235)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "TString", file: !38, line: 207, baseType: !50)
!235 = !{!236}
!236 = !DISubrange(count: 17)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "ci", scope: !151, file: !40, line: 106, baseType: !238, size: 64, offset: 320)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "CallInfo", file: !40, line: 55, baseType: !240)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CallInfo", file: !40, line: 48, size: 320, elements: !241)
!241 = !{!242, !243, !244, !245, !249, !250}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !240, file: !40, line: 49, baseType: !158, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !240, file: !40, line: 50, baseType: !158, size: 64, offset: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !240, file: !40, line: 51, baseType: !158, size: 64, offset: 128)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "savedpc", scope: !240, file: !40, line: 52, baseType: !246, size: 64, offset: 192)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !248)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "Instruction", file: !28, line: 88, baseType: !172)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "nresults", scope: !240, file: !40, line: 53, baseType: !105, size: 32, offset: 256)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "tailcalls", scope: !240, file: !40, line: 54, baseType: !105, size: 32, offset: 288)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "savedpc", scope: !151, file: !40, line: 107, baseType: !246, size: 64, offset: 384)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "stack_last", scope: !151, file: !40, line: 108, baseType: !158, size: 64, offset: 448)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !151, file: !40, line: 109, baseType: !158, size: 64, offset: 512)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "end_ci", scope: !151, file: !40, line: 110, baseType: !238, size: 64, offset: 576)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "base_ci", scope: !151, file: !40, line: 111, baseType: !238, size: 64, offset: 640)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "stacksize", scope: !151, file: !40, line: 112, baseType: !105, size: 32, offset: 704)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "size_ci", scope: !151, file: !40, line: 113, baseType: !105, size: 32, offset: 736)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "nCcalls", scope: !151, file: !40, line: 114, baseType: !259, size: 16, offset: 768)
!259 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "baseCcalls", scope: !151, file: !40, line: 115, baseType: !259, size: 16, offset: 784)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "hookmask", scope: !151, file: !40, line: 116, baseType: !34, size: 8, offset: 800)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "allowhook", scope: !151, file: !40, line: 117, baseType: !34, size: 8, offset: 808)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "basehookcount", scope: !151, file: !40, line: 118, baseType: !105, size: 32, offset: 832)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "hookcount", scope: !151, file: !40, line: 119, baseType: !105, size: 32, offset: 864)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "hook", scope: !151, file: !40, line: 120, baseType: !266, size: 64, offset: 896)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Hook", file: !103, line: 330, baseType: !267)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DISubroutineType(types: !269)
!269 = !{null, !149, !270}
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Debug", file: !103, line: 326, baseType: !272)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lua_Debug", file: !103, line: 346, size: 960, elements: !273)
!273 = !{!274, !275, !278, !279, !280, !281, !282, !283, !284, !285, !289}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !272, file: !103, line: 347, baseType: !105, size: 32)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !272, file: !103, line: 348, baseType: !276, size: 64, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !196)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "namewhat", scope: !272, file: !103, line: 349, baseType: !276, size: 64, offset: 128)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "what", scope: !272, file: !103, line: 350, baseType: !276, size: 64, offset: 192)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !272, file: !103, line: 351, baseType: !276, size: 64, offset: 256)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "currentline", scope: !272, file: !103, line: 352, baseType: !105, size: 32, offset: 320)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "nups", scope: !272, file: !103, line: 353, baseType: !105, size: 32, offset: 352)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "linedefined", scope: !272, file: !103, line: 354, baseType: !105, size: 32, offset: 384)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "lastlinedefined", scope: !272, file: !103, line: 355, baseType: !105, size: 32, offset: 416)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "short_src", scope: !272, file: !103, line: 356, baseType: !286, size: 480, offset: 448)
!286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 480, elements: !287)
!287 = !{!288}
!288 = !DISubrange(count: 60)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "i_ci", scope: !272, file: !103, line: 358, baseType: !105, size: 32, offset: 928)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "l_gt", scope: !151, file: !40, line: 121, baseType: !92, size: 128, offset: 960)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !151, file: !40, line: 122, baseType: !92, size: 128, offset: 1088)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "openupval", scope: !151, file: !40, line: 123, baseType: !36, size: 64, offset: 1216)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !151, file: !40, line: 124, baseType: !36, size: 64, offset: 1280)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "errorJmp", scope: !151, file: !40, line: 125, baseType: !295, size: 64, offset: 1344)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DICompositeType(tag: DW_TAG_structure_type, name: "lua_longjmp", file: !40, line: 18, flags: DIFlagFwdDecl)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "errfunc", scope: !151, file: !40, line: 126, baseType: !298, size: 64, offset: 1408)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !299, line: 49, baseType: !60)
!299 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!300 = !DIDerivedType(tag: DW_TAG_member, name: "upvalue", scope: !135, file: !38, line: 298, baseType: !301, size: 128, offset: 320)
!301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 128, elements: !302)
!302 = !{!303}
!303 = !DISubrange(count: 1)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !131, file: !38, line: 311, baseType: !305, size: 384)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "LClosure", file: !38, line: 306, baseType: !306)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LClosure", file: !38, line: 302, size: 384, elements: !307)
!307 = !{!308, !309, !310, !311, !312, !313, !314, !315, !352}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !306, file: !38, line: 303, baseType: !36, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !306, file: !38, line: 303, baseType: !34, size: 8, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !306, file: !38, line: 303, baseType: !34, size: 8, offset: 72)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "isC", scope: !306, file: !38, line: 303, baseType: !34, size: 8, offset: 80)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "nupvalues", scope: !306, file: !38, line: 303, baseType: !34, size: 8, offset: 88)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !306, file: !38, line: 303, baseType: !36, size: 64, offset: 128)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !306, file: !38, line: 303, baseType: !81, size: 64, offset: 192)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !306, file: !38, line: 304, baseType: !316, size: 64, offset: 256)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Proto", file: !38, line: 231, size: 960, elements: !318)
!318 = !{!319, !320, !321, !322, !323, !325, !327, !329, !336, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !317, file: !38, line: 232, baseType: !36, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !317, file: !38, line: 232, baseType: !34, size: 8, offset: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !317, file: !38, line: 232, baseType: !34, size: 8, offset: 72)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !317, file: !38, line: 233, baseType: !91, size: 64, offset: 128)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !317, file: !38, line: 234, baseType: !324, size: 64, offset: 192)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !317, file: !38, line: 235, baseType: !326, size: 64, offset: 256)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "lineinfo", scope: !317, file: !38, line: 236, baseType: !328, size: 64, offset: 320)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "locvars", scope: !317, file: !38, line: 237, baseType: !330, size: 64, offset: 384)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LocVar", file: !38, line: 262, size: 128, elements: !332)
!332 = !{!333, !334, !335}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "varname", scope: !331, file: !38, line: 263, baseType: !233, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "startpc", scope: !331, file: !38, line: 264, baseType: !105, size: 32, offset: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "endpc", scope: !331, file: !38, line: 265, baseType: !105, size: 32, offset: 96)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "upvalues", scope: !317, file: !38, line: 238, baseType: !337, size: 64, offset: 448)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !317, file: !38, line: 239, baseType: !233, size: 64, offset: 512)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "sizeupvalues", scope: !317, file: !38, line: 240, baseType: !105, size: 32, offset: 576)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "sizek", scope: !317, file: !38, line: 241, baseType: !105, size: 32, offset: 608)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "sizecode", scope: !317, file: !38, line: 242, baseType: !105, size: 32, offset: 640)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "sizelineinfo", scope: !317, file: !38, line: 243, baseType: !105, size: 32, offset: 672)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "sizep", scope: !317, file: !38, line: 244, baseType: !105, size: 32, offset: 704)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "sizelocvars", scope: !317, file: !38, line: 245, baseType: !105, size: 32, offset: 736)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "linedefined", scope: !317, file: !38, line: 246, baseType: !105, size: 32, offset: 768)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "lastlinedefined", scope: !317, file: !38, line: 247, baseType: !105, size: 32, offset: 800)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !317, file: !38, line: 248, baseType: !36, size: 64, offset: 832)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "nups", scope: !317, file: !38, line: 249, baseType: !34, size: 8, offset: 896)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "numparams", scope: !317, file: !38, line: 250, baseType: !34, size: 8, offset: 904)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "is_vararg", scope: !317, file: !38, line: 251, baseType: !34, size: 8, offset: 912)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "maxstacksize", scope: !317, file: !38, line: 252, baseType: !34, size: 8, offset: 920)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "upvals", scope: !306, file: !38, line: 305, baseType: !353, size: 64, offset: 320)
!353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !354, size: 64, elements: !302)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "h", scope: !39, file: !40, line: 141, baseType: !82, size: 512)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !39, file: !40, line: 142, baseType: !317, size: 960)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "uv", scope: !39, file: !40, line: 143, baseType: !211, size: 320)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "th", scope: !39, file: !40, line: 144, baseType: !151, size: 1472)
!359 = !{i32 2, !"Dwarf Version", i32 4}
!360 = !{i32 2, !"Debug Info Version", i32 3}
!361 = !{i32 1, !"wchar_size", i32 4}
!362 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!363 = distinct !DISubprogram(name: "luaC_separateudata", scope: !1, file: !1, line: 128, type: !364, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !366)
!364 = !DISubroutineType(types: !365)
!365 = !{!29, !149, !105}
!366 = !{!367, !368, !369, !370, !371, !372}
!367 = !DILocalVariable(name: "L", arg: 1, scope: !363, file: !1, line: 128, type: !149)
!368 = !DILocalVariable(name: "all", arg: 2, scope: !363, file: !1, line: 128, type: !105)
!369 = !DILocalVariable(name: "g", scope: !363, file: !1, line: 129, type: !161)
!370 = !DILocalVariable(name: "deadmem", scope: !363, file: !1, line: 130, type: !29)
!371 = !DILocalVariable(name: "p", scope: !363, file: !1, line: 131, type: !170)
!372 = !DILocalVariable(name: "curr", scope: !363, file: !1, line: 132, type: !36)
!373 = !DILocation(line: 128, column: 39, scope: !363)
!374 = !DILocation(line: 128, column: 46, scope: !363)
!375 = !DILocation(line: 129, column: 21, scope: !363)
!376 = !{!377, !378, i64 32}
!377 = !{!"lua_State", !378, i64 0, !379, i64 8, !379, i64 9, !379, i64 10, !378, i64 16, !378, i64 24, !378, i64 32, !378, i64 40, !378, i64 48, !378, i64 56, !378, i64 64, !378, i64 72, !378, i64 80, !381, i64 88, !381, i64 92, !382, i64 96, !382, i64 98, !379, i64 100, !379, i64 101, !381, i64 104, !381, i64 108, !378, i64 112, !383, i64 120, !383, i64 136, !378, i64 152, !378, i64 160, !378, i64 168, !384, i64 176}
!378 = !{!"any pointer", !379, i64 0}
!379 = !{!"omnipotent char", !380, i64 0}
!380 = !{!"Simple C/C++ TBAA"}
!381 = !{!"int", !379, i64 0}
!382 = !{!"short", !379, i64 0}
!383 = !{!"lua_TValue", !379, i64 0, !381, i64 8}
!384 = !{!"long", !379, i64 0}
!385 = !DILocation(line: 129, column: 17, scope: !363)
!386 = !DILocation(line: 130, column: 10, scope: !363)
!387 = !DILocation(line: 131, column: 22, scope: !363)
!388 = !{!389, !378, i64 176}
!389 = !{!"global_State", !390, i64 0, !378, i64 16, !378, i64 24, !379, i64 32, !379, i64 33, !381, i64 36, !378, i64 40, !378, i64 48, !378, i64 56, !378, i64 64, !378, i64 72, !378, i64 80, !391, i64 88, !384, i64 112, !384, i64 120, !384, i64 128, !384, i64 136, !381, i64 144, !381, i64 148, !378, i64 152, !383, i64 160, !378, i64 176, !392, i64 184, !379, i64 224, !379, i64 296}
!390 = !{!"stringtable", !378, i64 0, !381, i64 8, !381, i64 12}
!391 = !{!"Mbuffer", !378, i64 0, !384, i64 8, !384, i64 16}
!392 = !{!"UpVal", !378, i64 0, !379, i64 8, !379, i64 9, !378, i64 16, !379, i64 24}
!393 = !DILocation(line: 131, column: 34, scope: !363)
!394 = !DILocation(line: 131, column: 14, scope: !363)
!395 = !DILocation(line: 133, column: 18, scope: !363)
!396 = !{!378, !378, i64 0}
!397 = !DILocation(line: 132, column: 13, scope: !363)
!398 = !DILocation(line: 133, column: 22, scope: !363)
!399 = !DILocation(line: 133, column: 3, scope: !363)
!400 = !DILocation(line: 134, column: 11, scope: !401)
!401 = distinct !DILexicalBlock(scope: !402, file: !1, line: 134, column: 9)
!402 = distinct !DILexicalBlock(scope: !363, file: !1, line: 133, column: 31)
!403 = !{!379, !379, i64 0}
!404 = !DILocation(line: 134, column: 25, scope: !401)
!405 = !DILocation(line: 134, column: 36, scope: !401)
!406 = !DILocation(line: 135, column: 22, scope: !401)
!407 = !DILocation(line: 135, column: 7, scope: !401)
!408 = !DILocation(line: 136, column: 14, scope: !409)
!409 = distinct !DILexicalBlock(scope: !401, file: !1, line: 136, column: 14)
!410 = !{!411, !379, i64 10}
!411 = !{!"Table", !378, i64 0, !379, i64 8, !379, i64 9, !379, i64 10, !379, i64 11, !378, i64 16, !378, i64 24, !378, i64 32, !378, i64 40, !378, i64 48, !381, i64 56}
!412 = !DILocation(line: 136, column: 55, scope: !409)
!413 = !DILocation(line: 136, column: 14, scope: !401)
!414 = !DILocation(line: 137, column: 7, scope: !415)
!415 = distinct !DILexicalBlock(scope: !409, file: !1, line: 136, column: 64)
!416 = !DILocation(line: 138, column: 22, scope: !415)
!417 = !DILocation(line: 139, column: 5, scope: !415)
!418 = !DILocation(line: 141, column: 18, scope: !419)
!419 = distinct !DILexicalBlock(scope: !409, file: !1, line: 140, column: 10)
!420 = !DILocation(line: 141, column: 15, scope: !419)
!421 = !DILocation(line: 142, column: 7, scope: !419)
!422 = !DILocation(line: 143, column: 22, scope: !419)
!423 = !DILocation(line: 143, column: 10, scope: !419)
!424 = !DILocation(line: 145, column: 14, scope: !425)
!425 = distinct !DILexicalBlock(scope: !419, file: !1, line: 145, column: 11)
!426 = !{!389, !378, i64 80}
!427 = !DILocation(line: 145, column: 22, scope: !425)
!428 = !DILocation(line: 145, column: 11, scope: !419)
!429 = !DILocation(line: 146, column: 37, scope: !425)
!430 = !DILocation(line: 146, column: 20, scope: !425)
!431 = !DILocation(line: 146, column: 9, scope: !425)
!432 = !DILocation(line: 148, column: 42, scope: !433)
!433 = distinct !DILexicalBlock(scope: !425, file: !1, line: 147, column: 12)
!434 = !DILocation(line: 148, column: 24, scope: !433)
!435 = !DILocation(line: 149, column: 12, scope: !433)
!436 = !DILocation(line: 149, column: 25, scope: !433)
!437 = !DILocation(line: 149, column: 30, scope: !433)
!438 = !DILocation(line: 150, column: 20, scope: !433)
!439 = !DILocation(line: 0, scope: !363)
!440 = !DILocation(line: 0, scope: !419)
!441 = distinct !{!441, !399, !442}
!442 = !DILocation(line: 153, column: 3, scope: !363)
!443 = !DILocation(line: 154, column: 3, scope: !363)
!444 = distinct !DISubprogram(name: "luaC_callGCTM", scope: !1, file: !1, line: 477, type: !445, isLocal: false, isDefinition: true, scopeLine: 477, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !447)
!445 = !DISubroutineType(types: !446)
!446 = !{null, !149}
!447 = !{!448}
!448 = !DILocalVariable(name: "L", arg: 1, scope: !444, file: !1, line: 477, type: !149)
!449 = !DILocation(line: 477, column: 32, scope: !444)
!450 = !DILocation(line: 478, column: 10, scope: !444)
!451 = !DILocation(line: 478, column: 16, scope: !444)
!452 = !DILocation(line: 478, column: 3, scope: !444)
!453 = !DILocation(line: 479, column: 5, scope: !444)
!454 = distinct !{!454, !452, !455}
!455 = !DILocation(line: 479, column: 11, scope: !444)
!456 = !DILocation(line: 480, column: 1, scope: !444)
!457 = distinct !DISubprogram(name: "GCTM", scope: !1, file: !1, line: 445, type: !445, isLocal: true, isDefinition: true, scopeLine: 445, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !458)
!458 = !{!459, !460, !461, !462, !465, !468, !471, !472, !474, !475}
!459 = !DILocalVariable(name: "L", arg: 1, scope: !457, file: !1, line: 445, type: !149)
!460 = !DILocalVariable(name: "g", scope: !457, file: !1, line: 446, type: !161)
!461 = !DILocalVariable(name: "o", scope: !457, file: !1, line: 447, type: !36)
!462 = !DILocalVariable(name: "udata", scope: !457, file: !1, line: 448, type: !463)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "Udata", file: !38, line: 223, baseType: !71)
!465 = !DILocalVariable(name: "tm", scope: !457, file: !1, line: 449, type: !466)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!468 = !DILocalVariable(name: "oldah", scope: !469, file: !1, line: 460, type: !34)
!469 = distinct !DILexicalBlock(scope: !470, file: !1, line: 459, column: 19)
!470 = distinct !DILexicalBlock(scope: !457, file: !1, line: 459, column: 7)
!471 = !DILocalVariable(name: "oldt", scope: !469, file: !1, line: 461, type: !27)
!472 = !DILocalVariable(name: "o2", scope: !473, file: !1, line: 464, type: !466)
!473 = distinct !DILexicalBlock(scope: !469, file: !1, line: 464, column: 5)
!474 = !DILocalVariable(name: "o1", scope: !473, file: !1, line: 464, type: !91)
!475 = !DILocalVariable(name: "i_o", scope: !476, file: !1, line: 465, type: !91)
!476 = distinct !DILexicalBlock(scope: !469, file: !1, line: 465, column: 5)
!477 = !DILocation(line: 445, column: 30, scope: !457)
!478 = !DILocation(line: 446, column: 21, scope: !457)
!479 = !DILocation(line: 446, column: 17, scope: !457)
!480 = !DILocation(line: 447, column: 20, scope: !457)
!481 = !DILocation(line: 447, column: 33, scope: !457)
!482 = !DILocation(line: 447, column: 13, scope: !457)
!483 = !DILocation(line: 448, column: 10, scope: !457)
!484 = !DILocation(line: 451, column: 9, scope: !485)
!485 = distinct !DILexicalBlock(scope: !457, file: !1, line: 451, column: 7)
!486 = !DILocation(line: 451, column: 7, scope: !457)
!487 = !DILocation(line: 452, column: 16, scope: !485)
!488 = !DILocation(line: 455, column: 18, scope: !457)
!489 = !DILocation(line: 452, column: 5, scope: !485)
!490 = !DILocation(line: 454, column: 38, scope: !485)
!491 = !DILocation(line: 454, column: 26, scope: !485)
!492 = !DILocation(line: 455, column: 23, scope: !457)
!493 = !DILocation(line: 455, column: 35, scope: !457)
!494 = !{!377, !378, i64 0}
!495 = !DILocation(line: 456, column: 6, scope: !457)
!496 = !DILocation(line: 456, column: 18, scope: !457)
!497 = !DILocation(line: 456, column: 23, scope: !457)
!498 = !DILocation(line: 457, column: 3, scope: !457)
!499 = !{!389, !379, i64 32}
!500 = !DILocation(line: 458, column: 8, scope: !457)
!501 = !DILocation(line: 449, column: 17, scope: !457)
!502 = !DILocation(line: 459, column: 10, scope: !470)
!503 = !DILocation(line: 459, column: 7, scope: !457)
!504 = !DILocation(line: 460, column: 24, scope: !469)
!505 = !{!377, !379, i64 101}
!506 = !DILocation(line: 460, column: 13, scope: !469)
!507 = !DILocation(line: 461, column: 22, scope: !469)
!508 = !{!389, !384, i64 112}
!509 = !DILocation(line: 461, column: 12, scope: !469)
!510 = !DILocation(line: 462, column: 18, scope: !469)
!511 = !DILocation(line: 463, column: 27, scope: !469)
!512 = !{!389, !384, i64 120}
!513 = !DILocation(line: 463, column: 23, scope: !469)
!514 = !DILocation(line: 463, column: 20, scope: !469)
!515 = !DILocation(line: 464, column: 5, scope: !473)
!516 = !{!377, !378, i64 16}
!517 = !{!383, !381, i64 8}
!518 = !DILocation(line: 465, column: 5, scope: !476)
!519 = !DILocation(line: 466, column: 12, scope: !469)
!520 = !DILocation(line: 467, column: 5, scope: !469)
!521 = !DILocation(line: 468, column: 18, scope: !469)
!522 = !DILocation(line: 469, column: 20, scope: !469)
!523 = !DILocation(line: 470, column: 3, scope: !469)
!524 = !DILocation(line: 471, column: 1, scope: !457)
!525 = distinct !DISubprogram(name: "luaC_freeall", scope: !1, file: !1, line: 483, type: !445, isLocal: false, isDefinition: true, scopeLine: 483, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !526)
!526 = !{!527, !528, !529}
!527 = !DILocalVariable(name: "L", arg: 1, scope: !525, file: !1, line: 483, type: !149)
!528 = !DILocalVariable(name: "g", scope: !525, file: !1, line: 484, type: !161)
!529 = !DILocalVariable(name: "i", scope: !525, file: !1, line: 485, type: !105)
!530 = !DILocation(line: 483, column: 31, scope: !525)
!531 = !DILocation(line: 484, column: 21, scope: !525)
!532 = !DILocation(line: 484, column: 17, scope: !525)
!533 = !DILocation(line: 486, column: 6, scope: !525)
!534 = !DILocation(line: 486, column: 19, scope: !525)
!535 = !DILocation(line: 487, column: 3, scope: !525)
!536 = !DILocation(line: 485, column: 7, scope: !525)
!537 = !DILocation(line: 488, column: 27, scope: !538)
!538 = distinct !DILexicalBlock(scope: !539, file: !1, line: 488, column: 3)
!539 = distinct !DILexicalBlock(scope: !525, file: !1, line: 488, column: 3)
!540 = !{!389, !381, i64 12}
!541 = !DILocation(line: 488, column: 17, scope: !538)
!542 = !DILocation(line: 488, column: 3, scope: !539)
!543 = !DILocation(line: 489, column: 5, scope: !538)
!544 = !{!389, !378, i64 0}
!545 = !DILocation(line: 488, column: 34, scope: !538)
!546 = distinct !{!546, !542, !547}
!547 = !DILocation(line: 489, column: 5, scope: !539)
!548 = !DILocation(line: 490, column: 1, scope: !525)
!549 = distinct !DISubprogram(name: "sweeplist", scope: !1, file: !1, line: 407, type: !550, isLocal: true, isDefinition: true, scopeLine: 407, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !552)
!550 = !DISubroutineType(types: !551)
!551 = !{!170, !149, !170, !27}
!552 = !{!553, !554, !555, !556, !557, !558}
!553 = !DILocalVariable(name: "L", arg: 1, scope: !549, file: !1, line: 407, type: !149)
!554 = !DILocalVariable(name: "p", arg: 2, scope: !549, file: !1, line: 407, type: !170)
!555 = !DILocalVariable(name: "count", arg: 3, scope: !549, file: !1, line: 407, type: !27)
!556 = !DILocalVariable(name: "curr", scope: !549, file: !1, line: 408, type: !36)
!557 = !DILocalVariable(name: "g", scope: !549, file: !1, line: 409, type: !161)
!558 = !DILocalVariable(name: "deadmask", scope: !549, file: !1, line: 410, type: !105)
!559 = !DILocation(line: 407, column: 41, scope: !549)
!560 = !DILocation(line: 407, column: 55, scope: !549)
!561 = !DILocation(line: 407, column: 65, scope: !549)
!562 = !DILocation(line: 409, column: 21, scope: !549)
!563 = !DILocation(line: 409, column: 17, scope: !549)
!564 = !DILocation(line: 410, column: 18, scope: !549)
!565 = !DILocation(line: 411, column: 18, scope: !549)
!566 = !DILocation(line: 408, column: 13, scope: !549)
!567 = !DILocation(line: 411, column: 22, scope: !549)
!568 = !DILocation(line: 411, column: 30, scope: !549)
!569 = !DILocation(line: 411, column: 38, scope: !549)
!570 = !DILocation(line: 411, column: 41, scope: !549)
!571 = !DILocation(line: 411, column: 3, scope: !549)
!572 = !DILocation(line: 412, column: 19, scope: !573)
!573 = distinct !DILexicalBlock(scope: !574, file: !1, line: 412, column: 9)
!574 = distinct !DILexicalBlock(scope: !549, file: !1, line: 411, column: 46)
!575 = !DILocation(line: 412, column: 22, scope: !573)
!576 = !DILocation(line: 412, column: 9, scope: !574)
!577 = !DILocation(line: 413, column: 7, scope: !573)
!578 = !DILocation(line: 414, column: 20, scope: !579)
!579 = distinct !DILexicalBlock(scope: !574, file: !1, line: 414, column: 9)
!580 = !DILocation(line: 414, column: 27, scope: !579)
!581 = !DILocation(line: 414, column: 40, scope: !579)
!582 = !DILocation(line: 414, column: 9, scope: !574)
!583 = !DILocation(line: 416, column: 7, scope: !584)
!584 = distinct !DILexicalBlock(scope: !579, file: !1, line: 414, column: 52)
!585 = !DILocation(line: 417, column: 22, scope: !584)
!586 = !DILocation(line: 418, column: 5, scope: !584)
!587 = !DILocation(line: 421, column: 22, scope: !588)
!588 = distinct !DILexicalBlock(scope: !579, file: !1, line: 419, column: 10)
!589 = !DILocation(line: 421, column: 10, scope: !588)
!590 = !DILocation(line: 422, column: 22, scope: !591)
!591 = distinct !DILexicalBlock(scope: !588, file: !1, line: 422, column: 11)
!592 = !{!389, !378, i64 40}
!593 = !DILocation(line: 422, column: 16, scope: !591)
!594 = !DILocation(line: 422, column: 11, scope: !588)
!595 = !DILocation(line: 423, column: 31, scope: !591)
!596 = !DILocation(line: 423, column: 19, scope: !591)
!597 = !DILocation(line: 423, column: 9, scope: !591)
!598 = !DILocalVariable(name: "L", arg: 1, scope: !599, file: !1, line: 378, type: !149)
!599 = distinct !DISubprogram(name: "freeobj", scope: !1, file: !1, line: 378, type: !600, isLocal: true, isDefinition: true, scopeLine: 378, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !602)
!600 = !DISubroutineType(types: !601)
!601 = !{null, !149, !36}
!602 = !{!598, !603}
!603 = !DILocalVariable(name: "o", arg: 2, scope: !599, file: !1, line: 378, type: !36)
!604 = !DILocation(line: 378, column: 33, scope: !599, inlinedAt: !605)
!605 = distinct !DILocation(line: 424, column: 7, scope: !588)
!606 = !DILocation(line: 378, column: 46, scope: !599, inlinedAt: !605)
!607 = !DILocation(line: 379, column: 18, scope: !599, inlinedAt: !605)
!608 = !DILocation(line: 379, column: 3, scope: !599, inlinedAt: !605)
!609 = !DILocation(line: 380, column: 40, scope: !610, inlinedAt: !605)
!610 = distinct !DILexicalBlock(scope: !599, file: !1, line: 379, column: 22)
!611 = !DILocation(line: 380, column: 22, scope: !610, inlinedAt: !605)
!612 = !DILocation(line: 380, column: 51, scope: !610, inlinedAt: !605)
!613 = !DILocation(line: 381, column: 45, scope: !610, inlinedAt: !605)
!614 = !DILocation(line: 381, column: 25, scope: !610, inlinedAt: !605)
!615 = !DILocation(line: 381, column: 57, scope: !610, inlinedAt: !605)
!616 = !DILocation(line: 382, column: 40, scope: !610, inlinedAt: !605)
!617 = !DILocation(line: 382, column: 22, scope: !610, inlinedAt: !605)
!618 = !DILocation(line: 382, column: 52, scope: !610, inlinedAt: !605)
!619 = !DILocation(line: 383, column: 35, scope: !610, inlinedAt: !605)
!620 = !DILocation(line: 383, column: 22, scope: !610, inlinedAt: !605)
!621 = !DILocation(line: 383, column: 46, scope: !610, inlinedAt: !605)
!622 = !DILocation(line: 386, column: 26, scope: !623, inlinedAt: !605)
!623 = distinct !DILexicalBlock(scope: !610, file: !1, line: 384, column: 23)
!624 = !DILocation(line: 386, column: 7, scope: !623, inlinedAt: !605)
!625 = !DILocation(line: 387, column: 7, scope: !623, inlinedAt: !605)
!626 = !DILocation(line: 390, column: 7, scope: !627, inlinedAt: !605)
!627 = distinct !DILexicalBlock(scope: !610, file: !1, line: 389, column: 23)
!628 = !DILocation(line: 390, column: 18, scope: !627, inlinedAt: !605)
!629 = !DILocation(line: 390, column: 22, scope: !627, inlinedAt: !605)
!630 = !{!389, !381, i64 8}
!631 = !DILocation(line: 391, column: 7, scope: !627, inlinedAt: !605)
!632 = !DILocation(line: 392, column: 7, scope: !627, inlinedAt: !605)
!633 = !DILocation(line: 395, column: 7, scope: !634, inlinedAt: !605)
!634 = distinct !DILexicalBlock(scope: !610, file: !1, line: 394, column: 25)
!635 = !DILocation(line: 396, column: 7, scope: !634, inlinedAt: !605)
!636 = !DILocation(line: 400, column: 1, scope: !599, inlinedAt: !605)
!637 = distinct !{!637, !571, !638}
!638 = !DILocation(line: 426, column: 3, scope: !549)
!639 = !DILocation(line: 427, column: 3, scope: !549)
!640 = distinct !DISubprogram(name: "luaC_step", scope: !1, file: !1, line: 610, type: !445, isLocal: false, isDefinition: true, scopeLine: 610, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !641)
!641 = !{!642, !643, !644}
!642 = !DILocalVariable(name: "L", arg: 1, scope: !640, file: !1, line: 610, type: !149)
!643 = !DILocalVariable(name: "g", scope: !640, file: !1, line: 611, type: !161)
!644 = !DILocalVariable(name: "lim", scope: !640, file: !1, line: 612, type: !645)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "l_mem", file: !28, line: 22, baseType: !298)
!646 = !DILocation(line: 610, column: 28, scope: !640)
!647 = !DILocation(line: 611, column: 21, scope: !640)
!648 = !DILocation(line: 611, column: 17, scope: !640)
!649 = !DILocation(line: 612, column: 37, scope: !640)
!650 = !{!389, !381, i64 148}
!651 = !DILocation(line: 612, column: 32, scope: !640)
!652 = !DILocation(line: 612, column: 15, scope: !640)
!653 = !DILocation(line: 612, column: 9, scope: !640)
!654 = !DILocation(line: 613, column: 11, scope: !655)
!655 = distinct !DILexicalBlock(scope: !640, file: !1, line: 613, column: 7)
!656 = !DILocation(line: 613, column: 7, scope: !640)
!657 = !DILocation(line: 615, column: 19, scope: !640)
!658 = !DILocation(line: 615, column: 35, scope: !640)
!659 = !DILocation(line: 615, column: 30, scope: !640)
!660 = !DILocation(line: 615, column: 6, scope: !640)
!661 = !DILocation(line: 615, column: 13, scope: !640)
!662 = !{!389, !384, i64 136}
!663 = !DILocation(line: 616, column: 3, scope: !640)
!664 = !DILocation(line: 0, scope: !665)
!665 = distinct !DILexicalBlock(scope: !640, file: !1, line: 616, column: 6)
!666 = !DILocation(line: 617, column: 12, scope: !665)
!667 = !DILocation(line: 617, column: 9, scope: !665)
!668 = !DILocation(line: 618, column: 12, scope: !669)
!669 = distinct !DILexicalBlock(scope: !665, file: !1, line: 618, column: 9)
!670 = !{!389, !379, i64 33}
!671 = !DILocation(line: 618, column: 20, scope: !669)
!672 = !DILocation(line: 620, column: 16, scope: !640)
!673 = !DILocation(line: 618, column: 9, scope: !665)
!674 = distinct !{!674, !663, !675}
!675 = !DILocation(line: 620, column: 19, scope: !640)
!676 = !DILocation(line: 621, column: 7, scope: !640)
!677 = !DILocation(line: 622, column: 12, scope: !678)
!678 = distinct !DILexicalBlock(scope: !679, file: !1, line: 622, column: 9)
!679 = distinct !DILexicalBlock(scope: !680, file: !1, line: 621, column: 31)
!680 = distinct !DILexicalBlock(scope: !640, file: !1, line: 621, column: 7)
!681 = !DILocation(line: 622, column: 19, scope: !678)
!682 = !DILocation(line: 622, column: 9, scope: !679)
!683 = !DILocation(line: 623, column: 27, scope: !678)
!684 = !DILocation(line: 623, column: 38, scope: !678)
!685 = !DILocation(line: 623, column: 7, scope: !678)
!686 = !DILocation(line: 625, column: 17, scope: !687)
!687 = distinct !DILexicalBlock(scope: !678, file: !1, line: 624, column: 10)
!688 = !DILocation(line: 626, column: 27, scope: !687)
!689 = !DILocation(line: 630, column: 5, scope: !690)
!690 = distinct !DILexicalBlock(scope: !680, file: !1, line: 629, column: 8)
!691 = !{!389, !384, i64 128}
!692 = !{!389, !381, i64 144}
!693 = !DILocation(line: 0, scope: !690)
!694 = !DILocation(line: 632, column: 1, scope: !640)
!695 = distinct !DISubprogram(name: "singlestep", scope: !1, file: !1, line: 556, type: !696, isLocal: true, isDefinition: true, scopeLine: 556, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !698)
!696 = !DISubroutineType(types: !697)
!697 = !{!645, !149}
!698 = !{!699, !700, !701, !704}
!699 = !DILocalVariable(name: "L", arg: 1, scope: !695, file: !1, line: 556, type: !149)
!700 = !DILocalVariable(name: "g", scope: !695, file: !1, line: 557, type: !161)
!701 = !DILocalVariable(name: "old", scope: !702, file: !1, line: 573, type: !27)
!702 = distinct !DILexicalBlock(scope: !703, file: !1, line: 572, column: 26)
!703 = distinct !DILexicalBlock(scope: !695, file: !1, line: 559, column: 23)
!704 = !DILocalVariable(name: "old", scope: !705, file: !1, line: 582, type: !27)
!705 = distinct !DILexicalBlock(scope: !703, file: !1, line: 581, column: 20)
!706 = !DILocation(line: 556, column: 37, scope: !695)
!707 = !DILocation(line: 557, column: 21, scope: !695)
!708 = !DILocation(line: 557, column: 17, scope: !695)
!709 = !DILocation(line: 559, column: 14, scope: !695)
!710 = !DILocation(line: 559, column: 3, scope: !695)
!711 = !DILocation(line: 561, column: 7, scope: !712)
!712 = distinct !DILexicalBlock(scope: !703, file: !1, line: 560, column: 20)
!713 = !DILocation(line: 562, column: 7, scope: !712)
!714 = !DILocation(line: 565, column: 14, scope: !715)
!715 = distinct !DILexicalBlock(scope: !716, file: !1, line: 565, column: 11)
!716 = distinct !DILexicalBlock(scope: !703, file: !1, line: 564, column: 24)
!717 = !{!389, !378, i64 56}
!718 = !DILocation(line: 565, column: 11, scope: !715)
!719 = !DILocation(line: 565, column: 11, scope: !716)
!720 = !DILocation(line: 566, column: 16, scope: !715)
!721 = !DILocation(line: 566, column: 9, scope: !715)
!722 = !DILocalVariable(name: "L", arg: 1, scope: !723, file: !1, line: 525, type: !149)
!723 = distinct !DISubprogram(name: "atomic", scope: !1, file: !1, line: 525, type: !445, isLocal: true, isDefinition: true, scopeLine: 525, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !724)
!724 = !{!722, !725, !726}
!725 = !DILocalVariable(name: "g", scope: !723, file: !1, line: 526, type: !161)
!726 = !DILocalVariable(name: "udsize", scope: !723, file: !1, line: 527, type: !29)
!727 = !DILocation(line: 525, column: 32, scope: !723, inlinedAt: !728)
!728 = distinct !DILocation(line: 568, column: 9, scope: !729)
!729 = distinct !DILexicalBlock(scope: !715, file: !1, line: 567, column: 12)
!730 = !DILocation(line: 526, column: 17, scope: !723, inlinedAt: !728)
!731 = !DILocalVariable(name: "g", arg: 1, scope: !732, file: !1, line: 515, type: !161)
!732 = distinct !DISubprogram(name: "remarkupvals", scope: !1, file: !1, line: 515, type: !733, isLocal: true, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !735)
!733 = !DISubroutineType(types: !734)
!734 = !{null, !161}
!735 = !{!731, !736}
!736 = !DILocalVariable(name: "uv", scope: !732, file: !1, line: 516, type: !354)
!737 = !DILocation(line: 515, column: 41, scope: !732, inlinedAt: !738)
!738 = distinct !DILocation(line: 529, column: 3, scope: !723, inlinedAt: !728)
!739 = !DILocation(line: 517, column: 16, scope: !740, inlinedAt: !738)
!740 = distinct !DILexicalBlock(scope: !732, file: !1, line: 517, column: 3)
!741 = !DILocation(line: 517, column: 27, scope: !740, inlinedAt: !738)
!742 = !DILocation(line: 516, column: 10, scope: !732, inlinedAt: !738)
!743 = !DILocation(line: 0, scope: !744, inlinedAt: !738)
!744 = distinct !DILexicalBlock(scope: !740, file: !1, line: 517, column: 3)
!745 = !DILocation(line: 517, column: 36, scope: !744, inlinedAt: !738)
!746 = !DILocation(line: 517, column: 3, scope: !740, inlinedAt: !738)
!747 = !DILocation(line: 522, column: 1, scope: !732, inlinedAt: !738)
!748 = !DILocalVariable(name: "g", arg: 1, scope: !749, file: !1, line: 323, type: !161)
!749 = distinct !DISubprogram(name: "propagateall", scope: !1, file: !1, line: 323, type: !750, isLocal: true, isDefinition: true, scopeLine: 323, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !752)
!750 = !DISubroutineType(types: !751)
!751 = !{!29, !161}
!752 = !{!748, !753}
!753 = !DILocalVariable(name: "m", scope: !749, file: !1, line: 324, type: !29)
!754 = !DILocation(line: 323, column: 43, scope: !749, inlinedAt: !755)
!755 = distinct !DILocation(line: 531, column: 3, scope: !723, inlinedAt: !728)
!756 = !DILocation(line: 324, column: 10, scope: !749, inlinedAt: !755)
!757 = !DILocation(line: 325, column: 3, scope: !749, inlinedAt: !755)
!758 = !DILocation(line: 519, column: 9, scope: !759, inlinedAt: !738)
!759 = distinct !DILexicalBlock(scope: !760, file: !1, line: 519, column: 9)
!760 = distinct !DILexicalBlock(scope: !744, file: !1, line: 517, column: 70)
!761 = !DILocation(line: 520, column: 7, scope: !762, inlinedAt: !738)
!762 = distinct !DILexicalBlock(scope: !763, file: !1, line: 520, column: 7)
!763 = distinct !DILexicalBlock(scope: !759, file: !1, line: 520, column: 7)
!764 = !{!392, !378, i64 16}
!765 = !DILocation(line: 520, column: 7, scope: !763, inlinedAt: !738)
!766 = !DILocation(line: 517, column: 64, scope: !744, inlinedAt: !738)
!767 = distinct !{!767, !768, !769}
!768 = !DILocation(line: 517, column: 3, scope: !740)
!769 = !DILocation(line: 521, column: 3, scope: !740)
!770 = !DILocation(line: 325, column: 13, scope: !749, inlinedAt: !755)
!771 = !DILocation(line: 325, column: 24, scope: !749, inlinedAt: !755)
!772 = distinct !{!772, !773, !774}
!773 = !DILocation(line: 325, column: 3, scope: !749)
!774 = !DILocation(line: 325, column: 39, scope: !749)
!775 = !DILocation(line: 326, column: 3, scope: !749, inlinedAt: !755)
!776 = !DILocation(line: 533, column: 16, scope: !723, inlinedAt: !728)
!777 = !{!389, !378, i64 72}
!778 = !DILocation(line: 533, column: 11, scope: !723, inlinedAt: !728)
!779 = !DILocation(line: 534, column: 11, scope: !723, inlinedAt: !728)
!780 = !DILocation(line: 536, column: 3, scope: !781, inlinedAt: !728)
!781 = distinct !DILexicalBlock(scope: !782, file: !1, line: 536, column: 3)
!782 = distinct !DILexicalBlock(scope: !723, file: !1, line: 536, column: 3)
!783 = !DILocation(line: 536, column: 3, scope: !782, inlinedAt: !728)
!784 = !DILocation(line: 537, column: 3, scope: !723, inlinedAt: !728)
!785 = !DILocation(line: 323, column: 43, scope: !749, inlinedAt: !786)
!786 = distinct !DILocation(line: 538, column: 3, scope: !723, inlinedAt: !728)
!787 = !DILocation(line: 324, column: 10, scope: !749, inlinedAt: !786)
!788 = !DILocation(line: 325, column: 13, scope: !749, inlinedAt: !786)
!789 = !DILocation(line: 325, column: 3, scope: !749, inlinedAt: !786)
!790 = !DILocation(line: 325, column: 24, scope: !749, inlinedAt: !786)
!791 = !DILocation(line: 326, column: 3, scope: !749, inlinedAt: !786)
!792 = !DILocation(line: 540, column: 16, scope: !723, inlinedAt: !728)
!793 = !{!389, !378, i64 64}
!794 = !DILocation(line: 540, column: 11, scope: !723, inlinedAt: !728)
!795 = !DILocation(line: 541, column: 16, scope: !723, inlinedAt: !728)
!796 = !DILocation(line: 323, column: 43, scope: !749, inlinedAt: !797)
!797 = distinct !DILocation(line: 542, column: 3, scope: !723, inlinedAt: !728)
!798 = !DILocation(line: 324, column: 10, scope: !749, inlinedAt: !797)
!799 = !DILocation(line: 325, column: 3, scope: !749, inlinedAt: !797)
!800 = !DILocation(line: 325, column: 24, scope: !749, inlinedAt: !797)
!801 = !DILocation(line: 325, column: 13, scope: !749, inlinedAt: !797)
!802 = !DILocation(line: 326, column: 3, scope: !749, inlinedAt: !797)
!803 = !DILocation(line: 543, column: 12, scope: !723, inlinedAt: !728)
!804 = !DILocation(line: 527, column: 10, scope: !723, inlinedAt: !728)
!805 = !DILocalVariable(name: "g", arg: 1, scope: !806, file: !1, line: 115, type: !161)
!806 = distinct !DISubprogram(name: "marktmu", scope: !1, file: !1, line: 115, type: !733, isLocal: true, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !807)
!807 = !{!805, !808}
!808 = !DILocalVariable(name: "u", scope: !806, file: !1, line: 116, type: !36)
!809 = !DILocation(line: 115, column: 36, scope: !806, inlinedAt: !810)
!810 = distinct !DILocation(line: 544, column: 3, scope: !723, inlinedAt: !728)
!811 = !DILocation(line: 116, column: 20, scope: !806, inlinedAt: !810)
!812 = !DILocation(line: 116, column: 13, scope: !806, inlinedAt: !810)
!813 = !DILocation(line: 117, column: 7, scope: !814, inlinedAt: !810)
!814 = distinct !DILexicalBlock(scope: !806, file: !1, line: 117, column: 7)
!815 = !DILocation(line: 117, column: 7, scope: !806, inlinedAt: !810)
!816 = !DILocation(line: 119, column: 18, scope: !817, inlinedAt: !810)
!817 = distinct !DILexicalBlock(scope: !818, file: !1, line: 118, column: 8)
!818 = distinct !DILexicalBlock(scope: !814, file: !1, line: 117, column: 10)
!819 = !DILocation(line: 0, scope: !817, inlinedAt: !810)
!820 = !DILocation(line: 120, column: 7, scope: !817, inlinedAt: !810)
!821 = !DILocation(line: 121, column: 7, scope: !817, inlinedAt: !810)
!822 = !DILocation(line: 122, column: 22, scope: !818, inlinedAt: !810)
!823 = !DILocation(line: 122, column: 16, scope: !818, inlinedAt: !810)
!824 = !DILocation(line: 122, column: 5, scope: !817, inlinedAt: !810)
!825 = distinct !{!825, !826, !827}
!826 = !DILocation(line: 118, column: 5, scope: !818)
!827 = !DILocation(line: 122, column: 29, scope: !818)
!828 = !DILocation(line: 124, column: 1, scope: !806, inlinedAt: !810)
!829 = !DILocation(line: 323, column: 43, scope: !749, inlinedAt: !830)
!830 = distinct !DILocation(line: 545, column: 13, scope: !723, inlinedAt: !728)
!831 = !DILocation(line: 324, column: 10, scope: !749, inlinedAt: !830)
!832 = !DILocation(line: 325, column: 13, scope: !749, inlinedAt: !830)
!833 = !DILocation(line: 325, column: 3, scope: !749, inlinedAt: !830)
!834 = !DILocation(line: 325, column: 24, scope: !749, inlinedAt: !830)
!835 = !DILocation(line: 325, column: 21, scope: !749, inlinedAt: !830)
!836 = !DILocation(line: 0, scope: !749, inlinedAt: !830)
!837 = !DILocation(line: 326, column: 3, scope: !749, inlinedAt: !830)
!838 = !DILocation(line: 546, column: 17, scope: !723, inlinedAt: !728)
!839 = !DILocalVariable(name: "l", arg: 1, scope: !840, file: !1, line: 351, type: !36)
!840 = distinct !DISubprogram(name: "cleartable", scope: !1, file: !1, line: 351, type: !841, isLocal: true, isDefinition: true, scopeLine: 351, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !843)
!841 = !DISubroutineType(types: !842)
!842 = !{null, !36}
!843 = !{!839, !844, !848, !849, !853}
!844 = !DILocalVariable(name: "h", scope: !845, file: !1, line: 353, type: !846)
!845 = distinct !DILexicalBlock(scope: !840, file: !1, line: 352, column: 13)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_typedef, name: "Table", file: !38, line: 348, baseType: !82)
!848 = !DILocalVariable(name: "i", scope: !845, file: !1, line: 354, type: !105)
!849 = !DILocalVariable(name: "o", scope: !850, file: !1, line: 359, type: !91)
!850 = distinct !DILexicalBlock(scope: !851, file: !1, line: 358, column: 19)
!851 = distinct !DILexicalBlock(scope: !852, file: !1, line: 357, column: 43)
!852 = distinct !DILexicalBlock(scope: !845, file: !1, line: 357, column: 9)
!853 = !DILocalVariable(name: "n", scope: !854, file: !1, line: 366, type: !108)
!854 = distinct !DILexicalBlock(scope: !845, file: !1, line: 365, column: 17)
!855 = !DILocation(line: 351, column: 35, scope: !840, inlinedAt: !856)
!856 = distinct !DILocation(line: 546, column: 3, scope: !723, inlinedAt: !728)
!857 = !DILocation(line: 352, column: 3, scope: !840, inlinedAt: !856)
!858 = !DILocation(line: 353, column: 16, scope: !845, inlinedAt: !856)
!859 = !DILocation(line: 353, column: 12, scope: !845, inlinedAt: !856)
!860 = !DILocation(line: 354, column: 16, scope: !845, inlinedAt: !856)
!861 = !{!411, !381, i64 56}
!862 = !DILocation(line: 354, column: 9, scope: !845, inlinedAt: !856)
!863 = !DILocation(line: 357, column: 9, scope: !852, inlinedAt: !856)
!864 = !{!411, !379, i64 9}
!865 = !DILocation(line: 358, column: 7, scope: !851, inlinedAt: !856)
!866 = !DILocation(line: 357, column: 9, scope: !845, inlinedAt: !856)
!867 = !DILocation(line: 358, column: 15, scope: !851, inlinedAt: !856)
!868 = !DILocation(line: 359, column: 25, scope: !850, inlinedAt: !856)
!869 = !{!411, !378, i64 24}
!870 = !DILocalVariable(name: "iskey", arg: 2, scope: !871, file: !1, line: 337, type: !105)
!871 = distinct !DISubprogram(name: "iscleared", scope: !1, file: !1, line: 337, type: !872, isLocal: true, isDefinition: true, scopeLine: 337, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !874)
!872 = !DISubroutineType(types: !873)
!873 = !{!105, !466, !105}
!874 = !{!875, !870}
!875 = !DILocalVariable(name: "o", arg: 1, scope: !871, file: !1, line: 337, type: !466)
!876 = !DILocation(line: 337, column: 44, scope: !871, inlinedAt: !877)
!877 = distinct !DILocation(line: 360, column: 13, scope: !878, inlinedAt: !856)
!878 = distinct !DILexicalBlock(scope: !850, file: !1, line: 360, column: 13)
!879 = !DILocation(line: 338, column: 8, scope: !880, inlinedAt: !877)
!880 = distinct !DILexicalBlock(scope: !871, file: !1, line: 338, column: 7)
!881 = !DILocation(line: 338, column: 7, scope: !871, inlinedAt: !877)
!882 = !DILocation(line: 339, column: 7, scope: !883, inlinedAt: !877)
!883 = distinct !DILexicalBlock(scope: !871, file: !1, line: 339, column: 7)
!884 = !DILocation(line: 0, scope: !871, inlinedAt: !877)
!885 = !DILocation(line: 339, column: 7, scope: !871, inlinedAt: !877)
!886 = !DILocation(line: 340, column: 5, scope: !887, inlinedAt: !877)
!887 = distinct !DILexicalBlock(scope: !883, file: !1, line: 339, column: 22)
!888 = !DILocation(line: 341, column: 5, scope: !887, inlinedAt: !877)
!889 = !DILocation(line: 343, column: 10, scope: !871, inlinedAt: !877)
!890 = !DILocation(line: 343, column: 30, scope: !871, inlinedAt: !877)
!891 = !DILocation(line: 345, column: 1, scope: !871, inlinedAt: !877)
!892 = !DILocation(line: 360, column: 13, scope: !850, inlinedAt: !856)
!893 = !DILocation(line: 344, column: 6, scope: !871, inlinedAt: !877)
!894 = !DILocation(line: 344, column: 22, scope: !871, inlinedAt: !877)
!895 = !DILocation(line: 360, column: 13, scope: !878, inlinedAt: !856)
!896 = !DILocation(line: 361, column: 11, scope: !878, inlinedAt: !856)
!897 = distinct !{!897, !898, !899}
!898 = !DILocation(line: 358, column: 7, scope: !851)
!899 = !DILocation(line: 362, column: 7, scope: !851)
!900 = !DILocation(line: 364, column: 9, scope: !845, inlinedAt: !856)
!901 = !{!411, !379, i64 11}
!902 = !DILocation(line: 365, column: 13, scope: !845, inlinedAt: !856)
!903 = !DILocation(line: 365, column: 5, scope: !845, inlinedAt: !856)
!904 = !DILocation(line: 366, column: 17, scope: !854, inlinedAt: !856)
!905 = !{!411, !378, i64 32}
!906 = !DILocation(line: 367, column: 12, scope: !907, inlinedAt: !856)
!907 = distinct !DILexicalBlock(scope: !854, file: !1, line: 367, column: 11)
!908 = !{!909, !381, i64 8}
!909 = !{!"Node", !383, i64 0, !379, i64 16}
!910 = !DILocation(line: 367, column: 29, scope: !907, inlinedAt: !856)
!911 = !DILocation(line: 337, column: 44, scope: !871, inlinedAt: !912)
!912 = distinct !DILocation(line: 368, column: 12, scope: !907, inlinedAt: !856)
!913 = !DILocation(line: 338, column: 8, scope: !880, inlinedAt: !912)
!914 = !DILocation(line: 338, column: 7, scope: !871, inlinedAt: !912)
!915 = !DILocation(line: 339, column: 7, scope: !883, inlinedAt: !912)
!916 = !DILocation(line: 0, scope: !871, inlinedAt: !912)
!917 = !DILocation(line: 339, column: 7, scope: !871, inlinedAt: !912)
!918 = !DILocation(line: 340, column: 5, scope: !887, inlinedAt: !912)
!919 = !DILocation(line: 338, column: 8, scope: !880, inlinedAt: !920)
!920 = distinct !DILocation(line: 368, column: 41, scope: !907, inlinedAt: !856)
!921 = !DILocation(line: 341, column: 5, scope: !887, inlinedAt: !912)
!922 = !DILocation(line: 343, column: 10, scope: !871, inlinedAt: !912)
!923 = !DILocation(line: 343, column: 30, scope: !871, inlinedAt: !912)
!924 = !DILocation(line: 345, column: 1, scope: !871, inlinedAt: !912)
!925 = !DILocation(line: 337, column: 44, scope: !871, inlinedAt: !920)
!926 = !DILocation(line: 338, column: 7, scope: !871, inlinedAt: !920)
!927 = !DILocation(line: 339, column: 7, scope: !883, inlinedAt: !920)
!928 = !DILocation(line: 0, scope: !871, inlinedAt: !920)
!929 = !DILocation(line: 339, column: 7, scope: !871, inlinedAt: !920)
!930 = !DILocation(line: 340, column: 5, scope: !887, inlinedAt: !920)
!931 = !DILocation(line: 341, column: 5, scope: !887, inlinedAt: !920)
!932 = !DILocation(line: 343, column: 10, scope: !871, inlinedAt: !920)
!933 = !DILocation(line: 343, column: 30, scope: !871, inlinedAt: !920)
!934 = !DILocation(line: 344, column: 6, scope: !871, inlinedAt: !920)
!935 = !DILocation(line: 344, column: 22, scope: !871, inlinedAt: !920)
!936 = !DILocation(line: 345, column: 1, scope: !871, inlinedAt: !920)
!937 = !DILocation(line: 367, column: 11, scope: !854, inlinedAt: !856)
!938 = !DILocation(line: 368, column: 41, scope: !907, inlinedAt: !856)
!939 = !DILocation(line: 369, column: 9, scope: !940, inlinedAt: !856)
!940 = distinct !DILexicalBlock(scope: !907, file: !1, line: 368, column: 65)
!941 = !DILocation(line: 64, column: 7, scope: !942, inlinedAt: !948)
!942 = distinct !DILexicalBlock(scope: !943, file: !1, line: 64, column: 7)
!943 = distinct !DISubprogram(name: "removeentry", scope: !1, file: !1, line: 62, type: !944, isLocal: true, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !946)
!944 = !DISubroutineType(types: !945)
!945 = !{null, !108}
!946 = !{!947}
!947 = !DILocalVariable(name: "n", arg: 1, scope: !943, file: !1, line: 62, type: !108)
!948 = distinct !DILocation(line: 370, column: 9, scope: !940, inlinedAt: !856)
!949 = !DILocation(line: 64, column: 7, scope: !943, inlinedAt: !948)
!950 = !DILocation(line: 65, column: 5, scope: !942, inlinedAt: !948)
!951 = !DILocation(line: 66, column: 1, scope: !943, inlinedAt: !948)
!952 = !DILocation(line: 371, column: 7, scope: !940, inlinedAt: !856)
!953 = distinct !{!953, !954, !955}
!954 = !DILocation(line: 365, column: 5, scope: !845)
!955 = !DILocation(line: 372, column: 5, scope: !845)
!956 = !DILocation(line: 373, column: 12, scope: !845, inlinedAt: !856)
!957 = !{!411, !378, i64 48}
!958 = distinct !{!958, !959, !960}
!959 = !DILocation(line: 352, column: 3, scope: !840)
!960 = !DILocation(line: 374, column: 3, scope: !840)
!961 = !DILocation(line: 375, column: 1, scope: !840, inlinedAt: !856)
!962 = !DILocation(line: 548, column: 21, scope: !723, inlinedAt: !728)
!963 = !DILocation(line: 548, column: 19, scope: !723, inlinedAt: !728)
!964 = !DILocation(line: 549, column: 6, scope: !723, inlinedAt: !728)
!965 = !DILocation(line: 549, column: 17, scope: !723, inlinedAt: !728)
!966 = !{!389, !381, i64 36}
!967 = !DILocation(line: 550, column: 20, scope: !723, inlinedAt: !728)
!968 = !DILocation(line: 550, column: 6, scope: !723, inlinedAt: !728)
!969 = !DILocation(line: 550, column: 14, scope: !723, inlinedAt: !728)
!970 = !{!389, !378, i64 48}
!971 = !DILocation(line: 551, column: 14, scope: !723, inlinedAt: !728)
!972 = !DILocation(line: 552, column: 20, scope: !723, inlinedAt: !728)
!973 = !DILocation(line: 545, column: 10, scope: !723, inlinedAt: !728)
!974 = !DILocation(line: 552, column: 31, scope: !723, inlinedAt: !728)
!975 = !DILocation(line: 552, column: 6, scope: !723, inlinedAt: !728)
!976 = !DILocation(line: 552, column: 15, scope: !723, inlinedAt: !728)
!977 = !DILocation(line: 553, column: 1, scope: !723, inlinedAt: !728)
!978 = !DILocation(line: 569, column: 9, scope: !729)
!979 = !DILocation(line: 573, column: 23, scope: !702)
!980 = !DILocation(line: 573, column: 14, scope: !702)
!981 = !DILocation(line: 574, column: 7, scope: !702)
!982 = !DILocation(line: 575, column: 14, scope: !983)
!983 = distinct !DILexicalBlock(scope: !702, file: !1, line: 575, column: 11)
!984 = !DILocation(line: 575, column: 36, scope: !983)
!985 = !DILocation(line: 575, column: 25, scope: !983)
!986 = !DILocation(line: 575, column: 11, scope: !702)
!987 = !DILocation(line: 576, column: 20, scope: !983)
!988 = !DILocation(line: 576, column: 9, scope: !983)
!989 = !DILocation(line: 578, column: 31, scope: !702)
!990 = !DILocation(line: 578, column: 10, scope: !702)
!991 = !DILocation(line: 578, column: 19, scope: !702)
!992 = !DILocation(line: 582, column: 23, scope: !705)
!993 = !DILocation(line: 582, column: 14, scope: !705)
!994 = !DILocation(line: 583, column: 36, scope: !705)
!995 = !DILocation(line: 583, column: 20, scope: !705)
!996 = !DILocation(line: 583, column: 18, scope: !705)
!997 = !DILocation(line: 584, column: 11, scope: !998)
!998 = distinct !DILexicalBlock(scope: !705, file: !1, line: 584, column: 11)
!999 = !DILocation(line: 584, column: 23, scope: !998)
!1000 = !DILocation(line: 584, column: 11, scope: !705)
!1001 = !DILocalVariable(name: "L", arg: 1, scope: !1002, file: !1, line: 431, type: !149)
!1002 = distinct !DISubprogram(name: "checkSizes", scope: !1, file: !1, line: 431, type: !445, isLocal: true, isDefinition: true, scopeLine: 431, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1003)
!1003 = !{!1001, !1004, !1005}
!1004 = !DILocalVariable(name: "g", scope: !1002, file: !1, line: 432, type: !161)
!1005 = !DILocalVariable(name: "newsize", scope: !1006, file: !1, line: 439, type: !29)
!1006 = distinct !DILexicalBlock(scope: !1007, file: !1, line: 438, column: 52)
!1007 = distinct !DILexicalBlock(scope: !1002, file: !1, line: 438, column: 7)
!1008 = !DILocation(line: 431, column: 36, scope: !1002, inlinedAt: !1009)
!1009 = distinct !DILocation(line: 585, column: 9, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !998, file: !1, line: 584, column: 32)
!1011 = !DILocation(line: 432, column: 21, scope: !1002, inlinedAt: !1009)
!1012 = !DILocation(line: 432, column: 17, scope: !1002, inlinedAt: !1009)
!1013 = !DILocation(line: 434, column: 15, scope: !1014, inlinedAt: !1009)
!1014 = distinct !DILexicalBlock(scope: !1002, file: !1, line: 434, column: 7)
!1015 = !DILocation(line: 434, column: 22, scope: !1014, inlinedAt: !1009)
!1016 = !DILocation(line: 434, column: 20, scope: !1014, inlinedAt: !1009)
!1017 = !DILocation(line: 435, column: 20, scope: !1014, inlinedAt: !1009)
!1018 = !DILocation(line: 434, column: 53, scope: !1014, inlinedAt: !1009)
!1019 = !DILocation(line: 436, column: 5, scope: !1014, inlinedAt: !1009)
!1020 = !DILocation(line: 438, column: 7, scope: !1007, inlinedAt: !1009)
!1021 = !{!389, !384, i64 104}
!1022 = !DILocation(line: 438, column: 33, scope: !1007, inlinedAt: !1009)
!1023 = !DILocation(line: 438, column: 7, scope: !1002, inlinedAt: !1009)
!1024 = !DILocation(line: 439, column: 48, scope: !1006, inlinedAt: !1009)
!1025 = !DILocation(line: 439, column: 12, scope: !1006, inlinedAt: !1009)
!1026 = !DILocation(line: 440, column: 5, scope: !1006, inlinedAt: !1009)
!1027 = !{!389, !378, i64 88}
!1028 = !DILocation(line: 441, column: 3, scope: !1006, inlinedAt: !1009)
!1029 = !DILocation(line: 442, column: 1, scope: !1002, inlinedAt: !1009)
!1030 = !DILocation(line: 586, column: 20, scope: !1010)
!1031 = !DILocation(line: 587, column: 7, scope: !1010)
!1032 = !DILocation(line: 589, column: 31, scope: !705)
!1033 = !DILocation(line: 589, column: 10, scope: !705)
!1034 = !DILocation(line: 589, column: 19, scope: !705)
!1035 = !DILocation(line: 593, column: 14, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1037, file: !1, line: 593, column: 11)
!1037 = distinct !DILexicalBlock(scope: !703, file: !1, line: 592, column: 23)
!1038 = !DILocation(line: 593, column: 11, scope: !1036)
!1039 = !DILocation(line: 593, column: 11, scope: !1037)
!1040 = !DILocation(line: 594, column: 9, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1036, file: !1, line: 593, column: 23)
!1042 = !DILocation(line: 595, column: 16, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1041, file: !1, line: 595, column: 13)
!1044 = !DILocation(line: 595, column: 25, scope: !1043)
!1045 = !DILocation(line: 595, column: 13, scope: !1041)
!1046 = !DILocation(line: 596, column: 23, scope: !1043)
!1047 = !DILocation(line: 596, column: 11, scope: !1043)
!1048 = !DILocation(line: 600, column: 20, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1036, file: !1, line: 599, column: 12)
!1050 = !DILocation(line: 601, column: 12, scope: !1049)
!1051 = !DILocation(line: 601, column: 19, scope: !1049)
!1052 = !DILocation(line: 602, column: 9, scope: !1049)
!1053 = !DILocation(line: 0, scope: !712)
!1054 = !DILocation(line: 607, column: 1, scope: !695)
!1055 = distinct !DISubprogram(name: "luaC_fullgc", scope: !1, file: !1, line: 635, type: !445, isLocal: false, isDefinition: true, scopeLine: 635, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1056)
!1056 = !{!1057, !1058}
!1057 = !DILocalVariable(name: "L", arg: 1, scope: !1055, file: !1, line: 635, type: !149)
!1058 = !DILocalVariable(name: "g", scope: !1055, file: !1, line: 636, type: !161)
!1059 = !DILocation(line: 635, column: 30, scope: !1055)
!1060 = !DILocation(line: 636, column: 21, scope: !1055)
!1061 = !DILocation(line: 636, column: 17, scope: !1055)
!1062 = !DILocation(line: 637, column: 10, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1055, file: !1, line: 637, column: 7)
!1064 = !DILocation(line: 637, column: 18, scope: !1063)
!1065 = !DILocation(line: 637, column: 7, scope: !1055)
!1066 = !DILocation(line: 639, column: 8, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1063, file: !1, line: 637, column: 35)
!1068 = !DILocation(line: 639, column: 19, scope: !1067)
!1069 = !DILocation(line: 640, column: 22, scope: !1067)
!1070 = !DILocation(line: 640, column: 8, scope: !1067)
!1071 = !DILocation(line: 640, column: 16, scope: !1067)
!1072 = !DILocation(line: 642, column: 8, scope: !1067)
!1073 = !DILocation(line: 642, column: 13, scope: !1067)
!1074 = !DILocation(line: 644, column: 8, scope: !1067)
!1075 = !DILocation(line: 644, column: 13, scope: !1067)
!1076 = !DILocation(line: 645, column: 16, scope: !1067)
!1077 = !DILocation(line: 649, column: 3, scope: !1055)
!1078 = !DILocation(line: 649, column: 21, scope: !1055)
!1079 = !DILocation(line: 651, column: 5, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1055, file: !1, line: 649, column: 37)
!1081 = !DILocation(line: 649, column: 13, scope: !1055)
!1082 = distinct !{!1082, !1077, !1083}
!1083 = !DILocation(line: 652, column: 3, scope: !1055)
!1084 = !DILocation(line: 653, column: 3, scope: !1055)
!1085 = !DILocation(line: 654, column: 13, scope: !1055)
!1086 = !DILocation(line: 654, column: 21, scope: !1055)
!1087 = !DILocation(line: 654, column: 3, scope: !1055)
!1088 = !DILocation(line: 655, column: 5, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1055, file: !1, line: 654, column: 34)
!1090 = distinct !{!1090, !1087, !1091}
!1091 = !DILocation(line: 656, column: 3, scope: !1055)
!1092 = !DILocation(line: 657, column: 3, scope: !1055)
!1093 = !DILocation(line: 658, column: 1, scope: !1055)
!1094 = distinct !DISubprogram(name: "markroot", scope: !1, file: !1, line: 501, type: !445, isLocal: true, isDefinition: true, scopeLine: 501, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1095)
!1095 = !{!1096, !1097}
!1096 = !DILocalVariable(name: "L", arg: 1, scope: !1094, file: !1, line: 501, type: !149)
!1097 = !DILocalVariable(name: "g", scope: !1094, file: !1, line: 502, type: !161)
!1098 = !DILocation(line: 501, column: 34, scope: !1094)
!1099 = !DILocation(line: 502, column: 21, scope: !1094)
!1100 = !DILocation(line: 502, column: 17, scope: !1094)
!1101 = !DILocation(line: 503, column: 6, scope: !1094)
!1102 = !DILocation(line: 503, column: 11, scope: !1094)
!1103 = !DILocation(line: 505, column: 6, scope: !1094)
!1104 = !DILocation(line: 505, column: 11, scope: !1094)
!1105 = !DILocation(line: 506, column: 3, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1107, file: !1, line: 506, column: 3)
!1107 = distinct !DILexicalBlock(scope: !1094, file: !1, line: 506, column: 3)
!1108 = !DILocation(line: 506, column: 3, scope: !1107)
!1109 = !DILocation(line: 508, column: 3, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1111, file: !1, line: 508, column: 3)
!1111 = distinct !DILexicalBlock(scope: !1094, file: !1, line: 508, column: 3)
!1112 = !{!377, !381, i64 128}
!1113 = !DILocation(line: 508, column: 3, scope: !1111)
!1114 = !DILocation(line: 509, column: 3, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1116, file: !1, line: 509, column: 3)
!1116 = distinct !DILexicalBlock(scope: !1094, file: !1, line: 509, column: 3)
!1117 = !{!389, !381, i64 168}
!1118 = !DILocation(line: 509, column: 3, scope: !1116)
!1119 = !DILocation(line: 510, column: 3, scope: !1094)
!1120 = !DILocation(line: 511, column: 6, scope: !1094)
!1121 = !DILocation(line: 511, column: 14, scope: !1094)
!1122 = !DILocation(line: 512, column: 1, scope: !1094)
!1123 = distinct !DISubprogram(name: "luaC_barrierf", scope: !1, file: !1, line: 661, type: !1124, isLocal: false, isDefinition: true, scopeLine: 661, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1126)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{null, !149, !36, !36}
!1126 = !{!1127, !1128, !1129, !1130}
!1127 = !DILocalVariable(name: "L", arg: 1, scope: !1123, file: !1, line: 661, type: !149)
!1128 = !DILocalVariable(name: "o", arg: 2, scope: !1123, file: !1, line: 661, type: !36)
!1129 = !DILocalVariable(name: "v", arg: 3, scope: !1123, file: !1, line: 661, type: !36)
!1130 = !DILocalVariable(name: "g", scope: !1123, file: !1, line: 662, type: !161)
!1131 = !DILocation(line: 661, column: 32, scope: !1123)
!1132 = !DILocation(line: 661, column: 45, scope: !1123)
!1133 = !DILocation(line: 661, column: 58, scope: !1123)
!1134 = !DILocation(line: 662, column: 21, scope: !1123)
!1135 = !DILocation(line: 662, column: 17, scope: !1123)
!1136 = !DILocation(line: 667, column: 10, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1123, file: !1, line: 667, column: 7)
!1138 = !DILocation(line: 667, column: 18, scope: !1137)
!1139 = !DILocation(line: 667, column: 7, scope: !1123)
!1140 = !DILocation(line: 668, column: 5, scope: !1137)
!1141 = !DILocation(line: 670, column: 5, scope: !1137)
!1142 = !DILocation(line: 671, column: 1, scope: !1123)
!1143 = distinct !DISubprogram(name: "reallymarkobject", scope: !1, file: !1, line: 69, type: !1144, isLocal: true, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1146)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{null, !161, !36}
!1146 = !{!1147, !1148, !1149, !1152}
!1147 = !DILocalVariable(name: "g", arg: 1, scope: !1143, file: !1, line: 69, type: !161)
!1148 = !DILocalVariable(name: "o", arg: 2, scope: !1143, file: !1, line: 69, type: !36)
!1149 = !DILocalVariable(name: "mt", scope: !1150, file: !1, line: 77, type: !846)
!1150 = distinct !DILexicalBlock(scope: !1151, file: !1, line: 76, column: 25)
!1151 = distinct !DILexicalBlock(scope: !1143, file: !1, line: 72, column: 22)
!1152 = !DILocalVariable(name: "uv", scope: !1153, file: !1, line: 84, type: !354)
!1153 = distinct !DILexicalBlock(scope: !1151, file: !1, line: 83, column: 22)
!1154 = !DILocation(line: 69, column: 45, scope: !1143)
!1155 = !DILocation(line: 69, column: 58, scope: !1143)
!1156 = !DILocation(line: 71, column: 3, scope: !1143)
!1157 = !DILocation(line: 72, column: 18, scope: !1143)
!1158 = !DILocation(line: 72, column: 3, scope: !1143)
!1159 = !DILocation(line: 77, column: 29, scope: !1150)
!1160 = !DILocation(line: 77, column: 14, scope: !1150)
!1161 = !DILocation(line: 78, column: 7, scope: !1150)
!1162 = !DILocation(line: 79, column: 11, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1150, file: !1, line: 79, column: 11)
!1164 = !DILocation(line: 79, column: 11, scope: !1150)
!1165 = !DILocation(line: 79, column: 15, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1167, file: !1, line: 79, column: 15)
!1167 = distinct !DILexicalBlock(scope: !1163, file: !1, line: 79, column: 15)
!1168 = !DILocation(line: 79, column: 15, scope: !1167)
!1169 = !DILocation(line: 80, column: 7, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1171, file: !1, line: 80, column: 7)
!1171 = distinct !DILexicalBlock(scope: !1150, file: !1, line: 80, column: 7)
!1172 = !DILocation(line: 80, column: 7, scope: !1171)
!1173 = !DILocation(line: 84, column: 14, scope: !1153)
!1174 = !DILocation(line: 85, column: 7, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1176, file: !1, line: 85, column: 7)
!1176 = distinct !DILexicalBlock(scope: !1153, file: !1, line: 85, column: 7)
!1177 = !DILocation(line: 85, column: 7, scope: !1176)
!1178 = !DILocation(line: 86, column: 15, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1153, file: !1, line: 86, column: 11)
!1180 = !DILocation(line: 86, column: 25, scope: !1179)
!1181 = !DILocation(line: 86, column: 27, scope: !1179)
!1182 = !DILocation(line: 86, column: 17, scope: !1179)
!1183 = !DILocation(line: 86, column: 11, scope: !1153)
!1184 = !DILocation(line: 87, column: 9, scope: !1179)
!1185 = !DILocation(line: 91, column: 32, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1151, file: !1, line: 90, column: 25)
!1187 = !DILocation(line: 91, column: 20, scope: !1186)
!1188 = !DILocation(line: 91, column: 27, scope: !1186)
!1189 = !DILocation(line: 92, column: 15, scope: !1186)
!1190 = !DILocation(line: 93, column: 7, scope: !1186)
!1191 = !DILocation(line: 96, column: 29, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1151, file: !1, line: 95, column: 22)
!1193 = !DILocation(line: 96, column: 17, scope: !1192)
!1194 = !DILocation(line: 96, column: 24, scope: !1192)
!1195 = !DILocation(line: 97, column: 15, scope: !1192)
!1196 = !DILocation(line: 98, column: 7, scope: !1192)
!1197 = !DILocation(line: 101, column: 30, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1151, file: !1, line: 100, column: 23)
!1199 = !DILocation(line: 101, column: 18, scope: !1198)
!1200 = !DILocation(line: 101, column: 25, scope: !1198)
!1201 = !DILocation(line: 102, column: 15, scope: !1198)
!1202 = !DILocation(line: 103, column: 7, scope: !1198)
!1203 = !DILocation(line: 106, column: 29, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1151, file: !1, line: 105, column: 22)
!1205 = !DILocation(line: 106, column: 17, scope: !1204)
!1206 = !DILocation(line: 106, column: 24, scope: !1204)
!1207 = !DILocation(line: 107, column: 15, scope: !1204)
!1208 = !DILocation(line: 108, column: 7, scope: !1204)
!1209 = !DILocation(line: 112, column: 1, scope: !1143)
!1210 = distinct !DISubprogram(name: "luaC_barrierback", scope: !1, file: !1, line: 674, type: !1211, isLocal: false, isDefinition: true, scopeLine: 674, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1213)
!1211 = !DISubroutineType(types: !1212)
!1212 = !{null, !149, !846}
!1213 = !{!1214, !1215, !1216, !1217}
!1214 = !DILocalVariable(name: "L", arg: 1, scope: !1210, file: !1, line: 674, type: !149)
!1215 = !DILocalVariable(name: "t", arg: 2, scope: !1210, file: !1, line: 674, type: !846)
!1216 = !DILocalVariable(name: "g", scope: !1210, file: !1, line: 675, type: !161)
!1217 = !DILocalVariable(name: "o", scope: !1210, file: !1, line: 676, type: !36)
!1218 = !DILocation(line: 674, column: 35, scope: !1210)
!1219 = !DILocation(line: 674, column: 45, scope: !1210)
!1220 = !DILocation(line: 675, column: 21, scope: !1210)
!1221 = !DILocation(line: 675, column: 17, scope: !1210)
!1222 = !DILocation(line: 676, column: 13, scope: !1210)
!1223 = !DILocation(line: 679, column: 3, scope: !1210)
!1224 = !DILocation(line: 680, column: 18, scope: !1210)
!1225 = !DILocation(line: 680, column: 6, scope: !1210)
!1226 = !DILocation(line: 680, column: 13, scope: !1210)
!1227 = !DILocation(line: 681, column: 16, scope: !1210)
!1228 = !DILocation(line: 682, column: 1, scope: !1210)
!1229 = distinct !DISubprogram(name: "luaC_link", scope: !1, file: !1, line: 685, type: !1230, isLocal: false, isDefinition: true, scopeLine: 685, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1232)
!1230 = !DISubroutineType(types: !1231)
!1231 = !{null, !149, !36, !34}
!1232 = !{!1233, !1234, !1235, !1236}
!1233 = !DILocalVariable(name: "L", arg: 1, scope: !1229, file: !1, line: 685, type: !149)
!1234 = !DILocalVariable(name: "o", arg: 2, scope: !1229, file: !1, line: 685, type: !36)
!1235 = !DILocalVariable(name: "tt", arg: 3, scope: !1229, file: !1, line: 685, type: !34)
!1236 = !DILocalVariable(name: "g", scope: !1229, file: !1, line: 686, type: !161)
!1237 = !DILocation(line: 685, column: 28, scope: !1229)
!1238 = !DILocation(line: 685, column: 41, scope: !1229)
!1239 = !DILocation(line: 685, column: 52, scope: !1229)
!1240 = !DILocation(line: 686, column: 21, scope: !1229)
!1241 = !DILocation(line: 686, column: 17, scope: !1229)
!1242 = !DILocation(line: 687, column: 20, scope: !1229)
!1243 = !DILocation(line: 687, column: 15, scope: !1229)
!1244 = !DILocation(line: 688, column: 13, scope: !1229)
!1245 = !DILocation(line: 689, column: 19, scope: !1229)
!1246 = !DILocation(line: 689, column: 10, scope: !1229)
!1247 = !DILocation(line: 689, column: 17, scope: !1229)
!1248 = !DILocation(line: 690, column: 10, scope: !1229)
!1249 = !DILocation(line: 690, column: 13, scope: !1229)
!1250 = !DILocation(line: 691, column: 1, scope: !1229)
!1251 = distinct !DISubprogram(name: "luaC_linkupval", scope: !1, file: !1, line: 694, type: !1252, isLocal: false, isDefinition: true, scopeLine: 694, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1254)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{null, !149, !354}
!1254 = !{!1255, !1256, !1257, !1258}
!1255 = !DILocalVariable(name: "L", arg: 1, scope: !1251, file: !1, line: 694, type: !149)
!1256 = !DILocalVariable(name: "uv", arg: 2, scope: !1251, file: !1, line: 694, type: !354)
!1257 = !DILocalVariable(name: "g", scope: !1251, file: !1, line: 695, type: !161)
!1258 = !DILocalVariable(name: "o", scope: !1251, file: !1, line: 696, type: !36)
!1259 = !DILocation(line: 694, column: 33, scope: !1251)
!1260 = !DILocation(line: 694, column: 43, scope: !1251)
!1261 = !DILocation(line: 695, column: 21, scope: !1251)
!1262 = !DILocation(line: 695, column: 17, scope: !1251)
!1263 = !DILocation(line: 696, column: 13, scope: !1251)
!1264 = !DILocation(line: 697, column: 20, scope: !1251)
!1265 = !DILocation(line: 697, column: 15, scope: !1251)
!1266 = !DILocation(line: 698, column: 13, scope: !1251)
!1267 = !DILocation(line: 699, column: 7, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1251, file: !1, line: 699, column: 7)
!1269 = !DILocation(line: 700, column: 12, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1271, file: !1, line: 700, column: 9)
!1271 = distinct !DILexicalBlock(scope: !1268, file: !1, line: 699, column: 18)
!1272 = !DILocation(line: 700, column: 20, scope: !1270)
!1273 = !DILocation(line: 700, column: 9, scope: !1271)
!1274 = !DILocation(line: 701, column: 7, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1270, file: !1, line: 700, column: 37)
!1276 = !DILocation(line: 702, column: 7, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1278, file: !1, line: 702, column: 7)
!1278 = distinct !DILexicalBlock(scope: !1275, file: !1, line: 702, column: 7)
!1279 = !DILocation(line: 661, column: 32, scope: !1123, inlinedAt: !1280)
!1280 = distinct !DILocation(line: 702, column: 7, scope: !1277)
!1281 = !DILocation(line: 661, column: 45, scope: !1123, inlinedAt: !1280)
!1282 = !DILocation(line: 661, column: 58, scope: !1123, inlinedAt: !1280)
!1283 = !DILocation(line: 662, column: 21, scope: !1123, inlinedAt: !1280)
!1284 = !DILocation(line: 662, column: 17, scope: !1123, inlinedAt: !1280)
!1285 = !DILocation(line: 667, column: 10, scope: !1137, inlinedAt: !1280)
!1286 = !DILocation(line: 667, column: 18, scope: !1137, inlinedAt: !1280)
!1287 = !DILocation(line: 667, column: 7, scope: !1123, inlinedAt: !1280)
!1288 = !DILocation(line: 668, column: 5, scope: !1137, inlinedAt: !1280)
!1289 = !DILocation(line: 670, column: 5, scope: !1137, inlinedAt: !1280)
!1290 = !DILocation(line: 671, column: 1, scope: !1123, inlinedAt: !1280)
!1291 = !DILocation(line: 705, column: 7, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1270, file: !1, line: 704, column: 10)
!1293 = !DILocation(line: 709, column: 1, scope: !1251)
!1294 = distinct !DISubprogram(name: "propagatemark", scope: !1, file: !1, line: 277, type: !1295, isLocal: true, isDefinition: true, scopeLine: 277, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1297)
!1295 = !DISubroutineType(types: !1296)
!1296 = !{!645, !161}
!1297 = !{!1298, !1299, !1300, !1303, !1307, !1309}
!1298 = !DILocalVariable(name: "g", arg: 1, scope: !1294, file: !1, line: 277, type: !161)
!1299 = !DILocalVariable(name: "o", scope: !1294, file: !1, line: 278, type: !36)
!1300 = !DILocalVariable(name: "h", scope: !1301, file: !1, line: 283, type: !846)
!1301 = distinct !DILexicalBlock(scope: !1302, file: !1, line: 282, column: 22)
!1302 = distinct !DILexicalBlock(scope: !1294, file: !1, line: 281, column: 22)
!1303 = !DILocalVariable(name: "cl", scope: !1304, file: !1, line: 291, type: !1305)
!1304 = distinct !DILexicalBlock(scope: !1302, file: !1, line: 290, column: 25)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DIDerivedType(tag: DW_TAG_typedef, name: "Closure", file: !38, line: 312, baseType: !131)
!1307 = !DILocalVariable(name: "th", scope: !1308, file: !1, line: 298, type: !149)
!1308 = distinct !DILexicalBlock(scope: !1302, file: !1, line: 297, column: 23)
!1309 = !DILocalVariable(name: "p", scope: !1310, file: !1, line: 308, type: !1311)
!1310 = distinct !DILexicalBlock(scope: !1302, file: !1, line: 307, column: 22)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_typedef, name: "Proto", file: !38, line: 253, baseType: !317)
!1313 = !DILocation(line: 277, column: 43, scope: !1294)
!1314 = !DILocation(line: 278, column: 20, scope: !1294)
!1315 = !DILocation(line: 278, column: 13, scope: !1294)
!1316 = !DILocation(line: 280, column: 3, scope: !1294)
!1317 = !DILocation(line: 281, column: 18, scope: !1294)
!1318 = !DILocation(line: 281, column: 3, scope: !1294)
!1319 = !DILocation(line: 283, column: 18, scope: !1301)
!1320 = !DILocation(line: 283, column: 14, scope: !1301)
!1321 = !DILocation(line: 284, column: 20, scope: !1301)
!1322 = !DILocation(line: 284, column: 15, scope: !1301)
!1323 = !DILocalVariable(name: "g", arg: 1, scope: !1324, file: !1, line: 158, type: !161)
!1324 = distinct !DISubprogram(name: "traversetable", scope: !1, file: !1, line: 158, type: !1325, isLocal: true, isDefinition: true, scopeLine: 158, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1327)
!1325 = !DISubroutineType(types: !1326)
!1326 = !{!105, !161, !846}
!1327 = !{!1323, !1328, !1329, !1330, !1331, !1332, !1333}
!1328 = !DILocalVariable(name: "h", arg: 2, scope: !1324, file: !1, line: 158, type: !846)
!1329 = !DILocalVariable(name: "i", scope: !1324, file: !1, line: 159, type: !105)
!1330 = !DILocalVariable(name: "weakkey", scope: !1324, file: !1, line: 160, type: !105)
!1331 = !DILocalVariable(name: "weakvalue", scope: !1324, file: !1, line: 161, type: !105)
!1332 = !DILocalVariable(name: "mode", scope: !1324, file: !1, line: 162, type: !466)
!1333 = !DILocalVariable(name: "n", scope: !1334, file: !1, line: 185, type: !108)
!1334 = distinct !DILexicalBlock(scope: !1324, file: !1, line: 184, column: 15)
!1335 = !DILocation(line: 158, column: 41, scope: !1324, inlinedAt: !1336)
!1336 = distinct !DILocation(line: 285, column: 11, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1301, file: !1, line: 285, column: 11)
!1338 = !DILocation(line: 158, column: 51, scope: !1324, inlinedAt: !1336)
!1339 = !DILocation(line: 160, column: 7, scope: !1324, inlinedAt: !1336)
!1340 = !DILocation(line: 161, column: 7, scope: !1324, inlinedAt: !1336)
!1341 = !DILocation(line: 163, column: 10, scope: !1342, inlinedAt: !1336)
!1342 = distinct !DILexicalBlock(scope: !1324, file: !1, line: 163, column: 7)
!1343 = !{!411, !378, i64 16}
!1344 = !DILocation(line: 163, column: 7, scope: !1342, inlinedAt: !1336)
!1345 = !DILocation(line: 163, column: 7, scope: !1324, inlinedAt: !1336)
!1346 = !DILocation(line: 164, column: 5, scope: !1347, inlinedAt: !1336)
!1347 = distinct !DILexicalBlock(scope: !1348, file: !1, line: 164, column: 5)
!1348 = distinct !DILexicalBlock(scope: !1342, file: !1, line: 164, column: 5)
!1349 = !DILocation(line: 164, column: 5, scope: !1348, inlinedAt: !1336)
!1350 = !DILocation(line: 165, column: 10, scope: !1324, inlinedAt: !1336)
!1351 = !DILocation(line: 162, column: 17, scope: !1324, inlinedAt: !1336)
!1352 = !DILocation(line: 166, column: 7, scope: !1353, inlinedAt: !1336)
!1353 = distinct !DILexicalBlock(scope: !1324, file: !1, line: 166, column: 7)
!1354 = !DILocation(line: 166, column: 12, scope: !1353, inlinedAt: !1336)
!1355 = !DILocation(line: 166, column: 15, scope: !1353, inlinedAt: !1336)
!1356 = !DILocation(line: 166, column: 7, scope: !1324, inlinedAt: !1336)
!1357 = !DILocation(line: 167, column: 23, scope: !1358, inlinedAt: !1336)
!1358 = distinct !DILexicalBlock(scope: !1353, file: !1, line: 166, column: 33)
!1359 = !DILocation(line: 167, column: 16, scope: !1358, inlinedAt: !1336)
!1360 = !DILocation(line: 167, column: 42, scope: !1358, inlinedAt: !1336)
!1361 = !DILocation(line: 168, column: 25, scope: !1358, inlinedAt: !1336)
!1362 = !DILocation(line: 168, column: 18, scope: !1358, inlinedAt: !1336)
!1363 = !DILocation(line: 168, column: 44, scope: !1358, inlinedAt: !1336)
!1364 = !DILocation(line: 169, column: 17, scope: !1365, inlinedAt: !1336)
!1365 = distinct !DILexicalBlock(scope: !1358, file: !1, line: 169, column: 9)
!1366 = !DILocation(line: 170, column: 17, scope: !1367, inlinedAt: !1336)
!1367 = distinct !DILexicalBlock(scope: !1365, file: !1, line: 169, column: 31)
!1368 = !DILocation(line: 171, column: 20, scope: !1367, inlinedAt: !1336)
!1369 = !DILocation(line: 171, column: 17, scope: !1367, inlinedAt: !1336)
!1370 = !DILocation(line: 173, column: 22, scope: !1367, inlinedAt: !1336)
!1371 = !DILocation(line: 173, column: 17, scope: !1367, inlinedAt: !1336)
!1372 = !DILocation(line: 174, column: 15, scope: !1367, inlinedAt: !1336)
!1373 = !DILocation(line: 175, column: 5, scope: !1367, inlinedAt: !1336)
!1374 = !DILocation(line: 177, column: 15, scope: !1375, inlinedAt: !1336)
!1375 = distinct !DILexicalBlock(scope: !1324, file: !1, line: 177, column: 7)
!1376 = !DILocation(line: 196, column: 1, scope: !1324, inlinedAt: !1336)
!1377 = !DILocation(line: 288, column: 45, scope: !1301)
!1378 = !DILocation(line: 285, column: 11, scope: !1301)
!1379 = !DILocation(line: 178, column: 7, scope: !1324, inlinedAt: !1336)
!1380 = !DILocation(line: 179, column: 12, scope: !1381, inlinedAt: !1336)
!1381 = distinct !DILexicalBlock(scope: !1382, file: !1, line: 178, column: 19)
!1382 = distinct !DILexicalBlock(scope: !1324, file: !1, line: 178, column: 7)
!1383 = !DILocation(line: 159, column: 7, scope: !1324, inlinedAt: !1336)
!1384 = !DILocation(line: 180, column: 5, scope: !1381, inlinedAt: !1336)
!1385 = !DILocation(line: 180, column: 13, scope: !1381, inlinedAt: !1336)
!1386 = !DILocation(line: 181, column: 7, scope: !1387, inlinedAt: !1336)
!1387 = distinct !DILexicalBlock(scope: !1388, file: !1, line: 181, column: 7)
!1388 = distinct !DILexicalBlock(scope: !1381, file: !1, line: 181, column: 7)
!1389 = !DILocation(line: 181, column: 7, scope: !1388, inlinedAt: !1336)
!1390 = distinct !{!1390, !1391, !1392}
!1391 = !DILocation(line: 180, column: 5, scope: !1381)
!1392 = !DILocation(line: 181, column: 7, scope: !1381)
!1393 = !DILocation(line: 183, column: 7, scope: !1324, inlinedAt: !1336)
!1394 = !DILocation(line: 184, column: 11, scope: !1324, inlinedAt: !1336)
!1395 = !DILocation(line: 184, column: 3, scope: !1324, inlinedAt: !1336)
!1396 = !DILocation(line: 185, column: 15, scope: !1334, inlinedAt: !1336)
!1397 = !DILocation(line: 187, column: 9, scope: !1398, inlinedAt: !1336)
!1398 = distinct !DILexicalBlock(scope: !1334, file: !1, line: 187, column: 9)
!1399 = !DILocation(line: 187, column: 9, scope: !1334, inlinedAt: !1336)
!1400 = !DILocation(line: 64, column: 7, scope: !942, inlinedAt: !1401)
!1401 = distinct !DILocation(line: 188, column: 7, scope: !1398, inlinedAt: !1336)
!1402 = !DILocation(line: 64, column: 7, scope: !943, inlinedAt: !1401)
!1403 = !DILocation(line: 65, column: 5, scope: !942, inlinedAt: !1401)
!1404 = !DILocation(line: 66, column: 1, scope: !943, inlinedAt: !1401)
!1405 = !DILocation(line: 188, column: 7, scope: !1398, inlinedAt: !1336)
!1406 = !DILocation(line: 191, column: 11, scope: !1407, inlinedAt: !1336)
!1407 = distinct !DILexicalBlock(scope: !1398, file: !1, line: 189, column: 10)
!1408 = !DILocation(line: 191, column: 21, scope: !1409, inlinedAt: !1336)
!1409 = distinct !DILexicalBlock(scope: !1410, file: !1, line: 191, column: 21)
!1410 = distinct !DILexicalBlock(scope: !1411, file: !1, line: 191, column: 21)
!1411 = distinct !DILexicalBlock(scope: !1407, file: !1, line: 191, column: 11)
!1412 = !DILocation(line: 191, column: 21, scope: !1410, inlinedAt: !1336)
!1413 = !DILocation(line: 192, column: 11, scope: !1407, inlinedAt: !1336)
!1414 = !DILocation(line: 192, column: 23, scope: !1415, inlinedAt: !1336)
!1415 = distinct !DILexicalBlock(scope: !1416, file: !1, line: 192, column: 23)
!1416 = distinct !DILexicalBlock(scope: !1417, file: !1, line: 192, column: 23)
!1417 = distinct !DILexicalBlock(scope: !1407, file: !1, line: 192, column: 11)
!1418 = !DILocation(line: 192, column: 23, scope: !1416, inlinedAt: !1336)
!1419 = distinct !{!1419, !1420, !1421}
!1420 = !DILocation(line: 184, column: 3, scope: !1324)
!1421 = !DILocation(line: 194, column: 3, scope: !1324)
!1422 = !DILocation(line: 195, column: 18, scope: !1324, inlinedAt: !1336)
!1423 = !DILocation(line: 285, column: 11, scope: !1337)
!1424 = !DILocation(line: 286, column: 9, scope: !1337)
!1425 = !DILocation(line: 287, column: 50, scope: !1301)
!1426 = !DILocation(line: 287, column: 47, scope: !1301)
!1427 = !DILocation(line: 287, column: 45, scope: !1301)
!1428 = !DILocation(line: 287, column: 28, scope: !1301)
!1429 = !DILocation(line: 288, column: 43, scope: !1301)
!1430 = !DILocation(line: 287, column: 60, scope: !1301)
!1431 = !DILocation(line: 291, column: 21, scope: !1304)
!1432 = !DILocation(line: 291, column: 16, scope: !1304)
!1433 = !DILocation(line: 292, column: 23, scope: !1304)
!1434 = !DILocation(line: 292, column: 15, scope: !1304)
!1435 = !DILocalVariable(name: "g", arg: 1, scope: !1436, file: !1, line: 224, type: !161)
!1436 = distinct !DISubprogram(name: "traverseclosure", scope: !1, file: !1, line: 224, type: !1437, isLocal: true, isDefinition: true, scopeLine: 224, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1439)
!1437 = !DISubroutineType(types: !1438)
!1438 = !{null, !161, !1305}
!1439 = !{!1435, !1440, !1441, !1444}
!1440 = !DILocalVariable(name: "cl", arg: 2, scope: !1436, file: !1, line: 224, type: !1305)
!1441 = !DILocalVariable(name: "i", scope: !1442, file: !1, line: 227, type: !105)
!1442 = distinct !DILexicalBlock(scope: !1443, file: !1, line: 226, column: 18)
!1443 = distinct !DILexicalBlock(scope: !1436, file: !1, line: 226, column: 7)
!1444 = !DILocalVariable(name: "i", scope: !1445, file: !1, line: 232, type: !105)
!1445 = distinct !DILexicalBlock(scope: !1443, file: !1, line: 231, column: 8)
!1446 = !DILocation(line: 224, column: 44, scope: !1436, inlinedAt: !1447)
!1447 = distinct !DILocation(line: 293, column: 7, scope: !1304)
!1448 = !DILocation(line: 224, column: 56, scope: !1436, inlinedAt: !1447)
!1449 = !DILocation(line: 225, column: 3, scope: !1450, inlinedAt: !1447)
!1450 = distinct !DILexicalBlock(scope: !1451, file: !1, line: 225, column: 3)
!1451 = distinct !DILexicalBlock(scope: !1436, file: !1, line: 225, column: 3)
!1452 = !DILocation(line: 225, column: 3, scope: !1451, inlinedAt: !1447)
!1453 = !DILocation(line: 226, column: 13, scope: !1443, inlinedAt: !1447)
!1454 = !DILocation(line: 226, column: 7, scope: !1443, inlinedAt: !1447)
!1455 = !DILocation(line: 226, column: 7, scope: !1436, inlinedAt: !1447)
!1456 = !DILocation(line: 227, column: 9, scope: !1442, inlinedAt: !1447)
!1457 = !DILocation(line: 228, column: 23, scope: !1458, inlinedAt: !1447)
!1458 = distinct !DILexicalBlock(scope: !1459, file: !1, line: 228, column: 5)
!1459 = distinct !DILexicalBlock(scope: !1442, file: !1, line: 228, column: 5)
!1460 = !DILocation(line: 228, column: 16, scope: !1458, inlinedAt: !1447)
!1461 = !DILocation(line: 228, column: 5, scope: !1459, inlinedAt: !1447)
!1462 = !DILocation(line: 229, column: 7, scope: !1463, inlinedAt: !1447)
!1463 = distinct !DILexicalBlock(scope: !1464, file: !1, line: 229, column: 7)
!1464 = distinct !DILexicalBlock(scope: !1458, file: !1, line: 229, column: 7)
!1465 = !DILocation(line: 229, column: 7, scope: !1464, inlinedAt: !1447)
!1466 = !DILocation(line: 228, column: 35, scope: !1458, inlinedAt: !1447)
!1467 = distinct !{!1467, !1468, !1469}
!1468 = !DILocation(line: 228, column: 5, scope: !1459)
!1469 = !DILocation(line: 229, column: 7, scope: !1459)
!1470 = !DILocation(line: 234, column: 5, scope: !1471, inlinedAt: !1447)
!1471 = distinct !DILexicalBlock(scope: !1472, file: !1, line: 234, column: 5)
!1472 = distinct !DILexicalBlock(scope: !1445, file: !1, line: 234, column: 5)
!1473 = !DILocation(line: 234, column: 5, scope: !1472, inlinedAt: !1447)
!1474 = !DILocation(line: 232, column: 9, scope: !1445, inlinedAt: !1447)
!1475 = !DILocation(line: 235, column: 23, scope: !1476, inlinedAt: !1447)
!1476 = distinct !DILexicalBlock(scope: !1477, file: !1, line: 235, column: 5)
!1477 = distinct !DILexicalBlock(scope: !1445, file: !1, line: 235, column: 5)
!1478 = !DILocation(line: 235, column: 16, scope: !1476, inlinedAt: !1447)
!1479 = !DILocation(line: 235, column: 5, scope: !1477, inlinedAt: !1447)
!1480 = !DILocation(line: 236, column: 7, scope: !1481, inlinedAt: !1447)
!1481 = distinct !DILexicalBlock(scope: !1482, file: !1, line: 236, column: 7)
!1482 = distinct !DILexicalBlock(scope: !1476, file: !1, line: 236, column: 7)
!1483 = !DILocation(line: 236, column: 7, scope: !1482, inlinedAt: !1447)
!1484 = !DILocation(line: 235, column: 35, scope: !1476, inlinedAt: !1447)
!1485 = distinct !{!1485, !1486, !1487}
!1486 = !DILocation(line: 235, column: 5, scope: !1477)
!1487 = !DILocation(line: 236, column: 7, scope: !1477)
!1488 = !DILocation(line: 238, column: 1, scope: !1436, inlinedAt: !1447)
!1489 = !DILocation(line: 294, column: 21, scope: !1304)
!1490 = !DILocation(line: 294, column: 14, scope: !1304)
!1491 = !DILocation(line: 0, scope: !1304)
!1492 = !DILocation(line: 298, column: 23, scope: !1308)
!1493 = !DILocation(line: 298, column: 18, scope: !1308)
!1494 = !DILocation(line: 299, column: 21, scope: !1308)
!1495 = !{!377, !378, i64 160}
!1496 = !DILocation(line: 299, column: 15, scope: !1308)
!1497 = !DILocation(line: 300, column: 23, scope: !1308)
!1498 = !DILocation(line: 300, column: 18, scope: !1308)
!1499 = !DILocation(line: 301, column: 20, scope: !1308)
!1500 = !DILocation(line: 302, column: 7, scope: !1308)
!1501 = !DILocalVariable(name: "g", arg: 1, scope: !1502, file: !1, line: 256, type: !161)
!1502 = distinct !DISubprogram(name: "traversestack", scope: !1, file: !1, line: 256, type: !1503, isLocal: true, isDefinition: true, scopeLine: 256, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1505)
!1503 = !DISubroutineType(types: !1504)
!1504 = !{null, !161, !149}
!1505 = !{!1501, !1506, !1507, !1508, !1509}
!1506 = !DILocalVariable(name: "l", arg: 2, scope: !1502, file: !1, line: 256, type: !149)
!1507 = !DILocalVariable(name: "o", scope: !1502, file: !1, line: 257, type: !158)
!1508 = !DILocalVariable(name: "lim", scope: !1502, file: !1, line: 257, type: !158)
!1509 = !DILocalVariable(name: "ci", scope: !1502, file: !1, line: 258, type: !238)
!1510 = !DILocation(line: 256, column: 42, scope: !1502, inlinedAt: !1511)
!1511 = distinct !DILocation(line: 303, column: 7, scope: !1308)
!1512 = !DILocation(line: 256, column: 56, scope: !1502, inlinedAt: !1511)
!1513 = !DILocation(line: 259, column: 3, scope: !1514, inlinedAt: !1511)
!1514 = distinct !DILexicalBlock(scope: !1515, file: !1, line: 259, column: 3)
!1515 = distinct !DILexicalBlock(scope: !1502, file: !1, line: 259, column: 3)
!1516 = !DILocation(line: 259, column: 3, scope: !1515, inlinedAt: !1511)
!1517 = !DILocation(line: 260, column: 12, scope: !1502, inlinedAt: !1511)
!1518 = !DILocation(line: 257, column: 12, scope: !1502, inlinedAt: !1511)
!1519 = !DILocation(line: 261, column: 16, scope: !1520, inlinedAt: !1511)
!1520 = distinct !DILexicalBlock(scope: !1502, file: !1, line: 261, column: 3)
!1521 = !{!377, !378, i64 80}
!1522 = !DILocation(line: 258, column: 13, scope: !1502, inlinedAt: !1511)
!1523 = !DILocation(line: 261, column: 34, scope: !1524, inlinedAt: !1511)
!1524 = distinct !DILexicalBlock(scope: !1520, file: !1, line: 261, column: 3)
!1525 = !{!377, !378, i64 40}
!1526 = !DILocation(line: 261, column: 28, scope: !1524, inlinedAt: !1511)
!1527 = !DILocation(line: 261, column: 3, scope: !1520, inlinedAt: !1511)
!1528 = !DILocation(line: 263, column: 19, scope: !1529, inlinedAt: !1511)
!1529 = distinct !DILexicalBlock(scope: !1530, file: !1, line: 263, column: 9)
!1530 = distinct !DILexicalBlock(scope: !1524, file: !1, line: 261, column: 44)
!1531 = !{!1532, !378, i64 16}
!1532 = !{!"CallInfo", !378, i64 0, !378, i64 8, !378, i64 16, !378, i64 24, !381, i64 32, !381, i64 36}
!1533 = !DILocation(line: 263, column: 13, scope: !1529, inlinedAt: !1511)
!1534 = !DILocation(line: 263, column: 9, scope: !1530, inlinedAt: !1511)
!1535 = !DILocation(line: 261, column: 40, scope: !1524, inlinedAt: !1511)
!1536 = distinct !{!1536, !1537, !1538}
!1537 = !DILocation(line: 261, column: 3, scope: !1520)
!1538 = !DILocation(line: 264, column: 3, scope: !1520)
!1539 = !DILocation(line: 0, scope: !1529, inlinedAt: !1511)
!1540 = !DILocation(line: 265, column: 15, scope: !1541, inlinedAt: !1511)
!1541 = distinct !DILexicalBlock(scope: !1502, file: !1, line: 265, column: 3)
!1542 = !{!377, !378, i64 64}
!1543 = !DILocation(line: 257, column: 9, scope: !1502, inlinedAt: !1511)
!1544 = !DILocation(line: 265, column: 24, scope: !1545, inlinedAt: !1511)
!1545 = distinct !DILexicalBlock(scope: !1541, file: !1, line: 265, column: 3)
!1546 = !DILocation(line: 265, column: 3, scope: !1541, inlinedAt: !1511)
!1547 = !DILocation(line: 0, scope: !1545, inlinedAt: !1511)
!1548 = !DILocation(line: 267, column: 12, scope: !1549, inlinedAt: !1511)
!1549 = distinct !DILexicalBlock(scope: !1550, file: !1, line: 267, column: 3)
!1550 = distinct !DILexicalBlock(scope: !1502, file: !1, line: 267, column: 3)
!1551 = !DILocation(line: 267, column: 3, scope: !1550, inlinedAt: !1511)
!1552 = !DILocation(line: 266, column: 5, scope: !1553, inlinedAt: !1511)
!1553 = distinct !DILexicalBlock(scope: !1554, file: !1, line: 266, column: 5)
!1554 = distinct !DILexicalBlock(scope: !1545, file: !1, line: 266, column: 5)
!1555 = !DILocation(line: 266, column: 5, scope: !1554, inlinedAt: !1511)
!1556 = !DILocation(line: 265, column: 29, scope: !1545, inlinedAt: !1511)
!1557 = !DILocation(line: 265, column: 35, scope: !1545, inlinedAt: !1511)
!1558 = distinct !{!1558, !1559, !1560}
!1559 = !DILocation(line: 265, column: 3, scope: !1541)
!1560 = !DILocation(line: 266, column: 5, scope: !1541)
!1561 = !DILocation(line: 268, column: 5, scope: !1549, inlinedAt: !1511)
!1562 = !DILocation(line: 267, column: 21, scope: !1549, inlinedAt: !1511)
!1563 = distinct !{!1563, !1564, !1565}
!1564 = !DILocation(line: 267, column: 3, scope: !1550)
!1565 = !DILocation(line: 268, column: 5, scope: !1550)
!1566 = !DILocalVariable(name: "L", arg: 1, scope: !1567, file: !1, line: 241, type: !149)
!1567 = distinct !DISubprogram(name: "checkstacksizes", scope: !1, file: !1, line: 241, type: !1568, isLocal: true, isDefinition: true, scopeLine: 241, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1570)
!1568 = !DISubroutineType(types: !1569)
!1569 = !{null, !149, !158}
!1570 = !{!1566, !1571, !1572, !1573}
!1571 = !DILocalVariable(name: "max", arg: 2, scope: !1567, file: !1, line: 241, type: !158)
!1572 = !DILocalVariable(name: "ci_used", scope: !1567, file: !1, line: 242, type: !105)
!1573 = !DILocalVariable(name: "s_used", scope: !1567, file: !1, line: 243, type: !105)
!1574 = !DILocation(line: 241, column: 41, scope: !1567, inlinedAt: !1575)
!1575 = distinct !DILocation(line: 269, column: 3, scope: !1502, inlinedAt: !1511)
!1576 = !DILocation(line: 241, column: 50, scope: !1567, inlinedAt: !1575)
!1577 = !DILocation(line: 243, column: 16, scope: !1567, inlinedAt: !1575)
!1578 = !DILocation(line: 244, column: 10, scope: !1579, inlinedAt: !1575)
!1579 = distinct !DILexicalBlock(scope: !1567, file: !1, line: 244, column: 7)
!1580 = !{!377, !381, i64 92}
!1581 = !DILocation(line: 244, column: 18, scope: !1579, inlinedAt: !1575)
!1582 = !DILocation(line: 244, column: 7, scope: !1567, inlinedAt: !1575)
!1583 = !DILocation(line: 304, column: 55, scope: !1308)
!1584 = !DILocation(line: 242, column: 17, scope: !1567, inlinedAt: !1575)
!1585 = !DILocation(line: 242, column: 7, scope: !1567, inlinedAt: !1575)
!1586 = !DILocation(line: 246, column: 8, scope: !1587, inlinedAt: !1575)
!1587 = distinct !DILexicalBlock(scope: !1567, file: !1, line: 246, column: 7)
!1588 = !DILocation(line: 246, column: 17, scope: !1587, inlinedAt: !1575)
!1589 = !DILocation(line: 246, column: 49, scope: !1587, inlinedAt: !1575)
!1590 = !DILocation(line: 246, column: 30, scope: !1587, inlinedAt: !1575)
!1591 = !DILocation(line: 247, column: 5, scope: !1587, inlinedAt: !1575)
!1592 = !DILocation(line: 249, column: 8, scope: !1593, inlinedAt: !1575)
!1593 = distinct !DILexicalBlock(scope: !1567, file: !1, line: 249, column: 7)
!1594 = !DILocation(line: 249, column: 21, scope: !1593, inlinedAt: !1575)
!1595 = !{!377, !381, i64 88}
!1596 = !DILocation(line: 249, column: 16, scope: !1593, inlinedAt: !1575)
!1597 = !DILocation(line: 250, column: 40, scope: !1593, inlinedAt: !1575)
!1598 = !DILocation(line: 249, column: 31, scope: !1593, inlinedAt: !1575)
!1599 = !DILocation(line: 251, column: 5, scope: !1593, inlinedAt: !1575)
!1600 = !DILocation(line: 253, column: 1, scope: !1567, inlinedAt: !1575)
!1601 = !DILocation(line: 270, column: 1, scope: !1502, inlinedAt: !1511)
!1602 = !DILocation(line: 304, column: 51, scope: !1308)
!1603 = !DILocation(line: 304, column: 49, scope: !1308)
!1604 = !DILocation(line: 304, column: 32, scope: !1308)
!1605 = !DILocation(line: 305, column: 57, scope: !1308)
!1606 = !DILocation(line: 305, column: 53, scope: !1308)
!1607 = !DILocation(line: 305, column: 51, scope: !1308)
!1608 = !DILocation(line: 304, column: 65, scope: !1308)
!1609 = !DILocation(line: 308, column: 18, scope: !1310)
!1610 = !DILocation(line: 308, column: 14, scope: !1310)
!1611 = !DILocation(line: 309, column: 20, scope: !1310)
!1612 = !{!1613, !378, i64 104}
!1613 = !{!"Proto", !378, i64 0, !379, i64 8, !379, i64 9, !378, i64 16, !378, i64 24, !378, i64 32, !378, i64 40, !378, i64 48, !378, i64 56, !378, i64 64, !381, i64 72, !381, i64 76, !381, i64 80, !381, i64 84, !381, i64 88, !381, i64 92, !381, i64 96, !381, i64 100, !378, i64 104, !379, i64 112, !379, i64 113, !379, i64 114, !379, i64 115}
!1614 = !DILocation(line: 309, column: 15, scope: !1310)
!1615 = !DILocalVariable(name: "g", arg: 1, scope: !1616, file: !1, line: 203, type: !161)
!1616 = distinct !DISubprogram(name: "traverseproto", scope: !1, file: !1, line: 203, type: !1617, isLocal: true, isDefinition: true, scopeLine: 203, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1619)
!1617 = !DISubroutineType(types: !1618)
!1618 = !{null, !161, !1311}
!1619 = !{!1615, !1620, !1621}
!1620 = !DILocalVariable(name: "f", arg: 2, scope: !1616, file: !1, line: 203, type: !1311)
!1621 = !DILocalVariable(name: "i", scope: !1616, file: !1, line: 204, type: !105)
!1622 = !DILocation(line: 203, column: 42, scope: !1616, inlinedAt: !1623)
!1623 = distinct !DILocation(line: 310, column: 7, scope: !1310)
!1624 = !DILocation(line: 203, column: 52, scope: !1616, inlinedAt: !1623)
!1625 = !DILocation(line: 205, column: 10, scope: !1626, inlinedAt: !1623)
!1626 = distinct !DILexicalBlock(scope: !1616, file: !1, line: 205, column: 7)
!1627 = !{!1613, !378, i64 64}
!1628 = !DILocation(line: 205, column: 7, scope: !1626, inlinedAt: !1623)
!1629 = !DILocation(line: 205, column: 7, scope: !1616, inlinedAt: !1623)
!1630 = !DILocation(line: 205, column: 18, scope: !1626, inlinedAt: !1623)
!1631 = !DILocation(line: 204, column: 7, scope: !1616, inlinedAt: !1623)
!1632 = !DILocation(line: 206, column: 18, scope: !1633, inlinedAt: !1623)
!1633 = distinct !DILexicalBlock(scope: !1634, file: !1, line: 206, column: 3)
!1634 = distinct !DILexicalBlock(scope: !1616, file: !1, line: 206, column: 3)
!1635 = !{!1613, !381, i64 76}
!1636 = !DILocation(line: 206, column: 14, scope: !1633, inlinedAt: !1623)
!1637 = !DILocation(line: 206, column: 3, scope: !1634, inlinedAt: !1623)
!1638 = !DILocation(line: 208, column: 18, scope: !1639, inlinedAt: !1623)
!1639 = distinct !DILexicalBlock(scope: !1640, file: !1, line: 208, column: 3)
!1640 = distinct !DILexicalBlock(scope: !1616, file: !1, line: 208, column: 3)
!1641 = !{!1613, !381, i64 72}
!1642 = !DILocation(line: 208, column: 14, scope: !1639, inlinedAt: !1623)
!1643 = !DILocation(line: 208, column: 3, scope: !1640, inlinedAt: !1623)
!1644 = !DILocation(line: 207, column: 5, scope: !1645, inlinedAt: !1623)
!1645 = distinct !DILexicalBlock(scope: !1646, file: !1, line: 207, column: 5)
!1646 = distinct !DILexicalBlock(scope: !1633, file: !1, line: 207, column: 5)
!1647 = !{!1613, !378, i64 16}
!1648 = !DILocation(line: 207, column: 5, scope: !1646, inlinedAt: !1623)
!1649 = !DILocation(line: 206, column: 26, scope: !1633, inlinedAt: !1623)
!1650 = distinct !{!1650, !1651, !1652}
!1651 = !DILocation(line: 206, column: 3, scope: !1634)
!1652 = !DILocation(line: 207, column: 5, scope: !1634)
!1653 = !DILocation(line: 212, column: 18, scope: !1654, inlinedAt: !1623)
!1654 = distinct !DILexicalBlock(scope: !1655, file: !1, line: 212, column: 3)
!1655 = distinct !DILexicalBlock(scope: !1616, file: !1, line: 212, column: 3)
!1656 = !{!1613, !381, i64 88}
!1657 = !DILocation(line: 212, column: 14, scope: !1654, inlinedAt: !1623)
!1658 = !DILocation(line: 212, column: 3, scope: !1655, inlinedAt: !1623)
!1659 = !DILocation(line: 209, column: 12, scope: !1660, inlinedAt: !1623)
!1660 = distinct !DILexicalBlock(scope: !1661, file: !1, line: 209, column: 9)
!1661 = distinct !DILexicalBlock(scope: !1639, file: !1, line: 208, column: 37)
!1662 = !{!1613, !378, i64 56}
!1663 = !DILocation(line: 209, column: 9, scope: !1660, inlinedAt: !1623)
!1664 = !DILocation(line: 209, column: 9, scope: !1661, inlinedAt: !1623)
!1665 = !DILocation(line: 210, column: 7, scope: !1660, inlinedAt: !1623)
!1666 = !DILocation(line: 208, column: 33, scope: !1639, inlinedAt: !1623)
!1667 = distinct !{!1667, !1668, !1669}
!1668 = !DILocation(line: 208, column: 3, scope: !1640)
!1669 = !DILocation(line: 211, column: 3, scope: !1640)
!1670 = !DILocation(line: 216, column: 18, scope: !1671, inlinedAt: !1623)
!1671 = distinct !DILexicalBlock(scope: !1672, file: !1, line: 216, column: 3)
!1672 = distinct !DILexicalBlock(scope: !1616, file: !1, line: 216, column: 3)
!1673 = !{!1613, !381, i64 92}
!1674 = !DILocation(line: 216, column: 14, scope: !1671, inlinedAt: !1623)
!1675 = !DILocation(line: 216, column: 3, scope: !1672, inlinedAt: !1623)
!1676 = !DILocation(line: 315, column: 47, scope: !1310)
!1677 = !DILocation(line: 213, column: 12, scope: !1678, inlinedAt: !1623)
!1678 = distinct !DILexicalBlock(scope: !1679, file: !1, line: 213, column: 9)
!1679 = distinct !DILexicalBlock(scope: !1654, file: !1, line: 212, column: 30)
!1680 = !{!1613, !378, i64 32}
!1681 = !DILocation(line: 213, column: 9, scope: !1678, inlinedAt: !1623)
!1682 = !DILocation(line: 213, column: 9, scope: !1679, inlinedAt: !1623)
!1683 = !DILocation(line: 214, column: 7, scope: !1684, inlinedAt: !1623)
!1684 = distinct !DILexicalBlock(scope: !1685, file: !1, line: 214, column: 7)
!1685 = distinct !DILexicalBlock(scope: !1678, file: !1, line: 214, column: 7)
!1686 = !DILocation(line: 214, column: 7, scope: !1685, inlinedAt: !1623)
!1687 = !DILocation(line: 212, column: 26, scope: !1654, inlinedAt: !1623)
!1688 = distinct !{!1688, !1689, !1690}
!1689 = !DILocation(line: 212, column: 3, scope: !1655)
!1690 = !DILocation(line: 215, column: 3, scope: !1655)
!1691 = !DILocation(line: 217, column: 12, scope: !1692, inlinedAt: !1623)
!1692 = distinct !DILexicalBlock(scope: !1693, file: !1, line: 217, column: 9)
!1693 = distinct !DILexicalBlock(scope: !1671, file: !1, line: 216, column: 36)
!1694 = !{!1613, !378, i64 48}
!1695 = !DILocation(line: 217, column: 23, scope: !1692, inlinedAt: !1623)
!1696 = !{!1697, !378, i64 0}
!1697 = !{!"LocVar", !378, i64 0, !381, i64 8, !381, i64 12}
!1698 = !DILocation(line: 217, column: 9, scope: !1692, inlinedAt: !1623)
!1699 = !DILocation(line: 217, column: 9, scope: !1693, inlinedAt: !1623)
!1700 = !DILocation(line: 218, column: 7, scope: !1692, inlinedAt: !1623)
!1701 = !DILocation(line: 216, column: 32, scope: !1671, inlinedAt: !1623)
!1702 = distinct !{!1702, !1703, !1704}
!1703 = !DILocation(line: 216, column: 3, scope: !1672)
!1704 = !DILocation(line: 219, column: 3, scope: !1672)
!1705 = !DILocation(line: 312, column: 51, scope: !1310)
!1706 = !DILocation(line: 220, column: 1, scope: !1616, inlinedAt: !1623)
!1707 = !DILocation(line: 311, column: 55, scope: !1310)
!1708 = !{!1613, !381, i64 80}
!1709 = !DILocation(line: 311, column: 52, scope: !1310)
!1710 = !DILocation(line: 312, column: 48, scope: !1310)
!1711 = !DILocation(line: 313, column: 50, scope: !1310)
!1712 = !DILocation(line: 313, column: 47, scope: !1310)
!1713 = !DILocation(line: 314, column: 47, scope: !1310)
!1714 = !{!1613, !381, i64 84}
!1715 = !DILocation(line: 314, column: 44, scope: !1310)
!1716 = !DILocation(line: 316, column: 53, scope: !1310)
!1717 = !DILocation(line: 316, column: 50, scope: !1310)
!1718 = !DILocation(line: 313, column: 56, scope: !1310)
!1719 = !DILocation(line: 314, column: 60, scope: !1310)
!1720 = !DILocation(line: 315, column: 62, scope: !1310)
!1721 = !DILocation(line: 0, scope: !1301)
!1722 = !DILocation(line: 320, column: 1, scope: !1294)
!1723 = distinct !DISubprogram(name: "markmt", scope: !1, file: !1, line: 493, type: !733, isLocal: true, isDefinition: true, scopeLine: 493, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1724)
!1724 = !{!1725, !1726}
!1725 = !DILocalVariable(name: "g", arg: 1, scope: !1723, file: !1, line: 493, type: !161)
!1726 = !DILocalVariable(name: "i", scope: !1723, file: !1, line: 494, type: !105)
!1727 = !DILocation(line: 493, column: 35, scope: !1723)
!1728 = !DILocation(line: 494, column: 7, scope: !1723)
!1729 = !DILocation(line: 496, column: 9, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1731, file: !1, line: 496, column: 9)
!1731 = distinct !DILexicalBlock(scope: !1732, file: !1, line: 495, column: 3)
!1732 = distinct !DILexicalBlock(scope: !1723, file: !1, line: 495, column: 3)
!1733 = !DILocation(line: 496, column: 9, scope: !1731)
!1734 = !DILocation(line: 496, column: 19, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1736, file: !1, line: 496, column: 19)
!1736 = distinct !DILexicalBlock(scope: !1730, file: !1, line: 496, column: 19)
!1737 = !DILocation(line: 496, column: 19, scope: !1736)
!1738 = !DILocation(line: 497, column: 1, scope: !1723)
