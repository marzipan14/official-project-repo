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

; Function Attrs: noredzone nounwind
define hidden %union.Closure* @luaF_newCclosure(%struct.lua_State*, i32, %struct.Table*) local_unnamed_addr #0 !dbg !343 {
  %4 = shl i32 %1, 4, !dbg !356
  %5 = add i32 %4, 40, !dbg !356
  %6 = sext i32 %5 to i64, !dbg !356
  %7 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* null, i64 0, i64 %6) #4, !dbg !356
  %8 = bitcast i8* %7 to %union.Closure*, !dbg !356
  %9 = bitcast i8* %7 to %union.GCObject*, !dbg !358
  tail call void @luaC_link(%struct.lua_State* %0, %union.GCObject* %9, i8 zeroext 6) #4, !dbg !359
  %10 = getelementptr inbounds i8, i8* %7, i64 10, !dbg !360
  store i8 1, i8* %10, align 2, !dbg !361, !tbaa !362
  %11 = getelementptr inbounds i8, i8* %7, i64 24, !dbg !365
  %12 = bitcast i8* %11 to %struct.Table**, !dbg !365
  store %struct.Table* %2, %struct.Table** %12, align 8, !dbg !366, !tbaa !362
  %13 = trunc i32 %1 to i8, !dbg !367
  %14 = getelementptr inbounds i8, i8* %7, i64 11, !dbg !368
  store i8 %13, i8* %14, align 1, !dbg !369, !tbaa !362
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
  %7 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* null, i64 0, i64 %6) #4, !dbg !380
  %8 = bitcast i8* %7 to %union.Closure*, !dbg !380
  %9 = bitcast i8* %7 to %union.GCObject*, !dbg !382
  tail call void @luaC_link(%struct.lua_State* %0, %union.GCObject* %9, i8 zeroext 6) #4, !dbg !383
  %10 = getelementptr inbounds i8, i8* %7, i64 10, !dbg !384
  store i8 0, i8* %10, align 2, !dbg !385, !tbaa !362
  %11 = getelementptr inbounds i8, i8* %7, i64 24, !dbg !386
  %12 = bitcast i8* %11 to %struct.Table**, !dbg !386
  store %struct.Table* %2, %struct.Table** %12, align 8, !dbg !387, !tbaa !362
  %13 = trunc i32 %1 to i8, !dbg !388
  %14 = getelementptr inbounds i8, i8* %7, i64 11, !dbg !389
  store i8 %13, i8* %14, align 1, !dbg !390, !tbaa !362
  %15 = icmp eq i32 %1, 0, !dbg !391
  br i1 %15, label %90, label %16, !dbg !391

; <label>:16:                                     ; preds = %3
  %17 = getelementptr inbounds i8, i8* %7, i64 40
  %18 = bitcast i8* %17 to [1 x %struct.UpVal*]*
  %19 = sext i32 %1 to i64, !dbg !391
  %20 = icmp ult i32 %1, 4, !dbg !391
  br i1 %20, label %83, label %21, !dbg !391

; <label>:21:                                     ; preds = %16
  %22 = and i64 %19, -4, !dbg !391
  %23 = sub nsw i64 %19, %22, !dbg !391
  %24 = add nsw i64 %22, -4, !dbg !391
  %25 = lshr exact i64 %24, 2, !dbg !391
  %26 = add nuw nsw i64 %25, 1, !dbg !391
  %27 = and i64 %26, 3, !dbg !391
  %28 = icmp ult i64 %24, 12, !dbg !391
  br i1 %28, label %65, label %29, !dbg !391

; <label>:29:                                     ; preds = %21
  %30 = sub nsw i64 %26, %27, !dbg !391
  br label %31, !dbg !391

; <label>:31:                                     ; preds = %31, %29
  %32 = phi i64 [ 0, %29 ], [ %62, %31 ]
  %33 = phi i64 [ %30, %29 ], [ %63, %31 ]
  %34 = xor i64 %32, -1, !dbg !392
  %35 = add i64 %34, %19, !dbg !392
  %36 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %18, i64 0, i64 %35, !dbg !393
  %37 = getelementptr inbounds %struct.UpVal*, %struct.UpVal** %36, i64 -1, !dbg !394
  %38 = bitcast %struct.UpVal** %37 to <2 x %struct.UpVal*>*, !dbg !394
  store <2 x %struct.UpVal*> zeroinitializer, <2 x %struct.UpVal*>* %38, align 8, !dbg !394, !tbaa !362
  %39 = getelementptr inbounds %struct.UpVal*, %struct.UpVal** %36, i64 -3, !dbg !394
  %40 = bitcast %struct.UpVal** %39 to <2 x %struct.UpVal*>*, !dbg !394
  store <2 x %struct.UpVal*> zeroinitializer, <2 x %struct.UpVal*>* %40, align 8, !dbg !394, !tbaa !362
  %41 = sub i64 -5, %32, !dbg !392
  %42 = add i64 %41, %19, !dbg !392
  %43 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %18, i64 0, i64 %42, !dbg !393
  %44 = getelementptr inbounds %struct.UpVal*, %struct.UpVal** %43, i64 -1, !dbg !394
  %45 = bitcast %struct.UpVal** %44 to <2 x %struct.UpVal*>*, !dbg !394
  store <2 x %struct.UpVal*> zeroinitializer, <2 x %struct.UpVal*>* %45, align 8, !dbg !394, !tbaa !362
  %46 = getelementptr inbounds %struct.UpVal*, %struct.UpVal** %43, i64 -3, !dbg !394
  %47 = bitcast %struct.UpVal** %46 to <2 x %struct.UpVal*>*, !dbg !394
  store <2 x %struct.UpVal*> zeroinitializer, <2 x %struct.UpVal*>* %47, align 8, !dbg !394, !tbaa !362
  %48 = sub i64 -9, %32, !dbg !392
  %49 = add i64 %48, %19, !dbg !392
  %50 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %18, i64 0, i64 %49, !dbg !393
  %51 = getelementptr inbounds %struct.UpVal*, %struct.UpVal** %50, i64 -1, !dbg !394
  %52 = bitcast %struct.UpVal** %51 to <2 x %struct.UpVal*>*, !dbg !394
  store <2 x %struct.UpVal*> zeroinitializer, <2 x %struct.UpVal*>* %52, align 8, !dbg !394, !tbaa !362
  %53 = getelementptr inbounds %struct.UpVal*, %struct.UpVal** %50, i64 -3, !dbg !394
  %54 = bitcast %struct.UpVal** %53 to <2 x %struct.UpVal*>*, !dbg !394
  store <2 x %struct.UpVal*> zeroinitializer, <2 x %struct.UpVal*>* %54, align 8, !dbg !394, !tbaa !362
  %55 = sub i64 -13, %32, !dbg !392
  %56 = add i64 %55, %19, !dbg !392
  %57 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %18, i64 0, i64 %56, !dbg !393
  %58 = getelementptr inbounds %struct.UpVal*, %struct.UpVal** %57, i64 -1, !dbg !394
  %59 = bitcast %struct.UpVal** %58 to <2 x %struct.UpVal*>*, !dbg !394
  store <2 x %struct.UpVal*> zeroinitializer, <2 x %struct.UpVal*>* %59, align 8, !dbg !394, !tbaa !362
  %60 = getelementptr inbounds %struct.UpVal*, %struct.UpVal** %57, i64 -3, !dbg !394
  %61 = bitcast %struct.UpVal** %60 to <2 x %struct.UpVal*>*, !dbg !394
  store <2 x %struct.UpVal*> zeroinitializer, <2 x %struct.UpVal*>* %61, align 8, !dbg !394, !tbaa !362
  %62 = add i64 %32, 16
  %63 = add i64 %33, -4
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %31, !llvm.loop !395

; <label>:65:                                     ; preds = %31, %21
  %66 = phi i64 [ 0, %21 ], [ %62, %31 ]
  %67 = icmp eq i64 %27, 0
  br i1 %67, label %81, label %68

; <label>:68:                                     ; preds = %65, %68
  %69 = phi i64 [ %78, %68 ], [ %66, %65 ]
  %70 = phi i64 [ %79, %68 ], [ %27, %65 ]
  %71 = xor i64 %69, -1, !dbg !392
  %72 = add i64 %71, %19, !dbg !392
  %73 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %18, i64 0, i64 %72, !dbg !393
  %74 = getelementptr inbounds %struct.UpVal*, %struct.UpVal** %73, i64 -1, !dbg !394
  %75 = bitcast %struct.UpVal** %74 to <2 x %struct.UpVal*>*, !dbg !394
  store <2 x %struct.UpVal*> zeroinitializer, <2 x %struct.UpVal*>* %75, align 8, !dbg !394, !tbaa !362
  %76 = getelementptr inbounds %struct.UpVal*, %struct.UpVal** %73, i64 -3, !dbg !394
  %77 = bitcast %struct.UpVal** %76 to <2 x %struct.UpVal*>*, !dbg !394
  store <2 x %struct.UpVal*> zeroinitializer, <2 x %struct.UpVal*>* %77, align 8, !dbg !394, !tbaa !362
  %78 = add i64 %69, 4
  %79 = add i64 %70, -1
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %68, !llvm.loop !398

; <label>:81:                                     ; preds = %68, %65
  %82 = icmp eq i64 %22, %19
  br i1 %82, label %90, label %83, !dbg !391

; <label>:83:                                     ; preds = %81, %16
  %84 = phi i64 [ %19, %16 ], [ %23, %81 ]
  br label %85, !dbg !392

; <label>:85:                                     ; preds = %83, %85
  %86 = phi i64 [ %87, %85 ], [ %84, %83 ]
  %87 = add nsw i64 %86, -1, !dbg !392
  %88 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %18, i64 0, i64 %87, !dbg !393
  store %struct.UpVal* null, %struct.UpVal** %88, align 8, !dbg !394, !tbaa !362
  %89 = icmp eq i64 %87, 0
  br i1 %89, label %90, label %85, !dbg !391, !llvm.loop !400

; <label>:90:                                     ; preds = %85, %81, %3
  ret %union.Closure* %8, !dbg !402
}

; Function Attrs: noredzone nounwind
define hidden %struct.UpVal* @luaF_newupval(%struct.lua_State*) local_unnamed_addr #0 !dbg !403 {
  %2 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* null, i64 0, i64 40) #4, !dbg !410
  %3 = bitcast i8* %2 to %struct.UpVal*, !dbg !410
  %4 = bitcast i8* %2 to %union.GCObject*, !dbg !412
  tail call void @luaC_link(%struct.lua_State* %0, %union.GCObject* %4, i8 zeroext 10) #4, !dbg !413
  %5 = getelementptr inbounds i8, i8* %2, i64 24, !dbg !414
  %6 = getelementptr inbounds i8, i8* %2, i64 16, !dbg !415
  %7 = bitcast i8* %6 to i8**, !dbg !416
  store i8* %5, i8** %7, align 8, !dbg !416, !tbaa !417
  %8 = getelementptr inbounds i8, i8* %2, i64 32, !dbg !420
  %9 = bitcast i8* %8 to i32*, !dbg !420
  store i32 0, i32* %9, align 8, !dbg !420, !tbaa !421
  ret %struct.UpVal* %3, !dbg !424
}

; Function Attrs: noredzone nounwind
define hidden %struct.UpVal* @luaF_findupval(%struct.lua_State*, %struct.lua_TValue*) local_unnamed_addr #0 !dbg !425 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !437
  %4 = load %struct.global_State*, %struct.global_State** %3, align 8, !dbg !437, !tbaa !438
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 24, !dbg !443
  %6 = load %union.GCObject*, %union.GCObject** %5, align 8, !dbg !445, !tbaa !446
  %7 = icmp eq %union.GCObject* %6, null, !dbg !447
  br i1 %7, label %38, label %8, !dbg !448

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %union.GCObject, %union.GCObject* %6, i64 0, i32 0, i32 4, !dbg !449
  %10 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8, !dbg !449, !tbaa !417
  %11 = icmp ult %struct.lua_TValue* %10, %1, !dbg !450
  br i1 %11, label %38, label %16, !dbg !451

; <label>:12:                                     ; preds = %32
  %13 = getelementptr inbounds %union.GCObject, %union.GCObject* %34, i64 0, i32 0, i32 4, !dbg !449
  %14 = load %struct.lua_TValue*, %struct.lua_TValue** %13, align 8, !dbg !449, !tbaa !417
  %15 = icmp ult %struct.lua_TValue* %14, %1, !dbg !450
  br i1 %15, label %36, label %16, !dbg !451, !llvm.loop !452

; <label>:16:                                     ; preds = %8, %12
  %17 = phi %struct.lua_TValue* [ %14, %12 ], [ %10, %8 ]
  %18 = phi %union.GCObject* [ %34, %12 ], [ %6, %8 ]
  %19 = icmp eq %struct.lua_TValue* %17, %1, !dbg !454
  br i1 %19, label %20, label %32, !dbg !457

; <label>:20:                                     ; preds = %16
  %21 = bitcast %union.GCObject* %18 to %struct.UpVal*, !dbg !458
  %22 = getelementptr inbounds %union.GCObject, %union.GCObject* %18, i64 0, i32 0, i32 2, !dbg !459
  %23 = load i8, i8* %22, align 1, !dbg !459, !tbaa !362
  %24 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 3, !dbg !459
  %25 = load i8, i8* %24, align 8, !dbg !459, !tbaa !462
  %26 = xor i8 %25, 3, !dbg !459
  %27 = and i8 %23, 3, !dbg !459
  %28 = and i8 %27, %26, !dbg !459
  %29 = icmp eq i8 %28, 0, !dbg !459
  br i1 %29, label %64, label %30, !dbg !466

; <label>:30:                                     ; preds = %20
  %31 = xor i8 %23, 3, !dbg !467
  store i8 %31, i8* %22, align 1, !dbg !467, !tbaa !362
  br label %64, !dbg !467

; <label>:32:                                     ; preds = %16
  %33 = getelementptr inbounds %union.GCObject, %union.GCObject* %18, i64 0, i32 0, i32 0, !dbg !468
  %34 = load %union.GCObject*, %union.GCObject** %33, align 8, !dbg !445, !tbaa !446
  %35 = icmp eq %union.GCObject* %34, null, !dbg !447
  br i1 %35, label %36, label %12, !dbg !448, !llvm.loop !452

; <label>:36:                                     ; preds = %32, %12
  %37 = getelementptr inbounds %union.GCObject, %union.GCObject* %18, i64 0, i32 0, i32 0, !dbg !468
  br label %38, !dbg !469

; <label>:38:                                     ; preds = %36, %8, %2
  %39 = phi %union.GCObject** [ %5, %2 ], [ %5, %8 ], [ %37, %36 ], !dbg !470
  %40 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* null, i64 0, i64 40) #4, !dbg !469
  %41 = bitcast i8* %40 to %struct.UpVal*, !dbg !469
  %42 = getelementptr inbounds i8, i8* %40, i64 8, !dbg !472
  store i8 10, i8* %42, align 8, !dbg !473, !tbaa !474
  %43 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 3, !dbg !475
  %44 = load i8, i8* %43, align 8, !dbg !475, !tbaa !462
  %45 = and i8 %44, 3, !dbg !475
  %46 = getelementptr inbounds i8, i8* %40, i64 9, !dbg !476
  store i8 %45, i8* %46, align 1, !dbg !477, !tbaa !478
  %47 = getelementptr inbounds i8, i8* %40, i64 16, !dbg !479
  %48 = bitcast i8* %47 to %struct.lua_TValue**, !dbg !479
  store %struct.lua_TValue* %1, %struct.lua_TValue** %48, align 8, !dbg !480, !tbaa !417
  %49 = bitcast %union.GCObject** %39 to i64*, !dbg !481
  %50 = load i64, i64* %49, align 8, !dbg !481, !tbaa !446
  %51 = bitcast i8* %40 to i64*, !dbg !482
  store i64 %50, i64* %51, align 8, !dbg !482, !tbaa !483
  %52 = bitcast %union.GCObject** %39 to i8**, !dbg !484
  store i8* %40, i8** %52, align 8, !dbg !484, !tbaa !446
  %53 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 22, !dbg !485
  %54 = getelementptr inbounds i8, i8* %40, i64 24, !dbg !486
  %55 = bitcast i8* %54 to %struct.UpVal**, !dbg !487
  store %struct.UpVal* %53, %struct.UpVal** %55, align 8, !dbg !488, !tbaa !362
  %56 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 22, i32 4, i32 0, i32 1, !dbg !489
  %57 = bitcast i32* %56 to %struct.UpVal**, !dbg !489
  %58 = load %struct.UpVal*, %struct.UpVal** %57, align 8, !dbg !489, !tbaa !362
  %59 = getelementptr inbounds i8, i8* %40, i64 32, !dbg !490
  %60 = bitcast i8* %59 to %struct.UpVal**, !dbg !490
  store %struct.UpVal* %58, %struct.UpVal** %60, align 8, !dbg !491, !tbaa !362
  %61 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %58, i64 0, i32 4, !dbg !492
  %62 = bitcast %union.anon* %61 to i8**, !dbg !493
  store i8* %40, i8** %62, align 8, !dbg !493, !tbaa !362
  %63 = bitcast i32* %56 to i8**, !dbg !494
  store i8* %40, i8** %63, align 8, !dbg !494, !tbaa !362
  br label %64, !dbg !495

; <label>:64:                                     ; preds = %30, %20, %38
  %65 = phi %struct.UpVal* [ %41, %38 ], [ %21, %20 ], [ %21, %30 ], !dbg !496
  ret %struct.UpVal* %65, !dbg !497
}

; Function Attrs: noredzone nounwind
define hidden void @luaF_freeupval(%struct.lua_State*, %struct.UpVal*) local_unnamed_addr #0 !dbg !498 {
  %3 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %1, i64 0, i32 3, !dbg !506
  %4 = load %struct.lua_TValue*, %struct.lua_TValue** %3, align 8, !dbg !506, !tbaa !417
  %5 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %1, i64 0, i32 4, i32 0, !dbg !508
  %6 = icmp eq %struct.lua_TValue* %4, %5, !dbg !509
  br i1 %6, label %22, label %7, !dbg !510

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %1, i64 0, i32 4, !dbg !518
  %9 = bitcast %union.anon* %8 to %struct.UpVal**, !dbg !519
  %10 = bitcast %union.anon* %8 to i64*, !dbg !519
  %11 = load i64, i64* %10, align 8, !dbg !519, !tbaa !362
  %12 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %1, i64 0, i32 4, i32 0, i32 1, !dbg !520
  %13 = bitcast i32* %12 to %struct.UpVal**, !dbg !520
  %14 = load %struct.UpVal*, %struct.UpVal** %13, align 8, !dbg !520, !tbaa !362
  %15 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %14, i64 0, i32 4, !dbg !521
  %16 = bitcast %union.anon* %15 to i64*, !dbg !522
  store i64 %11, i64* %16, align 8, !dbg !522, !tbaa !362
  %17 = bitcast i32* %12 to i64*, !dbg !523
  %18 = load i64, i64* %17, align 8, !dbg !523, !tbaa !362
  %19 = load %struct.UpVal*, %struct.UpVal** %9, align 8, !dbg !524, !tbaa !362
  %20 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %19, i64 0, i32 4, i32 0, i32 1, !dbg !525
  %21 = bitcast i32* %20 to i64*, !dbg !526
  store i64 %18, i64* %21, align 8, !dbg !526, !tbaa !362
  br label %22, !dbg !527

; <label>:22:                                     ; preds = %2, %7
  %23 = bitcast %struct.UpVal* %1 to i8*, !dbg !528
  %24 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* %23, i64 40, i64 0) #4, !dbg !528
  ret void, !dbg !529
}

; Function Attrs: noredzone nounwind
define hidden void @luaF_close(%struct.lua_State*, %struct.lua_TValue* readnone) local_unnamed_addr #0 !dbg !530 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 24, !dbg !549
  %4 = load %union.GCObject*, %union.GCObject** %3, align 8, !dbg !549, !tbaa !550
  %5 = icmp eq %union.GCObject* %4, null, !dbg !551
  br i1 %5, label %73, label %6, !dbg !552

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !553
  %8 = load %struct.global_State*, %struct.global_State** %7, align 8, !dbg !553, !tbaa !438
  %9 = bitcast %union.GCObject** %3 to i64*
  %10 = getelementptr inbounds %struct.global_State, %struct.global_State* %8, i64 0, i32 3
  br label %11, !dbg !552

; <label>:11:                                     ; preds = %6, %70
  %12 = phi %union.GCObject* [ %4, %6 ], [ %71, %70 ]
  %13 = bitcast %union.GCObject* %12 to %struct.UpVal*, !dbg !555
  %14 = getelementptr inbounds %union.GCObject, %union.GCObject* %12, i64 0, i32 0, i32 4, !dbg !557
  %15 = load %struct.lua_TValue*, %struct.lua_TValue** %14, align 8, !dbg !557, !tbaa !417
  %16 = icmp ult %struct.lua_TValue* %15, %1, !dbg !558
  br i1 %16, label %73, label %17, !dbg !559

; <label>:17:                                     ; preds = %11
  %18 = bitcast %union.GCObject* %12 to i64*, !dbg !561
  %19 = load i64, i64* %18, align 8, !dbg !561, !tbaa !483
  store i64 %19, i64* %9, align 8, !dbg !562, !tbaa !550
  %20 = getelementptr inbounds %union.GCObject, %union.GCObject* %12, i64 0, i32 0, i32 2, !dbg !563
  %21 = load i8, i8* %20, align 1, !dbg !563, !tbaa !362
  %22 = load i8, i8* %10, align 8, !dbg !563, !tbaa !462
  %23 = xor i8 %22, 3, !dbg !563
  %24 = and i8 %21, 3, !dbg !563
  %25 = and i8 %24, %23, !dbg !563
  %26 = icmp eq i8 %25, 0, !dbg !563
  %27 = getelementptr inbounds %union.GCObject, %union.GCObject* %12, i64 0, i32 0, i32 5, !dbg !564
  br i1 %26, label %48, label %28, !dbg !565

; <label>:28:                                     ; preds = %17
  %29 = bitcast %struct.lua_TValue** %27 to %struct.lua_TValue*, !dbg !569
  %30 = icmp eq %struct.lua_TValue* %15, %29, !dbg !570
  br i1 %30, label %45, label %31, !dbg !571

; <label>:31:                                     ; preds = %28
  %32 = bitcast %struct.lua_TValue** %27 to %struct.UpVal**, !dbg !574
  %33 = bitcast %struct.lua_TValue** %27 to i64*, !dbg !574
  %34 = load i64, i64* %33, align 8, !dbg !574, !tbaa !362
  %35 = getelementptr inbounds %union.GCObject, %union.GCObject* %12, i64 0, i32 0, i32 6, !dbg !575
  %36 = bitcast %struct.global_State** %35 to %struct.UpVal**, !dbg !575
  %37 = load %struct.UpVal*, %struct.UpVal** %36, align 8, !dbg !575, !tbaa !362
  %38 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %37, i64 0, i32 4, !dbg !576
  %39 = bitcast %union.anon* %38 to i64*, !dbg !577
  store i64 %34, i64* %39, align 8, !dbg !577, !tbaa !362
  %40 = bitcast %struct.global_State** %35 to i64*, !dbg !578
  %41 = load i64, i64* %40, align 8, !dbg !578, !tbaa !362
  %42 = load %struct.UpVal*, %struct.UpVal** %32, align 8, !dbg !579, !tbaa !362
  %43 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %42, i64 0, i32 4, i32 0, i32 1, !dbg !580
  %44 = bitcast i32* %43 to i64*, !dbg !581
  store i64 %41, i64* %44, align 8, !dbg !581, !tbaa !362
  br label %45, !dbg !582

; <label>:45:                                     ; preds = %28, %31
  %46 = bitcast %union.GCObject* %12 to i8*, !dbg !583
  %47 = tail call i8* @luaM_realloc_(%struct.lua_State* nonnull %0, i8* %46, i64 40, i64 0) #4, !dbg !583
  br label %70, !dbg !584

; <label>:48:                                     ; preds = %17
  %49 = bitcast %struct.lua_TValue** %27 to %struct.UpVal**, !dbg !587
  %50 = bitcast %struct.lua_TValue** %27 to i64*, !dbg !587
  %51 = load i64, i64* %50, align 8, !dbg !587, !tbaa !362
  %52 = getelementptr inbounds %union.GCObject, %union.GCObject* %12, i64 0, i32 0, i32 6, !dbg !588
  %53 = bitcast %struct.global_State** %52 to %struct.UpVal**, !dbg !588
  %54 = load %struct.UpVal*, %struct.UpVal** %53, align 8, !dbg !588, !tbaa !362
  %55 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %54, i64 0, i32 4, !dbg !589
  %56 = bitcast %union.anon* %55 to i64*, !dbg !590
  store i64 %51, i64* %56, align 8, !dbg !590, !tbaa !362
  %57 = bitcast %struct.global_State** %52 to i64*, !dbg !591
  %58 = load i64, i64* %57, align 8, !dbg !591, !tbaa !362
  %59 = load %struct.UpVal*, %struct.UpVal** %49, align 8, !dbg !592, !tbaa !362
  %60 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %59, i64 0, i32 4, i32 0, i32 1, !dbg !593
  %61 = bitcast i32* %60 to i64*, !dbg !594
  store i64 %58, i64* %61, align 8, !dbg !594, !tbaa !362
  %62 = load %struct.lua_TValue*, %struct.lua_TValue** %14, align 8, !dbg !595, !tbaa !417
  %63 = bitcast %struct.lua_TValue* %62 to i64*, !dbg !595
  %64 = load i64, i64* %63, align 8, !dbg !595
  store i64 %64, i64* %50, align 8, !dbg !595
  %65 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %62, i64 0, i32 1, !dbg !595
  %66 = load i32, i32* %65, align 8, !dbg !595, !tbaa !421
  %67 = getelementptr inbounds %struct.lua_TValue*, %struct.lua_TValue** %27, i64 1, !dbg !595
  %68 = bitcast %struct.lua_TValue** %67 to i32*, !dbg !595
  store i32 %66, i32* %68, align 8, !dbg !595, !tbaa !421
  %69 = bitcast %struct.lua_TValue** %14 to %struct.lua_TValue***, !dbg !596
  store %struct.lua_TValue** %27, %struct.lua_TValue*** %69, align 8, !dbg !596, !tbaa !417
  tail call void @luaC_linkupval(%struct.lua_State* nonnull %0, %struct.UpVal* nonnull %13) #4, !dbg !597
  br label %70

; <label>:70:                                     ; preds = %48, %45
  %71 = load %union.GCObject*, %union.GCObject** %3, align 8, !dbg !549, !tbaa !550
  %72 = icmp eq %union.GCObject* %71, null, !dbg !551
  br i1 %72, label %73, label %11, !dbg !552, !llvm.loop !598

; <label>:73:                                     ; preds = %70, %11, %2
  ret void, !dbg !600
}

; Function Attrs: noredzone
declare hidden void @luaC_linkupval(%struct.lua_State*, %struct.UpVal*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define hidden %struct.Proto* @luaF_newproto(%struct.lua_State*) local_unnamed_addr #0 !dbg !601 {
  %2 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* null, i64 0, i64 120) #4, !dbg !608
  %3 = bitcast i8* %2 to %struct.Proto*, !dbg !608
  %4 = bitcast i8* %2 to %union.GCObject*, !dbg !610
  tail call void @luaC_link(%struct.lua_State* %0, %union.GCObject* %4, i8 zeroext 9) #4, !dbg !611
  %5 = getelementptr inbounds i8, i8* %2, i64 16, !dbg !612
  %6 = bitcast i8* %5 to %struct.lua_TValue**, !dbg !612
  store %struct.lua_TValue* null, %struct.lua_TValue** %6, align 8, !dbg !613, !tbaa !614
  %7 = getelementptr inbounds i8, i8* %2, i64 32, !dbg !616
  %8 = bitcast i8* %7 to %struct.Proto***, !dbg !616
  store %struct.Proto** null, %struct.Proto*** %8, align 8, !dbg !617, !tbaa !618
  %9 = getelementptr inbounds i8, i8* %2, i64 88, !dbg !619
  %10 = bitcast i8* %9 to i32*, !dbg !619
  store i32 0, i32* %10, align 8, !dbg !620, !tbaa !621
  %11 = getelementptr inbounds i8, i8* %2, i64 24, !dbg !622
  %12 = bitcast i8* %11 to i32**, !dbg !622
  store i32* null, i32** %12, align 8, !dbg !623, !tbaa !624
  %13 = getelementptr inbounds i8, i8* %2, i64 72, !dbg !625
  %14 = bitcast i8* %13 to <4 x i32>*, !dbg !626
  store <4 x i32> zeroinitializer, <4 x i32>* %14, align 8, !dbg !626, !tbaa !627
  %15 = getelementptr inbounds i8, i8* %2, i64 112, !dbg !628
  store i8 0, i8* %15, align 8, !dbg !629, !tbaa !630
  %16 = getelementptr inbounds i8, i8* %2, i64 56, !dbg !631
  %17 = bitcast i8* %16 to %union.TString***, !dbg !631
  store %union.TString** null, %union.TString*** %17, align 8, !dbg !632, !tbaa !633
  %18 = getelementptr inbounds i8, i8* %2, i64 113, !dbg !634
  store i8 0, i8* %18, align 1, !dbg !635, !tbaa !636
  %19 = getelementptr inbounds i8, i8* %2, i64 114, !dbg !637
  store i8 0, i8* %19, align 2, !dbg !638, !tbaa !639
  %20 = getelementptr inbounds i8, i8* %2, i64 115, !dbg !640
  store i8 0, i8* %20, align 1, !dbg !641, !tbaa !642
  %21 = getelementptr inbounds i8, i8* %2, i64 40, !dbg !643
  %22 = bitcast i8* %21 to i32**, !dbg !643
  store i32* null, i32** %22, align 8, !dbg !644, !tbaa !645
  %23 = getelementptr inbounds i8, i8* %2, i64 92, !dbg !646
  %24 = bitcast i8* %23 to i32*, !dbg !646
  store i32 0, i32* %24, align 4, !dbg !647, !tbaa !648
  %25 = getelementptr inbounds i8, i8* %2, i64 48, !dbg !649
  %26 = bitcast i8* %25 to %struct.LocVar**, !dbg !649
  store %struct.LocVar* null, %struct.LocVar** %26, align 8, !dbg !650, !tbaa !651
  %27 = getelementptr inbounds i8, i8* %2, i64 96, !dbg !652
  %28 = bitcast i8* %27 to i32*, !dbg !652
  store i32 0, i32* %28, align 8, !dbg !653, !tbaa !654
  %29 = getelementptr inbounds i8, i8* %2, i64 100, !dbg !655
  %30 = bitcast i8* %29 to i32*, !dbg !655
  store i32 0, i32* %30, align 4, !dbg !656, !tbaa !657
  %31 = getelementptr inbounds i8, i8* %2, i64 64, !dbg !658
  %32 = bitcast i8* %31 to %union.TString**, !dbg !658
  store %union.TString* null, %union.TString** %32, align 8, !dbg !659, !tbaa !660
  ret %struct.Proto* %3, !dbg !661
}

; Function Attrs: noredzone nounwind
define hidden void @luaF_freeproto(%struct.lua_State*, %struct.Proto*) local_unnamed_addr #0 !dbg !662 {
  %3 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 4, !dbg !670
  %4 = bitcast i32** %3 to i8**, !dbg !670
  %5 = load i8*, i8** %4, align 8, !dbg !670, !tbaa !624
  %6 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 12, !dbg !670
  %7 = load i32, i32* %6, align 8, !dbg !670, !tbaa !671
  %8 = sext i32 %7 to i64, !dbg !670
  %9 = shl nsw i64 %8, 2, !dbg !670
  %10 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* %5, i64 %9, i64 0) #4, !dbg !670
  %11 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 5, !dbg !672
  %12 = bitcast %struct.Proto*** %11 to i8**, !dbg !672
  %13 = load i8*, i8** %12, align 8, !dbg !672, !tbaa !618
  %14 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 14, !dbg !672
  %15 = load i32, i32* %14, align 8, !dbg !672, !tbaa !621
  %16 = sext i32 %15 to i64, !dbg !672
  %17 = shl nsw i64 %16, 3, !dbg !672
  %18 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* %13, i64 %17, i64 0) #4, !dbg !672
  %19 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 3, !dbg !673
  %20 = bitcast %struct.lua_TValue** %19 to i8**, !dbg !673
  %21 = load i8*, i8** %20, align 8, !dbg !673, !tbaa !614
  %22 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 11, !dbg !673
  %23 = load i32, i32* %22, align 4, !dbg !673, !tbaa !674
  %24 = sext i32 %23 to i64, !dbg !673
  %25 = shl nsw i64 %24, 4, !dbg !673
  %26 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* %21, i64 %25, i64 0) #4, !dbg !673
  %27 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 6, !dbg !675
  %28 = bitcast i32** %27 to i8**, !dbg !675
  %29 = load i8*, i8** %28, align 8, !dbg !675, !tbaa !645
  %30 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 13, !dbg !675
  %31 = load i32, i32* %30, align 4, !dbg !675, !tbaa !676
  %32 = sext i32 %31 to i64, !dbg !675
  %33 = shl nsw i64 %32, 2, !dbg !675
  %34 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* %29, i64 %33, i64 0) #4, !dbg !675
  %35 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 7, !dbg !677
  %36 = bitcast %struct.LocVar** %35 to i8**, !dbg !677
  %37 = load i8*, i8** %36, align 8, !dbg !677, !tbaa !651
  %38 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 15, !dbg !677
  %39 = load i32, i32* %38, align 4, !dbg !677, !tbaa !648
  %40 = sext i32 %39 to i64, !dbg !677
  %41 = shl nsw i64 %40, 4, !dbg !677
  %42 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* %37, i64 %41, i64 0) #4, !dbg !677
  %43 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 8, !dbg !678
  %44 = bitcast %union.TString*** %43 to i8**, !dbg !678
  %45 = load i8*, i8** %44, align 8, !dbg !678, !tbaa !633
  %46 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 10, !dbg !678
  %47 = load i32, i32* %46, align 8, !dbg !678, !tbaa !679
  %48 = sext i32 %47 to i64, !dbg !678
  %49 = shl nsw i64 %48, 3, !dbg !678
  %50 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* %45, i64 %49, i64 0) #4, !dbg !678
  %51 = bitcast %struct.Proto* %1 to i8*, !dbg !680
  %52 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* %51, i64 120, i64 0) #4, !dbg !680
  ret void, !dbg !681
}

; Function Attrs: noredzone nounwind
define hidden void @luaF_freeclosure(%struct.lua_State*, %union.Closure*) local_unnamed_addr #0 !dbg !682 {
  %3 = getelementptr inbounds %union.Closure, %union.Closure* %1, i64 0, i32 0, i32 3, !dbg !691
  %4 = load i8, i8* %3, align 2, !dbg !691, !tbaa !362
  %5 = icmp eq i8 %4, 0, !dbg !692
  %6 = getelementptr inbounds %union.Closure, %union.Closure* %1, i64 0, i32 0, i32 4, !dbg !693
  %7 = load i8, i8* %6, align 1, !dbg !693, !tbaa !362
  %8 = zext i8 %7 to i32, !dbg !693
  %9 = select i1 %5, i32 3, i32 4, !dbg !692
  %10 = shl i32 %8, %9, !dbg !692
  %11 = add nuw nsw i32 %10, 40, !dbg !692
  %12 = bitcast %union.Closure* %1 to i8*, !dbg !695
  %13 = zext i32 %11 to i64, !dbg !695
  %14 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* %12, i64 %13, i64 0) #4, !dbg !695
  ret void, !dbg !696
}

; Function Attrs: noredzone nounwind readonly
define hidden i8* @luaF_getlocalname(%struct.Proto* nocapture readonly, i32, i32) local_unnamed_addr #2 !dbg !697 {
  %4 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 15, !dbg !711
  %5 = load i32, i32* %4, align 4, !dbg !711, !tbaa !648
  %6 = icmp sgt i32 %5, 0, !dbg !714
  br i1 %6, label %7, label %34, !dbg !715

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 7
  %9 = load %struct.LocVar*, %struct.LocVar** %8, align 8, !tbaa !651
  %10 = sext i32 %5 to i64
  br label %11, !dbg !715

; <label>:11:                                     ; preds = %7, %30
  %12 = phi i64 [ 0, %7 ], [ %32, %30 ]
  %13 = phi i32 [ %1, %7 ], [ %31, %30 ]
  %14 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %9, i64 %12, i32 1, !dbg !716
  %15 = load i32, i32* %14, align 8, !dbg !716, !tbaa !717
  %16 = icmp sgt i32 %15, %2, !dbg !719
  br i1 %16, label %34, label %17, !dbg !720

; <label>:17:                                     ; preds = %11
  %18 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %9, i64 %12, i32 2, !dbg !721
  %19 = load i32, i32* %18, align 4, !dbg !721, !tbaa !724
  %20 = icmp sgt i32 %19, %2, !dbg !725
  br i1 %20, label %21, label %30, !dbg !726

; <label>:21:                                     ; preds = %17
  %22 = add nsw i32 %13, -1, !dbg !727
  %23 = icmp eq i32 %22, 0, !dbg !729
  br i1 %23, label %24, label %30, !dbg !731

; <label>:24:                                     ; preds = %21
  %25 = and i64 %12, 4294967295, !dbg !732
  %26 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %9, i64 %25, i32 0, !dbg !733
  %27 = load %union.TString*, %union.TString** %26, align 8, !dbg !733, !tbaa !734
  %28 = getelementptr inbounds %union.TString, %union.TString* %27, i64 1, !dbg !733
  %29 = bitcast %union.TString* %28 to i8*, !dbg !733
  br label %34, !dbg !735

; <label>:30:                                     ; preds = %17, %21
  %31 = phi i32 [ %22, %21 ], [ %13, %17 ]
  %32 = add nuw nsw i64 %12, 1, !dbg !736
  %33 = icmp slt i64 %32, %10, !dbg !714
  br i1 %33, label %11, label %34, !dbg !715, !llvm.loop !737

; <label>:34:                                     ; preds = %11, %30, %3, %24
  %35 = phi i8* [ %29, %24 ], [ null, %3 ], [ null, %30 ], [ null, %11 ], !dbg !739
  ret i8* %35, !dbg !740
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nobuiltin noredzone nounwind }
attributes #5 = { nounwind }

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
!395 = distinct !{!395, !391, !396, !397}
!396 = !DILocation(line: 39, column: 42, scope: !371)
!397 = !{!"llvm.loop.isvectorized", i32 1}
!398 = distinct !{!398, !399}
!399 = !{!"llvm.loop.unroll.disable"}
!400 = distinct !{!400, !391, !396, !401, !397}
!401 = !{!"llvm.loop.unroll.runtime.disable"}
!402 = !DILocation(line: 40, column: 3, scope: !371)
!403 = distinct !DISubprogram(name: "luaF_newupval", scope: !1, file: !1, line: 44, type: !404, isLocal: false, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !406)
!404 = !DISubroutineType(types: !405)
!405 = !{!336, !235}
!406 = !{!407, !408}
!407 = !DILocalVariable(name: "L", arg: 1, scope: !403, file: !1, line: 44, type: !235)
!408 = !DILocalVariable(name: "uv", scope: !403, file: !1, line: 45, type: !336)
!409 = !DILocation(line: 44, column: 34, scope: !403)
!410 = !DILocation(line: 45, column: 15, scope: !403)
!411 = !DILocation(line: 45, column: 10, scope: !403)
!412 = !DILocation(line: 46, column: 16, scope: !403)
!413 = !DILocation(line: 46, column: 3, scope: !403)
!414 = !DILocation(line: 47, column: 16, scope: !403)
!415 = !DILocation(line: 47, column: 7, scope: !403)
!416 = !DILocation(line: 47, column: 9, scope: !403)
!417 = !{!418, !419, i64 16}
!418 = !{!"UpVal", !419, i64 0, !363, i64 8, !363, i64 9, !419, i64 16, !363, i64 24}
!419 = !{!"any pointer", !363, i64 0}
!420 = !DILocation(line: 48, column: 3, scope: !403)
!421 = !{!422, !423, i64 8}
!422 = !{!"lua_TValue", !363, i64 0, !423, i64 8}
!423 = !{!"int", !363, i64 0}
!424 = !DILocation(line: 49, column: 3, scope: !403)
!425 = distinct !DISubprogram(name: "luaF_findupval", scope: !1, file: !1, line: 53, type: !426, isLocal: false, isDefinition: true, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !428)
!426 = !DISubroutineType(types: !427)
!427 = !{!336, !235, !183}
!428 = !{!429, !430, !431, !432, !433, !434}
!429 = !DILocalVariable(name: "L", arg: 1, scope: !425, file: !1, line: 53, type: !235)
!430 = !DILocalVariable(name: "level", arg: 2, scope: !425, file: !1, line: 53, type: !183)
!431 = !DILocalVariable(name: "g", scope: !425, file: !1, line: 54, type: !186)
!432 = !DILocalVariable(name: "pp", scope: !425, file: !1, line: 55, type: !195)
!433 = !DILocalVariable(name: "p", scope: !425, file: !1, line: 56, type: !336)
!434 = !DILocalVariable(name: "uv", scope: !425, file: !1, line: 57, type: !336)
!435 = !DILocation(line: 53, column: 35, scope: !425)
!436 = !DILocation(line: 53, column: 44, scope: !425)
!437 = !DILocation(line: 54, column: 21, scope: !425)
!438 = !{!439, !419, i64 32}
!439 = !{!"lua_State", !419, i64 0, !363, i64 8, !363, i64 9, !363, i64 10, !419, i64 16, !419, i64 24, !419, i64 32, !419, i64 40, !419, i64 48, !419, i64 56, !419, i64 64, !419, i64 72, !419, i64 80, !423, i64 88, !423, i64 92, !440, i64 96, !440, i64 98, !363, i64 100, !363, i64 101, !423, i64 104, !423, i64 108, !419, i64 112, !422, i64 120, !422, i64 136, !419, i64 152, !419, i64 160, !419, i64 168, !441, i64 176}
!440 = !{!"short", !363, i64 0}
!441 = !{!"long", !363, i64 0}
!442 = !DILocation(line: 54, column: 17, scope: !425)
!443 = !DILocation(line: 55, column: 23, scope: !425)
!444 = !DILocation(line: 55, column: 14, scope: !425)
!445 = !DILocation(line: 58, column: 10, scope: !425)
!446 = !{!419, !419, i64 0}
!447 = !DILocation(line: 58, column: 14, scope: !425)
!448 = !DILocation(line: 58, column: 22, scope: !425)
!449 = !DILocation(line: 58, column: 46, scope: !425)
!450 = !DILocation(line: 58, column: 48, scope: !425)
!451 = !DILocation(line: 58, column: 3, scope: !425)
!452 = distinct !{!452, !451, !453}
!453 = !DILocation(line: 66, column: 3, scope: !425)
!454 = !DILocation(line: 60, column: 14, scope: !455)
!455 = distinct !DILexicalBlock(scope: !456, file: !1, line: 60, column: 9)
!456 = distinct !DILexicalBlock(scope: !425, file: !1, line: 58, column: 58)
!457 = !DILocation(line: 60, column: 9, scope: !456)
!458 = !DILocation(line: 58, column: 30, scope: !425)
!459 = !DILocation(line: 61, column: 11, scope: !460)
!460 = distinct !DILexicalBlock(scope: !461, file: !1, line: 61, column: 11)
!461 = distinct !DILexicalBlock(scope: !455, file: !1, line: 60, column: 24)
!462 = !{!463, !363, i64 32}
!463 = !{!"global_State", !464, i64 0, !419, i64 16, !419, i64 24, !363, i64 32, !363, i64 33, !423, i64 36, !419, i64 40, !419, i64 48, !419, i64 56, !419, i64 64, !419, i64 72, !419, i64 80, !465, i64 88, !441, i64 112, !441, i64 120, !441, i64 128, !441, i64 136, !423, i64 144, !423, i64 148, !419, i64 152, !422, i64 160, !419, i64 176, !418, i64 184, !363, i64 224, !363, i64 296}
!464 = !{!"stringtable", !419, i64 0, !423, i64 8, !423, i64 12}
!465 = !{!"Mbuffer", !419, i64 0, !441, i64 8, !441, i64 16}
!466 = !DILocation(line: 61, column: 11, scope: !461)
!467 = !DILocation(line: 62, column: 9, scope: !460)
!468 = !DILocation(line: 65, column: 14, scope: !456)
!469 = !DILocation(line: 67, column: 8, scope: !425)
!470 = !DILocation(line: 0, scope: !456)
!471 = !DILocation(line: 57, column: 10, scope: !425)
!472 = !DILocation(line: 68, column: 7, scope: !425)
!473 = !DILocation(line: 68, column: 10, scope: !425)
!474 = !{!418, !363, i64 8}
!475 = !DILocation(line: 69, column: 16, scope: !425)
!476 = !DILocation(line: 69, column: 7, scope: !425)
!477 = !DILocation(line: 69, column: 14, scope: !425)
!478 = !{!418, !363, i64 9}
!479 = !DILocation(line: 70, column: 7, scope: !425)
!480 = !DILocation(line: 70, column: 9, scope: !425)
!481 = !DILocation(line: 71, column: 14, scope: !425)
!482 = !DILocation(line: 71, column: 12, scope: !425)
!483 = !{!418, !419, i64 0}
!484 = !DILocation(line: 72, column: 7, scope: !425)
!485 = !DILocation(line: 73, column: 22, scope: !425)
!486 = !DILocation(line: 73, column: 7, scope: !425)
!487 = !DILocation(line: 73, column: 11, scope: !425)
!488 = !DILocation(line: 73, column: 16, scope: !425)
!489 = !DILocation(line: 74, column: 32, scope: !425)
!490 = !DILocation(line: 74, column: 11, scope: !425)
!491 = !DILocation(line: 74, column: 16, scope: !425)
!492 = !DILocation(line: 75, column: 17, scope: !425)
!493 = !DILocation(line: 75, column: 26, scope: !425)
!494 = !DILocation(line: 76, column: 22, scope: !425)
!495 = !DILocation(line: 78, column: 3, scope: !425)
!496 = !DILocation(line: 0, scope: !425)
!497 = !DILocation(line: 79, column: 1, scope: !425)
!498 = distinct !DISubprogram(name: "luaF_freeupval", scope: !1, file: !1, line: 89, type: !499, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !501)
!499 = !DISubroutineType(types: !500)
!500 = !{null, !235, !336}
!501 = !{!502, !503}
!502 = !DILocalVariable(name: "L", arg: 1, scope: !498, file: !1, line: 89, type: !235)
!503 = !DILocalVariable(name: "uv", arg: 2, scope: !498, file: !1, line: 89, type: !336)
!504 = !DILocation(line: 89, column: 33, scope: !498)
!505 = !DILocation(line: 89, column: 43, scope: !498)
!506 = !DILocation(line: 90, column: 11, scope: !507)
!507 = distinct !DILexicalBlock(scope: !498, file: !1, line: 90, column: 7)
!508 = !DILocation(line: 90, column: 23, scope: !507)
!509 = !DILocation(line: 90, column: 13, scope: !507)
!510 = !DILocation(line: 90, column: 7, scope: !498)
!511 = !DILocalVariable(name: "uv", arg: 1, scope: !512, file: !1, line: 82, type: !336)
!512 = distinct !DISubprogram(name: "unlinkupval", scope: !1, file: !1, line: 82, type: !513, isLocal: true, isDefinition: true, scopeLine: 82, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !515)
!513 = !DISubroutineType(types: !514)
!514 = !{null, !336}
!515 = !{!511}
!516 = !DILocation(line: 82, column: 33, scope: !512, inlinedAt: !517)
!517 = distinct !DILocation(line: 91, column: 5, scope: !507)
!518 = !DILocation(line: 84, column: 32, scope: !512, inlinedAt: !517)
!519 = !DILocation(line: 84, column: 36, scope: !512, inlinedAt: !517)
!520 = !DILocation(line: 84, column: 11, scope: !512, inlinedAt: !517)
!521 = !DILocation(line: 84, column: 17, scope: !512, inlinedAt: !517)
!522 = !DILocation(line: 84, column: 26, scope: !512, inlinedAt: !517)
!523 = !DILocation(line: 85, column: 36, scope: !512, inlinedAt: !517)
!524 = !DILocation(line: 85, column: 11, scope: !512, inlinedAt: !517)
!525 = !DILocation(line: 85, column: 21, scope: !512, inlinedAt: !517)
!526 = !DILocation(line: 85, column: 26, scope: !512, inlinedAt: !517)
!527 = !DILocation(line: 91, column: 5, scope: !507)
!528 = !DILocation(line: 92, column: 3, scope: !498)
!529 = !DILocation(line: 93, column: 1, scope: !498)
!530 = distinct !DISubprogram(name: "luaF_close", scope: !1, file: !1, line: 96, type: !531, isLocal: false, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !533)
!531 = !DISubroutineType(types: !532)
!532 = !{null, !235, !183}
!533 = !{!534, !535, !536, !537, !538, !540, !546}
!534 = !DILocalVariable(name: "L", arg: 1, scope: !530, file: !1, line: 96, type: !235)
!535 = !DILocalVariable(name: "level", arg: 2, scope: !530, file: !1, line: 96, type: !183)
!536 = !DILocalVariable(name: "uv", scope: !530, file: !1, line: 97, type: !336)
!537 = !DILocalVariable(name: "g", scope: !530, file: !1, line: 98, type: !186)
!538 = !DILocalVariable(name: "o", scope: !539, file: !1, line: 100, type: !14)
!539 = distinct !DILexicalBlock(scope: !530, file: !1, line: 99, column: 77)
!540 = !DILocalVariable(name: "o2", scope: !541, file: !1, line: 107, type: !544)
!541 = distinct !DILexicalBlock(scope: !542, file: !1, line: 107, column: 7)
!542 = distinct !DILexicalBlock(scope: !543, file: !1, line: 105, column: 10)
!543 = distinct !DILexicalBlock(scope: !539, file: !1, line: 103, column: 9)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!546 = !DILocalVariable(name: "o1", scope: !541, file: !1, line: 107, type: !76)
!547 = !DILocation(line: 96, column: 29, scope: !530)
!548 = !DILocation(line: 96, column: 38, scope: !530)
!549 = !DILocation(line: 99, column: 13, scope: !530)
!550 = !{!439, !419, i64 152}
!551 = !DILocation(line: 99, column: 23, scope: !530)
!552 = !DILocation(line: 99, column: 31, scope: !530)
!553 = !DILocation(line: 98, column: 21, scope: !530)
!554 = !DILocation(line: 98, column: 17, scope: !530)
!555 = !DILocation(line: 99, column: 40, scope: !530)
!556 = !DILocation(line: 97, column: 10, scope: !530)
!557 = !DILocation(line: 99, column: 65, scope: !530)
!558 = !DILocation(line: 99, column: 67, scope: !530)
!559 = !DILocation(line: 99, column: 3, scope: !530)
!560 = !DILocation(line: 100, column: 15, scope: !539)
!561 = !DILocation(line: 102, column: 24, scope: !539)
!562 = !DILocation(line: 102, column: 18, scope: !539)
!563 = !DILocation(line: 103, column: 9, scope: !543)
!564 = !DILocation(line: 0, scope: !543)
!565 = !DILocation(line: 103, column: 9, scope: !539)
!566 = !DILocation(line: 89, column: 33, scope: !498, inlinedAt: !567)
!567 = distinct !DILocation(line: 104, column: 7, scope: !543)
!568 = !DILocation(line: 89, column: 43, scope: !498, inlinedAt: !567)
!569 = !DILocation(line: 90, column: 23, scope: !507, inlinedAt: !567)
!570 = !DILocation(line: 90, column: 13, scope: !507, inlinedAt: !567)
!571 = !DILocation(line: 90, column: 7, scope: !498, inlinedAt: !567)
!572 = !DILocation(line: 82, column: 33, scope: !512, inlinedAt: !573)
!573 = distinct !DILocation(line: 91, column: 5, scope: !507, inlinedAt: !567)
!574 = !DILocation(line: 84, column: 36, scope: !512, inlinedAt: !573)
!575 = !DILocation(line: 84, column: 11, scope: !512, inlinedAt: !573)
!576 = !DILocation(line: 84, column: 17, scope: !512, inlinedAt: !573)
!577 = !DILocation(line: 84, column: 26, scope: !512, inlinedAt: !573)
!578 = !DILocation(line: 85, column: 36, scope: !512, inlinedAt: !573)
!579 = !DILocation(line: 85, column: 11, scope: !512, inlinedAt: !573)
!580 = !DILocation(line: 85, column: 21, scope: !512, inlinedAt: !573)
!581 = !DILocation(line: 85, column: 26, scope: !512, inlinedAt: !573)
!582 = !DILocation(line: 91, column: 5, scope: !507, inlinedAt: !567)
!583 = !DILocation(line: 92, column: 3, scope: !498, inlinedAt: !567)
!584 = !DILocation(line: 104, column: 7, scope: !543)
!585 = !DILocation(line: 82, column: 33, scope: !512, inlinedAt: !586)
!586 = distinct !DILocation(line: 106, column: 7, scope: !542)
!587 = !DILocation(line: 84, column: 36, scope: !512, inlinedAt: !586)
!588 = !DILocation(line: 84, column: 11, scope: !512, inlinedAt: !586)
!589 = !DILocation(line: 84, column: 17, scope: !512, inlinedAt: !586)
!590 = !DILocation(line: 84, column: 26, scope: !512, inlinedAt: !586)
!591 = !DILocation(line: 85, column: 36, scope: !512, inlinedAt: !586)
!592 = !DILocation(line: 85, column: 11, scope: !512, inlinedAt: !586)
!593 = !DILocation(line: 85, column: 21, scope: !512, inlinedAt: !586)
!594 = !DILocation(line: 85, column: 26, scope: !512, inlinedAt: !586)
!595 = !DILocation(line: 107, column: 7, scope: !541)
!596 = !DILocation(line: 108, column: 13, scope: !542)
!597 = !DILocation(line: 109, column: 7, scope: !542)
!598 = distinct !{!598, !559, !599}
!599 = !DILocation(line: 111, column: 3, scope: !530)
!600 = !DILocation(line: 112, column: 1, scope: !530)
!601 = distinct !DISubprogram(name: "luaF_newproto", scope: !1, file: !1, line: 115, type: !602, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !604)
!602 = !DISubroutineType(types: !603)
!603 = !{!337, !235}
!604 = !{!605, !606}
!605 = !DILocalVariable(name: "L", arg: 1, scope: !601, file: !1, line: 115, type: !235)
!606 = !DILocalVariable(name: "f", scope: !601, file: !1, line: 116, type: !337)
!607 = !DILocation(line: 115, column: 34, scope: !601)
!608 = !DILocation(line: 116, column: 14, scope: !601)
!609 = !DILocation(line: 116, column: 10, scope: !601)
!610 = !DILocation(line: 117, column: 16, scope: !601)
!611 = !DILocation(line: 117, column: 3, scope: !601)
!612 = !DILocation(line: 118, column: 6, scope: !601)
!613 = !DILocation(line: 118, column: 8, scope: !601)
!614 = !{!615, !419, i64 16}
!615 = !{!"Proto", !419, i64 0, !363, i64 8, !363, i64 9, !419, i64 16, !419, i64 24, !419, i64 32, !419, i64 40, !419, i64 48, !419, i64 56, !419, i64 64, !423, i64 72, !423, i64 76, !423, i64 80, !423, i64 84, !423, i64 88, !423, i64 92, !423, i64 96, !423, i64 100, !419, i64 104, !363, i64 112, !363, i64 113, !363, i64 114, !363, i64 115}
!616 = !DILocation(line: 120, column: 6, scope: !601)
!617 = !DILocation(line: 120, column: 8, scope: !601)
!618 = !{!615, !419, i64 32}
!619 = !DILocation(line: 121, column: 6, scope: !601)
!620 = !DILocation(line: 121, column: 12, scope: !601)
!621 = !{!615, !423, i64 88}
!622 = !DILocation(line: 122, column: 6, scope: !601)
!623 = !DILocation(line: 122, column: 11, scope: !601)
!624 = !{!615, !419, i64 24}
!625 = !DILocation(line: 125, column: 6, scope: !601)
!626 = !DILocation(line: 125, column: 19, scope: !601)
!627 = !{!423, !423, i64 0}
!628 = !DILocation(line: 126, column: 6, scope: !601)
!629 = !DILocation(line: 126, column: 11, scope: !601)
!630 = !{!615, !363, i64 112}
!631 = !DILocation(line: 127, column: 6, scope: !601)
!632 = !DILocation(line: 127, column: 15, scope: !601)
!633 = !{!615, !419, i64 56}
!634 = !DILocation(line: 128, column: 6, scope: !601)
!635 = !DILocation(line: 128, column: 16, scope: !601)
!636 = !{!615, !363, i64 113}
!637 = !DILocation(line: 129, column: 6, scope: !601)
!638 = !DILocation(line: 129, column: 16, scope: !601)
!639 = !{!615, !363, i64 114}
!640 = !DILocation(line: 130, column: 6, scope: !601)
!641 = !DILocation(line: 130, column: 19, scope: !601)
!642 = !{!615, !363, i64 115}
!643 = !DILocation(line: 131, column: 6, scope: !601)
!644 = !DILocation(line: 131, column: 15, scope: !601)
!645 = !{!615, !419, i64 40}
!646 = !DILocation(line: 132, column: 6, scope: !601)
!647 = !DILocation(line: 132, column: 18, scope: !601)
!648 = !{!615, !423, i64 92}
!649 = !DILocation(line: 133, column: 6, scope: !601)
!650 = !DILocation(line: 133, column: 14, scope: !601)
!651 = !{!615, !419, i64 48}
!652 = !DILocation(line: 134, column: 6, scope: !601)
!653 = !DILocation(line: 134, column: 18, scope: !601)
!654 = !{!615, !423, i64 96}
!655 = !DILocation(line: 135, column: 6, scope: !601)
!656 = !DILocation(line: 135, column: 22, scope: !601)
!657 = !{!615, !423, i64 100}
!658 = !DILocation(line: 136, column: 6, scope: !601)
!659 = !DILocation(line: 136, column: 13, scope: !601)
!660 = !{!615, !419, i64 64}
!661 = !DILocation(line: 137, column: 3, scope: !601)
!662 = distinct !DISubprogram(name: "luaF_freeproto", scope: !1, file: !1, line: 141, type: !663, isLocal: false, isDefinition: true, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !665)
!663 = !DISubroutineType(types: !664)
!664 = !{null, !235, !337}
!665 = !{!666, !667}
!666 = !DILocalVariable(name: "L", arg: 1, scope: !662, file: !1, line: 141, type: !235)
!667 = !DILocalVariable(name: "f", arg: 2, scope: !662, file: !1, line: 141, type: !337)
!668 = !DILocation(line: 141, column: 33, scope: !662)
!669 = !DILocation(line: 141, column: 43, scope: !662)
!670 = !DILocation(line: 142, column: 3, scope: !662)
!671 = !{!615, !423, i64 80}
!672 = !DILocation(line: 143, column: 3, scope: !662)
!673 = !DILocation(line: 144, column: 3, scope: !662)
!674 = !{!615, !423, i64 76}
!675 = !DILocation(line: 145, column: 3, scope: !662)
!676 = !{!615, !423, i64 84}
!677 = !DILocation(line: 146, column: 3, scope: !662)
!678 = !DILocation(line: 147, column: 3, scope: !662)
!679 = !{!615, !423, i64 72}
!680 = !DILocation(line: 148, column: 3, scope: !662)
!681 = !DILocation(line: 149, column: 1, scope: !662)
!682 = distinct !DISubprogram(name: "luaF_freeclosure", scope: !1, file: !1, line: 152, type: !683, isLocal: false, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !685)
!683 = !DISubroutineType(types: !684)
!684 = !{null, !235, !4}
!685 = !{!686, !687, !688}
!686 = !DILocalVariable(name: "L", arg: 1, scope: !682, file: !1, line: 152, type: !235)
!687 = !DILocalVariable(name: "c", arg: 2, scope: !682, file: !1, line: 152, type: !4)
!688 = !DILocalVariable(name: "size", scope: !682, file: !1, line: 153, type: !90)
!689 = !DILocation(line: 152, column: 35, scope: !682)
!690 = !DILocation(line: 152, column: 47, scope: !682)
!691 = !DILocation(line: 153, column: 20, scope: !682)
!692 = !DILocation(line: 153, column: 14, scope: !682)
!693 = !DILocation(line: 0, scope: !682)
!694 = !DILocation(line: 153, column: 7, scope: !682)
!695 = !DILocation(line: 155, column: 3, scope: !682)
!696 = !DILocation(line: 156, column: 1, scope: !682)
!697 = distinct !DISubprogram(name: "luaF_getlocalname", scope: !1, file: !1, line: 163, type: !698, isLocal: false, isDefinition: true, scopeLine: 163, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !702)
!698 = !DISubroutineType(types: !699)
!699 = !{!288, !700, !90, !90}
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !338)
!702 = !{!703, !704, !705, !706}
!703 = !DILocalVariable(name: "f", arg: 1, scope: !697, file: !1, line: 163, type: !700)
!704 = !DILocalVariable(name: "local_number", arg: 2, scope: !697, file: !1, line: 163, type: !90)
!705 = !DILocalVariable(name: "pc", arg: 3, scope: !697, file: !1, line: 163, type: !90)
!706 = !DILocalVariable(name: "i", scope: !697, file: !1, line: 164, type: !90)
!707 = !DILocation(line: 163, column: 45, scope: !697)
!708 = !DILocation(line: 163, column: 52, scope: !697)
!709 = !DILocation(line: 163, column: 70, scope: !697)
!710 = !DILocation(line: 164, column: 7, scope: !697)
!711 = !DILocation(line: 165, column: 20, scope: !712)
!712 = distinct !DILexicalBlock(scope: !713, file: !1, line: 165, column: 3)
!713 = distinct !DILexicalBlock(scope: !697, file: !1, line: 165, column: 3)
!714 = !DILocation(line: 165, column: 16, scope: !712)
!715 = !DILocation(line: 165, column: 32, scope: !712)
!716 = !DILocation(line: 165, column: 49, scope: !712)
!717 = !{!718, !423, i64 8}
!718 = !{!"LocVar", !419, i64 0, !423, i64 8, !423, i64 12}
!719 = !DILocation(line: 165, column: 57, scope: !712)
!720 = !DILocation(line: 165, column: 3, scope: !713)
!721 = !DILocation(line: 166, column: 28, scope: !722)
!722 = distinct !DILexicalBlock(scope: !723, file: !1, line: 166, column: 9)
!723 = distinct !DILexicalBlock(scope: !712, file: !1, line: 165, column: 69)
!724 = !{!718, !423, i64 12}
!725 = !DILocation(line: 166, column: 12, scope: !722)
!726 = !DILocation(line: 166, column: 9, scope: !723)
!727 = !DILocation(line: 167, column: 19, scope: !728)
!728 = distinct !DILexicalBlock(scope: !722, file: !1, line: 166, column: 35)
!729 = !DILocation(line: 168, column: 24, scope: !730)
!730 = distinct !DILexicalBlock(scope: !728, file: !1, line: 168, column: 11)
!731 = !DILocation(line: 168, column: 11, scope: !728)
!732 = !DILocation(line: 165, column: 35, scope: !712)
!733 = !DILocation(line: 169, column: 16, scope: !730)
!734 = !{!718, !419, i64 0}
!735 = !DILocation(line: 169, column: 9, scope: !730)
!736 = !DILocation(line: 165, column: 65, scope: !712)
!737 = distinct !{!737, !720, !738}
!738 = !DILocation(line: 171, column: 3, scope: !713)
!739 = !DILocation(line: 0, scope: !697)
!740 = !DILocation(line: 173, column: 1, scope: !697)
