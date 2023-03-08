; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lundump.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lundump.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Proto = type { %union.GCObject*, i8, i8, %struct.lua_TValue*, i32*, %struct.Proto**, i32*, %struct.LocVar*, %union.TString**, %union.TString*, i32, i32, i32, i32, i32, i32, i32, i32, %union.GCObject*, i8, i8, i8, i8 }
%struct.lua_TValue = type { %union.Value, i32 }
%union.Value = type { %union.GCObject* }
%struct.LocVar = type { %union.TString*, i32, i32 }
%union.TString = type { %struct.anon }
%struct.anon = type { %union.GCObject*, i8, i8, i8, i32, i64 }
%union.GCObject = type { %struct.lua_State }
%struct.lua_State = type { %union.GCObject*, i8, i8, i8, %struct.lua_TValue*, %struct.lua_TValue*, %struct.global_State*, %struct.CallInfo*, i32*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.CallInfo*, %struct.CallInfo*, i32, i32, i16, i16, i8, i8, i32, i32, void (%struct.lua_State*, %struct.lua_Debug*)*, %struct.lua_TValue, %struct.lua_TValue, %union.GCObject*, %union.GCObject*, %struct.lua_longjmp*, i64 }
%struct.global_State = type { %struct.stringtable, i8* (i8*, i8*, i64, i64)*, i8*, i8, i8, i32, %union.GCObject*, %union.GCObject**, %union.GCObject*, %union.GCObject*, %union.GCObject*, %union.GCObject*, %struct.Mbuffer, i64, i64, i64, i64, i32, i32, {}*, %struct.lua_TValue, %struct.lua_State*, %struct.UpVal, [9 x %struct.Table*], [17 x %union.TString*] }
%struct.stringtable = type { %union.GCObject**, i32, i32 }
%struct.Mbuffer = type { i8*, i64, i64 }
%struct.UpVal = type { %union.GCObject*, i8, i8, %struct.lua_TValue*, %union.anon }
%union.anon = type { %struct.lua_TValue }
%struct.Table = type { %union.GCObject*, i8, i8, i8, i8, %struct.Table*, %struct.lua_TValue*, %struct.Node*, %struct.Node*, %union.GCObject*, i32 }
%struct.Node = type { %struct.lua_TValue, %union.TKey }
%union.TKey = type { %struct.anon.1 }
%struct.anon.1 = type { %union.Value, i32, %struct.Node* }
%struct.CallInfo = type { %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*, i32*, i32, i32 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, [60 x i8], i32 }
%struct.lua_longjmp = type opaque
%struct.Zio = type { i64, i8*, i8* (%struct.lua_State*, i8*, i64*)*, i8*, %struct.lua_State* }
%struct.LoadState = type { %struct.lua_State*, %struct.Zio*, %struct.Mbuffer*, i8* }

@.str = private unnamed_addr constant [5 x i8] c"\1BLua\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"binary string\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"=?\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"bad header\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"unexpected end\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"%s: %s in precompiled chunk\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"code too deep\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"bad code\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"bad integer\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"bad constant\00", align 1

; Function Attrs: noredzone nounwind
define hidden %struct.Proto* @luaU_undump(%struct.lua_State*, %struct.Zio*, %struct.Mbuffer*, i8*) local_unnamed_addr #0 !dbg !347 {
  %5 = alloca [12 x i8], align 1
  %6 = alloca [12 x i8], align 1
  %7 = alloca %struct.LoadState, align 8
  %8 = bitcast %struct.LoadState* %7 to i8*, !dbg !396
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #4, !dbg !396
  %9 = load i8, i8* %3, align 1, !dbg !397, !tbaa !399
  switch i8 %9, label %12 [
    i8 64, label %10
    i8 61, label %10
    i8 27, label %13
  ], !dbg !402

; <label>:10:                                     ; preds = %4, %4
  %11 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !403
  br label %13, !dbg !404

; <label>:12:                                     ; preds = %4
  br label %13

; <label>:13:                                     ; preds = %4, %12, %10
  %14 = phi i8* [ %3, %12 ], [ %11, %10 ], [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), %4 ]
  %15 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %7, i64 0, i32 3, !dbg !405
  store i8* %14, i8** %15, align 8, !dbg !405, !tbaa !406
  %16 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %7, i64 0, i32 0, !dbg !409
  store %struct.lua_State* %0, %struct.lua_State** %16, align 8, !dbg !410, !tbaa !411
  %17 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %7, i64 0, i32 1, !dbg !412
  store %struct.Zio* %1, %struct.Zio** %17, align 8, !dbg !413, !tbaa !414
  %18 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %7, i64 0, i32 2, !dbg !415
  store %struct.Mbuffer* %2, %struct.Mbuffer** %18, align 8, !dbg !416, !tbaa !417
  %19 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 0, !dbg !420
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %19) #4, !dbg !420
  %20 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 0, !dbg !421
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %20) #4, !dbg !421
  %21 = call i8* @memcpy(i8* nonnull %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 4) #5, !dbg !431
  %22 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 4, !dbg !432
  %23 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 5, !dbg !433
  store i8 81, i8* %22, align 1, !dbg !434, !tbaa !399
  %24 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 6, !dbg !435
  store i8 0, i8* %23, align 1, !dbg !436, !tbaa !399
  %25 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 7, !dbg !437
  store i8 1, i8* %24, align 1, !dbg !438, !tbaa !399
  %26 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 8, !dbg !439
  store i8 4, i8* %25, align 1, !dbg !440, !tbaa !399
  %27 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 9, !dbg !441
  store i8 8, i8* %26, align 1, !dbg !442, !tbaa !399
  %28 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 10, !dbg !443
  store i8 4, i8* %27, align 1, !dbg !444, !tbaa !399
  %29 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 11, !dbg !445
  store i8 8, i8* %28, align 1, !dbg !446, !tbaa !399
  store i8 0, i8* %29, align 1, !dbg !447, !tbaa !399
  %30 = call i64 @luaZ_read(%struct.Zio* %1, i8* nonnull %20, i64 12) #5, !dbg !460
  %31 = icmp eq i64 %30, 0, !dbg !462
  br i1 %31, label %35, label %32, !dbg !464

; <label>:32:                                     ; preds = %13
  %33 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !474
  %34 = load %struct.lua_State*, %struct.lua_State** %16, align 8, !dbg !475, !tbaa !411
  call void @luaD_throw(%struct.lua_State* %34, i32 3) #5, !dbg !476
  br label %35, !dbg !462

; <label>:35:                                     ; preds = %32, %13
  %36 = call i32 @memcmp(i8* nonnull %19, i8* nonnull %20, i64 12) #5, !dbg !477
  %37 = icmp eq i32 %36, 0, !dbg !477
  br i1 %37, label %44, label %38, !dbg !479

; <label>:38:                                     ; preds = %35
  %39 = load %struct.lua_State*, %struct.lua_State** %16, align 8, !dbg !483, !tbaa !411
  %40 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %7, i64 0, i32 3, !dbg !484
  %41 = load i8*, i8** %40, align 8, !dbg !484, !tbaa !406
  %42 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %39, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0)) #5, !dbg !485
  %43 = load %struct.lua_State*, %struct.lua_State** %16, align 8, !dbg !486, !tbaa !411
  call void @luaD_throw(%struct.lua_State* %43, i32 3) #5, !dbg !487
  br label %44, !dbg !477

; <label>:44:                                     ; preds = %35, %38
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %20) #4, !dbg !488
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %19) #4, !dbg !488
  %45 = call %union.TString* @luaS_newlstr(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i64 2) #5, !dbg !489
  %46 = call fastcc %struct.Proto* @LoadFunction(%struct.LoadState* nonnull %7, %union.TString* %45) #6, !dbg !490
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #4, !dbg !491
  ret %struct.Proto* %46, !dbg !492
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define internal fastcc %struct.Proto* @LoadFunction(%struct.LoadState*, %union.TString*) unnamed_addr #0 !dbg !493 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca double, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca i8, align 1
  %20 = alloca i8, align 1
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 0, !dbg !504
  %25 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !504, !tbaa !411
  %26 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %25, i64 0, i32 15, !dbg !506
  %27 = load i16, i16* %26, align 8, !dbg !507, !tbaa !508
  %28 = add i16 %27, 1, !dbg !507
  store i16 %28, i16* %26, align 8, !dbg !507, !tbaa !508
  %29 = icmp ugt i16 %28, 200, !dbg !514
  br i1 %29, label %30, label %36, !dbg !515

; <label>:30:                                     ; preds = %2
  %31 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 3, !dbg !519
  %32 = load i8*, i8** %31, align 8, !dbg !519, !tbaa !406
  %33 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %25, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0)) #5, !dbg !520
  %34 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !521, !tbaa !411
  tail call void @luaD_throw(%struct.lua_State* %34, i32 3) #5, !dbg !522
  %35 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !523, !tbaa !411
  br label %36, !dbg !524

; <label>:36:                                     ; preds = %30, %2
  %37 = phi %struct.lua_State* [ %35, %30 ], [ %25, %2 ], !dbg !523
  %38 = tail call %struct.Proto* @luaF_newproto(%struct.lua_State* %37) #5, !dbg !525
  %39 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !527, !tbaa !411
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %39, i64 0, i32 4, !dbg !527
  %41 = load %struct.lua_TValue*, %struct.lua_TValue** %40, align 8, !dbg !527, !tbaa !528
  %42 = bitcast %struct.lua_TValue* %41 to %struct.Proto**, !dbg !527
  store %struct.Proto* %38, %struct.Proto** %42, align 8, !dbg !527, !tbaa !399
  %43 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %41, i64 0, i32 1, !dbg !527
  store i32 9, i32* %43, align 8, !dbg !527, !tbaa !529
  %44 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !530, !tbaa !411
  %45 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %44, i64 0, i32 9, !dbg !530
  %46 = bitcast %struct.lua_TValue** %45 to i64*, !dbg !530
  %47 = load i64, i64* %46, align 8, !dbg !530, !tbaa !533
  %48 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %44, i64 0, i32 4, !dbg !530
  %49 = bitcast %struct.lua_TValue** %48 to i64*, !dbg !530
  %50 = load i64, i64* %49, align 8, !dbg !530, !tbaa !528
  %51 = sub i64 %47, %50, !dbg !530
  %52 = icmp slt i64 %51, 17, !dbg !530
  %53 = inttoptr i64 %50 to %struct.lua_TValue*, !dbg !534
  br i1 %52, label %54, label %58, !dbg !534

; <label>:54:                                     ; preds = %36
  tail call void @luaD_growstack(%struct.lua_State* %44, i32 1) #5, !dbg !530
  %55 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !534, !tbaa !411
  %56 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %55, i64 0, i32 4
  %57 = load %struct.lua_TValue*, %struct.lua_TValue** %56, align 8, !dbg !534, !tbaa !528
  br label %58, !dbg !530

; <label>:58:                                     ; preds = %36, %54
  %59 = phi %struct.lua_TValue** [ %48, %36 ], [ %56, %54 ], !dbg !534
  %60 = phi %struct.lua_TValue* [ %53, %36 ], [ %57, %54 ], !dbg !534
  %61 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %60, i64 1, !dbg !534
  store %struct.lua_TValue* %61, %struct.lua_TValue** %59, align 8, !dbg !534, !tbaa !528
  %62 = bitcast i64* %23 to i8*, !dbg !546
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %62) #4, !dbg !546
  %63 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 1, !dbg !551
  %64 = load %struct.Zio*, %struct.Zio** %63, align 8, !dbg !551, !tbaa !414
  %65 = call i64 @luaZ_read(%struct.Zio* %64, i8* nonnull %62, i64 8) #5, !dbg !552
  %66 = icmp eq i64 %65, 0, !dbg !554
  br i1 %66, label %73, label %67, !dbg !555

; <label>:67:                                     ; preds = %58
  %68 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !559, !tbaa !411
  %69 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 3, !dbg !560
  %70 = load i8*, i8** %69, align 8, !dbg !560, !tbaa !406
  %71 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %68, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %70, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !561
  %72 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !562, !tbaa !411
  call void @luaD_throw(%struct.lua_State* %72, i32 3) #5, !dbg !563
  br label %73, !dbg !554

; <label>:73:                                     ; preds = %58, %67
  %74 = load i64, i64* %23, align 8, !dbg !564, !tbaa !565
  %75 = icmp eq i64 %74, 0, !dbg !567
  br i1 %75, label %96, label %76, !dbg !568

; <label>:76:                                     ; preds = %73
  %77 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !569, !tbaa !411
  %78 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 2, !dbg !570
  %79 = load %struct.Mbuffer*, %struct.Mbuffer** %78, align 8, !dbg !570, !tbaa !417
  %80 = call i8* @luaZ_openspace(%struct.lua_State* %77, %struct.Mbuffer* %79, i64 %74) #5, !dbg !571
  %81 = load i64, i64* %23, align 8, !dbg !573, !tbaa !565
  %82 = load %struct.Zio*, %struct.Zio** %63, align 8, !dbg !578, !tbaa !414
  %83 = call i64 @luaZ_read(%struct.Zio* %82, i8* %80, i64 %81) #5, !dbg !579
  %84 = icmp eq i64 %83, 0, !dbg !581
  br i1 %84, label %91, label %85, !dbg !582

; <label>:85:                                     ; preds = %76
  %86 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !586, !tbaa !411
  %87 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 3, !dbg !587
  %88 = load i8*, i8** %87, align 8, !dbg !587, !tbaa !406
  %89 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %86, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %88, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !588
  %90 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !589, !tbaa !411
  call void @luaD_throw(%struct.lua_State* %90, i32 3) #5, !dbg !590
  br label %91, !dbg !581

; <label>:91:                                     ; preds = %76, %85
  %92 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !591, !tbaa !411
  %93 = load i64, i64* %23, align 8, !dbg !592, !tbaa !565
  %94 = add i64 %93, -1, !dbg !593
  %95 = call %union.TString* @luaS_newlstr(%struct.lua_State* %92, i8* %80, i64 %94) #5, !dbg !594
  br label %96

; <label>:96:                                     ; preds = %73, %91
  %97 = phi %union.TString* [ %95, %91 ], [ null, %73 ], !dbg !595
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %62) #4, !dbg !596
  %98 = getelementptr inbounds %struct.Proto, %struct.Proto* %38, i64 0, i32 9, !dbg !597
  %99 = icmp eq %union.TString* %97, null, !dbg !598
  %100 = select i1 %99, %union.TString* %1, %union.TString* %97, !dbg !600
  store %union.TString* %100, %union.TString** %98, align 8, !dbg !601, !tbaa !602
  %101 = bitcast i32* %22 to i8*, !dbg !612
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %101) #4, !dbg !612
  %102 = load %struct.Zio*, %struct.Zio** %63, align 8, !dbg !617, !tbaa !414
  %103 = call i64 @luaZ_read(%struct.Zio* %102, i8* nonnull %101, i64 4) #5, !dbg !618
  %104 = icmp eq i64 %103, 0, !dbg !620
  br i1 %104, label %111, label %105, !dbg !621

; <label>:105:                                    ; preds = %96
  %106 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !625, !tbaa !411
  %107 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 3, !dbg !626
  %108 = load i8*, i8** %107, align 8, !dbg !626, !tbaa !406
  %109 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %106, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %108, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !627
  %110 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !628, !tbaa !411
  call void @luaD_throw(%struct.lua_State* %110, i32 3) #5, !dbg !629
  br label %111, !dbg !620

; <label>:111:                                    ; preds = %105, %96
  %112 = load i32, i32* %22, align 4, !dbg !630, !tbaa !632
  %113 = icmp slt i32 %112, 0, !dbg !630
  br i1 %113, label %114, label %121, !dbg !634

; <label>:114:                                    ; preds = %111
  %115 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !638, !tbaa !411
  %116 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 3, !dbg !639
  %117 = load i8*, i8** %116, align 8, !dbg !639, !tbaa !406
  %118 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %115, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %117, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0)) #5, !dbg !640
  %119 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !641, !tbaa !411
  call void @luaD_throw(%struct.lua_State* %119, i32 3) #5, !dbg !642
  %120 = load i32, i32* %22, align 4, !dbg !643, !tbaa !632
  br label %121, !dbg !630

; <label>:121:                                    ; preds = %111, %114
  %122 = phi i32 [ %120, %114 ], [ %112, %111 ], !dbg !643
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %101) #4, !dbg !644
  %123 = getelementptr inbounds %struct.Proto, %struct.Proto* %38, i64 0, i32 16, !dbg !645
  store i32 %122, i32* %123, align 8, !dbg !646, !tbaa !647
  %124 = bitcast i32* %21 to i8*, !dbg !650
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %124) #4, !dbg !650
  %125 = load %struct.Zio*, %struct.Zio** %63, align 8, !dbg !655, !tbaa !414
  %126 = call i64 @luaZ_read(%struct.Zio* %125, i8* nonnull %124, i64 4) #5, !dbg !656
  %127 = icmp eq i64 %126, 0, !dbg !658
  br i1 %127, label %134, label %128, !dbg !659

; <label>:128:                                    ; preds = %121
  %129 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !663, !tbaa !411
  %130 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 3, !dbg !664
  %131 = load i8*, i8** %130, align 8, !dbg !664, !tbaa !406
  %132 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %129, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %131, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !665
  %133 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !666, !tbaa !411
  call void @luaD_throw(%struct.lua_State* %133, i32 3) #5, !dbg !667
  br label %134, !dbg !658

; <label>:134:                                    ; preds = %128, %121
  %135 = load i32, i32* %21, align 4, !dbg !668, !tbaa !632
  %136 = icmp slt i32 %135, 0, !dbg !668
  br i1 %136, label %137, label %144, !dbg !670

; <label>:137:                                    ; preds = %134
  %138 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !674, !tbaa !411
  %139 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 3, !dbg !675
  %140 = load i8*, i8** %139, align 8, !dbg !675, !tbaa !406
  %141 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %138, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %140, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0)) #5, !dbg !676
  %142 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !677, !tbaa !411
  call void @luaD_throw(%struct.lua_State* %142, i32 3) #5, !dbg !678
  %143 = load i32, i32* %21, align 4, !dbg !679, !tbaa !632
  br label %144, !dbg !668

; <label>:144:                                    ; preds = %134, %137
  %145 = phi i32 [ %143, %137 ], [ %135, %134 ], !dbg !679
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %124) #4, !dbg !680
  %146 = getelementptr inbounds %struct.Proto, %struct.Proto* %38, i64 0, i32 17, !dbg !681
  store i32 %145, i32* %146, align 4, !dbg !682, !tbaa !683
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %20) #4, !dbg !691
  %147 = load %struct.Zio*, %struct.Zio** %63, align 8, !dbg !696, !tbaa !414
  %148 = call i64 @luaZ_read(%struct.Zio* %147, i8* nonnull %20, i64 1) #5, !dbg !697
  %149 = icmp eq i64 %148, 0, !dbg !699
  br i1 %149, label %156, label %150, !dbg !700

; <label>:150:                                    ; preds = %144
  %151 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !704, !tbaa !411
  %152 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 3, !dbg !705
  %153 = load i8*, i8** %152, align 8, !dbg !705, !tbaa !406
  %154 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %151, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %153, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !706
  %155 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !707, !tbaa !411
  call void @luaD_throw(%struct.lua_State* %155, i32 3) #5, !dbg !708
  br label %156, !dbg !699

; <label>:156:                                    ; preds = %144, %150
  %157 = load i8, i8* %20, align 1, !dbg !709, !tbaa !399
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %20) #4, !dbg !710
  %158 = getelementptr inbounds %struct.Proto, %struct.Proto* %38, i64 0, i32 19, !dbg !711
  store i8 %157, i8* %158, align 8, !dbg !712, !tbaa !713
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %19) #4, !dbg !717
  %159 = load %struct.Zio*, %struct.Zio** %63, align 8, !dbg !722, !tbaa !414
  %160 = call i64 @luaZ_read(%struct.Zio* %159, i8* nonnull %19, i64 1) #5, !dbg !723
  %161 = icmp eq i64 %160, 0, !dbg !725
  br i1 %161, label %168, label %162, !dbg !726

; <label>:162:                                    ; preds = %156
  %163 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !730, !tbaa !411
  %164 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 3, !dbg !731
  %165 = load i8*, i8** %164, align 8, !dbg !731, !tbaa !406
  %166 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %163, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %165, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !732
  %167 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !733, !tbaa !411
  call void @luaD_throw(%struct.lua_State* %167, i32 3) #5, !dbg !734
  br label %168, !dbg !725

; <label>:168:                                    ; preds = %156, %162
  %169 = load i8, i8* %19, align 1, !dbg !735, !tbaa !399
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %19) #4, !dbg !736
  %170 = getelementptr inbounds %struct.Proto, %struct.Proto* %38, i64 0, i32 20, !dbg !737
  store i8 %169, i8* %170, align 1, !dbg !738, !tbaa !739
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %18) #4, !dbg !743
  %171 = load %struct.Zio*, %struct.Zio** %63, align 8, !dbg !748, !tbaa !414
  %172 = call i64 @luaZ_read(%struct.Zio* %171, i8* nonnull %18, i64 1) #5, !dbg !749
  %173 = icmp eq i64 %172, 0, !dbg !751
  br i1 %173, label %180, label %174, !dbg !752

; <label>:174:                                    ; preds = %168
  %175 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !756, !tbaa !411
  %176 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 3, !dbg !757
  %177 = load i8*, i8** %176, align 8, !dbg !757, !tbaa !406
  %178 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %175, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %177, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !758
  %179 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !759, !tbaa !411
  call void @luaD_throw(%struct.lua_State* %179, i32 3) #5, !dbg !760
  br label %180, !dbg !751

; <label>:180:                                    ; preds = %168, %174
  %181 = load i8, i8* %18, align 1, !dbg !761, !tbaa !399
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %18) #4, !dbg !762
  %182 = getelementptr inbounds %struct.Proto, %struct.Proto* %38, i64 0, i32 21, !dbg !763
  store i8 %181, i8* %182, align 2, !dbg !764, !tbaa !765
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %17) #4, !dbg !769
  %183 = load %struct.Zio*, %struct.Zio** %63, align 8, !dbg !774, !tbaa !414
  %184 = call i64 @luaZ_read(%struct.Zio* %183, i8* nonnull %17, i64 1) #5, !dbg !775
  %185 = icmp eq i64 %184, 0, !dbg !777
  br i1 %185, label %192, label %186, !dbg !778

; <label>:186:                                    ; preds = %180
  %187 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !782, !tbaa !411
  %188 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 3, !dbg !783
  %189 = load i8*, i8** %188, align 8, !dbg !783, !tbaa !406
  %190 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %187, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %189, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !784
  %191 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !785, !tbaa !411
  call void @luaD_throw(%struct.lua_State* %191, i32 3) #5, !dbg !786
  br label %192, !dbg !777

; <label>:192:                                    ; preds = %180, %186
  %193 = load i8, i8* %17, align 1, !dbg !787, !tbaa !399
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %17) #4, !dbg !788
  %194 = getelementptr inbounds %struct.Proto, %struct.Proto* %38, i64 0, i32 22, !dbg !789
  store i8 %193, i8* %194, align 1, !dbg !790, !tbaa !791
  %195 = bitcast i32* %16 to i8*, !dbg !804
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %195) #4, !dbg !804
  %196 = load %struct.Zio*, %struct.Zio** %63, align 8, !dbg !809, !tbaa !414
  %197 = call i64 @luaZ_read(%struct.Zio* %196, i8* nonnull %195, i64 4) #5, !dbg !810
  %198 = icmp eq i64 %197, 0, !dbg !812
  br i1 %198, label %205, label %199, !dbg !813

; <label>:199:                                    ; preds = %192
  %200 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !817, !tbaa !411
  %201 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 3, !dbg !818
  %202 = load i8*, i8** %201, align 8, !dbg !818, !tbaa !406
  %203 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %200, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %202, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !819
  %204 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !820, !tbaa !411
  call void @luaD_throw(%struct.lua_State* %204, i32 3) #5, !dbg !821
  br label %205, !dbg !812

; <label>:205:                                    ; preds = %199, %192
  %206 = load i32, i32* %16, align 4, !dbg !822, !tbaa !632
  %207 = icmp slt i32 %206, 0, !dbg !822
  br i1 %207, label %210, label %208, !dbg !824

; <label>:208:                                    ; preds = %205
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %195) #4, !dbg !825
  %209 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !826, !tbaa !411
  br label %219, !dbg !826

; <label>:210:                                    ; preds = %205
  %211 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !830, !tbaa !411
  %212 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 3, !dbg !831
  %213 = load i8*, i8** %212, align 8, !dbg !831, !tbaa !406
  %214 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %211, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %213, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0)) #5, !dbg !832
  %215 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !833, !tbaa !411
  call void @luaD_throw(%struct.lua_State* %215, i32 3) #5, !dbg !834
  %216 = load i32, i32* %16, align 4, !dbg !835, !tbaa !632
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %195) #4, !dbg !825
  %217 = icmp sgt i32 %216, -2, !dbg !826
  %218 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !826, !tbaa !411
  br i1 %217, label %219, label %225, !dbg !826

; <label>:219:                                    ; preds = %210, %208
  %220 = phi %struct.lua_State* [ %209, %208 ], [ %218, %210 ]
  %221 = phi i32 [ %206, %208 ], [ %216, %210 ]
  %222 = sext i32 %221 to i64, !dbg !826
  %223 = shl nsw i64 %222, 2, !dbg !826
  %224 = call i8* @luaM_realloc_(%struct.lua_State* %220, i8* null, i64 0, i64 %223) #5, !dbg !826
  br label %229, !dbg !826

; <label>:225:                                    ; preds = %210
  %226 = call i8* @luaM_toobig(%struct.lua_State* %218) #5, !dbg !826
  %227 = sext i32 %216 to i64, !dbg !837
  %228 = shl nsw i64 %227, 2, !dbg !837
  br label %229, !dbg !826

; <label>:229:                                    ; preds = %225, %219
  %230 = phi i64 [ %228, %225 ], [ %223, %219 ], !dbg !837
  %231 = phi i32 [ %216, %225 ], [ %221, %219 ]
  %232 = phi i8* [ %226, %225 ], [ %224, %219 ], !dbg !826
  %233 = getelementptr inbounds %struct.Proto, %struct.Proto* %38, i64 0, i32 4, !dbg !838
  %234 = bitcast i32** %233 to i8**, !dbg !839
  store i8* %232, i8** %234, align 8, !dbg !839, !tbaa !840
  %235 = getelementptr inbounds %struct.Proto, %struct.Proto* %38, i64 0, i32 12, !dbg !841
  store i32 %231, i32* %235, align 8, !dbg !842, !tbaa !843
  %236 = load %struct.Zio*, %struct.Zio** %63, align 8, !dbg !848, !tbaa !414
  %237 = call i64 @luaZ_read(%struct.Zio* %236, i8* %232, i64 %230) #5, !dbg !849
  %238 = icmp eq i64 %237, 0, !dbg !851
  br i1 %238, label %245, label %239, !dbg !852

; <label>:239:                                    ; preds = %229
  %240 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !856, !tbaa !411
  %241 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 3, !dbg !857
  %242 = load i8*, i8** %241, align 8, !dbg !857, !tbaa !406
  %243 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %240, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %242, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !858
  %244 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !859, !tbaa !411
  call void @luaD_throw(%struct.lua_State* %244, i32 3) #5, !dbg !860
  br label %245, !dbg !851

; <label>:245:                                    ; preds = %229, %239
  %246 = bitcast i32* %8 to i8*, !dbg !884
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %246) #4, !dbg !884
  %247 = load %struct.Zio*, %struct.Zio** %63, align 8, !dbg !889, !tbaa !414
  %248 = call i64 @luaZ_read(%struct.Zio* %247, i8* nonnull %246, i64 4) #5, !dbg !890
  %249 = icmp eq i64 %248, 0, !dbg !892
  br i1 %249, label %256, label %250, !dbg !893

; <label>:250:                                    ; preds = %245
  %251 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !897, !tbaa !411
  %252 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 3, !dbg !898
  %253 = load i8*, i8** %252, align 8, !dbg !898, !tbaa !406
  %254 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %251, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %253, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !899
  %255 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !900, !tbaa !411
  call void @luaD_throw(%struct.lua_State* %255, i32 3) #5, !dbg !901
  br label %256, !dbg !892

; <label>:256:                                    ; preds = %250, %245
  %257 = load i32, i32* %8, align 4, !dbg !902, !tbaa !632
  %258 = icmp slt i32 %257, 0, !dbg !902
  br i1 %258, label %261, label %259, !dbg !904

; <label>:259:                                    ; preds = %256
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %246) #4, !dbg !905
  %260 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !907, !tbaa !411
  br label %275, !dbg !907

; <label>:261:                                    ; preds = %256
  %262 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !911, !tbaa !411
  %263 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 3, !dbg !912
  %264 = load i8*, i8** %263, align 8, !dbg !912, !tbaa !406
  %265 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %262, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %264, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0)) #5, !dbg !913
  %266 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !914, !tbaa !411
  call void @luaD_throw(%struct.lua_State* %266, i32 3) #5, !dbg !915
  %267 = load i32, i32* %8, align 4, !dbg !916, !tbaa !632
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %246) #4, !dbg !905
  %268 = icmp sgt i32 %267, -2, !dbg !907
  %269 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !907, !tbaa !411
  br i1 %268, label %275, label %270, !dbg !907

; <label>:270:                                    ; preds = %261
  %271 = call i8* @luaM_toobig(%struct.lua_State* %269) #5, !dbg !907
  %272 = getelementptr inbounds %struct.Proto, %struct.Proto* %38, i64 0, i32 3, !dbg !917
  %273 = bitcast %struct.lua_TValue** %272 to i8**, !dbg !918
  store i8* %271, i8** %273, align 8, !dbg !918, !tbaa !919
  %274 = getelementptr inbounds %struct.Proto, %struct.Proto* %38, i64 0, i32 11, !dbg !920
  store i32 %267, i32* %274, align 4, !dbg !921, !tbaa !922
  br label %413

; <label>:275:                                    ; preds = %261, %259
  %276 = phi %struct.lua_State* [ %260, %259 ], [ %269, %261 ]
  %277 = phi i32 [ %257, %259 ], [ %267, %261 ]
  %278 = sext i32 %277 to i64, !dbg !907
  %279 = shl nsw i64 %278, 4, !dbg !907
  %280 = call i8* @luaM_realloc_(%struct.lua_State* %276, i8* null, i64 0, i64 %279) #5, !dbg !907
  %281 = getelementptr inbounds %struct.Proto, %struct.Proto* %38, i64 0, i32 3, !dbg !917
  %282 = bitcast %struct.lua_TValue** %281 to i8**, !dbg !918
  store i8* %280, i8** %282, align 8, !dbg !918, !tbaa !919
  %283 = getelementptr inbounds %struct.Proto, %struct.Proto* %38, i64 0, i32 11, !dbg !920
  store i32 %277, i32* %283, align 4, !dbg !921, !tbaa !922
  %284 = icmp sgt i32 %277, 0, !dbg !924
  %285 = bitcast i8* %280 to %struct.lua_TValue*, !dbg !927
  br i1 %284, label %286, label %413, !dbg !927

; <label>:286:                                    ; preds = %275
  %287 = zext i32 %277 to i64
  %288 = add nsw i64 %287, -1, !dbg !927
  %289 = and i64 %287, 3, !dbg !927
  %290 = icmp ult i64 %288, 3, !dbg !927
  br i1 %290, label %293, label %291, !dbg !927

; <label>:291:                                    ; preds = %286
  %292 = sub nsw i64 %287, %289, !dbg !927
  br label %311, !dbg !927

; <label>:293:                                    ; preds = %311, %286
  %294 = phi i64 [ 0, %286 ], [ %321, %311 ]
  %295 = icmp eq i64 %289, 0, !dbg !927
  br i1 %295, label %303, label %296, !dbg !927

; <label>:296:                                    ; preds = %293, %296
  %297 = phi i64 [ %300, %296 ], [ %294, %293 ]
  %298 = phi i64 [ %301, %296 ], [ %289, %293 ]
  %299 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %285, i64 %297, i32 1, !dbg !928
  store i32 0, i32* %299, align 8, !dbg !928, !tbaa !529
  %300 = add nuw nsw i64 %297, 1, !dbg !929
  %301 = add i64 %298, -1, !dbg !927
  %302 = icmp eq i64 %301, 0, !dbg !927
  br i1 %302, label %303, label %296, !dbg !927, !llvm.loop !930

; <label>:303:                                    ; preds = %296, %293
  br i1 %284, label %304, label %413, !dbg !932

; <label>:304:                                    ; preds = %303
  %305 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 3
  %306 = bitcast double* %5 to i8*
  %307 = bitcast i64* %4 to i8*
  %308 = bitcast double* %5 to i64*
  %309 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 2
  %310 = zext i32 %277 to i64
  br label %324, !dbg !932

; <label>:311:                                    ; preds = %311, %291
  %312 = phi i64 [ 0, %291 ], [ %321, %311 ]
  %313 = phi i64 [ %292, %291 ], [ %322, %311 ]
  %314 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %285, i64 %312, i32 1, !dbg !928
  store i32 0, i32* %314, align 8, !dbg !928, !tbaa !529
  %315 = or i64 %312, 1, !dbg !929
  %316 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %285, i64 %315, i32 1, !dbg !928
  store i32 0, i32* %316, align 8, !dbg !928, !tbaa !529
  %317 = or i64 %312, 2, !dbg !929
  %318 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %285, i64 %317, i32 1, !dbg !928
  store i32 0, i32* %318, align 8, !dbg !928, !tbaa !529
  %319 = or i64 %312, 3, !dbg !929
  %320 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %285, i64 %319, i32 1, !dbg !928
  store i32 0, i32* %320, align 8, !dbg !928, !tbaa !529
  %321 = add nuw nsw i64 %312, 4, !dbg !929
  %322 = add i64 %313, -4, !dbg !927
  %323 = icmp eq i64 %322, 0, !dbg !927
  br i1 %323, label %293, label %311, !dbg !927, !llvm.loop !933

; <label>:324:                                    ; preds = %411, %304
  %325 = phi %struct.lua_TValue* [ %285, %304 ], [ %412, %411 ], !dbg !936
  %326 = phi i64 [ 0, %304 ], [ %409, %411 ]
  %327 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %325, i64 %326, !dbg !937
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %7) #4, !dbg !942
  %328 = load %struct.Zio*, %struct.Zio** %63, align 8, !dbg !947, !tbaa !414
  %329 = call i64 @luaZ_read(%struct.Zio* %328, i8* nonnull %7, i64 1) #5, !dbg !948
  %330 = icmp eq i64 %329, 0, !dbg !950
  br i1 %330, label %336, label %331, !dbg !951

; <label>:331:                                    ; preds = %324
  %332 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !955, !tbaa !411
  %333 = load i8*, i8** %305, align 8, !dbg !956, !tbaa !406
  %334 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %332, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %333, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !957
  %335 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !958, !tbaa !411
  call void @luaD_throw(%struct.lua_State* %335, i32 3) #5, !dbg !959
  br label %336, !dbg !950

; <label>:336:                                    ; preds = %331, %324
  %337 = load i8, i8* %7, align 1, !dbg !960, !tbaa !399
  %338 = sext i8 %337 to i32, !dbg !960
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %7) #4, !dbg !961
  switch i32 %338, label %403 [
    i32 0, label %339
    i32 1, label %341
    i32 3, label %356
    i32 4, label %369
  ], !dbg !963

; <label>:339:                                    ; preds = %336
  %340 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %325, i64 %326, i32 1, !dbg !964
  store i32 0, i32* %340, align 8, !dbg !964, !tbaa !529
  br label %408, !dbg !965

; <label>:341:                                    ; preds = %336
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %6) #4, !dbg !970
  %342 = load %struct.Zio*, %struct.Zio** %63, align 8, !dbg !975, !tbaa !414
  %343 = call i64 @luaZ_read(%struct.Zio* %342, i8* nonnull %6, i64 1) #5, !dbg !976
  %344 = icmp eq i64 %343, 0, !dbg !978
  br i1 %344, label %350, label %345, !dbg !979

; <label>:345:                                    ; preds = %341
  %346 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !983, !tbaa !411
  %347 = load i8*, i8** %305, align 8, !dbg !984, !tbaa !406
  %348 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %346, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %347, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !985
  %349 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !986, !tbaa !411
  call void @luaD_throw(%struct.lua_State* %349, i32 3) #5, !dbg !987
  br label %350, !dbg !978

; <label>:350:                                    ; preds = %345, %341
  %351 = load i8, i8* %6, align 1, !dbg !988, !tbaa !399
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %6) #4, !dbg !989
  %352 = icmp ne i8 %351, 0, !dbg !966
  %353 = zext i1 %352 to i32, !dbg !966
  %354 = bitcast %struct.lua_TValue* %327 to i32*, !dbg !966
  store i32 %353, i32* %354, align 8, !dbg !966, !tbaa !399
  %355 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %325, i64 %326, i32 1, !dbg !966
  store i32 1, i32* %355, align 8, !dbg !966, !tbaa !529
  br label %408, !dbg !990

; <label>:356:                                    ; preds = %336
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %306) #4, !dbg !1000
  %357 = load %struct.Zio*, %struct.Zio** %63, align 8, !dbg !1005, !tbaa !414
  %358 = call i64 @luaZ_read(%struct.Zio* %357, i8* nonnull %306, i64 8) #5, !dbg !1006
  %359 = icmp eq i64 %358, 0, !dbg !1008
  br i1 %359, label %365, label %360, !dbg !1009

; <label>:360:                                    ; preds = %356
  %361 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1013, !tbaa !411
  %362 = load i8*, i8** %305, align 8, !dbg !1014, !tbaa !406
  %363 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %361, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %362, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !1015
  %364 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1016, !tbaa !411
  call void @luaD_throw(%struct.lua_State* %364, i32 3) #5, !dbg !1017
  br label %365, !dbg !1008

; <label>:365:                                    ; preds = %360, %356
  %366 = load i64, i64* %308, align 8, !dbg !1018, !tbaa !1019
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %306) #4, !dbg !1022
  %367 = bitcast %struct.lua_TValue* %327 to i64*, !dbg !991
  store i64 %366, i64* %367, align 8, !dbg !991, !tbaa !399
  %368 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %325, i64 %326, i32 1, !dbg !991
  store i32 3, i32* %368, align 8, !dbg !991, !tbaa !529
  br label %408, !dbg !1023

; <label>:369:                                    ; preds = %336
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %307) #4, !dbg !1027
  %370 = load %struct.Zio*, %struct.Zio** %63, align 8, !dbg !1032, !tbaa !414
  %371 = call i64 @luaZ_read(%struct.Zio* %370, i8* nonnull %307, i64 8) #5, !dbg !1033
  %372 = icmp eq i64 %371, 0, !dbg !1035
  br i1 %372, label %378, label %373, !dbg !1036

; <label>:373:                                    ; preds = %369
  %374 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1040, !tbaa !411
  %375 = load i8*, i8** %305, align 8, !dbg !1041, !tbaa !406
  %376 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %374, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %375, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !1042
  %377 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1043, !tbaa !411
  call void @luaD_throw(%struct.lua_State* %377, i32 3) #5, !dbg !1044
  br label %378, !dbg !1035

; <label>:378:                                    ; preds = %369, %373
  %379 = load i64, i64* %4, align 8, !dbg !1045, !tbaa !565
  %380 = icmp eq i64 %379, 0, !dbg !1047
  br i1 %380, label %399, label %381, !dbg !1048

; <label>:381:                                    ; preds = %378
  %382 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1049, !tbaa !411
  %383 = load %struct.Mbuffer*, %struct.Mbuffer** %309, align 8, !dbg !1050, !tbaa !417
  %384 = call i8* @luaZ_openspace(%struct.lua_State* %382, %struct.Mbuffer* %383, i64 %379) #5, !dbg !1051
  %385 = load i64, i64* %4, align 8, !dbg !1053, !tbaa !565
  %386 = load %struct.Zio*, %struct.Zio** %63, align 8, !dbg !1058, !tbaa !414
  %387 = call i64 @luaZ_read(%struct.Zio* %386, i8* %384, i64 %385) #5, !dbg !1059
  %388 = icmp eq i64 %387, 0, !dbg !1061
  br i1 %388, label %394, label %389, !dbg !1062

; <label>:389:                                    ; preds = %381
  %390 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1066, !tbaa !411
  %391 = load i8*, i8** %305, align 8, !dbg !1067, !tbaa !406
  %392 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %390, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %391, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !1068
  %393 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1069, !tbaa !411
  call void @luaD_throw(%struct.lua_State* %393, i32 3) #5, !dbg !1070
  br label %394, !dbg !1061

; <label>:394:                                    ; preds = %381, %389
  %395 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1071, !tbaa !411
  %396 = load i64, i64* %4, align 8, !dbg !1072, !tbaa !565
  %397 = add i64 %396, -1, !dbg !1073
  %398 = call %union.TString* @luaS_newlstr(%struct.lua_State* %395, i8* %384, i64 %397) #5, !dbg !1074
  br label %399

; <label>:399:                                    ; preds = %394, %378
  %400 = phi %union.TString* [ %398, %394 ], [ null, %378 ], !dbg !1075
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %307) #4, !dbg !1076
  %401 = bitcast %struct.lua_TValue* %327 to %union.TString**, !dbg !1024
  store %union.TString* %400, %union.TString** %401, align 8, !dbg !1024, !tbaa !399
  %402 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %325, i64 %326, i32 1, !dbg !1024
  store i32 4, i32* %402, align 8, !dbg !1024, !tbaa !529
  br label %408, !dbg !1077

; <label>:403:                                    ; preds = %336
  %404 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1081, !tbaa !411
  %405 = load i8*, i8** %305, align 8, !dbg !1082, !tbaa !406
  %406 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %404, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %405, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0)) #5, !dbg !1083
  %407 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1084, !tbaa !411
  call void @luaD_throw(%struct.lua_State* %407, i32 3) #5, !dbg !1085
  br label %408, !dbg !1086

; <label>:408:                                    ; preds = %403, %399, %365, %350, %339
  %409 = add nuw nsw i64 %326, 1, !dbg !1087
  %410 = icmp eq i64 %409, %310, !dbg !1088
  br i1 %410, label %413, label %411, !dbg !932, !llvm.loop !1089

; <label>:411:                                    ; preds = %408
  %412 = load %struct.lua_TValue*, %struct.lua_TValue** %281, align 8, !dbg !936, !tbaa !919
  br label %324, !dbg !932

; <label>:413:                                    ; preds = %408, %275, %270, %303
  %414 = bitcast i32* %3 to i8*, !dbg !1094
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %414) #4, !dbg !1094
  %415 = load %struct.Zio*, %struct.Zio** %63, align 8, !dbg !1099, !tbaa !414
  %416 = call i64 @luaZ_read(%struct.Zio* %415, i8* nonnull %414, i64 4) #5, !dbg !1100
  %417 = icmp eq i64 %416, 0, !dbg !1102
  br i1 %417, label %424, label %418, !dbg !1103

; <label>:418:                                    ; preds = %413
  %419 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1107, !tbaa !411
  %420 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 3, !dbg !1108
  %421 = load i8*, i8** %420, align 8, !dbg !1108, !tbaa !406
  %422 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %419, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %421, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !1109
  %423 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1110, !tbaa !411
  call void @luaD_throw(%struct.lua_State* %423, i32 3) #5, !dbg !1111
  br label %424, !dbg !1102

; <label>:424:                                    ; preds = %418, %413
  %425 = load i32, i32* %3, align 4, !dbg !1112, !tbaa !632
  %426 = icmp slt i32 %425, 0, !dbg !1112
  br i1 %426, label %429, label %427, !dbg !1114

; <label>:427:                                    ; preds = %424
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %414) #4, !dbg !1115
  %428 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1116, !tbaa !411
  br label %443, !dbg !1116

; <label>:429:                                    ; preds = %424
  %430 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1120, !tbaa !411
  %431 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 3, !dbg !1121
  %432 = load i8*, i8** %431, align 8, !dbg !1121, !tbaa !406
  %433 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %430, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %432, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0)) #5, !dbg !1122
  %434 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1123, !tbaa !411
  call void @luaD_throw(%struct.lua_State* %434, i32 3) #5, !dbg !1124
  %435 = load i32, i32* %3, align 4, !dbg !1125, !tbaa !632
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %414) #4, !dbg !1115
  %436 = icmp sgt i32 %435, -2, !dbg !1116
  %437 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1116, !tbaa !411
  br i1 %436, label %443, label %438, !dbg !1116

; <label>:438:                                    ; preds = %429
  %439 = call i8* @luaM_toobig(%struct.lua_State* %437) #5, !dbg !1116
  %440 = getelementptr inbounds %struct.Proto, %struct.Proto* %38, i64 0, i32 5, !dbg !1126
  %441 = bitcast %struct.Proto*** %440 to i8**, !dbg !1127
  store i8* %439, i8** %441, align 8, !dbg !1127, !tbaa !1128
  %442 = getelementptr inbounds %struct.Proto, %struct.Proto* %38, i64 0, i32 14, !dbg !1129
  store i32 %435, i32* %442, align 8, !dbg !1130, !tbaa !1131
  br label %505

; <label>:443:                                    ; preds = %429, %427
  %444 = phi %struct.lua_State* [ %428, %427 ], [ %437, %429 ]
  %445 = phi i32 [ %425, %427 ], [ %435, %429 ]
  %446 = sext i32 %445 to i64, !dbg !1116
  %447 = shl nsw i64 %446, 3, !dbg !1116
  %448 = call i8* @luaM_realloc_(%struct.lua_State* %444, i8* null, i64 0, i64 %447) #5, !dbg !1116
  %449 = getelementptr inbounds %struct.Proto, %struct.Proto* %38, i64 0, i32 5, !dbg !1126
  %450 = bitcast %struct.Proto*** %449 to i8**, !dbg !1127
  store i8* %448, i8** %450, align 8, !dbg !1127, !tbaa !1128
  %451 = getelementptr inbounds %struct.Proto, %struct.Proto* %38, i64 0, i32 14, !dbg !1129
  store i32 %445, i32* %451, align 8, !dbg !1130, !tbaa !1131
  %452 = icmp sgt i32 %445, 0, !dbg !1132
  br i1 %452, label %453, label %505, !dbg !1135

; <label>:453:                                    ; preds = %443
  %454 = bitcast i8* %448 to %struct.Proto**, !dbg !1135
  %455 = zext i32 %445 to i64
  store %struct.Proto* null, %struct.Proto** %454, align 8, !dbg !1136, !tbaa !1137
  %456 = icmp eq i32 %445, 1, !dbg !1132
  br i1 %456, label %477, label %457, !dbg !1135, !llvm.loop !1138

; <label>:457:                                    ; preds = %453
  %458 = add nsw i64 %455, -2, !dbg !1141
  %459 = add i32 %445, 3, !dbg !1141
  %460 = and i32 %459, 3, !dbg !1141
  %461 = zext i32 %460 to i64, !dbg !1141
  %462 = icmp ult i64 %458, 3, !dbg !1141
  br i1 %462, label %466, label %463, !dbg !1141

; <label>:463:                                    ; preds = %457
  %464 = xor i64 %461, -1, !dbg !1141
  %465 = add nsw i64 %464, %455, !dbg !1141
  br label %480, !dbg !1141

; <label>:466:                                    ; preds = %480, %457
  %467 = phi i64 [ 1, %457 ], [ %494, %480 ]
  %468 = icmp eq i32 %460, 0, !dbg !1135
  br i1 %468, label %477, label %469, !dbg !1135

; <label>:469:                                    ; preds = %466, %469
  %470 = phi i64 [ %474, %469 ], [ %467, %466 ]
  %471 = phi i64 [ %475, %469 ], [ %461, %466 ]
  %472 = load %struct.Proto**, %struct.Proto*** %449, align 8, !dbg !1141, !tbaa !1128
  %473 = getelementptr inbounds %struct.Proto*, %struct.Proto** %472, i64 %470, !dbg !1142
  store %struct.Proto* null, %struct.Proto** %473, align 8, !dbg !1136, !tbaa !1137
  %474 = add nuw nsw i64 %470, 1, !dbg !1143
  %475 = add i64 %471, -1, !dbg !1135
  %476 = icmp eq i64 %475, 0, !dbg !1135
  br i1 %476, label %477, label %469, !dbg !1135, !llvm.loop !1144

; <label>:477:                                    ; preds = %466, %469, %453
  br i1 %452, label %478, label %505, !dbg !1145

; <label>:478:                                    ; preds = %477
  %479 = zext i32 %445 to i64
  br label %497, !dbg !1147

; <label>:480:                                    ; preds = %480, %463
  %481 = phi i64 [ 1, %463 ], [ %494, %480 ]
  %482 = phi i64 [ %465, %463 ], [ %495, %480 ]
  %483 = load %struct.Proto**, %struct.Proto*** %449, align 8, !dbg !1141, !tbaa !1128
  %484 = getelementptr inbounds %struct.Proto*, %struct.Proto** %483, i64 %481, !dbg !1142
  store %struct.Proto* null, %struct.Proto** %484, align 8, !dbg !1136, !tbaa !1137
  %485 = add nuw nsw i64 %481, 1, !dbg !1143
  %486 = load %struct.Proto**, %struct.Proto*** %449, align 8, !dbg !1141, !tbaa !1128
  %487 = getelementptr inbounds %struct.Proto*, %struct.Proto** %486, i64 %485, !dbg !1142
  store %struct.Proto* null, %struct.Proto** %487, align 8, !dbg !1136, !tbaa !1137
  %488 = add nuw nsw i64 %481, 2, !dbg !1143
  %489 = load %struct.Proto**, %struct.Proto*** %449, align 8, !dbg !1141, !tbaa !1128
  %490 = getelementptr inbounds %struct.Proto*, %struct.Proto** %489, i64 %488, !dbg !1142
  store %struct.Proto* null, %struct.Proto** %490, align 8, !dbg !1136, !tbaa !1137
  %491 = add nuw nsw i64 %481, 3, !dbg !1143
  %492 = load %struct.Proto**, %struct.Proto*** %449, align 8, !dbg !1141, !tbaa !1128
  %493 = getelementptr inbounds %struct.Proto*, %struct.Proto** %492, i64 %491, !dbg !1142
  store %struct.Proto* null, %struct.Proto** %493, align 8, !dbg !1136, !tbaa !1137
  %494 = add nuw nsw i64 %481, 4, !dbg !1143
  %495 = add i64 %482, -4, !dbg !1135
  %496 = icmp eq i64 %495, 0, !dbg !1135
  br i1 %496, label %466, label %480, !dbg !1135, !llvm.loop !1138

; <label>:497:                                    ; preds = %497, %478
  %498 = phi i64 [ 0, %478 ], [ %503, %497 ]
  %499 = load %union.TString*, %union.TString** %98, align 8, !dbg !1147, !tbaa !602
  %500 = call fastcc %struct.Proto* @LoadFunction(%struct.LoadState* %0, %union.TString* %499) #5, !dbg !1149
  %501 = load %struct.Proto**, %struct.Proto*** %449, align 8, !dbg !1150, !tbaa !1128
  %502 = getelementptr inbounds %struct.Proto*, %struct.Proto** %501, i64 %498, !dbg !1151
  store %struct.Proto* %500, %struct.Proto** %502, align 8, !dbg !1152, !tbaa !1137
  %503 = add nuw nsw i64 %498, 1, !dbg !1153
  %504 = icmp eq i64 %503, %479, !dbg !1154
  br i1 %504, label %505, label %497, !dbg !1145, !llvm.loop !1155

; <label>:505:                                    ; preds = %497, %443, %438, %477
  %506 = bitcast i32* %15 to i8*, !dbg !1169
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %506) #4, !dbg !1169
  %507 = load %struct.Zio*, %struct.Zio** %63, align 8, !dbg !1174, !tbaa !414
  %508 = call i64 @luaZ_read(%struct.Zio* %507, i8* nonnull %506, i64 4) #5, !dbg !1175
  %509 = icmp eq i64 %508, 0, !dbg !1177
  br i1 %509, label %516, label %510, !dbg !1178

; <label>:510:                                    ; preds = %505
  %511 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1182, !tbaa !411
  %512 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 3, !dbg !1183
  %513 = load i8*, i8** %512, align 8, !dbg !1183, !tbaa !406
  %514 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %511, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %513, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !1184
  %515 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1185, !tbaa !411
  call void @luaD_throw(%struct.lua_State* %515, i32 3) #5, !dbg !1186
  br label %516, !dbg !1177

; <label>:516:                                    ; preds = %510, %505
  %517 = load i32, i32* %15, align 4, !dbg !1187, !tbaa !632
  %518 = icmp slt i32 %517, 0, !dbg !1187
  br i1 %518, label %521, label %519, !dbg !1189

; <label>:519:                                    ; preds = %516
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %506) #4, !dbg !1190
  %520 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1191, !tbaa !411
  br label %530, !dbg !1191

; <label>:521:                                    ; preds = %516
  %522 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1195, !tbaa !411
  %523 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 3, !dbg !1196
  %524 = load i8*, i8** %523, align 8, !dbg !1196, !tbaa !406
  %525 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %522, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %524, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0)) #5, !dbg !1197
  %526 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1198, !tbaa !411
  call void @luaD_throw(%struct.lua_State* %526, i32 3) #5, !dbg !1199
  %527 = load i32, i32* %15, align 4, !dbg !1200, !tbaa !632
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %506) #4, !dbg !1190
  %528 = icmp sgt i32 %527, -2, !dbg !1191
  %529 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1191, !tbaa !411
  br i1 %528, label %530, label %536, !dbg !1191

; <label>:530:                                    ; preds = %521, %519
  %531 = phi %struct.lua_State* [ %520, %519 ], [ %529, %521 ]
  %532 = phi i32 [ %517, %519 ], [ %527, %521 ]
  %533 = sext i32 %532 to i64, !dbg !1191
  %534 = shl nsw i64 %533, 2, !dbg !1191
  %535 = call i8* @luaM_realloc_(%struct.lua_State* %531, i8* null, i64 0, i64 %534) #5, !dbg !1191
  br label %540, !dbg !1191

; <label>:536:                                    ; preds = %521
  %537 = call i8* @luaM_toobig(%struct.lua_State* %529) #5, !dbg !1191
  %538 = sext i32 %527 to i64, !dbg !1202
  %539 = shl nsw i64 %538, 2, !dbg !1202
  br label %540, !dbg !1191

; <label>:540:                                    ; preds = %536, %530
  %541 = phi i64 [ %539, %536 ], [ %534, %530 ], !dbg !1202
  %542 = phi i32 [ %527, %536 ], [ %532, %530 ]
  %543 = phi i8* [ %537, %536 ], [ %535, %530 ], !dbg !1191
  %544 = getelementptr inbounds %struct.Proto, %struct.Proto* %38, i64 0, i32 6, !dbg !1203
  %545 = bitcast i32** %544 to i8**, !dbg !1204
  store i8* %543, i8** %545, align 8, !dbg !1204, !tbaa !1205
  %546 = getelementptr inbounds %struct.Proto, %struct.Proto* %38, i64 0, i32 13, !dbg !1206
  store i32 %542, i32* %546, align 4, !dbg !1207, !tbaa !1208
  %547 = load %struct.Zio*, %struct.Zio** %63, align 8, !dbg !1213, !tbaa !414
  %548 = call i64 @luaZ_read(%struct.Zio* %547, i8* %543, i64 %541) #5, !dbg !1214
  %549 = icmp eq i64 %548, 0, !dbg !1216
  br i1 %549, label %556, label %550, !dbg !1217

; <label>:550:                                    ; preds = %540
  %551 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1221, !tbaa !411
  %552 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 3, !dbg !1222
  %553 = load i8*, i8** %552, align 8, !dbg !1222, !tbaa !406
  %554 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %551, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %553, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !1223
  %555 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1224, !tbaa !411
  call void @luaD_throw(%struct.lua_State* %555, i32 3) #5, !dbg !1225
  br label %556, !dbg !1216

; <label>:556:                                    ; preds = %550, %540
  %557 = bitcast i32* %14 to i8*, !dbg !1228
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %557) #4, !dbg !1228
  %558 = load %struct.Zio*, %struct.Zio** %63, align 8, !dbg !1233, !tbaa !414
  %559 = call i64 @luaZ_read(%struct.Zio* %558, i8* nonnull %557, i64 4) #5, !dbg !1234
  %560 = icmp eq i64 %559, 0, !dbg !1236
  br i1 %560, label %567, label %561, !dbg !1237

; <label>:561:                                    ; preds = %556
  %562 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1241, !tbaa !411
  %563 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 3, !dbg !1242
  %564 = load i8*, i8** %563, align 8, !dbg !1242, !tbaa !406
  %565 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %562, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %564, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !1243
  %566 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1244, !tbaa !411
  call void @luaD_throw(%struct.lua_State* %566, i32 3) #5, !dbg !1245
  br label %567, !dbg !1236

; <label>:567:                                    ; preds = %561, %556
  %568 = load i32, i32* %14, align 4, !dbg !1246, !tbaa !632
  %569 = icmp slt i32 %568, 0, !dbg !1246
  br i1 %569, label %572, label %570, !dbg !1248

; <label>:570:                                    ; preds = %567
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %557) #4, !dbg !1249
  %571 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1250, !tbaa !411
  br label %586, !dbg !1250

; <label>:572:                                    ; preds = %567
  %573 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1254, !tbaa !411
  %574 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 3, !dbg !1255
  %575 = load i8*, i8** %574, align 8, !dbg !1255, !tbaa !406
  %576 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %573, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %575, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0)) #5, !dbg !1256
  %577 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1257, !tbaa !411
  call void @luaD_throw(%struct.lua_State* %577, i32 3) #5, !dbg !1258
  %578 = load i32, i32* %14, align 4, !dbg !1259, !tbaa !632
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %557) #4, !dbg !1249
  %579 = icmp sgt i32 %578, -2, !dbg !1250
  %580 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1250, !tbaa !411
  br i1 %579, label %586, label %581, !dbg !1250

; <label>:581:                                    ; preds = %572
  %582 = call i8* @luaM_toobig(%struct.lua_State* %580) #5, !dbg !1250
  %583 = getelementptr inbounds %struct.Proto, %struct.Proto* %38, i64 0, i32 7, !dbg !1260
  %584 = bitcast %struct.LocVar** %583 to i8**, !dbg !1261
  store i8* %582, i8** %584, align 8, !dbg !1261, !tbaa !1262
  %585 = getelementptr inbounds %struct.Proto, %struct.Proto* %38, i64 0, i32 15, !dbg !1263
  store i32 %578, i32* %585, align 4, !dbg !1264, !tbaa !1265
  br label %712

; <label>:586:                                    ; preds = %572, %570
  %587 = phi %struct.lua_State* [ %571, %570 ], [ %580, %572 ]
  %588 = phi i32 [ %568, %570 ], [ %578, %572 ]
  %589 = sext i32 %588 to i64, !dbg !1250
  %590 = shl nsw i64 %589, 4, !dbg !1250
  %591 = call i8* @luaM_realloc_(%struct.lua_State* %587, i8* null, i64 0, i64 %590) #5, !dbg !1250
  %592 = getelementptr inbounds %struct.Proto, %struct.Proto* %38, i64 0, i32 7, !dbg !1260
  %593 = bitcast %struct.LocVar** %592 to i8**, !dbg !1261
  store i8* %591, i8** %593, align 8, !dbg !1261, !tbaa !1262
  %594 = getelementptr inbounds %struct.Proto, %struct.Proto* %38, i64 0, i32 15, !dbg !1263
  store i32 %588, i32* %594, align 4, !dbg !1264, !tbaa !1265
  %595 = icmp sgt i32 %588, 0, !dbg !1267
  %596 = bitcast i8* %591 to %struct.LocVar*, !dbg !1270
  br i1 %595, label %597, label %712, !dbg !1270

; <label>:597:                                    ; preds = %586
  %598 = zext i32 %588 to i64
  %599 = add nsw i64 %598, -1, !dbg !1270
  %600 = and i64 %598, 3, !dbg !1270
  %601 = icmp ult i64 %599, 3, !dbg !1270
  br i1 %601, label %604, label %602, !dbg !1270

; <label>:602:                                    ; preds = %597
  %603 = sub nsw i64 %598, %600, !dbg !1270
  br label %620, !dbg !1270

; <label>:604:                                    ; preds = %620, %597
  %605 = phi i64 [ 0, %597 ], [ %630, %620 ]
  %606 = icmp eq i64 %600, 0, !dbg !1270
  br i1 %606, label %614, label %607, !dbg !1270

; <label>:607:                                    ; preds = %604, %607
  %608 = phi i64 [ %611, %607 ], [ %605, %604 ]
  %609 = phi i64 [ %612, %607 ], [ %600, %604 ]
  %610 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %596, i64 %608, i32 0, !dbg !1271
  store %union.TString* null, %union.TString** %610, align 8, !dbg !1272, !tbaa !1273
  %611 = add nuw nsw i64 %608, 1, !dbg !1275
  %612 = add i64 %609, -1, !dbg !1270
  %613 = icmp eq i64 %612, 0, !dbg !1270
  br i1 %613, label %614, label %607, !dbg !1270, !llvm.loop !1276

; <label>:614:                                    ; preds = %607, %604
  %615 = bitcast i64* %13 to i8*
  %616 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 3
  %617 = bitcast i32* %12 to i8*
  %618 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 2
  %619 = bitcast i32* %11 to i8*
  br label %633, !dbg !1277

; <label>:620:                                    ; preds = %620, %602
  %621 = phi i64 [ 0, %602 ], [ %630, %620 ]
  %622 = phi i64 [ %603, %602 ], [ %631, %620 ]
  %623 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %596, i64 %621, i32 0, !dbg !1271
  store %union.TString* null, %union.TString** %623, align 8, !dbg !1272, !tbaa !1273
  %624 = or i64 %621, 1, !dbg !1275
  %625 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %596, i64 %624, i32 0, !dbg !1271
  store %union.TString* null, %union.TString** %625, align 8, !dbg !1272, !tbaa !1273
  %626 = or i64 %621, 2, !dbg !1275
  %627 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %596, i64 %626, i32 0, !dbg !1271
  store %union.TString* null, %union.TString** %627, align 8, !dbg !1272, !tbaa !1273
  %628 = or i64 %621, 3, !dbg !1275
  %629 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %596, i64 %628, i32 0, !dbg !1271
  store %union.TString* null, %union.TString** %629, align 8, !dbg !1272, !tbaa !1273
  %630 = add nuw nsw i64 %621, 4, !dbg !1275
  %631 = add i64 %622, -4, !dbg !1270
  %632 = icmp eq i64 %631, 0, !dbg !1270
  br i1 %632, label %604, label %620, !dbg !1270, !llvm.loop !1279

; <label>:633:                                    ; preds = %706, %614
  %634 = phi i64 [ 0, %614 ], [ %710, %706 ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %615) #4, !dbg !1286
  %635 = load %struct.Zio*, %struct.Zio** %63, align 8, !dbg !1291, !tbaa !414
  %636 = call i64 @luaZ_read(%struct.Zio* %635, i8* nonnull %615, i64 8) #5, !dbg !1292
  %637 = icmp eq i64 %636, 0, !dbg !1294
  br i1 %637, label %643, label %638, !dbg !1295

; <label>:638:                                    ; preds = %633
  %639 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1299, !tbaa !411
  %640 = load i8*, i8** %616, align 8, !dbg !1300, !tbaa !406
  %641 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %639, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %640, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !1301
  %642 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1302, !tbaa !411
  call void @luaD_throw(%struct.lua_State* %642, i32 3) #5, !dbg !1303
  br label %643, !dbg !1294

; <label>:643:                                    ; preds = %638, %633
  %644 = load i64, i64* %13, align 8, !dbg !1304, !tbaa !565
  %645 = icmp eq i64 %644, 0, !dbg !1306
  br i1 %645, label %664, label %646, !dbg !1307

; <label>:646:                                    ; preds = %643
  %647 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1308, !tbaa !411
  %648 = load %struct.Mbuffer*, %struct.Mbuffer** %618, align 8, !dbg !1309, !tbaa !417
  %649 = call i8* @luaZ_openspace(%struct.lua_State* %647, %struct.Mbuffer* %648, i64 %644) #5, !dbg !1310
  %650 = load i64, i64* %13, align 8, !dbg !1312, !tbaa !565
  %651 = load %struct.Zio*, %struct.Zio** %63, align 8, !dbg !1317, !tbaa !414
  %652 = call i64 @luaZ_read(%struct.Zio* %651, i8* %649, i64 %650) #5, !dbg !1318
  %653 = icmp eq i64 %652, 0, !dbg !1320
  br i1 %653, label %659, label %654, !dbg !1321

; <label>:654:                                    ; preds = %646
  %655 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1325, !tbaa !411
  %656 = load i8*, i8** %616, align 8, !dbg !1326, !tbaa !406
  %657 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %655, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %656, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !1327
  %658 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1328, !tbaa !411
  call void @luaD_throw(%struct.lua_State* %658, i32 3) #5, !dbg !1329
  br label %659, !dbg !1320

; <label>:659:                                    ; preds = %654, %646
  %660 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1330, !tbaa !411
  %661 = load i64, i64* %13, align 8, !dbg !1331, !tbaa !565
  %662 = add i64 %661, -1, !dbg !1332
  %663 = call %union.TString* @luaS_newlstr(%struct.lua_State* %660, i8* %649, i64 %662) #5, !dbg !1333
  br label %664

; <label>:664:                                    ; preds = %659, %643
  %665 = phi %union.TString* [ %663, %659 ], [ null, %643 ], !dbg !1334
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %615) #4, !dbg !1335
  %666 = load %struct.LocVar*, %struct.LocVar** %592, align 8, !dbg !1336, !tbaa !1262
  %667 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %666, i64 %634, i32 0, !dbg !1337
  store %union.TString* %665, %union.TString** %667, align 8, !dbg !1338, !tbaa !1273
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %617) #4, !dbg !1341
  %668 = load %struct.Zio*, %struct.Zio** %63, align 8, !dbg !1346, !tbaa !414
  %669 = call i64 @luaZ_read(%struct.Zio* %668, i8* nonnull %617, i64 4) #5, !dbg !1347
  %670 = icmp eq i64 %669, 0, !dbg !1349
  br i1 %670, label %676, label %671, !dbg !1350

; <label>:671:                                    ; preds = %664
  %672 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1354, !tbaa !411
  %673 = load i8*, i8** %616, align 8, !dbg !1355, !tbaa !406
  %674 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %672, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %673, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !1356
  %675 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1357, !tbaa !411
  call void @luaD_throw(%struct.lua_State* %675, i32 3) #5, !dbg !1358
  br label %676, !dbg !1349

; <label>:676:                                    ; preds = %671, %664
  %677 = load i32, i32* %12, align 4, !dbg !1359, !tbaa !632
  %678 = icmp slt i32 %677, 0, !dbg !1359
  br i1 %678, label %679, label %685, !dbg !1361

; <label>:679:                                    ; preds = %676
  %680 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1365, !tbaa !411
  %681 = load i8*, i8** %616, align 8, !dbg !1366, !tbaa !406
  %682 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %680, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %681, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0)) #5, !dbg !1367
  %683 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1368, !tbaa !411
  call void @luaD_throw(%struct.lua_State* %683, i32 3) #5, !dbg !1369
  %684 = load i32, i32* %12, align 4, !dbg !1370, !tbaa !632
  br label %685, !dbg !1359

; <label>:685:                                    ; preds = %679, %676
  %686 = phi i32 [ %684, %679 ], [ %677, %676 ], !dbg !1370
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %617) #4, !dbg !1371
  %687 = load %struct.LocVar*, %struct.LocVar** %592, align 8, !dbg !1372, !tbaa !1262
  %688 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %687, i64 %634, i32 1, !dbg !1373
  store i32 %686, i32* %688, align 8, !dbg !1374, !tbaa !1375
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %619) #4, !dbg !1378
  %689 = load %struct.Zio*, %struct.Zio** %63, align 8, !dbg !1383, !tbaa !414
  %690 = call i64 @luaZ_read(%struct.Zio* %689, i8* nonnull %619, i64 4) #5, !dbg !1384
  %691 = icmp eq i64 %690, 0, !dbg !1386
  br i1 %691, label %697, label %692, !dbg !1387

; <label>:692:                                    ; preds = %685
  %693 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1391, !tbaa !411
  %694 = load i8*, i8** %616, align 8, !dbg !1392, !tbaa !406
  %695 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %693, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %694, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !1393
  %696 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1394, !tbaa !411
  call void @luaD_throw(%struct.lua_State* %696, i32 3) #5, !dbg !1395
  br label %697, !dbg !1386

; <label>:697:                                    ; preds = %692, %685
  %698 = load i32, i32* %11, align 4, !dbg !1396, !tbaa !632
  %699 = icmp slt i32 %698, 0, !dbg !1396
  br i1 %699, label %700, label %706, !dbg !1398

; <label>:700:                                    ; preds = %697
  %701 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1402, !tbaa !411
  %702 = load i8*, i8** %616, align 8, !dbg !1403, !tbaa !406
  %703 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %701, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %702, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0)) #5, !dbg !1404
  %704 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1405, !tbaa !411
  call void @luaD_throw(%struct.lua_State* %704, i32 3) #5, !dbg !1406
  %705 = load i32, i32* %11, align 4, !dbg !1407, !tbaa !632
  br label %706, !dbg !1396

; <label>:706:                                    ; preds = %700, %697
  %707 = phi i32 [ %705, %700 ], [ %698, %697 ], !dbg !1407
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %619) #4, !dbg !1408
  %708 = load %struct.LocVar*, %struct.LocVar** %592, align 8, !dbg !1409, !tbaa !1262
  %709 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %708, i64 %634, i32 2, !dbg !1410
  store i32 %707, i32* %709, align 4, !dbg !1411, !tbaa !1412
  %710 = add nuw nsw i64 %634, 1, !dbg !1413
  %711 = icmp eq i64 %710, %598, !dbg !1414
  br i1 %711, label %712, label %633, !dbg !1277, !llvm.loop !1415

; <label>:712:                                    ; preds = %706, %586, %581
  %713 = bitcast i32* %10 to i8*, !dbg !1420
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %713) #4, !dbg !1420
  %714 = load %struct.Zio*, %struct.Zio** %63, align 8, !dbg !1425, !tbaa !414
  %715 = call i64 @luaZ_read(%struct.Zio* %714, i8* nonnull %713, i64 4) #5, !dbg !1426
  %716 = icmp eq i64 %715, 0, !dbg !1428
  br i1 %716, label %723, label %717, !dbg !1429

; <label>:717:                                    ; preds = %712
  %718 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1433, !tbaa !411
  %719 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 3, !dbg !1434
  %720 = load i8*, i8** %719, align 8, !dbg !1434, !tbaa !406
  %721 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %718, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %720, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !1435
  %722 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1436, !tbaa !411
  call void @luaD_throw(%struct.lua_State* %722, i32 3) #5, !dbg !1437
  br label %723, !dbg !1428

; <label>:723:                                    ; preds = %717, %712
  %724 = load i32, i32* %10, align 4, !dbg !1438, !tbaa !632
  %725 = icmp slt i32 %724, 0, !dbg !1438
  br i1 %725, label %728, label %726, !dbg !1440

; <label>:726:                                    ; preds = %723
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %713) #4, !dbg !1441
  %727 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1442, !tbaa !411
  br label %742, !dbg !1442

; <label>:728:                                    ; preds = %723
  %729 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1446, !tbaa !411
  %730 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 3, !dbg !1447
  %731 = load i8*, i8** %730, align 8, !dbg !1447, !tbaa !406
  %732 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %729, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %731, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0)) #5, !dbg !1448
  %733 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1449, !tbaa !411
  call void @luaD_throw(%struct.lua_State* %733, i32 3) #5, !dbg !1450
  %734 = load i32, i32* %10, align 4, !dbg !1451, !tbaa !632
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %713) #4, !dbg !1441
  %735 = icmp sgt i32 %734, -2, !dbg !1442
  %736 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1442, !tbaa !411
  br i1 %735, label %742, label %737, !dbg !1442

; <label>:737:                                    ; preds = %728
  %738 = call i8* @luaM_toobig(%struct.lua_State* %736) #5, !dbg !1442
  %739 = getelementptr inbounds %struct.Proto, %struct.Proto* %38, i64 0, i32 8, !dbg !1452
  %740 = bitcast %union.TString*** %739 to i8**, !dbg !1453
  store i8* %738, i8** %740, align 8, !dbg !1453, !tbaa !1454
  %741 = getelementptr inbounds %struct.Proto, %struct.Proto* %38, i64 0, i32 10, !dbg !1455
  store i32 %734, i32* %741, align 8, !dbg !1456, !tbaa !1457
  br label %834

; <label>:742:                                    ; preds = %728, %726
  %743 = phi %struct.lua_State* [ %727, %726 ], [ %736, %728 ]
  %744 = phi i32 [ %724, %726 ], [ %734, %728 ]
  %745 = sext i32 %744 to i64, !dbg !1442
  %746 = shl nsw i64 %745, 3, !dbg !1442
  %747 = call i8* @luaM_realloc_(%struct.lua_State* %743, i8* null, i64 0, i64 %746) #5, !dbg !1442
  %748 = getelementptr inbounds %struct.Proto, %struct.Proto* %38, i64 0, i32 8, !dbg !1452
  %749 = bitcast %union.TString*** %748 to i8**, !dbg !1453
  store i8* %747, i8** %749, align 8, !dbg !1453, !tbaa !1454
  %750 = getelementptr inbounds %struct.Proto, %struct.Proto* %38, i64 0, i32 10, !dbg !1455
  store i32 %744, i32* %750, align 8, !dbg !1456, !tbaa !1457
  %751 = icmp sgt i32 %744, 0, !dbg !1458
  br i1 %751, label %752, label %834, !dbg !1461

; <label>:752:                                    ; preds = %742
  %753 = bitcast i8* %747 to %union.TString**, !dbg !1461
  %754 = zext i32 %744 to i64
  store %union.TString* null, %union.TString** %753, align 8, !dbg !1462, !tbaa !1137
  %755 = icmp eq i32 %744, 1, !dbg !1458
  br i1 %755, label %776, label %756, !dbg !1461, !llvm.loop !1463

; <label>:756:                                    ; preds = %752
  %757 = add nsw i64 %754, -2, !dbg !1466
  %758 = add i32 %744, 3, !dbg !1466
  %759 = and i32 %758, 3, !dbg !1466
  %760 = zext i32 %759 to i64, !dbg !1466
  %761 = icmp ult i64 %757, 3, !dbg !1466
  br i1 %761, label %765, label %762, !dbg !1466

; <label>:762:                                    ; preds = %756
  %763 = xor i64 %760, -1, !dbg !1466
  %764 = add nsw i64 %763, %754, !dbg !1466
  br label %780, !dbg !1466

; <label>:765:                                    ; preds = %780, %756
  %766 = phi i64 [ 1, %756 ], [ %794, %780 ]
  %767 = icmp eq i32 %759, 0, !dbg !1461
  br i1 %767, label %776, label %768, !dbg !1461

; <label>:768:                                    ; preds = %765, %768
  %769 = phi i64 [ %773, %768 ], [ %766, %765 ]
  %770 = phi i64 [ %774, %768 ], [ %760, %765 ]
  %771 = load %union.TString**, %union.TString*** %748, align 8, !dbg !1466, !tbaa !1454
  %772 = getelementptr inbounds %union.TString*, %union.TString** %771, i64 %769, !dbg !1467
  store %union.TString* null, %union.TString** %772, align 8, !dbg !1462, !tbaa !1137
  %773 = add nuw nsw i64 %769, 1, !dbg !1468
  %774 = add i64 %770, -1, !dbg !1461
  %775 = icmp eq i64 %774, 0, !dbg !1461
  br i1 %775, label %776, label %768, !dbg !1461, !llvm.loop !1469

; <label>:776:                                    ; preds = %765, %768, %752
  %777 = bitcast i64* %9 to i8*
  %778 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 3
  %779 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 2
  br label %797, !dbg !1470

; <label>:780:                                    ; preds = %780, %762
  %781 = phi i64 [ 1, %762 ], [ %794, %780 ]
  %782 = phi i64 [ %764, %762 ], [ %795, %780 ]
  %783 = load %union.TString**, %union.TString*** %748, align 8, !dbg !1466, !tbaa !1454
  %784 = getelementptr inbounds %union.TString*, %union.TString** %783, i64 %781, !dbg !1467
  store %union.TString* null, %union.TString** %784, align 8, !dbg !1462, !tbaa !1137
  %785 = add nuw nsw i64 %781, 1, !dbg !1468
  %786 = load %union.TString**, %union.TString*** %748, align 8, !dbg !1466, !tbaa !1454
  %787 = getelementptr inbounds %union.TString*, %union.TString** %786, i64 %785, !dbg !1467
  store %union.TString* null, %union.TString** %787, align 8, !dbg !1462, !tbaa !1137
  %788 = add nuw nsw i64 %781, 2, !dbg !1468
  %789 = load %union.TString**, %union.TString*** %748, align 8, !dbg !1466, !tbaa !1454
  %790 = getelementptr inbounds %union.TString*, %union.TString** %789, i64 %788, !dbg !1467
  store %union.TString* null, %union.TString** %790, align 8, !dbg !1462, !tbaa !1137
  %791 = add nuw nsw i64 %781, 3, !dbg !1468
  %792 = load %union.TString**, %union.TString*** %748, align 8, !dbg !1466, !tbaa !1454
  %793 = getelementptr inbounds %union.TString*, %union.TString** %792, i64 %791, !dbg !1467
  store %union.TString* null, %union.TString** %793, align 8, !dbg !1462, !tbaa !1137
  %794 = add nuw nsw i64 %781, 4, !dbg !1468
  %795 = add i64 %782, -4, !dbg !1461
  %796 = icmp eq i64 %795, 0, !dbg !1461
  br i1 %796, label %765, label %780, !dbg !1461, !llvm.loop !1463

; <label>:797:                                    ; preds = %828, %776
  %798 = phi i64 [ 0, %776 ], [ %832, %828 ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %777) #4, !dbg !1475
  %799 = load %struct.Zio*, %struct.Zio** %63, align 8, !dbg !1480, !tbaa !414
  %800 = call i64 @luaZ_read(%struct.Zio* %799, i8* nonnull %777, i64 8) #5, !dbg !1481
  %801 = icmp eq i64 %800, 0, !dbg !1483
  br i1 %801, label %807, label %802, !dbg !1484

; <label>:802:                                    ; preds = %797
  %803 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1488, !tbaa !411
  %804 = load i8*, i8** %778, align 8, !dbg !1489, !tbaa !406
  %805 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %803, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %804, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !1490
  %806 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1491, !tbaa !411
  call void @luaD_throw(%struct.lua_State* %806, i32 3) #5, !dbg !1492
  br label %807, !dbg !1483

; <label>:807:                                    ; preds = %802, %797
  %808 = load i64, i64* %9, align 8, !dbg !1493, !tbaa !565
  %809 = icmp eq i64 %808, 0, !dbg !1495
  br i1 %809, label %828, label %810, !dbg !1496

; <label>:810:                                    ; preds = %807
  %811 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1497, !tbaa !411
  %812 = load %struct.Mbuffer*, %struct.Mbuffer** %779, align 8, !dbg !1498, !tbaa !417
  %813 = call i8* @luaZ_openspace(%struct.lua_State* %811, %struct.Mbuffer* %812, i64 %808) #5, !dbg !1499
  %814 = load i64, i64* %9, align 8, !dbg !1501, !tbaa !565
  %815 = load %struct.Zio*, %struct.Zio** %63, align 8, !dbg !1506, !tbaa !414
  %816 = call i64 @luaZ_read(%struct.Zio* %815, i8* %813, i64 %814) #5, !dbg !1507
  %817 = icmp eq i64 %816, 0, !dbg !1509
  br i1 %817, label %823, label %818, !dbg !1510

; <label>:818:                                    ; preds = %810
  %819 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1514, !tbaa !411
  %820 = load i8*, i8** %778, align 8, !dbg !1515, !tbaa !406
  %821 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %819, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %820, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !1516
  %822 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1517, !tbaa !411
  call void @luaD_throw(%struct.lua_State* %822, i32 3) #5, !dbg !1518
  br label %823, !dbg !1509

; <label>:823:                                    ; preds = %818, %810
  %824 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1519, !tbaa !411
  %825 = load i64, i64* %9, align 8, !dbg !1520, !tbaa !565
  %826 = add i64 %825, -1, !dbg !1521
  %827 = call %union.TString* @luaS_newlstr(%struct.lua_State* %824, i8* %813, i64 %826) #5, !dbg !1522
  br label %828

; <label>:828:                                    ; preds = %823, %807
  %829 = phi %union.TString* [ %827, %823 ], [ null, %807 ], !dbg !1523
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %777) #4, !dbg !1524
  %830 = load %union.TString**, %union.TString*** %748, align 8, !dbg !1525, !tbaa !1454
  %831 = getelementptr inbounds %union.TString*, %union.TString** %830, i64 %798, !dbg !1526
  store %union.TString* %829, %union.TString** %831, align 8, !dbg !1527, !tbaa !1137
  %832 = add nuw nsw i64 %798, 1, !dbg !1528
  %833 = icmp eq i64 %832, %754, !dbg !1529
  br i1 %833, label %834, label %797, !dbg !1470, !llvm.loop !1530

; <label>:834:                                    ; preds = %828, %737, %742
  %835 = call i32 @luaG_checkcode(%struct.Proto* nonnull %38) #5, !dbg !1533
  %836 = icmp eq i32 %835, 0, !dbg !1533
  br i1 %836, label %837, label %843, !dbg !1535

; <label>:837:                                    ; preds = %834
  %838 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1539, !tbaa !411
  %839 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 3, !dbg !1540
  %840 = load i8*, i8** %839, align 8, !dbg !1540, !tbaa !406
  %841 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %838, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %840, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0)) #5, !dbg !1541
  %842 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1542, !tbaa !411
  call void @luaD_throw(%struct.lua_State* %842, i32 3) #5, !dbg !1543
  br label %843, !dbg !1533

; <label>:843:                                    ; preds = %834, %837
  %844 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1544, !tbaa !411
  %845 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %844, i64 0, i32 4, !dbg !1545
  %846 = load %struct.lua_TValue*, %struct.lua_TValue** %845, align 8, !dbg !1546, !tbaa !528
  %847 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %846, i64 -1, !dbg !1546
  store %struct.lua_TValue* %847, %struct.lua_TValue** %845, align 8, !dbg !1546, !tbaa !528
  %848 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %844, i64 0, i32 15, !dbg !1547
  %849 = load i16, i16* %848, align 8, !dbg !1548, !tbaa !508
  %850 = add i16 %849, -1, !dbg !1548
  store i16 %850, i16* %848, align 8, !dbg !1548, !tbaa !508
  ret %struct.Proto* %38, !dbg !1549
}

; Function Attrs: noredzone
declare hidden %union.TString* @luaS_newlstr(%struct.lua_State*, i8*, i64) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define hidden void @luaU_header(i8*) local_unnamed_addr #0 !dbg !423 {
  %2 = tail call i8* @memcpy(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 4) #5, !dbg !1552
  %3 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !1553
  %4 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !1554
  store i8 81, i8* %3, align 1, !dbg !1555, !tbaa !399
  %5 = getelementptr inbounds i8, i8* %0, i64 6, !dbg !1556
  store i8 0, i8* %4, align 1, !dbg !1557, !tbaa !399
  %6 = getelementptr inbounds i8, i8* %0, i64 7, !dbg !1558
  store i8 1, i8* %5, align 1, !dbg !1559, !tbaa !399
  %7 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !1560
  store i8 4, i8* %6, align 1, !dbg !1561, !tbaa !399
  %8 = getelementptr inbounds i8, i8* %0, i64 9, !dbg !1562
  store i8 8, i8* %7, align 1, !dbg !1563, !tbaa !399
  %9 = getelementptr inbounds i8, i8* %0, i64 10, !dbg !1564
  store i8 4, i8* %8, align 1, !dbg !1565, !tbaa !399
  %10 = getelementptr inbounds i8, i8* %0, i64 11, !dbg !1566
  store i8 8, i8* %9, align 1, !dbg !1567, !tbaa !399
  store i8 0, i8* %10, align 1, !dbg !1568, !tbaa !399
  ret void, !dbg !1569
}

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @memcmp(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden i64 @luaZ_read(%struct.Zio*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden i8* @luaO_pushfstring(%struct.lua_State*, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden void @luaD_throw(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden %struct.Proto* @luaF_newproto(%struct.lua_State*) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden void @luaD_growstack(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden i32 @luaG_checkcode(%struct.Proto*) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden i8* @luaZ_openspace(%struct.lua_State*, %struct.Mbuffer*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden i8* @luaM_realloc_(%struct.lua_State*, i8*, i64, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden i8* @luaM_toobig(%struct.lua_State*) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }
attributes #6 = { nobuiltin noredzone }

!llvm.module.flags = !{!343, !344, !345}
!llvm.ident = !{!346}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lundump.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5, !6, !9, !85, !34, !21, !303, !47, !73, !338, !307, !341, !316}
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Number", file: !7, line: 99, baseType: !8)
!7 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lua.h", directory: "/root/.unikraft/apps/redis/build")
!8 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCObject", file: !11, line: 36, baseType: !12)
!11 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lobject.h", directory: "/root/.unikraft/apps/redis/build")
!12 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "GCObject", file: !13, line: 136, size: 1472, elements: !14)
!13 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lstate.h", directory: "/root/.unikraft/apps/redis/build")
!14 = !{!15, !25, !52, !110, !334, !335, !336, !337}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "gch", scope: !12, file: !13, line: 137, baseType: !16, size: 128)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCheader", file: !11, line: 51, baseType: !17)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GCheader", file: !11, line: 49, size: 128, elements: !18)
!18 = !{!19, !20, !24}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !17, file: !11, line: 50, baseType: !9, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !17, file: !11, line: 50, baseType: !21, size: 8, offset: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "lu_byte", file: !22, line: 27, baseType: !23)
!22 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/llimits.h", directory: "/root/.unikraft/apps/redis/build")
!23 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !17, file: !11, line: 50, baseType: !21, size: 8, offset: 72)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !12, file: !13, line: 138, baseType: !26, size: 192)
!26 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "TString", file: !11, line: 199, size: 192, elements: !27)
!27 = !{!28, !37}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !26, file: !11, line: 200, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "L_Umaxalign", file: !22, line: 47, baseType: !30)
!30 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !22, line: 47, size: 64, elements: !31)
!31 = !{!32, !33, !35}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !30, file: !22, line: 47, baseType: !8, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !30, file: !22, line: 47, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !30, file: !22, line: 47, baseType: !36, size: 64)
!36 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "tsv", scope: !26, file: !11, line: 206, baseType: !38, size: 192)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !26, file: !11, line: 201, size: 192, elements: !39)
!39 = !{!40, !41, !42, !43, !44, !46}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !38, file: !11, line: 202, baseType: !9, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !38, file: !11, line: 202, baseType: !21, size: 8, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !38, file: !11, line: 202, baseType: !21, size: 8, offset: 72)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !38, file: !11, line: 203, baseType: !21, size: 8, offset: 80)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !38, file: !11, line: 204, baseType: !45, size: 32, offset: 96)
!45 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !38, file: !11, line: 205, baseType: !47, size: 64, offset: 128)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !48, line: 40, baseType: !49)
!48 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !50, line: 129, baseType: !51)
!50 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!51 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !12, file: !13, line: 139, baseType: !53, size: 320)
!53 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "Udata", file: !11, line: 215, size: 320, elements: !54)
!54 = !{!55, !56}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !53, file: !11, line: 216, baseType: !29, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "uv", scope: !53, file: !11, line: 222, baseType: !57, size: 320)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !53, file: !11, line: 217, size: 320, elements: !58)
!58 = !{!59, !60, !61, !62, !108, !109}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !57, file: !11, line: 218, baseType: !9, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !57, file: !11, line: 218, baseType: !21, size: 8, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !57, file: !11, line: 218, baseType: !21, size: 8, offset: 72)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "metatable", scope: !57, file: !11, line: 219, baseType: !63, size: 64, offset: 128)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Table", file: !11, line: 338, size: 512, elements: !65)
!65 = !{!66, !67, !68, !69, !70, !71, !72, !87, !105, !106, !107}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !64, file: !11, line: 339, baseType: !9, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !64, file: !11, line: 339, baseType: !21, size: 8, offset: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !64, file: !11, line: 339, baseType: !21, size: 8, offset: 72)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !64, file: !11, line: 340, baseType: !21, size: 8, offset: 80)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "lsizenode", scope: !64, file: !11, line: 341, baseType: !21, size: 8, offset: 88)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "metatable", scope: !64, file: !11, line: 342, baseType: !63, size: 64, offset: 128)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "array", scope: !64, file: !11, line: 343, baseType: !73, size: 64, offset: 192)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "TValue", file: !11, line: 75, baseType: !75)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lua_TValue", file: !11, line: 73, size: 128, elements: !76)
!76 = !{!77, !86}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !75, file: !11, line: 74, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "Value", file: !11, line: 64, baseType: !79)
!79 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !11, line: 59, size: 64, elements: !80)
!80 = !{!81, !82, !83, !84}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !79, file: !11, line: 60, baseType: !9, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !79, file: !11, line: 61, baseType: !34, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !79, file: !11, line: 62, baseType: !6, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !79, file: !11, line: 63, baseType: !85, size: 32)
!85 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !75, file: !11, line: 74, baseType: !85, size: 32, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !64, file: !11, line: 344, baseType: !88, size: 64, offset: 256)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "Node", file: !11, line: 335, baseType: !90)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Node", file: !11, line: 332, size: 320, elements: !91)
!91 = !{!92, !93}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "i_val", scope: !90, file: !11, line: 333, baseType: !74, size: 128)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "i_key", scope: !90, file: !11, line: 334, baseType: !94, size: 192, offset: 128)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "TKey", file: !11, line: 329, baseType: !95)
!95 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "TKey", file: !11, line: 323, size: 192, elements: !96)
!96 = !{!97, !104}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "nk", scope: !95, file: !11, line: 327, baseType: !98, size: 192)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !95, file: !11, line: 324, size: 192, elements: !99)
!99 = !{!100, !101, !102}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !98, file: !11, line: 325, baseType: !78, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !98, file: !11, line: 325, baseType: !85, size: 32, offset: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !98, file: !11, line: 326, baseType: !103, size: 64, offset: 128)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "tvk", scope: !95, file: !11, line: 328, baseType: !74, size: 128)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "lastfree", scope: !64, file: !11, line: 345, baseType: !88, size: 64, offset: 320)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !64, file: !11, line: 346, baseType: !9, size: 64, offset: 384)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "sizearray", scope: !64, file: !11, line: 347, baseType: !85, size: 32, offset: 448)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !57, file: !11, line: 220, baseType: !63, size: 64, offset: 192)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !57, file: !11, line: 221, baseType: !47, size: 64, offset: 256)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !12, file: !13, line: 140, baseType: !111, size: 448)
!111 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "Closure", file: !11, line: 309, size: 448, elements: !112)
!112 = !{!113, !283}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !111, file: !11, line: 310, baseType: !114, size: 448)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "CClosure", file: !11, line: 299, baseType: !115)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CClosure", file: !11, line: 295, size: 448, elements: !116)
!116 = !{!117, !118, !119, !120, !121, !122, !123, !124, !279}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !115, file: !11, line: 296, baseType: !9, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !115, file: !11, line: 296, baseType: !21, size: 8, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !115, file: !11, line: 296, baseType: !21, size: 8, offset: 72)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "isC", scope: !115, file: !11, line: 296, baseType: !21, size: 8, offset: 80)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "nupvalues", scope: !115, file: !11, line: 296, baseType: !21, size: 8, offset: 88)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !115, file: !11, line: 296, baseType: !9, size: 64, offset: 128)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !115, file: !11, line: 296, baseType: !63, size: 64, offset: 192)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !115, file: !11, line: 297, baseType: !125, size: 64, offset: 256)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_CFunction", file: !7, line: 52, baseType: !126)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DISubroutineType(types: !128)
!128 = !{!85, !129}
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_State", file: !7, line: 50, baseType: !131)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lua_State", file: !13, line: 100, size: 1472, elements: !132)
!132 = !{!133, !134, !135, !136, !137, !139, !140, !216, !230, !231, !232, !233, !234, !235, !236, !237, !239, !240, !241, !242, !243, !244, !269, !270, !271, !272, !273, !276}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !131, file: !13, line: 101, baseType: !9, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !131, file: !13, line: 101, baseType: !21, size: 8, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !131, file: !13, line: 101, baseType: !21, size: 8, offset: 72)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !131, file: !13, line: 102, baseType: !21, size: 8, offset: 80)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !131, file: !13, line: 103, baseType: !138, size: 64, offset: 128)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "StkId", file: !11, line: 193, baseType: !73)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !131, file: !13, line: 104, baseType: !138, size: 64, offset: 192)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "l_G", scope: !131, file: !13, line: 105, baseType: !141, size: 64, offset: 256)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "global_State", file: !13, line: 94, baseType: !143)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "global_State", file: !13, line: 68, size: 3456, elements: !144)
!144 = !{!145, !154, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !177, !179, !180, !181, !182, !183, !184, !185, !186, !188, !206, !210}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "strt", scope: !143, file: !13, line: 69, baseType: !146, size: 128)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "stringtable", file: !13, line: 42, baseType: !147)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stringtable", file: !13, line: 38, size: 128, elements: !148)
!148 = !{!149, !151, !153}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !147, file: !13, line: 39, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "nuse", scope: !147, file: !13, line: 40, baseType: !152, size: 32, offset: 64)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "lu_int32", file: !22, line: 18, baseType: !45)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !147, file: !13, line: 41, baseType: !85, size: 32, offset: 96)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "frealloc", scope: !143, file: !13, line: 70, baseType: !155, size: 64, offset: 128)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Alloc", file: !7, line: 66, baseType: !156)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DISubroutineType(types: !158)
!158 = !{!34, !34, !34, !47, !47}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "ud", scope: !143, file: !13, line: 71, baseType: !34, size: 64, offset: 192)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "currentwhite", scope: !143, file: !13, line: 72, baseType: !21, size: 8, offset: 256)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "gcstate", scope: !143, file: !13, line: 73, baseType: !21, size: 8, offset: 264)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "sweepstrgc", scope: !143, file: !13, line: 74, baseType: !85, size: 32, offset: 288)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "rootgc", scope: !143, file: !13, line: 75, baseType: !9, size: 64, offset: 320)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "sweepgc", scope: !143, file: !13, line: 76, baseType: !150, size: 64, offset: 384)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "gray", scope: !143, file: !13, line: 77, baseType: !9, size: 64, offset: 448)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "grayagain", scope: !143, file: !13, line: 78, baseType: !9, size: 64, offset: 512)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "weak", scope: !143, file: !13, line: 79, baseType: !9, size: 64, offset: 576)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "tmudata", scope: !143, file: !13, line: 80, baseType: !9, size: 64, offset: 640)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "buff", scope: !143, file: !13, line: 81, baseType: !170, size: 192, offset: 704)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "Mbuffer", file: !171, line: 28, baseType: !172)
!171 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lzio.h", directory: "/root/.unikraft/apps/redis/build")
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Mbuffer", file: !171, line: 24, size: 192, elements: !173)
!173 = !{!174, !175, !176}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !172, file: !171, line: 25, baseType: !5, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !172, file: !171, line: 26, baseType: !47, size: 64, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "buffsize", scope: !172, file: !171, line: 27, baseType: !47, size: 64, offset: 128)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "GCthreshold", scope: !143, file: !13, line: 82, baseType: !178, size: 64, offset: 896)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "lu_mem", file: !22, line: 20, baseType: !47)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "totalbytes", scope: !143, file: !13, line: 83, baseType: !178, size: 64, offset: 960)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "estimate", scope: !143, file: !13, line: 84, baseType: !178, size: 64, offset: 1024)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "gcdept", scope: !143, file: !13, line: 85, baseType: !178, size: 64, offset: 1088)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "gcpause", scope: !143, file: !13, line: 86, baseType: !85, size: 32, offset: 1152)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "gcstepmul", scope: !143, file: !13, line: 87, baseType: !85, size: 32, offset: 1184)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "panic", scope: !143, file: !13, line: 88, baseType: !125, size: 64, offset: 1216)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "l_registry", scope: !143, file: !13, line: 89, baseType: !74, size: 128, offset: 1280)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "mainthread", scope: !143, file: !13, line: 90, baseType: !187, size: 64, offset: 1408)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "uvhead", scope: !143, file: !13, line: 91, baseType: !189, size: 320, offset: 1472)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "UpVal", file: !11, line: 284, baseType: !190)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "UpVal", file: !11, line: 274, size: 320, elements: !191)
!191 = !{!192, !193, !194, !195, !196}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !190, file: !11, line: 275, baseType: !9, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !190, file: !11, line: 275, baseType: !21, size: 8, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !190, file: !11, line: 275, baseType: !21, size: 8, offset: 72)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !190, file: !11, line: 276, baseType: !73, size: 64, offset: 128)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !190, file: !11, line: 283, baseType: !197, size: 128, offset: 192)
!197 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !190, file: !11, line: 277, size: 128, elements: !198)
!198 = !{!199, !200}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !197, file: !11, line: 278, baseType: !74, size: 128)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !197, file: !11, line: 282, baseType: !201, size: 128)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !197, file: !11, line: 279, size: 128, elements: !202)
!202 = !{!203, !205}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !201, file: !11, line: 280, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !201, file: !11, line: 281, baseType: !204, size: 64, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "mt", scope: !143, file: !13, line: 92, baseType: !207, size: 576, offset: 1792)
!207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 576, elements: !208)
!208 = !{!209}
!209 = !DISubrange(count: 9)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "tmname", scope: !143, file: !13, line: 93, baseType: !211, size: 1088, offset: 2368)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 1088, elements: !214)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "TString", file: !11, line: 207, baseType: !26)
!214 = !{!215}
!215 = !DISubrange(count: 17)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "ci", scope: !131, file: !13, line: 106, baseType: !217, size: 64, offset: 320)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "CallInfo", file: !13, line: 55, baseType: !219)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CallInfo", file: !13, line: 48, size: 320, elements: !220)
!220 = !{!221, !222, !223, !224, !228, !229}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !219, file: !13, line: 49, baseType: !138, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !219, file: !13, line: 50, baseType: !138, size: 64, offset: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !219, file: !13, line: 51, baseType: !138, size: 64, offset: 128)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "savedpc", scope: !219, file: !13, line: 52, baseType: !225, size: 64, offset: 192)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !227)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "Instruction", file: !22, line: 88, baseType: !152)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "nresults", scope: !219, file: !13, line: 53, baseType: !85, size: 32, offset: 256)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "tailcalls", scope: !219, file: !13, line: 54, baseType: !85, size: 32, offset: 288)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "savedpc", scope: !131, file: !13, line: 107, baseType: !225, size: 64, offset: 384)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "stack_last", scope: !131, file: !13, line: 108, baseType: !138, size: 64, offset: 448)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !131, file: !13, line: 109, baseType: !138, size: 64, offset: 512)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "end_ci", scope: !131, file: !13, line: 110, baseType: !217, size: 64, offset: 576)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "base_ci", scope: !131, file: !13, line: 111, baseType: !217, size: 64, offset: 640)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "stacksize", scope: !131, file: !13, line: 112, baseType: !85, size: 32, offset: 704)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "size_ci", scope: !131, file: !13, line: 113, baseType: !85, size: 32, offset: 736)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "nCcalls", scope: !131, file: !13, line: 114, baseType: !238, size: 16, offset: 768)
!238 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "baseCcalls", scope: !131, file: !13, line: 115, baseType: !238, size: 16, offset: 784)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "hookmask", scope: !131, file: !13, line: 116, baseType: !21, size: 8, offset: 800)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "allowhook", scope: !131, file: !13, line: 117, baseType: !21, size: 8, offset: 808)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "basehookcount", scope: !131, file: !13, line: 118, baseType: !85, size: 32, offset: 832)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "hookcount", scope: !131, file: !13, line: 119, baseType: !85, size: 32, offset: 864)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "hook", scope: !131, file: !13, line: 120, baseType: !245, size: 64, offset: 896)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Hook", file: !7, line: 330, baseType: !246)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DISubroutineType(types: !248)
!248 = !{null, !129, !249}
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Debug", file: !7, line: 326, baseType: !251)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lua_Debug", file: !7, line: 346, size: 960, elements: !252)
!252 = !{!253, !254, !257, !258, !259, !260, !261, !262, !263, !264, !268}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !251, file: !7, line: 347, baseType: !85, size: 32)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !251, file: !7, line: 348, baseType: !255, size: 64, offset: 64)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "namewhat", scope: !251, file: !7, line: 349, baseType: !255, size: 64, offset: 128)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "what", scope: !251, file: !7, line: 350, baseType: !255, size: 64, offset: 192)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !251, file: !7, line: 351, baseType: !255, size: 64, offset: 256)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "currentline", scope: !251, file: !7, line: 352, baseType: !85, size: 32, offset: 320)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "nups", scope: !251, file: !7, line: 353, baseType: !85, size: 32, offset: 352)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "linedefined", scope: !251, file: !7, line: 354, baseType: !85, size: 32, offset: 384)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "lastlinedefined", scope: !251, file: !7, line: 355, baseType: !85, size: 32, offset: 416)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "short_src", scope: !251, file: !7, line: 356, baseType: !265, size: 480, offset: 448)
!265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !266)
!266 = !{!267}
!267 = !DISubrange(count: 60)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "i_ci", scope: !251, file: !7, line: 358, baseType: !85, size: 32, offset: 928)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "l_gt", scope: !131, file: !13, line: 121, baseType: !74, size: 128, offset: 960)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !131, file: !13, line: 122, baseType: !74, size: 128, offset: 1088)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "openupval", scope: !131, file: !13, line: 123, baseType: !9, size: 64, offset: 1216)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !131, file: !13, line: 124, baseType: !9, size: 64, offset: 1280)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "errorJmp", scope: !131, file: !13, line: 125, baseType: !274, size: 64, offset: 1344)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DICompositeType(tag: DW_TAG_structure_type, name: "lua_longjmp", file: !13, line: 18, flags: DIFlagFwdDecl)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "errfunc", scope: !131, file: !13, line: 126, baseType: !277, size: 64, offset: 1408)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !278, line: 49, baseType: !36)
!278 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!279 = !DIDerivedType(tag: DW_TAG_member, name: "upvalue", scope: !115, file: !11, line: 298, baseType: !280, size: 128, offset: 320)
!280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 128, elements: !281)
!281 = !{!282}
!282 = !DISubrange(count: 1)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !111, file: !11, line: 311, baseType: !284, size: 384)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "LClosure", file: !11, line: 306, baseType: !285)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LClosure", file: !11, line: 302, size: 384, elements: !286)
!286 = !{!287, !288, !289, !290, !291, !292, !293, !294, !331}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !285, file: !11, line: 303, baseType: !9, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !285, file: !11, line: 303, baseType: !21, size: 8, offset: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !285, file: !11, line: 303, baseType: !21, size: 8, offset: 72)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "isC", scope: !285, file: !11, line: 303, baseType: !21, size: 8, offset: 80)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "nupvalues", scope: !285, file: !11, line: 303, baseType: !21, size: 8, offset: 88)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !285, file: !11, line: 303, baseType: !9, size: 64, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !285, file: !11, line: 303, baseType: !63, size: 64, offset: 192)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !285, file: !11, line: 304, baseType: !295, size: 64, offset: 256)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Proto", file: !11, line: 231, size: 960, elements: !297)
!297 = !{!298, !299, !300, !301, !302, !304, !306, !308, !315, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !296, file: !11, line: 232, baseType: !9, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !296, file: !11, line: 232, baseType: !21, size: 8, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !296, file: !11, line: 232, baseType: !21, size: 8, offset: 72)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !296, file: !11, line: 233, baseType: !73, size: 64, offset: 128)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !296, file: !11, line: 234, baseType: !303, size: 64, offset: 192)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !296, file: !11, line: 235, baseType: !305, size: 64, offset: 256)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "lineinfo", scope: !296, file: !11, line: 236, baseType: !307, size: 64, offset: 320)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "locvars", scope: !296, file: !11, line: 237, baseType: !309, size: 64, offset: 384)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LocVar", file: !11, line: 262, size: 128, elements: !311)
!311 = !{!312, !313, !314}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "varname", scope: !310, file: !11, line: 263, baseType: !212, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "startpc", scope: !310, file: !11, line: 264, baseType: !85, size: 32, offset: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "endpc", scope: !310, file: !11, line: 265, baseType: !85, size: 32, offset: 96)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "upvalues", scope: !296, file: !11, line: 238, baseType: !316, size: 64, offset: 448)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !296, file: !11, line: 239, baseType: !212, size: 64, offset: 512)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "sizeupvalues", scope: !296, file: !11, line: 240, baseType: !85, size: 32, offset: 576)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "sizek", scope: !296, file: !11, line: 241, baseType: !85, size: 32, offset: 608)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "sizecode", scope: !296, file: !11, line: 242, baseType: !85, size: 32, offset: 640)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "sizelineinfo", scope: !296, file: !11, line: 243, baseType: !85, size: 32, offset: 672)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "sizep", scope: !296, file: !11, line: 244, baseType: !85, size: 32, offset: 704)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "sizelocvars", scope: !296, file: !11, line: 245, baseType: !85, size: 32, offset: 736)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "linedefined", scope: !296, file: !11, line: 246, baseType: !85, size: 32, offset: 768)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "lastlinedefined", scope: !296, file: !11, line: 247, baseType: !85, size: 32, offset: 800)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !296, file: !11, line: 248, baseType: !9, size: 64, offset: 832)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "nups", scope: !296, file: !11, line: 249, baseType: !21, size: 8, offset: 896)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "numparams", scope: !296, file: !11, line: 250, baseType: !21, size: 8, offset: 904)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "is_vararg", scope: !296, file: !11, line: 251, baseType: !21, size: 8, offset: 912)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "maxstacksize", scope: !296, file: !11, line: 252, baseType: !21, size: 8, offset: 920)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "upvals", scope: !285, file: !11, line: 305, baseType: !332, size: 64, offset: 320)
!332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !333, size: 64, elements: !281)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "h", scope: !12, file: !13, line: 141, baseType: !64, size: 512)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !12, file: !13, line: 142, baseType: !296, size: 960)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "uv", scope: !12, file: !13, line: 143, baseType: !190, size: 320)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "th", scope: !12, file: !13, line: 144, baseType: !131, size: 1472)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "Proto", file: !11, line: 253, baseType: !296)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "LocVar", file: !11, line: 266, baseType: !310)
!343 = !{i32 2, !"Dwarf Version", i32 4}
!344 = !{i32 2, !"Debug Info Version", i32 3}
!345 = !{i32 1, !"wchar_size", i32 4}
!346 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!347 = distinct !DISubprogram(name: "luaU_undump", scope: !1, file: !1, line: 195, type: !348, isLocal: false, isDefinition: true, scopeLine: 196, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !365)
!348 = !DISubroutineType(types: !349)
!349 = !{!339, !129, !350, !364, !255}
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZIO", file: !171, line: 18, baseType: !352)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Zio", file: !171, line: 56, size: 320, elements: !353)
!353 = !{!354, !355, !356, !362, !363}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !352, file: !171, line: 57, baseType: !47, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !352, file: !171, line: 58, baseType: !255, size: 64, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "reader", scope: !352, file: !171, line: 59, baseType: !357, size: 64, offset: 128)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Reader", file: !7, line: 58, baseType: !358)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = !DISubroutineType(types: !360)
!360 = !{!255, !129, !34, !361}
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !352, file: !171, line: 60, baseType: !34, size: 64, offset: 192)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "L", scope: !352, file: !171, line: 61, baseType: !129, size: 64, offset: 256)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!365 = !{!366, !367, !368, !369, !370}
!366 = !DILocalVariable(name: "L", arg: 1, scope: !347, file: !1, line: 195, type: !129)
!367 = !DILocalVariable(name: "Z", arg: 2, scope: !347, file: !1, line: 195, type: !350)
!368 = !DILocalVariable(name: "buff", arg: 3, scope: !347, file: !1, line: 195, type: !364)
!369 = !DILocalVariable(name: "name", arg: 4, scope: !347, file: !1, line: 195, type: !255)
!370 = !DILocalVariable(name: "S", scope: !347, file: !1, line: 197, type: !371)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "LoadState", file: !1, line: 28, baseType: !372)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 23, size: 256, elements: !373)
!373 = !{!374, !375, !376, !377}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "L", scope: !372, file: !1, line: 24, baseType: !129, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "Z", scope: !372, file: !1, line: 25, baseType: !350, size: 64, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !372, file: !1, line: 26, baseType: !364, size: 64, offset: 128)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !372, file: !1, line: 27, baseType: !255, size: 64, offset: 192)
!378 = !DILocalVariable(name: "h", scope: !379, file: !1, line: 185, type: !386)
!379 = distinct !DISubprogram(name: "LoadHeader", scope: !1, file: !1, line: 183, type: !380, isLocal: true, isDefinition: true, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !383)
!380 = !DISubroutineType(types: !381)
!381 = !{null, !382}
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!383 = !{!384, !378, !385}
!384 = !DILocalVariable(name: "S", arg: 1, scope: !379, file: !1, line: 183, type: !382)
!385 = !DILocalVariable(name: "s", scope: !379, file: !1, line: 186, type: !386)
!386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !387)
!387 = !{!388}
!388 = !DISubrange(count: 12)
!389 = !DILocation(line: 185, column: 7, scope: !379, inlinedAt: !390)
!390 = distinct !DILocation(line: 207, column: 2, scope: !347)
!391 = !DILocation(line: 186, column: 7, scope: !379, inlinedAt: !390)
!392 = !DILocation(line: 195, column: 32, scope: !347)
!393 = !DILocation(line: 195, column: 40, scope: !347)
!394 = !DILocation(line: 195, column: 52, scope: !347)
!395 = !DILocation(line: 195, column: 70, scope: !347)
!396 = !DILocation(line: 197, column: 2, scope: !347)
!397 = !DILocation(line: 198, column: 6, scope: !398)
!398 = distinct !DILexicalBlock(scope: !347, file: !1, line: 198, column: 6)
!399 = !{!400, !400, i64 0}
!400 = !{!"omnipotent char", !401, i64 0}
!401 = !{!"Simple C/C++ TBAA"}
!402 = !DILocation(line: 198, column: 17, scope: !398)
!403 = !DILocation(line: 199, column: 14, scope: !398)
!404 = !DILocation(line: 199, column: 3, scope: !398)
!405 = !DILocation(line: 0, scope: !398)
!406 = !{!407, !408, i64 24}
!407 = !{!"", !408, i64 0, !408, i64 8, !408, i64 16, !408, i64 24}
!408 = !{!"any pointer", !400, i64 0}
!409 = !DILocation(line: 204, column: 4, scope: !347)
!410 = !DILocation(line: 204, column: 5, scope: !347)
!411 = !{!407, !408, i64 0}
!412 = !DILocation(line: 205, column: 4, scope: !347)
!413 = !DILocation(line: 205, column: 5, scope: !347)
!414 = !{!407, !408, i64 8}
!415 = !DILocation(line: 206, column: 4, scope: !347)
!416 = !DILocation(line: 206, column: 5, scope: !347)
!417 = !{!407, !408, i64 16}
!418 = !DILocation(line: 197, column: 12, scope: !347)
!419 = !DILocation(line: 183, column: 35, scope: !379, inlinedAt: !390)
!420 = !DILocation(line: 185, column: 2, scope: !379, inlinedAt: !390)
!421 = !DILocation(line: 186, column: 2, scope: !379, inlinedAt: !390)
!422 = !DILocalVariable(name: "h", arg: 1, scope: !423, file: !1, line: 214, type: !5)
!423 = distinct !DISubprogram(name: "luaU_header", scope: !1, file: !1, line: 214, type: !424, isLocal: false, isDefinition: true, scopeLine: 215, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !426)
!424 = !DISubroutineType(types: !425)
!425 = !{null, !5}
!426 = !{!422, !427}
!427 = !DILocalVariable(name: "x", scope: !423, file: !1, line: 216, type: !85)
!428 = !DILocation(line: 214, column: 25, scope: !423, inlinedAt: !429)
!429 = distinct !DILocation(line: 187, column: 2, scope: !379, inlinedAt: !390)
!430 = !DILocation(line: 216, column: 6, scope: !423, inlinedAt: !429)
!431 = !DILocation(line: 217, column: 2, scope: !423, inlinedAt: !429)
!432 = !DILocation(line: 218, column: 3, scope: !423, inlinedAt: !429)
!433 = !DILocation(line: 219, column: 4, scope: !423, inlinedAt: !429)
!434 = !DILocation(line: 219, column: 6, scope: !423, inlinedAt: !429)
!435 = !DILocation(line: 220, column: 4, scope: !423, inlinedAt: !429)
!436 = !DILocation(line: 220, column: 6, scope: !423, inlinedAt: !429)
!437 = !DILocation(line: 221, column: 4, scope: !423, inlinedAt: !429)
!438 = !DILocation(line: 221, column: 6, scope: !423, inlinedAt: !429)
!439 = !DILocation(line: 222, column: 4, scope: !423, inlinedAt: !429)
!440 = !DILocation(line: 222, column: 6, scope: !423, inlinedAt: !429)
!441 = !DILocation(line: 223, column: 4, scope: !423, inlinedAt: !429)
!442 = !DILocation(line: 223, column: 6, scope: !423, inlinedAt: !429)
!443 = !DILocation(line: 224, column: 4, scope: !423, inlinedAt: !429)
!444 = !DILocation(line: 224, column: 6, scope: !423, inlinedAt: !429)
!445 = !DILocation(line: 225, column: 4, scope: !423, inlinedAt: !429)
!446 = !DILocation(line: 225, column: 6, scope: !423, inlinedAt: !429)
!447 = !DILocation(line: 226, column: 6, scope: !423, inlinedAt: !429)
!448 = !DILocalVariable(name: "S", arg: 1, scope: !449, file: !1, line: 48, type: !382)
!449 = distinct !DISubprogram(name: "LoadBlock", scope: !1, file: !1, line: 48, type: !450, isLocal: true, isDefinition: true, scopeLine: 49, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !452)
!450 = !DISubroutineType(types: !451)
!451 = !{null, !382, !34, !47}
!452 = !{!448, !453, !454, !455}
!453 = !DILocalVariable(name: "b", arg: 2, scope: !449, file: !1, line: 48, type: !34)
!454 = !DILocalVariable(name: "size", arg: 3, scope: !449, file: !1, line: 48, type: !47)
!455 = !DILocalVariable(name: "r", scope: !449, file: !1, line: 50, type: !47)
!456 = !DILocation(line: 48, column: 34, scope: !449, inlinedAt: !457)
!457 = distinct !DILocation(line: 188, column: 2, scope: !379, inlinedAt: !390)
!458 = !DILocation(line: 48, column: 43, scope: !449, inlinedAt: !457)
!459 = !DILocation(line: 48, column: 53, scope: !449, inlinedAt: !457)
!460 = !DILocation(line: 50, column: 11, scope: !449, inlinedAt: !457)
!461 = !DILocation(line: 50, column: 9, scope: !449, inlinedAt: !457)
!462 = !DILocation(line: 51, column: 2, scope: !463, inlinedAt: !457)
!463 = distinct !DILexicalBlock(scope: !449, file: !1, line: 51, column: 2)
!464 = !DILocation(line: 51, column: 2, scope: !449, inlinedAt: !457)
!465 = !DILocalVariable(name: "S", arg: 1, scope: !466, file: !1, line: 36, type: !382)
!466 = distinct !DISubprogram(name: "error", scope: !1, file: !1, line: 36, type: !467, isLocal: true, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !469)
!467 = !DISubroutineType(types: !468)
!468 = !{null, !382, !255}
!469 = !{!465, !470}
!470 = !DILocalVariable(name: "why", arg: 2, scope: !466, file: !1, line: 36, type: !255)
!471 = !DILocation(line: 36, column: 30, scope: !466, inlinedAt: !472)
!472 = distinct !DILocation(line: 51, column: 2, scope: !463, inlinedAt: !457)
!473 = !DILocation(line: 36, column: 45, scope: !466, inlinedAt: !472)
!474 = !DILocation(line: 38, column: 2, scope: !466, inlinedAt: !472)
!475 = !DILocation(line: 39, column: 16, scope: !466, inlinedAt: !472)
!476 = !DILocation(line: 39, column: 2, scope: !466, inlinedAt: !472)
!477 = !DILocation(line: 189, column: 2, scope: !478, inlinedAt: !390)
!478 = distinct !DILexicalBlock(scope: !379, file: !1, line: 189, column: 2)
!479 = !DILocation(line: 189, column: 2, scope: !379, inlinedAt: !390)
!480 = !DILocation(line: 36, column: 30, scope: !466, inlinedAt: !481)
!481 = distinct !DILocation(line: 189, column: 2, scope: !478, inlinedAt: !390)
!482 = !DILocation(line: 36, column: 45, scope: !466, inlinedAt: !481)
!483 = !DILocation(line: 38, column: 22, scope: !466, inlinedAt: !481)
!484 = !DILocation(line: 38, column: 57, scope: !466, inlinedAt: !481)
!485 = !DILocation(line: 38, column: 2, scope: !466, inlinedAt: !481)
!486 = !DILocation(line: 39, column: 16, scope: !466, inlinedAt: !481)
!487 = !DILocation(line: 39, column: 2, scope: !466, inlinedAt: !481)
!488 = !DILocation(line: 190, column: 1, scope: !379, inlinedAt: !390)
!489 = !DILocation(line: 208, column: 25, scope: !347)
!490 = !DILocation(line: 208, column: 9, scope: !347)
!491 = !DILocation(line: 209, column: 1, scope: !347)
!492 = !DILocation(line: 208, column: 2, scope: !347)
!493 = distinct !DISubprogram(name: "LoadFunction", scope: !1, file: !1, line: 161, type: !494, isLocal: true, isDefinition: true, scopeLine: 162, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !496)
!494 = !DISubroutineType(types: !495)
!495 = !{!339, !382, !212}
!496 = !{!497, !498, !499, !500}
!497 = !DILocalVariable(name: "S", arg: 1, scope: !493, file: !1, line: 161, type: !382)
!498 = !DILocalVariable(name: "p", arg: 2, scope: !493, file: !1, line: 161, type: !212)
!499 = !DILocalVariable(name: "f", scope: !493, file: !1, line: 163, type: !339)
!500 = !DILocalVariable(name: "i_o", scope: !501, file: !1, line: 166, type: !73)
!501 = distinct !DILexicalBlock(scope: !493, file: !1, line: 166, column: 2)
!502 = !DILocation(line: 161, column: 39, scope: !493)
!503 = !DILocation(line: 161, column: 51, scope: !493)
!504 = !DILocation(line: 164, column: 11, scope: !505)
!505 = distinct !DILexicalBlock(scope: !493, file: !1, line: 164, column: 6)
!506 = !DILocation(line: 164, column: 14, scope: !505)
!507 = !DILocation(line: 164, column: 6, scope: !505)
!508 = !{!509, !511, i64 96}
!509 = !{!"lua_State", !408, i64 0, !400, i64 8, !400, i64 9, !400, i64 10, !408, i64 16, !408, i64 24, !408, i64 32, !408, i64 40, !408, i64 48, !408, i64 56, !408, i64 64, !408, i64 72, !408, i64 80, !510, i64 88, !510, i64 92, !511, i64 96, !511, i64 98, !400, i64 100, !400, i64 101, !510, i64 104, !510, i64 108, !408, i64 112, !512, i64 120, !512, i64 136, !408, i64 152, !408, i64 160, !408, i64 168, !513, i64 176}
!510 = !{!"int", !400, i64 0}
!511 = !{!"short", !400, i64 0}
!512 = !{!"lua_TValue", !400, i64 0, !510, i64 8}
!513 = !{!"long", !400, i64 0}
!514 = !DILocation(line: 164, column: 22, scope: !505)
!515 = !DILocation(line: 164, column: 6, scope: !493)
!516 = !DILocation(line: 36, column: 30, scope: !466, inlinedAt: !517)
!517 = distinct !DILocation(line: 164, column: 40, scope: !505)
!518 = !DILocation(line: 36, column: 45, scope: !466, inlinedAt: !517)
!519 = !DILocation(line: 38, column: 57, scope: !466, inlinedAt: !517)
!520 = !DILocation(line: 38, column: 2, scope: !466, inlinedAt: !517)
!521 = !DILocation(line: 39, column: 16, scope: !466, inlinedAt: !517)
!522 = !DILocation(line: 39, column: 2, scope: !466, inlinedAt: !517)
!523 = !DILocation(line: 165, column: 21, scope: !493)
!524 = !DILocation(line: 164, column: 40, scope: !505)
!525 = !DILocation(line: 165, column: 4, scope: !493)
!526 = !DILocation(line: 163, column: 9, scope: !493)
!527 = !DILocation(line: 166, column: 2, scope: !501)
!528 = !{!509, !408, i64 16}
!529 = !{!512, !510, i64 8}
!530 = !DILocation(line: 166, column: 34, scope: !531)
!531 = distinct !DILexicalBlock(scope: !532, file: !1, line: 166, column: 34)
!532 = distinct !DILexicalBlock(scope: !493, file: !1, line: 166, column: 34)
!533 = !{!509, !408, i64 56}
!534 = !DILocation(line: 166, column: 34, scope: !532)
!535 = !DILocalVariable(name: "S", arg: 1, scope: !536, file: !1, line: 76, type: !382)
!536 = distinct !DISubprogram(name: "LoadString", scope: !1, file: !1, line: 76, type: !537, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !539)
!537 = !DISubroutineType(types: !538)
!538 = !{!212, !382}
!539 = !{!535, !540, !541}
!540 = !DILocalVariable(name: "size", scope: !536, file: !1, line: 78, type: !47)
!541 = !DILocalVariable(name: "s", scope: !542, file: !1, line: 84, type: !5)
!542 = distinct !DILexicalBlock(scope: !543, file: !1, line: 83, column: 2)
!543 = distinct !DILexicalBlock(scope: !536, file: !1, line: 80, column: 6)
!544 = !DILocation(line: 76, column: 39, scope: !536, inlinedAt: !545)
!545 = distinct !DILocation(line: 167, column: 12, scope: !493)
!546 = !DILocation(line: 78, column: 2, scope: !536, inlinedAt: !545)
!547 = !DILocation(line: 48, column: 34, scope: !449, inlinedAt: !548)
!548 = distinct !DILocation(line: 79, column: 2, scope: !536, inlinedAt: !545)
!549 = !DILocation(line: 48, column: 43, scope: !449, inlinedAt: !548)
!550 = !DILocation(line: 48, column: 53, scope: !449, inlinedAt: !548)
!551 = !DILocation(line: 50, column: 24, scope: !449, inlinedAt: !548)
!552 = !DILocation(line: 50, column: 11, scope: !449, inlinedAt: !548)
!553 = !DILocation(line: 50, column: 9, scope: !449, inlinedAt: !548)
!554 = !DILocation(line: 51, column: 2, scope: !463, inlinedAt: !548)
!555 = !DILocation(line: 51, column: 2, scope: !449, inlinedAt: !548)
!556 = !DILocation(line: 36, column: 30, scope: !466, inlinedAt: !557)
!557 = distinct !DILocation(line: 51, column: 2, scope: !463, inlinedAt: !548)
!558 = !DILocation(line: 36, column: 45, scope: !466, inlinedAt: !557)
!559 = !DILocation(line: 38, column: 22, scope: !466, inlinedAt: !557)
!560 = !DILocation(line: 38, column: 57, scope: !466, inlinedAt: !557)
!561 = !DILocation(line: 38, column: 2, scope: !466, inlinedAt: !557)
!562 = !DILocation(line: 39, column: 16, scope: !466, inlinedAt: !557)
!563 = !DILocation(line: 39, column: 2, scope: !466, inlinedAt: !557)
!564 = !DILocation(line: 80, column: 6, scope: !543, inlinedAt: !545)
!565 = !{!513, !513, i64 0}
!566 = !DILocation(line: 78, column: 9, scope: !536, inlinedAt: !545)
!567 = !DILocation(line: 80, column: 10, scope: !543, inlinedAt: !545)
!568 = !DILocation(line: 80, column: 6, scope: !536, inlinedAt: !545)
!569 = !DILocation(line: 84, column: 29, scope: !542, inlinedAt: !545)
!570 = !DILocation(line: 84, column: 34, scope: !542, inlinedAt: !545)
!571 = !DILocation(line: 84, column: 11, scope: !542, inlinedAt: !545)
!572 = !DILocation(line: 84, column: 9, scope: !542, inlinedAt: !545)
!573 = !DILocation(line: 85, column: 17, scope: !542, inlinedAt: !545)
!574 = !DILocation(line: 48, column: 34, scope: !449, inlinedAt: !575)
!575 = distinct !DILocation(line: 85, column: 3, scope: !542, inlinedAt: !545)
!576 = !DILocation(line: 48, column: 43, scope: !449, inlinedAt: !575)
!577 = !DILocation(line: 48, column: 53, scope: !449, inlinedAt: !575)
!578 = !DILocation(line: 50, column: 24, scope: !449, inlinedAt: !575)
!579 = !DILocation(line: 50, column: 11, scope: !449, inlinedAt: !575)
!580 = !DILocation(line: 50, column: 9, scope: !449, inlinedAt: !575)
!581 = !DILocation(line: 51, column: 2, scope: !463, inlinedAt: !575)
!582 = !DILocation(line: 51, column: 2, scope: !449, inlinedAt: !575)
!583 = !DILocation(line: 36, column: 30, scope: !466, inlinedAt: !584)
!584 = distinct !DILocation(line: 51, column: 2, scope: !463, inlinedAt: !575)
!585 = !DILocation(line: 36, column: 45, scope: !466, inlinedAt: !584)
!586 = !DILocation(line: 38, column: 22, scope: !466, inlinedAt: !584)
!587 = !DILocation(line: 38, column: 57, scope: !466, inlinedAt: !584)
!588 = !DILocation(line: 38, column: 2, scope: !466, inlinedAt: !584)
!589 = !DILocation(line: 39, column: 16, scope: !466, inlinedAt: !584)
!590 = !DILocation(line: 39, column: 2, scope: !466, inlinedAt: !584)
!591 = !DILocation(line: 86, column: 26, scope: !542, inlinedAt: !545)
!592 = !DILocation(line: 86, column: 30, scope: !542, inlinedAt: !545)
!593 = !DILocation(line: 86, column: 34, scope: !542, inlinedAt: !545)
!594 = !DILocation(line: 86, column: 10, scope: !542, inlinedAt: !545)
!595 = !DILocation(line: 0, scope: !542, inlinedAt: !545)
!596 = !DILocation(line: 88, column: 1, scope: !536, inlinedAt: !545)
!597 = !DILocation(line: 167, column: 5, scope: !493)
!598 = !DILocation(line: 167, column: 40, scope: !599)
!599 = distinct !DILexicalBlock(scope: !493, file: !1, line: 167, column: 31)
!600 = !DILocation(line: 167, column: 31, scope: !493)
!601 = !DILocation(line: 0, scope: !493)
!602 = !{!603, !408, i64 64}
!603 = !{!"Proto", !408, i64 0, !400, i64 8, !400, i64 9, !408, i64 16, !408, i64 24, !408, i64 32, !408, i64 40, !408, i64 48, !408, i64 56, !408, i64 64, !510, i64 72, !510, i64 76, !510, i64 80, !510, i64 84, !510, i64 88, !510, i64 92, !510, i64 96, !510, i64 100, !408, i64 104, !400, i64 112, !400, i64 113, !400, i64 114, !400, i64 115}
!604 = !DILocalVariable(name: "S", arg: 1, scope: !605, file: !1, line: 61, type: !382)
!605 = distinct !DISubprogram(name: "LoadInt", scope: !1, file: !1, line: 61, type: !606, isLocal: true, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !608)
!606 = !DISubroutineType(types: !607)
!607 = !{!85, !382}
!608 = !{!604, !609}
!609 = !DILocalVariable(name: "x", scope: !605, file: !1, line: 63, type: !85)
!610 = !DILocation(line: 61, column: 31, scope: !605, inlinedAt: !611)
!611 = distinct !DILocation(line: 168, column: 17, scope: !493)
!612 = !DILocation(line: 63, column: 2, scope: !605, inlinedAt: !611)
!613 = !DILocation(line: 48, column: 34, scope: !449, inlinedAt: !614)
!614 = distinct !DILocation(line: 64, column: 2, scope: !605, inlinedAt: !611)
!615 = !DILocation(line: 48, column: 43, scope: !449, inlinedAt: !614)
!616 = !DILocation(line: 48, column: 53, scope: !449, inlinedAt: !614)
!617 = !DILocation(line: 50, column: 24, scope: !449, inlinedAt: !614)
!618 = !DILocation(line: 50, column: 11, scope: !449, inlinedAt: !614)
!619 = !DILocation(line: 50, column: 9, scope: !449, inlinedAt: !614)
!620 = !DILocation(line: 51, column: 2, scope: !463, inlinedAt: !614)
!621 = !DILocation(line: 51, column: 2, scope: !449, inlinedAt: !614)
!622 = !DILocation(line: 36, column: 30, scope: !466, inlinedAt: !623)
!623 = distinct !DILocation(line: 51, column: 2, scope: !463, inlinedAt: !614)
!624 = !DILocation(line: 36, column: 45, scope: !466, inlinedAt: !623)
!625 = !DILocation(line: 38, column: 22, scope: !466, inlinedAt: !623)
!626 = !DILocation(line: 38, column: 57, scope: !466, inlinedAt: !623)
!627 = !DILocation(line: 38, column: 2, scope: !466, inlinedAt: !623)
!628 = !DILocation(line: 39, column: 16, scope: !466, inlinedAt: !623)
!629 = !DILocation(line: 39, column: 2, scope: !466, inlinedAt: !623)
!630 = !DILocation(line: 65, column: 2, scope: !631, inlinedAt: !611)
!631 = distinct !DILexicalBlock(scope: !605, file: !1, line: 65, column: 2)
!632 = !{!510, !510, i64 0}
!633 = !DILocation(line: 63, column: 6, scope: !605, inlinedAt: !611)
!634 = !DILocation(line: 65, column: 2, scope: !605, inlinedAt: !611)
!635 = !DILocation(line: 36, column: 30, scope: !466, inlinedAt: !636)
!636 = distinct !DILocation(line: 65, column: 2, scope: !631, inlinedAt: !611)
!637 = !DILocation(line: 36, column: 45, scope: !466, inlinedAt: !636)
!638 = !DILocation(line: 38, column: 22, scope: !466, inlinedAt: !636)
!639 = !DILocation(line: 38, column: 57, scope: !466, inlinedAt: !636)
!640 = !DILocation(line: 38, column: 2, scope: !466, inlinedAt: !636)
!641 = !DILocation(line: 39, column: 16, scope: !466, inlinedAt: !636)
!642 = !DILocation(line: 39, column: 2, scope: !466, inlinedAt: !636)
!643 = !DILocation(line: 66, column: 9, scope: !605, inlinedAt: !611)
!644 = !DILocation(line: 67, column: 1, scope: !605, inlinedAt: !611)
!645 = !DILocation(line: 168, column: 5, scope: !493)
!646 = !DILocation(line: 168, column: 16, scope: !493)
!647 = !{!603, !510, i64 96}
!648 = !DILocation(line: 61, column: 31, scope: !605, inlinedAt: !649)
!649 = distinct !DILocation(line: 169, column: 21, scope: !493)
!650 = !DILocation(line: 63, column: 2, scope: !605, inlinedAt: !649)
!651 = !DILocation(line: 48, column: 34, scope: !449, inlinedAt: !652)
!652 = distinct !DILocation(line: 64, column: 2, scope: !605, inlinedAt: !649)
!653 = !DILocation(line: 48, column: 43, scope: !449, inlinedAt: !652)
!654 = !DILocation(line: 48, column: 53, scope: !449, inlinedAt: !652)
!655 = !DILocation(line: 50, column: 24, scope: !449, inlinedAt: !652)
!656 = !DILocation(line: 50, column: 11, scope: !449, inlinedAt: !652)
!657 = !DILocation(line: 50, column: 9, scope: !449, inlinedAt: !652)
!658 = !DILocation(line: 51, column: 2, scope: !463, inlinedAt: !652)
!659 = !DILocation(line: 51, column: 2, scope: !449, inlinedAt: !652)
!660 = !DILocation(line: 36, column: 30, scope: !466, inlinedAt: !661)
!661 = distinct !DILocation(line: 51, column: 2, scope: !463, inlinedAt: !652)
!662 = !DILocation(line: 36, column: 45, scope: !466, inlinedAt: !661)
!663 = !DILocation(line: 38, column: 22, scope: !466, inlinedAt: !661)
!664 = !DILocation(line: 38, column: 57, scope: !466, inlinedAt: !661)
!665 = !DILocation(line: 38, column: 2, scope: !466, inlinedAt: !661)
!666 = !DILocation(line: 39, column: 16, scope: !466, inlinedAt: !661)
!667 = !DILocation(line: 39, column: 2, scope: !466, inlinedAt: !661)
!668 = !DILocation(line: 65, column: 2, scope: !631, inlinedAt: !649)
!669 = !DILocation(line: 63, column: 6, scope: !605, inlinedAt: !649)
!670 = !DILocation(line: 65, column: 2, scope: !605, inlinedAt: !649)
!671 = !DILocation(line: 36, column: 30, scope: !466, inlinedAt: !672)
!672 = distinct !DILocation(line: 65, column: 2, scope: !631, inlinedAt: !649)
!673 = !DILocation(line: 36, column: 45, scope: !466, inlinedAt: !672)
!674 = !DILocation(line: 38, column: 22, scope: !466, inlinedAt: !672)
!675 = !DILocation(line: 38, column: 57, scope: !466, inlinedAt: !672)
!676 = !DILocation(line: 38, column: 2, scope: !466, inlinedAt: !672)
!677 = !DILocation(line: 39, column: 16, scope: !466, inlinedAt: !672)
!678 = !DILocation(line: 39, column: 2, scope: !466, inlinedAt: !672)
!679 = !DILocation(line: 66, column: 9, scope: !605, inlinedAt: !649)
!680 = !DILocation(line: 67, column: 1, scope: !605, inlinedAt: !649)
!681 = !DILocation(line: 169, column: 5, scope: !493)
!682 = !DILocation(line: 169, column: 20, scope: !493)
!683 = !{!603, !510, i64 100}
!684 = !DILocalVariable(name: "S", arg: 1, scope: !685, file: !1, line: 54, type: !382)
!685 = distinct !DISubprogram(name: "LoadChar", scope: !1, file: !1, line: 54, type: !606, isLocal: true, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !686)
!686 = !{!684, !687}
!687 = !DILocalVariable(name: "x", scope: !685, file: !1, line: 56, type: !4)
!688 = !DILocation(line: 54, column: 32, scope: !685, inlinedAt: !689)
!689 = distinct !DILocation(line: 170, column: 10, scope: !493)
!690 = !DILocation(line: 56, column: 7, scope: !685, inlinedAt: !689)
!691 = !DILocation(line: 56, column: 2, scope: !685, inlinedAt: !689)
!692 = !DILocation(line: 48, column: 34, scope: !449, inlinedAt: !693)
!693 = distinct !DILocation(line: 57, column: 2, scope: !685, inlinedAt: !689)
!694 = !DILocation(line: 48, column: 43, scope: !449, inlinedAt: !693)
!695 = !DILocation(line: 48, column: 53, scope: !449, inlinedAt: !693)
!696 = !DILocation(line: 50, column: 24, scope: !449, inlinedAt: !693)
!697 = !DILocation(line: 50, column: 11, scope: !449, inlinedAt: !693)
!698 = !DILocation(line: 50, column: 9, scope: !449, inlinedAt: !693)
!699 = !DILocation(line: 51, column: 2, scope: !463, inlinedAt: !693)
!700 = !DILocation(line: 51, column: 2, scope: !449, inlinedAt: !693)
!701 = !DILocation(line: 36, column: 30, scope: !466, inlinedAt: !702)
!702 = distinct !DILocation(line: 51, column: 2, scope: !463, inlinedAt: !693)
!703 = !DILocation(line: 36, column: 45, scope: !466, inlinedAt: !702)
!704 = !DILocation(line: 38, column: 22, scope: !466, inlinedAt: !702)
!705 = !DILocation(line: 38, column: 57, scope: !466, inlinedAt: !702)
!706 = !DILocation(line: 38, column: 2, scope: !466, inlinedAt: !702)
!707 = !DILocation(line: 39, column: 16, scope: !466, inlinedAt: !702)
!708 = !DILocation(line: 39, column: 2, scope: !466, inlinedAt: !702)
!709 = !DILocation(line: 58, column: 9, scope: !685, inlinedAt: !689)
!710 = !DILocation(line: 59, column: 1, scope: !685, inlinedAt: !689)
!711 = !DILocation(line: 170, column: 5, scope: !493)
!712 = !DILocation(line: 170, column: 9, scope: !493)
!713 = !{!603, !400, i64 112}
!714 = !DILocation(line: 54, column: 32, scope: !685, inlinedAt: !715)
!715 = distinct !DILocation(line: 171, column: 15, scope: !493)
!716 = !DILocation(line: 56, column: 7, scope: !685, inlinedAt: !715)
!717 = !DILocation(line: 56, column: 2, scope: !685, inlinedAt: !715)
!718 = !DILocation(line: 48, column: 34, scope: !449, inlinedAt: !719)
!719 = distinct !DILocation(line: 57, column: 2, scope: !685, inlinedAt: !715)
!720 = !DILocation(line: 48, column: 43, scope: !449, inlinedAt: !719)
!721 = !DILocation(line: 48, column: 53, scope: !449, inlinedAt: !719)
!722 = !DILocation(line: 50, column: 24, scope: !449, inlinedAt: !719)
!723 = !DILocation(line: 50, column: 11, scope: !449, inlinedAt: !719)
!724 = !DILocation(line: 50, column: 9, scope: !449, inlinedAt: !719)
!725 = !DILocation(line: 51, column: 2, scope: !463, inlinedAt: !719)
!726 = !DILocation(line: 51, column: 2, scope: !449, inlinedAt: !719)
!727 = !DILocation(line: 36, column: 30, scope: !466, inlinedAt: !728)
!728 = distinct !DILocation(line: 51, column: 2, scope: !463, inlinedAt: !719)
!729 = !DILocation(line: 36, column: 45, scope: !466, inlinedAt: !728)
!730 = !DILocation(line: 38, column: 22, scope: !466, inlinedAt: !728)
!731 = !DILocation(line: 38, column: 57, scope: !466, inlinedAt: !728)
!732 = !DILocation(line: 38, column: 2, scope: !466, inlinedAt: !728)
!733 = !DILocation(line: 39, column: 16, scope: !466, inlinedAt: !728)
!734 = !DILocation(line: 39, column: 2, scope: !466, inlinedAt: !728)
!735 = !DILocation(line: 58, column: 9, scope: !685, inlinedAt: !715)
!736 = !DILocation(line: 59, column: 1, scope: !685, inlinedAt: !715)
!737 = !DILocation(line: 171, column: 5, scope: !493)
!738 = !DILocation(line: 171, column: 14, scope: !493)
!739 = !{!603, !400, i64 113}
!740 = !DILocation(line: 54, column: 32, scope: !685, inlinedAt: !741)
!741 = distinct !DILocation(line: 172, column: 15, scope: !493)
!742 = !DILocation(line: 56, column: 7, scope: !685, inlinedAt: !741)
!743 = !DILocation(line: 56, column: 2, scope: !685, inlinedAt: !741)
!744 = !DILocation(line: 48, column: 34, scope: !449, inlinedAt: !745)
!745 = distinct !DILocation(line: 57, column: 2, scope: !685, inlinedAt: !741)
!746 = !DILocation(line: 48, column: 43, scope: !449, inlinedAt: !745)
!747 = !DILocation(line: 48, column: 53, scope: !449, inlinedAt: !745)
!748 = !DILocation(line: 50, column: 24, scope: !449, inlinedAt: !745)
!749 = !DILocation(line: 50, column: 11, scope: !449, inlinedAt: !745)
!750 = !DILocation(line: 50, column: 9, scope: !449, inlinedAt: !745)
!751 = !DILocation(line: 51, column: 2, scope: !463, inlinedAt: !745)
!752 = !DILocation(line: 51, column: 2, scope: !449, inlinedAt: !745)
!753 = !DILocation(line: 36, column: 30, scope: !466, inlinedAt: !754)
!754 = distinct !DILocation(line: 51, column: 2, scope: !463, inlinedAt: !745)
!755 = !DILocation(line: 36, column: 45, scope: !466, inlinedAt: !754)
!756 = !DILocation(line: 38, column: 22, scope: !466, inlinedAt: !754)
!757 = !DILocation(line: 38, column: 57, scope: !466, inlinedAt: !754)
!758 = !DILocation(line: 38, column: 2, scope: !466, inlinedAt: !754)
!759 = !DILocation(line: 39, column: 16, scope: !466, inlinedAt: !754)
!760 = !DILocation(line: 39, column: 2, scope: !466, inlinedAt: !754)
!761 = !DILocation(line: 58, column: 9, scope: !685, inlinedAt: !741)
!762 = !DILocation(line: 59, column: 1, scope: !685, inlinedAt: !741)
!763 = !DILocation(line: 172, column: 5, scope: !493)
!764 = !DILocation(line: 172, column: 14, scope: !493)
!765 = !{!603, !400, i64 114}
!766 = !DILocation(line: 54, column: 32, scope: !685, inlinedAt: !767)
!767 = distinct !DILocation(line: 173, column: 18, scope: !493)
!768 = !DILocation(line: 56, column: 7, scope: !685, inlinedAt: !767)
!769 = !DILocation(line: 56, column: 2, scope: !685, inlinedAt: !767)
!770 = !DILocation(line: 48, column: 34, scope: !449, inlinedAt: !771)
!771 = distinct !DILocation(line: 57, column: 2, scope: !685, inlinedAt: !767)
!772 = !DILocation(line: 48, column: 43, scope: !449, inlinedAt: !771)
!773 = !DILocation(line: 48, column: 53, scope: !449, inlinedAt: !771)
!774 = !DILocation(line: 50, column: 24, scope: !449, inlinedAt: !771)
!775 = !DILocation(line: 50, column: 11, scope: !449, inlinedAt: !771)
!776 = !DILocation(line: 50, column: 9, scope: !449, inlinedAt: !771)
!777 = !DILocation(line: 51, column: 2, scope: !463, inlinedAt: !771)
!778 = !DILocation(line: 51, column: 2, scope: !449, inlinedAt: !771)
!779 = !DILocation(line: 36, column: 30, scope: !466, inlinedAt: !780)
!780 = distinct !DILocation(line: 51, column: 2, scope: !463, inlinedAt: !771)
!781 = !DILocation(line: 36, column: 45, scope: !466, inlinedAt: !780)
!782 = !DILocation(line: 38, column: 22, scope: !466, inlinedAt: !780)
!783 = !DILocation(line: 38, column: 57, scope: !466, inlinedAt: !780)
!784 = !DILocation(line: 38, column: 2, scope: !466, inlinedAt: !780)
!785 = !DILocation(line: 39, column: 16, scope: !466, inlinedAt: !780)
!786 = !DILocation(line: 39, column: 2, scope: !466, inlinedAt: !780)
!787 = !DILocation(line: 58, column: 9, scope: !685, inlinedAt: !767)
!788 = !DILocation(line: 59, column: 1, scope: !685, inlinedAt: !767)
!789 = !DILocation(line: 173, column: 5, scope: !493)
!790 = !DILocation(line: 173, column: 17, scope: !493)
!791 = !{!603, !400, i64 115}
!792 = !DILocalVariable(name: "S", arg: 1, scope: !793, file: !1, line: 90, type: !382)
!793 = distinct !DISubprogram(name: "LoadCode", scope: !1, file: !1, line: 90, type: !794, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !796)
!794 = !DISubroutineType(types: !795)
!795 = !{null, !382, !339}
!796 = !{!792, !797, !798}
!797 = !DILocalVariable(name: "f", arg: 2, scope: !793, file: !1, line: 90, type: !339)
!798 = !DILocalVariable(name: "n", scope: !793, file: !1, line: 92, type: !85)
!799 = !DILocation(line: 90, column: 33, scope: !793, inlinedAt: !800)
!800 = distinct !DILocation(line: 174, column: 2, scope: !493)
!801 = !DILocation(line: 90, column: 43, scope: !793, inlinedAt: !800)
!802 = !DILocation(line: 61, column: 31, scope: !605, inlinedAt: !803)
!803 = distinct !DILocation(line: 92, column: 8, scope: !793, inlinedAt: !800)
!804 = !DILocation(line: 63, column: 2, scope: !605, inlinedAt: !803)
!805 = !DILocation(line: 48, column: 34, scope: !449, inlinedAt: !806)
!806 = distinct !DILocation(line: 64, column: 2, scope: !605, inlinedAt: !803)
!807 = !DILocation(line: 48, column: 43, scope: !449, inlinedAt: !806)
!808 = !DILocation(line: 48, column: 53, scope: !449, inlinedAt: !806)
!809 = !DILocation(line: 50, column: 24, scope: !449, inlinedAt: !806)
!810 = !DILocation(line: 50, column: 11, scope: !449, inlinedAt: !806)
!811 = !DILocation(line: 50, column: 9, scope: !449, inlinedAt: !806)
!812 = !DILocation(line: 51, column: 2, scope: !463, inlinedAt: !806)
!813 = !DILocation(line: 51, column: 2, scope: !449, inlinedAt: !806)
!814 = !DILocation(line: 36, column: 30, scope: !466, inlinedAt: !815)
!815 = distinct !DILocation(line: 51, column: 2, scope: !463, inlinedAt: !806)
!816 = !DILocation(line: 36, column: 45, scope: !466, inlinedAt: !815)
!817 = !DILocation(line: 38, column: 22, scope: !466, inlinedAt: !815)
!818 = !DILocation(line: 38, column: 57, scope: !466, inlinedAt: !815)
!819 = !DILocation(line: 38, column: 2, scope: !466, inlinedAt: !815)
!820 = !DILocation(line: 39, column: 16, scope: !466, inlinedAt: !815)
!821 = !DILocation(line: 39, column: 2, scope: !466, inlinedAt: !815)
!822 = !DILocation(line: 65, column: 2, scope: !631, inlinedAt: !803)
!823 = !DILocation(line: 63, column: 6, scope: !605, inlinedAt: !803)
!824 = !DILocation(line: 65, column: 2, scope: !605, inlinedAt: !803)
!825 = !DILocation(line: 67, column: 1, scope: !605, inlinedAt: !803)
!826 = !DILocation(line: 93, column: 10, scope: !793, inlinedAt: !800)
!827 = !DILocation(line: 36, column: 30, scope: !466, inlinedAt: !828)
!828 = distinct !DILocation(line: 65, column: 2, scope: !631, inlinedAt: !803)
!829 = !DILocation(line: 36, column: 45, scope: !466, inlinedAt: !828)
!830 = !DILocation(line: 38, column: 22, scope: !466, inlinedAt: !828)
!831 = !DILocation(line: 38, column: 57, scope: !466, inlinedAt: !828)
!832 = !DILocation(line: 38, column: 2, scope: !466, inlinedAt: !828)
!833 = !DILocation(line: 39, column: 16, scope: !466, inlinedAt: !828)
!834 = !DILocation(line: 39, column: 2, scope: !466, inlinedAt: !828)
!835 = !DILocation(line: 66, column: 9, scope: !605, inlinedAt: !803)
!836 = !DILocation(line: 92, column: 6, scope: !793, inlinedAt: !800)
!837 = !DILocation(line: 95, column: 2, scope: !793, inlinedAt: !800)
!838 = !DILocation(line: 93, column: 5, scope: !793, inlinedAt: !800)
!839 = !DILocation(line: 93, column: 9, scope: !793, inlinedAt: !800)
!840 = !{!603, !408, i64 24}
!841 = !DILocation(line: 94, column: 5, scope: !793, inlinedAt: !800)
!842 = !DILocation(line: 94, column: 13, scope: !793, inlinedAt: !800)
!843 = !{!603, !510, i64 80}
!844 = !DILocation(line: 48, column: 34, scope: !449, inlinedAt: !845)
!845 = distinct !DILocation(line: 95, column: 2, scope: !793, inlinedAt: !800)
!846 = !DILocation(line: 48, column: 43, scope: !449, inlinedAt: !845)
!847 = !DILocation(line: 48, column: 53, scope: !449, inlinedAt: !845)
!848 = !DILocation(line: 50, column: 24, scope: !449, inlinedAt: !845)
!849 = !DILocation(line: 50, column: 11, scope: !449, inlinedAt: !845)
!850 = !DILocation(line: 50, column: 9, scope: !449, inlinedAt: !845)
!851 = !DILocation(line: 51, column: 2, scope: !463, inlinedAt: !845)
!852 = !DILocation(line: 51, column: 2, scope: !449, inlinedAt: !845)
!853 = !DILocation(line: 36, column: 30, scope: !466, inlinedAt: !854)
!854 = distinct !DILocation(line: 51, column: 2, scope: !463, inlinedAt: !845)
!855 = !DILocation(line: 36, column: 45, scope: !466, inlinedAt: !854)
!856 = !DILocation(line: 38, column: 22, scope: !466, inlinedAt: !854)
!857 = !DILocation(line: 38, column: 57, scope: !466, inlinedAt: !854)
!858 = !DILocation(line: 38, column: 2, scope: !466, inlinedAt: !854)
!859 = !DILocation(line: 39, column: 16, scope: !466, inlinedAt: !854)
!860 = !DILocation(line: 39, column: 2, scope: !466, inlinedAt: !854)
!861 = !DILocalVariable(name: "S", arg: 1, scope: !862, file: !1, line: 100, type: !382)
!862 = distinct !DISubprogram(name: "LoadConstants", scope: !1, file: !1, line: 100, type: !794, isLocal: true, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !863)
!863 = !{!861, !864, !865, !866, !867, !871, !872, !875, !877}
!864 = !DILocalVariable(name: "f", arg: 2, scope: !862, file: !1, line: 100, type: !339)
!865 = !DILocalVariable(name: "i", scope: !862, file: !1, line: 102, type: !85)
!866 = !DILocalVariable(name: "n", scope: !862, file: !1, line: 102, type: !85)
!867 = !DILocalVariable(name: "o", scope: !868, file: !1, line: 109, type: !73)
!868 = distinct !DILexicalBlock(scope: !869, file: !1, line: 108, column: 2)
!869 = distinct !DILexicalBlock(scope: !870, file: !1, line: 107, column: 2)
!870 = distinct !DILexicalBlock(scope: !862, file: !1, line: 107, column: 2)
!871 = !DILocalVariable(name: "t", scope: !868, file: !1, line: 110, type: !85)
!872 = !DILocalVariable(name: "i_o", scope: !873, file: !1, line: 117, type: !73)
!873 = distinct !DILexicalBlock(scope: !874, file: !1, line: 117, column: 5)
!874 = distinct !DILexicalBlock(scope: !868, file: !1, line: 112, column: 3)
!875 = !DILocalVariable(name: "i_o", scope: !876, file: !1, line: 120, type: !73)
!876 = distinct !DILexicalBlock(scope: !874, file: !1, line: 120, column: 2)
!877 = !DILocalVariable(name: "i_o", scope: !878, file: !1, line: 123, type: !73)
!878 = distinct !DILexicalBlock(scope: !874, file: !1, line: 123, column: 2)
!879 = !DILocation(line: 100, column: 38, scope: !862, inlinedAt: !880)
!880 = distinct !DILocation(line: 175, column: 2, scope: !493)
!881 = !DILocation(line: 100, column: 48, scope: !862, inlinedAt: !880)
!882 = !DILocation(line: 61, column: 31, scope: !605, inlinedAt: !883)
!883 = distinct !DILocation(line: 103, column: 4, scope: !862, inlinedAt: !880)
!884 = !DILocation(line: 63, column: 2, scope: !605, inlinedAt: !883)
!885 = !DILocation(line: 48, column: 34, scope: !449, inlinedAt: !886)
!886 = distinct !DILocation(line: 64, column: 2, scope: !605, inlinedAt: !883)
!887 = !DILocation(line: 48, column: 43, scope: !449, inlinedAt: !886)
!888 = !DILocation(line: 48, column: 53, scope: !449, inlinedAt: !886)
!889 = !DILocation(line: 50, column: 24, scope: !449, inlinedAt: !886)
!890 = !DILocation(line: 50, column: 11, scope: !449, inlinedAt: !886)
!891 = !DILocation(line: 50, column: 9, scope: !449, inlinedAt: !886)
!892 = !DILocation(line: 51, column: 2, scope: !463, inlinedAt: !886)
!893 = !DILocation(line: 51, column: 2, scope: !449, inlinedAt: !886)
!894 = !DILocation(line: 36, column: 30, scope: !466, inlinedAt: !895)
!895 = distinct !DILocation(line: 51, column: 2, scope: !463, inlinedAt: !886)
!896 = !DILocation(line: 36, column: 45, scope: !466, inlinedAt: !895)
!897 = !DILocation(line: 38, column: 22, scope: !466, inlinedAt: !895)
!898 = !DILocation(line: 38, column: 57, scope: !466, inlinedAt: !895)
!899 = !DILocation(line: 38, column: 2, scope: !466, inlinedAt: !895)
!900 = !DILocation(line: 39, column: 16, scope: !466, inlinedAt: !895)
!901 = !DILocation(line: 39, column: 2, scope: !466, inlinedAt: !895)
!902 = !DILocation(line: 65, column: 2, scope: !631, inlinedAt: !883)
!903 = !DILocation(line: 63, column: 6, scope: !605, inlinedAt: !883)
!904 = !DILocation(line: 65, column: 2, scope: !605, inlinedAt: !883)
!905 = !DILocation(line: 67, column: 1, scope: !605, inlinedAt: !883)
!906 = !DILocation(line: 102, column: 8, scope: !862, inlinedAt: !880)
!907 = !DILocation(line: 104, column: 7, scope: !862, inlinedAt: !880)
!908 = !DILocation(line: 36, column: 30, scope: !466, inlinedAt: !909)
!909 = distinct !DILocation(line: 65, column: 2, scope: !631, inlinedAt: !883)
!910 = !DILocation(line: 36, column: 45, scope: !466, inlinedAt: !909)
!911 = !DILocation(line: 38, column: 22, scope: !466, inlinedAt: !909)
!912 = !DILocation(line: 38, column: 57, scope: !466, inlinedAt: !909)
!913 = !DILocation(line: 38, column: 2, scope: !466, inlinedAt: !909)
!914 = !DILocation(line: 39, column: 16, scope: !466, inlinedAt: !909)
!915 = !DILocation(line: 39, column: 2, scope: !466, inlinedAt: !909)
!916 = !DILocation(line: 66, column: 9, scope: !605, inlinedAt: !883)
!917 = !DILocation(line: 104, column: 5, scope: !862, inlinedAt: !880)
!918 = !DILocation(line: 104, column: 6, scope: !862, inlinedAt: !880)
!919 = !{!603, !408, i64 16}
!920 = !DILocation(line: 105, column: 5, scope: !862, inlinedAt: !880)
!921 = !DILocation(line: 105, column: 10, scope: !862, inlinedAt: !880)
!922 = !{!603, !510, i64 76}
!923 = !DILocation(line: 102, column: 6, scope: !862, inlinedAt: !880)
!924 = !DILocation(line: 106, column: 13, scope: !925, inlinedAt: !880)
!925 = distinct !DILexicalBlock(scope: !926, file: !1, line: 106, column: 2)
!926 = distinct !DILexicalBlock(scope: !862, file: !1, line: 106, column: 2)
!927 = !DILocation(line: 106, column: 2, scope: !926, inlinedAt: !880)
!928 = !DILocation(line: 106, column: 22, scope: !925, inlinedAt: !880)
!929 = !DILocation(line: 106, column: 18, scope: !925, inlinedAt: !880)
!930 = distinct !{!930, !931}
!931 = !{!"llvm.loop.unroll.disable"}
!932 = !DILocation(line: 107, column: 2, scope: !870, inlinedAt: !880)
!933 = distinct !{!933, !934, !935}
!934 = !DILocation(line: 106, column: 2, scope: !926)
!935 = !DILocation(line: 106, column: 22, scope: !926)
!936 = !DILocation(line: 109, column: 17, scope: !868, inlinedAt: !880)
!937 = !DILocation(line: 109, column: 14, scope: !868, inlinedAt: !880)
!938 = !DILocation(line: 109, column: 11, scope: !868, inlinedAt: !880)
!939 = !DILocation(line: 54, column: 32, scope: !685, inlinedAt: !940)
!940 = distinct !DILocation(line: 110, column: 9, scope: !868, inlinedAt: !880)
!941 = !DILocation(line: 56, column: 7, scope: !685, inlinedAt: !940)
!942 = !DILocation(line: 56, column: 2, scope: !685, inlinedAt: !940)
!943 = !DILocation(line: 48, column: 34, scope: !449, inlinedAt: !944)
!944 = distinct !DILocation(line: 57, column: 2, scope: !685, inlinedAt: !940)
!945 = !DILocation(line: 48, column: 43, scope: !449, inlinedAt: !944)
!946 = !DILocation(line: 48, column: 53, scope: !449, inlinedAt: !944)
!947 = !DILocation(line: 50, column: 24, scope: !449, inlinedAt: !944)
!948 = !DILocation(line: 50, column: 11, scope: !449, inlinedAt: !944)
!949 = !DILocation(line: 50, column: 9, scope: !449, inlinedAt: !944)
!950 = !DILocation(line: 51, column: 2, scope: !463, inlinedAt: !944)
!951 = !DILocation(line: 51, column: 2, scope: !449, inlinedAt: !944)
!952 = !DILocation(line: 36, column: 30, scope: !466, inlinedAt: !953)
!953 = distinct !DILocation(line: 51, column: 2, scope: !463, inlinedAt: !944)
!954 = !DILocation(line: 36, column: 45, scope: !466, inlinedAt: !953)
!955 = !DILocation(line: 38, column: 22, scope: !466, inlinedAt: !953)
!956 = !DILocation(line: 38, column: 57, scope: !466, inlinedAt: !953)
!957 = !DILocation(line: 38, column: 2, scope: !466, inlinedAt: !953)
!958 = !DILocation(line: 39, column: 16, scope: !466, inlinedAt: !953)
!959 = !DILocation(line: 39, column: 2, scope: !466, inlinedAt: !953)
!960 = !DILocation(line: 58, column: 9, scope: !685, inlinedAt: !940)
!961 = !DILocation(line: 59, column: 1, scope: !685, inlinedAt: !940)
!962 = !DILocation(line: 110, column: 7, scope: !868, inlinedAt: !880)
!963 = !DILocation(line: 111, column: 3, scope: !868, inlinedAt: !880)
!964 = !DILocation(line: 114, column: 5, scope: !874, inlinedAt: !880)
!965 = !DILocation(line: 115, column: 2, scope: !874, inlinedAt: !880)
!966 = !DILocation(line: 117, column: 5, scope: !873, inlinedAt: !880)
!967 = !DILocation(line: 54, column: 32, scope: !685, inlinedAt: !968)
!968 = distinct !DILocation(line: 117, column: 5, scope: !873, inlinedAt: !880)
!969 = !DILocation(line: 56, column: 7, scope: !685, inlinedAt: !968)
!970 = !DILocation(line: 56, column: 2, scope: !685, inlinedAt: !968)
!971 = !DILocation(line: 48, column: 34, scope: !449, inlinedAt: !972)
!972 = distinct !DILocation(line: 57, column: 2, scope: !685, inlinedAt: !968)
!973 = !DILocation(line: 48, column: 43, scope: !449, inlinedAt: !972)
!974 = !DILocation(line: 48, column: 53, scope: !449, inlinedAt: !972)
!975 = !DILocation(line: 50, column: 24, scope: !449, inlinedAt: !972)
!976 = !DILocation(line: 50, column: 11, scope: !449, inlinedAt: !972)
!977 = !DILocation(line: 50, column: 9, scope: !449, inlinedAt: !972)
!978 = !DILocation(line: 51, column: 2, scope: !463, inlinedAt: !972)
!979 = !DILocation(line: 51, column: 2, scope: !449, inlinedAt: !972)
!980 = !DILocation(line: 36, column: 30, scope: !466, inlinedAt: !981)
!981 = distinct !DILocation(line: 51, column: 2, scope: !463, inlinedAt: !972)
!982 = !DILocation(line: 36, column: 45, scope: !466, inlinedAt: !981)
!983 = !DILocation(line: 38, column: 22, scope: !466, inlinedAt: !981)
!984 = !DILocation(line: 38, column: 57, scope: !466, inlinedAt: !981)
!985 = !DILocation(line: 38, column: 2, scope: !466, inlinedAt: !981)
!986 = !DILocation(line: 39, column: 16, scope: !466, inlinedAt: !981)
!987 = !DILocation(line: 39, column: 2, scope: !466, inlinedAt: !981)
!988 = !DILocation(line: 58, column: 9, scope: !685, inlinedAt: !968)
!989 = !DILocation(line: 59, column: 1, scope: !685, inlinedAt: !968)
!990 = !DILocation(line: 118, column: 2, scope: !874, inlinedAt: !880)
!991 = !DILocation(line: 120, column: 2, scope: !876, inlinedAt: !880)
!992 = !DILocalVariable(name: "S", arg: 1, scope: !993, file: !1, line: 69, type: !382)
!993 = distinct !DISubprogram(name: "LoadNumber", scope: !1, file: !1, line: 69, type: !994, isLocal: true, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !996)
!994 = !DISubroutineType(types: !995)
!995 = !{!6, !382}
!996 = !{!992, !997}
!997 = !DILocalVariable(name: "x", scope: !993, file: !1, line: 71, type: !6)
!998 = !DILocation(line: 69, column: 41, scope: !993, inlinedAt: !999)
!999 = distinct !DILocation(line: 120, column: 2, scope: !876, inlinedAt: !880)
!1000 = !DILocation(line: 71, column: 2, scope: !993, inlinedAt: !999)
!1001 = !DILocation(line: 48, column: 34, scope: !449, inlinedAt: !1002)
!1002 = distinct !DILocation(line: 72, column: 2, scope: !993, inlinedAt: !999)
!1003 = !DILocation(line: 48, column: 43, scope: !449, inlinedAt: !1002)
!1004 = !DILocation(line: 48, column: 53, scope: !449, inlinedAt: !1002)
!1005 = !DILocation(line: 50, column: 24, scope: !449, inlinedAt: !1002)
!1006 = !DILocation(line: 50, column: 11, scope: !449, inlinedAt: !1002)
!1007 = !DILocation(line: 50, column: 9, scope: !449, inlinedAt: !1002)
!1008 = !DILocation(line: 51, column: 2, scope: !463, inlinedAt: !1002)
!1009 = !DILocation(line: 51, column: 2, scope: !449, inlinedAt: !1002)
!1010 = !DILocation(line: 36, column: 30, scope: !466, inlinedAt: !1011)
!1011 = distinct !DILocation(line: 51, column: 2, scope: !463, inlinedAt: !1002)
!1012 = !DILocation(line: 36, column: 45, scope: !466, inlinedAt: !1011)
!1013 = !DILocation(line: 38, column: 22, scope: !466, inlinedAt: !1011)
!1014 = !DILocation(line: 38, column: 57, scope: !466, inlinedAt: !1011)
!1015 = !DILocation(line: 38, column: 2, scope: !466, inlinedAt: !1011)
!1016 = !DILocation(line: 39, column: 16, scope: !466, inlinedAt: !1011)
!1017 = !DILocation(line: 39, column: 2, scope: !466, inlinedAt: !1011)
!1018 = !DILocation(line: 73, column: 9, scope: !993, inlinedAt: !999)
!1019 = !{!1020, !1020, i64 0}
!1020 = !{!"double", !400, i64 0}
!1021 = !DILocation(line: 71, column: 13, scope: !993, inlinedAt: !999)
!1022 = !DILocation(line: 74, column: 1, scope: !993, inlinedAt: !999)
!1023 = !DILocation(line: 121, column: 2, scope: !874, inlinedAt: !880)
!1024 = !DILocation(line: 123, column: 2, scope: !878, inlinedAt: !880)
!1025 = !DILocation(line: 76, column: 39, scope: !536, inlinedAt: !1026)
!1026 = distinct !DILocation(line: 123, column: 2, scope: !878, inlinedAt: !880)
!1027 = !DILocation(line: 78, column: 2, scope: !536, inlinedAt: !1026)
!1028 = !DILocation(line: 48, column: 34, scope: !449, inlinedAt: !1029)
!1029 = distinct !DILocation(line: 79, column: 2, scope: !536, inlinedAt: !1026)
!1030 = !DILocation(line: 48, column: 43, scope: !449, inlinedAt: !1029)
!1031 = !DILocation(line: 48, column: 53, scope: !449, inlinedAt: !1029)
!1032 = !DILocation(line: 50, column: 24, scope: !449, inlinedAt: !1029)
!1033 = !DILocation(line: 50, column: 11, scope: !449, inlinedAt: !1029)
!1034 = !DILocation(line: 50, column: 9, scope: !449, inlinedAt: !1029)
!1035 = !DILocation(line: 51, column: 2, scope: !463, inlinedAt: !1029)
!1036 = !DILocation(line: 51, column: 2, scope: !449, inlinedAt: !1029)
!1037 = !DILocation(line: 36, column: 30, scope: !466, inlinedAt: !1038)
!1038 = distinct !DILocation(line: 51, column: 2, scope: !463, inlinedAt: !1029)
!1039 = !DILocation(line: 36, column: 45, scope: !466, inlinedAt: !1038)
!1040 = !DILocation(line: 38, column: 22, scope: !466, inlinedAt: !1038)
!1041 = !DILocation(line: 38, column: 57, scope: !466, inlinedAt: !1038)
!1042 = !DILocation(line: 38, column: 2, scope: !466, inlinedAt: !1038)
!1043 = !DILocation(line: 39, column: 16, scope: !466, inlinedAt: !1038)
!1044 = !DILocation(line: 39, column: 2, scope: !466, inlinedAt: !1038)
!1045 = !DILocation(line: 80, column: 6, scope: !543, inlinedAt: !1026)
!1046 = !DILocation(line: 78, column: 9, scope: !536, inlinedAt: !1026)
!1047 = !DILocation(line: 80, column: 10, scope: !543, inlinedAt: !1026)
!1048 = !DILocation(line: 80, column: 6, scope: !536, inlinedAt: !1026)
!1049 = !DILocation(line: 84, column: 29, scope: !542, inlinedAt: !1026)
!1050 = !DILocation(line: 84, column: 34, scope: !542, inlinedAt: !1026)
!1051 = !DILocation(line: 84, column: 11, scope: !542, inlinedAt: !1026)
!1052 = !DILocation(line: 84, column: 9, scope: !542, inlinedAt: !1026)
!1053 = !DILocation(line: 85, column: 17, scope: !542, inlinedAt: !1026)
!1054 = !DILocation(line: 48, column: 34, scope: !449, inlinedAt: !1055)
!1055 = distinct !DILocation(line: 85, column: 3, scope: !542, inlinedAt: !1026)
!1056 = !DILocation(line: 48, column: 43, scope: !449, inlinedAt: !1055)
!1057 = !DILocation(line: 48, column: 53, scope: !449, inlinedAt: !1055)
!1058 = !DILocation(line: 50, column: 24, scope: !449, inlinedAt: !1055)
!1059 = !DILocation(line: 50, column: 11, scope: !449, inlinedAt: !1055)
!1060 = !DILocation(line: 50, column: 9, scope: !449, inlinedAt: !1055)
!1061 = !DILocation(line: 51, column: 2, scope: !463, inlinedAt: !1055)
!1062 = !DILocation(line: 51, column: 2, scope: !449, inlinedAt: !1055)
!1063 = !DILocation(line: 36, column: 30, scope: !466, inlinedAt: !1064)
!1064 = distinct !DILocation(line: 51, column: 2, scope: !463, inlinedAt: !1055)
!1065 = !DILocation(line: 36, column: 45, scope: !466, inlinedAt: !1064)
!1066 = !DILocation(line: 38, column: 22, scope: !466, inlinedAt: !1064)
!1067 = !DILocation(line: 38, column: 57, scope: !466, inlinedAt: !1064)
!1068 = !DILocation(line: 38, column: 2, scope: !466, inlinedAt: !1064)
!1069 = !DILocation(line: 39, column: 16, scope: !466, inlinedAt: !1064)
!1070 = !DILocation(line: 39, column: 2, scope: !466, inlinedAt: !1064)
!1071 = !DILocation(line: 86, column: 26, scope: !542, inlinedAt: !1026)
!1072 = !DILocation(line: 86, column: 30, scope: !542, inlinedAt: !1026)
!1073 = !DILocation(line: 86, column: 34, scope: !542, inlinedAt: !1026)
!1074 = !DILocation(line: 86, column: 10, scope: !542, inlinedAt: !1026)
!1075 = !DILocation(line: 0, scope: !542, inlinedAt: !1026)
!1076 = !DILocation(line: 88, column: 1, scope: !536, inlinedAt: !1026)
!1077 = !DILocation(line: 124, column: 2, scope: !874, inlinedAt: !880)
!1078 = !DILocation(line: 36, column: 30, scope: !466, inlinedAt: !1079)
!1079 = distinct !DILocation(line: 126, column: 2, scope: !874, inlinedAt: !880)
!1080 = !DILocation(line: 36, column: 45, scope: !466, inlinedAt: !1079)
!1081 = !DILocation(line: 38, column: 22, scope: !466, inlinedAt: !1079)
!1082 = !DILocation(line: 38, column: 57, scope: !466, inlinedAt: !1079)
!1083 = !DILocation(line: 38, column: 2, scope: !466, inlinedAt: !1079)
!1084 = !DILocation(line: 39, column: 16, scope: !466, inlinedAt: !1079)
!1085 = !DILocation(line: 39, column: 2, scope: !466, inlinedAt: !1079)
!1086 = !DILocation(line: 127, column: 2, scope: !874, inlinedAt: !880)
!1087 = !DILocation(line: 107, column: 18, scope: !869, inlinedAt: !880)
!1088 = !DILocation(line: 107, column: 13, scope: !869, inlinedAt: !880)
!1089 = distinct !{!1089, !1090, !1091}
!1090 = !DILocation(line: 107, column: 2, scope: !870)
!1091 = !DILocation(line: 129, column: 2, scope: !870)
!1092 = !DILocation(line: 61, column: 31, scope: !605, inlinedAt: !1093)
!1093 = distinct !DILocation(line: 130, column: 4, scope: !862, inlinedAt: !880)
!1094 = !DILocation(line: 63, column: 2, scope: !605, inlinedAt: !1093)
!1095 = !DILocation(line: 48, column: 34, scope: !449, inlinedAt: !1096)
!1096 = distinct !DILocation(line: 64, column: 2, scope: !605, inlinedAt: !1093)
!1097 = !DILocation(line: 48, column: 43, scope: !449, inlinedAt: !1096)
!1098 = !DILocation(line: 48, column: 53, scope: !449, inlinedAt: !1096)
!1099 = !DILocation(line: 50, column: 24, scope: !449, inlinedAt: !1096)
!1100 = !DILocation(line: 50, column: 11, scope: !449, inlinedAt: !1096)
!1101 = !DILocation(line: 50, column: 9, scope: !449, inlinedAt: !1096)
!1102 = !DILocation(line: 51, column: 2, scope: !463, inlinedAt: !1096)
!1103 = !DILocation(line: 51, column: 2, scope: !449, inlinedAt: !1096)
!1104 = !DILocation(line: 36, column: 30, scope: !466, inlinedAt: !1105)
!1105 = distinct !DILocation(line: 51, column: 2, scope: !463, inlinedAt: !1096)
!1106 = !DILocation(line: 36, column: 45, scope: !466, inlinedAt: !1105)
!1107 = !DILocation(line: 38, column: 22, scope: !466, inlinedAt: !1105)
!1108 = !DILocation(line: 38, column: 57, scope: !466, inlinedAt: !1105)
!1109 = !DILocation(line: 38, column: 2, scope: !466, inlinedAt: !1105)
!1110 = !DILocation(line: 39, column: 16, scope: !466, inlinedAt: !1105)
!1111 = !DILocation(line: 39, column: 2, scope: !466, inlinedAt: !1105)
!1112 = !DILocation(line: 65, column: 2, scope: !631, inlinedAt: !1093)
!1113 = !DILocation(line: 63, column: 6, scope: !605, inlinedAt: !1093)
!1114 = !DILocation(line: 65, column: 2, scope: !605, inlinedAt: !1093)
!1115 = !DILocation(line: 67, column: 1, scope: !605, inlinedAt: !1093)
!1116 = !DILocation(line: 131, column: 7, scope: !862, inlinedAt: !880)
!1117 = !DILocation(line: 36, column: 30, scope: !466, inlinedAt: !1118)
!1118 = distinct !DILocation(line: 65, column: 2, scope: !631, inlinedAt: !1093)
!1119 = !DILocation(line: 36, column: 45, scope: !466, inlinedAt: !1118)
!1120 = !DILocation(line: 38, column: 22, scope: !466, inlinedAt: !1118)
!1121 = !DILocation(line: 38, column: 57, scope: !466, inlinedAt: !1118)
!1122 = !DILocation(line: 38, column: 2, scope: !466, inlinedAt: !1118)
!1123 = !DILocation(line: 39, column: 16, scope: !466, inlinedAt: !1118)
!1124 = !DILocation(line: 39, column: 2, scope: !466, inlinedAt: !1118)
!1125 = !DILocation(line: 66, column: 9, scope: !605, inlinedAt: !1093)
!1126 = !DILocation(line: 131, column: 5, scope: !862, inlinedAt: !880)
!1127 = !DILocation(line: 131, column: 6, scope: !862, inlinedAt: !880)
!1128 = !{!603, !408, i64 32}
!1129 = !DILocation(line: 132, column: 5, scope: !862, inlinedAt: !880)
!1130 = !DILocation(line: 132, column: 10, scope: !862, inlinedAt: !880)
!1131 = !{!603, !510, i64 88}
!1132 = !DILocation(line: 133, column: 13, scope: !1133, inlinedAt: !880)
!1133 = distinct !DILexicalBlock(scope: !1134, file: !1, line: 133, column: 2)
!1134 = distinct !DILexicalBlock(scope: !862, file: !1, line: 133, column: 2)
!1135 = !DILocation(line: 133, column: 2, scope: !1134, inlinedAt: !880)
!1136 = !DILocation(line: 133, column: 29, scope: !1133, inlinedAt: !880)
!1137 = !{!408, !408, i64 0}
!1138 = distinct !{!1138, !1139, !1140}
!1139 = !DILocation(line: 133, column: 2, scope: !1134)
!1140 = !DILocation(line: 133, column: 30, scope: !1134)
!1141 = !DILocation(line: 133, column: 25, scope: !1133, inlinedAt: !880)
!1142 = !DILocation(line: 133, column: 22, scope: !1133, inlinedAt: !880)
!1143 = !DILocation(line: 133, column: 18, scope: !1133, inlinedAt: !880)
!1144 = distinct !{!1144, !931}
!1145 = !DILocation(line: 134, column: 2, scope: !1146, inlinedAt: !880)
!1146 = distinct !DILexicalBlock(scope: !862, file: !1, line: 134, column: 2)
!1147 = !DILocation(line: 134, column: 48, scope: !1148, inlinedAt: !880)
!1148 = distinct !DILexicalBlock(scope: !1146, file: !1, line: 134, column: 2)
!1149 = !DILocation(line: 134, column: 30, scope: !1148, inlinedAt: !880)
!1150 = !DILocation(line: 134, column: 25, scope: !1148, inlinedAt: !880)
!1151 = !DILocation(line: 134, column: 22, scope: !1148, inlinedAt: !880)
!1152 = !DILocation(line: 134, column: 29, scope: !1148, inlinedAt: !880)
!1153 = !DILocation(line: 134, column: 18, scope: !1148, inlinedAt: !880)
!1154 = !DILocation(line: 134, column: 13, scope: !1148, inlinedAt: !880)
!1155 = distinct !{!1155, !1156, !1157}
!1156 = !DILocation(line: 134, column: 2, scope: !1146)
!1157 = !DILocation(line: 134, column: 54, scope: !1146)
!1158 = !DILocalVariable(name: "S", arg: 1, scope: !1159, file: !1, line: 137, type: !382)
!1159 = distinct !DISubprogram(name: "LoadDebug", scope: !1, file: !1, line: 137, type: !794, isLocal: true, isDefinition: true, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1160)
!1160 = !{!1158, !1161, !1162, !1163}
!1161 = !DILocalVariable(name: "f", arg: 2, scope: !1159, file: !1, line: 137, type: !339)
!1162 = !DILocalVariable(name: "i", scope: !1159, file: !1, line: 139, type: !85)
!1163 = !DILocalVariable(name: "n", scope: !1159, file: !1, line: 139, type: !85)
!1164 = !DILocation(line: 137, column: 34, scope: !1159, inlinedAt: !1165)
!1165 = distinct !DILocation(line: 176, column: 2, scope: !493)
!1166 = !DILocation(line: 137, column: 44, scope: !1159, inlinedAt: !1165)
!1167 = !DILocation(line: 61, column: 31, scope: !605, inlinedAt: !1168)
!1168 = distinct !DILocation(line: 140, column: 4, scope: !1159, inlinedAt: !1165)
!1169 = !DILocation(line: 63, column: 2, scope: !605, inlinedAt: !1168)
!1170 = !DILocation(line: 48, column: 34, scope: !449, inlinedAt: !1171)
!1171 = distinct !DILocation(line: 64, column: 2, scope: !605, inlinedAt: !1168)
!1172 = !DILocation(line: 48, column: 43, scope: !449, inlinedAt: !1171)
!1173 = !DILocation(line: 48, column: 53, scope: !449, inlinedAt: !1171)
!1174 = !DILocation(line: 50, column: 24, scope: !449, inlinedAt: !1171)
!1175 = !DILocation(line: 50, column: 11, scope: !449, inlinedAt: !1171)
!1176 = !DILocation(line: 50, column: 9, scope: !449, inlinedAt: !1171)
!1177 = !DILocation(line: 51, column: 2, scope: !463, inlinedAt: !1171)
!1178 = !DILocation(line: 51, column: 2, scope: !449, inlinedAt: !1171)
!1179 = !DILocation(line: 36, column: 30, scope: !466, inlinedAt: !1180)
!1180 = distinct !DILocation(line: 51, column: 2, scope: !463, inlinedAt: !1171)
!1181 = !DILocation(line: 36, column: 45, scope: !466, inlinedAt: !1180)
!1182 = !DILocation(line: 38, column: 22, scope: !466, inlinedAt: !1180)
!1183 = !DILocation(line: 38, column: 57, scope: !466, inlinedAt: !1180)
!1184 = !DILocation(line: 38, column: 2, scope: !466, inlinedAt: !1180)
!1185 = !DILocation(line: 39, column: 16, scope: !466, inlinedAt: !1180)
!1186 = !DILocation(line: 39, column: 2, scope: !466, inlinedAt: !1180)
!1187 = !DILocation(line: 65, column: 2, scope: !631, inlinedAt: !1168)
!1188 = !DILocation(line: 63, column: 6, scope: !605, inlinedAt: !1168)
!1189 = !DILocation(line: 65, column: 2, scope: !605, inlinedAt: !1168)
!1190 = !DILocation(line: 67, column: 1, scope: !605, inlinedAt: !1168)
!1191 = !DILocation(line: 141, column: 14, scope: !1159, inlinedAt: !1165)
!1192 = !DILocation(line: 36, column: 30, scope: !466, inlinedAt: !1193)
!1193 = distinct !DILocation(line: 65, column: 2, scope: !631, inlinedAt: !1168)
!1194 = !DILocation(line: 36, column: 45, scope: !466, inlinedAt: !1193)
!1195 = !DILocation(line: 38, column: 22, scope: !466, inlinedAt: !1193)
!1196 = !DILocation(line: 38, column: 57, scope: !466, inlinedAt: !1193)
!1197 = !DILocation(line: 38, column: 2, scope: !466, inlinedAt: !1193)
!1198 = !DILocation(line: 39, column: 16, scope: !466, inlinedAt: !1193)
!1199 = !DILocation(line: 39, column: 2, scope: !466, inlinedAt: !1193)
!1200 = !DILocation(line: 66, column: 9, scope: !605, inlinedAt: !1168)
!1201 = !DILocation(line: 139, column: 8, scope: !1159, inlinedAt: !1165)
!1202 = !DILocation(line: 143, column: 2, scope: !1159, inlinedAt: !1165)
!1203 = !DILocation(line: 141, column: 5, scope: !1159, inlinedAt: !1165)
!1204 = !DILocation(line: 141, column: 13, scope: !1159, inlinedAt: !1165)
!1205 = !{!603, !408, i64 40}
!1206 = !DILocation(line: 142, column: 5, scope: !1159, inlinedAt: !1165)
!1207 = !DILocation(line: 142, column: 17, scope: !1159, inlinedAt: !1165)
!1208 = !{!603, !510, i64 84}
!1209 = !DILocation(line: 48, column: 34, scope: !449, inlinedAt: !1210)
!1210 = distinct !DILocation(line: 143, column: 2, scope: !1159, inlinedAt: !1165)
!1211 = !DILocation(line: 48, column: 43, scope: !449, inlinedAt: !1210)
!1212 = !DILocation(line: 48, column: 53, scope: !449, inlinedAt: !1210)
!1213 = !DILocation(line: 50, column: 24, scope: !449, inlinedAt: !1210)
!1214 = !DILocation(line: 50, column: 11, scope: !449, inlinedAt: !1210)
!1215 = !DILocation(line: 50, column: 9, scope: !449, inlinedAt: !1210)
!1216 = !DILocation(line: 51, column: 2, scope: !463, inlinedAt: !1210)
!1217 = !DILocation(line: 51, column: 2, scope: !449, inlinedAt: !1210)
!1218 = !DILocation(line: 36, column: 30, scope: !466, inlinedAt: !1219)
!1219 = distinct !DILocation(line: 51, column: 2, scope: !463, inlinedAt: !1210)
!1220 = !DILocation(line: 36, column: 45, scope: !466, inlinedAt: !1219)
!1221 = !DILocation(line: 38, column: 22, scope: !466, inlinedAt: !1219)
!1222 = !DILocation(line: 38, column: 57, scope: !466, inlinedAt: !1219)
!1223 = !DILocation(line: 38, column: 2, scope: !466, inlinedAt: !1219)
!1224 = !DILocation(line: 39, column: 16, scope: !466, inlinedAt: !1219)
!1225 = !DILocation(line: 39, column: 2, scope: !466, inlinedAt: !1219)
!1226 = !DILocation(line: 61, column: 31, scope: !605, inlinedAt: !1227)
!1227 = distinct !DILocation(line: 144, column: 4, scope: !1159, inlinedAt: !1165)
!1228 = !DILocation(line: 63, column: 2, scope: !605, inlinedAt: !1227)
!1229 = !DILocation(line: 48, column: 34, scope: !449, inlinedAt: !1230)
!1230 = distinct !DILocation(line: 64, column: 2, scope: !605, inlinedAt: !1227)
!1231 = !DILocation(line: 48, column: 43, scope: !449, inlinedAt: !1230)
!1232 = !DILocation(line: 48, column: 53, scope: !449, inlinedAt: !1230)
!1233 = !DILocation(line: 50, column: 24, scope: !449, inlinedAt: !1230)
!1234 = !DILocation(line: 50, column: 11, scope: !449, inlinedAt: !1230)
!1235 = !DILocation(line: 50, column: 9, scope: !449, inlinedAt: !1230)
!1236 = !DILocation(line: 51, column: 2, scope: !463, inlinedAt: !1230)
!1237 = !DILocation(line: 51, column: 2, scope: !449, inlinedAt: !1230)
!1238 = !DILocation(line: 36, column: 30, scope: !466, inlinedAt: !1239)
!1239 = distinct !DILocation(line: 51, column: 2, scope: !463, inlinedAt: !1230)
!1240 = !DILocation(line: 36, column: 45, scope: !466, inlinedAt: !1239)
!1241 = !DILocation(line: 38, column: 22, scope: !466, inlinedAt: !1239)
!1242 = !DILocation(line: 38, column: 57, scope: !466, inlinedAt: !1239)
!1243 = !DILocation(line: 38, column: 2, scope: !466, inlinedAt: !1239)
!1244 = !DILocation(line: 39, column: 16, scope: !466, inlinedAt: !1239)
!1245 = !DILocation(line: 39, column: 2, scope: !466, inlinedAt: !1239)
!1246 = !DILocation(line: 65, column: 2, scope: !631, inlinedAt: !1227)
!1247 = !DILocation(line: 63, column: 6, scope: !605, inlinedAt: !1227)
!1248 = !DILocation(line: 65, column: 2, scope: !605, inlinedAt: !1227)
!1249 = !DILocation(line: 67, column: 1, scope: !605, inlinedAt: !1227)
!1250 = !DILocation(line: 145, column: 13, scope: !1159, inlinedAt: !1165)
!1251 = !DILocation(line: 36, column: 30, scope: !466, inlinedAt: !1252)
!1252 = distinct !DILocation(line: 65, column: 2, scope: !631, inlinedAt: !1227)
!1253 = !DILocation(line: 36, column: 45, scope: !466, inlinedAt: !1252)
!1254 = !DILocation(line: 38, column: 22, scope: !466, inlinedAt: !1252)
!1255 = !DILocation(line: 38, column: 57, scope: !466, inlinedAt: !1252)
!1256 = !DILocation(line: 38, column: 2, scope: !466, inlinedAt: !1252)
!1257 = !DILocation(line: 39, column: 16, scope: !466, inlinedAt: !1252)
!1258 = !DILocation(line: 39, column: 2, scope: !466, inlinedAt: !1252)
!1259 = !DILocation(line: 66, column: 9, scope: !605, inlinedAt: !1227)
!1260 = !DILocation(line: 145, column: 5, scope: !1159, inlinedAt: !1165)
!1261 = !DILocation(line: 145, column: 12, scope: !1159, inlinedAt: !1165)
!1262 = !{!603, !408, i64 48}
!1263 = !DILocation(line: 146, column: 5, scope: !1159, inlinedAt: !1165)
!1264 = !DILocation(line: 146, column: 16, scope: !1159, inlinedAt: !1165)
!1265 = !{!603, !510, i64 92}
!1266 = !DILocation(line: 139, column: 6, scope: !1159, inlinedAt: !1165)
!1267 = !DILocation(line: 147, column: 13, scope: !1268, inlinedAt: !1165)
!1268 = distinct !DILexicalBlock(scope: !1269, file: !1, line: 147, column: 2)
!1269 = distinct !DILexicalBlock(scope: !1159, file: !1, line: 147, column: 2)
!1270 = !DILocation(line: 147, column: 2, scope: !1269, inlinedAt: !1165)
!1271 = !DILocation(line: 147, column: 36, scope: !1268, inlinedAt: !1165)
!1272 = !DILocation(line: 147, column: 43, scope: !1268, inlinedAt: !1165)
!1273 = !{!1274, !408, i64 0}
!1274 = !{!"LocVar", !408, i64 0, !510, i64 8, !510, i64 12}
!1275 = !DILocation(line: 147, column: 18, scope: !1268, inlinedAt: !1165)
!1276 = distinct !{!1276, !931}
!1277 = !DILocation(line: 148, column: 2, scope: !1278, inlinedAt: !1165)
!1278 = distinct !DILexicalBlock(scope: !1159, file: !1, line: 148, column: 2)
!1279 = distinct !{!1279, !1280, !1281}
!1280 = !DILocation(line: 147, column: 2, scope: !1269)
!1281 = !DILocation(line: 147, column: 44, scope: !1269)
!1282 = !DILocation(line: 76, column: 39, scope: !536, inlinedAt: !1283)
!1283 = distinct !DILocation(line: 150, column: 25, scope: !1284, inlinedAt: !1165)
!1284 = distinct !DILexicalBlock(scope: !1285, file: !1, line: 149, column: 2)
!1285 = distinct !DILexicalBlock(scope: !1278, file: !1, line: 148, column: 2)
!1286 = !DILocation(line: 78, column: 2, scope: !536, inlinedAt: !1283)
!1287 = !DILocation(line: 48, column: 34, scope: !449, inlinedAt: !1288)
!1288 = distinct !DILocation(line: 79, column: 2, scope: !536, inlinedAt: !1283)
!1289 = !DILocation(line: 48, column: 43, scope: !449, inlinedAt: !1288)
!1290 = !DILocation(line: 48, column: 53, scope: !449, inlinedAt: !1288)
!1291 = !DILocation(line: 50, column: 24, scope: !449, inlinedAt: !1288)
!1292 = !DILocation(line: 50, column: 11, scope: !449, inlinedAt: !1288)
!1293 = !DILocation(line: 50, column: 9, scope: !449, inlinedAt: !1288)
!1294 = !DILocation(line: 51, column: 2, scope: !463, inlinedAt: !1288)
!1295 = !DILocation(line: 51, column: 2, scope: !449, inlinedAt: !1288)
!1296 = !DILocation(line: 36, column: 30, scope: !466, inlinedAt: !1297)
!1297 = distinct !DILocation(line: 51, column: 2, scope: !463, inlinedAt: !1288)
!1298 = !DILocation(line: 36, column: 45, scope: !466, inlinedAt: !1297)
!1299 = !DILocation(line: 38, column: 22, scope: !466, inlinedAt: !1297)
!1300 = !DILocation(line: 38, column: 57, scope: !466, inlinedAt: !1297)
!1301 = !DILocation(line: 38, column: 2, scope: !466, inlinedAt: !1297)
!1302 = !DILocation(line: 39, column: 16, scope: !466, inlinedAt: !1297)
!1303 = !DILocation(line: 39, column: 2, scope: !466, inlinedAt: !1297)
!1304 = !DILocation(line: 80, column: 6, scope: !543, inlinedAt: !1283)
!1305 = !DILocation(line: 78, column: 9, scope: !536, inlinedAt: !1283)
!1306 = !DILocation(line: 80, column: 10, scope: !543, inlinedAt: !1283)
!1307 = !DILocation(line: 80, column: 6, scope: !536, inlinedAt: !1283)
!1308 = !DILocation(line: 84, column: 29, scope: !542, inlinedAt: !1283)
!1309 = !DILocation(line: 84, column: 34, scope: !542, inlinedAt: !1283)
!1310 = !DILocation(line: 84, column: 11, scope: !542, inlinedAt: !1283)
!1311 = !DILocation(line: 84, column: 9, scope: !542, inlinedAt: !1283)
!1312 = !DILocation(line: 85, column: 17, scope: !542, inlinedAt: !1283)
!1313 = !DILocation(line: 48, column: 34, scope: !449, inlinedAt: !1314)
!1314 = distinct !DILocation(line: 85, column: 3, scope: !542, inlinedAt: !1283)
!1315 = !DILocation(line: 48, column: 43, scope: !449, inlinedAt: !1314)
!1316 = !DILocation(line: 48, column: 53, scope: !449, inlinedAt: !1314)
!1317 = !DILocation(line: 50, column: 24, scope: !449, inlinedAt: !1314)
!1318 = !DILocation(line: 50, column: 11, scope: !449, inlinedAt: !1314)
!1319 = !DILocation(line: 50, column: 9, scope: !449, inlinedAt: !1314)
!1320 = !DILocation(line: 51, column: 2, scope: !463, inlinedAt: !1314)
!1321 = !DILocation(line: 51, column: 2, scope: !449, inlinedAt: !1314)
!1322 = !DILocation(line: 36, column: 30, scope: !466, inlinedAt: !1323)
!1323 = distinct !DILocation(line: 51, column: 2, scope: !463, inlinedAt: !1314)
!1324 = !DILocation(line: 36, column: 45, scope: !466, inlinedAt: !1323)
!1325 = !DILocation(line: 38, column: 22, scope: !466, inlinedAt: !1323)
!1326 = !DILocation(line: 38, column: 57, scope: !466, inlinedAt: !1323)
!1327 = !DILocation(line: 38, column: 2, scope: !466, inlinedAt: !1323)
!1328 = !DILocation(line: 39, column: 16, scope: !466, inlinedAt: !1323)
!1329 = !DILocation(line: 39, column: 2, scope: !466, inlinedAt: !1323)
!1330 = !DILocation(line: 86, column: 26, scope: !542, inlinedAt: !1283)
!1331 = !DILocation(line: 86, column: 30, scope: !542, inlinedAt: !1283)
!1332 = !DILocation(line: 86, column: 34, scope: !542, inlinedAt: !1283)
!1333 = !DILocation(line: 86, column: 10, scope: !542, inlinedAt: !1283)
!1334 = !DILocation(line: 0, scope: !542, inlinedAt: !1283)
!1335 = !DILocation(line: 88, column: 1, scope: !536, inlinedAt: !1283)
!1336 = !DILocation(line: 150, column: 6, scope: !1284, inlinedAt: !1165)
!1337 = !DILocation(line: 150, column: 17, scope: !1284, inlinedAt: !1165)
!1338 = !DILocation(line: 150, column: 24, scope: !1284, inlinedAt: !1165)
!1339 = !DILocation(line: 61, column: 31, scope: !605, inlinedAt: !1340)
!1340 = distinct !DILocation(line: 151, column: 25, scope: !1284, inlinedAt: !1165)
!1341 = !DILocation(line: 63, column: 2, scope: !605, inlinedAt: !1340)
!1342 = !DILocation(line: 48, column: 34, scope: !449, inlinedAt: !1343)
!1343 = distinct !DILocation(line: 64, column: 2, scope: !605, inlinedAt: !1340)
!1344 = !DILocation(line: 48, column: 43, scope: !449, inlinedAt: !1343)
!1345 = !DILocation(line: 48, column: 53, scope: !449, inlinedAt: !1343)
!1346 = !DILocation(line: 50, column: 24, scope: !449, inlinedAt: !1343)
!1347 = !DILocation(line: 50, column: 11, scope: !449, inlinedAt: !1343)
!1348 = !DILocation(line: 50, column: 9, scope: !449, inlinedAt: !1343)
!1349 = !DILocation(line: 51, column: 2, scope: !463, inlinedAt: !1343)
!1350 = !DILocation(line: 51, column: 2, scope: !449, inlinedAt: !1343)
!1351 = !DILocation(line: 36, column: 30, scope: !466, inlinedAt: !1352)
!1352 = distinct !DILocation(line: 51, column: 2, scope: !463, inlinedAt: !1343)
!1353 = !DILocation(line: 36, column: 45, scope: !466, inlinedAt: !1352)
!1354 = !DILocation(line: 38, column: 22, scope: !466, inlinedAt: !1352)
!1355 = !DILocation(line: 38, column: 57, scope: !466, inlinedAt: !1352)
!1356 = !DILocation(line: 38, column: 2, scope: !466, inlinedAt: !1352)
!1357 = !DILocation(line: 39, column: 16, scope: !466, inlinedAt: !1352)
!1358 = !DILocation(line: 39, column: 2, scope: !466, inlinedAt: !1352)
!1359 = !DILocation(line: 65, column: 2, scope: !631, inlinedAt: !1340)
!1360 = !DILocation(line: 63, column: 6, scope: !605, inlinedAt: !1340)
!1361 = !DILocation(line: 65, column: 2, scope: !605, inlinedAt: !1340)
!1362 = !DILocation(line: 36, column: 30, scope: !466, inlinedAt: !1363)
!1363 = distinct !DILocation(line: 65, column: 2, scope: !631, inlinedAt: !1340)
!1364 = !DILocation(line: 36, column: 45, scope: !466, inlinedAt: !1363)
!1365 = !DILocation(line: 38, column: 22, scope: !466, inlinedAt: !1363)
!1366 = !DILocation(line: 38, column: 57, scope: !466, inlinedAt: !1363)
!1367 = !DILocation(line: 38, column: 2, scope: !466, inlinedAt: !1363)
!1368 = !DILocation(line: 39, column: 16, scope: !466, inlinedAt: !1363)
!1369 = !DILocation(line: 39, column: 2, scope: !466, inlinedAt: !1363)
!1370 = !DILocation(line: 66, column: 9, scope: !605, inlinedAt: !1340)
!1371 = !DILocation(line: 67, column: 1, scope: !605, inlinedAt: !1340)
!1372 = !DILocation(line: 151, column: 6, scope: !1284, inlinedAt: !1165)
!1373 = !DILocation(line: 151, column: 17, scope: !1284, inlinedAt: !1165)
!1374 = !DILocation(line: 151, column: 24, scope: !1284, inlinedAt: !1165)
!1375 = !{!1274, !510, i64 8}
!1376 = !DILocation(line: 61, column: 31, scope: !605, inlinedAt: !1377)
!1377 = distinct !DILocation(line: 152, column: 23, scope: !1284, inlinedAt: !1165)
!1378 = !DILocation(line: 63, column: 2, scope: !605, inlinedAt: !1377)
!1379 = !DILocation(line: 48, column: 34, scope: !449, inlinedAt: !1380)
!1380 = distinct !DILocation(line: 64, column: 2, scope: !605, inlinedAt: !1377)
!1381 = !DILocation(line: 48, column: 43, scope: !449, inlinedAt: !1380)
!1382 = !DILocation(line: 48, column: 53, scope: !449, inlinedAt: !1380)
!1383 = !DILocation(line: 50, column: 24, scope: !449, inlinedAt: !1380)
!1384 = !DILocation(line: 50, column: 11, scope: !449, inlinedAt: !1380)
!1385 = !DILocation(line: 50, column: 9, scope: !449, inlinedAt: !1380)
!1386 = !DILocation(line: 51, column: 2, scope: !463, inlinedAt: !1380)
!1387 = !DILocation(line: 51, column: 2, scope: !449, inlinedAt: !1380)
!1388 = !DILocation(line: 36, column: 30, scope: !466, inlinedAt: !1389)
!1389 = distinct !DILocation(line: 51, column: 2, scope: !463, inlinedAt: !1380)
!1390 = !DILocation(line: 36, column: 45, scope: !466, inlinedAt: !1389)
!1391 = !DILocation(line: 38, column: 22, scope: !466, inlinedAt: !1389)
!1392 = !DILocation(line: 38, column: 57, scope: !466, inlinedAt: !1389)
!1393 = !DILocation(line: 38, column: 2, scope: !466, inlinedAt: !1389)
!1394 = !DILocation(line: 39, column: 16, scope: !466, inlinedAt: !1389)
!1395 = !DILocation(line: 39, column: 2, scope: !466, inlinedAt: !1389)
!1396 = !DILocation(line: 65, column: 2, scope: !631, inlinedAt: !1377)
!1397 = !DILocation(line: 63, column: 6, scope: !605, inlinedAt: !1377)
!1398 = !DILocation(line: 65, column: 2, scope: !605, inlinedAt: !1377)
!1399 = !DILocation(line: 36, column: 30, scope: !466, inlinedAt: !1400)
!1400 = distinct !DILocation(line: 65, column: 2, scope: !631, inlinedAt: !1377)
!1401 = !DILocation(line: 36, column: 45, scope: !466, inlinedAt: !1400)
!1402 = !DILocation(line: 38, column: 22, scope: !466, inlinedAt: !1400)
!1403 = !DILocation(line: 38, column: 57, scope: !466, inlinedAt: !1400)
!1404 = !DILocation(line: 38, column: 2, scope: !466, inlinedAt: !1400)
!1405 = !DILocation(line: 39, column: 16, scope: !466, inlinedAt: !1400)
!1406 = !DILocation(line: 39, column: 2, scope: !466, inlinedAt: !1400)
!1407 = !DILocation(line: 66, column: 9, scope: !605, inlinedAt: !1377)
!1408 = !DILocation(line: 67, column: 1, scope: !605, inlinedAt: !1377)
!1409 = !DILocation(line: 152, column: 6, scope: !1284, inlinedAt: !1165)
!1410 = !DILocation(line: 152, column: 17, scope: !1284, inlinedAt: !1165)
!1411 = !DILocation(line: 152, column: 22, scope: !1284, inlinedAt: !1165)
!1412 = !{!1274, !510, i64 12}
!1413 = !DILocation(line: 148, column: 18, scope: !1285, inlinedAt: !1165)
!1414 = !DILocation(line: 148, column: 13, scope: !1285, inlinedAt: !1165)
!1415 = distinct !{!1415, !1416, !1417}
!1416 = !DILocation(line: 148, column: 2, scope: !1278)
!1417 = !DILocation(line: 153, column: 2, scope: !1278)
!1418 = !DILocation(line: 61, column: 31, scope: !605, inlinedAt: !1419)
!1419 = distinct !DILocation(line: 154, column: 4, scope: !1159, inlinedAt: !1165)
!1420 = !DILocation(line: 63, column: 2, scope: !605, inlinedAt: !1419)
!1421 = !DILocation(line: 48, column: 34, scope: !449, inlinedAt: !1422)
!1422 = distinct !DILocation(line: 64, column: 2, scope: !605, inlinedAt: !1419)
!1423 = !DILocation(line: 48, column: 43, scope: !449, inlinedAt: !1422)
!1424 = !DILocation(line: 48, column: 53, scope: !449, inlinedAt: !1422)
!1425 = !DILocation(line: 50, column: 24, scope: !449, inlinedAt: !1422)
!1426 = !DILocation(line: 50, column: 11, scope: !449, inlinedAt: !1422)
!1427 = !DILocation(line: 50, column: 9, scope: !449, inlinedAt: !1422)
!1428 = !DILocation(line: 51, column: 2, scope: !463, inlinedAt: !1422)
!1429 = !DILocation(line: 51, column: 2, scope: !449, inlinedAt: !1422)
!1430 = !DILocation(line: 36, column: 30, scope: !466, inlinedAt: !1431)
!1431 = distinct !DILocation(line: 51, column: 2, scope: !463, inlinedAt: !1422)
!1432 = !DILocation(line: 36, column: 45, scope: !466, inlinedAt: !1431)
!1433 = !DILocation(line: 38, column: 22, scope: !466, inlinedAt: !1431)
!1434 = !DILocation(line: 38, column: 57, scope: !466, inlinedAt: !1431)
!1435 = !DILocation(line: 38, column: 2, scope: !466, inlinedAt: !1431)
!1436 = !DILocation(line: 39, column: 16, scope: !466, inlinedAt: !1431)
!1437 = !DILocation(line: 39, column: 2, scope: !466, inlinedAt: !1431)
!1438 = !DILocation(line: 65, column: 2, scope: !631, inlinedAt: !1419)
!1439 = !DILocation(line: 63, column: 6, scope: !605, inlinedAt: !1419)
!1440 = !DILocation(line: 65, column: 2, scope: !605, inlinedAt: !1419)
!1441 = !DILocation(line: 67, column: 1, scope: !605, inlinedAt: !1419)
!1442 = !DILocation(line: 155, column: 14, scope: !1159, inlinedAt: !1165)
!1443 = !DILocation(line: 36, column: 30, scope: !466, inlinedAt: !1444)
!1444 = distinct !DILocation(line: 65, column: 2, scope: !631, inlinedAt: !1419)
!1445 = !DILocation(line: 36, column: 45, scope: !466, inlinedAt: !1444)
!1446 = !DILocation(line: 38, column: 22, scope: !466, inlinedAt: !1444)
!1447 = !DILocation(line: 38, column: 57, scope: !466, inlinedAt: !1444)
!1448 = !DILocation(line: 38, column: 2, scope: !466, inlinedAt: !1444)
!1449 = !DILocation(line: 39, column: 16, scope: !466, inlinedAt: !1444)
!1450 = !DILocation(line: 39, column: 2, scope: !466, inlinedAt: !1444)
!1451 = !DILocation(line: 66, column: 9, scope: !605, inlinedAt: !1419)
!1452 = !DILocation(line: 155, column: 5, scope: !1159, inlinedAt: !1165)
!1453 = !DILocation(line: 155, column: 13, scope: !1159, inlinedAt: !1165)
!1454 = !{!603, !408, i64 56}
!1455 = !DILocation(line: 156, column: 5, scope: !1159, inlinedAt: !1165)
!1456 = !DILocation(line: 156, column: 17, scope: !1159, inlinedAt: !1165)
!1457 = !{!603, !510, i64 72}
!1458 = !DILocation(line: 157, column: 13, scope: !1459, inlinedAt: !1165)
!1459 = distinct !DILexicalBlock(scope: !1460, file: !1, line: 157, column: 2)
!1460 = distinct !DILexicalBlock(scope: !1159, file: !1, line: 157, column: 2)
!1461 = !DILocation(line: 157, column: 2, scope: !1460, inlinedAt: !1165)
!1462 = !DILocation(line: 157, column: 36, scope: !1459, inlinedAt: !1165)
!1463 = distinct !{!1463, !1464, !1465}
!1464 = !DILocation(line: 157, column: 2, scope: !1460)
!1465 = !DILocation(line: 157, column: 37, scope: !1460)
!1466 = !DILocation(line: 157, column: 25, scope: !1459, inlinedAt: !1165)
!1467 = !DILocation(line: 157, column: 22, scope: !1459, inlinedAt: !1165)
!1468 = !DILocation(line: 157, column: 18, scope: !1459, inlinedAt: !1165)
!1469 = distinct !{!1469, !931}
!1470 = !DILocation(line: 158, column: 2, scope: !1471, inlinedAt: !1165)
!1471 = distinct !DILexicalBlock(scope: !1159, file: !1, line: 158, column: 2)
!1472 = !DILocation(line: 76, column: 39, scope: !536, inlinedAt: !1473)
!1473 = distinct !DILocation(line: 158, column: 37, scope: !1474, inlinedAt: !1165)
!1474 = distinct !DILexicalBlock(scope: !1471, file: !1, line: 158, column: 2)
!1475 = !DILocation(line: 78, column: 2, scope: !536, inlinedAt: !1473)
!1476 = !DILocation(line: 48, column: 34, scope: !449, inlinedAt: !1477)
!1477 = distinct !DILocation(line: 79, column: 2, scope: !536, inlinedAt: !1473)
!1478 = !DILocation(line: 48, column: 43, scope: !449, inlinedAt: !1477)
!1479 = !DILocation(line: 48, column: 53, scope: !449, inlinedAt: !1477)
!1480 = !DILocation(line: 50, column: 24, scope: !449, inlinedAt: !1477)
!1481 = !DILocation(line: 50, column: 11, scope: !449, inlinedAt: !1477)
!1482 = !DILocation(line: 50, column: 9, scope: !449, inlinedAt: !1477)
!1483 = !DILocation(line: 51, column: 2, scope: !463, inlinedAt: !1477)
!1484 = !DILocation(line: 51, column: 2, scope: !449, inlinedAt: !1477)
!1485 = !DILocation(line: 36, column: 30, scope: !466, inlinedAt: !1486)
!1486 = distinct !DILocation(line: 51, column: 2, scope: !463, inlinedAt: !1477)
!1487 = !DILocation(line: 36, column: 45, scope: !466, inlinedAt: !1486)
!1488 = !DILocation(line: 38, column: 22, scope: !466, inlinedAt: !1486)
!1489 = !DILocation(line: 38, column: 57, scope: !466, inlinedAt: !1486)
!1490 = !DILocation(line: 38, column: 2, scope: !466, inlinedAt: !1486)
!1491 = !DILocation(line: 39, column: 16, scope: !466, inlinedAt: !1486)
!1492 = !DILocation(line: 39, column: 2, scope: !466, inlinedAt: !1486)
!1493 = !DILocation(line: 80, column: 6, scope: !543, inlinedAt: !1473)
!1494 = !DILocation(line: 78, column: 9, scope: !536, inlinedAt: !1473)
!1495 = !DILocation(line: 80, column: 10, scope: !543, inlinedAt: !1473)
!1496 = !DILocation(line: 80, column: 6, scope: !536, inlinedAt: !1473)
!1497 = !DILocation(line: 84, column: 29, scope: !542, inlinedAt: !1473)
!1498 = !DILocation(line: 84, column: 34, scope: !542, inlinedAt: !1473)
!1499 = !DILocation(line: 84, column: 11, scope: !542, inlinedAt: !1473)
!1500 = !DILocation(line: 84, column: 9, scope: !542, inlinedAt: !1473)
!1501 = !DILocation(line: 85, column: 17, scope: !542, inlinedAt: !1473)
!1502 = !DILocation(line: 48, column: 34, scope: !449, inlinedAt: !1503)
!1503 = distinct !DILocation(line: 85, column: 3, scope: !542, inlinedAt: !1473)
!1504 = !DILocation(line: 48, column: 43, scope: !449, inlinedAt: !1503)
!1505 = !DILocation(line: 48, column: 53, scope: !449, inlinedAt: !1503)
!1506 = !DILocation(line: 50, column: 24, scope: !449, inlinedAt: !1503)
!1507 = !DILocation(line: 50, column: 11, scope: !449, inlinedAt: !1503)
!1508 = !DILocation(line: 50, column: 9, scope: !449, inlinedAt: !1503)
!1509 = !DILocation(line: 51, column: 2, scope: !463, inlinedAt: !1503)
!1510 = !DILocation(line: 51, column: 2, scope: !449, inlinedAt: !1503)
!1511 = !DILocation(line: 36, column: 30, scope: !466, inlinedAt: !1512)
!1512 = distinct !DILocation(line: 51, column: 2, scope: !463, inlinedAt: !1503)
!1513 = !DILocation(line: 36, column: 45, scope: !466, inlinedAt: !1512)
!1514 = !DILocation(line: 38, column: 22, scope: !466, inlinedAt: !1512)
!1515 = !DILocation(line: 38, column: 57, scope: !466, inlinedAt: !1512)
!1516 = !DILocation(line: 38, column: 2, scope: !466, inlinedAt: !1512)
!1517 = !DILocation(line: 39, column: 16, scope: !466, inlinedAt: !1512)
!1518 = !DILocation(line: 39, column: 2, scope: !466, inlinedAt: !1512)
!1519 = !DILocation(line: 86, column: 26, scope: !542, inlinedAt: !1473)
!1520 = !DILocation(line: 86, column: 30, scope: !542, inlinedAt: !1473)
!1521 = !DILocation(line: 86, column: 34, scope: !542, inlinedAt: !1473)
!1522 = !DILocation(line: 86, column: 10, scope: !542, inlinedAt: !1473)
!1523 = !DILocation(line: 0, scope: !542, inlinedAt: !1473)
!1524 = !DILocation(line: 88, column: 1, scope: !536, inlinedAt: !1473)
!1525 = !DILocation(line: 158, column: 25, scope: !1474, inlinedAt: !1165)
!1526 = !DILocation(line: 158, column: 22, scope: !1474, inlinedAt: !1165)
!1527 = !DILocation(line: 158, column: 36, scope: !1474, inlinedAt: !1165)
!1528 = !DILocation(line: 158, column: 18, scope: !1474, inlinedAt: !1165)
!1529 = !DILocation(line: 158, column: 13, scope: !1474, inlinedAt: !1165)
!1530 = distinct !{!1530, !1531, !1532}
!1531 = !DILocation(line: 158, column: 2, scope: !1471)
!1532 = !DILocation(line: 158, column: 49, scope: !1471)
!1533 = !DILocation(line: 177, column: 2, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !493, file: !1, line: 177, column: 2)
!1535 = !DILocation(line: 177, column: 2, scope: !493)
!1536 = !DILocation(line: 36, column: 30, scope: !466, inlinedAt: !1537)
!1537 = distinct !DILocation(line: 177, column: 2, scope: !1534)
!1538 = !DILocation(line: 36, column: 45, scope: !466, inlinedAt: !1537)
!1539 = !DILocation(line: 38, column: 22, scope: !466, inlinedAt: !1537)
!1540 = !DILocation(line: 38, column: 57, scope: !466, inlinedAt: !1537)
!1541 = !DILocation(line: 38, column: 2, scope: !466, inlinedAt: !1537)
!1542 = !DILocation(line: 39, column: 16, scope: !466, inlinedAt: !1537)
!1543 = !DILocation(line: 39, column: 2, scope: !466, inlinedAt: !1537)
!1544 = !DILocation(line: 178, column: 5, scope: !493)
!1545 = !DILocation(line: 178, column: 8, scope: !493)
!1546 = !DILocation(line: 178, column: 11, scope: !493)
!1547 = !DILocation(line: 179, column: 8, scope: !493)
!1548 = !DILocation(line: 179, column: 15, scope: !493)
!1549 = !DILocation(line: 180, column: 2, scope: !493)
!1550 = !DILocation(line: 214, column: 25, scope: !423)
!1551 = !DILocation(line: 216, column: 6, scope: !423)
!1552 = !DILocation(line: 217, column: 2, scope: !423)
!1553 = !DILocation(line: 218, column: 3, scope: !423)
!1554 = !DILocation(line: 219, column: 4, scope: !423)
!1555 = !DILocation(line: 219, column: 6, scope: !423)
!1556 = !DILocation(line: 220, column: 4, scope: !423)
!1557 = !DILocation(line: 220, column: 6, scope: !423)
!1558 = !DILocation(line: 221, column: 4, scope: !423)
!1559 = !DILocation(line: 221, column: 6, scope: !423)
!1560 = !DILocation(line: 222, column: 4, scope: !423)
!1561 = !DILocation(line: 222, column: 6, scope: !423)
!1562 = !DILocation(line: 223, column: 4, scope: !423)
!1563 = !DILocation(line: 223, column: 6, scope: !423)
!1564 = !DILocation(line: 224, column: 4, scope: !423)
!1565 = !DILocation(line: 224, column: 6, scope: !423)
!1566 = !DILocation(line: 225, column: 4, scope: !423)
!1567 = !DILocation(line: 225, column: 6, scope: !423)
!1568 = !DILocation(line: 226, column: 6, scope: !423)
!1569 = !DILocation(line: 227, column: 1, scope: !423)
