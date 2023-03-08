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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !395
  %8 = load %union.GCObject*, %union.GCObject** %7, align 8, !dbg !396, !tbaa !397
  %9 = icmp eq %union.GCObject* %8, null, !dbg !399
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !395
  br i1 %9, label %76, label %10, !dbg !395

; <label>:10:                                     ; preds = %2
  %11 = icmp ne i32 %1, 0
  %12 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 11
  %13 = bitcast %union.GCObject** %12 to %struct.GCheader**
  br label %14, !dbg !395

; <label>:14:                                     ; preds = %10, %71
  %15 = phi %union.GCObject* [ %8, %10 ], [ %74, %71 ]
  %16 = phi i64 [ 0, %10 ], [ %73, %71 ]
  %17 = phi %union.GCObject** [ %7, %10 ], [ %72, %71 ]
  %18 = getelementptr inbounds %union.GCObject, %union.GCObject* %15, i64 0, i32 0, i32 2, !dbg !400
  %19 = load i8, i8* %18, align 1, !dbg !400, !tbaa !403
  %20 = and i8 %19, 3, !dbg !400
  %21 = icmp ne i8 %20, 0, !dbg !400
  %22 = or i1 %11, %21, !dbg !404
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !404
  br i1 %22, label %23, label %26, !dbg !404

; <label>:23:                                     ; preds = %14
  %24 = and i8 %19, 8, !dbg !405
  %25 = icmp eq i8 %24, 0, !dbg !405
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !406
  br i1 %25, label %28, label %26, !dbg !406

; <label>:26:                                     ; preds = %23, %14
  %27 = getelementptr inbounds %union.GCObject, %union.GCObject* %15, i64 0, i32 0, i32 0, !dbg !407
  br label %71, !dbg !408

; <label>:28:                                     ; preds = %23
  %29 = getelementptr inbounds %union.GCObject, %union.GCObject* %15, i64 0, i32 0, i32 4, !dbg !409
  %30 = bitcast %struct.lua_TValue** %29 to %struct.Table**, !dbg !409
  %31 = load %struct.Table*, %struct.Table** %30, align 8, !dbg !409, !tbaa !403
  %32 = icmp eq %struct.Table* %31, null, !dbg !409
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !409
  br i1 %32, label %38, label %33, !dbg !409

; <label>:33:                                     ; preds = %28
  %34 = getelementptr inbounds %struct.Table, %struct.Table* %31, i64 0, i32 3, !dbg !409
  %35 = load i8, i8* %34, align 2, !dbg !409, !tbaa !411
  %36 = and i8 %35, 4, !dbg !409
  %37 = icmp eq i8 %36, 0, !dbg !409
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !409
  br i1 %37, label %39, label %38, !dbg !409

; <label>:38:                                     ; preds = %28, %33
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !413
  br label %47, !dbg !413

; <label>:39:                                     ; preds = %33
  %40 = load %struct.global_State*, %struct.global_State** %3, align 8, !dbg !409, !tbaa !376
  %41 = getelementptr inbounds %struct.global_State, %struct.global_State* %40, i64 0, i32 24, i64 2, !dbg !409
  %42 = load %union.TString*, %union.TString** %41, align 8, !dbg !409, !tbaa !397
  %43 = tail call %struct.lua_TValue* @luaT_gettm(%struct.Table* nonnull %31, i32 2, %union.TString* %42) #3, !dbg !409
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !409
  %44 = icmp eq %struct.lua_TValue* %43, null, !dbg !414
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !413
  br i1 %44, label %45, label %51, !dbg !413

; <label>:45:                                     ; preds = %39
  %46 = load i8, i8* %18, align 1, !dbg !415, !tbaa !403
  br label %47, !dbg !413

; <label>:47:                                     ; preds = %45, %38
  %48 = phi i8 [ %46, %45 ], [ %19, %38 ], !dbg !415
  %49 = or i8 %48, 8, !dbg !415
  store i8 %49, i8* %18, align 1, !dbg !415, !tbaa !403
  %50 = getelementptr inbounds %union.GCObject, %union.GCObject* %15, i64 0, i32 0, i32 0, !dbg !417
  br label %71, !dbg !418

; <label>:51:                                     ; preds = %39
  %52 = getelementptr inbounds %union.GCObject, %union.GCObject* %15, i64 0, i32 0, i32 6, !dbg !419
  %53 = bitcast %struct.global_State** %52 to i64*, !dbg !419
  %54 = load i64, i64* %53, align 8, !dbg !419, !tbaa !403
  %55 = add i64 %16, 40, !dbg !419
  %56 = add i64 %55, %54, !dbg !421
  %57 = load i8, i8* %18, align 1, !dbg !422, !tbaa !403
  %58 = or i8 %57, 8, !dbg !422
  store i8 %58, i8* %18, align 1, !dbg !422, !tbaa !403
  %59 = bitcast %union.GCObject* %15 to i64*, !dbg !423
  %60 = load i64, i64* %59, align 8, !dbg !423, !tbaa !403
  %61 = bitcast %union.GCObject** %17 to i64*, !dbg !424
  store i64 %60, i64* %61, align 8, !dbg !424, !tbaa !397
  %62 = load %union.GCObject*, %union.GCObject** %12, align 8, !dbg !425, !tbaa !427
  %63 = icmp eq %union.GCObject* %62, null, !dbg !428
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !429
  br i1 %63, label %64, label %66, !dbg !429

; <label>:64:                                     ; preds = %51
  %65 = getelementptr inbounds %union.GCObject, %union.GCObject* %15, i64 0, i32 0, i32 0, !dbg !423
  store %union.GCObject* %15, %union.GCObject** %65, align 8, !dbg !430, !tbaa !403
  store %union.GCObject* %15, %union.GCObject** %12, align 8, !dbg !431, !tbaa !427
  br label %71, !dbg !432

; <label>:66:                                     ; preds = %51
  %67 = bitcast %union.GCObject* %62 to i64*, !dbg !433
  %68 = load i64, i64* %67, align 8, !dbg !433, !tbaa !403
  store i64 %68, i64* %59, align 8, !dbg !435, !tbaa !403
  %69 = load %struct.GCheader*, %struct.GCheader** %13, align 8, !dbg !436, !tbaa !427
  %70 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %69, i64 0, i32 0, !dbg !437
  store %union.GCObject* %15, %union.GCObject** %70, align 8, !dbg !438, !tbaa !403
  store %union.GCObject* %15, %union.GCObject** %12, align 8, !dbg !439, !tbaa !427
  br label %71

; <label>:71:                                     ; preds = %47, %66, %64, %26
  %72 = phi %union.GCObject** [ %27, %26 ], [ %50, %47 ], [ %17, %64 ], [ %17, %66 ], !dbg !440
  %73 = phi i64 [ %16, %26 ], [ %16, %47 ], [ %56, %64 ], [ %56, %66 ], !dbg !441
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !395
  %74 = load %union.GCObject*, %union.GCObject** %72, align 8, !dbg !396, !tbaa !397
  %75 = icmp eq %union.GCObject* %74, null, !dbg !399
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !395
  br i1 %75, label %76, label %14, !dbg !395, !llvm.loop !442

; <label>:76:                                     ; preds = %71, %2
  %77 = phi i64 [ 0, %2 ], [ %73, %71 ], !dbg !386
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !444
  ret i64 %77, !dbg !444
}

; Function Attrs: noredzone
declare hidden %struct.lua_TValue* @luaT_gettm(%struct.Table*, i32, %union.TString*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define hidden void @luaC_callGCTM(%struct.lua_State*) local_unnamed_addr #0 !dbg !445 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !451
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !452
  %3 = load %struct.global_State*, %struct.global_State** %2, align 8, !dbg !452, !tbaa !376
  %4 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 11, !dbg !453
  %5 = load %union.GCObject*, %union.GCObject** %4, align 8, !dbg !453, !tbaa !427
  %6 = icmp eq %union.GCObject* %5, null, !dbg !451
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !451
  br i1 %6, label %12, label %7, !dbg !451

; <label>:7:                                      ; preds = %1, %7
  tail call fastcc void @GCTM(%struct.lua_State* nonnull %0) #4, !dbg !454
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !451
  %8 = load %struct.global_State*, %struct.global_State** %2, align 8, !dbg !452, !tbaa !376
  %9 = getelementptr inbounds %struct.global_State, %struct.global_State* %8, i64 0, i32 11, !dbg !453
  %10 = load %union.GCObject*, %union.GCObject** %9, align 8, !dbg !453, !tbaa !427
  %11 = icmp eq %union.GCObject* %10, null, !dbg !451
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !451
  br i1 %11, label %12, label %7, !dbg !451, !llvm.loop !455

; <label>:12:                                     ; preds = %7, %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !457
  ret void, !dbg !457
}

; Function Attrs: noredzone nounwind
define internal fastcc void @GCTM(%struct.lua_State*) unnamed_addr #0 !dbg !458 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !479
  %3 = load %struct.global_State*, %struct.global_State** %2, align 8, !dbg !479, !tbaa !376
  %4 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 11, !dbg !481
  %5 = load %union.GCObject*, %union.GCObject** %4, align 8, !dbg !481, !tbaa !427
  %6 = getelementptr inbounds %union.GCObject, %union.GCObject* %5, i64 0, i32 0, i32 0, !dbg !482
  %7 = load %union.GCObject*, %union.GCObject** %6, align 8, !dbg !482, !tbaa !403
  %8 = icmp eq %union.GCObject* %7, %5, !dbg !485
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !487
  br i1 %8, label %9, label %11, !dbg !487

; <label>:9:                                      ; preds = %1
  store %union.GCObject* null, %union.GCObject** %4, align 8, !dbg !488, !tbaa !427
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !489
  %10 = bitcast %union.GCObject* %7 to i64*, !dbg !490
  br label %15, !dbg !489

; <label>:11:                                     ; preds = %1
  %12 = bitcast %union.GCObject* %7 to i64*, !dbg !491
  %13 = load i64, i64* %12, align 8, !dbg !491, !tbaa !403
  %14 = bitcast %union.GCObject* %5 to i64*, !dbg !492
  store i64 %13, i64* %14, align 8, !dbg !492, !tbaa !403
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %15

; <label>:15:                                     ; preds = %11, %9
  %16 = phi i64* [ %12, %11 ], [ %10, %9 ], !dbg !490
  %17 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 21, !dbg !493
  %18 = bitcast %struct.lua_State** %17 to i64**, !dbg !493
  %19 = load i64*, i64** %18, align 8, !dbg !493, !tbaa !388
  %20 = load i64, i64* %19, align 8, !dbg !494, !tbaa !495
  store i64 %20, i64* %16, align 8, !dbg !490, !tbaa !403
  %21 = load %struct.lua_State*, %struct.lua_State** %17, align 8, !dbg !496, !tbaa !388
  %22 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %21, i64 0, i32 0, !dbg !497
  store %union.GCObject* %7, %union.GCObject** %22, align 8, !dbg !498, !tbaa !495
  %23 = getelementptr inbounds %union.GCObject, %union.GCObject* %7, i64 0, i32 0, i32 2, !dbg !499
  %24 = load i8, i8* %23, align 1, !dbg !499, !tbaa !403
  %25 = and i8 %24, -8, !dbg !499
  %26 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 3, !dbg !499
  %27 = load i8, i8* %26, align 8, !dbg !499, !tbaa !500
  %28 = and i8 %27, 3, !dbg !499
  %29 = or i8 %28, %25, !dbg !499
  store i8 %29, i8* %23, align 1, !dbg !499, !tbaa !403
  %30 = getelementptr inbounds %union.GCObject, %union.GCObject* %7, i64 0, i32 0, i32 4, !dbg !501
  %31 = bitcast %struct.lua_TValue** %30 to %struct.Table**, !dbg !501
  %32 = load %struct.Table*, %struct.Table** %31, align 8, !dbg !501, !tbaa !403
  %33 = icmp eq %struct.Table* %32, null, !dbg !501
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !501
  br i1 %33, label %66, label %34, !dbg !501

; <label>:34:                                     ; preds = %15
  %35 = getelementptr inbounds %struct.Table, %struct.Table* %32, i64 0, i32 3, !dbg !501
  %36 = load i8, i8* %35, align 2, !dbg !501, !tbaa !411
  %37 = and i8 %36, 4, !dbg !501
  %38 = icmp eq i8 %37, 0, !dbg !501
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !501
  br i1 %38, label %39, label %66, !dbg !501

; <label>:39:                                     ; preds = %34
  %40 = load %struct.global_State*, %struct.global_State** %2, align 8, !dbg !501, !tbaa !376
  %41 = getelementptr inbounds %struct.global_State, %struct.global_State* %40, i64 0, i32 24, i64 2, !dbg !501
  %42 = load %union.TString*, %union.TString** %41, align 8, !dbg !501, !tbaa !397
  %43 = tail call %struct.lua_TValue* @luaT_gettm(%struct.Table* nonnull %32, i32 2, %union.TString* %42) #3, !dbg !501
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !501
  %44 = icmp eq %struct.lua_TValue* %43, null, !dbg !503
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !504
  br i1 %44, label %67, label %45, !dbg !504

; <label>:45:                                     ; preds = %39
  %46 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 18, !dbg !505
  %47 = load i8, i8* %46, align 1, !dbg !505, !tbaa !506
  %48 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 13, !dbg !508
  %49 = load i64, i64* %48, align 8, !dbg !508, !tbaa !509
  store i8 0, i8* %46, align 1, !dbg !511, !tbaa !506
  %50 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 14, !dbg !512
  %51 = load i64, i64* %50, align 8, !dbg !512, !tbaa !513
  %52 = shl i64 %51, 1, !dbg !514
  store i64 %52, i64* %48, align 8, !dbg !515, !tbaa !509
  %53 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !516
  %54 = load %struct.lua_TValue*, %struct.lua_TValue** %53, align 8, !dbg !516, !tbaa !517
  %55 = bitcast %struct.lua_TValue* %43 to i64*, !dbg !516
  %56 = bitcast %struct.lua_TValue* %54 to i64*, !dbg !516
  %57 = load i64, i64* %55, align 8, !dbg !516
  store i64 %57, i64* %56, align 8, !dbg !516
  %58 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %43, i64 0, i32 1, !dbg !516
  %59 = load i32, i32* %58, align 8, !dbg !516, !tbaa !518
  %60 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %54, i64 0, i32 1, !dbg !516
  store i32 %59, i32* %60, align 8, !dbg !516, !tbaa !518
  %61 = load %struct.lua_TValue*, %struct.lua_TValue** %53, align 8, !dbg !519, !tbaa !517
  %62 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %61, i64 1, i32 0, i32 0, !dbg !519
  store %union.GCObject* %7, %union.GCObject** %62, align 8, !dbg !519, !tbaa !403
  %63 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %61, i64 1, i32 1, !dbg !519
  store i32 7, i32* %63, align 8, !dbg !519, !tbaa !518
  %64 = load %struct.lua_TValue*, %struct.lua_TValue** %53, align 8, !dbg !520, !tbaa !517
  %65 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %64, i64 2, !dbg !520
  store %struct.lua_TValue* %65, %struct.lua_TValue** %53, align 8, !dbg !520, !tbaa !517
  tail call void @luaD_call(%struct.lua_State* nonnull %0, %struct.lua_TValue* %64, i32 0) #3, !dbg !521
  store i8 %47, i8* %46, align 1, !dbg !522, !tbaa !506
  store i64 %49, i64* %48, align 8, !dbg !523, !tbaa !509
  br label %66, !dbg !524

; <label>:66:                                     ; preds = %34, %15, %45
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !525
  br label %67, !dbg !526

; <label>:67:                                     ; preds = %66, %39
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !526
  ret void, !dbg !526
}

; Function Attrs: noredzone nounwind
define hidden void @luaC_freeall(%struct.lua_State*) local_unnamed_addr #0 !dbg !527 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !533
  %3 = load %struct.global_State*, %struct.global_State** %2, align 8, !dbg !533, !tbaa !376
  %4 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 3, !dbg !535
  store i8 67, i8* %4, align 8, !dbg !536, !tbaa !500
  %5 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 6, !dbg !537
  %6 = tail call fastcc %union.GCObject** @sweeplist(%struct.lua_State* %0, %union.GCObject** nonnull %5, i64 -3) #4, !dbg !537
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !539
  %7 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 0, i32 2, !dbg !541
  %8 = load i32, i32* %7, align 4, !dbg !541, !tbaa !543
  %9 = icmp sgt i32 %8, 0, !dbg !544
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !545
  br i1 %9, label %10, label %21, !dbg !545

; <label>:10:                                     ; preds = %1
  %11 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 0, i32 0
  br label %12, !dbg !545

; <label>:12:                                     ; preds = %10, %12
  %13 = phi i64 [ 0, %10 ], [ %17, %12 ]
  %14 = load %union.GCObject**, %union.GCObject*** %11, align 8, !dbg !546, !tbaa !547
  %15 = getelementptr inbounds %union.GCObject*, %union.GCObject** %14, i64 %13, !dbg !546
  %16 = tail call fastcc %union.GCObject** @sweeplist(%struct.lua_State* %0, %union.GCObject** %15, i64 -3) #4, !dbg !546
  %17 = add nuw nsw i64 %13, 1, !dbg !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !549
  %18 = load i32, i32* %7, align 4, !dbg !541, !tbaa !543
  %19 = sext i32 %18 to i64, !dbg !544
  %20 = icmp slt i64 %17, %19, !dbg !544
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !545
  br i1 %20, label %12, label %21, !dbg !545, !llvm.loop !550

; <label>:21:                                     ; preds = %12, %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !552
  ret void, !dbg !552
}

; Function Attrs: noredzone nounwind
define internal fastcc %union.GCObject** @sweeplist(%struct.lua_State*, %union.GCObject**, i64) unnamed_addr #0 !dbg !553 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !566
  %5 = load %struct.global_State*, %struct.global_State** %4, align 8, !dbg !566, !tbaa !376
  %6 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 3, !dbg !568
  %7 = load i8, i8* %6, align 8, !dbg !568, !tbaa !500
  %8 = xor i8 %7, 3, !dbg !568
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !569
  %9 = load %union.GCObject*, %union.GCObject** %1, align 8, !dbg !570, !tbaa !397
  %10 = icmp eq %union.GCObject* %9, null, !dbg !572
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !573
  br i1 %10, label %83, label %11, !dbg !573

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 6
  %13 = bitcast %union.GCObject** %12 to i64*
  br label %14, !dbg !573

; <label>:14:                                     ; preds = %11, %79
  %15 = phi %union.GCObject* [ %9, %11 ], [ %81, %79 ]
  %16 = phi %union.GCObject** [ %1, %11 ], [ %80, %79 ]
  %17 = phi i64 [ %2, %11 ], [ %18, %79 ]
  %18 = add i64 %17, -1, !dbg !574
  %19 = icmp eq i64 %17, 0, !dbg !575
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !569
  br i1 %19, label %83, label %20, !dbg !569

; <label>:20:                                     ; preds = %14
  %21 = getelementptr inbounds %union.GCObject, %union.GCObject* %15, i64 0, i32 0, i32 1, !dbg !576
  %22 = load i8, i8* %21, align 8, !dbg !576, !tbaa !403
  %23 = icmp eq i8 %22, 8, !dbg !579
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !580
  br i1 %23, label %24, label %27, !dbg !580

; <label>:24:                                     ; preds = %20
  %25 = getelementptr inbounds %union.GCObject, %union.GCObject* %15, i64 0, i32 0, i32 24, !dbg !581
  %26 = tail call fastcc %union.GCObject** @sweeplist(%struct.lua_State* %0, %union.GCObject** nonnull %25, i64 -3) #4, !dbg !581
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !581
  br label %27, !dbg !581

; <label>:27:                                     ; preds = %24, %20
  %28 = getelementptr inbounds %union.GCObject, %union.GCObject* %15, i64 0, i32 0, i32 2, !dbg !582
  %29 = load i8, i8* %28, align 1, !dbg !582, !tbaa !403
  %30 = xor i8 %29, 3, !dbg !584
  %31 = and i8 %30, %8, !dbg !585
  %32 = icmp eq i8 %31, 0, !dbg !585
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !586
  br i1 %32, label %39, label %33, !dbg !586

; <label>:33:                                     ; preds = %27
  %34 = and i8 %29, -8, !dbg !587
  %35 = load i8, i8* %6, align 8, !dbg !587, !tbaa !500
  %36 = and i8 %35, 3, !dbg !587
  %37 = or i8 %36, %34, !dbg !587
  store i8 %37, i8* %28, align 1, !dbg !587, !tbaa !403
  %38 = getelementptr inbounds %union.GCObject, %union.GCObject* %15, i64 0, i32 0, i32 0, !dbg !589
  br label %79, !dbg !590

; <label>:39:                                     ; preds = %27
  %40 = bitcast %union.GCObject* %15 to i64*, !dbg !591
  %41 = load i64, i64* %40, align 8, !dbg !591, !tbaa !403
  %42 = bitcast %union.GCObject** %16 to i64*, !dbg !593
  store i64 %41, i64* %42, align 8, !dbg !593, !tbaa !397
  %43 = load %union.GCObject*, %union.GCObject** %12, align 8, !dbg !594, !tbaa !596
  %44 = icmp eq %union.GCObject* %15, %43, !dbg !597
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !598
  br i1 %44, label %45, label %47, !dbg !598

; <label>:45:                                     ; preds = %39
  %46 = load i64, i64* %40, align 8, !dbg !599, !tbaa !403
  store i64 %46, i64* %13, align 8, !dbg !600, !tbaa !596
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !601
  br label %47, !dbg !601

; <label>:47:                                     ; preds = %45, %39
  %48 = load i8, i8* %21, align 8, !dbg !611, !tbaa !403
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !612
  switch i8 %48, label %78 [
    i8 9, label %49
    i8 6, label %51
    i8 10, label %53
    i8 5, label %55
    i8 8, label %57
    i8 4, label %59
    i8 7, label %70
  ], !dbg !612

; <label>:49:                                     ; preds = %47
  %50 = bitcast %union.GCObject* %15 to %struct.Proto*, !dbg !613
  tail call void @luaF_freeproto(%struct.lua_State* %0, %struct.Proto* %50) #3, !dbg !615
  br label %77, !dbg !616

; <label>:51:                                     ; preds = %47
  %52 = bitcast %union.GCObject* %15 to %union.Closure*, !dbg !617
  tail call void @luaF_freeclosure(%struct.lua_State* %0, %union.Closure* %52) #3, !dbg !618
  br label %77, !dbg !619

; <label>:53:                                     ; preds = %47
  %54 = bitcast %union.GCObject* %15 to %struct.UpVal*, !dbg !620
  tail call void @luaF_freeupval(%struct.lua_State* %0, %struct.UpVal* %54) #3, !dbg !621
  br label %77, !dbg !622

; <label>:55:                                     ; preds = %47
  %56 = bitcast %union.GCObject* %15 to %struct.Table*, !dbg !623
  tail call void @luaH_free(%struct.lua_State* %0, %struct.Table* %56) #3, !dbg !624
  br label %77, !dbg !625

; <label>:57:                                     ; preds = %47
  %58 = getelementptr inbounds %union.GCObject, %union.GCObject* %15, i64 0, i32 0, !dbg !626
  tail call void @luaE_freethread(%struct.lua_State* %0, %struct.lua_State* nonnull %58) #3, !dbg !628
  br label %77, !dbg !629

; <label>:59:                                     ; preds = %47
  %60 = load %struct.global_State*, %struct.global_State** %4, align 8, !dbg !630, !tbaa !376
  %61 = getelementptr inbounds %struct.global_State, %struct.global_State* %60, i64 0, i32 0, i32 1, !dbg !632
  %62 = load i32, i32* %61, align 8, !dbg !633, !tbaa !634
  %63 = add i32 %62, -1, !dbg !633
  store i32 %63, i32* %61, align 8, !dbg !633, !tbaa !634
  %64 = bitcast %union.GCObject* %15 to i8*, !dbg !635
  %65 = getelementptr inbounds %union.GCObject, %union.GCObject* %15, i64 0, i32 0, i32 4, !dbg !635
  %66 = bitcast %struct.lua_TValue** %65 to i64*, !dbg !635
  %67 = load i64, i64* %66, align 8, !dbg !635, !tbaa !403
  %68 = add i64 %67, 25, !dbg !635
  %69 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* %64, i64 %68, i64 0) #3, !dbg !635
  br label %77, !dbg !636

; <label>:70:                                     ; preds = %47
  %71 = bitcast %union.GCObject* %15 to i8*, !dbg !637
  %72 = getelementptr inbounds %union.GCObject, %union.GCObject* %15, i64 0, i32 0, i32 6, !dbg !637
  %73 = bitcast %struct.global_State** %72 to i64*, !dbg !637
  %74 = load i64, i64* %73, align 8, !dbg !637, !tbaa !403
  %75 = add i64 %74, 40, !dbg !637
  %76 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* %71, i64 %75, i64 0) #3, !dbg !637
  br label %77, !dbg !639

; <label>:77:                                     ; preds = %70, %59, %57, %55, %53, %51, %49
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !640
  br label %78, !dbg !641

; <label>:78:                                     ; preds = %77, %47
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !641
  br label %79

; <label>:79:                                     ; preds = %78, %33
  %80 = phi %union.GCObject** [ %38, %33 ], [ %16, %78 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !569
  %81 = load %union.GCObject*, %union.GCObject** %80, align 8, !dbg !570, !tbaa !397
  %82 = icmp eq %union.GCObject* %81, null, !dbg !572
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !573
  br i1 %82, label %83, label %14, !dbg !573, !llvm.loop !642

; <label>:83:                                     ; preds = %79, %14, %3
  %84 = phi %union.GCObject** [ %1, %3 ], [ %16, %14 ], [ %80, %79 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !644
  ret %union.GCObject** %84, !dbg !644
}

; Function Attrs: noredzone nounwind
define hidden void @luaC_step(%struct.lua_State*) local_unnamed_addr #0 !dbg !645 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !652
  %3 = load %struct.global_State*, %struct.global_State** %2, align 8, !dbg !652, !tbaa !376
  %4 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 18, !dbg !654
  %5 = load i32, i32* %4, align 4, !dbg !654, !tbaa !655
  %6 = mul i32 %5, 10, !dbg !656
  %7 = zext i32 %6 to i64, !dbg !657
  %8 = icmp eq i32 %6, 0, !dbg !659
  %9 = select i1 %8, i64 9223372036854775806, i64 %7, !dbg !661
  %10 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 14, !dbg !662
  %11 = load i64, i64* %10, align 8, !dbg !662, !tbaa !513
  %12 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 13, !dbg !663
  %13 = load i64, i64* %12, align 8, !dbg !663, !tbaa !509
  %14 = sub i64 %11, %13, !dbg !664
  %15 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 16, !dbg !665
  %16 = load i64, i64* %15, align 8, !dbg !666, !tbaa !667
  %17 = add i64 %14, %16, !dbg !666
  store i64 %17, i64* %15, align 8, !dbg !666, !tbaa !667
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !668
  %18 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 4
  br label %19, !dbg !668

; <label>:19:                                     ; preds = %19, %1
  %20 = phi i64 [ %9, %1 ], [ %22, %19 ], !dbg !669
  %21 = tail call fastcc i64 @singlestep(%struct.lua_State* %0) #4, !dbg !671
  %22 = sub nsw i64 %20, %21, !dbg !672
  %23 = load i8, i8* %18, align 1, !dbg !673, !tbaa !675
  %24 = icmp ne i8 %23, 0, !dbg !676
  %25 = icmp sgt i64 %22, 0, !dbg !677
  %26 = and i1 %24, %25, !dbg !678
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !678
  br i1 %26, label %19, label %27, !dbg !678, !llvm.loop !679

; <label>:27:                                     ; preds = %19
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !681
  br i1 %24, label %28, label %37, !dbg !681

; <label>:28:                                     ; preds = %27
  %29 = load i64, i64* %15, align 8, !dbg !682, !tbaa !667
  %30 = icmp ult i64 %29, 1024, !dbg !686
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !687
  br i1 %30, label %31, label %34, !dbg !687

; <label>:31:                                     ; preds = %28
  %32 = load i64, i64* %10, align 8, !dbg !688, !tbaa !513
  %33 = add i64 %32, 1024, !dbg !689
  br label %45, !dbg !690

; <label>:34:                                     ; preds = %28
  %35 = add i64 %29, -1024, !dbg !691
  store i64 %35, i64* %15, align 8, !dbg !691, !tbaa !667
  %36 = load i64, i64* %10, align 8, !dbg !693, !tbaa !513
  br label %45

; <label>:37:                                     ; preds = %27
  %38 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 15, !dbg !694
  %39 = load i64, i64* %38, align 8, !dbg !694, !tbaa !696
  %40 = udiv i64 %39, 100, !dbg !694
  %41 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 17, !dbg !694
  %42 = load i32, i32* %41, align 8, !dbg !694, !tbaa !697
  %43 = sext i32 %42 to i64, !dbg !694
  %44 = mul i64 %40, %43, !dbg !694
  br label %45

; <label>:45:                                     ; preds = %31, %34, %37
  %46 = phi i64 [ %33, %31 ], [ %36, %34 ], [ %44, %37 ]
  store i64 %46, i64* %12, align 8, !dbg !698, !tbaa !509
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !699
  ret void, !dbg !699
}

; Function Attrs: noredzone nounwind
define internal fastcc i64 @singlestep(%struct.lua_State*) unnamed_addr #0 !dbg !700 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !712
  %3 = load %struct.global_State*, %struct.global_State** %2, align 8, !dbg !712, !tbaa !376
  %4 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 4, !dbg !714
  %5 = load i8, i8* %4, align 1, !dbg !714, !tbaa !675
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !715
  switch i8 %5, label %337 [
    i8 0, label %6
    i8 1, label %7
    i8 2, label %257
    i8 3, label %279
    i8 4, label %325
  ], !dbg !715

; <label>:6:                                      ; preds = %1
  tail call fastcc void @markroot(%struct.lua_State* nonnull %0) #4, !dbg !716
  br label %337, !dbg !718

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 8, !dbg !719
  %9 = load %union.GCObject*, %union.GCObject** %8, align 8, !dbg !719, !tbaa !722
  %10 = icmp eq %union.GCObject* %9, null, !dbg !723
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !724
  br i1 %10, label %13, label %11, !dbg !724

; <label>:11:                                     ; preds = %7
  %12 = tail call fastcc i64 @propagatemark(%struct.global_State* nonnull %3) #4, !dbg !725
  br label %337, !dbg !726

; <label>:13:                                     ; preds = %7
  %14 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 22, !dbg !744
  %15 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 22, i32 4, i32 0, i32 1, !dbg !746
  %16 = bitcast i32* %15 to %struct.UpVal**, !dbg !746
  %17 = load %struct.UpVal*, %struct.UpVal** %16, align 8, !dbg !746, !tbaa !403
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !748
  %18 = icmp eq %struct.UpVal* %17, %14, !dbg !749
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !751
  br i1 %18, label %19, label %20, !dbg !751

; <label>:19:                                     ; preds = %13
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !752
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !762
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !762
  br label %56, !dbg !762

; <label>:20:                                     ; preds = %13, %44
  %21 = phi %struct.UpVal* [ %47, %44 ], [ %17, %13 ]
  %22 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %21, i64 0, i32 2, !dbg !763
  %23 = load i8, i8* %22, align 1, !dbg !763, !tbaa !403
  %24 = zext i8 %23 to i32, !dbg !763
  %25 = and i32 %24, 4, !dbg !763
  %26 = icmp eq i32 %25, 0, !dbg !763
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !763
  br i1 %26, label %27, label %44, !dbg !763

; <label>:27:                                     ; preds = %20
  %28 = and i32 %24, 3, !dbg !763
  %29 = icmp eq i32 %28, 0, !dbg !763
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !766
  br i1 %29, label %30, label %44, !dbg !766

; <label>:30:                                     ; preds = %27
  %31 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %21, i64 0, i32 3, !dbg !767
  %32 = load %struct.lua_TValue*, %struct.lua_TValue** %31, align 8, !dbg !767, !tbaa !770
  %33 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %32, i64 0, i32 1, !dbg !767
  %34 = load i32, i32* %33, align 8, !dbg !767, !tbaa !518
  %35 = icmp sgt i32 %34, 3, !dbg !767
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !767
  br i1 %35, label %36, label %44, !dbg !767

; <label>:36:                                     ; preds = %30
  %37 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %32, i64 0, i32 0, i32 0, !dbg !767
  %38 = load %union.GCObject*, %union.GCObject** %37, align 8, !dbg !767, !tbaa !403
  %39 = getelementptr inbounds %union.GCObject, %union.GCObject* %38, i64 0, i32 0, i32 2, !dbg !767
  %40 = load i8, i8* %39, align 1, !dbg !767, !tbaa !403
  %41 = and i8 %40, 3, !dbg !767
  %42 = icmp eq i8 %41, 0, !dbg !767
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !771
  br i1 %42, label %44, label %43, !dbg !771

; <label>:43:                                     ; preds = %36
  tail call fastcc void @reallymarkobject(%struct.global_State* %3, %union.GCObject* %38) #3, !dbg !767
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !767
  br label %44, !dbg !767

; <label>:44:                                     ; preds = %43, %36, %30, %27, %20
  %45 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %21, i64 0, i32 4, i32 0, i32 1, !dbg !772
  %46 = bitcast i32* %45 to %struct.UpVal**, !dbg !772
  %47 = load %struct.UpVal*, %struct.UpVal** %46, align 8, !dbg !772, !tbaa !403
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !773
  %48 = icmp eq %struct.UpVal* %47, %14, !dbg !749
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !751
  br i1 %48, label %49, label %20, !dbg !751, !llvm.loop !774

; <label>:49:                                     ; preds = %44
  %50 = load %union.GCObject*, %union.GCObject** %8, align 8, !dbg !777, !tbaa !722
  %51 = icmp eq %union.GCObject* %50, null, !dbg !752
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !752
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !762
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !762
  br i1 %51, label %56, label %52, !dbg !762

; <label>:52:                                     ; preds = %49, %52
  %53 = tail call fastcc i64 @propagatemark(%struct.global_State* nonnull %3) #3, !dbg !778
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !762
  %54 = load %union.GCObject*, %union.GCObject** %8, align 8, !dbg !777, !tbaa !722
  %55 = icmp eq %union.GCObject* %54, null, !dbg !762
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !762
  br i1 %55, label %56, label %52, !dbg !762, !llvm.loop !779

; <label>:56:                                     ; preds = %52, %19, %49
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !782
  %57 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 10, !dbg !783
  %58 = bitcast %union.GCObject** %57 to i64*, !dbg !783
  %59 = load i64, i64* %58, align 8, !dbg !783, !tbaa !784
  %60 = bitcast %union.GCObject** %8 to i64*, !dbg !785
  store i64 %59, i64* %60, align 8, !dbg !785, !tbaa !722
  store %union.GCObject* null, %union.GCObject** %57, align 8, !dbg !786, !tbaa !784
  %61 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 2, !dbg !787
  %62 = load i8, i8* %61, align 1, !dbg !787, !tbaa !403
  %63 = and i8 %62, 3, !dbg !787
  %64 = icmp eq i8 %63, 0, !dbg !787
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !790
  br i1 %64, label %67, label %65, !dbg !790

; <label>:65:                                     ; preds = %56
  %66 = bitcast %struct.lua_State* %0 to %union.GCObject*, !dbg !787
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %3, %union.GCObject* %66) #3, !dbg !787
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !787
  br label %67, !dbg !787

; <label>:67:                                     ; preds = %65, %56
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !798
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !800
  br label %68, !dbg !800

; <label>:68:                                     ; preds = %80, %67
  %69 = phi i64 [ 0, %67 ], [ %81, %80 ]
  %70 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 23, i64 %69, !dbg !801
  %71 = load %struct.Table*, %struct.Table** %70, align 8, !dbg !801, !tbaa !397
  %72 = icmp eq %struct.Table* %71, null, !dbg !801
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !804
  br i1 %72, label %80, label %73, !dbg !804

; <label>:73:                                     ; preds = %68
  %74 = getelementptr inbounds %struct.Table, %struct.Table* %71, i64 0, i32 2, !dbg !805
  %75 = load i8, i8* %74, align 1, !dbg !805, !tbaa !403
  %76 = and i8 %75, 3, !dbg !805
  %77 = icmp eq i8 %76, 0, !dbg !805
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !808
  br i1 %77, label %80, label %78, !dbg !808

; <label>:78:                                     ; preds = %73
  %79 = bitcast %struct.Table* %71 to %union.GCObject*, !dbg !805
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %3, %union.GCObject* %79) #3, !dbg !805
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !805
  br label %80, !dbg !805

; <label>:80:                                     ; preds = %78, %73, %68
  %81 = add nuw nsw i64 %69, 1, !dbg !809
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !810
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !800
  %82 = icmp eq i64 %81, 9, !dbg !811
  br i1 %82, label %83, label %68, !dbg !800, !llvm.loop !812

; <label>:83:                                     ; preds = %80
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !815
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !819
  %84 = load %union.GCObject*, %union.GCObject** %8, align 8, !dbg !820, !tbaa !722
  %85 = icmp eq %union.GCObject* %84, null, !dbg !819
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !819
  br i1 %85, label %90, label %86, !dbg !819

; <label>:86:                                     ; preds = %83, %86
  %87 = tail call fastcc i64 @propagatemark(%struct.global_State* nonnull %3) #3, !dbg !821
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !819
  %88 = load %union.GCObject*, %union.GCObject** %8, align 8, !dbg !820, !tbaa !722
  %89 = icmp eq %union.GCObject* %88, null, !dbg !819
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !819
  br i1 %89, label %90, label %86, !dbg !819, !llvm.loop !779

; <label>:90:                                     ; preds = %86, %83
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !822
  %91 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 9, !dbg !823
  %92 = bitcast %union.GCObject** %91 to i64*, !dbg !823
  %93 = load i64, i64* %92, align 8, !dbg !823, !tbaa !824
  store i64 %93, i64* %60, align 8, !dbg !825, !tbaa !722
  store %union.GCObject* null, %union.GCObject** %91, align 8, !dbg !826, !tbaa !824
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !830
  %94 = icmp eq i64 %93, 0, !dbg !830
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !830
  br i1 %94, label %99, label %95, !dbg !830

; <label>:95:                                     ; preds = %90, %95
  %96 = tail call fastcc i64 @propagatemark(%struct.global_State* nonnull %3) #3, !dbg !831
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !830
  %97 = load %union.GCObject*, %union.GCObject** %8, align 8, !dbg !832, !tbaa !722
  %98 = icmp eq %union.GCObject* %97, null, !dbg !830
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !830
  br i1 %98, label %99, label %95, !dbg !830, !llvm.loop !779

; <label>:99:                                     ; preds = %95, %90
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !833
  %100 = tail call i64 @luaC_separateudata(%struct.lua_State* %0, i32 0) #3, !dbg !834
  %101 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 11, !dbg !842
  %102 = load %union.GCObject*, %union.GCObject** %101, align 8, !dbg !842, !tbaa !427
  %103 = icmp eq %union.GCObject* %102, null, !dbg !844
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !846
  br i1 %103, label %118, label %104, !dbg !846

; <label>:104:                                    ; preds = %99
  %105 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 3
  br label %106, !dbg !847

; <label>:106:                                    ; preds = %106, %104
  %107 = phi %union.GCObject* [ %109, %106 ], [ %102, %104 ], !dbg !850
  %108 = getelementptr inbounds %union.GCObject, %union.GCObject* %107, i64 0, i32 0, i32 0, !dbg !847
  %109 = load %union.GCObject*, %union.GCObject** %108, align 8, !dbg !847, !tbaa !403
  %110 = getelementptr inbounds %union.GCObject, %union.GCObject* %109, i64 0, i32 0, i32 2, !dbg !851
  %111 = load i8, i8* %110, align 1, !dbg !851, !tbaa !403
  %112 = and i8 %111, -8, !dbg !851
  %113 = load i8, i8* %105, align 8, !dbg !851, !tbaa !500
  %114 = and i8 %113, 3, !dbg !851
  %115 = or i8 %114, %112, !dbg !851
  store i8 %115, i8* %110, align 1, !dbg !851, !tbaa !403
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %3, %union.GCObject* %109) #3, !dbg !852
  %116 = load %union.GCObject*, %union.GCObject** %101, align 8, !dbg !853, !tbaa !427
  %117 = icmp eq %union.GCObject* %109, %116, !dbg !854
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !855
  br i1 %117, label %118, label %106, !dbg !855, !llvm.loop !856

; <label>:118:                                    ; preds = %106, %99
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !859
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !863
  %119 = load %union.GCObject*, %union.GCObject** %8, align 8, !dbg !864, !tbaa !722
  %120 = icmp eq %union.GCObject* %119, null, !dbg !863
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !863
  br i1 %120, label %127, label %121, !dbg !863

; <label>:121:                                    ; preds = %118, %121
  %122 = phi i64 [ %124, %121 ], [ 0, %118 ]
  %123 = tail call fastcc i64 @propagatemark(%struct.global_State* nonnull %3) #3, !dbg !865
  %124 = add i64 %123, %122, !dbg !866
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !863
  %125 = load %union.GCObject*, %union.GCObject** %8, align 8, !dbg !864, !tbaa !722
  %126 = icmp eq %union.GCObject* %125, null, !dbg !863
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !863
  br i1 %126, label %127, label %121, !dbg !863, !llvm.loop !779

; <label>:127:                                    ; preds = %121, %118
  %128 = phi i64 [ 0, %118 ], [ %124, %121 ], !dbg !867
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !868
  %129 = load %union.GCObject*, %union.GCObject** %57, align 8, !dbg !869, !tbaa !784
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !888
  %130 = icmp eq %union.GCObject* %129, null, !dbg !888
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !888
  br i1 %130, label %245, label %131, !dbg !888

; <label>:131:                                    ; preds = %127, %240
  %132 = phi %union.GCObject* [ %243, %240 ], [ %129, %127 ]
  %133 = bitcast %union.GCObject* %132 to %struct.Table*, !dbg !889
  %134 = getelementptr inbounds %union.GCObject, %union.GCObject* %132, i64 0, i32 0, i32 9, !dbg !891
  %135 = bitcast %struct.lua_TValue** %134 to i32*, !dbg !891
  %136 = load i32, i32* %135, align 8, !dbg !891, !tbaa !892
  %137 = getelementptr inbounds %union.GCObject, %union.GCObject* %132, i64 0, i32 0, i32 2, !dbg !894
  %138 = load i8, i8* %137, align 1, !dbg !894, !tbaa !895
  %139 = and i8 %138, 16, !dbg !894
  %140 = icmp eq i8 %139, 0, !dbg !894
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !896
  br i1 %140, label %176, label %141, !dbg !896

; <label>:141:                                    ; preds = %131
  %142 = icmp eq i32 %136, 0, !dbg !897
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !897
  br i1 %142, label %176, label %143, !dbg !897

; <label>:143:                                    ; preds = %141
  %144 = getelementptr inbounds %union.GCObject, %union.GCObject* %132, i64 0, i32 0, i32 5
  %145 = sext i32 %136 to i64, !dbg !897
  br label %146, !dbg !897

; <label>:146:                                    ; preds = %174, %143
  %147 = phi i64 [ %145, %143 ], [ %148, %174 ]
  %148 = add nsw i64 %147, -1, !dbg !898
  %149 = load %struct.lua_TValue*, %struct.lua_TValue** %144, align 8, !dbg !899, !tbaa !900
  %150 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %149, i64 %148, i32 1, !dbg !910
  %151 = load i32, i32* %150, align 8, !dbg !910, !tbaa !518
  %152 = icmp sgt i32 %151, 3, !dbg !910
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !912
  br i1 %152, label %153, label %168, !dbg !912

; <label>:153:                                    ; preds = %146
  %154 = icmp eq i32 %151, 4, !dbg !913
  %155 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %149, i64 %148, i32 0, i32 0, !dbg !915
  %156 = load %union.GCObject*, %union.GCObject** %155, align 8, !dbg !915, !tbaa !403
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !916
  %157 = getelementptr inbounds %union.GCObject, %union.GCObject* %156, i64 0, i32 0, i32 2, !dbg !915
  %158 = load i8, i8* %157, align 1, !dbg !915, !tbaa !403
  br i1 %154, label %159, label %161, !dbg !916

; <label>:159:                                    ; preds = %153
  %160 = and i8 %158, -4, !dbg !917
  store i8 %160, i8* %157, align 1, !dbg !917, !tbaa !403
  br label %168, !dbg !919

; <label>:161:                                    ; preds = %153
  %162 = and i8 %158, 3, !dbg !920
  %163 = icmp eq i8 %162, 0, !dbg !920
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !921
  br i1 %163, label %165, label %164, !dbg !921

; <label>:164:                                    ; preds = %161
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !922
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !923
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !924
  br label %172, !dbg !924

; <label>:165:                                    ; preds = %161
  %166 = icmp eq i32 %151, 7, !dbg !925
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !926
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br i1 %166, label %169, label %167, !dbg !926

; <label>:167:                                    ; preds = %165
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !923
  br label %173, !dbg !924

; <label>:168:                                    ; preds = %146, %159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !927
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !923
  br label %173, !dbg !924

; <label>:169:                                    ; preds = %165
  %170 = and i8 %158, 8
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !922
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !923
  %171 = icmp eq i8 %170, 0, !dbg !928
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !924
  br i1 %171, label %174, label %172, !dbg !924

; <label>:172:                                    ; preds = %169, %164
  store i32 0, i32* %150, align 8, !dbg !929, !tbaa !518
  br label %173, !dbg !929

; <label>:173:                                    ; preds = %167, %168, %172
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !930
  br label %174, !dbg !897

; <label>:174:                                    ; preds = %173, %169
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !897
  %175 = icmp eq i64 %148, 0
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !897
  br i1 %175, label %176, label %146, !dbg !897, !llvm.loop !931

; <label>:176:                                    ; preds = %174, %141, %131
  %177 = getelementptr inbounds %struct.Table, %struct.Table* %133, i64 0, i32 4, !dbg !934
  %178 = load i8, i8* %177, align 1, !dbg !934, !tbaa !935
  %179 = zext i8 %178 to i32, !dbg !934
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !936
  %180 = shl nsw i32 -1, %179, !dbg !937
  %181 = xor i32 %180, -1, !dbg !937
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !936
  %182 = getelementptr inbounds %union.GCObject, %union.GCObject* %132, i64 0, i32 0, i32 6
  %183 = bitcast %struct.global_State** %182 to %struct.Node**
  %184 = sext i32 %181 to i64, !dbg !936
  br label %185, !dbg !936

; <label>:185:                                    ; preds = %237, %176
  %186 = phi i64 [ %184, %176 ], [ %238, %237 ]
  %187 = load %struct.Node*, %struct.Node** %183, align 8, !dbg !938, !tbaa !939
  %188 = getelementptr inbounds %struct.Node, %struct.Node* %187, i64 %186, i32 0, i32 1, !dbg !940
  %189 = load i32, i32* %188, align 8, !dbg !940, !tbaa !942
  %190 = icmp eq i32 %189, 0, !dbg !940
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !944
  br i1 %190, label %237, label %191, !dbg !944

; <label>:191:                                    ; preds = %185
  %192 = getelementptr inbounds %struct.Node, %struct.Node* %187, i64 %186, i32 1, i32 0, i32 1, !dbg !947
  %193 = load i32, i32* %192, align 8, !dbg !947, !tbaa !518
  %194 = icmp sgt i32 %193, 3, !dbg !947
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !948
  br i1 %194, label %196, label %195, !dbg !948

; <label>:195:                                    ; preds = %191
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !949
  br label %208, !dbg !949

; <label>:196:                                    ; preds = %191
  %197 = icmp eq i32 %193, 4, !dbg !950
  %198 = getelementptr inbounds %struct.Node, %struct.Node* %187, i64 %186, i32 1, i32 0, i32 0, i32 0, !dbg !951
  %199 = load %union.GCObject*, %union.GCObject** %198, align 8, !dbg !951, !tbaa !403
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !952
  %200 = getelementptr inbounds %union.GCObject, %union.GCObject* %199, i64 0, i32 0, i32 2, !dbg !951
  %201 = load i8, i8* %200, align 1, !dbg !951, !tbaa !403
  br i1 %197, label %202, label %205, !dbg !952

; <label>:202:                                    ; preds = %196
  %203 = and i8 %201, -4, !dbg !953
  store i8 %203, i8* %200, align 1, !dbg !953, !tbaa !403
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !954
  %204 = load i32, i32* %188, align 8, !dbg !955, !tbaa !518
  br label %208, !dbg !954

; <label>:205:                                    ; preds = %196
  %206 = and i8 %201, 3, !dbg !957
  %207 = icmp eq i8 %206, 0, !dbg !957
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !958
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !959
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !959
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !959
  br i1 %207, label %210, label %232, !dbg !958

; <label>:208:                                    ; preds = %202, %195
  %209 = phi i32 [ %204, %202 ], [ %189, %195 ], !dbg !955
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !960
  br label %210, !dbg !961

; <label>:210:                                    ; preds = %205, %208
  %211 = phi i32 [ %209, %208 ], [ %189, %205 ], !dbg !955
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !961
  %212 = icmp sgt i32 %211, 3, !dbg !955
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !963
  br i1 %212, label %213, label %228, !dbg !963

; <label>:213:                                    ; preds = %210
  %214 = icmp eq i32 %211, 4, !dbg !964
  %215 = getelementptr inbounds %struct.Node, %struct.Node* %187, i64 %186, i32 0, i32 0, i32 0, !dbg !965
  %216 = load %union.GCObject*, %union.GCObject** %215, align 8, !dbg !965, !tbaa !403
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !966
  %217 = getelementptr inbounds %union.GCObject, %union.GCObject* %216, i64 0, i32 0, i32 2, !dbg !965
  %218 = load i8, i8* %217, align 1, !dbg !965, !tbaa !403
  br i1 %214, label %219, label %221, !dbg !966

; <label>:219:                                    ; preds = %213
  %220 = and i8 %218, -4, !dbg !967
  store i8 %220, i8* %217, align 1, !dbg !967, !tbaa !403
  br label %228, !dbg !968

; <label>:221:                                    ; preds = %213
  %222 = and i8 %218, 3, !dbg !969
  %223 = icmp eq i8 %222, 0, !dbg !969
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !970
  br i1 %223, label %225, label %224, !dbg !970

; <label>:224:                                    ; preds = %221
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !971
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !972
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !973
  br label %232, !dbg !973

; <label>:225:                                    ; preds = %221
  %226 = icmp eq i32 %211, 7, !dbg !974
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !975
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br i1 %226, label %229, label %227, !dbg !975

; <label>:227:                                    ; preds = %225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !972
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !973
  br label %237, !dbg !973

; <label>:228:                                    ; preds = %210, %219
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !959
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !972
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !973
  br label %237, !dbg !973

; <label>:229:                                    ; preds = %225
  %230 = and i8 %218, 8
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !971
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !972
  %231 = icmp eq i8 %230, 0, !dbg !976
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !973
  br i1 %231, label %237, label %232, !dbg !973

; <label>:232:                                    ; preds = %229, %224, %205
  store i32 0, i32* %188, align 8, !dbg !977, !tbaa !942
  %233 = load i32, i32* %192, align 8, !dbg !979, !tbaa !403
  %234 = icmp sgt i32 %233, 3, !dbg !979
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !987
  br i1 %234, label %235, label %236, !dbg !987

; <label>:235:                                    ; preds = %232
  store i32 11, i32* %192, align 8, !dbg !988, !tbaa !403
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !988
  br label %236, !dbg !988

; <label>:236:                                    ; preds = %235, %232
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !989
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !990
  br label %237, !dbg !990

; <label>:237:                                    ; preds = %236, %229, %228, %227, %185
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !936
  %238 = add nsw i64 %186, -1, !dbg !937
  %239 = icmp eq i64 %186, 0
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !936
  br i1 %239, label %240, label %185, !dbg !936, !llvm.loop !991

; <label>:240:                                    ; preds = %237
  %241 = getelementptr inbounds %union.GCObject, %union.GCObject* %132, i64 0, i32 0, i32 8, !dbg !994
  %242 = bitcast i32** %241 to %union.GCObject**, !dbg !994
  %243 = load %union.GCObject*, %union.GCObject** %242, align 8, !dbg !994, !tbaa !995
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !888
  %244 = icmp eq %union.GCObject* %243, null, !dbg !888
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !888
  br i1 %244, label %245, label %131, !dbg !888, !llvm.loop !996

; <label>:245:                                    ; preds = %240, %127
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !999
  %246 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 3, !dbg !1000
  %247 = load i8, i8* %246, align 8, !dbg !1000, !tbaa !500
  %248 = xor i8 %247, 3, !dbg !1000
  store i8 %248, i8* %246, align 8, !dbg !1001, !tbaa !500
  %249 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 5, !dbg !1002
  store i32 0, i32* %249, align 4, !dbg !1003, !tbaa !1004
  %250 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 6, !dbg !1005
  %251 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 7, !dbg !1006
  store %union.GCObject** %250, %union.GCObject*** %251, align 8, !dbg !1007, !tbaa !1008
  store i8 2, i8* %4, align 1, !dbg !1009, !tbaa !675
  %252 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 14, !dbg !1010
  %253 = load i64, i64* %252, align 8, !dbg !1010, !tbaa !513
  %254 = add i64 %128, %100, !dbg !1011
  %255 = sub i64 %253, %254, !dbg !1012
  %256 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 15, !dbg !1013
  store i64 %255, i64* %256, align 8, !dbg !1014, !tbaa !696
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1015
  br label %337, !dbg !1016

; <label>:257:                                    ; preds = %1
  %258 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 14, !dbg !1017
  %259 = load i64, i64* %258, align 8, !dbg !1017, !tbaa !513
  %260 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 0, i32 0, !dbg !1019
  %261 = load %union.GCObject**, %union.GCObject*** %260, align 8, !dbg !1019, !tbaa !547
  %262 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 5, !dbg !1019
  %263 = load i32, i32* %262, align 4, !dbg !1019, !tbaa !1004
  %264 = add nsw i32 %263, 1, !dbg !1019
  store i32 %264, i32* %262, align 4, !dbg !1019, !tbaa !1004
  %265 = sext i32 %263 to i64, !dbg !1019
  %266 = getelementptr inbounds %union.GCObject*, %union.GCObject** %261, i64 %265, !dbg !1019
  %267 = tail call fastcc %union.GCObject** @sweeplist(%struct.lua_State* nonnull %0, %union.GCObject** %266, i64 -3) #4, !dbg !1019
  %268 = load i32, i32* %262, align 4, !dbg !1020, !tbaa !1004
  %269 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 0, i32 2, !dbg !1022
  %270 = load i32, i32* %269, align 4, !dbg !1022, !tbaa !543
  %271 = icmp slt i32 %268, %270, !dbg !1023
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1024
  br i1 %271, label %273, label %272, !dbg !1024

; <label>:272:                                    ; preds = %257
  store i8 3, i8* %4, align 1, !dbg !1025, !tbaa !675
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1026
  br label %273, !dbg !1026

; <label>:273:                                    ; preds = %257, %272
  %274 = load i64, i64* %258, align 8, !dbg !1027, !tbaa !513
  %275 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 15, !dbg !1028
  %276 = load i64, i64* %275, align 8, !dbg !1029, !tbaa !696
  %277 = sub i64 %274, %259, !dbg !1029
  %278 = add i64 %277, %276, !dbg !1029
  store i64 %278, i64* %275, align 8, !dbg !1029, !tbaa !696
  br label %337

; <label>:279:                                    ; preds = %1
  %280 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 14, !dbg !1030
  %281 = load i64, i64* %280, align 8, !dbg !1030, !tbaa !513
  %282 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 7, !dbg !1032
  %283 = load %union.GCObject**, %union.GCObject*** %282, align 8, !dbg !1032, !tbaa !1008
  %284 = tail call fastcc %union.GCObject** @sweeplist(%struct.lua_State* nonnull %0, %union.GCObject** %283, i64 40) #4, !dbg !1033
  store %union.GCObject** %284, %union.GCObject*** %282, align 8, !dbg !1034, !tbaa !1008
  %285 = load %union.GCObject*, %union.GCObject** %284, align 8, !dbg !1035, !tbaa !397
  %286 = icmp eq %union.GCObject* %285, null, !dbg !1037
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1038
  br i1 %286, label %287, label %319, !dbg !1038

; <label>:287:                                    ; preds = %279
  %288 = load %struct.global_State*, %struct.global_State** %2, align 8, !dbg !1049, !tbaa !376
  %289 = getelementptr inbounds %struct.global_State, %struct.global_State* %288, i64 0, i32 0, i32 1, !dbg !1051
  %290 = load i32, i32* %289, align 8, !dbg !1051, !tbaa !634
  %291 = getelementptr inbounds %struct.global_State, %struct.global_State* %288, i64 0, i32 0, i32 2, !dbg !1053
  %292 = load i32, i32* %291, align 4, !dbg !1053, !tbaa !543
  %293 = sdiv i32 %292, 4, !dbg !1053
  %294 = icmp ult i32 %290, %293, !dbg !1054
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1055
  br i1 %294, label %295, label %299, !dbg !1055

; <label>:295:                                    ; preds = %287
  %296 = icmp sgt i32 %292, 64, !dbg !1056
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1057
  br i1 %296, label %297, label %299, !dbg !1057

; <label>:297:                                    ; preds = %295
  %298 = lshr i32 %292, 1
  tail call void @luaS_resize(%struct.lua_State* nonnull %0, i32 %298) #3, !dbg !1058
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1058
  br label %299, !dbg !1058

; <label>:299:                                    ; preds = %297, %295, %287
  %300 = getelementptr inbounds %struct.global_State, %struct.global_State* %288, i64 0, i32 12, !dbg !1059
  %301 = getelementptr inbounds %struct.global_State, %struct.global_State* %288, i64 0, i32 12, i32 2, !dbg !1059
  %302 = load i64, i64* %301, align 8, !dbg !1059, !tbaa !1060
  %303 = icmp ugt i64 %302, 64, !dbg !1061
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1062
  br i1 %303, label %304, label %318, !dbg !1062

; <label>:304:                                    ; preds = %299
  %305 = lshr i64 %302, 1, !dbg !1063
  %306 = add nuw i64 %305, 1, !dbg !1065
  %307 = icmp ult i64 %306, -2, !dbg !1065
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1065
  br i1 %307, label %308, label %312, !dbg !1065

; <label>:308:                                    ; preds = %304
  %309 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %300, i64 0, i32 0, !dbg !1065
  %310 = load i8*, i8** %309, align 8, !dbg !1065, !tbaa !1066
  %311 = tail call i8* @luaM_realloc_(%struct.lua_State* nonnull %0, i8* %310, i64 %302, i64 %305) #3, !dbg !1065
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1065
  br label %315, !dbg !1065

; <label>:312:                                    ; preds = %304
  %313 = tail call i8* @luaM_toobig(%struct.lua_State* nonnull %0) #3, !dbg !1065
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1065
  %314 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %300, i64 0, i32 0, !dbg !1065
  br label %315, !dbg !1065

; <label>:315:                                    ; preds = %312, %308
  %316 = phi i8** [ %314, %312 ], [ %309, %308 ], !dbg !1065
  %317 = phi i8* [ %313, %312 ], [ %311, %308 ], !dbg !1065
  store i8* %317, i8** %316, align 8, !dbg !1065, !tbaa !1066
  store i64 %305, i64* %301, align 8, !dbg !1065, !tbaa !1060
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1067
  br label %318, !dbg !1067

; <label>:318:                                    ; preds = %299, %315
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1068
  store i8 4, i8* %4, align 1, !dbg !1069, !tbaa !675
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1070
  br label %319, !dbg !1070

; <label>:319:                                    ; preds = %318, %279
  %320 = load i64, i64* %280, align 8, !dbg !1071, !tbaa !513
  %321 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 15, !dbg !1072
  %322 = load i64, i64* %321, align 8, !dbg !1073, !tbaa !696
  %323 = sub i64 %320, %281, !dbg !1073
  %324 = add i64 %323, %322, !dbg !1073
  store i64 %324, i64* %321, align 8, !dbg !1073, !tbaa !696
  br label %337

; <label>:325:                                    ; preds = %1
  %326 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 11, !dbg !1074
  %327 = load %union.GCObject*, %union.GCObject** %326, align 8, !dbg !1074, !tbaa !427
  %328 = icmp eq %union.GCObject* %327, null, !dbg !1077
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1078
  br i1 %328, label %335, label %329, !dbg !1078

; <label>:329:                                    ; preds = %325
  tail call fastcc void @GCTM(%struct.lua_State* nonnull %0) #4, !dbg !1079
  %330 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 15, !dbg !1081
  %331 = load i64, i64* %330, align 8, !dbg !1081, !tbaa !696
  %332 = icmp ugt i64 %331, 100, !dbg !1083
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1084
  br i1 %332, label %333, label %337, !dbg !1084

; <label>:333:                                    ; preds = %329
  %334 = add i64 %331, -100, !dbg !1085
  store i64 %334, i64* %330, align 8, !dbg !1085, !tbaa !696
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1086
  br label %337, !dbg !1086

; <label>:335:                                    ; preds = %325
  store i8 0, i8* %4, align 1, !dbg !1087, !tbaa !675
  %336 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 16, !dbg !1089
  store i64 0, i64* %336, align 8, !dbg !1090, !tbaa !667
  br label %337, !dbg !1091

; <label>:337:                                    ; preds = %1, %329, %333, %335, %319, %273, %245, %11, %6
  %338 = phi i64 [ 0, %335 ], [ 400, %319 ], [ 10, %273 ], [ %12, %11 ], [ 0, %245 ], [ 0, %6 ], [ 100, %333 ], [ 100, %329 ], [ 0, %1 ], !dbg !1092
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1093
  ret i64 %338, !dbg !1093
}

; Function Attrs: noredzone nounwind
define hidden void @luaC_fullgc(%struct.lua_State*) local_unnamed_addr #0 !dbg !1094 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1099
  %3 = load %struct.global_State*, %struct.global_State** %2, align 8, !dbg !1099, !tbaa !376
  %4 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 4, !dbg !1101
  %5 = load i8, i8* %4, align 1, !dbg !1101, !tbaa !675
  %6 = icmp ult i8 %5, 2, !dbg !1103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1104
  br i1 %6, label %7, label %14, !dbg !1104

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 5, !dbg !1105
  store i32 0, i32* %8, align 4, !dbg !1107, !tbaa !1004
  %9 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 6, !dbg !1108
  %10 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 7, !dbg !1109
  store %union.GCObject** %9, %union.GCObject*** %10, align 8, !dbg !1110, !tbaa !1008
  %11 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 8, !dbg !1111
  %12 = bitcast %union.GCObject** %11 to <2 x %union.GCObject*>*, !dbg !1112
  store <2 x %union.GCObject*> zeroinitializer, <2 x %union.GCObject*>* %12, align 8, !dbg !1112, !tbaa !397
  %13 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 10, !dbg !1113
  store %union.GCObject* null, %union.GCObject** %13, align 8, !dbg !1114, !tbaa !784
  store i8 2, i8* %4, align 1, !dbg !1115, !tbaa !675
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1116
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1117
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1117
  br label %16, !dbg !1117

; <label>:14:                                     ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1117
  %15 = icmp eq i8 %5, 4, !dbg !1118
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1117
  br i1 %15, label %21, label %16, !dbg !1117

; <label>:16:                                     ; preds = %7, %14
  br label %17, !dbg !1119

; <label>:17:                                     ; preds = %16, %17
  %18 = tail call fastcc i64 @singlestep(%struct.lua_State* %0) #4, !dbg !1119
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1117
  %19 = load i8, i8* %4, align 1, !dbg !1121, !tbaa !675
  %20 = icmp eq i8 %19, 4, !dbg !1118
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1117
  br i1 %20, label %21, label %17, !dbg !1117, !llvm.loop !1122

; <label>:21:                                     ; preds = %17, %14
  tail call fastcc void @markroot(%struct.lua_State* %0) #4, !dbg !1124
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1125
  %22 = load i8, i8* %4, align 1, !dbg !1126, !tbaa !675
  %23 = icmp eq i8 %22, 0, !dbg !1127
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1125
  br i1 %23, label %28, label %24, !dbg !1125

; <label>:24:                                     ; preds = %21, %24
  %25 = tail call fastcc i64 @singlestep(%struct.lua_State* %0) #4, !dbg !1128
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1125
  %26 = load i8, i8* %4, align 1, !dbg !1126, !tbaa !675
  %27 = icmp eq i8 %26, 0, !dbg !1127
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1125
  br i1 %27, label %28, label %24, !dbg !1125, !llvm.loop !1130

; <label>:28:                                     ; preds = %24, %21
  %29 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 15, !dbg !1132
  %30 = load i64, i64* %29, align 8, !dbg !1132, !tbaa !696
  %31 = udiv i64 %30, 100, !dbg !1132
  %32 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 17, !dbg !1132
  %33 = load i32, i32* %32, align 8, !dbg !1132, !tbaa !697
  %34 = sext i32 %33 to i64, !dbg !1132
  %35 = mul i64 %31, %34, !dbg !1132
  %36 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 13, !dbg !1132
  store i64 %35, i64* %36, align 8, !dbg !1132, !tbaa !509
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1133
  ret void, !dbg !1133
}

; Function Attrs: noredzone nounwind
define internal fastcc void @markroot(%struct.lua_State* nocapture readonly) unnamed_addr #0 !dbg !1134 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1139
  %3 = load %struct.global_State*, %struct.global_State** %2, align 8, !dbg !1139, !tbaa !376
  %4 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 8, !dbg !1141
  %5 = bitcast %union.GCObject** %4 to <2 x %union.GCObject*>*, !dbg !1142
  store <2 x %union.GCObject*> zeroinitializer, <2 x %union.GCObject*>* %5, align 8, !dbg !1142, !tbaa !397
  %6 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 10, !dbg !1143
  store %union.GCObject* null, %union.GCObject** %6, align 8, !dbg !1144, !tbaa !784
  %7 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 21, !dbg !1145
  %8 = bitcast %struct.lua_State** %7 to %union.GCObject**, !dbg !1145
  %9 = load %union.GCObject*, %union.GCObject** %8, align 8, !dbg !1145, !tbaa !388
  %10 = getelementptr inbounds %union.GCObject, %union.GCObject* %9, i64 0, i32 0, i32 2, !dbg !1145
  %11 = load i8, i8* %10, align 1, !dbg !1145, !tbaa !403
  %12 = and i8 %11, 3, !dbg !1145
  %13 = icmp eq i8 %12, 0, !dbg !1145
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1148
  %14 = getelementptr inbounds %union.GCObject, %union.GCObject* %9, i64 0, i32 0, !dbg !1148
  br i1 %13, label %17, label %15, !dbg !1148

; <label>:15:                                     ; preds = %1
  tail call fastcc void @reallymarkobject(%struct.global_State* %3, %union.GCObject* %9) #4, !dbg !1145
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1145
  %16 = load %struct.lua_State*, %struct.lua_State** %7, align 8, !dbg !1149, !tbaa !388
  br label %17, !dbg !1145

; <label>:17:                                     ; preds = %1, %15
  %18 = phi %struct.lua_State* [ %14, %1 ], [ %16, %15 ], !dbg !1149
  %19 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %18, i64 0, i32 22, i32 1, !dbg !1149
  %20 = load i32, i32* %19, align 8, !dbg !1149, !tbaa !1152
  %21 = icmp sgt i32 %20, 3, !dbg !1149
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1149
  br i1 %21, label %22, label %30, !dbg !1149

; <label>:22:                                     ; preds = %17
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %18, i64 0, i32 22, i32 0, i32 0, !dbg !1149
  %24 = load %union.GCObject*, %union.GCObject** %23, align 8, !dbg !1149, !tbaa !403
  %25 = getelementptr inbounds %union.GCObject, %union.GCObject* %24, i64 0, i32 0, i32 2, !dbg !1149
  %26 = load i8, i8* %25, align 1, !dbg !1149, !tbaa !403
  %27 = and i8 %26, 3, !dbg !1149
  %28 = icmp eq i8 %27, 0, !dbg !1149
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1153
  br i1 %28, label %30, label %29, !dbg !1153

; <label>:29:                                     ; preds = %22
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %3, %union.GCObject* %24) #4, !dbg !1149
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1149
  br label %30, !dbg !1149

; <label>:30:                                     ; preds = %22, %29, %17
  %31 = load %struct.global_State*, %struct.global_State** %2, align 8, !dbg !1154, !tbaa !376
  %32 = getelementptr inbounds %struct.global_State, %struct.global_State* %31, i64 0, i32 20, i32 1, !dbg !1154
  %33 = load i32, i32* %32, align 8, !dbg !1154, !tbaa !1157
  %34 = icmp sgt i32 %33, 3, !dbg !1154
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1154
  br i1 %34, label %35, label %43, !dbg !1154

; <label>:35:                                     ; preds = %30
  %36 = getelementptr inbounds %struct.global_State, %struct.global_State* %31, i64 0, i32 20, i32 0, i32 0, !dbg !1154
  %37 = load %union.GCObject*, %union.GCObject** %36, align 8, !dbg !1154, !tbaa !403
  %38 = getelementptr inbounds %union.GCObject, %union.GCObject* %37, i64 0, i32 0, i32 2, !dbg !1154
  %39 = load i8, i8* %38, align 1, !dbg !1154, !tbaa !403
  %40 = and i8 %39, 3, !dbg !1154
  %41 = icmp eq i8 %40, 0, !dbg !1154
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1158
  br i1 %41, label %43, label %42, !dbg !1158

; <label>:42:                                     ; preds = %35
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %3, %union.GCObject* %37) #4, !dbg !1154
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1154
  br label %43, !dbg !1154

; <label>:43:                                     ; preds = %35, %42, %30
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1162
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1163
  br label %44, !dbg !1163

; <label>:44:                                     ; preds = %56, %43
  %45 = phi i64 [ 0, %43 ], [ %57, %56 ]
  %46 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 23, i64 %45, !dbg !1164
  %47 = load %struct.Table*, %struct.Table** %46, align 8, !dbg !1164, !tbaa !397
  %48 = icmp eq %struct.Table* %47, null, !dbg !1164
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1165
  br i1 %48, label %56, label %49, !dbg !1165

; <label>:49:                                     ; preds = %44
  %50 = getelementptr inbounds %struct.Table, %struct.Table* %47, i64 0, i32 2, !dbg !1166
  %51 = load i8, i8* %50, align 1, !dbg !1166, !tbaa !403
  %52 = and i8 %51, 3, !dbg !1166
  %53 = icmp eq i8 %52, 0, !dbg !1166
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1167
  br i1 %53, label %56, label %54, !dbg !1167

; <label>:54:                                     ; preds = %49
  %55 = bitcast %struct.Table* %47 to %union.GCObject*, !dbg !1166
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %3, %union.GCObject* %55) #3, !dbg !1166
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1166
  br label %56, !dbg !1166

; <label>:56:                                     ; preds = %54, %49, %44
  %57 = add nuw nsw i64 %45, 1, !dbg !1168
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1169
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1163
  %58 = icmp eq i64 %57, 9, !dbg !1170
  br i1 %58, label %59, label %44, !dbg !1163, !llvm.loop !812

; <label>:59:                                     ; preds = %56
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1171
  %60 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 4, !dbg !1172
  store i8 1, i8* %60, align 1, !dbg !1173, !tbaa !675
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1174
  ret void, !dbg !1174
}

; Function Attrs: noredzone nounwind
define hidden void @luaC_barrierf(%struct.lua_State* nocapture readonly, %union.GCObject* nocapture, %union.GCObject*) local_unnamed_addr #0 !dbg !1175 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1186
  %5 = load %struct.global_State*, %struct.global_State** %4, align 8, !dbg !1186, !tbaa !376
  %6 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 4, !dbg !1188
  %7 = load i8, i8* %6, align 1, !dbg !1188, !tbaa !675
  %8 = icmp eq i8 %7, 1, !dbg !1190
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1191
  br i1 %8, label %9, label %10, !dbg !1191

; <label>:9:                                      ; preds = %3
  tail call fastcc void @reallymarkobject(%struct.global_State* %5, %union.GCObject* %2) #4, !dbg !1192
  br label %18, !dbg !1192

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds %union.GCObject, %union.GCObject* %1, i64 0, i32 0, i32 2, !dbg !1193
  %12 = load i8, i8* %11, align 1, !dbg !1193, !tbaa !403
  %13 = and i8 %12, -8, !dbg !1193
  %14 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 3, !dbg !1193
  %15 = load i8, i8* %14, align 8, !dbg !1193, !tbaa !500
  %16 = and i8 %15, 3, !dbg !1193
  %17 = or i8 %16, %13, !dbg !1193
  store i8 %17, i8* %11, align 1, !dbg !1193, !tbaa !403
  br label %18

; <label>:18:                                     ; preds = %10, %9
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1194
  ret void, !dbg !1194
}

; Function Attrs: noredzone nounwind
define internal fastcc void @reallymarkobject(%struct.global_State*, %union.GCObject*) unnamed_addr #0 !dbg !1195 {
  %3 = getelementptr inbounds %union.GCObject, %union.GCObject* %1, i64 0, i32 0, i32 2, !dbg !1208
  %4 = load i8, i8* %3, align 1, !dbg !1208, !tbaa !403
  %5 = and i8 %4, -4, !dbg !1208
  store i8 %5, i8* %3, align 1, !dbg !1208, !tbaa !403
  %6 = getelementptr inbounds %union.GCObject, %union.GCObject* %1, i64 0, i32 0, i32 1, !dbg !1209
  %7 = load i8, i8* %6, align 8, !dbg !1209, !tbaa !403
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1210
  switch i8 %7, label %78 [
    i8 9, label %71
    i8 7, label %8
    i8 10, label %30
    i8 6, label %53
    i8 5, label %59
    i8 8, label %65
  ], !dbg !1210

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %union.GCObject, %union.GCObject* %1, i64 0, i32 0, i32 4, !dbg !1211
  %10 = bitcast %struct.lua_TValue** %9 to %struct.Table**, !dbg !1211
  %11 = load %struct.Table*, %struct.Table** %10, align 8, !dbg !1211, !tbaa !403
  %12 = or i8 %5, 4, !dbg !1213
  store i8 %12, i8* %3, align 1, !dbg !1213, !tbaa !403
  %13 = icmp eq %struct.Table* %11, null, !dbg !1214
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1216
  br i1 %13, label %21, label %14, !dbg !1216

; <label>:14:                                     ; preds = %8
  %15 = getelementptr inbounds %struct.Table, %struct.Table* %11, i64 0, i32 2, !dbg !1217
  %16 = load i8, i8* %15, align 1, !dbg !1217, !tbaa !403
  %17 = and i8 %16, 3, !dbg !1217
  %18 = icmp eq i8 %17, 0, !dbg !1217
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1220
  br i1 %18, label %21, label %19, !dbg !1220

; <label>:19:                                     ; preds = %14
  %20 = bitcast %struct.Table* %11 to %union.GCObject*, !dbg !1217
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %union.GCObject* %20) #4, !dbg !1217
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1217
  br label %21, !dbg !1217

; <label>:21:                                     ; preds = %14, %8, %19
  %22 = getelementptr inbounds %union.GCObject, %union.GCObject* %1, i64 0, i32 0, i32 5, !dbg !1221
  %23 = bitcast %struct.lua_TValue** %22 to %union.GCObject**, !dbg !1221
  %24 = load %union.GCObject*, %union.GCObject** %23, align 8, !dbg !1221, !tbaa !403
  %25 = getelementptr inbounds %union.GCObject, %union.GCObject* %24, i64 0, i32 0, i32 2, !dbg !1221
  %26 = load i8, i8* %25, align 1, !dbg !1221, !tbaa !403
  %27 = and i8 %26, 3, !dbg !1221
  %28 = icmp eq i8 %27, 0, !dbg !1221
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1224
  br i1 %28, label %77, label %29, !dbg !1224

; <label>:29:                                     ; preds = %21
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %union.GCObject* %24) #4, !dbg !1221
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1221
  br label %77, !dbg !1221

; <label>:30:                                     ; preds = %2
  %31 = getelementptr inbounds %union.GCObject, %union.GCObject* %1, i64 0, i32 0, i32 4, !dbg !1226
  %32 = load %struct.lua_TValue*, %struct.lua_TValue** %31, align 8, !dbg !1226, !tbaa !770
  %33 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %32, i64 0, i32 1, !dbg !1226
  %34 = load i32, i32* %33, align 8, !dbg !1226, !tbaa !518
  %35 = icmp sgt i32 %34, 3, !dbg !1226
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1226
  br i1 %35, label %36, label %45, !dbg !1226

; <label>:36:                                     ; preds = %30
  %37 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %32, i64 0, i32 0, i32 0, !dbg !1226
  %38 = load %union.GCObject*, %union.GCObject** %37, align 8, !dbg !1226, !tbaa !403
  %39 = getelementptr inbounds %union.GCObject, %union.GCObject* %38, i64 0, i32 0, i32 2, !dbg !1226
  %40 = load i8, i8* %39, align 1, !dbg !1226, !tbaa !403
  %41 = and i8 %40, 3, !dbg !1226
  %42 = icmp eq i8 %41, 0, !dbg !1226
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1229
  br i1 %42, label %45, label %43, !dbg !1229

; <label>:43:                                     ; preds = %36
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %union.GCObject* %38) #4, !dbg !1226
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1226
  %44 = load %struct.lua_TValue*, %struct.lua_TValue** %31, align 8, !dbg !1230, !tbaa !770
  br label %45, !dbg !1226

; <label>:45:                                     ; preds = %36, %43, %30
  %46 = phi %struct.lua_TValue* [ %32, %36 ], [ %44, %43 ], [ %32, %30 ], !dbg !1230
  %47 = getelementptr inbounds %union.GCObject, %union.GCObject* %1, i64 0, i32 0, i32 5, !dbg !1232
  %48 = bitcast %struct.lua_TValue** %47 to %struct.lua_TValue*, !dbg !1233
  %49 = icmp eq %struct.lua_TValue* %46, %48, !dbg !1234
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1235
  br i1 %49, label %50, label %77, !dbg !1235

; <label>:50:                                     ; preds = %45
  %51 = load i8, i8* %3, align 1, !dbg !1236, !tbaa !403
  %52 = or i8 %51, 4, !dbg !1236
  store i8 %52, i8* %3, align 1, !dbg !1236, !tbaa !403
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1236
  br label %77, !dbg !1236

; <label>:53:                                     ; preds = %2
  %54 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 8, !dbg !1237
  %55 = bitcast %union.GCObject** %54 to i64*, !dbg !1237
  %56 = load i64, i64* %55, align 8, !dbg !1237, !tbaa !722
  %57 = getelementptr inbounds %union.GCObject, %union.GCObject* %1, i64 0, i32 0, i32 4, !dbg !1239
  %58 = bitcast %struct.lua_TValue** %57 to i64*, !dbg !1240
  store i64 %56, i64* %58, align 8, !dbg !1240, !tbaa !403
  store %union.GCObject* %1, %union.GCObject** %54, align 8, !dbg !1241, !tbaa !722
  br label %77, !dbg !1242

; <label>:59:                                     ; preds = %2
  %60 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 8, !dbg !1243
  %61 = bitcast %union.GCObject** %60 to i64*, !dbg !1243
  %62 = load i64, i64* %61, align 8, !dbg !1243, !tbaa !722
  %63 = getelementptr inbounds %union.GCObject, %union.GCObject* %1, i64 0, i32 0, i32 8, !dbg !1245
  %64 = bitcast i32** %63 to i64*, !dbg !1246
  store i64 %62, i64* %64, align 8, !dbg !1246, !tbaa !403
  store %union.GCObject* %1, %union.GCObject** %60, align 8, !dbg !1247, !tbaa !722
  br label %77, !dbg !1248

; <label>:65:                                     ; preds = %2
  %66 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 8, !dbg !1249
  %67 = bitcast %union.GCObject** %66 to i64*, !dbg !1249
  %68 = load i64, i64* %67, align 8, !dbg !1249, !tbaa !722
  %69 = getelementptr inbounds %union.GCObject, %union.GCObject* %1, i64 0, i32 0, i32 25, !dbg !1251
  %70 = bitcast %union.GCObject** %69 to i64*, !dbg !1252
  store i64 %68, i64* %70, align 8, !dbg !1252, !tbaa !403
  store %union.GCObject* %1, %union.GCObject** %66, align 8, !dbg !1253, !tbaa !722
  br label %77, !dbg !1254

; <label>:71:                                     ; preds = %2
  %72 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 8, !dbg !1255
  %73 = bitcast %union.GCObject** %72 to i64*, !dbg !1255
  %74 = load i64, i64* %73, align 8, !dbg !1255, !tbaa !722
  %75 = getelementptr inbounds %union.GCObject, %union.GCObject* %1, i64 0, i32 0, i32 19, !dbg !1257
  %76 = bitcast i32* %75 to i64*, !dbg !1258
  store i64 %74, i64* %76, align 8, !dbg !1258, !tbaa !403
  store %union.GCObject* %1, %union.GCObject** %72, align 8, !dbg !1259, !tbaa !722
  br label %77, !dbg !1260

; <label>:77:                                     ; preds = %45, %50, %29, %21, %53, %59, %65, %71
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %78, !dbg !1261

; <label>:78:                                     ; preds = %77, %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1261
  ret void, !dbg !1261
}

; Function Attrs: noredzone nounwind
define hidden void @luaC_barrierback(%struct.lua_State* nocapture readonly, %struct.Table*) local_unnamed_addr #0 !dbg !1262 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1272
  %4 = load %struct.global_State*, %struct.global_State** %3, align 8, !dbg !1272, !tbaa !376
  %5 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 2, !dbg !1275
  %6 = load i8, i8* %5, align 1, !dbg !1275, !tbaa !403
  %7 = and i8 %6, -5, !dbg !1275
  store i8 %7, i8* %5, align 1, !dbg !1275, !tbaa !403
  %8 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 9, !dbg !1276
  %9 = bitcast %union.GCObject** %8 to i64*, !dbg !1276
  %10 = load i64, i64* %9, align 8, !dbg !1276, !tbaa !824
  %11 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 9, !dbg !1277
  %12 = bitcast %union.GCObject** %11 to i64*, !dbg !1278
  store i64 %10, i64* %12, align 8, !dbg !1278, !tbaa !995
  %13 = bitcast %union.GCObject** %8 to %struct.Table**, !dbg !1279
  store %struct.Table* %1, %struct.Table** %13, align 8, !dbg !1279, !tbaa !824
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1280
  ret void, !dbg !1280
}

; Function Attrs: noredzone nounwind
define hidden void @luaC_link(%struct.lua_State* nocapture readonly, %union.GCObject*, i8 zeroext) local_unnamed_addr #0 !dbg !1281 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1292
  %5 = load %struct.global_State*, %struct.global_State** %4, align 8, !dbg !1292, !tbaa !376
  %6 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 6, !dbg !1294
  %7 = bitcast %union.GCObject** %6 to i64*, !dbg !1294
  %8 = load i64, i64* %7, align 8, !dbg !1294, !tbaa !596
  %9 = bitcast %union.GCObject* %1 to i64*, !dbg !1295
  store i64 %8, i64* %9, align 8, !dbg !1295, !tbaa !403
  store %union.GCObject* %1, %union.GCObject** %6, align 8, !dbg !1296, !tbaa !596
  %10 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 3, !dbg !1297
  %11 = load i8, i8* %10, align 8, !dbg !1297, !tbaa !500
  %12 = and i8 %11, 3, !dbg !1297
  %13 = getelementptr inbounds %union.GCObject, %union.GCObject* %1, i64 0, i32 0, i32 2, !dbg !1298
  store i8 %12, i8* %13, align 1, !dbg !1299, !tbaa !403
  %14 = getelementptr inbounds %union.GCObject, %union.GCObject* %1, i64 0, i32 0, i32 1, !dbg !1300
  store i8 %2, i8* %14, align 8, !dbg !1301, !tbaa !403
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1302
  ret void, !dbg !1302
}

; Function Attrs: noredzone nounwind
define hidden void @luaC_linkupval(%struct.lua_State* nocapture readonly, %struct.UpVal*) local_unnamed_addr #0 !dbg !1303 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1313
  %4 = load %struct.global_State*, %struct.global_State** %3, align 8, !dbg !1313, !tbaa !376
  %5 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 6, !dbg !1316
  %6 = bitcast %union.GCObject** %5 to i64*, !dbg !1316
  %7 = load i64, i64* %6, align 8, !dbg !1316, !tbaa !596
  %8 = bitcast %struct.UpVal* %1 to i64*, !dbg !1317
  store i64 %7, i64* %8, align 8, !dbg !1317, !tbaa !403
  %9 = bitcast %union.GCObject** %5 to %struct.UpVal**, !dbg !1318
  store %struct.UpVal* %1, %struct.UpVal** %9, align 8, !dbg !1318, !tbaa !596
  %10 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %1, i64 0, i32 2, !dbg !1319
  %11 = load i8, i8* %10, align 1, !dbg !1319, !tbaa !403
  %12 = zext i8 %11 to i32, !dbg !1319
  %13 = and i32 %12, 4, !dbg !1319
  %14 = icmp eq i32 %13, 0, !dbg !1319
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1319
  br i1 %14, label %15, label %55, !dbg !1319

; <label>:15:                                     ; preds = %2
  %16 = and i32 %12, 3, !dbg !1319
  %17 = icmp eq i32 %16, 0, !dbg !1319
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1321
  br i1 %17, label %18, label %55, !dbg !1321

; <label>:18:                                     ; preds = %15
  %19 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 4, !dbg !1322
  %20 = load i8, i8* %19, align 1, !dbg !1322, !tbaa !675
  %21 = icmp eq i8 %20, 1, !dbg !1325
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1326
  br i1 %21, label %22, label %49, !dbg !1326

; <label>:22:                                     ; preds = %18
  %23 = or i8 %11, 4, !dbg !1327
  store i8 %23, i8* %10, align 1, !dbg !1327, !tbaa !403
  %24 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %1, i64 0, i32 3, !dbg !1329
  %25 = load %struct.lua_TValue*, %struct.lua_TValue** %24, align 8, !dbg !1329, !tbaa !770
  %26 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %25, i64 0, i32 1, !dbg !1329
  %27 = load i32, i32* %26, align 8, !dbg !1329, !tbaa !518
  %28 = icmp sgt i32 %27, 3, !dbg !1329
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1329
  br i1 %28, label %29, label %55, !dbg !1329

; <label>:29:                                     ; preds = %22
  %30 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %25, i64 0, i32 0, i32 0, !dbg !1329
  %31 = load %union.GCObject*, %union.GCObject** %30, align 8, !dbg !1329, !tbaa !403
  %32 = getelementptr inbounds %union.GCObject, %union.GCObject* %31, i64 0, i32 0, i32 2, !dbg !1329
  %33 = load i8, i8* %32, align 1, !dbg !1329, !tbaa !403
  %34 = and i8 %33, 3, !dbg !1329
  %35 = icmp eq i8 %34, 0, !dbg !1329
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1329
  br i1 %35, label %55, label %36, !dbg !1329

; <label>:36:                                     ; preds = %29
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1332
  %37 = load %struct.global_State*, %struct.global_State** %3, align 8, !dbg !1337, !tbaa !376
  %38 = getelementptr inbounds %struct.global_State, %struct.global_State* %37, i64 0, i32 4, !dbg !1339
  %39 = load i8, i8* %38, align 1, !dbg !1339, !tbaa !675
  %40 = icmp eq i8 %39, 1, !dbg !1340
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1341
  br i1 %40, label %41, label %42, !dbg !1341

; <label>:41:                                     ; preds = %36
  tail call fastcc void @reallymarkobject(%struct.global_State* %37, %union.GCObject* %31) #3, !dbg !1342
  br label %48, !dbg !1342

; <label>:42:                                     ; preds = %36
  %43 = and i8 %11, -8, !dbg !1343
  %44 = getelementptr inbounds %struct.global_State, %struct.global_State* %37, i64 0, i32 3, !dbg !1343
  %45 = load i8, i8* %44, align 8, !dbg !1343, !tbaa !500
  %46 = and i8 %45, 3, !dbg !1343
  %47 = or i8 %46, %43, !dbg !1343
  store i8 %47, i8* %10, align 1, !dbg !1343, !tbaa !403
  br label %48

; <label>:48:                                     ; preds = %41, %42
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1344
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1329
  br label %55, !dbg !1329

; <label>:49:                                     ; preds = %18
  %50 = and i8 %11, -8, !dbg !1345
  %51 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 3, !dbg !1345
  %52 = load i8, i8* %51, align 8, !dbg !1345, !tbaa !500
  %53 = and i8 %52, 3, !dbg !1345
  %54 = or i8 %53, %50, !dbg !1345
  store i8 %54, i8* %10, align 1, !dbg !1345, !tbaa !403
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %55

; <label>:55:                                     ; preds = %29, %15, %2, %49, %48, %22
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1347
  ret void, !dbg !1347
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
define internal fastcc i64 @propagatemark(%struct.global_State*) unnamed_addr #0 !dbg !1348 {
  %2 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 8, !dbg !1368
  %3 = load %union.GCObject*, %union.GCObject** %2, align 8, !dbg !1368, !tbaa !722
  %4 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 2, !dbg !1370
  %5 = load i8, i8* %4, align 1, !dbg !1370, !tbaa !403
  %6 = or i8 %5, 4, !dbg !1370
  store i8 %6, i8* %4, align 1, !dbg !1370, !tbaa !403
  %7 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 1, !dbg !1371
  %8 = load i8, i8* %7, align 8, !dbg !1371, !tbaa !403
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1372
  switch i8 %8, label %530 [
    i8 5, label %9
    i8 6, label %179
    i8 8, label %263
    i8 9, label %384
  ], !dbg !1372

; <label>:9:                                      ; preds = %1
  %10 = bitcast %union.GCObject* %3 to %struct.Table*, !dbg !1373
  %11 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 8, !dbg !1375
  %12 = bitcast i32** %11 to i64*, !dbg !1375
  %13 = load i64, i64* %12, align 8, !dbg !1375, !tbaa !995
  %14 = bitcast %union.GCObject** %2 to i64*, !dbg !1376
  store i64 %13, i64* %14, align 8, !dbg !1376, !tbaa !722
  %15 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 4, !dbg !1395
  %16 = bitcast %struct.lua_TValue** %15 to %struct.Table**, !dbg !1395
  %17 = load %struct.Table*, %struct.Table** %16, align 8, !dbg !1395, !tbaa !1397
  %18 = icmp eq %struct.Table* %17, null, !dbg !1398
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1399
  br i1 %18, label %19, label %20, !dbg !1399

; <label>:19:                                     ; preds = %9
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1400
  br label %36, !dbg !1400

; <label>:20:                                     ; preds = %9
  %21 = getelementptr inbounds %struct.Table, %struct.Table* %17, i64 0, i32 2, !dbg !1401
  %22 = load i8, i8* %21, align 1, !dbg !1401, !tbaa !403
  %23 = and i8 %22, 3, !dbg !1401
  %24 = icmp eq i8 %23, 0, !dbg !1401
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1404
  br i1 %24, label %25, label %26, !dbg !1404

; <label>:25:                                     ; preds = %20
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1400
  br label %30, !dbg !1400

; <label>:26:                                     ; preds = %20
  %27 = bitcast %struct.Table* %17 to %union.GCObject*, !dbg !1401
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %0, %union.GCObject* %27) #3, !dbg !1401
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1401
  %28 = load %struct.Table*, %struct.Table** %16, align 8, !dbg !1400, !tbaa !1397
  %29 = icmp eq %struct.Table* %28, null, !dbg !1400
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1400
  br i1 %29, label %36, label %30, !dbg !1400

; <label>:30:                                     ; preds = %26, %25
  %31 = phi %struct.Table* [ %17, %25 ], [ %28, %26 ]
  %32 = getelementptr inbounds %struct.Table, %struct.Table* %31, i64 0, i32 3, !dbg !1400
  %33 = load i8, i8* %32, align 2, !dbg !1400, !tbaa !411
  %34 = and i8 %33, 8, !dbg !1400
  %35 = icmp eq i8 %34, 0, !dbg !1400
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1400
  br i1 %35, label %37, label %36, !dbg !1400

; <label>:36:                                     ; preds = %30, %26, %19
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1405
  br label %72, !dbg !1405

; <label>:37:                                     ; preds = %30
  %38 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 24, i64 3, !dbg !1400
  %39 = load %union.TString*, %union.TString** %38, align 8, !dbg !1400, !tbaa !397
  %40 = tail call %struct.lua_TValue* @luaT_gettm(%struct.Table* nonnull %31, i32 3, %union.TString* %39) #3, !dbg !1400
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1400
  %41 = icmp eq %struct.lua_TValue* %40, null, !dbg !1408
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1405
  br i1 %41, label %72, label %42, !dbg !1405

; <label>:42:                                     ; preds = %37
  %43 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %40, i64 0, i32 1, !dbg !1409
  %44 = load i32, i32* %43, align 8, !dbg !1409, !tbaa !518
  %45 = icmp eq i32 %44, 4, !dbg !1409
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1410
  br i1 %45, label %46, label %72, !dbg !1410

; <label>:46:                                     ; preds = %42
  %47 = bitcast %struct.lua_TValue* %40 to %union.TString**, !dbg !1411
  %48 = load %union.TString*, %union.TString** %47, align 8, !dbg !1411, !tbaa !403
  %49 = getelementptr inbounds %union.TString, %union.TString* %48, i64 1, !dbg !1411
  %50 = bitcast %union.TString* %49 to i8*, !dbg !1411
  %51 = tail call i8* @strchr(i8* nonnull %50, i32 107) #3, !dbg !1413
  %52 = icmp ne i8* %51, null, !dbg !1414
  %53 = zext i1 %52 to i32, !dbg !1414
  %54 = load %union.TString*, %union.TString** %47, align 8, !dbg !1415, !tbaa !403
  %55 = getelementptr inbounds %union.TString, %union.TString* %54, i64 1, !dbg !1415
  %56 = bitcast %union.TString* %55 to i8*, !dbg !1415
  %57 = tail call i8* @strchr(i8* nonnull %56, i32 118) #3, !dbg !1416
  %58 = icmp ne i8* %57, null, !dbg !1417
  %59 = or i1 %52, %58, !dbg !1418
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1418
  br i1 %59, label %60, label %73, !dbg !1418

; <label>:60:                                     ; preds = %46
  %61 = zext i1 %58 to i32, !dbg !1417
  %62 = load i8, i8* %4, align 1, !dbg !1420, !tbaa !895
  %63 = and i8 %62, -25, !dbg !1420
  %64 = shl nuw nsw i32 %53, 3, !dbg !1422
  %65 = shl nuw nsw i32 %61, 4, !dbg !1422
  %66 = or i32 %65, %64, !dbg !1422
  %67 = trunc i32 %66 to i8, !dbg !1423
  %68 = or i8 %63, %67, !dbg !1423
  store i8 %68, i8* %4, align 1, !dbg !1423, !tbaa !895
  %69 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 10, !dbg !1424
  %70 = bitcast %union.GCObject** %69 to i64*, !dbg !1424
  %71 = load i64, i64* %70, align 8, !dbg !1424, !tbaa !784
  store i64 %71, i64* %12, align 8, !dbg !1425, !tbaa !995
  store %union.GCObject* %3, %union.GCObject** %69, align 8, !dbg !1426, !tbaa !784
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1427
  br label %73, !dbg !1427

; <label>:72:                                     ; preds = %42, %37, %36
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1428
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1430
  br label %78, !dbg !1431

; <label>:73:                                     ; preds = %60, %46
  %74 = and i1 %52, %58, !dbg !1428
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1428
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1430
  br i1 %74, label %75, label %77, !dbg !1428

; <label>:75:                                     ; preds = %73
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1432
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1433
  %76 = getelementptr inbounds %struct.Table, %struct.Table* %10, i64 0, i32 4, !dbg !1434
  br label %161, !dbg !1433

; <label>:77:                                     ; preds = %73
  br i1 %58, label %105, label %78, !dbg !1431

; <label>:78:                                     ; preds = %77, %72
  %79 = phi i32 [ 0, %72 ], [ %53, %77 ]
  %80 = phi i1 [ false, %72 ], [ %52, %77 ]
  %81 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 9, !dbg !1435
  %82 = bitcast %struct.lua_TValue** %81 to i32*, !dbg !1435
  %83 = load i32, i32* %82, align 8, !dbg !1435, !tbaa !892
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1439
  %84 = icmp eq i32 %83, 0, !dbg !1439
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1439
  br i1 %84, label %105, label %85, !dbg !1439

; <label>:85:                                     ; preds = %78
  %86 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 5
  %87 = sext i32 %83 to i64, !dbg !1439
  br label %88, !dbg !1439

; <label>:88:                                     ; preds = %103, %85
  %89 = phi i64 [ %87, %85 ], [ %90, %103 ]
  %90 = add nsw i64 %89, -1, !dbg !1440
  %91 = load %struct.lua_TValue*, %struct.lua_TValue** %86, align 8, !dbg !1441, !tbaa !900
  %92 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %91, i64 %90, i32 1, !dbg !1441
  %93 = load i32, i32* %92, align 8, !dbg !1441, !tbaa !518
  %94 = icmp sgt i32 %93, 3, !dbg !1441
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1441
  br i1 %94, label %95, label %103, !dbg !1441

; <label>:95:                                     ; preds = %88
  %96 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %91, i64 %90, i32 0, i32 0, !dbg !1441
  %97 = load %union.GCObject*, %union.GCObject** %96, align 8, !dbg !1441, !tbaa !403
  %98 = getelementptr inbounds %union.GCObject, %union.GCObject* %97, i64 0, i32 0, i32 2, !dbg !1441
  %99 = load i8, i8* %98, align 1, !dbg !1441, !tbaa !403
  %100 = and i8 %99, 3, !dbg !1441
  %101 = icmp eq i8 %100, 0, !dbg !1441
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1444
  br i1 %101, label %103, label %102, !dbg !1444

; <label>:102:                                    ; preds = %95
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %union.GCObject* %97) #3, !dbg !1441
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1441
  br label %103, !dbg !1441

; <label>:103:                                    ; preds = %102, %95, %88
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1439
  %104 = icmp eq i64 %90, 0
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1439
  br i1 %104, label %105, label %88, !dbg !1439, !llvm.loop !1445

; <label>:105:                                    ; preds = %103, %78, %77
  %106 = phi i32 [ %53, %77 ], [ %79, %78 ], [ %79, %103 ]
  %107 = phi i32 [ 1, %77 ], [ 0, %78 ], [ 0, %103 ]
  %108 = phi i1 [ %52, %77 ], [ %80, %78 ], [ %80, %103 ]
  %109 = phi i1 [ true, %77 ], [ false, %78 ], [ false, %103 ]
  %110 = getelementptr inbounds %struct.Table, %struct.Table* %10, i64 0, i32 4, !dbg !1448
  %111 = load i8, i8* %110, align 1, !dbg !1448, !tbaa !935
  %112 = zext i8 %111 to i32, !dbg !1448
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1449
  %113 = shl nsw i32 -1, %112, !dbg !1450
  %114 = xor i32 %113, -1, !dbg !1450
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1449
  %115 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 6
  %116 = bitcast %struct.global_State** %115 to %struct.Node**
  %117 = sext i32 %114 to i64, !dbg !1449
  br label %118, !dbg !1449

; <label>:118:                                    ; preds = %155, %105
  %119 = phi i64 [ %117, %105 ], [ %156, %155 ]
  %120 = load %struct.Node*, %struct.Node** %116, align 8, !dbg !1451, !tbaa !939
  %121 = getelementptr inbounds %struct.Node, %struct.Node* %120, i64 %119, i32 0, i32 1, !dbg !1452
  %122 = load i32, i32* %121, align 8, !dbg !1452, !tbaa !942
  %123 = icmp eq i32 %122, 0, !dbg !1452
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1454
  br i1 %123, label %124, label %130, !dbg !1454

; <label>:124:                                    ; preds = %118
  %125 = getelementptr inbounds %struct.Node, %struct.Node* %120, i64 %119, i32 1, i32 0, i32 1, !dbg !1455
  %126 = load i32, i32* %125, align 8, !dbg !1455, !tbaa !403
  %127 = icmp sgt i32 %126, 3, !dbg !1455
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1457
  br i1 %127, label %128, label %129, !dbg !1457

; <label>:128:                                    ; preds = %124
  store i32 11, i32* %125, align 8, !dbg !1458, !tbaa !403
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1458
  br label %129, !dbg !1458

; <label>:129:                                    ; preds = %128, %124
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1459
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1460
  br label %155, !dbg !1460

; <label>:130:                                    ; preds = %118
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1461
  br i1 %108, label %143, label %131, !dbg !1461

; <label>:131:                                    ; preds = %130
  %132 = getelementptr inbounds %struct.Node, %struct.Node* %120, i64 %119, i32 1, i32 0, i32 1, !dbg !1463
  %133 = load i32, i32* %132, align 8, !dbg !1463, !tbaa !403
  %134 = icmp sgt i32 %133, 3, !dbg !1463
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1463
  br i1 %134, label %135, label %143, !dbg !1463

; <label>:135:                                    ; preds = %131
  %136 = getelementptr inbounds %struct.Node, %struct.Node* %120, i64 %119, i32 1, i32 0, i32 0, i32 0, !dbg !1463
  %137 = load %union.GCObject*, %union.GCObject** %136, align 8, !dbg !1463, !tbaa !403
  %138 = getelementptr inbounds %union.GCObject, %union.GCObject* %137, i64 0, i32 0, i32 2, !dbg !1463
  %139 = load i8, i8* %138, align 1, !dbg !1463, !tbaa !403
  %140 = and i8 %139, 3, !dbg !1463
  %141 = icmp eq i8 %140, 0, !dbg !1463
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1467
  br i1 %141, label %143, label %142, !dbg !1467

; <label>:142:                                    ; preds = %135
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %union.GCObject* %137) #3, !dbg !1463
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1463
  br label %143, !dbg !1463

; <label>:143:                                    ; preds = %142, %135, %131, %130
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1468
  br i1 %109, label %155, label %144, !dbg !1468

; <label>:144:                                    ; preds = %143
  %145 = load i32, i32* %121, align 8, !dbg !1469, !tbaa !942
  %146 = icmp sgt i32 %145, 3, !dbg !1469
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1469
  br i1 %146, label %147, label %155, !dbg !1469

; <label>:147:                                    ; preds = %144
  %148 = getelementptr inbounds %struct.Node, %struct.Node* %120, i64 %119, i32 0, i32 0, i32 0, !dbg !1469
  %149 = load %union.GCObject*, %union.GCObject** %148, align 8, !dbg !1469, !tbaa !403
  %150 = getelementptr inbounds %union.GCObject, %union.GCObject* %149, i64 0, i32 0, i32 2, !dbg !1469
  %151 = load i8, i8* %150, align 1, !dbg !1469, !tbaa !403
  %152 = and i8 %151, 3, !dbg !1469
  %153 = icmp eq i8 %152, 0, !dbg !1469
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1473
  br i1 %153, label %155, label %154, !dbg !1473

; <label>:154:                                    ; preds = %147
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %union.GCObject* %149) #3, !dbg !1469
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1469
  br label %155, !dbg !1469

; <label>:155:                                    ; preds = %154, %147, %144, %143, %129
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1449
  %156 = add nsw i64 %119, -1, !dbg !1450
  %157 = icmp eq i64 %119, 0
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1449
  br i1 %157, label %158, label %118, !dbg !1449, !llvm.loop !1474

; <label>:158:                                    ; preds = %155
  %159 = or i32 %107, %106, !dbg !1477
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1478
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1432
  %160 = icmp eq i32 %159, 0, !dbg !1479
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1433
  br i1 %160, label %165, label %161, !dbg !1433

; <label>:161:                                    ; preds = %75, %158
  %162 = phi i8* [ %76, %75 ], [ %110, %158 ], !dbg !1434
  %163 = load i8, i8* %4, align 1, !dbg !1480, !tbaa !403
  %164 = and i8 %163, -5, !dbg !1480
  store i8 %164, i8* %4, align 1, !dbg !1480, !tbaa !403
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1480
  br label %165, !dbg !1480

; <label>:165:                                    ; preds = %158, %161
  %166 = phi i8* [ %110, %158 ], [ %162, %161 ], !dbg !1434
  %167 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 9, !dbg !1481
  %168 = bitcast %struct.lua_TValue** %167 to i32*, !dbg !1481
  %169 = load i32, i32* %168, align 8, !dbg !1481, !tbaa !892
  %170 = sext i32 %169 to i64, !dbg !1482
  %171 = shl nsw i64 %170, 4, !dbg !1483
  %172 = add nsw i64 %171, 64, !dbg !1484
  %173 = load i8, i8* %166, align 1, !dbg !1434, !tbaa !935
  %174 = zext i8 %173 to i32, !dbg !1434
  %175 = shl i32 1, %174, !dbg !1434
  %176 = sext i32 %175 to i64, !dbg !1434
  %177 = mul nsw i64 %176, 40, !dbg !1485
  %178 = add nsw i64 %172, %177, !dbg !1486
  br label %530

; <label>:179:                                    ; preds = %1
  %180 = bitcast %union.GCObject* %3 to %union.Closure*, !dbg !1487
  %181 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 4, !dbg !1489
  %182 = bitcast %struct.lua_TValue** %181 to i64*, !dbg !1489
  %183 = load i64, i64* %182, align 8, !dbg !1489, !tbaa !403
  %184 = bitcast %union.GCObject** %2 to i64*, !dbg !1490
  store i64 %183, i64* %184, align 8, !dbg !1490, !tbaa !722
  %185 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 5, !dbg !1505
  %186 = bitcast %struct.lua_TValue** %185 to %union.GCObject**, !dbg !1505
  %187 = load %union.GCObject*, %union.GCObject** %186, align 8, !dbg !1505, !tbaa !403
  %188 = getelementptr inbounds %union.GCObject, %union.GCObject* %187, i64 0, i32 0, i32 2, !dbg !1505
  %189 = load i8, i8* %188, align 1, !dbg !1505, !tbaa !403
  %190 = and i8 %189, 3, !dbg !1505
  %191 = icmp eq i8 %190, 0, !dbg !1505
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1508
  br i1 %191, label %193, label %192, !dbg !1508

; <label>:192:                                    ; preds = %179
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %0, %union.GCObject* %187) #3, !dbg !1505
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1505
  br label %193, !dbg !1505

; <label>:193:                                    ; preds = %192, %179
  %194 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 3, !dbg !1509
  %195 = load i8, i8* %194, align 2, !dbg !1509, !tbaa !403
  %196 = icmp eq i8 %195, 0, !dbg !1510
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1511
  br i1 %196, label %221, label %197, !dbg !1511

; <label>:197:                                    ; preds = %193
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1513
  %198 = getelementptr inbounds %union.Closure, %union.Closure* %180, i64 0, i32 0, i32 4, !dbg !1515
  %199 = load i8, i8* %198, align 1, !dbg !1515, !tbaa !403
  %200 = icmp eq i8 %199, 0, !dbg !1517
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1518
  br i1 %200, label %254, label %201, !dbg !1518

; <label>:201:                                    ; preds = %197, %216
  %202 = phi i8 [ %217, %216 ], [ %199, %197 ]
  %203 = phi i64 [ %218, %216 ], [ 0, %197 ]
  %204 = getelementptr inbounds %union.Closure, %union.Closure* %180, i64 0, i32 0, i32 8, i64 %203, i32 1, !dbg !1519
  %205 = load i32, i32* %204, align 8, !dbg !1519, !tbaa !403
  %206 = icmp sgt i32 %205, 3, !dbg !1519
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1519
  br i1 %206, label %207, label %216, !dbg !1519

; <label>:207:                                    ; preds = %201
  %208 = getelementptr inbounds %union.Closure, %union.Closure* %180, i64 0, i32 0, i32 8, i64 %203, i32 0, i32 0, !dbg !1519
  %209 = load %union.GCObject*, %union.GCObject** %208, align 8, !dbg !1519, !tbaa !403
  %210 = getelementptr inbounds %union.GCObject, %union.GCObject* %209, i64 0, i32 0, i32 2, !dbg !1519
  %211 = load i8, i8* %210, align 1, !dbg !1519, !tbaa !403
  %212 = and i8 %211, 3, !dbg !1519
  %213 = icmp eq i8 %212, 0, !dbg !1519
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1522
  br i1 %213, label %216, label %214, !dbg !1522

; <label>:214:                                    ; preds = %207
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %union.GCObject* %209) #3, !dbg !1519
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1519
  %215 = load i8, i8* %198, align 1, !dbg !1515, !tbaa !403
  br label %216, !dbg !1519

; <label>:216:                                    ; preds = %214, %207, %201
  %217 = phi i8 [ %202, %207 ], [ %202, %201 ], [ %215, %214 ], !dbg !1515
  %218 = add nuw nsw i64 %203, 1, !dbg !1523
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1524
  %219 = zext i8 %217 to i64, !dbg !1517
  %220 = icmp ult i64 %218, %219, !dbg !1517
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1518
  br i1 %220, label %201, label %254, !dbg !1518, !llvm.loop !1525

; <label>:221:                                    ; preds = %193
  %222 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 6, !dbg !1528
  %223 = bitcast %struct.global_State** %222 to %union.GCObject**, !dbg !1528
  %224 = load %union.GCObject*, %union.GCObject** %223, align 8, !dbg !1528, !tbaa !403
  %225 = getelementptr inbounds %union.GCObject, %union.GCObject* %224, i64 0, i32 0, i32 2, !dbg !1528
  %226 = load i8, i8* %225, align 1, !dbg !1528, !tbaa !403
  %227 = and i8 %226, 3, !dbg !1528
  %228 = icmp eq i8 %227, 0, !dbg !1528
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1531
  br i1 %228, label %230, label %229, !dbg !1531

; <label>:229:                                    ; preds = %221
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %0, %union.GCObject* %224) #3, !dbg !1528
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1528
  br label %230, !dbg !1528

; <label>:230:                                    ; preds = %229, %221
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1533
  %231 = getelementptr inbounds %union.Closure, %union.Closure* %180, i64 0, i32 0, i32 4, !dbg !1535
  %232 = load i8, i8* %231, align 1, !dbg !1535, !tbaa !403
  %233 = icmp eq i8 %232, 0, !dbg !1537
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1538
  br i1 %233, label %254, label %234, !dbg !1538

; <label>:234:                                    ; preds = %230
  %235 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 7
  %236 = bitcast %struct.CallInfo** %235 to [1 x %struct.UpVal*]*
  br label %237, !dbg !1538

; <label>:237:                                    ; preds = %249, %234
  %238 = phi i8 [ %232, %234 ], [ %250, %249 ]
  %239 = phi i64 [ 0, %234 ], [ %251, %249 ]
  %240 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %236, i64 0, i64 %239, !dbg !1539
  %241 = bitcast %struct.UpVal** %240 to %union.GCObject**, !dbg !1539
  %242 = load %union.GCObject*, %union.GCObject** %241, align 8, !dbg !1539, !tbaa !403
  %243 = getelementptr inbounds %union.GCObject, %union.GCObject* %242, i64 0, i32 0, i32 2, !dbg !1539
  %244 = load i8, i8* %243, align 1, !dbg !1539, !tbaa !403
  %245 = and i8 %244, 3, !dbg !1539
  %246 = icmp eq i8 %245, 0, !dbg !1539
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1542
  br i1 %246, label %249, label %247, !dbg !1542

; <label>:247:                                    ; preds = %237
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %union.GCObject* %242) #3, !dbg !1539
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1539
  %248 = load i8, i8* %231, align 1, !dbg !1535, !tbaa !403
  br label %249, !dbg !1539

; <label>:249:                                    ; preds = %247, %237
  %250 = phi i8 [ %238, %237 ], [ %248, %247 ], !dbg !1535
  %251 = add nuw nsw i64 %239, 1, !dbg !1543
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1544
  %252 = zext i8 %250 to i64, !dbg !1537
  %253 = icmp ult i64 %251, %252, !dbg !1537
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1538
  br i1 %253, label %237, label %254, !dbg !1538, !llvm.loop !1545

; <label>:254:                                    ; preds = %216, %249, %230, %197
  %255 = phi i8 [ 0, %197 ], [ 0, %230 ], [ %250, %249 ], [ %217, %216 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1548
  %256 = load i8, i8* %194, align 2, !dbg !1549, !tbaa !403
  %257 = icmp eq i8 %256, 0, !dbg !1550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1550
  %258 = zext i8 %255 to i32, !dbg !1551
  %259 = select i1 %257, i32 3, i32 4, !dbg !1550
  %260 = shl nuw nsw i32 %258, %259, !dbg !1551
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1550
  %261 = add nuw nsw i32 %260, 40, !dbg !1550
  %262 = zext i32 %261 to i64, !dbg !1550
  br label %530

; <label>:263:                                    ; preds = %1
  %264 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, !dbg !1552
  %265 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 25, !dbg !1554
  %266 = bitcast %union.GCObject** %265 to i64*, !dbg !1554
  %267 = load i64, i64* %266, align 8, !dbg !1554, !tbaa !1555
  %268 = bitcast %union.GCObject** %2 to i64*, !dbg !1556
  store i64 %267, i64* %268, align 8, !dbg !1556, !tbaa !722
  %269 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 9, !dbg !1557
  %270 = bitcast %union.GCObject** %269 to i64*, !dbg !1557
  %271 = load i64, i64* %270, align 8, !dbg !1557, !tbaa !824
  store i64 %271, i64* %266, align 8, !dbg !1558, !tbaa !1555
  store %union.GCObject* %3, %union.GCObject** %269, align 8, !dbg !1559, !tbaa !824
  %272 = load i8, i8* %4, align 1, !dbg !1560, !tbaa !403
  %273 = and i8 %272, -5, !dbg !1560
  store i8 %273, i8* %4, align 1, !dbg !1560, !tbaa !403
  %274 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 22, i32 1, !dbg !1573
  %275 = load i32, i32* %274, align 8, !dbg !1573, !tbaa !1152
  %276 = icmp sgt i32 %275, 3, !dbg !1573
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1573
  br i1 %276, label %277, label %285, !dbg !1573

; <label>:277:                                    ; preds = %263
  %278 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 22, i32 0, i32 0, !dbg !1573
  %279 = load %union.GCObject*, %union.GCObject** %278, align 8, !dbg !1573, !tbaa !403
  %280 = getelementptr inbounds %union.GCObject, %union.GCObject* %279, i64 0, i32 0, i32 2, !dbg !1573
  %281 = load i8, i8* %280, align 1, !dbg !1573, !tbaa !403
  %282 = and i8 %281, 3, !dbg !1573
  %283 = icmp eq i8 %282, 0, !dbg !1573
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1576
  br i1 %283, label %285, label %284, !dbg !1576

; <label>:284:                                    ; preds = %277
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %0, %union.GCObject* %279) #3, !dbg !1573
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1573
  br label %285, !dbg !1573

; <label>:285:                                    ; preds = %284, %277, %263
  %286 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 4, !dbg !1577
  %287 = load %struct.lua_TValue*, %struct.lua_TValue** %286, align 8, !dbg !1577, !tbaa !517
  %288 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 12, !dbg !1579
  %289 = load %struct.CallInfo*, %struct.CallInfo** %288, align 8, !dbg !1579, !tbaa !1581
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1583
  %290 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 7, !dbg !1584
  %291 = load %struct.CallInfo*, %struct.CallInfo** %290, align 8, !dbg !1584, !tbaa !1586
  %292 = icmp ugt %struct.CallInfo* %289, %291, !dbg !1587
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1588
  br i1 %292, label %304, label %293, !dbg !1588

; <label>:293:                                    ; preds = %285, %300
  %294 = phi %struct.CallInfo* [ %302, %300 ], [ %289, %285 ]
  %295 = phi %struct.lua_TValue* [ %301, %300 ], [ %287, %285 ]
  %296 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %294, i64 0, i32 2, !dbg !1589
  %297 = load %struct.lua_TValue*, %struct.lua_TValue** %296, align 8, !dbg !1589, !tbaa !1592
  %298 = icmp ult %struct.lua_TValue* %295, %297, !dbg !1594
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1595
  br i1 %298, label %299, label %300, !dbg !1595

; <label>:299:                                    ; preds = %293
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1596
  br label %300, !dbg !1596

; <label>:300:                                    ; preds = %299, %293
  %301 = phi %struct.lua_TValue* [ %297, %299 ], [ %295, %293 ], !dbg !1597
  %302 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %294, i64 1, !dbg !1598
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1599
  %303 = icmp ugt %struct.CallInfo* %302, %291, !dbg !1587
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1588
  br i1 %303, label %304, label %293, !dbg !1588, !llvm.loop !1600

; <label>:304:                                    ; preds = %300, %285
  %305 = phi %struct.lua_TValue* [ %287, %285 ], [ %301, %300 ], !dbg !1603
  %306 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 10, !dbg !1604
  %307 = load %struct.lua_TValue*, %struct.lua_TValue** %306, align 8, !dbg !1604, !tbaa !1606
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1608
  %308 = icmp ult %struct.lua_TValue* %307, %287, !dbg !1609
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1611
  br i1 %308, label %312, label %309, !dbg !1611

; <label>:309:                                    ; preds = %327, %304
  %310 = phi %struct.lua_TValue* [ %307, %304 ], [ %329, %327 ], !dbg !1612
  %311 = icmp ugt %struct.lua_TValue* %310, %305, !dbg !1613
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1616
  br i1 %311, label %336, label %331, !dbg !1616

; <label>:312:                                    ; preds = %304, %327
  %313 = phi %struct.lua_TValue* [ %328, %327 ], [ %287, %304 ]
  %314 = phi %struct.lua_TValue* [ %329, %327 ], [ %307, %304 ]
  %315 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %314, i64 0, i32 1, !dbg !1617
  %316 = load i32, i32* %315, align 8, !dbg !1617, !tbaa !518
  %317 = icmp sgt i32 %316, 3, !dbg !1617
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1617
  br i1 %317, label %318, label %327, !dbg !1617

; <label>:318:                                    ; preds = %312
  %319 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %314, i64 0, i32 0, i32 0, !dbg !1617
  %320 = load %union.GCObject*, %union.GCObject** %319, align 8, !dbg !1617, !tbaa !403
  %321 = getelementptr inbounds %union.GCObject, %union.GCObject* %320, i64 0, i32 0, i32 2, !dbg !1617
  %322 = load i8, i8* %321, align 1, !dbg !1617, !tbaa !403
  %323 = and i8 %322, 3, !dbg !1617
  %324 = icmp eq i8 %323, 0, !dbg !1617
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1620
  br i1 %324, label %327, label %325, !dbg !1620

; <label>:325:                                    ; preds = %318
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %union.GCObject* %320) #3, !dbg !1617
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1617
  %326 = load %struct.lua_TValue*, %struct.lua_TValue** %286, align 8, !dbg !1621, !tbaa !517
  br label %327, !dbg !1617

; <label>:327:                                    ; preds = %325, %318, %312
  %328 = phi %struct.lua_TValue* [ %313, %318 ], [ %313, %312 ], [ %326, %325 ], !dbg !1621
  %329 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %314, i64 1, !dbg !1622
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1623
  %330 = icmp ult %struct.lua_TValue* %329, %328, !dbg !1609
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1611
  br i1 %330, label %312, label %309, !dbg !1611, !llvm.loop !1624

; <label>:331:                                    ; preds = %309, %331
  %332 = phi %struct.lua_TValue* [ %334, %331 ], [ %310, %309 ]
  %333 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %332, i64 0, i32 1, !dbg !1627
  store i32 0, i32* %333, align 8, !dbg !1627, !tbaa !518
  %334 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %332, i64 1, !dbg !1628
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1629
  %335 = icmp ugt %struct.lua_TValue* %334, %305, !dbg !1613
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1616
  br i1 %335, label %336, label %331, !dbg !1616, !llvm.loop !1630

; <label>:336:                                    ; preds = %331, %309
  %337 = bitcast %struct.CallInfo** %290 to i64*, !dbg !1644
  %338 = load i64, i64* %337, align 8, !dbg !1644, !tbaa !1586
  %339 = bitcast %struct.CallInfo** %288 to i64*, !dbg !1644
  %340 = load i64, i64* %339, align 8, !dbg !1644, !tbaa !1581
  %341 = bitcast %struct.lua_TValue** %306 to i64*, !dbg !1645
  %342 = load i64, i64* %341, align 8, !dbg !1645, !tbaa !1606
  %343 = ptrtoint %struct.lua_TValue* %305 to i64, !dbg !1645
  %344 = sub i64 %343, %342, !dbg !1645
  %345 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 14, !dbg !1646
  %346 = load i32, i32* %345, align 4, !dbg !1646, !tbaa !1648
  %347 = icmp sgt i32 %346, 20000, !dbg !1649
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1650
  br i1 %347, label %348, label %350, !dbg !1650

; <label>:348:                                    ; preds = %336
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1651
  %349 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 13, !dbg !1652
  br label %374, !dbg !1651

; <label>:350:                                    ; preds = %336
  %351 = sub i64 %338, %340, !dbg !1644
  %352 = sdiv exact i64 %351, 40, !dbg !1644
  %353 = trunc i64 %352 to i32, !dbg !1644
  %354 = shl nsw i32 %353, 2, !dbg !1654
  %355 = icmp slt i32 %354, %346, !dbg !1656
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1657
  br i1 %355, label %356, label %361, !dbg !1657

; <label>:356:                                    ; preds = %350
  %357 = icmp sgt i32 %346, 16, !dbg !1658
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1659
  br i1 %357, label %358, label %361, !dbg !1659

; <label>:358:                                    ; preds = %356
  %359 = lshr i32 %346, 1
  %360 = and i32 %359, 32767
  tail call void @luaD_reallocCI(%struct.lua_State* nonnull %264, i32 %360) #3, !dbg !1660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1660
  br label %361, !dbg !1660

; <label>:361:                                    ; preds = %358, %356, %350
  %362 = lshr exact i64 %344, 2, !dbg !1661
  %363 = trunc i64 %362 to i32, !dbg !1661
  %364 = and i32 %363, -4, !dbg !1661
  %365 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 13, !dbg !1663
  %366 = load i32, i32* %365, align 8, !dbg !1663, !tbaa !1664
  %367 = icmp slt i32 %364, %366, !dbg !1665
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1666
  br i1 %367, label %368, label %372, !dbg !1666

; <label>:368:                                    ; preds = %361
  %369 = icmp sgt i32 %366, 90, !dbg !1667
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1668
  br i1 %369, label %370, label %372, !dbg !1668

; <label>:370:                                    ; preds = %368
  %371 = lshr i32 %366, 1
  tail call void @luaD_reallocstack(%struct.lua_State* nonnull %264, i32 %371) #3, !dbg !1669
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1669
  br label %372, !dbg !1669

; <label>:372:                                    ; preds = %370, %368, %361
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1670
  %373 = load i32, i32* %345, align 4, !dbg !1671, !tbaa !1648
  br label %374, !dbg !1670

; <label>:374:                                    ; preds = %348, %372
  %375 = phi i32* [ %349, %348 ], [ %365, %372 ], !dbg !1652
  %376 = phi i32 [ %346, %348 ], [ %373, %372 ], !dbg !1671
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1670
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1672
  %377 = load i32, i32* %375, align 8, !dbg !1652, !tbaa !1664
  %378 = sext i32 %377 to i64, !dbg !1673
  %379 = shl nsw i64 %378, 4, !dbg !1674
  %380 = add nsw i64 %379, 184, !dbg !1675
  %381 = sext i32 %376 to i64, !dbg !1676
  %382 = mul nsw i64 %381, 40, !dbg !1677
  %383 = add nsw i64 %380, %382, !dbg !1678
  br label %530

; <label>:384:                                    ; preds = %1
  %385 = bitcast %union.GCObject* %3 to %struct.Proto*, !dbg !1679
  %386 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 19, !dbg !1681
  %387 = bitcast i32* %386 to i64*, !dbg !1681
  %388 = load i64, i64* %387, align 8, !dbg !1681, !tbaa !1682
  %389 = bitcast %union.GCObject** %2 to i64*, !dbg !1684
  store i64 %388, i64* %389, align 8, !dbg !1684, !tbaa !722
  %390 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 10, !dbg !1695
  %391 = bitcast %struct.lua_TValue** %390 to %union.TString**, !dbg !1695
  %392 = load %union.TString*, %union.TString** %391, align 8, !dbg !1695, !tbaa !1697
  %393 = icmp eq %union.TString* %392, null, !dbg !1698
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1699
  br i1 %393, label %398, label %394, !dbg !1699

; <label>:394:                                    ; preds = %384
  %395 = getelementptr inbounds %union.TString, %union.TString* %392, i64 0, i32 0, i32 2, !dbg !1700
  %396 = load i8, i8* %395, align 1, !dbg !1700, !tbaa !403
  %397 = and i8 %396, -4, !dbg !1700
  store i8 %397, i8* %395, align 1, !dbg !1700, !tbaa !403
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1700
  br label %398, !dbg !1700

; <label>:398:                                    ; preds = %394, %384
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1702
  %399 = getelementptr inbounds %struct.Proto, %struct.Proto* %385, i64 0, i32 11, !dbg !1704
  %400 = load i32, i32* %399, align 4, !dbg !1704, !tbaa !1706
  %401 = icmp sgt i32 %400, 0, !dbg !1707
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1708
  br i1 %401, label %402, label %425, !dbg !1708

; <label>:402:                                    ; preds = %398
  %403 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 4
  br label %404, !dbg !1708

; <label>:404:                                    ; preds = %420, %402
  %405 = phi i32 [ %400, %402 ], [ %421, %420 ]
  %406 = phi i64 [ 0, %402 ], [ %422, %420 ]
  %407 = load %struct.lua_TValue*, %struct.lua_TValue** %403, align 8, !dbg !1709, !tbaa !1712
  %408 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %407, i64 %406, i32 1, !dbg !1709
  %409 = load i32, i32* %408, align 8, !dbg !1709, !tbaa !518
  %410 = icmp sgt i32 %409, 3, !dbg !1709
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1709
  br i1 %410, label %411, label %420, !dbg !1709

; <label>:411:                                    ; preds = %404
  %412 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %407, i64 %406, i32 0, i32 0, !dbg !1709
  %413 = load %union.GCObject*, %union.GCObject** %412, align 8, !dbg !1709, !tbaa !403
  %414 = getelementptr inbounds %union.GCObject, %union.GCObject* %413, i64 0, i32 0, i32 2, !dbg !1709
  %415 = load i8, i8* %414, align 1, !dbg !1709, !tbaa !403
  %416 = and i8 %415, 3, !dbg !1709
  %417 = icmp eq i8 %416, 0, !dbg !1709
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1713
  br i1 %417, label %420, label %418, !dbg !1713

; <label>:418:                                    ; preds = %411
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %union.GCObject* %413) #3, !dbg !1709
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1709
  %419 = load i32, i32* %399, align 4, !dbg !1704, !tbaa !1706
  br label %420, !dbg !1709

; <label>:420:                                    ; preds = %418, %411, %404
  %421 = phi i32 [ %405, %411 ], [ %405, %404 ], [ %419, %418 ], !dbg !1704
  %422 = add nuw nsw i64 %406, 1, !dbg !1714
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1715
  %423 = sext i32 %421 to i64, !dbg !1707
  %424 = icmp slt i64 %422, %423, !dbg !1707
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1708
  br i1 %424, label %404, label %425, !dbg !1708, !llvm.loop !1716

; <label>:425:                                    ; preds = %420, %398
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1719
  %426 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 11, !dbg !1721
  %427 = bitcast %struct.CallInfo** %426 to i32*, !dbg !1721
  %428 = load i32, i32* %427, align 8, !dbg !1721, !tbaa !1723
  %429 = icmp sgt i32 %428, 0, !dbg !1724
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1725
  br i1 %429, label %430, label %450, !dbg !1725

; <label>:430:                                    ; preds = %425
  %431 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 9
  %432 = bitcast %struct.lua_TValue** %431 to %union.TString***
  br label %433, !dbg !1725

; <label>:433:                                    ; preds = %445, %430
  %434 = phi i32 [ %428, %430 ], [ %446, %445 ]
  %435 = phi i64 [ 0, %430 ], [ %447, %445 ]
  %436 = load %union.TString**, %union.TString*** %432, align 8, !dbg !1726, !tbaa !1729
  %437 = getelementptr inbounds %union.TString*, %union.TString** %436, i64 %435, !dbg !1730
  %438 = load %union.TString*, %union.TString** %437, align 8, !dbg !1730, !tbaa !397
  %439 = icmp eq %union.TString* %438, null, !dbg !1730
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1731
  br i1 %439, label %445, label %440, !dbg !1731

; <label>:440:                                    ; preds = %433
  %441 = getelementptr inbounds %union.TString, %union.TString* %438, i64 0, i32 0, i32 2, !dbg !1732
  %442 = load i8, i8* %441, align 1, !dbg !1732, !tbaa !403
  %443 = and i8 %442, -4, !dbg !1732
  store i8 %443, i8* %441, align 1, !dbg !1732, !tbaa !403
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1732
  %444 = load i32, i32* %427, align 8, !dbg !1721, !tbaa !1723
  br label %445, !dbg !1732

; <label>:445:                                    ; preds = %440, %433
  %446 = phi i32 [ %434, %433 ], [ %444, %440 ], !dbg !1721
  %447 = add nuw nsw i64 %435, 1, !dbg !1733
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1734
  %448 = sext i32 %446 to i64, !dbg !1724
  %449 = icmp slt i64 %447, %448, !dbg !1724
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1725
  br i1 %449, label %433, label %450, !dbg !1725, !llvm.loop !1735

; <label>:450:                                    ; preds = %445, %425
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1738
  %451 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 13, !dbg !1740
  %452 = load i32, i32* %451, align 8, !dbg !1740, !tbaa !1742
  %453 = icmp sgt i32 %452, 0, !dbg !1743
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1744
  br i1 %453, label %454, label %477, !dbg !1744

; <label>:454:                                    ; preds = %450
  %455 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 6
  %456 = bitcast %struct.global_State** %455 to %struct.Proto***
  br label %457, !dbg !1744

; <label>:457:                                    ; preds = %472, %454
  %458 = phi i32 [ %452, %454 ], [ %473, %472 ]
  %459 = phi i64 [ 0, %454 ], [ %474, %472 ]
  %460 = load %struct.Proto**, %struct.Proto*** %456, align 8, !dbg !1745, !tbaa !1748
  %461 = getelementptr inbounds %struct.Proto*, %struct.Proto** %460, i64 %459, !dbg !1749
  %462 = load %struct.Proto*, %struct.Proto** %461, align 8, !dbg !1749, !tbaa !397
  %463 = icmp eq %struct.Proto* %462, null, !dbg !1749
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1750
  br i1 %463, label %472, label %464, !dbg !1750

; <label>:464:                                    ; preds = %457
  %465 = getelementptr inbounds %struct.Proto, %struct.Proto* %462, i64 0, i32 2, !dbg !1751
  %466 = load i8, i8* %465, align 1, !dbg !1751, !tbaa !403
  %467 = and i8 %466, 3, !dbg !1751
  %468 = icmp eq i8 %467, 0, !dbg !1751
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1754
  br i1 %468, label %472, label %469, !dbg !1754

; <label>:469:                                    ; preds = %464
  %470 = bitcast %struct.Proto* %462 to %union.GCObject*, !dbg !1751
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %union.GCObject* %470) #3, !dbg !1751
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1751
  %471 = load i32, i32* %451, align 8, !dbg !1740, !tbaa !1742
  br label %472, !dbg !1751

; <label>:472:                                    ; preds = %469, %464, %457
  %473 = phi i32 [ %458, %464 ], [ %458, %457 ], [ %471, %469 ], !dbg !1740
  %474 = add nuw nsw i64 %459, 1, !dbg !1755
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1756
  %475 = sext i32 %473 to i64, !dbg !1743
  %476 = icmp slt i64 %474, %475, !dbg !1743
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1744
  br i1 %476, label %457, label %477, !dbg !1744, !llvm.loop !1757

; <label>:477:                                    ; preds = %472, %450
  %478 = phi i32 [ %452, %450 ], [ %473, %472 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1760
  %479 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 14, !dbg !1762
  %480 = load i32, i32* %479, align 4, !dbg !1762, !tbaa !1764
  %481 = icmp sgt i32 %480, 0, !dbg !1765
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1766
  br i1 %481, label %484, label %482, !dbg !1766

; <label>:482:                                    ; preds = %477
  %483 = sext i32 %480 to i64, !dbg !1767
  br label %506, !dbg !1766

; <label>:484:                                    ; preds = %477
  %485 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 8
  %486 = bitcast i32** %485 to %struct.LocVar**
  br label %487, !dbg !1766

; <label>:487:                                    ; preds = %499, %484
  %488 = phi i32 [ %480, %484 ], [ %500, %499 ]
  %489 = phi i64 [ 0, %484 ], [ %501, %499 ]
  %490 = load %struct.LocVar*, %struct.LocVar** %486, align 8, !dbg !1768, !tbaa !1771
  %491 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %490, i64 %489, i32 0, !dbg !1772
  %492 = load %union.TString*, %union.TString** %491, align 8, !dbg !1772, !tbaa !1773
  %493 = icmp eq %union.TString* %492, null, !dbg !1775
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1776
  br i1 %493, label %499, label %494, !dbg !1776

; <label>:494:                                    ; preds = %487
  %495 = getelementptr inbounds %union.TString, %union.TString* %492, i64 0, i32 0, i32 2, !dbg !1777
  %496 = load i8, i8* %495, align 1, !dbg !1777, !tbaa !403
  %497 = and i8 %496, -4, !dbg !1777
  store i8 %497, i8* %495, align 1, !dbg !1777, !tbaa !403
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1777
  %498 = load i32, i32* %479, align 4, !dbg !1762, !tbaa !1764
  br label %499, !dbg !1777

; <label>:499:                                    ; preds = %494, %487
  %500 = phi i32 [ %488, %487 ], [ %498, %494 ], !dbg !1762
  %501 = add nuw nsw i64 %489, 1, !dbg !1778
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1779
  %502 = sext i32 %500 to i64, !dbg !1765
  %503 = icmp slt i64 %501, %502, !dbg !1765
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1766
  br i1 %503, label %487, label %504, !dbg !1766, !llvm.loop !1780

; <label>:504:                                    ; preds = %499
  %505 = load i32, i32* %451, align 8, !dbg !1783, !tbaa !1742
  br label %506, !dbg !1784

; <label>:506:                                    ; preds = %482, %504
  %507 = phi i64 [ %483, %482 ], [ %502, %504 ], !dbg !1767
  %508 = phi i32 [ %478, %482 ], [ %505, %504 ], !dbg !1783
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1784
  %509 = getelementptr inbounds %union.GCObject, %union.GCObject* %3, i64 0, i32 0, i32 12, !dbg !1785
  %510 = bitcast %struct.CallInfo** %509 to i32*, !dbg !1785
  %511 = load i32, i32* %510, align 8, !dbg !1785, !tbaa !1786
  %512 = sext i32 %511 to i64, !dbg !1787
  %513 = sext i32 %508 to i64, !dbg !1788
  %514 = load i32, i32* %399, align 4, !dbg !1789, !tbaa !1706
  %515 = sext i32 %514 to i64, !dbg !1790
  %516 = getelementptr inbounds %struct.Proto, %struct.Proto* %385, i64 0, i32 13, !dbg !1791
  %517 = load i32, i32* %516, align 4, !dbg !1791, !tbaa !1792
  %518 = sext i32 %517 to i64, !dbg !1793
  %519 = load i32, i32* %427, align 8, !dbg !1794, !tbaa !1723
  %520 = sext i32 %519 to i64, !dbg !1795
  %521 = add nsw i64 %507, %515
  %522 = shl nsw i64 %521, 4
  %523 = add nsw i64 %520, %513
  %524 = shl nsw i64 %523, 3
  %525 = add nsw i64 %518, %512
  %526 = shl nsw i64 %525, 2
  %527 = add nsw i64 %526, 120, !dbg !1796
  %528 = add nsw i64 %527, %522, !dbg !1797
  %529 = add nsw i64 %528, %524, !dbg !1798
  br label %530

; <label>:530:                                    ; preds = %1, %506, %374, %254, %165
  %531 = phi i64 [ %529, %506 ], [ %383, %374 ], [ %262, %254 ], [ %178, %165 ], [ 0, %1 ], !dbg !1799
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1800
  ret i64 %531, !dbg !1800
}

; Function Attrs: noredzone
declare dso_local i8* @strchr(i8*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare hidden void @luaD_reallocCI(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare hidden void @luaD_reallocstack(%struct.lua_State*, i32) local_unnamed_addr #1

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
!395 = !DILocation(line: 133, column: 3, scope: !363)
!396 = !DILocation(line: 133, column: 18, scope: !363)
!397 = !{!378, !378, i64 0}
!398 = !DILocation(line: 132, column: 13, scope: !363)
!399 = !DILocation(line: 133, column: 22, scope: !363)
!400 = !DILocation(line: 134, column: 11, scope: !401)
!401 = distinct !DILexicalBlock(scope: !402, file: !1, line: 134, column: 9)
!402 = distinct !DILexicalBlock(scope: !363, file: !1, line: 133, column: 31)
!403 = !{!379, !379, i64 0}
!404 = !DILocation(line: 134, column: 25, scope: !401)
!405 = !DILocation(line: 134, column: 36, scope: !401)
!406 = !DILocation(line: 134, column: 9, scope: !402)
!407 = !DILocation(line: 135, column: 22, scope: !401)
!408 = !DILocation(line: 135, column: 7, scope: !401)
!409 = !DILocation(line: 136, column: 14, scope: !410)
!410 = distinct !DILexicalBlock(scope: !401, file: !1, line: 136, column: 14)
!411 = !{!412, !379, i64 10}
!412 = !{!"Table", !378, i64 0, !379, i64 8, !379, i64 9, !379, i64 10, !379, i64 11, !378, i64 16, !378, i64 24, !378, i64 32, !378, i64 40, !378, i64 48, !381, i64 56}
!413 = !DILocation(line: 136, column: 14, scope: !401)
!414 = !DILocation(line: 136, column: 55, scope: !410)
!415 = !DILocation(line: 137, column: 7, scope: !416)
!416 = distinct !DILexicalBlock(scope: !410, file: !1, line: 136, column: 64)
!417 = !DILocation(line: 138, column: 22, scope: !416)
!418 = !DILocation(line: 139, column: 5, scope: !416)
!419 = !DILocation(line: 141, column: 18, scope: !420)
!420 = distinct !DILexicalBlock(scope: !410, file: !1, line: 140, column: 10)
!421 = !DILocation(line: 141, column: 15, scope: !420)
!422 = !DILocation(line: 142, column: 7, scope: !420)
!423 = !DILocation(line: 143, column: 22, scope: !420)
!424 = !DILocation(line: 143, column: 10, scope: !420)
!425 = !DILocation(line: 145, column: 14, scope: !426)
!426 = distinct !DILexicalBlock(scope: !420, file: !1, line: 145, column: 11)
!427 = !{!389, !378, i64 80}
!428 = !DILocation(line: 145, column: 22, scope: !426)
!429 = !DILocation(line: 145, column: 11, scope: !420)
!430 = !DILocation(line: 146, column: 37, scope: !426)
!431 = !DILocation(line: 146, column: 20, scope: !426)
!432 = !DILocation(line: 146, column: 9, scope: !426)
!433 = !DILocation(line: 148, column: 42, scope: !434)
!434 = distinct !DILexicalBlock(scope: !426, file: !1, line: 147, column: 12)
!435 = !DILocation(line: 148, column: 24, scope: !434)
!436 = !DILocation(line: 149, column: 12, scope: !434)
!437 = !DILocation(line: 149, column: 25, scope: !434)
!438 = !DILocation(line: 149, column: 30, scope: !434)
!439 = !DILocation(line: 150, column: 20, scope: !434)
!440 = !DILocation(line: 0, scope: !363)
!441 = !DILocation(line: 0, scope: !420)
!442 = distinct !{!442, !395, !443}
!443 = !DILocation(line: 153, column: 3, scope: !363)
!444 = !DILocation(line: 154, column: 3, scope: !363)
!445 = distinct !DISubprogram(name: "luaC_callGCTM", scope: !1, file: !1, line: 477, type: !446, isLocal: false, isDefinition: true, scopeLine: 477, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !448)
!446 = !DISubroutineType(types: !447)
!447 = !{null, !149}
!448 = !{!449}
!449 = !DILocalVariable(name: "L", arg: 1, scope: !445, file: !1, line: 477, type: !149)
!450 = !DILocation(line: 477, column: 32, scope: !445)
!451 = !DILocation(line: 478, column: 3, scope: !445)
!452 = !DILocation(line: 478, column: 10, scope: !445)
!453 = !DILocation(line: 478, column: 16, scope: !445)
!454 = !DILocation(line: 479, column: 5, scope: !445)
!455 = distinct !{!455, !451, !456}
!456 = !DILocation(line: 479, column: 11, scope: !445)
!457 = !DILocation(line: 480, column: 1, scope: !445)
!458 = distinct !DISubprogram(name: "GCTM", scope: !1, file: !1, line: 445, type: !446, isLocal: true, isDefinition: true, scopeLine: 445, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !459)
!459 = !{!460, !461, !462, !463, !466, !469, !472, !473, !475, !476}
!460 = !DILocalVariable(name: "L", arg: 1, scope: !458, file: !1, line: 445, type: !149)
!461 = !DILocalVariable(name: "g", scope: !458, file: !1, line: 446, type: !161)
!462 = !DILocalVariable(name: "o", scope: !458, file: !1, line: 447, type: !36)
!463 = !DILocalVariable(name: "udata", scope: !458, file: !1, line: 448, type: !464)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "Udata", file: !38, line: 223, baseType: !71)
!466 = !DILocalVariable(name: "tm", scope: !458, file: !1, line: 449, type: !467)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!469 = !DILocalVariable(name: "oldah", scope: !470, file: !1, line: 460, type: !34)
!470 = distinct !DILexicalBlock(scope: !471, file: !1, line: 459, column: 19)
!471 = distinct !DILexicalBlock(scope: !458, file: !1, line: 459, column: 7)
!472 = !DILocalVariable(name: "oldt", scope: !470, file: !1, line: 461, type: !27)
!473 = !DILocalVariable(name: "o2", scope: !474, file: !1, line: 464, type: !467)
!474 = distinct !DILexicalBlock(scope: !470, file: !1, line: 464, column: 5)
!475 = !DILocalVariable(name: "o1", scope: !474, file: !1, line: 464, type: !91)
!476 = !DILocalVariable(name: "i_o", scope: !477, file: !1, line: 465, type: !91)
!477 = distinct !DILexicalBlock(scope: !470, file: !1, line: 465, column: 5)
!478 = !DILocation(line: 445, column: 30, scope: !458)
!479 = !DILocation(line: 446, column: 21, scope: !458)
!480 = !DILocation(line: 446, column: 17, scope: !458)
!481 = !DILocation(line: 447, column: 20, scope: !458)
!482 = !DILocation(line: 447, column: 33, scope: !458)
!483 = !DILocation(line: 447, column: 13, scope: !458)
!484 = !DILocation(line: 448, column: 10, scope: !458)
!485 = !DILocation(line: 451, column: 9, scope: !486)
!486 = distinct !DILexicalBlock(scope: !458, file: !1, line: 451, column: 7)
!487 = !DILocation(line: 451, column: 7, scope: !458)
!488 = !DILocation(line: 452, column: 16, scope: !486)
!489 = !DILocation(line: 452, column: 5, scope: !486)
!490 = !DILocation(line: 455, column: 18, scope: !458)
!491 = !DILocation(line: 454, column: 38, scope: !486)
!492 = !DILocation(line: 454, column: 26, scope: !486)
!493 = !DILocation(line: 455, column: 23, scope: !458)
!494 = !DILocation(line: 455, column: 35, scope: !458)
!495 = !{!377, !378, i64 0}
!496 = !DILocation(line: 456, column: 6, scope: !458)
!497 = !DILocation(line: 456, column: 18, scope: !458)
!498 = !DILocation(line: 456, column: 23, scope: !458)
!499 = !DILocation(line: 457, column: 3, scope: !458)
!500 = !{!389, !379, i64 32}
!501 = !DILocation(line: 458, column: 8, scope: !458)
!502 = !DILocation(line: 449, column: 17, scope: !458)
!503 = !DILocation(line: 459, column: 10, scope: !471)
!504 = !DILocation(line: 459, column: 7, scope: !458)
!505 = !DILocation(line: 460, column: 24, scope: !470)
!506 = !{!377, !379, i64 101}
!507 = !DILocation(line: 460, column: 13, scope: !470)
!508 = !DILocation(line: 461, column: 22, scope: !470)
!509 = !{!389, !384, i64 112}
!510 = !DILocation(line: 461, column: 12, scope: !470)
!511 = !DILocation(line: 462, column: 18, scope: !470)
!512 = !DILocation(line: 463, column: 27, scope: !470)
!513 = !{!389, !384, i64 120}
!514 = !DILocation(line: 463, column: 23, scope: !470)
!515 = !DILocation(line: 463, column: 20, scope: !470)
!516 = !DILocation(line: 464, column: 5, scope: !474)
!517 = !{!377, !378, i64 16}
!518 = !{!383, !381, i64 8}
!519 = !DILocation(line: 465, column: 5, scope: !477)
!520 = !DILocation(line: 466, column: 12, scope: !470)
!521 = !DILocation(line: 467, column: 5, scope: !470)
!522 = !DILocation(line: 468, column: 18, scope: !470)
!523 = !DILocation(line: 469, column: 20, scope: !470)
!524 = !DILocation(line: 470, column: 3, scope: !470)
!525 = !DILocation(line: 0, scope: !470)
!526 = !DILocation(line: 471, column: 1, scope: !458)
!527 = distinct !DISubprogram(name: "luaC_freeall", scope: !1, file: !1, line: 483, type: !446, isLocal: false, isDefinition: true, scopeLine: 483, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !528)
!528 = !{!529, !530, !531}
!529 = !DILocalVariable(name: "L", arg: 1, scope: !527, file: !1, line: 483, type: !149)
!530 = !DILocalVariable(name: "g", scope: !527, file: !1, line: 484, type: !161)
!531 = !DILocalVariable(name: "i", scope: !527, file: !1, line: 485, type: !105)
!532 = !DILocation(line: 483, column: 31, scope: !527)
!533 = !DILocation(line: 484, column: 21, scope: !527)
!534 = !DILocation(line: 484, column: 17, scope: !527)
!535 = !DILocation(line: 486, column: 6, scope: !527)
!536 = !DILocation(line: 486, column: 19, scope: !527)
!537 = !DILocation(line: 487, column: 3, scope: !527)
!538 = !DILocation(line: 485, column: 7, scope: !527)
!539 = !DILocation(line: 488, column: 8, scope: !540)
!540 = distinct !DILexicalBlock(scope: !527, file: !1, line: 488, column: 3)
!541 = !DILocation(line: 488, column: 27, scope: !542)
!542 = distinct !DILexicalBlock(scope: !540, file: !1, line: 488, column: 3)
!543 = !{!389, !381, i64 12}
!544 = !DILocation(line: 488, column: 17, scope: !542)
!545 = !DILocation(line: 488, column: 3, scope: !540)
!546 = !DILocation(line: 489, column: 5, scope: !542)
!547 = !{!389, !378, i64 0}
!548 = !DILocation(line: 488, column: 34, scope: !542)
!549 = !DILocation(line: 488, column: 3, scope: !542)
!550 = distinct !{!550, !545, !551}
!551 = !DILocation(line: 489, column: 5, scope: !540)
!552 = !DILocation(line: 490, column: 1, scope: !527)
!553 = distinct !DISubprogram(name: "sweeplist", scope: !1, file: !1, line: 407, type: !554, isLocal: true, isDefinition: true, scopeLine: 407, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !556)
!554 = !DISubroutineType(types: !555)
!555 = !{!170, !149, !170, !27}
!556 = !{!557, !558, !559, !560, !561, !562}
!557 = !DILocalVariable(name: "L", arg: 1, scope: !553, file: !1, line: 407, type: !149)
!558 = !DILocalVariable(name: "p", arg: 2, scope: !553, file: !1, line: 407, type: !170)
!559 = !DILocalVariable(name: "count", arg: 3, scope: !553, file: !1, line: 407, type: !27)
!560 = !DILocalVariable(name: "curr", scope: !553, file: !1, line: 408, type: !36)
!561 = !DILocalVariable(name: "g", scope: !553, file: !1, line: 409, type: !161)
!562 = !DILocalVariable(name: "deadmask", scope: !553, file: !1, line: 410, type: !105)
!563 = !DILocation(line: 407, column: 41, scope: !553)
!564 = !DILocation(line: 407, column: 55, scope: !553)
!565 = !DILocation(line: 407, column: 65, scope: !553)
!566 = !DILocation(line: 409, column: 21, scope: !553)
!567 = !DILocation(line: 409, column: 17, scope: !553)
!568 = !DILocation(line: 410, column: 18, scope: !553)
!569 = !DILocation(line: 411, column: 3, scope: !553)
!570 = !DILocation(line: 411, column: 18, scope: !553)
!571 = !DILocation(line: 408, column: 13, scope: !553)
!572 = !DILocation(line: 411, column: 22, scope: !553)
!573 = !DILocation(line: 411, column: 30, scope: !553)
!574 = !DILocation(line: 411, column: 38, scope: !553)
!575 = !DILocation(line: 411, column: 41, scope: !553)
!576 = !DILocation(line: 412, column: 19, scope: !577)
!577 = distinct !DILexicalBlock(scope: !578, file: !1, line: 412, column: 9)
!578 = distinct !DILexicalBlock(scope: !553, file: !1, line: 411, column: 46)
!579 = !DILocation(line: 412, column: 22, scope: !577)
!580 = !DILocation(line: 412, column: 9, scope: !578)
!581 = !DILocation(line: 413, column: 7, scope: !577)
!582 = !DILocation(line: 414, column: 20, scope: !583)
!583 = distinct !DILexicalBlock(scope: !578, file: !1, line: 414, column: 9)
!584 = !DILocation(line: 414, column: 27, scope: !583)
!585 = !DILocation(line: 414, column: 40, scope: !583)
!586 = !DILocation(line: 414, column: 9, scope: !578)
!587 = !DILocation(line: 416, column: 7, scope: !588)
!588 = distinct !DILexicalBlock(scope: !583, file: !1, line: 414, column: 52)
!589 = !DILocation(line: 417, column: 22, scope: !588)
!590 = !DILocation(line: 418, column: 5, scope: !588)
!591 = !DILocation(line: 421, column: 22, scope: !592)
!592 = distinct !DILexicalBlock(scope: !583, file: !1, line: 419, column: 10)
!593 = !DILocation(line: 421, column: 10, scope: !592)
!594 = !DILocation(line: 422, column: 22, scope: !595)
!595 = distinct !DILexicalBlock(scope: !592, file: !1, line: 422, column: 11)
!596 = !{!389, !378, i64 40}
!597 = !DILocation(line: 422, column: 16, scope: !595)
!598 = !DILocation(line: 422, column: 11, scope: !592)
!599 = !DILocation(line: 423, column: 31, scope: !595)
!600 = !DILocation(line: 423, column: 19, scope: !595)
!601 = !DILocation(line: 423, column: 9, scope: !595)
!602 = !DILocalVariable(name: "L", arg: 1, scope: !603, file: !1, line: 378, type: !149)
!603 = distinct !DISubprogram(name: "freeobj", scope: !1, file: !1, line: 378, type: !604, isLocal: true, isDefinition: true, scopeLine: 378, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !606)
!604 = !DISubroutineType(types: !605)
!605 = !{null, !149, !36}
!606 = !{!602, !607}
!607 = !DILocalVariable(name: "o", arg: 2, scope: !603, file: !1, line: 378, type: !36)
!608 = !DILocation(line: 378, column: 33, scope: !603, inlinedAt: !609)
!609 = distinct !DILocation(line: 424, column: 7, scope: !592)
!610 = !DILocation(line: 378, column: 46, scope: !603, inlinedAt: !609)
!611 = !DILocation(line: 379, column: 18, scope: !603, inlinedAt: !609)
!612 = !DILocation(line: 379, column: 3, scope: !603, inlinedAt: !609)
!613 = !DILocation(line: 380, column: 40, scope: !614, inlinedAt: !609)
!614 = distinct !DILexicalBlock(scope: !603, file: !1, line: 379, column: 22)
!615 = !DILocation(line: 380, column: 22, scope: !614, inlinedAt: !609)
!616 = !DILocation(line: 380, column: 51, scope: !614, inlinedAt: !609)
!617 = !DILocation(line: 381, column: 45, scope: !614, inlinedAt: !609)
!618 = !DILocation(line: 381, column: 25, scope: !614, inlinedAt: !609)
!619 = !DILocation(line: 381, column: 57, scope: !614, inlinedAt: !609)
!620 = !DILocation(line: 382, column: 40, scope: !614, inlinedAt: !609)
!621 = !DILocation(line: 382, column: 22, scope: !614, inlinedAt: !609)
!622 = !DILocation(line: 382, column: 52, scope: !614, inlinedAt: !609)
!623 = !DILocation(line: 383, column: 35, scope: !614, inlinedAt: !609)
!624 = !DILocation(line: 383, column: 22, scope: !614, inlinedAt: !609)
!625 = !DILocation(line: 383, column: 46, scope: !614, inlinedAt: !609)
!626 = !DILocation(line: 386, column: 26, scope: !627, inlinedAt: !609)
!627 = distinct !DILexicalBlock(scope: !614, file: !1, line: 384, column: 23)
!628 = !DILocation(line: 386, column: 7, scope: !627, inlinedAt: !609)
!629 = !DILocation(line: 387, column: 7, scope: !627, inlinedAt: !609)
!630 = !DILocation(line: 390, column: 7, scope: !631, inlinedAt: !609)
!631 = distinct !DILexicalBlock(scope: !614, file: !1, line: 389, column: 23)
!632 = !DILocation(line: 390, column: 18, scope: !631, inlinedAt: !609)
!633 = !DILocation(line: 390, column: 22, scope: !631, inlinedAt: !609)
!634 = !{!389, !381, i64 8}
!635 = !DILocation(line: 391, column: 7, scope: !631, inlinedAt: !609)
!636 = !DILocation(line: 392, column: 7, scope: !631, inlinedAt: !609)
!637 = !DILocation(line: 395, column: 7, scope: !638, inlinedAt: !609)
!638 = distinct !DILexicalBlock(scope: !614, file: !1, line: 394, column: 25)
!639 = !DILocation(line: 396, column: 7, scope: !638, inlinedAt: !609)
!640 = !DILocation(line: 0, scope: !592)
!641 = !DILocation(line: 400, column: 1, scope: !603, inlinedAt: !609)
!642 = distinct !{!642, !569, !643}
!643 = !DILocation(line: 426, column: 3, scope: !553)
!644 = !DILocation(line: 427, column: 3, scope: !553)
!645 = distinct !DISubprogram(name: "luaC_step", scope: !1, file: !1, line: 610, type: !446, isLocal: false, isDefinition: true, scopeLine: 610, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !646)
!646 = !{!647, !648, !649}
!647 = !DILocalVariable(name: "L", arg: 1, scope: !645, file: !1, line: 610, type: !149)
!648 = !DILocalVariable(name: "g", scope: !645, file: !1, line: 611, type: !161)
!649 = !DILocalVariable(name: "lim", scope: !645, file: !1, line: 612, type: !650)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "l_mem", file: !28, line: 22, baseType: !298)
!651 = !DILocation(line: 610, column: 28, scope: !645)
!652 = !DILocation(line: 611, column: 21, scope: !645)
!653 = !DILocation(line: 611, column: 17, scope: !645)
!654 = !DILocation(line: 612, column: 37, scope: !645)
!655 = !{!389, !381, i64 148}
!656 = !DILocation(line: 612, column: 32, scope: !645)
!657 = !DILocation(line: 612, column: 15, scope: !645)
!658 = !DILocation(line: 612, column: 9, scope: !645)
!659 = !DILocation(line: 613, column: 11, scope: !660)
!660 = distinct !DILexicalBlock(scope: !645, file: !1, line: 613, column: 7)
!661 = !DILocation(line: 613, column: 7, scope: !645)
!662 = !DILocation(line: 615, column: 19, scope: !645)
!663 = !DILocation(line: 615, column: 35, scope: !645)
!664 = !DILocation(line: 615, column: 30, scope: !645)
!665 = !DILocation(line: 615, column: 6, scope: !645)
!666 = !DILocation(line: 615, column: 13, scope: !645)
!667 = !{!389, !384, i64 136}
!668 = !DILocation(line: 616, column: 3, scope: !645)
!669 = !DILocation(line: 0, scope: !670)
!670 = distinct !DILexicalBlock(scope: !645, file: !1, line: 616, column: 6)
!671 = !DILocation(line: 617, column: 12, scope: !670)
!672 = !DILocation(line: 617, column: 9, scope: !670)
!673 = !DILocation(line: 618, column: 12, scope: !674)
!674 = distinct !DILexicalBlock(scope: !670, file: !1, line: 618, column: 9)
!675 = !{!389, !379, i64 33}
!676 = !DILocation(line: 618, column: 20, scope: !674)
!677 = !DILocation(line: 620, column: 16, scope: !645)
!678 = !DILocation(line: 618, column: 9, scope: !670)
!679 = distinct !{!679, !668, !680}
!680 = !DILocation(line: 620, column: 19, scope: !645)
!681 = !DILocation(line: 621, column: 7, scope: !645)
!682 = !DILocation(line: 622, column: 12, scope: !683)
!683 = distinct !DILexicalBlock(scope: !684, file: !1, line: 622, column: 9)
!684 = distinct !DILexicalBlock(scope: !685, file: !1, line: 621, column: 31)
!685 = distinct !DILexicalBlock(scope: !645, file: !1, line: 621, column: 7)
!686 = !DILocation(line: 622, column: 19, scope: !683)
!687 = !DILocation(line: 622, column: 9, scope: !684)
!688 = !DILocation(line: 623, column: 27, scope: !683)
!689 = !DILocation(line: 623, column: 38, scope: !683)
!690 = !DILocation(line: 623, column: 7, scope: !683)
!691 = !DILocation(line: 625, column: 17, scope: !692)
!692 = distinct !DILexicalBlock(scope: !683, file: !1, line: 624, column: 10)
!693 = !DILocation(line: 626, column: 27, scope: !692)
!694 = !DILocation(line: 630, column: 5, scope: !695)
!695 = distinct !DILexicalBlock(scope: !685, file: !1, line: 629, column: 8)
!696 = !{!389, !384, i64 128}
!697 = !{!389, !381, i64 144}
!698 = !DILocation(line: 0, scope: !695)
!699 = !DILocation(line: 632, column: 1, scope: !645)
!700 = distinct !DISubprogram(name: "singlestep", scope: !1, file: !1, line: 556, type: !701, isLocal: true, isDefinition: true, scopeLine: 556, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !703)
!701 = !DISubroutineType(types: !702)
!702 = !{!650, !149}
!703 = !{!704, !705, !706, !709}
!704 = !DILocalVariable(name: "L", arg: 1, scope: !700, file: !1, line: 556, type: !149)
!705 = !DILocalVariable(name: "g", scope: !700, file: !1, line: 557, type: !161)
!706 = !DILocalVariable(name: "old", scope: !707, file: !1, line: 573, type: !27)
!707 = distinct !DILexicalBlock(scope: !708, file: !1, line: 572, column: 26)
!708 = distinct !DILexicalBlock(scope: !700, file: !1, line: 559, column: 23)
!709 = !DILocalVariable(name: "old", scope: !710, file: !1, line: 582, type: !27)
!710 = distinct !DILexicalBlock(scope: !708, file: !1, line: 581, column: 20)
!711 = !DILocation(line: 556, column: 37, scope: !700)
!712 = !DILocation(line: 557, column: 21, scope: !700)
!713 = !DILocation(line: 557, column: 17, scope: !700)
!714 = !DILocation(line: 559, column: 14, scope: !700)
!715 = !DILocation(line: 559, column: 3, scope: !700)
!716 = !DILocation(line: 561, column: 7, scope: !717)
!717 = distinct !DILexicalBlock(scope: !708, file: !1, line: 560, column: 20)
!718 = !DILocation(line: 562, column: 7, scope: !717)
!719 = !DILocation(line: 565, column: 14, scope: !720)
!720 = distinct !DILexicalBlock(scope: !721, file: !1, line: 565, column: 11)
!721 = distinct !DILexicalBlock(scope: !708, file: !1, line: 564, column: 24)
!722 = !{!389, !378, i64 56}
!723 = !DILocation(line: 565, column: 11, scope: !720)
!724 = !DILocation(line: 565, column: 11, scope: !721)
!725 = !DILocation(line: 566, column: 16, scope: !720)
!726 = !DILocation(line: 566, column: 9, scope: !720)
!727 = !DILocalVariable(name: "L", arg: 1, scope: !728, file: !1, line: 525, type: !149)
!728 = distinct !DISubprogram(name: "atomic", scope: !1, file: !1, line: 525, type: !446, isLocal: true, isDefinition: true, scopeLine: 525, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !729)
!729 = !{!727, !730, !731}
!730 = !DILocalVariable(name: "g", scope: !728, file: !1, line: 526, type: !161)
!731 = !DILocalVariable(name: "udsize", scope: !728, file: !1, line: 527, type: !29)
!732 = !DILocation(line: 525, column: 32, scope: !728, inlinedAt: !733)
!733 = distinct !DILocation(line: 568, column: 9, scope: !734)
!734 = distinct !DILexicalBlock(scope: !720, file: !1, line: 567, column: 12)
!735 = !DILocation(line: 526, column: 17, scope: !728, inlinedAt: !733)
!736 = !DILocalVariable(name: "g", arg: 1, scope: !737, file: !1, line: 515, type: !161)
!737 = distinct !DISubprogram(name: "remarkupvals", scope: !1, file: !1, line: 515, type: !738, isLocal: true, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !740)
!738 = !DISubroutineType(types: !739)
!739 = !{null, !161}
!740 = !{!736, !741}
!741 = !DILocalVariable(name: "uv", scope: !737, file: !1, line: 516, type: !354)
!742 = !DILocation(line: 515, column: 41, scope: !737, inlinedAt: !743)
!743 = distinct !DILocation(line: 529, column: 3, scope: !728, inlinedAt: !733)
!744 = !DILocation(line: 517, column: 16, scope: !745, inlinedAt: !743)
!745 = distinct !DILexicalBlock(scope: !737, file: !1, line: 517, column: 3)
!746 = !DILocation(line: 517, column: 27, scope: !745, inlinedAt: !743)
!747 = !DILocation(line: 516, column: 10, scope: !737, inlinedAt: !743)
!748 = !DILocation(line: 517, column: 8, scope: !745, inlinedAt: !743)
!749 = !DILocation(line: 517, column: 36, scope: !750, inlinedAt: !743)
!750 = distinct !DILexicalBlock(scope: !745, file: !1, line: 517, column: 3)
!751 = !DILocation(line: 517, column: 3, scope: !745, inlinedAt: !743)
!752 = !DILocation(line: 522, column: 1, scope: !737, inlinedAt: !743)
!753 = !DILocalVariable(name: "g", arg: 1, scope: !754, file: !1, line: 323, type: !161)
!754 = distinct !DISubprogram(name: "propagateall", scope: !1, file: !1, line: 323, type: !755, isLocal: true, isDefinition: true, scopeLine: 323, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !757)
!755 = !DISubroutineType(types: !756)
!756 = !{!29, !161}
!757 = !{!753, !758}
!758 = !DILocalVariable(name: "m", scope: !754, file: !1, line: 324, type: !29)
!759 = !DILocation(line: 323, column: 43, scope: !754, inlinedAt: !760)
!760 = distinct !DILocation(line: 531, column: 3, scope: !728, inlinedAt: !733)
!761 = !DILocation(line: 324, column: 10, scope: !754, inlinedAt: !760)
!762 = !DILocation(line: 325, column: 3, scope: !754, inlinedAt: !760)
!763 = !DILocation(line: 519, column: 9, scope: !764, inlinedAt: !743)
!764 = distinct !DILexicalBlock(scope: !765, file: !1, line: 519, column: 9)
!765 = distinct !DILexicalBlock(scope: !750, file: !1, line: 517, column: 70)
!766 = !DILocation(line: 519, column: 9, scope: !765, inlinedAt: !743)
!767 = !DILocation(line: 520, column: 7, scope: !768, inlinedAt: !743)
!768 = distinct !DILexicalBlock(scope: !769, file: !1, line: 520, column: 7)
!769 = distinct !DILexicalBlock(scope: !764, file: !1, line: 520, column: 7)
!770 = !{!392, !378, i64 16}
!771 = !DILocation(line: 520, column: 7, scope: !769, inlinedAt: !743)
!772 = !DILocation(line: 517, column: 64, scope: !750, inlinedAt: !743)
!773 = !DILocation(line: 517, column: 3, scope: !750, inlinedAt: !743)
!774 = distinct !{!774, !775, !776}
!775 = !DILocation(line: 517, column: 3, scope: !745)
!776 = !DILocation(line: 521, column: 3, scope: !745)
!777 = !DILocation(line: 325, column: 13, scope: !754, inlinedAt: !760)
!778 = !DILocation(line: 325, column: 24, scope: !754, inlinedAt: !760)
!779 = distinct !{!779, !780, !781}
!780 = !DILocation(line: 325, column: 3, scope: !754)
!781 = !DILocation(line: 325, column: 39, scope: !754)
!782 = !DILocation(line: 326, column: 3, scope: !754, inlinedAt: !760)
!783 = !DILocation(line: 533, column: 16, scope: !728, inlinedAt: !733)
!784 = !{!389, !378, i64 72}
!785 = !DILocation(line: 533, column: 11, scope: !728, inlinedAt: !733)
!786 = !DILocation(line: 534, column: 11, scope: !728, inlinedAt: !733)
!787 = !DILocation(line: 536, column: 3, scope: !788, inlinedAt: !733)
!788 = distinct !DILexicalBlock(scope: !789, file: !1, line: 536, column: 3)
!789 = distinct !DILexicalBlock(scope: !728, file: !1, line: 536, column: 3)
!790 = !DILocation(line: 536, column: 3, scope: !789, inlinedAt: !733)
!791 = !DILocalVariable(name: "g", arg: 1, scope: !792, file: !1, line: 493, type: !161)
!792 = distinct !DISubprogram(name: "markmt", scope: !1, file: !1, line: 493, type: !738, isLocal: true, isDefinition: true, scopeLine: 493, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !793)
!793 = !{!791, !794}
!794 = !DILocalVariable(name: "i", scope: !792, file: !1, line: 494, type: !105)
!795 = !DILocation(line: 493, column: 35, scope: !792, inlinedAt: !796)
!796 = distinct !DILocation(line: 537, column: 3, scope: !728, inlinedAt: !733)
!797 = !DILocation(line: 494, column: 7, scope: !792, inlinedAt: !796)
!798 = !DILocation(line: 495, column: 8, scope: !799, inlinedAt: !796)
!799 = distinct !DILexicalBlock(scope: !792, file: !1, line: 495, column: 3)
!800 = !DILocation(line: 495, column: 3, scope: !799, inlinedAt: !796)
!801 = !DILocation(line: 496, column: 9, scope: !802, inlinedAt: !796)
!802 = distinct !DILexicalBlock(scope: !803, file: !1, line: 496, column: 9)
!803 = distinct !DILexicalBlock(scope: !799, file: !1, line: 495, column: 3)
!804 = !DILocation(line: 496, column: 9, scope: !803, inlinedAt: !796)
!805 = !DILocation(line: 496, column: 19, scope: !806, inlinedAt: !796)
!806 = distinct !DILexicalBlock(scope: !807, file: !1, line: 496, column: 19)
!807 = distinct !DILexicalBlock(scope: !802, file: !1, line: 496, column: 19)
!808 = !DILocation(line: 496, column: 19, scope: !807, inlinedAt: !796)
!809 = !DILocation(line: 495, column: 26, scope: !803, inlinedAt: !796)
!810 = !DILocation(line: 495, column: 3, scope: !803, inlinedAt: !796)
!811 = !DILocation(line: 495, column: 14, scope: !803, inlinedAt: !796)
!812 = distinct !{!812, !813, !814}
!813 = !DILocation(line: 495, column: 3, scope: !799)
!814 = !DILocation(line: 496, column: 19, scope: !799)
!815 = !DILocation(line: 497, column: 1, scope: !792, inlinedAt: !796)
!816 = !DILocation(line: 323, column: 43, scope: !754, inlinedAt: !817)
!817 = distinct !DILocation(line: 538, column: 3, scope: !728, inlinedAt: !733)
!818 = !DILocation(line: 324, column: 10, scope: !754, inlinedAt: !817)
!819 = !DILocation(line: 325, column: 3, scope: !754, inlinedAt: !817)
!820 = !DILocation(line: 325, column: 13, scope: !754, inlinedAt: !817)
!821 = !DILocation(line: 325, column: 24, scope: !754, inlinedAt: !817)
!822 = !DILocation(line: 326, column: 3, scope: !754, inlinedAt: !817)
!823 = !DILocation(line: 540, column: 16, scope: !728, inlinedAt: !733)
!824 = !{!389, !378, i64 64}
!825 = !DILocation(line: 540, column: 11, scope: !728, inlinedAt: !733)
!826 = !DILocation(line: 541, column: 16, scope: !728, inlinedAt: !733)
!827 = !DILocation(line: 323, column: 43, scope: !754, inlinedAt: !828)
!828 = distinct !DILocation(line: 542, column: 3, scope: !728, inlinedAt: !733)
!829 = !DILocation(line: 324, column: 10, scope: !754, inlinedAt: !828)
!830 = !DILocation(line: 325, column: 3, scope: !754, inlinedAt: !828)
!831 = !DILocation(line: 325, column: 24, scope: !754, inlinedAt: !828)
!832 = !DILocation(line: 325, column: 13, scope: !754, inlinedAt: !828)
!833 = !DILocation(line: 326, column: 3, scope: !754, inlinedAt: !828)
!834 = !DILocation(line: 543, column: 12, scope: !728, inlinedAt: !733)
!835 = !DILocation(line: 527, column: 10, scope: !728, inlinedAt: !733)
!836 = !DILocalVariable(name: "g", arg: 1, scope: !837, file: !1, line: 115, type: !161)
!837 = distinct !DISubprogram(name: "marktmu", scope: !1, file: !1, line: 115, type: !738, isLocal: true, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !838)
!838 = !{!836, !839}
!839 = !DILocalVariable(name: "u", scope: !837, file: !1, line: 116, type: !36)
!840 = !DILocation(line: 115, column: 36, scope: !837, inlinedAt: !841)
!841 = distinct !DILocation(line: 544, column: 3, scope: !728, inlinedAt: !733)
!842 = !DILocation(line: 116, column: 20, scope: !837, inlinedAt: !841)
!843 = !DILocation(line: 116, column: 13, scope: !837, inlinedAt: !841)
!844 = !DILocation(line: 117, column: 7, scope: !845, inlinedAt: !841)
!845 = distinct !DILexicalBlock(scope: !837, file: !1, line: 117, column: 7)
!846 = !DILocation(line: 117, column: 7, scope: !837, inlinedAt: !841)
!847 = !DILocation(line: 119, column: 18, scope: !848, inlinedAt: !841)
!848 = distinct !DILexicalBlock(scope: !849, file: !1, line: 118, column: 8)
!849 = distinct !DILexicalBlock(scope: !845, file: !1, line: 117, column: 10)
!850 = !DILocation(line: 0, scope: !848, inlinedAt: !841)
!851 = !DILocation(line: 120, column: 7, scope: !848, inlinedAt: !841)
!852 = !DILocation(line: 121, column: 7, scope: !848, inlinedAt: !841)
!853 = !DILocation(line: 122, column: 22, scope: !849, inlinedAt: !841)
!854 = !DILocation(line: 122, column: 16, scope: !849, inlinedAt: !841)
!855 = !DILocation(line: 122, column: 5, scope: !848, inlinedAt: !841)
!856 = distinct !{!856, !857, !858}
!857 = !DILocation(line: 118, column: 5, scope: !849)
!858 = !DILocation(line: 122, column: 29, scope: !849)
!859 = !DILocation(line: 124, column: 1, scope: !837, inlinedAt: !841)
!860 = !DILocation(line: 323, column: 43, scope: !754, inlinedAt: !861)
!861 = distinct !DILocation(line: 545, column: 13, scope: !728, inlinedAt: !733)
!862 = !DILocation(line: 324, column: 10, scope: !754, inlinedAt: !861)
!863 = !DILocation(line: 325, column: 3, scope: !754, inlinedAt: !861)
!864 = !DILocation(line: 325, column: 13, scope: !754, inlinedAt: !861)
!865 = !DILocation(line: 325, column: 24, scope: !754, inlinedAt: !861)
!866 = !DILocation(line: 325, column: 21, scope: !754, inlinedAt: !861)
!867 = !DILocation(line: 0, scope: !754, inlinedAt: !861)
!868 = !DILocation(line: 326, column: 3, scope: !754, inlinedAt: !861)
!869 = !DILocation(line: 546, column: 17, scope: !728, inlinedAt: !733)
!870 = !DILocalVariable(name: "l", arg: 1, scope: !871, file: !1, line: 351, type: !36)
!871 = distinct !DISubprogram(name: "cleartable", scope: !1, file: !1, line: 351, type: !872, isLocal: true, isDefinition: true, scopeLine: 351, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !874)
!872 = !DISubroutineType(types: !873)
!873 = !{null, !36}
!874 = !{!870, !875, !879, !880, !884}
!875 = !DILocalVariable(name: "h", scope: !876, file: !1, line: 353, type: !877)
!876 = distinct !DILexicalBlock(scope: !871, file: !1, line: 352, column: 13)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_typedef, name: "Table", file: !38, line: 348, baseType: !82)
!879 = !DILocalVariable(name: "i", scope: !876, file: !1, line: 354, type: !105)
!880 = !DILocalVariable(name: "o", scope: !881, file: !1, line: 359, type: !91)
!881 = distinct !DILexicalBlock(scope: !882, file: !1, line: 358, column: 19)
!882 = distinct !DILexicalBlock(scope: !883, file: !1, line: 357, column: 43)
!883 = distinct !DILexicalBlock(scope: !876, file: !1, line: 357, column: 9)
!884 = !DILocalVariable(name: "n", scope: !885, file: !1, line: 366, type: !108)
!885 = distinct !DILexicalBlock(scope: !876, file: !1, line: 365, column: 17)
!886 = !DILocation(line: 351, column: 35, scope: !871, inlinedAt: !887)
!887 = distinct !DILocation(line: 546, column: 3, scope: !728, inlinedAt: !733)
!888 = !DILocation(line: 352, column: 3, scope: !871, inlinedAt: !887)
!889 = !DILocation(line: 353, column: 16, scope: !876, inlinedAt: !887)
!890 = !DILocation(line: 353, column: 12, scope: !876, inlinedAt: !887)
!891 = !DILocation(line: 354, column: 16, scope: !876, inlinedAt: !887)
!892 = !{!412, !381, i64 56}
!893 = !DILocation(line: 354, column: 9, scope: !876, inlinedAt: !887)
!894 = !DILocation(line: 357, column: 9, scope: !883, inlinedAt: !887)
!895 = !{!412, !379, i64 9}
!896 = !DILocation(line: 357, column: 9, scope: !876, inlinedAt: !887)
!897 = !DILocation(line: 358, column: 7, scope: !882, inlinedAt: !887)
!898 = !DILocation(line: 358, column: 15, scope: !882, inlinedAt: !887)
!899 = !DILocation(line: 359, column: 25, scope: !881, inlinedAt: !887)
!900 = !{!412, !378, i64 24}
!901 = !DILocalVariable(name: "iskey", arg: 2, scope: !902, file: !1, line: 337, type: !105)
!902 = distinct !DISubprogram(name: "iscleared", scope: !1, file: !1, line: 337, type: !903, isLocal: true, isDefinition: true, scopeLine: 337, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !905)
!903 = !DISubroutineType(types: !904)
!904 = !{!105, !467, !105}
!905 = !{!906, !901}
!906 = !DILocalVariable(name: "o", arg: 1, scope: !902, file: !1, line: 337, type: !467)
!907 = !DILocation(line: 337, column: 44, scope: !902, inlinedAt: !908)
!908 = distinct !DILocation(line: 360, column: 13, scope: !909, inlinedAt: !887)
!909 = distinct !DILexicalBlock(scope: !881, file: !1, line: 360, column: 13)
!910 = !DILocation(line: 338, column: 8, scope: !911, inlinedAt: !908)
!911 = distinct !DILexicalBlock(scope: !902, file: !1, line: 338, column: 7)
!912 = !DILocation(line: 338, column: 7, scope: !902, inlinedAt: !908)
!913 = !DILocation(line: 339, column: 7, scope: !914, inlinedAt: !908)
!914 = distinct !DILexicalBlock(scope: !902, file: !1, line: 339, column: 7)
!915 = !DILocation(line: 0, scope: !902, inlinedAt: !908)
!916 = !DILocation(line: 339, column: 7, scope: !902, inlinedAt: !908)
!917 = !DILocation(line: 340, column: 5, scope: !918, inlinedAt: !908)
!918 = distinct !DILexicalBlock(scope: !914, file: !1, line: 339, column: 22)
!919 = !DILocation(line: 341, column: 5, scope: !918, inlinedAt: !908)
!920 = !DILocation(line: 343, column: 10, scope: !902, inlinedAt: !908)
!921 = !DILocation(line: 343, column: 30, scope: !902, inlinedAt: !908)
!922 = !DILocation(line: 343, column: 3, scope: !902, inlinedAt: !908)
!923 = !DILocation(line: 345, column: 1, scope: !902, inlinedAt: !908)
!924 = !DILocation(line: 360, column: 13, scope: !881, inlinedAt: !887)
!925 = !DILocation(line: 344, column: 6, scope: !902, inlinedAt: !908)
!926 = !DILocation(line: 344, column: 22, scope: !902, inlinedAt: !908)
!927 = !DILocation(line: 0, scope: !909, inlinedAt: !887)
!928 = !DILocation(line: 360, column: 13, scope: !909, inlinedAt: !887)
!929 = !DILocation(line: 361, column: 11, scope: !909, inlinedAt: !887)
!930 = !DILocation(line: 0, scope: !734)
!931 = distinct !{!931, !932, !933}
!932 = !DILocation(line: 358, column: 7, scope: !882)
!933 = !DILocation(line: 362, column: 7, scope: !882)
!934 = !DILocation(line: 364, column: 9, scope: !876, inlinedAt: !887)
!935 = !{!412, !379, i64 11}
!936 = !DILocation(line: 365, column: 5, scope: !876, inlinedAt: !887)
!937 = !DILocation(line: 365, column: 13, scope: !876, inlinedAt: !887)
!938 = !DILocation(line: 366, column: 17, scope: !885, inlinedAt: !887)
!939 = !{!412, !378, i64 32}
!940 = !DILocation(line: 367, column: 12, scope: !941, inlinedAt: !887)
!941 = distinct !DILexicalBlock(scope: !885, file: !1, line: 367, column: 11)
!942 = !{!943, !381, i64 8}
!943 = !{!"Node", !383, i64 0, !379, i64 16}
!944 = !DILocation(line: 367, column: 29, scope: !941, inlinedAt: !887)
!945 = !DILocation(line: 337, column: 44, scope: !902, inlinedAt: !946)
!946 = distinct !DILocation(line: 368, column: 12, scope: !941, inlinedAt: !887)
!947 = !DILocation(line: 338, column: 8, scope: !911, inlinedAt: !946)
!948 = !DILocation(line: 338, column: 7, scope: !902, inlinedAt: !946)
!949 = !DILocation(line: 338, column: 26, scope: !911, inlinedAt: !946)
!950 = !DILocation(line: 339, column: 7, scope: !914, inlinedAt: !946)
!951 = !DILocation(line: 0, scope: !902, inlinedAt: !946)
!952 = !DILocation(line: 339, column: 7, scope: !902, inlinedAt: !946)
!953 = !DILocation(line: 340, column: 5, scope: !918, inlinedAt: !946)
!954 = !DILocation(line: 341, column: 5, scope: !918, inlinedAt: !946)
!955 = !DILocation(line: 338, column: 8, scope: !911, inlinedAt: !956)
!956 = distinct !DILocation(line: 368, column: 41, scope: !941, inlinedAt: !887)
!957 = !DILocation(line: 343, column: 10, scope: !902, inlinedAt: !946)
!958 = !DILocation(line: 343, column: 30, scope: !902, inlinedAt: !946)
!959 = !DILocation(line: 0, scope: !941, inlinedAt: !887)
!960 = !DILocation(line: 345, column: 1, scope: !902, inlinedAt: !946)
!961 = !DILocation(line: 368, column: 38, scope: !941, inlinedAt: !887)
!962 = !DILocation(line: 337, column: 44, scope: !902, inlinedAt: !956)
!963 = !DILocation(line: 338, column: 7, scope: !902, inlinedAt: !956)
!964 = !DILocation(line: 339, column: 7, scope: !914, inlinedAt: !956)
!965 = !DILocation(line: 0, scope: !902, inlinedAt: !956)
!966 = !DILocation(line: 339, column: 7, scope: !902, inlinedAt: !956)
!967 = !DILocation(line: 340, column: 5, scope: !918, inlinedAt: !956)
!968 = !DILocation(line: 341, column: 5, scope: !918, inlinedAt: !956)
!969 = !DILocation(line: 343, column: 10, scope: !902, inlinedAt: !956)
!970 = !DILocation(line: 343, column: 30, scope: !902, inlinedAt: !956)
!971 = !DILocation(line: 343, column: 3, scope: !902, inlinedAt: !956)
!972 = !DILocation(line: 345, column: 1, scope: !902, inlinedAt: !956)
!973 = !DILocation(line: 367, column: 11, scope: !885, inlinedAt: !887)
!974 = !DILocation(line: 344, column: 6, scope: !902, inlinedAt: !956)
!975 = !DILocation(line: 344, column: 22, scope: !902, inlinedAt: !956)
!976 = !DILocation(line: 368, column: 41, scope: !941, inlinedAt: !887)
!977 = !DILocation(line: 369, column: 9, scope: !978, inlinedAt: !887)
!978 = distinct !DILexicalBlock(scope: !941, file: !1, line: 368, column: 65)
!979 = !DILocation(line: 64, column: 7, scope: !980, inlinedAt: !986)
!980 = distinct !DILexicalBlock(scope: !981, file: !1, line: 64, column: 7)
!981 = distinct !DISubprogram(name: "removeentry", scope: !1, file: !1, line: 62, type: !982, isLocal: true, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !984)
!982 = !DISubroutineType(types: !983)
!983 = !{null, !108}
!984 = !{!985}
!985 = !DILocalVariable(name: "n", arg: 1, scope: !981, file: !1, line: 62, type: !108)
!986 = distinct !DILocation(line: 370, column: 9, scope: !978, inlinedAt: !887)
!987 = !DILocation(line: 64, column: 7, scope: !981, inlinedAt: !986)
!988 = !DILocation(line: 65, column: 5, scope: !980, inlinedAt: !986)
!989 = !DILocation(line: 66, column: 1, scope: !981, inlinedAt: !986)
!990 = !DILocation(line: 371, column: 7, scope: !978, inlinedAt: !887)
!991 = distinct !{!991, !992, !993}
!992 = !DILocation(line: 365, column: 5, scope: !876)
!993 = !DILocation(line: 372, column: 5, scope: !876)
!994 = !DILocation(line: 373, column: 12, scope: !876, inlinedAt: !887)
!995 = !{!412, !378, i64 48}
!996 = distinct !{!996, !997, !998}
!997 = !DILocation(line: 352, column: 3, scope: !871)
!998 = !DILocation(line: 374, column: 3, scope: !871)
!999 = !DILocation(line: 375, column: 1, scope: !871, inlinedAt: !887)
!1000 = !DILocation(line: 548, column: 21, scope: !728, inlinedAt: !733)
!1001 = !DILocation(line: 548, column: 19, scope: !728, inlinedAt: !733)
!1002 = !DILocation(line: 549, column: 6, scope: !728, inlinedAt: !733)
!1003 = !DILocation(line: 549, column: 17, scope: !728, inlinedAt: !733)
!1004 = !{!389, !381, i64 36}
!1005 = !DILocation(line: 550, column: 20, scope: !728, inlinedAt: !733)
!1006 = !DILocation(line: 550, column: 6, scope: !728, inlinedAt: !733)
!1007 = !DILocation(line: 550, column: 14, scope: !728, inlinedAt: !733)
!1008 = !{!389, !378, i64 48}
!1009 = !DILocation(line: 551, column: 14, scope: !728, inlinedAt: !733)
!1010 = !DILocation(line: 552, column: 20, scope: !728, inlinedAt: !733)
!1011 = !DILocation(line: 545, column: 10, scope: !728, inlinedAt: !733)
!1012 = !DILocation(line: 552, column: 31, scope: !728, inlinedAt: !733)
!1013 = !DILocation(line: 552, column: 6, scope: !728, inlinedAt: !733)
!1014 = !DILocation(line: 552, column: 15, scope: !728, inlinedAt: !733)
!1015 = !DILocation(line: 553, column: 1, scope: !728, inlinedAt: !733)
!1016 = !DILocation(line: 569, column: 9, scope: !734)
!1017 = !DILocation(line: 573, column: 23, scope: !707)
!1018 = !DILocation(line: 573, column: 14, scope: !707)
!1019 = !DILocation(line: 574, column: 7, scope: !707)
!1020 = !DILocation(line: 575, column: 14, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !707, file: !1, line: 575, column: 11)
!1022 = !DILocation(line: 575, column: 36, scope: !1021)
!1023 = !DILocation(line: 575, column: 25, scope: !1021)
!1024 = !DILocation(line: 575, column: 11, scope: !707)
!1025 = !DILocation(line: 576, column: 20, scope: !1021)
!1026 = !DILocation(line: 576, column: 9, scope: !1021)
!1027 = !DILocation(line: 578, column: 31, scope: !707)
!1028 = !DILocation(line: 578, column: 10, scope: !707)
!1029 = !DILocation(line: 578, column: 19, scope: !707)
!1030 = !DILocation(line: 582, column: 23, scope: !710)
!1031 = !DILocation(line: 582, column: 14, scope: !710)
!1032 = !DILocation(line: 583, column: 36, scope: !710)
!1033 = !DILocation(line: 583, column: 20, scope: !710)
!1034 = !DILocation(line: 583, column: 18, scope: !710)
!1035 = !DILocation(line: 584, column: 11, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !710, file: !1, line: 584, column: 11)
!1037 = !DILocation(line: 584, column: 23, scope: !1036)
!1038 = !DILocation(line: 584, column: 11, scope: !710)
!1039 = !DILocalVariable(name: "L", arg: 1, scope: !1040, file: !1, line: 431, type: !149)
!1040 = distinct !DISubprogram(name: "checkSizes", scope: !1, file: !1, line: 431, type: !446, isLocal: true, isDefinition: true, scopeLine: 431, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1041)
!1041 = !{!1039, !1042, !1043}
!1042 = !DILocalVariable(name: "g", scope: !1040, file: !1, line: 432, type: !161)
!1043 = !DILocalVariable(name: "newsize", scope: !1044, file: !1, line: 439, type: !29)
!1044 = distinct !DILexicalBlock(scope: !1045, file: !1, line: 438, column: 52)
!1045 = distinct !DILexicalBlock(scope: !1040, file: !1, line: 438, column: 7)
!1046 = !DILocation(line: 431, column: 36, scope: !1040, inlinedAt: !1047)
!1047 = distinct !DILocation(line: 585, column: 9, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1036, file: !1, line: 584, column: 32)
!1049 = !DILocation(line: 432, column: 21, scope: !1040, inlinedAt: !1047)
!1050 = !DILocation(line: 432, column: 17, scope: !1040, inlinedAt: !1047)
!1051 = !DILocation(line: 434, column: 15, scope: !1052, inlinedAt: !1047)
!1052 = distinct !DILexicalBlock(scope: !1040, file: !1, line: 434, column: 7)
!1053 = !DILocation(line: 434, column: 22, scope: !1052, inlinedAt: !1047)
!1054 = !DILocation(line: 434, column: 20, scope: !1052, inlinedAt: !1047)
!1055 = !DILocation(line: 434, column: 53, scope: !1052, inlinedAt: !1047)
!1056 = !DILocation(line: 435, column: 20, scope: !1052, inlinedAt: !1047)
!1057 = !DILocation(line: 434, column: 7, scope: !1040, inlinedAt: !1047)
!1058 = !DILocation(line: 436, column: 5, scope: !1052, inlinedAt: !1047)
!1059 = !DILocation(line: 438, column: 7, scope: !1045, inlinedAt: !1047)
!1060 = !{!389, !384, i64 104}
!1061 = !DILocation(line: 438, column: 33, scope: !1045, inlinedAt: !1047)
!1062 = !DILocation(line: 438, column: 7, scope: !1040, inlinedAt: !1047)
!1063 = !DILocation(line: 439, column: 48, scope: !1044, inlinedAt: !1047)
!1064 = !DILocation(line: 439, column: 12, scope: !1044, inlinedAt: !1047)
!1065 = !DILocation(line: 440, column: 5, scope: !1044, inlinedAt: !1047)
!1066 = !{!389, !378, i64 88}
!1067 = !DILocation(line: 441, column: 3, scope: !1044, inlinedAt: !1047)
!1068 = !DILocation(line: 442, column: 1, scope: !1040, inlinedAt: !1047)
!1069 = !DILocation(line: 586, column: 20, scope: !1048)
!1070 = !DILocation(line: 587, column: 7, scope: !1048)
!1071 = !DILocation(line: 589, column: 31, scope: !710)
!1072 = !DILocation(line: 589, column: 10, scope: !710)
!1073 = !DILocation(line: 589, column: 19, scope: !710)
!1074 = !DILocation(line: 593, column: 14, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1076, file: !1, line: 593, column: 11)
!1076 = distinct !DILexicalBlock(scope: !708, file: !1, line: 592, column: 23)
!1077 = !DILocation(line: 593, column: 11, scope: !1075)
!1078 = !DILocation(line: 593, column: 11, scope: !1076)
!1079 = !DILocation(line: 594, column: 9, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1075, file: !1, line: 593, column: 23)
!1081 = !DILocation(line: 595, column: 16, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1080, file: !1, line: 595, column: 13)
!1083 = !DILocation(line: 595, column: 25, scope: !1082)
!1084 = !DILocation(line: 595, column: 13, scope: !1080)
!1085 = !DILocation(line: 596, column: 23, scope: !1082)
!1086 = !DILocation(line: 596, column: 11, scope: !1082)
!1087 = !DILocation(line: 600, column: 20, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1075, file: !1, line: 599, column: 12)
!1089 = !DILocation(line: 601, column: 12, scope: !1088)
!1090 = !DILocation(line: 601, column: 19, scope: !1088)
!1091 = !DILocation(line: 602, column: 9, scope: !1088)
!1092 = !DILocation(line: 0, scope: !717)
!1093 = !DILocation(line: 607, column: 1, scope: !700)
!1094 = distinct !DISubprogram(name: "luaC_fullgc", scope: !1, file: !1, line: 635, type: !446, isLocal: false, isDefinition: true, scopeLine: 635, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1095)
!1095 = !{!1096, !1097}
!1096 = !DILocalVariable(name: "L", arg: 1, scope: !1094, file: !1, line: 635, type: !149)
!1097 = !DILocalVariable(name: "g", scope: !1094, file: !1, line: 636, type: !161)
!1098 = !DILocation(line: 635, column: 30, scope: !1094)
!1099 = !DILocation(line: 636, column: 21, scope: !1094)
!1100 = !DILocation(line: 636, column: 17, scope: !1094)
!1101 = !DILocation(line: 637, column: 10, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1094, file: !1, line: 637, column: 7)
!1103 = !DILocation(line: 637, column: 18, scope: !1102)
!1104 = !DILocation(line: 637, column: 7, scope: !1094)
!1105 = !DILocation(line: 639, column: 8, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1102, file: !1, line: 637, column: 35)
!1107 = !DILocation(line: 639, column: 19, scope: !1106)
!1108 = !DILocation(line: 640, column: 22, scope: !1106)
!1109 = !DILocation(line: 640, column: 8, scope: !1106)
!1110 = !DILocation(line: 640, column: 16, scope: !1106)
!1111 = !DILocation(line: 642, column: 8, scope: !1106)
!1112 = !DILocation(line: 642, column: 13, scope: !1106)
!1113 = !DILocation(line: 644, column: 8, scope: !1106)
!1114 = !DILocation(line: 644, column: 13, scope: !1106)
!1115 = !DILocation(line: 645, column: 16, scope: !1106)
!1116 = !DILocation(line: 646, column: 3, scope: !1106)
!1117 = !DILocation(line: 649, column: 3, scope: !1094)
!1118 = !DILocation(line: 649, column: 21, scope: !1094)
!1119 = !DILocation(line: 651, column: 5, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1094, file: !1, line: 649, column: 37)
!1121 = !DILocation(line: 649, column: 13, scope: !1094)
!1122 = distinct !{!1122, !1117, !1123}
!1123 = !DILocation(line: 652, column: 3, scope: !1094)
!1124 = !DILocation(line: 653, column: 3, scope: !1094)
!1125 = !DILocation(line: 654, column: 3, scope: !1094)
!1126 = !DILocation(line: 654, column: 13, scope: !1094)
!1127 = !DILocation(line: 654, column: 21, scope: !1094)
!1128 = !DILocation(line: 655, column: 5, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1094, file: !1, line: 654, column: 34)
!1130 = distinct !{!1130, !1125, !1131}
!1131 = !DILocation(line: 656, column: 3, scope: !1094)
!1132 = !DILocation(line: 657, column: 3, scope: !1094)
!1133 = !DILocation(line: 658, column: 1, scope: !1094)
!1134 = distinct !DISubprogram(name: "markroot", scope: !1, file: !1, line: 501, type: !446, isLocal: true, isDefinition: true, scopeLine: 501, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1135)
!1135 = !{!1136, !1137}
!1136 = !DILocalVariable(name: "L", arg: 1, scope: !1134, file: !1, line: 501, type: !149)
!1137 = !DILocalVariable(name: "g", scope: !1134, file: !1, line: 502, type: !161)
!1138 = !DILocation(line: 501, column: 34, scope: !1134)
!1139 = !DILocation(line: 502, column: 21, scope: !1134)
!1140 = !DILocation(line: 502, column: 17, scope: !1134)
!1141 = !DILocation(line: 503, column: 6, scope: !1134)
!1142 = !DILocation(line: 503, column: 11, scope: !1134)
!1143 = !DILocation(line: 505, column: 6, scope: !1134)
!1144 = !DILocation(line: 505, column: 11, scope: !1134)
!1145 = !DILocation(line: 506, column: 3, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1147, file: !1, line: 506, column: 3)
!1147 = distinct !DILexicalBlock(scope: !1134, file: !1, line: 506, column: 3)
!1148 = !DILocation(line: 506, column: 3, scope: !1147)
!1149 = !DILocation(line: 508, column: 3, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1151, file: !1, line: 508, column: 3)
!1151 = distinct !DILexicalBlock(scope: !1134, file: !1, line: 508, column: 3)
!1152 = !{!377, !381, i64 128}
!1153 = !DILocation(line: 508, column: 3, scope: !1151)
!1154 = !DILocation(line: 509, column: 3, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1156, file: !1, line: 509, column: 3)
!1156 = distinct !DILexicalBlock(scope: !1134, file: !1, line: 509, column: 3)
!1157 = !{!389, !381, i64 168}
!1158 = !DILocation(line: 509, column: 3, scope: !1156)
!1159 = !DILocation(line: 493, column: 35, scope: !792, inlinedAt: !1160)
!1160 = distinct !DILocation(line: 510, column: 3, scope: !1134)
!1161 = !DILocation(line: 494, column: 7, scope: !792, inlinedAt: !1160)
!1162 = !DILocation(line: 495, column: 8, scope: !799, inlinedAt: !1160)
!1163 = !DILocation(line: 495, column: 3, scope: !799, inlinedAt: !1160)
!1164 = !DILocation(line: 496, column: 9, scope: !802, inlinedAt: !1160)
!1165 = !DILocation(line: 496, column: 9, scope: !803, inlinedAt: !1160)
!1166 = !DILocation(line: 496, column: 19, scope: !806, inlinedAt: !1160)
!1167 = !DILocation(line: 496, column: 19, scope: !807, inlinedAt: !1160)
!1168 = !DILocation(line: 495, column: 26, scope: !803, inlinedAt: !1160)
!1169 = !DILocation(line: 495, column: 3, scope: !803, inlinedAt: !1160)
!1170 = !DILocation(line: 495, column: 14, scope: !803, inlinedAt: !1160)
!1171 = !DILocation(line: 497, column: 1, scope: !792, inlinedAt: !1160)
!1172 = !DILocation(line: 511, column: 6, scope: !1134)
!1173 = !DILocation(line: 511, column: 14, scope: !1134)
!1174 = !DILocation(line: 512, column: 1, scope: !1134)
!1175 = distinct !DISubprogram(name: "luaC_barrierf", scope: !1, file: !1, line: 661, type: !1176, isLocal: false, isDefinition: true, scopeLine: 661, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1178)
!1176 = !DISubroutineType(types: !1177)
!1177 = !{null, !149, !36, !36}
!1178 = !{!1179, !1180, !1181, !1182}
!1179 = !DILocalVariable(name: "L", arg: 1, scope: !1175, file: !1, line: 661, type: !149)
!1180 = !DILocalVariable(name: "o", arg: 2, scope: !1175, file: !1, line: 661, type: !36)
!1181 = !DILocalVariable(name: "v", arg: 3, scope: !1175, file: !1, line: 661, type: !36)
!1182 = !DILocalVariable(name: "g", scope: !1175, file: !1, line: 662, type: !161)
!1183 = !DILocation(line: 661, column: 32, scope: !1175)
!1184 = !DILocation(line: 661, column: 45, scope: !1175)
!1185 = !DILocation(line: 661, column: 58, scope: !1175)
!1186 = !DILocation(line: 662, column: 21, scope: !1175)
!1187 = !DILocation(line: 662, column: 17, scope: !1175)
!1188 = !DILocation(line: 667, column: 10, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1175, file: !1, line: 667, column: 7)
!1190 = !DILocation(line: 667, column: 18, scope: !1189)
!1191 = !DILocation(line: 667, column: 7, scope: !1175)
!1192 = !DILocation(line: 668, column: 5, scope: !1189)
!1193 = !DILocation(line: 670, column: 5, scope: !1189)
!1194 = !DILocation(line: 671, column: 1, scope: !1175)
!1195 = distinct !DISubprogram(name: "reallymarkobject", scope: !1, file: !1, line: 69, type: !1196, isLocal: true, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1198)
!1196 = !DISubroutineType(types: !1197)
!1197 = !{null, !161, !36}
!1198 = !{!1199, !1200, !1201, !1204}
!1199 = !DILocalVariable(name: "g", arg: 1, scope: !1195, file: !1, line: 69, type: !161)
!1200 = !DILocalVariable(name: "o", arg: 2, scope: !1195, file: !1, line: 69, type: !36)
!1201 = !DILocalVariable(name: "mt", scope: !1202, file: !1, line: 77, type: !877)
!1202 = distinct !DILexicalBlock(scope: !1203, file: !1, line: 76, column: 25)
!1203 = distinct !DILexicalBlock(scope: !1195, file: !1, line: 72, column: 22)
!1204 = !DILocalVariable(name: "uv", scope: !1205, file: !1, line: 84, type: !354)
!1205 = distinct !DILexicalBlock(scope: !1203, file: !1, line: 83, column: 22)
!1206 = !DILocation(line: 69, column: 45, scope: !1195)
!1207 = !DILocation(line: 69, column: 58, scope: !1195)
!1208 = !DILocation(line: 71, column: 3, scope: !1195)
!1209 = !DILocation(line: 72, column: 18, scope: !1195)
!1210 = !DILocation(line: 72, column: 3, scope: !1195)
!1211 = !DILocation(line: 77, column: 29, scope: !1202)
!1212 = !DILocation(line: 77, column: 14, scope: !1202)
!1213 = !DILocation(line: 78, column: 7, scope: !1202)
!1214 = !DILocation(line: 79, column: 11, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1202, file: !1, line: 79, column: 11)
!1216 = !DILocation(line: 79, column: 11, scope: !1202)
!1217 = !DILocation(line: 79, column: 15, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1219, file: !1, line: 79, column: 15)
!1219 = distinct !DILexicalBlock(scope: !1215, file: !1, line: 79, column: 15)
!1220 = !DILocation(line: 79, column: 15, scope: !1219)
!1221 = !DILocation(line: 80, column: 7, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1223, file: !1, line: 80, column: 7)
!1223 = distinct !DILexicalBlock(scope: !1202, file: !1, line: 80, column: 7)
!1224 = !DILocation(line: 80, column: 7, scope: !1223)
!1225 = !DILocation(line: 84, column: 14, scope: !1205)
!1226 = !DILocation(line: 85, column: 7, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1228, file: !1, line: 85, column: 7)
!1228 = distinct !DILexicalBlock(scope: !1205, file: !1, line: 85, column: 7)
!1229 = !DILocation(line: 85, column: 7, scope: !1228)
!1230 = !DILocation(line: 86, column: 15, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1205, file: !1, line: 86, column: 11)
!1232 = !DILocation(line: 86, column: 25, scope: !1231)
!1233 = !DILocation(line: 86, column: 27, scope: !1231)
!1234 = !DILocation(line: 86, column: 17, scope: !1231)
!1235 = !DILocation(line: 86, column: 11, scope: !1205)
!1236 = !DILocation(line: 87, column: 9, scope: !1231)
!1237 = !DILocation(line: 91, column: 32, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1203, file: !1, line: 90, column: 25)
!1239 = !DILocation(line: 91, column: 20, scope: !1238)
!1240 = !DILocation(line: 91, column: 27, scope: !1238)
!1241 = !DILocation(line: 92, column: 15, scope: !1238)
!1242 = !DILocation(line: 93, column: 7, scope: !1238)
!1243 = !DILocation(line: 96, column: 29, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1203, file: !1, line: 95, column: 22)
!1245 = !DILocation(line: 96, column: 17, scope: !1244)
!1246 = !DILocation(line: 96, column: 24, scope: !1244)
!1247 = !DILocation(line: 97, column: 15, scope: !1244)
!1248 = !DILocation(line: 98, column: 7, scope: !1244)
!1249 = !DILocation(line: 101, column: 30, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1203, file: !1, line: 100, column: 23)
!1251 = !DILocation(line: 101, column: 18, scope: !1250)
!1252 = !DILocation(line: 101, column: 25, scope: !1250)
!1253 = !DILocation(line: 102, column: 15, scope: !1250)
!1254 = !DILocation(line: 103, column: 7, scope: !1250)
!1255 = !DILocation(line: 106, column: 29, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1203, file: !1, line: 105, column: 22)
!1257 = !DILocation(line: 106, column: 17, scope: !1256)
!1258 = !DILocation(line: 106, column: 24, scope: !1256)
!1259 = !DILocation(line: 107, column: 15, scope: !1256)
!1260 = !DILocation(line: 108, column: 7, scope: !1256)
!1261 = !DILocation(line: 112, column: 1, scope: !1195)
!1262 = distinct !DISubprogram(name: "luaC_barrierback", scope: !1, file: !1, line: 674, type: !1263, isLocal: false, isDefinition: true, scopeLine: 674, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1265)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{null, !149, !877}
!1265 = !{!1266, !1267, !1268, !1269}
!1266 = !DILocalVariable(name: "L", arg: 1, scope: !1262, file: !1, line: 674, type: !149)
!1267 = !DILocalVariable(name: "t", arg: 2, scope: !1262, file: !1, line: 674, type: !877)
!1268 = !DILocalVariable(name: "g", scope: !1262, file: !1, line: 675, type: !161)
!1269 = !DILocalVariable(name: "o", scope: !1262, file: !1, line: 676, type: !36)
!1270 = !DILocation(line: 674, column: 35, scope: !1262)
!1271 = !DILocation(line: 674, column: 45, scope: !1262)
!1272 = !DILocation(line: 675, column: 21, scope: !1262)
!1273 = !DILocation(line: 675, column: 17, scope: !1262)
!1274 = !DILocation(line: 676, column: 13, scope: !1262)
!1275 = !DILocation(line: 679, column: 3, scope: !1262)
!1276 = !DILocation(line: 680, column: 18, scope: !1262)
!1277 = !DILocation(line: 680, column: 6, scope: !1262)
!1278 = !DILocation(line: 680, column: 13, scope: !1262)
!1279 = !DILocation(line: 681, column: 16, scope: !1262)
!1280 = !DILocation(line: 682, column: 1, scope: !1262)
!1281 = distinct !DISubprogram(name: "luaC_link", scope: !1, file: !1, line: 685, type: !1282, isLocal: false, isDefinition: true, scopeLine: 685, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1284)
!1282 = !DISubroutineType(types: !1283)
!1283 = !{null, !149, !36, !34}
!1284 = !{!1285, !1286, !1287, !1288}
!1285 = !DILocalVariable(name: "L", arg: 1, scope: !1281, file: !1, line: 685, type: !149)
!1286 = !DILocalVariable(name: "o", arg: 2, scope: !1281, file: !1, line: 685, type: !36)
!1287 = !DILocalVariable(name: "tt", arg: 3, scope: !1281, file: !1, line: 685, type: !34)
!1288 = !DILocalVariable(name: "g", scope: !1281, file: !1, line: 686, type: !161)
!1289 = !DILocation(line: 685, column: 28, scope: !1281)
!1290 = !DILocation(line: 685, column: 41, scope: !1281)
!1291 = !DILocation(line: 685, column: 52, scope: !1281)
!1292 = !DILocation(line: 686, column: 21, scope: !1281)
!1293 = !DILocation(line: 686, column: 17, scope: !1281)
!1294 = !DILocation(line: 687, column: 20, scope: !1281)
!1295 = !DILocation(line: 687, column: 15, scope: !1281)
!1296 = !DILocation(line: 688, column: 13, scope: !1281)
!1297 = !DILocation(line: 689, column: 19, scope: !1281)
!1298 = !DILocation(line: 689, column: 10, scope: !1281)
!1299 = !DILocation(line: 689, column: 17, scope: !1281)
!1300 = !DILocation(line: 690, column: 10, scope: !1281)
!1301 = !DILocation(line: 690, column: 13, scope: !1281)
!1302 = !DILocation(line: 691, column: 1, scope: !1281)
!1303 = distinct !DISubprogram(name: "luaC_linkupval", scope: !1, file: !1, line: 694, type: !1304, isLocal: false, isDefinition: true, scopeLine: 694, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1306)
!1304 = !DISubroutineType(types: !1305)
!1305 = !{null, !149, !354}
!1306 = !{!1307, !1308, !1309, !1310}
!1307 = !DILocalVariable(name: "L", arg: 1, scope: !1303, file: !1, line: 694, type: !149)
!1308 = !DILocalVariable(name: "uv", arg: 2, scope: !1303, file: !1, line: 694, type: !354)
!1309 = !DILocalVariable(name: "g", scope: !1303, file: !1, line: 695, type: !161)
!1310 = !DILocalVariable(name: "o", scope: !1303, file: !1, line: 696, type: !36)
!1311 = !DILocation(line: 694, column: 33, scope: !1303)
!1312 = !DILocation(line: 694, column: 43, scope: !1303)
!1313 = !DILocation(line: 695, column: 21, scope: !1303)
!1314 = !DILocation(line: 695, column: 17, scope: !1303)
!1315 = !DILocation(line: 696, column: 13, scope: !1303)
!1316 = !DILocation(line: 697, column: 20, scope: !1303)
!1317 = !DILocation(line: 697, column: 15, scope: !1303)
!1318 = !DILocation(line: 698, column: 13, scope: !1303)
!1319 = !DILocation(line: 699, column: 7, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1303, file: !1, line: 699, column: 7)
!1321 = !DILocation(line: 699, column: 7, scope: !1303)
!1322 = !DILocation(line: 700, column: 12, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1324, file: !1, line: 700, column: 9)
!1324 = distinct !DILexicalBlock(scope: !1320, file: !1, line: 699, column: 18)
!1325 = !DILocation(line: 700, column: 20, scope: !1323)
!1326 = !DILocation(line: 700, column: 9, scope: !1324)
!1327 = !DILocation(line: 701, column: 7, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1323, file: !1, line: 700, column: 37)
!1329 = !DILocation(line: 702, column: 7, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1331, file: !1, line: 702, column: 7)
!1331 = distinct !DILexicalBlock(scope: !1328, file: !1, line: 702, column: 7)
!1332 = !DILocation(line: 702, column: 7, scope: !1331)
!1333 = !DILocation(line: 661, column: 32, scope: !1175, inlinedAt: !1334)
!1334 = distinct !DILocation(line: 702, column: 7, scope: !1330)
!1335 = !DILocation(line: 661, column: 45, scope: !1175, inlinedAt: !1334)
!1336 = !DILocation(line: 661, column: 58, scope: !1175, inlinedAt: !1334)
!1337 = !DILocation(line: 662, column: 21, scope: !1175, inlinedAt: !1334)
!1338 = !DILocation(line: 662, column: 17, scope: !1175, inlinedAt: !1334)
!1339 = !DILocation(line: 667, column: 10, scope: !1189, inlinedAt: !1334)
!1340 = !DILocation(line: 667, column: 18, scope: !1189, inlinedAt: !1334)
!1341 = !DILocation(line: 667, column: 7, scope: !1175, inlinedAt: !1334)
!1342 = !DILocation(line: 668, column: 5, scope: !1189, inlinedAt: !1334)
!1343 = !DILocation(line: 670, column: 5, scope: !1189, inlinedAt: !1334)
!1344 = !DILocation(line: 671, column: 1, scope: !1175, inlinedAt: !1334)
!1345 = !DILocation(line: 705, column: 7, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1323, file: !1, line: 704, column: 10)
!1347 = !DILocation(line: 709, column: 1, scope: !1303)
!1348 = distinct !DISubprogram(name: "propagatemark", scope: !1, file: !1, line: 277, type: !1349, isLocal: true, isDefinition: true, scopeLine: 277, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1351)
!1349 = !DISubroutineType(types: !1350)
!1350 = !{!650, !161}
!1351 = !{!1352, !1353, !1354, !1357, !1361, !1363}
!1352 = !DILocalVariable(name: "g", arg: 1, scope: !1348, file: !1, line: 277, type: !161)
!1353 = !DILocalVariable(name: "o", scope: !1348, file: !1, line: 278, type: !36)
!1354 = !DILocalVariable(name: "h", scope: !1355, file: !1, line: 283, type: !877)
!1355 = distinct !DILexicalBlock(scope: !1356, file: !1, line: 282, column: 22)
!1356 = distinct !DILexicalBlock(scope: !1348, file: !1, line: 281, column: 22)
!1357 = !DILocalVariable(name: "cl", scope: !1358, file: !1, line: 291, type: !1359)
!1358 = distinct !DILexicalBlock(scope: !1356, file: !1, line: 290, column: 25)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = !DIDerivedType(tag: DW_TAG_typedef, name: "Closure", file: !38, line: 312, baseType: !131)
!1361 = !DILocalVariable(name: "th", scope: !1362, file: !1, line: 298, type: !149)
!1362 = distinct !DILexicalBlock(scope: !1356, file: !1, line: 297, column: 23)
!1363 = !DILocalVariable(name: "p", scope: !1364, file: !1, line: 308, type: !1365)
!1364 = distinct !DILexicalBlock(scope: !1356, file: !1, line: 307, column: 22)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = !DIDerivedType(tag: DW_TAG_typedef, name: "Proto", file: !38, line: 253, baseType: !317)
!1367 = !DILocation(line: 277, column: 43, scope: !1348)
!1368 = !DILocation(line: 278, column: 20, scope: !1348)
!1369 = !DILocation(line: 278, column: 13, scope: !1348)
!1370 = !DILocation(line: 280, column: 3, scope: !1348)
!1371 = !DILocation(line: 281, column: 18, scope: !1348)
!1372 = !DILocation(line: 281, column: 3, scope: !1348)
!1373 = !DILocation(line: 283, column: 18, scope: !1355)
!1374 = !DILocation(line: 283, column: 14, scope: !1355)
!1375 = !DILocation(line: 284, column: 20, scope: !1355)
!1376 = !DILocation(line: 284, column: 15, scope: !1355)
!1377 = !DILocalVariable(name: "g", arg: 1, scope: !1378, file: !1, line: 158, type: !161)
!1378 = distinct !DISubprogram(name: "traversetable", scope: !1, file: !1, line: 158, type: !1379, isLocal: true, isDefinition: true, scopeLine: 158, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1381)
!1379 = !DISubroutineType(types: !1380)
!1380 = !{!105, !161, !877}
!1381 = !{!1377, !1382, !1383, !1384, !1385, !1386, !1387}
!1382 = !DILocalVariable(name: "h", arg: 2, scope: !1378, file: !1, line: 158, type: !877)
!1383 = !DILocalVariable(name: "i", scope: !1378, file: !1, line: 159, type: !105)
!1384 = !DILocalVariable(name: "weakkey", scope: !1378, file: !1, line: 160, type: !105)
!1385 = !DILocalVariable(name: "weakvalue", scope: !1378, file: !1, line: 161, type: !105)
!1386 = !DILocalVariable(name: "mode", scope: !1378, file: !1, line: 162, type: !467)
!1387 = !DILocalVariable(name: "n", scope: !1388, file: !1, line: 185, type: !108)
!1388 = distinct !DILexicalBlock(scope: !1378, file: !1, line: 184, column: 15)
!1389 = !DILocation(line: 158, column: 41, scope: !1378, inlinedAt: !1390)
!1390 = distinct !DILocation(line: 285, column: 11, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1355, file: !1, line: 285, column: 11)
!1392 = !DILocation(line: 158, column: 51, scope: !1378, inlinedAt: !1390)
!1393 = !DILocation(line: 160, column: 7, scope: !1378, inlinedAt: !1390)
!1394 = !DILocation(line: 161, column: 7, scope: !1378, inlinedAt: !1390)
!1395 = !DILocation(line: 163, column: 10, scope: !1396, inlinedAt: !1390)
!1396 = distinct !DILexicalBlock(scope: !1378, file: !1, line: 163, column: 7)
!1397 = !{!412, !378, i64 16}
!1398 = !DILocation(line: 163, column: 7, scope: !1396, inlinedAt: !1390)
!1399 = !DILocation(line: 163, column: 7, scope: !1378, inlinedAt: !1390)
!1400 = !DILocation(line: 165, column: 10, scope: !1378, inlinedAt: !1390)
!1401 = !DILocation(line: 164, column: 5, scope: !1402, inlinedAt: !1390)
!1402 = distinct !DILexicalBlock(scope: !1403, file: !1, line: 164, column: 5)
!1403 = distinct !DILexicalBlock(scope: !1396, file: !1, line: 164, column: 5)
!1404 = !DILocation(line: 164, column: 5, scope: !1403, inlinedAt: !1390)
!1405 = !DILocation(line: 166, column: 12, scope: !1406, inlinedAt: !1390)
!1406 = distinct !DILexicalBlock(scope: !1378, file: !1, line: 166, column: 7)
!1407 = !DILocation(line: 162, column: 17, scope: !1378, inlinedAt: !1390)
!1408 = !DILocation(line: 166, column: 7, scope: !1406, inlinedAt: !1390)
!1409 = !DILocation(line: 166, column: 15, scope: !1406, inlinedAt: !1390)
!1410 = !DILocation(line: 166, column: 7, scope: !1378, inlinedAt: !1390)
!1411 = !DILocation(line: 167, column: 23, scope: !1412, inlinedAt: !1390)
!1412 = distinct !DILexicalBlock(scope: !1406, file: !1, line: 166, column: 33)
!1413 = !DILocation(line: 167, column: 16, scope: !1412, inlinedAt: !1390)
!1414 = !DILocation(line: 167, column: 42, scope: !1412, inlinedAt: !1390)
!1415 = !DILocation(line: 168, column: 25, scope: !1412, inlinedAt: !1390)
!1416 = !DILocation(line: 168, column: 18, scope: !1412, inlinedAt: !1390)
!1417 = !DILocation(line: 168, column: 44, scope: !1412, inlinedAt: !1390)
!1418 = !DILocation(line: 169, column: 17, scope: !1419, inlinedAt: !1390)
!1419 = distinct !DILexicalBlock(scope: !1412, file: !1, line: 169, column: 9)
!1420 = !DILocation(line: 170, column: 17, scope: !1421, inlinedAt: !1390)
!1421 = distinct !DILexicalBlock(scope: !1419, file: !1, line: 169, column: 31)
!1422 = !DILocation(line: 171, column: 20, scope: !1421, inlinedAt: !1390)
!1423 = !DILocation(line: 171, column: 17, scope: !1421, inlinedAt: !1390)
!1424 = !DILocation(line: 173, column: 22, scope: !1421, inlinedAt: !1390)
!1425 = !DILocation(line: 173, column: 17, scope: !1421, inlinedAt: !1390)
!1426 = !DILocation(line: 174, column: 15, scope: !1421, inlinedAt: !1390)
!1427 = !DILocation(line: 175, column: 5, scope: !1421, inlinedAt: !1390)
!1428 = !DILocation(line: 177, column: 15, scope: !1429, inlinedAt: !1390)
!1429 = distinct !DILexicalBlock(scope: !1378, file: !1, line: 177, column: 7)
!1430 = !DILocation(line: 0, scope: !1378, inlinedAt: !1390)
!1431 = !DILocation(line: 178, column: 7, scope: !1378, inlinedAt: !1390)
!1432 = !DILocation(line: 196, column: 1, scope: !1378, inlinedAt: !1390)
!1433 = !DILocation(line: 285, column: 11, scope: !1355)
!1434 = !DILocation(line: 288, column: 45, scope: !1355)
!1435 = !DILocation(line: 179, column: 12, scope: !1436, inlinedAt: !1390)
!1436 = distinct !DILexicalBlock(scope: !1437, file: !1, line: 178, column: 19)
!1437 = distinct !DILexicalBlock(scope: !1378, file: !1, line: 178, column: 7)
!1438 = !DILocation(line: 159, column: 7, scope: !1378, inlinedAt: !1390)
!1439 = !DILocation(line: 180, column: 5, scope: !1436, inlinedAt: !1390)
!1440 = !DILocation(line: 180, column: 13, scope: !1436, inlinedAt: !1390)
!1441 = !DILocation(line: 181, column: 7, scope: !1442, inlinedAt: !1390)
!1442 = distinct !DILexicalBlock(scope: !1443, file: !1, line: 181, column: 7)
!1443 = distinct !DILexicalBlock(scope: !1436, file: !1, line: 181, column: 7)
!1444 = !DILocation(line: 181, column: 7, scope: !1443, inlinedAt: !1390)
!1445 = distinct !{!1445, !1446, !1447}
!1446 = !DILocation(line: 180, column: 5, scope: !1436)
!1447 = !DILocation(line: 181, column: 7, scope: !1436)
!1448 = !DILocation(line: 183, column: 7, scope: !1378, inlinedAt: !1390)
!1449 = !DILocation(line: 184, column: 3, scope: !1378, inlinedAt: !1390)
!1450 = !DILocation(line: 184, column: 11, scope: !1378, inlinedAt: !1390)
!1451 = !DILocation(line: 185, column: 15, scope: !1388, inlinedAt: !1390)
!1452 = !DILocation(line: 187, column: 9, scope: !1453, inlinedAt: !1390)
!1453 = distinct !DILexicalBlock(scope: !1388, file: !1, line: 187, column: 9)
!1454 = !DILocation(line: 187, column: 9, scope: !1388, inlinedAt: !1390)
!1455 = !DILocation(line: 64, column: 7, scope: !980, inlinedAt: !1456)
!1456 = distinct !DILocation(line: 188, column: 7, scope: !1453, inlinedAt: !1390)
!1457 = !DILocation(line: 64, column: 7, scope: !981, inlinedAt: !1456)
!1458 = !DILocation(line: 65, column: 5, scope: !980, inlinedAt: !1456)
!1459 = !DILocation(line: 66, column: 1, scope: !981, inlinedAt: !1456)
!1460 = !DILocation(line: 188, column: 7, scope: !1453, inlinedAt: !1390)
!1461 = !DILocation(line: 191, column: 11, scope: !1462, inlinedAt: !1390)
!1462 = distinct !DILexicalBlock(scope: !1453, file: !1, line: 189, column: 10)
!1463 = !DILocation(line: 191, column: 21, scope: !1464, inlinedAt: !1390)
!1464 = distinct !DILexicalBlock(scope: !1465, file: !1, line: 191, column: 21)
!1465 = distinct !DILexicalBlock(scope: !1466, file: !1, line: 191, column: 21)
!1466 = distinct !DILexicalBlock(scope: !1462, file: !1, line: 191, column: 11)
!1467 = !DILocation(line: 191, column: 21, scope: !1465, inlinedAt: !1390)
!1468 = !DILocation(line: 192, column: 11, scope: !1462, inlinedAt: !1390)
!1469 = !DILocation(line: 192, column: 23, scope: !1470, inlinedAt: !1390)
!1470 = distinct !DILexicalBlock(scope: !1471, file: !1, line: 192, column: 23)
!1471 = distinct !DILexicalBlock(scope: !1472, file: !1, line: 192, column: 23)
!1472 = distinct !DILexicalBlock(scope: !1462, file: !1, line: 192, column: 11)
!1473 = !DILocation(line: 192, column: 23, scope: !1471, inlinedAt: !1390)
!1474 = distinct !{!1474, !1475, !1476}
!1475 = !DILocation(line: 184, column: 3, scope: !1378)
!1476 = !DILocation(line: 194, column: 3, scope: !1378)
!1477 = !DILocation(line: 195, column: 18, scope: !1378, inlinedAt: !1390)
!1478 = !DILocation(line: 195, column: 3, scope: !1378, inlinedAt: !1390)
!1479 = !DILocation(line: 285, column: 11, scope: !1391)
!1480 = !DILocation(line: 286, column: 9, scope: !1391)
!1481 = !DILocation(line: 287, column: 50, scope: !1355)
!1482 = !DILocation(line: 287, column: 47, scope: !1355)
!1483 = !DILocation(line: 287, column: 45, scope: !1355)
!1484 = !DILocation(line: 287, column: 28, scope: !1355)
!1485 = !DILocation(line: 288, column: 43, scope: !1355)
!1486 = !DILocation(line: 287, column: 60, scope: !1355)
!1487 = !DILocation(line: 291, column: 21, scope: !1358)
!1488 = !DILocation(line: 291, column: 16, scope: !1358)
!1489 = !DILocation(line: 292, column: 23, scope: !1358)
!1490 = !DILocation(line: 292, column: 15, scope: !1358)
!1491 = !DILocalVariable(name: "g", arg: 1, scope: !1492, file: !1, line: 224, type: !161)
!1492 = distinct !DISubprogram(name: "traverseclosure", scope: !1, file: !1, line: 224, type: !1493, isLocal: true, isDefinition: true, scopeLine: 224, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1495)
!1493 = !DISubroutineType(types: !1494)
!1494 = !{null, !161, !1359}
!1495 = !{!1491, !1496, !1497, !1500}
!1496 = !DILocalVariable(name: "cl", arg: 2, scope: !1492, file: !1, line: 224, type: !1359)
!1497 = !DILocalVariable(name: "i", scope: !1498, file: !1, line: 227, type: !105)
!1498 = distinct !DILexicalBlock(scope: !1499, file: !1, line: 226, column: 18)
!1499 = distinct !DILexicalBlock(scope: !1492, file: !1, line: 226, column: 7)
!1500 = !DILocalVariable(name: "i", scope: !1501, file: !1, line: 232, type: !105)
!1501 = distinct !DILexicalBlock(scope: !1499, file: !1, line: 231, column: 8)
!1502 = !DILocation(line: 224, column: 44, scope: !1492, inlinedAt: !1503)
!1503 = distinct !DILocation(line: 293, column: 7, scope: !1358)
!1504 = !DILocation(line: 224, column: 56, scope: !1492, inlinedAt: !1503)
!1505 = !DILocation(line: 225, column: 3, scope: !1506, inlinedAt: !1503)
!1506 = distinct !DILexicalBlock(scope: !1507, file: !1, line: 225, column: 3)
!1507 = distinct !DILexicalBlock(scope: !1492, file: !1, line: 225, column: 3)
!1508 = !DILocation(line: 225, column: 3, scope: !1507, inlinedAt: !1503)
!1509 = !DILocation(line: 226, column: 13, scope: !1499, inlinedAt: !1503)
!1510 = !DILocation(line: 226, column: 7, scope: !1499, inlinedAt: !1503)
!1511 = !DILocation(line: 226, column: 7, scope: !1492, inlinedAt: !1503)
!1512 = !DILocation(line: 227, column: 9, scope: !1498, inlinedAt: !1503)
!1513 = !DILocation(line: 228, column: 10, scope: !1514, inlinedAt: !1503)
!1514 = distinct !DILexicalBlock(scope: !1498, file: !1, line: 228, column: 5)
!1515 = !DILocation(line: 228, column: 23, scope: !1516, inlinedAt: !1503)
!1516 = distinct !DILexicalBlock(scope: !1514, file: !1, line: 228, column: 5)
!1517 = !DILocation(line: 228, column: 16, scope: !1516, inlinedAt: !1503)
!1518 = !DILocation(line: 228, column: 5, scope: !1514, inlinedAt: !1503)
!1519 = !DILocation(line: 229, column: 7, scope: !1520, inlinedAt: !1503)
!1520 = distinct !DILexicalBlock(scope: !1521, file: !1, line: 229, column: 7)
!1521 = distinct !DILexicalBlock(scope: !1516, file: !1, line: 229, column: 7)
!1522 = !DILocation(line: 229, column: 7, scope: !1521, inlinedAt: !1503)
!1523 = !DILocation(line: 228, column: 35, scope: !1516, inlinedAt: !1503)
!1524 = !DILocation(line: 228, column: 5, scope: !1516, inlinedAt: !1503)
!1525 = distinct !{!1525, !1526, !1527}
!1526 = !DILocation(line: 228, column: 5, scope: !1514)
!1527 = !DILocation(line: 229, column: 7, scope: !1514)
!1528 = !DILocation(line: 234, column: 5, scope: !1529, inlinedAt: !1503)
!1529 = distinct !DILexicalBlock(scope: !1530, file: !1, line: 234, column: 5)
!1530 = distinct !DILexicalBlock(scope: !1501, file: !1, line: 234, column: 5)
!1531 = !DILocation(line: 234, column: 5, scope: !1530, inlinedAt: !1503)
!1532 = !DILocation(line: 232, column: 9, scope: !1501, inlinedAt: !1503)
!1533 = !DILocation(line: 235, column: 10, scope: !1534, inlinedAt: !1503)
!1534 = distinct !DILexicalBlock(scope: !1501, file: !1, line: 235, column: 5)
!1535 = !DILocation(line: 235, column: 23, scope: !1536, inlinedAt: !1503)
!1536 = distinct !DILexicalBlock(scope: !1534, file: !1, line: 235, column: 5)
!1537 = !DILocation(line: 235, column: 16, scope: !1536, inlinedAt: !1503)
!1538 = !DILocation(line: 235, column: 5, scope: !1534, inlinedAt: !1503)
!1539 = !DILocation(line: 236, column: 7, scope: !1540, inlinedAt: !1503)
!1540 = distinct !DILexicalBlock(scope: !1541, file: !1, line: 236, column: 7)
!1541 = distinct !DILexicalBlock(scope: !1536, file: !1, line: 236, column: 7)
!1542 = !DILocation(line: 236, column: 7, scope: !1541, inlinedAt: !1503)
!1543 = !DILocation(line: 235, column: 35, scope: !1536, inlinedAt: !1503)
!1544 = !DILocation(line: 235, column: 5, scope: !1536, inlinedAt: !1503)
!1545 = distinct !{!1545, !1546, !1547}
!1546 = !DILocation(line: 235, column: 5, scope: !1534)
!1547 = !DILocation(line: 236, column: 7, scope: !1534)
!1548 = !DILocation(line: 238, column: 1, scope: !1492, inlinedAt: !1503)
!1549 = !DILocation(line: 294, column: 21, scope: !1358)
!1550 = !DILocation(line: 294, column: 14, scope: !1358)
!1551 = !DILocation(line: 0, scope: !1358)
!1552 = !DILocation(line: 298, column: 23, scope: !1362)
!1553 = !DILocation(line: 298, column: 18, scope: !1362)
!1554 = !DILocation(line: 299, column: 21, scope: !1362)
!1555 = !{!377, !378, i64 160}
!1556 = !DILocation(line: 299, column: 15, scope: !1362)
!1557 = !DILocation(line: 300, column: 23, scope: !1362)
!1558 = !DILocation(line: 300, column: 18, scope: !1362)
!1559 = !DILocation(line: 301, column: 20, scope: !1362)
!1560 = !DILocation(line: 302, column: 7, scope: !1362)
!1561 = !DILocalVariable(name: "g", arg: 1, scope: !1562, file: !1, line: 256, type: !161)
!1562 = distinct !DISubprogram(name: "traversestack", scope: !1, file: !1, line: 256, type: !1563, isLocal: true, isDefinition: true, scopeLine: 256, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1565)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{null, !161, !149}
!1565 = !{!1561, !1566, !1567, !1568, !1569}
!1566 = !DILocalVariable(name: "l", arg: 2, scope: !1562, file: !1, line: 256, type: !149)
!1567 = !DILocalVariable(name: "o", scope: !1562, file: !1, line: 257, type: !158)
!1568 = !DILocalVariable(name: "lim", scope: !1562, file: !1, line: 257, type: !158)
!1569 = !DILocalVariable(name: "ci", scope: !1562, file: !1, line: 258, type: !238)
!1570 = !DILocation(line: 256, column: 42, scope: !1562, inlinedAt: !1571)
!1571 = distinct !DILocation(line: 303, column: 7, scope: !1362)
!1572 = !DILocation(line: 256, column: 56, scope: !1562, inlinedAt: !1571)
!1573 = !DILocation(line: 259, column: 3, scope: !1574, inlinedAt: !1571)
!1574 = distinct !DILexicalBlock(scope: !1575, file: !1, line: 259, column: 3)
!1575 = distinct !DILexicalBlock(scope: !1562, file: !1, line: 259, column: 3)
!1576 = !DILocation(line: 259, column: 3, scope: !1575, inlinedAt: !1571)
!1577 = !DILocation(line: 260, column: 12, scope: !1562, inlinedAt: !1571)
!1578 = !DILocation(line: 257, column: 12, scope: !1562, inlinedAt: !1571)
!1579 = !DILocation(line: 261, column: 16, scope: !1580, inlinedAt: !1571)
!1580 = distinct !DILexicalBlock(scope: !1562, file: !1, line: 261, column: 3)
!1581 = !{!377, !378, i64 80}
!1582 = !DILocation(line: 258, column: 13, scope: !1562, inlinedAt: !1571)
!1583 = !DILocation(line: 261, column: 8, scope: !1580, inlinedAt: !1571)
!1584 = !DILocation(line: 261, column: 34, scope: !1585, inlinedAt: !1571)
!1585 = distinct !DILexicalBlock(scope: !1580, file: !1, line: 261, column: 3)
!1586 = !{!377, !378, i64 40}
!1587 = !DILocation(line: 261, column: 28, scope: !1585, inlinedAt: !1571)
!1588 = !DILocation(line: 261, column: 3, scope: !1580, inlinedAt: !1571)
!1589 = !DILocation(line: 263, column: 19, scope: !1590, inlinedAt: !1571)
!1590 = distinct !DILexicalBlock(scope: !1591, file: !1, line: 263, column: 9)
!1591 = distinct !DILexicalBlock(scope: !1585, file: !1, line: 261, column: 44)
!1592 = !{!1593, !378, i64 16}
!1593 = !{!"CallInfo", !378, i64 0, !378, i64 8, !378, i64 16, !378, i64 24, !381, i64 32, !381, i64 36}
!1594 = !DILocation(line: 263, column: 13, scope: !1590, inlinedAt: !1571)
!1595 = !DILocation(line: 263, column: 9, scope: !1591, inlinedAt: !1571)
!1596 = !DILocation(line: 263, column: 24, scope: !1590, inlinedAt: !1571)
!1597 = !DILocation(line: 0, scope: !1562, inlinedAt: !1571)
!1598 = !DILocation(line: 261, column: 40, scope: !1585, inlinedAt: !1571)
!1599 = !DILocation(line: 261, column: 3, scope: !1585, inlinedAt: !1571)
!1600 = distinct !{!1600, !1601, !1602}
!1601 = !DILocation(line: 261, column: 3, scope: !1580)
!1602 = !DILocation(line: 264, column: 3, scope: !1580)
!1603 = !DILocation(line: 0, scope: !1590, inlinedAt: !1571)
!1604 = !DILocation(line: 265, column: 15, scope: !1605, inlinedAt: !1571)
!1605 = distinct !DILexicalBlock(scope: !1562, file: !1, line: 265, column: 3)
!1606 = !{!377, !378, i64 64}
!1607 = !DILocation(line: 257, column: 9, scope: !1562, inlinedAt: !1571)
!1608 = !DILocation(line: 265, column: 8, scope: !1605, inlinedAt: !1571)
!1609 = !DILocation(line: 265, column: 24, scope: !1610, inlinedAt: !1571)
!1610 = distinct !DILexicalBlock(scope: !1605, file: !1, line: 265, column: 3)
!1611 = !DILocation(line: 265, column: 3, scope: !1605, inlinedAt: !1571)
!1612 = !DILocation(line: 0, scope: !1610, inlinedAt: !1571)
!1613 = !DILocation(line: 267, column: 12, scope: !1614, inlinedAt: !1571)
!1614 = distinct !DILexicalBlock(scope: !1615, file: !1, line: 267, column: 3)
!1615 = distinct !DILexicalBlock(scope: !1562, file: !1, line: 267, column: 3)
!1616 = !DILocation(line: 267, column: 3, scope: !1615, inlinedAt: !1571)
!1617 = !DILocation(line: 266, column: 5, scope: !1618, inlinedAt: !1571)
!1618 = distinct !DILexicalBlock(scope: !1619, file: !1, line: 266, column: 5)
!1619 = distinct !DILexicalBlock(scope: !1610, file: !1, line: 266, column: 5)
!1620 = !DILocation(line: 266, column: 5, scope: !1619, inlinedAt: !1571)
!1621 = !DILocation(line: 265, column: 29, scope: !1610, inlinedAt: !1571)
!1622 = !DILocation(line: 265, column: 35, scope: !1610, inlinedAt: !1571)
!1623 = !DILocation(line: 265, column: 3, scope: !1610, inlinedAt: !1571)
!1624 = distinct !{!1624, !1625, !1626}
!1625 = !DILocation(line: 265, column: 3, scope: !1605)
!1626 = !DILocation(line: 266, column: 5, scope: !1605)
!1627 = !DILocation(line: 268, column: 5, scope: !1614, inlinedAt: !1571)
!1628 = !DILocation(line: 267, column: 21, scope: !1614, inlinedAt: !1571)
!1629 = !DILocation(line: 267, column: 3, scope: !1614, inlinedAt: !1571)
!1630 = distinct !{!1630, !1631, !1632}
!1631 = !DILocation(line: 267, column: 3, scope: !1615)
!1632 = !DILocation(line: 268, column: 5, scope: !1615)
!1633 = !DILocalVariable(name: "L", arg: 1, scope: !1634, file: !1, line: 241, type: !149)
!1634 = distinct !DISubprogram(name: "checkstacksizes", scope: !1, file: !1, line: 241, type: !1635, isLocal: true, isDefinition: true, scopeLine: 241, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1637)
!1635 = !DISubroutineType(types: !1636)
!1636 = !{null, !149, !158}
!1637 = !{!1633, !1638, !1639, !1640}
!1638 = !DILocalVariable(name: "max", arg: 2, scope: !1634, file: !1, line: 241, type: !158)
!1639 = !DILocalVariable(name: "ci_used", scope: !1634, file: !1, line: 242, type: !105)
!1640 = !DILocalVariable(name: "s_used", scope: !1634, file: !1, line: 243, type: !105)
!1641 = !DILocation(line: 241, column: 41, scope: !1634, inlinedAt: !1642)
!1642 = distinct !DILocation(line: 269, column: 3, scope: !1562, inlinedAt: !1571)
!1643 = !DILocation(line: 241, column: 50, scope: !1634, inlinedAt: !1642)
!1644 = !DILocation(line: 242, column: 17, scope: !1634, inlinedAt: !1642)
!1645 = !DILocation(line: 243, column: 16, scope: !1634, inlinedAt: !1642)
!1646 = !DILocation(line: 244, column: 10, scope: !1647, inlinedAt: !1642)
!1647 = distinct !DILexicalBlock(scope: !1634, file: !1, line: 244, column: 7)
!1648 = !{!377, !381, i64 92}
!1649 = !DILocation(line: 244, column: 18, scope: !1647, inlinedAt: !1642)
!1650 = !DILocation(line: 244, column: 7, scope: !1634, inlinedAt: !1642)
!1651 = !DILocation(line: 245, column: 5, scope: !1647, inlinedAt: !1642)
!1652 = !DILocation(line: 304, column: 55, scope: !1362)
!1653 = !DILocation(line: 242, column: 7, scope: !1634, inlinedAt: !1642)
!1654 = !DILocation(line: 246, column: 8, scope: !1655, inlinedAt: !1642)
!1655 = distinct !DILexicalBlock(scope: !1634, file: !1, line: 246, column: 7)
!1656 = !DILocation(line: 246, column: 17, scope: !1655, inlinedAt: !1642)
!1657 = !DILocation(line: 246, column: 30, scope: !1655, inlinedAt: !1642)
!1658 = !DILocation(line: 246, column: 49, scope: !1655, inlinedAt: !1642)
!1659 = !DILocation(line: 246, column: 7, scope: !1634, inlinedAt: !1642)
!1660 = !DILocation(line: 247, column: 5, scope: !1655, inlinedAt: !1642)
!1661 = !DILocation(line: 249, column: 8, scope: !1662, inlinedAt: !1642)
!1662 = distinct !DILexicalBlock(scope: !1634, file: !1, line: 249, column: 7)
!1663 = !DILocation(line: 249, column: 21, scope: !1662, inlinedAt: !1642)
!1664 = !{!377, !381, i64 88}
!1665 = !DILocation(line: 249, column: 16, scope: !1662, inlinedAt: !1642)
!1666 = !DILocation(line: 249, column: 31, scope: !1662, inlinedAt: !1642)
!1667 = !DILocation(line: 250, column: 40, scope: !1662, inlinedAt: !1642)
!1668 = !DILocation(line: 249, column: 7, scope: !1634, inlinedAt: !1642)
!1669 = !DILocation(line: 251, column: 5, scope: !1662, inlinedAt: !1642)
!1670 = !DILocation(line: 253, column: 1, scope: !1634, inlinedAt: !1642)
!1671 = !DILocation(line: 305, column: 57, scope: !1362)
!1672 = !DILocation(line: 270, column: 1, scope: !1562, inlinedAt: !1571)
!1673 = !DILocation(line: 304, column: 51, scope: !1362)
!1674 = !DILocation(line: 304, column: 49, scope: !1362)
!1675 = !DILocation(line: 304, column: 32, scope: !1362)
!1676 = !DILocation(line: 305, column: 53, scope: !1362)
!1677 = !DILocation(line: 305, column: 51, scope: !1362)
!1678 = !DILocation(line: 304, column: 65, scope: !1362)
!1679 = !DILocation(line: 308, column: 18, scope: !1364)
!1680 = !DILocation(line: 308, column: 14, scope: !1364)
!1681 = !DILocation(line: 309, column: 20, scope: !1364)
!1682 = !{!1683, !378, i64 104}
!1683 = !{!"Proto", !378, i64 0, !379, i64 8, !379, i64 9, !378, i64 16, !378, i64 24, !378, i64 32, !378, i64 40, !378, i64 48, !378, i64 56, !378, i64 64, !381, i64 72, !381, i64 76, !381, i64 80, !381, i64 84, !381, i64 88, !381, i64 92, !381, i64 96, !381, i64 100, !378, i64 104, !379, i64 112, !379, i64 113, !379, i64 114, !379, i64 115}
!1684 = !DILocation(line: 309, column: 15, scope: !1364)
!1685 = !DILocalVariable(name: "g", arg: 1, scope: !1686, file: !1, line: 203, type: !161)
!1686 = distinct !DISubprogram(name: "traverseproto", scope: !1, file: !1, line: 203, type: !1687, isLocal: true, isDefinition: true, scopeLine: 203, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1689)
!1687 = !DISubroutineType(types: !1688)
!1688 = !{null, !161, !1365}
!1689 = !{!1685, !1690, !1691}
!1690 = !DILocalVariable(name: "f", arg: 2, scope: !1686, file: !1, line: 203, type: !1365)
!1691 = !DILocalVariable(name: "i", scope: !1686, file: !1, line: 204, type: !105)
!1692 = !DILocation(line: 203, column: 42, scope: !1686, inlinedAt: !1693)
!1693 = distinct !DILocation(line: 310, column: 7, scope: !1364)
!1694 = !DILocation(line: 203, column: 52, scope: !1686, inlinedAt: !1693)
!1695 = !DILocation(line: 205, column: 10, scope: !1696, inlinedAt: !1693)
!1696 = distinct !DILexicalBlock(scope: !1686, file: !1, line: 205, column: 7)
!1697 = !{!1683, !378, i64 64}
!1698 = !DILocation(line: 205, column: 7, scope: !1696, inlinedAt: !1693)
!1699 = !DILocation(line: 205, column: 7, scope: !1686, inlinedAt: !1693)
!1700 = !DILocation(line: 205, column: 18, scope: !1696, inlinedAt: !1693)
!1701 = !DILocation(line: 204, column: 7, scope: !1686, inlinedAt: !1693)
!1702 = !DILocation(line: 206, column: 8, scope: !1703, inlinedAt: !1693)
!1703 = distinct !DILexicalBlock(scope: !1686, file: !1, line: 206, column: 3)
!1704 = !DILocation(line: 206, column: 18, scope: !1705, inlinedAt: !1693)
!1705 = distinct !DILexicalBlock(scope: !1703, file: !1, line: 206, column: 3)
!1706 = !{!1683, !381, i64 76}
!1707 = !DILocation(line: 206, column: 14, scope: !1705, inlinedAt: !1693)
!1708 = !DILocation(line: 206, column: 3, scope: !1703, inlinedAt: !1693)
!1709 = !DILocation(line: 207, column: 5, scope: !1710, inlinedAt: !1693)
!1710 = distinct !DILexicalBlock(scope: !1711, file: !1, line: 207, column: 5)
!1711 = distinct !DILexicalBlock(scope: !1705, file: !1, line: 207, column: 5)
!1712 = !{!1683, !378, i64 16}
!1713 = !DILocation(line: 207, column: 5, scope: !1711, inlinedAt: !1693)
!1714 = !DILocation(line: 206, column: 26, scope: !1705, inlinedAt: !1693)
!1715 = !DILocation(line: 206, column: 3, scope: !1705, inlinedAt: !1693)
!1716 = distinct !{!1716, !1717, !1718}
!1717 = !DILocation(line: 206, column: 3, scope: !1703)
!1718 = !DILocation(line: 207, column: 5, scope: !1703)
!1719 = !DILocation(line: 208, column: 8, scope: !1720, inlinedAt: !1693)
!1720 = distinct !DILexicalBlock(scope: !1686, file: !1, line: 208, column: 3)
!1721 = !DILocation(line: 208, column: 18, scope: !1722, inlinedAt: !1693)
!1722 = distinct !DILexicalBlock(scope: !1720, file: !1, line: 208, column: 3)
!1723 = !{!1683, !381, i64 72}
!1724 = !DILocation(line: 208, column: 14, scope: !1722, inlinedAt: !1693)
!1725 = !DILocation(line: 208, column: 3, scope: !1720, inlinedAt: !1693)
!1726 = !DILocation(line: 209, column: 12, scope: !1727, inlinedAt: !1693)
!1727 = distinct !DILexicalBlock(scope: !1728, file: !1, line: 209, column: 9)
!1728 = distinct !DILexicalBlock(scope: !1722, file: !1, line: 208, column: 37)
!1729 = !{!1683, !378, i64 56}
!1730 = !DILocation(line: 209, column: 9, scope: !1727, inlinedAt: !1693)
!1731 = !DILocation(line: 209, column: 9, scope: !1728, inlinedAt: !1693)
!1732 = !DILocation(line: 210, column: 7, scope: !1727, inlinedAt: !1693)
!1733 = !DILocation(line: 208, column: 33, scope: !1722, inlinedAt: !1693)
!1734 = !DILocation(line: 208, column: 3, scope: !1722, inlinedAt: !1693)
!1735 = distinct !{!1735, !1736, !1737}
!1736 = !DILocation(line: 208, column: 3, scope: !1720)
!1737 = !DILocation(line: 211, column: 3, scope: !1720)
!1738 = !DILocation(line: 212, column: 8, scope: !1739, inlinedAt: !1693)
!1739 = distinct !DILexicalBlock(scope: !1686, file: !1, line: 212, column: 3)
!1740 = !DILocation(line: 212, column: 18, scope: !1741, inlinedAt: !1693)
!1741 = distinct !DILexicalBlock(scope: !1739, file: !1, line: 212, column: 3)
!1742 = !{!1683, !381, i64 88}
!1743 = !DILocation(line: 212, column: 14, scope: !1741, inlinedAt: !1693)
!1744 = !DILocation(line: 212, column: 3, scope: !1739, inlinedAt: !1693)
!1745 = !DILocation(line: 213, column: 12, scope: !1746, inlinedAt: !1693)
!1746 = distinct !DILexicalBlock(scope: !1747, file: !1, line: 213, column: 9)
!1747 = distinct !DILexicalBlock(scope: !1741, file: !1, line: 212, column: 30)
!1748 = !{!1683, !378, i64 32}
!1749 = !DILocation(line: 213, column: 9, scope: !1746, inlinedAt: !1693)
!1750 = !DILocation(line: 213, column: 9, scope: !1747, inlinedAt: !1693)
!1751 = !DILocation(line: 214, column: 7, scope: !1752, inlinedAt: !1693)
!1752 = distinct !DILexicalBlock(scope: !1753, file: !1, line: 214, column: 7)
!1753 = distinct !DILexicalBlock(scope: !1746, file: !1, line: 214, column: 7)
!1754 = !DILocation(line: 214, column: 7, scope: !1753, inlinedAt: !1693)
!1755 = !DILocation(line: 212, column: 26, scope: !1741, inlinedAt: !1693)
!1756 = !DILocation(line: 212, column: 3, scope: !1741, inlinedAt: !1693)
!1757 = distinct !{!1757, !1758, !1759}
!1758 = !DILocation(line: 212, column: 3, scope: !1739)
!1759 = !DILocation(line: 215, column: 3, scope: !1739)
!1760 = !DILocation(line: 216, column: 8, scope: !1761, inlinedAt: !1693)
!1761 = distinct !DILexicalBlock(scope: !1686, file: !1, line: 216, column: 3)
!1762 = !DILocation(line: 216, column: 18, scope: !1763, inlinedAt: !1693)
!1763 = distinct !DILexicalBlock(scope: !1761, file: !1, line: 216, column: 3)
!1764 = !{!1683, !381, i64 92}
!1765 = !DILocation(line: 216, column: 14, scope: !1763, inlinedAt: !1693)
!1766 = !DILocation(line: 216, column: 3, scope: !1761, inlinedAt: !1693)
!1767 = !DILocation(line: 315, column: 47, scope: !1364)
!1768 = !DILocation(line: 217, column: 12, scope: !1769, inlinedAt: !1693)
!1769 = distinct !DILexicalBlock(scope: !1770, file: !1, line: 217, column: 9)
!1770 = distinct !DILexicalBlock(scope: !1763, file: !1, line: 216, column: 36)
!1771 = !{!1683, !378, i64 48}
!1772 = !DILocation(line: 217, column: 23, scope: !1769, inlinedAt: !1693)
!1773 = !{!1774, !378, i64 0}
!1774 = !{!"LocVar", !378, i64 0, !381, i64 8, !381, i64 12}
!1775 = !DILocation(line: 217, column: 9, scope: !1769, inlinedAt: !1693)
!1776 = !DILocation(line: 217, column: 9, scope: !1770, inlinedAt: !1693)
!1777 = !DILocation(line: 218, column: 7, scope: !1769, inlinedAt: !1693)
!1778 = !DILocation(line: 216, column: 32, scope: !1763, inlinedAt: !1693)
!1779 = !DILocation(line: 216, column: 3, scope: !1763, inlinedAt: !1693)
!1780 = distinct !{!1780, !1781, !1782}
!1781 = !DILocation(line: 216, column: 3, scope: !1761)
!1782 = !DILocation(line: 219, column: 3, scope: !1761)
!1783 = !DILocation(line: 312, column: 51, scope: !1364)
!1784 = !DILocation(line: 220, column: 1, scope: !1686, inlinedAt: !1693)
!1785 = !DILocation(line: 311, column: 55, scope: !1364)
!1786 = !{!1683, !381, i64 80}
!1787 = !DILocation(line: 311, column: 52, scope: !1364)
!1788 = !DILocation(line: 312, column: 48, scope: !1364)
!1789 = !DILocation(line: 313, column: 50, scope: !1364)
!1790 = !DILocation(line: 313, column: 47, scope: !1364)
!1791 = !DILocation(line: 314, column: 47, scope: !1364)
!1792 = !{!1683, !381, i64 84}
!1793 = !DILocation(line: 314, column: 44, scope: !1364)
!1794 = !DILocation(line: 316, column: 53, scope: !1364)
!1795 = !DILocation(line: 316, column: 50, scope: !1364)
!1796 = !DILocation(line: 313, column: 56, scope: !1364)
!1797 = !DILocation(line: 314, column: 60, scope: !1364)
!1798 = !DILocation(line: 315, column: 62, scope: !1364)
!1799 = !DILocation(line: 0, scope: !1355)
!1800 = !DILocation(line: 320, column: 1, scope: !1348)
