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
@__A_VARIABLE = internal global i32 0

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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !435
  %43 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* null, i64 0, i64 320) #3, !dbg !445
  %44 = bitcast i8* %35 to i8**, !dbg !446
  store i8* %43, i8** %44, align 8, !dbg !446, !tbaa !426
  %45 = bitcast i8* %33 to i8**, !dbg !447
  store i8* %43, i8** %45, align 8, !dbg !447, !tbaa !423
  store i32 8, i32* %27, align 4, !dbg !448, !tbaa !411
  %46 = getelementptr inbounds i8, i8* %43, i64 280, !dbg !449
  %47 = getelementptr inbounds i8, i8* %2, i64 72, !dbg !450
  %48 = bitcast i8* %47 to i8**, !dbg !451
  store i8* %46, i8** %48, align 8, !dbg !451, !tbaa !452
  %49 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* null, i64 0, i64 720) #3, !dbg !453
  %50 = bitcast i8* %10 to i8**, !dbg !454
  store i8* %49, i8** %50, align 8, !dbg !454, !tbaa !385
  store i32 45, i32* %13, align 8, !dbg !455, !tbaa !388
  %51 = ptrtoint i8* %49 to i64, !dbg !456
  %52 = getelementptr inbounds i8, i8* %2, i64 16, !dbg !457
  %53 = getelementptr inbounds i8, i8* %49, i64 624, !dbg !458
  %54 = getelementptr inbounds i8, i8* %2, i64 56, !dbg !459
  %55 = bitcast i8* %54 to i8**, !dbg !460
  store i8* %53, i8** %55, align 8, !dbg !460, !tbaa !461
  %56 = load %struct.CallInfo*, %struct.CallInfo** %34, align 8, !dbg !462, !tbaa !423
  %57 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %56, i64 0, i32 1, !dbg !463
  %58 = bitcast %struct.lua_TValue** %57 to i64*, !dbg !464
  store i64 %51, i64* %58, align 8, !dbg !464, !tbaa !465
  %59 = getelementptr inbounds i8, i8* %49, i64 16, !dbg !467
  %60 = bitcast i8* %52 to i8**, !dbg !467
  store i8* %59, i8** %60, align 8, !dbg !467, !tbaa !468
  %61 = getelementptr inbounds i8, i8* %49, i64 8, !dbg !467
  %62 = bitcast i8* %61 to i32*, !dbg !467
  store i32 0, i32* %62, align 8, !dbg !467, !tbaa !469
  %63 = ptrtoint i8* %59 to i64, !dbg !470
  %64 = bitcast %struct.CallInfo* %56 to i64*, !dbg !471
  store i64 %63, i64* %64, align 8, !dbg !472, !tbaa !473
  %65 = getelementptr inbounds i8, i8* %2, i64 24, !dbg !474
  %66 = bitcast i8* %65 to i64*, !dbg !475
  store i64 %63, i64* %66, align 8, !dbg !475, !tbaa !476
  %67 = getelementptr inbounds i8, i8* %49, i64 336, !dbg !477
  %68 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %56, i64 0, i32 2, !dbg !478
  %69 = bitcast %struct.lua_TValue** %68 to i8**, !dbg !479
  store i8* %67, i8** %69, align 8, !dbg !479, !tbaa !480
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !481
  %70 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !482
  %71 = getelementptr inbounds i8, i8* %2, i64 120, !dbg !482
  %72 = bitcast %struct.lua_TValue* %70 to i64*, !dbg !482
  %73 = bitcast i8* %71 to i64*, !dbg !482
  %74 = load i64, i64* %72, align 8, !dbg !482
  store i64 %74, i64* %73, align 8, !dbg !482
  %75 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, i32 1, !dbg !482
  %76 = load i32, i32* %75, align 8, !dbg !482, !tbaa !469
  store i32 %76, i32* %42, align 8, !dbg !482, !tbaa !469
  %77 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 17, !dbg !483
  %78 = load i8, i8* %77, align 4, !dbg !483, !tbaa !397
  store i8 %78, i8* %18, align 4, !dbg !484, !tbaa !397
  %79 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 19, !dbg !485
  %80 = load i32, i32* %79, align 8, !dbg !485, !tbaa !400
  store i32 %80, i32* %20, align 8, !dbg !486, !tbaa !400
  %81 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 21, !dbg !487
  %82 = bitcast void (%struct.lua_State*, %struct.lua_Debug*)** %81 to i64*, !dbg !487
  %83 = load i64, i64* %82, align 8, !dbg !487, !tbaa !394
  %84 = bitcast i8* %16 to i64*, !dbg !488
  store i64 %83, i64* %84, align 8, !dbg !488, !tbaa !394
  store i32 %80, i32* %23, align 4, !dbg !489, !tbaa !405
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !490
  ret %struct.lua_State* %3, !dbg !490
}

; Function Attrs: noredzone
declare hidden i8* @luaM_realloc_(%struct.lua_State*, i8*, i64, i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare hidden void @luaC_link(%struct.lua_State*, %union.GCObject*, i8 zeroext) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define hidden void @luaE_freethread(%struct.lua_State*, %struct.lua_State*) local_unnamed_addr #0 !dbg !491 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %1, i64 0, i32 10, !dbg !497
  %4 = load %struct.lua_TValue*, %struct.lua_TValue** %3, align 8, !dbg !497, !tbaa !385
  tail call void @luaF_close(%struct.lua_State* %1, %struct.lua_TValue* %4) #3, !dbg !498
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %1, i64 0, i32 12, !dbg !506
  %6 = bitcast %struct.CallInfo** %5 to i8**, !dbg !506
  %7 = load i8*, i8** %6, align 8, !dbg !506, !tbaa !426
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %1, i64 0, i32 14, !dbg !506
  %9 = load i32, i32* %8, align 4, !dbg !506, !tbaa !411
  %10 = sext i32 %9 to i64, !dbg !506
  %11 = mul nsw i64 %10, 40, !dbg !506
  %12 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* %7, i64 %11, i64 0) #3, !dbg !506
  %13 = bitcast %struct.lua_TValue** %3 to i8**, !dbg !507
  %14 = load i8*, i8** %13, align 8, !dbg !507, !tbaa !385
  %15 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %1, i64 0, i32 13, !dbg !507
  %16 = load i32, i32* %15, align 8, !dbg !507, !tbaa !388
  %17 = sext i32 %16 to i64, !dbg !507
  %18 = shl nsw i64 %17, 4, !dbg !507
  %19 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* %14, i64 %18, i64 0) #3, !dbg !507
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !508
  %20 = bitcast %struct.lua_State* %1 to i8*, !dbg !509
  %21 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* %20, i64 184, i64 0) #3, !dbg !509
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !510
  ret void, !dbg !510
}

; Function Attrs: noredzone
declare hidden void @luaF_close(%struct.lua_State*, %struct.lua_TValue*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local %struct.lua_State* @lua_newstate(i8* (i8*, i8*, i64, i64)*, i8*) local_unnamed_addr #0 !dbg !511 {
  %3 = tail call i8* %0(i8* %1, i8* null, i64 0, i64 616) #3, !dbg !523
  %4 = icmp eq i8* %3, null, !dbg !525
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !527
  br i1 %4, label %113, label %5, !dbg !527

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds i8, i8* %3, i64 184, !dbg !529
  %7 = bitcast i8* %3 to %union.GCObject**, !dbg !531
  store %union.GCObject* null, %union.GCObject** %7, align 8, !dbg !532, !tbaa !533
  %8 = getelementptr inbounds i8, i8* %3, i64 8, !dbg !534
  store i8 8, i8* %8, align 8, !dbg !535, !tbaa !536
  %9 = getelementptr inbounds i8, i8* %3, i64 216, !dbg !537
  store i8 33, i8* %9, align 8, !dbg !538, !tbaa !539
  %10 = getelementptr inbounds i8, i8* %3, i64 9, !dbg !544
  store i8 97, i8* %10, align 1, !dbg !545, !tbaa !546
  %11 = getelementptr inbounds i8, i8* %3, i64 32, !dbg !550
  %12 = bitcast i8* %11 to i8**, !dbg !551
  store i8* %6, i8** %12, align 8, !dbg !551, !tbaa !363
  %13 = getelementptr inbounds i8, i8* %3, i64 64, !dbg !552
  %14 = bitcast i8* %13 to %struct.lua_TValue**, !dbg !552
  store %struct.lua_TValue* null, %struct.lua_TValue** %14, align 8, !dbg !553, !tbaa !385
  %15 = getelementptr inbounds i8, i8* %3, i64 88, !dbg !554
  %16 = bitcast i8* %15 to i32*, !dbg !554
  store i32 0, i32* %16, align 8, !dbg !555, !tbaa !388
  %17 = getelementptr inbounds i8, i8* %3, i64 168, !dbg !556
  %18 = bitcast i8* %17 to %struct.lua_longjmp**, !dbg !556
  store %struct.lua_longjmp* null, %struct.lua_longjmp** %18, align 8, !dbg !557, !tbaa !391
  %19 = getelementptr inbounds i8, i8* %3, i64 112, !dbg !558
  %20 = bitcast i8* %19 to void (%struct.lua_State*, %struct.lua_Debug*)**, !dbg !558
  store void (%struct.lua_State*, %struct.lua_Debug*)* null, void (%struct.lua_State*, %struct.lua_Debug*)** %20, align 8, !dbg !559, !tbaa !394
  %21 = getelementptr inbounds i8, i8* %3, i64 100, !dbg !560
  store i8 0, i8* %21, align 4, !dbg !561, !tbaa !397
  %22 = getelementptr inbounds i8, i8* %3, i64 104, !dbg !562
  %23 = bitcast i8* %22 to i32*, !dbg !562
  store i32 0, i32* %23, align 8, !dbg !563, !tbaa !400
  %24 = getelementptr inbounds i8, i8* %3, i64 101, !dbg !564
  store i8 1, i8* %24, align 1, !dbg !565, !tbaa !403
  %25 = getelementptr inbounds i8, i8* %3, i64 108, !dbg !566
  %26 = bitcast i8* %25 to i32*, !dbg !566
  store i32 0, i32* %26, align 4, !dbg !566, !tbaa !405
  %27 = getelementptr inbounds i8, i8* %3, i64 152, !dbg !567
  %28 = bitcast i8* %27 to %union.GCObject**, !dbg !567
  store %union.GCObject* null, %union.GCObject** %28, align 8, !dbg !568, !tbaa !408
  %29 = getelementptr inbounds i8, i8* %3, i64 92, !dbg !569
  %30 = bitcast i8* %29 to i32*, !dbg !569
  store i32 0, i32* %30, align 4, !dbg !570, !tbaa !411
  %31 = getelementptr inbounds i8, i8* %3, i64 98, !dbg !571
  %32 = bitcast i8* %31 to i16*, !dbg !571
  store i16 0, i16* %32, align 2, !dbg !572, !tbaa !414
  %33 = getelementptr inbounds i8, i8* %3, i64 96, !dbg !573
  %34 = bitcast i8* %33 to i16*, !dbg !573
  store i16 0, i16* %34, align 8, !dbg !574, !tbaa !417
  %35 = getelementptr inbounds i8, i8* %3, i64 10, !dbg !575
  store i8 0, i8* %35, align 2, !dbg !576, !tbaa !420
  %36 = getelementptr inbounds i8, i8* %3, i64 40, !dbg !577
  %37 = bitcast i8* %36 to %struct.CallInfo**, !dbg !577
  store %struct.CallInfo* null, %struct.CallInfo** %37, align 8, !dbg !578, !tbaa !423
  %38 = getelementptr inbounds i8, i8* %3, i64 80, !dbg !579
  %39 = bitcast i8* %38 to %struct.CallInfo**, !dbg !579
  store %struct.CallInfo* null, %struct.CallInfo** %39, align 8, !dbg !580, !tbaa !426
  %40 = getelementptr inbounds i8, i8* %3, i64 48, !dbg !581
  %41 = bitcast i8* %40 to i32**, !dbg !581
  store i32* null, i32** %41, align 8, !dbg !582, !tbaa !429
  %42 = getelementptr inbounds i8, i8* %3, i64 176, !dbg !583
  %43 = bitcast i8* %42 to i64*, !dbg !583
  store i64 0, i64* %43, align 8, !dbg !584, !tbaa !432
  %44 = getelementptr inbounds i8, i8* %3, i64 128, !dbg !585
  %45 = bitcast i8* %44 to i32*, !dbg !585
  store i32 0, i32* %45, align 8, !dbg !585, !tbaa !434
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !586
  %46 = getelementptr inbounds i8, i8* %3, i64 200, !dbg !587
  %47 = bitcast i8* %46 to i8* (i8*, i8*, i64, i64)**, !dbg !587
  store i8* (i8*, i8*, i64, i64)* %0, i8* (i8*, i8*, i64, i64)** %47, align 8, !dbg !588, !tbaa !589
  %48 = getelementptr inbounds i8, i8* %3, i64 208, !dbg !590
  %49 = bitcast i8* %48 to i8**, !dbg !590
  store i8* %1, i8** %49, align 8, !dbg !591, !tbaa !592
  %50 = getelementptr inbounds i8, i8* %3, i64 360, !dbg !593
  %51 = bitcast i8* %50 to i8**, !dbg !594
  store i8* %3, i8** %51, align 8, !dbg !594, !tbaa !595
  %52 = getelementptr inbounds i8, i8* %3, i64 368, !dbg !596
  %53 = getelementptr inbounds i8, i8* %3, i64 392, !dbg !597
  %54 = bitcast i8* %53 to i8**, !dbg !598
  store i8* %52, i8** %54, align 8, !dbg !598, !tbaa !599
  %55 = getelementptr inbounds i8, i8* %3, i64 400, !dbg !600
  %56 = bitcast i8* %55 to i8**, !dbg !601
  store i8* %52, i8** %56, align 8, !dbg !601, !tbaa !599
  %57 = getelementptr inbounds i8, i8* %3, i64 296, !dbg !602
  %58 = bitcast i8* %57 to i64*, !dbg !602
  store i64 0, i64* %58, align 8, !dbg !603, !tbaa !604
  %59 = getelementptr inbounds i8, i8* %3, i64 196, !dbg !605
  %60 = bitcast i8* %59 to i32*, !dbg !605
  store i32 0, i32* %60, align 4, !dbg !606, !tbaa !607
  %61 = getelementptr inbounds i8, i8* %3, i64 192, !dbg !608
  %62 = bitcast i8* %61 to i32*, !dbg !608
  store i32 0, i32* %62, align 8, !dbg !609, !tbaa !610
  %63 = bitcast i8* %6 to %union.GCObject***, !dbg !611
  store %union.GCObject** null, %union.GCObject*** %63, align 8, !dbg !612, !tbaa !613
  %64 = getelementptr inbounds i8, i8* %3, i64 352, !dbg !614
  %65 = bitcast i8* %64 to i32*, !dbg !614
  store i32 0, i32* %65, align 8, !dbg !614, !tbaa !615
  %66 = getelementptr inbounds i8, i8* %3, i64 272, !dbg !616
  %67 = bitcast i8* %66 to i8**, !dbg !616
  store i8* null, i8** %67, align 8, !dbg !616, !tbaa !617
  %68 = getelementptr inbounds i8, i8* %3, i64 288, !dbg !616
  %69 = bitcast i8* %68 to i64*, !dbg !616
  store i64 0, i64* %69, align 8, !dbg !616, !tbaa !618
  %70 = getelementptr inbounds i8, i8* %3, i64 336, !dbg !619
  %71 = bitcast i8* %70 to i32 (%struct.lua_State*)**, !dbg !619
  store i32 (%struct.lua_State*)* null, i32 (%struct.lua_State*)** %71, align 8, !dbg !620, !tbaa !621
  %72 = getelementptr inbounds i8, i8* %3, i64 217, !dbg !622
  store i8 0, i8* %72, align 1, !dbg !623, !tbaa !624
  %73 = getelementptr inbounds i8, i8* %3, i64 224, !dbg !625
  %74 = bitcast i8* %73 to i8**, !dbg !626
  store i8* %3, i8** %74, align 8, !dbg !626, !tbaa !627
  %75 = getelementptr inbounds i8, i8* %3, i64 220, !dbg !628
  %76 = bitcast i8* %75 to i32*, !dbg !628
  store i32 0, i32* %76, align 4, !dbg !629, !tbaa !630
  %77 = getelementptr inbounds i8, i8* %3, i64 232, !dbg !631
  %78 = bitcast i8* %77 to i8**, !dbg !632
  store i8* %73, i8** %78, align 8, !dbg !632, !tbaa !633
  %79 = getelementptr inbounds i8, i8* %3, i64 240, !dbg !634
  %80 = bitcast i8* %79 to <2 x %union.GCObject*>*, !dbg !635
  store <2 x %union.GCObject*> zeroinitializer, <2 x %union.GCObject*>* %80, align 8, !dbg !635, !tbaa !636
  %81 = getelementptr inbounds i8, i8* %3, i64 256, !dbg !637
  %82 = bitcast i8* %81 to <2 x %union.GCObject*>*, !dbg !638
  store <2 x %union.GCObject*> zeroinitializer, <2 x %union.GCObject*>* %82, align 8, !dbg !638, !tbaa !636
  %83 = getelementptr inbounds i8, i8* %3, i64 304, !dbg !639
  %84 = bitcast i8* %83 to i64*, !dbg !639
  store i64 616, i64* %84, align 8, !dbg !640, !tbaa !641
  %85 = getelementptr inbounds i8, i8* %3, i64 328, !dbg !642
  %86 = bitcast i8* %85 to i32*, !dbg !642
  store i32 200, i32* %86, align 8, !dbg !643, !tbaa !644
  %87 = getelementptr inbounds i8, i8* %3, i64 332, !dbg !645
  %88 = bitcast i8* %87 to i32*, !dbg !645
  store i32 200, i32* %88, align 4, !dbg !646, !tbaa !647
  %89 = getelementptr inbounds i8, i8* %3, i64 320, !dbg !648
  %90 = bitcast i8* %89 to i64*, !dbg !648
  store i64 0, i64* %90, align 8, !dbg !649, !tbaa !650
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !652
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !654
  %91 = getelementptr inbounds i8, i8* %3, i64 408
  %92 = bitcast i8* %91 to %struct.Table**, !dbg !655
  store %struct.Table* null, %struct.Table** %92, align 8, !dbg !657, !tbaa !636
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !658
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !654
  %93 = getelementptr inbounds i8, i8* %3, i64 416, !dbg !655
  %94 = bitcast i8* %93 to %struct.Table**, !dbg !655
  store %struct.Table* null, %struct.Table** %94, align 8, !dbg !657, !tbaa !636
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !658
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !654
  %95 = getelementptr inbounds i8, i8* %3, i64 424, !dbg !655
  %96 = bitcast i8* %95 to %struct.Table**, !dbg !655
  store %struct.Table* null, %struct.Table** %96, align 8, !dbg !657, !tbaa !636
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !658
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !654
  %97 = getelementptr inbounds i8, i8* %3, i64 432, !dbg !655
  %98 = bitcast i8* %97 to %struct.Table**, !dbg !655
  store %struct.Table* null, %struct.Table** %98, align 8, !dbg !657, !tbaa !636
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !658
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !654
  %99 = getelementptr inbounds i8, i8* %3, i64 440, !dbg !655
  %100 = bitcast i8* %99 to %struct.Table**, !dbg !655
  store %struct.Table* null, %struct.Table** %100, align 8, !dbg !657, !tbaa !636
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !658
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !654
  %101 = getelementptr inbounds i8, i8* %3, i64 448, !dbg !655
  %102 = bitcast i8* %101 to %struct.Table**, !dbg !655
  store %struct.Table* null, %struct.Table** %102, align 8, !dbg !657, !tbaa !636
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !658
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !654
  %103 = getelementptr inbounds i8, i8* %3, i64 456, !dbg !655
  %104 = bitcast i8* %103 to %struct.Table**, !dbg !655
  store %struct.Table* null, %struct.Table** %104, align 8, !dbg !657, !tbaa !636
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !658
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !654
  %105 = getelementptr inbounds i8, i8* %3, i64 464, !dbg !655
  %106 = bitcast i8* %105 to %struct.Table**, !dbg !655
  store %struct.Table* null, %struct.Table** %106, align 8, !dbg !657, !tbaa !636
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !658
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !654
  %107 = getelementptr inbounds i8, i8* %3, i64 472, !dbg !655
  %108 = bitcast i8* %107 to %struct.Table**, !dbg !655
  store %struct.Table* null, %struct.Table** %108, align 8, !dbg !657, !tbaa !636
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !658
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !654
  %109 = bitcast i8* %3 to %struct.lua_State*, !dbg !659
  %110 = tail call i32 @luaD_rawrunprotected(%struct.lua_State* %109, void (%struct.lua_State*, i8*)* nonnull @f_luaopen, i8* null) #3, !dbg !660
  %111 = icmp eq i32 %110, 0, !dbg !662
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !663
  br i1 %111, label %113, label %112, !dbg !663

; <label>:112:                                    ; preds = %5
  tail call fastcc void @close_state(%struct.lua_State* %109) #5, !dbg !664
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !666
  br label %113, !dbg !666

; <label>:113:                                    ; preds = %112, %5, %2
  %114 = phi %struct.lua_State* [ null, %2 ], [ null, %112 ], [ %109, %5 ], !dbg !667
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !668
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !669
  ret %struct.lua_State* %114, !dbg !669
}

; Function Attrs: noredzone
declare hidden i32 @luaD_rawrunprotected(%struct.lua_State*, void (%struct.lua_State*, i8*)*, i8*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define internal void @f_luaopen(%struct.lua_State*, i8* nocapture readnone) #0 !dbg !670 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !683
  %4 = load %struct.global_State*, %struct.global_State** %3, align 8, !dbg !683, !tbaa !363
  %5 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* null, i64 0, i64 320) #3, !dbg !688
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 12, !dbg !689
  %7 = bitcast %struct.CallInfo** %6 to i8**, !dbg !690
  store i8* %5, i8** %7, align 8, !dbg !690, !tbaa !426
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !691
  %9 = bitcast %struct.CallInfo** %8 to i8**, !dbg !692
  store i8* %5, i8** %9, align 8, !dbg !692, !tbaa !423
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 14, !dbg !693
  store i32 8, i32* %10, align 4, !dbg !694, !tbaa !411
  %11 = getelementptr inbounds i8, i8* %5, i64 280, !dbg !695
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 11, !dbg !696
  %13 = bitcast %struct.CallInfo** %12 to i8**, !dbg !697
  store i8* %11, i8** %13, align 8, !dbg !697, !tbaa !452
  %14 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* null, i64 0, i64 720) #3, !dbg !698
  %15 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 10, !dbg !699
  %16 = bitcast %struct.lua_TValue** %15 to i8**, !dbg !700
  store i8* %14, i8** %16, align 8, !dbg !700, !tbaa !385
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 13, !dbg !701
  store i32 45, i32* %17, align 8, !dbg !702, !tbaa !388
  %18 = ptrtoint i8* %14 to i64, !dbg !703
  %19 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !704
  %20 = getelementptr inbounds i8, i8* %14, i64 624, !dbg !705
  %21 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 9, !dbg !706
  %22 = bitcast %struct.lua_TValue** %21 to i8**, !dbg !707
  store i8* %20, i8** %22, align 8, !dbg !707, !tbaa !461
  %23 = load %struct.CallInfo*, %struct.CallInfo** %8, align 8, !dbg !708, !tbaa !423
  %24 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %23, i64 0, i32 1, !dbg !709
  %25 = bitcast %struct.lua_TValue** %24 to i64*, !dbg !710
  store i64 %18, i64* %25, align 8, !dbg !710, !tbaa !465
  %26 = getelementptr inbounds i8, i8* %14, i64 16, !dbg !711
  %27 = bitcast %struct.lua_TValue** %19 to i8**, !dbg !711
  store i8* %26, i8** %27, align 8, !dbg !711, !tbaa !468
  %28 = getelementptr inbounds i8, i8* %14, i64 8, !dbg !711
  %29 = bitcast i8* %28 to i32*, !dbg !711
  store i32 0, i32* %29, align 8, !dbg !711, !tbaa !469
  %30 = ptrtoint i8* %26 to i64, !dbg !712
  %31 = bitcast %struct.CallInfo* %23 to i64*, !dbg !713
  store i64 %30, i64* %31, align 8, !dbg !714, !tbaa !473
  %32 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !715
  %33 = bitcast %struct.lua_TValue** %32 to i64*, !dbg !716
  store i64 %30, i64* %33, align 8, !dbg !716, !tbaa !476
  %34 = getelementptr inbounds i8, i8* %14, i64 336, !dbg !717
  %35 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %23, i64 0, i32 2, !dbg !718
  %36 = bitcast %struct.lua_TValue** %35 to i8**, !dbg !719
  store i8* %34, i8** %36, align 8, !dbg !719, !tbaa !480
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !720
  %37 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, !dbg !721
  %38 = tail call %struct.Table* @luaH_new(%struct.lua_State* %0, i32 0, i32 2) #3, !dbg !721
  %39 = bitcast %struct.lua_TValue* %37 to %struct.Table**, !dbg !721
  store %struct.Table* %38, %struct.Table** %39, align 8, !dbg !721, !tbaa !599
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, i32 1, !dbg !721
  store i32 5, i32* %40, align 8, !dbg !721, !tbaa !469
  %41 = load %struct.global_State*, %struct.global_State** %3, align 8, !dbg !722, !tbaa !363
  %42 = getelementptr inbounds %struct.global_State, %struct.global_State* %41, i64 0, i32 20, !dbg !722
  %43 = tail call %struct.Table* @luaH_new(%struct.lua_State* %0, i32 0, i32 2) #3, !dbg !722
  %44 = bitcast %struct.lua_TValue* %42 to %struct.Table**, !dbg !722
  store %struct.Table* %43, %struct.Table** %44, align 8, !dbg !722, !tbaa !599
  %45 = getelementptr inbounds %struct.global_State, %struct.global_State* %41, i64 0, i32 20, i32 1, !dbg !722
  store i32 5, i32* %45, align 8, !dbg !722, !tbaa !469
  tail call void @luaS_resize(%struct.lua_State* %0, i32 32) #3, !dbg !723
  tail call void @luaT_init(%struct.lua_State* %0) #3, !dbg !724
  tail call void @luaX_init(%struct.lua_State* %0) #3, !dbg !725
  %46 = tail call %union.TString* @luaS_newlstr(%struct.lua_State* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 17) #3, !dbg !726
  %47 = getelementptr inbounds %union.TString, %union.TString* %46, i64 0, i32 0, i32 2, !dbg !726
  %48 = load i8, i8* %47, align 1, !dbg !726, !tbaa !599
  %49 = or i8 %48, 32, !dbg !726
  store i8 %49, i8* %47, align 1, !dbg !726, !tbaa !599
  %50 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 14, !dbg !727
  %51 = load i64, i64* %50, align 8, !dbg !727, !tbaa !641
  %52 = shl i64 %51, 2, !dbg !728
  %53 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 13, !dbg !729
  store i64 %52, i64* %53, align 8, !dbg !730, !tbaa !604
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !731
  ret void, !dbg !731
}

; Function Attrs: noredzone nounwind
define internal fastcc void @close_state(%struct.lua_State*) unnamed_addr #0 !dbg !732 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !739
  %3 = load %struct.global_State*, %struct.global_State** %2, align 8, !dbg !739, !tbaa !363
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 10, !dbg !741
  %5 = load %struct.lua_TValue*, %struct.lua_TValue** %4, align 8, !dbg !741, !tbaa !385
  tail call void @luaF_close(%struct.lua_State* %0, %struct.lua_TValue* %5) #3, !dbg !742
  tail call void @luaC_freeall(%struct.lua_State* %0) #3, !dbg !743
  %6 = load %struct.global_State*, %struct.global_State** %2, align 8, !dbg !744, !tbaa !363
  %7 = bitcast %struct.global_State* %6 to i8**, !dbg !744
  %8 = load i8*, i8** %7, align 8, !dbg !744, !tbaa !613
  %9 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i64 0, i32 0, i32 2, !dbg !744
  %10 = load i32, i32* %9, align 4, !dbg !744, !tbaa !607
  %11 = sext i32 %10 to i64, !dbg !744
  %12 = shl nsw i64 %11, 3, !dbg !744
  %13 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* %8, i64 %12, i64 0) #3, !dbg !744
  %14 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 12, i32 0, !dbg !745
  %15 = load i8*, i8** %14, align 8, !dbg !745, !tbaa !617
  %16 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 12, i32 2, !dbg !745
  %17 = load i64, i64* %16, align 8, !dbg !745, !tbaa !618
  %18 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* %15, i64 %17, i64 0) #3, !dbg !745
  store i8* %18, i8** %14, align 8, !dbg !745, !tbaa !617
  store i64 0, i64* %16, align 8, !dbg !745, !tbaa !618
  %19 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 12, !dbg !749
  %20 = bitcast %struct.CallInfo** %19 to i8**, !dbg !749
  %21 = load i8*, i8** %20, align 8, !dbg !749, !tbaa !426
  %22 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 14, !dbg !749
  %23 = load i32, i32* %22, align 4, !dbg !749, !tbaa !411
  %24 = sext i32 %23 to i64, !dbg !749
  %25 = mul nsw i64 %24, 40, !dbg !749
  %26 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* %21, i64 %25, i64 0) #3, !dbg !749
  %27 = bitcast %struct.lua_TValue** %4 to i8**, !dbg !750
  %28 = load i8*, i8** %27, align 8, !dbg !750, !tbaa !385
  %29 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 13, !dbg !750
  %30 = load i32, i32* %29, align 8, !dbg !750, !tbaa !388
  %31 = sext i32 %30 to i64, !dbg !750
  %32 = shl nsw i64 %31, 4, !dbg !750
  %33 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* %28, i64 %32, i64 0) #3, !dbg !750
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !751
  %34 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 1, !dbg !752
  %35 = load i8* (i8*, i8*, i64, i64)*, i8* (i8*, i8*, i64, i64)** %34, align 8, !dbg !752, !tbaa !589
  %36 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 2, !dbg !753
  %37 = load i8*, i8** %36, align 8, !dbg !753, !tbaa !592
  %38 = bitcast %struct.lua_State* %0 to i8*, !dbg !754
  %39 = tail call i8* %35(i8* %37, i8* %38, i64 616, i64 0) #3, !dbg !755
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !756
  ret void, !dbg !756
}

; Function Attrs: noredzone nounwind
define dso_local void @lua_close(%struct.lua_State* nocapture readonly) local_unnamed_addr #0 !dbg !757 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !761
  %3 = load %struct.global_State*, %struct.global_State** %2, align 8, !dbg !761, !tbaa !363
  %4 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 21, !dbg !762
  %5 = load %struct.lua_State*, %struct.lua_State** %4, align 8, !dbg !762, !tbaa !595
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5, i64 0, i32 10, !dbg !763
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8, !dbg !763, !tbaa !385
  tail call void @luaF_close(%struct.lua_State* %5, %struct.lua_TValue* %7) #3, !dbg !764
  %8 = tail call i64 @luaC_separateudata(%struct.lua_State* %5, i32 1) #3, !dbg !765
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5, i64 0, i32 27, !dbg !766
  store i64 0, i64* %9, align 8, !dbg !767, !tbaa !432
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !768
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5, i64 0, i32 12
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5, i64 0, i32 7
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5, i64 0, i32 4
  %13 = bitcast %struct.lua_TValue** %12 to i64*
  %14 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5, i64 0, i32 5
  %15 = bitcast %struct.lua_TValue** %14 to i64*
  %16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5, i64 0, i32 16
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5, i64 0, i32 15
  br label %18, !dbg !768

; <label>:18:                                     ; preds = %18, %1
  %19 = load %struct.CallInfo*, %struct.CallInfo** %10, align 8, !dbg !769, !tbaa !426
  store %struct.CallInfo* %19, %struct.CallInfo** %11, align 8, !dbg !771, !tbaa !423
  %20 = bitcast %struct.CallInfo* %19 to i64*, !dbg !772
  %21 = load i64, i64* %20, align 8, !dbg !772, !tbaa !473
  store i64 %21, i64* %13, align 8, !dbg !773, !tbaa !468
  store i64 %21, i64* %15, align 8, !dbg !774, !tbaa !476
  store i16 0, i16* %16, align 2, !dbg !775, !tbaa !414
  store i16 0, i16* %17, align 8, !dbg !776, !tbaa !417
  %22 = tail call i32 @luaD_rawrunprotected(%struct.lua_State* %5, void (%struct.lua_State*, i8*)* nonnull @callallgcTM, i8* null) #3, !dbg !777
  %23 = icmp eq i32 %22, 0, !dbg !778
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !779
  br i1 %23, label %24, label %18, !dbg !779, !llvm.loop !780

; <label>:24:                                     ; preds = %18
  tail call fastcc void @close_state(%struct.lua_State* nonnull %5) #5, !dbg !782
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !783
  ret void, !dbg !783
}

; Function Attrs: noredzone
declare hidden i64 @luaC_separateudata(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define internal void @callallgcTM(%struct.lua_State*, i8* nocapture readnone) #0 !dbg !784 {
  tail call void @luaC_callGCTM(%struct.lua_State* %0) #3, !dbg !790
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !791
  ret void, !dbg !791
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
!435 = !DILocation(line: 102, column: 1, scope: !373, inlinedAt: !379)
!436 = !DILocalVariable(name: "L1", arg: 1, scope: !437, file: !1, line: 42, type: !4)
!437 = distinct !DISubprogram(name: "stack_init", scope: !1, file: !1, line: 42, type: !438, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !440)
!438 = !DISubroutineType(types: !439)
!439 = !{null, !4, !4}
!440 = !{!436, !441}
!441 = !DILocalVariable(name: "L", arg: 2, scope: !437, file: !1, line: 42, type: !4)
!442 = !DILocation(line: 42, column: 36, scope: !437, inlinedAt: !443)
!443 = distinct !DILocation(line: 123, column: 3, scope: !346)
!444 = !DILocation(line: 42, column: 51, scope: !437, inlinedAt: !443)
!445 = !DILocation(line: 44, column: 17, scope: !437, inlinedAt: !443)
!446 = !DILocation(line: 44, column: 15, scope: !437, inlinedAt: !443)
!447 = !DILocation(line: 45, column: 10, scope: !437, inlinedAt: !443)
!448 = !DILocation(line: 46, column: 15, scope: !437, inlinedAt: !443)
!449 = !DILocation(line: 47, column: 42, scope: !437, inlinedAt: !443)
!450 = !DILocation(line: 47, column: 7, scope: !437, inlinedAt: !443)
!451 = !DILocation(line: 47, column: 14, scope: !437, inlinedAt: !443)
!452 = !{!364, !365, i64 72}
!453 = !DILocation(line: 49, column: 15, scope: !437, inlinedAt: !443)
!454 = !DILocation(line: 49, column: 13, scope: !437, inlinedAt: !443)
!455 = !DILocation(line: 50, column: 17, scope: !437, inlinedAt: !443)
!456 = !DILocation(line: 51, column: 17, scope: !437, inlinedAt: !443)
!457 = !DILocation(line: 51, column: 7, scope: !437, inlinedAt: !443)
!458 = !DILocation(line: 52, column: 59, scope: !437, inlinedAt: !443)
!459 = !DILocation(line: 52, column: 7, scope: !437, inlinedAt: !443)
!460 = !DILocation(line: 52, column: 18, scope: !437, inlinedAt: !443)
!461 = !{!364, !365, i64 56}
!462 = !DILocation(line: 54, column: 7, scope: !437, inlinedAt: !443)
!463 = !DILocation(line: 54, column: 11, scope: !437, inlinedAt: !443)
!464 = !DILocation(line: 54, column: 16, scope: !437, inlinedAt: !443)
!465 = !{!466, !365, i64 8}
!466 = !{!"CallInfo", !365, i64 0, !365, i64 8, !365, i64 16, !365, i64 24, !368, i64 32, !368, i64 36}
!467 = !DILocation(line: 55, column: 3, scope: !437, inlinedAt: !443)
!468 = !{!364, !365, i64 16}
!469 = !{!370, !368, i64 8}
!470 = !DILocation(line: 56, column: 33, scope: !437, inlinedAt: !443)
!471 = !DILocation(line: 56, column: 18, scope: !437, inlinedAt: !443)
!472 = !DILocation(line: 56, column: 27, scope: !437, inlinedAt: !443)
!473 = !{!466, !365, i64 0}
!474 = !DILocation(line: 56, column: 7, scope: !437, inlinedAt: !443)
!475 = !DILocation(line: 56, column: 12, scope: !437, inlinedAt: !443)
!476 = !{!364, !365, i64 24}
!477 = !DILocation(line: 57, column: 25, scope: !437, inlinedAt: !443)
!478 = !DILocation(line: 57, column: 11, scope: !437, inlinedAt: !443)
!479 = !DILocation(line: 57, column: 15, scope: !437, inlinedAt: !443)
!480 = !{!466, !365, i64 16}
!481 = !DILocation(line: 58, column: 1, scope: !437, inlinedAt: !443)
!482 = !DILocation(line: 124, column: 3, scope: !353)
!483 = !DILocation(line: 125, column: 21, scope: !346)
!484 = !DILocation(line: 125, column: 16, scope: !346)
!485 = !DILocation(line: 126, column: 26, scope: !346)
!486 = !DILocation(line: 126, column: 21, scope: !346)
!487 = !DILocation(line: 127, column: 17, scope: !346)
!488 = !DILocation(line: 127, column: 12, scope: !346)
!489 = !DILocation(line: 128, column: 3, scope: !346)
!490 = !DILocation(line: 130, column: 3, scope: !346)
!491 = distinct !DISubprogram(name: "luaE_freethread", scope: !1, file: !1, line: 134, type: !438, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !492)
!492 = !{!493, !494}
!493 = !DILocalVariable(name: "L", arg: 1, scope: !491, file: !1, line: 134, type: !4)
!494 = !DILocalVariable(name: "L1", arg: 2, scope: !491, file: !1, line: 134, type: !4)
!495 = !DILocation(line: 134, column: 34, scope: !491)
!496 = !DILocation(line: 134, column: 48, scope: !491)
!497 = !DILocation(line: 135, column: 22, scope: !491)
!498 = !DILocation(line: 135, column: 3, scope: !491)
!499 = !DILocalVariable(name: "L", arg: 1, scope: !500, file: !1, line: 61, type: !4)
!500 = distinct !DISubprogram(name: "freestack", scope: !1, file: !1, line: 61, type: !438, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !501)
!501 = !{!499, !502}
!502 = !DILocalVariable(name: "L1", arg: 2, scope: !500, file: !1, line: 61, type: !4)
!503 = !DILocation(line: 61, column: 35, scope: !500, inlinedAt: !504)
!504 = distinct !DILocation(line: 138, column: 3, scope: !491)
!505 = !DILocation(line: 61, column: 49, scope: !500, inlinedAt: !504)
!506 = !DILocation(line: 62, column: 3, scope: !500, inlinedAt: !504)
!507 = !DILocation(line: 63, column: 3, scope: !500, inlinedAt: !504)
!508 = !DILocation(line: 64, column: 1, scope: !500, inlinedAt: !504)
!509 = !DILocation(line: 139, column: 3, scope: !491)
!510 = !DILocation(line: 140, column: 1, scope: !491)
!511 = distinct !DISubprogram(name: "lua_newstate", scope: !1, file: !1, line: 143, type: !512, isLocal: false, isDefinition: true, scopeLine: 143, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !514)
!512 = !DISubroutineType(types: !513)
!513 = !{!4, !230, !36}
!514 = !{!515, !516, !517, !518, !519, !520}
!515 = !DILocalVariable(name: "f", arg: 1, scope: !511, file: !1, line: 143, type: !230)
!516 = !DILocalVariable(name: "ud", arg: 2, scope: !511, file: !1, line: 143, type: !36)
!517 = !DILocalVariable(name: "i", scope: !511, file: !1, line: 144, type: !86)
!518 = !DILocalVariable(name: "L", scope: !511, file: !1, line: 145, type: !4)
!519 = !DILocalVariable(name: "g", scope: !511, file: !1, line: 146, type: !217)
!520 = !DILocalVariable(name: "l", scope: !511, file: !1, line: 147, type: !36)
!521 = !DILocation(line: 143, column: 44, scope: !511)
!522 = !DILocation(line: 143, column: 53, scope: !511)
!523 = !DILocation(line: 147, column: 13, scope: !511)
!524 = !DILocation(line: 147, column: 9, scope: !511)
!525 = !DILocation(line: 148, column: 9, scope: !526)
!526 = distinct !DILexicalBlock(scope: !511, file: !1, line: 148, column: 7)
!527 = !DILocation(line: 148, column: 7, scope: !511)
!528 = !DILocation(line: 145, column: 14, scope: !511)
!529 = !DILocation(line: 150, column: 19, scope: !511)
!530 = !DILocation(line: 146, column: 17, scope: !511)
!531 = !DILocation(line: 151, column: 6, scope: !511)
!532 = !DILocation(line: 151, column: 11, scope: !511)
!533 = !{!364, !365, i64 0}
!534 = !DILocation(line: 152, column: 6, scope: !511)
!535 = !DILocation(line: 152, column: 9, scope: !511)
!536 = !{!364, !366, i64 8}
!537 = !DILocation(line: 153, column: 6, scope: !511)
!538 = !DILocation(line: 153, column: 19, scope: !511)
!539 = !{!540, !366, i64 32}
!540 = !{!"global_State", !541, i64 0, !365, i64 16, !365, i64 24, !366, i64 32, !366, i64 33, !368, i64 36, !365, i64 40, !365, i64 48, !365, i64 56, !365, i64 64, !365, i64 72, !365, i64 80, !542, i64 88, !371, i64 112, !371, i64 120, !371, i64 128, !371, i64 136, !368, i64 144, !368, i64 148, !365, i64 152, !370, i64 160, !365, i64 176, !543, i64 184, !366, i64 224, !366, i64 296}
!541 = !{!"stringtable", !365, i64 0, !368, i64 8, !368, i64 12}
!542 = !{!"Mbuffer", !365, i64 0, !371, i64 8, !371, i64 16}
!543 = !{!"UpVal", !365, i64 0, !366, i64 8, !366, i64 9, !365, i64 16, !366, i64 24}
!544 = !DILocation(line: 154, column: 6, scope: !511)
!545 = !DILocation(line: 155, column: 3, scope: !511)
!546 = !{!364, !366, i64 9}
!547 = !DILocation(line: 84, column: 39, scope: !373, inlinedAt: !548)
!548 = distinct !DILocation(line: 156, column: 3, scope: !511)
!549 = !DILocation(line: 84, column: 56, scope: !373, inlinedAt: !548)
!550 = !DILocation(line: 85, column: 3, scope: !373, inlinedAt: !548)
!551 = !DILocation(line: 85, column: 8, scope: !373, inlinedAt: !548)
!552 = !DILocation(line: 86, column: 6, scope: !373, inlinedAt: !548)
!553 = !DILocation(line: 86, column: 12, scope: !373, inlinedAt: !548)
!554 = !DILocation(line: 87, column: 6, scope: !373, inlinedAt: !548)
!555 = !DILocation(line: 87, column: 16, scope: !373, inlinedAt: !548)
!556 = !DILocation(line: 88, column: 6, scope: !373, inlinedAt: !548)
!557 = !DILocation(line: 88, column: 15, scope: !373, inlinedAt: !548)
!558 = !DILocation(line: 89, column: 6, scope: !373, inlinedAt: !548)
!559 = !DILocation(line: 89, column: 11, scope: !373, inlinedAt: !548)
!560 = !DILocation(line: 90, column: 6, scope: !373, inlinedAt: !548)
!561 = !DILocation(line: 90, column: 15, scope: !373, inlinedAt: !548)
!562 = !DILocation(line: 91, column: 6, scope: !373, inlinedAt: !548)
!563 = !DILocation(line: 91, column: 20, scope: !373, inlinedAt: !548)
!564 = !DILocation(line: 92, column: 6, scope: !373, inlinedAt: !548)
!565 = !DILocation(line: 92, column: 16, scope: !373, inlinedAt: !548)
!566 = !DILocation(line: 93, column: 3, scope: !373, inlinedAt: !548)
!567 = !DILocation(line: 94, column: 6, scope: !373, inlinedAt: !548)
!568 = !DILocation(line: 94, column: 16, scope: !373, inlinedAt: !548)
!569 = !DILocation(line: 95, column: 6, scope: !373, inlinedAt: !548)
!570 = !DILocation(line: 95, column: 14, scope: !373, inlinedAt: !548)
!571 = !DILocation(line: 96, column: 19, scope: !373, inlinedAt: !548)
!572 = !DILocation(line: 96, column: 30, scope: !373, inlinedAt: !548)
!573 = !DILocation(line: 96, column: 6, scope: !373, inlinedAt: !548)
!574 = !DILocation(line: 96, column: 14, scope: !373, inlinedAt: !548)
!575 = !DILocation(line: 97, column: 6, scope: !373, inlinedAt: !548)
!576 = !DILocation(line: 97, column: 13, scope: !373, inlinedAt: !548)
!577 = !DILocation(line: 98, column: 19, scope: !373, inlinedAt: !548)
!578 = !DILocation(line: 98, column: 22, scope: !373, inlinedAt: !548)
!579 = !DILocation(line: 98, column: 6, scope: !373, inlinedAt: !548)
!580 = !DILocation(line: 98, column: 14, scope: !373, inlinedAt: !548)
!581 = !DILocation(line: 99, column: 6, scope: !373, inlinedAt: !548)
!582 = !DILocation(line: 99, column: 14, scope: !373, inlinedAt: !548)
!583 = !DILocation(line: 100, column: 6, scope: !373, inlinedAt: !548)
!584 = !DILocation(line: 100, column: 14, scope: !373, inlinedAt: !548)
!585 = !DILocation(line: 101, column: 3, scope: !373, inlinedAt: !548)
!586 = !DILocation(line: 102, column: 1, scope: !373, inlinedAt: !548)
!587 = !DILocation(line: 157, column: 6, scope: !511)
!588 = !DILocation(line: 157, column: 15, scope: !511)
!589 = !{!540, !365, i64 16}
!590 = !DILocation(line: 158, column: 6, scope: !511)
!591 = !DILocation(line: 158, column: 9, scope: !511)
!592 = !{!540, !365, i64 24}
!593 = !DILocation(line: 159, column: 6, scope: !511)
!594 = !DILocation(line: 159, column: 17, scope: !511)
!595 = !{!540, !365, i64 176}
!596 = !DILocation(line: 160, column: 28, scope: !511)
!597 = !DILocation(line: 160, column: 13, scope: !511)
!598 = !DILocation(line: 160, column: 22, scope: !511)
!599 = !{!366, !366, i64 0}
!600 = !DILocation(line: 161, column: 17, scope: !511)
!601 = !DILocation(line: 161, column: 22, scope: !511)
!602 = !DILocation(line: 162, column: 6, scope: !511)
!603 = !DILocation(line: 162, column: 18, scope: !511)
!604 = !{!540, !371, i64 112}
!605 = !DILocation(line: 163, column: 11, scope: !511)
!606 = !DILocation(line: 163, column: 16, scope: !511)
!607 = !{!540, !368, i64 12}
!608 = !DILocation(line: 164, column: 11, scope: !511)
!609 = !DILocation(line: 164, column: 16, scope: !511)
!610 = !{!540, !368, i64 8}
!611 = !DILocation(line: 165, column: 11, scope: !511)
!612 = !DILocation(line: 165, column: 16, scope: !511)
!613 = !{!540, !365, i64 0}
!614 = !DILocation(line: 166, column: 3, scope: !511)
!615 = !{!540, !368, i64 168}
!616 = !DILocation(line: 167, column: 3, scope: !511)
!617 = !{!540, !365, i64 88}
!618 = !{!540, !371, i64 104}
!619 = !DILocation(line: 168, column: 6, scope: !511)
!620 = !DILocation(line: 168, column: 12, scope: !511)
!621 = !{!540, !365, i64 152}
!622 = !DILocation(line: 169, column: 6, scope: !511)
!623 = !DILocation(line: 169, column: 14, scope: !511)
!624 = !{!540, !366, i64 33}
!625 = !DILocation(line: 170, column: 6, scope: !511)
!626 = !DILocation(line: 170, column: 13, scope: !511)
!627 = !{!540, !365, i64 40}
!628 = !DILocation(line: 171, column: 6, scope: !511)
!629 = !DILocation(line: 171, column: 17, scope: !511)
!630 = !{!540, !368, i64 36}
!631 = !DILocation(line: 172, column: 6, scope: !511)
!632 = !DILocation(line: 172, column: 14, scope: !511)
!633 = !{!540, !365, i64 48}
!634 = !DILocation(line: 173, column: 6, scope: !511)
!635 = !DILocation(line: 173, column: 11, scope: !511)
!636 = !{!365, !365, i64 0}
!637 = !DILocation(line: 175, column: 6, scope: !511)
!638 = !DILocation(line: 175, column: 11, scope: !511)
!639 = !DILocation(line: 177, column: 6, scope: !511)
!640 = !DILocation(line: 177, column: 17, scope: !511)
!641 = !{!540, !371, i64 120}
!642 = !DILocation(line: 178, column: 6, scope: !511)
!643 = !DILocation(line: 178, column: 14, scope: !511)
!644 = !{!540, !368, i64 144}
!645 = !DILocation(line: 179, column: 6, scope: !511)
!646 = !DILocation(line: 179, column: 16, scope: !511)
!647 = !{!540, !368, i64 148}
!648 = !DILocation(line: 180, column: 6, scope: !511)
!649 = !DILocation(line: 180, column: 13, scope: !511)
!650 = !{!540, !371, i64 136}
!651 = !DILocation(line: 144, column: 7, scope: !511)
!652 = !DILocation(line: 181, column: 8, scope: !653)
!653 = distinct !DILexicalBlock(scope: !511, file: !1, line: 181, column: 3)
!654 = !DILocation(line: 181, column: 3, scope: !653)
!655 = !DILocation(line: 181, column: 30, scope: !656)
!656 = distinct !DILexicalBlock(scope: !653, file: !1, line: 181, column: 3)
!657 = !DILocation(line: 181, column: 39, scope: !656)
!658 = !DILocation(line: 181, column: 3, scope: !656)
!659 = !DILocation(line: 149, column: 7, scope: !511)
!660 = !DILocation(line: 182, column: 7, scope: !661)
!661 = distinct !DILexicalBlock(scope: !511, file: !1, line: 182, column: 7)
!662 = !DILocation(line: 182, column: 48, scope: !661)
!663 = !DILocation(line: 182, column: 7, scope: !511)
!664 = !DILocation(line: 184, column: 5, scope: !665)
!665 = distinct !DILexicalBlock(scope: !661, file: !1, line: 182, column: 54)
!666 = !DILocation(line: 186, column: 3, scope: !665)
!667 = !DILocation(line: 0, scope: !511)
!668 = !DILocation(line: 0, scope: !526)
!669 = !DILocation(line: 190, column: 1, scope: !511)
!670 = distinct !DISubprogram(name: "f_luaopen", scope: !1, file: !1, line: 70, type: !671, isLocal: true, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !673)
!671 = !DISubroutineType(types: !672)
!672 = !{null, !4, !36}
!673 = !{!674, !675, !676, !677, !679}
!674 = !DILocalVariable(name: "L", arg: 1, scope: !670, file: !1, line: 70, type: !4)
!675 = !DILocalVariable(name: "ud", arg: 2, scope: !670, file: !1, line: 70, type: !36)
!676 = !DILocalVariable(name: "g", scope: !670, file: !1, line: 71, type: !217)
!677 = !DILocalVariable(name: "i_o", scope: !678, file: !1, line: 74, type: !73)
!678 = distinct !DILexicalBlock(scope: !670, file: !1, line: 74, column: 3)
!679 = !DILocalVariable(name: "i_o", scope: !680, file: !1, line: 75, type: !73)
!680 = distinct !DILexicalBlock(scope: !670, file: !1, line: 75, column: 3)
!681 = !DILocation(line: 70, column: 35, scope: !670)
!682 = !DILocation(line: 70, column: 44, scope: !670)
!683 = !DILocation(line: 71, column: 21, scope: !670)
!684 = !DILocation(line: 71, column: 17, scope: !670)
!685 = !DILocation(line: 42, column: 36, scope: !437, inlinedAt: !686)
!686 = distinct !DILocation(line: 73, column: 3, scope: !670)
!687 = !DILocation(line: 42, column: 51, scope: !437, inlinedAt: !686)
!688 = !DILocation(line: 44, column: 17, scope: !437, inlinedAt: !686)
!689 = !DILocation(line: 44, column: 7, scope: !437, inlinedAt: !686)
!690 = !DILocation(line: 44, column: 15, scope: !437, inlinedAt: !686)
!691 = !DILocation(line: 45, column: 7, scope: !437, inlinedAt: !686)
!692 = !DILocation(line: 45, column: 10, scope: !437, inlinedAt: !686)
!693 = !DILocation(line: 46, column: 7, scope: !437, inlinedAt: !686)
!694 = !DILocation(line: 46, column: 15, scope: !437, inlinedAt: !686)
!695 = !DILocation(line: 47, column: 42, scope: !437, inlinedAt: !686)
!696 = !DILocation(line: 47, column: 7, scope: !437, inlinedAt: !686)
!697 = !DILocation(line: 47, column: 14, scope: !437, inlinedAt: !686)
!698 = !DILocation(line: 49, column: 15, scope: !437, inlinedAt: !686)
!699 = !DILocation(line: 49, column: 7, scope: !437, inlinedAt: !686)
!700 = !DILocation(line: 49, column: 13, scope: !437, inlinedAt: !686)
!701 = !DILocation(line: 50, column: 7, scope: !437, inlinedAt: !686)
!702 = !DILocation(line: 50, column: 17, scope: !437, inlinedAt: !686)
!703 = !DILocation(line: 51, column: 17, scope: !437, inlinedAt: !686)
!704 = !DILocation(line: 51, column: 7, scope: !437, inlinedAt: !686)
!705 = !DILocation(line: 52, column: 59, scope: !437, inlinedAt: !686)
!706 = !DILocation(line: 52, column: 7, scope: !437, inlinedAt: !686)
!707 = !DILocation(line: 52, column: 18, scope: !437, inlinedAt: !686)
!708 = !DILocation(line: 54, column: 7, scope: !437, inlinedAt: !686)
!709 = !DILocation(line: 54, column: 11, scope: !437, inlinedAt: !686)
!710 = !DILocation(line: 54, column: 16, scope: !437, inlinedAt: !686)
!711 = !DILocation(line: 55, column: 3, scope: !437, inlinedAt: !686)
!712 = !DILocation(line: 56, column: 33, scope: !437, inlinedAt: !686)
!713 = !DILocation(line: 56, column: 18, scope: !437, inlinedAt: !686)
!714 = !DILocation(line: 56, column: 27, scope: !437, inlinedAt: !686)
!715 = !DILocation(line: 56, column: 7, scope: !437, inlinedAt: !686)
!716 = !DILocation(line: 56, column: 12, scope: !437, inlinedAt: !686)
!717 = !DILocation(line: 57, column: 25, scope: !437, inlinedAt: !686)
!718 = !DILocation(line: 57, column: 11, scope: !437, inlinedAt: !686)
!719 = !DILocation(line: 57, column: 15, scope: !437, inlinedAt: !686)
!720 = !DILocation(line: 58, column: 1, scope: !437, inlinedAt: !686)
!721 = !DILocation(line: 74, column: 3, scope: !678)
!722 = !DILocation(line: 75, column: 3, scope: !680)
!723 = !DILocation(line: 76, column: 3, scope: !670)
!724 = !DILocation(line: 77, column: 3, scope: !670)
!725 = !DILocation(line: 78, column: 3, scope: !670)
!726 = !DILocation(line: 79, column: 3, scope: !670)
!727 = !DILocation(line: 80, column: 25, scope: !670)
!728 = !DILocation(line: 80, column: 21, scope: !670)
!729 = !DILocation(line: 80, column: 6, scope: !670)
!730 = !DILocation(line: 80, column: 18, scope: !670)
!731 = !DILocation(line: 81, column: 1, scope: !670)
!732 = distinct !DISubprogram(name: "close_state", scope: !1, file: !1, line: 105, type: !733, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !735)
!733 = !DISubroutineType(types: !734)
!734 = !{null, !4}
!735 = !{!736, !737}
!736 = !DILocalVariable(name: "L", arg: 1, scope: !732, file: !1, line: 105, type: !4)
!737 = !DILocalVariable(name: "g", scope: !732, file: !1, line: 106, type: !217)
!738 = !DILocation(line: 105, column: 37, scope: !732)
!739 = !DILocation(line: 106, column: 21, scope: !732)
!740 = !DILocation(line: 106, column: 17, scope: !732)
!741 = !DILocation(line: 107, column: 20, scope: !732)
!742 = !DILocation(line: 107, column: 3, scope: !732)
!743 = !DILocation(line: 108, column: 3, scope: !732)
!744 = !DILocation(line: 111, column: 3, scope: !732)
!745 = !DILocation(line: 112, column: 3, scope: !732)
!746 = !DILocation(line: 61, column: 35, scope: !500, inlinedAt: !747)
!747 = distinct !DILocation(line: 113, column: 3, scope: !732)
!748 = !DILocation(line: 61, column: 49, scope: !500, inlinedAt: !747)
!749 = !DILocation(line: 62, column: 3, scope: !500, inlinedAt: !747)
!750 = !DILocation(line: 63, column: 3, scope: !500, inlinedAt: !747)
!751 = !DILocation(line: 64, column: 1, scope: !500, inlinedAt: !747)
!752 = !DILocation(line: 115, column: 8, scope: !732)
!753 = !DILocation(line: 115, column: 21, scope: !732)
!754 = !DILocation(line: 115, column: 25, scope: !732)
!755 = !DILocation(line: 115, column: 3, scope: !732)
!756 = !DILocation(line: 116, column: 1, scope: !732)
!757 = distinct !DISubprogram(name: "lua_close", scope: !1, file: !1, line: 199, type: !733, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !758)
!758 = !{!759}
!759 = !DILocalVariable(name: "L", arg: 1, scope: !757, file: !1, line: 199, type: !4)
!760 = !DILocation(line: 199, column: 36, scope: !757)
!761 = !DILocation(line: 200, column: 7, scope: !757)
!762 = !DILocation(line: 200, column: 13, scope: !757)
!763 = !DILocation(line: 202, column: 20, scope: !757)
!764 = !DILocation(line: 202, column: 3, scope: !757)
!765 = !DILocation(line: 203, column: 3, scope: !757)
!766 = !DILocation(line: 204, column: 6, scope: !757)
!767 = !DILocation(line: 204, column: 14, scope: !757)
!768 = !DILocation(line: 205, column: 3, scope: !757)
!769 = !DILocation(line: 206, column: 16, scope: !770)
!770 = distinct !DILexicalBlock(scope: !757, file: !1, line: 205, column: 6)
!771 = !DILocation(line: 206, column: 11, scope: !770)
!772 = !DILocation(line: 207, column: 31, scope: !770)
!773 = !DILocation(line: 207, column: 22, scope: !770)
!774 = !DILocation(line: 207, column: 13, scope: !770)
!775 = !DILocation(line: 208, column: 32, scope: !770)
!776 = !DILocation(line: 208, column: 16, scope: !770)
!777 = !DILocation(line: 209, column: 12, scope: !757)
!778 = !DILocation(line: 209, column: 55, scope: !757)
!779 = !DILocation(line: 209, column: 3, scope: !770)
!780 = distinct !{!780, !768, !781}
!781 = !DILocation(line: 209, column: 59, scope: !757)
!782 = !DILocation(line: 212, column: 3, scope: !757)
!783 = !DILocation(line: 213, column: 1, scope: !757)
!784 = distinct !DISubprogram(name: "callallgcTM", scope: !1, file: !1, line: 193, type: !671, isLocal: true, isDefinition: true, scopeLine: 193, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !785)
!785 = !{!786, !787}
!786 = !DILocalVariable(name: "L", arg: 1, scope: !784, file: !1, line: 193, type: !4)
!787 = !DILocalVariable(name: "ud", arg: 2, scope: !784, file: !1, line: 193, type: !36)
!788 = !DILocation(line: 193, column: 37, scope: !784)
!789 = !DILocation(line: 193, column: 46, scope: !784)
!790 = !DILocation(line: 195, column: 3, scope: !784)
!791 = !DILocation(line: 196, column: 1, scope: !784)
