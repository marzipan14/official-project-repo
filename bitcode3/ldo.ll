; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/ldo.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/ldo.c"
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
%struct.lua_longjmp = type { %struct.lua_longjmp*, [8 x i64], i32 }
%struct.LClosure = type { %union.GCObject*, i8, i8, i8, i8, %union.GCObject*, %struct.Table*, %struct.Proto*, [1 x %struct.UpVal*] }
%struct.Proto = type { %union.GCObject*, i8, i8, %struct.lua_TValue*, i32*, %struct.Proto**, i32*, %struct.LocVar*, %union.TString**, %union.TString*, i32, i32, i32, i32, i32, i32, i32, i32, %union.GCObject*, i8, i8, i8, i8 }
%struct.LocVar = type { %union.TString*, i32, i32 }
%struct.CClosure = type { %union.GCObject*, i8, i8, i8, i8, %union.GCObject*, %struct.Table*, i32 (%struct.lua_State*)*, [1 x %struct.lua_TValue] }
%struct.Zio = type { i64, i8*, i8* (%struct.lua_State*, i8*, i64*)*, i8*, %struct.lua_State* }
%struct.SParser = type { %struct.Zio*, %struct.Mbuffer, i8* }
%union.Closure = type { %struct.CClosure }

@.str = private unnamed_addr constant [18 x i8] c"not enough memory\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"error in error handling\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"C stack overflow\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"cannot resume non-suspended coroutine\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"attempt to yield across metamethod/C-call boundary\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"call\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"stack overflow\00", align 1

; Function Attrs: noredzone nounwind
define hidden void @luaD_seterrorobj(%struct.lua_State*, i32, %struct.lua_TValue*) local_unnamed_addr #0 !dbg !394 {
  switch i32 %1, label %22 [
    i32 4, label %4
    i32 5, label %7
    i32 3, label %10
    i32 2, label %10
  ], !dbg !417

; <label>:4:                                      ; preds = %3
  %5 = tail call %union.TString* @luaS_newlstr(%struct.lua_State* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 17) #6, !dbg !418
  %6 = bitcast %struct.lua_TValue* %2 to %union.TString**, !dbg !418
  store %union.TString* %5, %union.TString** %6, align 8, !dbg !418, !tbaa !419
  br label %19, !dbg !422

; <label>:7:                                      ; preds = %3
  %8 = tail call %union.TString* @luaS_newlstr(%struct.lua_State* %0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 23) #6, !dbg !423
  %9 = bitcast %struct.lua_TValue* %2 to %union.TString**, !dbg !423
  store %union.TString* %8, %union.TString** %9, align 8, !dbg !423, !tbaa !419
  br label %19, !dbg !424

; <label>:10:                                     ; preds = %3, %3
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !425
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %11, align 8, !dbg !425, !tbaa !426
  %13 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %12, i64 -1, !dbg !425
  %14 = bitcast %struct.lua_TValue* %13 to i64*, !dbg !425
  %15 = bitcast %struct.lua_TValue* %2 to i64*, !dbg !425
  %16 = load i64, i64* %14, align 8, !dbg !425
  store i64 %16, i64* %15, align 8, !dbg !425
  %17 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %12, i64 -1, i32 1, !dbg !425
  %18 = load i32, i32* %17, align 8, !dbg !425, !tbaa !433
  br label %19, !dbg !434

; <label>:19:                                     ; preds = %4, %7, %10
  %20 = phi i32 [ %18, %10 ], [ 4, %7 ], [ 4, %4 ]
  %21 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i64 0, i32 1, !dbg !435
  store i32 %20, i32* %21, align 8, !dbg !435, !tbaa !433
  br label %22, !dbg !436

; <label>:22:                                     ; preds = %19, %3
  %23 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i64 1, !dbg !436
  %24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !437
  store %struct.lua_TValue* %23, %struct.lua_TValue** %24, align 8, !dbg !438, !tbaa !426
  ret void, !dbg !439
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare hidden %union.TString* @luaS_newlstr(%struct.lua_State*, i8*, i64) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone noreturn nounwind
define hidden void @luaD_throw(%struct.lua_State*, i32) local_unnamed_addr #3 !dbg !440 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 26, !dbg !448
  %4 = load %struct.lua_longjmp*, %struct.lua_longjmp** %3, align 8, !dbg !448, !tbaa !450
  %5 = icmp eq %struct.lua_longjmp* %4, null, !dbg !451
  br i1 %5, label %9, label %6, !dbg !452

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.lua_longjmp, %struct.lua_longjmp* %4, i64 0, i32 2, !dbg !453
  store volatile i32 %1, i32* %7, align 8, !dbg !455, !tbaa !456
  %8 = getelementptr inbounds %struct.lua_longjmp, %struct.lua_longjmp* %4, i64 0, i32 1, i64 0, !dbg !458
  tail call void @longjmp(i64* nonnull %8, i32 1) #7, !dbg !458
  unreachable, !dbg !458

; <label>:9:                                      ; preds = %2
  %10 = trunc i32 %1 to i8, !dbg !459
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 3, !dbg !461
  store i8 %10, i8* %11, align 2, !dbg !462, !tbaa !463
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !464
  %13 = load %struct.global_State*, %struct.global_State** %12, align 8, !dbg !464, !tbaa !466
  %14 = getelementptr inbounds %struct.global_State, %struct.global_State* %13, i64 0, i32 19, !dbg !467
  %15 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %14, align 8, !dbg !467, !tbaa !468
  %16 = icmp eq i32 (%struct.lua_State*)* %15, null, !dbg !464
  br i1 %16, label %82, label %17, !dbg !473

; <label>:17:                                     ; preds = %9
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 12, !dbg !482
  %19 = load %struct.CallInfo*, %struct.CallInfo** %18, align 8, !dbg !482, !tbaa !483
  %20 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !484
  store %struct.CallInfo* %19, %struct.CallInfo** %20, align 8, !dbg !485, !tbaa !486
  %21 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %19, i64 0, i32 0, !dbg !487
  %22 = load %struct.lua_TValue*, %struct.lua_TValue** %21, align 8, !dbg !487, !tbaa !488
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !490
  store %struct.lua_TValue* %22, %struct.lua_TValue** %23, align 8, !dbg !491, !tbaa !492
  tail call void @luaF_close(%struct.lua_State* nonnull %0, %struct.lua_TValue* %22) #6, !dbg !493
  %24 = load %struct.lua_TValue*, %struct.lua_TValue** %23, align 8, !dbg !494, !tbaa !492
  switch i32 %1, label %43 [
    i32 4, label %25
    i32 5, label %28
    i32 3, label %31
    i32 2, label %31
  ], !dbg !499

; <label>:25:                                     ; preds = %17
  %26 = tail call %union.TString* @luaS_newlstr(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 17) #6, !dbg !500
  %27 = bitcast %struct.lua_TValue* %24 to %union.TString**, !dbg !500
  store %union.TString* %26, %union.TString** %27, align 8, !dbg !500, !tbaa !419
  br label %40, !dbg !501

; <label>:28:                                     ; preds = %17
  %29 = tail call %union.TString* @luaS_newlstr(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 23) #6, !dbg !502
  %30 = bitcast %struct.lua_TValue* %24 to %union.TString**, !dbg !502
  store %union.TString* %29, %union.TString** %30, align 8, !dbg !502, !tbaa !419
  br label %40, !dbg !503

; <label>:31:                                     ; preds = %17, %17
  %32 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !504
  %33 = load %struct.lua_TValue*, %struct.lua_TValue** %32, align 8, !dbg !504, !tbaa !426
  %34 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %33, i64 -1, !dbg !504
  %35 = bitcast %struct.lua_TValue* %34 to i64*, !dbg !504
  %36 = bitcast %struct.lua_TValue* %24 to i64*, !dbg !504
  %37 = load i64, i64* %35, align 8, !dbg !504
  store i64 %37, i64* %36, align 8, !dbg !504
  %38 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %33, i64 -1, i32 1, !dbg !504
  %39 = load i32, i32* %38, align 8, !dbg !504, !tbaa !433
  br label %40, !dbg !505

; <label>:40:                                     ; preds = %25, %28, %31
  %41 = phi i32 [ %39, %31 ], [ 4, %28 ], [ 4, %25 ]
  %42 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %24, i64 0, i32 1, !dbg !506
  store i32 %41, i32* %42, align 8, !dbg !506, !tbaa !433
  br label %43, !dbg !507

; <label>:43:                                     ; preds = %40, %17
  %44 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %24, i64 1, !dbg !507
  %45 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !508
  store %struct.lua_TValue* %44, %struct.lua_TValue** %45, align 8, !dbg !509, !tbaa !426
  %46 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 16, !dbg !510
  %47 = load i16, i16* %46, align 2, !dbg !510, !tbaa !511
  %48 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 15, !dbg !512
  store i16 %47, i16* %48, align 8, !dbg !513, !tbaa !514
  %49 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 18, !dbg !515
  store i8 1, i8* %49, align 1, !dbg !516, !tbaa !517
  %50 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 14, !dbg !528
  %51 = load i32, i32* %50, align 4, !dbg !528, !tbaa !529
  %52 = icmp sgt i32 %51, 20000, !dbg !530
  br i1 %52, label %53, label %76, !dbg !531

; <label>:53:                                     ; preds = %43
  %54 = bitcast %struct.CallInfo** %20 to i64*, !dbg !532
  %55 = load i64, i64* %54, align 8, !dbg !532, !tbaa !486
  %56 = bitcast %struct.CallInfo** %18 to i64*, !dbg !532
  %57 = load i64, i64* %56, align 8, !dbg !532, !tbaa !483
  %58 = sub i64 %55, %57, !dbg !532
  %59 = sdiv exact i64 %58, 40, !dbg !532
  %60 = trunc i64 %59 to i32, !dbg !532
  %61 = icmp slt i32 %60, 19999, !dbg !534
  br i1 %61, label %62, label %76, !dbg !536

; <label>:62:                                     ; preds = %53
  %63 = inttoptr i64 %57 to i8*, !dbg !545
  %64 = sext i32 %51 to i64, !dbg !545
  %65 = mul nsw i64 %64, 40, !dbg !545
  %66 = tail call i8* @luaM_realloc_(%struct.lua_State* nonnull %0, i8* %63, i64 %65, i64 800000) #6, !dbg !545
  %67 = bitcast %struct.CallInfo** %18 to i8**, !dbg !545
  store i8* %66, i8** %67, align 8, !dbg !545, !tbaa !483
  store i32 20000, i32* %50, align 4, !dbg !547, !tbaa !529
  %68 = load i64, i64* %54, align 8, !dbg !548, !tbaa !486
  %69 = sub i64 %68, %57, !dbg !549
  %70 = sdiv exact i64 %69, 40, !dbg !549
  %71 = bitcast i8* %66 to %struct.CallInfo*, !dbg !550
  %72 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %71, i64 %70, !dbg !551
  store %struct.CallInfo* %72, %struct.CallInfo** %20, align 8, !dbg !552, !tbaa !486
  %73 = getelementptr inbounds i8, i8* %66, i64 799960, !dbg !553
  %74 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 11, !dbg !554
  %75 = bitcast %struct.CallInfo** %74 to i8**, !dbg !555
  store i8* %73, i8** %75, align 8, !dbg !555, !tbaa !556
  br label %76, !dbg !557

; <label>:76:                                     ; preds = %43, %53, %62
  %77 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 27, !dbg !558
  store i64 0, i64* %77, align 8, !dbg !559, !tbaa !560
  store %struct.lua_longjmp* null, %struct.lua_longjmp** %3, align 8, !dbg !561, !tbaa !450
  %78 = load %struct.global_State*, %struct.global_State** %12, align 8, !dbg !562, !tbaa !466
  %79 = getelementptr inbounds %struct.global_State, %struct.global_State* %78, i64 0, i32 19, !dbg !563
  %80 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %79, align 8, !dbg !563, !tbaa !468
  %81 = tail call i32 %80(%struct.lua_State* nonnull %0) #6, !dbg !562
  br label %82, !dbg !564

; <label>:82:                                     ; preds = %9, %76
  tail call void @exit(i32 1) #7, !dbg !565
  unreachable, !dbg !565
}

; Function Attrs: noredzone noreturn
declare dso_local void @longjmp(i64*, i32) local_unnamed_addr #4

; Function Attrs: noredzone noreturn
declare dso_local void @exit(i32) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define hidden i32 @luaD_rawrunprotected(%struct.lua_State*, void (%struct.lua_State*, i8*)* nocapture, i8*) local_unnamed_addr #0 !dbg !566 {
  %4 = alloca %struct.lua_longjmp, align 8
  %5 = bitcast %struct.lua_longjmp* %4 to i8*, !dbg !582
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %5) #8, !dbg !582
  %6 = getelementptr inbounds %struct.lua_longjmp, %struct.lua_longjmp* %4, i64 0, i32 2, !dbg !583
  store volatile i32 0, i32* %6, align 8, !dbg !584, !tbaa !456
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 26, !dbg !585
  %8 = bitcast %struct.lua_longjmp** %7 to i64*, !dbg !585
  %9 = load i64, i64* %8, align 8, !dbg !585, !tbaa !450
  %10 = bitcast %struct.lua_longjmp* %4 to i64*, !dbg !586
  store i64 %9, i64* %10, align 8, !dbg !586, !tbaa !587
  store %struct.lua_longjmp* %4, %struct.lua_longjmp** %7, align 8, !dbg !588, !tbaa !450
  %11 = getelementptr inbounds %struct.lua_longjmp, %struct.lua_longjmp* %4, i64 0, i32 1, i64 0, !dbg !589
  %12 = call i32 @setjmp(i64* nonnull %11) #6, !dbg !589
  %13 = icmp eq i32 %12, 0, !dbg !589
  br i1 %13, label %14, label %15, !dbg !591

; <label>:14:                                     ; preds = %3
  call void %1(%struct.lua_State* nonnull %0, i8* %2) #6, !dbg !592
  br label %15, !dbg !592

; <label>:15:                                     ; preds = %14, %3
  %16 = load i64, i64* %10, align 8, !dbg !594, !tbaa !587
  store i64 %16, i64* %8, align 8, !dbg !595, !tbaa !450
  %17 = load volatile i32, i32* %6, align 8, !dbg !596, !tbaa !456
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %5) #8, !dbg !597
  ret i32 %17, !dbg !598
}

; Function Attrs: noredzone
declare dso_local i32 @setjmp(i64*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define hidden void @luaD_reallocstack(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !599 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 10, !dbg !607
  %4 = load %struct.lua_TValue*, %struct.lua_TValue** %3, align 8, !dbg !607, !tbaa !608
  %5 = add nsw i32 %1, 6, !dbg !610
  %6 = icmp sgt i32 %1, -8, !dbg !612
  br i1 %6, label %7, label %16, !dbg !612

; <label>:7:                                      ; preds = %2
  %8 = bitcast %struct.lua_TValue* %4 to i8*, !dbg !612
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 13, !dbg !612
  %10 = load i32, i32* %9, align 8, !dbg !612, !tbaa !613
  %11 = sext i32 %10 to i64, !dbg !612
  %12 = shl nsw i64 %11, 4, !dbg !612
  %13 = sext i32 %5 to i64, !dbg !612
  %14 = shl nsw i64 %13, 4, !dbg !612
  %15 = tail call i8* @luaM_realloc_(%struct.lua_State* nonnull %0, i8* %8, i64 %12, i64 %14) #6, !dbg !612
  br label %19, !dbg !612

; <label>:16:                                     ; preds = %2
  %17 = tail call i8* @luaM_toobig(%struct.lua_State* nonnull %0) #6, !dbg !612
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 13, !dbg !614
  br label %19, !dbg !612

; <label>:19:                                     ; preds = %16, %7
  %20 = phi i32* [ %18, %16 ], [ %9, %7 ], !dbg !614
  %21 = phi i8* [ %17, %16 ], [ %15, %7 ], !dbg !612
  %22 = bitcast %struct.lua_TValue** %3 to i8**, !dbg !612
  store i8* %21, i8** %22, align 8, !dbg !612, !tbaa !608
  store i32 %5, i32* %20, align 8, !dbg !615, !tbaa !613
  %23 = bitcast i8* %21 to %struct.lua_TValue*, !dbg !616
  %24 = sext i32 %1 to i64, !dbg !617
  %25 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %23, i64 %24, !dbg !617
  %26 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 9, !dbg !618
  store %struct.lua_TValue* %25, %struct.lua_TValue** %26, align 8, !dbg !619, !tbaa !620
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !632
  %28 = bitcast %struct.lua_TValue** %27 to i64*, !dbg !632
  %29 = load i64, i64* %28, align 8, !dbg !632, !tbaa !426
  %30 = ptrtoint %struct.lua_TValue* %4 to i64, !dbg !633
  %31 = sub i64 %29, %30, !dbg !633
  %32 = ashr exact i64 %31, 4, !dbg !633
  %33 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %23, i64 %32, !dbg !634
  store %struct.lua_TValue* %33, %struct.lua_TValue** %27, align 8, !dbg !635, !tbaa !426
  %34 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 24, !dbg !636
  %35 = load %union.GCObject*, %union.GCObject** %34, align 8, !dbg !639, !tbaa !419
  %36 = icmp eq %union.GCObject* %35, null, !dbg !641
  br i1 %36, label %59, label %37, !dbg !642

; <label>:37:                                     ; preds = %19
  %38 = getelementptr inbounds %union.GCObject, %union.GCObject* %35, i64 0, i32 0, i32 4, !dbg !643
  %39 = bitcast %struct.lua_TValue** %38 to i64*, !dbg !643
  %40 = load i64, i64* %39, align 8, !dbg !643, !tbaa !419
  %41 = sub i64 %40, %30, !dbg !644
  %42 = ashr exact i64 %41, 4, !dbg !644
  %43 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %23, i64 %42, !dbg !645
  store %struct.lua_TValue* %43, %struct.lua_TValue** %38, align 8, !dbg !646, !tbaa !419
  %44 = getelementptr inbounds %union.GCObject, %union.GCObject* %35, i64 0, i32 0, i32 0, !dbg !647
  %45 = load %union.GCObject*, %union.GCObject** %44, align 8, !dbg !639, !tbaa !419
  %46 = icmp eq %union.GCObject* %45, null, !dbg !641
  br i1 %46, label %59, label %47, !dbg !642, !llvm.loop !648

; <label>:47:                                     ; preds = %37, %47
  %48 = phi %union.GCObject* [ %57, %47 ], [ %45, %37 ]
  %49 = load %struct.lua_TValue*, %struct.lua_TValue** %3, align 8, !dbg !651, !tbaa !608
  %50 = getelementptr inbounds %union.GCObject, %union.GCObject* %48, i64 0, i32 0, i32 4, !dbg !643
  %51 = bitcast %struct.lua_TValue** %50 to i64*, !dbg !643
  %52 = load i64, i64* %51, align 8, !dbg !643, !tbaa !419
  %53 = sub i64 %52, %30, !dbg !644
  %54 = ashr exact i64 %53, 4, !dbg !644
  %55 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %49, i64 %54, !dbg !645
  store %struct.lua_TValue* %55, %struct.lua_TValue** %50, align 8, !dbg !646, !tbaa !419
  %56 = getelementptr inbounds %union.GCObject, %union.GCObject* %48, i64 0, i32 0, i32 0, !dbg !647
  %57 = load %union.GCObject*, %union.GCObject** %56, align 8, !dbg !639, !tbaa !419
  %58 = icmp eq %union.GCObject* %57, null, !dbg !641
  br i1 %58, label %59, label %47, !dbg !642, !llvm.loop !648

; <label>:59:                                     ; preds = %47, %37, %19
  %60 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 12, !dbg !652
  %61 = load %struct.CallInfo*, %struct.CallInfo** %60, align 8, !dbg !652, !tbaa !483
  %62 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !655
  %63 = load %struct.CallInfo*, %struct.CallInfo** %62, align 8, !dbg !655, !tbaa !486
  %64 = icmp ugt %struct.CallInfo* %61, %63, !dbg !657
  %65 = load %struct.lua_TValue*, %struct.lua_TValue** %3, align 8, !tbaa !608
  br i1 %64, label %88, label %66, !dbg !658

; <label>:66:                                     ; preds = %59, %66
  %67 = phi %struct.CallInfo* [ %86, %66 ], [ %61, %59 ]
  %68 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %67, i64 0, i32 2, !dbg !659
  %69 = bitcast %struct.lua_TValue** %68 to i64*, !dbg !659
  %70 = load i64, i64* %69, align 8, !dbg !659, !tbaa !661
  %71 = sub i64 %70, %30, !dbg !662
  %72 = ashr exact i64 %71, 4, !dbg !662
  %73 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %65, i64 %72, !dbg !663
  store %struct.lua_TValue* %73, %struct.lua_TValue** %68, align 8, !dbg !664, !tbaa !661
  %74 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %67, i64 0, i32 0, !dbg !665
  %75 = bitcast %struct.CallInfo* %67 to i64*, !dbg !665
  %76 = load i64, i64* %75, align 8, !dbg !665, !tbaa !488
  %77 = sub i64 %76, %30, !dbg !666
  %78 = ashr exact i64 %77, 4, !dbg !666
  %79 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %65, i64 %78, !dbg !667
  store %struct.lua_TValue* %79, %struct.lua_TValue** %74, align 8, !dbg !668, !tbaa !488
  %80 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %67, i64 0, i32 1, !dbg !669
  %81 = bitcast %struct.lua_TValue** %80 to i64*, !dbg !669
  %82 = load i64, i64* %81, align 8, !dbg !669, !tbaa !670
  %83 = sub i64 %82, %30, !dbg !671
  %84 = ashr exact i64 %83, 4, !dbg !671
  %85 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %65, i64 %84, !dbg !672
  store %struct.lua_TValue* %85, %struct.lua_TValue** %80, align 8, !dbg !673, !tbaa !670
  %86 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %67, i64 1, !dbg !674
  %87 = icmp ugt %struct.CallInfo* %86, %63, !dbg !657
  br i1 %87, label %88, label %66, !dbg !658, !llvm.loop !675

; <label>:88:                                     ; preds = %66, %59
  %89 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !678
  %90 = bitcast %struct.lua_TValue** %89 to i64*, !dbg !678
  %91 = load i64, i64* %90, align 8, !dbg !678, !tbaa !492
  %92 = sub i64 %91, %30, !dbg !679
  %93 = ashr exact i64 %92, 4, !dbg !679
  %94 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %65, i64 %93, !dbg !680
  store %struct.lua_TValue* %94, %struct.lua_TValue** %89, align 8, !dbg !681, !tbaa !492
  ret void, !dbg !682
}

; Function Attrs: noredzone
declare hidden i8* @luaM_realloc_(%struct.lua_State*, i8*, i64, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden i8* @luaM_toobig(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define hidden void @luaD_reallocCI(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !538 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 12, !dbg !685
  %4 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8, !dbg !685, !tbaa !483
  %5 = icmp sgt i32 %1, -2, !dbg !687
  br i1 %5, label %6, label %15, !dbg !687

; <label>:6:                                      ; preds = %2
  %7 = bitcast %struct.CallInfo* %4 to i8*, !dbg !687
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 14, !dbg !687
  %9 = load i32, i32* %8, align 4, !dbg !687, !tbaa !529
  %10 = sext i32 %9 to i64, !dbg !687
  %11 = mul nsw i64 %10, 40, !dbg !687
  %12 = sext i32 %1 to i64, !dbg !687
  %13 = mul nsw i64 %12, 40, !dbg !687
  %14 = tail call i8* @luaM_realloc_(%struct.lua_State* nonnull %0, i8* %7, i64 %11, i64 %13) #6, !dbg !687
  br label %19, !dbg !687

; <label>:15:                                     ; preds = %2
  %16 = tail call i8* @luaM_toobig(%struct.lua_State* nonnull %0) #6, !dbg !687
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 14, !dbg !688
  %18 = sext i32 %1 to i64, !dbg !689
  br label %19, !dbg !687

; <label>:19:                                     ; preds = %15, %6
  %20 = phi i64 [ %18, %15 ], [ %12, %6 ], !dbg !689
  %21 = phi i32* [ %17, %15 ], [ %8, %6 ], !dbg !688
  %22 = phi i8* [ %16, %15 ], [ %14, %6 ], !dbg !687
  %23 = bitcast %struct.CallInfo** %3 to i8**, !dbg !687
  store i8* %22, i8** %23, align 8, !dbg !687, !tbaa !483
  store i32 %1, i32* %21, align 4, !dbg !690, !tbaa !529
  %24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !691
  %25 = bitcast %struct.CallInfo** %24 to i64*, !dbg !691
  %26 = load i64, i64* %25, align 8, !dbg !691, !tbaa !486
  %27 = ptrtoint %struct.CallInfo* %4 to i64, !dbg !692
  %28 = sub i64 %26, %27, !dbg !692
  %29 = sdiv exact i64 %28, 40, !dbg !692
  %30 = bitcast i8* %22 to %struct.CallInfo*, !dbg !693
  %31 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %30, i64 %29, !dbg !694
  store %struct.CallInfo* %31, %struct.CallInfo** %24, align 8, !dbg !695, !tbaa !486
  %32 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %30, i64 %20, !dbg !689
  %33 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %32, i64 -1, !dbg !696
  %34 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 11, !dbg !697
  store %struct.CallInfo* %33, %struct.CallInfo** %34, align 8, !dbg !698, !tbaa !556
  ret void, !dbg !699
}

; Function Attrs: noredzone nounwind
define hidden void @luaD_growstack(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !700 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 13, !dbg !706
  %4 = load i32, i32* %3, align 8, !dbg !706, !tbaa !613
  %5 = icmp slt i32 %4, %1, !dbg !708
  br i1 %5, label %8, label %6, !dbg !709

; <label>:6:                                      ; preds = %2
  %7 = shl nsw i32 %4, 1, !dbg !710
  tail call void @luaD_reallocstack(%struct.lua_State* nonnull %0, i32 %7) #9, !dbg !711
  br label %10, !dbg !711

; <label>:8:                                      ; preds = %2
  %9 = add nsw i32 %4, %1, !dbg !712
  tail call void @luaD_reallocstack(%struct.lua_State* nonnull %0, i32 %9) #9, !dbg !713
  br label %10

; <label>:10:                                     ; preds = %8, %6
  ret void, !dbg !714
}

; Function Attrs: noredzone nounwind
define hidden void @luaD_callhook(%struct.lua_State*, i32, i32) local_unnamed_addr #0 !dbg !715 {
  %4 = alloca %struct.lua_Debug, align 8
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 21, !dbg !731
  %6 = load void (%struct.lua_State*, %struct.lua_Debug*)*, void (%struct.lua_State*, %struct.lua_Debug*)** %5, align 8, !dbg !731, !tbaa !732
  %7 = icmp eq void (%struct.lua_State*, %struct.lua_Debug*)* %6, null, !dbg !734
  br i1 %7, label %67, label %8, !dbg !735

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 18, !dbg !736
  %10 = load i8, i8* %9, align 1, !dbg !736, !tbaa !517
  %11 = icmp eq i8 %10, 0, !dbg !737
  br i1 %11, label %67, label %12, !dbg !738

; <label>:12:                                     ; preds = %8
  %13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !739
  %14 = bitcast %struct.lua_TValue** %13 to i64*, !dbg !739
  %15 = load i64, i64* %14, align 8, !dbg !739, !tbaa !426
  %16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 10, !dbg !739
  %17 = bitcast %struct.lua_TValue** %16 to i64*, !dbg !739
  %18 = load i64, i64* %17, align 8, !dbg !739, !tbaa !608
  %19 = sub i64 %15, %18, !dbg !739
  %20 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !741
  %21 = load %struct.CallInfo*, %struct.CallInfo** %20, align 8, !dbg !741, !tbaa !486
  %22 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %21, i64 0, i32 2, !dbg !741
  %23 = bitcast %struct.lua_TValue** %22 to i64*, !dbg !741
  %24 = load i64, i64* %23, align 8, !dbg !741, !tbaa !661
  %25 = sub i64 %24, %18, !dbg !741
  %26 = bitcast %struct.lua_Debug* %4 to i8*, !dbg !743
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %26) #8, !dbg !743
  %27 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %4, i64 0, i32 0, !dbg !744
  store i32 %1, i32* %27, align 8, !dbg !745, !tbaa !746
  %28 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %4, i64 0, i32 5, !dbg !748
  store i32 %2, i32* %28, align 8, !dbg !749, !tbaa !750
  %29 = icmp eq i32 %1, 4, !dbg !751
  br i1 %29, label %38, label %30, !dbg !753

; <label>:30:                                     ; preds = %12
  %31 = ptrtoint %struct.CallInfo* %21 to i64, !dbg !753
  %32 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 12, !dbg !754
  %33 = bitcast %struct.CallInfo** %32 to i64*, !dbg !754
  %34 = load i64, i64* %33, align 8, !dbg !754, !tbaa !483
  %35 = sub i64 %31, %34, !dbg !754
  %36 = sdiv exact i64 %35, 40, !dbg !754
  %37 = trunc i64 %36 to i32, !dbg !754
  br label %38

; <label>:38:                                     ; preds = %12, %30
  %39 = phi i32 [ %37, %30 ], [ 0, %12 ]
  %40 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %4, i64 0, i32 10, !dbg !755
  store i32 %39, i32* %40, align 4, !dbg !756
  %41 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 9, !dbg !757
  %42 = bitcast %struct.lua_TValue** %41 to i64*, !dbg !757
  %43 = load i64, i64* %42, align 8, !dbg !757, !tbaa !620
  %44 = sub i64 %43, %15, !dbg !757
  %45 = icmp slt i64 %44, 321, !dbg !757
  br i1 %45, label %46, label %54, !dbg !759

; <label>:46:                                     ; preds = %38
  %47 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 13, !dbg !763
  %48 = load i32, i32* %47, align 8, !dbg !763, !tbaa !613
  %49 = icmp slt i32 %48, 20, !dbg !764
  br i1 %49, label %52, label %50, !dbg !765

; <label>:50:                                     ; preds = %46
  %51 = shl nsw i32 %48, 1, !dbg !766
  tail call void @luaD_reallocstack(%struct.lua_State* nonnull %0, i32 %51) #6, !dbg !767
  br label %54, !dbg !767

; <label>:52:                                     ; preds = %46
  %53 = add nsw i32 %48, 20, !dbg !768
  tail call void @luaD_reallocstack(%struct.lua_State* nonnull %0, i32 %53) #6, !dbg !769
  br label %54

; <label>:54:                                     ; preds = %52, %50, %38
  %55 = load %struct.lua_TValue*, %struct.lua_TValue** %13, align 8, !dbg !770, !tbaa !426
  %56 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %55, i64 20, !dbg !771
  %57 = load %struct.CallInfo*, %struct.CallInfo** %20, align 8, !dbg !772, !tbaa !486
  %58 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %57, i64 0, i32 2, !dbg !773
  store %struct.lua_TValue* %56, %struct.lua_TValue** %58, align 8, !dbg !774, !tbaa !661
  store i8 0, i8* %9, align 1, !dbg !775, !tbaa !517
  call void %6(%struct.lua_State* nonnull %0, %struct.lua_Debug* nonnull %4) #6, !dbg !777
  store i8 1, i8* %9, align 1, !dbg !778, !tbaa !517
  %59 = bitcast %struct.lua_TValue** %16 to i8**, !dbg !779
  %60 = load i8*, i8** %59, align 8, !dbg !779, !tbaa !608
  %61 = getelementptr inbounds i8, i8* %60, i64 %25, !dbg !779
  %62 = load %struct.CallInfo*, %struct.CallInfo** %20, align 8, !dbg !780, !tbaa !486
  %63 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %62, i64 0, i32 2, !dbg !781
  %64 = bitcast %struct.lua_TValue** %63 to i8**, !dbg !782
  store i8* %61, i8** %64, align 8, !dbg !782, !tbaa !661
  %65 = getelementptr inbounds i8, i8* %60, i64 %19, !dbg !783
  %66 = bitcast %struct.lua_TValue** %13 to i8**, !dbg !784
  store i8* %65, i8** %66, align 8, !dbg !784, !tbaa !426
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %26) #8, !dbg !785
  br label %67, !dbg !786

; <label>:67:                                     ; preds = %8, %3, %54
  ret void, !dbg !787
}

; Function Attrs: noredzone nounwind
define hidden i32 @luaD_precall(%struct.lua_State*, %struct.lua_TValue*, i32) local_unnamed_addr #0 !dbg !788 {
  %4 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1, i64 0, i32 1, !dbg !815
  %5 = load i32, i32* %4, align 8, !dbg !815, !tbaa !433
  %6 = icmp eq i32 %5, 6, !dbg !815
  br i1 %6, label %7, label %10, !dbg !817

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 10, !dbg !818
  %9 = bitcast %struct.lua_TValue** %8 to i64*, !dbg !818
  br label %68, !dbg !817

; <label>:10:                                     ; preds = %3
  %11 = tail call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* %0, %struct.lua_TValue* nonnull %1, i32 16) #6, !dbg !839
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 10, !dbg !841
  %13 = bitcast %struct.lua_TValue** %12 to i64*, !dbg !841
  %14 = load i64, i64* %13, align 8, !dbg !841, !tbaa !608
  %15 = ptrtoint %struct.lua_TValue* %1 to i64, !dbg !841
  %16 = sub i64 %15, %14, !dbg !841
  %17 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %11, i64 0, i32 1, !dbg !843
  %18 = load i32, i32* %17, align 8, !dbg !843, !tbaa !433
  %19 = icmp eq i32 %18, 6, !dbg !843
  br i1 %19, label %21, label %20, !dbg !845

; <label>:20:                                     ; preds = %10
  tail call void @luaG_typeerror(%struct.lua_State* nonnull %0, %struct.lua_TValue* nonnull %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !846
  br label %21, !dbg !846

; <label>:21:                                     ; preds = %20, %10
  %22 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !847
  %23 = load %struct.lua_TValue*, %struct.lua_TValue** %22, align 8, !dbg !847, !tbaa !426
  %24 = icmp ugt %struct.lua_TValue* %23, %1, !dbg !849
  br i1 %24, label %27, label %25, !dbg !850

; <label>:25:                                     ; preds = %21
  %26 = ptrtoint %struct.lua_TValue* %23 to i64, !dbg !850
  br label %40, !dbg !850

; <label>:27:                                     ; preds = %21, %27
  %28 = phi %struct.lua_TValue* [ %29, %27 ], [ %23, %21 ]
  %29 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %28, i64 -1, !dbg !851
  %30 = bitcast %struct.lua_TValue* %29 to i64*, !dbg !851
  %31 = bitcast %struct.lua_TValue* %28 to i64*, !dbg !851
  %32 = load i64, i64* %30, align 8, !dbg !851
  store i64 %32, i64* %31, align 8, !dbg !851
  %33 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %28, i64 -1, i32 1, !dbg !851
  %34 = load i32, i32* %33, align 8, !dbg !851, !tbaa !433
  %35 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %28, i64 0, i32 1, !dbg !851
  store i32 %34, i32* %35, align 8, !dbg !851, !tbaa !433
  %36 = icmp ugt %struct.lua_TValue* %29, %1, !dbg !849
  br i1 %36, label %27, label %37, !dbg !850, !llvm.loop !852

; <label>:37:                                     ; preds = %27
  %38 = bitcast %struct.lua_TValue** %22 to i64*
  %39 = load i64, i64* %38, align 8, !dbg !855, !tbaa !426
  br label %40, !dbg !855

; <label>:40:                                     ; preds = %37, %25
  %41 = phi i64 [ %39, %37 ], [ %26, %25 ], !dbg !855
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 9, !dbg !855
  %43 = bitcast %struct.lua_TValue** %42 to i64*, !dbg !855
  %44 = load i64, i64* %43, align 8, !dbg !855, !tbaa !620
  %45 = sub i64 %44, %41, !dbg !855
  %46 = icmp slt i64 %45, 17, !dbg !855
  br i1 %46, label %47, label %55, !dbg !858

; <label>:47:                                     ; preds = %40
  %48 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 13, !dbg !862
  %49 = load i32, i32* %48, align 8, !dbg !862, !tbaa !613
  %50 = icmp slt i32 %49, 1, !dbg !863
  br i1 %50, label %53, label %51, !dbg !864

; <label>:51:                                     ; preds = %47
  %52 = shl nsw i32 %49, 1, !dbg !865
  tail call void @luaD_reallocstack(%struct.lua_State* nonnull %0, i32 %52) #6, !dbg !866
  br label %55, !dbg !866

; <label>:53:                                     ; preds = %47
  %54 = add nsw i32 %49, 1, !dbg !867
  tail call void @luaD_reallocstack(%struct.lua_State* nonnull %0, i32 %54) #6, !dbg !868
  br label %55

; <label>:55:                                     ; preds = %40, %51, %53
  %56 = load %struct.lua_TValue*, %struct.lua_TValue** %22, align 8, !dbg !858, !tbaa !426
  %57 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %56, i64 1, !dbg !858
  store %struct.lua_TValue* %57, %struct.lua_TValue** %22, align 8, !dbg !858, !tbaa !426
  %58 = bitcast %struct.lua_TValue** %12 to i8**, !dbg !869
  %59 = load i8*, i8** %58, align 8, !dbg !869, !tbaa !608
  %60 = getelementptr inbounds i8, i8* %59, i64 %16, !dbg !869
  %61 = bitcast i8* %60 to %struct.lua_TValue*, !dbg !869
  %62 = bitcast %struct.lua_TValue* %11 to i64*, !dbg !870
  %63 = bitcast i8* %60 to i64*, !dbg !870
  %64 = load i64, i64* %62, align 8, !dbg !870
  store i64 %64, i64* %63, align 8, !dbg !870
  %65 = load i32, i32* %17, align 8, !dbg !870, !tbaa !433
  %66 = getelementptr inbounds i8, i8* %60, i64 8, !dbg !870
  %67 = bitcast i8* %66 to i32*, !dbg !870
  store i32 %65, i32* %67, align 8, !dbg !870, !tbaa !433
  br label %68, !dbg !871

; <label>:68:                                     ; preds = %7, %55
  %69 = phi i64* [ %9, %7 ], [ %13, %55 ], !dbg !818
  %70 = phi %struct.lua_TValue** [ %8, %7 ], [ %12, %55 ], !dbg !818
  %71 = phi %struct.lua_TValue* [ %1, %7 ], [ %61, %55 ]
  %72 = load i64, i64* %69, align 8, !dbg !818, !tbaa !608
  %73 = ptrtoint %struct.lua_TValue* %71 to i64, !dbg !818
  %74 = sub i64 %73, %72, !dbg !818
  %75 = bitcast %struct.lua_TValue* %71 to %struct.LClosure**, !dbg !873
  %76 = load %struct.LClosure*, %struct.LClosure** %75, align 8, !dbg !873, !tbaa !419
  %77 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8, !dbg !875
  %78 = bitcast i32** %77 to i64*, !dbg !875
  %79 = load i64, i64* %78, align 8, !dbg !875, !tbaa !876
  %80 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !877
  %81 = load %struct.CallInfo*, %struct.CallInfo** %80, align 8, !dbg !877, !tbaa !486
  %82 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %81, i64 0, i32 3, !dbg !878
  %83 = bitcast i32** %82 to i64*, !dbg !879
  store i64 %79, i64* %83, align 8, !dbg !879, !tbaa !880
  %84 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %76, i64 0, i32 3, !dbg !881
  %85 = load i8, i8* %84, align 2, !dbg !881, !tbaa !882
  %86 = icmp eq i8 %85, 0, !dbg !884
  br i1 %86, label %87, label %419, !dbg !885

; <label>:87:                                     ; preds = %68
  %88 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %76, i64 0, i32 7, !dbg !886
  %89 = load %struct.Proto*, %struct.Proto** %88, align 8, !dbg !886, !tbaa !887
  %90 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 9, !dbg !889
  %91 = bitcast %struct.lua_TValue** %90 to i64*, !dbg !889
  %92 = load i64, i64* %91, align 8, !dbg !889, !tbaa !620
  %93 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !889
  %94 = bitcast %struct.lua_TValue** %93 to i64*, !dbg !889
  %95 = load i64, i64* %94, align 8, !dbg !889, !tbaa !426
  %96 = sub i64 %92, %95, !dbg !889
  %97 = getelementptr inbounds %struct.Proto, %struct.Proto* %89, i64 0, i32 22, !dbg !889
  %98 = load i8, i8* %97, align 1, !dbg !889, !tbaa !891
  %99 = zext i8 %98 to i32, !dbg !889
  %100 = shl nuw nsw i32 %99, 4, !dbg !889
  %101 = zext i32 %100 to i64, !dbg !889
  %102 = icmp sgt i64 %96, %101, !dbg !889
  br i1 %102, label %111, label %103, !dbg !893

; <label>:103:                                    ; preds = %87
  %104 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 13, !dbg !897
  %105 = load i32, i32* %104, align 8, !dbg !897, !tbaa !613
  %106 = icmp slt i32 %105, %99, !dbg !898
  br i1 %106, label %109, label %107, !dbg !899

; <label>:107:                                    ; preds = %103
  %108 = shl nsw i32 %105, 1, !dbg !900
  tail call void @luaD_reallocstack(%struct.lua_State* nonnull %0, i32 %108) #6, !dbg !901
  br label %111, !dbg !901

; <label>:109:                                    ; preds = %103
  %110 = add nsw i32 %105, %99, !dbg !902
  tail call void @luaD_reallocstack(%struct.lua_State* nonnull %0, i32 %110) #6, !dbg !903
  br label %111

; <label>:111:                                    ; preds = %109, %107, %87
  %112 = bitcast %struct.lua_TValue** %70 to i8**, !dbg !904
  %113 = load i8*, i8** %112, align 8, !dbg !904, !tbaa !608
  %114 = getelementptr inbounds i8, i8* %113, i64 %74, !dbg !904
  %115 = bitcast i8* %114 to %struct.lua_TValue*, !dbg !904
  %116 = getelementptr inbounds %struct.Proto, %struct.Proto* %89, i64 0, i32 21, !dbg !905
  %117 = load i8, i8* %116, align 2, !dbg !905, !tbaa !906
  %118 = icmp eq i8 %117, 0, !dbg !907
  br i1 %118, label %119, label %129, !dbg !908

; <label>:119:                                    ; preds = %111
  %120 = getelementptr inbounds i8, i8* %114, i64 16, !dbg !909
  %121 = bitcast i8* %120 to %struct.lua_TValue*, !dbg !909
  %122 = load %struct.lua_TValue*, %struct.lua_TValue** %93, align 8, !dbg !912, !tbaa !426
  %123 = getelementptr inbounds %struct.Proto, %struct.Proto* %89, i64 0, i32 20, !dbg !914
  %124 = load i8, i8* %123, align 1, !dbg !914, !tbaa !915
  %125 = zext i8 %124 to i64, !dbg !916
  %126 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %121, i64 %125, !dbg !916
  %127 = icmp ugt %struct.lua_TValue* %122, %126, !dbg !917
  br i1 %127, label %128, label %316, !dbg !918

; <label>:128:                                    ; preds = %119
  store %struct.lua_TValue* %126, %struct.lua_TValue** %93, align 8, !dbg !919, !tbaa !426
  br label %316, !dbg !920

; <label>:129:                                    ; preds = %111
  %130 = load i64, i64* %94, align 8, !dbg !921, !tbaa !426
  %131 = ptrtoint i8* %114 to i64, !dbg !921
  %132 = sub i64 %130, %131, !dbg !921
  %133 = lshr exact i64 %132, 4, !dbg !921
  %134 = trunc i64 %133 to i32, !dbg !921
  %135 = add nsw i32 %134, -1, !dbg !922
  %136 = getelementptr inbounds %struct.Proto, %struct.Proto* %89, i64 0, i32 20, !dbg !962
  %137 = load i8, i8* %136, align 1, !dbg !962, !tbaa !915
  %138 = zext i8 %137 to i32, !dbg !963
  %139 = icmp slt i32 %138, %134, !dbg !966
  %140 = inttoptr i64 %130 to %struct.lua_TValue*, !dbg !969
  br i1 %139, label %179, label %141, !dbg !969

; <label>:141:                                    ; preds = %129
  %142 = sub i32 %138, %134, !dbg !969
  %143 = zext i32 %142 to i64, !dbg !969
  %144 = add nuw nsw i32 %138, 1, !dbg !969
  %145 = sub i32 %144, %134, !dbg !969
  %146 = and i32 %145, 7, !dbg !969
  %147 = icmp eq i32 %146, 0, !dbg !969
  br i1 %147, label %157, label %148, !dbg !969

; <label>:148:                                    ; preds = %141, %148
  %149 = phi %struct.lua_TValue* [ %152, %148 ], [ %140, %141 ], !dbg !961
  %150 = phi i32 [ %154, %148 ], [ %135, %141 ]
  %151 = phi i32 [ %155, %148 ], [ %146, %141 ]
  %152 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %149, i64 1, !dbg !970
  %153 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %149, i64 0, i32 1, !dbg !970
  store i32 0, i32* %153, align 8, !dbg !970, !tbaa !433
  %154 = add nsw i32 %150, 1, !dbg !971
  %155 = add i32 %151, -1, !dbg !969
  %156 = icmp eq i32 %155, 0, !dbg !969
  br i1 %156, label %157, label %148, !dbg !969, !llvm.loop !972

; <label>:157:                                    ; preds = %148, %141
  %158 = phi %struct.lua_TValue* [ %140, %141 ], [ %152, %148 ]
  %159 = phi i32 [ %135, %141 ], [ %154, %148 ]
  %160 = icmp ult i32 %142, 7, !dbg !969
  br i1 %160, label %175, label %161, !dbg !969

; <label>:161:                                    ; preds = %157, %161
  %162 = phi %struct.lua_TValue* [ %171, %161 ], [ %158, %157 ], !dbg !961
  %163 = phi i32 [ %173, %161 ], [ %159, %157 ]
  %164 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %162, i64 0, i32 1, !dbg !970
  store i32 0, i32* %164, align 8, !dbg !970, !tbaa !433
  %165 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %162, i64 1, i32 1, !dbg !970
  store i32 0, i32* %165, align 8, !dbg !970, !tbaa !433
  %166 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %162, i64 2, i32 1, !dbg !970
  store i32 0, i32* %166, align 8, !dbg !970, !tbaa !433
  %167 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %162, i64 3, i32 1, !dbg !970
  store i32 0, i32* %167, align 8, !dbg !970, !tbaa !433
  %168 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %162, i64 4, i32 1, !dbg !970
  store i32 0, i32* %168, align 8, !dbg !970, !tbaa !433
  %169 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %162, i64 5, i32 1, !dbg !970
  store i32 0, i32* %169, align 8, !dbg !970, !tbaa !433
  %170 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %162, i64 6, i32 1, !dbg !970
  store i32 0, i32* %170, align 8, !dbg !970, !tbaa !433
  %171 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %162, i64 8, !dbg !970
  %172 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %162, i64 7, i32 1, !dbg !970
  store i32 0, i32* %172, align 8, !dbg !970, !tbaa !433
  %173 = add nsw i32 %163, 8, !dbg !971
  %174 = icmp eq i32 %173, %138, !dbg !966
  br i1 %174, label %175, label %161, !dbg !969, !llvm.loop !974

; <label>:175:                                    ; preds = %161, %157
  %176 = add nuw nsw i64 %143, 1, !dbg !969
  %177 = getelementptr %struct.lua_TValue, %struct.lua_TValue* %140, i64 %176, !dbg !969
  store %struct.lua_TValue* %177, %struct.lua_TValue** %93, align 8, !dbg !970, !tbaa !426
  %178 = ptrtoint %struct.lua_TValue* %177 to i64, !dbg !969
  br label %179, !dbg !969

; <label>:179:                                    ; preds = %129, %175
  %180 = phi %struct.lua_TValue* [ %177, %175 ], [ %140, %129 ]
  %181 = phi i64 [ %178, %175 ], [ %130, %129 ]
  %182 = phi i32 [ %138, %175 ], [ %135, %129 ]
  %183 = and i8 %117, 4, !dbg !977
  %184 = icmp eq i8 %183, 0, !dbg !977
  br i1 %184, label %242, label %185, !dbg !978

; <label>:185:                                    ; preds = %179
  %186 = sub i32 %182, %138, !dbg !979
  %187 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !981
  %188 = load %struct.global_State*, %struct.global_State** %187, align 8, !dbg !981, !tbaa !466
  %189 = getelementptr inbounds %struct.global_State, %struct.global_State* %188, i64 0, i32 14, !dbg !981
  %190 = load i64, i64* %189, align 8, !dbg !981, !tbaa !984
  %191 = getelementptr inbounds %struct.global_State, %struct.global_State* %188, i64 0, i32 13, !dbg !981
  %192 = load i64, i64* %191, align 8, !dbg !981, !tbaa !985
  %193 = icmp ult i64 %190, %192, !dbg !981
  br i1 %193, label %196, label %194, !dbg !986

; <label>:194:                                    ; preds = %185
  tail call void @luaC_step(%struct.lua_State* nonnull %0) #6, !dbg !981
  %195 = load i64, i64* %94, align 8, !dbg !987, !tbaa !426
  br label %196, !dbg !981

; <label>:196:                                    ; preds = %194, %185
  %197 = phi i64 [ %195, %194 ], [ %181, %185 ], !dbg !987
  %198 = load i64, i64* %91, align 8, !dbg !987, !tbaa !620
  %199 = sub i64 %198, %197, !dbg !987
  %200 = load i8, i8* %97, align 1, !dbg !987, !tbaa !891
  %201 = zext i8 %200 to i32, !dbg !987
  %202 = shl nuw nsw i32 %201, 4, !dbg !987
  %203 = zext i32 %202 to i64, !dbg !987
  %204 = icmp sgt i64 %199, %203, !dbg !987
  br i1 %204, label %213, label %205, !dbg !989

; <label>:205:                                    ; preds = %196
  %206 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 13, !dbg !993
  %207 = load i32, i32* %206, align 8, !dbg !993, !tbaa !613
  %208 = icmp slt i32 %207, %201, !dbg !994
  br i1 %208, label %211, label %209, !dbg !995

; <label>:209:                                    ; preds = %205
  %210 = shl nsw i32 %207, 1, !dbg !996
  tail call void @luaD_reallocstack(%struct.lua_State* nonnull %0, i32 %210) #6, !dbg !997
  br label %213, !dbg !997

; <label>:211:                                    ; preds = %205
  %212 = add nsw i32 %207, %201, !dbg !998
  tail call void @luaD_reallocstack(%struct.lua_State* nonnull %0, i32 %212) #6, !dbg !999
  br label %213

; <label>:213:                                    ; preds = %211, %209, %196
  %214 = tail call %struct.Table* @luaH_new(%struct.lua_State* nonnull %0, i32 %186, i32 1) #6, !dbg !1000
  %215 = icmp sgt i32 %186, 0, !dbg !1002
  br i1 %215, label %216, label %235, !dbg !1003

; <label>:216:                                    ; preds = %213
  %217 = sext i32 %186 to i64
  %218 = sub nsw i64 0, %217
  %219 = zext i32 %186 to i64
  br label %220, !dbg !1003

; <label>:220:                                    ; preds = %220, %216
  %221 = phi i64 [ 0, %216 ], [ %225, %220 ]
  %222 = load %struct.lua_TValue*, %struct.lua_TValue** %93, align 8, !dbg !1004, !tbaa !426
  %223 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %222, i64 %218, !dbg !1004
  %224 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i64 %221, !dbg !1004
  %225 = add nuw nsw i64 %221, 1, !dbg !1004
  %226 = trunc i64 %225 to i32, !dbg !1004
  %227 = tail call %struct.lua_TValue* @luaH_setnum(%struct.lua_State* nonnull %0, %struct.Table* %214, i32 %226) #6, !dbg !1004
  %228 = bitcast %struct.lua_TValue* %224 to i64*, !dbg !1004
  %229 = bitcast %struct.lua_TValue* %227 to i64*, !dbg !1004
  %230 = load i64, i64* %228, align 8, !dbg !1004
  store i64 %230, i64* %229, align 8, !dbg !1004
  %231 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %224, i64 0, i32 1, !dbg !1004
  %232 = load i32, i32* %231, align 8, !dbg !1004, !tbaa !433
  %233 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %227, i64 0, i32 1, !dbg !1004
  store i32 %232, i32* %233, align 8, !dbg !1004, !tbaa !433
  %234 = icmp eq i64 %225, %219, !dbg !1002
  br i1 %234, label %235, label %220, !dbg !1003, !llvm.loop !1005

; <label>:235:                                    ; preds = %220, %213
  %236 = tail call %union.TString* @luaS_newlstr(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i64 1) #6, !dbg !1008
  %237 = tail call %struct.lua_TValue* @luaH_setstr(%struct.lua_State* nonnull %0, %struct.Table* %214, %union.TString* %236) #6, !dbg !1008
  %238 = sitofp i32 %186 to double, !dbg !1008
  %239 = bitcast %struct.lua_TValue* %237 to double*, !dbg !1008
  store double %238, double* %239, align 8, !dbg !1008, !tbaa !419
  %240 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %237, i64 0, i32 1, !dbg !1008
  store i32 3, i32* %240, align 8, !dbg !1008, !tbaa !433
  %241 = load %struct.lua_TValue*, %struct.lua_TValue** %93, align 8, !dbg !1009, !tbaa !426
  br label %242, !dbg !1010

; <label>:242:                                    ; preds = %179, %235
  %243 = phi %struct.lua_TValue* [ %241, %235 ], [ %180, %179 ], !dbg !1009
  %244 = phi %struct.Table* [ %214, %235 ], [ null, %179 ], !dbg !1011
  %245 = sext i32 %182 to i64, !dbg !1012
  %246 = sub nsw i64 0, %245, !dbg !1012
  %247 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %243, i64 %246, !dbg !1012
  %248 = icmp eq i8 %137, 0, !dbg !1015
  br i1 %248, label %305, label %249, !dbg !1016

; <label>:249:                                    ; preds = %242
  %250 = zext i8 %137 to i64
  %251 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %243, i64 1, !dbg !1017
  store %struct.lua_TValue* %251, %struct.lua_TValue** %93, align 8, !dbg !1017, !tbaa !426
  %252 = bitcast %struct.lua_TValue* %247 to i64*, !dbg !1017
  %253 = bitcast %struct.lua_TValue* %243 to i64*, !dbg !1017
  %254 = load i64, i64* %252, align 8, !dbg !1017
  store i64 %254, i64* %253, align 8, !dbg !1017
  %255 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %243, i64 %246, i32 1, !dbg !1017
  %256 = load i32, i32* %255, align 8, !dbg !1017, !tbaa !433
  %257 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %243, i64 0, i32 1, !dbg !1017
  store i32 %256, i32* %257, align 8, !dbg !1017, !tbaa !433
  store i32 0, i32* %255, align 8, !dbg !1018, !tbaa !433
  %258 = icmp eq i8 %137, 1, !dbg !1015
  br i1 %258, label %305, label %259, !dbg !1016, !llvm.loop !1019

; <label>:259:                                    ; preds = %249
  %260 = and i8 %137, 1, !dbg !1017
  %261 = xor i8 %260, 1, !dbg !1017
  %262 = icmp eq i8 %137, 2, !dbg !1017
  br i1 %262, label %292, label %263, !dbg !1017

; <label>:263:                                    ; preds = %259
  %264 = zext i8 %261 to i64, !dbg !1017
  %265 = xor i64 %264, -1, !dbg !1017
  %266 = add nsw i64 %265, %250, !dbg !1017
  br label %267, !dbg !1017

; <label>:267:                                    ; preds = %267, %263
  %268 = phi i64 [ 1, %263 ], [ %289, %267 ]
  %269 = phi i64 [ %266, %263 ], [ %290, %267 ]
  %270 = load %struct.lua_TValue*, %struct.lua_TValue** %93, align 8, !dbg !1017, !tbaa !426
  %271 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %247, i64 %268, !dbg !1017
  %272 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %270, i64 1, !dbg !1017
  store %struct.lua_TValue* %272, %struct.lua_TValue** %93, align 8, !dbg !1017, !tbaa !426
  %273 = bitcast %struct.lua_TValue* %271 to i64*, !dbg !1017
  %274 = bitcast %struct.lua_TValue* %270 to i64*, !dbg !1017
  %275 = load i64, i64* %273, align 8, !dbg !1017
  store i64 %275, i64* %274, align 8, !dbg !1017
  %276 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %271, i64 0, i32 1, !dbg !1017
  %277 = load i32, i32* %276, align 8, !dbg !1017, !tbaa !433
  %278 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %270, i64 0, i32 1, !dbg !1017
  store i32 %277, i32* %278, align 8, !dbg !1017, !tbaa !433
  store i32 0, i32* %276, align 8, !dbg !1018, !tbaa !433
  %279 = add nuw nsw i64 %268, 1, !dbg !1022
  %280 = load %struct.lua_TValue*, %struct.lua_TValue** %93, align 8, !dbg !1017, !tbaa !426
  %281 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %247, i64 %279, !dbg !1017
  %282 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %280, i64 1, !dbg !1017
  store %struct.lua_TValue* %282, %struct.lua_TValue** %93, align 8, !dbg !1017, !tbaa !426
  %283 = bitcast %struct.lua_TValue* %281 to i64*, !dbg !1017
  %284 = bitcast %struct.lua_TValue* %280 to i64*, !dbg !1017
  %285 = load i64, i64* %283, align 8, !dbg !1017
  store i64 %285, i64* %284, align 8, !dbg !1017
  %286 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %281, i64 0, i32 1, !dbg !1017
  %287 = load i32, i32* %286, align 8, !dbg !1017, !tbaa !433
  %288 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %280, i64 0, i32 1, !dbg !1017
  store i32 %287, i32* %288, align 8, !dbg !1017, !tbaa !433
  store i32 0, i32* %286, align 8, !dbg !1018, !tbaa !433
  %289 = add nuw nsw i64 %268, 2, !dbg !1022
  %290 = add i64 %269, -2, !dbg !1016
  %291 = icmp eq i64 %290, 0, !dbg !1016
  br i1 %291, label %292, label %267, !dbg !1016, !llvm.loop !1019

; <label>:292:                                    ; preds = %267, %259
  %293 = phi i64 [ 1, %259 ], [ %289, %267 ]
  %294 = icmp eq i8 %261, 0, !dbg !1016
  br i1 %294, label %305, label %295, !dbg !1016

; <label>:295:                                    ; preds = %292
  %296 = load %struct.lua_TValue*, %struct.lua_TValue** %93, align 8, !dbg !1017, !tbaa !426
  %297 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %247, i64 %293, !dbg !1017
  %298 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %296, i64 1, !dbg !1017
  store %struct.lua_TValue* %298, %struct.lua_TValue** %93, align 8, !dbg !1017, !tbaa !426
  %299 = bitcast %struct.lua_TValue* %297 to i64*, !dbg !1017
  %300 = bitcast %struct.lua_TValue* %296 to i64*, !dbg !1017
  %301 = load i64, i64* %299, align 8, !dbg !1017
  store i64 %301, i64* %300, align 8, !dbg !1017
  %302 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %297, i64 0, i32 1, !dbg !1017
  %303 = load i32, i32* %302, align 8, !dbg !1017, !tbaa !433
  %304 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %296, i64 0, i32 1, !dbg !1017
  store i32 %303, i32* %304, align 8, !dbg !1017, !tbaa !433
  store i32 0, i32* %302, align 8, !dbg !1018, !tbaa !433
  br label %305, !dbg !1023

; <label>:305:                                    ; preds = %295, %292, %249, %242
  %306 = icmp eq %struct.Table* %244, null, !dbg !1023
  br i1 %306, label %312, label %307, !dbg !1024

; <label>:307:                                    ; preds = %305
  %308 = load %struct.lua_TValue*, %struct.lua_TValue** %93, align 8, !dbg !1025, !tbaa !426
  %309 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %308, i64 1, !dbg !1025
  store %struct.lua_TValue* %309, %struct.lua_TValue** %93, align 8, !dbg !1025, !tbaa !426
  %310 = bitcast %struct.lua_TValue* %308 to %struct.Table**, !dbg !1025
  store %struct.Table* %244, %struct.Table** %310, align 8, !dbg !1025, !tbaa !419
  %311 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %308, i64 0, i32 1, !dbg !1025
  store i32 5, i32* %311, align 8, !dbg !1025, !tbaa !433
  br label %312, !dbg !1026

; <label>:312:                                    ; preds = %305, %307
  %313 = load i8*, i8** %112, align 8, !dbg !1027, !tbaa !608
  %314 = getelementptr inbounds i8, i8* %313, i64 %74, !dbg !1027
  %315 = bitcast i8* %314 to %struct.lua_TValue*, !dbg !1027
  br label %316

; <label>:316:                                    ; preds = %119, %128, %312
  %317 = phi %struct.lua_TValue* [ %243, %312 ], [ %121, %128 ], [ %121, %119 ], !dbg !1028
  %318 = phi %struct.lua_TValue* [ %315, %312 ], [ %115, %128 ], [ %115, %119 ], !dbg !1029
  %319 = load %struct.CallInfo*, %struct.CallInfo** %80, align 8, !dbg !1030, !tbaa !486
  %320 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 11, !dbg !1030
  %321 = load %struct.CallInfo*, %struct.CallInfo** %320, align 8, !dbg !1030, !tbaa !556
  %322 = icmp eq %struct.CallInfo* %319, %321, !dbg !1030
  br i1 %322, label %323, label %359, !dbg !1030

; <label>:323:                                    ; preds = %316
  %324 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 14, !dbg !1038
  %325 = load i32, i32* %324, align 4, !dbg !1038, !tbaa !529
  %326 = icmp sgt i32 %325, 20000, !dbg !1040
  br i1 %326, label %327, label %328, !dbg !1041

; <label>:327:                                    ; preds = %323
  tail call void @luaD_throw(%struct.lua_State* nonnull %0, i32 5) #6, !dbg !1042
  unreachable

; <label>:328:                                    ; preds = %323
  %329 = shl nsw i32 %325, 1, !dbg !1043
  %330 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 12, !dbg !1048
  %331 = load %struct.CallInfo*, %struct.CallInfo** %330, align 8, !dbg !1048, !tbaa !483
  %332 = icmp sgt i32 %325, -1, !dbg !1050
  br i1 %332, label %333, label %340, !dbg !1050

; <label>:333:                                    ; preds = %328
  %334 = bitcast %struct.CallInfo* %331 to i8*, !dbg !1050
  %335 = sext i32 %325 to i64, !dbg !1050
  %336 = mul nsw i64 %335, 40, !dbg !1050
  %337 = sext i32 %329 to i64, !dbg !1050
  %338 = mul nsw i64 %337, 40, !dbg !1050
  %339 = tail call i8* @luaM_realloc_(%struct.lua_State* nonnull %0, i8* %334, i64 %336, i64 %338) #6, !dbg !1050
  br label %343, !dbg !1050

; <label>:340:                                    ; preds = %328
  %341 = tail call i8* @luaM_toobig(%struct.lua_State* nonnull %0) #6, !dbg !1050
  %342 = sext i32 %329 to i64, !dbg !1051
  br label %343, !dbg !1050

; <label>:343:                                    ; preds = %333, %340
  %344 = phi i64 [ %342, %340 ], [ %337, %333 ], !dbg !1051
  %345 = phi i8* [ %341, %340 ], [ %339, %333 ], !dbg !1050
  %346 = bitcast %struct.CallInfo** %330 to i8**, !dbg !1050
  store i8* %345, i8** %346, align 8, !dbg !1050, !tbaa !483
  store i32 %329, i32* %324, align 4, !dbg !1052, !tbaa !529
  %347 = bitcast %struct.CallInfo** %80 to i64*, !dbg !1053
  %348 = load i64, i64* %347, align 8, !dbg !1053, !tbaa !486
  %349 = ptrtoint %struct.CallInfo* %331 to i64, !dbg !1054
  %350 = sub i64 %348, %349, !dbg !1054
  %351 = sdiv exact i64 %350, 40, !dbg !1054
  %352 = bitcast i8* %345 to %struct.CallInfo*, !dbg !1055
  %353 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %352, i64 %351, !dbg !1056
  store %struct.CallInfo* %353, %struct.CallInfo** %80, align 8, !dbg !1057, !tbaa !486
  %354 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %352, i64 %344, !dbg !1051
  %355 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %354, i64 -1, !dbg !1058
  store %struct.CallInfo* %355, %struct.CallInfo** %320, align 8, !dbg !1059, !tbaa !556
  %356 = icmp sgt i32 %325, 10000, !dbg !1060
  br i1 %356, label %357, label %359, !dbg !1062

; <label>:357:                                    ; preds = %343
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !1063
  %358 = load %struct.CallInfo*, %struct.CallInfo** %80, align 8, !dbg !1064, !tbaa !486
  br label %359, !dbg !1063

; <label>:359:                                    ; preds = %316, %357, %343
  %360 = phi %struct.CallInfo* [ %353, %343 ], [ %358, %357 ], [ %319, %316 ]
  %361 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %360, i64 1, !dbg !1029
  store %struct.CallInfo* %361, %struct.CallInfo** %80, align 8, !dbg !1029, !tbaa !486
  %362 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %360, i64 1, i32 1, !dbg !1066
  store %struct.lua_TValue* %318, %struct.lua_TValue** %362, align 8, !dbg !1067, !tbaa !670
  %363 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %361, i64 0, i32 0, !dbg !1068
  store %struct.lua_TValue* %317, %struct.lua_TValue** %363, align 8, !dbg !1069, !tbaa !488
  %364 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !1070
  store %struct.lua_TValue* %317, %struct.lua_TValue** %364, align 8, !dbg !1071, !tbaa !492
  %365 = load i8, i8* %97, align 1, !dbg !1072, !tbaa !891
  %366 = zext i8 %365 to i64, !dbg !1073
  %367 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %317, i64 %366, !dbg !1073
  %368 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %360, i64 1, i32 2, !dbg !1074
  store %struct.lua_TValue* %367, %struct.lua_TValue** %368, align 8, !dbg !1075, !tbaa !661
  %369 = getelementptr inbounds %struct.Proto, %struct.Proto* %89, i64 0, i32 4, !dbg !1076
  %370 = bitcast i32** %369 to i64*, !dbg !1076
  %371 = load i64, i64* %370, align 8, !dbg !1076, !tbaa !1077
  store i64 %371, i64* %78, align 8, !dbg !1078, !tbaa !876
  %372 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %360, i64 1, i32 5, !dbg !1079
  store i32 0, i32* %372, align 4, !dbg !1080, !tbaa !1081
  %373 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %360, i64 1, i32 4, !dbg !1082
  store i32 %2, i32* %373, align 8, !dbg !1083, !tbaa !1084
  %374 = load %struct.lua_TValue*, %struct.lua_TValue** %93, align 8, !dbg !1085, !tbaa !426
  %375 = icmp ult %struct.lua_TValue* %374, %367, !dbg !1088
  %376 = inttoptr i64 %371 to i32*, !dbg !1090
  br i1 %375, label %377, label %410, !dbg !1090

; <label>:377:                                    ; preds = %359
  %378 = ptrtoint %struct.lua_TValue* %374 to i64
  %379 = getelementptr %struct.lua_TValue, %struct.lua_TValue* %317, i64 %366, i32 0, i32 0, !dbg !1091
  %380 = bitcast %union.GCObject** %379 to i8*
  %381 = xor i64 %378, -1, !dbg !1091
  %382 = getelementptr i8, i8* %380, i64 %381, !dbg !1091
  %383 = ptrtoint i8* %382 to i64
  %384 = lshr i64 %383, 4, !dbg !1091
  %385 = add nuw nsw i64 %384, 1, !dbg !1091
  %386 = and i64 %385, 7, !dbg !1091
  %387 = icmp eq i64 %386, 0, !dbg !1091
  br i1 %387, label %395, label %388, !dbg !1091

; <label>:388:                                    ; preds = %377, %388
  %389 = phi %struct.lua_TValue* [ %392, %388 ], [ %374, %377 ]
  %390 = phi i64 [ %393, %388 ], [ %386, %377 ]
  %391 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %389, i64 0, i32 1, !dbg !1091
  store i32 0, i32* %391, align 8, !dbg !1091, !tbaa !433
  %392 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %389, i64 1, !dbg !1092
  %393 = add i64 %390, -1, !dbg !1090
  %394 = icmp eq i64 %393, 0, !dbg !1090
  br i1 %394, label %395, label %388, !dbg !1090, !llvm.loop !1093

; <label>:395:                                    ; preds = %388, %377
  %396 = phi %struct.lua_TValue* [ %374, %377 ], [ %392, %388 ]
  %397 = icmp ult i8* %382, inttoptr (i64 112 to i8*), !dbg !1091
  br i1 %397, label %410, label %398, !dbg !1091

; <label>:398:                                    ; preds = %395, %398
  %399 = phi %struct.lua_TValue* [ %408, %398 ], [ %396, %395 ]
  %400 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %399, i64 0, i32 1, !dbg !1091
  store i32 0, i32* %400, align 8, !dbg !1091, !tbaa !433
  %401 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %399, i64 1, i32 1, !dbg !1091
  store i32 0, i32* %401, align 8, !dbg !1091, !tbaa !433
  %402 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %399, i64 2, i32 1, !dbg !1091
  store i32 0, i32* %402, align 8, !dbg !1091, !tbaa !433
  %403 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %399, i64 3, i32 1, !dbg !1091
  store i32 0, i32* %403, align 8, !dbg !1091, !tbaa !433
  %404 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %399, i64 4, i32 1, !dbg !1091
  store i32 0, i32* %404, align 8, !dbg !1091, !tbaa !433
  %405 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %399, i64 5, i32 1, !dbg !1091
  store i32 0, i32* %405, align 8, !dbg !1091, !tbaa !433
  %406 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %399, i64 6, i32 1, !dbg !1091
  store i32 0, i32* %406, align 8, !dbg !1091, !tbaa !433
  %407 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %399, i64 7, i32 1, !dbg !1091
  store i32 0, i32* %407, align 8, !dbg !1091, !tbaa !433
  %408 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %399, i64 8, !dbg !1092
  %409 = icmp ult %struct.lua_TValue* %408, %367, !dbg !1088
  br i1 %409, label %398, label %410, !dbg !1090, !llvm.loop !1094

; <label>:410:                                    ; preds = %395, %398, %359
  store %struct.lua_TValue* %367, %struct.lua_TValue** %93, align 8, !dbg !1096, !tbaa !426
  %411 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 17, !dbg !1097
  %412 = load i8, i8* %411, align 4, !dbg !1097, !tbaa !1099
  %413 = and i8 %412, 1, !dbg !1100
  %414 = icmp eq i8 %413, 0, !dbg !1100
  br i1 %414, label %515, label %415, !dbg !1101

; <label>:415:                                    ; preds = %410
  %416 = getelementptr inbounds i32, i32* %376, i64 1, !dbg !1102
  store i32* %416, i32** %77, align 8, !dbg !1102, !tbaa !876
  tail call void @luaD_callhook(%struct.lua_State* nonnull %0, i32 0, i32 -1) #9, !dbg !1104
  %417 = load i32*, i32** %77, align 8, !dbg !1105, !tbaa !876
  %418 = getelementptr inbounds i32, i32* %417, i64 -1, !dbg !1105
  store i32* %418, i32** %77, align 8, !dbg !1105, !tbaa !876
  br label %515, !dbg !1106

; <label>:419:                                    ; preds = %68
  %420 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 9, !dbg !1107
  %421 = bitcast %struct.lua_TValue** %420 to i64*, !dbg !1107
  %422 = load i64, i64* %421, align 8, !dbg !1107, !tbaa !620
  %423 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1107
  %424 = bitcast %struct.lua_TValue** %423 to i64*, !dbg !1107
  %425 = load i64, i64* %424, align 8, !dbg !1107, !tbaa !426
  %426 = sub i64 %422, %425, !dbg !1107
  %427 = icmp slt i64 %426, 321, !dbg !1107
  br i1 %427, label %428, label %436, !dbg !1109

; <label>:428:                                    ; preds = %419
  %429 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 13, !dbg !1113
  %430 = load i32, i32* %429, align 8, !dbg !1113, !tbaa !613
  %431 = icmp slt i32 %430, 20, !dbg !1114
  br i1 %431, label %434, label %432, !dbg !1115

; <label>:432:                                    ; preds = %428
  %433 = shl nsw i32 %430, 1, !dbg !1116
  tail call void @luaD_reallocstack(%struct.lua_State* nonnull %0, i32 %433) #6, !dbg !1117
  br label %436, !dbg !1117

; <label>:434:                                    ; preds = %428
  %435 = add nsw i32 %430, 20, !dbg !1118
  tail call void @luaD_reallocstack(%struct.lua_State* nonnull %0, i32 %435) #6, !dbg !1119
  br label %436

; <label>:436:                                    ; preds = %434, %432, %419
  %437 = load %struct.CallInfo*, %struct.CallInfo** %80, align 8, !dbg !1120, !tbaa !486
  %438 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 11, !dbg !1120
  %439 = load %struct.CallInfo*, %struct.CallInfo** %438, align 8, !dbg !1120, !tbaa !556
  %440 = icmp eq %struct.CallInfo* %437, %439, !dbg !1120
  br i1 %440, label %441, label %477, !dbg !1120

; <label>:441:                                    ; preds = %436
  %442 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 14, !dbg !1123
  %443 = load i32, i32* %442, align 4, !dbg !1123, !tbaa !529
  %444 = icmp sgt i32 %443, 20000, !dbg !1124
  br i1 %444, label %445, label %446, !dbg !1125

; <label>:445:                                    ; preds = %441
  tail call void @luaD_throw(%struct.lua_State* nonnull %0, i32 5) #6, !dbg !1126
  unreachable

; <label>:446:                                    ; preds = %441
  %447 = shl nsw i32 %443, 1, !dbg !1127
  %448 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 12, !dbg !1131
  %449 = load %struct.CallInfo*, %struct.CallInfo** %448, align 8, !dbg !1131, !tbaa !483
  %450 = icmp sgt i32 %443, -1, !dbg !1133
  br i1 %450, label %451, label %458, !dbg !1133

; <label>:451:                                    ; preds = %446
  %452 = bitcast %struct.CallInfo* %449 to i8*, !dbg !1133
  %453 = sext i32 %443 to i64, !dbg !1133
  %454 = mul nsw i64 %453, 40, !dbg !1133
  %455 = sext i32 %447 to i64, !dbg !1133
  %456 = mul nsw i64 %455, 40, !dbg !1133
  %457 = tail call i8* @luaM_realloc_(%struct.lua_State* nonnull %0, i8* %452, i64 %454, i64 %456) #6, !dbg !1133
  br label %461, !dbg !1133

; <label>:458:                                    ; preds = %446
  %459 = tail call i8* @luaM_toobig(%struct.lua_State* nonnull %0) #6, !dbg !1133
  %460 = sext i32 %447 to i64, !dbg !1134
  br label %461, !dbg !1133

; <label>:461:                                    ; preds = %451, %458
  %462 = phi i64 [ %460, %458 ], [ %455, %451 ], !dbg !1134
  %463 = phi i8* [ %459, %458 ], [ %457, %451 ], !dbg !1133
  %464 = bitcast %struct.CallInfo** %448 to i8**, !dbg !1133
  store i8* %463, i8** %464, align 8, !dbg !1133, !tbaa !483
  store i32 %447, i32* %442, align 4, !dbg !1135, !tbaa !529
  %465 = bitcast %struct.CallInfo** %80 to i64*, !dbg !1136
  %466 = load i64, i64* %465, align 8, !dbg !1136, !tbaa !486
  %467 = ptrtoint %struct.CallInfo* %449 to i64, !dbg !1137
  %468 = sub i64 %466, %467, !dbg !1137
  %469 = sdiv exact i64 %468, 40, !dbg !1137
  %470 = bitcast i8* %463 to %struct.CallInfo*, !dbg !1138
  %471 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %470, i64 %469, !dbg !1139
  store %struct.CallInfo* %471, %struct.CallInfo** %80, align 8, !dbg !1140, !tbaa !486
  %472 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %470, i64 %462, !dbg !1134
  %473 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %472, i64 -1, !dbg !1141
  store %struct.CallInfo* %473, %struct.CallInfo** %438, align 8, !dbg !1142, !tbaa !556
  %474 = icmp sgt i32 %443, 10000, !dbg !1143
  br i1 %474, label %475, label %477, !dbg !1144

; <label>:475:                                    ; preds = %461
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !1145
  %476 = load %struct.CallInfo*, %struct.CallInfo** %80, align 8, !dbg !1146, !tbaa !486
  br label %477, !dbg !1145

; <label>:477:                                    ; preds = %436, %475, %461
  %478 = phi %struct.CallInfo* [ %471, %461 ], [ %476, %475 ], [ %437, %436 ]
  %479 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %478, i64 1, !dbg !1147
  store %struct.CallInfo* %479, %struct.CallInfo** %80, align 8, !dbg !1147, !tbaa !486
  %480 = bitcast %struct.lua_TValue** %70 to i8**, !dbg !1149
  %481 = load i8*, i8** %480, align 8, !dbg !1149, !tbaa !608
  %482 = getelementptr inbounds i8, i8* %481, i64 %74, !dbg !1149
  %483 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %478, i64 1, i32 1, !dbg !1150
  %484 = bitcast %struct.lua_TValue** %483 to i8**, !dbg !1151
  store i8* %482, i8** %484, align 8, !dbg !1151, !tbaa !670
  %485 = getelementptr inbounds i8, i8* %482, i64 16, !dbg !1152
  %486 = bitcast %struct.CallInfo* %479 to i8**, !dbg !1153
  store i8* %485, i8** %486, align 8, !dbg !1153, !tbaa !488
  %487 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !1154
  %488 = bitcast %struct.lua_TValue** %487 to i8**, !dbg !1155
  store i8* %485, i8** %488, align 8, !dbg !1155, !tbaa !492
  %489 = load %struct.lua_TValue*, %struct.lua_TValue** %423, align 8, !dbg !1156, !tbaa !426
  %490 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %489, i64 20, !dbg !1157
  %491 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %478, i64 1, i32 2, !dbg !1158
  store %struct.lua_TValue* %490, %struct.lua_TValue** %491, align 8, !dbg !1159, !tbaa !661
  %492 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %478, i64 1, i32 4, !dbg !1160
  store i32 %2, i32* %492, align 8, !dbg !1161, !tbaa !1084
  %493 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 17, !dbg !1162
  %494 = load i8, i8* %493, align 4, !dbg !1162, !tbaa !1099
  %495 = and i8 %494, 1, !dbg !1164
  %496 = icmp eq i8 %495, 0, !dbg !1164
  br i1 %496, label %499, label %497, !dbg !1165

; <label>:497:                                    ; preds = %477
  tail call void @luaD_callhook(%struct.lua_State* nonnull %0, i32 0, i32 -1) #9, !dbg !1166
  %498 = load %struct.CallInfo*, %struct.CallInfo** %80, align 8, !dbg !1167, !tbaa !486
  br label %499, !dbg !1166

; <label>:499:                                    ; preds = %477, %497
  %500 = phi %struct.CallInfo* [ %479, %477 ], [ %498, %497 ], !dbg !1167
  %501 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %500, i64 0, i32 1, !dbg !1167
  %502 = bitcast %struct.lua_TValue** %501 to %struct.CClosure***, !dbg !1167
  %503 = load %struct.CClosure**, %struct.CClosure*** %502, align 8, !dbg !1167, !tbaa !670
  %504 = load %struct.CClosure*, %struct.CClosure** %503, align 8, !dbg !1167, !tbaa !419
  %505 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %504, i64 0, i32 7, !dbg !1168
  %506 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %505, align 8, !dbg !1168, !tbaa !419
  %507 = tail call i32 %506(%struct.lua_State* nonnull %0) #6, !dbg !1169
  %508 = icmp slt i32 %507, 0, !dbg !1171
  br i1 %508, label %515, label %509, !dbg !1173

; <label>:509:                                    ; preds = %499
  %510 = load %struct.lua_TValue*, %struct.lua_TValue** %423, align 8, !dbg !1174, !tbaa !426
  %511 = sext i32 %507 to i64, !dbg !1176
  %512 = sub nsw i64 0, %511, !dbg !1176
  %513 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %510, i64 %512, !dbg !1176
  %514 = tail call i32 @luaD_poscall(%struct.lua_State* nonnull %0, %struct.lua_TValue* %513) #9, !dbg !1177
  br label %515, !dbg !1178

; <label>:515:                                    ; preds = %509, %499, %415, %410
  %516 = phi i32 [ 0, %410 ], [ 0, %415 ], [ 1, %509 ], [ 2, %499 ], !dbg !1029
  ret i32 %516, !dbg !1179
}

; Function Attrs: noredzone nounwind
define hidden i32 @luaD_poscall(%struct.lua_State*, %struct.lua_TValue*) local_unnamed_addr #0 !dbg !1180 {
  %3 = alloca %struct.lua_Debug, align 8
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 17, !dbg !1197
  %5 = load i8, i8* %4, align 4, !dbg !1197, !tbaa !1099
  %6 = and i8 %5, 2, !dbg !1199
  %7 = icmp eq i8 %6, 0, !dbg !1199
  br i1 %7, label %8, label %11, !dbg !1200

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %10 = load %struct.CallInfo*, %struct.CallInfo** %9, align 8, !dbg !1201, !tbaa !486
  br label %98, !dbg !1200

; <label>:11:                                     ; preds = %2
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 10, !dbg !1210
  %13 = bitcast %struct.lua_TValue** %12 to i64*, !dbg !1210
  %14 = load i64, i64* %13, align 8, !dbg !1210, !tbaa !608
  %15 = ptrtoint %struct.lua_TValue* %1 to i64, !dbg !1210
  %16 = sub i64 %15, %14, !dbg !1210
  tail call void @luaD_callhook(%struct.lua_State* nonnull %0, i32 1, i32 -1) #6, !dbg !1212
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1213
  %18 = load %struct.CallInfo*, %struct.CallInfo** %17, align 8, !dbg !1213, !tbaa !486
  %19 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %18, i64 0, i32 1, !dbg !1213
  %20 = bitcast %struct.lua_TValue** %19 to %struct.CClosure***, !dbg !1213
  %21 = load %struct.CClosure**, %struct.CClosure*** %20, align 8, !dbg !1213, !tbaa !670
  %22 = load %struct.CClosure*, %struct.CClosure** %21, align 8, !dbg !1213, !tbaa !419
  %23 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %22, i64 0, i32 3, !dbg !1213
  %24 = load i8, i8* %23, align 2, !dbg !1213, !tbaa !419
  %25 = icmp eq i8 %24, 0, !dbg !1213
  br i1 %25, label %26, label %92, !dbg !1215

; <label>:26:                                     ; preds = %11
  %27 = load i8, i8* %4, align 4, !dbg !1216, !tbaa !1099
  %28 = and i8 %27, 2, !dbg !1218
  %29 = icmp eq i8 %28, 0, !dbg !1218
  br i1 %29, label %92, label %30, !dbg !1219

; <label>:30:                                     ; preds = %26
  %31 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 21
  %32 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 18
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4
  %34 = bitcast %struct.lua_TValue** %33 to i64*
  %35 = bitcast %struct.lua_Debug* %3 to i8*
  %36 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %3, i64 0, i32 0
  %37 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %3, i64 0, i32 5
  %38 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %3, i64 0, i32 10
  %39 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 9
  %40 = bitcast %struct.lua_TValue** %39 to i64*
  %41 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 13
  %42 = bitcast %struct.lua_TValue** %12 to i8**
  %43 = bitcast %struct.lua_TValue** %33 to i8**
  br label %44, !dbg !1219

; <label>:44:                                     ; preds = %87, %30
  %45 = phi i8 [ %27, %30 ], [ %88, %87 ]
  %46 = phi %struct.CallInfo* [ %18, %30 ], [ %89, %87 ], !dbg !1220
  %47 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %46, i64 0, i32 5, !dbg !1221
  %48 = load i32, i32* %47, align 4, !dbg !1222, !tbaa !1081
  %49 = add nsw i32 %48, -1, !dbg !1222
  store i32 %49, i32* %47, align 4, !dbg !1222, !tbaa !1081
  %50 = icmp eq i32 %48, 0, !dbg !1219
  br i1 %50, label %92, label %51, !dbg !1223

; <label>:51:                                     ; preds = %44
  %52 = load void (%struct.lua_State*, %struct.lua_Debug*)*, void (%struct.lua_State*, %struct.lua_Debug*)** %31, align 8, !dbg !1228, !tbaa !732
  %53 = icmp eq void (%struct.lua_State*, %struct.lua_Debug*)* %52, null, !dbg !1230
  br i1 %53, label %87, label %54, !dbg !1231

; <label>:54:                                     ; preds = %51
  %55 = load i8, i8* %32, align 1, !dbg !1232, !tbaa !517
  %56 = icmp eq i8 %55, 0, !dbg !1233
  br i1 %56, label %87, label %57, !dbg !1234

; <label>:57:                                     ; preds = %54
  %58 = load i64, i64* %34, align 8, !dbg !1235, !tbaa !426
  %59 = load i64, i64* %13, align 8, !dbg !1235, !tbaa !608
  %60 = sub i64 %58, %59, !dbg !1235
  %61 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %46, i64 0, i32 2, !dbg !1237
  %62 = bitcast %struct.lua_TValue** %61 to i64*, !dbg !1237
  %63 = load i64, i64* %62, align 8, !dbg !1237, !tbaa !661
  %64 = sub i64 %63, %59, !dbg !1237
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %35) #8, !dbg !1239
  store i32 4, i32* %36, align 8, !dbg !1240, !tbaa !746
  store i32 -1, i32* %37, align 8, !dbg !1241, !tbaa !750
  store i32 0, i32* %38, align 4, !dbg !1242
  %65 = load i64, i64* %40, align 8, !dbg !1243, !tbaa !620
  %66 = sub i64 %65, %58, !dbg !1243
  %67 = icmp slt i64 %66, 321, !dbg !1243
  br i1 %67, label %68, label %75, !dbg !1244

; <label>:68:                                     ; preds = %57
  %69 = load i32, i32* %41, align 8, !dbg !1248, !tbaa !613
  %70 = icmp slt i32 %69, 20, !dbg !1249
  br i1 %70, label %73, label %71, !dbg !1250

; <label>:71:                                     ; preds = %68
  %72 = shl nsw i32 %69, 1, !dbg !1251
  call void @luaD_reallocstack(%struct.lua_State* nonnull %0, i32 %72) #6, !dbg !1252
  br label %75, !dbg !1252

; <label>:73:                                     ; preds = %68
  %74 = add nsw i32 %69, 20, !dbg !1253
  call void @luaD_reallocstack(%struct.lua_State* nonnull %0, i32 %74) #6, !dbg !1254
  br label %75

; <label>:75:                                     ; preds = %73, %71, %57
  %76 = load %struct.lua_TValue*, %struct.lua_TValue** %33, align 8, !dbg !1255, !tbaa !426
  %77 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %76, i64 20, !dbg !1256
  %78 = load %struct.CallInfo*, %struct.CallInfo** %17, align 8, !dbg !1257, !tbaa !486
  %79 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %78, i64 0, i32 2, !dbg !1258
  store %struct.lua_TValue* %77, %struct.lua_TValue** %79, align 8, !dbg !1259, !tbaa !661
  store i8 0, i8* %32, align 1, !dbg !1260, !tbaa !517
  call void %52(%struct.lua_State* nonnull %0, %struct.lua_Debug* nonnull %3) #6, !dbg !1262
  store i8 1, i8* %32, align 1, !dbg !1263, !tbaa !517
  %80 = load i8*, i8** %42, align 8, !dbg !1264, !tbaa !608
  %81 = getelementptr inbounds i8, i8* %80, i64 %64, !dbg !1264
  %82 = load %struct.CallInfo*, %struct.CallInfo** %17, align 8, !dbg !1265, !tbaa !486
  %83 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %82, i64 0, i32 2, !dbg !1266
  %84 = bitcast %struct.lua_TValue** %83 to i8**, !dbg !1267
  store i8* %81, i8** %84, align 8, !dbg !1267, !tbaa !661
  %85 = getelementptr inbounds i8, i8* %80, i64 %60, !dbg !1268
  store i8* %85, i8** %43, align 8, !dbg !1269, !tbaa !426
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %35) #8, !dbg !1270
  %86 = load i8, i8* %4, align 4, !dbg !1216, !tbaa !1099
  br label %87, !dbg !1271

; <label>:87:                                     ; preds = %75, %54, %51
  %88 = phi i8 [ %45, %51 ], [ %45, %54 ], [ %86, %75 ], !dbg !1216
  %89 = phi %struct.CallInfo* [ %46, %51 ], [ %46, %54 ], [ %82, %75 ]
  %90 = and i8 %88, 2, !dbg !1218
  %91 = icmp eq i8 %90, 0, !dbg !1218
  br i1 %91, label %92, label %44, !dbg !1219, !llvm.loop !1272

; <label>:92:                                     ; preds = %44, %87, %11, %26
  %93 = phi %struct.CallInfo* [ %18, %11 ], [ %18, %26 ], [ %46, %44 ], [ %89, %87 ]
  %94 = bitcast %struct.lua_TValue** %12 to i8**, !dbg !1275
  %95 = load i8*, i8** %94, align 8, !dbg !1275, !tbaa !608
  %96 = getelementptr inbounds i8, i8* %95, i64 %16, !dbg !1275
  %97 = bitcast i8* %96 to %struct.lua_TValue*, !dbg !1275
  br label %98, !dbg !1276

; <label>:98:                                     ; preds = %8, %92
  %99 = phi %struct.CallInfo** [ %9, %8 ], [ %17, %92 ], !dbg !1277
  %100 = phi %struct.CallInfo* [ %10, %8 ], [ %93, %92 ], !dbg !1201
  %101 = phi %struct.lua_TValue* [ %1, %8 ], [ %97, %92 ]
  %102 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %100, i64 -1, !dbg !1201
  store %struct.CallInfo* %102, %struct.CallInfo** %99, align 8, !dbg !1201, !tbaa !486
  %103 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %100, i64 0, i32 1, !dbg !1279
  %104 = load %struct.lua_TValue*, %struct.lua_TValue** %103, align 8, !dbg !1279, !tbaa !670
  %105 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %100, i64 0, i32 4, !dbg !1281
  %106 = load i32, i32* %105, align 8, !dbg !1281, !tbaa !1084
  %107 = bitcast %struct.CallInfo* %102 to i64*, !dbg !1283
  %108 = load i64, i64* %107, align 8, !dbg !1283, !tbaa !488
  %109 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !1284
  %110 = bitcast %struct.lua_TValue** %109 to i64*, !dbg !1285
  store i64 %108, i64* %110, align 8, !dbg !1285, !tbaa !492
  %111 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %100, i64 -1, i32 3, !dbg !1286
  %112 = bitcast i32** %111 to i64*, !dbg !1286
  %113 = load i64, i64* %112, align 8, !dbg !1286, !tbaa !880
  %114 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8, !dbg !1287
  %115 = bitcast i32** %114 to i64*, !dbg !1288
  store i64 %113, i64* %115, align 8, !dbg !1288, !tbaa !876
  %116 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1290
  %117 = icmp eq i32 %106, 0, !dbg !1291
  br i1 %117, label %144, label %118, !dbg !1292

; <label>:118:                                    ; preds = %98, %124
  %119 = phi %struct.lua_TValue* [ %125, %124 ], [ %101, %98 ]
  %120 = phi %struct.lua_TValue* [ %126, %124 ], [ %104, %98 ]
  %121 = phi i32 [ %133, %124 ], [ %106, %98 ]
  %122 = load %struct.lua_TValue*, %struct.lua_TValue** %116, align 8, !dbg !1290, !tbaa !426
  %123 = icmp ult %struct.lua_TValue* %119, %122, !dbg !1293
  br i1 %123, label %124, label %135, !dbg !1294

; <label>:124:                                    ; preds = %118
  %125 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %119, i64 1, !dbg !1295
  %126 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %120, i64 1, !dbg !1295
  %127 = bitcast %struct.lua_TValue* %119 to i64*, !dbg !1295
  %128 = bitcast %struct.lua_TValue* %120 to i64*, !dbg !1295
  %129 = load i64, i64* %127, align 8, !dbg !1295
  store i64 %129, i64* %128, align 8, !dbg !1295
  %130 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %119, i64 0, i32 1, !dbg !1295
  %131 = load i32, i32* %130, align 8, !dbg !1295, !tbaa !433
  %132 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %120, i64 0, i32 1, !dbg !1295
  store i32 %131, i32* %132, align 8, !dbg !1295, !tbaa !433
  %133 = add nsw i32 %121, -1, !dbg !1296
  %134 = icmp eq i32 %133, 0, !dbg !1291
  br i1 %134, label %144, label %118, !dbg !1292, !llvm.loop !1297

; <label>:135:                                    ; preds = %118
  %136 = icmp sgt i32 %121, 0, !dbg !1299
  br i1 %136, label %137, label %144, !dbg !1300

; <label>:137:                                    ; preds = %135, %137
  %138 = phi %struct.lua_TValue* [ %141, %137 ], [ %120, %135 ]
  %139 = phi i32 [ %140, %137 ], [ %121, %135 ]
  %140 = add nsw i32 %139, -1, !dbg !1301
  %141 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %138, i64 1, !dbg !1302
  %142 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %138, i64 0, i32 1, !dbg !1302
  store i32 0, i32* %142, align 8, !dbg !1302, !tbaa !433
  %143 = icmp sgt i32 %139, 1, !dbg !1299
  br i1 %143, label %137, label %144, !dbg !1300, !llvm.loop !1303

; <label>:144:                                    ; preds = %124, %137, %98, %135
  %145 = phi %struct.lua_TValue* [ %120, %135 ], [ %104, %98 ], [ %141, %137 ], [ %126, %124 ], !dbg !1304
  store %struct.lua_TValue* %145, %struct.lua_TValue** %116, align 8, !dbg !1305, !tbaa !426
  %146 = add nsw i32 %106, 1, !dbg !1306
  ret i32 %146, !dbg !1307
}

; Function Attrs: noredzone nounwind
define hidden void @luaD_call(%struct.lua_State*, %struct.lua_TValue*, i32) local_unnamed_addr #0 !dbg !1308 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 15, !dbg !1318
  %5 = load i16, i16* %4, align 8, !dbg !1320, !tbaa !514
  %6 = add i16 %5, 1, !dbg !1320
  store i16 %6, i16* %4, align 8, !dbg !1320, !tbaa !514
  %7 = icmp ugt i16 %6, 199, !dbg !1321
  br i1 %7, label %8, label %14, !dbg !1322

; <label>:8:                                      ; preds = %3
  %9 = icmp eq i16 %6, 200, !dbg !1323
  br i1 %9, label %10, label %11, !dbg !1326

; <label>:10:                                     ; preds = %8
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !1327
  br label %14, !dbg !1327

; <label>:11:                                     ; preds = %8
  %12 = icmp ugt i16 %6, 224, !dbg !1328
  br i1 %12, label %13, label %14, !dbg !1330

; <label>:13:                                     ; preds = %11
  tail call void @luaD_throw(%struct.lua_State* nonnull %0, i32 5) #9, !dbg !1331
  unreachable

; <label>:14:                                     ; preds = %10, %11, %3
  %15 = tail call i32 @luaD_precall(%struct.lua_State* nonnull %0, %struct.lua_TValue* %1, i32 %2) #9, !dbg !1332
  %16 = icmp eq i32 %15, 0, !dbg !1334
  br i1 %16, label %17, label %18, !dbg !1335

; <label>:17:                                     ; preds = %14
  tail call void @luaV_execute(%struct.lua_State* nonnull %0, i32 1) #6, !dbg !1336
  br label %18, !dbg !1336

; <label>:18:                                     ; preds = %17, %14
  %19 = load i16, i16* %4, align 8, !dbg !1337, !tbaa !514
  %20 = add i16 %19, -1, !dbg !1337
  store i16 %20, i16* %4, align 8, !dbg !1337, !tbaa !514
  %21 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1338
  %22 = load %struct.global_State*, %struct.global_State** %21, align 8, !dbg !1338, !tbaa !466
  %23 = getelementptr inbounds %struct.global_State, %struct.global_State* %22, i64 0, i32 14, !dbg !1338
  %24 = load i64, i64* %23, align 8, !dbg !1338, !tbaa !984
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %22, i64 0, i32 13, !dbg !1338
  %26 = load i64, i64* %25, align 8, !dbg !1338, !tbaa !985
  %27 = icmp ult i64 %24, %26, !dbg !1338
  br i1 %27, label %29, label %28, !dbg !1341

; <label>:28:                                     ; preds = %18
  tail call void @luaC_step(%struct.lua_State* nonnull %0) #6, !dbg !1338
  br label %29, !dbg !1338

; <label>:29:                                     ; preds = %18, %28
  ret void, !dbg !1342
}

; Function Attrs: noredzone
declare hidden void @luaG_runerror(%struct.lua_State*, i8*, ...) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden void @luaV_execute(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden void @luaC_step(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_resume(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !1343 {
  %3 = alloca %struct.lua_longjmp, align 8
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 3, !dbg !1352
  %5 = load i8, i8* %4, align 2, !dbg !1352, !tbaa !463
  switch i8 %5, label %6 [
    i8 1, label %42
    i8 0, label %9
  ], !dbg !1354

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %8 = load %struct.CallInfo*, %struct.CallInfo** %7, align 8, !dbg !1355, !tbaa !486
  br label %15, !dbg !1354

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1365
  %11 = load %struct.CallInfo*, %struct.CallInfo** %10, align 8, !dbg !1365, !tbaa !486
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 12, !dbg !1366
  %13 = load %struct.CallInfo*, %struct.CallInfo** %12, align 8, !dbg !1366, !tbaa !483
  %14 = icmp eq %struct.CallInfo* %11, %13, !dbg !1367
  br i1 %14, label %42, label %15, !dbg !1368

; <label>:15:                                     ; preds = %6, %9
  %16 = phi %struct.CallInfo* [ %8, %6 ], [ %11, %9 ], !dbg !1355
  %17 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %16, i64 0, i32 0, !dbg !1371
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %17, align 8, !dbg !1371, !tbaa !488
  %19 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1372
  store %struct.lua_TValue* %18, %struct.lua_TValue** %19, align 8, !dbg !1373, !tbaa !426
  %20 = tail call i64 @strlen(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !1374
  %21 = tail call %union.TString* @luaS_newlstr(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i64 %20) #6, !dbg !1374
  %22 = bitcast %struct.lua_TValue* %18 to %union.TString**, !dbg !1374
  store %union.TString* %21, %union.TString** %22, align 8, !dbg !1374, !tbaa !419
  %23 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 0, i32 1, !dbg !1374
  store i32 4, i32* %23, align 8, !dbg !1374, !tbaa !433
  %24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 9, !dbg !1375
  %25 = bitcast %struct.lua_TValue** %24 to i64*, !dbg !1375
  %26 = load i64, i64* %25, align 8, !dbg !1375, !tbaa !620
  %27 = bitcast %struct.lua_TValue** %19 to i64*, !dbg !1375
  %28 = load i64, i64* %27, align 8, !dbg !1375, !tbaa !426
  %29 = sub i64 %26, %28, !dbg !1375
  %30 = icmp slt i64 %29, 17, !dbg !1375
  br i1 %30, label %31, label %39, !dbg !1378

; <label>:31:                                     ; preds = %15
  %32 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 13, !dbg !1382
  %33 = load i32, i32* %32, align 8, !dbg !1382, !tbaa !613
  %34 = icmp slt i32 %33, 1, !dbg !1383
  br i1 %34, label %37, label %35, !dbg !1384

; <label>:35:                                     ; preds = %31
  %36 = shl nsw i32 %33, 1, !dbg !1385
  tail call void @luaD_reallocstack(%struct.lua_State* nonnull %0, i32 %36) #6, !dbg !1386
  br label %39, !dbg !1386

; <label>:37:                                     ; preds = %31
  %38 = add nsw i32 %33, 1, !dbg !1387
  tail call void @luaD_reallocstack(%struct.lua_State* nonnull %0, i32 %38) #6, !dbg !1388
  br label %39

; <label>:39:                                     ; preds = %15, %35, %37
  %40 = load %struct.lua_TValue*, %struct.lua_TValue** %19, align 8, !dbg !1378, !tbaa !426
  %41 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %40, i64 1, !dbg !1378
  store %struct.lua_TValue* %41, %struct.lua_TValue** %19, align 8, !dbg !1378, !tbaa !426
  br label %168, !dbg !1389

; <label>:42:                                     ; preds = %2, %9
  %43 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 15, !dbg !1390
  %44 = load i16, i16* %43, align 8, !dbg !1390, !tbaa !514
  %45 = icmp ugt i16 %44, 199, !dbg !1392
  br i1 %45, label %46, label %74, !dbg !1393

; <label>:46:                                     ; preds = %42
  %47 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1397
  %48 = load %struct.CallInfo*, %struct.CallInfo** %47, align 8, !dbg !1397, !tbaa !486
  %49 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %48, i64 0, i32 0, !dbg !1398
  %50 = load %struct.lua_TValue*, %struct.lua_TValue** %49, align 8, !dbg !1398, !tbaa !488
  %51 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1399
  store %struct.lua_TValue* %50, %struct.lua_TValue** %51, align 8, !dbg !1400, !tbaa !426
  %52 = tail call i64 @strlen(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !1401
  %53 = tail call %union.TString* @luaS_newlstr(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i64 %52) #6, !dbg !1401
  %54 = bitcast %struct.lua_TValue* %50 to %union.TString**, !dbg !1401
  store %union.TString* %53, %union.TString** %54, align 8, !dbg !1401, !tbaa !419
  %55 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %50, i64 0, i32 1, !dbg !1401
  store i32 4, i32* %55, align 8, !dbg !1401, !tbaa !433
  %56 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 9, !dbg !1402
  %57 = bitcast %struct.lua_TValue** %56 to i64*, !dbg !1402
  %58 = load i64, i64* %57, align 8, !dbg !1402, !tbaa !620
  %59 = bitcast %struct.lua_TValue** %51 to i64*, !dbg !1402
  %60 = load i64, i64* %59, align 8, !dbg !1402, !tbaa !426
  %61 = sub i64 %58, %60, !dbg !1402
  %62 = icmp slt i64 %61, 17, !dbg !1402
  br i1 %62, label %63, label %71, !dbg !1403

; <label>:63:                                     ; preds = %46
  %64 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 13, !dbg !1407
  %65 = load i32, i32* %64, align 8, !dbg !1407, !tbaa !613
  %66 = icmp slt i32 %65, 1, !dbg !1408
  br i1 %66, label %69, label %67, !dbg !1409

; <label>:67:                                     ; preds = %63
  %68 = shl nsw i32 %65, 1, !dbg !1410
  tail call void @luaD_reallocstack(%struct.lua_State* nonnull %0, i32 %68) #6, !dbg !1411
  br label %71, !dbg !1411

; <label>:69:                                     ; preds = %63
  %70 = add nsw i32 %65, 1, !dbg !1412
  tail call void @luaD_reallocstack(%struct.lua_State* nonnull %0, i32 %70) #6, !dbg !1413
  br label %71

; <label>:71:                                     ; preds = %46, %67, %69
  %72 = load %struct.lua_TValue*, %struct.lua_TValue** %51, align 8, !dbg !1403, !tbaa !426
  %73 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %72, i64 1, !dbg !1403
  store %struct.lua_TValue* %73, %struct.lua_TValue** %51, align 8, !dbg !1403, !tbaa !426
  br label %168, !dbg !1414

; <label>:74:                                     ; preds = %42
  %75 = add i16 %44, 1, !dbg !1415
  store i16 %75, i16* %43, align 8, !dbg !1415, !tbaa !514
  %76 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 16, !dbg !1416
  store i16 %75, i16* %76, align 2, !dbg !1417, !tbaa !511
  %77 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1418
  %78 = load %struct.lua_TValue*, %struct.lua_TValue** %77, align 8, !dbg !1418, !tbaa !426
  %79 = sext i32 %1 to i64, !dbg !1419
  %80 = sub nsw i64 0, %79, !dbg !1419
  %81 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %78, i64 %80, !dbg !1419
  %82 = bitcast %struct.lua_longjmp* %3 to i8*, !dbg !1423
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %82) #8, !dbg !1423
  %83 = getelementptr inbounds %struct.lua_longjmp, %struct.lua_longjmp* %3, i64 0, i32 2, !dbg !1424
  store volatile i32 0, i32* %83, align 8, !dbg !1425, !tbaa !456
  %84 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 26, !dbg !1426
  %85 = bitcast %struct.lua_longjmp** %84 to i64*, !dbg !1426
  %86 = load i64, i64* %85, align 8, !dbg !1426, !tbaa !450
  %87 = bitcast %struct.lua_longjmp* %3 to i64*, !dbg !1427
  store i64 %86, i64* %87, align 8, !dbg !1427, !tbaa !587
  store %struct.lua_longjmp* %3, %struct.lua_longjmp** %84, align 8, !dbg !1428, !tbaa !450
  %88 = getelementptr inbounds %struct.lua_longjmp, %struct.lua_longjmp* %3, i64 0, i32 1, i64 0, !dbg !1429
  %89 = call i32 @setjmp(i64* nonnull %88) #6, !dbg !1429
  %90 = icmp eq i32 %89, 0, !dbg !1429
  br i1 %90, label %91, label %131, !dbg !1430

; <label>:91:                                     ; preds = %74
  %92 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1441
  %93 = load i8, i8* %4, align 2, !dbg !1442, !tbaa !463
  %94 = icmp eq i8 %93, 0, !dbg !1444
  br i1 %94, label %95, label %99, !dbg !1445

; <label>:95:                                     ; preds = %91
  %96 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %81, i64 -1, !dbg !1446
  %97 = call i32 @luaD_precall(%struct.lua_State* nonnull %0, %struct.lua_TValue* nonnull %96, i32 -1) #6, !dbg !1449
  %98 = icmp eq i32 %97, 0, !dbg !1450
  br i1 %98, label %122, label %131, !dbg !1451

; <label>:99:                                     ; preds = %91
  %100 = load %struct.CallInfo*, %struct.CallInfo** %92, align 8, !dbg !1441, !tbaa !486
  store i8 0, i8* %4, align 2, !dbg !1453, !tbaa !463
  %101 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %100, i64 0, i32 1, !dbg !1455
  %102 = bitcast %struct.lua_TValue** %101 to %struct.CClosure***, !dbg !1455
  %103 = load %struct.CClosure**, %struct.CClosure*** %102, align 8, !dbg !1455, !tbaa !670
  %104 = load %struct.CClosure*, %struct.CClosure** %103, align 8, !dbg !1455, !tbaa !419
  %105 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %104, i64 0, i32 3, !dbg !1455
  %106 = load i8, i8* %105, align 2, !dbg !1455, !tbaa !419
  %107 = icmp eq i8 %106, 0, !dbg !1455
  br i1 %107, label %117, label %108, !dbg !1457

; <label>:108:                                    ; preds = %99
  %109 = call i32 @luaD_poscall(%struct.lua_State* nonnull %0, %struct.lua_TValue* %81) #6, !dbg !1458
  %110 = icmp eq i32 %109, 0, !dbg !1458
  br i1 %110, label %122, label %111, !dbg !1461

; <label>:111:                                    ; preds = %108
  %112 = load %struct.CallInfo*, %struct.CallInfo** %92, align 8, !dbg !1462, !tbaa !486
  %113 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %112, i64 0, i32 2, !dbg !1463
  %114 = bitcast %struct.lua_TValue** %113 to i64*, !dbg !1463
  %115 = load i64, i64* %114, align 8, !dbg !1463, !tbaa !661
  %116 = bitcast %struct.lua_TValue** %77 to i64*, !dbg !1464
  store i64 %115, i64* %116, align 8, !dbg !1464, !tbaa !426
  br label %122, !dbg !1465

; <label>:117:                                    ; preds = %99
  %118 = bitcast %struct.CallInfo* %100 to i64*, !dbg !1457
  %119 = load i64, i64* %118, align 8, !dbg !1466, !tbaa !488
  %120 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !1467
  %121 = bitcast %struct.lua_TValue** %120 to i64*, !dbg !1468
  store i64 %119, i64* %121, align 8, !dbg !1468, !tbaa !492
  br label %122

; <label>:122:                                    ; preds = %117, %111, %108, %95
  %123 = bitcast %struct.CallInfo** %92 to i64*, !dbg !1469
  %124 = load i64, i64* %123, align 8, !dbg !1469, !tbaa !486
  %125 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 12, !dbg !1469
  %126 = bitcast %struct.CallInfo** %125 to i64*, !dbg !1469
  %127 = load i64, i64* %126, align 8, !dbg !1469, !tbaa !483
  %128 = sub i64 %124, %127, !dbg !1469
  %129 = sdiv exact i64 %128, 40, !dbg !1469
  %130 = trunc i64 %129 to i32, !dbg !1469
  call void @luaV_execute(%struct.lua_State* nonnull %0, i32 %130) #6, !dbg !1470
  br label %131, !dbg !1471

; <label>:131:                                    ; preds = %122, %95, %74
  %132 = load i64, i64* %87, align 8, !dbg !1472, !tbaa !587
  store i64 %132, i64* %85, align 8, !dbg !1473, !tbaa !450
  %133 = load volatile i32, i32* %83, align 8, !dbg !1474, !tbaa !456
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %82) #8, !dbg !1475
  %134 = icmp eq i32 %133, 0, !dbg !1477
  br i1 %134, label %161, label %135, !dbg !1479

; <label>:135:                                    ; preds = %131
  %136 = trunc i32 %133 to i8, !dbg !1480
  store i8 %136, i8* %4, align 2, !dbg !1482, !tbaa !463
  %137 = load %struct.lua_TValue*, %struct.lua_TValue** %77, align 8, !dbg !1483, !tbaa !426
  switch i32 %133, label %154 [
    i32 4, label %138
    i32 5, label %141
    i32 3, label %144
    i32 2, label %144
  ], !dbg !1488

; <label>:138:                                    ; preds = %135
  %139 = call %union.TString* @luaS_newlstr(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 17) #6, !dbg !1489
  %140 = bitcast %struct.lua_TValue* %137 to %union.TString**, !dbg !1489
  store %union.TString* %139, %union.TString** %140, align 8, !dbg !1489, !tbaa !419
  br label %151, !dbg !1490

; <label>:141:                                    ; preds = %135
  %142 = call %union.TString* @luaS_newlstr(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 23) #6, !dbg !1491
  %143 = bitcast %struct.lua_TValue* %137 to %union.TString**, !dbg !1491
  store %union.TString* %142, %union.TString** %143, align 8, !dbg !1491, !tbaa !419
  br label %151, !dbg !1492

; <label>:144:                                    ; preds = %135, %135
  %145 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %137, i64 -1, !dbg !1493
  %146 = bitcast %struct.lua_TValue* %145 to i64*, !dbg !1493
  %147 = bitcast %struct.lua_TValue* %137 to i64*, !dbg !1493
  %148 = load i64, i64* %146, align 8, !dbg !1493
  store i64 %148, i64* %147, align 8, !dbg !1493
  %149 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %137, i64 -1, i32 1, !dbg !1493
  %150 = load i32, i32* %149, align 8, !dbg !1493, !tbaa !433
  br label %151, !dbg !1494

; <label>:151:                                    ; preds = %144, %141, %138
  %152 = phi i32 [ 4, %138 ], [ 4, %141 ], [ %150, %144 ]
  %153 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %137, i64 0, i32 1, !dbg !1495
  store i32 %152, i32* %153, align 8, !dbg !1495, !tbaa !433
  br label %154, !dbg !1496

; <label>:154:                                    ; preds = %151, %135
  %155 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %137, i64 1, !dbg !1496
  store %struct.lua_TValue* %155, %struct.lua_TValue** %77, align 8, !dbg !1497, !tbaa !426
  %156 = ptrtoint %struct.lua_TValue* %155 to i64, !dbg !1498
  %157 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1499
  %158 = load %struct.CallInfo*, %struct.CallInfo** %157, align 8, !dbg !1499, !tbaa !486
  %159 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %158, i64 0, i32 2, !dbg !1500
  %160 = bitcast %struct.lua_TValue** %159 to i64*, !dbg !1501
  store i64 %156, i64* %160, align 8, !dbg !1501, !tbaa !661
  br label %164, !dbg !1502

; <label>:161:                                    ; preds = %131
  %162 = load i8, i8* %4, align 2, !dbg !1503, !tbaa !463
  %163 = zext i8 %162 to i32, !dbg !1505
  br label %164

; <label>:164:                                    ; preds = %161, %154
  %165 = phi i32 [ %133, %154 ], [ %163, %161 ], !dbg !1506
  %166 = load i16, i16* %43, align 8, !dbg !1507, !tbaa !514
  %167 = add i16 %166, -1, !dbg !1507
  store i16 %167, i16* %43, align 8, !dbg !1507, !tbaa !514
  br label %168, !dbg !1508

; <label>:168:                                    ; preds = %164, %71, %39
  %169 = phi i32 [ 2, %39 ], [ 2, %71 ], [ %165, %164 ], !dbg !1509
  ret i32 %169, !dbg !1510
}

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_yield(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !1511 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 15, !dbg !1517
  %4 = load i16, i16* %3, align 8, !dbg !1517, !tbaa !514
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 16, !dbg !1519
  %6 = load i16, i16* %5, align 2, !dbg !1519, !tbaa !511
  %7 = icmp ugt i16 %4, %6, !dbg !1520
  br i1 %7, label %8, label %9, !dbg !1521

; <label>:8:                                      ; preds = %2
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !1522
  br label %9, !dbg !1522

; <label>:9:                                      ; preds = %8, %2
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1523
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !1523, !tbaa !426
  %12 = sext i32 %1 to i64, !dbg !1524
  %13 = sub nsw i64 0, %12, !dbg !1524
  %14 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %11, i64 %13, !dbg !1524
  %15 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !1525
  store %struct.lua_TValue* %14, %struct.lua_TValue** %15, align 8, !dbg !1526, !tbaa !492
  %16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 3, !dbg !1527
  store i8 1, i8* %16, align 2, !dbg !1528, !tbaa !463
  ret i32 -1, !dbg !1529
}

; Function Attrs: noredzone nounwind
define hidden i32 @luaD_pcall(%struct.lua_State*, void (%struct.lua_State*, i8*)* nocapture, i8*, i64, i64) local_unnamed_addr #0 !dbg !1530 {
  %6 = alloca %struct.lua_longjmp, align 8
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 15, !dbg !1552
  %8 = load i16, i16* %7, align 8, !dbg !1552, !tbaa !514
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1554
  %10 = bitcast %struct.CallInfo** %9 to i64*, !dbg !1554
  %11 = load i64, i64* %10, align 8, !dbg !1554, !tbaa !486
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 12, !dbg !1554
  %13 = bitcast %struct.CallInfo** %12 to i64*, !dbg !1554
  %14 = load i64, i64* %13, align 8, !dbg !1554, !tbaa !483
  %15 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 18, !dbg !1555
  %16 = load i8, i8* %15, align 1, !dbg !1555, !tbaa !517
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 27, !dbg !1557
  %18 = load i64, i64* %17, align 8, !dbg !1557, !tbaa !560
  store i64 %4, i64* %17, align 8, !dbg !1559, !tbaa !560
  %19 = bitcast %struct.lua_longjmp* %6 to i8*, !dbg !1564
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %19) #8, !dbg !1564
  %20 = getelementptr inbounds %struct.lua_longjmp, %struct.lua_longjmp* %6, i64 0, i32 2, !dbg !1565
  store volatile i32 0, i32* %20, align 8, !dbg !1566, !tbaa !456
  %21 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 26, !dbg !1567
  %22 = bitcast %struct.lua_longjmp** %21 to i64*, !dbg !1567
  %23 = load i64, i64* %22, align 8, !dbg !1567, !tbaa !450
  %24 = bitcast %struct.lua_longjmp* %6 to i64*, !dbg !1568
  store i64 %23, i64* %24, align 8, !dbg !1568, !tbaa !587
  store %struct.lua_longjmp* %6, %struct.lua_longjmp** %21, align 8, !dbg !1569, !tbaa !450
  %25 = getelementptr inbounds %struct.lua_longjmp, %struct.lua_longjmp* %6, i64 0, i32 1, i64 0, !dbg !1570
  %26 = call i32 @setjmp(i64* nonnull %25) #6, !dbg !1570
  %27 = icmp eq i32 %26, 0, !dbg !1570
  br i1 %27, label %28, label %29, !dbg !1571

; <label>:28:                                     ; preds = %5
  call void %1(%struct.lua_State* nonnull %0, i8* %2) #6, !dbg !1572
  br label %29, !dbg !1572

; <label>:29:                                     ; preds = %5, %28
  %30 = load i64, i64* %24, align 8, !dbg !1573, !tbaa !587
  store i64 %30, i64* %22, align 8, !dbg !1574, !tbaa !450
  %31 = load volatile i32, i32* %20, align 8, !dbg !1575, !tbaa !456
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %19) #8, !dbg !1576
  %32 = icmp eq i32 %31, 0, !dbg !1578
  br i1 %32, label %96, label %33, !dbg !1579

; <label>:33:                                     ; preds = %29
  %34 = sub i64 %11, %14, !dbg !1554
  %35 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 10, !dbg !1581
  %36 = bitcast %struct.lua_TValue** %35 to i8**, !dbg !1581
  %37 = load i8*, i8** %36, align 8, !dbg !1581, !tbaa !608
  %38 = getelementptr inbounds i8, i8* %37, i64 %3, !dbg !1581
  %39 = bitcast i8* %38 to %struct.lua_TValue*, !dbg !1581
  call void @luaF_close(%struct.lua_State* nonnull %0, %struct.lua_TValue* %39) #6, !dbg !1583
  switch i32 %31, label %59 [
    i32 4, label %40
    i32 5, label %43
    i32 3, label %46
    i32 2, label %46
  ], !dbg !1588

; <label>:40:                                     ; preds = %33
  %41 = call %union.TString* @luaS_newlstr(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 17) #6, !dbg !1589
  %42 = bitcast i8* %38 to %union.TString**, !dbg !1589
  store %union.TString* %41, %union.TString** %42, align 8, !dbg !1589, !tbaa !419
  br label %55, !dbg !1590

; <label>:43:                                     ; preds = %33
  %44 = call %union.TString* @luaS_newlstr(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 23) #6, !dbg !1591
  %45 = bitcast i8* %38 to %union.TString**, !dbg !1591
  store %union.TString* %44, %union.TString** %45, align 8, !dbg !1591, !tbaa !419
  br label %55, !dbg !1592

; <label>:46:                                     ; preds = %33, %33
  %47 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1593
  %48 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !1593, !tbaa !426
  %49 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %48, i64 -1, !dbg !1593
  %50 = bitcast %struct.lua_TValue* %49 to i64*, !dbg !1593
  %51 = bitcast i8* %38 to i64*, !dbg !1593
  %52 = load i64, i64* %50, align 8, !dbg !1593
  store i64 %52, i64* %51, align 8, !dbg !1593
  %53 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %48, i64 -1, i32 1, !dbg !1593
  %54 = load i32, i32* %53, align 8, !dbg !1593, !tbaa !433
  br label %55, !dbg !1594

; <label>:55:                                     ; preds = %46, %43, %40
  %56 = phi i32 [ 4, %40 ], [ 4, %43 ], [ %54, %46 ]
  %57 = getelementptr inbounds i8, i8* %38, i64 8, !dbg !1595
  %58 = bitcast i8* %57 to i32*, !dbg !1595
  store i32 %56, i32* %58, align 8, !dbg !1595, !tbaa !433
  br label %59, !dbg !1596

; <label>:59:                                     ; preds = %55, %33
  %60 = getelementptr inbounds i8, i8* %38, i64 16, !dbg !1596
  %61 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1597
  %62 = bitcast %struct.lua_TValue** %61 to i8**, !dbg !1598
  store i8* %60, i8** %62, align 8, !dbg !1598, !tbaa !426
  store i16 %8, i16* %7, align 8, !dbg !1599, !tbaa !514
  %63 = bitcast %struct.CallInfo** %12 to i8**, !dbg !1600
  %64 = load i8*, i8** %63, align 8, !dbg !1600, !tbaa !483
  %65 = getelementptr inbounds i8, i8* %64, i64 %34, !dbg !1600
  %66 = bitcast %struct.CallInfo** %9 to i8**, !dbg !1601
  store i8* %65, i8** %66, align 8, !dbg !1601, !tbaa !486
  %67 = bitcast i8* %65 to i64*, !dbg !1602
  %68 = load i64, i64* %67, align 8, !dbg !1602, !tbaa !488
  %69 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !1603
  %70 = bitcast %struct.lua_TValue** %69 to i64*, !dbg !1604
  store i64 %68, i64* %70, align 8, !dbg !1604, !tbaa !492
  %71 = getelementptr inbounds i8, i8* %65, i64 24, !dbg !1605
  %72 = bitcast i8* %71 to i64*, !dbg !1605
  %73 = load i64, i64* %72, align 8, !dbg !1605, !tbaa !880
  %74 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8, !dbg !1606
  %75 = bitcast i32** %74 to i64*, !dbg !1607
  store i64 %73, i64* %75, align 8, !dbg !1607, !tbaa !876
  store i8 %16, i8* %15, align 1, !dbg !1608, !tbaa !517
  %76 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 14, !dbg !1611
  %77 = load i32, i32* %76, align 4, !dbg !1611, !tbaa !529
  %78 = icmp sgt i32 %77, 20000, !dbg !1612
  %79 = ptrtoint i8* %64 to i64, !dbg !1613
  br i1 %78, label %80, label %96, !dbg !1613

; <label>:80:                                     ; preds = %59
  %81 = sdiv exact i64 %34, 40, !dbg !1614
  %82 = trunc i64 %81 to i32, !dbg !1614
  %83 = icmp slt i32 %82, 19999, !dbg !1616
  br i1 %83, label %84, label %96, !dbg !1617

; <label>:84:                                     ; preds = %80
  %85 = sext i32 %77 to i64, !dbg !1622
  %86 = mul nsw i64 %85, 40, !dbg !1622
  %87 = call i8* @luaM_realloc_(%struct.lua_State* nonnull %0, i8* %64, i64 %86, i64 800000) #6, !dbg !1622
  store i8* %87, i8** %63, align 8, !dbg !1622, !tbaa !483
  store i32 20000, i32* %76, align 4, !dbg !1623, !tbaa !529
  %88 = load i64, i64* %10, align 8, !dbg !1624, !tbaa !486
  %89 = sub i64 %88, %79, !dbg !1625
  %90 = sdiv exact i64 %89, 40, !dbg !1625
  %91 = bitcast i8* %87 to %struct.CallInfo*, !dbg !1626
  %92 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %91, i64 %90, !dbg !1627
  store %struct.CallInfo* %92, %struct.CallInfo** %9, align 8, !dbg !1628, !tbaa !486
  %93 = getelementptr inbounds i8, i8* %87, i64 799960, !dbg !1629
  %94 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 11, !dbg !1630
  %95 = bitcast %struct.CallInfo** %94 to i8**, !dbg !1631
  store i8* %93, i8** %95, align 8, !dbg !1631, !tbaa !556
  br label %96, !dbg !1632

; <label>:96:                                     ; preds = %84, %80, %59, %29
  store i64 %18, i64* %17, align 8, !dbg !1633, !tbaa !560
  ret i32 %31, !dbg !1634
}

; Function Attrs: noredzone
declare hidden void @luaF_close(%struct.lua_State*, %struct.lua_TValue*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define hidden i32 @luaD_protectedparser(%struct.lua_State*, %struct.Zio*, i8*) local_unnamed_addr #0 !dbg !1635 {
  %4 = alloca %struct.SParser, align 8
  %5 = bitcast %struct.SParser* %4 to i8*, !dbg !1647
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %5) #8, !dbg !1647
  %6 = getelementptr inbounds %struct.SParser, %struct.SParser* %4, i64 0, i32 0, !dbg !1648
  store %struct.Zio* %1, %struct.Zio** %6, align 8, !dbg !1649, !tbaa !1650
  %7 = getelementptr inbounds %struct.SParser, %struct.SParser* %4, i64 0, i32 2, !dbg !1652
  store i8* %2, i8** %7, align 8, !dbg !1653, !tbaa !1654
  %8 = getelementptr inbounds %struct.SParser, %struct.SParser* %4, i64 0, i32 1, i32 0, !dbg !1655
  store i8* null, i8** %8, align 8, !dbg !1655, !tbaa !1656
  %9 = getelementptr inbounds %struct.SParser, %struct.SParser* %4, i64 0, i32 1, i32 2, !dbg !1655
  store i64 0, i64* %9, align 8, !dbg !1655, !tbaa !1657
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1658
  %11 = bitcast %struct.lua_TValue** %10 to i64*, !dbg !1658
  %12 = load i64, i64* %11, align 8, !dbg !1658, !tbaa !426
  %13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 10, !dbg !1658
  %14 = bitcast %struct.lua_TValue** %13 to i64*, !dbg !1658
  %15 = load i64, i64* %14, align 8, !dbg !1658, !tbaa !608
  %16 = sub i64 %12, %15, !dbg !1658
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 27, !dbg !1659
  %18 = load i64, i64* %17, align 8, !dbg !1659, !tbaa !560
  %19 = call i32 @luaD_pcall(%struct.lua_State* %0, void (%struct.lua_State*, i8*)* nonnull @f_parser, i8* nonnull %5, i64 %16, i64 %18) #9, !dbg !1660
  %20 = load i8*, i8** %8, align 8, !dbg !1662, !tbaa !1656
  %21 = load i64, i64* %9, align 8, !dbg !1662, !tbaa !1657
  %22 = call i8* @luaM_realloc_(%struct.lua_State* %0, i8* %20, i64 %21, i64 0) #6, !dbg !1662
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %5) #8, !dbg !1663
  ret i32 %19, !dbg !1664
}

; Function Attrs: noredzone nounwind
define internal void @f_parser(%struct.lua_State*, i8*) #0 !dbg !1665 {
  %3 = bitcast i8* %1 to %struct.Zio**, !dbg !1681
  %4 = load %struct.Zio*, %struct.Zio** %3, align 8, !dbg !1681, !tbaa !1650
  %5 = tail call i32 @luaZ_lookahead(%struct.Zio* %4) #6, !dbg !1682
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1684
  %7 = load %struct.global_State*, %struct.global_State** %6, align 8, !dbg !1684, !tbaa !466
  %8 = getelementptr inbounds %struct.global_State, %struct.global_State* %7, i64 0, i32 14, !dbg !1684
  %9 = load i64, i64* %8, align 8, !dbg !1684, !tbaa !984
  %10 = getelementptr inbounds %struct.global_State, %struct.global_State* %7, i64 0, i32 13, !dbg !1684
  %11 = load i64, i64* %10, align 8, !dbg !1684, !tbaa !985
  %12 = icmp ult i64 %9, %11, !dbg !1684
  br i1 %12, label %14, label %13, !dbg !1687

; <label>:13:                                     ; preds = %2
  tail call void @luaC_step(%struct.lua_State* nonnull %0) #6, !dbg !1684
  br label %14, !dbg !1684

; <label>:14:                                     ; preds = %2, %13
  %15 = load %struct.Zio*, %struct.Zio** %3, align 8, !dbg !1688, !tbaa !1650
  %16 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !1689
  %17 = bitcast i8* %16 to %struct.Mbuffer*, !dbg !1689
  %18 = getelementptr inbounds i8, i8* %1, i64 32, !dbg !1690
  %19 = bitcast i8* %18 to i8**, !dbg !1690
  %20 = load i8*, i8** %19, align 8, !dbg !1690, !tbaa !1654
  %21 = tail call %struct.Proto* @luaY_parser(%struct.lua_State* nonnull %0, %struct.Zio* %15, %struct.Mbuffer* nonnull %17, i8* %20) #6, !dbg !1691
  %22 = getelementptr inbounds %struct.Proto, %struct.Proto* %21, i64 0, i32 19, !dbg !1693
  %23 = load i8, i8* %22, align 8, !dbg !1693, !tbaa !1694
  %24 = zext i8 %23 to i32, !dbg !1695
  %25 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, i32 0, i32 0, !dbg !1696
  %26 = bitcast %union.GCObject** %25 to %struct.Table**, !dbg !1696
  %27 = load %struct.Table*, %struct.Table** %26, align 8, !dbg !1696, !tbaa !419
  %28 = tail call %union.Closure* @luaF_newLclosure(%struct.lua_State* nonnull %0, i32 %24, %struct.Table* %27) #6, !dbg !1697
  %29 = getelementptr inbounds %union.Closure, %union.Closure* %28, i64 0, i32 0, i32 7, !dbg !1699
  %30 = bitcast i32 (%struct.lua_State*)** %29 to %struct.Proto**, !dbg !1699
  store %struct.Proto* %21, %struct.Proto** %30, align 8, !dbg !1700, !tbaa !419
  %31 = load i8, i8* %22, align 8, !dbg !1702, !tbaa !1694
  %32 = icmp eq i8 %31, 0, !dbg !1705
  br i1 %32, label %44, label %33, !dbg !1706

; <label>:33:                                     ; preds = %14
  %34 = getelementptr inbounds %union.Closure, %union.Closure* %28, i64 0, i32 0, i32 8
  %35 = bitcast [1 x %struct.lua_TValue]* %34 to [1 x %struct.UpVal*]*
  br label %36, !dbg !1706

; <label>:36:                                     ; preds = %33, %36
  %37 = phi i64 [ 0, %33 ], [ %40, %36 ]
  %38 = tail call %struct.UpVal* @luaF_newupval(%struct.lua_State* %0) #6, !dbg !1707
  %39 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %35, i64 0, i64 %37, !dbg !1708
  store %struct.UpVal* %38, %struct.UpVal** %39, align 8, !dbg !1709, !tbaa !419
  %40 = add nuw nsw i64 %37, 1, !dbg !1710
  %41 = load i8, i8* %22, align 8, !dbg !1702, !tbaa !1694
  %42 = zext i8 %41 to i64, !dbg !1705
  %43 = icmp ult i64 %40, %42, !dbg !1705
  br i1 %43, label %36, label %44, !dbg !1706, !llvm.loop !1711

; <label>:44:                                     ; preds = %36, %14
  %45 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1713
  %46 = load %struct.lua_TValue*, %struct.lua_TValue** %45, align 8, !dbg !1713, !tbaa !426
  %47 = bitcast %struct.lua_TValue* %46 to %union.Closure**, !dbg !1713
  store %union.Closure* %28, %union.Closure** %47, align 8, !dbg !1713, !tbaa !419
  %48 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %46, i64 0, i32 1, !dbg !1713
  store i32 6, i32* %48, align 8, !dbg !1713, !tbaa !433
  %49 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 9, !dbg !1714
  %50 = bitcast %struct.lua_TValue** %49 to i64*, !dbg !1714
  %51 = load i64, i64* %50, align 8, !dbg !1714, !tbaa !620
  %52 = bitcast %struct.lua_TValue** %45 to i64*, !dbg !1714
  %53 = load i64, i64* %52, align 8, !dbg !1714, !tbaa !426
  %54 = sub i64 %51, %53, !dbg !1714
  %55 = icmp slt i64 %54, 17, !dbg !1714
  br i1 %55, label %56, label %64, !dbg !1717

; <label>:56:                                     ; preds = %44
  %57 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 13, !dbg !1721
  %58 = load i32, i32* %57, align 8, !dbg !1721, !tbaa !613
  %59 = icmp slt i32 %58, 1, !dbg !1722
  br i1 %59, label %62, label %60, !dbg !1723

; <label>:60:                                     ; preds = %56
  %61 = shl nsw i32 %58, 1, !dbg !1724
  tail call void @luaD_reallocstack(%struct.lua_State* nonnull %0, i32 %61) #6, !dbg !1725
  br label %64, !dbg !1725

; <label>:62:                                     ; preds = %56
  %63 = add nsw i32 %58, 1, !dbg !1726
  tail call void @luaD_reallocstack(%struct.lua_State* nonnull %0, i32 %63) #6, !dbg !1727
  br label %64

; <label>:64:                                     ; preds = %62, %60, %44
  %65 = load %struct.lua_TValue*, %struct.lua_TValue** %45, align 8, !dbg !1717, !tbaa !426
  %66 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %65, i64 1, !dbg !1717
  store %struct.lua_TValue* %66, %struct.lua_TValue** %45, align 8, !dbg !1717, !tbaa !426
  ret void, !dbg !1728
}

; Function Attrs: noredzone
declare hidden %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State*, %struct.lua_TValue*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden void @luaG_typeerror(%struct.lua_State*, %struct.lua_TValue*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden %struct.Table* @luaH_new(%struct.lua_State*, i32, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden %struct.lua_TValue* @luaH_setnum(%struct.lua_State*, %struct.Table*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden %struct.lua_TValue* @luaH_setstr(%struct.lua_State*, %struct.Table*, %union.TString*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden i32 @luaZ_lookahead(%struct.Zio*) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden %struct.Proto* @luaY_parser(%struct.lua_State*, %struct.Zio*, %struct.Mbuffer*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden %union.Closure* @luaF_newLclosure(%struct.lua_State*, i32, %struct.Table*) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden %struct.UpVal* @luaF_newupval(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone speculatable }
attributes #6 = { nobuiltin noredzone nounwind }
attributes #7 = { nobuiltin noredzone noreturn nounwind }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin noredzone }

!llvm.module.flags = !{!390, !391, !392}
!llvm.ident = !{!393}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !25)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/ldo.c", directory: "/root/.unikraft/apps/redis/build")
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
!25 = !{!26, !38, !90, !64, !238, !194, !104, !52, !101, !157, !370}
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCObject", file: !28, line: 36, baseType: !29)
!28 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lobject.h", directory: "/root/.unikraft/apps/redis/build")
!29 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "GCObject", file: !30, line: 136, size: 1472, elements: !31)
!30 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lstate.h", directory: "/root/.unikraft/apps/redis/build")
!31 = !{!32, !42, !69, !129, !366, !367, !368, !369}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "gch", scope: !29, file: !30, line: 137, baseType: !33, size: 128)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCheader", file: !28, line: 51, baseType: !34)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GCheader", file: !28, line: 49, size: 128, elements: !35)
!35 = !{!36, !37, !41}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !34, file: !28, line: 50, baseType: !26, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !34, file: !28, line: 50, baseType: !38, size: 8, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "lu_byte", file: !39, line: 27, baseType: !40)
!39 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/llimits.h", directory: "/root/.unikraft/apps/redis/build")
!40 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !34, file: !28, line: 50, baseType: !38, size: 8, offset: 72)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !29, file: !30, line: 138, baseType: !43, size: 192)
!43 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "TString", file: !28, line: 199, size: 192, elements: !44)
!44 = !{!45, !55}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !43, file: !28, line: 200, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "L_Umaxalign", file: !39, line: 47, baseType: !47)
!47 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !39, line: 47, size: 64, elements: !48)
!48 = !{!49, !51, !53}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !47, file: !39, line: 47, baseType: !50, size: 64)
!50 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !47, file: !39, line: 47, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !47, file: !39, line: 47, baseType: !54, size: 64)
!54 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "tsv", scope: !43, file: !28, line: 206, baseType: !56, size: 192)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !43, file: !28, line: 201, size: 192, elements: !57)
!57 = !{!58, !59, !60, !61, !62, !63}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !56, file: !28, line: 202, baseType: !26, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !56, file: !28, line: 202, baseType: !38, size: 8, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !56, file: !28, line: 202, baseType: !38, size: 8, offset: 72)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !56, file: !28, line: 203, baseType: !38, size: 8, offset: 80)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !56, file: !28, line: 204, baseType: !5, size: 32, offset: 96)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !56, file: !28, line: 205, baseType: !64, size: 64, offset: 128)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !65, line: 40, baseType: !66)
!65 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !67, line: 129, baseType: !68)
!67 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!68 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !29, file: !30, line: 139, baseType: !70, size: 320)
!70 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "Udata", file: !28, line: 215, size: 320, elements: !71)
!71 = !{!72, !73}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !70, file: !28, line: 216, baseType: !46, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "uv", scope: !70, file: !28, line: 222, baseType: !74, size: 320)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !70, file: !28, line: 217, size: 320, elements: !75)
!75 = !{!76, !77, !78, !79, !127, !128}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !74, file: !28, line: 218, baseType: !26, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !74, file: !28, line: 218, baseType: !38, size: 8, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !74, file: !28, line: 218, baseType: !38, size: 8, offset: 72)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "metatable", scope: !74, file: !28, line: 219, baseType: !80, size: 64, offset: 128)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Table", file: !28, line: 338, size: 512, elements: !82)
!82 = !{!83, !84, !85, !86, !87, !88, !89, !106, !124, !125, !126}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !81, file: !28, line: 339, baseType: !26, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !81, file: !28, line: 339, baseType: !38, size: 8, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !81, file: !28, line: 339, baseType: !38, size: 8, offset: 72)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !81, file: !28, line: 340, baseType: !38, size: 8, offset: 80)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "lsizenode", scope: !81, file: !28, line: 341, baseType: !38, size: 8, offset: 88)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "metatable", scope: !81, file: !28, line: 342, baseType: !80, size: 64, offset: 128)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "array", scope: !81, file: !28, line: 343, baseType: !90, size: 64, offset: 192)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "TValue", file: !28, line: 75, baseType: !92)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lua_TValue", file: !28, line: 73, size: 128, elements: !93)
!93 = !{!94, !105}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !92, file: !28, line: 74, baseType: !95, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "Value", file: !28, line: 64, baseType: !96)
!96 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !28, line: 59, size: 64, elements: !97)
!97 = !{!98, !99, !100, !103}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !96, file: !28, line: 60, baseType: !26, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !96, file: !28, line: 61, baseType: !52, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !96, file: !28, line: 62, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Number", file: !102, line: 99, baseType: !50)
!102 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lua.h", directory: "/root/.unikraft/apps/redis/build")
!103 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !96, file: !28, line: 63, baseType: !104, size: 32)
!104 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !92, file: !28, line: 74, baseType: !104, size: 32, offset: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !81, file: !28, line: 344, baseType: !107, size: 64, offset: 256)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "Node", file: !28, line: 335, baseType: !109)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Node", file: !28, line: 332, size: 320, elements: !110)
!110 = !{!111, !112}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "i_val", scope: !109, file: !28, line: 333, baseType: !91, size: 128)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "i_key", scope: !109, file: !28, line: 334, baseType: !113, size: 192, offset: 128)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "TKey", file: !28, line: 329, baseType: !114)
!114 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "TKey", file: !28, line: 323, size: 192, elements: !115)
!115 = !{!116, !123}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "nk", scope: !114, file: !28, line: 327, baseType: !117, size: 192)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !114, file: !28, line: 324, size: 192, elements: !118)
!118 = !{!119, !120, !121}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !117, file: !28, line: 325, baseType: !95, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !117, file: !28, line: 325, baseType: !104, size: 32, offset: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !117, file: !28, line: 326, baseType: !122, size: 64, offset: 128)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "tvk", scope: !114, file: !28, line: 328, baseType: !91, size: 128)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "lastfree", scope: !81, file: !28, line: 345, baseType: !107, size: 64, offset: 320)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !81, file: !28, line: 346, baseType: !26, size: 64, offset: 384)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "sizearray", scope: !81, file: !28, line: 347, baseType: !104, size: 32, offset: 448)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !74, file: !28, line: 220, baseType: !80, size: 64, offset: 192)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !74, file: !28, line: 221, baseType: !64, size: 64, offset: 256)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !29, file: !30, line: 140, baseType: !130, size: 448)
!130 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "Closure", file: !28, line: 309, size: 448, elements: !131)
!131 = !{!132, !315}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !130, file: !28, line: 310, baseType: !133, size: 448)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "CClosure", file: !28, line: 299, baseType: !134)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CClosure", file: !28, line: 295, size: 448, elements: !135)
!135 = !{!136, !137, !138, !139, !140, !141, !142, !143, !311}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !134, file: !28, line: 296, baseType: !26, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !134, file: !28, line: 296, baseType: !38, size: 8, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !134, file: !28, line: 296, baseType: !38, size: 8, offset: 72)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "isC", scope: !134, file: !28, line: 296, baseType: !38, size: 8, offset: 80)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "nupvalues", scope: !134, file: !28, line: 296, baseType: !38, size: 8, offset: 88)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !134, file: !28, line: 296, baseType: !26, size: 64, offset: 128)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !134, file: !28, line: 296, baseType: !80, size: 64, offset: 192)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !134, file: !28, line: 297, baseType: !144, size: 64, offset: 256)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_CFunction", file: !102, line: 52, baseType: !145)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DISubroutineType(types: !147)
!147 = !{!104, !148}
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_State", file: !102, line: 50, baseType: !150)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lua_State", file: !30, line: 100, size: 1472, elements: !151)
!151 = !{!152, !153, !154, !155, !156, !158, !159, !237, !251, !252, !253, !254, !255, !256, !257, !258, !260, !261, !262, !263, !264, !265, !290, !291, !292, !293, !294, !308}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !150, file: !30, line: 101, baseType: !26, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !150, file: !30, line: 101, baseType: !38, size: 8, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !150, file: !30, line: 101, baseType: !38, size: 8, offset: 72)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !150, file: !30, line: 102, baseType: !38, size: 8, offset: 80)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !150, file: !30, line: 103, baseType: !157, size: 64, offset: 128)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "StkId", file: !28, line: 193, baseType: !90)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !150, file: !30, line: 104, baseType: !157, size: 64, offset: 192)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "l_G", scope: !150, file: !30, line: 105, baseType: !160, size: 64, offset: 256)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "global_State", file: !30, line: 94, baseType: !162)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "global_State", file: !30, line: 68, size: 3456, elements: !163)
!163 = !{!164, !173, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !198, !200, !201, !202, !203, !204, !205, !206, !207, !209, !227, !231}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "strt", scope: !162, file: !30, line: 69, baseType: !165, size: 128)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "stringtable", file: !30, line: 42, baseType: !166)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stringtable", file: !30, line: 38, size: 128, elements: !167)
!167 = !{!168, !170, !172}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !166, file: !30, line: 39, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "nuse", scope: !166, file: !30, line: 40, baseType: !171, size: 32, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "lu_int32", file: !39, line: 18, baseType: !5)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !166, file: !30, line: 41, baseType: !104, size: 32, offset: 96)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "frealloc", scope: !162, file: !30, line: 70, baseType: !174, size: 64, offset: 128)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Alloc", file: !102, line: 66, baseType: !175)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DISubroutineType(types: !177)
!177 = !{!52, !52, !52, !64, !64}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "ud", scope: !162, file: !30, line: 71, baseType: !52, size: 64, offset: 192)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "currentwhite", scope: !162, file: !30, line: 72, baseType: !38, size: 8, offset: 256)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "gcstate", scope: !162, file: !30, line: 73, baseType: !38, size: 8, offset: 264)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "sweepstrgc", scope: !162, file: !30, line: 74, baseType: !104, size: 32, offset: 288)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "rootgc", scope: !162, file: !30, line: 75, baseType: !26, size: 64, offset: 320)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "sweepgc", scope: !162, file: !30, line: 76, baseType: !169, size: 64, offset: 384)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "gray", scope: !162, file: !30, line: 77, baseType: !26, size: 64, offset: 448)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "grayagain", scope: !162, file: !30, line: 78, baseType: !26, size: 64, offset: 512)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "weak", scope: !162, file: !30, line: 79, baseType: !26, size: 64, offset: 576)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "tmudata", scope: !162, file: !30, line: 80, baseType: !26, size: 64, offset: 640)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "buff", scope: !162, file: !30, line: 81, baseType: !189, size: 192, offset: 704)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "Mbuffer", file: !190, line: 28, baseType: !191)
!190 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lzio.h", directory: "/root/.unikraft/apps/redis/build")
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Mbuffer", file: !190, line: 24, size: 192, elements: !192)
!192 = !{!193, !196, !197}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !191, file: !190, line: 25, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !191, file: !190, line: 26, baseType: !64, size: 64, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "buffsize", scope: !191, file: !190, line: 27, baseType: !64, size: 64, offset: 128)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "GCthreshold", scope: !162, file: !30, line: 82, baseType: !199, size: 64, offset: 896)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "lu_mem", file: !39, line: 20, baseType: !64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "totalbytes", scope: !162, file: !30, line: 83, baseType: !199, size: 64, offset: 960)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "estimate", scope: !162, file: !30, line: 84, baseType: !199, size: 64, offset: 1024)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "gcdept", scope: !162, file: !30, line: 85, baseType: !199, size: 64, offset: 1088)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "gcpause", scope: !162, file: !30, line: 86, baseType: !104, size: 32, offset: 1152)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "gcstepmul", scope: !162, file: !30, line: 87, baseType: !104, size: 32, offset: 1184)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "panic", scope: !162, file: !30, line: 88, baseType: !144, size: 64, offset: 1216)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "l_registry", scope: !162, file: !30, line: 89, baseType: !91, size: 128, offset: 1280)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "mainthread", scope: !162, file: !30, line: 90, baseType: !208, size: 64, offset: 1408)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "uvhead", scope: !162, file: !30, line: 91, baseType: !210, size: 320, offset: 1472)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "UpVal", file: !28, line: 284, baseType: !211)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "UpVal", file: !28, line: 274, size: 320, elements: !212)
!212 = !{!213, !214, !215, !216, !217}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !211, file: !28, line: 275, baseType: !26, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !211, file: !28, line: 275, baseType: !38, size: 8, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !211, file: !28, line: 275, baseType: !38, size: 8, offset: 72)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !211, file: !28, line: 276, baseType: !90, size: 64, offset: 128)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !211, file: !28, line: 283, baseType: !218, size: 128, offset: 192)
!218 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !211, file: !28, line: 277, size: 128, elements: !219)
!219 = !{!220, !221}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !218, file: !28, line: 278, baseType: !91, size: 128)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !218, file: !28, line: 282, baseType: !222, size: 128)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !218, file: !28, line: 279, size: 128, elements: !223)
!223 = !{!224, !226}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !222, file: !28, line: 280, baseType: !225, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !222, file: !28, line: 281, baseType: !225, size: 64, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "mt", scope: !162, file: !30, line: 92, baseType: !228, size: 576, offset: 1792)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 576, elements: !229)
!229 = !{!230}
!230 = !DISubrange(count: 9)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "tmname", scope: !162, file: !30, line: 93, baseType: !232, size: 1088, offset: 2368)
!232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 1088, elements: !235)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "TString", file: !28, line: 207, baseType: !43)
!235 = !{!236}
!236 = !DISubrange(count: 17)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "ci", scope: !150, file: !30, line: 106, baseType: !238, size: 64, offset: 320)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "CallInfo", file: !30, line: 55, baseType: !240)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CallInfo", file: !30, line: 48, size: 320, elements: !241)
!241 = !{!242, !243, !244, !245, !249, !250}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !240, file: !30, line: 49, baseType: !157, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !240, file: !30, line: 50, baseType: !157, size: 64, offset: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !240, file: !30, line: 51, baseType: !157, size: 64, offset: 128)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "savedpc", scope: !240, file: !30, line: 52, baseType: !246, size: 64, offset: 192)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !248)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "Instruction", file: !39, line: 88, baseType: !171)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "nresults", scope: !240, file: !30, line: 53, baseType: !104, size: 32, offset: 256)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "tailcalls", scope: !240, file: !30, line: 54, baseType: !104, size: 32, offset: 288)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "savedpc", scope: !150, file: !30, line: 107, baseType: !246, size: 64, offset: 384)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "stack_last", scope: !150, file: !30, line: 108, baseType: !157, size: 64, offset: 448)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !150, file: !30, line: 109, baseType: !157, size: 64, offset: 512)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "end_ci", scope: !150, file: !30, line: 110, baseType: !238, size: 64, offset: 576)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "base_ci", scope: !150, file: !30, line: 111, baseType: !238, size: 64, offset: 640)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "stacksize", scope: !150, file: !30, line: 112, baseType: !104, size: 32, offset: 704)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "size_ci", scope: !150, file: !30, line: 113, baseType: !104, size: 32, offset: 736)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "nCcalls", scope: !150, file: !30, line: 114, baseType: !259, size: 16, offset: 768)
!259 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "baseCcalls", scope: !150, file: !30, line: 115, baseType: !259, size: 16, offset: 784)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "hookmask", scope: !150, file: !30, line: 116, baseType: !38, size: 8, offset: 800)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "allowhook", scope: !150, file: !30, line: 117, baseType: !38, size: 8, offset: 808)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "basehookcount", scope: !150, file: !30, line: 118, baseType: !104, size: 32, offset: 832)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "hookcount", scope: !150, file: !30, line: 119, baseType: !104, size: 32, offset: 864)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "hook", scope: !150, file: !30, line: 120, baseType: !266, size: 64, offset: 896)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Hook", file: !102, line: 330, baseType: !267)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DISubroutineType(types: !269)
!269 = !{null, !148, !270}
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Debug", file: !102, line: 326, baseType: !272)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lua_Debug", file: !102, line: 346, size: 960, elements: !273)
!273 = !{!274, !275, !278, !279, !280, !281, !282, !283, !284, !285, !289}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !272, file: !102, line: 347, baseType: !104, size: 32)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !272, file: !102, line: 348, baseType: !276, size: 64, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !195)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "namewhat", scope: !272, file: !102, line: 349, baseType: !276, size: 64, offset: 128)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "what", scope: !272, file: !102, line: 350, baseType: !276, size: 64, offset: 192)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !272, file: !102, line: 351, baseType: !276, size: 64, offset: 256)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "currentline", scope: !272, file: !102, line: 352, baseType: !104, size: 32, offset: 320)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "nups", scope: !272, file: !102, line: 353, baseType: !104, size: 32, offset: 352)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "linedefined", scope: !272, file: !102, line: 354, baseType: !104, size: 32, offset: 384)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "lastlinedefined", scope: !272, file: !102, line: 355, baseType: !104, size: 32, offset: 416)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "short_src", scope: !272, file: !102, line: 356, baseType: !286, size: 480, offset: 448)
!286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 480, elements: !287)
!287 = !{!288}
!288 = !DISubrange(count: 60)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "i_ci", scope: !272, file: !102, line: 358, baseType: !104, size: 32, offset: 928)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "l_gt", scope: !150, file: !30, line: 121, baseType: !91, size: 128, offset: 960)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !150, file: !30, line: 122, baseType: !91, size: 128, offset: 1088)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "openupval", scope: !150, file: !30, line: 123, baseType: !26, size: 64, offset: 1216)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !150, file: !30, line: 124, baseType: !26, size: 64, offset: 1280)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "errorJmp", scope: !150, file: !30, line: 125, baseType: !295, size: 64, offset: 1344)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lua_longjmp", file: !1, line: 44, size: 640, elements: !297)
!297 = !{!298, !299, !306}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !296, file: !1, line: 45, baseType: !295, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !296, file: !1, line: 46, baseType: !300, size: 512, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "jmp_buf", file: !301, line: 372, baseType: !302)
!301 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/setjmp.h", directory: "/root/.unikraft/apps/redis/build")
!302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !303, size: 512, elements: !304)
!303 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!304 = !{!305}
!305 = !DISubrange(count: 8)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !296, file: !1, line: 47, baseType: !307, size: 32, offset: 576)
!307 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !104)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "errfunc", scope: !150, file: !30, line: 126, baseType: !309, size: 64, offset: 1408)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !310, line: 49, baseType: !54)
!310 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!311 = !DIDerivedType(tag: DW_TAG_member, name: "upvalue", scope: !134, file: !28, line: 298, baseType: !312, size: 128, offset: 320)
!312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 128, elements: !313)
!313 = !{!314}
!314 = !DISubrange(count: 1)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !130, file: !28, line: 311, baseType: !316, size: 384)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "LClosure", file: !28, line: 306, baseType: !317)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LClosure", file: !28, line: 302, size: 384, elements: !318)
!318 = !{!319, !320, !321, !322, !323, !324, !325, !326, !363}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !317, file: !28, line: 303, baseType: !26, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !317, file: !28, line: 303, baseType: !38, size: 8, offset: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !317, file: !28, line: 303, baseType: !38, size: 8, offset: 72)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "isC", scope: !317, file: !28, line: 303, baseType: !38, size: 8, offset: 80)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "nupvalues", scope: !317, file: !28, line: 303, baseType: !38, size: 8, offset: 88)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !317, file: !28, line: 303, baseType: !26, size: 64, offset: 128)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !317, file: !28, line: 303, baseType: !80, size: 64, offset: 192)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !317, file: !28, line: 304, baseType: !327, size: 64, offset: 256)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Proto", file: !28, line: 231, size: 960, elements: !329)
!329 = !{!330, !331, !332, !333, !334, !336, !338, !340, !347, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !328, file: !28, line: 232, baseType: !26, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !328, file: !28, line: 232, baseType: !38, size: 8, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !328, file: !28, line: 232, baseType: !38, size: 8, offset: 72)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !328, file: !28, line: 233, baseType: !90, size: 64, offset: 128)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !328, file: !28, line: 234, baseType: !335, size: 64, offset: 192)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !328, file: !28, line: 235, baseType: !337, size: 64, offset: 256)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "lineinfo", scope: !328, file: !28, line: 236, baseType: !339, size: 64, offset: 320)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "locvars", scope: !328, file: !28, line: 237, baseType: !341, size: 64, offset: 384)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LocVar", file: !28, line: 262, size: 128, elements: !343)
!343 = !{!344, !345, !346}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "varname", scope: !342, file: !28, line: 263, baseType: !233, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "startpc", scope: !342, file: !28, line: 264, baseType: !104, size: 32, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "endpc", scope: !342, file: !28, line: 265, baseType: !104, size: 32, offset: 96)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "upvalues", scope: !328, file: !28, line: 238, baseType: !348, size: 64, offset: 448)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !328, file: !28, line: 239, baseType: !233, size: 64, offset: 512)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "sizeupvalues", scope: !328, file: !28, line: 240, baseType: !104, size: 32, offset: 576)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "sizek", scope: !328, file: !28, line: 241, baseType: !104, size: 32, offset: 608)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "sizecode", scope: !328, file: !28, line: 242, baseType: !104, size: 32, offset: 640)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "sizelineinfo", scope: !328, file: !28, line: 243, baseType: !104, size: 32, offset: 672)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "sizep", scope: !328, file: !28, line: 244, baseType: !104, size: 32, offset: 704)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "sizelocvars", scope: !328, file: !28, line: 245, baseType: !104, size: 32, offset: 736)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "linedefined", scope: !328, file: !28, line: 246, baseType: !104, size: 32, offset: 768)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "lastlinedefined", scope: !328, file: !28, line: 247, baseType: !104, size: 32, offset: 800)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !328, file: !28, line: 248, baseType: !26, size: 64, offset: 832)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "nups", scope: !328, file: !28, line: 249, baseType: !38, size: 8, offset: 896)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "numparams", scope: !328, file: !28, line: 250, baseType: !38, size: 8, offset: 904)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "is_vararg", scope: !328, file: !28, line: 251, baseType: !38, size: 8, offset: 912)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "maxstacksize", scope: !328, file: !28, line: 252, baseType: !38, size: 8, offset: 920)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "upvals", scope: !317, file: !28, line: 305, baseType: !364, size: 64, offset: 320)
!364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !365, size: 64, elements: !313)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "h", scope: !29, file: !30, line: 141, baseType: !81, size: 512)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !29, file: !30, line: 142, baseType: !328, size: 960)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "uv", scope: !29, file: !30, line: 143, baseType: !211, size: 320)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "th", scope: !29, file: !30, line: 144, baseType: !150, size: 1472)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SParser", file: !1, line: 485, size: 320, elements: !372)
!372 = !{!373, !388, !389}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !371, file: !1, line: 486, baseType: !374, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZIO", file: !190, line: 18, baseType: !376)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Zio", file: !190, line: 56, size: 320, elements: !377)
!377 = !{!378, !379, !380, !386, !387}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !376, file: !190, line: 57, baseType: !64, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !376, file: !190, line: 58, baseType: !276, size: 64, offset: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "reader", scope: !376, file: !190, line: 59, baseType: !381, size: 64, offset: 128)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Reader", file: !102, line: 58, baseType: !382)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DISubroutineType(types: !384)
!384 = !{!276, !148, !52, !385}
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !376, file: !190, line: 60, baseType: !52, size: 64, offset: 192)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "L", scope: !376, file: !190, line: 61, baseType: !148, size: 64, offset: 256)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "buff", scope: !371, file: !1, line: 487, baseType: !189, size: 192, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !371, file: !1, line: 488, baseType: !276, size: 64, offset: 256)
!390 = !{i32 2, !"Dwarf Version", i32 4}
!391 = !{i32 2, !"Debug Info Version", i32 3}
!392 = !{i32 1, !"wchar_size", i32 4}
!393 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!394 = distinct !DISubprogram(name: "luaD_seterrorobj", scope: !1, file: !1, line: 51, type: !395, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !397)
!395 = !DISubroutineType(types: !396)
!396 = !{null, !148, !104, !157}
!397 = !{!398, !399, !400, !401, !405, !408, !413}
!398 = !DILocalVariable(name: "L", arg: 1, scope: !394, file: !1, line: 51, type: !148)
!399 = !DILocalVariable(name: "errcode", arg: 2, scope: !394, file: !1, line: 51, type: !104)
!400 = !DILocalVariable(name: "oldtop", arg: 3, scope: !394, file: !1, line: 51, type: !157)
!401 = !DILocalVariable(name: "i_o", scope: !402, file: !1, line: 54, type: !90)
!402 = distinct !DILexicalBlock(scope: !403, file: !1, line: 54, column: 7)
!403 = distinct !DILexicalBlock(scope: !404, file: !1, line: 53, column: 22)
!404 = distinct !DILexicalBlock(scope: !394, file: !1, line: 52, column: 20)
!405 = !DILocalVariable(name: "i_o", scope: !406, file: !1, line: 58, type: !90)
!406 = distinct !DILexicalBlock(scope: !407, file: !1, line: 58, column: 7)
!407 = distinct !DILexicalBlock(scope: !404, file: !1, line: 57, column: 22)
!408 = !DILocalVariable(name: "o2", scope: !409, file: !1, line: 63, type: !411)
!409 = distinct !DILexicalBlock(scope: !410, file: !1, line: 63, column: 7)
!410 = distinct !DILexicalBlock(scope: !404, file: !1, line: 62, column: 22)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !91)
!413 = !DILocalVariable(name: "o1", scope: !409, file: !1, line: 63, type: !90)
!414 = !DILocation(line: 51, column: 35, scope: !394)
!415 = !DILocation(line: 51, column: 42, scope: !394)
!416 = !DILocation(line: 51, column: 57, scope: !394)
!417 = !DILocation(line: 52, column: 3, scope: !394)
!418 = !DILocation(line: 54, column: 7, scope: !402)
!419 = !{!420, !420, i64 0}
!420 = !{!"omnipotent char", !421, i64 0}
!421 = !{!"Simple C/C++ TBAA"}
!422 = !DILocation(line: 55, column: 7, scope: !403)
!423 = !DILocation(line: 58, column: 7, scope: !406)
!424 = !DILocation(line: 59, column: 7, scope: !407)
!425 = !DILocation(line: 63, column: 7, scope: !409)
!426 = !{!427, !428, i64 16}
!427 = !{!"lua_State", !428, i64 0, !420, i64 8, !420, i64 9, !420, i64 10, !428, i64 16, !428, i64 24, !428, i64 32, !428, i64 40, !428, i64 48, !428, i64 56, !428, i64 64, !428, i64 72, !428, i64 80, !429, i64 88, !429, i64 92, !430, i64 96, !430, i64 98, !420, i64 100, !420, i64 101, !429, i64 104, !429, i64 108, !428, i64 112, !431, i64 120, !431, i64 136, !428, i64 152, !428, i64 160, !428, i64 168, !432, i64 176}
!428 = !{!"any pointer", !420, i64 0}
!429 = !{!"int", !420, i64 0}
!430 = !{!"short", !420, i64 0}
!431 = !{!"lua_TValue", !420, i64 0, !429, i64 8}
!432 = !{!"long", !420, i64 0}
!433 = !{!431, !429, i64 8}
!434 = !DILocation(line: 64, column: 7, scope: !410)
!435 = !DILocation(line: 0, scope: !402)
!436 = !DILocation(line: 67, column: 19, scope: !394)
!437 = !DILocation(line: 67, column: 6, scope: !394)
!438 = !DILocation(line: 67, column: 10, scope: !394)
!439 = !DILocation(line: 68, column: 1, scope: !394)
!440 = distinct !DISubprogram(name: "luaD_throw", scope: !1, file: !1, line: 94, type: !441, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !443)
!441 = !DISubroutineType(types: !442)
!442 = !{null, !148, !104}
!443 = !{!444, !445}
!444 = !DILocalVariable(name: "L", arg: 1, scope: !440, file: !1, line: 94, type: !148)
!445 = !DILocalVariable(name: "errcode", arg: 2, scope: !440, file: !1, line: 94, type: !104)
!446 = !DILocation(line: 94, column: 29, scope: !440)
!447 = !DILocation(line: 94, column: 36, scope: !440)
!448 = !DILocation(line: 95, column: 10, scope: !449)
!449 = distinct !DILexicalBlock(scope: !440, file: !1, line: 95, column: 7)
!450 = !{!427, !428, i64 168}
!451 = !DILocation(line: 95, column: 7, scope: !449)
!452 = !DILocation(line: 95, column: 7, scope: !440)
!453 = !DILocation(line: 96, column: 18, scope: !454)
!454 = distinct !DILexicalBlock(scope: !449, file: !1, line: 95, column: 20)
!455 = !DILocation(line: 96, column: 25, scope: !454)
!456 = !{!457, !429, i64 72}
!457 = !{!"lua_longjmp", !428, i64 0, !420, i64 8, !429, i64 72}
!458 = !DILocation(line: 97, column: 5, scope: !454)
!459 = !DILocation(line: 100, column: 17, scope: !460)
!460 = distinct !DILexicalBlock(scope: !449, file: !1, line: 99, column: 8)
!461 = !DILocation(line: 100, column: 8, scope: !460)
!462 = !DILocation(line: 100, column: 15, scope: !460)
!463 = !{!427, !420, i64 10}
!464 = !DILocation(line: 101, column: 9, scope: !465)
!465 = distinct !DILexicalBlock(scope: !460, file: !1, line: 101, column: 9)
!466 = !{!427, !428, i64 32}
!467 = !DILocation(line: 101, column: 15, scope: !465)
!468 = !{!469, !428, i64 152}
!469 = !{!"global_State", !470, i64 0, !428, i64 16, !428, i64 24, !420, i64 32, !420, i64 33, !429, i64 36, !428, i64 40, !428, i64 48, !428, i64 56, !428, i64 64, !428, i64 72, !428, i64 80, !471, i64 88, !432, i64 112, !432, i64 120, !432, i64 128, !432, i64 136, !429, i64 144, !429, i64 148, !428, i64 152, !431, i64 160, !428, i64 176, !472, i64 184, !420, i64 224, !420, i64 296}
!470 = !{!"stringtable", !428, i64 0, !429, i64 8, !429, i64 12}
!471 = !{!"Mbuffer", !428, i64 0, !432, i64 8, !432, i64 16}
!472 = !{!"UpVal", !428, i64 0, !420, i64 8, !420, i64 9, !428, i64 16, !420, i64 24}
!473 = !DILocation(line: 101, column: 9, scope: !460)
!474 = !DILocalVariable(name: "L", arg: 1, scope: !475, file: !1, line: 81, type: !148)
!475 = distinct !DISubprogram(name: "resetstack", scope: !1, file: !1, line: 81, type: !441, isLocal: true, isDefinition: true, scopeLine: 81, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !476)
!476 = !{!474, !477}
!477 = !DILocalVariable(name: "status", arg: 2, scope: !475, file: !1, line: 81, type: !104)
!478 = !DILocation(line: 81, column: 36, scope: !475, inlinedAt: !479)
!479 = distinct !DILocation(line: 102, column: 7, scope: !480)
!480 = distinct !DILexicalBlock(scope: !465, file: !1, line: 101, column: 22)
!481 = !DILocation(line: 81, column: 43, scope: !475, inlinedAt: !479)
!482 = !DILocation(line: 82, column: 14, scope: !475, inlinedAt: !479)
!483 = !{!427, !428, i64 80}
!484 = !DILocation(line: 82, column: 6, scope: !475, inlinedAt: !479)
!485 = !DILocation(line: 82, column: 9, scope: !475, inlinedAt: !479)
!486 = !{!427, !428, i64 40}
!487 = !DILocation(line: 83, column: 20, scope: !475, inlinedAt: !479)
!488 = !{!489, !428, i64 0}
!489 = !{!"CallInfo", !428, i64 0, !428, i64 8, !428, i64 16, !428, i64 24, !429, i64 32, !429, i64 36}
!490 = !DILocation(line: 83, column: 6, scope: !475, inlinedAt: !479)
!491 = !DILocation(line: 83, column: 11, scope: !475, inlinedAt: !479)
!492 = !{!427, !428, i64 24}
!493 = !DILocation(line: 84, column: 3, scope: !475, inlinedAt: !479)
!494 = !DILocation(line: 85, column: 34, scope: !475, inlinedAt: !479)
!495 = !DILocation(line: 51, column: 35, scope: !394, inlinedAt: !496)
!496 = distinct !DILocation(line: 85, column: 3, scope: !475, inlinedAt: !479)
!497 = !DILocation(line: 51, column: 42, scope: !394, inlinedAt: !496)
!498 = !DILocation(line: 51, column: 57, scope: !394, inlinedAt: !496)
!499 = !DILocation(line: 52, column: 3, scope: !394, inlinedAt: !496)
!500 = !DILocation(line: 54, column: 7, scope: !402, inlinedAt: !496)
!501 = !DILocation(line: 55, column: 7, scope: !403, inlinedAt: !496)
!502 = !DILocation(line: 58, column: 7, scope: !406, inlinedAt: !496)
!503 = !DILocation(line: 59, column: 7, scope: !407, inlinedAt: !496)
!504 = !DILocation(line: 63, column: 7, scope: !409, inlinedAt: !496)
!505 = !DILocation(line: 64, column: 7, scope: !410, inlinedAt: !496)
!506 = !DILocation(line: 0, scope: !480)
!507 = !DILocation(line: 67, column: 19, scope: !394, inlinedAt: !496)
!508 = !DILocation(line: 67, column: 6, scope: !394, inlinedAt: !496)
!509 = !DILocation(line: 67, column: 10, scope: !394, inlinedAt: !496)
!510 = !DILocation(line: 86, column: 19, scope: !475, inlinedAt: !479)
!511 = !{!427, !430, i64 98}
!512 = !DILocation(line: 86, column: 6, scope: !475, inlinedAt: !479)
!513 = !DILocation(line: 86, column: 14, scope: !475, inlinedAt: !479)
!514 = !{!427, !430, i64 96}
!515 = !DILocation(line: 87, column: 6, scope: !475, inlinedAt: !479)
!516 = !DILocation(line: 87, column: 16, scope: !475, inlinedAt: !479)
!517 = !{!427, !420, i64 101}
!518 = !DILocalVariable(name: "L", arg: 1, scope: !519, file: !1, line: 71, type: !148)
!519 = distinct !DISubprogram(name: "restore_stack_limit", scope: !1, file: !1, line: 71, type: !520, isLocal: true, isDefinition: true, scopeLine: 71, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !522)
!520 = !DISubroutineType(types: !521)
!521 = !{null, !148}
!522 = !{!518, !523}
!523 = !DILocalVariable(name: "inuse", scope: !524, file: !1, line: 74, type: !104)
!524 = distinct !DILexicalBlock(scope: !525, file: !1, line: 73, column: 35)
!525 = distinct !DILexicalBlock(scope: !519, file: !1, line: 73, column: 7)
!526 = !DILocation(line: 71, column: 45, scope: !519, inlinedAt: !527)
!527 = distinct !DILocation(line: 88, column: 3, scope: !475, inlinedAt: !479)
!528 = !DILocation(line: 73, column: 10, scope: !525, inlinedAt: !527)
!529 = !{!427, !429, i64 92}
!530 = !DILocation(line: 73, column: 18, scope: !525, inlinedAt: !527)
!531 = !DILocation(line: 73, column: 7, scope: !519, inlinedAt: !527)
!532 = !DILocation(line: 74, column: 17, scope: !524, inlinedAt: !527)
!533 = !DILocation(line: 74, column: 9, scope: !524, inlinedAt: !527)
!534 = !DILocation(line: 75, column: 19, scope: !535, inlinedAt: !527)
!535 = distinct !DILexicalBlock(scope: !524, file: !1, line: 75, column: 9)
!536 = !DILocation(line: 75, column: 9, scope: !524, inlinedAt: !527)
!537 = !DILocalVariable(name: "L", arg: 1, scope: !538, file: !1, line: 152, type: !148)
!538 = distinct !DISubprogram(name: "luaD_reallocCI", scope: !1, file: !1, line: 152, type: !441, isLocal: false, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !539)
!539 = !{!537, !540, !541}
!540 = !DILocalVariable(name: "newsize", arg: 2, scope: !538, file: !1, line: 152, type: !104)
!541 = !DILocalVariable(name: "oldci", scope: !538, file: !1, line: 153, type: !238)
!542 = !DILocation(line: 152, column: 33, scope: !538, inlinedAt: !543)
!543 = distinct !DILocation(line: 76, column: 7, scope: !535, inlinedAt: !527)
!544 = !DILocation(line: 152, column: 40, scope: !538, inlinedAt: !543)
!545 = !DILocation(line: 154, column: 3, scope: !538, inlinedAt: !543)
!546 = !DILocation(line: 153, column: 13, scope: !538, inlinedAt: !543)
!547 = !DILocation(line: 155, column: 14, scope: !538, inlinedAt: !543)
!548 = !DILocation(line: 156, column: 15, scope: !538, inlinedAt: !543)
!549 = !DILocation(line: 156, column: 18, scope: !538, inlinedAt: !543)
!550 = !DILocation(line: 156, column: 32, scope: !538, inlinedAt: !543)
!551 = !DILocation(line: 156, column: 27, scope: !538, inlinedAt: !543)
!552 = !DILocation(line: 156, column: 9, scope: !538, inlinedAt: !543)
!553 = !DILocation(line: 157, column: 39, scope: !538, inlinedAt: !543)
!554 = !DILocation(line: 157, column: 6, scope: !538, inlinedAt: !543)
!555 = !DILocation(line: 157, column: 13, scope: !538, inlinedAt: !543)
!556 = !{!427, !428, i64 72}
!557 = !DILocation(line: 76, column: 7, scope: !535, inlinedAt: !527)
!558 = !DILocation(line: 89, column: 6, scope: !475, inlinedAt: !479)
!559 = !DILocation(line: 89, column: 14, scope: !475, inlinedAt: !479)
!560 = !{!427, !432, i64 176}
!561 = !DILocation(line: 90, column: 15, scope: !475, inlinedAt: !479)
!562 = !DILocation(line: 104, column: 7, scope: !480)
!563 = !DILocation(line: 104, column: 13, scope: !480)
!564 = !DILocation(line: 105, column: 5, scope: !480)
!565 = !DILocation(line: 106, column: 5, scope: !460)
!566 = distinct !DISubprogram(name: "luaD_rawrunprotected", scope: !1, file: !1, line: 111, type: !567, isLocal: false, isDefinition: true, scopeLine: 111, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !574)
!567 = !DISubroutineType(types: !568)
!568 = !{!104, !148, !569, !52}
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "Pfunc", file: !570, line: 38, baseType: !571)
!570 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/ldo.h", directory: "/root/.unikraft/apps/redis/build")
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DISubroutineType(types: !573)
!573 = !{null, !148, !52}
!574 = !{!575, !576, !577, !578}
!575 = !DILocalVariable(name: "L", arg: 1, scope: !566, file: !1, line: 111, type: !148)
!576 = !DILocalVariable(name: "f", arg: 2, scope: !566, file: !1, line: 111, type: !569)
!577 = !DILocalVariable(name: "ud", arg: 3, scope: !566, file: !1, line: 111, type: !52)
!578 = !DILocalVariable(name: "lj", scope: !566, file: !1, line: 112, type: !296)
!579 = !DILocation(line: 111, column: 38, scope: !566)
!580 = !DILocation(line: 111, column: 47, scope: !566)
!581 = !DILocation(line: 111, column: 56, scope: !566)
!582 = !DILocation(line: 112, column: 3, scope: !566)
!583 = !DILocation(line: 113, column: 6, scope: !566)
!584 = !DILocation(line: 113, column: 13, scope: !566)
!585 = !DILocation(line: 114, column: 20, scope: !566)
!586 = !DILocation(line: 114, column: 15, scope: !566)
!587 = !{!457, !428, i64 0}
!588 = !DILocation(line: 115, column: 15, scope: !566)
!589 = !DILocation(line: 116, column: 3, scope: !590)
!590 = distinct !DILexicalBlock(scope: !566, file: !1, line: 116, column: 3)
!591 = !DILocation(line: 116, column: 3, scope: !566)
!592 = !DILocation(line: 116, column: 3, scope: !593)
!593 = distinct !DILexicalBlock(scope: !590, file: !1, line: 116, column: 3)
!594 = !DILocation(line: 119, column: 20, scope: !566)
!595 = !DILocation(line: 119, column: 15, scope: !566)
!596 = !DILocation(line: 120, column: 13, scope: !566)
!597 = !DILocation(line: 121, column: 1, scope: !566)
!598 = !DILocation(line: 120, column: 3, scope: !566)
!599 = distinct !DISubprogram(name: "luaD_reallocstack", scope: !1, file: !1, line: 141, type: !441, isLocal: false, isDefinition: true, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !600)
!600 = !{!601, !602, !603, !604}
!601 = !DILocalVariable(name: "L", arg: 1, scope: !599, file: !1, line: 141, type: !148)
!602 = !DILocalVariable(name: "newsize", arg: 2, scope: !599, file: !1, line: 141, type: !104)
!603 = !DILocalVariable(name: "oldstack", scope: !599, file: !1, line: 142, type: !90)
!604 = !DILocalVariable(name: "realsize", scope: !599, file: !1, line: 143, type: !104)
!605 = !DILocation(line: 141, column: 36, scope: !599)
!606 = !DILocation(line: 141, column: 43, scope: !599)
!607 = !DILocation(line: 142, column: 25, scope: !599)
!608 = !{!427, !428, i64 64}
!609 = !DILocation(line: 142, column: 11, scope: !599)
!610 = !DILocation(line: 143, column: 30, scope: !599)
!611 = !DILocation(line: 143, column: 7, scope: !599)
!612 = !DILocation(line: 145, column: 3, scope: !599)
!613 = !{!427, !429, i64 88}
!614 = !DILocation(line: 146, column: 6, scope: !599)
!615 = !DILocation(line: 146, column: 16, scope: !599)
!616 = !DILocation(line: 147, column: 22, scope: !599)
!617 = !DILocation(line: 147, column: 27, scope: !599)
!618 = !DILocation(line: 147, column: 6, scope: !599)
!619 = !DILocation(line: 147, column: 17, scope: !599)
!620 = !{!427, !428, i64 56}
!621 = !DILocalVariable(name: "L", arg: 1, scope: !622, file: !1, line: 126, type: !148)
!622 = distinct !DISubprogram(name: "correctstack", scope: !1, file: !1, line: 126, type: !623, isLocal: true, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !625)
!623 = !DISubroutineType(types: !624)
!624 = !{null, !148, !90}
!625 = !{!621, !626, !627, !628}
!626 = !DILocalVariable(name: "oldstack", arg: 2, scope: !622, file: !1, line: 126, type: !90)
!627 = !DILocalVariable(name: "ci", scope: !622, file: !1, line: 127, type: !238)
!628 = !DILocalVariable(name: "up", scope: !622, file: !1, line: 128, type: !26)
!629 = !DILocation(line: 126, column: 38, scope: !622, inlinedAt: !630)
!630 = distinct !DILocation(line: 148, column: 3, scope: !599)
!631 = !DILocation(line: 126, column: 49, scope: !622, inlinedAt: !630)
!632 = !DILocation(line: 129, column: 16, scope: !622, inlinedAt: !630)
!633 = !DILocation(line: 129, column: 20, scope: !622, inlinedAt: !630)
!634 = !DILocation(line: 129, column: 32, scope: !622, inlinedAt: !630)
!635 = !DILocation(line: 129, column: 10, scope: !622, inlinedAt: !630)
!636 = !DILocation(line: 130, column: 16, scope: !637, inlinedAt: !630)
!637 = distinct !DILexicalBlock(scope: !622, file: !1, line: 130, column: 3)
!638 = !DILocation(line: 128, column: 13, scope: !622, inlinedAt: !630)
!639 = !DILocation(line: 0, scope: !640, inlinedAt: !630)
!640 = distinct !DILexicalBlock(scope: !637, file: !1, line: 130, column: 3)
!641 = !DILocation(line: 130, column: 30, scope: !640, inlinedAt: !630)
!642 = !DILocation(line: 130, column: 3, scope: !637, inlinedAt: !630)
!643 = !DILocation(line: 131, column: 34, scope: !640, inlinedAt: !630)
!644 = !DILocation(line: 131, column: 36, scope: !640, inlinedAt: !630)
!645 = !DILocation(line: 131, column: 48, scope: !640, inlinedAt: !630)
!646 = !DILocation(line: 131, column: 19, scope: !640, inlinedAt: !630)
!647 = !DILocation(line: 130, column: 52, scope: !640, inlinedAt: !630)
!648 = distinct !{!648, !649, !650}
!649 = !DILocation(line: 130, column: 3, scope: !637)
!650 = !DILocation(line: 131, column: 53, scope: !637)
!651 = !DILocation(line: 131, column: 53, scope: !640, inlinedAt: !630)
!652 = !DILocation(line: 132, column: 16, scope: !653, inlinedAt: !630)
!653 = distinct !DILexicalBlock(scope: !622, file: !1, line: 132, column: 3)
!654 = !DILocation(line: 127, column: 13, scope: !622, inlinedAt: !630)
!655 = !DILocation(line: 132, column: 34, scope: !656, inlinedAt: !630)
!656 = distinct !DILexicalBlock(scope: !653, file: !1, line: 132, column: 3)
!657 = !DILocation(line: 132, column: 28, scope: !656, inlinedAt: !630)
!658 = !DILocation(line: 132, column: 3, scope: !653, inlinedAt: !630)
!659 = !DILocation(line: 133, column: 20, scope: !660, inlinedAt: !630)
!660 = distinct !DILexicalBlock(scope: !656, file: !1, line: 132, column: 44)
!661 = !{!489, !428, i64 16}
!662 = !DILocation(line: 133, column: 24, scope: !660, inlinedAt: !630)
!663 = !DILocation(line: 133, column: 36, scope: !660, inlinedAt: !630)
!664 = !DILocation(line: 133, column: 13, scope: !660, inlinedAt: !630)
!665 = !DILocation(line: 134, column: 21, scope: !660, inlinedAt: !630)
!666 = !DILocation(line: 134, column: 26, scope: !660, inlinedAt: !630)
!667 = !DILocation(line: 134, column: 38, scope: !660, inlinedAt: !630)
!668 = !DILocation(line: 134, column: 14, scope: !660, inlinedAt: !630)
!669 = !DILocation(line: 135, column: 21, scope: !660, inlinedAt: !630)
!670 = !{!489, !428, i64 8}
!671 = !DILocation(line: 135, column: 26, scope: !660, inlinedAt: !630)
!672 = !DILocation(line: 135, column: 38, scope: !660, inlinedAt: !630)
!673 = !DILocation(line: 135, column: 14, scope: !660, inlinedAt: !630)
!674 = !DILocation(line: 132, column: 40, scope: !656, inlinedAt: !630)
!675 = distinct !{!675, !676, !677}
!676 = !DILocation(line: 132, column: 3, scope: !653)
!677 = !DILocation(line: 136, column: 3, scope: !653)
!678 = !DILocation(line: 137, column: 17, scope: !622, inlinedAt: !630)
!679 = !DILocation(line: 137, column: 22, scope: !622, inlinedAt: !630)
!680 = !DILocation(line: 137, column: 34, scope: !622, inlinedAt: !630)
!681 = !DILocation(line: 137, column: 11, scope: !622, inlinedAt: !630)
!682 = !DILocation(line: 149, column: 1, scope: !599)
!683 = !DILocation(line: 152, column: 33, scope: !538)
!684 = !DILocation(line: 152, column: 40, scope: !538)
!685 = !DILocation(line: 153, column: 24, scope: !538)
!686 = !DILocation(line: 153, column: 13, scope: !538)
!687 = !DILocation(line: 154, column: 3, scope: !538)
!688 = !DILocation(line: 155, column: 6, scope: !538)
!689 = !DILocation(line: 157, column: 26, scope: !538)
!690 = !DILocation(line: 155, column: 14, scope: !538)
!691 = !DILocation(line: 156, column: 15, scope: !538)
!692 = !DILocation(line: 156, column: 18, scope: !538)
!693 = !DILocation(line: 156, column: 32, scope: !538)
!694 = !DILocation(line: 156, column: 27, scope: !538)
!695 = !DILocation(line: 156, column: 9, scope: !538)
!696 = !DILocation(line: 157, column: 39, scope: !538)
!697 = !DILocation(line: 157, column: 6, scope: !538)
!698 = !DILocation(line: 157, column: 13, scope: !538)
!699 = !DILocation(line: 158, column: 1, scope: !538)
!700 = distinct !DISubprogram(name: "luaD_growstack", scope: !1, file: !1, line: 161, type: !441, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !701)
!701 = !{!702, !703}
!702 = !DILocalVariable(name: "L", arg: 1, scope: !700, file: !1, line: 161, type: !148)
!703 = !DILocalVariable(name: "n", arg: 2, scope: !700, file: !1, line: 161, type: !104)
!704 = !DILocation(line: 161, column: 33, scope: !700)
!705 = !DILocation(line: 161, column: 40, scope: !700)
!706 = !DILocation(line: 162, column: 15, scope: !707)
!707 = distinct !DILexicalBlock(scope: !700, file: !1, line: 162, column: 7)
!708 = !DILocation(line: 162, column: 9, scope: !707)
!709 = !DILocation(line: 162, column: 7, scope: !700)
!710 = !DILocation(line: 163, column: 27, scope: !707)
!711 = !DILocation(line: 163, column: 5, scope: !707)
!712 = !DILocation(line: 165, column: 39, scope: !707)
!713 = !DILocation(line: 165, column: 5, scope: !707)
!714 = !DILocation(line: 166, column: 1, scope: !700)
!715 = distinct !DISubprogram(name: "luaD_callhook", scope: !1, file: !1, line: 181, type: !716, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !718)
!716 = !DISubroutineType(types: !717)
!717 = !{null, !148, !104, !104}
!718 = !{!719, !720, !721, !722, !723, !726, !727}
!719 = !DILocalVariable(name: "L", arg: 1, scope: !715, file: !1, line: 181, type: !148)
!720 = !DILocalVariable(name: "event", arg: 2, scope: !715, file: !1, line: 181, type: !104)
!721 = !DILocalVariable(name: "line", arg: 3, scope: !715, file: !1, line: 181, type: !104)
!722 = !DILocalVariable(name: "hook", scope: !715, file: !1, line: 182, type: !266)
!723 = !DILocalVariable(name: "top", scope: !724, file: !1, line: 184, type: !309)
!724 = distinct !DILexicalBlock(scope: !725, file: !1, line: 183, column: 29)
!725 = distinct !DILexicalBlock(scope: !715, file: !1, line: 183, column: 7)
!726 = !DILocalVariable(name: "ci_top", scope: !724, file: !1, line: 185, type: !309)
!727 = !DILocalVariable(name: "ar", scope: !724, file: !1, line: 186, type: !271)
!728 = !DILocation(line: 181, column: 32, scope: !715)
!729 = !DILocation(line: 181, column: 39, scope: !715)
!730 = !DILocation(line: 181, column: 50, scope: !715)
!731 = !DILocation(line: 182, column: 22, scope: !715)
!732 = !{!427, !428, i64 112}
!733 = !DILocation(line: 182, column: 12, scope: !715)
!734 = !DILocation(line: 183, column: 7, scope: !725)
!735 = !DILocation(line: 183, column: 12, scope: !725)
!736 = !DILocation(line: 183, column: 18, scope: !725)
!737 = !DILocation(line: 183, column: 15, scope: !725)
!738 = !DILocation(line: 183, column: 7, scope: !715)
!739 = !DILocation(line: 184, column: 21, scope: !724)
!740 = !DILocation(line: 184, column: 15, scope: !724)
!741 = !DILocation(line: 185, column: 24, scope: !724)
!742 = !DILocation(line: 185, column: 15, scope: !724)
!743 = !DILocation(line: 186, column: 5, scope: !724)
!744 = !DILocation(line: 187, column: 8, scope: !724)
!745 = !DILocation(line: 187, column: 14, scope: !724)
!746 = !{!747, !429, i64 0}
!747 = !{!"lua_Debug", !429, i64 0, !428, i64 8, !428, i64 16, !428, i64 24, !428, i64 32, !429, i64 40, !429, i64 44, !429, i64 48, !429, i64 52, !420, i64 56, !429, i64 116}
!748 = !DILocation(line: 188, column: 8, scope: !724)
!749 = !DILocation(line: 188, column: 20, scope: !724)
!750 = !{!747, !429, i64 40}
!751 = !DILocation(line: 189, column: 15, scope: !752)
!752 = distinct !DILexicalBlock(scope: !724, file: !1, line: 189, column: 9)
!753 = !DILocation(line: 189, column: 9, scope: !724)
!754 = !DILocation(line: 192, column: 17, scope: !752)
!755 = !DILocation(line: 192, column: 10, scope: !752)
!756 = !DILocation(line: 192, column: 15, scope: !752)
!757 = !DILocation(line: 193, column: 5, scope: !758)
!758 = distinct !DILexicalBlock(scope: !724, file: !1, line: 193, column: 5)
!759 = !DILocation(line: 193, column: 5, scope: !724)
!760 = !DILocation(line: 161, column: 33, scope: !700, inlinedAt: !761)
!761 = distinct !DILocation(line: 193, column: 5, scope: !758)
!762 = !DILocation(line: 161, column: 40, scope: !700, inlinedAt: !761)
!763 = !DILocation(line: 162, column: 15, scope: !707, inlinedAt: !761)
!764 = !DILocation(line: 162, column: 9, scope: !707, inlinedAt: !761)
!765 = !DILocation(line: 162, column: 7, scope: !700, inlinedAt: !761)
!766 = !DILocation(line: 163, column: 27, scope: !707, inlinedAt: !761)
!767 = !DILocation(line: 163, column: 5, scope: !707, inlinedAt: !761)
!768 = !DILocation(line: 165, column: 39, scope: !707, inlinedAt: !761)
!769 = !DILocation(line: 165, column: 5, scope: !707, inlinedAt: !761)
!770 = !DILocation(line: 194, column: 21, scope: !724)
!771 = !DILocation(line: 194, column: 25, scope: !724)
!772 = !DILocation(line: 194, column: 8, scope: !724)
!773 = !DILocation(line: 194, column: 12, scope: !724)
!774 = !DILocation(line: 194, column: 16, scope: !724)
!775 = !DILocation(line: 196, column: 18, scope: !724)
!776 = !DILocation(line: 186, column: 15, scope: !724)
!777 = !DILocation(line: 198, column: 5, scope: !724)
!778 = !DILocation(line: 201, column: 18, scope: !724)
!779 = !DILocation(line: 202, column: 18, scope: !724)
!780 = !DILocation(line: 202, column: 8, scope: !724)
!781 = !DILocation(line: 202, column: 12, scope: !724)
!782 = !DILocation(line: 202, column: 16, scope: !724)
!783 = !DILocation(line: 203, column: 14, scope: !724)
!784 = !DILocation(line: 203, column: 12, scope: !724)
!785 = !DILocation(line: 204, column: 3, scope: !725)
!786 = !DILocation(line: 204, column: 3, scope: !724)
!787 = !DILocation(line: 205, column: 1, scope: !715)
!788 = distinct !DISubprogram(name: "luaD_precall", scope: !1, file: !1, line: 265, type: !789, isLocal: false, isDefinition: true, scopeLine: 265, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !791)
!789 = !DISubroutineType(types: !790)
!790 = !{!104, !148, !157, !104}
!791 = !{!792, !793, !794, !795, !797, !798, !801, !802, !803, !806, !809, !811}
!792 = !DILocalVariable(name: "L", arg: 1, scope: !788, file: !1, line: 265, type: !148)
!793 = !DILocalVariable(name: "func", arg: 2, scope: !788, file: !1, line: 265, type: !157)
!794 = !DILocalVariable(name: "nresults", arg: 3, scope: !788, file: !1, line: 265, type: !104)
!795 = !DILocalVariable(name: "cl", scope: !788, file: !1, line: 266, type: !796)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!797 = !DILocalVariable(name: "funcr", scope: !788, file: !1, line: 267, type: !309)
!798 = !DILocalVariable(name: "ci", scope: !799, file: !1, line: 274, type: !238)
!799 = distinct !DILexicalBlock(scope: !800, file: !1, line: 273, column: 17)
!800 = distinct !DILexicalBlock(scope: !788, file: !1, line: 273, column: 7)
!801 = !DILocalVariable(name: "st", scope: !799, file: !1, line: 275, type: !157)
!802 = !DILocalVariable(name: "base", scope: !799, file: !1, line: 275, type: !157)
!803 = !DILocalVariable(name: "p", scope: !799, file: !1, line: 276, type: !804)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_typedef, name: "Proto", file: !28, line: 253, baseType: !328)
!806 = !DILocalVariable(name: "nargs", scope: !807, file: !1, line: 285, type: !104)
!807 = distinct !DILexicalBlock(scope: !808, file: !1, line: 284, column: 10)
!808 = distinct !DILexicalBlock(scope: !799, file: !1, line: 279, column: 9)
!809 = !DILocalVariable(name: "ci", scope: !810, file: !1, line: 308, type: !238)
!810 = distinct !DILexicalBlock(scope: !800, file: !1, line: 307, column: 8)
!811 = !DILocalVariable(name: "n", scope: !810, file: !1, line: 309, type: !104)
!812 = !DILocation(line: 265, column: 30, scope: !788)
!813 = !DILocation(line: 265, column: 39, scope: !788)
!814 = !DILocation(line: 265, column: 49, scope: !788)
!815 = !DILocation(line: 268, column: 8, scope: !816)
!816 = distinct !DILexicalBlock(scope: !788, file: !1, line: 268, column: 7)
!817 = !DILocation(line: 268, column: 7, scope: !788)
!818 = !DILocation(line: 270, column: 11, scope: !788)
!819 = !DILocalVariable(name: "L", arg: 1, scope: !820, file: !1, line: 244, type: !148)
!820 = distinct !DISubprogram(name: "tryfuncTM", scope: !1, file: !1, line: 244, type: !821, isLocal: true, isDefinition: true, scopeLine: 244, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !823)
!821 = !DISubroutineType(types: !822)
!822 = !{!157, !148, !157}
!823 = !{!819, !824, !825, !826, !827, !828, !832, !833, !835}
!824 = !DILocalVariable(name: "func", arg: 2, scope: !820, file: !1, line: 244, type: !157)
!825 = !DILocalVariable(name: "tm", scope: !820, file: !1, line: 245, type: !411)
!826 = !DILocalVariable(name: "p", scope: !820, file: !1, line: 246, type: !157)
!827 = !DILocalVariable(name: "funcr", scope: !820, file: !1, line: 247, type: !309)
!828 = !DILocalVariable(name: "o2", scope: !829, file: !1, line: 251, type: !411)
!829 = distinct !DILexicalBlock(scope: !830, file: !1, line: 251, column: 35)
!830 = distinct !DILexicalBlock(scope: !831, file: !1, line: 251, column: 3)
!831 = distinct !DILexicalBlock(scope: !820, file: !1, line: 251, column: 3)
!832 = !DILocalVariable(name: "o1", scope: !829, file: !1, line: 251, type: !90)
!833 = !DILocalVariable(name: "o2", scope: !834, file: !1, line: 254, type: !411)
!834 = distinct !DILexicalBlock(scope: !820, file: !1, line: 254, column: 3)
!835 = !DILocalVariable(name: "o1", scope: !834, file: !1, line: 254, type: !90)
!836 = !DILocation(line: 244, column: 36, scope: !820, inlinedAt: !837)
!837 = distinct !DILocation(line: 269, column: 12, scope: !816)
!838 = !DILocation(line: 244, column: 45, scope: !820, inlinedAt: !837)
!839 = !DILocation(line: 245, column: 22, scope: !820, inlinedAt: !837)
!840 = !DILocation(line: 245, column: 17, scope: !820, inlinedAt: !837)
!841 = !DILocation(line: 247, column: 21, scope: !820, inlinedAt: !837)
!842 = !DILocation(line: 247, column: 13, scope: !820, inlinedAt: !837)
!843 = !DILocation(line: 248, column: 8, scope: !844, inlinedAt: !837)
!844 = distinct !DILexicalBlock(scope: !820, file: !1, line: 248, column: 7)
!845 = !DILocation(line: 248, column: 7, scope: !820, inlinedAt: !837)
!846 = !DILocation(line: 249, column: 5, scope: !844, inlinedAt: !837)
!847 = !DILocation(line: 251, column: 15, scope: !831, inlinedAt: !837)
!848 = !DILocation(line: 246, column: 9, scope: !820, inlinedAt: !837)
!849 = !DILocation(line: 251, column: 22, scope: !830, inlinedAt: !837)
!850 = !DILocation(line: 251, column: 3, scope: !831, inlinedAt: !837)
!851 = !DILocation(line: 251, column: 35, scope: !829, inlinedAt: !837)
!852 = distinct !{!852, !853, !854}
!853 = !DILocation(line: 251, column: 3, scope: !831)
!854 = !DILocation(line: 251, column: 35, scope: !831)
!855 = !DILocation(line: 252, column: 3, scope: !856, inlinedAt: !837)
!856 = distinct !DILexicalBlock(scope: !857, file: !1, line: 252, column: 3)
!857 = distinct !DILexicalBlock(scope: !820, file: !1, line: 252, column: 3)
!858 = !DILocation(line: 252, column: 3, scope: !857, inlinedAt: !837)
!859 = !DILocation(line: 161, column: 33, scope: !700, inlinedAt: !860)
!860 = distinct !DILocation(line: 252, column: 3, scope: !856, inlinedAt: !837)
!861 = !DILocation(line: 161, column: 40, scope: !700, inlinedAt: !860)
!862 = !DILocation(line: 162, column: 15, scope: !707, inlinedAt: !860)
!863 = !DILocation(line: 162, column: 9, scope: !707, inlinedAt: !860)
!864 = !DILocation(line: 162, column: 7, scope: !700, inlinedAt: !860)
!865 = !DILocation(line: 163, column: 27, scope: !707, inlinedAt: !860)
!866 = !DILocation(line: 163, column: 5, scope: !707, inlinedAt: !860)
!867 = !DILocation(line: 165, column: 39, scope: !707, inlinedAt: !860)
!868 = !DILocation(line: 165, column: 5, scope: !707, inlinedAt: !860)
!869 = !DILocation(line: 253, column: 10, scope: !820, inlinedAt: !837)
!870 = !DILocation(line: 254, column: 3, scope: !834, inlinedAt: !837)
!871 = !DILocation(line: 269, column: 5, scope: !816)
!872 = !DILocation(line: 267, column: 13, scope: !788)
!873 = !DILocation(line: 271, column: 9, scope: !788)
!874 = !DILocation(line: 266, column: 13, scope: !788)
!875 = !DILocation(line: 272, column: 23, scope: !788)
!876 = !{!427, !428, i64 48}
!877 = !DILocation(line: 272, column: 6, scope: !788)
!878 = !DILocation(line: 272, column: 10, scope: !788)
!879 = !DILocation(line: 272, column: 18, scope: !788)
!880 = !{!489, !428, i64 24}
!881 = !DILocation(line: 273, column: 12, scope: !800)
!882 = !{!883, !420, i64 10}
!883 = !{!"LClosure", !428, i64 0, !420, i64 8, !420, i64 9, !420, i64 10, !420, i64 11, !428, i64 16, !428, i64 24, !428, i64 32, !420, i64 40}
!884 = !DILocation(line: 273, column: 8, scope: !800)
!885 = !DILocation(line: 273, column: 7, scope: !788)
!886 = !DILocation(line: 276, column: 20, scope: !799)
!887 = !{!883, !428, i64 32}
!888 = !DILocation(line: 276, column: 12, scope: !799)
!889 = !DILocation(line: 277, column: 5, scope: !890)
!890 = distinct !DILexicalBlock(scope: !799, file: !1, line: 277, column: 5)
!891 = !{!892, !420, i64 115}
!892 = !{!"Proto", !428, i64 0, !420, i64 8, !420, i64 9, !428, i64 16, !428, i64 24, !428, i64 32, !428, i64 40, !428, i64 48, !428, i64 56, !428, i64 64, !429, i64 72, !429, i64 76, !429, i64 80, !429, i64 84, !429, i64 88, !429, i64 92, !429, i64 96, !429, i64 100, !428, i64 104, !420, i64 112, !420, i64 113, !420, i64 114, !420, i64 115}
!893 = !DILocation(line: 277, column: 5, scope: !799)
!894 = !DILocation(line: 161, column: 33, scope: !700, inlinedAt: !895)
!895 = distinct !DILocation(line: 277, column: 5, scope: !890)
!896 = !DILocation(line: 161, column: 40, scope: !700, inlinedAt: !895)
!897 = !DILocation(line: 162, column: 15, scope: !707, inlinedAt: !895)
!898 = !DILocation(line: 162, column: 9, scope: !707, inlinedAt: !895)
!899 = !DILocation(line: 162, column: 7, scope: !700, inlinedAt: !895)
!900 = !DILocation(line: 163, column: 27, scope: !707, inlinedAt: !895)
!901 = !DILocation(line: 163, column: 5, scope: !707, inlinedAt: !895)
!902 = !DILocation(line: 165, column: 39, scope: !707, inlinedAt: !895)
!903 = !DILocation(line: 165, column: 5, scope: !707, inlinedAt: !895)
!904 = !DILocation(line: 278, column: 12, scope: !799)
!905 = !DILocation(line: 279, column: 13, scope: !808)
!906 = !{!892, !420, i64 114}
!907 = !DILocation(line: 279, column: 10, scope: !808)
!908 = !DILocation(line: 279, column: 9, scope: !799)
!909 = !DILocation(line: 280, column: 19, scope: !910)
!910 = distinct !DILexicalBlock(scope: !808, file: !1, line: 279, column: 24)
!911 = !DILocation(line: 275, column: 15, scope: !799)
!912 = !DILocation(line: 281, column: 14, scope: !913)
!913 = distinct !DILexicalBlock(scope: !910, file: !1, line: 281, column: 11)
!914 = !DILocation(line: 281, column: 30, scope: !913)
!915 = !{!892, !420, i64 113}
!916 = !DILocation(line: 281, column: 25, scope: !913)
!917 = !DILocation(line: 281, column: 18, scope: !913)
!918 = !DILocation(line: 281, column: 11, scope: !910)
!919 = !DILocation(line: 282, column: 16, scope: !913)
!920 = !DILocation(line: 282, column: 9, scope: !913)
!921 = !DILocation(line: 285, column: 19, scope: !807)
!922 = !DILocation(line: 285, column: 43, scope: !807)
!923 = !DILocation(line: 285, column: 11, scope: !807)
!924 = !DILocalVariable(name: "L", arg: 1, scope: !925, file: !1, line: 208, type: !148)
!925 = distinct !DISubprogram(name: "adjust_varargs", scope: !1, file: !1, line: 208, type: !926, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !928)
!926 = !DISubroutineType(types: !927)
!927 = !{!157, !148, !804, !104}
!928 = !{!924, !929, !930, !931, !932, !933, !936, !937, !938, !941, !945, !946, !948, !953, !954}
!929 = !DILocalVariable(name: "p", arg: 2, scope: !925, file: !1, line: 208, type: !804)
!930 = !DILocalVariable(name: "actual", arg: 3, scope: !925, file: !1, line: 208, type: !104)
!931 = !DILocalVariable(name: "i", scope: !925, file: !1, line: 209, type: !104)
!932 = !DILocalVariable(name: "nfixargs", scope: !925, file: !1, line: 210, type: !104)
!933 = !DILocalVariable(name: "htab", scope: !925, file: !1, line: 211, type: !934)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_typedef, name: "Table", file: !28, line: 348, baseType: !81)
!936 = !DILocalVariable(name: "base", scope: !925, file: !1, line: 212, type: !157)
!937 = !DILocalVariable(name: "fixed", scope: !925, file: !1, line: 212, type: !157)
!938 = !DILocalVariable(name: "nvar", scope: !939, file: !1, line: 217, type: !104)
!939 = distinct !DILexicalBlock(scope: !940, file: !1, line: 216, column: 39)
!940 = distinct !DILexicalBlock(scope: !925, file: !1, line: 216, column: 7)
!941 = !DILocalVariable(name: "o2", scope: !942, file: !1, line: 223, type: !411)
!942 = distinct !DILexicalBlock(scope: !943, file: !1, line: 223, column: 7)
!943 = distinct !DILexicalBlock(scope: !944, file: !1, line: 222, column: 5)
!944 = distinct !DILexicalBlock(scope: !939, file: !1, line: 222, column: 5)
!945 = !DILocalVariable(name: "o1", scope: !942, file: !1, line: 223, type: !90)
!946 = !DILocalVariable(name: "i_o", scope: !947, file: !1, line: 225, type: !90)
!947 = distinct !DILexicalBlock(scope: !939, file: !1, line: 225, column: 5)
!948 = !DILocalVariable(name: "o2", scope: !949, file: !1, line: 232, type: !411)
!949 = distinct !DILexicalBlock(scope: !950, file: !1, line: 232, column: 5)
!950 = distinct !DILexicalBlock(scope: !951, file: !1, line: 231, column: 30)
!951 = distinct !DILexicalBlock(scope: !952, file: !1, line: 231, column: 3)
!952 = distinct !DILexicalBlock(scope: !925, file: !1, line: 231, column: 3)
!953 = !DILocalVariable(name: "o1", scope: !949, file: !1, line: 232, type: !90)
!954 = !DILocalVariable(name: "i_o", scope: !955, file: !1, line: 237, type: !90)
!955 = distinct !DILexicalBlock(scope: !956, file: !1, line: 237, column: 5)
!956 = distinct !DILexicalBlock(scope: !957, file: !1, line: 236, column: 13)
!957 = distinct !DILexicalBlock(scope: !925, file: !1, line: 236, column: 7)
!958 = !DILocation(line: 208, column: 41, scope: !925, inlinedAt: !959)
!959 = distinct !DILocation(line: 286, column: 14, scope: !807)
!960 = !DILocation(line: 208, column: 51, scope: !925, inlinedAt: !959)
!961 = !DILocation(line: 208, column: 58, scope: !925, inlinedAt: !959)
!962 = !DILocation(line: 210, column: 21, scope: !925, inlinedAt: !959)
!963 = !DILocation(line: 210, column: 18, scope: !925, inlinedAt: !959)
!964 = !DILocation(line: 210, column: 7, scope: !925, inlinedAt: !959)
!965 = !DILocation(line: 211, column: 10, scope: !925, inlinedAt: !959)
!966 = !DILocation(line: 213, column: 17, scope: !967, inlinedAt: !959)
!967 = distinct !DILexicalBlock(scope: !968, file: !1, line: 213, column: 3)
!968 = distinct !DILexicalBlock(scope: !925, file: !1, line: 213, column: 3)
!969 = !DILocation(line: 213, column: 3, scope: !968, inlinedAt: !959)
!970 = !DILocation(line: 214, column: 5, scope: !967, inlinedAt: !959)
!971 = !DILocation(line: 213, column: 29, scope: !967, inlinedAt: !959)
!972 = distinct !{!972, !973}
!973 = !{!"llvm.loop.unroll.disable"}
!974 = distinct !{!974, !975, !976}
!975 = !DILocation(line: 213, column: 3, scope: !968)
!976 = !DILocation(line: 214, column: 5, scope: !968)
!977 = !DILocation(line: 216, column: 20, scope: !940, inlinedAt: !959)
!978 = !DILocation(line: 216, column: 7, scope: !925, inlinedAt: !959)
!979 = !DILocation(line: 217, column: 23, scope: !939, inlinedAt: !959)
!980 = !DILocation(line: 217, column: 9, scope: !939, inlinedAt: !959)
!981 = !DILocation(line: 219, column: 5, scope: !982, inlinedAt: !959)
!982 = distinct !DILexicalBlock(scope: !983, file: !1, line: 219, column: 5)
!983 = distinct !DILexicalBlock(scope: !939, file: !1, line: 219, column: 5)
!984 = !{!469, !432, i64 120}
!985 = !{!469, !432, i64 112}
!986 = !DILocation(line: 219, column: 5, scope: !983, inlinedAt: !959)
!987 = !DILocation(line: 220, column: 5, scope: !988, inlinedAt: !959)
!988 = distinct !DILexicalBlock(scope: !939, file: !1, line: 220, column: 5)
!989 = !DILocation(line: 220, column: 5, scope: !939, inlinedAt: !959)
!990 = !DILocation(line: 161, column: 33, scope: !700, inlinedAt: !991)
!991 = distinct !DILocation(line: 220, column: 5, scope: !988, inlinedAt: !959)
!992 = !DILocation(line: 161, column: 40, scope: !700, inlinedAt: !991)
!993 = !DILocation(line: 162, column: 15, scope: !707, inlinedAt: !991)
!994 = !DILocation(line: 162, column: 9, scope: !707, inlinedAt: !991)
!995 = !DILocation(line: 162, column: 7, scope: !700, inlinedAt: !991)
!996 = !DILocation(line: 163, column: 27, scope: !707, inlinedAt: !991)
!997 = !DILocation(line: 163, column: 5, scope: !707, inlinedAt: !991)
!998 = !DILocation(line: 165, column: 39, scope: !707, inlinedAt: !991)
!999 = !DILocation(line: 165, column: 5, scope: !707, inlinedAt: !991)
!1000 = !DILocation(line: 221, column: 12, scope: !939, inlinedAt: !959)
!1001 = !DILocation(line: 209, column: 7, scope: !925, inlinedAt: !959)
!1002 = !DILocation(line: 222, column: 16, scope: !943, inlinedAt: !959)
!1003 = !DILocation(line: 222, column: 5, scope: !944, inlinedAt: !959)
!1004 = !DILocation(line: 223, column: 7, scope: !942, inlinedAt: !959)
!1005 = distinct !{!1005, !1006, !1007}
!1006 = !DILocation(line: 222, column: 5, scope: !944)
!1007 = !DILocation(line: 223, column: 7, scope: !944)
!1008 = !DILocation(line: 225, column: 5, scope: !947, inlinedAt: !959)
!1009 = !DILocation(line: 229, column: 14, scope: !925, inlinedAt: !959)
!1010 = !DILocation(line: 226, column: 3, scope: !939, inlinedAt: !959)
!1011 = !DILocation(line: 0, scope: !925, inlinedAt: !959)
!1012 = !DILocation(line: 229, column: 18, scope: !925, inlinedAt: !959)
!1013 = !DILocation(line: 212, column: 15, scope: !925, inlinedAt: !959)
!1014 = !DILocation(line: 212, column: 9, scope: !925, inlinedAt: !959)
!1015 = !DILocation(line: 231, column: 14, scope: !951, inlinedAt: !959)
!1016 = !DILocation(line: 231, column: 3, scope: !952, inlinedAt: !959)
!1017 = !DILocation(line: 232, column: 5, scope: !949, inlinedAt: !959)
!1018 = !DILocation(line: 233, column: 5, scope: !950, inlinedAt: !959)
!1019 = distinct !{!1019, !1020, !1021}
!1020 = !DILocation(line: 231, column: 3, scope: !952)
!1021 = !DILocation(line: 234, column: 3, scope: !952)
!1022 = !DILocation(line: 231, column: 26, scope: !951, inlinedAt: !959)
!1023 = !DILocation(line: 236, column: 7, scope: !957, inlinedAt: !959)
!1024 = !DILocation(line: 236, column: 7, scope: !925, inlinedAt: !959)
!1025 = !DILocation(line: 237, column: 5, scope: !955, inlinedAt: !959)
!1026 = !DILocation(line: 239, column: 3, scope: !956, inlinedAt: !959)
!1027 = !DILocation(line: 287, column: 14, scope: !807)
!1028 = !DILocation(line: 0, scope: !910)
!1029 = !DILocation(line: 0, scope: !799)
!1030 = !DILocation(line: 289, column: 10, scope: !799)
!1031 = !DILocalVariable(name: "L", arg: 1, scope: !1032, file: !1, line: 169, type: !148)
!1032 = distinct !DISubprogram(name: "growCI", scope: !1, file: !1, line: 169, type: !1033, isLocal: true, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1035)
!1033 = !DISubroutineType(types: !1034)
!1034 = !{!238, !148}
!1035 = !{!1031}
!1036 = !DILocation(line: 169, column: 37, scope: !1032, inlinedAt: !1037)
!1037 = distinct !DILocation(line: 289, column: 10, scope: !799)
!1038 = !DILocation(line: 170, column: 10, scope: !1039, inlinedAt: !1037)
!1039 = distinct !DILexicalBlock(scope: !1032, file: !1, line: 170, column: 7)
!1040 = !DILocation(line: 170, column: 18, scope: !1039, inlinedAt: !1037)
!1041 = !DILocation(line: 170, column: 7, scope: !1032, inlinedAt: !1037)
!1042 = !DILocation(line: 171, column: 5, scope: !1039, inlinedAt: !1037)
!1043 = !DILocation(line: 173, column: 24, scope: !1044, inlinedAt: !1037)
!1044 = distinct !DILexicalBlock(scope: !1039, file: !1, line: 172, column: 8)
!1045 = !DILocation(line: 152, column: 33, scope: !538, inlinedAt: !1046)
!1046 = distinct !DILocation(line: 173, column: 5, scope: !1044, inlinedAt: !1037)
!1047 = !DILocation(line: 152, column: 40, scope: !538, inlinedAt: !1046)
!1048 = !DILocation(line: 153, column: 24, scope: !538, inlinedAt: !1046)
!1049 = !DILocation(line: 153, column: 13, scope: !538, inlinedAt: !1046)
!1050 = !DILocation(line: 154, column: 3, scope: !538, inlinedAt: !1046)
!1051 = !DILocation(line: 157, column: 26, scope: !538, inlinedAt: !1046)
!1052 = !DILocation(line: 155, column: 14, scope: !538, inlinedAt: !1046)
!1053 = !DILocation(line: 156, column: 15, scope: !538, inlinedAt: !1046)
!1054 = !DILocation(line: 156, column: 18, scope: !538, inlinedAt: !1046)
!1055 = !DILocation(line: 156, column: 32, scope: !538, inlinedAt: !1046)
!1056 = !DILocation(line: 156, column: 27, scope: !538, inlinedAt: !1046)
!1057 = !DILocation(line: 156, column: 9, scope: !538, inlinedAt: !1046)
!1058 = !DILocation(line: 157, column: 39, scope: !538, inlinedAt: !1046)
!1059 = !DILocation(line: 157, column: 13, scope: !538, inlinedAt: !1046)
!1060 = !DILocation(line: 174, column: 20, scope: !1061, inlinedAt: !1037)
!1061 = distinct !DILexicalBlock(scope: !1044, file: !1, line: 174, column: 9)
!1062 = !DILocation(line: 174, column: 9, scope: !1044, inlinedAt: !1037)
!1063 = !DILocation(line: 175, column: 7, scope: !1061, inlinedAt: !1037)
!1064 = !DILocation(line: 177, column: 10, scope: !1032, inlinedAt: !1037)
!1065 = !DILocation(line: 274, column: 15, scope: !799)
!1066 = !DILocation(line: 290, column: 9, scope: !799)
!1067 = !DILocation(line: 290, column: 14, scope: !799)
!1068 = !DILocation(line: 291, column: 19, scope: !799)
!1069 = !DILocation(line: 291, column: 24, scope: !799)
!1070 = !DILocation(line: 291, column: 8, scope: !799)
!1071 = !DILocation(line: 291, column: 13, scope: !799)
!1072 = !DILocation(line: 292, column: 28, scope: !799)
!1073 = !DILocation(line: 292, column: 23, scope: !799)
!1074 = !DILocation(line: 292, column: 9, scope: !799)
!1075 = !DILocation(line: 292, column: 13, scope: !799)
!1076 = !DILocation(line: 294, column: 21, scope: !799)
!1077 = !{!892, !428, i64 24}
!1078 = !DILocation(line: 294, column: 16, scope: !799)
!1079 = !DILocation(line: 295, column: 9, scope: !799)
!1080 = !DILocation(line: 295, column: 19, scope: !799)
!1081 = !{!489, !429, i64 36}
!1082 = !DILocation(line: 296, column: 9, scope: !799)
!1083 = !DILocation(line: 296, column: 18, scope: !799)
!1084 = !{!489, !429, i64 32}
!1085 = !DILocation(line: 297, column: 18, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !799, file: !1, line: 297, column: 5)
!1087 = !DILocation(line: 275, column: 11, scope: !799)
!1088 = !DILocation(line: 297, column: 26, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1086, file: !1, line: 297, column: 5)
!1090 = !DILocation(line: 297, column: 5, scope: !1086)
!1091 = !DILocation(line: 298, column: 7, scope: !1089)
!1092 = !DILocation(line: 297, column: 39, scope: !1089)
!1093 = distinct !{!1093, !973}
!1094 = distinct !{!1094, !1090, !1095}
!1095 = !DILocation(line: 298, column: 7, scope: !1086)
!1096 = !DILocation(line: 299, column: 12, scope: !799)
!1097 = !DILocation(line: 300, column: 12, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !799, file: !1, line: 300, column: 9)
!1099 = !{!427, !420, i64 100}
!1100 = !DILocation(line: 300, column: 21, scope: !1098)
!1101 = !DILocation(line: 300, column: 9, scope: !799)
!1102 = !DILocation(line: 301, column: 17, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1098, file: !1, line: 300, column: 37)
!1104 = !DILocation(line: 302, column: 7, scope: !1103)
!1105 = !DILocation(line: 303, column: 17, scope: !1103)
!1106 = !DILocation(line: 304, column: 5, scope: !1103)
!1107 = !DILocation(line: 310, column: 5, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !810, file: !1, line: 310, column: 5)
!1109 = !DILocation(line: 310, column: 5, scope: !810)
!1110 = !DILocation(line: 161, column: 33, scope: !700, inlinedAt: !1111)
!1111 = distinct !DILocation(line: 310, column: 5, scope: !1108)
!1112 = !DILocation(line: 161, column: 40, scope: !700, inlinedAt: !1111)
!1113 = !DILocation(line: 162, column: 15, scope: !707, inlinedAt: !1111)
!1114 = !DILocation(line: 162, column: 9, scope: !707, inlinedAt: !1111)
!1115 = !DILocation(line: 162, column: 7, scope: !700, inlinedAt: !1111)
!1116 = !DILocation(line: 163, column: 27, scope: !707, inlinedAt: !1111)
!1117 = !DILocation(line: 163, column: 5, scope: !707, inlinedAt: !1111)
!1118 = !DILocation(line: 165, column: 39, scope: !707, inlinedAt: !1111)
!1119 = !DILocation(line: 165, column: 5, scope: !707, inlinedAt: !1111)
!1120 = !DILocation(line: 311, column: 10, scope: !810)
!1121 = !DILocation(line: 169, column: 37, scope: !1032, inlinedAt: !1122)
!1122 = distinct !DILocation(line: 311, column: 10, scope: !810)
!1123 = !DILocation(line: 170, column: 10, scope: !1039, inlinedAt: !1122)
!1124 = !DILocation(line: 170, column: 18, scope: !1039, inlinedAt: !1122)
!1125 = !DILocation(line: 170, column: 7, scope: !1032, inlinedAt: !1122)
!1126 = !DILocation(line: 171, column: 5, scope: !1039, inlinedAt: !1122)
!1127 = !DILocation(line: 173, column: 24, scope: !1044, inlinedAt: !1122)
!1128 = !DILocation(line: 152, column: 33, scope: !538, inlinedAt: !1129)
!1129 = distinct !DILocation(line: 173, column: 5, scope: !1044, inlinedAt: !1122)
!1130 = !DILocation(line: 152, column: 40, scope: !538, inlinedAt: !1129)
!1131 = !DILocation(line: 153, column: 24, scope: !538, inlinedAt: !1129)
!1132 = !DILocation(line: 153, column: 13, scope: !538, inlinedAt: !1129)
!1133 = !DILocation(line: 154, column: 3, scope: !538, inlinedAt: !1129)
!1134 = !DILocation(line: 157, column: 26, scope: !538, inlinedAt: !1129)
!1135 = !DILocation(line: 155, column: 14, scope: !538, inlinedAt: !1129)
!1136 = !DILocation(line: 156, column: 15, scope: !538, inlinedAt: !1129)
!1137 = !DILocation(line: 156, column: 18, scope: !538, inlinedAt: !1129)
!1138 = !DILocation(line: 156, column: 32, scope: !538, inlinedAt: !1129)
!1139 = !DILocation(line: 156, column: 27, scope: !538, inlinedAt: !1129)
!1140 = !DILocation(line: 156, column: 9, scope: !538, inlinedAt: !1129)
!1141 = !DILocation(line: 157, column: 39, scope: !538, inlinedAt: !1129)
!1142 = !DILocation(line: 157, column: 13, scope: !538, inlinedAt: !1129)
!1143 = !DILocation(line: 174, column: 20, scope: !1061, inlinedAt: !1122)
!1144 = !DILocation(line: 174, column: 9, scope: !1044, inlinedAt: !1122)
!1145 = !DILocation(line: 175, column: 7, scope: !1061, inlinedAt: !1122)
!1146 = !DILocation(line: 177, column: 10, scope: !1032, inlinedAt: !1122)
!1147 = !DILocation(line: 0, scope: !810)
!1148 = !DILocation(line: 308, column: 15, scope: !810)
!1149 = !DILocation(line: 312, column: 16, scope: !810)
!1150 = !DILocation(line: 312, column: 9, scope: !810)
!1151 = !DILocation(line: 312, column: 14, scope: !810)
!1152 = !DILocation(line: 313, column: 35, scope: !810)
!1153 = !DILocation(line: 313, column: 24, scope: !810)
!1154 = !DILocation(line: 313, column: 8, scope: !810)
!1155 = !DILocation(line: 313, column: 13, scope: !810)
!1156 = !DILocation(line: 314, column: 18, scope: !810)
!1157 = !DILocation(line: 314, column: 22, scope: !810)
!1158 = !DILocation(line: 314, column: 9, scope: !810)
!1159 = !DILocation(line: 314, column: 13, scope: !810)
!1160 = !DILocation(line: 316, column: 9, scope: !810)
!1161 = !DILocation(line: 316, column: 18, scope: !810)
!1162 = !DILocation(line: 317, column: 12, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !810, file: !1, line: 317, column: 9)
!1164 = !DILocation(line: 317, column: 21, scope: !1163)
!1165 = !DILocation(line: 317, column: 9, scope: !810)
!1166 = !DILocation(line: 318, column: 7, scope: !1163)
!1167 = !DILocation(line: 320, column: 11, scope: !810)
!1168 = !DILocation(line: 320, column: 27, scope: !810)
!1169 = !DILocation(line: 320, column: 9, scope: !810)
!1170 = !DILocation(line: 309, column: 9, scope: !810)
!1171 = !DILocation(line: 322, column: 11, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !810, file: !1, line: 322, column: 9)
!1173 = !DILocation(line: 322, column: 9, scope: !810)
!1174 = !DILocation(line: 325, column: 26, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1172, file: !1, line: 324, column: 10)
!1176 = !DILocation(line: 325, column: 30, scope: !1175)
!1177 = !DILocation(line: 325, column: 7, scope: !1175)
!1178 = !DILocation(line: 326, column: 7, scope: !1175)
!1179 = !DILocation(line: 329, column: 1, scope: !788)
!1180 = distinct !DISubprogram(name: "luaD_poscall", scope: !1, file: !1, line: 343, type: !1181, isLocal: false, isDefinition: true, scopeLine: 343, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1183)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{!104, !148, !157}
!1183 = !{!1184, !1185, !1186, !1187, !1188, !1189, !1190, !1194}
!1184 = !DILocalVariable(name: "L", arg: 1, scope: !1180, file: !1, line: 343, type: !148)
!1185 = !DILocalVariable(name: "firstResult", arg: 2, scope: !1180, file: !1, line: 343, type: !157)
!1186 = !DILocalVariable(name: "res", scope: !1180, file: !1, line: 344, type: !157)
!1187 = !DILocalVariable(name: "wanted", scope: !1180, file: !1, line: 345, type: !104)
!1188 = !DILocalVariable(name: "i", scope: !1180, file: !1, line: 345, type: !104)
!1189 = !DILocalVariable(name: "ci", scope: !1180, file: !1, line: 346, type: !238)
!1190 = !DILocalVariable(name: "o2", scope: !1191, file: !1, line: 356, type: !411)
!1191 = distinct !DILexicalBlock(scope: !1192, file: !1, line: 356, column: 5)
!1192 = distinct !DILexicalBlock(scope: !1193, file: !1, line: 355, column: 3)
!1193 = distinct !DILexicalBlock(scope: !1180, file: !1, line: 355, column: 3)
!1194 = !DILocalVariable(name: "o1", scope: !1191, file: !1, line: 356, type: !90)
!1195 = !DILocation(line: 343, column: 30, scope: !1180)
!1196 = !DILocation(line: 343, column: 39, scope: !1180)
!1197 = !DILocation(line: 347, column: 10, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1180, file: !1, line: 347, column: 7)
!1199 = !DILocation(line: 347, column: 19, scope: !1198)
!1200 = !DILocation(line: 347, column: 7, scope: !1180)
!1201 = !DILocation(line: 349, column: 13, scope: !1180)
!1202 = !DILocalVariable(name: "L", arg: 1, scope: !1203, file: !1, line: 332, type: !148)
!1203 = distinct !DISubprogram(name: "callrethooks", scope: !1, file: !1, line: 332, type: !821, isLocal: true, isDefinition: true, scopeLine: 332, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1204)
!1204 = !{!1202, !1205, !1206}
!1205 = !DILocalVariable(name: "firstResult", arg: 2, scope: !1203, file: !1, line: 332, type: !157)
!1206 = !DILocalVariable(name: "fr", scope: !1203, file: !1, line: 333, type: !309)
!1207 = !DILocation(line: 332, column: 39, scope: !1203, inlinedAt: !1208)
!1208 = distinct !DILocation(line: 348, column: 19, scope: !1198)
!1209 = !DILocation(line: 332, column: 48, scope: !1203, inlinedAt: !1208)
!1210 = !DILocation(line: 333, column: 18, scope: !1203, inlinedAt: !1208)
!1211 = !DILocation(line: 333, column: 13, scope: !1203, inlinedAt: !1208)
!1212 = !DILocation(line: 334, column: 3, scope: !1203, inlinedAt: !1208)
!1213 = !DILocation(line: 335, column: 7, scope: !1214, inlinedAt: !1208)
!1214 = distinct !DILexicalBlock(scope: !1203, file: !1, line: 335, column: 7)
!1215 = !DILocation(line: 335, column: 7, scope: !1203, inlinedAt: !1208)
!1216 = !DILocation(line: 336, column: 16, scope: !1217, inlinedAt: !1208)
!1217 = distinct !DILexicalBlock(scope: !1214, file: !1, line: 335, column: 23)
!1218 = !DILocation(line: 336, column: 25, scope: !1217, inlinedAt: !1208)
!1219 = !DILocation(line: 336, column: 40, scope: !1217, inlinedAt: !1208)
!1220 = !DILocation(line: 336, column: 46, scope: !1217, inlinedAt: !1208)
!1221 = !DILocation(line: 336, column: 50, scope: !1217, inlinedAt: !1208)
!1222 = !DILocation(line: 336, column: 59, scope: !1217, inlinedAt: !1208)
!1223 = !DILocation(line: 336, column: 5, scope: !1217, inlinedAt: !1208)
!1224 = !DILocation(line: 181, column: 32, scope: !715, inlinedAt: !1225)
!1225 = distinct !DILocation(line: 337, column: 7, scope: !1217, inlinedAt: !1208)
!1226 = !DILocation(line: 181, column: 39, scope: !715, inlinedAt: !1225)
!1227 = !DILocation(line: 181, column: 50, scope: !715, inlinedAt: !1225)
!1228 = !DILocation(line: 182, column: 22, scope: !715, inlinedAt: !1225)
!1229 = !DILocation(line: 182, column: 12, scope: !715, inlinedAt: !1225)
!1230 = !DILocation(line: 183, column: 7, scope: !725, inlinedAt: !1225)
!1231 = !DILocation(line: 183, column: 12, scope: !725, inlinedAt: !1225)
!1232 = !DILocation(line: 183, column: 18, scope: !725, inlinedAt: !1225)
!1233 = !DILocation(line: 183, column: 15, scope: !725, inlinedAt: !1225)
!1234 = !DILocation(line: 183, column: 7, scope: !715, inlinedAt: !1225)
!1235 = !DILocation(line: 184, column: 21, scope: !724, inlinedAt: !1225)
!1236 = !DILocation(line: 184, column: 15, scope: !724, inlinedAt: !1225)
!1237 = !DILocation(line: 185, column: 24, scope: !724, inlinedAt: !1225)
!1238 = !DILocation(line: 185, column: 15, scope: !724, inlinedAt: !1225)
!1239 = !DILocation(line: 186, column: 5, scope: !724, inlinedAt: !1225)
!1240 = !DILocation(line: 187, column: 14, scope: !724, inlinedAt: !1225)
!1241 = !DILocation(line: 188, column: 20, scope: !724, inlinedAt: !1225)
!1242 = !DILocation(line: 192, column: 15, scope: !752, inlinedAt: !1225)
!1243 = !DILocation(line: 193, column: 5, scope: !758, inlinedAt: !1225)
!1244 = !DILocation(line: 193, column: 5, scope: !724, inlinedAt: !1225)
!1245 = !DILocation(line: 161, column: 33, scope: !700, inlinedAt: !1246)
!1246 = distinct !DILocation(line: 193, column: 5, scope: !758, inlinedAt: !1225)
!1247 = !DILocation(line: 161, column: 40, scope: !700, inlinedAt: !1246)
!1248 = !DILocation(line: 162, column: 15, scope: !707, inlinedAt: !1246)
!1249 = !DILocation(line: 162, column: 9, scope: !707, inlinedAt: !1246)
!1250 = !DILocation(line: 162, column: 7, scope: !700, inlinedAt: !1246)
!1251 = !DILocation(line: 163, column: 27, scope: !707, inlinedAt: !1246)
!1252 = !DILocation(line: 163, column: 5, scope: !707, inlinedAt: !1246)
!1253 = !DILocation(line: 165, column: 39, scope: !707, inlinedAt: !1246)
!1254 = !DILocation(line: 165, column: 5, scope: !707, inlinedAt: !1246)
!1255 = !DILocation(line: 194, column: 21, scope: !724, inlinedAt: !1225)
!1256 = !DILocation(line: 194, column: 25, scope: !724, inlinedAt: !1225)
!1257 = !DILocation(line: 194, column: 8, scope: !724, inlinedAt: !1225)
!1258 = !DILocation(line: 194, column: 12, scope: !724, inlinedAt: !1225)
!1259 = !DILocation(line: 194, column: 16, scope: !724, inlinedAt: !1225)
!1260 = !DILocation(line: 196, column: 18, scope: !724, inlinedAt: !1225)
!1261 = !DILocation(line: 186, column: 15, scope: !724, inlinedAt: !1225)
!1262 = !DILocation(line: 198, column: 5, scope: !724, inlinedAt: !1225)
!1263 = !DILocation(line: 201, column: 18, scope: !724, inlinedAt: !1225)
!1264 = !DILocation(line: 202, column: 18, scope: !724, inlinedAt: !1225)
!1265 = !DILocation(line: 202, column: 8, scope: !724, inlinedAt: !1225)
!1266 = !DILocation(line: 202, column: 12, scope: !724, inlinedAt: !1225)
!1267 = !DILocation(line: 202, column: 16, scope: !724, inlinedAt: !1225)
!1268 = !DILocation(line: 203, column: 14, scope: !724, inlinedAt: !1225)
!1269 = !DILocation(line: 203, column: 12, scope: !724, inlinedAt: !1225)
!1270 = !DILocation(line: 204, column: 3, scope: !725, inlinedAt: !1225)
!1271 = !DILocation(line: 204, column: 3, scope: !724, inlinedAt: !1225)
!1272 = distinct !{!1272, !1273, !1274}
!1273 = !DILocation(line: 336, column: 5, scope: !1217)
!1274 = !DILocation(line: 337, column: 43, scope: !1217)
!1275 = !DILocation(line: 339, column: 10, scope: !1203, inlinedAt: !1208)
!1276 = !DILocation(line: 348, column: 5, scope: !1198)
!1277 = !DILocation(line: 349, column: 11, scope: !1180)
!1278 = !DILocation(line: 346, column: 13, scope: !1180)
!1279 = !DILocation(line: 350, column: 13, scope: !1180)
!1280 = !DILocation(line: 344, column: 9, scope: !1180)
!1281 = !DILocation(line: 351, column: 16, scope: !1180)
!1282 = !DILocation(line: 345, column: 7, scope: !1180)
!1283 = !DILocation(line: 352, column: 23, scope: !1180)
!1284 = !DILocation(line: 352, column: 6, scope: !1180)
!1285 = !DILocation(line: 352, column: 11, scope: !1180)
!1286 = !DILocation(line: 353, column: 26, scope: !1180)
!1287 = !DILocation(line: 353, column: 6, scope: !1180)
!1288 = !DILocation(line: 353, column: 14, scope: !1180)
!1289 = !DILocation(line: 345, column: 15, scope: !1180)
!1290 = !DILocation(line: 355, column: 47, scope: !1192)
!1291 = !DILocation(line: 355, column: 22, scope: !1192)
!1292 = !DILocation(line: 355, column: 27, scope: !1192)
!1293 = !DILocation(line: 355, column: 42, scope: !1192)
!1294 = !DILocation(line: 355, column: 3, scope: !1193)
!1295 = !DILocation(line: 356, column: 5, scope: !1191)
!1296 = !DILocation(line: 355, column: 53, scope: !1192)
!1297 = distinct !{!1297, !1294, !1298}
!1298 = !DILocation(line: 356, column: 5, scope: !1193)
!1299 = !DILocation(line: 357, column: 14, scope: !1180)
!1300 = !DILocation(line: 357, column: 3, scope: !1180)
!1301 = !DILocation(line: 357, column: 11, scope: !1180)
!1302 = !DILocation(line: 358, column: 5, scope: !1180)
!1303 = distinct !{!1303, !1300, !1302}
!1304 = !DILocation(line: 0, scope: !1180)
!1305 = !DILocation(line: 359, column: 10, scope: !1180)
!1306 = !DILocation(line: 360, column: 18, scope: !1180)
!1307 = !DILocation(line: 360, column: 3, scope: !1180)
!1308 = distinct !DISubprogram(name: "luaD_call", scope: !1, file: !1, line: 370, type: !1309, isLocal: false, isDefinition: true, scopeLine: 370, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1311)
!1309 = !DISubroutineType(types: !1310)
!1310 = !{null, !148, !157, !104}
!1311 = !{!1312, !1313, !1314}
!1312 = !DILocalVariable(name: "L", arg: 1, scope: !1308, file: !1, line: 370, type: !148)
!1313 = !DILocalVariable(name: "func", arg: 2, scope: !1308, file: !1, line: 370, type: !157)
!1314 = !DILocalVariable(name: "nResults", arg: 3, scope: !1308, file: !1, line: 370, type: !104)
!1315 = !DILocation(line: 370, column: 28, scope: !1308)
!1316 = !DILocation(line: 370, column: 37, scope: !1308)
!1317 = !DILocation(line: 370, column: 47, scope: !1308)
!1318 = !DILocation(line: 371, column: 12, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1308, file: !1, line: 371, column: 7)
!1320 = !DILocation(line: 371, column: 7, scope: !1319)
!1321 = !DILocation(line: 371, column: 20, scope: !1319)
!1322 = !DILocation(line: 371, column: 7, scope: !1308)
!1323 = !DILocation(line: 372, column: 20, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1325, file: !1, line: 372, column: 9)
!1325 = distinct !DILexicalBlock(scope: !1319, file: !1, line: 371, column: 39)
!1326 = !DILocation(line: 372, column: 9, scope: !1325)
!1327 = !DILocation(line: 373, column: 7, scope: !1324)
!1328 = !DILocation(line: 374, column: 25, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1324, file: !1, line: 374, column: 14)
!1330 = !DILocation(line: 374, column: 14, scope: !1324)
!1331 = !DILocation(line: 375, column: 7, scope: !1329)
!1332 = !DILocation(line: 377, column: 7, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1308, file: !1, line: 377, column: 7)
!1334 = !DILocation(line: 377, column: 39, scope: !1333)
!1335 = !DILocation(line: 377, column: 7, scope: !1308)
!1336 = !DILocation(line: 378, column: 5, scope: !1333)
!1337 = !DILocation(line: 379, column: 13, scope: !1308)
!1338 = !DILocation(line: 380, column: 3, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1340, file: !1, line: 380, column: 3)
!1340 = distinct !DILexicalBlock(scope: !1308, file: !1, line: 380, column: 3)
!1341 = !DILocation(line: 380, column: 3, scope: !1340)
!1342 = !DILocation(line: 381, column: 1, scope: !1308)
!1343 = distinct !DISubprogram(name: "lua_resume", scope: !1, file: !1, line: 418, type: !1344, isLocal: false, isDefinition: true, scopeLine: 418, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1346)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{!104, !148, !104}
!1346 = !{!1347, !1348, !1349}
!1347 = !DILocalVariable(name: "L", arg: 1, scope: !1343, file: !1, line: 418, type: !148)
!1348 = !DILocalVariable(name: "nargs", arg: 2, scope: !1343, file: !1, line: 418, type: !104)
!1349 = !DILocalVariable(name: "status", scope: !1343, file: !1, line: 419, type: !104)
!1350 = !DILocation(line: 418, column: 36, scope: !1343)
!1351 = !DILocation(line: 418, column: 43, scope: !1343)
!1352 = !DILocation(line: 421, column: 10, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1343, file: !1, line: 421, column: 7)
!1354 = !DILocation(line: 421, column: 30, scope: !1353)
!1355 = !DILocation(line: 410, column: 15, scope: !1356, inlinedAt: !1364)
!1356 = distinct !DISubprogram(name: "resume_error", scope: !1, file: !1, line: 409, type: !1357, isLocal: true, isDefinition: true, scopeLine: 409, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1359)
!1357 = !DISubroutineType(types: !1358)
!1358 = !{!104, !148, !276}
!1359 = !{!1360, !1361, !1362}
!1360 = !DILocalVariable(name: "L", arg: 1, scope: !1356, file: !1, line: 409, type: !148)
!1361 = !DILocalVariable(name: "msg", arg: 2, scope: !1356, file: !1, line: 409, type: !276)
!1362 = !DILocalVariable(name: "i_o", scope: !1363, file: !1, line: 411, type: !90)
!1363 = distinct !DILexicalBlock(scope: !1356, file: !1, line: 411, column: 3)
!1364 = distinct !DILocation(line: 422, column: 14, scope: !1353)
!1365 = !DILocation(line: 421, column: 55, scope: !1353)
!1366 = !DILocation(line: 421, column: 64, scope: !1353)
!1367 = !DILocation(line: 421, column: 58, scope: !1353)
!1368 = !DILocation(line: 421, column: 7, scope: !1343)
!1369 = !DILocation(line: 409, column: 37, scope: !1356, inlinedAt: !1364)
!1370 = !DILocation(line: 409, column: 52, scope: !1356, inlinedAt: !1364)
!1371 = !DILocation(line: 410, column: 19, scope: !1356, inlinedAt: !1364)
!1372 = !DILocation(line: 410, column: 6, scope: !1356, inlinedAt: !1364)
!1373 = !DILocation(line: 410, column: 10, scope: !1356, inlinedAt: !1364)
!1374 = !DILocation(line: 411, column: 3, scope: !1363, inlinedAt: !1364)
!1375 = !DILocation(line: 412, column: 3, scope: !1376, inlinedAt: !1364)
!1376 = distinct !DILexicalBlock(scope: !1377, file: !1, line: 412, column: 3)
!1377 = distinct !DILexicalBlock(scope: !1356, file: !1, line: 412, column: 3)
!1378 = !DILocation(line: 412, column: 3, scope: !1377, inlinedAt: !1364)
!1379 = !DILocation(line: 161, column: 33, scope: !700, inlinedAt: !1380)
!1380 = distinct !DILocation(line: 412, column: 3, scope: !1376, inlinedAt: !1364)
!1381 = !DILocation(line: 161, column: 40, scope: !700, inlinedAt: !1380)
!1382 = !DILocation(line: 162, column: 15, scope: !707, inlinedAt: !1380)
!1383 = !DILocation(line: 162, column: 9, scope: !707, inlinedAt: !1380)
!1384 = !DILocation(line: 162, column: 7, scope: !700, inlinedAt: !1380)
!1385 = !DILocation(line: 163, column: 27, scope: !707, inlinedAt: !1380)
!1386 = !DILocation(line: 163, column: 5, scope: !707, inlinedAt: !1380)
!1387 = !DILocation(line: 165, column: 39, scope: !707, inlinedAt: !1380)
!1388 = !DILocation(line: 165, column: 5, scope: !707, inlinedAt: !1380)
!1389 = !DILocation(line: 422, column: 7, scope: !1353)
!1390 = !DILocation(line: 423, column: 10, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1343, file: !1, line: 423, column: 7)
!1392 = !DILocation(line: 423, column: 18, scope: !1391)
!1393 = !DILocation(line: 423, column: 7, scope: !1343)
!1394 = !DILocation(line: 409, column: 37, scope: !1356, inlinedAt: !1395)
!1395 = distinct !DILocation(line: 424, column: 12, scope: !1391)
!1396 = !DILocation(line: 409, column: 52, scope: !1356, inlinedAt: !1395)
!1397 = !DILocation(line: 410, column: 15, scope: !1356, inlinedAt: !1395)
!1398 = !DILocation(line: 410, column: 19, scope: !1356, inlinedAt: !1395)
!1399 = !DILocation(line: 410, column: 6, scope: !1356, inlinedAt: !1395)
!1400 = !DILocation(line: 410, column: 10, scope: !1356, inlinedAt: !1395)
!1401 = !DILocation(line: 411, column: 3, scope: !1363, inlinedAt: !1395)
!1402 = !DILocation(line: 412, column: 3, scope: !1376, inlinedAt: !1395)
!1403 = !DILocation(line: 412, column: 3, scope: !1377, inlinedAt: !1395)
!1404 = !DILocation(line: 161, column: 33, scope: !700, inlinedAt: !1405)
!1405 = distinct !DILocation(line: 412, column: 3, scope: !1376, inlinedAt: !1395)
!1406 = !DILocation(line: 161, column: 40, scope: !700, inlinedAt: !1405)
!1407 = !DILocation(line: 162, column: 15, scope: !707, inlinedAt: !1405)
!1408 = !DILocation(line: 162, column: 9, scope: !707, inlinedAt: !1405)
!1409 = !DILocation(line: 162, column: 7, scope: !700, inlinedAt: !1405)
!1410 = !DILocation(line: 163, column: 27, scope: !707, inlinedAt: !1405)
!1411 = !DILocation(line: 163, column: 5, scope: !707, inlinedAt: !1405)
!1412 = !DILocation(line: 165, column: 39, scope: !707, inlinedAt: !1405)
!1413 = !DILocation(line: 165, column: 5, scope: !707, inlinedAt: !1405)
!1414 = !DILocation(line: 424, column: 5, scope: !1391)
!1415 = !DILocation(line: 427, column: 19, scope: !1343)
!1416 = !DILocation(line: 427, column: 6, scope: !1343)
!1417 = !DILocation(line: 427, column: 17, scope: !1343)
!1418 = !DILocation(line: 428, column: 47, scope: !1343)
!1419 = !DILocation(line: 428, column: 51, scope: !1343)
!1420 = !DILocation(line: 111, column: 38, scope: !566, inlinedAt: !1421)
!1421 = distinct !DILocation(line: 428, column: 12, scope: !1343)
!1422 = !DILocation(line: 111, column: 56, scope: !566, inlinedAt: !1421)
!1423 = !DILocation(line: 112, column: 3, scope: !566, inlinedAt: !1421)
!1424 = !DILocation(line: 113, column: 6, scope: !566, inlinedAt: !1421)
!1425 = !DILocation(line: 113, column: 13, scope: !566, inlinedAt: !1421)
!1426 = !DILocation(line: 114, column: 20, scope: !566, inlinedAt: !1421)
!1427 = !DILocation(line: 114, column: 15, scope: !566, inlinedAt: !1421)
!1428 = !DILocation(line: 115, column: 15, scope: !566, inlinedAt: !1421)
!1429 = !DILocation(line: 116, column: 3, scope: !590, inlinedAt: !1421)
!1430 = !DILocation(line: 116, column: 3, scope: !566, inlinedAt: !1421)
!1431 = !DILocalVariable(name: "L", arg: 1, scope: !1432, file: !1, line: 384, type: !148)
!1432 = distinct !DISubprogram(name: "resume", scope: !1, file: !1, line: 384, type: !572, isLocal: true, isDefinition: true, scopeLine: 384, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1433)
!1433 = !{!1431, !1434, !1435, !1436}
!1434 = !DILocalVariable(name: "ud", arg: 2, scope: !1432, file: !1, line: 384, type: !52)
!1435 = !DILocalVariable(name: "firstArg", scope: !1432, file: !1, line: 385, type: !157)
!1436 = !DILocalVariable(name: "ci", scope: !1432, file: !1, line: 386, type: !238)
!1437 = !DILocation(line: 384, column: 32, scope: !1432, inlinedAt: !1438)
!1438 = distinct !DILocation(line: 116, column: 3, scope: !593, inlinedAt: !1421)
!1439 = !DILocation(line: 384, column: 41, scope: !1432, inlinedAt: !1438)
!1440 = !DILocation(line: 385, column: 9, scope: !1432, inlinedAt: !1438)
!1441 = !DILocation(line: 386, column: 21, scope: !1432, inlinedAt: !1438)
!1442 = !DILocation(line: 387, column: 10, scope: !1443, inlinedAt: !1438)
!1443 = distinct !DILexicalBlock(scope: !1432, file: !1, line: 387, column: 7)
!1444 = !DILocation(line: 387, column: 17, scope: !1443, inlinedAt: !1438)
!1445 = !DILocation(line: 387, column: 7, scope: !1432, inlinedAt: !1438)
!1446 = !DILocation(line: 389, column: 34, scope: !1447, inlinedAt: !1438)
!1447 = distinct !DILexicalBlock(scope: !1448, file: !1, line: 389, column: 9)
!1448 = distinct !DILexicalBlock(scope: !1443, file: !1, line: 387, column: 23)
!1449 = !DILocation(line: 389, column: 9, scope: !1447, inlinedAt: !1438)
!1450 = !DILocation(line: 389, column: 52, scope: !1447, inlinedAt: !1438)
!1451 = !DILocation(line: 389, column: 9, scope: !1448, inlinedAt: !1438)
!1452 = !DILocation(line: 386, column: 13, scope: !1432, inlinedAt: !1438)
!1453 = !DILocation(line: 394, column: 15, scope: !1454, inlinedAt: !1438)
!1454 = distinct !DILexicalBlock(scope: !1443, file: !1, line: 392, column: 8)
!1455 = !DILocation(line: 395, column: 10, scope: !1456, inlinedAt: !1438)
!1456 = distinct !DILexicalBlock(scope: !1454, file: !1, line: 395, column: 9)
!1457 = !DILocation(line: 395, column: 9, scope: !1454, inlinedAt: !1438)
!1458 = !DILocation(line: 399, column: 11, scope: !1459, inlinedAt: !1438)
!1459 = distinct !DILexicalBlock(scope: !1460, file: !1, line: 399, column: 11)
!1460 = distinct !DILexicalBlock(scope: !1456, file: !1, line: 395, column: 23)
!1461 = !DILocation(line: 399, column: 11, scope: !1460, inlinedAt: !1438)
!1462 = !DILocation(line: 400, column: 21, scope: !1459, inlinedAt: !1438)
!1463 = !DILocation(line: 400, column: 25, scope: !1459, inlinedAt: !1438)
!1464 = !DILocation(line: 400, column: 16, scope: !1459, inlinedAt: !1438)
!1465 = !DILocation(line: 400, column: 9, scope: !1459, inlinedAt: !1438)
!1466 = !DILocation(line: 403, column: 24, scope: !1456, inlinedAt: !1438)
!1467 = !DILocation(line: 403, column: 10, scope: !1456, inlinedAt: !1438)
!1468 = !DILocation(line: 403, column: 15, scope: !1456, inlinedAt: !1438)
!1469 = !DILocation(line: 405, column: 19, scope: !1432, inlinedAt: !1438)
!1470 = !DILocation(line: 405, column: 3, scope: !1432, inlinedAt: !1438)
!1471 = !DILocation(line: 406, column: 1, scope: !1432, inlinedAt: !1438)
!1472 = !DILocation(line: 119, column: 20, scope: !566, inlinedAt: !1421)
!1473 = !DILocation(line: 119, column: 15, scope: !566, inlinedAt: !1421)
!1474 = !DILocation(line: 120, column: 13, scope: !566, inlinedAt: !1421)
!1475 = !DILocation(line: 121, column: 1, scope: !566, inlinedAt: !1421)
!1476 = !DILocation(line: 419, column: 7, scope: !1343)
!1477 = !DILocation(line: 429, column: 14, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1343, file: !1, line: 429, column: 7)
!1479 = !DILocation(line: 429, column: 7, scope: !1343)
!1480 = !DILocation(line: 430, column: 17, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1478, file: !1, line: 429, column: 20)
!1482 = !DILocation(line: 430, column: 15, scope: !1481)
!1483 = !DILocation(line: 431, column: 36, scope: !1481)
!1484 = !DILocation(line: 51, column: 35, scope: !394, inlinedAt: !1485)
!1485 = distinct !DILocation(line: 431, column: 5, scope: !1481)
!1486 = !DILocation(line: 51, column: 42, scope: !394, inlinedAt: !1485)
!1487 = !DILocation(line: 51, column: 57, scope: !394, inlinedAt: !1485)
!1488 = !DILocation(line: 52, column: 3, scope: !394, inlinedAt: !1485)
!1489 = !DILocation(line: 54, column: 7, scope: !402, inlinedAt: !1485)
!1490 = !DILocation(line: 55, column: 7, scope: !403, inlinedAt: !1485)
!1491 = !DILocation(line: 58, column: 7, scope: !406, inlinedAt: !1485)
!1492 = !DILocation(line: 59, column: 7, scope: !407, inlinedAt: !1485)
!1493 = !DILocation(line: 63, column: 7, scope: !409, inlinedAt: !1485)
!1494 = !DILocation(line: 64, column: 7, scope: !410, inlinedAt: !1485)
!1495 = !DILocation(line: 0, scope: !1481)
!1496 = !DILocation(line: 67, column: 19, scope: !394, inlinedAt: !1485)
!1497 = !DILocation(line: 67, column: 10, scope: !394, inlinedAt: !1485)
!1498 = !DILocation(line: 432, column: 21, scope: !1481)
!1499 = !DILocation(line: 432, column: 8, scope: !1481)
!1500 = !DILocation(line: 432, column: 12, scope: !1481)
!1501 = !DILocation(line: 432, column: 16, scope: !1481)
!1502 = !DILocation(line: 433, column: 3, scope: !1481)
!1503 = !DILocation(line: 436, column: 17, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1478, file: !1, line: 434, column: 8)
!1505 = !DILocation(line: 436, column: 14, scope: !1504)
!1506 = !DILocation(line: 0, scope: !1504)
!1507 = !DILocation(line: 438, column: 3, scope: !1343)
!1508 = !DILocation(line: 440, column: 3, scope: !1343)
!1509 = !DILocation(line: 0, scope: !1343)
!1510 = !DILocation(line: 441, column: 1, scope: !1343)
!1511 = distinct !DISubprogram(name: "lua_yield", scope: !1, file: !1, line: 444, type: !1344, isLocal: false, isDefinition: true, scopeLine: 444, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1512)
!1512 = !{!1513, !1514}
!1513 = !DILocalVariable(name: "L", arg: 1, scope: !1511, file: !1, line: 444, type: !148)
!1514 = !DILocalVariable(name: "nresults", arg: 2, scope: !1511, file: !1, line: 444, type: !104)
!1515 = !DILocation(line: 444, column: 35, scope: !1511)
!1516 = !DILocation(line: 444, column: 42, scope: !1511)
!1517 = !DILocation(line: 447, column: 10, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1511, file: !1, line: 447, column: 7)
!1519 = !DILocation(line: 447, column: 23, scope: !1518)
!1520 = !DILocation(line: 447, column: 18, scope: !1518)
!1521 = !DILocation(line: 447, column: 7, scope: !1511)
!1522 = !DILocation(line: 448, column: 5, scope: !1518)
!1523 = !DILocation(line: 449, column: 16, scope: !1511)
!1524 = !DILocation(line: 449, column: 20, scope: !1511)
!1525 = !DILocation(line: 449, column: 6, scope: !1511)
!1526 = !DILocation(line: 449, column: 11, scope: !1511)
!1527 = !DILocation(line: 450, column: 6, scope: !1511)
!1528 = !DILocation(line: 450, column: 13, scope: !1511)
!1529 = !DILocation(line: 452, column: 3, scope: !1511)
!1530 = distinct !DISubprogram(name: "luaD_pcall", scope: !1, file: !1, line: 456, type: !1531, isLocal: false, isDefinition: true, scopeLine: 457, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1533)
!1531 = !DISubroutineType(types: !1532)
!1532 = !{!104, !148, !569, !52, !309, !309}
!1533 = !{!1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544}
!1534 = !DILocalVariable(name: "L", arg: 1, scope: !1530, file: !1, line: 456, type: !148)
!1535 = !DILocalVariable(name: "func", arg: 2, scope: !1530, file: !1, line: 456, type: !569)
!1536 = !DILocalVariable(name: "u", arg: 3, scope: !1530, file: !1, line: 456, type: !52)
!1537 = !DILocalVariable(name: "old_top", arg: 4, scope: !1530, file: !1, line: 457, type: !309)
!1538 = !DILocalVariable(name: "ef", arg: 5, scope: !1530, file: !1, line: 457, type: !309)
!1539 = !DILocalVariable(name: "status", scope: !1530, file: !1, line: 458, type: !104)
!1540 = !DILocalVariable(name: "oldnCcalls", scope: !1530, file: !1, line: 459, type: !259)
!1541 = !DILocalVariable(name: "old_ci", scope: !1530, file: !1, line: 460, type: !309)
!1542 = !DILocalVariable(name: "old_allowhooks", scope: !1530, file: !1, line: 461, type: !38)
!1543 = !DILocalVariable(name: "old_errfunc", scope: !1530, file: !1, line: 462, type: !309)
!1544 = !DILocalVariable(name: "oldtop", scope: !1545, file: !1, line: 466, type: !157)
!1545 = distinct !DILexicalBlock(scope: !1546, file: !1, line: 465, column: 20)
!1546 = distinct !DILexicalBlock(scope: !1530, file: !1, line: 465, column: 7)
!1547 = !DILocation(line: 456, column: 28, scope: !1530)
!1548 = !DILocation(line: 456, column: 37, scope: !1530)
!1549 = !DILocation(line: 456, column: 49, scope: !1530)
!1550 = !DILocation(line: 457, column: 27, scope: !1530)
!1551 = !DILocation(line: 457, column: 46, scope: !1530)
!1552 = !DILocation(line: 459, column: 34, scope: !1530)
!1553 = !DILocation(line: 459, column: 18, scope: !1530)
!1554 = !DILocation(line: 460, column: 22, scope: !1530)
!1555 = !DILocation(line: 461, column: 31, scope: !1530)
!1556 = !DILocation(line: 461, column: 11, scope: !1530)
!1557 = !DILocation(line: 462, column: 30, scope: !1530)
!1558 = !DILocation(line: 462, column: 13, scope: !1530)
!1559 = !DILocation(line: 463, column: 14, scope: !1530)
!1560 = !DILocation(line: 111, column: 38, scope: !566, inlinedAt: !1561)
!1561 = distinct !DILocation(line: 464, column: 12, scope: !1530)
!1562 = !DILocation(line: 111, column: 47, scope: !566, inlinedAt: !1561)
!1563 = !DILocation(line: 111, column: 56, scope: !566, inlinedAt: !1561)
!1564 = !DILocation(line: 112, column: 3, scope: !566, inlinedAt: !1561)
!1565 = !DILocation(line: 113, column: 6, scope: !566, inlinedAt: !1561)
!1566 = !DILocation(line: 113, column: 13, scope: !566, inlinedAt: !1561)
!1567 = !DILocation(line: 114, column: 20, scope: !566, inlinedAt: !1561)
!1568 = !DILocation(line: 114, column: 15, scope: !566, inlinedAt: !1561)
!1569 = !DILocation(line: 115, column: 15, scope: !566, inlinedAt: !1561)
!1570 = !DILocation(line: 116, column: 3, scope: !590, inlinedAt: !1561)
!1571 = !DILocation(line: 116, column: 3, scope: !566, inlinedAt: !1561)
!1572 = !DILocation(line: 116, column: 3, scope: !593, inlinedAt: !1561)
!1573 = !DILocation(line: 119, column: 20, scope: !566, inlinedAt: !1561)
!1574 = !DILocation(line: 119, column: 15, scope: !566, inlinedAt: !1561)
!1575 = !DILocation(line: 120, column: 13, scope: !566, inlinedAt: !1561)
!1576 = !DILocation(line: 121, column: 1, scope: !566, inlinedAt: !1561)
!1577 = !DILocation(line: 458, column: 7, scope: !1530)
!1578 = !DILocation(line: 465, column: 14, scope: !1546)
!1579 = !DILocation(line: 465, column: 7, scope: !1530)
!1580 = !DILocation(line: 460, column: 13, scope: !1530)
!1581 = !DILocation(line: 466, column: 20, scope: !1545)
!1582 = !DILocation(line: 466, column: 11, scope: !1545)
!1583 = !DILocation(line: 467, column: 5, scope: !1545)
!1584 = !DILocation(line: 51, column: 35, scope: !394, inlinedAt: !1585)
!1585 = distinct !DILocation(line: 468, column: 5, scope: !1545)
!1586 = !DILocation(line: 51, column: 42, scope: !394, inlinedAt: !1585)
!1587 = !DILocation(line: 51, column: 57, scope: !394, inlinedAt: !1585)
!1588 = !DILocation(line: 52, column: 3, scope: !394, inlinedAt: !1585)
!1589 = !DILocation(line: 54, column: 7, scope: !402, inlinedAt: !1585)
!1590 = !DILocation(line: 55, column: 7, scope: !403, inlinedAt: !1585)
!1591 = !DILocation(line: 58, column: 7, scope: !406, inlinedAt: !1585)
!1592 = !DILocation(line: 59, column: 7, scope: !407, inlinedAt: !1585)
!1593 = !DILocation(line: 63, column: 7, scope: !409, inlinedAt: !1585)
!1594 = !DILocation(line: 64, column: 7, scope: !410, inlinedAt: !1585)
!1595 = !DILocation(line: 0, scope: !1545)
!1596 = !DILocation(line: 67, column: 19, scope: !394, inlinedAt: !1585)
!1597 = !DILocation(line: 67, column: 6, scope: !394, inlinedAt: !1585)
!1598 = !DILocation(line: 67, column: 10, scope: !394, inlinedAt: !1585)
!1599 = !DILocation(line: 469, column: 16, scope: !1545)
!1600 = !DILocation(line: 470, column: 13, scope: !1545)
!1601 = !DILocation(line: 470, column: 11, scope: !1545)
!1602 = !DILocation(line: 471, column: 22, scope: !1545)
!1603 = !DILocation(line: 471, column: 8, scope: !1545)
!1604 = !DILocation(line: 471, column: 13, scope: !1545)
!1605 = !DILocation(line: 472, column: 25, scope: !1545)
!1606 = !DILocation(line: 472, column: 8, scope: !1545)
!1607 = !DILocation(line: 472, column: 16, scope: !1545)
!1608 = !DILocation(line: 473, column: 18, scope: !1545)
!1609 = !DILocation(line: 71, column: 45, scope: !519, inlinedAt: !1610)
!1610 = distinct !DILocation(line: 474, column: 5, scope: !1545)
!1611 = !DILocation(line: 73, column: 10, scope: !525, inlinedAt: !1610)
!1612 = !DILocation(line: 73, column: 18, scope: !525, inlinedAt: !1610)
!1613 = !DILocation(line: 73, column: 7, scope: !519, inlinedAt: !1610)
!1614 = !DILocation(line: 74, column: 17, scope: !524, inlinedAt: !1610)
!1615 = !DILocation(line: 74, column: 9, scope: !524, inlinedAt: !1610)
!1616 = !DILocation(line: 75, column: 19, scope: !535, inlinedAt: !1610)
!1617 = !DILocation(line: 75, column: 9, scope: !524, inlinedAt: !1610)
!1618 = !DILocation(line: 152, column: 33, scope: !538, inlinedAt: !1619)
!1619 = distinct !DILocation(line: 76, column: 7, scope: !535, inlinedAt: !1610)
!1620 = !DILocation(line: 152, column: 40, scope: !538, inlinedAt: !1619)
!1621 = !DILocation(line: 153, column: 13, scope: !538, inlinedAt: !1619)
!1622 = !DILocation(line: 154, column: 3, scope: !538, inlinedAt: !1619)
!1623 = !DILocation(line: 155, column: 14, scope: !538, inlinedAt: !1619)
!1624 = !DILocation(line: 156, column: 15, scope: !538, inlinedAt: !1619)
!1625 = !DILocation(line: 156, column: 18, scope: !538, inlinedAt: !1619)
!1626 = !DILocation(line: 156, column: 32, scope: !538, inlinedAt: !1619)
!1627 = !DILocation(line: 156, column: 27, scope: !538, inlinedAt: !1619)
!1628 = !DILocation(line: 156, column: 9, scope: !538, inlinedAt: !1619)
!1629 = !DILocation(line: 157, column: 39, scope: !538, inlinedAt: !1619)
!1630 = !DILocation(line: 157, column: 6, scope: !538, inlinedAt: !1619)
!1631 = !DILocation(line: 157, column: 13, scope: !538, inlinedAt: !1619)
!1632 = !DILocation(line: 76, column: 7, scope: !535, inlinedAt: !1610)
!1633 = !DILocation(line: 476, column: 14, scope: !1530)
!1634 = !DILocation(line: 477, column: 3, scope: !1530)
!1635 = distinct !DISubprogram(name: "luaD_protectedparser", scope: !1, file: !1, line: 509, type: !1636, isLocal: false, isDefinition: true, scopeLine: 509, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1638)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{!104, !148, !374, !276}
!1638 = !{!1639, !1640, !1641, !1642, !1643}
!1639 = !DILocalVariable(name: "L", arg: 1, scope: !1635, file: !1, line: 509, type: !148)
!1640 = !DILocalVariable(name: "z", arg: 2, scope: !1635, file: !1, line: 509, type: !374)
!1641 = !DILocalVariable(name: "name", arg: 3, scope: !1635, file: !1, line: 509, type: !276)
!1642 = !DILocalVariable(name: "p", scope: !1635, file: !1, line: 510, type: !371)
!1643 = !DILocalVariable(name: "status", scope: !1635, file: !1, line: 511, type: !104)
!1644 = !DILocation(line: 509, column: 38, scope: !1635)
!1645 = !DILocation(line: 509, column: 46, scope: !1635)
!1646 = !DILocation(line: 509, column: 61, scope: !1635)
!1647 = !DILocation(line: 510, column: 3, scope: !1635)
!1648 = !DILocation(line: 512, column: 5, scope: !1635)
!1649 = !DILocation(line: 512, column: 7, scope: !1635)
!1650 = !{!1651, !428, i64 0}
!1651 = !{!"SParser", !428, i64 0, !471, i64 8, !428, i64 32}
!1652 = !DILocation(line: 512, column: 14, scope: !1635)
!1653 = !DILocation(line: 512, column: 19, scope: !1635)
!1654 = !{!1651, !428, i64 32}
!1655 = !DILocation(line: 513, column: 3, scope: !1635)
!1656 = !{!1651, !428, i64 8}
!1657 = !{!1651, !432, i64 24}
!1658 = !DILocation(line: 514, column: 40, scope: !1635)
!1659 = !DILocation(line: 514, column: 65, scope: !1635)
!1660 = !DILocation(line: 514, column: 12, scope: !1635)
!1661 = !DILocation(line: 511, column: 7, scope: !1635)
!1662 = !DILocation(line: 515, column: 3, scope: !1635)
!1663 = !DILocation(line: 517, column: 1, scope: !1635)
!1664 = !DILocation(line: 516, column: 3, scope: !1635)
!1665 = distinct !DISubprogram(name: "f_parser", scope: !1, file: !1, line: 491, type: !572, isLocal: true, isDefinition: true, scopeLine: 491, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1666)
!1666 = !{!1667, !1668, !1669, !1670, !1671, !1674, !1675, !1676}
!1667 = !DILocalVariable(name: "L", arg: 1, scope: !1665, file: !1, line: 491, type: !148)
!1668 = !DILocalVariable(name: "ud", arg: 2, scope: !1665, file: !1, line: 491, type: !52)
!1669 = !DILocalVariable(name: "i", scope: !1665, file: !1, line: 492, type: !104)
!1670 = !DILocalVariable(name: "tf", scope: !1665, file: !1, line: 493, type: !804)
!1671 = !DILocalVariable(name: "cl", scope: !1665, file: !1, line: 494, type: !1672)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = !DIDerivedType(tag: DW_TAG_typedef, name: "Closure", file: !28, line: 312, baseType: !130)
!1674 = !DILocalVariable(name: "p", scope: !1665, file: !1, line: 495, type: !370)
!1675 = !DILocalVariable(name: "c", scope: !1665, file: !1, line: 496, type: !104)
!1676 = !DILocalVariable(name: "i_o", scope: !1677, file: !1, line: 504, type: !90)
!1677 = distinct !DILexicalBlock(scope: !1665, file: !1, line: 504, column: 3)
!1678 = !DILocation(line: 491, column: 34, scope: !1665)
!1679 = !DILocation(line: 491, column: 43, scope: !1665)
!1680 = !DILocation(line: 495, column: 19, scope: !1665)
!1681 = !DILocation(line: 496, column: 29, scope: !1665)
!1682 = !DILocation(line: 496, column: 11, scope: !1665)
!1683 = !DILocation(line: 496, column: 7, scope: !1665)
!1684 = !DILocation(line: 497, column: 3, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1686, file: !1, line: 497, column: 3)
!1686 = distinct !DILexicalBlock(scope: !1665, file: !1, line: 497, column: 3)
!1687 = !DILocation(line: 497, column: 3, scope: !1686)
!1688 = !DILocation(line: 498, column: 28, scope: !1665)
!1689 = !DILocation(line: 499, column: 66, scope: !1665)
!1690 = !DILocation(line: 499, column: 75, scope: !1665)
!1691 = !DILocation(line: 498, column: 8, scope: !1665)
!1692 = !DILocation(line: 493, column: 10, scope: !1665)
!1693 = !DILocation(line: 500, column: 32, scope: !1665)
!1694 = !{!892, !420, i64 112}
!1695 = !DILocation(line: 500, column: 28, scope: !1665)
!1696 = !DILocation(line: 500, column: 38, scope: !1665)
!1697 = !DILocation(line: 500, column: 8, scope: !1665)
!1698 = !DILocation(line: 494, column: 12, scope: !1665)
!1699 = !DILocation(line: 501, column: 9, scope: !1665)
!1700 = !DILocation(line: 501, column: 11, scope: !1665)
!1701 = !DILocation(line: 492, column: 7, scope: !1665)
!1702 = !DILocation(line: 502, column: 23, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1704, file: !1, line: 502, column: 3)
!1704 = distinct !DILexicalBlock(scope: !1665, file: !1, line: 502, column: 3)
!1705 = !DILocation(line: 502, column: 17, scope: !1703)
!1706 = !DILocation(line: 502, column: 3, scope: !1704)
!1707 = !DILocation(line: 503, column: 23, scope: !1703)
!1708 = !DILocation(line: 503, column: 5, scope: !1703)
!1709 = !DILocation(line: 503, column: 21, scope: !1703)
!1710 = !DILocation(line: 502, column: 30, scope: !1703)
!1711 = distinct !{!1711, !1706, !1712}
!1712 = !DILocation(line: 503, column: 38, scope: !1704)
!1713 = !DILocation(line: 504, column: 3, scope: !1677)
!1714 = !DILocation(line: 505, column: 3, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1716, file: !1, line: 505, column: 3)
!1716 = distinct !DILexicalBlock(scope: !1665, file: !1, line: 505, column: 3)
!1717 = !DILocation(line: 505, column: 3, scope: !1716)
!1718 = !DILocation(line: 161, column: 33, scope: !700, inlinedAt: !1719)
!1719 = distinct !DILocation(line: 505, column: 3, scope: !1715)
!1720 = !DILocation(line: 161, column: 40, scope: !700, inlinedAt: !1719)
!1721 = !DILocation(line: 162, column: 15, scope: !707, inlinedAt: !1719)
!1722 = !DILocation(line: 162, column: 9, scope: !707, inlinedAt: !1719)
!1723 = !DILocation(line: 162, column: 7, scope: !700, inlinedAt: !1719)
!1724 = !DILocation(line: 163, column: 27, scope: !707, inlinedAt: !1719)
!1725 = !DILocation(line: 163, column: 5, scope: !707, inlinedAt: !1719)
!1726 = !DILocation(line: 165, column: 39, scope: !707, inlinedAt: !1719)
!1727 = !DILocation(line: 165, column: 5, scope: !707, inlinedAt: !1719)
!1728 = !DILocation(line: 506, column: 1, scope: !1665)
