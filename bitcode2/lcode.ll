; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lcode.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lcode.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.FuncState = type { %struct.Proto*, %struct.Table*, %struct.FuncState*, %struct.LexState*, %struct.lua_State*, %struct.BlockCnt*, i32, i32, i32, i32, i32, i32, i16, i8, [60 x %struct.upvaldesc], [200 x i16] }
%struct.Proto = type { %union.GCObject*, i8, i8, %struct.lua_TValue*, i32*, %struct.Proto**, i32*, %struct.LocVar*, %union.TString**, %union.TString*, i32, i32, i32, i32, i32, i32, i32, i32, %union.GCObject*, i8, i8, i8, i8 }
%struct.lua_TValue = type { %union.Value, i32 }
%union.Value = type { %union.GCObject* }
%struct.LocVar = type { %union.TString*, i32, i32 }
%union.TString = type { %struct.anon }
%struct.anon = type { %union.GCObject*, i8, i8, i8, i32, i64 }
%union.GCObject = type { %struct.lua_State }
%struct.lua_State = type { %union.GCObject*, i8, i8, i8, %struct.lua_TValue*, %struct.lua_TValue*, %struct.global_State*, %struct.CallInfo*, i32*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.CallInfo*, %struct.CallInfo*, i32, i32, i16, i16, i8, i8, i32, i32, void (%struct.lua_State*, %struct.lua_Debug*)*, %struct.lua_TValue, %struct.lua_TValue, %union.GCObject*, %union.GCObject*, %struct.lua_longjmp*, i64 }
%struct.global_State = type { %struct.stringtable, i8* (i8*, i8*, i64, i64)*, i8*, i8, i8, i32, %union.GCObject*, %union.GCObject**, %union.GCObject*, %union.GCObject*, %union.GCObject*, %union.GCObject*, %struct.Mbuffer, i64, i64, i64, i64, i32, i32, i32 (%struct.lua_State*)*, %struct.lua_TValue, %struct.lua_State*, %struct.UpVal, [9 x %struct.Table*], [17 x %union.TString*] }
%struct.stringtable = type { %union.GCObject**, i32, i32 }
%struct.Mbuffer = type { i8*, i64, i64 }
%struct.UpVal = type { %union.GCObject*, i8, i8, %struct.lua_TValue*, %union.anon }
%union.anon = type { %struct.lua_TValue }
%struct.CallInfo = type { %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*, i32*, i32, i32 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, [60 x i8], i32 }
%struct.lua_longjmp = type opaque
%struct.Table = type { %union.GCObject*, i8, i8, i8, i8, %struct.Table*, %struct.lua_TValue*, %struct.Node*, %struct.Node*, %union.GCObject*, i32 }
%struct.Node = type { %struct.lua_TValue, %union.TKey }
%union.TKey = type { %struct.anon.0 }
%struct.anon.0 = type { %union.Value, i32, %struct.Node* }
%struct.LexState = type { i32, i32, i32, %struct.Token, %struct.Token, %struct.FuncState*, %struct.lua_State*, %struct.Zio*, %struct.Mbuffer*, %union.TString*, i8 }
%struct.Token = type { i32, %union.SemInfo }
%union.SemInfo = type { double }
%struct.Zio = type { i64, i8*, i8* (%struct.lua_State*, i8*, i64*)*, i8*, %struct.lua_State* }
%struct.BlockCnt = type opaque
%struct.upvaldesc = type { i8, i8 }
%struct.expdesc = type { i32, %union.anon.3, i32, i32 }
%union.anon.3 = type { double }
%struct.anon.4 = type { i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"function or expression too complex\00", align 1
@luaP_opmodes = external hidden local_unnamed_addr constant [38 x i8], align 16
@.str.1 = private unnamed_addr constant [27 x i8] c"control structure too long\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"constant table overflow\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"code size overflow\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define hidden void @luaK_nil(%struct.FuncState* nocapture, i32, i32) local_unnamed_addr #0 !dbg !424 {
  %4 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 6, !dbg !520
  %5 = load i32, i32* %4, align 8, !dbg !520, !tbaa !521
  %6 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 7, !dbg !528
  %7 = load i32, i32* %6, align 4, !dbg !528, !tbaa !529
  %8 = icmp sgt i32 %5, %7, !dbg !530
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !531
  br i1 %8, label %9, label %44, !dbg !531

; <label>:9:                                      ; preds = %3
  %10 = icmp eq i32 %5, 0, !dbg !532
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !533
  br i1 %10, label %11, label %16, !dbg !533

; <label>:11:                                     ; preds = %9
  %12 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !534
  %13 = load i8, i8* %12, align 2, !dbg !534, !tbaa !537
  %14 = zext i8 %13 to i32, !dbg !538
  %15 = icmp sgt i32 %14, %1, !dbg !539
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !540
  br i1 %15, label %44, label %57, !dbg !540

; <label>:16:                                     ; preds = %9
  %17 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0, !dbg !541
  %18 = load %struct.Proto*, %struct.Proto** %17, align 8, !dbg !541, !tbaa !542
  %19 = getelementptr inbounds %struct.Proto, %struct.Proto* %18, i64 0, i32 4, !dbg !543
  %20 = load i32*, i32** %19, align 8, !dbg !543, !tbaa !544
  %21 = add nsw i32 %5, -1, !dbg !546
  %22 = sext i32 %21 to i64, !dbg !547
  %23 = getelementptr inbounds i32, i32* %20, i64 %22, !dbg !547
  %24 = load i32, i32* %23, align 4, !dbg !549, !tbaa !550
  %25 = and i32 %24, 63, !dbg !549
  %26 = icmp eq i32 %25, 3, !dbg !551
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !552
  br i1 %26, label %27, label %44, !dbg !552

; <label>:27:                                     ; preds = %16
  %28 = lshr i32 %24, 6, !dbg !553
  %29 = and i32 %28, 255, !dbg !553
  %30 = lshr i32 %24, 23, !dbg !555
  %31 = icmp sgt i32 %29, %1, !dbg !557
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !559
  br i1 %31, label %43, label %32, !dbg !559

; <label>:32:                                     ; preds = %27
  %33 = add nuw nsw i32 %30, 1, !dbg !560
  %34 = icmp slt i32 %33, %1, !dbg !561
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !562
  br i1 %34, label %43, label %35, !dbg !562

; <label>:35:                                     ; preds = %32
  %36 = add nsw i32 %2, %1, !dbg !563
  %37 = add nsw i32 %36, -1, !dbg !566
  %38 = icmp sgt i32 %37, %30, !dbg !567
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !568
  br i1 %38, label %39, label %56, !dbg !568

; <label>:39:                                     ; preds = %35
  %40 = and i32 %24, 8388607, !dbg !569
  %41 = shl i32 %37, 23, !dbg !569
  %42 = or i32 %40, %41, !dbg !569
  store i32 %42, i32* %23, align 4, !dbg !569, !tbaa !550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !569
  br label %56, !dbg !569

; <label>:43:                                     ; preds = %32, %27
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !570
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %44

; <label>:44:                                     ; preds = %43, %11, %16, %3
  %45 = add nsw i32 %2, %1, !dbg !571
  %46 = shl i32 %1, 6, !dbg !587
  %47 = shl i32 %45, 23, !dbg !587
  %48 = add i32 %47, -8388608, !dbg !587
  %49 = or i32 %46, %48, !dbg !587
  %50 = or i32 %49, 3, !dbg !587
  %51 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !588
  %52 = load %struct.LexState*, %struct.LexState** %51, align 8, !dbg !588, !tbaa !589
  %53 = getelementptr inbounds %struct.LexState, %struct.LexState* %52, i64 0, i32 2, !dbg !590
  %54 = load i32, i32* %53, align 8, !dbg !590, !tbaa !591
  %55 = tail call fastcc i32 @luaK_code(%struct.FuncState* nonnull %0, i32 %50, i32 %54) #5, !dbg !594
  br label %56, !dbg !595

; <label>:56:                                     ; preds = %35, %39, %44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !596
  br label %57

; <label>:57:                                     ; preds = %56, %11
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !595
  ret void, !dbg !595
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone nounwind
define hidden i32 @luaK_codeABC(%struct.FuncState* nocapture, i32, i32, i32, i32) local_unnamed_addr #0 !dbg !573 {
  %6 = shl i32 %2, 6, !dbg !602
  %7 = or i32 %6, %1, !dbg !602
  %8 = shl i32 %3, 23, !dbg !602
  %9 = or i32 %7, %8, !dbg !602
  %10 = shl i32 %4, 14, !dbg !602
  %11 = or i32 %9, %10, !dbg !602
  %12 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !603
  %13 = load %struct.LexState*, %struct.LexState** %12, align 8, !dbg !603, !tbaa !589
  %14 = getelementptr inbounds %struct.LexState, %struct.LexState* %13, i64 0, i32 2, !dbg !604
  %15 = load i32, i32* %14, align 8, !dbg !604, !tbaa !591
  %16 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %11, i32 %15) #6, !dbg !605
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !606
  ret i32 %16, !dbg !606
}

; Function Attrs: noredzone nounwind
define hidden i32 @luaK_jump(%struct.FuncState* nocapture) local_unnamed_addr #0 !dbg !607 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 8, !dbg !615
  %4 = load i32, i32* %3, align 8, !dbg !615, !tbaa !616
  %5 = bitcast i32* %2 to i8*, !dbg !618
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #4, !dbg !618
  store i32 -1, i32* %3, align 8, !dbg !619, !tbaa !616
  %6 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !633
  %7 = load %struct.LexState*, %struct.LexState** %6, align 8, !dbg !633, !tbaa !589
  %8 = getelementptr inbounds %struct.LexState, %struct.LexState* %7, i64 0, i32 2, !dbg !634
  %9 = load i32, i32* %8, align 8, !dbg !634, !tbaa !591
  %10 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 2147450902, i32 %9) #5, !dbg !635
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !636
  store i32 %10, i32* %2, align 4, !dbg !638, !tbaa !550
  call void @luaK_concat(%struct.FuncState* %0, i32* nonnull %2, i32 %4) #6, !dbg !639
  %11 = load i32, i32* %2, align 4, !dbg !640, !tbaa !550
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #4, !dbg !641
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !642
  ret i32 %11, !dbg !642
}

; Function Attrs: noredzone nounwind
define hidden i32 @luaK_codeABx(%struct.FuncState* nocapture, i32, i32, i32) local_unnamed_addr #0 !dbg !621 {
  %5 = shl i32 %2, 6, !dbg !647
  %6 = or i32 %5, %1, !dbg !647
  %7 = shl i32 %3, 14, !dbg !647
  %8 = or i32 %6, %7, !dbg !647
  %9 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !648
  %10 = load %struct.LexState*, %struct.LexState** %9, align 8, !dbg !648, !tbaa !589
  %11 = getelementptr inbounds %struct.LexState, %struct.LexState* %10, i64 0, i32 2, !dbg !649
  %12 = load i32, i32* %11, align 8, !dbg !649, !tbaa !591
  %13 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %8, i32 %12) #6, !dbg !650
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !651
  ret i32 %13, !dbg !651
}

; Function Attrs: noredzone nounwind
define hidden void @luaK_concat(%struct.FuncState* nocapture readonly, i32* nocapture, i32) local_unnamed_addr #0 !dbg !652 {
  %4 = icmp eq i32 %2, -1, !dbg !667
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !668
  br i1 %4, label %60, label %5, !dbg !668

; <label>:5:                                      ; preds = %3
  %6 = load i32, i32* %1, align 4, !dbg !669, !tbaa !550
  %7 = icmp eq i32 %6, -1, !dbg !670
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !671
  br i1 %7, label %8, label %9, !dbg !671

; <label>:8:                                      ; preds = %5
  store i32 %2, i32* %1, align 4, !dbg !672, !tbaa !550
  br label %59, !dbg !673

; <label>:9:                                      ; preds = %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !675
  %10 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0, !dbg !686
  %11 = load %struct.Proto*, %struct.Proto** %10, align 8, !dbg !686, !tbaa !542
  %12 = getelementptr inbounds %struct.Proto, %struct.Proto* %11, i64 0, i32 4, !dbg !686
  %13 = load i32*, i32** %12, align 8, !dbg !686, !tbaa !544
  %14 = sext i32 %6 to i64, !dbg !686
  %15 = getelementptr inbounds i32, i32* %13, i64 %14, !dbg !686
  %16 = load i32, i32* %15, align 4, !dbg !686, !tbaa !550
  %17 = lshr i32 %16, 14, !dbg !686
  %18 = add nsw i32 %17, -131071, !dbg !686
  %19 = icmp eq i32 %18, -1, !dbg !688
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !690
  br i1 %19, label %26, label %20, !dbg !690

; <label>:20:                                     ; preds = %9
  %21 = add nsw i32 %6, 1, !dbg !691
  %22 = add nsw i32 %21, %18, !dbg !692
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !693
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !694
  %23 = icmp eq i32 %22, -1, !dbg !695
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !675
  br i1 %23, label %43, label %33, !dbg !675

; <label>:24:                                     ; preds = %33
  %25 = getelementptr inbounds i32, i32* %13, i64 %35, !dbg !686
  br label %26, !dbg !696

; <label>:26:                                     ; preds = %24, %9
  %27 = phi i32 [ %6, %9 ], [ %34, %24 ], !dbg !697
  %28 = phi i32* [ %15, %9 ], [ %25, %24 ], !dbg !686
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !696
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !694
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !675
  br label %43, !dbg !675

; <label>:29:                                     ; preds = %33
  %30 = add nsw i32 %34, 1, !dbg !691
  %31 = add nsw i32 %30, %39, !dbg !692
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !693
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !694
  %32 = icmp eq i32 %31, -1, !dbg !695
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !675
  br i1 %32, label %41, label %33, !dbg !675, !llvm.loop !699

; <label>:33:                                     ; preds = %20, %29
  %34 = phi i32 [ %31, %29 ], [ %22, %20 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !675
  %35 = sext i32 %34 to i64, !dbg !686
  %36 = getelementptr inbounds i32, i32* %13, i64 %35, !dbg !686
  %37 = load i32, i32* %36, align 4, !dbg !686, !tbaa !550
  %38 = lshr i32 %37, 14, !dbg !686
  %39 = add nsw i32 %38, -131071, !dbg !686
  %40 = icmp eq i32 %39, -1, !dbg !688
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !690
  br i1 %40, label %24, label %29, !dbg !690, !llvm.loop !699

; <label>:41:                                     ; preds = %29
  %42 = getelementptr inbounds i32, i32* %13, i64 %35, !dbg !686
  br label %43, !dbg !701

; <label>:43:                                     ; preds = %41, %20, %26
  %44 = phi i32 [ %27, %26 ], [ %6, %20 ], [ %34, %41 ]
  %45 = phi i32* [ %28, %26 ], [ %15, %20 ], [ %42, %41 ]
  %46 = xor i32 %44, -1, !dbg !701
  %47 = add i32 %46, %2, !dbg !701
  %48 = tail call i32 @abs(i32 %47) #5, !dbg !715
  %49 = icmp sgt i32 %48, 131071, !dbg !717
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !718
  br i1 %49, label %50, label %53, !dbg !718

; <label>:50:                                     ; preds = %43
  %51 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !719
  %52 = load %struct.LexState*, %struct.LexState** %51, align 8, !dbg !719, !tbaa !589
  tail call void @luaX_syntaxerror(%struct.LexState* %52, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !720
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !720
  br label %53, !dbg !720

; <label>:53:                                     ; preds = %43, %50
  %54 = load i32, i32* %45, align 4, !dbg !721, !tbaa !550
  %55 = and i32 %54, 16383, !dbg !721
  %56 = shl i32 %47, 14, !dbg !721
  %57 = add i32 %56, 2147467264, !dbg !721
  %58 = or i32 %55, %57, !dbg !721
  store i32 %58, i32* %45, align 4, !dbg !721, !tbaa !550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !722
  br label %59

; <label>:59:                                     ; preds = %53, %8
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %60, !dbg !723

; <label>:60:                                     ; preds = %59, %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !723
  ret void, !dbg !723
}

; Function Attrs: noredzone nounwind
define hidden void @luaK_ret(%struct.FuncState* nocapture, i32, i32) local_unnamed_addr #0 !dbg !724 {
  %4 = shl i32 %1, 6, !dbg !738
  %5 = shl i32 %2, 23, !dbg !738
  %6 = add i32 %5, 8388608, !dbg !738
  %7 = or i32 %4, %6, !dbg !738
  %8 = or i32 %7, 30, !dbg !738
  %9 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !739
  %10 = load %struct.LexState*, %struct.LexState** %9, align 8, !dbg !739, !tbaa !589
  %11 = getelementptr inbounds %struct.LexState, %struct.LexState* %10, i64 0, i32 2, !dbg !740
  %12 = load i32, i32* %11, align 8, !dbg !740, !tbaa !591
  %13 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %8, i32 %12) #5, !dbg !741
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !742
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !743
  ret void, !dbg !743
}

; Function Attrs: noredzone nounwind
define hidden i32 @luaK_getlabel(%struct.FuncState* nocapture) local_unnamed_addr #0 !dbg !744 {
  %2 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 6, !dbg !748
  %3 = load i32, i32* %2, align 8, !dbg !748, !tbaa !521
  %4 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 7, !dbg !749
  store i32 %3, i32* %4, align 4, !dbg !750, !tbaa !529
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !751
  ret i32 %3, !dbg !751
}

; Function Attrs: noredzone nounwind
define hidden void @luaK_patchlist(%struct.FuncState* nocapture, i32, i32) local_unnamed_addr #0 !dbg !752 {
  %4 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 6, !dbg !760
  %5 = load i32, i32* %4, align 8, !dbg !760, !tbaa !521
  %6 = icmp eq i32 %5, %2, !dbg !762
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !763
  br i1 %6, label %7, label %10, !dbg !763

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 7, !dbg !775
  store i32 %2, i32* %8, align 4, !dbg !776, !tbaa !529
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !777
  %9 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 8, !dbg !778
  tail call void @luaK_concat(%struct.FuncState* nonnull %0, i32* nonnull %9, i32 %1) #5, !dbg !779
  br label %71, !dbg !780

; <label>:10:                                     ; preds = %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !799
  %11 = icmp eq i32 %1, -1, !dbg !800
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !799
  br i1 %11, label %71, label %12, !dbg !799

; <label>:12:                                     ; preds = %10
  %13 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %14 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3
  br label %15, !dbg !799

; <label>:15:                                     ; preds = %63, %12
  %16 = phi i32 [ %1, %12 ], [ %28, %63 ]
  %17 = load %struct.Proto*, %struct.Proto** %13, align 8, !dbg !804, !tbaa !542
  %18 = getelementptr inbounds %struct.Proto, %struct.Proto* %17, i64 0, i32 4, !dbg !804
  %19 = load i32*, i32** %18, align 8, !dbg !804, !tbaa !544
  %20 = sext i32 %16 to i64, !dbg !804
  %21 = getelementptr inbounds i32, i32* %19, i64 %20, !dbg !804
  %22 = load i32, i32* %21, align 4, !dbg !804, !tbaa !550
  %23 = lshr i32 %22, 14, !dbg !804
  %24 = add nsw i32 %23, -131071, !dbg !804
  %25 = icmp eq i32 %24, -1, !dbg !806
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !807
  %26 = add nsw i32 %16, 1, !dbg !808
  %27 = add nsw i32 %26, %24, !dbg !809
  %28 = select i1 %25, i32 -1, i32 %27, !dbg !807
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !810
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !811
  %29 = icmp sgt i32 %16, 0, !dbg !837
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !839
  br i1 %29, label %30, label %38, !dbg !839

; <label>:30:                                     ; preds = %15
  %31 = getelementptr inbounds i32, i32* %21, i64 -1, !dbg !840
  %32 = load i32, i32* %31, align 4, !dbg !840, !tbaa !550
  %33 = and i32 %32, 63, !dbg !840
  %34 = zext i32 %33 to i64, !dbg !840
  %35 = getelementptr inbounds [38 x i8], [38 x i8]* @luaP_opmodes, i64 0, i64 %34, !dbg !840
  %36 = load i8, i8* %35, align 1, !dbg !840, !tbaa !841
  %37 = icmp slt i8 %36, 0, !dbg !840
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !842
  br i1 %37, label %39, label %38, !dbg !842

; <label>:38:                                     ; preds = %30, %15
  br label %39, !dbg !843

; <label>:39:                                     ; preds = %30, %38
  %40 = phi i32 [ %22, %38 ], [ %32, %30 ], !dbg !844
  %41 = phi i32* [ %21, %38 ], [ %31, %30 ], !dbg !846
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !847
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !848
  %42 = and i32 %40, 63, !dbg !844
  %43 = icmp eq i32 %42, 27, !dbg !850
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !851
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !852
  br i1 %43, label %44, label %56, !dbg !851

; <label>:44:                                     ; preds = %39
  %45 = lshr i32 %40, 23, !dbg !853
  %46 = shl nuw nsw i32 %45, 6, !dbg !855
  %47 = and i32 %40, 8372224, !dbg !855
  %48 = or i32 %47, %46, !dbg !855
  %49 = or i32 %48, 26, !dbg !855
  store i32 %49, i32* %41, align 4, !dbg !856, !tbaa !550
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !857
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !858
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !859
  %50 = xor i32 %16, -1, !dbg !865
  %51 = add i32 %50, %2, !dbg !865
  %52 = tail call i32 @abs(i32 %51) #5, !dbg !867
  %53 = icmp sgt i32 %52, 131071, !dbg !868
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !869
  br i1 %53, label %54, label %63, !dbg !869

; <label>:54:                                     ; preds = %44
  %55 = load %struct.LexState*, %struct.LexState** %14, align 8, !dbg !870, !tbaa !589
  tail call void @luaX_syntaxerror(%struct.LexState* %55, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !871
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !871
  br label %63, !dbg !871

; <label>:56:                                     ; preds = %39
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !858
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !859
  %57 = xor i32 %16, -1, !dbg !877
  %58 = add i32 %57, %2, !dbg !877
  %59 = tail call i32 @abs(i32 %58) #5, !dbg !879
  %60 = icmp sgt i32 %59, 131071, !dbg !880
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !881
  br i1 %60, label %61, label %63, !dbg !881

; <label>:61:                                     ; preds = %56
  %62 = load %struct.LexState*, %struct.LexState** %14, align 8, !dbg !882, !tbaa !589
  tail call void @luaX_syntaxerror(%struct.LexState* %62, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !883
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !883
  br label %63, !dbg !883

; <label>:63:                                     ; preds = %61, %56, %54, %44
  %64 = phi i32 [ %51, %44 ], [ %51, %54 ], [ %58, %56 ], [ %58, %61 ]
  %65 = load i32, i32* %21, align 4, !dbg !884, !tbaa !550
  %66 = and i32 %65, 16383, !dbg !884
  %67 = shl i32 %64, 14, !dbg !884
  %68 = add i32 %67, 2147467264, !dbg !884
  %69 = or i32 %66, %68, !dbg !884
  store i32 %69, i32* %21, align 4, !dbg !884, !tbaa !550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !885
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !799
  %70 = icmp eq i32 %28, -1, !dbg !800
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !799
  br i1 %70, label %71, label %15, !dbg !799, !llvm.loop !886

; <label>:71:                                     ; preds = %63, %10, %7
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !889
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !890
  ret void, !dbg !890
}

; Function Attrs: noredzone nounwind
define hidden void @luaK_patchtohere(%struct.FuncState* nocapture, i32) local_unnamed_addr #0 !dbg !765 {
  %3 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 6, !dbg !895
  %4 = load i32, i32* %3, align 8, !dbg !895, !tbaa !521
  %5 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 7, !dbg !896
  store i32 %4, i32* %5, align 4, !dbg !897, !tbaa !529
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !898
  %6 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 8, !dbg !899
  tail call void @luaK_concat(%struct.FuncState* %0, i32* nonnull %6, i32 %1) #6, !dbg !900
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !901
  ret void, !dbg !901
}

; Function Attrs: noredzone nounwind
define hidden void @luaK_checkstack(%struct.FuncState* nocapture readonly, i32) local_unnamed_addr #0 !dbg !902 {
  %3 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !909
  %4 = load i32, i32* %3, align 4, !dbg !909, !tbaa !910
  %5 = add nsw i32 %4, %1, !dbg !911
  %6 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0, !dbg !913
  %7 = load %struct.Proto*, %struct.Proto** %6, align 8, !dbg !913, !tbaa !542
  %8 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 22, !dbg !915
  %9 = load i8, i8* %8, align 1, !dbg !915, !tbaa !916
  %10 = zext i8 %9 to i32, !dbg !917
  %11 = icmp sgt i32 %5, %10, !dbg !918
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !919
  br i1 %11, label %12, label %22, !dbg !919

; <label>:12:                                     ; preds = %2
  %13 = icmp sgt i32 %5, 249, !dbg !920
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !923
  br i1 %13, label %14, label %19, !dbg !923

; <label>:14:                                     ; preds = %12
  %15 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !924
  %16 = load %struct.LexState*, %struct.LexState** %15, align 8, !dbg !924, !tbaa !589
  tail call void @luaX_syntaxerror(%struct.LexState* %16, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0)) #5, !dbg !925
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !925
  %17 = load %struct.Proto*, %struct.Proto** %6, align 8, !dbg !926, !tbaa !542
  %18 = getelementptr inbounds %struct.Proto, %struct.Proto* %17, i64 0, i32 22, !dbg !927
  br label %19, !dbg !925

; <label>:19:                                     ; preds = %14, %12
  %20 = phi i8* [ %18, %14 ], [ %8, %12 ], !dbg !927
  %21 = trunc i32 %5 to i8, !dbg !928
  store i8 %21, i8* %20, align 1, !dbg !929, !tbaa !916
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !930
  br label %22, !dbg !930

; <label>:22:                                     ; preds = %19, %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !931
  ret void, !dbg !931
}

; Function Attrs: noredzone
declare hidden void @luaX_syntaxerror(%struct.LexState*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define hidden void @luaK_reserveregs(%struct.FuncState* nocapture, i32) local_unnamed_addr #0 !dbg !932 {
  %3 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !941
  %4 = load i32, i32* %3, align 4, !dbg !941, !tbaa !910
  %5 = add nsw i32 %4, %1, !dbg !942
  %6 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0, !dbg !944
  %7 = load %struct.Proto*, %struct.Proto** %6, align 8, !dbg !944, !tbaa !542
  %8 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 22, !dbg !945
  %9 = load i8, i8* %8, align 1, !dbg !945, !tbaa !916
  %10 = zext i8 %9 to i32, !dbg !946
  %11 = icmp sgt i32 %5, %10, !dbg !947
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !948
  br i1 %11, label %12, label %25, !dbg !948

; <label>:12:                                     ; preds = %2
  %13 = icmp sgt i32 %5, 249, !dbg !949
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !950
  br i1 %13, label %14, label %21, !dbg !950

; <label>:14:                                     ; preds = %12
  %15 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !951
  %16 = load %struct.LexState*, %struct.LexState** %15, align 8, !dbg !951, !tbaa !589
  tail call void @luaX_syntaxerror(%struct.LexState* %16, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0)) #5, !dbg !952
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !952
  %17 = load %struct.Proto*, %struct.Proto** %6, align 8, !dbg !953, !tbaa !542
  %18 = getelementptr inbounds %struct.Proto, %struct.Proto* %17, i64 0, i32 22, !dbg !954
  %19 = load i32, i32* %3, align 4, !dbg !955, !tbaa !910
  %20 = add nsw i32 %19, %1, !dbg !955
  br label %21, !dbg !952

; <label>:21:                                     ; preds = %14, %12
  %22 = phi i32 [ %20, %14 ], [ %5, %12 ], !dbg !955
  %23 = phi i8* [ %18, %14 ], [ %8, %12 ], !dbg !954
  %24 = trunc i32 %5 to i8, !dbg !956
  store i8 %24, i8* %23, align 1, !dbg !957, !tbaa !916
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !958
  br label %25, !dbg !958

; <label>:25:                                     ; preds = %2, %21
  %26 = phi i32 [ %5, %2 ], [ %22, %21 ], !dbg !955
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !959
  store i32 %26, i32* %3, align 4, !dbg !955, !tbaa !910
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !960
  ret void, !dbg !960
}

; Function Attrs: noredzone nounwind
define hidden i32 @luaK_stringK(%struct.FuncState* nocapture, %union.TString*) local_unnamed_addr #0 !dbg !961 {
  %3 = alloca %struct.lua_TValue, align 8
  %4 = bitcast %struct.lua_TValue* %3 to i8*, !dbg !972
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #4, !dbg !972
  %5 = bitcast %struct.lua_TValue* %3 to %union.TString**, !dbg !973
  store %union.TString* %1, %union.TString** %5, align 8, !dbg !973, !tbaa !841
  %6 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3, i64 0, i32 1, !dbg !973
  store i32 4, i32* %6, align 8, !dbg !973, !tbaa !974
  %7 = call fastcc i32 @addk(%struct.FuncState* %0, %struct.lua_TValue* nonnull %3, %struct.lua_TValue* nonnull %3) #6, !dbg !977
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #4, !dbg !978
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !979
  ret i32 %7, !dbg !979
}

; Function Attrs: noredzone nounwind
define internal fastcc i32 @addk(%struct.FuncState* nocapture, %struct.lua_TValue*, %struct.lua_TValue* nocapture readonly) unnamed_addr #0 !dbg !980 {
  %4 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4, !dbg !1003
  %5 = load %struct.lua_State*, %struct.lua_State** %4, align 8, !dbg !1003, !tbaa !1004
  %6 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 1, !dbg !1006
  %7 = load %struct.Table*, %struct.Table** %6, align 8, !dbg !1006, !tbaa !1007
  %8 = tail call %struct.lua_TValue* @luaH_set(%struct.lua_State* %5, %struct.Table* %7, %struct.lua_TValue* %1) #5, !dbg !1008
  %9 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0, !dbg !1010
  %10 = load %struct.Proto*, %struct.Proto** %9, align 8, !dbg !1010, !tbaa !542
  %11 = getelementptr inbounds %struct.Proto, %struct.Proto* %10, i64 0, i32 11, !dbg !1012
  %12 = load i32, i32* %11, align 4, !dbg !1012, !tbaa !1013
  %13 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %8, i64 0, i32 1, !dbg !1015
  %14 = load i32, i32* %13, align 8, !dbg !1015, !tbaa !974
  %15 = icmp eq i32 %14, 3, !dbg !1015
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1016
  br i1 %15, label %16, label %20, !dbg !1016

; <label>:16:                                     ; preds = %3
  %17 = bitcast %struct.lua_TValue* %8 to double*, !dbg !1017
  %18 = load double, double* %17, align 8, !dbg !1017, !tbaa !841
  %19 = fptosi double %18 to i32, !dbg !1017
  br label %99, !dbg !1019

; <label>:20:                                     ; preds = %3
  %21 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 10, !dbg !1020
  %22 = load i32, i32* %21, align 8, !dbg !1020, !tbaa !1021
  %23 = sitofp i32 %22 to double, !dbg !1020
  %24 = bitcast %struct.lua_TValue* %8 to double*, !dbg !1020
  store double %23, double* %24, align 8, !dbg !1020, !tbaa !841
  store i32 3, i32* %13, align 8, !dbg !1020, !tbaa !974
  %25 = load i32, i32* %21, align 8, !dbg !1022, !tbaa !1021
  %26 = load i32, i32* %11, align 4, !dbg !1022, !tbaa !1013
  %27 = icmp slt i32 %25, %26, !dbg !1022
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1024
  %28 = getelementptr inbounds %struct.Proto, %struct.Proto* %10, i64 0, i32 3
  br i1 %27, label %29, label %31, !dbg !1024

; <label>:29:                                     ; preds = %20
  %30 = load %struct.lua_TValue*, %struct.lua_TValue** %28, align 8, !dbg !1025, !tbaa !1026
  br label %37, !dbg !1024

; <label>:31:                                     ; preds = %20
  %32 = bitcast %struct.lua_TValue** %28 to i8**, !dbg !1022
  %33 = load i8*, i8** %32, align 8, !dbg !1022, !tbaa !1026
  %34 = tail call i8* @luaM_growaux_(%struct.lua_State* %5, i8* %33, i32* nonnull %11, i64 16, i32 262143, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0)) #5, !dbg !1022
  store i8* %34, i8** %32, align 8, !dbg !1022, !tbaa !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1022
  %35 = load i32, i32* %11, align 4, !dbg !1027, !tbaa !1013
  %36 = bitcast i8* %34 to %struct.lua_TValue*, !dbg !1022
  br label %37, !dbg !1022

; <label>:37:                                     ; preds = %29, %31
  %38 = phi %struct.lua_TValue* [ %30, %29 ], [ %36, %31 ]
  %39 = phi i32 [ %26, %29 ], [ %35, %31 ], !dbg !1027
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1028
  %40 = icmp slt i32 %12, %39, !dbg !1029
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1028
  br i1 %40, label %41, label %70, !dbg !1028

; <label>:41:                                     ; preds = %37
  %42 = sext i32 %12 to i64, !dbg !1030
  %43 = sext i32 %39 to i64
  %44 = sub nsw i64 %43, %42, !dbg !1030
  %45 = xor i64 %42, -1, !dbg !1030
  %46 = add nsw i64 %45, %43, !dbg !1030
  %47 = and i64 %44, 3, !dbg !1030
  %48 = icmp eq i64 %47, 0, !dbg !1030
  br i1 %48, label %56, label %49, !dbg !1030

; <label>:49:                                     ; preds = %41, %49
  %50 = phi i64 [ %52, %49 ], [ %42, %41 ]
  %51 = phi i64 [ %54, %49 ], [ %47, %41 ]
  %52 = add nsw i64 %50, 1, !dbg !1030
  %53 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %38, i64 %50, i32 1, !dbg !1030
  store i32 0, i32* %53, align 8, !dbg !1030, !tbaa !974
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1028
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1028
  %54 = add i64 %51, -1, !dbg !1028
  %55 = icmp eq i64 %54, 0, !dbg !1028
  br i1 %55, label %56, label %49, !dbg !1028, !llvm.loop !1031

; <label>:56:                                     ; preds = %49, %41
  %57 = phi i64 [ %42, %41 ], [ %52, %49 ]
  %58 = icmp ult i64 %46, 3, !dbg !1030
  br i1 %58, label %70, label %59, !dbg !1030

; <label>:59:                                     ; preds = %56, %59
  %60 = phi i64 [ %67, %59 ], [ %57, %56 ]
  %61 = add nsw i64 %60, 1, !dbg !1030
  %62 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %38, i64 %60, i32 1, !dbg !1030
  store i32 0, i32* %62, align 8, !dbg !1030, !tbaa !974
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1028
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1028
  %63 = add nsw i64 %60, 2, !dbg !1030
  %64 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %38, i64 %61, i32 1, !dbg !1030
  store i32 0, i32* %64, align 8, !dbg !1030, !tbaa !974
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1028
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1028
  %65 = add nsw i64 %60, 3, !dbg !1030
  %66 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %38, i64 %63, i32 1, !dbg !1030
  store i32 0, i32* %66, align 8, !dbg !1030, !tbaa !974
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1028
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1028
  %67 = add nsw i64 %60, 4, !dbg !1030
  %68 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %38, i64 %65, i32 1, !dbg !1030
  store i32 0, i32* %68, align 8, !dbg !1030, !tbaa !974
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1028
  %69 = icmp slt i64 %67, %43, !dbg !1029
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1028
  br i1 %69, label %59, label %70, !dbg !1028, !llvm.loop !1033

; <label>:70:                                     ; preds = %56, %59, %37
  %71 = load i32, i32* %21, align 8, !dbg !1034, !tbaa !1021
  %72 = sext i32 %71 to i64, !dbg !1034
  %73 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %38, i64 %72, !dbg !1034
  %74 = bitcast %struct.lua_TValue* %2 to i64*, !dbg !1034
  %75 = bitcast %struct.lua_TValue* %73 to i64*, !dbg !1034
  %76 = load i64, i64* %74, align 8, !dbg !1034
  store i64 %76, i64* %75, align 8, !dbg !1034
  %77 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i64 0, i32 1, !dbg !1034
  %78 = load i32, i32* %77, align 8, !dbg !1034, !tbaa !974
  %79 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %38, i64 %72, i32 1, !dbg !1034
  store i32 %78, i32* %79, align 8, !dbg !1034, !tbaa !974
  %80 = load i32, i32* %77, align 8, !dbg !1035, !tbaa !974
  %81 = icmp sgt i32 %80, 3, !dbg !1035
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1035
  br i1 %81, label %82, label %96, !dbg !1035

; <label>:82:                                     ; preds = %70
  %83 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i64 0, i32 0, i32 0, !dbg !1035
  %84 = load %union.GCObject*, %union.GCObject** %83, align 8, !dbg !1035, !tbaa !841
  %85 = getelementptr inbounds %union.GCObject, %union.GCObject* %84, i64 0, i32 0, i32 2, !dbg !1035
  %86 = load i8, i8* %85, align 1, !dbg !1035, !tbaa !841
  %87 = and i8 %86, 3, !dbg !1035
  %88 = icmp eq i8 %87, 0, !dbg !1035
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1035
  br i1 %88, label %96, label %89, !dbg !1035

; <label>:89:                                     ; preds = %82
  %90 = getelementptr inbounds %struct.Proto, %struct.Proto* %10, i64 0, i32 2, !dbg !1035
  %91 = load i8, i8* %90, align 1, !dbg !1035, !tbaa !841
  %92 = and i8 %91, 4, !dbg !1035
  %93 = icmp eq i8 %92, 0, !dbg !1035
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1038
  br i1 %93, label %96, label %94, !dbg !1038

; <label>:94:                                     ; preds = %89
  %95 = bitcast %struct.Proto* %10 to %union.GCObject*, !dbg !1035
  tail call void @luaC_barrierf(%struct.lua_State* %5, %union.GCObject* %95, %union.GCObject* %84) #5, !dbg !1035
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1035
  br label %96, !dbg !1035

; <label>:96:                                     ; preds = %89, %82, %94, %70
  %97 = load i32, i32* %21, align 8, !dbg !1039, !tbaa !1021
  %98 = add nsw i32 %97, 1, !dbg !1039
  store i32 %98, i32* %21, align 8, !dbg !1039, !tbaa !1021
  br label %99, !dbg !1040

; <label>:99:                                     ; preds = %96, %16
  %100 = phi i32 [ %19, %16 ], [ %97, %96 ], !dbg !1041
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1042
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1043
  ret i32 %100, !dbg !1043
}

; Function Attrs: noredzone nounwind
define hidden i32 @luaK_numberK(%struct.FuncState* nocapture, double) local_unnamed_addr #0 !dbg !1044 {
  %3 = alloca %struct.lua_TValue, align 8
  %4 = bitcast %struct.lua_TValue* %3 to i8*, !dbg !1055
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #4, !dbg !1055
  %5 = bitcast %struct.lua_TValue* %3 to double*, !dbg !1056
  store double %1, double* %5, align 8, !dbg !1056, !tbaa !841
  %6 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3, i64 0, i32 1, !dbg !1056
  store i32 3, i32* %6, align 8, !dbg !1056, !tbaa !974
  %7 = call fastcc i32 @addk(%struct.FuncState* %0, %struct.lua_TValue* nonnull %3, %struct.lua_TValue* nonnull %3) #6, !dbg !1058
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #4, !dbg !1059
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1060
  ret i32 %7, !dbg !1060
}

; Function Attrs: noredzone nounwind
define hidden void @luaK_setreturns(%struct.FuncState* nocapture, %struct.expdesc* nocapture readonly, i32) local_unnamed_addr #0 !dbg !1061 {
  %4 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0, !dbg !1088
  %5 = load i32, i32* %4, align 8, !dbg !1088, !tbaa !1090
  %6 = icmp eq i32 %5, 13, !dbg !1092
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1093
  br i1 %6, label %7, label %23, !dbg !1093

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0, !dbg !1094
  %9 = load %struct.Proto*, %struct.Proto** %8, align 8, !dbg !1094, !tbaa !542
  %10 = getelementptr inbounds %struct.Proto, %struct.Proto* %9, i64 0, i32 4, !dbg !1094
  %11 = load i32*, i32** %10, align 8, !dbg !1094, !tbaa !544
  %12 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !1094
  %13 = bitcast %union.anon.3* %12 to i32*, !dbg !1094
  %14 = load i32, i32* %13, align 8, !dbg !1094, !tbaa !841
  %15 = sext i32 %14 to i64, !dbg !1094
  %16 = getelementptr inbounds i32, i32* %11, i64 %15, !dbg !1094
  %17 = load i32, i32* %16, align 4, !dbg !1094, !tbaa !550
  %18 = and i32 %17, -8372225, !dbg !1094
  %19 = shl i32 %2, 14, !dbg !1094
  %20 = add i32 %19, 16384, !dbg !1094
  %21 = and i32 %20, 8372224, !dbg !1094
  %22 = or i32 %18, %21, !dbg !1094
  store i32 %22, i32* %16, align 4, !dbg !1094, !tbaa !550
  br label %71, !dbg !1096

; <label>:23:                                     ; preds = %3
  %24 = icmp eq i32 %5, 14, !dbg !1097
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1099
  br i1 %24, label %25, label %72, !dbg !1099

; <label>:25:                                     ; preds = %23
  %26 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0, !dbg !1100
  %27 = load %struct.Proto*, %struct.Proto** %26, align 8, !dbg !1100, !tbaa !542
  %28 = getelementptr inbounds %struct.Proto, %struct.Proto* %27, i64 0, i32 4, !dbg !1100
  %29 = load i32*, i32** %28, align 8, !dbg !1100, !tbaa !544
  %30 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !1100
  %31 = bitcast %union.anon.3* %30 to i32*, !dbg !1100
  %32 = load i32, i32* %31, align 8, !dbg !1100, !tbaa !841
  %33 = sext i32 %32 to i64, !dbg !1100
  %34 = getelementptr inbounds i32, i32* %29, i64 %33, !dbg !1100
  %35 = load i32, i32* %34, align 4, !dbg !1100, !tbaa !550
  %36 = and i32 %35, 8388607, !dbg !1100
  %37 = shl i32 %2, 23, !dbg !1100
  %38 = add i32 %37, 8388608, !dbg !1100
  %39 = or i32 %36, %38, !dbg !1100
  store i32 %39, i32* %34, align 4, !dbg !1100, !tbaa !550
  %40 = load i32, i32* %31, align 8, !dbg !1102, !tbaa !841
  %41 = sext i32 %40 to i64, !dbg !1102
  %42 = getelementptr inbounds i32, i32* %29, i64 %41, !dbg !1102
  %43 = load i32, i32* %42, align 4, !dbg !1102, !tbaa !550
  %44 = and i32 %43, -16321, !dbg !1102
  %45 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !1102
  %46 = load i32, i32* %45, align 4, !dbg !1102, !tbaa !910
  %47 = shl i32 %46, 6, !dbg !1102
  %48 = and i32 %47, 16320, !dbg !1102
  %49 = or i32 %48, %44, !dbg !1102
  store i32 %49, i32* %42, align 4, !dbg !1102, !tbaa !550
  %50 = load i32, i32* %45, align 4, !dbg !1109, !tbaa !910
  %51 = add nsw i32 %50, 1, !dbg !1110
  %52 = getelementptr inbounds %struct.Proto, %struct.Proto* %27, i64 0, i32 22, !dbg !1112
  %53 = load i8, i8* %52, align 1, !dbg !1112, !tbaa !916
  %54 = zext i8 %53 to i32, !dbg !1113
  %55 = icmp slt i32 %50, %54, !dbg !1114
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1115
  br i1 %55, label %69, label %56, !dbg !1115

; <label>:56:                                     ; preds = %25
  %57 = icmp sgt i32 %50, 248, !dbg !1116
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1117
  br i1 %57, label %58, label %65, !dbg !1117

; <label>:58:                                     ; preds = %56
  %59 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !1118
  %60 = load %struct.LexState*, %struct.LexState** %59, align 8, !dbg !1118, !tbaa !589
  tail call void @luaX_syntaxerror(%struct.LexState* %60, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0)) #5, !dbg !1119
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1119
  %61 = load %struct.Proto*, %struct.Proto** %26, align 8, !dbg !1120, !tbaa !542
  %62 = getelementptr inbounds %struct.Proto, %struct.Proto* %61, i64 0, i32 22, !dbg !1121
  %63 = load i32, i32* %45, align 4, !dbg !1122, !tbaa !910
  %64 = add nsw i32 %63, 1, !dbg !1122
  br label %65, !dbg !1119

; <label>:65:                                     ; preds = %58, %56
  %66 = phi i32 [ %64, %58 ], [ %51, %56 ], !dbg !1122
  %67 = phi i8* [ %62, %58 ], [ %52, %56 ], !dbg !1121
  %68 = trunc i32 %51 to i8, !dbg !1123
  store i8 %68, i8* %67, align 1, !dbg !1124, !tbaa !916
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1125
  br label %69, !dbg !1125

; <label>:69:                                     ; preds = %25, %65
  %70 = phi i32 [ %51, %25 ], [ %66, %65 ], !dbg !1122
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1126
  store i32 %70, i32* %45, align 4, !dbg !1122, !tbaa !910
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1127
  br label %71, !dbg !1128

; <label>:71:                                     ; preds = %7, %69
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1129
  br label %72, !dbg !1130

; <label>:72:                                     ; preds = %71, %23
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1130
  ret void, !dbg !1130
}

; Function Attrs: noredzone nounwind
define hidden void @luaK_setoneret(%struct.FuncState* nocapture readonly, %struct.expdesc* nocapture) local_unnamed_addr #0 !dbg !1131 {
  %3 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0, !dbg !1139
  %4 = load i32, i32* %3, align 8, !dbg !1139, !tbaa !1090
  %5 = icmp eq i32 %4, 13, !dbg !1141
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1142
  br i1 %5, label %6, label %19, !dbg !1142

; <label>:6:                                      ; preds = %2
  store i32 12, i32* %3, align 8, !dbg !1143, !tbaa !1090
  %7 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0, !dbg !1145
  %8 = load %struct.Proto*, %struct.Proto** %7, align 8, !dbg !1145, !tbaa !542
  %9 = getelementptr inbounds %struct.Proto, %struct.Proto* %8, i64 0, i32 4, !dbg !1145
  %10 = load i32*, i32** %9, align 8, !dbg !1145, !tbaa !544
  %11 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !1145
  %12 = bitcast %union.anon.3* %11 to i32*, !dbg !1145
  %13 = load i32, i32* %12, align 8, !dbg !1145, !tbaa !841
  %14 = sext i32 %13 to i64, !dbg !1145
  %15 = getelementptr inbounds i32, i32* %10, i64 %14, !dbg !1145
  %16 = load i32, i32* %15, align 4, !dbg !1145, !tbaa !550
  %17 = lshr i32 %16, 6, !dbg !1145
  %18 = and i32 %17, 255, !dbg !1145
  store i32 %18, i32* %12, align 8, !dbg !1146, !tbaa !841
  br label %34, !dbg !1147

; <label>:19:                                     ; preds = %2
  %20 = icmp eq i32 %4, 14, !dbg !1148
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1150
  br i1 %20, label %21, label %35, !dbg !1150

; <label>:21:                                     ; preds = %19
  %22 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0, !dbg !1151
  %23 = load %struct.Proto*, %struct.Proto** %22, align 8, !dbg !1151, !tbaa !542
  %24 = getelementptr inbounds %struct.Proto, %struct.Proto* %23, i64 0, i32 4, !dbg !1151
  %25 = load i32*, i32** %24, align 8, !dbg !1151, !tbaa !544
  %26 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !1151
  %27 = bitcast %union.anon.3* %26 to i32*, !dbg !1151
  %28 = load i32, i32* %27, align 8, !dbg !1151, !tbaa !841
  %29 = sext i32 %28 to i64, !dbg !1151
  %30 = getelementptr inbounds i32, i32* %25, i64 %29, !dbg !1151
  %31 = load i32, i32* %30, align 4, !dbg !1151, !tbaa !550
  %32 = and i32 %31, 8388607, !dbg !1151
  %33 = or i32 %32, 16777216, !dbg !1151
  store i32 %33, i32* %30, align 4, !dbg !1151, !tbaa !550
  store i32 11, i32* %3, align 8, !dbg !1153, !tbaa !1090
  br label %34, !dbg !1154

; <label>:34:                                     ; preds = %6, %21
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1155
  br label %35, !dbg !1156

; <label>:35:                                     ; preds = %34, %19
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1156
  ret void, !dbg !1156
}

; Function Attrs: noredzone nounwind
define hidden void @luaK_dischargevars(%struct.FuncState* nocapture, %struct.expdesc* nocapture) local_unnamed_addr #0 !dbg !1157 {
  %3 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0, !dbg !1163
  %4 = load i32, i32* %3, align 8, !dbg !1163, !tbaa !1090
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1164
  switch i32 %4, label %101 [
    i32 6, label %5
    i32 7, label %6
    i32 8, label %17
    i32 9, label %28
    i32 14, label %71
    i32 13, label %71
  ], !dbg !1164

; <label>:5:                                      ; preds = %2
  store i32 12, i32* %3, align 8, !dbg !1165, !tbaa !1090
  br label %100, !dbg !1168

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !1169
  %8 = bitcast %union.anon.3* %7 to i32*, !dbg !1171
  %9 = load i32, i32* %8, align 8, !dbg !1171, !tbaa !841
  %10 = shl i32 %9, 23, !dbg !1178
  %11 = or i32 %10, 4, !dbg !1178
  %12 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !1179
  %13 = load %struct.LexState*, %struct.LexState** %12, align 8, !dbg !1179, !tbaa !589
  %14 = getelementptr inbounds %struct.LexState, %struct.LexState* %13, i64 0, i32 2, !dbg !1180
  %15 = load i32, i32* %14, align 8, !dbg !1180, !tbaa !591
  %16 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %11, i32 %15) #5, !dbg !1181
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1182
  store i32 %16, i32* %8, align 8, !dbg !1183, !tbaa !841
  store i32 11, i32* %3, align 8, !dbg !1184, !tbaa !1090
  br label %100, !dbg !1185

; <label>:17:                                     ; preds = %2
  %18 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !1186
  %19 = bitcast %union.anon.3* %18 to i32*, !dbg !1188
  %20 = load i32, i32* %19, align 8, !dbg !1188, !tbaa !841
  %21 = shl i32 %20, 14, !dbg !1194
  %22 = or i32 %21, 5, !dbg !1194
  %23 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !1195
  %24 = load %struct.LexState*, %struct.LexState** %23, align 8, !dbg !1195, !tbaa !589
  %25 = getelementptr inbounds %struct.LexState, %struct.LexState* %24, i64 0, i32 2, !dbg !1196
  %26 = load i32, i32* %25, align 8, !dbg !1196, !tbaa !591
  %27 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %22, i32 %26) #5, !dbg !1197
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1198
  store i32 %27, i32* %19, align 8, !dbg !1199, !tbaa !841
  store i32 11, i32* %3, align 8, !dbg !1200, !tbaa !1090
  br label %100, !dbg !1201

; <label>:28:                                     ; preds = %2
  %29 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !1202
  %30 = bitcast %union.anon.3* %29 to %struct.anon.4*, !dbg !1204
  %31 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %30, i64 0, i32 1, !dbg !1205
  %32 = load i32, i32* %31, align 4, !dbg !1205, !tbaa !841
  %33 = and i32 %32, 256, !dbg !1213
  %34 = icmp eq i32 %33, 0, !dbg !1213
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1215
  br i1 %34, label %35, label %44, !dbg !1215

; <label>:35:                                     ; preds = %28
  %36 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !1216
  %37 = load i8, i8* %36, align 2, !dbg !1216, !tbaa !537
  %38 = zext i8 %37 to i32, !dbg !1217
  %39 = icmp slt i32 %32, %38, !dbg !1218
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1219
  br i1 %39, label %44, label %40, !dbg !1219

; <label>:40:                                     ; preds = %35
  %41 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !1220
  %42 = load i32, i32* %41, align 4, !dbg !1222, !tbaa !910
  %43 = add nsw i32 %42, -1, !dbg !1222
  store i32 %43, i32* %41, align 4, !dbg !1222, !tbaa !910
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1223
  br label %44, !dbg !1223

; <label>:44:                                     ; preds = %28, %35, %40
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1224
  %45 = bitcast %union.anon.3* %29 to i32*, !dbg !1225
  %46 = load i32, i32* %45, align 8, !dbg !1225, !tbaa !841
  %47 = and i32 %46, 256, !dbg !1229
  %48 = icmp eq i32 %47, 0, !dbg !1229
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1230
  br i1 %48, label %49, label %59, !dbg !1230

; <label>:49:                                     ; preds = %44
  %50 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !1231
  %51 = load i8, i8* %50, align 2, !dbg !1231, !tbaa !537
  %52 = zext i8 %51 to i32, !dbg !1232
  %53 = icmp slt i32 %46, %52, !dbg !1233
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1234
  br i1 %53, label %59, label %54, !dbg !1234

; <label>:54:                                     ; preds = %49
  %55 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !1235
  %56 = load i32, i32* %55, align 4, !dbg !1236, !tbaa !910
  %57 = add nsw i32 %56, -1, !dbg !1236
  store i32 %57, i32* %55, align 4, !dbg !1236, !tbaa !910
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1237
  %58 = load i32, i32* %45, align 8, !dbg !1238, !tbaa !841
  br label %59, !dbg !1237

; <label>:59:                                     ; preds = %44, %49, %54
  %60 = phi i32 [ %46, %44 ], [ %46, %49 ], [ %58, %54 ], !dbg !1238
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1239
  %61 = load i32, i32* %31, align 4, !dbg !1240, !tbaa !841
  %62 = shl i32 %60, 23, !dbg !1247
  %63 = shl i32 %61, 14, !dbg !1247
  %64 = or i32 %62, %63, !dbg !1247
  %65 = or i32 %64, 6, !dbg !1247
  %66 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !1248
  %67 = load %struct.LexState*, %struct.LexState** %66, align 8, !dbg !1248, !tbaa !589
  %68 = getelementptr inbounds %struct.LexState, %struct.LexState* %67, i64 0, i32 2, !dbg !1249
  %69 = load i32, i32* %68, align 8, !dbg !1249, !tbaa !591
  %70 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %65, i32 %69) #5, !dbg !1250
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1251
  store i32 %70, i32* %45, align 8, !dbg !1252, !tbaa !841
  store i32 11, i32* %3, align 8, !dbg !1253, !tbaa !1090
  br label %100, !dbg !1254

; <label>:71:                                     ; preds = %2, %2
  %72 = icmp eq i32 %4, 13, !dbg !1259
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1260
  br i1 %72, label %73, label %86, !dbg !1260

; <label>:73:                                     ; preds = %71
  store i32 12, i32* %3, align 8, !dbg !1261, !tbaa !1090
  %74 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0, !dbg !1262
  %75 = load %struct.Proto*, %struct.Proto** %74, align 8, !dbg !1262, !tbaa !542
  %76 = getelementptr inbounds %struct.Proto, %struct.Proto* %75, i64 0, i32 4, !dbg !1262
  %77 = load i32*, i32** %76, align 8, !dbg !1262, !tbaa !544
  %78 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !1262
  %79 = bitcast %union.anon.3* %78 to i32*, !dbg !1262
  %80 = load i32, i32* %79, align 8, !dbg !1262, !tbaa !841
  %81 = sext i32 %80 to i64, !dbg !1262
  %82 = getelementptr inbounds i32, i32* %77, i64 %81, !dbg !1262
  %83 = load i32, i32* %82, align 4, !dbg !1262, !tbaa !550
  %84 = lshr i32 %83, 6, !dbg !1262
  %85 = and i32 %84, 255, !dbg !1262
  store i32 %85, i32* %79, align 8, !dbg !1263, !tbaa !841
  br label %99, !dbg !1264

; <label>:86:                                     ; preds = %71
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1265
  %87 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0, !dbg !1266
  %88 = load %struct.Proto*, %struct.Proto** %87, align 8, !dbg !1266, !tbaa !542
  %89 = getelementptr inbounds %struct.Proto, %struct.Proto* %88, i64 0, i32 4, !dbg !1266
  %90 = load i32*, i32** %89, align 8, !dbg !1266, !tbaa !544
  %91 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !1266
  %92 = bitcast %union.anon.3* %91 to i32*, !dbg !1266
  %93 = load i32, i32* %92, align 8, !dbg !1266, !tbaa !841
  %94 = sext i32 %93 to i64, !dbg !1266
  %95 = getelementptr inbounds i32, i32* %90, i64 %94, !dbg !1266
  %96 = load i32, i32* %95, align 4, !dbg !1266, !tbaa !550
  %97 = and i32 %96, 8388607, !dbg !1266
  %98 = or i32 %97, 16777216, !dbg !1266
  store i32 %98, i32* %95, align 4, !dbg !1266, !tbaa !550
  store i32 11, i32* %3, align 8, !dbg !1267, !tbaa !1090
  br label %99, !dbg !1268

; <label>:99:                                     ; preds = %73, %86
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1269
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1270
  br label %100, !dbg !1271

; <label>:100:                                    ; preds = %5, %6, %17, %59, %99
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1272
  br label %101, !dbg !1273

; <label>:101:                                    ; preds = %100, %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1273
  ret void, !dbg !1273
}

; Function Attrs: noredzone nounwind
define hidden void @luaK_exp2nextreg(%struct.FuncState*, %struct.expdesc* nocapture) local_unnamed_addr #0 !dbg !1274 {
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %1) #6, !dbg !1280
  %3 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0, !dbg !1288
  %4 = load i32, i32* %3, align 8, !dbg !1288, !tbaa !1090
  %5 = icmp eq i32 %4, 12, !dbg !1290
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1291
  br i1 %5, label %6, label %22, !dbg !1291

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !1292
  %8 = bitcast %union.anon.3* %7 to i32*, !dbg !1293
  %9 = load i32, i32* %8, align 8, !dbg !1293, !tbaa !841
  %10 = and i32 %9, 256, !dbg !1297
  %11 = icmp eq i32 %10, 0, !dbg !1297
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1298
  br i1 %11, label %12, label %21, !dbg !1298

; <label>:12:                                     ; preds = %6
  %13 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !1299
  %14 = load i8, i8* %13, align 2, !dbg !1299, !tbaa !537
  %15 = zext i8 %14 to i32, !dbg !1300
  %16 = icmp slt i32 %9, %15, !dbg !1301
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1302
  br i1 %16, label %21, label %17, !dbg !1302

; <label>:17:                                     ; preds = %12
  %18 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !1303
  %19 = load i32, i32* %18, align 4, !dbg !1304, !tbaa !910
  %20 = add nsw i32 %19, -1, !dbg !1304
  store i32 %20, i32* %18, align 4, !dbg !1304, !tbaa !910
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1305
  br label %21, !dbg !1305

; <label>:21:                                     ; preds = %17, %12, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1306
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1307
  br label %22, !dbg !1307

; <label>:22:                                     ; preds = %2, %21
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1308
  %23 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !1315
  %24 = load i32, i32* %23, align 4, !dbg !1315, !tbaa !910
  %25 = add nsw i32 %24, 1, !dbg !1316
  %26 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0, !dbg !1318
  %27 = load %struct.Proto*, %struct.Proto** %26, align 8, !dbg !1318, !tbaa !542
  %28 = getelementptr inbounds %struct.Proto, %struct.Proto* %27, i64 0, i32 22, !dbg !1319
  %29 = load i8, i8* %28, align 1, !dbg !1319, !tbaa !916
  %30 = zext i8 %29 to i32, !dbg !1320
  %31 = icmp slt i32 %24, %30, !dbg !1321
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1322
  br i1 %31, label %45, label %32, !dbg !1322

; <label>:32:                                     ; preds = %22
  %33 = icmp sgt i32 %24, 248, !dbg !1323
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1324
  br i1 %33, label %34, label %41, !dbg !1324

; <label>:34:                                     ; preds = %32
  %35 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !1325
  %36 = load %struct.LexState*, %struct.LexState** %35, align 8, !dbg !1325, !tbaa !589
  tail call void @luaX_syntaxerror(%struct.LexState* %36, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0)) #5, !dbg !1326
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1326
  %37 = load %struct.Proto*, %struct.Proto** %26, align 8, !dbg !1327, !tbaa !542
  %38 = getelementptr inbounds %struct.Proto, %struct.Proto* %37, i64 0, i32 22, !dbg !1328
  %39 = load i32, i32* %23, align 4, !dbg !1329, !tbaa !910
  %40 = add nsw i32 %39, 1, !dbg !1329
  br label %41, !dbg !1326

; <label>:41:                                     ; preds = %34, %32
  %42 = phi i32 [ %40, %34 ], [ %25, %32 ], !dbg !1329
  %43 = phi i8* [ %38, %34 ], [ %28, %32 ], !dbg !1328
  %44 = trunc i32 %25 to i8, !dbg !1330
  store i8 %44, i8* %43, align 1, !dbg !1331, !tbaa !916
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1332
  br label %45, !dbg !1332

; <label>:45:                                     ; preds = %22, %41
  %46 = phi i32 [ %25, %22 ], [ %42, %41 ], !dbg !1329
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1333
  store i32 %46, i32* %23, align 4, !dbg !1329, !tbaa !910
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1334
  %47 = add nsw i32 %46, -1, !dbg !1335
  tail call fastcc void @exp2reg(%struct.FuncState* nonnull %0, %struct.expdesc* nonnull %1, i32 %47) #6, !dbg !1336
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1337
  ret void, !dbg !1337
}

; Function Attrs: noredzone nounwind
define internal fastcc void @exp2reg(%struct.FuncState*, %struct.expdesc* nocapture, i32) unnamed_addr #0 !dbg !1338 {
  %4 = alloca i32, align 4
  tail call fastcc void @discharge2reg(%struct.FuncState* %0, %struct.expdesc* %1, i32 %2) #6, !dbg !1354
  %5 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0, !dbg !1355
  %6 = load i32, i32* %5, align 8, !dbg !1355, !tbaa !1090
  %7 = icmp eq i32 %6, 10, !dbg !1357
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1358
  %8 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2, !dbg !1359
  br i1 %7, label %9, label %13, !dbg !1358

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !1360
  %11 = bitcast %union.anon.3* %10 to i32*, !dbg !1361
  %12 = load i32, i32* %11, align 8, !dbg !1361, !tbaa !841
  tail call void @luaK_concat(%struct.FuncState* %0, i32* nonnull %8, i32 %12) #6, !dbg !1362
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1362
  br label %13, !dbg !1362

; <label>:13:                                     ; preds = %3, %9
  %14 = load i32, i32* %8, align 8, !dbg !1363, !tbaa !1364
  %15 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3, !dbg !1363
  %16 = load i32, i32* %15, align 4, !dbg !1363, !tbaa !1365
  %17 = icmp eq i32 %14, %16, !dbg !1363
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1366
  br i1 %17, label %284, label %18, !dbg !1366

; <label>:18:                                     ; preds = %13
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1380
  %19 = icmp eq i32 %14, -1, !dbg !1381
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1382
  br i1 %19, label %55, label %20, !dbg !1382

; <label>:20:                                     ; preds = %18
  %21 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %22 = load %struct.Proto*, %struct.Proto** %21, align 8, !tbaa !542
  %23 = getelementptr inbounds %struct.Proto, %struct.Proto* %22, i64 0, i32 4
  %24 = load i32*, i32** %23, align 8, !tbaa !544
  br label %25, !dbg !1382

; <label>:25:                                     ; preds = %51, %20
  %26 = phi i32 [ %14, %20 ], [ %53, %51 ]
  %27 = sext i32 %26 to i64, !dbg !1386
  %28 = getelementptr inbounds i32, i32* %24, i64 %27, !dbg !1386
  %29 = icmp sgt i32 %26, 0, !dbg !1388
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1389
  br i1 %29, label %30, label %39, !dbg !1389

; <label>:30:                                     ; preds = %25
  %31 = getelementptr inbounds i32, i32* %28, i64 -1, !dbg !1390
  %32 = load i32, i32* %31, align 4, !dbg !1390, !tbaa !550
  %33 = and i32 %32, 63, !dbg !1390
  %34 = zext i32 %33 to i64, !dbg !1390
  %35 = getelementptr inbounds [38 x i8], [38 x i8]* @luaP_opmodes, i64 0, i64 %34, !dbg !1390
  %36 = load i8, i8* %35, align 1, !dbg !1390, !tbaa !841
  %37 = icmp slt i8 %36, 0, !dbg !1390
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1391
  br i1 %37, label %38, label %39, !dbg !1391

; <label>:38:                                     ; preds = %30
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1392
  br label %41, !dbg !1392

; <label>:39:                                     ; preds = %30, %25
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1393
  %40 = load i32, i32* %28, align 4, !dbg !1394, !tbaa !550
  br label %41, !dbg !1393

; <label>:41:                                     ; preds = %39, %38
  %42 = phi i32 [ %32, %38 ], [ %40, %39 ], !dbg !1394
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1395
  %43 = and i32 %42, 63, !dbg !1397
  %44 = icmp eq i32 %43, 27, !dbg !1399
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1400
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1401
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br i1 %44, label %45, label %95

; <label>:45:                                     ; preds = %41
  %46 = load i32, i32* %28, align 4, !dbg !1405, !tbaa !550
  %47 = lshr i32 %46, 14, !dbg !1405
  %48 = add nsw i32 %47, -131071, !dbg !1405
  %49 = icmp eq i32 %48, -1, !dbg !1407
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1408
  br i1 %49, label %50, label %51, !dbg !1408

; <label>:50:                                     ; preds = %45
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1409
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1410
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1411
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1382
  br label %55, !dbg !1382

; <label>:51:                                     ; preds = %45
  %52 = add nsw i32 %26, 1, !dbg !1412
  %53 = add nsw i32 %52, %48, !dbg !1413
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1414
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1410
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1411
  %54 = icmp eq i32 %53, -1, !dbg !1381
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1382
  br i1 %54, label %55, label %25, !dbg !1382, !llvm.loop !1415

; <label>:55:                                     ; preds = %51, %18, %50
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1418
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1419
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1420
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1424
  %56 = icmp eq i32 %16, -1, !dbg !1425
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1426
  br i1 %56, label %92, label %57, !dbg !1426

; <label>:57:                                     ; preds = %55
  %58 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %59 = load %struct.Proto*, %struct.Proto** %58, align 8, !tbaa !542
  %60 = getelementptr inbounds %struct.Proto, %struct.Proto* %59, i64 0, i32 4
  %61 = load i32*, i32** %60, align 8, !tbaa !544
  br label %62, !dbg !1426

; <label>:62:                                     ; preds = %88, %57
  %63 = phi i32 [ %16, %57 ], [ %90, %88 ]
  %64 = sext i32 %63 to i64, !dbg !1430
  %65 = getelementptr inbounds i32, i32* %61, i64 %64, !dbg !1430
  %66 = icmp sgt i32 %63, 0, !dbg !1432
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1433
  br i1 %66, label %67, label %76, !dbg !1433

; <label>:67:                                     ; preds = %62
  %68 = getelementptr inbounds i32, i32* %65, i64 -1, !dbg !1434
  %69 = load i32, i32* %68, align 4, !dbg !1434, !tbaa !550
  %70 = and i32 %69, 63, !dbg !1434
  %71 = zext i32 %70 to i64, !dbg !1434
  %72 = getelementptr inbounds [38 x i8], [38 x i8]* @luaP_opmodes, i64 0, i64 %71, !dbg !1434
  %73 = load i8, i8* %72, align 1, !dbg !1434, !tbaa !841
  %74 = icmp slt i8 %73, 0, !dbg !1434
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1435
  br i1 %74, label %75, label %76, !dbg !1435

; <label>:75:                                     ; preds = %67
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1436
  br label %78, !dbg !1436

; <label>:76:                                     ; preds = %67, %62
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1437
  %77 = load i32, i32* %65, align 4, !dbg !1438, !tbaa !550
  br label %78, !dbg !1437

; <label>:78:                                     ; preds = %76, %75
  %79 = phi i32 [ %69, %75 ], [ %77, %76 ], !dbg !1438
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1439
  %80 = and i32 %79, 63, !dbg !1441
  %81 = icmp eq i32 %80, 27, !dbg !1442
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1443
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1444
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br i1 %81, label %82, label %95

; <label>:82:                                     ; preds = %78
  %83 = load i32, i32* %65, align 4, !dbg !1448, !tbaa !550
  %84 = lshr i32 %83, 14, !dbg !1448
  %85 = add nsw i32 %84, -131071, !dbg !1448
  %86 = icmp eq i32 %85, -1, !dbg !1450
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1451
  br i1 %86, label %87, label %88, !dbg !1451

; <label>:87:                                     ; preds = %82
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1452
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1453
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1454
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1426
  br label %92, !dbg !1426

; <label>:88:                                     ; preds = %82
  %89 = add nsw i32 %63, 1, !dbg !1455
  %90 = add nsw i32 %89, %85, !dbg !1456
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1457
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1453
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1454
  %91 = icmp eq i32 %90, -1, !dbg !1425
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1426
  br i1 %91, label %92, label %62, !dbg !1426, !llvm.loop !1415

; <label>:92:                                     ; preds = %88, %55, %87
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1458
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1459
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1460
  %93 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 6, !dbg !1461
  %94 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 7, !dbg !1463
  br label %132, !dbg !1460

; <label>:95:                                     ; preds = %41, %78
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1459
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1464
  %96 = load i32, i32* %5, align 8, !dbg !1465, !tbaa !1090
  %97 = icmp eq i32 %96, 10, !dbg !1466
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1467
  br i1 %97, label %98, label %101, !dbg !1467

; <label>:98:                                     ; preds = %95
  %99 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !1468
  %100 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 8, !dbg !1479
  br label %111, !dbg !1467

; <label>:101:                                    ; preds = %95
  %102 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 8, !dbg !1483
  %103 = load i32, i32* %102, align 8, !dbg !1483, !tbaa !616
  %104 = bitcast i32* %4 to i8*, !dbg !1485
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %104) #4, !dbg !1485
  store i32 -1, i32* %102, align 8, !dbg !1486, !tbaa !616
  %105 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !1492
  %106 = load %struct.LexState*, %struct.LexState** %105, align 8, !dbg !1492, !tbaa !589
  %107 = getelementptr inbounds %struct.LexState, %struct.LexState* %106, i64 0, i32 2, !dbg !1493
  %108 = load i32, i32* %107, align 8, !dbg !1493, !tbaa !591
  %109 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 2147450902, i32 %108) #5, !dbg !1494
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1495
  store i32 %109, i32* %4, align 4, !dbg !1497, !tbaa !550
  call void @luaK_concat(%struct.FuncState* %0, i32* nonnull %4, i32 %103) #5, !dbg !1498
  %110 = load i32, i32* %4, align 4, !dbg !1499, !tbaa !550
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %104) #4, !dbg !1500
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1501
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1467
  br label %111, !dbg !1467

; <label>:111:                                    ; preds = %98, %101
  %112 = phi i32* [ %100, %98 ], [ %102, %101 ], !dbg !1479
  %113 = phi %struct.LexState** [ %99, %98 ], [ %105, %101 ], !dbg !1468
  %114 = phi i32 [ -1, %98 ], [ %110, %101 ], !dbg !1467
  %115 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 6, !dbg !1509
  %116 = load i32, i32* %115, align 8, !dbg !1509, !tbaa !521
  %117 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 7, !dbg !1510
  store i32 %116, i32* %117, align 4, !dbg !1511, !tbaa !529
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1512
  %118 = shl i32 %2, 6, !dbg !1518
  %119 = or i32 %118, 16386, !dbg !1518
  %120 = load %struct.LexState*, %struct.LexState** %113, align 8, !dbg !1468, !tbaa !589
  %121 = getelementptr inbounds %struct.LexState, %struct.LexState* %120, i64 0, i32 2, !dbg !1519
  %122 = load i32, i32* %121, align 8, !dbg !1519, !tbaa !591
  %123 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %119, i32 %122) #5, !dbg !1520
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1521
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1522
  %124 = load i32, i32* %115, align 8, !dbg !1530, !tbaa !521
  store i32 %124, i32* %117, align 4, !dbg !1531, !tbaa !529
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1532
  %125 = or i32 %118, 8388610, !dbg !1539
  %126 = load %struct.LexState*, %struct.LexState** %113, align 8, !dbg !1540, !tbaa !589
  %127 = getelementptr inbounds %struct.LexState, %struct.LexState* %126, i64 0, i32 2, !dbg !1541
  %128 = load i32, i32* %127, align 8, !dbg !1541, !tbaa !591
  %129 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %125, i32 %128) #5, !dbg !1542
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1543
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1544
  %130 = load i32, i32* %115, align 8, !dbg !1549, !tbaa !521
  store i32 %130, i32* %117, align 4, !dbg !1550, !tbaa !529
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1551
  tail call void @luaK_concat(%struct.FuncState* %0, i32* nonnull %112, i32 %114) #5, !dbg !1552
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1553
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1554
  %131 = load i32, i32* %15, align 4, !dbg !1555, !tbaa !1365
  br label %132, !dbg !1554

; <label>:132:                                    ; preds = %92, %111
  %133 = phi i32* [ %94, %92 ], [ %117, %111 ], !dbg !1463
  %134 = phi i32* [ %93, %92 ], [ %115, %111 ], !dbg !1461
  %135 = phi i32 [ %16, %92 ], [ %131, %111 ], !dbg !1555
  %136 = phi i32 [ -1, %92 ], [ %129, %111 ], !dbg !1556
  %137 = phi i32 [ -1, %92 ], [ %123, %111 ], !dbg !1556
  %138 = load i32, i32* %134, align 8, !dbg !1461, !tbaa !521
  store i32 %138, i32* %133, align 4, !dbg !1558, !tbaa !529
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1559
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1567
  %139 = icmp eq i32 %135, -1, !dbg !1568
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1567
  br i1 %139, label %210, label %140, !dbg !1567

; <label>:140:                                    ; preds = %132
  %141 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %142 = icmp eq i32 %2, 255
  %143 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3
  %144 = shl i32 %2, 6
  %145 = and i32 %144, 16320
  br label %146, !dbg !1567

; <label>:146:                                    ; preds = %202, %140
  %147 = phi i32 [ %135, %140 ], [ %159, %202 ]
  %148 = load %struct.Proto*, %struct.Proto** %141, align 8, !dbg !1572, !tbaa !542
  %149 = getelementptr inbounds %struct.Proto, %struct.Proto* %148, i64 0, i32 4, !dbg !1572
  %150 = load i32*, i32** %149, align 8, !dbg !1572, !tbaa !544
  %151 = sext i32 %147 to i64, !dbg !1572
  %152 = getelementptr inbounds i32, i32* %150, i64 %151, !dbg !1572
  %153 = load i32, i32* %152, align 4, !dbg !1572, !tbaa !550
  %154 = lshr i32 %153, 14, !dbg !1572
  %155 = add nsw i32 %154, -131071, !dbg !1572
  %156 = icmp eq i32 %155, -1, !dbg !1574
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1575
  %157 = add nsw i32 %147, 1, !dbg !1576
  %158 = add nsw i32 %157, %155, !dbg !1577
  %159 = select i1 %156, i32 -1, i32 %158, !dbg !1575
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1578
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1579
  %160 = icmp sgt i32 %147, 0, !dbg !1589
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1590
  br i1 %160, label %161, label %169, !dbg !1590

; <label>:161:                                    ; preds = %146
  %162 = getelementptr inbounds i32, i32* %152, i64 -1, !dbg !1591
  %163 = load i32, i32* %162, align 4, !dbg !1591, !tbaa !550
  %164 = and i32 %163, 63, !dbg !1591
  %165 = zext i32 %164 to i64, !dbg !1591
  %166 = getelementptr inbounds [38 x i8], [38 x i8]* @luaP_opmodes, i64 0, i64 %165, !dbg !1591
  %167 = load i8, i8* %166, align 1, !dbg !1591, !tbaa !841
  %168 = icmp slt i8 %167, 0, !dbg !1591
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1592
  br i1 %168, label %170, label %169, !dbg !1592

; <label>:169:                                    ; preds = %161, %146
  br label %170, !dbg !1593

; <label>:170:                                    ; preds = %161, %169
  %171 = phi i32 [ %153, %169 ], [ %163, %161 ], !dbg !1594
  %172 = phi i32* [ %152, %169 ], [ %162, %161 ], !dbg !1595
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1596
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1597
  %173 = and i32 %171, 63, !dbg !1594
  %174 = icmp eq i32 %173, 27, !dbg !1599
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1600
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1601
  br i1 %174, label %175, label %195, !dbg !1600

; <label>:175:                                    ; preds = %170
  %176 = lshr i32 %171, 23, !dbg !1602
  br i1 %142, label %182, label %177, !dbg !1603

; <label>:177:                                    ; preds = %175
  %178 = icmp eq i32 %176, %2, !dbg !1604
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1605
  br i1 %178, label %182, label %179, !dbg !1605

; <label>:179:                                    ; preds = %177
  %180 = and i32 %171, -16321, !dbg !1606
  %181 = or i32 %180, %145, !dbg !1606
  br label %187, !dbg !1606

; <label>:182:                                    ; preds = %177, %175
  %183 = shl nuw nsw i32 %176, 6, !dbg !1607
  %184 = and i32 %171, 8372224, !dbg !1607
  %185 = or i32 %184, %183, !dbg !1607
  %186 = or i32 %185, 26, !dbg !1607
  br label %187

; <label>:187:                                    ; preds = %182, %179
  %188 = phi i32 [ %186, %182 ], [ %181, %179 ]
  store i32 %188, i32* %172, align 4, !dbg !1601, !tbaa !550
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1608
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1609
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1610
  %189 = xor i32 %147, -1, !dbg !1616
  %190 = add i32 %138, %189, !dbg !1616
  %191 = tail call i32 @abs(i32 %190) #5, !dbg !1618
  %192 = icmp sgt i32 %191, 131071, !dbg !1619
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1620
  br i1 %192, label %193, label %202, !dbg !1620

; <label>:193:                                    ; preds = %187
  %194 = load %struct.LexState*, %struct.LexState** %143, align 8, !dbg !1621, !tbaa !589
  tail call void @luaX_syntaxerror(%struct.LexState* %194, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !1622
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1622
  br label %202, !dbg !1622

; <label>:195:                                    ; preds = %170
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1609
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1610
  %196 = xor i32 %147, -1, !dbg !1628
  %197 = add i32 %137, %196, !dbg !1628
  %198 = tail call i32 @abs(i32 %197) #5, !dbg !1630
  %199 = icmp sgt i32 %198, 131071, !dbg !1631
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1632
  br i1 %199, label %200, label %202, !dbg !1632

; <label>:200:                                    ; preds = %195
  %201 = load %struct.LexState*, %struct.LexState** %143, align 8, !dbg !1633, !tbaa !589
  tail call void @luaX_syntaxerror(%struct.LexState* %201, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !1634
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1634
  br label %202, !dbg !1634

; <label>:202:                                    ; preds = %200, %195, %193, %187
  %203 = phi i32 [ %190, %187 ], [ %190, %193 ], [ %197, %195 ], [ %197, %200 ]
  %204 = load i32, i32* %152, align 4, !dbg !1635, !tbaa !550
  %205 = and i32 %204, 16383, !dbg !1635
  %206 = shl i32 %203, 14, !dbg !1635
  %207 = add i32 %206, 2147467264, !dbg !1635
  %208 = or i32 %205, %207, !dbg !1635
  store i32 %208, i32* %152, align 4, !dbg !1635, !tbaa !550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1636
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1567
  %209 = icmp eq i32 %159, -1, !dbg !1568
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1567
  br i1 %209, label %210, label %146, !dbg !1567, !llvm.loop !886

; <label>:210:                                    ; preds = %202, %132
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1637
  %211 = load i32, i32* %8, align 8, !dbg !1638, !tbaa !1364
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1645
  %212 = icmp eq i32 %211, -1, !dbg !1646
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1645
  br i1 %212, label %283, label %213, !dbg !1645

; <label>:213:                                    ; preds = %210
  %214 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %215 = icmp eq i32 %2, 255
  %216 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3
  %217 = shl i32 %2, 6
  %218 = and i32 %217, 16320
  br label %219, !dbg !1645

; <label>:219:                                    ; preds = %275, %213
  %220 = phi i32 [ %211, %213 ], [ %232, %275 ]
  %221 = load %struct.Proto*, %struct.Proto** %214, align 8, !dbg !1650, !tbaa !542
  %222 = getelementptr inbounds %struct.Proto, %struct.Proto* %221, i64 0, i32 4, !dbg !1650
  %223 = load i32*, i32** %222, align 8, !dbg !1650, !tbaa !544
  %224 = sext i32 %220 to i64, !dbg !1650
  %225 = getelementptr inbounds i32, i32* %223, i64 %224, !dbg !1650
  %226 = load i32, i32* %225, align 4, !dbg !1650, !tbaa !550
  %227 = lshr i32 %226, 14, !dbg !1650
  %228 = add nsw i32 %227, -131071, !dbg !1650
  %229 = icmp eq i32 %228, -1, !dbg !1652
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1653
  %230 = add nsw i32 %220, 1, !dbg !1654
  %231 = add nsw i32 %230, %228, !dbg !1655
  %232 = select i1 %229, i32 -1, i32 %231, !dbg !1653
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1656
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1657
  %233 = icmp sgt i32 %220, 0, !dbg !1667
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1668
  br i1 %233, label %234, label %242, !dbg !1668

; <label>:234:                                    ; preds = %219
  %235 = getelementptr inbounds i32, i32* %225, i64 -1, !dbg !1669
  %236 = load i32, i32* %235, align 4, !dbg !1669, !tbaa !550
  %237 = and i32 %236, 63, !dbg !1669
  %238 = zext i32 %237 to i64, !dbg !1669
  %239 = getelementptr inbounds [38 x i8], [38 x i8]* @luaP_opmodes, i64 0, i64 %238, !dbg !1669
  %240 = load i8, i8* %239, align 1, !dbg !1669, !tbaa !841
  %241 = icmp slt i8 %240, 0, !dbg !1669
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1670
  br i1 %241, label %243, label %242, !dbg !1670

; <label>:242:                                    ; preds = %234, %219
  br label %243, !dbg !1671

; <label>:243:                                    ; preds = %234, %242
  %244 = phi i32 [ %226, %242 ], [ %236, %234 ], !dbg !1672
  %245 = phi i32* [ %225, %242 ], [ %235, %234 ], !dbg !1673
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1674
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1675
  %246 = and i32 %244, 63, !dbg !1672
  %247 = icmp eq i32 %246, 27, !dbg !1677
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1678
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1679
  br i1 %247, label %248, label %268, !dbg !1678

; <label>:248:                                    ; preds = %243
  %249 = lshr i32 %244, 23, !dbg !1680
  br i1 %215, label %255, label %250, !dbg !1681

; <label>:250:                                    ; preds = %248
  %251 = icmp eq i32 %249, %2, !dbg !1682
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1683
  br i1 %251, label %255, label %252, !dbg !1683

; <label>:252:                                    ; preds = %250
  %253 = and i32 %244, -16321, !dbg !1684
  %254 = or i32 %253, %218, !dbg !1684
  br label %260, !dbg !1684

; <label>:255:                                    ; preds = %250, %248
  %256 = shl nuw nsw i32 %249, 6, !dbg !1685
  %257 = and i32 %244, 8372224, !dbg !1685
  %258 = or i32 %257, %256, !dbg !1685
  %259 = or i32 %258, 26, !dbg !1685
  br label %260

; <label>:260:                                    ; preds = %255, %252
  %261 = phi i32 [ %259, %255 ], [ %254, %252 ]
  store i32 %261, i32* %245, align 4, !dbg !1679, !tbaa !550
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1686
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1687
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1688
  %262 = xor i32 %220, -1, !dbg !1694
  %263 = add i32 %138, %262, !dbg !1694
  %264 = tail call i32 @abs(i32 %263) #5, !dbg !1696
  %265 = icmp sgt i32 %264, 131071, !dbg !1697
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1698
  br i1 %265, label %266, label %275, !dbg !1698

; <label>:266:                                    ; preds = %260
  %267 = load %struct.LexState*, %struct.LexState** %216, align 8, !dbg !1699, !tbaa !589
  tail call void @luaX_syntaxerror(%struct.LexState* %267, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !1700
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1700
  br label %275, !dbg !1700

; <label>:268:                                    ; preds = %243
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1687
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1688
  %269 = xor i32 %220, -1, !dbg !1706
  %270 = add i32 %136, %269, !dbg !1706
  %271 = tail call i32 @abs(i32 %270) #5, !dbg !1708
  %272 = icmp sgt i32 %271, 131071, !dbg !1709
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1710
  br i1 %272, label %273, label %275, !dbg !1710

; <label>:273:                                    ; preds = %268
  %274 = load %struct.LexState*, %struct.LexState** %216, align 8, !dbg !1711, !tbaa !589
  tail call void @luaX_syntaxerror(%struct.LexState* %274, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !1712
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1712
  br label %275, !dbg !1712

; <label>:275:                                    ; preds = %273, %268, %266, %260
  %276 = phi i32 [ %263, %260 ], [ %263, %266 ], [ %270, %268 ], [ %270, %273 ]
  %277 = load i32, i32* %225, align 4, !dbg !1713, !tbaa !550
  %278 = and i32 %277, 16383, !dbg !1713
  %279 = shl i32 %276, 14, !dbg !1713
  %280 = add i32 %279, 2147467264, !dbg !1713
  %281 = or i32 %278, %280, !dbg !1713
  store i32 %281, i32* %225, align 4, !dbg !1713, !tbaa !550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1714
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1645
  %282 = icmp eq i32 %232, -1, !dbg !1646
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1645
  br i1 %282, label %283, label %219, !dbg !1645, !llvm.loop !886

; <label>:283:                                    ; preds = %275, %210
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1715
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1716
  br label %284, !dbg !1716

; <label>:284:                                    ; preds = %13, %283
  store i32 -1, i32* %8, align 8, !dbg !1717, !tbaa !1364
  store i32 -1, i32* %15, align 4, !dbg !1718, !tbaa !1365
  %285 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !1719
  %286 = bitcast %union.anon.3* %285 to i32*, !dbg !1720
  store i32 %2, i32* %286, align 8, !dbg !1721, !tbaa !841
  store i32 12, i32* %5, align 8, !dbg !1722, !tbaa !1090
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1723
  ret void, !dbg !1723
}

; Function Attrs: noredzone nounwind
define hidden i32 @luaK_exp2anyreg(%struct.FuncState*, %struct.expdesc* nocapture) local_unnamed_addr #0 !dbg !1724 {
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %1) #6, !dbg !1732
  %3 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0, !dbg !1733
  %4 = load i32, i32* %3, align 8, !dbg !1733, !tbaa !1090
  %5 = icmp eq i32 %4, 12, !dbg !1735
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1736
  br i1 %5, label %9, label %6, !dbg !1736

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !1737
  %8 = bitcast %union.anon.3* %7 to i32*, !dbg !1738
  br label %24, !dbg !1736

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2, !dbg !1739
  %11 = load i32, i32* %10, align 8, !dbg !1739, !tbaa !1364
  %12 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3, !dbg !1739
  %13 = load i32, i32* %12, align 4, !dbg !1739, !tbaa !1365
  %14 = icmp eq i32 %11, %13, !dbg !1739
  %15 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !1742
  %16 = bitcast %union.anon.3* %15 to i32*, !dbg !1742
  %17 = load i32, i32* %16, align 8, !dbg !1742, !tbaa !841
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1743
  br i1 %14, label %29, label %18, !dbg !1743

; <label>:18:                                     ; preds = %9
  %19 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !1744
  %20 = load i8, i8* %19, align 2, !dbg !1744, !tbaa !537
  %21 = zext i8 %20 to i32, !dbg !1746
  %22 = icmp slt i32 %17, %21, !dbg !1747
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1748
  br i1 %22, label %24, label %23, !dbg !1748

; <label>:23:                                     ; preds = %18
  tail call fastcc void @exp2reg(%struct.FuncState* nonnull %0, %struct.expdesc* nonnull %1, i32 %17) #6, !dbg !1749
  br label %26, !dbg !1751

; <label>:24:                                     ; preds = %6, %18
  %25 = phi i32* [ %8, %6 ], [ %16, %18 ], !dbg !1738
  tail call void @luaK_exp2nextreg(%struct.FuncState* %0, %struct.expdesc* nonnull %1) #6, !dbg !1752
  br label %26, !dbg !1753

; <label>:26:                                     ; preds = %23, %24
  %27 = phi i32* [ %25, %24 ], [ %16, %23 ]
  %28 = load i32, i32* %27, align 8, !dbg !1754, !tbaa !841
  br label %29, !dbg !1742

; <label>:29:                                     ; preds = %26, %9
  %30 = phi i32 [ %17, %9 ], [ %28, %26 ], !dbg !1742
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1742
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1755
  ret i32 %30, !dbg !1755
}

; Function Attrs: noredzone nounwind
define hidden void @luaK_exp2val(%struct.FuncState*, %struct.expdesc* nocapture) local_unnamed_addr #0 !dbg !1756 {
  %3 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2, !dbg !1762
  %4 = load i32, i32* %3, align 8, !dbg !1762, !tbaa !1364
  %5 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3, !dbg !1762
  %6 = load i32, i32* %5, align 4, !dbg !1762, !tbaa !1365
  %7 = icmp eq i32 %4, %6, !dbg !1762
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1764
  br i1 %7, label %27, label %8, !dbg !1764

; <label>:8:                                      ; preds = %2
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* nonnull %1) #5, !dbg !1768
  %9 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0, !dbg !1769
  %10 = load i32, i32* %9, align 8, !dbg !1769, !tbaa !1090
  %11 = icmp eq i32 %10, 12, !dbg !1770
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1771
  br i1 %11, label %12, label %25, !dbg !1771

; <label>:12:                                     ; preds = %8
  %13 = load i32, i32* %3, align 8, !dbg !1772, !tbaa !1364
  %14 = load i32, i32* %5, align 4, !dbg !1772, !tbaa !1365
  %15 = icmp eq i32 %13, %14, !dbg !1772
  %16 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !1773
  %17 = bitcast %union.anon.3* %16 to i32*, !dbg !1773
  %18 = load i32, i32* %17, align 8, !dbg !1773, !tbaa !841
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1774
  br i1 %15, label %26, label %19, !dbg !1774

; <label>:19:                                     ; preds = %12
  %20 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !1775
  %21 = load i8, i8* %20, align 2, !dbg !1775, !tbaa !537
  %22 = zext i8 %21 to i32, !dbg !1776
  %23 = icmp slt i32 %18, %22, !dbg !1777
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1778
  br i1 %23, label %25, label %24, !dbg !1778

; <label>:24:                                     ; preds = %19
  tail call fastcc void @exp2reg(%struct.FuncState* nonnull %0, %struct.expdesc* nonnull %1, i32 %18) #5, !dbg !1779
  br label %26, !dbg !1780

; <label>:25:                                     ; preds = %8, %19
  tail call void @luaK_exp2nextreg(%struct.FuncState* %0, %struct.expdesc* nonnull %1) #5, !dbg !1781
  br label %26, !dbg !1782

; <label>:26:                                     ; preds = %12, %24, %25
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1783
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1784
  br label %28, !dbg !1785

; <label>:27:                                     ; preds = %2
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* nonnull %1) #6, !dbg !1786
  br label %28

; <label>:28:                                     ; preds = %27, %26
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1787
  ret void, !dbg !1787
}

; Function Attrs: noredzone nounwind
define hidden i32 @luaK_exp2RK(%struct.FuncState*, %struct.expdesc* nocapture) local_unnamed_addr #0 !dbg !1788 {
  %3 = alloca %struct.lua_TValue, align 8
  %4 = alloca %struct.lua_TValue, align 8
  %5 = alloca %struct.lua_TValue, align 8
  %6 = alloca %struct.lua_TValue, align 8
  tail call void @luaK_exp2val(%struct.FuncState* %0, %struct.expdesc* %1) #6, !dbg !1794
  %7 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0, !dbg !1795
  %8 = load i32, i32* %7, align 8, !dbg !1795, !tbaa !1090
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1796
  switch i32 %8, label %54 [
    i32 5, label %9
    i32 2, label %9
    i32 3, label %9
    i32 1, label %9
    i32 4, label %47
  ], !dbg !1796

; <label>:9:                                      ; preds = %2, %2, %2, %2
  %10 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 10, !dbg !1797
  %11 = load i32, i32* %10, align 8, !dbg !1797, !tbaa !1021
  %12 = icmp slt i32 %11, 256, !dbg !1801
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1802
  br i1 %12, label %13, label %54, !dbg !1802

; <label>:13:                                     ; preds = %9
  %14 = icmp eq i32 %8, 1, !dbg !1803
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1805
  br i1 %14, label %15, label %25, !dbg !1805

; <label>:15:                                     ; preds = %13
  %16 = bitcast %struct.lua_TValue* %5 to i8*, !dbg !1815
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %16) #4, !dbg !1815
  %17 = bitcast %struct.lua_TValue* %6 to i8*, !dbg !1815
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %17) #4, !dbg !1815
  %18 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 0, i32 1, !dbg !1816
  store i32 0, i32* %18, align 8, !dbg !1816, !tbaa !974
  %19 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 1, !dbg !1817
  %20 = bitcast %struct.Table** %19 to i64*, !dbg !1817
  %21 = load i64, i64* %20, align 8, !dbg !1817, !tbaa !1007
  %22 = bitcast %struct.lua_TValue* %5 to i64*, !dbg !1817
  store i64 %21, i64* %22, align 8, !dbg !1817, !tbaa !841
  %23 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %5, i64 0, i32 1, !dbg !1817
  store i32 5, i32* %23, align 8, !dbg !1817, !tbaa !974
  %24 = call fastcc i32 @addk(%struct.FuncState* nonnull %0, %struct.lua_TValue* nonnull %5, %struct.lua_TValue* nonnull %6) #5, !dbg !1820
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %17) #4, !dbg !1821
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %16) #4, !dbg !1821
  br label %42, !dbg !1805

; <label>:25:                                     ; preds = %13
  %26 = icmp eq i32 %8, 5, !dbg !1822
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1823
  br i1 %26, label %27, label %35, !dbg !1823

; <label>:27:                                     ; preds = %25
  %28 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, i32 0, !dbg !1824
  %29 = bitcast double* %28 to i64*, !dbg !1824
  %30 = load i64, i64* %29, align 8, !dbg !1824, !tbaa !841
  %31 = bitcast %struct.lua_TValue* %4 to i8*, !dbg !1828
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %31) #4, !dbg !1828
  %32 = bitcast %struct.lua_TValue* %4 to i64*, !dbg !1829
  store i64 %30, i64* %32, align 8, !dbg !1829, !tbaa !841
  %33 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %4, i64 0, i32 1, !dbg !1829
  store i32 3, i32* %33, align 8, !dbg !1829, !tbaa !974
  %34 = call fastcc i32 @addk(%struct.FuncState* nonnull %0, %struct.lua_TValue* nonnull %4, %struct.lua_TValue* nonnull %4) #5, !dbg !1831
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %31) #4, !dbg !1832
  br label %42, !dbg !1823

; <label>:35:                                     ; preds = %25
  %36 = icmp eq i32 %8, 2, !dbg !1833
  %37 = zext i1 %36 to i32, !dbg !1833
  %38 = bitcast %struct.lua_TValue* %3 to i8*, !dbg !1844
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %38) #4, !dbg !1844
  %39 = bitcast %struct.lua_TValue* %3 to i32*, !dbg !1845
  store i32 %37, i32* %39, align 8, !dbg !1845, !tbaa !841
  %40 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3, i64 0, i32 1, !dbg !1845
  store i32 1, i32* %40, align 8, !dbg !1845, !tbaa !974
  %41 = call fastcc i32 @addk(%struct.FuncState* nonnull %0, %struct.lua_TValue* nonnull %3, %struct.lua_TValue* nonnull %3) #5, !dbg !1847
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %38) #4, !dbg !1848
  br label %42, !dbg !1823

; <label>:42:                                     ; preds = %27, %35, %15
  %43 = phi i32 [ %24, %15 ], [ %34, %27 ], [ %41, %35 ], !dbg !1805
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1849
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1849
  %44 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !1850
  %45 = bitcast %union.anon.3* %44 to i32*, !dbg !1851
  store i32 %43, i32* %45, align 8, !dbg !1852, !tbaa !841
  store i32 4, i32* %7, align 8, !dbg !1853, !tbaa !1090
  %46 = or i32 %43, 256, !dbg !1854
  br label %82, !dbg !1855

; <label>:47:                                     ; preds = %2
  %48 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !1856
  %49 = bitcast %union.anon.3* %48 to i32*, !dbg !1859
  %50 = load i32, i32* %49, align 8, !dbg !1859, !tbaa !841
  %51 = icmp slt i32 %50, 256, !dbg !1860
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1861
  br i1 %51, label %52, label %54, !dbg !1861

; <label>:52:                                     ; preds = %47
  %53 = or i32 %50, 256, !dbg !1862
  br label %82, !dbg !1863

; <label>:54:                                     ; preds = %2, %47, %9
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* nonnull %1) #5, !dbg !1867
  %55 = load i32, i32* %7, align 8, !dbg !1868, !tbaa !1090
  %56 = icmp eq i32 %55, 12, !dbg !1869
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1870
  br i1 %56, label %60, label %57, !dbg !1870

; <label>:57:                                     ; preds = %54
  %58 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !1871
  %59 = bitcast %union.anon.3* %58 to i32*, !dbg !1872
  br label %75, !dbg !1870

; <label>:60:                                     ; preds = %54
  %61 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2, !dbg !1873
  %62 = load i32, i32* %61, align 8, !dbg !1873, !tbaa !1364
  %63 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3, !dbg !1873
  %64 = load i32, i32* %63, align 4, !dbg !1873, !tbaa !1365
  %65 = icmp eq i32 %62, %64, !dbg !1873
  %66 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !1874
  %67 = bitcast %union.anon.3* %66 to i32*, !dbg !1874
  %68 = load i32, i32* %67, align 8, !dbg !1874, !tbaa !841
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1875
  br i1 %65, label %80, label %69, !dbg !1875

; <label>:69:                                     ; preds = %60
  %70 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !1876
  %71 = load i8, i8* %70, align 2, !dbg !1876, !tbaa !537
  %72 = zext i8 %71 to i32, !dbg !1877
  %73 = icmp slt i32 %68, %72, !dbg !1878
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1879
  br i1 %73, label %75, label %74, !dbg !1879

; <label>:74:                                     ; preds = %69
  tail call fastcc void @exp2reg(%struct.FuncState* nonnull %0, %struct.expdesc* nonnull %1, i32 %68) #5, !dbg !1880
  br label %77, !dbg !1881

; <label>:75:                                     ; preds = %69, %57
  %76 = phi i32* [ %59, %57 ], [ %67, %69 ], !dbg !1872
  tail call void @luaK_exp2nextreg(%struct.FuncState* %0, %struct.expdesc* nonnull %1) #5, !dbg !1882
  br label %77, !dbg !1883

; <label>:77:                                     ; preds = %75, %74
  %78 = phi i32* [ %67, %74 ], [ %76, %75 ]
  %79 = load i32, i32* %78, align 8, !dbg !1884, !tbaa !841
  br label %80, !dbg !1884

; <label>:80:                                     ; preds = %77, %60
  %81 = phi i32 [ %68, %60 ], [ %79, %77 ], !dbg !1874
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1884
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1885
  br label %82, !dbg !1886

; <label>:82:                                     ; preds = %80, %52, %42
  %83 = phi i32 [ %81, %80 ], [ %53, %52 ], [ %46, %42 ], !dbg !1849
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1849
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1887
  ret i32 %83, !dbg !1887
}

; Function Attrs: noredzone nounwind
define hidden void @luaK_storevar(%struct.FuncState*, %struct.expdesc* nocapture readonly, %struct.expdesc*) local_unnamed_addr #0 !dbg !1888 {
  %4 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0, !dbg !1905
  %5 = load i32, i32* %4, align 8, !dbg !1905, !tbaa !1090
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1906
  switch i32 %5, label %132 [
    i32 6, label %6
    i32 7, label %30
    i32 8, label %71
    i32 9, label %112
  ], !dbg !1906

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0, !dbg !1911
  %8 = load i32, i32* %7, align 8, !dbg !1911, !tbaa !1090
  %9 = icmp eq i32 %8, 12, !dbg !1912
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1913
  br i1 %9, label %10, label %26, !dbg !1913

; <label>:10:                                     ; preds = %6
  %11 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, !dbg !1914
  %12 = bitcast %union.anon.3* %11 to i32*, !dbg !1915
  %13 = load i32, i32* %12, align 8, !dbg !1915, !tbaa !841
  %14 = and i32 %13, 256, !dbg !1919
  %15 = icmp eq i32 %14, 0, !dbg !1919
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1920
  br i1 %15, label %16, label %25, !dbg !1920

; <label>:16:                                     ; preds = %10
  %17 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !1921
  %18 = load i8, i8* %17, align 2, !dbg !1921, !tbaa !537
  %19 = zext i8 %18 to i32, !dbg !1922
  %20 = icmp slt i32 %13, %19, !dbg !1923
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1924
  br i1 %20, label %25, label %21, !dbg !1924

; <label>:21:                                     ; preds = %16
  %22 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !1925
  %23 = load i32, i32* %22, align 4, !dbg !1926, !tbaa !910
  %24 = add nsw i32 %23, -1, !dbg !1926
  store i32 %24, i32* %22, align 4, !dbg !1926, !tbaa !910
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1927
  br label %25, !dbg !1927

; <label>:25:                                     ; preds = %21, %16, %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1928
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1929
  br label %26, !dbg !1929

; <label>:26:                                     ; preds = %6, %25
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1930
  %27 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !1931
  %28 = bitcast %union.anon.3* %27 to i32*, !dbg !1932
  %29 = load i32, i32* %28, align 8, !dbg !1932, !tbaa !841
  tail call fastcc void @exp2reg(%struct.FuncState* %0, %struct.expdesc* nonnull %2, i32 %29) #6, !dbg !1933
  br label %153, !dbg !1934

; <label>:30:                                     ; preds = %3
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %2) #5, !dbg !1938
  %31 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0, !dbg !1939
  %32 = load i32, i32* %31, align 8, !dbg !1939, !tbaa !1090
  %33 = icmp eq i32 %32, 12, !dbg !1940
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1941
  br i1 %33, label %37, label %34, !dbg !1941

; <label>:34:                                     ; preds = %30
  %35 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, !dbg !1942
  %36 = bitcast %union.anon.3* %35 to i32*, !dbg !1943
  br label %52, !dbg !1941

; <label>:37:                                     ; preds = %30
  %38 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2, !dbg !1944
  %39 = load i32, i32* %38, align 8, !dbg !1944, !tbaa !1364
  %40 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3, !dbg !1944
  %41 = load i32, i32* %40, align 4, !dbg !1944, !tbaa !1365
  %42 = icmp eq i32 %39, %41, !dbg !1944
  %43 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, !dbg !1945
  %44 = bitcast %union.anon.3* %43 to i32*, !dbg !1945
  %45 = load i32, i32* %44, align 8, !dbg !1945, !tbaa !841
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1946
  br i1 %42, label %57, label %46, !dbg !1946

; <label>:46:                                     ; preds = %37
  %47 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !1947
  %48 = load i8, i8* %47, align 2, !dbg !1947, !tbaa !537
  %49 = zext i8 %48 to i32, !dbg !1948
  %50 = icmp slt i32 %45, %49, !dbg !1949
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1950
  br i1 %50, label %52, label %51, !dbg !1950

; <label>:51:                                     ; preds = %46
  tail call fastcc void @exp2reg(%struct.FuncState* nonnull %0, %struct.expdesc* nonnull %2, i32 %45) #5, !dbg !1951
  br label %54, !dbg !1952

; <label>:52:                                     ; preds = %46, %34
  %53 = phi i32* [ %36, %34 ], [ %44, %46 ], !dbg !1943
  tail call void @luaK_exp2nextreg(%struct.FuncState* %0, %struct.expdesc* nonnull %2) #5, !dbg !1953
  br label %54, !dbg !1954

; <label>:54:                                     ; preds = %52, %51
  %55 = phi i32* [ %44, %51 ], [ %53, %52 ]
  %56 = load i32, i32* %55, align 8, !dbg !1955, !tbaa !841
  br label %57, !dbg !1955

; <label>:57:                                     ; preds = %54, %37
  %58 = phi i32 [ %45, %37 ], [ %56, %54 ], !dbg !1945
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1955
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1956
  %59 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !1958
  %60 = bitcast %union.anon.3* %59 to i32*, !dbg !1959
  %61 = load i32, i32* %60, align 8, !dbg !1959, !tbaa !841
  %62 = shl i32 %58, 6, !dbg !1966
  %63 = shl i32 %61, 23, !dbg !1966
  %64 = or i32 %62, %63, !dbg !1966
  %65 = or i32 %64, 8, !dbg !1966
  %66 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !1967
  %67 = load %struct.LexState*, %struct.LexState** %66, align 8, !dbg !1967, !tbaa !589
  %68 = getelementptr inbounds %struct.LexState, %struct.LexState* %67, i64 0, i32 2, !dbg !1968
  %69 = load i32, i32* %68, align 8, !dbg !1968, !tbaa !591
  %70 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %65, i32 %69) #5, !dbg !1969
  br label %131

; <label>:71:                                     ; preds = %3
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %2) #5, !dbg !1973
  %72 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0, !dbg !1974
  %73 = load i32, i32* %72, align 8, !dbg !1974, !tbaa !1090
  %74 = icmp eq i32 %73, 12, !dbg !1975
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1976
  br i1 %74, label %78, label %75, !dbg !1976

; <label>:75:                                     ; preds = %71
  %76 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, !dbg !1977
  %77 = bitcast %union.anon.3* %76 to i32*, !dbg !1978
  br label %93, !dbg !1976

; <label>:78:                                     ; preds = %71
  %79 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2, !dbg !1979
  %80 = load i32, i32* %79, align 8, !dbg !1979, !tbaa !1364
  %81 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3, !dbg !1979
  %82 = load i32, i32* %81, align 4, !dbg !1979, !tbaa !1365
  %83 = icmp eq i32 %80, %82, !dbg !1979
  %84 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, !dbg !1980
  %85 = bitcast %union.anon.3* %84 to i32*, !dbg !1980
  %86 = load i32, i32* %85, align 8, !dbg !1980, !tbaa !841
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1981
  br i1 %83, label %98, label %87, !dbg !1981

; <label>:87:                                     ; preds = %78
  %88 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !1982
  %89 = load i8, i8* %88, align 2, !dbg !1982, !tbaa !537
  %90 = zext i8 %89 to i32, !dbg !1983
  %91 = icmp slt i32 %86, %90, !dbg !1984
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1985
  br i1 %91, label %93, label %92, !dbg !1985

; <label>:92:                                     ; preds = %87
  tail call fastcc void @exp2reg(%struct.FuncState* nonnull %0, %struct.expdesc* nonnull %2, i32 %86) #5, !dbg !1986
  br label %95, !dbg !1987

; <label>:93:                                     ; preds = %87, %75
  %94 = phi i32* [ %77, %75 ], [ %85, %87 ], !dbg !1978
  tail call void @luaK_exp2nextreg(%struct.FuncState* %0, %struct.expdesc* nonnull %2) #5, !dbg !1988
  br label %95, !dbg !1989

; <label>:95:                                     ; preds = %93, %92
  %96 = phi i32* [ %85, %92 ], [ %94, %93 ]
  %97 = load i32, i32* %96, align 8, !dbg !1990, !tbaa !841
  br label %98, !dbg !1990

; <label>:98:                                     ; preds = %95, %78
  %99 = phi i32 [ %86, %78 ], [ %97, %95 ], !dbg !1980
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1990
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1991
  %100 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !1993
  %101 = bitcast %union.anon.3* %100 to i32*, !dbg !1994
  %102 = load i32, i32* %101, align 8, !dbg !1994, !tbaa !841
  %103 = shl i32 %99, 6, !dbg !2000
  %104 = shl i32 %102, 14, !dbg !2000
  %105 = or i32 %103, %104, !dbg !2000
  %106 = or i32 %105, 7, !dbg !2000
  %107 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !2001
  %108 = load %struct.LexState*, %struct.LexState** %107, align 8, !dbg !2001, !tbaa !589
  %109 = getelementptr inbounds %struct.LexState, %struct.LexState* %108, i64 0, i32 2, !dbg !2002
  %110 = load i32, i32* %109, align 8, !dbg !2002, !tbaa !591
  %111 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %106, i32 %110) #5, !dbg !2003
  br label %131

; <label>:112:                                    ; preds = %3
  %113 = tail call i32 @luaK_exp2RK(%struct.FuncState* %0, %struct.expdesc* %2) #6, !dbg !2004
  %114 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !2006
  %115 = bitcast %union.anon.3* %114 to %struct.anon.4*, !dbg !2007
  %116 = bitcast %union.anon.3* %114 to i32*, !dbg !2008
  %117 = load i32, i32* %116, align 8, !dbg !2008, !tbaa !841
  %118 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %115, i64 0, i32 1, !dbg !2009
  %119 = load i32, i32* %118, align 4, !dbg !2009, !tbaa !841
  %120 = shl i32 %117, 6, !dbg !2016
  %121 = shl i32 %119, 23, !dbg !2016
  %122 = shl i32 %113, 14, !dbg !2016
  %123 = or i32 %122, %120, !dbg !2016
  %124 = or i32 %123, %121, !dbg !2016
  %125 = or i32 %124, 9, !dbg !2016
  %126 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !2017
  %127 = load %struct.LexState*, %struct.LexState** %126, align 8, !dbg !2017, !tbaa !589
  %128 = getelementptr inbounds %struct.LexState, %struct.LexState* %127, i64 0, i32 2, !dbg !2018
  %129 = load i32, i32* %128, align 8, !dbg !2018, !tbaa !591
  %130 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %125, i32 %129) #5, !dbg !2019
  br label %131

; <label>:131:                                    ; preds = %57, %98, %112
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1955
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %132, !dbg !2020

; <label>:132:                                    ; preds = %131, %3
  %133 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0, !dbg !2020
  %134 = load i32, i32* %133, align 8, !dbg !2020, !tbaa !1090
  %135 = icmp eq i32 %134, 12, !dbg !2024
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2025
  br i1 %135, label %136, label %152, !dbg !2025

; <label>:136:                                    ; preds = %132
  %137 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, !dbg !2026
  %138 = bitcast %union.anon.3* %137 to i32*, !dbg !2027
  %139 = load i32, i32* %138, align 8, !dbg !2027, !tbaa !841
  %140 = and i32 %139, 256, !dbg !2031
  %141 = icmp eq i32 %140, 0, !dbg !2031
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2032
  br i1 %141, label %142, label %151, !dbg !2032

; <label>:142:                                    ; preds = %136
  %143 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !2033
  %144 = load i8, i8* %143, align 2, !dbg !2033, !tbaa !537
  %145 = zext i8 %144 to i32, !dbg !2034
  %146 = icmp slt i32 %139, %145, !dbg !2035
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2036
  br i1 %146, label %151, label %147, !dbg !2036

; <label>:147:                                    ; preds = %142
  %148 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !2037
  %149 = load i32, i32* %148, align 4, !dbg !2038, !tbaa !910
  %150 = add nsw i32 %149, -1, !dbg !2038
  store i32 %150, i32* %148, align 4, !dbg !2038, !tbaa !910
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2039
  br label %151, !dbg !2039

; <label>:151:                                    ; preds = %147, %142, %136
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2040
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2041
  br label %152, !dbg !2041

; <label>:152:                                    ; preds = %132, %151
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2042
  br label %153, !dbg !2043

; <label>:153:                                    ; preds = %152, %26
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2044
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2043
  ret void, !dbg !2043
}

; Function Attrs: noredzone nounwind
define hidden void @luaK_self(%struct.FuncState*, %struct.expdesc* nocapture, %struct.expdesc* nocapture) local_unnamed_addr #0 !dbg !2045 {
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %1) #5, !dbg !2057
  %4 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0, !dbg !2058
  %5 = load i32, i32* %4, align 8, !dbg !2058, !tbaa !1090
  %6 = icmp eq i32 %5, 12, !dbg !2059
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2060
  br i1 %6, label %7, label %22, !dbg !2060

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2, !dbg !2061
  %9 = load i32, i32* %8, align 8, !dbg !2061, !tbaa !1364
  %10 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3, !dbg !2061
  %11 = load i32, i32* %10, align 4, !dbg !2061, !tbaa !1365
  %12 = icmp eq i32 %9, %11, !dbg !2061
  %13 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !2062
  %14 = bitcast %union.anon.3* %13 to i32*, !dbg !2062
  %15 = load i32, i32* %14, align 8, !dbg !2062, !tbaa !841
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2063
  br i1 %12, label %23, label %16, !dbg !2063

; <label>:16:                                     ; preds = %7
  %17 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !2064
  %18 = load i8, i8* %17, align 2, !dbg !2064, !tbaa !537
  %19 = zext i8 %18 to i32, !dbg !2065
  %20 = icmp slt i32 %15, %19, !dbg !2066
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2067
  br i1 %20, label %22, label %21, !dbg !2067

; <label>:21:                                     ; preds = %16
  tail call fastcc void @exp2reg(%struct.FuncState* nonnull %0, %struct.expdesc* nonnull %1, i32 %15) #5, !dbg !2068
  br label %23, !dbg !2069

; <label>:22:                                     ; preds = %3, %16
  tail call void @luaK_exp2nextreg(%struct.FuncState* %0, %struct.expdesc* nonnull %1) #5, !dbg !2070
  br label %23, !dbg !2071

; <label>:23:                                     ; preds = %7, %21, %22
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2072
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2073
  %24 = load i32, i32* %4, align 8, !dbg !2077, !tbaa !1090
  %25 = icmp eq i32 %24, 12, !dbg !2078
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2079
  br i1 %25, label %26, label %42, !dbg !2079

; <label>:26:                                     ; preds = %23
  %27 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !2080
  %28 = bitcast %union.anon.3* %27 to i32*, !dbg !2081
  %29 = load i32, i32* %28, align 8, !dbg !2081, !tbaa !841
  %30 = and i32 %29, 256, !dbg !2085
  %31 = icmp eq i32 %30, 0, !dbg !2085
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2086
  br i1 %31, label %32, label %41, !dbg !2086

; <label>:32:                                     ; preds = %26
  %33 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !2087
  %34 = load i8, i8* %33, align 2, !dbg !2087, !tbaa !537
  %35 = zext i8 %34 to i32, !dbg !2088
  %36 = icmp slt i32 %29, %35, !dbg !2089
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2090
  br i1 %36, label %41, label %37, !dbg !2090

; <label>:37:                                     ; preds = %32
  %38 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !2091
  %39 = load i32, i32* %38, align 4, !dbg !2092, !tbaa !910
  %40 = add nsw i32 %39, -1, !dbg !2092
  store i32 %40, i32* %38, align 4, !dbg !2092, !tbaa !910
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2093
  br label %41, !dbg !2093

; <label>:41:                                     ; preds = %37, %32, %26
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2094
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2095
  br label %42, !dbg !2095

; <label>:42:                                     ; preds = %23, %41
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2096
  %43 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !2097
  %44 = load i32, i32* %43, align 4, !dbg !2097, !tbaa !910
  %45 = add nsw i32 %44, 2, !dbg !2105
  %46 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0, !dbg !2107
  %47 = load %struct.Proto*, %struct.Proto** %46, align 8, !dbg !2107, !tbaa !542
  %48 = getelementptr inbounds %struct.Proto, %struct.Proto* %47, i64 0, i32 22, !dbg !2108
  %49 = load i8, i8* %48, align 1, !dbg !2108, !tbaa !916
  %50 = zext i8 %49 to i32, !dbg !2109
  %51 = icmp sgt i32 %45, %50, !dbg !2110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2111
  br i1 %51, label %52, label %65, !dbg !2111

; <label>:52:                                     ; preds = %42
  %53 = icmp sgt i32 %44, 247, !dbg !2112
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2113
  br i1 %53, label %54, label %61, !dbg !2113

; <label>:54:                                     ; preds = %52
  %55 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !2114
  %56 = load %struct.LexState*, %struct.LexState** %55, align 8, !dbg !2114, !tbaa !589
  tail call void @luaX_syntaxerror(%struct.LexState* %56, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0)) #5, !dbg !2115
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2115
  %57 = load %struct.Proto*, %struct.Proto** %46, align 8, !dbg !2116, !tbaa !542
  %58 = getelementptr inbounds %struct.Proto, %struct.Proto* %57, i64 0, i32 22, !dbg !2117
  %59 = load i32, i32* %43, align 4, !dbg !2118, !tbaa !910
  %60 = add nsw i32 %59, 2, !dbg !2118
  br label %61, !dbg !2115

; <label>:61:                                     ; preds = %54, %52
  %62 = phi i32 [ %60, %54 ], [ %45, %52 ], !dbg !2118
  %63 = phi i8* [ %58, %54 ], [ %48, %52 ], !dbg !2117
  %64 = trunc i32 %45 to i8, !dbg !2119
  store i8 %64, i8* %63, align 1, !dbg !2120, !tbaa !916
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2121
  br label %65, !dbg !2121

; <label>:65:                                     ; preds = %42, %61
  %66 = phi i32 [ %45, %42 ], [ %62, %61 ], !dbg !2118
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2122
  store i32 %66, i32* %43, align 4, !dbg !2118, !tbaa !910
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2123
  %67 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !2124
  %68 = bitcast %union.anon.3* %67 to i32*, !dbg !2125
  %69 = load i32, i32* %68, align 8, !dbg !2125, !tbaa !841
  %70 = tail call i32 @luaK_exp2RK(%struct.FuncState* nonnull %0, %struct.expdesc* %2) #6, !dbg !2126
  %71 = shl i32 %44, 6, !dbg !2133
  %72 = shl i32 %69, 23, !dbg !2133
  %73 = shl i32 %70, 14, !dbg !2133
  %74 = or i32 %71, %72, !dbg !2133
  %75 = or i32 %74, %73, !dbg !2133
  %76 = or i32 %75, 11, !dbg !2133
  %77 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !2134
  %78 = load %struct.LexState*, %struct.LexState** %77, align 8, !dbg !2134, !tbaa !589
  %79 = getelementptr inbounds %struct.LexState, %struct.LexState* %78, i64 0, i32 2, !dbg !2135
  %80 = load i32, i32* %79, align 8, !dbg !2135, !tbaa !591
  %81 = tail call fastcc i32 @luaK_code(%struct.FuncState* nonnull %0, i32 %76, i32 %80) #5, !dbg !2136
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2137
  %82 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0, !dbg !2141
  %83 = load i32, i32* %82, align 8, !dbg !2141, !tbaa !1090
  %84 = icmp eq i32 %83, 12, !dbg !2142
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2143
  br i1 %84, label %85, label %100, !dbg !2143

; <label>:85:                                     ; preds = %65
  %86 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, !dbg !2144
  %87 = bitcast %union.anon.3* %86 to i32*, !dbg !2145
  %88 = load i32, i32* %87, align 8, !dbg !2145, !tbaa !841
  %89 = and i32 %88, 256, !dbg !2149
  %90 = icmp eq i32 %89, 0, !dbg !2149
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2150
  br i1 %90, label %91, label %99, !dbg !2150

; <label>:91:                                     ; preds = %85
  %92 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !2151
  %93 = load i8, i8* %92, align 2, !dbg !2151, !tbaa !537
  %94 = zext i8 %93 to i32, !dbg !2152
  %95 = icmp slt i32 %88, %94, !dbg !2153
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2154
  br i1 %95, label %99, label %96, !dbg !2154

; <label>:96:                                     ; preds = %91
  %97 = load i32, i32* %43, align 4, !dbg !2155, !tbaa !910
  %98 = add nsw i32 %97, -1, !dbg !2155
  store i32 %98, i32* %43, align 4, !dbg !2155, !tbaa !910
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2156
  br label %99, !dbg !2156

; <label>:99:                                     ; preds = %96, %91, %85
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2157
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2158
  br label %100, !dbg !2158

; <label>:100:                                    ; preds = %65, %99
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2159
  store i32 %44, i32* %68, align 8, !dbg !2160, !tbaa !841
  store i32 12, i32* %4, align 8, !dbg !2161, !tbaa !1090
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2162
  ret void, !dbg !2162
}

; Function Attrs: noredzone nounwind
define hidden void @luaK_goiftrue(%struct.FuncState* nocapture, %struct.expdesc* nocapture) local_unnamed_addr #0 !dbg !2163 {
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %1) #6, !dbg !2170
  %3 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0, !dbg !2171
  %4 = load i32, i32* %3, align 8, !dbg !2171, !tbaa !1090
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2172
  switch i32 %4, label %37 [
    i32 4, label %39
    i32 5, label %39
    i32 2, label %39
    i32 10, label %5
  ], !dbg !2172

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !2183
  %7 = bitcast %union.anon.3* %6 to i32*, !dbg !2184
  %8 = load i32, i32* %7, align 8, !dbg !2184, !tbaa !841
  %9 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0, !dbg !2188
  %10 = load %struct.Proto*, %struct.Proto** %9, align 8, !dbg !2188, !tbaa !542
  %11 = getelementptr inbounds %struct.Proto, %struct.Proto* %10, i64 0, i32 4, !dbg !2189
  %12 = load i32*, i32** %11, align 8, !dbg !2189, !tbaa !544
  %13 = sext i32 %8 to i64, !dbg !2190
  %14 = getelementptr inbounds i32, i32* %12, i64 %13, !dbg !2190
  %15 = icmp sgt i32 %8, 0, !dbg !2192
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2193
  br i1 %15, label %16, label %25, !dbg !2193

; <label>:16:                                     ; preds = %5
  %17 = getelementptr inbounds i32, i32* %14, i64 -1, !dbg !2194
  %18 = load i32, i32* %17, align 4, !dbg !2194, !tbaa !550
  %19 = and i32 %18, 63, !dbg !2194
  %20 = zext i32 %19 to i64, !dbg !2194
  %21 = getelementptr inbounds [38 x i8], [38 x i8]* @luaP_opmodes, i64 0, i64 %20, !dbg !2194
  %22 = load i8, i8* %21, align 1, !dbg !2194, !tbaa !841
  %23 = icmp slt i8 %22, 0, !dbg !2194
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2195
  br i1 %23, label %24, label %25, !dbg !2195

; <label>:24:                                     ; preds = %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2196
  br label %27, !dbg !2196

; <label>:25:                                     ; preds = %16, %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2197
  %26 = load i32, i32* %14, align 4, !dbg !2198, !tbaa !550
  br label %27, !dbg !2197

; <label>:27:                                     ; preds = %24, %25
  %28 = phi i32 [ %18, %24 ], [ %26, %25 ], !dbg !2198
  %29 = phi i32* [ %17, %24 ], [ %14, %25 ], !dbg !2199
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2200
  %30 = and i32 %28, -16321, !dbg !2198
  %31 = and i32 %28, 16320, !dbg !2198
  %32 = icmp eq i32 %31, 0, !dbg !2198
  %33 = zext i1 %32 to i32, !dbg !2198
  %34 = shl nuw nsw i32 %33, 6, !dbg !2198
  %35 = or i32 %34, %30, !dbg !2198
  store i32 %35, i32* %29, align 4, !dbg !2198, !tbaa !550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2202
  %36 = load i32, i32* %7, align 8, !dbg !2203, !tbaa !841
  br label %39, !dbg !2205

; <label>:37:                                     ; preds = %2
  %38 = tail call fastcc i32 @jumponcond(%struct.FuncState* %0, %struct.expdesc* nonnull %1, i32 0) #6, !dbg !2206
  br label %39, !dbg !2208

; <label>:39:                                     ; preds = %2, %2, %2, %37, %27
  %40 = phi i32 [ %38, %37 ], [ %36, %27 ], [ -1, %2 ], [ -1, %2 ], [ -1, %2 ], !dbg !2209
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2209
  %41 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3, !dbg !2211
  tail call void @luaK_concat(%struct.FuncState* %0, i32* nonnull %41, i32 %40) #6, !dbg !2212
  %42 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2, !dbg !2213
  %43 = load i32, i32* %42, align 8, !dbg !2213, !tbaa !1364
  %44 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 6, !dbg !2219
  %45 = load i32, i32* %44, align 8, !dbg !2219, !tbaa !521
  %46 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 7, !dbg !2220
  store i32 %45, i32* %46, align 4, !dbg !2221, !tbaa !529
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2222
  %47 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 8, !dbg !2223
  tail call void @luaK_concat(%struct.FuncState* %0, i32* nonnull %47, i32 %43) #5, !dbg !2224
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2225
  store i32 -1, i32* %42, align 8, !dbg !2226, !tbaa !1364
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2227
  ret void, !dbg !2227
}

; Function Attrs: noredzone nounwind
define internal fastcc i32 @jumponcond(%struct.FuncState* nocapture, %struct.expdesc* nocapture, i32) unnamed_addr #0 !dbg !2228 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0, !dbg !2241
  %7 = load i32, i32* %6, align 8, !dbg !2241, !tbaa !1090
  %8 = icmp eq i32 %7, 11, !dbg !2242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2243
  br i1 %8, label %9, label %47, !dbg !2243

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0, !dbg !2244
  %11 = load %struct.Proto*, %struct.Proto** %10, align 8, !dbg !2244, !tbaa !542
  %12 = getelementptr inbounds %struct.Proto, %struct.Proto* %11, i64 0, i32 4, !dbg !2244
  %13 = load i32*, i32** %12, align 8, !dbg !2244, !tbaa !544
  %14 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !2244
  %15 = bitcast %union.anon.3* %14 to i32*, !dbg !2244
  %16 = load i32, i32* %15, align 8, !dbg !2244, !tbaa !841
  %17 = sext i32 %16 to i64, !dbg !2244
  %18 = getelementptr inbounds i32, i32* %13, i64 %17, !dbg !2244
  %19 = load i32, i32* %18, align 4, !dbg !2244, !tbaa !550
  %20 = and i32 %19, 63, !dbg !2246
  %21 = icmp eq i32 %20, 19, !dbg !2248
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2249
  br i1 %21, label %23, label %22, !dbg !2249

; <label>:22:                                     ; preds = %9
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2250
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2258
  br label %50, !dbg !2258

; <label>:23:                                     ; preds = %9
  %24 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 6, !dbg !2259
  %25 = load i32, i32* %24, align 8, !dbg !2261, !tbaa !521
  %26 = add nsw i32 %25, -1, !dbg !2261
  store i32 %26, i32* %24, align 8, !dbg !2261, !tbaa !521
  %27 = lshr i32 %19, 23, !dbg !2262
  %28 = icmp eq i32 %2, 0, !dbg !2263
  %29 = zext i1 %28 to i32, !dbg !2263
  %30 = shl nuw nsw i32 %27, 6, !dbg !2283
  %31 = shl nuw nsw i32 %29, 14, !dbg !2283
  %32 = or i32 %31, %30, !dbg !2283
  %33 = or i32 %32, 26, !dbg !2283
  %34 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !2284
  %35 = load %struct.LexState*, %struct.LexState** %34, align 8, !dbg !2284, !tbaa !589
  %36 = getelementptr inbounds %struct.LexState, %struct.LexState* %35, i64 0, i32 2, !dbg !2285
  %37 = load i32, i32* %36, align 8, !dbg !2285, !tbaa !591
  %38 = tail call fastcc i32 @luaK_code(%struct.FuncState* nonnull %0, i32 %33, i32 %37) #5, !dbg !2286
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2287
  %39 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 8, !dbg !2290
  %40 = load i32, i32* %39, align 8, !dbg !2290, !tbaa !616
  %41 = bitcast i32* %5 to i8*, !dbg !2292
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %41) #4, !dbg !2292
  store i32 -1, i32* %39, align 8, !dbg !2293, !tbaa !616
  %42 = load %struct.LexState*, %struct.LexState** %34, align 8, !dbg !2299, !tbaa !589
  %43 = getelementptr inbounds %struct.LexState, %struct.LexState* %42, i64 0, i32 2, !dbg !2300
  %44 = load i32, i32* %43, align 8, !dbg !2300, !tbaa !591
  %45 = tail call fastcc i32 @luaK_code(%struct.FuncState* nonnull %0, i32 2147450902, i32 %44) #5, !dbg !2301
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2302
  store i32 %45, i32* %5, align 4, !dbg !2304, !tbaa !550
  call void @luaK_concat(%struct.FuncState* nonnull %0, i32* nonnull %5, i32 %40) #5, !dbg !2305
  %46 = load i32, i32* %5, align 4, !dbg !2306, !tbaa !550
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %41) #4, !dbg !2307
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2308
  br label %117

; <label>:47:                                     ; preds = %3
  %48 = icmp eq i32 %7, 12, !dbg !2309
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2258
  br i1 %48, label %49, label %50, !dbg !2258

; <label>:49:                                     ; preds = %47
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2311
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2315
  br label %81, !dbg !2315

; <label>:50:                                     ; preds = %22, %47
  %51 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !2323
  %52 = load i32, i32* %51, align 4, !dbg !2323, !tbaa !910
  %53 = add nsw i32 %52, 1, !dbg !2324
  %54 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0, !dbg !2326
  %55 = load %struct.Proto*, %struct.Proto** %54, align 8, !dbg !2326, !tbaa !542
  %56 = getelementptr inbounds %struct.Proto, %struct.Proto* %55, i64 0, i32 22, !dbg !2327
  %57 = load i8, i8* %56, align 1, !dbg !2327, !tbaa !916
  %58 = zext i8 %57 to i32, !dbg !2328
  %59 = icmp slt i32 %52, %58, !dbg !2329
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2330
  br i1 %59, label %73, label %60, !dbg !2330

; <label>:60:                                     ; preds = %50
  %61 = icmp sgt i32 %52, 248, !dbg !2331
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2332
  br i1 %61, label %62, label %69, !dbg !2332

; <label>:62:                                     ; preds = %60
  %63 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !2333
  %64 = load %struct.LexState*, %struct.LexState** %63, align 8, !dbg !2333, !tbaa !589
  tail call void @luaX_syntaxerror(%struct.LexState* %64, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0)) #5, !dbg !2334
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2334
  %65 = load %struct.Proto*, %struct.Proto** %54, align 8, !dbg !2335, !tbaa !542
  %66 = getelementptr inbounds %struct.Proto, %struct.Proto* %65, i64 0, i32 22, !dbg !2336
  %67 = load i32, i32* %51, align 4, !dbg !2337, !tbaa !910
  %68 = add nsw i32 %67, 1, !dbg !2337
  br label %69, !dbg !2334

; <label>:69:                                     ; preds = %62, %60
  %70 = phi i32 [ %68, %62 ], [ %53, %60 ], !dbg !2337
  %71 = phi i8* [ %66, %62 ], [ %56, %60 ], !dbg !2336
  %72 = trunc i32 %53 to i8, !dbg !2338
  store i8 %72, i8* %71, align 1, !dbg !2339, !tbaa !916
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2340
  br label %73, !dbg !2340

; <label>:73:                                     ; preds = %50, %69
  %74 = phi i32 [ %53, %50 ], [ %70, %69 ], !dbg !2337
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2341
  store i32 %74, i32* %51, align 4, !dbg !2337, !tbaa !910
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2342
  %75 = add nsw i32 %74, -1, !dbg !2343
  tail call fastcc void @discharge2reg(%struct.FuncState* nonnull %0, %struct.expdesc* nonnull %1, i32 %75) #5, !dbg !2344
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2345
  %76 = load i32, i32* %6, align 8, !dbg !2346, !tbaa !1090
  %77 = icmp eq i32 %76, 12, !dbg !2345
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2311
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2315
  br i1 %77, label %81, label %78, !dbg !2315

; <label>:78:                                     ; preds = %73
  %79 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !2347
  %80 = bitcast %union.anon.3* %79 to i32*, !dbg !2348
  br label %97, !dbg !2315

; <label>:81:                                     ; preds = %49, %73
  %82 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !2349
  %83 = bitcast %union.anon.3* %82 to i32*, !dbg !2350
  %84 = load i32, i32* %83, align 8, !dbg !2350, !tbaa !841
  %85 = and i32 %84, 256, !dbg !2354
  %86 = icmp eq i32 %85, 0, !dbg !2354
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2355
  br i1 %86, label %87, label %96, !dbg !2355

; <label>:87:                                     ; preds = %81
  %88 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !2356
  %89 = load i8, i8* %88, align 2, !dbg !2356, !tbaa !537
  %90 = zext i8 %89 to i32, !dbg !2357
  %91 = icmp slt i32 %84, %90, !dbg !2358
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2359
  br i1 %91, label %96, label %92, !dbg !2359

; <label>:92:                                     ; preds = %87
  %93 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !2360
  %94 = load i32, i32* %93, align 4, !dbg !2361, !tbaa !910
  %95 = add nsw i32 %94, -1, !dbg !2361
  store i32 %95, i32* %93, align 4, !dbg !2361, !tbaa !910
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2362
  br label %96, !dbg !2362

; <label>:96:                                     ; preds = %92, %87, %81
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2363
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2364
  br label %97, !dbg !2364

; <label>:97:                                     ; preds = %78, %96
  %98 = phi i32* [ %80, %78 ], [ %83, %96 ], !dbg !2348
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2365
  %99 = load i32, i32* %98, align 8, !dbg !2348, !tbaa !841
  %100 = shl i32 %99, 23, !dbg !2378
  %101 = shl i32 %2, 14, !dbg !2378
  %102 = or i32 %101, %100, !dbg !2378
  %103 = or i32 %102, 16347, !dbg !2378
  %104 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !2379
  %105 = load %struct.LexState*, %struct.LexState** %104, align 8, !dbg !2379, !tbaa !589
  %106 = getelementptr inbounds %struct.LexState, %struct.LexState* %105, i64 0, i32 2, !dbg !2380
  %107 = load i32, i32* %106, align 8, !dbg !2380, !tbaa !591
  %108 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %103, i32 %107) #5, !dbg !2381
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2382
  %109 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 8, !dbg !2385
  %110 = load i32, i32* %109, align 8, !dbg !2385, !tbaa !616
  %111 = bitcast i32* %4 to i8*, !dbg !2387
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %111) #4, !dbg !2387
  store i32 -1, i32* %109, align 8, !dbg !2388, !tbaa !616
  %112 = load %struct.LexState*, %struct.LexState** %104, align 8, !dbg !2394, !tbaa !589
  %113 = getelementptr inbounds %struct.LexState, %struct.LexState* %112, i64 0, i32 2, !dbg !2395
  %114 = load i32, i32* %113, align 8, !dbg !2395, !tbaa !591
  %115 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 2147450902, i32 %114) #5, !dbg !2396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2397
  store i32 %115, i32* %4, align 4, !dbg !2399, !tbaa !550
  call void @luaK_concat(%struct.FuncState* %0, i32* nonnull %4, i32 %110) #5, !dbg !2400
  %116 = load i32, i32* %4, align 4, !dbg !2401, !tbaa !550
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %111) #4, !dbg !2402
  br label %117, !dbg !2403

; <label>:117:                                    ; preds = %23, %97
  %118 = phi i32 [ %116, %97 ], [ %46, %23 ], !dbg !2404
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2405
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2405
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2406
  ret i32 %118, !dbg !2406
}

; Function Attrs: noredzone nounwind
define hidden void @luaK_indexed(%struct.FuncState*, %struct.expdesc* nocapture, %struct.expdesc* nocapture) local_unnamed_addr #0 !dbg !2407 {
  %4 = tail call i32 @luaK_exp2RK(%struct.FuncState* %0, %struct.expdesc* %2) #6, !dbg !2415
  %5 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !2416
  %6 = bitcast %union.anon.3* %5 to %struct.anon.4*, !dbg !2417
  %7 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %6, i64 0, i32 1, !dbg !2418
  store i32 %4, i32* %7, align 4, !dbg !2419, !tbaa !841
  %8 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0, !dbg !2420
  store i32 9, i32* %8, align 8, !dbg !2421, !tbaa !1090
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2422
  ret void, !dbg !2422
}

; Function Attrs: noredzone nounwind
define hidden void @luaK_prefix(%struct.FuncState*, i32, %struct.expdesc*) local_unnamed_addr #0 !dbg !2423 {
  %4 = alloca %struct.expdesc, align 8
  %5 = bitcast %struct.expdesc* %4 to i8*, !dbg !2435
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #4, !dbg !2435
  %6 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 3, !dbg !2436
  store i32 -1, i32* %6, align 4, !dbg !2437, !tbaa !1365
  %7 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 2, !dbg !2438
  store i32 -1, i32* %7, align 8, !dbg !2439, !tbaa !1364
  %8 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 0, !dbg !2440
  store i32 5, i32* %8, align 8, !dbg !2441, !tbaa !1090
  %9 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 1, i32 0, !dbg !2442
  store double 0.000000e+00, double* %9, align 8, !dbg !2443, !tbaa !841
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2444
  switch i32 %1, label %169 [
    i32 0, label %10
    i32 1, label %44
    i32 2, label %147
  ], !dbg !2444

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0, !dbg !2455
  %12 = load i32, i32* %11, align 8, !dbg !2455, !tbaa !1090
  %13 = icmp eq i32 %12, 5, !dbg !2456
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2457
  br i1 %13, label %14, label %18, !dbg !2457

; <label>:14:                                     ; preds = %10
  %15 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2, !dbg !2458
  %16 = load i32, i32* %15, align 8, !dbg !2458, !tbaa !1364
  %17 = icmp eq i32 %16, -1, !dbg !2459
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2460
  br i1 %17, label %19, label %18, !dbg !2460

; <label>:18:                                     ; preds = %14, %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2461
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2462
  br label %23, !dbg !2462

; <label>:19:                                     ; preds = %14
  %20 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3, !dbg !2463
  %21 = load i32, i32* %20, align 4, !dbg !2463, !tbaa !1365
  %22 = icmp eq i32 %21, -1, !dbg !2464
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2461
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2462
  br i1 %22, label %43, label %23, !dbg !2462

; <label>:23:                                     ; preds = %19, %18
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* nonnull %2) #5, !dbg !2468
  %24 = load i32, i32* %11, align 8, !dbg !2469, !tbaa !1090
  %25 = icmp eq i32 %24, 12, !dbg !2470
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2471
  br i1 %25, label %26, label %41, !dbg !2471

; <label>:26:                                     ; preds = %23
  %27 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2, !dbg !2472
  %28 = load i32, i32* %27, align 8, !dbg !2472, !tbaa !1364
  %29 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3, !dbg !2472
  %30 = load i32, i32* %29, align 4, !dbg !2472, !tbaa !1365
  %31 = icmp eq i32 %28, %30, !dbg !2472
  %32 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, !dbg !2473
  %33 = bitcast %union.anon.3* %32 to i32*, !dbg !2473
  %34 = load i32, i32* %33, align 8, !dbg !2473, !tbaa !841
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2474
  br i1 %31, label %42, label %35, !dbg !2474

; <label>:35:                                     ; preds = %26
  %36 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !2475
  %37 = load i8, i8* %36, align 2, !dbg !2475, !tbaa !537
  %38 = zext i8 %37 to i32, !dbg !2476
  %39 = icmp slt i32 %34, %38, !dbg !2477
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2478
  br i1 %39, label %41, label %40, !dbg !2478

; <label>:40:                                     ; preds = %35
  tail call fastcc void @exp2reg(%struct.FuncState* nonnull %0, %struct.expdesc* nonnull %2, i32 %34) #5, !dbg !2479
  br label %42, !dbg !2480

; <label>:41:                                     ; preds = %23, %35
  tail call void @luaK_exp2nextreg(%struct.FuncState* %0, %struct.expdesc* nonnull %2) #5, !dbg !2481
  br label %42, !dbg !2482

; <label>:42:                                     ; preds = %26, %40, %41
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2483
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2484
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2485
  br label %43, !dbg !2485

; <label>:43:                                     ; preds = %19, %42
  call fastcc void @codearith(%struct.FuncState* %0, i32 18, %struct.expdesc* nonnull %2, %struct.expdesc* nonnull %4) #6, !dbg !2487
  br label %168, !dbg !2488

; <label>:44:                                     ; preds = %3
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %2) #5, !dbg !2498
  %45 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0, !dbg !2499
  %46 = load i32, i32* %45, align 8, !dbg !2499, !tbaa !1090
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2500
  switch i32 %46, label %141 [
    i32 1, label %47
    i32 3, label %47
    i32 4, label %48
    i32 5, label %48
    i32 2, label %48
    i32 10, label %49
    i32 11, label %80
    i32 12, label %80
  ], !dbg !2500

; <label>:47:                                     ; preds = %44, %44
  store i32 2, i32* %45, align 8, !dbg !2501, !tbaa !1090
  br label %140, !dbg !2504

; <label>:48:                                     ; preds = %44, %44, %44
  store i32 3, i32* %45, align 8, !dbg !2505, !tbaa !1090
  br label %140, !dbg !2507

; <label>:49:                                     ; preds = %44
  %50 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, !dbg !2512
  %51 = bitcast %union.anon.3* %50 to i32*, !dbg !2513
  %52 = load i32, i32* %51, align 8, !dbg !2513, !tbaa !841
  %53 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0, !dbg !2517
  %54 = load %struct.Proto*, %struct.Proto** %53, align 8, !dbg !2517, !tbaa !542
  %55 = getelementptr inbounds %struct.Proto, %struct.Proto* %54, i64 0, i32 4, !dbg !2518
  %56 = load i32*, i32** %55, align 8, !dbg !2518, !tbaa !544
  %57 = sext i32 %52 to i64, !dbg !2519
  %58 = getelementptr inbounds i32, i32* %56, i64 %57, !dbg !2519
  %59 = icmp sgt i32 %52, 0, !dbg !2521
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2522
  br i1 %59, label %60, label %69, !dbg !2522

; <label>:60:                                     ; preds = %49
  %61 = getelementptr inbounds i32, i32* %58, i64 -1, !dbg !2523
  %62 = load i32, i32* %61, align 4, !dbg !2523, !tbaa !550
  %63 = and i32 %62, 63, !dbg !2523
  %64 = zext i32 %63 to i64, !dbg !2523
  %65 = getelementptr inbounds [38 x i8], [38 x i8]* @luaP_opmodes, i64 0, i64 %64, !dbg !2523
  %66 = load i8, i8* %65, align 1, !dbg !2523, !tbaa !841
  %67 = icmp slt i8 %66, 0, !dbg !2523
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2524
  br i1 %67, label %68, label %69, !dbg !2524

; <label>:68:                                     ; preds = %60
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2525
  br label %71, !dbg !2525

; <label>:69:                                     ; preds = %60, %49
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2526
  %70 = load i32, i32* %58, align 4, !dbg !2527, !tbaa !550
  br label %71, !dbg !2526

; <label>:71:                                     ; preds = %69, %68
  %72 = phi i32 [ %62, %68 ], [ %70, %69 ], !dbg !2527
  %73 = phi i32* [ %61, %68 ], [ %58, %69 ], !dbg !2528
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2529
  %74 = and i32 %72, -16321, !dbg !2527
  %75 = and i32 %72, 16320, !dbg !2527
  %76 = icmp eq i32 %75, 0, !dbg !2527
  %77 = zext i1 %76 to i32, !dbg !2527
  %78 = shl nuw nsw i32 %77, 6, !dbg !2527
  %79 = or i32 %78, %74, !dbg !2527
  store i32 %79, i32* %73, align 4, !dbg !2527, !tbaa !550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2531
  br label %140, !dbg !2532

; <label>:80:                                     ; preds = %44, %44
  %81 = icmp eq i32 %46, 12, !dbg !2537
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2538
  br i1 %81, label %82, label %83, !dbg !2538

; <label>:82:                                     ; preds = %80
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2539
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2543
  br label %114, !dbg !2543

; <label>:83:                                     ; preds = %80
  %84 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !2550
  %85 = load i32, i32* %84, align 4, !dbg !2550, !tbaa !910
  %86 = add nsw i32 %85, 1, !dbg !2551
  %87 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0, !dbg !2553
  %88 = load %struct.Proto*, %struct.Proto** %87, align 8, !dbg !2553, !tbaa !542
  %89 = getelementptr inbounds %struct.Proto, %struct.Proto* %88, i64 0, i32 22, !dbg !2554
  %90 = load i8, i8* %89, align 1, !dbg !2554, !tbaa !916
  %91 = zext i8 %90 to i32, !dbg !2555
  %92 = icmp slt i32 %85, %91, !dbg !2556
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2557
  br i1 %92, label %106, label %93, !dbg !2557

; <label>:93:                                     ; preds = %83
  %94 = icmp sgt i32 %85, 248, !dbg !2558
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2559
  br i1 %94, label %95, label %102, !dbg !2559

; <label>:95:                                     ; preds = %93
  %96 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !2560
  %97 = load %struct.LexState*, %struct.LexState** %96, align 8, !dbg !2560, !tbaa !589
  tail call void @luaX_syntaxerror(%struct.LexState* %97, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0)) #5, !dbg !2561
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2561
  %98 = load %struct.Proto*, %struct.Proto** %87, align 8, !dbg !2562, !tbaa !542
  %99 = getelementptr inbounds %struct.Proto, %struct.Proto* %98, i64 0, i32 22, !dbg !2563
  %100 = load i32, i32* %84, align 4, !dbg !2564, !tbaa !910
  %101 = add nsw i32 %100, 1, !dbg !2564
  br label %102, !dbg !2561

; <label>:102:                                    ; preds = %95, %93
  %103 = phi i32 [ %101, %95 ], [ %86, %93 ], !dbg !2564
  %104 = phi i8* [ %99, %95 ], [ %89, %93 ], !dbg !2563
  %105 = trunc i32 %86 to i8, !dbg !2565
  store i8 %105, i8* %104, align 1, !dbg !2566, !tbaa !916
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2567
  br label %106, !dbg !2567

; <label>:106:                                    ; preds = %102, %83
  %107 = phi i32 [ %86, %83 ], [ %103, %102 ], !dbg !2564
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2568
  store i32 %107, i32* %84, align 4, !dbg !2564, !tbaa !910
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2569
  %108 = add nsw i32 %107, -1, !dbg !2570
  tail call fastcc void @discharge2reg(%struct.FuncState* nonnull %0, %struct.expdesc* nonnull %2, i32 %108) #5, !dbg !2571
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2572
  %109 = load i32, i32* %45, align 8, !dbg !2573, !tbaa !1090
  %110 = icmp eq i32 %109, 12, !dbg !2572
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2539
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2543
  br i1 %110, label %114, label %111, !dbg !2543

; <label>:111:                                    ; preds = %106
  %112 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, !dbg !2574
  %113 = bitcast %union.anon.3* %112 to i32*, !dbg !2575
  br label %130, !dbg !2543

; <label>:114:                                    ; preds = %106, %82
  %115 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, !dbg !2576
  %116 = bitcast %union.anon.3* %115 to i32*, !dbg !2577
  %117 = load i32, i32* %116, align 8, !dbg !2577, !tbaa !841
  %118 = and i32 %117, 256, !dbg !2581
  %119 = icmp eq i32 %118, 0, !dbg !2581
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2582
  br i1 %119, label %120, label %129, !dbg !2582

; <label>:120:                                    ; preds = %114
  %121 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !2583
  %122 = load i8, i8* %121, align 2, !dbg !2583, !tbaa !537
  %123 = zext i8 %122 to i32, !dbg !2584
  %124 = icmp slt i32 %117, %123, !dbg !2585
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2586
  br i1 %124, label %129, label %125, !dbg !2586

; <label>:125:                                    ; preds = %120
  %126 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !2587
  %127 = load i32, i32* %126, align 4, !dbg !2588, !tbaa !910
  %128 = add nsw i32 %127, -1, !dbg !2588
  store i32 %128, i32* %126, align 4, !dbg !2588, !tbaa !910
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2589
  br label %129, !dbg !2589

; <label>:129:                                    ; preds = %125, %120, %114
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2590
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2591
  br label %130, !dbg !2591

; <label>:130:                                    ; preds = %129, %111
  %131 = phi i32* [ %113, %111 ], [ %116, %129 ], !dbg !2575
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2592
  %132 = load i32, i32* %131, align 8, !dbg !2575, !tbaa !841
  %133 = shl i32 %132, 23, !dbg !2599
  %134 = or i32 %133, 19, !dbg !2599
  %135 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !2600
  %136 = load %struct.LexState*, %struct.LexState** %135, align 8, !dbg !2600, !tbaa !589
  %137 = getelementptr inbounds %struct.LexState, %struct.LexState* %136, i64 0, i32 2, !dbg !2601
  %138 = load i32, i32* %137, align 8, !dbg !2601, !tbaa !591
  %139 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %134, i32 %138) #5, !dbg !2602
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2603
  store i32 %139, i32* %131, align 8, !dbg !2604, !tbaa !841
  store i32 11, i32* %45, align 8, !dbg !2605, !tbaa !1090
  br label %140, !dbg !2606

; <label>:140:                                    ; preds = %130, %71, %48, %47
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2607
  br label %141, !dbg !2608

; <label>:141:                                    ; preds = %140, %44
  %142 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3, !dbg !2608
  %143 = load i32, i32* %142, align 4, !dbg !2608, !tbaa !1365
  %144 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2, !dbg !2610
  %145 = load i32, i32* %144, align 8, !dbg !2610, !tbaa !1364
  store i32 %145, i32* %142, align 4, !dbg !2611, !tbaa !1365
  store i32 %143, i32* %144, align 8, !dbg !2612, !tbaa !1364
  tail call fastcc void @removevalues(%struct.FuncState* %0, i32 %145) #5, !dbg !2613
  %146 = load i32, i32* %144, align 8, !dbg !2614, !tbaa !1364
  tail call fastcc void @removevalues(%struct.FuncState* %0, i32 %146) #5, !dbg !2615
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2616
  br label %168, !dbg !2617

; <label>:147:                                    ; preds = %3
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %2) #5, !dbg !2622
  %148 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0, !dbg !2623
  %149 = load i32, i32* %148, align 8, !dbg !2623, !tbaa !1090
  %150 = icmp eq i32 %149, 12, !dbg !2624
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2625
  br i1 %150, label %151, label %166, !dbg !2625

; <label>:151:                                    ; preds = %147
  %152 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2, !dbg !2626
  %153 = load i32, i32* %152, align 8, !dbg !2626, !tbaa !1364
  %154 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3, !dbg !2626
  %155 = load i32, i32* %154, align 4, !dbg !2626, !tbaa !1365
  %156 = icmp eq i32 %153, %155, !dbg !2626
  %157 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, !dbg !2627
  %158 = bitcast %union.anon.3* %157 to i32*, !dbg !2627
  %159 = load i32, i32* %158, align 8, !dbg !2627, !tbaa !841
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2628
  br i1 %156, label %167, label %160, !dbg !2628

; <label>:160:                                    ; preds = %151
  %161 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !2629
  %162 = load i8, i8* %161, align 2, !dbg !2629, !tbaa !537
  %163 = zext i8 %162 to i32, !dbg !2630
  %164 = icmp slt i32 %159, %163, !dbg !2631
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2632
  br i1 %164, label %166, label %165, !dbg !2632

; <label>:165:                                    ; preds = %160
  tail call fastcc void @exp2reg(%struct.FuncState* nonnull %0, %struct.expdesc* nonnull %2, i32 %159) #5, !dbg !2633
  br label %167, !dbg !2634

; <label>:166:                                    ; preds = %147, %160
  tail call void @luaK_exp2nextreg(%struct.FuncState* %0, %struct.expdesc* nonnull %2) #5, !dbg !2635
  br label %167, !dbg !2636

; <label>:167:                                    ; preds = %151, %165, %166
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2637
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2638
  call fastcc void @codearith(%struct.FuncState* %0, i32 20, %struct.expdesc* nonnull %2, %struct.expdesc* nonnull %4) #6, !dbg !2639
  br label %168, !dbg !2640

; <label>:168:                                    ; preds = %43, %141, %167
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2641
  br label %169, !dbg !2642

; <label>:169:                                    ; preds = %168, %3
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #4, !dbg !2642
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2642
  ret void, !dbg !2642
}

; Function Attrs: noredzone nounwind
define internal fastcc void @codearith(%struct.FuncState*, i32, %struct.expdesc* nocapture, %struct.expdesc* nocapture) unnamed_addr #0 !dbg !2643 {
  %5 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0, !dbg !2676
  %6 = load i32, i32* %5, align 8, !dbg !2676, !tbaa !1090
  %7 = icmp eq i32 %6, 5, !dbg !2677
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2678
  br i1 %7, label %8, label %12, !dbg !2678

; <label>:8:                                      ; preds = %4
  %9 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2, !dbg !2679
  %10 = load i32, i32* %9, align 8, !dbg !2679, !tbaa !1364
  %11 = icmp eq i32 %10, -1, !dbg !2680
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2681
  br i1 %11, label %13, label %12, !dbg !2681

; <label>:12:                                     ; preds = %8, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2682
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2683
  br label %64, !dbg !2683

; <label>:13:                                     ; preds = %8
  %14 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3, !dbg !2684
  %15 = load i32, i32* %14, align 4, !dbg !2684, !tbaa !1365
  %16 = icmp eq i32 %15, -1, !dbg !2685
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2682
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2683
  br i1 %16, label %17, label %64, !dbg !2683

; <label>:17:                                     ; preds = %13
  %18 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0, !dbg !2688
  %19 = load i32, i32* %18, align 8, !dbg !2688, !tbaa !1090
  %20 = icmp eq i32 %19, 5, !dbg !2689
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2690
  br i1 %20, label %21, label %25, !dbg !2690

; <label>:21:                                     ; preds = %17
  %22 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 2, !dbg !2691
  %23 = load i32, i32* %22, align 8, !dbg !2691, !tbaa !1364
  %24 = icmp eq i32 %23, -1, !dbg !2692
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2693
  br i1 %24, label %26, label %25, !dbg !2693

; <label>:25:                                     ; preds = %21, %17
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2694
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2695
  br label %64, !dbg !2695

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 3, !dbg !2696
  %28 = load i32, i32* %27, align 4, !dbg !2696, !tbaa !1365
  %29 = icmp eq i32 %28, -1, !dbg !2697
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2694
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2695
  br i1 %29, label %30, label %64, !dbg !2695

; <label>:30:                                     ; preds = %26
  %31 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, i32 0, !dbg !2698
  %32 = load double, double* %31, align 8, !dbg !2698, !tbaa !841
  %33 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1, i32 0, !dbg !2700
  %34 = load double, double* %33, align 8, !dbg !2700, !tbaa !841
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2702
  switch i32 %1, label %57 [
    i32 12, label %35
    i32 13, label %37
    i32 14, label %39
    i32 15, label %41
    i32 16, label %45
    i32 17, label %52
    i32 18, label %54
    i32 20, label %56
  ], !dbg !2702

; <label>:35:                                     ; preds = %30
  %36 = fadd double %32, %34, !dbg !2703
  br label %58, !dbg !2706

; <label>:37:                                     ; preds = %30
  %38 = fsub double %32, %34, !dbg !2707
  br label %58, !dbg !2708

; <label>:39:                                     ; preds = %30
  %40 = fmul double %32, %34, !dbg !2709
  br label %58, !dbg !2710

; <label>:41:                                     ; preds = %30
  %42 = fcmp oeq double %34, 0.000000e+00, !dbg !2711
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2713
  br i1 %42, label %63, label %43, !dbg !2713

; <label>:43:                                     ; preds = %41
  %44 = fdiv double %32, %34, !dbg !2714
  br label %58, !dbg !2715

; <label>:45:                                     ; preds = %30
  %46 = fcmp oeq double %34, 0.000000e+00, !dbg !2716
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2718
  br i1 %46, label %63, label %47, !dbg !2718

; <label>:47:                                     ; preds = %45
  %48 = fdiv double %32, %34, !dbg !2719
  %49 = tail call double @floor(double %48) #5, !dbg !2719
  %50 = fmul double %34, %49, !dbg !2719
  %51 = fsub double %32, %50, !dbg !2719
  br label %58, !dbg !2720

; <label>:52:                                     ; preds = %30
  %53 = tail call double @pow(double %32, double %34) #5, !dbg !2721
  br label %58, !dbg !2722

; <label>:54:                                     ; preds = %30
  %55 = fsub double -0.000000e+00, %32, !dbg !2723
  br label %58, !dbg !2724

; <label>:56:                                     ; preds = %30
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2725
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2726
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2727
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2728
  br label %67, !dbg !2728

; <label>:57:                                     ; preds = %30
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2729
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2730
  br label %61, !dbg !2730

; <label>:58:                                     ; preds = %54, %52, %47, %43, %39, %37, %35
  %59 = phi double [ %55, %54 ], [ %53, %52 ], [ %51, %47 ], [ %44, %43 ], [ %40, %39 ], [ %38, %37 ], [ %36, %35 ], !dbg !2731
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2732
  %60 = fcmp ord double %59, 0.000000e+00, !dbg !2733
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2730
  br i1 %60, label %61, label %64, !dbg !2730

; <label>:61:                                     ; preds = %57, %58
  %62 = phi double [ 0.000000e+00, %57 ], [ %59, %58 ]
  store double %62, double* %31, align 8, !dbg !2735, !tbaa !841
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2736
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2726
  br label %161, !dbg !2727

; <label>:63:                                     ; preds = %45, %41
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2732
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2726
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2727
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2728
  br label %65, !dbg !2728

; <label>:64:                                     ; preds = %58, %12, %13, %25, %26
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2732
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2726
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2727
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2728
  switch i32 %1, label %65 [
    i32 20, label %67
    i32 18, label %67
  ], !dbg !2728

; <label>:65:                                     ; preds = %63, %64
  %66 = tail call i32 @luaK_exp2RK(%struct.FuncState* %0, %struct.expdesc* %3) #6, !dbg !2737
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2738
  br label %67, !dbg !2738

; <label>:67:                                     ; preds = %56, %64, %64, %65
  %68 = phi i32 [ %66, %65 ], [ 0, %64 ], [ 0, %64 ], [ 0, %56 ], !dbg !2738
  %69 = tail call i32 @luaK_exp2RK(%struct.FuncState* %0, %struct.expdesc* nonnull %2) #6, !dbg !2740
  %70 = icmp sgt i32 %69, %68, !dbg !2742
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2744
  br i1 %70, label %71, label %110, !dbg !2744

; <label>:71:                                     ; preds = %67
  %72 = load i32, i32* %5, align 8, !dbg !2752, !tbaa !1090
  %73 = icmp eq i32 %72, 12, !dbg !2753
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2754
  br i1 %73, label %74, label %90, !dbg !2754

; <label>:74:                                     ; preds = %71
  %75 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, !dbg !2755
  %76 = bitcast %union.anon.3* %75 to i32*, !dbg !2756
  %77 = load i32, i32* %76, align 8, !dbg !2756, !tbaa !841
  %78 = and i32 %77, 256, !dbg !2760
  %79 = icmp eq i32 %78, 0, !dbg !2760
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2761
  br i1 %79, label %80, label %89, !dbg !2761

; <label>:80:                                     ; preds = %74
  %81 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !2762
  %82 = load i8, i8* %81, align 2, !dbg !2762, !tbaa !537
  %83 = zext i8 %82 to i32, !dbg !2763
  %84 = icmp slt i32 %77, %83, !dbg !2764
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2765
  br i1 %84, label %89, label %85, !dbg !2765

; <label>:85:                                     ; preds = %80
  %86 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !2766
  %87 = load i32, i32* %86, align 4, !dbg !2767, !tbaa !910
  %88 = add nsw i32 %87, -1, !dbg !2767
  store i32 %88, i32* %86, align 4, !dbg !2767, !tbaa !910
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2768
  br label %89, !dbg !2768

; <label>:89:                                     ; preds = %85, %80, %74
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2769
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2770
  br label %90, !dbg !2770

; <label>:90:                                     ; preds = %71, %89
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2771
  %91 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0, !dbg !2775
  %92 = load i32, i32* %91, align 8, !dbg !2775, !tbaa !1090
  %93 = icmp eq i32 %92, 12, !dbg !2776
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2777
  br i1 %93, label %94, label %149, !dbg !2777

; <label>:94:                                     ; preds = %90
  %95 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1, !dbg !2778
  %96 = bitcast %union.anon.3* %95 to i32*, !dbg !2779
  %97 = load i32, i32* %96, align 8, !dbg !2779, !tbaa !841
  %98 = and i32 %97, 256, !dbg !2783
  %99 = icmp eq i32 %98, 0, !dbg !2783
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2784
  br i1 %99, label %100, label %109, !dbg !2784

; <label>:100:                                    ; preds = %94
  %101 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !2785
  %102 = load i8, i8* %101, align 2, !dbg !2785, !tbaa !537
  %103 = zext i8 %102 to i32, !dbg !2786
  %104 = icmp slt i32 %97, %103, !dbg !2787
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2788
  br i1 %104, label %109, label %105, !dbg !2788

; <label>:105:                                    ; preds = %100
  %106 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !2789
  %107 = load i32, i32* %106, align 4, !dbg !2790, !tbaa !910
  %108 = add nsw i32 %107, -1, !dbg !2790
  store i32 %108, i32* %106, align 4, !dbg !2790, !tbaa !910
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2791
  br label %109, !dbg !2791

; <label>:109:                                    ; preds = %105, %100, %94
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2792
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2793
  br label %149, !dbg !2793

; <label>:110:                                    ; preds = %67
  %111 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0, !dbg !2795
  %112 = load i32, i32* %111, align 8, !dbg !2795, !tbaa !1090
  %113 = icmp eq i32 %112, 12, !dbg !2796
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2797
  br i1 %113, label %114, label %130, !dbg !2797

; <label>:114:                                    ; preds = %110
  %115 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1, !dbg !2798
  %116 = bitcast %union.anon.3* %115 to i32*, !dbg !2799
  %117 = load i32, i32* %116, align 8, !dbg !2799, !tbaa !841
  %118 = and i32 %117, 256, !dbg !2803
  %119 = icmp eq i32 %118, 0, !dbg !2803
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2804
  br i1 %119, label %120, label %129, !dbg !2804

; <label>:120:                                    ; preds = %114
  %121 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !2805
  %122 = load i8, i8* %121, align 2, !dbg !2805, !tbaa !537
  %123 = zext i8 %122 to i32, !dbg !2806
  %124 = icmp slt i32 %117, %123, !dbg !2807
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2808
  br i1 %124, label %129, label %125, !dbg !2808

; <label>:125:                                    ; preds = %120
  %126 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !2809
  %127 = load i32, i32* %126, align 4, !dbg !2810, !tbaa !910
  %128 = add nsw i32 %127, -1, !dbg !2810
  store i32 %128, i32* %126, align 4, !dbg !2810, !tbaa !910
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2811
  br label %129, !dbg !2811

; <label>:129:                                    ; preds = %125, %120, %114
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2812
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2813
  br label %130, !dbg !2813

; <label>:130:                                    ; preds = %110, %129
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2814
  %131 = load i32, i32* %5, align 8, !dbg !2818, !tbaa !1090
  %132 = icmp eq i32 %131, 12, !dbg !2819
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2820
  br i1 %132, label %133, label %149, !dbg !2820

; <label>:133:                                    ; preds = %130
  %134 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, !dbg !2821
  %135 = bitcast %union.anon.3* %134 to i32*, !dbg !2822
  %136 = load i32, i32* %135, align 8, !dbg !2822, !tbaa !841
  %137 = and i32 %136, 256, !dbg !2826
  %138 = icmp eq i32 %137, 0, !dbg !2826
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2827
  br i1 %138, label %139, label %148, !dbg !2827

; <label>:139:                                    ; preds = %133
  %140 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !2828
  %141 = load i8, i8* %140, align 2, !dbg !2828, !tbaa !537
  %142 = zext i8 %141 to i32, !dbg !2829
  %143 = icmp slt i32 %136, %142, !dbg !2830
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2831
  br i1 %143, label %148, label %144, !dbg !2831

; <label>:144:                                    ; preds = %139
  %145 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !2832
  %146 = load i32, i32* %145, align 4, !dbg !2833, !tbaa !910
  %147 = add nsw i32 %146, -1, !dbg !2833
  store i32 %147, i32* %145, align 4, !dbg !2833, !tbaa !910
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2834
  br label %148, !dbg !2834

; <label>:148:                                    ; preds = %144, %139, %133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2835
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2836
  br label %149, !dbg !2836

; <label>:149:                                    ; preds = %148, %130, %109, %90
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2837
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %150 = shl i32 %69, 23, !dbg !2844
  %151 = shl i32 %68, 14, !dbg !2844
  %152 = or i32 %151, %1, !dbg !2844
  %153 = or i32 %152, %150, !dbg !2844
  %154 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !2845
  %155 = load %struct.LexState*, %struct.LexState** %154, align 8, !dbg !2845, !tbaa !589
  %156 = getelementptr inbounds %struct.LexState, %struct.LexState* %155, i64 0, i32 2, !dbg !2846
  %157 = load i32, i32* %156, align 8, !dbg !2846, !tbaa !591
  %158 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %153, i32 %157) #5, !dbg !2847
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2848
  %159 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, !dbg !2849
  %160 = bitcast %union.anon.3* %159 to i32*, !dbg !2850
  store i32 %158, i32* %160, align 8, !dbg !2851, !tbaa !841
  store i32 11, i32* %5, align 8, !dbg !2852, !tbaa !1090
  br label %161

; <label>:161:                                    ; preds = %61, %149
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2853
  ret void, !dbg !2853
}

; Function Attrs: noredzone nounwind
define hidden void @luaK_infix(%struct.FuncState*, i32, %struct.expdesc* nocapture) local_unnamed_addr #0 !dbg !2854 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2865
  switch i32 %1, label %39 [
    i32 13, label %4
    i32 14, label %5
    i32 6, label %23
    i32 0, label %24
    i32 1, label %24
    i32 2, label %24
    i32 3, label %24
    i32 4, label %24
    i32 5, label %24
  ], !dbg !2865

; <label>:4:                                      ; preds = %3
  tail call void @luaK_goiftrue(%struct.FuncState* %0, %struct.expdesc* %2) #6, !dbg !2866
  br label %41, !dbg !2869

; <label>:5:                                      ; preds = %3
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %2) #5, !dbg !2879
  %6 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0, !dbg !2880
  %7 = load i32, i32* %6, align 8, !dbg !2880, !tbaa !1090
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2881
  switch i32 %7, label %12 [
    i32 1, label %14
    i32 3, label %14
    i32 10, label %8
  ], !dbg !2881

; <label>:8:                                      ; preds = %5
  %9 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, !dbg !2882
  %10 = bitcast %union.anon.3* %9 to i32*, !dbg !2885
  %11 = load i32, i32* %10, align 8, !dbg !2885, !tbaa !841
  br label %14, !dbg !2887

; <label>:12:                                     ; preds = %5
  %13 = tail call fastcc i32 @jumponcond(%struct.FuncState* %0, %struct.expdesc* nonnull %2, i32 1) #5, !dbg !2888
  br label %14, !dbg !2890

; <label>:14:                                     ; preds = %5, %5, %8, %12
  %15 = phi i32 [ %13, %12 ], [ %11, %8 ], [ -1, %5 ], [ -1, %5 ], !dbg !2891
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2893
  %16 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2, !dbg !2894
  tail call void @luaK_concat(%struct.FuncState* %0, i32* nonnull %16, i32 %15) #5, !dbg !2895
  %17 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3, !dbg !2896
  %18 = load i32, i32* %17, align 4, !dbg !2896, !tbaa !1365
  %19 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 6, !dbg !2902
  %20 = load i32, i32* %19, align 8, !dbg !2902, !tbaa !521
  %21 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 7, !dbg !2903
  store i32 %20, i32* %21, align 4, !dbg !2904, !tbaa !529
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2905
  %22 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 8, !dbg !2906
  tail call void @luaK_concat(%struct.FuncState* %0, i32* nonnull %22, i32 %18) #5, !dbg !2907
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2908
  store i32 -1, i32* %17, align 4, !dbg !2909, !tbaa !1365
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2910
  br label %41, !dbg !2911

; <label>:23:                                     ; preds = %3
  tail call void @luaK_exp2nextreg(%struct.FuncState* %0, %struct.expdesc* %2) #6, !dbg !2912
  br label %41, !dbg !2914

; <label>:24:                                     ; preds = %3, %3, %3, %3, %3, %3
  %25 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0, !dbg !2919
  %26 = load i32, i32* %25, align 8, !dbg !2919, !tbaa !1090
  %27 = icmp eq i32 %26, 5, !dbg !2920
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2921
  br i1 %27, label %28, label %32, !dbg !2921

; <label>:28:                                     ; preds = %24
  %29 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2, !dbg !2922
  %30 = load i32, i32* %29, align 8, !dbg !2922, !tbaa !1364
  %31 = icmp eq i32 %30, -1, !dbg !2923
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2924
  br i1 %31, label %33, label %32, !dbg !2924

; <label>:32:                                     ; preds = %28, %24
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2925
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2926
  br label %37, !dbg !2926

; <label>:33:                                     ; preds = %28
  %34 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3, !dbg !2927
  %35 = load i32, i32* %34, align 4, !dbg !2927, !tbaa !1365
  %36 = icmp eq i32 %35, -1, !dbg !2928
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2925
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2926
  br i1 %36, label %42, label %37, !dbg !2926

; <label>:37:                                     ; preds = %33, %32
  %38 = tail call i32 @luaK_exp2RK(%struct.FuncState* %0, %struct.expdesc* nonnull %2) #6, !dbg !2929
  br label %41, !dbg !2929

; <label>:39:                                     ; preds = %3
  %40 = tail call i32 @luaK_exp2RK(%struct.FuncState* %0, %struct.expdesc* %2) #6, !dbg !2930
  br label %41, !dbg !2932

; <label>:41:                                     ; preds = %4, %14, %23, %39, %37
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2933
  br label %42, !dbg !2934

; <label>:42:                                     ; preds = %41, %33
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2934
  ret void, !dbg !2934
}

; Function Attrs: noredzone nounwind
define hidden void @luaK_posfix(%struct.FuncState*, i32, %struct.expdesc*, %struct.expdesc*) local_unnamed_addr #0 !dbg !2935 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2947
  switch i32 %1, label %82 [
    i32 13, label %5
    i32 14, label %11
    i32 6, label %17
    i32 0, label %69
    i32 1, label %70
    i32 2, label %71
    i32 3, label %72
    i32 4, label %73
    i32 5, label %74
    i32 8, label %75
    i32 7, label %76
    i32 9, label %77
    i32 10, label %78
    i32 11, label %79
    i32 12, label %80
  ], !dbg !2947

; <label>:5:                                      ; preds = %4
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %3) #6, !dbg !2948
  %6 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 3, !dbg !2951
  %7 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3, !dbg !2952
  %8 = load i32, i32* %7, align 4, !dbg !2952, !tbaa !1365
  tail call void @luaK_concat(%struct.FuncState* %0, i32* nonnull %6, i32 %8) #6, !dbg !2953
  %9 = bitcast %struct.expdesc* %2 to i8*, !dbg !2954
  %10 = bitcast %struct.expdesc* %3 to i8*, !dbg !2954
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 %10, i64 24, i1 false), !dbg !2954, !tbaa.struct !2955
  br label %81, !dbg !2958

; <label>:11:                                     ; preds = %4
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %3) #6, !dbg !2959
  %12 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 2, !dbg !2961
  %13 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2, !dbg !2962
  %14 = load i32, i32* %13, align 8, !dbg !2962, !tbaa !1364
  tail call void @luaK_concat(%struct.FuncState* %0, i32* nonnull %12, i32 %14) #6, !dbg !2963
  %15 = bitcast %struct.expdesc* %2 to i8*, !dbg !2964
  %16 = bitcast %struct.expdesc* %3 to i8*, !dbg !2964
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 24, i1 false), !dbg !2964, !tbaa.struct !2955
  br label %81, !dbg !2965

; <label>:17:                                     ; preds = %4
  tail call void @luaK_exp2val(%struct.FuncState* %0, %struct.expdesc* %3) #6, !dbg !2966
  %18 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0, !dbg !2968
  %19 = load i32, i32* %18, align 8, !dbg !2968, !tbaa !1090
  %20 = icmp eq i32 %19, 11, !dbg !2970
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2971
  br i1 %20, label %21, label %68, !dbg !2971

; <label>:21:                                     ; preds = %17
  %22 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0, !dbg !2972
  %23 = load %struct.Proto*, %struct.Proto** %22, align 8, !dbg !2972, !tbaa !542
  %24 = getelementptr inbounds %struct.Proto, %struct.Proto* %23, i64 0, i32 4, !dbg !2972
  %25 = load i32*, i32** %24, align 8, !dbg !2972, !tbaa !544
  %26 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1, !dbg !2972
  %27 = bitcast %union.anon.3* %26 to i32*, !dbg !2972
  %28 = load i32, i32* %27, align 8, !dbg !2972, !tbaa !841
  %29 = sext i32 %28 to i64, !dbg !2972
  %30 = getelementptr inbounds i32, i32* %25, i64 %29, !dbg !2972
  %31 = load i32, i32* %30, align 4, !dbg !2972, !tbaa !550
  %32 = and i32 %31, 63, !dbg !2972
  %33 = icmp eq i32 %32, 21, !dbg !2973
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2974
  br i1 %33, label %34, label %68, !dbg !2974

; <label>:34:                                     ; preds = %21
  %35 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0, !dbg !2979
  %36 = load i32, i32* %35, align 8, !dbg !2979, !tbaa !1090
  %37 = icmp eq i32 %36, 12, !dbg !2980
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2981
  %38 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, !dbg !2982
  %39 = bitcast %union.anon.3* %38 to i32*, !dbg !2982
  br i1 %37, label %40, label %60, !dbg !2981

; <label>:40:                                     ; preds = %34
  %41 = load i32, i32* %39, align 8, !dbg !2983, !tbaa !841
  %42 = and i32 %41, 256, !dbg !2987
  %43 = icmp eq i32 %42, 0, !dbg !2987
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2988
  br i1 %43, label %44, label %57, !dbg !2988

; <label>:44:                                     ; preds = %40
  %45 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !2989
  %46 = load i8, i8* %45, align 2, !dbg !2989, !tbaa !537
  %47 = zext i8 %46 to i32, !dbg !2990
  %48 = icmp slt i32 %41, %47, !dbg !2991
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2992
  br i1 %48, label %57, label %49, !dbg !2992

; <label>:49:                                     ; preds = %44
  %50 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !2993
  %51 = load i32, i32* %50, align 4, !dbg !2994, !tbaa !910
  %52 = add nsw i32 %51, -1, !dbg !2994
  store i32 %52, i32* %50, align 4, !dbg !2994, !tbaa !910
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2995
  %53 = load i32, i32* %27, align 8, !dbg !2996, !tbaa !841
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %25, i64 %54
  %56 = load i32, i32* %55, align 4, !dbg !2996, !tbaa !550
  br label %57, !dbg !2995

; <label>:57:                                     ; preds = %49, %44, %40
  %58 = phi i32* [ %55, %49 ], [ %30, %44 ], [ %30, %40 ]
  %59 = phi i32 [ %56, %49 ], [ %31, %44 ], [ %31, %40 ], !dbg !2996
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2997
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2998
  br label %60, !dbg !2998

; <label>:60:                                     ; preds = %34, %57
  %61 = phi i32* [ %58, %57 ], [ %30, %34 ], !dbg !2996
  %62 = phi i32 [ %59, %57 ], [ %31, %34 ], !dbg !2996
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2999
  %63 = and i32 %62, 8388607, !dbg !2996
  %64 = load i32, i32* %39, align 8, !dbg !2996, !tbaa !841
  %65 = shl i32 %64, 23, !dbg !2996
  %66 = or i32 %65, %63, !dbg !2996
  store i32 %66, i32* %61, align 4, !dbg !2996, !tbaa !550
  store i32 11, i32* %35, align 8, !dbg !3000, !tbaa !1090
  %67 = load i32, i32* %27, align 8, !dbg !3001, !tbaa !841
  store i32 %67, i32* %39, align 8, !dbg !3002, !tbaa !841
  br label %81, !dbg !3003

; <label>:68:                                     ; preds = %21, %17
  tail call void @luaK_exp2nextreg(%struct.FuncState* %0, %struct.expdesc* nonnull %3) #6, !dbg !3004
  tail call fastcc void @codearith(%struct.FuncState* %0, i32 21, %struct.expdesc* %2, %struct.expdesc* nonnull %3) #6, !dbg !3006
  br label %81

; <label>:69:                                     ; preds = %4
  tail call fastcc void @codearith(%struct.FuncState* %0, i32 12, %struct.expdesc* %2, %struct.expdesc* %3) #6, !dbg !3007
  br label %81, !dbg !3008

; <label>:70:                                     ; preds = %4
  tail call fastcc void @codearith(%struct.FuncState* %0, i32 13, %struct.expdesc* %2, %struct.expdesc* %3) #6, !dbg !3009
  br label %81, !dbg !3010

; <label>:71:                                     ; preds = %4
  tail call fastcc void @codearith(%struct.FuncState* %0, i32 14, %struct.expdesc* %2, %struct.expdesc* %3) #6, !dbg !3011
  br label %81, !dbg !3012

; <label>:72:                                     ; preds = %4
  tail call fastcc void @codearith(%struct.FuncState* %0, i32 15, %struct.expdesc* %2, %struct.expdesc* %3) #6, !dbg !3013
  br label %81, !dbg !3014

; <label>:73:                                     ; preds = %4
  tail call fastcc void @codearith(%struct.FuncState* %0, i32 16, %struct.expdesc* %2, %struct.expdesc* %3) #6, !dbg !3015
  br label %81, !dbg !3016

; <label>:74:                                     ; preds = %4
  tail call fastcc void @codearith(%struct.FuncState* %0, i32 17, %struct.expdesc* %2, %struct.expdesc* %3) #6, !dbg !3017
  br label %81, !dbg !3018

; <label>:75:                                     ; preds = %4
  tail call fastcc void @codecomp(%struct.FuncState* %0, i32 23, i32 1, %struct.expdesc* %2, %struct.expdesc* %3) #6, !dbg !3019
  br label %81, !dbg !3020

; <label>:76:                                     ; preds = %4
  tail call fastcc void @codecomp(%struct.FuncState* %0, i32 23, i32 0, %struct.expdesc* %2, %struct.expdesc* %3) #6, !dbg !3021
  br label %81, !dbg !3022

; <label>:77:                                     ; preds = %4
  tail call fastcc void @codecomp(%struct.FuncState* %0, i32 24, i32 1, %struct.expdesc* %2, %struct.expdesc* %3) #6, !dbg !3023
  br label %81, !dbg !3024

; <label>:78:                                     ; preds = %4
  tail call fastcc void @codecomp(%struct.FuncState* %0, i32 25, i32 1, %struct.expdesc* %2, %struct.expdesc* %3) #6, !dbg !3025
  br label %81, !dbg !3026

; <label>:79:                                     ; preds = %4
  tail call fastcc void @codecomp(%struct.FuncState* %0, i32 24, i32 0, %struct.expdesc* %2, %struct.expdesc* %3) #6, !dbg !3027
  br label %81, !dbg !3028

; <label>:80:                                     ; preds = %4
  tail call fastcc void @codecomp(%struct.FuncState* %0, i32 25, i32 0, %struct.expdesc* %2, %struct.expdesc* %3) #6, !dbg !3029
  br label %81, !dbg !3030

; <label>:81:                                     ; preds = %5, %11, %69, %70, %71, %72, %73, %74, %75, %76, %77, %78, %79, %80, %68, %60
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %82, !dbg !3031

; <label>:82:                                     ; preds = %81, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3031
  ret void, !dbg !3031
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

; Function Attrs: noredzone nounwind
define internal fastcc void @codecomp(%struct.FuncState*, i32, i32, %struct.expdesc* nocapture, %struct.expdesc* nocapture) unnamed_addr #0 !dbg !3032 {
  %6 = alloca i32, align 4
  %7 = tail call i32 @luaK_exp2RK(%struct.FuncState* %0, %struct.expdesc* %3) #6, !dbg !3051
  %8 = tail call i32 @luaK_exp2RK(%struct.FuncState* %0, %struct.expdesc* %4) #6, !dbg !3053
  %9 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 0, !dbg !3058
  %10 = load i32, i32* %9, align 8, !dbg !3058, !tbaa !1090
  %11 = icmp eq i32 %10, 12, !dbg !3059
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3060
  br i1 %11, label %12, label %28, !dbg !3060

; <label>:12:                                     ; preds = %5
  %13 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 1, !dbg !3061
  %14 = bitcast %union.anon.3* %13 to i32*, !dbg !3062
  %15 = load i32, i32* %14, align 8, !dbg !3062, !tbaa !841
  %16 = and i32 %15, 256, !dbg !3066
  %17 = icmp eq i32 %16, 0, !dbg !3066
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3067
  br i1 %17, label %18, label %27, !dbg !3067

; <label>:18:                                     ; preds = %12
  %19 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !3068
  %20 = load i8, i8* %19, align 2, !dbg !3068, !tbaa !537
  %21 = zext i8 %20 to i32, !dbg !3069
  %22 = icmp slt i32 %15, %21, !dbg !3070
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3071
  br i1 %22, label %27, label %23, !dbg !3071

; <label>:23:                                     ; preds = %18
  %24 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !3072
  %25 = load i32, i32* %24, align 4, !dbg !3073, !tbaa !910
  %26 = add nsw i32 %25, -1, !dbg !3073
  store i32 %26, i32* %24, align 4, !dbg !3073, !tbaa !910
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3074
  br label %27, !dbg !3074

; <label>:27:                                     ; preds = %23, %18, %12
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3075
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3076
  br label %28, !dbg !3076

; <label>:28:                                     ; preds = %5, %27
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3077
  %29 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0, !dbg !3081
  %30 = load i32, i32* %29, align 8, !dbg !3081, !tbaa !1090
  %31 = icmp eq i32 %30, 12, !dbg !3082
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3083
  br i1 %31, label %32, label %48, !dbg !3083

; <label>:32:                                     ; preds = %28
  %33 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1, !dbg !3084
  %34 = bitcast %union.anon.3* %33 to i32*, !dbg !3085
  %35 = load i32, i32* %34, align 8, !dbg !3085, !tbaa !841
  %36 = and i32 %35, 256, !dbg !3089
  %37 = icmp eq i32 %36, 0, !dbg !3089
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3090
  br i1 %37, label %38, label %47, !dbg !3090

; <label>:38:                                     ; preds = %32
  %39 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !3091
  %40 = load i8, i8* %39, align 2, !dbg !3091, !tbaa !537
  %41 = zext i8 %40 to i32, !dbg !3092
  %42 = icmp slt i32 %35, %41, !dbg !3093
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3094
  br i1 %42, label %47, label %43, !dbg !3094

; <label>:43:                                     ; preds = %38
  %44 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !3095
  %45 = load i32, i32* %44, align 4, !dbg !3096, !tbaa !910
  %46 = add nsw i32 %45, -1, !dbg !3096
  store i32 %46, i32* %44, align 4, !dbg !3096, !tbaa !910
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3097
  br label %47, !dbg !3097

; <label>:47:                                     ; preds = %43, %38, %32
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3098
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3099
  br label %48, !dbg !3099

; <label>:48:                                     ; preds = %28, %47
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3100
  %49 = icmp eq i32 %2, 0, !dbg !3101
  %50 = icmp ne i32 %1, 23, !dbg !3102
  %51 = and i1 %50, %49, !dbg !3103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3103
  br i1 %51, label %52, label %53, !dbg !3103

; <label>:52:                                     ; preds = %48
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3105
  br label %53, !dbg !3105

; <label>:53:                                     ; preds = %52, %48
  %54 = phi i32 [ %8, %52 ], [ %7, %48 ], !dbg !3106
  %55 = phi i32 [ %7, %52 ], [ %8, %48 ], !dbg !3106
  %56 = phi i32 [ 1, %52 ], [ %2, %48 ]
  %57 = shl i32 %56, 6, !dbg !3119
  %58 = shl i32 %54, 23, !dbg !3119
  %59 = shl i32 %55, 14, !dbg !3119
  %60 = or i32 %58, %1, !dbg !3119
  %61 = or i32 %60, %59, !dbg !3119
  %62 = or i32 %61, %57, !dbg !3119
  %63 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !3120
  %64 = load %struct.LexState*, %struct.LexState** %63, align 8, !dbg !3120, !tbaa !589
  %65 = getelementptr inbounds %struct.LexState, %struct.LexState* %64, i64 0, i32 2, !dbg !3121
  %66 = load i32, i32* %65, align 8, !dbg !3121, !tbaa !591
  %67 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %62, i32 %66) #5, !dbg !3122
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3123
  %68 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 8, !dbg !3126
  %69 = load i32, i32* %68, align 8, !dbg !3126, !tbaa !616
  %70 = bitcast i32* %6 to i8*, !dbg !3128
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %70) #4, !dbg !3128
  store i32 -1, i32* %68, align 8, !dbg !3129, !tbaa !616
  %71 = load %struct.LexState*, %struct.LexState** %63, align 8, !dbg !3135, !tbaa !589
  %72 = getelementptr inbounds %struct.LexState, %struct.LexState* %71, i64 0, i32 2, !dbg !3136
  %73 = load i32, i32* %72, align 8, !dbg !3136, !tbaa !591
  %74 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 2147450902, i32 %73) #5, !dbg !3137
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3138
  store i32 %74, i32* %6, align 4, !dbg !3140, !tbaa !550
  call void @luaK_concat(%struct.FuncState* %0, i32* nonnull %6, i32 %69) #5, !dbg !3141
  %75 = load i32, i32* %6, align 4, !dbg !3142, !tbaa !550
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %70) #4, !dbg !3143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3144
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3145
  %76 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1, !dbg !3146
  %77 = bitcast %union.anon.3* %76 to i32*, !dbg !3147
  store i32 %75, i32* %77, align 8, !dbg !3148, !tbaa !841
  store i32 10, i32* %29, align 8, !dbg !3149, !tbaa !1090
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3150
  ret void, !dbg !3150
}

; Function Attrs: noredzone nounwind
define hidden void @luaK_fixline(%struct.FuncState* nocapture readonly, i32) local_unnamed_addr #0 !dbg !3151 {
  %3 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0, !dbg !3157
  %4 = load %struct.Proto*, %struct.Proto** %3, align 8, !dbg !3157, !tbaa !542
  %5 = getelementptr inbounds %struct.Proto, %struct.Proto* %4, i64 0, i32 6, !dbg !3158
  %6 = load i32*, i32** %5, align 8, !dbg !3158, !tbaa !3159
  %7 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 6, !dbg !3160
  %8 = load i32, i32* %7, align 8, !dbg !3160, !tbaa !521
  %9 = add nsw i32 %8, -1, !dbg !3161
  %10 = sext i32 %9 to i64, !dbg !3162
  %11 = getelementptr inbounds i32, i32* %6, i64 %10, !dbg !3162
  store i32 %1, i32* %11, align 4, !dbg !3163, !tbaa !550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3164
  ret void, !dbg !3164
}

; Function Attrs: noredzone nounwind
define internal fastcc i32 @luaK_code(%struct.FuncState* nocapture, i32, i32) unnamed_addr #0 !dbg !3165 {
  %4 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0, !dbg !3176
  %5 = load %struct.Proto*, %struct.Proto** %4, align 8, !dbg !3176, !tbaa !542
  %6 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 8, !dbg !3185
  %7 = load i32, i32* %6, align 8, !dbg !3185, !tbaa !616
  %8 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 6, !dbg !3186
  %9 = load i32, i32* %8, align 8, !dbg !3186, !tbaa !521
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3193
  %10 = icmp eq i32 %7, -1, !dbg !3194
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3193
  br i1 %10, label %73, label %11, !dbg !3193

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3
  br label %13, !dbg !3193

; <label>:13:                                     ; preds = %69, %11
  %14 = phi %struct.Proto* [ %5, %11 ], [ %70, %69 ], !dbg !3195
  %15 = phi i32 [ %7, %11 ], [ %26, %69 ]
  %16 = getelementptr inbounds %struct.Proto, %struct.Proto* %14, i64 0, i32 4, !dbg !3195
  %17 = load i32*, i32** %16, align 8, !dbg !3195, !tbaa !544
  %18 = sext i32 %15 to i64, !dbg !3195
  %19 = getelementptr inbounds i32, i32* %17, i64 %18, !dbg !3195
  %20 = load i32, i32* %19, align 4, !dbg !3195, !tbaa !550
  %21 = lshr i32 %20, 14, !dbg !3195
  %22 = add nsw i32 %21, -131071, !dbg !3195
  %23 = icmp eq i32 %22, -1, !dbg !3200
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3201
  %24 = add nsw i32 %15, 1, !dbg !3202
  %25 = add nsw i32 %24, %22, !dbg !3203
  %26 = select i1 %23, i32 -1, i32 %25, !dbg !3201
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3204
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3205
  %27 = icmp sgt i32 %15, 0, !dbg !3215
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3216
  br i1 %27, label %28, label %36, !dbg !3216

; <label>:28:                                     ; preds = %13
  %29 = getelementptr inbounds i32, i32* %19, i64 -1, !dbg !3217
  %30 = load i32, i32* %29, align 4, !dbg !3217, !tbaa !550
  %31 = and i32 %30, 63, !dbg !3217
  %32 = zext i32 %31 to i64, !dbg !3217
  %33 = getelementptr inbounds [38 x i8], [38 x i8]* @luaP_opmodes, i64 0, i64 %32, !dbg !3217
  %34 = load i8, i8* %33, align 1, !dbg !3217, !tbaa !841
  %35 = icmp slt i8 %34, 0, !dbg !3217
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3218
  br i1 %35, label %37, label %36, !dbg !3218

; <label>:36:                                     ; preds = %28, %13
  br label %37, !dbg !3219

; <label>:37:                                     ; preds = %28, %36
  %38 = phi i32 [ %20, %36 ], [ %30, %28 ], !dbg !3220
  %39 = phi i32* [ %19, %36 ], [ %29, %28 ], !dbg !3221
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3222
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3223
  %40 = and i32 %38, 63, !dbg !3220
  %41 = icmp eq i32 %40, 27, !dbg !3225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3226
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3227
  br i1 %41, label %42, label %54, !dbg !3226

; <label>:42:                                     ; preds = %37
  %43 = lshr i32 %38, 23, !dbg !3228
  %44 = shl nuw nsw i32 %43, 6, !dbg !3229
  %45 = and i32 %38, 8372224, !dbg !3229
  %46 = or i32 %45, %44, !dbg !3229
  %47 = or i32 %46, 26, !dbg !3229
  store i32 %47, i32* %39, align 4, !dbg !3230, !tbaa !550
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3232
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3233
  %48 = xor i32 %15, -1, !dbg !3239
  %49 = add i32 %9, %48, !dbg !3239
  %50 = tail call i32 @abs(i32 %49) #5, !dbg !3241
  %51 = icmp sgt i32 %50, 131071, !dbg !3242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3243
  br i1 %51, label %52, label %61, !dbg !3243

; <label>:52:                                     ; preds = %42
  %53 = load %struct.LexState*, %struct.LexState** %12, align 8, !dbg !3244, !tbaa !589
  tail call void @luaX_syntaxerror(%struct.LexState* %53, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !3245
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3245
  br label %61, !dbg !3245

; <label>:54:                                     ; preds = %37
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3232
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3233
  %55 = xor i32 %15, -1, !dbg !3251
  %56 = add i32 %9, %55, !dbg !3251
  %57 = tail call i32 @abs(i32 %56) #5, !dbg !3253
  %58 = icmp sgt i32 %57, 131071, !dbg !3254
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3255
  br i1 %58, label %59, label %61, !dbg !3255

; <label>:59:                                     ; preds = %54
  %60 = load %struct.LexState*, %struct.LexState** %12, align 8, !dbg !3256, !tbaa !589
  tail call void @luaX_syntaxerror(%struct.LexState* %60, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !3257
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3257
  br label %61, !dbg !3257

; <label>:61:                                     ; preds = %54, %59, %42, %52
  %62 = phi i32 [ %49, %52 ], [ %49, %42 ], [ %56, %59 ], [ %56, %54 ]
  %63 = load i32, i32* %19, align 4, !dbg !3258, !tbaa !550
  %64 = and i32 %63, 16383, !dbg !3258
  %65 = shl i32 %62, 14, !dbg !3258
  %66 = add i32 %65, 2147467264, !dbg !3258
  %67 = or i32 %64, %66, !dbg !3258
  store i32 %67, i32* %19, align 4, !dbg !3258, !tbaa !550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3259
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3193
  %68 = icmp eq i32 %26, -1, !dbg !3194
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3193
  br i1 %68, label %71, label %69, !dbg !3193, !llvm.loop !886

; <label>:69:                                     ; preds = %61
  %70 = load %struct.Proto*, %struct.Proto** %4, align 8, !dbg !3195, !tbaa !542
  br label %13, !dbg !3193

; <label>:71:                                     ; preds = %61
  %72 = load i32, i32* %8, align 8, !dbg !3260, !tbaa !521
  br label %73, !dbg !3262

; <label>:73:                                     ; preds = %71, %3
  %74 = phi i32 [ %72, %71 ], [ %9, %3 ], !dbg !3260
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3262
  store i32 -1, i32* %6, align 8, !dbg !3263, !tbaa !616
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3264
  %75 = getelementptr inbounds %struct.Proto, %struct.Proto* %5, i64 0, i32 12, !dbg !3260
  %76 = load i32, i32* %75, align 8, !dbg !3260, !tbaa !3265
  %77 = icmp slt i32 %74, %76, !dbg !3260
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3266
  br i1 %77, label %78, label %81, !dbg !3266

; <label>:78:                                     ; preds = %73
  %79 = getelementptr inbounds %struct.Proto, %struct.Proto* %5, i64 0, i32 4
  %80 = load i32*, i32** %79, align 8, !dbg !3267, !tbaa !544
  br label %90, !dbg !3266

; <label>:81:                                     ; preds = %73
  %82 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4, !dbg !3260
  %83 = load %struct.lua_State*, %struct.lua_State** %82, align 8, !dbg !3260, !tbaa !1004
  %84 = getelementptr inbounds %struct.Proto, %struct.Proto* %5, i64 0, i32 4, !dbg !3260
  %85 = bitcast i32** %84 to i8**, !dbg !3260
  %86 = load i8*, i8** %85, align 8, !dbg !3260, !tbaa !544
  %87 = tail call i8* @luaM_growaux_(%struct.lua_State* %83, i8* %86, i32* nonnull %75, i64 4, i32 2147483645, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0)) #5, !dbg !3260
  store i8* %87, i8** %85, align 8, !dbg !3260, !tbaa !544
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3260
  %88 = bitcast i8* %87 to i32*, !dbg !3260
  %89 = load i32, i32* %8, align 8, !dbg !3268, !tbaa !521
  br label %90, !dbg !3260

; <label>:90:                                     ; preds = %78, %81
  %91 = phi i32 [ %74, %78 ], [ %89, %81 ], !dbg !3268
  %92 = phi i32* [ %80, %78 ], [ %88, %81 ], !dbg !3267
  %93 = sext i32 %91 to i64, !dbg !3269
  %94 = getelementptr inbounds i32, i32* %92, i64 %93, !dbg !3269
  store i32 %1, i32* %94, align 4, !dbg !3270, !tbaa !550
  %95 = load i32, i32* %8, align 8, !dbg !3271, !tbaa !521
  %96 = getelementptr inbounds %struct.Proto, %struct.Proto* %5, i64 0, i32 13, !dbg !3271
  %97 = load i32, i32* %96, align 4, !dbg !3271, !tbaa !3273
  %98 = icmp slt i32 %95, %97, !dbg !3271
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3274
  br i1 %98, label %99, label %102, !dbg !3274

; <label>:99:                                     ; preds = %90
  %100 = getelementptr inbounds %struct.Proto, %struct.Proto* %5, i64 0, i32 6
  %101 = load i32*, i32** %100, align 8, !dbg !3275, !tbaa !3159
  br label %111, !dbg !3274

; <label>:102:                                    ; preds = %90
  %103 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4, !dbg !3271
  %104 = load %struct.lua_State*, %struct.lua_State** %103, align 8, !dbg !3271, !tbaa !1004
  %105 = getelementptr inbounds %struct.Proto, %struct.Proto* %5, i64 0, i32 6, !dbg !3271
  %106 = bitcast i32** %105 to i8**, !dbg !3271
  %107 = load i8*, i8** %106, align 8, !dbg !3271, !tbaa !3159
  %108 = tail call i8* @luaM_growaux_(%struct.lua_State* %104, i8* %107, i32* nonnull %96, i64 4, i32 2147483645, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0)) #5, !dbg !3271
  store i8* %108, i8** %106, align 8, !dbg !3271, !tbaa !3159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3271
  %109 = bitcast i8* %108 to i32*, !dbg !3271
  %110 = load i32, i32* %8, align 8, !dbg !3276, !tbaa !521
  br label %111, !dbg !3271

; <label>:111:                                    ; preds = %99, %102
  %112 = phi i32 [ %95, %99 ], [ %110, %102 ], !dbg !3276
  %113 = phi i32* [ %101, %99 ], [ %109, %102 ], !dbg !3275
  %114 = sext i32 %112 to i64, !dbg !3277
  %115 = getelementptr inbounds i32, i32* %113, i64 %114, !dbg !3277
  store i32 %2, i32* %115, align 4, !dbg !3278, !tbaa !550
  %116 = load i32, i32* %8, align 8, !dbg !3279, !tbaa !521
  %117 = add nsw i32 %116, 1, !dbg !3279
  store i32 %117, i32* %8, align 8, !dbg !3279, !tbaa !521
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3280
  ret i32 %116, !dbg !3280
}

; Function Attrs: noredzone nounwind
define hidden void @luaK_setlist(%struct.FuncState* nocapture, i32, i32, i32) local_unnamed_addr #0 !dbg !3281 {
  %5 = add nsw i32 %2, -1, !dbg !3295
  %6 = sdiv i32 %5, 50, !dbg !3296
  %7 = add nsw i32 %6, 1, !dbg !3297
  %8 = icmp eq i32 %3, -1, !dbg !3299
  %9 = icmp slt i32 %2, 25551, !dbg !3300
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3302
  %10 = shl i32 %1, 6, !dbg !3312
  %11 = shl i32 %3, 23, !dbg !3312
  %12 = select i1 %8, i32 0, i32 %11, !dbg !3312
  %13 = or i32 %10, %12, !dbg !3312
  %14 = or i32 %13, 34, !dbg !3312
  br i1 %9, label %15, label %23, !dbg !3302

; <label>:15:                                     ; preds = %4
  %16 = shl i32 %7, 14, !dbg !3312
  %17 = or i32 %14, %16, !dbg !3312
  %18 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !3314
  %19 = load %struct.LexState*, %struct.LexState** %18, align 8, !dbg !3314, !tbaa !589
  %20 = getelementptr inbounds %struct.LexState, %struct.LexState* %19, i64 0, i32 2, !dbg !3315
  %21 = load i32, i32* %20, align 8, !dbg !3315, !tbaa !591
  %22 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %17, i32 %21) #5, !dbg !3316
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3317
  br label %33, !dbg !3318

; <label>:23:                                     ; preds = %4
  %24 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !3320
  %25 = load %struct.LexState*, %struct.LexState** %24, align 8, !dbg !3320, !tbaa !589
  %26 = getelementptr inbounds %struct.LexState, %struct.LexState* %25, i64 0, i32 2, !dbg !3321
  %27 = load i32, i32* %26, align 8, !dbg !3321, !tbaa !591
  %28 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %14, i32 %27) #5, !dbg !3322
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3323
  %29 = load %struct.LexState*, %struct.LexState** %24, align 8, !dbg !3324, !tbaa !589
  %30 = getelementptr inbounds %struct.LexState, %struct.LexState* %29, i64 0, i32 2, !dbg !3325
  %31 = load i32, i32* %30, align 8, !dbg !3325, !tbaa !591
  %32 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %7, i32 %31) #6, !dbg !3326
  br label %33

; <label>:33:                                     ; preds = %23, %15
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %34 = add nsw i32 %1, 1, !dbg !3327
  %35 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !3328
  store i32 %34, i32* %35, align 4, !dbg !3329, !tbaa !910
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3330
  ret void, !dbg !3330
}

; Function Attrs: noredzone
declare dso_local i32 @abs(i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden %struct.lua_TValue* @luaH_set(%struct.lua_State*, %struct.Table*, %struct.lua_TValue*) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden i8* @luaM_growaux_(%struct.lua_State*, i8*, i32*, i64, i32, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden void @luaC_barrierf(%struct.lua_State*, %union.GCObject*, %union.GCObject*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal fastcc void @discharge2reg(%struct.FuncState* nocapture, %struct.expdesc* nocapture, i32) unnamed_addr #0 !dbg !3331 {
  %4 = alloca %struct.lua_TValue, align 8
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %1) #6, !dbg !3342
  %5 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0, !dbg !3343
  %6 = load i32, i32* %5, align 8, !dbg !3343, !tbaa !1090
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3344
  switch i32 %6, label %83 [
    i32 1, label %7
    i32 3, label %8
    i32 2, label %8
    i32 4, label %20
    i32 5, label %33
    i32 11, label %50
    i32 12, label %65
  ], !dbg !3344

; <label>:7:                                      ; preds = %3
  tail call void @luaK_nil(%struct.FuncState* %0, i32 %2, i32 1) #6, !dbg !3345
  br label %79, !dbg !3347

; <label>:8:                                      ; preds = %3, %3
  %9 = icmp eq i32 %6, 2, !dbg !3348
  %10 = zext i1 %9 to i32, !dbg !3348
  %11 = shl i32 %2, 6, !dbg !3356
  %12 = shl nuw nsw i32 %10, 23, !dbg !3356
  %13 = or i32 %11, %12, !dbg !3356
  %14 = or i32 %13, 2, !dbg !3356
  %15 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !3357
  %16 = load %struct.LexState*, %struct.LexState** %15, align 8, !dbg !3357, !tbaa !589
  %17 = getelementptr inbounds %struct.LexState, %struct.LexState* %16, i64 0, i32 2, !dbg !3358
  %18 = load i32, i32* %17, align 8, !dbg !3358, !tbaa !591
  %19 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %14, i32 %18) #5, !dbg !3359
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3360
  br label %79, !dbg !3361

; <label>:20:                                     ; preds = %3
  %21 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !3362
  %22 = bitcast %union.anon.3* %21 to i32*, !dbg !3364
  %23 = load i32, i32* %22, align 8, !dbg !3364, !tbaa !841
  %24 = shl i32 %2, 6, !dbg !3370
  %25 = shl i32 %23, 14, !dbg !3370
  %26 = or i32 %24, %25, !dbg !3370
  %27 = or i32 %26, 1, !dbg !3370
  %28 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !3371
  %29 = load %struct.LexState*, %struct.LexState** %28, align 8, !dbg !3371, !tbaa !589
  %30 = getelementptr inbounds %struct.LexState, %struct.LexState* %29, i64 0, i32 2, !dbg !3372
  %31 = load i32, i32* %30, align 8, !dbg !3372, !tbaa !591
  %32 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %27, i32 %31) #5, !dbg !3373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3374
  br label %79, !dbg !3375

; <label>:33:                                     ; preds = %3
  %34 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, i32 0, !dbg !3376
  %35 = bitcast double* %34 to i64*, !dbg !3376
  %36 = load i64, i64* %35, align 8, !dbg !3376, !tbaa !841
  %37 = bitcast %struct.lua_TValue* %4 to i8*, !dbg !3381
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %37) #4, !dbg !3381
  %38 = bitcast %struct.lua_TValue* %4 to i64*, !dbg !3382
  store i64 %36, i64* %38, align 8, !dbg !3382, !tbaa !841
  %39 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %4, i64 0, i32 1, !dbg !3382
  store i32 3, i32* %39, align 8, !dbg !3382, !tbaa !974
  %40 = call fastcc i32 @addk(%struct.FuncState* %0, %struct.lua_TValue* nonnull %4, %struct.lua_TValue* nonnull %4) #5, !dbg !3384
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %37) #4, !dbg !3385
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3386
  %41 = shl i32 %2, 6, !dbg !3392
  %42 = shl i32 %40, 14, !dbg !3392
  %43 = or i32 %41, %42, !dbg !3392
  %44 = or i32 %43, 1, !dbg !3392
  %45 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !3393
  %46 = load %struct.LexState*, %struct.LexState** %45, align 8, !dbg !3393, !tbaa !589
  %47 = getelementptr inbounds %struct.LexState, %struct.LexState* %46, i64 0, i32 2, !dbg !3394
  %48 = load i32, i32* %47, align 8, !dbg !3394, !tbaa !591
  %49 = call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %44, i32 %48) #5, !dbg !3395
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3396
  br label %79, !dbg !3397

; <label>:50:                                     ; preds = %3
  %51 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0, !dbg !3398
  %52 = load %struct.Proto*, %struct.Proto** %51, align 8, !dbg !3398, !tbaa !542
  %53 = getelementptr inbounds %struct.Proto, %struct.Proto* %52, i64 0, i32 4, !dbg !3398
  %54 = load i32*, i32** %53, align 8, !dbg !3398, !tbaa !544
  %55 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !3398
  %56 = bitcast %union.anon.3* %55 to i32*, !dbg !3398
  %57 = load i32, i32* %56, align 8, !dbg !3398, !tbaa !841
  %58 = sext i32 %57 to i64, !dbg !3398
  %59 = getelementptr inbounds i32, i32* %54, i64 %58, !dbg !3398
  %60 = load i32, i32* %59, align 4, !dbg !3400, !tbaa !550
  %61 = and i32 %60, -16321, !dbg !3400
  %62 = shl i32 %2, 6, !dbg !3400
  %63 = and i32 %62, 16320, !dbg !3400
  %64 = or i32 %61, %63, !dbg !3400
  store i32 %64, i32* %59, align 4, !dbg !3400, !tbaa !550
  br label %79

; <label>:65:                                     ; preds = %3
  %66 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !3401
  %67 = bitcast %union.anon.3* %66 to i32*, !dbg !3404
  %68 = load i32, i32* %67, align 8, !dbg !3404, !tbaa !841
  %69 = icmp eq i32 %68, %2, !dbg !3405
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3406
  br i1 %69, label %80, label %70, !dbg !3406

; <label>:70:                                     ; preds = %65
  %71 = shl i32 %2, 6, !dbg !3413
  %72 = shl i32 %68, 23, !dbg !3413
  %73 = or i32 %72, %71, !dbg !3413
  %74 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !3414
  %75 = load %struct.LexState*, %struct.LexState** %74, align 8, !dbg !3414, !tbaa !589
  %76 = getelementptr inbounds %struct.LexState, %struct.LexState* %75, i64 0, i32 2, !dbg !3415
  %77 = load i32, i32* %76, align 8, !dbg !3415, !tbaa !591
  %78 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %73, i32 %77) #5, !dbg !3416
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3417
  br label %79, !dbg !3418

; <label>:79:                                     ; preds = %7, %8, %20, %33, %50, %70
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %80, !dbg !3419

; <label>:80:                                     ; preds = %79, %65
  %81 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !3419
  %82 = bitcast %union.anon.3* %81 to i32*, !dbg !3420
  store i32 %2, i32* %82, align 8, !dbg !3421, !tbaa !841
  store i32 12, i32* %5, align 8, !dbg !3422, !tbaa !1090
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3423
  br label %83, !dbg !3423

; <label>:83:                                     ; preds = %3, %80
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3423
  ret void, !dbg !3423
}

; Function Attrs: noredzone
declare dso_local double @floor(double) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local double @pow(double, double) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal fastcc void @removevalues(%struct.FuncState* nocapture readonly, i32) unnamed_addr #0 !dbg !3424 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3430
  %3 = icmp eq i32 %1, -1, !dbg !3431
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3434
  br i1 %3, label %46, label %4, !dbg !3434

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %6 = load %struct.Proto*, %struct.Proto** %5, align 8, !dbg !3435, !tbaa !542
  %7 = getelementptr inbounds %struct.Proto, %struct.Proto* %6, i64 0, i32 4
  %8 = load i32*, i32** %7, align 8, !dbg !3438, !tbaa !544
  br label %9, !dbg !3434

; <label>:9:                                      ; preds = %4, %42
  %10 = phi i32 [ %1, %4 ], [ %44, %42 ]
  %11 = sext i32 %10 to i64, !dbg !3444
  %12 = getelementptr inbounds i32, i32* %8, i64 %11, !dbg !3444
  %13 = icmp sgt i32 %10, 0, !dbg !3446
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3447
  br i1 %13, label %14, label %23, !dbg !3447

; <label>:14:                                     ; preds = %9
  %15 = getelementptr inbounds i32, i32* %12, i64 -1, !dbg !3448
  %16 = load i32, i32* %15, align 4, !dbg !3448, !tbaa !550
  %17 = and i32 %16, 63, !dbg !3448
  %18 = zext i32 %17 to i64, !dbg !3448
  %19 = getelementptr inbounds [38 x i8], [38 x i8]* @luaP_opmodes, i64 0, i64 %18, !dbg !3448
  %20 = load i8, i8* %19, align 1, !dbg !3448, !tbaa !841
  %21 = icmp slt i8 %20, 0, !dbg !3448
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3449
  br i1 %21, label %22, label %23, !dbg !3449

; <label>:22:                                     ; preds = %14
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3450
  br label %25, !dbg !3450

; <label>:23:                                     ; preds = %14, %9
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3451
  %24 = load i32, i32* %12, align 4, !dbg !3452, !tbaa !550
  br label %25, !dbg !3451

; <label>:25:                                     ; preds = %23, %22
  %26 = phi i32 [ %16, %22 ], [ %24, %23 ], !dbg !3452
  %27 = phi i32* [ %15, %22 ], [ %12, %23 ], !dbg !3453
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3454
  %28 = and i32 %26, 63, !dbg !3452
  %29 = icmp eq i32 %28, 27, !dbg !3456
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3457
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3458
  br i1 %29, label %30, label %36, !dbg !3457

; <label>:30:                                     ; preds = %25
  %31 = lshr i32 %26, 23, !dbg !3459
  %32 = shl nuw nsw i32 %31, 6, !dbg !3460
  %33 = and i32 %26, 8372224, !dbg !3460
  %34 = or i32 %33, %32, !dbg !3460
  %35 = or i32 %34, 26, !dbg !3460
  store i32 %35, i32* %27, align 4, !dbg !3461, !tbaa !550
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3462
  br label %36, !dbg !3462

; <label>:36:                                     ; preds = %25, %30
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3463
  %37 = load i32, i32* %12, align 4, !dbg !3467, !tbaa !550
  %38 = lshr i32 %37, 14, !dbg !3467
  %39 = add nsw i32 %38, -131071, !dbg !3467
  %40 = icmp eq i32 %39, -1, !dbg !3469
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3470
  br i1 %40, label %41, label %42, !dbg !3470

; <label>:41:                                     ; preds = %36
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3471
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3472
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3473
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3434
  br label %46, !dbg !3434

; <label>:42:                                     ; preds = %36
  %43 = add nsw i32 %10, 1, !dbg !3474
  %44 = add nsw i32 %43, %39, !dbg !3475
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3476
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3472
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3473
  %45 = icmp eq i32 %44, -1, !dbg !3431
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3434
  br i1 %45, label %46, label %9, !dbg !3434, !llvm.loop !3477

; <label>:46:                                     ; preds = %42, %41, %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3479
  ret void, !dbg !3479
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }
attributes #6 = { nobuiltin noredzone }

!llvm.module.flags = !{!420, !421, !422}
!llvm.ident = !{!423}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !88)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lcode.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{!3, !45, !63, !70}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 150, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lopcodes.h", directory: "/root/.unikraft/apps/redis/build")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44}
!7 = !DIEnumerator(name: "OP_MOVE", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "OP_LOADK", value: 1, isUnsigned: true)
!9 = !DIEnumerator(name: "OP_LOADBOOL", value: 2, isUnsigned: true)
!10 = !DIEnumerator(name: "OP_LOADNIL", value: 3, isUnsigned: true)
!11 = !DIEnumerator(name: "OP_GETUPVAL", value: 4, isUnsigned: true)
!12 = !DIEnumerator(name: "OP_GETGLOBAL", value: 5, isUnsigned: true)
!13 = !DIEnumerator(name: "OP_GETTABLE", value: 6, isUnsigned: true)
!14 = !DIEnumerator(name: "OP_SETGLOBAL", value: 7, isUnsigned: true)
!15 = !DIEnumerator(name: "OP_SETUPVAL", value: 8, isUnsigned: true)
!16 = !DIEnumerator(name: "OP_SETTABLE", value: 9, isUnsigned: true)
!17 = !DIEnumerator(name: "OP_NEWTABLE", value: 10, isUnsigned: true)
!18 = !DIEnumerator(name: "OP_SELF", value: 11, isUnsigned: true)
!19 = !DIEnumerator(name: "OP_ADD", value: 12, isUnsigned: true)
!20 = !DIEnumerator(name: "OP_SUB", value: 13, isUnsigned: true)
!21 = !DIEnumerator(name: "OP_MUL", value: 14, isUnsigned: true)
!22 = !DIEnumerator(name: "OP_DIV", value: 15, isUnsigned: true)
!23 = !DIEnumerator(name: "OP_MOD", value: 16, isUnsigned: true)
!24 = !DIEnumerator(name: "OP_POW", value: 17, isUnsigned: true)
!25 = !DIEnumerator(name: "OP_UNM", value: 18, isUnsigned: true)
!26 = !DIEnumerator(name: "OP_NOT", value: 19, isUnsigned: true)
!27 = !DIEnumerator(name: "OP_LEN", value: 20, isUnsigned: true)
!28 = !DIEnumerator(name: "OP_CONCAT", value: 21, isUnsigned: true)
!29 = !DIEnumerator(name: "OP_JMP", value: 22, isUnsigned: true)
!30 = !DIEnumerator(name: "OP_EQ", value: 23, isUnsigned: true)
!31 = !DIEnumerator(name: "OP_LT", value: 24, isUnsigned: true)
!32 = !DIEnumerator(name: "OP_LE", value: 25, isUnsigned: true)
!33 = !DIEnumerator(name: "OP_TEST", value: 26, isUnsigned: true)
!34 = !DIEnumerator(name: "OP_TESTSET", value: 27, isUnsigned: true)
!35 = !DIEnumerator(name: "OP_CALL", value: 28, isUnsigned: true)
!36 = !DIEnumerator(name: "OP_TAILCALL", value: 29, isUnsigned: true)
!37 = !DIEnumerator(name: "OP_RETURN", value: 30, isUnsigned: true)
!38 = !DIEnumerator(name: "OP_FORLOOP", value: 31, isUnsigned: true)
!39 = !DIEnumerator(name: "OP_FORPREP", value: 32, isUnsigned: true)
!40 = !DIEnumerator(name: "OP_TFORLOOP", value: 33, isUnsigned: true)
!41 = !DIEnumerator(name: "OP_SETLIST", value: 34, isUnsigned: true)
!42 = !DIEnumerator(name: "OP_CLOSE", value: 35, isUnsigned: true)
!43 = !DIEnumerator(name: "OP_CLOSURE", value: 36, isUnsigned: true)
!44 = !DIEnumerator(name: "OP_VARARG", value: 37, isUnsigned: true)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !46, line: 19, baseType: !5, size: 32, elements: !47)
!46 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lparser.h", directory: "/root/.unikraft/apps/redis/build")
!47 = !{!48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62}
!48 = !DIEnumerator(name: "VVOID", value: 0, isUnsigned: true)
!49 = !DIEnumerator(name: "VNIL", value: 1, isUnsigned: true)
!50 = !DIEnumerator(name: "VTRUE", value: 2, isUnsigned: true)
!51 = !DIEnumerator(name: "VFALSE", value: 3, isUnsigned: true)
!52 = !DIEnumerator(name: "VK", value: 4, isUnsigned: true)
!53 = !DIEnumerator(name: "VKNUM", value: 5, isUnsigned: true)
!54 = !DIEnumerator(name: "VLOCAL", value: 6, isUnsigned: true)
!55 = !DIEnumerator(name: "VUPVAL", value: 7, isUnsigned: true)
!56 = !DIEnumerator(name: "VGLOBAL", value: 8, isUnsigned: true)
!57 = !DIEnumerator(name: "VINDEXED", value: 9, isUnsigned: true)
!58 = !DIEnumerator(name: "VJMP", value: 10, isUnsigned: true)
!59 = !DIEnumerator(name: "VRELOCABLE", value: 11, isUnsigned: true)
!60 = !DIEnumerator(name: "VNONRELOC", value: 12, isUnsigned: true)
!61 = !DIEnumerator(name: "VCALL", value: 13, isUnsigned: true)
!62 = !DIEnumerator(name: "VVARARG", value: 14, isUnsigned: true)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "UnOpr", file: !64, line: 36, baseType: !5, size: 32, elements: !65)
!64 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lcode.h", directory: "/root/.unikraft/apps/redis/build")
!65 = !{!66, !67, !68, !69}
!66 = !DIEnumerator(name: "OPR_MINUS", value: 0, isUnsigned: true)
!67 = !DIEnumerator(name: "OPR_NOT", value: 1, isUnsigned: true)
!68 = !DIEnumerator(name: "OPR_LEN", value: 2, isUnsigned: true)
!69 = !DIEnumerator(name: "OPR_NOUNOPR", value: 3, isUnsigned: true)
!70 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "BinOpr", file: !64, line: 26, baseType: !5, size: 32, elements: !71)
!71 = !{!72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87}
!72 = !DIEnumerator(name: "OPR_ADD", value: 0, isUnsigned: true)
!73 = !DIEnumerator(name: "OPR_SUB", value: 1, isUnsigned: true)
!74 = !DIEnumerator(name: "OPR_MUL", value: 2, isUnsigned: true)
!75 = !DIEnumerator(name: "OPR_DIV", value: 3, isUnsigned: true)
!76 = !DIEnumerator(name: "OPR_MOD", value: 4, isUnsigned: true)
!77 = !DIEnumerator(name: "OPR_POW", value: 5, isUnsigned: true)
!78 = !DIEnumerator(name: "OPR_CONCAT", value: 6, isUnsigned: true)
!79 = !DIEnumerator(name: "OPR_NE", value: 7, isUnsigned: true)
!80 = !DIEnumerator(name: "OPR_EQ", value: 8, isUnsigned: true)
!81 = !DIEnumerator(name: "OPR_LT", value: 9, isUnsigned: true)
!82 = !DIEnumerator(name: "OPR_LE", value: 10, isUnsigned: true)
!83 = !DIEnumerator(name: "OPR_GT", value: 11, isUnsigned: true)
!84 = !DIEnumerator(name: "OPR_GE", value: 12, isUnsigned: true)
!85 = !DIEnumerator(name: "OPR_AND", value: 13, isUnsigned: true)
!86 = !DIEnumerator(name: "OPR_OR", value: 14, isUnsigned: true)
!87 = !DIEnumerator(name: "OPR_NOBINOPR", value: 15, isUnsigned: true)
!88 = !{!89, !90, !93, !94, !96, !5, !166, !155, !385, !389}
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "OpCode", file: !4, line: 208, baseType: !3)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "Instruction", file: !91, line: 88, baseType: !92)
!91 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/llimits.h", directory: "/root/.unikraft/apps/redis/build")
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "lu_int32", file: !91, line: 18, baseType: !5)
!93 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "lu_byte", file: !91, line: 27, baseType: !95)
!95 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCObject", file: !98, line: 36, baseType: !99)
!98 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lobject.h", directory: "/root/.unikraft/apps/redis/build")
!99 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "GCObject", file: !100, line: 136, size: 1472, elements: !101)
!100 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lstate.h", directory: "/root/.unikraft/apps/redis/build")
!101 = !{!102, !109, !134, !193, !416, !417, !418, !419}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "gch", scope: !99, file: !100, line: 137, baseType: !103, size: 128)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCheader", file: !98, line: 51, baseType: !104)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GCheader", file: !98, line: 49, size: 128, elements: !105)
!105 = !{!106, !107, !108}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !104, file: !98, line: 50, baseType: !96, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !104, file: !98, line: 50, baseType: !94, size: 8, offset: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !104, file: !98, line: 50, baseType: !94, size: 8, offset: 72)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !99, file: !100, line: 138, baseType: !110, size: 192)
!110 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "TString", file: !98, line: 199, size: 192, elements: !111)
!111 = !{!112, !122}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !110, file: !98, line: 200, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "L_Umaxalign", file: !91, line: 47, baseType: !114)
!114 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !91, line: 47, size: 64, elements: !115)
!115 = !{!116, !118, !120}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !114, file: !91, line: 47, baseType: !117, size: 64)
!117 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !114, file: !91, line: 47, baseType: !119, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !114, file: !91, line: 47, baseType: !121, size: 64)
!121 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "tsv", scope: !110, file: !98, line: 206, baseType: !123, size: 192)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !110, file: !98, line: 201, size: 192, elements: !124)
!124 = !{!125, !126, !127, !128, !129, !130}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !123, file: !98, line: 202, baseType: !96, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !123, file: !98, line: 202, baseType: !94, size: 8, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !123, file: !98, line: 202, baseType: !94, size: 8, offset: 72)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !123, file: !98, line: 203, baseType: !94, size: 8, offset: 80)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !123, file: !98, line: 204, baseType: !5, size: 32, offset: 96)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !123, file: !98, line: 205, baseType: !131, size: 64, offset: 128)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !132, line: 58, baseType: !133)
!132 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!133 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !99, file: !100, line: 139, baseType: !135, size: 320)
!135 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "Udata", file: !98, line: 215, size: 320, elements: !136)
!136 = !{!137, !138}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !135, file: !98, line: 216, baseType: !113, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "uv", scope: !135, file: !98, line: 222, baseType: !139, size: 320)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !135, file: !98, line: 217, size: 320, elements: !140)
!140 = !{!141, !142, !143, !144, !191, !192}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !139, file: !98, line: 218, baseType: !96, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !139, file: !98, line: 218, baseType: !94, size: 8, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !139, file: !98, line: 218, baseType: !94, size: 8, offset: 72)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "metatable", scope: !139, file: !98, line: 219, baseType: !145, size: 64, offset: 128)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Table", file: !98, line: 338, size: 512, elements: !147)
!147 = !{!148, !149, !150, !151, !152, !153, !154, !170, !188, !189, !190}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !146, file: !98, line: 339, baseType: !96, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !146, file: !98, line: 339, baseType: !94, size: 8, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !146, file: !98, line: 339, baseType: !94, size: 8, offset: 72)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !146, file: !98, line: 340, baseType: !94, size: 8, offset: 80)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "lsizenode", scope: !146, file: !98, line: 341, baseType: !94, size: 8, offset: 88)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "metatable", scope: !146, file: !98, line: 342, baseType: !145, size: 64, offset: 128)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "array", scope: !146, file: !98, line: 343, baseType: !155, size: 64, offset: 192)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "TValue", file: !98, line: 75, baseType: !157)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lua_TValue", file: !98, line: 73, size: 128, elements: !158)
!158 = !{!159, !169}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !157, file: !98, line: 74, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "Value", file: !98, line: 64, baseType: !161)
!161 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !98, line: 59, size: 64, elements: !162)
!162 = !{!163, !164, !165, !168}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !161, file: !98, line: 60, baseType: !96, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !161, file: !98, line: 61, baseType: !119, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !161, file: !98, line: 62, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Number", file: !167, line: 99, baseType: !117)
!167 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lua.h", directory: "/root/.unikraft/apps/redis/build")
!168 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !161, file: !98, line: 63, baseType: !93, size: 32)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !157, file: !98, line: 74, baseType: !93, size: 32, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !146, file: !98, line: 344, baseType: !171, size: 64, offset: 256)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "Node", file: !98, line: 335, baseType: !173)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Node", file: !98, line: 332, size: 320, elements: !174)
!174 = !{!175, !176}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "i_val", scope: !173, file: !98, line: 333, baseType: !156, size: 128)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "i_key", scope: !173, file: !98, line: 334, baseType: !177, size: 192, offset: 128)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "TKey", file: !98, line: 329, baseType: !178)
!178 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "TKey", file: !98, line: 323, size: 192, elements: !179)
!179 = !{!180, !187}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "nk", scope: !178, file: !98, line: 327, baseType: !181, size: 192)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !178, file: !98, line: 324, size: 192, elements: !182)
!182 = !{!183, !184, !185}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !181, file: !98, line: 325, baseType: !160, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !181, file: !98, line: 325, baseType: !93, size: 32, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !181, file: !98, line: 326, baseType: !186, size: 64, offset: 128)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "tvk", scope: !178, file: !98, line: 328, baseType: !156, size: 128)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "lastfree", scope: !146, file: !98, line: 345, baseType: !171, size: 64, offset: 320)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !146, file: !98, line: 346, baseType: !96, size: 64, offset: 384)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "sizearray", scope: !146, file: !98, line: 347, baseType: !93, size: 32, offset: 448)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !139, file: !98, line: 220, baseType: !145, size: 64, offset: 192)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !139, file: !98, line: 221, baseType: !131, size: 64, offset: 256)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !99, file: !100, line: 140, baseType: !194, size: 448)
!194 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "Closure", file: !98, line: 309, size: 448, elements: !195)
!195 = !{!196, !365}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !194, file: !98, line: 310, baseType: !197, size: 448)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "CClosure", file: !98, line: 299, baseType: !198)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CClosure", file: !98, line: 295, size: 448, elements: !199)
!199 = !{!200, !201, !202, !203, !204, !205, !206, !207, !361}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !198, file: !98, line: 296, baseType: !96, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !198, file: !98, line: 296, baseType: !94, size: 8, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !198, file: !98, line: 296, baseType: !94, size: 8, offset: 72)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "isC", scope: !198, file: !98, line: 296, baseType: !94, size: 8, offset: 80)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "nupvalues", scope: !198, file: !98, line: 296, baseType: !94, size: 8, offset: 88)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !198, file: !98, line: 296, baseType: !96, size: 64, offset: 128)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !198, file: !98, line: 296, baseType: !145, size: 64, offset: 192)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !198, file: !98, line: 297, baseType: !208, size: 64, offset: 256)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_CFunction", file: !167, line: 52, baseType: !209)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DISubroutineType(types: !211)
!211 = !{!93, !212}
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_State", file: !167, line: 50, baseType: !214)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lua_State", file: !100, line: 100, size: 1472, elements: !215)
!215 = !{!216, !217, !218, !219, !220, !222, !223, !300, !313, !314, !315, !316, !317, !318, !319, !320, !322, !323, !324, !325, !326, !327, !352, !353, !354, !355, !356, !359}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !214, file: !100, line: 101, baseType: !96, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !214, file: !100, line: 101, baseType: !94, size: 8, offset: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !214, file: !100, line: 101, baseType: !94, size: 8, offset: 72)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !214, file: !100, line: 102, baseType: !94, size: 8, offset: 80)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !214, file: !100, line: 103, baseType: !221, size: 64, offset: 128)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "StkId", file: !98, line: 193, baseType: !155)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !214, file: !100, line: 104, baseType: !221, size: 64, offset: 192)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "l_G", scope: !214, file: !100, line: 105, baseType: !224, size: 64, offset: 256)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "global_State", file: !100, line: 94, baseType: !226)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "global_State", file: !100, line: 68, size: 3456, elements: !227)
!227 = !{!228, !236, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !261, !263, !264, !265, !266, !267, !268, !269, !270, !272, !290, !294}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "strt", scope: !226, file: !100, line: 69, baseType: !229, size: 128)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "stringtable", file: !100, line: 42, baseType: !230)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stringtable", file: !100, line: 38, size: 128, elements: !231)
!231 = !{!232, !234, !235}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !230, file: !100, line: 39, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "nuse", scope: !230, file: !100, line: 40, baseType: !92, size: 32, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !230, file: !100, line: 41, baseType: !93, size: 32, offset: 96)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "frealloc", scope: !226, file: !100, line: 70, baseType: !237, size: 64, offset: 128)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Alloc", file: !167, line: 66, baseType: !238)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DISubroutineType(types: !240)
!240 = !{!119, !119, !119, !131, !131}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "ud", scope: !226, file: !100, line: 71, baseType: !119, size: 64, offset: 192)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "currentwhite", scope: !226, file: !100, line: 72, baseType: !94, size: 8, offset: 256)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "gcstate", scope: !226, file: !100, line: 73, baseType: !94, size: 8, offset: 264)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "sweepstrgc", scope: !226, file: !100, line: 74, baseType: !93, size: 32, offset: 288)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "rootgc", scope: !226, file: !100, line: 75, baseType: !96, size: 64, offset: 320)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "sweepgc", scope: !226, file: !100, line: 76, baseType: !233, size: 64, offset: 384)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "gray", scope: !226, file: !100, line: 77, baseType: !96, size: 64, offset: 448)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "grayagain", scope: !226, file: !100, line: 78, baseType: !96, size: 64, offset: 512)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "weak", scope: !226, file: !100, line: 79, baseType: !96, size: 64, offset: 576)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "tmudata", scope: !226, file: !100, line: 80, baseType: !96, size: 64, offset: 640)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "buff", scope: !226, file: !100, line: 81, baseType: !252, size: 192, offset: 704)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "Mbuffer", file: !253, line: 28, baseType: !254)
!253 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lzio.h", directory: "/root/.unikraft/apps/redis/build")
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Mbuffer", file: !253, line: 24, size: 192, elements: !255)
!255 = !{!256, !259, !260}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !254, file: !253, line: 25, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !254, file: !253, line: 26, baseType: !131, size: 64, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "buffsize", scope: !254, file: !253, line: 27, baseType: !131, size: 64, offset: 128)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "GCthreshold", scope: !226, file: !100, line: 82, baseType: !262, size: 64, offset: 896)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "lu_mem", file: !91, line: 20, baseType: !131)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "totalbytes", scope: !226, file: !100, line: 83, baseType: !262, size: 64, offset: 960)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "estimate", scope: !226, file: !100, line: 84, baseType: !262, size: 64, offset: 1024)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "gcdept", scope: !226, file: !100, line: 85, baseType: !262, size: 64, offset: 1088)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "gcpause", scope: !226, file: !100, line: 86, baseType: !93, size: 32, offset: 1152)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "gcstepmul", scope: !226, file: !100, line: 87, baseType: !93, size: 32, offset: 1184)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "panic", scope: !226, file: !100, line: 88, baseType: !208, size: 64, offset: 1216)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "l_registry", scope: !226, file: !100, line: 89, baseType: !156, size: 128, offset: 1280)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "mainthread", scope: !226, file: !100, line: 90, baseType: !271, size: 64, offset: 1408)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "uvhead", scope: !226, file: !100, line: 91, baseType: !273, size: 320, offset: 1472)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "UpVal", file: !98, line: 284, baseType: !274)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "UpVal", file: !98, line: 274, size: 320, elements: !275)
!275 = !{!276, !277, !278, !279, !280}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !274, file: !98, line: 275, baseType: !96, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !274, file: !98, line: 275, baseType: !94, size: 8, offset: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !274, file: !98, line: 275, baseType: !94, size: 8, offset: 72)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !274, file: !98, line: 276, baseType: !155, size: 64, offset: 128)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !274, file: !98, line: 283, baseType: !281, size: 128, offset: 192)
!281 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !274, file: !98, line: 277, size: 128, elements: !282)
!282 = !{!283, !284}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !281, file: !98, line: 278, baseType: !156, size: 128)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !281, file: !98, line: 282, baseType: !285, size: 128)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !281, file: !98, line: 279, size: 128, elements: !286)
!286 = !{!287, !289}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !285, file: !98, line: 280, baseType: !288, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !285, file: !98, line: 281, baseType: !288, size: 64, offset: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "mt", scope: !226, file: !100, line: 92, baseType: !291, size: 576, offset: 1792)
!291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 576, elements: !292)
!292 = !{!293}
!293 = !DISubrange(count: 9)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "tmname", scope: !226, file: !100, line: 93, baseType: !295, size: 1088, offset: 2368)
!295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 1088, elements: !298)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "TString", file: !98, line: 207, baseType: !110)
!298 = !{!299}
!299 = !DISubrange(count: 17)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "ci", scope: !214, file: !100, line: 106, baseType: !301, size: 64, offset: 320)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "CallInfo", file: !100, line: 55, baseType: !303)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CallInfo", file: !100, line: 48, size: 320, elements: !304)
!304 = !{!305, !306, !307, !308, !311, !312}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !303, file: !100, line: 49, baseType: !221, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !303, file: !100, line: 50, baseType: !221, size: 64, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !303, file: !100, line: 51, baseType: !221, size: 64, offset: 128)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "savedpc", scope: !303, file: !100, line: 52, baseType: !309, size: 64, offset: 192)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "nresults", scope: !303, file: !100, line: 53, baseType: !93, size: 32, offset: 256)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "tailcalls", scope: !303, file: !100, line: 54, baseType: !93, size: 32, offset: 288)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "savedpc", scope: !214, file: !100, line: 107, baseType: !309, size: 64, offset: 384)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "stack_last", scope: !214, file: !100, line: 108, baseType: !221, size: 64, offset: 448)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !214, file: !100, line: 109, baseType: !221, size: 64, offset: 512)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "end_ci", scope: !214, file: !100, line: 110, baseType: !301, size: 64, offset: 576)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "base_ci", scope: !214, file: !100, line: 111, baseType: !301, size: 64, offset: 640)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "stacksize", scope: !214, file: !100, line: 112, baseType: !93, size: 32, offset: 704)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "size_ci", scope: !214, file: !100, line: 113, baseType: !93, size: 32, offset: 736)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "nCcalls", scope: !214, file: !100, line: 114, baseType: !321, size: 16, offset: 768)
!321 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "baseCcalls", scope: !214, file: !100, line: 115, baseType: !321, size: 16, offset: 784)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "hookmask", scope: !214, file: !100, line: 116, baseType: !94, size: 8, offset: 800)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "allowhook", scope: !214, file: !100, line: 117, baseType: !94, size: 8, offset: 808)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "basehookcount", scope: !214, file: !100, line: 118, baseType: !93, size: 32, offset: 832)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "hookcount", scope: !214, file: !100, line: 119, baseType: !93, size: 32, offset: 864)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "hook", scope: !214, file: !100, line: 120, baseType: !328, size: 64, offset: 896)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Hook", file: !167, line: 330, baseType: !329)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DISubroutineType(types: !331)
!331 = !{null, !212, !332}
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Debug", file: !167, line: 326, baseType: !334)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lua_Debug", file: !167, line: 346, size: 960, elements: !335)
!335 = !{!336, !337, !340, !341, !342, !343, !344, !345, !346, !347, !351}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !334, file: !167, line: 347, baseType: !93, size: 32)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !334, file: !167, line: 348, baseType: !338, size: 64, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !258)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "namewhat", scope: !334, file: !167, line: 349, baseType: !338, size: 64, offset: 128)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "what", scope: !334, file: !167, line: 350, baseType: !338, size: 64, offset: 192)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !334, file: !167, line: 351, baseType: !338, size: 64, offset: 256)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "currentline", scope: !334, file: !167, line: 352, baseType: !93, size: 32, offset: 320)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "nups", scope: !334, file: !167, line: 353, baseType: !93, size: 32, offset: 352)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "linedefined", scope: !334, file: !167, line: 354, baseType: !93, size: 32, offset: 384)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "lastlinedefined", scope: !334, file: !167, line: 355, baseType: !93, size: 32, offset: 416)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "short_src", scope: !334, file: !167, line: 356, baseType: !348, size: 480, offset: 448)
!348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !258, size: 480, elements: !349)
!349 = !{!350}
!350 = !DISubrange(count: 60)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "i_ci", scope: !334, file: !167, line: 358, baseType: !93, size: 32, offset: 928)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "l_gt", scope: !214, file: !100, line: 121, baseType: !156, size: 128, offset: 960)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !214, file: !100, line: 122, baseType: !156, size: 128, offset: 1088)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "openupval", scope: !214, file: !100, line: 123, baseType: !96, size: 64, offset: 1216)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !214, file: !100, line: 124, baseType: !96, size: 64, offset: 1280)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "errorJmp", scope: !214, file: !100, line: 125, baseType: !357, size: 64, offset: 1344)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DICompositeType(tag: DW_TAG_structure_type, name: "lua_longjmp", file: !100, line: 18, flags: DIFlagFwdDecl)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "errfunc", scope: !214, file: !100, line: 126, baseType: !360, size: 64, offset: 1408)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !132, line: 49, baseType: !121)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "upvalue", scope: !198, file: !98, line: 298, baseType: !362, size: 128, offset: 320)
!362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 128, elements: !363)
!363 = !{!364}
!364 = !DISubrange(count: 1)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !194, file: !98, line: 311, baseType: !366, size: 384)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "LClosure", file: !98, line: 306, baseType: !367)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LClosure", file: !98, line: 302, size: 384, elements: !368)
!368 = !{!369, !370, !371, !372, !373, !374, !375, !376, !413}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !367, file: !98, line: 303, baseType: !96, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !367, file: !98, line: 303, baseType: !94, size: 8, offset: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !367, file: !98, line: 303, baseType: !94, size: 8, offset: 72)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "isC", scope: !367, file: !98, line: 303, baseType: !94, size: 8, offset: 80)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "nupvalues", scope: !367, file: !98, line: 303, baseType: !94, size: 8, offset: 88)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !367, file: !98, line: 303, baseType: !96, size: 64, offset: 128)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !367, file: !98, line: 303, baseType: !145, size: 64, offset: 192)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !367, file: !98, line: 304, baseType: !377, size: 64, offset: 256)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Proto", file: !98, line: 231, size: 960, elements: !379)
!379 = !{!380, !381, !382, !383, !384, !386, !388, !390, !397, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !378, file: !98, line: 232, baseType: !96, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !378, file: !98, line: 232, baseType: !94, size: 8, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !378, file: !98, line: 232, baseType: !94, size: 8, offset: 72)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !378, file: !98, line: 233, baseType: !155, size: 64, offset: 128)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !378, file: !98, line: 234, baseType: !385, size: 64, offset: 192)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !378, file: !98, line: 235, baseType: !387, size: 64, offset: 256)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "lineinfo", scope: !378, file: !98, line: 236, baseType: !389, size: 64, offset: 320)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "locvars", scope: !378, file: !98, line: 237, baseType: !391, size: 64, offset: 384)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LocVar", file: !98, line: 262, size: 128, elements: !393)
!393 = !{!394, !395, !396}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "varname", scope: !392, file: !98, line: 263, baseType: !296, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "startpc", scope: !392, file: !98, line: 264, baseType: !93, size: 32, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "endpc", scope: !392, file: !98, line: 265, baseType: !93, size: 32, offset: 96)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "upvalues", scope: !378, file: !98, line: 238, baseType: !398, size: 64, offset: 448)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !378, file: !98, line: 239, baseType: !296, size: 64, offset: 512)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "sizeupvalues", scope: !378, file: !98, line: 240, baseType: !93, size: 32, offset: 576)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "sizek", scope: !378, file: !98, line: 241, baseType: !93, size: 32, offset: 608)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "sizecode", scope: !378, file: !98, line: 242, baseType: !93, size: 32, offset: 640)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "sizelineinfo", scope: !378, file: !98, line: 243, baseType: !93, size: 32, offset: 672)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "sizep", scope: !378, file: !98, line: 244, baseType: !93, size: 32, offset: 704)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "sizelocvars", scope: !378, file: !98, line: 245, baseType: !93, size: 32, offset: 736)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "linedefined", scope: !378, file: !98, line: 246, baseType: !93, size: 32, offset: 768)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "lastlinedefined", scope: !378, file: !98, line: 247, baseType: !93, size: 32, offset: 800)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !378, file: !98, line: 248, baseType: !96, size: 64, offset: 832)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "nups", scope: !378, file: !98, line: 249, baseType: !94, size: 8, offset: 896)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "numparams", scope: !378, file: !98, line: 250, baseType: !94, size: 8, offset: 904)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "is_vararg", scope: !378, file: !98, line: 251, baseType: !94, size: 8, offset: 912)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "maxstacksize", scope: !378, file: !98, line: 252, baseType: !94, size: 8, offset: 920)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "upvals", scope: !367, file: !98, line: 305, baseType: !414, size: 64, offset: 320)
!414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !415, size: 64, elements: !363)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "h", scope: !99, file: !100, line: 141, baseType: !146, size: 512)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !99, file: !100, line: 142, baseType: !378, size: 960)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "uv", scope: !99, file: !100, line: 143, baseType: !274, size: 320)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "th", scope: !99, file: !100, line: 144, baseType: !214, size: 1472)
!420 = !{i32 2, !"Dwarf Version", i32 4}
!421 = !{i32 2, !"Debug Info Version", i32 3}
!422 = !{i32 1, !"wchar_size", i32 4}
!423 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!424 = distinct !DISubprogram(name: "luaK_nil", scope: !1, file: !1, line: 35, type: !425, isLocal: false, isDefinition: true, scopeLine: 35, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !504)
!425 = !DISubroutineType(types: !426)
!426 = !{null, !427, !93, !93}
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "FuncState", file: !46, line: 75, baseType: !429)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FuncState", file: !46, line: 58, size: 4800, elements: !430)
!430 = !{!431, !434, !437, !439, !480, !481, !484, !485, !486, !487, !488, !489, !490, !492, !493, !500}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !429, file: !46, line: 59, baseType: !432, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "Proto", file: !98, line: 253, baseType: !378)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "h", scope: !429, file: !46, line: 60, baseType: !435, size: 64, offset: 64)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "Table", file: !98, line: 348, baseType: !146)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !429, file: !46, line: 61, baseType: !438, size: 64, offset: 128)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "ls", scope: !429, file: !46, line: 62, baseType: !440, size: 64, offset: 192)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LexState", file: !442, line: 55, size: 768, elements: !443)
!442 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/llex.h", directory: "/root/.unikraft/apps/redis/build")
!443 = !{!444, !445, !446, !447, !458, !459, !460, !461, !476, !478, !479}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !441, file: !442, line: 56, baseType: !93, size: 32)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "linenumber", scope: !441, file: !442, line: 57, baseType: !93, size: 32, offset: 32)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "lastline", scope: !441, file: !442, line: 58, baseType: !93, size: 32, offset: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "t", scope: !441, file: !442, line: 59, baseType: !448, size: 128, offset: 128)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "Token", file: !442, line: 52, baseType: !449)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Token", file: !442, line: 49, size: 128, elements: !450)
!450 = !{!451, !452}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !449, file: !442, line: 50, baseType: !93, size: 32)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "seminfo", scope: !449, file: !442, line: 51, baseType: !453, size: 64, offset: 64)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "SemInfo", file: !442, line: 46, baseType: !454)
!454 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !442, line: 43, size: 64, elements: !455)
!455 = !{!456, !457}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !454, file: !442, line: 44, baseType: !166, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !454, file: !442, line: 45, baseType: !296, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !441, file: !442, line: 60, baseType: !448, size: 128, offset: 256)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !441, file: !442, line: 61, baseType: !438, size: 64, offset: 384)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "L", scope: !441, file: !442, line: 62, baseType: !271, size: 64, offset: 448)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !441, file: !442, line: 63, baseType: !462, size: 64, offset: 512)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZIO", file: !253, line: 18, baseType: !464)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Zio", file: !253, line: 56, size: 320, elements: !465)
!465 = !{!466, !467, !468, !474, !475}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !464, file: !253, line: 57, baseType: !131, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !464, file: !253, line: 58, baseType: !338, size: 64, offset: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "reader", scope: !464, file: !253, line: 59, baseType: !469, size: 64, offset: 128)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Reader", file: !167, line: 58, baseType: !470)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DISubroutineType(types: !472)
!472 = !{!338, !212, !119, !473}
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !464, file: !253, line: 60, baseType: !119, size: 64, offset: 192)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "L", scope: !464, file: !253, line: 61, baseType: !212, size: 64, offset: 256)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "buff", scope: !441, file: !442, line: 64, baseType: !477, size: 64, offset: 576)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !441, file: !442, line: 65, baseType: !296, size: 64, offset: 640)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "decpoint", scope: !441, file: !442, line: 66, baseType: !258, size: 8, offset: 704)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "L", scope: !429, file: !46, line: 63, baseType: !271, size: 64, offset: 256)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "bl", scope: !429, file: !46, line: 64, baseType: !482, size: 64, offset: 320)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DICompositeType(tag: DW_TAG_structure_type, name: "BlockCnt", file: !46, line: 54, flags: DIFlagFwdDecl)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "pc", scope: !429, file: !46, line: 65, baseType: !93, size: 32, offset: 384)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "lasttarget", scope: !429, file: !46, line: 66, baseType: !93, size: 32, offset: 416)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "jpc", scope: !429, file: !46, line: 67, baseType: !93, size: 32, offset: 448)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "freereg", scope: !429, file: !46, line: 68, baseType: !93, size: 32, offset: 480)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "nk", scope: !429, file: !46, line: 69, baseType: !93, size: 32, offset: 512)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "np", scope: !429, file: !46, line: 70, baseType: !93, size: 32, offset: 544)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "nlocvars", scope: !429, file: !46, line: 71, baseType: !491, size: 16, offset: 576)
!491 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "nactvar", scope: !429, file: !46, line: 72, baseType: !94, size: 8, offset: 592)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "upvalues", scope: !429, file: !46, line: 73, baseType: !494, size: 960, offset: 600)
!494 = !DICompositeType(tag: DW_TAG_array_type, baseType: !495, size: 960, elements: !349)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "upvaldesc", file: !46, line: 51, baseType: !496)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upvaldesc", file: !46, line: 48, size: 16, elements: !497)
!497 = !{!498, !499}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !496, file: !46, line: 49, baseType: !94, size: 8)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !496, file: !46, line: 50, baseType: !94, size: 8, offset: 8)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "actvar", scope: !429, file: !46, line: 74, baseType: !501, size: 3200, offset: 1568)
!501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 3200, elements: !502)
!502 = !{!503}
!503 = !DISubrange(count: 200)
!504 = !{!505, !506, !507, !508, !509, !516}
!505 = !DILocalVariable(name: "fs", arg: 1, scope: !424, file: !1, line: 35, type: !427)
!506 = !DILocalVariable(name: "from", arg: 2, scope: !424, file: !1, line: 35, type: !93)
!507 = !DILocalVariable(name: "n", arg: 3, scope: !424, file: !1, line: 35, type: !93)
!508 = !DILocalVariable(name: "previous", scope: !424, file: !1, line: 36, type: !385)
!509 = !DILocalVariable(name: "pfrom", scope: !510, file: !1, line: 45, type: !93)
!510 = distinct !DILexicalBlock(scope: !511, file: !1, line: 44, column: 48)
!511 = distinct !DILexicalBlock(scope: !512, file: !1, line: 44, column: 11)
!512 = distinct !DILexicalBlock(scope: !513, file: !1, line: 42, column: 10)
!513 = distinct !DILexicalBlock(scope: !514, file: !1, line: 38, column: 9)
!514 = distinct !DILexicalBlock(scope: !515, file: !1, line: 37, column: 32)
!515 = distinct !DILexicalBlock(scope: !424, file: !1, line: 37, column: 7)
!516 = !DILocalVariable(name: "pto", scope: !510, file: !1, line: 46, type: !93)
!517 = !DILocation(line: 35, column: 27, scope: !424)
!518 = !DILocation(line: 35, column: 35, scope: !424)
!519 = !DILocation(line: 35, column: 45, scope: !424)
!520 = !DILocation(line: 37, column: 11, scope: !515)
!521 = !{!522, !526, i64 48}
!522 = !{!"FuncState", !523, i64 0, !523, i64 8, !523, i64 16, !523, i64 24, !523, i64 32, !523, i64 40, !526, i64 48, !526, i64 52, !526, i64 56, !526, i64 60, !526, i64 64, !526, i64 68, !527, i64 72, !524, i64 74, !524, i64 75, !524, i64 196}
!523 = !{!"any pointer", !524, i64 0}
!524 = !{!"omnipotent char", !525, i64 0}
!525 = !{!"Simple C/C++ TBAA"}
!526 = !{!"int", !524, i64 0}
!527 = !{!"short", !524, i64 0}
!528 = !DILocation(line: 37, column: 20, scope: !515)
!529 = !{!522, !526, i64 52}
!530 = !DILocation(line: 37, column: 14, scope: !515)
!531 = !DILocation(line: 37, column: 7, scope: !424)
!532 = !DILocation(line: 38, column: 16, scope: !513)
!533 = !DILocation(line: 38, column: 9, scope: !514)
!534 = !DILocation(line: 39, column: 23, scope: !535)
!535 = distinct !DILexicalBlock(scope: !536, file: !1, line: 39, column: 11)
!536 = distinct !DILexicalBlock(scope: !513, file: !1, line: 38, column: 22)
!537 = !{!522, !524, i64 74}
!538 = !DILocation(line: 39, column: 19, scope: !535)
!539 = !DILocation(line: 39, column: 16, scope: !535)
!540 = !DILocation(line: 39, column: 11, scope: !536)
!541 = !DILocation(line: 43, column: 23, scope: !512)
!542 = !{!522, !523, i64 0}
!543 = !DILocation(line: 43, column: 26, scope: !512)
!544 = !{!545, !523, i64 24}
!545 = !{!"Proto", !523, i64 0, !524, i64 8, !524, i64 9, !523, i64 16, !523, i64 24, !523, i64 32, !523, i64 40, !523, i64 48, !523, i64 56, !523, i64 64, !526, i64 72, !526, i64 76, !526, i64 80, !526, i64 84, !526, i64 88, !526, i64 92, !526, i64 96, !526, i64 100, !523, i64 104, !524, i64 112, !524, i64 113, !524, i64 114, !524, i64 115}
!546 = !DILocation(line: 43, column: 37, scope: !512)
!547 = !DILocation(line: 43, column: 19, scope: !512)
!548 = !DILocation(line: 36, column: 16, scope: !424)
!549 = !DILocation(line: 44, column: 11, scope: !511)
!550 = !{!526, !526, i64 0}
!551 = !DILocation(line: 44, column: 33, scope: !511)
!552 = !DILocation(line: 44, column: 11, scope: !512)
!553 = !DILocation(line: 45, column: 21, scope: !510)
!554 = !DILocation(line: 45, column: 13, scope: !510)
!555 = !DILocation(line: 46, column: 19, scope: !510)
!556 = !DILocation(line: 46, column: 13, scope: !510)
!557 = !DILocation(line: 47, column: 19, scope: !558)
!558 = distinct !DILexicalBlock(scope: !510, file: !1, line: 47, column: 13)
!559 = !DILocation(line: 47, column: 27, scope: !558)
!560 = !DILocation(line: 47, column: 41, scope: !558)
!561 = !DILocation(line: 47, column: 35, scope: !558)
!562 = !DILocation(line: 47, column: 13, scope: !510)
!563 = !DILocation(line: 48, column: 19, scope: !564)
!564 = distinct !DILexicalBlock(scope: !565, file: !1, line: 48, column: 15)
!565 = distinct !DILexicalBlock(scope: !558, file: !1, line: 47, column: 45)
!566 = !DILocation(line: 48, column: 21, scope: !564)
!567 = !DILocation(line: 48, column: 24, scope: !564)
!568 = !DILocation(line: 48, column: 15, scope: !565)
!569 = !DILocation(line: 49, column: 13, scope: !564)
!570 = !DILocation(line: 52, column: 7, scope: !511)
!571 = !DILocation(line: 55, column: 42, scope: !424)
!572 = !DILocalVariable(name: "fs", arg: 1, scope: !573, file: !1, line: 804, type: !427)
!573 = distinct !DISubprogram(name: "luaK_codeABC", scope: !1, file: !1, line: 804, type: !574, isLocal: false, isDefinition: true, scopeLine: 804, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !576)
!574 = !DISubroutineType(types: !575)
!575 = !{!93, !427, !89, !93, !93, !93}
!576 = !{!572, !577, !578, !579, !580}
!577 = !DILocalVariable(name: "o", arg: 2, scope: !573, file: !1, line: 804, type: !89)
!578 = !DILocalVariable(name: "a", arg: 3, scope: !573, file: !1, line: 804, type: !93)
!579 = !DILocalVariable(name: "b", arg: 4, scope: !573, file: !1, line: 804, type: !93)
!580 = !DILocalVariable(name: "c", arg: 5, scope: !573, file: !1, line: 804, type: !93)
!581 = !DILocation(line: 804, column: 30, scope: !573, inlinedAt: !582)
!582 = distinct !DILocation(line: 55, column: 3, scope: !424)
!583 = !DILocation(line: 804, column: 41, scope: !573, inlinedAt: !582)
!584 = !DILocation(line: 804, column: 48, scope: !573, inlinedAt: !582)
!585 = !DILocation(line: 804, column: 55, scope: !573, inlinedAt: !582)
!586 = !DILocation(line: 804, column: 62, scope: !573, inlinedAt: !582)
!587 = !DILocation(line: 808, column: 24, scope: !573, inlinedAt: !582)
!588 = !DILocation(line: 808, column: 52, scope: !573, inlinedAt: !582)
!589 = !{!522, !523, i64 24}
!590 = !DILocation(line: 808, column: 56, scope: !573, inlinedAt: !582)
!591 = !{!592, !526, i64 8}
!592 = !{!"LexState", !526, i64 0, !526, i64 4, !526, i64 8, !593, i64 16, !593, i64 32, !523, i64 48, !523, i64 56, !523, i64 64, !523, i64 72, !523, i64 80, !524, i64 88}
!593 = !{!"Token", !526, i64 0, !524, i64 8}
!594 = !DILocation(line: 808, column: 10, scope: !573, inlinedAt: !582)
!595 = !DILocation(line: 56, column: 1, scope: !424)
!596 = !DILocation(line: 0, scope: !424)
!597 = !DILocation(line: 804, column: 30, scope: !573)
!598 = !DILocation(line: 804, column: 41, scope: !573)
!599 = !DILocation(line: 804, column: 48, scope: !573)
!600 = !DILocation(line: 804, column: 55, scope: !573)
!601 = !DILocation(line: 804, column: 62, scope: !573)
!602 = !DILocation(line: 808, column: 24, scope: !573)
!603 = !DILocation(line: 808, column: 52, scope: !573)
!604 = !DILocation(line: 808, column: 56, scope: !573)
!605 = !DILocation(line: 808, column: 10, scope: !573)
!606 = !DILocation(line: 808, column: 3, scope: !573)
!607 = distinct !DISubprogram(name: "luaK_jump", scope: !1, file: !1, line: 59, type: !608, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !610)
!608 = !DISubroutineType(types: !609)
!609 = !{!93, !427}
!610 = !{!611, !612, !613}
!611 = !DILocalVariable(name: "fs", arg: 1, scope: !607, file: !1, line: 59, type: !427)
!612 = !DILocalVariable(name: "jpc", scope: !607, file: !1, line: 60, type: !93)
!613 = !DILocalVariable(name: "j", scope: !607, file: !1, line: 61, type: !93)
!614 = !DILocation(line: 59, column: 27, scope: !607)
!615 = !DILocation(line: 60, column: 17, scope: !607)
!616 = !{!522, !526, i64 56}
!617 = !DILocation(line: 60, column: 7, scope: !607)
!618 = !DILocation(line: 61, column: 3, scope: !607)
!619 = !DILocation(line: 62, column: 11, scope: !607)
!620 = !DILocalVariable(name: "fs", arg: 1, scope: !621, file: !1, line: 812, type: !427)
!621 = distinct !DISubprogram(name: "luaK_codeABx", scope: !1, file: !1, line: 812, type: !622, isLocal: false, isDefinition: true, scopeLine: 812, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !624)
!622 = !DISubroutineType(types: !623)
!623 = !{!93, !427, !89, !93, !5}
!624 = !{!620, !625, !626, !627}
!625 = !DILocalVariable(name: "o", arg: 2, scope: !621, file: !1, line: 812, type: !89)
!626 = !DILocalVariable(name: "a", arg: 3, scope: !621, file: !1, line: 812, type: !93)
!627 = !DILocalVariable(name: "bc", arg: 4, scope: !621, file: !1, line: 812, type: !5)
!628 = !DILocation(line: 812, column: 30, scope: !621, inlinedAt: !629)
!629 = distinct !DILocation(line: 63, column: 7, scope: !607)
!630 = !DILocation(line: 812, column: 41, scope: !621, inlinedAt: !629)
!631 = !DILocation(line: 812, column: 48, scope: !621, inlinedAt: !629)
!632 = !DILocation(line: 812, column: 64, scope: !621, inlinedAt: !629)
!633 = !DILocation(line: 815, column: 50, scope: !621, inlinedAt: !629)
!634 = !DILocation(line: 815, column: 54, scope: !621, inlinedAt: !629)
!635 = !DILocation(line: 815, column: 10, scope: !621, inlinedAt: !629)
!636 = !DILocation(line: 815, column: 3, scope: !621, inlinedAt: !629)
!637 = !DILocation(line: 61, column: 7, scope: !607)
!638 = !DILocation(line: 63, column: 5, scope: !607)
!639 = !DILocation(line: 64, column: 3, scope: !607)
!640 = !DILocation(line: 65, column: 10, scope: !607)
!641 = !DILocation(line: 66, column: 1, scope: !607)
!642 = !DILocation(line: 65, column: 3, scope: !607)
!643 = !DILocation(line: 812, column: 30, scope: !621)
!644 = !DILocation(line: 812, column: 41, scope: !621)
!645 = !DILocation(line: 812, column: 48, scope: !621)
!646 = !DILocation(line: 812, column: 64, scope: !621)
!647 = !DILocation(line: 815, column: 24, scope: !621)
!648 = !DILocation(line: 815, column: 50, scope: !621)
!649 = !DILocation(line: 815, column: 54, scope: !621)
!650 = !DILocation(line: 815, column: 10, scope: !621)
!651 = !DILocation(line: 815, column: 3, scope: !621)
!652 = distinct !DISubprogram(name: "luaK_concat", scope: !1, file: !1, line: 185, type: !653, isLocal: false, isDefinition: true, scopeLine: 185, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !655)
!653 = !DISubroutineType(types: !654)
!654 = !{null, !427, !389, !93}
!655 = !{!656, !657, !658, !659, !663}
!656 = !DILocalVariable(name: "fs", arg: 1, scope: !652, file: !1, line: 185, type: !427)
!657 = !DILocalVariable(name: "l1", arg: 2, scope: !652, file: !1, line: 185, type: !389)
!658 = !DILocalVariable(name: "l2", arg: 3, scope: !652, file: !1, line: 185, type: !93)
!659 = !DILocalVariable(name: "list", scope: !660, file: !1, line: 190, type: !93)
!660 = distinct !DILexicalBlock(scope: !661, file: !1, line: 189, column: 8)
!661 = distinct !DILexicalBlock(scope: !662, file: !1, line: 187, column: 12)
!662 = distinct !DILexicalBlock(scope: !652, file: !1, line: 186, column: 7)
!663 = !DILocalVariable(name: "next", scope: !660, file: !1, line: 191, type: !93)
!664 = !DILocation(line: 185, column: 30, scope: !652)
!665 = !DILocation(line: 185, column: 39, scope: !652)
!666 = !DILocation(line: 185, column: 47, scope: !652)
!667 = !DILocation(line: 186, column: 10, scope: !662)
!668 = !DILocation(line: 186, column: 7, scope: !652)
!669 = !DILocation(line: 187, column: 12, scope: !661)
!670 = !DILocation(line: 187, column: 16, scope: !661)
!671 = !DILocation(line: 187, column: 12, scope: !662)
!672 = !DILocation(line: 188, column: 9, scope: !661)
!673 = !DILocation(line: 188, column: 5, scope: !661)
!674 = !DILocation(line: 190, column: 9, scope: !660)
!675 = !DILocation(line: 192, column: 5, scope: !660)
!676 = !DILocalVariable(name: "fs", arg: 1, scope: !677, file: !1, line: 100, type: !427)
!677 = distinct !DISubprogram(name: "getjump", scope: !1, file: !1, line: 100, type: !678, isLocal: true, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !680)
!678 = !DISubroutineType(types: !679)
!679 = !{!93, !427, !93}
!680 = !{!676, !681, !682}
!681 = !DILocalVariable(name: "pc", arg: 2, scope: !677, file: !1, line: 100, type: !93)
!682 = !DILocalVariable(name: "offset", scope: !677, file: !1, line: 101, type: !93)
!683 = !DILocation(line: 100, column: 32, scope: !677, inlinedAt: !684)
!684 = distinct !DILocation(line: 192, column: 20, scope: !660)
!685 = !DILocation(line: 100, column: 40, scope: !677, inlinedAt: !684)
!686 = !DILocation(line: 101, column: 16, scope: !677, inlinedAt: !684)
!687 = !DILocation(line: 101, column: 7, scope: !677, inlinedAt: !684)
!688 = !DILocation(line: 102, column: 14, scope: !689, inlinedAt: !684)
!689 = distinct !DILexicalBlock(scope: !677, file: !1, line: 102, column: 7)
!690 = !DILocation(line: 102, column: 7, scope: !677, inlinedAt: !684)
!691 = !DILocation(line: 105, column: 15, scope: !689, inlinedAt: !684)
!692 = !DILocation(line: 105, column: 18, scope: !689, inlinedAt: !684)
!693 = !DILocation(line: 105, column: 5, scope: !689, inlinedAt: !684)
!694 = !DILocation(line: 106, column: 1, scope: !677, inlinedAt: !684)
!695 = !DILocation(line: 192, column: 39, scope: !660)
!696 = !DILocation(line: 103, column: 5, scope: !689, inlinedAt: !684)
!697 = !DILocation(line: 0, scope: !660)
!698 = !DILocation(line: 191, column: 9, scope: !660)
!699 = distinct !{!699, !675, !700}
!700 = !DILocation(line: 193, column: 14, scope: !660)
!701 = !DILocation(line: 82, column: 20, scope: !702, inlinedAt: !709)
!702 = distinct !DISubprogram(name: "fixjump", scope: !1, file: !1, line: 80, type: !425, isLocal: true, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !703)
!703 = !{!704, !705, !706, !707, !708}
!704 = !DILocalVariable(name: "fs", arg: 1, scope: !702, file: !1, line: 80, type: !427)
!705 = !DILocalVariable(name: "pc", arg: 2, scope: !702, file: !1, line: 80, type: !93)
!706 = !DILocalVariable(name: "dest", arg: 3, scope: !702, file: !1, line: 80, type: !93)
!707 = !DILocalVariable(name: "jmp", scope: !702, file: !1, line: 81, type: !385)
!708 = !DILocalVariable(name: "offset", scope: !702, file: !1, line: 82, type: !93)
!709 = distinct !DILocation(line: 194, column: 5, scope: !660)
!710 = !DILocation(line: 80, column: 33, scope: !702, inlinedAt: !709)
!711 = !DILocation(line: 80, column: 41, scope: !702, inlinedAt: !709)
!712 = !DILocation(line: 80, column: 49, scope: !702, inlinedAt: !709)
!713 = !DILocation(line: 81, column: 16, scope: !702, inlinedAt: !709)
!714 = !DILocation(line: 82, column: 7, scope: !702, inlinedAt: !709)
!715 = !DILocation(line: 84, column: 7, scope: !716, inlinedAt: !709)
!716 = distinct !DILexicalBlock(scope: !702, file: !1, line: 84, column: 7)
!717 = !DILocation(line: 84, column: 19, scope: !716, inlinedAt: !709)
!718 = !DILocation(line: 84, column: 7, scope: !702, inlinedAt: !709)
!719 = !DILocation(line: 85, column: 26, scope: !716, inlinedAt: !709)
!720 = !DILocation(line: 85, column: 5, scope: !716, inlinedAt: !709)
!721 = !DILocation(line: 86, column: 3, scope: !702, inlinedAt: !709)
!722 = !DILocation(line: 87, column: 1, scope: !702, inlinedAt: !709)
!723 = !DILocation(line: 196, column: 1, scope: !652)
!724 = distinct !DISubprogram(name: "luaK_ret", scope: !1, file: !1, line: 69, type: !425, isLocal: false, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !725)
!725 = !{!726, !727, !728}
!726 = !DILocalVariable(name: "fs", arg: 1, scope: !724, file: !1, line: 69, type: !427)
!727 = !DILocalVariable(name: "first", arg: 2, scope: !724, file: !1, line: 69, type: !93)
!728 = !DILocalVariable(name: "nret", arg: 3, scope: !724, file: !1, line: 69, type: !93)
!729 = !DILocation(line: 69, column: 27, scope: !724)
!730 = !DILocation(line: 69, column: 35, scope: !724)
!731 = !DILocation(line: 69, column: 46, scope: !724)
!732 = !DILocation(line: 804, column: 30, scope: !573, inlinedAt: !733)
!733 = distinct !DILocation(line: 70, column: 3, scope: !724)
!734 = !DILocation(line: 804, column: 41, scope: !573, inlinedAt: !733)
!735 = !DILocation(line: 804, column: 48, scope: !573, inlinedAt: !733)
!736 = !DILocation(line: 804, column: 55, scope: !573, inlinedAt: !733)
!737 = !DILocation(line: 804, column: 62, scope: !573, inlinedAt: !733)
!738 = !DILocation(line: 808, column: 24, scope: !573, inlinedAt: !733)
!739 = !DILocation(line: 808, column: 52, scope: !573, inlinedAt: !733)
!740 = !DILocation(line: 808, column: 56, scope: !573, inlinedAt: !733)
!741 = !DILocation(line: 808, column: 10, scope: !573, inlinedAt: !733)
!742 = !DILocation(line: 808, column: 3, scope: !573, inlinedAt: !733)
!743 = !DILocation(line: 71, column: 1, scope: !724)
!744 = distinct !DISubprogram(name: "luaK_getlabel", scope: !1, file: !1, line: 94, type: !608, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !745)
!745 = !{!746}
!746 = !DILocalVariable(name: "fs", arg: 1, scope: !744, file: !1, line: 94, type: !427)
!747 = !DILocation(line: 94, column: 31, scope: !744)
!748 = !DILocation(line: 95, column: 24, scope: !744)
!749 = !DILocation(line: 95, column: 7, scope: !744)
!750 = !DILocation(line: 95, column: 18, scope: !744)
!751 = !DILocation(line: 96, column: 3, scope: !744)
!752 = distinct !DISubprogram(name: "luaK_patchlist", scope: !1, file: !1, line: 169, type: !425, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !753)
!753 = !{!754, !755, !756}
!754 = !DILocalVariable(name: "fs", arg: 1, scope: !752, file: !1, line: 169, type: !427)
!755 = !DILocalVariable(name: "list", arg: 2, scope: !752, file: !1, line: 169, type: !93)
!756 = !DILocalVariable(name: "target", arg: 3, scope: !752, file: !1, line: 169, type: !93)
!757 = !DILocation(line: 169, column: 33, scope: !752)
!758 = !DILocation(line: 169, column: 41, scope: !752)
!759 = !DILocation(line: 169, column: 51, scope: !752)
!760 = !DILocation(line: 170, column: 21, scope: !761)
!761 = distinct !DILexicalBlock(scope: !752, file: !1, line: 170, column: 7)
!762 = !DILocation(line: 170, column: 14, scope: !761)
!763 = !DILocation(line: 170, column: 7, scope: !752)
!764 = !DILocalVariable(name: "fs", arg: 1, scope: !765, file: !1, line: 179, type: !427)
!765 = distinct !DISubprogram(name: "luaK_patchtohere", scope: !1, file: !1, line: 179, type: !766, isLocal: false, isDefinition: true, scopeLine: 179, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !768)
!766 = !DISubroutineType(types: !767)
!767 = !{null, !427, !93}
!768 = !{!764, !769}
!769 = !DILocalVariable(name: "list", arg: 2, scope: !765, file: !1, line: 179, type: !93)
!770 = !DILocation(line: 179, column: 35, scope: !765, inlinedAt: !771)
!771 = distinct !DILocation(line: 171, column: 5, scope: !761)
!772 = !DILocation(line: 179, column: 43, scope: !765, inlinedAt: !771)
!773 = !DILocation(line: 94, column: 31, scope: !744, inlinedAt: !774)
!774 = distinct !DILocation(line: 180, column: 3, scope: !765, inlinedAt: !771)
!775 = !DILocation(line: 95, column: 7, scope: !744, inlinedAt: !774)
!776 = !DILocation(line: 95, column: 18, scope: !744, inlinedAt: !774)
!777 = !DILocation(line: 96, column: 3, scope: !744, inlinedAt: !774)
!778 = !DILocation(line: 181, column: 24, scope: !765, inlinedAt: !771)
!779 = !DILocation(line: 181, column: 3, scope: !765, inlinedAt: !771)
!780 = !DILocation(line: 171, column: 5, scope: !761)
!781 = !DILocalVariable(name: "fs", arg: 1, scope: !782, file: !1, line: 150, type: !427)
!782 = distinct !DISubprogram(name: "patchlistaux", scope: !1, file: !1, line: 150, type: !783, isLocal: true, isDefinition: true, scopeLine: 151, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !785)
!783 = !DISubroutineType(types: !784)
!784 = !{null, !427, !93, !93, !93, !93}
!785 = !{!781, !786, !787, !788, !789, !790}
!786 = !DILocalVariable(name: "list", arg: 2, scope: !782, file: !1, line: 150, type: !93)
!787 = !DILocalVariable(name: "vtarget", arg: 3, scope: !782, file: !1, line: 150, type: !93)
!788 = !DILocalVariable(name: "reg", arg: 4, scope: !782, file: !1, line: 150, type: !93)
!789 = !DILocalVariable(name: "dtarget", arg: 5, scope: !782, file: !1, line: 151, type: !93)
!790 = !DILocalVariable(name: "next", scope: !791, file: !1, line: 153, type: !93)
!791 = distinct !DILexicalBlock(scope: !782, file: !1, line: 152, column: 27)
!792 = !DILocation(line: 150, column: 38, scope: !782, inlinedAt: !793)
!793 = distinct !DILocation(line: 174, column: 5, scope: !794)
!794 = distinct !DILexicalBlock(scope: !761, file: !1, line: 172, column: 8)
!795 = !DILocation(line: 150, column: 46, scope: !782, inlinedAt: !793)
!796 = !DILocation(line: 150, column: 56, scope: !782, inlinedAt: !793)
!797 = !DILocation(line: 150, column: 69, scope: !782, inlinedAt: !793)
!798 = !DILocation(line: 151, column: 31, scope: !782, inlinedAt: !793)
!799 = !DILocation(line: 152, column: 3, scope: !782, inlinedAt: !793)
!800 = !DILocation(line: 152, column: 15, scope: !782, inlinedAt: !793)
!801 = !DILocation(line: 100, column: 32, scope: !677, inlinedAt: !802)
!802 = distinct !DILocation(line: 153, column: 16, scope: !791, inlinedAt: !793)
!803 = !DILocation(line: 100, column: 40, scope: !677, inlinedAt: !802)
!804 = !DILocation(line: 101, column: 16, scope: !677, inlinedAt: !802)
!805 = !DILocation(line: 101, column: 7, scope: !677, inlinedAt: !802)
!806 = !DILocation(line: 102, column: 14, scope: !689, inlinedAt: !802)
!807 = !DILocation(line: 102, column: 7, scope: !677, inlinedAt: !802)
!808 = !DILocation(line: 105, column: 15, scope: !689, inlinedAt: !802)
!809 = !DILocation(line: 105, column: 18, scope: !689, inlinedAt: !802)
!810 = !DILocation(line: 0, scope: !791, inlinedAt: !793)
!811 = !DILocation(line: 106, column: 1, scope: !677, inlinedAt: !802)
!812 = !DILocation(line: 153, column: 9, scope: !791, inlinedAt: !793)
!813 = !DILocalVariable(name: "fs", arg: 1, scope: !814, file: !1, line: 131, type: !427)
!814 = distinct !DISubprogram(name: "patchtestreg", scope: !1, file: !1, line: 131, type: !815, isLocal: true, isDefinition: true, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !817)
!815 = !DISubroutineType(types: !816)
!816 = !{!93, !427, !93, !93}
!817 = !{!813, !818, !819, !820}
!818 = !DILocalVariable(name: "node", arg: 2, scope: !814, file: !1, line: 131, type: !93)
!819 = !DILocalVariable(name: "reg", arg: 3, scope: !814, file: !1, line: 131, type: !93)
!820 = !DILocalVariable(name: "i", scope: !814, file: !1, line: 132, type: !385)
!821 = !DILocation(line: 131, column: 37, scope: !814, inlinedAt: !822)
!822 = distinct !DILocation(line: 154, column: 9, scope: !823, inlinedAt: !793)
!823 = distinct !DILexicalBlock(scope: !791, file: !1, line: 154, column: 9)
!824 = !DILocation(line: 131, column: 45, scope: !814, inlinedAt: !822)
!825 = !DILocation(line: 131, column: 55, scope: !814, inlinedAt: !822)
!826 = !DILocalVariable(name: "fs", arg: 1, scope: !827, file: !1, line: 109, type: !427)
!827 = distinct !DISubprogram(name: "getjumpcontrol", scope: !1, file: !1, line: 109, type: !828, isLocal: true, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !830)
!828 = !DISubroutineType(types: !829)
!829 = !{!385, !427, !93}
!830 = !{!826, !831, !832}
!831 = !DILocalVariable(name: "pc", arg: 2, scope: !827, file: !1, line: 109, type: !93)
!832 = !DILocalVariable(name: "pi", scope: !827, file: !1, line: 110, type: !385)
!833 = !DILocation(line: 109, column: 48, scope: !827, inlinedAt: !834)
!834 = distinct !DILocation(line: 132, column: 20, scope: !814, inlinedAt: !822)
!835 = !DILocation(line: 109, column: 56, scope: !827, inlinedAt: !834)
!836 = !DILocation(line: 110, column: 16, scope: !827, inlinedAt: !834)
!837 = !DILocation(line: 111, column: 10, scope: !838, inlinedAt: !834)
!838 = distinct !DILexicalBlock(scope: !827, file: !1, line: 111, column: 7)
!839 = !DILocation(line: 111, column: 15, scope: !838, inlinedAt: !834)
!840 = !DILocation(line: 111, column: 18, scope: !838, inlinedAt: !834)
!841 = !{!524, !524, i64 0}
!842 = !DILocation(line: 111, column: 7, scope: !827, inlinedAt: !834)
!843 = !DILocation(line: 114, column: 5, scope: !838, inlinedAt: !834)
!844 = !DILocation(line: 133, column: 7, scope: !845, inlinedAt: !822)
!845 = distinct !DILexicalBlock(scope: !814, file: !1, line: 133, column: 7)
!846 = !DILocation(line: 0, scope: !838, inlinedAt: !834)
!847 = !DILocation(line: 0, scope: !814, inlinedAt: !822)
!848 = !DILocation(line: 115, column: 1, scope: !827, inlinedAt: !834)
!849 = !DILocation(line: 132, column: 16, scope: !814, inlinedAt: !822)
!850 = !DILocation(line: 133, column: 22, scope: !845, inlinedAt: !822)
!851 = !DILocation(line: 133, column: 7, scope: !814, inlinedAt: !822)
!852 = !DILocation(line: 0, scope: !823, inlinedAt: !793)
!853 = !DILocation(line: 0, scope: !854, inlinedAt: !822)
!854 = distinct !DILexicalBlock(scope: !814, file: !1, line: 135, column: 7)
!855 = !DILocation(line: 138, column: 10, scope: !854, inlinedAt: !822)
!856 = !DILocation(line: 138, column: 8, scope: !854, inlinedAt: !822)
!857 = !DILocation(line: 140, column: 3, scope: !814, inlinedAt: !822)
!858 = !DILocation(line: 141, column: 1, scope: !814, inlinedAt: !822)
!859 = !DILocation(line: 154, column: 9, scope: !791, inlinedAt: !793)
!860 = !DILocation(line: 80, column: 33, scope: !702, inlinedAt: !861)
!861 = distinct !DILocation(line: 155, column: 7, scope: !823, inlinedAt: !793)
!862 = !DILocation(line: 80, column: 41, scope: !702, inlinedAt: !861)
!863 = !DILocation(line: 80, column: 49, scope: !702, inlinedAt: !861)
!864 = !DILocation(line: 81, column: 16, scope: !702, inlinedAt: !861)
!865 = !DILocation(line: 82, column: 20, scope: !702, inlinedAt: !861)
!866 = !DILocation(line: 82, column: 7, scope: !702, inlinedAt: !861)
!867 = !DILocation(line: 84, column: 7, scope: !716, inlinedAt: !861)
!868 = !DILocation(line: 84, column: 19, scope: !716, inlinedAt: !861)
!869 = !DILocation(line: 84, column: 7, scope: !702, inlinedAt: !861)
!870 = !DILocation(line: 85, column: 26, scope: !716, inlinedAt: !861)
!871 = !DILocation(line: 85, column: 5, scope: !716, inlinedAt: !861)
!872 = !DILocation(line: 80, column: 33, scope: !702, inlinedAt: !873)
!873 = distinct !DILocation(line: 157, column: 7, scope: !823, inlinedAt: !793)
!874 = !DILocation(line: 80, column: 41, scope: !702, inlinedAt: !873)
!875 = !DILocation(line: 80, column: 49, scope: !702, inlinedAt: !873)
!876 = !DILocation(line: 81, column: 16, scope: !702, inlinedAt: !873)
!877 = !DILocation(line: 82, column: 20, scope: !702, inlinedAt: !873)
!878 = !DILocation(line: 82, column: 7, scope: !702, inlinedAt: !873)
!879 = !DILocation(line: 84, column: 7, scope: !716, inlinedAt: !873)
!880 = !DILocation(line: 84, column: 19, scope: !716, inlinedAt: !873)
!881 = !DILocation(line: 84, column: 7, scope: !702, inlinedAt: !873)
!882 = !DILocation(line: 85, column: 26, scope: !716, inlinedAt: !873)
!883 = !DILocation(line: 85, column: 5, scope: !716, inlinedAt: !873)
!884 = !DILocation(line: 86, column: 3, scope: !702, inlinedAt: !873)
!885 = !DILocation(line: 87, column: 1, scope: !702, inlinedAt: !873)
!886 = distinct !{!886, !887, !888}
!887 = !DILocation(line: 152, column: 3, scope: !782)
!888 = !DILocation(line: 159, column: 3, scope: !782)
!889 = !DILocation(line: 0, scope: !761)
!890 = !DILocation(line: 176, column: 1, scope: !752)
!891 = !DILocation(line: 179, column: 35, scope: !765)
!892 = !DILocation(line: 179, column: 43, scope: !765)
!893 = !DILocation(line: 94, column: 31, scope: !744, inlinedAt: !894)
!894 = distinct !DILocation(line: 180, column: 3, scope: !765)
!895 = !DILocation(line: 95, column: 24, scope: !744, inlinedAt: !894)
!896 = !DILocation(line: 95, column: 7, scope: !744, inlinedAt: !894)
!897 = !DILocation(line: 95, column: 18, scope: !744, inlinedAt: !894)
!898 = !DILocation(line: 96, column: 3, scope: !744, inlinedAt: !894)
!899 = !DILocation(line: 181, column: 24, scope: !765)
!900 = !DILocation(line: 181, column: 3, scope: !765)
!901 = !DILocation(line: 182, column: 1, scope: !765)
!902 = distinct !DISubprogram(name: "luaK_checkstack", scope: !1, file: !1, line: 199, type: !766, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !903)
!903 = !{!904, !905, !906}
!904 = !DILocalVariable(name: "fs", arg: 1, scope: !902, file: !1, line: 199, type: !427)
!905 = !DILocalVariable(name: "n", arg: 2, scope: !902, file: !1, line: 199, type: !93)
!906 = !DILocalVariable(name: "newstack", scope: !902, file: !1, line: 200, type: !93)
!907 = !DILocation(line: 199, column: 34, scope: !902)
!908 = !DILocation(line: 199, column: 42, scope: !902)
!909 = !DILocation(line: 200, column: 22, scope: !902)
!910 = !{!522, !526, i64 60}
!911 = !DILocation(line: 200, column: 30, scope: !902)
!912 = !DILocation(line: 200, column: 7, scope: !902)
!913 = !DILocation(line: 201, column: 22, scope: !914)
!914 = distinct !DILexicalBlock(scope: !902, file: !1, line: 201, column: 7)
!915 = !DILocation(line: 201, column: 25, scope: !914)
!916 = !{!545, !524, i64 115}
!917 = !DILocation(line: 201, column: 18, scope: !914)
!918 = !DILocation(line: 201, column: 16, scope: !914)
!919 = !DILocation(line: 201, column: 7, scope: !902)
!920 = !DILocation(line: 202, column: 18, scope: !921)
!921 = distinct !DILexicalBlock(scope: !922, file: !1, line: 202, column: 9)
!922 = distinct !DILexicalBlock(scope: !914, file: !1, line: 201, column: 39)
!923 = !DILocation(line: 202, column: 9, scope: !922)
!924 = !DILocation(line: 203, column: 28, scope: !921)
!925 = !DILocation(line: 203, column: 7, scope: !921)
!926 = !DILocation(line: 204, column: 9, scope: !922)
!927 = !DILocation(line: 204, column: 12, scope: !922)
!928 = !DILocation(line: 204, column: 27, scope: !922)
!929 = !DILocation(line: 204, column: 25, scope: !922)
!930 = !DILocation(line: 205, column: 3, scope: !922)
!931 = !DILocation(line: 206, column: 1, scope: !902)
!932 = distinct !DISubprogram(name: "luaK_reserveregs", scope: !1, file: !1, line: 209, type: !766, isLocal: false, isDefinition: true, scopeLine: 209, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !933)
!933 = !{!934, !935}
!934 = !DILocalVariable(name: "fs", arg: 1, scope: !932, file: !1, line: 209, type: !427)
!935 = !DILocalVariable(name: "n", arg: 2, scope: !932, file: !1, line: 209, type: !93)
!936 = !DILocation(line: 209, column: 35, scope: !932)
!937 = !DILocation(line: 209, column: 43, scope: !932)
!938 = !DILocation(line: 199, column: 34, scope: !902, inlinedAt: !939)
!939 = distinct !DILocation(line: 210, column: 3, scope: !932)
!940 = !DILocation(line: 199, column: 42, scope: !902, inlinedAt: !939)
!941 = !DILocation(line: 200, column: 22, scope: !902, inlinedAt: !939)
!942 = !DILocation(line: 200, column: 30, scope: !902, inlinedAt: !939)
!943 = !DILocation(line: 200, column: 7, scope: !902, inlinedAt: !939)
!944 = !DILocation(line: 201, column: 22, scope: !914, inlinedAt: !939)
!945 = !DILocation(line: 201, column: 25, scope: !914, inlinedAt: !939)
!946 = !DILocation(line: 201, column: 18, scope: !914, inlinedAt: !939)
!947 = !DILocation(line: 201, column: 16, scope: !914, inlinedAt: !939)
!948 = !DILocation(line: 201, column: 7, scope: !902, inlinedAt: !939)
!949 = !DILocation(line: 202, column: 18, scope: !921, inlinedAt: !939)
!950 = !DILocation(line: 202, column: 9, scope: !922, inlinedAt: !939)
!951 = !DILocation(line: 203, column: 28, scope: !921, inlinedAt: !939)
!952 = !DILocation(line: 203, column: 7, scope: !921, inlinedAt: !939)
!953 = !DILocation(line: 204, column: 9, scope: !922, inlinedAt: !939)
!954 = !DILocation(line: 204, column: 12, scope: !922, inlinedAt: !939)
!955 = !DILocation(line: 211, column: 15, scope: !932)
!956 = !DILocation(line: 204, column: 27, scope: !922, inlinedAt: !939)
!957 = !DILocation(line: 204, column: 25, scope: !922, inlinedAt: !939)
!958 = !DILocation(line: 205, column: 3, scope: !922, inlinedAt: !939)
!959 = !DILocation(line: 206, column: 1, scope: !902, inlinedAt: !939)
!960 = !DILocation(line: 212, column: 1, scope: !932)
!961 = distinct !DISubprogram(name: "luaK_stringK", scope: !1, file: !1, line: 250, type: !962, isLocal: false, isDefinition: true, scopeLine: 250, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !964)
!962 = !DISubroutineType(types: !963)
!963 = !{!93, !427, !296}
!964 = !{!965, !966, !967, !968}
!965 = !DILocalVariable(name: "fs", arg: 1, scope: !961, file: !1, line: 250, type: !427)
!966 = !DILocalVariable(name: "s", arg: 2, scope: !961, file: !1, line: 250, type: !296)
!967 = !DILocalVariable(name: "o", scope: !961, file: !1, line: 251, type: !156)
!968 = !DILocalVariable(name: "i_o", scope: !969, file: !1, line: 252, type: !155)
!969 = distinct !DILexicalBlock(scope: !961, file: !1, line: 252, column: 3)
!970 = !DILocation(line: 250, column: 30, scope: !961)
!971 = !DILocation(line: 250, column: 43, scope: !961)
!972 = !DILocation(line: 251, column: 3, scope: !961)
!973 = !DILocation(line: 252, column: 3, scope: !969)
!974 = !{!975, !526, i64 8}
!975 = !{!"lua_TValue", !524, i64 0, !526, i64 8}
!976 = !DILocation(line: 251, column: 10, scope: !961)
!977 = !DILocation(line: 253, column: 10, scope: !961)
!978 = !DILocation(line: 254, column: 1, scope: !961)
!979 = !DILocation(line: 253, column: 3, scope: !961)
!980 = distinct !DISubprogram(name: "addk", scope: !1, file: !1, line: 229, type: !981, isLocal: true, isDefinition: true, scopeLine: 229, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !983)
!981 = !DISubroutineType(types: !982)
!982 = !{!93, !427, !155, !155}
!983 = !{!984, !985, !986, !987, !988, !989, !990, !991, !995, !999}
!984 = !DILocalVariable(name: "fs", arg: 1, scope: !980, file: !1, line: 229, type: !427)
!985 = !DILocalVariable(name: "k", arg: 2, scope: !980, file: !1, line: 229, type: !155)
!986 = !DILocalVariable(name: "v", arg: 3, scope: !980, file: !1, line: 229, type: !155)
!987 = !DILocalVariable(name: "L", scope: !980, file: !1, line: 230, type: !212)
!988 = !DILocalVariable(name: "idx", scope: !980, file: !1, line: 231, type: !155)
!989 = !DILocalVariable(name: "f", scope: !980, file: !1, line: 232, type: !432)
!990 = !DILocalVariable(name: "oldsize", scope: !980, file: !1, line: 233, type: !93)
!991 = !DILocalVariable(name: "i_o", scope: !992, file: !1, line: 239, type: !155)
!992 = distinct !DILexicalBlock(scope: !993, file: !1, line: 239, column: 5)
!993 = distinct !DILexicalBlock(scope: !994, file: !1, line: 238, column: 8)
!994 = distinct !DILexicalBlock(scope: !980, file: !1, line: 234, column: 7)
!995 = !DILocalVariable(name: "o2", scope: !996, file: !1, line: 243, type: !997)
!996 = distinct !DILexicalBlock(scope: !993, file: !1, line: 243, column: 5)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !156)
!999 = !DILocalVariable(name: "o1", scope: !996, file: !1, line: 243, type: !155)
!1000 = !DILocation(line: 229, column: 29, scope: !980)
!1001 = !DILocation(line: 229, column: 41, scope: !980)
!1002 = !DILocation(line: 229, column: 52, scope: !980)
!1003 = !DILocation(line: 230, column: 22, scope: !980)
!1004 = !{!522, !523, i64 32}
!1005 = !DILocation(line: 230, column: 14, scope: !980)
!1006 = !DILocation(line: 231, column: 33, scope: !980)
!1007 = !{!522, !523, i64 8}
!1008 = !DILocation(line: 231, column: 17, scope: !980)
!1009 = !DILocation(line: 231, column: 11, scope: !980)
!1010 = !DILocation(line: 232, column: 18, scope: !980)
!1011 = !DILocation(line: 232, column: 10, scope: !980)
!1012 = !DILocation(line: 233, column: 20, scope: !980)
!1013 = !{!545, !526, i64 76}
!1014 = !DILocation(line: 233, column: 7, scope: !980)
!1015 = !DILocation(line: 234, column: 7, scope: !994)
!1016 = !DILocation(line: 234, column: 7, scope: !980)
!1017 = !DILocation(line: 236, column: 12, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !994, file: !1, line: 234, column: 24)
!1019 = !DILocation(line: 236, column: 5, scope: !1018)
!1020 = !DILocation(line: 239, column: 5, scope: !992)
!1021 = !{!522, !526, i64 64}
!1022 = !DILocation(line: 240, column: 5, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !993, file: !1, line: 240, column: 5)
!1024 = !DILocation(line: 240, column: 5, scope: !993)
!1025 = !DILocation(line: 0, scope: !996)
!1026 = !{!545, !523, i64 16}
!1027 = !DILocation(line: 242, column: 25, scope: !993)
!1028 = !DILocation(line: 242, column: 5, scope: !993)
!1029 = !DILocation(line: 242, column: 20, scope: !993)
!1030 = !DILocation(line: 242, column: 32, scope: !993)
!1031 = distinct !{!1031, !1032}
!1032 = !{!"llvm.loop.unroll.disable"}
!1033 = distinct !{!1033, !1028, !1030}
!1034 = !DILocation(line: 243, column: 5, scope: !996)
!1035 = !DILocation(line: 244, column: 5, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1037, file: !1, line: 244, column: 5)
!1037 = distinct !DILexicalBlock(scope: !993, file: !1, line: 244, column: 5)
!1038 = !DILocation(line: 244, column: 5, scope: !1037)
!1039 = !DILocation(line: 245, column: 18, scope: !993)
!1040 = !DILocation(line: 245, column: 5, scope: !993)
!1041 = !DILocation(line: 0, scope: !993)
!1042 = !DILocation(line: 0, scope: !1018)
!1043 = !DILocation(line: 247, column: 1, scope: !980)
!1044 = distinct !DISubprogram(name: "luaK_numberK", scope: !1, file: !1, line: 257, type: !1045, isLocal: false, isDefinition: true, scopeLine: 257, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1047)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!93, !427, !166}
!1047 = !{!1048, !1049, !1050, !1051}
!1048 = !DILocalVariable(name: "fs", arg: 1, scope: !1044, file: !1, line: 257, type: !427)
!1049 = !DILocalVariable(name: "r", arg: 2, scope: !1044, file: !1, line: 257, type: !166)
!1050 = !DILocalVariable(name: "o", scope: !1044, file: !1, line: 258, type: !156)
!1051 = !DILocalVariable(name: "i_o", scope: !1052, file: !1, line: 259, type: !155)
!1052 = distinct !DILexicalBlock(scope: !1044, file: !1, line: 259, column: 3)
!1053 = !DILocation(line: 257, column: 30, scope: !1044)
!1054 = !DILocation(line: 257, column: 45, scope: !1044)
!1055 = !DILocation(line: 258, column: 3, scope: !1044)
!1056 = !DILocation(line: 259, column: 3, scope: !1052)
!1057 = !DILocation(line: 258, column: 10, scope: !1044)
!1058 = !DILocation(line: 260, column: 10, scope: !1044)
!1059 = !DILocation(line: 261, column: 1, scope: !1044)
!1060 = !DILocation(line: 260, column: 3, scope: !1044)
!1061 = distinct !DISubprogram(name: "luaK_setreturns", scope: !1, file: !1, line: 280, type: !1062, isLocal: false, isDefinition: true, scopeLine: 280, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1081)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{null, !427, !1064, !93}
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_typedef, name: "expdesc", file: !46, line: 45, baseType: !1066)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "expdesc", file: !46, line: 37, size: 192, elements: !1067)
!1067 = !{!1068, !1070, !1079, !1080}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !1066, file: !46, line: 38, baseType: !1069, size: 32)
!1069 = !DIDerivedType(tag: DW_TAG_typedef, name: "expkind", file: !46, line: 35, baseType: !45)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !1066, file: !46, line: 42, baseType: !1071, size: 64, offset: 64)
!1071 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1066, file: !46, line: 39, size: 64, elements: !1072)
!1072 = !{!1073, !1078}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1071, file: !46, line: 40, baseType: !1074, size: 64)
!1074 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1071, file: !46, line: 40, size: 64, elements: !1075)
!1075 = !{!1076, !1077}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1074, file: !46, line: 40, baseType: !93, size: 32)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1074, file: !46, line: 40, baseType: !93, size: 32, offset: 32)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "nval", scope: !1071, file: !46, line: 41, baseType: !166, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "t", scope: !1066, file: !46, line: 43, baseType: !93, size: 32, offset: 128)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1066, file: !46, line: 44, baseType: !93, size: 32, offset: 160)
!1081 = !{!1082, !1083, !1084}
!1082 = !DILocalVariable(name: "fs", arg: 1, scope: !1061, file: !1, line: 280, type: !427)
!1083 = !DILocalVariable(name: "e", arg: 2, scope: !1061, file: !1, line: 280, type: !1064)
!1084 = !DILocalVariable(name: "nresults", arg: 3, scope: !1061, file: !1, line: 280, type: !93)
!1085 = !DILocation(line: 280, column: 34, scope: !1061)
!1086 = !DILocation(line: 280, column: 47, scope: !1061)
!1087 = !DILocation(line: 280, column: 54, scope: !1061)
!1088 = !DILocation(line: 281, column: 10, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1061, file: !1, line: 281, column: 7)
!1090 = !{!1091, !524, i64 0}
!1091 = !{!"expdesc", !524, i64 0, !524, i64 8, !526, i64 16, !526, i64 20}
!1092 = !DILocation(line: 281, column: 12, scope: !1089)
!1093 = !DILocation(line: 281, column: 7, scope: !1061)
!1094 = !DILocation(line: 282, column: 5, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1089, file: !1, line: 281, column: 22)
!1096 = !DILocation(line: 283, column: 3, scope: !1095)
!1097 = !DILocation(line: 284, column: 17, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1089, file: !1, line: 284, column: 12)
!1099 = !DILocation(line: 284, column: 12, scope: !1089)
!1100 = !DILocation(line: 285, column: 5, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1098, file: !1, line: 284, column: 29)
!1102 = !DILocation(line: 286, column: 5, scope: !1101)
!1103 = !DILocation(line: 209, column: 35, scope: !932, inlinedAt: !1104)
!1104 = distinct !DILocation(line: 287, column: 5, scope: !1101)
!1105 = !DILocation(line: 209, column: 43, scope: !932, inlinedAt: !1104)
!1106 = !DILocation(line: 199, column: 34, scope: !902, inlinedAt: !1107)
!1107 = distinct !DILocation(line: 210, column: 3, scope: !932, inlinedAt: !1104)
!1108 = !DILocation(line: 199, column: 42, scope: !902, inlinedAt: !1107)
!1109 = !DILocation(line: 200, column: 22, scope: !902, inlinedAt: !1107)
!1110 = !DILocation(line: 200, column: 30, scope: !902, inlinedAt: !1107)
!1111 = !DILocation(line: 200, column: 7, scope: !902, inlinedAt: !1107)
!1112 = !DILocation(line: 201, column: 25, scope: !914, inlinedAt: !1107)
!1113 = !DILocation(line: 201, column: 18, scope: !914, inlinedAt: !1107)
!1114 = !DILocation(line: 201, column: 16, scope: !914, inlinedAt: !1107)
!1115 = !DILocation(line: 201, column: 7, scope: !902, inlinedAt: !1107)
!1116 = !DILocation(line: 202, column: 18, scope: !921, inlinedAt: !1107)
!1117 = !DILocation(line: 202, column: 9, scope: !922, inlinedAt: !1107)
!1118 = !DILocation(line: 203, column: 28, scope: !921, inlinedAt: !1107)
!1119 = !DILocation(line: 203, column: 7, scope: !921, inlinedAt: !1107)
!1120 = !DILocation(line: 204, column: 9, scope: !922, inlinedAt: !1107)
!1121 = !DILocation(line: 204, column: 12, scope: !922, inlinedAt: !1107)
!1122 = !DILocation(line: 211, column: 15, scope: !932, inlinedAt: !1104)
!1123 = !DILocation(line: 204, column: 27, scope: !922, inlinedAt: !1107)
!1124 = !DILocation(line: 204, column: 25, scope: !922, inlinedAt: !1107)
!1125 = !DILocation(line: 205, column: 3, scope: !922, inlinedAt: !1107)
!1126 = !DILocation(line: 206, column: 1, scope: !902, inlinedAt: !1107)
!1127 = !DILocation(line: 212, column: 1, scope: !932, inlinedAt: !1104)
!1128 = !DILocation(line: 288, column: 3, scope: !1101)
!1129 = !DILocation(line: 0, scope: !1095)
!1130 = !DILocation(line: 289, column: 1, scope: !1061)
!1131 = distinct !DISubprogram(name: "luaK_setoneret", scope: !1, file: !1, line: 292, type: !1132, isLocal: false, isDefinition: true, scopeLine: 292, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1134)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{null, !427, !1064}
!1134 = !{!1135, !1136}
!1135 = !DILocalVariable(name: "fs", arg: 1, scope: !1131, file: !1, line: 292, type: !427)
!1136 = !DILocalVariable(name: "e", arg: 2, scope: !1131, file: !1, line: 292, type: !1064)
!1137 = !DILocation(line: 292, column: 33, scope: !1131)
!1138 = !DILocation(line: 292, column: 46, scope: !1131)
!1139 = !DILocation(line: 293, column: 10, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1131, file: !1, line: 293, column: 7)
!1141 = !DILocation(line: 293, column: 12, scope: !1140)
!1142 = !DILocation(line: 293, column: 7, scope: !1131)
!1143 = !DILocation(line: 294, column: 10, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1140, file: !1, line: 293, column: 22)
!1145 = !DILocation(line: 295, column: 19, scope: !1144)
!1146 = !DILocation(line: 295, column: 17, scope: !1144)
!1147 = !DILocation(line: 296, column: 3, scope: !1144)
!1148 = !DILocation(line: 297, column: 17, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1140, file: !1, line: 297, column: 12)
!1150 = !DILocation(line: 297, column: 12, scope: !1140)
!1151 = !DILocation(line: 298, column: 5, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1149, file: !1, line: 297, column: 29)
!1153 = !DILocation(line: 299, column: 10, scope: !1152)
!1154 = !DILocation(line: 300, column: 3, scope: !1152)
!1155 = !DILocation(line: 0, scope: !1144)
!1156 = !DILocation(line: 301, column: 1, scope: !1131)
!1157 = distinct !DISubprogram(name: "luaK_dischargevars", scope: !1, file: !1, line: 304, type: !1132, isLocal: false, isDefinition: true, scopeLine: 304, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1158)
!1158 = !{!1159, !1160}
!1159 = !DILocalVariable(name: "fs", arg: 1, scope: !1157, file: !1, line: 304, type: !427)
!1160 = !DILocalVariable(name: "e", arg: 2, scope: !1157, file: !1, line: 304, type: !1064)
!1161 = !DILocation(line: 304, column: 37, scope: !1157)
!1162 = !DILocation(line: 304, column: 50, scope: !1157)
!1163 = !DILocation(line: 305, column: 14, scope: !1157)
!1164 = !DILocation(line: 305, column: 3, scope: !1157)
!1165 = !DILocation(line: 307, column: 12, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1167, file: !1, line: 306, column: 18)
!1167 = distinct !DILexicalBlock(scope: !1157, file: !1, line: 305, column: 17)
!1168 = !DILocation(line: 308, column: 7, scope: !1166)
!1169 = !DILocation(line: 311, column: 57, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1167, file: !1, line: 310, column: 18)
!1171 = !DILocation(line: 311, column: 61, scope: !1170)
!1172 = !DILocation(line: 804, column: 30, scope: !573, inlinedAt: !1173)
!1173 = distinct !DILocation(line: 311, column: 21, scope: !1170)
!1174 = !DILocation(line: 804, column: 41, scope: !573, inlinedAt: !1173)
!1175 = !DILocation(line: 804, column: 48, scope: !573, inlinedAt: !1173)
!1176 = !DILocation(line: 804, column: 55, scope: !573, inlinedAt: !1173)
!1177 = !DILocation(line: 804, column: 62, scope: !573, inlinedAt: !1173)
!1178 = !DILocation(line: 808, column: 24, scope: !573, inlinedAt: !1173)
!1179 = !DILocation(line: 808, column: 52, scope: !573, inlinedAt: !1173)
!1180 = !DILocation(line: 808, column: 56, scope: !573, inlinedAt: !1173)
!1181 = !DILocation(line: 808, column: 10, scope: !573, inlinedAt: !1173)
!1182 = !DILocation(line: 808, column: 3, scope: !573, inlinedAt: !1173)
!1183 = !DILocation(line: 311, column: 19, scope: !1170)
!1184 = !DILocation(line: 312, column: 12, scope: !1170)
!1185 = !DILocation(line: 313, column: 7, scope: !1170)
!1186 = !DILocation(line: 316, column: 58, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1167, file: !1, line: 315, column: 19)
!1188 = !DILocation(line: 316, column: 62, scope: !1187)
!1189 = !DILocation(line: 812, column: 30, scope: !621, inlinedAt: !1190)
!1190 = distinct !DILocation(line: 316, column: 21, scope: !1187)
!1191 = !DILocation(line: 812, column: 41, scope: !621, inlinedAt: !1190)
!1192 = !DILocation(line: 812, column: 48, scope: !621, inlinedAt: !1190)
!1193 = !DILocation(line: 812, column: 64, scope: !621, inlinedAt: !1190)
!1194 = !DILocation(line: 815, column: 24, scope: !621, inlinedAt: !1190)
!1195 = !DILocation(line: 815, column: 50, scope: !621, inlinedAt: !1190)
!1196 = !DILocation(line: 815, column: 54, scope: !621, inlinedAt: !1190)
!1197 = !DILocation(line: 815, column: 10, scope: !621, inlinedAt: !1190)
!1198 = !DILocation(line: 815, column: 3, scope: !621, inlinedAt: !1190)
!1199 = !DILocation(line: 316, column: 19, scope: !1187)
!1200 = !DILocation(line: 317, column: 12, scope: !1187)
!1201 = !DILocation(line: 318, column: 7, scope: !1187)
!1202 = !DILocation(line: 321, column: 22, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1167, file: !1, line: 320, column: 20)
!1204 = !DILocation(line: 321, column: 24, scope: !1203)
!1205 = !DILocation(line: 321, column: 26, scope: !1203)
!1206 = !DILocalVariable(name: "fs", arg: 1, scope: !1207, file: !1, line: 215, type: !427)
!1207 = distinct !DISubprogram(name: "freereg", scope: !1, file: !1, line: 215, type: !766, isLocal: true, isDefinition: true, scopeLine: 215, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1208)
!1208 = !{!1206, !1209}
!1209 = !DILocalVariable(name: "reg", arg: 2, scope: !1207, file: !1, line: 215, type: !93)
!1210 = !DILocation(line: 215, column: 33, scope: !1207, inlinedAt: !1211)
!1211 = distinct !DILocation(line: 321, column: 7, scope: !1203)
!1212 = !DILocation(line: 215, column: 41, scope: !1207, inlinedAt: !1211)
!1213 = !DILocation(line: 216, column: 8, scope: !1214, inlinedAt: !1211)
!1214 = distinct !DILexicalBlock(scope: !1207, file: !1, line: 216, column: 7)
!1215 = !DILocation(line: 216, column: 17, scope: !1214, inlinedAt: !1211)
!1216 = !DILocation(line: 216, column: 31, scope: !1214, inlinedAt: !1211)
!1217 = !DILocation(line: 216, column: 27, scope: !1214, inlinedAt: !1211)
!1218 = !DILocation(line: 216, column: 24, scope: !1214, inlinedAt: !1211)
!1219 = !DILocation(line: 216, column: 7, scope: !1207, inlinedAt: !1211)
!1220 = !DILocation(line: 217, column: 9, scope: !1221, inlinedAt: !1211)
!1221 = distinct !DILexicalBlock(scope: !1214, file: !1, line: 216, column: 40)
!1222 = !DILocation(line: 217, column: 16, scope: !1221, inlinedAt: !1211)
!1223 = !DILocation(line: 219, column: 3, scope: !1221, inlinedAt: !1211)
!1224 = !DILocation(line: 220, column: 1, scope: !1207, inlinedAt: !1211)
!1225 = !DILocation(line: 322, column: 26, scope: !1203)
!1226 = !DILocation(line: 215, column: 33, scope: !1207, inlinedAt: !1227)
!1227 = distinct !DILocation(line: 322, column: 7, scope: !1203)
!1228 = !DILocation(line: 215, column: 41, scope: !1207, inlinedAt: !1227)
!1229 = !DILocation(line: 216, column: 8, scope: !1214, inlinedAt: !1227)
!1230 = !DILocation(line: 216, column: 17, scope: !1214, inlinedAt: !1227)
!1231 = !DILocation(line: 216, column: 31, scope: !1214, inlinedAt: !1227)
!1232 = !DILocation(line: 216, column: 27, scope: !1214, inlinedAt: !1227)
!1233 = !DILocation(line: 216, column: 24, scope: !1214, inlinedAt: !1227)
!1234 = !DILocation(line: 216, column: 7, scope: !1207, inlinedAt: !1227)
!1235 = !DILocation(line: 217, column: 9, scope: !1221, inlinedAt: !1227)
!1236 = !DILocation(line: 217, column: 16, scope: !1221, inlinedAt: !1227)
!1237 = !DILocation(line: 219, column: 3, scope: !1221, inlinedAt: !1227)
!1238 = !DILocation(line: 323, column: 61, scope: !1203)
!1239 = !DILocation(line: 220, column: 1, scope: !1207, inlinedAt: !1227)
!1240 = !DILocation(line: 323, column: 74, scope: !1203)
!1241 = !DILocation(line: 804, column: 30, scope: !573, inlinedAt: !1242)
!1242 = distinct !DILocation(line: 323, column: 21, scope: !1203)
!1243 = !DILocation(line: 804, column: 41, scope: !573, inlinedAt: !1242)
!1244 = !DILocation(line: 804, column: 48, scope: !573, inlinedAt: !1242)
!1245 = !DILocation(line: 804, column: 55, scope: !573, inlinedAt: !1242)
!1246 = !DILocation(line: 804, column: 62, scope: !573, inlinedAt: !1242)
!1247 = !DILocation(line: 808, column: 24, scope: !573, inlinedAt: !1242)
!1248 = !DILocation(line: 808, column: 52, scope: !573, inlinedAt: !1242)
!1249 = !DILocation(line: 808, column: 56, scope: !573, inlinedAt: !1242)
!1250 = !DILocation(line: 808, column: 10, scope: !573, inlinedAt: !1242)
!1251 = !DILocation(line: 808, column: 3, scope: !573, inlinedAt: !1242)
!1252 = !DILocation(line: 323, column: 19, scope: !1203)
!1253 = !DILocation(line: 324, column: 12, scope: !1203)
!1254 = !DILocation(line: 325, column: 7, scope: !1203)
!1255 = !DILocation(line: 292, column: 33, scope: !1131, inlinedAt: !1256)
!1256 = distinct !DILocation(line: 329, column: 7, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1167, file: !1, line: 328, column: 17)
!1258 = !DILocation(line: 292, column: 46, scope: !1131, inlinedAt: !1256)
!1259 = !DILocation(line: 293, column: 12, scope: !1140, inlinedAt: !1256)
!1260 = !DILocation(line: 293, column: 7, scope: !1131, inlinedAt: !1256)
!1261 = !DILocation(line: 294, column: 10, scope: !1144, inlinedAt: !1256)
!1262 = !DILocation(line: 295, column: 19, scope: !1144, inlinedAt: !1256)
!1263 = !DILocation(line: 295, column: 17, scope: !1144, inlinedAt: !1256)
!1264 = !DILocation(line: 296, column: 3, scope: !1144, inlinedAt: !1256)
!1265 = !DILocation(line: 297, column: 12, scope: !1140, inlinedAt: !1256)
!1266 = !DILocation(line: 298, column: 5, scope: !1152, inlinedAt: !1256)
!1267 = !DILocation(line: 299, column: 10, scope: !1152, inlinedAt: !1256)
!1268 = !DILocation(line: 300, column: 3, scope: !1152, inlinedAt: !1256)
!1269 = !DILocation(line: 0, scope: !1257)
!1270 = !DILocation(line: 301, column: 1, scope: !1131, inlinedAt: !1256)
!1271 = !DILocation(line: 330, column: 7, scope: !1257)
!1272 = !DILocation(line: 0, scope: !1166)
!1273 = !DILocation(line: 334, column: 1, scope: !1157)
!1274 = distinct !DISubprogram(name: "luaK_exp2nextreg", scope: !1, file: !1, line: 414, type: !1132, isLocal: false, isDefinition: true, scopeLine: 414, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1275)
!1275 = !{!1276, !1277}
!1276 = !DILocalVariable(name: "fs", arg: 1, scope: !1274, file: !1, line: 414, type: !427)
!1277 = !DILocalVariable(name: "e", arg: 2, scope: !1274, file: !1, line: 414, type: !1064)
!1278 = !DILocation(line: 414, column: 35, scope: !1274)
!1279 = !DILocation(line: 414, column: 48, scope: !1274)
!1280 = !DILocation(line: 415, column: 3, scope: !1274)
!1281 = !DILocalVariable(name: "fs", arg: 1, scope: !1282, file: !1, line: 223, type: !427)
!1282 = distinct !DISubprogram(name: "freeexp", scope: !1, file: !1, line: 223, type: !1132, isLocal: true, isDefinition: true, scopeLine: 223, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1283)
!1283 = !{!1281, !1284}
!1284 = !DILocalVariable(name: "e", arg: 2, scope: !1282, file: !1, line: 223, type: !1064)
!1285 = !DILocation(line: 223, column: 33, scope: !1282, inlinedAt: !1286)
!1286 = distinct !DILocation(line: 416, column: 3, scope: !1274)
!1287 = !DILocation(line: 223, column: 46, scope: !1282, inlinedAt: !1286)
!1288 = !DILocation(line: 224, column: 10, scope: !1289, inlinedAt: !1286)
!1289 = distinct !DILexicalBlock(scope: !1282, file: !1, line: 224, column: 7)
!1290 = !DILocation(line: 224, column: 12, scope: !1289, inlinedAt: !1286)
!1291 = !DILocation(line: 224, column: 7, scope: !1282, inlinedAt: !1286)
!1292 = !DILocation(line: 225, column: 20, scope: !1289, inlinedAt: !1286)
!1293 = !DILocation(line: 225, column: 24, scope: !1289, inlinedAt: !1286)
!1294 = !DILocation(line: 215, column: 33, scope: !1207, inlinedAt: !1295)
!1295 = distinct !DILocation(line: 225, column: 5, scope: !1289, inlinedAt: !1286)
!1296 = !DILocation(line: 215, column: 41, scope: !1207, inlinedAt: !1295)
!1297 = !DILocation(line: 216, column: 8, scope: !1214, inlinedAt: !1295)
!1298 = !DILocation(line: 216, column: 17, scope: !1214, inlinedAt: !1295)
!1299 = !DILocation(line: 216, column: 31, scope: !1214, inlinedAt: !1295)
!1300 = !DILocation(line: 216, column: 27, scope: !1214, inlinedAt: !1295)
!1301 = !DILocation(line: 216, column: 24, scope: !1214, inlinedAt: !1295)
!1302 = !DILocation(line: 216, column: 7, scope: !1207, inlinedAt: !1295)
!1303 = !DILocation(line: 217, column: 9, scope: !1221, inlinedAt: !1295)
!1304 = !DILocation(line: 217, column: 16, scope: !1221, inlinedAt: !1295)
!1305 = !DILocation(line: 219, column: 3, scope: !1221, inlinedAt: !1295)
!1306 = !DILocation(line: 220, column: 1, scope: !1207, inlinedAt: !1295)
!1307 = !DILocation(line: 225, column: 5, scope: !1289, inlinedAt: !1286)
!1308 = !DILocation(line: 226, column: 1, scope: !1282, inlinedAt: !1286)
!1309 = !DILocation(line: 209, column: 35, scope: !932, inlinedAt: !1310)
!1310 = distinct !DILocation(line: 417, column: 3, scope: !1274)
!1311 = !DILocation(line: 209, column: 43, scope: !932, inlinedAt: !1310)
!1312 = !DILocation(line: 199, column: 34, scope: !902, inlinedAt: !1313)
!1313 = distinct !DILocation(line: 210, column: 3, scope: !932, inlinedAt: !1310)
!1314 = !DILocation(line: 199, column: 42, scope: !902, inlinedAt: !1313)
!1315 = !DILocation(line: 200, column: 22, scope: !902, inlinedAt: !1313)
!1316 = !DILocation(line: 200, column: 30, scope: !902, inlinedAt: !1313)
!1317 = !DILocation(line: 200, column: 7, scope: !902, inlinedAt: !1313)
!1318 = !DILocation(line: 201, column: 22, scope: !914, inlinedAt: !1313)
!1319 = !DILocation(line: 201, column: 25, scope: !914, inlinedAt: !1313)
!1320 = !DILocation(line: 201, column: 18, scope: !914, inlinedAt: !1313)
!1321 = !DILocation(line: 201, column: 16, scope: !914, inlinedAt: !1313)
!1322 = !DILocation(line: 201, column: 7, scope: !902, inlinedAt: !1313)
!1323 = !DILocation(line: 202, column: 18, scope: !921, inlinedAt: !1313)
!1324 = !DILocation(line: 202, column: 9, scope: !922, inlinedAt: !1313)
!1325 = !DILocation(line: 203, column: 28, scope: !921, inlinedAt: !1313)
!1326 = !DILocation(line: 203, column: 7, scope: !921, inlinedAt: !1313)
!1327 = !DILocation(line: 204, column: 9, scope: !922, inlinedAt: !1313)
!1328 = !DILocation(line: 204, column: 12, scope: !922, inlinedAt: !1313)
!1329 = !DILocation(line: 211, column: 15, scope: !932, inlinedAt: !1310)
!1330 = !DILocation(line: 204, column: 27, scope: !922, inlinedAt: !1313)
!1331 = !DILocation(line: 204, column: 25, scope: !922, inlinedAt: !1313)
!1332 = !DILocation(line: 205, column: 3, scope: !922, inlinedAt: !1313)
!1333 = !DILocation(line: 206, column: 1, scope: !902, inlinedAt: !1313)
!1334 = !DILocation(line: 212, column: 1, scope: !932, inlinedAt: !1310)
!1335 = !DILocation(line: 418, column: 30, scope: !1274)
!1336 = !DILocation(line: 418, column: 3, scope: !1274)
!1337 = !DILocation(line: 419, column: 1, scope: !1274)
!1338 = distinct !DISubprogram(name: "exp2reg", scope: !1, file: !1, line: 390, type: !1062, isLocal: true, isDefinition: true, scopeLine: 390, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1339)
!1339 = !{!1340, !1341, !1342, !1343, !1346, !1347, !1348}
!1340 = !DILocalVariable(name: "fs", arg: 1, scope: !1338, file: !1, line: 390, type: !427)
!1341 = !DILocalVariable(name: "e", arg: 2, scope: !1338, file: !1, line: 390, type: !1064)
!1342 = !DILocalVariable(name: "reg", arg: 3, scope: !1338, file: !1, line: 390, type: !93)
!1343 = !DILocalVariable(name: "final", scope: !1344, file: !1, line: 395, type: !93)
!1344 = distinct !DILexicalBlock(scope: !1345, file: !1, line: 394, column: 20)
!1345 = distinct !DILexicalBlock(scope: !1338, file: !1, line: 394, column: 7)
!1346 = !DILocalVariable(name: "p_f", scope: !1344, file: !1, line: 396, type: !93)
!1347 = !DILocalVariable(name: "p_t", scope: !1344, file: !1, line: 397, type: !93)
!1348 = !DILocalVariable(name: "fj", scope: !1349, file: !1, line: 399, type: !93)
!1349 = distinct !DILexicalBlock(scope: !1350, file: !1, line: 398, column: 55)
!1350 = distinct !DILexicalBlock(scope: !1344, file: !1, line: 398, column: 9)
!1351 = !DILocation(line: 390, column: 33, scope: !1338)
!1352 = !DILocation(line: 390, column: 46, scope: !1338)
!1353 = !DILocation(line: 390, column: 53, scope: !1338)
!1354 = !DILocation(line: 391, column: 3, scope: !1338)
!1355 = !DILocation(line: 392, column: 10, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1338, file: !1, line: 392, column: 7)
!1357 = !DILocation(line: 392, column: 12, scope: !1356)
!1358 = !DILocation(line: 392, column: 7, scope: !1338)
!1359 = !DILocation(line: 0, scope: !1345)
!1360 = !DILocation(line: 393, column: 31, scope: !1356)
!1361 = !DILocation(line: 393, column: 35, scope: !1356)
!1362 = !DILocation(line: 393, column: 5, scope: !1356)
!1363 = !DILocation(line: 394, column: 7, scope: !1345)
!1364 = !{!1091, !526, i64 16}
!1365 = !{!1091, !526, i64 20}
!1366 = !DILocation(line: 394, column: 7, scope: !1338)
!1367 = !DILocation(line: 396, column: 9, scope: !1344)
!1368 = !DILocation(line: 397, column: 9, scope: !1344)
!1369 = !DILocalVariable(name: "fs", arg: 1, scope: !1370, file: !1, line: 122, type: !427)
!1370 = distinct !DISubprogram(name: "need_value", scope: !1, file: !1, line: 122, type: !678, isLocal: true, isDefinition: true, scopeLine: 122, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1371)
!1371 = !{!1369, !1372, !1373}
!1372 = !DILocalVariable(name: "list", arg: 2, scope: !1370, file: !1, line: 122, type: !93)
!1373 = !DILocalVariable(name: "i", scope: !1374, file: !1, line: 124, type: !90)
!1374 = distinct !DILexicalBlock(scope: !1375, file: !1, line: 123, column: 53)
!1375 = distinct !DILexicalBlock(scope: !1376, file: !1, line: 123, column: 3)
!1376 = distinct !DILexicalBlock(scope: !1370, file: !1, line: 123, column: 3)
!1377 = !DILocation(line: 122, column: 35, scope: !1370, inlinedAt: !1378)
!1378 = distinct !DILocation(line: 398, column: 9, scope: !1350)
!1379 = !DILocation(line: 122, column: 43, scope: !1370, inlinedAt: !1378)
!1380 = !DILocation(line: 123, column: 3, scope: !1370, inlinedAt: !1378)
!1381 = !DILocation(line: 123, column: 15, scope: !1375, inlinedAt: !1378)
!1382 = !DILocation(line: 123, column: 3, scope: !1376, inlinedAt: !1378)
!1383 = !DILocation(line: 109, column: 48, scope: !827, inlinedAt: !1384)
!1384 = distinct !DILocation(line: 124, column: 22, scope: !1374, inlinedAt: !1378)
!1385 = !DILocation(line: 109, column: 56, scope: !827, inlinedAt: !1384)
!1386 = !DILocation(line: 110, column: 22, scope: !827, inlinedAt: !1384)
!1387 = !DILocation(line: 110, column: 16, scope: !827, inlinedAt: !1384)
!1388 = !DILocation(line: 111, column: 10, scope: !838, inlinedAt: !1384)
!1389 = !DILocation(line: 111, column: 15, scope: !838, inlinedAt: !1384)
!1390 = !DILocation(line: 111, column: 18, scope: !838, inlinedAt: !1384)
!1391 = !DILocation(line: 111, column: 7, scope: !827, inlinedAt: !1384)
!1392 = !DILocation(line: 112, column: 5, scope: !838, inlinedAt: !1384)
!1393 = !DILocation(line: 114, column: 5, scope: !838, inlinedAt: !1384)
!1394 = !DILocation(line: 124, column: 21, scope: !1374, inlinedAt: !1378)
!1395 = !DILocation(line: 115, column: 1, scope: !827, inlinedAt: !1384)
!1396 = !DILocation(line: 124, column: 17, scope: !1374, inlinedAt: !1378)
!1397 = !DILocation(line: 125, column: 9, scope: !1398, inlinedAt: !1378)
!1398 = distinct !DILexicalBlock(scope: !1374, file: !1, line: 125, column: 9)
!1399 = !DILocation(line: 125, column: 23, scope: !1398, inlinedAt: !1378)
!1400 = !DILocation(line: 125, column: 9, scope: !1374, inlinedAt: !1378)
!1401 = !DILocation(line: 0, scope: !1398, inlinedAt: !1378)
!1402 = !DILocation(line: 100, column: 32, scope: !677, inlinedAt: !1403)
!1403 = distinct !DILocation(line: 123, column: 34, scope: !1375, inlinedAt: !1378)
!1404 = !DILocation(line: 100, column: 40, scope: !677, inlinedAt: !1403)
!1405 = !DILocation(line: 101, column: 16, scope: !677, inlinedAt: !1403)
!1406 = !DILocation(line: 101, column: 7, scope: !677, inlinedAt: !1403)
!1407 = !DILocation(line: 102, column: 14, scope: !689, inlinedAt: !1403)
!1408 = !DILocation(line: 102, column: 7, scope: !677, inlinedAt: !1403)
!1409 = !DILocation(line: 103, column: 5, scope: !689, inlinedAt: !1403)
!1410 = !DILocation(line: 106, column: 1, scope: !677, inlinedAt: !1403)
!1411 = !DILocation(line: 123, column: 3, scope: !1375, inlinedAt: !1378)
!1412 = !DILocation(line: 105, column: 15, scope: !689, inlinedAt: !1403)
!1413 = !DILocation(line: 105, column: 18, scope: !689, inlinedAt: !1403)
!1414 = !DILocation(line: 105, column: 5, scope: !689, inlinedAt: !1403)
!1415 = distinct !{!1415, !1416, !1417}
!1416 = !DILocation(line: 123, column: 3, scope: !1376)
!1417 = !DILocation(line: 126, column: 3, scope: !1376)
!1418 = !DILocation(line: 127, column: 3, scope: !1370, inlinedAt: !1378)
!1419 = !DILocation(line: 128, column: 1, scope: !1370, inlinedAt: !1378)
!1420 = !DILocation(line: 398, column: 30, scope: !1350)
!1421 = !DILocation(line: 122, column: 35, scope: !1370, inlinedAt: !1422)
!1422 = distinct !DILocation(line: 398, column: 33, scope: !1350)
!1423 = !DILocation(line: 122, column: 43, scope: !1370, inlinedAt: !1422)
!1424 = !DILocation(line: 123, column: 3, scope: !1370, inlinedAt: !1422)
!1425 = !DILocation(line: 123, column: 15, scope: !1375, inlinedAt: !1422)
!1426 = !DILocation(line: 123, column: 3, scope: !1376, inlinedAt: !1422)
!1427 = !DILocation(line: 109, column: 48, scope: !827, inlinedAt: !1428)
!1428 = distinct !DILocation(line: 124, column: 22, scope: !1374, inlinedAt: !1422)
!1429 = !DILocation(line: 109, column: 56, scope: !827, inlinedAt: !1428)
!1430 = !DILocation(line: 110, column: 22, scope: !827, inlinedAt: !1428)
!1431 = !DILocation(line: 110, column: 16, scope: !827, inlinedAt: !1428)
!1432 = !DILocation(line: 111, column: 10, scope: !838, inlinedAt: !1428)
!1433 = !DILocation(line: 111, column: 15, scope: !838, inlinedAt: !1428)
!1434 = !DILocation(line: 111, column: 18, scope: !838, inlinedAt: !1428)
!1435 = !DILocation(line: 111, column: 7, scope: !827, inlinedAt: !1428)
!1436 = !DILocation(line: 112, column: 5, scope: !838, inlinedAt: !1428)
!1437 = !DILocation(line: 114, column: 5, scope: !838, inlinedAt: !1428)
!1438 = !DILocation(line: 124, column: 21, scope: !1374, inlinedAt: !1422)
!1439 = !DILocation(line: 115, column: 1, scope: !827, inlinedAt: !1428)
!1440 = !DILocation(line: 124, column: 17, scope: !1374, inlinedAt: !1422)
!1441 = !DILocation(line: 125, column: 9, scope: !1398, inlinedAt: !1422)
!1442 = !DILocation(line: 125, column: 23, scope: !1398, inlinedAt: !1422)
!1443 = !DILocation(line: 125, column: 9, scope: !1374, inlinedAt: !1422)
!1444 = !DILocation(line: 0, scope: !1398, inlinedAt: !1422)
!1445 = !DILocation(line: 100, column: 32, scope: !677, inlinedAt: !1446)
!1446 = distinct !DILocation(line: 123, column: 34, scope: !1375, inlinedAt: !1422)
!1447 = !DILocation(line: 100, column: 40, scope: !677, inlinedAt: !1446)
!1448 = !DILocation(line: 101, column: 16, scope: !677, inlinedAt: !1446)
!1449 = !DILocation(line: 101, column: 7, scope: !677, inlinedAt: !1446)
!1450 = !DILocation(line: 102, column: 14, scope: !689, inlinedAt: !1446)
!1451 = !DILocation(line: 102, column: 7, scope: !677, inlinedAt: !1446)
!1452 = !DILocation(line: 103, column: 5, scope: !689, inlinedAt: !1446)
!1453 = !DILocation(line: 106, column: 1, scope: !677, inlinedAt: !1446)
!1454 = !DILocation(line: 123, column: 3, scope: !1375, inlinedAt: !1422)
!1455 = !DILocation(line: 105, column: 15, scope: !689, inlinedAt: !1446)
!1456 = !DILocation(line: 105, column: 18, scope: !689, inlinedAt: !1446)
!1457 = !DILocation(line: 105, column: 5, scope: !689, inlinedAt: !1446)
!1458 = !DILocation(line: 127, column: 3, scope: !1370, inlinedAt: !1422)
!1459 = !DILocation(line: 128, column: 1, scope: !1370, inlinedAt: !1422)
!1460 = !DILocation(line: 398, column: 9, scope: !1344)
!1461 = !DILocation(line: 95, column: 24, scope: !744, inlinedAt: !1462)
!1462 = distinct !DILocation(line: 404, column: 13, scope: !1344)
!1463 = !DILocation(line: 95, column: 7, scope: !744, inlinedAt: !1462)
!1464 = !DILocation(line: 0, scope: !1350)
!1465 = !DILocation(line: 399, column: 20, scope: !1349)
!1466 = !DILocation(line: 399, column: 22, scope: !1349)
!1467 = !DILocation(line: 399, column: 16, scope: !1349)
!1468 = !DILocation(line: 808, column: 52, scope: !573, inlinedAt: !1469)
!1469 = distinct !DILocation(line: 339, column: 10, scope: !1470, inlinedAt: !1478)
!1470 = distinct !DISubprogram(name: "code_label", scope: !1, file: !1, line: 337, type: !1471, isLocal: true, isDefinition: true, scopeLine: 337, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1473)
!1471 = !DISubroutineType(types: !1472)
!1472 = !{!93, !427, !93, !93, !93}
!1473 = !{!1474, !1475, !1476, !1477}
!1474 = !DILocalVariable(name: "fs", arg: 1, scope: !1470, file: !1, line: 337, type: !427)
!1475 = !DILocalVariable(name: "A", arg: 2, scope: !1470, file: !1, line: 337, type: !93)
!1476 = !DILocalVariable(name: "b", arg: 3, scope: !1470, file: !1, line: 337, type: !93)
!1477 = !DILocalVariable(name: "jump", arg: 4, scope: !1470, file: !1, line: 337, type: !93)
!1478 = distinct !DILocation(line: 400, column: 13, scope: !1349)
!1479 = !DILocation(line: 181, column: 24, scope: !765, inlinedAt: !1480)
!1480 = distinct !DILocation(line: 402, column: 7, scope: !1349)
!1481 = !DILocation(line: 59, column: 27, scope: !607, inlinedAt: !1482)
!1482 = distinct !DILocation(line: 399, column: 43, scope: !1349)
!1483 = !DILocation(line: 60, column: 17, scope: !607, inlinedAt: !1482)
!1484 = !DILocation(line: 60, column: 7, scope: !607, inlinedAt: !1482)
!1485 = !DILocation(line: 61, column: 3, scope: !607, inlinedAt: !1482)
!1486 = !DILocation(line: 62, column: 11, scope: !607, inlinedAt: !1482)
!1487 = !DILocation(line: 812, column: 30, scope: !621, inlinedAt: !1488)
!1488 = distinct !DILocation(line: 63, column: 7, scope: !607, inlinedAt: !1482)
!1489 = !DILocation(line: 812, column: 41, scope: !621, inlinedAt: !1488)
!1490 = !DILocation(line: 812, column: 48, scope: !621, inlinedAt: !1488)
!1491 = !DILocation(line: 812, column: 64, scope: !621, inlinedAt: !1488)
!1492 = !DILocation(line: 815, column: 50, scope: !621, inlinedAt: !1488)
!1493 = !DILocation(line: 815, column: 54, scope: !621, inlinedAt: !1488)
!1494 = !DILocation(line: 815, column: 10, scope: !621, inlinedAt: !1488)
!1495 = !DILocation(line: 815, column: 3, scope: !621, inlinedAt: !1488)
!1496 = !DILocation(line: 61, column: 7, scope: !607, inlinedAt: !1482)
!1497 = !DILocation(line: 63, column: 5, scope: !607, inlinedAt: !1482)
!1498 = !DILocation(line: 64, column: 3, scope: !607, inlinedAt: !1482)
!1499 = !DILocation(line: 65, column: 10, scope: !607, inlinedAt: !1482)
!1500 = !DILocation(line: 66, column: 1, scope: !607, inlinedAt: !1482)
!1501 = !DILocation(line: 65, column: 3, scope: !607, inlinedAt: !1482)
!1502 = !DILocation(line: 399, column: 11, scope: !1349)
!1503 = !DILocation(line: 337, column: 35, scope: !1470, inlinedAt: !1478)
!1504 = !DILocation(line: 337, column: 43, scope: !1470, inlinedAt: !1478)
!1505 = !DILocation(line: 337, column: 50, scope: !1470, inlinedAt: !1478)
!1506 = !DILocation(line: 337, column: 57, scope: !1470, inlinedAt: !1478)
!1507 = !DILocation(line: 94, column: 31, scope: !744, inlinedAt: !1508)
!1508 = distinct !DILocation(line: 338, column: 3, scope: !1470, inlinedAt: !1478)
!1509 = !DILocation(line: 95, column: 24, scope: !744, inlinedAt: !1508)
!1510 = !DILocation(line: 95, column: 7, scope: !744, inlinedAt: !1508)
!1511 = !DILocation(line: 95, column: 18, scope: !744, inlinedAt: !1508)
!1512 = !DILocation(line: 96, column: 3, scope: !744, inlinedAt: !1508)
!1513 = !DILocation(line: 804, column: 30, scope: !573, inlinedAt: !1469)
!1514 = !DILocation(line: 804, column: 41, scope: !573, inlinedAt: !1469)
!1515 = !DILocation(line: 804, column: 48, scope: !573, inlinedAt: !1469)
!1516 = !DILocation(line: 804, column: 55, scope: !573, inlinedAt: !1469)
!1517 = !DILocation(line: 804, column: 62, scope: !573, inlinedAt: !1469)
!1518 = !DILocation(line: 808, column: 24, scope: !573, inlinedAt: !1469)
!1519 = !DILocation(line: 808, column: 56, scope: !573, inlinedAt: !1469)
!1520 = !DILocation(line: 808, column: 10, scope: !573, inlinedAt: !1469)
!1521 = !DILocation(line: 808, column: 3, scope: !573, inlinedAt: !1469)
!1522 = !DILocation(line: 339, column: 3, scope: !1470, inlinedAt: !1478)
!1523 = !DILocation(line: 337, column: 35, scope: !1470, inlinedAt: !1524)
!1524 = distinct !DILocation(line: 401, column: 13, scope: !1349)
!1525 = !DILocation(line: 337, column: 43, scope: !1470, inlinedAt: !1524)
!1526 = !DILocation(line: 337, column: 50, scope: !1470, inlinedAt: !1524)
!1527 = !DILocation(line: 337, column: 57, scope: !1470, inlinedAt: !1524)
!1528 = !DILocation(line: 94, column: 31, scope: !744, inlinedAt: !1529)
!1529 = distinct !DILocation(line: 338, column: 3, scope: !1470, inlinedAt: !1524)
!1530 = !DILocation(line: 95, column: 24, scope: !744, inlinedAt: !1529)
!1531 = !DILocation(line: 95, column: 18, scope: !744, inlinedAt: !1529)
!1532 = !DILocation(line: 96, column: 3, scope: !744, inlinedAt: !1529)
!1533 = !DILocation(line: 804, column: 30, scope: !573, inlinedAt: !1534)
!1534 = distinct !DILocation(line: 339, column: 10, scope: !1470, inlinedAt: !1524)
!1535 = !DILocation(line: 804, column: 41, scope: !573, inlinedAt: !1534)
!1536 = !DILocation(line: 804, column: 48, scope: !573, inlinedAt: !1534)
!1537 = !DILocation(line: 804, column: 55, scope: !573, inlinedAt: !1534)
!1538 = !DILocation(line: 804, column: 62, scope: !573, inlinedAt: !1534)
!1539 = !DILocation(line: 808, column: 24, scope: !573, inlinedAt: !1534)
!1540 = !DILocation(line: 808, column: 52, scope: !573, inlinedAt: !1534)
!1541 = !DILocation(line: 808, column: 56, scope: !573, inlinedAt: !1534)
!1542 = !DILocation(line: 808, column: 10, scope: !573, inlinedAt: !1534)
!1543 = !DILocation(line: 808, column: 3, scope: !573, inlinedAt: !1534)
!1544 = !DILocation(line: 339, column: 3, scope: !1470, inlinedAt: !1524)
!1545 = !DILocation(line: 179, column: 35, scope: !765, inlinedAt: !1480)
!1546 = !DILocation(line: 179, column: 43, scope: !765, inlinedAt: !1480)
!1547 = !DILocation(line: 94, column: 31, scope: !744, inlinedAt: !1548)
!1548 = distinct !DILocation(line: 180, column: 3, scope: !765, inlinedAt: !1480)
!1549 = !DILocation(line: 95, column: 24, scope: !744, inlinedAt: !1548)
!1550 = !DILocation(line: 95, column: 18, scope: !744, inlinedAt: !1548)
!1551 = !DILocation(line: 96, column: 3, scope: !744, inlinedAt: !1548)
!1552 = !DILocation(line: 181, column: 3, scope: !765, inlinedAt: !1480)
!1553 = !DILocation(line: 182, column: 1, scope: !765, inlinedAt: !1480)
!1554 = !DILocation(line: 403, column: 5, scope: !1349)
!1555 = !DILocation(line: 405, column: 25, scope: !1344)
!1556 = !DILocation(line: 0, scope: !1344)
!1557 = !DILocation(line: 94, column: 31, scope: !744, inlinedAt: !1462)
!1558 = !DILocation(line: 95, column: 18, scope: !744, inlinedAt: !1462)
!1559 = !DILocation(line: 96, column: 3, scope: !744, inlinedAt: !1462)
!1560 = !DILocation(line: 395, column: 9, scope: !1344)
!1561 = !DILocation(line: 150, column: 38, scope: !782, inlinedAt: !1562)
!1562 = distinct !DILocation(line: 405, column: 5, scope: !1344)
!1563 = !DILocation(line: 150, column: 46, scope: !782, inlinedAt: !1562)
!1564 = !DILocation(line: 150, column: 56, scope: !782, inlinedAt: !1562)
!1565 = !DILocation(line: 150, column: 69, scope: !782, inlinedAt: !1562)
!1566 = !DILocation(line: 151, column: 31, scope: !782, inlinedAt: !1562)
!1567 = !DILocation(line: 152, column: 3, scope: !782, inlinedAt: !1562)
!1568 = !DILocation(line: 152, column: 15, scope: !782, inlinedAt: !1562)
!1569 = !DILocation(line: 100, column: 32, scope: !677, inlinedAt: !1570)
!1570 = distinct !DILocation(line: 153, column: 16, scope: !791, inlinedAt: !1562)
!1571 = !DILocation(line: 100, column: 40, scope: !677, inlinedAt: !1570)
!1572 = !DILocation(line: 101, column: 16, scope: !677, inlinedAt: !1570)
!1573 = !DILocation(line: 101, column: 7, scope: !677, inlinedAt: !1570)
!1574 = !DILocation(line: 102, column: 14, scope: !689, inlinedAt: !1570)
!1575 = !DILocation(line: 102, column: 7, scope: !677, inlinedAt: !1570)
!1576 = !DILocation(line: 105, column: 15, scope: !689, inlinedAt: !1570)
!1577 = !DILocation(line: 105, column: 18, scope: !689, inlinedAt: !1570)
!1578 = !DILocation(line: 0, scope: !791, inlinedAt: !1562)
!1579 = !DILocation(line: 106, column: 1, scope: !677, inlinedAt: !1570)
!1580 = !DILocation(line: 153, column: 9, scope: !791, inlinedAt: !1562)
!1581 = !DILocation(line: 131, column: 37, scope: !814, inlinedAt: !1582)
!1582 = distinct !DILocation(line: 154, column: 9, scope: !823, inlinedAt: !1562)
!1583 = !DILocation(line: 131, column: 45, scope: !814, inlinedAt: !1582)
!1584 = !DILocation(line: 131, column: 55, scope: !814, inlinedAt: !1582)
!1585 = !DILocation(line: 109, column: 48, scope: !827, inlinedAt: !1586)
!1586 = distinct !DILocation(line: 132, column: 20, scope: !814, inlinedAt: !1582)
!1587 = !DILocation(line: 109, column: 56, scope: !827, inlinedAt: !1586)
!1588 = !DILocation(line: 110, column: 16, scope: !827, inlinedAt: !1586)
!1589 = !DILocation(line: 111, column: 10, scope: !838, inlinedAt: !1586)
!1590 = !DILocation(line: 111, column: 15, scope: !838, inlinedAt: !1586)
!1591 = !DILocation(line: 111, column: 18, scope: !838, inlinedAt: !1586)
!1592 = !DILocation(line: 111, column: 7, scope: !827, inlinedAt: !1586)
!1593 = !DILocation(line: 114, column: 5, scope: !838, inlinedAt: !1586)
!1594 = !DILocation(line: 133, column: 7, scope: !845, inlinedAt: !1582)
!1595 = !DILocation(line: 0, scope: !838, inlinedAt: !1586)
!1596 = !DILocation(line: 0, scope: !814, inlinedAt: !1582)
!1597 = !DILocation(line: 115, column: 1, scope: !827, inlinedAt: !1586)
!1598 = !DILocation(line: 132, column: 16, scope: !814, inlinedAt: !1582)
!1599 = !DILocation(line: 133, column: 22, scope: !845, inlinedAt: !1582)
!1600 = !DILocation(line: 133, column: 7, scope: !814, inlinedAt: !1582)
!1601 = !DILocation(line: 0, scope: !823, inlinedAt: !1562)
!1602 = !DILocation(line: 0, scope: !854, inlinedAt: !1582)
!1603 = !DILocation(line: 135, column: 21, scope: !854, inlinedAt: !1582)
!1604 = !DILocation(line: 135, column: 28, scope: !854, inlinedAt: !1582)
!1605 = !DILocation(line: 135, column: 7, scope: !814, inlinedAt: !1582)
!1606 = !DILocation(line: 136, column: 5, scope: !854, inlinedAt: !1582)
!1607 = !DILocation(line: 138, column: 10, scope: !854, inlinedAt: !1582)
!1608 = !DILocation(line: 140, column: 3, scope: !814, inlinedAt: !1582)
!1609 = !DILocation(line: 141, column: 1, scope: !814, inlinedAt: !1582)
!1610 = !DILocation(line: 154, column: 9, scope: !791, inlinedAt: !1562)
!1611 = !DILocation(line: 80, column: 33, scope: !702, inlinedAt: !1612)
!1612 = distinct !DILocation(line: 155, column: 7, scope: !823, inlinedAt: !1562)
!1613 = !DILocation(line: 80, column: 41, scope: !702, inlinedAt: !1612)
!1614 = !DILocation(line: 80, column: 49, scope: !702, inlinedAt: !1612)
!1615 = !DILocation(line: 81, column: 16, scope: !702, inlinedAt: !1612)
!1616 = !DILocation(line: 82, column: 20, scope: !702, inlinedAt: !1612)
!1617 = !DILocation(line: 82, column: 7, scope: !702, inlinedAt: !1612)
!1618 = !DILocation(line: 84, column: 7, scope: !716, inlinedAt: !1612)
!1619 = !DILocation(line: 84, column: 19, scope: !716, inlinedAt: !1612)
!1620 = !DILocation(line: 84, column: 7, scope: !702, inlinedAt: !1612)
!1621 = !DILocation(line: 85, column: 26, scope: !716, inlinedAt: !1612)
!1622 = !DILocation(line: 85, column: 5, scope: !716, inlinedAt: !1612)
!1623 = !DILocation(line: 80, column: 33, scope: !702, inlinedAt: !1624)
!1624 = distinct !DILocation(line: 157, column: 7, scope: !823, inlinedAt: !1562)
!1625 = !DILocation(line: 80, column: 41, scope: !702, inlinedAt: !1624)
!1626 = !DILocation(line: 80, column: 49, scope: !702, inlinedAt: !1624)
!1627 = !DILocation(line: 81, column: 16, scope: !702, inlinedAt: !1624)
!1628 = !DILocation(line: 82, column: 20, scope: !702, inlinedAt: !1624)
!1629 = !DILocation(line: 82, column: 7, scope: !702, inlinedAt: !1624)
!1630 = !DILocation(line: 84, column: 7, scope: !716, inlinedAt: !1624)
!1631 = !DILocation(line: 84, column: 19, scope: !716, inlinedAt: !1624)
!1632 = !DILocation(line: 84, column: 7, scope: !702, inlinedAt: !1624)
!1633 = !DILocation(line: 85, column: 26, scope: !716, inlinedAt: !1624)
!1634 = !DILocation(line: 85, column: 5, scope: !716, inlinedAt: !1624)
!1635 = !DILocation(line: 86, column: 3, scope: !702, inlinedAt: !1624)
!1636 = !DILocation(line: 87, column: 1, scope: !702, inlinedAt: !1624)
!1637 = !DILocation(line: 160, column: 1, scope: !782, inlinedAt: !1562)
!1638 = !DILocation(line: 406, column: 25, scope: !1344)
!1639 = !DILocation(line: 150, column: 38, scope: !782, inlinedAt: !1640)
!1640 = distinct !DILocation(line: 406, column: 5, scope: !1344)
!1641 = !DILocation(line: 150, column: 46, scope: !782, inlinedAt: !1640)
!1642 = !DILocation(line: 150, column: 56, scope: !782, inlinedAt: !1640)
!1643 = !DILocation(line: 150, column: 69, scope: !782, inlinedAt: !1640)
!1644 = !DILocation(line: 151, column: 31, scope: !782, inlinedAt: !1640)
!1645 = !DILocation(line: 152, column: 3, scope: !782, inlinedAt: !1640)
!1646 = !DILocation(line: 152, column: 15, scope: !782, inlinedAt: !1640)
!1647 = !DILocation(line: 100, column: 32, scope: !677, inlinedAt: !1648)
!1648 = distinct !DILocation(line: 153, column: 16, scope: !791, inlinedAt: !1640)
!1649 = !DILocation(line: 100, column: 40, scope: !677, inlinedAt: !1648)
!1650 = !DILocation(line: 101, column: 16, scope: !677, inlinedAt: !1648)
!1651 = !DILocation(line: 101, column: 7, scope: !677, inlinedAt: !1648)
!1652 = !DILocation(line: 102, column: 14, scope: !689, inlinedAt: !1648)
!1653 = !DILocation(line: 102, column: 7, scope: !677, inlinedAt: !1648)
!1654 = !DILocation(line: 105, column: 15, scope: !689, inlinedAt: !1648)
!1655 = !DILocation(line: 105, column: 18, scope: !689, inlinedAt: !1648)
!1656 = !DILocation(line: 0, scope: !791, inlinedAt: !1640)
!1657 = !DILocation(line: 106, column: 1, scope: !677, inlinedAt: !1648)
!1658 = !DILocation(line: 153, column: 9, scope: !791, inlinedAt: !1640)
!1659 = !DILocation(line: 131, column: 37, scope: !814, inlinedAt: !1660)
!1660 = distinct !DILocation(line: 154, column: 9, scope: !823, inlinedAt: !1640)
!1661 = !DILocation(line: 131, column: 45, scope: !814, inlinedAt: !1660)
!1662 = !DILocation(line: 131, column: 55, scope: !814, inlinedAt: !1660)
!1663 = !DILocation(line: 109, column: 48, scope: !827, inlinedAt: !1664)
!1664 = distinct !DILocation(line: 132, column: 20, scope: !814, inlinedAt: !1660)
!1665 = !DILocation(line: 109, column: 56, scope: !827, inlinedAt: !1664)
!1666 = !DILocation(line: 110, column: 16, scope: !827, inlinedAt: !1664)
!1667 = !DILocation(line: 111, column: 10, scope: !838, inlinedAt: !1664)
!1668 = !DILocation(line: 111, column: 15, scope: !838, inlinedAt: !1664)
!1669 = !DILocation(line: 111, column: 18, scope: !838, inlinedAt: !1664)
!1670 = !DILocation(line: 111, column: 7, scope: !827, inlinedAt: !1664)
!1671 = !DILocation(line: 114, column: 5, scope: !838, inlinedAt: !1664)
!1672 = !DILocation(line: 133, column: 7, scope: !845, inlinedAt: !1660)
!1673 = !DILocation(line: 0, scope: !838, inlinedAt: !1664)
!1674 = !DILocation(line: 0, scope: !814, inlinedAt: !1660)
!1675 = !DILocation(line: 115, column: 1, scope: !827, inlinedAt: !1664)
!1676 = !DILocation(line: 132, column: 16, scope: !814, inlinedAt: !1660)
!1677 = !DILocation(line: 133, column: 22, scope: !845, inlinedAt: !1660)
!1678 = !DILocation(line: 133, column: 7, scope: !814, inlinedAt: !1660)
!1679 = !DILocation(line: 0, scope: !823, inlinedAt: !1640)
!1680 = !DILocation(line: 0, scope: !854, inlinedAt: !1660)
!1681 = !DILocation(line: 135, column: 21, scope: !854, inlinedAt: !1660)
!1682 = !DILocation(line: 135, column: 28, scope: !854, inlinedAt: !1660)
!1683 = !DILocation(line: 135, column: 7, scope: !814, inlinedAt: !1660)
!1684 = !DILocation(line: 136, column: 5, scope: !854, inlinedAt: !1660)
!1685 = !DILocation(line: 138, column: 10, scope: !854, inlinedAt: !1660)
!1686 = !DILocation(line: 140, column: 3, scope: !814, inlinedAt: !1660)
!1687 = !DILocation(line: 141, column: 1, scope: !814, inlinedAt: !1660)
!1688 = !DILocation(line: 154, column: 9, scope: !791, inlinedAt: !1640)
!1689 = !DILocation(line: 80, column: 33, scope: !702, inlinedAt: !1690)
!1690 = distinct !DILocation(line: 155, column: 7, scope: !823, inlinedAt: !1640)
!1691 = !DILocation(line: 80, column: 41, scope: !702, inlinedAt: !1690)
!1692 = !DILocation(line: 80, column: 49, scope: !702, inlinedAt: !1690)
!1693 = !DILocation(line: 81, column: 16, scope: !702, inlinedAt: !1690)
!1694 = !DILocation(line: 82, column: 20, scope: !702, inlinedAt: !1690)
!1695 = !DILocation(line: 82, column: 7, scope: !702, inlinedAt: !1690)
!1696 = !DILocation(line: 84, column: 7, scope: !716, inlinedAt: !1690)
!1697 = !DILocation(line: 84, column: 19, scope: !716, inlinedAt: !1690)
!1698 = !DILocation(line: 84, column: 7, scope: !702, inlinedAt: !1690)
!1699 = !DILocation(line: 85, column: 26, scope: !716, inlinedAt: !1690)
!1700 = !DILocation(line: 85, column: 5, scope: !716, inlinedAt: !1690)
!1701 = !DILocation(line: 80, column: 33, scope: !702, inlinedAt: !1702)
!1702 = distinct !DILocation(line: 157, column: 7, scope: !823, inlinedAt: !1640)
!1703 = !DILocation(line: 80, column: 41, scope: !702, inlinedAt: !1702)
!1704 = !DILocation(line: 80, column: 49, scope: !702, inlinedAt: !1702)
!1705 = !DILocation(line: 81, column: 16, scope: !702, inlinedAt: !1702)
!1706 = !DILocation(line: 82, column: 20, scope: !702, inlinedAt: !1702)
!1707 = !DILocation(line: 82, column: 7, scope: !702, inlinedAt: !1702)
!1708 = !DILocation(line: 84, column: 7, scope: !716, inlinedAt: !1702)
!1709 = !DILocation(line: 84, column: 19, scope: !716, inlinedAt: !1702)
!1710 = !DILocation(line: 84, column: 7, scope: !702, inlinedAt: !1702)
!1711 = !DILocation(line: 85, column: 26, scope: !716, inlinedAt: !1702)
!1712 = !DILocation(line: 85, column: 5, scope: !716, inlinedAt: !1702)
!1713 = !DILocation(line: 86, column: 3, scope: !702, inlinedAt: !1702)
!1714 = !DILocation(line: 87, column: 1, scope: !702, inlinedAt: !1702)
!1715 = !DILocation(line: 160, column: 1, scope: !782, inlinedAt: !1640)
!1716 = !DILocation(line: 407, column: 3, scope: !1344)
!1717 = !DILocation(line: 408, column: 15, scope: !1338)
!1718 = !DILocation(line: 408, column: 8, scope: !1338)
!1719 = !DILocation(line: 409, column: 6, scope: !1338)
!1720 = !DILocation(line: 409, column: 10, scope: !1338)
!1721 = !DILocation(line: 409, column: 15, scope: !1338)
!1722 = !DILocation(line: 410, column: 8, scope: !1338)
!1723 = !DILocation(line: 411, column: 1, scope: !1338)
!1724 = distinct !DISubprogram(name: "luaK_exp2anyreg", scope: !1, file: !1, line: 422, type: !1725, isLocal: false, isDefinition: true, scopeLine: 422, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1727)
!1725 = !DISubroutineType(types: !1726)
!1726 = !{!93, !427, !1064}
!1727 = !{!1728, !1729}
!1728 = !DILocalVariable(name: "fs", arg: 1, scope: !1724, file: !1, line: 422, type: !427)
!1729 = !DILocalVariable(name: "e", arg: 2, scope: !1724, file: !1, line: 422, type: !1064)
!1730 = !DILocation(line: 422, column: 33, scope: !1724)
!1731 = !DILocation(line: 422, column: 46, scope: !1724)
!1732 = !DILocation(line: 423, column: 3, scope: !1724)
!1733 = !DILocation(line: 424, column: 10, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1724, file: !1, line: 424, column: 7)
!1735 = !DILocation(line: 424, column: 12, scope: !1734)
!1736 = !DILocation(line: 424, column: 7, scope: !1724)
!1737 = !DILocation(line: 432, column: 13, scope: !1724)
!1738 = !DILocation(line: 432, column: 17, scope: !1724)
!1739 = !DILocation(line: 425, column: 10, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1741, file: !1, line: 425, column: 9)
!1741 = distinct !DILexicalBlock(scope: !1734, file: !1, line: 424, column: 26)
!1742 = !DILocation(line: 0, scope: !1740)
!1743 = !DILocation(line: 425, column: 9, scope: !1741)
!1744 = !DILocation(line: 426, column: 28, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1741, file: !1, line: 426, column: 9)
!1746 = !DILocation(line: 426, column: 24, scope: !1745)
!1747 = !DILocation(line: 426, column: 21, scope: !1745)
!1748 = !DILocation(line: 426, column: 9, scope: !1741)
!1749 = !DILocation(line: 427, column: 7, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1745, file: !1, line: 426, column: 37)
!1751 = !DILocation(line: 428, column: 7, scope: !1750)
!1752 = !DILocation(line: 431, column: 3, scope: !1724)
!1753 = !DILocation(line: 432, column: 3, scope: !1724)
!1754 = !DILocation(line: 0, scope: !1750)
!1755 = !DILocation(line: 433, column: 1, scope: !1724)
!1756 = distinct !DISubprogram(name: "luaK_exp2val", scope: !1, file: !1, line: 436, type: !1132, isLocal: false, isDefinition: true, scopeLine: 436, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1757)
!1757 = !{!1758, !1759}
!1758 = !DILocalVariable(name: "fs", arg: 1, scope: !1756, file: !1, line: 436, type: !427)
!1759 = !DILocalVariable(name: "e", arg: 2, scope: !1756, file: !1, line: 436, type: !1064)
!1760 = !DILocation(line: 436, column: 31, scope: !1756)
!1761 = !DILocation(line: 436, column: 44, scope: !1756)
!1762 = !DILocation(line: 437, column: 7, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1756, file: !1, line: 437, column: 7)
!1764 = !DILocation(line: 437, column: 7, scope: !1756)
!1765 = !DILocation(line: 422, column: 33, scope: !1724, inlinedAt: !1766)
!1766 = distinct !DILocation(line: 438, column: 5, scope: !1763)
!1767 = !DILocation(line: 422, column: 46, scope: !1724, inlinedAt: !1766)
!1768 = !DILocation(line: 423, column: 3, scope: !1724, inlinedAt: !1766)
!1769 = !DILocation(line: 424, column: 10, scope: !1734, inlinedAt: !1766)
!1770 = !DILocation(line: 424, column: 12, scope: !1734, inlinedAt: !1766)
!1771 = !DILocation(line: 424, column: 7, scope: !1724, inlinedAt: !1766)
!1772 = !DILocation(line: 425, column: 10, scope: !1740, inlinedAt: !1766)
!1773 = !DILocation(line: 0, scope: !1740, inlinedAt: !1766)
!1774 = !DILocation(line: 425, column: 9, scope: !1741, inlinedAt: !1766)
!1775 = !DILocation(line: 426, column: 28, scope: !1745, inlinedAt: !1766)
!1776 = !DILocation(line: 426, column: 24, scope: !1745, inlinedAt: !1766)
!1777 = !DILocation(line: 426, column: 21, scope: !1745, inlinedAt: !1766)
!1778 = !DILocation(line: 426, column: 9, scope: !1741, inlinedAt: !1766)
!1779 = !DILocation(line: 427, column: 7, scope: !1750, inlinedAt: !1766)
!1780 = !DILocation(line: 428, column: 7, scope: !1750, inlinedAt: !1766)
!1781 = !DILocation(line: 431, column: 3, scope: !1724, inlinedAt: !1766)
!1782 = !DILocation(line: 432, column: 3, scope: !1724, inlinedAt: !1766)
!1783 = !DILocation(line: 0, scope: !1763)
!1784 = !DILocation(line: 433, column: 1, scope: !1724, inlinedAt: !1766)
!1785 = !DILocation(line: 438, column: 5, scope: !1763)
!1786 = !DILocation(line: 440, column: 5, scope: !1763)
!1787 = !DILocation(line: 441, column: 1, scope: !1756)
!1788 = distinct !DISubprogram(name: "luaK_exp2RK", scope: !1, file: !1, line: 444, type: !1725, isLocal: false, isDefinition: true, scopeLine: 444, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1789)
!1789 = !{!1790, !1791}
!1790 = !DILocalVariable(name: "fs", arg: 1, scope: !1788, file: !1, line: 444, type: !427)
!1791 = !DILocalVariable(name: "e", arg: 2, scope: !1788, file: !1, line: 444, type: !1064)
!1792 = !DILocation(line: 444, column: 29, scope: !1788)
!1793 = !DILocation(line: 444, column: 42, scope: !1788)
!1794 = !DILocation(line: 445, column: 3, scope: !1788)
!1795 = !DILocation(line: 446, column: 14, scope: !1788)
!1796 = !DILocation(line: 446, column: 3, scope: !1788)
!1797 = !DILocation(line: 451, column: 15, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1799, file: !1, line: 451, column: 11)
!1799 = distinct !DILexicalBlock(scope: !1800, file: !1, line: 450, column: 16)
!1800 = distinct !DILexicalBlock(scope: !1788, file: !1, line: 446, column: 17)
!1801 = !DILocation(line: 451, column: 18, scope: !1798)
!1802 = !DILocation(line: 451, column: 11, scope: !1799)
!1803 = !DILocation(line: 452, column: 29, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1798, file: !1, line: 451, column: 33)
!1805 = !DILocation(line: 452, column: 23, scope: !1804)
!1806 = !DILocalVariable(name: "fs", arg: 1, scope: !1807, file: !1, line: 271, type: !427)
!1807 = distinct !DISubprogram(name: "nilK", scope: !1, file: !1, line: 271, type: !608, isLocal: true, isDefinition: true, scopeLine: 271, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1808)
!1808 = !{!1806, !1809, !1810, !1811}
!1809 = !DILocalVariable(name: "k", scope: !1807, file: !1, line: 272, type: !156)
!1810 = !DILocalVariable(name: "v", scope: !1807, file: !1, line: 272, type: !156)
!1811 = !DILocalVariable(name: "i_o", scope: !1812, file: !1, line: 275, type: !155)
!1812 = distinct !DILexicalBlock(scope: !1807, file: !1, line: 275, column: 3)
!1813 = !DILocation(line: 271, column: 29, scope: !1807, inlinedAt: !1814)
!1814 = distinct !DILocation(line: 452, column: 41, scope: !1804)
!1815 = !DILocation(line: 272, column: 3, scope: !1807, inlinedAt: !1814)
!1816 = !DILocation(line: 273, column: 3, scope: !1807, inlinedAt: !1814)
!1817 = !DILocation(line: 275, column: 3, scope: !1812, inlinedAt: !1814)
!1818 = !DILocation(line: 272, column: 10, scope: !1807, inlinedAt: !1814)
!1819 = !DILocation(line: 272, column: 13, scope: !1807, inlinedAt: !1814)
!1820 = !DILocation(line: 276, column: 10, scope: !1807, inlinedAt: !1814)
!1821 = !DILocation(line: 277, column: 1, scope: !1807, inlinedAt: !1814)
!1822 = !DILocation(line: 453, column: 29, scope: !1804)
!1823 = !DILocation(line: 453, column: 23, scope: !1804)
!1824 = !DILocation(line: 453, column: 63, scope: !1804)
!1825 = !DILocation(line: 257, column: 30, scope: !1044, inlinedAt: !1826)
!1826 = distinct !DILocation(line: 453, column: 41, scope: !1804)
!1827 = !DILocation(line: 257, column: 45, scope: !1044, inlinedAt: !1826)
!1828 = !DILocation(line: 258, column: 3, scope: !1044, inlinedAt: !1826)
!1829 = !DILocation(line: 259, column: 3, scope: !1052, inlinedAt: !1826)
!1830 = !DILocation(line: 258, column: 10, scope: !1044, inlinedAt: !1826)
!1831 = !DILocation(line: 260, column: 10, scope: !1044, inlinedAt: !1826)
!1832 = !DILocation(line: 261, column: 1, scope: !1044, inlinedAt: !1826)
!1833 = !DILocation(line: 454, column: 57, scope: !1804)
!1834 = !DILocalVariable(name: "fs", arg: 1, scope: !1835, file: !1, line: 264, type: !427)
!1835 = distinct !DISubprogram(name: "boolK", scope: !1, file: !1, line: 264, type: !678, isLocal: true, isDefinition: true, scopeLine: 264, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1836)
!1836 = !{!1834, !1837, !1838, !1839}
!1837 = !DILocalVariable(name: "b", arg: 2, scope: !1835, file: !1, line: 264, type: !93)
!1838 = !DILocalVariable(name: "o", scope: !1835, file: !1, line: 265, type: !156)
!1839 = !DILocalVariable(name: "i_o", scope: !1840, file: !1, line: 266, type: !155)
!1840 = distinct !DILexicalBlock(scope: !1835, file: !1, line: 266, column: 3)
!1841 = !DILocation(line: 264, column: 30, scope: !1835, inlinedAt: !1842)
!1842 = distinct !DILocation(line: 454, column: 41, scope: !1804)
!1843 = !DILocation(line: 264, column: 38, scope: !1835, inlinedAt: !1842)
!1844 = !DILocation(line: 265, column: 3, scope: !1835, inlinedAt: !1842)
!1845 = !DILocation(line: 266, column: 3, scope: !1840, inlinedAt: !1842)
!1846 = !DILocation(line: 265, column: 10, scope: !1835, inlinedAt: !1842)
!1847 = !DILocation(line: 267, column: 10, scope: !1835, inlinedAt: !1842)
!1848 = !DILocation(line: 268, column: 1, scope: !1835, inlinedAt: !1842)
!1849 = !DILocation(line: 0, scope: !1804)
!1850 = !DILocation(line: 452, column: 12, scope: !1804)
!1851 = !DILocation(line: 452, column: 16, scope: !1804)
!1852 = !DILocation(line: 452, column: 21, scope: !1804)
!1853 = !DILocation(line: 455, column: 14, scope: !1804)
!1854 = !DILocation(line: 456, column: 16, scope: !1804)
!1855 = !DILocation(line: 456, column: 9, scope: !1804)
!1856 = !DILocation(line: 461, column: 14, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1858, file: !1, line: 461, column: 11)
!1858 = distinct !DILexicalBlock(scope: !1800, file: !1, line: 460, column: 14)
!1859 = !DILocation(line: 461, column: 18, scope: !1857)
!1860 = !DILocation(line: 461, column: 23, scope: !1857)
!1861 = !DILocation(line: 461, column: 11, scope: !1858)
!1862 = !DILocation(line: 462, column: 16, scope: !1857)
!1863 = !DILocation(line: 462, column: 9, scope: !1857)
!1864 = !DILocation(line: 422, column: 33, scope: !1724, inlinedAt: !1865)
!1865 = distinct !DILocation(line: 468, column: 10, scope: !1788)
!1866 = !DILocation(line: 422, column: 46, scope: !1724, inlinedAt: !1865)
!1867 = !DILocation(line: 423, column: 3, scope: !1724, inlinedAt: !1865)
!1868 = !DILocation(line: 424, column: 10, scope: !1734, inlinedAt: !1865)
!1869 = !DILocation(line: 424, column: 12, scope: !1734, inlinedAt: !1865)
!1870 = !DILocation(line: 424, column: 7, scope: !1724, inlinedAt: !1865)
!1871 = !DILocation(line: 432, column: 13, scope: !1724, inlinedAt: !1865)
!1872 = !DILocation(line: 432, column: 17, scope: !1724, inlinedAt: !1865)
!1873 = !DILocation(line: 425, column: 10, scope: !1740, inlinedAt: !1865)
!1874 = !DILocation(line: 0, scope: !1740, inlinedAt: !1865)
!1875 = !DILocation(line: 425, column: 9, scope: !1741, inlinedAt: !1865)
!1876 = !DILocation(line: 426, column: 28, scope: !1745, inlinedAt: !1865)
!1877 = !DILocation(line: 426, column: 24, scope: !1745, inlinedAt: !1865)
!1878 = !DILocation(line: 426, column: 21, scope: !1745, inlinedAt: !1865)
!1879 = !DILocation(line: 426, column: 9, scope: !1741, inlinedAt: !1865)
!1880 = !DILocation(line: 427, column: 7, scope: !1750, inlinedAt: !1865)
!1881 = !DILocation(line: 428, column: 7, scope: !1750, inlinedAt: !1865)
!1882 = !DILocation(line: 431, column: 3, scope: !1724, inlinedAt: !1865)
!1883 = !DILocation(line: 432, column: 3, scope: !1724, inlinedAt: !1865)
!1884 = !DILocation(line: 0, scope: !1788)
!1885 = !DILocation(line: 433, column: 1, scope: !1724, inlinedAt: !1865)
!1886 = !DILocation(line: 468, column: 3, scope: !1788)
!1887 = !DILocation(line: 469, column: 1, scope: !1788)
!1888 = distinct !DISubprogram(name: "luaK_storevar", scope: !1, file: !1, line: 472, type: !1889, isLocal: false, isDefinition: true, scopeLine: 472, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1891)
!1889 = !DISubroutineType(types: !1890)
!1890 = !{null, !427, !1064, !1064}
!1891 = !{!1892, !1893, !1894, !1895, !1898, !1900}
!1892 = !DILocalVariable(name: "fs", arg: 1, scope: !1888, file: !1, line: 472, type: !427)
!1893 = !DILocalVariable(name: "var", arg: 2, scope: !1888, file: !1, line: 472, type: !1064)
!1894 = !DILocalVariable(name: "ex", arg: 3, scope: !1888, file: !1, line: 472, type: !1064)
!1895 = !DILocalVariable(name: "e", scope: !1896, file: !1, line: 480, type: !93)
!1896 = distinct !DILexicalBlock(scope: !1897, file: !1, line: 479, column: 18)
!1897 = distinct !DILexicalBlock(scope: !1888, file: !1, line: 473, column: 19)
!1898 = !DILocalVariable(name: "e", scope: !1899, file: !1, line: 485, type: !93)
!1899 = distinct !DILexicalBlock(scope: !1897, file: !1, line: 484, column: 19)
!1900 = !DILocalVariable(name: "e", scope: !1901, file: !1, line: 490, type: !93)
!1901 = distinct !DILexicalBlock(scope: !1897, file: !1, line: 489, column: 20)
!1902 = !DILocation(line: 472, column: 32, scope: !1888)
!1903 = !DILocation(line: 472, column: 45, scope: !1888)
!1904 = !DILocation(line: 472, column: 59, scope: !1888)
!1905 = !DILocation(line: 473, column: 16, scope: !1888)
!1906 = !DILocation(line: 473, column: 3, scope: !1888)
!1907 = !DILocation(line: 223, column: 33, scope: !1282, inlinedAt: !1908)
!1908 = distinct !DILocation(line: 475, column: 7, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1897, file: !1, line: 474, column: 18)
!1910 = !DILocation(line: 223, column: 46, scope: !1282, inlinedAt: !1908)
!1911 = !DILocation(line: 224, column: 10, scope: !1289, inlinedAt: !1908)
!1912 = !DILocation(line: 224, column: 12, scope: !1289, inlinedAt: !1908)
!1913 = !DILocation(line: 224, column: 7, scope: !1282, inlinedAt: !1908)
!1914 = !DILocation(line: 225, column: 20, scope: !1289, inlinedAt: !1908)
!1915 = !DILocation(line: 225, column: 24, scope: !1289, inlinedAt: !1908)
!1916 = !DILocation(line: 215, column: 33, scope: !1207, inlinedAt: !1917)
!1917 = distinct !DILocation(line: 225, column: 5, scope: !1289, inlinedAt: !1908)
!1918 = !DILocation(line: 215, column: 41, scope: !1207, inlinedAt: !1917)
!1919 = !DILocation(line: 216, column: 8, scope: !1214, inlinedAt: !1917)
!1920 = !DILocation(line: 216, column: 17, scope: !1214, inlinedAt: !1917)
!1921 = !DILocation(line: 216, column: 31, scope: !1214, inlinedAt: !1917)
!1922 = !DILocation(line: 216, column: 27, scope: !1214, inlinedAt: !1917)
!1923 = !DILocation(line: 216, column: 24, scope: !1214, inlinedAt: !1917)
!1924 = !DILocation(line: 216, column: 7, scope: !1207, inlinedAt: !1917)
!1925 = !DILocation(line: 217, column: 9, scope: !1221, inlinedAt: !1917)
!1926 = !DILocation(line: 217, column: 16, scope: !1221, inlinedAt: !1917)
!1927 = !DILocation(line: 219, column: 3, scope: !1221, inlinedAt: !1917)
!1928 = !DILocation(line: 220, column: 1, scope: !1207, inlinedAt: !1917)
!1929 = !DILocation(line: 225, column: 5, scope: !1289, inlinedAt: !1908)
!1930 = !DILocation(line: 226, column: 1, scope: !1282, inlinedAt: !1908)
!1931 = !DILocation(line: 476, column: 28, scope: !1909)
!1932 = !DILocation(line: 476, column: 32, scope: !1909)
!1933 = !DILocation(line: 476, column: 7, scope: !1909)
!1934 = !DILocation(line: 477, column: 7, scope: !1909)
!1935 = !DILocation(line: 422, column: 33, scope: !1724, inlinedAt: !1936)
!1936 = distinct !DILocation(line: 480, column: 15, scope: !1896)
!1937 = !DILocation(line: 422, column: 46, scope: !1724, inlinedAt: !1936)
!1938 = !DILocation(line: 423, column: 3, scope: !1724, inlinedAt: !1936)
!1939 = !DILocation(line: 424, column: 10, scope: !1734, inlinedAt: !1936)
!1940 = !DILocation(line: 424, column: 12, scope: !1734, inlinedAt: !1936)
!1941 = !DILocation(line: 424, column: 7, scope: !1724, inlinedAt: !1936)
!1942 = !DILocation(line: 432, column: 13, scope: !1724, inlinedAt: !1936)
!1943 = !DILocation(line: 432, column: 17, scope: !1724, inlinedAt: !1936)
!1944 = !DILocation(line: 425, column: 10, scope: !1740, inlinedAt: !1936)
!1945 = !DILocation(line: 0, scope: !1740, inlinedAt: !1936)
!1946 = !DILocation(line: 425, column: 9, scope: !1741, inlinedAt: !1936)
!1947 = !DILocation(line: 426, column: 28, scope: !1745, inlinedAt: !1936)
!1948 = !DILocation(line: 426, column: 24, scope: !1745, inlinedAt: !1936)
!1949 = !DILocation(line: 426, column: 21, scope: !1745, inlinedAt: !1936)
!1950 = !DILocation(line: 426, column: 9, scope: !1741, inlinedAt: !1936)
!1951 = !DILocation(line: 427, column: 7, scope: !1750, inlinedAt: !1936)
!1952 = !DILocation(line: 428, column: 7, scope: !1750, inlinedAt: !1936)
!1953 = !DILocation(line: 431, column: 3, scope: !1724, inlinedAt: !1936)
!1954 = !DILocation(line: 432, column: 3, scope: !1724, inlinedAt: !1936)
!1955 = !DILocation(line: 0, scope: !1896)
!1956 = !DILocation(line: 433, column: 1, scope: !1724, inlinedAt: !1936)
!1957 = !DILocation(line: 480, column: 11, scope: !1896)
!1958 = !DILocation(line: 481, column: 45, scope: !1896)
!1959 = !DILocation(line: 481, column: 49, scope: !1896)
!1960 = !DILocation(line: 804, column: 30, scope: !573, inlinedAt: !1961)
!1961 = distinct !DILocation(line: 481, column: 7, scope: !1896)
!1962 = !DILocation(line: 804, column: 41, scope: !573, inlinedAt: !1961)
!1963 = !DILocation(line: 804, column: 48, scope: !573, inlinedAt: !1961)
!1964 = !DILocation(line: 804, column: 55, scope: !573, inlinedAt: !1961)
!1965 = !DILocation(line: 804, column: 62, scope: !573, inlinedAt: !1961)
!1966 = !DILocation(line: 808, column: 24, scope: !573, inlinedAt: !1961)
!1967 = !DILocation(line: 808, column: 52, scope: !573, inlinedAt: !1961)
!1968 = !DILocation(line: 808, column: 56, scope: !573, inlinedAt: !1961)
!1969 = !DILocation(line: 808, column: 10, scope: !573, inlinedAt: !1961)
!1970 = !DILocation(line: 422, column: 33, scope: !1724, inlinedAt: !1971)
!1971 = distinct !DILocation(line: 485, column: 15, scope: !1899)
!1972 = !DILocation(line: 422, column: 46, scope: !1724, inlinedAt: !1971)
!1973 = !DILocation(line: 423, column: 3, scope: !1724, inlinedAt: !1971)
!1974 = !DILocation(line: 424, column: 10, scope: !1734, inlinedAt: !1971)
!1975 = !DILocation(line: 424, column: 12, scope: !1734, inlinedAt: !1971)
!1976 = !DILocation(line: 424, column: 7, scope: !1724, inlinedAt: !1971)
!1977 = !DILocation(line: 432, column: 13, scope: !1724, inlinedAt: !1971)
!1978 = !DILocation(line: 432, column: 17, scope: !1724, inlinedAt: !1971)
!1979 = !DILocation(line: 425, column: 10, scope: !1740, inlinedAt: !1971)
!1980 = !DILocation(line: 0, scope: !1740, inlinedAt: !1971)
!1981 = !DILocation(line: 425, column: 9, scope: !1741, inlinedAt: !1971)
!1982 = !DILocation(line: 426, column: 28, scope: !1745, inlinedAt: !1971)
!1983 = !DILocation(line: 426, column: 24, scope: !1745, inlinedAt: !1971)
!1984 = !DILocation(line: 426, column: 21, scope: !1745, inlinedAt: !1971)
!1985 = !DILocation(line: 426, column: 9, scope: !1741, inlinedAt: !1971)
!1986 = !DILocation(line: 427, column: 7, scope: !1750, inlinedAt: !1971)
!1987 = !DILocation(line: 428, column: 7, scope: !1750, inlinedAt: !1971)
!1988 = !DILocation(line: 431, column: 3, scope: !1724, inlinedAt: !1971)
!1989 = !DILocation(line: 432, column: 3, scope: !1724, inlinedAt: !1971)
!1990 = !DILocation(line: 0, scope: !1899)
!1991 = !DILocation(line: 433, column: 1, scope: !1724, inlinedAt: !1971)
!1992 = !DILocation(line: 485, column: 11, scope: !1899)
!1993 = !DILocation(line: 486, column: 46, scope: !1899)
!1994 = !DILocation(line: 486, column: 50, scope: !1899)
!1995 = !DILocation(line: 812, column: 30, scope: !621, inlinedAt: !1996)
!1996 = distinct !DILocation(line: 486, column: 7, scope: !1899)
!1997 = !DILocation(line: 812, column: 41, scope: !621, inlinedAt: !1996)
!1998 = !DILocation(line: 812, column: 48, scope: !621, inlinedAt: !1996)
!1999 = !DILocation(line: 812, column: 64, scope: !621, inlinedAt: !1996)
!2000 = !DILocation(line: 815, column: 24, scope: !621, inlinedAt: !1996)
!2001 = !DILocation(line: 815, column: 50, scope: !621, inlinedAt: !1996)
!2002 = !DILocation(line: 815, column: 54, scope: !621, inlinedAt: !1996)
!2003 = !DILocation(line: 815, column: 10, scope: !621, inlinedAt: !1996)
!2004 = !DILocation(line: 490, column: 15, scope: !1901)
!2005 = !DILocation(line: 490, column: 11, scope: !1901)
!2006 = !DILocation(line: 491, column: 42, scope: !1901)
!2007 = !DILocation(line: 491, column: 44, scope: !1901)
!2008 = !DILocation(line: 491, column: 46, scope: !1901)
!2009 = !DILocation(line: 491, column: 61, scope: !1901)
!2010 = !DILocation(line: 804, column: 30, scope: !573, inlinedAt: !2011)
!2011 = distinct !DILocation(line: 491, column: 7, scope: !1901)
!2012 = !DILocation(line: 804, column: 41, scope: !573, inlinedAt: !2011)
!2013 = !DILocation(line: 804, column: 48, scope: !573, inlinedAt: !2011)
!2014 = !DILocation(line: 804, column: 55, scope: !573, inlinedAt: !2011)
!2015 = !DILocation(line: 804, column: 62, scope: !573, inlinedAt: !2011)
!2016 = !DILocation(line: 808, column: 24, scope: !573, inlinedAt: !2011)
!2017 = !DILocation(line: 808, column: 52, scope: !573, inlinedAt: !2011)
!2018 = !DILocation(line: 808, column: 56, scope: !573, inlinedAt: !2011)
!2019 = !DILocation(line: 808, column: 10, scope: !573, inlinedAt: !2011)
!2020 = !DILocation(line: 224, column: 10, scope: !1289, inlinedAt: !2021)
!2021 = distinct !DILocation(line: 499, column: 3, scope: !1888)
!2022 = !DILocation(line: 223, column: 33, scope: !1282, inlinedAt: !2021)
!2023 = !DILocation(line: 223, column: 46, scope: !1282, inlinedAt: !2021)
!2024 = !DILocation(line: 224, column: 12, scope: !1289, inlinedAt: !2021)
!2025 = !DILocation(line: 224, column: 7, scope: !1282, inlinedAt: !2021)
!2026 = !DILocation(line: 225, column: 20, scope: !1289, inlinedAt: !2021)
!2027 = !DILocation(line: 225, column: 24, scope: !1289, inlinedAt: !2021)
!2028 = !DILocation(line: 215, column: 33, scope: !1207, inlinedAt: !2029)
!2029 = distinct !DILocation(line: 225, column: 5, scope: !1289, inlinedAt: !2021)
!2030 = !DILocation(line: 215, column: 41, scope: !1207, inlinedAt: !2029)
!2031 = !DILocation(line: 216, column: 8, scope: !1214, inlinedAt: !2029)
!2032 = !DILocation(line: 216, column: 17, scope: !1214, inlinedAt: !2029)
!2033 = !DILocation(line: 216, column: 31, scope: !1214, inlinedAt: !2029)
!2034 = !DILocation(line: 216, column: 27, scope: !1214, inlinedAt: !2029)
!2035 = !DILocation(line: 216, column: 24, scope: !1214, inlinedAt: !2029)
!2036 = !DILocation(line: 216, column: 7, scope: !1207, inlinedAt: !2029)
!2037 = !DILocation(line: 217, column: 9, scope: !1221, inlinedAt: !2029)
!2038 = !DILocation(line: 217, column: 16, scope: !1221, inlinedAt: !2029)
!2039 = !DILocation(line: 219, column: 3, scope: !1221, inlinedAt: !2029)
!2040 = !DILocation(line: 220, column: 1, scope: !1207, inlinedAt: !2029)
!2041 = !DILocation(line: 225, column: 5, scope: !1289, inlinedAt: !2021)
!2042 = !DILocation(line: 226, column: 1, scope: !1282, inlinedAt: !2021)
!2043 = !DILocation(line: 500, column: 1, scope: !1888)
!2044 = !DILocation(line: 0, scope: !1909)
!2045 = distinct !DISubprogram(name: "luaK_self", scope: !1, file: !1, line: 503, type: !1889, isLocal: false, isDefinition: true, scopeLine: 503, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2046)
!2046 = !{!2047, !2048, !2049, !2050}
!2047 = !DILocalVariable(name: "fs", arg: 1, scope: !2045, file: !1, line: 503, type: !427)
!2048 = !DILocalVariable(name: "e", arg: 2, scope: !2045, file: !1, line: 503, type: !1064)
!2049 = !DILocalVariable(name: "key", arg: 3, scope: !2045, file: !1, line: 503, type: !1064)
!2050 = !DILocalVariable(name: "func", scope: !2045, file: !1, line: 504, type: !93)
!2051 = !DILocation(line: 503, column: 28, scope: !2045)
!2052 = !DILocation(line: 503, column: 41, scope: !2045)
!2053 = !DILocation(line: 503, column: 53, scope: !2045)
!2054 = !DILocation(line: 422, column: 33, scope: !1724, inlinedAt: !2055)
!2055 = distinct !DILocation(line: 505, column: 3, scope: !2045)
!2056 = !DILocation(line: 422, column: 46, scope: !1724, inlinedAt: !2055)
!2057 = !DILocation(line: 423, column: 3, scope: !1724, inlinedAt: !2055)
!2058 = !DILocation(line: 424, column: 10, scope: !1734, inlinedAt: !2055)
!2059 = !DILocation(line: 424, column: 12, scope: !1734, inlinedAt: !2055)
!2060 = !DILocation(line: 424, column: 7, scope: !1724, inlinedAt: !2055)
!2061 = !DILocation(line: 425, column: 10, scope: !1740, inlinedAt: !2055)
!2062 = !DILocation(line: 0, scope: !1740, inlinedAt: !2055)
!2063 = !DILocation(line: 425, column: 9, scope: !1741, inlinedAt: !2055)
!2064 = !DILocation(line: 426, column: 28, scope: !1745, inlinedAt: !2055)
!2065 = !DILocation(line: 426, column: 24, scope: !1745, inlinedAt: !2055)
!2066 = !DILocation(line: 426, column: 21, scope: !1745, inlinedAt: !2055)
!2067 = !DILocation(line: 426, column: 9, scope: !1741, inlinedAt: !2055)
!2068 = !DILocation(line: 427, column: 7, scope: !1750, inlinedAt: !2055)
!2069 = !DILocation(line: 428, column: 7, scope: !1750, inlinedAt: !2055)
!2070 = !DILocation(line: 431, column: 3, scope: !1724, inlinedAt: !2055)
!2071 = !DILocation(line: 432, column: 3, scope: !1724, inlinedAt: !2055)
!2072 = !DILocation(line: 0, scope: !2045)
!2073 = !DILocation(line: 433, column: 1, scope: !1724, inlinedAt: !2055)
!2074 = !DILocation(line: 223, column: 33, scope: !1282, inlinedAt: !2075)
!2075 = distinct !DILocation(line: 506, column: 3, scope: !2045)
!2076 = !DILocation(line: 223, column: 46, scope: !1282, inlinedAt: !2075)
!2077 = !DILocation(line: 224, column: 10, scope: !1289, inlinedAt: !2075)
!2078 = !DILocation(line: 224, column: 12, scope: !1289, inlinedAt: !2075)
!2079 = !DILocation(line: 224, column: 7, scope: !1282, inlinedAt: !2075)
!2080 = !DILocation(line: 225, column: 20, scope: !1289, inlinedAt: !2075)
!2081 = !DILocation(line: 225, column: 24, scope: !1289, inlinedAt: !2075)
!2082 = !DILocation(line: 215, column: 33, scope: !1207, inlinedAt: !2083)
!2083 = distinct !DILocation(line: 225, column: 5, scope: !1289, inlinedAt: !2075)
!2084 = !DILocation(line: 215, column: 41, scope: !1207, inlinedAt: !2083)
!2085 = !DILocation(line: 216, column: 8, scope: !1214, inlinedAt: !2083)
!2086 = !DILocation(line: 216, column: 17, scope: !1214, inlinedAt: !2083)
!2087 = !DILocation(line: 216, column: 31, scope: !1214, inlinedAt: !2083)
!2088 = !DILocation(line: 216, column: 27, scope: !1214, inlinedAt: !2083)
!2089 = !DILocation(line: 216, column: 24, scope: !1214, inlinedAt: !2083)
!2090 = !DILocation(line: 216, column: 7, scope: !1207, inlinedAt: !2083)
!2091 = !DILocation(line: 217, column: 9, scope: !1221, inlinedAt: !2083)
!2092 = !DILocation(line: 217, column: 16, scope: !1221, inlinedAt: !2083)
!2093 = !DILocation(line: 219, column: 3, scope: !1221, inlinedAt: !2083)
!2094 = !DILocation(line: 220, column: 1, scope: !1207, inlinedAt: !2083)
!2095 = !DILocation(line: 225, column: 5, scope: !1289, inlinedAt: !2075)
!2096 = !DILocation(line: 226, column: 1, scope: !1282, inlinedAt: !2075)
!2097 = !DILocation(line: 507, column: 14, scope: !2045)
!2098 = !DILocation(line: 504, column: 7, scope: !2045)
!2099 = !DILocation(line: 209, column: 35, scope: !932, inlinedAt: !2100)
!2100 = distinct !DILocation(line: 508, column: 3, scope: !2045)
!2101 = !DILocation(line: 209, column: 43, scope: !932, inlinedAt: !2100)
!2102 = !DILocation(line: 199, column: 34, scope: !902, inlinedAt: !2103)
!2103 = distinct !DILocation(line: 210, column: 3, scope: !932, inlinedAt: !2100)
!2104 = !DILocation(line: 199, column: 42, scope: !902, inlinedAt: !2103)
!2105 = !DILocation(line: 200, column: 30, scope: !902, inlinedAt: !2103)
!2106 = !DILocation(line: 200, column: 7, scope: !902, inlinedAt: !2103)
!2107 = !DILocation(line: 201, column: 22, scope: !914, inlinedAt: !2103)
!2108 = !DILocation(line: 201, column: 25, scope: !914, inlinedAt: !2103)
!2109 = !DILocation(line: 201, column: 18, scope: !914, inlinedAt: !2103)
!2110 = !DILocation(line: 201, column: 16, scope: !914, inlinedAt: !2103)
!2111 = !DILocation(line: 201, column: 7, scope: !902, inlinedAt: !2103)
!2112 = !DILocation(line: 202, column: 18, scope: !921, inlinedAt: !2103)
!2113 = !DILocation(line: 202, column: 9, scope: !922, inlinedAt: !2103)
!2114 = !DILocation(line: 203, column: 28, scope: !921, inlinedAt: !2103)
!2115 = !DILocation(line: 203, column: 7, scope: !921, inlinedAt: !2103)
!2116 = !DILocation(line: 204, column: 9, scope: !922, inlinedAt: !2103)
!2117 = !DILocation(line: 204, column: 12, scope: !922, inlinedAt: !2103)
!2118 = !DILocation(line: 211, column: 15, scope: !932, inlinedAt: !2100)
!2119 = !DILocation(line: 204, column: 27, scope: !922, inlinedAt: !2103)
!2120 = !DILocation(line: 204, column: 25, scope: !922, inlinedAt: !2103)
!2121 = !DILocation(line: 205, column: 3, scope: !922, inlinedAt: !2103)
!2122 = !DILocation(line: 206, column: 1, scope: !902, inlinedAt: !2103)
!2123 = !DILocation(line: 212, column: 1, scope: !932, inlinedAt: !2100)
!2124 = !DILocation(line: 509, column: 38, scope: !2045)
!2125 = !DILocation(line: 509, column: 42, scope: !2045)
!2126 = !DILocation(line: 509, column: 48, scope: !2045)
!2127 = !DILocation(line: 804, column: 30, scope: !573, inlinedAt: !2128)
!2128 = distinct !DILocation(line: 509, column: 3, scope: !2045)
!2129 = !DILocation(line: 804, column: 41, scope: !573, inlinedAt: !2128)
!2130 = !DILocation(line: 804, column: 48, scope: !573, inlinedAt: !2128)
!2131 = !DILocation(line: 804, column: 55, scope: !573, inlinedAt: !2128)
!2132 = !DILocation(line: 804, column: 62, scope: !573, inlinedAt: !2128)
!2133 = !DILocation(line: 808, column: 24, scope: !573, inlinedAt: !2128)
!2134 = !DILocation(line: 808, column: 52, scope: !573, inlinedAt: !2128)
!2135 = !DILocation(line: 808, column: 56, scope: !573, inlinedAt: !2128)
!2136 = !DILocation(line: 808, column: 10, scope: !573, inlinedAt: !2128)
!2137 = !DILocation(line: 808, column: 3, scope: !573, inlinedAt: !2128)
!2138 = !DILocation(line: 223, column: 33, scope: !1282, inlinedAt: !2139)
!2139 = distinct !DILocation(line: 510, column: 3, scope: !2045)
!2140 = !DILocation(line: 223, column: 46, scope: !1282, inlinedAt: !2139)
!2141 = !DILocation(line: 224, column: 10, scope: !1289, inlinedAt: !2139)
!2142 = !DILocation(line: 224, column: 12, scope: !1289, inlinedAt: !2139)
!2143 = !DILocation(line: 224, column: 7, scope: !1282, inlinedAt: !2139)
!2144 = !DILocation(line: 225, column: 20, scope: !1289, inlinedAt: !2139)
!2145 = !DILocation(line: 225, column: 24, scope: !1289, inlinedAt: !2139)
!2146 = !DILocation(line: 215, column: 33, scope: !1207, inlinedAt: !2147)
!2147 = distinct !DILocation(line: 225, column: 5, scope: !1289, inlinedAt: !2139)
!2148 = !DILocation(line: 215, column: 41, scope: !1207, inlinedAt: !2147)
!2149 = !DILocation(line: 216, column: 8, scope: !1214, inlinedAt: !2147)
!2150 = !DILocation(line: 216, column: 17, scope: !1214, inlinedAt: !2147)
!2151 = !DILocation(line: 216, column: 31, scope: !1214, inlinedAt: !2147)
!2152 = !DILocation(line: 216, column: 27, scope: !1214, inlinedAt: !2147)
!2153 = !DILocation(line: 216, column: 24, scope: !1214, inlinedAt: !2147)
!2154 = !DILocation(line: 216, column: 7, scope: !1207, inlinedAt: !2147)
!2155 = !DILocation(line: 217, column: 16, scope: !1221, inlinedAt: !2147)
!2156 = !DILocation(line: 219, column: 3, scope: !1221, inlinedAt: !2147)
!2157 = !DILocation(line: 220, column: 1, scope: !1207, inlinedAt: !2147)
!2158 = !DILocation(line: 225, column: 5, scope: !1289, inlinedAt: !2139)
!2159 = !DILocation(line: 226, column: 1, scope: !1282, inlinedAt: !2139)
!2160 = !DILocation(line: 511, column: 15, scope: !2045)
!2161 = !DILocation(line: 512, column: 8, scope: !2045)
!2162 = !DILocation(line: 513, column: 1, scope: !2045)
!2163 = distinct !DISubprogram(name: "luaK_goiftrue", scope: !1, file: !1, line: 539, type: !1132, isLocal: false, isDefinition: true, scopeLine: 539, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2164)
!2164 = !{!2165, !2166, !2167}
!2165 = !DILocalVariable(name: "fs", arg: 1, scope: !2163, file: !1, line: 539, type: !427)
!2166 = !DILocalVariable(name: "e", arg: 2, scope: !2163, file: !1, line: 539, type: !1064)
!2167 = !DILocalVariable(name: "pc", scope: !2163, file: !1, line: 540, type: !93)
!2168 = !DILocation(line: 539, column: 32, scope: !2163)
!2169 = !DILocation(line: 539, column: 45, scope: !2163)
!2170 = !DILocation(line: 541, column: 3, scope: !2163)
!2171 = !DILocation(line: 542, column: 14, scope: !2163)
!2172 = !DILocation(line: 542, column: 3, scope: !2163)
!2173 = !DILocalVariable(name: "fs", arg: 1, scope: !2174, file: !1, line: 516, type: !427)
!2174 = distinct !DISubprogram(name: "invertjump", scope: !1, file: !1, line: 516, type: !1132, isLocal: true, isDefinition: true, scopeLine: 516, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2175)
!2175 = !{!2173, !2176, !2177}
!2176 = !DILocalVariable(name: "e", arg: 2, scope: !2174, file: !1, line: 516, type: !1064)
!2177 = !DILocalVariable(name: "pc", scope: !2174, file: !1, line: 517, type: !385)
!2178 = !DILocation(line: 516, column: 36, scope: !2174, inlinedAt: !2179)
!2179 = distinct !DILocation(line: 548, column: 7, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2181, file: !1, line: 547, column: 16)
!2181 = distinct !DILexicalBlock(scope: !2163, file: !1, line: 542, column: 17)
!2182 = !DILocation(line: 516, column: 49, scope: !2174, inlinedAt: !2179)
!2183 = !DILocation(line: 517, column: 43, scope: !2174, inlinedAt: !2179)
!2184 = !DILocation(line: 517, column: 47, scope: !2174, inlinedAt: !2179)
!2185 = !DILocation(line: 109, column: 48, scope: !827, inlinedAt: !2186)
!2186 = distinct !DILocation(line: 517, column: 21, scope: !2174, inlinedAt: !2179)
!2187 = !DILocation(line: 109, column: 56, scope: !827, inlinedAt: !2186)
!2188 = !DILocation(line: 110, column: 26, scope: !827, inlinedAt: !2186)
!2189 = !DILocation(line: 110, column: 29, scope: !827, inlinedAt: !2186)
!2190 = !DILocation(line: 110, column: 22, scope: !827, inlinedAt: !2186)
!2191 = !DILocation(line: 110, column: 16, scope: !827, inlinedAt: !2186)
!2192 = !DILocation(line: 111, column: 10, scope: !838, inlinedAt: !2186)
!2193 = !DILocation(line: 111, column: 15, scope: !838, inlinedAt: !2186)
!2194 = !DILocation(line: 111, column: 18, scope: !838, inlinedAt: !2186)
!2195 = !DILocation(line: 111, column: 7, scope: !827, inlinedAt: !2186)
!2196 = !DILocation(line: 112, column: 5, scope: !838, inlinedAt: !2186)
!2197 = !DILocation(line: 114, column: 5, scope: !838, inlinedAt: !2186)
!2198 = !DILocation(line: 520, column: 3, scope: !2174, inlinedAt: !2179)
!2199 = !DILocation(line: 0, scope: !838, inlinedAt: !2186)
!2200 = !DILocation(line: 115, column: 1, scope: !827, inlinedAt: !2186)
!2201 = !DILocation(line: 517, column: 16, scope: !2174, inlinedAt: !2179)
!2202 = !DILocation(line: 521, column: 1, scope: !2174, inlinedAt: !2179)
!2203 = !DILocation(line: 549, column: 19, scope: !2180)
!2204 = !DILocation(line: 540, column: 7, scope: !2163)
!2205 = !DILocation(line: 550, column: 7, scope: !2180)
!2206 = !DILocation(line: 553, column: 12, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2181, file: !1, line: 552, column: 14)
!2208 = !DILocation(line: 554, column: 7, scope: !2207)
!2209 = !DILocation(line: 0, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2181, file: !1, line: 543, column: 38)
!2211 = !DILocation(line: 557, column: 23, scope: !2163)
!2212 = !DILocation(line: 557, column: 3, scope: !2163)
!2213 = !DILocation(line: 558, column: 27, scope: !2163)
!2214 = !DILocation(line: 179, column: 35, scope: !765, inlinedAt: !2215)
!2215 = distinct !DILocation(line: 558, column: 3, scope: !2163)
!2216 = !DILocation(line: 179, column: 43, scope: !765, inlinedAt: !2215)
!2217 = !DILocation(line: 94, column: 31, scope: !744, inlinedAt: !2218)
!2218 = distinct !DILocation(line: 180, column: 3, scope: !765, inlinedAt: !2215)
!2219 = !DILocation(line: 95, column: 24, scope: !744, inlinedAt: !2218)
!2220 = !DILocation(line: 95, column: 7, scope: !744, inlinedAt: !2218)
!2221 = !DILocation(line: 95, column: 18, scope: !744, inlinedAt: !2218)
!2222 = !DILocation(line: 96, column: 3, scope: !744, inlinedAt: !2218)
!2223 = !DILocation(line: 181, column: 24, scope: !765, inlinedAt: !2215)
!2224 = !DILocation(line: 181, column: 3, scope: !765, inlinedAt: !2215)
!2225 = !DILocation(line: 182, column: 1, scope: !765, inlinedAt: !2215)
!2226 = !DILocation(line: 559, column: 8, scope: !2163)
!2227 = !DILocation(line: 560, column: 1, scope: !2163)
!2228 = distinct !DISubprogram(name: "jumponcond", scope: !1, file: !1, line: 524, type: !2229, isLocal: true, isDefinition: true, scopeLine: 524, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2231)
!2229 = !DISubroutineType(types: !2230)
!2230 = !{!93, !427, !1064, !93}
!2231 = !{!2232, !2233, !2234, !2235}
!2232 = !DILocalVariable(name: "fs", arg: 1, scope: !2228, file: !1, line: 524, type: !427)
!2233 = !DILocalVariable(name: "e", arg: 2, scope: !2228, file: !1, line: 524, type: !1064)
!2234 = !DILocalVariable(name: "cond", arg: 3, scope: !2228, file: !1, line: 524, type: !93)
!2235 = !DILocalVariable(name: "ie", scope: !2236, file: !1, line: 526, type: !90)
!2236 = distinct !DILexicalBlock(scope: !2237, file: !1, line: 525, column: 27)
!2237 = distinct !DILexicalBlock(scope: !2228, file: !1, line: 525, column: 7)
!2238 = !DILocation(line: 524, column: 35, scope: !2228)
!2239 = !DILocation(line: 524, column: 48, scope: !2228)
!2240 = !DILocation(line: 524, column: 55, scope: !2228)
!2241 = !DILocation(line: 525, column: 10, scope: !2237)
!2242 = !DILocation(line: 525, column: 12, scope: !2237)
!2243 = !DILocation(line: 525, column: 7, scope: !2228)
!2244 = !DILocation(line: 526, column: 22, scope: !2236)
!2245 = !DILocation(line: 526, column: 17, scope: !2236)
!2246 = !DILocation(line: 527, column: 9, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2236, file: !1, line: 527, column: 9)
!2248 = !DILocation(line: 527, column: 24, scope: !2247)
!2249 = !DILocation(line: 527, column: 9, scope: !2236)
!2250 = !DILocation(line: 532, column: 3, scope: !2237)
!2251 = !DILocalVariable(name: "fs", arg: 1, scope: !2252, file: !1, line: 382, type: !427)
!2252 = distinct !DISubprogram(name: "discharge2anyreg", scope: !1, file: !1, line: 382, type: !1132, isLocal: true, isDefinition: true, scopeLine: 382, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2253)
!2253 = !{!2251, !2254}
!2254 = !DILocalVariable(name: "e", arg: 2, scope: !2252, file: !1, line: 382, type: !1064)
!2255 = !DILocation(line: 382, column: 42, scope: !2252, inlinedAt: !2256)
!2256 = distinct !DILocation(line: 533, column: 3, scope: !2228)
!2257 = !DILocation(line: 382, column: 55, scope: !2252, inlinedAt: !2256)
!2258 = !DILocation(line: 383, column: 7, scope: !2252, inlinedAt: !2256)
!2259 = !DILocation(line: 528, column: 11, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2247, file: !1, line: 527, column: 35)
!2261 = !DILocation(line: 528, column: 13, scope: !2260)
!2262 = !DILocation(line: 529, column: 36, scope: !2260)
!2263 = !DILocation(line: 529, column: 53, scope: !2260)
!2264 = !DILocalVariable(name: "fs", arg: 1, scope: !2265, file: !1, line: 74, type: !427)
!2265 = distinct !DISubprogram(name: "condjump", scope: !1, file: !1, line: 74, type: !574, isLocal: true, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2266)
!2266 = !{!2264, !2267, !2268, !2269, !2270}
!2267 = !DILocalVariable(name: "op", arg: 2, scope: !2265, file: !1, line: 74, type: !89)
!2268 = !DILocalVariable(name: "A", arg: 3, scope: !2265, file: !1, line: 74, type: !93)
!2269 = !DILocalVariable(name: "B", arg: 4, scope: !2265, file: !1, line: 74, type: !93)
!2270 = !DILocalVariable(name: "C", arg: 5, scope: !2265, file: !1, line: 74, type: !93)
!2271 = !DILocation(line: 74, column: 33, scope: !2265, inlinedAt: !2272)
!2272 = distinct !DILocation(line: 529, column: 14, scope: !2260)
!2273 = !DILocation(line: 74, column: 44, scope: !2265, inlinedAt: !2272)
!2274 = !DILocation(line: 74, column: 52, scope: !2265, inlinedAt: !2272)
!2275 = !DILocation(line: 74, column: 59, scope: !2265, inlinedAt: !2272)
!2276 = !DILocation(line: 74, column: 66, scope: !2265, inlinedAt: !2272)
!2277 = !DILocation(line: 804, column: 30, scope: !573, inlinedAt: !2278)
!2278 = distinct !DILocation(line: 75, column: 3, scope: !2265, inlinedAt: !2272)
!2279 = !DILocation(line: 804, column: 41, scope: !573, inlinedAt: !2278)
!2280 = !DILocation(line: 804, column: 48, scope: !573, inlinedAt: !2278)
!2281 = !DILocation(line: 804, column: 55, scope: !573, inlinedAt: !2278)
!2282 = !DILocation(line: 804, column: 62, scope: !573, inlinedAt: !2278)
!2283 = !DILocation(line: 808, column: 24, scope: !573, inlinedAt: !2278)
!2284 = !DILocation(line: 808, column: 52, scope: !573, inlinedAt: !2278)
!2285 = !DILocation(line: 808, column: 56, scope: !573, inlinedAt: !2278)
!2286 = !DILocation(line: 808, column: 10, scope: !573, inlinedAt: !2278)
!2287 = !DILocation(line: 808, column: 3, scope: !573, inlinedAt: !2278)
!2288 = !DILocation(line: 59, column: 27, scope: !607, inlinedAt: !2289)
!2289 = distinct !DILocation(line: 76, column: 10, scope: !2265, inlinedAt: !2272)
!2290 = !DILocation(line: 60, column: 17, scope: !607, inlinedAt: !2289)
!2291 = !DILocation(line: 60, column: 7, scope: !607, inlinedAt: !2289)
!2292 = !DILocation(line: 61, column: 3, scope: !607, inlinedAt: !2289)
!2293 = !DILocation(line: 62, column: 11, scope: !607, inlinedAt: !2289)
!2294 = !DILocation(line: 812, column: 30, scope: !621, inlinedAt: !2295)
!2295 = distinct !DILocation(line: 63, column: 7, scope: !607, inlinedAt: !2289)
!2296 = !DILocation(line: 812, column: 41, scope: !621, inlinedAt: !2295)
!2297 = !DILocation(line: 812, column: 48, scope: !621, inlinedAt: !2295)
!2298 = !DILocation(line: 812, column: 64, scope: !621, inlinedAt: !2295)
!2299 = !DILocation(line: 815, column: 50, scope: !621, inlinedAt: !2295)
!2300 = !DILocation(line: 815, column: 54, scope: !621, inlinedAt: !2295)
!2301 = !DILocation(line: 815, column: 10, scope: !621, inlinedAt: !2295)
!2302 = !DILocation(line: 815, column: 3, scope: !621, inlinedAt: !2295)
!2303 = !DILocation(line: 61, column: 7, scope: !607, inlinedAt: !2289)
!2304 = !DILocation(line: 63, column: 5, scope: !607, inlinedAt: !2289)
!2305 = !DILocation(line: 64, column: 3, scope: !607, inlinedAt: !2289)
!2306 = !DILocation(line: 65, column: 10, scope: !607, inlinedAt: !2289)
!2307 = !DILocation(line: 66, column: 1, scope: !607, inlinedAt: !2289)
!2308 = !DILocation(line: 65, column: 3, scope: !607, inlinedAt: !2289)
!2309 = !DILocation(line: 383, column: 12, scope: !2310, inlinedAt: !2256)
!2310 = distinct !DILexicalBlock(scope: !2252, file: !1, line: 383, column: 7)
!2311 = !DILocation(line: 387, column: 1, scope: !2252, inlinedAt: !2256)
!2312 = !DILocation(line: 223, column: 33, scope: !1282, inlinedAt: !2313)
!2313 = distinct !DILocation(line: 534, column: 3, scope: !2228)
!2314 = !DILocation(line: 223, column: 46, scope: !1282, inlinedAt: !2313)
!2315 = !DILocation(line: 224, column: 7, scope: !1282, inlinedAt: !2313)
!2316 = !DILocation(line: 209, column: 35, scope: !932, inlinedAt: !2317)
!2317 = distinct !DILocation(line: 384, column: 5, scope: !2318, inlinedAt: !2256)
!2318 = distinct !DILexicalBlock(scope: !2310, file: !1, line: 383, column: 26)
!2319 = !DILocation(line: 209, column: 43, scope: !932, inlinedAt: !2317)
!2320 = !DILocation(line: 199, column: 34, scope: !902, inlinedAt: !2321)
!2321 = distinct !DILocation(line: 210, column: 3, scope: !932, inlinedAt: !2317)
!2322 = !DILocation(line: 199, column: 42, scope: !902, inlinedAt: !2321)
!2323 = !DILocation(line: 200, column: 22, scope: !902, inlinedAt: !2321)
!2324 = !DILocation(line: 200, column: 30, scope: !902, inlinedAt: !2321)
!2325 = !DILocation(line: 200, column: 7, scope: !902, inlinedAt: !2321)
!2326 = !DILocation(line: 201, column: 22, scope: !914, inlinedAt: !2321)
!2327 = !DILocation(line: 201, column: 25, scope: !914, inlinedAt: !2321)
!2328 = !DILocation(line: 201, column: 18, scope: !914, inlinedAt: !2321)
!2329 = !DILocation(line: 201, column: 16, scope: !914, inlinedAt: !2321)
!2330 = !DILocation(line: 201, column: 7, scope: !902, inlinedAt: !2321)
!2331 = !DILocation(line: 202, column: 18, scope: !921, inlinedAt: !2321)
!2332 = !DILocation(line: 202, column: 9, scope: !922, inlinedAt: !2321)
!2333 = !DILocation(line: 203, column: 28, scope: !921, inlinedAt: !2321)
!2334 = !DILocation(line: 203, column: 7, scope: !921, inlinedAt: !2321)
!2335 = !DILocation(line: 204, column: 9, scope: !922, inlinedAt: !2321)
!2336 = !DILocation(line: 204, column: 12, scope: !922, inlinedAt: !2321)
!2337 = !DILocation(line: 211, column: 15, scope: !932, inlinedAt: !2317)
!2338 = !DILocation(line: 204, column: 27, scope: !922, inlinedAt: !2321)
!2339 = !DILocation(line: 204, column: 25, scope: !922, inlinedAt: !2321)
!2340 = !DILocation(line: 205, column: 3, scope: !922, inlinedAt: !2321)
!2341 = !DILocation(line: 206, column: 1, scope: !902, inlinedAt: !2321)
!2342 = !DILocation(line: 212, column: 1, scope: !932, inlinedAt: !2317)
!2343 = !DILocation(line: 385, column: 37, scope: !2318, inlinedAt: !2256)
!2344 = !DILocation(line: 385, column: 5, scope: !2318, inlinedAt: !2256)
!2345 = !DILocation(line: 386, column: 3, scope: !2318, inlinedAt: !2256)
!2346 = !DILocation(line: 224, column: 10, scope: !1289, inlinedAt: !2313)
!2347 = !DILocation(line: 535, column: 46, scope: !2228)
!2348 = !DILocation(line: 535, column: 50, scope: !2228)
!2349 = !DILocation(line: 225, column: 20, scope: !1289, inlinedAt: !2313)
!2350 = !DILocation(line: 225, column: 24, scope: !1289, inlinedAt: !2313)
!2351 = !DILocation(line: 215, column: 33, scope: !1207, inlinedAt: !2352)
!2352 = distinct !DILocation(line: 225, column: 5, scope: !1289, inlinedAt: !2313)
!2353 = !DILocation(line: 215, column: 41, scope: !1207, inlinedAt: !2352)
!2354 = !DILocation(line: 216, column: 8, scope: !1214, inlinedAt: !2352)
!2355 = !DILocation(line: 216, column: 17, scope: !1214, inlinedAt: !2352)
!2356 = !DILocation(line: 216, column: 31, scope: !1214, inlinedAt: !2352)
!2357 = !DILocation(line: 216, column: 27, scope: !1214, inlinedAt: !2352)
!2358 = !DILocation(line: 216, column: 24, scope: !1214, inlinedAt: !2352)
!2359 = !DILocation(line: 216, column: 7, scope: !1207, inlinedAt: !2352)
!2360 = !DILocation(line: 217, column: 9, scope: !1221, inlinedAt: !2352)
!2361 = !DILocation(line: 217, column: 16, scope: !1221, inlinedAt: !2352)
!2362 = !DILocation(line: 219, column: 3, scope: !1221, inlinedAt: !2352)
!2363 = !DILocation(line: 220, column: 1, scope: !1207, inlinedAt: !2352)
!2364 = !DILocation(line: 225, column: 5, scope: !1289, inlinedAt: !2313)
!2365 = !DILocation(line: 226, column: 1, scope: !1282, inlinedAt: !2313)
!2366 = !DILocation(line: 74, column: 33, scope: !2265, inlinedAt: !2367)
!2367 = distinct !DILocation(line: 535, column: 10, scope: !2228)
!2368 = !DILocation(line: 74, column: 44, scope: !2265, inlinedAt: !2367)
!2369 = !DILocation(line: 74, column: 52, scope: !2265, inlinedAt: !2367)
!2370 = !DILocation(line: 74, column: 59, scope: !2265, inlinedAt: !2367)
!2371 = !DILocation(line: 74, column: 66, scope: !2265, inlinedAt: !2367)
!2372 = !DILocation(line: 804, column: 30, scope: !573, inlinedAt: !2373)
!2373 = distinct !DILocation(line: 75, column: 3, scope: !2265, inlinedAt: !2367)
!2374 = !DILocation(line: 804, column: 41, scope: !573, inlinedAt: !2373)
!2375 = !DILocation(line: 804, column: 48, scope: !573, inlinedAt: !2373)
!2376 = !DILocation(line: 804, column: 55, scope: !573, inlinedAt: !2373)
!2377 = !DILocation(line: 804, column: 62, scope: !573, inlinedAt: !2373)
!2378 = !DILocation(line: 808, column: 24, scope: !573, inlinedAt: !2373)
!2379 = !DILocation(line: 808, column: 52, scope: !573, inlinedAt: !2373)
!2380 = !DILocation(line: 808, column: 56, scope: !573, inlinedAt: !2373)
!2381 = !DILocation(line: 808, column: 10, scope: !573, inlinedAt: !2373)
!2382 = !DILocation(line: 808, column: 3, scope: !573, inlinedAt: !2373)
!2383 = !DILocation(line: 59, column: 27, scope: !607, inlinedAt: !2384)
!2384 = distinct !DILocation(line: 76, column: 10, scope: !2265, inlinedAt: !2367)
!2385 = !DILocation(line: 60, column: 17, scope: !607, inlinedAt: !2384)
!2386 = !DILocation(line: 60, column: 7, scope: !607, inlinedAt: !2384)
!2387 = !DILocation(line: 61, column: 3, scope: !607, inlinedAt: !2384)
!2388 = !DILocation(line: 62, column: 11, scope: !607, inlinedAt: !2384)
!2389 = !DILocation(line: 812, column: 30, scope: !621, inlinedAt: !2390)
!2390 = distinct !DILocation(line: 63, column: 7, scope: !607, inlinedAt: !2384)
!2391 = !DILocation(line: 812, column: 41, scope: !621, inlinedAt: !2390)
!2392 = !DILocation(line: 812, column: 48, scope: !621, inlinedAt: !2390)
!2393 = !DILocation(line: 812, column: 64, scope: !621, inlinedAt: !2390)
!2394 = !DILocation(line: 815, column: 50, scope: !621, inlinedAt: !2390)
!2395 = !DILocation(line: 815, column: 54, scope: !621, inlinedAt: !2390)
!2396 = !DILocation(line: 815, column: 10, scope: !621, inlinedAt: !2390)
!2397 = !DILocation(line: 815, column: 3, scope: !621, inlinedAt: !2390)
!2398 = !DILocation(line: 61, column: 7, scope: !607, inlinedAt: !2384)
!2399 = !DILocation(line: 63, column: 5, scope: !607, inlinedAt: !2384)
!2400 = !DILocation(line: 64, column: 3, scope: !607, inlinedAt: !2384)
!2401 = !DILocation(line: 65, column: 10, scope: !607, inlinedAt: !2384)
!2402 = !DILocation(line: 66, column: 1, scope: !607, inlinedAt: !2384)
!2403 = !DILocation(line: 535, column: 3, scope: !2228)
!2404 = !DILocation(line: 0, scope: !2260)
!2405 = !DILocation(line: 0, scope: !2228)
!2406 = !DILocation(line: 536, column: 1, scope: !2228)
!2407 = distinct !DISubprogram(name: "luaK_indexed", scope: !1, file: !1, line: 621, type: !1889, isLocal: false, isDefinition: true, scopeLine: 621, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2408)
!2408 = !{!2409, !2410, !2411}
!2409 = !DILocalVariable(name: "fs", arg: 1, scope: !2407, file: !1, line: 621, type: !427)
!2410 = !DILocalVariable(name: "t", arg: 2, scope: !2407, file: !1, line: 621, type: !1064)
!2411 = !DILocalVariable(name: "k", arg: 3, scope: !2407, file: !1, line: 621, type: !1064)
!2412 = !DILocation(line: 621, column: 31, scope: !2407)
!2413 = !DILocation(line: 621, column: 44, scope: !2407)
!2414 = !DILocation(line: 621, column: 56, scope: !2407)
!2415 = !DILocation(line: 622, column: 16, scope: !2407)
!2416 = !DILocation(line: 622, column: 6, scope: !2407)
!2417 = !DILocation(line: 622, column: 8, scope: !2407)
!2418 = !DILocation(line: 622, column: 10, scope: !2407)
!2419 = !DILocation(line: 622, column: 14, scope: !2407)
!2420 = !DILocation(line: 623, column: 6, scope: !2407)
!2421 = !DILocation(line: 623, column: 8, scope: !2407)
!2422 = !DILocation(line: 624, column: 1, scope: !2407)
!2423 = distinct !DISubprogram(name: "luaK_prefix", scope: !1, file: !1, line: 689, type: !2424, isLocal: false, isDefinition: true, scopeLine: 689, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2427)
!2424 = !DISubroutineType(types: !2425)
!2425 = !{null, !427, !2426, !1064}
!2426 = !DIDerivedType(tag: DW_TAG_typedef, name: "UnOpr", file: !64, line: 36, baseType: !63)
!2427 = !{!2428, !2429, !2430, !2431}
!2428 = !DILocalVariable(name: "fs", arg: 1, scope: !2423, file: !1, line: 689, type: !427)
!2429 = !DILocalVariable(name: "op", arg: 2, scope: !2423, file: !1, line: 689, type: !2426)
!2430 = !DILocalVariable(name: "e", arg: 3, scope: !2423, file: !1, line: 689, type: !1064)
!2431 = !DILocalVariable(name: "e2", scope: !2423, file: !1, line: 690, type: !1065)
!2432 = !DILocation(line: 689, column: 30, scope: !2423)
!2433 = !DILocation(line: 689, column: 40, scope: !2423)
!2434 = !DILocation(line: 689, column: 53, scope: !2423)
!2435 = !DILocation(line: 690, column: 3, scope: !2423)
!2436 = !DILocation(line: 691, column: 13, scope: !2423)
!2437 = !DILocation(line: 691, column: 15, scope: !2423)
!2438 = !DILocation(line: 691, column: 6, scope: !2423)
!2439 = !DILocation(line: 691, column: 8, scope: !2423)
!2440 = !DILocation(line: 691, column: 29, scope: !2423)
!2441 = !DILocation(line: 691, column: 31, scope: !2423)
!2442 = !DILocation(line: 691, column: 45, scope: !2423)
!2443 = !DILocation(line: 691, column: 50, scope: !2423)
!2444 = !DILocation(line: 692, column: 3, scope: !2423)
!2445 = !DILocalVariable(name: "e", arg: 1, scope: !2446, file: !1, line: 30, type: !1064)
!2446 = distinct !DISubprogram(name: "isnumeral", scope: !1, file: !1, line: 30, type: !2447, isLocal: true, isDefinition: true, scopeLine: 30, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2449)
!2447 = !DISubroutineType(types: !2448)
!2448 = !{!93, !1064}
!2449 = !{!2445}
!2450 = !DILocation(line: 30, column: 31, scope: !2446, inlinedAt: !2451)
!2451 = distinct !DILocation(line: 694, column: 12, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2453, file: !1, line: 694, column: 11)
!2453 = distinct !DILexicalBlock(scope: !2454, file: !1, line: 693, column: 21)
!2454 = distinct !DILexicalBlock(scope: !2423, file: !1, line: 692, column: 15)
!2455 = !DILocation(line: 31, column: 14, scope: !2446, inlinedAt: !2451)
!2456 = !DILocation(line: 31, column: 16, scope: !2446, inlinedAt: !2451)
!2457 = !DILocation(line: 31, column: 25, scope: !2446, inlinedAt: !2451)
!2458 = !DILocation(line: 31, column: 31, scope: !2446, inlinedAt: !2451)
!2459 = !DILocation(line: 31, column: 33, scope: !2446, inlinedAt: !2451)
!2460 = !DILocation(line: 31, column: 44, scope: !2446, inlinedAt: !2451)
!2461 = !DILocation(line: 31, column: 3, scope: !2446, inlinedAt: !2451)
!2462 = !DILocation(line: 694, column: 11, scope: !2453)
!2463 = !DILocation(line: 31, column: 50, scope: !2446, inlinedAt: !2451)
!2464 = !DILocation(line: 31, column: 52, scope: !2446, inlinedAt: !2451)
!2465 = !DILocation(line: 422, column: 33, scope: !1724, inlinedAt: !2466)
!2466 = distinct !DILocation(line: 695, column: 9, scope: !2452)
!2467 = !DILocation(line: 422, column: 46, scope: !1724, inlinedAt: !2466)
!2468 = !DILocation(line: 423, column: 3, scope: !1724, inlinedAt: !2466)
!2469 = !DILocation(line: 424, column: 10, scope: !1734, inlinedAt: !2466)
!2470 = !DILocation(line: 424, column: 12, scope: !1734, inlinedAt: !2466)
!2471 = !DILocation(line: 424, column: 7, scope: !1724, inlinedAt: !2466)
!2472 = !DILocation(line: 425, column: 10, scope: !1740, inlinedAt: !2466)
!2473 = !DILocation(line: 0, scope: !1740, inlinedAt: !2466)
!2474 = !DILocation(line: 425, column: 9, scope: !1741, inlinedAt: !2466)
!2475 = !DILocation(line: 426, column: 28, scope: !1745, inlinedAt: !2466)
!2476 = !DILocation(line: 426, column: 24, scope: !1745, inlinedAt: !2466)
!2477 = !DILocation(line: 426, column: 21, scope: !1745, inlinedAt: !2466)
!2478 = !DILocation(line: 426, column: 9, scope: !1741, inlinedAt: !2466)
!2479 = !DILocation(line: 427, column: 7, scope: !1750, inlinedAt: !2466)
!2480 = !DILocation(line: 428, column: 7, scope: !1750, inlinedAt: !2466)
!2481 = !DILocation(line: 431, column: 3, scope: !1724, inlinedAt: !2466)
!2482 = !DILocation(line: 432, column: 3, scope: !1724, inlinedAt: !2466)
!2483 = !DILocation(line: 0, scope: !2452)
!2484 = !DILocation(line: 433, column: 1, scope: !1724, inlinedAt: !2466)
!2485 = !DILocation(line: 695, column: 9, scope: !2452)
!2486 = !DILocation(line: 690, column: 11, scope: !2423)
!2487 = !DILocation(line: 696, column: 7, scope: !2453)
!2488 = !DILocation(line: 697, column: 7, scope: !2453)
!2489 = !DILocalVariable(name: "fs", arg: 1, scope: !2490, file: !1, line: 586, type: !427)
!2490 = distinct !DISubprogram(name: "codenot", scope: !1, file: !1, line: 586, type: !1132, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2491)
!2491 = !{!2489, !2492, !2493}
!2492 = !DILocalVariable(name: "e", arg: 2, scope: !2490, file: !1, line: 586, type: !1064)
!2493 = !DILocalVariable(name: "temp", scope: !2494, file: !1, line: 615, type: !93)
!2494 = distinct !DILexicalBlock(scope: !2490, file: !1, line: 615, column: 3)
!2495 = !DILocation(line: 586, column: 33, scope: !2490, inlinedAt: !2496)
!2496 = distinct !DILocation(line: 699, column: 19, scope: !2454)
!2497 = !DILocation(line: 586, column: 46, scope: !2490, inlinedAt: !2496)
!2498 = !DILocation(line: 587, column: 3, scope: !2490, inlinedAt: !2496)
!2499 = !DILocation(line: 588, column: 14, scope: !2490, inlinedAt: !2496)
!2500 = !DILocation(line: 588, column: 3, scope: !2490, inlinedAt: !2496)
!2501 = !DILocation(line: 590, column: 12, scope: !2502, inlinedAt: !2496)
!2502 = distinct !DILexicalBlock(scope: !2503, file: !1, line: 589, column: 29)
!2503 = distinct !DILexicalBlock(scope: !2490, file: !1, line: 588, column: 17)
!2504 = !DILocation(line: 591, column: 7, scope: !2502, inlinedAt: !2496)
!2505 = !DILocation(line: 594, column: 12, scope: !2506, inlinedAt: !2496)
!2506 = distinct !DILexicalBlock(scope: !2503, file: !1, line: 593, column: 38)
!2507 = !DILocation(line: 595, column: 7, scope: !2506, inlinedAt: !2496)
!2508 = !DILocation(line: 516, column: 36, scope: !2174, inlinedAt: !2509)
!2509 = distinct !DILocation(line: 598, column: 7, scope: !2510, inlinedAt: !2496)
!2510 = distinct !DILexicalBlock(scope: !2503, file: !1, line: 597, column: 16)
!2511 = !DILocation(line: 516, column: 49, scope: !2174, inlinedAt: !2509)
!2512 = !DILocation(line: 517, column: 43, scope: !2174, inlinedAt: !2509)
!2513 = !DILocation(line: 517, column: 47, scope: !2174, inlinedAt: !2509)
!2514 = !DILocation(line: 109, column: 48, scope: !827, inlinedAt: !2515)
!2515 = distinct !DILocation(line: 517, column: 21, scope: !2174, inlinedAt: !2509)
!2516 = !DILocation(line: 109, column: 56, scope: !827, inlinedAt: !2515)
!2517 = !DILocation(line: 110, column: 26, scope: !827, inlinedAt: !2515)
!2518 = !DILocation(line: 110, column: 29, scope: !827, inlinedAt: !2515)
!2519 = !DILocation(line: 110, column: 22, scope: !827, inlinedAt: !2515)
!2520 = !DILocation(line: 110, column: 16, scope: !827, inlinedAt: !2515)
!2521 = !DILocation(line: 111, column: 10, scope: !838, inlinedAt: !2515)
!2522 = !DILocation(line: 111, column: 15, scope: !838, inlinedAt: !2515)
!2523 = !DILocation(line: 111, column: 18, scope: !838, inlinedAt: !2515)
!2524 = !DILocation(line: 111, column: 7, scope: !827, inlinedAt: !2515)
!2525 = !DILocation(line: 112, column: 5, scope: !838, inlinedAt: !2515)
!2526 = !DILocation(line: 114, column: 5, scope: !838, inlinedAt: !2515)
!2527 = !DILocation(line: 520, column: 3, scope: !2174, inlinedAt: !2509)
!2528 = !DILocation(line: 0, scope: !838, inlinedAt: !2515)
!2529 = !DILocation(line: 115, column: 1, scope: !827, inlinedAt: !2515)
!2530 = !DILocation(line: 517, column: 16, scope: !2174, inlinedAt: !2509)
!2531 = !DILocation(line: 521, column: 1, scope: !2174, inlinedAt: !2509)
!2532 = !DILocation(line: 599, column: 7, scope: !2510, inlinedAt: !2496)
!2533 = !DILocation(line: 382, column: 42, scope: !2252, inlinedAt: !2534)
!2534 = distinct !DILocation(line: 603, column: 7, scope: !2535, inlinedAt: !2496)
!2535 = distinct !DILexicalBlock(scope: !2503, file: !1, line: 602, column: 21)
!2536 = !DILocation(line: 382, column: 55, scope: !2252, inlinedAt: !2534)
!2537 = !DILocation(line: 383, column: 12, scope: !2310, inlinedAt: !2534)
!2538 = !DILocation(line: 383, column: 7, scope: !2252, inlinedAt: !2534)
!2539 = !DILocation(line: 387, column: 1, scope: !2252, inlinedAt: !2534)
!2540 = !DILocation(line: 223, column: 33, scope: !1282, inlinedAt: !2541)
!2541 = distinct !DILocation(line: 604, column: 7, scope: !2535, inlinedAt: !2496)
!2542 = !DILocation(line: 223, column: 46, scope: !1282, inlinedAt: !2541)
!2543 = !DILocation(line: 224, column: 7, scope: !1282, inlinedAt: !2541)
!2544 = !DILocation(line: 209, column: 35, scope: !932, inlinedAt: !2545)
!2545 = distinct !DILocation(line: 384, column: 5, scope: !2318, inlinedAt: !2534)
!2546 = !DILocation(line: 209, column: 43, scope: !932, inlinedAt: !2545)
!2547 = !DILocation(line: 199, column: 34, scope: !902, inlinedAt: !2548)
!2548 = distinct !DILocation(line: 210, column: 3, scope: !932, inlinedAt: !2545)
!2549 = !DILocation(line: 199, column: 42, scope: !902, inlinedAt: !2548)
!2550 = !DILocation(line: 200, column: 22, scope: !902, inlinedAt: !2548)
!2551 = !DILocation(line: 200, column: 30, scope: !902, inlinedAt: !2548)
!2552 = !DILocation(line: 200, column: 7, scope: !902, inlinedAt: !2548)
!2553 = !DILocation(line: 201, column: 22, scope: !914, inlinedAt: !2548)
!2554 = !DILocation(line: 201, column: 25, scope: !914, inlinedAt: !2548)
!2555 = !DILocation(line: 201, column: 18, scope: !914, inlinedAt: !2548)
!2556 = !DILocation(line: 201, column: 16, scope: !914, inlinedAt: !2548)
!2557 = !DILocation(line: 201, column: 7, scope: !902, inlinedAt: !2548)
!2558 = !DILocation(line: 202, column: 18, scope: !921, inlinedAt: !2548)
!2559 = !DILocation(line: 202, column: 9, scope: !922, inlinedAt: !2548)
!2560 = !DILocation(line: 203, column: 28, scope: !921, inlinedAt: !2548)
!2561 = !DILocation(line: 203, column: 7, scope: !921, inlinedAt: !2548)
!2562 = !DILocation(line: 204, column: 9, scope: !922, inlinedAt: !2548)
!2563 = !DILocation(line: 204, column: 12, scope: !922, inlinedAt: !2548)
!2564 = !DILocation(line: 211, column: 15, scope: !932, inlinedAt: !2545)
!2565 = !DILocation(line: 204, column: 27, scope: !922, inlinedAt: !2548)
!2566 = !DILocation(line: 204, column: 25, scope: !922, inlinedAt: !2548)
!2567 = !DILocation(line: 205, column: 3, scope: !922, inlinedAt: !2548)
!2568 = !DILocation(line: 206, column: 1, scope: !902, inlinedAt: !2548)
!2569 = !DILocation(line: 212, column: 1, scope: !932, inlinedAt: !2545)
!2570 = !DILocation(line: 385, column: 37, scope: !2318, inlinedAt: !2534)
!2571 = !DILocation(line: 385, column: 5, scope: !2318, inlinedAt: !2534)
!2572 = !DILocation(line: 386, column: 3, scope: !2318, inlinedAt: !2534)
!2573 = !DILocation(line: 224, column: 10, scope: !1289, inlinedAt: !2541)
!2574 = !DILocation(line: 605, column: 52, scope: !2535, inlinedAt: !2496)
!2575 = !DILocation(line: 605, column: 56, scope: !2535, inlinedAt: !2496)
!2576 = !DILocation(line: 225, column: 20, scope: !1289, inlinedAt: !2541)
!2577 = !DILocation(line: 225, column: 24, scope: !1289, inlinedAt: !2541)
!2578 = !DILocation(line: 215, column: 33, scope: !1207, inlinedAt: !2579)
!2579 = distinct !DILocation(line: 225, column: 5, scope: !1289, inlinedAt: !2541)
!2580 = !DILocation(line: 215, column: 41, scope: !1207, inlinedAt: !2579)
!2581 = !DILocation(line: 216, column: 8, scope: !1214, inlinedAt: !2579)
!2582 = !DILocation(line: 216, column: 17, scope: !1214, inlinedAt: !2579)
!2583 = !DILocation(line: 216, column: 31, scope: !1214, inlinedAt: !2579)
!2584 = !DILocation(line: 216, column: 27, scope: !1214, inlinedAt: !2579)
!2585 = !DILocation(line: 216, column: 24, scope: !1214, inlinedAt: !2579)
!2586 = !DILocation(line: 216, column: 7, scope: !1207, inlinedAt: !2579)
!2587 = !DILocation(line: 217, column: 9, scope: !1221, inlinedAt: !2579)
!2588 = !DILocation(line: 217, column: 16, scope: !1221, inlinedAt: !2579)
!2589 = !DILocation(line: 219, column: 3, scope: !1221, inlinedAt: !2579)
!2590 = !DILocation(line: 220, column: 1, scope: !1207, inlinedAt: !2579)
!2591 = !DILocation(line: 225, column: 5, scope: !1289, inlinedAt: !2541)
!2592 = !DILocation(line: 226, column: 1, scope: !1282, inlinedAt: !2541)
!2593 = !DILocation(line: 804, column: 30, scope: !573, inlinedAt: !2594)
!2594 = distinct !DILocation(line: 605, column: 21, scope: !2535, inlinedAt: !2496)
!2595 = !DILocation(line: 804, column: 41, scope: !573, inlinedAt: !2594)
!2596 = !DILocation(line: 804, column: 48, scope: !573, inlinedAt: !2594)
!2597 = !DILocation(line: 804, column: 55, scope: !573, inlinedAt: !2594)
!2598 = !DILocation(line: 804, column: 62, scope: !573, inlinedAt: !2594)
!2599 = !DILocation(line: 808, column: 24, scope: !573, inlinedAt: !2594)
!2600 = !DILocation(line: 808, column: 52, scope: !573, inlinedAt: !2594)
!2601 = !DILocation(line: 808, column: 56, scope: !573, inlinedAt: !2594)
!2602 = !DILocation(line: 808, column: 10, scope: !573, inlinedAt: !2594)
!2603 = !DILocation(line: 808, column: 3, scope: !573, inlinedAt: !2594)
!2604 = !DILocation(line: 605, column: 19, scope: !2535, inlinedAt: !2496)
!2605 = !DILocation(line: 606, column: 12, scope: !2535, inlinedAt: !2496)
!2606 = !DILocation(line: 607, column: 7, scope: !2535, inlinedAt: !2496)
!2607 = !DILocation(line: 0, scope: !2454)
!2608 = !DILocation(line: 615, column: 19, scope: !2494, inlinedAt: !2496)
!2609 = !DILocation(line: 615, column: 9, scope: !2494, inlinedAt: !2496)
!2610 = !DILocation(line: 615, column: 32, scope: !2494, inlinedAt: !2496)
!2611 = !DILocation(line: 615, column: 27, scope: !2494, inlinedAt: !2496)
!2612 = !DILocation(line: 615, column: 40, scope: !2494, inlinedAt: !2496)
!2613 = !DILocation(line: 616, column: 3, scope: !2490, inlinedAt: !2496)
!2614 = !DILocation(line: 617, column: 23, scope: !2490, inlinedAt: !2496)
!2615 = !DILocation(line: 617, column: 3, scope: !2490, inlinedAt: !2496)
!2616 = !DILocation(line: 618, column: 1, scope: !2490, inlinedAt: !2496)
!2617 = !DILocation(line: 699, column: 35, scope: !2454)
!2618 = !DILocation(line: 422, column: 33, scope: !1724, inlinedAt: !2619)
!2619 = distinct !DILocation(line: 701, column: 7, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2454, file: !1, line: 700, column: 19)
!2621 = !DILocation(line: 422, column: 46, scope: !1724, inlinedAt: !2619)
!2622 = !DILocation(line: 423, column: 3, scope: !1724, inlinedAt: !2619)
!2623 = !DILocation(line: 424, column: 10, scope: !1734, inlinedAt: !2619)
!2624 = !DILocation(line: 424, column: 12, scope: !1734, inlinedAt: !2619)
!2625 = !DILocation(line: 424, column: 7, scope: !1724, inlinedAt: !2619)
!2626 = !DILocation(line: 425, column: 10, scope: !1740, inlinedAt: !2619)
!2627 = !DILocation(line: 0, scope: !1740, inlinedAt: !2619)
!2628 = !DILocation(line: 425, column: 9, scope: !1741, inlinedAt: !2619)
!2629 = !DILocation(line: 426, column: 28, scope: !1745, inlinedAt: !2619)
!2630 = !DILocation(line: 426, column: 24, scope: !1745, inlinedAt: !2619)
!2631 = !DILocation(line: 426, column: 21, scope: !1745, inlinedAt: !2619)
!2632 = !DILocation(line: 426, column: 9, scope: !1741, inlinedAt: !2619)
!2633 = !DILocation(line: 427, column: 7, scope: !1750, inlinedAt: !2619)
!2634 = !DILocation(line: 428, column: 7, scope: !1750, inlinedAt: !2619)
!2635 = !DILocation(line: 431, column: 3, scope: !1724, inlinedAt: !2619)
!2636 = !DILocation(line: 432, column: 3, scope: !1724, inlinedAt: !2619)
!2637 = !DILocation(line: 0, scope: !2620)
!2638 = !DILocation(line: 433, column: 1, scope: !1724, inlinedAt: !2619)
!2639 = !DILocation(line: 702, column: 7, scope: !2620)
!2640 = !DILocation(line: 703, column: 7, scope: !2620)
!2641 = !DILocation(line: 0, scope: !2453)
!2642 = !DILocation(line: 707, column: 1, scope: !2423)
!2643 = distinct !DISubprogram(name: "codearith", scope: !1, file: !1, line: 653, type: !2644, isLocal: true, isDefinition: true, scopeLine: 653, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2646)
!2644 = !DISubroutineType(types: !2645)
!2645 = !{null, !427, !89, !1064, !1064}
!2646 = !{!2647, !2648, !2649, !2650, !2651, !2654}
!2647 = !DILocalVariable(name: "fs", arg: 1, scope: !2643, file: !1, line: 653, type: !427)
!2648 = !DILocalVariable(name: "op", arg: 2, scope: !2643, file: !1, line: 653, type: !89)
!2649 = !DILocalVariable(name: "e1", arg: 3, scope: !2643, file: !1, line: 653, type: !1064)
!2650 = !DILocalVariable(name: "e2", arg: 4, scope: !2643, file: !1, line: 653, type: !1064)
!2651 = !DILocalVariable(name: "o2", scope: !2652, file: !1, line: 657, type: !93)
!2652 = distinct !DILexicalBlock(scope: !2653, file: !1, line: 656, column: 8)
!2653 = distinct !DILexicalBlock(scope: !2643, file: !1, line: 654, column: 7)
!2654 = !DILocalVariable(name: "o1", scope: !2652, file: !1, line: 658, type: !93)
!2655 = !DILocation(line: 653, column: 35, scope: !2643)
!2656 = !DILocation(line: 653, column: 46, scope: !2643)
!2657 = !DILocation(line: 653, column: 59, scope: !2643)
!2658 = !DILocation(line: 653, column: 72, scope: !2643)
!2659 = !DILocalVariable(name: "op", arg: 1, scope: !2660, file: !1, line: 627, type: !89)
!2660 = distinct !DISubprogram(name: "constfolding", scope: !1, file: !1, line: 627, type: !2661, isLocal: true, isDefinition: true, scopeLine: 627, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2663)
!2661 = !DISubroutineType(types: !2662)
!2662 = !{!93, !89, !1064, !1064}
!2663 = !{!2659, !2664, !2665, !2666, !2667, !2668}
!2664 = !DILocalVariable(name: "e1", arg: 2, scope: !2660, file: !1, line: 627, type: !1064)
!2665 = !DILocalVariable(name: "e2", arg: 3, scope: !2660, file: !1, line: 627, type: !1064)
!2666 = !DILocalVariable(name: "v1", scope: !2660, file: !1, line: 628, type: !166)
!2667 = !DILocalVariable(name: "v2", scope: !2660, file: !1, line: 628, type: !166)
!2668 = !DILocalVariable(name: "r", scope: !2660, file: !1, line: 628, type: !166)
!2669 = !DILocation(line: 627, column: 33, scope: !2660, inlinedAt: !2670)
!2670 = distinct !DILocation(line: 654, column: 7, scope: !2653)
!2671 = !DILocation(line: 627, column: 46, scope: !2660, inlinedAt: !2670)
!2672 = !DILocation(line: 627, column: 59, scope: !2660, inlinedAt: !2670)
!2673 = !DILocation(line: 30, column: 31, scope: !2446, inlinedAt: !2674)
!2674 = distinct !DILocation(line: 629, column: 8, scope: !2675, inlinedAt: !2670)
!2675 = distinct !DILexicalBlock(scope: !2660, file: !1, line: 629, column: 7)
!2676 = !DILocation(line: 31, column: 14, scope: !2446, inlinedAt: !2674)
!2677 = !DILocation(line: 31, column: 16, scope: !2446, inlinedAt: !2674)
!2678 = !DILocation(line: 31, column: 25, scope: !2446, inlinedAt: !2674)
!2679 = !DILocation(line: 31, column: 31, scope: !2446, inlinedAt: !2674)
!2680 = !DILocation(line: 31, column: 33, scope: !2446, inlinedAt: !2674)
!2681 = !DILocation(line: 31, column: 44, scope: !2446, inlinedAt: !2674)
!2682 = !DILocation(line: 31, column: 3, scope: !2446, inlinedAt: !2674)
!2683 = !DILocation(line: 629, column: 22, scope: !2675, inlinedAt: !2670)
!2684 = !DILocation(line: 31, column: 50, scope: !2446, inlinedAt: !2674)
!2685 = !DILocation(line: 31, column: 52, scope: !2446, inlinedAt: !2674)
!2686 = !DILocation(line: 30, column: 31, scope: !2446, inlinedAt: !2687)
!2687 = distinct !DILocation(line: 629, column: 26, scope: !2675, inlinedAt: !2670)
!2688 = !DILocation(line: 31, column: 14, scope: !2446, inlinedAt: !2687)
!2689 = !DILocation(line: 31, column: 16, scope: !2446, inlinedAt: !2687)
!2690 = !DILocation(line: 31, column: 25, scope: !2446, inlinedAt: !2687)
!2691 = !DILocation(line: 31, column: 31, scope: !2446, inlinedAt: !2687)
!2692 = !DILocation(line: 31, column: 33, scope: !2446, inlinedAt: !2687)
!2693 = !DILocation(line: 31, column: 44, scope: !2446, inlinedAt: !2687)
!2694 = !DILocation(line: 31, column: 3, scope: !2446, inlinedAt: !2687)
!2695 = !DILocation(line: 629, column: 7, scope: !2660, inlinedAt: !2670)
!2696 = !DILocation(line: 31, column: 50, scope: !2446, inlinedAt: !2687)
!2697 = !DILocation(line: 31, column: 52, scope: !2446, inlinedAt: !2687)
!2698 = !DILocation(line: 630, column: 14, scope: !2660, inlinedAt: !2670)
!2699 = !DILocation(line: 628, column: 14, scope: !2660, inlinedAt: !2670)
!2700 = !DILocation(line: 631, column: 14, scope: !2660, inlinedAt: !2670)
!2701 = !DILocation(line: 628, column: 18, scope: !2660, inlinedAt: !2670)
!2702 = !DILocation(line: 632, column: 3, scope: !2660, inlinedAt: !2670)
!2703 = !DILocation(line: 633, column: 22, scope: !2704, inlinedAt: !2670)
!2704 = distinct !DILexicalBlock(scope: !2660, file: !1, line: 632, column: 15)
!2705 = !DILocation(line: 628, column: 22, scope: !2660, inlinedAt: !2670)
!2706 = !DILocation(line: 633, column: 43, scope: !2704, inlinedAt: !2670)
!2707 = !DILocation(line: 634, column: 22, scope: !2704, inlinedAt: !2670)
!2708 = !DILocation(line: 634, column: 43, scope: !2704, inlinedAt: !2670)
!2709 = !DILocation(line: 635, column: 22, scope: !2704, inlinedAt: !2670)
!2710 = !DILocation(line: 635, column: 43, scope: !2704, inlinedAt: !2670)
!2711 = !DILocation(line: 637, column: 14, scope: !2712, inlinedAt: !2670)
!2712 = distinct !DILexicalBlock(scope: !2704, file: !1, line: 637, column: 11)
!2713 = !DILocation(line: 637, column: 11, scope: !2704, inlinedAt: !2670)
!2714 = !DILocation(line: 638, column: 11, scope: !2704, inlinedAt: !2670)
!2715 = !DILocation(line: 638, column: 32, scope: !2704, inlinedAt: !2670)
!2716 = !DILocation(line: 640, column: 14, scope: !2717, inlinedAt: !2670)
!2717 = distinct !DILexicalBlock(scope: !2704, file: !1, line: 640, column: 11)
!2718 = !DILocation(line: 640, column: 11, scope: !2704, inlinedAt: !2670)
!2719 = !DILocation(line: 641, column: 11, scope: !2704, inlinedAt: !2670)
!2720 = !DILocation(line: 641, column: 32, scope: !2704, inlinedAt: !2670)
!2721 = !DILocation(line: 642, column: 22, scope: !2704, inlinedAt: !2670)
!2722 = !DILocation(line: 642, column: 43, scope: !2704, inlinedAt: !2670)
!2723 = !DILocation(line: 643, column: 22, scope: !2704, inlinedAt: !2670)
!2724 = !DILocation(line: 643, column: 39, scope: !2704, inlinedAt: !2670)
!2725 = !DILocation(line: 644, column: 18, scope: !2704, inlinedAt: !2670)
!2726 = !DILocation(line: 650, column: 1, scope: !2660, inlinedAt: !2670)
!2727 = !DILocation(line: 654, column: 7, scope: !2643)
!2728 = !DILocation(line: 657, column: 28, scope: !2652)
!2729 = !DILocation(line: 645, column: 36, scope: !2704, inlinedAt: !2670)
!2730 = !DILocation(line: 647, column: 7, scope: !2660, inlinedAt: !2670)
!2731 = !DILocation(line: 0, scope: !2704, inlinedAt: !2670)
!2732 = !DILocation(line: 0, scope: !2653)
!2733 = !DILocation(line: 647, column: 7, scope: !2734, inlinedAt: !2670)
!2734 = distinct !DILexicalBlock(scope: !2660, file: !1, line: 647, column: 7)
!2735 = !DILocation(line: 648, column: 14, scope: !2660, inlinedAt: !2670)
!2736 = !DILocation(line: 649, column: 3, scope: !2660, inlinedAt: !2670)
!2737 = !DILocation(line: 657, column: 47, scope: !2652)
!2738 = !DILocation(line: 657, column: 14, scope: !2652)
!2739 = !DILocation(line: 657, column: 9, scope: !2652)
!2740 = !DILocation(line: 658, column: 14, scope: !2652)
!2741 = !DILocation(line: 658, column: 9, scope: !2652)
!2742 = !DILocation(line: 659, column: 12, scope: !2743)
!2743 = distinct !DILexicalBlock(scope: !2652, file: !1, line: 659, column: 9)
!2744 = !DILocation(line: 659, column: 9, scope: !2652)
!2745 = !DILocation(line: 223, column: 33, scope: !1282, inlinedAt: !2746)
!2746 = distinct !DILocation(line: 660, column: 7, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2743, file: !1, line: 659, column: 18)
!2748 = !DILocation(line: 223, column: 33, scope: !1282, inlinedAt: !2749)
!2749 = distinct !DILocation(line: 664, column: 7, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2743, file: !1, line: 663, column: 10)
!2751 = !DILocation(line: 223, column: 46, scope: !1282, inlinedAt: !2746)
!2752 = !DILocation(line: 224, column: 10, scope: !1289, inlinedAt: !2746)
!2753 = !DILocation(line: 224, column: 12, scope: !1289, inlinedAt: !2746)
!2754 = !DILocation(line: 224, column: 7, scope: !1282, inlinedAt: !2746)
!2755 = !DILocation(line: 225, column: 20, scope: !1289, inlinedAt: !2746)
!2756 = !DILocation(line: 225, column: 24, scope: !1289, inlinedAt: !2746)
!2757 = !DILocation(line: 215, column: 33, scope: !1207, inlinedAt: !2758)
!2758 = distinct !DILocation(line: 225, column: 5, scope: !1289, inlinedAt: !2746)
!2759 = !DILocation(line: 215, column: 41, scope: !1207, inlinedAt: !2758)
!2760 = !DILocation(line: 216, column: 8, scope: !1214, inlinedAt: !2758)
!2761 = !DILocation(line: 216, column: 17, scope: !1214, inlinedAt: !2758)
!2762 = !DILocation(line: 216, column: 31, scope: !1214, inlinedAt: !2758)
!2763 = !DILocation(line: 216, column: 27, scope: !1214, inlinedAt: !2758)
!2764 = !DILocation(line: 216, column: 24, scope: !1214, inlinedAt: !2758)
!2765 = !DILocation(line: 216, column: 7, scope: !1207, inlinedAt: !2758)
!2766 = !DILocation(line: 217, column: 9, scope: !1221, inlinedAt: !2758)
!2767 = !DILocation(line: 217, column: 16, scope: !1221, inlinedAt: !2758)
!2768 = !DILocation(line: 219, column: 3, scope: !1221, inlinedAt: !2758)
!2769 = !DILocation(line: 220, column: 1, scope: !1207, inlinedAt: !2758)
!2770 = !DILocation(line: 225, column: 5, scope: !1289, inlinedAt: !2746)
!2771 = !DILocation(line: 226, column: 1, scope: !1282, inlinedAt: !2746)
!2772 = !DILocation(line: 223, column: 33, scope: !1282, inlinedAt: !2773)
!2773 = distinct !DILocation(line: 661, column: 7, scope: !2747)
!2774 = !DILocation(line: 223, column: 46, scope: !1282, inlinedAt: !2773)
!2775 = !DILocation(line: 224, column: 10, scope: !1289, inlinedAt: !2773)
!2776 = !DILocation(line: 224, column: 12, scope: !1289, inlinedAt: !2773)
!2777 = !DILocation(line: 224, column: 7, scope: !1282, inlinedAt: !2773)
!2778 = !DILocation(line: 225, column: 20, scope: !1289, inlinedAt: !2773)
!2779 = !DILocation(line: 225, column: 24, scope: !1289, inlinedAt: !2773)
!2780 = !DILocation(line: 215, column: 33, scope: !1207, inlinedAt: !2781)
!2781 = distinct !DILocation(line: 225, column: 5, scope: !1289, inlinedAt: !2773)
!2782 = !DILocation(line: 215, column: 41, scope: !1207, inlinedAt: !2781)
!2783 = !DILocation(line: 216, column: 8, scope: !1214, inlinedAt: !2781)
!2784 = !DILocation(line: 216, column: 17, scope: !1214, inlinedAt: !2781)
!2785 = !DILocation(line: 216, column: 31, scope: !1214, inlinedAt: !2781)
!2786 = !DILocation(line: 216, column: 27, scope: !1214, inlinedAt: !2781)
!2787 = !DILocation(line: 216, column: 24, scope: !1214, inlinedAt: !2781)
!2788 = !DILocation(line: 216, column: 7, scope: !1207, inlinedAt: !2781)
!2789 = !DILocation(line: 217, column: 9, scope: !1221, inlinedAt: !2781)
!2790 = !DILocation(line: 217, column: 16, scope: !1221, inlinedAt: !2781)
!2791 = !DILocation(line: 219, column: 3, scope: !1221, inlinedAt: !2781)
!2792 = !DILocation(line: 220, column: 1, scope: !1207, inlinedAt: !2781)
!2793 = !DILocation(line: 225, column: 5, scope: !1289, inlinedAt: !2773)
!2794 = !DILocation(line: 223, column: 46, scope: !1282, inlinedAt: !2749)
!2795 = !DILocation(line: 224, column: 10, scope: !1289, inlinedAt: !2749)
!2796 = !DILocation(line: 224, column: 12, scope: !1289, inlinedAt: !2749)
!2797 = !DILocation(line: 224, column: 7, scope: !1282, inlinedAt: !2749)
!2798 = !DILocation(line: 225, column: 20, scope: !1289, inlinedAt: !2749)
!2799 = !DILocation(line: 225, column: 24, scope: !1289, inlinedAt: !2749)
!2800 = !DILocation(line: 215, column: 33, scope: !1207, inlinedAt: !2801)
!2801 = distinct !DILocation(line: 225, column: 5, scope: !1289, inlinedAt: !2749)
!2802 = !DILocation(line: 215, column: 41, scope: !1207, inlinedAt: !2801)
!2803 = !DILocation(line: 216, column: 8, scope: !1214, inlinedAt: !2801)
!2804 = !DILocation(line: 216, column: 17, scope: !1214, inlinedAt: !2801)
!2805 = !DILocation(line: 216, column: 31, scope: !1214, inlinedAt: !2801)
!2806 = !DILocation(line: 216, column: 27, scope: !1214, inlinedAt: !2801)
!2807 = !DILocation(line: 216, column: 24, scope: !1214, inlinedAt: !2801)
!2808 = !DILocation(line: 216, column: 7, scope: !1207, inlinedAt: !2801)
!2809 = !DILocation(line: 217, column: 9, scope: !1221, inlinedAt: !2801)
!2810 = !DILocation(line: 217, column: 16, scope: !1221, inlinedAt: !2801)
!2811 = !DILocation(line: 219, column: 3, scope: !1221, inlinedAt: !2801)
!2812 = !DILocation(line: 220, column: 1, scope: !1207, inlinedAt: !2801)
!2813 = !DILocation(line: 225, column: 5, scope: !1289, inlinedAt: !2749)
!2814 = !DILocation(line: 226, column: 1, scope: !1282, inlinedAt: !2749)
!2815 = !DILocation(line: 223, column: 33, scope: !1282, inlinedAt: !2816)
!2816 = distinct !DILocation(line: 665, column: 7, scope: !2750)
!2817 = !DILocation(line: 223, column: 46, scope: !1282, inlinedAt: !2816)
!2818 = !DILocation(line: 224, column: 10, scope: !1289, inlinedAt: !2816)
!2819 = !DILocation(line: 224, column: 12, scope: !1289, inlinedAt: !2816)
!2820 = !DILocation(line: 224, column: 7, scope: !1282, inlinedAt: !2816)
!2821 = !DILocation(line: 225, column: 20, scope: !1289, inlinedAt: !2816)
!2822 = !DILocation(line: 225, column: 24, scope: !1289, inlinedAt: !2816)
!2823 = !DILocation(line: 215, column: 33, scope: !1207, inlinedAt: !2824)
!2824 = distinct !DILocation(line: 225, column: 5, scope: !1289, inlinedAt: !2816)
!2825 = !DILocation(line: 215, column: 41, scope: !1207, inlinedAt: !2824)
!2826 = !DILocation(line: 216, column: 8, scope: !1214, inlinedAt: !2824)
!2827 = !DILocation(line: 216, column: 17, scope: !1214, inlinedAt: !2824)
!2828 = !DILocation(line: 216, column: 31, scope: !1214, inlinedAt: !2824)
!2829 = !DILocation(line: 216, column: 27, scope: !1214, inlinedAt: !2824)
!2830 = !DILocation(line: 216, column: 24, scope: !1214, inlinedAt: !2824)
!2831 = !DILocation(line: 216, column: 7, scope: !1207, inlinedAt: !2824)
!2832 = !DILocation(line: 217, column: 9, scope: !1221, inlinedAt: !2824)
!2833 = !DILocation(line: 217, column: 16, scope: !1221, inlinedAt: !2824)
!2834 = !DILocation(line: 219, column: 3, scope: !1221, inlinedAt: !2824)
!2835 = !DILocation(line: 220, column: 1, scope: !1207, inlinedAt: !2824)
!2836 = !DILocation(line: 225, column: 5, scope: !1289, inlinedAt: !2816)
!2837 = !DILocation(line: 226, column: 1, scope: !1282, inlinedAt: !2816)
!2838 = !DILocation(line: 804, column: 30, scope: !573, inlinedAt: !2839)
!2839 = distinct !DILocation(line: 667, column: 20, scope: !2652)
!2840 = !DILocation(line: 804, column: 41, scope: !573, inlinedAt: !2839)
!2841 = !DILocation(line: 804, column: 48, scope: !573, inlinedAt: !2839)
!2842 = !DILocation(line: 804, column: 55, scope: !573, inlinedAt: !2839)
!2843 = !DILocation(line: 804, column: 62, scope: !573, inlinedAt: !2839)
!2844 = !DILocation(line: 808, column: 24, scope: !573, inlinedAt: !2839)
!2845 = !DILocation(line: 808, column: 52, scope: !573, inlinedAt: !2839)
!2846 = !DILocation(line: 808, column: 56, scope: !573, inlinedAt: !2839)
!2847 = !DILocation(line: 808, column: 10, scope: !573, inlinedAt: !2839)
!2848 = !DILocation(line: 808, column: 3, scope: !573, inlinedAt: !2839)
!2849 = !DILocation(line: 667, column: 9, scope: !2652)
!2850 = !DILocation(line: 667, column: 13, scope: !2652)
!2851 = !DILocation(line: 667, column: 18, scope: !2652)
!2852 = !DILocation(line: 668, column: 11, scope: !2652)
!2853 = !DILocation(line: 670, column: 1, scope: !2643)
!2854 = distinct !DISubprogram(name: "luaK_infix", scope: !1, file: !1, line: 710, type: !2855, isLocal: false, isDefinition: true, scopeLine: 710, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2858)
!2855 = !DISubroutineType(types: !2856)
!2856 = !{null, !427, !2857, !1064}
!2857 = !DIDerivedType(tag: DW_TAG_typedef, name: "BinOpr", file: !64, line: 33, baseType: !70)
!2858 = !{!2859, !2860, !2861}
!2859 = !DILocalVariable(name: "fs", arg: 1, scope: !2854, file: !1, line: 710, type: !427)
!2860 = !DILocalVariable(name: "op", arg: 2, scope: !2854, file: !1, line: 710, type: !2857)
!2861 = !DILocalVariable(name: "v", arg: 3, scope: !2854, file: !1, line: 710, type: !1064)
!2862 = !DILocation(line: 710, column: 29, scope: !2854)
!2863 = !DILocation(line: 710, column: 40, scope: !2854)
!2864 = !DILocation(line: 710, column: 53, scope: !2854)
!2865 = !DILocation(line: 711, column: 3, scope: !2854)
!2866 = !DILocation(line: 713, column: 7, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2868, file: !1, line: 712, column: 19)
!2868 = distinct !DILexicalBlock(scope: !2854, file: !1, line: 711, column: 15)
!2869 = !DILocation(line: 714, column: 7, scope: !2867)
!2870 = !DILocalVariable(name: "fs", arg: 1, scope: !2871, file: !1, line: 563, type: !427)
!2871 = distinct !DISubprogram(name: "luaK_goiffalse", scope: !1, file: !1, line: 563, type: !1132, isLocal: true, isDefinition: true, scopeLine: 563, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2872)
!2872 = !{!2870, !2873, !2874}
!2873 = !DILocalVariable(name: "e", arg: 2, scope: !2871, file: !1, line: 563, type: !1064)
!2874 = !DILocalVariable(name: "pc", scope: !2871, file: !1, line: 564, type: !93)
!2875 = !DILocation(line: 563, column: 40, scope: !2871, inlinedAt: !2876)
!2876 = distinct !DILocation(line: 717, column: 7, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2868, file: !1, line: 716, column: 18)
!2878 = !DILocation(line: 563, column: 53, scope: !2871, inlinedAt: !2876)
!2879 = !DILocation(line: 565, column: 3, scope: !2871, inlinedAt: !2876)
!2880 = !DILocation(line: 566, column: 14, scope: !2871, inlinedAt: !2876)
!2881 = !DILocation(line: 566, column: 3, scope: !2871, inlinedAt: !2876)
!2882 = !DILocation(line: 572, column: 15, scope: !2883, inlinedAt: !2876)
!2883 = distinct !DILexicalBlock(scope: !2884, file: !1, line: 571, column: 16)
!2884 = distinct !DILexicalBlock(scope: !2871, file: !1, line: 566, column: 17)
!2885 = !DILocation(line: 572, column: 19, scope: !2883, inlinedAt: !2876)
!2886 = !DILocation(line: 564, column: 7, scope: !2871, inlinedAt: !2876)
!2887 = !DILocation(line: 573, column: 7, scope: !2883, inlinedAt: !2876)
!2888 = !DILocation(line: 576, column: 12, scope: !2889, inlinedAt: !2876)
!2889 = distinct !DILexicalBlock(scope: !2884, file: !1, line: 575, column: 14)
!2890 = !DILocation(line: 577, column: 7, scope: !2889, inlinedAt: !2876)
!2891 = !DILocation(line: 0, scope: !2892, inlinedAt: !2876)
!2892 = distinct !DILexicalBlock(scope: !2884, file: !1, line: 567, column: 29)
!2893 = !DILocation(line: 0, scope: !2877)
!2894 = !DILocation(line: 580, column: 23, scope: !2871, inlinedAt: !2876)
!2895 = !DILocation(line: 580, column: 3, scope: !2871, inlinedAt: !2876)
!2896 = !DILocation(line: 581, column: 27, scope: !2871, inlinedAt: !2876)
!2897 = !DILocation(line: 179, column: 35, scope: !765, inlinedAt: !2898)
!2898 = distinct !DILocation(line: 581, column: 3, scope: !2871, inlinedAt: !2876)
!2899 = !DILocation(line: 179, column: 43, scope: !765, inlinedAt: !2898)
!2900 = !DILocation(line: 94, column: 31, scope: !744, inlinedAt: !2901)
!2901 = distinct !DILocation(line: 180, column: 3, scope: !765, inlinedAt: !2898)
!2902 = !DILocation(line: 95, column: 24, scope: !744, inlinedAt: !2901)
!2903 = !DILocation(line: 95, column: 7, scope: !744, inlinedAt: !2901)
!2904 = !DILocation(line: 95, column: 18, scope: !744, inlinedAt: !2901)
!2905 = !DILocation(line: 96, column: 3, scope: !744, inlinedAt: !2901)
!2906 = !DILocation(line: 181, column: 24, scope: !765, inlinedAt: !2898)
!2907 = !DILocation(line: 181, column: 3, scope: !765, inlinedAt: !2898)
!2908 = !DILocation(line: 182, column: 1, scope: !765, inlinedAt: !2898)
!2909 = !DILocation(line: 582, column: 8, scope: !2871, inlinedAt: !2876)
!2910 = !DILocation(line: 583, column: 1, scope: !2871, inlinedAt: !2876)
!2911 = !DILocation(line: 718, column: 7, scope: !2877)
!2912 = !DILocation(line: 721, column: 7, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !2868, file: !1, line: 720, column: 22)
!2914 = !DILocation(line: 722, column: 7, scope: !2913)
!2915 = !DILocation(line: 30, column: 31, scope: !2446, inlinedAt: !2916)
!2916 = distinct !DILocation(line: 726, column: 12, scope: !2917)
!2917 = distinct !DILexicalBlock(scope: !2918, file: !1, line: 726, column: 11)
!2918 = distinct !DILexicalBlock(scope: !2868, file: !1, line: 725, column: 33)
!2919 = !DILocation(line: 31, column: 14, scope: !2446, inlinedAt: !2916)
!2920 = !DILocation(line: 31, column: 16, scope: !2446, inlinedAt: !2916)
!2921 = !DILocation(line: 31, column: 25, scope: !2446, inlinedAt: !2916)
!2922 = !DILocation(line: 31, column: 31, scope: !2446, inlinedAt: !2916)
!2923 = !DILocation(line: 31, column: 33, scope: !2446, inlinedAt: !2916)
!2924 = !DILocation(line: 31, column: 44, scope: !2446, inlinedAt: !2916)
!2925 = !DILocation(line: 31, column: 3, scope: !2446, inlinedAt: !2916)
!2926 = !DILocation(line: 726, column: 11, scope: !2918)
!2927 = !DILocation(line: 31, column: 50, scope: !2446, inlinedAt: !2916)
!2928 = !DILocation(line: 31, column: 52, scope: !2446, inlinedAt: !2916)
!2929 = !DILocation(line: 726, column: 26, scope: !2917)
!2930 = !DILocation(line: 730, column: 7, scope: !2931)
!2931 = distinct !DILexicalBlock(scope: !2868, file: !1, line: 729, column: 14)
!2932 = !DILocation(line: 731, column: 7, scope: !2931)
!2933 = !DILocation(line: 0, scope: !2867)
!2934 = !DILocation(line: 734, column: 1, scope: !2854)
!2935 = distinct !DISubprogram(name: "luaK_posfix", scope: !1, file: !1, line: 737, type: !2936, isLocal: false, isDefinition: true, scopeLine: 737, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2938)
!2936 = !DISubroutineType(types: !2937)
!2937 = !{null, !427, !2857, !1064, !1064}
!2938 = !{!2939, !2940, !2941, !2942}
!2939 = !DILocalVariable(name: "fs", arg: 1, scope: !2935, file: !1, line: 737, type: !427)
!2940 = !DILocalVariable(name: "op", arg: 2, scope: !2935, file: !1, line: 737, type: !2857)
!2941 = !DILocalVariable(name: "e1", arg: 3, scope: !2935, file: !1, line: 737, type: !1064)
!2942 = !DILocalVariable(name: "e2", arg: 4, scope: !2935, file: !1, line: 737, type: !1064)
!2943 = !DILocation(line: 737, column: 30, scope: !2935)
!2944 = !DILocation(line: 737, column: 41, scope: !2935)
!2945 = !DILocation(line: 737, column: 54, scope: !2935)
!2946 = !DILocation(line: 737, column: 67, scope: !2935)
!2947 = !DILocation(line: 738, column: 3, scope: !2935)
!2948 = !DILocation(line: 741, column: 7, scope: !2949)
!2949 = distinct !DILexicalBlock(scope: !2950, file: !1, line: 739, column: 19)
!2950 = distinct !DILexicalBlock(scope: !2935, file: !1, line: 738, column: 15)
!2951 = !DILocation(line: 742, column: 28, scope: !2949)
!2952 = !DILocation(line: 742, column: 35, scope: !2949)
!2953 = !DILocation(line: 742, column: 7, scope: !2949)
!2954 = !DILocation(line: 743, column: 13, scope: !2949)
!2955 = !{i64 0, i64 4, !841, i64 8, i64 4, !550, i64 12, i64 4, !550, i64 8, i64 8, !2956, i64 16, i64 4, !550, i64 20, i64 4, !550}
!2956 = !{!2957, !2957, i64 0}
!2957 = !{!"double", !524, i64 0}
!2958 = !DILocation(line: 744, column: 7, scope: !2949)
!2959 = !DILocation(line: 748, column: 7, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !2950, file: !1, line: 746, column: 18)
!2961 = !DILocation(line: 749, column: 28, scope: !2960)
!2962 = !DILocation(line: 749, column: 35, scope: !2960)
!2963 = !DILocation(line: 749, column: 7, scope: !2960)
!2964 = !DILocation(line: 750, column: 13, scope: !2960)
!2965 = !DILocation(line: 751, column: 7, scope: !2960)
!2966 = !DILocation(line: 754, column: 7, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2950, file: !1, line: 753, column: 22)
!2968 = !DILocation(line: 755, column: 15, scope: !2969)
!2969 = distinct !DILexicalBlock(scope: !2967, file: !1, line: 755, column: 11)
!2970 = !DILocation(line: 755, column: 17, scope: !2969)
!2971 = !DILocation(line: 755, column: 31, scope: !2969)
!2972 = !DILocation(line: 755, column: 34, scope: !2969)
!2973 = !DILocation(line: 755, column: 62, scope: !2969)
!2974 = !DILocation(line: 755, column: 11, scope: !2967)
!2975 = !DILocation(line: 223, column: 33, scope: !1282, inlinedAt: !2976)
!2976 = distinct !DILocation(line: 757, column: 9, scope: !2977)
!2977 = distinct !DILexicalBlock(scope: !2969, file: !1, line: 755, column: 76)
!2978 = !DILocation(line: 223, column: 46, scope: !1282, inlinedAt: !2976)
!2979 = !DILocation(line: 224, column: 10, scope: !1289, inlinedAt: !2976)
!2980 = !DILocation(line: 224, column: 12, scope: !1289, inlinedAt: !2976)
!2981 = !DILocation(line: 224, column: 7, scope: !1282, inlinedAt: !2976)
!2982 = !DILocation(line: 0, scope: !2977)
!2983 = !DILocation(line: 225, column: 24, scope: !1289, inlinedAt: !2976)
!2984 = !DILocation(line: 215, column: 33, scope: !1207, inlinedAt: !2985)
!2985 = distinct !DILocation(line: 225, column: 5, scope: !1289, inlinedAt: !2976)
!2986 = !DILocation(line: 215, column: 41, scope: !1207, inlinedAt: !2985)
!2987 = !DILocation(line: 216, column: 8, scope: !1214, inlinedAt: !2985)
!2988 = !DILocation(line: 216, column: 17, scope: !1214, inlinedAt: !2985)
!2989 = !DILocation(line: 216, column: 31, scope: !1214, inlinedAt: !2985)
!2990 = !DILocation(line: 216, column: 27, scope: !1214, inlinedAt: !2985)
!2991 = !DILocation(line: 216, column: 24, scope: !1214, inlinedAt: !2985)
!2992 = !DILocation(line: 216, column: 7, scope: !1207, inlinedAt: !2985)
!2993 = !DILocation(line: 217, column: 9, scope: !1221, inlinedAt: !2985)
!2994 = !DILocation(line: 217, column: 16, scope: !1221, inlinedAt: !2985)
!2995 = !DILocation(line: 219, column: 3, scope: !1221, inlinedAt: !2985)
!2996 = !DILocation(line: 758, column: 9, scope: !2977)
!2997 = !DILocation(line: 220, column: 1, scope: !1207, inlinedAt: !2985)
!2998 = !DILocation(line: 225, column: 5, scope: !1289, inlinedAt: !2976)
!2999 = !DILocation(line: 226, column: 1, scope: !1282, inlinedAt: !2976)
!3000 = !DILocation(line: 759, column: 15, scope: !2977)
!3001 = !DILocation(line: 759, column: 52, scope: !2977)
!3002 = !DILocation(line: 759, column: 42, scope: !2977)
!3003 = !DILocation(line: 760, column: 7, scope: !2977)
!3004 = !DILocation(line: 762, column: 9, scope: !3005)
!3005 = distinct !DILexicalBlock(scope: !2969, file: !1, line: 761, column: 12)
!3006 = !DILocation(line: 763, column: 9, scope: !3005)
!3007 = !DILocation(line: 767, column: 19, scope: !2950)
!3008 = !DILocation(line: 767, column: 50, scope: !2950)
!3009 = !DILocation(line: 768, column: 19, scope: !2950)
!3010 = !DILocation(line: 768, column: 50, scope: !2950)
!3011 = !DILocation(line: 769, column: 19, scope: !2950)
!3012 = !DILocation(line: 769, column: 50, scope: !2950)
!3013 = !DILocation(line: 770, column: 19, scope: !2950)
!3014 = !DILocation(line: 770, column: 50, scope: !2950)
!3015 = !DILocation(line: 771, column: 19, scope: !2950)
!3016 = !DILocation(line: 771, column: 50, scope: !2950)
!3017 = !DILocation(line: 772, column: 19, scope: !2950)
!3018 = !DILocation(line: 772, column: 50, scope: !2950)
!3019 = !DILocation(line: 773, column: 18, scope: !2950)
!3020 = !DILocation(line: 773, column: 50, scope: !2950)
!3021 = !DILocation(line: 774, column: 18, scope: !2950)
!3022 = !DILocation(line: 774, column: 50, scope: !2950)
!3023 = !DILocation(line: 775, column: 18, scope: !2950)
!3024 = !DILocation(line: 775, column: 50, scope: !2950)
!3025 = !DILocation(line: 776, column: 18, scope: !2950)
!3026 = !DILocation(line: 776, column: 50, scope: !2950)
!3027 = !DILocation(line: 777, column: 18, scope: !2950)
!3028 = !DILocation(line: 777, column: 50, scope: !2950)
!3029 = !DILocation(line: 778, column: 18, scope: !2950)
!3030 = !DILocation(line: 778, column: 50, scope: !2950)
!3031 = !DILocation(line: 781, column: 1, scope: !2935)
!3032 = distinct !DISubprogram(name: "codecomp", scope: !1, file: !1, line: 673, type: !3033, isLocal: true, isDefinition: true, scopeLine: 674, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3035)
!3033 = !DISubroutineType(types: !3034)
!3034 = !{null, !427, !89, !93, !1064, !1064}
!3035 = !{!3036, !3037, !3038, !3039, !3040, !3041, !3042, !3043}
!3036 = !DILocalVariable(name: "fs", arg: 1, scope: !3032, file: !1, line: 673, type: !427)
!3037 = !DILocalVariable(name: "op", arg: 2, scope: !3032, file: !1, line: 673, type: !89)
!3038 = !DILocalVariable(name: "cond", arg: 3, scope: !3032, file: !1, line: 673, type: !93)
!3039 = !DILocalVariable(name: "e1", arg: 4, scope: !3032, file: !1, line: 673, type: !1064)
!3040 = !DILocalVariable(name: "e2", arg: 5, scope: !3032, file: !1, line: 674, type: !1064)
!3041 = !DILocalVariable(name: "o1", scope: !3032, file: !1, line: 675, type: !93)
!3042 = !DILocalVariable(name: "o2", scope: !3032, file: !1, line: 676, type: !93)
!3043 = !DILocalVariable(name: "temp", scope: !3044, file: !1, line: 680, type: !93)
!3044 = distinct !DILexicalBlock(scope: !3045, file: !1, line: 679, column: 33)
!3045 = distinct !DILexicalBlock(scope: !3032, file: !1, line: 679, column: 7)
!3046 = !DILocation(line: 673, column: 34, scope: !3032)
!3047 = !DILocation(line: 673, column: 45, scope: !3032)
!3048 = !DILocation(line: 673, column: 53, scope: !3032)
!3049 = !DILocation(line: 673, column: 68, scope: !3032)
!3050 = !DILocation(line: 674, column: 68, scope: !3032)
!3051 = !DILocation(line: 675, column: 12, scope: !3032)
!3052 = !DILocation(line: 675, column: 7, scope: !3032)
!3053 = !DILocation(line: 676, column: 12, scope: !3032)
!3054 = !DILocation(line: 676, column: 7, scope: !3032)
!3055 = !DILocation(line: 223, column: 33, scope: !1282, inlinedAt: !3056)
!3056 = distinct !DILocation(line: 677, column: 3, scope: !3032)
!3057 = !DILocation(line: 223, column: 46, scope: !1282, inlinedAt: !3056)
!3058 = !DILocation(line: 224, column: 10, scope: !1289, inlinedAt: !3056)
!3059 = !DILocation(line: 224, column: 12, scope: !1289, inlinedAt: !3056)
!3060 = !DILocation(line: 224, column: 7, scope: !1282, inlinedAt: !3056)
!3061 = !DILocation(line: 225, column: 20, scope: !1289, inlinedAt: !3056)
!3062 = !DILocation(line: 225, column: 24, scope: !1289, inlinedAt: !3056)
!3063 = !DILocation(line: 215, column: 33, scope: !1207, inlinedAt: !3064)
!3064 = distinct !DILocation(line: 225, column: 5, scope: !1289, inlinedAt: !3056)
!3065 = !DILocation(line: 215, column: 41, scope: !1207, inlinedAt: !3064)
!3066 = !DILocation(line: 216, column: 8, scope: !1214, inlinedAt: !3064)
!3067 = !DILocation(line: 216, column: 17, scope: !1214, inlinedAt: !3064)
!3068 = !DILocation(line: 216, column: 31, scope: !1214, inlinedAt: !3064)
!3069 = !DILocation(line: 216, column: 27, scope: !1214, inlinedAt: !3064)
!3070 = !DILocation(line: 216, column: 24, scope: !1214, inlinedAt: !3064)
!3071 = !DILocation(line: 216, column: 7, scope: !1207, inlinedAt: !3064)
!3072 = !DILocation(line: 217, column: 9, scope: !1221, inlinedAt: !3064)
!3073 = !DILocation(line: 217, column: 16, scope: !1221, inlinedAt: !3064)
!3074 = !DILocation(line: 219, column: 3, scope: !1221, inlinedAt: !3064)
!3075 = !DILocation(line: 220, column: 1, scope: !1207, inlinedAt: !3064)
!3076 = !DILocation(line: 225, column: 5, scope: !1289, inlinedAt: !3056)
!3077 = !DILocation(line: 226, column: 1, scope: !1282, inlinedAt: !3056)
!3078 = !DILocation(line: 223, column: 33, scope: !1282, inlinedAt: !3079)
!3079 = distinct !DILocation(line: 678, column: 3, scope: !3032)
!3080 = !DILocation(line: 223, column: 46, scope: !1282, inlinedAt: !3079)
!3081 = !DILocation(line: 224, column: 10, scope: !1289, inlinedAt: !3079)
!3082 = !DILocation(line: 224, column: 12, scope: !1289, inlinedAt: !3079)
!3083 = !DILocation(line: 224, column: 7, scope: !1282, inlinedAt: !3079)
!3084 = !DILocation(line: 225, column: 20, scope: !1289, inlinedAt: !3079)
!3085 = !DILocation(line: 225, column: 24, scope: !1289, inlinedAt: !3079)
!3086 = !DILocation(line: 215, column: 33, scope: !1207, inlinedAt: !3087)
!3087 = distinct !DILocation(line: 225, column: 5, scope: !1289, inlinedAt: !3079)
!3088 = !DILocation(line: 215, column: 41, scope: !1207, inlinedAt: !3087)
!3089 = !DILocation(line: 216, column: 8, scope: !1214, inlinedAt: !3087)
!3090 = !DILocation(line: 216, column: 17, scope: !1214, inlinedAt: !3087)
!3091 = !DILocation(line: 216, column: 31, scope: !1214, inlinedAt: !3087)
!3092 = !DILocation(line: 216, column: 27, scope: !1214, inlinedAt: !3087)
!3093 = !DILocation(line: 216, column: 24, scope: !1214, inlinedAt: !3087)
!3094 = !DILocation(line: 216, column: 7, scope: !1207, inlinedAt: !3087)
!3095 = !DILocation(line: 217, column: 9, scope: !1221, inlinedAt: !3087)
!3096 = !DILocation(line: 217, column: 16, scope: !1221, inlinedAt: !3087)
!3097 = !DILocation(line: 219, column: 3, scope: !1221, inlinedAt: !3087)
!3098 = !DILocation(line: 220, column: 1, scope: !1207, inlinedAt: !3087)
!3099 = !DILocation(line: 225, column: 5, scope: !1289, inlinedAt: !3079)
!3100 = !DILocation(line: 226, column: 1, scope: !1282, inlinedAt: !3079)
!3101 = !DILocation(line: 679, column: 12, scope: !3045)
!3102 = !DILocation(line: 679, column: 23, scope: !3045)
!3103 = !DILocation(line: 679, column: 17, scope: !3045)
!3104 = !DILocation(line: 680, column: 9, scope: !3044)
!3105 = !DILocation(line: 683, column: 3, scope: !3044)
!3106 = !DILocation(line: 0, scope: !3032)
!3107 = !DILocation(line: 74, column: 33, scope: !2265, inlinedAt: !3108)
!3108 = distinct !DILocation(line: 684, column: 18, scope: !3032)
!3109 = !DILocation(line: 74, column: 44, scope: !2265, inlinedAt: !3108)
!3110 = !DILocation(line: 74, column: 52, scope: !2265, inlinedAt: !3108)
!3111 = !DILocation(line: 74, column: 59, scope: !2265, inlinedAt: !3108)
!3112 = !DILocation(line: 74, column: 66, scope: !2265, inlinedAt: !3108)
!3113 = !DILocation(line: 804, column: 30, scope: !573, inlinedAt: !3114)
!3114 = distinct !DILocation(line: 75, column: 3, scope: !2265, inlinedAt: !3108)
!3115 = !DILocation(line: 804, column: 41, scope: !573, inlinedAt: !3114)
!3116 = !DILocation(line: 804, column: 48, scope: !573, inlinedAt: !3114)
!3117 = !DILocation(line: 804, column: 55, scope: !573, inlinedAt: !3114)
!3118 = !DILocation(line: 804, column: 62, scope: !573, inlinedAt: !3114)
!3119 = !DILocation(line: 808, column: 24, scope: !573, inlinedAt: !3114)
!3120 = !DILocation(line: 808, column: 52, scope: !573, inlinedAt: !3114)
!3121 = !DILocation(line: 808, column: 56, scope: !573, inlinedAt: !3114)
!3122 = !DILocation(line: 808, column: 10, scope: !573, inlinedAt: !3114)
!3123 = !DILocation(line: 808, column: 3, scope: !573, inlinedAt: !3114)
!3124 = !DILocation(line: 59, column: 27, scope: !607, inlinedAt: !3125)
!3125 = distinct !DILocation(line: 76, column: 10, scope: !2265, inlinedAt: !3108)
!3126 = !DILocation(line: 60, column: 17, scope: !607, inlinedAt: !3125)
!3127 = !DILocation(line: 60, column: 7, scope: !607, inlinedAt: !3125)
!3128 = !DILocation(line: 61, column: 3, scope: !607, inlinedAt: !3125)
!3129 = !DILocation(line: 62, column: 11, scope: !607, inlinedAt: !3125)
!3130 = !DILocation(line: 812, column: 30, scope: !621, inlinedAt: !3131)
!3131 = distinct !DILocation(line: 63, column: 7, scope: !607, inlinedAt: !3125)
!3132 = !DILocation(line: 812, column: 41, scope: !621, inlinedAt: !3131)
!3133 = !DILocation(line: 812, column: 48, scope: !621, inlinedAt: !3131)
!3134 = !DILocation(line: 812, column: 64, scope: !621, inlinedAt: !3131)
!3135 = !DILocation(line: 815, column: 50, scope: !621, inlinedAt: !3131)
!3136 = !DILocation(line: 815, column: 54, scope: !621, inlinedAt: !3131)
!3137 = !DILocation(line: 815, column: 10, scope: !621, inlinedAt: !3131)
!3138 = !DILocation(line: 815, column: 3, scope: !621, inlinedAt: !3131)
!3139 = !DILocation(line: 61, column: 7, scope: !607, inlinedAt: !3125)
!3140 = !DILocation(line: 63, column: 5, scope: !607, inlinedAt: !3125)
!3141 = !DILocation(line: 64, column: 3, scope: !607, inlinedAt: !3125)
!3142 = !DILocation(line: 65, column: 10, scope: !607, inlinedAt: !3125)
!3143 = !DILocation(line: 66, column: 1, scope: !607, inlinedAt: !3125)
!3144 = !DILocation(line: 65, column: 3, scope: !607, inlinedAt: !3125)
!3145 = !DILocation(line: 76, column: 3, scope: !2265, inlinedAt: !3108)
!3146 = !DILocation(line: 684, column: 7, scope: !3032)
!3147 = !DILocation(line: 684, column: 11, scope: !3032)
!3148 = !DILocation(line: 684, column: 16, scope: !3032)
!3149 = !DILocation(line: 685, column: 9, scope: !3032)
!3150 = !DILocation(line: 686, column: 1, scope: !3032)
!3151 = distinct !DISubprogram(name: "luaK_fixline", scope: !1, file: !1, line: 784, type: !766, isLocal: false, isDefinition: true, scopeLine: 784, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3152)
!3152 = !{!3153, !3154}
!3153 = !DILocalVariable(name: "fs", arg: 1, scope: !3151, file: !1, line: 784, type: !427)
!3154 = !DILocalVariable(name: "line", arg: 2, scope: !3151, file: !1, line: 784, type: !93)
!3155 = !DILocation(line: 784, column: 31, scope: !3151)
!3156 = !DILocation(line: 784, column: 39, scope: !3151)
!3157 = !DILocation(line: 785, column: 7, scope: !3151)
!3158 = !DILocation(line: 785, column: 10, scope: !3151)
!3159 = !{!545, !523, i64 40}
!3160 = !DILocation(line: 785, column: 23, scope: !3151)
!3161 = !DILocation(line: 785, column: 26, scope: !3151)
!3162 = !DILocation(line: 785, column: 3, scope: !3151)
!3163 = !DILocation(line: 785, column: 31, scope: !3151)
!3164 = !DILocation(line: 786, column: 1, scope: !3151)
!3165 = distinct !DISubprogram(name: "luaK_code", scope: !1, file: !1, line: 789, type: !3166, isLocal: true, isDefinition: true, scopeLine: 789, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3168)
!3166 = !DISubroutineType(types: !3167)
!3167 = !{!93, !427, !90, !93}
!3168 = !{!3169, !3170, !3171, !3172}
!3169 = !DILocalVariable(name: "fs", arg: 1, scope: !3165, file: !1, line: 789, type: !427)
!3170 = !DILocalVariable(name: "i", arg: 2, scope: !3165, file: !1, line: 789, type: !90)
!3171 = !DILocalVariable(name: "line", arg: 3, scope: !3165, file: !1, line: 789, type: !93)
!3172 = !DILocalVariable(name: "f", scope: !3165, file: !1, line: 790, type: !432)
!3173 = !DILocation(line: 789, column: 34, scope: !3165)
!3174 = !DILocation(line: 789, column: 50, scope: !3165)
!3175 = !DILocation(line: 789, column: 57, scope: !3165)
!3176 = !DILocation(line: 790, column: 18, scope: !3165)
!3177 = !DILocation(line: 790, column: 10, scope: !3165)
!3178 = !DILocalVariable(name: "fs", arg: 1, scope: !3179, file: !1, line: 163, type: !427)
!3179 = distinct !DISubprogram(name: "dischargejpc", scope: !1, file: !1, line: 163, type: !3180, isLocal: true, isDefinition: true, scopeLine: 163, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3182)
!3180 = !DISubroutineType(types: !3181)
!3181 = !{null, !427}
!3182 = !{!3178}
!3183 = !DILocation(line: 163, column: 38, scope: !3179, inlinedAt: !3184)
!3184 = distinct !DILocation(line: 791, column: 3, scope: !3165)
!3185 = !DILocation(line: 164, column: 24, scope: !3179, inlinedAt: !3184)
!3186 = !DILocation(line: 164, column: 33, scope: !3179, inlinedAt: !3184)
!3187 = !DILocation(line: 150, column: 38, scope: !782, inlinedAt: !3188)
!3188 = distinct !DILocation(line: 164, column: 3, scope: !3179, inlinedAt: !3184)
!3189 = !DILocation(line: 150, column: 46, scope: !782, inlinedAt: !3188)
!3190 = !DILocation(line: 150, column: 56, scope: !782, inlinedAt: !3188)
!3191 = !DILocation(line: 150, column: 69, scope: !782, inlinedAt: !3188)
!3192 = !DILocation(line: 151, column: 31, scope: !782, inlinedAt: !3188)
!3193 = !DILocation(line: 152, column: 3, scope: !782, inlinedAt: !3188)
!3194 = !DILocation(line: 152, column: 15, scope: !782, inlinedAt: !3188)
!3195 = !DILocation(line: 101, column: 16, scope: !677, inlinedAt: !3196)
!3196 = distinct !DILocation(line: 153, column: 16, scope: !791, inlinedAt: !3188)
!3197 = !DILocation(line: 100, column: 32, scope: !677, inlinedAt: !3196)
!3198 = !DILocation(line: 100, column: 40, scope: !677, inlinedAt: !3196)
!3199 = !DILocation(line: 101, column: 7, scope: !677, inlinedAt: !3196)
!3200 = !DILocation(line: 102, column: 14, scope: !689, inlinedAt: !3196)
!3201 = !DILocation(line: 102, column: 7, scope: !677, inlinedAt: !3196)
!3202 = !DILocation(line: 105, column: 15, scope: !689, inlinedAt: !3196)
!3203 = !DILocation(line: 105, column: 18, scope: !689, inlinedAt: !3196)
!3204 = !DILocation(line: 0, scope: !791, inlinedAt: !3188)
!3205 = !DILocation(line: 106, column: 1, scope: !677, inlinedAt: !3196)
!3206 = !DILocation(line: 153, column: 9, scope: !791, inlinedAt: !3188)
!3207 = !DILocation(line: 131, column: 37, scope: !814, inlinedAt: !3208)
!3208 = distinct !DILocation(line: 154, column: 9, scope: !823, inlinedAt: !3188)
!3209 = !DILocation(line: 131, column: 45, scope: !814, inlinedAt: !3208)
!3210 = !DILocation(line: 131, column: 55, scope: !814, inlinedAt: !3208)
!3211 = !DILocation(line: 109, column: 48, scope: !827, inlinedAt: !3212)
!3212 = distinct !DILocation(line: 132, column: 20, scope: !814, inlinedAt: !3208)
!3213 = !DILocation(line: 109, column: 56, scope: !827, inlinedAt: !3212)
!3214 = !DILocation(line: 110, column: 16, scope: !827, inlinedAt: !3212)
!3215 = !DILocation(line: 111, column: 10, scope: !838, inlinedAt: !3212)
!3216 = !DILocation(line: 111, column: 15, scope: !838, inlinedAt: !3212)
!3217 = !DILocation(line: 111, column: 18, scope: !838, inlinedAt: !3212)
!3218 = !DILocation(line: 111, column: 7, scope: !827, inlinedAt: !3212)
!3219 = !DILocation(line: 114, column: 5, scope: !838, inlinedAt: !3212)
!3220 = !DILocation(line: 133, column: 7, scope: !845, inlinedAt: !3208)
!3221 = !DILocation(line: 0, scope: !838, inlinedAt: !3212)
!3222 = !DILocation(line: 0, scope: !814, inlinedAt: !3208)
!3223 = !DILocation(line: 115, column: 1, scope: !827, inlinedAt: !3212)
!3224 = !DILocation(line: 132, column: 16, scope: !814, inlinedAt: !3208)
!3225 = !DILocation(line: 133, column: 22, scope: !845, inlinedAt: !3208)
!3226 = !DILocation(line: 133, column: 7, scope: !814, inlinedAt: !3208)
!3227 = !DILocation(line: 0, scope: !823, inlinedAt: !3188)
!3228 = !DILocation(line: 0, scope: !854, inlinedAt: !3208)
!3229 = !DILocation(line: 138, column: 10, scope: !854, inlinedAt: !3208)
!3230 = !DILocation(line: 138, column: 8, scope: !854, inlinedAt: !3208)
!3231 = !DILocation(line: 140, column: 3, scope: !814, inlinedAt: !3208)
!3232 = !DILocation(line: 141, column: 1, scope: !814, inlinedAt: !3208)
!3233 = !DILocation(line: 154, column: 9, scope: !791, inlinedAt: !3188)
!3234 = !DILocation(line: 80, column: 33, scope: !702, inlinedAt: !3235)
!3235 = distinct !DILocation(line: 155, column: 7, scope: !823, inlinedAt: !3188)
!3236 = !DILocation(line: 80, column: 41, scope: !702, inlinedAt: !3235)
!3237 = !DILocation(line: 80, column: 49, scope: !702, inlinedAt: !3235)
!3238 = !DILocation(line: 81, column: 16, scope: !702, inlinedAt: !3235)
!3239 = !DILocation(line: 82, column: 20, scope: !702, inlinedAt: !3235)
!3240 = !DILocation(line: 82, column: 7, scope: !702, inlinedAt: !3235)
!3241 = !DILocation(line: 84, column: 7, scope: !716, inlinedAt: !3235)
!3242 = !DILocation(line: 84, column: 19, scope: !716, inlinedAt: !3235)
!3243 = !DILocation(line: 84, column: 7, scope: !702, inlinedAt: !3235)
!3244 = !DILocation(line: 85, column: 26, scope: !716, inlinedAt: !3235)
!3245 = !DILocation(line: 85, column: 5, scope: !716, inlinedAt: !3235)
!3246 = !DILocation(line: 80, column: 33, scope: !702, inlinedAt: !3247)
!3247 = distinct !DILocation(line: 157, column: 7, scope: !823, inlinedAt: !3188)
!3248 = !DILocation(line: 80, column: 41, scope: !702, inlinedAt: !3247)
!3249 = !DILocation(line: 80, column: 49, scope: !702, inlinedAt: !3247)
!3250 = !DILocation(line: 81, column: 16, scope: !702, inlinedAt: !3247)
!3251 = !DILocation(line: 82, column: 20, scope: !702, inlinedAt: !3247)
!3252 = !DILocation(line: 82, column: 7, scope: !702, inlinedAt: !3247)
!3253 = !DILocation(line: 84, column: 7, scope: !716, inlinedAt: !3247)
!3254 = !DILocation(line: 84, column: 19, scope: !716, inlinedAt: !3247)
!3255 = !DILocation(line: 84, column: 7, scope: !702, inlinedAt: !3247)
!3256 = !DILocation(line: 85, column: 26, scope: !716, inlinedAt: !3247)
!3257 = !DILocation(line: 85, column: 5, scope: !716, inlinedAt: !3247)
!3258 = !DILocation(line: 86, column: 3, scope: !702, inlinedAt: !3247)
!3259 = !DILocation(line: 87, column: 1, scope: !702, inlinedAt: !3247)
!3260 = !DILocation(line: 793, column: 3, scope: !3261)
!3261 = distinct !DILexicalBlock(scope: !3165, file: !1, line: 793, column: 3)
!3262 = !DILocation(line: 160, column: 1, scope: !782, inlinedAt: !3188)
!3263 = !DILocation(line: 165, column: 11, scope: !3179, inlinedAt: !3184)
!3264 = !DILocation(line: 166, column: 1, scope: !3179, inlinedAt: !3184)
!3265 = !{!545, !526, i64 80}
!3266 = !DILocation(line: 793, column: 3, scope: !3165)
!3267 = !DILocation(line: 795, column: 6, scope: !3165)
!3268 = !DILocation(line: 795, column: 15, scope: !3165)
!3269 = !DILocation(line: 795, column: 3, scope: !3165)
!3270 = !DILocation(line: 795, column: 19, scope: !3165)
!3271 = !DILocation(line: 797, column: 3, scope: !3272)
!3272 = distinct !DILexicalBlock(scope: !3165, file: !1, line: 797, column: 3)
!3273 = !{!545, !526, i64 84}
!3274 = !DILocation(line: 797, column: 3, scope: !3165)
!3275 = !DILocation(line: 799, column: 6, scope: !3165)
!3276 = !DILocation(line: 799, column: 19, scope: !3165)
!3277 = !DILocation(line: 799, column: 3, scope: !3165)
!3278 = !DILocation(line: 799, column: 23, scope: !3165)
!3279 = !DILocation(line: 800, column: 16, scope: !3165)
!3280 = !DILocation(line: 800, column: 3, scope: !3165)
!3281 = distinct !DISubprogram(name: "luaK_setlist", scope: !1, file: !1, line: 819, type: !3282, isLocal: false, isDefinition: true, scopeLine: 819, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3284)
!3282 = !DISubroutineType(types: !3283)
!3283 = !{null, !427, !93, !93, !93}
!3284 = !{!3285, !3286, !3287, !3288, !3289, !3290}
!3285 = !DILocalVariable(name: "fs", arg: 1, scope: !3281, file: !1, line: 819, type: !427)
!3286 = !DILocalVariable(name: "base", arg: 2, scope: !3281, file: !1, line: 819, type: !93)
!3287 = !DILocalVariable(name: "nelems", arg: 3, scope: !3281, file: !1, line: 819, type: !93)
!3288 = !DILocalVariable(name: "tostore", arg: 4, scope: !3281, file: !1, line: 819, type: !93)
!3289 = !DILocalVariable(name: "c", scope: !3281, file: !1, line: 820, type: !93)
!3290 = !DILocalVariable(name: "b", scope: !3281, file: !1, line: 821, type: !93)
!3291 = !DILocation(line: 819, column: 31, scope: !3281)
!3292 = !DILocation(line: 819, column: 39, scope: !3281)
!3293 = !DILocation(line: 819, column: 49, scope: !3281)
!3294 = !DILocation(line: 819, column: 61, scope: !3281)
!3295 = !DILocation(line: 820, column: 20, scope: !3281)
!3296 = !DILocation(line: 820, column: 24, scope: !3281)
!3297 = !DILocation(line: 820, column: 43, scope: !3281)
!3298 = !DILocation(line: 820, column: 7, scope: !3281)
!3299 = !DILocation(line: 821, column: 20, scope: !3281)
!3300 = !DILocation(line: 823, column: 9, scope: !3301)
!3301 = distinct !DILexicalBlock(scope: !3281, file: !1, line: 823, column: 7)
!3302 = !DILocation(line: 823, column: 7, scope: !3281)
!3303 = !DILocation(line: 804, column: 30, scope: !573, inlinedAt: !3304)
!3304 = distinct !DILocation(line: 824, column: 5, scope: !3301)
!3305 = !DILocation(line: 804, column: 30, scope: !573, inlinedAt: !3306)
!3306 = distinct !DILocation(line: 826, column: 5, scope: !3307)
!3307 = distinct !DILexicalBlock(scope: !3301, file: !1, line: 825, column: 8)
!3308 = !DILocation(line: 804, column: 41, scope: !573, inlinedAt: !3304)
!3309 = !DILocation(line: 804, column: 41, scope: !573, inlinedAt: !3306)
!3310 = !DILocation(line: 804, column: 48, scope: !573, inlinedAt: !3304)
!3311 = !DILocation(line: 804, column: 48, scope: !573, inlinedAt: !3306)
!3312 = !DILocation(line: 808, column: 24, scope: !573, inlinedAt: !3304)
!3313 = !DILocation(line: 804, column: 62, scope: !573, inlinedAt: !3304)
!3314 = !DILocation(line: 808, column: 52, scope: !573, inlinedAt: !3304)
!3315 = !DILocation(line: 808, column: 56, scope: !573, inlinedAt: !3304)
!3316 = !DILocation(line: 808, column: 10, scope: !573, inlinedAt: !3304)
!3317 = !DILocation(line: 808, column: 3, scope: !573, inlinedAt: !3304)
!3318 = !DILocation(line: 824, column: 5, scope: !3301)
!3319 = !DILocation(line: 804, column: 62, scope: !573, inlinedAt: !3306)
!3320 = !DILocation(line: 808, column: 52, scope: !573, inlinedAt: !3306)
!3321 = !DILocation(line: 808, column: 56, scope: !573, inlinedAt: !3306)
!3322 = !DILocation(line: 808, column: 10, scope: !573, inlinedAt: !3306)
!3323 = !DILocation(line: 808, column: 3, scope: !573, inlinedAt: !3306)
!3324 = !DILocation(line: 827, column: 45, scope: !3307)
!3325 = !DILocation(line: 827, column: 49, scope: !3307)
!3326 = !DILocation(line: 827, column: 5, scope: !3307)
!3327 = !DILocation(line: 829, column: 22, scope: !3281)
!3328 = !DILocation(line: 829, column: 7, scope: !3281)
!3329 = !DILocation(line: 829, column: 15, scope: !3281)
!3330 = !DILocation(line: 830, column: 1, scope: !3281)
!3331 = distinct !DISubprogram(name: "discharge2reg", scope: !1, file: !1, line: 343, type: !1062, isLocal: true, isDefinition: true, scopeLine: 343, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3332)
!3332 = !{!3333, !3334, !3335, !3336}
!3333 = !DILocalVariable(name: "fs", arg: 1, scope: !3331, file: !1, line: 343, type: !427)
!3334 = !DILocalVariable(name: "e", arg: 2, scope: !3331, file: !1, line: 343, type: !1064)
!3335 = !DILocalVariable(name: "reg", arg: 3, scope: !3331, file: !1, line: 343, type: !93)
!3336 = !DILocalVariable(name: "pc", scope: !3337, file: !1, line: 363, type: !385)
!3337 = distinct !DILexicalBlock(scope: !3338, file: !1, line: 362, column: 22)
!3338 = distinct !DILexicalBlock(scope: !3331, file: !1, line: 345, column: 17)
!3339 = !DILocation(line: 343, column: 39, scope: !3331)
!3340 = !DILocation(line: 343, column: 52, scope: !3331)
!3341 = !DILocation(line: 343, column: 59, scope: !3331)
!3342 = !DILocation(line: 344, column: 3, scope: !3331)
!3343 = !DILocation(line: 345, column: 14, scope: !3331)
!3344 = !DILocation(line: 345, column: 3, scope: !3331)
!3345 = !DILocation(line: 347, column: 7, scope: !3346)
!3346 = distinct !DILexicalBlock(scope: !3338, file: !1, line: 346, column: 16)
!3347 = !DILocation(line: 348, column: 7, scope: !3346)
!3348 = !DILocation(line: 351, column: 47, scope: !3349)
!3349 = distinct !DILexicalBlock(scope: !3338, file: !1, line: 350, column: 31)
!3350 = !DILocation(line: 804, column: 30, scope: !573, inlinedAt: !3351)
!3351 = distinct !DILocation(line: 351, column: 7, scope: !3349)
!3352 = !DILocation(line: 804, column: 41, scope: !573, inlinedAt: !3351)
!3353 = !DILocation(line: 804, column: 48, scope: !573, inlinedAt: !3351)
!3354 = !DILocation(line: 804, column: 55, scope: !573, inlinedAt: !3351)
!3355 = !DILocation(line: 804, column: 62, scope: !573, inlinedAt: !3351)
!3356 = !DILocation(line: 808, column: 24, scope: !573, inlinedAt: !3351)
!3357 = !DILocation(line: 808, column: 52, scope: !573, inlinedAt: !3351)
!3358 = !DILocation(line: 808, column: 56, scope: !573, inlinedAt: !3351)
!3359 = !DILocation(line: 808, column: 10, scope: !573, inlinedAt: !3351)
!3360 = !DILocation(line: 808, column: 3, scope: !573, inlinedAt: !3351)
!3361 = !DILocation(line: 352, column: 7, scope: !3349)
!3362 = !DILocation(line: 355, column: 42, scope: !3363)
!3363 = distinct !DILexicalBlock(scope: !3338, file: !1, line: 354, column: 14)
!3364 = !DILocation(line: 355, column: 46, scope: !3363)
!3365 = !DILocation(line: 812, column: 30, scope: !621, inlinedAt: !3366)
!3366 = distinct !DILocation(line: 355, column: 7, scope: !3363)
!3367 = !DILocation(line: 812, column: 41, scope: !621, inlinedAt: !3366)
!3368 = !DILocation(line: 812, column: 48, scope: !621, inlinedAt: !3366)
!3369 = !DILocation(line: 812, column: 64, scope: !621, inlinedAt: !3366)
!3370 = !DILocation(line: 815, column: 24, scope: !621, inlinedAt: !3366)
!3371 = !DILocation(line: 815, column: 50, scope: !621, inlinedAt: !3366)
!3372 = !DILocation(line: 815, column: 54, scope: !621, inlinedAt: !3366)
!3373 = !DILocation(line: 815, column: 10, scope: !621, inlinedAt: !3366)
!3374 = !DILocation(line: 815, column: 3, scope: !621, inlinedAt: !3366)
!3375 = !DILocation(line: 356, column: 7, scope: !3363)
!3376 = !DILocation(line: 359, column: 61, scope: !3377)
!3377 = distinct !DILexicalBlock(scope: !3338, file: !1, line: 358, column: 17)
!3378 = !DILocation(line: 257, column: 30, scope: !1044, inlinedAt: !3379)
!3379 = distinct !DILocation(line: 359, column: 39, scope: !3377)
!3380 = !DILocation(line: 257, column: 45, scope: !1044, inlinedAt: !3379)
!3381 = !DILocation(line: 258, column: 3, scope: !1044, inlinedAt: !3379)
!3382 = !DILocation(line: 259, column: 3, scope: !1052, inlinedAt: !3379)
!3383 = !DILocation(line: 258, column: 10, scope: !1044, inlinedAt: !3379)
!3384 = !DILocation(line: 260, column: 10, scope: !1044, inlinedAt: !3379)
!3385 = !DILocation(line: 261, column: 1, scope: !1044, inlinedAt: !3379)
!3386 = !DILocation(line: 260, column: 3, scope: !1044, inlinedAt: !3379)
!3387 = !DILocation(line: 812, column: 30, scope: !621, inlinedAt: !3388)
!3388 = distinct !DILocation(line: 359, column: 7, scope: !3377)
!3389 = !DILocation(line: 812, column: 41, scope: !621, inlinedAt: !3388)
!3390 = !DILocation(line: 812, column: 48, scope: !621, inlinedAt: !3388)
!3391 = !DILocation(line: 812, column: 64, scope: !621, inlinedAt: !3388)
!3392 = !DILocation(line: 815, column: 24, scope: !621, inlinedAt: !3388)
!3393 = !DILocation(line: 815, column: 50, scope: !621, inlinedAt: !3388)
!3394 = !DILocation(line: 815, column: 54, scope: !621, inlinedAt: !3388)
!3395 = !DILocation(line: 815, column: 10, scope: !621, inlinedAt: !3388)
!3396 = !DILocation(line: 815, column: 3, scope: !621, inlinedAt: !3388)
!3397 = !DILocation(line: 360, column: 7, scope: !3377)
!3398 = !DILocation(line: 363, column: 26, scope: !3337)
!3399 = !DILocation(line: 363, column: 20, scope: !3337)
!3400 = !DILocation(line: 364, column: 7, scope: !3337)
!3401 = !DILocation(line: 368, column: 21, scope: !3402)
!3402 = distinct !DILexicalBlock(scope: !3403, file: !1, line: 368, column: 11)
!3403 = distinct !DILexicalBlock(scope: !3338, file: !1, line: 367, column: 21)
!3404 = !DILocation(line: 368, column: 25, scope: !3402)
!3405 = !DILocation(line: 368, column: 15, scope: !3402)
!3406 = !DILocation(line: 368, column: 11, scope: !3403)
!3407 = !DILocation(line: 804, column: 30, scope: !573, inlinedAt: !3408)
!3408 = distinct !DILocation(line: 369, column: 9, scope: !3402)
!3409 = !DILocation(line: 804, column: 41, scope: !573, inlinedAt: !3408)
!3410 = !DILocation(line: 804, column: 48, scope: !573, inlinedAt: !3408)
!3411 = !DILocation(line: 804, column: 55, scope: !573, inlinedAt: !3408)
!3412 = !DILocation(line: 804, column: 62, scope: !573, inlinedAt: !3408)
!3413 = !DILocation(line: 808, column: 24, scope: !573, inlinedAt: !3408)
!3414 = !DILocation(line: 808, column: 52, scope: !573, inlinedAt: !3408)
!3415 = !DILocation(line: 808, column: 56, scope: !573, inlinedAt: !3408)
!3416 = !DILocation(line: 808, column: 10, scope: !573, inlinedAt: !3408)
!3417 = !DILocation(line: 808, column: 3, scope: !573, inlinedAt: !3408)
!3418 = !DILocation(line: 369, column: 9, scope: !3402)
!3419 = !DILocation(line: 377, column: 6, scope: !3331)
!3420 = !DILocation(line: 377, column: 10, scope: !3331)
!3421 = !DILocation(line: 377, column: 15, scope: !3331)
!3422 = !DILocation(line: 378, column: 8, scope: !3331)
!3423 = !DILocation(line: 379, column: 1, scope: !3331)
!3424 = distinct !DISubprogram(name: "removevalues", scope: !1, file: !1, line: 144, type: !766, isLocal: true, isDefinition: true, scopeLine: 144, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3425)
!3425 = !{!3426, !3427}
!3426 = !DILocalVariable(name: "fs", arg: 1, scope: !3424, file: !1, line: 144, type: !427)
!3427 = !DILocalVariable(name: "list", arg: 2, scope: !3424, file: !1, line: 144, type: !93)
!3428 = !DILocation(line: 144, column: 38, scope: !3424)
!3429 = !DILocation(line: 144, column: 46, scope: !3424)
!3430 = !DILocation(line: 145, column: 3, scope: !3424)
!3431 = !DILocation(line: 145, column: 15, scope: !3432)
!3432 = distinct !DILexicalBlock(scope: !3433, file: !1, line: 145, column: 3)
!3433 = distinct !DILexicalBlock(scope: !3424, file: !1, line: 145, column: 3)
!3434 = !DILocation(line: 145, column: 3, scope: !3433)
!3435 = !DILocation(line: 110, column: 26, scope: !827, inlinedAt: !3436)
!3436 = distinct !DILocation(line: 132, column: 20, scope: !814, inlinedAt: !3437)
!3437 = distinct !DILocation(line: 146, column: 7, scope: !3432)
!3438 = !DILocation(line: 110, column: 29, scope: !827, inlinedAt: !3436)
!3439 = !DILocation(line: 131, column: 37, scope: !814, inlinedAt: !3437)
!3440 = !DILocation(line: 131, column: 45, scope: !814, inlinedAt: !3437)
!3441 = !DILocation(line: 131, column: 55, scope: !814, inlinedAt: !3437)
!3442 = !DILocation(line: 109, column: 48, scope: !827, inlinedAt: !3436)
!3443 = !DILocation(line: 109, column: 56, scope: !827, inlinedAt: !3436)
!3444 = !DILocation(line: 110, column: 22, scope: !827, inlinedAt: !3436)
!3445 = !DILocation(line: 110, column: 16, scope: !827, inlinedAt: !3436)
!3446 = !DILocation(line: 111, column: 10, scope: !838, inlinedAt: !3436)
!3447 = !DILocation(line: 111, column: 15, scope: !838, inlinedAt: !3436)
!3448 = !DILocation(line: 111, column: 18, scope: !838, inlinedAt: !3436)
!3449 = !DILocation(line: 111, column: 7, scope: !827, inlinedAt: !3436)
!3450 = !DILocation(line: 112, column: 5, scope: !838, inlinedAt: !3436)
!3451 = !DILocation(line: 114, column: 5, scope: !838, inlinedAt: !3436)
!3452 = !DILocation(line: 133, column: 7, scope: !845, inlinedAt: !3437)
!3453 = !DILocation(line: 0, scope: !838, inlinedAt: !3436)
!3454 = !DILocation(line: 115, column: 1, scope: !827, inlinedAt: !3436)
!3455 = !DILocation(line: 132, column: 16, scope: !814, inlinedAt: !3437)
!3456 = !DILocation(line: 133, column: 22, scope: !845, inlinedAt: !3437)
!3457 = !DILocation(line: 133, column: 7, scope: !814, inlinedAt: !3437)
!3458 = !DILocation(line: 0, scope: !3432)
!3459 = !DILocation(line: 0, scope: !854, inlinedAt: !3437)
!3460 = !DILocation(line: 138, column: 10, scope: !854, inlinedAt: !3437)
!3461 = !DILocation(line: 138, column: 8, scope: !854, inlinedAt: !3437)
!3462 = !DILocation(line: 140, column: 3, scope: !814, inlinedAt: !3437)
!3463 = !DILocation(line: 141, column: 1, scope: !814, inlinedAt: !3437)
!3464 = !DILocation(line: 100, column: 32, scope: !677, inlinedAt: !3465)
!3465 = distinct !DILocation(line: 145, column: 34, scope: !3432)
!3466 = !DILocation(line: 100, column: 40, scope: !677, inlinedAt: !3465)
!3467 = !DILocation(line: 101, column: 16, scope: !677, inlinedAt: !3465)
!3468 = !DILocation(line: 101, column: 7, scope: !677, inlinedAt: !3465)
!3469 = !DILocation(line: 102, column: 14, scope: !689, inlinedAt: !3465)
!3470 = !DILocation(line: 102, column: 7, scope: !677, inlinedAt: !3465)
!3471 = !DILocation(line: 103, column: 5, scope: !689, inlinedAt: !3465)
!3472 = !DILocation(line: 106, column: 1, scope: !677, inlinedAt: !3465)
!3473 = !DILocation(line: 145, column: 3, scope: !3432)
!3474 = !DILocation(line: 105, column: 15, scope: !689, inlinedAt: !3465)
!3475 = !DILocation(line: 105, column: 18, scope: !689, inlinedAt: !3465)
!3476 = !DILocation(line: 105, column: 5, scope: !689, inlinedAt: !3465)
!3477 = distinct !{!3477, !3434, !3478}
!3478 = !DILocation(line: 146, column: 36, scope: !3433)
!3479 = !DILocation(line: 147, column: 1, scope: !3424)
