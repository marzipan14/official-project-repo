; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lfunc.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lfunc.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.Closure = type { %struct.CClosure }
%struct.CClosure = type { %union.GCObject*, i8, i8, i8, i8, %union.GCObject*, %struct.Table*, i32 (%struct.lua_State*)*, [1 x %struct.lua_TValue] }
%union.GCObject = type { %struct.lua_State }
%struct.lua_State = type { %union.GCObject*, i8, i8, i8, %struct.lua_TValue*, %struct.lua_TValue*, %struct.global_State*, %struct.CallInfo*, i32*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.CallInfo*, %struct.CallInfo*, i32, i32, i16, i16, i8, i8, i32, i32, void (%struct.lua_State*, %struct.lua_Debug*)*, %struct.lua_TValue, %struct.lua_TValue, %union.GCObject*, %union.GCObject*, %struct.lua_longjmp*, i64 }
%struct.global_State = type { %struct.stringtable, i8* (i8*, i8*, i64, i64)*, i8*, i8, i8, i32, %union.GCObject*, %union.GCObject**, %union.GCObject*, %union.GCObject*, %union.GCObject*, %union.GCObject*, %struct.Mbuffer, i64, i64, i64, i64, i32, i32, {}*, %struct.lua_TValue, %struct.lua_State*, %struct.UpVal, [9 x %struct.Table*], [17 x %union.TString*] }
%struct.stringtable = type { %union.GCObject**, i32, i32 }
%struct.Mbuffer = type { i8*, i64, i64 }
%struct.UpVal = type { %union.GCObject*, i8, i8, %struct.lua_TValue*, %union.anon }
%union.anon = type { %struct.lua_TValue }
%union.TString = type { %struct.anon.1 }
%struct.anon.1 = type { %union.GCObject*, i8, i8, i8, i32, i64 }
%struct.CallInfo = type { %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*, i32*, i32, i32 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, [60 x i8], i32 }
%struct.lua_TValue = type { %union.Value, i32 }
%union.Value = type { %union.GCObject* }
%struct.lua_longjmp = type opaque
%struct.Table = type { %union.GCObject*, i8, i8, i8, i8, %struct.Table*, %struct.lua_TValue*, %struct.Node*, %struct.Node*, %union.GCObject*, i32 }
%struct.Node = type { %struct.lua_TValue, %union.TKey }
%union.TKey = type { %struct.anon }
%struct.anon = type { %union.Value, i32, %struct.Node* }
%struct.Proto = type { %union.GCObject*, i8, i8, %struct.lua_TValue*, i32*, %struct.Proto**, i32*, %struct.LocVar*, %union.TString**, %union.TString*, i32, i32, i32, i32, i32, i32, i32, i32, %union.GCObject*, i8, i8, i8, i8 }
%struct.LocVar = type { %union.TString*, i32, i32 }

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define hidden %union.Closure* @luaF_newCclosure(%struct.lua_State*, i32, %struct.Table*) local_unnamed_addr #0 !dbg !343 {
  %4 = shl i32 %1, 4, !dbg !356
  %5 = add i32 %4, 40, !dbg !356
  %6 = sext i32 %5 to i64, !dbg !356
  %7 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* null, i64 0, i64 %6) #3, !dbg !356
  %8 = bitcast i8* %7 to %union.Closure*, !dbg !356
  %9 = bitcast i8* %7 to %union.GCObject*, !dbg !358
  tail call void @luaC_link(%struct.lua_State* %0, %union.GCObject* %9, i8 zeroext 6) #3, !dbg !359
  %10 = getelementptr inbounds i8, i8* %7, i64 10, !dbg !360
  store i8 1, i8* %10, align 2, !dbg !361, !tbaa !362
  %11 = getelementptr inbounds i8, i8* %7, i64 24, !dbg !365
  %12 = bitcast i8* %11 to %struct.Table**, !dbg !365
  store %struct.Table* %2, %struct.Table** %12, align 8, !dbg !366, !tbaa !362
  %13 = trunc i32 %1 to i8, !dbg !367
  %14 = getelementptr inbounds i8, i8* %7, i64 11, !dbg !368
  store i8 %13, i8* %14, align 1, !dbg !369, !tbaa !362
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !370
  ret %union.Closure* %8, !dbg !370
}

; Function Attrs: noredzone
declare hidden i8* @luaM_realloc_(%struct.lua_State*, i8*, i64, i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare hidden void @luaC_link(%struct.lua_State*, %union.GCObject*, i8 zeroext) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define hidden %union.Closure* @luaF_newLclosure(%struct.lua_State*, i32, %struct.Table*) local_unnamed_addr #0 !dbg !371 {
  %4 = shl i32 %1, 3, !dbg !380
  %5 = add i32 %4, 40, !dbg !380
  %6 = sext i32 %5 to i64, !dbg !380
  %7 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* null, i64 0, i64 %6) #3, !dbg !380
  %8 = bitcast i8* %7 to %union.Closure*, !dbg !380
  %9 = bitcast i8* %7 to %union.GCObject*, !dbg !382
  tail call void @luaC_link(%struct.lua_State* %0, %union.GCObject* %9, i8 zeroext 6) #3, !dbg !383
  %10 = getelementptr inbounds i8, i8* %7, i64 10, !dbg !384
  store i8 0, i8* %10, align 2, !dbg !385, !tbaa !362
  %11 = getelementptr inbounds i8, i8* %7, i64 24, !dbg !386
  %12 = bitcast i8* %11 to %struct.Table**, !dbg !386
  store %struct.Table* %2, %struct.Table** %12, align 8, !dbg !387, !tbaa !362
  %13 = trunc i32 %1 to i8, !dbg !388
  %14 = getelementptr inbounds i8, i8* %7, i64 11, !dbg !389
  store i8 %13, i8* %14, align 1, !dbg !390, !tbaa !362
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !391
  %15 = icmp eq i32 %1, 0, !dbg !391
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !391
  br i1 %15, label %44, label %16, !dbg !391

; <label>:16:                                     ; preds = %3
  %17 = getelementptr inbounds i8, i8* %7, i64 40
  %18 = bitcast i8* %17 to [1 x %struct.UpVal*]*
  %19 = sext i32 %1 to i64, !dbg !391
  %20 = add nsw i64 %19, -1, !dbg !391
  %21 = and i64 %19, 3, !dbg !391
  %22 = icmp eq i64 %21, 0, !dbg !391
  br i1 %22, label %30, label %23, !dbg !391

; <label>:23:                                     ; preds = %16, %23
  %24 = phi i64 [ %26, %23 ], [ %19, %16 ]
  %25 = phi i64 [ %28, %23 ], [ %21, %16 ]
  %26 = add nsw i64 %24, -1, !dbg !392
  %27 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %18, i64 0, i64 %26, !dbg !393
  store %struct.UpVal* null, %struct.UpVal** %27, align 8, !dbg !394, !tbaa !362
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !391
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !391
  %28 = add i64 %25, -1, !dbg !391
  %29 = icmp eq i64 %28, 0, !dbg !391
  br i1 %29, label %30, label %23, !dbg !391, !llvm.loop !395

; <label>:30:                                     ; preds = %23, %16
  %31 = phi i64 [ %19, %16 ], [ %26, %23 ]
  %32 = icmp ult i64 %20, 3, !dbg !391
  br i1 %32, label %44, label %33, !dbg !391

; <label>:33:                                     ; preds = %30, %33
  %34 = phi i64 [ %41, %33 ], [ %31, %30 ]
  %35 = add nsw i64 %34, -1, !dbg !392
  %36 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %18, i64 0, i64 %35, !dbg !393
  store %struct.UpVal* null, %struct.UpVal** %36, align 8, !dbg !394, !tbaa !362
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !391
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !391
  %37 = add nsw i64 %34, -2, !dbg !392
  %38 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %18, i64 0, i64 %37, !dbg !393
  store %struct.UpVal* null, %struct.UpVal** %38, align 8, !dbg !394, !tbaa !362
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !391
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !391
  %39 = add nsw i64 %34, -3, !dbg !392
  %40 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %18, i64 0, i64 %39, !dbg !393
  store %struct.UpVal* null, %struct.UpVal** %40, align 8, !dbg !394, !tbaa !362
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !391
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !391
  %41 = add nsw i64 %34, -4, !dbg !392
  %42 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %18, i64 0, i64 %41, !dbg !393
  store %struct.UpVal* null, %struct.UpVal** %42, align 8, !dbg !394, !tbaa !362
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !391
  %43 = icmp eq i64 %41, 0
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !391
  br i1 %43, label %44, label %33, !dbg !391, !llvm.loop !397

; <label>:44:                                     ; preds = %30, %33, %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !399
  ret %union.Closure* %8, !dbg !399
}

; Function Attrs: noredzone nounwind
define hidden %struct.UpVal* @luaF_newupval(%struct.lua_State*) local_unnamed_addr #0 !dbg !400 {
  %2 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* null, i64 0, i64 40) #3, !dbg !407
  %3 = bitcast i8* %2 to %struct.UpVal*, !dbg !407
  %4 = bitcast i8* %2 to %union.GCObject*, !dbg !409
  tail call void @luaC_link(%struct.lua_State* %0, %union.GCObject* %4, i8 zeroext 10) #3, !dbg !410
  %5 = getelementptr inbounds i8, i8* %2, i64 24, !dbg !411
  %6 = getelementptr inbounds i8, i8* %2, i64 16, !dbg !412
  %7 = bitcast i8* %6 to i8**, !dbg !413
  store i8* %5, i8** %7, align 8, !dbg !413, !tbaa !414
  %8 = getelementptr inbounds i8, i8* %2, i64 32, !dbg !417
  %9 = bitcast i8* %8 to i32*, !dbg !417
  store i32 0, i32* %9, align 8, !dbg !417, !tbaa !418
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !421
  ret %struct.UpVal* %3, !dbg !421
}

; Function Attrs: noredzone nounwind
define hidden %struct.UpVal* @luaF_findupval(%struct.lua_State*, %struct.lua_TValue*) local_unnamed_addr #0 !dbg !422 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !434
  %4 = load %struct.global_State*, %struct.global_State** %3, align 8, !dbg !434, !tbaa !435
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 24, !dbg !440
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !442
  %6 = load %union.GCObject*, %union.GCObject** %5, align 8, !dbg !443, !tbaa !444
  %7 = icmp eq %union.GCObject* %6, null, !dbg !445
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !446
  br i1 %7, label %38, label %8, !dbg !446

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %union.GCObject, %union.GCObject* %6, i64 0, i32 0, i32 4, !dbg !447
  %10 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8, !dbg !447, !tbaa !414
  %11 = icmp ult %struct.lua_TValue* %10, %1, !dbg !448
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !442
  br i1 %11, label %38, label %16, !dbg !442

; <label>:12:                                     ; preds = %32
  %13 = getelementptr inbounds %union.GCObject, %union.GCObject* %34, i64 0, i32 0, i32 4, !dbg !447
  %14 = load %struct.lua_TValue*, %struct.lua_TValue** %13, align 8, !dbg !447, !tbaa !414
  %15 = icmp ult %struct.lua_TValue* %14, %1, !dbg !448
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !442
  br i1 %15, label %36, label %16, !dbg !442, !llvm.loop !449

; <label>:16:                                     ; preds = %8, %12
  %17 = phi %struct.lua_TValue* [ %14, %12 ], [ %10, %8 ]
  %18 = phi %union.GCObject* [ %34, %12 ], [ %6, %8 ]
  %19 = icmp eq %struct.lua_TValue* %17, %1, !dbg !451
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !454
  br i1 %19, label %20, label %32, !dbg !454

; <label>:20:                                     ; preds = %16
  %21 = bitcast %union.GCObject* %18 to %struct.UpVal*, !dbg !455
  %22 = getelementptr inbounds %union.GCObject, %union.GCObject* %18, i64 0, i32 0, i32 2, !dbg !456
  %23 = load i8, i8* %22, align 1, !dbg !456, !tbaa !362
  %24 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 3, !dbg !456
  %25 = load i8, i8* %24, align 8, !dbg !456, !tbaa !459
  %26 = xor i8 %25, 3, !dbg !456
  %27 = and i8 %23, 3, !dbg !456
  %28 = and i8 %27, %26, !dbg !456
  %29 = icmp eq i8 %28, 0, !dbg !456
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !463
  br i1 %29, label %64, label %30, !dbg !463

; <label>:30:                                     ; preds = %20
  %31 = xor i8 %23, 3, !dbg !464
  store i8 %31, i8* %22, align 1, !dbg !464, !tbaa !362
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !464
  br label %64, !dbg !464

; <label>:32:                                     ; preds = %16
  %33 = getelementptr inbounds %union.GCObject, %union.GCObject* %18, i64 0, i32 0, i32 0, !dbg !465
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !442
  %34 = load %union.GCObject*, %union.GCObject** %33, align 8, !dbg !443, !tbaa !444
  %35 = icmp eq %union.GCObject* %34, null, !dbg !445
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !446
  br i1 %35, label %36, label %12, !dbg !446, !llvm.loop !449

; <label>:36:                                     ; preds = %32, %12
  %37 = getelementptr inbounds %union.GCObject, %union.GCObject* %18, i64 0, i32 0, i32 0, !dbg !465
  br label %38, !dbg !466

; <label>:38:                                     ; preds = %36, %8, %2
  %39 = phi %union.GCObject** [ %5, %2 ], [ %5, %8 ], [ %37, %36 ], !dbg !467
  %40 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* null, i64 0, i64 40) #3, !dbg !466
  %41 = bitcast i8* %40 to %struct.UpVal*, !dbg !466
  %42 = getelementptr inbounds i8, i8* %40, i64 8, !dbg !469
  store i8 10, i8* %42, align 8, !dbg !470, !tbaa !471
  %43 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 3, !dbg !472
  %44 = load i8, i8* %43, align 8, !dbg !472, !tbaa !459
  %45 = and i8 %44, 3, !dbg !472
  %46 = getelementptr inbounds i8, i8* %40, i64 9, !dbg !473
  store i8 %45, i8* %46, align 1, !dbg !474, !tbaa !475
  %47 = getelementptr inbounds i8, i8* %40, i64 16, !dbg !476
  %48 = bitcast i8* %47 to %struct.lua_TValue**, !dbg !476
  store %struct.lua_TValue* %1, %struct.lua_TValue** %48, align 8, !dbg !477, !tbaa !414
  %49 = bitcast %union.GCObject** %39 to i64*, !dbg !478
  %50 = load i64, i64* %49, align 8, !dbg !478, !tbaa !444
  %51 = bitcast i8* %40 to i64*, !dbg !479
  store i64 %50, i64* %51, align 8, !dbg !479, !tbaa !480
  %52 = bitcast %union.GCObject** %39 to i8**, !dbg !481
  store i8* %40, i8** %52, align 8, !dbg !481, !tbaa !444
  %53 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 22, !dbg !482
  %54 = getelementptr inbounds i8, i8* %40, i64 24, !dbg !483
  %55 = bitcast i8* %54 to %struct.UpVal**, !dbg !484
  store %struct.UpVal* %53, %struct.UpVal** %55, align 8, !dbg !485, !tbaa !362
  %56 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 22, i32 4, i32 0, i32 1, !dbg !486
  %57 = bitcast i32* %56 to %struct.UpVal**, !dbg !486
  %58 = load %struct.UpVal*, %struct.UpVal** %57, align 8, !dbg !486, !tbaa !362
  %59 = getelementptr inbounds i8, i8* %40, i64 32, !dbg !487
  %60 = bitcast i8* %59 to %struct.UpVal**, !dbg !487
  store %struct.UpVal* %58, %struct.UpVal** %60, align 8, !dbg !488, !tbaa !362
  %61 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %58, i64 0, i32 4, !dbg !489
  %62 = bitcast %union.anon* %61 to i8**, !dbg !490
  store i8* %40, i8** %62, align 8, !dbg !490, !tbaa !362
  %63 = bitcast i32* %56 to i8**, !dbg !491
  store i8* %40, i8** %63, align 8, !dbg !491, !tbaa !362
  br label %64, !dbg !492

; <label>:64:                                     ; preds = %30, %20, %38
  %65 = phi %struct.UpVal* [ %41, %38 ], [ %21, %20 ], [ %21, %30 ], !dbg !493
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !494
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !495
  ret %struct.UpVal* %65, !dbg !495
}

; Function Attrs: noredzone nounwind
define hidden void @luaF_freeupval(%struct.lua_State*, %struct.UpVal*) local_unnamed_addr #0 !dbg !496 {
  %3 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %1, i64 0, i32 3, !dbg !504
  %4 = load %struct.lua_TValue*, %struct.lua_TValue** %3, align 8, !dbg !504, !tbaa !414
  %5 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %1, i64 0, i32 4, i32 0, !dbg !506
  %6 = icmp eq %struct.lua_TValue* %4, %5, !dbg !507
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !508
  br i1 %6, label %22, label %7, !dbg !508

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %1, i64 0, i32 4, !dbg !516
  %9 = bitcast %union.anon* %8 to %struct.UpVal**, !dbg !517
  %10 = bitcast %union.anon* %8 to i64*, !dbg !517
  %11 = load i64, i64* %10, align 8, !dbg !517, !tbaa !362
  %12 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %1, i64 0, i32 4, i32 0, i32 1, !dbg !518
  %13 = bitcast i32* %12 to %struct.UpVal**, !dbg !518
  %14 = load %struct.UpVal*, %struct.UpVal** %13, align 8, !dbg !518, !tbaa !362
  %15 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %14, i64 0, i32 4, !dbg !519
  %16 = bitcast %union.anon* %15 to i64*, !dbg !520
  store i64 %11, i64* %16, align 8, !dbg !520, !tbaa !362
  %17 = bitcast i32* %12 to i64*, !dbg !521
  %18 = load i64, i64* %17, align 8, !dbg !521, !tbaa !362
  %19 = load %struct.UpVal*, %struct.UpVal** %9, align 8, !dbg !522, !tbaa !362
  %20 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %19, i64 0, i32 4, i32 0, i32 1, !dbg !523
  %21 = bitcast i32* %20 to i64*, !dbg !524
  store i64 %18, i64* %21, align 8, !dbg !524, !tbaa !362
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !525
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !526
  br label %22, !dbg !526

; <label>:22:                                     ; preds = %2, %7
  %23 = bitcast %struct.UpVal* %1 to i8*, !dbg !527
  %24 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* %23, i64 40, i64 0) #3, !dbg !527
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !528
  ret void, !dbg !528
}

; Function Attrs: noredzone nounwind
define hidden void @luaF_close(%struct.lua_State*, %struct.lua_TValue* readnone) local_unnamed_addr #0 !dbg !529 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !548
  %4 = load %struct.global_State*, %struct.global_State** %3, align 8, !dbg !548, !tbaa !435
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !550
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 24, !dbg !551
  %6 = load %union.GCObject*, %union.GCObject** %5, align 8, !dbg !551, !tbaa !552
  %7 = icmp eq %union.GCObject* %6, null, !dbg !553
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !554
  br i1 %7, label %73, label %8, !dbg !554

; <label>:8:                                      ; preds = %2
  %9 = bitcast %union.GCObject** %5 to i64*
  %10 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 3
  br label %11, !dbg !554

; <label>:11:                                     ; preds = %8, %70
  %12 = phi %union.GCObject* [ %6, %8 ], [ %71, %70 ]
  %13 = bitcast %union.GCObject* %12 to %struct.UpVal*, !dbg !555
  %14 = getelementptr inbounds %union.GCObject, %union.GCObject* %12, i64 0, i32 0, i32 4, !dbg !557
  %15 = load %struct.lua_TValue*, %struct.lua_TValue** %14, align 8, !dbg !557, !tbaa !414
  %16 = icmp ult %struct.lua_TValue* %15, %1, !dbg !558
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !550
  br i1 %16, label %73, label %17, !dbg !550

; <label>:17:                                     ; preds = %11
  %18 = bitcast %union.GCObject* %12 to i64*, !dbg !560
  %19 = load i64, i64* %18, align 8, !dbg !560, !tbaa !480
  store i64 %19, i64* %9, align 8, !dbg !561, !tbaa !552
  %20 = getelementptr inbounds %union.GCObject, %union.GCObject* %12, i64 0, i32 0, i32 2, !dbg !562
  %21 = load i8, i8* %20, align 1, !dbg !562, !tbaa !362
  %22 = load i8, i8* %10, align 8, !dbg !562, !tbaa !459
  %23 = xor i8 %22, 3, !dbg !562
  %24 = and i8 %21, 3, !dbg !562
  %25 = and i8 %24, %23, !dbg !562
  %26 = icmp eq i8 %25, 0, !dbg !562
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !563
  %27 = getelementptr inbounds %union.GCObject, %union.GCObject* %12, i64 0, i32 0, i32 5, !dbg !564
  br i1 %26, label %48, label %28, !dbg !563

; <label>:28:                                     ; preds = %17
  %29 = bitcast %struct.lua_TValue** %27 to %struct.lua_TValue*, !dbg !568
  %30 = icmp eq %struct.lua_TValue* %15, %29, !dbg !569
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !570
  br i1 %30, label %45, label %31, !dbg !570

; <label>:31:                                     ; preds = %28
  %32 = bitcast %struct.lua_TValue** %27 to %struct.UpVal**, !dbg !573
  %33 = bitcast %struct.lua_TValue** %27 to i64*, !dbg !573
  %34 = load i64, i64* %33, align 8, !dbg !573, !tbaa !362
  %35 = getelementptr inbounds %union.GCObject, %union.GCObject* %12, i64 0, i32 0, i32 6, !dbg !574
  %36 = bitcast %struct.global_State** %35 to %struct.UpVal**, !dbg !574
  %37 = load %struct.UpVal*, %struct.UpVal** %36, align 8, !dbg !574, !tbaa !362
  %38 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %37, i64 0, i32 4, !dbg !575
  %39 = bitcast %union.anon* %38 to i64*, !dbg !576
  store i64 %34, i64* %39, align 8, !dbg !576, !tbaa !362
  %40 = bitcast %struct.global_State** %35 to i64*, !dbg !577
  %41 = load i64, i64* %40, align 8, !dbg !577, !tbaa !362
  %42 = load %struct.UpVal*, %struct.UpVal** %32, align 8, !dbg !578, !tbaa !362
  %43 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %42, i64 0, i32 4, i32 0, i32 1, !dbg !579
  %44 = bitcast i32* %43 to i64*, !dbg !580
  store i64 %41, i64* %44, align 8, !dbg !580, !tbaa !362
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !581
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !582
  br label %45, !dbg !582

; <label>:45:                                     ; preds = %28, %31
  %46 = bitcast %union.GCObject* %12 to i8*, !dbg !583
  %47 = tail call i8* @luaM_realloc_(%struct.lua_State* nonnull %0, i8* %46, i64 40, i64 0) #3, !dbg !583
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !584
  br label %70, !dbg !585

; <label>:48:                                     ; preds = %17
  %49 = bitcast %struct.lua_TValue** %27 to %struct.UpVal**, !dbg !588
  %50 = bitcast %struct.lua_TValue** %27 to i64*, !dbg !588
  %51 = load i64, i64* %50, align 8, !dbg !588, !tbaa !362
  %52 = getelementptr inbounds %union.GCObject, %union.GCObject* %12, i64 0, i32 0, i32 6, !dbg !589
  %53 = bitcast %struct.global_State** %52 to %struct.UpVal**, !dbg !589
  %54 = load %struct.UpVal*, %struct.UpVal** %53, align 8, !dbg !589, !tbaa !362
  %55 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %54, i64 0, i32 4, !dbg !590
  %56 = bitcast %union.anon* %55 to i64*, !dbg !591
  store i64 %51, i64* %56, align 8, !dbg !591, !tbaa !362
  %57 = bitcast %struct.global_State** %52 to i64*, !dbg !592
  %58 = load i64, i64* %57, align 8, !dbg !592, !tbaa !362
  %59 = load %struct.UpVal*, %struct.UpVal** %49, align 8, !dbg !593, !tbaa !362
  %60 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %59, i64 0, i32 4, i32 0, i32 1, !dbg !594
  %61 = bitcast i32* %60 to i64*, !dbg !595
  store i64 %58, i64* %61, align 8, !dbg !595, !tbaa !362
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !596
  %62 = load %struct.lua_TValue*, %struct.lua_TValue** %14, align 8, !dbg !597, !tbaa !414
  %63 = bitcast %struct.lua_TValue* %62 to i64*, !dbg !597
  %64 = load i64, i64* %63, align 8, !dbg !597
  store i64 %64, i64* %50, align 8, !dbg !597
  %65 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %62, i64 0, i32 1, !dbg !597
  %66 = load i32, i32* %65, align 8, !dbg !597, !tbaa !418
  %67 = getelementptr inbounds %struct.lua_TValue*, %struct.lua_TValue** %27, i64 1, !dbg !597
  %68 = bitcast %struct.lua_TValue** %67 to i32*, !dbg !597
  store i32 %66, i32* %68, align 8, !dbg !597, !tbaa !418
  %69 = bitcast %struct.lua_TValue** %14 to %struct.lua_TValue***, !dbg !598
  store %struct.lua_TValue** %27, %struct.lua_TValue*** %69, align 8, !dbg !598, !tbaa !414
  tail call void @luaC_linkupval(%struct.lua_State* nonnull %0, %struct.UpVal* nonnull %13) #3, !dbg !599
  br label %70

; <label>:70:                                     ; preds = %48, %45
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !550
  %71 = load %union.GCObject*, %union.GCObject** %5, align 8, !dbg !551, !tbaa !552
  %72 = icmp eq %union.GCObject* %71, null, !dbg !553
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !554
  br i1 %72, label %73, label %11, !dbg !554, !llvm.loop !600

; <label>:73:                                     ; preds = %70, %11, %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !602
  ret void, !dbg !602
}

; Function Attrs: noredzone
declare hidden void @luaC_linkupval(%struct.lua_State*, %struct.UpVal*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define hidden %struct.Proto* @luaF_newproto(%struct.lua_State*) local_unnamed_addr #0 !dbg !603 {
  %2 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* null, i64 0, i64 120) #3, !dbg !610
  %3 = bitcast i8* %2 to %struct.Proto*, !dbg !610
  %4 = bitcast i8* %2 to %union.GCObject*, !dbg !612
  tail call void @luaC_link(%struct.lua_State* %0, %union.GCObject* %4, i8 zeroext 9) #3, !dbg !613
  %5 = getelementptr inbounds i8, i8* %2, i64 16, !dbg !614
  %6 = bitcast i8* %5 to %struct.lua_TValue**, !dbg !614
  store %struct.lua_TValue* null, %struct.lua_TValue** %6, align 8, !dbg !615, !tbaa !616
  %7 = getelementptr inbounds i8, i8* %2, i64 32, !dbg !618
  %8 = bitcast i8* %7 to %struct.Proto***, !dbg !618
  store %struct.Proto** null, %struct.Proto*** %8, align 8, !dbg !619, !tbaa !620
  %9 = getelementptr inbounds i8, i8* %2, i64 88, !dbg !621
  %10 = bitcast i8* %9 to i32*, !dbg !621
  store i32 0, i32* %10, align 8, !dbg !622, !tbaa !623
  %11 = getelementptr inbounds i8, i8* %2, i64 24, !dbg !624
  %12 = bitcast i8* %11 to i32**, !dbg !624
  store i32* null, i32** %12, align 8, !dbg !625, !tbaa !626
  %13 = getelementptr inbounds i8, i8* %2, i64 72, !dbg !627
  %14 = bitcast i8* %13 to <4 x i32>*, !dbg !628
  store <4 x i32> zeroinitializer, <4 x i32>* %14, align 8, !dbg !628, !tbaa !629
  %15 = getelementptr inbounds i8, i8* %2, i64 112, !dbg !630
  store i8 0, i8* %15, align 8, !dbg !631, !tbaa !632
  %16 = getelementptr inbounds i8, i8* %2, i64 56, !dbg !633
  %17 = bitcast i8* %16 to %union.TString***, !dbg !633
  store %union.TString** null, %union.TString*** %17, align 8, !dbg !634, !tbaa !635
  %18 = getelementptr inbounds i8, i8* %2, i64 113, !dbg !636
  store i8 0, i8* %18, align 1, !dbg !637, !tbaa !638
  %19 = getelementptr inbounds i8, i8* %2, i64 114, !dbg !639
  store i8 0, i8* %19, align 2, !dbg !640, !tbaa !641
  %20 = getelementptr inbounds i8, i8* %2, i64 115, !dbg !642
  store i8 0, i8* %20, align 1, !dbg !643, !tbaa !644
  %21 = getelementptr inbounds i8, i8* %2, i64 40, !dbg !645
  %22 = bitcast i8* %21 to i32**, !dbg !645
  store i32* null, i32** %22, align 8, !dbg !646, !tbaa !647
  %23 = getelementptr inbounds i8, i8* %2, i64 92, !dbg !648
  %24 = bitcast i8* %23 to i32*, !dbg !648
  store i32 0, i32* %24, align 4, !dbg !649, !tbaa !650
  %25 = getelementptr inbounds i8, i8* %2, i64 48, !dbg !651
  %26 = bitcast i8* %25 to %struct.LocVar**, !dbg !651
  store %struct.LocVar* null, %struct.LocVar** %26, align 8, !dbg !652, !tbaa !653
  %27 = getelementptr inbounds i8, i8* %2, i64 96, !dbg !654
  %28 = bitcast i8* %27 to i32*, !dbg !654
  store i32 0, i32* %28, align 8, !dbg !655, !tbaa !656
  %29 = getelementptr inbounds i8, i8* %2, i64 100, !dbg !657
  %30 = bitcast i8* %29 to i32*, !dbg !657
  store i32 0, i32* %30, align 4, !dbg !658, !tbaa !659
  %31 = getelementptr inbounds i8, i8* %2, i64 64, !dbg !660
  %32 = bitcast i8* %31 to %union.TString**, !dbg !660
  store %union.TString* null, %union.TString** %32, align 8, !dbg !661, !tbaa !662
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !663
  ret %struct.Proto* %3, !dbg !663
}

; Function Attrs: noredzone nounwind
define hidden void @luaF_freeproto(%struct.lua_State*, %struct.Proto*) local_unnamed_addr #0 !dbg !664 {
  %3 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 4, !dbg !672
  %4 = bitcast i32** %3 to i8**, !dbg !672
  %5 = load i8*, i8** %4, align 8, !dbg !672, !tbaa !626
  %6 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 12, !dbg !672
  %7 = load i32, i32* %6, align 8, !dbg !672, !tbaa !673
  %8 = sext i32 %7 to i64, !dbg !672
  %9 = shl nsw i64 %8, 2, !dbg !672
  %10 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* %5, i64 %9, i64 0) #3, !dbg !672
  %11 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 5, !dbg !674
  %12 = bitcast %struct.Proto*** %11 to i8**, !dbg !674
  %13 = load i8*, i8** %12, align 8, !dbg !674, !tbaa !620
  %14 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 14, !dbg !674
  %15 = load i32, i32* %14, align 8, !dbg !674, !tbaa !623
  %16 = sext i32 %15 to i64, !dbg !674
  %17 = shl nsw i64 %16, 3, !dbg !674
  %18 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* %13, i64 %17, i64 0) #3, !dbg !674
  %19 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 3, !dbg !675
  %20 = bitcast %struct.lua_TValue** %19 to i8**, !dbg !675
  %21 = load i8*, i8** %20, align 8, !dbg !675, !tbaa !616
  %22 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 11, !dbg !675
  %23 = load i32, i32* %22, align 4, !dbg !675, !tbaa !676
  %24 = sext i32 %23 to i64, !dbg !675
  %25 = shl nsw i64 %24, 4, !dbg !675
  %26 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* %21, i64 %25, i64 0) #3, !dbg !675
  %27 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 6, !dbg !677
  %28 = bitcast i32** %27 to i8**, !dbg !677
  %29 = load i8*, i8** %28, align 8, !dbg !677, !tbaa !647
  %30 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 13, !dbg !677
  %31 = load i32, i32* %30, align 4, !dbg !677, !tbaa !678
  %32 = sext i32 %31 to i64, !dbg !677
  %33 = shl nsw i64 %32, 2, !dbg !677
  %34 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* %29, i64 %33, i64 0) #3, !dbg !677
  %35 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 7, !dbg !679
  %36 = bitcast %struct.LocVar** %35 to i8**, !dbg !679
  %37 = load i8*, i8** %36, align 8, !dbg !679, !tbaa !653
  %38 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 15, !dbg !679
  %39 = load i32, i32* %38, align 4, !dbg !679, !tbaa !650
  %40 = sext i32 %39 to i64, !dbg !679
  %41 = shl nsw i64 %40, 4, !dbg !679
  %42 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* %37, i64 %41, i64 0) #3, !dbg !679
  %43 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 8, !dbg !680
  %44 = bitcast %union.TString*** %43 to i8**, !dbg !680
  %45 = load i8*, i8** %44, align 8, !dbg !680, !tbaa !635
  %46 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 10, !dbg !680
  %47 = load i32, i32* %46, align 8, !dbg !680, !tbaa !681
  %48 = sext i32 %47 to i64, !dbg !680
  %49 = shl nsw i64 %48, 3, !dbg !680
  %50 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* %45, i64 %49, i64 0) #3, !dbg !680
  %51 = bitcast %struct.Proto* %1 to i8*, !dbg !682
  %52 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* %51, i64 120, i64 0) #3, !dbg !682
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !683
  ret void, !dbg !683
}

; Function Attrs: noredzone nounwind
define hidden void @luaF_freeclosure(%struct.lua_State*, %union.Closure*) local_unnamed_addr #0 !dbg !684 {
  %3 = getelementptr inbounds %union.Closure, %union.Closure* %1, i64 0, i32 0, i32 3, !dbg !693
  %4 = load i8, i8* %3, align 2, !dbg !693, !tbaa !362
  %5 = icmp eq i8 %4, 0, !dbg !694
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !694
  %6 = getelementptr inbounds %union.Closure, %union.Closure* %1, i64 0, i32 0, i32 4, !dbg !695
  %7 = load i8, i8* %6, align 1, !dbg !695, !tbaa !362
  %8 = zext i8 %7 to i32, !dbg !695
  %9 = select i1 %5, i32 3, i32 4, !dbg !694
  %10 = shl nuw nsw i32 %8, %9, !dbg !695
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !694
  %11 = add nuw nsw i32 %10, 40, !dbg !694
  %12 = bitcast %union.Closure* %1 to i8*, !dbg !697
  %13 = zext i32 %11 to i64, !dbg !697
  %14 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* %12, i64 %13, i64 0) #3, !dbg !697
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !698
  ret void, !dbg !698
}

; Function Attrs: noredzone nounwind
define hidden i8* @luaF_getlocalname(%struct.Proto* nocapture readonly, i32, i32) local_unnamed_addr #0 !dbg !699 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !713
  %4 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 15, !dbg !715
  %5 = load i32, i32* %4, align 4, !dbg !715, !tbaa !650
  %6 = icmp sgt i32 %5, 0, !dbg !717
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !718
  br i1 %6, label %7, label %34, !dbg !718

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 7
  %9 = load %struct.LocVar*, %struct.LocVar** %8, align 8, !tbaa !653
  %10 = sext i32 %5 to i64
  br label %11, !dbg !718

; <label>:11:                                     ; preds = %7, %30
  %12 = phi i64 [ 0, %7 ], [ %32, %30 ]
  %13 = phi i32 [ %1, %7 ], [ %31, %30 ]
  %14 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %9, i64 %12, i32 1, !dbg !719
  %15 = load i32, i32* %14, align 8, !dbg !719, !tbaa !720
  %16 = icmp sgt i32 %15, %2, !dbg !722
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !723
  br i1 %16, label %34, label %17, !dbg !723

; <label>:17:                                     ; preds = %11
  %18 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %9, i64 %12, i32 2, !dbg !724
  %19 = load i32, i32* %18, align 4, !dbg !724, !tbaa !727
  %20 = icmp sgt i32 %19, %2, !dbg !728
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !729
  br i1 %20, label %21, label %30, !dbg !729

; <label>:21:                                     ; preds = %17
  %22 = add nsw i32 %13, -1, !dbg !730
  %23 = icmp eq i32 %22, 0, !dbg !732
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !734
  br i1 %23, label %24, label %30, !dbg !734

; <label>:24:                                     ; preds = %21
  %25 = and i64 %12, 4294967295, !dbg !735
  %26 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %9, i64 %25, i32 0, !dbg !736
  %27 = load %union.TString*, %union.TString** %26, align 8, !dbg !736, !tbaa !737
  %28 = getelementptr inbounds %union.TString, %union.TString* %27, i64 1, !dbg !736
  %29 = bitcast %union.TString* %28 to i8*, !dbg !736
  br label %34, !dbg !738

; <label>:30:                                     ; preds = %17, %21
  %31 = phi i32 [ %22, %21 ], [ %13, %17 ]
  %32 = add nuw nsw i64 %12, 1, !dbg !739
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !740
  %33 = icmp slt i64 %32, %10, !dbg !717
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !718
  br i1 %33, label %11, label %34, !dbg !718, !llvm.loop !741

; <label>:34:                                     ; preds = %11, %30, %3, %24
  %35 = phi i8* [ %29, %24 ], [ null, %3 ], [ null, %30 ], [ null, %11 ], !dbg !743
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !744
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !745
  ret i8* %35, !dbg !745
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }
attributes #4 = { nounwind }

!llvm.module.flags = !{!339, !340, !341}
!llvm.ident = !{!342}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lfunc.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !39, !90, !14, !25, !336, !337, !288}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "Closure", file: !6, line: 312, baseType: !7)
!6 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lobject.h", directory: "/root/.unikraft/apps/redis/build")
!7 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "Closure", file: !6, line: 309, size: 448, elements: !8)
!8 = !{!9, !322}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !7, file: !6, line: 310, baseType: !10, size: 448)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "CClosure", file: !6, line: 299, baseType: !11)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CClosure", file: !6, line: 295, size: 448, elements: !12)
!12 = !{!13, !311, !312, !313, !314, !315, !316, !317, !318}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !11, file: !6, line: 296, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCObject", file: !6, line: 36, baseType: !16)
!16 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "GCObject", file: !17, line: 136, size: 1472, elements: !18)
!17 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lstate.h", directory: "/root/.unikraft/apps/redis/build")
!18 = !{!19, !29, !55, !115, !116, !117, !158, !175}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "gch", scope: !16, file: !17, line: 137, baseType: !20, size: 128)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCheader", file: !6, line: 51, baseType: !21)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GCheader", file: !6, line: 49, size: 128, elements: !22)
!22 = !{!23, !24, !28}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !21, file: !6, line: 50, baseType: !14, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !21, file: !6, line: 50, baseType: !25, size: 8, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "lu_byte", file: !26, line: 27, baseType: !27)
!26 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/llimits.h", directory: "/root/.unikraft/apps/redis/build")
!27 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !21, file: !6, line: 50, baseType: !25, size: 8, offset: 72)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !16, file: !17, line: 138, baseType: !30, size: 192)
!30 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "TString", file: !6, line: 199, size: 192, elements: !31)
!31 = !{!32, !42}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !30, file: !6, line: 200, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "L_Umaxalign", file: !26, line: 47, baseType: !34)
!34 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !26, line: 47, size: 64, elements: !35)
!35 = !{!36, !38, !40}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !34, file: !26, line: 47, baseType: !37, size: 64)
!37 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !34, file: !26, line: 47, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !34, file: !26, line: 47, baseType: !41, size: 64)
!41 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "tsv", scope: !30, file: !6, line: 206, baseType: !43, size: 192)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !30, file: !6, line: 201, size: 192, elements: !44)
!44 = !{!45, !46, !47, !48, !49, !51}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !43, file: !6, line: 202, baseType: !14, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !43, file: !6, line: 202, baseType: !25, size: 8, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !43, file: !6, line: 202, baseType: !25, size: 8, offset: 72)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !43, file: !6, line: 203, baseType: !25, size: 8, offset: 80)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !43, file: !6, line: 204, baseType: !50, size: 32, offset: 96)
!50 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !43, file: !6, line: 205, baseType: !52, size: 64, offset: 128)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !53, line: 58, baseType: !54)
!53 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!54 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !16, file: !17, line: 139, baseType: !56, size: 320)
!56 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "Udata", file: !6, line: 215, size: 320, elements: !57)
!57 = !{!58, !59}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !56, file: !6, line: 216, baseType: !33, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "uv", scope: !56, file: !6, line: 222, baseType: !60, size: 320)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !56, file: !6, line: 217, size: 320, elements: !61)
!61 = !{!62, !63, !64, !65, !113, !114}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !60, file: !6, line: 218, baseType: !14, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !60, file: !6, line: 218, baseType: !25, size: 8, offset: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !60, file: !6, line: 218, baseType: !25, size: 8, offset: 72)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "metatable", scope: !60, file: !6, line: 219, baseType: !66, size: 64, offset: 128)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Table", file: !6, line: 338, size: 512, elements: !68)
!68 = !{!69, !70, !71, !72, !73, !74, !75, !92, !110, !111, !112}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !67, file: !6, line: 339, baseType: !14, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !67, file: !6, line: 339, baseType: !25, size: 8, offset: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !67, file: !6, line: 339, baseType: !25, size: 8, offset: 72)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !67, file: !6, line: 340, baseType: !25, size: 8, offset: 80)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "lsizenode", scope: !67, file: !6, line: 341, baseType: !25, size: 8, offset: 88)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "metatable", scope: !67, file: !6, line: 342, baseType: !66, size: 64, offset: 128)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "array", scope: !67, file: !6, line: 343, baseType: !76, size: 64, offset: 192)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "TValue", file: !6, line: 75, baseType: !78)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lua_TValue", file: !6, line: 73, size: 128, elements: !79)
!79 = !{!80, !91}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !78, file: !6, line: 74, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "Value", file: !6, line: 64, baseType: !82)
!82 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !6, line: 59, size: 64, elements: !83)
!83 = !{!84, !85, !86, !89}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !82, file: !6, line: 60, baseType: !14, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !82, file: !6, line: 61, baseType: !39, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !82, file: !6, line: 62, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Number", file: !88, line: 99, baseType: !37)
!88 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lua.h", directory: "/root/.unikraft/apps/redis/build")
!89 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !82, file: !6, line: 63, baseType: !90, size: 32)
!90 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !78, file: !6, line: 74, baseType: !90, size: 32, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !67, file: !6, line: 344, baseType: !93, size: 64, offset: 256)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "Node", file: !6, line: 335, baseType: !95)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Node", file: !6, line: 332, size: 320, elements: !96)
!96 = !{!97, !98}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "i_val", scope: !95, file: !6, line: 333, baseType: !77, size: 128)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "i_key", scope: !95, file: !6, line: 334, baseType: !99, size: 192, offset: 128)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "TKey", file: !6, line: 329, baseType: !100)
!100 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "TKey", file: !6, line: 323, size: 192, elements: !101)
!101 = !{!102, !109}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "nk", scope: !100, file: !6, line: 327, baseType: !103, size: 192)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !100, file: !6, line: 324, size: 192, elements: !104)
!104 = !{!105, !106, !107}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !103, file: !6, line: 325, baseType: !81, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !103, file: !6, line: 325, baseType: !90, size: 32, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !103, file: !6, line: 326, baseType: !108, size: 64, offset: 128)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "tvk", scope: !100, file: !6, line: 328, baseType: !77, size: 128)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "lastfree", scope: !67, file: !6, line: 345, baseType: !93, size: 64, offset: 320)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !67, file: !6, line: 346, baseType: !14, size: 64, offset: 384)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "sizearray", scope: !67, file: !6, line: 347, baseType: !90, size: 32, offset: 448)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !60, file: !6, line: 220, baseType: !66, size: 64, offset: 192)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !60, file: !6, line: 221, baseType: !52, size: 64, offset: 256)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !16, file: !17, line: 140, baseType: !7, size: 448)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "h", scope: !16, file: !17, line: 141, baseType: !67, size: 512)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !16, file: !17, line: 142, baseType: !118, size: 960)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Proto", file: !6, line: 231, size: 960, elements: !119)
!119 = !{!120, !121, !122, !123, !124, !128, !131, !133, !142, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !118, file: !6, line: 232, baseType: !14, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !118, file: !6, line: 232, baseType: !25, size: 8, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !118, file: !6, line: 232, baseType: !25, size: 8, offset: 72)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !118, file: !6, line: 233, baseType: !76, size: 64, offset: 128)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !118, file: !6, line: 234, baseType: !125, size: 64, offset: 192)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "Instruction", file: !26, line: 88, baseType: !127)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "lu_int32", file: !26, line: 18, baseType: !50)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !118, file: !6, line: 235, baseType: !129, size: 64, offset: 256)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "lineinfo", scope: !118, file: !6, line: 236, baseType: !132, size: 64, offset: 320)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "locvars", scope: !118, file: !6, line: 237, baseType: !134, size: 64, offset: 384)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LocVar", file: !6, line: 262, size: 128, elements: !136)
!136 = !{!137, !140, !141}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "varname", scope: !135, file: !6, line: 263, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "TString", file: !6, line: 207, baseType: !30)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "startpc", scope: !135, file: !6, line: 264, baseType: !90, size: 32, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "endpc", scope: !135, file: !6, line: 265, baseType: !90, size: 32, offset: 96)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "upvalues", scope: !118, file: !6, line: 238, baseType: !143, size: 64, offset: 448)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !118, file: !6, line: 239, baseType: !138, size: 64, offset: 512)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "sizeupvalues", scope: !118, file: !6, line: 240, baseType: !90, size: 32, offset: 576)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "sizek", scope: !118, file: !6, line: 241, baseType: !90, size: 32, offset: 608)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "sizecode", scope: !118, file: !6, line: 242, baseType: !90, size: 32, offset: 640)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "sizelineinfo", scope: !118, file: !6, line: 243, baseType: !90, size: 32, offset: 672)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "sizep", scope: !118, file: !6, line: 244, baseType: !90, size: 32, offset: 704)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "sizelocvars", scope: !118, file: !6, line: 245, baseType: !90, size: 32, offset: 736)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "linedefined", scope: !118, file: !6, line: 246, baseType: !90, size: 32, offset: 768)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "lastlinedefined", scope: !118, file: !6, line: 247, baseType: !90, size: 32, offset: 800)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !118, file: !6, line: 248, baseType: !14, size: 64, offset: 832)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "nups", scope: !118, file: !6, line: 249, baseType: !25, size: 8, offset: 896)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "numparams", scope: !118, file: !6, line: 250, baseType: !25, size: 8, offset: 904)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "is_vararg", scope: !118, file: !6, line: 251, baseType: !25, size: 8, offset: 912)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "maxstacksize", scope: !118, file: !6, line: 252, baseType: !25, size: 8, offset: 920)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "uv", scope: !16, file: !17, line: 143, baseType: !159, size: 320)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "UpVal", file: !6, line: 274, size: 320, elements: !160)
!160 = !{!161, !162, !163, !164, !165}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !159, file: !6, line: 275, baseType: !14, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !159, file: !6, line: 275, baseType: !25, size: 8, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !159, file: !6, line: 275, baseType: !25, size: 8, offset: 72)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !159, file: !6, line: 276, baseType: !76, size: 64, offset: 128)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !159, file: !6, line: 283, baseType: !166, size: 128, offset: 192)
!166 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !159, file: !6, line: 277, size: 128, elements: !167)
!167 = !{!168, !169}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !166, file: !6, line: 278, baseType: !77, size: 128)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !166, file: !6, line: 282, baseType: !170, size: 128)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !166, file: !6, line: 279, size: 128, elements: !171)
!171 = !{!172, !174}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !170, file: !6, line: 280, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !170, file: !6, line: 281, baseType: !173, size: 64, offset: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "th", scope: !16, file: !17, line: 144, baseType: !176, size: 1472)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lua_State", file: !17, line: 100, size: 1472, elements: !177)
!177 = !{!178, !179, !180, !181, !182, !184, !185, !250, !263, !264, !265, !266, !267, !268, !269, !270, !272, !273, !274, !275, !276, !277, !302, !303, !304, !305, !306, !309}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !176, file: !17, line: 101, baseType: !14, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !176, file: !17, line: 101, baseType: !25, size: 8, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !176, file: !17, line: 101, baseType: !25, size: 8, offset: 72)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !176, file: !17, line: 102, baseType: !25, size: 8, offset: 80)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !176, file: !17, line: 103, baseType: !183, size: 64, offset: 128)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "StkId", file: !6, line: 193, baseType: !76)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !176, file: !17, line: 104, baseType: !183, size: 64, offset: 192)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "l_G", scope: !176, file: !17, line: 105, baseType: !186, size: 64, offset: 256)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "global_State", file: !17, line: 94, baseType: !188)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "global_State", file: !17, line: 68, size: 3456, elements: !189)
!189 = !{!190, !198, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !223, !225, !226, !227, !228, !229, !230, !237, !238, !240, !242, !246}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "strt", scope: !188, file: !17, line: 69, baseType: !191, size: 128)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "stringtable", file: !17, line: 42, baseType: !192)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stringtable", file: !17, line: 38, size: 128, elements: !193)
!193 = !{!194, !196, !197}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !192, file: !17, line: 39, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "nuse", scope: !192, file: !17, line: 40, baseType: !127, size: 32, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !192, file: !17, line: 41, baseType: !90, size: 32, offset: 96)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "frealloc", scope: !188, file: !17, line: 70, baseType: !199, size: 64, offset: 128)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Alloc", file: !88, line: 66, baseType: !200)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DISubroutineType(types: !202)
!202 = !{!39, !39, !39, !52, !52}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "ud", scope: !188, file: !17, line: 71, baseType: !39, size: 64, offset: 192)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "currentwhite", scope: !188, file: !17, line: 72, baseType: !25, size: 8, offset: 256)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "gcstate", scope: !188, file: !17, line: 73, baseType: !25, size: 8, offset: 264)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "sweepstrgc", scope: !188, file: !17, line: 74, baseType: !90, size: 32, offset: 288)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "rootgc", scope: !188, file: !17, line: 75, baseType: !14, size: 64, offset: 320)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "sweepgc", scope: !188, file: !17, line: 76, baseType: !195, size: 64, offset: 384)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "gray", scope: !188, file: !17, line: 77, baseType: !14, size: 64, offset: 448)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "grayagain", scope: !188, file: !17, line: 78, baseType: !14, size: 64, offset: 512)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "weak", scope: !188, file: !17, line: 79, baseType: !14, size: 64, offset: 576)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "tmudata", scope: !188, file: !17, line: 80, baseType: !14, size: 64, offset: 640)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "buff", scope: !188, file: !17, line: 81, baseType: !214, size: 192, offset: 704)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "Mbuffer", file: !215, line: 28, baseType: !216)
!215 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lzio.h", directory: "/root/.unikraft/apps/redis/build")
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Mbuffer", file: !215, line: 24, size: 192, elements: !217)
!217 = !{!218, !221, !222}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !216, file: !215, line: 25, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !216, file: !215, line: 26, baseType: !52, size: 64, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "buffsize", scope: !216, file: !215, line: 27, baseType: !52, size: 64, offset: 128)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "GCthreshold", scope: !188, file: !17, line: 82, baseType: !224, size: 64, offset: 896)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "lu_mem", file: !26, line: 20, baseType: !52)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "totalbytes", scope: !188, file: !17, line: 83, baseType: !224, size: 64, offset: 960)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "estimate", scope: !188, file: !17, line: 84, baseType: !224, size: 64, offset: 1024)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "gcdept", scope: !188, file: !17, line: 85, baseType: !224, size: 64, offset: 1088)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "gcpause", scope: !188, file: !17, line: 86, baseType: !90, size: 32, offset: 1152)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "gcstepmul", scope: !188, file: !17, line: 87, baseType: !90, size: 32, offset: 1184)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "panic", scope: !188, file: !17, line: 88, baseType: !231, size: 64, offset: 1216)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_CFunction", file: !88, line: 52, baseType: !232)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{!90, !235}
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_State", file: !88, line: 50, baseType: !176)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "l_registry", scope: !188, file: !17, line: 89, baseType: !77, size: 128, offset: 1280)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "mainthread", scope: !188, file: !17, line: 90, baseType: !239, size: 64, offset: 1408)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "uvhead", scope: !188, file: !17, line: 91, baseType: !241, size: 320, offset: 1472)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "UpVal", file: !6, line: 284, baseType: !159)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "mt", scope: !188, file: !17, line: 92, baseType: !243, size: 576, offset: 1792)
!243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 576, elements: !244)
!244 = !{!245}
!245 = !DISubrange(count: 9)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "tmname", scope: !188, file: !17, line: 93, baseType: !247, size: 1088, offset: 2368)
!247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 1088, elements: !248)
!248 = !{!249}
!249 = !DISubrange(count: 17)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "ci", scope: !176, file: !17, line: 106, baseType: !251, size: 64, offset: 320)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "CallInfo", file: !17, line: 55, baseType: !253)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CallInfo", file: !17, line: 48, size: 320, elements: !254)
!254 = !{!255, !256, !257, !258, !261, !262}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !253, file: !17, line: 49, baseType: !183, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !253, file: !17, line: 50, baseType: !183, size: 64, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !253, file: !17, line: 51, baseType: !183, size: 64, offset: 128)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "savedpc", scope: !253, file: !17, line: 52, baseType: !259, size: 64, offset: 192)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !126)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "nresults", scope: !253, file: !17, line: 53, baseType: !90, size: 32, offset: 256)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "tailcalls", scope: !253, file: !17, line: 54, baseType: !90, size: 32, offset: 288)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "savedpc", scope: !176, file: !17, line: 107, baseType: !259, size: 64, offset: 384)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "stack_last", scope: !176, file: !17, line: 108, baseType: !183, size: 64, offset: 448)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !176, file: !17, line: 109, baseType: !183, size: 64, offset: 512)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "end_ci", scope: !176, file: !17, line: 110, baseType: !251, size: 64, offset: 576)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "base_ci", scope: !176, file: !17, line: 111, baseType: !251, size: 64, offset: 640)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "stacksize", scope: !176, file: !17, line: 112, baseType: !90, size: 32, offset: 704)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "size_ci", scope: !176, file: !17, line: 113, baseType: !90, size: 32, offset: 736)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "nCcalls", scope: !176, file: !17, line: 114, baseType: !271, size: 16, offset: 768)
!271 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "baseCcalls", scope: !176, file: !17, line: 115, baseType: !271, size: 16, offset: 784)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "hookmask", scope: !176, file: !17, line: 116, baseType: !25, size: 8, offset: 800)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "allowhook", scope: !176, file: !17, line: 117, baseType: !25, size: 8, offset: 808)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "basehookcount", scope: !176, file: !17, line: 118, baseType: !90, size: 32, offset: 832)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "hookcount", scope: !176, file: !17, line: 119, baseType: !90, size: 32, offset: 864)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "hook", scope: !176, file: !17, line: 120, baseType: !278, size: 64, offset: 896)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Hook", file: !88, line: 330, baseType: !279)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{null, !235, !282}
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Debug", file: !88, line: 326, baseType: !284)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lua_Debug", file: !88, line: 346, size: 960, elements: !285)
!285 = !{!286, !287, !290, !291, !292, !293, !294, !295, !296, !297, !301}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !284, file: !88, line: 347, baseType: !90, size: 32)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !284, file: !88, line: 348, baseType: !288, size: 64, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !220)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "namewhat", scope: !284, file: !88, line: 349, baseType: !288, size: 64, offset: 128)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "what", scope: !284, file: !88, line: 350, baseType: !288, size: 64, offset: 192)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !284, file: !88, line: 351, baseType: !288, size: 64, offset: 256)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "currentline", scope: !284, file: !88, line: 352, baseType: !90, size: 32, offset: 320)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "nups", scope: !284, file: !88, line: 353, baseType: !90, size: 32, offset: 352)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "linedefined", scope: !284, file: !88, line: 354, baseType: !90, size: 32, offset: 384)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "lastlinedefined", scope: !284, file: !88, line: 355, baseType: !90, size: 32, offset: 416)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "short_src", scope: !284, file: !88, line: 356, baseType: !298, size: 480, offset: 448)
!298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 480, elements: !299)
!299 = !{!300}
!300 = !DISubrange(count: 60)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "i_ci", scope: !284, file: !88, line: 358, baseType: !90, size: 32, offset: 928)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "l_gt", scope: !176, file: !17, line: 121, baseType: !77, size: 128, offset: 960)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !176, file: !17, line: 122, baseType: !77, size: 128, offset: 1088)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "openupval", scope: !176, file: !17, line: 123, baseType: !14, size: 64, offset: 1216)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !176, file: !17, line: 124, baseType: !14, size: 64, offset: 1280)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "errorJmp", scope: !176, file: !17, line: 125, baseType: !307, size: 64, offset: 1344)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DICompositeType(tag: DW_TAG_structure_type, name: "lua_longjmp", file: !17, line: 18, flags: DIFlagFwdDecl)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "errfunc", scope: !176, file: !17, line: 126, baseType: !310, size: 64, offset: 1408)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !53, line: 49, baseType: !41)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !11, file: !6, line: 296, baseType: !25, size: 8, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !11, file: !6, line: 296, baseType: !25, size: 8, offset: 72)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "isC", scope: !11, file: !6, line: 296, baseType: !25, size: 8, offset: 80)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "nupvalues", scope: !11, file: !6, line: 296, baseType: !25, size: 8, offset: 88)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !11, file: !6, line: 296, baseType: !14, size: 64, offset: 128)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !11, file: !6, line: 296, baseType: !66, size: 64, offset: 192)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !11, file: !6, line: 297, baseType: !231, size: 64, offset: 256)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "upvalue", scope: !11, file: !6, line: 298, baseType: !319, size: 128, offset: 320)
!319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 128, elements: !320)
!320 = !{!321}
!321 = !DISubrange(count: 1)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !7, file: !6, line: 311, baseType: !323, size: 384)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "LClosure", file: !6, line: 306, baseType: !324)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LClosure", file: !6, line: 302, size: 384, elements: !325)
!325 = !{!326, !327, !328, !329, !330, !331, !332, !333, !334}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !324, file: !6, line: 303, baseType: !14, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !324, file: !6, line: 303, baseType: !25, size: 8, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !324, file: !6, line: 303, baseType: !25, size: 8, offset: 72)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "isC", scope: !324, file: !6, line: 303, baseType: !25, size: 8, offset: 80)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "nupvalues", scope: !324, file: !6, line: 303, baseType: !25, size: 8, offset: 88)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !324, file: !6, line: 303, baseType: !14, size: 64, offset: 128)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !324, file: !6, line: 303, baseType: !66, size: 64, offset: 192)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !324, file: !6, line: 304, baseType: !130, size: 64, offset: 256)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "upvals", scope: !324, file: !6, line: 305, baseType: !335, size: 64, offset: 320)
!335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !336, size: 64, elements: !320)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "Proto", file: !6, line: 253, baseType: !118)
!339 = !{i32 2, !"Dwarf Version", i32 4}
!340 = !{i32 2, !"Debug Info Version", i32 3}
!341 = !{i32 1, !"wchar_size", i32 4}
!342 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!343 = distinct !DISubprogram(name: "luaF_newCclosure", scope: !1, file: !1, line: 23, type: !344, isLocal: false, isDefinition: true, scopeLine: 23, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !348)
!344 = !DISubroutineType(types: !345)
!345 = !{!4, !235, !90, !346}
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "Table", file: !6, line: 348, baseType: !67)
!348 = !{!349, !350, !351, !352}
!349 = !DILocalVariable(name: "L", arg: 1, scope: !343, file: !1, line: 23, type: !235)
!350 = !DILocalVariable(name: "nelems", arg: 2, scope: !343, file: !1, line: 23, type: !90)
!351 = !DILocalVariable(name: "e", arg: 3, scope: !343, file: !1, line: 23, type: !346)
!352 = !DILocalVariable(name: "c", scope: !343, file: !1, line: 24, type: !4)
!353 = !DILocation(line: 23, column: 39, scope: !343)
!354 = !DILocation(line: 23, column: 46, scope: !343)
!355 = !DILocation(line: 23, column: 61, scope: !343)
!356 = !DILocation(line: 24, column: 16, scope: !343)
!357 = !DILocation(line: 24, column: 12, scope: !343)
!358 = !DILocation(line: 25, column: 16, scope: !343)
!359 = !DILocation(line: 25, column: 3, scope: !343)
!360 = !DILocation(line: 26, column: 8, scope: !343)
!361 = !DILocation(line: 26, column: 12, scope: !343)
!362 = !{!363, !363, i64 0}
!363 = !{!"omnipotent char", !364, i64 0}
!364 = !{!"Simple C/C++ TBAA"}
!365 = !DILocation(line: 27, column: 8, scope: !343)
!366 = !DILocation(line: 27, column: 12, scope: !343)
!367 = !DILocation(line: 28, column: 20, scope: !343)
!368 = !DILocation(line: 28, column: 8, scope: !343)
!369 = !DILocation(line: 28, column: 18, scope: !343)
!370 = !DILocation(line: 29, column: 3, scope: !343)
!371 = distinct !DISubprogram(name: "luaF_newLclosure", scope: !1, file: !1, line: 33, type: !344, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !372)
!372 = !{!373, !374, !375, !376}
!373 = !DILocalVariable(name: "L", arg: 1, scope: !371, file: !1, line: 33, type: !235)
!374 = !DILocalVariable(name: "nelems", arg: 2, scope: !371, file: !1, line: 33, type: !90)
!375 = !DILocalVariable(name: "e", arg: 3, scope: !371, file: !1, line: 33, type: !346)
!376 = !DILocalVariable(name: "c", scope: !371, file: !1, line: 34, type: !4)
!377 = !DILocation(line: 33, column: 39, scope: !371)
!378 = !DILocation(line: 33, column: 46, scope: !371)
!379 = !DILocation(line: 33, column: 61, scope: !371)
!380 = !DILocation(line: 34, column: 16, scope: !371)
!381 = !DILocation(line: 34, column: 12, scope: !371)
!382 = !DILocation(line: 35, column: 16, scope: !371)
!383 = !DILocation(line: 35, column: 3, scope: !371)
!384 = !DILocation(line: 36, column: 8, scope: !371)
!385 = !DILocation(line: 36, column: 12, scope: !371)
!386 = !DILocation(line: 37, column: 8, scope: !371)
!387 = !DILocation(line: 37, column: 12, scope: !371)
!388 = !DILocation(line: 38, column: 20, scope: !371)
!389 = !DILocation(line: 38, column: 8, scope: !371)
!390 = !DILocation(line: 38, column: 18, scope: !371)
!391 = !DILocation(line: 39, column: 3, scope: !371)
!392 = !DILocation(line: 39, column: 16, scope: !371)
!393 = !DILocation(line: 39, column: 20, scope: !371)
!394 = !DILocation(line: 39, column: 40, scope: !371)
!395 = distinct !{!395, !396}
!396 = !{!"llvm.loop.unroll.disable"}
!397 = distinct !{!397, !391, !398}
!398 = !DILocation(line: 39, column: 42, scope: !371)
!399 = !DILocation(line: 40, column: 3, scope: !371)
!400 = distinct !DISubprogram(name: "luaF_newupval", scope: !1, file: !1, line: 44, type: !401, isLocal: false, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !403)
!401 = !DISubroutineType(types: !402)
!402 = !{!336, !235}
!403 = !{!404, !405}
!404 = !DILocalVariable(name: "L", arg: 1, scope: !400, file: !1, line: 44, type: !235)
!405 = !DILocalVariable(name: "uv", scope: !400, file: !1, line: 45, type: !336)
!406 = !DILocation(line: 44, column: 34, scope: !400)
!407 = !DILocation(line: 45, column: 15, scope: !400)
!408 = !DILocation(line: 45, column: 10, scope: !400)
!409 = !DILocation(line: 46, column: 16, scope: !400)
!410 = !DILocation(line: 46, column: 3, scope: !400)
!411 = !DILocation(line: 47, column: 16, scope: !400)
!412 = !DILocation(line: 47, column: 7, scope: !400)
!413 = !DILocation(line: 47, column: 9, scope: !400)
!414 = !{!415, !416, i64 16}
!415 = !{!"UpVal", !416, i64 0, !363, i64 8, !363, i64 9, !416, i64 16, !363, i64 24}
!416 = !{!"any pointer", !363, i64 0}
!417 = !DILocation(line: 48, column: 3, scope: !400)
!418 = !{!419, !420, i64 8}
!419 = !{!"lua_TValue", !363, i64 0, !420, i64 8}
!420 = !{!"int", !363, i64 0}
!421 = !DILocation(line: 49, column: 3, scope: !400)
!422 = distinct !DISubprogram(name: "luaF_findupval", scope: !1, file: !1, line: 53, type: !423, isLocal: false, isDefinition: true, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !425)
!423 = !DISubroutineType(types: !424)
!424 = !{!336, !235, !183}
!425 = !{!426, !427, !428, !429, !430, !431}
!426 = !DILocalVariable(name: "L", arg: 1, scope: !422, file: !1, line: 53, type: !235)
!427 = !DILocalVariable(name: "level", arg: 2, scope: !422, file: !1, line: 53, type: !183)
!428 = !DILocalVariable(name: "g", scope: !422, file: !1, line: 54, type: !186)
!429 = !DILocalVariable(name: "pp", scope: !422, file: !1, line: 55, type: !195)
!430 = !DILocalVariable(name: "p", scope: !422, file: !1, line: 56, type: !336)
!431 = !DILocalVariable(name: "uv", scope: !422, file: !1, line: 57, type: !336)
!432 = !DILocation(line: 53, column: 35, scope: !422)
!433 = !DILocation(line: 53, column: 44, scope: !422)
!434 = !DILocation(line: 54, column: 21, scope: !422)
!435 = !{!436, !416, i64 32}
!436 = !{!"lua_State", !416, i64 0, !363, i64 8, !363, i64 9, !363, i64 10, !416, i64 16, !416, i64 24, !416, i64 32, !416, i64 40, !416, i64 48, !416, i64 56, !416, i64 64, !416, i64 72, !416, i64 80, !420, i64 88, !420, i64 92, !437, i64 96, !437, i64 98, !363, i64 100, !363, i64 101, !420, i64 104, !420, i64 108, !416, i64 112, !419, i64 120, !419, i64 136, !416, i64 152, !416, i64 160, !416, i64 168, !438, i64 176}
!437 = !{!"short", !363, i64 0}
!438 = !{!"long", !363, i64 0}
!439 = !DILocation(line: 54, column: 17, scope: !422)
!440 = !DILocation(line: 55, column: 23, scope: !422)
!441 = !DILocation(line: 55, column: 14, scope: !422)
!442 = !DILocation(line: 58, column: 3, scope: !422)
!443 = !DILocation(line: 58, column: 10, scope: !422)
!444 = !{!416, !416, i64 0}
!445 = !DILocation(line: 58, column: 14, scope: !422)
!446 = !DILocation(line: 58, column: 22, scope: !422)
!447 = !DILocation(line: 58, column: 46, scope: !422)
!448 = !DILocation(line: 58, column: 48, scope: !422)
!449 = distinct !{!449, !442, !450}
!450 = !DILocation(line: 66, column: 3, scope: !422)
!451 = !DILocation(line: 60, column: 14, scope: !452)
!452 = distinct !DILexicalBlock(scope: !453, file: !1, line: 60, column: 9)
!453 = distinct !DILexicalBlock(scope: !422, file: !1, line: 58, column: 58)
!454 = !DILocation(line: 60, column: 9, scope: !453)
!455 = !DILocation(line: 58, column: 30, scope: !422)
!456 = !DILocation(line: 61, column: 11, scope: !457)
!457 = distinct !DILexicalBlock(scope: !458, file: !1, line: 61, column: 11)
!458 = distinct !DILexicalBlock(scope: !452, file: !1, line: 60, column: 24)
!459 = !{!460, !363, i64 32}
!460 = !{!"global_State", !461, i64 0, !416, i64 16, !416, i64 24, !363, i64 32, !363, i64 33, !420, i64 36, !416, i64 40, !416, i64 48, !416, i64 56, !416, i64 64, !416, i64 72, !416, i64 80, !462, i64 88, !438, i64 112, !438, i64 120, !438, i64 128, !438, i64 136, !420, i64 144, !420, i64 148, !416, i64 152, !419, i64 160, !416, i64 176, !415, i64 184, !363, i64 224, !363, i64 296}
!461 = !{!"stringtable", !416, i64 0, !420, i64 8, !420, i64 12}
!462 = !{!"Mbuffer", !416, i64 0, !438, i64 8, !438, i64 16}
!463 = !DILocation(line: 61, column: 11, scope: !458)
!464 = !DILocation(line: 62, column: 9, scope: !457)
!465 = !DILocation(line: 65, column: 14, scope: !453)
!466 = !DILocation(line: 67, column: 8, scope: !422)
!467 = !DILocation(line: 0, scope: !453)
!468 = !DILocation(line: 57, column: 10, scope: !422)
!469 = !DILocation(line: 68, column: 7, scope: !422)
!470 = !DILocation(line: 68, column: 10, scope: !422)
!471 = !{!415, !363, i64 8}
!472 = !DILocation(line: 69, column: 16, scope: !422)
!473 = !DILocation(line: 69, column: 7, scope: !422)
!474 = !DILocation(line: 69, column: 14, scope: !422)
!475 = !{!415, !363, i64 9}
!476 = !DILocation(line: 70, column: 7, scope: !422)
!477 = !DILocation(line: 70, column: 9, scope: !422)
!478 = !DILocation(line: 71, column: 14, scope: !422)
!479 = !DILocation(line: 71, column: 12, scope: !422)
!480 = !{!415, !416, i64 0}
!481 = !DILocation(line: 72, column: 7, scope: !422)
!482 = !DILocation(line: 73, column: 22, scope: !422)
!483 = !DILocation(line: 73, column: 7, scope: !422)
!484 = !DILocation(line: 73, column: 11, scope: !422)
!485 = !DILocation(line: 73, column: 16, scope: !422)
!486 = !DILocation(line: 74, column: 32, scope: !422)
!487 = !DILocation(line: 74, column: 11, scope: !422)
!488 = !DILocation(line: 74, column: 16, scope: !422)
!489 = !DILocation(line: 75, column: 17, scope: !422)
!490 = !DILocation(line: 75, column: 26, scope: !422)
!491 = !DILocation(line: 76, column: 22, scope: !422)
!492 = !DILocation(line: 78, column: 3, scope: !422)
!493 = !DILocation(line: 0, scope: !422)
!494 = !DILocation(line: 0, scope: !458)
!495 = !DILocation(line: 79, column: 1, scope: !422)
!496 = distinct !DISubprogram(name: "luaF_freeupval", scope: !1, file: !1, line: 89, type: !497, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !499)
!497 = !DISubroutineType(types: !498)
!498 = !{null, !235, !336}
!499 = !{!500, !501}
!500 = !DILocalVariable(name: "L", arg: 1, scope: !496, file: !1, line: 89, type: !235)
!501 = !DILocalVariable(name: "uv", arg: 2, scope: !496, file: !1, line: 89, type: !336)
!502 = !DILocation(line: 89, column: 33, scope: !496)
!503 = !DILocation(line: 89, column: 43, scope: !496)
!504 = !DILocation(line: 90, column: 11, scope: !505)
!505 = distinct !DILexicalBlock(scope: !496, file: !1, line: 90, column: 7)
!506 = !DILocation(line: 90, column: 23, scope: !505)
!507 = !DILocation(line: 90, column: 13, scope: !505)
!508 = !DILocation(line: 90, column: 7, scope: !496)
!509 = !DILocalVariable(name: "uv", arg: 1, scope: !510, file: !1, line: 82, type: !336)
!510 = distinct !DISubprogram(name: "unlinkupval", scope: !1, file: !1, line: 82, type: !511, isLocal: true, isDefinition: true, scopeLine: 82, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !513)
!511 = !DISubroutineType(types: !512)
!512 = !{null, !336}
!513 = !{!509}
!514 = !DILocation(line: 82, column: 33, scope: !510, inlinedAt: !515)
!515 = distinct !DILocation(line: 91, column: 5, scope: !505)
!516 = !DILocation(line: 84, column: 32, scope: !510, inlinedAt: !515)
!517 = !DILocation(line: 84, column: 36, scope: !510, inlinedAt: !515)
!518 = !DILocation(line: 84, column: 11, scope: !510, inlinedAt: !515)
!519 = !DILocation(line: 84, column: 17, scope: !510, inlinedAt: !515)
!520 = !DILocation(line: 84, column: 26, scope: !510, inlinedAt: !515)
!521 = !DILocation(line: 85, column: 36, scope: !510, inlinedAt: !515)
!522 = !DILocation(line: 85, column: 11, scope: !510, inlinedAt: !515)
!523 = !DILocation(line: 85, column: 21, scope: !510, inlinedAt: !515)
!524 = !DILocation(line: 85, column: 26, scope: !510, inlinedAt: !515)
!525 = !DILocation(line: 86, column: 1, scope: !510, inlinedAt: !515)
!526 = !DILocation(line: 91, column: 5, scope: !505)
!527 = !DILocation(line: 92, column: 3, scope: !496)
!528 = !DILocation(line: 93, column: 1, scope: !496)
!529 = distinct !DISubprogram(name: "luaF_close", scope: !1, file: !1, line: 96, type: !530, isLocal: false, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !532)
!530 = !DISubroutineType(types: !531)
!531 = !{null, !235, !183}
!532 = !{!533, !534, !535, !536, !537, !539, !545}
!533 = !DILocalVariable(name: "L", arg: 1, scope: !529, file: !1, line: 96, type: !235)
!534 = !DILocalVariable(name: "level", arg: 2, scope: !529, file: !1, line: 96, type: !183)
!535 = !DILocalVariable(name: "uv", scope: !529, file: !1, line: 97, type: !336)
!536 = !DILocalVariable(name: "g", scope: !529, file: !1, line: 98, type: !186)
!537 = !DILocalVariable(name: "o", scope: !538, file: !1, line: 100, type: !14)
!538 = distinct !DILexicalBlock(scope: !529, file: !1, line: 99, column: 77)
!539 = !DILocalVariable(name: "o2", scope: !540, file: !1, line: 107, type: !543)
!540 = distinct !DILexicalBlock(scope: !541, file: !1, line: 107, column: 7)
!541 = distinct !DILexicalBlock(scope: !542, file: !1, line: 105, column: 10)
!542 = distinct !DILexicalBlock(scope: !538, file: !1, line: 103, column: 9)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!545 = !DILocalVariable(name: "o1", scope: !540, file: !1, line: 107, type: !76)
!546 = !DILocation(line: 96, column: 29, scope: !529)
!547 = !DILocation(line: 96, column: 38, scope: !529)
!548 = !DILocation(line: 98, column: 21, scope: !529)
!549 = !DILocation(line: 98, column: 17, scope: !529)
!550 = !DILocation(line: 99, column: 3, scope: !529)
!551 = !DILocation(line: 99, column: 13, scope: !529)
!552 = !{!436, !416, i64 152}
!553 = !DILocation(line: 99, column: 23, scope: !529)
!554 = !DILocation(line: 99, column: 31, scope: !529)
!555 = !DILocation(line: 99, column: 40, scope: !529)
!556 = !DILocation(line: 97, column: 10, scope: !529)
!557 = !DILocation(line: 99, column: 65, scope: !529)
!558 = !DILocation(line: 99, column: 67, scope: !529)
!559 = !DILocation(line: 100, column: 15, scope: !538)
!560 = !DILocation(line: 102, column: 24, scope: !538)
!561 = !DILocation(line: 102, column: 18, scope: !538)
!562 = !DILocation(line: 103, column: 9, scope: !542)
!563 = !DILocation(line: 103, column: 9, scope: !538)
!564 = !DILocation(line: 0, scope: !542)
!565 = !DILocation(line: 89, column: 33, scope: !496, inlinedAt: !566)
!566 = distinct !DILocation(line: 104, column: 7, scope: !542)
!567 = !DILocation(line: 89, column: 43, scope: !496, inlinedAt: !566)
!568 = !DILocation(line: 90, column: 23, scope: !505, inlinedAt: !566)
!569 = !DILocation(line: 90, column: 13, scope: !505, inlinedAt: !566)
!570 = !DILocation(line: 90, column: 7, scope: !496, inlinedAt: !566)
!571 = !DILocation(line: 82, column: 33, scope: !510, inlinedAt: !572)
!572 = distinct !DILocation(line: 91, column: 5, scope: !505, inlinedAt: !566)
!573 = !DILocation(line: 84, column: 36, scope: !510, inlinedAt: !572)
!574 = !DILocation(line: 84, column: 11, scope: !510, inlinedAt: !572)
!575 = !DILocation(line: 84, column: 17, scope: !510, inlinedAt: !572)
!576 = !DILocation(line: 84, column: 26, scope: !510, inlinedAt: !572)
!577 = !DILocation(line: 85, column: 36, scope: !510, inlinedAt: !572)
!578 = !DILocation(line: 85, column: 11, scope: !510, inlinedAt: !572)
!579 = !DILocation(line: 85, column: 21, scope: !510, inlinedAt: !572)
!580 = !DILocation(line: 85, column: 26, scope: !510, inlinedAt: !572)
!581 = !DILocation(line: 86, column: 1, scope: !510, inlinedAt: !572)
!582 = !DILocation(line: 91, column: 5, scope: !505, inlinedAt: !566)
!583 = !DILocation(line: 92, column: 3, scope: !496, inlinedAt: !566)
!584 = !DILocation(line: 93, column: 1, scope: !496, inlinedAt: !566)
!585 = !DILocation(line: 104, column: 7, scope: !542)
!586 = !DILocation(line: 82, column: 33, scope: !510, inlinedAt: !587)
!587 = distinct !DILocation(line: 106, column: 7, scope: !541)
!588 = !DILocation(line: 84, column: 36, scope: !510, inlinedAt: !587)
!589 = !DILocation(line: 84, column: 11, scope: !510, inlinedAt: !587)
!590 = !DILocation(line: 84, column: 17, scope: !510, inlinedAt: !587)
!591 = !DILocation(line: 84, column: 26, scope: !510, inlinedAt: !587)
!592 = !DILocation(line: 85, column: 36, scope: !510, inlinedAt: !587)
!593 = !DILocation(line: 85, column: 11, scope: !510, inlinedAt: !587)
!594 = !DILocation(line: 85, column: 21, scope: !510, inlinedAt: !587)
!595 = !DILocation(line: 85, column: 26, scope: !510, inlinedAt: !587)
!596 = !DILocation(line: 86, column: 1, scope: !510, inlinedAt: !587)
!597 = !DILocation(line: 107, column: 7, scope: !540)
!598 = !DILocation(line: 108, column: 13, scope: !541)
!599 = !DILocation(line: 109, column: 7, scope: !541)
!600 = distinct !{!600, !550, !601}
!601 = !DILocation(line: 111, column: 3, scope: !529)
!602 = !DILocation(line: 112, column: 1, scope: !529)
!603 = distinct !DISubprogram(name: "luaF_newproto", scope: !1, file: !1, line: 115, type: !604, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !606)
!604 = !DISubroutineType(types: !605)
!605 = !{!337, !235}
!606 = !{!607, !608}
!607 = !DILocalVariable(name: "L", arg: 1, scope: !603, file: !1, line: 115, type: !235)
!608 = !DILocalVariable(name: "f", scope: !603, file: !1, line: 116, type: !337)
!609 = !DILocation(line: 115, column: 34, scope: !603)
!610 = !DILocation(line: 116, column: 14, scope: !603)
!611 = !DILocation(line: 116, column: 10, scope: !603)
!612 = !DILocation(line: 117, column: 16, scope: !603)
!613 = !DILocation(line: 117, column: 3, scope: !603)
!614 = !DILocation(line: 118, column: 6, scope: !603)
!615 = !DILocation(line: 118, column: 8, scope: !603)
!616 = !{!617, !416, i64 16}
!617 = !{!"Proto", !416, i64 0, !363, i64 8, !363, i64 9, !416, i64 16, !416, i64 24, !416, i64 32, !416, i64 40, !416, i64 48, !416, i64 56, !416, i64 64, !420, i64 72, !420, i64 76, !420, i64 80, !420, i64 84, !420, i64 88, !420, i64 92, !420, i64 96, !420, i64 100, !416, i64 104, !363, i64 112, !363, i64 113, !363, i64 114, !363, i64 115}
!618 = !DILocation(line: 120, column: 6, scope: !603)
!619 = !DILocation(line: 120, column: 8, scope: !603)
!620 = !{!617, !416, i64 32}
!621 = !DILocation(line: 121, column: 6, scope: !603)
!622 = !DILocation(line: 121, column: 12, scope: !603)
!623 = !{!617, !420, i64 88}
!624 = !DILocation(line: 122, column: 6, scope: !603)
!625 = !DILocation(line: 122, column: 11, scope: !603)
!626 = !{!617, !416, i64 24}
!627 = !DILocation(line: 125, column: 6, scope: !603)
!628 = !DILocation(line: 125, column: 19, scope: !603)
!629 = !{!420, !420, i64 0}
!630 = !DILocation(line: 126, column: 6, scope: !603)
!631 = !DILocation(line: 126, column: 11, scope: !603)
!632 = !{!617, !363, i64 112}
!633 = !DILocation(line: 127, column: 6, scope: !603)
!634 = !DILocation(line: 127, column: 15, scope: !603)
!635 = !{!617, !416, i64 56}
!636 = !DILocation(line: 128, column: 6, scope: !603)
!637 = !DILocation(line: 128, column: 16, scope: !603)
!638 = !{!617, !363, i64 113}
!639 = !DILocation(line: 129, column: 6, scope: !603)
!640 = !DILocation(line: 129, column: 16, scope: !603)
!641 = !{!617, !363, i64 114}
!642 = !DILocation(line: 130, column: 6, scope: !603)
!643 = !DILocation(line: 130, column: 19, scope: !603)
!644 = !{!617, !363, i64 115}
!645 = !DILocation(line: 131, column: 6, scope: !603)
!646 = !DILocation(line: 131, column: 15, scope: !603)
!647 = !{!617, !416, i64 40}
!648 = !DILocation(line: 132, column: 6, scope: !603)
!649 = !DILocation(line: 132, column: 18, scope: !603)
!650 = !{!617, !420, i64 92}
!651 = !DILocation(line: 133, column: 6, scope: !603)
!652 = !DILocation(line: 133, column: 14, scope: !603)
!653 = !{!617, !416, i64 48}
!654 = !DILocation(line: 134, column: 6, scope: !603)
!655 = !DILocation(line: 134, column: 18, scope: !603)
!656 = !{!617, !420, i64 96}
!657 = !DILocation(line: 135, column: 6, scope: !603)
!658 = !DILocation(line: 135, column: 22, scope: !603)
!659 = !{!617, !420, i64 100}
!660 = !DILocation(line: 136, column: 6, scope: !603)
!661 = !DILocation(line: 136, column: 13, scope: !603)
!662 = !{!617, !416, i64 64}
!663 = !DILocation(line: 137, column: 3, scope: !603)
!664 = distinct !DISubprogram(name: "luaF_freeproto", scope: !1, file: !1, line: 141, type: !665, isLocal: false, isDefinition: true, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !667)
!665 = !DISubroutineType(types: !666)
!666 = !{null, !235, !337}
!667 = !{!668, !669}
!668 = !DILocalVariable(name: "L", arg: 1, scope: !664, file: !1, line: 141, type: !235)
!669 = !DILocalVariable(name: "f", arg: 2, scope: !664, file: !1, line: 141, type: !337)
!670 = !DILocation(line: 141, column: 33, scope: !664)
!671 = !DILocation(line: 141, column: 43, scope: !664)
!672 = !DILocation(line: 142, column: 3, scope: !664)
!673 = !{!617, !420, i64 80}
!674 = !DILocation(line: 143, column: 3, scope: !664)
!675 = !DILocation(line: 144, column: 3, scope: !664)
!676 = !{!617, !420, i64 76}
!677 = !DILocation(line: 145, column: 3, scope: !664)
!678 = !{!617, !420, i64 84}
!679 = !DILocation(line: 146, column: 3, scope: !664)
!680 = !DILocation(line: 147, column: 3, scope: !664)
!681 = !{!617, !420, i64 72}
!682 = !DILocation(line: 148, column: 3, scope: !664)
!683 = !DILocation(line: 149, column: 1, scope: !664)
!684 = distinct !DISubprogram(name: "luaF_freeclosure", scope: !1, file: !1, line: 152, type: !685, isLocal: false, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !687)
!685 = !DISubroutineType(types: !686)
!686 = !{null, !235, !4}
!687 = !{!688, !689, !690}
!688 = !DILocalVariable(name: "L", arg: 1, scope: !684, file: !1, line: 152, type: !235)
!689 = !DILocalVariable(name: "c", arg: 2, scope: !684, file: !1, line: 152, type: !4)
!690 = !DILocalVariable(name: "size", scope: !684, file: !1, line: 153, type: !90)
!691 = !DILocation(line: 152, column: 35, scope: !684)
!692 = !DILocation(line: 152, column: 47, scope: !684)
!693 = !DILocation(line: 153, column: 20, scope: !684)
!694 = !DILocation(line: 153, column: 14, scope: !684)
!695 = !DILocation(line: 0, scope: !684)
!696 = !DILocation(line: 153, column: 7, scope: !684)
!697 = !DILocation(line: 155, column: 3, scope: !684)
!698 = !DILocation(line: 156, column: 1, scope: !684)
!699 = distinct !DISubprogram(name: "luaF_getlocalname", scope: !1, file: !1, line: 163, type: !700, isLocal: false, isDefinition: true, scopeLine: 163, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !704)
!700 = !DISubroutineType(types: !701)
!701 = !{!288, !702, !90, !90}
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !338)
!704 = !{!705, !706, !707, !708}
!705 = !DILocalVariable(name: "f", arg: 1, scope: !699, file: !1, line: 163, type: !702)
!706 = !DILocalVariable(name: "local_number", arg: 2, scope: !699, file: !1, line: 163, type: !90)
!707 = !DILocalVariable(name: "pc", arg: 3, scope: !699, file: !1, line: 163, type: !90)
!708 = !DILocalVariable(name: "i", scope: !699, file: !1, line: 164, type: !90)
!709 = !DILocation(line: 163, column: 45, scope: !699)
!710 = !DILocation(line: 163, column: 52, scope: !699)
!711 = !DILocation(line: 163, column: 70, scope: !699)
!712 = !DILocation(line: 164, column: 7, scope: !699)
!713 = !DILocation(line: 165, column: 8, scope: !714)
!714 = distinct !DILexicalBlock(scope: !699, file: !1, line: 165, column: 3)
!715 = !DILocation(line: 165, column: 20, scope: !716)
!716 = distinct !DILexicalBlock(scope: !714, file: !1, line: 165, column: 3)
!717 = !DILocation(line: 165, column: 16, scope: !716)
!718 = !DILocation(line: 165, column: 32, scope: !716)
!719 = !DILocation(line: 165, column: 49, scope: !716)
!720 = !{!721, !420, i64 8}
!721 = !{!"LocVar", !416, i64 0, !420, i64 8, !420, i64 12}
!722 = !DILocation(line: 165, column: 57, scope: !716)
!723 = !DILocation(line: 165, column: 3, scope: !714)
!724 = !DILocation(line: 166, column: 28, scope: !725)
!725 = distinct !DILexicalBlock(scope: !726, file: !1, line: 166, column: 9)
!726 = distinct !DILexicalBlock(scope: !716, file: !1, line: 165, column: 69)
!727 = !{!721, !420, i64 12}
!728 = !DILocation(line: 166, column: 12, scope: !725)
!729 = !DILocation(line: 166, column: 9, scope: !726)
!730 = !DILocation(line: 167, column: 19, scope: !731)
!731 = distinct !DILexicalBlock(scope: !725, file: !1, line: 166, column: 35)
!732 = !DILocation(line: 168, column: 24, scope: !733)
!733 = distinct !DILexicalBlock(scope: !731, file: !1, line: 168, column: 11)
!734 = !DILocation(line: 168, column: 11, scope: !731)
!735 = !DILocation(line: 165, column: 35, scope: !716)
!736 = !DILocation(line: 169, column: 16, scope: !733)
!737 = !{!721, !416, i64 0}
!738 = !DILocation(line: 169, column: 9, scope: !733)
!739 = !DILocation(line: 165, column: 65, scope: !716)
!740 = !DILocation(line: 165, column: 3, scope: !716)
!741 = distinct !{!741, !723, !742}
!742 = !DILocation(line: 171, column: 3, scope: !714)
!743 = !DILocation(line: 0, scope: !699)
!744 = !DILocation(line: 0, scope: !733)
!745 = !DILocation(line: 173, column: 1, scope: !699)
