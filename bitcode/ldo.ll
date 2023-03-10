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
@__A_VARIABLE = internal global i32 0

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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !439
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !510
  %46 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 16, !dbg !511
  %47 = load i16, i16* %46, align 2, !dbg !511, !tbaa !512
  %48 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 15, !dbg !513
  store i16 %47, i16* %48, align 8, !dbg !514, !tbaa !515
  %49 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 18, !dbg !516
  store i8 1, i8* %49, align 1, !dbg !517, !tbaa !518
  %50 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 14, !dbg !529
  %51 = load i32, i32* %50, align 4, !dbg !529, !tbaa !530
  %52 = icmp sgt i32 %51, 20000, !dbg !531
  br i1 %52, label %53, label %76, !dbg !532

; <label>:53:                                     ; preds = %43
  %54 = bitcast %struct.CallInfo** %20 to i64*, !dbg !533
  %55 = load i64, i64* %54, align 8, !dbg !533, !tbaa !486
  %56 = bitcast %struct.CallInfo** %18 to i64*, !dbg !533
  %57 = load i64, i64* %56, align 8, !dbg !533, !tbaa !483
  %58 = sub i64 %55, %57, !dbg !533
  %59 = sdiv exact i64 %58, 40, !dbg !533
  %60 = trunc i64 %59 to i32, !dbg !533
  %61 = icmp slt i32 %60, 19999, !dbg !535
  br i1 %61, label %62, label %76, !dbg !537

; <label>:62:                                     ; preds = %53
  %63 = inttoptr i64 %57 to i8*, !dbg !546
  %64 = sext i32 %51 to i64, !dbg !546
  %65 = mul nsw i64 %64, 40, !dbg !546
  %66 = tail call i8* @luaM_realloc_(%struct.lua_State* nonnull %0, i8* %63, i64 %65, i64 800000) #6, !dbg !546
  %67 = bitcast %struct.CallInfo** %18 to i8**, !dbg !546
  store i8* %66, i8** %67, align 8, !dbg !546, !tbaa !483
  store i32 20000, i32* %50, align 4, !dbg !548, !tbaa !530
  %68 = load i64, i64* %54, align 8, !dbg !549, !tbaa !486
  %69 = sub i64 %68, %57, !dbg !550
  %70 = sdiv exact i64 %69, 40, !dbg !550
  %71 = bitcast i8* %66 to %struct.CallInfo*, !dbg !551
  %72 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %71, i64 %70, !dbg !552
  store %struct.CallInfo* %72, %struct.CallInfo** %20, align 8, !dbg !553, !tbaa !486
  %73 = getelementptr inbounds i8, i8* %66, i64 799960, !dbg !554
  %74 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 11, !dbg !555
  %75 = bitcast %struct.CallInfo** %74 to i8**, !dbg !556
  store i8* %73, i8** %75, align 8, !dbg !556, !tbaa !557
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !558
  br label %76, !dbg !559

; <label>:76:                                     ; preds = %43, %53, %62
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !560
  %77 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 27, !dbg !561
  store i64 0, i64* %77, align 8, !dbg !562, !tbaa !563
  store %struct.lua_longjmp* null, %struct.lua_longjmp** %3, align 8, !dbg !564, !tbaa !450
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !565
  %78 = load %struct.global_State*, %struct.global_State** %12, align 8, !dbg !566, !tbaa !466
  %79 = getelementptr inbounds %struct.global_State, %struct.global_State* %78, i64 0, i32 19, !dbg !567
  %80 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %79, align 8, !dbg !567, !tbaa !468
  %81 = tail call i32 %80(%struct.lua_State* nonnull %0) #6, !dbg !566
  br label %82, !dbg !568

; <label>:82:                                     ; preds = %9, %76
  tail call void @exit(i32 1) #7, !dbg !569
  unreachable, !dbg !569
}

; Function Attrs: noredzone noreturn
declare dso_local void @longjmp(i64*, i32) local_unnamed_addr #4

; Function Attrs: noredzone noreturn
declare dso_local void @exit(i32) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define hidden i32 @luaD_rawrunprotected(%struct.lua_State*, void (%struct.lua_State*, i8*)* nocapture, i8*) local_unnamed_addr #0 !dbg !570 {
  %4 = alloca %struct.lua_longjmp, align 8
  %5 = bitcast %struct.lua_longjmp* %4 to i8*, !dbg !586
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %5) #8, !dbg !586
  %6 = getelementptr inbounds %struct.lua_longjmp, %struct.lua_longjmp* %4, i64 0, i32 2, !dbg !587
  store volatile i32 0, i32* %6, align 8, !dbg !588, !tbaa !456
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 26, !dbg !589
  %8 = bitcast %struct.lua_longjmp** %7 to i64*, !dbg !589
  %9 = load i64, i64* %8, align 8, !dbg !589, !tbaa !450
  %10 = bitcast %struct.lua_longjmp* %4 to i64*, !dbg !590
  store i64 %9, i64* %10, align 8, !dbg !590, !tbaa !591
  store %struct.lua_longjmp* %4, %struct.lua_longjmp** %7, align 8, !dbg !592, !tbaa !450
  %11 = getelementptr inbounds %struct.lua_longjmp, %struct.lua_longjmp* %4, i64 0, i32 1, i64 0, !dbg !593
  %12 = call i32 @setjmp(i64* nonnull %11) #6, !dbg !593
  %13 = icmp eq i32 %12, 0, !dbg !593
  br i1 %13, label %14, label %15, !dbg !595

; <label>:14:                                     ; preds = %3
  call void %1(%struct.lua_State* nonnull %0, i8* %2) #6, !dbg !596
  br label %15, !dbg !596

; <label>:15:                                     ; preds = %14, %3
  %16 = load i64, i64* %10, align 8, !dbg !598, !tbaa !591
  store i64 %16, i64* %8, align 8, !dbg !599, !tbaa !450
  %17 = load volatile i32, i32* %6, align 8, !dbg !600, !tbaa !456
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %5) #8, !dbg !601
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !602
  ret i32 %17, !dbg !602
}

; Function Attrs: noredzone
declare dso_local i32 @setjmp(i64*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define hidden void @luaD_reallocstack(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !603 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 10, !dbg !611
  %4 = load %struct.lua_TValue*, %struct.lua_TValue** %3, align 8, !dbg !611, !tbaa !612
  %5 = add nsw i32 %1, 6, !dbg !614
  %6 = icmp sgt i32 %1, -8, !dbg !616
  br i1 %6, label %7, label %16, !dbg !616

; <label>:7:                                      ; preds = %2
  %8 = bitcast %struct.lua_TValue* %4 to i8*, !dbg !616
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 13, !dbg !616
  %10 = load i32, i32* %9, align 8, !dbg !616, !tbaa !617
  %11 = sext i32 %10 to i64, !dbg !616
  %12 = shl nsw i64 %11, 4, !dbg !616
  %13 = sext i32 %5 to i64, !dbg !616
  %14 = shl nsw i64 %13, 4, !dbg !616
  %15 = tail call i8* @luaM_realloc_(%struct.lua_State* nonnull %0, i8* %8, i64 %12, i64 %14) #6, !dbg !616
  br label %19, !dbg !616

; <label>:16:                                     ; preds = %2
  %17 = tail call i8* @luaM_toobig(%struct.lua_State* nonnull %0) #6, !dbg !616
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 13, !dbg !618
  br label %19, !dbg !616

; <label>:19:                                     ; preds = %16, %7
  %20 = phi i32* [ %18, %16 ], [ %9, %7 ], !dbg !618
  %21 = phi i8* [ %17, %16 ], [ %15, %7 ], !dbg !616
  %22 = bitcast %struct.lua_TValue** %3 to i8**, !dbg !616
  store i8* %21, i8** %22, align 8, !dbg !616, !tbaa !612
  store i32 %5, i32* %20, align 8, !dbg !619, !tbaa !617
  %23 = bitcast i8* %21 to %struct.lua_TValue*, !dbg !620
  %24 = sext i32 %1 to i64, !dbg !621
  %25 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %23, i64 %24, !dbg !621
  %26 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 9, !dbg !622
  store %struct.lua_TValue* %25, %struct.lua_TValue** %26, align 8, !dbg !623, !tbaa !624
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !636
  %28 = bitcast %struct.lua_TValue** %27 to i64*, !dbg !636
  %29 = load i64, i64* %28, align 8, !dbg !636, !tbaa !426
  %30 = ptrtoint %struct.lua_TValue* %4 to i64, !dbg !637
  %31 = sub i64 %29, %30, !dbg !637
  %32 = ashr exact i64 %31, 4, !dbg !637
  %33 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %23, i64 %32, !dbg !638
  store %struct.lua_TValue* %33, %struct.lua_TValue** %27, align 8, !dbg !639, !tbaa !426
  %34 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 24, !dbg !640
  %35 = load %union.GCObject*, %union.GCObject** %34, align 8, !dbg !643, !tbaa !419
  %36 = icmp eq %union.GCObject* %35, null, !dbg !645
  br i1 %36, label %59, label %37, !dbg !646

; <label>:37:                                     ; preds = %19
  %38 = getelementptr inbounds %union.GCObject, %union.GCObject* %35, i64 0, i32 0, i32 4, !dbg !647
  %39 = bitcast %struct.lua_TValue** %38 to i64*, !dbg !647
  %40 = load i64, i64* %39, align 8, !dbg !647, !tbaa !419
  %41 = sub i64 %40, %30, !dbg !648
  %42 = ashr exact i64 %41, 4, !dbg !648
  %43 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %23, i64 %42, !dbg !649
  store %struct.lua_TValue* %43, %struct.lua_TValue** %38, align 8, !dbg !650, !tbaa !419
  %44 = getelementptr inbounds %union.GCObject, %union.GCObject* %35, i64 0, i32 0, i32 0, !dbg !651
  %45 = load %union.GCObject*, %union.GCObject** %44, align 8, !dbg !643, !tbaa !419
  %46 = icmp eq %union.GCObject* %45, null, !dbg !645
  br i1 %46, label %59, label %47, !dbg !646, !llvm.loop !652

; <label>:47:                                     ; preds = %37, %47
  %48 = phi %union.GCObject* [ %57, %47 ], [ %45, %37 ]
  %49 = load %struct.lua_TValue*, %struct.lua_TValue** %3, align 8, !dbg !655, !tbaa !612
  %50 = getelementptr inbounds %union.GCObject, %union.GCObject* %48, i64 0, i32 0, i32 4, !dbg !647
  %51 = bitcast %struct.lua_TValue** %50 to i64*, !dbg !647
  %52 = load i64, i64* %51, align 8, !dbg !647, !tbaa !419
  %53 = sub i64 %52, %30, !dbg !648
  %54 = ashr exact i64 %53, 4, !dbg !648
  %55 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %49, i64 %54, !dbg !649
  store %struct.lua_TValue* %55, %struct.lua_TValue** %50, align 8, !dbg !650, !tbaa !419
  %56 = getelementptr inbounds %union.GCObject, %union.GCObject* %48, i64 0, i32 0, i32 0, !dbg !651
  %57 = load %union.GCObject*, %union.GCObject** %56, align 8, !dbg !643, !tbaa !419
  %58 = icmp eq %union.GCObject* %57, null, !dbg !645
  br i1 %58, label %59, label %47, !dbg !646, !llvm.loop !652

; <label>:59:                                     ; preds = %47, %37, %19
  %60 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 12, !dbg !656
  %61 = load %struct.CallInfo*, %struct.CallInfo** %60, align 8, !dbg !656, !tbaa !483
  %62 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !659
  %63 = load %struct.CallInfo*, %struct.CallInfo** %62, align 8, !dbg !659, !tbaa !486
  %64 = icmp ugt %struct.CallInfo* %61, %63, !dbg !661
  %65 = load %struct.lua_TValue*, %struct.lua_TValue** %3, align 8, !tbaa !612
  br i1 %64, label %88, label %66, !dbg !662

; <label>:66:                                     ; preds = %59, %66
  %67 = phi %struct.CallInfo* [ %86, %66 ], [ %61, %59 ]
  %68 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %67, i64 0, i32 2, !dbg !663
  %69 = bitcast %struct.lua_TValue** %68 to i64*, !dbg !663
  %70 = load i64, i64* %69, align 8, !dbg !663, !tbaa !665
  %71 = sub i64 %70, %30, !dbg !666
  %72 = ashr exact i64 %71, 4, !dbg !666
  %73 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %65, i64 %72, !dbg !667
  store %struct.lua_TValue* %73, %struct.lua_TValue** %68, align 8, !dbg !668, !tbaa !665
  %74 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %67, i64 0, i32 0, !dbg !669
  %75 = bitcast %struct.CallInfo* %67 to i64*, !dbg !669
  %76 = load i64, i64* %75, align 8, !dbg !669, !tbaa !488
  %77 = sub i64 %76, %30, !dbg !670
  %78 = ashr exact i64 %77, 4, !dbg !670
  %79 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %65, i64 %78, !dbg !671
  store %struct.lua_TValue* %79, %struct.lua_TValue** %74, align 8, !dbg !672, !tbaa !488
  %80 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %67, i64 0, i32 1, !dbg !673
  %81 = bitcast %struct.lua_TValue** %80 to i64*, !dbg !673
  %82 = load i64, i64* %81, align 8, !dbg !673, !tbaa !674
  %83 = sub i64 %82, %30, !dbg !675
  %84 = ashr exact i64 %83, 4, !dbg !675
  %85 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %65, i64 %84, !dbg !676
  store %struct.lua_TValue* %85, %struct.lua_TValue** %80, align 8, !dbg !677, !tbaa !674
  %86 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %67, i64 1, !dbg !678
  %87 = icmp ugt %struct.CallInfo* %86, %63, !dbg !661
  br i1 %87, label %88, label %66, !dbg !662, !llvm.loop !679

; <label>:88:                                     ; preds = %66, %59
  %89 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !682
  %90 = bitcast %struct.lua_TValue** %89 to i64*, !dbg !682
  %91 = load i64, i64* %90, align 8, !dbg !682, !tbaa !492
  %92 = sub i64 %91, %30, !dbg !683
  %93 = ashr exact i64 %92, 4, !dbg !683
  %94 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %65, i64 %93, !dbg !684
  store %struct.lua_TValue* %94, %struct.lua_TValue** %89, align 8, !dbg !685, !tbaa !492
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !686
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !687
  ret void, !dbg !687
}

; Function Attrs: noredzone
declare hidden i8* @luaM_realloc_(%struct.lua_State*, i8*, i64, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden i8* @luaM_toobig(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define hidden void @luaD_reallocCI(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !539 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 12, !dbg !690
  %4 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8, !dbg !690, !tbaa !483
  %5 = icmp sgt i32 %1, -2, !dbg !692
  br i1 %5, label %6, label %15, !dbg !692

; <label>:6:                                      ; preds = %2
  %7 = bitcast %struct.CallInfo* %4 to i8*, !dbg !692
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 14, !dbg !692
  %9 = load i32, i32* %8, align 4, !dbg !692, !tbaa !530
  %10 = sext i32 %9 to i64, !dbg !692
  %11 = mul nsw i64 %10, 40, !dbg !692
  %12 = sext i32 %1 to i64, !dbg !692
  %13 = mul nsw i64 %12, 40, !dbg !692
  %14 = tail call i8* @luaM_realloc_(%struct.lua_State* nonnull %0, i8* %7, i64 %11, i64 %13) #6, !dbg !692
  br label %19, !dbg !692

; <label>:15:                                     ; preds = %2
  %16 = tail call i8* @luaM_toobig(%struct.lua_State* nonnull %0) #6, !dbg !692
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 14, !dbg !693
  %18 = sext i32 %1 to i64, !dbg !694
  br label %19, !dbg !692

; <label>:19:                                     ; preds = %15, %6
  %20 = phi i64 [ %18, %15 ], [ %12, %6 ], !dbg !694
  %21 = phi i32* [ %17, %15 ], [ %8, %6 ], !dbg !693
  %22 = phi i8* [ %16, %15 ], [ %14, %6 ], !dbg !692
  %23 = bitcast %struct.CallInfo** %3 to i8**, !dbg !692
  store i8* %22, i8** %23, align 8, !dbg !692, !tbaa !483
  store i32 %1, i32* %21, align 4, !dbg !695, !tbaa !530
  %24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !696
  %25 = bitcast %struct.CallInfo** %24 to i64*, !dbg !696
  %26 = load i64, i64* %25, align 8, !dbg !696, !tbaa !486
  %27 = ptrtoint %struct.CallInfo* %4 to i64, !dbg !697
  %28 = sub i64 %26, %27, !dbg !697
  %29 = sdiv exact i64 %28, 40, !dbg !697
  %30 = bitcast i8* %22 to %struct.CallInfo*, !dbg !698
  %31 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %30, i64 %29, !dbg !699
  store %struct.CallInfo* %31, %struct.CallInfo** %24, align 8, !dbg !700, !tbaa !486
  %32 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %30, i64 %20, !dbg !694
  %33 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %32, i64 -1, !dbg !701
  %34 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 11, !dbg !702
  store %struct.CallInfo* %33, %struct.CallInfo** %34, align 8, !dbg !703, !tbaa !557
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !704
  ret void, !dbg !704
}

; Function Attrs: noredzone nounwind
define hidden void @luaD_growstack(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !705 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 13, !dbg !711
  %4 = load i32, i32* %3, align 8, !dbg !711, !tbaa !617
  %5 = icmp slt i32 %4, %1, !dbg !713
  br i1 %5, label %8, label %6, !dbg !714

; <label>:6:                                      ; preds = %2
  %7 = shl nsw i32 %4, 1, !dbg !715
  tail call void @luaD_reallocstack(%struct.lua_State* nonnull %0, i32 %7) #9, !dbg !716
  br label %10, !dbg !716

; <label>:8:                                      ; preds = %2
  %9 = add nsw i32 %4, %1, !dbg !717
  tail call void @luaD_reallocstack(%struct.lua_State* nonnull %0, i32 %9) #9, !dbg !718
  br label %10

; <label>:10:                                     ; preds = %8, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !719
  ret void, !dbg !719
}

; Function Attrs: noredzone nounwind
define hidden void @luaD_callhook(%struct.lua_State*, i32, i32) local_unnamed_addr #0 !dbg !720 {
  %4 = alloca %struct.lua_Debug, align 8
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 21, !dbg !736
  %6 = load void (%struct.lua_State*, %struct.lua_Debug*)*, void (%struct.lua_State*, %struct.lua_Debug*)** %5, align 8, !dbg !736, !tbaa !737
  %7 = icmp eq void (%struct.lua_State*, %struct.lua_Debug*)* %6, null, !dbg !739
  br i1 %7, label %71, label %8, !dbg !740

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 18, !dbg !741
  %10 = load i8, i8* %9, align 1, !dbg !741, !tbaa !518
  %11 = icmp eq i8 %10, 0, !dbg !742
  br i1 %11, label %71, label %12, !dbg !743

; <label>:12:                                     ; preds = %8
  %13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !744
  %14 = bitcast %struct.lua_TValue** %13 to i64*, !dbg !744
  %15 = load i64, i64* %14, align 8, !dbg !744, !tbaa !426
  %16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 10, !dbg !744
  %17 = bitcast %struct.lua_TValue** %16 to i64*, !dbg !744
  %18 = load i64, i64* %17, align 8, !dbg !744, !tbaa !612
  %19 = sub i64 %15, %18, !dbg !744
  %20 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !746
  %21 = load %struct.CallInfo*, %struct.CallInfo** %20, align 8, !dbg !746, !tbaa !486
  %22 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %21, i64 0, i32 2, !dbg !746
  %23 = bitcast %struct.lua_TValue** %22 to i64*, !dbg !746
  %24 = load i64, i64* %23, align 8, !dbg !746, !tbaa !665
  %25 = sub i64 %24, %18, !dbg !746
  %26 = bitcast %struct.lua_Debug* %4 to i8*, !dbg !748
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %26) #8, !dbg !748
  %27 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %4, i64 0, i32 0, !dbg !749
  store i32 %1, i32* %27, align 8, !dbg !750, !tbaa !751
  %28 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %4, i64 0, i32 5, !dbg !753
  store i32 %2, i32* %28, align 8, !dbg !754, !tbaa !755
  %29 = icmp eq i32 %1, 4, !dbg !756
  %30 = inttoptr i64 %15 to %struct.lua_TValue*, !dbg !758
  br i1 %29, label %39, label %31, !dbg !758

; <label>:31:                                     ; preds = %12
  %32 = ptrtoint %struct.CallInfo* %21 to i64, !dbg !758
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 12, !dbg !759
  %34 = bitcast %struct.CallInfo** %33 to i64*, !dbg !759
  %35 = load i64, i64* %34, align 8, !dbg !759, !tbaa !483
  %36 = sub i64 %32, %35, !dbg !759
  %37 = sdiv exact i64 %36, 40, !dbg !759
  %38 = trunc i64 %37 to i32, !dbg !759
  br label %39

; <label>:39:                                     ; preds = %12, %31
  %40 = phi i32 [ %38, %31 ], [ 0, %12 ]
  %41 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %4, i64 0, i32 10, !dbg !760
  store i32 %40, i32* %41, align 4, !dbg !761
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 9, !dbg !762
  %43 = bitcast %struct.lua_TValue** %42 to i64*, !dbg !762
  %44 = load i64, i64* %43, align 8, !dbg !762, !tbaa !624
  %45 = sub i64 %44, %15, !dbg !762
  %46 = icmp slt i64 %45, 321, !dbg !762
  br i1 %46, label %47, label %59, !dbg !764

; <label>:47:                                     ; preds = %39
  %48 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 13, !dbg !768
  %49 = load i32, i32* %48, align 8, !dbg !768, !tbaa !617
  %50 = icmp slt i32 %49, 20, !dbg !769
  br i1 %50, label %53, label %51, !dbg !770

; <label>:51:                                     ; preds = %47
  %52 = shl nsw i32 %49, 1, !dbg !771
  tail call void @luaD_reallocstack(%struct.lua_State* nonnull %0, i32 %52) #6, !dbg !772
  br label %55, !dbg !772

; <label>:53:                                     ; preds = %47
  %54 = add nsw i32 %49, 20, !dbg !773
  tail call void @luaD_reallocstack(%struct.lua_State* nonnull %0, i32 %54) #6, !dbg !774
  br label %55

; <label>:55:                                     ; preds = %51, %53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !775
  %56 = load %struct.lua_TValue*, %struct.lua_TValue** %13, align 8, !dbg !776, !tbaa !426
  %57 = load %struct.CallInfo*, %struct.CallInfo** %20, align 8, !dbg !777, !tbaa !486
  %58 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %57, i64 0, i32 2, !dbg !778
  br label %59, !dbg !762

; <label>:59:                                     ; preds = %39, %55
  %60 = phi %struct.lua_TValue** [ %22, %39 ], [ %58, %55 ], !dbg !778
  %61 = phi %struct.lua_TValue* [ %30, %39 ], [ %56, %55 ], !dbg !776
  %62 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %61, i64 20, !dbg !779
  store %struct.lua_TValue* %62, %struct.lua_TValue** %60, align 8, !dbg !780, !tbaa !665
  store i8 0, i8* %9, align 1, !dbg !781, !tbaa !518
  call void %6(%struct.lua_State* nonnull %0, %struct.lua_Debug* nonnull %4) #6, !dbg !783
  store i8 1, i8* %9, align 1, !dbg !784, !tbaa !518
  %63 = bitcast %struct.lua_TValue** %16 to i8**, !dbg !785
  %64 = load i8*, i8** %63, align 8, !dbg !785, !tbaa !612
  %65 = getelementptr inbounds i8, i8* %64, i64 %25, !dbg !785
  %66 = load %struct.CallInfo*, %struct.CallInfo** %20, align 8, !dbg !786, !tbaa !486
  %67 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %66, i64 0, i32 2, !dbg !787
  %68 = bitcast %struct.lua_TValue** %67 to i8**, !dbg !788
  store i8* %65, i8** %68, align 8, !dbg !788, !tbaa !665
  %69 = getelementptr inbounds i8, i8* %64, i64 %19, !dbg !789
  %70 = bitcast %struct.lua_TValue** %13 to i8**, !dbg !790
  store i8* %69, i8** %70, align 8, !dbg !790, !tbaa !426
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %26) #8, !dbg !791
  br label %71, !dbg !792

; <label>:71:                                     ; preds = %8, %3, %59
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !793
  ret void, !dbg !793
}

; Function Attrs: noredzone nounwind
define hidden i32 @luaD_precall(%struct.lua_State*, %struct.lua_TValue*, i32) local_unnamed_addr #0 !dbg !794 {
  %4 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1, i64 0, i32 1, !dbg !821
  %5 = load i32, i32* %4, align 8, !dbg !821, !tbaa !433
  %6 = icmp eq i32 %5, 6, !dbg !821
  br i1 %6, label %7, label %10, !dbg !823

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 10, !dbg !824
  %9 = bitcast %struct.lua_TValue** %8 to i64*, !dbg !824
  br label %72, !dbg !823

; <label>:10:                                     ; preds = %3
  %11 = tail call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* %0, %struct.lua_TValue* nonnull %1, i32 16) #6, !dbg !845
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 10, !dbg !847
  %13 = bitcast %struct.lua_TValue** %12 to i64*, !dbg !847
  %14 = load i64, i64* %13, align 8, !dbg !847, !tbaa !612
  %15 = ptrtoint %struct.lua_TValue* %1 to i64, !dbg !847
  %16 = sub i64 %15, %14, !dbg !847
  %17 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %11, i64 0, i32 1, !dbg !849
  %18 = load i32, i32* %17, align 8, !dbg !849, !tbaa !433
  %19 = icmp eq i32 %18, 6, !dbg !849
  br i1 %19, label %21, label %20, !dbg !851

; <label>:20:                                     ; preds = %10
  tail call void @luaG_typeerror(%struct.lua_State* nonnull %0, %struct.lua_TValue* nonnull %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !852
  br label %21, !dbg !852

; <label>:21:                                     ; preds = %20, %10
  %22 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !853
  %23 = load %struct.lua_TValue*, %struct.lua_TValue** %22, align 8, !dbg !853, !tbaa !426
  %24 = icmp ugt %struct.lua_TValue* %23, %1, !dbg !855
  br i1 %24, label %27, label %25, !dbg !856

; <label>:25:                                     ; preds = %21
  %26 = ptrtoint %struct.lua_TValue* %23 to i64, !dbg !856
  br label %41, !dbg !856

; <label>:27:                                     ; preds = %21, %27
  %28 = phi %struct.lua_TValue* [ %29, %27 ], [ %23, %21 ]
  %29 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %28, i64 -1, !dbg !857
  %30 = bitcast %struct.lua_TValue* %29 to i64*, !dbg !857
  %31 = bitcast %struct.lua_TValue* %28 to i64*, !dbg !857
  %32 = load i64, i64* %30, align 8, !dbg !857
  store i64 %32, i64* %31, align 8, !dbg !857
  %33 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %28, i64 -1, i32 1, !dbg !857
  %34 = load i32, i32* %33, align 8, !dbg !857, !tbaa !433
  %35 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %28, i64 0, i32 1, !dbg !857
  store i32 %34, i32* %35, align 8, !dbg !857, !tbaa !433
  %36 = icmp ugt %struct.lua_TValue* %29, %1, !dbg !855
  br i1 %36, label %27, label %37, !dbg !856, !llvm.loop !858

; <label>:37:                                     ; preds = %27
  %38 = bitcast %struct.lua_TValue** %22 to i64*
  %39 = load i64, i64* %38, align 8, !dbg !861, !tbaa !426
  %40 = inttoptr i64 %39 to %struct.lua_TValue*, !dbg !861
  br label %41, !dbg !861

; <label>:41:                                     ; preds = %37, %25
  %42 = phi %struct.lua_TValue* [ %40, %37 ], [ %23, %25 ]
  %43 = phi i64 [ %39, %37 ], [ %26, %25 ], !dbg !861
  %44 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 9, !dbg !861
  %45 = bitcast %struct.lua_TValue** %44 to i64*, !dbg !861
  %46 = load i64, i64* %45, align 8, !dbg !861, !tbaa !624
  %47 = sub i64 %46, %43, !dbg !861
  %48 = icmp slt i64 %47, 17, !dbg !861
  br i1 %48, label %49, label %59, !dbg !864

; <label>:49:                                     ; preds = %41
  %50 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 13, !dbg !868
  %51 = load i32, i32* %50, align 8, !dbg !868, !tbaa !617
  %52 = icmp slt i32 %51, 1, !dbg !869
  br i1 %52, label %55, label %53, !dbg !870

; <label>:53:                                     ; preds = %49
  %54 = shl nsw i32 %51, 1, !dbg !871
  tail call void @luaD_reallocstack(%struct.lua_State* nonnull %0, i32 %54) #6, !dbg !872
  br label %57, !dbg !872

; <label>:55:                                     ; preds = %49
  %56 = add nsw i32 %51, 1, !dbg !873
  tail call void @luaD_reallocstack(%struct.lua_State* nonnull %0, i32 %56) #6, !dbg !874
  br label %57

; <label>:57:                                     ; preds = %55, %53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !875
  %58 = load %struct.lua_TValue*, %struct.lua_TValue** %22, align 8, !dbg !864, !tbaa !426
  br label %59, !dbg !861

; <label>:59:                                     ; preds = %41, %57
  %60 = phi %struct.lua_TValue* [ %42, %41 ], [ %58, %57 ], !dbg !864
  %61 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %60, i64 1, !dbg !864
  store %struct.lua_TValue* %61, %struct.lua_TValue** %22, align 8, !dbg !864, !tbaa !426
  %62 = bitcast %struct.lua_TValue** %12 to i8**, !dbg !876
  %63 = load i8*, i8** %62, align 8, !dbg !876, !tbaa !612
  %64 = getelementptr inbounds i8, i8* %63, i64 %16, !dbg !876
  %65 = bitcast i8* %64 to %struct.lua_TValue*, !dbg !876
  %66 = bitcast %struct.lua_TValue* %11 to i64*, !dbg !877
  %67 = bitcast i8* %64 to i64*, !dbg !877
  %68 = load i64, i64* %66, align 8, !dbg !877
  store i64 %68, i64* %67, align 8, !dbg !877
  %69 = load i32, i32* %17, align 8, !dbg !877, !tbaa !433
  %70 = getelementptr inbounds i8, i8* %64, i64 8, !dbg !877
  %71 = bitcast i8* %70 to i32*, !dbg !877
  store i32 %69, i32* %71, align 8, !dbg !877, !tbaa !433
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !878
  br label %72, !dbg !879

; <label>:72:                                     ; preds = %7, %59
  %73 = phi i64* [ %9, %7 ], [ %13, %59 ], !dbg !824
  %74 = phi %struct.lua_TValue** [ %8, %7 ], [ %12, %59 ], !dbg !824
  %75 = phi %struct.lua_TValue* [ %1, %7 ], [ %65, %59 ]
  %76 = load i64, i64* %73, align 8, !dbg !824, !tbaa !612
  %77 = ptrtoint %struct.lua_TValue* %75 to i64, !dbg !824
  %78 = sub i64 %77, %76, !dbg !824
  %79 = bitcast %struct.lua_TValue* %75 to %struct.LClosure**, !dbg !881
  %80 = load %struct.LClosure*, %struct.LClosure** %79, align 8, !dbg !881, !tbaa !419
  %81 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8, !dbg !883
  %82 = bitcast i32** %81 to i64*, !dbg !883
  %83 = load i64, i64* %82, align 8, !dbg !883, !tbaa !884
  %84 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !885
  %85 = load %struct.CallInfo*, %struct.CallInfo** %84, align 8, !dbg !885, !tbaa !486
  %86 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %85, i64 0, i32 3, !dbg !886
  %87 = bitcast i32** %86 to i64*, !dbg !887
  store i64 %83, i64* %87, align 8, !dbg !887, !tbaa !888
  %88 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %80, i64 0, i32 3, !dbg !889
  %89 = load i8, i8* %88, align 2, !dbg !889, !tbaa !890
  %90 = icmp eq i8 %89, 0, !dbg !892
  %91 = inttoptr i64 %76 to i8*, !dbg !893
  br i1 %90, label %92, label %434, !dbg !893

; <label>:92:                                     ; preds = %72
  %93 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %80, i64 0, i32 7, !dbg !894
  %94 = load %struct.Proto*, %struct.Proto** %93, align 8, !dbg !894, !tbaa !895
  %95 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 9, !dbg !897
  %96 = bitcast %struct.lua_TValue** %95 to i64*, !dbg !897
  %97 = load i64, i64* %96, align 8, !dbg !897, !tbaa !624
  %98 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !897
  %99 = bitcast %struct.lua_TValue** %98 to i64*, !dbg !897
  %100 = load i64, i64* %99, align 8, !dbg !897, !tbaa !426
  %101 = sub i64 %97, %100, !dbg !897
  %102 = getelementptr inbounds %struct.Proto, %struct.Proto* %94, i64 0, i32 22, !dbg !897
  %103 = load i8, i8* %102, align 1, !dbg !897, !tbaa !899
  %104 = zext i8 %103 to i32, !dbg !897
  %105 = shl nuw nsw i32 %104, 4, !dbg !897
  %106 = zext i32 %105 to i64, !dbg !897
  %107 = icmp sgt i64 %101, %106, !dbg !897
  br i1 %107, label %108, label %110, !dbg !901

; <label>:108:                                    ; preds = %92
  %109 = bitcast %struct.lua_TValue** %74 to i8**, !dbg !902
  br label %121, !dbg !901

; <label>:110:                                    ; preds = %92
  %111 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 13, !dbg !906
  %112 = load i32, i32* %111, align 8, !dbg !906, !tbaa !617
  %113 = icmp slt i32 %112, %104, !dbg !907
  br i1 %113, label %116, label %114, !dbg !908

; <label>:114:                                    ; preds = %110
  %115 = shl nsw i32 %112, 1, !dbg !909
  tail call void @luaD_reallocstack(%struct.lua_State* nonnull %0, i32 %115) #6, !dbg !910
  br label %118, !dbg !910

; <label>:116:                                    ; preds = %110
  %117 = add nsw i32 %112, %104, !dbg !911
  tail call void @luaD_reallocstack(%struct.lua_State* nonnull %0, i32 %117) #6, !dbg !912
  br label %118

; <label>:118:                                    ; preds = %114, %116
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !913
  %119 = bitcast %struct.lua_TValue** %74 to i8**
  %120 = load i8*, i8** %119, align 8, !dbg !902, !tbaa !612
  br label %121, !dbg !897

; <label>:121:                                    ; preds = %108, %118
  %122 = phi i8** [ %109, %108 ], [ %119, %118 ], !dbg !902
  %123 = phi i8* [ %91, %108 ], [ %120, %118 ], !dbg !902
  %124 = getelementptr inbounds i8, i8* %123, i64 %78, !dbg !902
  %125 = bitcast i8* %124 to %struct.lua_TValue*, !dbg !902
  %126 = getelementptr inbounds %struct.Proto, %struct.Proto* %94, i64 0, i32 21, !dbg !914
  %127 = load i8, i8* %126, align 2, !dbg !914, !tbaa !915
  %128 = icmp eq i8 %127, 0, !dbg !916
  br i1 %128, label %129, label %139, !dbg !917

; <label>:129:                                    ; preds = %121
  %130 = getelementptr inbounds i8, i8* %124, i64 16, !dbg !918
  %131 = bitcast i8* %130 to %struct.lua_TValue*, !dbg !918
  %132 = load %struct.lua_TValue*, %struct.lua_TValue** %98, align 8, !dbg !921, !tbaa !426
  %133 = getelementptr inbounds %struct.Proto, %struct.Proto* %94, i64 0, i32 20, !dbg !923
  %134 = load i8, i8* %133, align 1, !dbg !923, !tbaa !924
  %135 = zext i8 %134 to i64, !dbg !925
  %136 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %131, i64 %135, !dbg !925
  %137 = icmp ugt %struct.lua_TValue* %132, %136, !dbg !926
  br i1 %137, label %138, label %327, !dbg !927

; <label>:138:                                    ; preds = %129
  store %struct.lua_TValue* %136, %struct.lua_TValue** %98, align 8, !dbg !928, !tbaa !426
  br label %327, !dbg !929

; <label>:139:                                    ; preds = %121
  %140 = load i64, i64* %99, align 8, !dbg !930, !tbaa !426
  %141 = ptrtoint i8* %124 to i64, !dbg !930
  %142 = sub i64 %140, %141, !dbg !930
  %143 = lshr exact i64 %142, 4, !dbg !930
  %144 = trunc i64 %143 to i32, !dbg !930
  %145 = add nsw i32 %144, -1, !dbg !931
  %146 = getelementptr inbounds %struct.Proto, %struct.Proto* %94, i64 0, i32 20, !dbg !971
  %147 = load i8, i8* %146, align 1, !dbg !971, !tbaa !924
  %148 = zext i8 %147 to i32, !dbg !972
  %149 = icmp slt i32 %148, %144, !dbg !975
  %150 = inttoptr i64 %140 to %struct.lua_TValue*, !dbg !978
  br i1 %149, label %189, label %151, !dbg !978

; <label>:151:                                    ; preds = %139
  %152 = sub i32 %148, %144, !dbg !978
  %153 = zext i32 %152 to i64, !dbg !978
  %154 = add nuw nsw i32 %148, 1, !dbg !978
  %155 = sub i32 %154, %144, !dbg !978
  %156 = and i32 %155, 7, !dbg !978
  %157 = icmp eq i32 %156, 0, !dbg !978
  br i1 %157, label %167, label %158, !dbg !978

; <label>:158:                                    ; preds = %151, %158
  %159 = phi %struct.lua_TValue* [ %162, %158 ], [ %150, %151 ], !dbg !970
  %160 = phi i32 [ %164, %158 ], [ %145, %151 ]
  %161 = phi i32 [ %165, %158 ], [ %156, %151 ]
  %162 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %159, i64 1, !dbg !979
  %163 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %159, i64 0, i32 1, !dbg !979
  store i32 0, i32* %163, align 8, !dbg !979, !tbaa !433
  %164 = add nsw i32 %160, 1, !dbg !980
  %165 = add i32 %161, -1, !dbg !978
  %166 = icmp eq i32 %165, 0, !dbg !978
  br i1 %166, label %167, label %158, !dbg !978, !llvm.loop !981

; <label>:167:                                    ; preds = %158, %151
  %168 = phi %struct.lua_TValue* [ %150, %151 ], [ %162, %158 ]
  %169 = phi i32 [ %145, %151 ], [ %164, %158 ]
  %170 = icmp ult i32 %152, 7, !dbg !978
  br i1 %170, label %185, label %171, !dbg !978

; <label>:171:                                    ; preds = %167, %171
  %172 = phi %struct.lua_TValue* [ %181, %171 ], [ %168, %167 ], !dbg !970
  %173 = phi i32 [ %183, %171 ], [ %169, %167 ]
  %174 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %172, i64 0, i32 1, !dbg !979
  store i32 0, i32* %174, align 8, !dbg !979, !tbaa !433
  %175 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %172, i64 1, i32 1, !dbg !979
  store i32 0, i32* %175, align 8, !dbg !979, !tbaa !433
  %176 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %172, i64 2, i32 1, !dbg !979
  store i32 0, i32* %176, align 8, !dbg !979, !tbaa !433
  %177 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %172, i64 3, i32 1, !dbg !979
  store i32 0, i32* %177, align 8, !dbg !979, !tbaa !433
  %178 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %172, i64 4, i32 1, !dbg !979
  store i32 0, i32* %178, align 8, !dbg !979, !tbaa !433
  %179 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %172, i64 5, i32 1, !dbg !979
  store i32 0, i32* %179, align 8, !dbg !979, !tbaa !433
  %180 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %172, i64 6, i32 1, !dbg !979
  store i32 0, i32* %180, align 8, !dbg !979, !tbaa !433
  %181 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %172, i64 8, !dbg !979
  %182 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %172, i64 7, i32 1, !dbg !979
  store i32 0, i32* %182, align 8, !dbg !979, !tbaa !433
  %183 = add nsw i32 %173, 8, !dbg !980
  %184 = icmp eq i32 %183, %148, !dbg !975
  br i1 %184, label %185, label %171, !dbg !978, !llvm.loop !983

; <label>:185:                                    ; preds = %171, %167
  %186 = add nuw nsw i64 %153, 1, !dbg !978
  %187 = getelementptr %struct.lua_TValue, %struct.lua_TValue* %150, i64 %186, !dbg !978
  store %struct.lua_TValue* %187, %struct.lua_TValue** %98, align 8, !dbg !979, !tbaa !426
  %188 = ptrtoint %struct.lua_TValue* %187 to i64, !dbg !978
  br label %189, !dbg !978

; <label>:189:                                    ; preds = %139, %185
  %190 = phi %struct.lua_TValue* [ %187, %185 ], [ %150, %139 ]
  %191 = phi i64 [ %188, %185 ], [ %140, %139 ]
  %192 = phi i32 [ %148, %185 ], [ %145, %139 ]
  %193 = and i8 %127, 4, !dbg !986
  %194 = icmp eq i8 %193, 0, !dbg !986
  br i1 %194, label %253, label %195, !dbg !987

; <label>:195:                                    ; preds = %189
  %196 = sub i32 %192, %148, !dbg !988
  %197 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !990
  %198 = load %struct.global_State*, %struct.global_State** %197, align 8, !dbg !990, !tbaa !466
  %199 = getelementptr inbounds %struct.global_State, %struct.global_State* %198, i64 0, i32 14, !dbg !990
  %200 = load i64, i64* %199, align 8, !dbg !990, !tbaa !993
  %201 = getelementptr inbounds %struct.global_State, %struct.global_State* %198, i64 0, i32 13, !dbg !990
  %202 = load i64, i64* %201, align 8, !dbg !990, !tbaa !994
  %203 = icmp ult i64 %200, %202, !dbg !990
  br i1 %203, label %206, label %204, !dbg !995

; <label>:204:                                    ; preds = %195
  tail call void @luaC_step(%struct.lua_State* nonnull %0) #6, !dbg !990
  %205 = load i64, i64* %99, align 8, !dbg !996, !tbaa !426
  br label %206, !dbg !990

; <label>:206:                                    ; preds = %204, %195
  %207 = phi i64 [ %205, %204 ], [ %191, %195 ], !dbg !996
  %208 = load i64, i64* %96, align 8, !dbg !996, !tbaa !624
  %209 = sub i64 %208, %207, !dbg !996
  %210 = load i8, i8* %102, align 1, !dbg !996, !tbaa !899
  %211 = zext i8 %210 to i32, !dbg !996
  %212 = shl nuw nsw i32 %211, 4, !dbg !996
  %213 = zext i32 %212 to i64, !dbg !996
  %214 = icmp sgt i64 %209, %213, !dbg !996
  br i1 %214, label %224, label %215, !dbg !998

; <label>:215:                                    ; preds = %206
  %216 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 13, !dbg !1002
  %217 = load i32, i32* %216, align 8, !dbg !1002, !tbaa !617
  %218 = icmp slt i32 %217, %211, !dbg !1003
  br i1 %218, label %221, label %219, !dbg !1004

; <label>:219:                                    ; preds = %215
  %220 = shl nsw i32 %217, 1, !dbg !1005
  tail call void @luaD_reallocstack(%struct.lua_State* nonnull %0, i32 %220) #6, !dbg !1006
  br label %223, !dbg !1006

; <label>:221:                                    ; preds = %215
  %222 = add nsw i32 %217, %211, !dbg !1007
  tail call void @luaD_reallocstack(%struct.lua_State* nonnull %0, i32 %222) #6, !dbg !1008
  br label %223

; <label>:223:                                    ; preds = %221, %219
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1009
  br label %224, !dbg !996

; <label>:224:                                    ; preds = %223, %206
  %225 = tail call %struct.Table* @luaH_new(%struct.lua_State* nonnull %0, i32 %196, i32 1) #6, !dbg !1010
  %226 = icmp sgt i32 %196, 0, !dbg !1012
  br i1 %226, label %227, label %246, !dbg !1013

; <label>:227:                                    ; preds = %224
  %228 = sext i32 %196 to i64
  %229 = sub nsw i64 0, %228
  %230 = zext i32 %196 to i64
  br label %231, !dbg !1013

; <label>:231:                                    ; preds = %231, %227
  %232 = phi i64 [ 0, %227 ], [ %236, %231 ]
  %233 = load %struct.lua_TValue*, %struct.lua_TValue** %98, align 8, !dbg !1014, !tbaa !426
  %234 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %233, i64 %229, !dbg !1014
  %235 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %234, i64 %232, !dbg !1014
  %236 = add nuw nsw i64 %232, 1, !dbg !1014
  %237 = trunc i64 %236 to i32, !dbg !1014
  %238 = tail call %struct.lua_TValue* @luaH_setnum(%struct.lua_State* nonnull %0, %struct.Table* %225, i32 %237) #6, !dbg !1014
  %239 = bitcast %struct.lua_TValue* %235 to i64*, !dbg !1014
  %240 = bitcast %struct.lua_TValue* %238 to i64*, !dbg !1014
  %241 = load i64, i64* %239, align 8, !dbg !1014
  store i64 %241, i64* %240, align 8, !dbg !1014
  %242 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %235, i64 0, i32 1, !dbg !1014
  %243 = load i32, i32* %242, align 8, !dbg !1014, !tbaa !433
  %244 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %238, i64 0, i32 1, !dbg !1014
  store i32 %243, i32* %244, align 8, !dbg !1014, !tbaa !433
  %245 = icmp eq i64 %236, %230, !dbg !1012
  br i1 %245, label %246, label %231, !dbg !1013, !llvm.loop !1015

; <label>:246:                                    ; preds = %231, %224
  %247 = tail call %union.TString* @luaS_newlstr(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i64 1) #6, !dbg !1018
  %248 = tail call %struct.lua_TValue* @luaH_setstr(%struct.lua_State* nonnull %0, %struct.Table* %225, %union.TString* %247) #6, !dbg !1018
  %249 = sitofp i32 %196 to double, !dbg !1018
  %250 = bitcast %struct.lua_TValue* %248 to double*, !dbg !1018
  store double %249, double* %250, align 8, !dbg !1018, !tbaa !419
  %251 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %248, i64 0, i32 1, !dbg !1018
  store i32 3, i32* %251, align 8, !dbg !1018, !tbaa !433
  %252 = load %struct.lua_TValue*, %struct.lua_TValue** %98, align 8, !dbg !1019, !tbaa !426
  br label %253, !dbg !1020

; <label>:253:                                    ; preds = %189, %246
  %254 = phi %struct.lua_TValue* [ %252, %246 ], [ %190, %189 ], !dbg !1019
  %255 = phi %struct.Table* [ %225, %246 ], [ null, %189 ], !dbg !1021
  %256 = sext i32 %192 to i64, !dbg !1022
  %257 = sub nsw i64 0, %256, !dbg !1022
  %258 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %254, i64 %257, !dbg !1022
  %259 = icmp eq i8 %147, 0, !dbg !1025
  br i1 %259, label %316, label %260, !dbg !1026

; <label>:260:                                    ; preds = %253
  %261 = zext i8 %147 to i64
  %262 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %254, i64 1, !dbg !1027
  store %struct.lua_TValue* %262, %struct.lua_TValue** %98, align 8, !dbg !1027, !tbaa !426
  %263 = bitcast %struct.lua_TValue* %258 to i64*, !dbg !1027
  %264 = bitcast %struct.lua_TValue* %254 to i64*, !dbg !1027
  %265 = load i64, i64* %263, align 8, !dbg !1027
  store i64 %265, i64* %264, align 8, !dbg !1027
  %266 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %254, i64 %257, i32 1, !dbg !1027
  %267 = load i32, i32* %266, align 8, !dbg !1027, !tbaa !433
  %268 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %254, i64 0, i32 1, !dbg !1027
  store i32 %267, i32* %268, align 8, !dbg !1027, !tbaa !433
  store i32 0, i32* %266, align 8, !dbg !1028, !tbaa !433
  %269 = icmp eq i8 %147, 1, !dbg !1025
  br i1 %269, label %316, label %270, !dbg !1026, !llvm.loop !1029

; <label>:270:                                    ; preds = %260
  %271 = and i8 %147, 1, !dbg !1027
  %272 = xor i8 %271, 1, !dbg !1027
  %273 = icmp eq i8 %147, 2, !dbg !1027
  br i1 %273, label %303, label %274, !dbg !1027

; <label>:274:                                    ; preds = %270
  %275 = zext i8 %272 to i64, !dbg !1027
  %276 = xor i64 %275, -1, !dbg !1027
  %277 = add nsw i64 %276, %261, !dbg !1027
  br label %278, !dbg !1027

; <label>:278:                                    ; preds = %278, %274
  %279 = phi i64 [ 1, %274 ], [ %300, %278 ]
  %280 = phi i64 [ %277, %274 ], [ %301, %278 ]
  %281 = load %struct.lua_TValue*, %struct.lua_TValue** %98, align 8, !dbg !1027, !tbaa !426
  %282 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %258, i64 %279, !dbg !1027
  %283 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %281, i64 1, !dbg !1027
  store %struct.lua_TValue* %283, %struct.lua_TValue** %98, align 8, !dbg !1027, !tbaa !426
  %284 = bitcast %struct.lua_TValue* %282 to i64*, !dbg !1027
  %285 = bitcast %struct.lua_TValue* %281 to i64*, !dbg !1027
  %286 = load i64, i64* %284, align 8, !dbg !1027
  store i64 %286, i64* %285, align 8, !dbg !1027
  %287 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %282, i64 0, i32 1, !dbg !1027
  %288 = load i32, i32* %287, align 8, !dbg !1027, !tbaa !433
  %289 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %281, i64 0, i32 1, !dbg !1027
  store i32 %288, i32* %289, align 8, !dbg !1027, !tbaa !433
  store i32 0, i32* %287, align 8, !dbg !1028, !tbaa !433
  %290 = add nuw nsw i64 %279, 1, !dbg !1032
  %291 = load %struct.lua_TValue*, %struct.lua_TValue** %98, align 8, !dbg !1027, !tbaa !426
  %292 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %258, i64 %290, !dbg !1027
  %293 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %291, i64 1, !dbg !1027
  store %struct.lua_TValue* %293, %struct.lua_TValue** %98, align 8, !dbg !1027, !tbaa !426
  %294 = bitcast %struct.lua_TValue* %292 to i64*, !dbg !1027
  %295 = bitcast %struct.lua_TValue* %291 to i64*, !dbg !1027
  %296 = load i64, i64* %294, align 8, !dbg !1027
  store i64 %296, i64* %295, align 8, !dbg !1027
  %297 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %292, i64 0, i32 1, !dbg !1027
  %298 = load i32, i32* %297, align 8, !dbg !1027, !tbaa !433
  %299 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %291, i64 0, i32 1, !dbg !1027
  store i32 %298, i32* %299, align 8, !dbg !1027, !tbaa !433
  store i32 0, i32* %297, align 8, !dbg !1028, !tbaa !433
  %300 = add nuw nsw i64 %279, 2, !dbg !1032
  %301 = add i64 %280, -2, !dbg !1026
  %302 = icmp eq i64 %301, 0, !dbg !1026
  br i1 %302, label %303, label %278, !dbg !1026, !llvm.loop !1029

; <label>:303:                                    ; preds = %278, %270
  %304 = phi i64 [ 1, %270 ], [ %300, %278 ]
  %305 = icmp eq i8 %272, 0, !dbg !1026
  br i1 %305, label %316, label %306, !dbg !1026

; <label>:306:                                    ; preds = %303
  %307 = load %struct.lua_TValue*, %struct.lua_TValue** %98, align 8, !dbg !1027, !tbaa !426
  %308 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %258, i64 %304, !dbg !1027
  %309 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %307, i64 1, !dbg !1027
  store %struct.lua_TValue* %309, %struct.lua_TValue** %98, align 8, !dbg !1027, !tbaa !426
  %310 = bitcast %struct.lua_TValue* %308 to i64*, !dbg !1027
  %311 = bitcast %struct.lua_TValue* %307 to i64*, !dbg !1027
  %312 = load i64, i64* %310, align 8, !dbg !1027
  store i64 %312, i64* %311, align 8, !dbg !1027
  %313 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %308, i64 0, i32 1, !dbg !1027
  %314 = load i32, i32* %313, align 8, !dbg !1027, !tbaa !433
  %315 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %307, i64 0, i32 1, !dbg !1027
  store i32 %314, i32* %315, align 8, !dbg !1027, !tbaa !433
  store i32 0, i32* %313, align 8, !dbg !1028, !tbaa !433
  br label %316, !dbg !1033

; <label>:316:                                    ; preds = %306, %303, %260, %253
  %317 = icmp eq %struct.Table* %255, null, !dbg !1033
  br i1 %317, label %323, label %318, !dbg !1034

; <label>:318:                                    ; preds = %316
  %319 = load %struct.lua_TValue*, %struct.lua_TValue** %98, align 8, !dbg !1035, !tbaa !426
  %320 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %319, i64 1, !dbg !1035
  store %struct.lua_TValue* %320, %struct.lua_TValue** %98, align 8, !dbg !1035, !tbaa !426
  %321 = bitcast %struct.lua_TValue* %319 to %struct.Table**, !dbg !1035
  store %struct.Table* %255, %struct.Table** %321, align 8, !dbg !1035, !tbaa !419
  %322 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %319, i64 0, i32 1, !dbg !1035
  store i32 5, i32* %322, align 8, !dbg !1035, !tbaa !433
  br label %323, !dbg !1036

; <label>:323:                                    ; preds = %316, %318
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1037
  %324 = load i8*, i8** %122, align 8, !dbg !1038, !tbaa !612
  %325 = getelementptr inbounds i8, i8* %324, i64 %78, !dbg !1038
  %326 = bitcast i8* %325 to %struct.lua_TValue*, !dbg !1038
  br label %327

; <label>:327:                                    ; preds = %129, %138, %323
  %328 = phi %struct.lua_TValue* [ %254, %323 ], [ %131, %138 ], [ %131, %129 ], !dbg !1039
  %329 = phi %struct.lua_TValue* [ %326, %323 ], [ %125, %138 ], [ %125, %129 ], !dbg !1040
  %330 = load %struct.CallInfo*, %struct.CallInfo** %84, align 8, !dbg !1041, !tbaa !486
  %331 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 11, !dbg !1041
  %332 = load %struct.CallInfo*, %struct.CallInfo** %331, align 8, !dbg !1041, !tbaa !557
  %333 = icmp eq %struct.CallInfo* %330, %332, !dbg !1041
  br i1 %333, label %334, label %373, !dbg !1041

; <label>:334:                                    ; preds = %327
  %335 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 14, !dbg !1049
  %336 = load i32, i32* %335, align 4, !dbg !1049, !tbaa !530
  %337 = icmp sgt i32 %336, 20000, !dbg !1051
  br i1 %337, label %338, label %339, !dbg !1052

; <label>:338:                                    ; preds = %334
  tail call void @luaD_throw(%struct.lua_State* nonnull %0, i32 5) #6, !dbg !1053
  unreachable

; <label>:339:                                    ; preds = %334
  %340 = shl nsw i32 %336, 1, !dbg !1054
  %341 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 12, !dbg !1059
  %342 = load %struct.CallInfo*, %struct.CallInfo** %341, align 8, !dbg !1059, !tbaa !483
  %343 = icmp sgt i32 %336, -1, !dbg !1061
  br i1 %343, label %344, label %351, !dbg !1061

; <label>:344:                                    ; preds = %339
  %345 = bitcast %struct.CallInfo* %342 to i8*, !dbg !1061
  %346 = sext i32 %336 to i64, !dbg !1061
  %347 = mul nsw i64 %346, 40, !dbg !1061
  %348 = sext i32 %340 to i64, !dbg !1061
  %349 = mul nsw i64 %348, 40, !dbg !1061
  %350 = tail call i8* @luaM_realloc_(%struct.lua_State* nonnull %0, i8* %345, i64 %347, i64 %349) #6, !dbg !1061
  br label %354, !dbg !1061

; <label>:351:                                    ; preds = %339
  %352 = tail call i8* @luaM_toobig(%struct.lua_State* nonnull %0) #6, !dbg !1061
  %353 = sext i32 %340 to i64, !dbg !1062
  br label %354, !dbg !1061

; <label>:354:                                    ; preds = %344, %351
  %355 = phi i64 [ %353, %351 ], [ %348, %344 ], !dbg !1062
  %356 = phi i8* [ %352, %351 ], [ %350, %344 ], !dbg !1061
  %357 = bitcast %struct.CallInfo** %341 to i8**, !dbg !1061
  store i8* %356, i8** %357, align 8, !dbg !1061, !tbaa !483
  store i32 %340, i32* %335, align 4, !dbg !1063, !tbaa !530
  %358 = bitcast %struct.CallInfo** %84 to i64*, !dbg !1064
  %359 = load i64, i64* %358, align 8, !dbg !1064, !tbaa !486
  %360 = ptrtoint %struct.CallInfo* %342 to i64, !dbg !1065
  %361 = sub i64 %359, %360, !dbg !1065
  %362 = sdiv exact i64 %361, 40, !dbg !1065
  %363 = bitcast i8* %356 to %struct.CallInfo*, !dbg !1066
  %364 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %363, i64 %362, !dbg !1067
  store %struct.CallInfo* %364, %struct.CallInfo** %84, align 8, !dbg !1068, !tbaa !486
  %365 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %363, i64 %355, !dbg !1062
  %366 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %365, i64 -1, !dbg !1069
  store %struct.CallInfo* %366, %struct.CallInfo** %331, align 8, !dbg !1070, !tbaa !557
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1071
  %367 = icmp sgt i32 %336, 10000, !dbg !1072
  br i1 %367, label %368, label %370, !dbg !1074

; <label>:368:                                    ; preds = %354
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !1075
  %369 = load %struct.CallInfo*, %struct.CallInfo** %84, align 8, !dbg !1076, !tbaa !486
  br label %370, !dbg !1075

; <label>:370:                                    ; preds = %354, %368
  %371 = phi %struct.CallInfo* [ %364, %354 ], [ %369, %368 ], !dbg !1076
  %372 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %371, i64 1, !dbg !1076
  store %struct.CallInfo* %372, %struct.CallInfo** %84, align 8, !dbg !1076, !tbaa !486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1077
  br label %375, !dbg !1041

; <label>:373:                                    ; preds = %327
  %374 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %330, i64 1, !dbg !1041
  store %struct.CallInfo* %374, %struct.CallInfo** %84, align 8, !dbg !1041, !tbaa !486
  br label %375, !dbg !1041

; <label>:375:                                    ; preds = %373, %370
  %376 = phi %struct.CallInfo* [ %372, %370 ], [ %374, %373 ], !dbg !1041
  %377 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %376, i64 0, i32 1, !dbg !1079
  store %struct.lua_TValue* %329, %struct.lua_TValue** %377, align 8, !dbg !1080, !tbaa !674
  %378 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %376, i64 0, i32 0, !dbg !1081
  store %struct.lua_TValue* %328, %struct.lua_TValue** %378, align 8, !dbg !1082, !tbaa !488
  %379 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !1083
  store %struct.lua_TValue* %328, %struct.lua_TValue** %379, align 8, !dbg !1084, !tbaa !492
  %380 = load i8, i8* %102, align 1, !dbg !1085, !tbaa !899
  %381 = zext i8 %380 to i64, !dbg !1086
  %382 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %328, i64 %381, !dbg !1086
  %383 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %376, i64 0, i32 2, !dbg !1087
  store %struct.lua_TValue* %382, %struct.lua_TValue** %383, align 8, !dbg !1088, !tbaa !665
  %384 = getelementptr inbounds %struct.Proto, %struct.Proto* %94, i64 0, i32 4, !dbg !1089
  %385 = bitcast i32** %384 to i64*, !dbg !1089
  %386 = load i64, i64* %385, align 8, !dbg !1089, !tbaa !1090
  store i64 %386, i64* %82, align 8, !dbg !1091, !tbaa !884
  %387 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %376, i64 0, i32 5, !dbg !1092
  store i32 0, i32* %387, align 4, !dbg !1093, !tbaa !1094
  %388 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %376, i64 0, i32 4, !dbg !1095
  store i32 %2, i32* %388, align 8, !dbg !1096, !tbaa !1097
  %389 = load %struct.lua_TValue*, %struct.lua_TValue** %98, align 8, !dbg !1098, !tbaa !426
  %390 = icmp ult %struct.lua_TValue* %389, %382, !dbg !1101
  %391 = inttoptr i64 %386 to i32*, !dbg !1103
  br i1 %390, label %392, label %425, !dbg !1103

; <label>:392:                                    ; preds = %375
  %393 = ptrtoint %struct.lua_TValue* %389 to i64
  %394 = getelementptr %struct.lua_TValue, %struct.lua_TValue* %328, i64 %381, i32 0, i32 0, !dbg !1104
  %395 = bitcast %union.GCObject** %394 to i8*
  %396 = xor i64 %393, -1, !dbg !1104
  %397 = getelementptr i8, i8* %395, i64 %396, !dbg !1104
  %398 = ptrtoint i8* %397 to i64
  %399 = lshr i64 %398, 4, !dbg !1104
  %400 = add nuw nsw i64 %399, 1, !dbg !1104
  %401 = and i64 %400, 7, !dbg !1104
  %402 = icmp eq i64 %401, 0, !dbg !1104
  br i1 %402, label %410, label %403, !dbg !1104

; <label>:403:                                    ; preds = %392, %403
  %404 = phi %struct.lua_TValue* [ %407, %403 ], [ %389, %392 ]
  %405 = phi i64 [ %408, %403 ], [ %401, %392 ]
  %406 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %404, i64 0, i32 1, !dbg !1104
  store i32 0, i32* %406, align 8, !dbg !1104, !tbaa !433
  %407 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %404, i64 1, !dbg !1105
  %408 = add i64 %405, -1, !dbg !1103
  %409 = icmp eq i64 %408, 0, !dbg !1103
  br i1 %409, label %410, label %403, !dbg !1103, !llvm.loop !1106

; <label>:410:                                    ; preds = %403, %392
  %411 = phi %struct.lua_TValue* [ %389, %392 ], [ %407, %403 ]
  %412 = icmp ult i8* %397, inttoptr (i64 112 to i8*), !dbg !1104
  br i1 %412, label %425, label %413, !dbg !1104

; <label>:413:                                    ; preds = %410, %413
  %414 = phi %struct.lua_TValue* [ %423, %413 ], [ %411, %410 ]
  %415 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %414, i64 0, i32 1, !dbg !1104
  store i32 0, i32* %415, align 8, !dbg !1104, !tbaa !433
  %416 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %414, i64 1, i32 1, !dbg !1104
  store i32 0, i32* %416, align 8, !dbg !1104, !tbaa !433
  %417 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %414, i64 2, i32 1, !dbg !1104
  store i32 0, i32* %417, align 8, !dbg !1104, !tbaa !433
  %418 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %414, i64 3, i32 1, !dbg !1104
  store i32 0, i32* %418, align 8, !dbg !1104, !tbaa !433
  %419 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %414, i64 4, i32 1, !dbg !1104
  store i32 0, i32* %419, align 8, !dbg !1104, !tbaa !433
  %420 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %414, i64 5, i32 1, !dbg !1104
  store i32 0, i32* %420, align 8, !dbg !1104, !tbaa !433
  %421 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %414, i64 6, i32 1, !dbg !1104
  store i32 0, i32* %421, align 8, !dbg !1104, !tbaa !433
  %422 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %414, i64 7, i32 1, !dbg !1104
  store i32 0, i32* %422, align 8, !dbg !1104, !tbaa !433
  %423 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %414, i64 8, !dbg !1105
  %424 = icmp ult %struct.lua_TValue* %423, %382, !dbg !1101
  br i1 %424, label %413, label %425, !dbg !1103, !llvm.loop !1107

; <label>:425:                                    ; preds = %410, %413, %375
  store %struct.lua_TValue* %382, %struct.lua_TValue** %98, align 8, !dbg !1109, !tbaa !426
  %426 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 17, !dbg !1110
  %427 = load i8, i8* %426, align 4, !dbg !1110, !tbaa !1112
  %428 = and i8 %427, 1, !dbg !1113
  %429 = icmp eq i8 %428, 0, !dbg !1113
  br i1 %429, label %536, label %430, !dbg !1114

; <label>:430:                                    ; preds = %425
  %431 = getelementptr inbounds i32, i32* %391, i64 1, !dbg !1115
  store i32* %431, i32** %81, align 8, !dbg !1115, !tbaa !884
  tail call void @luaD_callhook(%struct.lua_State* nonnull %0, i32 0, i32 -1) #9, !dbg !1117
  %432 = load i32*, i32** %81, align 8, !dbg !1118, !tbaa !884
  %433 = getelementptr inbounds i32, i32* %432, i64 -1, !dbg !1118
  store i32* %433, i32** %81, align 8, !dbg !1118, !tbaa !884
  br label %536, !dbg !1119

; <label>:434:                                    ; preds = %72
  %435 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 9, !dbg !1120
  %436 = bitcast %struct.lua_TValue** %435 to i64*, !dbg !1120
  %437 = load i64, i64* %436, align 8, !dbg !1120, !tbaa !624
  %438 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1120
  %439 = bitcast %struct.lua_TValue** %438 to i64*, !dbg !1120
  %440 = load i64, i64* %439, align 8, !dbg !1120, !tbaa !426
  %441 = sub i64 %437, %440, !dbg !1120
  %442 = icmp slt i64 %441, 321, !dbg !1120
  br i1 %442, label %443, label %453, !dbg !1122

; <label>:443:                                    ; preds = %434
  %444 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 13, !dbg !1126
  %445 = load i32, i32* %444, align 8, !dbg !1126, !tbaa !617
  %446 = icmp slt i32 %445, 20, !dbg !1127
  br i1 %446, label %449, label %447, !dbg !1128

; <label>:447:                                    ; preds = %443
  %448 = shl nsw i32 %445, 1, !dbg !1129
  tail call void @luaD_reallocstack(%struct.lua_State* nonnull %0, i32 %448) #6, !dbg !1130
  br label %451, !dbg !1130

; <label>:449:                                    ; preds = %443
  %450 = add nsw i32 %445, 20, !dbg !1131
  tail call void @luaD_reallocstack(%struct.lua_State* nonnull %0, i32 %450) #6, !dbg !1132
  br label %451

; <label>:451:                                    ; preds = %447, %449
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1133
  %452 = load %struct.CallInfo*, %struct.CallInfo** %84, align 8, !dbg !1134, !tbaa !486
  br label %453, !dbg !1120

; <label>:453:                                    ; preds = %434, %451
  %454 = phi %struct.CallInfo* [ %85, %434 ], [ %452, %451 ], !dbg !1134
  %455 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 11, !dbg !1134
  %456 = load %struct.CallInfo*, %struct.CallInfo** %455, align 8, !dbg !1134, !tbaa !557
  %457 = icmp eq %struct.CallInfo* %454, %456, !dbg !1134
  br i1 %457, label %458, label %497, !dbg !1134

; <label>:458:                                    ; preds = %453
  %459 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 14, !dbg !1137
  %460 = load i32, i32* %459, align 4, !dbg !1137, !tbaa !530
  %461 = icmp sgt i32 %460, 20000, !dbg !1138
  br i1 %461, label %462, label %463, !dbg !1139

; <label>:462:                                    ; preds = %458
  tail call void @luaD_throw(%struct.lua_State* nonnull %0, i32 5) #6, !dbg !1140
  unreachable

; <label>:463:                                    ; preds = %458
  %464 = shl nsw i32 %460, 1, !dbg !1141
  %465 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 12, !dbg !1145
  %466 = load %struct.CallInfo*, %struct.CallInfo** %465, align 8, !dbg !1145, !tbaa !483
  %467 = icmp sgt i32 %460, -1, !dbg !1147
  br i1 %467, label %468, label %475, !dbg !1147

; <label>:468:                                    ; preds = %463
  %469 = bitcast %struct.CallInfo* %466 to i8*, !dbg !1147
  %470 = sext i32 %460 to i64, !dbg !1147
  %471 = mul nsw i64 %470, 40, !dbg !1147
  %472 = sext i32 %464 to i64, !dbg !1147
  %473 = mul nsw i64 %472, 40, !dbg !1147
  %474 = tail call i8* @luaM_realloc_(%struct.lua_State* nonnull %0, i8* %469, i64 %471, i64 %473) #6, !dbg !1147
  br label %478, !dbg !1147

; <label>:475:                                    ; preds = %463
  %476 = tail call i8* @luaM_toobig(%struct.lua_State* nonnull %0) #6, !dbg !1147
  %477 = sext i32 %464 to i64, !dbg !1148
  br label %478, !dbg !1147

; <label>:478:                                    ; preds = %468, %475
  %479 = phi i64 [ %477, %475 ], [ %472, %468 ], !dbg !1148
  %480 = phi i8* [ %476, %475 ], [ %474, %468 ], !dbg !1147
  %481 = bitcast %struct.CallInfo** %465 to i8**, !dbg !1147
  store i8* %480, i8** %481, align 8, !dbg !1147, !tbaa !483
  store i32 %464, i32* %459, align 4, !dbg !1149, !tbaa !530
  %482 = bitcast %struct.CallInfo** %84 to i64*, !dbg !1150
  %483 = load i64, i64* %482, align 8, !dbg !1150, !tbaa !486
  %484 = ptrtoint %struct.CallInfo* %466 to i64, !dbg !1151
  %485 = sub i64 %483, %484, !dbg !1151
  %486 = sdiv exact i64 %485, 40, !dbg !1151
  %487 = bitcast i8* %480 to %struct.CallInfo*, !dbg !1152
  %488 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %487, i64 %486, !dbg !1153
  store %struct.CallInfo* %488, %struct.CallInfo** %84, align 8, !dbg !1154, !tbaa !486
  %489 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %487, i64 %479, !dbg !1148
  %490 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %489, i64 -1, !dbg !1155
  store %struct.CallInfo* %490, %struct.CallInfo** %455, align 8, !dbg !1156, !tbaa !557
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1157
  %491 = icmp sgt i32 %460, 10000, !dbg !1158
  br i1 %491, label %492, label %494, !dbg !1159

; <label>:492:                                    ; preds = %478
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !1160
  %493 = load %struct.CallInfo*, %struct.CallInfo** %84, align 8, !dbg !1161, !tbaa !486
  br label %494, !dbg !1160

; <label>:494:                                    ; preds = %478, %492
  %495 = phi %struct.CallInfo* [ %488, %478 ], [ %493, %492 ], !dbg !1161
  %496 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %495, i64 1, !dbg !1161
  store %struct.CallInfo* %496, %struct.CallInfo** %84, align 8, !dbg !1161, !tbaa !486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1162
  br label %499, !dbg !1134

; <label>:497:                                    ; preds = %453
  %498 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %454, i64 1, !dbg !1134
  store %struct.CallInfo* %498, %struct.CallInfo** %84, align 8, !dbg !1134, !tbaa !486
  br label %499, !dbg !1134

; <label>:499:                                    ; preds = %497, %494
  %500 = phi %struct.CallInfo* [ %496, %494 ], [ %498, %497 ], !dbg !1134
  %501 = bitcast %struct.lua_TValue** %74 to i8**, !dbg !1164
  %502 = load i8*, i8** %501, align 8, !dbg !1164, !tbaa !612
  %503 = getelementptr inbounds i8, i8* %502, i64 %78, !dbg !1164
  %504 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %500, i64 0, i32 1, !dbg !1165
  %505 = bitcast %struct.lua_TValue** %504 to i8**, !dbg !1166
  store i8* %503, i8** %505, align 8, !dbg !1166, !tbaa !674
  %506 = getelementptr inbounds i8, i8* %503, i64 16, !dbg !1167
  %507 = bitcast %struct.CallInfo* %500 to i8**, !dbg !1168
  store i8* %506, i8** %507, align 8, !dbg !1168, !tbaa !488
  %508 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !1169
  %509 = bitcast %struct.lua_TValue** %508 to i8**, !dbg !1170
  store i8* %506, i8** %509, align 8, !dbg !1170, !tbaa !492
  %510 = load %struct.lua_TValue*, %struct.lua_TValue** %438, align 8, !dbg !1171, !tbaa !426
  %511 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %510, i64 20, !dbg !1172
  %512 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %500, i64 0, i32 2, !dbg !1173
  store %struct.lua_TValue* %511, %struct.lua_TValue** %512, align 8, !dbg !1174, !tbaa !665
  %513 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %500, i64 0, i32 4, !dbg !1175
  store i32 %2, i32* %513, align 8, !dbg !1176, !tbaa !1097
  %514 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 17, !dbg !1177
  %515 = load i8, i8* %514, align 4, !dbg !1177, !tbaa !1112
  %516 = and i8 %515, 1, !dbg !1179
  %517 = icmp eq i8 %516, 0, !dbg !1179
  br i1 %517, label %521, label %518, !dbg !1180

; <label>:518:                                    ; preds = %499
  tail call void @luaD_callhook(%struct.lua_State* nonnull %0, i32 0, i32 -1) #9, !dbg !1181
  %519 = load %struct.CallInfo*, %struct.CallInfo** %84, align 8, !dbg !1182, !tbaa !486
  %520 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %519, i64 0, i32 1, !dbg !1182
  br label %521, !dbg !1181

; <label>:521:                                    ; preds = %499, %518
  %522 = phi %struct.lua_TValue** [ %504, %499 ], [ %520, %518 ], !dbg !1182
  %523 = bitcast %struct.lua_TValue** %522 to %struct.CClosure***, !dbg !1182
  %524 = load %struct.CClosure**, %struct.CClosure*** %523, align 8, !dbg !1182, !tbaa !674
  %525 = load %struct.CClosure*, %struct.CClosure** %524, align 8, !dbg !1182, !tbaa !419
  %526 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %525, i64 0, i32 7, !dbg !1183
  %527 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %526, align 8, !dbg !1183, !tbaa !419
  %528 = tail call i32 %527(%struct.lua_State* nonnull %0) #6, !dbg !1184
  %529 = icmp slt i32 %528, 0, !dbg !1186
  br i1 %529, label %536, label %530, !dbg !1188

; <label>:530:                                    ; preds = %521
  %531 = load %struct.lua_TValue*, %struct.lua_TValue** %438, align 8, !dbg !1189, !tbaa !426
  %532 = sext i32 %528 to i64, !dbg !1191
  %533 = sub nsw i64 0, %532, !dbg !1191
  %534 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %531, i64 %533, !dbg !1191
  %535 = tail call i32 @luaD_poscall(%struct.lua_State* nonnull %0, %struct.lua_TValue* %534) #9, !dbg !1192
  br label %536, !dbg !1193

; <label>:536:                                    ; preds = %530, %521, %430, %425
  %537 = phi i32 [ 0, %425 ], [ 0, %430 ], [ 1, %530 ], [ 2, %521 ], !dbg !1040
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1194
  ret i32 %537, !dbg !1194
}

; Function Attrs: noredzone nounwind
define hidden i32 @luaD_poscall(%struct.lua_State*, %struct.lua_TValue*) local_unnamed_addr #0 !dbg !1195 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 17, !dbg !1212
  %4 = load i8, i8* %3, align 4, !dbg !1212, !tbaa !1112
  %5 = and i8 %4, 2, !dbg !1214
  %6 = icmp eq i8 %5, 0, !dbg !1214
  br i1 %6, label %7, label %9, !dbg !1215

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1216
  br label %48, !dbg !1215

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 10, !dbg !1225
  %11 = bitcast %struct.lua_TValue** %10 to i64*, !dbg !1225
  %12 = load i64, i64* %11, align 8, !dbg !1225, !tbaa !612
  %13 = ptrtoint %struct.lua_TValue* %1 to i64, !dbg !1225
  %14 = sub i64 %13, %12, !dbg !1225
  tail call void @luaD_callhook(%struct.lua_State* nonnull %0, i32 1, i32 -1) #6, !dbg !1227
  %15 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1228
  %16 = load %struct.CallInfo*, %struct.CallInfo** %15, align 8, !dbg !1228, !tbaa !486
  %17 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %16, i64 0, i32 1, !dbg !1228
  %18 = bitcast %struct.lua_TValue** %17 to %struct.CClosure***, !dbg !1228
  %19 = load %struct.CClosure**, %struct.CClosure*** %18, align 8, !dbg !1228, !tbaa !674
  %20 = load %struct.CClosure*, %struct.CClosure** %19, align 8, !dbg !1228, !tbaa !419
  %21 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %20, i64 0, i32 3, !dbg !1228
  %22 = load i8, i8* %21, align 2, !dbg !1228, !tbaa !419
  %23 = icmp eq i8 %22, 0, !dbg !1228
  br i1 %23, label %24, label %43, !dbg !1230

; <label>:24:                                     ; preds = %9
  %25 = load i8, i8* %3, align 4, !dbg !1231, !tbaa !1112
  %26 = and i8 %25, 2, !dbg !1233
  %27 = icmp eq i8 %26, 0, !dbg !1233
  br i1 %27, label %43, label %28, !dbg !1234

; <label>:28:                                     ; preds = %24
  %29 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %16, i64 0, i32 5, !dbg !1235
  %30 = load i32, i32* %29, align 4, !dbg !1236, !tbaa !1094
  %31 = add nsw i32 %30, -1, !dbg !1236
  store i32 %31, i32* %29, align 4, !dbg !1236, !tbaa !1094
  %32 = icmp eq i32 %30, 0, !dbg !1234
  br i1 %32, label %43, label %33, !dbg !1237

; <label>:33:                                     ; preds = %28, %37
  tail call void @luaD_callhook(%struct.lua_State* nonnull %0, i32 4, i32 -1) #6, !dbg !1238
  %34 = load i8, i8* %3, align 4, !dbg !1231, !tbaa !1112
  %35 = and i8 %34, 2, !dbg !1233
  %36 = icmp eq i8 %35, 0, !dbg !1233
  br i1 %36, label %43, label %37, !dbg !1234, !llvm.loop !1239

; <label>:37:                                     ; preds = %33
  %38 = load %struct.CallInfo*, %struct.CallInfo** %15, align 8, !dbg !1242, !tbaa !486
  %39 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %38, i64 0, i32 5, !dbg !1235
  %40 = load i32, i32* %39, align 4, !dbg !1236, !tbaa !1094
  %41 = add nsw i32 %40, -1, !dbg !1236
  store i32 %41, i32* %39, align 4, !dbg !1236, !tbaa !1094
  %42 = icmp eq i32 %40, 0, !dbg !1234
  br i1 %42, label %43, label %33, !dbg !1237

; <label>:43:                                     ; preds = %33, %37, %28, %9, %24
  %44 = bitcast %struct.lua_TValue** %10 to i8**, !dbg !1243
  %45 = load i8*, i8** %44, align 8, !dbg !1243, !tbaa !612
  %46 = getelementptr inbounds i8, i8* %45, i64 %14, !dbg !1243
  %47 = bitcast i8* %46 to %struct.lua_TValue*, !dbg !1243
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1244
  br label %48, !dbg !1245

; <label>:48:                                     ; preds = %7, %43
  %49 = phi %struct.CallInfo** [ %8, %7 ], [ %15, %43 ], !dbg !1216
  %50 = phi %struct.lua_TValue* [ %1, %7 ], [ %47, %43 ]
  %51 = load %struct.CallInfo*, %struct.CallInfo** %49, align 8, !dbg !1246, !tbaa !486
  %52 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %51, i64 -1, !dbg !1246
  store %struct.CallInfo* %52, %struct.CallInfo** %49, align 8, !dbg !1246, !tbaa !486
  %53 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %51, i64 0, i32 1, !dbg !1248
  %54 = load %struct.lua_TValue*, %struct.lua_TValue** %53, align 8, !dbg !1248, !tbaa !674
  %55 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %51, i64 0, i32 4, !dbg !1250
  %56 = load i32, i32* %55, align 8, !dbg !1250, !tbaa !1097
  %57 = bitcast %struct.CallInfo* %52 to i64*, !dbg !1252
  %58 = load i64, i64* %57, align 8, !dbg !1252, !tbaa !488
  %59 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !1253
  %60 = bitcast %struct.lua_TValue** %59 to i64*, !dbg !1254
  store i64 %58, i64* %60, align 8, !dbg !1254, !tbaa !492
  %61 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %51, i64 -1, i32 3, !dbg !1255
  %62 = bitcast i32** %61 to i64*, !dbg !1255
  %63 = load i64, i64* %62, align 8, !dbg !1255, !tbaa !888
  %64 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8, !dbg !1256
  %65 = bitcast i32** %64 to i64*, !dbg !1257
  store i64 %63, i64* %65, align 8, !dbg !1257, !tbaa !884
  %66 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1259
  %67 = icmp eq i32 %56, 0, !dbg !1260
  br i1 %67, label %94, label %68, !dbg !1261

; <label>:68:                                     ; preds = %48, %74
  %69 = phi %struct.lua_TValue* [ %75, %74 ], [ %50, %48 ]
  %70 = phi %struct.lua_TValue* [ %76, %74 ], [ %54, %48 ]
  %71 = phi i32 [ %83, %74 ], [ %56, %48 ]
  %72 = load %struct.lua_TValue*, %struct.lua_TValue** %66, align 8, !dbg !1259, !tbaa !426
  %73 = icmp ult %struct.lua_TValue* %69, %72, !dbg !1262
  br i1 %73, label %74, label %85, !dbg !1263

; <label>:74:                                     ; preds = %68
  %75 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %69, i64 1, !dbg !1264
  %76 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %70, i64 1, !dbg !1264
  %77 = bitcast %struct.lua_TValue* %69 to i64*, !dbg !1264
  %78 = bitcast %struct.lua_TValue* %70 to i64*, !dbg !1264
  %79 = load i64, i64* %77, align 8, !dbg !1264
  store i64 %79, i64* %78, align 8, !dbg !1264
  %80 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %69, i64 0, i32 1, !dbg !1264
  %81 = load i32, i32* %80, align 8, !dbg !1264, !tbaa !433
  %82 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %70, i64 0, i32 1, !dbg !1264
  store i32 %81, i32* %82, align 8, !dbg !1264, !tbaa !433
  %83 = add nsw i32 %71, -1, !dbg !1265
  %84 = icmp eq i32 %83, 0, !dbg !1260
  br i1 %84, label %94, label %68, !dbg !1261, !llvm.loop !1266

; <label>:85:                                     ; preds = %68
  %86 = icmp sgt i32 %71, 0, !dbg !1268
  br i1 %86, label %87, label %94, !dbg !1269

; <label>:87:                                     ; preds = %85, %87
  %88 = phi %struct.lua_TValue* [ %91, %87 ], [ %70, %85 ]
  %89 = phi i32 [ %90, %87 ], [ %71, %85 ]
  %90 = add nsw i32 %89, -1, !dbg !1270
  %91 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %88, i64 1, !dbg !1271
  %92 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %88, i64 0, i32 1, !dbg !1271
  store i32 0, i32* %92, align 8, !dbg !1271, !tbaa !433
  %93 = icmp sgt i32 %89, 1, !dbg !1268
  br i1 %93, label %87, label %94, !dbg !1269, !llvm.loop !1272

; <label>:94:                                     ; preds = %74, %87, %48, %85
  %95 = phi %struct.lua_TValue* [ %70, %85 ], [ %54, %48 ], [ %91, %87 ], [ %76, %74 ], !dbg !1273
  store %struct.lua_TValue* %95, %struct.lua_TValue** %66, align 8, !dbg !1274, !tbaa !426
  %96 = add nsw i32 %56, 1, !dbg !1275
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1276
  ret i32 %96, !dbg !1276
}

; Function Attrs: noredzone nounwind
define hidden void @luaD_call(%struct.lua_State*, %struct.lua_TValue*, i32) local_unnamed_addr #0 !dbg !1277 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 15, !dbg !1287
  %5 = load i16, i16* %4, align 8, !dbg !1289, !tbaa !515
  %6 = add i16 %5, 1, !dbg !1289
  store i16 %6, i16* %4, align 8, !dbg !1289, !tbaa !515
  %7 = icmp ugt i16 %6, 199, !dbg !1290
  br i1 %7, label %8, label %14, !dbg !1291

; <label>:8:                                      ; preds = %3
  %9 = icmp eq i16 %6, 200, !dbg !1292
  br i1 %9, label %10, label %11, !dbg !1295

; <label>:10:                                     ; preds = %8
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !1296
  br label %14, !dbg !1296

; <label>:11:                                     ; preds = %8
  %12 = icmp ugt i16 %6, 224, !dbg !1297
  br i1 %12, label %13, label %14, !dbg !1299

; <label>:13:                                     ; preds = %11
  tail call void @luaD_throw(%struct.lua_State* nonnull %0, i32 5) #9, !dbg !1300
  unreachable

; <label>:14:                                     ; preds = %10, %11, %3
  %15 = tail call i32 @luaD_precall(%struct.lua_State* nonnull %0, %struct.lua_TValue* %1, i32 %2) #9, !dbg !1301
  %16 = icmp eq i32 %15, 0, !dbg !1303
  br i1 %16, label %17, label %18, !dbg !1304

; <label>:17:                                     ; preds = %14
  tail call void @luaV_execute(%struct.lua_State* nonnull %0, i32 1) #6, !dbg !1305
  br label %18, !dbg !1305

; <label>:18:                                     ; preds = %17, %14
  %19 = load i16, i16* %4, align 8, !dbg !1306, !tbaa !515
  %20 = add i16 %19, -1, !dbg !1306
  store i16 %20, i16* %4, align 8, !dbg !1306, !tbaa !515
  %21 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1307
  %22 = load %struct.global_State*, %struct.global_State** %21, align 8, !dbg !1307, !tbaa !466
  %23 = getelementptr inbounds %struct.global_State, %struct.global_State* %22, i64 0, i32 14, !dbg !1307
  %24 = load i64, i64* %23, align 8, !dbg !1307, !tbaa !993
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %22, i64 0, i32 13, !dbg !1307
  %26 = load i64, i64* %25, align 8, !dbg !1307, !tbaa !994
  %27 = icmp ult i64 %24, %26, !dbg !1307
  br i1 %27, label %29, label %28, !dbg !1310

; <label>:28:                                     ; preds = %18
  tail call void @luaC_step(%struct.lua_State* nonnull %0) #6, !dbg !1307
  br label %29, !dbg !1307

; <label>:29:                                     ; preds = %18, %28
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1311
  ret void, !dbg !1311
}

; Function Attrs: noredzone
declare hidden void @luaG_runerror(%struct.lua_State*, i8*, ...) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden void @luaV_execute(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden void @luaC_step(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_resume(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !1312 {
  %3 = alloca %struct.lua_longjmp, align 8
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 3, !dbg !1321
  %5 = load i8, i8* %4, align 2, !dbg !1321, !tbaa !463
  switch i8 %5, label %6 [
    i8 1, label %45
    i8 0, label %9
  ], !dbg !1323

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %8 = load %struct.CallInfo*, %struct.CallInfo** %7, align 8, !dbg !1324, !tbaa !486
  br label %15, !dbg !1323

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1334
  %11 = load %struct.CallInfo*, %struct.CallInfo** %10, align 8, !dbg !1334, !tbaa !486
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 12, !dbg !1335
  %13 = load %struct.CallInfo*, %struct.CallInfo** %12, align 8, !dbg !1335, !tbaa !483
  %14 = icmp eq %struct.CallInfo* %11, %13, !dbg !1336
  br i1 %14, label %45, label %15, !dbg !1337

; <label>:15:                                     ; preds = %6, %9
  %16 = phi %struct.CallInfo* [ %8, %6 ], [ %11, %9 ], !dbg !1324
  %17 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %16, i64 0, i32 0, !dbg !1340
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %17, align 8, !dbg !1340, !tbaa !488
  %19 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1341
  store %struct.lua_TValue* %18, %struct.lua_TValue** %19, align 8, !dbg !1342, !tbaa !426
  %20 = tail call i64 @strlen(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !1343
  %21 = tail call %union.TString* @luaS_newlstr(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i64 %20) #6, !dbg !1343
  %22 = bitcast %struct.lua_TValue* %18 to %union.TString**, !dbg !1343
  store %union.TString* %21, %union.TString** %22, align 8, !dbg !1343, !tbaa !419
  %23 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 0, i32 1, !dbg !1343
  store i32 4, i32* %23, align 8, !dbg !1343, !tbaa !433
  %24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 9, !dbg !1344
  %25 = bitcast %struct.lua_TValue** %24 to i64*, !dbg !1344
  %26 = load i64, i64* %25, align 8, !dbg !1344, !tbaa !624
  %27 = bitcast %struct.lua_TValue** %19 to i64*, !dbg !1344
  %28 = load i64, i64* %27, align 8, !dbg !1344, !tbaa !426
  %29 = sub i64 %26, %28, !dbg !1344
  %30 = icmp slt i64 %29, 17, !dbg !1344
  %31 = inttoptr i64 %28 to %struct.lua_TValue*, !dbg !1347
  br i1 %30, label %32, label %42, !dbg !1347

; <label>:32:                                     ; preds = %15
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 13, !dbg !1351
  %34 = load i32, i32* %33, align 8, !dbg !1351, !tbaa !617
  %35 = icmp slt i32 %34, 1, !dbg !1352
  br i1 %35, label %38, label %36, !dbg !1353

; <label>:36:                                     ; preds = %32
  %37 = shl nsw i32 %34, 1, !dbg !1354
  tail call void @luaD_reallocstack(%struct.lua_State* nonnull %0, i32 %37) #6, !dbg !1355
  br label %40, !dbg !1355

; <label>:38:                                     ; preds = %32
  %39 = add nsw i32 %34, 1, !dbg !1356
  tail call void @luaD_reallocstack(%struct.lua_State* nonnull %0, i32 %39) #6, !dbg !1357
  br label %40

; <label>:40:                                     ; preds = %38, %36
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1358
  %41 = load %struct.lua_TValue*, %struct.lua_TValue** %19, align 8, !dbg !1347, !tbaa !426
  br label %42, !dbg !1344

; <label>:42:                                     ; preds = %15, %40
  %43 = phi %struct.lua_TValue* [ %31, %15 ], [ %41, %40 ], !dbg !1347
  %44 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %43, i64 1, !dbg !1347
  store %struct.lua_TValue* %44, %struct.lua_TValue** %19, align 8, !dbg !1347, !tbaa !426
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1359
  br label %175, !dbg !1360

; <label>:45:                                     ; preds = %2, %9
  %46 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 15, !dbg !1361
  %47 = load i16, i16* %46, align 8, !dbg !1361, !tbaa !515
  %48 = icmp ugt i16 %47, 199, !dbg !1363
  br i1 %48, label %49, label %80, !dbg !1364

; <label>:49:                                     ; preds = %45
  %50 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1368
  %51 = load %struct.CallInfo*, %struct.CallInfo** %50, align 8, !dbg !1368, !tbaa !486
  %52 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %51, i64 0, i32 0, !dbg !1369
  %53 = load %struct.lua_TValue*, %struct.lua_TValue** %52, align 8, !dbg !1369, !tbaa !488
  %54 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1370
  store %struct.lua_TValue* %53, %struct.lua_TValue** %54, align 8, !dbg !1371, !tbaa !426
  %55 = tail call i64 @strlen(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !1372
  %56 = tail call %union.TString* @luaS_newlstr(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i64 %55) #6, !dbg !1372
  %57 = bitcast %struct.lua_TValue* %53 to %union.TString**, !dbg !1372
  store %union.TString* %56, %union.TString** %57, align 8, !dbg !1372, !tbaa !419
  %58 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %53, i64 0, i32 1, !dbg !1372
  store i32 4, i32* %58, align 8, !dbg !1372, !tbaa !433
  %59 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 9, !dbg !1373
  %60 = bitcast %struct.lua_TValue** %59 to i64*, !dbg !1373
  %61 = load i64, i64* %60, align 8, !dbg !1373, !tbaa !624
  %62 = bitcast %struct.lua_TValue** %54 to i64*, !dbg !1373
  %63 = load i64, i64* %62, align 8, !dbg !1373, !tbaa !426
  %64 = sub i64 %61, %63, !dbg !1373
  %65 = icmp slt i64 %64, 17, !dbg !1373
  %66 = inttoptr i64 %63 to %struct.lua_TValue*, !dbg !1374
  br i1 %65, label %67, label %77, !dbg !1374

; <label>:67:                                     ; preds = %49
  %68 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 13, !dbg !1378
  %69 = load i32, i32* %68, align 8, !dbg !1378, !tbaa !617
  %70 = icmp slt i32 %69, 1, !dbg !1379
  br i1 %70, label %73, label %71, !dbg !1380

; <label>:71:                                     ; preds = %67
  %72 = shl nsw i32 %69, 1, !dbg !1381
  tail call void @luaD_reallocstack(%struct.lua_State* nonnull %0, i32 %72) #6, !dbg !1382
  br label %75, !dbg !1382

; <label>:73:                                     ; preds = %67
  %74 = add nsw i32 %69, 1, !dbg !1383
  tail call void @luaD_reallocstack(%struct.lua_State* nonnull %0, i32 %74) #6, !dbg !1384
  br label %75

; <label>:75:                                     ; preds = %73, %71
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1385
  %76 = load %struct.lua_TValue*, %struct.lua_TValue** %54, align 8, !dbg !1374, !tbaa !426
  br label %77, !dbg !1373

; <label>:77:                                     ; preds = %49, %75
  %78 = phi %struct.lua_TValue* [ %66, %49 ], [ %76, %75 ], !dbg !1374
  %79 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %78, i64 1, !dbg !1374
  store %struct.lua_TValue* %79, %struct.lua_TValue** %54, align 8, !dbg !1374, !tbaa !426
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1386
  br label %175, !dbg !1387

; <label>:80:                                     ; preds = %45
  %81 = add i16 %47, 1, !dbg !1388
  store i16 %81, i16* %46, align 8, !dbg !1388, !tbaa !515
  %82 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 16, !dbg !1389
  store i16 %81, i16* %82, align 2, !dbg !1390, !tbaa !512
  %83 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1391
  %84 = load %struct.lua_TValue*, %struct.lua_TValue** %83, align 8, !dbg !1391, !tbaa !426
  %85 = sext i32 %1 to i64, !dbg !1392
  %86 = sub nsw i64 0, %85, !dbg !1392
  %87 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %84, i64 %86, !dbg !1392
  %88 = bitcast %struct.lua_longjmp* %3 to i8*, !dbg !1396
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %88) #8, !dbg !1396
  %89 = getelementptr inbounds %struct.lua_longjmp, %struct.lua_longjmp* %3, i64 0, i32 2, !dbg !1397
  store volatile i32 0, i32* %89, align 8, !dbg !1398, !tbaa !456
  %90 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 26, !dbg !1399
  %91 = bitcast %struct.lua_longjmp** %90 to i64*, !dbg !1399
  %92 = load i64, i64* %91, align 8, !dbg !1399, !tbaa !450
  %93 = bitcast %struct.lua_longjmp* %3 to i64*, !dbg !1400
  store i64 %92, i64* %93, align 8, !dbg !1400, !tbaa !591
  store %struct.lua_longjmp* %3, %struct.lua_longjmp** %90, align 8, !dbg !1401, !tbaa !450
  %94 = getelementptr inbounds %struct.lua_longjmp, %struct.lua_longjmp* %3, i64 0, i32 1, i64 0, !dbg !1402
  %95 = call i32 @setjmp(i64* nonnull %94) #6, !dbg !1402
  %96 = icmp eq i32 %95, 0, !dbg !1402
  br i1 %96, label %97, label %138, !dbg !1403

; <label>:97:                                     ; preds = %80
  %98 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1414
  %99 = load i8, i8* %4, align 2, !dbg !1415, !tbaa !463
  %100 = icmp eq i8 %99, 0, !dbg !1417
  br i1 %100, label %101, label %105, !dbg !1418

; <label>:101:                                    ; preds = %97
  %102 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %87, i64 -1, !dbg !1419
  %103 = call i32 @luaD_precall(%struct.lua_State* nonnull %0, %struct.lua_TValue* nonnull %102, i32 -1) #6, !dbg !1422
  %104 = icmp eq i32 %103, 0, !dbg !1423
  br i1 %104, label %128, label %137, !dbg !1424

; <label>:105:                                    ; preds = %97
  %106 = load %struct.CallInfo*, %struct.CallInfo** %98, align 8, !dbg !1414, !tbaa !486
  store i8 0, i8* %4, align 2, !dbg !1426, !tbaa !463
  %107 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %106, i64 0, i32 1, !dbg !1428
  %108 = bitcast %struct.lua_TValue** %107 to %struct.CClosure***, !dbg !1428
  %109 = load %struct.CClosure**, %struct.CClosure*** %108, align 8, !dbg !1428, !tbaa !674
  %110 = load %struct.CClosure*, %struct.CClosure** %109, align 8, !dbg !1428, !tbaa !419
  %111 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %110, i64 0, i32 3, !dbg !1428
  %112 = load i8, i8* %111, align 2, !dbg !1428, !tbaa !419
  %113 = icmp eq i8 %112, 0, !dbg !1428
  br i1 %113, label %123, label %114, !dbg !1430

; <label>:114:                                    ; preds = %105
  %115 = call i32 @luaD_poscall(%struct.lua_State* nonnull %0, %struct.lua_TValue* %87) #6, !dbg !1431
  %116 = icmp eq i32 %115, 0, !dbg !1431
  br i1 %116, label %128, label %117, !dbg !1434

; <label>:117:                                    ; preds = %114
  %118 = load %struct.CallInfo*, %struct.CallInfo** %98, align 8, !dbg !1435, !tbaa !486
  %119 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %118, i64 0, i32 2, !dbg !1436
  %120 = bitcast %struct.lua_TValue** %119 to i64*, !dbg !1436
  %121 = load i64, i64* %120, align 8, !dbg !1436, !tbaa !665
  %122 = bitcast %struct.lua_TValue** %83 to i64*, !dbg !1437
  store i64 %121, i64* %122, align 8, !dbg !1437, !tbaa !426
  br label %128, !dbg !1438

; <label>:123:                                    ; preds = %105
  %124 = bitcast %struct.CallInfo* %106 to i64*, !dbg !1430
  %125 = load i64, i64* %124, align 8, !dbg !1439, !tbaa !488
  %126 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !1440
  %127 = bitcast %struct.lua_TValue** %126 to i64*, !dbg !1441
  store i64 %125, i64* %127, align 8, !dbg !1441, !tbaa !492
  br label %128

; <label>:128:                                    ; preds = %123, %117, %114, %101
  %129 = bitcast %struct.CallInfo** %98 to i64*, !dbg !1442
  %130 = load i64, i64* %129, align 8, !dbg !1442, !tbaa !486
  %131 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 12, !dbg !1442
  %132 = bitcast %struct.CallInfo** %131 to i64*, !dbg !1442
  %133 = load i64, i64* %132, align 8, !dbg !1442, !tbaa !483
  %134 = sub i64 %130, %133, !dbg !1442
  %135 = sdiv exact i64 %134, 40, !dbg !1442
  %136 = trunc i64 %135 to i32, !dbg !1442
  call void @luaV_execute(%struct.lua_State* nonnull %0, i32 %136) #6, !dbg !1443
  br label %137, !dbg !1444

; <label>:137:                                    ; preds = %101, %128
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1444
  br label %138, !dbg !1445

; <label>:138:                                    ; preds = %80, %137
  %139 = load i64, i64* %93, align 8, !dbg !1446, !tbaa !591
  store i64 %139, i64* %91, align 8, !dbg !1447, !tbaa !450
  %140 = load volatile i32, i32* %89, align 8, !dbg !1448, !tbaa !456
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %88) #8, !dbg !1449
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1450
  %141 = icmp eq i32 %140, 0, !dbg !1452
  br i1 %141, label %168, label %142, !dbg !1454

; <label>:142:                                    ; preds = %138
  %143 = trunc i32 %140 to i8, !dbg !1455
  store i8 %143, i8* %4, align 2, !dbg !1457, !tbaa !463
  %144 = load %struct.lua_TValue*, %struct.lua_TValue** %83, align 8, !dbg !1458, !tbaa !426
  switch i32 %140, label %161 [
    i32 4, label %145
    i32 5, label %148
    i32 3, label %151
    i32 2, label %151
  ], !dbg !1463

; <label>:145:                                    ; preds = %142
  %146 = call %union.TString* @luaS_newlstr(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 17) #6, !dbg !1464
  %147 = bitcast %struct.lua_TValue* %144 to %union.TString**, !dbg !1464
  store %union.TString* %146, %union.TString** %147, align 8, !dbg !1464, !tbaa !419
  br label %158, !dbg !1465

; <label>:148:                                    ; preds = %142
  %149 = call %union.TString* @luaS_newlstr(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 23) #6, !dbg !1466
  %150 = bitcast %struct.lua_TValue* %144 to %union.TString**, !dbg !1466
  store %union.TString* %149, %union.TString** %150, align 8, !dbg !1466, !tbaa !419
  br label %158, !dbg !1467

; <label>:151:                                    ; preds = %142, %142
  %152 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %144, i64 -1, !dbg !1468
  %153 = bitcast %struct.lua_TValue* %152 to i64*, !dbg !1468
  %154 = bitcast %struct.lua_TValue* %144 to i64*, !dbg !1468
  %155 = load i64, i64* %153, align 8, !dbg !1468
  store i64 %155, i64* %154, align 8, !dbg !1468
  %156 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %144, i64 -1, i32 1, !dbg !1468
  %157 = load i32, i32* %156, align 8, !dbg !1468, !tbaa !433
  br label %158, !dbg !1469

; <label>:158:                                    ; preds = %151, %148, %145
  %159 = phi i32 [ 4, %145 ], [ 4, %148 ], [ %157, %151 ]
  %160 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %144, i64 0, i32 1, !dbg !1470
  store i32 %159, i32* %160, align 8, !dbg !1470, !tbaa !433
  br label %161, !dbg !1471

; <label>:161:                                    ; preds = %158, %142
  %162 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %144, i64 1, !dbg !1471
  store %struct.lua_TValue* %162, %struct.lua_TValue** %83, align 8, !dbg !1472, !tbaa !426
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1473
  %163 = ptrtoint %struct.lua_TValue* %162 to i64, !dbg !1474
  %164 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1475
  %165 = load %struct.CallInfo*, %struct.CallInfo** %164, align 8, !dbg !1475, !tbaa !486
  %166 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %165, i64 0, i32 2, !dbg !1476
  %167 = bitcast %struct.lua_TValue** %166 to i64*, !dbg !1477
  store i64 %163, i64* %167, align 8, !dbg !1477, !tbaa !665
  br label %171, !dbg !1478

; <label>:168:                                    ; preds = %138
  %169 = load i8, i8* %4, align 2, !dbg !1479, !tbaa !463
  %170 = zext i8 %169 to i32, !dbg !1481
  br label %171

; <label>:171:                                    ; preds = %168, %161
  %172 = phi i32 [ %140, %161 ], [ %170, %168 ], !dbg !1482
  %173 = load i16, i16* %46, align 8, !dbg !1483, !tbaa !515
  %174 = add i16 %173, -1, !dbg !1483
  store i16 %174, i16* %46, align 8, !dbg !1483, !tbaa !515
  br label %175, !dbg !1484

; <label>:175:                                    ; preds = %171, %77, %42
  %176 = phi i32 [ 2, %42 ], [ 2, %77 ], [ %172, %171 ], !dbg !1485
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1486
  ret i32 %176, !dbg !1486
}

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_yield(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !1487 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 15, !dbg !1493
  %4 = load i16, i16* %3, align 8, !dbg !1493, !tbaa !515
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 16, !dbg !1495
  %6 = load i16, i16* %5, align 2, !dbg !1495, !tbaa !512
  %7 = icmp ugt i16 %4, %6, !dbg !1496
  br i1 %7, label %8, label %9, !dbg !1497

; <label>:8:                                      ; preds = %2
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !1498
  br label %9, !dbg !1498

; <label>:9:                                      ; preds = %8, %2
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1499
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !1499, !tbaa !426
  %12 = sext i32 %1 to i64, !dbg !1500
  %13 = sub nsw i64 0, %12, !dbg !1500
  %14 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %11, i64 %13, !dbg !1500
  %15 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !1501
  store %struct.lua_TValue* %14, %struct.lua_TValue** %15, align 8, !dbg !1502, !tbaa !492
  %16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 3, !dbg !1503
  store i8 1, i8* %16, align 2, !dbg !1504, !tbaa !463
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1505
  ret i32 -1, !dbg !1505
}

; Function Attrs: noredzone nounwind
define hidden i32 @luaD_pcall(%struct.lua_State*, void (%struct.lua_State*, i8*)* nocapture, i8*, i64, i64) local_unnamed_addr #0 !dbg !1506 {
  %6 = alloca %struct.lua_longjmp, align 8
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 15, !dbg !1528
  %8 = load i16, i16* %7, align 8, !dbg !1528, !tbaa !515
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1530
  %10 = bitcast %struct.CallInfo** %9 to i64*, !dbg !1530
  %11 = load i64, i64* %10, align 8, !dbg !1530, !tbaa !486
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 12, !dbg !1530
  %13 = bitcast %struct.CallInfo** %12 to i64*, !dbg !1530
  %14 = load i64, i64* %13, align 8, !dbg !1530, !tbaa !483
  %15 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 18, !dbg !1531
  %16 = load i8, i8* %15, align 1, !dbg !1531, !tbaa !518
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 27, !dbg !1533
  %18 = load i64, i64* %17, align 8, !dbg !1533, !tbaa !563
  store i64 %4, i64* %17, align 8, !dbg !1535, !tbaa !563
  %19 = bitcast %struct.lua_longjmp* %6 to i8*, !dbg !1540
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %19) #8, !dbg !1540
  %20 = getelementptr inbounds %struct.lua_longjmp, %struct.lua_longjmp* %6, i64 0, i32 2, !dbg !1541
  store volatile i32 0, i32* %20, align 8, !dbg !1542, !tbaa !456
  %21 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 26, !dbg !1543
  %22 = bitcast %struct.lua_longjmp** %21 to i64*, !dbg !1543
  %23 = load i64, i64* %22, align 8, !dbg !1543, !tbaa !450
  %24 = bitcast %struct.lua_longjmp* %6 to i64*, !dbg !1544
  store i64 %23, i64* %24, align 8, !dbg !1544, !tbaa !591
  store %struct.lua_longjmp* %6, %struct.lua_longjmp** %21, align 8, !dbg !1545, !tbaa !450
  %25 = getelementptr inbounds %struct.lua_longjmp, %struct.lua_longjmp* %6, i64 0, i32 1, i64 0, !dbg !1546
  %26 = call i32 @setjmp(i64* nonnull %25) #6, !dbg !1546
  %27 = icmp eq i32 %26, 0, !dbg !1546
  br i1 %27, label %28, label %29, !dbg !1547

; <label>:28:                                     ; preds = %5
  call void %1(%struct.lua_State* nonnull %0, i8* %2) #6, !dbg !1548
  br label %29, !dbg !1548

; <label>:29:                                     ; preds = %5, %28
  %30 = load i64, i64* %24, align 8, !dbg !1549, !tbaa !591
  store i64 %30, i64* %22, align 8, !dbg !1550, !tbaa !450
  %31 = load volatile i32, i32* %20, align 8, !dbg !1551, !tbaa !456
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %19) #8, !dbg !1552
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1553
  %32 = icmp eq i32 %31, 0, !dbg !1555
  br i1 %32, label %97, label %33, !dbg !1556

; <label>:33:                                     ; preds = %29
  %34 = sub i64 %11, %14, !dbg !1530
  %35 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 10, !dbg !1558
  %36 = bitcast %struct.lua_TValue** %35 to i8**, !dbg !1558
  %37 = load i8*, i8** %36, align 8, !dbg !1558, !tbaa !612
  %38 = getelementptr inbounds i8, i8* %37, i64 %3, !dbg !1558
  %39 = bitcast i8* %38 to %struct.lua_TValue*, !dbg !1558
  call void @luaF_close(%struct.lua_State* nonnull %0, %struct.lua_TValue* %39) #6, !dbg !1560
  switch i32 %31, label %59 [
    i32 4, label %40
    i32 5, label %43
    i32 3, label %46
    i32 2, label %46
  ], !dbg !1565

; <label>:40:                                     ; preds = %33
  %41 = call %union.TString* @luaS_newlstr(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 17) #6, !dbg !1566
  %42 = bitcast i8* %38 to %union.TString**, !dbg !1566
  store %union.TString* %41, %union.TString** %42, align 8, !dbg !1566, !tbaa !419
  br label %55, !dbg !1567

; <label>:43:                                     ; preds = %33
  %44 = call %union.TString* @luaS_newlstr(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 23) #6, !dbg !1568
  %45 = bitcast i8* %38 to %union.TString**, !dbg !1568
  store %union.TString* %44, %union.TString** %45, align 8, !dbg !1568, !tbaa !419
  br label %55, !dbg !1569

; <label>:46:                                     ; preds = %33, %33
  %47 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1570
  %48 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !1570, !tbaa !426
  %49 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %48, i64 -1, !dbg !1570
  %50 = bitcast %struct.lua_TValue* %49 to i64*, !dbg !1570
  %51 = bitcast i8* %38 to i64*, !dbg !1570
  %52 = load i64, i64* %50, align 8, !dbg !1570
  store i64 %52, i64* %51, align 8, !dbg !1570
  %53 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %48, i64 -1, i32 1, !dbg !1570
  %54 = load i32, i32* %53, align 8, !dbg !1570, !tbaa !433
  br label %55, !dbg !1571

; <label>:55:                                     ; preds = %46, %43, %40
  %56 = phi i32 [ 4, %40 ], [ 4, %43 ], [ %54, %46 ]
  %57 = getelementptr inbounds i8, i8* %38, i64 8, !dbg !1572
  %58 = bitcast i8* %57 to i32*, !dbg !1572
  store i32 %56, i32* %58, align 8, !dbg !1572, !tbaa !433
  br label %59, !dbg !1573

; <label>:59:                                     ; preds = %55, %33
  %60 = getelementptr inbounds i8, i8* %38, i64 16, !dbg !1573
  %61 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1574
  %62 = bitcast %struct.lua_TValue** %61 to i8**, !dbg !1575
  store i8* %60, i8** %62, align 8, !dbg !1575, !tbaa !426
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1576
  store i16 %8, i16* %7, align 8, !dbg !1577, !tbaa !515
  %63 = bitcast %struct.CallInfo** %12 to i8**, !dbg !1578
  %64 = load i8*, i8** %63, align 8, !dbg !1578, !tbaa !483
  %65 = getelementptr inbounds i8, i8* %64, i64 %34, !dbg !1578
  %66 = bitcast %struct.CallInfo** %9 to i8**, !dbg !1579
  store i8* %65, i8** %66, align 8, !dbg !1579, !tbaa !486
  %67 = bitcast i8* %65 to i64*, !dbg !1580
  %68 = load i64, i64* %67, align 8, !dbg !1580, !tbaa !488
  %69 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !1581
  %70 = bitcast %struct.lua_TValue** %69 to i64*, !dbg !1582
  store i64 %68, i64* %70, align 8, !dbg !1582, !tbaa !492
  %71 = getelementptr inbounds i8, i8* %65, i64 24, !dbg !1583
  %72 = bitcast i8* %71 to i64*, !dbg !1583
  %73 = load i64, i64* %72, align 8, !dbg !1583, !tbaa !888
  %74 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8, !dbg !1584
  %75 = bitcast i32** %74 to i64*, !dbg !1585
  store i64 %73, i64* %75, align 8, !dbg !1585, !tbaa !884
  store i8 %16, i8* %15, align 1, !dbg !1586, !tbaa !518
  %76 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 14, !dbg !1589
  %77 = load i32, i32* %76, align 4, !dbg !1589, !tbaa !530
  %78 = icmp sgt i32 %77, 20000, !dbg !1590
  %79 = ptrtoint i8* %64 to i64, !dbg !1591
  br i1 %78, label %80, label %96, !dbg !1591

; <label>:80:                                     ; preds = %59
  %81 = sdiv exact i64 %34, 40, !dbg !1592
  %82 = trunc i64 %81 to i32, !dbg !1592
  %83 = icmp slt i32 %82, 19999, !dbg !1594
  br i1 %83, label %84, label %96, !dbg !1595

; <label>:84:                                     ; preds = %80
  %85 = sext i32 %77 to i64, !dbg !1600
  %86 = mul nsw i64 %85, 40, !dbg !1600
  %87 = call i8* @luaM_realloc_(%struct.lua_State* nonnull %0, i8* %64, i64 %86, i64 800000) #6, !dbg !1600
  store i8* %87, i8** %63, align 8, !dbg !1600, !tbaa !483
  store i32 20000, i32* %76, align 4, !dbg !1601, !tbaa !530
  %88 = load i64, i64* %10, align 8, !dbg !1602, !tbaa !486
  %89 = sub i64 %88, %79, !dbg !1603
  %90 = sdiv exact i64 %89, 40, !dbg !1603
  %91 = bitcast i8* %87 to %struct.CallInfo*, !dbg !1604
  %92 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %91, i64 %90, !dbg !1605
  store %struct.CallInfo* %92, %struct.CallInfo** %9, align 8, !dbg !1606, !tbaa !486
  %93 = getelementptr inbounds i8, i8* %87, i64 799960, !dbg !1607
  %94 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 11, !dbg !1608
  %95 = bitcast %struct.CallInfo** %94 to i8**, !dbg !1609
  store i8* %93, i8** %95, align 8, !dbg !1609, !tbaa !557
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1610
  br label %96, !dbg !1611

; <label>:96:                                     ; preds = %59, %80, %84
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1612
  br label %97, !dbg !1613

; <label>:97:                                     ; preds = %29, %96
  store i64 %18, i64* %17, align 8, !dbg !1614, !tbaa !563
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1615
  ret i32 %31, !dbg !1615
}

; Function Attrs: noredzone
declare hidden void @luaF_close(%struct.lua_State*, %struct.lua_TValue*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define hidden i32 @luaD_protectedparser(%struct.lua_State*, %struct.Zio*, i8*) local_unnamed_addr #0 !dbg !1616 {
  %4 = alloca %struct.SParser, align 8
  %5 = bitcast %struct.SParser* %4 to i8*, !dbg !1628
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %5) #8, !dbg !1628
  %6 = getelementptr inbounds %struct.SParser, %struct.SParser* %4, i64 0, i32 0, !dbg !1629
  store %struct.Zio* %1, %struct.Zio** %6, align 8, !dbg !1630, !tbaa !1631
  %7 = getelementptr inbounds %struct.SParser, %struct.SParser* %4, i64 0, i32 2, !dbg !1633
  store i8* %2, i8** %7, align 8, !dbg !1634, !tbaa !1635
  %8 = getelementptr inbounds %struct.SParser, %struct.SParser* %4, i64 0, i32 1, i32 0, !dbg !1636
  store i8* null, i8** %8, align 8, !dbg !1636, !tbaa !1637
  %9 = getelementptr inbounds %struct.SParser, %struct.SParser* %4, i64 0, i32 1, i32 2, !dbg !1636
  store i64 0, i64* %9, align 8, !dbg !1636, !tbaa !1638
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1639
  %11 = bitcast %struct.lua_TValue** %10 to i64*, !dbg !1639
  %12 = load i64, i64* %11, align 8, !dbg !1639, !tbaa !426
  %13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 10, !dbg !1639
  %14 = bitcast %struct.lua_TValue** %13 to i64*, !dbg !1639
  %15 = load i64, i64* %14, align 8, !dbg !1639, !tbaa !612
  %16 = sub i64 %12, %15, !dbg !1639
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 27, !dbg !1640
  %18 = load i64, i64* %17, align 8, !dbg !1640, !tbaa !563
  %19 = call i32 @luaD_pcall(%struct.lua_State* %0, void (%struct.lua_State*, i8*)* nonnull @f_parser, i8* nonnull %5, i64 %16, i64 %18) #9, !dbg !1641
  %20 = load i8*, i8** %8, align 8, !dbg !1643, !tbaa !1637
  %21 = load i64, i64* %9, align 8, !dbg !1643, !tbaa !1638
  %22 = call i8* @luaM_realloc_(%struct.lua_State* %0, i8* %20, i64 %21, i64 0) #6, !dbg !1643
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %5) #8, !dbg !1644
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1645
  ret i32 %19, !dbg !1645
}

; Function Attrs: noredzone nounwind
define internal void @f_parser(%struct.lua_State*, i8*) #0 !dbg !1646 {
  %3 = bitcast i8* %1 to %struct.Zio**, !dbg !1662
  %4 = load %struct.Zio*, %struct.Zio** %3, align 8, !dbg !1662, !tbaa !1631
  %5 = tail call i32 @luaZ_lookahead(%struct.Zio* %4) #6, !dbg !1663
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1665
  %7 = load %struct.global_State*, %struct.global_State** %6, align 8, !dbg !1665, !tbaa !466
  %8 = getelementptr inbounds %struct.global_State, %struct.global_State* %7, i64 0, i32 14, !dbg !1665
  %9 = load i64, i64* %8, align 8, !dbg !1665, !tbaa !993
  %10 = getelementptr inbounds %struct.global_State, %struct.global_State* %7, i64 0, i32 13, !dbg !1665
  %11 = load i64, i64* %10, align 8, !dbg !1665, !tbaa !994
  %12 = icmp ult i64 %9, %11, !dbg !1665
  br i1 %12, label %14, label %13, !dbg !1668

; <label>:13:                                     ; preds = %2
  tail call void @luaC_step(%struct.lua_State* nonnull %0) #6, !dbg !1665
  br label %14, !dbg !1665

; <label>:14:                                     ; preds = %2, %13
  %15 = load %struct.Zio*, %struct.Zio** %3, align 8, !dbg !1669, !tbaa !1631
  %16 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !1670
  %17 = bitcast i8* %16 to %struct.Mbuffer*, !dbg !1670
  %18 = getelementptr inbounds i8, i8* %1, i64 32, !dbg !1671
  %19 = bitcast i8* %18 to i8**, !dbg !1671
  %20 = load i8*, i8** %19, align 8, !dbg !1671, !tbaa !1635
  %21 = tail call %struct.Proto* @luaY_parser(%struct.lua_State* nonnull %0, %struct.Zio* %15, %struct.Mbuffer* nonnull %17, i8* %20) #6, !dbg !1672
  %22 = getelementptr inbounds %struct.Proto, %struct.Proto* %21, i64 0, i32 19, !dbg !1674
  %23 = load i8, i8* %22, align 8, !dbg !1674, !tbaa !1675
  %24 = zext i8 %23 to i32, !dbg !1676
  %25 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, i32 0, i32 0, !dbg !1677
  %26 = bitcast %union.GCObject** %25 to %struct.Table**, !dbg !1677
  %27 = load %struct.Table*, %struct.Table** %26, align 8, !dbg !1677, !tbaa !419
  %28 = tail call %union.Closure* @luaF_newLclosure(%struct.lua_State* nonnull %0, i32 %24, %struct.Table* %27) #6, !dbg !1678
  %29 = getelementptr inbounds %union.Closure, %union.Closure* %28, i64 0, i32 0, i32 7, !dbg !1680
  %30 = bitcast i32 (%struct.lua_State*)** %29 to %struct.Proto**, !dbg !1680
  store %struct.Proto* %21, %struct.Proto** %30, align 8, !dbg !1681, !tbaa !419
  %31 = load i8, i8* %22, align 8, !dbg !1683, !tbaa !1675
  %32 = icmp eq i8 %31, 0, !dbg !1686
  br i1 %32, label %44, label %33, !dbg !1687

; <label>:33:                                     ; preds = %14
  %34 = getelementptr inbounds %union.Closure, %union.Closure* %28, i64 0, i32 0, i32 8
  %35 = bitcast [1 x %struct.lua_TValue]* %34 to [1 x %struct.UpVal*]*
  br label %36, !dbg !1687

; <label>:36:                                     ; preds = %33, %36
  %37 = phi i64 [ 0, %33 ], [ %40, %36 ]
  %38 = tail call %struct.UpVal* @luaF_newupval(%struct.lua_State* %0) #6, !dbg !1688
  %39 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %35, i64 0, i64 %37, !dbg !1689
  store %struct.UpVal* %38, %struct.UpVal** %39, align 8, !dbg !1690, !tbaa !419
  %40 = add nuw nsw i64 %37, 1, !dbg !1691
  %41 = load i8, i8* %22, align 8, !dbg !1683, !tbaa !1675
  %42 = zext i8 %41 to i64, !dbg !1686
  %43 = icmp ult i64 %40, %42, !dbg !1686
  br i1 %43, label %36, label %44, !dbg !1687, !llvm.loop !1692

; <label>:44:                                     ; preds = %36, %14
  %45 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1694
  %46 = load %struct.lua_TValue*, %struct.lua_TValue** %45, align 8, !dbg !1694, !tbaa !426
  %47 = bitcast %struct.lua_TValue* %46 to %union.Closure**, !dbg !1694
  store %union.Closure* %28, %union.Closure** %47, align 8, !dbg !1694, !tbaa !419
  %48 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %46, i64 0, i32 1, !dbg !1694
  store i32 6, i32* %48, align 8, !dbg !1694, !tbaa !433
  %49 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 9, !dbg !1695
  %50 = bitcast %struct.lua_TValue** %49 to i64*, !dbg !1695
  %51 = load i64, i64* %50, align 8, !dbg !1695, !tbaa !624
  %52 = bitcast %struct.lua_TValue** %45 to i64*, !dbg !1695
  %53 = load i64, i64* %52, align 8, !dbg !1695, !tbaa !426
  %54 = sub i64 %51, %53, !dbg !1695
  %55 = icmp slt i64 %54, 17, !dbg !1695
  %56 = inttoptr i64 %53 to %struct.lua_TValue*, !dbg !1698
  br i1 %55, label %57, label %67, !dbg !1698

; <label>:57:                                     ; preds = %44
  %58 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 13, !dbg !1702
  %59 = load i32, i32* %58, align 8, !dbg !1702, !tbaa !617
  %60 = icmp slt i32 %59, 1, !dbg !1703
  br i1 %60, label %63, label %61, !dbg !1704

; <label>:61:                                     ; preds = %57
  %62 = shl nsw i32 %59, 1, !dbg !1705
  tail call void @luaD_reallocstack(%struct.lua_State* nonnull %0, i32 %62) #6, !dbg !1706
  br label %65, !dbg !1706

; <label>:63:                                     ; preds = %57
  %64 = add nsw i32 %59, 1, !dbg !1707
  tail call void @luaD_reallocstack(%struct.lua_State* nonnull %0, i32 %64) #6, !dbg !1708
  br label %65

; <label>:65:                                     ; preds = %61, %63
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1709
  %66 = load %struct.lua_TValue*, %struct.lua_TValue** %45, align 8, !dbg !1698, !tbaa !426
  br label %67, !dbg !1695

; <label>:67:                                     ; preds = %44, %65
  %68 = phi %struct.lua_TValue* [ %56, %44 ], [ %66, %65 ], !dbg !1698
  %69 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %68, i64 1, !dbg !1698
  store %struct.lua_TValue* %69, %struct.lua_TValue** %45, align 8, !dbg !1698, !tbaa !426
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1710
  ret void, !dbg !1710
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
!510 = !DILocation(line: 68, column: 1, scope: !394, inlinedAt: !496)
!511 = !DILocation(line: 86, column: 19, scope: !475, inlinedAt: !479)
!512 = !{!427, !430, i64 98}
!513 = !DILocation(line: 86, column: 6, scope: !475, inlinedAt: !479)
!514 = !DILocation(line: 86, column: 14, scope: !475, inlinedAt: !479)
!515 = !{!427, !430, i64 96}
!516 = !DILocation(line: 87, column: 6, scope: !475, inlinedAt: !479)
!517 = !DILocation(line: 87, column: 16, scope: !475, inlinedAt: !479)
!518 = !{!427, !420, i64 101}
!519 = !DILocalVariable(name: "L", arg: 1, scope: !520, file: !1, line: 71, type: !148)
!520 = distinct !DISubprogram(name: "restore_stack_limit", scope: !1, file: !1, line: 71, type: !521, isLocal: true, isDefinition: true, scopeLine: 71, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !523)
!521 = !DISubroutineType(types: !522)
!522 = !{null, !148}
!523 = !{!519, !524}
!524 = !DILocalVariable(name: "inuse", scope: !525, file: !1, line: 74, type: !104)
!525 = distinct !DILexicalBlock(scope: !526, file: !1, line: 73, column: 35)
!526 = distinct !DILexicalBlock(scope: !520, file: !1, line: 73, column: 7)
!527 = !DILocation(line: 71, column: 45, scope: !520, inlinedAt: !528)
!528 = distinct !DILocation(line: 88, column: 3, scope: !475, inlinedAt: !479)
!529 = !DILocation(line: 73, column: 10, scope: !526, inlinedAt: !528)
!530 = !{!427, !429, i64 92}
!531 = !DILocation(line: 73, column: 18, scope: !526, inlinedAt: !528)
!532 = !DILocation(line: 73, column: 7, scope: !520, inlinedAt: !528)
!533 = !DILocation(line: 74, column: 17, scope: !525, inlinedAt: !528)
!534 = !DILocation(line: 74, column: 9, scope: !525, inlinedAt: !528)
!535 = !DILocation(line: 75, column: 19, scope: !536, inlinedAt: !528)
!536 = distinct !DILexicalBlock(scope: !525, file: !1, line: 75, column: 9)
!537 = !DILocation(line: 75, column: 9, scope: !525, inlinedAt: !528)
!538 = !DILocalVariable(name: "L", arg: 1, scope: !539, file: !1, line: 152, type: !148)
!539 = distinct !DISubprogram(name: "luaD_reallocCI", scope: !1, file: !1, line: 152, type: !441, isLocal: false, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !540)
!540 = !{!538, !541, !542}
!541 = !DILocalVariable(name: "newsize", arg: 2, scope: !539, file: !1, line: 152, type: !104)
!542 = !DILocalVariable(name: "oldci", scope: !539, file: !1, line: 153, type: !238)
!543 = !DILocation(line: 152, column: 33, scope: !539, inlinedAt: !544)
!544 = distinct !DILocation(line: 76, column: 7, scope: !536, inlinedAt: !528)
!545 = !DILocation(line: 152, column: 40, scope: !539, inlinedAt: !544)
!546 = !DILocation(line: 154, column: 3, scope: !539, inlinedAt: !544)
!547 = !DILocation(line: 153, column: 13, scope: !539, inlinedAt: !544)
!548 = !DILocation(line: 155, column: 14, scope: !539, inlinedAt: !544)
!549 = !DILocation(line: 156, column: 15, scope: !539, inlinedAt: !544)
!550 = !DILocation(line: 156, column: 18, scope: !539, inlinedAt: !544)
!551 = !DILocation(line: 156, column: 32, scope: !539, inlinedAt: !544)
!552 = !DILocation(line: 156, column: 27, scope: !539, inlinedAt: !544)
!553 = !DILocation(line: 156, column: 9, scope: !539, inlinedAt: !544)
!554 = !DILocation(line: 157, column: 39, scope: !539, inlinedAt: !544)
!555 = !DILocation(line: 157, column: 6, scope: !539, inlinedAt: !544)
!556 = !DILocation(line: 157, column: 13, scope: !539, inlinedAt: !544)
!557 = !{!427, !428, i64 72}
!558 = !DILocation(line: 158, column: 1, scope: !539, inlinedAt: !544)
!559 = !DILocation(line: 76, column: 7, scope: !536, inlinedAt: !528)
!560 = !DILocation(line: 78, column: 1, scope: !520, inlinedAt: !528)
!561 = !DILocation(line: 89, column: 6, scope: !475, inlinedAt: !479)
!562 = !DILocation(line: 89, column: 14, scope: !475, inlinedAt: !479)
!563 = !{!427, !432, i64 176}
!564 = !DILocation(line: 90, column: 15, scope: !475, inlinedAt: !479)
!565 = !DILocation(line: 91, column: 1, scope: !475, inlinedAt: !479)
!566 = !DILocation(line: 104, column: 7, scope: !480)
!567 = !DILocation(line: 104, column: 13, scope: !480)
!568 = !DILocation(line: 105, column: 5, scope: !480)
!569 = !DILocation(line: 106, column: 5, scope: !460)
!570 = distinct !DISubprogram(name: "luaD_rawrunprotected", scope: !1, file: !1, line: 111, type: !571, isLocal: false, isDefinition: true, scopeLine: 111, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !578)
!571 = !DISubroutineType(types: !572)
!572 = !{!104, !148, !573, !52}
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "Pfunc", file: !574, line: 38, baseType: !575)
!574 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/ldo.h", directory: "/root/.unikraft/apps/redis/build")
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DISubroutineType(types: !577)
!577 = !{null, !148, !52}
!578 = !{!579, !580, !581, !582}
!579 = !DILocalVariable(name: "L", arg: 1, scope: !570, file: !1, line: 111, type: !148)
!580 = !DILocalVariable(name: "f", arg: 2, scope: !570, file: !1, line: 111, type: !573)
!581 = !DILocalVariable(name: "ud", arg: 3, scope: !570, file: !1, line: 111, type: !52)
!582 = !DILocalVariable(name: "lj", scope: !570, file: !1, line: 112, type: !296)
!583 = !DILocation(line: 111, column: 38, scope: !570)
!584 = !DILocation(line: 111, column: 47, scope: !570)
!585 = !DILocation(line: 111, column: 56, scope: !570)
!586 = !DILocation(line: 112, column: 3, scope: !570)
!587 = !DILocation(line: 113, column: 6, scope: !570)
!588 = !DILocation(line: 113, column: 13, scope: !570)
!589 = !DILocation(line: 114, column: 20, scope: !570)
!590 = !DILocation(line: 114, column: 15, scope: !570)
!591 = !{!457, !428, i64 0}
!592 = !DILocation(line: 115, column: 15, scope: !570)
!593 = !DILocation(line: 116, column: 3, scope: !594)
!594 = distinct !DILexicalBlock(scope: !570, file: !1, line: 116, column: 3)
!595 = !DILocation(line: 116, column: 3, scope: !570)
!596 = !DILocation(line: 116, column: 3, scope: !597)
!597 = distinct !DILexicalBlock(scope: !594, file: !1, line: 116, column: 3)
!598 = !DILocation(line: 119, column: 20, scope: !570)
!599 = !DILocation(line: 119, column: 15, scope: !570)
!600 = !DILocation(line: 120, column: 13, scope: !570)
!601 = !DILocation(line: 121, column: 1, scope: !570)
!602 = !DILocation(line: 120, column: 3, scope: !570)
!603 = distinct !DISubprogram(name: "luaD_reallocstack", scope: !1, file: !1, line: 141, type: !441, isLocal: false, isDefinition: true, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !604)
!604 = !{!605, !606, !607, !608}
!605 = !DILocalVariable(name: "L", arg: 1, scope: !603, file: !1, line: 141, type: !148)
!606 = !DILocalVariable(name: "newsize", arg: 2, scope: !603, file: !1, line: 141, type: !104)
!607 = !DILocalVariable(name: "oldstack", scope: !603, file: !1, line: 142, type: !90)
!608 = !DILocalVariable(name: "realsize", scope: !603, file: !1, line: 143, type: !104)
!609 = !DILocation(line: 141, column: 36, scope: !603)
!610 = !DILocation(line: 141, column: 43, scope: !603)
!611 = !DILocation(line: 142, column: 25, scope: !603)
!612 = !{!427, !428, i64 64}
!613 = !DILocation(line: 142, column: 11, scope: !603)
!614 = !DILocation(line: 143, column: 30, scope: !603)
!615 = !DILocation(line: 143, column: 7, scope: !603)
!616 = !DILocation(line: 145, column: 3, scope: !603)
!617 = !{!427, !429, i64 88}
!618 = !DILocation(line: 146, column: 6, scope: !603)
!619 = !DILocation(line: 146, column: 16, scope: !603)
!620 = !DILocation(line: 147, column: 22, scope: !603)
!621 = !DILocation(line: 147, column: 27, scope: !603)
!622 = !DILocation(line: 147, column: 6, scope: !603)
!623 = !DILocation(line: 147, column: 17, scope: !603)
!624 = !{!427, !428, i64 56}
!625 = !DILocalVariable(name: "L", arg: 1, scope: !626, file: !1, line: 126, type: !148)
!626 = distinct !DISubprogram(name: "correctstack", scope: !1, file: !1, line: 126, type: !627, isLocal: true, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !629)
!627 = !DISubroutineType(types: !628)
!628 = !{null, !148, !90}
!629 = !{!625, !630, !631, !632}
!630 = !DILocalVariable(name: "oldstack", arg: 2, scope: !626, file: !1, line: 126, type: !90)
!631 = !DILocalVariable(name: "ci", scope: !626, file: !1, line: 127, type: !238)
!632 = !DILocalVariable(name: "up", scope: !626, file: !1, line: 128, type: !26)
!633 = !DILocation(line: 126, column: 38, scope: !626, inlinedAt: !634)
!634 = distinct !DILocation(line: 148, column: 3, scope: !603)
!635 = !DILocation(line: 126, column: 49, scope: !626, inlinedAt: !634)
!636 = !DILocation(line: 129, column: 16, scope: !626, inlinedAt: !634)
!637 = !DILocation(line: 129, column: 20, scope: !626, inlinedAt: !634)
!638 = !DILocation(line: 129, column: 32, scope: !626, inlinedAt: !634)
!639 = !DILocation(line: 129, column: 10, scope: !626, inlinedAt: !634)
!640 = !DILocation(line: 130, column: 16, scope: !641, inlinedAt: !634)
!641 = distinct !DILexicalBlock(scope: !626, file: !1, line: 130, column: 3)
!642 = !DILocation(line: 128, column: 13, scope: !626, inlinedAt: !634)
!643 = !DILocation(line: 0, scope: !644, inlinedAt: !634)
!644 = distinct !DILexicalBlock(scope: !641, file: !1, line: 130, column: 3)
!645 = !DILocation(line: 130, column: 30, scope: !644, inlinedAt: !634)
!646 = !DILocation(line: 130, column: 3, scope: !641, inlinedAt: !634)
!647 = !DILocation(line: 131, column: 34, scope: !644, inlinedAt: !634)
!648 = !DILocation(line: 131, column: 36, scope: !644, inlinedAt: !634)
!649 = !DILocation(line: 131, column: 48, scope: !644, inlinedAt: !634)
!650 = !DILocation(line: 131, column: 19, scope: !644, inlinedAt: !634)
!651 = !DILocation(line: 130, column: 52, scope: !644, inlinedAt: !634)
!652 = distinct !{!652, !653, !654}
!653 = !DILocation(line: 130, column: 3, scope: !641)
!654 = !DILocation(line: 131, column: 53, scope: !641)
!655 = !DILocation(line: 131, column: 53, scope: !644, inlinedAt: !634)
!656 = !DILocation(line: 132, column: 16, scope: !657, inlinedAt: !634)
!657 = distinct !DILexicalBlock(scope: !626, file: !1, line: 132, column: 3)
!658 = !DILocation(line: 127, column: 13, scope: !626, inlinedAt: !634)
!659 = !DILocation(line: 132, column: 34, scope: !660, inlinedAt: !634)
!660 = distinct !DILexicalBlock(scope: !657, file: !1, line: 132, column: 3)
!661 = !DILocation(line: 132, column: 28, scope: !660, inlinedAt: !634)
!662 = !DILocation(line: 132, column: 3, scope: !657, inlinedAt: !634)
!663 = !DILocation(line: 133, column: 20, scope: !664, inlinedAt: !634)
!664 = distinct !DILexicalBlock(scope: !660, file: !1, line: 132, column: 44)
!665 = !{!489, !428, i64 16}
!666 = !DILocation(line: 133, column: 24, scope: !664, inlinedAt: !634)
!667 = !DILocation(line: 133, column: 36, scope: !664, inlinedAt: !634)
!668 = !DILocation(line: 133, column: 13, scope: !664, inlinedAt: !634)
!669 = !DILocation(line: 134, column: 21, scope: !664, inlinedAt: !634)
!670 = !DILocation(line: 134, column: 26, scope: !664, inlinedAt: !634)
!671 = !DILocation(line: 134, column: 38, scope: !664, inlinedAt: !634)
!672 = !DILocation(line: 134, column: 14, scope: !664, inlinedAt: !634)
!673 = !DILocation(line: 135, column: 21, scope: !664, inlinedAt: !634)
!674 = !{!489, !428, i64 8}
!675 = !DILocation(line: 135, column: 26, scope: !664, inlinedAt: !634)
!676 = !DILocation(line: 135, column: 38, scope: !664, inlinedAt: !634)
!677 = !DILocation(line: 135, column: 14, scope: !664, inlinedAt: !634)
!678 = !DILocation(line: 132, column: 40, scope: !660, inlinedAt: !634)
!679 = distinct !{!679, !680, !681}
!680 = !DILocation(line: 132, column: 3, scope: !657)
!681 = !DILocation(line: 136, column: 3, scope: !657)
!682 = !DILocation(line: 137, column: 17, scope: !626, inlinedAt: !634)
!683 = !DILocation(line: 137, column: 22, scope: !626, inlinedAt: !634)
!684 = !DILocation(line: 137, column: 34, scope: !626, inlinedAt: !634)
!685 = !DILocation(line: 137, column: 11, scope: !626, inlinedAt: !634)
!686 = !DILocation(line: 138, column: 1, scope: !626, inlinedAt: !634)
!687 = !DILocation(line: 149, column: 1, scope: !603)
!688 = !DILocation(line: 152, column: 33, scope: !539)
!689 = !DILocation(line: 152, column: 40, scope: !539)
!690 = !DILocation(line: 153, column: 24, scope: !539)
!691 = !DILocation(line: 153, column: 13, scope: !539)
!692 = !DILocation(line: 154, column: 3, scope: !539)
!693 = !DILocation(line: 155, column: 6, scope: !539)
!694 = !DILocation(line: 157, column: 26, scope: !539)
!695 = !DILocation(line: 155, column: 14, scope: !539)
!696 = !DILocation(line: 156, column: 15, scope: !539)
!697 = !DILocation(line: 156, column: 18, scope: !539)
!698 = !DILocation(line: 156, column: 32, scope: !539)
!699 = !DILocation(line: 156, column: 27, scope: !539)
!700 = !DILocation(line: 156, column: 9, scope: !539)
!701 = !DILocation(line: 157, column: 39, scope: !539)
!702 = !DILocation(line: 157, column: 6, scope: !539)
!703 = !DILocation(line: 157, column: 13, scope: !539)
!704 = !DILocation(line: 158, column: 1, scope: !539)
!705 = distinct !DISubprogram(name: "luaD_growstack", scope: !1, file: !1, line: 161, type: !441, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !706)
!706 = !{!707, !708}
!707 = !DILocalVariable(name: "L", arg: 1, scope: !705, file: !1, line: 161, type: !148)
!708 = !DILocalVariable(name: "n", arg: 2, scope: !705, file: !1, line: 161, type: !104)
!709 = !DILocation(line: 161, column: 33, scope: !705)
!710 = !DILocation(line: 161, column: 40, scope: !705)
!711 = !DILocation(line: 162, column: 15, scope: !712)
!712 = distinct !DILexicalBlock(scope: !705, file: !1, line: 162, column: 7)
!713 = !DILocation(line: 162, column: 9, scope: !712)
!714 = !DILocation(line: 162, column: 7, scope: !705)
!715 = !DILocation(line: 163, column: 27, scope: !712)
!716 = !DILocation(line: 163, column: 5, scope: !712)
!717 = !DILocation(line: 165, column: 39, scope: !712)
!718 = !DILocation(line: 165, column: 5, scope: !712)
!719 = !DILocation(line: 166, column: 1, scope: !705)
!720 = distinct !DISubprogram(name: "luaD_callhook", scope: !1, file: !1, line: 181, type: !721, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !723)
!721 = !DISubroutineType(types: !722)
!722 = !{null, !148, !104, !104}
!723 = !{!724, !725, !726, !727, !728, !731, !732}
!724 = !DILocalVariable(name: "L", arg: 1, scope: !720, file: !1, line: 181, type: !148)
!725 = !DILocalVariable(name: "event", arg: 2, scope: !720, file: !1, line: 181, type: !104)
!726 = !DILocalVariable(name: "line", arg: 3, scope: !720, file: !1, line: 181, type: !104)
!727 = !DILocalVariable(name: "hook", scope: !720, file: !1, line: 182, type: !266)
!728 = !DILocalVariable(name: "top", scope: !729, file: !1, line: 184, type: !309)
!729 = distinct !DILexicalBlock(scope: !730, file: !1, line: 183, column: 29)
!730 = distinct !DILexicalBlock(scope: !720, file: !1, line: 183, column: 7)
!731 = !DILocalVariable(name: "ci_top", scope: !729, file: !1, line: 185, type: !309)
!732 = !DILocalVariable(name: "ar", scope: !729, file: !1, line: 186, type: !271)
!733 = !DILocation(line: 181, column: 32, scope: !720)
!734 = !DILocation(line: 181, column: 39, scope: !720)
!735 = !DILocation(line: 181, column: 50, scope: !720)
!736 = !DILocation(line: 182, column: 22, scope: !720)
!737 = !{!427, !428, i64 112}
!738 = !DILocation(line: 182, column: 12, scope: !720)
!739 = !DILocation(line: 183, column: 7, scope: !730)
!740 = !DILocation(line: 183, column: 12, scope: !730)
!741 = !DILocation(line: 183, column: 18, scope: !730)
!742 = !DILocation(line: 183, column: 15, scope: !730)
!743 = !DILocation(line: 183, column: 7, scope: !720)
!744 = !DILocation(line: 184, column: 21, scope: !729)
!745 = !DILocation(line: 184, column: 15, scope: !729)
!746 = !DILocation(line: 185, column: 24, scope: !729)
!747 = !DILocation(line: 185, column: 15, scope: !729)
!748 = !DILocation(line: 186, column: 5, scope: !729)
!749 = !DILocation(line: 187, column: 8, scope: !729)
!750 = !DILocation(line: 187, column: 14, scope: !729)
!751 = !{!752, !429, i64 0}
!752 = !{!"lua_Debug", !429, i64 0, !428, i64 8, !428, i64 16, !428, i64 24, !428, i64 32, !429, i64 40, !429, i64 44, !429, i64 48, !429, i64 52, !420, i64 56, !429, i64 116}
!753 = !DILocation(line: 188, column: 8, scope: !729)
!754 = !DILocation(line: 188, column: 20, scope: !729)
!755 = !{!752, !429, i64 40}
!756 = !DILocation(line: 189, column: 15, scope: !757)
!757 = distinct !DILexicalBlock(scope: !729, file: !1, line: 189, column: 9)
!758 = !DILocation(line: 189, column: 9, scope: !729)
!759 = !DILocation(line: 192, column: 17, scope: !757)
!760 = !DILocation(line: 192, column: 10, scope: !757)
!761 = !DILocation(line: 192, column: 15, scope: !757)
!762 = !DILocation(line: 193, column: 5, scope: !763)
!763 = distinct !DILexicalBlock(scope: !729, file: !1, line: 193, column: 5)
!764 = !DILocation(line: 193, column: 5, scope: !729)
!765 = !DILocation(line: 161, column: 33, scope: !705, inlinedAt: !766)
!766 = distinct !DILocation(line: 193, column: 5, scope: !763)
!767 = !DILocation(line: 161, column: 40, scope: !705, inlinedAt: !766)
!768 = !DILocation(line: 162, column: 15, scope: !712, inlinedAt: !766)
!769 = !DILocation(line: 162, column: 9, scope: !712, inlinedAt: !766)
!770 = !DILocation(line: 162, column: 7, scope: !705, inlinedAt: !766)
!771 = !DILocation(line: 163, column: 27, scope: !712, inlinedAt: !766)
!772 = !DILocation(line: 163, column: 5, scope: !712, inlinedAt: !766)
!773 = !DILocation(line: 165, column: 39, scope: !712, inlinedAt: !766)
!774 = !DILocation(line: 165, column: 5, scope: !712, inlinedAt: !766)
!775 = !DILocation(line: 166, column: 1, scope: !705, inlinedAt: !766)
!776 = !DILocation(line: 194, column: 21, scope: !729)
!777 = !DILocation(line: 194, column: 8, scope: !729)
!778 = !DILocation(line: 194, column: 12, scope: !729)
!779 = !DILocation(line: 194, column: 25, scope: !729)
!780 = !DILocation(line: 194, column: 16, scope: !729)
!781 = !DILocation(line: 196, column: 18, scope: !729)
!782 = !DILocation(line: 186, column: 15, scope: !729)
!783 = !DILocation(line: 198, column: 5, scope: !729)
!784 = !DILocation(line: 201, column: 18, scope: !729)
!785 = !DILocation(line: 202, column: 18, scope: !729)
!786 = !DILocation(line: 202, column: 8, scope: !729)
!787 = !DILocation(line: 202, column: 12, scope: !729)
!788 = !DILocation(line: 202, column: 16, scope: !729)
!789 = !DILocation(line: 203, column: 14, scope: !729)
!790 = !DILocation(line: 203, column: 12, scope: !729)
!791 = !DILocation(line: 204, column: 3, scope: !730)
!792 = !DILocation(line: 204, column: 3, scope: !729)
!793 = !DILocation(line: 205, column: 1, scope: !720)
!794 = distinct !DISubprogram(name: "luaD_precall", scope: !1, file: !1, line: 265, type: !795, isLocal: false, isDefinition: true, scopeLine: 265, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !797)
!795 = !DISubroutineType(types: !796)
!796 = !{!104, !148, !157, !104}
!797 = !{!798, !799, !800, !801, !803, !804, !807, !808, !809, !812, !815, !817}
!798 = !DILocalVariable(name: "L", arg: 1, scope: !794, file: !1, line: 265, type: !148)
!799 = !DILocalVariable(name: "func", arg: 2, scope: !794, file: !1, line: 265, type: !157)
!800 = !DILocalVariable(name: "nresults", arg: 3, scope: !794, file: !1, line: 265, type: !104)
!801 = !DILocalVariable(name: "cl", scope: !794, file: !1, line: 266, type: !802)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!803 = !DILocalVariable(name: "funcr", scope: !794, file: !1, line: 267, type: !309)
!804 = !DILocalVariable(name: "ci", scope: !805, file: !1, line: 274, type: !238)
!805 = distinct !DILexicalBlock(scope: !806, file: !1, line: 273, column: 17)
!806 = distinct !DILexicalBlock(scope: !794, file: !1, line: 273, column: 7)
!807 = !DILocalVariable(name: "st", scope: !805, file: !1, line: 275, type: !157)
!808 = !DILocalVariable(name: "base", scope: !805, file: !1, line: 275, type: !157)
!809 = !DILocalVariable(name: "p", scope: !805, file: !1, line: 276, type: !810)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_typedef, name: "Proto", file: !28, line: 253, baseType: !328)
!812 = !DILocalVariable(name: "nargs", scope: !813, file: !1, line: 285, type: !104)
!813 = distinct !DILexicalBlock(scope: !814, file: !1, line: 284, column: 10)
!814 = distinct !DILexicalBlock(scope: !805, file: !1, line: 279, column: 9)
!815 = !DILocalVariable(name: "ci", scope: !816, file: !1, line: 308, type: !238)
!816 = distinct !DILexicalBlock(scope: !806, file: !1, line: 307, column: 8)
!817 = !DILocalVariable(name: "n", scope: !816, file: !1, line: 309, type: !104)
!818 = !DILocation(line: 265, column: 30, scope: !794)
!819 = !DILocation(line: 265, column: 39, scope: !794)
!820 = !DILocation(line: 265, column: 49, scope: !794)
!821 = !DILocation(line: 268, column: 8, scope: !822)
!822 = distinct !DILexicalBlock(scope: !794, file: !1, line: 268, column: 7)
!823 = !DILocation(line: 268, column: 7, scope: !794)
!824 = !DILocation(line: 270, column: 11, scope: !794)
!825 = !DILocalVariable(name: "L", arg: 1, scope: !826, file: !1, line: 244, type: !148)
!826 = distinct !DISubprogram(name: "tryfuncTM", scope: !1, file: !1, line: 244, type: !827, isLocal: true, isDefinition: true, scopeLine: 244, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !829)
!827 = !DISubroutineType(types: !828)
!828 = !{!157, !148, !157}
!829 = !{!825, !830, !831, !832, !833, !834, !838, !839, !841}
!830 = !DILocalVariable(name: "func", arg: 2, scope: !826, file: !1, line: 244, type: !157)
!831 = !DILocalVariable(name: "tm", scope: !826, file: !1, line: 245, type: !411)
!832 = !DILocalVariable(name: "p", scope: !826, file: !1, line: 246, type: !157)
!833 = !DILocalVariable(name: "funcr", scope: !826, file: !1, line: 247, type: !309)
!834 = !DILocalVariable(name: "o2", scope: !835, file: !1, line: 251, type: !411)
!835 = distinct !DILexicalBlock(scope: !836, file: !1, line: 251, column: 35)
!836 = distinct !DILexicalBlock(scope: !837, file: !1, line: 251, column: 3)
!837 = distinct !DILexicalBlock(scope: !826, file: !1, line: 251, column: 3)
!838 = !DILocalVariable(name: "o1", scope: !835, file: !1, line: 251, type: !90)
!839 = !DILocalVariable(name: "o2", scope: !840, file: !1, line: 254, type: !411)
!840 = distinct !DILexicalBlock(scope: !826, file: !1, line: 254, column: 3)
!841 = !DILocalVariable(name: "o1", scope: !840, file: !1, line: 254, type: !90)
!842 = !DILocation(line: 244, column: 36, scope: !826, inlinedAt: !843)
!843 = distinct !DILocation(line: 269, column: 12, scope: !822)
!844 = !DILocation(line: 244, column: 45, scope: !826, inlinedAt: !843)
!845 = !DILocation(line: 245, column: 22, scope: !826, inlinedAt: !843)
!846 = !DILocation(line: 245, column: 17, scope: !826, inlinedAt: !843)
!847 = !DILocation(line: 247, column: 21, scope: !826, inlinedAt: !843)
!848 = !DILocation(line: 247, column: 13, scope: !826, inlinedAt: !843)
!849 = !DILocation(line: 248, column: 8, scope: !850, inlinedAt: !843)
!850 = distinct !DILexicalBlock(scope: !826, file: !1, line: 248, column: 7)
!851 = !DILocation(line: 248, column: 7, scope: !826, inlinedAt: !843)
!852 = !DILocation(line: 249, column: 5, scope: !850, inlinedAt: !843)
!853 = !DILocation(line: 251, column: 15, scope: !837, inlinedAt: !843)
!854 = !DILocation(line: 246, column: 9, scope: !826, inlinedAt: !843)
!855 = !DILocation(line: 251, column: 22, scope: !836, inlinedAt: !843)
!856 = !DILocation(line: 251, column: 3, scope: !837, inlinedAt: !843)
!857 = !DILocation(line: 251, column: 35, scope: !835, inlinedAt: !843)
!858 = distinct !{!858, !859, !860}
!859 = !DILocation(line: 251, column: 3, scope: !837)
!860 = !DILocation(line: 251, column: 35, scope: !837)
!861 = !DILocation(line: 252, column: 3, scope: !862, inlinedAt: !843)
!862 = distinct !DILexicalBlock(scope: !863, file: !1, line: 252, column: 3)
!863 = distinct !DILexicalBlock(scope: !826, file: !1, line: 252, column: 3)
!864 = !DILocation(line: 252, column: 3, scope: !863, inlinedAt: !843)
!865 = !DILocation(line: 161, column: 33, scope: !705, inlinedAt: !866)
!866 = distinct !DILocation(line: 252, column: 3, scope: !862, inlinedAt: !843)
!867 = !DILocation(line: 161, column: 40, scope: !705, inlinedAt: !866)
!868 = !DILocation(line: 162, column: 15, scope: !712, inlinedAt: !866)
!869 = !DILocation(line: 162, column: 9, scope: !712, inlinedAt: !866)
!870 = !DILocation(line: 162, column: 7, scope: !705, inlinedAt: !866)
!871 = !DILocation(line: 163, column: 27, scope: !712, inlinedAt: !866)
!872 = !DILocation(line: 163, column: 5, scope: !712, inlinedAt: !866)
!873 = !DILocation(line: 165, column: 39, scope: !712, inlinedAt: !866)
!874 = !DILocation(line: 165, column: 5, scope: !712, inlinedAt: !866)
!875 = !DILocation(line: 166, column: 1, scope: !705, inlinedAt: !866)
!876 = !DILocation(line: 253, column: 10, scope: !826, inlinedAt: !843)
!877 = !DILocation(line: 254, column: 3, scope: !840, inlinedAt: !843)
!878 = !DILocation(line: 255, column: 3, scope: !826, inlinedAt: !843)
!879 = !DILocation(line: 269, column: 5, scope: !822)
!880 = !DILocation(line: 267, column: 13, scope: !794)
!881 = !DILocation(line: 271, column: 9, scope: !794)
!882 = !DILocation(line: 266, column: 13, scope: !794)
!883 = !DILocation(line: 272, column: 23, scope: !794)
!884 = !{!427, !428, i64 48}
!885 = !DILocation(line: 272, column: 6, scope: !794)
!886 = !DILocation(line: 272, column: 10, scope: !794)
!887 = !DILocation(line: 272, column: 18, scope: !794)
!888 = !{!489, !428, i64 24}
!889 = !DILocation(line: 273, column: 12, scope: !806)
!890 = !{!891, !420, i64 10}
!891 = !{!"LClosure", !428, i64 0, !420, i64 8, !420, i64 9, !420, i64 10, !420, i64 11, !428, i64 16, !428, i64 24, !428, i64 32, !420, i64 40}
!892 = !DILocation(line: 273, column: 8, scope: !806)
!893 = !DILocation(line: 273, column: 7, scope: !794)
!894 = !DILocation(line: 276, column: 20, scope: !805)
!895 = !{!891, !428, i64 32}
!896 = !DILocation(line: 276, column: 12, scope: !805)
!897 = !DILocation(line: 277, column: 5, scope: !898)
!898 = distinct !DILexicalBlock(scope: !805, file: !1, line: 277, column: 5)
!899 = !{!900, !420, i64 115}
!900 = !{!"Proto", !428, i64 0, !420, i64 8, !420, i64 9, !428, i64 16, !428, i64 24, !428, i64 32, !428, i64 40, !428, i64 48, !428, i64 56, !428, i64 64, !429, i64 72, !429, i64 76, !429, i64 80, !429, i64 84, !429, i64 88, !429, i64 92, !429, i64 96, !429, i64 100, !428, i64 104, !420, i64 112, !420, i64 113, !420, i64 114, !420, i64 115}
!901 = !DILocation(line: 277, column: 5, scope: !805)
!902 = !DILocation(line: 278, column: 12, scope: !805)
!903 = !DILocation(line: 161, column: 33, scope: !705, inlinedAt: !904)
!904 = distinct !DILocation(line: 277, column: 5, scope: !898)
!905 = !DILocation(line: 161, column: 40, scope: !705, inlinedAt: !904)
!906 = !DILocation(line: 162, column: 15, scope: !712, inlinedAt: !904)
!907 = !DILocation(line: 162, column: 9, scope: !712, inlinedAt: !904)
!908 = !DILocation(line: 162, column: 7, scope: !705, inlinedAt: !904)
!909 = !DILocation(line: 163, column: 27, scope: !712, inlinedAt: !904)
!910 = !DILocation(line: 163, column: 5, scope: !712, inlinedAt: !904)
!911 = !DILocation(line: 165, column: 39, scope: !712, inlinedAt: !904)
!912 = !DILocation(line: 165, column: 5, scope: !712, inlinedAt: !904)
!913 = !DILocation(line: 166, column: 1, scope: !705, inlinedAt: !904)
!914 = !DILocation(line: 279, column: 13, scope: !814)
!915 = !{!900, !420, i64 114}
!916 = !DILocation(line: 279, column: 10, scope: !814)
!917 = !DILocation(line: 279, column: 9, scope: !805)
!918 = !DILocation(line: 280, column: 19, scope: !919)
!919 = distinct !DILexicalBlock(scope: !814, file: !1, line: 279, column: 24)
!920 = !DILocation(line: 275, column: 15, scope: !805)
!921 = !DILocation(line: 281, column: 14, scope: !922)
!922 = distinct !DILexicalBlock(scope: !919, file: !1, line: 281, column: 11)
!923 = !DILocation(line: 281, column: 30, scope: !922)
!924 = !{!900, !420, i64 113}
!925 = !DILocation(line: 281, column: 25, scope: !922)
!926 = !DILocation(line: 281, column: 18, scope: !922)
!927 = !DILocation(line: 281, column: 11, scope: !919)
!928 = !DILocation(line: 282, column: 16, scope: !922)
!929 = !DILocation(line: 282, column: 9, scope: !922)
!930 = !DILocation(line: 285, column: 19, scope: !813)
!931 = !DILocation(line: 285, column: 43, scope: !813)
!932 = !DILocation(line: 285, column: 11, scope: !813)
!933 = !DILocalVariable(name: "L", arg: 1, scope: !934, file: !1, line: 208, type: !148)
!934 = distinct !DISubprogram(name: "adjust_varargs", scope: !1, file: !1, line: 208, type: !935, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !937)
!935 = !DISubroutineType(types: !936)
!936 = !{!157, !148, !810, !104}
!937 = !{!933, !938, !939, !940, !941, !942, !945, !946, !947, !950, !954, !955, !957, !962, !963}
!938 = !DILocalVariable(name: "p", arg: 2, scope: !934, file: !1, line: 208, type: !810)
!939 = !DILocalVariable(name: "actual", arg: 3, scope: !934, file: !1, line: 208, type: !104)
!940 = !DILocalVariable(name: "i", scope: !934, file: !1, line: 209, type: !104)
!941 = !DILocalVariable(name: "nfixargs", scope: !934, file: !1, line: 210, type: !104)
!942 = !DILocalVariable(name: "htab", scope: !934, file: !1, line: 211, type: !943)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_typedef, name: "Table", file: !28, line: 348, baseType: !81)
!945 = !DILocalVariable(name: "base", scope: !934, file: !1, line: 212, type: !157)
!946 = !DILocalVariable(name: "fixed", scope: !934, file: !1, line: 212, type: !157)
!947 = !DILocalVariable(name: "nvar", scope: !948, file: !1, line: 217, type: !104)
!948 = distinct !DILexicalBlock(scope: !949, file: !1, line: 216, column: 39)
!949 = distinct !DILexicalBlock(scope: !934, file: !1, line: 216, column: 7)
!950 = !DILocalVariable(name: "o2", scope: !951, file: !1, line: 223, type: !411)
!951 = distinct !DILexicalBlock(scope: !952, file: !1, line: 223, column: 7)
!952 = distinct !DILexicalBlock(scope: !953, file: !1, line: 222, column: 5)
!953 = distinct !DILexicalBlock(scope: !948, file: !1, line: 222, column: 5)
!954 = !DILocalVariable(name: "o1", scope: !951, file: !1, line: 223, type: !90)
!955 = !DILocalVariable(name: "i_o", scope: !956, file: !1, line: 225, type: !90)
!956 = distinct !DILexicalBlock(scope: !948, file: !1, line: 225, column: 5)
!957 = !DILocalVariable(name: "o2", scope: !958, file: !1, line: 232, type: !411)
!958 = distinct !DILexicalBlock(scope: !959, file: !1, line: 232, column: 5)
!959 = distinct !DILexicalBlock(scope: !960, file: !1, line: 231, column: 30)
!960 = distinct !DILexicalBlock(scope: !961, file: !1, line: 231, column: 3)
!961 = distinct !DILexicalBlock(scope: !934, file: !1, line: 231, column: 3)
!962 = !DILocalVariable(name: "o1", scope: !958, file: !1, line: 232, type: !90)
!963 = !DILocalVariable(name: "i_o", scope: !964, file: !1, line: 237, type: !90)
!964 = distinct !DILexicalBlock(scope: !965, file: !1, line: 237, column: 5)
!965 = distinct !DILexicalBlock(scope: !966, file: !1, line: 236, column: 13)
!966 = distinct !DILexicalBlock(scope: !934, file: !1, line: 236, column: 7)
!967 = !DILocation(line: 208, column: 41, scope: !934, inlinedAt: !968)
!968 = distinct !DILocation(line: 286, column: 14, scope: !813)
!969 = !DILocation(line: 208, column: 51, scope: !934, inlinedAt: !968)
!970 = !DILocation(line: 208, column: 58, scope: !934, inlinedAt: !968)
!971 = !DILocation(line: 210, column: 21, scope: !934, inlinedAt: !968)
!972 = !DILocation(line: 210, column: 18, scope: !934, inlinedAt: !968)
!973 = !DILocation(line: 210, column: 7, scope: !934, inlinedAt: !968)
!974 = !DILocation(line: 211, column: 10, scope: !934, inlinedAt: !968)
!975 = !DILocation(line: 213, column: 17, scope: !976, inlinedAt: !968)
!976 = distinct !DILexicalBlock(scope: !977, file: !1, line: 213, column: 3)
!977 = distinct !DILexicalBlock(scope: !934, file: !1, line: 213, column: 3)
!978 = !DILocation(line: 213, column: 3, scope: !977, inlinedAt: !968)
!979 = !DILocation(line: 214, column: 5, scope: !976, inlinedAt: !968)
!980 = !DILocation(line: 213, column: 29, scope: !976, inlinedAt: !968)
!981 = distinct !{!981, !982}
!982 = !{!"llvm.loop.unroll.disable"}
!983 = distinct !{!983, !984, !985}
!984 = !DILocation(line: 213, column: 3, scope: !977)
!985 = !DILocation(line: 214, column: 5, scope: !977)
!986 = !DILocation(line: 216, column: 20, scope: !949, inlinedAt: !968)
!987 = !DILocation(line: 216, column: 7, scope: !934, inlinedAt: !968)
!988 = !DILocation(line: 217, column: 23, scope: !948, inlinedAt: !968)
!989 = !DILocation(line: 217, column: 9, scope: !948, inlinedAt: !968)
!990 = !DILocation(line: 219, column: 5, scope: !991, inlinedAt: !968)
!991 = distinct !DILexicalBlock(scope: !992, file: !1, line: 219, column: 5)
!992 = distinct !DILexicalBlock(scope: !948, file: !1, line: 219, column: 5)
!993 = !{!469, !432, i64 120}
!994 = !{!469, !432, i64 112}
!995 = !DILocation(line: 219, column: 5, scope: !992, inlinedAt: !968)
!996 = !DILocation(line: 220, column: 5, scope: !997, inlinedAt: !968)
!997 = distinct !DILexicalBlock(scope: !948, file: !1, line: 220, column: 5)
!998 = !DILocation(line: 220, column: 5, scope: !948, inlinedAt: !968)
!999 = !DILocation(line: 161, column: 33, scope: !705, inlinedAt: !1000)
!1000 = distinct !DILocation(line: 220, column: 5, scope: !997, inlinedAt: !968)
!1001 = !DILocation(line: 161, column: 40, scope: !705, inlinedAt: !1000)
!1002 = !DILocation(line: 162, column: 15, scope: !712, inlinedAt: !1000)
!1003 = !DILocation(line: 162, column: 9, scope: !712, inlinedAt: !1000)
!1004 = !DILocation(line: 162, column: 7, scope: !705, inlinedAt: !1000)
!1005 = !DILocation(line: 163, column: 27, scope: !712, inlinedAt: !1000)
!1006 = !DILocation(line: 163, column: 5, scope: !712, inlinedAt: !1000)
!1007 = !DILocation(line: 165, column: 39, scope: !712, inlinedAt: !1000)
!1008 = !DILocation(line: 165, column: 5, scope: !712, inlinedAt: !1000)
!1009 = !DILocation(line: 166, column: 1, scope: !705, inlinedAt: !1000)
!1010 = !DILocation(line: 221, column: 12, scope: !948, inlinedAt: !968)
!1011 = !DILocation(line: 209, column: 7, scope: !934, inlinedAt: !968)
!1012 = !DILocation(line: 222, column: 16, scope: !952, inlinedAt: !968)
!1013 = !DILocation(line: 222, column: 5, scope: !953, inlinedAt: !968)
!1014 = !DILocation(line: 223, column: 7, scope: !951, inlinedAt: !968)
!1015 = distinct !{!1015, !1016, !1017}
!1016 = !DILocation(line: 222, column: 5, scope: !953)
!1017 = !DILocation(line: 223, column: 7, scope: !953)
!1018 = !DILocation(line: 225, column: 5, scope: !956, inlinedAt: !968)
!1019 = !DILocation(line: 229, column: 14, scope: !934, inlinedAt: !968)
!1020 = !DILocation(line: 226, column: 3, scope: !948, inlinedAt: !968)
!1021 = !DILocation(line: 0, scope: !934, inlinedAt: !968)
!1022 = !DILocation(line: 229, column: 18, scope: !934, inlinedAt: !968)
!1023 = !DILocation(line: 212, column: 15, scope: !934, inlinedAt: !968)
!1024 = !DILocation(line: 212, column: 9, scope: !934, inlinedAt: !968)
!1025 = !DILocation(line: 231, column: 14, scope: !960, inlinedAt: !968)
!1026 = !DILocation(line: 231, column: 3, scope: !961, inlinedAt: !968)
!1027 = !DILocation(line: 232, column: 5, scope: !958, inlinedAt: !968)
!1028 = !DILocation(line: 233, column: 5, scope: !959, inlinedAt: !968)
!1029 = distinct !{!1029, !1030, !1031}
!1030 = !DILocation(line: 231, column: 3, scope: !961)
!1031 = !DILocation(line: 234, column: 3, scope: !961)
!1032 = !DILocation(line: 231, column: 26, scope: !960, inlinedAt: !968)
!1033 = !DILocation(line: 236, column: 7, scope: !966, inlinedAt: !968)
!1034 = !DILocation(line: 236, column: 7, scope: !934, inlinedAt: !968)
!1035 = !DILocation(line: 237, column: 5, scope: !964, inlinedAt: !968)
!1036 = !DILocation(line: 239, column: 3, scope: !965, inlinedAt: !968)
!1037 = !DILocation(line: 240, column: 3, scope: !934, inlinedAt: !968)
!1038 = !DILocation(line: 287, column: 14, scope: !813)
!1039 = !DILocation(line: 0, scope: !919)
!1040 = !DILocation(line: 0, scope: !805)
!1041 = !DILocation(line: 289, column: 10, scope: !805)
!1042 = !DILocalVariable(name: "L", arg: 1, scope: !1043, file: !1, line: 169, type: !148)
!1043 = distinct !DISubprogram(name: "growCI", scope: !1, file: !1, line: 169, type: !1044, isLocal: true, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1046)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{!238, !148}
!1046 = !{!1042}
!1047 = !DILocation(line: 169, column: 37, scope: !1043, inlinedAt: !1048)
!1048 = distinct !DILocation(line: 289, column: 10, scope: !805)
!1049 = !DILocation(line: 170, column: 10, scope: !1050, inlinedAt: !1048)
!1050 = distinct !DILexicalBlock(scope: !1043, file: !1, line: 170, column: 7)
!1051 = !DILocation(line: 170, column: 18, scope: !1050, inlinedAt: !1048)
!1052 = !DILocation(line: 170, column: 7, scope: !1043, inlinedAt: !1048)
!1053 = !DILocation(line: 171, column: 5, scope: !1050, inlinedAt: !1048)
!1054 = !DILocation(line: 173, column: 24, scope: !1055, inlinedAt: !1048)
!1055 = distinct !DILexicalBlock(scope: !1050, file: !1, line: 172, column: 8)
!1056 = !DILocation(line: 152, column: 33, scope: !539, inlinedAt: !1057)
!1057 = distinct !DILocation(line: 173, column: 5, scope: !1055, inlinedAt: !1048)
!1058 = !DILocation(line: 152, column: 40, scope: !539, inlinedAt: !1057)
!1059 = !DILocation(line: 153, column: 24, scope: !539, inlinedAt: !1057)
!1060 = !DILocation(line: 153, column: 13, scope: !539, inlinedAt: !1057)
!1061 = !DILocation(line: 154, column: 3, scope: !539, inlinedAt: !1057)
!1062 = !DILocation(line: 157, column: 26, scope: !539, inlinedAt: !1057)
!1063 = !DILocation(line: 155, column: 14, scope: !539, inlinedAt: !1057)
!1064 = !DILocation(line: 156, column: 15, scope: !539, inlinedAt: !1057)
!1065 = !DILocation(line: 156, column: 18, scope: !539, inlinedAt: !1057)
!1066 = !DILocation(line: 156, column: 32, scope: !539, inlinedAt: !1057)
!1067 = !DILocation(line: 156, column: 27, scope: !539, inlinedAt: !1057)
!1068 = !DILocation(line: 156, column: 9, scope: !539, inlinedAt: !1057)
!1069 = !DILocation(line: 157, column: 39, scope: !539, inlinedAt: !1057)
!1070 = !DILocation(line: 157, column: 13, scope: !539, inlinedAt: !1057)
!1071 = !DILocation(line: 158, column: 1, scope: !539, inlinedAt: !1057)
!1072 = !DILocation(line: 174, column: 20, scope: !1073, inlinedAt: !1048)
!1073 = distinct !DILexicalBlock(scope: !1055, file: !1, line: 174, column: 9)
!1074 = !DILocation(line: 174, column: 9, scope: !1055, inlinedAt: !1048)
!1075 = !DILocation(line: 175, column: 7, scope: !1073, inlinedAt: !1048)
!1076 = !DILocation(line: 177, column: 10, scope: !1043, inlinedAt: !1048)
!1077 = !DILocation(line: 177, column: 3, scope: !1043, inlinedAt: !1048)
!1078 = !DILocation(line: 274, column: 15, scope: !805)
!1079 = !DILocation(line: 290, column: 9, scope: !805)
!1080 = !DILocation(line: 290, column: 14, scope: !805)
!1081 = !DILocation(line: 291, column: 19, scope: !805)
!1082 = !DILocation(line: 291, column: 24, scope: !805)
!1083 = !DILocation(line: 291, column: 8, scope: !805)
!1084 = !DILocation(line: 291, column: 13, scope: !805)
!1085 = !DILocation(line: 292, column: 28, scope: !805)
!1086 = !DILocation(line: 292, column: 23, scope: !805)
!1087 = !DILocation(line: 292, column: 9, scope: !805)
!1088 = !DILocation(line: 292, column: 13, scope: !805)
!1089 = !DILocation(line: 294, column: 21, scope: !805)
!1090 = !{!900, !428, i64 24}
!1091 = !DILocation(line: 294, column: 16, scope: !805)
!1092 = !DILocation(line: 295, column: 9, scope: !805)
!1093 = !DILocation(line: 295, column: 19, scope: !805)
!1094 = !{!489, !429, i64 36}
!1095 = !DILocation(line: 296, column: 9, scope: !805)
!1096 = !DILocation(line: 296, column: 18, scope: !805)
!1097 = !{!489, !429, i64 32}
!1098 = !DILocation(line: 297, column: 18, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !805, file: !1, line: 297, column: 5)
!1100 = !DILocation(line: 275, column: 11, scope: !805)
!1101 = !DILocation(line: 297, column: 26, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1099, file: !1, line: 297, column: 5)
!1103 = !DILocation(line: 297, column: 5, scope: !1099)
!1104 = !DILocation(line: 298, column: 7, scope: !1102)
!1105 = !DILocation(line: 297, column: 39, scope: !1102)
!1106 = distinct !{!1106, !982}
!1107 = distinct !{!1107, !1103, !1108}
!1108 = !DILocation(line: 298, column: 7, scope: !1099)
!1109 = !DILocation(line: 299, column: 12, scope: !805)
!1110 = !DILocation(line: 300, column: 12, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !805, file: !1, line: 300, column: 9)
!1112 = !{!427, !420, i64 100}
!1113 = !DILocation(line: 300, column: 21, scope: !1111)
!1114 = !DILocation(line: 300, column: 9, scope: !805)
!1115 = !DILocation(line: 301, column: 17, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1111, file: !1, line: 300, column: 37)
!1117 = !DILocation(line: 302, column: 7, scope: !1116)
!1118 = !DILocation(line: 303, column: 17, scope: !1116)
!1119 = !DILocation(line: 304, column: 5, scope: !1116)
!1120 = !DILocation(line: 310, column: 5, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !816, file: !1, line: 310, column: 5)
!1122 = !DILocation(line: 310, column: 5, scope: !816)
!1123 = !DILocation(line: 161, column: 33, scope: !705, inlinedAt: !1124)
!1124 = distinct !DILocation(line: 310, column: 5, scope: !1121)
!1125 = !DILocation(line: 161, column: 40, scope: !705, inlinedAt: !1124)
!1126 = !DILocation(line: 162, column: 15, scope: !712, inlinedAt: !1124)
!1127 = !DILocation(line: 162, column: 9, scope: !712, inlinedAt: !1124)
!1128 = !DILocation(line: 162, column: 7, scope: !705, inlinedAt: !1124)
!1129 = !DILocation(line: 163, column: 27, scope: !712, inlinedAt: !1124)
!1130 = !DILocation(line: 163, column: 5, scope: !712, inlinedAt: !1124)
!1131 = !DILocation(line: 165, column: 39, scope: !712, inlinedAt: !1124)
!1132 = !DILocation(line: 165, column: 5, scope: !712, inlinedAt: !1124)
!1133 = !DILocation(line: 166, column: 1, scope: !705, inlinedAt: !1124)
!1134 = !DILocation(line: 311, column: 10, scope: !816)
!1135 = !DILocation(line: 169, column: 37, scope: !1043, inlinedAt: !1136)
!1136 = distinct !DILocation(line: 311, column: 10, scope: !816)
!1137 = !DILocation(line: 170, column: 10, scope: !1050, inlinedAt: !1136)
!1138 = !DILocation(line: 170, column: 18, scope: !1050, inlinedAt: !1136)
!1139 = !DILocation(line: 170, column: 7, scope: !1043, inlinedAt: !1136)
!1140 = !DILocation(line: 171, column: 5, scope: !1050, inlinedAt: !1136)
!1141 = !DILocation(line: 173, column: 24, scope: !1055, inlinedAt: !1136)
!1142 = !DILocation(line: 152, column: 33, scope: !539, inlinedAt: !1143)
!1143 = distinct !DILocation(line: 173, column: 5, scope: !1055, inlinedAt: !1136)
!1144 = !DILocation(line: 152, column: 40, scope: !539, inlinedAt: !1143)
!1145 = !DILocation(line: 153, column: 24, scope: !539, inlinedAt: !1143)
!1146 = !DILocation(line: 153, column: 13, scope: !539, inlinedAt: !1143)
!1147 = !DILocation(line: 154, column: 3, scope: !539, inlinedAt: !1143)
!1148 = !DILocation(line: 157, column: 26, scope: !539, inlinedAt: !1143)
!1149 = !DILocation(line: 155, column: 14, scope: !539, inlinedAt: !1143)
!1150 = !DILocation(line: 156, column: 15, scope: !539, inlinedAt: !1143)
!1151 = !DILocation(line: 156, column: 18, scope: !539, inlinedAt: !1143)
!1152 = !DILocation(line: 156, column: 32, scope: !539, inlinedAt: !1143)
!1153 = !DILocation(line: 156, column: 27, scope: !539, inlinedAt: !1143)
!1154 = !DILocation(line: 156, column: 9, scope: !539, inlinedAt: !1143)
!1155 = !DILocation(line: 157, column: 39, scope: !539, inlinedAt: !1143)
!1156 = !DILocation(line: 157, column: 13, scope: !539, inlinedAt: !1143)
!1157 = !DILocation(line: 158, column: 1, scope: !539, inlinedAt: !1143)
!1158 = !DILocation(line: 174, column: 20, scope: !1073, inlinedAt: !1136)
!1159 = !DILocation(line: 174, column: 9, scope: !1055, inlinedAt: !1136)
!1160 = !DILocation(line: 175, column: 7, scope: !1073, inlinedAt: !1136)
!1161 = !DILocation(line: 177, column: 10, scope: !1043, inlinedAt: !1136)
!1162 = !DILocation(line: 177, column: 3, scope: !1043, inlinedAt: !1136)
!1163 = !DILocation(line: 308, column: 15, scope: !816)
!1164 = !DILocation(line: 312, column: 16, scope: !816)
!1165 = !DILocation(line: 312, column: 9, scope: !816)
!1166 = !DILocation(line: 312, column: 14, scope: !816)
!1167 = !DILocation(line: 313, column: 35, scope: !816)
!1168 = !DILocation(line: 313, column: 24, scope: !816)
!1169 = !DILocation(line: 313, column: 8, scope: !816)
!1170 = !DILocation(line: 313, column: 13, scope: !816)
!1171 = !DILocation(line: 314, column: 18, scope: !816)
!1172 = !DILocation(line: 314, column: 22, scope: !816)
!1173 = !DILocation(line: 314, column: 9, scope: !816)
!1174 = !DILocation(line: 314, column: 13, scope: !816)
!1175 = !DILocation(line: 316, column: 9, scope: !816)
!1176 = !DILocation(line: 316, column: 18, scope: !816)
!1177 = !DILocation(line: 317, column: 12, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !816, file: !1, line: 317, column: 9)
!1179 = !DILocation(line: 317, column: 21, scope: !1178)
!1180 = !DILocation(line: 317, column: 9, scope: !816)
!1181 = !DILocation(line: 318, column: 7, scope: !1178)
!1182 = !DILocation(line: 320, column: 11, scope: !816)
!1183 = !DILocation(line: 320, column: 27, scope: !816)
!1184 = !DILocation(line: 320, column: 9, scope: !816)
!1185 = !DILocation(line: 309, column: 9, scope: !816)
!1186 = !DILocation(line: 322, column: 11, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !816, file: !1, line: 322, column: 9)
!1188 = !DILocation(line: 322, column: 9, scope: !816)
!1189 = !DILocation(line: 325, column: 26, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1187, file: !1, line: 324, column: 10)
!1191 = !DILocation(line: 325, column: 30, scope: !1190)
!1192 = !DILocation(line: 325, column: 7, scope: !1190)
!1193 = !DILocation(line: 326, column: 7, scope: !1190)
!1194 = !DILocation(line: 329, column: 1, scope: !794)
!1195 = distinct !DISubprogram(name: "luaD_poscall", scope: !1, file: !1, line: 343, type: !1196, isLocal: false, isDefinition: true, scopeLine: 343, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1198)
!1196 = !DISubroutineType(types: !1197)
!1197 = !{!104, !148, !157}
!1198 = !{!1199, !1200, !1201, !1202, !1203, !1204, !1205, !1209}
!1199 = !DILocalVariable(name: "L", arg: 1, scope: !1195, file: !1, line: 343, type: !148)
!1200 = !DILocalVariable(name: "firstResult", arg: 2, scope: !1195, file: !1, line: 343, type: !157)
!1201 = !DILocalVariable(name: "res", scope: !1195, file: !1, line: 344, type: !157)
!1202 = !DILocalVariable(name: "wanted", scope: !1195, file: !1, line: 345, type: !104)
!1203 = !DILocalVariable(name: "i", scope: !1195, file: !1, line: 345, type: !104)
!1204 = !DILocalVariable(name: "ci", scope: !1195, file: !1, line: 346, type: !238)
!1205 = !DILocalVariable(name: "o2", scope: !1206, file: !1, line: 356, type: !411)
!1206 = distinct !DILexicalBlock(scope: !1207, file: !1, line: 356, column: 5)
!1207 = distinct !DILexicalBlock(scope: !1208, file: !1, line: 355, column: 3)
!1208 = distinct !DILexicalBlock(scope: !1195, file: !1, line: 355, column: 3)
!1209 = !DILocalVariable(name: "o1", scope: !1206, file: !1, line: 356, type: !90)
!1210 = !DILocation(line: 343, column: 30, scope: !1195)
!1211 = !DILocation(line: 343, column: 39, scope: !1195)
!1212 = !DILocation(line: 347, column: 10, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1195, file: !1, line: 347, column: 7)
!1214 = !DILocation(line: 347, column: 19, scope: !1213)
!1215 = !DILocation(line: 347, column: 7, scope: !1195)
!1216 = !DILocation(line: 349, column: 11, scope: !1195)
!1217 = !DILocalVariable(name: "L", arg: 1, scope: !1218, file: !1, line: 332, type: !148)
!1218 = distinct !DISubprogram(name: "callrethooks", scope: !1, file: !1, line: 332, type: !827, isLocal: true, isDefinition: true, scopeLine: 332, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1219)
!1219 = !{!1217, !1220, !1221}
!1220 = !DILocalVariable(name: "firstResult", arg: 2, scope: !1218, file: !1, line: 332, type: !157)
!1221 = !DILocalVariable(name: "fr", scope: !1218, file: !1, line: 333, type: !309)
!1222 = !DILocation(line: 332, column: 39, scope: !1218, inlinedAt: !1223)
!1223 = distinct !DILocation(line: 348, column: 19, scope: !1213)
!1224 = !DILocation(line: 332, column: 48, scope: !1218, inlinedAt: !1223)
!1225 = !DILocation(line: 333, column: 18, scope: !1218, inlinedAt: !1223)
!1226 = !DILocation(line: 333, column: 13, scope: !1218, inlinedAt: !1223)
!1227 = !DILocation(line: 334, column: 3, scope: !1218, inlinedAt: !1223)
!1228 = !DILocation(line: 335, column: 7, scope: !1229, inlinedAt: !1223)
!1229 = distinct !DILexicalBlock(scope: !1218, file: !1, line: 335, column: 7)
!1230 = !DILocation(line: 335, column: 7, scope: !1218, inlinedAt: !1223)
!1231 = !DILocation(line: 336, column: 16, scope: !1232, inlinedAt: !1223)
!1232 = distinct !DILexicalBlock(scope: !1229, file: !1, line: 335, column: 23)
!1233 = !DILocation(line: 336, column: 25, scope: !1232, inlinedAt: !1223)
!1234 = !DILocation(line: 336, column: 40, scope: !1232, inlinedAt: !1223)
!1235 = !DILocation(line: 336, column: 50, scope: !1232, inlinedAt: !1223)
!1236 = !DILocation(line: 336, column: 59, scope: !1232, inlinedAt: !1223)
!1237 = !DILocation(line: 336, column: 5, scope: !1232, inlinedAt: !1223)
!1238 = !DILocation(line: 337, column: 7, scope: !1232, inlinedAt: !1223)
!1239 = distinct !{!1239, !1240, !1241}
!1240 = !DILocation(line: 336, column: 5, scope: !1232)
!1241 = !DILocation(line: 337, column: 43, scope: !1232)
!1242 = !DILocation(line: 336, column: 46, scope: !1232, inlinedAt: !1223)
!1243 = !DILocation(line: 339, column: 10, scope: !1218, inlinedAt: !1223)
!1244 = !DILocation(line: 339, column: 3, scope: !1218, inlinedAt: !1223)
!1245 = !DILocation(line: 348, column: 5, scope: !1213)
!1246 = !DILocation(line: 349, column: 13, scope: !1195)
!1247 = !DILocation(line: 346, column: 13, scope: !1195)
!1248 = !DILocation(line: 350, column: 13, scope: !1195)
!1249 = !DILocation(line: 344, column: 9, scope: !1195)
!1250 = !DILocation(line: 351, column: 16, scope: !1195)
!1251 = !DILocation(line: 345, column: 7, scope: !1195)
!1252 = !DILocation(line: 352, column: 23, scope: !1195)
!1253 = !DILocation(line: 352, column: 6, scope: !1195)
!1254 = !DILocation(line: 352, column: 11, scope: !1195)
!1255 = !DILocation(line: 353, column: 26, scope: !1195)
!1256 = !DILocation(line: 353, column: 6, scope: !1195)
!1257 = !DILocation(line: 353, column: 14, scope: !1195)
!1258 = !DILocation(line: 345, column: 15, scope: !1195)
!1259 = !DILocation(line: 355, column: 47, scope: !1207)
!1260 = !DILocation(line: 355, column: 22, scope: !1207)
!1261 = !DILocation(line: 355, column: 27, scope: !1207)
!1262 = !DILocation(line: 355, column: 42, scope: !1207)
!1263 = !DILocation(line: 355, column: 3, scope: !1208)
!1264 = !DILocation(line: 356, column: 5, scope: !1206)
!1265 = !DILocation(line: 355, column: 53, scope: !1207)
!1266 = distinct !{!1266, !1263, !1267}
!1267 = !DILocation(line: 356, column: 5, scope: !1208)
!1268 = !DILocation(line: 357, column: 14, scope: !1195)
!1269 = !DILocation(line: 357, column: 3, scope: !1195)
!1270 = !DILocation(line: 357, column: 11, scope: !1195)
!1271 = !DILocation(line: 358, column: 5, scope: !1195)
!1272 = distinct !{!1272, !1269, !1271}
!1273 = !DILocation(line: 0, scope: !1195)
!1274 = !DILocation(line: 359, column: 10, scope: !1195)
!1275 = !DILocation(line: 360, column: 18, scope: !1195)
!1276 = !DILocation(line: 360, column: 3, scope: !1195)
!1277 = distinct !DISubprogram(name: "luaD_call", scope: !1, file: !1, line: 370, type: !1278, isLocal: false, isDefinition: true, scopeLine: 370, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1280)
!1278 = !DISubroutineType(types: !1279)
!1279 = !{null, !148, !157, !104}
!1280 = !{!1281, !1282, !1283}
!1281 = !DILocalVariable(name: "L", arg: 1, scope: !1277, file: !1, line: 370, type: !148)
!1282 = !DILocalVariable(name: "func", arg: 2, scope: !1277, file: !1, line: 370, type: !157)
!1283 = !DILocalVariable(name: "nResults", arg: 3, scope: !1277, file: !1, line: 370, type: !104)
!1284 = !DILocation(line: 370, column: 28, scope: !1277)
!1285 = !DILocation(line: 370, column: 37, scope: !1277)
!1286 = !DILocation(line: 370, column: 47, scope: !1277)
!1287 = !DILocation(line: 371, column: 12, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1277, file: !1, line: 371, column: 7)
!1289 = !DILocation(line: 371, column: 7, scope: !1288)
!1290 = !DILocation(line: 371, column: 20, scope: !1288)
!1291 = !DILocation(line: 371, column: 7, scope: !1277)
!1292 = !DILocation(line: 372, column: 20, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1294, file: !1, line: 372, column: 9)
!1294 = distinct !DILexicalBlock(scope: !1288, file: !1, line: 371, column: 39)
!1295 = !DILocation(line: 372, column: 9, scope: !1294)
!1296 = !DILocation(line: 373, column: 7, scope: !1293)
!1297 = !DILocation(line: 374, column: 25, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1293, file: !1, line: 374, column: 14)
!1299 = !DILocation(line: 374, column: 14, scope: !1293)
!1300 = !DILocation(line: 375, column: 7, scope: !1298)
!1301 = !DILocation(line: 377, column: 7, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1277, file: !1, line: 377, column: 7)
!1303 = !DILocation(line: 377, column: 39, scope: !1302)
!1304 = !DILocation(line: 377, column: 7, scope: !1277)
!1305 = !DILocation(line: 378, column: 5, scope: !1302)
!1306 = !DILocation(line: 379, column: 13, scope: !1277)
!1307 = !DILocation(line: 380, column: 3, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1309, file: !1, line: 380, column: 3)
!1309 = distinct !DILexicalBlock(scope: !1277, file: !1, line: 380, column: 3)
!1310 = !DILocation(line: 380, column: 3, scope: !1309)
!1311 = !DILocation(line: 381, column: 1, scope: !1277)
!1312 = distinct !DISubprogram(name: "lua_resume", scope: !1, file: !1, line: 418, type: !1313, isLocal: false, isDefinition: true, scopeLine: 418, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1315)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{!104, !148, !104}
!1315 = !{!1316, !1317, !1318}
!1316 = !DILocalVariable(name: "L", arg: 1, scope: !1312, file: !1, line: 418, type: !148)
!1317 = !DILocalVariable(name: "nargs", arg: 2, scope: !1312, file: !1, line: 418, type: !104)
!1318 = !DILocalVariable(name: "status", scope: !1312, file: !1, line: 419, type: !104)
!1319 = !DILocation(line: 418, column: 36, scope: !1312)
!1320 = !DILocation(line: 418, column: 43, scope: !1312)
!1321 = !DILocation(line: 421, column: 10, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1312, file: !1, line: 421, column: 7)
!1323 = !DILocation(line: 421, column: 30, scope: !1322)
!1324 = !DILocation(line: 410, column: 15, scope: !1325, inlinedAt: !1333)
!1325 = distinct !DISubprogram(name: "resume_error", scope: !1, file: !1, line: 409, type: !1326, isLocal: true, isDefinition: true, scopeLine: 409, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1328)
!1326 = !DISubroutineType(types: !1327)
!1327 = !{!104, !148, !276}
!1328 = !{!1329, !1330, !1331}
!1329 = !DILocalVariable(name: "L", arg: 1, scope: !1325, file: !1, line: 409, type: !148)
!1330 = !DILocalVariable(name: "msg", arg: 2, scope: !1325, file: !1, line: 409, type: !276)
!1331 = !DILocalVariable(name: "i_o", scope: !1332, file: !1, line: 411, type: !90)
!1332 = distinct !DILexicalBlock(scope: !1325, file: !1, line: 411, column: 3)
!1333 = distinct !DILocation(line: 422, column: 14, scope: !1322)
!1334 = !DILocation(line: 421, column: 55, scope: !1322)
!1335 = !DILocation(line: 421, column: 64, scope: !1322)
!1336 = !DILocation(line: 421, column: 58, scope: !1322)
!1337 = !DILocation(line: 421, column: 7, scope: !1312)
!1338 = !DILocation(line: 409, column: 37, scope: !1325, inlinedAt: !1333)
!1339 = !DILocation(line: 409, column: 52, scope: !1325, inlinedAt: !1333)
!1340 = !DILocation(line: 410, column: 19, scope: !1325, inlinedAt: !1333)
!1341 = !DILocation(line: 410, column: 6, scope: !1325, inlinedAt: !1333)
!1342 = !DILocation(line: 410, column: 10, scope: !1325, inlinedAt: !1333)
!1343 = !DILocation(line: 411, column: 3, scope: !1332, inlinedAt: !1333)
!1344 = !DILocation(line: 412, column: 3, scope: !1345, inlinedAt: !1333)
!1345 = distinct !DILexicalBlock(scope: !1346, file: !1, line: 412, column: 3)
!1346 = distinct !DILexicalBlock(scope: !1325, file: !1, line: 412, column: 3)
!1347 = !DILocation(line: 412, column: 3, scope: !1346, inlinedAt: !1333)
!1348 = !DILocation(line: 161, column: 33, scope: !705, inlinedAt: !1349)
!1349 = distinct !DILocation(line: 412, column: 3, scope: !1345, inlinedAt: !1333)
!1350 = !DILocation(line: 161, column: 40, scope: !705, inlinedAt: !1349)
!1351 = !DILocation(line: 162, column: 15, scope: !712, inlinedAt: !1349)
!1352 = !DILocation(line: 162, column: 9, scope: !712, inlinedAt: !1349)
!1353 = !DILocation(line: 162, column: 7, scope: !705, inlinedAt: !1349)
!1354 = !DILocation(line: 163, column: 27, scope: !712, inlinedAt: !1349)
!1355 = !DILocation(line: 163, column: 5, scope: !712, inlinedAt: !1349)
!1356 = !DILocation(line: 165, column: 39, scope: !712, inlinedAt: !1349)
!1357 = !DILocation(line: 165, column: 5, scope: !712, inlinedAt: !1349)
!1358 = !DILocation(line: 166, column: 1, scope: !705, inlinedAt: !1349)
!1359 = !DILocation(line: 414, column: 3, scope: !1325, inlinedAt: !1333)
!1360 = !DILocation(line: 422, column: 7, scope: !1322)
!1361 = !DILocation(line: 423, column: 10, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1312, file: !1, line: 423, column: 7)
!1363 = !DILocation(line: 423, column: 18, scope: !1362)
!1364 = !DILocation(line: 423, column: 7, scope: !1312)
!1365 = !DILocation(line: 409, column: 37, scope: !1325, inlinedAt: !1366)
!1366 = distinct !DILocation(line: 424, column: 12, scope: !1362)
!1367 = !DILocation(line: 409, column: 52, scope: !1325, inlinedAt: !1366)
!1368 = !DILocation(line: 410, column: 15, scope: !1325, inlinedAt: !1366)
!1369 = !DILocation(line: 410, column: 19, scope: !1325, inlinedAt: !1366)
!1370 = !DILocation(line: 410, column: 6, scope: !1325, inlinedAt: !1366)
!1371 = !DILocation(line: 410, column: 10, scope: !1325, inlinedAt: !1366)
!1372 = !DILocation(line: 411, column: 3, scope: !1332, inlinedAt: !1366)
!1373 = !DILocation(line: 412, column: 3, scope: !1345, inlinedAt: !1366)
!1374 = !DILocation(line: 412, column: 3, scope: !1346, inlinedAt: !1366)
!1375 = !DILocation(line: 161, column: 33, scope: !705, inlinedAt: !1376)
!1376 = distinct !DILocation(line: 412, column: 3, scope: !1345, inlinedAt: !1366)
!1377 = !DILocation(line: 161, column: 40, scope: !705, inlinedAt: !1376)
!1378 = !DILocation(line: 162, column: 15, scope: !712, inlinedAt: !1376)
!1379 = !DILocation(line: 162, column: 9, scope: !712, inlinedAt: !1376)
!1380 = !DILocation(line: 162, column: 7, scope: !705, inlinedAt: !1376)
!1381 = !DILocation(line: 163, column: 27, scope: !712, inlinedAt: !1376)
!1382 = !DILocation(line: 163, column: 5, scope: !712, inlinedAt: !1376)
!1383 = !DILocation(line: 165, column: 39, scope: !712, inlinedAt: !1376)
!1384 = !DILocation(line: 165, column: 5, scope: !712, inlinedAt: !1376)
!1385 = !DILocation(line: 166, column: 1, scope: !705, inlinedAt: !1376)
!1386 = !DILocation(line: 414, column: 3, scope: !1325, inlinedAt: !1366)
!1387 = !DILocation(line: 424, column: 5, scope: !1362)
!1388 = !DILocation(line: 427, column: 19, scope: !1312)
!1389 = !DILocation(line: 427, column: 6, scope: !1312)
!1390 = !DILocation(line: 427, column: 17, scope: !1312)
!1391 = !DILocation(line: 428, column: 47, scope: !1312)
!1392 = !DILocation(line: 428, column: 51, scope: !1312)
!1393 = !DILocation(line: 111, column: 38, scope: !570, inlinedAt: !1394)
!1394 = distinct !DILocation(line: 428, column: 12, scope: !1312)
!1395 = !DILocation(line: 111, column: 56, scope: !570, inlinedAt: !1394)
!1396 = !DILocation(line: 112, column: 3, scope: !570, inlinedAt: !1394)
!1397 = !DILocation(line: 113, column: 6, scope: !570, inlinedAt: !1394)
!1398 = !DILocation(line: 113, column: 13, scope: !570, inlinedAt: !1394)
!1399 = !DILocation(line: 114, column: 20, scope: !570, inlinedAt: !1394)
!1400 = !DILocation(line: 114, column: 15, scope: !570, inlinedAt: !1394)
!1401 = !DILocation(line: 115, column: 15, scope: !570, inlinedAt: !1394)
!1402 = !DILocation(line: 116, column: 3, scope: !594, inlinedAt: !1394)
!1403 = !DILocation(line: 116, column: 3, scope: !570, inlinedAt: !1394)
!1404 = !DILocalVariable(name: "L", arg: 1, scope: !1405, file: !1, line: 384, type: !148)
!1405 = distinct !DISubprogram(name: "resume", scope: !1, file: !1, line: 384, type: !576, isLocal: true, isDefinition: true, scopeLine: 384, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1406)
!1406 = !{!1404, !1407, !1408, !1409}
!1407 = !DILocalVariable(name: "ud", arg: 2, scope: !1405, file: !1, line: 384, type: !52)
!1408 = !DILocalVariable(name: "firstArg", scope: !1405, file: !1, line: 385, type: !157)
!1409 = !DILocalVariable(name: "ci", scope: !1405, file: !1, line: 386, type: !238)
!1410 = !DILocation(line: 384, column: 32, scope: !1405, inlinedAt: !1411)
!1411 = distinct !DILocation(line: 116, column: 3, scope: !597, inlinedAt: !1394)
!1412 = !DILocation(line: 384, column: 41, scope: !1405, inlinedAt: !1411)
!1413 = !DILocation(line: 385, column: 9, scope: !1405, inlinedAt: !1411)
!1414 = !DILocation(line: 386, column: 21, scope: !1405, inlinedAt: !1411)
!1415 = !DILocation(line: 387, column: 10, scope: !1416, inlinedAt: !1411)
!1416 = distinct !DILexicalBlock(scope: !1405, file: !1, line: 387, column: 7)
!1417 = !DILocation(line: 387, column: 17, scope: !1416, inlinedAt: !1411)
!1418 = !DILocation(line: 387, column: 7, scope: !1405, inlinedAt: !1411)
!1419 = !DILocation(line: 389, column: 34, scope: !1420, inlinedAt: !1411)
!1420 = distinct !DILexicalBlock(scope: !1421, file: !1, line: 389, column: 9)
!1421 = distinct !DILexicalBlock(scope: !1416, file: !1, line: 387, column: 23)
!1422 = !DILocation(line: 389, column: 9, scope: !1420, inlinedAt: !1411)
!1423 = !DILocation(line: 389, column: 52, scope: !1420, inlinedAt: !1411)
!1424 = !DILocation(line: 389, column: 9, scope: !1421, inlinedAt: !1411)
!1425 = !DILocation(line: 386, column: 13, scope: !1405, inlinedAt: !1411)
!1426 = !DILocation(line: 394, column: 15, scope: !1427, inlinedAt: !1411)
!1427 = distinct !DILexicalBlock(scope: !1416, file: !1, line: 392, column: 8)
!1428 = !DILocation(line: 395, column: 10, scope: !1429, inlinedAt: !1411)
!1429 = distinct !DILexicalBlock(scope: !1427, file: !1, line: 395, column: 9)
!1430 = !DILocation(line: 395, column: 9, scope: !1427, inlinedAt: !1411)
!1431 = !DILocation(line: 399, column: 11, scope: !1432, inlinedAt: !1411)
!1432 = distinct !DILexicalBlock(scope: !1433, file: !1, line: 399, column: 11)
!1433 = distinct !DILexicalBlock(scope: !1429, file: !1, line: 395, column: 23)
!1434 = !DILocation(line: 399, column: 11, scope: !1433, inlinedAt: !1411)
!1435 = !DILocation(line: 400, column: 21, scope: !1432, inlinedAt: !1411)
!1436 = !DILocation(line: 400, column: 25, scope: !1432, inlinedAt: !1411)
!1437 = !DILocation(line: 400, column: 16, scope: !1432, inlinedAt: !1411)
!1438 = !DILocation(line: 400, column: 9, scope: !1432, inlinedAt: !1411)
!1439 = !DILocation(line: 403, column: 24, scope: !1429, inlinedAt: !1411)
!1440 = !DILocation(line: 403, column: 10, scope: !1429, inlinedAt: !1411)
!1441 = !DILocation(line: 403, column: 15, scope: !1429, inlinedAt: !1411)
!1442 = !DILocation(line: 405, column: 19, scope: !1405, inlinedAt: !1411)
!1443 = !DILocation(line: 405, column: 3, scope: !1405, inlinedAt: !1411)
!1444 = !DILocation(line: 406, column: 1, scope: !1405, inlinedAt: !1411)
!1445 = !DILocation(line: 116, column: 3, scope: !597, inlinedAt: !1394)
!1446 = !DILocation(line: 119, column: 20, scope: !570, inlinedAt: !1394)
!1447 = !DILocation(line: 119, column: 15, scope: !570, inlinedAt: !1394)
!1448 = !DILocation(line: 120, column: 13, scope: !570, inlinedAt: !1394)
!1449 = !DILocation(line: 121, column: 1, scope: !570, inlinedAt: !1394)
!1450 = !DILocation(line: 120, column: 3, scope: !570, inlinedAt: !1394)
!1451 = !DILocation(line: 419, column: 7, scope: !1312)
!1452 = !DILocation(line: 429, column: 14, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1312, file: !1, line: 429, column: 7)
!1454 = !DILocation(line: 429, column: 7, scope: !1312)
!1455 = !DILocation(line: 430, column: 17, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1453, file: !1, line: 429, column: 20)
!1457 = !DILocation(line: 430, column: 15, scope: !1456)
!1458 = !DILocation(line: 431, column: 36, scope: !1456)
!1459 = !DILocation(line: 51, column: 35, scope: !394, inlinedAt: !1460)
!1460 = distinct !DILocation(line: 431, column: 5, scope: !1456)
!1461 = !DILocation(line: 51, column: 42, scope: !394, inlinedAt: !1460)
!1462 = !DILocation(line: 51, column: 57, scope: !394, inlinedAt: !1460)
!1463 = !DILocation(line: 52, column: 3, scope: !394, inlinedAt: !1460)
!1464 = !DILocation(line: 54, column: 7, scope: !402, inlinedAt: !1460)
!1465 = !DILocation(line: 55, column: 7, scope: !403, inlinedAt: !1460)
!1466 = !DILocation(line: 58, column: 7, scope: !406, inlinedAt: !1460)
!1467 = !DILocation(line: 59, column: 7, scope: !407, inlinedAt: !1460)
!1468 = !DILocation(line: 63, column: 7, scope: !409, inlinedAt: !1460)
!1469 = !DILocation(line: 64, column: 7, scope: !410, inlinedAt: !1460)
!1470 = !DILocation(line: 0, scope: !1456)
!1471 = !DILocation(line: 67, column: 19, scope: !394, inlinedAt: !1460)
!1472 = !DILocation(line: 67, column: 10, scope: !394, inlinedAt: !1460)
!1473 = !DILocation(line: 68, column: 1, scope: !394, inlinedAt: !1460)
!1474 = !DILocation(line: 432, column: 21, scope: !1456)
!1475 = !DILocation(line: 432, column: 8, scope: !1456)
!1476 = !DILocation(line: 432, column: 12, scope: !1456)
!1477 = !DILocation(line: 432, column: 16, scope: !1456)
!1478 = !DILocation(line: 433, column: 3, scope: !1456)
!1479 = !DILocation(line: 436, column: 17, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1453, file: !1, line: 434, column: 8)
!1481 = !DILocation(line: 436, column: 14, scope: !1480)
!1482 = !DILocation(line: 0, scope: !1480)
!1483 = !DILocation(line: 438, column: 3, scope: !1312)
!1484 = !DILocation(line: 440, column: 3, scope: !1312)
!1485 = !DILocation(line: 0, scope: !1312)
!1486 = !DILocation(line: 441, column: 1, scope: !1312)
!1487 = distinct !DISubprogram(name: "lua_yield", scope: !1, file: !1, line: 444, type: !1313, isLocal: false, isDefinition: true, scopeLine: 444, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1488)
!1488 = !{!1489, !1490}
!1489 = !DILocalVariable(name: "L", arg: 1, scope: !1487, file: !1, line: 444, type: !148)
!1490 = !DILocalVariable(name: "nresults", arg: 2, scope: !1487, file: !1, line: 444, type: !104)
!1491 = !DILocation(line: 444, column: 35, scope: !1487)
!1492 = !DILocation(line: 444, column: 42, scope: !1487)
!1493 = !DILocation(line: 447, column: 10, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1487, file: !1, line: 447, column: 7)
!1495 = !DILocation(line: 447, column: 23, scope: !1494)
!1496 = !DILocation(line: 447, column: 18, scope: !1494)
!1497 = !DILocation(line: 447, column: 7, scope: !1487)
!1498 = !DILocation(line: 448, column: 5, scope: !1494)
!1499 = !DILocation(line: 449, column: 16, scope: !1487)
!1500 = !DILocation(line: 449, column: 20, scope: !1487)
!1501 = !DILocation(line: 449, column: 6, scope: !1487)
!1502 = !DILocation(line: 449, column: 11, scope: !1487)
!1503 = !DILocation(line: 450, column: 6, scope: !1487)
!1504 = !DILocation(line: 450, column: 13, scope: !1487)
!1505 = !DILocation(line: 452, column: 3, scope: !1487)
!1506 = distinct !DISubprogram(name: "luaD_pcall", scope: !1, file: !1, line: 456, type: !1507, isLocal: false, isDefinition: true, scopeLine: 457, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1509)
!1507 = !DISubroutineType(types: !1508)
!1508 = !{!104, !148, !573, !52, !309, !309}
!1509 = !{!1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520}
!1510 = !DILocalVariable(name: "L", arg: 1, scope: !1506, file: !1, line: 456, type: !148)
!1511 = !DILocalVariable(name: "func", arg: 2, scope: !1506, file: !1, line: 456, type: !573)
!1512 = !DILocalVariable(name: "u", arg: 3, scope: !1506, file: !1, line: 456, type: !52)
!1513 = !DILocalVariable(name: "old_top", arg: 4, scope: !1506, file: !1, line: 457, type: !309)
!1514 = !DILocalVariable(name: "ef", arg: 5, scope: !1506, file: !1, line: 457, type: !309)
!1515 = !DILocalVariable(name: "status", scope: !1506, file: !1, line: 458, type: !104)
!1516 = !DILocalVariable(name: "oldnCcalls", scope: !1506, file: !1, line: 459, type: !259)
!1517 = !DILocalVariable(name: "old_ci", scope: !1506, file: !1, line: 460, type: !309)
!1518 = !DILocalVariable(name: "old_allowhooks", scope: !1506, file: !1, line: 461, type: !38)
!1519 = !DILocalVariable(name: "old_errfunc", scope: !1506, file: !1, line: 462, type: !309)
!1520 = !DILocalVariable(name: "oldtop", scope: !1521, file: !1, line: 466, type: !157)
!1521 = distinct !DILexicalBlock(scope: !1522, file: !1, line: 465, column: 20)
!1522 = distinct !DILexicalBlock(scope: !1506, file: !1, line: 465, column: 7)
!1523 = !DILocation(line: 456, column: 28, scope: !1506)
!1524 = !DILocation(line: 456, column: 37, scope: !1506)
!1525 = !DILocation(line: 456, column: 49, scope: !1506)
!1526 = !DILocation(line: 457, column: 27, scope: !1506)
!1527 = !DILocation(line: 457, column: 46, scope: !1506)
!1528 = !DILocation(line: 459, column: 34, scope: !1506)
!1529 = !DILocation(line: 459, column: 18, scope: !1506)
!1530 = !DILocation(line: 460, column: 22, scope: !1506)
!1531 = !DILocation(line: 461, column: 31, scope: !1506)
!1532 = !DILocation(line: 461, column: 11, scope: !1506)
!1533 = !DILocation(line: 462, column: 30, scope: !1506)
!1534 = !DILocation(line: 462, column: 13, scope: !1506)
!1535 = !DILocation(line: 463, column: 14, scope: !1506)
!1536 = !DILocation(line: 111, column: 38, scope: !570, inlinedAt: !1537)
!1537 = distinct !DILocation(line: 464, column: 12, scope: !1506)
!1538 = !DILocation(line: 111, column: 47, scope: !570, inlinedAt: !1537)
!1539 = !DILocation(line: 111, column: 56, scope: !570, inlinedAt: !1537)
!1540 = !DILocation(line: 112, column: 3, scope: !570, inlinedAt: !1537)
!1541 = !DILocation(line: 113, column: 6, scope: !570, inlinedAt: !1537)
!1542 = !DILocation(line: 113, column: 13, scope: !570, inlinedAt: !1537)
!1543 = !DILocation(line: 114, column: 20, scope: !570, inlinedAt: !1537)
!1544 = !DILocation(line: 114, column: 15, scope: !570, inlinedAt: !1537)
!1545 = !DILocation(line: 115, column: 15, scope: !570, inlinedAt: !1537)
!1546 = !DILocation(line: 116, column: 3, scope: !594, inlinedAt: !1537)
!1547 = !DILocation(line: 116, column: 3, scope: !570, inlinedAt: !1537)
!1548 = !DILocation(line: 116, column: 3, scope: !597, inlinedAt: !1537)
!1549 = !DILocation(line: 119, column: 20, scope: !570, inlinedAt: !1537)
!1550 = !DILocation(line: 119, column: 15, scope: !570, inlinedAt: !1537)
!1551 = !DILocation(line: 120, column: 13, scope: !570, inlinedAt: !1537)
!1552 = !DILocation(line: 121, column: 1, scope: !570, inlinedAt: !1537)
!1553 = !DILocation(line: 120, column: 3, scope: !570, inlinedAt: !1537)
!1554 = !DILocation(line: 458, column: 7, scope: !1506)
!1555 = !DILocation(line: 465, column: 14, scope: !1522)
!1556 = !DILocation(line: 465, column: 7, scope: !1506)
!1557 = !DILocation(line: 460, column: 13, scope: !1506)
!1558 = !DILocation(line: 466, column: 20, scope: !1521)
!1559 = !DILocation(line: 466, column: 11, scope: !1521)
!1560 = !DILocation(line: 467, column: 5, scope: !1521)
!1561 = !DILocation(line: 51, column: 35, scope: !394, inlinedAt: !1562)
!1562 = distinct !DILocation(line: 468, column: 5, scope: !1521)
!1563 = !DILocation(line: 51, column: 42, scope: !394, inlinedAt: !1562)
!1564 = !DILocation(line: 51, column: 57, scope: !394, inlinedAt: !1562)
!1565 = !DILocation(line: 52, column: 3, scope: !394, inlinedAt: !1562)
!1566 = !DILocation(line: 54, column: 7, scope: !402, inlinedAt: !1562)
!1567 = !DILocation(line: 55, column: 7, scope: !403, inlinedAt: !1562)
!1568 = !DILocation(line: 58, column: 7, scope: !406, inlinedAt: !1562)
!1569 = !DILocation(line: 59, column: 7, scope: !407, inlinedAt: !1562)
!1570 = !DILocation(line: 63, column: 7, scope: !409, inlinedAt: !1562)
!1571 = !DILocation(line: 64, column: 7, scope: !410, inlinedAt: !1562)
!1572 = !DILocation(line: 0, scope: !1521)
!1573 = !DILocation(line: 67, column: 19, scope: !394, inlinedAt: !1562)
!1574 = !DILocation(line: 67, column: 6, scope: !394, inlinedAt: !1562)
!1575 = !DILocation(line: 67, column: 10, scope: !394, inlinedAt: !1562)
!1576 = !DILocation(line: 68, column: 1, scope: !394, inlinedAt: !1562)
!1577 = !DILocation(line: 469, column: 16, scope: !1521)
!1578 = !DILocation(line: 470, column: 13, scope: !1521)
!1579 = !DILocation(line: 470, column: 11, scope: !1521)
!1580 = !DILocation(line: 471, column: 22, scope: !1521)
!1581 = !DILocation(line: 471, column: 8, scope: !1521)
!1582 = !DILocation(line: 471, column: 13, scope: !1521)
!1583 = !DILocation(line: 472, column: 25, scope: !1521)
!1584 = !DILocation(line: 472, column: 8, scope: !1521)
!1585 = !DILocation(line: 472, column: 16, scope: !1521)
!1586 = !DILocation(line: 473, column: 18, scope: !1521)
!1587 = !DILocation(line: 71, column: 45, scope: !520, inlinedAt: !1588)
!1588 = distinct !DILocation(line: 474, column: 5, scope: !1521)
!1589 = !DILocation(line: 73, column: 10, scope: !526, inlinedAt: !1588)
!1590 = !DILocation(line: 73, column: 18, scope: !526, inlinedAt: !1588)
!1591 = !DILocation(line: 73, column: 7, scope: !520, inlinedAt: !1588)
!1592 = !DILocation(line: 74, column: 17, scope: !525, inlinedAt: !1588)
!1593 = !DILocation(line: 74, column: 9, scope: !525, inlinedAt: !1588)
!1594 = !DILocation(line: 75, column: 19, scope: !536, inlinedAt: !1588)
!1595 = !DILocation(line: 75, column: 9, scope: !525, inlinedAt: !1588)
!1596 = !DILocation(line: 152, column: 33, scope: !539, inlinedAt: !1597)
!1597 = distinct !DILocation(line: 76, column: 7, scope: !536, inlinedAt: !1588)
!1598 = !DILocation(line: 152, column: 40, scope: !539, inlinedAt: !1597)
!1599 = !DILocation(line: 153, column: 13, scope: !539, inlinedAt: !1597)
!1600 = !DILocation(line: 154, column: 3, scope: !539, inlinedAt: !1597)
!1601 = !DILocation(line: 155, column: 14, scope: !539, inlinedAt: !1597)
!1602 = !DILocation(line: 156, column: 15, scope: !539, inlinedAt: !1597)
!1603 = !DILocation(line: 156, column: 18, scope: !539, inlinedAt: !1597)
!1604 = !DILocation(line: 156, column: 32, scope: !539, inlinedAt: !1597)
!1605 = !DILocation(line: 156, column: 27, scope: !539, inlinedAt: !1597)
!1606 = !DILocation(line: 156, column: 9, scope: !539, inlinedAt: !1597)
!1607 = !DILocation(line: 157, column: 39, scope: !539, inlinedAt: !1597)
!1608 = !DILocation(line: 157, column: 6, scope: !539, inlinedAt: !1597)
!1609 = !DILocation(line: 157, column: 13, scope: !539, inlinedAt: !1597)
!1610 = !DILocation(line: 158, column: 1, scope: !539, inlinedAt: !1597)
!1611 = !DILocation(line: 76, column: 7, scope: !536, inlinedAt: !1588)
!1612 = !DILocation(line: 78, column: 1, scope: !520, inlinedAt: !1588)
!1613 = !DILocation(line: 475, column: 3, scope: !1521)
!1614 = !DILocation(line: 476, column: 14, scope: !1506)
!1615 = !DILocation(line: 477, column: 3, scope: !1506)
!1616 = distinct !DISubprogram(name: "luaD_protectedparser", scope: !1, file: !1, line: 509, type: !1617, isLocal: false, isDefinition: true, scopeLine: 509, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1619)
!1617 = !DISubroutineType(types: !1618)
!1618 = !{!104, !148, !374, !276}
!1619 = !{!1620, !1621, !1622, !1623, !1624}
!1620 = !DILocalVariable(name: "L", arg: 1, scope: !1616, file: !1, line: 509, type: !148)
!1621 = !DILocalVariable(name: "z", arg: 2, scope: !1616, file: !1, line: 509, type: !374)
!1622 = !DILocalVariable(name: "name", arg: 3, scope: !1616, file: !1, line: 509, type: !276)
!1623 = !DILocalVariable(name: "p", scope: !1616, file: !1, line: 510, type: !371)
!1624 = !DILocalVariable(name: "status", scope: !1616, file: !1, line: 511, type: !104)
!1625 = !DILocation(line: 509, column: 38, scope: !1616)
!1626 = !DILocation(line: 509, column: 46, scope: !1616)
!1627 = !DILocation(line: 509, column: 61, scope: !1616)
!1628 = !DILocation(line: 510, column: 3, scope: !1616)
!1629 = !DILocation(line: 512, column: 5, scope: !1616)
!1630 = !DILocation(line: 512, column: 7, scope: !1616)
!1631 = !{!1632, !428, i64 0}
!1632 = !{!"SParser", !428, i64 0, !471, i64 8, !428, i64 32}
!1633 = !DILocation(line: 512, column: 14, scope: !1616)
!1634 = !DILocation(line: 512, column: 19, scope: !1616)
!1635 = !{!1632, !428, i64 32}
!1636 = !DILocation(line: 513, column: 3, scope: !1616)
!1637 = !{!1632, !428, i64 8}
!1638 = !{!1632, !432, i64 24}
!1639 = !DILocation(line: 514, column: 40, scope: !1616)
!1640 = !DILocation(line: 514, column: 65, scope: !1616)
!1641 = !DILocation(line: 514, column: 12, scope: !1616)
!1642 = !DILocation(line: 511, column: 7, scope: !1616)
!1643 = !DILocation(line: 515, column: 3, scope: !1616)
!1644 = !DILocation(line: 517, column: 1, scope: !1616)
!1645 = !DILocation(line: 516, column: 3, scope: !1616)
!1646 = distinct !DISubprogram(name: "f_parser", scope: !1, file: !1, line: 491, type: !576, isLocal: true, isDefinition: true, scopeLine: 491, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1647)
!1647 = !{!1648, !1649, !1650, !1651, !1652, !1655, !1656, !1657}
!1648 = !DILocalVariable(name: "L", arg: 1, scope: !1646, file: !1, line: 491, type: !148)
!1649 = !DILocalVariable(name: "ud", arg: 2, scope: !1646, file: !1, line: 491, type: !52)
!1650 = !DILocalVariable(name: "i", scope: !1646, file: !1, line: 492, type: !104)
!1651 = !DILocalVariable(name: "tf", scope: !1646, file: !1, line: 493, type: !810)
!1652 = !DILocalVariable(name: "cl", scope: !1646, file: !1, line: 494, type: !1653)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_typedef, name: "Closure", file: !28, line: 312, baseType: !130)
!1655 = !DILocalVariable(name: "p", scope: !1646, file: !1, line: 495, type: !370)
!1656 = !DILocalVariable(name: "c", scope: !1646, file: !1, line: 496, type: !104)
!1657 = !DILocalVariable(name: "i_o", scope: !1658, file: !1, line: 504, type: !90)
!1658 = distinct !DILexicalBlock(scope: !1646, file: !1, line: 504, column: 3)
!1659 = !DILocation(line: 491, column: 34, scope: !1646)
!1660 = !DILocation(line: 491, column: 43, scope: !1646)
!1661 = !DILocation(line: 495, column: 19, scope: !1646)
!1662 = !DILocation(line: 496, column: 29, scope: !1646)
!1663 = !DILocation(line: 496, column: 11, scope: !1646)
!1664 = !DILocation(line: 496, column: 7, scope: !1646)
!1665 = !DILocation(line: 497, column: 3, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1667, file: !1, line: 497, column: 3)
!1667 = distinct !DILexicalBlock(scope: !1646, file: !1, line: 497, column: 3)
!1668 = !DILocation(line: 497, column: 3, scope: !1667)
!1669 = !DILocation(line: 498, column: 28, scope: !1646)
!1670 = !DILocation(line: 499, column: 66, scope: !1646)
!1671 = !DILocation(line: 499, column: 75, scope: !1646)
!1672 = !DILocation(line: 498, column: 8, scope: !1646)
!1673 = !DILocation(line: 493, column: 10, scope: !1646)
!1674 = !DILocation(line: 500, column: 32, scope: !1646)
!1675 = !{!900, !420, i64 112}
!1676 = !DILocation(line: 500, column: 28, scope: !1646)
!1677 = !DILocation(line: 500, column: 38, scope: !1646)
!1678 = !DILocation(line: 500, column: 8, scope: !1646)
!1679 = !DILocation(line: 494, column: 12, scope: !1646)
!1680 = !DILocation(line: 501, column: 9, scope: !1646)
!1681 = !DILocation(line: 501, column: 11, scope: !1646)
!1682 = !DILocation(line: 492, column: 7, scope: !1646)
!1683 = !DILocation(line: 502, column: 23, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1685, file: !1, line: 502, column: 3)
!1685 = distinct !DILexicalBlock(scope: !1646, file: !1, line: 502, column: 3)
!1686 = !DILocation(line: 502, column: 17, scope: !1684)
!1687 = !DILocation(line: 502, column: 3, scope: !1685)
!1688 = !DILocation(line: 503, column: 23, scope: !1684)
!1689 = !DILocation(line: 503, column: 5, scope: !1684)
!1690 = !DILocation(line: 503, column: 21, scope: !1684)
!1691 = !DILocation(line: 502, column: 30, scope: !1684)
!1692 = distinct !{!1692, !1687, !1693}
!1693 = !DILocation(line: 503, column: 38, scope: !1685)
!1694 = !DILocation(line: 504, column: 3, scope: !1658)
!1695 = !DILocation(line: 505, column: 3, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1697, file: !1, line: 505, column: 3)
!1697 = distinct !DILexicalBlock(scope: !1646, file: !1, line: 505, column: 3)
!1698 = !DILocation(line: 505, column: 3, scope: !1697)
!1699 = !DILocation(line: 161, column: 33, scope: !705, inlinedAt: !1700)
!1700 = distinct !DILocation(line: 505, column: 3, scope: !1696)
!1701 = !DILocation(line: 161, column: 40, scope: !705, inlinedAt: !1700)
!1702 = !DILocation(line: 162, column: 15, scope: !712, inlinedAt: !1700)
!1703 = !DILocation(line: 162, column: 9, scope: !712, inlinedAt: !1700)
!1704 = !DILocation(line: 162, column: 7, scope: !705, inlinedAt: !1700)
!1705 = !DILocation(line: 163, column: 27, scope: !712, inlinedAt: !1700)
!1706 = !DILocation(line: 163, column: 5, scope: !712, inlinedAt: !1700)
!1707 = !DILocation(line: 165, column: 39, scope: !712, inlinedAt: !1700)
!1708 = !DILocation(line: 165, column: 5, scope: !712, inlinedAt: !1700)
!1709 = !DILocation(line: 166, column: 1, scope: !705, inlinedAt: !1700)
!1710 = !DILocation(line: 506, column: 1, scope: !1646)
