; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/ldump.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/ldump.c"
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
%struct.Proto = type { %union.GCObject*, i8, i8, %struct.lua_TValue*, i32*, %struct.Proto**, i32*, %struct.LocVar*, %union.TString**, %union.TString*, i32, i32, i32, i32, i32, i32, i32, i32, %union.GCObject*, i8, i8, i8, i8 }
%struct.LocVar = type { %union.TString*, i32, i32 }
%struct.DumpState = type { %struct.lua_State*, i32 (%struct.lua_State*, i8*, i64, i8*)*, i8*, i32, i32 }

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define hidden i32 @luaU_dump(%struct.lua_State*, %struct.Proto* nocapture readonly, i32 (%struct.lua_State*, i8*, i64, i8*)*, i8*, i32) local_unnamed_addr #0 !dbg !12 {
  %6 = alloca [12 x i8], align 1
  %7 = alloca %struct.DumpState, align 8
  %8 = bitcast %struct.DumpState* %7 to i8*, !dbg !383
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #4, !dbg !383
  %9 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %7, i64 0, i32 0, !dbg !384
  store %struct.lua_State* %0, %struct.lua_State** %9, align 8, !dbg !385, !tbaa !386
  %10 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %7, i64 0, i32 1, !dbg !392
  store i32 (%struct.lua_State*, i8*, i64, i8*)* %2, i32 (%struct.lua_State*, i8*, i64, i8*)** %10, align 8, !dbg !393, !tbaa !394
  %11 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %7, i64 0, i32 2, !dbg !395
  store i8* %3, i8** %11, align 8, !dbg !396, !tbaa !397
  %12 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %7, i64 0, i32 3, !dbg !398
  store i32 %4, i32* %12, align 8, !dbg !399, !tbaa !400
  %13 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %7, i64 0, i32 4, !dbg !401
  %14 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 0, !dbg !404
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %14) #4, !dbg !404
  call void @luaU_header(i8* nonnull %14) #5, !dbg !405
  %15 = call i32 %2(%struct.lua_State* %0, i8* nonnull %14, i64 12, i8* %3) #5, !dbg !417
  store i32 %15, i32* %13, align 4, !dbg !420, !tbaa !421
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !422
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %14) #4, !dbg !423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !423
  call fastcc void @DumpFunction(%struct.Proto* %1, %union.TString* null, %struct.DumpState* nonnull %7) #6, !dbg !424
  %16 = load i32, i32* %13, align 4, !dbg !425, !tbaa !421
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #4, !dbg !426
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !427
  ret i32 %16, !dbg !427
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define internal fastcc void @DumpFunction(%struct.Proto* nocapture readonly, %union.TString* readnone, %struct.DumpState*) unnamed_addr #0 !dbg !428 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca double, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 9, !dbg !440
  %30 = load %union.TString*, %union.TString** %29, align 8, !dbg !440, !tbaa !441
  %31 = icmp eq %union.TString* %30, %1, !dbg !443
  br i1 %31, label %38, label %32, !dbg !444

; <label>:32:                                     ; preds = %3
  %33 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 3, !dbg !445
  %34 = load i32, i32* %33, align 8, !dbg !445, !tbaa !400
  %35 = icmp ne i32 %34, 0, !dbg !446
  %36 = icmp eq %union.TString* %30, null, !dbg !447
  %37 = or i1 %36, %35
  br i1 %37, label %38, label %53

; <label>:38:                                     ; preds = %32, %3
  %39 = bitcast i64* %18 to i8*, !dbg !462
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %39) #4, !dbg !462
  store i64 0, i64* %18, align 8, !dbg !463, !tbaa !464
  %40 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 4, !dbg !470
  %41 = load i32, i32* %40, align 4, !dbg !470, !tbaa !421
  %42 = icmp eq i32 %41, 0, !dbg !471
  br i1 %42, label %43, label %51, !dbg !472

; <label>:43:                                     ; preds = %38
  %44 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 1, !dbg !473
  %45 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %44, align 8, !dbg !473, !tbaa !394
  %46 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 0, !dbg !474
  %47 = load %struct.lua_State*, %struct.lua_State** %46, align 8, !dbg !474, !tbaa !386
  %48 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 2, !dbg !475
  %49 = load i8*, i8** %48, align 8, !dbg !475, !tbaa !397
  %50 = call i32 %45(%struct.lua_State* %47, i8* nonnull %39, i64 8, i8* %49) #5, !dbg !476
  store i32 %50, i32* %40, align 4, !dbg !477, !tbaa !421
  br label %51, !dbg !478

; <label>:51:                                     ; preds = %43, %38
  %52 = phi i32 [ %50, %43 ], [ %41, %38 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !479
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %39) #4, !dbg !480
  br label %81, !dbg !481

; <label>:53:                                     ; preds = %32
  %54 = getelementptr inbounds %union.TString, %union.TString* %30, i64 1, !dbg !482
  %55 = bitcast %union.TString* %54 to i8*, !dbg !482
  %56 = bitcast i64* %19 to i8*, !dbg !483
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %56) #4, !dbg !483
  %57 = getelementptr inbounds %union.TString, %union.TString* %30, i64 0, i32 0, i32 5, !dbg !484
  %58 = load i64, i64* %57, align 8, !dbg !484, !tbaa !485
  %59 = add i64 %58, 1, !dbg !486
  store i64 %59, i64* %19, align 8, !dbg !487, !tbaa !464
  %60 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 4, !dbg !492
  %61 = load i32, i32* %60, align 4, !dbg !492, !tbaa !421
  %62 = icmp eq i32 %61, 0, !dbg !493
  br i1 %62, label %64, label %63, !dbg !494

; <label>:63:                                     ; preds = %53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !495
  br label %79, !dbg !499

; <label>:64:                                     ; preds = %53
  %65 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 1, !dbg !500
  %66 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %65, align 8, !dbg !500, !tbaa !394
  %67 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 0, !dbg !501
  %68 = load %struct.lua_State*, %struct.lua_State** %67, align 8, !dbg !501, !tbaa !386
  %69 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 2, !dbg !502
  %70 = load i8*, i8** %69, align 8, !dbg !502, !tbaa !397
  %71 = call i32 %66(%struct.lua_State* %68, i8* nonnull %56, i64 8, i8* %70) #5, !dbg !503
  store i32 %71, i32* %60, align 4, !dbg !504, !tbaa !421
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !495
  %72 = icmp eq i32 %71, 0, !dbg !505
  br i1 %72, label %73, label %79, !dbg !499

; <label>:73:                                     ; preds = %64
  %74 = load i64, i64* %19, align 8, !dbg !506, !tbaa !464
  %75 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %65, align 8, !dbg !508, !tbaa !394
  %76 = load %struct.lua_State*, %struct.lua_State** %67, align 8, !dbg !509, !tbaa !386
  %77 = load i8*, i8** %69, align 8, !dbg !510, !tbaa !397
  %78 = call i32 %75(%struct.lua_State* %76, i8* nonnull %55, i64 %74, i8* %77) #5, !dbg !511
  store i32 %78, i32* %60, align 4, !dbg !512, !tbaa !421
  br label %79, !dbg !513

; <label>:79:                                     ; preds = %73, %64, %63
  %80 = phi i32 [ %78, %73 ], [ %71, %64 ], [ %61, %63 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !514
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %56) #4, !dbg !515
  br label %81

; <label>:81:                                     ; preds = %51, %79
  %82 = phi i32* [ %40, %51 ], [ %60, %79 ], !dbg !516
  %83 = phi i32 [ %52, %51 ], [ %80, %79 ], !dbg !516
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !525
  %84 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 16, !dbg !526
  %85 = load i32, i32* %84, align 8, !dbg !526, !tbaa !527
  %86 = bitcast i32* %17 to i8*, !dbg !528
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %86), !dbg !528
  store i32 %85, i32* %17, align 4, !tbaa !529
  %87 = icmp eq i32 %83, 0, !dbg !533
  br i1 %87, label %88, label %96, !dbg !534

; <label>:88:                                     ; preds = %81
  %89 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 1, !dbg !536
  %90 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %89, align 8, !dbg !536, !tbaa !394
  %91 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 0, !dbg !537
  %92 = load %struct.lua_State*, %struct.lua_State** %91, align 8, !dbg !537, !tbaa !386
  %93 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 2, !dbg !538
  %94 = load i8*, i8** %93, align 8, !dbg !538, !tbaa !397
  %95 = call i32 %90(%struct.lua_State* %92, i8* nonnull %86, i64 4, i8* %94) #5, !dbg !539
  store i32 %95, i32* %82, align 4, !dbg !540, !tbaa !421
  br label %96, !dbg !541

; <label>:96:                                     ; preds = %81, %88
  %97 = phi i32 [ %83, %81 ], [ %95, %88 ], !dbg !542
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !545
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !546
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %86), !dbg !546
  %98 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 17, !dbg !547
  %99 = load i32, i32* %98, align 4, !dbg !547, !tbaa !548
  %100 = bitcast i32* %16 to i8*, !dbg !549
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %100), !dbg !549
  store i32 %99, i32* %16, align 4, !tbaa !529
  %101 = icmp eq i32 %97, 0, !dbg !553
  br i1 %101, label %102, label %110, !dbg !554

; <label>:102:                                    ; preds = %96
  %103 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 1, !dbg !556
  %104 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %103, align 8, !dbg !556, !tbaa !394
  %105 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 0, !dbg !557
  %106 = load %struct.lua_State*, %struct.lua_State** %105, align 8, !dbg !557, !tbaa !386
  %107 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 2, !dbg !558
  %108 = load i8*, i8** %107, align 8, !dbg !558, !tbaa !397
  %109 = call i32 %104(%struct.lua_State* %106, i8* nonnull %100, i64 4, i8* %108) #5, !dbg !559
  store i32 %109, i32* %82, align 4, !dbg !560, !tbaa !421
  br label %110, !dbg !561

; <label>:110:                                    ; preds = %96, %102
  %111 = phi i32 [ %97, %96 ], [ %109, %102 ], !dbg !562
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !570
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !571
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %100), !dbg !571
  %112 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 19, !dbg !572
  %113 = load i8, i8* %112, align 8, !dbg !572, !tbaa !573
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %15) #4, !dbg !576
  store i8 %113, i8* %15, align 1, !dbg !575, !tbaa !485
  %114 = icmp eq i32 %111, 0, !dbg !580
  br i1 %114, label %115, label %123, !dbg !581

; <label>:115:                                    ; preds = %110
  %116 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 1, !dbg !582
  %117 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %116, align 8, !dbg !582, !tbaa !394
  %118 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 0, !dbg !583
  %119 = load %struct.lua_State*, %struct.lua_State** %118, align 8, !dbg !583, !tbaa !386
  %120 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 2, !dbg !584
  %121 = load i8*, i8** %120, align 8, !dbg !584, !tbaa !397
  %122 = call i32 %117(%struct.lua_State* %119, i8* nonnull %15, i64 1, i8* %121) #5, !dbg !585
  store i32 %122, i32* %82, align 4, !dbg !586, !tbaa !421
  br label %123, !dbg !587

; <label>:123:                                    ; preds = %110, %115
  %124 = phi i32 [ %111, %110 ], [ %122, %115 ], !dbg !588
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !591
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %15) #4, !dbg !592
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !592
  %125 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 20, !dbg !593
  %126 = load i8, i8* %125, align 1, !dbg !593, !tbaa !594
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %14) #4, !dbg !597
  store i8 %126, i8* %14, align 1, !dbg !596, !tbaa !485
  %127 = icmp eq i32 %124, 0, !dbg !601
  br i1 %127, label %128, label %136, !dbg !602

; <label>:128:                                    ; preds = %123
  %129 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 1, !dbg !603
  %130 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %129, align 8, !dbg !603, !tbaa !394
  %131 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 0, !dbg !604
  %132 = load %struct.lua_State*, %struct.lua_State** %131, align 8, !dbg !604, !tbaa !386
  %133 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 2, !dbg !605
  %134 = load i8*, i8** %133, align 8, !dbg !605, !tbaa !397
  %135 = call i32 %130(%struct.lua_State* %132, i8* nonnull %14, i64 1, i8* %134) #5, !dbg !606
  store i32 %135, i32* %82, align 4, !dbg !607, !tbaa !421
  br label %136, !dbg !608

; <label>:136:                                    ; preds = %123, %128
  %137 = phi i32 [ %124, %123 ], [ %135, %128 ], !dbg !609
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !612
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %14) #4, !dbg !613
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !613
  %138 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 21, !dbg !614
  %139 = load i8, i8* %138, align 2, !dbg !614, !tbaa !615
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %13) #4, !dbg !618
  store i8 %139, i8* %13, align 1, !dbg !617, !tbaa !485
  %140 = icmp eq i32 %137, 0, !dbg !622
  br i1 %140, label %141, label %149, !dbg !623

; <label>:141:                                    ; preds = %136
  %142 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 1, !dbg !624
  %143 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %142, align 8, !dbg !624, !tbaa !394
  %144 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 0, !dbg !625
  %145 = load %struct.lua_State*, %struct.lua_State** %144, align 8, !dbg !625, !tbaa !386
  %146 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 2, !dbg !626
  %147 = load i8*, i8** %146, align 8, !dbg !626, !tbaa !397
  %148 = call i32 %143(%struct.lua_State* %145, i8* nonnull %13, i64 1, i8* %147) #5, !dbg !627
  store i32 %148, i32* %82, align 4, !dbg !628, !tbaa !421
  br label %149, !dbg !629

; <label>:149:                                    ; preds = %136, %141
  %150 = phi i32 [ %137, %136 ], [ %148, %141 ], !dbg !630
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !633
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %13) #4, !dbg !634
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !634
  %151 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 22, !dbg !635
  %152 = load i8, i8* %151, align 1, !dbg !635, !tbaa !636
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %12) #4, !dbg !639
  store i8 %152, i8* %12, align 1, !dbg !638, !tbaa !485
  %153 = icmp eq i32 %150, 0, !dbg !643
  br i1 %153, label %154, label %162, !dbg !644

; <label>:154:                                    ; preds = %149
  %155 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 1, !dbg !645
  %156 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %155, align 8, !dbg !645, !tbaa !394
  %157 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 0, !dbg !646
  %158 = load %struct.lua_State*, %struct.lua_State** %157, align 8, !dbg !646, !tbaa !386
  %159 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 2, !dbg !647
  %160 = load i8*, i8** %159, align 8, !dbg !647, !tbaa !397
  %161 = call i32 %156(%struct.lua_State* %158, i8* nonnull %12, i64 1, i8* %160) #5, !dbg !648
  store i32 %161, i32* %82, align 4, !dbg !649, !tbaa !421
  br label %162, !dbg !650

; <label>:162:                                    ; preds = %149, %154
  %163 = phi i32 [ %150, %149 ], [ %161, %154 ], !dbg !651
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !663
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %12) #4, !dbg !664
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !664
  %164 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 4, !dbg !665
  %165 = bitcast i32** %164 to i8**, !dbg !665
  %166 = load i8*, i8** %165, align 8, !dbg !665, !tbaa !666
  %167 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 12, !dbg !665
  %168 = load i32, i32* %167, align 8, !dbg !665, !tbaa !667
  %169 = bitcast i32* %11 to i8*, !dbg !672
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %169) #4, !dbg !672
  store i32 %168, i32* %11, align 4, !tbaa !529
  %170 = icmp eq i32 %163, 0, !dbg !676
  br i1 %170, label %172, label %171, !dbg !677

; <label>:171:                                    ; preds = %162
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !678
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !679
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %169) #4, !dbg !679
  br label %188, !dbg !683

; <label>:172:                                    ; preds = %162
  %173 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 1, !dbg !685
  %174 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %173, align 8, !dbg !685, !tbaa !394
  %175 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 0, !dbg !686
  %176 = load %struct.lua_State*, %struct.lua_State** %175, align 8, !dbg !686, !tbaa !386
  %177 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 2, !dbg !687
  %178 = load i8*, i8** %177, align 8, !dbg !687, !tbaa !397
  %179 = call i32 %174(%struct.lua_State* %176, i8* nonnull %169, i64 4, i8* %178) #5, !dbg !688
  store i32 %179, i32* %82, align 4, !dbg !689, !tbaa !421
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !678
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !679
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %169) #4, !dbg !679
  %180 = icmp eq i32 %179, 0, !dbg !690
  br i1 %180, label %181, label %188, !dbg !683

; <label>:181:                                    ; preds = %172
  %182 = sext i32 %168 to i64, !dbg !691
  %183 = shl nsw i64 %182, 2, !dbg !691
  %184 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %173, align 8, !dbg !693, !tbaa !394
  %185 = load %struct.lua_State*, %struct.lua_State** %175, align 8, !dbg !694, !tbaa !386
  %186 = load i8*, i8** %177, align 8, !dbg !695, !tbaa !397
  %187 = call i32 %184(%struct.lua_State* %185, i8* %166, i64 %183, i8* %186) #5, !dbg !696
  store i32 %187, i32* %82, align 4, !dbg !697, !tbaa !421
  br label %188, !dbg !698

; <label>:188:                                    ; preds = %171, %172, %181
  %189 = phi i32 [ %163, %171 ], [ %179, %172 ], [ %187, %181 ], !dbg !699
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !717
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !718
  %190 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 11, !dbg !721
  %191 = load i32, i32* %190, align 4, !dbg !721, !tbaa !722
  %192 = bitcast i32* %10 to i8*, !dbg !724
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %192) #4, !dbg !724
  store i32 %191, i32* %10, align 4, !tbaa !529
  %193 = icmp eq i32 %189, 0, !dbg !728
  br i1 %193, label %194, label %202, !dbg !729

; <label>:194:                                    ; preds = %188
  %195 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 1, !dbg !731
  %196 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %195, align 8, !dbg !731, !tbaa !394
  %197 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 0, !dbg !732
  %198 = load %struct.lua_State*, %struct.lua_State** %197, align 8, !dbg !732, !tbaa !386
  %199 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 2, !dbg !733
  %200 = load i8*, i8** %199, align 8, !dbg !733, !tbaa !397
  %201 = call i32 %196(%struct.lua_State* %198, i8* nonnull %192, i64 4, i8* %200) #5, !dbg !734
  store i32 %201, i32* %82, align 4, !dbg !735, !tbaa !421
  br label %202, !dbg !736

; <label>:202:                                    ; preds = %194, %188
  %203 = phi i32 [ %201, %194 ], [ %189, %188 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !737
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !738
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %192) #4, !dbg !738
  %204 = icmp sgt i32 %191, 0, !dbg !740
  br i1 %204, label %205, label %316, !dbg !741

; <label>:205:                                    ; preds = %202
  %206 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 3
  %207 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 1
  %208 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 0
  %209 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 2
  %210 = bitcast double* %7 to i8*
  %211 = bitcast double* %7 to i64*
  %212 = bitcast i64* %5 to i8*
  %213 = bitcast i64* %6 to i8*
  %214 = zext i32 %191 to i64
  br label %215, !dbg !741

; <label>:215:                                    ; preds = %308, %205
  %216 = phi i32 [ %203, %205 ], [ %309, %308 ]
  %217 = phi i32 [ %203, %205 ], [ %310, %308 ]
  %218 = phi i32 [ %203, %205 ], [ %311, %308 ]
  %219 = phi i32 [ %203, %205 ], [ %312, %308 ]
  %220 = phi i32 [ %203, %205 ], [ %313, %308 ], !dbg !742
  %221 = phi i64 [ 0, %205 ], [ %314, %308 ]
  %222 = load %struct.lua_TValue*, %struct.lua_TValue** %206, align 8, !dbg !745, !tbaa !746
  %223 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %222, i64 %221, !dbg !747
  %224 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %222, i64 %221, i32 1, !dbg !749
  %225 = load i32, i32* %224, align 8, !dbg !749, !tbaa !750
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %9) #4, !dbg !755
  %226 = trunc i32 %225 to i8, !dbg !756
  store i8 %226, i8* %9, align 1, !dbg !754, !tbaa !485
  %227 = icmp eq i32 %220, 0, !dbg !760
  br i1 %227, label %228, label %234, !dbg !761

; <label>:228:                                    ; preds = %215
  %229 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %207, align 8, !dbg !762, !tbaa !394
  %230 = load %struct.lua_State*, %struct.lua_State** %208, align 8, !dbg !763, !tbaa !386
  %231 = load i8*, i8** %209, align 8, !dbg !764, !tbaa !397
  %232 = call i32 %229(%struct.lua_State* %230, i8* nonnull %9, i64 1, i8* %231) #5, !dbg !765
  store i32 %232, i32* %82, align 4, !dbg !766, !tbaa !421
  %233 = load i32, i32* %224, align 8, !dbg !767, !tbaa !750
  br label %234, !dbg !768

; <label>:234:                                    ; preds = %228, %215
  %235 = phi i32 [ %232, %228 ], [ %216, %215 ]
  %236 = phi i32 [ %232, %228 ], [ %217, %215 ]
  %237 = phi i32 [ %232, %228 ], [ %218, %215 ]
  %238 = phi i32 [ %232, %228 ], [ %219, %215 ]
  %239 = phi i32 [ %233, %228 ], [ %225, %215 ], !dbg !767
  %240 = phi i32 [ %232, %228 ], [ %220, %215 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !769
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %9) #4, !dbg !770
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !770
  switch i32 %239, label %308 [
    i32 4, label %269
    i32 1, label %241
    i32 3, label %255
  ], !dbg !771

; <label>:241:                                    ; preds = %234
  %242 = bitcast %struct.lua_TValue* %223 to i32*, !dbg !772
  %243 = load i32, i32* %242, align 8, !dbg !772, !tbaa !485
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %8) #4, !dbg !778
  %244 = trunc i32 %243 to i8, !dbg !779
  store i8 %244, i8* %8, align 1, !dbg !777, !tbaa !485
  %245 = icmp eq i32 %237, 0, !dbg !784
  br i1 %245, label %246, label %251, !dbg !785

; <label>:246:                                    ; preds = %241
  %247 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %207, align 8, !dbg !786, !tbaa !394
  %248 = load %struct.lua_State*, %struct.lua_State** %208, align 8, !dbg !787, !tbaa !386
  %249 = load i8*, i8** %209, align 8, !dbg !788, !tbaa !397
  %250 = call i32 %247(%struct.lua_State* %248, i8* nonnull %8, i64 1, i8* %249) #5, !dbg !789
  store i32 %250, i32* %82, align 4, !dbg !790, !tbaa !421
  br label %251, !dbg !791

; <label>:251:                                    ; preds = %246, %241
  %252 = phi i32 [ %250, %246 ], [ %235, %241 ]
  %253 = phi i32 [ %250, %246 ], [ %236, %241 ]
  %254 = phi i32 [ %250, %246 ], [ %237, %241 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !792
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %8) #4, !dbg !793
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !793
  br label %308, !dbg !794

; <label>:255:                                    ; preds = %234
  %256 = bitcast %struct.lua_TValue* %223 to i64*, !dbg !795
  %257 = load i64, i64* %256, align 8, !dbg !795, !tbaa !485
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %210) #4, !dbg !796
  store i64 %257, i64* %211, align 8, !tbaa !804
  %258 = icmp eq i32 %238, 0, !dbg !810
  br i1 %258, label %259, label %264, !dbg !811

; <label>:259:                                    ; preds = %255
  %260 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %207, align 8, !dbg !813, !tbaa !394
  %261 = load %struct.lua_State*, %struct.lua_State** %208, align 8, !dbg !814, !tbaa !386
  %262 = load i8*, i8** %209, align 8, !dbg !815, !tbaa !397
  %263 = call i32 %260(%struct.lua_State* %261, i8* nonnull %210, i64 8, i8* %262) #5, !dbg !816
  store i32 %263, i32* %82, align 4, !dbg !817, !tbaa !421
  br label %264, !dbg !818

; <label>:264:                                    ; preds = %259, %255
  %265 = phi i32 [ %263, %259 ], [ %235, %255 ]
  %266 = phi i32 [ %263, %259 ], [ %236, %255 ]
  %267 = phi i32 [ %263, %259 ], [ %237, %255 ]
  %268 = phi i32 [ %263, %259 ], [ %238, %255 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !819
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !820
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %210) #4, !dbg !820
  br label %308, !dbg !821

; <label>:269:                                    ; preds = %234
  %270 = bitcast %struct.lua_TValue* %223 to %union.TString**, !dbg !822
  %271 = load %union.TString*, %union.TString** %270, align 8, !dbg !822, !tbaa !485
  %272 = icmp eq %union.TString* %271, null, !dbg !826
  br i1 %272, label %273, label %282, !dbg !827

; <label>:273:                                    ; preds = %269
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %212) #4, !dbg !828
  store i64 0, i64* %5, align 8, !dbg !829, !tbaa !464
  %274 = icmp eq i32 %235, 0, !dbg !834
  br i1 %274, label %275, label %280, !dbg !835

; <label>:275:                                    ; preds = %273
  %276 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %207, align 8, !dbg !836, !tbaa !394
  %277 = load %struct.lua_State*, %struct.lua_State** %208, align 8, !dbg !837, !tbaa !386
  %278 = load i8*, i8** %209, align 8, !dbg !838, !tbaa !397
  %279 = call i32 %276(%struct.lua_State* %277, i8* nonnull %212, i64 8, i8* %278) #5, !dbg !839
  store i32 %279, i32* %82, align 4, !dbg !840, !tbaa !421
  br label %280, !dbg !841

; <label>:280:                                    ; preds = %275, %273
  %281 = phi i32 [ %279, %275 ], [ %235, %273 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !842
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %212) #4, !dbg !843
  br label %305, !dbg !844

; <label>:282:                                    ; preds = %269
  %283 = getelementptr inbounds %union.TString, %union.TString* %271, i64 1, !dbg !845
  %284 = bitcast %union.TString* %283 to i8*, !dbg !845
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %213) #4, !dbg !846
  %285 = getelementptr inbounds %union.TString, %union.TString* %271, i64 0, i32 0, i32 5, !dbg !847
  %286 = load i64, i64* %285, align 8, !dbg !847, !tbaa !485
  %287 = add i64 %286, 1, !dbg !848
  store i64 %287, i64* %6, align 8, !dbg !849, !tbaa !464
  %288 = icmp eq i32 %236, 0, !dbg !854
  br i1 %288, label %290, label %289, !dbg !855

; <label>:289:                                    ; preds = %282
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !856
  br label %302, !dbg !860

; <label>:290:                                    ; preds = %282
  %291 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %207, align 8, !dbg !861, !tbaa !394
  %292 = load %struct.lua_State*, %struct.lua_State** %208, align 8, !dbg !862, !tbaa !386
  %293 = load i8*, i8** %209, align 8, !dbg !863, !tbaa !397
  %294 = call i32 %291(%struct.lua_State* %292, i8* nonnull %213, i64 8, i8* %293) #5, !dbg !864
  store i32 %294, i32* %82, align 4, !dbg !865, !tbaa !421
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !856
  %295 = icmp eq i32 %294, 0, !dbg !866
  br i1 %295, label %296, label %302, !dbg !860

; <label>:296:                                    ; preds = %290
  %297 = load i64, i64* %6, align 8, !dbg !867, !tbaa !464
  %298 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %207, align 8, !dbg !869, !tbaa !394
  %299 = load %struct.lua_State*, %struct.lua_State** %208, align 8, !dbg !870, !tbaa !386
  %300 = load i8*, i8** %209, align 8, !dbg !871, !tbaa !397
  %301 = call i32 %298(%struct.lua_State* %299, i8* nonnull %284, i64 %297, i8* %300) #5, !dbg !872
  store i32 %301, i32* %82, align 4, !dbg !873, !tbaa !421
  br label %302, !dbg !874

; <label>:302:                                    ; preds = %296, %290, %289
  %303 = phi i32 [ %301, %296 ], [ %294, %290 ], [ %235, %289 ]
  %304 = phi i32 [ %301, %296 ], [ %294, %290 ], [ %236, %289 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !875
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %213) #4, !dbg !876
  br label %305

; <label>:305:                                    ; preds = %302, %280
  %306 = phi i32 [ %303, %302 ], [ %281, %280 ]
  %307 = phi i32 [ %304, %302 ], [ %281, %280 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !877
  br label %308, !dbg !878

; <label>:308:                                    ; preds = %305, %264, %251, %234
  %309 = phi i32 [ %306, %305 ], [ %265, %264 ], [ %252, %251 ], [ %235, %234 ]
  %310 = phi i32 [ %307, %305 ], [ %266, %264 ], [ %253, %251 ], [ %236, %234 ]
  %311 = phi i32 [ %307, %305 ], [ %267, %264 ], [ %254, %251 ], [ %237, %234 ]
  %312 = phi i32 [ %307, %305 ], [ %268, %264 ], [ %254, %251 ], [ %238, %234 ]
  %313 = phi i32 [ %307, %305 ], [ %268, %264 ], [ %254, %251 ], [ %240, %234 ]
  %314 = add nuw nsw i64 %221, 1, !dbg !879
  %315 = icmp eq i64 %314, %214, !dbg !740
  br i1 %315, label %316, label %215, !dbg !741, !llvm.loop !880

; <label>:316:                                    ; preds = %308, %202
  %317 = phi i32 [ %203, %202 ], [ %309, %308 ], !dbg !883
  %318 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 14, !dbg !886
  %319 = load i32, i32* %318, align 8, !dbg !886, !tbaa !887
  %320 = bitcast i32* %4 to i8*, !dbg !888
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %320) #4, !dbg !888
  store i32 %319, i32* %4, align 4, !tbaa !529
  %321 = icmp eq i32 %317, 0, !dbg !892
  br i1 %321, label %322, label %330, !dbg !893

; <label>:322:                                    ; preds = %316
  %323 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 1, !dbg !895
  %324 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %323, align 8, !dbg !895, !tbaa !394
  %325 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 0, !dbg !896
  %326 = load %struct.lua_State*, %struct.lua_State** %325, align 8, !dbg !896, !tbaa !386
  %327 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 2, !dbg !897
  %328 = load i8*, i8** %327, align 8, !dbg !897, !tbaa !397
  %329 = call i32 %324(%struct.lua_State* %326, i8* nonnull %320, i64 4, i8* %328) #5, !dbg !898
  store i32 %329, i32* %82, align 4, !dbg !899, !tbaa !421
  br label %330, !dbg !900

; <label>:330:                                    ; preds = %322, %316
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !901
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !902
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %320) #4, !dbg !902
  %331 = icmp sgt i32 %319, 0, !dbg !903
  br i1 %331, label %332, label %343, !dbg !906

; <label>:332:                                    ; preds = %330
  %333 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 5
  %334 = zext i32 %319 to i64
  br label %335, !dbg !906

; <label>:335:                                    ; preds = %335, %332
  %336 = phi i64 [ 0, %332 ], [ %341, %335 ]
  %337 = load %struct.Proto**, %struct.Proto*** %333, align 8, !dbg !907, !tbaa !908
  %338 = getelementptr inbounds %struct.Proto*, %struct.Proto** %337, i64 %336, !dbg !909
  %339 = load %struct.Proto*, %struct.Proto** %338, align 8, !dbg !909, !tbaa !910
  %340 = load %union.TString*, %union.TString** %29, align 8, !dbg !911, !tbaa !441
  call fastcc void @DumpFunction(%struct.Proto* %339, %union.TString* %340, %struct.DumpState* %2) #5, !dbg !912
  %341 = add nuw nsw i64 %336, 1, !dbg !913
  %342 = icmp eq i64 %341, %334, !dbg !903
  br i1 %342, label %343, label %335, !dbg !906, !llvm.loop !914

; <label>:343:                                    ; preds = %335, %330
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !917
  %344 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 3, !dbg !927
  %345 = load i32, i32* %344, align 8, !dbg !927, !tbaa !400
  %346 = icmp eq i32 %345, 0, !dbg !928
  br i1 %346, label %347, label %350, !dbg !928

; <label>:347:                                    ; preds = %343
  %348 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 13, !dbg !929
  %349 = load i32, i32* %348, align 4, !dbg !929, !tbaa !930
  br label %350, !dbg !928

; <label>:350:                                    ; preds = %347, %343
  %351 = phi i32 [ %349, %347 ], [ 0, %343 ], !dbg !928
  %352 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 6, !dbg !932
  %353 = bitcast i32** %352 to i8**, !dbg !932
  %354 = load i8*, i8** %353, align 8, !dbg !932, !tbaa !933
  %355 = bitcast i32* %28 to i8*, !dbg !939
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %355) #4, !dbg !939
  store i32 %351, i32* %28, align 4, !tbaa !529
  %356 = load i32, i32* %82, align 4, !dbg !945, !tbaa !421
  %357 = icmp eq i32 %356, 0, !dbg !946
  br i1 %357, label %359, label %358, !dbg !947

; <label>:358:                                    ; preds = %350
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !948
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !949
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %355) #4, !dbg !949
  br label %375, !dbg !953

; <label>:359:                                    ; preds = %350
  %360 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 1, !dbg !955
  %361 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %360, align 8, !dbg !955, !tbaa !394
  %362 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 0, !dbg !956
  %363 = load %struct.lua_State*, %struct.lua_State** %362, align 8, !dbg !956, !tbaa !386
  %364 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 2, !dbg !957
  %365 = load i8*, i8** %364, align 8, !dbg !957, !tbaa !397
  %366 = call i32 %361(%struct.lua_State* %363, i8* nonnull %355, i64 4, i8* %365) #5, !dbg !958
  store i32 %366, i32* %82, align 4, !dbg !959, !tbaa !421
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !948
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !949
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %355) #4, !dbg !949
  %367 = icmp eq i32 %366, 0, !dbg !960
  br i1 %367, label %368, label %375, !dbg !953

; <label>:368:                                    ; preds = %359
  %369 = sext i32 %351 to i64, !dbg !961
  %370 = shl nsw i64 %369, 2, !dbg !961
  %371 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %360, align 8, !dbg !963, !tbaa !394
  %372 = load %struct.lua_State*, %struct.lua_State** %362, align 8, !dbg !964, !tbaa !386
  %373 = load i8*, i8** %364, align 8, !dbg !965, !tbaa !397
  %374 = call i32 %371(%struct.lua_State* %372, i8* %354, i64 %370, i8* %373) #5, !dbg !966
  store i32 %374, i32* %82, align 4, !dbg !967, !tbaa !421
  br label %375, !dbg !968

; <label>:375:                                    ; preds = %368, %359, %358
  %376 = phi i32 [ %356, %358 ], [ %366, %359 ], [ %374, %368 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !969
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !970
  %377 = load i32, i32* %344, align 8, !dbg !971, !tbaa !400
  %378 = icmp eq i32 %377, 0, !dbg !972
  br i1 %378, label %379, label %382, !dbg !972

; <label>:379:                                    ; preds = %375
  %380 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 15, !dbg !973
  %381 = load i32, i32* %380, align 4, !dbg !973, !tbaa !974
  br label %382, !dbg !972

; <label>:382:                                    ; preds = %379, %375
  %383 = phi i32 [ %381, %379 ], [ 0, %375 ], !dbg !972
  %384 = bitcast i32* %27 to i8*, !dbg !975
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %384) #4, !dbg !975
  store i32 %383, i32* %27, align 4, !tbaa !529
  %385 = icmp eq i32 %376, 0, !dbg !981
  br i1 %385, label %386, label %394, !dbg !982

; <label>:386:                                    ; preds = %382
  %387 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 1, !dbg !984
  %388 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %387, align 8, !dbg !984, !tbaa !394
  %389 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 0, !dbg !985
  %390 = load %struct.lua_State*, %struct.lua_State** %389, align 8, !dbg !985, !tbaa !386
  %391 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 2, !dbg !986
  %392 = load i8*, i8** %391, align 8, !dbg !986, !tbaa !397
  %393 = call i32 %388(%struct.lua_State* %390, i8* nonnull %384, i64 4, i8* %392) #5, !dbg !987
  store i32 %393, i32* %82, align 4, !dbg !988, !tbaa !421
  br label %394, !dbg !989

; <label>:394:                                    ; preds = %386, %382
  %395 = phi i32 [ %376, %382 ], [ %393, %386 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !990
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !991
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %384) #4, !dbg !991
  %396 = icmp sgt i32 %383, 0, !dbg !993
  br i1 %396, label %397, label %472, !dbg !996

; <label>:397:                                    ; preds = %394
  %398 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 7
  %399 = bitcast i64* %25 to i8*
  %400 = bitcast i32* %24 to i8*
  %401 = bitcast i64* %26 to i8*
  %402 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 1
  %403 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 0
  %404 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 2
  %405 = bitcast i32* %23 to i8*
  %406 = zext i32 %383 to i64
  br label %407, !dbg !996

; <label>:407:                                    ; preds = %468, %397
  %408 = phi i32 [ %395, %397 ], [ %469, %468 ]
  %409 = phi i64 [ 0, %397 ], [ %470, %468 ]
  %410 = load %struct.LocVar*, %struct.LocVar** %398, align 8, !dbg !997, !tbaa !999
  %411 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %410, i64 %409, i32 0, !dbg !1000
  %412 = load %union.TString*, %union.TString** %411, align 8, !dbg !1000, !tbaa !1001
  %413 = icmp eq %union.TString* %412, null, !dbg !1006
  br i1 %413, label %414, label %423, !dbg !1007

; <label>:414:                                    ; preds = %407
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %399) #4, !dbg !1008
  store i64 0, i64* %25, align 8, !dbg !1009, !tbaa !464
  %415 = icmp eq i32 %408, 0, !dbg !1014
  br i1 %415, label %416, label %421, !dbg !1015

; <label>:416:                                    ; preds = %414
  %417 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %402, align 8, !dbg !1016, !tbaa !394
  %418 = load %struct.lua_State*, %struct.lua_State** %403, align 8, !dbg !1017, !tbaa !386
  %419 = load i8*, i8** %404, align 8, !dbg !1018, !tbaa !397
  %420 = call i32 %417(%struct.lua_State* %418, i8* nonnull %399, i64 8, i8* %419) #5, !dbg !1019
  store i32 %420, i32* %82, align 4, !dbg !1020, !tbaa !421
  br label %421, !dbg !1021

; <label>:421:                                    ; preds = %416, %414
  %422 = phi i32 [ %420, %416 ], [ %408, %414 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1022
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %399) #4, !dbg !1023
  br label %445, !dbg !1024

; <label>:423:                                    ; preds = %407
  %424 = getelementptr inbounds %union.TString, %union.TString* %412, i64 1, !dbg !1025
  %425 = bitcast %union.TString* %424 to i8*, !dbg !1025
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %401) #4, !dbg !1026
  %426 = getelementptr inbounds %union.TString, %union.TString* %412, i64 0, i32 0, i32 5, !dbg !1027
  %427 = load i64, i64* %426, align 8, !dbg !1027, !tbaa !485
  %428 = add i64 %427, 1, !dbg !1028
  store i64 %428, i64* %26, align 8, !dbg !1029, !tbaa !464
  %429 = icmp eq i32 %408, 0, !dbg !1034
  br i1 %429, label %431, label %430, !dbg !1035

; <label>:430:                                    ; preds = %423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1036
  br label %443, !dbg !1040

; <label>:431:                                    ; preds = %423
  %432 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %402, align 8, !dbg !1041, !tbaa !394
  %433 = load %struct.lua_State*, %struct.lua_State** %403, align 8, !dbg !1042, !tbaa !386
  %434 = load i8*, i8** %404, align 8, !dbg !1043, !tbaa !397
  %435 = call i32 %432(%struct.lua_State* %433, i8* nonnull %401, i64 8, i8* %434) #5, !dbg !1044
  store i32 %435, i32* %82, align 4, !dbg !1045, !tbaa !421
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1036
  %436 = icmp eq i32 %435, 0, !dbg !1046
  br i1 %436, label %437, label %443, !dbg !1040

; <label>:437:                                    ; preds = %431
  %438 = load i64, i64* %26, align 8, !dbg !1047, !tbaa !464
  %439 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %402, align 8, !dbg !1049, !tbaa !394
  %440 = load %struct.lua_State*, %struct.lua_State** %403, align 8, !dbg !1050, !tbaa !386
  %441 = load i8*, i8** %404, align 8, !dbg !1051, !tbaa !397
  %442 = call i32 %439(%struct.lua_State* %440, i8* nonnull %425, i64 %438, i8* %441) #5, !dbg !1052
  store i32 %442, i32* %82, align 4, !dbg !1053, !tbaa !421
  br label %443, !dbg !1054

; <label>:443:                                    ; preds = %437, %431, %430
  %444 = phi i32 [ %442, %437 ], [ %435, %431 ], [ %408, %430 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1055
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %401) #4, !dbg !1056
  br label %445

; <label>:445:                                    ; preds = %443, %421
  %446 = phi i32 [ %422, %421 ], [ %444, %443 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1057
  %447 = load %struct.LocVar*, %struct.LocVar** %398, align 8, !dbg !1058, !tbaa !999
  %448 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %447, i64 %409, i32 1, !dbg !1059
  %449 = load i32, i32* %448, align 8, !dbg !1059, !tbaa !1060
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %400) #4, !dbg !1061
  store i32 %449, i32* %24, align 4, !tbaa !529
  %450 = icmp eq i32 %446, 0, !dbg !1067
  br i1 %450, label %451, label %457, !dbg !1068

; <label>:451:                                    ; preds = %445
  %452 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %402, align 8, !dbg !1070, !tbaa !394
  %453 = load %struct.lua_State*, %struct.lua_State** %403, align 8, !dbg !1071, !tbaa !386
  %454 = load i8*, i8** %404, align 8, !dbg !1072, !tbaa !397
  %455 = call i32 %452(%struct.lua_State* %453, i8* nonnull %400, i64 4, i8* %454) #5, !dbg !1073
  store i32 %455, i32* %82, align 4, !dbg !1074, !tbaa !421
  %456 = load %struct.LocVar*, %struct.LocVar** %398, align 8, !dbg !1075, !tbaa !999
  br label %457, !dbg !1076

; <label>:457:                                    ; preds = %451, %445
  %458 = phi i32 [ %446, %445 ], [ %455, %451 ], !dbg !1077
  %459 = phi %struct.LocVar* [ %447, %445 ], [ %456, %451 ], !dbg !1075
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1080
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1081
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %400) #4, !dbg !1081
  %460 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %459, i64 %409, i32 2, !dbg !1082
  %461 = load i32, i32* %460, align 4, !dbg !1082, !tbaa !1083
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %405) #4, !dbg !1084
  store i32 %461, i32* %23, align 4, !tbaa !529
  %462 = icmp eq i32 %458, 0, !dbg !1088
  br i1 %462, label %463, label %468, !dbg !1089

; <label>:463:                                    ; preds = %457
  %464 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %402, align 8, !dbg !1091, !tbaa !394
  %465 = load %struct.lua_State*, %struct.lua_State** %403, align 8, !dbg !1092, !tbaa !386
  %466 = load i8*, i8** %404, align 8, !dbg !1093, !tbaa !397
  %467 = call i32 %464(%struct.lua_State* %465, i8* nonnull %405, i64 4, i8* %466) #5, !dbg !1094
  store i32 %467, i32* %82, align 4, !dbg !1095, !tbaa !421
  br label %468, !dbg !1096

; <label>:468:                                    ; preds = %463, %457
  %469 = phi i32 [ %458, %457 ], [ %467, %463 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1097
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1098
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %405) #4, !dbg !1098
  %470 = add nuw nsw i64 %409, 1, !dbg !1099
  %471 = icmp eq i64 %470, %406, !dbg !993
  br i1 %471, label %472, label %407, !dbg !996, !llvm.loop !1100

; <label>:472:                                    ; preds = %468, %394
  %473 = phi i32 [ %395, %394 ], [ %469, %468 ]
  %474 = load i32, i32* %344, align 8, !dbg !1103, !tbaa !400
  %475 = icmp eq i32 %474, 0, !dbg !1104
  br i1 %475, label %476, label %479, !dbg !1104

; <label>:476:                                    ; preds = %472
  %477 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 10, !dbg !1105
  %478 = load i32, i32* %477, align 8, !dbg !1105, !tbaa !1106
  br label %479, !dbg !1104

; <label>:479:                                    ; preds = %476, %472
  %480 = phi i32 [ %478, %476 ], [ 0, %472 ], !dbg !1104
  %481 = bitcast i32* %22 to i8*, !dbg !1107
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %481) #4, !dbg !1107
  store i32 %480, i32* %22, align 4, !tbaa !529
  %482 = icmp eq i32 %473, 0, !dbg !1113
  br i1 %482, label %483, label %491, !dbg !1114

; <label>:483:                                    ; preds = %479
  %484 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 1, !dbg !1116
  %485 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %484, align 8, !dbg !1116, !tbaa !394
  %486 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 0, !dbg !1117
  %487 = load %struct.lua_State*, %struct.lua_State** %486, align 8, !dbg !1117, !tbaa !386
  %488 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 2, !dbg !1118
  %489 = load i8*, i8** %488, align 8, !dbg !1118, !tbaa !397
  %490 = call i32 %485(%struct.lua_State* %487, i8* nonnull %481, i64 4, i8* %489) #5, !dbg !1119
  store i32 %490, i32* %82, align 4, !dbg !1120, !tbaa !421
  br label %491, !dbg !1121

; <label>:491:                                    ; preds = %483, %479
  %492 = phi i32 [ %473, %479 ], [ %490, %483 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1122
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1123
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %481) #4, !dbg !1123
  %493 = icmp sgt i32 %480, 0, !dbg !1124
  br i1 %493, label %494, label %547, !dbg !1127

; <label>:494:                                    ; preds = %491
  %495 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 8
  %496 = bitcast i64* %20 to i8*
  %497 = bitcast i64* %21 to i8*
  %498 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 1
  %499 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 0
  %500 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 2
  %501 = zext i32 %480 to i64
  br label %502, !dbg !1127

; <label>:502:                                    ; preds = %542, %494
  %503 = phi i32 [ %492, %494 ], [ %543, %542 ]
  %504 = phi i32 [ %492, %494 ], [ %544, %542 ]
  %505 = phi i64 [ 0, %494 ], [ %545, %542 ]
  %506 = load %union.TString**, %union.TString*** %495, align 8, !dbg !1128, !tbaa !1129
  %507 = getelementptr inbounds %union.TString*, %union.TString** %506, i64 %505, !dbg !1130
  %508 = load %union.TString*, %union.TString** %507, align 8, !dbg !1130, !tbaa !910
  %509 = icmp eq %union.TString* %508, null, !dbg !1134
  br i1 %509, label %510, label %519, !dbg !1135

; <label>:510:                                    ; preds = %502
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %496) #4, !dbg !1136
  store i64 0, i64* %20, align 8, !dbg !1137, !tbaa !464
  %511 = icmp eq i32 %503, 0, !dbg !1142
  br i1 %511, label %512, label %517, !dbg !1143

; <label>:512:                                    ; preds = %510
  %513 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %498, align 8, !dbg !1144, !tbaa !394
  %514 = load %struct.lua_State*, %struct.lua_State** %499, align 8, !dbg !1145, !tbaa !386
  %515 = load i8*, i8** %500, align 8, !dbg !1146, !tbaa !397
  %516 = call i32 %513(%struct.lua_State* %514, i8* nonnull %496, i64 8, i8* %515) #5, !dbg !1147
  store i32 %516, i32* %82, align 4, !dbg !1148, !tbaa !421
  br label %517, !dbg !1149

; <label>:517:                                    ; preds = %512, %510
  %518 = phi i32 [ %516, %512 ], [ %503, %510 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1150
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %496) #4, !dbg !1151
  br label %542, !dbg !1152

; <label>:519:                                    ; preds = %502
  %520 = getelementptr inbounds %union.TString, %union.TString* %508, i64 1, !dbg !1153
  %521 = bitcast %union.TString* %520 to i8*, !dbg !1153
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %497) #4, !dbg !1154
  %522 = getelementptr inbounds %union.TString, %union.TString* %508, i64 0, i32 0, i32 5, !dbg !1155
  %523 = load i64, i64* %522, align 8, !dbg !1155, !tbaa !485
  %524 = add i64 %523, 1, !dbg !1156
  store i64 %524, i64* %21, align 8, !dbg !1157, !tbaa !464
  %525 = icmp eq i32 %504, 0, !dbg !1162
  br i1 %525, label %527, label %526, !dbg !1163

; <label>:526:                                    ; preds = %519
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1164
  br label %539, !dbg !1168

; <label>:527:                                    ; preds = %519
  %528 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %498, align 8, !dbg !1169, !tbaa !394
  %529 = load %struct.lua_State*, %struct.lua_State** %499, align 8, !dbg !1170, !tbaa !386
  %530 = load i8*, i8** %500, align 8, !dbg !1171, !tbaa !397
  %531 = call i32 %528(%struct.lua_State* %529, i8* nonnull %497, i64 8, i8* %530) #5, !dbg !1172
  store i32 %531, i32* %82, align 4, !dbg !1173, !tbaa !421
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1164
  %532 = icmp eq i32 %531, 0, !dbg !1174
  br i1 %532, label %533, label %539, !dbg !1168

; <label>:533:                                    ; preds = %527
  %534 = load i64, i64* %21, align 8, !dbg !1175, !tbaa !464
  %535 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %498, align 8, !dbg !1177, !tbaa !394
  %536 = load %struct.lua_State*, %struct.lua_State** %499, align 8, !dbg !1178, !tbaa !386
  %537 = load i8*, i8** %500, align 8, !dbg !1179, !tbaa !397
  %538 = call i32 %535(%struct.lua_State* %536, i8* nonnull %521, i64 %534, i8* %537) #5, !dbg !1180
  store i32 %538, i32* %82, align 4, !dbg !1181, !tbaa !421
  br label %539, !dbg !1182

; <label>:539:                                    ; preds = %533, %527, %526
  %540 = phi i32 [ %538, %533 ], [ %531, %527 ], [ %503, %526 ]
  %541 = phi i32 [ %538, %533 ], [ %531, %527 ], [ %504, %526 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1183
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %497) #4, !dbg !1184
  br label %542

; <label>:542:                                    ; preds = %539, %517
  %543 = phi i32 [ %518, %517 ], [ %540, %539 ]
  %544 = phi i32 [ %518, %517 ], [ %541, %539 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1185
  %545 = add nuw nsw i64 %505, 1, !dbg !1186
  %546 = icmp eq i64 %545, %501, !dbg !1124
  br i1 %546, label %547, label %502, !dbg !1127, !llvm.loop !1187

; <label>:547:                                    ; preds = %542, %491
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1190
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1191
  ret void, !dbg !1191
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare hidden void @luaU_header(i8*) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }
attributes #6 = { nobuiltin noredzone }

!llvm.module.flags = !{!8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/ldump.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5, !7}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !{i32 2, !"Dwarf Version", i32 4}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!12 = distinct !DISubprogram(name: "luaU_dump", scope: !1, file: !1, line: 153, type: !13, isLocal: false, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !351)
!13 = !DISubroutineType(types: !14)
!14 = !{!15, !16, !342, !345, !4, !15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_State", file: !18, line: 50, baseType: !19)
!18 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lua.h", directory: "/root/.unikraft/apps/redis/build")
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lua_State", file: !20, line: 100, size: 1472, elements: !21)
!20 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lstate.h", directory: "/root/.unikraft/apps/redis/build")
!21 = !{!22, !220, !221, !222, !223, !225, !226, !283, !296, !297, !298, !299, !300, !301, !302, !303, !305, !306, !307, !308, !309, !310, !333, !334, !335, !336, !337, !340}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !19, file: !20, line: 101, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCObject", file: !25, line: 36, baseType: !26)
!25 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lobject.h", directory: "/root/.unikraft/apps/redis/build")
!26 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "GCObject", file: !20, line: 136, size: 1472, elements: !27)
!27 = !{!28, !38, !63, !121, !216, !217, !218, !219}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "gch", scope: !26, file: !20, line: 137, baseType: !29, size: 128)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCheader", file: !25, line: 51, baseType: !30)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GCheader", file: !25, line: 49, size: 128, elements: !31)
!31 = !{!32, !33, !37}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !30, file: !25, line: 50, baseType: !23, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !30, file: !25, line: 50, baseType: !34, size: 8, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "lu_byte", file: !35, line: 27, baseType: !36)
!35 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/llimits.h", directory: "/root/.unikraft/apps/redis/build")
!36 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !30, file: !25, line: 50, baseType: !34, size: 8, offset: 72)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !26, file: !20, line: 138, baseType: !39, size: 192)
!39 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "TString", file: !25, line: 199, size: 192, elements: !40)
!40 = !{!41, !50}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !39, file: !25, line: 200, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "L_Umaxalign", file: !35, line: 47, baseType: !43)
!43 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !35, line: 47, size: 64, elements: !44)
!44 = !{!45, !47, !48}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !43, file: !35, line: 47, baseType: !46, size: 64)
!46 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !43, file: !35, line: 47, baseType: !4, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !43, file: !35, line: 47, baseType: !49, size: 64)
!49 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "tsv", scope: !39, file: !25, line: 206, baseType: !51, size: 192)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !39, file: !25, line: 201, size: 192, elements: !52)
!52 = !{!53, !54, !55, !56, !57, !59}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !51, file: !25, line: 202, baseType: !23, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !51, file: !25, line: 202, baseType: !34, size: 8, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !51, file: !25, line: 202, baseType: !34, size: 8, offset: 72)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !51, file: !25, line: 203, baseType: !34, size: 8, offset: 80)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !51, file: !25, line: 204, baseType: !58, size: 32, offset: 96)
!58 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !51, file: !25, line: 205, baseType: !60, size: 64, offset: 128)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !61, line: 58, baseType: !62)
!61 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!62 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !26, file: !20, line: 139, baseType: !64, size: 320)
!64 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "Udata", file: !25, line: 215, size: 320, elements: !65)
!65 = !{!66, !67}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !64, file: !25, line: 216, baseType: !42, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "uv", scope: !64, file: !25, line: 222, baseType: !68, size: 320)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !64, file: !25, line: 217, size: 320, elements: !69)
!69 = !{!70, !71, !72, !73, !119, !120}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !68, file: !25, line: 218, baseType: !23, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !68, file: !25, line: 218, baseType: !34, size: 8, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !68, file: !25, line: 218, baseType: !34, size: 8, offset: 72)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "metatable", scope: !68, file: !25, line: 219, baseType: !74, size: 64, offset: 128)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Table", file: !25, line: 338, size: 512, elements: !76)
!76 = !{!77, !78, !79, !80, !81, !82, !83, !98, !116, !117, !118}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !75, file: !25, line: 339, baseType: !23, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !75, file: !25, line: 339, baseType: !34, size: 8, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !75, file: !25, line: 339, baseType: !34, size: 8, offset: 72)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !75, file: !25, line: 340, baseType: !34, size: 8, offset: 80)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "lsizenode", scope: !75, file: !25, line: 341, baseType: !34, size: 8, offset: 88)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "metatable", scope: !75, file: !25, line: 342, baseType: !74, size: 64, offset: 128)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "array", scope: !75, file: !25, line: 343, baseType: !84, size: 64, offset: 192)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "TValue", file: !25, line: 75, baseType: !86)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lua_TValue", file: !25, line: 73, size: 128, elements: !87)
!87 = !{!88, !97}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !86, file: !25, line: 74, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "Value", file: !25, line: 64, baseType: !90)
!90 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !25, line: 59, size: 64, elements: !91)
!91 = !{!92, !93, !94, !96}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !90, file: !25, line: 60, baseType: !23, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !90, file: !25, line: 61, baseType: !4, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !90, file: !25, line: 62, baseType: !95, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Number", file: !18, line: 99, baseType: !46)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !90, file: !25, line: 63, baseType: !15, size: 32)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !86, file: !25, line: 74, baseType: !15, size: 32, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !75, file: !25, line: 344, baseType: !99, size: 64, offset: 256)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "Node", file: !25, line: 335, baseType: !101)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Node", file: !25, line: 332, size: 320, elements: !102)
!102 = !{!103, !104}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "i_val", scope: !101, file: !25, line: 333, baseType: !85, size: 128)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "i_key", scope: !101, file: !25, line: 334, baseType: !105, size: 192, offset: 128)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "TKey", file: !25, line: 329, baseType: !106)
!106 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "TKey", file: !25, line: 323, size: 192, elements: !107)
!107 = !{!108, !115}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "nk", scope: !106, file: !25, line: 327, baseType: !109, size: 192)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !106, file: !25, line: 324, size: 192, elements: !110)
!110 = !{!111, !112, !113}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !109, file: !25, line: 325, baseType: !89, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !109, file: !25, line: 325, baseType: !15, size: 32, offset: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !109, file: !25, line: 326, baseType: !114, size: 64, offset: 128)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "tvk", scope: !106, file: !25, line: 328, baseType: !85, size: 128)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "lastfree", scope: !75, file: !25, line: 345, baseType: !99, size: 64, offset: 320)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !75, file: !25, line: 346, baseType: !23, size: 64, offset: 384)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "sizearray", scope: !75, file: !25, line: 347, baseType: !15, size: 32, offset: 448)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !68, file: !25, line: 220, baseType: !74, size: 64, offset: 192)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !68, file: !25, line: 221, baseType: !60, size: 64, offset: 256)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !26, file: !20, line: 140, baseType: !122, size: 448)
!122 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "Closure", file: !25, line: 309, size: 448, elements: !123)
!123 = !{!124, !144}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !122, file: !25, line: 310, baseType: !125, size: 448)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "CClosure", file: !25, line: 299, baseType: !126)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CClosure", file: !25, line: 295, size: 448, elements: !127)
!127 = !{!128, !129, !130, !131, !132, !133, !134, !135, !140}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !126, file: !25, line: 296, baseType: !23, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !126, file: !25, line: 296, baseType: !34, size: 8, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !126, file: !25, line: 296, baseType: !34, size: 8, offset: 72)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "isC", scope: !126, file: !25, line: 296, baseType: !34, size: 8, offset: 80)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "nupvalues", scope: !126, file: !25, line: 296, baseType: !34, size: 8, offset: 88)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !126, file: !25, line: 296, baseType: !23, size: 64, offset: 128)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !126, file: !25, line: 296, baseType: !74, size: 64, offset: 192)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !126, file: !25, line: 297, baseType: !136, size: 64, offset: 256)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_CFunction", file: !18, line: 52, baseType: !137)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DISubroutineType(types: !139)
!139 = !{!15, !16}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "upvalue", scope: !126, file: !25, line: 298, baseType: !141, size: 128, offset: 320)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 128, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: 1)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !122, file: !25, line: 311, baseType: !145, size: 384)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "LClosure", file: !25, line: 306, baseType: !146)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LClosure", file: !25, line: 302, size: 384, elements: !147)
!147 = !{!148, !149, !150, !151, !152, !153, !154, !155, !196}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !146, file: !25, line: 303, baseType: !23, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !146, file: !25, line: 303, baseType: !34, size: 8, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !146, file: !25, line: 303, baseType: !34, size: 8, offset: 72)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "isC", scope: !146, file: !25, line: 303, baseType: !34, size: 8, offset: 80)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "nupvalues", scope: !146, file: !25, line: 303, baseType: !34, size: 8, offset: 88)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !146, file: !25, line: 303, baseType: !23, size: 64, offset: 128)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !146, file: !25, line: 303, baseType: !74, size: 64, offset: 192)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !146, file: !25, line: 304, baseType: !156, size: 64, offset: 256)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Proto", file: !25, line: 231, size: 960, elements: !158)
!158 = !{!159, !160, !161, !162, !163, !167, !169, !171, !180, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !157, file: !25, line: 232, baseType: !23, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !157, file: !25, line: 232, baseType: !34, size: 8, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !157, file: !25, line: 232, baseType: !34, size: 8, offset: 72)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !157, file: !25, line: 233, baseType: !84, size: 64, offset: 128)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !157, file: !25, line: 234, baseType: !164, size: 64, offset: 192)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "Instruction", file: !35, line: 88, baseType: !166)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "lu_int32", file: !35, line: 18, baseType: !58)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !157, file: !25, line: 235, baseType: !168, size: 64, offset: 256)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "lineinfo", scope: !157, file: !25, line: 236, baseType: !170, size: 64, offset: 320)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "locvars", scope: !157, file: !25, line: 237, baseType: !172, size: 64, offset: 384)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LocVar", file: !25, line: 262, size: 128, elements: !174)
!174 = !{!175, !178, !179}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "varname", scope: !173, file: !25, line: 263, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "TString", file: !25, line: 207, baseType: !39)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "startpc", scope: !173, file: !25, line: 264, baseType: !15, size: 32, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "endpc", scope: !173, file: !25, line: 265, baseType: !15, size: 32, offset: 96)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "upvalues", scope: !157, file: !25, line: 238, baseType: !181, size: 64, offset: 448)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !157, file: !25, line: 239, baseType: !176, size: 64, offset: 512)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "sizeupvalues", scope: !157, file: !25, line: 240, baseType: !15, size: 32, offset: 576)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "sizek", scope: !157, file: !25, line: 241, baseType: !15, size: 32, offset: 608)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "sizecode", scope: !157, file: !25, line: 242, baseType: !15, size: 32, offset: 640)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "sizelineinfo", scope: !157, file: !25, line: 243, baseType: !15, size: 32, offset: 672)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "sizep", scope: !157, file: !25, line: 244, baseType: !15, size: 32, offset: 704)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "sizelocvars", scope: !157, file: !25, line: 245, baseType: !15, size: 32, offset: 736)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "linedefined", scope: !157, file: !25, line: 246, baseType: !15, size: 32, offset: 768)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "lastlinedefined", scope: !157, file: !25, line: 247, baseType: !15, size: 32, offset: 800)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !157, file: !25, line: 248, baseType: !23, size: 64, offset: 832)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "nups", scope: !157, file: !25, line: 249, baseType: !34, size: 8, offset: 896)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "numparams", scope: !157, file: !25, line: 250, baseType: !34, size: 8, offset: 904)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "is_vararg", scope: !157, file: !25, line: 251, baseType: !34, size: 8, offset: 912)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "maxstacksize", scope: !157, file: !25, line: 252, baseType: !34, size: 8, offset: 920)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "upvals", scope: !146, file: !25, line: 305, baseType: !197, size: 64, offset: 320)
!197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 64, elements: !142)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "UpVal", file: !25, line: 284, baseType: !200)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "UpVal", file: !25, line: 274, size: 320, elements: !201)
!201 = !{!202, !203, !204, !205, !206}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !200, file: !25, line: 275, baseType: !23, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !200, file: !25, line: 275, baseType: !34, size: 8, offset: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !200, file: !25, line: 275, baseType: !34, size: 8, offset: 72)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !200, file: !25, line: 276, baseType: !84, size: 64, offset: 128)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !200, file: !25, line: 283, baseType: !207, size: 128, offset: 192)
!207 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !200, file: !25, line: 277, size: 128, elements: !208)
!208 = !{!209, !210}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !207, file: !25, line: 278, baseType: !85, size: 128)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !207, file: !25, line: 282, baseType: !211, size: 128)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !207, file: !25, line: 279, size: 128, elements: !212)
!212 = !{!213, !215}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !211, file: !25, line: 280, baseType: !214, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !211, file: !25, line: 281, baseType: !214, size: 64, offset: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "h", scope: !26, file: !20, line: 141, baseType: !75, size: 512)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !26, file: !20, line: 142, baseType: !157, size: 960)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "uv", scope: !26, file: !20, line: 143, baseType: !200, size: 320)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "th", scope: !26, file: !20, line: 144, baseType: !19, size: 1472)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !19, file: !20, line: 101, baseType: !34, size: 8, offset: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !19, file: !20, line: 101, baseType: !34, size: 8, offset: 72)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !19, file: !20, line: 102, baseType: !34, size: 8, offset: 80)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !19, file: !20, line: 103, baseType: !224, size: 64, offset: 128)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "StkId", file: !25, line: 193, baseType: !84)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !19, file: !20, line: 104, baseType: !224, size: 64, offset: 192)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "l_G", scope: !19, file: !20, line: 105, baseType: !227, size: 64, offset: 256)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "global_State", file: !20, line: 94, baseType: !229)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "global_State", file: !20, line: 68, size: 3456, elements: !230)
!230 = !{!231, !239, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !263, !265, !266, !267, !268, !269, !270, !271, !272, !274, !275, !279}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "strt", scope: !229, file: !20, line: 69, baseType: !232, size: 128)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "stringtable", file: !20, line: 42, baseType: !233)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stringtable", file: !20, line: 38, size: 128, elements: !234)
!234 = !{!235, !237, !238}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !233, file: !20, line: 39, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "nuse", scope: !233, file: !20, line: 40, baseType: !166, size: 32, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !233, file: !20, line: 41, baseType: !15, size: 32, offset: 96)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "frealloc", scope: !229, file: !20, line: 70, baseType: !240, size: 64, offset: 128)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Alloc", file: !18, line: 66, baseType: !241)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DISubroutineType(types: !243)
!243 = !{!4, !4, !4, !60, !60}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "ud", scope: !229, file: !20, line: 71, baseType: !4, size: 64, offset: 192)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "currentwhite", scope: !229, file: !20, line: 72, baseType: !34, size: 8, offset: 256)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "gcstate", scope: !229, file: !20, line: 73, baseType: !34, size: 8, offset: 264)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "sweepstrgc", scope: !229, file: !20, line: 74, baseType: !15, size: 32, offset: 288)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "rootgc", scope: !229, file: !20, line: 75, baseType: !23, size: 64, offset: 320)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "sweepgc", scope: !229, file: !20, line: 76, baseType: !236, size: 64, offset: 384)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "gray", scope: !229, file: !20, line: 77, baseType: !23, size: 64, offset: 448)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "grayagain", scope: !229, file: !20, line: 78, baseType: !23, size: 64, offset: 512)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "weak", scope: !229, file: !20, line: 79, baseType: !23, size: 64, offset: 576)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "tmudata", scope: !229, file: !20, line: 80, baseType: !23, size: 64, offset: 640)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "buff", scope: !229, file: !20, line: 81, baseType: !255, size: 192, offset: 704)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "Mbuffer", file: !256, line: 28, baseType: !257)
!256 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lzio.h", directory: "/root/.unikraft/apps/redis/build")
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Mbuffer", file: !256, line: 24, size: 192, elements: !258)
!258 = !{!259, !261, !262}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !257, file: !256, line: 25, baseType: !260, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !257, file: !256, line: 26, baseType: !60, size: 64, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "buffsize", scope: !257, file: !256, line: 27, baseType: !60, size: 64, offset: 128)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "GCthreshold", scope: !229, file: !20, line: 82, baseType: !264, size: 64, offset: 896)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "lu_mem", file: !35, line: 20, baseType: !60)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "totalbytes", scope: !229, file: !20, line: 83, baseType: !264, size: 64, offset: 960)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "estimate", scope: !229, file: !20, line: 84, baseType: !264, size: 64, offset: 1024)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "gcdept", scope: !229, file: !20, line: 85, baseType: !264, size: 64, offset: 1088)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "gcpause", scope: !229, file: !20, line: 86, baseType: !15, size: 32, offset: 1152)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "gcstepmul", scope: !229, file: !20, line: 87, baseType: !15, size: 32, offset: 1184)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "panic", scope: !229, file: !20, line: 88, baseType: !136, size: 64, offset: 1216)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "l_registry", scope: !229, file: !20, line: 89, baseType: !85, size: 128, offset: 1280)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "mainthread", scope: !229, file: !20, line: 90, baseType: !273, size: 64, offset: 1408)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "uvhead", scope: !229, file: !20, line: 91, baseType: !199, size: 320, offset: 1472)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "mt", scope: !229, file: !20, line: 92, baseType: !276, size: 576, offset: 1792)
!276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 576, elements: !277)
!277 = !{!278}
!278 = !DISubrange(count: 9)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "tmname", scope: !229, file: !20, line: 93, baseType: !280, size: 1088, offset: 2368)
!280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 1088, elements: !281)
!281 = !{!282}
!282 = !DISubrange(count: 17)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "ci", scope: !19, file: !20, line: 106, baseType: !284, size: 64, offset: 320)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "CallInfo", file: !20, line: 55, baseType: !286)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CallInfo", file: !20, line: 48, size: 320, elements: !287)
!287 = !{!288, !289, !290, !291, !294, !295}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !286, file: !20, line: 49, baseType: !224, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !286, file: !20, line: 50, baseType: !224, size: 64, offset: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !286, file: !20, line: 51, baseType: !224, size: 64, offset: 128)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "savedpc", scope: !286, file: !20, line: 52, baseType: !292, size: 64, offset: 192)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !165)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "nresults", scope: !286, file: !20, line: 53, baseType: !15, size: 32, offset: 256)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "tailcalls", scope: !286, file: !20, line: 54, baseType: !15, size: 32, offset: 288)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "savedpc", scope: !19, file: !20, line: 107, baseType: !292, size: 64, offset: 384)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "stack_last", scope: !19, file: !20, line: 108, baseType: !224, size: 64, offset: 448)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !19, file: !20, line: 109, baseType: !224, size: 64, offset: 512)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "end_ci", scope: !19, file: !20, line: 110, baseType: !284, size: 64, offset: 576)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "base_ci", scope: !19, file: !20, line: 111, baseType: !284, size: 64, offset: 640)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "stacksize", scope: !19, file: !20, line: 112, baseType: !15, size: 32, offset: 704)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "size_ci", scope: !19, file: !20, line: 113, baseType: !15, size: 32, offset: 736)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "nCcalls", scope: !19, file: !20, line: 114, baseType: !304, size: 16, offset: 768)
!304 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "baseCcalls", scope: !19, file: !20, line: 115, baseType: !304, size: 16, offset: 784)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "hookmask", scope: !19, file: !20, line: 116, baseType: !34, size: 8, offset: 800)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "allowhook", scope: !19, file: !20, line: 117, baseType: !34, size: 8, offset: 808)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "basehookcount", scope: !19, file: !20, line: 118, baseType: !15, size: 32, offset: 832)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "hookcount", scope: !19, file: !20, line: 119, baseType: !15, size: 32, offset: 864)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "hook", scope: !19, file: !20, line: 120, baseType: !311, size: 64, offset: 896)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Hook", file: !18, line: 330, baseType: !312)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DISubroutineType(types: !314)
!314 = !{null, !16, !315}
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Debug", file: !18, line: 326, baseType: !317)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lua_Debug", file: !18, line: 346, size: 960, elements: !318)
!318 = !{!319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !332}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !317, file: !18, line: 347, baseType: !15, size: 32)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !317, file: !18, line: 348, baseType: !5, size: 64, offset: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "namewhat", scope: !317, file: !18, line: 349, baseType: !5, size: 64, offset: 128)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "what", scope: !317, file: !18, line: 350, baseType: !5, size: 64, offset: 192)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !317, file: !18, line: 351, baseType: !5, size: 64, offset: 256)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "currentline", scope: !317, file: !18, line: 352, baseType: !15, size: 32, offset: 320)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "nups", scope: !317, file: !18, line: 353, baseType: !15, size: 32, offset: 352)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "linedefined", scope: !317, file: !18, line: 354, baseType: !15, size: 32, offset: 384)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "lastlinedefined", scope: !317, file: !18, line: 355, baseType: !15, size: 32, offset: 416)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "short_src", scope: !317, file: !18, line: 356, baseType: !329, size: 480, offset: 448)
!329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 480, elements: !330)
!330 = !{!331}
!331 = !DISubrange(count: 60)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "i_ci", scope: !317, file: !18, line: 358, baseType: !15, size: 32, offset: 928)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "l_gt", scope: !19, file: !20, line: 121, baseType: !85, size: 128, offset: 960)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !19, file: !20, line: 122, baseType: !85, size: 128, offset: 1088)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "openupval", scope: !19, file: !20, line: 123, baseType: !23, size: 64, offset: 1216)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !19, file: !20, line: 124, baseType: !23, size: 64, offset: 1280)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "errorJmp", scope: !19, file: !20, line: 125, baseType: !338, size: 64, offset: 1344)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DICompositeType(tag: DW_TAG_structure_type, name: "lua_longjmp", file: !20, line: 18, flags: DIFlagFwdDecl)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "errfunc", scope: !19, file: !20, line: 126, baseType: !341, size: 64, offset: 1408)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !61, line: 49, baseType: !49)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !344)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "Proto", file: !25, line: 253, baseType: !157)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Writer", file: !18, line: 60, baseType: !346)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DISubroutineType(types: !348)
!348 = !{!15, !16, !349, !60, !4}
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!351 = !{!352, !353, !354, !355, !356, !357}
!352 = !DILocalVariable(name: "L", arg: 1, scope: !12, file: !1, line: 153, type: !16)
!353 = !DILocalVariable(name: "f", arg: 2, scope: !12, file: !1, line: 153, type: !342)
!354 = !DILocalVariable(name: "w", arg: 3, scope: !12, file: !1, line: 153, type: !345)
!355 = !DILocalVariable(name: "data", arg: 4, scope: !12, file: !1, line: 153, type: !4)
!356 = !DILocalVariable(name: "strip", arg: 5, scope: !12, file: !1, line: 153, type: !15)
!357 = !DILocalVariable(name: "D", scope: !12, file: !1, line: 155, type: !358)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "DumpState", file: !1, line: 24, baseType: !359)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 18, size: 256, elements: !360)
!360 = !{!361, !362, !363, !364, !365}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "L", scope: !359, file: !1, line: 19, baseType: !16, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !359, file: !1, line: 20, baseType: !345, size: 64, offset: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !359, file: !1, line: 21, baseType: !4, size: 64, offset: 128)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "strip", scope: !359, file: !1, line: 22, baseType: !15, size: 32, offset: 192)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !359, file: !1, line: 23, baseType: !15, size: 32, offset: 224)
!366 = !DILocalVariable(name: "h", scope: !367, file: !1, line: 145, type: !373)
!367 = distinct !DISubprogram(name: "DumpHeader", scope: !1, file: !1, line: 143, type: !368, isLocal: true, isDefinition: true, scopeLine: 144, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !371)
!368 = !DISubroutineType(types: !369)
!369 = !{null, !370}
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!371 = !{!372, !366}
!372 = !DILocalVariable(name: "D", arg: 1, scope: !367, file: !1, line: 143, type: !370)
!373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 96, elements: !374)
!374 = !{!375}
!375 = !DISubrange(count: 12)
!376 = !DILocation(line: 145, column: 7, scope: !367, inlinedAt: !377)
!377 = distinct !DILocation(line: 161, column: 2, scope: !12)
!378 = !DILocation(line: 153, column: 27, scope: !12)
!379 = !DILocation(line: 153, column: 43, scope: !12)
!380 = !DILocation(line: 153, column: 57, scope: !12)
!381 = !DILocation(line: 153, column: 66, scope: !12)
!382 = !DILocation(line: 153, column: 76, scope: !12)
!383 = !DILocation(line: 155, column: 2, scope: !12)
!384 = !DILocation(line: 156, column: 4, scope: !12)
!385 = !DILocation(line: 156, column: 5, scope: !12)
!386 = !{!387, !388, i64 0}
!387 = !{!"", !388, i64 0, !388, i64 8, !388, i64 16, !391, i64 24, !391, i64 28}
!388 = !{!"any pointer", !389, i64 0}
!389 = !{!"omnipotent char", !390, i64 0}
!390 = !{!"Simple C/C++ TBAA"}
!391 = !{!"int", !389, i64 0}
!392 = !DILocation(line: 157, column: 4, scope: !12)
!393 = !DILocation(line: 157, column: 10, scope: !12)
!394 = !{!387, !388, i64 8}
!395 = !DILocation(line: 158, column: 4, scope: !12)
!396 = !DILocation(line: 158, column: 8, scope: !12)
!397 = !{!387, !388, i64 16}
!398 = !DILocation(line: 159, column: 4, scope: !12)
!399 = !DILocation(line: 159, column: 9, scope: !12)
!400 = !{!387, !391, i64 24}
!401 = !DILocation(line: 160, column: 4, scope: !12)
!402 = !DILocation(line: 155, column: 12, scope: !12)
!403 = !DILocation(line: 143, column: 35, scope: !367, inlinedAt: !377)
!404 = !DILocation(line: 145, column: 2, scope: !367, inlinedAt: !377)
!405 = !DILocation(line: 146, column: 2, scope: !367, inlinedAt: !377)
!406 = !DILocalVariable(name: "b", arg: 1, scope: !407, file: !1, line: 29, type: !349)
!407 = distinct !DISubprogram(name: "DumpBlock", scope: !1, file: !1, line: 29, type: !408, isLocal: true, isDefinition: true, scopeLine: 30, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !410)
!408 = !DISubroutineType(types: !409)
!409 = !{null, !349, !60, !370}
!410 = !{!406, !411, !412}
!411 = !DILocalVariable(name: "size", arg: 2, scope: !407, file: !1, line: 29, type: !60)
!412 = !DILocalVariable(name: "D", arg: 3, scope: !407, file: !1, line: 29, type: !370)
!413 = !DILocation(line: 29, column: 35, scope: !407, inlinedAt: !414)
!414 = distinct !DILocation(line: 147, column: 2, scope: !367, inlinedAt: !377)
!415 = !DILocation(line: 29, column: 45, scope: !407, inlinedAt: !414)
!416 = !DILocation(line: 29, column: 62, scope: !407, inlinedAt: !414)
!417 = !DILocation(line: 34, column: 13, scope: !418, inlinedAt: !414)
!418 = distinct !DILexicalBlock(scope: !419, file: !1, line: 32, column: 2)
!419 = distinct !DILexicalBlock(scope: !407, file: !1, line: 31, column: 6)
!420 = !DILocation(line: 34, column: 12, scope: !418, inlinedAt: !414)
!421 = !{!387, !391, i64 28}
!422 = !DILocation(line: 37, column: 1, scope: !407, inlinedAt: !414)
!423 = !DILocation(line: 148, column: 1, scope: !367, inlinedAt: !377)
!424 = !DILocation(line: 162, column: 2, scope: !12)
!425 = !DILocation(line: 163, column: 11, scope: !12)
!426 = !DILocation(line: 164, column: 1, scope: !12)
!427 = !DILocation(line: 163, column: 2, scope: !12)
!428 = distinct !DISubprogram(name: "DumpFunction", scope: !1, file: !1, line: 129, type: !429, isLocal: true, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !433)
!429 = !DISubroutineType(types: !430)
!430 = !{null, !342, !431, !370}
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !177)
!433 = !{!434, !435, !436}
!434 = !DILocalVariable(name: "f", arg: 1, scope: !428, file: !1, line: 129, type: !342)
!435 = !DILocalVariable(name: "p", arg: 2, scope: !428, file: !1, line: 129, type: !431)
!436 = !DILocalVariable(name: "D", arg: 3, scope: !428, file: !1, line: 129, type: !370)
!437 = !DILocation(line: 129, column: 39, scope: !428)
!438 = !DILocation(line: 129, column: 57, scope: !428)
!439 = !DILocation(line: 129, column: 71, scope: !428)
!440 = !DILocation(line: 131, column: 17, scope: !428)
!441 = !{!442, !388, i64 64}
!442 = !{!"Proto", !388, i64 0, !389, i64 8, !389, i64 9, !388, i64 16, !388, i64 24, !388, i64 32, !388, i64 40, !388, i64 48, !388, i64 56, !388, i64 64, !391, i64 72, !391, i64 76, !391, i64 80, !391, i64 84, !391, i64 88, !391, i64 92, !391, i64 96, !391, i64 100, !388, i64 104, !389, i64 112, !389, i64 113, !389, i64 114, !389, i64 115}
!443 = !DILocation(line: 131, column: 23, scope: !428)
!444 = !DILocation(line: 131, column: 27, scope: !428)
!445 = !DILocation(line: 131, column: 33, scope: !428)
!446 = !DILocation(line: 131, column: 30, scope: !428)
!447 = !DILocation(line: 63, column: 7, scope: !448, inlinedAt: !459)
!448 = distinct !DILexicalBlock(scope: !449, file: !1, line: 63, column: 6)
!449 = distinct !DISubprogram(name: "DumpString", scope: !1, file: !1, line: 61, type: !450, isLocal: true, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !452)
!450 = !DISubroutineType(types: !451)
!451 = !{null, !431, !370}
!452 = !{!453, !454, !455, !457}
!453 = !DILocalVariable(name: "s", arg: 1, scope: !449, file: !1, line: 61, type: !431)
!454 = !DILocalVariable(name: "D", arg: 2, scope: !449, file: !1, line: 61, type: !370)
!455 = !DILocalVariable(name: "size", scope: !456, file: !1, line: 65, type: !60)
!456 = distinct !DILexicalBlock(scope: !448, file: !1, line: 64, column: 2)
!457 = !DILocalVariable(name: "size", scope: !458, file: !1, line: 70, type: !60)
!458 = distinct !DILexicalBlock(scope: !448, file: !1, line: 69, column: 2)
!459 = distinct !DILocation(line: 131, column: 2, scope: !428)
!460 = !DILocation(line: 61, column: 39, scope: !449, inlinedAt: !459)
!461 = !DILocation(line: 61, column: 53, scope: !449, inlinedAt: !459)
!462 = !DILocation(line: 65, column: 3, scope: !456, inlinedAt: !459)
!463 = !DILocation(line: 65, column: 10, scope: !456, inlinedAt: !459)
!464 = !{!465, !465, i64 0}
!465 = !{!"long", !389, i64 0}
!466 = !DILocation(line: 29, column: 35, scope: !407, inlinedAt: !467)
!467 = distinct !DILocation(line: 66, column: 3, scope: !456, inlinedAt: !459)
!468 = !DILocation(line: 29, column: 45, scope: !407, inlinedAt: !467)
!469 = !DILocation(line: 29, column: 62, scope: !407, inlinedAt: !467)
!470 = !DILocation(line: 31, column: 9, scope: !419, inlinedAt: !467)
!471 = !DILocation(line: 31, column: 15, scope: !419, inlinedAt: !467)
!472 = !DILocation(line: 31, column: 6, scope: !407, inlinedAt: !467)
!473 = !DILocation(line: 34, column: 18, scope: !418, inlinedAt: !467)
!474 = !DILocation(line: 34, column: 29, scope: !418, inlinedAt: !467)
!475 = !DILocation(line: 34, column: 41, scope: !418, inlinedAt: !467)
!476 = !DILocation(line: 34, column: 13, scope: !418, inlinedAt: !467)
!477 = !DILocation(line: 34, column: 12, scope: !418, inlinedAt: !467)
!478 = !DILocation(line: 36, column: 2, scope: !418, inlinedAt: !467)
!479 = !DILocation(line: 37, column: 1, scope: !407, inlinedAt: !467)
!480 = !DILocation(line: 67, column: 2, scope: !448, inlinedAt: !459)
!481 = !DILocation(line: 67, column: 2, scope: !456, inlinedAt: !459)
!482 = !DILocation(line: 63, column: 17, scope: !448, inlinedAt: !459)
!483 = !DILocation(line: 70, column: 3, scope: !458, inlinedAt: !459)
!484 = !DILocation(line: 70, column: 22, scope: !458, inlinedAt: !459)
!485 = !{!389, !389, i64 0}
!486 = !DILocation(line: 70, column: 25, scope: !458, inlinedAt: !459)
!487 = !DILocation(line: 70, column: 10, scope: !458, inlinedAt: !459)
!488 = !DILocation(line: 29, column: 35, scope: !407, inlinedAt: !489)
!489 = distinct !DILocation(line: 71, column: 3, scope: !458, inlinedAt: !459)
!490 = !DILocation(line: 29, column: 45, scope: !407, inlinedAt: !489)
!491 = !DILocation(line: 29, column: 62, scope: !407, inlinedAt: !489)
!492 = !DILocation(line: 31, column: 9, scope: !419, inlinedAt: !489)
!493 = !DILocation(line: 31, column: 15, scope: !419, inlinedAt: !489)
!494 = !DILocation(line: 31, column: 6, scope: !407, inlinedAt: !489)
!495 = !DILocation(line: 37, column: 1, scope: !407, inlinedAt: !489)
!496 = !DILocation(line: 29, column: 35, scope: !407, inlinedAt: !497)
!497 = distinct !DILocation(line: 72, column: 3, scope: !458, inlinedAt: !459)
!498 = !DILocation(line: 29, column: 62, scope: !407, inlinedAt: !497)
!499 = !DILocation(line: 31, column: 6, scope: !407, inlinedAt: !497)
!500 = !DILocation(line: 34, column: 18, scope: !418, inlinedAt: !489)
!501 = !DILocation(line: 34, column: 29, scope: !418, inlinedAt: !489)
!502 = !DILocation(line: 34, column: 41, scope: !418, inlinedAt: !489)
!503 = !DILocation(line: 34, column: 13, scope: !418, inlinedAt: !489)
!504 = !DILocation(line: 34, column: 12, scope: !418, inlinedAt: !489)
!505 = !DILocation(line: 31, column: 15, scope: !419, inlinedAt: !497)
!506 = !DILocation(line: 72, column: 23, scope: !458, inlinedAt: !459)
!507 = !DILocation(line: 29, column: 45, scope: !407, inlinedAt: !497)
!508 = !DILocation(line: 34, column: 18, scope: !418, inlinedAt: !497)
!509 = !DILocation(line: 34, column: 29, scope: !418, inlinedAt: !497)
!510 = !DILocation(line: 34, column: 41, scope: !418, inlinedAt: !497)
!511 = !DILocation(line: 34, column: 13, scope: !418, inlinedAt: !497)
!512 = !DILocation(line: 34, column: 12, scope: !418, inlinedAt: !497)
!513 = !DILocation(line: 36, column: 2, scope: !418, inlinedAt: !497)
!514 = !DILocation(line: 37, column: 1, scope: !407, inlinedAt: !497)
!515 = !DILocation(line: 73, column: 2, scope: !448, inlinedAt: !459)
!516 = !DILocation(line: 31, column: 9, scope: !419, inlinedAt: !517)
!517 = distinct !DILocation(line: 47, column: 2, scope: !518, inlinedAt: !524)
!518 = distinct !DISubprogram(name: "DumpInt", scope: !1, file: !1, line: 45, type: !519, isLocal: true, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !521)
!519 = !DISubroutineType(types: !520)
!520 = !{null, !15, !370}
!521 = !{!522, !523}
!522 = !DILocalVariable(name: "x", arg: 1, scope: !518, file: !1, line: 45, type: !15)
!523 = !DILocalVariable(name: "D", arg: 2, scope: !518, file: !1, line: 45, type: !370)
!524 = distinct !DILocation(line: 132, column: 2, scope: !428)
!525 = !DILocation(line: 74, column: 1, scope: !449, inlinedAt: !459)
!526 = !DILocation(line: 132, column: 13, scope: !428)
!527 = !{!442, !391, i64 96}
!528 = !DILocation(line: 45, column: 25, scope: !518, inlinedAt: !524)
!529 = !{!391, !391, i64 0}
!530 = !DILocation(line: 45, column: 39, scope: !518, inlinedAt: !524)
!531 = !DILocation(line: 29, column: 45, scope: !407, inlinedAt: !517)
!532 = !DILocation(line: 29, column: 62, scope: !407, inlinedAt: !517)
!533 = !DILocation(line: 31, column: 15, scope: !419, inlinedAt: !517)
!534 = !DILocation(line: 31, column: 6, scope: !407, inlinedAt: !517)
!535 = !DILocation(line: 29, column: 35, scope: !407, inlinedAt: !517)
!536 = !DILocation(line: 34, column: 18, scope: !418, inlinedAt: !517)
!537 = !DILocation(line: 34, column: 29, scope: !418, inlinedAt: !517)
!538 = !DILocation(line: 34, column: 41, scope: !418, inlinedAt: !517)
!539 = !DILocation(line: 34, column: 13, scope: !418, inlinedAt: !517)
!540 = !DILocation(line: 34, column: 12, scope: !418, inlinedAt: !517)
!541 = !DILocation(line: 36, column: 2, scope: !418, inlinedAt: !517)
!542 = !DILocation(line: 31, column: 9, scope: !419, inlinedAt: !543)
!543 = distinct !DILocation(line: 47, column: 2, scope: !518, inlinedAt: !544)
!544 = distinct !DILocation(line: 133, column: 2, scope: !428)
!545 = !DILocation(line: 37, column: 1, scope: !407, inlinedAt: !517)
!546 = !DILocation(line: 48, column: 1, scope: !518, inlinedAt: !524)
!547 = !DILocation(line: 133, column: 13, scope: !428)
!548 = !{!442, !391, i64 100}
!549 = !DILocation(line: 45, column: 25, scope: !518, inlinedAt: !544)
!550 = !DILocation(line: 45, column: 39, scope: !518, inlinedAt: !544)
!551 = !DILocation(line: 29, column: 45, scope: !407, inlinedAt: !543)
!552 = !DILocation(line: 29, column: 62, scope: !407, inlinedAt: !543)
!553 = !DILocation(line: 31, column: 15, scope: !419, inlinedAt: !543)
!554 = !DILocation(line: 31, column: 6, scope: !407, inlinedAt: !543)
!555 = !DILocation(line: 29, column: 35, scope: !407, inlinedAt: !543)
!556 = !DILocation(line: 34, column: 18, scope: !418, inlinedAt: !543)
!557 = !DILocation(line: 34, column: 29, scope: !418, inlinedAt: !543)
!558 = !DILocation(line: 34, column: 41, scope: !418, inlinedAt: !543)
!559 = !DILocation(line: 34, column: 13, scope: !418, inlinedAt: !543)
!560 = !DILocation(line: 34, column: 12, scope: !418, inlinedAt: !543)
!561 = !DILocation(line: 36, column: 2, scope: !418, inlinedAt: !543)
!562 = !DILocation(line: 31, column: 9, scope: !419, inlinedAt: !563)
!563 = distinct !DILocation(line: 42, column: 2, scope: !564, inlinedAt: !569)
!564 = distinct !DISubprogram(name: "DumpChar", scope: !1, file: !1, line: 39, type: !519, isLocal: true, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !565)
!565 = !{!566, !567, !568}
!566 = !DILocalVariable(name: "y", arg: 1, scope: !564, file: !1, line: 39, type: !15)
!567 = !DILocalVariable(name: "D", arg: 2, scope: !564, file: !1, line: 39, type: !370)
!568 = !DILocalVariable(name: "x", scope: !564, file: !1, line: 41, type: !7)
!569 = distinct !DILocation(line: 134, column: 2, scope: !428)
!570 = !DILocation(line: 37, column: 1, scope: !407, inlinedAt: !543)
!571 = !DILocation(line: 48, column: 1, scope: !518, inlinedAt: !544)
!572 = !DILocation(line: 134, column: 14, scope: !428)
!573 = !{!442, !389, i64 112}
!574 = !DILocation(line: 39, column: 40, scope: !564, inlinedAt: !569)
!575 = !DILocation(line: 41, column: 7, scope: !564, inlinedAt: !569)
!576 = !DILocation(line: 41, column: 2, scope: !564, inlinedAt: !569)
!577 = !DILocation(line: 29, column: 35, scope: !407, inlinedAt: !563)
!578 = !DILocation(line: 29, column: 45, scope: !407, inlinedAt: !563)
!579 = !DILocation(line: 29, column: 62, scope: !407, inlinedAt: !563)
!580 = !DILocation(line: 31, column: 15, scope: !419, inlinedAt: !563)
!581 = !DILocation(line: 31, column: 6, scope: !407, inlinedAt: !563)
!582 = !DILocation(line: 34, column: 18, scope: !418, inlinedAt: !563)
!583 = !DILocation(line: 34, column: 29, scope: !418, inlinedAt: !563)
!584 = !DILocation(line: 34, column: 41, scope: !418, inlinedAt: !563)
!585 = !DILocation(line: 34, column: 13, scope: !418, inlinedAt: !563)
!586 = !DILocation(line: 34, column: 12, scope: !418, inlinedAt: !563)
!587 = !DILocation(line: 36, column: 2, scope: !418, inlinedAt: !563)
!588 = !DILocation(line: 31, column: 9, scope: !419, inlinedAt: !589)
!589 = distinct !DILocation(line: 42, column: 2, scope: !564, inlinedAt: !590)
!590 = distinct !DILocation(line: 135, column: 2, scope: !428)
!591 = !DILocation(line: 37, column: 1, scope: !407, inlinedAt: !563)
!592 = !DILocation(line: 43, column: 1, scope: !564, inlinedAt: !569)
!593 = !DILocation(line: 135, column: 14, scope: !428)
!594 = !{!442, !389, i64 113}
!595 = !DILocation(line: 39, column: 40, scope: !564, inlinedAt: !590)
!596 = !DILocation(line: 41, column: 7, scope: !564, inlinedAt: !590)
!597 = !DILocation(line: 41, column: 2, scope: !564, inlinedAt: !590)
!598 = !DILocation(line: 29, column: 35, scope: !407, inlinedAt: !589)
!599 = !DILocation(line: 29, column: 45, scope: !407, inlinedAt: !589)
!600 = !DILocation(line: 29, column: 62, scope: !407, inlinedAt: !589)
!601 = !DILocation(line: 31, column: 15, scope: !419, inlinedAt: !589)
!602 = !DILocation(line: 31, column: 6, scope: !407, inlinedAt: !589)
!603 = !DILocation(line: 34, column: 18, scope: !418, inlinedAt: !589)
!604 = !DILocation(line: 34, column: 29, scope: !418, inlinedAt: !589)
!605 = !DILocation(line: 34, column: 41, scope: !418, inlinedAt: !589)
!606 = !DILocation(line: 34, column: 13, scope: !418, inlinedAt: !589)
!607 = !DILocation(line: 34, column: 12, scope: !418, inlinedAt: !589)
!608 = !DILocation(line: 36, column: 2, scope: !418, inlinedAt: !589)
!609 = !DILocation(line: 31, column: 9, scope: !419, inlinedAt: !610)
!610 = distinct !DILocation(line: 42, column: 2, scope: !564, inlinedAt: !611)
!611 = distinct !DILocation(line: 136, column: 2, scope: !428)
!612 = !DILocation(line: 37, column: 1, scope: !407, inlinedAt: !589)
!613 = !DILocation(line: 43, column: 1, scope: !564, inlinedAt: !590)
!614 = !DILocation(line: 136, column: 14, scope: !428)
!615 = !{!442, !389, i64 114}
!616 = !DILocation(line: 39, column: 40, scope: !564, inlinedAt: !611)
!617 = !DILocation(line: 41, column: 7, scope: !564, inlinedAt: !611)
!618 = !DILocation(line: 41, column: 2, scope: !564, inlinedAt: !611)
!619 = !DILocation(line: 29, column: 35, scope: !407, inlinedAt: !610)
!620 = !DILocation(line: 29, column: 45, scope: !407, inlinedAt: !610)
!621 = !DILocation(line: 29, column: 62, scope: !407, inlinedAt: !610)
!622 = !DILocation(line: 31, column: 15, scope: !419, inlinedAt: !610)
!623 = !DILocation(line: 31, column: 6, scope: !407, inlinedAt: !610)
!624 = !DILocation(line: 34, column: 18, scope: !418, inlinedAt: !610)
!625 = !DILocation(line: 34, column: 29, scope: !418, inlinedAt: !610)
!626 = !DILocation(line: 34, column: 41, scope: !418, inlinedAt: !610)
!627 = !DILocation(line: 34, column: 13, scope: !418, inlinedAt: !610)
!628 = !DILocation(line: 34, column: 12, scope: !418, inlinedAt: !610)
!629 = !DILocation(line: 36, column: 2, scope: !418, inlinedAt: !610)
!630 = !DILocation(line: 31, column: 9, scope: !419, inlinedAt: !631)
!631 = distinct !DILocation(line: 42, column: 2, scope: !564, inlinedAt: !632)
!632 = distinct !DILocation(line: 137, column: 2, scope: !428)
!633 = !DILocation(line: 37, column: 1, scope: !407, inlinedAt: !610)
!634 = !DILocation(line: 43, column: 1, scope: !564, inlinedAt: !611)
!635 = !DILocation(line: 137, column: 14, scope: !428)
!636 = !{!442, !389, i64 115}
!637 = !DILocation(line: 39, column: 40, scope: !564, inlinedAt: !632)
!638 = !DILocation(line: 41, column: 7, scope: !564, inlinedAt: !632)
!639 = !DILocation(line: 41, column: 2, scope: !564, inlinedAt: !632)
!640 = !DILocation(line: 29, column: 35, scope: !407, inlinedAt: !631)
!641 = !DILocation(line: 29, column: 45, scope: !407, inlinedAt: !631)
!642 = !DILocation(line: 29, column: 62, scope: !407, inlinedAt: !631)
!643 = !DILocation(line: 31, column: 15, scope: !419, inlinedAt: !631)
!644 = !DILocation(line: 31, column: 6, scope: !407, inlinedAt: !631)
!645 = !DILocation(line: 34, column: 18, scope: !418, inlinedAt: !631)
!646 = !DILocation(line: 34, column: 29, scope: !418, inlinedAt: !631)
!647 = !DILocation(line: 34, column: 41, scope: !418, inlinedAt: !631)
!648 = !DILocation(line: 34, column: 13, scope: !418, inlinedAt: !631)
!649 = !DILocation(line: 34, column: 12, scope: !418, inlinedAt: !631)
!650 = !DILocation(line: 36, column: 2, scope: !418, inlinedAt: !631)
!651 = !DILocation(line: 31, column: 9, scope: !419, inlinedAt: !652)
!652 = distinct !DILocation(line: 47, column: 2, scope: !518, inlinedAt: !653)
!653 = distinct !DILocation(line: 57, column: 2, scope: !654, inlinedAt: !662)
!654 = distinct !DISubprogram(name: "DumpVector", scope: !1, file: !1, line: 55, type: !655, isLocal: true, isDefinition: true, scopeLine: 56, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !657)
!655 = !DISubroutineType(types: !656)
!656 = !{null, !349, !15, !60, !370}
!657 = !{!658, !659, !660, !661}
!658 = !DILocalVariable(name: "b", arg: 1, scope: !654, file: !1, line: 55, type: !349)
!659 = !DILocalVariable(name: "n", arg: 2, scope: !654, file: !1, line: 55, type: !15)
!660 = !DILocalVariable(name: "size", arg: 3, scope: !654, file: !1, line: 55, type: !60)
!661 = !DILocalVariable(name: "D", arg: 4, scope: !654, file: !1, line: 55, type: !370)
!662 = distinct !DILocation(line: 138, column: 2, scope: !428)
!663 = !DILocation(line: 37, column: 1, scope: !407, inlinedAt: !631)
!664 = !DILocation(line: 43, column: 1, scope: !564, inlinedAt: !632)
!665 = !DILocation(line: 138, column: 2, scope: !428)
!666 = !{!442, !388, i64 24}
!667 = !{!442, !391, i64 80}
!668 = !DILocation(line: 55, column: 36, scope: !654, inlinedAt: !662)
!669 = !DILocation(line: 55, column: 43, scope: !654, inlinedAt: !662)
!670 = !DILocation(line: 55, column: 53, scope: !654, inlinedAt: !662)
!671 = !DILocation(line: 55, column: 70, scope: !654, inlinedAt: !662)
!672 = !DILocation(line: 45, column: 25, scope: !518, inlinedAt: !653)
!673 = !DILocation(line: 45, column: 39, scope: !518, inlinedAt: !653)
!674 = !DILocation(line: 29, column: 45, scope: !407, inlinedAt: !652)
!675 = !DILocation(line: 29, column: 62, scope: !407, inlinedAt: !652)
!676 = !DILocation(line: 31, column: 15, scope: !419, inlinedAt: !652)
!677 = !DILocation(line: 31, column: 6, scope: !407, inlinedAt: !652)
!678 = !DILocation(line: 37, column: 1, scope: !407, inlinedAt: !652)
!679 = !DILocation(line: 48, column: 1, scope: !518, inlinedAt: !653)
!680 = !DILocation(line: 29, column: 35, scope: !407, inlinedAt: !681)
!681 = distinct !DILocation(line: 58, column: 2, scope: !654, inlinedAt: !662)
!682 = !DILocation(line: 29, column: 62, scope: !407, inlinedAt: !681)
!683 = !DILocation(line: 31, column: 6, scope: !407, inlinedAt: !681)
!684 = !DILocation(line: 29, column: 35, scope: !407, inlinedAt: !652)
!685 = !DILocation(line: 34, column: 18, scope: !418, inlinedAt: !652)
!686 = !DILocation(line: 34, column: 29, scope: !418, inlinedAt: !652)
!687 = !DILocation(line: 34, column: 41, scope: !418, inlinedAt: !652)
!688 = !DILocation(line: 34, column: 13, scope: !418, inlinedAt: !652)
!689 = !DILocation(line: 34, column: 12, scope: !418, inlinedAt: !652)
!690 = !DILocation(line: 31, column: 15, scope: !419, inlinedAt: !681)
!691 = !DILocation(line: 58, column: 2, scope: !654, inlinedAt: !662)
!692 = !DILocation(line: 29, column: 45, scope: !407, inlinedAt: !681)
!693 = !DILocation(line: 34, column: 18, scope: !418, inlinedAt: !681)
!694 = !DILocation(line: 34, column: 29, scope: !418, inlinedAt: !681)
!695 = !DILocation(line: 34, column: 41, scope: !418, inlinedAt: !681)
!696 = !DILocation(line: 34, column: 13, scope: !418, inlinedAt: !681)
!697 = !DILocation(line: 34, column: 12, scope: !418, inlinedAt: !681)
!698 = !DILocation(line: 36, column: 2, scope: !418, inlinedAt: !681)
!699 = !DILocation(line: 31, column: 9, scope: !419, inlinedAt: !700)
!700 = distinct !DILocation(line: 47, column: 2, scope: !518, inlinedAt: !701)
!701 = distinct !DILocation(line: 83, column: 2, scope: !702, inlinedAt: !716)
!702 = distinct !DISubprogram(name: "DumpConstants", scope: !1, file: !1, line: 80, type: !703, isLocal: true, isDefinition: true, scopeLine: 81, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !705)
!703 = !DISubroutineType(types: !704)
!704 = !{null, !342, !370}
!705 = !{!706, !707, !708, !709, !710}
!706 = !DILocalVariable(name: "f", arg: 1, scope: !702, file: !1, line: 80, type: !342)
!707 = !DILocalVariable(name: "D", arg: 2, scope: !702, file: !1, line: 80, type: !370)
!708 = !DILocalVariable(name: "i", scope: !702, file: !1, line: 82, type: !15)
!709 = !DILocalVariable(name: "n", scope: !702, file: !1, line: 82, type: !15)
!710 = !DILocalVariable(name: "o", scope: !711, file: !1, line: 86, type: !714)
!711 = distinct !DILexicalBlock(scope: !712, file: !1, line: 85, column: 2)
!712 = distinct !DILexicalBlock(scope: !713, file: !1, line: 84, column: 2)
!713 = distinct !DILexicalBlock(scope: !702, file: !1, line: 84, column: 2)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!716 = distinct !DILocation(line: 139, column: 2, scope: !428)
!717 = !DILocation(line: 37, column: 1, scope: !407, inlinedAt: !681)
!718 = !DILocation(line: 59, column: 1, scope: !654, inlinedAt: !662)
!719 = !DILocation(line: 80, column: 40, scope: !702, inlinedAt: !716)
!720 = !DILocation(line: 80, column: 54, scope: !702, inlinedAt: !716)
!721 = !DILocation(line: 82, column: 13, scope: !702, inlinedAt: !716)
!722 = !{!442, !391, i64 76}
!723 = !DILocation(line: 82, column: 8, scope: !702, inlinedAt: !716)
!724 = !DILocation(line: 45, column: 25, scope: !518, inlinedAt: !701)
!725 = !DILocation(line: 45, column: 39, scope: !518, inlinedAt: !701)
!726 = !DILocation(line: 29, column: 45, scope: !407, inlinedAt: !700)
!727 = !DILocation(line: 29, column: 62, scope: !407, inlinedAt: !700)
!728 = !DILocation(line: 31, column: 15, scope: !419, inlinedAt: !700)
!729 = !DILocation(line: 31, column: 6, scope: !407, inlinedAt: !700)
!730 = !DILocation(line: 29, column: 35, scope: !407, inlinedAt: !700)
!731 = !DILocation(line: 34, column: 18, scope: !418, inlinedAt: !700)
!732 = !DILocation(line: 34, column: 29, scope: !418, inlinedAt: !700)
!733 = !DILocation(line: 34, column: 41, scope: !418, inlinedAt: !700)
!734 = !DILocation(line: 34, column: 13, scope: !418, inlinedAt: !700)
!735 = !DILocation(line: 34, column: 12, scope: !418, inlinedAt: !700)
!736 = !DILocation(line: 36, column: 2, scope: !418, inlinedAt: !700)
!737 = !DILocation(line: 37, column: 1, scope: !407, inlinedAt: !700)
!738 = !DILocation(line: 48, column: 1, scope: !518, inlinedAt: !701)
!739 = !DILocation(line: 82, column: 6, scope: !702, inlinedAt: !716)
!740 = !DILocation(line: 84, column: 13, scope: !712, inlinedAt: !716)
!741 = !DILocation(line: 84, column: 2, scope: !713, inlinedAt: !716)
!742 = !DILocation(line: 31, column: 9, scope: !419, inlinedAt: !743)
!743 = distinct !DILocation(line: 42, column: 2, scope: !564, inlinedAt: !744)
!744 = distinct !DILocation(line: 87, column: 3, scope: !711, inlinedAt: !716)
!745 = !DILocation(line: 86, column: 23, scope: !711, inlinedAt: !716)
!746 = !{!442, !388, i64 16}
!747 = !DILocation(line: 86, column: 20, scope: !711, inlinedAt: !716)
!748 = !DILocation(line: 86, column: 17, scope: !711, inlinedAt: !716)
!749 = !DILocation(line: 87, column: 12, scope: !711, inlinedAt: !716)
!750 = !{!751, !391, i64 8}
!751 = !{!"lua_TValue", !389, i64 0, !391, i64 8}
!752 = !DILocation(line: 39, column: 26, scope: !564, inlinedAt: !744)
!753 = !DILocation(line: 39, column: 40, scope: !564, inlinedAt: !744)
!754 = !DILocation(line: 41, column: 7, scope: !564, inlinedAt: !744)
!755 = !DILocation(line: 41, column: 2, scope: !564, inlinedAt: !744)
!756 = !DILocation(line: 41, column: 9, scope: !564, inlinedAt: !744)
!757 = !DILocation(line: 29, column: 35, scope: !407, inlinedAt: !743)
!758 = !DILocation(line: 29, column: 45, scope: !407, inlinedAt: !743)
!759 = !DILocation(line: 29, column: 62, scope: !407, inlinedAt: !743)
!760 = !DILocation(line: 31, column: 15, scope: !419, inlinedAt: !743)
!761 = !DILocation(line: 31, column: 6, scope: !407, inlinedAt: !743)
!762 = !DILocation(line: 34, column: 18, scope: !418, inlinedAt: !743)
!763 = !DILocation(line: 34, column: 29, scope: !418, inlinedAt: !743)
!764 = !DILocation(line: 34, column: 41, scope: !418, inlinedAt: !743)
!765 = !DILocation(line: 34, column: 13, scope: !418, inlinedAt: !743)
!766 = !DILocation(line: 34, column: 12, scope: !418, inlinedAt: !743)
!767 = !DILocation(line: 88, column: 11, scope: !711, inlinedAt: !716)
!768 = !DILocation(line: 36, column: 2, scope: !418, inlinedAt: !743)
!769 = !DILocation(line: 37, column: 1, scope: !407, inlinedAt: !743)
!770 = !DILocation(line: 43, column: 1, scope: !564, inlinedAt: !744)
!771 = !DILocation(line: 88, column: 3, scope: !711, inlinedAt: !716)
!772 = !DILocation(line: 93, column: 11, scope: !773, inlinedAt: !716)
!773 = distinct !DILexicalBlock(scope: !711, file: !1, line: 89, column: 3)
!774 = !DILocation(line: 39, column: 26, scope: !564, inlinedAt: !775)
!775 = distinct !DILocation(line: 93, column: 2, scope: !773, inlinedAt: !716)
!776 = !DILocation(line: 39, column: 40, scope: !564, inlinedAt: !775)
!777 = !DILocation(line: 41, column: 7, scope: !564, inlinedAt: !775)
!778 = !DILocation(line: 41, column: 2, scope: !564, inlinedAt: !775)
!779 = !DILocation(line: 41, column: 9, scope: !564, inlinedAt: !775)
!780 = !DILocation(line: 29, column: 35, scope: !407, inlinedAt: !781)
!781 = distinct !DILocation(line: 42, column: 2, scope: !564, inlinedAt: !775)
!782 = !DILocation(line: 29, column: 45, scope: !407, inlinedAt: !781)
!783 = !DILocation(line: 29, column: 62, scope: !407, inlinedAt: !781)
!784 = !DILocation(line: 31, column: 15, scope: !419, inlinedAt: !781)
!785 = !DILocation(line: 31, column: 6, scope: !407, inlinedAt: !781)
!786 = !DILocation(line: 34, column: 18, scope: !418, inlinedAt: !781)
!787 = !DILocation(line: 34, column: 29, scope: !418, inlinedAt: !781)
!788 = !DILocation(line: 34, column: 41, scope: !418, inlinedAt: !781)
!789 = !DILocation(line: 34, column: 13, scope: !418, inlinedAt: !781)
!790 = !DILocation(line: 34, column: 12, scope: !418, inlinedAt: !781)
!791 = !DILocation(line: 36, column: 2, scope: !418, inlinedAt: !781)
!792 = !DILocation(line: 37, column: 1, scope: !407, inlinedAt: !781)
!793 = !DILocation(line: 43, column: 1, scope: !564, inlinedAt: !775)
!794 = !DILocation(line: 94, column: 2, scope: !773, inlinedAt: !716)
!795 = !DILocation(line: 96, column: 13, scope: !773, inlinedAt: !716)
!796 = !DILocation(line: 50, column: 35, scope: !797, inlinedAt: !803)
!797 = distinct !DISubprogram(name: "DumpNumber", scope: !1, file: !1, line: 50, type: !798, isLocal: true, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !800)
!798 = !DISubroutineType(types: !799)
!799 = !{null, !95, !370}
!800 = !{!801, !802}
!801 = !DILocalVariable(name: "x", arg: 1, scope: !797, file: !1, line: 50, type: !95)
!802 = !DILocalVariable(name: "D", arg: 2, scope: !797, file: !1, line: 50, type: !370)
!803 = distinct !DILocation(line: 96, column: 2, scope: !773, inlinedAt: !716)
!804 = !{!805, !805, i64 0}
!805 = !{!"double", !389, i64 0}
!806 = !DILocation(line: 50, column: 49, scope: !797, inlinedAt: !803)
!807 = !DILocation(line: 29, column: 45, scope: !407, inlinedAt: !808)
!808 = distinct !DILocation(line: 52, column: 2, scope: !797, inlinedAt: !803)
!809 = !DILocation(line: 29, column: 62, scope: !407, inlinedAt: !808)
!810 = !DILocation(line: 31, column: 15, scope: !419, inlinedAt: !808)
!811 = !DILocation(line: 31, column: 6, scope: !407, inlinedAt: !808)
!812 = !DILocation(line: 29, column: 35, scope: !407, inlinedAt: !808)
!813 = !DILocation(line: 34, column: 18, scope: !418, inlinedAt: !808)
!814 = !DILocation(line: 34, column: 29, scope: !418, inlinedAt: !808)
!815 = !DILocation(line: 34, column: 41, scope: !418, inlinedAt: !808)
!816 = !DILocation(line: 34, column: 13, scope: !418, inlinedAt: !808)
!817 = !DILocation(line: 34, column: 12, scope: !418, inlinedAt: !808)
!818 = !DILocation(line: 36, column: 2, scope: !418, inlinedAt: !808)
!819 = !DILocation(line: 37, column: 1, scope: !407, inlinedAt: !808)
!820 = !DILocation(line: 53, column: 1, scope: !797, inlinedAt: !803)
!821 = !DILocation(line: 97, column: 2, scope: !773, inlinedAt: !716)
!822 = !DILocation(line: 99, column: 13, scope: !773, inlinedAt: !716)
!823 = !DILocation(line: 61, column: 39, scope: !449, inlinedAt: !824)
!824 = distinct !DILocation(line: 99, column: 2, scope: !773, inlinedAt: !716)
!825 = !DILocation(line: 61, column: 53, scope: !449, inlinedAt: !824)
!826 = !DILocation(line: 63, column: 7, scope: !448, inlinedAt: !824)
!827 = !DILocation(line: 63, column: 14, scope: !448, inlinedAt: !824)
!828 = !DILocation(line: 65, column: 3, scope: !456, inlinedAt: !824)
!829 = !DILocation(line: 65, column: 10, scope: !456, inlinedAt: !824)
!830 = !DILocation(line: 29, column: 35, scope: !407, inlinedAt: !831)
!831 = distinct !DILocation(line: 66, column: 3, scope: !456, inlinedAt: !824)
!832 = !DILocation(line: 29, column: 45, scope: !407, inlinedAt: !831)
!833 = !DILocation(line: 29, column: 62, scope: !407, inlinedAt: !831)
!834 = !DILocation(line: 31, column: 15, scope: !419, inlinedAt: !831)
!835 = !DILocation(line: 31, column: 6, scope: !407, inlinedAt: !831)
!836 = !DILocation(line: 34, column: 18, scope: !418, inlinedAt: !831)
!837 = !DILocation(line: 34, column: 29, scope: !418, inlinedAt: !831)
!838 = !DILocation(line: 34, column: 41, scope: !418, inlinedAt: !831)
!839 = !DILocation(line: 34, column: 13, scope: !418, inlinedAt: !831)
!840 = !DILocation(line: 34, column: 12, scope: !418, inlinedAt: !831)
!841 = !DILocation(line: 36, column: 2, scope: !418, inlinedAt: !831)
!842 = !DILocation(line: 37, column: 1, scope: !407, inlinedAt: !831)
!843 = !DILocation(line: 67, column: 2, scope: !448, inlinedAt: !824)
!844 = !DILocation(line: 67, column: 2, scope: !456, inlinedAt: !824)
!845 = !DILocation(line: 63, column: 17, scope: !448, inlinedAt: !824)
!846 = !DILocation(line: 70, column: 3, scope: !458, inlinedAt: !824)
!847 = !DILocation(line: 70, column: 22, scope: !458, inlinedAt: !824)
!848 = !DILocation(line: 70, column: 25, scope: !458, inlinedAt: !824)
!849 = !DILocation(line: 70, column: 10, scope: !458, inlinedAt: !824)
!850 = !DILocation(line: 29, column: 35, scope: !407, inlinedAt: !851)
!851 = distinct !DILocation(line: 71, column: 3, scope: !458, inlinedAt: !824)
!852 = !DILocation(line: 29, column: 45, scope: !407, inlinedAt: !851)
!853 = !DILocation(line: 29, column: 62, scope: !407, inlinedAt: !851)
!854 = !DILocation(line: 31, column: 15, scope: !419, inlinedAt: !851)
!855 = !DILocation(line: 31, column: 6, scope: !407, inlinedAt: !851)
!856 = !DILocation(line: 37, column: 1, scope: !407, inlinedAt: !851)
!857 = !DILocation(line: 29, column: 35, scope: !407, inlinedAt: !858)
!858 = distinct !DILocation(line: 72, column: 3, scope: !458, inlinedAt: !824)
!859 = !DILocation(line: 29, column: 62, scope: !407, inlinedAt: !858)
!860 = !DILocation(line: 31, column: 6, scope: !407, inlinedAt: !858)
!861 = !DILocation(line: 34, column: 18, scope: !418, inlinedAt: !851)
!862 = !DILocation(line: 34, column: 29, scope: !418, inlinedAt: !851)
!863 = !DILocation(line: 34, column: 41, scope: !418, inlinedAt: !851)
!864 = !DILocation(line: 34, column: 13, scope: !418, inlinedAt: !851)
!865 = !DILocation(line: 34, column: 12, scope: !418, inlinedAt: !851)
!866 = !DILocation(line: 31, column: 15, scope: !419, inlinedAt: !858)
!867 = !DILocation(line: 72, column: 23, scope: !458, inlinedAt: !824)
!868 = !DILocation(line: 29, column: 45, scope: !407, inlinedAt: !858)
!869 = !DILocation(line: 34, column: 18, scope: !418, inlinedAt: !858)
!870 = !DILocation(line: 34, column: 29, scope: !418, inlinedAt: !858)
!871 = !DILocation(line: 34, column: 41, scope: !418, inlinedAt: !858)
!872 = !DILocation(line: 34, column: 13, scope: !418, inlinedAt: !858)
!873 = !DILocation(line: 34, column: 12, scope: !418, inlinedAt: !858)
!874 = !DILocation(line: 36, column: 2, scope: !418, inlinedAt: !858)
!875 = !DILocation(line: 37, column: 1, scope: !407, inlinedAt: !858)
!876 = !DILocation(line: 73, column: 2, scope: !448, inlinedAt: !824)
!877 = !DILocation(line: 74, column: 1, scope: !449, inlinedAt: !824)
!878 = !DILocation(line: 100, column: 2, scope: !773, inlinedAt: !716)
!879 = !DILocation(line: 84, column: 18, scope: !712, inlinedAt: !716)
!880 = distinct !{!880, !881, !882}
!881 = !DILocation(line: 84, column: 2, scope: !713)
!882 = !DILocation(line: 105, column: 2, scope: !713)
!883 = !DILocation(line: 31, column: 9, scope: !419, inlinedAt: !884)
!884 = distinct !DILocation(line: 47, column: 2, scope: !518, inlinedAt: !885)
!885 = distinct !DILocation(line: 107, column: 2, scope: !702, inlinedAt: !716)
!886 = !DILocation(line: 106, column: 7, scope: !702, inlinedAt: !716)
!887 = !{!442, !391, i64 88}
!888 = !DILocation(line: 45, column: 25, scope: !518, inlinedAt: !885)
!889 = !DILocation(line: 45, column: 39, scope: !518, inlinedAt: !885)
!890 = !DILocation(line: 29, column: 45, scope: !407, inlinedAt: !884)
!891 = !DILocation(line: 29, column: 62, scope: !407, inlinedAt: !884)
!892 = !DILocation(line: 31, column: 15, scope: !419, inlinedAt: !884)
!893 = !DILocation(line: 31, column: 6, scope: !407, inlinedAt: !884)
!894 = !DILocation(line: 29, column: 35, scope: !407, inlinedAt: !884)
!895 = !DILocation(line: 34, column: 18, scope: !418, inlinedAt: !884)
!896 = !DILocation(line: 34, column: 29, scope: !418, inlinedAt: !884)
!897 = !DILocation(line: 34, column: 41, scope: !418, inlinedAt: !884)
!898 = !DILocation(line: 34, column: 13, scope: !418, inlinedAt: !884)
!899 = !DILocation(line: 34, column: 12, scope: !418, inlinedAt: !884)
!900 = !DILocation(line: 36, column: 2, scope: !418, inlinedAt: !884)
!901 = !DILocation(line: 37, column: 1, scope: !407, inlinedAt: !884)
!902 = !DILocation(line: 48, column: 1, scope: !518, inlinedAt: !885)
!903 = !DILocation(line: 108, column: 13, scope: !904, inlinedAt: !716)
!904 = distinct !DILexicalBlock(scope: !905, file: !1, line: 108, column: 2)
!905 = distinct !DILexicalBlock(scope: !702, file: !1, line: 108, column: 2)
!906 = !DILocation(line: 108, column: 2, scope: !905, inlinedAt: !716)
!907 = !DILocation(line: 108, column: 38, scope: !904, inlinedAt: !716)
!908 = !{!442, !388, i64 32}
!909 = !DILocation(line: 108, column: 35, scope: !904, inlinedAt: !716)
!910 = !{!388, !388, i64 0}
!911 = !DILocation(line: 108, column: 46, scope: !904, inlinedAt: !716)
!912 = !DILocation(line: 108, column: 22, scope: !904, inlinedAt: !716)
!913 = !DILocation(line: 108, column: 18, scope: !904, inlinedAt: !716)
!914 = distinct !{!914, !915, !916}
!915 = !DILocation(line: 108, column: 2, scope: !905)
!916 = !DILocation(line: 108, column: 54, scope: !905)
!917 = !DILocation(line: 109, column: 1, scope: !702, inlinedAt: !716)
!918 = !DILocalVariable(name: "f", arg: 1, scope: !919, file: !1, line: 111, type: !342)
!919 = distinct !DISubprogram(name: "DumpDebug", scope: !1, file: !1, line: 111, type: !703, isLocal: true, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !920)
!920 = !{!918, !921, !922, !923}
!921 = !DILocalVariable(name: "D", arg: 2, scope: !919, file: !1, line: 111, type: !370)
!922 = !DILocalVariable(name: "i", scope: !919, file: !1, line: 113, type: !15)
!923 = !DILocalVariable(name: "n", scope: !919, file: !1, line: 113, type: !15)
!924 = !DILocation(line: 111, column: 36, scope: !919, inlinedAt: !925)
!925 = distinct !DILocation(line: 140, column: 2, scope: !428)
!926 = !DILocation(line: 111, column: 50, scope: !919, inlinedAt: !925)
!927 = !DILocation(line: 114, column: 9, scope: !919, inlinedAt: !925)
!928 = !DILocation(line: 114, column: 5, scope: !919, inlinedAt: !925)
!929 = !DILocation(line: 114, column: 25, scope: !919, inlinedAt: !925)
!930 = !{!442, !391, i64 84}
!931 = !DILocation(line: 113, column: 8, scope: !919, inlinedAt: !925)
!932 = !DILocation(line: 115, column: 16, scope: !919, inlinedAt: !925)
!933 = !{!442, !388, i64 40}
!934 = !DILocation(line: 55, column: 36, scope: !654, inlinedAt: !935)
!935 = distinct !DILocation(line: 115, column: 2, scope: !919, inlinedAt: !925)
!936 = !DILocation(line: 55, column: 43, scope: !654, inlinedAt: !935)
!937 = !DILocation(line: 55, column: 53, scope: !654, inlinedAt: !935)
!938 = !DILocation(line: 55, column: 70, scope: !654, inlinedAt: !935)
!939 = !DILocation(line: 45, column: 25, scope: !518, inlinedAt: !940)
!940 = distinct !DILocation(line: 57, column: 2, scope: !654, inlinedAt: !935)
!941 = !DILocation(line: 45, column: 39, scope: !518, inlinedAt: !940)
!942 = !DILocation(line: 29, column: 45, scope: !407, inlinedAt: !943)
!943 = distinct !DILocation(line: 47, column: 2, scope: !518, inlinedAt: !940)
!944 = !DILocation(line: 29, column: 62, scope: !407, inlinedAt: !943)
!945 = !DILocation(line: 31, column: 9, scope: !419, inlinedAt: !943)
!946 = !DILocation(line: 31, column: 15, scope: !419, inlinedAt: !943)
!947 = !DILocation(line: 31, column: 6, scope: !407, inlinedAt: !943)
!948 = !DILocation(line: 37, column: 1, scope: !407, inlinedAt: !943)
!949 = !DILocation(line: 48, column: 1, scope: !518, inlinedAt: !940)
!950 = !DILocation(line: 29, column: 35, scope: !407, inlinedAt: !951)
!951 = distinct !DILocation(line: 58, column: 2, scope: !654, inlinedAt: !935)
!952 = !DILocation(line: 29, column: 62, scope: !407, inlinedAt: !951)
!953 = !DILocation(line: 31, column: 6, scope: !407, inlinedAt: !951)
!954 = !DILocation(line: 29, column: 35, scope: !407, inlinedAt: !943)
!955 = !DILocation(line: 34, column: 18, scope: !418, inlinedAt: !943)
!956 = !DILocation(line: 34, column: 29, scope: !418, inlinedAt: !943)
!957 = !DILocation(line: 34, column: 41, scope: !418, inlinedAt: !943)
!958 = !DILocation(line: 34, column: 13, scope: !418, inlinedAt: !943)
!959 = !DILocation(line: 34, column: 12, scope: !418, inlinedAt: !943)
!960 = !DILocation(line: 31, column: 15, scope: !419, inlinedAt: !951)
!961 = !DILocation(line: 58, column: 2, scope: !654, inlinedAt: !935)
!962 = !DILocation(line: 29, column: 45, scope: !407, inlinedAt: !951)
!963 = !DILocation(line: 34, column: 18, scope: !418, inlinedAt: !951)
!964 = !DILocation(line: 34, column: 29, scope: !418, inlinedAt: !951)
!965 = !DILocation(line: 34, column: 41, scope: !418, inlinedAt: !951)
!966 = !DILocation(line: 34, column: 13, scope: !418, inlinedAt: !951)
!967 = !DILocation(line: 34, column: 12, scope: !418, inlinedAt: !951)
!968 = !DILocation(line: 36, column: 2, scope: !418, inlinedAt: !951)
!969 = !DILocation(line: 37, column: 1, scope: !407, inlinedAt: !951)
!970 = !DILocation(line: 59, column: 1, scope: !654, inlinedAt: !935)
!971 = !DILocation(line: 116, column: 9, scope: !919, inlinedAt: !925)
!972 = !DILocation(line: 116, column: 5, scope: !919, inlinedAt: !925)
!973 = !DILocation(line: 116, column: 25, scope: !919, inlinedAt: !925)
!974 = !{!442, !391, i64 92}
!975 = !DILocation(line: 45, column: 25, scope: !518, inlinedAt: !976)
!976 = distinct !DILocation(line: 117, column: 2, scope: !919, inlinedAt: !925)
!977 = !DILocation(line: 45, column: 39, scope: !518, inlinedAt: !976)
!978 = !DILocation(line: 29, column: 45, scope: !407, inlinedAt: !979)
!979 = distinct !DILocation(line: 47, column: 2, scope: !518, inlinedAt: !976)
!980 = !DILocation(line: 29, column: 62, scope: !407, inlinedAt: !979)
!981 = !DILocation(line: 31, column: 15, scope: !419, inlinedAt: !979)
!982 = !DILocation(line: 31, column: 6, scope: !407, inlinedAt: !979)
!983 = !DILocation(line: 29, column: 35, scope: !407, inlinedAt: !979)
!984 = !DILocation(line: 34, column: 18, scope: !418, inlinedAt: !979)
!985 = !DILocation(line: 34, column: 29, scope: !418, inlinedAt: !979)
!986 = !DILocation(line: 34, column: 41, scope: !418, inlinedAt: !979)
!987 = !DILocation(line: 34, column: 13, scope: !418, inlinedAt: !979)
!988 = !DILocation(line: 34, column: 12, scope: !418, inlinedAt: !979)
!989 = !DILocation(line: 36, column: 2, scope: !418, inlinedAt: !979)
!990 = !DILocation(line: 37, column: 1, scope: !407, inlinedAt: !979)
!991 = !DILocation(line: 48, column: 1, scope: !518, inlinedAt: !976)
!992 = !DILocation(line: 113, column: 6, scope: !919, inlinedAt: !925)
!993 = !DILocation(line: 118, column: 13, scope: !994, inlinedAt: !925)
!994 = distinct !DILexicalBlock(scope: !995, file: !1, line: 118, column: 2)
!995 = distinct !DILexicalBlock(scope: !919, file: !1, line: 118, column: 2)
!996 = !DILocation(line: 118, column: 2, scope: !995, inlinedAt: !925)
!997 = !DILocation(line: 120, column: 17, scope: !998, inlinedAt: !925)
!998 = distinct !DILexicalBlock(scope: !994, file: !1, line: 119, column: 2)
!999 = !{!442, !388, i64 48}
!1000 = !DILocation(line: 120, column: 28, scope: !998, inlinedAt: !925)
!1001 = !{!1002, !388, i64 0}
!1002 = !{!"LocVar", !388, i64 0, !391, i64 8, !391, i64 12}
!1003 = !DILocation(line: 61, column: 39, scope: !449, inlinedAt: !1004)
!1004 = distinct !DILocation(line: 120, column: 3, scope: !998, inlinedAt: !925)
!1005 = !DILocation(line: 61, column: 53, scope: !449, inlinedAt: !1004)
!1006 = !DILocation(line: 63, column: 7, scope: !448, inlinedAt: !1004)
!1007 = !DILocation(line: 63, column: 14, scope: !448, inlinedAt: !1004)
!1008 = !DILocation(line: 65, column: 3, scope: !456, inlinedAt: !1004)
!1009 = !DILocation(line: 65, column: 10, scope: !456, inlinedAt: !1004)
!1010 = !DILocation(line: 29, column: 35, scope: !407, inlinedAt: !1011)
!1011 = distinct !DILocation(line: 66, column: 3, scope: !456, inlinedAt: !1004)
!1012 = !DILocation(line: 29, column: 45, scope: !407, inlinedAt: !1011)
!1013 = !DILocation(line: 29, column: 62, scope: !407, inlinedAt: !1011)
!1014 = !DILocation(line: 31, column: 15, scope: !419, inlinedAt: !1011)
!1015 = !DILocation(line: 31, column: 6, scope: !407, inlinedAt: !1011)
!1016 = !DILocation(line: 34, column: 18, scope: !418, inlinedAt: !1011)
!1017 = !DILocation(line: 34, column: 29, scope: !418, inlinedAt: !1011)
!1018 = !DILocation(line: 34, column: 41, scope: !418, inlinedAt: !1011)
!1019 = !DILocation(line: 34, column: 13, scope: !418, inlinedAt: !1011)
!1020 = !DILocation(line: 34, column: 12, scope: !418, inlinedAt: !1011)
!1021 = !DILocation(line: 36, column: 2, scope: !418, inlinedAt: !1011)
!1022 = !DILocation(line: 37, column: 1, scope: !407, inlinedAt: !1011)
!1023 = !DILocation(line: 67, column: 2, scope: !448, inlinedAt: !1004)
!1024 = !DILocation(line: 67, column: 2, scope: !456, inlinedAt: !1004)
!1025 = !DILocation(line: 63, column: 17, scope: !448, inlinedAt: !1004)
!1026 = !DILocation(line: 70, column: 3, scope: !458, inlinedAt: !1004)
!1027 = !DILocation(line: 70, column: 22, scope: !458, inlinedAt: !1004)
!1028 = !DILocation(line: 70, column: 25, scope: !458, inlinedAt: !1004)
!1029 = !DILocation(line: 70, column: 10, scope: !458, inlinedAt: !1004)
!1030 = !DILocation(line: 29, column: 35, scope: !407, inlinedAt: !1031)
!1031 = distinct !DILocation(line: 71, column: 3, scope: !458, inlinedAt: !1004)
!1032 = !DILocation(line: 29, column: 45, scope: !407, inlinedAt: !1031)
!1033 = !DILocation(line: 29, column: 62, scope: !407, inlinedAt: !1031)
!1034 = !DILocation(line: 31, column: 15, scope: !419, inlinedAt: !1031)
!1035 = !DILocation(line: 31, column: 6, scope: !407, inlinedAt: !1031)
!1036 = !DILocation(line: 37, column: 1, scope: !407, inlinedAt: !1031)
!1037 = !DILocation(line: 29, column: 35, scope: !407, inlinedAt: !1038)
!1038 = distinct !DILocation(line: 72, column: 3, scope: !458, inlinedAt: !1004)
!1039 = !DILocation(line: 29, column: 62, scope: !407, inlinedAt: !1038)
!1040 = !DILocation(line: 31, column: 6, scope: !407, inlinedAt: !1038)
!1041 = !DILocation(line: 34, column: 18, scope: !418, inlinedAt: !1031)
!1042 = !DILocation(line: 34, column: 29, scope: !418, inlinedAt: !1031)
!1043 = !DILocation(line: 34, column: 41, scope: !418, inlinedAt: !1031)
!1044 = !DILocation(line: 34, column: 13, scope: !418, inlinedAt: !1031)
!1045 = !DILocation(line: 34, column: 12, scope: !418, inlinedAt: !1031)
!1046 = !DILocation(line: 31, column: 15, scope: !419, inlinedAt: !1038)
!1047 = !DILocation(line: 72, column: 23, scope: !458, inlinedAt: !1004)
!1048 = !DILocation(line: 29, column: 45, scope: !407, inlinedAt: !1038)
!1049 = !DILocation(line: 34, column: 18, scope: !418, inlinedAt: !1038)
!1050 = !DILocation(line: 34, column: 29, scope: !418, inlinedAt: !1038)
!1051 = !DILocation(line: 34, column: 41, scope: !418, inlinedAt: !1038)
!1052 = !DILocation(line: 34, column: 13, scope: !418, inlinedAt: !1038)
!1053 = !DILocation(line: 34, column: 12, scope: !418, inlinedAt: !1038)
!1054 = !DILocation(line: 36, column: 2, scope: !418, inlinedAt: !1038)
!1055 = !DILocation(line: 37, column: 1, scope: !407, inlinedAt: !1038)
!1056 = !DILocation(line: 73, column: 2, scope: !448, inlinedAt: !1004)
!1057 = !DILocation(line: 74, column: 1, scope: !449, inlinedAt: !1004)
!1058 = !DILocation(line: 121, column: 14, scope: !998, inlinedAt: !925)
!1059 = !DILocation(line: 121, column: 25, scope: !998, inlinedAt: !925)
!1060 = !{!1002, !391, i64 8}
!1061 = !DILocation(line: 45, column: 25, scope: !518, inlinedAt: !1062)
!1062 = distinct !DILocation(line: 121, column: 3, scope: !998, inlinedAt: !925)
!1063 = !DILocation(line: 45, column: 39, scope: !518, inlinedAt: !1062)
!1064 = !DILocation(line: 29, column: 45, scope: !407, inlinedAt: !1065)
!1065 = distinct !DILocation(line: 47, column: 2, scope: !518, inlinedAt: !1062)
!1066 = !DILocation(line: 29, column: 62, scope: !407, inlinedAt: !1065)
!1067 = !DILocation(line: 31, column: 15, scope: !419, inlinedAt: !1065)
!1068 = !DILocation(line: 31, column: 6, scope: !407, inlinedAt: !1065)
!1069 = !DILocation(line: 29, column: 35, scope: !407, inlinedAt: !1065)
!1070 = !DILocation(line: 34, column: 18, scope: !418, inlinedAt: !1065)
!1071 = !DILocation(line: 34, column: 29, scope: !418, inlinedAt: !1065)
!1072 = !DILocation(line: 34, column: 41, scope: !418, inlinedAt: !1065)
!1073 = !DILocation(line: 34, column: 13, scope: !418, inlinedAt: !1065)
!1074 = !DILocation(line: 34, column: 12, scope: !418, inlinedAt: !1065)
!1075 = !DILocation(line: 122, column: 14, scope: !998, inlinedAt: !925)
!1076 = !DILocation(line: 36, column: 2, scope: !418, inlinedAt: !1065)
!1077 = !DILocation(line: 31, column: 9, scope: !419, inlinedAt: !1078)
!1078 = distinct !DILocation(line: 47, column: 2, scope: !518, inlinedAt: !1079)
!1079 = distinct !DILocation(line: 122, column: 3, scope: !998, inlinedAt: !925)
!1080 = !DILocation(line: 37, column: 1, scope: !407, inlinedAt: !1065)
!1081 = !DILocation(line: 48, column: 1, scope: !518, inlinedAt: !1062)
!1082 = !DILocation(line: 122, column: 25, scope: !998, inlinedAt: !925)
!1083 = !{!1002, !391, i64 12}
!1084 = !DILocation(line: 45, column: 25, scope: !518, inlinedAt: !1079)
!1085 = !DILocation(line: 45, column: 39, scope: !518, inlinedAt: !1079)
!1086 = !DILocation(line: 29, column: 45, scope: !407, inlinedAt: !1078)
!1087 = !DILocation(line: 29, column: 62, scope: !407, inlinedAt: !1078)
!1088 = !DILocation(line: 31, column: 15, scope: !419, inlinedAt: !1078)
!1089 = !DILocation(line: 31, column: 6, scope: !407, inlinedAt: !1078)
!1090 = !DILocation(line: 29, column: 35, scope: !407, inlinedAt: !1078)
!1091 = !DILocation(line: 34, column: 18, scope: !418, inlinedAt: !1078)
!1092 = !DILocation(line: 34, column: 29, scope: !418, inlinedAt: !1078)
!1093 = !DILocation(line: 34, column: 41, scope: !418, inlinedAt: !1078)
!1094 = !DILocation(line: 34, column: 13, scope: !418, inlinedAt: !1078)
!1095 = !DILocation(line: 34, column: 12, scope: !418, inlinedAt: !1078)
!1096 = !DILocation(line: 36, column: 2, scope: !418, inlinedAt: !1078)
!1097 = !DILocation(line: 37, column: 1, scope: !407, inlinedAt: !1078)
!1098 = !DILocation(line: 48, column: 1, scope: !518, inlinedAt: !1079)
!1099 = !DILocation(line: 118, column: 18, scope: !994, inlinedAt: !925)
!1100 = distinct !{!1100, !1101, !1102}
!1101 = !DILocation(line: 118, column: 2, scope: !995)
!1102 = !DILocation(line: 123, column: 2, scope: !995)
!1103 = !DILocation(line: 124, column: 9, scope: !919, inlinedAt: !925)
!1104 = !DILocation(line: 124, column: 5, scope: !919, inlinedAt: !925)
!1105 = !DILocation(line: 124, column: 25, scope: !919, inlinedAt: !925)
!1106 = !{!442, !391, i64 72}
!1107 = !DILocation(line: 45, column: 25, scope: !518, inlinedAt: !1108)
!1108 = distinct !DILocation(line: 125, column: 2, scope: !919, inlinedAt: !925)
!1109 = !DILocation(line: 45, column: 39, scope: !518, inlinedAt: !1108)
!1110 = !DILocation(line: 29, column: 45, scope: !407, inlinedAt: !1111)
!1111 = distinct !DILocation(line: 47, column: 2, scope: !518, inlinedAt: !1108)
!1112 = !DILocation(line: 29, column: 62, scope: !407, inlinedAt: !1111)
!1113 = !DILocation(line: 31, column: 15, scope: !419, inlinedAt: !1111)
!1114 = !DILocation(line: 31, column: 6, scope: !407, inlinedAt: !1111)
!1115 = !DILocation(line: 29, column: 35, scope: !407, inlinedAt: !1111)
!1116 = !DILocation(line: 34, column: 18, scope: !418, inlinedAt: !1111)
!1117 = !DILocation(line: 34, column: 29, scope: !418, inlinedAt: !1111)
!1118 = !DILocation(line: 34, column: 41, scope: !418, inlinedAt: !1111)
!1119 = !DILocation(line: 34, column: 13, scope: !418, inlinedAt: !1111)
!1120 = !DILocation(line: 34, column: 12, scope: !418, inlinedAt: !1111)
!1121 = !DILocation(line: 36, column: 2, scope: !418, inlinedAt: !1111)
!1122 = !DILocation(line: 37, column: 1, scope: !407, inlinedAt: !1111)
!1123 = !DILocation(line: 48, column: 1, scope: !518, inlinedAt: !1108)
!1124 = !DILocation(line: 126, column: 13, scope: !1125, inlinedAt: !925)
!1125 = distinct !DILexicalBlock(scope: !1126, file: !1, line: 126, column: 2)
!1126 = distinct !DILexicalBlock(scope: !919, file: !1, line: 126, column: 2)
!1127 = !DILocation(line: 126, column: 2, scope: !1126, inlinedAt: !925)
!1128 = !DILocation(line: 126, column: 36, scope: !1125, inlinedAt: !925)
!1129 = !{!442, !388, i64 56}
!1130 = !DILocation(line: 126, column: 33, scope: !1125, inlinedAt: !925)
!1131 = !DILocation(line: 61, column: 39, scope: !449, inlinedAt: !1132)
!1132 = distinct !DILocation(line: 126, column: 22, scope: !1125, inlinedAt: !925)
!1133 = !DILocation(line: 61, column: 53, scope: !449, inlinedAt: !1132)
!1134 = !DILocation(line: 63, column: 7, scope: !448, inlinedAt: !1132)
!1135 = !DILocation(line: 63, column: 14, scope: !448, inlinedAt: !1132)
!1136 = !DILocation(line: 65, column: 3, scope: !456, inlinedAt: !1132)
!1137 = !DILocation(line: 65, column: 10, scope: !456, inlinedAt: !1132)
!1138 = !DILocation(line: 29, column: 35, scope: !407, inlinedAt: !1139)
!1139 = distinct !DILocation(line: 66, column: 3, scope: !456, inlinedAt: !1132)
!1140 = !DILocation(line: 29, column: 45, scope: !407, inlinedAt: !1139)
!1141 = !DILocation(line: 29, column: 62, scope: !407, inlinedAt: !1139)
!1142 = !DILocation(line: 31, column: 15, scope: !419, inlinedAt: !1139)
!1143 = !DILocation(line: 31, column: 6, scope: !407, inlinedAt: !1139)
!1144 = !DILocation(line: 34, column: 18, scope: !418, inlinedAt: !1139)
!1145 = !DILocation(line: 34, column: 29, scope: !418, inlinedAt: !1139)
!1146 = !DILocation(line: 34, column: 41, scope: !418, inlinedAt: !1139)
!1147 = !DILocation(line: 34, column: 13, scope: !418, inlinedAt: !1139)
!1148 = !DILocation(line: 34, column: 12, scope: !418, inlinedAt: !1139)
!1149 = !DILocation(line: 36, column: 2, scope: !418, inlinedAt: !1139)
!1150 = !DILocation(line: 37, column: 1, scope: !407, inlinedAt: !1139)
!1151 = !DILocation(line: 67, column: 2, scope: !448, inlinedAt: !1132)
!1152 = !DILocation(line: 67, column: 2, scope: !456, inlinedAt: !1132)
!1153 = !DILocation(line: 63, column: 17, scope: !448, inlinedAt: !1132)
!1154 = !DILocation(line: 70, column: 3, scope: !458, inlinedAt: !1132)
!1155 = !DILocation(line: 70, column: 22, scope: !458, inlinedAt: !1132)
!1156 = !DILocation(line: 70, column: 25, scope: !458, inlinedAt: !1132)
!1157 = !DILocation(line: 70, column: 10, scope: !458, inlinedAt: !1132)
!1158 = !DILocation(line: 29, column: 35, scope: !407, inlinedAt: !1159)
!1159 = distinct !DILocation(line: 71, column: 3, scope: !458, inlinedAt: !1132)
!1160 = !DILocation(line: 29, column: 45, scope: !407, inlinedAt: !1159)
!1161 = !DILocation(line: 29, column: 62, scope: !407, inlinedAt: !1159)
!1162 = !DILocation(line: 31, column: 15, scope: !419, inlinedAt: !1159)
!1163 = !DILocation(line: 31, column: 6, scope: !407, inlinedAt: !1159)
!1164 = !DILocation(line: 37, column: 1, scope: !407, inlinedAt: !1159)
!1165 = !DILocation(line: 29, column: 35, scope: !407, inlinedAt: !1166)
!1166 = distinct !DILocation(line: 72, column: 3, scope: !458, inlinedAt: !1132)
!1167 = !DILocation(line: 29, column: 62, scope: !407, inlinedAt: !1166)
!1168 = !DILocation(line: 31, column: 6, scope: !407, inlinedAt: !1166)
!1169 = !DILocation(line: 34, column: 18, scope: !418, inlinedAt: !1159)
!1170 = !DILocation(line: 34, column: 29, scope: !418, inlinedAt: !1159)
!1171 = !DILocation(line: 34, column: 41, scope: !418, inlinedAt: !1159)
!1172 = !DILocation(line: 34, column: 13, scope: !418, inlinedAt: !1159)
!1173 = !DILocation(line: 34, column: 12, scope: !418, inlinedAt: !1159)
!1174 = !DILocation(line: 31, column: 15, scope: !419, inlinedAt: !1166)
!1175 = !DILocation(line: 72, column: 23, scope: !458, inlinedAt: !1132)
!1176 = !DILocation(line: 29, column: 45, scope: !407, inlinedAt: !1166)
!1177 = !DILocation(line: 34, column: 18, scope: !418, inlinedAt: !1166)
!1178 = !DILocation(line: 34, column: 29, scope: !418, inlinedAt: !1166)
!1179 = !DILocation(line: 34, column: 41, scope: !418, inlinedAt: !1166)
!1180 = !DILocation(line: 34, column: 13, scope: !418, inlinedAt: !1166)
!1181 = !DILocation(line: 34, column: 12, scope: !418, inlinedAt: !1166)
!1182 = !DILocation(line: 36, column: 2, scope: !418, inlinedAt: !1166)
!1183 = !DILocation(line: 37, column: 1, scope: !407, inlinedAt: !1166)
!1184 = !DILocation(line: 73, column: 2, scope: !448, inlinedAt: !1132)
!1185 = !DILocation(line: 74, column: 1, scope: !449, inlinedAt: !1132)
!1186 = !DILocation(line: 126, column: 18, scope: !1125, inlinedAt: !925)
!1187 = distinct !{!1187, !1188, !1189}
!1188 = !DILocation(line: 126, column: 2, scope: !1126)
!1189 = !DILocation(line: 126, column: 49, scope: !1126)
!1190 = !DILocation(line: 127, column: 1, scope: !919, inlinedAt: !925)
!1191 = !DILocation(line: 141, column: 1, scope: !428)
