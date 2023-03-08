; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lstate.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lstate.c"
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

@.str = private unnamed_addr constant [18 x i8] c"not enough memory\00", align 1

; Function Attrs: noredzone nounwind
define hidden %struct.lua_State* @luaE_newthread(%struct.lua_State*) local_unnamed_addr #0 !dbg !346 {
  %2 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* null, i64 0, i64 184) #3, !dbg !358
  %3 = bitcast i8* %2 to %struct.lua_State*, !dbg !358
  %4 = bitcast i8* %2 to %union.GCObject*, !dbg !360
  tail call void @luaC_link(%struct.lua_State* %0, %union.GCObject* %4, i8 zeroext 8) #3, !dbg !361
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !362
  %6 = bitcast %struct.global_State** %5 to i64*, !dbg !362
  %7 = load i64, i64* %6, align 8, !dbg !362, !tbaa !363
  %8 = getelementptr inbounds i8, i8* %2, i64 32, !dbg !381
  %9 = bitcast i8* %8 to i64*, !dbg !382
  store i64 %7, i64* %9, align 8, !dbg !382, !tbaa !363
  %10 = getelementptr inbounds i8, i8* %2, i64 64, !dbg !383
  %11 = bitcast i8* %10 to %struct.lua_TValue**, !dbg !383
  store %struct.lua_TValue* null, %struct.lua_TValue** %11, align 8, !dbg !384, !tbaa !385
  %12 = getelementptr inbounds i8, i8* %2, i64 88, !dbg !386
  %13 = bitcast i8* %12 to i32*, !dbg !386
  store i32 0, i32* %13, align 8, !dbg !387, !tbaa !388
  %14 = getelementptr inbounds i8, i8* %2, i64 168, !dbg !389
  %15 = bitcast i8* %14 to %struct.lua_longjmp**, !dbg !389
  store %struct.lua_longjmp* null, %struct.lua_longjmp** %15, align 8, !dbg !390, !tbaa !391
  %16 = getelementptr inbounds i8, i8* %2, i64 112, !dbg !392
  %17 = bitcast i8* %16 to void (%struct.lua_State*, %struct.lua_Debug*)**, !dbg !392
  store void (%struct.lua_State*, %struct.lua_Debug*)* null, void (%struct.lua_State*, %struct.lua_Debug*)** %17, align 8, !dbg !393, !tbaa !394
  %18 = getelementptr inbounds i8, i8* %2, i64 100, !dbg !395
  store i8 0, i8* %18, align 4, !dbg !396, !tbaa !397
  %19 = getelementptr inbounds i8, i8* %2, i64 104, !dbg !398
  %20 = bitcast i8* %19 to i32*, !dbg !398
  store i32 0, i32* %20, align 8, !dbg !399, !tbaa !400
  %21 = getelementptr inbounds i8, i8* %2, i64 101, !dbg !401
  store i8 1, i8* %21, align 1, !dbg !402, !tbaa !403
  %22 = getelementptr inbounds i8, i8* %2, i64 108, !dbg !404
  %23 = bitcast i8* %22 to i32*, !dbg !404
  store i32 0, i32* %23, align 4, !dbg !404, !tbaa !405
  %24 = getelementptr inbounds i8, i8* %2, i64 152, !dbg !406
  %25 = bitcast i8* %24 to %union.GCObject**, !dbg !406
  store %union.GCObject* null, %union.GCObject** %25, align 8, !dbg !407, !tbaa !408
  %26 = getelementptr inbounds i8, i8* %2, i64 92, !dbg !409
  %27 = bitcast i8* %26 to i32*, !dbg !409
  store i32 0, i32* %27, align 4, !dbg !410, !tbaa !411
  %28 = getelementptr inbounds i8, i8* %2, i64 98, !dbg !412
  %29 = bitcast i8* %28 to i16*, !dbg !412
  store i16 0, i16* %29, align 2, !dbg !413, !tbaa !414
  %30 = getelementptr inbounds i8, i8* %2, i64 96, !dbg !415
  %31 = bitcast i8* %30 to i16*, !dbg !415
  store i16 0, i16* %31, align 8, !dbg !416, !tbaa !417
  %32 = getelementptr inbounds i8, i8* %2, i64 10, !dbg !418
  store i8 0, i8* %32, align 2, !dbg !419, !tbaa !420
  %33 = getelementptr inbounds i8, i8* %2, i64 40, !dbg !421
  %34 = bitcast i8* %33 to %struct.CallInfo**, !dbg !421
  store %struct.CallInfo* null, %struct.CallInfo** %34, align 8, !dbg !422, !tbaa !423
  %35 = getelementptr inbounds i8, i8* %2, i64 80, !dbg !424
  %36 = bitcast i8* %35 to %struct.CallInfo**, !dbg !424
  store %struct.CallInfo* null, %struct.CallInfo** %36, align 8, !dbg !425, !tbaa !426
  %37 = getelementptr inbounds i8, i8* %2, i64 48, !dbg !427
  %38 = bitcast i8* %37 to i32**, !dbg !427
  store i32* null, i32** %38, align 8, !dbg !428, !tbaa !429
  %39 = getelementptr inbounds i8, i8* %2, i64 176, !dbg !430
  %40 = bitcast i8* %39 to i64*, !dbg !430
  store i64 0, i64* %40, align 8, !dbg !431, !tbaa !432
  %41 = getelementptr inbounds i8, i8* %2, i64 128, !dbg !433
  %42 = bitcast i8* %41 to i32*, !dbg !433
  store i32 0, i32* %42, align 8, !dbg !433, !tbaa !434
  %43 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* null, i64 0, i64 320) #3, !dbg !444
  %44 = bitcast i8* %35 to i8**, !dbg !445
  store i8* %43, i8** %44, align 8, !dbg !445, !tbaa !426
  %45 = bitcast i8* %33 to i8**, !dbg !446
  store i8* %43, i8** %45, align 8, !dbg !446, !tbaa !423
  store i32 8, i32* %27, align 4, !dbg !447, !tbaa !411
  %46 = getelementptr inbounds i8, i8* %43, i64 280, !dbg !448
  %47 = getelementptr inbounds i8, i8* %2, i64 72, !dbg !449
  %48 = bitcast i8* %47 to i8**, !dbg !450
  store i8* %46, i8** %48, align 8, !dbg !450, !tbaa !451
  %49 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* null, i64 0, i64 720) #3, !dbg !452
  %50 = bitcast i8* %10 to i8**, !dbg !453
  store i8* %49, i8** %50, align 8, !dbg !453, !tbaa !385
  store i32 45, i32* %13, align 8, !dbg !454, !tbaa !388
  %51 = ptrtoint i8* %49 to i64, !dbg !455
  %52 = getelementptr inbounds i8, i8* %2, i64 16, !dbg !456
  %53 = getelementptr inbounds i8, i8* %49, i64 624, !dbg !457
  %54 = getelementptr inbounds i8, i8* %2, i64 56, !dbg !458
  %55 = bitcast i8* %54 to i8**, !dbg !459
  store i8* %53, i8** %55, align 8, !dbg !459, !tbaa !460
  %56 = load %struct.CallInfo*, %struct.CallInfo** %34, align 8, !dbg !461, !tbaa !423
  %57 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %56, i64 0, i32 1, !dbg !462
  %58 = bitcast %struct.lua_TValue** %57 to i64*, !dbg !463
  store i64 %51, i64* %58, align 8, !dbg !463, !tbaa !464
  %59 = getelementptr inbounds i8, i8* %49, i64 16, !dbg !466
  %60 = bitcast i8* %52 to i8**, !dbg !466
  store i8* %59, i8** %60, align 8, !dbg !466, !tbaa !467
  %61 = getelementptr inbounds i8, i8* %49, i64 8, !dbg !466
  %62 = bitcast i8* %61 to i32*, !dbg !466
  store i32 0, i32* %62, align 8, !dbg !466, !tbaa !468
  %63 = ptrtoint i8* %59 to i64, !dbg !469
  %64 = bitcast %struct.CallInfo* %56 to i64*, !dbg !470
  store i64 %63, i64* %64, align 8, !dbg !471, !tbaa !472
  %65 = getelementptr inbounds i8, i8* %2, i64 24, !dbg !473
  %66 = bitcast i8* %65 to i64*, !dbg !474
  store i64 %63, i64* %66, align 8, !dbg !474, !tbaa !475
  %67 = getelementptr inbounds i8, i8* %49, i64 336, !dbg !476
  %68 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %56, i64 0, i32 2, !dbg !477
  %69 = bitcast %struct.lua_TValue** %68 to i8**, !dbg !478
  store i8* %67, i8** %69, align 8, !dbg !478, !tbaa !479
  %70 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !480
  %71 = getelementptr inbounds i8, i8* %2, i64 120, !dbg !480
  %72 = bitcast %struct.lua_TValue* %70 to i64*, !dbg !480
  %73 = bitcast i8* %71 to i64*, !dbg !480
  %74 = load i64, i64* %72, align 8, !dbg !480
  store i64 %74, i64* %73, align 8, !dbg !480
  %75 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, i32 1, !dbg !480
  %76 = load i32, i32* %75, align 8, !dbg !480, !tbaa !468
  store i32 %76, i32* %42, align 8, !dbg !480, !tbaa !468
  %77 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 17, !dbg !481
  %78 = load i8, i8* %77, align 4, !dbg !481, !tbaa !397
  store i8 %78, i8* %18, align 4, !dbg !482, !tbaa !397
  %79 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 19, !dbg !483
  %80 = load i32, i32* %79, align 8, !dbg !483, !tbaa !400
  store i32 %80, i32* %20, align 8, !dbg !484, !tbaa !400
  %81 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 21, !dbg !485
  %82 = bitcast void (%struct.lua_State*, %struct.lua_Debug*)** %81 to i64*, !dbg !485
  %83 = load i64, i64* %82, align 8, !dbg !485, !tbaa !394
  %84 = bitcast i8* %16 to i64*, !dbg !486
  store i64 %83, i64* %84, align 8, !dbg !486, !tbaa !394
  store i32 %80, i32* %23, align 4, !dbg !487, !tbaa !405
  ret %struct.lua_State* %3, !dbg !488
}

; Function Attrs: noredzone
declare hidden i8* @luaM_realloc_(%struct.lua_State*, i8*, i64, i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare hidden void @luaC_link(%struct.lua_State*, %union.GCObject*, i8 zeroext) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define hidden void @luaE_freethread(%struct.lua_State*, %struct.lua_State*) local_unnamed_addr #0 !dbg !489 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %1, i64 0, i32 10, !dbg !495
  %4 = load %struct.lua_TValue*, %struct.lua_TValue** %3, align 8, !dbg !495, !tbaa !385
  tail call void @luaF_close(%struct.lua_State* %1, %struct.lua_TValue* %4) #3, !dbg !496
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %1, i64 0, i32 12, !dbg !504
  %6 = bitcast %struct.CallInfo** %5 to i8**, !dbg !504
  %7 = load i8*, i8** %6, align 8, !dbg !504, !tbaa !426
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %1, i64 0, i32 14, !dbg !504
  %9 = load i32, i32* %8, align 4, !dbg !504, !tbaa !411
  %10 = sext i32 %9 to i64, !dbg !504
  %11 = mul nsw i64 %10, 40, !dbg !504
  %12 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* %7, i64 %11, i64 0) #3, !dbg !504
  %13 = bitcast %struct.lua_TValue** %3 to i8**, !dbg !505
  %14 = load i8*, i8** %13, align 8, !dbg !505, !tbaa !385
  %15 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %1, i64 0, i32 13, !dbg !505
  %16 = load i32, i32* %15, align 8, !dbg !505, !tbaa !388
  %17 = sext i32 %16 to i64, !dbg !505
  %18 = shl nsw i64 %17, 4, !dbg !505
  %19 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* %14, i64 %18, i64 0) #3, !dbg !505
  %20 = bitcast %struct.lua_State* %1 to i8*, !dbg !506
  %21 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* %20, i64 184, i64 0) #3, !dbg !506
  ret void, !dbg !507
}

; Function Attrs: noredzone
declare hidden void @luaF_close(%struct.lua_State*, %struct.lua_TValue*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local %struct.lua_State* @lua_newstate(i8* (i8*, i8*, i64, i64)*, i8*) local_unnamed_addr #0 !dbg !508 {
  %3 = tail call i8* %0(i8* %1, i8* null, i64 0, i64 616) #3, !dbg !520
  %4 = icmp eq i8* %3, null, !dbg !522
  br i1 %4, label %105, label %5, !dbg !524

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds i8, i8* %3, i64 184, !dbg !526
  %7 = bitcast i8* %3 to %union.GCObject**, !dbg !528
  store %union.GCObject* null, %union.GCObject** %7, align 8, !dbg !529, !tbaa !530
  %8 = getelementptr inbounds i8, i8* %3, i64 8, !dbg !531
  store i8 8, i8* %8, align 8, !dbg !532, !tbaa !533
  %9 = getelementptr inbounds i8, i8* %3, i64 216, !dbg !534
  store i8 33, i8* %9, align 8, !dbg !535, !tbaa !536
  %10 = getelementptr inbounds i8, i8* %3, i64 9, !dbg !541
  store i8 97, i8* %10, align 1, !dbg !542, !tbaa !543
  %11 = getelementptr inbounds i8, i8* %3, i64 32, !dbg !547
  %12 = bitcast i8* %11 to i8**, !dbg !548
  store i8* %6, i8** %12, align 8, !dbg !548, !tbaa !363
  %13 = getelementptr inbounds i8, i8* %3, i64 64, !dbg !549
  %14 = bitcast i8* %13 to %struct.lua_TValue**, !dbg !549
  store %struct.lua_TValue* null, %struct.lua_TValue** %14, align 8, !dbg !550, !tbaa !385
  %15 = getelementptr inbounds i8, i8* %3, i64 88, !dbg !551
  %16 = bitcast i8* %15 to i32*, !dbg !551
  store i32 0, i32* %16, align 8, !dbg !552, !tbaa !388
  %17 = getelementptr inbounds i8, i8* %3, i64 168, !dbg !553
  %18 = bitcast i8* %17 to %struct.lua_longjmp**, !dbg !553
  store %struct.lua_longjmp* null, %struct.lua_longjmp** %18, align 8, !dbg !554, !tbaa !391
  %19 = getelementptr inbounds i8, i8* %3, i64 112, !dbg !555
  %20 = bitcast i8* %19 to void (%struct.lua_State*, %struct.lua_Debug*)**, !dbg !555
  store void (%struct.lua_State*, %struct.lua_Debug*)* null, void (%struct.lua_State*, %struct.lua_Debug*)** %20, align 8, !dbg !556, !tbaa !394
  %21 = getelementptr inbounds i8, i8* %3, i64 100, !dbg !557
  store i8 0, i8* %21, align 4, !dbg !558, !tbaa !397
  %22 = getelementptr inbounds i8, i8* %3, i64 104, !dbg !559
  %23 = bitcast i8* %22 to i32*, !dbg !559
  store i32 0, i32* %23, align 8, !dbg !560, !tbaa !400
  %24 = getelementptr inbounds i8, i8* %3, i64 101, !dbg !561
  store i8 1, i8* %24, align 1, !dbg !562, !tbaa !403
  %25 = getelementptr inbounds i8, i8* %3, i64 108, !dbg !563
  %26 = bitcast i8* %25 to i32*, !dbg !563
  store i32 0, i32* %26, align 4, !dbg !563, !tbaa !405
  %27 = getelementptr inbounds i8, i8* %3, i64 152, !dbg !564
  %28 = bitcast i8* %27 to %union.GCObject**, !dbg !564
  store %union.GCObject* null, %union.GCObject** %28, align 8, !dbg !565, !tbaa !408
  %29 = getelementptr inbounds i8, i8* %3, i64 92, !dbg !566
  %30 = bitcast i8* %29 to i32*, !dbg !566
  store i32 0, i32* %30, align 4, !dbg !567, !tbaa !411
  %31 = getelementptr inbounds i8, i8* %3, i64 98, !dbg !568
  %32 = bitcast i8* %31 to i16*, !dbg !568
  store i16 0, i16* %32, align 2, !dbg !569, !tbaa !414
  %33 = getelementptr inbounds i8, i8* %3, i64 96, !dbg !570
  %34 = bitcast i8* %33 to i16*, !dbg !570
  store i16 0, i16* %34, align 8, !dbg !571, !tbaa !417
  %35 = getelementptr inbounds i8, i8* %3, i64 10, !dbg !572
  store i8 0, i8* %35, align 2, !dbg !573, !tbaa !420
  %36 = getelementptr inbounds i8, i8* %3, i64 40, !dbg !574
  %37 = bitcast i8* %36 to %struct.CallInfo**, !dbg !574
  store %struct.CallInfo* null, %struct.CallInfo** %37, align 8, !dbg !575, !tbaa !423
  %38 = getelementptr inbounds i8, i8* %3, i64 80, !dbg !576
  %39 = bitcast i8* %38 to %struct.CallInfo**, !dbg !576
  store %struct.CallInfo* null, %struct.CallInfo** %39, align 8, !dbg !577, !tbaa !426
  %40 = getelementptr inbounds i8, i8* %3, i64 48, !dbg !578
  %41 = bitcast i8* %40 to i32**, !dbg !578
  store i32* null, i32** %41, align 8, !dbg !579, !tbaa !429
  %42 = getelementptr inbounds i8, i8* %3, i64 176, !dbg !580
  %43 = bitcast i8* %42 to i64*, !dbg !580
  store i64 0, i64* %43, align 8, !dbg !581, !tbaa !432
  %44 = getelementptr inbounds i8, i8* %3, i64 128, !dbg !582
  %45 = bitcast i8* %44 to i32*, !dbg !582
  store i32 0, i32* %45, align 8, !dbg !582, !tbaa !434
  %46 = getelementptr inbounds i8, i8* %3, i64 200, !dbg !583
  %47 = bitcast i8* %46 to i8* (i8*, i8*, i64, i64)**, !dbg !583
  store i8* (i8*, i8*, i64, i64)* %0, i8* (i8*, i8*, i64, i64)** %47, align 8, !dbg !584, !tbaa !585
  %48 = getelementptr inbounds i8, i8* %3, i64 208, !dbg !586
  %49 = bitcast i8* %48 to i8**, !dbg !586
  store i8* %1, i8** %49, align 8, !dbg !587, !tbaa !588
  %50 = getelementptr inbounds i8, i8* %3, i64 360, !dbg !589
  %51 = bitcast i8* %50 to i8**, !dbg !590
  store i8* %3, i8** %51, align 8, !dbg !590, !tbaa !591
  %52 = getelementptr inbounds i8, i8* %3, i64 368, !dbg !592
  %53 = getelementptr inbounds i8, i8* %3, i64 392, !dbg !593
  %54 = bitcast i8* %53 to i8**, !dbg !594
  store i8* %52, i8** %54, align 8, !dbg !594, !tbaa !595
  %55 = getelementptr inbounds i8, i8* %3, i64 400, !dbg !596
  %56 = bitcast i8* %55 to i8**, !dbg !597
  store i8* %52, i8** %56, align 8, !dbg !597, !tbaa !595
  %57 = getelementptr inbounds i8, i8* %3, i64 296, !dbg !598
  %58 = bitcast i8* %57 to i64*, !dbg !598
  store i64 0, i64* %58, align 8, !dbg !599, !tbaa !600
  %59 = getelementptr inbounds i8, i8* %3, i64 196, !dbg !601
  %60 = bitcast i8* %59 to i32*, !dbg !601
  store i32 0, i32* %60, align 4, !dbg !602, !tbaa !603
  %61 = getelementptr inbounds i8, i8* %3, i64 192, !dbg !604
  %62 = bitcast i8* %61 to i32*, !dbg !604
  store i32 0, i32* %62, align 8, !dbg !605, !tbaa !606
  %63 = bitcast i8* %6 to %union.GCObject***, !dbg !607
  store %union.GCObject** null, %union.GCObject*** %63, align 8, !dbg !608, !tbaa !609
  %64 = getelementptr inbounds i8, i8* %3, i64 352, !dbg !610
  %65 = bitcast i8* %64 to i32*, !dbg !610
  store i32 0, i32* %65, align 8, !dbg !610, !tbaa !611
  %66 = getelementptr inbounds i8, i8* %3, i64 272, !dbg !612
  %67 = bitcast i8* %66 to i8**, !dbg !612
  store i8* null, i8** %67, align 8, !dbg !612, !tbaa !613
  %68 = getelementptr inbounds i8, i8* %3, i64 288, !dbg !612
  %69 = bitcast i8* %68 to i64*, !dbg !612
  store i64 0, i64* %69, align 8, !dbg !612, !tbaa !614
  %70 = getelementptr inbounds i8, i8* %3, i64 336, !dbg !615
  %71 = bitcast i8* %70 to i32 (%struct.lua_State*)**, !dbg !615
  store i32 (%struct.lua_State*)* null, i32 (%struct.lua_State*)** %71, align 8, !dbg !616, !tbaa !617
  %72 = getelementptr inbounds i8, i8* %3, i64 217, !dbg !618
  store i8 0, i8* %72, align 1, !dbg !619, !tbaa !620
  %73 = getelementptr inbounds i8, i8* %3, i64 224, !dbg !621
  %74 = bitcast i8* %73 to i8**, !dbg !622
  store i8* %3, i8** %74, align 8, !dbg !622, !tbaa !623
  %75 = getelementptr inbounds i8, i8* %3, i64 220, !dbg !624
  %76 = bitcast i8* %75 to i32*, !dbg !624
  store i32 0, i32* %76, align 4, !dbg !625, !tbaa !626
  %77 = getelementptr inbounds i8, i8* %3, i64 232, !dbg !627
  %78 = bitcast i8* %77 to i8**, !dbg !628
  store i8* %73, i8** %78, align 8, !dbg !628, !tbaa !629
  %79 = getelementptr inbounds i8, i8* %3, i64 240, !dbg !630
  %80 = bitcast i8* %79 to <2 x %union.GCObject*>*, !dbg !631
  store <2 x %union.GCObject*> zeroinitializer, <2 x %union.GCObject*>* %80, align 8, !dbg !631, !tbaa !632
  %81 = getelementptr inbounds i8, i8* %3, i64 256, !dbg !633
  %82 = bitcast i8* %81 to <2 x %union.GCObject*>*, !dbg !634
  store <2 x %union.GCObject*> zeroinitializer, <2 x %union.GCObject*>* %82, align 8, !dbg !634, !tbaa !632
  %83 = getelementptr inbounds i8, i8* %3, i64 304, !dbg !635
  %84 = bitcast i8* %83 to i64*, !dbg !635
  store i64 616, i64* %84, align 8, !dbg !636, !tbaa !637
  %85 = getelementptr inbounds i8, i8* %3, i64 328, !dbg !638
  %86 = bitcast i8* %85 to i32*, !dbg !638
  store i32 200, i32* %86, align 8, !dbg !639, !tbaa !640
  %87 = getelementptr inbounds i8, i8* %3, i64 332, !dbg !641
  %88 = bitcast i8* %87 to i32*, !dbg !641
  store i32 200, i32* %88, align 4, !dbg !642, !tbaa !643
  %89 = getelementptr inbounds i8, i8* %3, i64 320, !dbg !644
  %90 = bitcast i8* %89 to i64*, !dbg !644
  store i64 0, i64* %90, align 8, !dbg !645, !tbaa !646
  %91 = getelementptr inbounds i8, i8* %3, i64 408
  %92 = bitcast i8* %91 to <2 x %struct.Table*>*, !dbg !648
  store <2 x %struct.Table*> zeroinitializer, <2 x %struct.Table*>* %92, align 8, !dbg !648, !tbaa !632
  %93 = getelementptr inbounds i8, i8* %3, i64 424, !dbg !651
  %94 = bitcast i8* %93 to <2 x %struct.Table*>*, !dbg !648
  store <2 x %struct.Table*> zeroinitializer, <2 x %struct.Table*>* %94, align 8, !dbg !648, !tbaa !632
  %95 = getelementptr inbounds i8, i8* %3, i64 440, !dbg !651
  %96 = bitcast i8* %95 to <2 x %struct.Table*>*, !dbg !648
  store <2 x %struct.Table*> zeroinitializer, <2 x %struct.Table*>* %96, align 8, !dbg !648, !tbaa !632
  %97 = getelementptr inbounds i8, i8* %3, i64 456, !dbg !651
  %98 = bitcast i8* %97 to <2 x %struct.Table*>*, !dbg !648
  store <2 x %struct.Table*> zeroinitializer, <2 x %struct.Table*>* %98, align 8, !dbg !648, !tbaa !632
  %99 = getelementptr inbounds i8, i8* %3, i64 472, !dbg !651
  %100 = bitcast i8* %99 to %struct.Table**, !dbg !651
  store %struct.Table* null, %struct.Table** %100, align 8, !dbg !648, !tbaa !632
  %101 = bitcast i8* %3 to %struct.lua_State*, !dbg !652
  %102 = tail call i32 @luaD_rawrunprotected(%struct.lua_State* %101, void (%struct.lua_State*, i8*)* nonnull @f_luaopen, i8* null) #3, !dbg !653
  %103 = icmp eq i32 %102, 0, !dbg !655
  br i1 %103, label %105, label %104, !dbg !656

; <label>:104:                                    ; preds = %5
  tail call fastcc void @close_state(%struct.lua_State* %101) #5, !dbg !657
  br label %105, !dbg !659

; <label>:105:                                    ; preds = %104, %5, %2
  %106 = phi %struct.lua_State* [ null, %2 ], [ null, %104 ], [ %101, %5 ], !dbg !660
  ret %struct.lua_State* %106, !dbg !661
}

; Function Attrs: noredzone
declare hidden i32 @luaD_rawrunprotected(%struct.lua_State*, void (%struct.lua_State*, i8*)*, i8*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define internal void @f_luaopen(%struct.lua_State*, i8* nocapture readnone) #0 !dbg !662 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !675
  %4 = load %struct.global_State*, %struct.global_State** %3, align 8, !dbg !675, !tbaa !363
  %5 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* null, i64 0, i64 320) #3, !dbg !680
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 12, !dbg !681
  %7 = bitcast %struct.CallInfo** %6 to i8**, !dbg !682
  store i8* %5, i8** %7, align 8, !dbg !682, !tbaa !426
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !683
  %9 = bitcast %struct.CallInfo** %8 to i8**, !dbg !684
  store i8* %5, i8** %9, align 8, !dbg !684, !tbaa !423
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 14, !dbg !685
  store i32 8, i32* %10, align 4, !dbg !686, !tbaa !411
  %11 = getelementptr inbounds i8, i8* %5, i64 280, !dbg !687
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 11, !dbg !688
  %13 = bitcast %struct.CallInfo** %12 to i8**, !dbg !689
  store i8* %11, i8** %13, align 8, !dbg !689, !tbaa !451
  %14 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* null, i64 0, i64 720) #3, !dbg !690
  %15 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 10, !dbg !691
  %16 = bitcast %struct.lua_TValue** %15 to i8**, !dbg !692
  store i8* %14, i8** %16, align 8, !dbg !692, !tbaa !385
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 13, !dbg !693
  store i32 45, i32* %17, align 8, !dbg !694, !tbaa !388
  %18 = ptrtoint i8* %14 to i64, !dbg !695
  %19 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !696
  %20 = getelementptr inbounds i8, i8* %14, i64 624, !dbg !697
  %21 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 9, !dbg !698
  %22 = bitcast %struct.lua_TValue** %21 to i8**, !dbg !699
  store i8* %20, i8** %22, align 8, !dbg !699, !tbaa !460
  %23 = load %struct.CallInfo*, %struct.CallInfo** %8, align 8, !dbg !700, !tbaa !423
  %24 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %23, i64 0, i32 1, !dbg !701
  %25 = bitcast %struct.lua_TValue** %24 to i64*, !dbg !702
  store i64 %18, i64* %25, align 8, !dbg !702, !tbaa !464
  %26 = getelementptr inbounds i8, i8* %14, i64 16, !dbg !703
  %27 = bitcast %struct.lua_TValue** %19 to i8**, !dbg !703
  store i8* %26, i8** %27, align 8, !dbg !703, !tbaa !467
  %28 = getelementptr inbounds i8, i8* %14, i64 8, !dbg !703
  %29 = bitcast i8* %28 to i32*, !dbg !703
  store i32 0, i32* %29, align 8, !dbg !703, !tbaa !468
  %30 = ptrtoint i8* %26 to i64, !dbg !704
  %31 = bitcast %struct.CallInfo* %23 to i64*, !dbg !705
  store i64 %30, i64* %31, align 8, !dbg !706, !tbaa !472
  %32 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !707
  %33 = bitcast %struct.lua_TValue** %32 to i64*, !dbg !708
  store i64 %30, i64* %33, align 8, !dbg !708, !tbaa !475
  %34 = getelementptr inbounds i8, i8* %14, i64 336, !dbg !709
  %35 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %23, i64 0, i32 2, !dbg !710
  %36 = bitcast %struct.lua_TValue** %35 to i8**, !dbg !711
  store i8* %34, i8** %36, align 8, !dbg !711, !tbaa !479
  %37 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !712
  %38 = tail call %struct.Table* @luaH_new(%struct.lua_State* %0, i32 0, i32 2) #3, !dbg !712
  %39 = bitcast %struct.lua_TValue* %37 to %struct.Table**, !dbg !712
  store %struct.Table* %38, %struct.Table** %39, align 8, !dbg !712, !tbaa !595
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, i32 1, !dbg !712
  store i32 5, i32* %40, align 8, !dbg !712, !tbaa !468
  %41 = load %struct.global_State*, %struct.global_State** %3, align 8, !dbg !713, !tbaa !363
  %42 = getelementptr inbounds %struct.global_State, %struct.global_State* %41, i64 0, i32 20, !dbg !713
  %43 = tail call %struct.Table* @luaH_new(%struct.lua_State* %0, i32 0, i32 2) #3, !dbg !713
  %44 = bitcast %struct.lua_TValue* %42 to %struct.Table**, !dbg !713
  store %struct.Table* %43, %struct.Table** %44, align 8, !dbg !713, !tbaa !595
  %45 = getelementptr inbounds %struct.global_State, %struct.global_State* %41, i64 0, i32 20, i32 1, !dbg !713
  store i32 5, i32* %45, align 8, !dbg !713, !tbaa !468
  tail call void @luaS_resize(%struct.lua_State* %0, i32 32) #3, !dbg !714
  tail call void @luaT_init(%struct.lua_State* %0) #3, !dbg !715
  tail call void @luaX_init(%struct.lua_State* %0) #3, !dbg !716
  %46 = tail call %union.TString* @luaS_newlstr(%struct.lua_State* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 17) #3, !dbg !717
  %47 = getelementptr inbounds %union.TString, %union.TString* %46, i64 0, i32 0, i32 2, !dbg !717
  %48 = load i8, i8* %47, align 1, !dbg !717, !tbaa !595
  %49 = or i8 %48, 32, !dbg !717
  store i8 %49, i8* %47, align 1, !dbg !717, !tbaa !595
  %50 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 14, !dbg !718
  %51 = load i64, i64* %50, align 8, !dbg !718, !tbaa !637
  %52 = shl i64 %51, 2, !dbg !719
  %53 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 13, !dbg !720
  store i64 %52, i64* %53, align 8, !dbg !721, !tbaa !600
  ret void, !dbg !722
}

; Function Attrs: noredzone nounwind
define internal fastcc void @close_state(%struct.lua_State*) unnamed_addr #0 !dbg !723 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !730
  %3 = load %struct.global_State*, %struct.global_State** %2, align 8, !dbg !730, !tbaa !363
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 10, !dbg !732
  %5 = load %struct.lua_TValue*, %struct.lua_TValue** %4, align 8, !dbg !732, !tbaa !385
  tail call void @luaF_close(%struct.lua_State* %0, %struct.lua_TValue* %5) #3, !dbg !733
  tail call void @luaC_freeall(%struct.lua_State* %0) #3, !dbg !734
  %6 = load %struct.global_State*, %struct.global_State** %2, align 8, !dbg !735, !tbaa !363
  %7 = bitcast %struct.global_State* %6 to i8**, !dbg !735
  %8 = load i8*, i8** %7, align 8, !dbg !735, !tbaa !609
  %9 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i64 0, i32 0, i32 2, !dbg !735
  %10 = load i32, i32* %9, align 4, !dbg !735, !tbaa !603
  %11 = sext i32 %10 to i64, !dbg !735
  %12 = shl nsw i64 %11, 3, !dbg !735
  %13 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* %8, i64 %12, i64 0) #3, !dbg !735
  %14 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 12, i32 0, !dbg !736
  %15 = load i8*, i8** %14, align 8, !dbg !736, !tbaa !613
  %16 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 12, i32 2, !dbg !736
  %17 = load i64, i64* %16, align 8, !dbg !736, !tbaa !614
  %18 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* %15, i64 %17, i64 0) #3, !dbg !736
  store i8* %18, i8** %14, align 8, !dbg !736, !tbaa !613
  store i64 0, i64* %16, align 8, !dbg !736, !tbaa !614
  %19 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 12, !dbg !740
  %20 = bitcast %struct.CallInfo** %19 to i8**, !dbg !740
  %21 = load i8*, i8** %20, align 8, !dbg !740, !tbaa !426
  %22 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 14, !dbg !740
  %23 = load i32, i32* %22, align 4, !dbg !740, !tbaa !411
  %24 = sext i32 %23 to i64, !dbg !740
  %25 = mul nsw i64 %24, 40, !dbg !740
  %26 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* %21, i64 %25, i64 0) #3, !dbg !740
  %27 = bitcast %struct.lua_TValue** %4 to i8**, !dbg !741
  %28 = load i8*, i8** %27, align 8, !dbg !741, !tbaa !385
  %29 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 13, !dbg !741
  %30 = load i32, i32* %29, align 8, !dbg !741, !tbaa !388
  %31 = sext i32 %30 to i64, !dbg !741
  %32 = shl nsw i64 %31, 4, !dbg !741
  %33 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* %28, i64 %32, i64 0) #3, !dbg !741
  %34 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 1, !dbg !742
  %35 = load i8* (i8*, i8*, i64, i64)*, i8* (i8*, i8*, i64, i64)** %34, align 8, !dbg !742, !tbaa !585
  %36 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 2, !dbg !743
  %37 = load i8*, i8** %36, align 8, !dbg !743, !tbaa !588
  %38 = bitcast %struct.lua_State* %0 to i8*, !dbg !744
  %39 = tail call i8* %35(i8* %37, i8* %38, i64 616, i64 0) #3, !dbg !745
  ret void, !dbg !746
}

; Function Attrs: noredzone nounwind
define dso_local void @lua_close(%struct.lua_State* nocapture readonly) local_unnamed_addr #0 !dbg !747 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !751
  %3 = load %struct.global_State*, %struct.global_State** %2, align 8, !dbg !751, !tbaa !363
  %4 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 21, !dbg !752
  %5 = load %struct.lua_State*, %struct.lua_State** %4, align 8, !dbg !752, !tbaa !591
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5, i64 0, i32 10, !dbg !753
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8, !dbg !753, !tbaa !385
  tail call void @luaF_close(%struct.lua_State* %5, %struct.lua_TValue* %7) #3, !dbg !754
  %8 = tail call i64 @luaC_separateudata(%struct.lua_State* %5, i32 1) #3, !dbg !755
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5, i64 0, i32 27, !dbg !756
  store i64 0, i64* %9, align 8, !dbg !757, !tbaa !432
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5, i64 0, i32 12
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5, i64 0, i32 7
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5, i64 0, i32 4
  %13 = bitcast %struct.lua_TValue** %12 to i64*
  %14 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5, i64 0, i32 5
  %15 = bitcast %struct.lua_TValue** %14 to i64*
  %16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5, i64 0, i32 16
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5, i64 0, i32 15
  br label %18, !dbg !758

; <label>:18:                                     ; preds = %18, %1
  %19 = load %struct.CallInfo*, %struct.CallInfo** %10, align 8, !dbg !759, !tbaa !426
  store %struct.CallInfo* %19, %struct.CallInfo** %11, align 8, !dbg !761, !tbaa !423
  %20 = bitcast %struct.CallInfo* %19 to i64*, !dbg !762
  %21 = load i64, i64* %20, align 8, !dbg !762, !tbaa !472
  store i64 %21, i64* %13, align 8, !dbg !763, !tbaa !467
  store i64 %21, i64* %15, align 8, !dbg !764, !tbaa !475
  store i16 0, i16* %16, align 2, !dbg !765, !tbaa !414
  store i16 0, i16* %17, align 8, !dbg !766, !tbaa !417
  %22 = tail call i32 @luaD_rawrunprotected(%struct.lua_State* %5, void (%struct.lua_State*, i8*)* nonnull @callallgcTM, i8* null) #3, !dbg !767
  %23 = icmp eq i32 %22, 0, !dbg !768
  br i1 %23, label %24, label %18, !dbg !769, !llvm.loop !770

; <label>:24:                                     ; preds = %18
  tail call fastcc void @close_state(%struct.lua_State* nonnull %5) #5, !dbg !772
  ret void, !dbg !773
}

; Function Attrs: noredzone
declare hidden i64 @luaC_separateudata(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define internal void @callallgcTM(%struct.lua_State*, i8* nocapture readnone) #0 !dbg !774 {
  tail call void @luaC_callGCTM(%struct.lua_State* %0) #3, !dbg !780
  ret void, !dbg !781
}

; Function Attrs: noredzone
declare hidden %struct.Table* @luaH_new(%struct.lua_State*, i32, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare hidden void @luaS_resize(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare hidden void @luaT_init(%struct.lua_State*) local_unnamed_addr #1

; Function Attrs: noredzone
declare hidden void @luaX_init(%struct.lua_State*) local_unnamed_addr #1

; Function Attrs: noredzone
declare hidden %union.TString* @luaS_newlstr(%struct.lua_State*, i8*, i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare hidden void @luaC_freeall(%struct.lua_State*) local_unnamed_addr #1

; Function Attrs: noredzone
declare hidden void @luaC_callGCTM(%struct.lua_State*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone }

!llvm.module.flags = !{!342, !343, !344}
!llvm.ident = !{!345}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lstate.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !335, !36, !11, !336, !22, !275, !73, !250}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_State", file: !6, line: 50, baseType: !7)
!6 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lua.h", directory: "/root/.unikraft/apps/redis/build")
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lua_State", file: !8, line: 100, size: 1472, elements: !9)
!8 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lstate.h", directory: "/root/.unikraft/apps/redis/build")
!9 = !{!10, !210, !211, !212, !213, !215, !216, !274, !287, !288, !289, !290, !291, !292, !293, !294, !296, !297, !298, !299, !300, !301, !326, !327, !328, !329, !330, !333}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !7, file: !8, line: 101, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCObject", file: !13, line: 36, baseType: !14)
!13 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lobject.h", directory: "/root/.unikraft/apps/redis/build")
!14 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "GCObject", file: !8, line: 136, size: 1472, elements: !15)
!15 = !{!16, !26, !52, !111, !206, !207, !208, !209}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "gch", scope: !14, file: !8, line: 137, baseType: !17, size: 128)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCheader", file: !13, line: 51, baseType: !18)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GCheader", file: !13, line: 49, size: 128, elements: !19)
!19 = !{!20, !21, !25}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !18, file: !13, line: 50, baseType: !11, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !18, file: !13, line: 50, baseType: !22, size: 8, offset: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "lu_byte", file: !23, line: 27, baseType: !24)
!23 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/llimits.h", directory: "/root/.unikraft/apps/redis/build")
!24 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !18, file: !13, line: 50, baseType: !22, size: 8, offset: 72)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !14, file: !8, line: 138, baseType: !27, size: 192)
!27 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "TString", file: !13, line: 199, size: 192, elements: !28)
!28 = !{!29, !39}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !27, file: !13, line: 200, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "L_Umaxalign", file: !23, line: 47, baseType: !31)
!31 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !23, line: 47, size: 64, elements: !32)
!32 = !{!33, !35, !37}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !31, file: !23, line: 47, baseType: !34, size: 64)
!34 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !31, file: !23, line: 47, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !31, file: !23, line: 47, baseType: !38, size: 64)
!38 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "tsv", scope: !27, file: !13, line: 206, baseType: !40, size: 192)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !27, file: !13, line: 201, size: 192, elements: !41)
!41 = !{!42, !43, !44, !45, !46, !48}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !40, file: !13, line: 202, baseType: !11, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !40, file: !13, line: 202, baseType: !22, size: 8, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !40, file: !13, line: 202, baseType: !22, size: 8, offset: 72)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !40, file: !13, line: 203, baseType: !22, size: 8, offset: 80)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !40, file: !13, line: 204, baseType: !47, size: 32, offset: 96)
!47 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !40, file: !13, line: 205, baseType: !49, size: 64, offset: 128)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !50, line: 58, baseType: !51)
!50 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!51 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !14, file: !8, line: 139, baseType: !53, size: 320)
!53 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "Udata", file: !13, line: 215, size: 320, elements: !54)
!54 = !{!55, !56}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !53, file: !13, line: 216, baseType: !30, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "uv", scope: !53, file: !13, line: 222, baseType: !57, size: 320)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !53, file: !13, line: 217, size: 320, elements: !58)
!58 = !{!59, !60, !61, !62, !109, !110}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !57, file: !13, line: 218, baseType: !11, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !57, file: !13, line: 218, baseType: !22, size: 8, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !57, file: !13, line: 218, baseType: !22, size: 8, offset: 72)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "metatable", scope: !57, file: !13, line: 219, baseType: !63, size: 64, offset: 128)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Table", file: !13, line: 338, size: 512, elements: !65)
!65 = !{!66, !67, !68, !69, !70, !71, !72, !88, !106, !107, !108}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !64, file: !13, line: 339, baseType: !11, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !64, file: !13, line: 339, baseType: !22, size: 8, offset: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !64, file: !13, line: 339, baseType: !22, size: 8, offset: 72)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !64, file: !13, line: 340, baseType: !22, size: 8, offset: 80)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "lsizenode", scope: !64, file: !13, line: 341, baseType: !22, size: 8, offset: 88)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "metatable", scope: !64, file: !13, line: 342, baseType: !63, size: 64, offset: 128)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "array", scope: !64, file: !13, line: 343, baseType: !73, size: 64, offset: 192)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "TValue", file: !13, line: 75, baseType: !75)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lua_TValue", file: !13, line: 73, size: 128, elements: !76)
!76 = !{!77, !87}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !75, file: !13, line: 74, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "Value", file: !13, line: 64, baseType: !79)
!79 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !13, line: 59, size: 64, elements: !80)
!80 = !{!81, !82, !83, !85}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !79, file: !13, line: 60, baseType: !11, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !79, file: !13, line: 61, baseType: !36, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !79, file: !13, line: 62, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Number", file: !6, line: 99, baseType: !34)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !79, file: !13, line: 63, baseType: !86, size: 32)
!86 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !75, file: !13, line: 74, baseType: !86, size: 32, offset: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !64, file: !13, line: 344, baseType: !89, size: 64, offset: 256)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "Node", file: !13, line: 335, baseType: !91)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Node", file: !13, line: 332, size: 320, elements: !92)
!92 = !{!93, !94}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "i_val", scope: !91, file: !13, line: 333, baseType: !74, size: 128)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "i_key", scope: !91, file: !13, line: 334, baseType: !95, size: 192, offset: 128)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "TKey", file: !13, line: 329, baseType: !96)
!96 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "TKey", file: !13, line: 323, size: 192, elements: !97)
!97 = !{!98, !105}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "nk", scope: !96, file: !13, line: 327, baseType: !99, size: 192)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !96, file: !13, line: 324, size: 192, elements: !100)
!100 = !{!101, !102, !103}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !99, file: !13, line: 325, baseType: !78, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !99, file: !13, line: 325, baseType: !86, size: 32, offset: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !99, file: !13, line: 326, baseType: !104, size: 64, offset: 128)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "tvk", scope: !96, file: !13, line: 328, baseType: !74, size: 128)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "lastfree", scope: !64, file: !13, line: 345, baseType: !89, size: 64, offset: 320)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !64, file: !13, line: 346, baseType: !11, size: 64, offset: 384)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "sizearray", scope: !64, file: !13, line: 347, baseType: !86, size: 32, offset: 448)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !57, file: !13, line: 220, baseType: !63, size: 64, offset: 192)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !57, file: !13, line: 221, baseType: !49, size: 64, offset: 256)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !14, file: !8, line: 140, baseType: !112, size: 448)
!112 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "Closure", file: !13, line: 309, size: 448, elements: !113)
!113 = !{!114, !134}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !112, file: !13, line: 310, baseType: !115, size: 448)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "CClosure", file: !13, line: 299, baseType: !116)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CClosure", file: !13, line: 295, size: 448, elements: !117)
!117 = !{!118, !119, !120, !121, !122, !123, !124, !125, !130}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !116, file: !13, line: 296, baseType: !11, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !116, file: !13, line: 296, baseType: !22, size: 8, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !116, file: !13, line: 296, baseType: !22, size: 8, offset: 72)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "isC", scope: !116, file: !13, line: 296, baseType: !22, size: 8, offset: 80)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "nupvalues", scope: !116, file: !13, line: 296, baseType: !22, size: 8, offset: 88)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !116, file: !13, line: 296, baseType: !11, size: 64, offset: 128)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !116, file: !13, line: 296, baseType: !63, size: 64, offset: 192)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !116, file: !13, line: 297, baseType: !126, size: 64, offset: 256)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_CFunction", file: !6, line: 52, baseType: !127)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DISubroutineType(types: !129)
!129 = !{!86, !4}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "upvalue", scope: !116, file: !13, line: 298, baseType: !131, size: 128, offset: 320)
!131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 128, elements: !132)
!132 = !{!133}
!133 = !DISubrange(count: 1)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !112, file: !13, line: 311, baseType: !135, size: 384)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "LClosure", file: !13, line: 306, baseType: !136)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LClosure", file: !13, line: 302, size: 384, elements: !137)
!137 = !{!138, !139, !140, !141, !142, !143, !144, !145, !186}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !136, file: !13, line: 303, baseType: !11, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !136, file: !13, line: 303, baseType: !22, size: 8, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !136, file: !13, line: 303, baseType: !22, size: 8, offset: 72)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "isC", scope: !136, file: !13, line: 303, baseType: !22, size: 8, offset: 80)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "nupvalues", scope: !136, file: !13, line: 303, baseType: !22, size: 8, offset: 88)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !136, file: !13, line: 303, baseType: !11, size: 64, offset: 128)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !136, file: !13, line: 303, baseType: !63, size: 64, offset: 192)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !136, file: !13, line: 304, baseType: !146, size: 64, offset: 256)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Proto", file: !13, line: 231, size: 960, elements: !148)
!148 = !{!149, !150, !151, !152, !153, !157, !159, !161, !170, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !147, file: !13, line: 232, baseType: !11, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !147, file: !13, line: 232, baseType: !22, size: 8, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !147, file: !13, line: 232, baseType: !22, size: 8, offset: 72)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !147, file: !13, line: 233, baseType: !73, size: 64, offset: 128)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !147, file: !13, line: 234, baseType: !154, size: 64, offset: 192)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "Instruction", file: !23, line: 88, baseType: !156)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "lu_int32", file: !23, line: 18, baseType: !47)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !147, file: !13, line: 235, baseType: !158, size: 64, offset: 256)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "lineinfo", scope: !147, file: !13, line: 236, baseType: !160, size: 64, offset: 320)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "locvars", scope: !147, file: !13, line: 237, baseType: !162, size: 64, offset: 384)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LocVar", file: !13, line: 262, size: 128, elements: !164)
!164 = !{!165, !168, !169}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "varname", scope: !163, file: !13, line: 263, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "TString", file: !13, line: 207, baseType: !27)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "startpc", scope: !163, file: !13, line: 264, baseType: !86, size: 32, offset: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "endpc", scope: !163, file: !13, line: 265, baseType: !86, size: 32, offset: 96)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "upvalues", scope: !147, file: !13, line: 238, baseType: !171, size: 64, offset: 448)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !147, file: !13, line: 239, baseType: !166, size: 64, offset: 512)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "sizeupvalues", scope: !147, file: !13, line: 240, baseType: !86, size: 32, offset: 576)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "sizek", scope: !147, file: !13, line: 241, baseType: !86, size: 32, offset: 608)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "sizecode", scope: !147, file: !13, line: 242, baseType: !86, size: 32, offset: 640)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "sizelineinfo", scope: !147, file: !13, line: 243, baseType: !86, size: 32, offset: 672)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "sizep", scope: !147, file: !13, line: 244, baseType: !86, size: 32, offset: 704)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "sizelocvars", scope: !147, file: !13, line: 245, baseType: !86, size: 32, offset: 736)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "linedefined", scope: !147, file: !13, line: 246, baseType: !86, size: 32, offset: 768)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "lastlinedefined", scope: !147, file: !13, line: 247, baseType: !86, size: 32, offset: 800)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !147, file: !13, line: 248, baseType: !11, size: 64, offset: 832)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "nups", scope: !147, file: !13, line: 249, baseType: !22, size: 8, offset: 896)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "numparams", scope: !147, file: !13, line: 250, baseType: !22, size: 8, offset: 904)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "is_vararg", scope: !147, file: !13, line: 251, baseType: !22, size: 8, offset: 912)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "maxstacksize", scope: !147, file: !13, line: 252, baseType: !22, size: 8, offset: 920)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "upvals", scope: !136, file: !13, line: 305, baseType: !187, size: 64, offset: 320)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 64, elements: !132)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "UpVal", file: !13, line: 284, baseType: !190)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "UpVal", file: !13, line: 274, size: 320, elements: !191)
!191 = !{!192, !193, !194, !195, !196}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !190, file: !13, line: 275, baseType: !11, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !190, file: !13, line: 275, baseType: !22, size: 8, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !190, file: !13, line: 275, baseType: !22, size: 8, offset: 72)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !190, file: !13, line: 276, baseType: !73, size: 64, offset: 128)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !190, file: !13, line: 283, baseType: !197, size: 128, offset: 192)
!197 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !190, file: !13, line: 277, size: 128, elements: !198)
!198 = !{!199, !200}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !197, file: !13, line: 278, baseType: !74, size: 128)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !197, file: !13, line: 282, baseType: !201, size: 128)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !197, file: !13, line: 279, size: 128, elements: !202)
!202 = !{!203, !205}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !201, file: !13, line: 280, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !201, file: !13, line: 281, baseType: !204, size: 64, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "h", scope: !14, file: !8, line: 141, baseType: !64, size: 512)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !14, file: !8, line: 142, baseType: !147, size: 960)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "uv", scope: !14, file: !8, line: 143, baseType: !190, size: 320)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "th", scope: !14, file: !8, line: 144, baseType: !7, size: 1472)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !7, file: !8, line: 101, baseType: !22, size: 8, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !7, file: !8, line: 101, baseType: !22, size: 8, offset: 72)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !7, file: !8, line: 102, baseType: !22, size: 8, offset: 80)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !7, file: !8, line: 103, baseType: !214, size: 64, offset: 128)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "StkId", file: !13, line: 193, baseType: !73)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !7, file: !8, line: 104, baseType: !214, size: 64, offset: 192)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "l_G", scope: !7, file: !8, line: 105, baseType: !217, size: 64, offset: 256)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "global_State", file: !8, line: 94, baseType: !219)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "global_State", file: !8, line: 68, size: 3456, elements: !220)
!220 = !{!221, !229, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !254, !256, !257, !258, !259, !260, !261, !262, !263, !265, !266, !270}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "strt", scope: !219, file: !8, line: 69, baseType: !222, size: 128)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "stringtable", file: !8, line: 42, baseType: !223)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stringtable", file: !8, line: 38, size: 128, elements: !224)
!224 = !{!225, !227, !228}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !223, file: !8, line: 39, baseType: !226, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "nuse", scope: !223, file: !8, line: 40, baseType: !156, size: 32, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !223, file: !8, line: 41, baseType: !86, size: 32, offset: 96)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "frealloc", scope: !219, file: !8, line: 70, baseType: !230, size: 64, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Alloc", file: !6, line: 66, baseType: !231)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DISubroutineType(types: !233)
!233 = !{!36, !36, !36, !49, !49}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "ud", scope: !219, file: !8, line: 71, baseType: !36, size: 64, offset: 192)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "currentwhite", scope: !219, file: !8, line: 72, baseType: !22, size: 8, offset: 256)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "gcstate", scope: !219, file: !8, line: 73, baseType: !22, size: 8, offset: 264)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "sweepstrgc", scope: !219, file: !8, line: 74, baseType: !86, size: 32, offset: 288)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "rootgc", scope: !219, file: !8, line: 75, baseType: !11, size: 64, offset: 320)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "sweepgc", scope: !219, file: !8, line: 76, baseType: !226, size: 64, offset: 384)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "gray", scope: !219, file: !8, line: 77, baseType: !11, size: 64, offset: 448)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "grayagain", scope: !219, file: !8, line: 78, baseType: !11, size: 64, offset: 512)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "weak", scope: !219, file: !8, line: 79, baseType: !11, size: 64, offset: 576)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "tmudata", scope: !219, file: !8, line: 80, baseType: !11, size: 64, offset: 640)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "buff", scope: !219, file: !8, line: 81, baseType: !245, size: 192, offset: 704)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "Mbuffer", file: !246, line: 28, baseType: !247)
!246 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lzio.h", directory: "/root/.unikraft/apps/redis/build")
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Mbuffer", file: !246, line: 24, size: 192, elements: !248)
!248 = !{!249, !252, !253}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !247, file: !246, line: 25, baseType: !250, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !247, file: !246, line: 26, baseType: !49, size: 64, offset: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "buffsize", scope: !247, file: !246, line: 27, baseType: !49, size: 64, offset: 128)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "GCthreshold", scope: !219, file: !8, line: 82, baseType: !255, size: 64, offset: 896)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "lu_mem", file: !23, line: 20, baseType: !49)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "totalbytes", scope: !219, file: !8, line: 83, baseType: !255, size: 64, offset: 960)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "estimate", scope: !219, file: !8, line: 84, baseType: !255, size: 64, offset: 1024)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "gcdept", scope: !219, file: !8, line: 85, baseType: !255, size: 64, offset: 1088)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "gcpause", scope: !219, file: !8, line: 86, baseType: !86, size: 32, offset: 1152)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "gcstepmul", scope: !219, file: !8, line: 87, baseType: !86, size: 32, offset: 1184)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "panic", scope: !219, file: !8, line: 88, baseType: !126, size: 64, offset: 1216)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "l_registry", scope: !219, file: !8, line: 89, baseType: !74, size: 128, offset: 1280)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "mainthread", scope: !219, file: !8, line: 90, baseType: !264, size: 64, offset: 1408)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "uvhead", scope: !219, file: !8, line: 91, baseType: !189, size: 320, offset: 1472)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "mt", scope: !219, file: !8, line: 92, baseType: !267, size: 576, offset: 1792)
!267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 576, elements: !268)
!268 = !{!269}
!269 = !DISubrange(count: 9)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "tmname", scope: !219, file: !8, line: 93, baseType: !271, size: 1088, offset: 2368)
!271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 1088, elements: !272)
!272 = !{!273}
!273 = !DISubrange(count: 17)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "ci", scope: !7, file: !8, line: 106, baseType: !275, size: 64, offset: 320)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "CallInfo", file: !8, line: 55, baseType: !277)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CallInfo", file: !8, line: 48, size: 320, elements: !278)
!278 = !{!279, !280, !281, !282, !285, !286}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !277, file: !8, line: 49, baseType: !214, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !277, file: !8, line: 50, baseType: !214, size: 64, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !277, file: !8, line: 51, baseType: !214, size: 64, offset: 128)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "savedpc", scope: !277, file: !8, line: 52, baseType: !283, size: 64, offset: 192)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !155)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "nresults", scope: !277, file: !8, line: 53, baseType: !86, size: 32, offset: 256)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "tailcalls", scope: !277, file: !8, line: 54, baseType: !86, size: 32, offset: 288)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "savedpc", scope: !7, file: !8, line: 107, baseType: !283, size: 64, offset: 384)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "stack_last", scope: !7, file: !8, line: 108, baseType: !214, size: 64, offset: 448)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !7, file: !8, line: 109, baseType: !214, size: 64, offset: 512)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "end_ci", scope: !7, file: !8, line: 110, baseType: !275, size: 64, offset: 576)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "base_ci", scope: !7, file: !8, line: 111, baseType: !275, size: 64, offset: 640)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "stacksize", scope: !7, file: !8, line: 112, baseType: !86, size: 32, offset: 704)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "size_ci", scope: !7, file: !8, line: 113, baseType: !86, size: 32, offset: 736)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "nCcalls", scope: !7, file: !8, line: 114, baseType: !295, size: 16, offset: 768)
!295 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "baseCcalls", scope: !7, file: !8, line: 115, baseType: !295, size: 16, offset: 784)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "hookmask", scope: !7, file: !8, line: 116, baseType: !22, size: 8, offset: 800)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "allowhook", scope: !7, file: !8, line: 117, baseType: !22, size: 8, offset: 808)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "basehookcount", scope: !7, file: !8, line: 118, baseType: !86, size: 32, offset: 832)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "hookcount", scope: !7, file: !8, line: 119, baseType: !86, size: 32, offset: 864)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "hook", scope: !7, file: !8, line: 120, baseType: !302, size: 64, offset: 896)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Hook", file: !6, line: 330, baseType: !303)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DISubroutineType(types: !305)
!305 = !{null, !4, !306}
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Debug", file: !6, line: 326, baseType: !308)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lua_Debug", file: !6, line: 346, size: 960, elements: !309)
!309 = !{!310, !311, !314, !315, !316, !317, !318, !319, !320, !321, !325}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !308, file: !6, line: 347, baseType: !86, size: 32)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !308, file: !6, line: 348, baseType: !312, size: 64, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !251)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "namewhat", scope: !308, file: !6, line: 349, baseType: !312, size: 64, offset: 128)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "what", scope: !308, file: !6, line: 350, baseType: !312, size: 64, offset: 192)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !308, file: !6, line: 351, baseType: !312, size: 64, offset: 256)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "currentline", scope: !308, file: !6, line: 352, baseType: !86, size: 32, offset: 320)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "nups", scope: !308, file: !6, line: 353, baseType: !86, size: 32, offset: 352)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "linedefined", scope: !308, file: !6, line: 354, baseType: !86, size: 32, offset: 384)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "lastlinedefined", scope: !308, file: !6, line: 355, baseType: !86, size: 32, offset: 416)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "short_src", scope: !308, file: !6, line: 356, baseType: !322, size: 480, offset: 448)
!322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 480, elements: !323)
!323 = !{!324}
!324 = !DISubrange(count: 60)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "i_ci", scope: !308, file: !6, line: 358, baseType: !86, size: 32, offset: 928)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "l_gt", scope: !7, file: !8, line: 121, baseType: !74, size: 128, offset: 960)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !7, file: !8, line: 122, baseType: !74, size: 128, offset: 1088)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "openupval", scope: !7, file: !8, line: 123, baseType: !11, size: 64, offset: 1216)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !7, file: !8, line: 124, baseType: !11, size: 64, offset: 1280)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "errorJmp", scope: !7, file: !8, line: 125, baseType: !331, size: 64, offset: 1344)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DICompositeType(tag: DW_TAG_structure_type, name: "lua_longjmp", file: !8, line: 18, flags: DIFlagFwdDecl)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "errfunc", scope: !7, file: !8, line: 126, baseType: !334, size: 64, offset: 1408)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !50, line: 49, baseType: !38)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "LG", file: !1, line: 38, baseType: !338)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LG", file: !1, line: 35, size: 4928, elements: !339)
!339 = !{!340, !341}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !338, file: !1, line: 36, baseType: !5, size: 1472)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !338, file: !1, line: 37, baseType: !218, size: 3456, offset: 1472)
!342 = !{i32 2, !"Dwarf Version", i32 4}
!343 = !{i32 2, !"Debug Info Version", i32 3}
!344 = !{i32 1, !"wchar_size", i32 4}
!345 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!346 = distinct !DISubprogram(name: "luaE_newthread", scope: !1, file: !1, line: 119, type: !347, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !349)
!347 = !DISubroutineType(types: !348)
!348 = !{!4, !4}
!349 = !{!350, !351, !352, !356}
!350 = !DILocalVariable(name: "L", arg: 1, scope: !346, file: !1, line: 119, type: !4)
!351 = !DILocalVariable(name: "L1", scope: !346, file: !1, line: 120, type: !4)
!352 = !DILocalVariable(name: "o2", scope: !353, file: !1, line: 124, type: !354)
!353 = distinct !DILexicalBlock(scope: !346, file: !1, line: 124, column: 3)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!356 = !DILocalVariable(name: "o1", scope: !353, file: !1, line: 124, type: !73)
!357 = !DILocation(line: 119, column: 39, scope: !346)
!358 = !DILocation(line: 120, column: 19, scope: !346)
!359 = !DILocation(line: 120, column: 14, scope: !346)
!360 = !DILocation(line: 121, column: 16, scope: !346)
!361 = !DILocation(line: 121, column: 3, scope: !346)
!362 = !DILocation(line: 122, column: 21, scope: !346)
!363 = !{!364, !365, i64 32}
!364 = !{!"lua_State", !365, i64 0, !366, i64 8, !366, i64 9, !366, i64 10, !365, i64 16, !365, i64 24, !365, i64 32, !365, i64 40, !365, i64 48, !365, i64 56, !365, i64 64, !365, i64 72, !365, i64 80, !368, i64 88, !368, i64 92, !369, i64 96, !369, i64 98, !366, i64 100, !366, i64 101, !368, i64 104, !368, i64 108, !365, i64 112, !370, i64 120, !370, i64 136, !365, i64 152, !365, i64 160, !365, i64 168, !371, i64 176}
!365 = !{!"any pointer", !366, i64 0}
!366 = !{!"omnipotent char", !367, i64 0}
!367 = !{!"Simple C/C++ TBAA"}
!368 = !{!"int", !366, i64 0}
!369 = !{!"short", !366, i64 0}
!370 = !{!"lua_TValue", !366, i64 0, !368, i64 8}
!371 = !{!"long", !366, i64 0}
!372 = !DILocalVariable(name: "L", arg: 1, scope: !373, file: !1, line: 84, type: !4)
!373 = distinct !DISubprogram(name: "preinit_state", scope: !1, file: !1, line: 84, type: !374, isLocal: true, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !376)
!374 = !DISubroutineType(types: !375)
!375 = !{null, !4, !217}
!376 = !{!372, !377}
!377 = !DILocalVariable(name: "g", arg: 2, scope: !373, file: !1, line: 84, type: !217)
!378 = !DILocation(line: 84, column: 39, scope: !373, inlinedAt: !379)
!379 = distinct !DILocation(line: 122, column: 3, scope: !346)
!380 = !DILocation(line: 84, column: 56, scope: !373, inlinedAt: !379)
!381 = !DILocation(line: 85, column: 3, scope: !373, inlinedAt: !379)
!382 = !DILocation(line: 85, column: 8, scope: !373, inlinedAt: !379)
!383 = !DILocation(line: 86, column: 6, scope: !373, inlinedAt: !379)
!384 = !DILocation(line: 86, column: 12, scope: !373, inlinedAt: !379)
!385 = !{!364, !365, i64 64}
!386 = !DILocation(line: 87, column: 6, scope: !373, inlinedAt: !379)
!387 = !DILocation(line: 87, column: 16, scope: !373, inlinedAt: !379)
!388 = !{!364, !368, i64 88}
!389 = !DILocation(line: 88, column: 6, scope: !373, inlinedAt: !379)
!390 = !DILocation(line: 88, column: 15, scope: !373, inlinedAt: !379)
!391 = !{!364, !365, i64 168}
!392 = !DILocation(line: 89, column: 6, scope: !373, inlinedAt: !379)
!393 = !DILocation(line: 89, column: 11, scope: !373, inlinedAt: !379)
!394 = !{!364, !365, i64 112}
!395 = !DILocation(line: 90, column: 6, scope: !373, inlinedAt: !379)
!396 = !DILocation(line: 90, column: 15, scope: !373, inlinedAt: !379)
!397 = !{!364, !366, i64 100}
!398 = !DILocation(line: 91, column: 6, scope: !373, inlinedAt: !379)
!399 = !DILocation(line: 91, column: 20, scope: !373, inlinedAt: !379)
!400 = !{!364, !368, i64 104}
!401 = !DILocation(line: 92, column: 6, scope: !373, inlinedAt: !379)
!402 = !DILocation(line: 92, column: 16, scope: !373, inlinedAt: !379)
!403 = !{!364, !366, i64 101}
!404 = !DILocation(line: 93, column: 3, scope: !373, inlinedAt: !379)
!405 = !{!364, !368, i64 108}
!406 = !DILocation(line: 94, column: 6, scope: !373, inlinedAt: !379)
!407 = !DILocation(line: 94, column: 16, scope: !373, inlinedAt: !379)
!408 = !{!364, !365, i64 152}
!409 = !DILocation(line: 95, column: 6, scope: !373, inlinedAt: !379)
!410 = !DILocation(line: 95, column: 14, scope: !373, inlinedAt: !379)
!411 = !{!364, !368, i64 92}
!412 = !DILocation(line: 96, column: 19, scope: !373, inlinedAt: !379)
!413 = !DILocation(line: 96, column: 30, scope: !373, inlinedAt: !379)
!414 = !{!364, !369, i64 98}
!415 = !DILocation(line: 96, column: 6, scope: !373, inlinedAt: !379)
!416 = !DILocation(line: 96, column: 14, scope: !373, inlinedAt: !379)
!417 = !{!364, !369, i64 96}
!418 = !DILocation(line: 97, column: 6, scope: !373, inlinedAt: !379)
!419 = !DILocation(line: 97, column: 13, scope: !373, inlinedAt: !379)
!420 = !{!364, !366, i64 10}
!421 = !DILocation(line: 98, column: 19, scope: !373, inlinedAt: !379)
!422 = !DILocation(line: 98, column: 22, scope: !373, inlinedAt: !379)
!423 = !{!364, !365, i64 40}
!424 = !DILocation(line: 98, column: 6, scope: !373, inlinedAt: !379)
!425 = !DILocation(line: 98, column: 14, scope: !373, inlinedAt: !379)
!426 = !{!364, !365, i64 80}
!427 = !DILocation(line: 99, column: 6, scope: !373, inlinedAt: !379)
!428 = !DILocation(line: 99, column: 14, scope: !373, inlinedAt: !379)
!429 = !{!364, !365, i64 48}
!430 = !DILocation(line: 100, column: 6, scope: !373, inlinedAt: !379)
!431 = !DILocation(line: 100, column: 14, scope: !373, inlinedAt: !379)
!432 = !{!364, !371, i64 176}
!433 = !DILocation(line: 101, column: 3, scope: !373, inlinedAt: !379)
!434 = !{!364, !368, i64 128}
!435 = !DILocalVariable(name: "L1", arg: 1, scope: !436, file: !1, line: 42, type: !4)
!436 = distinct !DISubprogram(name: "stack_init", scope: !1, file: !1, line: 42, type: !437, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !439)
!437 = !DISubroutineType(types: !438)
!438 = !{null, !4, !4}
!439 = !{!435, !440}
!440 = !DILocalVariable(name: "L", arg: 2, scope: !436, file: !1, line: 42, type: !4)
!441 = !DILocation(line: 42, column: 36, scope: !436, inlinedAt: !442)
!442 = distinct !DILocation(line: 123, column: 3, scope: !346)
!443 = !DILocation(line: 42, column: 51, scope: !436, inlinedAt: !442)
!444 = !DILocation(line: 44, column: 17, scope: !436, inlinedAt: !442)
!445 = !DILocation(line: 44, column: 15, scope: !436, inlinedAt: !442)
!446 = !DILocation(line: 45, column: 10, scope: !436, inlinedAt: !442)
!447 = !DILocation(line: 46, column: 15, scope: !436, inlinedAt: !442)
!448 = !DILocation(line: 47, column: 42, scope: !436, inlinedAt: !442)
!449 = !DILocation(line: 47, column: 7, scope: !436, inlinedAt: !442)
!450 = !DILocation(line: 47, column: 14, scope: !436, inlinedAt: !442)
!451 = !{!364, !365, i64 72}
!452 = !DILocation(line: 49, column: 15, scope: !436, inlinedAt: !442)
!453 = !DILocation(line: 49, column: 13, scope: !436, inlinedAt: !442)
!454 = !DILocation(line: 50, column: 17, scope: !436, inlinedAt: !442)
!455 = !DILocation(line: 51, column: 17, scope: !436, inlinedAt: !442)
!456 = !DILocation(line: 51, column: 7, scope: !436, inlinedAt: !442)
!457 = !DILocation(line: 52, column: 59, scope: !436, inlinedAt: !442)
!458 = !DILocation(line: 52, column: 7, scope: !436, inlinedAt: !442)
!459 = !DILocation(line: 52, column: 18, scope: !436, inlinedAt: !442)
!460 = !{!364, !365, i64 56}
!461 = !DILocation(line: 54, column: 7, scope: !436, inlinedAt: !442)
!462 = !DILocation(line: 54, column: 11, scope: !436, inlinedAt: !442)
!463 = !DILocation(line: 54, column: 16, scope: !436, inlinedAt: !442)
!464 = !{!465, !365, i64 8}
!465 = !{!"CallInfo", !365, i64 0, !365, i64 8, !365, i64 16, !365, i64 24, !368, i64 32, !368, i64 36}
!466 = !DILocation(line: 55, column: 3, scope: !436, inlinedAt: !442)
!467 = !{!364, !365, i64 16}
!468 = !{!370, !368, i64 8}
!469 = !DILocation(line: 56, column: 33, scope: !436, inlinedAt: !442)
!470 = !DILocation(line: 56, column: 18, scope: !436, inlinedAt: !442)
!471 = !DILocation(line: 56, column: 27, scope: !436, inlinedAt: !442)
!472 = !{!465, !365, i64 0}
!473 = !DILocation(line: 56, column: 7, scope: !436, inlinedAt: !442)
!474 = !DILocation(line: 56, column: 12, scope: !436, inlinedAt: !442)
!475 = !{!364, !365, i64 24}
!476 = !DILocation(line: 57, column: 25, scope: !436, inlinedAt: !442)
!477 = !DILocation(line: 57, column: 11, scope: !436, inlinedAt: !442)
!478 = !DILocation(line: 57, column: 15, scope: !436, inlinedAt: !442)
!479 = !{!465, !365, i64 16}
!480 = !DILocation(line: 124, column: 3, scope: !353)
!481 = !DILocation(line: 125, column: 21, scope: !346)
!482 = !DILocation(line: 125, column: 16, scope: !346)
!483 = !DILocation(line: 126, column: 26, scope: !346)
!484 = !DILocation(line: 126, column: 21, scope: !346)
!485 = !DILocation(line: 127, column: 17, scope: !346)
!486 = !DILocation(line: 127, column: 12, scope: !346)
!487 = !DILocation(line: 128, column: 3, scope: !346)
!488 = !DILocation(line: 130, column: 3, scope: !346)
!489 = distinct !DISubprogram(name: "luaE_freethread", scope: !1, file: !1, line: 134, type: !437, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !490)
!490 = !{!491, !492}
!491 = !DILocalVariable(name: "L", arg: 1, scope: !489, file: !1, line: 134, type: !4)
!492 = !DILocalVariable(name: "L1", arg: 2, scope: !489, file: !1, line: 134, type: !4)
!493 = !DILocation(line: 134, column: 34, scope: !489)
!494 = !DILocation(line: 134, column: 48, scope: !489)
!495 = !DILocation(line: 135, column: 22, scope: !489)
!496 = !DILocation(line: 135, column: 3, scope: !489)
!497 = !DILocalVariable(name: "L", arg: 1, scope: !498, file: !1, line: 61, type: !4)
!498 = distinct !DISubprogram(name: "freestack", scope: !1, file: !1, line: 61, type: !437, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !499)
!499 = !{!497, !500}
!500 = !DILocalVariable(name: "L1", arg: 2, scope: !498, file: !1, line: 61, type: !4)
!501 = !DILocation(line: 61, column: 35, scope: !498, inlinedAt: !502)
!502 = distinct !DILocation(line: 138, column: 3, scope: !489)
!503 = !DILocation(line: 61, column: 49, scope: !498, inlinedAt: !502)
!504 = !DILocation(line: 62, column: 3, scope: !498, inlinedAt: !502)
!505 = !DILocation(line: 63, column: 3, scope: !498, inlinedAt: !502)
!506 = !DILocation(line: 139, column: 3, scope: !489)
!507 = !DILocation(line: 140, column: 1, scope: !489)
!508 = distinct !DISubprogram(name: "lua_newstate", scope: !1, file: !1, line: 143, type: !509, isLocal: false, isDefinition: true, scopeLine: 143, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !511)
!509 = !DISubroutineType(types: !510)
!510 = !{!4, !230, !36}
!511 = !{!512, !513, !514, !515, !516, !517}
!512 = !DILocalVariable(name: "f", arg: 1, scope: !508, file: !1, line: 143, type: !230)
!513 = !DILocalVariable(name: "ud", arg: 2, scope: !508, file: !1, line: 143, type: !36)
!514 = !DILocalVariable(name: "i", scope: !508, file: !1, line: 144, type: !86)
!515 = !DILocalVariable(name: "L", scope: !508, file: !1, line: 145, type: !4)
!516 = !DILocalVariable(name: "g", scope: !508, file: !1, line: 146, type: !217)
!517 = !DILocalVariable(name: "l", scope: !508, file: !1, line: 147, type: !36)
!518 = !DILocation(line: 143, column: 44, scope: !508)
!519 = !DILocation(line: 143, column: 53, scope: !508)
!520 = !DILocation(line: 147, column: 13, scope: !508)
!521 = !DILocation(line: 147, column: 9, scope: !508)
!522 = !DILocation(line: 148, column: 9, scope: !523)
!523 = distinct !DILexicalBlock(scope: !508, file: !1, line: 148, column: 7)
!524 = !DILocation(line: 148, column: 7, scope: !508)
!525 = !DILocation(line: 145, column: 14, scope: !508)
!526 = !DILocation(line: 150, column: 19, scope: !508)
!527 = !DILocation(line: 146, column: 17, scope: !508)
!528 = !DILocation(line: 151, column: 6, scope: !508)
!529 = !DILocation(line: 151, column: 11, scope: !508)
!530 = !{!364, !365, i64 0}
!531 = !DILocation(line: 152, column: 6, scope: !508)
!532 = !DILocation(line: 152, column: 9, scope: !508)
!533 = !{!364, !366, i64 8}
!534 = !DILocation(line: 153, column: 6, scope: !508)
!535 = !DILocation(line: 153, column: 19, scope: !508)
!536 = !{!537, !366, i64 32}
!537 = !{!"global_State", !538, i64 0, !365, i64 16, !365, i64 24, !366, i64 32, !366, i64 33, !368, i64 36, !365, i64 40, !365, i64 48, !365, i64 56, !365, i64 64, !365, i64 72, !365, i64 80, !539, i64 88, !371, i64 112, !371, i64 120, !371, i64 128, !371, i64 136, !368, i64 144, !368, i64 148, !365, i64 152, !370, i64 160, !365, i64 176, !540, i64 184, !366, i64 224, !366, i64 296}
!538 = !{!"stringtable", !365, i64 0, !368, i64 8, !368, i64 12}
!539 = !{!"Mbuffer", !365, i64 0, !371, i64 8, !371, i64 16}
!540 = !{!"UpVal", !365, i64 0, !366, i64 8, !366, i64 9, !365, i64 16, !366, i64 24}
!541 = !DILocation(line: 154, column: 6, scope: !508)
!542 = !DILocation(line: 155, column: 3, scope: !508)
!543 = !{!364, !366, i64 9}
!544 = !DILocation(line: 84, column: 39, scope: !373, inlinedAt: !545)
!545 = distinct !DILocation(line: 156, column: 3, scope: !508)
!546 = !DILocation(line: 84, column: 56, scope: !373, inlinedAt: !545)
!547 = !DILocation(line: 85, column: 3, scope: !373, inlinedAt: !545)
!548 = !DILocation(line: 85, column: 8, scope: !373, inlinedAt: !545)
!549 = !DILocation(line: 86, column: 6, scope: !373, inlinedAt: !545)
!550 = !DILocation(line: 86, column: 12, scope: !373, inlinedAt: !545)
!551 = !DILocation(line: 87, column: 6, scope: !373, inlinedAt: !545)
!552 = !DILocation(line: 87, column: 16, scope: !373, inlinedAt: !545)
!553 = !DILocation(line: 88, column: 6, scope: !373, inlinedAt: !545)
!554 = !DILocation(line: 88, column: 15, scope: !373, inlinedAt: !545)
!555 = !DILocation(line: 89, column: 6, scope: !373, inlinedAt: !545)
!556 = !DILocation(line: 89, column: 11, scope: !373, inlinedAt: !545)
!557 = !DILocation(line: 90, column: 6, scope: !373, inlinedAt: !545)
!558 = !DILocation(line: 90, column: 15, scope: !373, inlinedAt: !545)
!559 = !DILocation(line: 91, column: 6, scope: !373, inlinedAt: !545)
!560 = !DILocation(line: 91, column: 20, scope: !373, inlinedAt: !545)
!561 = !DILocation(line: 92, column: 6, scope: !373, inlinedAt: !545)
!562 = !DILocation(line: 92, column: 16, scope: !373, inlinedAt: !545)
!563 = !DILocation(line: 93, column: 3, scope: !373, inlinedAt: !545)
!564 = !DILocation(line: 94, column: 6, scope: !373, inlinedAt: !545)
!565 = !DILocation(line: 94, column: 16, scope: !373, inlinedAt: !545)
!566 = !DILocation(line: 95, column: 6, scope: !373, inlinedAt: !545)
!567 = !DILocation(line: 95, column: 14, scope: !373, inlinedAt: !545)
!568 = !DILocation(line: 96, column: 19, scope: !373, inlinedAt: !545)
!569 = !DILocation(line: 96, column: 30, scope: !373, inlinedAt: !545)
!570 = !DILocation(line: 96, column: 6, scope: !373, inlinedAt: !545)
!571 = !DILocation(line: 96, column: 14, scope: !373, inlinedAt: !545)
!572 = !DILocation(line: 97, column: 6, scope: !373, inlinedAt: !545)
!573 = !DILocation(line: 97, column: 13, scope: !373, inlinedAt: !545)
!574 = !DILocation(line: 98, column: 19, scope: !373, inlinedAt: !545)
!575 = !DILocation(line: 98, column: 22, scope: !373, inlinedAt: !545)
!576 = !DILocation(line: 98, column: 6, scope: !373, inlinedAt: !545)
!577 = !DILocation(line: 98, column: 14, scope: !373, inlinedAt: !545)
!578 = !DILocation(line: 99, column: 6, scope: !373, inlinedAt: !545)
!579 = !DILocation(line: 99, column: 14, scope: !373, inlinedAt: !545)
!580 = !DILocation(line: 100, column: 6, scope: !373, inlinedAt: !545)
!581 = !DILocation(line: 100, column: 14, scope: !373, inlinedAt: !545)
!582 = !DILocation(line: 101, column: 3, scope: !373, inlinedAt: !545)
!583 = !DILocation(line: 157, column: 6, scope: !508)
!584 = !DILocation(line: 157, column: 15, scope: !508)
!585 = !{!537, !365, i64 16}
!586 = !DILocation(line: 158, column: 6, scope: !508)
!587 = !DILocation(line: 158, column: 9, scope: !508)
!588 = !{!537, !365, i64 24}
!589 = !DILocation(line: 159, column: 6, scope: !508)
!590 = !DILocation(line: 159, column: 17, scope: !508)
!591 = !{!537, !365, i64 176}
!592 = !DILocation(line: 160, column: 28, scope: !508)
!593 = !DILocation(line: 160, column: 13, scope: !508)
!594 = !DILocation(line: 160, column: 22, scope: !508)
!595 = !{!366, !366, i64 0}
!596 = !DILocation(line: 161, column: 17, scope: !508)
!597 = !DILocation(line: 161, column: 22, scope: !508)
!598 = !DILocation(line: 162, column: 6, scope: !508)
!599 = !DILocation(line: 162, column: 18, scope: !508)
!600 = !{!537, !371, i64 112}
!601 = !DILocation(line: 163, column: 11, scope: !508)
!602 = !DILocation(line: 163, column: 16, scope: !508)
!603 = !{!537, !368, i64 12}
!604 = !DILocation(line: 164, column: 11, scope: !508)
!605 = !DILocation(line: 164, column: 16, scope: !508)
!606 = !{!537, !368, i64 8}
!607 = !DILocation(line: 165, column: 11, scope: !508)
!608 = !DILocation(line: 165, column: 16, scope: !508)
!609 = !{!537, !365, i64 0}
!610 = !DILocation(line: 166, column: 3, scope: !508)
!611 = !{!537, !368, i64 168}
!612 = !DILocation(line: 167, column: 3, scope: !508)
!613 = !{!537, !365, i64 88}
!614 = !{!537, !371, i64 104}
!615 = !DILocation(line: 168, column: 6, scope: !508)
!616 = !DILocation(line: 168, column: 12, scope: !508)
!617 = !{!537, !365, i64 152}
!618 = !DILocation(line: 169, column: 6, scope: !508)
!619 = !DILocation(line: 169, column: 14, scope: !508)
!620 = !{!537, !366, i64 33}
!621 = !DILocation(line: 170, column: 6, scope: !508)
!622 = !DILocation(line: 170, column: 13, scope: !508)
!623 = !{!537, !365, i64 40}
!624 = !DILocation(line: 171, column: 6, scope: !508)
!625 = !DILocation(line: 171, column: 17, scope: !508)
!626 = !{!537, !368, i64 36}
!627 = !DILocation(line: 172, column: 6, scope: !508)
!628 = !DILocation(line: 172, column: 14, scope: !508)
!629 = !{!537, !365, i64 48}
!630 = !DILocation(line: 173, column: 6, scope: !508)
!631 = !DILocation(line: 173, column: 11, scope: !508)
!632 = !{!365, !365, i64 0}
!633 = !DILocation(line: 175, column: 6, scope: !508)
!634 = !DILocation(line: 175, column: 11, scope: !508)
!635 = !DILocation(line: 177, column: 6, scope: !508)
!636 = !DILocation(line: 177, column: 17, scope: !508)
!637 = !{!537, !371, i64 120}
!638 = !DILocation(line: 178, column: 6, scope: !508)
!639 = !DILocation(line: 178, column: 14, scope: !508)
!640 = !{!537, !368, i64 144}
!641 = !DILocation(line: 179, column: 6, scope: !508)
!642 = !DILocation(line: 179, column: 16, scope: !508)
!643 = !{!537, !368, i64 148}
!644 = !DILocation(line: 180, column: 6, scope: !508)
!645 = !DILocation(line: 180, column: 13, scope: !508)
!646 = !{!537, !371, i64 136}
!647 = !DILocation(line: 144, column: 7, scope: !508)
!648 = !DILocation(line: 181, column: 39, scope: !649)
!649 = distinct !DILexicalBlock(scope: !650, file: !1, line: 181, column: 3)
!650 = distinct !DILexicalBlock(scope: !508, file: !1, line: 181, column: 3)
!651 = !DILocation(line: 181, column: 30, scope: !649)
!652 = !DILocation(line: 149, column: 7, scope: !508)
!653 = !DILocation(line: 182, column: 7, scope: !654)
!654 = distinct !DILexicalBlock(scope: !508, file: !1, line: 182, column: 7)
!655 = !DILocation(line: 182, column: 48, scope: !654)
!656 = !DILocation(line: 182, column: 7, scope: !508)
!657 = !DILocation(line: 184, column: 5, scope: !658)
!658 = distinct !DILexicalBlock(scope: !654, file: !1, line: 182, column: 54)
!659 = !DILocation(line: 186, column: 3, scope: !658)
!660 = !DILocation(line: 0, scope: !508)
!661 = !DILocation(line: 190, column: 1, scope: !508)
!662 = distinct !DISubprogram(name: "f_luaopen", scope: !1, file: !1, line: 70, type: !663, isLocal: true, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !665)
!663 = !DISubroutineType(types: !664)
!664 = !{null, !4, !36}
!665 = !{!666, !667, !668, !669, !671}
!666 = !DILocalVariable(name: "L", arg: 1, scope: !662, file: !1, line: 70, type: !4)
!667 = !DILocalVariable(name: "ud", arg: 2, scope: !662, file: !1, line: 70, type: !36)
!668 = !DILocalVariable(name: "g", scope: !662, file: !1, line: 71, type: !217)
!669 = !DILocalVariable(name: "i_o", scope: !670, file: !1, line: 74, type: !73)
!670 = distinct !DILexicalBlock(scope: !662, file: !1, line: 74, column: 3)
!671 = !DILocalVariable(name: "i_o", scope: !672, file: !1, line: 75, type: !73)
!672 = distinct !DILexicalBlock(scope: !662, file: !1, line: 75, column: 3)
!673 = !DILocation(line: 70, column: 35, scope: !662)
!674 = !DILocation(line: 70, column: 44, scope: !662)
!675 = !DILocation(line: 71, column: 21, scope: !662)
!676 = !DILocation(line: 71, column: 17, scope: !662)
!677 = !DILocation(line: 42, column: 36, scope: !436, inlinedAt: !678)
!678 = distinct !DILocation(line: 73, column: 3, scope: !662)
!679 = !DILocation(line: 42, column: 51, scope: !436, inlinedAt: !678)
!680 = !DILocation(line: 44, column: 17, scope: !436, inlinedAt: !678)
!681 = !DILocation(line: 44, column: 7, scope: !436, inlinedAt: !678)
!682 = !DILocation(line: 44, column: 15, scope: !436, inlinedAt: !678)
!683 = !DILocation(line: 45, column: 7, scope: !436, inlinedAt: !678)
!684 = !DILocation(line: 45, column: 10, scope: !436, inlinedAt: !678)
!685 = !DILocation(line: 46, column: 7, scope: !436, inlinedAt: !678)
!686 = !DILocation(line: 46, column: 15, scope: !436, inlinedAt: !678)
!687 = !DILocation(line: 47, column: 42, scope: !436, inlinedAt: !678)
!688 = !DILocation(line: 47, column: 7, scope: !436, inlinedAt: !678)
!689 = !DILocation(line: 47, column: 14, scope: !436, inlinedAt: !678)
!690 = !DILocation(line: 49, column: 15, scope: !436, inlinedAt: !678)
!691 = !DILocation(line: 49, column: 7, scope: !436, inlinedAt: !678)
!692 = !DILocation(line: 49, column: 13, scope: !436, inlinedAt: !678)
!693 = !DILocation(line: 50, column: 7, scope: !436, inlinedAt: !678)
!694 = !DILocation(line: 50, column: 17, scope: !436, inlinedAt: !678)
!695 = !DILocation(line: 51, column: 17, scope: !436, inlinedAt: !678)
!696 = !DILocation(line: 51, column: 7, scope: !436, inlinedAt: !678)
!697 = !DILocation(line: 52, column: 59, scope: !436, inlinedAt: !678)
!698 = !DILocation(line: 52, column: 7, scope: !436, inlinedAt: !678)
!699 = !DILocation(line: 52, column: 18, scope: !436, inlinedAt: !678)
!700 = !DILocation(line: 54, column: 7, scope: !436, inlinedAt: !678)
!701 = !DILocation(line: 54, column: 11, scope: !436, inlinedAt: !678)
!702 = !DILocation(line: 54, column: 16, scope: !436, inlinedAt: !678)
!703 = !DILocation(line: 55, column: 3, scope: !436, inlinedAt: !678)
!704 = !DILocation(line: 56, column: 33, scope: !436, inlinedAt: !678)
!705 = !DILocation(line: 56, column: 18, scope: !436, inlinedAt: !678)
!706 = !DILocation(line: 56, column: 27, scope: !436, inlinedAt: !678)
!707 = !DILocation(line: 56, column: 7, scope: !436, inlinedAt: !678)
!708 = !DILocation(line: 56, column: 12, scope: !436, inlinedAt: !678)
!709 = !DILocation(line: 57, column: 25, scope: !436, inlinedAt: !678)
!710 = !DILocation(line: 57, column: 11, scope: !436, inlinedAt: !678)
!711 = !DILocation(line: 57, column: 15, scope: !436, inlinedAt: !678)
!712 = !DILocation(line: 74, column: 3, scope: !670)
!713 = !DILocation(line: 75, column: 3, scope: !672)
!714 = !DILocation(line: 76, column: 3, scope: !662)
!715 = !DILocation(line: 77, column: 3, scope: !662)
!716 = !DILocation(line: 78, column: 3, scope: !662)
!717 = !DILocation(line: 79, column: 3, scope: !662)
!718 = !DILocation(line: 80, column: 25, scope: !662)
!719 = !DILocation(line: 80, column: 21, scope: !662)
!720 = !DILocation(line: 80, column: 6, scope: !662)
!721 = !DILocation(line: 80, column: 18, scope: !662)
!722 = !DILocation(line: 81, column: 1, scope: !662)
!723 = distinct !DISubprogram(name: "close_state", scope: !1, file: !1, line: 105, type: !724, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !726)
!724 = !DISubroutineType(types: !725)
!725 = !{null, !4}
!726 = !{!727, !728}
!727 = !DILocalVariable(name: "L", arg: 1, scope: !723, file: !1, line: 105, type: !4)
!728 = !DILocalVariable(name: "g", scope: !723, file: !1, line: 106, type: !217)
!729 = !DILocation(line: 105, column: 37, scope: !723)
!730 = !DILocation(line: 106, column: 21, scope: !723)
!731 = !DILocation(line: 106, column: 17, scope: !723)
!732 = !DILocation(line: 107, column: 20, scope: !723)
!733 = !DILocation(line: 107, column: 3, scope: !723)
!734 = !DILocation(line: 108, column: 3, scope: !723)
!735 = !DILocation(line: 111, column: 3, scope: !723)
!736 = !DILocation(line: 112, column: 3, scope: !723)
!737 = !DILocation(line: 61, column: 35, scope: !498, inlinedAt: !738)
!738 = distinct !DILocation(line: 113, column: 3, scope: !723)
!739 = !DILocation(line: 61, column: 49, scope: !498, inlinedAt: !738)
!740 = !DILocation(line: 62, column: 3, scope: !498, inlinedAt: !738)
!741 = !DILocation(line: 63, column: 3, scope: !498, inlinedAt: !738)
!742 = !DILocation(line: 115, column: 8, scope: !723)
!743 = !DILocation(line: 115, column: 21, scope: !723)
!744 = !DILocation(line: 115, column: 25, scope: !723)
!745 = !DILocation(line: 115, column: 3, scope: !723)
!746 = !DILocation(line: 116, column: 1, scope: !723)
!747 = distinct !DISubprogram(name: "lua_close", scope: !1, file: !1, line: 199, type: !724, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !748)
!748 = !{!749}
!749 = !DILocalVariable(name: "L", arg: 1, scope: !747, file: !1, line: 199, type: !4)
!750 = !DILocation(line: 199, column: 36, scope: !747)
!751 = !DILocation(line: 200, column: 7, scope: !747)
!752 = !DILocation(line: 200, column: 13, scope: !747)
!753 = !DILocation(line: 202, column: 20, scope: !747)
!754 = !DILocation(line: 202, column: 3, scope: !747)
!755 = !DILocation(line: 203, column: 3, scope: !747)
!756 = !DILocation(line: 204, column: 6, scope: !747)
!757 = !DILocation(line: 204, column: 14, scope: !747)
!758 = !DILocation(line: 205, column: 3, scope: !747)
!759 = !DILocation(line: 206, column: 16, scope: !760)
!760 = distinct !DILexicalBlock(scope: !747, file: !1, line: 205, column: 6)
!761 = !DILocation(line: 206, column: 11, scope: !760)
!762 = !DILocation(line: 207, column: 31, scope: !760)
!763 = !DILocation(line: 207, column: 22, scope: !760)
!764 = !DILocation(line: 207, column: 13, scope: !760)
!765 = !DILocation(line: 208, column: 32, scope: !760)
!766 = !DILocation(line: 208, column: 16, scope: !760)
!767 = !DILocation(line: 209, column: 12, scope: !747)
!768 = !DILocation(line: 209, column: 55, scope: !747)
!769 = !DILocation(line: 209, column: 3, scope: !760)
!770 = distinct !{!770, !758, !771}
!771 = !DILocation(line: 209, column: 59, scope: !747)
!772 = !DILocation(line: 212, column: 3, scope: !747)
!773 = !DILocation(line: 213, column: 1, scope: !747)
!774 = distinct !DISubprogram(name: "callallgcTM", scope: !1, file: !1, line: 193, type: !663, isLocal: true, isDefinition: true, scopeLine: 193, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !775)
!775 = !{!776, !777}
!776 = !DILocalVariable(name: "L", arg: 1, scope: !774, file: !1, line: 193, type: !4)
!777 = !DILocalVariable(name: "ud", arg: 2, scope: !774, file: !1, line: 193, type: !36)
!778 = !DILocation(line: 193, column: 37, scope: !774)
!779 = !DILocation(line: 193, column: 46, scope: !774)
!780 = !DILocation(line: 195, column: 3, scope: !774)
!781 = !DILocation(line: 196, column: 1, scope: !774)
