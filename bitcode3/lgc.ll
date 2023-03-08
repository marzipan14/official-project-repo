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
  br i1 %10, label %81, label %11, !dbg !568

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 6
  %13 = bitcast %union.GCObject** %12 to i64*
  br label %14, !dbg !568

; <label>:14:                                     ; preds = %11, %77
  %15 = phi %union.GCObject* [ %9, %11 ], [ %79, %77 ]
  %16 = phi %union.GCObject** [ %1, %11 ], [ %78, %77 ]
  %17 = phi i64 [ %2, %11 ], [ %18, %77 ]
  %18 = add i64 %17, -1, !dbg !569
  %19 = icmp eq i64 %17, 0, !dbg !570
  br i1 %19, label %81, label %20, !dbg !571

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
  br label %77, !dbg !586

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

; <label>:77:                                     ; preds = %70, %59, %57, %55, %53, %51, %49, %47, %33
  %78 = phi %union.GCObject** [ %38, %33 ], [ %16, %47 ], [ %16, %49 ], [ %16, %51 ], [ %16, %53 ], [ %16, %55 ], [ %16, %57 ], [ %16, %59 ], [ %16, %70 ]
  %79 = load %union.GCObject*, %union.GCObject** %78, align 8, !dbg !565, !tbaa !396
  %80 = icmp eq %union.GCObject* %79, null, !dbg !567
  br i1 %80, label %81, label %14, !dbg !568, !llvm.loop !636

; <label>:81:                                     ; preds = %77, %14, %3
  %82 = phi %union.GCObject** [ %1, %3 ], [ %16, %14 ], [ %78, %77 ]
  ret %union.GCObject** %82, !dbg !638
}

; Function Attrs: noredzone nounwind
define hidden void @luaC_step(%struct.lua_State*) local_unnamed_addr #0 !dbg !639 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !646
  %3 = load %struct.global_State*, %struct.global_State** %2, align 8, !dbg !646, !tbaa !376
  %4 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 18, !dbg !648
  %5 = load i32, i32* %4, align 4, !dbg !648, !tbaa !649
  %6 = mul i32 %5, 10, !dbg !650
  %7 = zext i32 %6 to i64, !dbg !651
  %8 = icmp eq i32 %6, 0, !dbg !653
  %9 = select i1 %8, i64 9223372036854775806, i64 %7, !dbg !655
  %10 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 14, !dbg !656
  %11 = load i64, i64* %10, align 8, !dbg !656, !tbaa !512
  %12 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 13, !dbg !657
  %13 = load i64, i64* %12, align 8, !dbg !657, !tbaa !508
  %14 = sub i64 %11, %13, !dbg !658
  %15 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 16, !dbg !659
  %16 = load i64, i64* %15, align 8, !dbg !660, !tbaa !661
  %17 = add i64 %14, %16, !dbg !660
  store i64 %17, i64* %15, align 8, !dbg !660, !tbaa !661
  %18 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 4
  br label %19, !dbg !662

; <label>:19:                                     ; preds = %19, %1
  %20 = phi i64 [ %9, %1 ], [ %22, %19 ], !dbg !663
  %21 = tail call fastcc i64 @singlestep(%struct.lua_State* %0) #4, !dbg !665
  %22 = sub nsw i64 %20, %21, !dbg !666
  %23 = load i8, i8* %18, align 1, !dbg !667, !tbaa !669
  %24 = icmp ne i8 %23, 0, !dbg !670
  %25 = icmp sgt i64 %22, 0, !dbg !671
  %26 = and i1 %24, %25, !dbg !672
  br i1 %26, label %19, label %27, !dbg !672, !llvm.loop !673

; <label>:27:                                     ; preds = %19
  br i1 %24, label %28, label %37, !dbg !675

; <label>:28:                                     ; preds = %27
  %29 = load i64, i64* %15, align 8, !dbg !676, !tbaa !661
  %30 = icmp ult i64 %29, 1024, !dbg !680
  br i1 %30, label %31, label %34, !dbg !681

; <label>:31:                                     ; preds = %28
  %32 = load i64, i64* %10, align 8, !dbg !682, !tbaa !512
  %33 = add i64 %32, 1024, !dbg !683
  br label %45, !dbg !684

; <label>:34:                                     ; preds = %28
  %35 = add i64 %29, -1024, !dbg !685
  store i64 %35, i64* %15, align 8, !dbg !685, !tbaa !661
  %36 = load i64, i64* %10, align 8, !dbg !687, !tbaa !512
  br label %45

; <label>:37:                                     ; preds = %27
  %38 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 15, !dbg !688
  %39 = load i64, i64* %38, align 8, !dbg !688, !tbaa !690
  %40 = udiv i64 %39, 100, !dbg !688
  %41 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 17, !dbg !688
  %42 = load i32, i32* %41, align 8, !dbg !688, !tbaa !691
  %43 = sext i32 %42 to i64, !dbg !688
  %44 = mul i64 %40, %43, !dbg !688
  br label %45

; <label>:45:                                     ; preds = %31, %34, %37
  %46 = phi i64 [ %33, %31 ], [ %36, %34 ], [ %44, %37 ]
  store i64 %46, i64* %12, align 8, !dbg !692, !tbaa !508
  ret void, !dbg !693
}

; Function Attrs: noredzone nounwind
define internal fastcc i64 @singlestep(%struct.lua_State*) unnamed_addr #0 !dbg !694 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !706
  %3 = load %struct.global_State*, %struct.global_State** %2, align 8, !dbg !706, !tbaa !376
  %4 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 4, !dbg !708
  %5 = load i8, i8* %4, align 1, !dbg !708, !tbaa !669
  switch i8 %5, label %305 [
    i8 0, label %6
    i8 1, label %7
    i8 2, label %225
    i8 3, label %247
    i8 4, label %293
  ], !dbg !709

; <label>:6:                                      ; preds = %1
  tail call fastcc void @markroot(%struct.lua_State* nonnull %0) #4, !dbg !710
  br label %305, !dbg !712

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 8, !dbg !713
  %9 = load %union.GCObject*, %union.GCObject** %8, align 8, !dbg !713, !tbaa !716
  %10 = icmp eq %union.GCObject* %9, null, !dbg !717
  br i1 %10, label %13, label %11, !dbg !718

; <label>:11:                                     ; preds = %7
  %12 = tail call fastcc i64 @propagatemark(%struct.global_State* nonnull %3) #4, !dbg !719
  br label %305, !dbg !720

; <label>:13:                                     ; preds = %7
  %14 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 22, !dbg !738
  %15 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 22, i32 4, i32 0, i32 1, !dbg !740
  %16 = bitcast i32* %15 to %struct.UpVal**, !dbg !742
  %17 = load %struct.UpVal*, %struct.UpVal** %16, align 8, !dbg !742, !tbaa !403
  %18 = icmp eq %struct.UpVal* %17, %14, !dbg !744
  br i1 %18, label %51, label %19, !dbg !745

; <label>:19:                                     ; preds = %13, %39
  %20 = phi %struct.UpVal* [ %42, %39 ], [ %17, %13 ]
  %21 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %20, i64 0, i32 2, !dbg !746
  %22 = load i8, i8* %21, align 1, !dbg !746, !tbaa !403
  %23 = and i8 %22, 7, !dbg !746
  %24 = icmp eq i8 %23, 0, !dbg !746
  br i1 %24, label %25, label %39, !dbg !746

; <label>:25:                                     ; preds = %19
  %26 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %20, i64 0, i32 3, !dbg !749
  %27 = load %struct.lua_TValue*, %struct.lua_TValue** %26, align 8, !dbg !749, !tbaa !752
  %28 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %27, i64 0, i32 1, !dbg !749
  %29 = load i32, i32* %28, align 8, !dbg !749, !tbaa !517
  %30 = icmp sgt i32 %29, 3, !dbg !749
  br i1 %30, label %31, label %39, !dbg !749

; <label>:31:                                     ; preds = %25
  %32 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %27, i64 0, i32 0, i32 0, !dbg !749
  %33 = load %union.GCObject*, %union.GCObject** %32, align 8, !dbg !749, !tbaa !403
  %34 = getelementptr inbounds %union.GCObject, %union.GCObject* %33, i64 0, i32 0, i32 2, !dbg !749
  %35 = load i8, i8* %34, align 1, !dbg !749, !tbaa !403
  %36 = and i8 %35, 3, !dbg !749
  %37 = icmp eq i8 %36, 0, !dbg !749
  br i1 %37, label %39, label %38, !dbg !753

; <label>:38:                                     ; preds = %31
  tail call fastcc void @reallymarkobject(%struct.global_State* %3, %union.GCObject* %33) #3, !dbg !749
  br label %39, !dbg !749

; <label>:39:                                     ; preds = %38, %31, %25, %19
  %40 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %20, i64 0, i32 4, i32 0, i32 1, !dbg !754
  %41 = bitcast i32* %40 to %struct.UpVal**, !dbg !742
  %42 = load %struct.UpVal*, %struct.UpVal** %41, align 8, !dbg !742, !tbaa !403
  %43 = icmp eq %struct.UpVal* %42, %14, !dbg !744
  br i1 %43, label %44, label %19, !dbg !745, !llvm.loop !755

; <label>:44:                                     ; preds = %39
  %45 = load %union.GCObject*, %union.GCObject** %8, align 8, !dbg !758, !tbaa !716
  %46 = icmp eq %union.GCObject* %45, null, !dbg !758
  br i1 %46, label %51, label %47, !dbg !768

; <label>:47:                                     ; preds = %44, %47
  %48 = tail call fastcc i64 @propagatemark(%struct.global_State* nonnull %3) #3, !dbg !769
  %49 = load %union.GCObject*, %union.GCObject** %8, align 8, !dbg !758, !tbaa !716
  %50 = icmp eq %union.GCObject* %49, null, !dbg !768
  br i1 %50, label %51, label %47, !dbg !768, !llvm.loop !770

; <label>:51:                                     ; preds = %47, %13, %44
  %52 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 10, !dbg !773
  %53 = bitcast %union.GCObject** %52 to i64*, !dbg !773
  %54 = load i64, i64* %53, align 8, !dbg !773, !tbaa !774
  %55 = bitcast %union.GCObject** %8 to i64*, !dbg !775
  store i64 %54, i64* %55, align 8, !dbg !775, !tbaa !716
  store %union.GCObject* null, %union.GCObject** %52, align 8, !dbg !776, !tbaa !774
  %56 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 2, !dbg !777
  %57 = load i8, i8* %56, align 1, !dbg !777, !tbaa !403
  %58 = and i8 %57, 3, !dbg !777
  %59 = icmp eq i8 %58, 0, !dbg !777
  br i1 %59, label %62, label %60, !dbg !780

; <label>:60:                                     ; preds = %51
  %61 = bitcast %struct.lua_State* %0 to %union.GCObject*, !dbg !777
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %3, %union.GCObject* %61) #3, !dbg !777
  br label %62, !dbg !777

; <label>:62:                                     ; preds = %60, %51
  tail call fastcc void @markmt(%struct.global_State* nonnull %3) #3, !dbg !781
  %63 = load %union.GCObject*, %union.GCObject** %8, align 8, !dbg !785, !tbaa !716
  %64 = icmp eq %union.GCObject* %63, null, !dbg !786
  br i1 %64, label %69, label %65, !dbg !786

; <label>:65:                                     ; preds = %62, %65
  %66 = tail call fastcc i64 @propagatemark(%struct.global_State* nonnull %3) #3, !dbg !787
  %67 = load %union.GCObject*, %union.GCObject** %8, align 8, !dbg !785, !tbaa !716
  %68 = icmp eq %union.GCObject* %67, null, !dbg !786
  br i1 %68, label %69, label %65, !dbg !786, !llvm.loop !770

; <label>:69:                                     ; preds = %65, %62
  %70 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 9, !dbg !788
  %71 = bitcast %union.GCObject** %70 to i64*, !dbg !788
  %72 = load i64, i64* %71, align 8, !dbg !788, !tbaa !789
  store i64 %72, i64* %55, align 8, !dbg !790, !tbaa !716
  store %union.GCObject* null, %union.GCObject** %70, align 8, !dbg !791, !tbaa !789
  %73 = icmp eq i64 %72, 0, !dbg !795
  br i1 %73, label %78, label %74, !dbg !795

; <label>:74:                                     ; preds = %69, %74
  %75 = tail call fastcc i64 @propagatemark(%struct.global_State* nonnull %3) #3, !dbg !796
  %76 = load %union.GCObject*, %union.GCObject** %8, align 8, !dbg !797, !tbaa !716
  %77 = icmp eq %union.GCObject* %76, null, !dbg !795
  br i1 %77, label %78, label %74, !dbg !795, !llvm.loop !770

; <label>:78:                                     ; preds = %74, %69
  %79 = tail call i64 @luaC_separateudata(%struct.lua_State* %0, i32 0) #3, !dbg !798
  %80 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 11, !dbg !806
  %81 = load %union.GCObject*, %union.GCObject** %80, align 8, !dbg !806, !tbaa !426
  %82 = icmp eq %union.GCObject* %81, null, !dbg !808
  br i1 %82, label %97, label %83, !dbg !810

; <label>:83:                                     ; preds = %78
  %84 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 3
  br label %85, !dbg !811

; <label>:85:                                     ; preds = %85, %83
  %86 = phi %union.GCObject* [ %88, %85 ], [ %81, %83 ], !dbg !814
  %87 = getelementptr inbounds %union.GCObject, %union.GCObject* %86, i64 0, i32 0, i32 0, !dbg !811
  %88 = load %union.GCObject*, %union.GCObject** %87, align 8, !dbg !811, !tbaa !403
  %89 = getelementptr inbounds %union.GCObject, %union.GCObject* %88, i64 0, i32 0, i32 2, !dbg !815
  %90 = load i8, i8* %89, align 1, !dbg !815, !tbaa !403
  %91 = and i8 %90, -8, !dbg !815
  %92 = load i8, i8* %84, align 8, !dbg !815, !tbaa !499
  %93 = and i8 %92, 3, !dbg !815
  %94 = or i8 %93, %91, !dbg !815
  store i8 %94, i8* %89, align 1, !dbg !815, !tbaa !403
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %3, %union.GCObject* %88) #3, !dbg !816
  %95 = load %union.GCObject*, %union.GCObject** %80, align 8, !dbg !817, !tbaa !426
  %96 = icmp eq %union.GCObject* %88, %95, !dbg !818
  br i1 %96, label %97, label %85, !dbg !819, !llvm.loop !820

; <label>:97:                                     ; preds = %85, %78
  %98 = load %union.GCObject*, %union.GCObject** %8, align 8, !dbg !826, !tbaa !716
  %99 = icmp eq %union.GCObject* %98, null, !dbg !827
  br i1 %99, label %106, label %100, !dbg !827

; <label>:100:                                    ; preds = %97, %100
  %101 = phi i64 [ %103, %100 ], [ 0, %97 ]
  %102 = tail call fastcc i64 @propagatemark(%struct.global_State* nonnull %3) #3, !dbg !828
  %103 = add i64 %102, %101, !dbg !829
  %104 = load %union.GCObject*, %union.GCObject** %8, align 8, !dbg !826, !tbaa !716
  %105 = icmp eq %union.GCObject* %104, null, !dbg !827
  br i1 %105, label %106, label %100, !dbg !827, !llvm.loop !770

; <label>:106:                                    ; preds = %100, %97
  %107 = phi i64 [ 0, %97 ], [ %103, %100 ], !dbg !830
  %108 = load %union.GCObject*, %union.GCObject** %52, align 8, !dbg !831, !tbaa !774
  %109 = icmp eq %union.GCObject* %108, null, !dbg !850
  br i1 %109, label %213, label %110, !dbg !850

; <label>:110:                                    ; preds = %106, %208
  %111 = phi %union.GCObject* [ %211, %208 ], [ %108, %106 ]
  %112 = bitcast %union.GCObject* %111 to %struct.Table*, !dbg !851
  %113 = getelementptr inbounds %union.GCObject, %union.GCObject* %111, i64 0, i32 0, i32 9, !dbg !853
  %114 = bitcast %struct.lua_TValue** %113 to i32*, !dbg !853
  %115 = load i32, i32* %114, align 8, !dbg !853, !tbaa !854
  %116 = getelementptr inbounds %union.GCObject, %union.GCObject* %111, i64 0, i32 0, i32 2, !dbg !856
  %117 = load i8, i8* %116, align 1, !dbg !856, !tbaa !857
  %118 = and i8 %117, 16, !dbg !856
  %119 = icmp eq i8 %118, 0, !dbg !856
  %120 = icmp eq i32 %115, 0, !dbg !858
  %121 = or i1 %120, %119, !dbg !859
  br i1 %121, label %151, label %122, !dbg !859

; <label>:122:                                    ; preds = %110
  %123 = getelementptr inbounds %union.GCObject, %union.GCObject* %111, i64 0, i32 0, i32 5
  %124 = sext i32 %115 to i64, !dbg !858
  br label %125, !dbg !858

; <label>:125:                                    ; preds = %149, %122
  %126 = phi i64 [ %124, %122 ], [ %127, %149 ]
  %127 = add nsw i64 %126, -1, !dbg !860
  %128 = load %struct.lua_TValue*, %struct.lua_TValue** %123, align 8, !dbg !861, !tbaa !862
  %129 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %128, i64 %127, i32 1, !dbg !872
  %130 = load i32, i32* %129, align 8, !dbg !872, !tbaa !517
  %131 = icmp sgt i32 %130, 3, !dbg !872
  br i1 %131, label %132, label %149, !dbg !874

; <label>:132:                                    ; preds = %125
  %133 = icmp eq i32 %130, 4, !dbg !875
  %134 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %128, i64 %127, i32 0, i32 0, !dbg !877
  %135 = load %union.GCObject*, %union.GCObject** %134, align 8, !dbg !877, !tbaa !403
  %136 = getelementptr inbounds %union.GCObject, %union.GCObject* %135, i64 0, i32 0, i32 2, !dbg !877
  %137 = load i8, i8* %136, align 1, !dbg !877, !tbaa !403
  br i1 %133, label %138, label %140, !dbg !878

; <label>:138:                                    ; preds = %132
  %139 = and i8 %137, -4, !dbg !879
  store i8 %139, i8* %136, align 1, !dbg !879, !tbaa !403
  br label %149, !dbg !881

; <label>:140:                                    ; preds = %132
  %141 = and i8 %137, 3, !dbg !882
  %142 = icmp eq i8 %141, 0, !dbg !882
  br i1 %142, label %143, label %148, !dbg !883

; <label>:143:                                    ; preds = %140
  %144 = icmp ne i32 %130, 7, !dbg !884
  %145 = and i8 %137, 8
  %146 = icmp eq i8 %145, 0, !dbg !885
  %147 = or i1 %144, %146, !dbg !886
  br i1 %147, label %149, label %148, !dbg !886

; <label>:148:                                    ; preds = %143, %140
  store i32 0, i32* %129, align 8, !dbg !887, !tbaa !517
  br label %149, !dbg !887

; <label>:149:                                    ; preds = %148, %143, %138, %125
  %150 = icmp eq i64 %127, 0
  br i1 %150, label %151, label %125, !dbg !858, !llvm.loop !888

; <label>:151:                                    ; preds = %149, %110
  %152 = getelementptr inbounds %struct.Table, %struct.Table* %112, i64 0, i32 4, !dbg !891
  %153 = load i8, i8* %152, align 1, !dbg !891, !tbaa !892
  %154 = zext i8 %153 to i32, !dbg !891
  %155 = shl nsw i32 -1, %154, !dbg !893
  %156 = xor i32 %155, -1, !dbg !893
  %157 = getelementptr inbounds %union.GCObject, %union.GCObject* %111, i64 0, i32 0, i32 6
  %158 = bitcast %struct.global_State** %157 to %struct.Node**
  %159 = sext i32 %156 to i64, !dbg !894
  br label %160, !dbg !894

; <label>:160:                                    ; preds = %205, %151
  %161 = phi i64 [ %159, %151 ], [ %206, %205 ]
  %162 = load %struct.Node*, %struct.Node** %158, align 8, !dbg !895, !tbaa !896
  %163 = getelementptr inbounds %struct.Node, %struct.Node* %162, i64 %161, i32 0, i32 1, !dbg !897
  %164 = load i32, i32* %163, align 8, !dbg !897, !tbaa !899
  %165 = icmp eq i32 %164, 0, !dbg !897
  br i1 %165, label %205, label %166, !dbg !901

; <label>:166:                                    ; preds = %160
  %167 = getelementptr inbounds %struct.Node, %struct.Node* %162, i64 %161, i32 1, i32 0, i32 1, !dbg !904
  %168 = load i32, i32* %167, align 8, !dbg !904, !tbaa !517
  %169 = icmp sgt i32 %168, 3, !dbg !904
  br i1 %169, label %170, label %182, !dbg !905

; <label>:170:                                    ; preds = %166
  %171 = icmp eq i32 %168, 4, !dbg !906
  %172 = getelementptr inbounds %struct.Node, %struct.Node* %162, i64 %161, i32 1, i32 0, i32 0, i32 0, !dbg !907
  %173 = load %union.GCObject*, %union.GCObject** %172, align 8, !dbg !907, !tbaa !403
  %174 = getelementptr inbounds %union.GCObject, %union.GCObject* %173, i64 0, i32 0, i32 2, !dbg !907
  %175 = load i8, i8* %174, align 1, !dbg !907, !tbaa !403
  br i1 %171, label %176, label %179, !dbg !908

; <label>:176:                                    ; preds = %170
  %177 = and i8 %175, -4, !dbg !909
  store i8 %177, i8* %174, align 1, !dbg !909, !tbaa !403
  %178 = load i32, i32* %163, align 8, !dbg !910, !tbaa !517
  br label %182, !dbg !912

; <label>:179:                                    ; preds = %170
  %180 = and i8 %175, 3, !dbg !913
  %181 = icmp eq i8 %180, 0, !dbg !913
  br i1 %181, label %182, label %201, !dbg !914

; <label>:182:                                    ; preds = %179, %176, %166
  %183 = phi i32 [ %164, %179 ], [ %178, %176 ], [ %164, %166 ], !dbg !910
  %184 = icmp sgt i32 %183, 3, !dbg !910
  br i1 %184, label %185, label %205, !dbg !916

; <label>:185:                                    ; preds = %182
  %186 = icmp eq i32 %183, 4, !dbg !917
  %187 = getelementptr inbounds %struct.Node, %struct.Node* %162, i64 %161, i32 0, i32 0, i32 0, !dbg !918
  %188 = load %union.GCObject*, %union.GCObject** %187, align 8, !dbg !918, !tbaa !403
  %189 = getelementptr inbounds %union.GCObject, %union.GCObject* %188, i64 0, i32 0, i32 2, !dbg !918
  %190 = load i8, i8* %189, align 1, !dbg !918, !tbaa !403
  br i1 %186, label %191, label %193, !dbg !919

; <label>:191:                                    ; preds = %185
  %192 = and i8 %190, -4, !dbg !920
  store i8 %192, i8* %189, align 1, !dbg !920, !tbaa !403
  br label %205, !dbg !921

; <label>:193:                                    ; preds = %185
  %194 = and i8 %190, 3, !dbg !922
  %195 = icmp eq i8 %194, 0, !dbg !922
  br i1 %195, label %196, label %201, !dbg !923

; <label>:196:                                    ; preds = %193
  %197 = icmp ne i32 %183, 7, !dbg !924
  %198 = and i8 %190, 8
  %199 = icmp eq i8 %198, 0, !dbg !925
  %200 = or i1 %197, %199, !dbg !926
  br i1 %200, label %205, label %201, !dbg !926

; <label>:201:                                    ; preds = %196, %193, %179
  store i32 0, i32* %163, align 8, !dbg !927, !tbaa !899
  %202 = load i32, i32* %167, align 8, !dbg !929, !tbaa !403
  %203 = icmp sgt i32 %202, 3, !dbg !929
  br i1 %203, label %204, label %205, !dbg !937

; <label>:204:                                    ; preds = %201
  store i32 11, i32* %167, align 8, !dbg !938, !tbaa !403
  br label %205, !dbg !938

; <label>:205:                                    ; preds = %204, %201, %196, %191, %182, %160
  %206 = add nsw i64 %161, -1, !dbg !893
  %207 = icmp eq i64 %161, 0
  br i1 %207, label %208, label %160, !dbg !894, !llvm.loop !939

; <label>:208:                                    ; preds = %205
  %209 = getelementptr inbounds %union.GCObject, %union.GCObject* %111, i64 0, i32 0, i32 8, !dbg !942
  %210 = bitcast i32** %209 to %union.GCObject**, !dbg !942
  %211 = load %union.GCObject*, %union.GCObject** %210, align 8, !dbg !942, !tbaa !943
  %212 = icmp eq %union.GCObject* %211, null, !dbg !850
  br i1 %212, label %213, label %110, !dbg !850, !llvm.loop !944

; <label>:213:                                    ; preds = %208, %106
  %214 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 3, !dbg !947
  %215 = load i8, i8* %214, align 8, !dbg !947, !tbaa !499
  %216 = xor i8 %215, 3, !dbg !947
  store i8 %216, i8* %214, align 8, !dbg !948, !tbaa !499
  %217 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 5, !dbg !949
  store i32 0, i32* %217, align 4, !dbg !950, !tbaa !951
  %218 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 6, !dbg !952
  %219 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 7, !dbg !953
  store %union.GCObject** %218, %union.GCObject*** %219, align 8, !dbg !954, !tbaa !955
  store i8 2, i8* %4, align 1, !dbg !956, !tbaa !669
  %220 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 14, !dbg !957
  %221 = load i64, i64* %220, align 8, !dbg !957, !tbaa !512
  %222 = add i64 %107, %79, !dbg !958
  %223 = sub i64 %221, %222, !dbg !959
  %224 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 15, !dbg !960
  store i64 %223, i64* %224, align 8, !dbg !961, !tbaa !690
  br label %305, !dbg !962

; <label>:225:                                    ; preds = %1
  %226 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 14, !dbg !963
  %227 = load i64, i64* %226, align 8, !dbg !963, !tbaa !512
  %228 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 0, i32 0, !dbg !965
  %229 = load %union.GCObject**, %union.GCObject*** %228, align 8, !dbg !965, !tbaa !544
  %230 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 5, !dbg !965
  %231 = load i32, i32* %230, align 4, !dbg !965, !tbaa !951
  %232 = add nsw i32 %231, 1, !dbg !965
  store i32 %232, i32* %230, align 4, !dbg !965, !tbaa !951
  %233 = sext i32 %231 to i64, !dbg !965
  %234 = getelementptr inbounds %union.GCObject*, %union.GCObject** %229, i64 %233, !dbg !965
  %235 = tail call fastcc %union.GCObject** @sweeplist(%struct.lua_State* nonnull %0, %union.GCObject** %234, i64 -3) #4, !dbg !965
  %236 = load i32, i32* %230, align 4, !dbg !966, !tbaa !951
  %237 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 0, i32 2, !dbg !968
  %238 = load i32, i32* %237, align 4, !dbg !968, !tbaa !540
  %239 = icmp slt i32 %236, %238, !dbg !969
  br i1 %239, label %241, label %240, !dbg !970

; <label>:240:                                    ; preds = %225
  store i8 3, i8* %4, align 1, !dbg !971, !tbaa !669
  br label %241, !dbg !972

; <label>:241:                                    ; preds = %225, %240
  %242 = load i64, i64* %226, align 8, !dbg !973, !tbaa !512
  %243 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 15, !dbg !974
  %244 = load i64, i64* %243, align 8, !dbg !975, !tbaa !690
  %245 = sub i64 %242, %227, !dbg !975
  %246 = add i64 %245, %244, !dbg !975
  store i64 %246, i64* %243, align 8, !dbg !975, !tbaa !690
  br label %305

; <label>:247:                                    ; preds = %1
  %248 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 14, !dbg !976
  %249 = load i64, i64* %248, align 8, !dbg !976, !tbaa !512
  %250 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 7, !dbg !978
  %251 = load %union.GCObject**, %union.GCObject*** %250, align 8, !dbg !978, !tbaa !955
  %252 = tail call fastcc %union.GCObject** @sweeplist(%struct.lua_State* nonnull %0, %union.GCObject** %251, i64 40) #4, !dbg !979
  store %union.GCObject** %252, %union.GCObject*** %250, align 8, !dbg !980, !tbaa !955
  %253 = load %union.GCObject*, %union.GCObject** %252, align 8, !dbg !981, !tbaa !396
  %254 = icmp eq %union.GCObject* %253, null, !dbg !983
  br i1 %254, label %255, label %287, !dbg !984

; <label>:255:                                    ; preds = %247
  %256 = load %struct.global_State*, %struct.global_State** %2, align 8, !dbg !995, !tbaa !376
  %257 = getelementptr inbounds %struct.global_State, %struct.global_State* %256, i64 0, i32 0, i32 1, !dbg !997
  %258 = load i32, i32* %257, align 8, !dbg !997, !tbaa !630
  %259 = getelementptr inbounds %struct.global_State, %struct.global_State* %256, i64 0, i32 0, i32 2, !dbg !999
  %260 = load i32, i32* %259, align 4, !dbg !999, !tbaa !540
  %261 = sdiv i32 %260, 4, !dbg !999
  %262 = icmp ult i32 %258, %261, !dbg !1000
  %263 = icmp sgt i32 %260, 64, !dbg !1001
  %264 = and i1 %263, %262, !dbg !1002
  br i1 %264, label %265, label %267, !dbg !1002

; <label>:265:                                    ; preds = %255
  %266 = lshr i32 %260, 1
  tail call void @luaS_resize(%struct.lua_State* nonnull %0, i32 %266) #3, !dbg !1003
  br label %267, !dbg !1003

; <label>:267:                                    ; preds = %265, %255
  %268 = getelementptr inbounds %struct.global_State, %struct.global_State* %256, i64 0, i32 12, !dbg !1004
  %269 = getelementptr inbounds %struct.global_State, %struct.global_State* %256, i64 0, i32 12, i32 2, !dbg !1004
  %270 = load i64, i64* %269, align 8, !dbg !1004, !tbaa !1005
  %271 = icmp ugt i64 %270, 64, !dbg !1006
  br i1 %271, label %272, label %286, !dbg !1007

; <label>:272:                                    ; preds = %267
  %273 = lshr i64 %270, 1, !dbg !1008
  %274 = add nuw i64 %273, 1, !dbg !1010
  %275 = icmp ult i64 %274, -2, !dbg !1010
  br i1 %275, label %276, label %280, !dbg !1010

; <label>:276:                                    ; preds = %272
  %277 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %268, i64 0, i32 0, !dbg !1010
  %278 = load i8*, i8** %277, align 8, !dbg !1010, !tbaa !1011
  %279 = tail call i8* @luaM_realloc_(%struct.lua_State* nonnull %0, i8* %278, i64 %270, i64 %273) #3, !dbg !1010
  br label %283, !dbg !1010

; <label>:280:                                    ; preds = %272
  %281 = tail call i8* @luaM_toobig(%struct.lua_State* nonnull %0) #3, !dbg !1010
  %282 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %268, i64 0, i32 0, !dbg !1010
  br label %283, !dbg !1010

; <label>:283:                                    ; preds = %280, %276
  %284 = phi i8** [ %282, %280 ], [ %277, %276 ], !dbg !1010
  %285 = phi i8* [ %281, %280 ], [ %279, %276 ], !dbg !1010
  store i8* %285, i8** %284, align 8, !dbg !1010, !tbaa !1011
  store i64 %273, i64* %269, align 8, !dbg !1010, !tbaa !1005
  br label %286, !dbg !1012

; <label>:286:                                    ; preds = %267, %283
  store i8 4, i8* %4, align 1, !dbg !1013, !tbaa !669
  br label %287, !dbg !1014

; <label>:287:                                    ; preds = %286, %247
  %288 = load i64, i64* %248, align 8, !dbg !1015, !tbaa !512
  %289 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 15, !dbg !1016
  %290 = load i64, i64* %289, align 8, !dbg !1017, !tbaa !690
  %291 = sub i64 %288, %249, !dbg !1017
  %292 = add i64 %291, %290, !dbg !1017
  store i64 %292, i64* %289, align 8, !dbg !1017, !tbaa !690
  br label %305

; <label>:293:                                    ; preds = %1
  %294 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 11, !dbg !1018
  %295 = load %union.GCObject*, %union.GCObject** %294, align 8, !dbg !1018, !tbaa !426
  %296 = icmp eq %union.GCObject* %295, null, !dbg !1021
  br i1 %296, label %303, label %297, !dbg !1022

; <label>:297:                                    ; preds = %293
  tail call fastcc void @GCTM(%struct.lua_State* nonnull %0) #4, !dbg !1023
  %298 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 15, !dbg !1025
  %299 = load i64, i64* %298, align 8, !dbg !1025, !tbaa !690
  %300 = icmp ugt i64 %299, 100, !dbg !1027
  br i1 %300, label %301, label %305, !dbg !1028

; <label>:301:                                    ; preds = %297
  %302 = add i64 %299, -100, !dbg !1029
  store i64 %302, i64* %298, align 8, !dbg !1029, !tbaa !690
  br label %305, !dbg !1030

; <label>:303:                                    ; preds = %293
  store i8 0, i8* %4, align 1, !dbg !1031, !tbaa !669
  %304 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 16, !dbg !1033
  store i64 0, i64* %304, align 8, !dbg !1034, !tbaa !661
  br label %305, !dbg !1035

; <label>:305:                                    ; preds = %1, %297, %301, %303, %287, %241, %213, %11, %6
  %306 = phi i64 [ 0, %303 ], [ 400, %287 ], [ 10, %241 ], [ %12, %11 ], [ 0, %213 ], [ 0, %6 ], [ 100, %301 ], [ 100, %297 ], [ 0, %1 ], !dbg !1036
  ret i64 %306, !dbg !1037
}

; Function Attrs: noredzone nounwind
define hidden void @luaC_fullgc(%struct.lua_State*) local_unnamed_addr #0 !dbg !1038 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1043
  %3 = load %struct.global_State*, %struct.global_State** %2, align 8, !dbg !1043, !tbaa !376
  %4 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 4, !dbg !1045
  %5 = load i8, i8* %4, align 1, !dbg !1045, !tbaa !669
  %6 = icmp ult i8 %5, 2, !dbg !1047
  br i1 %6, label %7, label %14, !dbg !1048

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 5, !dbg !1049
  store i32 0, i32* %8, align 4, !dbg !1051, !tbaa !951
  %9 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 6, !dbg !1052
  %10 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 7, !dbg !1053
  store %union.GCObject** %9, %union.GCObject*** %10, align 8, !dbg !1054, !tbaa !955
  %11 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 8, !dbg !1055
  %12 = bitcast %union.GCObject** %11 to <2 x %union.GCObject*>*, !dbg !1056
  store <2 x %union.GCObject*> zeroinitializer, <2 x %union.GCObject*>* %12, align 8, !dbg !1056, !tbaa !396
  %13 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 10, !dbg !1057
  store %union.GCObject* null, %union.GCObject** %13, align 8, !dbg !1058, !tbaa !774
  store i8 2, i8* %4, align 1, !dbg !1059, !tbaa !669
  br label %16, !dbg !1060

; <label>:14:                                     ; preds = %1
  %15 = icmp eq i8 %5, 4, !dbg !1061
  br i1 %15, label %21, label %16, !dbg !1060

; <label>:16:                                     ; preds = %7, %14
  br label %17, !dbg !1062

; <label>:17:                                     ; preds = %16, %17
  %18 = tail call fastcc i64 @singlestep(%struct.lua_State* %0) #4, !dbg !1062
  %19 = load i8, i8* %4, align 1, !dbg !1064, !tbaa !669
  %20 = icmp eq i8 %19, 4, !dbg !1061
  br i1 %20, label %21, label %17, !dbg !1060, !llvm.loop !1065

; <label>:21:                                     ; preds = %17, %14
  tail call fastcc void @markroot(%struct.lua_State* %0) #4, !dbg !1067
  %22 = load i8, i8* %4, align 1, !dbg !1068, !tbaa !669
  %23 = icmp eq i8 %22, 0, !dbg !1069
  br i1 %23, label %28, label %24, !dbg !1070

; <label>:24:                                     ; preds = %21, %24
  %25 = tail call fastcc i64 @singlestep(%struct.lua_State* %0) #4, !dbg !1071
  %26 = load i8, i8* %4, align 1, !dbg !1068, !tbaa !669
  %27 = icmp eq i8 %26, 0, !dbg !1069
  br i1 %27, label %28, label %24, !dbg !1070, !llvm.loop !1073

; <label>:28:                                     ; preds = %24, %21
  %29 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 15, !dbg !1075
  %30 = load i64, i64* %29, align 8, !dbg !1075, !tbaa !690
  %31 = udiv i64 %30, 100, !dbg !1075
  %32 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 17, !dbg !1075
  %33 = load i32, i32* %32, align 8, !dbg !1075, !tbaa !691
  %34 = sext i32 %33 to i64, !dbg !1075
  %35 = mul i64 %31, %34, !dbg !1075
  %36 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 13, !dbg !1075
  store i64 %35, i64* %36, align 8, !dbg !1075, !tbaa !508
  ret void, !dbg !1076
}

; Function Attrs: noredzone nounwind
define internal fastcc void @markroot(%struct.lua_State* nocapture readonly) unnamed_addr #0 !dbg !1077 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1082
  %3 = load %struct.global_State*, %struct.global_State** %2, align 8, !dbg !1082, !tbaa !376
  %4 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 8, !dbg !1084
  %5 = bitcast %union.GCObject** %4 to <2 x %union.GCObject*>*, !dbg !1085
  store <2 x %union.GCObject*> zeroinitializer, <2 x %union.GCObject*>* %5, align 8, !dbg !1085, !tbaa !396
  %6 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 10, !dbg !1086
  store %union.GCObject* null, %union.GCObject** %6, align 8, !dbg !1087, !tbaa !774
  %7 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 21, !dbg !1088
  %8 = bitcast %struct.lua_State** %7 to %union.GCObject**, !dbg !1088
  %9 = load %union.GCObject*, %union.GCObject** %8, align 8, !dbg !1088, !tbaa !388
  %10 = getelementptr inbounds %union.GCObject, %union.GCObject* %9, i64 0, i32 0, i32 2, !dbg !1088
  %11 = load i8, i8* %10, align 1, !dbg !1088, !tbaa !403
  %12 = and i8 %11, 3, !dbg !1088
  %13 = icmp eq i8 %12, 0, !dbg !1088
  %14 = getelementptr inbounds %union.GCObject, %union.GCObject* %9, i64 0, i32 0, !dbg !1091
  br i1 %13, label %17, label %15, !dbg !1091

; <label>:15:                                     ; preds = %1
  tail call fastcc void @reallymarkobject(%struct.global_State* %3, %union.GCObject* %9) #4, !dbg !1088
  %16 = load %struct.lua_State*, %struct.lua_State** %7, align 8, !dbg !1092, !tbaa !388
  br label %17, !dbg !1088

; <label>:17:                                     ; preds = %1, %15
  %18 = phi %struct.lua_State* [ %14, %1 ], [ %16, %15 ], !dbg !1092
  %19 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %18, i64 0, i32 22, i32 1, !dbg !1092
  %20 = load i32, i32* %19, align 8, !dbg !1092, !tbaa !1095
  %21 = icmp sgt i32 %20, 3, !dbg !1092
  br i1 %21, label %22, label %30, !dbg !1092

; <label>:22:                                     ; preds = %17
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %18, i64 0, i32 22, i32 0, i32 0, !dbg !1092
  %24 = load %union.GCObject*, %union.GCObject** %23, align 8, !dbg !1092, !tbaa !403
  %25 = getelementptr inbounds %union.GCObject, %union.GCObject* %24, i64 0, i32 0, i32 2, !dbg !1092
  %26 = load i8, i8* %25, align 1, !dbg !1092, !tbaa !403
  %27 = and i8 %26, 3, !dbg !1092
  %28 = icmp eq i8 %27, 0, !dbg !1092
  br i1 %28, label %30, label %29, !dbg !1096

; <label>:29:                                     ; preds = %22
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %3, %union.GCObject* %24) #4, !dbg !1092
  br label %30, !dbg !1092

; <label>:30:                                     ; preds = %22, %29, %17
  %31 = load %struct.global_State*, %struct.global_State** %2, align 8, !dbg !1097, !tbaa !376
  %32 = getelementptr inbounds %struct.global_State, %struct.global_State* %31, i64 0, i32 20, i32 1, !dbg !1097
  %33 = load i32, i32* %32, align 8, !dbg !1097, !tbaa !1100
  %34 = icmp sgt i32 %33, 3, !dbg !1097
  br i1 %34, label %35, label %43, !dbg !1097

; <label>:35:                                     ; preds = %30
  %36 = getelementptr inbounds %struct.global_State, %struct.global_State* %31, i64 0, i32 20, i32 0, i32 0, !dbg !1097
  %37 = load %union.GCObject*, %union.GCObject** %36, align 8, !dbg !1097, !tbaa !403
  %38 = getelementptr inbounds %union.GCObject, %union.GCObject* %37, i64 0, i32 0, i32 2, !dbg !1097
  %39 = load i8, i8* %38, align 1, !dbg !1097, !tbaa !403
  %40 = and i8 %39, 3, !dbg !1097
  %41 = icmp eq i8 %40, 0, !dbg !1097
  br i1 %41, label %43, label %42, !dbg !1101

; <label>:42:                                     ; preds = %35
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %3, %union.GCObject* %37) #4, !dbg !1097
  br label %43, !dbg !1097

; <label>:43:                                     ; preds = %35, %42, %30
  tail call fastcc void @markmt(%struct.global_State* nonnull %3) #4, !dbg !1102
  %44 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 4, !dbg !1103
  store i8 1, i8* %44, align 1, !dbg !1104, !tbaa !669
  ret void, !dbg !1105
}

; Function Attrs: noredzone nounwind
define hidden void @luaC_barrierf(%struct.lua_State* nocapture readonly, %union.GCObject* nocapture, %union.GCObject*) local_unnamed_addr #0 !dbg !1106 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1117
  %5 = load %struct.global_State*, %struct.global_State** %4, align 8, !dbg !1117, !tbaa !376
  %6 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 4, !dbg !1119
  %7 = load i8, i8* %6, align 1, !dbg !1119, !tbaa !669
  %8 = icmp eq i8 %7, 1, !dbg !1121
  br i1 %8, label %9, label %10, !dbg !1122

; <label>:9:                                      ; preds = %3
  tail call fastcc void @reallymarkobject(%struct.global_State* %5, %union.GCObject* %2) #4, !dbg !1123
  br label %18, !dbg !1123

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds %union.GCObject, %union.GCObject* %1, i64 0, i32 0, i32 2, !dbg !1124
  %12 = load i8, i8* %11, align 1, !dbg !1124, !tbaa !403
  %13 = and i8 %12, -8, !dbg !1124
  %14 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 3, !dbg !1124
  %15 = load i8, i8* %14, align 8, !dbg !1124, !tbaa !499
  %16 = and i8 %15, 3, !dbg !1124
  %17 = or i8 %16, %13, !dbg !1124
  store i8 %17, i8* %11, align 1, !dbg !1124, !tbaa !403
  br label %18

; <label>:18:                                     ; preds = %10, %9
  ret void, !dbg !1125
}

; Function Attrs: noredzone nounwind
define internal fastcc void @reallymarkobject(%struct.global_State*, %union.GCObject*) unnamed_addr #0 !dbg !1126 {
  %3 = getelementptr inbounds %union.GCObject, %union.GCObject* %1, i64 0, i32 0, i32 2
  %4 = load i8, i8* %3, align 1, !dbg !1137, !tbaa !403
  br label %5

; <label>:5:                                      ; preds = %25, %2
  %6 = phi i8 [ %4, %2 ], [ %30, %25 ], !dbg !1137
  %7 = phi %union.GCObject* [ %1, %2 ], [ %28, %25 ]
  %8 = getelementptr inbounds %union.GCObject, %union.GCObject* %7, i64 0, i32 0, i32 2, !dbg !1137
  %9 = and i8 %6, -4, !dbg !1137
  store i8 %9, i8* %8, align 1, !dbg !1137, !tbaa !403
  %10 = getelementptr inbounds %union.GCObject, %union.GCObject* %7, i64 0, i32 0, i32 1, !dbg !1140
  %11 = load i8, i8* %10, align 8, !dbg !1140, !tbaa !403
  switch i8 %11, label %80 [
    i8 9, label %74
    i8 7, label %12
    i8 10, label %33
    i8 6, label %56
    i8 5, label %62
    i8 8, label %68
  ], !dbg !1141

; <label>:12:                                     ; preds = %5
  %13 = getelementptr inbounds %union.GCObject, %union.GCObject* %7, i64 0, i32 0, i32 4, !dbg !1142
  %14 = bitcast %struct.lua_TValue** %13 to %struct.Table**, !dbg !1142
  %15 = load %struct.Table*, %struct.Table** %14, align 8, !dbg !1142, !tbaa !403
  %16 = or i8 %9, 4, !dbg !1144
  store i8 %16, i8* %8, align 1, !dbg !1144, !tbaa !403
  %17 = icmp eq %struct.Table* %15, null, !dbg !1145
  br i1 %17, label %25, label %18, !dbg !1147

; <label>:18:                                     ; preds = %12
  %19 = getelementptr inbounds %struct.Table, %struct.Table* %15, i64 0, i32 2, !dbg !1148
  %20 = load i8, i8* %19, align 1, !dbg !1148, !tbaa !403
  %21 = and i8 %20, 3, !dbg !1148
  %22 = icmp eq i8 %21, 0, !dbg !1148
  br i1 %22, label %25, label %23, !dbg !1151

; <label>:23:                                     ; preds = %18
  %24 = bitcast %struct.Table* %15 to %union.GCObject*, !dbg !1148
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %union.GCObject* %24) #4, !dbg !1148
  br label %25, !dbg !1148

; <label>:25:                                     ; preds = %18, %12, %23
  %26 = getelementptr inbounds %union.GCObject, %union.GCObject* %7, i64 0, i32 0, i32 5, !dbg !1152
  %27 = bitcast %struct.lua_TValue** %26 to %union.GCObject**, !dbg !1152
  %28 = load %union.GCObject*, %union.GCObject** %27, align 8, !dbg !1152, !tbaa !403
  %29 = getelementptr inbounds %union.GCObject, %union.GCObject* %28, i64 0, i32 0, i32 2, !dbg !1152
  %30 = load i8, i8* %29, align 1, !dbg !1152, !tbaa !403
  %31 = and i8 %30, 3, !dbg !1152
  %32 = icmp eq i8 %31, 0, !dbg !1152
  br i1 %32, label %80, label %5, !dbg !1155

; <label>:33:                                     ; preds = %5
  %34 = getelementptr inbounds %union.GCObject, %union.GCObject* %7, i64 0, i32 0, i32 4, !dbg !1157
  %35 = load %struct.lua_TValue*, %struct.lua_TValue** %34, align 8, !dbg !1157, !tbaa !752
  %36 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %35, i64 0, i32 1, !dbg !1157
  %37 = load i32, i32* %36, align 8, !dbg !1157, !tbaa !517
  %38 = icmp sgt i32 %37, 3, !dbg !1157
  br i1 %38, label %39, label %48, !dbg !1157

; <label>:39:                                     ; preds = %33
  %40 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %35, i64 0, i32 0, i32 0, !dbg !1157
  %41 = load %union.GCObject*, %union.GCObject** %40, align 8, !dbg !1157, !tbaa !403
  %42 = getelementptr inbounds %union.GCObject, %union.GCObject* %41, i64 0, i32 0, i32 2, !dbg !1157
  %43 = load i8, i8* %42, align 1, !dbg !1157, !tbaa !403
  %44 = and i8 %43, 3, !dbg !1157
  %45 = icmp eq i8 %44, 0, !dbg !1157
  br i1 %45, label %48, label %46, !dbg !1160

; <label>:46:                                     ; preds = %39
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %union.GCObject* %41) #4, !dbg !1157
  %47 = load %struct.lua_TValue*, %struct.lua_TValue** %34, align 8, !dbg !1161, !tbaa !752
  br label %48, !dbg !1157

; <label>:48:                                     ; preds = %39, %46, %33
  %49 = phi %struct.lua_TValue* [ %35, %39 ], [ %47, %46 ], [ %35, %33 ], !dbg !1161
  %50 = getelementptr inbounds %union.GCObject, %union.GCObject* %7, i64 0, i32 0, i32 5, !dbg !1163
  %51 = bitcast %struct.lua_TValue** %50 to %struct.lua_TValue*, !dbg !1164
  %52 = icmp eq %struct.lua_TValue* %49, %51, !dbg !1165
  br i1 %52, label %53, label %80, !dbg !1166

; <label>:53:                                     ; preds = %48
  %54 = load i8, i8* %8, align 1, !dbg !1167, !tbaa !403
  %55 = or i8 %54, 4, !dbg !1167
  store i8 %55, i8* %8, align 1, !dbg !1167, !tbaa !403
  br label %80, !dbg !1167

; <label>:56:                                     ; preds = %5
  %57 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 8, !dbg !1168
  %58 = bitcast %union.GCObject** %57 to i64*, !dbg !1168
  %59 = load i64, i64* %58, align 8, !dbg !1168, !tbaa !716
  %60 = getelementptr inbounds %union.GCObject, %union.GCObject* %7, i64 0, i32 0, i32 4, !dbg !1170
  %61 = bitcast %struct.lua_TValue** %60 to i64*, !dbg !1171
  store i64 %59, i64* %61, align 8, !dbg !1171, !tbaa !403
  store %union.GCObject* %7, %union.GCObject** %57, align 8, !dbg !1172, !tbaa !716
  br label %80, !dbg !1173

; <label>:62:                                     ; preds = %5
  %63 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 8, !dbg !1174
  %64 = bitcast %union.GCObject** %63 to i64*, !dbg !1174
  %65 = load i64, i64* %64, align 8, !dbg !1174, !tbaa !716
  %66 = getelementptr inbounds %union.GCObject, %union.GCObject* %7, i64 0, i32 0, i32 8, !dbg !1176
  %67 = bitcast i32** %66 to i64*, !dbg !1177
  store i64 %65, i64* %67, align 8, !dbg !1177, !tbaa !403
  store %union.GCObject* %7, %union.GCObject** %63, align 8, !dbg !1178, !tbaa !716
  br label %80, !dbg !1179

; <label>:68:                                     ; preds = %5
  %69 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 8, !dbg !1180
  %70 = bitcast %union.GCObject** %69 to i64*, !dbg !1180
  %71 = load i64, i64* %70, align 8, !dbg !1180, !tbaa !716
  %72 = getelementptr inbounds %union.GCObject, %union.GCObject* %7, i64 0, i32 0, i32 25, !dbg !1182
  %73 = bitcast %union.GCObject** %72 to i64*, !dbg !1183
  store i64 %71, i64* %73, align 8, !dbg !1183, !tbaa !403
  store %union.GCObject* %7, %union.GCObject** %69, align 8, !dbg !1184, !tbaa !716
  br label %80, !dbg !1185

; <label>:74:                                     ; preds = %5
  %75 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 8, !dbg !1186
  %76 = bitcast %union.GCObject** %75 to i64*, !dbg !1186
  %77 = load i64, i64* %76, align 8, !dbg !1186, !tbaa !716
  %78 = getelementptr inbounds %union.GCObject, %union.GCObject* %7, i64 0, i32 0, i32 19, !dbg !1188
  %79 = bitcast i32* %78 to i64*, !dbg !1189
  store i64 %77, i64* %79, align 8, !dbg !1189, !tbaa !403
  store %union.GCObject* %7, %union.GCObject** %75, align 8, !dbg !1190, !tbaa !716
  br label %80, !dbg !1191

; <label>:80:                                     ; preds = %25, %5, %48, %53, %74, %68, %62, %56
  ret void, !dbg !1192
}

; Function Attrs: noredzone nounwind
define hidden void @luaC_barrierback(%struct.lua_State* nocapture readonly, %struct.Table*) local_unnamed_addr #0 !dbg !1193 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1203
  %4 = load %struct.global_State*, %struct.global_State** %3, align 8, !dbg !1203, !tbaa !376
  %5 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 2, !dbg !1206
  %6 = load i8, i8* %5, align 1, !dbg !1206, !tbaa !403
  %7 = and i8 %6, -5, !dbg !1206
  store i8 %7, i8* %5, align 1, !dbg !1206, !tbaa !403
  %8 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 9, !dbg !1207
  %9 = bitcast %union.GCObject** %8 to i64*, !dbg !1207
  %10 = load i64, i64* %9, align 8, !dbg !1207, !tbaa !789
  %11 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 9, !dbg !1208
  %12 = bitcast %union.GCObject** %11 to i64*, !dbg !1209
  store i64 %10, i64* %12, align 8, !dbg !1209, !tbaa !943
  %13 = bitcast %union.GCObject** %8 to %struct.Table**, !dbg !1210
  store %struct.Table* %1, %struct.Table** %13, align 8, !dbg !1210, !tbaa !789
  ret void, !dbg !1211
}

; Function Attrs: noredzone nounwind
define hidden void @luaC_link(%struct.lua_State* nocapture readonly, %union.GCObject*, i8 zeroext) local_unnamed_addr #0 !dbg !1212 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1223
  %5 = load %struct.global_State*, %struct.global_State** %4, align 8, !dbg !1223, !tbaa !376
  %6 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 6, !dbg !1225
  %7 = bitcast %union.GCObject** %6 to i64*, !dbg !1225
  %8 = load i64, i64* %7, align 8, !dbg !1225, !tbaa !592
  %9 = bitcast %union.GCObject* %1 to i64*, !dbg !1226
  store i64 %8, i64* %9, align 8, !dbg !1226, !tbaa !403
  store %union.GCObject* %1, %union.GCObject** %6, align 8, !dbg !1227, !tbaa !592
  %10 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 3, !dbg !1228
  %11 = load i8, i8* %10, align 8, !dbg !1228, !tbaa !499
  %12 = and i8 %11, 3, !dbg !1228
  %13 = getelementptr inbounds %union.GCObject, %union.GCObject* %1, i64 0, i32 0, i32 2, !dbg !1229
  store i8 %12, i8* %13, align 1, !dbg !1230, !tbaa !403
  %14 = getelementptr inbounds %union.GCObject, %union.GCObject* %1, i64 0, i32 0, i32 1, !dbg !1231
  store i8 %2, i8* %14, align 8, !dbg !1232, !tbaa !403
  ret void, !dbg !1233
}

; Function Attrs: noredzone nounwind
define hidden void @luaC_linkupval(%struct.lua_State* nocapture readonly, %struct.UpVal*) local_unnamed_addr #0 !dbg !1234 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1244
  %4 = load %struct.global_State*, %struct.global_State** %3, align 8, !dbg !1244, !tbaa !376
  %5 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 6, !dbg !1247
  %6 = bitcast %union.GCObject** %5 to i64*, !dbg !1247
  %7 = load i64, i64* %6, align 8, !dbg !1247, !tbaa !592
  %8 = bitcast %struct.UpVal* %1 to i64*, !dbg !1248
  store i64 %7, i64* %8, align 8, !dbg !1248, !tbaa !403
  %9 = bitcast %union.GCObject** %5 to %struct.UpVal**, !dbg !1249
  store %struct.UpVal* %1, %struct.UpVal** %9, align 8, !dbg !1249, !tbaa !592
  %10 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %1, i64 0, i32 2, !dbg !1250
  %11 = load i8, i8* %10, align 1, !dbg !1250, !tbaa !403
  %12 = and i8 %11, 7, !dbg !1250
  %13 = icmp eq i8 %12, 0, !dbg !1250
  br i1 %13, label %14, label %50, !dbg !1250

; <label>:14:                                     ; preds = %2
  %15 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 4, !dbg !1252
  %16 = load i8, i8* %15, align 1, !dbg !1252, !tbaa !669
  %17 = icmp eq i8 %16, 1, !dbg !1255
  br i1 %17, label %18, label %44, !dbg !1256

; <label>:18:                                     ; preds = %14
  %19 = or i8 %11, 4, !dbg !1257
  store i8 %19, i8* %10, align 1, !dbg !1257, !tbaa !403
  %20 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %1, i64 0, i32 3, !dbg !1259
  %21 = load %struct.lua_TValue*, %struct.lua_TValue** %20, align 8, !dbg !1259, !tbaa !752
  %22 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %21, i64 0, i32 1, !dbg !1259
  %23 = load i32, i32* %22, align 8, !dbg !1259, !tbaa !517
  %24 = icmp sgt i32 %23, 3, !dbg !1259
  br i1 %24, label %25, label %50, !dbg !1259

; <label>:25:                                     ; preds = %18
  %26 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %21, i64 0, i32 0, i32 0, !dbg !1259
  %27 = load %union.GCObject*, %union.GCObject** %26, align 8, !dbg !1259, !tbaa !403
  %28 = getelementptr inbounds %union.GCObject, %union.GCObject* %27, i64 0, i32 0, i32 2, !dbg !1259
  %29 = load i8, i8* %28, align 1, !dbg !1259, !tbaa !403
  %30 = and i8 %29, 3, !dbg !1259
  %31 = icmp eq i8 %30, 0, !dbg !1259
  br i1 %31, label %50, label %32, !dbg !1259

; <label>:32:                                     ; preds = %25
  %33 = load %struct.global_State*, %struct.global_State** %3, align 8, !dbg !1266, !tbaa !376
  %34 = getelementptr inbounds %struct.global_State, %struct.global_State* %33, i64 0, i32 4, !dbg !1268
  %35 = load i8, i8* %34, align 1, !dbg !1268, !tbaa !669
  %36 = icmp eq i8 %35, 1, !dbg !1269
  br i1 %36, label %37, label %38, !dbg !1270

; <label>:37:                                     ; preds = %32
  tail call fastcc void @reallymarkobject(%struct.global_State* %33, %union.GCObject* %27) #3, !dbg !1271
  br label %50, !dbg !1271

; <label>:38:                                     ; preds = %32
  %39 = and i8 %11, -8, !dbg !1272
  %40 = getelementptr inbounds %struct.global_State, %struct.global_State* %33, i64 0, i32 3, !dbg !1272
  %41 = load i8, i8* %40, align 8, !dbg !1272, !tbaa !499
  %42 = and i8 %41, 3, !dbg !1272
  %43 = or i8 %42, %39, !dbg !1272
  store i8 %43, i8* %10, align 1, !dbg !1272, !tbaa !403
  br label %50

; <label>:44:                                     ; preds = %14
  %45 = and i8 %11, -8, !dbg !1273
  %46 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 3, !dbg !1273
  %47 = load i8, i8* %46, align 8, !dbg !1273, !tbaa !499
  %48 = and i8 %47, 3, !dbg !1273
  %49 = or i8 %48, %45, !dbg !1273
  store i8 %49, i8* %10, align 1, !dbg !1273, !tbaa !403
  br label %50

; <label>:50:                                     ; preds = %38, %37, %25, %2, %44, %18
  ret void, !dbg !1275
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
define internal fastcc i64 @propagatemark(%struct.global_State*) unnamed_addr #0 !dbg !1276 {
  %2 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 8, !dbg !1296
  %3 = load %union.GCObject*, %union.GCObject** %2, align 8, !dbg !1296, !tbaa !716
  %4 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 2, !dbg !1298
  %5 = load i8, i8* %4, align 1, !dbg !1298, !tbaa !403
  %6 = or i8 %5, 4, !dbg !1298
  store i8 %6, i8* %4, align 1, !dbg !1298, !tbaa !403
  %7 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 1, !dbg !1299
  %8 = load i8, i8* %7, align 8, !dbg !1299, !tbaa !403
  switch i8 %8, label %521 [
    i8 5, label %9
    i8 6, label %174
    i8 8, label %258
    i8 9, label %375
  ], !dbg !1300

; <label>:9:                                      ; preds = %1
  %10 = bitcast %union.GCObject* %3 to %struct.Table*, !dbg !1301
  %11 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 8, !dbg !1303
  %12 = bitcast i32** %11 to i64*, !dbg !1303
  %13 = load i64, i64* %12, align 8, !dbg !1303, !tbaa !943
  %14 = bitcast %union.GCObject** %2 to i64*, !dbg !1304
  store i64 %13, i64* %14, align 8, !dbg !1304, !tbaa !716
  %15 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 4, !dbg !1323
  %16 = bitcast %struct.lua_TValue** %15 to %struct.Table**, !dbg !1323
  %17 = load %struct.Table*, %struct.Table** %16, align 8, !dbg !1323, !tbaa !1325
  %18 = icmp eq %struct.Table* %17, null, !dbg !1326
  br i1 %18, label %74, label %19, !dbg !1327

; <label>:19:                                     ; preds = %9
  %20 = getelementptr inbounds %struct.Table, %struct.Table* %17, i64 0, i32 2, !dbg !1328
  %21 = load i8, i8* %20, align 1, !dbg !1328, !tbaa !403
  %22 = and i8 %21, 3, !dbg !1328
  %23 = icmp eq i8 %22, 0, !dbg !1328
  br i1 %23, label %28, label %24, !dbg !1331

; <label>:24:                                     ; preds = %19
  %25 = bitcast %struct.Table* %17 to %union.GCObject*, !dbg !1328
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %0, %union.GCObject* %25) #3, !dbg !1328
  %26 = load %struct.Table*, %struct.Table** %16, align 8, !dbg !1332, !tbaa !1325
  %27 = icmp eq %struct.Table* %26, null, !dbg !1332
  br i1 %27, label %74, label %28, !dbg !1332

; <label>:28:                                     ; preds = %24, %19
  %29 = phi %struct.Table* [ %26, %24 ], [ %17, %19 ]
  %30 = getelementptr inbounds %struct.Table, %struct.Table* %29, i64 0, i32 3, !dbg !1332
  %31 = load i8, i8* %30, align 2, !dbg !1332, !tbaa !410
  %32 = and i8 %31, 8, !dbg !1332
  %33 = icmp eq i8 %32, 0, !dbg !1332
  br i1 %33, label %34, label %74, !dbg !1332

; <label>:34:                                     ; preds = %28
  %35 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 24, i64 3, !dbg !1332
  %36 = load %union.TString*, %union.TString** %35, align 8, !dbg !1332, !tbaa !396
  %37 = tail call %struct.lua_TValue* @luaT_gettm(%struct.Table* nonnull %29, i32 3, %union.TString* %36) #3, !dbg !1332
  %38 = icmp eq %struct.lua_TValue* %37, null, !dbg !1334
  br i1 %38, label %74, label %39, !dbg !1336

; <label>:39:                                     ; preds = %34
  %40 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %37, i64 0, i32 1, !dbg !1337
  %41 = load i32, i32* %40, align 8, !dbg !1337, !tbaa !517
  %42 = icmp eq i32 %41, 4, !dbg !1337
  br i1 %42, label %43, label %74, !dbg !1338

; <label>:43:                                     ; preds = %39
  %44 = bitcast %struct.lua_TValue* %37 to %union.TString**, !dbg !1339
  %45 = load %union.TString*, %union.TString** %44, align 8, !dbg !1339, !tbaa !403
  %46 = getelementptr inbounds %union.TString, %union.TString* %45, i64 1, !dbg !1339
  %47 = bitcast %union.TString* %46 to i8*, !dbg !1339
  %48 = tail call i8* @strchr(i8* nonnull %47, i32 107) #3, !dbg !1341
  %49 = icmp ne i8* %48, null, !dbg !1342
  %50 = zext i1 %49 to i32, !dbg !1342
  %51 = load %union.TString*, %union.TString** %44, align 8, !dbg !1343, !tbaa !403
  %52 = getelementptr inbounds %union.TString, %union.TString* %51, i64 1, !dbg !1343
  %53 = bitcast %union.TString* %52 to i8*, !dbg !1343
  %54 = tail call i8* @strchr(i8* nonnull %53, i32 118) #3, !dbg !1344
  %55 = icmp ne i8* %54, null, !dbg !1345
  %56 = or i1 %49, %55, !dbg !1346
  br i1 %56, label %57, label %69, !dbg !1346

; <label>:57:                                     ; preds = %43
  %58 = zext i1 %55 to i32, !dbg !1345
  %59 = load i8, i8* %4, align 1, !dbg !1348, !tbaa !857
  %60 = and i8 %59, -25, !dbg !1348
  %61 = shl nuw nsw i32 %50, 3, !dbg !1350
  %62 = shl nuw nsw i32 %58, 4, !dbg !1350
  %63 = or i32 %62, %61, !dbg !1350
  %64 = trunc i32 %63 to i8, !dbg !1351
  %65 = or i8 %60, %64, !dbg !1351
  store i8 %65, i8* %4, align 1, !dbg !1351, !tbaa !857
  %66 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 10, !dbg !1352
  %67 = bitcast %union.GCObject** %66 to i64*, !dbg !1352
  %68 = load i64, i64* %67, align 8, !dbg !1352, !tbaa !774
  store i64 %68, i64* %12, align 8, !dbg !1353, !tbaa !943
  store %union.GCObject* %3, %union.GCObject** %66, align 8, !dbg !1354, !tbaa !774
  br label %69, !dbg !1355

; <label>:69:                                     ; preds = %57, %43
  %70 = and i1 %49, %55, !dbg !1356
  br i1 %70, label %71, label %73, !dbg !1356

; <label>:71:                                     ; preds = %69
  %72 = getelementptr inbounds %struct.Table, %struct.Table* %10, i64 0, i32 4, !dbg !1358
  br label %156, !dbg !1356

; <label>:73:                                     ; preds = %69
  br i1 %55, label %101, label %74, !dbg !1359

; <label>:74:                                     ; preds = %73, %39, %34, %28, %24, %9
  %75 = phi i32 [ %50, %73 ], [ 0, %9 ], [ 0, %28 ], [ 0, %24 ], [ 0, %34 ], [ 0, %39 ]
  %76 = phi i1 [ %49, %73 ], [ false, %9 ], [ false, %28 ], [ false, %24 ], [ false, %34 ], [ false, %39 ]
  %77 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 9, !dbg !1360
  %78 = bitcast %struct.lua_TValue** %77 to i32*, !dbg !1360
  %79 = load i32, i32* %78, align 8, !dbg !1360, !tbaa !854
  %80 = icmp eq i32 %79, 0, !dbg !1364
  br i1 %80, label %101, label %81, !dbg !1364

; <label>:81:                                     ; preds = %74
  %82 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 5
  %83 = sext i32 %79 to i64, !dbg !1364
  br label %84, !dbg !1364

; <label>:84:                                     ; preds = %99, %81
  %85 = phi i64 [ %83, %81 ], [ %86, %99 ]
  %86 = add nsw i64 %85, -1, !dbg !1365
  %87 = load %struct.lua_TValue*, %struct.lua_TValue** %82, align 8, !dbg !1366, !tbaa !862
  %88 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %87, i64 %86, i32 1, !dbg !1366
  %89 = load i32, i32* %88, align 8, !dbg !1366, !tbaa !517
  %90 = icmp sgt i32 %89, 3, !dbg !1366
  br i1 %90, label %91, label %99, !dbg !1366

; <label>:91:                                     ; preds = %84
  %92 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %87, i64 %86, i32 0, i32 0, !dbg !1366
  %93 = load %union.GCObject*, %union.GCObject** %92, align 8, !dbg !1366, !tbaa !403
  %94 = getelementptr inbounds %union.GCObject, %union.GCObject* %93, i64 0, i32 0, i32 2, !dbg !1366
  %95 = load i8, i8* %94, align 1, !dbg !1366, !tbaa !403
  %96 = and i8 %95, 3, !dbg !1366
  %97 = icmp eq i8 %96, 0, !dbg !1366
  br i1 %97, label %99, label %98, !dbg !1369

; <label>:98:                                     ; preds = %91
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %union.GCObject* %93) #3, !dbg !1366
  br label %99, !dbg !1366

; <label>:99:                                     ; preds = %98, %91, %84
  %100 = icmp eq i64 %86, 0
  br i1 %100, label %101, label %84, !dbg !1364, !llvm.loop !1370

; <label>:101:                                    ; preds = %99, %74, %73
  %102 = phi i32 [ %50, %73 ], [ %75, %74 ], [ %75, %99 ]
  %103 = phi i32 [ 1, %73 ], [ 0, %74 ], [ 0, %99 ]
  %104 = phi i1 [ %49, %73 ], [ %76, %74 ], [ %76, %99 ]
  %105 = phi i1 [ true, %73 ], [ false, %74 ], [ false, %99 ]
  %106 = getelementptr inbounds %struct.Table, %struct.Table* %10, i64 0, i32 4, !dbg !1373
  %107 = load i8, i8* %106, align 1, !dbg !1373, !tbaa !892
  %108 = zext i8 %107 to i32, !dbg !1373
  %109 = shl nsw i32 -1, %108, !dbg !1374
  %110 = xor i32 %109, -1, !dbg !1374
  %111 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 6
  %112 = bitcast %struct.global_State** %111 to %struct.Node**
  %113 = sext i32 %110 to i64, !dbg !1375
  br label %114, !dbg !1375

; <label>:114:                                    ; preds = %150, %101
  %115 = phi i64 [ %113, %101 ], [ %151, %150 ]
  %116 = load %struct.Node*, %struct.Node** %112, align 8, !dbg !1376, !tbaa !896
  %117 = getelementptr inbounds %struct.Node, %struct.Node* %116, i64 %115, i32 0, i32 1, !dbg !1377
  %118 = load i32, i32* %117, align 8, !dbg !1377, !tbaa !899
  %119 = icmp eq i32 %118, 0, !dbg !1377
  br i1 %119, label %120, label %125, !dbg !1379

; <label>:120:                                    ; preds = %114
  %121 = getelementptr inbounds %struct.Node, %struct.Node* %116, i64 %115, i32 1, i32 0, i32 1, !dbg !1380
  %122 = load i32, i32* %121, align 8, !dbg !1380, !tbaa !403
  %123 = icmp sgt i32 %122, 3, !dbg !1380
  br i1 %123, label %124, label %150, !dbg !1382

; <label>:124:                                    ; preds = %120
  store i32 11, i32* %121, align 8, !dbg !1383, !tbaa !403
  br label %150, !dbg !1383

; <label>:125:                                    ; preds = %114
  br i1 %104, label %138, label %126, !dbg !1384

; <label>:126:                                    ; preds = %125
  %127 = getelementptr inbounds %struct.Node, %struct.Node* %116, i64 %115, i32 1, i32 0, i32 1, !dbg !1386
  %128 = load i32, i32* %127, align 8, !dbg !1386, !tbaa !403
  %129 = icmp sgt i32 %128, 3, !dbg !1386
  br i1 %129, label %130, label %138, !dbg !1386

; <label>:130:                                    ; preds = %126
  %131 = getelementptr inbounds %struct.Node, %struct.Node* %116, i64 %115, i32 1, i32 0, i32 0, i32 0, !dbg !1386
  %132 = load %union.GCObject*, %union.GCObject** %131, align 8, !dbg !1386, !tbaa !403
  %133 = getelementptr inbounds %union.GCObject, %union.GCObject* %132, i64 0, i32 0, i32 2, !dbg !1386
  %134 = load i8, i8* %133, align 1, !dbg !1386, !tbaa !403
  %135 = and i8 %134, 3, !dbg !1386
  %136 = icmp eq i8 %135, 0, !dbg !1386
  br i1 %136, label %138, label %137, !dbg !1390

; <label>:137:                                    ; preds = %130
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %union.GCObject* %132) #3, !dbg !1386
  br label %138, !dbg !1386

; <label>:138:                                    ; preds = %137, %130, %126, %125
  br i1 %105, label %150, label %139, !dbg !1391

; <label>:139:                                    ; preds = %138
  %140 = load i32, i32* %117, align 8, !dbg !1392, !tbaa !899
  %141 = icmp sgt i32 %140, 3, !dbg !1392
  br i1 %141, label %142, label %150, !dbg !1392

; <label>:142:                                    ; preds = %139
  %143 = getelementptr inbounds %struct.Node, %struct.Node* %116, i64 %115, i32 0, i32 0, i32 0, !dbg !1392
  %144 = load %union.GCObject*, %union.GCObject** %143, align 8, !dbg !1392, !tbaa !403
  %145 = getelementptr inbounds %union.GCObject, %union.GCObject* %144, i64 0, i32 0, i32 2, !dbg !1392
  %146 = load i8, i8* %145, align 1, !dbg !1392, !tbaa !403
  %147 = and i8 %146, 3, !dbg !1392
  %148 = icmp eq i8 %147, 0, !dbg !1392
  br i1 %148, label %150, label %149, !dbg !1396

; <label>:149:                                    ; preds = %142
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %union.GCObject* %144) #3, !dbg !1392
  br label %150, !dbg !1392

; <label>:150:                                    ; preds = %149, %142, %139, %138, %124, %120
  %151 = add nsw i64 %115, -1, !dbg !1374
  %152 = icmp eq i64 %115, 0
  br i1 %152, label %153, label %114, !dbg !1375, !llvm.loop !1397

; <label>:153:                                    ; preds = %150
  %154 = or i32 %103, %102, !dbg !1400
  %155 = icmp eq i32 %154, 0, !dbg !1401
  br i1 %155, label %160, label %156, !dbg !1402

; <label>:156:                                    ; preds = %71, %153
  %157 = phi i8* [ %72, %71 ], [ %106, %153 ], !dbg !1358
  %158 = load i8, i8* %4, align 1, !dbg !1403, !tbaa !403
  %159 = and i8 %158, -5, !dbg !1403
  store i8 %159, i8* %4, align 1, !dbg !1403, !tbaa !403
  br label %160, !dbg !1403

; <label>:160:                                    ; preds = %153, %156
  %161 = phi i8* [ %106, %153 ], [ %157, %156 ], !dbg !1358
  %162 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 9, !dbg !1404
  %163 = bitcast %struct.lua_TValue** %162 to i32*, !dbg !1404
  %164 = load i32, i32* %163, align 8, !dbg !1404, !tbaa !854
  %165 = sext i32 %164 to i64, !dbg !1405
  %166 = shl nsw i64 %165, 4, !dbg !1406
  %167 = add nsw i64 %166, 64, !dbg !1407
  %168 = load i8, i8* %161, align 1, !dbg !1358, !tbaa !892
  %169 = zext i8 %168 to i32, !dbg !1358
  %170 = shl i32 1, %169, !dbg !1358
  %171 = sext i32 %170 to i64, !dbg !1358
  %172 = mul nsw i64 %171, 40, !dbg !1408
  %173 = add nsw i64 %167, %172, !dbg !1409
  br label %521

; <label>:174:                                    ; preds = %1
  %175 = bitcast %union.GCObject* %3 to %union.Closure*, !dbg !1410
  %176 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 4, !dbg !1412
  %177 = bitcast %struct.lua_TValue** %176 to i64*, !dbg !1412
  %178 = load i64, i64* %177, align 8, !dbg !1412, !tbaa !403
  %179 = bitcast %union.GCObject** %2 to i64*, !dbg !1413
  store i64 %178, i64* %179, align 8, !dbg !1413, !tbaa !716
  %180 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 5, !dbg !1428
  %181 = bitcast %struct.lua_TValue** %180 to %union.GCObject**, !dbg !1428
  %182 = load %union.GCObject*, %union.GCObject** %181, align 8, !dbg !1428, !tbaa !403
  %183 = getelementptr inbounds %union.GCObject, %union.GCObject* %182, i64 0, i32 0, i32 2, !dbg !1428
  %184 = load i8, i8* %183, align 1, !dbg !1428, !tbaa !403
  %185 = and i8 %184, 3, !dbg !1428
  %186 = icmp eq i8 %185, 0, !dbg !1428
  br i1 %186, label %188, label %187, !dbg !1431

; <label>:187:                                    ; preds = %174
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %0, %union.GCObject* %182) #3, !dbg !1428
  br label %188, !dbg !1428

; <label>:188:                                    ; preds = %187, %174
  %189 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 3, !dbg !1432
  %190 = load i8, i8* %189, align 2, !dbg !1432, !tbaa !403
  %191 = icmp eq i8 %190, 0, !dbg !1433
  br i1 %191, label %216, label %192, !dbg !1434

; <label>:192:                                    ; preds = %188
  %193 = getelementptr inbounds %union.Closure, %union.Closure* %175, i64 0, i32 0, i32 4, !dbg !1436
  %194 = load i8, i8* %193, align 1, !dbg !1436, !tbaa !403
  %195 = icmp eq i8 %194, 0, !dbg !1439
  br i1 %195, label %249, label %196, !dbg !1440

; <label>:196:                                    ; preds = %192, %211
  %197 = phi i8 [ %212, %211 ], [ %194, %192 ]
  %198 = phi i64 [ %213, %211 ], [ 0, %192 ]
  %199 = getelementptr inbounds %union.Closure, %union.Closure* %175, i64 0, i32 0, i32 8, i64 %198, i32 1, !dbg !1441
  %200 = load i32, i32* %199, align 8, !dbg !1441, !tbaa !403
  %201 = icmp sgt i32 %200, 3, !dbg !1441
  br i1 %201, label %202, label %211, !dbg !1441

; <label>:202:                                    ; preds = %196
  %203 = getelementptr inbounds %union.Closure, %union.Closure* %175, i64 0, i32 0, i32 8, i64 %198, i32 0, i32 0, !dbg !1441
  %204 = load %union.GCObject*, %union.GCObject** %203, align 8, !dbg !1441, !tbaa !403
  %205 = getelementptr inbounds %union.GCObject, %union.GCObject* %204, i64 0, i32 0, i32 2, !dbg !1441
  %206 = load i8, i8* %205, align 1, !dbg !1441, !tbaa !403
  %207 = and i8 %206, 3, !dbg !1441
  %208 = icmp eq i8 %207, 0, !dbg !1441
  br i1 %208, label %211, label %209, !dbg !1444

; <label>:209:                                    ; preds = %202
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %union.GCObject* %204) #3, !dbg !1441
  %210 = load i8, i8* %193, align 1, !dbg !1436, !tbaa !403
  br label %211, !dbg !1441

; <label>:211:                                    ; preds = %209, %202, %196
  %212 = phi i8 [ %197, %202 ], [ %197, %196 ], [ %210, %209 ], !dbg !1436
  %213 = add nuw nsw i64 %198, 1, !dbg !1445
  %214 = zext i8 %212 to i64, !dbg !1439
  %215 = icmp ult i64 %213, %214, !dbg !1439
  br i1 %215, label %196, label %249, !dbg !1440, !llvm.loop !1446

; <label>:216:                                    ; preds = %188
  %217 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 6, !dbg !1449
  %218 = bitcast %struct.global_State** %217 to %union.GCObject**, !dbg !1449
  %219 = load %union.GCObject*, %union.GCObject** %218, align 8, !dbg !1449, !tbaa !403
  %220 = getelementptr inbounds %union.GCObject, %union.GCObject* %219, i64 0, i32 0, i32 2, !dbg !1449
  %221 = load i8, i8* %220, align 1, !dbg !1449, !tbaa !403
  %222 = and i8 %221, 3, !dbg !1449
  %223 = icmp eq i8 %222, 0, !dbg !1449
  br i1 %223, label %225, label %224, !dbg !1452

; <label>:224:                                    ; preds = %216
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %0, %union.GCObject* %219) #3, !dbg !1449
  br label %225, !dbg !1449

; <label>:225:                                    ; preds = %224, %216
  %226 = getelementptr inbounds %union.Closure, %union.Closure* %175, i64 0, i32 0, i32 4, !dbg !1454
  %227 = load i8, i8* %226, align 1, !dbg !1454, !tbaa !403
  %228 = icmp eq i8 %227, 0, !dbg !1457
  br i1 %228, label %249, label %229, !dbg !1458

; <label>:229:                                    ; preds = %225
  %230 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 7
  %231 = bitcast %struct.CallInfo** %230 to [1 x %struct.UpVal*]*
  br label %232, !dbg !1458

; <label>:232:                                    ; preds = %244, %229
  %233 = phi i8 [ %227, %229 ], [ %245, %244 ]
  %234 = phi i64 [ 0, %229 ], [ %246, %244 ]
  %235 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %231, i64 0, i64 %234, !dbg !1459
  %236 = bitcast %struct.UpVal** %235 to %union.GCObject**, !dbg !1459
  %237 = load %union.GCObject*, %union.GCObject** %236, align 8, !dbg !1459, !tbaa !403
  %238 = getelementptr inbounds %union.GCObject, %union.GCObject* %237, i64 0, i32 0, i32 2, !dbg !1459
  %239 = load i8, i8* %238, align 1, !dbg !1459, !tbaa !403
  %240 = and i8 %239, 3, !dbg !1459
  %241 = icmp eq i8 %240, 0, !dbg !1459
  br i1 %241, label %244, label %242, !dbg !1462

; <label>:242:                                    ; preds = %232
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %union.GCObject* %237) #3, !dbg !1459
  %243 = load i8, i8* %226, align 1, !dbg !1454, !tbaa !403
  br label %244, !dbg !1459

; <label>:244:                                    ; preds = %242, %232
  %245 = phi i8 [ %233, %232 ], [ %243, %242 ], !dbg !1454
  %246 = add nuw nsw i64 %234, 1, !dbg !1463
  %247 = zext i8 %245 to i64, !dbg !1457
  %248 = icmp ult i64 %246, %247, !dbg !1457
  br i1 %248, label %232, label %249, !dbg !1458, !llvm.loop !1464

; <label>:249:                                    ; preds = %211, %244, %192, %225
  %250 = phi i8 [ 0, %192 ], [ 0, %225 ], [ %245, %244 ], [ %212, %211 ]
  %251 = load i8, i8* %189, align 2, !dbg !1467, !tbaa !403
  %252 = icmp eq i8 %251, 0, !dbg !1468
  %253 = zext i8 %250 to i32, !dbg !1469
  %254 = select i1 %252, i32 3, i32 4, !dbg !1468
  %255 = shl i32 %253, %254, !dbg !1468
  %256 = add nuw nsw i32 %255, 40, !dbg !1468
  %257 = zext i32 %256 to i64, !dbg !1468
  br label %521

; <label>:258:                                    ; preds = %1
  %259 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, !dbg !1470
  %260 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 25, !dbg !1472
  %261 = bitcast %union.GCObject** %260 to i64*, !dbg !1472
  %262 = load i64, i64* %261, align 8, !dbg !1472, !tbaa !1473
  %263 = bitcast %union.GCObject** %2 to i64*, !dbg !1474
  store i64 %262, i64* %263, align 8, !dbg !1474, !tbaa !716
  %264 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 9, !dbg !1475
  %265 = bitcast %union.GCObject** %264 to i64*, !dbg !1475
  %266 = load i64, i64* %265, align 8, !dbg !1475, !tbaa !789
  store i64 %266, i64* %261, align 8, !dbg !1476, !tbaa !1473
  store %union.GCObject* %3, %union.GCObject** %264, align 8, !dbg !1477, !tbaa !789
  %267 = load i8, i8* %4, align 1, !dbg !1478, !tbaa !403
  %268 = and i8 %267, -5, !dbg !1478
  store i8 %268, i8* %4, align 1, !dbg !1478, !tbaa !403
  %269 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 22, i32 1, !dbg !1491
  %270 = load i32, i32* %269, align 8, !dbg !1491, !tbaa !1095
  %271 = icmp sgt i32 %270, 3, !dbg !1491
  br i1 %271, label %272, label %280, !dbg !1491

; <label>:272:                                    ; preds = %258
  %273 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 22, i32 0, i32 0, !dbg !1491
  %274 = load %union.GCObject*, %union.GCObject** %273, align 8, !dbg !1491, !tbaa !403
  %275 = getelementptr inbounds %union.GCObject, %union.GCObject* %274, i64 0, i32 0, i32 2, !dbg !1491
  %276 = load i8, i8* %275, align 1, !dbg !1491, !tbaa !403
  %277 = and i8 %276, 3, !dbg !1491
  %278 = icmp eq i8 %277, 0, !dbg !1491
  br i1 %278, label %280, label %279, !dbg !1494

; <label>:279:                                    ; preds = %272
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %0, %union.GCObject* %274) #3, !dbg !1491
  br label %280, !dbg !1491

; <label>:280:                                    ; preds = %279, %272, %258
  %281 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 4, !dbg !1495
  %282 = load %struct.lua_TValue*, %struct.lua_TValue** %281, align 8, !dbg !1495, !tbaa !516
  %283 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 12, !dbg !1497
  %284 = load %struct.CallInfo*, %struct.CallInfo** %283, align 8, !dbg !1497, !tbaa !1499
  %285 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 7, !dbg !1501
  %286 = load %struct.CallInfo*, %struct.CallInfo** %285, align 8, !dbg !1501, !tbaa !1503
  %287 = icmp ugt %struct.CallInfo* %284, %286, !dbg !1504
  br i1 %287, label %297, label %288, !dbg !1505

; <label>:288:                                    ; preds = %280, %288
  %289 = phi %struct.CallInfo* [ %295, %288 ], [ %284, %280 ]
  %290 = phi %struct.lua_TValue* [ %294, %288 ], [ %282, %280 ]
  %291 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %289, i64 0, i32 2, !dbg !1506
  %292 = load %struct.lua_TValue*, %struct.lua_TValue** %291, align 8, !dbg !1506, !tbaa !1509
  %293 = icmp ult %struct.lua_TValue* %290, %292, !dbg !1511
  %294 = select i1 %293, %struct.lua_TValue* %292, %struct.lua_TValue* %290, !dbg !1512
  %295 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %289, i64 1, !dbg !1513
  %296 = icmp ugt %struct.CallInfo* %295, %286, !dbg !1504
  br i1 %296, label %297, label %288, !dbg !1505, !llvm.loop !1514

; <label>:297:                                    ; preds = %288, %280
  %298 = phi %struct.lua_TValue* [ %282, %280 ], [ %294, %288 ], !dbg !1517
  %299 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 10, !dbg !1518
  %300 = load %struct.lua_TValue*, %struct.lua_TValue** %299, align 8, !dbg !1518, !tbaa !1520
  %301 = icmp ult %struct.lua_TValue* %300, %282, !dbg !1522
  br i1 %301, label %305, label %302, !dbg !1524

; <label>:302:                                    ; preds = %320, %297
  %303 = phi %struct.lua_TValue* [ %300, %297 ], [ %322, %320 ], !dbg !1525
  %304 = icmp ugt %struct.lua_TValue* %303, %298, !dbg !1526
  br i1 %304, label %329, label %324, !dbg !1529

; <label>:305:                                    ; preds = %297, %320
  %306 = phi %struct.lua_TValue* [ %321, %320 ], [ %282, %297 ]
  %307 = phi %struct.lua_TValue* [ %322, %320 ], [ %300, %297 ]
  %308 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %307, i64 0, i32 1, !dbg !1530
  %309 = load i32, i32* %308, align 8, !dbg !1530, !tbaa !517
  %310 = icmp sgt i32 %309, 3, !dbg !1530
  br i1 %310, label %311, label %320, !dbg !1530

; <label>:311:                                    ; preds = %305
  %312 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %307, i64 0, i32 0, i32 0, !dbg !1530
  %313 = load %union.GCObject*, %union.GCObject** %312, align 8, !dbg !1530, !tbaa !403
  %314 = getelementptr inbounds %union.GCObject, %union.GCObject* %313, i64 0, i32 0, i32 2, !dbg !1530
  %315 = load i8, i8* %314, align 1, !dbg !1530, !tbaa !403
  %316 = and i8 %315, 3, !dbg !1530
  %317 = icmp eq i8 %316, 0, !dbg !1530
  br i1 %317, label %320, label %318, !dbg !1533

; <label>:318:                                    ; preds = %311
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %union.GCObject* %313) #3, !dbg !1530
  %319 = load %struct.lua_TValue*, %struct.lua_TValue** %281, align 8, !dbg !1534, !tbaa !516
  br label %320, !dbg !1530

; <label>:320:                                    ; preds = %318, %311, %305
  %321 = phi %struct.lua_TValue* [ %306, %311 ], [ %306, %305 ], [ %319, %318 ], !dbg !1534
  %322 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %307, i64 1, !dbg !1535
  %323 = icmp ult %struct.lua_TValue* %322, %321, !dbg !1522
  br i1 %323, label %305, label %302, !dbg !1524, !llvm.loop !1536

; <label>:324:                                    ; preds = %302, %324
  %325 = phi %struct.lua_TValue* [ %327, %324 ], [ %303, %302 ]
  %326 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %325, i64 0, i32 1, !dbg !1539
  store i32 0, i32* %326, align 8, !dbg !1539, !tbaa !517
  %327 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %325, i64 1, !dbg !1540
  %328 = icmp ugt %struct.lua_TValue* %327, %298, !dbg !1526
  br i1 %328, label %329, label %324, !dbg !1529, !llvm.loop !1541

; <label>:329:                                    ; preds = %324, %302
  %330 = bitcast %struct.lua_TValue** %299 to i64*, !dbg !1555
  %331 = load i64, i64* %330, align 8, !dbg !1555, !tbaa !1520
  %332 = ptrtoint %struct.lua_TValue* %298 to i64, !dbg !1555
  %333 = sub i64 %332, %331, !dbg !1555
  %334 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 14, !dbg !1556
  %335 = load i32, i32* %334, align 4, !dbg !1556, !tbaa !1558
  %336 = icmp sgt i32 %335, 20000, !dbg !1559
  br i1 %336, label %337, label %339, !dbg !1560

; <label>:337:                                    ; preds = %329
  %338 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 13, !dbg !1561
  br label %365, !dbg !1560

; <label>:339:                                    ; preds = %329
  %340 = bitcast %struct.CallInfo** %285 to i64*, !dbg !1562
  %341 = load i64, i64* %340, align 8, !dbg !1562, !tbaa !1503
  %342 = bitcast %struct.CallInfo** %283 to i64*, !dbg !1562
  %343 = load i64, i64* %342, align 8, !dbg !1562, !tbaa !1499
  %344 = sub i64 %341, %343, !dbg !1562
  %345 = sdiv exact i64 %344, 40, !dbg !1562
  %346 = trunc i64 %345 to i32, !dbg !1562
  %347 = shl nsw i32 %346, 2, !dbg !1564
  %348 = icmp slt i32 %347, %335, !dbg !1566
  %349 = icmp sgt i32 %335, 16, !dbg !1567
  %350 = and i1 %349, %348, !dbg !1568
  br i1 %350, label %351, label %354, !dbg !1568

; <label>:351:                                    ; preds = %339
  %352 = lshr i32 %335, 1
  %353 = and i32 %352, 32767
  tail call void @luaD_reallocCI(%struct.lua_State* nonnull %259, i32 %353) #3, !dbg !1569
  br label %354, !dbg !1569

; <label>:354:                                    ; preds = %351, %339
  %355 = lshr exact i64 %333, 2, !dbg !1570
  %356 = trunc i64 %355 to i32, !dbg !1570
  %357 = and i32 %356, -4, !dbg !1570
  %358 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 13, !dbg !1572
  %359 = load i32, i32* %358, align 8, !dbg !1572, !tbaa !1573
  %360 = icmp slt i32 %357, %359, !dbg !1574
  %361 = icmp sgt i32 %359, 90, !dbg !1575
  %362 = and i1 %360, %361, !dbg !1576
  br i1 %362, label %363, label %365, !dbg !1576

; <label>:363:                                    ; preds = %354
  %364 = lshr i32 %359, 1
  tail call void @luaD_reallocstack(%struct.lua_State* nonnull %259, i32 %364) #3, !dbg !1577
  br label %365, !dbg !1577

; <label>:365:                                    ; preds = %337, %354, %363
  %366 = phi i32* [ %338, %337 ], [ %358, %354 ], [ %358, %363 ], !dbg !1561
  %367 = load i32, i32* %366, align 8, !dbg !1561, !tbaa !1573
  %368 = sext i32 %367 to i64, !dbg !1578
  %369 = shl nsw i64 %368, 4, !dbg !1579
  %370 = add nsw i64 %369, 184, !dbg !1580
  %371 = load i32, i32* %334, align 4, !dbg !1581, !tbaa !1558
  %372 = sext i32 %371 to i64, !dbg !1582
  %373 = mul nsw i64 %372, 40, !dbg !1583
  %374 = add nsw i64 %370, %373, !dbg !1584
  br label %521

; <label>:375:                                    ; preds = %1
  %376 = bitcast %union.GCObject* %3 to %struct.Proto*, !dbg !1585
  %377 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 19, !dbg !1587
  %378 = bitcast i32* %377 to i64*, !dbg !1587
  %379 = load i64, i64* %378, align 8, !dbg !1587, !tbaa !1588
  %380 = bitcast %union.GCObject** %2 to i64*, !dbg !1590
  store i64 %379, i64* %380, align 8, !dbg !1590, !tbaa !716
  %381 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 10, !dbg !1601
  %382 = bitcast %struct.lua_TValue** %381 to %union.TString**, !dbg !1601
  %383 = load %union.TString*, %union.TString** %382, align 8, !dbg !1601, !tbaa !1603
  %384 = icmp eq %union.TString* %383, null, !dbg !1604
  br i1 %384, label %389, label %385, !dbg !1605

; <label>:385:                                    ; preds = %375
  %386 = getelementptr inbounds %union.TString, %union.TString* %383, i64 0, i32 0, i32 2, !dbg !1606
  %387 = load i8, i8* %386, align 1, !dbg !1606, !tbaa !403
  %388 = and i8 %387, -4, !dbg !1606
  store i8 %388, i8* %386, align 1, !dbg !1606, !tbaa !403
  br label %389, !dbg !1606

; <label>:389:                                    ; preds = %385, %375
  %390 = getelementptr inbounds %struct.Proto, %struct.Proto* %376, i64 0, i32 11, !dbg !1608
  %391 = load i32, i32* %390, align 4, !dbg !1608, !tbaa !1611
  %392 = icmp sgt i32 %391, 0, !dbg !1612
  br i1 %392, label %393, label %395, !dbg !1613

; <label>:393:                                    ; preds = %389
  %394 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 4
  br label %403, !dbg !1613

; <label>:395:                                    ; preds = %419, %389
  %396 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 11, !dbg !1614
  %397 = bitcast %struct.CallInfo** %396 to i32*, !dbg !1614
  %398 = load i32, i32* %397, align 8, !dbg !1614, !tbaa !1617
  %399 = icmp sgt i32 %398, 0, !dbg !1618
  br i1 %399, label %400, label %424, !dbg !1619

; <label>:400:                                    ; preds = %395
  %401 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 9
  %402 = bitcast %struct.lua_TValue** %401 to %union.TString***
  br label %431, !dbg !1619

; <label>:403:                                    ; preds = %419, %393
  %404 = phi i32 [ %391, %393 ], [ %420, %419 ]
  %405 = phi i64 [ 0, %393 ], [ %421, %419 ]
  %406 = load %struct.lua_TValue*, %struct.lua_TValue** %394, align 8, !dbg !1620, !tbaa !1623
  %407 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %406, i64 %405, i32 1, !dbg !1620
  %408 = load i32, i32* %407, align 8, !dbg !1620, !tbaa !517
  %409 = icmp sgt i32 %408, 3, !dbg !1620
  br i1 %409, label %410, label %419, !dbg !1620

; <label>:410:                                    ; preds = %403
  %411 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %406, i64 %405, i32 0, i32 0, !dbg !1620
  %412 = load %union.GCObject*, %union.GCObject** %411, align 8, !dbg !1620, !tbaa !403
  %413 = getelementptr inbounds %union.GCObject, %union.GCObject* %412, i64 0, i32 0, i32 2, !dbg !1620
  %414 = load i8, i8* %413, align 1, !dbg !1620, !tbaa !403
  %415 = and i8 %414, 3, !dbg !1620
  %416 = icmp eq i8 %415, 0, !dbg !1620
  br i1 %416, label %419, label %417, !dbg !1624

; <label>:417:                                    ; preds = %410
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %union.GCObject* %412) #3, !dbg !1620
  %418 = load i32, i32* %390, align 4, !dbg !1608, !tbaa !1611
  br label %419, !dbg !1620

; <label>:419:                                    ; preds = %417, %410, %403
  %420 = phi i32 [ %404, %410 ], [ %404, %403 ], [ %418, %417 ], !dbg !1608
  %421 = add nuw nsw i64 %405, 1, !dbg !1625
  %422 = sext i32 %420 to i64, !dbg !1612
  %423 = icmp slt i64 %421, %422, !dbg !1612
  br i1 %423, label %403, label %395, !dbg !1613, !llvm.loop !1626

; <label>:424:                                    ; preds = %443, %395
  %425 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 13, !dbg !1629
  %426 = load i32, i32* %425, align 8, !dbg !1629, !tbaa !1632
  %427 = icmp sgt i32 %426, 0, !dbg !1633
  br i1 %427, label %428, label %448, !dbg !1634

; <label>:428:                                    ; preds = %424
  %429 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 6
  %430 = bitcast %struct.global_State** %429 to %struct.Proto***
  br label %458, !dbg !1634

; <label>:431:                                    ; preds = %443, %400
  %432 = phi i32 [ %398, %400 ], [ %444, %443 ]
  %433 = phi i64 [ 0, %400 ], [ %445, %443 ]
  %434 = load %union.TString**, %union.TString*** %402, align 8, !dbg !1635, !tbaa !1638
  %435 = getelementptr inbounds %union.TString*, %union.TString** %434, i64 %433, !dbg !1639
  %436 = load %union.TString*, %union.TString** %435, align 8, !dbg !1639, !tbaa !396
  %437 = icmp eq %union.TString* %436, null, !dbg !1639
  br i1 %437, label %443, label %438, !dbg !1640

; <label>:438:                                    ; preds = %431
  %439 = getelementptr inbounds %union.TString, %union.TString* %436, i64 0, i32 0, i32 2, !dbg !1641
  %440 = load i8, i8* %439, align 1, !dbg !1641, !tbaa !403
  %441 = and i8 %440, -4, !dbg !1641
  store i8 %441, i8* %439, align 1, !dbg !1641, !tbaa !403
  %442 = load i32, i32* %397, align 8, !dbg !1614, !tbaa !1617
  br label %443, !dbg !1641

; <label>:443:                                    ; preds = %438, %431
  %444 = phi i32 [ %432, %431 ], [ %442, %438 ], !dbg !1614
  %445 = add nuw nsw i64 %433, 1, !dbg !1642
  %446 = sext i32 %444 to i64, !dbg !1618
  %447 = icmp slt i64 %445, %446, !dbg !1618
  br i1 %447, label %431, label %424, !dbg !1619, !llvm.loop !1643

; <label>:448:                                    ; preds = %473, %424
  %449 = phi i32 [ %426, %424 ], [ %474, %473 ]
  %450 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 14, !dbg !1646
  %451 = load i32, i32* %450, align 4, !dbg !1646, !tbaa !1649
  %452 = icmp sgt i32 %451, 0, !dbg !1650
  br i1 %452, label %455, label %453, !dbg !1651

; <label>:453:                                    ; preds = %448
  %454 = sext i32 %451 to i64, !dbg !1652
  br label %497, !dbg !1651

; <label>:455:                                    ; preds = %448
  %456 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 8
  %457 = bitcast i32** %456 to %struct.LocVar**
  br label %478, !dbg !1651

; <label>:458:                                    ; preds = %473, %428
  %459 = phi i32 [ %426, %428 ], [ %474, %473 ]
  %460 = phi i64 [ 0, %428 ], [ %475, %473 ]
  %461 = load %struct.Proto**, %struct.Proto*** %430, align 8, !dbg !1653, !tbaa !1656
  %462 = getelementptr inbounds %struct.Proto*, %struct.Proto** %461, i64 %460, !dbg !1657
  %463 = load %struct.Proto*, %struct.Proto** %462, align 8, !dbg !1657, !tbaa !396
  %464 = icmp eq %struct.Proto* %463, null, !dbg !1657
  br i1 %464, label %473, label %465, !dbg !1658

; <label>:465:                                    ; preds = %458
  %466 = getelementptr inbounds %struct.Proto, %struct.Proto* %463, i64 0, i32 2, !dbg !1659
  %467 = load i8, i8* %466, align 1, !dbg !1659, !tbaa !403
  %468 = and i8 %467, 3, !dbg !1659
  %469 = icmp eq i8 %468, 0, !dbg !1659
  br i1 %469, label %473, label %470, !dbg !1662

; <label>:470:                                    ; preds = %465
  %471 = bitcast %struct.Proto* %463 to %union.GCObject*, !dbg !1659
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %union.GCObject* %471) #3, !dbg !1659
  %472 = load i32, i32* %425, align 8, !dbg !1629, !tbaa !1632
  br label %473, !dbg !1659

; <label>:473:                                    ; preds = %470, %465, %458
  %474 = phi i32 [ %459, %465 ], [ %459, %458 ], [ %472, %470 ], !dbg !1629
  %475 = add nuw nsw i64 %460, 1, !dbg !1663
  %476 = sext i32 %474 to i64, !dbg !1633
  %477 = icmp slt i64 %475, %476, !dbg !1633
  br i1 %477, label %458, label %448, !dbg !1634, !llvm.loop !1664

; <label>:478:                                    ; preds = %490, %455
  %479 = phi i32 [ %451, %455 ], [ %491, %490 ]
  %480 = phi i64 [ 0, %455 ], [ %492, %490 ]
  %481 = load %struct.LocVar*, %struct.LocVar** %457, align 8, !dbg !1667, !tbaa !1670
  %482 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %481, i64 %480, i32 0, !dbg !1671
  %483 = load %union.TString*, %union.TString** %482, align 8, !dbg !1671, !tbaa !1672
  %484 = icmp eq %union.TString* %483, null, !dbg !1674
  br i1 %484, label %490, label %485, !dbg !1675

; <label>:485:                                    ; preds = %478
  %486 = getelementptr inbounds %union.TString, %union.TString* %483, i64 0, i32 0, i32 2, !dbg !1676
  %487 = load i8, i8* %486, align 1, !dbg !1676, !tbaa !403
  %488 = and i8 %487, -4, !dbg !1676
  store i8 %488, i8* %486, align 1, !dbg !1676, !tbaa !403
  %489 = load i32, i32* %450, align 4, !dbg !1646, !tbaa !1649
  br label %490, !dbg !1676

; <label>:490:                                    ; preds = %485, %478
  %491 = phi i32 [ %479, %478 ], [ %489, %485 ], !dbg !1646
  %492 = add nuw nsw i64 %480, 1, !dbg !1677
  %493 = sext i32 %491 to i64, !dbg !1650
  %494 = icmp slt i64 %492, %493, !dbg !1650
  br i1 %494, label %478, label %495, !dbg !1651, !llvm.loop !1678

; <label>:495:                                    ; preds = %490
  %496 = load i32, i32* %425, align 8, !dbg !1681, !tbaa !1632
  br label %497, !dbg !1682

; <label>:497:                                    ; preds = %453, %495
  %498 = phi i64 [ %454, %453 ], [ %493, %495 ], !dbg !1652
  %499 = phi i32 [ %449, %453 ], [ %496, %495 ], !dbg !1681
  %500 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 12, !dbg !1682
  %501 = bitcast %struct.CallInfo** %500 to i32*, !dbg !1682
  %502 = load i32, i32* %501, align 8, !dbg !1682, !tbaa !1683
  %503 = sext i32 %502 to i64, !dbg !1684
  %504 = sext i32 %499 to i64, !dbg !1685
  %505 = load i32, i32* %390, align 4, !dbg !1686, !tbaa !1611
  %506 = sext i32 %505 to i64, !dbg !1687
  %507 = getelementptr inbounds %struct.Proto, %struct.Proto* %376, i64 0, i32 13, !dbg !1688
  %508 = load i32, i32* %507, align 4, !dbg !1688, !tbaa !1689
  %509 = sext i32 %508 to i64, !dbg !1690
  %510 = load i32, i32* %397, align 8, !dbg !1691, !tbaa !1617
  %511 = sext i32 %510 to i64, !dbg !1692
  %512 = add nsw i64 %498, %506
  %513 = shl nsw i64 %512, 4
  %514 = add nsw i64 %511, %504
  %515 = shl nsw i64 %514, 3
  %516 = add nsw i64 %509, %503
  %517 = shl nsw i64 %516, 2
  %518 = add nsw i64 %517, 120, !dbg !1693
  %519 = add nsw i64 %518, %513, !dbg !1694
  %520 = add nsw i64 %519, %515, !dbg !1695
  br label %521

; <label>:521:                                    ; preds = %1, %497, %365, %249, %160
  %522 = phi i64 [ %520, %497 ], [ %374, %365 ], [ %257, %249 ], [ %173, %160 ], [ 0, %1 ], !dbg !1696
  ret i64 %522, !dbg !1697
}

; Function Attrs: noredzone
declare dso_local i8* @strchr(i8*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare hidden void @luaD_reallocCI(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare hidden void @luaD_reallocstack(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define internal fastcc void @markmt(%struct.global_State*) unnamed_addr #0 !dbg !1698 {
  %2 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 23, i64 0, !dbg !1704
  %3 = load %struct.Table*, %struct.Table** %2, align 8, !dbg !1704, !tbaa !396
  %4 = icmp eq %struct.Table* %3, null, !dbg !1704
  br i1 %4, label %12, label %5, !dbg !1708

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.Table, %struct.Table* %3, i64 0, i32 2, !dbg !1709
  %7 = load i8, i8* %6, align 1, !dbg !1709, !tbaa !403
  %8 = and i8 %7, 3, !dbg !1709
  %9 = icmp eq i8 %8, 0, !dbg !1709
  br i1 %9, label %12, label %10, !dbg !1712

; <label>:10:                                     ; preds = %5
  %11 = bitcast %struct.Table* %3 to %union.GCObject*, !dbg !1709
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %0, %union.GCObject* %11) #4, !dbg !1709
  br label %12, !dbg !1709

; <label>:12:                                     ; preds = %5, %1, %10
  %13 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 23, i64 1, !dbg !1704
  %14 = load %struct.Table*, %struct.Table** %13, align 8, !dbg !1704, !tbaa !396
  %15 = icmp eq %struct.Table* %14, null, !dbg !1704
  br i1 %15, label %23, label %16, !dbg !1708

; <label>:16:                                     ; preds = %12
  %17 = getelementptr inbounds %struct.Table, %struct.Table* %14, i64 0, i32 2, !dbg !1709
  %18 = load i8, i8* %17, align 1, !dbg !1709, !tbaa !403
  %19 = and i8 %18, 3, !dbg !1709
  %20 = icmp eq i8 %19, 0, !dbg !1709
  br i1 %20, label %23, label %21, !dbg !1712

; <label>:21:                                     ; preds = %16
  %22 = bitcast %struct.Table* %14 to %union.GCObject*, !dbg !1709
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %0, %union.GCObject* %22) #4, !dbg !1709
  br label %23, !dbg !1709

; <label>:23:                                     ; preds = %21, %16, %12
  %24 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 23, i64 2, !dbg !1704
  %25 = load %struct.Table*, %struct.Table** %24, align 8, !dbg !1704, !tbaa !396
  %26 = icmp eq %struct.Table* %25, null, !dbg !1704
  br i1 %26, label %34, label %27, !dbg !1708

; <label>:27:                                     ; preds = %23
  %28 = getelementptr inbounds %struct.Table, %struct.Table* %25, i64 0, i32 2, !dbg !1709
  %29 = load i8, i8* %28, align 1, !dbg !1709, !tbaa !403
  %30 = and i8 %29, 3, !dbg !1709
  %31 = icmp eq i8 %30, 0, !dbg !1709
  br i1 %31, label %34, label %32, !dbg !1712

; <label>:32:                                     ; preds = %27
  %33 = bitcast %struct.Table* %25 to %union.GCObject*, !dbg !1709
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %0, %union.GCObject* %33) #4, !dbg !1709
  br label %34, !dbg !1709

; <label>:34:                                     ; preds = %32, %27, %23
  %35 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 23, i64 3, !dbg !1704
  %36 = load %struct.Table*, %struct.Table** %35, align 8, !dbg !1704, !tbaa !396
  %37 = icmp eq %struct.Table* %36, null, !dbg !1704
  br i1 %37, label %45, label %38, !dbg !1708

; <label>:38:                                     ; preds = %34
  %39 = getelementptr inbounds %struct.Table, %struct.Table* %36, i64 0, i32 2, !dbg !1709
  %40 = load i8, i8* %39, align 1, !dbg !1709, !tbaa !403
  %41 = and i8 %40, 3, !dbg !1709
  %42 = icmp eq i8 %41, 0, !dbg !1709
  br i1 %42, label %45, label %43, !dbg !1712

; <label>:43:                                     ; preds = %38
  %44 = bitcast %struct.Table* %36 to %union.GCObject*, !dbg !1709
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %0, %union.GCObject* %44) #4, !dbg !1709
  br label %45, !dbg !1709

; <label>:45:                                     ; preds = %43, %38, %34
  %46 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 23, i64 4, !dbg !1704
  %47 = load %struct.Table*, %struct.Table** %46, align 8, !dbg !1704, !tbaa !396
  %48 = icmp eq %struct.Table* %47, null, !dbg !1704
  br i1 %48, label %56, label %49, !dbg !1708

; <label>:49:                                     ; preds = %45
  %50 = getelementptr inbounds %struct.Table, %struct.Table* %47, i64 0, i32 2, !dbg !1709
  %51 = load i8, i8* %50, align 1, !dbg !1709, !tbaa !403
  %52 = and i8 %51, 3, !dbg !1709
  %53 = icmp eq i8 %52, 0, !dbg !1709
  br i1 %53, label %56, label %54, !dbg !1712

; <label>:54:                                     ; preds = %49
  %55 = bitcast %struct.Table* %47 to %union.GCObject*, !dbg !1709
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %0, %union.GCObject* %55) #4, !dbg !1709
  br label %56, !dbg !1709

; <label>:56:                                     ; preds = %54, %49, %45
  %57 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 23, i64 5, !dbg !1704
  %58 = load %struct.Table*, %struct.Table** %57, align 8, !dbg !1704, !tbaa !396
  %59 = icmp eq %struct.Table* %58, null, !dbg !1704
  br i1 %59, label %67, label %60, !dbg !1708

; <label>:60:                                     ; preds = %56
  %61 = getelementptr inbounds %struct.Table, %struct.Table* %58, i64 0, i32 2, !dbg !1709
  %62 = load i8, i8* %61, align 1, !dbg !1709, !tbaa !403
  %63 = and i8 %62, 3, !dbg !1709
  %64 = icmp eq i8 %63, 0, !dbg !1709
  br i1 %64, label %67, label %65, !dbg !1712

; <label>:65:                                     ; preds = %60
  %66 = bitcast %struct.Table* %58 to %union.GCObject*, !dbg !1709
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %0, %union.GCObject* %66) #4, !dbg !1709
  br label %67, !dbg !1709

; <label>:67:                                     ; preds = %65, %60, %56
  %68 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 23, i64 6, !dbg !1704
  %69 = load %struct.Table*, %struct.Table** %68, align 8, !dbg !1704, !tbaa !396
  %70 = icmp eq %struct.Table* %69, null, !dbg !1704
  br i1 %70, label %78, label %71, !dbg !1708

; <label>:71:                                     ; preds = %67
  %72 = getelementptr inbounds %struct.Table, %struct.Table* %69, i64 0, i32 2, !dbg !1709
  %73 = load i8, i8* %72, align 1, !dbg !1709, !tbaa !403
  %74 = and i8 %73, 3, !dbg !1709
  %75 = icmp eq i8 %74, 0, !dbg !1709
  br i1 %75, label %78, label %76, !dbg !1712

; <label>:76:                                     ; preds = %71
  %77 = bitcast %struct.Table* %69 to %union.GCObject*, !dbg !1709
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %0, %union.GCObject* %77) #4, !dbg !1709
  br label %78, !dbg !1709

; <label>:78:                                     ; preds = %76, %71, %67
  %79 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 23, i64 7, !dbg !1704
  %80 = load %struct.Table*, %struct.Table** %79, align 8, !dbg !1704, !tbaa !396
  %81 = icmp eq %struct.Table* %80, null, !dbg !1704
  br i1 %81, label %89, label %82, !dbg !1708

; <label>:82:                                     ; preds = %78
  %83 = getelementptr inbounds %struct.Table, %struct.Table* %80, i64 0, i32 2, !dbg !1709
  %84 = load i8, i8* %83, align 1, !dbg !1709, !tbaa !403
  %85 = and i8 %84, 3, !dbg !1709
  %86 = icmp eq i8 %85, 0, !dbg !1709
  br i1 %86, label %89, label %87, !dbg !1712

; <label>:87:                                     ; preds = %82
  %88 = bitcast %struct.Table* %80 to %union.GCObject*, !dbg !1709
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %0, %union.GCObject* %88) #4, !dbg !1709
  br label %89, !dbg !1709

; <label>:89:                                     ; preds = %87, %82, %78
  %90 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 23, i64 8, !dbg !1704
  %91 = load %struct.Table*, %struct.Table** %90, align 8, !dbg !1704, !tbaa !396
  %92 = icmp eq %struct.Table* %91, null, !dbg !1704
  br i1 %92, label %100, label %93, !dbg !1708

; <label>:93:                                     ; preds = %89
  %94 = getelementptr inbounds %struct.Table, %struct.Table* %91, i64 0, i32 2, !dbg !1709
  %95 = load i8, i8* %94, align 1, !dbg !1709, !tbaa !403
  %96 = and i8 %95, 3, !dbg !1709
  %97 = icmp eq i8 %96, 0, !dbg !1709
  br i1 %97, label %100, label %98, !dbg !1712

; <label>:98:                                     ; preds = %93
  %99 = bitcast %struct.Table* %91 to %union.GCObject*, !dbg !1709
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %0, %union.GCObject* %99) #4, !dbg !1709
  br label %100, !dbg !1709

; <label>:100:                                    ; preds = %98, %93, %89
  ret void, !dbg !1713
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
!636 = distinct !{!636, !571, !637}
!637 = !DILocation(line: 426, column: 3, scope: !549)
!638 = !DILocation(line: 427, column: 3, scope: !549)
!639 = distinct !DISubprogram(name: "luaC_step", scope: !1, file: !1, line: 610, type: !445, isLocal: false, isDefinition: true, scopeLine: 610, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !640)
!640 = !{!641, !642, !643}
!641 = !DILocalVariable(name: "L", arg: 1, scope: !639, file: !1, line: 610, type: !149)
!642 = !DILocalVariable(name: "g", scope: !639, file: !1, line: 611, type: !161)
!643 = !DILocalVariable(name: "lim", scope: !639, file: !1, line: 612, type: !644)
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "l_mem", file: !28, line: 22, baseType: !298)
!645 = !DILocation(line: 610, column: 28, scope: !639)
!646 = !DILocation(line: 611, column: 21, scope: !639)
!647 = !DILocation(line: 611, column: 17, scope: !639)
!648 = !DILocation(line: 612, column: 37, scope: !639)
!649 = !{!389, !381, i64 148}
!650 = !DILocation(line: 612, column: 32, scope: !639)
!651 = !DILocation(line: 612, column: 15, scope: !639)
!652 = !DILocation(line: 612, column: 9, scope: !639)
!653 = !DILocation(line: 613, column: 11, scope: !654)
!654 = distinct !DILexicalBlock(scope: !639, file: !1, line: 613, column: 7)
!655 = !DILocation(line: 613, column: 7, scope: !639)
!656 = !DILocation(line: 615, column: 19, scope: !639)
!657 = !DILocation(line: 615, column: 35, scope: !639)
!658 = !DILocation(line: 615, column: 30, scope: !639)
!659 = !DILocation(line: 615, column: 6, scope: !639)
!660 = !DILocation(line: 615, column: 13, scope: !639)
!661 = !{!389, !384, i64 136}
!662 = !DILocation(line: 616, column: 3, scope: !639)
!663 = !DILocation(line: 0, scope: !664)
!664 = distinct !DILexicalBlock(scope: !639, file: !1, line: 616, column: 6)
!665 = !DILocation(line: 617, column: 12, scope: !664)
!666 = !DILocation(line: 617, column: 9, scope: !664)
!667 = !DILocation(line: 618, column: 12, scope: !668)
!668 = distinct !DILexicalBlock(scope: !664, file: !1, line: 618, column: 9)
!669 = !{!389, !379, i64 33}
!670 = !DILocation(line: 618, column: 20, scope: !668)
!671 = !DILocation(line: 620, column: 16, scope: !639)
!672 = !DILocation(line: 618, column: 9, scope: !664)
!673 = distinct !{!673, !662, !674}
!674 = !DILocation(line: 620, column: 19, scope: !639)
!675 = !DILocation(line: 621, column: 7, scope: !639)
!676 = !DILocation(line: 622, column: 12, scope: !677)
!677 = distinct !DILexicalBlock(scope: !678, file: !1, line: 622, column: 9)
!678 = distinct !DILexicalBlock(scope: !679, file: !1, line: 621, column: 31)
!679 = distinct !DILexicalBlock(scope: !639, file: !1, line: 621, column: 7)
!680 = !DILocation(line: 622, column: 19, scope: !677)
!681 = !DILocation(line: 622, column: 9, scope: !678)
!682 = !DILocation(line: 623, column: 27, scope: !677)
!683 = !DILocation(line: 623, column: 38, scope: !677)
!684 = !DILocation(line: 623, column: 7, scope: !677)
!685 = !DILocation(line: 625, column: 17, scope: !686)
!686 = distinct !DILexicalBlock(scope: !677, file: !1, line: 624, column: 10)
!687 = !DILocation(line: 626, column: 27, scope: !686)
!688 = !DILocation(line: 630, column: 5, scope: !689)
!689 = distinct !DILexicalBlock(scope: !679, file: !1, line: 629, column: 8)
!690 = !{!389, !384, i64 128}
!691 = !{!389, !381, i64 144}
!692 = !DILocation(line: 0, scope: !689)
!693 = !DILocation(line: 632, column: 1, scope: !639)
!694 = distinct !DISubprogram(name: "singlestep", scope: !1, file: !1, line: 556, type: !695, isLocal: true, isDefinition: true, scopeLine: 556, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !697)
!695 = !DISubroutineType(types: !696)
!696 = !{!644, !149}
!697 = !{!698, !699, !700, !703}
!698 = !DILocalVariable(name: "L", arg: 1, scope: !694, file: !1, line: 556, type: !149)
!699 = !DILocalVariable(name: "g", scope: !694, file: !1, line: 557, type: !161)
!700 = !DILocalVariable(name: "old", scope: !701, file: !1, line: 573, type: !27)
!701 = distinct !DILexicalBlock(scope: !702, file: !1, line: 572, column: 26)
!702 = distinct !DILexicalBlock(scope: !694, file: !1, line: 559, column: 23)
!703 = !DILocalVariable(name: "old", scope: !704, file: !1, line: 582, type: !27)
!704 = distinct !DILexicalBlock(scope: !702, file: !1, line: 581, column: 20)
!705 = !DILocation(line: 556, column: 37, scope: !694)
!706 = !DILocation(line: 557, column: 21, scope: !694)
!707 = !DILocation(line: 557, column: 17, scope: !694)
!708 = !DILocation(line: 559, column: 14, scope: !694)
!709 = !DILocation(line: 559, column: 3, scope: !694)
!710 = !DILocation(line: 561, column: 7, scope: !711)
!711 = distinct !DILexicalBlock(scope: !702, file: !1, line: 560, column: 20)
!712 = !DILocation(line: 562, column: 7, scope: !711)
!713 = !DILocation(line: 565, column: 14, scope: !714)
!714 = distinct !DILexicalBlock(scope: !715, file: !1, line: 565, column: 11)
!715 = distinct !DILexicalBlock(scope: !702, file: !1, line: 564, column: 24)
!716 = !{!389, !378, i64 56}
!717 = !DILocation(line: 565, column: 11, scope: !714)
!718 = !DILocation(line: 565, column: 11, scope: !715)
!719 = !DILocation(line: 566, column: 16, scope: !714)
!720 = !DILocation(line: 566, column: 9, scope: !714)
!721 = !DILocalVariable(name: "L", arg: 1, scope: !722, file: !1, line: 525, type: !149)
!722 = distinct !DISubprogram(name: "atomic", scope: !1, file: !1, line: 525, type: !445, isLocal: true, isDefinition: true, scopeLine: 525, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !723)
!723 = !{!721, !724, !725}
!724 = !DILocalVariable(name: "g", scope: !722, file: !1, line: 526, type: !161)
!725 = !DILocalVariable(name: "udsize", scope: !722, file: !1, line: 527, type: !29)
!726 = !DILocation(line: 525, column: 32, scope: !722, inlinedAt: !727)
!727 = distinct !DILocation(line: 568, column: 9, scope: !728)
!728 = distinct !DILexicalBlock(scope: !714, file: !1, line: 567, column: 12)
!729 = !DILocation(line: 526, column: 17, scope: !722, inlinedAt: !727)
!730 = !DILocalVariable(name: "g", arg: 1, scope: !731, file: !1, line: 515, type: !161)
!731 = distinct !DISubprogram(name: "remarkupvals", scope: !1, file: !1, line: 515, type: !732, isLocal: true, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !734)
!732 = !DISubroutineType(types: !733)
!733 = !{null, !161}
!734 = !{!730, !735}
!735 = !DILocalVariable(name: "uv", scope: !731, file: !1, line: 516, type: !354)
!736 = !DILocation(line: 515, column: 41, scope: !731, inlinedAt: !737)
!737 = distinct !DILocation(line: 529, column: 3, scope: !722, inlinedAt: !727)
!738 = !DILocation(line: 517, column: 16, scope: !739, inlinedAt: !737)
!739 = distinct !DILexicalBlock(scope: !731, file: !1, line: 517, column: 3)
!740 = !DILocation(line: 517, column: 27, scope: !739, inlinedAt: !737)
!741 = !DILocation(line: 516, column: 10, scope: !731, inlinedAt: !737)
!742 = !DILocation(line: 0, scope: !743, inlinedAt: !737)
!743 = distinct !DILexicalBlock(scope: !739, file: !1, line: 517, column: 3)
!744 = !DILocation(line: 517, column: 36, scope: !743, inlinedAt: !737)
!745 = !DILocation(line: 517, column: 3, scope: !739, inlinedAt: !737)
!746 = !DILocation(line: 519, column: 9, scope: !747, inlinedAt: !737)
!747 = distinct !DILexicalBlock(scope: !748, file: !1, line: 519, column: 9)
!748 = distinct !DILexicalBlock(scope: !743, file: !1, line: 517, column: 70)
!749 = !DILocation(line: 520, column: 7, scope: !750, inlinedAt: !737)
!750 = distinct !DILexicalBlock(scope: !751, file: !1, line: 520, column: 7)
!751 = distinct !DILexicalBlock(scope: !747, file: !1, line: 520, column: 7)
!752 = !{!392, !378, i64 16}
!753 = !DILocation(line: 520, column: 7, scope: !751, inlinedAt: !737)
!754 = !DILocation(line: 517, column: 64, scope: !743, inlinedAt: !737)
!755 = distinct !{!755, !756, !757}
!756 = !DILocation(line: 517, column: 3, scope: !739)
!757 = !DILocation(line: 521, column: 3, scope: !739)
!758 = !DILocation(line: 325, column: 13, scope: !759, inlinedAt: !765)
!759 = distinct !DISubprogram(name: "propagateall", scope: !1, file: !1, line: 323, type: !760, isLocal: true, isDefinition: true, scopeLine: 323, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !762)
!760 = !DISubroutineType(types: !761)
!761 = !{!29, !161}
!762 = !{!763, !764}
!763 = !DILocalVariable(name: "g", arg: 1, scope: !759, file: !1, line: 323, type: !161)
!764 = !DILocalVariable(name: "m", scope: !759, file: !1, line: 324, type: !29)
!765 = distinct !DILocation(line: 531, column: 3, scope: !722, inlinedAt: !727)
!766 = !DILocation(line: 323, column: 43, scope: !759, inlinedAt: !765)
!767 = !DILocation(line: 324, column: 10, scope: !759, inlinedAt: !765)
!768 = !DILocation(line: 325, column: 3, scope: !759, inlinedAt: !765)
!769 = !DILocation(line: 325, column: 24, scope: !759, inlinedAt: !765)
!770 = distinct !{!770, !771, !772}
!771 = !DILocation(line: 325, column: 3, scope: !759)
!772 = !DILocation(line: 325, column: 39, scope: !759)
!773 = !DILocation(line: 533, column: 16, scope: !722, inlinedAt: !727)
!774 = !{!389, !378, i64 72}
!775 = !DILocation(line: 533, column: 11, scope: !722, inlinedAt: !727)
!776 = !DILocation(line: 534, column: 11, scope: !722, inlinedAt: !727)
!777 = !DILocation(line: 536, column: 3, scope: !778, inlinedAt: !727)
!778 = distinct !DILexicalBlock(scope: !779, file: !1, line: 536, column: 3)
!779 = distinct !DILexicalBlock(scope: !722, file: !1, line: 536, column: 3)
!780 = !DILocation(line: 536, column: 3, scope: !779, inlinedAt: !727)
!781 = !DILocation(line: 537, column: 3, scope: !722, inlinedAt: !727)
!782 = !DILocation(line: 323, column: 43, scope: !759, inlinedAt: !783)
!783 = distinct !DILocation(line: 538, column: 3, scope: !722, inlinedAt: !727)
!784 = !DILocation(line: 324, column: 10, scope: !759, inlinedAt: !783)
!785 = !DILocation(line: 325, column: 13, scope: !759, inlinedAt: !783)
!786 = !DILocation(line: 325, column: 3, scope: !759, inlinedAt: !783)
!787 = !DILocation(line: 325, column: 24, scope: !759, inlinedAt: !783)
!788 = !DILocation(line: 540, column: 16, scope: !722, inlinedAt: !727)
!789 = !{!389, !378, i64 64}
!790 = !DILocation(line: 540, column: 11, scope: !722, inlinedAt: !727)
!791 = !DILocation(line: 541, column: 16, scope: !722, inlinedAt: !727)
!792 = !DILocation(line: 323, column: 43, scope: !759, inlinedAt: !793)
!793 = distinct !DILocation(line: 542, column: 3, scope: !722, inlinedAt: !727)
!794 = !DILocation(line: 324, column: 10, scope: !759, inlinedAt: !793)
!795 = !DILocation(line: 325, column: 3, scope: !759, inlinedAt: !793)
!796 = !DILocation(line: 325, column: 24, scope: !759, inlinedAt: !793)
!797 = !DILocation(line: 325, column: 13, scope: !759, inlinedAt: !793)
!798 = !DILocation(line: 543, column: 12, scope: !722, inlinedAt: !727)
!799 = !DILocation(line: 527, column: 10, scope: !722, inlinedAt: !727)
!800 = !DILocalVariable(name: "g", arg: 1, scope: !801, file: !1, line: 115, type: !161)
!801 = distinct !DISubprogram(name: "marktmu", scope: !1, file: !1, line: 115, type: !732, isLocal: true, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !802)
!802 = !{!800, !803}
!803 = !DILocalVariable(name: "u", scope: !801, file: !1, line: 116, type: !36)
!804 = !DILocation(line: 115, column: 36, scope: !801, inlinedAt: !805)
!805 = distinct !DILocation(line: 544, column: 3, scope: !722, inlinedAt: !727)
!806 = !DILocation(line: 116, column: 20, scope: !801, inlinedAt: !805)
!807 = !DILocation(line: 116, column: 13, scope: !801, inlinedAt: !805)
!808 = !DILocation(line: 117, column: 7, scope: !809, inlinedAt: !805)
!809 = distinct !DILexicalBlock(scope: !801, file: !1, line: 117, column: 7)
!810 = !DILocation(line: 117, column: 7, scope: !801, inlinedAt: !805)
!811 = !DILocation(line: 119, column: 18, scope: !812, inlinedAt: !805)
!812 = distinct !DILexicalBlock(scope: !813, file: !1, line: 118, column: 8)
!813 = distinct !DILexicalBlock(scope: !809, file: !1, line: 117, column: 10)
!814 = !DILocation(line: 0, scope: !812, inlinedAt: !805)
!815 = !DILocation(line: 120, column: 7, scope: !812, inlinedAt: !805)
!816 = !DILocation(line: 121, column: 7, scope: !812, inlinedAt: !805)
!817 = !DILocation(line: 122, column: 22, scope: !813, inlinedAt: !805)
!818 = !DILocation(line: 122, column: 16, scope: !813, inlinedAt: !805)
!819 = !DILocation(line: 122, column: 5, scope: !812, inlinedAt: !805)
!820 = distinct !{!820, !821, !822}
!821 = !DILocation(line: 118, column: 5, scope: !813)
!822 = !DILocation(line: 122, column: 29, scope: !813)
!823 = !DILocation(line: 323, column: 43, scope: !759, inlinedAt: !824)
!824 = distinct !DILocation(line: 545, column: 13, scope: !722, inlinedAt: !727)
!825 = !DILocation(line: 324, column: 10, scope: !759, inlinedAt: !824)
!826 = !DILocation(line: 325, column: 13, scope: !759, inlinedAt: !824)
!827 = !DILocation(line: 325, column: 3, scope: !759, inlinedAt: !824)
!828 = !DILocation(line: 325, column: 24, scope: !759, inlinedAt: !824)
!829 = !DILocation(line: 325, column: 21, scope: !759, inlinedAt: !824)
!830 = !DILocation(line: 0, scope: !759, inlinedAt: !824)
!831 = !DILocation(line: 546, column: 17, scope: !722, inlinedAt: !727)
!832 = !DILocalVariable(name: "l", arg: 1, scope: !833, file: !1, line: 351, type: !36)
!833 = distinct !DISubprogram(name: "cleartable", scope: !1, file: !1, line: 351, type: !834, isLocal: true, isDefinition: true, scopeLine: 351, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !836)
!834 = !DISubroutineType(types: !835)
!835 = !{null, !36}
!836 = !{!832, !837, !841, !842, !846}
!837 = !DILocalVariable(name: "h", scope: !838, file: !1, line: 353, type: !839)
!838 = distinct !DILexicalBlock(scope: !833, file: !1, line: 352, column: 13)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_typedef, name: "Table", file: !38, line: 348, baseType: !82)
!841 = !DILocalVariable(name: "i", scope: !838, file: !1, line: 354, type: !105)
!842 = !DILocalVariable(name: "o", scope: !843, file: !1, line: 359, type: !91)
!843 = distinct !DILexicalBlock(scope: !844, file: !1, line: 358, column: 19)
!844 = distinct !DILexicalBlock(scope: !845, file: !1, line: 357, column: 43)
!845 = distinct !DILexicalBlock(scope: !838, file: !1, line: 357, column: 9)
!846 = !DILocalVariable(name: "n", scope: !847, file: !1, line: 366, type: !108)
!847 = distinct !DILexicalBlock(scope: !838, file: !1, line: 365, column: 17)
!848 = !DILocation(line: 351, column: 35, scope: !833, inlinedAt: !849)
!849 = distinct !DILocation(line: 546, column: 3, scope: !722, inlinedAt: !727)
!850 = !DILocation(line: 352, column: 3, scope: !833, inlinedAt: !849)
!851 = !DILocation(line: 353, column: 16, scope: !838, inlinedAt: !849)
!852 = !DILocation(line: 353, column: 12, scope: !838, inlinedAt: !849)
!853 = !DILocation(line: 354, column: 16, scope: !838, inlinedAt: !849)
!854 = !{!411, !381, i64 56}
!855 = !DILocation(line: 354, column: 9, scope: !838, inlinedAt: !849)
!856 = !DILocation(line: 357, column: 9, scope: !845, inlinedAt: !849)
!857 = !{!411, !379, i64 9}
!858 = !DILocation(line: 358, column: 7, scope: !844, inlinedAt: !849)
!859 = !DILocation(line: 357, column: 9, scope: !838, inlinedAt: !849)
!860 = !DILocation(line: 358, column: 15, scope: !844, inlinedAt: !849)
!861 = !DILocation(line: 359, column: 25, scope: !843, inlinedAt: !849)
!862 = !{!411, !378, i64 24}
!863 = !DILocalVariable(name: "iskey", arg: 2, scope: !864, file: !1, line: 337, type: !105)
!864 = distinct !DISubprogram(name: "iscleared", scope: !1, file: !1, line: 337, type: !865, isLocal: true, isDefinition: true, scopeLine: 337, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !867)
!865 = !DISubroutineType(types: !866)
!866 = !{!105, !466, !105}
!867 = !{!868, !863}
!868 = !DILocalVariable(name: "o", arg: 1, scope: !864, file: !1, line: 337, type: !466)
!869 = !DILocation(line: 337, column: 44, scope: !864, inlinedAt: !870)
!870 = distinct !DILocation(line: 360, column: 13, scope: !871, inlinedAt: !849)
!871 = distinct !DILexicalBlock(scope: !843, file: !1, line: 360, column: 13)
!872 = !DILocation(line: 338, column: 8, scope: !873, inlinedAt: !870)
!873 = distinct !DILexicalBlock(scope: !864, file: !1, line: 338, column: 7)
!874 = !DILocation(line: 338, column: 7, scope: !864, inlinedAt: !870)
!875 = !DILocation(line: 339, column: 7, scope: !876, inlinedAt: !870)
!876 = distinct !DILexicalBlock(scope: !864, file: !1, line: 339, column: 7)
!877 = !DILocation(line: 0, scope: !864, inlinedAt: !870)
!878 = !DILocation(line: 339, column: 7, scope: !864, inlinedAt: !870)
!879 = !DILocation(line: 340, column: 5, scope: !880, inlinedAt: !870)
!880 = distinct !DILexicalBlock(scope: !876, file: !1, line: 339, column: 22)
!881 = !DILocation(line: 341, column: 5, scope: !880, inlinedAt: !870)
!882 = !DILocation(line: 343, column: 10, scope: !864, inlinedAt: !870)
!883 = !DILocation(line: 343, column: 30, scope: !864, inlinedAt: !870)
!884 = !DILocation(line: 344, column: 6, scope: !864, inlinedAt: !870)
!885 = !DILocation(line: 360, column: 13, scope: !871, inlinedAt: !849)
!886 = !DILocation(line: 344, column: 22, scope: !864, inlinedAt: !870)
!887 = !DILocation(line: 361, column: 11, scope: !871, inlinedAt: !849)
!888 = distinct !{!888, !889, !890}
!889 = !DILocation(line: 358, column: 7, scope: !844)
!890 = !DILocation(line: 362, column: 7, scope: !844)
!891 = !DILocation(line: 364, column: 9, scope: !838, inlinedAt: !849)
!892 = !{!411, !379, i64 11}
!893 = !DILocation(line: 365, column: 13, scope: !838, inlinedAt: !849)
!894 = !DILocation(line: 365, column: 5, scope: !838, inlinedAt: !849)
!895 = !DILocation(line: 366, column: 17, scope: !847, inlinedAt: !849)
!896 = !{!411, !378, i64 32}
!897 = !DILocation(line: 367, column: 12, scope: !898, inlinedAt: !849)
!898 = distinct !DILexicalBlock(scope: !847, file: !1, line: 367, column: 11)
!899 = !{!900, !381, i64 8}
!900 = !{!"Node", !383, i64 0, !379, i64 16}
!901 = !DILocation(line: 367, column: 29, scope: !898, inlinedAt: !849)
!902 = !DILocation(line: 337, column: 44, scope: !864, inlinedAt: !903)
!903 = distinct !DILocation(line: 368, column: 12, scope: !898, inlinedAt: !849)
!904 = !DILocation(line: 338, column: 8, scope: !873, inlinedAt: !903)
!905 = !DILocation(line: 338, column: 7, scope: !864, inlinedAt: !903)
!906 = !DILocation(line: 339, column: 7, scope: !876, inlinedAt: !903)
!907 = !DILocation(line: 0, scope: !864, inlinedAt: !903)
!908 = !DILocation(line: 339, column: 7, scope: !864, inlinedAt: !903)
!909 = !DILocation(line: 340, column: 5, scope: !880, inlinedAt: !903)
!910 = !DILocation(line: 338, column: 8, scope: !873, inlinedAt: !911)
!911 = distinct !DILocation(line: 368, column: 41, scope: !898, inlinedAt: !849)
!912 = !DILocation(line: 341, column: 5, scope: !880, inlinedAt: !903)
!913 = !DILocation(line: 343, column: 10, scope: !864, inlinedAt: !903)
!914 = !DILocation(line: 343, column: 30, scope: !864, inlinedAt: !903)
!915 = !DILocation(line: 337, column: 44, scope: !864, inlinedAt: !911)
!916 = !DILocation(line: 338, column: 7, scope: !864, inlinedAt: !911)
!917 = !DILocation(line: 339, column: 7, scope: !876, inlinedAt: !911)
!918 = !DILocation(line: 0, scope: !864, inlinedAt: !911)
!919 = !DILocation(line: 339, column: 7, scope: !864, inlinedAt: !911)
!920 = !DILocation(line: 340, column: 5, scope: !880, inlinedAt: !911)
!921 = !DILocation(line: 341, column: 5, scope: !880, inlinedAt: !911)
!922 = !DILocation(line: 343, column: 10, scope: !864, inlinedAt: !911)
!923 = !DILocation(line: 343, column: 30, scope: !864, inlinedAt: !911)
!924 = !DILocation(line: 344, column: 6, scope: !864, inlinedAt: !911)
!925 = !DILocation(line: 368, column: 41, scope: !898, inlinedAt: !849)
!926 = !DILocation(line: 344, column: 22, scope: !864, inlinedAt: !911)
!927 = !DILocation(line: 369, column: 9, scope: !928, inlinedAt: !849)
!928 = distinct !DILexicalBlock(scope: !898, file: !1, line: 368, column: 65)
!929 = !DILocation(line: 64, column: 7, scope: !930, inlinedAt: !936)
!930 = distinct !DILexicalBlock(scope: !931, file: !1, line: 64, column: 7)
!931 = distinct !DISubprogram(name: "removeentry", scope: !1, file: !1, line: 62, type: !932, isLocal: true, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !934)
!932 = !DISubroutineType(types: !933)
!933 = !{null, !108}
!934 = !{!935}
!935 = !DILocalVariable(name: "n", arg: 1, scope: !931, file: !1, line: 62, type: !108)
!936 = distinct !DILocation(line: 370, column: 9, scope: !928, inlinedAt: !849)
!937 = !DILocation(line: 64, column: 7, scope: !931, inlinedAt: !936)
!938 = !DILocation(line: 65, column: 5, scope: !930, inlinedAt: !936)
!939 = distinct !{!939, !940, !941}
!940 = !DILocation(line: 365, column: 5, scope: !838)
!941 = !DILocation(line: 372, column: 5, scope: !838)
!942 = !DILocation(line: 373, column: 12, scope: !838, inlinedAt: !849)
!943 = !{!411, !378, i64 48}
!944 = distinct !{!944, !945, !946}
!945 = !DILocation(line: 352, column: 3, scope: !833)
!946 = !DILocation(line: 374, column: 3, scope: !833)
!947 = !DILocation(line: 548, column: 21, scope: !722, inlinedAt: !727)
!948 = !DILocation(line: 548, column: 19, scope: !722, inlinedAt: !727)
!949 = !DILocation(line: 549, column: 6, scope: !722, inlinedAt: !727)
!950 = !DILocation(line: 549, column: 17, scope: !722, inlinedAt: !727)
!951 = !{!389, !381, i64 36}
!952 = !DILocation(line: 550, column: 20, scope: !722, inlinedAt: !727)
!953 = !DILocation(line: 550, column: 6, scope: !722, inlinedAt: !727)
!954 = !DILocation(line: 550, column: 14, scope: !722, inlinedAt: !727)
!955 = !{!389, !378, i64 48}
!956 = !DILocation(line: 551, column: 14, scope: !722, inlinedAt: !727)
!957 = !DILocation(line: 552, column: 20, scope: !722, inlinedAt: !727)
!958 = !DILocation(line: 545, column: 10, scope: !722, inlinedAt: !727)
!959 = !DILocation(line: 552, column: 31, scope: !722, inlinedAt: !727)
!960 = !DILocation(line: 552, column: 6, scope: !722, inlinedAt: !727)
!961 = !DILocation(line: 552, column: 15, scope: !722, inlinedAt: !727)
!962 = !DILocation(line: 569, column: 9, scope: !728)
!963 = !DILocation(line: 573, column: 23, scope: !701)
!964 = !DILocation(line: 573, column: 14, scope: !701)
!965 = !DILocation(line: 574, column: 7, scope: !701)
!966 = !DILocation(line: 575, column: 14, scope: !967)
!967 = distinct !DILexicalBlock(scope: !701, file: !1, line: 575, column: 11)
!968 = !DILocation(line: 575, column: 36, scope: !967)
!969 = !DILocation(line: 575, column: 25, scope: !967)
!970 = !DILocation(line: 575, column: 11, scope: !701)
!971 = !DILocation(line: 576, column: 20, scope: !967)
!972 = !DILocation(line: 576, column: 9, scope: !967)
!973 = !DILocation(line: 578, column: 31, scope: !701)
!974 = !DILocation(line: 578, column: 10, scope: !701)
!975 = !DILocation(line: 578, column: 19, scope: !701)
!976 = !DILocation(line: 582, column: 23, scope: !704)
!977 = !DILocation(line: 582, column: 14, scope: !704)
!978 = !DILocation(line: 583, column: 36, scope: !704)
!979 = !DILocation(line: 583, column: 20, scope: !704)
!980 = !DILocation(line: 583, column: 18, scope: !704)
!981 = !DILocation(line: 584, column: 11, scope: !982)
!982 = distinct !DILexicalBlock(scope: !704, file: !1, line: 584, column: 11)
!983 = !DILocation(line: 584, column: 23, scope: !982)
!984 = !DILocation(line: 584, column: 11, scope: !704)
!985 = !DILocalVariable(name: "L", arg: 1, scope: !986, file: !1, line: 431, type: !149)
!986 = distinct !DISubprogram(name: "checkSizes", scope: !1, file: !1, line: 431, type: !445, isLocal: true, isDefinition: true, scopeLine: 431, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !987)
!987 = !{!985, !988, !989}
!988 = !DILocalVariable(name: "g", scope: !986, file: !1, line: 432, type: !161)
!989 = !DILocalVariable(name: "newsize", scope: !990, file: !1, line: 439, type: !29)
!990 = distinct !DILexicalBlock(scope: !991, file: !1, line: 438, column: 52)
!991 = distinct !DILexicalBlock(scope: !986, file: !1, line: 438, column: 7)
!992 = !DILocation(line: 431, column: 36, scope: !986, inlinedAt: !993)
!993 = distinct !DILocation(line: 585, column: 9, scope: !994)
!994 = distinct !DILexicalBlock(scope: !982, file: !1, line: 584, column: 32)
!995 = !DILocation(line: 432, column: 21, scope: !986, inlinedAt: !993)
!996 = !DILocation(line: 432, column: 17, scope: !986, inlinedAt: !993)
!997 = !DILocation(line: 434, column: 15, scope: !998, inlinedAt: !993)
!998 = distinct !DILexicalBlock(scope: !986, file: !1, line: 434, column: 7)
!999 = !DILocation(line: 434, column: 22, scope: !998, inlinedAt: !993)
!1000 = !DILocation(line: 434, column: 20, scope: !998, inlinedAt: !993)
!1001 = !DILocation(line: 435, column: 20, scope: !998, inlinedAt: !993)
!1002 = !DILocation(line: 434, column: 53, scope: !998, inlinedAt: !993)
!1003 = !DILocation(line: 436, column: 5, scope: !998, inlinedAt: !993)
!1004 = !DILocation(line: 438, column: 7, scope: !991, inlinedAt: !993)
!1005 = !{!389, !384, i64 104}
!1006 = !DILocation(line: 438, column: 33, scope: !991, inlinedAt: !993)
!1007 = !DILocation(line: 438, column: 7, scope: !986, inlinedAt: !993)
!1008 = !DILocation(line: 439, column: 48, scope: !990, inlinedAt: !993)
!1009 = !DILocation(line: 439, column: 12, scope: !990, inlinedAt: !993)
!1010 = !DILocation(line: 440, column: 5, scope: !990, inlinedAt: !993)
!1011 = !{!389, !378, i64 88}
!1012 = !DILocation(line: 441, column: 3, scope: !990, inlinedAt: !993)
!1013 = !DILocation(line: 586, column: 20, scope: !994)
!1014 = !DILocation(line: 587, column: 7, scope: !994)
!1015 = !DILocation(line: 589, column: 31, scope: !704)
!1016 = !DILocation(line: 589, column: 10, scope: !704)
!1017 = !DILocation(line: 589, column: 19, scope: !704)
!1018 = !DILocation(line: 593, column: 14, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1020, file: !1, line: 593, column: 11)
!1020 = distinct !DILexicalBlock(scope: !702, file: !1, line: 592, column: 23)
!1021 = !DILocation(line: 593, column: 11, scope: !1019)
!1022 = !DILocation(line: 593, column: 11, scope: !1020)
!1023 = !DILocation(line: 594, column: 9, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !1019, file: !1, line: 593, column: 23)
!1025 = !DILocation(line: 595, column: 16, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1024, file: !1, line: 595, column: 13)
!1027 = !DILocation(line: 595, column: 25, scope: !1026)
!1028 = !DILocation(line: 595, column: 13, scope: !1024)
!1029 = !DILocation(line: 596, column: 23, scope: !1026)
!1030 = !DILocation(line: 596, column: 11, scope: !1026)
!1031 = !DILocation(line: 600, column: 20, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1019, file: !1, line: 599, column: 12)
!1033 = !DILocation(line: 601, column: 12, scope: !1032)
!1034 = !DILocation(line: 601, column: 19, scope: !1032)
!1035 = !DILocation(line: 602, column: 9, scope: !1032)
!1036 = !DILocation(line: 0, scope: !711)
!1037 = !DILocation(line: 607, column: 1, scope: !694)
!1038 = distinct !DISubprogram(name: "luaC_fullgc", scope: !1, file: !1, line: 635, type: !445, isLocal: false, isDefinition: true, scopeLine: 635, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1039)
!1039 = !{!1040, !1041}
!1040 = !DILocalVariable(name: "L", arg: 1, scope: !1038, file: !1, line: 635, type: !149)
!1041 = !DILocalVariable(name: "g", scope: !1038, file: !1, line: 636, type: !161)
!1042 = !DILocation(line: 635, column: 30, scope: !1038)
!1043 = !DILocation(line: 636, column: 21, scope: !1038)
!1044 = !DILocation(line: 636, column: 17, scope: !1038)
!1045 = !DILocation(line: 637, column: 10, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1038, file: !1, line: 637, column: 7)
!1047 = !DILocation(line: 637, column: 18, scope: !1046)
!1048 = !DILocation(line: 637, column: 7, scope: !1038)
!1049 = !DILocation(line: 639, column: 8, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1046, file: !1, line: 637, column: 35)
!1051 = !DILocation(line: 639, column: 19, scope: !1050)
!1052 = !DILocation(line: 640, column: 22, scope: !1050)
!1053 = !DILocation(line: 640, column: 8, scope: !1050)
!1054 = !DILocation(line: 640, column: 16, scope: !1050)
!1055 = !DILocation(line: 642, column: 8, scope: !1050)
!1056 = !DILocation(line: 642, column: 13, scope: !1050)
!1057 = !DILocation(line: 644, column: 8, scope: !1050)
!1058 = !DILocation(line: 644, column: 13, scope: !1050)
!1059 = !DILocation(line: 645, column: 16, scope: !1050)
!1060 = !DILocation(line: 649, column: 3, scope: !1038)
!1061 = !DILocation(line: 649, column: 21, scope: !1038)
!1062 = !DILocation(line: 651, column: 5, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1038, file: !1, line: 649, column: 37)
!1064 = !DILocation(line: 649, column: 13, scope: !1038)
!1065 = distinct !{!1065, !1060, !1066}
!1066 = !DILocation(line: 652, column: 3, scope: !1038)
!1067 = !DILocation(line: 653, column: 3, scope: !1038)
!1068 = !DILocation(line: 654, column: 13, scope: !1038)
!1069 = !DILocation(line: 654, column: 21, scope: !1038)
!1070 = !DILocation(line: 654, column: 3, scope: !1038)
!1071 = !DILocation(line: 655, column: 5, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1038, file: !1, line: 654, column: 34)
!1073 = distinct !{!1073, !1070, !1074}
!1074 = !DILocation(line: 656, column: 3, scope: !1038)
!1075 = !DILocation(line: 657, column: 3, scope: !1038)
!1076 = !DILocation(line: 658, column: 1, scope: !1038)
!1077 = distinct !DISubprogram(name: "markroot", scope: !1, file: !1, line: 501, type: !445, isLocal: true, isDefinition: true, scopeLine: 501, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1078)
!1078 = !{!1079, !1080}
!1079 = !DILocalVariable(name: "L", arg: 1, scope: !1077, file: !1, line: 501, type: !149)
!1080 = !DILocalVariable(name: "g", scope: !1077, file: !1, line: 502, type: !161)
!1081 = !DILocation(line: 501, column: 34, scope: !1077)
!1082 = !DILocation(line: 502, column: 21, scope: !1077)
!1083 = !DILocation(line: 502, column: 17, scope: !1077)
!1084 = !DILocation(line: 503, column: 6, scope: !1077)
!1085 = !DILocation(line: 503, column: 11, scope: !1077)
!1086 = !DILocation(line: 505, column: 6, scope: !1077)
!1087 = !DILocation(line: 505, column: 11, scope: !1077)
!1088 = !DILocation(line: 506, column: 3, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1090, file: !1, line: 506, column: 3)
!1090 = distinct !DILexicalBlock(scope: !1077, file: !1, line: 506, column: 3)
!1091 = !DILocation(line: 506, column: 3, scope: !1090)
!1092 = !DILocation(line: 508, column: 3, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1094, file: !1, line: 508, column: 3)
!1094 = distinct !DILexicalBlock(scope: !1077, file: !1, line: 508, column: 3)
!1095 = !{!377, !381, i64 128}
!1096 = !DILocation(line: 508, column: 3, scope: !1094)
!1097 = !DILocation(line: 509, column: 3, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1099, file: !1, line: 509, column: 3)
!1099 = distinct !DILexicalBlock(scope: !1077, file: !1, line: 509, column: 3)
!1100 = !{!389, !381, i64 168}
!1101 = !DILocation(line: 509, column: 3, scope: !1099)
!1102 = !DILocation(line: 510, column: 3, scope: !1077)
!1103 = !DILocation(line: 511, column: 6, scope: !1077)
!1104 = !DILocation(line: 511, column: 14, scope: !1077)
!1105 = !DILocation(line: 512, column: 1, scope: !1077)
!1106 = distinct !DISubprogram(name: "luaC_barrierf", scope: !1, file: !1, line: 661, type: !1107, isLocal: false, isDefinition: true, scopeLine: 661, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1109)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{null, !149, !36, !36}
!1109 = !{!1110, !1111, !1112, !1113}
!1110 = !DILocalVariable(name: "L", arg: 1, scope: !1106, file: !1, line: 661, type: !149)
!1111 = !DILocalVariable(name: "o", arg: 2, scope: !1106, file: !1, line: 661, type: !36)
!1112 = !DILocalVariable(name: "v", arg: 3, scope: !1106, file: !1, line: 661, type: !36)
!1113 = !DILocalVariable(name: "g", scope: !1106, file: !1, line: 662, type: !161)
!1114 = !DILocation(line: 661, column: 32, scope: !1106)
!1115 = !DILocation(line: 661, column: 45, scope: !1106)
!1116 = !DILocation(line: 661, column: 58, scope: !1106)
!1117 = !DILocation(line: 662, column: 21, scope: !1106)
!1118 = !DILocation(line: 662, column: 17, scope: !1106)
!1119 = !DILocation(line: 667, column: 10, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1106, file: !1, line: 667, column: 7)
!1121 = !DILocation(line: 667, column: 18, scope: !1120)
!1122 = !DILocation(line: 667, column: 7, scope: !1106)
!1123 = !DILocation(line: 668, column: 5, scope: !1120)
!1124 = !DILocation(line: 670, column: 5, scope: !1120)
!1125 = !DILocation(line: 671, column: 1, scope: !1106)
!1126 = distinct !DISubprogram(name: "reallymarkobject", scope: !1, file: !1, line: 69, type: !1127, isLocal: true, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1129)
!1127 = !DISubroutineType(types: !1128)
!1128 = !{null, !161, !36}
!1129 = !{!1130, !1131, !1132, !1135}
!1130 = !DILocalVariable(name: "g", arg: 1, scope: !1126, file: !1, line: 69, type: !161)
!1131 = !DILocalVariable(name: "o", arg: 2, scope: !1126, file: !1, line: 69, type: !36)
!1132 = !DILocalVariable(name: "mt", scope: !1133, file: !1, line: 77, type: !839)
!1133 = distinct !DILexicalBlock(scope: !1134, file: !1, line: 76, column: 25)
!1134 = distinct !DILexicalBlock(scope: !1126, file: !1, line: 72, column: 22)
!1135 = !DILocalVariable(name: "uv", scope: !1136, file: !1, line: 84, type: !354)
!1136 = distinct !DILexicalBlock(scope: !1134, file: !1, line: 83, column: 22)
!1137 = !DILocation(line: 71, column: 3, scope: !1126)
!1138 = !DILocation(line: 69, column: 45, scope: !1126)
!1139 = !DILocation(line: 69, column: 58, scope: !1126)
!1140 = !DILocation(line: 72, column: 18, scope: !1126)
!1141 = !DILocation(line: 72, column: 3, scope: !1126)
!1142 = !DILocation(line: 77, column: 29, scope: !1133)
!1143 = !DILocation(line: 77, column: 14, scope: !1133)
!1144 = !DILocation(line: 78, column: 7, scope: !1133)
!1145 = !DILocation(line: 79, column: 11, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1133, file: !1, line: 79, column: 11)
!1147 = !DILocation(line: 79, column: 11, scope: !1133)
!1148 = !DILocation(line: 79, column: 15, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1150, file: !1, line: 79, column: 15)
!1150 = distinct !DILexicalBlock(scope: !1146, file: !1, line: 79, column: 15)
!1151 = !DILocation(line: 79, column: 15, scope: !1150)
!1152 = !DILocation(line: 80, column: 7, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1154, file: !1, line: 80, column: 7)
!1154 = distinct !DILexicalBlock(scope: !1133, file: !1, line: 80, column: 7)
!1155 = !DILocation(line: 80, column: 7, scope: !1154)
!1156 = !DILocation(line: 84, column: 14, scope: !1136)
!1157 = !DILocation(line: 85, column: 7, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1159, file: !1, line: 85, column: 7)
!1159 = distinct !DILexicalBlock(scope: !1136, file: !1, line: 85, column: 7)
!1160 = !DILocation(line: 85, column: 7, scope: !1159)
!1161 = !DILocation(line: 86, column: 15, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1136, file: !1, line: 86, column: 11)
!1163 = !DILocation(line: 86, column: 25, scope: !1162)
!1164 = !DILocation(line: 86, column: 27, scope: !1162)
!1165 = !DILocation(line: 86, column: 17, scope: !1162)
!1166 = !DILocation(line: 86, column: 11, scope: !1136)
!1167 = !DILocation(line: 87, column: 9, scope: !1162)
!1168 = !DILocation(line: 91, column: 32, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1134, file: !1, line: 90, column: 25)
!1170 = !DILocation(line: 91, column: 20, scope: !1169)
!1171 = !DILocation(line: 91, column: 27, scope: !1169)
!1172 = !DILocation(line: 92, column: 15, scope: !1169)
!1173 = !DILocation(line: 93, column: 7, scope: !1169)
!1174 = !DILocation(line: 96, column: 29, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1134, file: !1, line: 95, column: 22)
!1176 = !DILocation(line: 96, column: 17, scope: !1175)
!1177 = !DILocation(line: 96, column: 24, scope: !1175)
!1178 = !DILocation(line: 97, column: 15, scope: !1175)
!1179 = !DILocation(line: 98, column: 7, scope: !1175)
!1180 = !DILocation(line: 101, column: 30, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1134, file: !1, line: 100, column: 23)
!1182 = !DILocation(line: 101, column: 18, scope: !1181)
!1183 = !DILocation(line: 101, column: 25, scope: !1181)
!1184 = !DILocation(line: 102, column: 15, scope: !1181)
!1185 = !DILocation(line: 103, column: 7, scope: !1181)
!1186 = !DILocation(line: 106, column: 29, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1134, file: !1, line: 105, column: 22)
!1188 = !DILocation(line: 106, column: 17, scope: !1187)
!1189 = !DILocation(line: 106, column: 24, scope: !1187)
!1190 = !DILocation(line: 107, column: 15, scope: !1187)
!1191 = !DILocation(line: 108, column: 7, scope: !1187)
!1192 = !DILocation(line: 112, column: 1, scope: !1126)
!1193 = distinct !DISubprogram(name: "luaC_barrierback", scope: !1, file: !1, line: 674, type: !1194, isLocal: false, isDefinition: true, scopeLine: 674, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1196)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{null, !149, !839}
!1196 = !{!1197, !1198, !1199, !1200}
!1197 = !DILocalVariable(name: "L", arg: 1, scope: !1193, file: !1, line: 674, type: !149)
!1198 = !DILocalVariable(name: "t", arg: 2, scope: !1193, file: !1, line: 674, type: !839)
!1199 = !DILocalVariable(name: "g", scope: !1193, file: !1, line: 675, type: !161)
!1200 = !DILocalVariable(name: "o", scope: !1193, file: !1, line: 676, type: !36)
!1201 = !DILocation(line: 674, column: 35, scope: !1193)
!1202 = !DILocation(line: 674, column: 45, scope: !1193)
!1203 = !DILocation(line: 675, column: 21, scope: !1193)
!1204 = !DILocation(line: 675, column: 17, scope: !1193)
!1205 = !DILocation(line: 676, column: 13, scope: !1193)
!1206 = !DILocation(line: 679, column: 3, scope: !1193)
!1207 = !DILocation(line: 680, column: 18, scope: !1193)
!1208 = !DILocation(line: 680, column: 6, scope: !1193)
!1209 = !DILocation(line: 680, column: 13, scope: !1193)
!1210 = !DILocation(line: 681, column: 16, scope: !1193)
!1211 = !DILocation(line: 682, column: 1, scope: !1193)
!1212 = distinct !DISubprogram(name: "luaC_link", scope: !1, file: !1, line: 685, type: !1213, isLocal: false, isDefinition: true, scopeLine: 685, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1215)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{null, !149, !36, !34}
!1215 = !{!1216, !1217, !1218, !1219}
!1216 = !DILocalVariable(name: "L", arg: 1, scope: !1212, file: !1, line: 685, type: !149)
!1217 = !DILocalVariable(name: "o", arg: 2, scope: !1212, file: !1, line: 685, type: !36)
!1218 = !DILocalVariable(name: "tt", arg: 3, scope: !1212, file: !1, line: 685, type: !34)
!1219 = !DILocalVariable(name: "g", scope: !1212, file: !1, line: 686, type: !161)
!1220 = !DILocation(line: 685, column: 28, scope: !1212)
!1221 = !DILocation(line: 685, column: 41, scope: !1212)
!1222 = !DILocation(line: 685, column: 52, scope: !1212)
!1223 = !DILocation(line: 686, column: 21, scope: !1212)
!1224 = !DILocation(line: 686, column: 17, scope: !1212)
!1225 = !DILocation(line: 687, column: 20, scope: !1212)
!1226 = !DILocation(line: 687, column: 15, scope: !1212)
!1227 = !DILocation(line: 688, column: 13, scope: !1212)
!1228 = !DILocation(line: 689, column: 19, scope: !1212)
!1229 = !DILocation(line: 689, column: 10, scope: !1212)
!1230 = !DILocation(line: 689, column: 17, scope: !1212)
!1231 = !DILocation(line: 690, column: 10, scope: !1212)
!1232 = !DILocation(line: 690, column: 13, scope: !1212)
!1233 = !DILocation(line: 691, column: 1, scope: !1212)
!1234 = distinct !DISubprogram(name: "luaC_linkupval", scope: !1, file: !1, line: 694, type: !1235, isLocal: false, isDefinition: true, scopeLine: 694, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1237)
!1235 = !DISubroutineType(types: !1236)
!1236 = !{null, !149, !354}
!1237 = !{!1238, !1239, !1240, !1241}
!1238 = !DILocalVariable(name: "L", arg: 1, scope: !1234, file: !1, line: 694, type: !149)
!1239 = !DILocalVariable(name: "uv", arg: 2, scope: !1234, file: !1, line: 694, type: !354)
!1240 = !DILocalVariable(name: "g", scope: !1234, file: !1, line: 695, type: !161)
!1241 = !DILocalVariable(name: "o", scope: !1234, file: !1, line: 696, type: !36)
!1242 = !DILocation(line: 694, column: 33, scope: !1234)
!1243 = !DILocation(line: 694, column: 43, scope: !1234)
!1244 = !DILocation(line: 695, column: 21, scope: !1234)
!1245 = !DILocation(line: 695, column: 17, scope: !1234)
!1246 = !DILocation(line: 696, column: 13, scope: !1234)
!1247 = !DILocation(line: 697, column: 20, scope: !1234)
!1248 = !DILocation(line: 697, column: 15, scope: !1234)
!1249 = !DILocation(line: 698, column: 13, scope: !1234)
!1250 = !DILocation(line: 699, column: 7, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1234, file: !1, line: 699, column: 7)
!1252 = !DILocation(line: 700, column: 12, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1254, file: !1, line: 700, column: 9)
!1254 = distinct !DILexicalBlock(scope: !1251, file: !1, line: 699, column: 18)
!1255 = !DILocation(line: 700, column: 20, scope: !1253)
!1256 = !DILocation(line: 700, column: 9, scope: !1254)
!1257 = !DILocation(line: 701, column: 7, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1253, file: !1, line: 700, column: 37)
!1259 = !DILocation(line: 702, column: 7, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1261, file: !1, line: 702, column: 7)
!1261 = distinct !DILexicalBlock(scope: !1258, file: !1, line: 702, column: 7)
!1262 = !DILocation(line: 661, column: 32, scope: !1106, inlinedAt: !1263)
!1263 = distinct !DILocation(line: 702, column: 7, scope: !1260)
!1264 = !DILocation(line: 661, column: 45, scope: !1106, inlinedAt: !1263)
!1265 = !DILocation(line: 661, column: 58, scope: !1106, inlinedAt: !1263)
!1266 = !DILocation(line: 662, column: 21, scope: !1106, inlinedAt: !1263)
!1267 = !DILocation(line: 662, column: 17, scope: !1106, inlinedAt: !1263)
!1268 = !DILocation(line: 667, column: 10, scope: !1120, inlinedAt: !1263)
!1269 = !DILocation(line: 667, column: 18, scope: !1120, inlinedAt: !1263)
!1270 = !DILocation(line: 667, column: 7, scope: !1106, inlinedAt: !1263)
!1271 = !DILocation(line: 668, column: 5, scope: !1120, inlinedAt: !1263)
!1272 = !DILocation(line: 670, column: 5, scope: !1120, inlinedAt: !1263)
!1273 = !DILocation(line: 705, column: 7, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1253, file: !1, line: 704, column: 10)
!1275 = !DILocation(line: 709, column: 1, scope: !1234)
!1276 = distinct !DISubprogram(name: "propagatemark", scope: !1, file: !1, line: 277, type: !1277, isLocal: true, isDefinition: true, scopeLine: 277, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1279)
!1277 = !DISubroutineType(types: !1278)
!1278 = !{!644, !161}
!1279 = !{!1280, !1281, !1282, !1285, !1289, !1291}
!1280 = !DILocalVariable(name: "g", arg: 1, scope: !1276, file: !1, line: 277, type: !161)
!1281 = !DILocalVariable(name: "o", scope: !1276, file: !1, line: 278, type: !36)
!1282 = !DILocalVariable(name: "h", scope: !1283, file: !1, line: 283, type: !839)
!1283 = distinct !DILexicalBlock(scope: !1284, file: !1, line: 282, column: 22)
!1284 = distinct !DILexicalBlock(scope: !1276, file: !1, line: 281, column: 22)
!1285 = !DILocalVariable(name: "cl", scope: !1286, file: !1, line: 291, type: !1287)
!1286 = distinct !DILexicalBlock(scope: !1284, file: !1, line: 290, column: 25)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_typedef, name: "Closure", file: !38, line: 312, baseType: !131)
!1289 = !DILocalVariable(name: "th", scope: !1290, file: !1, line: 298, type: !149)
!1290 = distinct !DILexicalBlock(scope: !1284, file: !1, line: 297, column: 23)
!1291 = !DILocalVariable(name: "p", scope: !1292, file: !1, line: 308, type: !1293)
!1292 = distinct !DILexicalBlock(scope: !1284, file: !1, line: 307, column: 22)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_typedef, name: "Proto", file: !38, line: 253, baseType: !317)
!1295 = !DILocation(line: 277, column: 43, scope: !1276)
!1296 = !DILocation(line: 278, column: 20, scope: !1276)
!1297 = !DILocation(line: 278, column: 13, scope: !1276)
!1298 = !DILocation(line: 280, column: 3, scope: !1276)
!1299 = !DILocation(line: 281, column: 18, scope: !1276)
!1300 = !DILocation(line: 281, column: 3, scope: !1276)
!1301 = !DILocation(line: 283, column: 18, scope: !1283)
!1302 = !DILocation(line: 283, column: 14, scope: !1283)
!1303 = !DILocation(line: 284, column: 20, scope: !1283)
!1304 = !DILocation(line: 284, column: 15, scope: !1283)
!1305 = !DILocalVariable(name: "g", arg: 1, scope: !1306, file: !1, line: 158, type: !161)
!1306 = distinct !DISubprogram(name: "traversetable", scope: !1, file: !1, line: 158, type: !1307, isLocal: true, isDefinition: true, scopeLine: 158, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1309)
!1307 = !DISubroutineType(types: !1308)
!1308 = !{!105, !161, !839}
!1309 = !{!1305, !1310, !1311, !1312, !1313, !1314, !1315}
!1310 = !DILocalVariable(name: "h", arg: 2, scope: !1306, file: !1, line: 158, type: !839)
!1311 = !DILocalVariable(name: "i", scope: !1306, file: !1, line: 159, type: !105)
!1312 = !DILocalVariable(name: "weakkey", scope: !1306, file: !1, line: 160, type: !105)
!1313 = !DILocalVariable(name: "weakvalue", scope: !1306, file: !1, line: 161, type: !105)
!1314 = !DILocalVariable(name: "mode", scope: !1306, file: !1, line: 162, type: !466)
!1315 = !DILocalVariable(name: "n", scope: !1316, file: !1, line: 185, type: !108)
!1316 = distinct !DILexicalBlock(scope: !1306, file: !1, line: 184, column: 15)
!1317 = !DILocation(line: 158, column: 41, scope: !1306, inlinedAt: !1318)
!1318 = distinct !DILocation(line: 285, column: 11, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1283, file: !1, line: 285, column: 11)
!1320 = !DILocation(line: 158, column: 51, scope: !1306, inlinedAt: !1318)
!1321 = !DILocation(line: 160, column: 7, scope: !1306, inlinedAt: !1318)
!1322 = !DILocation(line: 161, column: 7, scope: !1306, inlinedAt: !1318)
!1323 = !DILocation(line: 163, column: 10, scope: !1324, inlinedAt: !1318)
!1324 = distinct !DILexicalBlock(scope: !1306, file: !1, line: 163, column: 7)
!1325 = !{!411, !378, i64 16}
!1326 = !DILocation(line: 163, column: 7, scope: !1324, inlinedAt: !1318)
!1327 = !DILocation(line: 163, column: 7, scope: !1306, inlinedAt: !1318)
!1328 = !DILocation(line: 164, column: 5, scope: !1329, inlinedAt: !1318)
!1329 = distinct !DILexicalBlock(scope: !1330, file: !1, line: 164, column: 5)
!1330 = distinct !DILexicalBlock(scope: !1324, file: !1, line: 164, column: 5)
!1331 = !DILocation(line: 164, column: 5, scope: !1330, inlinedAt: !1318)
!1332 = !DILocation(line: 165, column: 10, scope: !1306, inlinedAt: !1318)
!1333 = !DILocation(line: 162, column: 17, scope: !1306, inlinedAt: !1318)
!1334 = !DILocation(line: 166, column: 7, scope: !1335, inlinedAt: !1318)
!1335 = distinct !DILexicalBlock(scope: !1306, file: !1, line: 166, column: 7)
!1336 = !DILocation(line: 166, column: 12, scope: !1335, inlinedAt: !1318)
!1337 = !DILocation(line: 166, column: 15, scope: !1335, inlinedAt: !1318)
!1338 = !DILocation(line: 166, column: 7, scope: !1306, inlinedAt: !1318)
!1339 = !DILocation(line: 167, column: 23, scope: !1340, inlinedAt: !1318)
!1340 = distinct !DILexicalBlock(scope: !1335, file: !1, line: 166, column: 33)
!1341 = !DILocation(line: 167, column: 16, scope: !1340, inlinedAt: !1318)
!1342 = !DILocation(line: 167, column: 42, scope: !1340, inlinedAt: !1318)
!1343 = !DILocation(line: 168, column: 25, scope: !1340, inlinedAt: !1318)
!1344 = !DILocation(line: 168, column: 18, scope: !1340, inlinedAt: !1318)
!1345 = !DILocation(line: 168, column: 44, scope: !1340, inlinedAt: !1318)
!1346 = !DILocation(line: 169, column: 17, scope: !1347, inlinedAt: !1318)
!1347 = distinct !DILexicalBlock(scope: !1340, file: !1, line: 169, column: 9)
!1348 = !DILocation(line: 170, column: 17, scope: !1349, inlinedAt: !1318)
!1349 = distinct !DILexicalBlock(scope: !1347, file: !1, line: 169, column: 31)
!1350 = !DILocation(line: 171, column: 20, scope: !1349, inlinedAt: !1318)
!1351 = !DILocation(line: 171, column: 17, scope: !1349, inlinedAt: !1318)
!1352 = !DILocation(line: 173, column: 22, scope: !1349, inlinedAt: !1318)
!1353 = !DILocation(line: 173, column: 17, scope: !1349, inlinedAt: !1318)
!1354 = !DILocation(line: 174, column: 15, scope: !1349, inlinedAt: !1318)
!1355 = !DILocation(line: 175, column: 5, scope: !1349, inlinedAt: !1318)
!1356 = !DILocation(line: 177, column: 15, scope: !1357, inlinedAt: !1318)
!1357 = distinct !DILexicalBlock(scope: !1306, file: !1, line: 177, column: 7)
!1358 = !DILocation(line: 288, column: 45, scope: !1283)
!1359 = !DILocation(line: 178, column: 7, scope: !1306, inlinedAt: !1318)
!1360 = !DILocation(line: 179, column: 12, scope: !1361, inlinedAt: !1318)
!1361 = distinct !DILexicalBlock(scope: !1362, file: !1, line: 178, column: 19)
!1362 = distinct !DILexicalBlock(scope: !1306, file: !1, line: 178, column: 7)
!1363 = !DILocation(line: 159, column: 7, scope: !1306, inlinedAt: !1318)
!1364 = !DILocation(line: 180, column: 5, scope: !1361, inlinedAt: !1318)
!1365 = !DILocation(line: 180, column: 13, scope: !1361, inlinedAt: !1318)
!1366 = !DILocation(line: 181, column: 7, scope: !1367, inlinedAt: !1318)
!1367 = distinct !DILexicalBlock(scope: !1368, file: !1, line: 181, column: 7)
!1368 = distinct !DILexicalBlock(scope: !1361, file: !1, line: 181, column: 7)
!1369 = !DILocation(line: 181, column: 7, scope: !1368, inlinedAt: !1318)
!1370 = distinct !{!1370, !1371, !1372}
!1371 = !DILocation(line: 180, column: 5, scope: !1361)
!1372 = !DILocation(line: 181, column: 7, scope: !1361)
!1373 = !DILocation(line: 183, column: 7, scope: !1306, inlinedAt: !1318)
!1374 = !DILocation(line: 184, column: 11, scope: !1306, inlinedAt: !1318)
!1375 = !DILocation(line: 184, column: 3, scope: !1306, inlinedAt: !1318)
!1376 = !DILocation(line: 185, column: 15, scope: !1316, inlinedAt: !1318)
!1377 = !DILocation(line: 187, column: 9, scope: !1378, inlinedAt: !1318)
!1378 = distinct !DILexicalBlock(scope: !1316, file: !1, line: 187, column: 9)
!1379 = !DILocation(line: 187, column: 9, scope: !1316, inlinedAt: !1318)
!1380 = !DILocation(line: 64, column: 7, scope: !930, inlinedAt: !1381)
!1381 = distinct !DILocation(line: 188, column: 7, scope: !1378, inlinedAt: !1318)
!1382 = !DILocation(line: 64, column: 7, scope: !931, inlinedAt: !1381)
!1383 = !DILocation(line: 65, column: 5, scope: !930, inlinedAt: !1381)
!1384 = !DILocation(line: 191, column: 11, scope: !1385, inlinedAt: !1318)
!1385 = distinct !DILexicalBlock(scope: !1378, file: !1, line: 189, column: 10)
!1386 = !DILocation(line: 191, column: 21, scope: !1387, inlinedAt: !1318)
!1387 = distinct !DILexicalBlock(scope: !1388, file: !1, line: 191, column: 21)
!1388 = distinct !DILexicalBlock(scope: !1389, file: !1, line: 191, column: 21)
!1389 = distinct !DILexicalBlock(scope: !1385, file: !1, line: 191, column: 11)
!1390 = !DILocation(line: 191, column: 21, scope: !1388, inlinedAt: !1318)
!1391 = !DILocation(line: 192, column: 11, scope: !1385, inlinedAt: !1318)
!1392 = !DILocation(line: 192, column: 23, scope: !1393, inlinedAt: !1318)
!1393 = distinct !DILexicalBlock(scope: !1394, file: !1, line: 192, column: 23)
!1394 = distinct !DILexicalBlock(scope: !1395, file: !1, line: 192, column: 23)
!1395 = distinct !DILexicalBlock(scope: !1385, file: !1, line: 192, column: 11)
!1396 = !DILocation(line: 192, column: 23, scope: !1394, inlinedAt: !1318)
!1397 = distinct !{!1397, !1398, !1399}
!1398 = !DILocation(line: 184, column: 3, scope: !1306)
!1399 = !DILocation(line: 194, column: 3, scope: !1306)
!1400 = !DILocation(line: 195, column: 18, scope: !1306, inlinedAt: !1318)
!1401 = !DILocation(line: 285, column: 11, scope: !1319)
!1402 = !DILocation(line: 285, column: 11, scope: !1283)
!1403 = !DILocation(line: 286, column: 9, scope: !1319)
!1404 = !DILocation(line: 287, column: 50, scope: !1283)
!1405 = !DILocation(line: 287, column: 47, scope: !1283)
!1406 = !DILocation(line: 287, column: 45, scope: !1283)
!1407 = !DILocation(line: 287, column: 28, scope: !1283)
!1408 = !DILocation(line: 288, column: 43, scope: !1283)
!1409 = !DILocation(line: 287, column: 60, scope: !1283)
!1410 = !DILocation(line: 291, column: 21, scope: !1286)
!1411 = !DILocation(line: 291, column: 16, scope: !1286)
!1412 = !DILocation(line: 292, column: 23, scope: !1286)
!1413 = !DILocation(line: 292, column: 15, scope: !1286)
!1414 = !DILocalVariable(name: "g", arg: 1, scope: !1415, file: !1, line: 224, type: !161)
!1415 = distinct !DISubprogram(name: "traverseclosure", scope: !1, file: !1, line: 224, type: !1416, isLocal: true, isDefinition: true, scopeLine: 224, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1418)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{null, !161, !1287}
!1418 = !{!1414, !1419, !1420, !1423}
!1419 = !DILocalVariable(name: "cl", arg: 2, scope: !1415, file: !1, line: 224, type: !1287)
!1420 = !DILocalVariable(name: "i", scope: !1421, file: !1, line: 227, type: !105)
!1421 = distinct !DILexicalBlock(scope: !1422, file: !1, line: 226, column: 18)
!1422 = distinct !DILexicalBlock(scope: !1415, file: !1, line: 226, column: 7)
!1423 = !DILocalVariable(name: "i", scope: !1424, file: !1, line: 232, type: !105)
!1424 = distinct !DILexicalBlock(scope: !1422, file: !1, line: 231, column: 8)
!1425 = !DILocation(line: 224, column: 44, scope: !1415, inlinedAt: !1426)
!1426 = distinct !DILocation(line: 293, column: 7, scope: !1286)
!1427 = !DILocation(line: 224, column: 56, scope: !1415, inlinedAt: !1426)
!1428 = !DILocation(line: 225, column: 3, scope: !1429, inlinedAt: !1426)
!1429 = distinct !DILexicalBlock(scope: !1430, file: !1, line: 225, column: 3)
!1430 = distinct !DILexicalBlock(scope: !1415, file: !1, line: 225, column: 3)
!1431 = !DILocation(line: 225, column: 3, scope: !1430, inlinedAt: !1426)
!1432 = !DILocation(line: 226, column: 13, scope: !1422, inlinedAt: !1426)
!1433 = !DILocation(line: 226, column: 7, scope: !1422, inlinedAt: !1426)
!1434 = !DILocation(line: 226, column: 7, scope: !1415, inlinedAt: !1426)
!1435 = !DILocation(line: 227, column: 9, scope: !1421, inlinedAt: !1426)
!1436 = !DILocation(line: 228, column: 23, scope: !1437, inlinedAt: !1426)
!1437 = distinct !DILexicalBlock(scope: !1438, file: !1, line: 228, column: 5)
!1438 = distinct !DILexicalBlock(scope: !1421, file: !1, line: 228, column: 5)
!1439 = !DILocation(line: 228, column: 16, scope: !1437, inlinedAt: !1426)
!1440 = !DILocation(line: 228, column: 5, scope: !1438, inlinedAt: !1426)
!1441 = !DILocation(line: 229, column: 7, scope: !1442, inlinedAt: !1426)
!1442 = distinct !DILexicalBlock(scope: !1443, file: !1, line: 229, column: 7)
!1443 = distinct !DILexicalBlock(scope: !1437, file: !1, line: 229, column: 7)
!1444 = !DILocation(line: 229, column: 7, scope: !1443, inlinedAt: !1426)
!1445 = !DILocation(line: 228, column: 35, scope: !1437, inlinedAt: !1426)
!1446 = distinct !{!1446, !1447, !1448}
!1447 = !DILocation(line: 228, column: 5, scope: !1438)
!1448 = !DILocation(line: 229, column: 7, scope: !1438)
!1449 = !DILocation(line: 234, column: 5, scope: !1450, inlinedAt: !1426)
!1450 = distinct !DILexicalBlock(scope: !1451, file: !1, line: 234, column: 5)
!1451 = distinct !DILexicalBlock(scope: !1424, file: !1, line: 234, column: 5)
!1452 = !DILocation(line: 234, column: 5, scope: !1451, inlinedAt: !1426)
!1453 = !DILocation(line: 232, column: 9, scope: !1424, inlinedAt: !1426)
!1454 = !DILocation(line: 235, column: 23, scope: !1455, inlinedAt: !1426)
!1455 = distinct !DILexicalBlock(scope: !1456, file: !1, line: 235, column: 5)
!1456 = distinct !DILexicalBlock(scope: !1424, file: !1, line: 235, column: 5)
!1457 = !DILocation(line: 235, column: 16, scope: !1455, inlinedAt: !1426)
!1458 = !DILocation(line: 235, column: 5, scope: !1456, inlinedAt: !1426)
!1459 = !DILocation(line: 236, column: 7, scope: !1460, inlinedAt: !1426)
!1460 = distinct !DILexicalBlock(scope: !1461, file: !1, line: 236, column: 7)
!1461 = distinct !DILexicalBlock(scope: !1455, file: !1, line: 236, column: 7)
!1462 = !DILocation(line: 236, column: 7, scope: !1461, inlinedAt: !1426)
!1463 = !DILocation(line: 235, column: 35, scope: !1455, inlinedAt: !1426)
!1464 = distinct !{!1464, !1465, !1466}
!1465 = !DILocation(line: 235, column: 5, scope: !1456)
!1466 = !DILocation(line: 236, column: 7, scope: !1456)
!1467 = !DILocation(line: 294, column: 21, scope: !1286)
!1468 = !DILocation(line: 294, column: 14, scope: !1286)
!1469 = !DILocation(line: 0, scope: !1286)
!1470 = !DILocation(line: 298, column: 23, scope: !1290)
!1471 = !DILocation(line: 298, column: 18, scope: !1290)
!1472 = !DILocation(line: 299, column: 21, scope: !1290)
!1473 = !{!377, !378, i64 160}
!1474 = !DILocation(line: 299, column: 15, scope: !1290)
!1475 = !DILocation(line: 300, column: 23, scope: !1290)
!1476 = !DILocation(line: 300, column: 18, scope: !1290)
!1477 = !DILocation(line: 301, column: 20, scope: !1290)
!1478 = !DILocation(line: 302, column: 7, scope: !1290)
!1479 = !DILocalVariable(name: "g", arg: 1, scope: !1480, file: !1, line: 256, type: !161)
!1480 = distinct !DISubprogram(name: "traversestack", scope: !1, file: !1, line: 256, type: !1481, isLocal: true, isDefinition: true, scopeLine: 256, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1483)
!1481 = !DISubroutineType(types: !1482)
!1482 = !{null, !161, !149}
!1483 = !{!1479, !1484, !1485, !1486, !1487}
!1484 = !DILocalVariable(name: "l", arg: 2, scope: !1480, file: !1, line: 256, type: !149)
!1485 = !DILocalVariable(name: "o", scope: !1480, file: !1, line: 257, type: !158)
!1486 = !DILocalVariable(name: "lim", scope: !1480, file: !1, line: 257, type: !158)
!1487 = !DILocalVariable(name: "ci", scope: !1480, file: !1, line: 258, type: !238)
!1488 = !DILocation(line: 256, column: 42, scope: !1480, inlinedAt: !1489)
!1489 = distinct !DILocation(line: 303, column: 7, scope: !1290)
!1490 = !DILocation(line: 256, column: 56, scope: !1480, inlinedAt: !1489)
!1491 = !DILocation(line: 259, column: 3, scope: !1492, inlinedAt: !1489)
!1492 = distinct !DILexicalBlock(scope: !1493, file: !1, line: 259, column: 3)
!1493 = distinct !DILexicalBlock(scope: !1480, file: !1, line: 259, column: 3)
!1494 = !DILocation(line: 259, column: 3, scope: !1493, inlinedAt: !1489)
!1495 = !DILocation(line: 260, column: 12, scope: !1480, inlinedAt: !1489)
!1496 = !DILocation(line: 257, column: 12, scope: !1480, inlinedAt: !1489)
!1497 = !DILocation(line: 261, column: 16, scope: !1498, inlinedAt: !1489)
!1498 = distinct !DILexicalBlock(scope: !1480, file: !1, line: 261, column: 3)
!1499 = !{!377, !378, i64 80}
!1500 = !DILocation(line: 258, column: 13, scope: !1480, inlinedAt: !1489)
!1501 = !DILocation(line: 261, column: 34, scope: !1502, inlinedAt: !1489)
!1502 = distinct !DILexicalBlock(scope: !1498, file: !1, line: 261, column: 3)
!1503 = !{!377, !378, i64 40}
!1504 = !DILocation(line: 261, column: 28, scope: !1502, inlinedAt: !1489)
!1505 = !DILocation(line: 261, column: 3, scope: !1498, inlinedAt: !1489)
!1506 = !DILocation(line: 263, column: 19, scope: !1507, inlinedAt: !1489)
!1507 = distinct !DILexicalBlock(scope: !1508, file: !1, line: 263, column: 9)
!1508 = distinct !DILexicalBlock(scope: !1502, file: !1, line: 261, column: 44)
!1509 = !{!1510, !378, i64 16}
!1510 = !{!"CallInfo", !378, i64 0, !378, i64 8, !378, i64 16, !378, i64 24, !381, i64 32, !381, i64 36}
!1511 = !DILocation(line: 263, column: 13, scope: !1507, inlinedAt: !1489)
!1512 = !DILocation(line: 263, column: 9, scope: !1508, inlinedAt: !1489)
!1513 = !DILocation(line: 261, column: 40, scope: !1502, inlinedAt: !1489)
!1514 = distinct !{!1514, !1515, !1516}
!1515 = !DILocation(line: 261, column: 3, scope: !1498)
!1516 = !DILocation(line: 264, column: 3, scope: !1498)
!1517 = !DILocation(line: 0, scope: !1507, inlinedAt: !1489)
!1518 = !DILocation(line: 265, column: 15, scope: !1519, inlinedAt: !1489)
!1519 = distinct !DILexicalBlock(scope: !1480, file: !1, line: 265, column: 3)
!1520 = !{!377, !378, i64 64}
!1521 = !DILocation(line: 257, column: 9, scope: !1480, inlinedAt: !1489)
!1522 = !DILocation(line: 265, column: 24, scope: !1523, inlinedAt: !1489)
!1523 = distinct !DILexicalBlock(scope: !1519, file: !1, line: 265, column: 3)
!1524 = !DILocation(line: 265, column: 3, scope: !1519, inlinedAt: !1489)
!1525 = !DILocation(line: 0, scope: !1523, inlinedAt: !1489)
!1526 = !DILocation(line: 267, column: 12, scope: !1527, inlinedAt: !1489)
!1527 = distinct !DILexicalBlock(scope: !1528, file: !1, line: 267, column: 3)
!1528 = distinct !DILexicalBlock(scope: !1480, file: !1, line: 267, column: 3)
!1529 = !DILocation(line: 267, column: 3, scope: !1528, inlinedAt: !1489)
!1530 = !DILocation(line: 266, column: 5, scope: !1531, inlinedAt: !1489)
!1531 = distinct !DILexicalBlock(scope: !1532, file: !1, line: 266, column: 5)
!1532 = distinct !DILexicalBlock(scope: !1523, file: !1, line: 266, column: 5)
!1533 = !DILocation(line: 266, column: 5, scope: !1532, inlinedAt: !1489)
!1534 = !DILocation(line: 265, column: 29, scope: !1523, inlinedAt: !1489)
!1535 = !DILocation(line: 265, column: 35, scope: !1523, inlinedAt: !1489)
!1536 = distinct !{!1536, !1537, !1538}
!1537 = !DILocation(line: 265, column: 3, scope: !1519)
!1538 = !DILocation(line: 266, column: 5, scope: !1519)
!1539 = !DILocation(line: 268, column: 5, scope: !1527, inlinedAt: !1489)
!1540 = !DILocation(line: 267, column: 21, scope: !1527, inlinedAt: !1489)
!1541 = distinct !{!1541, !1542, !1543}
!1542 = !DILocation(line: 267, column: 3, scope: !1528)
!1543 = !DILocation(line: 268, column: 5, scope: !1528)
!1544 = !DILocalVariable(name: "L", arg: 1, scope: !1545, file: !1, line: 241, type: !149)
!1545 = distinct !DISubprogram(name: "checkstacksizes", scope: !1, file: !1, line: 241, type: !1546, isLocal: true, isDefinition: true, scopeLine: 241, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1548)
!1546 = !DISubroutineType(types: !1547)
!1547 = !{null, !149, !158}
!1548 = !{!1544, !1549, !1550, !1551}
!1549 = !DILocalVariable(name: "max", arg: 2, scope: !1545, file: !1, line: 241, type: !158)
!1550 = !DILocalVariable(name: "ci_used", scope: !1545, file: !1, line: 242, type: !105)
!1551 = !DILocalVariable(name: "s_used", scope: !1545, file: !1, line: 243, type: !105)
!1552 = !DILocation(line: 241, column: 41, scope: !1545, inlinedAt: !1553)
!1553 = distinct !DILocation(line: 269, column: 3, scope: !1480, inlinedAt: !1489)
!1554 = !DILocation(line: 241, column: 50, scope: !1545, inlinedAt: !1553)
!1555 = !DILocation(line: 243, column: 16, scope: !1545, inlinedAt: !1553)
!1556 = !DILocation(line: 244, column: 10, scope: !1557, inlinedAt: !1553)
!1557 = distinct !DILexicalBlock(scope: !1545, file: !1, line: 244, column: 7)
!1558 = !{!377, !381, i64 92}
!1559 = !DILocation(line: 244, column: 18, scope: !1557, inlinedAt: !1553)
!1560 = !DILocation(line: 244, column: 7, scope: !1545, inlinedAt: !1553)
!1561 = !DILocation(line: 304, column: 55, scope: !1290)
!1562 = !DILocation(line: 242, column: 17, scope: !1545, inlinedAt: !1553)
!1563 = !DILocation(line: 242, column: 7, scope: !1545, inlinedAt: !1553)
!1564 = !DILocation(line: 246, column: 8, scope: !1565, inlinedAt: !1553)
!1565 = distinct !DILexicalBlock(scope: !1545, file: !1, line: 246, column: 7)
!1566 = !DILocation(line: 246, column: 17, scope: !1565, inlinedAt: !1553)
!1567 = !DILocation(line: 246, column: 49, scope: !1565, inlinedAt: !1553)
!1568 = !DILocation(line: 246, column: 30, scope: !1565, inlinedAt: !1553)
!1569 = !DILocation(line: 247, column: 5, scope: !1565, inlinedAt: !1553)
!1570 = !DILocation(line: 249, column: 8, scope: !1571, inlinedAt: !1553)
!1571 = distinct !DILexicalBlock(scope: !1545, file: !1, line: 249, column: 7)
!1572 = !DILocation(line: 249, column: 21, scope: !1571, inlinedAt: !1553)
!1573 = !{!377, !381, i64 88}
!1574 = !DILocation(line: 249, column: 16, scope: !1571, inlinedAt: !1553)
!1575 = !DILocation(line: 250, column: 40, scope: !1571, inlinedAt: !1553)
!1576 = !DILocation(line: 249, column: 31, scope: !1571, inlinedAt: !1553)
!1577 = !DILocation(line: 251, column: 5, scope: !1571, inlinedAt: !1553)
!1578 = !DILocation(line: 304, column: 51, scope: !1290)
!1579 = !DILocation(line: 304, column: 49, scope: !1290)
!1580 = !DILocation(line: 304, column: 32, scope: !1290)
!1581 = !DILocation(line: 305, column: 57, scope: !1290)
!1582 = !DILocation(line: 305, column: 53, scope: !1290)
!1583 = !DILocation(line: 305, column: 51, scope: !1290)
!1584 = !DILocation(line: 304, column: 65, scope: !1290)
!1585 = !DILocation(line: 308, column: 18, scope: !1292)
!1586 = !DILocation(line: 308, column: 14, scope: !1292)
!1587 = !DILocation(line: 309, column: 20, scope: !1292)
!1588 = !{!1589, !378, i64 104}
!1589 = !{!"Proto", !378, i64 0, !379, i64 8, !379, i64 9, !378, i64 16, !378, i64 24, !378, i64 32, !378, i64 40, !378, i64 48, !378, i64 56, !378, i64 64, !381, i64 72, !381, i64 76, !381, i64 80, !381, i64 84, !381, i64 88, !381, i64 92, !381, i64 96, !381, i64 100, !378, i64 104, !379, i64 112, !379, i64 113, !379, i64 114, !379, i64 115}
!1590 = !DILocation(line: 309, column: 15, scope: !1292)
!1591 = !DILocalVariable(name: "g", arg: 1, scope: !1592, file: !1, line: 203, type: !161)
!1592 = distinct !DISubprogram(name: "traverseproto", scope: !1, file: !1, line: 203, type: !1593, isLocal: true, isDefinition: true, scopeLine: 203, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1595)
!1593 = !DISubroutineType(types: !1594)
!1594 = !{null, !161, !1293}
!1595 = !{!1591, !1596, !1597}
!1596 = !DILocalVariable(name: "f", arg: 2, scope: !1592, file: !1, line: 203, type: !1293)
!1597 = !DILocalVariable(name: "i", scope: !1592, file: !1, line: 204, type: !105)
!1598 = !DILocation(line: 203, column: 42, scope: !1592, inlinedAt: !1599)
!1599 = distinct !DILocation(line: 310, column: 7, scope: !1292)
!1600 = !DILocation(line: 203, column: 52, scope: !1592, inlinedAt: !1599)
!1601 = !DILocation(line: 205, column: 10, scope: !1602, inlinedAt: !1599)
!1602 = distinct !DILexicalBlock(scope: !1592, file: !1, line: 205, column: 7)
!1603 = !{!1589, !378, i64 64}
!1604 = !DILocation(line: 205, column: 7, scope: !1602, inlinedAt: !1599)
!1605 = !DILocation(line: 205, column: 7, scope: !1592, inlinedAt: !1599)
!1606 = !DILocation(line: 205, column: 18, scope: !1602, inlinedAt: !1599)
!1607 = !DILocation(line: 204, column: 7, scope: !1592, inlinedAt: !1599)
!1608 = !DILocation(line: 206, column: 18, scope: !1609, inlinedAt: !1599)
!1609 = distinct !DILexicalBlock(scope: !1610, file: !1, line: 206, column: 3)
!1610 = distinct !DILexicalBlock(scope: !1592, file: !1, line: 206, column: 3)
!1611 = !{!1589, !381, i64 76}
!1612 = !DILocation(line: 206, column: 14, scope: !1609, inlinedAt: !1599)
!1613 = !DILocation(line: 206, column: 3, scope: !1610, inlinedAt: !1599)
!1614 = !DILocation(line: 208, column: 18, scope: !1615, inlinedAt: !1599)
!1615 = distinct !DILexicalBlock(scope: !1616, file: !1, line: 208, column: 3)
!1616 = distinct !DILexicalBlock(scope: !1592, file: !1, line: 208, column: 3)
!1617 = !{!1589, !381, i64 72}
!1618 = !DILocation(line: 208, column: 14, scope: !1615, inlinedAt: !1599)
!1619 = !DILocation(line: 208, column: 3, scope: !1616, inlinedAt: !1599)
!1620 = !DILocation(line: 207, column: 5, scope: !1621, inlinedAt: !1599)
!1621 = distinct !DILexicalBlock(scope: !1622, file: !1, line: 207, column: 5)
!1622 = distinct !DILexicalBlock(scope: !1609, file: !1, line: 207, column: 5)
!1623 = !{!1589, !378, i64 16}
!1624 = !DILocation(line: 207, column: 5, scope: !1622, inlinedAt: !1599)
!1625 = !DILocation(line: 206, column: 26, scope: !1609, inlinedAt: !1599)
!1626 = distinct !{!1626, !1627, !1628}
!1627 = !DILocation(line: 206, column: 3, scope: !1610)
!1628 = !DILocation(line: 207, column: 5, scope: !1610)
!1629 = !DILocation(line: 212, column: 18, scope: !1630, inlinedAt: !1599)
!1630 = distinct !DILexicalBlock(scope: !1631, file: !1, line: 212, column: 3)
!1631 = distinct !DILexicalBlock(scope: !1592, file: !1, line: 212, column: 3)
!1632 = !{!1589, !381, i64 88}
!1633 = !DILocation(line: 212, column: 14, scope: !1630, inlinedAt: !1599)
!1634 = !DILocation(line: 212, column: 3, scope: !1631, inlinedAt: !1599)
!1635 = !DILocation(line: 209, column: 12, scope: !1636, inlinedAt: !1599)
!1636 = distinct !DILexicalBlock(scope: !1637, file: !1, line: 209, column: 9)
!1637 = distinct !DILexicalBlock(scope: !1615, file: !1, line: 208, column: 37)
!1638 = !{!1589, !378, i64 56}
!1639 = !DILocation(line: 209, column: 9, scope: !1636, inlinedAt: !1599)
!1640 = !DILocation(line: 209, column: 9, scope: !1637, inlinedAt: !1599)
!1641 = !DILocation(line: 210, column: 7, scope: !1636, inlinedAt: !1599)
!1642 = !DILocation(line: 208, column: 33, scope: !1615, inlinedAt: !1599)
!1643 = distinct !{!1643, !1644, !1645}
!1644 = !DILocation(line: 208, column: 3, scope: !1616)
!1645 = !DILocation(line: 211, column: 3, scope: !1616)
!1646 = !DILocation(line: 216, column: 18, scope: !1647, inlinedAt: !1599)
!1647 = distinct !DILexicalBlock(scope: !1648, file: !1, line: 216, column: 3)
!1648 = distinct !DILexicalBlock(scope: !1592, file: !1, line: 216, column: 3)
!1649 = !{!1589, !381, i64 92}
!1650 = !DILocation(line: 216, column: 14, scope: !1647, inlinedAt: !1599)
!1651 = !DILocation(line: 216, column: 3, scope: !1648, inlinedAt: !1599)
!1652 = !DILocation(line: 315, column: 47, scope: !1292)
!1653 = !DILocation(line: 213, column: 12, scope: !1654, inlinedAt: !1599)
!1654 = distinct !DILexicalBlock(scope: !1655, file: !1, line: 213, column: 9)
!1655 = distinct !DILexicalBlock(scope: !1630, file: !1, line: 212, column: 30)
!1656 = !{!1589, !378, i64 32}
!1657 = !DILocation(line: 213, column: 9, scope: !1654, inlinedAt: !1599)
!1658 = !DILocation(line: 213, column: 9, scope: !1655, inlinedAt: !1599)
!1659 = !DILocation(line: 214, column: 7, scope: !1660, inlinedAt: !1599)
!1660 = distinct !DILexicalBlock(scope: !1661, file: !1, line: 214, column: 7)
!1661 = distinct !DILexicalBlock(scope: !1654, file: !1, line: 214, column: 7)
!1662 = !DILocation(line: 214, column: 7, scope: !1661, inlinedAt: !1599)
!1663 = !DILocation(line: 212, column: 26, scope: !1630, inlinedAt: !1599)
!1664 = distinct !{!1664, !1665, !1666}
!1665 = !DILocation(line: 212, column: 3, scope: !1631)
!1666 = !DILocation(line: 215, column: 3, scope: !1631)
!1667 = !DILocation(line: 217, column: 12, scope: !1668, inlinedAt: !1599)
!1668 = distinct !DILexicalBlock(scope: !1669, file: !1, line: 217, column: 9)
!1669 = distinct !DILexicalBlock(scope: !1647, file: !1, line: 216, column: 36)
!1670 = !{!1589, !378, i64 48}
!1671 = !DILocation(line: 217, column: 23, scope: !1668, inlinedAt: !1599)
!1672 = !{!1673, !378, i64 0}
!1673 = !{!"LocVar", !378, i64 0, !381, i64 8, !381, i64 12}
!1674 = !DILocation(line: 217, column: 9, scope: !1668, inlinedAt: !1599)
!1675 = !DILocation(line: 217, column: 9, scope: !1669, inlinedAt: !1599)
!1676 = !DILocation(line: 218, column: 7, scope: !1668, inlinedAt: !1599)
!1677 = !DILocation(line: 216, column: 32, scope: !1647, inlinedAt: !1599)
!1678 = distinct !{!1678, !1679, !1680}
!1679 = !DILocation(line: 216, column: 3, scope: !1648)
!1680 = !DILocation(line: 219, column: 3, scope: !1648)
!1681 = !DILocation(line: 312, column: 51, scope: !1292)
!1682 = !DILocation(line: 311, column: 55, scope: !1292)
!1683 = !{!1589, !381, i64 80}
!1684 = !DILocation(line: 311, column: 52, scope: !1292)
!1685 = !DILocation(line: 312, column: 48, scope: !1292)
!1686 = !DILocation(line: 313, column: 50, scope: !1292)
!1687 = !DILocation(line: 313, column: 47, scope: !1292)
!1688 = !DILocation(line: 314, column: 47, scope: !1292)
!1689 = !{!1589, !381, i64 84}
!1690 = !DILocation(line: 314, column: 44, scope: !1292)
!1691 = !DILocation(line: 316, column: 53, scope: !1292)
!1692 = !DILocation(line: 316, column: 50, scope: !1292)
!1693 = !DILocation(line: 313, column: 56, scope: !1292)
!1694 = !DILocation(line: 314, column: 60, scope: !1292)
!1695 = !DILocation(line: 315, column: 62, scope: !1292)
!1696 = !DILocation(line: 0, scope: !1283)
!1697 = !DILocation(line: 320, column: 1, scope: !1276)
!1698 = distinct !DISubprogram(name: "markmt", scope: !1, file: !1, line: 493, type: !732, isLocal: true, isDefinition: true, scopeLine: 493, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1699)
!1699 = !{!1700, !1701}
!1700 = !DILocalVariable(name: "g", arg: 1, scope: !1698, file: !1, line: 493, type: !161)
!1701 = !DILocalVariable(name: "i", scope: !1698, file: !1, line: 494, type: !105)
!1702 = !DILocation(line: 493, column: 35, scope: !1698)
!1703 = !DILocation(line: 494, column: 7, scope: !1698)
!1704 = !DILocation(line: 496, column: 9, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1706, file: !1, line: 496, column: 9)
!1706 = distinct !DILexicalBlock(scope: !1707, file: !1, line: 495, column: 3)
!1707 = distinct !DILexicalBlock(scope: !1698, file: !1, line: 495, column: 3)
!1708 = !DILocation(line: 496, column: 9, scope: !1706)
!1709 = !DILocation(line: 496, column: 19, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1711, file: !1, line: 496, column: 19)
!1711 = distinct !DILexicalBlock(scope: !1705, file: !1, line: 496, column: 19)
!1712 = !DILocation(line: 496, column: 19, scope: !1711)
!1713 = !DILocation(line: 497, column: 1, scope: !1698)
