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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !417
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !436
  br label %22, !dbg !437

; <label>:22:                                     ; preds = %19, %3
  %23 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i64 1, !dbg !437
  %24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !438
  store %struct.lua_TValue* %23, %struct.lua_TValue** %24, align 8, !dbg !439, !tbaa !426
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !440
  ret void, !dbg !440
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare hidden %union.TString* @luaS_newlstr(%struct.lua_State*, i8*, i64) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone noreturn nounwind
define hidden void @luaD_throw(%struct.lua_State*, i32) local_unnamed_addr #3 !dbg !441 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 26, !dbg !449
  %4 = load %struct.lua_longjmp*, %struct.lua_longjmp** %3, align 8, !dbg !449, !tbaa !451
  %5 = icmp eq %struct.lua_longjmp* %4, null, !dbg !452
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !453
  br i1 %5, label %9, label %6, !dbg !453

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.lua_longjmp, %struct.lua_longjmp* %4, i64 0, i32 2, !dbg !454
  store volatile i32 %1, i32* %7, align 8, !dbg !456, !tbaa !457
  %8 = getelementptr inbounds %struct.lua_longjmp, %struct.lua_longjmp* %4, i64 0, i32 1, i64 0, !dbg !459
  tail call void @longjmp(i64* nonnull %8, i32 1) #7, !dbg !459
  unreachable

; <label>:9:                                      ; preds = %2
  %10 = trunc i32 %1 to i8, !dbg !460
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 3, !dbg !462
  store i8 %10, i8* %11, align 2, !dbg !463, !tbaa !464
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !465
  %13 = load %struct.global_State*, %struct.global_State** %12, align 8, !dbg !465, !tbaa !467
  %14 = getelementptr inbounds %struct.global_State, %struct.global_State* %13, i64 0, i32 19, !dbg !468
  %15 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %14, align 8, !dbg !468, !tbaa !469
  %16 = icmp eq i32 (%struct.lua_State*)* %15, null, !dbg !465
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !474
  br i1 %16, label %83, label %17, !dbg !474

; <label>:17:                                     ; preds = %9
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 12, !dbg !483
  %19 = load %struct.CallInfo*, %struct.CallInfo** %18, align 8, !dbg !483, !tbaa !484
  %20 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !485
  store %struct.CallInfo* %19, %struct.CallInfo** %20, align 8, !dbg !486, !tbaa !487
  %21 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %19, i64 0, i32 0, !dbg !488
  %22 = load %struct.lua_TValue*, %struct.lua_TValue** %21, align 8, !dbg !488, !tbaa !489
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !491
  store %struct.lua_TValue* %22, %struct.lua_TValue** %23, align 8, !dbg !492, !tbaa !493
  tail call void @luaF_close(%struct.lua_State* nonnull %0, %struct.lua_TValue* %22) #6, !dbg !494
  %24 = load %struct.lua_TValue*, %struct.lua_TValue** %23, align 8, !dbg !495, !tbaa !493
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !500
  switch i32 %1, label %43 [
    i32 4, label %25
    i32 5, label %28
    i32 3, label %31
    i32 2, label %31
  ], !dbg !500

; <label>:25:                                     ; preds = %17
  %26 = tail call %union.TString* @luaS_newlstr(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 17) #6, !dbg !501
  %27 = bitcast %struct.lua_TValue* %24 to %union.TString**, !dbg !501
  store %union.TString* %26, %union.TString** %27, align 8, !dbg !501, !tbaa !419
  br label %40, !dbg !502

; <label>:28:                                     ; preds = %17
  %29 = tail call %union.TString* @luaS_newlstr(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 23) #6, !dbg !503
  %30 = bitcast %struct.lua_TValue* %24 to %union.TString**, !dbg !503
  store %union.TString* %29, %union.TString** %30, align 8, !dbg !503, !tbaa !419
  br label %40, !dbg !504

; <label>:31:                                     ; preds = %17, %17
  %32 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !505
  %33 = load %struct.lua_TValue*, %struct.lua_TValue** %32, align 8, !dbg !505, !tbaa !426
  %34 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %33, i64 -1, !dbg !505
  %35 = bitcast %struct.lua_TValue* %34 to i64*, !dbg !505
  %36 = bitcast %struct.lua_TValue* %24 to i64*, !dbg !505
  %37 = load i64, i64* %35, align 8, !dbg !505
  store i64 %37, i64* %36, align 8, !dbg !505
  %38 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %33, i64 -1, i32 1, !dbg !505
  %39 = load i32, i32* %38, align 8, !dbg !505, !tbaa !433
  br label %40, !dbg !506

; <label>:40:                                     ; preds = %25, %28, %31
  %41 = phi i32 [ %39, %31 ], [ 4, %28 ], [ 4, %25 ]
  %42 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %24, i64 0, i32 1, !dbg !507
  store i32 %41, i32* %42, align 8, !dbg !507, !tbaa !433
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !507
  br label %43, !dbg !508

; <label>:43:                                     ; preds = %40, %17
  %44 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %24, i64 1, !dbg !508
  %45 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !509
  store %struct.lua_TValue* %44, %struct.lua_TValue** %45, align 8, !dbg !510, !tbaa !426
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !511
  %46 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 16, !dbg !512
  %47 = load i16, i16* %46, align 2, !dbg !512, !tbaa !513
  %48 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 15, !dbg !514
  store i16 %47, i16* %48, align 8, !dbg !515, !tbaa !516
  %49 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 18, !dbg !517
  store i8 1, i8* %49, align 1, !dbg !518, !tbaa !519
  %50 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 14, !dbg !530
  %51 = load i32, i32* %50, align 4, !dbg !530, !tbaa !531
  %52 = icmp sgt i32 %51, 20000, !dbg !532
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !533
  br i1 %52, label %53, label %77, !dbg !533

; <label>:53:                                     ; preds = %43
  %54 = bitcast %struct.CallInfo** %20 to i64*, !dbg !534
  %55 = load i64, i64* %54, align 8, !dbg !534, !tbaa !487
  %56 = bitcast %struct.CallInfo** %18 to i64*, !dbg !534
  %57 = load i64, i64* %56, align 8, !dbg !534, !tbaa !484
  %58 = sub i64 %55, %57, !dbg !534
  %59 = sdiv exact i64 %58, 40, !dbg !534
  %60 = trunc i64 %59 to i32, !dbg !534
  %61 = icmp slt i32 %60, 19999, !dbg !536
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !538
  br i1 %61, label %62, label %76, !dbg !538

; <label>:62:                                     ; preds = %53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !548
  %63 = inttoptr i64 %57 to i8*, !dbg !548
  %64 = sext i32 %51 to i64, !dbg !548
  %65 = mul nsw i64 %64, 40, !dbg !548
  %66 = tail call i8* @luaM_realloc_(%struct.lua_State* nonnull %0, i8* %63, i64 %65, i64 800000) #6, !dbg !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !548
  %67 = bitcast %struct.CallInfo** %18 to i8**, !dbg !548
  store i8* %66, i8** %67, align 8, !dbg !548, !tbaa !484
  store i32 20000, i32* %50, align 4, !dbg !549, !tbaa !531
  %68 = load i64, i64* %54, align 8, !dbg !550, !tbaa !487
  %69 = sub i64 %68, %57, !dbg !551
  %70 = sdiv exact i64 %69, 40, !dbg !551
  %71 = bitcast i8* %66 to %struct.CallInfo*, !dbg !552
  %72 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %71, i64 %70, !dbg !553
  store %struct.CallInfo* %72, %struct.CallInfo** %20, align 8, !dbg !554, !tbaa !487
  %73 = getelementptr inbounds i8, i8* %66, i64 799960, !dbg !555
  %74 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 11, !dbg !556
  %75 = bitcast %struct.CallInfo** %74 to i8**, !dbg !557
  store i8* %73, i8** %75, align 8, !dbg !557, !tbaa !558
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !559
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !560
  br label %76, !dbg !560

; <label>:76:                                     ; preds = %62, %53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !561
  br label %77, !dbg !561

; <label>:77:                                     ; preds = %43, %76
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !562
  %78 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 27, !dbg !563
  store i64 0, i64* %78, align 8, !dbg !564, !tbaa !565
  store %struct.lua_longjmp* null, %struct.lua_longjmp** %3, align 8, !dbg !566, !tbaa !451
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !567
  %79 = load %struct.global_State*, %struct.global_State** %12, align 8, !dbg !568, !tbaa !467
  %80 = getelementptr inbounds %struct.global_State, %struct.global_State* %79, i64 0, i32 19, !dbg !569
  %81 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %80, align 8, !dbg !569, !tbaa !469
  %82 = tail call i32 %81(%struct.lua_State* nonnull %0) #6, !dbg !568
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !570
  br label %83, !dbg !570

; <label>:83:                                     ; preds = %9, %77
  tail call void @exit(i32 1) #7, !dbg !571
  unreachable
}

; Function Attrs: noredzone noreturn
declare dso_local void @longjmp(i64*, i32) local_unnamed_addr #4

; Function Attrs: noredzone noreturn
declare dso_local void @exit(i32) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define hidden i32 @luaD_rawrunprotected(%struct.lua_State*, void (%struct.lua_State*, i8*)* nocapture, i8*) local_unnamed_addr #0 !dbg !572 {
  %4 = alloca %struct.lua_longjmp, align 8
  %5 = bitcast %struct.lua_longjmp* %4 to i8*, !dbg !588
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %5) #8, !dbg !588
  %6 = getelementptr inbounds %struct.lua_longjmp, %struct.lua_longjmp* %4, i64 0, i32 2, !dbg !589
  store volatile i32 0, i32* %6, align 8, !dbg !590, !tbaa !457
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 26, !dbg !591
  %8 = bitcast %struct.lua_longjmp** %7 to i64*, !dbg !591
  %9 = load i64, i64* %8, align 8, !dbg !591, !tbaa !451
  %10 = bitcast %struct.lua_longjmp* %4 to i64*, !dbg !592
  store i64 %9, i64* %10, align 8, !dbg !592, !tbaa !593
  store %struct.lua_longjmp* %4, %struct.lua_longjmp** %7, align 8, !dbg !594, !tbaa !451
  %11 = getelementptr inbounds %struct.lua_longjmp, %struct.lua_longjmp* %4, i64 0, i32 1, i64 0, !dbg !595
  %12 = call i32 @setjmp(i64* nonnull %11) #6, !dbg !595
  %13 = icmp eq i32 %12, 0, !dbg !595
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !597
  br i1 %13, label %14, label %15, !dbg !597

; <label>:14:                                     ; preds = %3
  call void %1(%struct.lua_State* nonnull %0, i8* %2) #6, !dbg !598
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !598
  br label %15, !dbg !598

; <label>:15:                                     ; preds = %14, %3
  %16 = load i64, i64* %10, align 8, !dbg !600, !tbaa !593
  store i64 %16, i64* %8, align 8, !dbg !601, !tbaa !451
  %17 = load volatile i32, i32* %6, align 8, !dbg !602, !tbaa !457
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %5) #8, !dbg !603
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !604
  ret i32 %17, !dbg !604
}

; Function Attrs: noredzone
declare dso_local i32 @setjmp(i64*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define hidden void @luaD_reallocstack(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !605 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 10, !dbg !613
  %4 = load %struct.lua_TValue*, %struct.lua_TValue** %3, align 8, !dbg !613, !tbaa !614
  %5 = add nsw i32 %1, 6, !dbg !616
  %6 = icmp sgt i32 %1, -8, !dbg !618
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !618
  br i1 %6, label %7, label %16, !dbg !618

; <label>:7:                                      ; preds = %2
  %8 = bitcast %struct.lua_TValue* %4 to i8*, !dbg !618
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 13, !dbg !618
  %10 = load i32, i32* %9, align 8, !dbg !618, !tbaa !619
  %11 = sext i32 %10 to i64, !dbg !618
  %12 = shl nsw i64 %11, 4, !dbg !618
  %13 = sext i32 %5 to i64, !dbg !618
  %14 = shl nsw i64 %13, 4, !dbg !618
  %15 = tail call i8* @luaM_realloc_(%struct.lua_State* nonnull %0, i8* %8, i64 %12, i64 %14) #6, !dbg !618
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !618
  br label %19, !dbg !618

; <label>:16:                                     ; preds = %2
  %17 = tail call i8* @luaM_toobig(%struct.lua_State* nonnull %0) #6, !dbg !618
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !618
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 13, !dbg !620
  br label %19, !dbg !618

; <label>:19:                                     ; preds = %16, %7
  %20 = phi i32* [ %18, %16 ], [ %9, %7 ], !dbg !620
  %21 = phi i8* [ %17, %16 ], [ %15, %7 ], !dbg !618
  %22 = bitcast %struct.lua_TValue** %3 to i8**, !dbg !618
  store i8* %21, i8** %22, align 8, !dbg !618, !tbaa !614
  store i32 %5, i32* %20, align 8, !dbg !621, !tbaa !619
  %23 = bitcast i8* %21 to %struct.lua_TValue*, !dbg !622
  %24 = sext i32 %1 to i64, !dbg !623
  %25 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %23, i64 %24, !dbg !623
  %26 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 9, !dbg !624
  store %struct.lua_TValue* %25, %struct.lua_TValue** %26, align 8, !dbg !625, !tbaa !626
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !638
  %28 = bitcast %struct.lua_TValue** %27 to i64*, !dbg !638
  %29 = load i64, i64* %28, align 8, !dbg !638, !tbaa !426
  %30 = ptrtoint %struct.lua_TValue* %4 to i64, !dbg !639
  %31 = sub i64 %29, %30, !dbg !639
  %32 = ashr exact i64 %31, 4, !dbg !639
  %33 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %23, i64 %32, !dbg !640
  store %struct.lua_TValue* %33, %struct.lua_TValue** %27, align 8, !dbg !641, !tbaa !426
  %34 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 24, !dbg !642
  %35 = load %union.GCObject*, %union.GCObject** %34, align 8, !dbg !642, !tbaa !644
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !646
  %36 = icmp eq %union.GCObject* %35, null, !dbg !647
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !649
  br i1 %36, label %59, label %37, !dbg !649

; <label>:37:                                     ; preds = %19
  %38 = getelementptr inbounds %union.GCObject, %union.GCObject* %35, i64 0, i32 0, i32 4, !dbg !650
  %39 = bitcast %struct.lua_TValue** %38 to i64*, !dbg !650
  %40 = load i64, i64* %39, align 8, !dbg !650, !tbaa !419
  %41 = sub i64 %40, %30, !dbg !651
  %42 = ashr exact i64 %41, 4, !dbg !651
  %43 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %23, i64 %42, !dbg !652
  store %struct.lua_TValue* %43, %struct.lua_TValue** %38, align 8, !dbg !653, !tbaa !419
  %44 = getelementptr inbounds %union.GCObject, %union.GCObject* %35, i64 0, i32 0, i32 0, !dbg !654
  %45 = load %union.GCObject*, %union.GCObject** %44, align 8, !dbg !654, !tbaa !419
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !655
  %46 = icmp eq %union.GCObject* %45, null, !dbg !647
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !649
  br i1 %46, label %59, label %47, !dbg !649, !llvm.loop !656

; <label>:47:                                     ; preds = %37, %47
  %48 = phi %union.GCObject* [ %57, %47 ], [ %45, %37 ]
  %49 = load %struct.lua_TValue*, %struct.lua_TValue** %3, align 8, !dbg !659, !tbaa !614
  %50 = getelementptr inbounds %union.GCObject, %union.GCObject* %48, i64 0, i32 0, i32 4, !dbg !650
  %51 = bitcast %struct.lua_TValue** %50 to i64*, !dbg !650
  %52 = load i64, i64* %51, align 8, !dbg !650, !tbaa !419
  %53 = sub i64 %52, %30, !dbg !651
  %54 = ashr exact i64 %53, 4, !dbg !651
  %55 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %49, i64 %54, !dbg !652
  store %struct.lua_TValue* %55, %struct.lua_TValue** %50, align 8, !dbg !653, !tbaa !419
  %56 = getelementptr inbounds %union.GCObject, %union.GCObject* %48, i64 0, i32 0, i32 0, !dbg !654
  %57 = load %union.GCObject*, %union.GCObject** %56, align 8, !dbg !654, !tbaa !419
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !655
  %58 = icmp eq %union.GCObject* %57, null, !dbg !647
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !649
  br i1 %58, label %59, label %47, !dbg !649, !llvm.loop !656

; <label>:59:                                     ; preds = %47, %37, %19
  %60 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 12, !dbg !660
  %61 = load %struct.CallInfo*, %struct.CallInfo** %60, align 8, !dbg !660, !tbaa !484
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !663
  %62 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !664
  %63 = load %struct.CallInfo*, %struct.CallInfo** %62, align 8, !dbg !664, !tbaa !487
  %64 = icmp ugt %struct.CallInfo* %61, %63, !dbg !666
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !667
  br i1 %64, label %89, label %65, !dbg !667

; <label>:65:                                     ; preds = %59
  %66 = load %struct.lua_TValue*, %struct.lua_TValue** %3, align 8
  br label %67, !dbg !667

; <label>:67:                                     ; preds = %67, %65
  %68 = phi %struct.CallInfo* [ %61, %65 ], [ %87, %67 ]
  %69 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %68, i64 0, i32 2, !dbg !668
  %70 = bitcast %struct.lua_TValue** %69 to i64*, !dbg !668
  %71 = load i64, i64* %70, align 8, !dbg !668, !tbaa !670
  %72 = sub i64 %71, %30, !dbg !671
  %73 = ashr exact i64 %72, 4, !dbg !671
  %74 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %66, i64 %73, !dbg !672
  store %struct.lua_TValue* %74, %struct.lua_TValue** %69, align 8, !dbg !673, !tbaa !670
  %75 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %68, i64 0, i32 0, !dbg !674
  %76 = bitcast %struct.CallInfo* %68 to i64*, !dbg !674
  %77 = load i64, i64* %76, align 8, !dbg !674, !tbaa !489
  %78 = sub i64 %77, %30, !dbg !675
  %79 = ashr exact i64 %78, 4, !dbg !675
  %80 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %66, i64 %79, !dbg !676
  store %struct.lua_TValue* %80, %struct.lua_TValue** %75, align 8, !dbg !677, !tbaa !489
  %81 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %68, i64 0, i32 1, !dbg !678
  %82 = bitcast %struct.lua_TValue** %81 to i64*, !dbg !678
  %83 = load i64, i64* %82, align 8, !dbg !678, !tbaa !679
  %84 = sub i64 %83, %30, !dbg !680
  %85 = ashr exact i64 %84, 4, !dbg !680
  %86 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %66, i64 %85, !dbg !681
  store %struct.lua_TValue* %86, %struct.lua_TValue** %81, align 8, !dbg !682, !tbaa !679
  %87 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %68, i64 1, !dbg !683
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !684
  %88 = icmp ugt %struct.CallInfo* %87, %63, !dbg !666
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !667
  br i1 %88, label %89, label %67, !dbg !667, !llvm.loop !685

; <label>:89:                                     ; preds = %67, %59
  %90 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !688
  %91 = bitcast %struct.lua_TValue** %90 to i64*, !dbg !688
  %92 = load i64, i64* %91, align 8, !dbg !688, !tbaa !493
  %93 = sub i64 %92, %30, !dbg !689
  %94 = ashr exact i64 %93, 4, !dbg !689
  %95 = load %struct.lua_TValue*, %struct.lua_TValue** %3, align 8, !dbg !690, !tbaa !614
  %96 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %95, i64 %94, !dbg !691
  store %struct.lua_TValue* %96, %struct.lua_TValue** %90, align 8, !dbg !692, !tbaa !493
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !693
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !694
  ret void, !dbg !694
}

; Function Attrs: noredzone
declare hidden i8* @luaM_realloc_(%struct.lua_State*, i8*, i64, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden i8* @luaM_toobig(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define hidden void @luaD_reallocCI(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !540 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 12, !dbg !697
  %4 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8, !dbg !697, !tbaa !484
  %5 = icmp sgt i32 %1, -2, !dbg !699
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !699
  br i1 %5, label %6, label %15, !dbg !699

; <label>:6:                                      ; preds = %2
  %7 = bitcast %struct.CallInfo* %4 to i8*, !dbg !699
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 14, !dbg !699
  %9 = load i32, i32* %8, align 4, !dbg !699, !tbaa !531
  %10 = sext i32 %9 to i64, !dbg !699
  %11 = mul nsw i64 %10, 40, !dbg !699
  %12 = sext i32 %1 to i64, !dbg !699
  %13 = mul nsw i64 %12, 40, !dbg !699
  %14 = tail call i8* @luaM_realloc_(%struct.lua_State* nonnull %0, i8* %7, i64 %11, i64 %13) #6, !dbg !699
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !699
  br label %19, !dbg !699

; <label>:15:                                     ; preds = %2
  %16 = tail call i8* @luaM_toobig(%struct.lua_State* nonnull %0) #6, !dbg !699
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !699
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 14, !dbg !700
  %18 = sext i32 %1 to i64, !dbg !701
  br label %19, !dbg !699

; <label>:19:                                     ; preds = %15, %6
  %20 = phi i64 [ %18, %15 ], [ %12, %6 ], !dbg !701
  %21 = phi i32* [ %17, %15 ], [ %8, %6 ], !dbg !700
  %22 = phi i8* [ %16, %15 ], [ %14, %6 ], !dbg !699
  %23 = bitcast %struct.CallInfo** %3 to i8**, !dbg !699
  store i8* %22, i8** %23, align 8, !dbg !699, !tbaa !484
  store i32 %1, i32* %21, align 4, !dbg !702, !tbaa !531
  %24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !703
  %25 = bitcast %struct.CallInfo** %24 to i64*, !dbg !703
  %26 = load i64, i64* %25, align 8, !dbg !703, !tbaa !487
  %27 = ptrtoint %struct.CallInfo* %4 to i64, !dbg !704
  %28 = sub i64 %26, %27, !dbg !704
  %29 = sdiv exact i64 %28, 40, !dbg !704
  %30 = bitcast i8* %22 to %struct.CallInfo*, !dbg !705
  %31 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %30, i64 %29, !dbg !706
  store %struct.CallInfo* %31, %struct.CallInfo** %24, align 8, !dbg !707, !tbaa !487
  %32 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %30, i64 %20, !dbg !701
  %33 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %32, i64 -1, !dbg !708
  %34 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 11, !dbg !709
  store %struct.CallInfo* %33, %struct.CallInfo** %34, align 8, !dbg !710, !tbaa !558
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !711
  ret void, !dbg !711
}

; Function Attrs: noredzone nounwind
define hidden void @luaD_growstack(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !712 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 13, !dbg !718
  %4 = load i32, i32* %3, align 8, !dbg !718, !tbaa !619
  %5 = icmp slt i32 %4, %1, !dbg !720
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !721
  br i1 %5, label %8, label %6, !dbg !721

; <label>:6:                                      ; preds = %2
  %7 = shl nsw i32 %4, 1, !dbg !722
  tail call void @luaD_reallocstack(%struct.lua_State* nonnull %0, i32 %7) #9, !dbg !723
  br label %10, !dbg !723

; <label>:8:                                      ; preds = %2
  %9 = add nsw i32 %4, %1, !dbg !724
  tail call void @luaD_reallocstack(%struct.lua_State* nonnull %0, i32 %9) #9, !dbg !725
  br label %10

; <label>:10:                                     ; preds = %8, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !726
  ret void, !dbg !726
}

; Function Attrs: noredzone nounwind
define hidden void @luaD_callhook(%struct.lua_State*, i32, i32) local_unnamed_addr #0 !dbg !727 {
  %4 = alloca %struct.lua_Debug, align 8
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 21, !dbg !743
  %6 = load void (%struct.lua_State*, %struct.lua_Debug*)*, void (%struct.lua_State*, %struct.lua_Debug*)** %5, align 8, !dbg !743, !tbaa !744
  %7 = icmp eq void (%struct.lua_State*, %struct.lua_Debug*)* %6, null, !dbg !746
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !747
  br i1 %7, label %71, label %8, !dbg !747

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 18, !dbg !748
  %10 = load i8, i8* %9, align 1, !dbg !748, !tbaa !519
  %11 = icmp eq i8 %10, 0, !dbg !749
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !750
  br i1 %11, label %71, label %12, !dbg !750

; <label>:12:                                     ; preds = %8
  %13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !751
  %14 = bitcast %struct.lua_TValue** %13 to i64*, !dbg !751
  %15 = load i64, i64* %14, align 8, !dbg !751, !tbaa !426
  %16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 10, !dbg !751
  %17 = bitcast %struct.lua_TValue** %16 to i64*, !dbg !751
  %18 = load i64, i64* %17, align 8, !dbg !751, !tbaa !614
  %19 = sub i64 %15, %18, !dbg !751
  %20 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !753
  %21 = load %struct.CallInfo*, %struct.CallInfo** %20, align 8, !dbg !753, !tbaa !487
  %22 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %21, i64 0, i32 2, !dbg !753
  %23 = bitcast %struct.lua_TValue** %22 to i64*, !dbg !753
  %24 = load i64, i64* %23, align 8, !dbg !753, !tbaa !670
  %25 = sub i64 %24, %18, !dbg !753
  %26 = bitcast %struct.lua_Debug* %4 to i8*, !dbg !755
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %26) #8, !dbg !755
  %27 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %4, i64 0, i32 0, !dbg !756
  store i32 %1, i32* %27, align 8, !dbg !757, !tbaa !758
  %28 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %4, i64 0, i32 5, !dbg !760
  store i32 %2, i32* %28, align 8, !dbg !761, !tbaa !762
  %29 = icmp eq i32 %1, 4, !dbg !763
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !765
  %30 = inttoptr i64 %15 to %struct.lua_TValue*, !dbg !765
  br i1 %29, label %39, label %31, !dbg !765

; <label>:31:                                     ; preds = %12
  %32 = ptrtoint %struct.CallInfo* %21 to i64, !dbg !765
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 12, !dbg !766
  %34 = bitcast %struct.CallInfo** %33 to i64*, !dbg !766
  %35 = load i64, i64* %34, align 8, !dbg !766, !tbaa !484
  %36 = sub i64 %32, %35, !dbg !766
  %37 = sdiv exact i64 %36, 40, !dbg !766
  %38 = trunc i64 %37 to i32, !dbg !766
  br label %39

; <label>:39:                                     ; preds = %12, %31
  %40 = phi i32 [ %38, %31 ], [ 0, %12 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %41 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %4, i64 0, i32 10, !dbg !767
  store i32 %40, i32* %41, align 4, !dbg !768
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 9, !dbg !769
  %43 = bitcast %struct.lua_TValue** %42 to i64*, !dbg !769
  %44 = load i64, i64* %43, align 8, !dbg !769, !tbaa !626
  %45 = sub i64 %44, %15, !dbg !769
  %46 = icmp slt i64 %45, 321, !dbg !769
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !771
  br i1 %46, label %47, label %59, !dbg !771

; <label>:47:                                     ; preds = %39
  %48 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 13, !dbg !775
  %49 = load i32, i32* %48, align 8, !dbg !775, !tbaa !619
  %50 = icmp slt i32 %49, 20, !dbg !776
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !777
  br i1 %50, label %53, label %51, !dbg !777

; <label>:51:                                     ; preds = %47
  %52 = shl nsw i32 %49, 1, !dbg !778
  tail call void @luaD_reallocstack(%struct.lua_State* nonnull %0, i32 %52) #6, !dbg !779
  br label %55, !dbg !779

; <label>:53:                                     ; preds = %47
  %54 = add nsw i32 %49, 20, !dbg !780
  tail call void @luaD_reallocstack(%struct.lua_State* nonnull %0, i32 %54) #6, !dbg !781
  br label %55

; <label>:55:                                     ; preds = %51, %53
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !782
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !769
  %56 = load %struct.lua_TValue*, %struct.lua_TValue** %13, align 8, !dbg !783, !tbaa !426
  %57 = load %struct.CallInfo*, %struct.CallInfo** %20, align 8, !dbg !784, !tbaa !487
  %58 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %57, i64 0, i32 2, !dbg !785
  br label %59, !dbg !769

; <label>:59:                                     ; preds = %39, %55
  %60 = phi %struct.lua_TValue** [ %22, %39 ], [ %58, %55 ], !dbg !785
  %61 = phi %struct.lua_TValue* [ %30, %39 ], [ %56, %55 ], !dbg !783
  %62 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %61, i64 20, !dbg !786
  store %struct.lua_TValue* %62, %struct.lua_TValue** %60, align 8, !dbg !787, !tbaa !670
  store i8 0, i8* %9, align 1, !dbg !788, !tbaa !519
  call void %6(%struct.lua_State* nonnull %0, %struct.lua_Debug* nonnull %4) #6, !dbg !790
  store i8 1, i8* %9, align 1, !dbg !791, !tbaa !519
  %63 = bitcast %struct.lua_TValue** %16 to i8**, !dbg !792
  %64 = load i8*, i8** %63, align 8, !dbg !792, !tbaa !614
  %65 = getelementptr inbounds i8, i8* %64, i64 %25, !dbg !792
  %66 = load %struct.CallInfo*, %struct.CallInfo** %20, align 8, !dbg !793, !tbaa !487
  %67 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %66, i64 0, i32 2, !dbg !794
  %68 = bitcast %struct.lua_TValue** %67 to i8**, !dbg !795
  store i8* %65, i8** %68, align 8, !dbg !795, !tbaa !670
  %69 = getelementptr inbounds i8, i8* %64, i64 %19, !dbg !796
  %70 = bitcast %struct.lua_TValue** %13 to i8**, !dbg !797
  store i8* %69, i8** %70, align 8, !dbg !797, !tbaa !426
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %26) #8, !dbg !798
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !799
  br label %71, !dbg !799

; <label>:71:                                     ; preds = %8, %3, %59
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !800
  ret void, !dbg !800
}

; Function Attrs: noredzone nounwind
define hidden i32 @luaD_precall(%struct.lua_State*, %struct.lua_TValue*, i32) local_unnamed_addr #0 !dbg !801 {
  %4 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1, i64 0, i32 1, !dbg !828
  %5 = load i32, i32* %4, align 8, !dbg !828, !tbaa !433
  %6 = icmp eq i32 %5, 6, !dbg !828
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !830
  br i1 %6, label %7, label %10, !dbg !830

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 10, !dbg !831
  %9 = bitcast %struct.lua_TValue** %8 to i64*, !dbg !831
  br label %72, !dbg !830

; <label>:10:                                     ; preds = %3
  %11 = tail call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* %0, %struct.lua_TValue* nonnull %1, i32 16) #6, !dbg !852
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 10, !dbg !854
  %13 = bitcast %struct.lua_TValue** %12 to i64*, !dbg !854
  %14 = load i64, i64* %13, align 8, !dbg !854, !tbaa !614
  %15 = ptrtoint %struct.lua_TValue* %1 to i64, !dbg !854
  %16 = sub i64 %15, %14, !dbg !854
  %17 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %11, i64 0, i32 1, !dbg !856
  %18 = load i32, i32* %17, align 8, !dbg !856, !tbaa !433
  %19 = icmp eq i32 %18, 6, !dbg !856
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !858
  br i1 %19, label %21, label %20, !dbg !858

; <label>:20:                                     ; preds = %10
  tail call void @luaG_typeerror(%struct.lua_State* nonnull %0, %struct.lua_TValue* nonnull %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !859
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !859
  br label %21, !dbg !859

; <label>:21:                                     ; preds = %20, %10
  %22 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !860
  %23 = load %struct.lua_TValue*, %struct.lua_TValue** %22, align 8, !dbg !860, !tbaa !426
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !862
  %24 = icmp ugt %struct.lua_TValue* %23, %1, !dbg !863
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !864
  br i1 %24, label %27, label %25, !dbg !864

; <label>:25:                                     ; preds = %21
  %26 = ptrtoint %struct.lua_TValue* %23 to i64, !dbg !864
  br label %41, !dbg !864

; <label>:27:                                     ; preds = %21, %27
  %28 = phi %struct.lua_TValue* [ %29, %27 ], [ %23, %21 ]
  %29 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %28, i64 -1, !dbg !865
  %30 = bitcast %struct.lua_TValue* %29 to i64*, !dbg !865
  %31 = bitcast %struct.lua_TValue* %28 to i64*, !dbg !865
  %32 = load i64, i64* %30, align 8, !dbg !865
  store i64 %32, i64* %31, align 8, !dbg !865
  %33 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %28, i64 -1, i32 1, !dbg !865
  %34 = load i32, i32* %33, align 8, !dbg !865, !tbaa !433
  %35 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %28, i64 0, i32 1, !dbg !865
  store i32 %34, i32* %35, align 8, !dbg !865, !tbaa !433
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !866
  %36 = icmp ugt %struct.lua_TValue* %29, %1, !dbg !863
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !864
  br i1 %36, label %27, label %37, !dbg !864, !llvm.loop !867

; <label>:37:                                     ; preds = %27
  %38 = bitcast %struct.lua_TValue** %22 to i64*
  %39 = load i64, i64* %38, align 8, !dbg !870, !tbaa !426
  %40 = inttoptr i64 %39 to %struct.lua_TValue*, !dbg !870
  br label %41, !dbg !870

; <label>:41:                                     ; preds = %37, %25
  %42 = phi %struct.lua_TValue* [ %40, %37 ], [ %23, %25 ]
  %43 = phi i64 [ %39, %37 ], [ %26, %25 ], !dbg !870
  %44 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 9, !dbg !870
  %45 = bitcast %struct.lua_TValue** %44 to i64*, !dbg !870
  %46 = load i64, i64* %45, align 8, !dbg !870, !tbaa !626
  %47 = sub i64 %46, %43, !dbg !870
  %48 = icmp slt i64 %47, 17, !dbg !870
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !873
  br i1 %48, label %49, label %59, !dbg !873

; <label>:49:                                     ; preds = %41
  %50 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 13, !dbg !877
  %51 = load i32, i32* %50, align 8, !dbg !877, !tbaa !619
  %52 = icmp slt i32 %51, 1, !dbg !878
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !879
  br i1 %52, label %55, label %53, !dbg !879

; <label>:53:                                     ; preds = %49
  %54 = shl nsw i32 %51, 1, !dbg !880
  tail call void @luaD_reallocstack(%struct.lua_State* nonnull %0, i32 %54) #6, !dbg !881
  br label %57, !dbg !881

; <label>:55:                                     ; preds = %49
  %56 = add nsw i32 %51, 1, !dbg !882
  tail call void @luaD_reallocstack(%struct.lua_State* nonnull %0, i32 %56) #6, !dbg !883
  br label %57

; <label>:57:                                     ; preds = %55, %53
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !884
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !870
  %58 = load %struct.lua_TValue*, %struct.lua_TValue** %22, align 8, !dbg !873, !tbaa !426
  br label %59, !dbg !870

; <label>:59:                                     ; preds = %41, %57
  %60 = phi %struct.lua_TValue* [ %42, %41 ], [ %58, %57 ], !dbg !873
  %61 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %60, i64 1, !dbg !873
  store %struct.lua_TValue* %61, %struct.lua_TValue** %22, align 8, !dbg !873, !tbaa !426
  %62 = bitcast %struct.lua_TValue** %12 to i8**, !dbg !885
  %63 = load i8*, i8** %62, align 8, !dbg !885, !tbaa !614
  %64 = getelementptr inbounds i8, i8* %63, i64 %16, !dbg !885
  %65 = bitcast i8* %64 to %struct.lua_TValue*, !dbg !885
  %66 = bitcast %struct.lua_TValue* %11 to i64*, !dbg !886
  %67 = bitcast i8* %64 to i64*, !dbg !886
  %68 = load i64, i64* %66, align 8, !dbg !886
  store i64 %68, i64* %67, align 8, !dbg !886
  %69 = load i32, i32* %17, align 8, !dbg !886, !tbaa !433
  %70 = getelementptr inbounds i8, i8* %64, i64 8, !dbg !886
  %71 = bitcast i8* %70 to i32*, !dbg !886
  store i32 %69, i32* %71, align 8, !dbg !886, !tbaa !433
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !887
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !888
  br label %72, !dbg !888

; <label>:72:                                     ; preds = %7, %59
  %73 = phi i64* [ %9, %7 ], [ %13, %59 ], !dbg !831
  %74 = phi %struct.lua_TValue** [ %8, %7 ], [ %12, %59 ], !dbg !831
  %75 = phi %struct.lua_TValue* [ %1, %7 ], [ %65, %59 ]
  %76 = load i64, i64* %73, align 8, !dbg !831, !tbaa !614
  %77 = ptrtoint %struct.lua_TValue* %75 to i64, !dbg !831
  %78 = sub i64 %77, %76, !dbg !831
  %79 = bitcast %struct.lua_TValue* %75 to %struct.LClosure**, !dbg !890
  %80 = load %struct.LClosure*, %struct.LClosure** %79, align 8, !dbg !890, !tbaa !419
  %81 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8, !dbg !892
  %82 = bitcast i32** %81 to i64*, !dbg !892
  %83 = load i64, i64* %82, align 8, !dbg !892, !tbaa !893
  %84 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !894
  %85 = load %struct.CallInfo*, %struct.CallInfo** %84, align 8, !dbg !894, !tbaa !487
  %86 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %85, i64 0, i32 3, !dbg !895
  %87 = bitcast i32** %86 to i64*, !dbg !896
  store i64 %83, i64* %87, align 8, !dbg !896, !tbaa !897
  %88 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %80, i64 0, i32 3, !dbg !898
  %89 = load i8, i8* %88, align 2, !dbg !898, !tbaa !899
  %90 = icmp eq i8 %89, 0, !dbg !901
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !902
  %91 = inttoptr i64 %76 to i8*, !dbg !902
  br i1 %90, label %92, label %407, !dbg !902

; <label>:92:                                     ; preds = %72
  %93 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %80, i64 0, i32 7, !dbg !903
  %94 = load %struct.Proto*, %struct.Proto** %93, align 8, !dbg !903, !tbaa !904
  %95 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 9, !dbg !906
  %96 = bitcast %struct.lua_TValue** %95 to i64*, !dbg !906
  %97 = load i64, i64* %96, align 8, !dbg !906, !tbaa !626
  %98 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !906
  %99 = bitcast %struct.lua_TValue** %98 to i64*, !dbg !906
  %100 = load i64, i64* %99, align 8, !dbg !906, !tbaa !426
  %101 = sub i64 %97, %100, !dbg !906
  %102 = getelementptr inbounds %struct.Proto, %struct.Proto* %94, i64 0, i32 22, !dbg !906
  %103 = load i8, i8* %102, align 1, !dbg !906, !tbaa !908
  %104 = zext i8 %103 to i32, !dbg !906
  %105 = shl nuw nsw i32 %104, 4, !dbg !906
  %106 = zext i32 %105 to i64, !dbg !906
  %107 = icmp sgt i64 %101, %106, !dbg !906
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !910
  br i1 %107, label %108, label %110, !dbg !910

; <label>:108:                                    ; preds = %92
  %109 = bitcast %struct.lua_TValue** %74 to i8**, !dbg !911
  br label %121, !dbg !910

; <label>:110:                                    ; preds = %92
  %111 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 13, !dbg !915
  %112 = load i32, i32* %111, align 8, !dbg !915, !tbaa !619
  %113 = icmp slt i32 %112, %104, !dbg !916
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !917
  br i1 %113, label %116, label %114, !dbg !917

; <label>:114:                                    ; preds = %110
  %115 = shl nsw i32 %112, 1, !dbg !918
  tail call void @luaD_reallocstack(%struct.lua_State* nonnull %0, i32 %115) #6, !dbg !919
  br label %118, !dbg !919

; <label>:116:                                    ; preds = %110
  %117 = add nsw i32 %112, %104, !dbg !920
  tail call void @luaD_reallocstack(%struct.lua_State* nonnull %0, i32 %117) #6, !dbg !921
  br label %118

; <label>:118:                                    ; preds = %114, %116
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !922
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !906
  %119 = bitcast %struct.lua_TValue** %74 to i8**
  %120 = load i8*, i8** %119, align 8, !dbg !911, !tbaa !614
  br label %121, !dbg !906

; <label>:121:                                    ; preds = %108, %118
  %122 = phi i8** [ %109, %108 ], [ %119, %118 ], !dbg !911
  %123 = phi i8* [ %91, %108 ], [ %120, %118 ], !dbg !911
  %124 = getelementptr inbounds i8, i8* %123, i64 %78, !dbg !911
  %125 = bitcast i8* %124 to %struct.lua_TValue*, !dbg !911
  %126 = getelementptr inbounds %struct.Proto, %struct.Proto* %94, i64 0, i32 21, !dbg !923
  %127 = load i8, i8* %126, align 2, !dbg !923, !tbaa !924
  %128 = icmp eq i8 %127, 0, !dbg !925
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !926
  br i1 %128, label %129, label %139, !dbg !926

; <label>:129:                                    ; preds = %121
  %130 = getelementptr inbounds i8, i8* %124, i64 16, !dbg !927
  %131 = bitcast i8* %130 to %struct.lua_TValue*, !dbg !927
  %132 = load %struct.lua_TValue*, %struct.lua_TValue** %98, align 8, !dbg !930, !tbaa !426
  %133 = getelementptr inbounds %struct.Proto, %struct.Proto* %94, i64 0, i32 20, !dbg !932
  %134 = load i8, i8* %133, align 1, !dbg !932, !tbaa !933
  %135 = zext i8 %134 to i64, !dbg !934
  %136 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %131, i64 %135, !dbg !934
  %137 = icmp ugt %struct.lua_TValue* %132, %136, !dbg !935
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !936
  br i1 %137, label %138, label %328, !dbg !936

; <label>:138:                                    ; preds = %129
  store %struct.lua_TValue* %136, %struct.lua_TValue** %98, align 8, !dbg !937, !tbaa !426
  br label %325, !dbg !938

; <label>:139:                                    ; preds = %121
  %140 = load i64, i64* %99, align 8, !dbg !939, !tbaa !426
  %141 = ptrtoint i8* %124 to i64, !dbg !939
  %142 = sub i64 %140, %141, !dbg !939
  %143 = lshr exact i64 %142, 4, !dbg !939
  %144 = trunc i64 %143 to i32, !dbg !939
  %145 = add nsw i32 %144, -1, !dbg !940
  %146 = getelementptr inbounds %struct.Proto, %struct.Proto* %94, i64 0, i32 20, !dbg !980
  %147 = load i8, i8* %146, align 1, !dbg !980, !tbaa !933
  %148 = zext i8 %147 to i32, !dbg !981
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !984
  %149 = icmp slt i32 %148, %144, !dbg !985
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !988
  %150 = inttoptr i64 %140 to %struct.lua_TValue*, !dbg !988
  br i1 %149, label %187, label %151, !dbg !988

; <label>:151:                                    ; preds = %139
  %152 = add nuw nsw i32 %148, 1, !dbg !989
  %153 = sub i32 %152, %144, !dbg !989
  %154 = sub i32 %148, %144, !dbg !989
  %155 = and i32 %153, 3, !dbg !989
  %156 = icmp eq i32 %155, 0, !dbg !989
  br i1 %156, label %166, label %157, !dbg !989

; <label>:157:                                    ; preds = %151, %157
  %158 = phi %struct.lua_TValue* [ %161, %157 ], [ %150, %151 ], !dbg !989
  %159 = phi i32 [ %163, %157 ], [ %145, %151 ]
  %160 = phi i32 [ %164, %157 ], [ %155, %151 ]
  %161 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %158, i64 1, !dbg !989
  store %struct.lua_TValue* %161, %struct.lua_TValue** %98, align 8, !dbg !989, !tbaa !426
  %162 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %158, i64 0, i32 1, !dbg !989
  store i32 0, i32* %162, align 8, !dbg !989, !tbaa !433
  %163 = add nsw i32 %159, 1, !dbg !990
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !991
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !988
  %164 = add i32 %160, -1, !dbg !988
  %165 = icmp eq i32 %164, 0, !dbg !988
  br i1 %165, label %166, label %157, !dbg !988, !llvm.loop !992

; <label>:166:                                    ; preds = %157, %151
  %167 = phi %struct.lua_TValue* [ undef, %151 ], [ %161, %157 ]
  %168 = phi %struct.lua_TValue* [ %150, %151 ], [ %161, %157 ]
  %169 = phi i32 [ %145, %151 ], [ %163, %157 ]
  %170 = icmp ult i32 %154, 3, !dbg !989
  br i1 %170, label %184, label %171, !dbg !989

; <label>:171:                                    ; preds = %166, %171
  %172 = phi %struct.lua_TValue* [ %180, %171 ], [ %168, %166 ], !dbg !989
  %173 = phi i32 [ %182, %171 ], [ %169, %166 ]
  %174 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %172, i64 1, !dbg !989
  store %struct.lua_TValue* %174, %struct.lua_TValue** %98, align 8, !dbg !989, !tbaa !426
  %175 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %172, i64 0, i32 1, !dbg !989
  store i32 0, i32* %175, align 8, !dbg !989, !tbaa !433
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !991
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !988
  %176 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %172, i64 2, !dbg !989
  store %struct.lua_TValue* %176, %struct.lua_TValue** %98, align 8, !dbg !989, !tbaa !426
  %177 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %172, i64 1, i32 1, !dbg !989
  store i32 0, i32* %177, align 8, !dbg !989, !tbaa !433
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !991
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !988
  %178 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %172, i64 3, !dbg !989
  store %struct.lua_TValue* %178, %struct.lua_TValue** %98, align 8, !dbg !989, !tbaa !426
  %179 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %172, i64 2, i32 1, !dbg !989
  store i32 0, i32* %179, align 8, !dbg !989, !tbaa !433
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !991
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !988
  %180 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %172, i64 4, !dbg !989
  store %struct.lua_TValue* %180, %struct.lua_TValue** %98, align 8, !dbg !989, !tbaa !426
  %181 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %172, i64 3, i32 1, !dbg !989
  store i32 0, i32* %181, align 8, !dbg !989, !tbaa !433
  %182 = add nsw i32 %173, 4, !dbg !990
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !991
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !988
  %183 = icmp eq i32 %182, %148, !dbg !985
  br i1 %183, label %184, label %171, !dbg !988, !llvm.loop !994

; <label>:184:                                    ; preds = %171, %166
  %185 = phi %struct.lua_TValue* [ %167, %166 ], [ %180, %171 ], !dbg !989
  %186 = ptrtoint %struct.lua_TValue* %185 to i64, !dbg !988
  br label %187, !dbg !997

; <label>:187:                                    ; preds = %184, %139
  %188 = phi %struct.lua_TValue* [ %150, %139 ], [ %185, %184 ]
  %189 = phi i64 [ %140, %139 ], [ %186, %184 ]
  %190 = phi i32 [ %145, %139 ], [ %148, %184 ]
  %191 = and i8 %127, 4, !dbg !997
  %192 = icmp eq i8 %191, 0, !dbg !997
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !998
  br i1 %192, label %251, label %193, !dbg !998

; <label>:193:                                    ; preds = %187
  %194 = sub i32 %190, %148, !dbg !999
  %195 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1001
  %196 = load %struct.global_State*, %struct.global_State** %195, align 8, !dbg !1001, !tbaa !467
  %197 = getelementptr inbounds %struct.global_State, %struct.global_State* %196, i64 0, i32 14, !dbg !1001
  %198 = load i64, i64* %197, align 8, !dbg !1001, !tbaa !1004
  %199 = getelementptr inbounds %struct.global_State, %struct.global_State* %196, i64 0, i32 13, !dbg !1001
  %200 = load i64, i64* %199, align 8, !dbg !1001, !tbaa !1005
  %201 = icmp ult i64 %198, %200, !dbg !1001
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1006
  br i1 %201, label %204, label %202, !dbg !1006

; <label>:202:                                    ; preds = %193
  tail call void @luaC_step(%struct.lua_State* nonnull %0) #6, !dbg !1001
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1001
  %203 = load i64, i64* %99, align 8, !dbg !1007, !tbaa !426
  br label %204, !dbg !1001

; <label>:204:                                    ; preds = %202, %193
  %205 = phi i64 [ %203, %202 ], [ %189, %193 ], !dbg !1007
  %206 = load i64, i64* %96, align 8, !dbg !1007, !tbaa !626
  %207 = sub i64 %206, %205, !dbg !1007
  %208 = load i8, i8* %102, align 1, !dbg !1007, !tbaa !908
  %209 = zext i8 %208 to i32, !dbg !1007
  %210 = shl nuw nsw i32 %209, 4, !dbg !1007
  %211 = zext i32 %210 to i64, !dbg !1007
  %212 = icmp sgt i64 %207, %211, !dbg !1007
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1009
  br i1 %212, label %222, label %213, !dbg !1009

; <label>:213:                                    ; preds = %204
  %214 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 13, !dbg !1013
  %215 = load i32, i32* %214, align 8, !dbg !1013, !tbaa !619
  %216 = icmp slt i32 %215, %209, !dbg !1014
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1015
  br i1 %216, label %219, label %217, !dbg !1015

; <label>:217:                                    ; preds = %213
  %218 = shl nsw i32 %215, 1, !dbg !1016
  tail call void @luaD_reallocstack(%struct.lua_State* nonnull %0, i32 %218) #6, !dbg !1017
  br label %221, !dbg !1017

; <label>:219:                                    ; preds = %213
  %220 = add nsw i32 %215, %209, !dbg !1018
  tail call void @luaD_reallocstack(%struct.lua_State* nonnull %0, i32 %220) #6, !dbg !1019
  br label %221

; <label>:221:                                    ; preds = %219, %217
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1020
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1007
  br label %222, !dbg !1007

; <label>:222:                                    ; preds = %221, %204
  %223 = tail call %struct.Table* @luaH_new(%struct.lua_State* nonnull %0, i32 %194, i32 1) #6, !dbg !1021
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1023
  %224 = icmp sgt i32 %194, 0, !dbg !1024
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1025
  br i1 %224, label %225, label %244, !dbg !1025

; <label>:225:                                    ; preds = %222
  %226 = sext i32 %194 to i64
  %227 = sub nsw i64 0, %226
  %228 = zext i32 %194 to i64
  br label %229, !dbg !1025

; <label>:229:                                    ; preds = %229, %225
  %230 = phi i64 [ 0, %225 ], [ %234, %229 ]
  %231 = load %struct.lua_TValue*, %struct.lua_TValue** %98, align 8, !dbg !1026, !tbaa !426
  %232 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %231, i64 %227, !dbg !1026
  %233 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %232, i64 %230, !dbg !1026
  %234 = add nuw nsw i64 %230, 1, !dbg !1026
  %235 = trunc i64 %234 to i32, !dbg !1026
  %236 = tail call %struct.lua_TValue* @luaH_setnum(%struct.lua_State* nonnull %0, %struct.Table* %223, i32 %235) #6, !dbg !1026
  %237 = bitcast %struct.lua_TValue* %233 to i64*, !dbg !1026
  %238 = bitcast %struct.lua_TValue* %236 to i64*, !dbg !1026
  %239 = load i64, i64* %237, align 8, !dbg !1026
  store i64 %239, i64* %238, align 8, !dbg !1026
  %240 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %233, i64 0, i32 1, !dbg !1026
  %241 = load i32, i32* %240, align 8, !dbg !1026, !tbaa !433
  %242 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %236, i64 0, i32 1, !dbg !1026
  store i32 %241, i32* %242, align 8, !dbg !1026, !tbaa !433
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1027
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1025
  %243 = icmp eq i64 %234, %228, !dbg !1024
  br i1 %243, label %244, label %229, !dbg !1025, !llvm.loop !1028

; <label>:244:                                    ; preds = %229, %222
  %245 = tail call %union.TString* @luaS_newlstr(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i64 1) #6, !dbg !1031
  %246 = tail call %struct.lua_TValue* @luaH_setstr(%struct.lua_State* nonnull %0, %struct.Table* %223, %union.TString* %245) #6, !dbg !1031
  %247 = sitofp i32 %194 to double, !dbg !1031
  %248 = bitcast %struct.lua_TValue* %246 to double*, !dbg !1031
  store double %247, double* %248, align 8, !dbg !1031, !tbaa !419
  %249 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %246, i64 0, i32 1, !dbg !1031
  store i32 3, i32* %249, align 8, !dbg !1031, !tbaa !433
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1032
  %250 = load %struct.lua_TValue*, %struct.lua_TValue** %98, align 8, !dbg !1033, !tbaa !426
  br label %251, !dbg !1032

; <label>:251:                                    ; preds = %187, %244
  %252 = phi %struct.lua_TValue* [ %250, %244 ], [ %188, %187 ], !dbg !1033
  %253 = phi %struct.Table* [ %223, %244 ], [ null, %187 ], !dbg !1034
  %254 = sext i32 %190 to i64, !dbg !1035
  %255 = sub nsw i64 0, %254, !dbg !1035
  %256 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %252, i64 %255, !dbg !1035
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1038
  %257 = icmp eq i8 %147, 0, !dbg !1039
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1040
  br i1 %257, label %314, label %258, !dbg !1040

; <label>:258:                                    ; preds = %251
  %259 = zext i8 %147 to i64
  %260 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %252, i64 1, !dbg !1041
  store %struct.lua_TValue* %260, %struct.lua_TValue** %98, align 8, !dbg !1041, !tbaa !426
  %261 = bitcast %struct.lua_TValue* %256 to i64*, !dbg !1041
  %262 = bitcast %struct.lua_TValue* %252 to i64*, !dbg !1041
  %263 = load i64, i64* %261, align 8, !dbg !1041
  store i64 %263, i64* %262, align 8, !dbg !1041
  %264 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %252, i64 %255, i32 1, !dbg !1041
  %265 = load i32, i32* %264, align 8, !dbg !1041, !tbaa !433
  %266 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %252, i64 0, i32 1, !dbg !1041
  store i32 %265, i32* %266, align 8, !dbg !1041, !tbaa !433
  store i32 0, i32* %264, align 8, !dbg !1042, !tbaa !433
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1043
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1040
  %267 = icmp eq i8 %147, 1, !dbg !1039
  br i1 %267, label %314, label %268, !dbg !1040, !llvm.loop !1044

; <label>:268:                                    ; preds = %258
  %269 = and i8 %147, 1, !dbg !1041
  %270 = xor i8 %269, 1, !dbg !1041
  %271 = icmp eq i8 %147, 2, !dbg !1041
  br i1 %271, label %301, label %272, !dbg !1041

; <label>:272:                                    ; preds = %268
  %273 = zext i8 %270 to i64, !dbg !1041
  %274 = xor i64 %273, -1, !dbg !1041
  %275 = add nsw i64 %274, %259, !dbg !1041
  br label %276, !dbg !1041

; <label>:276:                                    ; preds = %276, %272
  %277 = phi i64 [ 1, %272 ], [ %298, %276 ]
  %278 = phi i64 [ %275, %272 ], [ %299, %276 ]
  %279 = load %struct.lua_TValue*, %struct.lua_TValue** %98, align 8, !dbg !1041, !tbaa !426
  %280 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %256, i64 %277, !dbg !1041
  %281 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %279, i64 1, !dbg !1041
  store %struct.lua_TValue* %281, %struct.lua_TValue** %98, align 8, !dbg !1041, !tbaa !426
  %282 = bitcast %struct.lua_TValue* %280 to i64*, !dbg !1041
  %283 = bitcast %struct.lua_TValue* %279 to i64*, !dbg !1041
  %284 = load i64, i64* %282, align 8, !dbg !1041
  store i64 %284, i64* %283, align 8, !dbg !1041
  %285 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %280, i64 0, i32 1, !dbg !1041
  %286 = load i32, i32* %285, align 8, !dbg !1041, !tbaa !433
  %287 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %279, i64 0, i32 1, !dbg !1041
  store i32 %286, i32* %287, align 8, !dbg !1041, !tbaa !433
  store i32 0, i32* %285, align 8, !dbg !1042, !tbaa !433
  %288 = add nuw nsw i64 %277, 1, !dbg !1047
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1043
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1040
  %289 = load %struct.lua_TValue*, %struct.lua_TValue** %98, align 8, !dbg !1041, !tbaa !426
  %290 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %256, i64 %288, !dbg !1041
  %291 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %289, i64 1, !dbg !1041
  store %struct.lua_TValue* %291, %struct.lua_TValue** %98, align 8, !dbg !1041, !tbaa !426
  %292 = bitcast %struct.lua_TValue* %290 to i64*, !dbg !1041
  %293 = bitcast %struct.lua_TValue* %289 to i64*, !dbg !1041
  %294 = load i64, i64* %292, align 8, !dbg !1041
  store i64 %294, i64* %293, align 8, !dbg !1041
  %295 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %290, i64 0, i32 1, !dbg !1041
  %296 = load i32, i32* %295, align 8, !dbg !1041, !tbaa !433
  %297 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %289, i64 0, i32 1, !dbg !1041
  store i32 %296, i32* %297, align 8, !dbg !1041, !tbaa !433
  store i32 0, i32* %295, align 8, !dbg !1042, !tbaa !433
  %298 = add nuw nsw i64 %277, 2, !dbg !1047
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1043
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1040
  %299 = add i64 %278, -2, !dbg !1040
  %300 = icmp eq i64 %299, 0, !dbg !1040
  br i1 %300, label %301, label %276, !dbg !1040, !llvm.loop !1044

; <label>:301:                                    ; preds = %276, %268
  %302 = phi i64 [ 1, %268 ], [ %298, %276 ]
  %303 = icmp eq i8 %270, 0, !dbg !1040
  br i1 %303, label %314, label %304, !dbg !1040

; <label>:304:                                    ; preds = %301
  %305 = load %struct.lua_TValue*, %struct.lua_TValue** %98, align 8, !dbg !1041, !tbaa !426
  %306 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %256, i64 %302, !dbg !1041
  %307 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %305, i64 1, !dbg !1041
  store %struct.lua_TValue* %307, %struct.lua_TValue** %98, align 8, !dbg !1041, !tbaa !426
  %308 = bitcast %struct.lua_TValue* %306 to i64*, !dbg !1041
  %309 = bitcast %struct.lua_TValue* %305 to i64*, !dbg !1041
  %310 = load i64, i64* %308, align 8, !dbg !1041
  store i64 %310, i64* %309, align 8, !dbg !1041
  %311 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %306, i64 0, i32 1, !dbg !1041
  %312 = load i32, i32* %311, align 8, !dbg !1041, !tbaa !433
  %313 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %305, i64 0, i32 1, !dbg !1041
  store i32 %312, i32* %313, align 8, !dbg !1041, !tbaa !433
  store i32 0, i32* %311, align 8, !dbg !1042, !tbaa !433
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1043
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1040
  br label %314, !dbg !1048

; <label>:314:                                    ; preds = %304, %301, %258, %251
  %315 = icmp eq %struct.Table* %253, null, !dbg !1048
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1049
  br i1 %315, label %321, label %316, !dbg !1049

; <label>:316:                                    ; preds = %314
  %317 = load %struct.lua_TValue*, %struct.lua_TValue** %98, align 8, !dbg !1050, !tbaa !426
  %318 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %317, i64 1, !dbg !1050
  store %struct.lua_TValue* %318, %struct.lua_TValue** %98, align 8, !dbg !1050, !tbaa !426
  %319 = bitcast %struct.lua_TValue* %317 to %struct.Table**, !dbg !1050
  store %struct.Table* %253, %struct.Table** %319, align 8, !dbg !1050, !tbaa !419
  %320 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %317, i64 0, i32 1, !dbg !1050
  store i32 5, i32* %320, align 8, !dbg !1050, !tbaa !433
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1051
  br label %321, !dbg !1051

; <label>:321:                                    ; preds = %314, %316
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1052
  %322 = load i8*, i8** %122, align 8, !dbg !1053, !tbaa !614
  %323 = getelementptr inbounds i8, i8* %322, i64 %78, !dbg !1053
  %324 = bitcast i8* %323 to %struct.lua_TValue*, !dbg !1053
  br label %325

; <label>:325:                                    ; preds = %321, %138
  %326 = phi %struct.lua_TValue* [ %131, %138 ], [ %252, %321 ]
  %327 = phi %struct.lua_TValue* [ %125, %138 ], [ %324, %321 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %328, !dbg !1054

; <label>:328:                                    ; preds = %325, %129
  %329 = phi %struct.lua_TValue* [ %131, %129 ], [ %326, %325 ], !dbg !1055
  %330 = phi %struct.lua_TValue* [ %125, %129 ], [ %327, %325 ], !dbg !1056
  %331 = load %struct.CallInfo*, %struct.CallInfo** %84, align 8, !dbg !1054, !tbaa !487
  %332 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 11, !dbg !1054
  %333 = load %struct.CallInfo*, %struct.CallInfo** %332, align 8, !dbg !1054, !tbaa !558
  %334 = icmp eq %struct.CallInfo* %331, %333, !dbg !1054
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1054
  br i1 %334, label %335, label %374, !dbg !1054

; <label>:335:                                    ; preds = %328
  %336 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 14, !dbg !1064
  %337 = load i32, i32* %336, align 4, !dbg !1064, !tbaa !531
  %338 = icmp sgt i32 %337, 20000, !dbg !1066
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1067
  br i1 %338, label %339, label %340, !dbg !1067

; <label>:339:                                    ; preds = %335
  tail call void @luaD_throw(%struct.lua_State* nonnull %0, i32 5) #6, !dbg !1068
  unreachable

; <label>:340:                                    ; preds = %335
  %341 = shl nsw i32 %337, 1, !dbg !1069
  %342 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 12, !dbg !1074
  %343 = load %struct.CallInfo*, %struct.CallInfo** %342, align 8, !dbg !1074, !tbaa !484
  %344 = icmp sgt i32 %337, -1, !dbg !1076
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1076
  br i1 %344, label %345, label %352, !dbg !1076

; <label>:345:                                    ; preds = %340
  %346 = bitcast %struct.CallInfo* %343 to i8*, !dbg !1076
  %347 = sext i32 %337 to i64, !dbg !1076
  %348 = mul nsw i64 %347, 40, !dbg !1076
  %349 = sext i32 %341 to i64, !dbg !1076
  %350 = mul nsw i64 %349, 40, !dbg !1076
  %351 = tail call i8* @luaM_realloc_(%struct.lua_State* nonnull %0, i8* %346, i64 %348, i64 %350) #6, !dbg !1076
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1076
  br label %355, !dbg !1076

; <label>:352:                                    ; preds = %340
  %353 = tail call i8* @luaM_toobig(%struct.lua_State* nonnull %0) #6, !dbg !1076
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1076
  %354 = sext i32 %341 to i64, !dbg !1077
  br label %355, !dbg !1076

; <label>:355:                                    ; preds = %345, %352
  %356 = phi i64 [ %354, %352 ], [ %349, %345 ], !dbg !1077
  %357 = phi i8* [ %353, %352 ], [ %351, %345 ], !dbg !1076
  %358 = bitcast %struct.CallInfo** %342 to i8**, !dbg !1076
  store i8* %357, i8** %358, align 8, !dbg !1076, !tbaa !484
  store i32 %341, i32* %336, align 4, !dbg !1078, !tbaa !531
  %359 = bitcast %struct.CallInfo** %84 to i64*, !dbg !1079
  %360 = load i64, i64* %359, align 8, !dbg !1079, !tbaa !487
  %361 = ptrtoint %struct.CallInfo* %343 to i64, !dbg !1080
  %362 = sub i64 %360, %361, !dbg !1080
  %363 = sdiv exact i64 %362, 40, !dbg !1080
  %364 = bitcast i8* %357 to %struct.CallInfo*, !dbg !1081
  %365 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %364, i64 %363, !dbg !1082
  store %struct.CallInfo* %365, %struct.CallInfo** %84, align 8, !dbg !1083, !tbaa !487
  %366 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %364, i64 %356, !dbg !1077
  %367 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %366, i64 -1, !dbg !1084
  store %struct.CallInfo* %367, %struct.CallInfo** %332, align 8, !dbg !1085, !tbaa !558
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1086
  %368 = icmp sgt i32 %337, 10000, !dbg !1087
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1089
  br i1 %368, label %369, label %371, !dbg !1089

; <label>:369:                                    ; preds = %355
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !1090
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1090
  %370 = load %struct.CallInfo*, %struct.CallInfo** %84, align 8, !dbg !1091, !tbaa !487
  br label %371, !dbg !1090

; <label>:371:                                    ; preds = %355, %369
  %372 = phi %struct.CallInfo* [ %365, %355 ], [ %370, %369 ], !dbg !1091
  %373 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %372, i64 1, !dbg !1091
  store %struct.CallInfo* %373, %struct.CallInfo** %84, align 8, !dbg !1091, !tbaa !487
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1092
  br label %376, !dbg !1054

; <label>:374:                                    ; preds = %328
  %375 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %331, i64 1, !dbg !1054
  store %struct.CallInfo* %375, %struct.CallInfo** %84, align 8, !dbg !1054, !tbaa !487
  br label %376, !dbg !1054

; <label>:376:                                    ; preds = %374, %371
  %377 = phi %struct.CallInfo* [ %373, %371 ], [ %375, %374 ], !dbg !1054
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1054
  %378 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %377, i64 0, i32 1, !dbg !1094
  store %struct.lua_TValue* %330, %struct.lua_TValue** %378, align 8, !dbg !1095, !tbaa !679
  %379 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %377, i64 0, i32 0, !dbg !1096
  store %struct.lua_TValue* %329, %struct.lua_TValue** %379, align 8, !dbg !1097, !tbaa !489
  %380 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !1098
  store %struct.lua_TValue* %329, %struct.lua_TValue** %380, align 8, !dbg !1099, !tbaa !493
  %381 = load i8, i8* %102, align 1, !dbg !1100, !tbaa !908
  %382 = zext i8 %381 to i64, !dbg !1101
  %383 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %329, i64 %382, !dbg !1101
  %384 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %377, i64 0, i32 2, !dbg !1102
  store %struct.lua_TValue* %383, %struct.lua_TValue** %384, align 8, !dbg !1103, !tbaa !670
  %385 = getelementptr inbounds %struct.Proto, %struct.Proto* %94, i64 0, i32 4, !dbg !1104
  %386 = bitcast i32** %385 to i64*, !dbg !1104
  %387 = load i64, i64* %386, align 8, !dbg !1104, !tbaa !1105
  store i64 %387, i64* %82, align 8, !dbg !1106, !tbaa !893
  %388 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %377, i64 0, i32 5, !dbg !1107
  store i32 0, i32* %388, align 4, !dbg !1108, !tbaa !1109
  %389 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %377, i64 0, i32 4, !dbg !1110
  store i32 %2, i32* %389, align 8, !dbg !1111, !tbaa !1112
  %390 = load %struct.lua_TValue*, %struct.lua_TValue** %98, align 8, !dbg !1113, !tbaa !426
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1116
  %391 = icmp ult %struct.lua_TValue* %390, %383, !dbg !1117
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1119
  %392 = inttoptr i64 %387 to i32*, !dbg !1119
  br i1 %391, label %393, label %398, !dbg !1119

; <label>:393:                                    ; preds = %376, %393
  %394 = phi %struct.lua_TValue* [ %396, %393 ], [ %390, %376 ]
  %395 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %394, i64 0, i32 1, !dbg !1120
  store i32 0, i32* %395, align 8, !dbg !1120, !tbaa !433
  %396 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %394, i64 1, !dbg !1121
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1122
  %397 = icmp ult %struct.lua_TValue* %396, %383, !dbg !1117
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1119
  br i1 %397, label %393, label %398, !dbg !1119, !llvm.loop !1123

; <label>:398:                                    ; preds = %393, %376
  store %struct.lua_TValue* %383, %struct.lua_TValue** %98, align 8, !dbg !1125, !tbaa !426
  %399 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 17, !dbg !1126
  %400 = load i8, i8* %399, align 4, !dbg !1126, !tbaa !1128
  %401 = and i8 %400, 1, !dbg !1129
  %402 = icmp eq i8 %401, 0, !dbg !1129
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1130
  br i1 %402, label %511, label %403, !dbg !1130

; <label>:403:                                    ; preds = %398
  %404 = getelementptr inbounds i32, i32* %392, i64 1, !dbg !1131
  store i32* %404, i32** %81, align 8, !dbg !1131, !tbaa !893
  tail call void @luaD_callhook(%struct.lua_State* nonnull %0, i32 0, i32 -1) #9, !dbg !1133
  %405 = load i32*, i32** %81, align 8, !dbg !1134, !tbaa !893
  %406 = getelementptr inbounds i32, i32* %405, i64 -1, !dbg !1134
  store i32* %406, i32** %81, align 8, !dbg !1134, !tbaa !893
  br label %509, !dbg !1135

; <label>:407:                                    ; preds = %72
  %408 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 9, !dbg !1136
  %409 = bitcast %struct.lua_TValue** %408 to i64*, !dbg !1136
  %410 = load i64, i64* %409, align 8, !dbg !1136, !tbaa !626
  %411 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1136
  %412 = bitcast %struct.lua_TValue** %411 to i64*, !dbg !1136
  %413 = load i64, i64* %412, align 8, !dbg !1136, !tbaa !426
  %414 = sub i64 %410, %413, !dbg !1136
  %415 = icmp slt i64 %414, 321, !dbg !1136
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1138
  br i1 %415, label %416, label %426, !dbg !1138

; <label>:416:                                    ; preds = %407
  %417 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 13, !dbg !1142
  %418 = load i32, i32* %417, align 8, !dbg !1142, !tbaa !619
  %419 = icmp slt i32 %418, 20, !dbg !1143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1144
  br i1 %419, label %422, label %420, !dbg !1144

; <label>:420:                                    ; preds = %416
  %421 = shl nsw i32 %418, 1, !dbg !1145
  tail call void @luaD_reallocstack(%struct.lua_State* nonnull %0, i32 %421) #6, !dbg !1146
  br label %424, !dbg !1146

; <label>:422:                                    ; preds = %416
  %423 = add nsw i32 %418, 20, !dbg !1147
  tail call void @luaD_reallocstack(%struct.lua_State* nonnull %0, i32 %423) #6, !dbg !1148
  br label %424

; <label>:424:                                    ; preds = %420, %422
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1149
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1136
  %425 = load %struct.CallInfo*, %struct.CallInfo** %84, align 8, !dbg !1150, !tbaa !487
  br label %426, !dbg !1136

; <label>:426:                                    ; preds = %407, %424
  %427 = phi %struct.CallInfo* [ %85, %407 ], [ %425, %424 ], !dbg !1150
  %428 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 11, !dbg !1150
  %429 = load %struct.CallInfo*, %struct.CallInfo** %428, align 8, !dbg !1150, !tbaa !558
  %430 = icmp eq %struct.CallInfo* %427, %429, !dbg !1150
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1150
  br i1 %430, label %431, label %470, !dbg !1150

; <label>:431:                                    ; preds = %426
  %432 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 14, !dbg !1153
  %433 = load i32, i32* %432, align 4, !dbg !1153, !tbaa !531
  %434 = icmp sgt i32 %433, 20000, !dbg !1154
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1155
  br i1 %434, label %435, label %436, !dbg !1155

; <label>:435:                                    ; preds = %431
  tail call void @luaD_throw(%struct.lua_State* nonnull %0, i32 5) #6, !dbg !1156
  unreachable

; <label>:436:                                    ; preds = %431
  %437 = shl nsw i32 %433, 1, !dbg !1157
  %438 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 12, !dbg !1161
  %439 = load %struct.CallInfo*, %struct.CallInfo** %438, align 8, !dbg !1161, !tbaa !484
  %440 = icmp sgt i32 %433, -1, !dbg !1163
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1163
  br i1 %440, label %441, label %448, !dbg !1163

; <label>:441:                                    ; preds = %436
  %442 = bitcast %struct.CallInfo* %439 to i8*, !dbg !1163
  %443 = sext i32 %433 to i64, !dbg !1163
  %444 = mul nsw i64 %443, 40, !dbg !1163
  %445 = sext i32 %437 to i64, !dbg !1163
  %446 = mul nsw i64 %445, 40, !dbg !1163
  %447 = tail call i8* @luaM_realloc_(%struct.lua_State* nonnull %0, i8* %442, i64 %444, i64 %446) #6, !dbg !1163
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1163
  br label %451, !dbg !1163

; <label>:448:                                    ; preds = %436
  %449 = tail call i8* @luaM_toobig(%struct.lua_State* nonnull %0) #6, !dbg !1163
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1163
  %450 = sext i32 %437 to i64, !dbg !1164
  br label %451, !dbg !1163

; <label>:451:                                    ; preds = %441, %448
  %452 = phi i64 [ %450, %448 ], [ %445, %441 ], !dbg !1164
  %453 = phi i8* [ %449, %448 ], [ %447, %441 ], !dbg !1163
  %454 = bitcast %struct.CallInfo** %438 to i8**, !dbg !1163
  store i8* %453, i8** %454, align 8, !dbg !1163, !tbaa !484
  store i32 %437, i32* %432, align 4, !dbg !1165, !tbaa !531
  %455 = bitcast %struct.CallInfo** %84 to i64*, !dbg !1166
  %456 = load i64, i64* %455, align 8, !dbg !1166, !tbaa !487
  %457 = ptrtoint %struct.CallInfo* %439 to i64, !dbg !1167
  %458 = sub i64 %456, %457, !dbg !1167
  %459 = sdiv exact i64 %458, 40, !dbg !1167
  %460 = bitcast i8* %453 to %struct.CallInfo*, !dbg !1168
  %461 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %460, i64 %459, !dbg !1169
  store %struct.CallInfo* %461, %struct.CallInfo** %84, align 8, !dbg !1170, !tbaa !487
  %462 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %460, i64 %452, !dbg !1164
  %463 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %462, i64 -1, !dbg !1171
  store %struct.CallInfo* %463, %struct.CallInfo** %428, align 8, !dbg !1172, !tbaa !558
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1173
  %464 = icmp sgt i32 %433, 10000, !dbg !1174
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1175
  br i1 %464, label %465, label %467, !dbg !1175

; <label>:465:                                    ; preds = %451
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !1176
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1176
  %466 = load %struct.CallInfo*, %struct.CallInfo** %84, align 8, !dbg !1177, !tbaa !487
  br label %467, !dbg !1176

; <label>:467:                                    ; preds = %451, %465
  %468 = phi %struct.CallInfo* [ %461, %451 ], [ %466, %465 ], !dbg !1177
  %469 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %468, i64 1, !dbg !1177
  store %struct.CallInfo* %469, %struct.CallInfo** %84, align 8, !dbg !1177, !tbaa !487
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1178
  br label %472, !dbg !1150

; <label>:470:                                    ; preds = %426
  %471 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %427, i64 1, !dbg !1150
  store %struct.CallInfo* %471, %struct.CallInfo** %84, align 8, !dbg !1150, !tbaa !487
  br label %472, !dbg !1150

; <label>:472:                                    ; preds = %470, %467
  %473 = phi %struct.CallInfo* [ %469, %467 ], [ %471, %470 ], !dbg !1150
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1150
  %474 = bitcast %struct.lua_TValue** %74 to i8**, !dbg !1180
  %475 = load i8*, i8** %474, align 8, !dbg !1180, !tbaa !614
  %476 = getelementptr inbounds i8, i8* %475, i64 %78, !dbg !1180
  %477 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %473, i64 0, i32 1, !dbg !1181
  %478 = bitcast %struct.lua_TValue** %477 to i8**, !dbg !1182
  store i8* %476, i8** %478, align 8, !dbg !1182, !tbaa !679
  %479 = getelementptr inbounds i8, i8* %476, i64 16, !dbg !1183
  %480 = bitcast %struct.CallInfo* %473 to i8**, !dbg !1184
  store i8* %479, i8** %480, align 8, !dbg !1184, !tbaa !489
  %481 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !1185
  %482 = bitcast %struct.lua_TValue** %481 to i8**, !dbg !1186
  store i8* %479, i8** %482, align 8, !dbg !1186, !tbaa !493
  %483 = load %struct.lua_TValue*, %struct.lua_TValue** %411, align 8, !dbg !1187, !tbaa !426
  %484 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %483, i64 20, !dbg !1188
  %485 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %473, i64 0, i32 2, !dbg !1189
  store %struct.lua_TValue* %484, %struct.lua_TValue** %485, align 8, !dbg !1190, !tbaa !670
  %486 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %473, i64 0, i32 4, !dbg !1191
  store i32 %2, i32* %486, align 8, !dbg !1192, !tbaa !1112
  %487 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 17, !dbg !1193
  %488 = load i8, i8* %487, align 4, !dbg !1193, !tbaa !1128
  %489 = and i8 %488, 1, !dbg !1195
  %490 = icmp eq i8 %489, 0, !dbg !1195
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1196
  br i1 %490, label %494, label %491, !dbg !1196

; <label>:491:                                    ; preds = %472
  tail call void @luaD_callhook(%struct.lua_State* nonnull %0, i32 0, i32 -1) #9, !dbg !1197
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1197
  %492 = load %struct.CallInfo*, %struct.CallInfo** %84, align 8, !dbg !1198, !tbaa !487
  %493 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %492, i64 0, i32 1, !dbg !1198
  br label %494, !dbg !1197

; <label>:494:                                    ; preds = %472, %491
  %495 = phi %struct.lua_TValue** [ %477, %472 ], [ %493, %491 ], !dbg !1198
  %496 = bitcast %struct.lua_TValue** %495 to %struct.CClosure***, !dbg !1198
  %497 = load %struct.CClosure**, %struct.CClosure*** %496, align 8, !dbg !1198, !tbaa !679
  %498 = load %struct.CClosure*, %struct.CClosure** %497, align 8, !dbg !1198, !tbaa !419
  %499 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %498, i64 0, i32 7, !dbg !1199
  %500 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %499, align 8, !dbg !1199, !tbaa !419
  %501 = tail call i32 %500(%struct.lua_State* nonnull %0) #6, !dbg !1200
  %502 = icmp slt i32 %501, 0, !dbg !1202
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1204
  br i1 %502, label %509, label %503, !dbg !1204

; <label>:503:                                    ; preds = %494
  %504 = load %struct.lua_TValue*, %struct.lua_TValue** %411, align 8, !dbg !1205, !tbaa !426
  %505 = sext i32 %501 to i64, !dbg !1207
  %506 = sub nsw i64 0, %505, !dbg !1207
  %507 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %504, i64 %506, !dbg !1207
  %508 = tail call i32 @luaD_poscall(%struct.lua_State* nonnull %0, %struct.lua_TValue* %507) #9, !dbg !1208
  br label %509, !dbg !1209

; <label>:509:                                    ; preds = %503, %494, %403
  %510 = phi i32 [ 0, %403 ], [ 1, %503 ], [ 2, %494 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1210
  br label %511

; <label>:511:                                    ; preds = %509, %398
  %512 = phi i32 [ 0, %398 ], [ %510, %509 ], !dbg !1056
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1211
  ret i32 %512, !dbg !1211
}

; Function Attrs: noredzone nounwind
define hidden i32 @luaD_poscall(%struct.lua_State*, %struct.lua_TValue*) local_unnamed_addr #0 !dbg !1212 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 17, !dbg !1229
  %4 = load i8, i8* %3, align 4, !dbg !1229, !tbaa !1128
  %5 = and i8 %4, 2, !dbg !1231
  %6 = icmp eq i8 %5, 0, !dbg !1231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1232
  br i1 %6, label %7, label %9, !dbg !1232

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1233
  br label %48, !dbg !1232

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 10, !dbg !1242
  %11 = bitcast %struct.lua_TValue** %10 to i64*, !dbg !1242
  %12 = load i64, i64* %11, align 8, !dbg !1242, !tbaa !614
  %13 = ptrtoint %struct.lua_TValue* %1 to i64, !dbg !1242
  %14 = sub i64 %13, %12, !dbg !1242
  tail call void @luaD_callhook(%struct.lua_State* nonnull %0, i32 1, i32 -1) #6, !dbg !1244
  %15 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1245
  %16 = load %struct.CallInfo*, %struct.CallInfo** %15, align 8, !dbg !1245, !tbaa !487
  %17 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %16, i64 0, i32 1, !dbg !1245
  %18 = bitcast %struct.lua_TValue** %17 to %struct.CClosure***, !dbg !1245
  %19 = load %struct.CClosure**, %struct.CClosure*** %18, align 8, !dbg !1245, !tbaa !679
  %20 = load %struct.CClosure*, %struct.CClosure** %19, align 8, !dbg !1245, !tbaa !419
  %21 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %20, i64 0, i32 3, !dbg !1245
  %22 = load i8, i8* %21, align 2, !dbg !1245, !tbaa !419
  %23 = icmp eq i8 %22, 0, !dbg !1245
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1247
  br i1 %23, label %24, label %43, !dbg !1247

; <label>:24:                                     ; preds = %9
  %25 = load i8, i8* %3, align 4, !dbg !1248, !tbaa !1128
  %26 = and i8 %25, 2, !dbg !1250
  %27 = icmp eq i8 %26, 0, !dbg !1250
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1251
  br i1 %27, label %43, label %28, !dbg !1251

; <label>:28:                                     ; preds = %24
  %29 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %16, i64 0, i32 5, !dbg !1252
  %30 = load i32, i32* %29, align 4, !dbg !1253, !tbaa !1109
  %31 = add nsw i32 %30, -1, !dbg !1253
  store i32 %31, i32* %29, align 4, !dbg !1253, !tbaa !1109
  %32 = icmp eq i32 %30, 0, !dbg !1251
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1254
  br i1 %32, label %43, label %33, !dbg !1254

; <label>:33:                                     ; preds = %28, %37
  tail call void @luaD_callhook(%struct.lua_State* nonnull %0, i32 4, i32 -1) #6, !dbg !1255
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1254
  %34 = load i8, i8* %3, align 4, !dbg !1248, !tbaa !1128
  %35 = and i8 %34, 2, !dbg !1250
  %36 = icmp eq i8 %35, 0, !dbg !1250
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1251
  br i1 %36, label %43, label %37, !dbg !1251, !llvm.loop !1256

; <label>:37:                                     ; preds = %33
  %38 = load %struct.CallInfo*, %struct.CallInfo** %15, align 8, !dbg !1259, !tbaa !487
  %39 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %38, i64 0, i32 5, !dbg !1252
  %40 = load i32, i32* %39, align 4, !dbg !1253, !tbaa !1109
  %41 = add nsw i32 %40, -1, !dbg !1253
  store i32 %41, i32* %39, align 4, !dbg !1253, !tbaa !1109
  %42 = icmp eq i32 %40, 0, !dbg !1251
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1254
  br i1 %42, label %43, label %33, !dbg !1254

; <label>:43:                                     ; preds = %33, %37, %28, %9, %24
  %44 = bitcast %struct.lua_TValue** %10 to i8**, !dbg !1260
  %45 = load i8*, i8** %44, align 8, !dbg !1260, !tbaa !614
  %46 = getelementptr inbounds i8, i8* %45, i64 %14, !dbg !1260
  %47 = bitcast i8* %46 to %struct.lua_TValue*, !dbg !1260
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1261
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1262
  br label %48, !dbg !1262

; <label>:48:                                     ; preds = %7, %43
  %49 = phi %struct.CallInfo** [ %8, %7 ], [ %15, %43 ], !dbg !1233
  %50 = phi %struct.lua_TValue* [ %1, %7 ], [ %47, %43 ]
  %51 = load %struct.CallInfo*, %struct.CallInfo** %49, align 8, !dbg !1263, !tbaa !487
  %52 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %51, i64 -1, !dbg !1263
  store %struct.CallInfo* %52, %struct.CallInfo** %49, align 8, !dbg !1263, !tbaa !487
  %53 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %51, i64 0, i32 1, !dbg !1265
  %54 = load %struct.lua_TValue*, %struct.lua_TValue** %53, align 8, !dbg !1265, !tbaa !679
  %55 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %51, i64 0, i32 4, !dbg !1267
  %56 = load i32, i32* %55, align 8, !dbg !1267, !tbaa !1112
  %57 = bitcast %struct.CallInfo* %52 to i64*, !dbg !1269
  %58 = load i64, i64* %57, align 8, !dbg !1269, !tbaa !489
  %59 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !1270
  %60 = bitcast %struct.lua_TValue** %59 to i64*, !dbg !1271
  store i64 %58, i64* %60, align 8, !dbg !1271, !tbaa !493
  %61 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %51, i64 -1, i32 3, !dbg !1272
  %62 = bitcast i32** %61 to i64*, !dbg !1272
  %63 = load i64, i64* %62, align 8, !dbg !1272, !tbaa !897
  %64 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8, !dbg !1273
  %65 = bitcast i32** %64 to i64*, !dbg !1274
  store i64 %63, i64* %65, align 8, !dbg !1274, !tbaa !893
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1276
  %66 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1277
  %67 = icmp eq i32 %56, 0, !dbg !1278
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1279
  br i1 %67, label %85, label %68, !dbg !1279

; <label>:68:                                     ; preds = %48, %74
  %69 = phi %struct.lua_TValue* [ %75, %74 ], [ %50, %48 ]
  %70 = phi %struct.lua_TValue* [ %76, %74 ], [ %54, %48 ]
  %71 = phi i32 [ %83, %74 ], [ %56, %48 ]
  %72 = load %struct.lua_TValue*, %struct.lua_TValue** %66, align 8, !dbg !1277, !tbaa !426
  %73 = icmp ult %struct.lua_TValue* %69, %72, !dbg !1280
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1281
  br i1 %73, label %74, label %87, !dbg !1281

; <label>:74:                                     ; preds = %68
  %75 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %69, i64 1, !dbg !1282
  %76 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %70, i64 1, !dbg !1282
  %77 = bitcast %struct.lua_TValue* %69 to i64*, !dbg !1282
  %78 = bitcast %struct.lua_TValue* %70 to i64*, !dbg !1282
  %79 = load i64, i64* %77, align 8, !dbg !1282
  store i64 %79, i64* %78, align 8, !dbg !1282
  %80 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %69, i64 0, i32 1, !dbg !1282
  %81 = load i32, i32* %80, align 8, !dbg !1282, !tbaa !433
  %82 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %70, i64 0, i32 1, !dbg !1282
  store i32 %81, i32* %82, align 8, !dbg !1282, !tbaa !433
  %83 = add nsw i32 %71, -1, !dbg !1283
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1284
  %84 = icmp eq i32 %83, 0, !dbg !1278
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1279
  br i1 %84, label %85, label %68, !dbg !1279, !llvm.loop !1285

; <label>:85:                                     ; preds = %74, %48
  %86 = phi %struct.lua_TValue* [ %54, %48 ], [ %76, %74 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1287
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1287
  br label %96, !dbg !1287

; <label>:87:                                     ; preds = %68
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1287
  %88 = icmp sgt i32 %71, 0, !dbg !1288
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1287
  br i1 %88, label %89, label %96, !dbg !1287

; <label>:89:                                     ; preds = %87, %89
  %90 = phi %struct.lua_TValue* [ %93, %89 ], [ %70, %87 ]
  %91 = phi i32 [ %92, %89 ], [ %71, %87 ]
  %92 = add nsw i32 %91, -1, !dbg !1289
  %93 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %90, i64 1, !dbg !1290
  %94 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %90, i64 0, i32 1, !dbg !1290
  store i32 0, i32* %94, align 8, !dbg !1290, !tbaa !433
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1287
  %95 = icmp sgt i32 %91, 1, !dbg !1288
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1287
  br i1 %95, label %89, label %96, !dbg !1287, !llvm.loop !1291

; <label>:96:                                     ; preds = %89, %85, %87
  %97 = phi %struct.lua_TValue* [ %70, %87 ], [ %86, %85 ], [ %93, %89 ], !dbg !1292
  store %struct.lua_TValue* %97, %struct.lua_TValue** %66, align 8, !dbg !1293, !tbaa !426
  %98 = add nsw i32 %56, 1, !dbg !1294
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1295
  ret i32 %98, !dbg !1295
}

; Function Attrs: noredzone nounwind
define hidden void @luaD_call(%struct.lua_State*, %struct.lua_TValue*, i32) local_unnamed_addr #0 !dbg !1296 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 15, !dbg !1306
  %5 = load i16, i16* %4, align 8, !dbg !1308, !tbaa !516
  %6 = add i16 %5, 1, !dbg !1308
  store i16 %6, i16* %4, align 8, !dbg !1308, !tbaa !516
  %7 = icmp ugt i16 %6, 199, !dbg !1309
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1310
  br i1 %7, label %8, label %14, !dbg !1310

; <label>:8:                                      ; preds = %3
  %9 = icmp eq i16 %6, 200, !dbg !1311
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1314
  br i1 %9, label %10, label %11, !dbg !1314

; <label>:10:                                     ; preds = %8
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !1315
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1315
  br label %14, !dbg !1315

; <label>:11:                                     ; preds = %8
  %12 = icmp ugt i16 %6, 224, !dbg !1316
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1318
  br i1 %12, label %13, label %14, !dbg !1318

; <label>:13:                                     ; preds = %11
  tail call void @luaD_throw(%struct.lua_State* nonnull %0, i32 5) #9, !dbg !1319
  unreachable

; <label>:14:                                     ; preds = %10, %11, %3
  %15 = tail call i32 @luaD_precall(%struct.lua_State* nonnull %0, %struct.lua_TValue* %1, i32 %2) #9, !dbg !1320
  %16 = icmp eq i32 %15, 0, !dbg !1322
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1323
  br i1 %16, label %17, label %18, !dbg !1323

; <label>:17:                                     ; preds = %14
  tail call void @luaV_execute(%struct.lua_State* nonnull %0, i32 1) #6, !dbg !1324
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1324
  br label %18, !dbg !1324

; <label>:18:                                     ; preds = %17, %14
  %19 = load i16, i16* %4, align 8, !dbg !1325, !tbaa !516
  %20 = add i16 %19, -1, !dbg !1325
  store i16 %20, i16* %4, align 8, !dbg !1325, !tbaa !516
  %21 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1326
  %22 = load %struct.global_State*, %struct.global_State** %21, align 8, !dbg !1326, !tbaa !467
  %23 = getelementptr inbounds %struct.global_State, %struct.global_State* %22, i64 0, i32 14, !dbg !1326
  %24 = load i64, i64* %23, align 8, !dbg !1326, !tbaa !1004
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %22, i64 0, i32 13, !dbg !1326
  %26 = load i64, i64* %25, align 8, !dbg !1326, !tbaa !1005
  %27 = icmp ult i64 %24, %26, !dbg !1326
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1329
  br i1 %27, label %29, label %28, !dbg !1329

; <label>:28:                                     ; preds = %18
  tail call void @luaC_step(%struct.lua_State* nonnull %0) #6, !dbg !1326
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1326
  br label %29, !dbg !1326

; <label>:29:                                     ; preds = %18, %28
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1330
  ret void, !dbg !1330
}

; Function Attrs: noredzone
declare hidden void @luaG_runerror(%struct.lua_State*, i8*, ...) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden void @luaV_execute(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden void @luaC_step(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_resume(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !1331 {
  %3 = alloca %struct.lua_longjmp, align 8
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 3, !dbg !1340
  %5 = load i8, i8* %4, align 2, !dbg !1340, !tbaa !464
  %6 = icmp eq i8 %5, 1, !dbg !1342
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1343
  br i1 %6, label %44, label %7, !dbg !1343

; <label>:7:                                      ; preds = %2
  %8 = icmp eq i8 %5, 0, !dbg !1344
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1345
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %10 = load %struct.CallInfo*, %struct.CallInfo** %9, align 8, !dbg !1346, !tbaa !487
  br i1 %8, label %11, label %15, !dbg !1345

; <label>:11:                                     ; preds = %7
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 12, !dbg !1347
  %13 = load %struct.CallInfo*, %struct.CallInfo** %12, align 8, !dbg !1347, !tbaa !484
  %14 = icmp eq %struct.CallInfo* %10, %13, !dbg !1348
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1349
  br i1 %14, label %44, label %15, !dbg !1349

; <label>:15:                                     ; preds = %7, %11
  %16 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %10, i64 0, i32 0, !dbg !1361
  %17 = load %struct.lua_TValue*, %struct.lua_TValue** %16, align 8, !dbg !1361, !tbaa !489
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1362
  store %struct.lua_TValue* %17, %struct.lua_TValue** %18, align 8, !dbg !1363, !tbaa !426
  %19 = tail call i64 @strlen(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !1364
  %20 = tail call %union.TString* @luaS_newlstr(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i64 %19) #6, !dbg !1364
  %21 = bitcast %struct.lua_TValue* %17 to %union.TString**, !dbg !1364
  store %union.TString* %20, %union.TString** %21, align 8, !dbg !1364, !tbaa !419
  %22 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %17, i64 0, i32 1, !dbg !1364
  store i32 4, i32* %22, align 8, !dbg !1364, !tbaa !433
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 9, !dbg !1365
  %24 = bitcast %struct.lua_TValue** %23 to i64*, !dbg !1365
  %25 = load i64, i64* %24, align 8, !dbg !1365, !tbaa !626
  %26 = bitcast %struct.lua_TValue** %18 to i64*, !dbg !1365
  %27 = load i64, i64* %26, align 8, !dbg !1365, !tbaa !426
  %28 = sub i64 %25, %27, !dbg !1365
  %29 = icmp slt i64 %28, 17, !dbg !1365
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1368
  %30 = inttoptr i64 %27 to %struct.lua_TValue*, !dbg !1368
  br i1 %29, label %31, label %41, !dbg !1368

; <label>:31:                                     ; preds = %15
  %32 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 13, !dbg !1372
  %33 = load i32, i32* %32, align 8, !dbg !1372, !tbaa !619
  %34 = icmp slt i32 %33, 1, !dbg !1373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1374
  br i1 %34, label %37, label %35, !dbg !1374

; <label>:35:                                     ; preds = %31
  %36 = shl nsw i32 %33, 1, !dbg !1375
  tail call void @luaD_reallocstack(%struct.lua_State* nonnull %0, i32 %36) #6, !dbg !1376
  br label %39, !dbg !1376

; <label>:37:                                     ; preds = %31
  %38 = add nsw i32 %33, 1, !dbg !1377
  tail call void @luaD_reallocstack(%struct.lua_State* nonnull %0, i32 %38) #6, !dbg !1378
  br label %39

; <label>:39:                                     ; preds = %35, %37
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1379
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1365
  %40 = load %struct.lua_TValue*, %struct.lua_TValue** %18, align 8, !dbg !1368, !tbaa !426
  br label %41, !dbg !1365

; <label>:41:                                     ; preds = %15, %39
  %42 = phi %struct.lua_TValue* [ %30, %15 ], [ %40, %39 ], !dbg !1368
  %43 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %42, i64 1, !dbg !1368
  store %struct.lua_TValue* %43, %struct.lua_TValue** %18, align 8, !dbg !1368, !tbaa !426
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1380
  br label %174, !dbg !1381

; <label>:44:                                     ; preds = %11, %2
  %45 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 15, !dbg !1382
  %46 = load i16, i16* %45, align 8, !dbg !1382, !tbaa !516
  %47 = icmp ugt i16 %46, 199, !dbg !1384
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1385
  br i1 %47, label %48, label %79, !dbg !1385

; <label>:48:                                     ; preds = %44
  %49 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1389
  %50 = load %struct.CallInfo*, %struct.CallInfo** %49, align 8, !dbg !1389, !tbaa !487
  %51 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %50, i64 0, i32 0, !dbg !1390
  %52 = load %struct.lua_TValue*, %struct.lua_TValue** %51, align 8, !dbg !1390, !tbaa !489
  %53 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1391
  store %struct.lua_TValue* %52, %struct.lua_TValue** %53, align 8, !dbg !1392, !tbaa !426
  %54 = tail call i64 @strlen(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !1393
  %55 = tail call %union.TString* @luaS_newlstr(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i64 %54) #6, !dbg !1393
  %56 = bitcast %struct.lua_TValue* %52 to %union.TString**, !dbg !1393
  store %union.TString* %55, %union.TString** %56, align 8, !dbg !1393, !tbaa !419
  %57 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %52, i64 0, i32 1, !dbg !1393
  store i32 4, i32* %57, align 8, !dbg !1393, !tbaa !433
  %58 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 9, !dbg !1394
  %59 = bitcast %struct.lua_TValue** %58 to i64*, !dbg !1394
  %60 = load i64, i64* %59, align 8, !dbg !1394, !tbaa !626
  %61 = bitcast %struct.lua_TValue** %53 to i64*, !dbg !1394
  %62 = load i64, i64* %61, align 8, !dbg !1394, !tbaa !426
  %63 = sub i64 %60, %62, !dbg !1394
  %64 = icmp slt i64 %63, 17, !dbg !1394
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1395
  %65 = inttoptr i64 %62 to %struct.lua_TValue*, !dbg !1395
  br i1 %64, label %66, label %76, !dbg !1395

; <label>:66:                                     ; preds = %48
  %67 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 13, !dbg !1399
  %68 = load i32, i32* %67, align 8, !dbg !1399, !tbaa !619
  %69 = icmp slt i32 %68, 1, !dbg !1400
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1401
  br i1 %69, label %72, label %70, !dbg !1401

; <label>:70:                                     ; preds = %66
  %71 = shl nsw i32 %68, 1, !dbg !1402
  tail call void @luaD_reallocstack(%struct.lua_State* nonnull %0, i32 %71) #6, !dbg !1403
  br label %74, !dbg !1403

; <label>:72:                                     ; preds = %66
  %73 = add nsw i32 %68, 1, !dbg !1404
  tail call void @luaD_reallocstack(%struct.lua_State* nonnull %0, i32 %73) #6, !dbg !1405
  br label %74

; <label>:74:                                     ; preds = %70, %72
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1406
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1394
  %75 = load %struct.lua_TValue*, %struct.lua_TValue** %53, align 8, !dbg !1395, !tbaa !426
  br label %76, !dbg !1394

; <label>:76:                                     ; preds = %48, %74
  %77 = phi %struct.lua_TValue* [ %65, %48 ], [ %75, %74 ], !dbg !1395
  %78 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %77, i64 1, !dbg !1395
  store %struct.lua_TValue* %78, %struct.lua_TValue** %53, align 8, !dbg !1395, !tbaa !426
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1407
  br label %174, !dbg !1408

; <label>:79:                                     ; preds = %44
  %80 = add i16 %46, 1, !dbg !1409
  store i16 %80, i16* %45, align 8, !dbg !1409, !tbaa !516
  %81 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 16, !dbg !1410
  store i16 %80, i16* %81, align 2, !dbg !1411, !tbaa !513
  %82 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1412
  %83 = load %struct.lua_TValue*, %struct.lua_TValue** %82, align 8, !dbg !1412, !tbaa !426
  %84 = sext i32 %1 to i64, !dbg !1413
  %85 = sub nsw i64 0, %84, !dbg !1413
  %86 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %83, i64 %85, !dbg !1413
  %87 = bitcast %struct.lua_longjmp* %3 to i8*, !dbg !1417
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %87) #8, !dbg !1417
  %88 = getelementptr inbounds %struct.lua_longjmp, %struct.lua_longjmp* %3, i64 0, i32 2, !dbg !1418
  store volatile i32 0, i32* %88, align 8, !dbg !1419, !tbaa !457
  %89 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 26, !dbg !1420
  %90 = bitcast %struct.lua_longjmp** %89 to i64*, !dbg !1420
  %91 = load i64, i64* %90, align 8, !dbg !1420, !tbaa !451
  %92 = bitcast %struct.lua_longjmp* %3 to i64*, !dbg !1421
  store i64 %91, i64* %92, align 8, !dbg !1421, !tbaa !593
  store %struct.lua_longjmp* %3, %struct.lua_longjmp** %89, align 8, !dbg !1422, !tbaa !451
  %93 = getelementptr inbounds %struct.lua_longjmp, %struct.lua_longjmp* %3, i64 0, i32 1, i64 0, !dbg !1423
  %94 = call i32 @setjmp(i64* nonnull %93) #6, !dbg !1423
  %95 = icmp eq i32 %94, 0, !dbg !1423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1424
  br i1 %95, label %96, label %137, !dbg !1424

; <label>:96:                                     ; preds = %79
  %97 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1435
  %98 = load %struct.CallInfo*, %struct.CallInfo** %97, align 8, !dbg !1435, !tbaa !487
  %99 = load i8, i8* %4, align 2, !dbg !1437, !tbaa !464
  %100 = icmp eq i8 %99, 0, !dbg !1439
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1440
  %101 = bitcast %struct.CallInfo* %98 to i64*, !dbg !1440
  br i1 %100, label %102, label %106, !dbg !1440

; <label>:102:                                    ; preds = %96
  %103 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %86, i64 -1, !dbg !1441
  %104 = call i32 @luaD_precall(%struct.lua_State* nonnull %0, %struct.lua_TValue* nonnull %103, i32 -1) #6, !dbg !1444
  %105 = icmp eq i32 %104, 0, !dbg !1445
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1446
  br i1 %105, label %127, label %136, !dbg !1446

; <label>:106:                                    ; preds = %96
  store i8 0, i8* %4, align 2, !dbg !1447, !tbaa !464
  %107 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %98, i64 0, i32 1, !dbg !1449
  %108 = bitcast %struct.lua_TValue** %107 to %struct.CClosure***, !dbg !1449
  %109 = load %struct.CClosure**, %struct.CClosure*** %108, align 8, !dbg !1449, !tbaa !679
  %110 = load %struct.CClosure*, %struct.CClosure** %109, align 8, !dbg !1449, !tbaa !419
  %111 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %110, i64 0, i32 3, !dbg !1449
  %112 = load i8, i8* %111, align 2, !dbg !1449, !tbaa !419
  %113 = icmp eq i8 %112, 0, !dbg !1449
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1451
  br i1 %113, label %123, label %114, !dbg !1451

; <label>:114:                                    ; preds = %106
  %115 = call i32 @luaD_poscall(%struct.lua_State* nonnull %0, %struct.lua_TValue* %86) #6, !dbg !1452
  %116 = icmp eq i32 %115, 0, !dbg !1452
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1455
  br i1 %116, label %127, label %117, !dbg !1455

; <label>:117:                                    ; preds = %114
  %118 = load %struct.CallInfo*, %struct.CallInfo** %97, align 8, !dbg !1456, !tbaa !487
  %119 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %118, i64 0, i32 2, !dbg !1457
  %120 = bitcast %struct.lua_TValue** %119 to i64*, !dbg !1457
  %121 = load i64, i64* %120, align 8, !dbg !1457, !tbaa !670
  %122 = bitcast %struct.lua_TValue** %82 to i64*, !dbg !1458
  store i64 %121, i64* %122, align 8, !dbg !1458, !tbaa !426
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1459
  br label %127, !dbg !1459

; <label>:123:                                    ; preds = %106
  %124 = load i64, i64* %101, align 8, !dbg !1460, !tbaa !489
  %125 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !1461
  %126 = bitcast %struct.lua_TValue** %125 to i64*, !dbg !1462
  store i64 %124, i64* %126, align 8, !dbg !1462, !tbaa !493
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %127

; <label>:127:                                    ; preds = %123, %117, %114, %102
  %128 = bitcast %struct.CallInfo** %97 to i64*, !dbg !1463
  %129 = load i64, i64* %128, align 8, !dbg !1463, !tbaa !487
  %130 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 12, !dbg !1463
  %131 = bitcast %struct.CallInfo** %130 to i64*, !dbg !1463
  %132 = load i64, i64* %131, align 8, !dbg !1463, !tbaa !484
  %133 = sub i64 %129, %132, !dbg !1463
  %134 = sdiv exact i64 %133, 40, !dbg !1463
  %135 = trunc i64 %134 to i32, !dbg !1463
  call void @luaV_execute(%struct.lua_State* nonnull %0, i32 %135) #6, !dbg !1464
  br label %136, !dbg !1465

; <label>:136:                                    ; preds = %102, %127
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1466
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1465
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1467
  br label %137, !dbg !1467

; <label>:137:                                    ; preds = %79, %136
  %138 = load i64, i64* %92, align 8, !dbg !1468, !tbaa !593
  store i64 %138, i64* %90, align 8, !dbg !1469, !tbaa !451
  %139 = load volatile i32, i32* %88, align 8, !dbg !1470, !tbaa !457
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %87) #8, !dbg !1471
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1472
  %140 = icmp eq i32 %139, 0, !dbg !1474
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1476
  br i1 %140, label %167, label %141, !dbg !1476

; <label>:141:                                    ; preds = %137
  %142 = trunc i32 %139 to i8, !dbg !1477
  store i8 %142, i8* %4, align 2, !dbg !1479, !tbaa !464
  %143 = load %struct.lua_TValue*, %struct.lua_TValue** %82, align 8, !dbg !1480, !tbaa !426
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1485
  switch i32 %139, label %160 [
    i32 4, label %144
    i32 5, label %147
    i32 3, label %150
    i32 2, label %150
  ], !dbg !1485

; <label>:144:                                    ; preds = %141
  %145 = call %union.TString* @luaS_newlstr(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 17) #6, !dbg !1486
  %146 = bitcast %struct.lua_TValue* %143 to %union.TString**, !dbg !1486
  store %union.TString* %145, %union.TString** %146, align 8, !dbg !1486, !tbaa !419
  br label %157, !dbg !1487

; <label>:147:                                    ; preds = %141
  %148 = call %union.TString* @luaS_newlstr(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 23) #6, !dbg !1488
  %149 = bitcast %struct.lua_TValue* %143 to %union.TString**, !dbg !1488
  store %union.TString* %148, %union.TString** %149, align 8, !dbg !1488, !tbaa !419
  br label %157, !dbg !1489

; <label>:150:                                    ; preds = %141, %141
  %151 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %143, i64 -1, !dbg !1490
  %152 = bitcast %struct.lua_TValue* %151 to i64*, !dbg !1490
  %153 = bitcast %struct.lua_TValue* %143 to i64*, !dbg !1490
  %154 = load i64, i64* %152, align 8, !dbg !1490
  store i64 %154, i64* %153, align 8, !dbg !1490
  %155 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %143, i64 -1, i32 1, !dbg !1490
  %156 = load i32, i32* %155, align 8, !dbg !1490, !tbaa !433
  br label %157, !dbg !1491

; <label>:157:                                    ; preds = %150, %147, %144
  %158 = phi i32 [ 4, %144 ], [ 4, %147 ], [ %156, %150 ]
  %159 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %143, i64 0, i32 1, !dbg !1492
  store i32 %158, i32* %159, align 8, !dbg !1492, !tbaa !433
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1492
  br label %160, !dbg !1493

; <label>:160:                                    ; preds = %157, %141
  %161 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %143, i64 1, !dbg !1493
  store %struct.lua_TValue* %161, %struct.lua_TValue** %82, align 8, !dbg !1494, !tbaa !426
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1495
  %162 = ptrtoint %struct.lua_TValue* %161 to i64, !dbg !1496
  %163 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1497
  %164 = load %struct.CallInfo*, %struct.CallInfo** %163, align 8, !dbg !1497, !tbaa !487
  %165 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %164, i64 0, i32 2, !dbg !1498
  %166 = bitcast %struct.lua_TValue** %165 to i64*, !dbg !1499
  store i64 %162, i64* %166, align 8, !dbg !1499, !tbaa !670
  br label %170, !dbg !1500

; <label>:167:                                    ; preds = %137
  %168 = load i8, i8* %4, align 2, !dbg !1501, !tbaa !464
  %169 = zext i8 %168 to i32, !dbg !1503
  br label %170

; <label>:170:                                    ; preds = %167, %160
  %171 = phi i32 [ %139, %160 ], [ %169, %167 ], !dbg !1504
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %172 = load i16, i16* %45, align 8, !dbg !1505, !tbaa !516
  %173 = add i16 %172, -1, !dbg !1505
  store i16 %173, i16* %45, align 8, !dbg !1505, !tbaa !516
  br label %174, !dbg !1506

; <label>:174:                                    ; preds = %170, %76, %41
  %175 = phi i32 [ 2, %41 ], [ 2, %76 ], [ %171, %170 ], !dbg !1507
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1346
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1508
  ret i32 %175, !dbg !1508
}

; Function Attrs: noredzone nounwind
define dso_local i32 @lua_yield(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !1509 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 15, !dbg !1515
  %4 = load i16, i16* %3, align 8, !dbg !1515, !tbaa !516
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 16, !dbg !1517
  %6 = load i16, i16* %5, align 2, !dbg !1517, !tbaa !513
  %7 = icmp ugt i16 %4, %6, !dbg !1518
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1519
  br i1 %7, label %8, label %9, !dbg !1519

; <label>:8:                                      ; preds = %2
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !1520
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1520
  br label %9, !dbg !1520

; <label>:9:                                      ; preds = %8, %2
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1521
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8, !dbg !1521, !tbaa !426
  %12 = sext i32 %1 to i64, !dbg !1522
  %13 = sub nsw i64 0, %12, !dbg !1522
  %14 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %11, i64 %13, !dbg !1522
  %15 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !1523
  store %struct.lua_TValue* %14, %struct.lua_TValue** %15, align 8, !dbg !1524, !tbaa !493
  %16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 3, !dbg !1525
  store i8 1, i8* %16, align 2, !dbg !1526, !tbaa !464
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1527
  ret i32 -1, !dbg !1527
}

; Function Attrs: noredzone nounwind
define hidden i32 @luaD_pcall(%struct.lua_State*, void (%struct.lua_State*, i8*)* nocapture, i8*, i64, i64) local_unnamed_addr #0 !dbg !1528 {
  %6 = alloca %struct.lua_longjmp, align 8
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 15, !dbg !1550
  %8 = load i16, i16* %7, align 8, !dbg !1550, !tbaa !516
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7, !dbg !1552
  %10 = bitcast %struct.CallInfo** %9 to i64*, !dbg !1552
  %11 = load i64, i64* %10, align 8, !dbg !1552, !tbaa !487
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 12, !dbg !1552
  %13 = bitcast %struct.CallInfo** %12 to i64*, !dbg !1552
  %14 = load i64, i64* %13, align 8, !dbg !1552, !tbaa !484
  %15 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 18, !dbg !1553
  %16 = load i8, i8* %15, align 1, !dbg !1553, !tbaa !519
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 27, !dbg !1555
  %18 = load i64, i64* %17, align 8, !dbg !1555, !tbaa !565
  store i64 %4, i64* %17, align 8, !dbg !1557, !tbaa !565
  %19 = bitcast %struct.lua_longjmp* %6 to i8*, !dbg !1562
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %19) #8, !dbg !1562
  %20 = getelementptr inbounds %struct.lua_longjmp, %struct.lua_longjmp* %6, i64 0, i32 2, !dbg !1563
  store volatile i32 0, i32* %20, align 8, !dbg !1564, !tbaa !457
  %21 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 26, !dbg !1565
  %22 = bitcast %struct.lua_longjmp** %21 to i64*, !dbg !1565
  %23 = load i64, i64* %22, align 8, !dbg !1565, !tbaa !451
  %24 = bitcast %struct.lua_longjmp* %6 to i64*, !dbg !1566
  store i64 %23, i64* %24, align 8, !dbg !1566, !tbaa !593
  store %struct.lua_longjmp* %6, %struct.lua_longjmp** %21, align 8, !dbg !1567, !tbaa !451
  %25 = getelementptr inbounds %struct.lua_longjmp, %struct.lua_longjmp* %6, i64 0, i32 1, i64 0, !dbg !1568
  %26 = call i32 @setjmp(i64* nonnull %25) #6, !dbg !1568
  %27 = icmp eq i32 %26, 0, !dbg !1568
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1569
  br i1 %27, label %28, label %29, !dbg !1569

; <label>:28:                                     ; preds = %5
  call void %1(%struct.lua_State* nonnull %0, i8* %2) #6, !dbg !1570
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1570
  br label %29, !dbg !1570

; <label>:29:                                     ; preds = %5, %28
  %30 = load i64, i64* %24, align 8, !dbg !1571, !tbaa !593
  store i64 %30, i64* %22, align 8, !dbg !1572, !tbaa !451
  %31 = load volatile i32, i32* %20, align 8, !dbg !1573, !tbaa !457
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %19) #8, !dbg !1574
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1575
  %32 = icmp eq i32 %31, 0, !dbg !1577
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1578
  br i1 %32, label %98, label %33, !dbg !1578

; <label>:33:                                     ; preds = %29
  %34 = sub i64 %11, %14, !dbg !1552
  %35 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 10, !dbg !1580
  %36 = bitcast %struct.lua_TValue** %35 to i8**, !dbg !1580
  %37 = load i8*, i8** %36, align 8, !dbg !1580, !tbaa !614
  %38 = getelementptr inbounds i8, i8* %37, i64 %3, !dbg !1580
  %39 = bitcast i8* %38 to %struct.lua_TValue*, !dbg !1580
  call void @luaF_close(%struct.lua_State* nonnull %0, %struct.lua_TValue* %39) #6, !dbg !1582
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1587
  switch i32 %31, label %59 [
    i32 4, label %40
    i32 5, label %43
    i32 3, label %46
    i32 2, label %46
  ], !dbg !1587

; <label>:40:                                     ; preds = %33
  %41 = call %union.TString* @luaS_newlstr(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 17) #6, !dbg !1588
  %42 = bitcast i8* %38 to %union.TString**, !dbg !1588
  store %union.TString* %41, %union.TString** %42, align 8, !dbg !1588, !tbaa !419
  br label %55, !dbg !1589

; <label>:43:                                     ; preds = %33
  %44 = call %union.TString* @luaS_newlstr(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 23) #6, !dbg !1590
  %45 = bitcast i8* %38 to %union.TString**, !dbg !1590
  store %union.TString* %44, %union.TString** %45, align 8, !dbg !1590, !tbaa !419
  br label %55, !dbg !1591

; <label>:46:                                     ; preds = %33, %33
  %47 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1592
  %48 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8, !dbg !1592, !tbaa !426
  %49 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %48, i64 -1, !dbg !1592
  %50 = bitcast %struct.lua_TValue* %49 to i64*, !dbg !1592
  %51 = bitcast i8* %38 to i64*, !dbg !1592
  %52 = load i64, i64* %50, align 8, !dbg !1592
  store i64 %52, i64* %51, align 8, !dbg !1592
  %53 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %48, i64 -1, i32 1, !dbg !1592
  %54 = load i32, i32* %53, align 8, !dbg !1592, !tbaa !433
  br label %55, !dbg !1593

; <label>:55:                                     ; preds = %46, %43, %40
  %56 = phi i32 [ 4, %40 ], [ 4, %43 ], [ %54, %46 ]
  %57 = getelementptr inbounds i8, i8* %38, i64 8, !dbg !1594
  %58 = bitcast i8* %57 to i32*, !dbg !1594
  store i32 %56, i32* %58, align 8, !dbg !1594, !tbaa !433
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1594
  br label %59, !dbg !1595

; <label>:59:                                     ; preds = %55, %33
  %60 = getelementptr inbounds i8, i8* %38, i64 16, !dbg !1595
  %61 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1596
  %62 = bitcast %struct.lua_TValue** %61 to i8**, !dbg !1597
  store i8* %60, i8** %62, align 8, !dbg !1597, !tbaa !426
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1598
  store i16 %8, i16* %7, align 8, !dbg !1599, !tbaa !516
  %63 = bitcast %struct.CallInfo** %12 to i8**, !dbg !1600
  %64 = load i8*, i8** %63, align 8, !dbg !1600, !tbaa !484
  %65 = getelementptr inbounds i8, i8* %64, i64 %34, !dbg !1600
  %66 = bitcast %struct.CallInfo** %9 to i8**, !dbg !1601
  store i8* %65, i8** %66, align 8, !dbg !1601, !tbaa !487
  %67 = bitcast i8* %65 to i64*, !dbg !1602
  %68 = load i64, i64* %67, align 8, !dbg !1602, !tbaa !489
  %69 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5, !dbg !1603
  %70 = bitcast %struct.lua_TValue** %69 to i64*, !dbg !1604
  store i64 %68, i64* %70, align 8, !dbg !1604, !tbaa !493
  %71 = getelementptr inbounds i8, i8* %65, i64 24, !dbg !1605
  %72 = bitcast i8* %71 to i64*, !dbg !1605
  %73 = load i64, i64* %72, align 8, !dbg !1605, !tbaa !897
  %74 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8, !dbg !1606
  %75 = bitcast i32** %74 to i64*, !dbg !1607
  store i64 %73, i64* %75, align 8, !dbg !1607, !tbaa !893
  store i8 %16, i8* %15, align 1, !dbg !1608, !tbaa !519
  %76 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 14, !dbg !1611
  %77 = load i32, i32* %76, align 4, !dbg !1611, !tbaa !531
  %78 = icmp sgt i32 %77, 20000, !dbg !1612
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1613
  %79 = ptrtoint i8* %64 to i64, !dbg !1613
  br i1 %78, label %80, label %97, !dbg !1613

; <label>:80:                                     ; preds = %59
  %81 = sdiv exact i64 %34, 40, !dbg !1614
  %82 = trunc i64 %81 to i32, !dbg !1614
  %83 = icmp slt i32 %82, 19999, !dbg !1616
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1617
  br i1 %83, label %84, label %96, !dbg !1617

; <label>:84:                                     ; preds = %80
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1622
  %85 = sext i32 %77 to i64, !dbg !1622
  %86 = mul nsw i64 %85, 40, !dbg !1622
  %87 = call i8* @luaM_realloc_(%struct.lua_State* nonnull %0, i8* %64, i64 %86, i64 800000) #6, !dbg !1622
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1622
  store i8* %87, i8** %63, align 8, !dbg !1622, !tbaa !484
  store i32 20000, i32* %76, align 4, !dbg !1623, !tbaa !531
  %88 = load i64, i64* %10, align 8, !dbg !1624, !tbaa !487
  %89 = sub i64 %88, %79, !dbg !1625
  %90 = sdiv exact i64 %89, 40, !dbg !1625
  %91 = bitcast i8* %87 to %struct.CallInfo*, !dbg !1626
  %92 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %91, i64 %90, !dbg !1627
  store %struct.CallInfo* %92, %struct.CallInfo** %9, align 8, !dbg !1628, !tbaa !487
  %93 = getelementptr inbounds i8, i8* %87, i64 799960, !dbg !1629
  %94 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 11, !dbg !1630
  %95 = bitcast %struct.CallInfo** %94 to i8**, !dbg !1631
  store i8* %93, i8** %95, align 8, !dbg !1631, !tbaa !558
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1632
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1633
  br label %96, !dbg !1633

; <label>:96:                                     ; preds = %84, %80
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1634
  br label %97, !dbg !1634

; <label>:97:                                     ; preds = %59, %96
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1635
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1636
  br label %98, !dbg !1636

; <label>:98:                                     ; preds = %29, %97
  store i64 %18, i64* %17, align 8, !dbg !1637, !tbaa !565
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1638
  ret i32 %31, !dbg !1638
}

; Function Attrs: noredzone
declare hidden void @luaF_close(%struct.lua_State*, %struct.lua_TValue*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define hidden i32 @luaD_protectedparser(%struct.lua_State*, %struct.Zio*, i8*) local_unnamed_addr #0 !dbg !1639 {
  %4 = alloca %struct.SParser, align 8
  %5 = bitcast %struct.SParser* %4 to i8*, !dbg !1651
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %5) #8, !dbg !1651
  %6 = getelementptr inbounds %struct.SParser, %struct.SParser* %4, i64 0, i32 0, !dbg !1652
  store %struct.Zio* %1, %struct.Zio** %6, align 8, !dbg !1653, !tbaa !1654
  %7 = getelementptr inbounds %struct.SParser, %struct.SParser* %4, i64 0, i32 2, !dbg !1656
  store i8* %2, i8** %7, align 8, !dbg !1657, !tbaa !1658
  %8 = getelementptr inbounds %struct.SParser, %struct.SParser* %4, i64 0, i32 1, i32 0, !dbg !1659
  store i8* null, i8** %8, align 8, !dbg !1659, !tbaa !1660
  %9 = getelementptr inbounds %struct.SParser, %struct.SParser* %4, i64 0, i32 1, i32 2, !dbg !1659
  store i64 0, i64* %9, align 8, !dbg !1659, !tbaa !1661
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1662
  %11 = bitcast %struct.lua_TValue** %10 to i64*, !dbg !1662
  %12 = load i64, i64* %11, align 8, !dbg !1662, !tbaa !426
  %13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 10, !dbg !1662
  %14 = bitcast %struct.lua_TValue** %13 to i64*, !dbg !1662
  %15 = load i64, i64* %14, align 8, !dbg !1662, !tbaa !614
  %16 = sub i64 %12, %15, !dbg !1662
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 27, !dbg !1663
  %18 = load i64, i64* %17, align 8, !dbg !1663, !tbaa !565
  %19 = call i32 @luaD_pcall(%struct.lua_State* %0, void (%struct.lua_State*, i8*)* nonnull @f_parser, i8* nonnull %5, i64 %16, i64 %18) #9, !dbg !1664
  %20 = load i8*, i8** %8, align 8, !dbg !1666, !tbaa !1660
  %21 = load i64, i64* %9, align 8, !dbg !1666, !tbaa !1661
  %22 = call i8* @luaM_realloc_(%struct.lua_State* %0, i8* %20, i64 %21, i64 0) #6, !dbg !1666
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %5) #8, !dbg !1667
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1668
  ret i32 %19, !dbg !1668
}

; Function Attrs: noredzone nounwind
define internal void @f_parser(%struct.lua_State*, i8*) #0 !dbg !1669 {
  %3 = bitcast i8* %1 to %struct.Zio**, !dbg !1685
  %4 = load %struct.Zio*, %struct.Zio** %3, align 8, !dbg !1685, !tbaa !1654
  %5 = tail call i32 @luaZ_lookahead(%struct.Zio* %4) #6, !dbg !1686
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6, !dbg !1688
  %7 = load %struct.global_State*, %struct.global_State** %6, align 8, !dbg !1688, !tbaa !467
  %8 = getelementptr inbounds %struct.global_State, %struct.global_State* %7, i64 0, i32 14, !dbg !1688
  %9 = load i64, i64* %8, align 8, !dbg !1688, !tbaa !1004
  %10 = getelementptr inbounds %struct.global_State, %struct.global_State* %7, i64 0, i32 13, !dbg !1688
  %11 = load i64, i64* %10, align 8, !dbg !1688, !tbaa !1005
  %12 = icmp ult i64 %9, %11, !dbg !1688
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1691
  br i1 %12, label %14, label %13, !dbg !1691

; <label>:13:                                     ; preds = %2
  tail call void @luaC_step(%struct.lua_State* nonnull %0) #6, !dbg !1688
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1688
  br label %14, !dbg !1688

; <label>:14:                                     ; preds = %2, %13
  %15 = load %struct.Zio*, %struct.Zio** %3, align 8, !dbg !1692, !tbaa !1654
  %16 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !1693
  %17 = bitcast i8* %16 to %struct.Mbuffer*, !dbg !1693
  %18 = getelementptr inbounds i8, i8* %1, i64 32, !dbg !1694
  %19 = bitcast i8* %18 to i8**, !dbg !1694
  %20 = load i8*, i8** %19, align 8, !dbg !1694, !tbaa !1658
  %21 = tail call %struct.Proto* @luaY_parser(%struct.lua_State* nonnull %0, %struct.Zio* %15, %struct.Mbuffer* nonnull %17, i8* %20) #6, !dbg !1695
  %22 = getelementptr inbounds %struct.Proto, %struct.Proto* %21, i64 0, i32 19, !dbg !1697
  %23 = load i8, i8* %22, align 8, !dbg !1697, !tbaa !1698
  %24 = zext i8 %23 to i32, !dbg !1699
  %25 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, i32 0, i32 0, !dbg !1700
  %26 = bitcast %union.GCObject** %25 to %struct.Table**, !dbg !1700
  %27 = load %struct.Table*, %struct.Table** %26, align 8, !dbg !1700, !tbaa !419
  %28 = tail call %union.Closure* @luaF_newLclosure(%struct.lua_State* nonnull %0, i32 %24, %struct.Table* %27) #6, !dbg !1701
  %29 = getelementptr inbounds %union.Closure, %union.Closure* %28, i64 0, i32 0, i32 7, !dbg !1703
  %30 = bitcast i32 (%struct.lua_State*)** %29 to %struct.Proto**, !dbg !1703
  store %struct.Proto* %21, %struct.Proto** %30, align 8, !dbg !1704, !tbaa !419
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1706
  %31 = load i8, i8* %22, align 8, !dbg !1708, !tbaa !1698
  %32 = icmp eq i8 %31, 0, !dbg !1710
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1711
  br i1 %32, label %44, label %33, !dbg !1711

; <label>:33:                                     ; preds = %14
  %34 = getelementptr inbounds %union.Closure, %union.Closure* %28, i64 0, i32 0, i32 8
  %35 = bitcast [1 x %struct.lua_TValue]* %34 to [1 x %struct.UpVal*]*
  br label %36, !dbg !1711

; <label>:36:                                     ; preds = %33, %36
  %37 = phi i64 [ 0, %33 ], [ %40, %36 ]
  %38 = tail call %struct.UpVal* @luaF_newupval(%struct.lua_State* %0) #6, !dbg !1712
  %39 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %35, i64 0, i64 %37, !dbg !1713
  store %struct.UpVal* %38, %struct.UpVal** %39, align 8, !dbg !1714, !tbaa !419
  %40 = add nuw nsw i64 %37, 1, !dbg !1715
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1716
  %41 = load i8, i8* %22, align 8, !dbg !1708, !tbaa !1698
  %42 = zext i8 %41 to i64, !dbg !1710
  %43 = icmp ult i64 %40, %42, !dbg !1710
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1711
  br i1 %43, label %36, label %44, !dbg !1711, !llvm.loop !1717

; <label>:44:                                     ; preds = %36, %14
  %45 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4, !dbg !1719
  %46 = load %struct.lua_TValue*, %struct.lua_TValue** %45, align 8, !dbg !1719, !tbaa !426
  %47 = bitcast %struct.lua_TValue* %46 to %union.Closure**, !dbg !1719
  store %union.Closure* %28, %union.Closure** %47, align 8, !dbg !1719, !tbaa !419
  %48 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %46, i64 0, i32 1, !dbg !1719
  store i32 6, i32* %48, align 8, !dbg !1719, !tbaa !433
  %49 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 9, !dbg !1720
  %50 = bitcast %struct.lua_TValue** %49 to i64*, !dbg !1720
  %51 = load i64, i64* %50, align 8, !dbg !1720, !tbaa !626
  %52 = bitcast %struct.lua_TValue** %45 to i64*, !dbg !1720
  %53 = load i64, i64* %52, align 8, !dbg !1720, !tbaa !426
  %54 = sub i64 %51, %53, !dbg !1720
  %55 = icmp slt i64 %54, 17, !dbg !1720
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1723
  %56 = inttoptr i64 %53 to %struct.lua_TValue*, !dbg !1723
  br i1 %55, label %57, label %67, !dbg !1723

; <label>:57:                                     ; preds = %44
  %58 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 13, !dbg !1727
  %59 = load i32, i32* %58, align 8, !dbg !1727, !tbaa !619
  %60 = icmp slt i32 %59, 1, !dbg !1728
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1729
  br i1 %60, label %63, label %61, !dbg !1729

; <label>:61:                                     ; preds = %57
  %62 = shl nsw i32 %59, 1, !dbg !1730
  tail call void @luaD_reallocstack(%struct.lua_State* nonnull %0, i32 %62) #6, !dbg !1731
  br label %65, !dbg !1731

; <label>:63:                                     ; preds = %57
  %64 = add nsw i32 %59, 1, !dbg !1732
  tail call void @luaD_reallocstack(%struct.lua_State* nonnull %0, i32 %64) #6, !dbg !1733
  br label %65

; <label>:65:                                     ; preds = %61, %63
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1734
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1720
  %66 = load %struct.lua_TValue*, %struct.lua_TValue** %45, align 8, !dbg !1723, !tbaa !426
  br label %67, !dbg !1720

; <label>:67:                                     ; preds = %44, %65
  %68 = phi %struct.lua_TValue* [ %56, %44 ], [ %66, %65 ], !dbg !1723
  %69 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %68, i64 1, !dbg !1723
  store %struct.lua_TValue* %69, %struct.lua_TValue** %45, align 8, !dbg !1723, !tbaa !426
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1735
  ret void, !dbg !1735
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
!436 = !DILocation(line: 0, scope: !403)
!437 = !DILocation(line: 67, column: 19, scope: !394)
!438 = !DILocation(line: 67, column: 6, scope: !394)
!439 = !DILocation(line: 67, column: 10, scope: !394)
!440 = !DILocation(line: 68, column: 1, scope: !394)
!441 = distinct !DISubprogram(name: "luaD_throw", scope: !1, file: !1, line: 94, type: !442, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !444)
!442 = !DISubroutineType(types: !443)
!443 = !{null, !148, !104}
!444 = !{!445, !446}
!445 = !DILocalVariable(name: "L", arg: 1, scope: !441, file: !1, line: 94, type: !148)
!446 = !DILocalVariable(name: "errcode", arg: 2, scope: !441, file: !1, line: 94, type: !104)
!447 = !DILocation(line: 94, column: 29, scope: !441)
!448 = !DILocation(line: 94, column: 36, scope: !441)
!449 = !DILocation(line: 95, column: 10, scope: !450)
!450 = distinct !DILexicalBlock(scope: !441, file: !1, line: 95, column: 7)
!451 = !{!427, !428, i64 168}
!452 = !DILocation(line: 95, column: 7, scope: !450)
!453 = !DILocation(line: 95, column: 7, scope: !441)
!454 = !DILocation(line: 96, column: 18, scope: !455)
!455 = distinct !DILexicalBlock(scope: !450, file: !1, line: 95, column: 20)
!456 = !DILocation(line: 96, column: 25, scope: !455)
!457 = !{!458, !429, i64 72}
!458 = !{!"lua_longjmp", !428, i64 0, !420, i64 8, !429, i64 72}
!459 = !DILocation(line: 97, column: 5, scope: !455)
!460 = !DILocation(line: 100, column: 17, scope: !461)
!461 = distinct !DILexicalBlock(scope: !450, file: !1, line: 99, column: 8)
!462 = !DILocation(line: 100, column: 8, scope: !461)
!463 = !DILocation(line: 100, column: 15, scope: !461)
!464 = !{!427, !420, i64 10}
!465 = !DILocation(line: 101, column: 9, scope: !466)
!466 = distinct !DILexicalBlock(scope: !461, file: !1, line: 101, column: 9)
!467 = !{!427, !428, i64 32}
!468 = !DILocation(line: 101, column: 15, scope: !466)
!469 = !{!470, !428, i64 152}
!470 = !{!"global_State", !471, i64 0, !428, i64 16, !428, i64 24, !420, i64 32, !420, i64 33, !429, i64 36, !428, i64 40, !428, i64 48, !428, i64 56, !428, i64 64, !428, i64 72, !428, i64 80, !472, i64 88, !432, i64 112, !432, i64 120, !432, i64 128, !432, i64 136, !429, i64 144, !429, i64 148, !428, i64 152, !431, i64 160, !428, i64 176, !473, i64 184, !420, i64 224, !420, i64 296}
!471 = !{!"stringtable", !428, i64 0, !429, i64 8, !429, i64 12}
!472 = !{!"Mbuffer", !428, i64 0, !432, i64 8, !432, i64 16}
!473 = !{!"UpVal", !428, i64 0, !420, i64 8, !420, i64 9, !428, i64 16, !420, i64 24}
!474 = !DILocation(line: 101, column: 9, scope: !461)
!475 = !DILocalVariable(name: "L", arg: 1, scope: !476, file: !1, line: 81, type: !148)
!476 = distinct !DISubprogram(name: "resetstack", scope: !1, file: !1, line: 81, type: !442, isLocal: true, isDefinition: true, scopeLine: 81, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !477)
!477 = !{!475, !478}
!478 = !DILocalVariable(name: "status", arg: 2, scope: !476, file: !1, line: 81, type: !104)
!479 = !DILocation(line: 81, column: 36, scope: !476, inlinedAt: !480)
!480 = distinct !DILocation(line: 102, column: 7, scope: !481)
!481 = distinct !DILexicalBlock(scope: !466, file: !1, line: 101, column: 22)
!482 = !DILocation(line: 81, column: 43, scope: !476, inlinedAt: !480)
!483 = !DILocation(line: 82, column: 14, scope: !476, inlinedAt: !480)
!484 = !{!427, !428, i64 80}
!485 = !DILocation(line: 82, column: 6, scope: !476, inlinedAt: !480)
!486 = !DILocation(line: 82, column: 9, scope: !476, inlinedAt: !480)
!487 = !{!427, !428, i64 40}
!488 = !DILocation(line: 83, column: 20, scope: !476, inlinedAt: !480)
!489 = !{!490, !428, i64 0}
!490 = !{!"CallInfo", !428, i64 0, !428, i64 8, !428, i64 16, !428, i64 24, !429, i64 32, !429, i64 36}
!491 = !DILocation(line: 83, column: 6, scope: !476, inlinedAt: !480)
!492 = !DILocation(line: 83, column: 11, scope: !476, inlinedAt: !480)
!493 = !{!427, !428, i64 24}
!494 = !DILocation(line: 84, column: 3, scope: !476, inlinedAt: !480)
!495 = !DILocation(line: 85, column: 34, scope: !476, inlinedAt: !480)
!496 = !DILocation(line: 51, column: 35, scope: !394, inlinedAt: !497)
!497 = distinct !DILocation(line: 85, column: 3, scope: !476, inlinedAt: !480)
!498 = !DILocation(line: 51, column: 42, scope: !394, inlinedAt: !497)
!499 = !DILocation(line: 51, column: 57, scope: !394, inlinedAt: !497)
!500 = !DILocation(line: 52, column: 3, scope: !394, inlinedAt: !497)
!501 = !DILocation(line: 54, column: 7, scope: !402, inlinedAt: !497)
!502 = !DILocation(line: 55, column: 7, scope: !403, inlinedAt: !497)
!503 = !DILocation(line: 58, column: 7, scope: !406, inlinedAt: !497)
!504 = !DILocation(line: 59, column: 7, scope: !407, inlinedAt: !497)
!505 = !DILocation(line: 63, column: 7, scope: !409, inlinedAt: !497)
!506 = !DILocation(line: 64, column: 7, scope: !410, inlinedAt: !497)
!507 = !DILocation(line: 0, scope: !481)
!508 = !DILocation(line: 67, column: 19, scope: !394, inlinedAt: !497)
!509 = !DILocation(line: 67, column: 6, scope: !394, inlinedAt: !497)
!510 = !DILocation(line: 67, column: 10, scope: !394, inlinedAt: !497)
!511 = !DILocation(line: 68, column: 1, scope: !394, inlinedAt: !497)
!512 = !DILocation(line: 86, column: 19, scope: !476, inlinedAt: !480)
!513 = !{!427, !430, i64 98}
!514 = !DILocation(line: 86, column: 6, scope: !476, inlinedAt: !480)
!515 = !DILocation(line: 86, column: 14, scope: !476, inlinedAt: !480)
!516 = !{!427, !430, i64 96}
!517 = !DILocation(line: 87, column: 6, scope: !476, inlinedAt: !480)
!518 = !DILocation(line: 87, column: 16, scope: !476, inlinedAt: !480)
!519 = !{!427, !420, i64 101}
!520 = !DILocalVariable(name: "L", arg: 1, scope: !521, file: !1, line: 71, type: !148)
!521 = distinct !DISubprogram(name: "restore_stack_limit", scope: !1, file: !1, line: 71, type: !522, isLocal: true, isDefinition: true, scopeLine: 71, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !524)
!522 = !DISubroutineType(types: !523)
!523 = !{null, !148}
!524 = !{!520, !525}
!525 = !DILocalVariable(name: "inuse", scope: !526, file: !1, line: 74, type: !104)
!526 = distinct !DILexicalBlock(scope: !527, file: !1, line: 73, column: 35)
!527 = distinct !DILexicalBlock(scope: !521, file: !1, line: 73, column: 7)
!528 = !DILocation(line: 71, column: 45, scope: !521, inlinedAt: !529)
!529 = distinct !DILocation(line: 88, column: 3, scope: !476, inlinedAt: !480)
!530 = !DILocation(line: 73, column: 10, scope: !527, inlinedAt: !529)
!531 = !{!427, !429, i64 92}
!532 = !DILocation(line: 73, column: 18, scope: !527, inlinedAt: !529)
!533 = !DILocation(line: 73, column: 7, scope: !521, inlinedAt: !529)
!534 = !DILocation(line: 74, column: 17, scope: !526, inlinedAt: !529)
!535 = !DILocation(line: 74, column: 9, scope: !526, inlinedAt: !529)
!536 = !DILocation(line: 75, column: 19, scope: !537, inlinedAt: !529)
!537 = distinct !DILexicalBlock(scope: !526, file: !1, line: 75, column: 9)
!538 = !DILocation(line: 75, column: 9, scope: !526, inlinedAt: !529)
!539 = !DILocalVariable(name: "L", arg: 1, scope: !540, file: !1, line: 152, type: !148)
!540 = distinct !DISubprogram(name: "luaD_reallocCI", scope: !1, file: !1, line: 152, type: !442, isLocal: false, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !541)
!541 = !{!539, !542, !543}
!542 = !DILocalVariable(name: "newsize", arg: 2, scope: !540, file: !1, line: 152, type: !104)
!543 = !DILocalVariable(name: "oldci", scope: !540, file: !1, line: 153, type: !238)
!544 = !DILocation(line: 152, column: 33, scope: !540, inlinedAt: !545)
!545 = distinct !DILocation(line: 76, column: 7, scope: !537, inlinedAt: !529)
!546 = !DILocation(line: 152, column: 40, scope: !540, inlinedAt: !545)
!547 = !DILocation(line: 153, column: 13, scope: !540, inlinedAt: !545)
!548 = !DILocation(line: 154, column: 3, scope: !540, inlinedAt: !545)
!549 = !DILocation(line: 155, column: 14, scope: !540, inlinedAt: !545)
!550 = !DILocation(line: 156, column: 15, scope: !540, inlinedAt: !545)
!551 = !DILocation(line: 156, column: 18, scope: !540, inlinedAt: !545)
!552 = !DILocation(line: 156, column: 32, scope: !540, inlinedAt: !545)
!553 = !DILocation(line: 156, column: 27, scope: !540, inlinedAt: !545)
!554 = !DILocation(line: 156, column: 9, scope: !540, inlinedAt: !545)
!555 = !DILocation(line: 157, column: 39, scope: !540, inlinedAt: !545)
!556 = !DILocation(line: 157, column: 6, scope: !540, inlinedAt: !545)
!557 = !DILocation(line: 157, column: 13, scope: !540, inlinedAt: !545)
!558 = !{!427, !428, i64 72}
!559 = !DILocation(line: 158, column: 1, scope: !540, inlinedAt: !545)
!560 = !DILocation(line: 76, column: 7, scope: !537, inlinedAt: !529)
!561 = !DILocation(line: 77, column: 3, scope: !526, inlinedAt: !529)
!562 = !DILocation(line: 78, column: 1, scope: !521, inlinedAt: !529)
!563 = !DILocation(line: 89, column: 6, scope: !476, inlinedAt: !480)
!564 = !DILocation(line: 89, column: 14, scope: !476, inlinedAt: !480)
!565 = !{!427, !432, i64 176}
!566 = !DILocation(line: 90, column: 15, scope: !476, inlinedAt: !480)
!567 = !DILocation(line: 91, column: 1, scope: !476, inlinedAt: !480)
!568 = !DILocation(line: 104, column: 7, scope: !481)
!569 = !DILocation(line: 104, column: 13, scope: !481)
!570 = !DILocation(line: 105, column: 5, scope: !481)
!571 = !DILocation(line: 106, column: 5, scope: !461)
!572 = distinct !DISubprogram(name: "luaD_rawrunprotected", scope: !1, file: !1, line: 111, type: !573, isLocal: false, isDefinition: true, scopeLine: 111, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !580)
!573 = !DISubroutineType(types: !574)
!574 = !{!104, !148, !575, !52}
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "Pfunc", file: !576, line: 38, baseType: !577)
!576 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/ldo.h", directory: "/root/.unikraft/apps/redis/build")
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DISubroutineType(types: !579)
!579 = !{null, !148, !52}
!580 = !{!581, !582, !583, !584}
!581 = !DILocalVariable(name: "L", arg: 1, scope: !572, file: !1, line: 111, type: !148)
!582 = !DILocalVariable(name: "f", arg: 2, scope: !572, file: !1, line: 111, type: !575)
!583 = !DILocalVariable(name: "ud", arg: 3, scope: !572, file: !1, line: 111, type: !52)
!584 = !DILocalVariable(name: "lj", scope: !572, file: !1, line: 112, type: !296)
!585 = !DILocation(line: 111, column: 38, scope: !572)
!586 = !DILocation(line: 111, column: 47, scope: !572)
!587 = !DILocation(line: 111, column: 56, scope: !572)
!588 = !DILocation(line: 112, column: 3, scope: !572)
!589 = !DILocation(line: 113, column: 6, scope: !572)
!590 = !DILocation(line: 113, column: 13, scope: !572)
!591 = !DILocation(line: 114, column: 20, scope: !572)
!592 = !DILocation(line: 114, column: 15, scope: !572)
!593 = !{!458, !428, i64 0}
!594 = !DILocation(line: 115, column: 15, scope: !572)
!595 = !DILocation(line: 116, column: 3, scope: !596)
!596 = distinct !DILexicalBlock(scope: !572, file: !1, line: 116, column: 3)
!597 = !DILocation(line: 116, column: 3, scope: !572)
!598 = !DILocation(line: 116, column: 3, scope: !599)
!599 = distinct !DILexicalBlock(scope: !596, file: !1, line: 116, column: 3)
!600 = !DILocation(line: 119, column: 20, scope: !572)
!601 = !DILocation(line: 119, column: 15, scope: !572)
!602 = !DILocation(line: 120, column: 13, scope: !572)
!603 = !DILocation(line: 121, column: 1, scope: !572)
!604 = !DILocation(line: 120, column: 3, scope: !572)
!605 = distinct !DISubprogram(name: "luaD_reallocstack", scope: !1, file: !1, line: 141, type: !442, isLocal: false, isDefinition: true, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !606)
!606 = !{!607, !608, !609, !610}
!607 = !DILocalVariable(name: "L", arg: 1, scope: !605, file: !1, line: 141, type: !148)
!608 = !DILocalVariable(name: "newsize", arg: 2, scope: !605, file: !1, line: 141, type: !104)
!609 = !DILocalVariable(name: "oldstack", scope: !605, file: !1, line: 142, type: !90)
!610 = !DILocalVariable(name: "realsize", scope: !605, file: !1, line: 143, type: !104)
!611 = !DILocation(line: 141, column: 36, scope: !605)
!612 = !DILocation(line: 141, column: 43, scope: !605)
!613 = !DILocation(line: 142, column: 25, scope: !605)
!614 = !{!427, !428, i64 64}
!615 = !DILocation(line: 142, column: 11, scope: !605)
!616 = !DILocation(line: 143, column: 30, scope: !605)
!617 = !DILocation(line: 143, column: 7, scope: !605)
!618 = !DILocation(line: 145, column: 3, scope: !605)
!619 = !{!427, !429, i64 88}
!620 = !DILocation(line: 146, column: 6, scope: !605)
!621 = !DILocation(line: 146, column: 16, scope: !605)
!622 = !DILocation(line: 147, column: 22, scope: !605)
!623 = !DILocation(line: 147, column: 27, scope: !605)
!624 = !DILocation(line: 147, column: 6, scope: !605)
!625 = !DILocation(line: 147, column: 17, scope: !605)
!626 = !{!427, !428, i64 56}
!627 = !DILocalVariable(name: "L", arg: 1, scope: !628, file: !1, line: 126, type: !148)
!628 = distinct !DISubprogram(name: "correctstack", scope: !1, file: !1, line: 126, type: !629, isLocal: true, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !631)
!629 = !DISubroutineType(types: !630)
!630 = !{null, !148, !90}
!631 = !{!627, !632, !633, !634}
!632 = !DILocalVariable(name: "oldstack", arg: 2, scope: !628, file: !1, line: 126, type: !90)
!633 = !DILocalVariable(name: "ci", scope: !628, file: !1, line: 127, type: !238)
!634 = !DILocalVariable(name: "up", scope: !628, file: !1, line: 128, type: !26)
!635 = !DILocation(line: 126, column: 38, scope: !628, inlinedAt: !636)
!636 = distinct !DILocation(line: 148, column: 3, scope: !605)
!637 = !DILocation(line: 126, column: 49, scope: !628, inlinedAt: !636)
!638 = !DILocation(line: 129, column: 16, scope: !628, inlinedAt: !636)
!639 = !DILocation(line: 129, column: 20, scope: !628, inlinedAt: !636)
!640 = !DILocation(line: 129, column: 32, scope: !628, inlinedAt: !636)
!641 = !DILocation(line: 129, column: 10, scope: !628, inlinedAt: !636)
!642 = !DILocation(line: 130, column: 16, scope: !643, inlinedAt: !636)
!643 = distinct !DILexicalBlock(scope: !628, file: !1, line: 130, column: 3)
!644 = !{!427, !428, i64 152}
!645 = !DILocation(line: 128, column: 13, scope: !628, inlinedAt: !636)
!646 = !DILocation(line: 130, column: 8, scope: !643, inlinedAt: !636)
!647 = !DILocation(line: 130, column: 30, scope: !648, inlinedAt: !636)
!648 = distinct !DILexicalBlock(scope: !643, file: !1, line: 130, column: 3)
!649 = !DILocation(line: 130, column: 3, scope: !643, inlinedAt: !636)
!650 = !DILocation(line: 131, column: 34, scope: !648, inlinedAt: !636)
!651 = !DILocation(line: 131, column: 36, scope: !648, inlinedAt: !636)
!652 = !DILocation(line: 131, column: 48, scope: !648, inlinedAt: !636)
!653 = !DILocation(line: 131, column: 19, scope: !648, inlinedAt: !636)
!654 = !DILocation(line: 130, column: 52, scope: !648, inlinedAt: !636)
!655 = !DILocation(line: 130, column: 3, scope: !648, inlinedAt: !636)
!656 = distinct !{!656, !657, !658}
!657 = !DILocation(line: 130, column: 3, scope: !643)
!658 = !DILocation(line: 131, column: 53, scope: !643)
!659 = !DILocation(line: 131, column: 53, scope: !648, inlinedAt: !636)
!660 = !DILocation(line: 132, column: 16, scope: !661, inlinedAt: !636)
!661 = distinct !DILexicalBlock(scope: !628, file: !1, line: 132, column: 3)
!662 = !DILocation(line: 127, column: 13, scope: !628, inlinedAt: !636)
!663 = !DILocation(line: 132, column: 8, scope: !661, inlinedAt: !636)
!664 = !DILocation(line: 132, column: 34, scope: !665, inlinedAt: !636)
!665 = distinct !DILexicalBlock(scope: !661, file: !1, line: 132, column: 3)
!666 = !DILocation(line: 132, column: 28, scope: !665, inlinedAt: !636)
!667 = !DILocation(line: 132, column: 3, scope: !661, inlinedAt: !636)
!668 = !DILocation(line: 133, column: 20, scope: !669, inlinedAt: !636)
!669 = distinct !DILexicalBlock(scope: !665, file: !1, line: 132, column: 44)
!670 = !{!490, !428, i64 16}
!671 = !DILocation(line: 133, column: 24, scope: !669, inlinedAt: !636)
!672 = !DILocation(line: 133, column: 36, scope: !669, inlinedAt: !636)
!673 = !DILocation(line: 133, column: 13, scope: !669, inlinedAt: !636)
!674 = !DILocation(line: 134, column: 21, scope: !669, inlinedAt: !636)
!675 = !DILocation(line: 134, column: 26, scope: !669, inlinedAt: !636)
!676 = !DILocation(line: 134, column: 38, scope: !669, inlinedAt: !636)
!677 = !DILocation(line: 134, column: 14, scope: !669, inlinedAt: !636)
!678 = !DILocation(line: 135, column: 21, scope: !669, inlinedAt: !636)
!679 = !{!490, !428, i64 8}
!680 = !DILocation(line: 135, column: 26, scope: !669, inlinedAt: !636)
!681 = !DILocation(line: 135, column: 38, scope: !669, inlinedAt: !636)
!682 = !DILocation(line: 135, column: 14, scope: !669, inlinedAt: !636)
!683 = !DILocation(line: 132, column: 40, scope: !665, inlinedAt: !636)
!684 = !DILocation(line: 132, column: 3, scope: !665, inlinedAt: !636)
!685 = distinct !{!685, !686, !687}
!686 = !DILocation(line: 132, column: 3, scope: !661)
!687 = !DILocation(line: 136, column: 3, scope: !661)
!688 = !DILocation(line: 137, column: 17, scope: !628, inlinedAt: !636)
!689 = !DILocation(line: 137, column: 22, scope: !628, inlinedAt: !636)
!690 = !DILocation(line: 137, column: 39, scope: !628, inlinedAt: !636)
!691 = !DILocation(line: 137, column: 34, scope: !628, inlinedAt: !636)
!692 = !DILocation(line: 137, column: 11, scope: !628, inlinedAt: !636)
!693 = !DILocation(line: 138, column: 1, scope: !628, inlinedAt: !636)
!694 = !DILocation(line: 149, column: 1, scope: !605)
!695 = !DILocation(line: 152, column: 33, scope: !540)
!696 = !DILocation(line: 152, column: 40, scope: !540)
!697 = !DILocation(line: 153, column: 24, scope: !540)
!698 = !DILocation(line: 153, column: 13, scope: !540)
!699 = !DILocation(line: 154, column: 3, scope: !540)
!700 = !DILocation(line: 155, column: 6, scope: !540)
!701 = !DILocation(line: 157, column: 26, scope: !540)
!702 = !DILocation(line: 155, column: 14, scope: !540)
!703 = !DILocation(line: 156, column: 15, scope: !540)
!704 = !DILocation(line: 156, column: 18, scope: !540)
!705 = !DILocation(line: 156, column: 32, scope: !540)
!706 = !DILocation(line: 156, column: 27, scope: !540)
!707 = !DILocation(line: 156, column: 9, scope: !540)
!708 = !DILocation(line: 157, column: 39, scope: !540)
!709 = !DILocation(line: 157, column: 6, scope: !540)
!710 = !DILocation(line: 157, column: 13, scope: !540)
!711 = !DILocation(line: 158, column: 1, scope: !540)
!712 = distinct !DISubprogram(name: "luaD_growstack", scope: !1, file: !1, line: 161, type: !442, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !713)
!713 = !{!714, !715}
!714 = !DILocalVariable(name: "L", arg: 1, scope: !712, file: !1, line: 161, type: !148)
!715 = !DILocalVariable(name: "n", arg: 2, scope: !712, file: !1, line: 161, type: !104)
!716 = !DILocation(line: 161, column: 33, scope: !712)
!717 = !DILocation(line: 161, column: 40, scope: !712)
!718 = !DILocation(line: 162, column: 15, scope: !719)
!719 = distinct !DILexicalBlock(scope: !712, file: !1, line: 162, column: 7)
!720 = !DILocation(line: 162, column: 9, scope: !719)
!721 = !DILocation(line: 162, column: 7, scope: !712)
!722 = !DILocation(line: 163, column: 27, scope: !719)
!723 = !DILocation(line: 163, column: 5, scope: !719)
!724 = !DILocation(line: 165, column: 39, scope: !719)
!725 = !DILocation(line: 165, column: 5, scope: !719)
!726 = !DILocation(line: 166, column: 1, scope: !712)
!727 = distinct !DISubprogram(name: "luaD_callhook", scope: !1, file: !1, line: 181, type: !728, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !730)
!728 = !DISubroutineType(types: !729)
!729 = !{null, !148, !104, !104}
!730 = !{!731, !732, !733, !734, !735, !738, !739}
!731 = !DILocalVariable(name: "L", arg: 1, scope: !727, file: !1, line: 181, type: !148)
!732 = !DILocalVariable(name: "event", arg: 2, scope: !727, file: !1, line: 181, type: !104)
!733 = !DILocalVariable(name: "line", arg: 3, scope: !727, file: !1, line: 181, type: !104)
!734 = !DILocalVariable(name: "hook", scope: !727, file: !1, line: 182, type: !266)
!735 = !DILocalVariable(name: "top", scope: !736, file: !1, line: 184, type: !309)
!736 = distinct !DILexicalBlock(scope: !737, file: !1, line: 183, column: 29)
!737 = distinct !DILexicalBlock(scope: !727, file: !1, line: 183, column: 7)
!738 = !DILocalVariable(name: "ci_top", scope: !736, file: !1, line: 185, type: !309)
!739 = !DILocalVariable(name: "ar", scope: !736, file: !1, line: 186, type: !271)
!740 = !DILocation(line: 181, column: 32, scope: !727)
!741 = !DILocation(line: 181, column: 39, scope: !727)
!742 = !DILocation(line: 181, column: 50, scope: !727)
!743 = !DILocation(line: 182, column: 22, scope: !727)
!744 = !{!427, !428, i64 112}
!745 = !DILocation(line: 182, column: 12, scope: !727)
!746 = !DILocation(line: 183, column: 7, scope: !737)
!747 = !DILocation(line: 183, column: 12, scope: !737)
!748 = !DILocation(line: 183, column: 18, scope: !737)
!749 = !DILocation(line: 183, column: 15, scope: !737)
!750 = !DILocation(line: 183, column: 7, scope: !727)
!751 = !DILocation(line: 184, column: 21, scope: !736)
!752 = !DILocation(line: 184, column: 15, scope: !736)
!753 = !DILocation(line: 185, column: 24, scope: !736)
!754 = !DILocation(line: 185, column: 15, scope: !736)
!755 = !DILocation(line: 186, column: 5, scope: !736)
!756 = !DILocation(line: 187, column: 8, scope: !736)
!757 = !DILocation(line: 187, column: 14, scope: !736)
!758 = !{!759, !429, i64 0}
!759 = !{!"lua_Debug", !429, i64 0, !428, i64 8, !428, i64 16, !428, i64 24, !428, i64 32, !429, i64 40, !429, i64 44, !429, i64 48, !429, i64 52, !420, i64 56, !429, i64 116}
!760 = !DILocation(line: 188, column: 8, scope: !736)
!761 = !DILocation(line: 188, column: 20, scope: !736)
!762 = !{!759, !429, i64 40}
!763 = !DILocation(line: 189, column: 15, scope: !764)
!764 = distinct !DILexicalBlock(scope: !736, file: !1, line: 189, column: 9)
!765 = !DILocation(line: 189, column: 9, scope: !736)
!766 = !DILocation(line: 192, column: 17, scope: !764)
!767 = !DILocation(line: 192, column: 10, scope: !764)
!768 = !DILocation(line: 192, column: 15, scope: !764)
!769 = !DILocation(line: 193, column: 5, scope: !770)
!770 = distinct !DILexicalBlock(scope: !736, file: !1, line: 193, column: 5)
!771 = !DILocation(line: 193, column: 5, scope: !736)
!772 = !DILocation(line: 161, column: 33, scope: !712, inlinedAt: !773)
!773 = distinct !DILocation(line: 193, column: 5, scope: !770)
!774 = !DILocation(line: 161, column: 40, scope: !712, inlinedAt: !773)
!775 = !DILocation(line: 162, column: 15, scope: !719, inlinedAt: !773)
!776 = !DILocation(line: 162, column: 9, scope: !719, inlinedAt: !773)
!777 = !DILocation(line: 162, column: 7, scope: !712, inlinedAt: !773)
!778 = !DILocation(line: 163, column: 27, scope: !719, inlinedAt: !773)
!779 = !DILocation(line: 163, column: 5, scope: !719, inlinedAt: !773)
!780 = !DILocation(line: 165, column: 39, scope: !719, inlinedAt: !773)
!781 = !DILocation(line: 165, column: 5, scope: !719, inlinedAt: !773)
!782 = !DILocation(line: 166, column: 1, scope: !712, inlinedAt: !773)
!783 = !DILocation(line: 194, column: 21, scope: !736)
!784 = !DILocation(line: 194, column: 8, scope: !736)
!785 = !DILocation(line: 194, column: 12, scope: !736)
!786 = !DILocation(line: 194, column: 25, scope: !736)
!787 = !DILocation(line: 194, column: 16, scope: !736)
!788 = !DILocation(line: 196, column: 18, scope: !736)
!789 = !DILocation(line: 186, column: 15, scope: !736)
!790 = !DILocation(line: 198, column: 5, scope: !736)
!791 = !DILocation(line: 201, column: 18, scope: !736)
!792 = !DILocation(line: 202, column: 18, scope: !736)
!793 = !DILocation(line: 202, column: 8, scope: !736)
!794 = !DILocation(line: 202, column: 12, scope: !736)
!795 = !DILocation(line: 202, column: 16, scope: !736)
!796 = !DILocation(line: 203, column: 14, scope: !736)
!797 = !DILocation(line: 203, column: 12, scope: !736)
!798 = !DILocation(line: 204, column: 3, scope: !737)
!799 = !DILocation(line: 204, column: 3, scope: !736)
!800 = !DILocation(line: 205, column: 1, scope: !727)
!801 = distinct !DISubprogram(name: "luaD_precall", scope: !1, file: !1, line: 265, type: !802, isLocal: false, isDefinition: true, scopeLine: 265, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !804)
!802 = !DISubroutineType(types: !803)
!803 = !{!104, !148, !157, !104}
!804 = !{!805, !806, !807, !808, !810, !811, !814, !815, !816, !819, !822, !824}
!805 = !DILocalVariable(name: "L", arg: 1, scope: !801, file: !1, line: 265, type: !148)
!806 = !DILocalVariable(name: "func", arg: 2, scope: !801, file: !1, line: 265, type: !157)
!807 = !DILocalVariable(name: "nresults", arg: 3, scope: !801, file: !1, line: 265, type: !104)
!808 = !DILocalVariable(name: "cl", scope: !801, file: !1, line: 266, type: !809)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!810 = !DILocalVariable(name: "funcr", scope: !801, file: !1, line: 267, type: !309)
!811 = !DILocalVariable(name: "ci", scope: !812, file: !1, line: 274, type: !238)
!812 = distinct !DILexicalBlock(scope: !813, file: !1, line: 273, column: 17)
!813 = distinct !DILexicalBlock(scope: !801, file: !1, line: 273, column: 7)
!814 = !DILocalVariable(name: "st", scope: !812, file: !1, line: 275, type: !157)
!815 = !DILocalVariable(name: "base", scope: !812, file: !1, line: 275, type: !157)
!816 = !DILocalVariable(name: "p", scope: !812, file: !1, line: 276, type: !817)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_typedef, name: "Proto", file: !28, line: 253, baseType: !328)
!819 = !DILocalVariable(name: "nargs", scope: !820, file: !1, line: 285, type: !104)
!820 = distinct !DILexicalBlock(scope: !821, file: !1, line: 284, column: 10)
!821 = distinct !DILexicalBlock(scope: !812, file: !1, line: 279, column: 9)
!822 = !DILocalVariable(name: "ci", scope: !823, file: !1, line: 308, type: !238)
!823 = distinct !DILexicalBlock(scope: !813, file: !1, line: 307, column: 8)
!824 = !DILocalVariable(name: "n", scope: !823, file: !1, line: 309, type: !104)
!825 = !DILocation(line: 265, column: 30, scope: !801)
!826 = !DILocation(line: 265, column: 39, scope: !801)
!827 = !DILocation(line: 265, column: 49, scope: !801)
!828 = !DILocation(line: 268, column: 8, scope: !829)
!829 = distinct !DILexicalBlock(scope: !801, file: !1, line: 268, column: 7)
!830 = !DILocation(line: 268, column: 7, scope: !801)
!831 = !DILocation(line: 270, column: 11, scope: !801)
!832 = !DILocalVariable(name: "L", arg: 1, scope: !833, file: !1, line: 244, type: !148)
!833 = distinct !DISubprogram(name: "tryfuncTM", scope: !1, file: !1, line: 244, type: !834, isLocal: true, isDefinition: true, scopeLine: 244, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !836)
!834 = !DISubroutineType(types: !835)
!835 = !{!157, !148, !157}
!836 = !{!832, !837, !838, !839, !840, !841, !845, !846, !848}
!837 = !DILocalVariable(name: "func", arg: 2, scope: !833, file: !1, line: 244, type: !157)
!838 = !DILocalVariable(name: "tm", scope: !833, file: !1, line: 245, type: !411)
!839 = !DILocalVariable(name: "p", scope: !833, file: !1, line: 246, type: !157)
!840 = !DILocalVariable(name: "funcr", scope: !833, file: !1, line: 247, type: !309)
!841 = !DILocalVariable(name: "o2", scope: !842, file: !1, line: 251, type: !411)
!842 = distinct !DILexicalBlock(scope: !843, file: !1, line: 251, column: 35)
!843 = distinct !DILexicalBlock(scope: !844, file: !1, line: 251, column: 3)
!844 = distinct !DILexicalBlock(scope: !833, file: !1, line: 251, column: 3)
!845 = !DILocalVariable(name: "o1", scope: !842, file: !1, line: 251, type: !90)
!846 = !DILocalVariable(name: "o2", scope: !847, file: !1, line: 254, type: !411)
!847 = distinct !DILexicalBlock(scope: !833, file: !1, line: 254, column: 3)
!848 = !DILocalVariable(name: "o1", scope: !847, file: !1, line: 254, type: !90)
!849 = !DILocation(line: 244, column: 36, scope: !833, inlinedAt: !850)
!850 = distinct !DILocation(line: 269, column: 12, scope: !829)
!851 = !DILocation(line: 244, column: 45, scope: !833, inlinedAt: !850)
!852 = !DILocation(line: 245, column: 22, scope: !833, inlinedAt: !850)
!853 = !DILocation(line: 245, column: 17, scope: !833, inlinedAt: !850)
!854 = !DILocation(line: 247, column: 21, scope: !833, inlinedAt: !850)
!855 = !DILocation(line: 247, column: 13, scope: !833, inlinedAt: !850)
!856 = !DILocation(line: 248, column: 8, scope: !857, inlinedAt: !850)
!857 = distinct !DILexicalBlock(scope: !833, file: !1, line: 248, column: 7)
!858 = !DILocation(line: 248, column: 7, scope: !833, inlinedAt: !850)
!859 = !DILocation(line: 249, column: 5, scope: !857, inlinedAt: !850)
!860 = !DILocation(line: 251, column: 15, scope: !844, inlinedAt: !850)
!861 = !DILocation(line: 246, column: 9, scope: !833, inlinedAt: !850)
!862 = !DILocation(line: 251, column: 8, scope: !844, inlinedAt: !850)
!863 = !DILocation(line: 251, column: 22, scope: !843, inlinedAt: !850)
!864 = !DILocation(line: 251, column: 3, scope: !844, inlinedAt: !850)
!865 = !DILocation(line: 251, column: 35, scope: !842, inlinedAt: !850)
!866 = !DILocation(line: 251, column: 3, scope: !843, inlinedAt: !850)
!867 = distinct !{!867, !868, !869}
!868 = !DILocation(line: 251, column: 3, scope: !844)
!869 = !DILocation(line: 251, column: 35, scope: !844)
!870 = !DILocation(line: 252, column: 3, scope: !871, inlinedAt: !850)
!871 = distinct !DILexicalBlock(scope: !872, file: !1, line: 252, column: 3)
!872 = distinct !DILexicalBlock(scope: !833, file: !1, line: 252, column: 3)
!873 = !DILocation(line: 252, column: 3, scope: !872, inlinedAt: !850)
!874 = !DILocation(line: 161, column: 33, scope: !712, inlinedAt: !875)
!875 = distinct !DILocation(line: 252, column: 3, scope: !871, inlinedAt: !850)
!876 = !DILocation(line: 161, column: 40, scope: !712, inlinedAt: !875)
!877 = !DILocation(line: 162, column: 15, scope: !719, inlinedAt: !875)
!878 = !DILocation(line: 162, column: 9, scope: !719, inlinedAt: !875)
!879 = !DILocation(line: 162, column: 7, scope: !712, inlinedAt: !875)
!880 = !DILocation(line: 163, column: 27, scope: !719, inlinedAt: !875)
!881 = !DILocation(line: 163, column: 5, scope: !719, inlinedAt: !875)
!882 = !DILocation(line: 165, column: 39, scope: !719, inlinedAt: !875)
!883 = !DILocation(line: 165, column: 5, scope: !719, inlinedAt: !875)
!884 = !DILocation(line: 166, column: 1, scope: !712, inlinedAt: !875)
!885 = !DILocation(line: 253, column: 10, scope: !833, inlinedAt: !850)
!886 = !DILocation(line: 254, column: 3, scope: !847, inlinedAt: !850)
!887 = !DILocation(line: 255, column: 3, scope: !833, inlinedAt: !850)
!888 = !DILocation(line: 269, column: 5, scope: !829)
!889 = !DILocation(line: 267, column: 13, scope: !801)
!890 = !DILocation(line: 271, column: 9, scope: !801)
!891 = !DILocation(line: 266, column: 13, scope: !801)
!892 = !DILocation(line: 272, column: 23, scope: !801)
!893 = !{!427, !428, i64 48}
!894 = !DILocation(line: 272, column: 6, scope: !801)
!895 = !DILocation(line: 272, column: 10, scope: !801)
!896 = !DILocation(line: 272, column: 18, scope: !801)
!897 = !{!490, !428, i64 24}
!898 = !DILocation(line: 273, column: 12, scope: !813)
!899 = !{!900, !420, i64 10}
!900 = !{!"LClosure", !428, i64 0, !420, i64 8, !420, i64 9, !420, i64 10, !420, i64 11, !428, i64 16, !428, i64 24, !428, i64 32, !420, i64 40}
!901 = !DILocation(line: 273, column: 8, scope: !813)
!902 = !DILocation(line: 273, column: 7, scope: !801)
!903 = !DILocation(line: 276, column: 20, scope: !812)
!904 = !{!900, !428, i64 32}
!905 = !DILocation(line: 276, column: 12, scope: !812)
!906 = !DILocation(line: 277, column: 5, scope: !907)
!907 = distinct !DILexicalBlock(scope: !812, file: !1, line: 277, column: 5)
!908 = !{!909, !420, i64 115}
!909 = !{!"Proto", !428, i64 0, !420, i64 8, !420, i64 9, !428, i64 16, !428, i64 24, !428, i64 32, !428, i64 40, !428, i64 48, !428, i64 56, !428, i64 64, !429, i64 72, !429, i64 76, !429, i64 80, !429, i64 84, !429, i64 88, !429, i64 92, !429, i64 96, !429, i64 100, !428, i64 104, !420, i64 112, !420, i64 113, !420, i64 114, !420, i64 115}
!910 = !DILocation(line: 277, column: 5, scope: !812)
!911 = !DILocation(line: 278, column: 12, scope: !812)
!912 = !DILocation(line: 161, column: 33, scope: !712, inlinedAt: !913)
!913 = distinct !DILocation(line: 277, column: 5, scope: !907)
!914 = !DILocation(line: 161, column: 40, scope: !712, inlinedAt: !913)
!915 = !DILocation(line: 162, column: 15, scope: !719, inlinedAt: !913)
!916 = !DILocation(line: 162, column: 9, scope: !719, inlinedAt: !913)
!917 = !DILocation(line: 162, column: 7, scope: !712, inlinedAt: !913)
!918 = !DILocation(line: 163, column: 27, scope: !719, inlinedAt: !913)
!919 = !DILocation(line: 163, column: 5, scope: !719, inlinedAt: !913)
!920 = !DILocation(line: 165, column: 39, scope: !719, inlinedAt: !913)
!921 = !DILocation(line: 165, column: 5, scope: !719, inlinedAt: !913)
!922 = !DILocation(line: 166, column: 1, scope: !712, inlinedAt: !913)
!923 = !DILocation(line: 279, column: 13, scope: !821)
!924 = !{!909, !420, i64 114}
!925 = !DILocation(line: 279, column: 10, scope: !821)
!926 = !DILocation(line: 279, column: 9, scope: !812)
!927 = !DILocation(line: 280, column: 19, scope: !928)
!928 = distinct !DILexicalBlock(scope: !821, file: !1, line: 279, column: 24)
!929 = !DILocation(line: 275, column: 15, scope: !812)
!930 = !DILocation(line: 281, column: 14, scope: !931)
!931 = distinct !DILexicalBlock(scope: !928, file: !1, line: 281, column: 11)
!932 = !DILocation(line: 281, column: 30, scope: !931)
!933 = !{!909, !420, i64 113}
!934 = !DILocation(line: 281, column: 25, scope: !931)
!935 = !DILocation(line: 281, column: 18, scope: !931)
!936 = !DILocation(line: 281, column: 11, scope: !928)
!937 = !DILocation(line: 282, column: 16, scope: !931)
!938 = !DILocation(line: 282, column: 9, scope: !931)
!939 = !DILocation(line: 285, column: 19, scope: !820)
!940 = !DILocation(line: 285, column: 43, scope: !820)
!941 = !DILocation(line: 285, column: 11, scope: !820)
!942 = !DILocalVariable(name: "L", arg: 1, scope: !943, file: !1, line: 208, type: !148)
!943 = distinct !DISubprogram(name: "adjust_varargs", scope: !1, file: !1, line: 208, type: !944, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !946)
!944 = !DISubroutineType(types: !945)
!945 = !{!157, !148, !817, !104}
!946 = !{!942, !947, !948, !949, !950, !951, !954, !955, !956, !959, !963, !964, !966, !971, !972}
!947 = !DILocalVariable(name: "p", arg: 2, scope: !943, file: !1, line: 208, type: !817)
!948 = !DILocalVariable(name: "actual", arg: 3, scope: !943, file: !1, line: 208, type: !104)
!949 = !DILocalVariable(name: "i", scope: !943, file: !1, line: 209, type: !104)
!950 = !DILocalVariable(name: "nfixargs", scope: !943, file: !1, line: 210, type: !104)
!951 = !DILocalVariable(name: "htab", scope: !943, file: !1, line: 211, type: !952)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_typedef, name: "Table", file: !28, line: 348, baseType: !81)
!954 = !DILocalVariable(name: "base", scope: !943, file: !1, line: 212, type: !157)
!955 = !DILocalVariable(name: "fixed", scope: !943, file: !1, line: 212, type: !157)
!956 = !DILocalVariable(name: "nvar", scope: !957, file: !1, line: 217, type: !104)
!957 = distinct !DILexicalBlock(scope: !958, file: !1, line: 216, column: 39)
!958 = distinct !DILexicalBlock(scope: !943, file: !1, line: 216, column: 7)
!959 = !DILocalVariable(name: "o2", scope: !960, file: !1, line: 223, type: !411)
!960 = distinct !DILexicalBlock(scope: !961, file: !1, line: 223, column: 7)
!961 = distinct !DILexicalBlock(scope: !962, file: !1, line: 222, column: 5)
!962 = distinct !DILexicalBlock(scope: !957, file: !1, line: 222, column: 5)
!963 = !DILocalVariable(name: "o1", scope: !960, file: !1, line: 223, type: !90)
!964 = !DILocalVariable(name: "i_o", scope: !965, file: !1, line: 225, type: !90)
!965 = distinct !DILexicalBlock(scope: !957, file: !1, line: 225, column: 5)
!966 = !DILocalVariable(name: "o2", scope: !967, file: !1, line: 232, type: !411)
!967 = distinct !DILexicalBlock(scope: !968, file: !1, line: 232, column: 5)
!968 = distinct !DILexicalBlock(scope: !969, file: !1, line: 231, column: 30)
!969 = distinct !DILexicalBlock(scope: !970, file: !1, line: 231, column: 3)
!970 = distinct !DILexicalBlock(scope: !943, file: !1, line: 231, column: 3)
!971 = !DILocalVariable(name: "o1", scope: !967, file: !1, line: 232, type: !90)
!972 = !DILocalVariable(name: "i_o", scope: !973, file: !1, line: 237, type: !90)
!973 = distinct !DILexicalBlock(scope: !974, file: !1, line: 237, column: 5)
!974 = distinct !DILexicalBlock(scope: !975, file: !1, line: 236, column: 13)
!975 = distinct !DILexicalBlock(scope: !943, file: !1, line: 236, column: 7)
!976 = !DILocation(line: 208, column: 41, scope: !943, inlinedAt: !977)
!977 = distinct !DILocation(line: 286, column: 14, scope: !820)
!978 = !DILocation(line: 208, column: 51, scope: !943, inlinedAt: !977)
!979 = !DILocation(line: 208, column: 58, scope: !943, inlinedAt: !977)
!980 = !DILocation(line: 210, column: 21, scope: !943, inlinedAt: !977)
!981 = !DILocation(line: 210, column: 18, scope: !943, inlinedAt: !977)
!982 = !DILocation(line: 210, column: 7, scope: !943, inlinedAt: !977)
!983 = !DILocation(line: 211, column: 10, scope: !943, inlinedAt: !977)
!984 = !DILocation(line: 213, column: 3, scope: !943, inlinedAt: !977)
!985 = !DILocation(line: 213, column: 17, scope: !986, inlinedAt: !977)
!986 = distinct !DILexicalBlock(scope: !987, file: !1, line: 213, column: 3)
!987 = distinct !DILexicalBlock(scope: !943, file: !1, line: 213, column: 3)
!988 = !DILocation(line: 213, column: 3, scope: !987, inlinedAt: !977)
!989 = !DILocation(line: 214, column: 5, scope: !986, inlinedAt: !977)
!990 = !DILocation(line: 213, column: 29, scope: !986, inlinedAt: !977)
!991 = !DILocation(line: 213, column: 3, scope: !986, inlinedAt: !977)
!992 = distinct !{!992, !993}
!993 = !{!"llvm.loop.unroll.disable"}
!994 = distinct !{!994, !995, !996}
!995 = !DILocation(line: 213, column: 3, scope: !987)
!996 = !DILocation(line: 214, column: 5, scope: !987)
!997 = !DILocation(line: 216, column: 20, scope: !958, inlinedAt: !977)
!998 = !DILocation(line: 216, column: 7, scope: !943, inlinedAt: !977)
!999 = !DILocation(line: 217, column: 23, scope: !957, inlinedAt: !977)
!1000 = !DILocation(line: 217, column: 9, scope: !957, inlinedAt: !977)
!1001 = !DILocation(line: 219, column: 5, scope: !1002, inlinedAt: !977)
!1002 = distinct !DILexicalBlock(scope: !1003, file: !1, line: 219, column: 5)
!1003 = distinct !DILexicalBlock(scope: !957, file: !1, line: 219, column: 5)
!1004 = !{!470, !432, i64 120}
!1005 = !{!470, !432, i64 112}
!1006 = !DILocation(line: 219, column: 5, scope: !1003, inlinedAt: !977)
!1007 = !DILocation(line: 220, column: 5, scope: !1008, inlinedAt: !977)
!1008 = distinct !DILexicalBlock(scope: !957, file: !1, line: 220, column: 5)
!1009 = !DILocation(line: 220, column: 5, scope: !957, inlinedAt: !977)
!1010 = !DILocation(line: 161, column: 33, scope: !712, inlinedAt: !1011)
!1011 = distinct !DILocation(line: 220, column: 5, scope: !1008, inlinedAt: !977)
!1012 = !DILocation(line: 161, column: 40, scope: !712, inlinedAt: !1011)
!1013 = !DILocation(line: 162, column: 15, scope: !719, inlinedAt: !1011)
!1014 = !DILocation(line: 162, column: 9, scope: !719, inlinedAt: !1011)
!1015 = !DILocation(line: 162, column: 7, scope: !712, inlinedAt: !1011)
!1016 = !DILocation(line: 163, column: 27, scope: !719, inlinedAt: !1011)
!1017 = !DILocation(line: 163, column: 5, scope: !719, inlinedAt: !1011)
!1018 = !DILocation(line: 165, column: 39, scope: !719, inlinedAt: !1011)
!1019 = !DILocation(line: 165, column: 5, scope: !719, inlinedAt: !1011)
!1020 = !DILocation(line: 166, column: 1, scope: !712, inlinedAt: !1011)
!1021 = !DILocation(line: 221, column: 12, scope: !957, inlinedAt: !977)
!1022 = !DILocation(line: 209, column: 7, scope: !943, inlinedAt: !977)
!1023 = !DILocation(line: 222, column: 10, scope: !962, inlinedAt: !977)
!1024 = !DILocation(line: 222, column: 16, scope: !961, inlinedAt: !977)
!1025 = !DILocation(line: 222, column: 5, scope: !962, inlinedAt: !977)
!1026 = !DILocation(line: 223, column: 7, scope: !960, inlinedAt: !977)
!1027 = !DILocation(line: 222, column: 5, scope: !961, inlinedAt: !977)
!1028 = distinct !{!1028, !1029, !1030}
!1029 = !DILocation(line: 222, column: 5, scope: !962)
!1030 = !DILocation(line: 223, column: 7, scope: !962)
!1031 = !DILocation(line: 225, column: 5, scope: !965, inlinedAt: !977)
!1032 = !DILocation(line: 226, column: 3, scope: !957, inlinedAt: !977)
!1033 = !DILocation(line: 229, column: 14, scope: !943, inlinedAt: !977)
!1034 = !DILocation(line: 0, scope: !943, inlinedAt: !977)
!1035 = !DILocation(line: 229, column: 18, scope: !943, inlinedAt: !977)
!1036 = !DILocation(line: 212, column: 15, scope: !943, inlinedAt: !977)
!1037 = !DILocation(line: 212, column: 9, scope: !943, inlinedAt: !977)
!1038 = !DILocation(line: 231, column: 8, scope: !970, inlinedAt: !977)
!1039 = !DILocation(line: 231, column: 14, scope: !969, inlinedAt: !977)
!1040 = !DILocation(line: 231, column: 3, scope: !970, inlinedAt: !977)
!1041 = !DILocation(line: 232, column: 5, scope: !967, inlinedAt: !977)
!1042 = !DILocation(line: 233, column: 5, scope: !968, inlinedAt: !977)
!1043 = !DILocation(line: 231, column: 3, scope: !969, inlinedAt: !977)
!1044 = distinct !{!1044, !1045, !1046}
!1045 = !DILocation(line: 231, column: 3, scope: !970)
!1046 = !DILocation(line: 234, column: 3, scope: !970)
!1047 = !DILocation(line: 231, column: 26, scope: !969, inlinedAt: !977)
!1048 = !DILocation(line: 236, column: 7, scope: !975, inlinedAt: !977)
!1049 = !DILocation(line: 236, column: 7, scope: !943, inlinedAt: !977)
!1050 = !DILocation(line: 237, column: 5, scope: !973, inlinedAt: !977)
!1051 = !DILocation(line: 239, column: 3, scope: !974, inlinedAt: !977)
!1052 = !DILocation(line: 240, column: 3, scope: !943, inlinedAt: !977)
!1053 = !DILocation(line: 287, column: 14, scope: !820)
!1054 = !DILocation(line: 289, column: 10, scope: !812)
!1055 = !DILocation(line: 0, scope: !928)
!1056 = !DILocation(line: 0, scope: !812)
!1057 = !DILocalVariable(name: "L", arg: 1, scope: !1058, file: !1, line: 169, type: !148)
!1058 = distinct !DISubprogram(name: "growCI", scope: !1, file: !1, line: 169, type: !1059, isLocal: true, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1061)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!238, !148}
!1061 = !{!1057}
!1062 = !DILocation(line: 169, column: 37, scope: !1058, inlinedAt: !1063)
!1063 = distinct !DILocation(line: 289, column: 10, scope: !812)
!1064 = !DILocation(line: 170, column: 10, scope: !1065, inlinedAt: !1063)
!1065 = distinct !DILexicalBlock(scope: !1058, file: !1, line: 170, column: 7)
!1066 = !DILocation(line: 170, column: 18, scope: !1065, inlinedAt: !1063)
!1067 = !DILocation(line: 170, column: 7, scope: !1058, inlinedAt: !1063)
!1068 = !DILocation(line: 171, column: 5, scope: !1065, inlinedAt: !1063)
!1069 = !DILocation(line: 173, column: 24, scope: !1070, inlinedAt: !1063)
!1070 = distinct !DILexicalBlock(scope: !1065, file: !1, line: 172, column: 8)
!1071 = !DILocation(line: 152, column: 33, scope: !540, inlinedAt: !1072)
!1072 = distinct !DILocation(line: 173, column: 5, scope: !1070, inlinedAt: !1063)
!1073 = !DILocation(line: 152, column: 40, scope: !540, inlinedAt: !1072)
!1074 = !DILocation(line: 153, column: 24, scope: !540, inlinedAt: !1072)
!1075 = !DILocation(line: 153, column: 13, scope: !540, inlinedAt: !1072)
!1076 = !DILocation(line: 154, column: 3, scope: !540, inlinedAt: !1072)
!1077 = !DILocation(line: 157, column: 26, scope: !540, inlinedAt: !1072)
!1078 = !DILocation(line: 155, column: 14, scope: !540, inlinedAt: !1072)
!1079 = !DILocation(line: 156, column: 15, scope: !540, inlinedAt: !1072)
!1080 = !DILocation(line: 156, column: 18, scope: !540, inlinedAt: !1072)
!1081 = !DILocation(line: 156, column: 32, scope: !540, inlinedAt: !1072)
!1082 = !DILocation(line: 156, column: 27, scope: !540, inlinedAt: !1072)
!1083 = !DILocation(line: 156, column: 9, scope: !540, inlinedAt: !1072)
!1084 = !DILocation(line: 157, column: 39, scope: !540, inlinedAt: !1072)
!1085 = !DILocation(line: 157, column: 13, scope: !540, inlinedAt: !1072)
!1086 = !DILocation(line: 158, column: 1, scope: !540, inlinedAt: !1072)
!1087 = !DILocation(line: 174, column: 20, scope: !1088, inlinedAt: !1063)
!1088 = distinct !DILexicalBlock(scope: !1070, file: !1, line: 174, column: 9)
!1089 = !DILocation(line: 174, column: 9, scope: !1070, inlinedAt: !1063)
!1090 = !DILocation(line: 175, column: 7, scope: !1088, inlinedAt: !1063)
!1091 = !DILocation(line: 177, column: 10, scope: !1058, inlinedAt: !1063)
!1092 = !DILocation(line: 177, column: 3, scope: !1058, inlinedAt: !1063)
!1093 = !DILocation(line: 274, column: 15, scope: !812)
!1094 = !DILocation(line: 290, column: 9, scope: !812)
!1095 = !DILocation(line: 290, column: 14, scope: !812)
!1096 = !DILocation(line: 291, column: 19, scope: !812)
!1097 = !DILocation(line: 291, column: 24, scope: !812)
!1098 = !DILocation(line: 291, column: 8, scope: !812)
!1099 = !DILocation(line: 291, column: 13, scope: !812)
!1100 = !DILocation(line: 292, column: 28, scope: !812)
!1101 = !DILocation(line: 292, column: 23, scope: !812)
!1102 = !DILocation(line: 292, column: 9, scope: !812)
!1103 = !DILocation(line: 292, column: 13, scope: !812)
!1104 = !DILocation(line: 294, column: 21, scope: !812)
!1105 = !{!909, !428, i64 24}
!1106 = !DILocation(line: 294, column: 16, scope: !812)
!1107 = !DILocation(line: 295, column: 9, scope: !812)
!1108 = !DILocation(line: 295, column: 19, scope: !812)
!1109 = !{!490, !429, i64 36}
!1110 = !DILocation(line: 296, column: 9, scope: !812)
!1111 = !DILocation(line: 296, column: 18, scope: !812)
!1112 = !{!490, !429, i64 32}
!1113 = !DILocation(line: 297, column: 18, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !812, file: !1, line: 297, column: 5)
!1115 = !DILocation(line: 275, column: 11, scope: !812)
!1116 = !DILocation(line: 297, column: 10, scope: !1114)
!1117 = !DILocation(line: 297, column: 26, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1114, file: !1, line: 297, column: 5)
!1119 = !DILocation(line: 297, column: 5, scope: !1114)
!1120 = !DILocation(line: 298, column: 7, scope: !1118)
!1121 = !DILocation(line: 297, column: 39, scope: !1118)
!1122 = !DILocation(line: 297, column: 5, scope: !1118)
!1123 = distinct !{!1123, !1119, !1124}
!1124 = !DILocation(line: 298, column: 7, scope: !1114)
!1125 = !DILocation(line: 299, column: 12, scope: !812)
!1126 = !DILocation(line: 300, column: 12, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !812, file: !1, line: 300, column: 9)
!1128 = !{!427, !420, i64 100}
!1129 = !DILocation(line: 300, column: 21, scope: !1127)
!1130 = !DILocation(line: 300, column: 9, scope: !812)
!1131 = !DILocation(line: 301, column: 17, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1127, file: !1, line: 300, column: 37)
!1133 = !DILocation(line: 302, column: 7, scope: !1132)
!1134 = !DILocation(line: 303, column: 17, scope: !1132)
!1135 = !DILocation(line: 304, column: 5, scope: !1132)
!1136 = !DILocation(line: 310, column: 5, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !823, file: !1, line: 310, column: 5)
!1138 = !DILocation(line: 310, column: 5, scope: !823)
!1139 = !DILocation(line: 161, column: 33, scope: !712, inlinedAt: !1140)
!1140 = distinct !DILocation(line: 310, column: 5, scope: !1137)
!1141 = !DILocation(line: 161, column: 40, scope: !712, inlinedAt: !1140)
!1142 = !DILocation(line: 162, column: 15, scope: !719, inlinedAt: !1140)
!1143 = !DILocation(line: 162, column: 9, scope: !719, inlinedAt: !1140)
!1144 = !DILocation(line: 162, column: 7, scope: !712, inlinedAt: !1140)
!1145 = !DILocation(line: 163, column: 27, scope: !719, inlinedAt: !1140)
!1146 = !DILocation(line: 163, column: 5, scope: !719, inlinedAt: !1140)
!1147 = !DILocation(line: 165, column: 39, scope: !719, inlinedAt: !1140)
!1148 = !DILocation(line: 165, column: 5, scope: !719, inlinedAt: !1140)
!1149 = !DILocation(line: 166, column: 1, scope: !712, inlinedAt: !1140)
!1150 = !DILocation(line: 311, column: 10, scope: !823)
!1151 = !DILocation(line: 169, column: 37, scope: !1058, inlinedAt: !1152)
!1152 = distinct !DILocation(line: 311, column: 10, scope: !823)
!1153 = !DILocation(line: 170, column: 10, scope: !1065, inlinedAt: !1152)
!1154 = !DILocation(line: 170, column: 18, scope: !1065, inlinedAt: !1152)
!1155 = !DILocation(line: 170, column: 7, scope: !1058, inlinedAt: !1152)
!1156 = !DILocation(line: 171, column: 5, scope: !1065, inlinedAt: !1152)
!1157 = !DILocation(line: 173, column: 24, scope: !1070, inlinedAt: !1152)
!1158 = !DILocation(line: 152, column: 33, scope: !540, inlinedAt: !1159)
!1159 = distinct !DILocation(line: 173, column: 5, scope: !1070, inlinedAt: !1152)
!1160 = !DILocation(line: 152, column: 40, scope: !540, inlinedAt: !1159)
!1161 = !DILocation(line: 153, column: 24, scope: !540, inlinedAt: !1159)
!1162 = !DILocation(line: 153, column: 13, scope: !540, inlinedAt: !1159)
!1163 = !DILocation(line: 154, column: 3, scope: !540, inlinedAt: !1159)
!1164 = !DILocation(line: 157, column: 26, scope: !540, inlinedAt: !1159)
!1165 = !DILocation(line: 155, column: 14, scope: !540, inlinedAt: !1159)
!1166 = !DILocation(line: 156, column: 15, scope: !540, inlinedAt: !1159)
!1167 = !DILocation(line: 156, column: 18, scope: !540, inlinedAt: !1159)
!1168 = !DILocation(line: 156, column: 32, scope: !540, inlinedAt: !1159)
!1169 = !DILocation(line: 156, column: 27, scope: !540, inlinedAt: !1159)
!1170 = !DILocation(line: 156, column: 9, scope: !540, inlinedAt: !1159)
!1171 = !DILocation(line: 157, column: 39, scope: !540, inlinedAt: !1159)
!1172 = !DILocation(line: 157, column: 13, scope: !540, inlinedAt: !1159)
!1173 = !DILocation(line: 158, column: 1, scope: !540, inlinedAt: !1159)
!1174 = !DILocation(line: 174, column: 20, scope: !1088, inlinedAt: !1152)
!1175 = !DILocation(line: 174, column: 9, scope: !1070, inlinedAt: !1152)
!1176 = !DILocation(line: 175, column: 7, scope: !1088, inlinedAt: !1152)
!1177 = !DILocation(line: 177, column: 10, scope: !1058, inlinedAt: !1152)
!1178 = !DILocation(line: 177, column: 3, scope: !1058, inlinedAt: !1152)
!1179 = !DILocation(line: 308, column: 15, scope: !823)
!1180 = !DILocation(line: 312, column: 16, scope: !823)
!1181 = !DILocation(line: 312, column: 9, scope: !823)
!1182 = !DILocation(line: 312, column: 14, scope: !823)
!1183 = !DILocation(line: 313, column: 35, scope: !823)
!1184 = !DILocation(line: 313, column: 24, scope: !823)
!1185 = !DILocation(line: 313, column: 8, scope: !823)
!1186 = !DILocation(line: 313, column: 13, scope: !823)
!1187 = !DILocation(line: 314, column: 18, scope: !823)
!1188 = !DILocation(line: 314, column: 22, scope: !823)
!1189 = !DILocation(line: 314, column: 9, scope: !823)
!1190 = !DILocation(line: 314, column: 13, scope: !823)
!1191 = !DILocation(line: 316, column: 9, scope: !823)
!1192 = !DILocation(line: 316, column: 18, scope: !823)
!1193 = !DILocation(line: 317, column: 12, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !823, file: !1, line: 317, column: 9)
!1195 = !DILocation(line: 317, column: 21, scope: !1194)
!1196 = !DILocation(line: 317, column: 9, scope: !823)
!1197 = !DILocation(line: 318, column: 7, scope: !1194)
!1198 = !DILocation(line: 320, column: 11, scope: !823)
!1199 = !DILocation(line: 320, column: 27, scope: !823)
!1200 = !DILocation(line: 320, column: 9, scope: !823)
!1201 = !DILocation(line: 309, column: 9, scope: !823)
!1202 = !DILocation(line: 322, column: 11, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !823, file: !1, line: 322, column: 9)
!1204 = !DILocation(line: 322, column: 9, scope: !823)
!1205 = !DILocation(line: 325, column: 26, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1203, file: !1, line: 324, column: 10)
!1207 = !DILocation(line: 325, column: 30, scope: !1206)
!1208 = !DILocation(line: 325, column: 7, scope: !1206)
!1209 = !DILocation(line: 326, column: 7, scope: !1206)
!1210 = !DILocation(line: 0, scope: !1203)
!1211 = !DILocation(line: 329, column: 1, scope: !801)
!1212 = distinct !DISubprogram(name: "luaD_poscall", scope: !1, file: !1, line: 343, type: !1213, isLocal: false, isDefinition: true, scopeLine: 343, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1215)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{!104, !148, !157}
!1215 = !{!1216, !1217, !1218, !1219, !1220, !1221, !1222, !1226}
!1216 = !DILocalVariable(name: "L", arg: 1, scope: !1212, file: !1, line: 343, type: !148)
!1217 = !DILocalVariable(name: "firstResult", arg: 2, scope: !1212, file: !1, line: 343, type: !157)
!1218 = !DILocalVariable(name: "res", scope: !1212, file: !1, line: 344, type: !157)
!1219 = !DILocalVariable(name: "wanted", scope: !1212, file: !1, line: 345, type: !104)
!1220 = !DILocalVariable(name: "i", scope: !1212, file: !1, line: 345, type: !104)
!1221 = !DILocalVariable(name: "ci", scope: !1212, file: !1, line: 346, type: !238)
!1222 = !DILocalVariable(name: "o2", scope: !1223, file: !1, line: 356, type: !411)
!1223 = distinct !DILexicalBlock(scope: !1224, file: !1, line: 356, column: 5)
!1224 = distinct !DILexicalBlock(scope: !1225, file: !1, line: 355, column: 3)
!1225 = distinct !DILexicalBlock(scope: !1212, file: !1, line: 355, column: 3)
!1226 = !DILocalVariable(name: "o1", scope: !1223, file: !1, line: 356, type: !90)
!1227 = !DILocation(line: 343, column: 30, scope: !1212)
!1228 = !DILocation(line: 343, column: 39, scope: !1212)
!1229 = !DILocation(line: 347, column: 10, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1212, file: !1, line: 347, column: 7)
!1231 = !DILocation(line: 347, column: 19, scope: !1230)
!1232 = !DILocation(line: 347, column: 7, scope: !1212)
!1233 = !DILocation(line: 349, column: 11, scope: !1212)
!1234 = !DILocalVariable(name: "L", arg: 1, scope: !1235, file: !1, line: 332, type: !148)
!1235 = distinct !DISubprogram(name: "callrethooks", scope: !1, file: !1, line: 332, type: !834, isLocal: true, isDefinition: true, scopeLine: 332, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1236)
!1236 = !{!1234, !1237, !1238}
!1237 = !DILocalVariable(name: "firstResult", arg: 2, scope: !1235, file: !1, line: 332, type: !157)
!1238 = !DILocalVariable(name: "fr", scope: !1235, file: !1, line: 333, type: !309)
!1239 = !DILocation(line: 332, column: 39, scope: !1235, inlinedAt: !1240)
!1240 = distinct !DILocation(line: 348, column: 19, scope: !1230)
!1241 = !DILocation(line: 332, column: 48, scope: !1235, inlinedAt: !1240)
!1242 = !DILocation(line: 333, column: 18, scope: !1235, inlinedAt: !1240)
!1243 = !DILocation(line: 333, column: 13, scope: !1235, inlinedAt: !1240)
!1244 = !DILocation(line: 334, column: 3, scope: !1235, inlinedAt: !1240)
!1245 = !DILocation(line: 335, column: 7, scope: !1246, inlinedAt: !1240)
!1246 = distinct !DILexicalBlock(scope: !1235, file: !1, line: 335, column: 7)
!1247 = !DILocation(line: 335, column: 7, scope: !1235, inlinedAt: !1240)
!1248 = !DILocation(line: 336, column: 16, scope: !1249, inlinedAt: !1240)
!1249 = distinct !DILexicalBlock(scope: !1246, file: !1, line: 335, column: 23)
!1250 = !DILocation(line: 336, column: 25, scope: !1249, inlinedAt: !1240)
!1251 = !DILocation(line: 336, column: 40, scope: !1249, inlinedAt: !1240)
!1252 = !DILocation(line: 336, column: 50, scope: !1249, inlinedAt: !1240)
!1253 = !DILocation(line: 336, column: 59, scope: !1249, inlinedAt: !1240)
!1254 = !DILocation(line: 336, column: 5, scope: !1249, inlinedAt: !1240)
!1255 = !DILocation(line: 337, column: 7, scope: !1249, inlinedAt: !1240)
!1256 = distinct !{!1256, !1257, !1258}
!1257 = !DILocation(line: 336, column: 5, scope: !1249)
!1258 = !DILocation(line: 337, column: 43, scope: !1249)
!1259 = !DILocation(line: 336, column: 46, scope: !1249, inlinedAt: !1240)
!1260 = !DILocation(line: 339, column: 10, scope: !1235, inlinedAt: !1240)
!1261 = !DILocation(line: 339, column: 3, scope: !1235, inlinedAt: !1240)
!1262 = !DILocation(line: 348, column: 5, scope: !1230)
!1263 = !DILocation(line: 349, column: 13, scope: !1212)
!1264 = !DILocation(line: 346, column: 13, scope: !1212)
!1265 = !DILocation(line: 350, column: 13, scope: !1212)
!1266 = !DILocation(line: 344, column: 9, scope: !1212)
!1267 = !DILocation(line: 351, column: 16, scope: !1212)
!1268 = !DILocation(line: 345, column: 7, scope: !1212)
!1269 = !DILocation(line: 352, column: 23, scope: !1212)
!1270 = !DILocation(line: 352, column: 6, scope: !1212)
!1271 = !DILocation(line: 352, column: 11, scope: !1212)
!1272 = !DILocation(line: 353, column: 26, scope: !1212)
!1273 = !DILocation(line: 353, column: 6, scope: !1212)
!1274 = !DILocation(line: 353, column: 14, scope: !1212)
!1275 = !DILocation(line: 345, column: 15, scope: !1212)
!1276 = !DILocation(line: 355, column: 8, scope: !1225)
!1277 = !DILocation(line: 355, column: 47, scope: !1224)
!1278 = !DILocation(line: 355, column: 22, scope: !1224)
!1279 = !DILocation(line: 355, column: 27, scope: !1224)
!1280 = !DILocation(line: 355, column: 42, scope: !1224)
!1281 = !DILocation(line: 355, column: 3, scope: !1225)
!1282 = !DILocation(line: 356, column: 5, scope: !1223)
!1283 = !DILocation(line: 355, column: 53, scope: !1224)
!1284 = !DILocation(line: 355, column: 3, scope: !1224)
!1285 = distinct !{!1285, !1281, !1286}
!1286 = !DILocation(line: 356, column: 5, scope: !1225)
!1287 = !DILocation(line: 357, column: 3, scope: !1212)
!1288 = !DILocation(line: 357, column: 14, scope: !1212)
!1289 = !DILocation(line: 357, column: 11, scope: !1212)
!1290 = !DILocation(line: 358, column: 5, scope: !1212)
!1291 = distinct !{!1291, !1287, !1290}
!1292 = !DILocation(line: 0, scope: !1212)
!1293 = !DILocation(line: 359, column: 10, scope: !1212)
!1294 = !DILocation(line: 360, column: 18, scope: !1212)
!1295 = !DILocation(line: 360, column: 3, scope: !1212)
!1296 = distinct !DISubprogram(name: "luaD_call", scope: !1, file: !1, line: 370, type: !1297, isLocal: false, isDefinition: true, scopeLine: 370, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1299)
!1297 = !DISubroutineType(types: !1298)
!1298 = !{null, !148, !157, !104}
!1299 = !{!1300, !1301, !1302}
!1300 = !DILocalVariable(name: "L", arg: 1, scope: !1296, file: !1, line: 370, type: !148)
!1301 = !DILocalVariable(name: "func", arg: 2, scope: !1296, file: !1, line: 370, type: !157)
!1302 = !DILocalVariable(name: "nResults", arg: 3, scope: !1296, file: !1, line: 370, type: !104)
!1303 = !DILocation(line: 370, column: 28, scope: !1296)
!1304 = !DILocation(line: 370, column: 37, scope: !1296)
!1305 = !DILocation(line: 370, column: 47, scope: !1296)
!1306 = !DILocation(line: 371, column: 12, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1296, file: !1, line: 371, column: 7)
!1308 = !DILocation(line: 371, column: 7, scope: !1307)
!1309 = !DILocation(line: 371, column: 20, scope: !1307)
!1310 = !DILocation(line: 371, column: 7, scope: !1296)
!1311 = !DILocation(line: 372, column: 20, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1313, file: !1, line: 372, column: 9)
!1313 = distinct !DILexicalBlock(scope: !1307, file: !1, line: 371, column: 39)
!1314 = !DILocation(line: 372, column: 9, scope: !1313)
!1315 = !DILocation(line: 373, column: 7, scope: !1312)
!1316 = !DILocation(line: 374, column: 25, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1312, file: !1, line: 374, column: 14)
!1318 = !DILocation(line: 374, column: 14, scope: !1312)
!1319 = !DILocation(line: 375, column: 7, scope: !1317)
!1320 = !DILocation(line: 377, column: 7, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1296, file: !1, line: 377, column: 7)
!1322 = !DILocation(line: 377, column: 39, scope: !1321)
!1323 = !DILocation(line: 377, column: 7, scope: !1296)
!1324 = !DILocation(line: 378, column: 5, scope: !1321)
!1325 = !DILocation(line: 379, column: 13, scope: !1296)
!1326 = !DILocation(line: 380, column: 3, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1328, file: !1, line: 380, column: 3)
!1328 = distinct !DILexicalBlock(scope: !1296, file: !1, line: 380, column: 3)
!1329 = !DILocation(line: 380, column: 3, scope: !1328)
!1330 = !DILocation(line: 381, column: 1, scope: !1296)
!1331 = distinct !DISubprogram(name: "lua_resume", scope: !1, file: !1, line: 418, type: !1332, isLocal: false, isDefinition: true, scopeLine: 418, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1334)
!1332 = !DISubroutineType(types: !1333)
!1333 = !{!104, !148, !104}
!1334 = !{!1335, !1336, !1337}
!1335 = !DILocalVariable(name: "L", arg: 1, scope: !1331, file: !1, line: 418, type: !148)
!1336 = !DILocalVariable(name: "nargs", arg: 2, scope: !1331, file: !1, line: 418, type: !104)
!1337 = !DILocalVariable(name: "status", scope: !1331, file: !1, line: 419, type: !104)
!1338 = !DILocation(line: 418, column: 36, scope: !1331)
!1339 = !DILocation(line: 418, column: 43, scope: !1331)
!1340 = !DILocation(line: 421, column: 10, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1331, file: !1, line: 421, column: 7)
!1342 = !DILocation(line: 421, column: 17, scope: !1341)
!1343 = !DILocation(line: 421, column: 30, scope: !1341)
!1344 = !DILocation(line: 421, column: 44, scope: !1341)
!1345 = !DILocation(line: 421, column: 49, scope: !1341)
!1346 = !DILocation(line: 0, scope: !1341)
!1347 = !DILocation(line: 421, column: 64, scope: !1341)
!1348 = !DILocation(line: 421, column: 58, scope: !1341)
!1349 = !DILocation(line: 421, column: 7, scope: !1331)
!1350 = !DILocalVariable(name: "L", arg: 1, scope: !1351, file: !1, line: 409, type: !148)
!1351 = distinct !DISubprogram(name: "resume_error", scope: !1, file: !1, line: 409, type: !1352, isLocal: true, isDefinition: true, scopeLine: 409, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1354)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{!104, !148, !276}
!1354 = !{!1350, !1355, !1356}
!1355 = !DILocalVariable(name: "msg", arg: 2, scope: !1351, file: !1, line: 409, type: !276)
!1356 = !DILocalVariable(name: "i_o", scope: !1357, file: !1, line: 411, type: !90)
!1357 = distinct !DILexicalBlock(scope: !1351, file: !1, line: 411, column: 3)
!1358 = !DILocation(line: 409, column: 37, scope: !1351, inlinedAt: !1359)
!1359 = distinct !DILocation(line: 422, column: 14, scope: !1341)
!1360 = !DILocation(line: 409, column: 52, scope: !1351, inlinedAt: !1359)
!1361 = !DILocation(line: 410, column: 19, scope: !1351, inlinedAt: !1359)
!1362 = !DILocation(line: 410, column: 6, scope: !1351, inlinedAt: !1359)
!1363 = !DILocation(line: 410, column: 10, scope: !1351, inlinedAt: !1359)
!1364 = !DILocation(line: 411, column: 3, scope: !1357, inlinedAt: !1359)
!1365 = !DILocation(line: 412, column: 3, scope: !1366, inlinedAt: !1359)
!1366 = distinct !DILexicalBlock(scope: !1367, file: !1, line: 412, column: 3)
!1367 = distinct !DILexicalBlock(scope: !1351, file: !1, line: 412, column: 3)
!1368 = !DILocation(line: 412, column: 3, scope: !1367, inlinedAt: !1359)
!1369 = !DILocation(line: 161, column: 33, scope: !712, inlinedAt: !1370)
!1370 = distinct !DILocation(line: 412, column: 3, scope: !1366, inlinedAt: !1359)
!1371 = !DILocation(line: 161, column: 40, scope: !712, inlinedAt: !1370)
!1372 = !DILocation(line: 162, column: 15, scope: !719, inlinedAt: !1370)
!1373 = !DILocation(line: 162, column: 9, scope: !719, inlinedAt: !1370)
!1374 = !DILocation(line: 162, column: 7, scope: !712, inlinedAt: !1370)
!1375 = !DILocation(line: 163, column: 27, scope: !719, inlinedAt: !1370)
!1376 = !DILocation(line: 163, column: 5, scope: !719, inlinedAt: !1370)
!1377 = !DILocation(line: 165, column: 39, scope: !719, inlinedAt: !1370)
!1378 = !DILocation(line: 165, column: 5, scope: !719, inlinedAt: !1370)
!1379 = !DILocation(line: 166, column: 1, scope: !712, inlinedAt: !1370)
!1380 = !DILocation(line: 414, column: 3, scope: !1351, inlinedAt: !1359)
!1381 = !DILocation(line: 422, column: 7, scope: !1341)
!1382 = !DILocation(line: 423, column: 10, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1331, file: !1, line: 423, column: 7)
!1384 = !DILocation(line: 423, column: 18, scope: !1383)
!1385 = !DILocation(line: 423, column: 7, scope: !1331)
!1386 = !DILocation(line: 409, column: 37, scope: !1351, inlinedAt: !1387)
!1387 = distinct !DILocation(line: 424, column: 12, scope: !1383)
!1388 = !DILocation(line: 409, column: 52, scope: !1351, inlinedAt: !1387)
!1389 = !DILocation(line: 410, column: 15, scope: !1351, inlinedAt: !1387)
!1390 = !DILocation(line: 410, column: 19, scope: !1351, inlinedAt: !1387)
!1391 = !DILocation(line: 410, column: 6, scope: !1351, inlinedAt: !1387)
!1392 = !DILocation(line: 410, column: 10, scope: !1351, inlinedAt: !1387)
!1393 = !DILocation(line: 411, column: 3, scope: !1357, inlinedAt: !1387)
!1394 = !DILocation(line: 412, column: 3, scope: !1366, inlinedAt: !1387)
!1395 = !DILocation(line: 412, column: 3, scope: !1367, inlinedAt: !1387)
!1396 = !DILocation(line: 161, column: 33, scope: !712, inlinedAt: !1397)
!1397 = distinct !DILocation(line: 412, column: 3, scope: !1366, inlinedAt: !1387)
!1398 = !DILocation(line: 161, column: 40, scope: !712, inlinedAt: !1397)
!1399 = !DILocation(line: 162, column: 15, scope: !719, inlinedAt: !1397)
!1400 = !DILocation(line: 162, column: 9, scope: !719, inlinedAt: !1397)
!1401 = !DILocation(line: 162, column: 7, scope: !712, inlinedAt: !1397)
!1402 = !DILocation(line: 163, column: 27, scope: !719, inlinedAt: !1397)
!1403 = !DILocation(line: 163, column: 5, scope: !719, inlinedAt: !1397)
!1404 = !DILocation(line: 165, column: 39, scope: !719, inlinedAt: !1397)
!1405 = !DILocation(line: 165, column: 5, scope: !719, inlinedAt: !1397)
!1406 = !DILocation(line: 166, column: 1, scope: !712, inlinedAt: !1397)
!1407 = !DILocation(line: 414, column: 3, scope: !1351, inlinedAt: !1387)
!1408 = !DILocation(line: 424, column: 5, scope: !1383)
!1409 = !DILocation(line: 427, column: 19, scope: !1331)
!1410 = !DILocation(line: 427, column: 6, scope: !1331)
!1411 = !DILocation(line: 427, column: 17, scope: !1331)
!1412 = !DILocation(line: 428, column: 47, scope: !1331)
!1413 = !DILocation(line: 428, column: 51, scope: !1331)
!1414 = !DILocation(line: 111, column: 38, scope: !572, inlinedAt: !1415)
!1415 = distinct !DILocation(line: 428, column: 12, scope: !1331)
!1416 = !DILocation(line: 111, column: 56, scope: !572, inlinedAt: !1415)
!1417 = !DILocation(line: 112, column: 3, scope: !572, inlinedAt: !1415)
!1418 = !DILocation(line: 113, column: 6, scope: !572, inlinedAt: !1415)
!1419 = !DILocation(line: 113, column: 13, scope: !572, inlinedAt: !1415)
!1420 = !DILocation(line: 114, column: 20, scope: !572, inlinedAt: !1415)
!1421 = !DILocation(line: 114, column: 15, scope: !572, inlinedAt: !1415)
!1422 = !DILocation(line: 115, column: 15, scope: !572, inlinedAt: !1415)
!1423 = !DILocation(line: 116, column: 3, scope: !596, inlinedAt: !1415)
!1424 = !DILocation(line: 116, column: 3, scope: !572, inlinedAt: !1415)
!1425 = !DILocalVariable(name: "L", arg: 1, scope: !1426, file: !1, line: 384, type: !148)
!1426 = distinct !DISubprogram(name: "resume", scope: !1, file: !1, line: 384, type: !578, isLocal: true, isDefinition: true, scopeLine: 384, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1427)
!1427 = !{!1425, !1428, !1429, !1430}
!1428 = !DILocalVariable(name: "ud", arg: 2, scope: !1426, file: !1, line: 384, type: !52)
!1429 = !DILocalVariable(name: "firstArg", scope: !1426, file: !1, line: 385, type: !157)
!1430 = !DILocalVariable(name: "ci", scope: !1426, file: !1, line: 386, type: !238)
!1431 = !DILocation(line: 384, column: 32, scope: !1426, inlinedAt: !1432)
!1432 = distinct !DILocation(line: 116, column: 3, scope: !599, inlinedAt: !1415)
!1433 = !DILocation(line: 384, column: 41, scope: !1426, inlinedAt: !1432)
!1434 = !DILocation(line: 385, column: 9, scope: !1426, inlinedAt: !1432)
!1435 = !DILocation(line: 386, column: 21, scope: !1426, inlinedAt: !1432)
!1436 = !DILocation(line: 386, column: 13, scope: !1426, inlinedAt: !1432)
!1437 = !DILocation(line: 387, column: 10, scope: !1438, inlinedAt: !1432)
!1438 = distinct !DILexicalBlock(scope: !1426, file: !1, line: 387, column: 7)
!1439 = !DILocation(line: 387, column: 17, scope: !1438, inlinedAt: !1432)
!1440 = !DILocation(line: 387, column: 7, scope: !1426, inlinedAt: !1432)
!1441 = !DILocation(line: 389, column: 34, scope: !1442, inlinedAt: !1432)
!1442 = distinct !DILexicalBlock(scope: !1443, file: !1, line: 389, column: 9)
!1443 = distinct !DILexicalBlock(scope: !1438, file: !1, line: 387, column: 23)
!1444 = !DILocation(line: 389, column: 9, scope: !1442, inlinedAt: !1432)
!1445 = !DILocation(line: 389, column: 52, scope: !1442, inlinedAt: !1432)
!1446 = !DILocation(line: 389, column: 9, scope: !1443, inlinedAt: !1432)
!1447 = !DILocation(line: 394, column: 15, scope: !1448, inlinedAt: !1432)
!1448 = distinct !DILexicalBlock(scope: !1438, file: !1, line: 392, column: 8)
!1449 = !DILocation(line: 395, column: 10, scope: !1450, inlinedAt: !1432)
!1450 = distinct !DILexicalBlock(scope: !1448, file: !1, line: 395, column: 9)
!1451 = !DILocation(line: 395, column: 9, scope: !1448, inlinedAt: !1432)
!1452 = !DILocation(line: 399, column: 11, scope: !1453, inlinedAt: !1432)
!1453 = distinct !DILexicalBlock(scope: !1454, file: !1, line: 399, column: 11)
!1454 = distinct !DILexicalBlock(scope: !1450, file: !1, line: 395, column: 23)
!1455 = !DILocation(line: 399, column: 11, scope: !1454, inlinedAt: !1432)
!1456 = !DILocation(line: 400, column: 21, scope: !1453, inlinedAt: !1432)
!1457 = !DILocation(line: 400, column: 25, scope: !1453, inlinedAt: !1432)
!1458 = !DILocation(line: 400, column: 16, scope: !1453, inlinedAt: !1432)
!1459 = !DILocation(line: 400, column: 9, scope: !1453, inlinedAt: !1432)
!1460 = !DILocation(line: 403, column: 24, scope: !1450, inlinedAt: !1432)
!1461 = !DILocation(line: 403, column: 10, scope: !1450, inlinedAt: !1432)
!1462 = !DILocation(line: 403, column: 15, scope: !1450, inlinedAt: !1432)
!1463 = !DILocation(line: 405, column: 19, scope: !1426, inlinedAt: !1432)
!1464 = !DILocation(line: 405, column: 3, scope: !1426, inlinedAt: !1432)
!1465 = !DILocation(line: 406, column: 1, scope: !1426, inlinedAt: !1432)
!1466 = !DILocation(line: 0, scope: !599, inlinedAt: !1415)
!1467 = !DILocation(line: 116, column: 3, scope: !599, inlinedAt: !1415)
!1468 = !DILocation(line: 119, column: 20, scope: !572, inlinedAt: !1415)
!1469 = !DILocation(line: 119, column: 15, scope: !572, inlinedAt: !1415)
!1470 = !DILocation(line: 120, column: 13, scope: !572, inlinedAt: !1415)
!1471 = !DILocation(line: 121, column: 1, scope: !572, inlinedAt: !1415)
!1472 = !DILocation(line: 120, column: 3, scope: !572, inlinedAt: !1415)
!1473 = !DILocation(line: 419, column: 7, scope: !1331)
!1474 = !DILocation(line: 429, column: 14, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1331, file: !1, line: 429, column: 7)
!1476 = !DILocation(line: 429, column: 7, scope: !1331)
!1477 = !DILocation(line: 430, column: 17, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1475, file: !1, line: 429, column: 20)
!1479 = !DILocation(line: 430, column: 15, scope: !1478)
!1480 = !DILocation(line: 431, column: 36, scope: !1478)
!1481 = !DILocation(line: 51, column: 35, scope: !394, inlinedAt: !1482)
!1482 = distinct !DILocation(line: 431, column: 5, scope: !1478)
!1483 = !DILocation(line: 51, column: 42, scope: !394, inlinedAt: !1482)
!1484 = !DILocation(line: 51, column: 57, scope: !394, inlinedAt: !1482)
!1485 = !DILocation(line: 52, column: 3, scope: !394, inlinedAt: !1482)
!1486 = !DILocation(line: 54, column: 7, scope: !402, inlinedAt: !1482)
!1487 = !DILocation(line: 55, column: 7, scope: !403, inlinedAt: !1482)
!1488 = !DILocation(line: 58, column: 7, scope: !406, inlinedAt: !1482)
!1489 = !DILocation(line: 59, column: 7, scope: !407, inlinedAt: !1482)
!1490 = !DILocation(line: 63, column: 7, scope: !409, inlinedAt: !1482)
!1491 = !DILocation(line: 64, column: 7, scope: !410, inlinedAt: !1482)
!1492 = !DILocation(line: 0, scope: !1478)
!1493 = !DILocation(line: 67, column: 19, scope: !394, inlinedAt: !1482)
!1494 = !DILocation(line: 67, column: 10, scope: !394, inlinedAt: !1482)
!1495 = !DILocation(line: 68, column: 1, scope: !394, inlinedAt: !1482)
!1496 = !DILocation(line: 432, column: 21, scope: !1478)
!1497 = !DILocation(line: 432, column: 8, scope: !1478)
!1498 = !DILocation(line: 432, column: 12, scope: !1478)
!1499 = !DILocation(line: 432, column: 16, scope: !1478)
!1500 = !DILocation(line: 433, column: 3, scope: !1478)
!1501 = !DILocation(line: 436, column: 17, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1475, file: !1, line: 434, column: 8)
!1503 = !DILocation(line: 436, column: 14, scope: !1502)
!1504 = !DILocation(line: 0, scope: !1502)
!1505 = !DILocation(line: 438, column: 3, scope: !1331)
!1506 = !DILocation(line: 440, column: 3, scope: !1331)
!1507 = !DILocation(line: 0, scope: !1331)
!1508 = !DILocation(line: 441, column: 1, scope: !1331)
!1509 = distinct !DISubprogram(name: "lua_yield", scope: !1, file: !1, line: 444, type: !1332, isLocal: false, isDefinition: true, scopeLine: 444, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1510)
!1510 = !{!1511, !1512}
!1511 = !DILocalVariable(name: "L", arg: 1, scope: !1509, file: !1, line: 444, type: !148)
!1512 = !DILocalVariable(name: "nresults", arg: 2, scope: !1509, file: !1, line: 444, type: !104)
!1513 = !DILocation(line: 444, column: 35, scope: !1509)
!1514 = !DILocation(line: 444, column: 42, scope: !1509)
!1515 = !DILocation(line: 447, column: 10, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1509, file: !1, line: 447, column: 7)
!1517 = !DILocation(line: 447, column: 23, scope: !1516)
!1518 = !DILocation(line: 447, column: 18, scope: !1516)
!1519 = !DILocation(line: 447, column: 7, scope: !1509)
!1520 = !DILocation(line: 448, column: 5, scope: !1516)
!1521 = !DILocation(line: 449, column: 16, scope: !1509)
!1522 = !DILocation(line: 449, column: 20, scope: !1509)
!1523 = !DILocation(line: 449, column: 6, scope: !1509)
!1524 = !DILocation(line: 449, column: 11, scope: !1509)
!1525 = !DILocation(line: 450, column: 6, scope: !1509)
!1526 = !DILocation(line: 450, column: 13, scope: !1509)
!1527 = !DILocation(line: 452, column: 3, scope: !1509)
!1528 = distinct !DISubprogram(name: "luaD_pcall", scope: !1, file: !1, line: 456, type: !1529, isLocal: false, isDefinition: true, scopeLine: 457, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1531)
!1529 = !DISubroutineType(types: !1530)
!1530 = !{!104, !148, !575, !52, !309, !309}
!1531 = !{!1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542}
!1532 = !DILocalVariable(name: "L", arg: 1, scope: !1528, file: !1, line: 456, type: !148)
!1533 = !DILocalVariable(name: "func", arg: 2, scope: !1528, file: !1, line: 456, type: !575)
!1534 = !DILocalVariable(name: "u", arg: 3, scope: !1528, file: !1, line: 456, type: !52)
!1535 = !DILocalVariable(name: "old_top", arg: 4, scope: !1528, file: !1, line: 457, type: !309)
!1536 = !DILocalVariable(name: "ef", arg: 5, scope: !1528, file: !1, line: 457, type: !309)
!1537 = !DILocalVariable(name: "status", scope: !1528, file: !1, line: 458, type: !104)
!1538 = !DILocalVariable(name: "oldnCcalls", scope: !1528, file: !1, line: 459, type: !259)
!1539 = !DILocalVariable(name: "old_ci", scope: !1528, file: !1, line: 460, type: !309)
!1540 = !DILocalVariable(name: "old_allowhooks", scope: !1528, file: !1, line: 461, type: !38)
!1541 = !DILocalVariable(name: "old_errfunc", scope: !1528, file: !1, line: 462, type: !309)
!1542 = !DILocalVariable(name: "oldtop", scope: !1543, file: !1, line: 466, type: !157)
!1543 = distinct !DILexicalBlock(scope: !1544, file: !1, line: 465, column: 20)
!1544 = distinct !DILexicalBlock(scope: !1528, file: !1, line: 465, column: 7)
!1545 = !DILocation(line: 456, column: 28, scope: !1528)
!1546 = !DILocation(line: 456, column: 37, scope: !1528)
!1547 = !DILocation(line: 456, column: 49, scope: !1528)
!1548 = !DILocation(line: 457, column: 27, scope: !1528)
!1549 = !DILocation(line: 457, column: 46, scope: !1528)
!1550 = !DILocation(line: 459, column: 34, scope: !1528)
!1551 = !DILocation(line: 459, column: 18, scope: !1528)
!1552 = !DILocation(line: 460, column: 22, scope: !1528)
!1553 = !DILocation(line: 461, column: 31, scope: !1528)
!1554 = !DILocation(line: 461, column: 11, scope: !1528)
!1555 = !DILocation(line: 462, column: 30, scope: !1528)
!1556 = !DILocation(line: 462, column: 13, scope: !1528)
!1557 = !DILocation(line: 463, column: 14, scope: !1528)
!1558 = !DILocation(line: 111, column: 38, scope: !572, inlinedAt: !1559)
!1559 = distinct !DILocation(line: 464, column: 12, scope: !1528)
!1560 = !DILocation(line: 111, column: 47, scope: !572, inlinedAt: !1559)
!1561 = !DILocation(line: 111, column: 56, scope: !572, inlinedAt: !1559)
!1562 = !DILocation(line: 112, column: 3, scope: !572, inlinedAt: !1559)
!1563 = !DILocation(line: 113, column: 6, scope: !572, inlinedAt: !1559)
!1564 = !DILocation(line: 113, column: 13, scope: !572, inlinedAt: !1559)
!1565 = !DILocation(line: 114, column: 20, scope: !572, inlinedAt: !1559)
!1566 = !DILocation(line: 114, column: 15, scope: !572, inlinedAt: !1559)
!1567 = !DILocation(line: 115, column: 15, scope: !572, inlinedAt: !1559)
!1568 = !DILocation(line: 116, column: 3, scope: !596, inlinedAt: !1559)
!1569 = !DILocation(line: 116, column: 3, scope: !572, inlinedAt: !1559)
!1570 = !DILocation(line: 116, column: 3, scope: !599, inlinedAt: !1559)
!1571 = !DILocation(line: 119, column: 20, scope: !572, inlinedAt: !1559)
!1572 = !DILocation(line: 119, column: 15, scope: !572, inlinedAt: !1559)
!1573 = !DILocation(line: 120, column: 13, scope: !572, inlinedAt: !1559)
!1574 = !DILocation(line: 121, column: 1, scope: !572, inlinedAt: !1559)
!1575 = !DILocation(line: 120, column: 3, scope: !572, inlinedAt: !1559)
!1576 = !DILocation(line: 458, column: 7, scope: !1528)
!1577 = !DILocation(line: 465, column: 14, scope: !1544)
!1578 = !DILocation(line: 465, column: 7, scope: !1528)
!1579 = !DILocation(line: 460, column: 13, scope: !1528)
!1580 = !DILocation(line: 466, column: 20, scope: !1543)
!1581 = !DILocation(line: 466, column: 11, scope: !1543)
!1582 = !DILocation(line: 467, column: 5, scope: !1543)
!1583 = !DILocation(line: 51, column: 35, scope: !394, inlinedAt: !1584)
!1584 = distinct !DILocation(line: 468, column: 5, scope: !1543)
!1585 = !DILocation(line: 51, column: 42, scope: !394, inlinedAt: !1584)
!1586 = !DILocation(line: 51, column: 57, scope: !394, inlinedAt: !1584)
!1587 = !DILocation(line: 52, column: 3, scope: !394, inlinedAt: !1584)
!1588 = !DILocation(line: 54, column: 7, scope: !402, inlinedAt: !1584)
!1589 = !DILocation(line: 55, column: 7, scope: !403, inlinedAt: !1584)
!1590 = !DILocation(line: 58, column: 7, scope: !406, inlinedAt: !1584)
!1591 = !DILocation(line: 59, column: 7, scope: !407, inlinedAt: !1584)
!1592 = !DILocation(line: 63, column: 7, scope: !409, inlinedAt: !1584)
!1593 = !DILocation(line: 64, column: 7, scope: !410, inlinedAt: !1584)
!1594 = !DILocation(line: 0, scope: !1543)
!1595 = !DILocation(line: 67, column: 19, scope: !394, inlinedAt: !1584)
!1596 = !DILocation(line: 67, column: 6, scope: !394, inlinedAt: !1584)
!1597 = !DILocation(line: 67, column: 10, scope: !394, inlinedAt: !1584)
!1598 = !DILocation(line: 68, column: 1, scope: !394, inlinedAt: !1584)
!1599 = !DILocation(line: 469, column: 16, scope: !1543)
!1600 = !DILocation(line: 470, column: 13, scope: !1543)
!1601 = !DILocation(line: 470, column: 11, scope: !1543)
!1602 = !DILocation(line: 471, column: 22, scope: !1543)
!1603 = !DILocation(line: 471, column: 8, scope: !1543)
!1604 = !DILocation(line: 471, column: 13, scope: !1543)
!1605 = !DILocation(line: 472, column: 25, scope: !1543)
!1606 = !DILocation(line: 472, column: 8, scope: !1543)
!1607 = !DILocation(line: 472, column: 16, scope: !1543)
!1608 = !DILocation(line: 473, column: 18, scope: !1543)
!1609 = !DILocation(line: 71, column: 45, scope: !521, inlinedAt: !1610)
!1610 = distinct !DILocation(line: 474, column: 5, scope: !1543)
!1611 = !DILocation(line: 73, column: 10, scope: !527, inlinedAt: !1610)
!1612 = !DILocation(line: 73, column: 18, scope: !527, inlinedAt: !1610)
!1613 = !DILocation(line: 73, column: 7, scope: !521, inlinedAt: !1610)
!1614 = !DILocation(line: 74, column: 17, scope: !526, inlinedAt: !1610)
!1615 = !DILocation(line: 74, column: 9, scope: !526, inlinedAt: !1610)
!1616 = !DILocation(line: 75, column: 19, scope: !537, inlinedAt: !1610)
!1617 = !DILocation(line: 75, column: 9, scope: !526, inlinedAt: !1610)
!1618 = !DILocation(line: 152, column: 33, scope: !540, inlinedAt: !1619)
!1619 = distinct !DILocation(line: 76, column: 7, scope: !537, inlinedAt: !1610)
!1620 = !DILocation(line: 152, column: 40, scope: !540, inlinedAt: !1619)
!1621 = !DILocation(line: 153, column: 13, scope: !540, inlinedAt: !1619)
!1622 = !DILocation(line: 154, column: 3, scope: !540, inlinedAt: !1619)
!1623 = !DILocation(line: 155, column: 14, scope: !540, inlinedAt: !1619)
!1624 = !DILocation(line: 156, column: 15, scope: !540, inlinedAt: !1619)
!1625 = !DILocation(line: 156, column: 18, scope: !540, inlinedAt: !1619)
!1626 = !DILocation(line: 156, column: 32, scope: !540, inlinedAt: !1619)
!1627 = !DILocation(line: 156, column: 27, scope: !540, inlinedAt: !1619)
!1628 = !DILocation(line: 156, column: 9, scope: !540, inlinedAt: !1619)
!1629 = !DILocation(line: 157, column: 39, scope: !540, inlinedAt: !1619)
!1630 = !DILocation(line: 157, column: 6, scope: !540, inlinedAt: !1619)
!1631 = !DILocation(line: 157, column: 13, scope: !540, inlinedAt: !1619)
!1632 = !DILocation(line: 158, column: 1, scope: !540, inlinedAt: !1619)
!1633 = !DILocation(line: 76, column: 7, scope: !537, inlinedAt: !1610)
!1634 = !DILocation(line: 77, column: 3, scope: !526, inlinedAt: !1610)
!1635 = !DILocation(line: 78, column: 1, scope: !521, inlinedAt: !1610)
!1636 = !DILocation(line: 475, column: 3, scope: !1543)
!1637 = !DILocation(line: 476, column: 14, scope: !1528)
!1638 = !DILocation(line: 477, column: 3, scope: !1528)
!1639 = distinct !DISubprogram(name: "luaD_protectedparser", scope: !1, file: !1, line: 509, type: !1640, isLocal: false, isDefinition: true, scopeLine: 509, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1642)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{!104, !148, !374, !276}
!1642 = !{!1643, !1644, !1645, !1646, !1647}
!1643 = !DILocalVariable(name: "L", arg: 1, scope: !1639, file: !1, line: 509, type: !148)
!1644 = !DILocalVariable(name: "z", arg: 2, scope: !1639, file: !1, line: 509, type: !374)
!1645 = !DILocalVariable(name: "name", arg: 3, scope: !1639, file: !1, line: 509, type: !276)
!1646 = !DILocalVariable(name: "p", scope: !1639, file: !1, line: 510, type: !371)
!1647 = !DILocalVariable(name: "status", scope: !1639, file: !1, line: 511, type: !104)
!1648 = !DILocation(line: 509, column: 38, scope: !1639)
!1649 = !DILocation(line: 509, column: 46, scope: !1639)
!1650 = !DILocation(line: 509, column: 61, scope: !1639)
!1651 = !DILocation(line: 510, column: 3, scope: !1639)
!1652 = !DILocation(line: 512, column: 5, scope: !1639)
!1653 = !DILocation(line: 512, column: 7, scope: !1639)
!1654 = !{!1655, !428, i64 0}
!1655 = !{!"SParser", !428, i64 0, !472, i64 8, !428, i64 32}
!1656 = !DILocation(line: 512, column: 14, scope: !1639)
!1657 = !DILocation(line: 512, column: 19, scope: !1639)
!1658 = !{!1655, !428, i64 32}
!1659 = !DILocation(line: 513, column: 3, scope: !1639)
!1660 = !{!1655, !428, i64 8}
!1661 = !{!1655, !432, i64 24}
!1662 = !DILocation(line: 514, column: 40, scope: !1639)
!1663 = !DILocation(line: 514, column: 65, scope: !1639)
!1664 = !DILocation(line: 514, column: 12, scope: !1639)
!1665 = !DILocation(line: 511, column: 7, scope: !1639)
!1666 = !DILocation(line: 515, column: 3, scope: !1639)
!1667 = !DILocation(line: 517, column: 1, scope: !1639)
!1668 = !DILocation(line: 516, column: 3, scope: !1639)
!1669 = distinct !DISubprogram(name: "f_parser", scope: !1, file: !1, line: 491, type: !578, isLocal: true, isDefinition: true, scopeLine: 491, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1670)
!1670 = !{!1671, !1672, !1673, !1674, !1675, !1678, !1679, !1680}
!1671 = !DILocalVariable(name: "L", arg: 1, scope: !1669, file: !1, line: 491, type: !148)
!1672 = !DILocalVariable(name: "ud", arg: 2, scope: !1669, file: !1, line: 491, type: !52)
!1673 = !DILocalVariable(name: "i", scope: !1669, file: !1, line: 492, type: !104)
!1674 = !DILocalVariable(name: "tf", scope: !1669, file: !1, line: 493, type: !817)
!1675 = !DILocalVariable(name: "cl", scope: !1669, file: !1, line: 494, type: !1676)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = !DIDerivedType(tag: DW_TAG_typedef, name: "Closure", file: !28, line: 312, baseType: !130)
!1678 = !DILocalVariable(name: "p", scope: !1669, file: !1, line: 495, type: !370)
!1679 = !DILocalVariable(name: "c", scope: !1669, file: !1, line: 496, type: !104)
!1680 = !DILocalVariable(name: "i_o", scope: !1681, file: !1, line: 504, type: !90)
!1681 = distinct !DILexicalBlock(scope: !1669, file: !1, line: 504, column: 3)
!1682 = !DILocation(line: 491, column: 34, scope: !1669)
!1683 = !DILocation(line: 491, column: 43, scope: !1669)
!1684 = !DILocation(line: 495, column: 19, scope: !1669)
!1685 = !DILocation(line: 496, column: 29, scope: !1669)
!1686 = !DILocation(line: 496, column: 11, scope: !1669)
!1687 = !DILocation(line: 496, column: 7, scope: !1669)
!1688 = !DILocation(line: 497, column: 3, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1690, file: !1, line: 497, column: 3)
!1690 = distinct !DILexicalBlock(scope: !1669, file: !1, line: 497, column: 3)
!1691 = !DILocation(line: 497, column: 3, scope: !1690)
!1692 = !DILocation(line: 498, column: 28, scope: !1669)
!1693 = !DILocation(line: 499, column: 66, scope: !1669)
!1694 = !DILocation(line: 499, column: 75, scope: !1669)
!1695 = !DILocation(line: 498, column: 8, scope: !1669)
!1696 = !DILocation(line: 493, column: 10, scope: !1669)
!1697 = !DILocation(line: 500, column: 32, scope: !1669)
!1698 = !{!909, !420, i64 112}
!1699 = !DILocation(line: 500, column: 28, scope: !1669)
!1700 = !DILocation(line: 500, column: 38, scope: !1669)
!1701 = !DILocation(line: 500, column: 8, scope: !1669)
!1702 = !DILocation(line: 494, column: 12, scope: !1669)
!1703 = !DILocation(line: 501, column: 9, scope: !1669)
!1704 = !DILocation(line: 501, column: 11, scope: !1669)
!1705 = !DILocation(line: 492, column: 7, scope: !1669)
!1706 = !DILocation(line: 502, column: 8, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1669, file: !1, line: 502, column: 3)
!1708 = !DILocation(line: 502, column: 23, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1707, file: !1, line: 502, column: 3)
!1710 = !DILocation(line: 502, column: 17, scope: !1709)
!1711 = !DILocation(line: 502, column: 3, scope: !1707)
!1712 = !DILocation(line: 503, column: 23, scope: !1709)
!1713 = !DILocation(line: 503, column: 5, scope: !1709)
!1714 = !DILocation(line: 503, column: 21, scope: !1709)
!1715 = !DILocation(line: 502, column: 30, scope: !1709)
!1716 = !DILocation(line: 502, column: 3, scope: !1709)
!1717 = distinct !{!1717, !1711, !1718}
!1718 = !DILocation(line: 503, column: 38, scope: !1707)
!1719 = !DILocation(line: 504, column: 3, scope: !1681)
!1720 = !DILocation(line: 505, column: 3, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1722, file: !1, line: 505, column: 3)
!1722 = distinct !DILexicalBlock(scope: !1669, file: !1, line: 505, column: 3)
!1723 = !DILocation(line: 505, column: 3, scope: !1722)
!1724 = !DILocation(line: 161, column: 33, scope: !712, inlinedAt: !1725)
!1725 = distinct !DILocation(line: 505, column: 3, scope: !1721)
!1726 = !DILocation(line: 161, column: 40, scope: !712, inlinedAt: !1725)
!1727 = !DILocation(line: 162, column: 15, scope: !719, inlinedAt: !1725)
!1728 = !DILocation(line: 162, column: 9, scope: !719, inlinedAt: !1725)
!1729 = !DILocation(line: 162, column: 7, scope: !712, inlinedAt: !1725)
!1730 = !DILocation(line: 163, column: 27, scope: !719, inlinedAt: !1725)
!1731 = !DILocation(line: 163, column: 5, scope: !719, inlinedAt: !1725)
!1732 = !DILocation(line: 165, column: 39, scope: !719, inlinedAt: !1725)
!1733 = !DILocation(line: 165, column: 5, scope: !719, inlinedAt: !1725)
!1734 = !DILocation(line: 166, column: 1, scope: !712, inlinedAt: !1725)
!1735 = !DILocation(line: 506, column: 1, scope: !1669)
