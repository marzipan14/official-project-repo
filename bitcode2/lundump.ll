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
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define hidden %struct.Proto* @luaU_undump(%struct.lua_State*, %struct.Zio*, %struct.Mbuffer*, i8*) local_unnamed_addr #0 !dbg !347 {
  %5 = alloca [12 x i8], align 1
  %6 = alloca [12 x i8], align 1
  %7 = alloca %struct.LoadState, align 8
  %8 = bitcast %struct.LoadState* %7 to i8*, !dbg !396
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #4, !dbg !396
  %9 = load i8, i8* %3, align 1, !dbg !397, !tbaa !399
  %10 = icmp eq i8 %9, 64, !dbg !402
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !403
  br i1 %10, label %13, label %11, !dbg !403

; <label>:11:                                     ; preds = %4
  %12 = icmp eq i8 %9, 61, !dbg !404
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !405
  br i1 %12, label %13, label %16, !dbg !405

; <label>:13:                                     ; preds = %11, %4
  %14 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !406
  %15 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %7, i64 0, i32 3, !dbg !407
  store i8* %14, i8** %15, align 8, !dbg !408, !tbaa !409
  br label %21, !dbg !412

; <label>:16:                                     ; preds = %11
  %17 = icmp eq i8 %9, 27, !dbg !413
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !415
  %18 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %7, i64 0, i32 3, !dbg !416
  br i1 %17, label %19, label %20, !dbg !415

; <label>:19:                                     ; preds = %16
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %18, align 8, !dbg !417, !tbaa !409
  br label %21, !dbg !418

; <label>:20:                                     ; preds = %16
  store i8* %3, i8** %18, align 8, !dbg !419, !tbaa !409
  br label %21

; <label>:21:                                     ; preds = %19, %20, %13
  %22 = phi i8* [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), %19 ], [ %3, %20 ], [ %14, %13 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %23 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %7, i64 0, i32 0, !dbg !420
  store %struct.lua_State* %0, %struct.lua_State** %23, align 8, !dbg !421, !tbaa !422
  %24 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %7, i64 0, i32 1, !dbg !423
  store %struct.Zio* %1, %struct.Zio** %24, align 8, !dbg !424, !tbaa !425
  %25 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %7, i64 0, i32 2, !dbg !426
  store %struct.Mbuffer* %2, %struct.Mbuffer** %25, align 8, !dbg !427, !tbaa !428
  %26 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 0, !dbg !431
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %26) #4, !dbg !431
  %27 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 0, !dbg !432
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %27) #4, !dbg !432
  %28 = call i8* @memcpy(i8* nonnull %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 4) #5, !dbg !442
  %29 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 4, !dbg !443
  %30 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 5, !dbg !444
  store i8 81, i8* %29, align 1, !dbg !445, !tbaa !399
  %31 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 6, !dbg !446
  store i8 0, i8* %30, align 1, !dbg !447, !tbaa !399
  %32 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 7, !dbg !448
  store i8 1, i8* %31, align 1, !dbg !449, !tbaa !399
  %33 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 8, !dbg !450
  store i8 4, i8* %32, align 1, !dbg !451, !tbaa !399
  %34 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 9, !dbg !452
  store i8 8, i8* %33, align 1, !dbg !453, !tbaa !399
  %35 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 10, !dbg !454
  store i8 4, i8* %34, align 1, !dbg !455, !tbaa !399
  %36 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 11, !dbg !456
  store i8 8, i8* %35, align 1, !dbg !457, !tbaa !399
  store i8 0, i8* %36, align 1, !dbg !458, !tbaa !399
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !459
  %37 = call i64 @luaZ_read(%struct.Zio* %1, i8* nonnull %27, i64 12) #5, !dbg !472
  %38 = icmp eq i64 %37, 0, !dbg !474
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !476
  br i1 %38, label %42, label %39, !dbg !476

; <label>:39:                                     ; preds = %21
  %40 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !486
  %41 = load %struct.lua_State*, %struct.lua_State** %23, align 8, !dbg !487, !tbaa !422
  call void @luaD_throw(%struct.lua_State* %41, i32 3) #5, !dbg !488
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !489
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !474
  br label %42, !dbg !474

; <label>:42:                                     ; preds = %39, %21
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !490
  %43 = call i32 @memcmp(i8* nonnull %26, i8* nonnull %27, i64 12) #5, !dbg !491
  %44 = icmp eq i32 %43, 0, !dbg !491
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !493
  br i1 %44, label %51, label %45, !dbg !493

; <label>:45:                                     ; preds = %42
  %46 = load %struct.lua_State*, %struct.lua_State** %23, align 8, !dbg !497, !tbaa !422
  %47 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %7, i64 0, i32 3, !dbg !498
  %48 = load i8*, i8** %47, align 8, !dbg !498, !tbaa !409
  %49 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %46, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %48, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0)) #5, !dbg !499
  %50 = load %struct.lua_State*, %struct.lua_State** %23, align 8, !dbg !500, !tbaa !422
  call void @luaD_throw(%struct.lua_State* %50, i32 3) #5, !dbg !501
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !502
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !491
  br label %51, !dbg !491

; <label>:51:                                     ; preds = %42, %45
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %27) #4, !dbg !503
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %26) #4, !dbg !503
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !503
  %52 = call %union.TString* @luaS_newlstr(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i64 2) #5, !dbg !504
  %53 = call fastcc %struct.Proto* @LoadFunction(%struct.LoadState* nonnull %7, %union.TString* %52) #6, !dbg !505
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #4, !dbg !506
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !507
  ret %struct.Proto* %53, !dbg !507
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define internal fastcc %struct.Proto* @LoadFunction(%struct.LoadState*, %union.TString*) unnamed_addr #0 !dbg !508 {
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
  %24 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 0, !dbg !519
  %25 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !519, !tbaa !422
  %26 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %25, i64 0, i32 15, !dbg !521
  %27 = load i16, i16* %26, align 8, !dbg !522, !tbaa !523
  %28 = add i16 %27, 1, !dbg !522
  store i16 %28, i16* %26, align 8, !dbg !522, !tbaa !523
  %29 = icmp ugt i16 %28, 200, !dbg !529
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !530
  br i1 %29, label %30, label %36, !dbg !530

; <label>:30:                                     ; preds = %2
  %31 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 3, !dbg !534
  %32 = load i8*, i8** %31, align 8, !dbg !534, !tbaa !409
  %33 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %25, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0)) #5, !dbg !535
  %34 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !536, !tbaa !422
  tail call void @luaD_throw(%struct.lua_State* %34, i32 3) #5, !dbg !537
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !538
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !539
  %35 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !540, !tbaa !422
  br label %36, !dbg !539

; <label>:36:                                     ; preds = %30, %2
  %37 = phi %struct.lua_State* [ %35, %30 ], [ %25, %2 ], !dbg !540
  %38 = tail call %struct.Proto* @luaF_newproto(%struct.lua_State* %37) #5, !dbg !541
  %39 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !543, !tbaa !422
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %39, i64 0, i32 4, !dbg !543
  %41 = load %struct.lua_TValue*, %struct.lua_TValue** %40, align 8, !dbg !543, !tbaa !544
  %42 = bitcast %struct.lua_TValue* %41 to %struct.Proto**, !dbg !543
  store %struct.Proto* %38, %struct.Proto** %42, align 8, !dbg !543, !tbaa !399
  %43 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %41, i64 0, i32 1, !dbg !543
  store i32 9, i32* %43, align 8, !dbg !543, !tbaa !545
  %44 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !546, !tbaa !422
  %45 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %44, i64 0, i32 9, !dbg !546
  %46 = bitcast %struct.lua_TValue** %45 to i64*, !dbg !546
  %47 = load i64, i64* %46, align 8, !dbg !546, !tbaa !549
  %48 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %44, i64 0, i32 4, !dbg !546
  %49 = bitcast %struct.lua_TValue** %48 to i64*, !dbg !546
  %50 = load i64, i64* %49, align 8, !dbg !546, !tbaa !544
  %51 = sub i64 %47, %50, !dbg !546
  %52 = icmp slt i64 %51, 17, !dbg !546
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !550
  %53 = inttoptr i64 %50 to %struct.lua_TValue*, !dbg !550
  br i1 %52, label %54, label %58, !dbg !550

; <label>:54:                                     ; preds = %36
  tail call void @luaD_growstack(%struct.lua_State* %44, i32 1) #5, !dbg !546
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !546
  %55 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !550, !tbaa !422
  %56 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %55, i64 0, i32 4
  %57 = load %struct.lua_TValue*, %struct.lua_TValue** %56, align 8, !dbg !550, !tbaa !544
  br label %58, !dbg !546

; <label>:58:                                     ; preds = %36, %54
  %59 = phi %struct.lua_TValue** [ %48, %36 ], [ %56, %54 ], !dbg !550
  %60 = phi %struct.lua_TValue* [ %53, %36 ], [ %57, %54 ], !dbg !550
  %61 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %60, i64 1, !dbg !550
  store %struct.lua_TValue* %61, %struct.lua_TValue** %59, align 8, !dbg !550, !tbaa !544
  %62 = bitcast i64* %23 to i8*, !dbg !562
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %62) #4, !dbg !562
  %63 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 1, !dbg !567
  %64 = load %struct.Zio*, %struct.Zio** %63, align 8, !dbg !567, !tbaa !425
  %65 = call i64 @luaZ_read(%struct.Zio* %64, i8* nonnull %62, i64 8) #5, !dbg !568
  %66 = icmp eq i64 %65, 0, !dbg !570
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !571
  br i1 %66, label %73, label %67, !dbg !571

; <label>:67:                                     ; preds = %58
  %68 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !575, !tbaa !422
  %69 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 3, !dbg !576
  %70 = load i8*, i8** %69, align 8, !dbg !576, !tbaa !409
  %71 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %68, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %70, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !577
  %72 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !578, !tbaa !422
  call void @luaD_throw(%struct.lua_State* %72, i32 3) #5, !dbg !579
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !570
  br label %73, !dbg !570

; <label>:73:                                     ; preds = %58, %67
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !581
  %74 = load i64, i64* %23, align 8, !dbg !582, !tbaa !583
  %75 = icmp eq i64 %74, 0, !dbg !585
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !586
  br i1 %75, label %96, label %76, !dbg !586

; <label>:76:                                     ; preds = %73
  %77 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !587, !tbaa !422
  %78 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 2, !dbg !588
  %79 = load %struct.Mbuffer*, %struct.Mbuffer** %78, align 8, !dbg !588, !tbaa !428
  %80 = call i8* @luaZ_openspace(%struct.lua_State* %77, %struct.Mbuffer* %79, i64 %74) #5, !dbg !589
  %81 = load i64, i64* %23, align 8, !dbg !591, !tbaa !583
  %82 = load %struct.Zio*, %struct.Zio** %63, align 8, !dbg !596, !tbaa !425
  %83 = call i64 @luaZ_read(%struct.Zio* %82, i8* %80, i64 %81) #5, !dbg !597
  %84 = icmp eq i64 %83, 0, !dbg !599
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !600
  br i1 %84, label %91, label %85, !dbg !600

; <label>:85:                                     ; preds = %76
  %86 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !604, !tbaa !422
  %87 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 3, !dbg !605
  %88 = load i8*, i8** %87, align 8, !dbg !605, !tbaa !409
  %89 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %86, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %88, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !606
  %90 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !607, !tbaa !422
  call void @luaD_throw(%struct.lua_State* %90, i32 3) #5, !dbg !608
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !609
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !599
  br label %91, !dbg !599

; <label>:91:                                     ; preds = %76, %85
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !610
  %92 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !611, !tbaa !422
  %93 = load i64, i64* %23, align 8, !dbg !612, !tbaa !583
  %94 = add i64 %93, -1, !dbg !613
  %95 = call %union.TString* @luaS_newlstr(%struct.lua_State* %92, i8* %80, i64 %94) #5, !dbg !614
  br label %96

; <label>:96:                                     ; preds = %73, %91
  %97 = phi %union.TString* [ %95, %91 ], [ null, %73 ], !dbg !615
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %62) #4, !dbg !616
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !616
  %98 = getelementptr inbounds %struct.Proto, %struct.Proto* %38, i64 0, i32 9, !dbg !617
  store %union.TString* %97, %union.TString** %98, align 8, !dbg !618, !tbaa !619
  %99 = icmp eq %union.TString* %97, null, !dbg !621
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !623
  br i1 %99, label %100, label %101, !dbg !623

; <label>:100:                                    ; preds = %96
  store %union.TString* %1, %union.TString** %98, align 8, !dbg !624, !tbaa !619
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !625
  br label %101, !dbg !625

; <label>:101:                                    ; preds = %100, %96
  %102 = bitcast i32* %22 to i8*, !dbg !634
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %102) #4, !dbg !634
  %103 = load %struct.Zio*, %struct.Zio** %63, align 8, !dbg !639, !tbaa !425
  %104 = call i64 @luaZ_read(%struct.Zio* %103, i8* nonnull %102, i64 4) #5, !dbg !640
  %105 = icmp eq i64 %104, 0, !dbg !642
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !643
  br i1 %105, label %112, label %106, !dbg !643

; <label>:106:                                    ; preds = %101
  %107 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !647, !tbaa !422
  %108 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 3, !dbg !648
  %109 = load i8*, i8** %108, align 8, !dbg !648, !tbaa !409
  %110 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %107, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %109, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !649
  %111 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !650, !tbaa !422
  call void @luaD_throw(%struct.lua_State* %111, i32 3) #5, !dbg !651
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !652
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !642
  br label %112, !dbg !642

; <label>:112:                                    ; preds = %101, %106
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !653
  %113 = load i32, i32* %22, align 4, !dbg !654, !tbaa !656
  %114 = icmp slt i32 %113, 0, !dbg !654
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !658
  br i1 %114, label %115, label %122, !dbg !658

; <label>:115:                                    ; preds = %112
  %116 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !662, !tbaa !422
  %117 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 3, !dbg !663
  %118 = load i8*, i8** %117, align 8, !dbg !663, !tbaa !409
  %119 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %116, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %118, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0)) #5, !dbg !664
  %120 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !665, !tbaa !422
  call void @luaD_throw(%struct.lua_State* %120, i32 3) #5, !dbg !666
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !667
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !654
  %121 = load i32, i32* %22, align 4, !dbg !668, !tbaa !656
  br label %122, !dbg !654

; <label>:122:                                    ; preds = %112, %115
  %123 = phi i32 [ %121, %115 ], [ %113, %112 ], !dbg !668
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %102) #4, !dbg !669
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !670
  %124 = getelementptr inbounds %struct.Proto, %struct.Proto* %38, i64 0, i32 16, !dbg !671
  store i32 %123, i32* %124, align 8, !dbg !672, !tbaa !673
  %125 = bitcast i32* %21 to i8*, !dbg !676
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %125) #4, !dbg !676
  %126 = load %struct.Zio*, %struct.Zio** %63, align 8, !dbg !681, !tbaa !425
  %127 = call i64 @luaZ_read(%struct.Zio* %126, i8* nonnull %125, i64 4) #5, !dbg !682
  %128 = icmp eq i64 %127, 0, !dbg !684
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !685
  br i1 %128, label %135, label %129, !dbg !685

; <label>:129:                                    ; preds = %122
  %130 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !689, !tbaa !422
  %131 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 3, !dbg !690
  %132 = load i8*, i8** %131, align 8, !dbg !690, !tbaa !409
  %133 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %130, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %132, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !691
  %134 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !692, !tbaa !422
  call void @luaD_throw(%struct.lua_State* %134, i32 3) #5, !dbg !693
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !694
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !684
  br label %135, !dbg !684

; <label>:135:                                    ; preds = %122, %129
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !695
  %136 = load i32, i32* %21, align 4, !dbg !696, !tbaa !656
  %137 = icmp slt i32 %136, 0, !dbg !696
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !698
  br i1 %137, label %138, label %145, !dbg !698

; <label>:138:                                    ; preds = %135
  %139 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !702, !tbaa !422
  %140 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 3, !dbg !703
  %141 = load i8*, i8** %140, align 8, !dbg !703, !tbaa !409
  %142 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %139, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %141, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0)) #5, !dbg !704
  %143 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !705, !tbaa !422
  call void @luaD_throw(%struct.lua_State* %143, i32 3) #5, !dbg !706
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !707
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !696
  %144 = load i32, i32* %21, align 4, !dbg !708, !tbaa !656
  br label %145, !dbg !696

; <label>:145:                                    ; preds = %135, %138
  %146 = phi i32 [ %144, %138 ], [ %136, %135 ], !dbg !708
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %125) #4, !dbg !709
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !710
  %147 = getelementptr inbounds %struct.Proto, %struct.Proto* %38, i64 0, i32 17, !dbg !711
  store i32 %146, i32* %147, align 4, !dbg !712, !tbaa !713
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %20) #4, !dbg !721
  %148 = load %struct.Zio*, %struct.Zio** %63, align 8, !dbg !726, !tbaa !425
  %149 = call i64 @luaZ_read(%struct.Zio* %148, i8* nonnull %20, i64 1) #5, !dbg !727
  %150 = icmp eq i64 %149, 0, !dbg !729
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !730
  br i1 %150, label %157, label %151, !dbg !730

; <label>:151:                                    ; preds = %145
  %152 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !734, !tbaa !422
  %153 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 3, !dbg !735
  %154 = load i8*, i8** %153, align 8, !dbg !735, !tbaa !409
  %155 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %152, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %154, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !736
  %156 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !737, !tbaa !422
  call void @luaD_throw(%struct.lua_State* %156, i32 3) #5, !dbg !738
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !739
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !729
  br label %157, !dbg !729

; <label>:157:                                    ; preds = %145, %151
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !740
  %158 = load i8, i8* %20, align 1, !dbg !741, !tbaa !399
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %20) #4, !dbg !742
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !743
  %159 = getelementptr inbounds %struct.Proto, %struct.Proto* %38, i64 0, i32 19, !dbg !744
  store i8 %158, i8* %159, align 8, !dbg !745, !tbaa !746
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %19) #4, !dbg !750
  %160 = load %struct.Zio*, %struct.Zio** %63, align 8, !dbg !755, !tbaa !425
  %161 = call i64 @luaZ_read(%struct.Zio* %160, i8* nonnull %19, i64 1) #5, !dbg !756
  %162 = icmp eq i64 %161, 0, !dbg !758
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !759
  br i1 %162, label %169, label %163, !dbg !759

; <label>:163:                                    ; preds = %157
  %164 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !763, !tbaa !422
  %165 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 3, !dbg !764
  %166 = load i8*, i8** %165, align 8, !dbg !764, !tbaa !409
  %167 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %164, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %166, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !765
  %168 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !766, !tbaa !422
  call void @luaD_throw(%struct.lua_State* %168, i32 3) #5, !dbg !767
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !768
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !758
  br label %169, !dbg !758

; <label>:169:                                    ; preds = %157, %163
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !769
  %170 = load i8, i8* %19, align 1, !dbg !770, !tbaa !399
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %19) #4, !dbg !771
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !772
  %171 = getelementptr inbounds %struct.Proto, %struct.Proto* %38, i64 0, i32 20, !dbg !773
  store i8 %170, i8* %171, align 1, !dbg !774, !tbaa !775
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %18) #4, !dbg !779
  %172 = load %struct.Zio*, %struct.Zio** %63, align 8, !dbg !784, !tbaa !425
  %173 = call i64 @luaZ_read(%struct.Zio* %172, i8* nonnull %18, i64 1) #5, !dbg !785
  %174 = icmp eq i64 %173, 0, !dbg !787
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !788
  br i1 %174, label %181, label %175, !dbg !788

; <label>:175:                                    ; preds = %169
  %176 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !792, !tbaa !422
  %177 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 3, !dbg !793
  %178 = load i8*, i8** %177, align 8, !dbg !793, !tbaa !409
  %179 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %176, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %178, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !794
  %180 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !795, !tbaa !422
  call void @luaD_throw(%struct.lua_State* %180, i32 3) #5, !dbg !796
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !797
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !787
  br label %181, !dbg !787

; <label>:181:                                    ; preds = %169, %175
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !798
  %182 = load i8, i8* %18, align 1, !dbg !799, !tbaa !399
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %18) #4, !dbg !800
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !801
  %183 = getelementptr inbounds %struct.Proto, %struct.Proto* %38, i64 0, i32 21, !dbg !802
  store i8 %182, i8* %183, align 2, !dbg !803, !tbaa !804
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %17) #4, !dbg !808
  %184 = load %struct.Zio*, %struct.Zio** %63, align 8, !dbg !813, !tbaa !425
  %185 = call i64 @luaZ_read(%struct.Zio* %184, i8* nonnull %17, i64 1) #5, !dbg !814
  %186 = icmp eq i64 %185, 0, !dbg !816
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !817
  br i1 %186, label %193, label %187, !dbg !817

; <label>:187:                                    ; preds = %181
  %188 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !821, !tbaa !422
  %189 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 3, !dbg !822
  %190 = load i8*, i8** %189, align 8, !dbg !822, !tbaa !409
  %191 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %188, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %190, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !823
  %192 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !824, !tbaa !422
  call void @luaD_throw(%struct.lua_State* %192, i32 3) #5, !dbg !825
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !826
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !816
  br label %193, !dbg !816

; <label>:193:                                    ; preds = %181, %187
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !827
  %194 = load i8, i8* %17, align 1, !dbg !828, !tbaa !399
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %17) #4, !dbg !829
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !830
  %195 = getelementptr inbounds %struct.Proto, %struct.Proto* %38, i64 0, i32 22, !dbg !831
  store i8 %194, i8* %195, align 1, !dbg !832, !tbaa !833
  %196 = bitcast i32* %16 to i8*, !dbg !846
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %196) #4, !dbg !846
  %197 = load %struct.Zio*, %struct.Zio** %63, align 8, !dbg !851, !tbaa !425
  %198 = call i64 @luaZ_read(%struct.Zio* %197, i8* nonnull %196, i64 4) #5, !dbg !852
  %199 = icmp eq i64 %198, 0, !dbg !854
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !855
  br i1 %199, label %206, label %200, !dbg !855

; <label>:200:                                    ; preds = %193
  %201 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !859, !tbaa !422
  %202 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 3, !dbg !860
  %203 = load i8*, i8** %202, align 8, !dbg !860, !tbaa !409
  %204 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %201, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %203, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !861
  %205 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !862, !tbaa !422
  call void @luaD_throw(%struct.lua_State* %205, i32 3) #5, !dbg !863
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !864
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !854
  br label %206, !dbg !854

; <label>:206:                                    ; preds = %200, %193
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !865
  %207 = load i32, i32* %16, align 4, !dbg !866, !tbaa !656
  %208 = icmp slt i32 %207, 0, !dbg !866
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !868
  br i1 %208, label %211, label %209, !dbg !868

; <label>:209:                                    ; preds = %206
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %196) #4, !dbg !869
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !870
  %210 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !871, !tbaa !422
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !871
  br label %220, !dbg !871

; <label>:211:                                    ; preds = %206
  %212 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !875, !tbaa !422
  %213 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 3, !dbg !876
  %214 = load i8*, i8** %213, align 8, !dbg !876, !tbaa !409
  %215 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %212, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %214, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0)) #5, !dbg !877
  %216 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !878, !tbaa !422
  call void @luaD_throw(%struct.lua_State* %216, i32 3) #5, !dbg !879
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !880
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !866
  %217 = load i32, i32* %16, align 4, !dbg !881, !tbaa !656
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %196) #4, !dbg !869
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !870
  %218 = icmp sgt i32 %217, -2, !dbg !871
  %219 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !871, !tbaa !422
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !871
  br i1 %218, label %220, label %226, !dbg !871

; <label>:220:                                    ; preds = %211, %209
  %221 = phi %struct.lua_State* [ %210, %209 ], [ %219, %211 ]
  %222 = phi i32 [ %207, %209 ], [ %217, %211 ]
  %223 = sext i32 %222 to i64, !dbg !871
  %224 = shl nsw i64 %223, 2, !dbg !871
  %225 = call i8* @luaM_realloc_(%struct.lua_State* %221, i8* null, i64 0, i64 %224) #5, !dbg !871
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !871
  br label %230, !dbg !871

; <label>:226:                                    ; preds = %211
  %227 = call i8* @luaM_toobig(%struct.lua_State* %219) #5, !dbg !871
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !871
  %228 = sext i32 %217 to i64, !dbg !883
  %229 = shl nsw i64 %228, 2, !dbg !883
  br label %230, !dbg !871

; <label>:230:                                    ; preds = %226, %220
  %231 = phi i32 [ %217, %226 ], [ %222, %220 ]
  %232 = phi i64 [ %229, %226 ], [ %224, %220 ], !dbg !883
  %233 = phi i8* [ %227, %226 ], [ %225, %220 ], !dbg !871
  %234 = getelementptr inbounds %struct.Proto, %struct.Proto* %38, i64 0, i32 4, !dbg !884
  %235 = bitcast i32** %234 to i8**, !dbg !885
  store i8* %233, i8** %235, align 8, !dbg !885, !tbaa !886
  %236 = getelementptr inbounds %struct.Proto, %struct.Proto* %38, i64 0, i32 12, !dbg !887
  store i32 %231, i32* %236, align 8, !dbg !888, !tbaa !889
  %237 = load %struct.Zio*, %struct.Zio** %63, align 8, !dbg !894, !tbaa !425
  %238 = call i64 @luaZ_read(%struct.Zio* %237, i8* %233, i64 %232) #5, !dbg !895
  %239 = icmp eq i64 %238, 0, !dbg !897
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !898
  br i1 %239, label %246, label %240, !dbg !898

; <label>:240:                                    ; preds = %230
  %241 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !902, !tbaa !422
  %242 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 3, !dbg !903
  %243 = load i8*, i8** %242, align 8, !dbg !903, !tbaa !409
  %244 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %241, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %243, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !904
  %245 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !905, !tbaa !422
  call void @luaD_throw(%struct.lua_State* %245, i32 3) #5, !dbg !906
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !907
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !897
  br label %246, !dbg !897

; <label>:246:                                    ; preds = %230, %240
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !908
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !909
  %247 = bitcast i32* %8 to i8*, !dbg !933
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %247) #4, !dbg !933
  %248 = load %struct.Zio*, %struct.Zio** %63, align 8, !dbg !938, !tbaa !425
  %249 = call i64 @luaZ_read(%struct.Zio* %248, i8* nonnull %247, i64 4) #5, !dbg !939
  %250 = icmp eq i64 %249, 0, !dbg !941
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !942
  br i1 %250, label %257, label %251, !dbg !942

; <label>:251:                                    ; preds = %246
  %252 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !946, !tbaa !422
  %253 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 3, !dbg !947
  %254 = load i8*, i8** %253, align 8, !dbg !947, !tbaa !409
  %255 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %252, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %254, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !948
  %256 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !949, !tbaa !422
  call void @luaD_throw(%struct.lua_State* %256, i32 3) #5, !dbg !950
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !951
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !941
  br label %257, !dbg !941

; <label>:257:                                    ; preds = %246, %251
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !952
  %258 = load i32, i32* %8, align 4, !dbg !953, !tbaa !656
  %259 = icmp slt i32 %258, 0, !dbg !953
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !955
  br i1 %259, label %262, label %260, !dbg !955

; <label>:260:                                    ; preds = %257
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %247) #4, !dbg !956
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !957
  %261 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !959, !tbaa !422
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !959
  br label %271, !dbg !959

; <label>:262:                                    ; preds = %257
  %263 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !963, !tbaa !422
  %264 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 3, !dbg !964
  %265 = load i8*, i8** %264, align 8, !dbg !964, !tbaa !409
  %266 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %263, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %265, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0)) #5, !dbg !965
  %267 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !966, !tbaa !422
  call void @luaD_throw(%struct.lua_State* %267, i32 3) #5, !dbg !967
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !968
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !953
  %268 = load i32, i32* %8, align 4, !dbg !969, !tbaa !656
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %247) #4, !dbg !956
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !957
  %269 = icmp sgt i32 %268, -2, !dbg !959
  %270 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !959, !tbaa !422
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !959
  br i1 %269, label %271, label %277, !dbg !959

; <label>:271:                                    ; preds = %260, %262
  %272 = phi %struct.lua_State* [ %261, %260 ], [ %270, %262 ]
  %273 = phi i32 [ %258, %260 ], [ %268, %262 ]
  %274 = sext i32 %273 to i64, !dbg !959
  %275 = shl nsw i64 %274, 4, !dbg !959
  %276 = call i8* @luaM_realloc_(%struct.lua_State* %272, i8* null, i64 0, i64 %275) #5, !dbg !959
  br label %279, !dbg !959

; <label>:277:                                    ; preds = %262
  %278 = call i8* @luaM_toobig(%struct.lua_State* %270) #5, !dbg !959
  br label %279, !dbg !959

; <label>:279:                                    ; preds = %277, %271
  %280 = phi i32 [ %273, %271 ], [ %268, %277 ]
  %281 = phi i8* [ %276, %271 ], [ %278, %277 ], !dbg !959
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !959
  %282 = getelementptr inbounds %struct.Proto, %struct.Proto* %38, i64 0, i32 3, !dbg !970
  %283 = bitcast %struct.lua_TValue** %282 to i8**, !dbg !971
  store i8* %281, i8** %283, align 8, !dbg !971, !tbaa !972
  %284 = getelementptr inbounds %struct.Proto, %struct.Proto* %38, i64 0, i32 11, !dbg !973
  store i32 %280, i32* %284, align 4, !dbg !974, !tbaa !975
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !977
  %285 = icmp sgt i32 %280, 0, !dbg !979
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !981
  %286 = bitcast i8* %281 to %struct.lua_TValue*, !dbg !981
  br i1 %285, label %288, label %287, !dbg !981

; <label>:287:                                    ; preds = %279
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !982
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !983
  br label %415, !dbg !983

; <label>:288:                                    ; preds = %279
  %289 = zext i32 %280 to i64
  %290 = add nsw i64 %289, -1, !dbg !981
  %291 = and i64 %289, 3, !dbg !981
  %292 = icmp ult i64 %290, 3, !dbg !981
  br i1 %292, label %308, label %293, !dbg !981

; <label>:293:                                    ; preds = %288
  %294 = sub nsw i64 %289, %291, !dbg !981
  br label %295, !dbg !981

; <label>:295:                                    ; preds = %295, %293
  %296 = phi i64 [ 0, %293 ], [ %305, %295 ]
  %297 = phi i64 [ %294, %293 ], [ %306, %295 ]
  %298 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %286, i64 %296, i32 1, !dbg !984
  store i32 0, i32* %298, align 8, !dbg !984, !tbaa !545
  %299 = or i64 %296, 1, !dbg !985
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !986
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !981
  %300 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %286, i64 %299, i32 1, !dbg !984
  store i32 0, i32* %300, align 8, !dbg !984, !tbaa !545
  %301 = or i64 %296, 2, !dbg !985
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !986
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !981
  %302 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %286, i64 %301, i32 1, !dbg !984
  store i32 0, i32* %302, align 8, !dbg !984, !tbaa !545
  %303 = or i64 %296, 3, !dbg !985
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !986
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !981
  %304 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %286, i64 %303, i32 1, !dbg !984
  store i32 0, i32* %304, align 8, !dbg !984, !tbaa !545
  %305 = add nuw nsw i64 %296, 4, !dbg !985
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !986
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !981
  %306 = add i64 %297, -4, !dbg !981
  %307 = icmp eq i64 %306, 0, !dbg !981
  br i1 %307, label %308, label %295, !dbg !981, !llvm.loop !987

; <label>:308:                                    ; preds = %295, %288
  %309 = phi i64 [ 0, %288 ], [ %305, %295 ]
  %310 = icmp eq i64 %291, 0, !dbg !981
  br i1 %310, label %318, label %311, !dbg !981

; <label>:311:                                    ; preds = %308, %311
  %312 = phi i64 [ %315, %311 ], [ %309, %308 ]
  %313 = phi i64 [ %316, %311 ], [ %291, %308 ]
  %314 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %286, i64 %312, i32 1, !dbg !984
  store i32 0, i32* %314, align 8, !dbg !984, !tbaa !545
  %315 = add nuw nsw i64 %312, 1, !dbg !985
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !986
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !981
  %316 = add i64 %313, -1, !dbg !981
  %317 = icmp eq i64 %316, 0, !dbg !981
  br i1 %317, label %318, label %311, !dbg !981, !llvm.loop !990

; <label>:318:                                    ; preds = %311, %308
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !982
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !983
  br i1 %285, label %319, label %415, !dbg !983

; <label>:319:                                    ; preds = %318
  %320 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 3
  %321 = bitcast double* %5 to i8*
  %322 = bitcast i64* %4 to i8*
  %323 = bitcast double* %5 to i64*
  %324 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 2
  %325 = zext i32 %280 to i64
  br label %326, !dbg !983

; <label>:326:                                    ; preds = %413, %319
  %327 = phi %struct.lua_TValue* [ %286, %319 ], [ %414, %413 ], !dbg !992
  %328 = phi i64 [ 0, %319 ], [ %411, %413 ]
  %329 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %327, i64 %328, !dbg !993
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %7) #4, !dbg !998
  %330 = load %struct.Zio*, %struct.Zio** %63, align 8, !dbg !1003, !tbaa !425
  %331 = call i64 @luaZ_read(%struct.Zio* %330, i8* nonnull %7, i64 1) #5, !dbg !1004
  %332 = icmp eq i64 %331, 0, !dbg !1006
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1007
  br i1 %332, label %338, label %333, !dbg !1007

; <label>:333:                                    ; preds = %326
  %334 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1011, !tbaa !422
  %335 = load i8*, i8** %320, align 8, !dbg !1012, !tbaa !409
  %336 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %334, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %335, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !1013
  %337 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1014, !tbaa !422
  call void @luaD_throw(%struct.lua_State* %337, i32 3) #5, !dbg !1015
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1016
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1006
  br label %338, !dbg !1006

; <label>:338:                                    ; preds = %333, %326
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1017
  %339 = load i8, i8* %7, align 1, !dbg !1018, !tbaa !399
  %340 = sext i8 %339 to i32, !dbg !1018
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %7) #4, !dbg !1019
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1020
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1022
  switch i32 %340, label %405 [
    i32 0, label %341
    i32 1, label %343
    i32 3, label %358
    i32 4, label %371
  ], !dbg !1022

; <label>:341:                                    ; preds = %338
  %342 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %327, i64 %328, i32 1, !dbg !1023
  store i32 0, i32* %342, align 8, !dbg !1023, !tbaa !545
  br label %410, !dbg !1024

; <label>:343:                                    ; preds = %338
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %6) #4, !dbg !1029
  %344 = load %struct.Zio*, %struct.Zio** %63, align 8, !dbg !1034, !tbaa !425
  %345 = call i64 @luaZ_read(%struct.Zio* %344, i8* nonnull %6, i64 1) #5, !dbg !1035
  %346 = icmp eq i64 %345, 0, !dbg !1037
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1038
  br i1 %346, label %352, label %347, !dbg !1038

; <label>:347:                                    ; preds = %343
  %348 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1042, !tbaa !422
  %349 = load i8*, i8** %320, align 8, !dbg !1043, !tbaa !409
  %350 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %348, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %349, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !1044
  %351 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1045, !tbaa !422
  call void @luaD_throw(%struct.lua_State* %351, i32 3) #5, !dbg !1046
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1047
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1037
  br label %352, !dbg !1037

; <label>:352:                                    ; preds = %347, %343
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1048
  %353 = load i8, i8* %6, align 1, !dbg !1049, !tbaa !399
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %6) #4, !dbg !1050
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1051
  %354 = icmp ne i8 %353, 0, !dbg !1025
  %355 = zext i1 %354 to i32, !dbg !1025
  %356 = bitcast %struct.lua_TValue* %329 to i32*, !dbg !1025
  store i32 %355, i32* %356, align 8, !dbg !1025, !tbaa !399
  %357 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %327, i64 %328, i32 1, !dbg !1025
  store i32 1, i32* %357, align 8, !dbg !1025, !tbaa !545
  br label %410, !dbg !1052

; <label>:358:                                    ; preds = %338
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %321) #4, !dbg !1062
  %359 = load %struct.Zio*, %struct.Zio** %63, align 8, !dbg !1067, !tbaa !425
  %360 = call i64 @luaZ_read(%struct.Zio* %359, i8* nonnull %321, i64 8) #5, !dbg !1068
  %361 = icmp eq i64 %360, 0, !dbg !1070
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1071
  br i1 %361, label %367, label %362, !dbg !1071

; <label>:362:                                    ; preds = %358
  %363 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1075, !tbaa !422
  %364 = load i8*, i8** %320, align 8, !dbg !1076, !tbaa !409
  %365 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %363, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %364, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !1077
  %366 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1078, !tbaa !422
  call void @luaD_throw(%struct.lua_State* %366, i32 3) #5, !dbg !1079
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1080
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1070
  br label %367, !dbg !1070

; <label>:367:                                    ; preds = %362, %358
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1081
  %368 = load i64, i64* %323, align 8, !dbg !1082, !tbaa !1083
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %321) #4, !dbg !1086
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1087
  %369 = bitcast %struct.lua_TValue* %329 to i64*, !dbg !1053
  store i64 %368, i64* %369, align 8, !dbg !1053, !tbaa !399
  %370 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %327, i64 %328, i32 1, !dbg !1053
  store i32 3, i32* %370, align 8, !dbg !1053, !tbaa !545
  br label %410, !dbg !1088

; <label>:371:                                    ; preds = %338
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %322) #4, !dbg !1092
  %372 = load %struct.Zio*, %struct.Zio** %63, align 8, !dbg !1097, !tbaa !425
  %373 = call i64 @luaZ_read(%struct.Zio* %372, i8* nonnull %322, i64 8) #5, !dbg !1098
  %374 = icmp eq i64 %373, 0, !dbg !1100
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1101
  br i1 %374, label %380, label %375, !dbg !1101

; <label>:375:                                    ; preds = %371
  %376 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1105, !tbaa !422
  %377 = load i8*, i8** %320, align 8, !dbg !1106, !tbaa !409
  %378 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %376, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %377, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !1107
  %379 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1108, !tbaa !422
  call void @luaD_throw(%struct.lua_State* %379, i32 3) #5, !dbg !1109
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1100
  br label %380, !dbg !1100

; <label>:380:                                    ; preds = %371, %375
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1111
  %381 = load i64, i64* %4, align 8, !dbg !1112, !tbaa !583
  %382 = icmp eq i64 %381, 0, !dbg !1114
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1115
  br i1 %382, label %401, label %383, !dbg !1115

; <label>:383:                                    ; preds = %380
  %384 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1116, !tbaa !422
  %385 = load %struct.Mbuffer*, %struct.Mbuffer** %324, align 8, !dbg !1117, !tbaa !428
  %386 = call i8* @luaZ_openspace(%struct.lua_State* %384, %struct.Mbuffer* %385, i64 %381) #5, !dbg !1118
  %387 = load i64, i64* %4, align 8, !dbg !1120, !tbaa !583
  %388 = load %struct.Zio*, %struct.Zio** %63, align 8, !dbg !1125, !tbaa !425
  %389 = call i64 @luaZ_read(%struct.Zio* %388, i8* %386, i64 %387) #5, !dbg !1126
  %390 = icmp eq i64 %389, 0, !dbg !1128
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1129
  br i1 %390, label %396, label %391, !dbg !1129

; <label>:391:                                    ; preds = %383
  %392 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1133, !tbaa !422
  %393 = load i8*, i8** %320, align 8, !dbg !1134, !tbaa !409
  %394 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %392, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %393, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !1135
  %395 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1136, !tbaa !422
  call void @luaD_throw(%struct.lua_State* %395, i32 3) #5, !dbg !1137
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1138
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1128
  br label %396, !dbg !1128

; <label>:396:                                    ; preds = %383, %391
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1139
  %397 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1140, !tbaa !422
  %398 = load i64, i64* %4, align 8, !dbg !1141, !tbaa !583
  %399 = add i64 %398, -1, !dbg !1142
  %400 = call %union.TString* @luaS_newlstr(%struct.lua_State* %397, i8* %386, i64 %399) #5, !dbg !1143
  br label %401

; <label>:401:                                    ; preds = %380, %396
  %402 = phi %union.TString* [ %400, %396 ], [ null, %380 ], !dbg !1144
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %322) #4, !dbg !1145
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1145
  %403 = bitcast %struct.lua_TValue* %329 to %union.TString**, !dbg !1089
  store %union.TString* %402, %union.TString** %403, align 8, !dbg !1089, !tbaa !399
  %404 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %327, i64 %328, i32 1, !dbg !1089
  store i32 4, i32* %404, align 8, !dbg !1089, !tbaa !545
  br label %410, !dbg !1146

; <label>:405:                                    ; preds = %338
  %406 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1150, !tbaa !422
  %407 = load i8*, i8** %320, align 8, !dbg !1151, !tbaa !409
  %408 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %406, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %407, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0)) #5, !dbg !1152
  %409 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1153, !tbaa !422
  call void @luaD_throw(%struct.lua_State* %409, i32 3) #5, !dbg !1154
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1155
  br label %410, !dbg !1156

; <label>:410:                                    ; preds = %405, %401, %367, %352, %341
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1157
  %411 = add nuw nsw i64 %328, 1, !dbg !1158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !983
  %412 = icmp eq i64 %411, %325, !dbg !1160
  br i1 %412, label %415, label %413, !dbg !983, !llvm.loop !1161

; <label>:413:                                    ; preds = %410
  %414 = load %struct.lua_TValue*, %struct.lua_TValue** %282, align 8, !dbg !992, !tbaa !972
  br label %326, !dbg !983

; <label>:415:                                    ; preds = %410, %287, %318
  %416 = bitcast i32* %3 to i8*, !dbg !1166
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %416) #4, !dbg !1166
  %417 = load %struct.Zio*, %struct.Zio** %63, align 8, !dbg !1171, !tbaa !425
  %418 = call i64 @luaZ_read(%struct.Zio* %417, i8* nonnull %416, i64 4) #5, !dbg !1172
  %419 = icmp eq i64 %418, 0, !dbg !1174
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1175
  br i1 %419, label %426, label %420, !dbg !1175

; <label>:420:                                    ; preds = %415
  %421 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1179, !tbaa !422
  %422 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 3, !dbg !1180
  %423 = load i8*, i8** %422, align 8, !dbg !1180, !tbaa !409
  %424 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %421, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %423, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !1181
  %425 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1182, !tbaa !422
  call void @luaD_throw(%struct.lua_State* %425, i32 3) #5, !dbg !1183
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1174
  br label %426, !dbg !1174

; <label>:426:                                    ; preds = %415, %420
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1185
  %427 = load i32, i32* %3, align 4, !dbg !1186, !tbaa !656
  %428 = icmp slt i32 %427, 0, !dbg !1186
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1188
  br i1 %428, label %431, label %429, !dbg !1188

; <label>:429:                                    ; preds = %426
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %416) #4, !dbg !1189
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1190
  %430 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1191, !tbaa !422
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1191
  br label %440, !dbg !1191

; <label>:431:                                    ; preds = %426
  %432 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1195, !tbaa !422
  %433 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 3, !dbg !1196
  %434 = load i8*, i8** %433, align 8, !dbg !1196, !tbaa !409
  %435 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %432, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %434, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0)) #5, !dbg !1197
  %436 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1198, !tbaa !422
  call void @luaD_throw(%struct.lua_State* %436, i32 3) #5, !dbg !1199
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1200
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1186
  %437 = load i32, i32* %3, align 4, !dbg !1201, !tbaa !656
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %416) #4, !dbg !1189
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1190
  %438 = icmp sgt i32 %437, -2, !dbg !1191
  %439 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1191, !tbaa !422
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1191
  br i1 %438, label %440, label %446, !dbg !1191

; <label>:440:                                    ; preds = %429, %431
  %441 = phi %struct.lua_State* [ %430, %429 ], [ %439, %431 ]
  %442 = phi i32 [ %427, %429 ], [ %437, %431 ]
  %443 = sext i32 %442 to i64, !dbg !1191
  %444 = shl nsw i64 %443, 3, !dbg !1191
  %445 = call i8* @luaM_realloc_(%struct.lua_State* %441, i8* null, i64 0, i64 %444) #5, !dbg !1191
  br label %448, !dbg !1191

; <label>:446:                                    ; preds = %431
  %447 = call i8* @luaM_toobig(%struct.lua_State* %439) #5, !dbg !1191
  br label %448, !dbg !1191

; <label>:448:                                    ; preds = %446, %440
  %449 = phi i32 [ %442, %440 ], [ %437, %446 ]
  %450 = phi i8* [ %445, %440 ], [ %447, %446 ], !dbg !1191
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1191
  %451 = getelementptr inbounds %struct.Proto, %struct.Proto* %38, i64 0, i32 5, !dbg !1202
  %452 = bitcast %struct.Proto*** %451 to i8**, !dbg !1203
  store i8* %450, i8** %452, align 8, !dbg !1203, !tbaa !1204
  %453 = getelementptr inbounds %struct.Proto, %struct.Proto* %38, i64 0, i32 14, !dbg !1205
  store i32 %449, i32* %453, align 8, !dbg !1206, !tbaa !1207
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1208
  %454 = icmp sgt i32 %449, 0, !dbg !1210
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1212
  br i1 %454, label %456, label %455, !dbg !1212

; <label>:455:                                    ; preds = %448
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1213
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1215
  br label %508, !dbg !1215

; <label>:456:                                    ; preds = %448
  %457 = bitcast i8* %450 to %struct.Proto**, !dbg !1212
  %458 = zext i32 %449 to i64
  store %struct.Proto* null, %struct.Proto** %457, align 8, !dbg !1216, !tbaa !1217
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1218
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1212
  %459 = icmp eq i32 %449, 1, !dbg !1210
  br i1 %459, label %497, label %460, !dbg !1212, !llvm.loop !1219

; <label>:460:                                    ; preds = %456
  %461 = add nsw i64 %458, -2, !dbg !1222
  %462 = add i32 %449, 3, !dbg !1222
  %463 = and i32 %462, 3, !dbg !1222
  %464 = zext i32 %463 to i64, !dbg !1222
  %465 = icmp ult i64 %461, 3, !dbg !1222
  br i1 %465, label %486, label %466, !dbg !1222

; <label>:466:                                    ; preds = %460
  %467 = xor i64 %464, -1, !dbg !1222
  %468 = add nsw i64 %467, %458, !dbg !1222
  br label %469, !dbg !1222

; <label>:469:                                    ; preds = %469, %466
  %470 = phi i64 [ 1, %466 ], [ %483, %469 ]
  %471 = phi i64 [ %468, %466 ], [ %484, %469 ]
  %472 = load %struct.Proto**, %struct.Proto*** %451, align 8, !dbg !1222, !tbaa !1204
  %473 = getelementptr inbounds %struct.Proto*, %struct.Proto** %472, i64 %470, !dbg !1223
  store %struct.Proto* null, %struct.Proto** %473, align 8, !dbg !1216, !tbaa !1217
  %474 = add nuw nsw i64 %470, 1, !dbg !1224
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1218
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1212
  %475 = load %struct.Proto**, %struct.Proto*** %451, align 8, !dbg !1222, !tbaa !1204
  %476 = getelementptr inbounds %struct.Proto*, %struct.Proto** %475, i64 %474, !dbg !1223
  store %struct.Proto* null, %struct.Proto** %476, align 8, !dbg !1216, !tbaa !1217
  %477 = add nuw nsw i64 %470, 2, !dbg !1224
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1218
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1212
  %478 = load %struct.Proto**, %struct.Proto*** %451, align 8, !dbg !1222, !tbaa !1204
  %479 = getelementptr inbounds %struct.Proto*, %struct.Proto** %478, i64 %477, !dbg !1223
  store %struct.Proto* null, %struct.Proto** %479, align 8, !dbg !1216, !tbaa !1217
  %480 = add nuw nsw i64 %470, 3, !dbg !1224
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1218
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1212
  %481 = load %struct.Proto**, %struct.Proto*** %451, align 8, !dbg !1222, !tbaa !1204
  %482 = getelementptr inbounds %struct.Proto*, %struct.Proto** %481, i64 %480, !dbg !1223
  store %struct.Proto* null, %struct.Proto** %482, align 8, !dbg !1216, !tbaa !1217
  %483 = add nuw nsw i64 %470, 4, !dbg !1224
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1218
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1212
  %484 = add i64 %471, -4, !dbg !1212
  %485 = icmp eq i64 %484, 0, !dbg !1212
  br i1 %485, label %486, label %469, !dbg !1212, !llvm.loop !1219

; <label>:486:                                    ; preds = %469, %460
  %487 = phi i64 [ 1, %460 ], [ %483, %469 ]
  %488 = icmp eq i32 %463, 0, !dbg !1212
  br i1 %488, label %497, label %489, !dbg !1212

; <label>:489:                                    ; preds = %486, %489
  %490 = phi i64 [ %494, %489 ], [ %487, %486 ]
  %491 = phi i64 [ %495, %489 ], [ %464, %486 ]
  %492 = load %struct.Proto**, %struct.Proto*** %451, align 8, !dbg !1222, !tbaa !1204
  %493 = getelementptr inbounds %struct.Proto*, %struct.Proto** %492, i64 %490, !dbg !1223
  store %struct.Proto* null, %struct.Proto** %493, align 8, !dbg !1216, !tbaa !1217
  %494 = add nuw nsw i64 %490, 1, !dbg !1224
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1218
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1212
  %495 = add i64 %491, -1, !dbg !1212
  %496 = icmp eq i64 %495, 0, !dbg !1212
  br i1 %496, label %497, label %489, !dbg !1212, !llvm.loop !1225

; <label>:497:                                    ; preds = %486, %489, %456
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1213
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1215
  br i1 %454, label %498, label %508, !dbg !1215

; <label>:498:                                    ; preds = %497
  %499 = zext i32 %449 to i64
  br label %500, !dbg !1226

; <label>:500:                                    ; preds = %500, %498
  %501 = phi i64 [ 0, %498 ], [ %506, %500 ]
  %502 = load %union.TString*, %union.TString** %98, align 8, !dbg !1226, !tbaa !619
  %503 = call fastcc %struct.Proto* @LoadFunction(%struct.LoadState* %0, %union.TString* %502) #5, !dbg !1228
  %504 = load %struct.Proto**, %struct.Proto*** %451, align 8, !dbg !1229, !tbaa !1204
  %505 = getelementptr inbounds %struct.Proto*, %struct.Proto** %504, i64 %501, !dbg !1230
  store %struct.Proto* %503, %struct.Proto** %505, align 8, !dbg !1231, !tbaa !1217
  %506 = add nuw nsw i64 %501, 1, !dbg !1232
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1233
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1215
  %507 = icmp eq i64 %506, %499, !dbg !1234
  br i1 %507, label %508, label %500, !dbg !1215, !llvm.loop !1235

; <label>:508:                                    ; preds = %500, %455, %497
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1238
  %509 = bitcast i32* %15 to i8*, !dbg !1250
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %509) #4, !dbg !1250
  %510 = load %struct.Zio*, %struct.Zio** %63, align 8, !dbg !1255, !tbaa !425
  %511 = call i64 @luaZ_read(%struct.Zio* %510, i8* nonnull %509, i64 4) #5, !dbg !1256
  %512 = icmp eq i64 %511, 0, !dbg !1258
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1259
  br i1 %512, label %519, label %513, !dbg !1259

; <label>:513:                                    ; preds = %508
  %514 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1263, !tbaa !422
  %515 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 3, !dbg !1264
  %516 = load i8*, i8** %515, align 8, !dbg !1264, !tbaa !409
  %517 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %514, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %516, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !1265
  %518 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1266, !tbaa !422
  call void @luaD_throw(%struct.lua_State* %518, i32 3) #5, !dbg !1267
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1268
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1258
  br label %519, !dbg !1258

; <label>:519:                                    ; preds = %513, %508
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1269
  %520 = load i32, i32* %15, align 4, !dbg !1270, !tbaa !656
  %521 = icmp slt i32 %520, 0, !dbg !1270
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1272
  br i1 %521, label %524, label %522, !dbg !1272

; <label>:522:                                    ; preds = %519
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %509) #4, !dbg !1273
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1274
  %523 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1275, !tbaa !422
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1275
  br label %533, !dbg !1275

; <label>:524:                                    ; preds = %519
  %525 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1279, !tbaa !422
  %526 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 3, !dbg !1280
  %527 = load i8*, i8** %526, align 8, !dbg !1280, !tbaa !409
  %528 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %525, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %527, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0)) #5, !dbg !1281
  %529 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1282, !tbaa !422
  call void @luaD_throw(%struct.lua_State* %529, i32 3) #5, !dbg !1283
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1284
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1270
  %530 = load i32, i32* %15, align 4, !dbg !1285, !tbaa !656
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %509) #4, !dbg !1273
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1274
  %531 = icmp sgt i32 %530, -2, !dbg !1275
  %532 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1275, !tbaa !422
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1275
  br i1 %531, label %533, label %539, !dbg !1275

; <label>:533:                                    ; preds = %524, %522
  %534 = phi %struct.lua_State* [ %523, %522 ], [ %532, %524 ]
  %535 = phi i32 [ %520, %522 ], [ %530, %524 ]
  %536 = sext i32 %535 to i64, !dbg !1275
  %537 = shl nsw i64 %536, 2, !dbg !1275
  %538 = call i8* @luaM_realloc_(%struct.lua_State* %534, i8* null, i64 0, i64 %537) #5, !dbg !1275
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1275
  br label %543, !dbg !1275

; <label>:539:                                    ; preds = %524
  %540 = call i8* @luaM_toobig(%struct.lua_State* %532) #5, !dbg !1275
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1275
  %541 = sext i32 %530 to i64, !dbg !1287
  %542 = shl nsw i64 %541, 2, !dbg !1287
  br label %543, !dbg !1275

; <label>:543:                                    ; preds = %539, %533
  %544 = phi i32 [ %530, %539 ], [ %535, %533 ]
  %545 = phi i64 [ %542, %539 ], [ %537, %533 ], !dbg !1287
  %546 = phi i8* [ %540, %539 ], [ %538, %533 ], !dbg !1275
  %547 = getelementptr inbounds %struct.Proto, %struct.Proto* %38, i64 0, i32 6, !dbg !1288
  %548 = bitcast i32** %547 to i8**, !dbg !1289
  store i8* %546, i8** %548, align 8, !dbg !1289, !tbaa !1290
  %549 = getelementptr inbounds %struct.Proto, %struct.Proto* %38, i64 0, i32 13, !dbg !1291
  store i32 %544, i32* %549, align 4, !dbg !1292, !tbaa !1293
  %550 = load %struct.Zio*, %struct.Zio** %63, align 8, !dbg !1298, !tbaa !425
  %551 = call i64 @luaZ_read(%struct.Zio* %550, i8* %546, i64 %545) #5, !dbg !1299
  %552 = icmp eq i64 %551, 0, !dbg !1301
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1302
  br i1 %552, label %559, label %553, !dbg !1302

; <label>:553:                                    ; preds = %543
  %554 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1306, !tbaa !422
  %555 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 3, !dbg !1307
  %556 = load i8*, i8** %555, align 8, !dbg !1307, !tbaa !409
  %557 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %554, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %556, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !1308
  %558 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1309, !tbaa !422
  call void @luaD_throw(%struct.lua_State* %558, i32 3) #5, !dbg !1310
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1311
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1301
  br label %559, !dbg !1301

; <label>:559:                                    ; preds = %553, %543
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1312
  %560 = bitcast i32* %14 to i8*, !dbg !1315
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %560) #4, !dbg !1315
  %561 = load %struct.Zio*, %struct.Zio** %63, align 8, !dbg !1320, !tbaa !425
  %562 = call i64 @luaZ_read(%struct.Zio* %561, i8* nonnull %560, i64 4) #5, !dbg !1321
  %563 = icmp eq i64 %562, 0, !dbg !1323
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1324
  br i1 %563, label %570, label %564, !dbg !1324

; <label>:564:                                    ; preds = %559
  %565 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1328, !tbaa !422
  %566 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 3, !dbg !1329
  %567 = load i8*, i8** %566, align 8, !dbg !1329, !tbaa !409
  %568 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %565, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %567, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !1330
  %569 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1331, !tbaa !422
  call void @luaD_throw(%struct.lua_State* %569, i32 3) #5, !dbg !1332
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1333
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1323
  br label %570, !dbg !1323

; <label>:570:                                    ; preds = %564, %559
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1334
  %571 = load i32, i32* %14, align 4, !dbg !1335, !tbaa !656
  %572 = icmp slt i32 %571, 0, !dbg !1335
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1337
  br i1 %572, label %575, label %573, !dbg !1337

; <label>:573:                                    ; preds = %570
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %560) #4, !dbg !1338
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1339
  %574 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1340, !tbaa !422
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1340
  br label %584, !dbg !1340

; <label>:575:                                    ; preds = %570
  %576 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1344, !tbaa !422
  %577 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 3, !dbg !1345
  %578 = load i8*, i8** %577, align 8, !dbg !1345, !tbaa !409
  %579 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %576, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %578, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0)) #5, !dbg !1346
  %580 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1347, !tbaa !422
  call void @luaD_throw(%struct.lua_State* %580, i32 3) #5, !dbg !1348
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1349
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1335
  %581 = load i32, i32* %14, align 4, !dbg !1350, !tbaa !656
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %560) #4, !dbg !1338
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1339
  %582 = icmp sgt i32 %581, -2, !dbg !1340
  %583 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1340, !tbaa !422
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1340
  br i1 %582, label %584, label %590, !dbg !1340

; <label>:584:                                    ; preds = %575, %573
  %585 = phi %struct.lua_State* [ %574, %573 ], [ %583, %575 ]
  %586 = phi i32 [ %571, %573 ], [ %581, %575 ]
  %587 = sext i32 %586 to i64, !dbg !1340
  %588 = shl nsw i64 %587, 4, !dbg !1340
  %589 = call i8* @luaM_realloc_(%struct.lua_State* %585, i8* null, i64 0, i64 %588) #5, !dbg !1340
  br label %592, !dbg !1340

; <label>:590:                                    ; preds = %575
  %591 = call i8* @luaM_toobig(%struct.lua_State* %583) #5, !dbg !1340
  br label %592, !dbg !1340

; <label>:592:                                    ; preds = %590, %584
  %593 = phi i32 [ %586, %584 ], [ %581, %590 ]
  %594 = phi i8* [ %589, %584 ], [ %591, %590 ], !dbg !1340
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1340
  %595 = getelementptr inbounds %struct.Proto, %struct.Proto* %38, i64 0, i32 7, !dbg !1351
  %596 = bitcast %struct.LocVar** %595 to i8**, !dbg !1352
  store i8* %594, i8** %596, align 8, !dbg !1352, !tbaa !1353
  %597 = getelementptr inbounds %struct.Proto, %struct.Proto* %38, i64 0, i32 15, !dbg !1354
  store i32 %593, i32* %597, align 4, !dbg !1355, !tbaa !1356
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1358
  %598 = icmp sgt i32 %593, 0, !dbg !1360
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1362
  %599 = bitcast i8* %594 to %struct.LocVar*, !dbg !1362
  br i1 %598, label %601, label %600, !dbg !1362

; <label>:600:                                    ; preds = %592
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1363
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1365
  br label %716, !dbg !1365

; <label>:601:                                    ; preds = %592
  %602 = zext i32 %593 to i64
  %603 = add nsw i64 %602, -1, !dbg !1362
  %604 = and i64 %602, 3, !dbg !1362
  %605 = icmp ult i64 %603, 3, !dbg !1362
  br i1 %605, label %621, label %606, !dbg !1362

; <label>:606:                                    ; preds = %601
  %607 = sub nsw i64 %602, %604, !dbg !1362
  br label %608, !dbg !1362

; <label>:608:                                    ; preds = %608, %606
  %609 = phi i64 [ 0, %606 ], [ %618, %608 ]
  %610 = phi i64 [ %607, %606 ], [ %619, %608 ]
  %611 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %599, i64 %609, i32 0, !dbg !1366
  store %union.TString* null, %union.TString** %611, align 8, !dbg !1367, !tbaa !1368
  %612 = or i64 %609, 1, !dbg !1370
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1371
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1362
  %613 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %599, i64 %612, i32 0, !dbg !1366
  store %union.TString* null, %union.TString** %613, align 8, !dbg !1367, !tbaa !1368
  %614 = or i64 %609, 2, !dbg !1370
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1371
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1362
  %615 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %599, i64 %614, i32 0, !dbg !1366
  store %union.TString* null, %union.TString** %615, align 8, !dbg !1367, !tbaa !1368
  %616 = or i64 %609, 3, !dbg !1370
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1371
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1362
  %617 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %599, i64 %616, i32 0, !dbg !1366
  store %union.TString* null, %union.TString** %617, align 8, !dbg !1367, !tbaa !1368
  %618 = add nuw nsw i64 %609, 4, !dbg !1370
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1371
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1362
  %619 = add i64 %610, -4, !dbg !1362
  %620 = icmp eq i64 %619, 0, !dbg !1362
  br i1 %620, label %621, label %608, !dbg !1362, !llvm.loop !1372

; <label>:621:                                    ; preds = %608, %601
  %622 = phi i64 [ 0, %601 ], [ %618, %608 ]
  %623 = icmp eq i64 %604, 0, !dbg !1362
  br i1 %623, label %631, label %624, !dbg !1362

; <label>:624:                                    ; preds = %621, %624
  %625 = phi i64 [ %628, %624 ], [ %622, %621 ]
  %626 = phi i64 [ %629, %624 ], [ %604, %621 ]
  %627 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %599, i64 %625, i32 0, !dbg !1366
  store %union.TString* null, %union.TString** %627, align 8, !dbg !1367, !tbaa !1368
  %628 = add nuw nsw i64 %625, 1, !dbg !1370
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1371
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1362
  %629 = add i64 %626, -1, !dbg !1362
  %630 = icmp eq i64 %629, 0, !dbg !1362
  br i1 %630, label %631, label %624, !dbg !1362, !llvm.loop !1375

; <label>:631:                                    ; preds = %624, %621
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1363
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1365
  %632 = bitcast i64* %13 to i8*
  %633 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 3
  %634 = bitcast i32* %12 to i8*
  %635 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 2
  %636 = bitcast i32* %11 to i8*
  br label %637, !dbg !1365

; <label>:637:                                    ; preds = %710, %631
  %638 = phi i64 [ 0, %631 ], [ %714, %710 ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %632) #4, !dbg !1380
  %639 = load %struct.Zio*, %struct.Zio** %63, align 8, !dbg !1385, !tbaa !425
  %640 = call i64 @luaZ_read(%struct.Zio* %639, i8* nonnull %632, i64 8) #5, !dbg !1386
  %641 = icmp eq i64 %640, 0, !dbg !1388
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1389
  br i1 %641, label %647, label %642, !dbg !1389

; <label>:642:                                    ; preds = %637
  %643 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1393, !tbaa !422
  %644 = load i8*, i8** %633, align 8, !dbg !1394, !tbaa !409
  %645 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %643, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %644, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !1395
  %646 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1396, !tbaa !422
  call void @luaD_throw(%struct.lua_State* %646, i32 3) #5, !dbg !1397
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1398
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1388
  br label %647, !dbg !1388

; <label>:647:                                    ; preds = %642, %637
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1399
  %648 = load i64, i64* %13, align 8, !dbg !1400, !tbaa !583
  %649 = icmp eq i64 %648, 0, !dbg !1402
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1403
  br i1 %649, label %668, label %650, !dbg !1403

; <label>:650:                                    ; preds = %647
  %651 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1404, !tbaa !422
  %652 = load %struct.Mbuffer*, %struct.Mbuffer** %635, align 8, !dbg !1405, !tbaa !428
  %653 = call i8* @luaZ_openspace(%struct.lua_State* %651, %struct.Mbuffer* %652, i64 %648) #5, !dbg !1406
  %654 = load i64, i64* %13, align 8, !dbg !1408, !tbaa !583
  %655 = load %struct.Zio*, %struct.Zio** %63, align 8, !dbg !1413, !tbaa !425
  %656 = call i64 @luaZ_read(%struct.Zio* %655, i8* %653, i64 %654) #5, !dbg !1414
  %657 = icmp eq i64 %656, 0, !dbg !1416
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1417
  br i1 %657, label %663, label %658, !dbg !1417

; <label>:658:                                    ; preds = %650
  %659 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1421, !tbaa !422
  %660 = load i8*, i8** %633, align 8, !dbg !1422, !tbaa !409
  %661 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %659, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %660, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !1423
  %662 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1424, !tbaa !422
  call void @luaD_throw(%struct.lua_State* %662, i32 3) #5, !dbg !1425
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1426
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1416
  br label %663, !dbg !1416

; <label>:663:                                    ; preds = %658, %650
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1427
  %664 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1428, !tbaa !422
  %665 = load i64, i64* %13, align 8, !dbg !1429, !tbaa !583
  %666 = add i64 %665, -1, !dbg !1430
  %667 = call %union.TString* @luaS_newlstr(%struct.lua_State* %664, i8* %653, i64 %666) #5, !dbg !1431
  br label %668

; <label>:668:                                    ; preds = %647, %663
  %669 = phi %union.TString* [ %667, %663 ], [ null, %647 ], !dbg !1432
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %632) #4, !dbg !1433
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1433
  %670 = load %struct.LocVar*, %struct.LocVar** %595, align 8, !dbg !1434, !tbaa !1353
  %671 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %670, i64 %638, i32 0, !dbg !1435
  store %union.TString* %669, %union.TString** %671, align 8, !dbg !1436, !tbaa !1368
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %634) #4, !dbg !1439
  %672 = load %struct.Zio*, %struct.Zio** %63, align 8, !dbg !1444, !tbaa !425
  %673 = call i64 @luaZ_read(%struct.Zio* %672, i8* nonnull %634, i64 4) #5, !dbg !1445
  %674 = icmp eq i64 %673, 0, !dbg !1447
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1448
  br i1 %674, label %680, label %675, !dbg !1448

; <label>:675:                                    ; preds = %668
  %676 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1452, !tbaa !422
  %677 = load i8*, i8** %633, align 8, !dbg !1453, !tbaa !409
  %678 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %676, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %677, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !1454
  %679 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1455, !tbaa !422
  call void @luaD_throw(%struct.lua_State* %679, i32 3) #5, !dbg !1456
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1457
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1447
  br label %680, !dbg !1447

; <label>:680:                                    ; preds = %675, %668
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1458
  %681 = load i32, i32* %12, align 4, !dbg !1459, !tbaa !656
  %682 = icmp slt i32 %681, 0, !dbg !1459
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1461
  br i1 %682, label %683, label %689, !dbg !1461

; <label>:683:                                    ; preds = %680
  %684 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1465, !tbaa !422
  %685 = load i8*, i8** %633, align 8, !dbg !1466, !tbaa !409
  %686 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %684, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %685, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0)) #5, !dbg !1467
  %687 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1468, !tbaa !422
  call void @luaD_throw(%struct.lua_State* %687, i32 3) #5, !dbg !1469
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1470
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1459
  %688 = load i32, i32* %12, align 4, !dbg !1471, !tbaa !656
  br label %689, !dbg !1459

; <label>:689:                                    ; preds = %683, %680
  %690 = phi i32 [ %688, %683 ], [ %681, %680 ], !dbg !1471
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %634) #4, !dbg !1472
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1473
  %691 = load %struct.LocVar*, %struct.LocVar** %595, align 8, !dbg !1474, !tbaa !1353
  %692 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %691, i64 %638, i32 1, !dbg !1475
  store i32 %690, i32* %692, align 8, !dbg !1476, !tbaa !1477
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %636) #4, !dbg !1480
  %693 = load %struct.Zio*, %struct.Zio** %63, align 8, !dbg !1485, !tbaa !425
  %694 = call i64 @luaZ_read(%struct.Zio* %693, i8* nonnull %636, i64 4) #5, !dbg !1486
  %695 = icmp eq i64 %694, 0, !dbg !1488
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1489
  br i1 %695, label %701, label %696, !dbg !1489

; <label>:696:                                    ; preds = %689
  %697 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1493, !tbaa !422
  %698 = load i8*, i8** %633, align 8, !dbg !1494, !tbaa !409
  %699 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %697, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %698, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !1495
  %700 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1496, !tbaa !422
  call void @luaD_throw(%struct.lua_State* %700, i32 3) #5, !dbg !1497
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1498
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1488
  br label %701, !dbg !1488

; <label>:701:                                    ; preds = %696, %689
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1499
  %702 = load i32, i32* %11, align 4, !dbg !1500, !tbaa !656
  %703 = icmp slt i32 %702, 0, !dbg !1500
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1502
  br i1 %703, label %704, label %710, !dbg !1502

; <label>:704:                                    ; preds = %701
  %705 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1506, !tbaa !422
  %706 = load i8*, i8** %633, align 8, !dbg !1507, !tbaa !409
  %707 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %705, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %706, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0)) #5, !dbg !1508
  %708 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1509, !tbaa !422
  call void @luaD_throw(%struct.lua_State* %708, i32 3) #5, !dbg !1510
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1511
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1500
  %709 = load i32, i32* %11, align 4, !dbg !1512, !tbaa !656
  br label %710, !dbg !1500

; <label>:710:                                    ; preds = %704, %701
  %711 = phi i32 [ %709, %704 ], [ %702, %701 ], !dbg !1512
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %636) #4, !dbg !1513
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1514
  %712 = load %struct.LocVar*, %struct.LocVar** %595, align 8, !dbg !1515, !tbaa !1353
  %713 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %712, i64 %638, i32 2, !dbg !1516
  store i32 %711, i32* %713, align 4, !dbg !1517, !tbaa !1518
  %714 = add nuw nsw i64 %638, 1, !dbg !1519
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1520
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1365
  %715 = icmp eq i64 %714, %602, !dbg !1521
  br i1 %715, label %716, label %637, !dbg !1365, !llvm.loop !1522

; <label>:716:                                    ; preds = %710, %600
  %717 = bitcast i32* %10 to i8*, !dbg !1527
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %717) #4, !dbg !1527
  %718 = load %struct.Zio*, %struct.Zio** %63, align 8, !dbg !1532, !tbaa !425
  %719 = call i64 @luaZ_read(%struct.Zio* %718, i8* nonnull %717, i64 4) #5, !dbg !1533
  %720 = icmp eq i64 %719, 0, !dbg !1535
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1536
  br i1 %720, label %727, label %721, !dbg !1536

; <label>:721:                                    ; preds = %716
  %722 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1540, !tbaa !422
  %723 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 3, !dbg !1541
  %724 = load i8*, i8** %723, align 8, !dbg !1541, !tbaa !409
  %725 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %722, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %724, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !1542
  %726 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1543, !tbaa !422
  call void @luaD_throw(%struct.lua_State* %726, i32 3) #5, !dbg !1544
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1545
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1535
  br label %727, !dbg !1535

; <label>:727:                                    ; preds = %721, %716
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1546
  %728 = load i32, i32* %10, align 4, !dbg !1547, !tbaa !656
  %729 = icmp slt i32 %728, 0, !dbg !1547
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1549
  br i1 %729, label %732, label %730, !dbg !1549

; <label>:730:                                    ; preds = %727
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %717) #4, !dbg !1550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1551
  %731 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1552, !tbaa !422
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1552
  br label %741, !dbg !1552

; <label>:732:                                    ; preds = %727
  %733 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1556, !tbaa !422
  %734 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 3, !dbg !1557
  %735 = load i8*, i8** %734, align 8, !dbg !1557, !tbaa !409
  %736 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %733, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %735, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0)) #5, !dbg !1558
  %737 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1559, !tbaa !422
  call void @luaD_throw(%struct.lua_State* %737, i32 3) #5, !dbg !1560
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1561
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1547
  %738 = load i32, i32* %10, align 4, !dbg !1562, !tbaa !656
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %717) #4, !dbg !1550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1551
  %739 = icmp sgt i32 %738, -2, !dbg !1552
  %740 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1552, !tbaa !422
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1552
  br i1 %739, label %741, label %747, !dbg !1552

; <label>:741:                                    ; preds = %732, %730
  %742 = phi %struct.lua_State* [ %731, %730 ], [ %740, %732 ]
  %743 = phi i32 [ %728, %730 ], [ %738, %732 ]
  %744 = sext i32 %743 to i64, !dbg !1552
  %745 = shl nsw i64 %744, 3, !dbg !1552
  %746 = call i8* @luaM_realloc_(%struct.lua_State* %742, i8* null, i64 0, i64 %745) #5, !dbg !1552
  br label %749, !dbg !1552

; <label>:747:                                    ; preds = %732
  %748 = call i8* @luaM_toobig(%struct.lua_State* %740) #5, !dbg !1552
  br label %749, !dbg !1552

; <label>:749:                                    ; preds = %747, %741
  %750 = phi i32 [ %743, %741 ], [ %738, %747 ]
  %751 = phi i8* [ %746, %741 ], [ %748, %747 ], !dbg !1552
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1552
  %752 = getelementptr inbounds %struct.Proto, %struct.Proto* %38, i64 0, i32 8, !dbg !1563
  %753 = bitcast %union.TString*** %752 to i8**, !dbg !1564
  store i8* %751, i8** %753, align 8, !dbg !1564, !tbaa !1565
  %754 = getelementptr inbounds %struct.Proto, %struct.Proto* %38, i64 0, i32 10, !dbg !1566
  store i32 %750, i32* %754, align 8, !dbg !1567, !tbaa !1568
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1569
  %755 = icmp sgt i32 %750, 0, !dbg !1571
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1573
  br i1 %755, label %757, label %756, !dbg !1573

; <label>:756:                                    ; preds = %749
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1574
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1576
  br label %839, !dbg !1576

; <label>:757:                                    ; preds = %749
  %758 = bitcast i8* %751 to %union.TString**, !dbg !1573
  %759 = zext i32 %750 to i64
  store %union.TString* null, %union.TString** %758, align 8, !dbg !1577, !tbaa !1217
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1578
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1573
  %760 = icmp eq i32 %750, 1, !dbg !1571
  br i1 %760, label %798, label %761, !dbg !1573, !llvm.loop !1579

; <label>:761:                                    ; preds = %757
  %762 = add nsw i64 %759, -2, !dbg !1582
  %763 = add i32 %750, 3, !dbg !1582
  %764 = and i32 %763, 3, !dbg !1582
  %765 = zext i32 %764 to i64, !dbg !1582
  %766 = icmp ult i64 %762, 3, !dbg !1582
  br i1 %766, label %787, label %767, !dbg !1582

; <label>:767:                                    ; preds = %761
  %768 = xor i64 %765, -1, !dbg !1582
  %769 = add nsw i64 %768, %759, !dbg !1582
  br label %770, !dbg !1582

; <label>:770:                                    ; preds = %770, %767
  %771 = phi i64 [ 1, %767 ], [ %784, %770 ]
  %772 = phi i64 [ %769, %767 ], [ %785, %770 ]
  %773 = load %union.TString**, %union.TString*** %752, align 8, !dbg !1582, !tbaa !1565
  %774 = getelementptr inbounds %union.TString*, %union.TString** %773, i64 %771, !dbg !1583
  store %union.TString* null, %union.TString** %774, align 8, !dbg !1577, !tbaa !1217
  %775 = add nuw nsw i64 %771, 1, !dbg !1584
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1578
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1573
  %776 = load %union.TString**, %union.TString*** %752, align 8, !dbg !1582, !tbaa !1565
  %777 = getelementptr inbounds %union.TString*, %union.TString** %776, i64 %775, !dbg !1583
  store %union.TString* null, %union.TString** %777, align 8, !dbg !1577, !tbaa !1217
  %778 = add nuw nsw i64 %771, 2, !dbg !1584
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1578
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1573
  %779 = load %union.TString**, %union.TString*** %752, align 8, !dbg !1582, !tbaa !1565
  %780 = getelementptr inbounds %union.TString*, %union.TString** %779, i64 %778, !dbg !1583
  store %union.TString* null, %union.TString** %780, align 8, !dbg !1577, !tbaa !1217
  %781 = add nuw nsw i64 %771, 3, !dbg !1584
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1578
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1573
  %782 = load %union.TString**, %union.TString*** %752, align 8, !dbg !1582, !tbaa !1565
  %783 = getelementptr inbounds %union.TString*, %union.TString** %782, i64 %781, !dbg !1583
  store %union.TString* null, %union.TString** %783, align 8, !dbg !1577, !tbaa !1217
  %784 = add nuw nsw i64 %771, 4, !dbg !1584
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1578
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1573
  %785 = add i64 %772, -4, !dbg !1573
  %786 = icmp eq i64 %785, 0, !dbg !1573
  br i1 %786, label %787, label %770, !dbg !1573, !llvm.loop !1579

; <label>:787:                                    ; preds = %770, %761
  %788 = phi i64 [ 1, %761 ], [ %784, %770 ]
  %789 = icmp eq i32 %764, 0, !dbg !1573
  br i1 %789, label %798, label %790, !dbg !1573

; <label>:790:                                    ; preds = %787, %790
  %791 = phi i64 [ %795, %790 ], [ %788, %787 ]
  %792 = phi i64 [ %796, %790 ], [ %765, %787 ]
  %793 = load %union.TString**, %union.TString*** %752, align 8, !dbg !1582, !tbaa !1565
  %794 = getelementptr inbounds %union.TString*, %union.TString** %793, i64 %791, !dbg !1583
  store %union.TString* null, %union.TString** %794, align 8, !dbg !1577, !tbaa !1217
  %795 = add nuw nsw i64 %791, 1, !dbg !1584
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1578
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1573
  %796 = add i64 %792, -1, !dbg !1573
  %797 = icmp eq i64 %796, 0, !dbg !1573
  br i1 %797, label %798, label %790, !dbg !1573, !llvm.loop !1585

; <label>:798:                                    ; preds = %787, %790, %757
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1574
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1576
  %799 = bitcast i64* %9 to i8*
  %800 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 3
  %801 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 2
  br label %802, !dbg !1576

; <label>:802:                                    ; preds = %833, %798
  %803 = phi i64 [ 0, %798 ], [ %837, %833 ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %799) #4, !dbg !1589
  %804 = load %struct.Zio*, %struct.Zio** %63, align 8, !dbg !1594, !tbaa !425
  %805 = call i64 @luaZ_read(%struct.Zio* %804, i8* nonnull %799, i64 8) #5, !dbg !1595
  %806 = icmp eq i64 %805, 0, !dbg !1597
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1598
  br i1 %806, label %812, label %807, !dbg !1598

; <label>:807:                                    ; preds = %802
  %808 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1602, !tbaa !422
  %809 = load i8*, i8** %800, align 8, !dbg !1603, !tbaa !409
  %810 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %808, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %809, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !1604
  %811 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1605, !tbaa !422
  call void @luaD_throw(%struct.lua_State* %811, i32 3) #5, !dbg !1606
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1607
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1597
  br label %812, !dbg !1597

; <label>:812:                                    ; preds = %807, %802
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1608
  %813 = load i64, i64* %9, align 8, !dbg !1609, !tbaa !583
  %814 = icmp eq i64 %813, 0, !dbg !1611
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1612
  br i1 %814, label %833, label %815, !dbg !1612

; <label>:815:                                    ; preds = %812
  %816 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1613, !tbaa !422
  %817 = load %struct.Mbuffer*, %struct.Mbuffer** %801, align 8, !dbg !1614, !tbaa !428
  %818 = call i8* @luaZ_openspace(%struct.lua_State* %816, %struct.Mbuffer* %817, i64 %813) #5, !dbg !1615
  %819 = load i64, i64* %9, align 8, !dbg !1617, !tbaa !583
  %820 = load %struct.Zio*, %struct.Zio** %63, align 8, !dbg !1622, !tbaa !425
  %821 = call i64 @luaZ_read(%struct.Zio* %820, i8* %818, i64 %819) #5, !dbg !1623
  %822 = icmp eq i64 %821, 0, !dbg !1625
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1626
  br i1 %822, label %828, label %823, !dbg !1626

; <label>:823:                                    ; preds = %815
  %824 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1630, !tbaa !422
  %825 = load i8*, i8** %800, align 8, !dbg !1631, !tbaa !409
  %826 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %824, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %825, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !1632
  %827 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1633, !tbaa !422
  call void @luaD_throw(%struct.lua_State* %827, i32 3) #5, !dbg !1634
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1635
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1625
  br label %828, !dbg !1625

; <label>:828:                                    ; preds = %823, %815
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1636
  %829 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1637, !tbaa !422
  %830 = load i64, i64* %9, align 8, !dbg !1638, !tbaa !583
  %831 = add i64 %830, -1, !dbg !1639
  %832 = call %union.TString* @luaS_newlstr(%struct.lua_State* %829, i8* %818, i64 %831) #5, !dbg !1640
  br label %833

; <label>:833:                                    ; preds = %812, %828
  %834 = phi %union.TString* [ %832, %828 ], [ null, %812 ], !dbg !1641
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %799) #4, !dbg !1642
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1642
  %835 = load %union.TString**, %union.TString*** %752, align 8, !dbg !1643, !tbaa !1565
  %836 = getelementptr inbounds %union.TString*, %union.TString** %835, i64 %803, !dbg !1644
  store %union.TString* %834, %union.TString** %836, align 8, !dbg !1645, !tbaa !1217
  %837 = add nuw nsw i64 %803, 1, !dbg !1646
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1647
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1576
  %838 = icmp eq i64 %837, %759, !dbg !1648
  br i1 %838, label %839, label %802, !dbg !1576, !llvm.loop !1649

; <label>:839:                                    ; preds = %833, %756
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1652
  %840 = call i32 @luaG_checkcode(%struct.Proto* nonnull %38) #5, !dbg !1653
  %841 = icmp eq i32 %840, 0, !dbg !1653
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1655
  br i1 %841, label %842, label %848, !dbg !1655

; <label>:842:                                    ; preds = %839
  %843 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1659, !tbaa !422
  %844 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 3, !dbg !1660
  %845 = load i8*, i8** %844, align 8, !dbg !1660, !tbaa !409
  %846 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %843, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %845, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0)) #5, !dbg !1661
  %847 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1662, !tbaa !422
  call void @luaD_throw(%struct.lua_State* %847, i32 3) #5, !dbg !1663
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1664
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1653
  br label %848, !dbg !1653

; <label>:848:                                    ; preds = %839, %842
  %849 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !1665, !tbaa !422
  %850 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %849, i64 0, i32 4, !dbg !1666
  %851 = load %struct.lua_TValue*, %struct.lua_TValue** %850, align 8, !dbg !1667, !tbaa !544
  %852 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %851, i64 -1, !dbg !1667
  store %struct.lua_TValue* %852, %struct.lua_TValue** %850, align 8, !dbg !1667, !tbaa !544
  %853 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %849, i64 0, i32 15, !dbg !1668
  %854 = load i16, i16* %853, align 8, !dbg !1669, !tbaa !523
  %855 = add i16 %854, -1, !dbg !1669
  store i16 %855, i16* %853, align 8, !dbg !1669, !tbaa !523
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1670
  ret %struct.Proto* %38, !dbg !1670
}

; Function Attrs: noredzone
declare hidden %union.TString* @luaS_newlstr(%struct.lua_State*, i8*, i64) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define hidden void @luaU_header(i8*) local_unnamed_addr #0 !dbg !434 {
  %2 = tail call i8* @memcpy(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 4) #5, !dbg !1673
  %3 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !1674
  %4 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !1675
  store i8 81, i8* %3, align 1, !dbg !1676, !tbaa !399
  %5 = getelementptr inbounds i8, i8* %0, i64 6, !dbg !1677
  store i8 0, i8* %4, align 1, !dbg !1678, !tbaa !399
  %6 = getelementptr inbounds i8, i8* %0, i64 7, !dbg !1679
  store i8 1, i8* %5, align 1, !dbg !1680, !tbaa !399
  %7 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !1681
  store i8 4, i8* %6, align 1, !dbg !1682, !tbaa !399
  %8 = getelementptr inbounds i8, i8* %0, i64 9, !dbg !1683
  store i8 8, i8* %7, align 1, !dbg !1684, !tbaa !399
  %9 = getelementptr inbounds i8, i8* %0, i64 10, !dbg !1685
  store i8 4, i8* %8, align 1, !dbg !1686, !tbaa !399
  %10 = getelementptr inbounds i8, i8* %0, i64 11, !dbg !1687
  store i8 8, i8* %9, align 1, !dbg !1688, !tbaa !399
  store i8 0, i8* %10, align 1, !dbg !1689, !tbaa !399
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1690
  ret void, !dbg !1690
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
!402 = !DILocation(line: 198, column: 11, scope: !398)
!403 = !DILocation(line: 198, column: 17, scope: !398)
!404 = !DILocation(line: 198, column: 25, scope: !398)
!405 = !DILocation(line: 198, column: 6, scope: !347)
!406 = !DILocation(line: 199, column: 14, scope: !398)
!407 = !DILocation(line: 199, column: 5, scope: !398)
!408 = !DILocation(line: 199, column: 9, scope: !398)
!409 = !{!410, !411, i64 24}
!410 = !{!"", !411, i64 0, !411, i64 8, !411, i64 16, !411, i64 24}
!411 = !{!"any pointer", !400, i64 0}
!412 = !DILocation(line: 199, column: 3, scope: !398)
!413 = !DILocation(line: 200, column: 16, scope: !414)
!414 = distinct !DILexicalBlock(scope: !398, file: !1, line: 200, column: 11)
!415 = !DILocation(line: 200, column: 11, scope: !398)
!416 = !DILocation(line: 0, scope: !414)
!417 = !DILocation(line: 201, column: 9, scope: !414)
!418 = !DILocation(line: 201, column: 3, scope: !414)
!419 = !DILocation(line: 203, column: 9, scope: !414)
!420 = !DILocation(line: 204, column: 4, scope: !347)
!421 = !DILocation(line: 204, column: 5, scope: !347)
!422 = !{!410, !411, i64 0}
!423 = !DILocation(line: 205, column: 4, scope: !347)
!424 = !DILocation(line: 205, column: 5, scope: !347)
!425 = !{!410, !411, i64 8}
!426 = !DILocation(line: 206, column: 4, scope: !347)
!427 = !DILocation(line: 206, column: 5, scope: !347)
!428 = !{!410, !411, i64 16}
!429 = !DILocation(line: 197, column: 12, scope: !347)
!430 = !DILocation(line: 183, column: 35, scope: !379, inlinedAt: !390)
!431 = !DILocation(line: 185, column: 2, scope: !379, inlinedAt: !390)
!432 = !DILocation(line: 186, column: 2, scope: !379, inlinedAt: !390)
!433 = !DILocalVariable(name: "h", arg: 1, scope: !434, file: !1, line: 214, type: !5)
!434 = distinct !DISubprogram(name: "luaU_header", scope: !1, file: !1, line: 214, type: !435, isLocal: false, isDefinition: true, scopeLine: 215, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !437)
!435 = !DISubroutineType(types: !436)
!436 = !{null, !5}
!437 = !{!433, !438}
!438 = !DILocalVariable(name: "x", scope: !434, file: !1, line: 216, type: !85)
!439 = !DILocation(line: 214, column: 25, scope: !434, inlinedAt: !440)
!440 = distinct !DILocation(line: 187, column: 2, scope: !379, inlinedAt: !390)
!441 = !DILocation(line: 216, column: 6, scope: !434, inlinedAt: !440)
!442 = !DILocation(line: 217, column: 2, scope: !434, inlinedAt: !440)
!443 = !DILocation(line: 218, column: 3, scope: !434, inlinedAt: !440)
!444 = !DILocation(line: 219, column: 4, scope: !434, inlinedAt: !440)
!445 = !DILocation(line: 219, column: 6, scope: !434, inlinedAt: !440)
!446 = !DILocation(line: 220, column: 4, scope: !434, inlinedAt: !440)
!447 = !DILocation(line: 220, column: 6, scope: !434, inlinedAt: !440)
!448 = !DILocation(line: 221, column: 4, scope: !434, inlinedAt: !440)
!449 = !DILocation(line: 221, column: 6, scope: !434, inlinedAt: !440)
!450 = !DILocation(line: 222, column: 4, scope: !434, inlinedAt: !440)
!451 = !DILocation(line: 222, column: 6, scope: !434, inlinedAt: !440)
!452 = !DILocation(line: 223, column: 4, scope: !434, inlinedAt: !440)
!453 = !DILocation(line: 223, column: 6, scope: !434, inlinedAt: !440)
!454 = !DILocation(line: 224, column: 4, scope: !434, inlinedAt: !440)
!455 = !DILocation(line: 224, column: 6, scope: !434, inlinedAt: !440)
!456 = !DILocation(line: 225, column: 4, scope: !434, inlinedAt: !440)
!457 = !DILocation(line: 225, column: 6, scope: !434, inlinedAt: !440)
!458 = !DILocation(line: 226, column: 6, scope: !434, inlinedAt: !440)
!459 = !DILocation(line: 227, column: 1, scope: !434, inlinedAt: !440)
!460 = !DILocalVariable(name: "S", arg: 1, scope: !461, file: !1, line: 48, type: !382)
!461 = distinct !DISubprogram(name: "LoadBlock", scope: !1, file: !1, line: 48, type: !462, isLocal: true, isDefinition: true, scopeLine: 49, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !464)
!462 = !DISubroutineType(types: !463)
!463 = !{null, !382, !34, !47}
!464 = !{!460, !465, !466, !467}
!465 = !DILocalVariable(name: "b", arg: 2, scope: !461, file: !1, line: 48, type: !34)
!466 = !DILocalVariable(name: "size", arg: 3, scope: !461, file: !1, line: 48, type: !47)
!467 = !DILocalVariable(name: "r", scope: !461, file: !1, line: 50, type: !47)
!468 = !DILocation(line: 48, column: 34, scope: !461, inlinedAt: !469)
!469 = distinct !DILocation(line: 188, column: 2, scope: !379, inlinedAt: !390)
!470 = !DILocation(line: 48, column: 43, scope: !461, inlinedAt: !469)
!471 = !DILocation(line: 48, column: 53, scope: !461, inlinedAt: !469)
!472 = !DILocation(line: 50, column: 11, scope: !461, inlinedAt: !469)
!473 = !DILocation(line: 50, column: 9, scope: !461, inlinedAt: !469)
!474 = !DILocation(line: 51, column: 2, scope: !475, inlinedAt: !469)
!475 = distinct !DILexicalBlock(scope: !461, file: !1, line: 51, column: 2)
!476 = !DILocation(line: 51, column: 2, scope: !461, inlinedAt: !469)
!477 = !DILocalVariable(name: "S", arg: 1, scope: !478, file: !1, line: 36, type: !382)
!478 = distinct !DISubprogram(name: "error", scope: !1, file: !1, line: 36, type: !479, isLocal: true, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !481)
!479 = !DISubroutineType(types: !480)
!480 = !{null, !382, !255}
!481 = !{!477, !482}
!482 = !DILocalVariable(name: "why", arg: 2, scope: !478, file: !1, line: 36, type: !255)
!483 = !DILocation(line: 36, column: 30, scope: !478, inlinedAt: !484)
!484 = distinct !DILocation(line: 51, column: 2, scope: !475, inlinedAt: !469)
!485 = !DILocation(line: 36, column: 45, scope: !478, inlinedAt: !484)
!486 = !DILocation(line: 38, column: 2, scope: !478, inlinedAt: !484)
!487 = !DILocation(line: 39, column: 16, scope: !478, inlinedAt: !484)
!488 = !DILocation(line: 39, column: 2, scope: !478, inlinedAt: !484)
!489 = !DILocation(line: 40, column: 1, scope: !478, inlinedAt: !484)
!490 = !DILocation(line: 52, column: 1, scope: !461, inlinedAt: !469)
!491 = !DILocation(line: 189, column: 2, scope: !492, inlinedAt: !390)
!492 = distinct !DILexicalBlock(scope: !379, file: !1, line: 189, column: 2)
!493 = !DILocation(line: 189, column: 2, scope: !379, inlinedAt: !390)
!494 = !DILocation(line: 36, column: 30, scope: !478, inlinedAt: !495)
!495 = distinct !DILocation(line: 189, column: 2, scope: !492, inlinedAt: !390)
!496 = !DILocation(line: 36, column: 45, scope: !478, inlinedAt: !495)
!497 = !DILocation(line: 38, column: 22, scope: !478, inlinedAt: !495)
!498 = !DILocation(line: 38, column: 57, scope: !478, inlinedAt: !495)
!499 = !DILocation(line: 38, column: 2, scope: !478, inlinedAt: !495)
!500 = !DILocation(line: 39, column: 16, scope: !478, inlinedAt: !495)
!501 = !DILocation(line: 39, column: 2, scope: !478, inlinedAt: !495)
!502 = !DILocation(line: 40, column: 1, scope: !478, inlinedAt: !495)
!503 = !DILocation(line: 190, column: 1, scope: !379, inlinedAt: !390)
!504 = !DILocation(line: 208, column: 25, scope: !347)
!505 = !DILocation(line: 208, column: 9, scope: !347)
!506 = !DILocation(line: 209, column: 1, scope: !347)
!507 = !DILocation(line: 208, column: 2, scope: !347)
!508 = distinct !DISubprogram(name: "LoadFunction", scope: !1, file: !1, line: 161, type: !509, isLocal: true, isDefinition: true, scopeLine: 162, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !511)
!509 = !DISubroutineType(types: !510)
!510 = !{!339, !382, !212}
!511 = !{!512, !513, !514, !515}
!512 = !DILocalVariable(name: "S", arg: 1, scope: !508, file: !1, line: 161, type: !382)
!513 = !DILocalVariable(name: "p", arg: 2, scope: !508, file: !1, line: 161, type: !212)
!514 = !DILocalVariable(name: "f", scope: !508, file: !1, line: 163, type: !339)
!515 = !DILocalVariable(name: "i_o", scope: !516, file: !1, line: 166, type: !73)
!516 = distinct !DILexicalBlock(scope: !508, file: !1, line: 166, column: 2)
!517 = !DILocation(line: 161, column: 39, scope: !508)
!518 = !DILocation(line: 161, column: 51, scope: !508)
!519 = !DILocation(line: 164, column: 11, scope: !520)
!520 = distinct !DILexicalBlock(scope: !508, file: !1, line: 164, column: 6)
!521 = !DILocation(line: 164, column: 14, scope: !520)
!522 = !DILocation(line: 164, column: 6, scope: !520)
!523 = !{!524, !526, i64 96}
!524 = !{!"lua_State", !411, i64 0, !400, i64 8, !400, i64 9, !400, i64 10, !411, i64 16, !411, i64 24, !411, i64 32, !411, i64 40, !411, i64 48, !411, i64 56, !411, i64 64, !411, i64 72, !411, i64 80, !525, i64 88, !525, i64 92, !526, i64 96, !526, i64 98, !400, i64 100, !400, i64 101, !525, i64 104, !525, i64 108, !411, i64 112, !527, i64 120, !527, i64 136, !411, i64 152, !411, i64 160, !411, i64 168, !528, i64 176}
!525 = !{!"int", !400, i64 0}
!526 = !{!"short", !400, i64 0}
!527 = !{!"lua_TValue", !400, i64 0, !525, i64 8}
!528 = !{!"long", !400, i64 0}
!529 = !DILocation(line: 164, column: 22, scope: !520)
!530 = !DILocation(line: 164, column: 6, scope: !508)
!531 = !DILocation(line: 36, column: 30, scope: !478, inlinedAt: !532)
!532 = distinct !DILocation(line: 164, column: 40, scope: !520)
!533 = !DILocation(line: 36, column: 45, scope: !478, inlinedAt: !532)
!534 = !DILocation(line: 38, column: 57, scope: !478, inlinedAt: !532)
!535 = !DILocation(line: 38, column: 2, scope: !478, inlinedAt: !532)
!536 = !DILocation(line: 39, column: 16, scope: !478, inlinedAt: !532)
!537 = !DILocation(line: 39, column: 2, scope: !478, inlinedAt: !532)
!538 = !DILocation(line: 40, column: 1, scope: !478, inlinedAt: !532)
!539 = !DILocation(line: 164, column: 40, scope: !520)
!540 = !DILocation(line: 165, column: 21, scope: !508)
!541 = !DILocation(line: 165, column: 4, scope: !508)
!542 = !DILocation(line: 163, column: 9, scope: !508)
!543 = !DILocation(line: 166, column: 2, scope: !516)
!544 = !{!524, !411, i64 16}
!545 = !{!527, !525, i64 8}
!546 = !DILocation(line: 166, column: 34, scope: !547)
!547 = distinct !DILexicalBlock(scope: !548, file: !1, line: 166, column: 34)
!548 = distinct !DILexicalBlock(scope: !508, file: !1, line: 166, column: 34)
!549 = !{!524, !411, i64 56}
!550 = !DILocation(line: 166, column: 34, scope: !548)
!551 = !DILocalVariable(name: "S", arg: 1, scope: !552, file: !1, line: 76, type: !382)
!552 = distinct !DISubprogram(name: "LoadString", scope: !1, file: !1, line: 76, type: !553, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !555)
!553 = !DISubroutineType(types: !554)
!554 = !{!212, !382}
!555 = !{!551, !556, !557}
!556 = !DILocalVariable(name: "size", scope: !552, file: !1, line: 78, type: !47)
!557 = !DILocalVariable(name: "s", scope: !558, file: !1, line: 84, type: !5)
!558 = distinct !DILexicalBlock(scope: !559, file: !1, line: 83, column: 2)
!559 = distinct !DILexicalBlock(scope: !552, file: !1, line: 80, column: 6)
!560 = !DILocation(line: 76, column: 39, scope: !552, inlinedAt: !561)
!561 = distinct !DILocation(line: 167, column: 12, scope: !508)
!562 = !DILocation(line: 78, column: 2, scope: !552, inlinedAt: !561)
!563 = !DILocation(line: 48, column: 34, scope: !461, inlinedAt: !564)
!564 = distinct !DILocation(line: 79, column: 2, scope: !552, inlinedAt: !561)
!565 = !DILocation(line: 48, column: 43, scope: !461, inlinedAt: !564)
!566 = !DILocation(line: 48, column: 53, scope: !461, inlinedAt: !564)
!567 = !DILocation(line: 50, column: 24, scope: !461, inlinedAt: !564)
!568 = !DILocation(line: 50, column: 11, scope: !461, inlinedAt: !564)
!569 = !DILocation(line: 50, column: 9, scope: !461, inlinedAt: !564)
!570 = !DILocation(line: 51, column: 2, scope: !475, inlinedAt: !564)
!571 = !DILocation(line: 51, column: 2, scope: !461, inlinedAt: !564)
!572 = !DILocation(line: 36, column: 30, scope: !478, inlinedAt: !573)
!573 = distinct !DILocation(line: 51, column: 2, scope: !475, inlinedAt: !564)
!574 = !DILocation(line: 36, column: 45, scope: !478, inlinedAt: !573)
!575 = !DILocation(line: 38, column: 22, scope: !478, inlinedAt: !573)
!576 = !DILocation(line: 38, column: 57, scope: !478, inlinedAt: !573)
!577 = !DILocation(line: 38, column: 2, scope: !478, inlinedAt: !573)
!578 = !DILocation(line: 39, column: 16, scope: !478, inlinedAt: !573)
!579 = !DILocation(line: 39, column: 2, scope: !478, inlinedAt: !573)
!580 = !DILocation(line: 40, column: 1, scope: !478, inlinedAt: !573)
!581 = !DILocation(line: 52, column: 1, scope: !461, inlinedAt: !564)
!582 = !DILocation(line: 80, column: 6, scope: !559, inlinedAt: !561)
!583 = !{!528, !528, i64 0}
!584 = !DILocation(line: 78, column: 9, scope: !552, inlinedAt: !561)
!585 = !DILocation(line: 80, column: 10, scope: !559, inlinedAt: !561)
!586 = !DILocation(line: 80, column: 6, scope: !552, inlinedAt: !561)
!587 = !DILocation(line: 84, column: 29, scope: !558, inlinedAt: !561)
!588 = !DILocation(line: 84, column: 34, scope: !558, inlinedAt: !561)
!589 = !DILocation(line: 84, column: 11, scope: !558, inlinedAt: !561)
!590 = !DILocation(line: 84, column: 9, scope: !558, inlinedAt: !561)
!591 = !DILocation(line: 85, column: 17, scope: !558, inlinedAt: !561)
!592 = !DILocation(line: 48, column: 34, scope: !461, inlinedAt: !593)
!593 = distinct !DILocation(line: 85, column: 3, scope: !558, inlinedAt: !561)
!594 = !DILocation(line: 48, column: 43, scope: !461, inlinedAt: !593)
!595 = !DILocation(line: 48, column: 53, scope: !461, inlinedAt: !593)
!596 = !DILocation(line: 50, column: 24, scope: !461, inlinedAt: !593)
!597 = !DILocation(line: 50, column: 11, scope: !461, inlinedAt: !593)
!598 = !DILocation(line: 50, column: 9, scope: !461, inlinedAt: !593)
!599 = !DILocation(line: 51, column: 2, scope: !475, inlinedAt: !593)
!600 = !DILocation(line: 51, column: 2, scope: !461, inlinedAt: !593)
!601 = !DILocation(line: 36, column: 30, scope: !478, inlinedAt: !602)
!602 = distinct !DILocation(line: 51, column: 2, scope: !475, inlinedAt: !593)
!603 = !DILocation(line: 36, column: 45, scope: !478, inlinedAt: !602)
!604 = !DILocation(line: 38, column: 22, scope: !478, inlinedAt: !602)
!605 = !DILocation(line: 38, column: 57, scope: !478, inlinedAt: !602)
!606 = !DILocation(line: 38, column: 2, scope: !478, inlinedAt: !602)
!607 = !DILocation(line: 39, column: 16, scope: !478, inlinedAt: !602)
!608 = !DILocation(line: 39, column: 2, scope: !478, inlinedAt: !602)
!609 = !DILocation(line: 40, column: 1, scope: !478, inlinedAt: !602)
!610 = !DILocation(line: 52, column: 1, scope: !461, inlinedAt: !593)
!611 = !DILocation(line: 86, column: 26, scope: !558, inlinedAt: !561)
!612 = !DILocation(line: 86, column: 30, scope: !558, inlinedAt: !561)
!613 = !DILocation(line: 86, column: 34, scope: !558, inlinedAt: !561)
!614 = !DILocation(line: 86, column: 10, scope: !558, inlinedAt: !561)
!615 = !DILocation(line: 0, scope: !558, inlinedAt: !561)
!616 = !DILocation(line: 88, column: 1, scope: !552, inlinedAt: !561)
!617 = !DILocation(line: 167, column: 5, scope: !508)
!618 = !DILocation(line: 167, column: 11, scope: !508)
!619 = !{!620, !411, i64 64}
!620 = !{!"Proto", !411, i64 0, !400, i64 8, !400, i64 9, !411, i64 16, !411, i64 24, !411, i64 32, !411, i64 40, !411, i64 48, !411, i64 56, !411, i64 64, !525, i64 72, !525, i64 76, !525, i64 80, !525, i64 84, !525, i64 88, !525, i64 92, !525, i64 96, !525, i64 100, !411, i64 104, !400, i64 112, !400, i64 113, !400, i64 114, !400, i64 115}
!621 = !DILocation(line: 167, column: 40, scope: !622)
!622 = distinct !DILexicalBlock(scope: !508, file: !1, line: 167, column: 31)
!623 = !DILocation(line: 167, column: 31, scope: !508)
!624 = !DILocation(line: 167, column: 57, scope: !622)
!625 = !DILocation(line: 167, column: 48, scope: !622)
!626 = !DILocalVariable(name: "S", arg: 1, scope: !627, file: !1, line: 61, type: !382)
!627 = distinct !DISubprogram(name: "LoadInt", scope: !1, file: !1, line: 61, type: !628, isLocal: true, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !630)
!628 = !DISubroutineType(types: !629)
!629 = !{!85, !382}
!630 = !{!626, !631}
!631 = !DILocalVariable(name: "x", scope: !627, file: !1, line: 63, type: !85)
!632 = !DILocation(line: 61, column: 31, scope: !627, inlinedAt: !633)
!633 = distinct !DILocation(line: 168, column: 17, scope: !508)
!634 = !DILocation(line: 63, column: 2, scope: !627, inlinedAt: !633)
!635 = !DILocation(line: 48, column: 34, scope: !461, inlinedAt: !636)
!636 = distinct !DILocation(line: 64, column: 2, scope: !627, inlinedAt: !633)
!637 = !DILocation(line: 48, column: 43, scope: !461, inlinedAt: !636)
!638 = !DILocation(line: 48, column: 53, scope: !461, inlinedAt: !636)
!639 = !DILocation(line: 50, column: 24, scope: !461, inlinedAt: !636)
!640 = !DILocation(line: 50, column: 11, scope: !461, inlinedAt: !636)
!641 = !DILocation(line: 50, column: 9, scope: !461, inlinedAt: !636)
!642 = !DILocation(line: 51, column: 2, scope: !475, inlinedAt: !636)
!643 = !DILocation(line: 51, column: 2, scope: !461, inlinedAt: !636)
!644 = !DILocation(line: 36, column: 30, scope: !478, inlinedAt: !645)
!645 = distinct !DILocation(line: 51, column: 2, scope: !475, inlinedAt: !636)
!646 = !DILocation(line: 36, column: 45, scope: !478, inlinedAt: !645)
!647 = !DILocation(line: 38, column: 22, scope: !478, inlinedAt: !645)
!648 = !DILocation(line: 38, column: 57, scope: !478, inlinedAt: !645)
!649 = !DILocation(line: 38, column: 2, scope: !478, inlinedAt: !645)
!650 = !DILocation(line: 39, column: 16, scope: !478, inlinedAt: !645)
!651 = !DILocation(line: 39, column: 2, scope: !478, inlinedAt: !645)
!652 = !DILocation(line: 40, column: 1, scope: !478, inlinedAt: !645)
!653 = !DILocation(line: 52, column: 1, scope: !461, inlinedAt: !636)
!654 = !DILocation(line: 65, column: 2, scope: !655, inlinedAt: !633)
!655 = distinct !DILexicalBlock(scope: !627, file: !1, line: 65, column: 2)
!656 = !{!525, !525, i64 0}
!657 = !DILocation(line: 63, column: 6, scope: !627, inlinedAt: !633)
!658 = !DILocation(line: 65, column: 2, scope: !627, inlinedAt: !633)
!659 = !DILocation(line: 36, column: 30, scope: !478, inlinedAt: !660)
!660 = distinct !DILocation(line: 65, column: 2, scope: !655, inlinedAt: !633)
!661 = !DILocation(line: 36, column: 45, scope: !478, inlinedAt: !660)
!662 = !DILocation(line: 38, column: 22, scope: !478, inlinedAt: !660)
!663 = !DILocation(line: 38, column: 57, scope: !478, inlinedAt: !660)
!664 = !DILocation(line: 38, column: 2, scope: !478, inlinedAt: !660)
!665 = !DILocation(line: 39, column: 16, scope: !478, inlinedAt: !660)
!666 = !DILocation(line: 39, column: 2, scope: !478, inlinedAt: !660)
!667 = !DILocation(line: 40, column: 1, scope: !478, inlinedAt: !660)
!668 = !DILocation(line: 66, column: 9, scope: !627, inlinedAt: !633)
!669 = !DILocation(line: 67, column: 1, scope: !627, inlinedAt: !633)
!670 = !DILocation(line: 66, column: 2, scope: !627, inlinedAt: !633)
!671 = !DILocation(line: 168, column: 5, scope: !508)
!672 = !DILocation(line: 168, column: 16, scope: !508)
!673 = !{!620, !525, i64 96}
!674 = !DILocation(line: 61, column: 31, scope: !627, inlinedAt: !675)
!675 = distinct !DILocation(line: 169, column: 21, scope: !508)
!676 = !DILocation(line: 63, column: 2, scope: !627, inlinedAt: !675)
!677 = !DILocation(line: 48, column: 34, scope: !461, inlinedAt: !678)
!678 = distinct !DILocation(line: 64, column: 2, scope: !627, inlinedAt: !675)
!679 = !DILocation(line: 48, column: 43, scope: !461, inlinedAt: !678)
!680 = !DILocation(line: 48, column: 53, scope: !461, inlinedAt: !678)
!681 = !DILocation(line: 50, column: 24, scope: !461, inlinedAt: !678)
!682 = !DILocation(line: 50, column: 11, scope: !461, inlinedAt: !678)
!683 = !DILocation(line: 50, column: 9, scope: !461, inlinedAt: !678)
!684 = !DILocation(line: 51, column: 2, scope: !475, inlinedAt: !678)
!685 = !DILocation(line: 51, column: 2, scope: !461, inlinedAt: !678)
!686 = !DILocation(line: 36, column: 30, scope: !478, inlinedAt: !687)
!687 = distinct !DILocation(line: 51, column: 2, scope: !475, inlinedAt: !678)
!688 = !DILocation(line: 36, column: 45, scope: !478, inlinedAt: !687)
!689 = !DILocation(line: 38, column: 22, scope: !478, inlinedAt: !687)
!690 = !DILocation(line: 38, column: 57, scope: !478, inlinedAt: !687)
!691 = !DILocation(line: 38, column: 2, scope: !478, inlinedAt: !687)
!692 = !DILocation(line: 39, column: 16, scope: !478, inlinedAt: !687)
!693 = !DILocation(line: 39, column: 2, scope: !478, inlinedAt: !687)
!694 = !DILocation(line: 40, column: 1, scope: !478, inlinedAt: !687)
!695 = !DILocation(line: 52, column: 1, scope: !461, inlinedAt: !678)
!696 = !DILocation(line: 65, column: 2, scope: !655, inlinedAt: !675)
!697 = !DILocation(line: 63, column: 6, scope: !627, inlinedAt: !675)
!698 = !DILocation(line: 65, column: 2, scope: !627, inlinedAt: !675)
!699 = !DILocation(line: 36, column: 30, scope: !478, inlinedAt: !700)
!700 = distinct !DILocation(line: 65, column: 2, scope: !655, inlinedAt: !675)
!701 = !DILocation(line: 36, column: 45, scope: !478, inlinedAt: !700)
!702 = !DILocation(line: 38, column: 22, scope: !478, inlinedAt: !700)
!703 = !DILocation(line: 38, column: 57, scope: !478, inlinedAt: !700)
!704 = !DILocation(line: 38, column: 2, scope: !478, inlinedAt: !700)
!705 = !DILocation(line: 39, column: 16, scope: !478, inlinedAt: !700)
!706 = !DILocation(line: 39, column: 2, scope: !478, inlinedAt: !700)
!707 = !DILocation(line: 40, column: 1, scope: !478, inlinedAt: !700)
!708 = !DILocation(line: 66, column: 9, scope: !627, inlinedAt: !675)
!709 = !DILocation(line: 67, column: 1, scope: !627, inlinedAt: !675)
!710 = !DILocation(line: 66, column: 2, scope: !627, inlinedAt: !675)
!711 = !DILocation(line: 169, column: 5, scope: !508)
!712 = !DILocation(line: 169, column: 20, scope: !508)
!713 = !{!620, !525, i64 100}
!714 = !DILocalVariable(name: "S", arg: 1, scope: !715, file: !1, line: 54, type: !382)
!715 = distinct !DISubprogram(name: "LoadChar", scope: !1, file: !1, line: 54, type: !628, isLocal: true, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !716)
!716 = !{!714, !717}
!717 = !DILocalVariable(name: "x", scope: !715, file: !1, line: 56, type: !4)
!718 = !DILocation(line: 54, column: 32, scope: !715, inlinedAt: !719)
!719 = distinct !DILocation(line: 170, column: 10, scope: !508)
!720 = !DILocation(line: 56, column: 7, scope: !715, inlinedAt: !719)
!721 = !DILocation(line: 56, column: 2, scope: !715, inlinedAt: !719)
!722 = !DILocation(line: 48, column: 34, scope: !461, inlinedAt: !723)
!723 = distinct !DILocation(line: 57, column: 2, scope: !715, inlinedAt: !719)
!724 = !DILocation(line: 48, column: 43, scope: !461, inlinedAt: !723)
!725 = !DILocation(line: 48, column: 53, scope: !461, inlinedAt: !723)
!726 = !DILocation(line: 50, column: 24, scope: !461, inlinedAt: !723)
!727 = !DILocation(line: 50, column: 11, scope: !461, inlinedAt: !723)
!728 = !DILocation(line: 50, column: 9, scope: !461, inlinedAt: !723)
!729 = !DILocation(line: 51, column: 2, scope: !475, inlinedAt: !723)
!730 = !DILocation(line: 51, column: 2, scope: !461, inlinedAt: !723)
!731 = !DILocation(line: 36, column: 30, scope: !478, inlinedAt: !732)
!732 = distinct !DILocation(line: 51, column: 2, scope: !475, inlinedAt: !723)
!733 = !DILocation(line: 36, column: 45, scope: !478, inlinedAt: !732)
!734 = !DILocation(line: 38, column: 22, scope: !478, inlinedAt: !732)
!735 = !DILocation(line: 38, column: 57, scope: !478, inlinedAt: !732)
!736 = !DILocation(line: 38, column: 2, scope: !478, inlinedAt: !732)
!737 = !DILocation(line: 39, column: 16, scope: !478, inlinedAt: !732)
!738 = !DILocation(line: 39, column: 2, scope: !478, inlinedAt: !732)
!739 = !DILocation(line: 40, column: 1, scope: !478, inlinedAt: !732)
!740 = !DILocation(line: 52, column: 1, scope: !461, inlinedAt: !723)
!741 = !DILocation(line: 58, column: 9, scope: !715, inlinedAt: !719)
!742 = !DILocation(line: 59, column: 1, scope: !715, inlinedAt: !719)
!743 = !DILocation(line: 58, column: 2, scope: !715, inlinedAt: !719)
!744 = !DILocation(line: 170, column: 5, scope: !508)
!745 = !DILocation(line: 170, column: 9, scope: !508)
!746 = !{!620, !400, i64 112}
!747 = !DILocation(line: 54, column: 32, scope: !715, inlinedAt: !748)
!748 = distinct !DILocation(line: 171, column: 15, scope: !508)
!749 = !DILocation(line: 56, column: 7, scope: !715, inlinedAt: !748)
!750 = !DILocation(line: 56, column: 2, scope: !715, inlinedAt: !748)
!751 = !DILocation(line: 48, column: 34, scope: !461, inlinedAt: !752)
!752 = distinct !DILocation(line: 57, column: 2, scope: !715, inlinedAt: !748)
!753 = !DILocation(line: 48, column: 43, scope: !461, inlinedAt: !752)
!754 = !DILocation(line: 48, column: 53, scope: !461, inlinedAt: !752)
!755 = !DILocation(line: 50, column: 24, scope: !461, inlinedAt: !752)
!756 = !DILocation(line: 50, column: 11, scope: !461, inlinedAt: !752)
!757 = !DILocation(line: 50, column: 9, scope: !461, inlinedAt: !752)
!758 = !DILocation(line: 51, column: 2, scope: !475, inlinedAt: !752)
!759 = !DILocation(line: 51, column: 2, scope: !461, inlinedAt: !752)
!760 = !DILocation(line: 36, column: 30, scope: !478, inlinedAt: !761)
!761 = distinct !DILocation(line: 51, column: 2, scope: !475, inlinedAt: !752)
!762 = !DILocation(line: 36, column: 45, scope: !478, inlinedAt: !761)
!763 = !DILocation(line: 38, column: 22, scope: !478, inlinedAt: !761)
!764 = !DILocation(line: 38, column: 57, scope: !478, inlinedAt: !761)
!765 = !DILocation(line: 38, column: 2, scope: !478, inlinedAt: !761)
!766 = !DILocation(line: 39, column: 16, scope: !478, inlinedAt: !761)
!767 = !DILocation(line: 39, column: 2, scope: !478, inlinedAt: !761)
!768 = !DILocation(line: 40, column: 1, scope: !478, inlinedAt: !761)
!769 = !DILocation(line: 52, column: 1, scope: !461, inlinedAt: !752)
!770 = !DILocation(line: 58, column: 9, scope: !715, inlinedAt: !748)
!771 = !DILocation(line: 59, column: 1, scope: !715, inlinedAt: !748)
!772 = !DILocation(line: 58, column: 2, scope: !715, inlinedAt: !748)
!773 = !DILocation(line: 171, column: 5, scope: !508)
!774 = !DILocation(line: 171, column: 14, scope: !508)
!775 = !{!620, !400, i64 113}
!776 = !DILocation(line: 54, column: 32, scope: !715, inlinedAt: !777)
!777 = distinct !DILocation(line: 172, column: 15, scope: !508)
!778 = !DILocation(line: 56, column: 7, scope: !715, inlinedAt: !777)
!779 = !DILocation(line: 56, column: 2, scope: !715, inlinedAt: !777)
!780 = !DILocation(line: 48, column: 34, scope: !461, inlinedAt: !781)
!781 = distinct !DILocation(line: 57, column: 2, scope: !715, inlinedAt: !777)
!782 = !DILocation(line: 48, column: 43, scope: !461, inlinedAt: !781)
!783 = !DILocation(line: 48, column: 53, scope: !461, inlinedAt: !781)
!784 = !DILocation(line: 50, column: 24, scope: !461, inlinedAt: !781)
!785 = !DILocation(line: 50, column: 11, scope: !461, inlinedAt: !781)
!786 = !DILocation(line: 50, column: 9, scope: !461, inlinedAt: !781)
!787 = !DILocation(line: 51, column: 2, scope: !475, inlinedAt: !781)
!788 = !DILocation(line: 51, column: 2, scope: !461, inlinedAt: !781)
!789 = !DILocation(line: 36, column: 30, scope: !478, inlinedAt: !790)
!790 = distinct !DILocation(line: 51, column: 2, scope: !475, inlinedAt: !781)
!791 = !DILocation(line: 36, column: 45, scope: !478, inlinedAt: !790)
!792 = !DILocation(line: 38, column: 22, scope: !478, inlinedAt: !790)
!793 = !DILocation(line: 38, column: 57, scope: !478, inlinedAt: !790)
!794 = !DILocation(line: 38, column: 2, scope: !478, inlinedAt: !790)
!795 = !DILocation(line: 39, column: 16, scope: !478, inlinedAt: !790)
!796 = !DILocation(line: 39, column: 2, scope: !478, inlinedAt: !790)
!797 = !DILocation(line: 40, column: 1, scope: !478, inlinedAt: !790)
!798 = !DILocation(line: 52, column: 1, scope: !461, inlinedAt: !781)
!799 = !DILocation(line: 58, column: 9, scope: !715, inlinedAt: !777)
!800 = !DILocation(line: 59, column: 1, scope: !715, inlinedAt: !777)
!801 = !DILocation(line: 58, column: 2, scope: !715, inlinedAt: !777)
!802 = !DILocation(line: 172, column: 5, scope: !508)
!803 = !DILocation(line: 172, column: 14, scope: !508)
!804 = !{!620, !400, i64 114}
!805 = !DILocation(line: 54, column: 32, scope: !715, inlinedAt: !806)
!806 = distinct !DILocation(line: 173, column: 18, scope: !508)
!807 = !DILocation(line: 56, column: 7, scope: !715, inlinedAt: !806)
!808 = !DILocation(line: 56, column: 2, scope: !715, inlinedAt: !806)
!809 = !DILocation(line: 48, column: 34, scope: !461, inlinedAt: !810)
!810 = distinct !DILocation(line: 57, column: 2, scope: !715, inlinedAt: !806)
!811 = !DILocation(line: 48, column: 43, scope: !461, inlinedAt: !810)
!812 = !DILocation(line: 48, column: 53, scope: !461, inlinedAt: !810)
!813 = !DILocation(line: 50, column: 24, scope: !461, inlinedAt: !810)
!814 = !DILocation(line: 50, column: 11, scope: !461, inlinedAt: !810)
!815 = !DILocation(line: 50, column: 9, scope: !461, inlinedAt: !810)
!816 = !DILocation(line: 51, column: 2, scope: !475, inlinedAt: !810)
!817 = !DILocation(line: 51, column: 2, scope: !461, inlinedAt: !810)
!818 = !DILocation(line: 36, column: 30, scope: !478, inlinedAt: !819)
!819 = distinct !DILocation(line: 51, column: 2, scope: !475, inlinedAt: !810)
!820 = !DILocation(line: 36, column: 45, scope: !478, inlinedAt: !819)
!821 = !DILocation(line: 38, column: 22, scope: !478, inlinedAt: !819)
!822 = !DILocation(line: 38, column: 57, scope: !478, inlinedAt: !819)
!823 = !DILocation(line: 38, column: 2, scope: !478, inlinedAt: !819)
!824 = !DILocation(line: 39, column: 16, scope: !478, inlinedAt: !819)
!825 = !DILocation(line: 39, column: 2, scope: !478, inlinedAt: !819)
!826 = !DILocation(line: 40, column: 1, scope: !478, inlinedAt: !819)
!827 = !DILocation(line: 52, column: 1, scope: !461, inlinedAt: !810)
!828 = !DILocation(line: 58, column: 9, scope: !715, inlinedAt: !806)
!829 = !DILocation(line: 59, column: 1, scope: !715, inlinedAt: !806)
!830 = !DILocation(line: 58, column: 2, scope: !715, inlinedAt: !806)
!831 = !DILocation(line: 173, column: 5, scope: !508)
!832 = !DILocation(line: 173, column: 17, scope: !508)
!833 = !{!620, !400, i64 115}
!834 = !DILocalVariable(name: "S", arg: 1, scope: !835, file: !1, line: 90, type: !382)
!835 = distinct !DISubprogram(name: "LoadCode", scope: !1, file: !1, line: 90, type: !836, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !838)
!836 = !DISubroutineType(types: !837)
!837 = !{null, !382, !339}
!838 = !{!834, !839, !840}
!839 = !DILocalVariable(name: "f", arg: 2, scope: !835, file: !1, line: 90, type: !339)
!840 = !DILocalVariable(name: "n", scope: !835, file: !1, line: 92, type: !85)
!841 = !DILocation(line: 90, column: 33, scope: !835, inlinedAt: !842)
!842 = distinct !DILocation(line: 174, column: 2, scope: !508)
!843 = !DILocation(line: 90, column: 43, scope: !835, inlinedAt: !842)
!844 = !DILocation(line: 61, column: 31, scope: !627, inlinedAt: !845)
!845 = distinct !DILocation(line: 92, column: 8, scope: !835, inlinedAt: !842)
!846 = !DILocation(line: 63, column: 2, scope: !627, inlinedAt: !845)
!847 = !DILocation(line: 48, column: 34, scope: !461, inlinedAt: !848)
!848 = distinct !DILocation(line: 64, column: 2, scope: !627, inlinedAt: !845)
!849 = !DILocation(line: 48, column: 43, scope: !461, inlinedAt: !848)
!850 = !DILocation(line: 48, column: 53, scope: !461, inlinedAt: !848)
!851 = !DILocation(line: 50, column: 24, scope: !461, inlinedAt: !848)
!852 = !DILocation(line: 50, column: 11, scope: !461, inlinedAt: !848)
!853 = !DILocation(line: 50, column: 9, scope: !461, inlinedAt: !848)
!854 = !DILocation(line: 51, column: 2, scope: !475, inlinedAt: !848)
!855 = !DILocation(line: 51, column: 2, scope: !461, inlinedAt: !848)
!856 = !DILocation(line: 36, column: 30, scope: !478, inlinedAt: !857)
!857 = distinct !DILocation(line: 51, column: 2, scope: !475, inlinedAt: !848)
!858 = !DILocation(line: 36, column: 45, scope: !478, inlinedAt: !857)
!859 = !DILocation(line: 38, column: 22, scope: !478, inlinedAt: !857)
!860 = !DILocation(line: 38, column: 57, scope: !478, inlinedAt: !857)
!861 = !DILocation(line: 38, column: 2, scope: !478, inlinedAt: !857)
!862 = !DILocation(line: 39, column: 16, scope: !478, inlinedAt: !857)
!863 = !DILocation(line: 39, column: 2, scope: !478, inlinedAt: !857)
!864 = !DILocation(line: 40, column: 1, scope: !478, inlinedAt: !857)
!865 = !DILocation(line: 52, column: 1, scope: !461, inlinedAt: !848)
!866 = !DILocation(line: 65, column: 2, scope: !655, inlinedAt: !845)
!867 = !DILocation(line: 63, column: 6, scope: !627, inlinedAt: !845)
!868 = !DILocation(line: 65, column: 2, scope: !627, inlinedAt: !845)
!869 = !DILocation(line: 67, column: 1, scope: !627, inlinedAt: !845)
!870 = !DILocation(line: 66, column: 2, scope: !627, inlinedAt: !845)
!871 = !DILocation(line: 93, column: 10, scope: !835, inlinedAt: !842)
!872 = !DILocation(line: 36, column: 30, scope: !478, inlinedAt: !873)
!873 = distinct !DILocation(line: 65, column: 2, scope: !655, inlinedAt: !845)
!874 = !DILocation(line: 36, column: 45, scope: !478, inlinedAt: !873)
!875 = !DILocation(line: 38, column: 22, scope: !478, inlinedAt: !873)
!876 = !DILocation(line: 38, column: 57, scope: !478, inlinedAt: !873)
!877 = !DILocation(line: 38, column: 2, scope: !478, inlinedAt: !873)
!878 = !DILocation(line: 39, column: 16, scope: !478, inlinedAt: !873)
!879 = !DILocation(line: 39, column: 2, scope: !478, inlinedAt: !873)
!880 = !DILocation(line: 40, column: 1, scope: !478, inlinedAt: !873)
!881 = !DILocation(line: 66, column: 9, scope: !627, inlinedAt: !845)
!882 = !DILocation(line: 92, column: 6, scope: !835, inlinedAt: !842)
!883 = !DILocation(line: 95, column: 2, scope: !835, inlinedAt: !842)
!884 = !DILocation(line: 93, column: 5, scope: !835, inlinedAt: !842)
!885 = !DILocation(line: 93, column: 9, scope: !835, inlinedAt: !842)
!886 = !{!620, !411, i64 24}
!887 = !DILocation(line: 94, column: 5, scope: !835, inlinedAt: !842)
!888 = !DILocation(line: 94, column: 13, scope: !835, inlinedAt: !842)
!889 = !{!620, !525, i64 80}
!890 = !DILocation(line: 48, column: 34, scope: !461, inlinedAt: !891)
!891 = distinct !DILocation(line: 95, column: 2, scope: !835, inlinedAt: !842)
!892 = !DILocation(line: 48, column: 43, scope: !461, inlinedAt: !891)
!893 = !DILocation(line: 48, column: 53, scope: !461, inlinedAt: !891)
!894 = !DILocation(line: 50, column: 24, scope: !461, inlinedAt: !891)
!895 = !DILocation(line: 50, column: 11, scope: !461, inlinedAt: !891)
!896 = !DILocation(line: 50, column: 9, scope: !461, inlinedAt: !891)
!897 = !DILocation(line: 51, column: 2, scope: !475, inlinedAt: !891)
!898 = !DILocation(line: 51, column: 2, scope: !461, inlinedAt: !891)
!899 = !DILocation(line: 36, column: 30, scope: !478, inlinedAt: !900)
!900 = distinct !DILocation(line: 51, column: 2, scope: !475, inlinedAt: !891)
!901 = !DILocation(line: 36, column: 45, scope: !478, inlinedAt: !900)
!902 = !DILocation(line: 38, column: 22, scope: !478, inlinedAt: !900)
!903 = !DILocation(line: 38, column: 57, scope: !478, inlinedAt: !900)
!904 = !DILocation(line: 38, column: 2, scope: !478, inlinedAt: !900)
!905 = !DILocation(line: 39, column: 16, scope: !478, inlinedAt: !900)
!906 = !DILocation(line: 39, column: 2, scope: !478, inlinedAt: !900)
!907 = !DILocation(line: 40, column: 1, scope: !478, inlinedAt: !900)
!908 = !DILocation(line: 52, column: 1, scope: !461, inlinedAt: !891)
!909 = !DILocation(line: 96, column: 1, scope: !835, inlinedAt: !842)
!910 = !DILocalVariable(name: "S", arg: 1, scope: !911, file: !1, line: 100, type: !382)
!911 = distinct !DISubprogram(name: "LoadConstants", scope: !1, file: !1, line: 100, type: !836, isLocal: true, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !912)
!912 = !{!910, !913, !914, !915, !916, !920, !921, !924, !926}
!913 = !DILocalVariable(name: "f", arg: 2, scope: !911, file: !1, line: 100, type: !339)
!914 = !DILocalVariable(name: "i", scope: !911, file: !1, line: 102, type: !85)
!915 = !DILocalVariable(name: "n", scope: !911, file: !1, line: 102, type: !85)
!916 = !DILocalVariable(name: "o", scope: !917, file: !1, line: 109, type: !73)
!917 = distinct !DILexicalBlock(scope: !918, file: !1, line: 108, column: 2)
!918 = distinct !DILexicalBlock(scope: !919, file: !1, line: 107, column: 2)
!919 = distinct !DILexicalBlock(scope: !911, file: !1, line: 107, column: 2)
!920 = !DILocalVariable(name: "t", scope: !917, file: !1, line: 110, type: !85)
!921 = !DILocalVariable(name: "i_o", scope: !922, file: !1, line: 117, type: !73)
!922 = distinct !DILexicalBlock(scope: !923, file: !1, line: 117, column: 5)
!923 = distinct !DILexicalBlock(scope: !917, file: !1, line: 112, column: 3)
!924 = !DILocalVariable(name: "i_o", scope: !925, file: !1, line: 120, type: !73)
!925 = distinct !DILexicalBlock(scope: !923, file: !1, line: 120, column: 2)
!926 = !DILocalVariable(name: "i_o", scope: !927, file: !1, line: 123, type: !73)
!927 = distinct !DILexicalBlock(scope: !923, file: !1, line: 123, column: 2)
!928 = !DILocation(line: 100, column: 38, scope: !911, inlinedAt: !929)
!929 = distinct !DILocation(line: 175, column: 2, scope: !508)
!930 = !DILocation(line: 100, column: 48, scope: !911, inlinedAt: !929)
!931 = !DILocation(line: 61, column: 31, scope: !627, inlinedAt: !932)
!932 = distinct !DILocation(line: 103, column: 4, scope: !911, inlinedAt: !929)
!933 = !DILocation(line: 63, column: 2, scope: !627, inlinedAt: !932)
!934 = !DILocation(line: 48, column: 34, scope: !461, inlinedAt: !935)
!935 = distinct !DILocation(line: 64, column: 2, scope: !627, inlinedAt: !932)
!936 = !DILocation(line: 48, column: 43, scope: !461, inlinedAt: !935)
!937 = !DILocation(line: 48, column: 53, scope: !461, inlinedAt: !935)
!938 = !DILocation(line: 50, column: 24, scope: !461, inlinedAt: !935)
!939 = !DILocation(line: 50, column: 11, scope: !461, inlinedAt: !935)
!940 = !DILocation(line: 50, column: 9, scope: !461, inlinedAt: !935)
!941 = !DILocation(line: 51, column: 2, scope: !475, inlinedAt: !935)
!942 = !DILocation(line: 51, column: 2, scope: !461, inlinedAt: !935)
!943 = !DILocation(line: 36, column: 30, scope: !478, inlinedAt: !944)
!944 = distinct !DILocation(line: 51, column: 2, scope: !475, inlinedAt: !935)
!945 = !DILocation(line: 36, column: 45, scope: !478, inlinedAt: !944)
!946 = !DILocation(line: 38, column: 22, scope: !478, inlinedAt: !944)
!947 = !DILocation(line: 38, column: 57, scope: !478, inlinedAt: !944)
!948 = !DILocation(line: 38, column: 2, scope: !478, inlinedAt: !944)
!949 = !DILocation(line: 39, column: 16, scope: !478, inlinedAt: !944)
!950 = !DILocation(line: 39, column: 2, scope: !478, inlinedAt: !944)
!951 = !DILocation(line: 40, column: 1, scope: !478, inlinedAt: !944)
!952 = !DILocation(line: 52, column: 1, scope: !461, inlinedAt: !935)
!953 = !DILocation(line: 65, column: 2, scope: !655, inlinedAt: !932)
!954 = !DILocation(line: 63, column: 6, scope: !627, inlinedAt: !932)
!955 = !DILocation(line: 65, column: 2, scope: !627, inlinedAt: !932)
!956 = !DILocation(line: 67, column: 1, scope: !627, inlinedAt: !932)
!957 = !DILocation(line: 66, column: 2, scope: !627, inlinedAt: !932)
!958 = !DILocation(line: 102, column: 8, scope: !911, inlinedAt: !929)
!959 = !DILocation(line: 104, column: 7, scope: !911, inlinedAt: !929)
!960 = !DILocation(line: 36, column: 30, scope: !478, inlinedAt: !961)
!961 = distinct !DILocation(line: 65, column: 2, scope: !655, inlinedAt: !932)
!962 = !DILocation(line: 36, column: 45, scope: !478, inlinedAt: !961)
!963 = !DILocation(line: 38, column: 22, scope: !478, inlinedAt: !961)
!964 = !DILocation(line: 38, column: 57, scope: !478, inlinedAt: !961)
!965 = !DILocation(line: 38, column: 2, scope: !478, inlinedAt: !961)
!966 = !DILocation(line: 39, column: 16, scope: !478, inlinedAt: !961)
!967 = !DILocation(line: 39, column: 2, scope: !478, inlinedAt: !961)
!968 = !DILocation(line: 40, column: 1, scope: !478, inlinedAt: !961)
!969 = !DILocation(line: 66, column: 9, scope: !627, inlinedAt: !932)
!970 = !DILocation(line: 104, column: 5, scope: !911, inlinedAt: !929)
!971 = !DILocation(line: 104, column: 6, scope: !911, inlinedAt: !929)
!972 = !{!620, !411, i64 16}
!973 = !DILocation(line: 105, column: 5, scope: !911, inlinedAt: !929)
!974 = !DILocation(line: 105, column: 10, scope: !911, inlinedAt: !929)
!975 = !{!620, !525, i64 76}
!976 = !DILocation(line: 102, column: 6, scope: !911, inlinedAt: !929)
!977 = !DILocation(line: 106, column: 7, scope: !978, inlinedAt: !929)
!978 = distinct !DILexicalBlock(scope: !911, file: !1, line: 106, column: 2)
!979 = !DILocation(line: 106, column: 13, scope: !980, inlinedAt: !929)
!980 = distinct !DILexicalBlock(scope: !978, file: !1, line: 106, column: 2)
!981 = !DILocation(line: 106, column: 2, scope: !978, inlinedAt: !929)
!982 = !DILocation(line: 107, column: 7, scope: !919, inlinedAt: !929)
!983 = !DILocation(line: 107, column: 2, scope: !919, inlinedAt: !929)
!984 = !DILocation(line: 106, column: 22, scope: !980, inlinedAt: !929)
!985 = !DILocation(line: 106, column: 18, scope: !980, inlinedAt: !929)
!986 = !DILocation(line: 106, column: 2, scope: !980, inlinedAt: !929)
!987 = distinct !{!987, !988, !989}
!988 = !DILocation(line: 106, column: 2, scope: !978)
!989 = !DILocation(line: 106, column: 22, scope: !978)
!990 = distinct !{!990, !991}
!991 = !{!"llvm.loop.unroll.disable"}
!992 = !DILocation(line: 109, column: 17, scope: !917, inlinedAt: !929)
!993 = !DILocation(line: 109, column: 14, scope: !917, inlinedAt: !929)
!994 = !DILocation(line: 109, column: 11, scope: !917, inlinedAt: !929)
!995 = !DILocation(line: 54, column: 32, scope: !715, inlinedAt: !996)
!996 = distinct !DILocation(line: 110, column: 9, scope: !917, inlinedAt: !929)
!997 = !DILocation(line: 56, column: 7, scope: !715, inlinedAt: !996)
!998 = !DILocation(line: 56, column: 2, scope: !715, inlinedAt: !996)
!999 = !DILocation(line: 48, column: 34, scope: !461, inlinedAt: !1000)
!1000 = distinct !DILocation(line: 57, column: 2, scope: !715, inlinedAt: !996)
!1001 = !DILocation(line: 48, column: 43, scope: !461, inlinedAt: !1000)
!1002 = !DILocation(line: 48, column: 53, scope: !461, inlinedAt: !1000)
!1003 = !DILocation(line: 50, column: 24, scope: !461, inlinedAt: !1000)
!1004 = !DILocation(line: 50, column: 11, scope: !461, inlinedAt: !1000)
!1005 = !DILocation(line: 50, column: 9, scope: !461, inlinedAt: !1000)
!1006 = !DILocation(line: 51, column: 2, scope: !475, inlinedAt: !1000)
!1007 = !DILocation(line: 51, column: 2, scope: !461, inlinedAt: !1000)
!1008 = !DILocation(line: 36, column: 30, scope: !478, inlinedAt: !1009)
!1009 = distinct !DILocation(line: 51, column: 2, scope: !475, inlinedAt: !1000)
!1010 = !DILocation(line: 36, column: 45, scope: !478, inlinedAt: !1009)
!1011 = !DILocation(line: 38, column: 22, scope: !478, inlinedAt: !1009)
!1012 = !DILocation(line: 38, column: 57, scope: !478, inlinedAt: !1009)
!1013 = !DILocation(line: 38, column: 2, scope: !478, inlinedAt: !1009)
!1014 = !DILocation(line: 39, column: 16, scope: !478, inlinedAt: !1009)
!1015 = !DILocation(line: 39, column: 2, scope: !478, inlinedAt: !1009)
!1016 = !DILocation(line: 40, column: 1, scope: !478, inlinedAt: !1009)
!1017 = !DILocation(line: 52, column: 1, scope: !461, inlinedAt: !1000)
!1018 = !DILocation(line: 58, column: 9, scope: !715, inlinedAt: !996)
!1019 = !DILocation(line: 59, column: 1, scope: !715, inlinedAt: !996)
!1020 = !DILocation(line: 58, column: 2, scope: !715, inlinedAt: !996)
!1021 = !DILocation(line: 110, column: 7, scope: !917, inlinedAt: !929)
!1022 = !DILocation(line: 111, column: 3, scope: !917, inlinedAt: !929)
!1023 = !DILocation(line: 114, column: 5, scope: !923, inlinedAt: !929)
!1024 = !DILocation(line: 115, column: 2, scope: !923, inlinedAt: !929)
!1025 = !DILocation(line: 117, column: 5, scope: !922, inlinedAt: !929)
!1026 = !DILocation(line: 54, column: 32, scope: !715, inlinedAt: !1027)
!1027 = distinct !DILocation(line: 117, column: 5, scope: !922, inlinedAt: !929)
!1028 = !DILocation(line: 56, column: 7, scope: !715, inlinedAt: !1027)
!1029 = !DILocation(line: 56, column: 2, scope: !715, inlinedAt: !1027)
!1030 = !DILocation(line: 48, column: 34, scope: !461, inlinedAt: !1031)
!1031 = distinct !DILocation(line: 57, column: 2, scope: !715, inlinedAt: !1027)
!1032 = !DILocation(line: 48, column: 43, scope: !461, inlinedAt: !1031)
!1033 = !DILocation(line: 48, column: 53, scope: !461, inlinedAt: !1031)
!1034 = !DILocation(line: 50, column: 24, scope: !461, inlinedAt: !1031)
!1035 = !DILocation(line: 50, column: 11, scope: !461, inlinedAt: !1031)
!1036 = !DILocation(line: 50, column: 9, scope: !461, inlinedAt: !1031)
!1037 = !DILocation(line: 51, column: 2, scope: !475, inlinedAt: !1031)
!1038 = !DILocation(line: 51, column: 2, scope: !461, inlinedAt: !1031)
!1039 = !DILocation(line: 36, column: 30, scope: !478, inlinedAt: !1040)
!1040 = distinct !DILocation(line: 51, column: 2, scope: !475, inlinedAt: !1031)
!1041 = !DILocation(line: 36, column: 45, scope: !478, inlinedAt: !1040)
!1042 = !DILocation(line: 38, column: 22, scope: !478, inlinedAt: !1040)
!1043 = !DILocation(line: 38, column: 57, scope: !478, inlinedAt: !1040)
!1044 = !DILocation(line: 38, column: 2, scope: !478, inlinedAt: !1040)
!1045 = !DILocation(line: 39, column: 16, scope: !478, inlinedAt: !1040)
!1046 = !DILocation(line: 39, column: 2, scope: !478, inlinedAt: !1040)
!1047 = !DILocation(line: 40, column: 1, scope: !478, inlinedAt: !1040)
!1048 = !DILocation(line: 52, column: 1, scope: !461, inlinedAt: !1031)
!1049 = !DILocation(line: 58, column: 9, scope: !715, inlinedAt: !1027)
!1050 = !DILocation(line: 59, column: 1, scope: !715, inlinedAt: !1027)
!1051 = !DILocation(line: 58, column: 2, scope: !715, inlinedAt: !1027)
!1052 = !DILocation(line: 118, column: 2, scope: !923, inlinedAt: !929)
!1053 = !DILocation(line: 120, column: 2, scope: !925, inlinedAt: !929)
!1054 = !DILocalVariable(name: "S", arg: 1, scope: !1055, file: !1, line: 69, type: !382)
!1055 = distinct !DISubprogram(name: "LoadNumber", scope: !1, file: !1, line: 69, type: !1056, isLocal: true, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1058)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!6, !382}
!1058 = !{!1054, !1059}
!1059 = !DILocalVariable(name: "x", scope: !1055, file: !1, line: 71, type: !6)
!1060 = !DILocation(line: 69, column: 41, scope: !1055, inlinedAt: !1061)
!1061 = distinct !DILocation(line: 120, column: 2, scope: !925, inlinedAt: !929)
!1062 = !DILocation(line: 71, column: 2, scope: !1055, inlinedAt: !1061)
!1063 = !DILocation(line: 48, column: 34, scope: !461, inlinedAt: !1064)
!1064 = distinct !DILocation(line: 72, column: 2, scope: !1055, inlinedAt: !1061)
!1065 = !DILocation(line: 48, column: 43, scope: !461, inlinedAt: !1064)
!1066 = !DILocation(line: 48, column: 53, scope: !461, inlinedAt: !1064)
!1067 = !DILocation(line: 50, column: 24, scope: !461, inlinedAt: !1064)
!1068 = !DILocation(line: 50, column: 11, scope: !461, inlinedAt: !1064)
!1069 = !DILocation(line: 50, column: 9, scope: !461, inlinedAt: !1064)
!1070 = !DILocation(line: 51, column: 2, scope: !475, inlinedAt: !1064)
!1071 = !DILocation(line: 51, column: 2, scope: !461, inlinedAt: !1064)
!1072 = !DILocation(line: 36, column: 30, scope: !478, inlinedAt: !1073)
!1073 = distinct !DILocation(line: 51, column: 2, scope: !475, inlinedAt: !1064)
!1074 = !DILocation(line: 36, column: 45, scope: !478, inlinedAt: !1073)
!1075 = !DILocation(line: 38, column: 22, scope: !478, inlinedAt: !1073)
!1076 = !DILocation(line: 38, column: 57, scope: !478, inlinedAt: !1073)
!1077 = !DILocation(line: 38, column: 2, scope: !478, inlinedAt: !1073)
!1078 = !DILocation(line: 39, column: 16, scope: !478, inlinedAt: !1073)
!1079 = !DILocation(line: 39, column: 2, scope: !478, inlinedAt: !1073)
!1080 = !DILocation(line: 40, column: 1, scope: !478, inlinedAt: !1073)
!1081 = !DILocation(line: 52, column: 1, scope: !461, inlinedAt: !1064)
!1082 = !DILocation(line: 73, column: 9, scope: !1055, inlinedAt: !1061)
!1083 = !{!1084, !1084, i64 0}
!1084 = !{!"double", !400, i64 0}
!1085 = !DILocation(line: 71, column: 13, scope: !1055, inlinedAt: !1061)
!1086 = !DILocation(line: 74, column: 1, scope: !1055, inlinedAt: !1061)
!1087 = !DILocation(line: 73, column: 2, scope: !1055, inlinedAt: !1061)
!1088 = !DILocation(line: 121, column: 2, scope: !923, inlinedAt: !929)
!1089 = !DILocation(line: 123, column: 2, scope: !927, inlinedAt: !929)
!1090 = !DILocation(line: 76, column: 39, scope: !552, inlinedAt: !1091)
!1091 = distinct !DILocation(line: 123, column: 2, scope: !927, inlinedAt: !929)
!1092 = !DILocation(line: 78, column: 2, scope: !552, inlinedAt: !1091)
!1093 = !DILocation(line: 48, column: 34, scope: !461, inlinedAt: !1094)
!1094 = distinct !DILocation(line: 79, column: 2, scope: !552, inlinedAt: !1091)
!1095 = !DILocation(line: 48, column: 43, scope: !461, inlinedAt: !1094)
!1096 = !DILocation(line: 48, column: 53, scope: !461, inlinedAt: !1094)
!1097 = !DILocation(line: 50, column: 24, scope: !461, inlinedAt: !1094)
!1098 = !DILocation(line: 50, column: 11, scope: !461, inlinedAt: !1094)
!1099 = !DILocation(line: 50, column: 9, scope: !461, inlinedAt: !1094)
!1100 = !DILocation(line: 51, column: 2, scope: !475, inlinedAt: !1094)
!1101 = !DILocation(line: 51, column: 2, scope: !461, inlinedAt: !1094)
!1102 = !DILocation(line: 36, column: 30, scope: !478, inlinedAt: !1103)
!1103 = distinct !DILocation(line: 51, column: 2, scope: !475, inlinedAt: !1094)
!1104 = !DILocation(line: 36, column: 45, scope: !478, inlinedAt: !1103)
!1105 = !DILocation(line: 38, column: 22, scope: !478, inlinedAt: !1103)
!1106 = !DILocation(line: 38, column: 57, scope: !478, inlinedAt: !1103)
!1107 = !DILocation(line: 38, column: 2, scope: !478, inlinedAt: !1103)
!1108 = !DILocation(line: 39, column: 16, scope: !478, inlinedAt: !1103)
!1109 = !DILocation(line: 39, column: 2, scope: !478, inlinedAt: !1103)
!1110 = !DILocation(line: 40, column: 1, scope: !478, inlinedAt: !1103)
!1111 = !DILocation(line: 52, column: 1, scope: !461, inlinedAt: !1094)
!1112 = !DILocation(line: 80, column: 6, scope: !559, inlinedAt: !1091)
!1113 = !DILocation(line: 78, column: 9, scope: !552, inlinedAt: !1091)
!1114 = !DILocation(line: 80, column: 10, scope: !559, inlinedAt: !1091)
!1115 = !DILocation(line: 80, column: 6, scope: !552, inlinedAt: !1091)
!1116 = !DILocation(line: 84, column: 29, scope: !558, inlinedAt: !1091)
!1117 = !DILocation(line: 84, column: 34, scope: !558, inlinedAt: !1091)
!1118 = !DILocation(line: 84, column: 11, scope: !558, inlinedAt: !1091)
!1119 = !DILocation(line: 84, column: 9, scope: !558, inlinedAt: !1091)
!1120 = !DILocation(line: 85, column: 17, scope: !558, inlinedAt: !1091)
!1121 = !DILocation(line: 48, column: 34, scope: !461, inlinedAt: !1122)
!1122 = distinct !DILocation(line: 85, column: 3, scope: !558, inlinedAt: !1091)
!1123 = !DILocation(line: 48, column: 43, scope: !461, inlinedAt: !1122)
!1124 = !DILocation(line: 48, column: 53, scope: !461, inlinedAt: !1122)
!1125 = !DILocation(line: 50, column: 24, scope: !461, inlinedAt: !1122)
!1126 = !DILocation(line: 50, column: 11, scope: !461, inlinedAt: !1122)
!1127 = !DILocation(line: 50, column: 9, scope: !461, inlinedAt: !1122)
!1128 = !DILocation(line: 51, column: 2, scope: !475, inlinedAt: !1122)
!1129 = !DILocation(line: 51, column: 2, scope: !461, inlinedAt: !1122)
!1130 = !DILocation(line: 36, column: 30, scope: !478, inlinedAt: !1131)
!1131 = distinct !DILocation(line: 51, column: 2, scope: !475, inlinedAt: !1122)
!1132 = !DILocation(line: 36, column: 45, scope: !478, inlinedAt: !1131)
!1133 = !DILocation(line: 38, column: 22, scope: !478, inlinedAt: !1131)
!1134 = !DILocation(line: 38, column: 57, scope: !478, inlinedAt: !1131)
!1135 = !DILocation(line: 38, column: 2, scope: !478, inlinedAt: !1131)
!1136 = !DILocation(line: 39, column: 16, scope: !478, inlinedAt: !1131)
!1137 = !DILocation(line: 39, column: 2, scope: !478, inlinedAt: !1131)
!1138 = !DILocation(line: 40, column: 1, scope: !478, inlinedAt: !1131)
!1139 = !DILocation(line: 52, column: 1, scope: !461, inlinedAt: !1122)
!1140 = !DILocation(line: 86, column: 26, scope: !558, inlinedAt: !1091)
!1141 = !DILocation(line: 86, column: 30, scope: !558, inlinedAt: !1091)
!1142 = !DILocation(line: 86, column: 34, scope: !558, inlinedAt: !1091)
!1143 = !DILocation(line: 86, column: 10, scope: !558, inlinedAt: !1091)
!1144 = !DILocation(line: 0, scope: !558, inlinedAt: !1091)
!1145 = !DILocation(line: 88, column: 1, scope: !552, inlinedAt: !1091)
!1146 = !DILocation(line: 124, column: 2, scope: !923, inlinedAt: !929)
!1147 = !DILocation(line: 36, column: 30, scope: !478, inlinedAt: !1148)
!1148 = distinct !DILocation(line: 126, column: 2, scope: !923, inlinedAt: !929)
!1149 = !DILocation(line: 36, column: 45, scope: !478, inlinedAt: !1148)
!1150 = !DILocation(line: 38, column: 22, scope: !478, inlinedAt: !1148)
!1151 = !DILocation(line: 38, column: 57, scope: !478, inlinedAt: !1148)
!1152 = !DILocation(line: 38, column: 2, scope: !478, inlinedAt: !1148)
!1153 = !DILocation(line: 39, column: 16, scope: !478, inlinedAt: !1148)
!1154 = !DILocation(line: 39, column: 2, scope: !478, inlinedAt: !1148)
!1155 = !DILocation(line: 40, column: 1, scope: !478, inlinedAt: !1148)
!1156 = !DILocation(line: 127, column: 2, scope: !923, inlinedAt: !929)
!1157 = !DILocation(line: 0, scope: !508)
!1158 = !DILocation(line: 107, column: 18, scope: !918, inlinedAt: !929)
!1159 = !DILocation(line: 107, column: 2, scope: !918, inlinedAt: !929)
!1160 = !DILocation(line: 107, column: 13, scope: !918, inlinedAt: !929)
!1161 = distinct !{!1161, !1162, !1163}
!1162 = !DILocation(line: 107, column: 2, scope: !919)
!1163 = !DILocation(line: 129, column: 2, scope: !919)
!1164 = !DILocation(line: 61, column: 31, scope: !627, inlinedAt: !1165)
!1165 = distinct !DILocation(line: 130, column: 4, scope: !911, inlinedAt: !929)
!1166 = !DILocation(line: 63, column: 2, scope: !627, inlinedAt: !1165)
!1167 = !DILocation(line: 48, column: 34, scope: !461, inlinedAt: !1168)
!1168 = distinct !DILocation(line: 64, column: 2, scope: !627, inlinedAt: !1165)
!1169 = !DILocation(line: 48, column: 43, scope: !461, inlinedAt: !1168)
!1170 = !DILocation(line: 48, column: 53, scope: !461, inlinedAt: !1168)
!1171 = !DILocation(line: 50, column: 24, scope: !461, inlinedAt: !1168)
!1172 = !DILocation(line: 50, column: 11, scope: !461, inlinedAt: !1168)
!1173 = !DILocation(line: 50, column: 9, scope: !461, inlinedAt: !1168)
!1174 = !DILocation(line: 51, column: 2, scope: !475, inlinedAt: !1168)
!1175 = !DILocation(line: 51, column: 2, scope: !461, inlinedAt: !1168)
!1176 = !DILocation(line: 36, column: 30, scope: !478, inlinedAt: !1177)
!1177 = distinct !DILocation(line: 51, column: 2, scope: !475, inlinedAt: !1168)
!1178 = !DILocation(line: 36, column: 45, scope: !478, inlinedAt: !1177)
!1179 = !DILocation(line: 38, column: 22, scope: !478, inlinedAt: !1177)
!1180 = !DILocation(line: 38, column: 57, scope: !478, inlinedAt: !1177)
!1181 = !DILocation(line: 38, column: 2, scope: !478, inlinedAt: !1177)
!1182 = !DILocation(line: 39, column: 16, scope: !478, inlinedAt: !1177)
!1183 = !DILocation(line: 39, column: 2, scope: !478, inlinedAt: !1177)
!1184 = !DILocation(line: 40, column: 1, scope: !478, inlinedAt: !1177)
!1185 = !DILocation(line: 52, column: 1, scope: !461, inlinedAt: !1168)
!1186 = !DILocation(line: 65, column: 2, scope: !655, inlinedAt: !1165)
!1187 = !DILocation(line: 63, column: 6, scope: !627, inlinedAt: !1165)
!1188 = !DILocation(line: 65, column: 2, scope: !627, inlinedAt: !1165)
!1189 = !DILocation(line: 67, column: 1, scope: !627, inlinedAt: !1165)
!1190 = !DILocation(line: 66, column: 2, scope: !627, inlinedAt: !1165)
!1191 = !DILocation(line: 131, column: 7, scope: !911, inlinedAt: !929)
!1192 = !DILocation(line: 36, column: 30, scope: !478, inlinedAt: !1193)
!1193 = distinct !DILocation(line: 65, column: 2, scope: !655, inlinedAt: !1165)
!1194 = !DILocation(line: 36, column: 45, scope: !478, inlinedAt: !1193)
!1195 = !DILocation(line: 38, column: 22, scope: !478, inlinedAt: !1193)
!1196 = !DILocation(line: 38, column: 57, scope: !478, inlinedAt: !1193)
!1197 = !DILocation(line: 38, column: 2, scope: !478, inlinedAt: !1193)
!1198 = !DILocation(line: 39, column: 16, scope: !478, inlinedAt: !1193)
!1199 = !DILocation(line: 39, column: 2, scope: !478, inlinedAt: !1193)
!1200 = !DILocation(line: 40, column: 1, scope: !478, inlinedAt: !1193)
!1201 = !DILocation(line: 66, column: 9, scope: !627, inlinedAt: !1165)
!1202 = !DILocation(line: 131, column: 5, scope: !911, inlinedAt: !929)
!1203 = !DILocation(line: 131, column: 6, scope: !911, inlinedAt: !929)
!1204 = !{!620, !411, i64 32}
!1205 = !DILocation(line: 132, column: 5, scope: !911, inlinedAt: !929)
!1206 = !DILocation(line: 132, column: 10, scope: !911, inlinedAt: !929)
!1207 = !{!620, !525, i64 88}
!1208 = !DILocation(line: 133, column: 7, scope: !1209, inlinedAt: !929)
!1209 = distinct !DILexicalBlock(scope: !911, file: !1, line: 133, column: 2)
!1210 = !DILocation(line: 133, column: 13, scope: !1211, inlinedAt: !929)
!1211 = distinct !DILexicalBlock(scope: !1209, file: !1, line: 133, column: 2)
!1212 = !DILocation(line: 133, column: 2, scope: !1209, inlinedAt: !929)
!1213 = !DILocation(line: 134, column: 7, scope: !1214, inlinedAt: !929)
!1214 = distinct !DILexicalBlock(scope: !911, file: !1, line: 134, column: 2)
!1215 = !DILocation(line: 134, column: 2, scope: !1214, inlinedAt: !929)
!1216 = !DILocation(line: 133, column: 29, scope: !1211, inlinedAt: !929)
!1217 = !{!411, !411, i64 0}
!1218 = !DILocation(line: 133, column: 2, scope: !1211, inlinedAt: !929)
!1219 = distinct !{!1219, !1220, !1221}
!1220 = !DILocation(line: 133, column: 2, scope: !1209)
!1221 = !DILocation(line: 133, column: 30, scope: !1209)
!1222 = !DILocation(line: 133, column: 25, scope: !1211, inlinedAt: !929)
!1223 = !DILocation(line: 133, column: 22, scope: !1211, inlinedAt: !929)
!1224 = !DILocation(line: 133, column: 18, scope: !1211, inlinedAt: !929)
!1225 = distinct !{!1225, !991}
!1226 = !DILocation(line: 134, column: 48, scope: !1227, inlinedAt: !929)
!1227 = distinct !DILexicalBlock(scope: !1214, file: !1, line: 134, column: 2)
!1228 = !DILocation(line: 134, column: 30, scope: !1227, inlinedAt: !929)
!1229 = !DILocation(line: 134, column: 25, scope: !1227, inlinedAt: !929)
!1230 = !DILocation(line: 134, column: 22, scope: !1227, inlinedAt: !929)
!1231 = !DILocation(line: 134, column: 29, scope: !1227, inlinedAt: !929)
!1232 = !DILocation(line: 134, column: 18, scope: !1227, inlinedAt: !929)
!1233 = !DILocation(line: 134, column: 2, scope: !1227, inlinedAt: !929)
!1234 = !DILocation(line: 134, column: 13, scope: !1227, inlinedAt: !929)
!1235 = distinct !{!1235, !1236, !1237}
!1236 = !DILocation(line: 134, column: 2, scope: !1214)
!1237 = !DILocation(line: 134, column: 54, scope: !1214)
!1238 = !DILocation(line: 135, column: 1, scope: !911, inlinedAt: !929)
!1239 = !DILocalVariable(name: "S", arg: 1, scope: !1240, file: !1, line: 137, type: !382)
!1240 = distinct !DISubprogram(name: "LoadDebug", scope: !1, file: !1, line: 137, type: !836, isLocal: true, isDefinition: true, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1241)
!1241 = !{!1239, !1242, !1243, !1244}
!1242 = !DILocalVariable(name: "f", arg: 2, scope: !1240, file: !1, line: 137, type: !339)
!1243 = !DILocalVariable(name: "i", scope: !1240, file: !1, line: 139, type: !85)
!1244 = !DILocalVariable(name: "n", scope: !1240, file: !1, line: 139, type: !85)
!1245 = !DILocation(line: 137, column: 34, scope: !1240, inlinedAt: !1246)
!1246 = distinct !DILocation(line: 176, column: 2, scope: !508)
!1247 = !DILocation(line: 137, column: 44, scope: !1240, inlinedAt: !1246)
!1248 = !DILocation(line: 61, column: 31, scope: !627, inlinedAt: !1249)
!1249 = distinct !DILocation(line: 140, column: 4, scope: !1240, inlinedAt: !1246)
!1250 = !DILocation(line: 63, column: 2, scope: !627, inlinedAt: !1249)
!1251 = !DILocation(line: 48, column: 34, scope: !461, inlinedAt: !1252)
!1252 = distinct !DILocation(line: 64, column: 2, scope: !627, inlinedAt: !1249)
!1253 = !DILocation(line: 48, column: 43, scope: !461, inlinedAt: !1252)
!1254 = !DILocation(line: 48, column: 53, scope: !461, inlinedAt: !1252)
!1255 = !DILocation(line: 50, column: 24, scope: !461, inlinedAt: !1252)
!1256 = !DILocation(line: 50, column: 11, scope: !461, inlinedAt: !1252)
!1257 = !DILocation(line: 50, column: 9, scope: !461, inlinedAt: !1252)
!1258 = !DILocation(line: 51, column: 2, scope: !475, inlinedAt: !1252)
!1259 = !DILocation(line: 51, column: 2, scope: !461, inlinedAt: !1252)
!1260 = !DILocation(line: 36, column: 30, scope: !478, inlinedAt: !1261)
!1261 = distinct !DILocation(line: 51, column: 2, scope: !475, inlinedAt: !1252)
!1262 = !DILocation(line: 36, column: 45, scope: !478, inlinedAt: !1261)
!1263 = !DILocation(line: 38, column: 22, scope: !478, inlinedAt: !1261)
!1264 = !DILocation(line: 38, column: 57, scope: !478, inlinedAt: !1261)
!1265 = !DILocation(line: 38, column: 2, scope: !478, inlinedAt: !1261)
!1266 = !DILocation(line: 39, column: 16, scope: !478, inlinedAt: !1261)
!1267 = !DILocation(line: 39, column: 2, scope: !478, inlinedAt: !1261)
!1268 = !DILocation(line: 40, column: 1, scope: !478, inlinedAt: !1261)
!1269 = !DILocation(line: 52, column: 1, scope: !461, inlinedAt: !1252)
!1270 = !DILocation(line: 65, column: 2, scope: !655, inlinedAt: !1249)
!1271 = !DILocation(line: 63, column: 6, scope: !627, inlinedAt: !1249)
!1272 = !DILocation(line: 65, column: 2, scope: !627, inlinedAt: !1249)
!1273 = !DILocation(line: 67, column: 1, scope: !627, inlinedAt: !1249)
!1274 = !DILocation(line: 66, column: 2, scope: !627, inlinedAt: !1249)
!1275 = !DILocation(line: 141, column: 14, scope: !1240, inlinedAt: !1246)
!1276 = !DILocation(line: 36, column: 30, scope: !478, inlinedAt: !1277)
!1277 = distinct !DILocation(line: 65, column: 2, scope: !655, inlinedAt: !1249)
!1278 = !DILocation(line: 36, column: 45, scope: !478, inlinedAt: !1277)
!1279 = !DILocation(line: 38, column: 22, scope: !478, inlinedAt: !1277)
!1280 = !DILocation(line: 38, column: 57, scope: !478, inlinedAt: !1277)
!1281 = !DILocation(line: 38, column: 2, scope: !478, inlinedAt: !1277)
!1282 = !DILocation(line: 39, column: 16, scope: !478, inlinedAt: !1277)
!1283 = !DILocation(line: 39, column: 2, scope: !478, inlinedAt: !1277)
!1284 = !DILocation(line: 40, column: 1, scope: !478, inlinedAt: !1277)
!1285 = !DILocation(line: 66, column: 9, scope: !627, inlinedAt: !1249)
!1286 = !DILocation(line: 139, column: 8, scope: !1240, inlinedAt: !1246)
!1287 = !DILocation(line: 143, column: 2, scope: !1240, inlinedAt: !1246)
!1288 = !DILocation(line: 141, column: 5, scope: !1240, inlinedAt: !1246)
!1289 = !DILocation(line: 141, column: 13, scope: !1240, inlinedAt: !1246)
!1290 = !{!620, !411, i64 40}
!1291 = !DILocation(line: 142, column: 5, scope: !1240, inlinedAt: !1246)
!1292 = !DILocation(line: 142, column: 17, scope: !1240, inlinedAt: !1246)
!1293 = !{!620, !525, i64 84}
!1294 = !DILocation(line: 48, column: 34, scope: !461, inlinedAt: !1295)
!1295 = distinct !DILocation(line: 143, column: 2, scope: !1240, inlinedAt: !1246)
!1296 = !DILocation(line: 48, column: 43, scope: !461, inlinedAt: !1295)
!1297 = !DILocation(line: 48, column: 53, scope: !461, inlinedAt: !1295)
!1298 = !DILocation(line: 50, column: 24, scope: !461, inlinedAt: !1295)
!1299 = !DILocation(line: 50, column: 11, scope: !461, inlinedAt: !1295)
!1300 = !DILocation(line: 50, column: 9, scope: !461, inlinedAt: !1295)
!1301 = !DILocation(line: 51, column: 2, scope: !475, inlinedAt: !1295)
!1302 = !DILocation(line: 51, column: 2, scope: !461, inlinedAt: !1295)
!1303 = !DILocation(line: 36, column: 30, scope: !478, inlinedAt: !1304)
!1304 = distinct !DILocation(line: 51, column: 2, scope: !475, inlinedAt: !1295)
!1305 = !DILocation(line: 36, column: 45, scope: !478, inlinedAt: !1304)
!1306 = !DILocation(line: 38, column: 22, scope: !478, inlinedAt: !1304)
!1307 = !DILocation(line: 38, column: 57, scope: !478, inlinedAt: !1304)
!1308 = !DILocation(line: 38, column: 2, scope: !478, inlinedAt: !1304)
!1309 = !DILocation(line: 39, column: 16, scope: !478, inlinedAt: !1304)
!1310 = !DILocation(line: 39, column: 2, scope: !478, inlinedAt: !1304)
!1311 = !DILocation(line: 40, column: 1, scope: !478, inlinedAt: !1304)
!1312 = !DILocation(line: 52, column: 1, scope: !461, inlinedAt: !1295)
!1313 = !DILocation(line: 61, column: 31, scope: !627, inlinedAt: !1314)
!1314 = distinct !DILocation(line: 144, column: 4, scope: !1240, inlinedAt: !1246)
!1315 = !DILocation(line: 63, column: 2, scope: !627, inlinedAt: !1314)
!1316 = !DILocation(line: 48, column: 34, scope: !461, inlinedAt: !1317)
!1317 = distinct !DILocation(line: 64, column: 2, scope: !627, inlinedAt: !1314)
!1318 = !DILocation(line: 48, column: 43, scope: !461, inlinedAt: !1317)
!1319 = !DILocation(line: 48, column: 53, scope: !461, inlinedAt: !1317)
!1320 = !DILocation(line: 50, column: 24, scope: !461, inlinedAt: !1317)
!1321 = !DILocation(line: 50, column: 11, scope: !461, inlinedAt: !1317)
!1322 = !DILocation(line: 50, column: 9, scope: !461, inlinedAt: !1317)
!1323 = !DILocation(line: 51, column: 2, scope: !475, inlinedAt: !1317)
!1324 = !DILocation(line: 51, column: 2, scope: !461, inlinedAt: !1317)
!1325 = !DILocation(line: 36, column: 30, scope: !478, inlinedAt: !1326)
!1326 = distinct !DILocation(line: 51, column: 2, scope: !475, inlinedAt: !1317)
!1327 = !DILocation(line: 36, column: 45, scope: !478, inlinedAt: !1326)
!1328 = !DILocation(line: 38, column: 22, scope: !478, inlinedAt: !1326)
!1329 = !DILocation(line: 38, column: 57, scope: !478, inlinedAt: !1326)
!1330 = !DILocation(line: 38, column: 2, scope: !478, inlinedAt: !1326)
!1331 = !DILocation(line: 39, column: 16, scope: !478, inlinedAt: !1326)
!1332 = !DILocation(line: 39, column: 2, scope: !478, inlinedAt: !1326)
!1333 = !DILocation(line: 40, column: 1, scope: !478, inlinedAt: !1326)
!1334 = !DILocation(line: 52, column: 1, scope: !461, inlinedAt: !1317)
!1335 = !DILocation(line: 65, column: 2, scope: !655, inlinedAt: !1314)
!1336 = !DILocation(line: 63, column: 6, scope: !627, inlinedAt: !1314)
!1337 = !DILocation(line: 65, column: 2, scope: !627, inlinedAt: !1314)
!1338 = !DILocation(line: 67, column: 1, scope: !627, inlinedAt: !1314)
!1339 = !DILocation(line: 66, column: 2, scope: !627, inlinedAt: !1314)
!1340 = !DILocation(line: 145, column: 13, scope: !1240, inlinedAt: !1246)
!1341 = !DILocation(line: 36, column: 30, scope: !478, inlinedAt: !1342)
!1342 = distinct !DILocation(line: 65, column: 2, scope: !655, inlinedAt: !1314)
!1343 = !DILocation(line: 36, column: 45, scope: !478, inlinedAt: !1342)
!1344 = !DILocation(line: 38, column: 22, scope: !478, inlinedAt: !1342)
!1345 = !DILocation(line: 38, column: 57, scope: !478, inlinedAt: !1342)
!1346 = !DILocation(line: 38, column: 2, scope: !478, inlinedAt: !1342)
!1347 = !DILocation(line: 39, column: 16, scope: !478, inlinedAt: !1342)
!1348 = !DILocation(line: 39, column: 2, scope: !478, inlinedAt: !1342)
!1349 = !DILocation(line: 40, column: 1, scope: !478, inlinedAt: !1342)
!1350 = !DILocation(line: 66, column: 9, scope: !627, inlinedAt: !1314)
!1351 = !DILocation(line: 145, column: 5, scope: !1240, inlinedAt: !1246)
!1352 = !DILocation(line: 145, column: 12, scope: !1240, inlinedAt: !1246)
!1353 = !{!620, !411, i64 48}
!1354 = !DILocation(line: 146, column: 5, scope: !1240, inlinedAt: !1246)
!1355 = !DILocation(line: 146, column: 16, scope: !1240, inlinedAt: !1246)
!1356 = !{!620, !525, i64 92}
!1357 = !DILocation(line: 139, column: 6, scope: !1240, inlinedAt: !1246)
!1358 = !DILocation(line: 147, column: 7, scope: !1359, inlinedAt: !1246)
!1359 = distinct !DILexicalBlock(scope: !1240, file: !1, line: 147, column: 2)
!1360 = !DILocation(line: 147, column: 13, scope: !1361, inlinedAt: !1246)
!1361 = distinct !DILexicalBlock(scope: !1359, file: !1, line: 147, column: 2)
!1362 = !DILocation(line: 147, column: 2, scope: !1359, inlinedAt: !1246)
!1363 = !DILocation(line: 148, column: 7, scope: !1364, inlinedAt: !1246)
!1364 = distinct !DILexicalBlock(scope: !1240, file: !1, line: 148, column: 2)
!1365 = !DILocation(line: 148, column: 2, scope: !1364, inlinedAt: !1246)
!1366 = !DILocation(line: 147, column: 36, scope: !1361, inlinedAt: !1246)
!1367 = !DILocation(line: 147, column: 43, scope: !1361, inlinedAt: !1246)
!1368 = !{!1369, !411, i64 0}
!1369 = !{!"LocVar", !411, i64 0, !525, i64 8, !525, i64 12}
!1370 = !DILocation(line: 147, column: 18, scope: !1361, inlinedAt: !1246)
!1371 = !DILocation(line: 147, column: 2, scope: !1361, inlinedAt: !1246)
!1372 = distinct !{!1372, !1373, !1374}
!1373 = !DILocation(line: 147, column: 2, scope: !1359)
!1374 = !DILocation(line: 147, column: 44, scope: !1359)
!1375 = distinct !{!1375, !991}
!1376 = !DILocation(line: 76, column: 39, scope: !552, inlinedAt: !1377)
!1377 = distinct !DILocation(line: 150, column: 25, scope: !1378, inlinedAt: !1246)
!1378 = distinct !DILexicalBlock(scope: !1379, file: !1, line: 149, column: 2)
!1379 = distinct !DILexicalBlock(scope: !1364, file: !1, line: 148, column: 2)
!1380 = !DILocation(line: 78, column: 2, scope: !552, inlinedAt: !1377)
!1381 = !DILocation(line: 48, column: 34, scope: !461, inlinedAt: !1382)
!1382 = distinct !DILocation(line: 79, column: 2, scope: !552, inlinedAt: !1377)
!1383 = !DILocation(line: 48, column: 43, scope: !461, inlinedAt: !1382)
!1384 = !DILocation(line: 48, column: 53, scope: !461, inlinedAt: !1382)
!1385 = !DILocation(line: 50, column: 24, scope: !461, inlinedAt: !1382)
!1386 = !DILocation(line: 50, column: 11, scope: !461, inlinedAt: !1382)
!1387 = !DILocation(line: 50, column: 9, scope: !461, inlinedAt: !1382)
!1388 = !DILocation(line: 51, column: 2, scope: !475, inlinedAt: !1382)
!1389 = !DILocation(line: 51, column: 2, scope: !461, inlinedAt: !1382)
!1390 = !DILocation(line: 36, column: 30, scope: !478, inlinedAt: !1391)
!1391 = distinct !DILocation(line: 51, column: 2, scope: !475, inlinedAt: !1382)
!1392 = !DILocation(line: 36, column: 45, scope: !478, inlinedAt: !1391)
!1393 = !DILocation(line: 38, column: 22, scope: !478, inlinedAt: !1391)
!1394 = !DILocation(line: 38, column: 57, scope: !478, inlinedAt: !1391)
!1395 = !DILocation(line: 38, column: 2, scope: !478, inlinedAt: !1391)
!1396 = !DILocation(line: 39, column: 16, scope: !478, inlinedAt: !1391)
!1397 = !DILocation(line: 39, column: 2, scope: !478, inlinedAt: !1391)
!1398 = !DILocation(line: 40, column: 1, scope: !478, inlinedAt: !1391)
!1399 = !DILocation(line: 52, column: 1, scope: !461, inlinedAt: !1382)
!1400 = !DILocation(line: 80, column: 6, scope: !559, inlinedAt: !1377)
!1401 = !DILocation(line: 78, column: 9, scope: !552, inlinedAt: !1377)
!1402 = !DILocation(line: 80, column: 10, scope: !559, inlinedAt: !1377)
!1403 = !DILocation(line: 80, column: 6, scope: !552, inlinedAt: !1377)
!1404 = !DILocation(line: 84, column: 29, scope: !558, inlinedAt: !1377)
!1405 = !DILocation(line: 84, column: 34, scope: !558, inlinedAt: !1377)
!1406 = !DILocation(line: 84, column: 11, scope: !558, inlinedAt: !1377)
!1407 = !DILocation(line: 84, column: 9, scope: !558, inlinedAt: !1377)
!1408 = !DILocation(line: 85, column: 17, scope: !558, inlinedAt: !1377)
!1409 = !DILocation(line: 48, column: 34, scope: !461, inlinedAt: !1410)
!1410 = distinct !DILocation(line: 85, column: 3, scope: !558, inlinedAt: !1377)
!1411 = !DILocation(line: 48, column: 43, scope: !461, inlinedAt: !1410)
!1412 = !DILocation(line: 48, column: 53, scope: !461, inlinedAt: !1410)
!1413 = !DILocation(line: 50, column: 24, scope: !461, inlinedAt: !1410)
!1414 = !DILocation(line: 50, column: 11, scope: !461, inlinedAt: !1410)
!1415 = !DILocation(line: 50, column: 9, scope: !461, inlinedAt: !1410)
!1416 = !DILocation(line: 51, column: 2, scope: !475, inlinedAt: !1410)
!1417 = !DILocation(line: 51, column: 2, scope: !461, inlinedAt: !1410)
!1418 = !DILocation(line: 36, column: 30, scope: !478, inlinedAt: !1419)
!1419 = distinct !DILocation(line: 51, column: 2, scope: !475, inlinedAt: !1410)
!1420 = !DILocation(line: 36, column: 45, scope: !478, inlinedAt: !1419)
!1421 = !DILocation(line: 38, column: 22, scope: !478, inlinedAt: !1419)
!1422 = !DILocation(line: 38, column: 57, scope: !478, inlinedAt: !1419)
!1423 = !DILocation(line: 38, column: 2, scope: !478, inlinedAt: !1419)
!1424 = !DILocation(line: 39, column: 16, scope: !478, inlinedAt: !1419)
!1425 = !DILocation(line: 39, column: 2, scope: !478, inlinedAt: !1419)
!1426 = !DILocation(line: 40, column: 1, scope: !478, inlinedAt: !1419)
!1427 = !DILocation(line: 52, column: 1, scope: !461, inlinedAt: !1410)
!1428 = !DILocation(line: 86, column: 26, scope: !558, inlinedAt: !1377)
!1429 = !DILocation(line: 86, column: 30, scope: !558, inlinedAt: !1377)
!1430 = !DILocation(line: 86, column: 34, scope: !558, inlinedAt: !1377)
!1431 = !DILocation(line: 86, column: 10, scope: !558, inlinedAt: !1377)
!1432 = !DILocation(line: 0, scope: !558, inlinedAt: !1377)
!1433 = !DILocation(line: 88, column: 1, scope: !552, inlinedAt: !1377)
!1434 = !DILocation(line: 150, column: 6, scope: !1378, inlinedAt: !1246)
!1435 = !DILocation(line: 150, column: 17, scope: !1378, inlinedAt: !1246)
!1436 = !DILocation(line: 150, column: 24, scope: !1378, inlinedAt: !1246)
!1437 = !DILocation(line: 61, column: 31, scope: !627, inlinedAt: !1438)
!1438 = distinct !DILocation(line: 151, column: 25, scope: !1378, inlinedAt: !1246)
!1439 = !DILocation(line: 63, column: 2, scope: !627, inlinedAt: !1438)
!1440 = !DILocation(line: 48, column: 34, scope: !461, inlinedAt: !1441)
!1441 = distinct !DILocation(line: 64, column: 2, scope: !627, inlinedAt: !1438)
!1442 = !DILocation(line: 48, column: 43, scope: !461, inlinedAt: !1441)
!1443 = !DILocation(line: 48, column: 53, scope: !461, inlinedAt: !1441)
!1444 = !DILocation(line: 50, column: 24, scope: !461, inlinedAt: !1441)
!1445 = !DILocation(line: 50, column: 11, scope: !461, inlinedAt: !1441)
!1446 = !DILocation(line: 50, column: 9, scope: !461, inlinedAt: !1441)
!1447 = !DILocation(line: 51, column: 2, scope: !475, inlinedAt: !1441)
!1448 = !DILocation(line: 51, column: 2, scope: !461, inlinedAt: !1441)
!1449 = !DILocation(line: 36, column: 30, scope: !478, inlinedAt: !1450)
!1450 = distinct !DILocation(line: 51, column: 2, scope: !475, inlinedAt: !1441)
!1451 = !DILocation(line: 36, column: 45, scope: !478, inlinedAt: !1450)
!1452 = !DILocation(line: 38, column: 22, scope: !478, inlinedAt: !1450)
!1453 = !DILocation(line: 38, column: 57, scope: !478, inlinedAt: !1450)
!1454 = !DILocation(line: 38, column: 2, scope: !478, inlinedAt: !1450)
!1455 = !DILocation(line: 39, column: 16, scope: !478, inlinedAt: !1450)
!1456 = !DILocation(line: 39, column: 2, scope: !478, inlinedAt: !1450)
!1457 = !DILocation(line: 40, column: 1, scope: !478, inlinedAt: !1450)
!1458 = !DILocation(line: 52, column: 1, scope: !461, inlinedAt: !1441)
!1459 = !DILocation(line: 65, column: 2, scope: !655, inlinedAt: !1438)
!1460 = !DILocation(line: 63, column: 6, scope: !627, inlinedAt: !1438)
!1461 = !DILocation(line: 65, column: 2, scope: !627, inlinedAt: !1438)
!1462 = !DILocation(line: 36, column: 30, scope: !478, inlinedAt: !1463)
!1463 = distinct !DILocation(line: 65, column: 2, scope: !655, inlinedAt: !1438)
!1464 = !DILocation(line: 36, column: 45, scope: !478, inlinedAt: !1463)
!1465 = !DILocation(line: 38, column: 22, scope: !478, inlinedAt: !1463)
!1466 = !DILocation(line: 38, column: 57, scope: !478, inlinedAt: !1463)
!1467 = !DILocation(line: 38, column: 2, scope: !478, inlinedAt: !1463)
!1468 = !DILocation(line: 39, column: 16, scope: !478, inlinedAt: !1463)
!1469 = !DILocation(line: 39, column: 2, scope: !478, inlinedAt: !1463)
!1470 = !DILocation(line: 40, column: 1, scope: !478, inlinedAt: !1463)
!1471 = !DILocation(line: 66, column: 9, scope: !627, inlinedAt: !1438)
!1472 = !DILocation(line: 67, column: 1, scope: !627, inlinedAt: !1438)
!1473 = !DILocation(line: 66, column: 2, scope: !627, inlinedAt: !1438)
!1474 = !DILocation(line: 151, column: 6, scope: !1378, inlinedAt: !1246)
!1475 = !DILocation(line: 151, column: 17, scope: !1378, inlinedAt: !1246)
!1476 = !DILocation(line: 151, column: 24, scope: !1378, inlinedAt: !1246)
!1477 = !{!1369, !525, i64 8}
!1478 = !DILocation(line: 61, column: 31, scope: !627, inlinedAt: !1479)
!1479 = distinct !DILocation(line: 152, column: 23, scope: !1378, inlinedAt: !1246)
!1480 = !DILocation(line: 63, column: 2, scope: !627, inlinedAt: !1479)
!1481 = !DILocation(line: 48, column: 34, scope: !461, inlinedAt: !1482)
!1482 = distinct !DILocation(line: 64, column: 2, scope: !627, inlinedAt: !1479)
!1483 = !DILocation(line: 48, column: 43, scope: !461, inlinedAt: !1482)
!1484 = !DILocation(line: 48, column: 53, scope: !461, inlinedAt: !1482)
!1485 = !DILocation(line: 50, column: 24, scope: !461, inlinedAt: !1482)
!1486 = !DILocation(line: 50, column: 11, scope: !461, inlinedAt: !1482)
!1487 = !DILocation(line: 50, column: 9, scope: !461, inlinedAt: !1482)
!1488 = !DILocation(line: 51, column: 2, scope: !475, inlinedAt: !1482)
!1489 = !DILocation(line: 51, column: 2, scope: !461, inlinedAt: !1482)
!1490 = !DILocation(line: 36, column: 30, scope: !478, inlinedAt: !1491)
!1491 = distinct !DILocation(line: 51, column: 2, scope: !475, inlinedAt: !1482)
!1492 = !DILocation(line: 36, column: 45, scope: !478, inlinedAt: !1491)
!1493 = !DILocation(line: 38, column: 22, scope: !478, inlinedAt: !1491)
!1494 = !DILocation(line: 38, column: 57, scope: !478, inlinedAt: !1491)
!1495 = !DILocation(line: 38, column: 2, scope: !478, inlinedAt: !1491)
!1496 = !DILocation(line: 39, column: 16, scope: !478, inlinedAt: !1491)
!1497 = !DILocation(line: 39, column: 2, scope: !478, inlinedAt: !1491)
!1498 = !DILocation(line: 40, column: 1, scope: !478, inlinedAt: !1491)
!1499 = !DILocation(line: 52, column: 1, scope: !461, inlinedAt: !1482)
!1500 = !DILocation(line: 65, column: 2, scope: !655, inlinedAt: !1479)
!1501 = !DILocation(line: 63, column: 6, scope: !627, inlinedAt: !1479)
!1502 = !DILocation(line: 65, column: 2, scope: !627, inlinedAt: !1479)
!1503 = !DILocation(line: 36, column: 30, scope: !478, inlinedAt: !1504)
!1504 = distinct !DILocation(line: 65, column: 2, scope: !655, inlinedAt: !1479)
!1505 = !DILocation(line: 36, column: 45, scope: !478, inlinedAt: !1504)
!1506 = !DILocation(line: 38, column: 22, scope: !478, inlinedAt: !1504)
!1507 = !DILocation(line: 38, column: 57, scope: !478, inlinedAt: !1504)
!1508 = !DILocation(line: 38, column: 2, scope: !478, inlinedAt: !1504)
!1509 = !DILocation(line: 39, column: 16, scope: !478, inlinedAt: !1504)
!1510 = !DILocation(line: 39, column: 2, scope: !478, inlinedAt: !1504)
!1511 = !DILocation(line: 40, column: 1, scope: !478, inlinedAt: !1504)
!1512 = !DILocation(line: 66, column: 9, scope: !627, inlinedAt: !1479)
!1513 = !DILocation(line: 67, column: 1, scope: !627, inlinedAt: !1479)
!1514 = !DILocation(line: 66, column: 2, scope: !627, inlinedAt: !1479)
!1515 = !DILocation(line: 152, column: 6, scope: !1378, inlinedAt: !1246)
!1516 = !DILocation(line: 152, column: 17, scope: !1378, inlinedAt: !1246)
!1517 = !DILocation(line: 152, column: 22, scope: !1378, inlinedAt: !1246)
!1518 = !{!1369, !525, i64 12}
!1519 = !DILocation(line: 148, column: 18, scope: !1379, inlinedAt: !1246)
!1520 = !DILocation(line: 148, column: 2, scope: !1379, inlinedAt: !1246)
!1521 = !DILocation(line: 148, column: 13, scope: !1379, inlinedAt: !1246)
!1522 = distinct !{!1522, !1523, !1524}
!1523 = !DILocation(line: 148, column: 2, scope: !1364)
!1524 = !DILocation(line: 153, column: 2, scope: !1364)
!1525 = !DILocation(line: 61, column: 31, scope: !627, inlinedAt: !1526)
!1526 = distinct !DILocation(line: 154, column: 4, scope: !1240, inlinedAt: !1246)
!1527 = !DILocation(line: 63, column: 2, scope: !627, inlinedAt: !1526)
!1528 = !DILocation(line: 48, column: 34, scope: !461, inlinedAt: !1529)
!1529 = distinct !DILocation(line: 64, column: 2, scope: !627, inlinedAt: !1526)
!1530 = !DILocation(line: 48, column: 43, scope: !461, inlinedAt: !1529)
!1531 = !DILocation(line: 48, column: 53, scope: !461, inlinedAt: !1529)
!1532 = !DILocation(line: 50, column: 24, scope: !461, inlinedAt: !1529)
!1533 = !DILocation(line: 50, column: 11, scope: !461, inlinedAt: !1529)
!1534 = !DILocation(line: 50, column: 9, scope: !461, inlinedAt: !1529)
!1535 = !DILocation(line: 51, column: 2, scope: !475, inlinedAt: !1529)
!1536 = !DILocation(line: 51, column: 2, scope: !461, inlinedAt: !1529)
!1537 = !DILocation(line: 36, column: 30, scope: !478, inlinedAt: !1538)
!1538 = distinct !DILocation(line: 51, column: 2, scope: !475, inlinedAt: !1529)
!1539 = !DILocation(line: 36, column: 45, scope: !478, inlinedAt: !1538)
!1540 = !DILocation(line: 38, column: 22, scope: !478, inlinedAt: !1538)
!1541 = !DILocation(line: 38, column: 57, scope: !478, inlinedAt: !1538)
!1542 = !DILocation(line: 38, column: 2, scope: !478, inlinedAt: !1538)
!1543 = !DILocation(line: 39, column: 16, scope: !478, inlinedAt: !1538)
!1544 = !DILocation(line: 39, column: 2, scope: !478, inlinedAt: !1538)
!1545 = !DILocation(line: 40, column: 1, scope: !478, inlinedAt: !1538)
!1546 = !DILocation(line: 52, column: 1, scope: !461, inlinedAt: !1529)
!1547 = !DILocation(line: 65, column: 2, scope: !655, inlinedAt: !1526)
!1548 = !DILocation(line: 63, column: 6, scope: !627, inlinedAt: !1526)
!1549 = !DILocation(line: 65, column: 2, scope: !627, inlinedAt: !1526)
!1550 = !DILocation(line: 67, column: 1, scope: !627, inlinedAt: !1526)
!1551 = !DILocation(line: 66, column: 2, scope: !627, inlinedAt: !1526)
!1552 = !DILocation(line: 155, column: 14, scope: !1240, inlinedAt: !1246)
!1553 = !DILocation(line: 36, column: 30, scope: !478, inlinedAt: !1554)
!1554 = distinct !DILocation(line: 65, column: 2, scope: !655, inlinedAt: !1526)
!1555 = !DILocation(line: 36, column: 45, scope: !478, inlinedAt: !1554)
!1556 = !DILocation(line: 38, column: 22, scope: !478, inlinedAt: !1554)
!1557 = !DILocation(line: 38, column: 57, scope: !478, inlinedAt: !1554)
!1558 = !DILocation(line: 38, column: 2, scope: !478, inlinedAt: !1554)
!1559 = !DILocation(line: 39, column: 16, scope: !478, inlinedAt: !1554)
!1560 = !DILocation(line: 39, column: 2, scope: !478, inlinedAt: !1554)
!1561 = !DILocation(line: 40, column: 1, scope: !478, inlinedAt: !1554)
!1562 = !DILocation(line: 66, column: 9, scope: !627, inlinedAt: !1526)
!1563 = !DILocation(line: 155, column: 5, scope: !1240, inlinedAt: !1246)
!1564 = !DILocation(line: 155, column: 13, scope: !1240, inlinedAt: !1246)
!1565 = !{!620, !411, i64 56}
!1566 = !DILocation(line: 156, column: 5, scope: !1240, inlinedAt: !1246)
!1567 = !DILocation(line: 156, column: 17, scope: !1240, inlinedAt: !1246)
!1568 = !{!620, !525, i64 72}
!1569 = !DILocation(line: 157, column: 7, scope: !1570, inlinedAt: !1246)
!1570 = distinct !DILexicalBlock(scope: !1240, file: !1, line: 157, column: 2)
!1571 = !DILocation(line: 157, column: 13, scope: !1572, inlinedAt: !1246)
!1572 = distinct !DILexicalBlock(scope: !1570, file: !1, line: 157, column: 2)
!1573 = !DILocation(line: 157, column: 2, scope: !1570, inlinedAt: !1246)
!1574 = !DILocation(line: 158, column: 7, scope: !1575, inlinedAt: !1246)
!1575 = distinct !DILexicalBlock(scope: !1240, file: !1, line: 158, column: 2)
!1576 = !DILocation(line: 158, column: 2, scope: !1575, inlinedAt: !1246)
!1577 = !DILocation(line: 157, column: 36, scope: !1572, inlinedAt: !1246)
!1578 = !DILocation(line: 157, column: 2, scope: !1572, inlinedAt: !1246)
!1579 = distinct !{!1579, !1580, !1581}
!1580 = !DILocation(line: 157, column: 2, scope: !1570)
!1581 = !DILocation(line: 157, column: 37, scope: !1570)
!1582 = !DILocation(line: 157, column: 25, scope: !1572, inlinedAt: !1246)
!1583 = !DILocation(line: 157, column: 22, scope: !1572, inlinedAt: !1246)
!1584 = !DILocation(line: 157, column: 18, scope: !1572, inlinedAt: !1246)
!1585 = distinct !{!1585, !991}
!1586 = !DILocation(line: 76, column: 39, scope: !552, inlinedAt: !1587)
!1587 = distinct !DILocation(line: 158, column: 37, scope: !1588, inlinedAt: !1246)
!1588 = distinct !DILexicalBlock(scope: !1575, file: !1, line: 158, column: 2)
!1589 = !DILocation(line: 78, column: 2, scope: !552, inlinedAt: !1587)
!1590 = !DILocation(line: 48, column: 34, scope: !461, inlinedAt: !1591)
!1591 = distinct !DILocation(line: 79, column: 2, scope: !552, inlinedAt: !1587)
!1592 = !DILocation(line: 48, column: 43, scope: !461, inlinedAt: !1591)
!1593 = !DILocation(line: 48, column: 53, scope: !461, inlinedAt: !1591)
!1594 = !DILocation(line: 50, column: 24, scope: !461, inlinedAt: !1591)
!1595 = !DILocation(line: 50, column: 11, scope: !461, inlinedAt: !1591)
!1596 = !DILocation(line: 50, column: 9, scope: !461, inlinedAt: !1591)
!1597 = !DILocation(line: 51, column: 2, scope: !475, inlinedAt: !1591)
!1598 = !DILocation(line: 51, column: 2, scope: !461, inlinedAt: !1591)
!1599 = !DILocation(line: 36, column: 30, scope: !478, inlinedAt: !1600)
!1600 = distinct !DILocation(line: 51, column: 2, scope: !475, inlinedAt: !1591)
!1601 = !DILocation(line: 36, column: 45, scope: !478, inlinedAt: !1600)
!1602 = !DILocation(line: 38, column: 22, scope: !478, inlinedAt: !1600)
!1603 = !DILocation(line: 38, column: 57, scope: !478, inlinedAt: !1600)
!1604 = !DILocation(line: 38, column: 2, scope: !478, inlinedAt: !1600)
!1605 = !DILocation(line: 39, column: 16, scope: !478, inlinedAt: !1600)
!1606 = !DILocation(line: 39, column: 2, scope: !478, inlinedAt: !1600)
!1607 = !DILocation(line: 40, column: 1, scope: !478, inlinedAt: !1600)
!1608 = !DILocation(line: 52, column: 1, scope: !461, inlinedAt: !1591)
!1609 = !DILocation(line: 80, column: 6, scope: !559, inlinedAt: !1587)
!1610 = !DILocation(line: 78, column: 9, scope: !552, inlinedAt: !1587)
!1611 = !DILocation(line: 80, column: 10, scope: !559, inlinedAt: !1587)
!1612 = !DILocation(line: 80, column: 6, scope: !552, inlinedAt: !1587)
!1613 = !DILocation(line: 84, column: 29, scope: !558, inlinedAt: !1587)
!1614 = !DILocation(line: 84, column: 34, scope: !558, inlinedAt: !1587)
!1615 = !DILocation(line: 84, column: 11, scope: !558, inlinedAt: !1587)
!1616 = !DILocation(line: 84, column: 9, scope: !558, inlinedAt: !1587)
!1617 = !DILocation(line: 85, column: 17, scope: !558, inlinedAt: !1587)
!1618 = !DILocation(line: 48, column: 34, scope: !461, inlinedAt: !1619)
!1619 = distinct !DILocation(line: 85, column: 3, scope: !558, inlinedAt: !1587)
!1620 = !DILocation(line: 48, column: 43, scope: !461, inlinedAt: !1619)
!1621 = !DILocation(line: 48, column: 53, scope: !461, inlinedAt: !1619)
!1622 = !DILocation(line: 50, column: 24, scope: !461, inlinedAt: !1619)
!1623 = !DILocation(line: 50, column: 11, scope: !461, inlinedAt: !1619)
!1624 = !DILocation(line: 50, column: 9, scope: !461, inlinedAt: !1619)
!1625 = !DILocation(line: 51, column: 2, scope: !475, inlinedAt: !1619)
!1626 = !DILocation(line: 51, column: 2, scope: !461, inlinedAt: !1619)
!1627 = !DILocation(line: 36, column: 30, scope: !478, inlinedAt: !1628)
!1628 = distinct !DILocation(line: 51, column: 2, scope: !475, inlinedAt: !1619)
!1629 = !DILocation(line: 36, column: 45, scope: !478, inlinedAt: !1628)
!1630 = !DILocation(line: 38, column: 22, scope: !478, inlinedAt: !1628)
!1631 = !DILocation(line: 38, column: 57, scope: !478, inlinedAt: !1628)
!1632 = !DILocation(line: 38, column: 2, scope: !478, inlinedAt: !1628)
!1633 = !DILocation(line: 39, column: 16, scope: !478, inlinedAt: !1628)
!1634 = !DILocation(line: 39, column: 2, scope: !478, inlinedAt: !1628)
!1635 = !DILocation(line: 40, column: 1, scope: !478, inlinedAt: !1628)
!1636 = !DILocation(line: 52, column: 1, scope: !461, inlinedAt: !1619)
!1637 = !DILocation(line: 86, column: 26, scope: !558, inlinedAt: !1587)
!1638 = !DILocation(line: 86, column: 30, scope: !558, inlinedAt: !1587)
!1639 = !DILocation(line: 86, column: 34, scope: !558, inlinedAt: !1587)
!1640 = !DILocation(line: 86, column: 10, scope: !558, inlinedAt: !1587)
!1641 = !DILocation(line: 0, scope: !558, inlinedAt: !1587)
!1642 = !DILocation(line: 88, column: 1, scope: !552, inlinedAt: !1587)
!1643 = !DILocation(line: 158, column: 25, scope: !1588, inlinedAt: !1246)
!1644 = !DILocation(line: 158, column: 22, scope: !1588, inlinedAt: !1246)
!1645 = !DILocation(line: 158, column: 36, scope: !1588, inlinedAt: !1246)
!1646 = !DILocation(line: 158, column: 18, scope: !1588, inlinedAt: !1246)
!1647 = !DILocation(line: 158, column: 2, scope: !1588, inlinedAt: !1246)
!1648 = !DILocation(line: 158, column: 13, scope: !1588, inlinedAt: !1246)
!1649 = distinct !{!1649, !1650, !1651}
!1650 = !DILocation(line: 158, column: 2, scope: !1575)
!1651 = !DILocation(line: 158, column: 49, scope: !1575)
!1652 = !DILocation(line: 159, column: 1, scope: !1240, inlinedAt: !1246)
!1653 = !DILocation(line: 177, column: 2, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !508, file: !1, line: 177, column: 2)
!1655 = !DILocation(line: 177, column: 2, scope: !508)
!1656 = !DILocation(line: 36, column: 30, scope: !478, inlinedAt: !1657)
!1657 = distinct !DILocation(line: 177, column: 2, scope: !1654)
!1658 = !DILocation(line: 36, column: 45, scope: !478, inlinedAt: !1657)
!1659 = !DILocation(line: 38, column: 22, scope: !478, inlinedAt: !1657)
!1660 = !DILocation(line: 38, column: 57, scope: !478, inlinedAt: !1657)
!1661 = !DILocation(line: 38, column: 2, scope: !478, inlinedAt: !1657)
!1662 = !DILocation(line: 39, column: 16, scope: !478, inlinedAt: !1657)
!1663 = !DILocation(line: 39, column: 2, scope: !478, inlinedAt: !1657)
!1664 = !DILocation(line: 40, column: 1, scope: !478, inlinedAt: !1657)
!1665 = !DILocation(line: 178, column: 5, scope: !508)
!1666 = !DILocation(line: 178, column: 8, scope: !508)
!1667 = !DILocation(line: 178, column: 11, scope: !508)
!1668 = !DILocation(line: 179, column: 8, scope: !508)
!1669 = !DILocation(line: 179, column: 15, scope: !508)
!1670 = !DILocation(line: 180, column: 2, scope: !508)
!1671 = !DILocation(line: 214, column: 25, scope: !434)
!1672 = !DILocation(line: 216, column: 6, scope: !434)
!1673 = !DILocation(line: 217, column: 2, scope: !434)
!1674 = !DILocation(line: 218, column: 3, scope: !434)
!1675 = !DILocation(line: 219, column: 4, scope: !434)
!1676 = !DILocation(line: 219, column: 6, scope: !434)
!1677 = !DILocation(line: 220, column: 4, scope: !434)
!1678 = !DILocation(line: 220, column: 6, scope: !434)
!1679 = !DILocation(line: 221, column: 4, scope: !434)
!1680 = !DILocation(line: 221, column: 6, scope: !434)
!1681 = !DILocation(line: 222, column: 4, scope: !434)
!1682 = !DILocation(line: 222, column: 6, scope: !434)
!1683 = !DILocation(line: 223, column: 4, scope: !434)
!1684 = !DILocation(line: 223, column: 6, scope: !434)
!1685 = !DILocation(line: 224, column: 4, scope: !434)
!1686 = !DILocation(line: 224, column: 6, scope: !434)
!1687 = !DILocation(line: 225, column: 4, scope: !434)
!1688 = !DILocation(line: 225, column: 6, scope: !434)
!1689 = !DILocation(line: 226, column: 6, scope: !434)
!1690 = !DILocation(line: 227, column: 1, scope: !434)
