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

; Function Attrs: noredzone nounwind
define hidden void @luaK_nil(%struct.FuncState* nocapture, i32, i32) local_unnamed_addr #0 !dbg !424 {
  %4 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 6, !dbg !520
  %5 = load i32, i32* %4, align 8, !dbg !520, !tbaa !521
  %6 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 7, !dbg !528
  %7 = load i32, i32* %6, align 4, !dbg !528, !tbaa !529
  %8 = icmp sgt i32 %5, %7, !dbg !530
  br i1 %8, label %9, label %43, !dbg !531

; <label>:9:                                      ; preds = %3
  %10 = icmp eq i32 %5, 0, !dbg !532
  br i1 %10, label %11, label %16, !dbg !533

; <label>:11:                                     ; preds = %9
  %12 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !534
  %13 = load i8, i8* %12, align 2, !dbg !534, !tbaa !537
  %14 = zext i8 %13 to i32, !dbg !538
  %15 = icmp sgt i32 %14, %1, !dbg !539
  br i1 %15, label %43, label %55, !dbg !540

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
  br i1 %26, label %27, label %43, !dbg !552

; <label>:27:                                     ; preds = %16
  %28 = lshr i32 %24, 6, !dbg !553
  %29 = and i32 %28, 255, !dbg !553
  %30 = lshr i32 %24, 23, !dbg !555
  %31 = icmp sgt i32 %29, %1, !dbg !557
  %32 = add nuw nsw i32 %30, 1, !dbg !559
  %33 = icmp slt i32 %32, %1, !dbg !560
  %34 = or i1 %31, %33, !dbg !561
  br i1 %34, label %43, label %35, !dbg !561

; <label>:35:                                     ; preds = %27
  %36 = add nsw i32 %2, %1, !dbg !562
  %37 = add nsw i32 %36, -1, !dbg !565
  %38 = icmp sgt i32 %37, %30, !dbg !566
  br i1 %38, label %39, label %55, !dbg !567

; <label>:39:                                     ; preds = %35
  %40 = and i32 %24, 8388607, !dbg !568
  %41 = shl i32 %37, 23, !dbg !568
  %42 = or i32 %40, %41, !dbg !568
  store i32 %42, i32* %23, align 4, !dbg !568, !tbaa !550
  br label %55

; <label>:43:                                     ; preds = %27, %11, %16, %3
  %44 = add nsw i32 %2, %1, !dbg !569
  %45 = shl i32 %1, 6, !dbg !585
  %46 = shl i32 %44, 23, !dbg !585
  %47 = add i32 %46, -8388608, !dbg !585
  %48 = or i32 %45, %47, !dbg !585
  %49 = or i32 %48, 3, !dbg !585
  %50 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !586
  %51 = load %struct.LexState*, %struct.LexState** %50, align 8, !dbg !586, !tbaa !587
  %52 = getelementptr inbounds %struct.LexState, %struct.LexState* %51, i64 0, i32 2, !dbg !588
  %53 = load i32, i32* %52, align 8, !dbg !588, !tbaa !589
  %54 = tail call fastcc i32 @luaK_code(%struct.FuncState* nonnull %0, i32 %49, i32 %53) #5, !dbg !592
  br label %55, !dbg !593

; <label>:55:                                     ; preds = %35, %39, %11, %43
  ret void, !dbg !593
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone nounwind
define hidden i32 @luaK_codeABC(%struct.FuncState* nocapture, i32, i32, i32, i32) local_unnamed_addr #0 !dbg !571 {
  %6 = shl i32 %2, 6, !dbg !599
  %7 = or i32 %6, %1, !dbg !599
  %8 = shl i32 %3, 23, !dbg !599
  %9 = or i32 %7, %8, !dbg !599
  %10 = shl i32 %4, 14, !dbg !599
  %11 = or i32 %9, %10, !dbg !599
  %12 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !600
  %13 = load %struct.LexState*, %struct.LexState** %12, align 8, !dbg !600, !tbaa !587
  %14 = getelementptr inbounds %struct.LexState, %struct.LexState* %13, i64 0, i32 2, !dbg !601
  %15 = load i32, i32* %14, align 8, !dbg !601, !tbaa !589
  %16 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %11, i32 %15) #6, !dbg !602
  ret i32 %16, !dbg !603
}

; Function Attrs: noredzone nounwind
define hidden i32 @luaK_jump(%struct.FuncState* nocapture) local_unnamed_addr #0 !dbg !604 {
  %2 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 8, !dbg !612
  %3 = load i32, i32* %2, align 8, !dbg !612, !tbaa !613
  store i32 -1, i32* %2, align 8, !dbg !615, !tbaa !613
  %4 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !629
  %5 = load %struct.LexState*, %struct.LexState** %4, align 8, !dbg !629, !tbaa !587
  %6 = getelementptr inbounds %struct.LexState, %struct.LexState* %5, i64 0, i32 2, !dbg !630
  %7 = load i32, i32* %6, align 8, !dbg !630, !tbaa !589
  %8 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 2147450902, i32 %7) #5, !dbg !631
  %9 = icmp eq i32 %3, -1, !dbg !648
  br i1 %9, label %43, label %10, !dbg !649

; <label>:10:                                     ; preds = %1
  %11 = icmp eq i32 %8, -1, !dbg !650
  br i1 %11, label %43, label %12, !dbg !651

; <label>:12:                                     ; preds = %10
  %13 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %14 = load %struct.Proto*, %struct.Proto** %13, align 8, !tbaa !542
  %15 = getelementptr inbounds %struct.Proto, %struct.Proto* %14, i64 0, i32 4
  %16 = load i32*, i32** %15, align 8, !tbaa !544
  br label %17, !dbg !652

; <label>:17:                                     ; preds = %17, %12
  %18 = phi i32 [ %27, %17 ], [ %8, %12 ], !dbg !661
  %19 = sext i32 %18 to i64, !dbg !652
  %20 = getelementptr inbounds i32, i32* %16, i64 %19, !dbg !652
  %21 = load i32, i32* %20, align 4, !dbg !652, !tbaa !550
  %22 = lshr i32 %21, 14, !dbg !652
  %23 = add nsw i32 %22, -131071, !dbg !652
  %24 = icmp eq i32 %23, -1, !dbg !666
  %25 = add nsw i32 %18, 1, !dbg !668
  %26 = add nsw i32 %25, %23, !dbg !669
  %27 = select i1 %24, i32 -1, i32 %26, !dbg !670
  %28 = icmp eq i32 %27, -1, !dbg !672
  br i1 %28, label %29, label %17, !dbg !673, !llvm.loop !674

; <label>:29:                                     ; preds = %17
  %30 = getelementptr inbounds i32, i32* %16, i64 %19, !dbg !652
  %31 = xor i32 %18, -1, !dbg !689
  %32 = add i32 %3, %31, !dbg !689
  %33 = tail call i32 @abs(i32 %32) #5, !dbg !691
  %34 = icmp sgt i32 %33, 131071, !dbg !693
  br i1 %34, label %35, label %37, !dbg !694

; <label>:35:                                     ; preds = %29
  %36 = load %struct.LexState*, %struct.LexState** %4, align 8, !dbg !695, !tbaa !587
  tail call void @luaX_syntaxerror(%struct.LexState* %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !696
  br label %37, !dbg !696

; <label>:37:                                     ; preds = %35, %29
  %38 = load i32, i32* %30, align 4, !dbg !697, !tbaa !550
  %39 = and i32 %38, 16383, !dbg !697
  %40 = shl i32 %32, 14, !dbg !697
  %41 = add i32 %40, 2147467264, !dbg !697
  %42 = or i32 %39, %41, !dbg !697
  store i32 %42, i32* %30, align 4, !dbg !697, !tbaa !550
  br label %43

; <label>:43:                                     ; preds = %10, %1, %37
  %44 = phi i32 [ %8, %1 ], [ %8, %37 ], [ %3, %10 ], !dbg !698
  ret i32 %44, !dbg !699
}

; Function Attrs: noredzone nounwind
define hidden i32 @luaK_codeABx(%struct.FuncState* nocapture, i32, i32, i32) local_unnamed_addr #0 !dbg !617 {
  %5 = shl i32 %2, 6, !dbg !704
  %6 = or i32 %5, %1, !dbg !704
  %7 = shl i32 %3, 14, !dbg !704
  %8 = or i32 %6, %7, !dbg !704
  %9 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !705
  %10 = load %struct.LexState*, %struct.LexState** %9, align 8, !dbg !705, !tbaa !587
  %11 = getelementptr inbounds %struct.LexState, %struct.LexState* %10, i64 0, i32 2, !dbg !706
  %12 = load i32, i32* %11, align 8, !dbg !706, !tbaa !589
  %13 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %8, i32 %12) #6, !dbg !707
  ret i32 %13, !dbg !708
}

; Function Attrs: noredzone nounwind
define hidden void @luaK_concat(%struct.FuncState* nocapture readonly, i32* nocapture, i32) local_unnamed_addr #0 !dbg !634 {
  %4 = icmp eq i32 %2, -1, !dbg !712
  br i1 %4, label %41, label %5, !dbg !713

; <label>:5:                                      ; preds = %3
  %6 = load i32, i32* %1, align 4, !dbg !714, !tbaa !550
  %7 = icmp eq i32 %6, -1, !dbg !715
  br i1 %7, label %13, label %8, !dbg !716

; <label>:8:                                      ; preds = %5
  %9 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %10 = load %struct.Proto*, %struct.Proto** %9, align 8, !tbaa !542
  %11 = getelementptr inbounds %struct.Proto, %struct.Proto* %10, i64 0, i32 4
  %12 = load i32*, i32** %11, align 8, !tbaa !544
  br label %14, !dbg !717

; <label>:13:                                     ; preds = %5
  store i32 %2, i32* %1, align 4, !dbg !719, !tbaa !550
  br label %41, !dbg !720

; <label>:14:                                     ; preds = %8, %14
  %15 = phi i32 [ %24, %14 ], [ %6, %8 ], !dbg !721
  %16 = sext i32 %15 to i64, !dbg !717
  %17 = getelementptr inbounds i32, i32* %12, i64 %16, !dbg !717
  %18 = load i32, i32* %17, align 4, !dbg !717, !tbaa !550
  %19 = lshr i32 %18, 14, !dbg !717
  %20 = add nsw i32 %19, -131071, !dbg !717
  %21 = icmp eq i32 %20, -1, !dbg !726
  %22 = add nsw i32 %15, 1, !dbg !727
  %23 = add nsw i32 %22, %20, !dbg !728
  %24 = select i1 %21, i32 -1, i32 %23, !dbg !729
  %25 = icmp eq i32 %24, -1, !dbg !731
  br i1 %25, label %26, label %14, !dbg !675, !llvm.loop !674

; <label>:26:                                     ; preds = %14
  %27 = getelementptr inbounds i32, i32* %12, i64 %16, !dbg !717
  %28 = xor i32 %15, -1, !dbg !737
  %29 = add i32 %28, %2, !dbg !737
  %30 = tail call i32 @abs(i32 %29) #5, !dbg !739
  %31 = icmp sgt i32 %30, 131071, !dbg !740
  br i1 %31, label %32, label %35, !dbg !741

; <label>:32:                                     ; preds = %26
  %33 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !742
  %34 = load %struct.LexState*, %struct.LexState** %33, align 8, !dbg !742, !tbaa !587
  tail call void @luaX_syntaxerror(%struct.LexState* %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !743
  br label %35, !dbg !743

; <label>:35:                                     ; preds = %26, %32
  %36 = load i32, i32* %27, align 4, !dbg !744, !tbaa !550
  %37 = and i32 %36, 16383, !dbg !744
  %38 = shl i32 %29, 14, !dbg !744
  %39 = add i32 %38, 2147467264, !dbg !744
  %40 = or i32 %37, %39, !dbg !744
  store i32 %40, i32* %27, align 4, !dbg !744, !tbaa !550
  br label %41

; <label>:41:                                     ; preds = %13, %35, %3
  ret void, !dbg !745
}

; Function Attrs: noredzone nounwind
define hidden void @luaK_ret(%struct.FuncState* nocapture, i32, i32) local_unnamed_addr #0 !dbg !746 {
  %4 = shl i32 %1, 6, !dbg !760
  %5 = shl i32 %2, 23, !dbg !760
  %6 = add i32 %5, 8388608, !dbg !760
  %7 = or i32 %4, %6, !dbg !760
  %8 = or i32 %7, 30, !dbg !760
  %9 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !761
  %10 = load %struct.LexState*, %struct.LexState** %9, align 8, !dbg !761, !tbaa !587
  %11 = getelementptr inbounds %struct.LexState, %struct.LexState* %10, i64 0, i32 2, !dbg !762
  %12 = load i32, i32* %11, align 8, !dbg !762, !tbaa !589
  %13 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %8, i32 %12) #5, !dbg !763
  ret void, !dbg !764
}

; Function Attrs: noredzone nounwind
define hidden i32 @luaK_getlabel(%struct.FuncState* nocapture) local_unnamed_addr #0 !dbg !765 {
  %2 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 6, !dbg !769
  %3 = load i32, i32* %2, align 8, !dbg !769, !tbaa !521
  %4 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 7, !dbg !770
  store i32 %3, i32* %4, align 4, !dbg !771, !tbaa !529
  ret i32 %3, !dbg !772
}

; Function Attrs: noredzone nounwind
define hidden void @luaK_patchlist(%struct.FuncState* nocapture, i32, i32) local_unnamed_addr #0 !dbg !773 {
  %4 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 6, !dbg !781
  %5 = load i32, i32* %4, align 8, !dbg !781, !tbaa !521
  %6 = icmp eq i32 %5, %2, !dbg !783
  br i1 %6, label %7, label %47, !dbg !784

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 7, !dbg !796
  store i32 %2, i32* %8, align 4, !dbg !797, !tbaa !529
  %9 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 8, !dbg !798
  %10 = icmp eq i32 %1, -1, !dbg !803
  br i1 %10, label %48, label %11, !dbg !804

; <label>:11:                                     ; preds = %7
  %12 = load i32, i32* %9, align 4, !dbg !805, !tbaa !550
  %13 = icmp eq i32 %12, -1, !dbg !806
  br i1 %13, label %19, label %14, !dbg !807

; <label>:14:                                     ; preds = %11
  %15 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %16 = load %struct.Proto*, %struct.Proto** %15, align 8, !tbaa !542
  %17 = getelementptr inbounds %struct.Proto, %struct.Proto* %16, i64 0, i32 4
  %18 = load i32*, i32** %17, align 8, !tbaa !544
  br label %20, !dbg !808

; <label>:19:                                     ; preds = %11
  store i32 %1, i32* %9, align 4, !dbg !810, !tbaa !550
  br label %48, !dbg !811

; <label>:20:                                     ; preds = %20, %14
  %21 = phi i32 [ %30, %20 ], [ %12, %14 ], !dbg !812
  %22 = sext i32 %21 to i64, !dbg !808
  %23 = getelementptr inbounds i32, i32* %18, i64 %22, !dbg !808
  %24 = load i32, i32* %23, align 4, !dbg !808, !tbaa !550
  %25 = lshr i32 %24, 14, !dbg !808
  %26 = add nsw i32 %25, -131071, !dbg !808
  %27 = icmp eq i32 %26, -1, !dbg !817
  %28 = add nsw i32 %21, 1, !dbg !818
  %29 = add nsw i32 %28, %26, !dbg !819
  %30 = select i1 %27, i32 -1, i32 %29, !dbg !820
  %31 = icmp eq i32 %30, -1, !dbg !822
  br i1 %31, label %32, label %20, !dbg !823, !llvm.loop !674

; <label>:32:                                     ; preds = %20
  %33 = getelementptr inbounds i32, i32* %18, i64 %22, !dbg !808
  %34 = xor i32 %21, -1, !dbg !829
  %35 = add i32 %34, %1, !dbg !829
  %36 = tail call i32 @abs(i32 %35) #5, !dbg !831
  %37 = icmp sgt i32 %36, 131071, !dbg !832
  br i1 %37, label %38, label %41, !dbg !833

; <label>:38:                                     ; preds = %32
  %39 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !834
  %40 = load %struct.LexState*, %struct.LexState** %39, align 8, !dbg !834, !tbaa !587
  tail call void @luaX_syntaxerror(%struct.LexState* %40, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !835
  br label %41, !dbg !835

; <label>:41:                                     ; preds = %38, %32
  %42 = load i32, i32* %33, align 4, !dbg !836, !tbaa !550
  %43 = and i32 %42, 16383, !dbg !836
  %44 = shl i32 %35, 14, !dbg !836
  %45 = add i32 %44, 2147467264, !dbg !836
  %46 = or i32 %43, %45, !dbg !836
  store i32 %46, i32* %33, align 4, !dbg !836, !tbaa !550
  br label %48

; <label>:47:                                     ; preds = %3
  tail call fastcc void @patchlistaux(%struct.FuncState* nonnull %0, i32 %1, i32 %2, i32 255, i32 %2) #6, !dbg !837
  br label %48

; <label>:48:                                     ; preds = %41, %19, %7, %47
  ret void, !dbg !839
}

; Function Attrs: noredzone nounwind
define hidden void @luaK_patchtohere(%struct.FuncState* nocapture, i32) local_unnamed_addr #0 !dbg !786 {
  %3 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 6, !dbg !844
  %4 = load i32, i32* %3, align 8, !dbg !844, !tbaa !521
  %5 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 7, !dbg !845
  store i32 %4, i32* %5, align 4, !dbg !846, !tbaa !529
  %6 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 8, !dbg !847
  %7 = icmp eq i32 %1, -1, !dbg !852
  br i1 %7, label %44, label %8, !dbg !853

; <label>:8:                                      ; preds = %2
  %9 = load i32, i32* %6, align 4, !dbg !854, !tbaa !550
  %10 = icmp eq i32 %9, -1, !dbg !855
  br i1 %10, label %16, label %11, !dbg !856

; <label>:11:                                     ; preds = %8
  %12 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %13 = load %struct.Proto*, %struct.Proto** %12, align 8, !tbaa !542
  %14 = getelementptr inbounds %struct.Proto, %struct.Proto* %13, i64 0, i32 4
  %15 = load i32*, i32** %14, align 8, !tbaa !544
  br label %17, !dbg !857

; <label>:16:                                     ; preds = %8
  store i32 %1, i32* %6, align 4, !dbg !859, !tbaa !550
  br label %44, !dbg !860

; <label>:17:                                     ; preds = %17, %11
  %18 = phi i32 [ %27, %17 ], [ %9, %11 ], !dbg !861
  %19 = sext i32 %18 to i64, !dbg !857
  %20 = getelementptr inbounds i32, i32* %15, i64 %19, !dbg !857
  %21 = load i32, i32* %20, align 4, !dbg !857, !tbaa !550
  %22 = lshr i32 %21, 14, !dbg !857
  %23 = add nsw i32 %22, -131071, !dbg !857
  %24 = icmp eq i32 %23, -1, !dbg !866
  %25 = add nsw i32 %18, 1, !dbg !867
  %26 = add nsw i32 %25, %23, !dbg !868
  %27 = select i1 %24, i32 -1, i32 %26, !dbg !869
  %28 = icmp eq i32 %27, -1, !dbg !871
  br i1 %28, label %29, label %17, !dbg !872, !llvm.loop !674

; <label>:29:                                     ; preds = %17
  %30 = getelementptr inbounds i32, i32* %15, i64 %19, !dbg !857
  %31 = xor i32 %18, -1, !dbg !878
  %32 = add i32 %31, %1, !dbg !878
  %33 = tail call i32 @abs(i32 %32) #5, !dbg !880
  %34 = icmp sgt i32 %33, 131071, !dbg !881
  br i1 %34, label %35, label %38, !dbg !882

; <label>:35:                                     ; preds = %29
  %36 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !883
  %37 = load %struct.LexState*, %struct.LexState** %36, align 8, !dbg !883, !tbaa !587
  tail call void @luaX_syntaxerror(%struct.LexState* %37, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !884
  br label %38, !dbg !884

; <label>:38:                                     ; preds = %35, %29
  %39 = load i32, i32* %30, align 4, !dbg !885, !tbaa !550
  %40 = and i32 %39, 16383, !dbg !885
  %41 = shl i32 %32, 14, !dbg !885
  %42 = add i32 %41, 2147467264, !dbg !885
  %43 = or i32 %40, %42, !dbg !885
  store i32 %43, i32* %30, align 4, !dbg !885, !tbaa !550
  br label %44

; <label>:44:                                     ; preds = %2, %16, %38
  ret void, !dbg !886
}

; Function Attrs: noredzone nounwind
define internal fastcc void @patchlistaux(%struct.FuncState* nocapture readonly, i32, i32, i32, i32) unnamed_addr #0 !dbg !887 {
  %6 = icmp eq i32 %1, -1, !dbg !903
  br i1 %6, label %46, label %7, !dbg !904

; <label>:7:                                      ; preds = %5
  %8 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %9 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3
  br label %10, !dbg !904

; <label>:10:                                     ; preds = %7, %44
  %11 = phi i32 [ %1, %7 ], [ %23, %44 ]
  %12 = load %struct.Proto*, %struct.Proto** %8, align 8, !dbg !908, !tbaa !542
  %13 = getelementptr inbounds %struct.Proto, %struct.Proto* %12, i64 0, i32 4, !dbg !908
  %14 = load i32*, i32** %13, align 8, !dbg !908, !tbaa !544
  %15 = sext i32 %11 to i64, !dbg !908
  %16 = getelementptr inbounds i32, i32* %14, i64 %15, !dbg !908
  %17 = load i32, i32* %16, align 4, !dbg !908, !tbaa !550
  %18 = lshr i32 %17, 14, !dbg !908
  %19 = add nsw i32 %18, -131071, !dbg !908
  %20 = icmp eq i32 %19, -1, !dbg !910
  %21 = add nsw i32 %11, 1, !dbg !911
  %22 = add nsw i32 %21, %19, !dbg !912
  %23 = select i1 %20, i32 -1, i32 %22, !dbg !913
  %24 = tail call fastcc i32 @patchtestreg(%struct.FuncState* %0, i32 %11, i32 %3) #6, !dbg !915
  %25 = icmp eq i32 %24, 0, !dbg !915
  br i1 %25, label %27, label %26, !dbg !917

; <label>:26:                                     ; preds = %10
  tail call fastcc void @fixjump(%struct.FuncState* nonnull %0, i32 %11, i32 %2) #6, !dbg !918
  br label %44, !dbg !918

; <label>:27:                                     ; preds = %10
  %28 = load %struct.Proto*, %struct.Proto** %8, align 8, !dbg !923, !tbaa !542
  %29 = getelementptr inbounds %struct.Proto, %struct.Proto* %28, i64 0, i32 4, !dbg !924
  %30 = load i32*, i32** %29, align 8, !dbg !924, !tbaa !544
  %31 = getelementptr inbounds i32, i32* %30, i64 %15, !dbg !925
  %32 = xor i32 %11, -1, !dbg !927
  %33 = add i32 %32, %4, !dbg !927
  %34 = tail call i32 @abs(i32 %33) #5, !dbg !929
  %35 = icmp sgt i32 %34, 131071, !dbg !930
  br i1 %35, label %36, label %38, !dbg !931

; <label>:36:                                     ; preds = %27
  %37 = load %struct.LexState*, %struct.LexState** %9, align 8, !dbg !932, !tbaa !587
  tail call void @luaX_syntaxerror(%struct.LexState* %37, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !933
  br label %38, !dbg !933

; <label>:38:                                     ; preds = %27, %36
  %39 = load i32, i32* %31, align 4, !dbg !934, !tbaa !550
  %40 = and i32 %39, 16383, !dbg !934
  %41 = shl i32 %33, 14, !dbg !934
  %42 = add i32 %41, 2147467264, !dbg !934
  %43 = or i32 %40, %42, !dbg !934
  store i32 %43, i32* %31, align 4, !dbg !934, !tbaa !550
  br label %44

; <label>:44:                                     ; preds = %38, %26
  %45 = icmp eq i32 %23, -1, !dbg !903
  br i1 %45, label %46, label %10, !dbg !904, !llvm.loop !935

; <label>:46:                                     ; preds = %44, %5
  ret void, !dbg !937
}

; Function Attrs: noredzone nounwind
define internal fastcc void @fixjump(%struct.FuncState* nocapture readonly, i32, i32) unnamed_addr #0 !dbg !678 {
  %4 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0, !dbg !941
  %5 = load %struct.Proto*, %struct.Proto** %4, align 8, !dbg !941, !tbaa !542
  %6 = getelementptr inbounds %struct.Proto, %struct.Proto* %5, i64 0, i32 4, !dbg !942
  %7 = load i32*, i32** %6, align 8, !dbg !942, !tbaa !544
  %8 = sext i32 %1 to i64, !dbg !943
  %9 = getelementptr inbounds i32, i32* %7, i64 %8, !dbg !943
  %10 = xor i32 %1, -1, !dbg !945
  %11 = add i32 %10, %2, !dbg !945
  %12 = tail call i32 @abs(i32 %11) #5, !dbg !947
  %13 = icmp sgt i32 %12, 131071, !dbg !948
  br i1 %13, label %14, label %17, !dbg !949

; <label>:14:                                     ; preds = %3
  %15 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !950
  %16 = load %struct.LexState*, %struct.LexState** %15, align 8, !dbg !950, !tbaa !587
  tail call void @luaX_syntaxerror(%struct.LexState* %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !951
  br label %17, !dbg !951

; <label>:17:                                     ; preds = %14, %3
  %18 = load i32, i32* %9, align 4, !dbg !952, !tbaa !550
  %19 = and i32 %18, 16383, !dbg !952
  %20 = shl i32 %11, 14, !dbg !952
  %21 = add i32 %20, 2147467264, !dbg !952
  %22 = or i32 %19, %21, !dbg !952
  store i32 %22, i32* %9, align 4, !dbg !952, !tbaa !550
  ret void, !dbg !953
}

; Function Attrs: noredzone nounwind
define hidden void @luaK_checkstack(%struct.FuncState* nocapture readonly, i32) local_unnamed_addr #0 !dbg !954 {
  %3 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !961
  %4 = load i32, i32* %3, align 4, !dbg !961, !tbaa !962
  %5 = add nsw i32 %4, %1, !dbg !963
  %6 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0, !dbg !965
  %7 = load %struct.Proto*, %struct.Proto** %6, align 8, !dbg !965, !tbaa !542
  %8 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 22, !dbg !967
  %9 = load i8, i8* %8, align 1, !dbg !967, !tbaa !968
  %10 = zext i8 %9 to i32, !dbg !969
  %11 = icmp sgt i32 %5, %10, !dbg !970
  br i1 %11, label %12, label %22, !dbg !971

; <label>:12:                                     ; preds = %2
  %13 = icmp sgt i32 %5, 249, !dbg !972
  br i1 %13, label %14, label %19, !dbg !975

; <label>:14:                                     ; preds = %12
  %15 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !976
  %16 = load %struct.LexState*, %struct.LexState** %15, align 8, !dbg !976, !tbaa !587
  tail call void @luaX_syntaxerror(%struct.LexState* %16, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0)) #5, !dbg !977
  %17 = load %struct.Proto*, %struct.Proto** %6, align 8, !dbg !978, !tbaa !542
  %18 = getelementptr inbounds %struct.Proto, %struct.Proto* %17, i64 0, i32 22, !dbg !979
  br label %19, !dbg !977

; <label>:19:                                     ; preds = %14, %12
  %20 = phi i8* [ %18, %14 ], [ %8, %12 ], !dbg !979
  %21 = trunc i32 %5 to i8, !dbg !980
  store i8 %21, i8* %20, align 1, !dbg !981, !tbaa !968
  br label %22, !dbg !982

; <label>:22:                                     ; preds = %19, %2
  ret void, !dbg !983
}

; Function Attrs: noredzone
declare hidden void @luaX_syntaxerror(%struct.LexState*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define hidden void @luaK_reserveregs(%struct.FuncState* nocapture, i32) local_unnamed_addr #0 !dbg !984 {
  %3 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !993
  %4 = load i32, i32* %3, align 4, !dbg !993, !tbaa !962
  %5 = add nsw i32 %4, %1, !dbg !994
  %6 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0, !dbg !996
  %7 = load %struct.Proto*, %struct.Proto** %6, align 8, !dbg !996, !tbaa !542
  %8 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 22, !dbg !997
  %9 = load i8, i8* %8, align 1, !dbg !997, !tbaa !968
  %10 = zext i8 %9 to i32, !dbg !998
  %11 = icmp sgt i32 %5, %10, !dbg !999
  br i1 %11, label %12, label %25, !dbg !1000

; <label>:12:                                     ; preds = %2
  %13 = icmp sgt i32 %5, 249, !dbg !1001
  br i1 %13, label %14, label %21, !dbg !1002

; <label>:14:                                     ; preds = %12
  %15 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !1003
  %16 = load %struct.LexState*, %struct.LexState** %15, align 8, !dbg !1003, !tbaa !587
  tail call void @luaX_syntaxerror(%struct.LexState* %16, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0)) #5, !dbg !1004
  %17 = load %struct.Proto*, %struct.Proto** %6, align 8, !dbg !1005, !tbaa !542
  %18 = getelementptr inbounds %struct.Proto, %struct.Proto* %17, i64 0, i32 22, !dbg !1006
  %19 = load i32, i32* %3, align 4, !dbg !1007, !tbaa !962
  %20 = add nsw i32 %19, %1, !dbg !1007
  br label %21, !dbg !1004

; <label>:21:                                     ; preds = %14, %12
  %22 = phi i32 [ %20, %14 ], [ %5, %12 ], !dbg !1007
  %23 = phi i8* [ %18, %14 ], [ %8, %12 ], !dbg !1006
  %24 = trunc i32 %5 to i8, !dbg !1008
  store i8 %24, i8* %23, align 1, !dbg !1009, !tbaa !968
  br label %25, !dbg !1010

; <label>:25:                                     ; preds = %2, %21
  %26 = phi i32 [ %5, %2 ], [ %22, %21 ], !dbg !1007
  store i32 %26, i32* %3, align 4, !dbg !1007, !tbaa !962
  ret void, !dbg !1011
}

; Function Attrs: noredzone nounwind
define hidden i32 @luaK_stringK(%struct.FuncState* nocapture, %union.TString*) local_unnamed_addr #0 !dbg !1012 {
  %3 = alloca %struct.lua_TValue, align 8
  %4 = bitcast %struct.lua_TValue* %3 to i8*, !dbg !1023
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #4, !dbg !1023
  %5 = bitcast %struct.lua_TValue* %3 to %union.TString**, !dbg !1024
  store %union.TString* %1, %union.TString** %5, align 8, !dbg !1024, !tbaa !1025
  %6 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3, i64 0, i32 1, !dbg !1024
  store i32 4, i32* %6, align 8, !dbg !1024, !tbaa !1026
  %7 = call fastcc i32 @addk(%struct.FuncState* %0, %struct.lua_TValue* nonnull %3, %struct.lua_TValue* nonnull %3) #6, !dbg !1029
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #4, !dbg !1030
  ret i32 %7, !dbg !1031
}

; Function Attrs: noredzone nounwind
define internal fastcc i32 @addk(%struct.FuncState* nocapture, %struct.lua_TValue*, %struct.lua_TValue* nocapture readonly) unnamed_addr #0 !dbg !1032 {
  %4 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4, !dbg !1055
  %5 = load %struct.lua_State*, %struct.lua_State** %4, align 8, !dbg !1055, !tbaa !1056
  %6 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 1, !dbg !1058
  %7 = load %struct.Table*, %struct.Table** %6, align 8, !dbg !1058, !tbaa !1059
  %8 = tail call %struct.lua_TValue* @luaH_set(%struct.lua_State* %5, %struct.Table* %7, %struct.lua_TValue* %1) #5, !dbg !1060
  %9 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0, !dbg !1062
  %10 = load %struct.Proto*, %struct.Proto** %9, align 8, !dbg !1062, !tbaa !542
  %11 = getelementptr inbounds %struct.Proto, %struct.Proto* %10, i64 0, i32 11, !dbg !1064
  %12 = load i32, i32* %11, align 4, !dbg !1064, !tbaa !1065
  %13 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %8, i64 0, i32 1, !dbg !1067
  %14 = load i32, i32* %13, align 8, !dbg !1067, !tbaa !1026
  %15 = icmp eq i32 %14, 3, !dbg !1067
  br i1 %15, label %16, label %20, !dbg !1068

; <label>:16:                                     ; preds = %3
  %17 = bitcast %struct.lua_TValue* %8 to double*, !dbg !1069
  %18 = load double, double* %17, align 8, !dbg !1069, !tbaa !1025
  %19 = fptosi double %18 to i32, !dbg !1069
  br label %99, !dbg !1071

; <label>:20:                                     ; preds = %3
  %21 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 10, !dbg !1072
  %22 = load i32, i32* %21, align 8, !dbg !1072, !tbaa !1073
  %23 = sitofp i32 %22 to double, !dbg !1072
  %24 = bitcast %struct.lua_TValue* %8 to double*, !dbg !1072
  store double %23, double* %24, align 8, !dbg !1072, !tbaa !1025
  store i32 3, i32* %13, align 8, !dbg !1072, !tbaa !1026
  %25 = load i32, i32* %21, align 8, !dbg !1074, !tbaa !1073
  %26 = load i32, i32* %11, align 4, !dbg !1074, !tbaa !1065
  %27 = icmp slt i32 %25, %26, !dbg !1074
  %28 = getelementptr inbounds %struct.Proto, %struct.Proto* %10, i64 0, i32 3
  br i1 %27, label %29, label %31, !dbg !1076

; <label>:29:                                     ; preds = %20
  %30 = load %struct.lua_TValue*, %struct.lua_TValue** %28, align 8, !dbg !1077, !tbaa !1078
  br label %37, !dbg !1076

; <label>:31:                                     ; preds = %20
  %32 = bitcast %struct.lua_TValue** %28 to i8**, !dbg !1074
  %33 = load i8*, i8** %32, align 8, !dbg !1074, !tbaa !1078
  %34 = tail call i8* @luaM_growaux_(%struct.lua_State* %5, i8* %33, i32* nonnull %11, i64 16, i32 262143, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0)) #5, !dbg !1074
  store i8* %34, i8** %32, align 8, !dbg !1074, !tbaa !1078
  %35 = load i32, i32* %11, align 4, !dbg !1079, !tbaa !1065
  %36 = bitcast i8* %34 to %struct.lua_TValue*, !dbg !1074
  br label %37, !dbg !1074

; <label>:37:                                     ; preds = %29, %31
  %38 = phi %struct.lua_TValue* [ %30, %29 ], [ %36, %31 ]
  %39 = phi i32 [ %26, %29 ], [ %35, %31 ], !dbg !1079
  %40 = icmp slt i32 %12, %39, !dbg !1080
  br i1 %40, label %41, label %70, !dbg !1081

; <label>:41:                                     ; preds = %37
  %42 = sext i32 %12 to i64, !dbg !1081
  %43 = sext i32 %39 to i64, !dbg !1081
  %44 = sub nsw i64 %43, %42, !dbg !1081
  %45 = xor i64 %42, -1, !dbg !1081
  %46 = add nsw i64 %45, %43, !dbg !1081
  %47 = and i64 %44, 3, !dbg !1081
  %48 = icmp eq i64 %47, 0, !dbg !1081
  br i1 %48, label %56, label %49, !dbg !1081

; <label>:49:                                     ; preds = %41, %49
  %50 = phi i64 [ %52, %49 ], [ %42, %41 ]
  %51 = phi i64 [ %54, %49 ], [ %47, %41 ]
  %52 = add nsw i64 %50, 1, !dbg !1082
  %53 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %38, i64 %50, i32 1, !dbg !1082
  store i32 0, i32* %53, align 8, !dbg !1082, !tbaa !1026
  %54 = add i64 %51, -1, !dbg !1081
  %55 = icmp eq i64 %54, 0, !dbg !1081
  br i1 %55, label %56, label %49, !dbg !1081, !llvm.loop !1083

; <label>:56:                                     ; preds = %49, %41
  %57 = phi i64 [ %42, %41 ], [ %52, %49 ]
  %58 = icmp ult i64 %46, 3, !dbg !1081
  br i1 %58, label %70, label %59, !dbg !1081

; <label>:59:                                     ; preds = %56, %59
  %60 = phi i64 [ %67, %59 ], [ %57, %56 ]
  %61 = add nsw i64 %60, 1, !dbg !1082
  %62 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %38, i64 %60, i32 1, !dbg !1082
  store i32 0, i32* %62, align 8, !dbg !1082, !tbaa !1026
  %63 = add nsw i64 %60, 2, !dbg !1082
  %64 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %38, i64 %61, i32 1, !dbg !1082
  store i32 0, i32* %64, align 8, !dbg !1082, !tbaa !1026
  %65 = add nsw i64 %60, 3, !dbg !1082
  %66 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %38, i64 %63, i32 1, !dbg !1082
  store i32 0, i32* %66, align 8, !dbg !1082, !tbaa !1026
  %67 = add nsw i64 %60, 4, !dbg !1082
  %68 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %38, i64 %65, i32 1, !dbg !1082
  store i32 0, i32* %68, align 8, !dbg !1082, !tbaa !1026
  %69 = icmp slt i64 %67, %43, !dbg !1080
  br i1 %69, label %59, label %70, !dbg !1081, !llvm.loop !1085

; <label>:70:                                     ; preds = %56, %59, %37
  %71 = load i32, i32* %21, align 8, !dbg !1086, !tbaa !1073
  %72 = sext i32 %71 to i64, !dbg !1086
  %73 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %38, i64 %72, !dbg !1086
  %74 = bitcast %struct.lua_TValue* %2 to i64*, !dbg !1086
  %75 = bitcast %struct.lua_TValue* %73 to i64*, !dbg !1086
  %76 = load i64, i64* %74, align 8, !dbg !1086
  store i64 %76, i64* %75, align 8, !dbg !1086
  %77 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i64 0, i32 1, !dbg !1086
  %78 = load i32, i32* %77, align 8, !dbg !1086, !tbaa !1026
  %79 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %38, i64 %72, i32 1, !dbg !1086
  store i32 %78, i32* %79, align 8, !dbg !1086, !tbaa !1026
  %80 = load i32, i32* %77, align 8, !dbg !1087, !tbaa !1026
  %81 = icmp sgt i32 %80, 3, !dbg !1087
  br i1 %81, label %82, label %96, !dbg !1087

; <label>:82:                                     ; preds = %70
  %83 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i64 0, i32 0, i32 0, !dbg !1087
  %84 = load %union.GCObject*, %union.GCObject** %83, align 8, !dbg !1087, !tbaa !1025
  %85 = getelementptr inbounds %union.GCObject, %union.GCObject* %84, i64 0, i32 0, i32 2, !dbg !1087
  %86 = load i8, i8* %85, align 1, !dbg !1087, !tbaa !1025
  %87 = and i8 %86, 3, !dbg !1087
  %88 = icmp eq i8 %87, 0, !dbg !1087
  br i1 %88, label %96, label %89, !dbg !1087

; <label>:89:                                     ; preds = %82
  %90 = getelementptr inbounds %struct.Proto, %struct.Proto* %10, i64 0, i32 2, !dbg !1087
  %91 = load i8, i8* %90, align 1, !dbg !1087, !tbaa !1025
  %92 = and i8 %91, 4, !dbg !1087
  %93 = icmp eq i8 %92, 0, !dbg !1087
  br i1 %93, label %96, label %94, !dbg !1090

; <label>:94:                                     ; preds = %89
  %95 = bitcast %struct.Proto* %10 to %union.GCObject*, !dbg !1087
  tail call void @luaC_barrierf(%struct.lua_State* %5, %union.GCObject* %95, %union.GCObject* %84) #5, !dbg !1087
  br label %96, !dbg !1087

; <label>:96:                                     ; preds = %89, %82, %94, %70
  %97 = load i32, i32* %21, align 8, !dbg !1091, !tbaa !1073
  %98 = add nsw i32 %97, 1, !dbg !1091
  store i32 %98, i32* %21, align 8, !dbg !1091, !tbaa !1073
  br label %99, !dbg !1092

; <label>:99:                                     ; preds = %96, %16
  %100 = phi i32 [ %19, %16 ], [ %97, %96 ], !dbg !1093
  ret i32 %100, !dbg !1094
}

; Function Attrs: noredzone nounwind
define hidden i32 @luaK_numberK(%struct.FuncState* nocapture, double) local_unnamed_addr #0 !dbg !1095 {
  %3 = alloca %struct.lua_TValue, align 8
  %4 = bitcast %struct.lua_TValue* %3 to i8*, !dbg !1106
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #4, !dbg !1106
  %5 = bitcast %struct.lua_TValue* %3 to double*, !dbg !1107
  store double %1, double* %5, align 8, !dbg !1107, !tbaa !1025
  %6 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3, i64 0, i32 1, !dbg !1107
  store i32 3, i32* %6, align 8, !dbg !1107, !tbaa !1026
  %7 = call fastcc i32 @addk(%struct.FuncState* %0, %struct.lua_TValue* nonnull %3, %struct.lua_TValue* nonnull %3) #6, !dbg !1109
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #4, !dbg !1110
  ret i32 %7, !dbg !1111
}

; Function Attrs: noredzone nounwind
define hidden void @luaK_setreturns(%struct.FuncState* nocapture, %struct.expdesc* nocapture readonly, i32) local_unnamed_addr #0 !dbg !1112 {
  %4 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0, !dbg !1139
  %5 = load i32, i32* %4, align 8, !dbg !1139, !tbaa !1141
  switch i32 %5, label %68 [
    i32 13, label %6
    i32 14, label %22
  ], !dbg !1143

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0, !dbg !1144
  %8 = load %struct.Proto*, %struct.Proto** %7, align 8, !dbg !1144, !tbaa !542
  %9 = getelementptr inbounds %struct.Proto, %struct.Proto* %8, i64 0, i32 4, !dbg !1144
  %10 = load i32*, i32** %9, align 8, !dbg !1144, !tbaa !544
  %11 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !1144
  %12 = bitcast %union.anon.3* %11 to i32*, !dbg !1144
  %13 = load i32, i32* %12, align 8, !dbg !1144, !tbaa !1025
  %14 = sext i32 %13 to i64, !dbg !1144
  %15 = getelementptr inbounds i32, i32* %10, i64 %14, !dbg !1144
  %16 = load i32, i32* %15, align 4, !dbg !1144, !tbaa !550
  %17 = and i32 %16, -8372225, !dbg !1144
  %18 = shl i32 %2, 14, !dbg !1144
  %19 = add i32 %18, 16384, !dbg !1144
  %20 = and i32 %19, 8372224, !dbg !1144
  %21 = or i32 %17, %20, !dbg !1144
  store i32 %21, i32* %15, align 4, !dbg !1144, !tbaa !550
  br label %68, !dbg !1146

; <label>:22:                                     ; preds = %3
  %23 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0, !dbg !1147
  %24 = load %struct.Proto*, %struct.Proto** %23, align 8, !dbg !1147, !tbaa !542
  %25 = getelementptr inbounds %struct.Proto, %struct.Proto* %24, i64 0, i32 4, !dbg !1147
  %26 = load i32*, i32** %25, align 8, !dbg !1147, !tbaa !544
  %27 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !1147
  %28 = bitcast %union.anon.3* %27 to i32*, !dbg !1147
  %29 = load i32, i32* %28, align 8, !dbg !1147, !tbaa !1025
  %30 = sext i32 %29 to i64, !dbg !1147
  %31 = getelementptr inbounds i32, i32* %26, i64 %30, !dbg !1147
  %32 = load i32, i32* %31, align 4, !dbg !1147, !tbaa !550
  %33 = and i32 %32, 8388607, !dbg !1147
  %34 = shl i32 %2, 23, !dbg !1147
  %35 = add i32 %34, 8388608, !dbg !1147
  %36 = or i32 %33, %35, !dbg !1147
  store i32 %36, i32* %31, align 4, !dbg !1147, !tbaa !550
  %37 = load i32, i32* %28, align 8, !dbg !1150, !tbaa !1025
  %38 = sext i32 %37 to i64, !dbg !1150
  %39 = getelementptr inbounds i32, i32* %26, i64 %38, !dbg !1150
  %40 = load i32, i32* %39, align 4, !dbg !1150, !tbaa !550
  %41 = and i32 %40, -16321, !dbg !1150
  %42 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !1150
  %43 = load i32, i32* %42, align 4, !dbg !1150, !tbaa !962
  %44 = shl i32 %43, 6, !dbg !1150
  %45 = and i32 %44, 16320, !dbg !1150
  %46 = or i32 %45, %41, !dbg !1150
  store i32 %46, i32* %39, align 4, !dbg !1150, !tbaa !550
  %47 = load i32, i32* %42, align 4, !dbg !1157, !tbaa !962
  %48 = add nsw i32 %47, 1, !dbg !1158
  %49 = getelementptr inbounds %struct.Proto, %struct.Proto* %24, i64 0, i32 22, !dbg !1160
  %50 = load i8, i8* %49, align 1, !dbg !1160, !tbaa !968
  %51 = zext i8 %50 to i32, !dbg !1161
  %52 = icmp slt i32 %47, %51, !dbg !1162
  br i1 %52, label %66, label %53, !dbg !1163

; <label>:53:                                     ; preds = %22
  %54 = icmp sgt i32 %47, 248, !dbg !1164
  br i1 %54, label %55, label %62, !dbg !1165

; <label>:55:                                     ; preds = %53
  %56 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !1166
  %57 = load %struct.LexState*, %struct.LexState** %56, align 8, !dbg !1166, !tbaa !587
  tail call void @luaX_syntaxerror(%struct.LexState* %57, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0)) #5, !dbg !1167
  %58 = load %struct.Proto*, %struct.Proto** %23, align 8, !dbg !1168, !tbaa !542
  %59 = getelementptr inbounds %struct.Proto, %struct.Proto* %58, i64 0, i32 22, !dbg !1169
  %60 = load i32, i32* %42, align 4, !dbg !1170, !tbaa !962
  %61 = add nsw i32 %60, 1, !dbg !1170
  br label %62, !dbg !1167

; <label>:62:                                     ; preds = %55, %53
  %63 = phi i32 [ %61, %55 ], [ %48, %53 ], !dbg !1170
  %64 = phi i8* [ %59, %55 ], [ %49, %53 ], !dbg !1169
  %65 = trunc i32 %48 to i8, !dbg !1171
  store i8 %65, i8* %64, align 1, !dbg !1172, !tbaa !968
  br label %66, !dbg !1173

; <label>:66:                                     ; preds = %22, %62
  %67 = phi i32 [ %48, %22 ], [ %63, %62 ], !dbg !1170
  store i32 %67, i32* %42, align 4, !dbg !1170, !tbaa !962
  br label %68, !dbg !1174

; <label>:68:                                     ; preds = %3, %66, %6
  ret void, !dbg !1175
}

; Function Attrs: noredzone nounwind
define hidden void @luaK_setoneret(%struct.FuncState* nocapture readonly, %struct.expdesc* nocapture) local_unnamed_addr #0 !dbg !1176 {
  %3 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0, !dbg !1184
  %4 = load i32, i32* %3, align 8, !dbg !1184, !tbaa !1141
  switch i32 %4, label %31 [
    i32 13, label %5
    i32 14, label %18
  ], !dbg !1186

; <label>:5:                                      ; preds = %2
  store i32 12, i32* %3, align 8, !dbg !1187, !tbaa !1141
  %6 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0, !dbg !1189
  %7 = load %struct.Proto*, %struct.Proto** %6, align 8, !dbg !1189, !tbaa !542
  %8 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 4, !dbg !1189
  %9 = load i32*, i32** %8, align 8, !dbg !1189, !tbaa !544
  %10 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !1189
  %11 = bitcast %union.anon.3* %10 to i32*, !dbg !1189
  %12 = load i32, i32* %11, align 8, !dbg !1189, !tbaa !1025
  %13 = sext i32 %12 to i64, !dbg !1189
  %14 = getelementptr inbounds i32, i32* %9, i64 %13, !dbg !1189
  %15 = load i32, i32* %14, align 4, !dbg !1189, !tbaa !550
  %16 = lshr i32 %15, 6, !dbg !1189
  %17 = and i32 %16, 255, !dbg !1189
  store i32 %17, i32* %11, align 8, !dbg !1190, !tbaa !1025
  br label %31, !dbg !1191

; <label>:18:                                     ; preds = %2
  %19 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0, !dbg !1192
  %20 = load %struct.Proto*, %struct.Proto** %19, align 8, !dbg !1192, !tbaa !542
  %21 = getelementptr inbounds %struct.Proto, %struct.Proto* %20, i64 0, i32 4, !dbg !1192
  %22 = load i32*, i32** %21, align 8, !dbg !1192, !tbaa !544
  %23 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !1192
  %24 = bitcast %union.anon.3* %23 to i32*, !dbg !1192
  %25 = load i32, i32* %24, align 8, !dbg !1192, !tbaa !1025
  %26 = sext i32 %25 to i64, !dbg !1192
  %27 = getelementptr inbounds i32, i32* %22, i64 %26, !dbg !1192
  %28 = load i32, i32* %27, align 4, !dbg !1192, !tbaa !550
  %29 = and i32 %28, 8388607, !dbg !1192
  %30 = or i32 %29, 16777216, !dbg !1192
  store i32 %30, i32* %27, align 4, !dbg !1192, !tbaa !550
  store i32 11, i32* %3, align 8, !dbg !1195, !tbaa !1141
  br label %31, !dbg !1196

; <label>:31:                                     ; preds = %2, %18, %5
  ret void, !dbg !1197
}

; Function Attrs: noredzone nounwind
define hidden void @luaK_dischargevars(%struct.FuncState* nocapture, %struct.expdesc* nocapture) local_unnamed_addr #0 !dbg !1198 {
  %3 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0, !dbg !1204
  %4 = load i32, i32* %3, align 8, !dbg !1204, !tbaa !1141
  switch i32 %4, label %97 [
    i32 6, label %5
    i32 7, label %6
    i32 8, label %17
    i32 9, label %28
    i32 13, label %71
    i32 14, label %84
  ], !dbg !1205

; <label>:5:                                      ; preds = %2
  store i32 12, i32* %3, align 8, !dbg !1206, !tbaa !1141
  br label %97, !dbg !1209

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !1210
  %8 = bitcast %union.anon.3* %7 to i32*, !dbg !1212
  %9 = load i32, i32* %8, align 8, !dbg !1212, !tbaa !1025
  %10 = shl i32 %9, 23, !dbg !1219
  %11 = or i32 %10, 4, !dbg !1219
  %12 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !1220
  %13 = load %struct.LexState*, %struct.LexState** %12, align 8, !dbg !1220, !tbaa !587
  %14 = getelementptr inbounds %struct.LexState, %struct.LexState* %13, i64 0, i32 2, !dbg !1221
  %15 = load i32, i32* %14, align 8, !dbg !1221, !tbaa !589
  %16 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %11, i32 %15) #5, !dbg !1222
  store i32 %16, i32* %8, align 8, !dbg !1223, !tbaa !1025
  store i32 11, i32* %3, align 8, !dbg !1224, !tbaa !1141
  br label %97, !dbg !1225

; <label>:17:                                     ; preds = %2
  %18 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !1226
  %19 = bitcast %union.anon.3* %18 to i32*, !dbg !1228
  %20 = load i32, i32* %19, align 8, !dbg !1228, !tbaa !1025
  %21 = shl i32 %20, 14, !dbg !1234
  %22 = or i32 %21, 5, !dbg !1234
  %23 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !1235
  %24 = load %struct.LexState*, %struct.LexState** %23, align 8, !dbg !1235, !tbaa !587
  %25 = getelementptr inbounds %struct.LexState, %struct.LexState* %24, i64 0, i32 2, !dbg !1236
  %26 = load i32, i32* %25, align 8, !dbg !1236, !tbaa !589
  %27 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %22, i32 %26) #5, !dbg !1237
  store i32 %27, i32* %19, align 8, !dbg !1238, !tbaa !1025
  store i32 11, i32* %3, align 8, !dbg !1239, !tbaa !1141
  br label %97, !dbg !1240

; <label>:28:                                     ; preds = %2
  %29 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !1241
  %30 = bitcast %union.anon.3* %29 to %struct.anon.4*, !dbg !1243
  %31 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %30, i64 0, i32 1, !dbg !1244
  %32 = load i32, i32* %31, align 4, !dbg !1244, !tbaa !1025
  %33 = and i32 %32, 256, !dbg !1252
  %34 = icmp eq i32 %33, 0, !dbg !1252
  br i1 %34, label %35, label %44, !dbg !1254

; <label>:35:                                     ; preds = %28
  %36 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !1255
  %37 = load i8, i8* %36, align 2, !dbg !1255, !tbaa !537
  %38 = zext i8 %37 to i32, !dbg !1256
  %39 = icmp slt i32 %32, %38, !dbg !1257
  br i1 %39, label %44, label %40, !dbg !1258

; <label>:40:                                     ; preds = %35
  %41 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !1259
  %42 = load i32, i32* %41, align 4, !dbg !1261, !tbaa !962
  %43 = add nsw i32 %42, -1, !dbg !1261
  store i32 %43, i32* %41, align 4, !dbg !1261, !tbaa !962
  br label %44, !dbg !1262

; <label>:44:                                     ; preds = %28, %35, %40
  %45 = bitcast %union.anon.3* %29 to i32*, !dbg !1263
  %46 = load i32, i32* %45, align 8, !dbg !1263, !tbaa !1025
  %47 = and i32 %46, 256, !dbg !1267
  %48 = icmp eq i32 %47, 0, !dbg !1267
  br i1 %48, label %49, label %59, !dbg !1268

; <label>:49:                                     ; preds = %44
  %50 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !1269
  %51 = load i8, i8* %50, align 2, !dbg !1269, !tbaa !537
  %52 = zext i8 %51 to i32, !dbg !1270
  %53 = icmp slt i32 %46, %52, !dbg !1271
  br i1 %53, label %59, label %54, !dbg !1272

; <label>:54:                                     ; preds = %49
  %55 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !1273
  %56 = load i32, i32* %55, align 4, !dbg !1274, !tbaa !962
  %57 = add nsw i32 %56, -1, !dbg !1274
  store i32 %57, i32* %55, align 4, !dbg !1274, !tbaa !962
  %58 = load i32, i32* %45, align 8, !dbg !1275, !tbaa !1025
  br label %59, !dbg !1276

; <label>:59:                                     ; preds = %44, %49, %54
  %60 = phi i32 [ %46, %44 ], [ %46, %49 ], [ %58, %54 ], !dbg !1275
  %61 = load i32, i32* %31, align 4, !dbg !1277, !tbaa !1025
  %62 = shl i32 %60, 23, !dbg !1284
  %63 = shl i32 %61, 14, !dbg !1284
  %64 = or i32 %62, %63, !dbg !1284
  %65 = or i32 %64, 6, !dbg !1284
  %66 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !1285
  %67 = load %struct.LexState*, %struct.LexState** %66, align 8, !dbg !1285, !tbaa !587
  %68 = getelementptr inbounds %struct.LexState, %struct.LexState* %67, i64 0, i32 2, !dbg !1286
  %69 = load i32, i32* %68, align 8, !dbg !1286, !tbaa !589
  %70 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %65, i32 %69) #5, !dbg !1287
  store i32 %70, i32* %45, align 8, !dbg !1288, !tbaa !1025
  store i32 11, i32* %3, align 8, !dbg !1289, !tbaa !1141
  br label %97, !dbg !1290

; <label>:71:                                     ; preds = %2
  store i32 12, i32* %3, align 8, !dbg !1291, !tbaa !1141
  %72 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0, !dbg !1294
  %73 = load %struct.Proto*, %struct.Proto** %72, align 8, !dbg !1294, !tbaa !542
  %74 = getelementptr inbounds %struct.Proto, %struct.Proto* %73, i64 0, i32 4, !dbg !1294
  %75 = load i32*, i32** %74, align 8, !dbg !1294, !tbaa !544
  %76 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !1294
  %77 = bitcast %union.anon.3* %76 to i32*, !dbg !1294
  %78 = load i32, i32* %77, align 8, !dbg !1294, !tbaa !1025
  %79 = sext i32 %78 to i64, !dbg !1294
  %80 = getelementptr inbounds i32, i32* %75, i64 %79, !dbg !1294
  %81 = load i32, i32* %80, align 4, !dbg !1294, !tbaa !550
  %82 = lshr i32 %81, 6, !dbg !1294
  %83 = and i32 %82, 255, !dbg !1294
  store i32 %83, i32* %77, align 8, !dbg !1295, !tbaa !1025
  br label %97, !dbg !1296

; <label>:84:                                     ; preds = %2
  %85 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0, !dbg !1297
  %86 = load %struct.Proto*, %struct.Proto** %85, align 8, !dbg !1297, !tbaa !542
  %87 = getelementptr inbounds %struct.Proto, %struct.Proto* %86, i64 0, i32 4, !dbg !1297
  %88 = load i32*, i32** %87, align 8, !dbg !1297, !tbaa !544
  %89 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !1297
  %90 = bitcast %union.anon.3* %89 to i32*, !dbg !1297
  %91 = load i32, i32* %90, align 8, !dbg !1297, !tbaa !1025
  %92 = sext i32 %91 to i64, !dbg !1297
  %93 = getelementptr inbounds i32, i32* %88, i64 %92, !dbg !1297
  %94 = load i32, i32* %93, align 4, !dbg !1297, !tbaa !550
  %95 = and i32 %94, 8388607, !dbg !1297
  %96 = or i32 %95, 16777216, !dbg !1297
  store i32 %96, i32* %93, align 4, !dbg !1297, !tbaa !550
  store i32 11, i32* %3, align 8, !dbg !1298, !tbaa !1141
  br label %97, !dbg !1299

; <label>:97:                                     ; preds = %2, %84, %71, %59, %17, %6, %5
  ret void, !dbg !1300
}

; Function Attrs: noredzone nounwind
define hidden void @luaK_exp2nextreg(%struct.FuncState*, %struct.expdesc* nocapture) local_unnamed_addr #0 !dbg !1301 {
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %1) #6, !dbg !1307
  %3 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0, !dbg !1315
  %4 = load i32, i32* %3, align 8, !dbg !1315, !tbaa !1141
  %5 = icmp eq i32 %4, 12, !dbg !1317
  br i1 %5, label %6, label %21, !dbg !1318

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !1319
  %8 = bitcast %union.anon.3* %7 to i32*, !dbg !1320
  %9 = load i32, i32* %8, align 8, !dbg !1320, !tbaa !1025
  %10 = and i32 %9, 256, !dbg !1324
  %11 = icmp eq i32 %10, 0, !dbg !1324
  br i1 %11, label %12, label %21, !dbg !1325

; <label>:12:                                     ; preds = %6
  %13 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !1326
  %14 = load i8, i8* %13, align 2, !dbg !1326, !tbaa !537
  %15 = zext i8 %14 to i32, !dbg !1327
  %16 = icmp slt i32 %9, %15, !dbg !1328
  br i1 %16, label %21, label %17, !dbg !1329

; <label>:17:                                     ; preds = %12
  %18 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !1330
  %19 = load i32, i32* %18, align 4, !dbg !1331, !tbaa !962
  %20 = add nsw i32 %19, -1, !dbg !1331
  store i32 %20, i32* %18, align 4, !dbg !1331, !tbaa !962
  br label %21, !dbg !1332

; <label>:21:                                     ; preds = %2, %6, %12, %17
  %22 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !1339
  %23 = load i32, i32* %22, align 4, !dbg !1339, !tbaa !962
  %24 = add nsw i32 %23, 1, !dbg !1340
  %25 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0, !dbg !1342
  %26 = load %struct.Proto*, %struct.Proto** %25, align 8, !dbg !1342, !tbaa !542
  %27 = getelementptr inbounds %struct.Proto, %struct.Proto* %26, i64 0, i32 22, !dbg !1343
  %28 = load i8, i8* %27, align 1, !dbg !1343, !tbaa !968
  %29 = zext i8 %28 to i32, !dbg !1344
  %30 = icmp slt i32 %23, %29, !dbg !1345
  br i1 %30, label %44, label %31, !dbg !1346

; <label>:31:                                     ; preds = %21
  %32 = icmp sgt i32 %23, 248, !dbg !1347
  br i1 %32, label %33, label %40, !dbg !1348

; <label>:33:                                     ; preds = %31
  %34 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !1349
  %35 = load %struct.LexState*, %struct.LexState** %34, align 8, !dbg !1349, !tbaa !587
  tail call void @luaX_syntaxerror(%struct.LexState* %35, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0)) #5, !dbg !1350
  %36 = load %struct.Proto*, %struct.Proto** %25, align 8, !dbg !1351, !tbaa !542
  %37 = getelementptr inbounds %struct.Proto, %struct.Proto* %36, i64 0, i32 22, !dbg !1352
  %38 = load i32, i32* %22, align 4, !dbg !1353, !tbaa !962
  %39 = add nsw i32 %38, 1, !dbg !1353
  br label %40, !dbg !1350

; <label>:40:                                     ; preds = %33, %31
  %41 = phi i32 [ %39, %33 ], [ %24, %31 ], !dbg !1353
  %42 = phi i8* [ %37, %33 ], [ %27, %31 ], !dbg !1352
  %43 = trunc i32 %24 to i8, !dbg !1354
  store i8 %43, i8* %42, align 1, !dbg !1355, !tbaa !968
  br label %44, !dbg !1356

; <label>:44:                                     ; preds = %21, %40
  %45 = phi i32 [ %24, %21 ], [ %41, %40 ], !dbg !1353
  store i32 %45, i32* %22, align 4, !dbg !1353, !tbaa !962
  %46 = add nsw i32 %45, -1, !dbg !1357
  tail call fastcc void @exp2reg(%struct.FuncState* nonnull %0, %struct.expdesc* nonnull %1, i32 %46) #6, !dbg !1358
  ret void, !dbg !1359
}

; Function Attrs: noredzone nounwind
define internal fastcc void @exp2reg(%struct.FuncState*, %struct.expdesc* nocapture, i32) unnamed_addr #0 !dbg !1360 {
  tail call fastcc void @discharge2reg(%struct.FuncState* %0, %struct.expdesc* %1, i32 %2) #6, !dbg !1376
  %4 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0, !dbg !1377
  %5 = load i32, i32* %4, align 8, !dbg !1377, !tbaa !1141
  %6 = icmp eq i32 %5, 10, !dbg !1379
  %7 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2, !dbg !1380
  br i1 %6, label %8, label %49, !dbg !1381

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !1382
  %10 = bitcast %union.anon.3* %9 to i32*, !dbg !1383
  %11 = load i32, i32* %10, align 8, !dbg !1383, !tbaa !1025
  %12 = icmp eq i32 %11, -1, !dbg !1388
  br i1 %12, label %49, label %13, !dbg !1389

; <label>:13:                                     ; preds = %8
  %14 = load i32, i32* %7, align 4, !dbg !1390, !tbaa !550
  %15 = icmp eq i32 %14, -1, !dbg !1391
  br i1 %15, label %21, label %16, !dbg !1392

; <label>:16:                                     ; preds = %13
  %17 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %18 = load %struct.Proto*, %struct.Proto** %17, align 8, !tbaa !542
  %19 = getelementptr inbounds %struct.Proto, %struct.Proto* %18, i64 0, i32 4
  %20 = load i32*, i32** %19, align 8, !tbaa !544
  br label %22, !dbg !1393

; <label>:21:                                     ; preds = %13
  store i32 %11, i32* %7, align 4, !dbg !1395, !tbaa !550
  br label %51, !dbg !1396

; <label>:22:                                     ; preds = %22, %16
  %23 = phi i32 [ %32, %22 ], [ %14, %16 ], !dbg !1397
  %24 = sext i32 %23 to i64, !dbg !1393
  %25 = getelementptr inbounds i32, i32* %20, i64 %24, !dbg !1393
  %26 = load i32, i32* %25, align 4, !dbg !1393, !tbaa !550
  %27 = lshr i32 %26, 14, !dbg !1393
  %28 = add nsw i32 %27, -131071, !dbg !1393
  %29 = icmp eq i32 %28, -1, !dbg !1402
  %30 = add nsw i32 %23, 1, !dbg !1403
  %31 = add nsw i32 %30, %28, !dbg !1404
  %32 = select i1 %29, i32 -1, i32 %31, !dbg !1405
  %33 = icmp eq i32 %32, -1, !dbg !1407
  br i1 %33, label %34, label %22, !dbg !1408, !llvm.loop !674

; <label>:34:                                     ; preds = %22
  %35 = getelementptr inbounds i32, i32* %20, i64 %24, !dbg !1393
  %36 = xor i32 %23, -1, !dbg !1414
  %37 = add i32 %11, %36, !dbg !1414
  %38 = tail call i32 @abs(i32 %37) #5, !dbg !1416
  %39 = icmp sgt i32 %38, 131071, !dbg !1417
  br i1 %39, label %40, label %43, !dbg !1418

; <label>:40:                                     ; preds = %34
  %41 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !1419
  %42 = load %struct.LexState*, %struct.LexState** %41, align 8, !dbg !1419, !tbaa !587
  tail call void @luaX_syntaxerror(%struct.LexState* %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !1420
  br label %43, !dbg !1420

; <label>:43:                                     ; preds = %40, %34
  %44 = load i32, i32* %35, align 4, !dbg !1421, !tbaa !550
  %45 = and i32 %44, 16383, !dbg !1421
  %46 = shl i32 %37, 14, !dbg !1421
  %47 = add i32 %46, 2147467264, !dbg !1421
  %48 = or i32 %45, %47, !dbg !1421
  store i32 %48, i32* %35, align 4, !dbg !1421, !tbaa !550
  br label %49

; <label>:49:                                     ; preds = %3, %8, %43
  %50 = load i32, i32* %7, align 8, !dbg !1422, !tbaa !1423
  br label %51, !dbg !1422

; <label>:51:                                     ; preds = %49, %21
  %52 = phi i32 [ %50, %49 ], [ %11, %21 ], !dbg !1422
  %53 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3, !dbg !1422
  %54 = load i32, i32* %53, align 4, !dbg !1422, !tbaa !1424
  %55 = icmp eq i32 %52, %54, !dbg !1422
  br i1 %55, label %238, label %56, !dbg !1425

; <label>:56:                                     ; preds = %51
  %57 = icmp eq i32 %52, -1, !dbg !1439
  br i1 %57, label %91, label %58, !dbg !1440

; <label>:58:                                     ; preds = %56
  %59 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %60 = load %struct.Proto*, %struct.Proto** %59, align 8, !tbaa !542
  %61 = getelementptr inbounds %struct.Proto, %struct.Proto* %60, i64 0, i32 4
  %62 = load i32*, i32** %61, align 8, !tbaa !544
  br label %63, !dbg !1440

; <label>:63:                                     ; preds = %82, %58
  %64 = phi i32 [ %52, %58 ], [ %89, %82 ]
  %65 = sext i32 %64 to i64, !dbg !1451
  %66 = getelementptr inbounds i32, i32* %62, i64 %65, !dbg !1451
  %67 = icmp sgt i32 %64, 0, !dbg !1453
  br i1 %67, label %68, label %76, !dbg !1455

; <label>:68:                                     ; preds = %63
  %69 = getelementptr inbounds i32, i32* %66, i64 -1, !dbg !1456
  %70 = load i32, i32* %69, align 4, !dbg !1456, !tbaa !550
  %71 = and i32 %70, 63, !dbg !1456
  %72 = zext i32 %71 to i64, !dbg !1456
  %73 = getelementptr inbounds [38 x i8], [38 x i8]* @luaP_opmodes, i64 0, i64 %72, !dbg !1456
  %74 = load i8, i8* %73, align 1, !dbg !1456, !tbaa !1025
  %75 = icmp slt i8 %74, 0, !dbg !1456
  br i1 %75, label %78, label %76, !dbg !1457

; <label>:76:                                     ; preds = %68, %63
  %77 = load i32, i32* %66, align 4, !dbg !1458, !tbaa !550
  br label %78, !dbg !1459

; <label>:78:                                     ; preds = %76, %68
  %79 = phi i32 [ %77, %76 ], [ %70, %68 ], !dbg !1458
  %80 = and i32 %79, 63, !dbg !1461
  %81 = icmp eq i32 %80, 27, !dbg !1463
  br i1 %81, label %82, label %126

; <label>:82:                                     ; preds = %78
  %83 = load i32, i32* %66, align 4, !dbg !1467, !tbaa !550
  %84 = lshr i32 %83, 14, !dbg !1467
  %85 = add nsw i32 %84, -131071, !dbg !1467
  %86 = icmp eq i32 %85, -1, !dbg !1469
  %87 = add nsw i32 %64, 1, !dbg !1470
  %88 = add nsw i32 %87, %85, !dbg !1471
  %89 = select i1 %86, i32 -1, i32 %88
  %90 = icmp eq i32 %89, -1, !dbg !1439
  br i1 %90, label %91, label %63, !dbg !1440

; <label>:91:                                     ; preds = %82, %56
  %92 = icmp eq i32 %54, -1, !dbg !1475
  br i1 %92, label %230, label %93, !dbg !1476

; <label>:93:                                     ; preds = %91
  %94 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %95 = load %struct.Proto*, %struct.Proto** %94, align 8, !tbaa !542
  %96 = getelementptr inbounds %struct.Proto, %struct.Proto* %95, i64 0, i32 4
  %97 = load i32*, i32** %96, align 8, !tbaa !544
  br label %98, !dbg !1476

; <label>:98:                                     ; preds = %117, %93
  %99 = phi i32 [ %54, %93 ], [ %124, %117 ]
  %100 = sext i32 %99 to i64, !dbg !1480
  %101 = getelementptr inbounds i32, i32* %97, i64 %100, !dbg !1480
  %102 = icmp sgt i32 %99, 0, !dbg !1482
  br i1 %102, label %103, label %111, !dbg !1483

; <label>:103:                                    ; preds = %98
  %104 = getelementptr inbounds i32, i32* %101, i64 -1, !dbg !1484
  %105 = load i32, i32* %104, align 4, !dbg !1484, !tbaa !550
  %106 = and i32 %105, 63, !dbg !1484
  %107 = zext i32 %106 to i64, !dbg !1484
  %108 = getelementptr inbounds [38 x i8], [38 x i8]* @luaP_opmodes, i64 0, i64 %107, !dbg !1484
  %109 = load i8, i8* %108, align 1, !dbg !1484, !tbaa !1025
  %110 = icmp slt i8 %109, 0, !dbg !1484
  br i1 %110, label %113, label %111, !dbg !1485

; <label>:111:                                    ; preds = %103, %98
  %112 = load i32, i32* %101, align 4, !dbg !1486, !tbaa !550
  br label %113, !dbg !1487

; <label>:113:                                    ; preds = %111, %103
  %114 = phi i32 [ %112, %111 ], [ %105, %103 ], !dbg !1486
  %115 = and i32 %114, 63, !dbg !1489
  %116 = icmp eq i32 %115, 27, !dbg !1490
  br i1 %116, label %117, label %126

; <label>:117:                                    ; preds = %113
  %118 = load i32, i32* %101, align 4, !dbg !1494, !tbaa !550
  %119 = lshr i32 %118, 14, !dbg !1494
  %120 = add nsw i32 %119, -131071, !dbg !1494
  %121 = icmp eq i32 %120, -1, !dbg !1496
  %122 = add nsw i32 %99, 1, !dbg !1497
  %123 = add nsw i32 %122, %120, !dbg !1498
  %124 = select i1 %121, i32 -1, i32 %123
  %125 = icmp eq i32 %124, -1, !dbg !1475
  br i1 %125, label %230, label %98, !dbg !1476

; <label>:126:                                    ; preds = %78, %113
  %127 = load i32, i32* %4, align 8, !dbg !1499, !tbaa !1141
  %128 = icmp eq i32 %127, 10, !dbg !1500
  br i1 %128, label %129, label %132, !dbg !1501

; <label>:129:                                    ; preds = %126
  %130 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !1502
  %131 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 8, !dbg !1513
  br label %174, !dbg !1501

; <label>:132:                                    ; preds = %126
  %133 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 8, !dbg !1517
  %134 = load i32, i32* %133, align 8, !dbg !1517, !tbaa !613
  store i32 -1, i32* %133, align 8, !dbg !1519, !tbaa !613
  %135 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !1525
  %136 = load %struct.LexState*, %struct.LexState** %135, align 8, !dbg !1525, !tbaa !587
  %137 = getelementptr inbounds %struct.LexState, %struct.LexState* %136, i64 0, i32 2, !dbg !1526
  %138 = load i32, i32* %137, align 8, !dbg !1526, !tbaa !589
  %139 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 2147450902, i32 %138) #5, !dbg !1527
  %140 = icmp eq i32 %134, -1, !dbg !1532
  br i1 %140, label %174, label %141, !dbg !1533

; <label>:141:                                    ; preds = %132
  %142 = icmp eq i32 %139, -1, !dbg !1534
  br i1 %142, label %174, label %143, !dbg !1535

; <label>:143:                                    ; preds = %141
  %144 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %145 = load %struct.Proto*, %struct.Proto** %144, align 8, !tbaa !542
  %146 = getelementptr inbounds %struct.Proto, %struct.Proto* %145, i64 0, i32 4
  %147 = load i32*, i32** %146, align 8, !tbaa !544
  br label %148, !dbg !1536

; <label>:148:                                    ; preds = %148, %143
  %149 = phi i32 [ %158, %148 ], [ %139, %143 ], !dbg !1538
  %150 = sext i32 %149 to i64, !dbg !1536
  %151 = getelementptr inbounds i32, i32* %147, i64 %150, !dbg !1536
  %152 = load i32, i32* %151, align 4, !dbg !1536, !tbaa !550
  %153 = lshr i32 %152, 14, !dbg !1536
  %154 = add nsw i32 %153, -131071, !dbg !1536
  %155 = icmp eq i32 %154, -1, !dbg !1543
  %156 = add nsw i32 %149, 1, !dbg !1544
  %157 = add nsw i32 %156, %154, !dbg !1545
  %158 = select i1 %155, i32 -1, i32 %157, !dbg !1546
  %159 = icmp eq i32 %158, -1, !dbg !1548
  br i1 %159, label %160, label %148, !dbg !1549, !llvm.loop !674

; <label>:160:                                    ; preds = %148
  %161 = getelementptr inbounds i32, i32* %147, i64 %150, !dbg !1536
  %162 = xor i32 %149, -1, !dbg !1555
  %163 = add i32 %134, %162, !dbg !1555
  %164 = tail call i32 @abs(i32 %163) #5, !dbg !1557
  %165 = icmp sgt i32 %164, 131071, !dbg !1558
  br i1 %165, label %166, label %168, !dbg !1559

; <label>:166:                                    ; preds = %160
  %167 = load %struct.LexState*, %struct.LexState** %135, align 8, !dbg !1560, !tbaa !587
  tail call void @luaX_syntaxerror(%struct.LexState* %167, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !1561
  br label %168, !dbg !1561

; <label>:168:                                    ; preds = %166, %160
  %169 = load i32, i32* %161, align 4, !dbg !1562, !tbaa !550
  %170 = and i32 %169, 16383, !dbg !1562
  %171 = shl i32 %163, 14, !dbg !1562
  %172 = add i32 %171, 2147467264, !dbg !1562
  %173 = or i32 %170, %172, !dbg !1562
  store i32 %173, i32* %161, align 4, !dbg !1562, !tbaa !550
  br label %174

; <label>:174:                                    ; preds = %129, %168, %141, %132
  %175 = phi i32* [ %131, %129 ], [ %133, %168 ], [ %133, %141 ], [ %133, %132 ], !dbg !1513
  %176 = phi %struct.LexState** [ %130, %129 ], [ %135, %168 ], [ %135, %141 ], [ %135, %132 ], !dbg !1502
  %177 = phi i32 [ -1, %129 ], [ %139, %168 ], [ %134, %141 ], [ %139, %132 ], !dbg !1501
  %178 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 6, !dbg !1570
  %179 = load i32, i32* %178, align 8, !dbg !1570, !tbaa !521
  %180 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 7, !dbg !1571
  store i32 %179, i32* %180, align 4, !dbg !1572, !tbaa !529
  %181 = shl i32 %2, 6, !dbg !1578
  %182 = or i32 %181, 16386, !dbg !1578
  %183 = load %struct.LexState*, %struct.LexState** %176, align 8, !dbg !1502, !tbaa !587
  %184 = getelementptr inbounds %struct.LexState, %struct.LexState* %183, i64 0, i32 2, !dbg !1579
  %185 = load i32, i32* %184, align 8, !dbg !1579, !tbaa !589
  %186 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %182, i32 %185) #5, !dbg !1580
  %187 = load i32, i32* %178, align 8, !dbg !1588, !tbaa !521
  store i32 %187, i32* %180, align 4, !dbg !1589, !tbaa !529
  %188 = or i32 %181, 8388610, !dbg !1596
  %189 = load %struct.LexState*, %struct.LexState** %176, align 8, !dbg !1597, !tbaa !587
  %190 = getelementptr inbounds %struct.LexState, %struct.LexState* %189, i64 0, i32 2, !dbg !1598
  %191 = load i32, i32* %190, align 8, !dbg !1598, !tbaa !589
  %192 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %188, i32 %191) #5, !dbg !1599
  %193 = load i32, i32* %178, align 8, !dbg !1604, !tbaa !521
  store i32 %193, i32* %180, align 4, !dbg !1605, !tbaa !529
  %194 = icmp eq i32 %177, -1, !dbg !1610
  br i1 %194, label %230, label %195, !dbg !1611

; <label>:195:                                    ; preds = %174
  %196 = load i32, i32* %175, align 4, !dbg !1612, !tbaa !550
  %197 = icmp eq i32 %196, -1, !dbg !1613
  br i1 %197, label %203, label %198, !dbg !1614

; <label>:198:                                    ; preds = %195
  %199 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %200 = load %struct.Proto*, %struct.Proto** %199, align 8, !tbaa !542
  %201 = getelementptr inbounds %struct.Proto, %struct.Proto* %200, i64 0, i32 4
  %202 = load i32*, i32** %201, align 8, !tbaa !544
  br label %204, !dbg !1615

; <label>:203:                                    ; preds = %195
  store i32 %177, i32* %175, align 4, !dbg !1617, !tbaa !550
  br label %230, !dbg !1618

; <label>:204:                                    ; preds = %204, %198
  %205 = phi i32 [ %214, %204 ], [ %196, %198 ], !dbg !1619
  %206 = sext i32 %205 to i64, !dbg !1615
  %207 = getelementptr inbounds i32, i32* %202, i64 %206, !dbg !1615
  %208 = load i32, i32* %207, align 4, !dbg !1615, !tbaa !550
  %209 = lshr i32 %208, 14, !dbg !1615
  %210 = add nsw i32 %209, -131071, !dbg !1615
  %211 = icmp eq i32 %210, -1, !dbg !1624
  %212 = add nsw i32 %205, 1, !dbg !1625
  %213 = add nsw i32 %212, %210, !dbg !1626
  %214 = select i1 %211, i32 -1, i32 %213, !dbg !1627
  %215 = icmp eq i32 %214, -1, !dbg !1629
  br i1 %215, label %216, label %204, !dbg !1630, !llvm.loop !674

; <label>:216:                                    ; preds = %204
  %217 = getelementptr inbounds i32, i32* %202, i64 %206, !dbg !1615
  %218 = xor i32 %205, -1, !dbg !1636
  %219 = add i32 %177, %218, !dbg !1636
  %220 = tail call i32 @abs(i32 %219) #5, !dbg !1638
  %221 = icmp sgt i32 %220, 131071, !dbg !1639
  br i1 %221, label %222, label %224, !dbg !1640

; <label>:222:                                    ; preds = %216
  %223 = load %struct.LexState*, %struct.LexState** %176, align 8, !dbg !1641, !tbaa !587
  tail call void @luaX_syntaxerror(%struct.LexState* %223, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !1642
  br label %224, !dbg !1642

; <label>:224:                                    ; preds = %222, %216
  %225 = load i32, i32* %217, align 4, !dbg !1643, !tbaa !550
  %226 = and i32 %225, 16383, !dbg !1643
  %227 = shl i32 %219, 14, !dbg !1643
  %228 = add i32 %227, 2147467264, !dbg !1643
  %229 = or i32 %226, %228, !dbg !1643
  store i32 %229, i32* %217, align 4, !dbg !1643, !tbaa !550
  br label %230

; <label>:230:                                    ; preds = %117, %91, %224, %203, %174
  %231 = phi i32 [ %192, %174 ], [ %192, %203 ], [ %192, %224 ], [ -1, %91 ], [ -1, %117 ], !dbg !1644
  %232 = phi i32 [ %186, %174 ], [ %186, %203 ], [ %186, %224 ], [ -1, %91 ], [ -1, %117 ], !dbg !1644
  %233 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 6, !dbg !1647
  %234 = load i32, i32* %233, align 8, !dbg !1647, !tbaa !521
  %235 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 7, !dbg !1648
  store i32 %234, i32* %235, align 4, !dbg !1649, !tbaa !529
  %236 = load i32, i32* %53, align 4, !dbg !1651, !tbaa !1424
  tail call fastcc void @patchlistaux(%struct.FuncState* %0, i32 %236, i32 %234, i32 %2, i32 %232) #6, !dbg !1652
  %237 = load i32, i32* %7, align 8, !dbg !1653, !tbaa !1423
  tail call fastcc void @patchlistaux(%struct.FuncState* %0, i32 %237, i32 %234, i32 %2, i32 %231) #6, !dbg !1654
  br label %238, !dbg !1655

; <label>:238:                                    ; preds = %51, %230
  store i32 -1, i32* %7, align 8, !dbg !1656, !tbaa !1423
  store i32 -1, i32* %53, align 4, !dbg !1657, !tbaa !1424
  %239 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !1658
  %240 = bitcast %union.anon.3* %239 to i32*, !dbg !1659
  store i32 %2, i32* %240, align 8, !dbg !1660, !tbaa !1025
  store i32 12, i32* %4, align 8, !dbg !1661, !tbaa !1141
  ret void, !dbg !1662
}

; Function Attrs: noredzone nounwind
define hidden i32 @luaK_exp2anyreg(%struct.FuncState*, %struct.expdesc* nocapture) local_unnamed_addr #0 !dbg !1663 {
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %1) #6, !dbg !1671
  %3 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0, !dbg !1672
  %4 = load i32, i32* %3, align 8, !dbg !1672, !tbaa !1141
  %5 = icmp eq i32 %4, 12, !dbg !1674
  br i1 %5, label %9, label %6, !dbg !1675

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !1676
  %8 = bitcast %union.anon.3* %7 to i32*, !dbg !1677
  br label %24, !dbg !1675

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2, !dbg !1678
  %11 = load i32, i32* %10, align 8, !dbg !1678, !tbaa !1423
  %12 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3, !dbg !1678
  %13 = load i32, i32* %12, align 4, !dbg !1678, !tbaa !1424
  %14 = icmp eq i32 %11, %13, !dbg !1678
  %15 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !1681
  %16 = bitcast %union.anon.3* %15 to i32*, !dbg !1681
  %17 = load i32, i32* %16, align 8, !dbg !1681, !tbaa !1025
  br i1 %14, label %29, label %18, !dbg !1682

; <label>:18:                                     ; preds = %9
  %19 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !1683
  %20 = load i8, i8* %19, align 2, !dbg !1683, !tbaa !537
  %21 = zext i8 %20 to i32, !dbg !1685
  %22 = icmp slt i32 %17, %21, !dbg !1686
  br i1 %22, label %24, label %23, !dbg !1687

; <label>:23:                                     ; preds = %18
  tail call fastcc void @exp2reg(%struct.FuncState* nonnull %0, %struct.expdesc* nonnull %1, i32 %17) #6, !dbg !1688
  br label %26, !dbg !1690

; <label>:24:                                     ; preds = %6, %18
  %25 = phi i32* [ %8, %6 ], [ %16, %18 ], !dbg !1677
  tail call void @luaK_exp2nextreg(%struct.FuncState* %0, %struct.expdesc* nonnull %1) #6, !dbg !1691
  br label %26, !dbg !1692

; <label>:26:                                     ; preds = %23, %24
  %27 = phi i32* [ %25, %24 ], [ %16, %23 ]
  %28 = load i32, i32* %27, align 8, !dbg !1693, !tbaa !1025
  br label %29, !dbg !1694

; <label>:29:                                     ; preds = %26, %9
  %30 = phi i32 [ %17, %9 ], [ %28, %26 ], !dbg !1681
  ret i32 %30, !dbg !1694
}

; Function Attrs: noredzone nounwind
define hidden void @luaK_exp2val(%struct.FuncState*, %struct.expdesc* nocapture) local_unnamed_addr #0 !dbg !1695 {
  %3 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2, !dbg !1701
  %4 = load i32, i32* %3, align 8, !dbg !1701, !tbaa !1423
  %5 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3, !dbg !1701
  %6 = load i32, i32* %5, align 4, !dbg !1701, !tbaa !1424
  %7 = icmp eq i32 %4, %6, !dbg !1701
  br i1 %7, label %26, label %8, !dbg !1703

; <label>:8:                                      ; preds = %2
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* nonnull %1) #5, !dbg !1707
  %9 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0, !dbg !1708
  %10 = load i32, i32* %9, align 8, !dbg !1708, !tbaa !1141
  %11 = icmp eq i32 %10, 12, !dbg !1709
  br i1 %11, label %12, label %25, !dbg !1710

; <label>:12:                                     ; preds = %8
  %13 = load i32, i32* %3, align 8, !dbg !1711, !tbaa !1423
  %14 = load i32, i32* %5, align 4, !dbg !1711, !tbaa !1424
  %15 = icmp eq i32 %13, %14, !dbg !1711
  %16 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !1712
  %17 = bitcast %union.anon.3* %16 to i32*, !dbg !1712
  %18 = load i32, i32* %17, align 8, !dbg !1712, !tbaa !1025
  br i1 %15, label %27, label %19, !dbg !1713

; <label>:19:                                     ; preds = %12
  %20 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !1714
  %21 = load i8, i8* %20, align 2, !dbg !1714, !tbaa !537
  %22 = zext i8 %21 to i32, !dbg !1715
  %23 = icmp slt i32 %18, %22, !dbg !1716
  br i1 %23, label %25, label %24, !dbg !1717

; <label>:24:                                     ; preds = %19
  tail call fastcc void @exp2reg(%struct.FuncState* nonnull %0, %struct.expdesc* nonnull %1, i32 %18) #5, !dbg !1718
  br label %27, !dbg !1719

; <label>:25:                                     ; preds = %8, %19
  tail call void @luaK_exp2nextreg(%struct.FuncState* %0, %struct.expdesc* nonnull %1) #5, !dbg !1720
  br label %27, !dbg !1721

; <label>:26:                                     ; preds = %2
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* nonnull %1) #6, !dbg !1722
  br label %27

; <label>:27:                                     ; preds = %25, %24, %12, %26
  ret void, !dbg !1723
}

; Function Attrs: noredzone nounwind
define hidden i32 @luaK_exp2RK(%struct.FuncState*, %struct.expdesc* nocapture) local_unnamed_addr #0 !dbg !1724 {
  %3 = alloca %struct.lua_TValue, align 8
  %4 = alloca %struct.lua_TValue, align 8
  %5 = alloca %struct.lua_TValue, align 8
  %6 = alloca %struct.lua_TValue, align 8
  %7 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2, !dbg !1733
  %8 = load i32, i32* %7, align 8, !dbg !1733, !tbaa !1423
  %9 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3, !dbg !1733
  %10 = load i32, i32* %9, align 4, !dbg !1733, !tbaa !1424
  %11 = icmp eq i32 %8, %10, !dbg !1733
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* nonnull %1) #5, !dbg !1734
  %12 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0, !dbg !1734
  br i1 %11, label %30, label %13, !dbg !1735

; <label>:13:                                     ; preds = %2
  %14 = load i32, i32* %12, align 8, !dbg !1739, !tbaa !1141
  %15 = icmp eq i32 %14, 12, !dbg !1740
  br i1 %15, label %16, label %29, !dbg !1741

; <label>:16:                                     ; preds = %13
  %17 = load i32, i32* %7, align 8, !dbg !1742, !tbaa !1423
  %18 = load i32, i32* %9, align 4, !dbg !1742, !tbaa !1424
  %19 = icmp eq i32 %17, %18, !dbg !1742
  %20 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !1743
  %21 = bitcast %union.anon.3* %20 to i32*, !dbg !1743
  %22 = load i32, i32* %21, align 8, !dbg !1743, !tbaa !1025
  br i1 %19, label %30, label %23, !dbg !1744

; <label>:23:                                     ; preds = %16
  %24 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !1745
  %25 = load i8, i8* %24, align 2, !dbg !1745, !tbaa !537
  %26 = zext i8 %25 to i32, !dbg !1746
  %27 = icmp slt i32 %22, %26, !dbg !1747
  br i1 %27, label %29, label %28, !dbg !1748

; <label>:28:                                     ; preds = %23
  tail call fastcc void @exp2reg(%struct.FuncState* nonnull %0, %struct.expdesc* nonnull %1, i32 %22) #5, !dbg !1749
  br label %30, !dbg !1750

; <label>:29:                                     ; preds = %23, %13
  tail call void @luaK_exp2nextreg(%struct.FuncState* %0, %struct.expdesc* nonnull %1) #5, !dbg !1751
  br label %30, !dbg !1752

; <label>:30:                                     ; preds = %2, %16, %28, %29
  %31 = load i32, i32* %12, align 8, !dbg !1753, !tbaa !1141
  switch i32 %31, label %74 [
    i32 5, label %32
    i32 2, label %32
    i32 3, label %32
    i32 1, label %32
    i32 4, label %67
  ], !dbg !1754

; <label>:32:                                     ; preds = %30, %30, %30, %30
  %33 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 10, !dbg !1755
  %34 = load i32, i32* %33, align 8, !dbg !1755, !tbaa !1073
  %35 = icmp slt i32 %34, 256, !dbg !1759
  br i1 %35, label %36, label %74, !dbg !1760

; <label>:36:                                     ; preds = %32
  switch i32 %31, label %55 [
    i32 1, label %37
    i32 5, label %47
  ], !dbg !1761

; <label>:37:                                     ; preds = %36
  %38 = bitcast %struct.lua_TValue* %5 to i8*, !dbg !1772
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %38) #4, !dbg !1772
  %39 = bitcast %struct.lua_TValue* %6 to i8*, !dbg !1772
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %39) #4, !dbg !1772
  %40 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 0, i32 1, !dbg !1773
  store i32 0, i32* %40, align 8, !dbg !1773, !tbaa !1026
  %41 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 1, !dbg !1774
  %42 = bitcast %struct.Table** %41 to i64*, !dbg !1774
  %43 = load i64, i64* %42, align 8, !dbg !1774, !tbaa !1059
  %44 = bitcast %struct.lua_TValue* %5 to i64*, !dbg !1774
  store i64 %43, i64* %44, align 8, !dbg !1774, !tbaa !1025
  %45 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %5, i64 0, i32 1, !dbg !1774
  store i32 5, i32* %45, align 8, !dbg !1774, !tbaa !1026
  %46 = call fastcc i32 @addk(%struct.FuncState* nonnull %0, %struct.lua_TValue* nonnull %5, %struct.lua_TValue* nonnull %6) #5, !dbg !1777
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %39) #4, !dbg !1778
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %38) #4, !dbg !1778
  br label %62, !dbg !1761

; <label>:47:                                     ; preds = %36
  %48 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, i32 0, !dbg !1779
  %49 = bitcast double* %48 to i64*, !dbg !1779
  %50 = load i64, i64* %49, align 8, !dbg !1779, !tbaa !1025
  %51 = bitcast %struct.lua_TValue* %4 to i8*, !dbg !1783
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %51) #4, !dbg !1783
  %52 = bitcast %struct.lua_TValue* %4 to i64*, !dbg !1784
  store i64 %50, i64* %52, align 8, !dbg !1784, !tbaa !1025
  %53 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %4, i64 0, i32 1, !dbg !1784
  store i32 3, i32* %53, align 8, !dbg !1784, !tbaa !1026
  %54 = call fastcc i32 @addk(%struct.FuncState* nonnull %0, %struct.lua_TValue* nonnull %4, %struct.lua_TValue* nonnull %4) #5, !dbg !1786
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %51) #4, !dbg !1787
  br label %62, !dbg !1788

; <label>:55:                                     ; preds = %36
  %56 = icmp eq i32 %31, 2, !dbg !1789
  %57 = zext i1 %56 to i32, !dbg !1789
  %58 = bitcast %struct.lua_TValue* %3 to i8*, !dbg !1800
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %58) #4, !dbg !1800
  %59 = bitcast %struct.lua_TValue* %3 to i32*, !dbg !1801
  store i32 %57, i32* %59, align 8, !dbg !1801, !tbaa !1025
  %60 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3, i64 0, i32 1, !dbg !1801
  store i32 1, i32* %60, align 8, !dbg !1801, !tbaa !1026
  %61 = call fastcc i32 @addk(%struct.FuncState* nonnull %0, %struct.lua_TValue* nonnull %3, %struct.lua_TValue* nonnull %3) #5, !dbg !1803
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %58) #4, !dbg !1804
  br label %62, !dbg !1788

; <label>:62:                                     ; preds = %47, %55, %37
  %63 = phi i32 [ %46, %37 ], [ %54, %47 ], [ %61, %55 ], !dbg !1761
  %64 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !1805
  %65 = bitcast %union.anon.3* %64 to i32*, !dbg !1806
  store i32 %63, i32* %65, align 8, !dbg !1807, !tbaa !1025
  store i32 4, i32* %12, align 8, !dbg !1808, !tbaa !1141
  %66 = or i32 %63, 256, !dbg !1809
  br label %97, !dbg !1810

; <label>:67:                                     ; preds = %30
  %68 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !1811
  %69 = bitcast %union.anon.3* %68 to i32*, !dbg !1814
  %70 = load i32, i32* %69, align 8, !dbg !1814, !tbaa !1025
  %71 = icmp slt i32 %70, 256, !dbg !1815
  br i1 %71, label %72, label %74, !dbg !1816

; <label>:72:                                     ; preds = %67
  %73 = or i32 %70, 256, !dbg !1817
  br label %97, !dbg !1818

; <label>:74:                                     ; preds = %30, %67, %32
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* nonnull %1) #5, !dbg !1822
  %75 = load i32, i32* %12, align 8, !dbg !1823, !tbaa !1141
  %76 = icmp eq i32 %75, 12, !dbg !1824
  br i1 %76, label %80, label %77, !dbg !1825

; <label>:77:                                     ; preds = %74
  %78 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !1826
  %79 = bitcast %union.anon.3* %78 to i32*, !dbg !1827
  br label %94, !dbg !1825

; <label>:80:                                     ; preds = %74
  %81 = load i32, i32* %7, align 8, !dbg !1828, !tbaa !1423
  %82 = load i32, i32* %9, align 4, !dbg !1828, !tbaa !1424
  %83 = icmp eq i32 %81, %82, !dbg !1828
  %84 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !1829
  %85 = bitcast %union.anon.3* %84 to i32*, !dbg !1829
  %86 = load i32, i32* %85, align 8, !dbg !1829, !tbaa !1025
  br i1 %83, label %97, label %87, !dbg !1830

; <label>:87:                                     ; preds = %80
  %88 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !1831
  %89 = load i8, i8* %88, align 2, !dbg !1831, !tbaa !537
  %90 = zext i8 %89 to i32, !dbg !1832
  %91 = icmp slt i32 %86, %90, !dbg !1833
  br i1 %91, label %94, label %92, !dbg !1834

; <label>:92:                                     ; preds = %87
  tail call fastcc void @exp2reg(%struct.FuncState* nonnull %0, %struct.expdesc* nonnull %1, i32 %86) #5, !dbg !1835
  %93 = load i32, i32* %85, align 8, !dbg !1836, !tbaa !1025
  br label %97, !dbg !1837

; <label>:94:                                     ; preds = %87, %77
  %95 = phi i32* [ %79, %77 ], [ %85, %87 ], !dbg !1827
  tail call void @luaK_exp2nextreg(%struct.FuncState* %0, %struct.expdesc* nonnull %1) #5, !dbg !1838
  %96 = load i32, i32* %95, align 8, !dbg !1827, !tbaa !1025
  br label %97, !dbg !1839

; <label>:97:                                     ; preds = %94, %92, %80, %72, %62
  %98 = phi i32 [ %73, %72 ], [ %66, %62 ], [ %93, %92 ], [ %96, %94 ], [ %86, %80 ], !dbg !1840
  ret i32 %98, !dbg !1841
}

; Function Attrs: noredzone nounwind
define hidden void @luaK_storevar(%struct.FuncState*, %struct.expdesc* nocapture readonly, %struct.expdesc*) local_unnamed_addr #0 !dbg !1842 {
  %4 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0, !dbg !1859
  %5 = load i32, i32* %4, align 8, !dbg !1859, !tbaa !1141
  switch i32 %5, label %130 [
    i32 6, label %6
    i32 7, label %29
    i32 8, label %70
    i32 9, label %111
  ], !dbg !1860

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0, !dbg !1865
  %8 = load i32, i32* %7, align 8, !dbg !1865, !tbaa !1141
  %9 = icmp eq i32 %8, 12, !dbg !1866
  br i1 %9, label %10, label %25, !dbg !1867

; <label>:10:                                     ; preds = %6
  %11 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, !dbg !1868
  %12 = bitcast %union.anon.3* %11 to i32*, !dbg !1869
  %13 = load i32, i32* %12, align 8, !dbg !1869, !tbaa !1025
  %14 = and i32 %13, 256, !dbg !1873
  %15 = icmp eq i32 %14, 0, !dbg !1873
  br i1 %15, label %16, label %25, !dbg !1874

; <label>:16:                                     ; preds = %10
  %17 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !1875
  %18 = load i8, i8* %17, align 2, !dbg !1875, !tbaa !537
  %19 = zext i8 %18 to i32, !dbg !1876
  %20 = icmp slt i32 %13, %19, !dbg !1877
  br i1 %20, label %25, label %21, !dbg !1878

; <label>:21:                                     ; preds = %16
  %22 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !1879
  %23 = load i32, i32* %22, align 4, !dbg !1880, !tbaa !962
  %24 = add nsw i32 %23, -1, !dbg !1880
  store i32 %24, i32* %22, align 4, !dbg !1880, !tbaa !962
  br label %25, !dbg !1881

; <label>:25:                                     ; preds = %6, %10, %16, %21
  %26 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !1882
  %27 = bitcast %union.anon.3* %26 to i32*, !dbg !1883
  %28 = load i32, i32* %27, align 8, !dbg !1883, !tbaa !1025
  tail call fastcc void @exp2reg(%struct.FuncState* %0, %struct.expdesc* nonnull %2, i32 %28) #6, !dbg !1884
  br label %149, !dbg !1885

; <label>:29:                                     ; preds = %3
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %2) #5, !dbg !1889
  %30 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0, !dbg !1890
  %31 = load i32, i32* %30, align 8, !dbg !1890, !tbaa !1141
  %32 = icmp eq i32 %31, 12, !dbg !1891
  br i1 %32, label %36, label %33, !dbg !1892

; <label>:33:                                     ; preds = %29
  %34 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, !dbg !1893
  %35 = bitcast %union.anon.3* %34 to i32*, !dbg !1894
  br label %51, !dbg !1892

; <label>:36:                                     ; preds = %29
  %37 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2, !dbg !1895
  %38 = load i32, i32* %37, align 8, !dbg !1895, !tbaa !1423
  %39 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3, !dbg !1895
  %40 = load i32, i32* %39, align 4, !dbg !1895, !tbaa !1424
  %41 = icmp eq i32 %38, %40, !dbg !1895
  %42 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, !dbg !1896
  %43 = bitcast %union.anon.3* %42 to i32*, !dbg !1896
  %44 = load i32, i32* %43, align 8, !dbg !1896, !tbaa !1025
  br i1 %41, label %56, label %45, !dbg !1897

; <label>:45:                                     ; preds = %36
  %46 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !1898
  %47 = load i8, i8* %46, align 2, !dbg !1898, !tbaa !537
  %48 = zext i8 %47 to i32, !dbg !1899
  %49 = icmp slt i32 %44, %48, !dbg !1900
  br i1 %49, label %51, label %50, !dbg !1901

; <label>:50:                                     ; preds = %45
  tail call fastcc void @exp2reg(%struct.FuncState* nonnull %0, %struct.expdesc* nonnull %2, i32 %44) #5, !dbg !1902
  br label %53, !dbg !1903

; <label>:51:                                     ; preds = %45, %33
  %52 = phi i32* [ %35, %33 ], [ %43, %45 ], !dbg !1894
  tail call void @luaK_exp2nextreg(%struct.FuncState* %0, %struct.expdesc* nonnull %2) #5, !dbg !1904
  br label %53, !dbg !1905

; <label>:53:                                     ; preds = %51, %50
  %54 = phi i32* [ %43, %50 ], [ %52, %51 ]
  %55 = load i32, i32* %54, align 8, !dbg !1906, !tbaa !1025
  br label %56, !dbg !1907

; <label>:56:                                     ; preds = %53, %36
  %57 = phi i32 [ %44, %36 ], [ %55, %53 ], !dbg !1896
  %58 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !1907
  %59 = bitcast %union.anon.3* %58 to i32*, !dbg !1909
  %60 = load i32, i32* %59, align 8, !dbg !1909, !tbaa !1025
  %61 = shl i32 %57, 6, !dbg !1916
  %62 = shl i32 %60, 23, !dbg !1916
  %63 = or i32 %61, %62, !dbg !1916
  %64 = or i32 %63, 8, !dbg !1916
  %65 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !1917
  %66 = load %struct.LexState*, %struct.LexState** %65, align 8, !dbg !1917, !tbaa !587
  %67 = getelementptr inbounds %struct.LexState, %struct.LexState* %66, i64 0, i32 2, !dbg !1918
  %68 = load i32, i32* %67, align 8, !dbg !1918, !tbaa !589
  %69 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %64, i32 %68) #5, !dbg !1919
  br label %130

; <label>:70:                                     ; preds = %3
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %2) #5, !dbg !1923
  %71 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0, !dbg !1924
  %72 = load i32, i32* %71, align 8, !dbg !1924, !tbaa !1141
  %73 = icmp eq i32 %72, 12, !dbg !1925
  br i1 %73, label %77, label %74, !dbg !1926

; <label>:74:                                     ; preds = %70
  %75 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, !dbg !1927
  %76 = bitcast %union.anon.3* %75 to i32*, !dbg !1928
  br label %92, !dbg !1926

; <label>:77:                                     ; preds = %70
  %78 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2, !dbg !1929
  %79 = load i32, i32* %78, align 8, !dbg !1929, !tbaa !1423
  %80 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3, !dbg !1929
  %81 = load i32, i32* %80, align 4, !dbg !1929, !tbaa !1424
  %82 = icmp eq i32 %79, %81, !dbg !1929
  %83 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, !dbg !1930
  %84 = bitcast %union.anon.3* %83 to i32*, !dbg !1930
  %85 = load i32, i32* %84, align 8, !dbg !1930, !tbaa !1025
  br i1 %82, label %97, label %86, !dbg !1931

; <label>:86:                                     ; preds = %77
  %87 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !1932
  %88 = load i8, i8* %87, align 2, !dbg !1932, !tbaa !537
  %89 = zext i8 %88 to i32, !dbg !1933
  %90 = icmp slt i32 %85, %89, !dbg !1934
  br i1 %90, label %92, label %91, !dbg !1935

; <label>:91:                                     ; preds = %86
  tail call fastcc void @exp2reg(%struct.FuncState* nonnull %0, %struct.expdesc* nonnull %2, i32 %85) #5, !dbg !1936
  br label %94, !dbg !1937

; <label>:92:                                     ; preds = %86, %74
  %93 = phi i32* [ %76, %74 ], [ %84, %86 ], !dbg !1928
  tail call void @luaK_exp2nextreg(%struct.FuncState* %0, %struct.expdesc* nonnull %2) #5, !dbg !1938
  br label %94, !dbg !1939

; <label>:94:                                     ; preds = %92, %91
  %95 = phi i32* [ %84, %91 ], [ %93, %92 ]
  %96 = load i32, i32* %95, align 8, !dbg !1940, !tbaa !1025
  br label %97, !dbg !1941

; <label>:97:                                     ; preds = %94, %77
  %98 = phi i32 [ %85, %77 ], [ %96, %94 ], !dbg !1930
  %99 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !1941
  %100 = bitcast %union.anon.3* %99 to i32*, !dbg !1943
  %101 = load i32, i32* %100, align 8, !dbg !1943, !tbaa !1025
  %102 = shl i32 %98, 6, !dbg !1949
  %103 = shl i32 %101, 14, !dbg !1949
  %104 = or i32 %102, %103, !dbg !1949
  %105 = or i32 %104, 7, !dbg !1949
  %106 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !1950
  %107 = load %struct.LexState*, %struct.LexState** %106, align 8, !dbg !1950, !tbaa !587
  %108 = getelementptr inbounds %struct.LexState, %struct.LexState* %107, i64 0, i32 2, !dbg !1951
  %109 = load i32, i32* %108, align 8, !dbg !1951, !tbaa !589
  %110 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %105, i32 %109) #5, !dbg !1952
  br label %130

; <label>:111:                                    ; preds = %3
  %112 = tail call i32 @luaK_exp2RK(%struct.FuncState* %0, %struct.expdesc* %2) #6, !dbg !1953
  %113 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !1955
  %114 = bitcast %union.anon.3* %113 to %struct.anon.4*, !dbg !1956
  %115 = bitcast %union.anon.3* %113 to i32*, !dbg !1957
  %116 = load i32, i32* %115, align 8, !dbg !1957, !tbaa !1025
  %117 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %114, i64 0, i32 1, !dbg !1958
  %118 = load i32, i32* %117, align 4, !dbg !1958, !tbaa !1025
  %119 = shl i32 %116, 6, !dbg !1965
  %120 = shl i32 %118, 23, !dbg !1965
  %121 = shl i32 %112, 14, !dbg !1965
  %122 = or i32 %121, %119, !dbg !1965
  %123 = or i32 %122, %120, !dbg !1965
  %124 = or i32 %123, 9, !dbg !1965
  %125 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !1966
  %126 = load %struct.LexState*, %struct.LexState** %125, align 8, !dbg !1966, !tbaa !587
  %127 = getelementptr inbounds %struct.LexState, %struct.LexState* %126, i64 0, i32 2, !dbg !1967
  %128 = load i32, i32* %127, align 8, !dbg !1967, !tbaa !589
  %129 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %124, i32 %128) #5, !dbg !1968
  br label %130

; <label>:130:                                    ; preds = %3, %111, %97, %56
  %131 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0, !dbg !1972
  %132 = load i32, i32* %131, align 8, !dbg !1972, !tbaa !1141
  %133 = icmp eq i32 %132, 12, !dbg !1973
  br i1 %133, label %134, label %149, !dbg !1974

; <label>:134:                                    ; preds = %130
  %135 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, !dbg !1975
  %136 = bitcast %union.anon.3* %135 to i32*, !dbg !1976
  %137 = load i32, i32* %136, align 8, !dbg !1976, !tbaa !1025
  %138 = and i32 %137, 256, !dbg !1980
  %139 = icmp eq i32 %138, 0, !dbg !1980
  br i1 %139, label %140, label %149, !dbg !1981

; <label>:140:                                    ; preds = %134
  %141 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !1982
  %142 = load i8, i8* %141, align 2, !dbg !1982, !tbaa !537
  %143 = zext i8 %142 to i32, !dbg !1983
  %144 = icmp slt i32 %137, %143, !dbg !1984
  br i1 %144, label %149, label %145, !dbg !1985

; <label>:145:                                    ; preds = %140
  %146 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !1986
  %147 = load i32, i32* %146, align 4, !dbg !1987, !tbaa !962
  %148 = add nsw i32 %147, -1, !dbg !1987
  store i32 %148, i32* %146, align 4, !dbg !1987, !tbaa !962
  br label %149, !dbg !1988

; <label>:149:                                    ; preds = %145, %140, %134, %130, %25
  ret void, !dbg !1989
}

; Function Attrs: noredzone nounwind
define hidden void @luaK_self(%struct.FuncState*, %struct.expdesc* nocapture, %struct.expdesc* nocapture) local_unnamed_addr #0 !dbg !1990 {
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %1) #5, !dbg !2002
  %4 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0, !dbg !2003
  %5 = load i32, i32* %4, align 8, !dbg !2003, !tbaa !1141
  %6 = icmp eq i32 %5, 12, !dbg !2004
  br i1 %6, label %7, label %22, !dbg !2005

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2, !dbg !2006
  %9 = load i32, i32* %8, align 8, !dbg !2006, !tbaa !1423
  %10 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3, !dbg !2006
  %11 = load i32, i32* %10, align 4, !dbg !2006, !tbaa !1424
  %12 = icmp eq i32 %9, %11, !dbg !2006
  %13 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !2007
  %14 = bitcast %union.anon.3* %13 to i32*, !dbg !2007
  %15 = load i32, i32* %14, align 8, !dbg !2007, !tbaa !1025
  br i1 %12, label %23, label %16, !dbg !2008

; <label>:16:                                     ; preds = %7
  %17 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !2009
  %18 = load i8, i8* %17, align 2, !dbg !2009, !tbaa !537
  %19 = zext i8 %18 to i32, !dbg !2010
  %20 = icmp slt i32 %15, %19, !dbg !2011
  br i1 %20, label %22, label %21, !dbg !2012

; <label>:21:                                     ; preds = %16
  tail call fastcc void @exp2reg(%struct.FuncState* nonnull %0, %struct.expdesc* nonnull %1, i32 %15) #5, !dbg !2013
  br label %23, !dbg !2014

; <label>:22:                                     ; preds = %3, %16
  tail call void @luaK_exp2nextreg(%struct.FuncState* %0, %struct.expdesc* nonnull %1) #5, !dbg !2015
  br label %23, !dbg !2016

; <label>:23:                                     ; preds = %7, %21, %22
  %24 = load i32, i32* %4, align 8, !dbg !2020, !tbaa !1141
  %25 = icmp eq i32 %24, 12, !dbg !2021
  br i1 %25, label %26, label %41, !dbg !2022

; <label>:26:                                     ; preds = %23
  %27 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !2023
  %28 = bitcast %union.anon.3* %27 to i32*, !dbg !2024
  %29 = load i32, i32* %28, align 8, !dbg !2024, !tbaa !1025
  %30 = and i32 %29, 256, !dbg !2028
  %31 = icmp eq i32 %30, 0, !dbg !2028
  br i1 %31, label %32, label %41, !dbg !2029

; <label>:32:                                     ; preds = %26
  %33 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !2030
  %34 = load i8, i8* %33, align 2, !dbg !2030, !tbaa !537
  %35 = zext i8 %34 to i32, !dbg !2031
  %36 = icmp slt i32 %29, %35, !dbg !2032
  br i1 %36, label %41, label %37, !dbg !2033

; <label>:37:                                     ; preds = %32
  %38 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !2034
  %39 = load i32, i32* %38, align 4, !dbg !2035, !tbaa !962
  %40 = add nsw i32 %39, -1, !dbg !2035
  store i32 %40, i32* %38, align 4, !dbg !2035, !tbaa !962
  br label %41, !dbg !2036

; <label>:41:                                     ; preds = %23, %26, %32, %37
  %42 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !2037
  %43 = load i32, i32* %42, align 4, !dbg !2037, !tbaa !962
  %44 = add nsw i32 %43, 2, !dbg !2045
  %45 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0, !dbg !2047
  %46 = load %struct.Proto*, %struct.Proto** %45, align 8, !dbg !2047, !tbaa !542
  %47 = getelementptr inbounds %struct.Proto, %struct.Proto* %46, i64 0, i32 22, !dbg !2048
  %48 = load i8, i8* %47, align 1, !dbg !2048, !tbaa !968
  %49 = zext i8 %48 to i32, !dbg !2049
  %50 = icmp sgt i32 %44, %49, !dbg !2050
  br i1 %50, label %51, label %64, !dbg !2051

; <label>:51:                                     ; preds = %41
  %52 = icmp sgt i32 %43, 247, !dbg !2052
  br i1 %52, label %53, label %60, !dbg !2053

; <label>:53:                                     ; preds = %51
  %54 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !2054
  %55 = load %struct.LexState*, %struct.LexState** %54, align 8, !dbg !2054, !tbaa !587
  tail call void @luaX_syntaxerror(%struct.LexState* %55, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0)) #5, !dbg !2055
  %56 = load %struct.Proto*, %struct.Proto** %45, align 8, !dbg !2056, !tbaa !542
  %57 = getelementptr inbounds %struct.Proto, %struct.Proto* %56, i64 0, i32 22, !dbg !2057
  %58 = load i32, i32* %42, align 4, !dbg !2058, !tbaa !962
  %59 = add nsw i32 %58, 2, !dbg !2058
  br label %60, !dbg !2055

; <label>:60:                                     ; preds = %53, %51
  %61 = phi i32 [ %59, %53 ], [ %44, %51 ], !dbg !2058
  %62 = phi i8* [ %57, %53 ], [ %47, %51 ], !dbg !2057
  %63 = trunc i32 %44 to i8, !dbg !2059
  store i8 %63, i8* %62, align 1, !dbg !2060, !tbaa !968
  br label %64, !dbg !2061

; <label>:64:                                     ; preds = %41, %60
  %65 = phi i32 [ %44, %41 ], [ %61, %60 ], !dbg !2058
  store i32 %65, i32* %42, align 4, !dbg !2058, !tbaa !962
  %66 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !2062
  %67 = bitcast %union.anon.3* %66 to i32*, !dbg !2063
  %68 = load i32, i32* %67, align 8, !dbg !2063, !tbaa !1025
  %69 = tail call i32 @luaK_exp2RK(%struct.FuncState* nonnull %0, %struct.expdesc* %2) #6, !dbg !2064
  %70 = shl i32 %43, 6, !dbg !2071
  %71 = shl i32 %68, 23, !dbg !2071
  %72 = shl i32 %69, 14, !dbg !2071
  %73 = or i32 %70, %71, !dbg !2071
  %74 = or i32 %73, %72, !dbg !2071
  %75 = or i32 %74, 11, !dbg !2071
  %76 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !2072
  %77 = load %struct.LexState*, %struct.LexState** %76, align 8, !dbg !2072, !tbaa !587
  %78 = getelementptr inbounds %struct.LexState, %struct.LexState* %77, i64 0, i32 2, !dbg !2073
  %79 = load i32, i32* %78, align 8, !dbg !2073, !tbaa !589
  %80 = tail call fastcc i32 @luaK_code(%struct.FuncState* nonnull %0, i32 %75, i32 %79) #5, !dbg !2074
  %81 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0, !dbg !2078
  %82 = load i32, i32* %81, align 8, !dbg !2078, !tbaa !1141
  %83 = icmp eq i32 %82, 12, !dbg !2079
  br i1 %83, label %84, label %98, !dbg !2080

; <label>:84:                                     ; preds = %64
  %85 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, !dbg !2081
  %86 = bitcast %union.anon.3* %85 to i32*, !dbg !2082
  %87 = load i32, i32* %86, align 8, !dbg !2082, !tbaa !1025
  %88 = and i32 %87, 256, !dbg !2086
  %89 = icmp eq i32 %88, 0, !dbg !2086
  br i1 %89, label %90, label %98, !dbg !2087

; <label>:90:                                     ; preds = %84
  %91 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !2088
  %92 = load i8, i8* %91, align 2, !dbg !2088, !tbaa !537
  %93 = zext i8 %92 to i32, !dbg !2089
  %94 = icmp slt i32 %87, %93, !dbg !2090
  br i1 %94, label %98, label %95, !dbg !2091

; <label>:95:                                     ; preds = %90
  %96 = load i32, i32* %42, align 4, !dbg !2092, !tbaa !962
  %97 = add nsw i32 %96, -1, !dbg !2092
  store i32 %97, i32* %42, align 4, !dbg !2092, !tbaa !962
  br label %98, !dbg !2093

; <label>:98:                                     ; preds = %64, %84, %90, %95
  store i32 %43, i32* %67, align 8, !dbg !2094, !tbaa !1025
  store i32 12, i32* %4, align 8, !dbg !2095, !tbaa !1141
  ret void, !dbg !2096
}

; Function Attrs: noredzone nounwind
define hidden void @luaK_goiftrue(%struct.FuncState* nocapture, %struct.expdesc* nocapture) local_unnamed_addr #0 !dbg !2097 {
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %1) #6, !dbg !2104
  %3 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0, !dbg !2105
  %4 = load i32, i32* %3, align 8, !dbg !2105, !tbaa !1141
  switch i32 %4, label %36 [
    i32 4, label %78
    i32 5, label %78
    i32 2, label %78
    i32 10, label %5
  ], !dbg !2106

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !2117
  %7 = bitcast %union.anon.3* %6 to i32*, !dbg !2118
  %8 = load i32, i32* %7, align 8, !dbg !2118, !tbaa !1025
  %9 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0, !dbg !2122
  %10 = load %struct.Proto*, %struct.Proto** %9, align 8, !dbg !2122, !tbaa !542
  %11 = getelementptr inbounds %struct.Proto, %struct.Proto* %10, i64 0, i32 4, !dbg !2123
  %12 = load i32*, i32** %11, align 8, !dbg !2123, !tbaa !544
  %13 = sext i32 %8 to i64, !dbg !2124
  %14 = getelementptr inbounds i32, i32* %12, i64 %13, !dbg !2124
  %15 = icmp sgt i32 %8, 0, !dbg !2126
  br i1 %15, label %16, label %24, !dbg !2127

; <label>:16:                                     ; preds = %5
  %17 = getelementptr inbounds i32, i32* %14, i64 -1, !dbg !2128
  %18 = load i32, i32* %17, align 4, !dbg !2128, !tbaa !550
  %19 = and i32 %18, 63, !dbg !2128
  %20 = zext i32 %19 to i64, !dbg !2128
  %21 = getelementptr inbounds [38 x i8], [38 x i8]* @luaP_opmodes, i64 0, i64 %20, !dbg !2128
  %22 = load i8, i8* %21, align 1, !dbg !2128, !tbaa !1025
  %23 = icmp slt i8 %22, 0, !dbg !2128
  br i1 %23, label %26, label %24, !dbg !2129

; <label>:24:                                     ; preds = %16, %5
  %25 = load i32, i32* %14, align 4, !dbg !2130, !tbaa !550
  br label %26, !dbg !2131

; <label>:26:                                     ; preds = %16, %24
  %27 = phi i32 [ %25, %24 ], [ %18, %16 ], !dbg !2130
  %28 = phi i32* [ %14, %24 ], [ %17, %16 ], !dbg !2132
  %29 = and i32 %27, -16321, !dbg !2130
  %30 = and i32 %27, 16320, !dbg !2130
  %31 = icmp eq i32 %30, 0, !dbg !2130
  %32 = zext i1 %31 to i32, !dbg !2130
  %33 = shl nuw nsw i32 %32, 6, !dbg !2130
  %34 = or i32 %33, %29, !dbg !2130
  store i32 %34, i32* %28, align 4, !dbg !2130, !tbaa !550
  %35 = load i32, i32* %7, align 8, !dbg !2134, !tbaa !1025
  br label %38, !dbg !2136

; <label>:36:                                     ; preds = %2
  %37 = tail call fastcc i32 @jumponcond(%struct.FuncState* %0, %struct.expdesc* nonnull %1, i32 0) #6, !dbg !2137
  br label %38, !dbg !2139

; <label>:38:                                     ; preds = %36, %26
  %39 = phi i32 [ %37, %36 ], [ %35, %26 ], !dbg !2140
  %40 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3, !dbg !2142
  %41 = icmp eq i32 %39, -1, !dbg !2147
  br i1 %41, label %78, label %42, !dbg !2148

; <label>:42:                                     ; preds = %38
  %43 = load i32, i32* %40, align 4, !dbg !2149, !tbaa !550
  %44 = icmp eq i32 %43, -1, !dbg !2150
  br i1 %44, label %50, label %45, !dbg !2151

; <label>:45:                                     ; preds = %42
  %46 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %47 = load %struct.Proto*, %struct.Proto** %46, align 8, !tbaa !542
  %48 = getelementptr inbounds %struct.Proto, %struct.Proto* %47, i64 0, i32 4
  %49 = load i32*, i32** %48, align 8, !tbaa !544
  br label %51, !dbg !2152

; <label>:50:                                     ; preds = %42
  store i32 %39, i32* %40, align 4, !dbg !2154, !tbaa !550
  br label %78, !dbg !2155

; <label>:51:                                     ; preds = %51, %45
  %52 = phi i32 [ %61, %51 ], [ %43, %45 ], !dbg !2156
  %53 = sext i32 %52 to i64, !dbg !2152
  %54 = getelementptr inbounds i32, i32* %49, i64 %53, !dbg !2152
  %55 = load i32, i32* %54, align 4, !dbg !2152, !tbaa !550
  %56 = lshr i32 %55, 14, !dbg !2152
  %57 = add nsw i32 %56, -131071, !dbg !2152
  %58 = icmp eq i32 %57, -1, !dbg !2161
  %59 = add nsw i32 %52, 1, !dbg !2162
  %60 = add nsw i32 %59, %57, !dbg !2163
  %61 = select i1 %58, i32 -1, i32 %60, !dbg !2164
  %62 = icmp eq i32 %61, -1, !dbg !2166
  br i1 %62, label %63, label %51, !dbg !2167, !llvm.loop !674

; <label>:63:                                     ; preds = %51
  %64 = getelementptr inbounds i32, i32* %49, i64 %53, !dbg !2152
  %65 = xor i32 %52, -1, !dbg !2173
  %66 = add i32 %39, %65, !dbg !2173
  %67 = tail call i32 @abs(i32 %66) #5, !dbg !2175
  %68 = icmp sgt i32 %67, 131071, !dbg !2176
  br i1 %68, label %69, label %72, !dbg !2177

; <label>:69:                                     ; preds = %63
  %70 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !2178
  %71 = load %struct.LexState*, %struct.LexState** %70, align 8, !dbg !2178, !tbaa !587
  tail call void @luaX_syntaxerror(%struct.LexState* %71, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !2179
  br label %72, !dbg !2179

; <label>:72:                                     ; preds = %69, %63
  %73 = load i32, i32* %64, align 4, !dbg !2180, !tbaa !550
  %74 = and i32 %73, 16383, !dbg !2180
  %75 = shl i32 %66, 14, !dbg !2180
  %76 = add i32 %75, 2147467264, !dbg !2180
  %77 = or i32 %74, %76, !dbg !2180
  store i32 %77, i32* %64, align 4, !dbg !2180, !tbaa !550
  br label %78

; <label>:78:                                     ; preds = %2, %2, %2, %38, %50, %72
  %79 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2, !dbg !2181
  %80 = load i32, i32* %79, align 8, !dbg !2181, !tbaa !1423
  %81 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 6, !dbg !2187
  %82 = load i32, i32* %81, align 8, !dbg !2187, !tbaa !521
  %83 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 7, !dbg !2188
  store i32 %82, i32* %83, align 4, !dbg !2189, !tbaa !529
  %84 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 8, !dbg !2190
  %85 = icmp eq i32 %80, -1, !dbg !2195
  br i1 %85, label %122, label %86, !dbg !2196

; <label>:86:                                     ; preds = %78
  %87 = load i32, i32* %84, align 4, !dbg !2197, !tbaa !550
  %88 = icmp eq i32 %87, -1, !dbg !2198
  br i1 %88, label %94, label %89, !dbg !2199

; <label>:89:                                     ; preds = %86
  %90 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %91 = load %struct.Proto*, %struct.Proto** %90, align 8, !tbaa !542
  %92 = getelementptr inbounds %struct.Proto, %struct.Proto* %91, i64 0, i32 4
  %93 = load i32*, i32** %92, align 8, !tbaa !544
  br label %95, !dbg !2200

; <label>:94:                                     ; preds = %86
  store i32 %80, i32* %84, align 4, !dbg !2202, !tbaa !550
  br label %122, !dbg !2203

; <label>:95:                                     ; preds = %95, %89
  %96 = phi i32 [ %105, %95 ], [ %87, %89 ], !dbg !2204
  %97 = sext i32 %96 to i64, !dbg !2200
  %98 = getelementptr inbounds i32, i32* %93, i64 %97, !dbg !2200
  %99 = load i32, i32* %98, align 4, !dbg !2200, !tbaa !550
  %100 = lshr i32 %99, 14, !dbg !2200
  %101 = add nsw i32 %100, -131071, !dbg !2200
  %102 = icmp eq i32 %101, -1, !dbg !2209
  %103 = add nsw i32 %96, 1, !dbg !2210
  %104 = add nsw i32 %103, %101, !dbg !2211
  %105 = select i1 %102, i32 -1, i32 %104, !dbg !2212
  %106 = icmp eq i32 %105, -1, !dbg !2214
  br i1 %106, label %107, label %95, !dbg !2215, !llvm.loop !674

; <label>:107:                                    ; preds = %95
  %108 = getelementptr inbounds i32, i32* %93, i64 %97, !dbg !2200
  %109 = xor i32 %96, -1, !dbg !2221
  %110 = add i32 %80, %109, !dbg !2221
  %111 = tail call i32 @abs(i32 %110) #5, !dbg !2223
  %112 = icmp sgt i32 %111, 131071, !dbg !2224
  br i1 %112, label %113, label %116, !dbg !2225

; <label>:113:                                    ; preds = %107
  %114 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !2226
  %115 = load %struct.LexState*, %struct.LexState** %114, align 8, !dbg !2226, !tbaa !587
  tail call void @luaX_syntaxerror(%struct.LexState* %115, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !2227
  br label %116, !dbg !2227

; <label>:116:                                    ; preds = %113, %107
  %117 = load i32, i32* %108, align 4, !dbg !2228, !tbaa !550
  %118 = and i32 %117, 16383, !dbg !2228
  %119 = shl i32 %110, 14, !dbg !2228
  %120 = add i32 %119, 2147467264, !dbg !2228
  %121 = or i32 %118, %120, !dbg !2228
  store i32 %121, i32* %108, align 4, !dbg !2228, !tbaa !550
  br label %122

; <label>:122:                                    ; preds = %78, %94, %116
  store i32 -1, i32* %79, align 8, !dbg !2229, !tbaa !1423
  ret void, !dbg !2230
}

; Function Attrs: noredzone nounwind
define internal fastcc i32 @jumponcond(%struct.FuncState* nocapture, %struct.expdesc* nocapture, i32) unnamed_addr #0 !dbg !2231 {
  %4 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0, !dbg !2244
  %5 = load i32, i32* %4, align 8, !dbg !2244, !tbaa !1141
  switch i32 %5, label %27 [
    i32 11, label %6
    i32 12, label %58
  ], !dbg !2245

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0, !dbg !2246
  %8 = load %struct.Proto*, %struct.Proto** %7, align 8, !dbg !2246, !tbaa !542
  %9 = getelementptr inbounds %struct.Proto, %struct.Proto* %8, i64 0, i32 4, !dbg !2246
  %10 = load i32*, i32** %9, align 8, !dbg !2246, !tbaa !544
  %11 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !2246
  %12 = bitcast %union.anon.3* %11 to i32*, !dbg !2246
  %13 = load i32, i32* %12, align 8, !dbg !2246, !tbaa !1025
  %14 = sext i32 %13 to i64, !dbg !2246
  %15 = getelementptr inbounds i32, i32* %10, i64 %14, !dbg !2246
  %16 = load i32, i32* %15, align 4, !dbg !2246, !tbaa !550
  %17 = and i32 %16, 63, !dbg !2248
  %18 = icmp eq i32 %17, 19, !dbg !2250
  br i1 %18, label %19, label %27, !dbg !2251

; <label>:19:                                     ; preds = %6
  %20 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 6, !dbg !2252
  %21 = load i32, i32* %20, align 8, !dbg !2254, !tbaa !521
  %22 = add nsw i32 %21, -1, !dbg !2254
  store i32 %22, i32* %20, align 8, !dbg !2254, !tbaa !521
  %23 = lshr i32 %16, 23, !dbg !2255
  %24 = icmp eq i32 %2, 0, !dbg !2256
  %25 = zext i1 %24 to i32, !dbg !2256
  %26 = tail call fastcc i32 @condjump(%struct.FuncState* nonnull %0, i32 26, i32 %23, i32 0, i32 %25) #6, !dbg !2257
  br label %77

; <label>:27:                                     ; preds = %3, %6
  %28 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !2271
  %29 = load i32, i32* %28, align 4, !dbg !2271, !tbaa !962
  %30 = add nsw i32 %29, 1, !dbg !2272
  %31 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0, !dbg !2274
  %32 = load %struct.Proto*, %struct.Proto** %31, align 8, !dbg !2274, !tbaa !542
  %33 = getelementptr inbounds %struct.Proto, %struct.Proto* %32, i64 0, i32 22, !dbg !2275
  %34 = load i8, i8* %33, align 1, !dbg !2275, !tbaa !968
  %35 = zext i8 %34 to i32, !dbg !2276
  %36 = icmp slt i32 %29, %35, !dbg !2277
  br i1 %36, label %50, label %37, !dbg !2278

; <label>:37:                                     ; preds = %27
  %38 = icmp sgt i32 %29, 248, !dbg !2279
  br i1 %38, label %39, label %46, !dbg !2280

; <label>:39:                                     ; preds = %37
  %40 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !2281
  %41 = load %struct.LexState*, %struct.LexState** %40, align 8, !dbg !2281, !tbaa !587
  tail call void @luaX_syntaxerror(%struct.LexState* %41, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0)) #5, !dbg !2282
  %42 = load %struct.Proto*, %struct.Proto** %31, align 8, !dbg !2283, !tbaa !542
  %43 = getelementptr inbounds %struct.Proto, %struct.Proto* %42, i64 0, i32 22, !dbg !2284
  %44 = load i32, i32* %28, align 4, !dbg !2285, !tbaa !962
  %45 = add nsw i32 %44, 1, !dbg !2285
  br label %46, !dbg !2282

; <label>:46:                                     ; preds = %39, %37
  %47 = phi i32 [ %45, %39 ], [ %30, %37 ], !dbg !2285
  %48 = phi i8* [ %43, %39 ], [ %33, %37 ], !dbg !2284
  %49 = trunc i32 %30 to i8, !dbg !2286
  store i8 %49, i8* %48, align 1, !dbg !2287, !tbaa !968
  br label %50, !dbg !2288

; <label>:50:                                     ; preds = %27, %46
  %51 = phi i32 [ %30, %27 ], [ %47, %46 ], !dbg !2285
  store i32 %51, i32* %28, align 4, !dbg !2285, !tbaa !962
  %52 = add nsw i32 %51, -1, !dbg !2289
  tail call fastcc void @discharge2reg(%struct.FuncState* nonnull %0, %struct.expdesc* nonnull %1, i32 %52) #5, !dbg !2290
  %53 = load i32, i32* %4, align 8, !dbg !2291, !tbaa !1141
  %54 = icmp eq i32 %53, 12, !dbg !2293
  br i1 %54, label %58, label %55, !dbg !2296

; <label>:55:                                     ; preds = %50
  %56 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !2297
  %57 = bitcast %union.anon.3* %56 to i32*, !dbg !2298
  br label %73, !dbg !2296

; <label>:58:                                     ; preds = %3, %50
  %59 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !2299
  %60 = bitcast %union.anon.3* %59 to i32*, !dbg !2300
  %61 = load i32, i32* %60, align 8, !dbg !2300, !tbaa !1025
  %62 = and i32 %61, 256, !dbg !2304
  %63 = icmp eq i32 %62, 0, !dbg !2304
  br i1 %63, label %64, label %73, !dbg !2305

; <label>:64:                                     ; preds = %58
  %65 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !2306
  %66 = load i8, i8* %65, align 2, !dbg !2306, !tbaa !537
  %67 = zext i8 %66 to i32, !dbg !2307
  %68 = icmp slt i32 %61, %67, !dbg !2308
  br i1 %68, label %73, label %69, !dbg !2309

; <label>:69:                                     ; preds = %64
  %70 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !2310
  %71 = load i32, i32* %70, align 4, !dbg !2311, !tbaa !962
  %72 = add nsw i32 %71, -1, !dbg !2311
  store i32 %72, i32* %70, align 4, !dbg !2311, !tbaa !962
  br label %73, !dbg !2312

; <label>:73:                                     ; preds = %55, %58, %64, %69
  %74 = phi i32* [ %57, %55 ], [ %60, %58 ], [ %60, %64 ], [ %60, %69 ], !dbg !2298
  %75 = load i32, i32* %74, align 8, !dbg !2298, !tbaa !1025
  %76 = tail call fastcc i32 @condjump(%struct.FuncState* %0, i32 27, i32 255, i32 %75, i32 %2) #6, !dbg !2313
  br label %77, !dbg !2314

; <label>:77:                                     ; preds = %19, %73
  %78 = phi i32 [ %76, %73 ], [ %26, %19 ], !dbg !2315
  ret i32 %78, !dbg !2316
}

; Function Attrs: noredzone nounwind
define hidden void @luaK_indexed(%struct.FuncState*, %struct.expdesc* nocapture, %struct.expdesc* nocapture) local_unnamed_addr #0 !dbg !2317 {
  %4 = tail call i32 @luaK_exp2RK(%struct.FuncState* %0, %struct.expdesc* %2) #6, !dbg !2325
  %5 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !2326
  %6 = bitcast %union.anon.3* %5 to %struct.anon.4*, !dbg !2327
  %7 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %6, i64 0, i32 1, !dbg !2328
  store i32 %4, i32* %7, align 4, !dbg !2329, !tbaa !1025
  %8 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0, !dbg !2330
  store i32 9, i32* %8, align 8, !dbg !2331, !tbaa !1141
  ret void, !dbg !2332
}

; Function Attrs: noredzone nounwind
define hidden void @luaK_prefix(%struct.FuncState*, i32, %struct.expdesc*) local_unnamed_addr #0 !dbg !2333 {
  %4 = alloca %struct.expdesc, align 8
  %5 = bitcast %struct.expdesc* %4 to i8*, !dbg !2345
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #4, !dbg !2345
  %6 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 3, !dbg !2346
  store i32 -1, i32* %6, align 4, !dbg !2347, !tbaa !1424
  %7 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 2, !dbg !2348
  store i32 -1, i32* %7, align 8, !dbg !2349, !tbaa !1423
  %8 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 0, !dbg !2350
  store i32 5, i32* %8, align 8, !dbg !2351, !tbaa !1141
  %9 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 1, i32 0, !dbg !2352
  store double 0.000000e+00, double* %9, align 8, !dbg !2353, !tbaa !1025
  switch i32 %1, label %245 [
    i32 0, label %10
    i32 1, label %42
    i32 2, label %224
  ], !dbg !2354

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0, !dbg !2365
  %12 = load i32, i32* %11, align 8, !dbg !2365, !tbaa !1141
  %13 = icmp eq i32 %12, 5, !dbg !2366
  br i1 %13, label %14, label %22, !dbg !2367

; <label>:14:                                     ; preds = %10
  %15 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2, !dbg !2368
  %16 = load i32, i32* %15, align 8, !dbg !2368, !tbaa !1423
  %17 = icmp eq i32 %16, -1, !dbg !2369
  br i1 %17, label %18, label %22, !dbg !2370

; <label>:18:                                     ; preds = %14
  %19 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3, !dbg !2371
  %20 = load i32, i32* %19, align 4, !dbg !2371, !tbaa !1424
  %21 = icmp eq i32 %20, -1, !dbg !2372
  br i1 %21, label %41, label %22, !dbg !2373

; <label>:22:                                     ; preds = %18, %10, %14
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* nonnull %2) #5, !dbg !2377
  %23 = load i32, i32* %11, align 8, !dbg !2378, !tbaa !1141
  %24 = icmp eq i32 %23, 12, !dbg !2379
  br i1 %24, label %25, label %40, !dbg !2380

; <label>:25:                                     ; preds = %22
  %26 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2, !dbg !2381
  %27 = load i32, i32* %26, align 8, !dbg !2381, !tbaa !1423
  %28 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3, !dbg !2381
  %29 = load i32, i32* %28, align 4, !dbg !2381, !tbaa !1424
  %30 = icmp eq i32 %27, %29, !dbg !2381
  %31 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, !dbg !2382
  %32 = bitcast %union.anon.3* %31 to i32*, !dbg !2382
  %33 = load i32, i32* %32, align 8, !dbg !2382, !tbaa !1025
  br i1 %30, label %41, label %34, !dbg !2383

; <label>:34:                                     ; preds = %25
  %35 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !2384
  %36 = load i8, i8* %35, align 2, !dbg !2384, !tbaa !537
  %37 = zext i8 %36 to i32, !dbg !2385
  %38 = icmp slt i32 %33, %37, !dbg !2386
  br i1 %38, label %40, label %39, !dbg !2387

; <label>:39:                                     ; preds = %34
  tail call fastcc void @exp2reg(%struct.FuncState* nonnull %0, %struct.expdesc* nonnull %2, i32 %33) #5, !dbg !2388
  br label %41, !dbg !2389

; <label>:40:                                     ; preds = %22, %34
  tail call void @luaK_exp2nextreg(%struct.FuncState* %0, %struct.expdesc* nonnull %2) #5, !dbg !2390
  br label %41, !dbg !2391

; <label>:41:                                     ; preds = %18, %40, %39, %25
  call fastcc void @codearith(%struct.FuncState* %0, i32 18, %struct.expdesc* nonnull %2, %struct.expdesc* nonnull %4) #6, !dbg !2393
  br label %245, !dbg !2394

; <label>:42:                                     ; preds = %3
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %2) #5, !dbg !2404
  %43 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0, !dbg !2405
  %44 = load i32, i32* %43, align 8, !dbg !2405, !tbaa !1141
  switch i32 %44, label %133 [
    i32 1, label %45
    i32 3, label %45
    i32 4, label %46
    i32 5, label %46
    i32 2, label %46
    i32 10, label %47
    i32 12, label %108
    i32 11, label %77
  ], !dbg !2406

; <label>:45:                                     ; preds = %42, %42
  store i32 2, i32* %43, align 8, !dbg !2407, !tbaa !1141
  br label %133, !dbg !2410

; <label>:46:                                     ; preds = %42, %42, %42
  store i32 3, i32* %43, align 8, !dbg !2411, !tbaa !1141
  br label %133, !dbg !2413

; <label>:47:                                     ; preds = %42
  %48 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, !dbg !2418
  %49 = bitcast %union.anon.3* %48 to i32*, !dbg !2419
  %50 = load i32, i32* %49, align 8, !dbg !2419, !tbaa !1025
  %51 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0, !dbg !2423
  %52 = load %struct.Proto*, %struct.Proto** %51, align 8, !dbg !2423, !tbaa !542
  %53 = getelementptr inbounds %struct.Proto, %struct.Proto* %52, i64 0, i32 4, !dbg !2424
  %54 = load i32*, i32** %53, align 8, !dbg !2424, !tbaa !544
  %55 = sext i32 %50 to i64, !dbg !2425
  %56 = getelementptr inbounds i32, i32* %54, i64 %55, !dbg !2425
  %57 = icmp sgt i32 %50, 0, !dbg !2427
  br i1 %57, label %58, label %66, !dbg !2428

; <label>:58:                                     ; preds = %47
  %59 = getelementptr inbounds i32, i32* %56, i64 -1, !dbg !2429
  %60 = load i32, i32* %59, align 4, !dbg !2429, !tbaa !550
  %61 = and i32 %60, 63, !dbg !2429
  %62 = zext i32 %61 to i64, !dbg !2429
  %63 = getelementptr inbounds [38 x i8], [38 x i8]* @luaP_opmodes, i64 0, i64 %62, !dbg !2429
  %64 = load i8, i8* %63, align 1, !dbg !2429, !tbaa !1025
  %65 = icmp slt i8 %64, 0, !dbg !2429
  br i1 %65, label %68, label %66, !dbg !2430

; <label>:66:                                     ; preds = %58, %47
  %67 = load i32, i32* %56, align 4, !dbg !2431, !tbaa !550
  br label %68, !dbg !2432

; <label>:68:                                     ; preds = %66, %58
  %69 = phi i32 [ %67, %66 ], [ %60, %58 ], !dbg !2431
  %70 = phi i32* [ %56, %66 ], [ %59, %58 ], !dbg !2433
  %71 = and i32 %69, -16321, !dbg !2431
  %72 = and i32 %69, 16320, !dbg !2431
  %73 = icmp eq i32 %72, 0, !dbg !2431
  %74 = zext i1 %73 to i32, !dbg !2431
  %75 = shl nuw nsw i32 %74, 6, !dbg !2431
  %76 = or i32 %75, %71, !dbg !2431
  store i32 %76, i32* %70, align 4, !dbg !2431, !tbaa !550
  br label %133, !dbg !2435

; <label>:77:                                     ; preds = %42
  %78 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !2444
  %79 = load i32, i32* %78, align 4, !dbg !2444, !tbaa !962
  %80 = add nsw i32 %79, 1, !dbg !2445
  %81 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0, !dbg !2447
  %82 = load %struct.Proto*, %struct.Proto** %81, align 8, !dbg !2447, !tbaa !542
  %83 = getelementptr inbounds %struct.Proto, %struct.Proto* %82, i64 0, i32 22, !dbg !2448
  %84 = load i8, i8* %83, align 1, !dbg !2448, !tbaa !968
  %85 = zext i8 %84 to i32, !dbg !2449
  %86 = icmp slt i32 %79, %85, !dbg !2450
  br i1 %86, label %100, label %87, !dbg !2451

; <label>:87:                                     ; preds = %77
  %88 = icmp sgt i32 %79, 248, !dbg !2452
  br i1 %88, label %89, label %96, !dbg !2453

; <label>:89:                                     ; preds = %87
  %90 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !2454
  %91 = load %struct.LexState*, %struct.LexState** %90, align 8, !dbg !2454, !tbaa !587
  tail call void @luaX_syntaxerror(%struct.LexState* %91, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0)) #5, !dbg !2455
  %92 = load %struct.Proto*, %struct.Proto** %81, align 8, !dbg !2456, !tbaa !542
  %93 = getelementptr inbounds %struct.Proto, %struct.Proto* %92, i64 0, i32 22, !dbg !2457
  %94 = load i32, i32* %78, align 4, !dbg !2458, !tbaa !962
  %95 = add nsw i32 %94, 1, !dbg !2458
  br label %96, !dbg !2455

; <label>:96:                                     ; preds = %89, %87
  %97 = phi i32 [ %95, %89 ], [ %80, %87 ], !dbg !2458
  %98 = phi i8* [ %93, %89 ], [ %83, %87 ], !dbg !2457
  %99 = trunc i32 %80 to i8, !dbg !2459
  store i8 %99, i8* %98, align 1, !dbg !2460, !tbaa !968
  br label %100, !dbg !2461

; <label>:100:                                    ; preds = %96, %77
  %101 = phi i32 [ %80, %77 ], [ %97, %96 ], !dbg !2458
  store i32 %101, i32* %78, align 4, !dbg !2458, !tbaa !962
  %102 = add nsw i32 %101, -1, !dbg !2462
  tail call fastcc void @discharge2reg(%struct.FuncState* nonnull %0, %struct.expdesc* nonnull %2, i32 %102) #5, !dbg !2463
  %103 = load i32, i32* %43, align 8, !dbg !2464, !tbaa !1141
  %104 = icmp eq i32 %103, 12, !dbg !2466
  br i1 %104, label %108, label %105, !dbg !2469

; <label>:105:                                    ; preds = %100
  %106 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, !dbg !2470
  %107 = bitcast %union.anon.3* %106 to i32*, !dbg !2471
  br label %123, !dbg !2469

; <label>:108:                                    ; preds = %100, %42
  %109 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, !dbg !2472
  %110 = bitcast %union.anon.3* %109 to i32*, !dbg !2473
  %111 = load i32, i32* %110, align 8, !dbg !2473, !tbaa !1025
  %112 = and i32 %111, 256, !dbg !2477
  %113 = icmp eq i32 %112, 0, !dbg !2477
  br i1 %113, label %114, label %123, !dbg !2478

; <label>:114:                                    ; preds = %108
  %115 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !2479
  %116 = load i8, i8* %115, align 2, !dbg !2479, !tbaa !537
  %117 = zext i8 %116 to i32, !dbg !2480
  %118 = icmp slt i32 %111, %117, !dbg !2481
  br i1 %118, label %123, label %119, !dbg !2482

; <label>:119:                                    ; preds = %114
  %120 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !2483
  %121 = load i32, i32* %120, align 4, !dbg !2484, !tbaa !962
  %122 = add nsw i32 %121, -1, !dbg !2484
  store i32 %122, i32* %120, align 4, !dbg !2484, !tbaa !962
  br label %123, !dbg !2485

; <label>:123:                                    ; preds = %119, %114, %108, %105
  %124 = phi i32* [ %107, %105 ], [ %110, %108 ], [ %110, %114 ], [ %110, %119 ], !dbg !2471
  %125 = load i32, i32* %124, align 8, !dbg !2471, !tbaa !1025
  %126 = shl i32 %125, 23, !dbg !2492
  %127 = or i32 %126, 19, !dbg !2492
  %128 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !2493
  %129 = load %struct.LexState*, %struct.LexState** %128, align 8, !dbg !2493, !tbaa !587
  %130 = getelementptr inbounds %struct.LexState, %struct.LexState* %129, i64 0, i32 2, !dbg !2494
  %131 = load i32, i32* %130, align 8, !dbg !2494, !tbaa !589
  %132 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %127, i32 %131) #5, !dbg !2495
  store i32 %132, i32* %124, align 8, !dbg !2496, !tbaa !1025
  store i32 11, i32* %43, align 8, !dbg !2497, !tbaa !1141
  br label %133, !dbg !2498

; <label>:133:                                    ; preds = %123, %68, %46, %45, %42
  %134 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3, !dbg !2499
  %135 = load i32, i32* %134, align 4, !dbg !2499, !tbaa !1424
  %136 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2, !dbg !2501
  %137 = load i32, i32* %136, align 8, !dbg !2501, !tbaa !1423
  store i32 %137, i32* %134, align 4, !dbg !2502, !tbaa !1424
  store i32 %135, i32* %136, align 8, !dbg !2503, !tbaa !1423
  %138 = icmp eq i32 %137, -1, !dbg !2511
  br i1 %138, label %181, label %139, !dbg !2514

; <label>:139:                                    ; preds = %133
  %140 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %141 = load %struct.Proto*, %struct.Proto** %140, align 8, !dbg !2515, !tbaa !542
  %142 = getelementptr inbounds %struct.Proto, %struct.Proto* %141, i64 0, i32 4
  %143 = load i32*, i32** %142, align 8, !dbg !2526, !tbaa !544
  br label %144, !dbg !2514

; <label>:144:                                    ; preds = %170, %139
  %145 = phi i32 [ %137, %139 ], [ %177, %170 ]
  %146 = sext i32 %145 to i64, !dbg !2532
  %147 = getelementptr inbounds i32, i32* %143, i64 %146, !dbg !2532
  %148 = icmp sgt i32 %145, 0, !dbg !2534
  br i1 %148, label %149, label %157, !dbg !2535

; <label>:149:                                    ; preds = %144
  %150 = getelementptr inbounds i32, i32* %147, i64 -1, !dbg !2536
  %151 = load i32, i32* %150, align 4, !dbg !2536, !tbaa !550
  %152 = and i32 %151, 63, !dbg !2536
  %153 = zext i32 %152 to i64, !dbg !2536
  %154 = getelementptr inbounds [38 x i8], [38 x i8]* @luaP_opmodes, i64 0, i64 %153, !dbg !2536
  %155 = load i8, i8* %154, align 1, !dbg !2536, !tbaa !1025
  %156 = icmp slt i8 %155, 0, !dbg !2536
  br i1 %156, label %159, label %157, !dbg !2537

; <label>:157:                                    ; preds = %149, %144
  %158 = load i32, i32* %147, align 4, !dbg !2538, !tbaa !550
  br label %159, !dbg !2540

; <label>:159:                                    ; preds = %157, %149
  %160 = phi i32 [ %158, %157 ], [ %151, %149 ], !dbg !2538
  %161 = phi i32* [ %147, %157 ], [ %150, %149 ], !dbg !2541
  %162 = and i32 %160, 63, !dbg !2538
  %163 = icmp eq i32 %162, 27, !dbg !2543
  br i1 %163, label %164, label %170, !dbg !2544

; <label>:164:                                    ; preds = %159
  %165 = lshr i32 %160, 23, !dbg !2545
  %166 = shl nuw nsw i32 %165, 6, !dbg !2547
  %167 = and i32 %160, 8372224, !dbg !2547
  %168 = or i32 %167, %166, !dbg !2547
  %169 = or i32 %168, 26, !dbg !2547
  store i32 %169, i32* %161, align 4, !dbg !2548, !tbaa !550
  br label %170, !dbg !2549

; <label>:170:                                    ; preds = %164, %159
  %171 = load i32, i32* %147, align 4, !dbg !2553, !tbaa !550
  %172 = lshr i32 %171, 14, !dbg !2553
  %173 = add nsw i32 %172, -131071, !dbg !2553
  %174 = icmp eq i32 %173, -1, !dbg !2555
  %175 = add nsw i32 %145, 1, !dbg !2556
  %176 = add nsw i32 %175, %173, !dbg !2557
  %177 = select i1 %174, i32 -1, i32 %176
  %178 = icmp eq i32 %177, -1, !dbg !2511
  br i1 %178, label %179, label %144, !dbg !2514

; <label>:179:                                    ; preds = %170
  %180 = load i32, i32* %136, align 8, !dbg !2558, !tbaa !1423
  br label %181, !dbg !2558

; <label>:181:                                    ; preds = %179, %133
  %182 = phi i32 [ %180, %179 ], [ %135, %133 ], !dbg !2558
  %183 = icmp eq i32 %182, -1, !dbg !2562
  br i1 %183, label %245, label %184, !dbg !2563

; <label>:184:                                    ; preds = %181
  %185 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %186 = load %struct.Proto*, %struct.Proto** %185, align 8, !dbg !2564, !tbaa !542
  %187 = getelementptr inbounds %struct.Proto, %struct.Proto* %186, i64 0, i32 4
  %188 = load i32*, i32** %187, align 8, !dbg !2567, !tbaa !544
  br label %189, !dbg !2563

; <label>:189:                                    ; preds = %215, %184
  %190 = phi i32 [ %182, %184 ], [ %222, %215 ]
  %191 = sext i32 %190 to i64, !dbg !2573
  %192 = getelementptr inbounds i32, i32* %188, i64 %191, !dbg !2573
  %193 = icmp sgt i32 %190, 0, !dbg !2575
  br i1 %193, label %194, label %202, !dbg !2576

; <label>:194:                                    ; preds = %189
  %195 = getelementptr inbounds i32, i32* %192, i64 -1, !dbg !2577
  %196 = load i32, i32* %195, align 4, !dbg !2577, !tbaa !550
  %197 = and i32 %196, 63, !dbg !2577
  %198 = zext i32 %197 to i64, !dbg !2577
  %199 = getelementptr inbounds [38 x i8], [38 x i8]* @luaP_opmodes, i64 0, i64 %198, !dbg !2577
  %200 = load i8, i8* %199, align 1, !dbg !2577, !tbaa !1025
  %201 = icmp slt i8 %200, 0, !dbg !2577
  br i1 %201, label %204, label %202, !dbg !2578

; <label>:202:                                    ; preds = %194, %189
  %203 = load i32, i32* %192, align 4, !dbg !2579, !tbaa !550
  br label %204, !dbg !2580

; <label>:204:                                    ; preds = %202, %194
  %205 = phi i32 [ %203, %202 ], [ %196, %194 ], !dbg !2579
  %206 = phi i32* [ %192, %202 ], [ %195, %194 ], !dbg !2581
  %207 = and i32 %205, 63, !dbg !2579
  %208 = icmp eq i32 %207, 27, !dbg !2583
  br i1 %208, label %209, label %215, !dbg !2584

; <label>:209:                                    ; preds = %204
  %210 = lshr i32 %205, 23, !dbg !2585
  %211 = shl nuw nsw i32 %210, 6, !dbg !2586
  %212 = and i32 %205, 8372224, !dbg !2586
  %213 = or i32 %212, %211, !dbg !2586
  %214 = or i32 %213, 26, !dbg !2586
  store i32 %214, i32* %206, align 4, !dbg !2587, !tbaa !550
  br label %215, !dbg !2588

; <label>:215:                                    ; preds = %209, %204
  %216 = load i32, i32* %192, align 4, !dbg !2592, !tbaa !550
  %217 = lshr i32 %216, 14, !dbg !2592
  %218 = add nsw i32 %217, -131071, !dbg !2592
  %219 = icmp eq i32 %218, -1, !dbg !2594
  %220 = add nsw i32 %190, 1, !dbg !2595
  %221 = add nsw i32 %220, %218, !dbg !2596
  %222 = select i1 %219, i32 -1, i32 %221
  %223 = icmp eq i32 %222, -1, !dbg !2562
  br i1 %223, label %245, label %189, !dbg !2563

; <label>:224:                                    ; preds = %3
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %2) #5, !dbg !2601
  %225 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0, !dbg !2602
  %226 = load i32, i32* %225, align 8, !dbg !2602, !tbaa !1141
  %227 = icmp eq i32 %226, 12, !dbg !2603
  br i1 %227, label %228, label %243, !dbg !2604

; <label>:228:                                    ; preds = %224
  %229 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2, !dbg !2605
  %230 = load i32, i32* %229, align 8, !dbg !2605, !tbaa !1423
  %231 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3, !dbg !2605
  %232 = load i32, i32* %231, align 4, !dbg !2605, !tbaa !1424
  %233 = icmp eq i32 %230, %232, !dbg !2605
  %234 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, !dbg !2606
  %235 = bitcast %union.anon.3* %234 to i32*, !dbg !2606
  %236 = load i32, i32* %235, align 8, !dbg !2606, !tbaa !1025
  br i1 %233, label %244, label %237, !dbg !2607

; <label>:237:                                    ; preds = %228
  %238 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !2608
  %239 = load i8, i8* %238, align 2, !dbg !2608, !tbaa !537
  %240 = zext i8 %239 to i32, !dbg !2609
  %241 = icmp slt i32 %236, %240, !dbg !2610
  br i1 %241, label %243, label %242, !dbg !2611

; <label>:242:                                    ; preds = %237
  tail call fastcc void @exp2reg(%struct.FuncState* nonnull %0, %struct.expdesc* nonnull %2, i32 %236) #5, !dbg !2612
  br label %244, !dbg !2613

; <label>:243:                                    ; preds = %224, %237
  tail call void @luaK_exp2nextreg(%struct.FuncState* %0, %struct.expdesc* nonnull %2) #5, !dbg !2614
  br label %244, !dbg !2615

; <label>:244:                                    ; preds = %228, %242, %243
  call fastcc void @codearith(%struct.FuncState* %0, i32 20, %struct.expdesc* nonnull %2, %struct.expdesc* nonnull %4) #6, !dbg !2616
  br label %245, !dbg !2617

; <label>:245:                                    ; preds = %215, %181, %3, %244, %41
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #4, !dbg !2618
  ret void, !dbg !2618
}

; Function Attrs: noredzone nounwind
define internal fastcc void @codearith(%struct.FuncState*, i32, %struct.expdesc* nocapture, %struct.expdesc* nocapture) unnamed_addr #0 !dbg !2619 {
  %5 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0, !dbg !2652
  %6 = load i32, i32* %5, align 8, !dbg !2652, !tbaa !1141
  %7 = icmp eq i32 %6, 5, !dbg !2653
  br i1 %7, label %8, label %59, !dbg !2654

; <label>:8:                                      ; preds = %4
  %9 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2, !dbg !2655
  %10 = load i32, i32* %9, align 8, !dbg !2655, !tbaa !1423
  %11 = icmp eq i32 %10, -1, !dbg !2656
  br i1 %11, label %12, label %59, !dbg !2657

; <label>:12:                                     ; preds = %8
  %13 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3, !dbg !2658
  %14 = load i32, i32* %13, align 4, !dbg !2658, !tbaa !1424
  %15 = icmp eq i32 %14, -1, !dbg !2659
  br i1 %15, label %16, label %59, !dbg !2660

; <label>:16:                                     ; preds = %12
  %17 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0, !dbg !2663
  %18 = load i32, i32* %17, align 8, !dbg !2663, !tbaa !1141
  %19 = icmp eq i32 %18, 5, !dbg !2664
  br i1 %19, label %20, label %59, !dbg !2665

; <label>:20:                                     ; preds = %16
  %21 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 2, !dbg !2666
  %22 = load i32, i32* %21, align 8, !dbg !2666, !tbaa !1423
  %23 = icmp eq i32 %22, -1, !dbg !2667
  br i1 %23, label %24, label %59, !dbg !2668

; <label>:24:                                     ; preds = %20
  %25 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 3, !dbg !2669
  %26 = load i32, i32* %25, align 4, !dbg !2669, !tbaa !1424
  %27 = icmp eq i32 %26, -1, !dbg !2670
  br i1 %27, label %28, label %59, !dbg !2671

; <label>:28:                                     ; preds = %24
  %29 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, i32 0, !dbg !2672
  %30 = load double, double* %29, align 8, !dbg !2672, !tbaa !1025
  %31 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1, i32 0, !dbg !2674
  %32 = load double, double* %31, align 8, !dbg !2674, !tbaa !1025
  switch i32 %1, label %57 [
    i32 12, label %33
    i32 13, label %35
    i32 14, label %37
    i32 15, label %39
    i32 16, label %43
    i32 17, label %50
    i32 18, label %52
    i32 20, label %62
  ], !dbg !2676

; <label>:33:                                     ; preds = %28
  %34 = fadd double %30, %32, !dbg !2677
  br label %54, !dbg !2680

; <label>:35:                                     ; preds = %28
  %36 = fsub double %30, %32, !dbg !2681
  br label %54, !dbg !2682

; <label>:37:                                     ; preds = %28
  %38 = fmul double %30, %32, !dbg !2683
  br label %54, !dbg !2684

; <label>:39:                                     ; preds = %28
  %40 = fcmp oeq double %32, 0.000000e+00, !dbg !2685
  br i1 %40, label %60, label %41, !dbg !2687

; <label>:41:                                     ; preds = %39
  %42 = fdiv double %30, %32, !dbg !2688
  br label %54, !dbg !2689

; <label>:43:                                     ; preds = %28
  %44 = fcmp oeq double %32, 0.000000e+00, !dbg !2690
  br i1 %44, label %60, label %45, !dbg !2692

; <label>:45:                                     ; preds = %43
  %46 = fdiv double %30, %32, !dbg !2693
  %47 = tail call double @floor(double %46) #5, !dbg !2693
  %48 = fmul double %32, %47, !dbg !2693
  %49 = fsub double %30, %48, !dbg !2693
  br label %54, !dbg !2694

; <label>:50:                                     ; preds = %28
  %51 = tail call double @pow(double %30, double %32) #5, !dbg !2695
  br label %54, !dbg !2696

; <label>:52:                                     ; preds = %28
  %53 = fsub double -0.000000e+00, %30, !dbg !2697
  br label %54, !dbg !2698

; <label>:54:                                     ; preds = %52, %50, %45, %41, %37, %35, %33
  %55 = phi double [ %53, %52 ], [ %51, %50 ], [ %49, %45 ], [ %42, %41 ], [ %38, %37 ], [ %36, %35 ], [ %34, %33 ], !dbg !2699
  %56 = fcmp ord double %55, 0.000000e+00, !dbg !2700
  br i1 %56, label %57, label %59, !dbg !2702

; <label>:57:                                     ; preds = %28, %54
  %58 = phi double [ %55, %54 ], [ 0.000000e+00, %28 ]
  store double %58, double* %29, align 8, !dbg !2703, !tbaa !1025
  br label %152, !dbg !2704

; <label>:59:                                     ; preds = %24, %12, %54, %8, %4, %20, %16
  switch i32 %1, label %60 [
    i32 20, label %62
    i32 18, label %62
  ], !dbg !2705

; <label>:60:                                     ; preds = %43, %39, %59
  %61 = tail call i32 @luaK_exp2RK(%struct.FuncState* %0, %struct.expdesc* %3) #6, !dbg !2706
  br label %62, !dbg !2707

; <label>:62:                                     ; preds = %28, %59, %59, %60
  %63 = phi i32 [ %61, %60 ], [ 0, %59 ], [ 0, %59 ], [ 0, %28 ], !dbg !2707
  %64 = tail call i32 @luaK_exp2RK(%struct.FuncState* %0, %struct.expdesc* nonnull %2) #6, !dbg !2709
  %65 = icmp sgt i32 %64, %63, !dbg !2711
  br i1 %65, label %66, label %103, !dbg !2719

; <label>:66:                                     ; preds = %62
  %67 = load i32, i32* %5, align 8, !dbg !2721, !tbaa !1141
  %68 = icmp eq i32 %67, 12, !dbg !2722
  br i1 %68, label %69, label %84, !dbg !2723

; <label>:69:                                     ; preds = %66
  %70 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, !dbg !2724
  %71 = bitcast %union.anon.3* %70 to i32*, !dbg !2725
  %72 = load i32, i32* %71, align 8, !dbg !2725, !tbaa !1025
  %73 = and i32 %72, 256, !dbg !2729
  %74 = icmp eq i32 %73, 0, !dbg !2729
  br i1 %74, label %75, label %84, !dbg !2730

; <label>:75:                                     ; preds = %69
  %76 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !2731
  %77 = load i8, i8* %76, align 2, !dbg !2731, !tbaa !537
  %78 = zext i8 %77 to i32, !dbg !2732
  %79 = icmp slt i32 %72, %78, !dbg !2733
  br i1 %79, label %84, label %80, !dbg !2734

; <label>:80:                                     ; preds = %75
  %81 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !2735
  %82 = load i32, i32* %81, align 4, !dbg !2736, !tbaa !962
  %83 = add nsw i32 %82, -1, !dbg !2736
  store i32 %83, i32* %81, align 4, !dbg !2736, !tbaa !962
  br label %84, !dbg !2737

; <label>:84:                                     ; preds = %66, %69, %75, %80
  %85 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0, !dbg !2741
  %86 = load i32, i32* %85, align 8, !dbg !2741, !tbaa !1141
  %87 = icmp eq i32 %86, 12, !dbg !2742
  br i1 %87, label %88, label %140, !dbg !2743

; <label>:88:                                     ; preds = %84
  %89 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1, !dbg !2744
  %90 = bitcast %union.anon.3* %89 to i32*, !dbg !2745
  %91 = load i32, i32* %90, align 8, !dbg !2745, !tbaa !1025
  %92 = and i32 %91, 256, !dbg !2749
  %93 = icmp eq i32 %92, 0, !dbg !2749
  br i1 %93, label %94, label %140, !dbg !2750

; <label>:94:                                     ; preds = %88
  %95 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !2751
  %96 = load i8, i8* %95, align 2, !dbg !2751, !tbaa !537
  %97 = zext i8 %96 to i32, !dbg !2752
  %98 = icmp slt i32 %91, %97, !dbg !2753
  br i1 %98, label %140, label %99, !dbg !2754

; <label>:99:                                     ; preds = %94
  %100 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !2755
  %101 = load i32, i32* %100, align 4, !dbg !2756, !tbaa !962
  %102 = add nsw i32 %101, -1, !dbg !2756
  store i32 %102, i32* %100, align 4, !dbg !2756, !tbaa !962
  br label %140, !dbg !2757

; <label>:103:                                    ; preds = %62
  %104 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0, !dbg !2759
  %105 = load i32, i32* %104, align 8, !dbg !2759, !tbaa !1141
  %106 = icmp eq i32 %105, 12, !dbg !2760
  br i1 %106, label %107, label %122, !dbg !2761

; <label>:107:                                    ; preds = %103
  %108 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1, !dbg !2762
  %109 = bitcast %union.anon.3* %108 to i32*, !dbg !2763
  %110 = load i32, i32* %109, align 8, !dbg !2763, !tbaa !1025
  %111 = and i32 %110, 256, !dbg !2767
  %112 = icmp eq i32 %111, 0, !dbg !2767
  br i1 %112, label %113, label %122, !dbg !2768

; <label>:113:                                    ; preds = %107
  %114 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !2769
  %115 = load i8, i8* %114, align 2, !dbg !2769, !tbaa !537
  %116 = zext i8 %115 to i32, !dbg !2770
  %117 = icmp slt i32 %110, %116, !dbg !2771
  br i1 %117, label %122, label %118, !dbg !2772

; <label>:118:                                    ; preds = %113
  %119 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !2773
  %120 = load i32, i32* %119, align 4, !dbg !2774, !tbaa !962
  %121 = add nsw i32 %120, -1, !dbg !2774
  store i32 %121, i32* %119, align 4, !dbg !2774, !tbaa !962
  br label %122, !dbg !2775

; <label>:122:                                    ; preds = %103, %107, %113, %118
  %123 = load i32, i32* %5, align 8, !dbg !2779, !tbaa !1141
  %124 = icmp eq i32 %123, 12, !dbg !2780
  br i1 %124, label %125, label %140, !dbg !2781

; <label>:125:                                    ; preds = %122
  %126 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, !dbg !2782
  %127 = bitcast %union.anon.3* %126 to i32*, !dbg !2783
  %128 = load i32, i32* %127, align 8, !dbg !2783, !tbaa !1025
  %129 = and i32 %128, 256, !dbg !2787
  %130 = icmp eq i32 %129, 0, !dbg !2787
  br i1 %130, label %131, label %140, !dbg !2788

; <label>:131:                                    ; preds = %125
  %132 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !2789
  %133 = load i8, i8* %132, align 2, !dbg !2789, !tbaa !537
  %134 = zext i8 %133 to i32, !dbg !2790
  %135 = icmp slt i32 %128, %134, !dbg !2791
  br i1 %135, label %140, label %136, !dbg !2792

; <label>:136:                                    ; preds = %131
  %137 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !2793
  %138 = load i32, i32* %137, align 4, !dbg !2794, !tbaa !962
  %139 = add nsw i32 %138, -1, !dbg !2794
  store i32 %139, i32* %137, align 4, !dbg !2794, !tbaa !962
  br label %140, !dbg !2795

; <label>:140:                                    ; preds = %136, %131, %125, %122, %99, %94, %88, %84
  %141 = shl i32 %64, 23, !dbg !2802
  %142 = shl i32 %63, 14, !dbg !2802
  %143 = or i32 %142, %1, !dbg !2802
  %144 = or i32 %143, %141, !dbg !2802
  %145 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !2803
  %146 = load %struct.LexState*, %struct.LexState** %145, align 8, !dbg !2803, !tbaa !587
  %147 = getelementptr inbounds %struct.LexState, %struct.LexState* %146, i64 0, i32 2, !dbg !2804
  %148 = load i32, i32* %147, align 8, !dbg !2804, !tbaa !589
  %149 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %144, i32 %148) #5, !dbg !2805
  %150 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, !dbg !2806
  %151 = bitcast %union.anon.3* %150 to i32*, !dbg !2807
  store i32 %149, i32* %151, align 8, !dbg !2808, !tbaa !1025
  store i32 11, i32* %5, align 8, !dbg !2809, !tbaa !1141
  br label %152

; <label>:152:                                    ; preds = %57, %140
  ret void, !dbg !2810
}

; Function Attrs: noredzone nounwind
define hidden void @luaK_infix(%struct.FuncState*, i32, %struct.expdesc* nocapture) local_unnamed_addr #0 !dbg !2811 {
  switch i32 %1, label %114 [
    i32 13, label %4
    i32 14, label %5
    i32 6, label %99
    i32 0, label %100
    i32 1, label %100
    i32 2, label %100
    i32 3, label %100
    i32 4, label %100
    i32 5, label %100
  ], !dbg !2822

; <label>:4:                                      ; preds = %3
  tail call void @luaK_goiftrue(%struct.FuncState* %0, %struct.expdesc* %2) #6, !dbg !2823
  br label %116, !dbg !2826

; <label>:5:                                      ; preds = %3
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %2) #5, !dbg !2836
  %6 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0, !dbg !2837
  %7 = load i32, i32* %6, align 8, !dbg !2837, !tbaa !1141
  switch i32 %7, label %12 [
    i32 1, label %54
    i32 3, label %54
    i32 10, label %8
  ], !dbg !2838

; <label>:8:                                      ; preds = %5
  %9 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, !dbg !2839
  %10 = bitcast %union.anon.3* %9 to i32*, !dbg !2842
  %11 = load i32, i32* %10, align 8, !dbg !2842, !tbaa !1025
  br label %14, !dbg !2844

; <label>:12:                                     ; preds = %5
  %13 = tail call fastcc i32 @jumponcond(%struct.FuncState* %0, %struct.expdesc* nonnull %2, i32 1) #5, !dbg !2845
  br label %14, !dbg !2847

; <label>:14:                                     ; preds = %12, %8
  %15 = phi i32 [ %13, %12 ], [ %11, %8 ], !dbg !2848
  %16 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2, !dbg !2850
  %17 = icmp eq i32 %15, -1, !dbg !2855
  br i1 %17, label %54, label %18, !dbg !2856

; <label>:18:                                     ; preds = %14
  %19 = load i32, i32* %16, align 4, !dbg !2857, !tbaa !550
  %20 = icmp eq i32 %19, -1, !dbg !2858
  br i1 %20, label %26, label %21, !dbg !2859

; <label>:21:                                     ; preds = %18
  %22 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %23 = load %struct.Proto*, %struct.Proto** %22, align 8, !tbaa !542
  %24 = getelementptr inbounds %struct.Proto, %struct.Proto* %23, i64 0, i32 4
  %25 = load i32*, i32** %24, align 8, !tbaa !544
  br label %27, !dbg !2860

; <label>:26:                                     ; preds = %18
  store i32 %15, i32* %16, align 4, !dbg !2862, !tbaa !550
  br label %54, !dbg !2863

; <label>:27:                                     ; preds = %27, %21
  %28 = phi i32 [ %37, %27 ], [ %19, %21 ], !dbg !2864
  %29 = sext i32 %28 to i64, !dbg !2860
  %30 = getelementptr inbounds i32, i32* %25, i64 %29, !dbg !2860
  %31 = load i32, i32* %30, align 4, !dbg !2860, !tbaa !550
  %32 = lshr i32 %31, 14, !dbg !2860
  %33 = add nsw i32 %32, -131071, !dbg !2860
  %34 = icmp eq i32 %33, -1, !dbg !2869
  %35 = add nsw i32 %28, 1, !dbg !2870
  %36 = add nsw i32 %35, %33, !dbg !2871
  %37 = select i1 %34, i32 -1, i32 %36, !dbg !2872
  %38 = icmp eq i32 %37, -1, !dbg !2874
  br i1 %38, label %39, label %27, !dbg !2875, !llvm.loop !674

; <label>:39:                                     ; preds = %27
  %40 = getelementptr inbounds i32, i32* %25, i64 %29, !dbg !2860
  %41 = xor i32 %28, -1, !dbg !2881
  %42 = add i32 %15, %41, !dbg !2881
  %43 = tail call i32 @abs(i32 %42) #5, !dbg !2883
  %44 = icmp sgt i32 %43, 131071, !dbg !2884
  br i1 %44, label %45, label %48, !dbg !2885

; <label>:45:                                     ; preds = %39
  %46 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !2886
  %47 = load %struct.LexState*, %struct.LexState** %46, align 8, !dbg !2886, !tbaa !587
  tail call void @luaX_syntaxerror(%struct.LexState* %47, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !2887
  br label %48, !dbg !2887

; <label>:48:                                     ; preds = %45, %39
  %49 = load i32, i32* %40, align 4, !dbg !2888, !tbaa !550
  %50 = and i32 %49, 16383, !dbg !2888
  %51 = shl i32 %42, 14, !dbg !2888
  %52 = add i32 %51, 2147467264, !dbg !2888
  %53 = or i32 %50, %52, !dbg !2888
  store i32 %53, i32* %40, align 4, !dbg !2888, !tbaa !550
  br label %54

; <label>:54:                                     ; preds = %48, %26, %14, %5, %5
  %55 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3, !dbg !2889
  %56 = load i32, i32* %55, align 4, !dbg !2889, !tbaa !1424
  %57 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 6, !dbg !2895
  %58 = load i32, i32* %57, align 8, !dbg !2895, !tbaa !521
  %59 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 7, !dbg !2896
  store i32 %58, i32* %59, align 4, !dbg !2897, !tbaa !529
  %60 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 8, !dbg !2898
  %61 = icmp eq i32 %56, -1, !dbg !2903
  br i1 %61, label %98, label %62, !dbg !2904

; <label>:62:                                     ; preds = %54
  %63 = load i32, i32* %60, align 4, !dbg !2905, !tbaa !550
  %64 = icmp eq i32 %63, -1, !dbg !2906
  br i1 %64, label %70, label %65, !dbg !2907

; <label>:65:                                     ; preds = %62
  %66 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %67 = load %struct.Proto*, %struct.Proto** %66, align 8, !tbaa !542
  %68 = getelementptr inbounds %struct.Proto, %struct.Proto* %67, i64 0, i32 4
  %69 = load i32*, i32** %68, align 8, !tbaa !544
  br label %71, !dbg !2908

; <label>:70:                                     ; preds = %62
  store i32 %56, i32* %60, align 4, !dbg !2910, !tbaa !550
  br label %98, !dbg !2911

; <label>:71:                                     ; preds = %71, %65
  %72 = phi i32 [ %81, %71 ], [ %63, %65 ], !dbg !2912
  %73 = sext i32 %72 to i64, !dbg !2908
  %74 = getelementptr inbounds i32, i32* %69, i64 %73, !dbg !2908
  %75 = load i32, i32* %74, align 4, !dbg !2908, !tbaa !550
  %76 = lshr i32 %75, 14, !dbg !2908
  %77 = add nsw i32 %76, -131071, !dbg !2908
  %78 = icmp eq i32 %77, -1, !dbg !2917
  %79 = add nsw i32 %72, 1, !dbg !2918
  %80 = add nsw i32 %79, %77, !dbg !2919
  %81 = select i1 %78, i32 -1, i32 %80, !dbg !2920
  %82 = icmp eq i32 %81, -1, !dbg !2922
  br i1 %82, label %83, label %71, !dbg !2923, !llvm.loop !674

; <label>:83:                                     ; preds = %71
  %84 = getelementptr inbounds i32, i32* %69, i64 %73, !dbg !2908
  %85 = xor i32 %72, -1, !dbg !2929
  %86 = add i32 %56, %85, !dbg !2929
  %87 = tail call i32 @abs(i32 %86) #5, !dbg !2931
  %88 = icmp sgt i32 %87, 131071, !dbg !2932
  br i1 %88, label %89, label %92, !dbg !2933

; <label>:89:                                     ; preds = %83
  %90 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !2934
  %91 = load %struct.LexState*, %struct.LexState** %90, align 8, !dbg !2934, !tbaa !587
  tail call void @luaX_syntaxerror(%struct.LexState* %91, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !2935
  br label %92, !dbg !2935

; <label>:92:                                     ; preds = %89, %83
  %93 = load i32, i32* %84, align 4, !dbg !2936, !tbaa !550
  %94 = and i32 %93, 16383, !dbg !2936
  %95 = shl i32 %86, 14, !dbg !2936
  %96 = add i32 %95, 2147467264, !dbg !2936
  %97 = or i32 %94, %96, !dbg !2936
  store i32 %97, i32* %84, align 4, !dbg !2936, !tbaa !550
  br label %98

; <label>:98:                                     ; preds = %54, %70, %92
  store i32 -1, i32* %55, align 4, !dbg !2937, !tbaa !1424
  br label %116, !dbg !2938

; <label>:99:                                     ; preds = %3
  tail call void @luaK_exp2nextreg(%struct.FuncState* %0, %struct.expdesc* %2) #6, !dbg !2939
  br label %116, !dbg !2941

; <label>:100:                                    ; preds = %3, %3, %3, %3, %3, %3
  %101 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0, !dbg !2946
  %102 = load i32, i32* %101, align 8, !dbg !2946, !tbaa !1141
  %103 = icmp eq i32 %102, 5, !dbg !2947
  br i1 %103, label %104, label %112, !dbg !2948

; <label>:104:                                    ; preds = %100
  %105 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2, !dbg !2949
  %106 = load i32, i32* %105, align 8, !dbg !2949, !tbaa !1423
  %107 = icmp eq i32 %106, -1, !dbg !2950
  br i1 %107, label %108, label %112, !dbg !2951

; <label>:108:                                    ; preds = %104
  %109 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3, !dbg !2952
  %110 = load i32, i32* %109, align 4, !dbg !2952, !tbaa !1424
  %111 = icmp eq i32 %110, -1, !dbg !2953
  br i1 %111, label %116, label %112, !dbg !2954

; <label>:112:                                    ; preds = %108, %100, %104
  %113 = tail call i32 @luaK_exp2RK(%struct.FuncState* %0, %struct.expdesc* nonnull %2) #6, !dbg !2955
  br label %116, !dbg !2955

; <label>:114:                                    ; preds = %3
  %115 = tail call i32 @luaK_exp2RK(%struct.FuncState* %0, %struct.expdesc* %2) #6, !dbg !2956
  br label %116, !dbg !2958

; <label>:116:                                    ; preds = %108, %112, %114, %99, %98, %4
  ret void, !dbg !2959
}

; Function Attrs: noredzone nounwind
define hidden void @luaK_posfix(%struct.FuncState*, i32, %struct.expdesc*, %struct.expdesc*) local_unnamed_addr #0 !dbg !2960 {
  switch i32 %1, label %423 [
    i32 13, label %5
    i32 14, label %49
    i32 6, label %93
    i32 0, label %165
    i32 1, label %166
    i32 2, label %167
    i32 3, label %168
    i32 4, label %169
    i32 5, label %170
    i32 8, label %171
    i32 7, label %213
    i32 9, label %255
    i32 10, label %297
    i32 11, label %339
    i32 12, label %381
  ], !dbg !2972

; <label>:5:                                      ; preds = %4
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %3) #6, !dbg !2973
  %6 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 3, !dbg !2976
  %7 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3, !dbg !2977
  %8 = load i32, i32* %7, align 4, !dbg !2977, !tbaa !1424
  %9 = icmp eq i32 %8, -1, !dbg !2982
  br i1 %9, label %46, label %10, !dbg !2983

; <label>:10:                                     ; preds = %5
  %11 = load i32, i32* %6, align 4, !dbg !2984, !tbaa !550
  %12 = icmp eq i32 %11, -1, !dbg !2985
  br i1 %12, label %18, label %13, !dbg !2986

; <label>:13:                                     ; preds = %10
  %14 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %15 = load %struct.Proto*, %struct.Proto** %14, align 8, !tbaa !542
  %16 = getelementptr inbounds %struct.Proto, %struct.Proto* %15, i64 0, i32 4
  %17 = load i32*, i32** %16, align 8, !tbaa !544
  br label %19, !dbg !2987

; <label>:18:                                     ; preds = %10
  store i32 %8, i32* %6, align 4, !dbg !2989, !tbaa !550
  br label %46, !dbg !2990

; <label>:19:                                     ; preds = %19, %13
  %20 = phi i32 [ %29, %19 ], [ %11, %13 ], !dbg !2991
  %21 = sext i32 %20 to i64, !dbg !2987
  %22 = getelementptr inbounds i32, i32* %17, i64 %21, !dbg !2987
  %23 = load i32, i32* %22, align 4, !dbg !2987, !tbaa !550
  %24 = lshr i32 %23, 14, !dbg !2987
  %25 = add nsw i32 %24, -131071, !dbg !2987
  %26 = icmp eq i32 %25, -1, !dbg !2996
  %27 = add nsw i32 %20, 1, !dbg !2997
  %28 = add nsw i32 %27, %25, !dbg !2998
  %29 = select i1 %26, i32 -1, i32 %28, !dbg !2999
  %30 = icmp eq i32 %29, -1, !dbg !3001
  br i1 %30, label %31, label %19, !dbg !3002, !llvm.loop !674

; <label>:31:                                     ; preds = %19
  %32 = getelementptr inbounds i32, i32* %17, i64 %21, !dbg !2987
  %33 = xor i32 %20, -1, !dbg !3008
  %34 = add i32 %8, %33, !dbg !3008
  %35 = tail call i32 @abs(i32 %34) #5, !dbg !3010
  %36 = icmp sgt i32 %35, 131071, !dbg !3011
  br i1 %36, label %37, label %40, !dbg !3012

; <label>:37:                                     ; preds = %31
  %38 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !3013
  %39 = load %struct.LexState*, %struct.LexState** %38, align 8, !dbg !3013, !tbaa !587
  tail call void @luaX_syntaxerror(%struct.LexState* %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !3014
  br label %40, !dbg !3014

; <label>:40:                                     ; preds = %37, %31
  %41 = load i32, i32* %32, align 4, !dbg !3015, !tbaa !550
  %42 = and i32 %41, 16383, !dbg !3015
  %43 = shl i32 %34, 14, !dbg !3015
  %44 = add i32 %43, 2147467264, !dbg !3015
  %45 = or i32 %42, %44, !dbg !3015
  store i32 %45, i32* %32, align 4, !dbg !3015, !tbaa !550
  br label %46

; <label>:46:                                     ; preds = %5, %18, %40
  %47 = bitcast %struct.expdesc* %2 to i8*, !dbg !3016
  %48 = bitcast %struct.expdesc* %3 to i8*, !dbg !3016
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %47, i8* align 8 %48, i64 24, i1 false), !dbg !3016, !tbaa.struct !3017
  br label %423, !dbg !3020

; <label>:49:                                     ; preds = %4
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %3) #6, !dbg !3021
  %50 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 2, !dbg !3023
  %51 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2, !dbg !3024
  %52 = load i32, i32* %51, align 8, !dbg !3024, !tbaa !1423
  %53 = icmp eq i32 %52, -1, !dbg !3029
  br i1 %53, label %90, label %54, !dbg !3030

; <label>:54:                                     ; preds = %49
  %55 = load i32, i32* %50, align 4, !dbg !3031, !tbaa !550
  %56 = icmp eq i32 %55, -1, !dbg !3032
  br i1 %56, label %62, label %57, !dbg !3033

; <label>:57:                                     ; preds = %54
  %58 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %59 = load %struct.Proto*, %struct.Proto** %58, align 8, !tbaa !542
  %60 = getelementptr inbounds %struct.Proto, %struct.Proto* %59, i64 0, i32 4
  %61 = load i32*, i32** %60, align 8, !tbaa !544
  br label %63, !dbg !3034

; <label>:62:                                     ; preds = %54
  store i32 %52, i32* %50, align 4, !dbg !3036, !tbaa !550
  br label %90, !dbg !3037

; <label>:63:                                     ; preds = %63, %57
  %64 = phi i32 [ %73, %63 ], [ %55, %57 ], !dbg !3038
  %65 = sext i32 %64 to i64, !dbg !3034
  %66 = getelementptr inbounds i32, i32* %61, i64 %65, !dbg !3034
  %67 = load i32, i32* %66, align 4, !dbg !3034, !tbaa !550
  %68 = lshr i32 %67, 14, !dbg !3034
  %69 = add nsw i32 %68, -131071, !dbg !3034
  %70 = icmp eq i32 %69, -1, !dbg !3043
  %71 = add nsw i32 %64, 1, !dbg !3044
  %72 = add nsw i32 %71, %69, !dbg !3045
  %73 = select i1 %70, i32 -1, i32 %72, !dbg !3046
  %74 = icmp eq i32 %73, -1, !dbg !3048
  br i1 %74, label %75, label %63, !dbg !3049, !llvm.loop !674

; <label>:75:                                     ; preds = %63
  %76 = getelementptr inbounds i32, i32* %61, i64 %65, !dbg !3034
  %77 = xor i32 %64, -1, !dbg !3055
  %78 = add i32 %52, %77, !dbg !3055
  %79 = tail call i32 @abs(i32 %78) #5, !dbg !3057
  %80 = icmp sgt i32 %79, 131071, !dbg !3058
  br i1 %80, label %81, label %84, !dbg !3059

; <label>:81:                                     ; preds = %75
  %82 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !3060
  %83 = load %struct.LexState*, %struct.LexState** %82, align 8, !dbg !3060, !tbaa !587
  tail call void @luaX_syntaxerror(%struct.LexState* %83, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !3061
  br label %84, !dbg !3061

; <label>:84:                                     ; preds = %81, %75
  %85 = load i32, i32* %76, align 4, !dbg !3062, !tbaa !550
  %86 = and i32 %85, 16383, !dbg !3062
  %87 = shl i32 %78, 14, !dbg !3062
  %88 = add i32 %87, 2147467264, !dbg !3062
  %89 = or i32 %86, %88, !dbg !3062
  store i32 %89, i32* %76, align 4, !dbg !3062, !tbaa !550
  br label %90

; <label>:90:                                     ; preds = %49, %62, %84
  %91 = bitcast %struct.expdesc* %2 to i8*, !dbg !3063
  %92 = bitcast %struct.expdesc* %3 to i8*, !dbg !3063
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %91, i8* align 8 %92, i64 24, i1 false), !dbg !3063, !tbaa.struct !3017
  br label %423, !dbg !3064

; <label>:93:                                     ; preds = %4
  %94 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 2, !dbg !3069
  %95 = load i32, i32* %94, align 8, !dbg !3069, !tbaa !1423
  %96 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 3, !dbg !3069
  %97 = load i32, i32* %96, align 4, !dbg !3069, !tbaa !1424
  %98 = icmp eq i32 %95, %97, !dbg !3069
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* nonnull %3) #5, !dbg !3070
  %99 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0, !dbg !3070
  br i1 %98, label %117, label %100, !dbg !3071

; <label>:100:                                    ; preds = %93
  %101 = load i32, i32* %99, align 8, !dbg !3075, !tbaa !1141
  %102 = icmp eq i32 %101, 12, !dbg !3076
  br i1 %102, label %103, label %116, !dbg !3077

; <label>:103:                                    ; preds = %100
  %104 = load i32, i32* %94, align 8, !dbg !3078, !tbaa !1423
  %105 = load i32, i32* %96, align 4, !dbg !3078, !tbaa !1424
  %106 = icmp eq i32 %104, %105, !dbg !3078
  %107 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1, !dbg !3079
  %108 = bitcast %union.anon.3* %107 to i32*, !dbg !3079
  %109 = load i32, i32* %108, align 8, !dbg !3079, !tbaa !1025
  br i1 %106, label %117, label %110, !dbg !3080

; <label>:110:                                    ; preds = %103
  %111 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !3081
  %112 = load i8, i8* %111, align 2, !dbg !3081, !tbaa !537
  %113 = zext i8 %112 to i32, !dbg !3082
  %114 = icmp slt i32 %109, %113, !dbg !3083
  br i1 %114, label %116, label %115, !dbg !3084

; <label>:115:                                    ; preds = %110
  tail call fastcc void @exp2reg(%struct.FuncState* nonnull %0, %struct.expdesc* nonnull %3, i32 %109) #5, !dbg !3085
  br label %117, !dbg !3086

; <label>:116:                                    ; preds = %110, %100
  tail call void @luaK_exp2nextreg(%struct.FuncState* %0, %struct.expdesc* nonnull %3) #5, !dbg !3087
  br label %117, !dbg !3088

; <label>:117:                                    ; preds = %93, %103, %115, %116
  %118 = load i32, i32* %99, align 8, !dbg !3089, !tbaa !1141
  %119 = icmp eq i32 %118, 11, !dbg !3091
  br i1 %119, label %120, label %164, !dbg !3092

; <label>:120:                                    ; preds = %117
  %121 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0, !dbg !3093
  %122 = load %struct.Proto*, %struct.Proto** %121, align 8, !dbg !3093, !tbaa !542
  %123 = getelementptr inbounds %struct.Proto, %struct.Proto* %122, i64 0, i32 4, !dbg !3093
  %124 = load i32*, i32** %123, align 8, !dbg !3093, !tbaa !544
  %125 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1, !dbg !3093
  %126 = bitcast %union.anon.3* %125 to i32*, !dbg !3093
  %127 = load i32, i32* %126, align 8, !dbg !3093, !tbaa !1025
  %128 = sext i32 %127 to i64, !dbg !3093
  %129 = getelementptr inbounds i32, i32* %124, i64 %128, !dbg !3093
  %130 = load i32, i32* %129, align 4, !dbg !3093, !tbaa !550
  %131 = and i32 %130, 63, !dbg !3093
  %132 = icmp eq i32 %131, 21, !dbg !3094
  br i1 %132, label %133, label %164, !dbg !3095

; <label>:133:                                    ; preds = %120
  %134 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0, !dbg !3100
  %135 = load i32, i32* %134, align 8, !dbg !3100, !tbaa !1141
  %136 = icmp eq i32 %135, 12, !dbg !3101
  %137 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, !dbg !3102
  %138 = bitcast %union.anon.3* %137 to i32*, !dbg !3102
  br i1 %136, label %139, label %156, !dbg !3103

; <label>:139:                                    ; preds = %133
  %140 = load i32, i32* %138, align 8, !dbg !3104, !tbaa !1025
  %141 = and i32 %140, 256, !dbg !3108
  %142 = icmp eq i32 %141, 0, !dbg !3108
  br i1 %142, label %143, label %156, !dbg !3109

; <label>:143:                                    ; preds = %139
  %144 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !3110
  %145 = load i8, i8* %144, align 2, !dbg !3110, !tbaa !537
  %146 = zext i8 %145 to i32, !dbg !3111
  %147 = icmp slt i32 %140, %146, !dbg !3112
  br i1 %147, label %156, label %148, !dbg !3113

; <label>:148:                                    ; preds = %143
  %149 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !3114
  %150 = load i32, i32* %149, align 4, !dbg !3115, !tbaa !962
  %151 = add nsw i32 %150, -1, !dbg !3115
  store i32 %151, i32* %149, align 4, !dbg !3115, !tbaa !962
  %152 = load i32, i32* %126, align 8, !dbg !3116, !tbaa !1025
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %124, i64 %153
  %155 = load i32, i32* %154, align 4, !dbg !3116, !tbaa !550
  br label %156, !dbg !3117

; <label>:156:                                    ; preds = %133, %139, %143, %148
  %157 = phi i32* [ %129, %139 ], [ %129, %143 ], [ %154, %148 ], [ %129, %133 ], !dbg !3116
  %158 = phi i32 [ %130, %139 ], [ %130, %143 ], [ %155, %148 ], [ %130, %133 ], !dbg !3116
  %159 = and i32 %158, 8388607, !dbg !3116
  %160 = load i32, i32* %138, align 8, !dbg !3116, !tbaa !1025
  %161 = shl i32 %160, 23, !dbg !3116
  %162 = or i32 %161, %159, !dbg !3116
  store i32 %162, i32* %157, align 4, !dbg !3116, !tbaa !550
  store i32 11, i32* %134, align 8, !dbg !3118, !tbaa !1141
  %163 = load i32, i32* %126, align 8, !dbg !3119, !tbaa !1025
  store i32 %163, i32* %138, align 8, !dbg !3120, !tbaa !1025
  br label %423, !dbg !3121

; <label>:164:                                    ; preds = %120, %117
  tail call void @luaK_exp2nextreg(%struct.FuncState* %0, %struct.expdesc* nonnull %3) #6, !dbg !3122
  tail call fastcc void @codearith(%struct.FuncState* %0, i32 21, %struct.expdesc* %2, %struct.expdesc* nonnull %3) #6, !dbg !3124
  br label %423

; <label>:165:                                    ; preds = %4
  tail call fastcc void @codearith(%struct.FuncState* %0, i32 12, %struct.expdesc* %2, %struct.expdesc* %3) #6, !dbg !3125
  br label %423, !dbg !3126

; <label>:166:                                    ; preds = %4
  tail call fastcc void @codearith(%struct.FuncState* %0, i32 13, %struct.expdesc* %2, %struct.expdesc* %3) #6, !dbg !3127
  br label %423, !dbg !3128

; <label>:167:                                    ; preds = %4
  tail call fastcc void @codearith(%struct.FuncState* %0, i32 14, %struct.expdesc* %2, %struct.expdesc* %3) #6, !dbg !3129
  br label %423, !dbg !3130

; <label>:168:                                    ; preds = %4
  tail call fastcc void @codearith(%struct.FuncState* %0, i32 15, %struct.expdesc* %2, %struct.expdesc* %3) #6, !dbg !3131
  br label %423, !dbg !3132

; <label>:169:                                    ; preds = %4
  tail call fastcc void @codearith(%struct.FuncState* %0, i32 16, %struct.expdesc* %2, %struct.expdesc* %3) #6, !dbg !3133
  br label %423, !dbg !3134

; <label>:170:                                    ; preds = %4
  tail call fastcc void @codearith(%struct.FuncState* %0, i32 17, %struct.expdesc* %2, %struct.expdesc* %3) #6, !dbg !3135
  br label %423, !dbg !3136

; <label>:171:                                    ; preds = %4
  %172 = tail call i32 @luaK_exp2RK(%struct.FuncState* %0, %struct.expdesc* %2) #5, !dbg !3157
  %173 = tail call i32 @luaK_exp2RK(%struct.FuncState* %0, %struct.expdesc* %3) #5, !dbg !3159
  %174 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0, !dbg !3164
  %175 = load i32, i32* %174, align 8, !dbg !3164, !tbaa !1141
  %176 = icmp eq i32 %175, 12, !dbg !3165
  br i1 %176, label %177, label %192, !dbg !3166

; <label>:177:                                    ; preds = %171
  %178 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1, !dbg !3167
  %179 = bitcast %union.anon.3* %178 to i32*, !dbg !3168
  %180 = load i32, i32* %179, align 8, !dbg !3168, !tbaa !1025
  %181 = and i32 %180, 256, !dbg !3172
  %182 = icmp eq i32 %181, 0, !dbg !3172
  br i1 %182, label %183, label %192, !dbg !3173

; <label>:183:                                    ; preds = %177
  %184 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !3174
  %185 = load i8, i8* %184, align 2, !dbg !3174, !tbaa !537
  %186 = zext i8 %185 to i32, !dbg !3175
  %187 = icmp slt i32 %180, %186, !dbg !3176
  br i1 %187, label %192, label %188, !dbg !3177

; <label>:188:                                    ; preds = %183
  %189 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !3178
  %190 = load i32, i32* %189, align 4, !dbg !3179, !tbaa !962
  %191 = add nsw i32 %190, -1, !dbg !3179
  store i32 %191, i32* %189, align 4, !dbg !3179, !tbaa !962
  br label %192, !dbg !3180

; <label>:192:                                    ; preds = %188, %183, %177, %171
  %193 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0, !dbg !3184
  %194 = load i32, i32* %193, align 8, !dbg !3184, !tbaa !1141
  %195 = icmp eq i32 %194, 12, !dbg !3185
  %196 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, !dbg !3186
  %197 = bitcast %union.anon.3* %196 to i32*, !dbg !3186
  br i1 %195, label %198, label %211, !dbg !3187

; <label>:198:                                    ; preds = %192
  %199 = load i32, i32* %197, align 8, !dbg !3188, !tbaa !1025
  %200 = and i32 %199, 256, !dbg !3192
  %201 = icmp eq i32 %200, 0, !dbg !3192
  br i1 %201, label %202, label %211, !dbg !3193

; <label>:202:                                    ; preds = %198
  %203 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !3194
  %204 = load i8, i8* %203, align 2, !dbg !3194, !tbaa !537
  %205 = zext i8 %204 to i32, !dbg !3195
  %206 = icmp slt i32 %199, %205, !dbg !3196
  br i1 %206, label %211, label %207, !dbg !3197

; <label>:207:                                    ; preds = %202
  %208 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !3198
  %209 = load i32, i32* %208, align 4, !dbg !3199, !tbaa !962
  %210 = add nsw i32 %209, -1, !dbg !3199
  store i32 %210, i32* %208, align 4, !dbg !3199, !tbaa !962
  br label %211, !dbg !3200

; <label>:211:                                    ; preds = %192, %198, %202, %207
  %212 = tail call fastcc i32 @condjump(%struct.FuncState* %0, i32 23, i32 1, i32 %172, i32 %173) #5, !dbg !3201
  store i32 %212, i32* %197, align 8, !dbg !3202, !tbaa !1025
  store i32 10, i32* %193, align 8, !dbg !3203, !tbaa !1141
  br label %423, !dbg !3204

; <label>:213:                                    ; preds = %4
  %214 = tail call i32 @luaK_exp2RK(%struct.FuncState* %0, %struct.expdesc* %2) #5, !dbg !3211
  %215 = tail call i32 @luaK_exp2RK(%struct.FuncState* %0, %struct.expdesc* %3) #5, !dbg !3213
  %216 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0, !dbg !3218
  %217 = load i32, i32* %216, align 8, !dbg !3218, !tbaa !1141
  %218 = icmp eq i32 %217, 12, !dbg !3219
  br i1 %218, label %219, label %234, !dbg !3220

; <label>:219:                                    ; preds = %213
  %220 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1, !dbg !3221
  %221 = bitcast %union.anon.3* %220 to i32*, !dbg !3222
  %222 = load i32, i32* %221, align 8, !dbg !3222, !tbaa !1025
  %223 = and i32 %222, 256, !dbg !3226
  %224 = icmp eq i32 %223, 0, !dbg !3226
  br i1 %224, label %225, label %234, !dbg !3227

; <label>:225:                                    ; preds = %219
  %226 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !3228
  %227 = load i8, i8* %226, align 2, !dbg !3228, !tbaa !537
  %228 = zext i8 %227 to i32, !dbg !3229
  %229 = icmp slt i32 %222, %228, !dbg !3230
  br i1 %229, label %234, label %230, !dbg !3231

; <label>:230:                                    ; preds = %225
  %231 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !3232
  %232 = load i32, i32* %231, align 4, !dbg !3233, !tbaa !962
  %233 = add nsw i32 %232, -1, !dbg !3233
  store i32 %233, i32* %231, align 4, !dbg !3233, !tbaa !962
  br label %234, !dbg !3234

; <label>:234:                                    ; preds = %230, %225, %219, %213
  %235 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0, !dbg !3238
  %236 = load i32, i32* %235, align 8, !dbg !3238, !tbaa !1141
  %237 = icmp eq i32 %236, 12, !dbg !3239
  %238 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, !dbg !3240
  %239 = bitcast %union.anon.3* %238 to i32*, !dbg !3240
  br i1 %237, label %240, label %253, !dbg !3241

; <label>:240:                                    ; preds = %234
  %241 = load i32, i32* %239, align 8, !dbg !3242, !tbaa !1025
  %242 = and i32 %241, 256, !dbg !3246
  %243 = icmp eq i32 %242, 0, !dbg !3246
  br i1 %243, label %244, label %253, !dbg !3247

; <label>:244:                                    ; preds = %240
  %245 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !3248
  %246 = load i8, i8* %245, align 2, !dbg !3248, !tbaa !537
  %247 = zext i8 %246 to i32, !dbg !3249
  %248 = icmp slt i32 %241, %247, !dbg !3250
  br i1 %248, label %253, label %249, !dbg !3251

; <label>:249:                                    ; preds = %244
  %250 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !3252
  %251 = load i32, i32* %250, align 4, !dbg !3253, !tbaa !962
  %252 = add nsw i32 %251, -1, !dbg !3253
  store i32 %252, i32* %250, align 4, !dbg !3253, !tbaa !962
  br label %253, !dbg !3254

; <label>:253:                                    ; preds = %234, %240, %244, %249
  %254 = tail call fastcc i32 @condjump(%struct.FuncState* %0, i32 23, i32 0, i32 %214, i32 %215) #5, !dbg !3255
  store i32 %254, i32* %239, align 8, !dbg !3256, !tbaa !1025
  store i32 10, i32* %235, align 8, !dbg !3257, !tbaa !1141
  br label %423, !dbg !3258

; <label>:255:                                    ; preds = %4
  %256 = tail call i32 @luaK_exp2RK(%struct.FuncState* %0, %struct.expdesc* %2) #5, !dbg !3265
  %257 = tail call i32 @luaK_exp2RK(%struct.FuncState* %0, %struct.expdesc* %3) #5, !dbg !3267
  %258 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0, !dbg !3272
  %259 = load i32, i32* %258, align 8, !dbg !3272, !tbaa !1141
  %260 = icmp eq i32 %259, 12, !dbg !3273
  br i1 %260, label %261, label %276, !dbg !3274

; <label>:261:                                    ; preds = %255
  %262 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1, !dbg !3275
  %263 = bitcast %union.anon.3* %262 to i32*, !dbg !3276
  %264 = load i32, i32* %263, align 8, !dbg !3276, !tbaa !1025
  %265 = and i32 %264, 256, !dbg !3280
  %266 = icmp eq i32 %265, 0, !dbg !3280
  br i1 %266, label %267, label %276, !dbg !3281

; <label>:267:                                    ; preds = %261
  %268 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !3282
  %269 = load i8, i8* %268, align 2, !dbg !3282, !tbaa !537
  %270 = zext i8 %269 to i32, !dbg !3283
  %271 = icmp slt i32 %264, %270, !dbg !3284
  br i1 %271, label %276, label %272, !dbg !3285

; <label>:272:                                    ; preds = %267
  %273 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !3286
  %274 = load i32, i32* %273, align 4, !dbg !3287, !tbaa !962
  %275 = add nsw i32 %274, -1, !dbg !3287
  store i32 %275, i32* %273, align 4, !dbg !3287, !tbaa !962
  br label %276, !dbg !3288

; <label>:276:                                    ; preds = %272, %267, %261, %255
  %277 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0, !dbg !3292
  %278 = load i32, i32* %277, align 8, !dbg !3292, !tbaa !1141
  %279 = icmp eq i32 %278, 12, !dbg !3293
  %280 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, !dbg !3294
  %281 = bitcast %union.anon.3* %280 to i32*, !dbg !3294
  br i1 %279, label %282, label %295, !dbg !3295

; <label>:282:                                    ; preds = %276
  %283 = load i32, i32* %281, align 8, !dbg !3296, !tbaa !1025
  %284 = and i32 %283, 256, !dbg !3300
  %285 = icmp eq i32 %284, 0, !dbg !3300
  br i1 %285, label %286, label %295, !dbg !3301

; <label>:286:                                    ; preds = %282
  %287 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !3302
  %288 = load i8, i8* %287, align 2, !dbg !3302, !tbaa !537
  %289 = zext i8 %288 to i32, !dbg !3303
  %290 = icmp slt i32 %283, %289, !dbg !3304
  br i1 %290, label %295, label %291, !dbg !3305

; <label>:291:                                    ; preds = %286
  %292 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !3306
  %293 = load i32, i32* %292, align 4, !dbg !3307, !tbaa !962
  %294 = add nsw i32 %293, -1, !dbg !3307
  store i32 %294, i32* %292, align 4, !dbg !3307, !tbaa !962
  br label %295, !dbg !3308

; <label>:295:                                    ; preds = %276, %282, %286, %291
  %296 = tail call fastcc i32 @condjump(%struct.FuncState* %0, i32 24, i32 1, i32 %256, i32 %257) #5, !dbg !3309
  store i32 %296, i32* %281, align 8, !dbg !3310, !tbaa !1025
  store i32 10, i32* %277, align 8, !dbg !3311, !tbaa !1141
  br label %423, !dbg !3312

; <label>:297:                                    ; preds = %4
  %298 = tail call i32 @luaK_exp2RK(%struct.FuncState* %0, %struct.expdesc* %2) #5, !dbg !3319
  %299 = tail call i32 @luaK_exp2RK(%struct.FuncState* %0, %struct.expdesc* %3) #5, !dbg !3321
  %300 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0, !dbg !3326
  %301 = load i32, i32* %300, align 8, !dbg !3326, !tbaa !1141
  %302 = icmp eq i32 %301, 12, !dbg !3327
  br i1 %302, label %303, label %318, !dbg !3328

; <label>:303:                                    ; preds = %297
  %304 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1, !dbg !3329
  %305 = bitcast %union.anon.3* %304 to i32*, !dbg !3330
  %306 = load i32, i32* %305, align 8, !dbg !3330, !tbaa !1025
  %307 = and i32 %306, 256, !dbg !3334
  %308 = icmp eq i32 %307, 0, !dbg !3334
  br i1 %308, label %309, label %318, !dbg !3335

; <label>:309:                                    ; preds = %303
  %310 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !3336
  %311 = load i8, i8* %310, align 2, !dbg !3336, !tbaa !537
  %312 = zext i8 %311 to i32, !dbg !3337
  %313 = icmp slt i32 %306, %312, !dbg !3338
  br i1 %313, label %318, label %314, !dbg !3339

; <label>:314:                                    ; preds = %309
  %315 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !3340
  %316 = load i32, i32* %315, align 4, !dbg !3341, !tbaa !962
  %317 = add nsw i32 %316, -1, !dbg !3341
  store i32 %317, i32* %315, align 4, !dbg !3341, !tbaa !962
  br label %318, !dbg !3342

; <label>:318:                                    ; preds = %314, %309, %303, %297
  %319 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0, !dbg !3346
  %320 = load i32, i32* %319, align 8, !dbg !3346, !tbaa !1141
  %321 = icmp eq i32 %320, 12, !dbg !3347
  %322 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, !dbg !3348
  %323 = bitcast %union.anon.3* %322 to i32*, !dbg !3348
  br i1 %321, label %324, label %337, !dbg !3349

; <label>:324:                                    ; preds = %318
  %325 = load i32, i32* %323, align 8, !dbg !3350, !tbaa !1025
  %326 = and i32 %325, 256, !dbg !3354
  %327 = icmp eq i32 %326, 0, !dbg !3354
  br i1 %327, label %328, label %337, !dbg !3355

; <label>:328:                                    ; preds = %324
  %329 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !3356
  %330 = load i8, i8* %329, align 2, !dbg !3356, !tbaa !537
  %331 = zext i8 %330 to i32, !dbg !3357
  %332 = icmp slt i32 %325, %331, !dbg !3358
  br i1 %332, label %337, label %333, !dbg !3359

; <label>:333:                                    ; preds = %328
  %334 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !3360
  %335 = load i32, i32* %334, align 4, !dbg !3361, !tbaa !962
  %336 = add nsw i32 %335, -1, !dbg !3361
  store i32 %336, i32* %334, align 4, !dbg !3361, !tbaa !962
  br label %337, !dbg !3362

; <label>:337:                                    ; preds = %318, %324, %328, %333
  %338 = tail call fastcc i32 @condjump(%struct.FuncState* %0, i32 25, i32 1, i32 %298, i32 %299) #5, !dbg !3363
  store i32 %338, i32* %323, align 8, !dbg !3364, !tbaa !1025
  store i32 10, i32* %319, align 8, !dbg !3365, !tbaa !1141
  br label %423, !dbg !3366

; <label>:339:                                    ; preds = %4
  %340 = tail call i32 @luaK_exp2RK(%struct.FuncState* %0, %struct.expdesc* %2) #5, !dbg !3373
  %341 = tail call i32 @luaK_exp2RK(%struct.FuncState* %0, %struct.expdesc* %3) #5, !dbg !3375
  %342 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0, !dbg !3380
  %343 = load i32, i32* %342, align 8, !dbg !3380, !tbaa !1141
  %344 = icmp eq i32 %343, 12, !dbg !3381
  br i1 %344, label %345, label %360, !dbg !3382

; <label>:345:                                    ; preds = %339
  %346 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1, !dbg !3383
  %347 = bitcast %union.anon.3* %346 to i32*, !dbg !3384
  %348 = load i32, i32* %347, align 8, !dbg !3384, !tbaa !1025
  %349 = and i32 %348, 256, !dbg !3388
  %350 = icmp eq i32 %349, 0, !dbg !3388
  br i1 %350, label %351, label %360, !dbg !3389

; <label>:351:                                    ; preds = %345
  %352 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !3390
  %353 = load i8, i8* %352, align 2, !dbg !3390, !tbaa !537
  %354 = zext i8 %353 to i32, !dbg !3391
  %355 = icmp slt i32 %348, %354, !dbg !3392
  br i1 %355, label %360, label %356, !dbg !3393

; <label>:356:                                    ; preds = %351
  %357 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !3394
  %358 = load i32, i32* %357, align 4, !dbg !3395, !tbaa !962
  %359 = add nsw i32 %358, -1, !dbg !3395
  store i32 %359, i32* %357, align 4, !dbg !3395, !tbaa !962
  br label %360, !dbg !3396

; <label>:360:                                    ; preds = %356, %351, %345, %339
  %361 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0, !dbg !3400
  %362 = load i32, i32* %361, align 8, !dbg !3400, !tbaa !1141
  %363 = icmp eq i32 %362, 12, !dbg !3401
  %364 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, !dbg !3402
  %365 = bitcast %union.anon.3* %364 to i32*, !dbg !3402
  br i1 %363, label %366, label %379, !dbg !3403

; <label>:366:                                    ; preds = %360
  %367 = load i32, i32* %365, align 8, !dbg !3404, !tbaa !1025
  %368 = and i32 %367, 256, !dbg !3408
  %369 = icmp eq i32 %368, 0, !dbg !3408
  br i1 %369, label %370, label %379, !dbg !3409

; <label>:370:                                    ; preds = %366
  %371 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !3410
  %372 = load i8, i8* %371, align 2, !dbg !3410, !tbaa !537
  %373 = zext i8 %372 to i32, !dbg !3411
  %374 = icmp slt i32 %367, %373, !dbg !3412
  br i1 %374, label %379, label %375, !dbg !3413

; <label>:375:                                    ; preds = %370
  %376 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !3414
  %377 = load i32, i32* %376, align 4, !dbg !3415, !tbaa !962
  %378 = add nsw i32 %377, -1, !dbg !3415
  store i32 %378, i32* %376, align 4, !dbg !3415, !tbaa !962
  br label %379, !dbg !3416

; <label>:379:                                    ; preds = %360, %366, %370, %375
  %380 = tail call fastcc i32 @condjump(%struct.FuncState* %0, i32 24, i32 1, i32 %341, i32 %340) #5, !dbg !3417
  store i32 %380, i32* %365, align 8, !dbg !3418, !tbaa !1025
  store i32 10, i32* %361, align 8, !dbg !3419, !tbaa !1141
  br label %423, !dbg !3420

; <label>:381:                                    ; preds = %4
  %382 = tail call i32 @luaK_exp2RK(%struct.FuncState* %0, %struct.expdesc* %2) #5, !dbg !3427
  %383 = tail call i32 @luaK_exp2RK(%struct.FuncState* %0, %struct.expdesc* %3) #5, !dbg !3429
  %384 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0, !dbg !3434
  %385 = load i32, i32* %384, align 8, !dbg !3434, !tbaa !1141
  %386 = icmp eq i32 %385, 12, !dbg !3435
  br i1 %386, label %387, label %402, !dbg !3436

; <label>:387:                                    ; preds = %381
  %388 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1, !dbg !3437
  %389 = bitcast %union.anon.3* %388 to i32*, !dbg !3438
  %390 = load i32, i32* %389, align 8, !dbg !3438, !tbaa !1025
  %391 = and i32 %390, 256, !dbg !3442
  %392 = icmp eq i32 %391, 0, !dbg !3442
  br i1 %392, label %393, label %402, !dbg !3443

; <label>:393:                                    ; preds = %387
  %394 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !3444
  %395 = load i8, i8* %394, align 2, !dbg !3444, !tbaa !537
  %396 = zext i8 %395 to i32, !dbg !3445
  %397 = icmp slt i32 %390, %396, !dbg !3446
  br i1 %397, label %402, label %398, !dbg !3447

; <label>:398:                                    ; preds = %393
  %399 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !3448
  %400 = load i32, i32* %399, align 4, !dbg !3449, !tbaa !962
  %401 = add nsw i32 %400, -1, !dbg !3449
  store i32 %401, i32* %399, align 4, !dbg !3449, !tbaa !962
  br label %402, !dbg !3450

; <label>:402:                                    ; preds = %398, %393, %387, %381
  %403 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0, !dbg !3454
  %404 = load i32, i32* %403, align 8, !dbg !3454, !tbaa !1141
  %405 = icmp eq i32 %404, 12, !dbg !3455
  %406 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, !dbg !3456
  %407 = bitcast %union.anon.3* %406 to i32*, !dbg !3456
  br i1 %405, label %408, label %421, !dbg !3457

; <label>:408:                                    ; preds = %402
  %409 = load i32, i32* %407, align 8, !dbg !3458, !tbaa !1025
  %410 = and i32 %409, 256, !dbg !3462
  %411 = icmp eq i32 %410, 0, !dbg !3462
  br i1 %411, label %412, label %421, !dbg !3463

; <label>:412:                                    ; preds = %408
  %413 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !3464
  %414 = load i8, i8* %413, align 2, !dbg !3464, !tbaa !537
  %415 = zext i8 %414 to i32, !dbg !3465
  %416 = icmp slt i32 %409, %415, !dbg !3466
  br i1 %416, label %421, label %417, !dbg !3467

; <label>:417:                                    ; preds = %412
  %418 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !3468
  %419 = load i32, i32* %418, align 4, !dbg !3469, !tbaa !962
  %420 = add nsw i32 %419, -1, !dbg !3469
  store i32 %420, i32* %418, align 4, !dbg !3469, !tbaa !962
  br label %421, !dbg !3470

; <label>:421:                                    ; preds = %402, %408, %412, %417
  %422 = tail call fastcc i32 @condjump(%struct.FuncState* %0, i32 25, i32 1, i32 %383, i32 %382) #5, !dbg !3471
  store i32 %422, i32* %407, align 8, !dbg !3472, !tbaa !1025
  store i32 10, i32* %403, align 8, !dbg !3473, !tbaa !1141
  br label %423, !dbg !3474

; <label>:423:                                    ; preds = %4, %156, %164, %421, %379, %337, %295, %253, %211, %170, %169, %168, %167, %166, %165, %90, %46
  ret void, !dbg !3475
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

; Function Attrs: noredzone nounwind
define hidden void @luaK_fixline(%struct.FuncState* nocapture readonly, i32) local_unnamed_addr #0 !dbg !3476 {
  %3 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0, !dbg !3482
  %4 = load %struct.Proto*, %struct.Proto** %3, align 8, !dbg !3482, !tbaa !542
  %5 = getelementptr inbounds %struct.Proto, %struct.Proto* %4, i64 0, i32 6, !dbg !3483
  %6 = load i32*, i32** %5, align 8, !dbg !3483, !tbaa !3484
  %7 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 6, !dbg !3485
  %8 = load i32, i32* %7, align 8, !dbg !3485, !tbaa !521
  %9 = add nsw i32 %8, -1, !dbg !3486
  %10 = sext i32 %9 to i64, !dbg !3487
  %11 = getelementptr inbounds i32, i32* %6, i64 %10, !dbg !3487
  store i32 %1, i32* %11, align 4, !dbg !3488, !tbaa !550
  ret void, !dbg !3489
}

; Function Attrs: noredzone nounwind
define internal fastcc i32 @luaK_code(%struct.FuncState* nocapture, i32, i32) unnamed_addr #0 !dbg !3490 {
  %4 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0, !dbg !3501
  %5 = load %struct.Proto*, %struct.Proto** %4, align 8, !dbg !3501, !tbaa !542
  %6 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 8, !dbg !3510
  %7 = load i32, i32* %6, align 8, !dbg !3510, !tbaa !613
  %8 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 6, !dbg !3511
  %9 = load i32, i32* %8, align 8, !dbg !3511, !tbaa !521
  tail call fastcc void @patchlistaux(%struct.FuncState* %0, i32 %7, i32 %9, i32 255, i32 %9) #5, !dbg !3512
  store i32 -1, i32* %6, align 8, !dbg !3513, !tbaa !613
  %10 = load i32, i32* %8, align 8, !dbg !3514, !tbaa !521
  %11 = getelementptr inbounds %struct.Proto, %struct.Proto* %5, i64 0, i32 12, !dbg !3514
  %12 = load i32, i32* %11, align 8, !dbg !3514, !tbaa !3516
  %13 = icmp slt i32 %10, %12, !dbg !3514
  br i1 %13, label %14, label %17, !dbg !3517

; <label>:14:                                     ; preds = %3
  %15 = getelementptr inbounds %struct.Proto, %struct.Proto* %5, i64 0, i32 4
  %16 = load i32*, i32** %15, align 8, !dbg !3518, !tbaa !544
  br label %26, !dbg !3517

; <label>:17:                                     ; preds = %3
  %18 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4, !dbg !3514
  %19 = load %struct.lua_State*, %struct.lua_State** %18, align 8, !dbg !3514, !tbaa !1056
  %20 = getelementptr inbounds %struct.Proto, %struct.Proto* %5, i64 0, i32 4, !dbg !3514
  %21 = bitcast i32** %20 to i8**, !dbg !3514
  %22 = load i8*, i8** %21, align 8, !dbg !3514, !tbaa !544
  %23 = tail call i8* @luaM_growaux_(%struct.lua_State* %19, i8* %22, i32* nonnull %11, i64 4, i32 2147483645, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0)) #5, !dbg !3514
  store i8* %23, i8** %21, align 8, !dbg !3514, !tbaa !544
  %24 = bitcast i8* %23 to i32*, !dbg !3514
  %25 = load i32, i32* %8, align 8, !dbg !3519, !tbaa !521
  br label %26, !dbg !3514

; <label>:26:                                     ; preds = %14, %17
  %27 = phi i32 [ %10, %14 ], [ %25, %17 ], !dbg !3519
  %28 = phi i32* [ %16, %14 ], [ %24, %17 ], !dbg !3518
  %29 = sext i32 %27 to i64, !dbg !3520
  %30 = getelementptr inbounds i32, i32* %28, i64 %29, !dbg !3520
  store i32 %1, i32* %30, align 4, !dbg !3521, !tbaa !550
  %31 = load i32, i32* %8, align 8, !dbg !3522, !tbaa !521
  %32 = getelementptr inbounds %struct.Proto, %struct.Proto* %5, i64 0, i32 13, !dbg !3522
  %33 = load i32, i32* %32, align 4, !dbg !3522, !tbaa !3524
  %34 = icmp slt i32 %31, %33, !dbg !3522
  br i1 %34, label %35, label %38, !dbg !3525

; <label>:35:                                     ; preds = %26
  %36 = getelementptr inbounds %struct.Proto, %struct.Proto* %5, i64 0, i32 6
  %37 = load i32*, i32** %36, align 8, !dbg !3526, !tbaa !3484
  br label %47, !dbg !3525

; <label>:38:                                     ; preds = %26
  %39 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4, !dbg !3522
  %40 = load %struct.lua_State*, %struct.lua_State** %39, align 8, !dbg !3522, !tbaa !1056
  %41 = getelementptr inbounds %struct.Proto, %struct.Proto* %5, i64 0, i32 6, !dbg !3522
  %42 = bitcast i32** %41 to i8**, !dbg !3522
  %43 = load i8*, i8** %42, align 8, !dbg !3522, !tbaa !3484
  %44 = tail call i8* @luaM_growaux_(%struct.lua_State* %40, i8* %43, i32* nonnull %32, i64 4, i32 2147483645, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0)) #5, !dbg !3522
  store i8* %44, i8** %42, align 8, !dbg !3522, !tbaa !3484
  %45 = bitcast i8* %44 to i32*, !dbg !3522
  %46 = load i32, i32* %8, align 8, !dbg !3527, !tbaa !521
  br label %47, !dbg !3522

; <label>:47:                                     ; preds = %35, %38
  %48 = phi i32 [ %31, %35 ], [ %46, %38 ], !dbg !3527
  %49 = phi i32* [ %37, %35 ], [ %45, %38 ], !dbg !3526
  %50 = sext i32 %48 to i64, !dbg !3528
  %51 = getelementptr inbounds i32, i32* %49, i64 %50, !dbg !3528
  store i32 %2, i32* %51, align 4, !dbg !3529, !tbaa !550
  %52 = load i32, i32* %8, align 8, !dbg !3530, !tbaa !521
  %53 = add nsw i32 %52, 1, !dbg !3530
  store i32 %53, i32* %8, align 8, !dbg !3530, !tbaa !521
  ret i32 %52, !dbg !3531
}

; Function Attrs: noredzone nounwind
define hidden void @luaK_setlist(%struct.FuncState* nocapture, i32, i32, i32) local_unnamed_addr #0 !dbg !3532 {
  %5 = add nsw i32 %2, -1, !dbg !3546
  %6 = sdiv i32 %5, 50, !dbg !3547
  %7 = add nsw i32 %6, 1, !dbg !3548
  %8 = icmp eq i32 %3, -1, !dbg !3550
  %9 = icmp slt i32 %2, 25551, !dbg !3551
  %10 = shl i32 %1, 6, !dbg !3562
  %11 = shl i32 %3, 23, !dbg !3562
  %12 = select i1 %8, i32 0, i32 %11, !dbg !3562
  %13 = or i32 %10, %12, !dbg !3562
  %14 = or i32 %13, 34, !dbg !3562
  br i1 %9, label %15, label %23, !dbg !3563

; <label>:15:                                     ; preds = %4
  %16 = shl i32 %7, 14, !dbg !3562
  %17 = or i32 %14, %16, !dbg !3562
  %18 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !3565
  %19 = load %struct.LexState*, %struct.LexState** %18, align 8, !dbg !3565, !tbaa !587
  %20 = getelementptr inbounds %struct.LexState, %struct.LexState* %19, i64 0, i32 2, !dbg !3566
  %21 = load i32, i32* %20, align 8, !dbg !3566, !tbaa !589
  %22 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %17, i32 %21) #5, !dbg !3567
  br label %33, !dbg !3568

; <label>:23:                                     ; preds = %4
  %24 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !3570
  %25 = load %struct.LexState*, %struct.LexState** %24, align 8, !dbg !3570, !tbaa !587
  %26 = getelementptr inbounds %struct.LexState, %struct.LexState* %25, i64 0, i32 2, !dbg !3571
  %27 = load i32, i32* %26, align 8, !dbg !3571, !tbaa !589
  %28 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %14, i32 %27) #5, !dbg !3572
  %29 = load %struct.LexState*, %struct.LexState** %24, align 8, !dbg !3573, !tbaa !587
  %30 = getelementptr inbounds %struct.LexState, %struct.LexState* %29, i64 0, i32 2, !dbg !3574
  %31 = load i32, i32* %30, align 8, !dbg !3574, !tbaa !589
  %32 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %7, i32 %31) #6, !dbg !3575
  br label %33

; <label>:33:                                     ; preds = %23, %15
  %34 = add nsw i32 %1, 1, !dbg !3576
  %35 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !3577
  store i32 %34, i32* %35, align 4, !dbg !3578, !tbaa !962
  ret void, !dbg !3579
}

; Function Attrs: noredzone nounwind
define internal fastcc i32 @patchtestreg(%struct.FuncState* nocapture readonly, i32, i32) unnamed_addr #0 !dbg !2517 {
  %4 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0, !dbg !3586
  %5 = load %struct.Proto*, %struct.Proto** %4, align 8, !dbg !3586, !tbaa !542
  %6 = getelementptr inbounds %struct.Proto, %struct.Proto* %5, i64 0, i32 4, !dbg !3587
  %7 = load i32*, i32** %6, align 8, !dbg !3587, !tbaa !544
  %8 = sext i32 %1 to i64, !dbg !3588
  %9 = getelementptr inbounds i32, i32* %7, i64 %8, !dbg !3588
  %10 = icmp sgt i32 %1, 0, !dbg !3590
  br i1 %10, label %11, label %19, !dbg !3591

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds i32, i32* %9, i64 -1, !dbg !3592
  %13 = load i32, i32* %12, align 4, !dbg !3592, !tbaa !550
  %14 = and i32 %13, 63, !dbg !3592
  %15 = zext i32 %14 to i64, !dbg !3592
  %16 = getelementptr inbounds [38 x i8], [38 x i8]* @luaP_opmodes, i64 0, i64 %15, !dbg !3592
  %17 = load i8, i8* %16, align 1, !dbg !3592, !tbaa !1025
  %18 = icmp slt i8 %17, 0, !dbg !3592
  br i1 %18, label %21, label %19, !dbg !3593

; <label>:19:                                     ; preds = %11, %3
  %20 = load i32, i32* %9, align 4, !dbg !3594, !tbaa !550
  br label %21, !dbg !3595

; <label>:21:                                     ; preds = %11, %19
  %22 = phi i32 [ %20, %19 ], [ %13, %11 ], !dbg !3594
  %23 = phi i32* [ %9, %19 ], [ %12, %11 ], !dbg !3596
  %24 = and i32 %22, 63, !dbg !3594
  %25 = icmp eq i32 %24, 27, !dbg !3598
  br i1 %25, label %26, label %43, !dbg !3599

; <label>:26:                                     ; preds = %21
  %27 = icmp eq i32 %2, 255, !dbg !3600
  %28 = lshr i32 %22, 23, !dbg !3601
  %29 = icmp eq i32 %28, %2, !dbg !3602
  %30 = or i1 %27, %29, !dbg !3603
  br i1 %30, label %36, label %31, !dbg !3603

; <label>:31:                                     ; preds = %26
  %32 = and i32 %22, -16321, !dbg !3604
  %33 = shl i32 %2, 6, !dbg !3604
  %34 = and i32 %33, 16320, !dbg !3604
  %35 = or i32 %32, %34, !dbg !3604
  br label %41, !dbg !3604

; <label>:36:                                     ; preds = %26
  %37 = shl nuw nsw i32 %28, 6, !dbg !3605
  %38 = and i32 %22, 8372224, !dbg !3605
  %39 = or i32 %38, %37, !dbg !3605
  %40 = or i32 %39, 26, !dbg !3605
  br label %41

; <label>:41:                                     ; preds = %36, %31
  %42 = phi i32 [ %40, %36 ], [ %35, %31 ]
  store i32 %42, i32* %23, align 4, !dbg !3606, !tbaa !550
  br label %43, !dbg !3607

; <label>:43:                                     ; preds = %21, %41
  %44 = phi i32 [ 1, %41 ], [ 0, %21 ], !dbg !3608
  ret i32 %44, !dbg !3609
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
define internal fastcc void @discharge2reg(%struct.FuncState* nocapture, %struct.expdesc* nocapture, i32) unnamed_addr #0 !dbg !3610 {
  %4 = alloca %struct.lua_TValue, align 8
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %1) #6, !dbg !3621
  %5 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0, !dbg !3622
  %6 = load i32, i32* %5, align 8, !dbg !3622, !tbaa !1141
  switch i32 %6, label %129 [
    i32 1, label %7
    i32 3, label %55
    i32 2, label %55
    i32 4, label %67
    i32 5, label %80
    i32 11, label %97
    i32 12, label %112
  ], !dbg !3623

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 6, !dbg !3629
  %9 = load i32, i32* %8, align 8, !dbg !3629, !tbaa !521
  %10 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 7, !dbg !3630
  %11 = load i32, i32* %10, align 4, !dbg !3630, !tbaa !529
  %12 = icmp sgt i32 %9, %11, !dbg !3631
  br i1 %12, label %13, label %45, !dbg !3632

; <label>:13:                                     ; preds = %7
  %14 = icmp eq i32 %9, 0, !dbg !3633
  br i1 %14, label %15, label %20, !dbg !3634

; <label>:15:                                     ; preds = %13
  %16 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !3635
  %17 = load i8, i8* %16, align 2, !dbg !3635, !tbaa !537
  %18 = zext i8 %17 to i32, !dbg !3636
  %19 = icmp sgt i32 %18, %2, !dbg !3637
  br i1 %19, label %45, label %126, !dbg !3638

; <label>:20:                                     ; preds = %13
  %21 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0, !dbg !3639
  %22 = load %struct.Proto*, %struct.Proto** %21, align 8, !dbg !3639, !tbaa !542
  %23 = getelementptr inbounds %struct.Proto, %struct.Proto* %22, i64 0, i32 4, !dbg !3640
  %24 = load i32*, i32** %23, align 8, !dbg !3640, !tbaa !544
  %25 = add nsw i32 %9, -1, !dbg !3641
  %26 = sext i32 %25 to i64, !dbg !3642
  %27 = getelementptr inbounds i32, i32* %24, i64 %26, !dbg !3642
  %28 = load i32, i32* %27, align 4, !dbg !3644, !tbaa !550
  %29 = and i32 %28, 63, !dbg !3644
  %30 = icmp eq i32 %29, 3, !dbg !3645
  br i1 %30, label %31, label %45, !dbg !3646

; <label>:31:                                     ; preds = %20
  %32 = lshr i32 %28, 6, !dbg !3647
  %33 = and i32 %32, 255, !dbg !3647
  %34 = lshr i32 %28, 23, !dbg !3649
  %35 = icmp sgt i32 %33, %2, !dbg !3651
  %36 = add nuw nsw i32 %34, 1, !dbg !3652
  %37 = icmp slt i32 %36, %2, !dbg !3653
  %38 = or i1 %35, %37, !dbg !3654
  br i1 %38, label %45, label %39, !dbg !3654

; <label>:39:                                     ; preds = %31
  %40 = icmp slt i32 %34, %2, !dbg !3655
  br i1 %40, label %41, label %126, !dbg !3656

; <label>:41:                                     ; preds = %39
  %42 = and i32 %28, 8388607, !dbg !3657
  %43 = shl i32 %2, 23, !dbg !3657
  %44 = or i32 %42, %43, !dbg !3657
  store i32 %44, i32* %27, align 4, !dbg !3657, !tbaa !550
  br label %126

; <label>:45:                                     ; preds = %31, %20, %15, %7
  %46 = shl i32 %2, 6, !dbg !3664
  %47 = shl i32 %2, 23, !dbg !3664
  %48 = or i32 %47, %46, !dbg !3664
  %49 = or i32 %48, 3, !dbg !3664
  %50 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !3665
  %51 = load %struct.LexState*, %struct.LexState** %50, align 8, !dbg !3665, !tbaa !587
  %52 = getelementptr inbounds %struct.LexState, %struct.LexState* %51, i64 0, i32 2, !dbg !3666
  %53 = load i32, i32* %52, align 8, !dbg !3666, !tbaa !589
  %54 = tail call fastcc i32 @luaK_code(%struct.FuncState* nonnull %0, i32 %49, i32 %53) #5, !dbg !3667
  br label %126, !dbg !3668

; <label>:55:                                     ; preds = %3, %3
  %56 = icmp eq i32 %6, 2, !dbg !3669
  %57 = zext i1 %56 to i32, !dbg !3669
  %58 = shl i32 %2, 6, !dbg !3677
  %59 = shl nuw nsw i32 %57, 23, !dbg !3677
  %60 = or i32 %58, %59, !dbg !3677
  %61 = or i32 %60, 2, !dbg !3677
  %62 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !3678
  %63 = load %struct.LexState*, %struct.LexState** %62, align 8, !dbg !3678, !tbaa !587
  %64 = getelementptr inbounds %struct.LexState, %struct.LexState* %63, i64 0, i32 2, !dbg !3679
  %65 = load i32, i32* %64, align 8, !dbg !3679, !tbaa !589
  %66 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %61, i32 %65) #5, !dbg !3680
  br label %126, !dbg !3681

; <label>:67:                                     ; preds = %3
  %68 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !3682
  %69 = bitcast %union.anon.3* %68 to i32*, !dbg !3684
  %70 = load i32, i32* %69, align 8, !dbg !3684, !tbaa !1025
  %71 = shl i32 %2, 6, !dbg !3690
  %72 = shl i32 %70, 14, !dbg !3690
  %73 = or i32 %71, %72, !dbg !3690
  %74 = or i32 %73, 1, !dbg !3690
  %75 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !3691
  %76 = load %struct.LexState*, %struct.LexState** %75, align 8, !dbg !3691, !tbaa !587
  %77 = getelementptr inbounds %struct.LexState, %struct.LexState* %76, i64 0, i32 2, !dbg !3692
  %78 = load i32, i32* %77, align 8, !dbg !3692, !tbaa !589
  %79 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %74, i32 %78) #5, !dbg !3693
  br label %126, !dbg !3694

; <label>:80:                                     ; preds = %3
  %81 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, i32 0, !dbg !3695
  %82 = bitcast double* %81 to i64*, !dbg !3695
  %83 = load i64, i64* %82, align 8, !dbg !3695, !tbaa !1025
  %84 = bitcast %struct.lua_TValue* %4 to i8*, !dbg !3700
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %84) #4, !dbg !3700
  %85 = bitcast %struct.lua_TValue* %4 to i64*, !dbg !3701
  store i64 %83, i64* %85, align 8, !dbg !3701, !tbaa !1025
  %86 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %4, i64 0, i32 1, !dbg !3701
  store i32 3, i32* %86, align 8, !dbg !3701, !tbaa !1026
  %87 = call fastcc i32 @addk(%struct.FuncState* %0, %struct.lua_TValue* nonnull %4, %struct.lua_TValue* nonnull %4) #5, !dbg !3703
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %84) #4, !dbg !3704
  %88 = shl i32 %2, 6, !dbg !3710
  %89 = shl i32 %87, 14, !dbg !3710
  %90 = or i32 %88, %89, !dbg !3710
  %91 = or i32 %90, 1, !dbg !3710
  %92 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !3711
  %93 = load %struct.LexState*, %struct.LexState** %92, align 8, !dbg !3711, !tbaa !587
  %94 = getelementptr inbounds %struct.LexState, %struct.LexState* %93, i64 0, i32 2, !dbg !3712
  %95 = load i32, i32* %94, align 8, !dbg !3712, !tbaa !589
  %96 = call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %91, i32 %95) #5, !dbg !3713
  br label %126, !dbg !3714

; <label>:97:                                     ; preds = %3
  %98 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0, !dbg !3715
  %99 = load %struct.Proto*, %struct.Proto** %98, align 8, !dbg !3715, !tbaa !542
  %100 = getelementptr inbounds %struct.Proto, %struct.Proto* %99, i64 0, i32 4, !dbg !3715
  %101 = load i32*, i32** %100, align 8, !dbg !3715, !tbaa !544
  %102 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !3715
  %103 = bitcast %union.anon.3* %102 to i32*, !dbg !3715
  %104 = load i32, i32* %103, align 8, !dbg !3715, !tbaa !1025
  %105 = sext i32 %104 to i64, !dbg !3715
  %106 = getelementptr inbounds i32, i32* %101, i64 %105, !dbg !3715
  %107 = load i32, i32* %106, align 4, !dbg !3717, !tbaa !550
  %108 = and i32 %107, -16321, !dbg !3717
  %109 = shl i32 %2, 6, !dbg !3717
  %110 = and i32 %109, 16320, !dbg !3717
  %111 = or i32 %108, %110, !dbg !3717
  store i32 %111, i32* %106, align 4, !dbg !3717, !tbaa !550
  br label %126

; <label>:112:                                    ; preds = %3
  %113 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !3718
  %114 = bitcast %union.anon.3* %113 to i32*, !dbg !3721
  %115 = load i32, i32* %114, align 8, !dbg !3721, !tbaa !1025
  %116 = icmp eq i32 %115, %2, !dbg !3722
  br i1 %116, label %126, label %117, !dbg !3723

; <label>:117:                                    ; preds = %112
  %118 = shl i32 %2, 6, !dbg !3730
  %119 = shl i32 %115, 23, !dbg !3730
  %120 = or i32 %119, %118, !dbg !3730
  %121 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !3731
  %122 = load %struct.LexState*, %struct.LexState** %121, align 8, !dbg !3731, !tbaa !587
  %123 = getelementptr inbounds %struct.LexState, %struct.LexState* %122, i64 0, i32 2, !dbg !3732
  %124 = load i32, i32* %123, align 8, !dbg !3732, !tbaa !589
  %125 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %120, i32 %124) #5, !dbg !3733
  br label %126, !dbg !3734

; <label>:126:                                    ; preds = %45, %41, %39, %15, %112, %117, %97, %80, %67, %55
  %127 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !3735
  %128 = bitcast %union.anon.3* %127 to i32*, !dbg !3736
  store i32 %2, i32* %128, align 8, !dbg !3737, !tbaa !1025
  store i32 12, i32* %5, align 8, !dbg !3738, !tbaa !1141
  br label %129, !dbg !3739

; <label>:129:                                    ; preds = %3, %126
  ret void, !dbg !3739
}

; Function Attrs: noredzone nounwind
define internal fastcc i32 @condjump(%struct.FuncState* nocapture, i32, i32, i32, i32) unnamed_addr #0 !dbg !3740 {
  %6 = shl i32 %2, 6, !dbg !3758
  %7 = or i32 %6, %1, !dbg !3758
  %8 = shl i32 %3, 23, !dbg !3758
  %9 = or i32 %7, %8, !dbg !3758
  %10 = shl i32 %4, 14, !dbg !3758
  %11 = or i32 %9, %10, !dbg !3758
  %12 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !3759
  %13 = load %struct.LexState*, %struct.LexState** %12, align 8, !dbg !3759, !tbaa !587
  %14 = getelementptr inbounds %struct.LexState, %struct.LexState* %13, i64 0, i32 2, !dbg !3760
  %15 = load i32, i32* %14, align 8, !dbg !3760, !tbaa !589
  %16 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %11, i32 %15) #5, !dbg !3761
  %17 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 8, !dbg !3764
  %18 = load i32, i32* %17, align 8, !dbg !3764, !tbaa !613
  store i32 -1, i32* %17, align 8, !dbg !3766, !tbaa !613
  %19 = load %struct.LexState*, %struct.LexState** %12, align 8, !dbg !3772, !tbaa !587
  %20 = getelementptr inbounds %struct.LexState, %struct.LexState* %19, i64 0, i32 2, !dbg !3773
  %21 = load i32, i32* %20, align 8, !dbg !3773, !tbaa !589
  %22 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 2147450902, i32 %21) #5, !dbg !3774
  %23 = icmp eq i32 %18, -1, !dbg !3779
  br i1 %23, label %57, label %24, !dbg !3780

; <label>:24:                                     ; preds = %5
  %25 = icmp eq i32 %22, -1, !dbg !3781
  br i1 %25, label %57, label %26, !dbg !3782

; <label>:26:                                     ; preds = %24
  %27 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %28 = load %struct.Proto*, %struct.Proto** %27, align 8, !tbaa !542
  %29 = getelementptr inbounds %struct.Proto, %struct.Proto* %28, i64 0, i32 4
  %30 = load i32*, i32** %29, align 8, !tbaa !544
  br label %31, !dbg !3783

; <label>:31:                                     ; preds = %31, %26
  %32 = phi i32 [ %41, %31 ], [ %22, %26 ], !dbg !3785
  %33 = sext i32 %32 to i64, !dbg !3783
  %34 = getelementptr inbounds i32, i32* %30, i64 %33, !dbg !3783
  %35 = load i32, i32* %34, align 4, !dbg !3783, !tbaa !550
  %36 = lshr i32 %35, 14, !dbg !3783
  %37 = add nsw i32 %36, -131071, !dbg !3783
  %38 = icmp eq i32 %37, -1, !dbg !3790
  %39 = add nsw i32 %32, 1, !dbg !3791
  %40 = add nsw i32 %39, %37, !dbg !3792
  %41 = select i1 %38, i32 -1, i32 %40, !dbg !3793
  %42 = icmp eq i32 %41, -1, !dbg !3795
  br i1 %42, label %43, label %31, !dbg !3796, !llvm.loop !674

; <label>:43:                                     ; preds = %31
  %44 = getelementptr inbounds i32, i32* %30, i64 %33, !dbg !3783
  %45 = xor i32 %32, -1, !dbg !3802
  %46 = add i32 %18, %45, !dbg !3802
  %47 = tail call i32 @abs(i32 %46) #5, !dbg !3804
  %48 = icmp sgt i32 %47, 131071, !dbg !3805
  br i1 %48, label %49, label %51, !dbg !3806

; <label>:49:                                     ; preds = %43
  %50 = load %struct.LexState*, %struct.LexState** %12, align 8, !dbg !3807, !tbaa !587
  tail call void @luaX_syntaxerror(%struct.LexState* %50, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !3808
  br label %51, !dbg !3808

; <label>:51:                                     ; preds = %49, %43
  %52 = load i32, i32* %44, align 4, !dbg !3809, !tbaa !550
  %53 = and i32 %52, 16383, !dbg !3809
  %54 = shl i32 %46, 14, !dbg !3809
  %55 = add i32 %54, 2147467264, !dbg !3809
  %56 = or i32 %53, %55, !dbg !3809
  store i32 %56, i32* %44, align 4, !dbg !3809, !tbaa !550
  br label %57

; <label>:57:                                     ; preds = %5, %24, %51
  %58 = phi i32 [ %22, %5 ], [ %22, %51 ], [ %18, %24 ], !dbg !3810
  ret i32 %58, !dbg !3811
}

; Function Attrs: noredzone
declare dso_local double @floor(double) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local double @pow(double, double) local_unnamed_addr #2

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
!559 = !DILocation(line: 47, column: 41, scope: !558)
!560 = !DILocation(line: 47, column: 35, scope: !558)
!561 = !DILocation(line: 47, column: 27, scope: !558)
!562 = !DILocation(line: 48, column: 19, scope: !563)
!563 = distinct !DILexicalBlock(scope: !564, file: !1, line: 48, column: 15)
!564 = distinct !DILexicalBlock(scope: !558, file: !1, line: 47, column: 45)
!565 = !DILocation(line: 48, column: 21, scope: !563)
!566 = !DILocation(line: 48, column: 24, scope: !563)
!567 = !DILocation(line: 48, column: 15, scope: !564)
!568 = !DILocation(line: 49, column: 13, scope: !563)
!569 = !DILocation(line: 55, column: 42, scope: !424)
!570 = !DILocalVariable(name: "fs", arg: 1, scope: !571, file: !1, line: 804, type: !427)
!571 = distinct !DISubprogram(name: "luaK_codeABC", scope: !1, file: !1, line: 804, type: !572, isLocal: false, isDefinition: true, scopeLine: 804, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !574)
!572 = !DISubroutineType(types: !573)
!573 = !{!93, !427, !89, !93, !93, !93}
!574 = !{!570, !575, !576, !577, !578}
!575 = !DILocalVariable(name: "o", arg: 2, scope: !571, file: !1, line: 804, type: !89)
!576 = !DILocalVariable(name: "a", arg: 3, scope: !571, file: !1, line: 804, type: !93)
!577 = !DILocalVariable(name: "b", arg: 4, scope: !571, file: !1, line: 804, type: !93)
!578 = !DILocalVariable(name: "c", arg: 5, scope: !571, file: !1, line: 804, type: !93)
!579 = !DILocation(line: 804, column: 30, scope: !571, inlinedAt: !580)
!580 = distinct !DILocation(line: 55, column: 3, scope: !424)
!581 = !DILocation(line: 804, column: 41, scope: !571, inlinedAt: !580)
!582 = !DILocation(line: 804, column: 48, scope: !571, inlinedAt: !580)
!583 = !DILocation(line: 804, column: 55, scope: !571, inlinedAt: !580)
!584 = !DILocation(line: 804, column: 62, scope: !571, inlinedAt: !580)
!585 = !DILocation(line: 808, column: 24, scope: !571, inlinedAt: !580)
!586 = !DILocation(line: 808, column: 52, scope: !571, inlinedAt: !580)
!587 = !{!522, !523, i64 24}
!588 = !DILocation(line: 808, column: 56, scope: !571, inlinedAt: !580)
!589 = !{!590, !526, i64 8}
!590 = !{!"LexState", !526, i64 0, !526, i64 4, !526, i64 8, !591, i64 16, !591, i64 32, !523, i64 48, !523, i64 56, !523, i64 64, !523, i64 72, !523, i64 80, !524, i64 88}
!591 = !{!"Token", !526, i64 0, !524, i64 8}
!592 = !DILocation(line: 808, column: 10, scope: !571, inlinedAt: !580)
!593 = !DILocation(line: 56, column: 1, scope: !424)
!594 = !DILocation(line: 804, column: 30, scope: !571)
!595 = !DILocation(line: 804, column: 41, scope: !571)
!596 = !DILocation(line: 804, column: 48, scope: !571)
!597 = !DILocation(line: 804, column: 55, scope: !571)
!598 = !DILocation(line: 804, column: 62, scope: !571)
!599 = !DILocation(line: 808, column: 24, scope: !571)
!600 = !DILocation(line: 808, column: 52, scope: !571)
!601 = !DILocation(line: 808, column: 56, scope: !571)
!602 = !DILocation(line: 808, column: 10, scope: !571)
!603 = !DILocation(line: 808, column: 3, scope: !571)
!604 = distinct !DISubprogram(name: "luaK_jump", scope: !1, file: !1, line: 59, type: !605, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !607)
!605 = !DISubroutineType(types: !606)
!606 = !{!93, !427}
!607 = !{!608, !609, !610}
!608 = !DILocalVariable(name: "fs", arg: 1, scope: !604, file: !1, line: 59, type: !427)
!609 = !DILocalVariable(name: "jpc", scope: !604, file: !1, line: 60, type: !93)
!610 = !DILocalVariable(name: "j", scope: !604, file: !1, line: 61, type: !93)
!611 = !DILocation(line: 59, column: 27, scope: !604)
!612 = !DILocation(line: 60, column: 17, scope: !604)
!613 = !{!522, !526, i64 56}
!614 = !DILocation(line: 60, column: 7, scope: !604)
!615 = !DILocation(line: 62, column: 11, scope: !604)
!616 = !DILocalVariable(name: "fs", arg: 1, scope: !617, file: !1, line: 812, type: !427)
!617 = distinct !DISubprogram(name: "luaK_codeABx", scope: !1, file: !1, line: 812, type: !618, isLocal: false, isDefinition: true, scopeLine: 812, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !620)
!618 = !DISubroutineType(types: !619)
!619 = !{!93, !427, !89, !93, !5}
!620 = !{!616, !621, !622, !623}
!621 = !DILocalVariable(name: "o", arg: 2, scope: !617, file: !1, line: 812, type: !89)
!622 = !DILocalVariable(name: "a", arg: 3, scope: !617, file: !1, line: 812, type: !93)
!623 = !DILocalVariable(name: "bc", arg: 4, scope: !617, file: !1, line: 812, type: !5)
!624 = !DILocation(line: 812, column: 30, scope: !617, inlinedAt: !625)
!625 = distinct !DILocation(line: 63, column: 7, scope: !604)
!626 = !DILocation(line: 812, column: 41, scope: !617, inlinedAt: !625)
!627 = !DILocation(line: 812, column: 48, scope: !617, inlinedAt: !625)
!628 = !DILocation(line: 812, column: 64, scope: !617, inlinedAt: !625)
!629 = !DILocation(line: 815, column: 50, scope: !617, inlinedAt: !625)
!630 = !DILocation(line: 815, column: 54, scope: !617, inlinedAt: !625)
!631 = !DILocation(line: 815, column: 10, scope: !617, inlinedAt: !625)
!632 = !DILocation(line: 61, column: 7, scope: !604)
!633 = !DILocalVariable(name: "fs", arg: 1, scope: !634, file: !1, line: 185, type: !427)
!634 = distinct !DISubprogram(name: "luaK_concat", scope: !1, file: !1, line: 185, type: !635, isLocal: false, isDefinition: true, scopeLine: 185, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !637)
!635 = !DISubroutineType(types: !636)
!636 = !{null, !427, !389, !93}
!637 = !{!633, !638, !639, !640, !644}
!638 = !DILocalVariable(name: "l1", arg: 2, scope: !634, file: !1, line: 185, type: !389)
!639 = !DILocalVariable(name: "l2", arg: 3, scope: !634, file: !1, line: 185, type: !93)
!640 = !DILocalVariable(name: "list", scope: !641, file: !1, line: 190, type: !93)
!641 = distinct !DILexicalBlock(scope: !642, file: !1, line: 189, column: 8)
!642 = distinct !DILexicalBlock(scope: !643, file: !1, line: 187, column: 12)
!643 = distinct !DILexicalBlock(scope: !634, file: !1, line: 186, column: 7)
!644 = !DILocalVariable(name: "next", scope: !641, file: !1, line: 191, type: !93)
!645 = !DILocation(line: 185, column: 30, scope: !634, inlinedAt: !646)
!646 = distinct !DILocation(line: 64, column: 3, scope: !604)
!647 = !DILocation(line: 185, column: 47, scope: !634, inlinedAt: !646)
!648 = !DILocation(line: 186, column: 10, scope: !643, inlinedAt: !646)
!649 = !DILocation(line: 186, column: 7, scope: !634, inlinedAt: !646)
!650 = !DILocation(line: 187, column: 16, scope: !642, inlinedAt: !646)
!651 = !DILocation(line: 187, column: 12, scope: !643, inlinedAt: !646)
!652 = !DILocation(line: 101, column: 16, scope: !653, inlinedAt: !660)
!653 = distinct !DISubprogram(name: "getjump", scope: !1, file: !1, line: 100, type: !654, isLocal: true, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !656)
!654 = !DISubroutineType(types: !655)
!655 = !{!93, !427, !93}
!656 = !{!657, !658, !659}
!657 = !DILocalVariable(name: "fs", arg: 1, scope: !653, file: !1, line: 100, type: !427)
!658 = !DILocalVariable(name: "pc", arg: 2, scope: !653, file: !1, line: 100, type: !93)
!659 = !DILocalVariable(name: "offset", scope: !653, file: !1, line: 101, type: !93)
!660 = distinct !DILocation(line: 192, column: 20, scope: !641, inlinedAt: !646)
!661 = !DILocation(line: 0, scope: !641, inlinedAt: !646)
!662 = !DILocation(line: 190, column: 9, scope: !641, inlinedAt: !646)
!663 = !DILocation(line: 100, column: 32, scope: !653, inlinedAt: !660)
!664 = !DILocation(line: 100, column: 40, scope: !653, inlinedAt: !660)
!665 = !DILocation(line: 101, column: 7, scope: !653, inlinedAt: !660)
!666 = !DILocation(line: 102, column: 14, scope: !667, inlinedAt: !660)
!667 = distinct !DILexicalBlock(scope: !653, file: !1, line: 102, column: 7)
!668 = !DILocation(line: 105, column: 15, scope: !667, inlinedAt: !660)
!669 = !DILocation(line: 105, column: 18, scope: !667, inlinedAt: !660)
!670 = !DILocation(line: 102, column: 7, scope: !653, inlinedAt: !660)
!671 = !DILocation(line: 191, column: 9, scope: !641, inlinedAt: !646)
!672 = !DILocation(line: 192, column: 39, scope: !641, inlinedAt: !646)
!673 = !DILocation(line: 192, column: 5, scope: !641, inlinedAt: !646)
!674 = distinct !{!674, !675, !676}
!675 = !DILocation(line: 192, column: 5, scope: !641)
!676 = !DILocation(line: 193, column: 14, scope: !641)
!677 = !DILocalVariable(name: "fs", arg: 1, scope: !678, file: !1, line: 80, type: !427)
!678 = distinct !DISubprogram(name: "fixjump", scope: !1, file: !1, line: 80, type: !425, isLocal: true, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !679)
!679 = !{!677, !680, !681, !682, !683}
!680 = !DILocalVariable(name: "pc", arg: 2, scope: !678, file: !1, line: 80, type: !93)
!681 = !DILocalVariable(name: "dest", arg: 3, scope: !678, file: !1, line: 80, type: !93)
!682 = !DILocalVariable(name: "jmp", scope: !678, file: !1, line: 81, type: !385)
!683 = !DILocalVariable(name: "offset", scope: !678, file: !1, line: 82, type: !93)
!684 = !DILocation(line: 80, column: 33, scope: !678, inlinedAt: !685)
!685 = distinct !DILocation(line: 194, column: 5, scope: !641, inlinedAt: !646)
!686 = !DILocation(line: 80, column: 41, scope: !678, inlinedAt: !685)
!687 = !DILocation(line: 80, column: 49, scope: !678, inlinedAt: !685)
!688 = !DILocation(line: 81, column: 16, scope: !678, inlinedAt: !685)
!689 = !DILocation(line: 82, column: 20, scope: !678, inlinedAt: !685)
!690 = !DILocation(line: 82, column: 7, scope: !678, inlinedAt: !685)
!691 = !DILocation(line: 84, column: 7, scope: !692, inlinedAt: !685)
!692 = distinct !DILexicalBlock(scope: !678, file: !1, line: 84, column: 7)
!693 = !DILocation(line: 84, column: 19, scope: !692, inlinedAt: !685)
!694 = !DILocation(line: 84, column: 7, scope: !678, inlinedAt: !685)
!695 = !DILocation(line: 85, column: 26, scope: !692, inlinedAt: !685)
!696 = !DILocation(line: 85, column: 5, scope: !692, inlinedAt: !685)
!697 = !DILocation(line: 86, column: 3, scope: !678, inlinedAt: !685)
!698 = !DILocation(line: 0, scope: !604)
!699 = !DILocation(line: 65, column: 3, scope: !604)
!700 = !DILocation(line: 812, column: 30, scope: !617)
!701 = !DILocation(line: 812, column: 41, scope: !617)
!702 = !DILocation(line: 812, column: 48, scope: !617)
!703 = !DILocation(line: 812, column: 64, scope: !617)
!704 = !DILocation(line: 815, column: 24, scope: !617)
!705 = !DILocation(line: 815, column: 50, scope: !617)
!706 = !DILocation(line: 815, column: 54, scope: !617)
!707 = !DILocation(line: 815, column: 10, scope: !617)
!708 = !DILocation(line: 815, column: 3, scope: !617)
!709 = !DILocation(line: 185, column: 30, scope: !634)
!710 = !DILocation(line: 185, column: 39, scope: !634)
!711 = !DILocation(line: 185, column: 47, scope: !634)
!712 = !DILocation(line: 186, column: 10, scope: !643)
!713 = !DILocation(line: 186, column: 7, scope: !634)
!714 = !DILocation(line: 187, column: 12, scope: !642)
!715 = !DILocation(line: 187, column: 16, scope: !642)
!716 = !DILocation(line: 187, column: 12, scope: !643)
!717 = !DILocation(line: 101, column: 16, scope: !653, inlinedAt: !718)
!718 = distinct !DILocation(line: 192, column: 20, scope: !641)
!719 = !DILocation(line: 188, column: 9, scope: !642)
!720 = !DILocation(line: 188, column: 5, scope: !642)
!721 = !DILocation(line: 0, scope: !641)
!722 = !DILocation(line: 190, column: 9, scope: !641)
!723 = !DILocation(line: 100, column: 32, scope: !653, inlinedAt: !718)
!724 = !DILocation(line: 100, column: 40, scope: !653, inlinedAt: !718)
!725 = !DILocation(line: 101, column: 7, scope: !653, inlinedAt: !718)
!726 = !DILocation(line: 102, column: 14, scope: !667, inlinedAt: !718)
!727 = !DILocation(line: 105, column: 15, scope: !667, inlinedAt: !718)
!728 = !DILocation(line: 105, column: 18, scope: !667, inlinedAt: !718)
!729 = !DILocation(line: 102, column: 7, scope: !653, inlinedAt: !718)
!730 = !DILocation(line: 191, column: 9, scope: !641)
!731 = !DILocation(line: 192, column: 39, scope: !641)
!732 = !DILocation(line: 80, column: 33, scope: !678, inlinedAt: !733)
!733 = distinct !DILocation(line: 194, column: 5, scope: !641)
!734 = !DILocation(line: 80, column: 41, scope: !678, inlinedAt: !733)
!735 = !DILocation(line: 80, column: 49, scope: !678, inlinedAt: !733)
!736 = !DILocation(line: 81, column: 16, scope: !678, inlinedAt: !733)
!737 = !DILocation(line: 82, column: 20, scope: !678, inlinedAt: !733)
!738 = !DILocation(line: 82, column: 7, scope: !678, inlinedAt: !733)
!739 = !DILocation(line: 84, column: 7, scope: !692, inlinedAt: !733)
!740 = !DILocation(line: 84, column: 19, scope: !692, inlinedAt: !733)
!741 = !DILocation(line: 84, column: 7, scope: !678, inlinedAt: !733)
!742 = !DILocation(line: 85, column: 26, scope: !692, inlinedAt: !733)
!743 = !DILocation(line: 85, column: 5, scope: !692, inlinedAt: !733)
!744 = !DILocation(line: 86, column: 3, scope: !678, inlinedAt: !733)
!745 = !DILocation(line: 196, column: 1, scope: !634)
!746 = distinct !DISubprogram(name: "luaK_ret", scope: !1, file: !1, line: 69, type: !425, isLocal: false, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !747)
!747 = !{!748, !749, !750}
!748 = !DILocalVariable(name: "fs", arg: 1, scope: !746, file: !1, line: 69, type: !427)
!749 = !DILocalVariable(name: "first", arg: 2, scope: !746, file: !1, line: 69, type: !93)
!750 = !DILocalVariable(name: "nret", arg: 3, scope: !746, file: !1, line: 69, type: !93)
!751 = !DILocation(line: 69, column: 27, scope: !746)
!752 = !DILocation(line: 69, column: 35, scope: !746)
!753 = !DILocation(line: 69, column: 46, scope: !746)
!754 = !DILocation(line: 804, column: 30, scope: !571, inlinedAt: !755)
!755 = distinct !DILocation(line: 70, column: 3, scope: !746)
!756 = !DILocation(line: 804, column: 41, scope: !571, inlinedAt: !755)
!757 = !DILocation(line: 804, column: 48, scope: !571, inlinedAt: !755)
!758 = !DILocation(line: 804, column: 55, scope: !571, inlinedAt: !755)
!759 = !DILocation(line: 804, column: 62, scope: !571, inlinedAt: !755)
!760 = !DILocation(line: 808, column: 24, scope: !571, inlinedAt: !755)
!761 = !DILocation(line: 808, column: 52, scope: !571, inlinedAt: !755)
!762 = !DILocation(line: 808, column: 56, scope: !571, inlinedAt: !755)
!763 = !DILocation(line: 808, column: 10, scope: !571, inlinedAt: !755)
!764 = !DILocation(line: 71, column: 1, scope: !746)
!765 = distinct !DISubprogram(name: "luaK_getlabel", scope: !1, file: !1, line: 94, type: !605, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !766)
!766 = !{!767}
!767 = !DILocalVariable(name: "fs", arg: 1, scope: !765, file: !1, line: 94, type: !427)
!768 = !DILocation(line: 94, column: 31, scope: !765)
!769 = !DILocation(line: 95, column: 24, scope: !765)
!770 = !DILocation(line: 95, column: 7, scope: !765)
!771 = !DILocation(line: 95, column: 18, scope: !765)
!772 = !DILocation(line: 96, column: 3, scope: !765)
!773 = distinct !DISubprogram(name: "luaK_patchlist", scope: !1, file: !1, line: 169, type: !425, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !774)
!774 = !{!775, !776, !777}
!775 = !DILocalVariable(name: "fs", arg: 1, scope: !773, file: !1, line: 169, type: !427)
!776 = !DILocalVariable(name: "list", arg: 2, scope: !773, file: !1, line: 169, type: !93)
!777 = !DILocalVariable(name: "target", arg: 3, scope: !773, file: !1, line: 169, type: !93)
!778 = !DILocation(line: 169, column: 33, scope: !773)
!779 = !DILocation(line: 169, column: 41, scope: !773)
!780 = !DILocation(line: 169, column: 51, scope: !773)
!781 = !DILocation(line: 170, column: 21, scope: !782)
!782 = distinct !DILexicalBlock(scope: !773, file: !1, line: 170, column: 7)
!783 = !DILocation(line: 170, column: 14, scope: !782)
!784 = !DILocation(line: 170, column: 7, scope: !773)
!785 = !DILocalVariable(name: "fs", arg: 1, scope: !786, file: !1, line: 179, type: !427)
!786 = distinct !DISubprogram(name: "luaK_patchtohere", scope: !1, file: !1, line: 179, type: !787, isLocal: false, isDefinition: true, scopeLine: 179, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !789)
!787 = !DISubroutineType(types: !788)
!788 = !{null, !427, !93}
!789 = !{!785, !790}
!790 = !DILocalVariable(name: "list", arg: 2, scope: !786, file: !1, line: 179, type: !93)
!791 = !DILocation(line: 179, column: 35, scope: !786, inlinedAt: !792)
!792 = distinct !DILocation(line: 171, column: 5, scope: !782)
!793 = !DILocation(line: 179, column: 43, scope: !786, inlinedAt: !792)
!794 = !DILocation(line: 94, column: 31, scope: !765, inlinedAt: !795)
!795 = distinct !DILocation(line: 180, column: 3, scope: !786, inlinedAt: !792)
!796 = !DILocation(line: 95, column: 7, scope: !765, inlinedAt: !795)
!797 = !DILocation(line: 95, column: 18, scope: !765, inlinedAt: !795)
!798 = !DILocation(line: 181, column: 24, scope: !786, inlinedAt: !792)
!799 = !DILocation(line: 185, column: 30, scope: !634, inlinedAt: !800)
!800 = distinct !DILocation(line: 181, column: 3, scope: !786, inlinedAt: !792)
!801 = !DILocation(line: 185, column: 39, scope: !634, inlinedAt: !800)
!802 = !DILocation(line: 185, column: 47, scope: !634, inlinedAt: !800)
!803 = !DILocation(line: 186, column: 10, scope: !643, inlinedAt: !800)
!804 = !DILocation(line: 186, column: 7, scope: !634, inlinedAt: !800)
!805 = !DILocation(line: 187, column: 12, scope: !642, inlinedAt: !800)
!806 = !DILocation(line: 187, column: 16, scope: !642, inlinedAt: !800)
!807 = !DILocation(line: 187, column: 12, scope: !643, inlinedAt: !800)
!808 = !DILocation(line: 101, column: 16, scope: !653, inlinedAt: !809)
!809 = distinct !DILocation(line: 192, column: 20, scope: !641, inlinedAt: !800)
!810 = !DILocation(line: 188, column: 9, scope: !642, inlinedAt: !800)
!811 = !DILocation(line: 188, column: 5, scope: !642, inlinedAt: !800)
!812 = !DILocation(line: 0, scope: !641, inlinedAt: !800)
!813 = !DILocation(line: 190, column: 9, scope: !641, inlinedAt: !800)
!814 = !DILocation(line: 100, column: 32, scope: !653, inlinedAt: !809)
!815 = !DILocation(line: 100, column: 40, scope: !653, inlinedAt: !809)
!816 = !DILocation(line: 101, column: 7, scope: !653, inlinedAt: !809)
!817 = !DILocation(line: 102, column: 14, scope: !667, inlinedAt: !809)
!818 = !DILocation(line: 105, column: 15, scope: !667, inlinedAt: !809)
!819 = !DILocation(line: 105, column: 18, scope: !667, inlinedAt: !809)
!820 = !DILocation(line: 102, column: 7, scope: !653, inlinedAt: !809)
!821 = !DILocation(line: 191, column: 9, scope: !641, inlinedAt: !800)
!822 = !DILocation(line: 192, column: 39, scope: !641, inlinedAt: !800)
!823 = !DILocation(line: 192, column: 5, scope: !641, inlinedAt: !800)
!824 = !DILocation(line: 80, column: 33, scope: !678, inlinedAt: !825)
!825 = distinct !DILocation(line: 194, column: 5, scope: !641, inlinedAt: !800)
!826 = !DILocation(line: 80, column: 41, scope: !678, inlinedAt: !825)
!827 = !DILocation(line: 80, column: 49, scope: !678, inlinedAt: !825)
!828 = !DILocation(line: 81, column: 16, scope: !678, inlinedAt: !825)
!829 = !DILocation(line: 82, column: 20, scope: !678, inlinedAt: !825)
!830 = !DILocation(line: 82, column: 7, scope: !678, inlinedAt: !825)
!831 = !DILocation(line: 84, column: 7, scope: !692, inlinedAt: !825)
!832 = !DILocation(line: 84, column: 19, scope: !692, inlinedAt: !825)
!833 = !DILocation(line: 84, column: 7, scope: !678, inlinedAt: !825)
!834 = !DILocation(line: 85, column: 26, scope: !692, inlinedAt: !825)
!835 = !DILocation(line: 85, column: 5, scope: !692, inlinedAt: !825)
!836 = !DILocation(line: 86, column: 3, scope: !678, inlinedAt: !825)
!837 = !DILocation(line: 174, column: 5, scope: !838)
!838 = distinct !DILexicalBlock(scope: !782, file: !1, line: 172, column: 8)
!839 = !DILocation(line: 176, column: 1, scope: !773)
!840 = !DILocation(line: 179, column: 35, scope: !786)
!841 = !DILocation(line: 179, column: 43, scope: !786)
!842 = !DILocation(line: 94, column: 31, scope: !765, inlinedAt: !843)
!843 = distinct !DILocation(line: 180, column: 3, scope: !786)
!844 = !DILocation(line: 95, column: 24, scope: !765, inlinedAt: !843)
!845 = !DILocation(line: 95, column: 7, scope: !765, inlinedAt: !843)
!846 = !DILocation(line: 95, column: 18, scope: !765, inlinedAt: !843)
!847 = !DILocation(line: 181, column: 24, scope: !786)
!848 = !DILocation(line: 185, column: 30, scope: !634, inlinedAt: !849)
!849 = distinct !DILocation(line: 181, column: 3, scope: !786)
!850 = !DILocation(line: 185, column: 39, scope: !634, inlinedAt: !849)
!851 = !DILocation(line: 185, column: 47, scope: !634, inlinedAt: !849)
!852 = !DILocation(line: 186, column: 10, scope: !643, inlinedAt: !849)
!853 = !DILocation(line: 186, column: 7, scope: !634, inlinedAt: !849)
!854 = !DILocation(line: 187, column: 12, scope: !642, inlinedAt: !849)
!855 = !DILocation(line: 187, column: 16, scope: !642, inlinedAt: !849)
!856 = !DILocation(line: 187, column: 12, scope: !643, inlinedAt: !849)
!857 = !DILocation(line: 101, column: 16, scope: !653, inlinedAt: !858)
!858 = distinct !DILocation(line: 192, column: 20, scope: !641, inlinedAt: !849)
!859 = !DILocation(line: 188, column: 9, scope: !642, inlinedAt: !849)
!860 = !DILocation(line: 188, column: 5, scope: !642, inlinedAt: !849)
!861 = !DILocation(line: 0, scope: !641, inlinedAt: !849)
!862 = !DILocation(line: 190, column: 9, scope: !641, inlinedAt: !849)
!863 = !DILocation(line: 100, column: 32, scope: !653, inlinedAt: !858)
!864 = !DILocation(line: 100, column: 40, scope: !653, inlinedAt: !858)
!865 = !DILocation(line: 101, column: 7, scope: !653, inlinedAt: !858)
!866 = !DILocation(line: 102, column: 14, scope: !667, inlinedAt: !858)
!867 = !DILocation(line: 105, column: 15, scope: !667, inlinedAt: !858)
!868 = !DILocation(line: 105, column: 18, scope: !667, inlinedAt: !858)
!869 = !DILocation(line: 102, column: 7, scope: !653, inlinedAt: !858)
!870 = !DILocation(line: 191, column: 9, scope: !641, inlinedAt: !849)
!871 = !DILocation(line: 192, column: 39, scope: !641, inlinedAt: !849)
!872 = !DILocation(line: 192, column: 5, scope: !641, inlinedAt: !849)
!873 = !DILocation(line: 80, column: 33, scope: !678, inlinedAt: !874)
!874 = distinct !DILocation(line: 194, column: 5, scope: !641, inlinedAt: !849)
!875 = !DILocation(line: 80, column: 41, scope: !678, inlinedAt: !874)
!876 = !DILocation(line: 80, column: 49, scope: !678, inlinedAt: !874)
!877 = !DILocation(line: 81, column: 16, scope: !678, inlinedAt: !874)
!878 = !DILocation(line: 82, column: 20, scope: !678, inlinedAt: !874)
!879 = !DILocation(line: 82, column: 7, scope: !678, inlinedAt: !874)
!880 = !DILocation(line: 84, column: 7, scope: !692, inlinedAt: !874)
!881 = !DILocation(line: 84, column: 19, scope: !692, inlinedAt: !874)
!882 = !DILocation(line: 84, column: 7, scope: !678, inlinedAt: !874)
!883 = !DILocation(line: 85, column: 26, scope: !692, inlinedAt: !874)
!884 = !DILocation(line: 85, column: 5, scope: !692, inlinedAt: !874)
!885 = !DILocation(line: 86, column: 3, scope: !678, inlinedAt: !874)
!886 = !DILocation(line: 182, column: 1, scope: !786)
!887 = distinct !DISubprogram(name: "patchlistaux", scope: !1, file: !1, line: 150, type: !888, isLocal: true, isDefinition: true, scopeLine: 151, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !890)
!888 = !DISubroutineType(types: !889)
!889 = !{null, !427, !93, !93, !93, !93}
!890 = !{!891, !892, !893, !894, !895, !896}
!891 = !DILocalVariable(name: "fs", arg: 1, scope: !887, file: !1, line: 150, type: !427)
!892 = !DILocalVariable(name: "list", arg: 2, scope: !887, file: !1, line: 150, type: !93)
!893 = !DILocalVariable(name: "vtarget", arg: 3, scope: !887, file: !1, line: 150, type: !93)
!894 = !DILocalVariable(name: "reg", arg: 4, scope: !887, file: !1, line: 150, type: !93)
!895 = !DILocalVariable(name: "dtarget", arg: 5, scope: !887, file: !1, line: 151, type: !93)
!896 = !DILocalVariable(name: "next", scope: !897, file: !1, line: 153, type: !93)
!897 = distinct !DILexicalBlock(scope: !887, file: !1, line: 152, column: 27)
!898 = !DILocation(line: 150, column: 38, scope: !887)
!899 = !DILocation(line: 150, column: 46, scope: !887)
!900 = !DILocation(line: 150, column: 56, scope: !887)
!901 = !DILocation(line: 150, column: 69, scope: !887)
!902 = !DILocation(line: 151, column: 31, scope: !887)
!903 = !DILocation(line: 152, column: 15, scope: !887)
!904 = !DILocation(line: 152, column: 3, scope: !887)
!905 = !DILocation(line: 100, column: 32, scope: !653, inlinedAt: !906)
!906 = distinct !DILocation(line: 153, column: 16, scope: !897)
!907 = !DILocation(line: 100, column: 40, scope: !653, inlinedAt: !906)
!908 = !DILocation(line: 101, column: 16, scope: !653, inlinedAt: !906)
!909 = !DILocation(line: 101, column: 7, scope: !653, inlinedAt: !906)
!910 = !DILocation(line: 102, column: 14, scope: !667, inlinedAt: !906)
!911 = !DILocation(line: 105, column: 15, scope: !667, inlinedAt: !906)
!912 = !DILocation(line: 105, column: 18, scope: !667, inlinedAt: !906)
!913 = !DILocation(line: 102, column: 7, scope: !653, inlinedAt: !906)
!914 = !DILocation(line: 153, column: 9, scope: !897)
!915 = !DILocation(line: 154, column: 9, scope: !916)
!916 = distinct !DILexicalBlock(scope: !897, file: !1, line: 154, column: 9)
!917 = !DILocation(line: 154, column: 9, scope: !897)
!918 = !DILocation(line: 155, column: 7, scope: !916)
!919 = !DILocation(line: 80, column: 33, scope: !678, inlinedAt: !920)
!920 = distinct !DILocation(line: 157, column: 7, scope: !916)
!921 = !DILocation(line: 80, column: 41, scope: !678, inlinedAt: !920)
!922 = !DILocation(line: 80, column: 49, scope: !678, inlinedAt: !920)
!923 = !DILocation(line: 81, column: 27, scope: !678, inlinedAt: !920)
!924 = !DILocation(line: 81, column: 30, scope: !678, inlinedAt: !920)
!925 = !DILocation(line: 81, column: 23, scope: !678, inlinedAt: !920)
!926 = !DILocation(line: 81, column: 16, scope: !678, inlinedAt: !920)
!927 = !DILocation(line: 82, column: 20, scope: !678, inlinedAt: !920)
!928 = !DILocation(line: 82, column: 7, scope: !678, inlinedAt: !920)
!929 = !DILocation(line: 84, column: 7, scope: !692, inlinedAt: !920)
!930 = !DILocation(line: 84, column: 19, scope: !692, inlinedAt: !920)
!931 = !DILocation(line: 84, column: 7, scope: !678, inlinedAt: !920)
!932 = !DILocation(line: 85, column: 26, scope: !692, inlinedAt: !920)
!933 = !DILocation(line: 85, column: 5, scope: !692, inlinedAt: !920)
!934 = !DILocation(line: 86, column: 3, scope: !678, inlinedAt: !920)
!935 = distinct !{!935, !904, !936}
!936 = !DILocation(line: 159, column: 3, scope: !887)
!937 = !DILocation(line: 160, column: 1, scope: !887)
!938 = !DILocation(line: 80, column: 33, scope: !678)
!939 = !DILocation(line: 80, column: 41, scope: !678)
!940 = !DILocation(line: 80, column: 49, scope: !678)
!941 = !DILocation(line: 81, column: 27, scope: !678)
!942 = !DILocation(line: 81, column: 30, scope: !678)
!943 = !DILocation(line: 81, column: 23, scope: !678)
!944 = !DILocation(line: 81, column: 16, scope: !678)
!945 = !DILocation(line: 82, column: 20, scope: !678)
!946 = !DILocation(line: 82, column: 7, scope: !678)
!947 = !DILocation(line: 84, column: 7, scope: !692)
!948 = !DILocation(line: 84, column: 19, scope: !692)
!949 = !DILocation(line: 84, column: 7, scope: !678)
!950 = !DILocation(line: 85, column: 26, scope: !692)
!951 = !DILocation(line: 85, column: 5, scope: !692)
!952 = !DILocation(line: 86, column: 3, scope: !678)
!953 = !DILocation(line: 87, column: 1, scope: !678)
!954 = distinct !DISubprogram(name: "luaK_checkstack", scope: !1, file: !1, line: 199, type: !787, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !955)
!955 = !{!956, !957, !958}
!956 = !DILocalVariable(name: "fs", arg: 1, scope: !954, file: !1, line: 199, type: !427)
!957 = !DILocalVariable(name: "n", arg: 2, scope: !954, file: !1, line: 199, type: !93)
!958 = !DILocalVariable(name: "newstack", scope: !954, file: !1, line: 200, type: !93)
!959 = !DILocation(line: 199, column: 34, scope: !954)
!960 = !DILocation(line: 199, column: 42, scope: !954)
!961 = !DILocation(line: 200, column: 22, scope: !954)
!962 = !{!522, !526, i64 60}
!963 = !DILocation(line: 200, column: 30, scope: !954)
!964 = !DILocation(line: 200, column: 7, scope: !954)
!965 = !DILocation(line: 201, column: 22, scope: !966)
!966 = distinct !DILexicalBlock(scope: !954, file: !1, line: 201, column: 7)
!967 = !DILocation(line: 201, column: 25, scope: !966)
!968 = !{!545, !524, i64 115}
!969 = !DILocation(line: 201, column: 18, scope: !966)
!970 = !DILocation(line: 201, column: 16, scope: !966)
!971 = !DILocation(line: 201, column: 7, scope: !954)
!972 = !DILocation(line: 202, column: 18, scope: !973)
!973 = distinct !DILexicalBlock(scope: !974, file: !1, line: 202, column: 9)
!974 = distinct !DILexicalBlock(scope: !966, file: !1, line: 201, column: 39)
!975 = !DILocation(line: 202, column: 9, scope: !974)
!976 = !DILocation(line: 203, column: 28, scope: !973)
!977 = !DILocation(line: 203, column: 7, scope: !973)
!978 = !DILocation(line: 204, column: 9, scope: !974)
!979 = !DILocation(line: 204, column: 12, scope: !974)
!980 = !DILocation(line: 204, column: 27, scope: !974)
!981 = !DILocation(line: 204, column: 25, scope: !974)
!982 = !DILocation(line: 205, column: 3, scope: !974)
!983 = !DILocation(line: 206, column: 1, scope: !954)
!984 = distinct !DISubprogram(name: "luaK_reserveregs", scope: !1, file: !1, line: 209, type: !787, isLocal: false, isDefinition: true, scopeLine: 209, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !985)
!985 = !{!986, !987}
!986 = !DILocalVariable(name: "fs", arg: 1, scope: !984, file: !1, line: 209, type: !427)
!987 = !DILocalVariable(name: "n", arg: 2, scope: !984, file: !1, line: 209, type: !93)
!988 = !DILocation(line: 209, column: 35, scope: !984)
!989 = !DILocation(line: 209, column: 43, scope: !984)
!990 = !DILocation(line: 199, column: 34, scope: !954, inlinedAt: !991)
!991 = distinct !DILocation(line: 210, column: 3, scope: !984)
!992 = !DILocation(line: 199, column: 42, scope: !954, inlinedAt: !991)
!993 = !DILocation(line: 200, column: 22, scope: !954, inlinedAt: !991)
!994 = !DILocation(line: 200, column: 30, scope: !954, inlinedAt: !991)
!995 = !DILocation(line: 200, column: 7, scope: !954, inlinedAt: !991)
!996 = !DILocation(line: 201, column: 22, scope: !966, inlinedAt: !991)
!997 = !DILocation(line: 201, column: 25, scope: !966, inlinedAt: !991)
!998 = !DILocation(line: 201, column: 18, scope: !966, inlinedAt: !991)
!999 = !DILocation(line: 201, column: 16, scope: !966, inlinedAt: !991)
!1000 = !DILocation(line: 201, column: 7, scope: !954, inlinedAt: !991)
!1001 = !DILocation(line: 202, column: 18, scope: !973, inlinedAt: !991)
!1002 = !DILocation(line: 202, column: 9, scope: !974, inlinedAt: !991)
!1003 = !DILocation(line: 203, column: 28, scope: !973, inlinedAt: !991)
!1004 = !DILocation(line: 203, column: 7, scope: !973, inlinedAt: !991)
!1005 = !DILocation(line: 204, column: 9, scope: !974, inlinedAt: !991)
!1006 = !DILocation(line: 204, column: 12, scope: !974, inlinedAt: !991)
!1007 = !DILocation(line: 211, column: 15, scope: !984)
!1008 = !DILocation(line: 204, column: 27, scope: !974, inlinedAt: !991)
!1009 = !DILocation(line: 204, column: 25, scope: !974, inlinedAt: !991)
!1010 = !DILocation(line: 205, column: 3, scope: !974, inlinedAt: !991)
!1011 = !DILocation(line: 212, column: 1, scope: !984)
!1012 = distinct !DISubprogram(name: "luaK_stringK", scope: !1, file: !1, line: 250, type: !1013, isLocal: false, isDefinition: true, scopeLine: 250, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1015)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{!93, !427, !296}
!1015 = !{!1016, !1017, !1018, !1019}
!1016 = !DILocalVariable(name: "fs", arg: 1, scope: !1012, file: !1, line: 250, type: !427)
!1017 = !DILocalVariable(name: "s", arg: 2, scope: !1012, file: !1, line: 250, type: !296)
!1018 = !DILocalVariable(name: "o", scope: !1012, file: !1, line: 251, type: !156)
!1019 = !DILocalVariable(name: "i_o", scope: !1020, file: !1, line: 252, type: !155)
!1020 = distinct !DILexicalBlock(scope: !1012, file: !1, line: 252, column: 3)
!1021 = !DILocation(line: 250, column: 30, scope: !1012)
!1022 = !DILocation(line: 250, column: 43, scope: !1012)
!1023 = !DILocation(line: 251, column: 3, scope: !1012)
!1024 = !DILocation(line: 252, column: 3, scope: !1020)
!1025 = !{!524, !524, i64 0}
!1026 = !{!1027, !526, i64 8}
!1027 = !{!"lua_TValue", !524, i64 0, !526, i64 8}
!1028 = !DILocation(line: 251, column: 10, scope: !1012)
!1029 = !DILocation(line: 253, column: 10, scope: !1012)
!1030 = !DILocation(line: 254, column: 1, scope: !1012)
!1031 = !DILocation(line: 253, column: 3, scope: !1012)
!1032 = distinct !DISubprogram(name: "addk", scope: !1, file: !1, line: 229, type: !1033, isLocal: true, isDefinition: true, scopeLine: 229, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1035)
!1033 = !DISubroutineType(types: !1034)
!1034 = !{!93, !427, !155, !155}
!1035 = !{!1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1047, !1051}
!1036 = !DILocalVariable(name: "fs", arg: 1, scope: !1032, file: !1, line: 229, type: !427)
!1037 = !DILocalVariable(name: "k", arg: 2, scope: !1032, file: !1, line: 229, type: !155)
!1038 = !DILocalVariable(name: "v", arg: 3, scope: !1032, file: !1, line: 229, type: !155)
!1039 = !DILocalVariable(name: "L", scope: !1032, file: !1, line: 230, type: !212)
!1040 = !DILocalVariable(name: "idx", scope: !1032, file: !1, line: 231, type: !155)
!1041 = !DILocalVariable(name: "f", scope: !1032, file: !1, line: 232, type: !432)
!1042 = !DILocalVariable(name: "oldsize", scope: !1032, file: !1, line: 233, type: !93)
!1043 = !DILocalVariable(name: "i_o", scope: !1044, file: !1, line: 239, type: !155)
!1044 = distinct !DILexicalBlock(scope: !1045, file: !1, line: 239, column: 5)
!1045 = distinct !DILexicalBlock(scope: !1046, file: !1, line: 238, column: 8)
!1046 = distinct !DILexicalBlock(scope: !1032, file: !1, line: 234, column: 7)
!1047 = !DILocalVariable(name: "o2", scope: !1048, file: !1, line: 243, type: !1049)
!1048 = distinct !DILexicalBlock(scope: !1045, file: !1, line: 243, column: 5)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !156)
!1051 = !DILocalVariable(name: "o1", scope: !1048, file: !1, line: 243, type: !155)
!1052 = !DILocation(line: 229, column: 29, scope: !1032)
!1053 = !DILocation(line: 229, column: 41, scope: !1032)
!1054 = !DILocation(line: 229, column: 52, scope: !1032)
!1055 = !DILocation(line: 230, column: 22, scope: !1032)
!1056 = !{!522, !523, i64 32}
!1057 = !DILocation(line: 230, column: 14, scope: !1032)
!1058 = !DILocation(line: 231, column: 33, scope: !1032)
!1059 = !{!522, !523, i64 8}
!1060 = !DILocation(line: 231, column: 17, scope: !1032)
!1061 = !DILocation(line: 231, column: 11, scope: !1032)
!1062 = !DILocation(line: 232, column: 18, scope: !1032)
!1063 = !DILocation(line: 232, column: 10, scope: !1032)
!1064 = !DILocation(line: 233, column: 20, scope: !1032)
!1065 = !{!545, !526, i64 76}
!1066 = !DILocation(line: 233, column: 7, scope: !1032)
!1067 = !DILocation(line: 234, column: 7, scope: !1046)
!1068 = !DILocation(line: 234, column: 7, scope: !1032)
!1069 = !DILocation(line: 236, column: 12, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1046, file: !1, line: 234, column: 24)
!1071 = !DILocation(line: 236, column: 5, scope: !1070)
!1072 = !DILocation(line: 239, column: 5, scope: !1044)
!1073 = !{!522, !526, i64 64}
!1074 = !DILocation(line: 240, column: 5, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1045, file: !1, line: 240, column: 5)
!1076 = !DILocation(line: 240, column: 5, scope: !1045)
!1077 = !DILocation(line: 0, scope: !1048)
!1078 = !{!545, !523, i64 16}
!1079 = !DILocation(line: 242, column: 25, scope: !1045)
!1080 = !DILocation(line: 242, column: 20, scope: !1045)
!1081 = !DILocation(line: 242, column: 5, scope: !1045)
!1082 = !DILocation(line: 242, column: 32, scope: !1045)
!1083 = distinct !{!1083, !1084}
!1084 = !{!"llvm.loop.unroll.disable"}
!1085 = distinct !{!1085, !1081, !1082}
!1086 = !DILocation(line: 243, column: 5, scope: !1048)
!1087 = !DILocation(line: 244, column: 5, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1089, file: !1, line: 244, column: 5)
!1089 = distinct !DILexicalBlock(scope: !1045, file: !1, line: 244, column: 5)
!1090 = !DILocation(line: 244, column: 5, scope: !1089)
!1091 = !DILocation(line: 245, column: 18, scope: !1045)
!1092 = !DILocation(line: 245, column: 5, scope: !1045)
!1093 = !DILocation(line: 0, scope: !1045)
!1094 = !DILocation(line: 247, column: 1, scope: !1032)
!1095 = distinct !DISubprogram(name: "luaK_numberK", scope: !1, file: !1, line: 257, type: !1096, isLocal: false, isDefinition: true, scopeLine: 257, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1098)
!1096 = !DISubroutineType(types: !1097)
!1097 = !{!93, !427, !166}
!1098 = !{!1099, !1100, !1101, !1102}
!1099 = !DILocalVariable(name: "fs", arg: 1, scope: !1095, file: !1, line: 257, type: !427)
!1100 = !DILocalVariable(name: "r", arg: 2, scope: !1095, file: !1, line: 257, type: !166)
!1101 = !DILocalVariable(name: "o", scope: !1095, file: !1, line: 258, type: !156)
!1102 = !DILocalVariable(name: "i_o", scope: !1103, file: !1, line: 259, type: !155)
!1103 = distinct !DILexicalBlock(scope: !1095, file: !1, line: 259, column: 3)
!1104 = !DILocation(line: 257, column: 30, scope: !1095)
!1105 = !DILocation(line: 257, column: 45, scope: !1095)
!1106 = !DILocation(line: 258, column: 3, scope: !1095)
!1107 = !DILocation(line: 259, column: 3, scope: !1103)
!1108 = !DILocation(line: 258, column: 10, scope: !1095)
!1109 = !DILocation(line: 260, column: 10, scope: !1095)
!1110 = !DILocation(line: 261, column: 1, scope: !1095)
!1111 = !DILocation(line: 260, column: 3, scope: !1095)
!1112 = distinct !DISubprogram(name: "luaK_setreturns", scope: !1, file: !1, line: 280, type: !1113, isLocal: false, isDefinition: true, scopeLine: 280, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1132)
!1113 = !DISubroutineType(types: !1114)
!1114 = !{null, !427, !1115, !93}
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_typedef, name: "expdesc", file: !46, line: 45, baseType: !1117)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "expdesc", file: !46, line: 37, size: 192, elements: !1118)
!1118 = !{!1119, !1121, !1130, !1131}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !1117, file: !46, line: 38, baseType: !1120, size: 32)
!1120 = !DIDerivedType(tag: DW_TAG_typedef, name: "expkind", file: !46, line: 35, baseType: !45)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !1117, file: !46, line: 42, baseType: !1122, size: 64, offset: 64)
!1122 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1117, file: !46, line: 39, size: 64, elements: !1123)
!1123 = !{!1124, !1129}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1122, file: !46, line: 40, baseType: !1125, size: 64)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1122, file: !46, line: 40, size: 64, elements: !1126)
!1126 = !{!1127, !1128}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1125, file: !46, line: 40, baseType: !93, size: 32)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1125, file: !46, line: 40, baseType: !93, size: 32, offset: 32)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "nval", scope: !1122, file: !46, line: 41, baseType: !166, size: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "t", scope: !1117, file: !46, line: 43, baseType: !93, size: 32, offset: 128)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1117, file: !46, line: 44, baseType: !93, size: 32, offset: 160)
!1132 = !{!1133, !1134, !1135}
!1133 = !DILocalVariable(name: "fs", arg: 1, scope: !1112, file: !1, line: 280, type: !427)
!1134 = !DILocalVariable(name: "e", arg: 2, scope: !1112, file: !1, line: 280, type: !1115)
!1135 = !DILocalVariable(name: "nresults", arg: 3, scope: !1112, file: !1, line: 280, type: !93)
!1136 = !DILocation(line: 280, column: 34, scope: !1112)
!1137 = !DILocation(line: 280, column: 47, scope: !1112)
!1138 = !DILocation(line: 280, column: 54, scope: !1112)
!1139 = !DILocation(line: 281, column: 10, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1112, file: !1, line: 281, column: 7)
!1141 = !{!1142, !524, i64 0}
!1142 = !{!"expdesc", !524, i64 0, !524, i64 8, !526, i64 16, !526, i64 20}
!1143 = !DILocation(line: 281, column: 7, scope: !1112)
!1144 = !DILocation(line: 282, column: 5, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1140, file: !1, line: 281, column: 22)
!1146 = !DILocation(line: 283, column: 3, scope: !1145)
!1147 = !DILocation(line: 285, column: 5, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1149, file: !1, line: 284, column: 29)
!1149 = distinct !DILexicalBlock(scope: !1140, file: !1, line: 284, column: 12)
!1150 = !DILocation(line: 286, column: 5, scope: !1148)
!1151 = !DILocation(line: 209, column: 35, scope: !984, inlinedAt: !1152)
!1152 = distinct !DILocation(line: 287, column: 5, scope: !1148)
!1153 = !DILocation(line: 209, column: 43, scope: !984, inlinedAt: !1152)
!1154 = !DILocation(line: 199, column: 34, scope: !954, inlinedAt: !1155)
!1155 = distinct !DILocation(line: 210, column: 3, scope: !984, inlinedAt: !1152)
!1156 = !DILocation(line: 199, column: 42, scope: !954, inlinedAt: !1155)
!1157 = !DILocation(line: 200, column: 22, scope: !954, inlinedAt: !1155)
!1158 = !DILocation(line: 200, column: 30, scope: !954, inlinedAt: !1155)
!1159 = !DILocation(line: 200, column: 7, scope: !954, inlinedAt: !1155)
!1160 = !DILocation(line: 201, column: 25, scope: !966, inlinedAt: !1155)
!1161 = !DILocation(line: 201, column: 18, scope: !966, inlinedAt: !1155)
!1162 = !DILocation(line: 201, column: 16, scope: !966, inlinedAt: !1155)
!1163 = !DILocation(line: 201, column: 7, scope: !954, inlinedAt: !1155)
!1164 = !DILocation(line: 202, column: 18, scope: !973, inlinedAt: !1155)
!1165 = !DILocation(line: 202, column: 9, scope: !974, inlinedAt: !1155)
!1166 = !DILocation(line: 203, column: 28, scope: !973, inlinedAt: !1155)
!1167 = !DILocation(line: 203, column: 7, scope: !973, inlinedAt: !1155)
!1168 = !DILocation(line: 204, column: 9, scope: !974, inlinedAt: !1155)
!1169 = !DILocation(line: 204, column: 12, scope: !974, inlinedAt: !1155)
!1170 = !DILocation(line: 211, column: 15, scope: !984, inlinedAt: !1152)
!1171 = !DILocation(line: 204, column: 27, scope: !974, inlinedAt: !1155)
!1172 = !DILocation(line: 204, column: 25, scope: !974, inlinedAt: !1155)
!1173 = !DILocation(line: 205, column: 3, scope: !974, inlinedAt: !1155)
!1174 = !DILocation(line: 288, column: 3, scope: !1148)
!1175 = !DILocation(line: 289, column: 1, scope: !1112)
!1176 = distinct !DISubprogram(name: "luaK_setoneret", scope: !1, file: !1, line: 292, type: !1177, isLocal: false, isDefinition: true, scopeLine: 292, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1179)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{null, !427, !1115}
!1179 = !{!1180, !1181}
!1180 = !DILocalVariable(name: "fs", arg: 1, scope: !1176, file: !1, line: 292, type: !427)
!1181 = !DILocalVariable(name: "e", arg: 2, scope: !1176, file: !1, line: 292, type: !1115)
!1182 = !DILocation(line: 292, column: 33, scope: !1176)
!1183 = !DILocation(line: 292, column: 46, scope: !1176)
!1184 = !DILocation(line: 293, column: 10, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1176, file: !1, line: 293, column: 7)
!1186 = !DILocation(line: 293, column: 7, scope: !1176)
!1187 = !DILocation(line: 294, column: 10, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1185, file: !1, line: 293, column: 22)
!1189 = !DILocation(line: 295, column: 19, scope: !1188)
!1190 = !DILocation(line: 295, column: 17, scope: !1188)
!1191 = !DILocation(line: 296, column: 3, scope: !1188)
!1192 = !DILocation(line: 298, column: 5, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1194, file: !1, line: 297, column: 29)
!1194 = distinct !DILexicalBlock(scope: !1185, file: !1, line: 297, column: 12)
!1195 = !DILocation(line: 299, column: 10, scope: !1193)
!1196 = !DILocation(line: 300, column: 3, scope: !1193)
!1197 = !DILocation(line: 301, column: 1, scope: !1176)
!1198 = distinct !DISubprogram(name: "luaK_dischargevars", scope: !1, file: !1, line: 304, type: !1177, isLocal: false, isDefinition: true, scopeLine: 304, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1199)
!1199 = !{!1200, !1201}
!1200 = !DILocalVariable(name: "fs", arg: 1, scope: !1198, file: !1, line: 304, type: !427)
!1201 = !DILocalVariable(name: "e", arg: 2, scope: !1198, file: !1, line: 304, type: !1115)
!1202 = !DILocation(line: 304, column: 37, scope: !1198)
!1203 = !DILocation(line: 304, column: 50, scope: !1198)
!1204 = !DILocation(line: 305, column: 14, scope: !1198)
!1205 = !DILocation(line: 305, column: 3, scope: !1198)
!1206 = !DILocation(line: 307, column: 12, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1208, file: !1, line: 306, column: 18)
!1208 = distinct !DILexicalBlock(scope: !1198, file: !1, line: 305, column: 17)
!1209 = !DILocation(line: 308, column: 7, scope: !1207)
!1210 = !DILocation(line: 311, column: 57, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1208, file: !1, line: 310, column: 18)
!1212 = !DILocation(line: 311, column: 61, scope: !1211)
!1213 = !DILocation(line: 804, column: 30, scope: !571, inlinedAt: !1214)
!1214 = distinct !DILocation(line: 311, column: 21, scope: !1211)
!1215 = !DILocation(line: 804, column: 41, scope: !571, inlinedAt: !1214)
!1216 = !DILocation(line: 804, column: 48, scope: !571, inlinedAt: !1214)
!1217 = !DILocation(line: 804, column: 55, scope: !571, inlinedAt: !1214)
!1218 = !DILocation(line: 804, column: 62, scope: !571, inlinedAt: !1214)
!1219 = !DILocation(line: 808, column: 24, scope: !571, inlinedAt: !1214)
!1220 = !DILocation(line: 808, column: 52, scope: !571, inlinedAt: !1214)
!1221 = !DILocation(line: 808, column: 56, scope: !571, inlinedAt: !1214)
!1222 = !DILocation(line: 808, column: 10, scope: !571, inlinedAt: !1214)
!1223 = !DILocation(line: 311, column: 19, scope: !1211)
!1224 = !DILocation(line: 312, column: 12, scope: !1211)
!1225 = !DILocation(line: 313, column: 7, scope: !1211)
!1226 = !DILocation(line: 316, column: 58, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1208, file: !1, line: 315, column: 19)
!1228 = !DILocation(line: 316, column: 62, scope: !1227)
!1229 = !DILocation(line: 812, column: 30, scope: !617, inlinedAt: !1230)
!1230 = distinct !DILocation(line: 316, column: 21, scope: !1227)
!1231 = !DILocation(line: 812, column: 41, scope: !617, inlinedAt: !1230)
!1232 = !DILocation(line: 812, column: 48, scope: !617, inlinedAt: !1230)
!1233 = !DILocation(line: 812, column: 64, scope: !617, inlinedAt: !1230)
!1234 = !DILocation(line: 815, column: 24, scope: !617, inlinedAt: !1230)
!1235 = !DILocation(line: 815, column: 50, scope: !617, inlinedAt: !1230)
!1236 = !DILocation(line: 815, column: 54, scope: !617, inlinedAt: !1230)
!1237 = !DILocation(line: 815, column: 10, scope: !617, inlinedAt: !1230)
!1238 = !DILocation(line: 316, column: 19, scope: !1227)
!1239 = !DILocation(line: 317, column: 12, scope: !1227)
!1240 = !DILocation(line: 318, column: 7, scope: !1227)
!1241 = !DILocation(line: 321, column: 22, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1208, file: !1, line: 320, column: 20)
!1243 = !DILocation(line: 321, column: 24, scope: !1242)
!1244 = !DILocation(line: 321, column: 26, scope: !1242)
!1245 = !DILocalVariable(name: "fs", arg: 1, scope: !1246, file: !1, line: 215, type: !427)
!1246 = distinct !DISubprogram(name: "freereg", scope: !1, file: !1, line: 215, type: !787, isLocal: true, isDefinition: true, scopeLine: 215, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1247)
!1247 = !{!1245, !1248}
!1248 = !DILocalVariable(name: "reg", arg: 2, scope: !1246, file: !1, line: 215, type: !93)
!1249 = !DILocation(line: 215, column: 33, scope: !1246, inlinedAt: !1250)
!1250 = distinct !DILocation(line: 321, column: 7, scope: !1242)
!1251 = !DILocation(line: 215, column: 41, scope: !1246, inlinedAt: !1250)
!1252 = !DILocation(line: 216, column: 8, scope: !1253, inlinedAt: !1250)
!1253 = distinct !DILexicalBlock(scope: !1246, file: !1, line: 216, column: 7)
!1254 = !DILocation(line: 216, column: 17, scope: !1253, inlinedAt: !1250)
!1255 = !DILocation(line: 216, column: 31, scope: !1253, inlinedAt: !1250)
!1256 = !DILocation(line: 216, column: 27, scope: !1253, inlinedAt: !1250)
!1257 = !DILocation(line: 216, column: 24, scope: !1253, inlinedAt: !1250)
!1258 = !DILocation(line: 216, column: 7, scope: !1246, inlinedAt: !1250)
!1259 = !DILocation(line: 217, column: 9, scope: !1260, inlinedAt: !1250)
!1260 = distinct !DILexicalBlock(scope: !1253, file: !1, line: 216, column: 40)
!1261 = !DILocation(line: 217, column: 16, scope: !1260, inlinedAt: !1250)
!1262 = !DILocation(line: 219, column: 3, scope: !1260, inlinedAt: !1250)
!1263 = !DILocation(line: 322, column: 26, scope: !1242)
!1264 = !DILocation(line: 215, column: 33, scope: !1246, inlinedAt: !1265)
!1265 = distinct !DILocation(line: 322, column: 7, scope: !1242)
!1266 = !DILocation(line: 215, column: 41, scope: !1246, inlinedAt: !1265)
!1267 = !DILocation(line: 216, column: 8, scope: !1253, inlinedAt: !1265)
!1268 = !DILocation(line: 216, column: 17, scope: !1253, inlinedAt: !1265)
!1269 = !DILocation(line: 216, column: 31, scope: !1253, inlinedAt: !1265)
!1270 = !DILocation(line: 216, column: 27, scope: !1253, inlinedAt: !1265)
!1271 = !DILocation(line: 216, column: 24, scope: !1253, inlinedAt: !1265)
!1272 = !DILocation(line: 216, column: 7, scope: !1246, inlinedAt: !1265)
!1273 = !DILocation(line: 217, column: 9, scope: !1260, inlinedAt: !1265)
!1274 = !DILocation(line: 217, column: 16, scope: !1260, inlinedAt: !1265)
!1275 = !DILocation(line: 323, column: 61, scope: !1242)
!1276 = !DILocation(line: 219, column: 3, scope: !1260, inlinedAt: !1265)
!1277 = !DILocation(line: 323, column: 74, scope: !1242)
!1278 = !DILocation(line: 804, column: 30, scope: !571, inlinedAt: !1279)
!1279 = distinct !DILocation(line: 323, column: 21, scope: !1242)
!1280 = !DILocation(line: 804, column: 41, scope: !571, inlinedAt: !1279)
!1281 = !DILocation(line: 804, column: 48, scope: !571, inlinedAt: !1279)
!1282 = !DILocation(line: 804, column: 55, scope: !571, inlinedAt: !1279)
!1283 = !DILocation(line: 804, column: 62, scope: !571, inlinedAt: !1279)
!1284 = !DILocation(line: 808, column: 24, scope: !571, inlinedAt: !1279)
!1285 = !DILocation(line: 808, column: 52, scope: !571, inlinedAt: !1279)
!1286 = !DILocation(line: 808, column: 56, scope: !571, inlinedAt: !1279)
!1287 = !DILocation(line: 808, column: 10, scope: !571, inlinedAt: !1279)
!1288 = !DILocation(line: 323, column: 19, scope: !1242)
!1289 = !DILocation(line: 324, column: 12, scope: !1242)
!1290 = !DILocation(line: 325, column: 7, scope: !1242)
!1291 = !DILocation(line: 294, column: 10, scope: !1188, inlinedAt: !1292)
!1292 = distinct !DILocation(line: 329, column: 7, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1208, file: !1, line: 328, column: 17)
!1294 = !DILocation(line: 295, column: 19, scope: !1188, inlinedAt: !1292)
!1295 = !DILocation(line: 295, column: 17, scope: !1188, inlinedAt: !1292)
!1296 = !DILocation(line: 296, column: 3, scope: !1188, inlinedAt: !1292)
!1297 = !DILocation(line: 298, column: 5, scope: !1193, inlinedAt: !1292)
!1298 = !DILocation(line: 299, column: 10, scope: !1193, inlinedAt: !1292)
!1299 = !DILocation(line: 300, column: 3, scope: !1193, inlinedAt: !1292)
!1300 = !DILocation(line: 334, column: 1, scope: !1198)
!1301 = distinct !DISubprogram(name: "luaK_exp2nextreg", scope: !1, file: !1, line: 414, type: !1177, isLocal: false, isDefinition: true, scopeLine: 414, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1302)
!1302 = !{!1303, !1304}
!1303 = !DILocalVariable(name: "fs", arg: 1, scope: !1301, file: !1, line: 414, type: !427)
!1304 = !DILocalVariable(name: "e", arg: 2, scope: !1301, file: !1, line: 414, type: !1115)
!1305 = !DILocation(line: 414, column: 35, scope: !1301)
!1306 = !DILocation(line: 414, column: 48, scope: !1301)
!1307 = !DILocation(line: 415, column: 3, scope: !1301)
!1308 = !DILocalVariable(name: "fs", arg: 1, scope: !1309, file: !1, line: 223, type: !427)
!1309 = distinct !DISubprogram(name: "freeexp", scope: !1, file: !1, line: 223, type: !1177, isLocal: true, isDefinition: true, scopeLine: 223, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1310)
!1310 = !{!1308, !1311}
!1311 = !DILocalVariable(name: "e", arg: 2, scope: !1309, file: !1, line: 223, type: !1115)
!1312 = !DILocation(line: 223, column: 33, scope: !1309, inlinedAt: !1313)
!1313 = distinct !DILocation(line: 416, column: 3, scope: !1301)
!1314 = !DILocation(line: 223, column: 46, scope: !1309, inlinedAt: !1313)
!1315 = !DILocation(line: 224, column: 10, scope: !1316, inlinedAt: !1313)
!1316 = distinct !DILexicalBlock(scope: !1309, file: !1, line: 224, column: 7)
!1317 = !DILocation(line: 224, column: 12, scope: !1316, inlinedAt: !1313)
!1318 = !DILocation(line: 224, column: 7, scope: !1309, inlinedAt: !1313)
!1319 = !DILocation(line: 225, column: 20, scope: !1316, inlinedAt: !1313)
!1320 = !DILocation(line: 225, column: 24, scope: !1316, inlinedAt: !1313)
!1321 = !DILocation(line: 215, column: 33, scope: !1246, inlinedAt: !1322)
!1322 = distinct !DILocation(line: 225, column: 5, scope: !1316, inlinedAt: !1313)
!1323 = !DILocation(line: 215, column: 41, scope: !1246, inlinedAt: !1322)
!1324 = !DILocation(line: 216, column: 8, scope: !1253, inlinedAt: !1322)
!1325 = !DILocation(line: 216, column: 17, scope: !1253, inlinedAt: !1322)
!1326 = !DILocation(line: 216, column: 31, scope: !1253, inlinedAt: !1322)
!1327 = !DILocation(line: 216, column: 27, scope: !1253, inlinedAt: !1322)
!1328 = !DILocation(line: 216, column: 24, scope: !1253, inlinedAt: !1322)
!1329 = !DILocation(line: 216, column: 7, scope: !1246, inlinedAt: !1322)
!1330 = !DILocation(line: 217, column: 9, scope: !1260, inlinedAt: !1322)
!1331 = !DILocation(line: 217, column: 16, scope: !1260, inlinedAt: !1322)
!1332 = !DILocation(line: 219, column: 3, scope: !1260, inlinedAt: !1322)
!1333 = !DILocation(line: 209, column: 35, scope: !984, inlinedAt: !1334)
!1334 = distinct !DILocation(line: 417, column: 3, scope: !1301)
!1335 = !DILocation(line: 209, column: 43, scope: !984, inlinedAt: !1334)
!1336 = !DILocation(line: 199, column: 34, scope: !954, inlinedAt: !1337)
!1337 = distinct !DILocation(line: 210, column: 3, scope: !984, inlinedAt: !1334)
!1338 = !DILocation(line: 199, column: 42, scope: !954, inlinedAt: !1337)
!1339 = !DILocation(line: 200, column: 22, scope: !954, inlinedAt: !1337)
!1340 = !DILocation(line: 200, column: 30, scope: !954, inlinedAt: !1337)
!1341 = !DILocation(line: 200, column: 7, scope: !954, inlinedAt: !1337)
!1342 = !DILocation(line: 201, column: 22, scope: !966, inlinedAt: !1337)
!1343 = !DILocation(line: 201, column: 25, scope: !966, inlinedAt: !1337)
!1344 = !DILocation(line: 201, column: 18, scope: !966, inlinedAt: !1337)
!1345 = !DILocation(line: 201, column: 16, scope: !966, inlinedAt: !1337)
!1346 = !DILocation(line: 201, column: 7, scope: !954, inlinedAt: !1337)
!1347 = !DILocation(line: 202, column: 18, scope: !973, inlinedAt: !1337)
!1348 = !DILocation(line: 202, column: 9, scope: !974, inlinedAt: !1337)
!1349 = !DILocation(line: 203, column: 28, scope: !973, inlinedAt: !1337)
!1350 = !DILocation(line: 203, column: 7, scope: !973, inlinedAt: !1337)
!1351 = !DILocation(line: 204, column: 9, scope: !974, inlinedAt: !1337)
!1352 = !DILocation(line: 204, column: 12, scope: !974, inlinedAt: !1337)
!1353 = !DILocation(line: 211, column: 15, scope: !984, inlinedAt: !1334)
!1354 = !DILocation(line: 204, column: 27, scope: !974, inlinedAt: !1337)
!1355 = !DILocation(line: 204, column: 25, scope: !974, inlinedAt: !1337)
!1356 = !DILocation(line: 205, column: 3, scope: !974, inlinedAt: !1337)
!1357 = !DILocation(line: 418, column: 30, scope: !1301)
!1358 = !DILocation(line: 418, column: 3, scope: !1301)
!1359 = !DILocation(line: 419, column: 1, scope: !1301)
!1360 = distinct !DISubprogram(name: "exp2reg", scope: !1, file: !1, line: 390, type: !1113, isLocal: true, isDefinition: true, scopeLine: 390, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1361)
!1361 = !{!1362, !1363, !1364, !1365, !1368, !1369, !1370}
!1362 = !DILocalVariable(name: "fs", arg: 1, scope: !1360, file: !1, line: 390, type: !427)
!1363 = !DILocalVariable(name: "e", arg: 2, scope: !1360, file: !1, line: 390, type: !1115)
!1364 = !DILocalVariable(name: "reg", arg: 3, scope: !1360, file: !1, line: 390, type: !93)
!1365 = !DILocalVariable(name: "final", scope: !1366, file: !1, line: 395, type: !93)
!1366 = distinct !DILexicalBlock(scope: !1367, file: !1, line: 394, column: 20)
!1367 = distinct !DILexicalBlock(scope: !1360, file: !1, line: 394, column: 7)
!1368 = !DILocalVariable(name: "p_f", scope: !1366, file: !1, line: 396, type: !93)
!1369 = !DILocalVariable(name: "p_t", scope: !1366, file: !1, line: 397, type: !93)
!1370 = !DILocalVariable(name: "fj", scope: !1371, file: !1, line: 399, type: !93)
!1371 = distinct !DILexicalBlock(scope: !1372, file: !1, line: 398, column: 55)
!1372 = distinct !DILexicalBlock(scope: !1366, file: !1, line: 398, column: 9)
!1373 = !DILocation(line: 390, column: 33, scope: !1360)
!1374 = !DILocation(line: 390, column: 46, scope: !1360)
!1375 = !DILocation(line: 390, column: 53, scope: !1360)
!1376 = !DILocation(line: 391, column: 3, scope: !1360)
!1377 = !DILocation(line: 392, column: 10, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1360, file: !1, line: 392, column: 7)
!1379 = !DILocation(line: 392, column: 12, scope: !1378)
!1380 = !DILocation(line: 0, scope: !1367)
!1381 = !DILocation(line: 392, column: 7, scope: !1360)
!1382 = !DILocation(line: 393, column: 31, scope: !1378)
!1383 = !DILocation(line: 393, column: 35, scope: !1378)
!1384 = !DILocation(line: 185, column: 30, scope: !634, inlinedAt: !1385)
!1385 = distinct !DILocation(line: 393, column: 5, scope: !1378)
!1386 = !DILocation(line: 185, column: 39, scope: !634, inlinedAt: !1385)
!1387 = !DILocation(line: 185, column: 47, scope: !634, inlinedAt: !1385)
!1388 = !DILocation(line: 186, column: 10, scope: !643, inlinedAt: !1385)
!1389 = !DILocation(line: 186, column: 7, scope: !634, inlinedAt: !1385)
!1390 = !DILocation(line: 187, column: 12, scope: !642, inlinedAt: !1385)
!1391 = !DILocation(line: 187, column: 16, scope: !642, inlinedAt: !1385)
!1392 = !DILocation(line: 187, column: 12, scope: !643, inlinedAt: !1385)
!1393 = !DILocation(line: 101, column: 16, scope: !653, inlinedAt: !1394)
!1394 = distinct !DILocation(line: 192, column: 20, scope: !641, inlinedAt: !1385)
!1395 = !DILocation(line: 188, column: 9, scope: !642, inlinedAt: !1385)
!1396 = !DILocation(line: 188, column: 5, scope: !642, inlinedAt: !1385)
!1397 = !DILocation(line: 0, scope: !641, inlinedAt: !1385)
!1398 = !DILocation(line: 190, column: 9, scope: !641, inlinedAt: !1385)
!1399 = !DILocation(line: 100, column: 32, scope: !653, inlinedAt: !1394)
!1400 = !DILocation(line: 100, column: 40, scope: !653, inlinedAt: !1394)
!1401 = !DILocation(line: 101, column: 7, scope: !653, inlinedAt: !1394)
!1402 = !DILocation(line: 102, column: 14, scope: !667, inlinedAt: !1394)
!1403 = !DILocation(line: 105, column: 15, scope: !667, inlinedAt: !1394)
!1404 = !DILocation(line: 105, column: 18, scope: !667, inlinedAt: !1394)
!1405 = !DILocation(line: 102, column: 7, scope: !653, inlinedAt: !1394)
!1406 = !DILocation(line: 191, column: 9, scope: !641, inlinedAt: !1385)
!1407 = !DILocation(line: 192, column: 39, scope: !641, inlinedAt: !1385)
!1408 = !DILocation(line: 192, column: 5, scope: !641, inlinedAt: !1385)
!1409 = !DILocation(line: 80, column: 33, scope: !678, inlinedAt: !1410)
!1410 = distinct !DILocation(line: 194, column: 5, scope: !641, inlinedAt: !1385)
!1411 = !DILocation(line: 80, column: 41, scope: !678, inlinedAt: !1410)
!1412 = !DILocation(line: 80, column: 49, scope: !678, inlinedAt: !1410)
!1413 = !DILocation(line: 81, column: 16, scope: !678, inlinedAt: !1410)
!1414 = !DILocation(line: 82, column: 20, scope: !678, inlinedAt: !1410)
!1415 = !DILocation(line: 82, column: 7, scope: !678, inlinedAt: !1410)
!1416 = !DILocation(line: 84, column: 7, scope: !692, inlinedAt: !1410)
!1417 = !DILocation(line: 84, column: 19, scope: !692, inlinedAt: !1410)
!1418 = !DILocation(line: 84, column: 7, scope: !678, inlinedAt: !1410)
!1419 = !DILocation(line: 85, column: 26, scope: !692, inlinedAt: !1410)
!1420 = !DILocation(line: 85, column: 5, scope: !692, inlinedAt: !1410)
!1421 = !DILocation(line: 86, column: 3, scope: !678, inlinedAt: !1410)
!1422 = !DILocation(line: 394, column: 7, scope: !1367)
!1423 = !{!1142, !526, i64 16}
!1424 = !{!1142, !526, i64 20}
!1425 = !DILocation(line: 394, column: 7, scope: !1360)
!1426 = !DILocation(line: 396, column: 9, scope: !1366)
!1427 = !DILocation(line: 397, column: 9, scope: !1366)
!1428 = !DILocalVariable(name: "fs", arg: 1, scope: !1429, file: !1, line: 122, type: !427)
!1429 = distinct !DISubprogram(name: "need_value", scope: !1, file: !1, line: 122, type: !654, isLocal: true, isDefinition: true, scopeLine: 122, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1430)
!1430 = !{!1428, !1431, !1432}
!1431 = !DILocalVariable(name: "list", arg: 2, scope: !1429, file: !1, line: 122, type: !93)
!1432 = !DILocalVariable(name: "i", scope: !1433, file: !1, line: 124, type: !90)
!1433 = distinct !DILexicalBlock(scope: !1434, file: !1, line: 123, column: 53)
!1434 = distinct !DILexicalBlock(scope: !1435, file: !1, line: 123, column: 3)
!1435 = distinct !DILexicalBlock(scope: !1429, file: !1, line: 123, column: 3)
!1436 = !DILocation(line: 122, column: 35, scope: !1429, inlinedAt: !1437)
!1437 = distinct !DILocation(line: 398, column: 9, scope: !1372)
!1438 = !DILocation(line: 122, column: 43, scope: !1429, inlinedAt: !1437)
!1439 = !DILocation(line: 123, column: 15, scope: !1434, inlinedAt: !1437)
!1440 = !DILocation(line: 123, column: 3, scope: !1435, inlinedAt: !1437)
!1441 = !DILocalVariable(name: "fs", arg: 1, scope: !1442, file: !1, line: 109, type: !427)
!1442 = distinct !DISubprogram(name: "getjumpcontrol", scope: !1, file: !1, line: 109, type: !1443, isLocal: true, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1445)
!1443 = !DISubroutineType(types: !1444)
!1444 = !{!385, !427, !93}
!1445 = !{!1441, !1446, !1447}
!1446 = !DILocalVariable(name: "pc", arg: 2, scope: !1442, file: !1, line: 109, type: !93)
!1447 = !DILocalVariable(name: "pi", scope: !1442, file: !1, line: 110, type: !385)
!1448 = !DILocation(line: 109, column: 48, scope: !1442, inlinedAt: !1449)
!1449 = distinct !DILocation(line: 124, column: 22, scope: !1433, inlinedAt: !1437)
!1450 = !DILocation(line: 109, column: 56, scope: !1442, inlinedAt: !1449)
!1451 = !DILocation(line: 110, column: 22, scope: !1442, inlinedAt: !1449)
!1452 = !DILocation(line: 110, column: 16, scope: !1442, inlinedAt: !1449)
!1453 = !DILocation(line: 111, column: 10, scope: !1454, inlinedAt: !1449)
!1454 = distinct !DILexicalBlock(scope: !1442, file: !1, line: 111, column: 7)
!1455 = !DILocation(line: 111, column: 15, scope: !1454, inlinedAt: !1449)
!1456 = !DILocation(line: 111, column: 18, scope: !1454, inlinedAt: !1449)
!1457 = !DILocation(line: 111, column: 7, scope: !1442, inlinedAt: !1449)
!1458 = !DILocation(line: 124, column: 21, scope: !1433, inlinedAt: !1437)
!1459 = !DILocation(line: 114, column: 5, scope: !1454, inlinedAt: !1449)
!1460 = !DILocation(line: 124, column: 17, scope: !1433, inlinedAt: !1437)
!1461 = !DILocation(line: 125, column: 9, scope: !1462, inlinedAt: !1437)
!1462 = distinct !DILexicalBlock(scope: !1433, file: !1, line: 125, column: 9)
!1463 = !DILocation(line: 125, column: 23, scope: !1462, inlinedAt: !1437)
!1464 = !DILocation(line: 100, column: 32, scope: !653, inlinedAt: !1465)
!1465 = distinct !DILocation(line: 123, column: 34, scope: !1434, inlinedAt: !1437)
!1466 = !DILocation(line: 100, column: 40, scope: !653, inlinedAt: !1465)
!1467 = !DILocation(line: 101, column: 16, scope: !653, inlinedAt: !1465)
!1468 = !DILocation(line: 101, column: 7, scope: !653, inlinedAt: !1465)
!1469 = !DILocation(line: 102, column: 14, scope: !667, inlinedAt: !1465)
!1470 = !DILocation(line: 105, column: 15, scope: !667, inlinedAt: !1465)
!1471 = !DILocation(line: 105, column: 18, scope: !667, inlinedAt: !1465)
!1472 = !DILocation(line: 122, column: 35, scope: !1429, inlinedAt: !1473)
!1473 = distinct !DILocation(line: 398, column: 33, scope: !1372)
!1474 = !DILocation(line: 122, column: 43, scope: !1429, inlinedAt: !1473)
!1475 = !DILocation(line: 123, column: 15, scope: !1434, inlinedAt: !1473)
!1476 = !DILocation(line: 123, column: 3, scope: !1435, inlinedAt: !1473)
!1477 = !DILocation(line: 109, column: 48, scope: !1442, inlinedAt: !1478)
!1478 = distinct !DILocation(line: 124, column: 22, scope: !1433, inlinedAt: !1473)
!1479 = !DILocation(line: 109, column: 56, scope: !1442, inlinedAt: !1478)
!1480 = !DILocation(line: 110, column: 22, scope: !1442, inlinedAt: !1478)
!1481 = !DILocation(line: 110, column: 16, scope: !1442, inlinedAt: !1478)
!1482 = !DILocation(line: 111, column: 10, scope: !1454, inlinedAt: !1478)
!1483 = !DILocation(line: 111, column: 15, scope: !1454, inlinedAt: !1478)
!1484 = !DILocation(line: 111, column: 18, scope: !1454, inlinedAt: !1478)
!1485 = !DILocation(line: 111, column: 7, scope: !1442, inlinedAt: !1478)
!1486 = !DILocation(line: 124, column: 21, scope: !1433, inlinedAt: !1473)
!1487 = !DILocation(line: 114, column: 5, scope: !1454, inlinedAt: !1478)
!1488 = !DILocation(line: 124, column: 17, scope: !1433, inlinedAt: !1473)
!1489 = !DILocation(line: 125, column: 9, scope: !1462, inlinedAt: !1473)
!1490 = !DILocation(line: 125, column: 23, scope: !1462, inlinedAt: !1473)
!1491 = !DILocation(line: 100, column: 32, scope: !653, inlinedAt: !1492)
!1492 = distinct !DILocation(line: 123, column: 34, scope: !1434, inlinedAt: !1473)
!1493 = !DILocation(line: 100, column: 40, scope: !653, inlinedAt: !1492)
!1494 = !DILocation(line: 101, column: 16, scope: !653, inlinedAt: !1492)
!1495 = !DILocation(line: 101, column: 7, scope: !653, inlinedAt: !1492)
!1496 = !DILocation(line: 102, column: 14, scope: !667, inlinedAt: !1492)
!1497 = !DILocation(line: 105, column: 15, scope: !667, inlinedAt: !1492)
!1498 = !DILocation(line: 105, column: 18, scope: !667, inlinedAt: !1492)
!1499 = !DILocation(line: 399, column: 20, scope: !1371)
!1500 = !DILocation(line: 399, column: 22, scope: !1371)
!1501 = !DILocation(line: 399, column: 16, scope: !1371)
!1502 = !DILocation(line: 808, column: 52, scope: !571, inlinedAt: !1503)
!1503 = distinct !DILocation(line: 339, column: 10, scope: !1504, inlinedAt: !1512)
!1504 = distinct !DISubprogram(name: "code_label", scope: !1, file: !1, line: 337, type: !1505, isLocal: true, isDefinition: true, scopeLine: 337, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1507)
!1505 = !DISubroutineType(types: !1506)
!1506 = !{!93, !427, !93, !93, !93}
!1507 = !{!1508, !1509, !1510, !1511}
!1508 = !DILocalVariable(name: "fs", arg: 1, scope: !1504, file: !1, line: 337, type: !427)
!1509 = !DILocalVariable(name: "A", arg: 2, scope: !1504, file: !1, line: 337, type: !93)
!1510 = !DILocalVariable(name: "b", arg: 3, scope: !1504, file: !1, line: 337, type: !93)
!1511 = !DILocalVariable(name: "jump", arg: 4, scope: !1504, file: !1, line: 337, type: !93)
!1512 = distinct !DILocation(line: 400, column: 13, scope: !1371)
!1513 = !DILocation(line: 181, column: 24, scope: !786, inlinedAt: !1514)
!1514 = distinct !DILocation(line: 402, column: 7, scope: !1371)
!1515 = !DILocation(line: 59, column: 27, scope: !604, inlinedAt: !1516)
!1516 = distinct !DILocation(line: 399, column: 43, scope: !1371)
!1517 = !DILocation(line: 60, column: 17, scope: !604, inlinedAt: !1516)
!1518 = !DILocation(line: 60, column: 7, scope: !604, inlinedAt: !1516)
!1519 = !DILocation(line: 62, column: 11, scope: !604, inlinedAt: !1516)
!1520 = !DILocation(line: 812, column: 30, scope: !617, inlinedAt: !1521)
!1521 = distinct !DILocation(line: 63, column: 7, scope: !604, inlinedAt: !1516)
!1522 = !DILocation(line: 812, column: 41, scope: !617, inlinedAt: !1521)
!1523 = !DILocation(line: 812, column: 48, scope: !617, inlinedAt: !1521)
!1524 = !DILocation(line: 812, column: 64, scope: !617, inlinedAt: !1521)
!1525 = !DILocation(line: 815, column: 50, scope: !617, inlinedAt: !1521)
!1526 = !DILocation(line: 815, column: 54, scope: !617, inlinedAt: !1521)
!1527 = !DILocation(line: 815, column: 10, scope: !617, inlinedAt: !1521)
!1528 = !DILocation(line: 61, column: 7, scope: !604, inlinedAt: !1516)
!1529 = !DILocation(line: 185, column: 30, scope: !634, inlinedAt: !1530)
!1530 = distinct !DILocation(line: 64, column: 3, scope: !604, inlinedAt: !1516)
!1531 = !DILocation(line: 185, column: 47, scope: !634, inlinedAt: !1530)
!1532 = !DILocation(line: 186, column: 10, scope: !643, inlinedAt: !1530)
!1533 = !DILocation(line: 186, column: 7, scope: !634, inlinedAt: !1530)
!1534 = !DILocation(line: 187, column: 16, scope: !642, inlinedAt: !1530)
!1535 = !DILocation(line: 187, column: 12, scope: !643, inlinedAt: !1530)
!1536 = !DILocation(line: 101, column: 16, scope: !653, inlinedAt: !1537)
!1537 = distinct !DILocation(line: 192, column: 20, scope: !641, inlinedAt: !1530)
!1538 = !DILocation(line: 0, scope: !641, inlinedAt: !1530)
!1539 = !DILocation(line: 190, column: 9, scope: !641, inlinedAt: !1530)
!1540 = !DILocation(line: 100, column: 32, scope: !653, inlinedAt: !1537)
!1541 = !DILocation(line: 100, column: 40, scope: !653, inlinedAt: !1537)
!1542 = !DILocation(line: 101, column: 7, scope: !653, inlinedAt: !1537)
!1543 = !DILocation(line: 102, column: 14, scope: !667, inlinedAt: !1537)
!1544 = !DILocation(line: 105, column: 15, scope: !667, inlinedAt: !1537)
!1545 = !DILocation(line: 105, column: 18, scope: !667, inlinedAt: !1537)
!1546 = !DILocation(line: 102, column: 7, scope: !653, inlinedAt: !1537)
!1547 = !DILocation(line: 191, column: 9, scope: !641, inlinedAt: !1530)
!1548 = !DILocation(line: 192, column: 39, scope: !641, inlinedAt: !1530)
!1549 = !DILocation(line: 192, column: 5, scope: !641, inlinedAt: !1530)
!1550 = !DILocation(line: 80, column: 33, scope: !678, inlinedAt: !1551)
!1551 = distinct !DILocation(line: 194, column: 5, scope: !641, inlinedAt: !1530)
!1552 = !DILocation(line: 80, column: 41, scope: !678, inlinedAt: !1551)
!1553 = !DILocation(line: 80, column: 49, scope: !678, inlinedAt: !1551)
!1554 = !DILocation(line: 81, column: 16, scope: !678, inlinedAt: !1551)
!1555 = !DILocation(line: 82, column: 20, scope: !678, inlinedAt: !1551)
!1556 = !DILocation(line: 82, column: 7, scope: !678, inlinedAt: !1551)
!1557 = !DILocation(line: 84, column: 7, scope: !692, inlinedAt: !1551)
!1558 = !DILocation(line: 84, column: 19, scope: !692, inlinedAt: !1551)
!1559 = !DILocation(line: 84, column: 7, scope: !678, inlinedAt: !1551)
!1560 = !DILocation(line: 85, column: 26, scope: !692, inlinedAt: !1551)
!1561 = !DILocation(line: 85, column: 5, scope: !692, inlinedAt: !1551)
!1562 = !DILocation(line: 86, column: 3, scope: !678, inlinedAt: !1551)
!1563 = !DILocation(line: 399, column: 11, scope: !1371)
!1564 = !DILocation(line: 337, column: 35, scope: !1504, inlinedAt: !1512)
!1565 = !DILocation(line: 337, column: 43, scope: !1504, inlinedAt: !1512)
!1566 = !DILocation(line: 337, column: 50, scope: !1504, inlinedAt: !1512)
!1567 = !DILocation(line: 337, column: 57, scope: !1504, inlinedAt: !1512)
!1568 = !DILocation(line: 94, column: 31, scope: !765, inlinedAt: !1569)
!1569 = distinct !DILocation(line: 338, column: 3, scope: !1504, inlinedAt: !1512)
!1570 = !DILocation(line: 95, column: 24, scope: !765, inlinedAt: !1569)
!1571 = !DILocation(line: 95, column: 7, scope: !765, inlinedAt: !1569)
!1572 = !DILocation(line: 95, column: 18, scope: !765, inlinedAt: !1569)
!1573 = !DILocation(line: 804, column: 30, scope: !571, inlinedAt: !1503)
!1574 = !DILocation(line: 804, column: 41, scope: !571, inlinedAt: !1503)
!1575 = !DILocation(line: 804, column: 48, scope: !571, inlinedAt: !1503)
!1576 = !DILocation(line: 804, column: 55, scope: !571, inlinedAt: !1503)
!1577 = !DILocation(line: 804, column: 62, scope: !571, inlinedAt: !1503)
!1578 = !DILocation(line: 808, column: 24, scope: !571, inlinedAt: !1503)
!1579 = !DILocation(line: 808, column: 56, scope: !571, inlinedAt: !1503)
!1580 = !DILocation(line: 808, column: 10, scope: !571, inlinedAt: !1503)
!1581 = !DILocation(line: 337, column: 35, scope: !1504, inlinedAt: !1582)
!1582 = distinct !DILocation(line: 401, column: 13, scope: !1371)
!1583 = !DILocation(line: 337, column: 43, scope: !1504, inlinedAt: !1582)
!1584 = !DILocation(line: 337, column: 50, scope: !1504, inlinedAt: !1582)
!1585 = !DILocation(line: 337, column: 57, scope: !1504, inlinedAt: !1582)
!1586 = !DILocation(line: 94, column: 31, scope: !765, inlinedAt: !1587)
!1587 = distinct !DILocation(line: 338, column: 3, scope: !1504, inlinedAt: !1582)
!1588 = !DILocation(line: 95, column: 24, scope: !765, inlinedAt: !1587)
!1589 = !DILocation(line: 95, column: 18, scope: !765, inlinedAt: !1587)
!1590 = !DILocation(line: 804, column: 30, scope: !571, inlinedAt: !1591)
!1591 = distinct !DILocation(line: 339, column: 10, scope: !1504, inlinedAt: !1582)
!1592 = !DILocation(line: 804, column: 41, scope: !571, inlinedAt: !1591)
!1593 = !DILocation(line: 804, column: 48, scope: !571, inlinedAt: !1591)
!1594 = !DILocation(line: 804, column: 55, scope: !571, inlinedAt: !1591)
!1595 = !DILocation(line: 804, column: 62, scope: !571, inlinedAt: !1591)
!1596 = !DILocation(line: 808, column: 24, scope: !571, inlinedAt: !1591)
!1597 = !DILocation(line: 808, column: 52, scope: !571, inlinedAt: !1591)
!1598 = !DILocation(line: 808, column: 56, scope: !571, inlinedAt: !1591)
!1599 = !DILocation(line: 808, column: 10, scope: !571, inlinedAt: !1591)
!1600 = !DILocation(line: 179, column: 35, scope: !786, inlinedAt: !1514)
!1601 = !DILocation(line: 179, column: 43, scope: !786, inlinedAt: !1514)
!1602 = !DILocation(line: 94, column: 31, scope: !765, inlinedAt: !1603)
!1603 = distinct !DILocation(line: 180, column: 3, scope: !786, inlinedAt: !1514)
!1604 = !DILocation(line: 95, column: 24, scope: !765, inlinedAt: !1603)
!1605 = !DILocation(line: 95, column: 18, scope: !765, inlinedAt: !1603)
!1606 = !DILocation(line: 185, column: 30, scope: !634, inlinedAt: !1607)
!1607 = distinct !DILocation(line: 181, column: 3, scope: !786, inlinedAt: !1514)
!1608 = !DILocation(line: 185, column: 39, scope: !634, inlinedAt: !1607)
!1609 = !DILocation(line: 185, column: 47, scope: !634, inlinedAt: !1607)
!1610 = !DILocation(line: 186, column: 10, scope: !643, inlinedAt: !1607)
!1611 = !DILocation(line: 186, column: 7, scope: !634, inlinedAt: !1607)
!1612 = !DILocation(line: 187, column: 12, scope: !642, inlinedAt: !1607)
!1613 = !DILocation(line: 187, column: 16, scope: !642, inlinedAt: !1607)
!1614 = !DILocation(line: 187, column: 12, scope: !643, inlinedAt: !1607)
!1615 = !DILocation(line: 101, column: 16, scope: !653, inlinedAt: !1616)
!1616 = distinct !DILocation(line: 192, column: 20, scope: !641, inlinedAt: !1607)
!1617 = !DILocation(line: 188, column: 9, scope: !642, inlinedAt: !1607)
!1618 = !DILocation(line: 188, column: 5, scope: !642, inlinedAt: !1607)
!1619 = !DILocation(line: 0, scope: !641, inlinedAt: !1607)
!1620 = !DILocation(line: 190, column: 9, scope: !641, inlinedAt: !1607)
!1621 = !DILocation(line: 100, column: 32, scope: !653, inlinedAt: !1616)
!1622 = !DILocation(line: 100, column: 40, scope: !653, inlinedAt: !1616)
!1623 = !DILocation(line: 101, column: 7, scope: !653, inlinedAt: !1616)
!1624 = !DILocation(line: 102, column: 14, scope: !667, inlinedAt: !1616)
!1625 = !DILocation(line: 105, column: 15, scope: !667, inlinedAt: !1616)
!1626 = !DILocation(line: 105, column: 18, scope: !667, inlinedAt: !1616)
!1627 = !DILocation(line: 102, column: 7, scope: !653, inlinedAt: !1616)
!1628 = !DILocation(line: 191, column: 9, scope: !641, inlinedAt: !1607)
!1629 = !DILocation(line: 192, column: 39, scope: !641, inlinedAt: !1607)
!1630 = !DILocation(line: 192, column: 5, scope: !641, inlinedAt: !1607)
!1631 = !DILocation(line: 80, column: 33, scope: !678, inlinedAt: !1632)
!1632 = distinct !DILocation(line: 194, column: 5, scope: !641, inlinedAt: !1607)
!1633 = !DILocation(line: 80, column: 41, scope: !678, inlinedAt: !1632)
!1634 = !DILocation(line: 80, column: 49, scope: !678, inlinedAt: !1632)
!1635 = !DILocation(line: 81, column: 16, scope: !678, inlinedAt: !1632)
!1636 = !DILocation(line: 82, column: 20, scope: !678, inlinedAt: !1632)
!1637 = !DILocation(line: 82, column: 7, scope: !678, inlinedAt: !1632)
!1638 = !DILocation(line: 84, column: 7, scope: !692, inlinedAt: !1632)
!1639 = !DILocation(line: 84, column: 19, scope: !692, inlinedAt: !1632)
!1640 = !DILocation(line: 84, column: 7, scope: !678, inlinedAt: !1632)
!1641 = !DILocation(line: 85, column: 26, scope: !692, inlinedAt: !1632)
!1642 = !DILocation(line: 85, column: 5, scope: !692, inlinedAt: !1632)
!1643 = !DILocation(line: 86, column: 3, scope: !678, inlinedAt: !1632)
!1644 = !DILocation(line: 0, scope: !1366)
!1645 = !DILocation(line: 94, column: 31, scope: !765, inlinedAt: !1646)
!1646 = distinct !DILocation(line: 404, column: 13, scope: !1366)
!1647 = !DILocation(line: 95, column: 24, scope: !765, inlinedAt: !1646)
!1648 = !DILocation(line: 95, column: 7, scope: !765, inlinedAt: !1646)
!1649 = !DILocation(line: 95, column: 18, scope: !765, inlinedAt: !1646)
!1650 = !DILocation(line: 395, column: 9, scope: !1366)
!1651 = !DILocation(line: 405, column: 25, scope: !1366)
!1652 = !DILocation(line: 405, column: 5, scope: !1366)
!1653 = !DILocation(line: 406, column: 25, scope: !1366)
!1654 = !DILocation(line: 406, column: 5, scope: !1366)
!1655 = !DILocation(line: 407, column: 3, scope: !1366)
!1656 = !DILocation(line: 408, column: 15, scope: !1360)
!1657 = !DILocation(line: 408, column: 8, scope: !1360)
!1658 = !DILocation(line: 409, column: 6, scope: !1360)
!1659 = !DILocation(line: 409, column: 10, scope: !1360)
!1660 = !DILocation(line: 409, column: 15, scope: !1360)
!1661 = !DILocation(line: 410, column: 8, scope: !1360)
!1662 = !DILocation(line: 411, column: 1, scope: !1360)
!1663 = distinct !DISubprogram(name: "luaK_exp2anyreg", scope: !1, file: !1, line: 422, type: !1664, isLocal: false, isDefinition: true, scopeLine: 422, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1666)
!1664 = !DISubroutineType(types: !1665)
!1665 = !{!93, !427, !1115}
!1666 = !{!1667, !1668}
!1667 = !DILocalVariable(name: "fs", arg: 1, scope: !1663, file: !1, line: 422, type: !427)
!1668 = !DILocalVariable(name: "e", arg: 2, scope: !1663, file: !1, line: 422, type: !1115)
!1669 = !DILocation(line: 422, column: 33, scope: !1663)
!1670 = !DILocation(line: 422, column: 46, scope: !1663)
!1671 = !DILocation(line: 423, column: 3, scope: !1663)
!1672 = !DILocation(line: 424, column: 10, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1663, file: !1, line: 424, column: 7)
!1674 = !DILocation(line: 424, column: 12, scope: !1673)
!1675 = !DILocation(line: 424, column: 7, scope: !1663)
!1676 = !DILocation(line: 432, column: 13, scope: !1663)
!1677 = !DILocation(line: 432, column: 17, scope: !1663)
!1678 = !DILocation(line: 425, column: 10, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1680, file: !1, line: 425, column: 9)
!1680 = distinct !DILexicalBlock(scope: !1673, file: !1, line: 424, column: 26)
!1681 = !DILocation(line: 0, scope: !1679)
!1682 = !DILocation(line: 425, column: 9, scope: !1680)
!1683 = !DILocation(line: 426, column: 28, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1680, file: !1, line: 426, column: 9)
!1685 = !DILocation(line: 426, column: 24, scope: !1684)
!1686 = !DILocation(line: 426, column: 21, scope: !1684)
!1687 = !DILocation(line: 426, column: 9, scope: !1680)
!1688 = !DILocation(line: 427, column: 7, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1684, file: !1, line: 426, column: 37)
!1690 = !DILocation(line: 428, column: 7, scope: !1689)
!1691 = !DILocation(line: 431, column: 3, scope: !1663)
!1692 = !DILocation(line: 432, column: 3, scope: !1663)
!1693 = !DILocation(line: 0, scope: !1689)
!1694 = !DILocation(line: 433, column: 1, scope: !1663)
!1695 = distinct !DISubprogram(name: "luaK_exp2val", scope: !1, file: !1, line: 436, type: !1177, isLocal: false, isDefinition: true, scopeLine: 436, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1696)
!1696 = !{!1697, !1698}
!1697 = !DILocalVariable(name: "fs", arg: 1, scope: !1695, file: !1, line: 436, type: !427)
!1698 = !DILocalVariable(name: "e", arg: 2, scope: !1695, file: !1, line: 436, type: !1115)
!1699 = !DILocation(line: 436, column: 31, scope: !1695)
!1700 = !DILocation(line: 436, column: 44, scope: !1695)
!1701 = !DILocation(line: 437, column: 7, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1695, file: !1, line: 437, column: 7)
!1703 = !DILocation(line: 437, column: 7, scope: !1695)
!1704 = !DILocation(line: 422, column: 33, scope: !1663, inlinedAt: !1705)
!1705 = distinct !DILocation(line: 438, column: 5, scope: !1702)
!1706 = !DILocation(line: 422, column: 46, scope: !1663, inlinedAt: !1705)
!1707 = !DILocation(line: 423, column: 3, scope: !1663, inlinedAt: !1705)
!1708 = !DILocation(line: 424, column: 10, scope: !1673, inlinedAt: !1705)
!1709 = !DILocation(line: 424, column: 12, scope: !1673, inlinedAt: !1705)
!1710 = !DILocation(line: 424, column: 7, scope: !1663, inlinedAt: !1705)
!1711 = !DILocation(line: 425, column: 10, scope: !1679, inlinedAt: !1705)
!1712 = !DILocation(line: 0, scope: !1679, inlinedAt: !1705)
!1713 = !DILocation(line: 425, column: 9, scope: !1680, inlinedAt: !1705)
!1714 = !DILocation(line: 426, column: 28, scope: !1684, inlinedAt: !1705)
!1715 = !DILocation(line: 426, column: 24, scope: !1684, inlinedAt: !1705)
!1716 = !DILocation(line: 426, column: 21, scope: !1684, inlinedAt: !1705)
!1717 = !DILocation(line: 426, column: 9, scope: !1680, inlinedAt: !1705)
!1718 = !DILocation(line: 427, column: 7, scope: !1689, inlinedAt: !1705)
!1719 = !DILocation(line: 428, column: 7, scope: !1689, inlinedAt: !1705)
!1720 = !DILocation(line: 431, column: 3, scope: !1663, inlinedAt: !1705)
!1721 = !DILocation(line: 432, column: 3, scope: !1663, inlinedAt: !1705)
!1722 = !DILocation(line: 440, column: 5, scope: !1702)
!1723 = !DILocation(line: 441, column: 1, scope: !1695)
!1724 = distinct !DISubprogram(name: "luaK_exp2RK", scope: !1, file: !1, line: 444, type: !1664, isLocal: false, isDefinition: true, scopeLine: 444, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1725)
!1725 = !{!1726, !1727}
!1726 = !DILocalVariable(name: "fs", arg: 1, scope: !1724, file: !1, line: 444, type: !427)
!1727 = !DILocalVariable(name: "e", arg: 2, scope: !1724, file: !1, line: 444, type: !1115)
!1728 = !DILocation(line: 444, column: 29, scope: !1724)
!1729 = !DILocation(line: 444, column: 42, scope: !1724)
!1730 = !DILocation(line: 436, column: 31, scope: !1695, inlinedAt: !1731)
!1731 = distinct !DILocation(line: 445, column: 3, scope: !1724)
!1732 = !DILocation(line: 436, column: 44, scope: !1695, inlinedAt: !1731)
!1733 = !DILocation(line: 437, column: 7, scope: !1702, inlinedAt: !1731)
!1734 = !DILocation(line: 0, scope: !1724)
!1735 = !DILocation(line: 437, column: 7, scope: !1695, inlinedAt: !1731)
!1736 = !DILocation(line: 422, column: 33, scope: !1663, inlinedAt: !1737)
!1737 = distinct !DILocation(line: 438, column: 5, scope: !1702, inlinedAt: !1731)
!1738 = !DILocation(line: 422, column: 46, scope: !1663, inlinedAt: !1737)
!1739 = !DILocation(line: 424, column: 10, scope: !1673, inlinedAt: !1737)
!1740 = !DILocation(line: 424, column: 12, scope: !1673, inlinedAt: !1737)
!1741 = !DILocation(line: 424, column: 7, scope: !1663, inlinedAt: !1737)
!1742 = !DILocation(line: 425, column: 10, scope: !1679, inlinedAt: !1737)
!1743 = !DILocation(line: 0, scope: !1679, inlinedAt: !1737)
!1744 = !DILocation(line: 425, column: 9, scope: !1680, inlinedAt: !1737)
!1745 = !DILocation(line: 426, column: 28, scope: !1684, inlinedAt: !1737)
!1746 = !DILocation(line: 426, column: 24, scope: !1684, inlinedAt: !1737)
!1747 = !DILocation(line: 426, column: 21, scope: !1684, inlinedAt: !1737)
!1748 = !DILocation(line: 426, column: 9, scope: !1680, inlinedAt: !1737)
!1749 = !DILocation(line: 427, column: 7, scope: !1689, inlinedAt: !1737)
!1750 = !DILocation(line: 428, column: 7, scope: !1689, inlinedAt: !1737)
!1751 = !DILocation(line: 431, column: 3, scope: !1663, inlinedAt: !1737)
!1752 = !DILocation(line: 432, column: 3, scope: !1663, inlinedAt: !1737)
!1753 = !DILocation(line: 446, column: 14, scope: !1724)
!1754 = !DILocation(line: 446, column: 3, scope: !1724)
!1755 = !DILocation(line: 451, column: 15, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1757, file: !1, line: 451, column: 11)
!1757 = distinct !DILexicalBlock(scope: !1758, file: !1, line: 450, column: 16)
!1758 = distinct !DILexicalBlock(scope: !1724, file: !1, line: 446, column: 17)
!1759 = !DILocation(line: 451, column: 18, scope: !1756)
!1760 = !DILocation(line: 451, column: 11, scope: !1757)
!1761 = !DILocation(line: 452, column: 23, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1756, file: !1, line: 451, column: 33)
!1763 = !DILocalVariable(name: "fs", arg: 1, scope: !1764, file: !1, line: 271, type: !427)
!1764 = distinct !DISubprogram(name: "nilK", scope: !1, file: !1, line: 271, type: !605, isLocal: true, isDefinition: true, scopeLine: 271, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1765)
!1765 = !{!1763, !1766, !1767, !1768}
!1766 = !DILocalVariable(name: "k", scope: !1764, file: !1, line: 272, type: !156)
!1767 = !DILocalVariable(name: "v", scope: !1764, file: !1, line: 272, type: !156)
!1768 = !DILocalVariable(name: "i_o", scope: !1769, file: !1, line: 275, type: !155)
!1769 = distinct !DILexicalBlock(scope: !1764, file: !1, line: 275, column: 3)
!1770 = !DILocation(line: 271, column: 29, scope: !1764, inlinedAt: !1771)
!1771 = distinct !DILocation(line: 452, column: 41, scope: !1762)
!1772 = !DILocation(line: 272, column: 3, scope: !1764, inlinedAt: !1771)
!1773 = !DILocation(line: 273, column: 3, scope: !1764, inlinedAt: !1771)
!1774 = !DILocation(line: 275, column: 3, scope: !1769, inlinedAt: !1771)
!1775 = !DILocation(line: 272, column: 10, scope: !1764, inlinedAt: !1771)
!1776 = !DILocation(line: 272, column: 13, scope: !1764, inlinedAt: !1771)
!1777 = !DILocation(line: 276, column: 10, scope: !1764, inlinedAt: !1771)
!1778 = !DILocation(line: 277, column: 1, scope: !1764, inlinedAt: !1771)
!1779 = !DILocation(line: 453, column: 63, scope: !1762)
!1780 = !DILocation(line: 257, column: 30, scope: !1095, inlinedAt: !1781)
!1781 = distinct !DILocation(line: 453, column: 41, scope: !1762)
!1782 = !DILocation(line: 257, column: 45, scope: !1095, inlinedAt: !1781)
!1783 = !DILocation(line: 258, column: 3, scope: !1095, inlinedAt: !1781)
!1784 = !DILocation(line: 259, column: 3, scope: !1103, inlinedAt: !1781)
!1785 = !DILocation(line: 258, column: 10, scope: !1095, inlinedAt: !1781)
!1786 = !DILocation(line: 260, column: 10, scope: !1095, inlinedAt: !1781)
!1787 = !DILocation(line: 261, column: 1, scope: !1095, inlinedAt: !1781)
!1788 = !DILocation(line: 453, column: 23, scope: !1762)
!1789 = !DILocation(line: 454, column: 57, scope: !1762)
!1790 = !DILocalVariable(name: "fs", arg: 1, scope: !1791, file: !1, line: 264, type: !427)
!1791 = distinct !DISubprogram(name: "boolK", scope: !1, file: !1, line: 264, type: !654, isLocal: true, isDefinition: true, scopeLine: 264, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1792)
!1792 = !{!1790, !1793, !1794, !1795}
!1793 = !DILocalVariable(name: "b", arg: 2, scope: !1791, file: !1, line: 264, type: !93)
!1794 = !DILocalVariable(name: "o", scope: !1791, file: !1, line: 265, type: !156)
!1795 = !DILocalVariable(name: "i_o", scope: !1796, file: !1, line: 266, type: !155)
!1796 = distinct !DILexicalBlock(scope: !1791, file: !1, line: 266, column: 3)
!1797 = !DILocation(line: 264, column: 30, scope: !1791, inlinedAt: !1798)
!1798 = distinct !DILocation(line: 454, column: 41, scope: !1762)
!1799 = !DILocation(line: 264, column: 38, scope: !1791, inlinedAt: !1798)
!1800 = !DILocation(line: 265, column: 3, scope: !1791, inlinedAt: !1798)
!1801 = !DILocation(line: 266, column: 3, scope: !1796, inlinedAt: !1798)
!1802 = !DILocation(line: 265, column: 10, scope: !1791, inlinedAt: !1798)
!1803 = !DILocation(line: 267, column: 10, scope: !1791, inlinedAt: !1798)
!1804 = !DILocation(line: 268, column: 1, scope: !1791, inlinedAt: !1798)
!1805 = !DILocation(line: 452, column: 12, scope: !1762)
!1806 = !DILocation(line: 452, column: 16, scope: !1762)
!1807 = !DILocation(line: 452, column: 21, scope: !1762)
!1808 = !DILocation(line: 455, column: 14, scope: !1762)
!1809 = !DILocation(line: 456, column: 16, scope: !1762)
!1810 = !DILocation(line: 456, column: 9, scope: !1762)
!1811 = !DILocation(line: 461, column: 14, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1813, file: !1, line: 461, column: 11)
!1813 = distinct !DILexicalBlock(scope: !1758, file: !1, line: 460, column: 14)
!1814 = !DILocation(line: 461, column: 18, scope: !1812)
!1815 = !DILocation(line: 461, column: 23, scope: !1812)
!1816 = !DILocation(line: 461, column: 11, scope: !1813)
!1817 = !DILocation(line: 462, column: 16, scope: !1812)
!1818 = !DILocation(line: 462, column: 9, scope: !1812)
!1819 = !DILocation(line: 422, column: 33, scope: !1663, inlinedAt: !1820)
!1820 = distinct !DILocation(line: 468, column: 10, scope: !1724)
!1821 = !DILocation(line: 422, column: 46, scope: !1663, inlinedAt: !1820)
!1822 = !DILocation(line: 423, column: 3, scope: !1663, inlinedAt: !1820)
!1823 = !DILocation(line: 424, column: 10, scope: !1673, inlinedAt: !1820)
!1824 = !DILocation(line: 424, column: 12, scope: !1673, inlinedAt: !1820)
!1825 = !DILocation(line: 424, column: 7, scope: !1663, inlinedAt: !1820)
!1826 = !DILocation(line: 432, column: 13, scope: !1663, inlinedAt: !1820)
!1827 = !DILocation(line: 432, column: 17, scope: !1663, inlinedAt: !1820)
!1828 = !DILocation(line: 425, column: 10, scope: !1679, inlinedAt: !1820)
!1829 = !DILocation(line: 0, scope: !1679, inlinedAt: !1820)
!1830 = !DILocation(line: 425, column: 9, scope: !1680, inlinedAt: !1820)
!1831 = !DILocation(line: 426, column: 28, scope: !1684, inlinedAt: !1820)
!1832 = !DILocation(line: 426, column: 24, scope: !1684, inlinedAt: !1820)
!1833 = !DILocation(line: 426, column: 21, scope: !1684, inlinedAt: !1820)
!1834 = !DILocation(line: 426, column: 9, scope: !1680, inlinedAt: !1820)
!1835 = !DILocation(line: 427, column: 7, scope: !1689, inlinedAt: !1820)
!1836 = !DILocation(line: 428, column: 21, scope: !1689, inlinedAt: !1820)
!1837 = !DILocation(line: 428, column: 7, scope: !1689, inlinedAt: !1820)
!1838 = !DILocation(line: 431, column: 3, scope: !1663, inlinedAt: !1820)
!1839 = !DILocation(line: 432, column: 3, scope: !1663, inlinedAt: !1820)
!1840 = !DILocation(line: 0, scope: !1762)
!1841 = !DILocation(line: 469, column: 1, scope: !1724)
!1842 = distinct !DISubprogram(name: "luaK_storevar", scope: !1, file: !1, line: 472, type: !1843, isLocal: false, isDefinition: true, scopeLine: 472, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1845)
!1843 = !DISubroutineType(types: !1844)
!1844 = !{null, !427, !1115, !1115}
!1845 = !{!1846, !1847, !1848, !1849, !1852, !1854}
!1846 = !DILocalVariable(name: "fs", arg: 1, scope: !1842, file: !1, line: 472, type: !427)
!1847 = !DILocalVariable(name: "var", arg: 2, scope: !1842, file: !1, line: 472, type: !1115)
!1848 = !DILocalVariable(name: "ex", arg: 3, scope: !1842, file: !1, line: 472, type: !1115)
!1849 = !DILocalVariable(name: "e", scope: !1850, file: !1, line: 480, type: !93)
!1850 = distinct !DILexicalBlock(scope: !1851, file: !1, line: 479, column: 18)
!1851 = distinct !DILexicalBlock(scope: !1842, file: !1, line: 473, column: 19)
!1852 = !DILocalVariable(name: "e", scope: !1853, file: !1, line: 485, type: !93)
!1853 = distinct !DILexicalBlock(scope: !1851, file: !1, line: 484, column: 19)
!1854 = !DILocalVariable(name: "e", scope: !1855, file: !1, line: 490, type: !93)
!1855 = distinct !DILexicalBlock(scope: !1851, file: !1, line: 489, column: 20)
!1856 = !DILocation(line: 472, column: 32, scope: !1842)
!1857 = !DILocation(line: 472, column: 45, scope: !1842)
!1858 = !DILocation(line: 472, column: 59, scope: !1842)
!1859 = !DILocation(line: 473, column: 16, scope: !1842)
!1860 = !DILocation(line: 473, column: 3, scope: !1842)
!1861 = !DILocation(line: 223, column: 33, scope: !1309, inlinedAt: !1862)
!1862 = distinct !DILocation(line: 475, column: 7, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1851, file: !1, line: 474, column: 18)
!1864 = !DILocation(line: 223, column: 46, scope: !1309, inlinedAt: !1862)
!1865 = !DILocation(line: 224, column: 10, scope: !1316, inlinedAt: !1862)
!1866 = !DILocation(line: 224, column: 12, scope: !1316, inlinedAt: !1862)
!1867 = !DILocation(line: 224, column: 7, scope: !1309, inlinedAt: !1862)
!1868 = !DILocation(line: 225, column: 20, scope: !1316, inlinedAt: !1862)
!1869 = !DILocation(line: 225, column: 24, scope: !1316, inlinedAt: !1862)
!1870 = !DILocation(line: 215, column: 33, scope: !1246, inlinedAt: !1871)
!1871 = distinct !DILocation(line: 225, column: 5, scope: !1316, inlinedAt: !1862)
!1872 = !DILocation(line: 215, column: 41, scope: !1246, inlinedAt: !1871)
!1873 = !DILocation(line: 216, column: 8, scope: !1253, inlinedAt: !1871)
!1874 = !DILocation(line: 216, column: 17, scope: !1253, inlinedAt: !1871)
!1875 = !DILocation(line: 216, column: 31, scope: !1253, inlinedAt: !1871)
!1876 = !DILocation(line: 216, column: 27, scope: !1253, inlinedAt: !1871)
!1877 = !DILocation(line: 216, column: 24, scope: !1253, inlinedAt: !1871)
!1878 = !DILocation(line: 216, column: 7, scope: !1246, inlinedAt: !1871)
!1879 = !DILocation(line: 217, column: 9, scope: !1260, inlinedAt: !1871)
!1880 = !DILocation(line: 217, column: 16, scope: !1260, inlinedAt: !1871)
!1881 = !DILocation(line: 219, column: 3, scope: !1260, inlinedAt: !1871)
!1882 = !DILocation(line: 476, column: 28, scope: !1863)
!1883 = !DILocation(line: 476, column: 32, scope: !1863)
!1884 = !DILocation(line: 476, column: 7, scope: !1863)
!1885 = !DILocation(line: 477, column: 7, scope: !1863)
!1886 = !DILocation(line: 422, column: 33, scope: !1663, inlinedAt: !1887)
!1887 = distinct !DILocation(line: 480, column: 15, scope: !1850)
!1888 = !DILocation(line: 422, column: 46, scope: !1663, inlinedAt: !1887)
!1889 = !DILocation(line: 423, column: 3, scope: !1663, inlinedAt: !1887)
!1890 = !DILocation(line: 424, column: 10, scope: !1673, inlinedAt: !1887)
!1891 = !DILocation(line: 424, column: 12, scope: !1673, inlinedAt: !1887)
!1892 = !DILocation(line: 424, column: 7, scope: !1663, inlinedAt: !1887)
!1893 = !DILocation(line: 432, column: 13, scope: !1663, inlinedAt: !1887)
!1894 = !DILocation(line: 432, column: 17, scope: !1663, inlinedAt: !1887)
!1895 = !DILocation(line: 425, column: 10, scope: !1679, inlinedAt: !1887)
!1896 = !DILocation(line: 0, scope: !1679, inlinedAt: !1887)
!1897 = !DILocation(line: 425, column: 9, scope: !1680, inlinedAt: !1887)
!1898 = !DILocation(line: 426, column: 28, scope: !1684, inlinedAt: !1887)
!1899 = !DILocation(line: 426, column: 24, scope: !1684, inlinedAt: !1887)
!1900 = !DILocation(line: 426, column: 21, scope: !1684, inlinedAt: !1887)
!1901 = !DILocation(line: 426, column: 9, scope: !1680, inlinedAt: !1887)
!1902 = !DILocation(line: 427, column: 7, scope: !1689, inlinedAt: !1887)
!1903 = !DILocation(line: 428, column: 7, scope: !1689, inlinedAt: !1887)
!1904 = !DILocation(line: 431, column: 3, scope: !1663, inlinedAt: !1887)
!1905 = !DILocation(line: 432, column: 3, scope: !1663, inlinedAt: !1887)
!1906 = !DILocation(line: 0, scope: !1850)
!1907 = !DILocation(line: 481, column: 45, scope: !1850)
!1908 = !DILocation(line: 480, column: 11, scope: !1850)
!1909 = !DILocation(line: 481, column: 49, scope: !1850)
!1910 = !DILocation(line: 804, column: 30, scope: !571, inlinedAt: !1911)
!1911 = distinct !DILocation(line: 481, column: 7, scope: !1850)
!1912 = !DILocation(line: 804, column: 41, scope: !571, inlinedAt: !1911)
!1913 = !DILocation(line: 804, column: 48, scope: !571, inlinedAt: !1911)
!1914 = !DILocation(line: 804, column: 55, scope: !571, inlinedAt: !1911)
!1915 = !DILocation(line: 804, column: 62, scope: !571, inlinedAt: !1911)
!1916 = !DILocation(line: 808, column: 24, scope: !571, inlinedAt: !1911)
!1917 = !DILocation(line: 808, column: 52, scope: !571, inlinedAt: !1911)
!1918 = !DILocation(line: 808, column: 56, scope: !571, inlinedAt: !1911)
!1919 = !DILocation(line: 808, column: 10, scope: !571, inlinedAt: !1911)
!1920 = !DILocation(line: 422, column: 33, scope: !1663, inlinedAt: !1921)
!1921 = distinct !DILocation(line: 485, column: 15, scope: !1853)
!1922 = !DILocation(line: 422, column: 46, scope: !1663, inlinedAt: !1921)
!1923 = !DILocation(line: 423, column: 3, scope: !1663, inlinedAt: !1921)
!1924 = !DILocation(line: 424, column: 10, scope: !1673, inlinedAt: !1921)
!1925 = !DILocation(line: 424, column: 12, scope: !1673, inlinedAt: !1921)
!1926 = !DILocation(line: 424, column: 7, scope: !1663, inlinedAt: !1921)
!1927 = !DILocation(line: 432, column: 13, scope: !1663, inlinedAt: !1921)
!1928 = !DILocation(line: 432, column: 17, scope: !1663, inlinedAt: !1921)
!1929 = !DILocation(line: 425, column: 10, scope: !1679, inlinedAt: !1921)
!1930 = !DILocation(line: 0, scope: !1679, inlinedAt: !1921)
!1931 = !DILocation(line: 425, column: 9, scope: !1680, inlinedAt: !1921)
!1932 = !DILocation(line: 426, column: 28, scope: !1684, inlinedAt: !1921)
!1933 = !DILocation(line: 426, column: 24, scope: !1684, inlinedAt: !1921)
!1934 = !DILocation(line: 426, column: 21, scope: !1684, inlinedAt: !1921)
!1935 = !DILocation(line: 426, column: 9, scope: !1680, inlinedAt: !1921)
!1936 = !DILocation(line: 427, column: 7, scope: !1689, inlinedAt: !1921)
!1937 = !DILocation(line: 428, column: 7, scope: !1689, inlinedAt: !1921)
!1938 = !DILocation(line: 431, column: 3, scope: !1663, inlinedAt: !1921)
!1939 = !DILocation(line: 432, column: 3, scope: !1663, inlinedAt: !1921)
!1940 = !DILocation(line: 0, scope: !1853)
!1941 = !DILocation(line: 486, column: 46, scope: !1853)
!1942 = !DILocation(line: 485, column: 11, scope: !1853)
!1943 = !DILocation(line: 486, column: 50, scope: !1853)
!1944 = !DILocation(line: 812, column: 30, scope: !617, inlinedAt: !1945)
!1945 = distinct !DILocation(line: 486, column: 7, scope: !1853)
!1946 = !DILocation(line: 812, column: 41, scope: !617, inlinedAt: !1945)
!1947 = !DILocation(line: 812, column: 48, scope: !617, inlinedAt: !1945)
!1948 = !DILocation(line: 812, column: 64, scope: !617, inlinedAt: !1945)
!1949 = !DILocation(line: 815, column: 24, scope: !617, inlinedAt: !1945)
!1950 = !DILocation(line: 815, column: 50, scope: !617, inlinedAt: !1945)
!1951 = !DILocation(line: 815, column: 54, scope: !617, inlinedAt: !1945)
!1952 = !DILocation(line: 815, column: 10, scope: !617, inlinedAt: !1945)
!1953 = !DILocation(line: 490, column: 15, scope: !1855)
!1954 = !DILocation(line: 490, column: 11, scope: !1855)
!1955 = !DILocation(line: 491, column: 42, scope: !1855)
!1956 = !DILocation(line: 491, column: 44, scope: !1855)
!1957 = !DILocation(line: 491, column: 46, scope: !1855)
!1958 = !DILocation(line: 491, column: 61, scope: !1855)
!1959 = !DILocation(line: 804, column: 30, scope: !571, inlinedAt: !1960)
!1960 = distinct !DILocation(line: 491, column: 7, scope: !1855)
!1961 = !DILocation(line: 804, column: 41, scope: !571, inlinedAt: !1960)
!1962 = !DILocation(line: 804, column: 48, scope: !571, inlinedAt: !1960)
!1963 = !DILocation(line: 804, column: 55, scope: !571, inlinedAt: !1960)
!1964 = !DILocation(line: 804, column: 62, scope: !571, inlinedAt: !1960)
!1965 = !DILocation(line: 808, column: 24, scope: !571, inlinedAt: !1960)
!1966 = !DILocation(line: 808, column: 52, scope: !571, inlinedAt: !1960)
!1967 = !DILocation(line: 808, column: 56, scope: !571, inlinedAt: !1960)
!1968 = !DILocation(line: 808, column: 10, scope: !571, inlinedAt: !1960)
!1969 = !DILocation(line: 223, column: 33, scope: !1309, inlinedAt: !1970)
!1970 = distinct !DILocation(line: 499, column: 3, scope: !1842)
!1971 = !DILocation(line: 223, column: 46, scope: !1309, inlinedAt: !1970)
!1972 = !DILocation(line: 224, column: 10, scope: !1316, inlinedAt: !1970)
!1973 = !DILocation(line: 224, column: 12, scope: !1316, inlinedAt: !1970)
!1974 = !DILocation(line: 224, column: 7, scope: !1309, inlinedAt: !1970)
!1975 = !DILocation(line: 225, column: 20, scope: !1316, inlinedAt: !1970)
!1976 = !DILocation(line: 225, column: 24, scope: !1316, inlinedAt: !1970)
!1977 = !DILocation(line: 215, column: 33, scope: !1246, inlinedAt: !1978)
!1978 = distinct !DILocation(line: 225, column: 5, scope: !1316, inlinedAt: !1970)
!1979 = !DILocation(line: 215, column: 41, scope: !1246, inlinedAt: !1978)
!1980 = !DILocation(line: 216, column: 8, scope: !1253, inlinedAt: !1978)
!1981 = !DILocation(line: 216, column: 17, scope: !1253, inlinedAt: !1978)
!1982 = !DILocation(line: 216, column: 31, scope: !1253, inlinedAt: !1978)
!1983 = !DILocation(line: 216, column: 27, scope: !1253, inlinedAt: !1978)
!1984 = !DILocation(line: 216, column: 24, scope: !1253, inlinedAt: !1978)
!1985 = !DILocation(line: 216, column: 7, scope: !1246, inlinedAt: !1978)
!1986 = !DILocation(line: 217, column: 9, scope: !1260, inlinedAt: !1978)
!1987 = !DILocation(line: 217, column: 16, scope: !1260, inlinedAt: !1978)
!1988 = !DILocation(line: 219, column: 3, scope: !1260, inlinedAt: !1978)
!1989 = !DILocation(line: 500, column: 1, scope: !1842)
!1990 = distinct !DISubprogram(name: "luaK_self", scope: !1, file: !1, line: 503, type: !1843, isLocal: false, isDefinition: true, scopeLine: 503, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1991)
!1991 = !{!1992, !1993, !1994, !1995}
!1992 = !DILocalVariable(name: "fs", arg: 1, scope: !1990, file: !1, line: 503, type: !427)
!1993 = !DILocalVariable(name: "e", arg: 2, scope: !1990, file: !1, line: 503, type: !1115)
!1994 = !DILocalVariable(name: "key", arg: 3, scope: !1990, file: !1, line: 503, type: !1115)
!1995 = !DILocalVariable(name: "func", scope: !1990, file: !1, line: 504, type: !93)
!1996 = !DILocation(line: 503, column: 28, scope: !1990)
!1997 = !DILocation(line: 503, column: 41, scope: !1990)
!1998 = !DILocation(line: 503, column: 53, scope: !1990)
!1999 = !DILocation(line: 422, column: 33, scope: !1663, inlinedAt: !2000)
!2000 = distinct !DILocation(line: 505, column: 3, scope: !1990)
!2001 = !DILocation(line: 422, column: 46, scope: !1663, inlinedAt: !2000)
!2002 = !DILocation(line: 423, column: 3, scope: !1663, inlinedAt: !2000)
!2003 = !DILocation(line: 424, column: 10, scope: !1673, inlinedAt: !2000)
!2004 = !DILocation(line: 424, column: 12, scope: !1673, inlinedAt: !2000)
!2005 = !DILocation(line: 424, column: 7, scope: !1663, inlinedAt: !2000)
!2006 = !DILocation(line: 425, column: 10, scope: !1679, inlinedAt: !2000)
!2007 = !DILocation(line: 0, scope: !1679, inlinedAt: !2000)
!2008 = !DILocation(line: 425, column: 9, scope: !1680, inlinedAt: !2000)
!2009 = !DILocation(line: 426, column: 28, scope: !1684, inlinedAt: !2000)
!2010 = !DILocation(line: 426, column: 24, scope: !1684, inlinedAt: !2000)
!2011 = !DILocation(line: 426, column: 21, scope: !1684, inlinedAt: !2000)
!2012 = !DILocation(line: 426, column: 9, scope: !1680, inlinedAt: !2000)
!2013 = !DILocation(line: 427, column: 7, scope: !1689, inlinedAt: !2000)
!2014 = !DILocation(line: 428, column: 7, scope: !1689, inlinedAt: !2000)
!2015 = !DILocation(line: 431, column: 3, scope: !1663, inlinedAt: !2000)
!2016 = !DILocation(line: 432, column: 3, scope: !1663, inlinedAt: !2000)
!2017 = !DILocation(line: 223, column: 33, scope: !1309, inlinedAt: !2018)
!2018 = distinct !DILocation(line: 506, column: 3, scope: !1990)
!2019 = !DILocation(line: 223, column: 46, scope: !1309, inlinedAt: !2018)
!2020 = !DILocation(line: 224, column: 10, scope: !1316, inlinedAt: !2018)
!2021 = !DILocation(line: 224, column: 12, scope: !1316, inlinedAt: !2018)
!2022 = !DILocation(line: 224, column: 7, scope: !1309, inlinedAt: !2018)
!2023 = !DILocation(line: 225, column: 20, scope: !1316, inlinedAt: !2018)
!2024 = !DILocation(line: 225, column: 24, scope: !1316, inlinedAt: !2018)
!2025 = !DILocation(line: 215, column: 33, scope: !1246, inlinedAt: !2026)
!2026 = distinct !DILocation(line: 225, column: 5, scope: !1316, inlinedAt: !2018)
!2027 = !DILocation(line: 215, column: 41, scope: !1246, inlinedAt: !2026)
!2028 = !DILocation(line: 216, column: 8, scope: !1253, inlinedAt: !2026)
!2029 = !DILocation(line: 216, column: 17, scope: !1253, inlinedAt: !2026)
!2030 = !DILocation(line: 216, column: 31, scope: !1253, inlinedAt: !2026)
!2031 = !DILocation(line: 216, column: 27, scope: !1253, inlinedAt: !2026)
!2032 = !DILocation(line: 216, column: 24, scope: !1253, inlinedAt: !2026)
!2033 = !DILocation(line: 216, column: 7, scope: !1246, inlinedAt: !2026)
!2034 = !DILocation(line: 217, column: 9, scope: !1260, inlinedAt: !2026)
!2035 = !DILocation(line: 217, column: 16, scope: !1260, inlinedAt: !2026)
!2036 = !DILocation(line: 219, column: 3, scope: !1260, inlinedAt: !2026)
!2037 = !DILocation(line: 507, column: 14, scope: !1990)
!2038 = !DILocation(line: 504, column: 7, scope: !1990)
!2039 = !DILocation(line: 209, column: 35, scope: !984, inlinedAt: !2040)
!2040 = distinct !DILocation(line: 508, column: 3, scope: !1990)
!2041 = !DILocation(line: 209, column: 43, scope: !984, inlinedAt: !2040)
!2042 = !DILocation(line: 199, column: 34, scope: !954, inlinedAt: !2043)
!2043 = distinct !DILocation(line: 210, column: 3, scope: !984, inlinedAt: !2040)
!2044 = !DILocation(line: 199, column: 42, scope: !954, inlinedAt: !2043)
!2045 = !DILocation(line: 200, column: 30, scope: !954, inlinedAt: !2043)
!2046 = !DILocation(line: 200, column: 7, scope: !954, inlinedAt: !2043)
!2047 = !DILocation(line: 201, column: 22, scope: !966, inlinedAt: !2043)
!2048 = !DILocation(line: 201, column: 25, scope: !966, inlinedAt: !2043)
!2049 = !DILocation(line: 201, column: 18, scope: !966, inlinedAt: !2043)
!2050 = !DILocation(line: 201, column: 16, scope: !966, inlinedAt: !2043)
!2051 = !DILocation(line: 201, column: 7, scope: !954, inlinedAt: !2043)
!2052 = !DILocation(line: 202, column: 18, scope: !973, inlinedAt: !2043)
!2053 = !DILocation(line: 202, column: 9, scope: !974, inlinedAt: !2043)
!2054 = !DILocation(line: 203, column: 28, scope: !973, inlinedAt: !2043)
!2055 = !DILocation(line: 203, column: 7, scope: !973, inlinedAt: !2043)
!2056 = !DILocation(line: 204, column: 9, scope: !974, inlinedAt: !2043)
!2057 = !DILocation(line: 204, column: 12, scope: !974, inlinedAt: !2043)
!2058 = !DILocation(line: 211, column: 15, scope: !984, inlinedAt: !2040)
!2059 = !DILocation(line: 204, column: 27, scope: !974, inlinedAt: !2043)
!2060 = !DILocation(line: 204, column: 25, scope: !974, inlinedAt: !2043)
!2061 = !DILocation(line: 205, column: 3, scope: !974, inlinedAt: !2043)
!2062 = !DILocation(line: 509, column: 38, scope: !1990)
!2063 = !DILocation(line: 509, column: 42, scope: !1990)
!2064 = !DILocation(line: 509, column: 48, scope: !1990)
!2065 = !DILocation(line: 804, column: 30, scope: !571, inlinedAt: !2066)
!2066 = distinct !DILocation(line: 509, column: 3, scope: !1990)
!2067 = !DILocation(line: 804, column: 41, scope: !571, inlinedAt: !2066)
!2068 = !DILocation(line: 804, column: 48, scope: !571, inlinedAt: !2066)
!2069 = !DILocation(line: 804, column: 55, scope: !571, inlinedAt: !2066)
!2070 = !DILocation(line: 804, column: 62, scope: !571, inlinedAt: !2066)
!2071 = !DILocation(line: 808, column: 24, scope: !571, inlinedAt: !2066)
!2072 = !DILocation(line: 808, column: 52, scope: !571, inlinedAt: !2066)
!2073 = !DILocation(line: 808, column: 56, scope: !571, inlinedAt: !2066)
!2074 = !DILocation(line: 808, column: 10, scope: !571, inlinedAt: !2066)
!2075 = !DILocation(line: 223, column: 33, scope: !1309, inlinedAt: !2076)
!2076 = distinct !DILocation(line: 510, column: 3, scope: !1990)
!2077 = !DILocation(line: 223, column: 46, scope: !1309, inlinedAt: !2076)
!2078 = !DILocation(line: 224, column: 10, scope: !1316, inlinedAt: !2076)
!2079 = !DILocation(line: 224, column: 12, scope: !1316, inlinedAt: !2076)
!2080 = !DILocation(line: 224, column: 7, scope: !1309, inlinedAt: !2076)
!2081 = !DILocation(line: 225, column: 20, scope: !1316, inlinedAt: !2076)
!2082 = !DILocation(line: 225, column: 24, scope: !1316, inlinedAt: !2076)
!2083 = !DILocation(line: 215, column: 33, scope: !1246, inlinedAt: !2084)
!2084 = distinct !DILocation(line: 225, column: 5, scope: !1316, inlinedAt: !2076)
!2085 = !DILocation(line: 215, column: 41, scope: !1246, inlinedAt: !2084)
!2086 = !DILocation(line: 216, column: 8, scope: !1253, inlinedAt: !2084)
!2087 = !DILocation(line: 216, column: 17, scope: !1253, inlinedAt: !2084)
!2088 = !DILocation(line: 216, column: 31, scope: !1253, inlinedAt: !2084)
!2089 = !DILocation(line: 216, column: 27, scope: !1253, inlinedAt: !2084)
!2090 = !DILocation(line: 216, column: 24, scope: !1253, inlinedAt: !2084)
!2091 = !DILocation(line: 216, column: 7, scope: !1246, inlinedAt: !2084)
!2092 = !DILocation(line: 217, column: 16, scope: !1260, inlinedAt: !2084)
!2093 = !DILocation(line: 219, column: 3, scope: !1260, inlinedAt: !2084)
!2094 = !DILocation(line: 511, column: 15, scope: !1990)
!2095 = !DILocation(line: 512, column: 8, scope: !1990)
!2096 = !DILocation(line: 513, column: 1, scope: !1990)
!2097 = distinct !DISubprogram(name: "luaK_goiftrue", scope: !1, file: !1, line: 539, type: !1177, isLocal: false, isDefinition: true, scopeLine: 539, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2098)
!2098 = !{!2099, !2100, !2101}
!2099 = !DILocalVariable(name: "fs", arg: 1, scope: !2097, file: !1, line: 539, type: !427)
!2100 = !DILocalVariable(name: "e", arg: 2, scope: !2097, file: !1, line: 539, type: !1115)
!2101 = !DILocalVariable(name: "pc", scope: !2097, file: !1, line: 540, type: !93)
!2102 = !DILocation(line: 539, column: 32, scope: !2097)
!2103 = !DILocation(line: 539, column: 45, scope: !2097)
!2104 = !DILocation(line: 541, column: 3, scope: !2097)
!2105 = !DILocation(line: 542, column: 14, scope: !2097)
!2106 = !DILocation(line: 542, column: 3, scope: !2097)
!2107 = !DILocalVariable(name: "fs", arg: 1, scope: !2108, file: !1, line: 516, type: !427)
!2108 = distinct !DISubprogram(name: "invertjump", scope: !1, file: !1, line: 516, type: !1177, isLocal: true, isDefinition: true, scopeLine: 516, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2109)
!2109 = !{!2107, !2110, !2111}
!2110 = !DILocalVariable(name: "e", arg: 2, scope: !2108, file: !1, line: 516, type: !1115)
!2111 = !DILocalVariable(name: "pc", scope: !2108, file: !1, line: 517, type: !385)
!2112 = !DILocation(line: 516, column: 36, scope: !2108, inlinedAt: !2113)
!2113 = distinct !DILocation(line: 548, column: 7, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2115, file: !1, line: 547, column: 16)
!2115 = distinct !DILexicalBlock(scope: !2097, file: !1, line: 542, column: 17)
!2116 = !DILocation(line: 516, column: 49, scope: !2108, inlinedAt: !2113)
!2117 = !DILocation(line: 517, column: 43, scope: !2108, inlinedAt: !2113)
!2118 = !DILocation(line: 517, column: 47, scope: !2108, inlinedAt: !2113)
!2119 = !DILocation(line: 109, column: 48, scope: !1442, inlinedAt: !2120)
!2120 = distinct !DILocation(line: 517, column: 21, scope: !2108, inlinedAt: !2113)
!2121 = !DILocation(line: 109, column: 56, scope: !1442, inlinedAt: !2120)
!2122 = !DILocation(line: 110, column: 26, scope: !1442, inlinedAt: !2120)
!2123 = !DILocation(line: 110, column: 29, scope: !1442, inlinedAt: !2120)
!2124 = !DILocation(line: 110, column: 22, scope: !1442, inlinedAt: !2120)
!2125 = !DILocation(line: 110, column: 16, scope: !1442, inlinedAt: !2120)
!2126 = !DILocation(line: 111, column: 10, scope: !1454, inlinedAt: !2120)
!2127 = !DILocation(line: 111, column: 15, scope: !1454, inlinedAt: !2120)
!2128 = !DILocation(line: 111, column: 18, scope: !1454, inlinedAt: !2120)
!2129 = !DILocation(line: 111, column: 7, scope: !1442, inlinedAt: !2120)
!2130 = !DILocation(line: 520, column: 3, scope: !2108, inlinedAt: !2113)
!2131 = !DILocation(line: 114, column: 5, scope: !1454, inlinedAt: !2120)
!2132 = !DILocation(line: 0, scope: !1454, inlinedAt: !2120)
!2133 = !DILocation(line: 517, column: 16, scope: !2108, inlinedAt: !2113)
!2134 = !DILocation(line: 549, column: 19, scope: !2114)
!2135 = !DILocation(line: 540, column: 7, scope: !2097)
!2136 = !DILocation(line: 550, column: 7, scope: !2114)
!2137 = !DILocation(line: 553, column: 12, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2115, file: !1, line: 552, column: 14)
!2139 = !DILocation(line: 554, column: 7, scope: !2138)
!2140 = !DILocation(line: 0, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2115, file: !1, line: 543, column: 38)
!2142 = !DILocation(line: 557, column: 23, scope: !2097)
!2143 = !DILocation(line: 185, column: 30, scope: !634, inlinedAt: !2144)
!2144 = distinct !DILocation(line: 557, column: 3, scope: !2097)
!2145 = !DILocation(line: 185, column: 39, scope: !634, inlinedAt: !2144)
!2146 = !DILocation(line: 185, column: 47, scope: !634, inlinedAt: !2144)
!2147 = !DILocation(line: 186, column: 10, scope: !643, inlinedAt: !2144)
!2148 = !DILocation(line: 186, column: 7, scope: !634, inlinedAt: !2144)
!2149 = !DILocation(line: 187, column: 12, scope: !642, inlinedAt: !2144)
!2150 = !DILocation(line: 187, column: 16, scope: !642, inlinedAt: !2144)
!2151 = !DILocation(line: 187, column: 12, scope: !643, inlinedAt: !2144)
!2152 = !DILocation(line: 101, column: 16, scope: !653, inlinedAt: !2153)
!2153 = distinct !DILocation(line: 192, column: 20, scope: !641, inlinedAt: !2144)
!2154 = !DILocation(line: 188, column: 9, scope: !642, inlinedAt: !2144)
!2155 = !DILocation(line: 188, column: 5, scope: !642, inlinedAt: !2144)
!2156 = !DILocation(line: 0, scope: !641, inlinedAt: !2144)
!2157 = !DILocation(line: 190, column: 9, scope: !641, inlinedAt: !2144)
!2158 = !DILocation(line: 100, column: 32, scope: !653, inlinedAt: !2153)
!2159 = !DILocation(line: 100, column: 40, scope: !653, inlinedAt: !2153)
!2160 = !DILocation(line: 101, column: 7, scope: !653, inlinedAt: !2153)
!2161 = !DILocation(line: 102, column: 14, scope: !667, inlinedAt: !2153)
!2162 = !DILocation(line: 105, column: 15, scope: !667, inlinedAt: !2153)
!2163 = !DILocation(line: 105, column: 18, scope: !667, inlinedAt: !2153)
!2164 = !DILocation(line: 102, column: 7, scope: !653, inlinedAt: !2153)
!2165 = !DILocation(line: 191, column: 9, scope: !641, inlinedAt: !2144)
!2166 = !DILocation(line: 192, column: 39, scope: !641, inlinedAt: !2144)
!2167 = !DILocation(line: 192, column: 5, scope: !641, inlinedAt: !2144)
!2168 = !DILocation(line: 80, column: 33, scope: !678, inlinedAt: !2169)
!2169 = distinct !DILocation(line: 194, column: 5, scope: !641, inlinedAt: !2144)
!2170 = !DILocation(line: 80, column: 41, scope: !678, inlinedAt: !2169)
!2171 = !DILocation(line: 80, column: 49, scope: !678, inlinedAt: !2169)
!2172 = !DILocation(line: 81, column: 16, scope: !678, inlinedAt: !2169)
!2173 = !DILocation(line: 82, column: 20, scope: !678, inlinedAt: !2169)
!2174 = !DILocation(line: 82, column: 7, scope: !678, inlinedAt: !2169)
!2175 = !DILocation(line: 84, column: 7, scope: !692, inlinedAt: !2169)
!2176 = !DILocation(line: 84, column: 19, scope: !692, inlinedAt: !2169)
!2177 = !DILocation(line: 84, column: 7, scope: !678, inlinedAt: !2169)
!2178 = !DILocation(line: 85, column: 26, scope: !692, inlinedAt: !2169)
!2179 = !DILocation(line: 85, column: 5, scope: !692, inlinedAt: !2169)
!2180 = !DILocation(line: 86, column: 3, scope: !678, inlinedAt: !2169)
!2181 = !DILocation(line: 558, column: 27, scope: !2097)
!2182 = !DILocation(line: 179, column: 35, scope: !786, inlinedAt: !2183)
!2183 = distinct !DILocation(line: 558, column: 3, scope: !2097)
!2184 = !DILocation(line: 179, column: 43, scope: !786, inlinedAt: !2183)
!2185 = !DILocation(line: 94, column: 31, scope: !765, inlinedAt: !2186)
!2186 = distinct !DILocation(line: 180, column: 3, scope: !786, inlinedAt: !2183)
!2187 = !DILocation(line: 95, column: 24, scope: !765, inlinedAt: !2186)
!2188 = !DILocation(line: 95, column: 7, scope: !765, inlinedAt: !2186)
!2189 = !DILocation(line: 95, column: 18, scope: !765, inlinedAt: !2186)
!2190 = !DILocation(line: 181, column: 24, scope: !786, inlinedAt: !2183)
!2191 = !DILocation(line: 185, column: 30, scope: !634, inlinedAt: !2192)
!2192 = distinct !DILocation(line: 181, column: 3, scope: !786, inlinedAt: !2183)
!2193 = !DILocation(line: 185, column: 39, scope: !634, inlinedAt: !2192)
!2194 = !DILocation(line: 185, column: 47, scope: !634, inlinedAt: !2192)
!2195 = !DILocation(line: 186, column: 10, scope: !643, inlinedAt: !2192)
!2196 = !DILocation(line: 186, column: 7, scope: !634, inlinedAt: !2192)
!2197 = !DILocation(line: 187, column: 12, scope: !642, inlinedAt: !2192)
!2198 = !DILocation(line: 187, column: 16, scope: !642, inlinedAt: !2192)
!2199 = !DILocation(line: 187, column: 12, scope: !643, inlinedAt: !2192)
!2200 = !DILocation(line: 101, column: 16, scope: !653, inlinedAt: !2201)
!2201 = distinct !DILocation(line: 192, column: 20, scope: !641, inlinedAt: !2192)
!2202 = !DILocation(line: 188, column: 9, scope: !642, inlinedAt: !2192)
!2203 = !DILocation(line: 188, column: 5, scope: !642, inlinedAt: !2192)
!2204 = !DILocation(line: 0, scope: !641, inlinedAt: !2192)
!2205 = !DILocation(line: 190, column: 9, scope: !641, inlinedAt: !2192)
!2206 = !DILocation(line: 100, column: 32, scope: !653, inlinedAt: !2201)
!2207 = !DILocation(line: 100, column: 40, scope: !653, inlinedAt: !2201)
!2208 = !DILocation(line: 101, column: 7, scope: !653, inlinedAt: !2201)
!2209 = !DILocation(line: 102, column: 14, scope: !667, inlinedAt: !2201)
!2210 = !DILocation(line: 105, column: 15, scope: !667, inlinedAt: !2201)
!2211 = !DILocation(line: 105, column: 18, scope: !667, inlinedAt: !2201)
!2212 = !DILocation(line: 102, column: 7, scope: !653, inlinedAt: !2201)
!2213 = !DILocation(line: 191, column: 9, scope: !641, inlinedAt: !2192)
!2214 = !DILocation(line: 192, column: 39, scope: !641, inlinedAt: !2192)
!2215 = !DILocation(line: 192, column: 5, scope: !641, inlinedAt: !2192)
!2216 = !DILocation(line: 80, column: 33, scope: !678, inlinedAt: !2217)
!2217 = distinct !DILocation(line: 194, column: 5, scope: !641, inlinedAt: !2192)
!2218 = !DILocation(line: 80, column: 41, scope: !678, inlinedAt: !2217)
!2219 = !DILocation(line: 80, column: 49, scope: !678, inlinedAt: !2217)
!2220 = !DILocation(line: 81, column: 16, scope: !678, inlinedAt: !2217)
!2221 = !DILocation(line: 82, column: 20, scope: !678, inlinedAt: !2217)
!2222 = !DILocation(line: 82, column: 7, scope: !678, inlinedAt: !2217)
!2223 = !DILocation(line: 84, column: 7, scope: !692, inlinedAt: !2217)
!2224 = !DILocation(line: 84, column: 19, scope: !692, inlinedAt: !2217)
!2225 = !DILocation(line: 84, column: 7, scope: !678, inlinedAt: !2217)
!2226 = !DILocation(line: 85, column: 26, scope: !692, inlinedAt: !2217)
!2227 = !DILocation(line: 85, column: 5, scope: !692, inlinedAt: !2217)
!2228 = !DILocation(line: 86, column: 3, scope: !678, inlinedAt: !2217)
!2229 = !DILocation(line: 559, column: 8, scope: !2097)
!2230 = !DILocation(line: 560, column: 1, scope: !2097)
!2231 = distinct !DISubprogram(name: "jumponcond", scope: !1, file: !1, line: 524, type: !2232, isLocal: true, isDefinition: true, scopeLine: 524, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2234)
!2232 = !DISubroutineType(types: !2233)
!2233 = !{!93, !427, !1115, !93}
!2234 = !{!2235, !2236, !2237, !2238}
!2235 = !DILocalVariable(name: "fs", arg: 1, scope: !2231, file: !1, line: 524, type: !427)
!2236 = !DILocalVariable(name: "e", arg: 2, scope: !2231, file: !1, line: 524, type: !1115)
!2237 = !DILocalVariable(name: "cond", arg: 3, scope: !2231, file: !1, line: 524, type: !93)
!2238 = !DILocalVariable(name: "ie", scope: !2239, file: !1, line: 526, type: !90)
!2239 = distinct !DILexicalBlock(scope: !2240, file: !1, line: 525, column: 27)
!2240 = distinct !DILexicalBlock(scope: !2231, file: !1, line: 525, column: 7)
!2241 = !DILocation(line: 524, column: 35, scope: !2231)
!2242 = !DILocation(line: 524, column: 48, scope: !2231)
!2243 = !DILocation(line: 524, column: 55, scope: !2231)
!2244 = !DILocation(line: 525, column: 10, scope: !2240)
!2245 = !DILocation(line: 525, column: 7, scope: !2231)
!2246 = !DILocation(line: 526, column: 22, scope: !2239)
!2247 = !DILocation(line: 526, column: 17, scope: !2239)
!2248 = !DILocation(line: 527, column: 9, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2239, file: !1, line: 527, column: 9)
!2250 = !DILocation(line: 527, column: 24, scope: !2249)
!2251 = !DILocation(line: 527, column: 9, scope: !2239)
!2252 = !DILocation(line: 528, column: 11, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2249, file: !1, line: 527, column: 35)
!2254 = !DILocation(line: 528, column: 13, scope: !2253)
!2255 = !DILocation(line: 529, column: 36, scope: !2253)
!2256 = !DILocation(line: 529, column: 53, scope: !2253)
!2257 = !DILocation(line: 529, column: 14, scope: !2253)
!2258 = !DILocation(line: 209, column: 35, scope: !984, inlinedAt: !2259)
!2259 = distinct !DILocation(line: 384, column: 5, scope: !2260, inlinedAt: !2266)
!2260 = distinct !DILexicalBlock(scope: !2261, file: !1, line: 383, column: 26)
!2261 = distinct !DILexicalBlock(scope: !2262, file: !1, line: 383, column: 7)
!2262 = distinct !DISubprogram(name: "discharge2anyreg", scope: !1, file: !1, line: 382, type: !1177, isLocal: true, isDefinition: true, scopeLine: 382, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2263)
!2263 = !{!2264, !2265}
!2264 = !DILocalVariable(name: "fs", arg: 1, scope: !2262, file: !1, line: 382, type: !427)
!2265 = !DILocalVariable(name: "e", arg: 2, scope: !2262, file: !1, line: 382, type: !1115)
!2266 = distinct !DILocation(line: 533, column: 3, scope: !2231)
!2267 = !DILocation(line: 209, column: 43, scope: !984, inlinedAt: !2259)
!2268 = !DILocation(line: 199, column: 34, scope: !954, inlinedAt: !2269)
!2269 = distinct !DILocation(line: 210, column: 3, scope: !984, inlinedAt: !2259)
!2270 = !DILocation(line: 199, column: 42, scope: !954, inlinedAt: !2269)
!2271 = !DILocation(line: 200, column: 22, scope: !954, inlinedAt: !2269)
!2272 = !DILocation(line: 200, column: 30, scope: !954, inlinedAt: !2269)
!2273 = !DILocation(line: 200, column: 7, scope: !954, inlinedAt: !2269)
!2274 = !DILocation(line: 201, column: 22, scope: !966, inlinedAt: !2269)
!2275 = !DILocation(line: 201, column: 25, scope: !966, inlinedAt: !2269)
!2276 = !DILocation(line: 201, column: 18, scope: !966, inlinedAt: !2269)
!2277 = !DILocation(line: 201, column: 16, scope: !966, inlinedAt: !2269)
!2278 = !DILocation(line: 201, column: 7, scope: !954, inlinedAt: !2269)
!2279 = !DILocation(line: 202, column: 18, scope: !973, inlinedAt: !2269)
!2280 = !DILocation(line: 202, column: 9, scope: !974, inlinedAt: !2269)
!2281 = !DILocation(line: 203, column: 28, scope: !973, inlinedAt: !2269)
!2282 = !DILocation(line: 203, column: 7, scope: !973, inlinedAt: !2269)
!2283 = !DILocation(line: 204, column: 9, scope: !974, inlinedAt: !2269)
!2284 = !DILocation(line: 204, column: 12, scope: !974, inlinedAt: !2269)
!2285 = !DILocation(line: 211, column: 15, scope: !984, inlinedAt: !2259)
!2286 = !DILocation(line: 204, column: 27, scope: !974, inlinedAt: !2269)
!2287 = !DILocation(line: 204, column: 25, scope: !974, inlinedAt: !2269)
!2288 = !DILocation(line: 205, column: 3, scope: !974, inlinedAt: !2269)
!2289 = !DILocation(line: 385, column: 37, scope: !2260, inlinedAt: !2266)
!2290 = !DILocation(line: 385, column: 5, scope: !2260, inlinedAt: !2266)
!2291 = !DILocation(line: 224, column: 10, scope: !1316, inlinedAt: !2292)
!2292 = distinct !DILocation(line: 534, column: 3, scope: !2231)
!2293 = !DILocation(line: 386, column: 3, scope: !2260, inlinedAt: !2266)
!2294 = !DILocation(line: 223, column: 33, scope: !1309, inlinedAt: !2292)
!2295 = !DILocation(line: 223, column: 46, scope: !1309, inlinedAt: !2292)
!2296 = !DILocation(line: 224, column: 7, scope: !1309, inlinedAt: !2292)
!2297 = !DILocation(line: 535, column: 46, scope: !2231)
!2298 = !DILocation(line: 535, column: 50, scope: !2231)
!2299 = !DILocation(line: 225, column: 20, scope: !1316, inlinedAt: !2292)
!2300 = !DILocation(line: 225, column: 24, scope: !1316, inlinedAt: !2292)
!2301 = !DILocation(line: 215, column: 33, scope: !1246, inlinedAt: !2302)
!2302 = distinct !DILocation(line: 225, column: 5, scope: !1316, inlinedAt: !2292)
!2303 = !DILocation(line: 215, column: 41, scope: !1246, inlinedAt: !2302)
!2304 = !DILocation(line: 216, column: 8, scope: !1253, inlinedAt: !2302)
!2305 = !DILocation(line: 216, column: 17, scope: !1253, inlinedAt: !2302)
!2306 = !DILocation(line: 216, column: 31, scope: !1253, inlinedAt: !2302)
!2307 = !DILocation(line: 216, column: 27, scope: !1253, inlinedAt: !2302)
!2308 = !DILocation(line: 216, column: 24, scope: !1253, inlinedAt: !2302)
!2309 = !DILocation(line: 216, column: 7, scope: !1246, inlinedAt: !2302)
!2310 = !DILocation(line: 217, column: 9, scope: !1260, inlinedAt: !2302)
!2311 = !DILocation(line: 217, column: 16, scope: !1260, inlinedAt: !2302)
!2312 = !DILocation(line: 219, column: 3, scope: !1260, inlinedAt: !2302)
!2313 = !DILocation(line: 535, column: 10, scope: !2231)
!2314 = !DILocation(line: 535, column: 3, scope: !2231)
!2315 = !DILocation(line: 0, scope: !2253)
!2316 = !DILocation(line: 536, column: 1, scope: !2231)
!2317 = distinct !DISubprogram(name: "luaK_indexed", scope: !1, file: !1, line: 621, type: !1843, isLocal: false, isDefinition: true, scopeLine: 621, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2318)
!2318 = !{!2319, !2320, !2321}
!2319 = !DILocalVariable(name: "fs", arg: 1, scope: !2317, file: !1, line: 621, type: !427)
!2320 = !DILocalVariable(name: "t", arg: 2, scope: !2317, file: !1, line: 621, type: !1115)
!2321 = !DILocalVariable(name: "k", arg: 3, scope: !2317, file: !1, line: 621, type: !1115)
!2322 = !DILocation(line: 621, column: 31, scope: !2317)
!2323 = !DILocation(line: 621, column: 44, scope: !2317)
!2324 = !DILocation(line: 621, column: 56, scope: !2317)
!2325 = !DILocation(line: 622, column: 16, scope: !2317)
!2326 = !DILocation(line: 622, column: 6, scope: !2317)
!2327 = !DILocation(line: 622, column: 8, scope: !2317)
!2328 = !DILocation(line: 622, column: 10, scope: !2317)
!2329 = !DILocation(line: 622, column: 14, scope: !2317)
!2330 = !DILocation(line: 623, column: 6, scope: !2317)
!2331 = !DILocation(line: 623, column: 8, scope: !2317)
!2332 = !DILocation(line: 624, column: 1, scope: !2317)
!2333 = distinct !DISubprogram(name: "luaK_prefix", scope: !1, file: !1, line: 689, type: !2334, isLocal: false, isDefinition: true, scopeLine: 689, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2337)
!2334 = !DISubroutineType(types: !2335)
!2335 = !{null, !427, !2336, !1115}
!2336 = !DIDerivedType(tag: DW_TAG_typedef, name: "UnOpr", file: !64, line: 36, baseType: !63)
!2337 = !{!2338, !2339, !2340, !2341}
!2338 = !DILocalVariable(name: "fs", arg: 1, scope: !2333, file: !1, line: 689, type: !427)
!2339 = !DILocalVariable(name: "op", arg: 2, scope: !2333, file: !1, line: 689, type: !2336)
!2340 = !DILocalVariable(name: "e", arg: 3, scope: !2333, file: !1, line: 689, type: !1115)
!2341 = !DILocalVariable(name: "e2", scope: !2333, file: !1, line: 690, type: !1116)
!2342 = !DILocation(line: 689, column: 30, scope: !2333)
!2343 = !DILocation(line: 689, column: 40, scope: !2333)
!2344 = !DILocation(line: 689, column: 53, scope: !2333)
!2345 = !DILocation(line: 690, column: 3, scope: !2333)
!2346 = !DILocation(line: 691, column: 13, scope: !2333)
!2347 = !DILocation(line: 691, column: 15, scope: !2333)
!2348 = !DILocation(line: 691, column: 6, scope: !2333)
!2349 = !DILocation(line: 691, column: 8, scope: !2333)
!2350 = !DILocation(line: 691, column: 29, scope: !2333)
!2351 = !DILocation(line: 691, column: 31, scope: !2333)
!2352 = !DILocation(line: 691, column: 45, scope: !2333)
!2353 = !DILocation(line: 691, column: 50, scope: !2333)
!2354 = !DILocation(line: 692, column: 3, scope: !2333)
!2355 = !DILocalVariable(name: "e", arg: 1, scope: !2356, file: !1, line: 30, type: !1115)
!2356 = distinct !DISubprogram(name: "isnumeral", scope: !1, file: !1, line: 30, type: !2357, isLocal: true, isDefinition: true, scopeLine: 30, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2359)
!2357 = !DISubroutineType(types: !2358)
!2358 = !{!93, !1115}
!2359 = !{!2355}
!2360 = !DILocation(line: 30, column: 31, scope: !2356, inlinedAt: !2361)
!2361 = distinct !DILocation(line: 694, column: 12, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2363, file: !1, line: 694, column: 11)
!2363 = distinct !DILexicalBlock(scope: !2364, file: !1, line: 693, column: 21)
!2364 = distinct !DILexicalBlock(scope: !2333, file: !1, line: 692, column: 15)
!2365 = !DILocation(line: 31, column: 14, scope: !2356, inlinedAt: !2361)
!2366 = !DILocation(line: 31, column: 16, scope: !2356, inlinedAt: !2361)
!2367 = !DILocation(line: 31, column: 25, scope: !2356, inlinedAt: !2361)
!2368 = !DILocation(line: 31, column: 31, scope: !2356, inlinedAt: !2361)
!2369 = !DILocation(line: 31, column: 33, scope: !2356, inlinedAt: !2361)
!2370 = !DILocation(line: 31, column: 44, scope: !2356, inlinedAt: !2361)
!2371 = !DILocation(line: 31, column: 50, scope: !2356, inlinedAt: !2361)
!2372 = !DILocation(line: 31, column: 52, scope: !2356, inlinedAt: !2361)
!2373 = !DILocation(line: 694, column: 11, scope: !2363)
!2374 = !DILocation(line: 422, column: 33, scope: !1663, inlinedAt: !2375)
!2375 = distinct !DILocation(line: 695, column: 9, scope: !2362)
!2376 = !DILocation(line: 422, column: 46, scope: !1663, inlinedAt: !2375)
!2377 = !DILocation(line: 423, column: 3, scope: !1663, inlinedAt: !2375)
!2378 = !DILocation(line: 424, column: 10, scope: !1673, inlinedAt: !2375)
!2379 = !DILocation(line: 424, column: 12, scope: !1673, inlinedAt: !2375)
!2380 = !DILocation(line: 424, column: 7, scope: !1663, inlinedAt: !2375)
!2381 = !DILocation(line: 425, column: 10, scope: !1679, inlinedAt: !2375)
!2382 = !DILocation(line: 0, scope: !1679, inlinedAt: !2375)
!2383 = !DILocation(line: 425, column: 9, scope: !1680, inlinedAt: !2375)
!2384 = !DILocation(line: 426, column: 28, scope: !1684, inlinedAt: !2375)
!2385 = !DILocation(line: 426, column: 24, scope: !1684, inlinedAt: !2375)
!2386 = !DILocation(line: 426, column: 21, scope: !1684, inlinedAt: !2375)
!2387 = !DILocation(line: 426, column: 9, scope: !1680, inlinedAt: !2375)
!2388 = !DILocation(line: 427, column: 7, scope: !1689, inlinedAt: !2375)
!2389 = !DILocation(line: 428, column: 7, scope: !1689, inlinedAt: !2375)
!2390 = !DILocation(line: 431, column: 3, scope: !1663, inlinedAt: !2375)
!2391 = !DILocation(line: 432, column: 3, scope: !1663, inlinedAt: !2375)
!2392 = !DILocation(line: 690, column: 11, scope: !2333)
!2393 = !DILocation(line: 696, column: 7, scope: !2363)
!2394 = !DILocation(line: 697, column: 7, scope: !2363)
!2395 = !DILocalVariable(name: "fs", arg: 1, scope: !2396, file: !1, line: 586, type: !427)
!2396 = distinct !DISubprogram(name: "codenot", scope: !1, file: !1, line: 586, type: !1177, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2397)
!2397 = !{!2395, !2398, !2399}
!2398 = !DILocalVariable(name: "e", arg: 2, scope: !2396, file: !1, line: 586, type: !1115)
!2399 = !DILocalVariable(name: "temp", scope: !2400, file: !1, line: 615, type: !93)
!2400 = distinct !DILexicalBlock(scope: !2396, file: !1, line: 615, column: 3)
!2401 = !DILocation(line: 586, column: 33, scope: !2396, inlinedAt: !2402)
!2402 = distinct !DILocation(line: 699, column: 19, scope: !2364)
!2403 = !DILocation(line: 586, column: 46, scope: !2396, inlinedAt: !2402)
!2404 = !DILocation(line: 587, column: 3, scope: !2396, inlinedAt: !2402)
!2405 = !DILocation(line: 588, column: 14, scope: !2396, inlinedAt: !2402)
!2406 = !DILocation(line: 588, column: 3, scope: !2396, inlinedAt: !2402)
!2407 = !DILocation(line: 590, column: 12, scope: !2408, inlinedAt: !2402)
!2408 = distinct !DILexicalBlock(scope: !2409, file: !1, line: 589, column: 29)
!2409 = distinct !DILexicalBlock(scope: !2396, file: !1, line: 588, column: 17)
!2410 = !DILocation(line: 591, column: 7, scope: !2408, inlinedAt: !2402)
!2411 = !DILocation(line: 594, column: 12, scope: !2412, inlinedAt: !2402)
!2412 = distinct !DILexicalBlock(scope: !2409, file: !1, line: 593, column: 38)
!2413 = !DILocation(line: 595, column: 7, scope: !2412, inlinedAt: !2402)
!2414 = !DILocation(line: 516, column: 36, scope: !2108, inlinedAt: !2415)
!2415 = distinct !DILocation(line: 598, column: 7, scope: !2416, inlinedAt: !2402)
!2416 = distinct !DILexicalBlock(scope: !2409, file: !1, line: 597, column: 16)
!2417 = !DILocation(line: 516, column: 49, scope: !2108, inlinedAt: !2415)
!2418 = !DILocation(line: 517, column: 43, scope: !2108, inlinedAt: !2415)
!2419 = !DILocation(line: 517, column: 47, scope: !2108, inlinedAt: !2415)
!2420 = !DILocation(line: 109, column: 48, scope: !1442, inlinedAt: !2421)
!2421 = distinct !DILocation(line: 517, column: 21, scope: !2108, inlinedAt: !2415)
!2422 = !DILocation(line: 109, column: 56, scope: !1442, inlinedAt: !2421)
!2423 = !DILocation(line: 110, column: 26, scope: !1442, inlinedAt: !2421)
!2424 = !DILocation(line: 110, column: 29, scope: !1442, inlinedAt: !2421)
!2425 = !DILocation(line: 110, column: 22, scope: !1442, inlinedAt: !2421)
!2426 = !DILocation(line: 110, column: 16, scope: !1442, inlinedAt: !2421)
!2427 = !DILocation(line: 111, column: 10, scope: !1454, inlinedAt: !2421)
!2428 = !DILocation(line: 111, column: 15, scope: !1454, inlinedAt: !2421)
!2429 = !DILocation(line: 111, column: 18, scope: !1454, inlinedAt: !2421)
!2430 = !DILocation(line: 111, column: 7, scope: !1442, inlinedAt: !2421)
!2431 = !DILocation(line: 520, column: 3, scope: !2108, inlinedAt: !2415)
!2432 = !DILocation(line: 114, column: 5, scope: !1454, inlinedAt: !2421)
!2433 = !DILocation(line: 0, scope: !1454, inlinedAt: !2421)
!2434 = !DILocation(line: 517, column: 16, scope: !2108, inlinedAt: !2415)
!2435 = !DILocation(line: 599, column: 7, scope: !2416, inlinedAt: !2402)
!2436 = !DILocation(line: 209, column: 35, scope: !984, inlinedAt: !2437)
!2437 = distinct !DILocation(line: 384, column: 5, scope: !2260, inlinedAt: !2438)
!2438 = distinct !DILocation(line: 603, column: 7, scope: !2439, inlinedAt: !2402)
!2439 = distinct !DILexicalBlock(scope: !2409, file: !1, line: 602, column: 21)
!2440 = !DILocation(line: 209, column: 43, scope: !984, inlinedAt: !2437)
!2441 = !DILocation(line: 199, column: 34, scope: !954, inlinedAt: !2442)
!2442 = distinct !DILocation(line: 210, column: 3, scope: !984, inlinedAt: !2437)
!2443 = !DILocation(line: 199, column: 42, scope: !954, inlinedAt: !2442)
!2444 = !DILocation(line: 200, column: 22, scope: !954, inlinedAt: !2442)
!2445 = !DILocation(line: 200, column: 30, scope: !954, inlinedAt: !2442)
!2446 = !DILocation(line: 200, column: 7, scope: !954, inlinedAt: !2442)
!2447 = !DILocation(line: 201, column: 22, scope: !966, inlinedAt: !2442)
!2448 = !DILocation(line: 201, column: 25, scope: !966, inlinedAt: !2442)
!2449 = !DILocation(line: 201, column: 18, scope: !966, inlinedAt: !2442)
!2450 = !DILocation(line: 201, column: 16, scope: !966, inlinedAt: !2442)
!2451 = !DILocation(line: 201, column: 7, scope: !954, inlinedAt: !2442)
!2452 = !DILocation(line: 202, column: 18, scope: !973, inlinedAt: !2442)
!2453 = !DILocation(line: 202, column: 9, scope: !974, inlinedAt: !2442)
!2454 = !DILocation(line: 203, column: 28, scope: !973, inlinedAt: !2442)
!2455 = !DILocation(line: 203, column: 7, scope: !973, inlinedAt: !2442)
!2456 = !DILocation(line: 204, column: 9, scope: !974, inlinedAt: !2442)
!2457 = !DILocation(line: 204, column: 12, scope: !974, inlinedAt: !2442)
!2458 = !DILocation(line: 211, column: 15, scope: !984, inlinedAt: !2437)
!2459 = !DILocation(line: 204, column: 27, scope: !974, inlinedAt: !2442)
!2460 = !DILocation(line: 204, column: 25, scope: !974, inlinedAt: !2442)
!2461 = !DILocation(line: 205, column: 3, scope: !974, inlinedAt: !2442)
!2462 = !DILocation(line: 385, column: 37, scope: !2260, inlinedAt: !2438)
!2463 = !DILocation(line: 385, column: 5, scope: !2260, inlinedAt: !2438)
!2464 = !DILocation(line: 224, column: 10, scope: !1316, inlinedAt: !2465)
!2465 = distinct !DILocation(line: 604, column: 7, scope: !2439, inlinedAt: !2402)
!2466 = !DILocation(line: 386, column: 3, scope: !2260, inlinedAt: !2438)
!2467 = !DILocation(line: 223, column: 33, scope: !1309, inlinedAt: !2465)
!2468 = !DILocation(line: 223, column: 46, scope: !1309, inlinedAt: !2465)
!2469 = !DILocation(line: 224, column: 7, scope: !1309, inlinedAt: !2465)
!2470 = !DILocation(line: 605, column: 52, scope: !2439, inlinedAt: !2402)
!2471 = !DILocation(line: 605, column: 56, scope: !2439, inlinedAt: !2402)
!2472 = !DILocation(line: 225, column: 20, scope: !1316, inlinedAt: !2465)
!2473 = !DILocation(line: 225, column: 24, scope: !1316, inlinedAt: !2465)
!2474 = !DILocation(line: 215, column: 33, scope: !1246, inlinedAt: !2475)
!2475 = distinct !DILocation(line: 225, column: 5, scope: !1316, inlinedAt: !2465)
!2476 = !DILocation(line: 215, column: 41, scope: !1246, inlinedAt: !2475)
!2477 = !DILocation(line: 216, column: 8, scope: !1253, inlinedAt: !2475)
!2478 = !DILocation(line: 216, column: 17, scope: !1253, inlinedAt: !2475)
!2479 = !DILocation(line: 216, column: 31, scope: !1253, inlinedAt: !2475)
!2480 = !DILocation(line: 216, column: 27, scope: !1253, inlinedAt: !2475)
!2481 = !DILocation(line: 216, column: 24, scope: !1253, inlinedAt: !2475)
!2482 = !DILocation(line: 216, column: 7, scope: !1246, inlinedAt: !2475)
!2483 = !DILocation(line: 217, column: 9, scope: !1260, inlinedAt: !2475)
!2484 = !DILocation(line: 217, column: 16, scope: !1260, inlinedAt: !2475)
!2485 = !DILocation(line: 219, column: 3, scope: !1260, inlinedAt: !2475)
!2486 = !DILocation(line: 804, column: 30, scope: !571, inlinedAt: !2487)
!2487 = distinct !DILocation(line: 605, column: 21, scope: !2439, inlinedAt: !2402)
!2488 = !DILocation(line: 804, column: 41, scope: !571, inlinedAt: !2487)
!2489 = !DILocation(line: 804, column: 48, scope: !571, inlinedAt: !2487)
!2490 = !DILocation(line: 804, column: 55, scope: !571, inlinedAt: !2487)
!2491 = !DILocation(line: 804, column: 62, scope: !571, inlinedAt: !2487)
!2492 = !DILocation(line: 808, column: 24, scope: !571, inlinedAt: !2487)
!2493 = !DILocation(line: 808, column: 52, scope: !571, inlinedAt: !2487)
!2494 = !DILocation(line: 808, column: 56, scope: !571, inlinedAt: !2487)
!2495 = !DILocation(line: 808, column: 10, scope: !571, inlinedAt: !2487)
!2496 = !DILocation(line: 605, column: 19, scope: !2439, inlinedAt: !2402)
!2497 = !DILocation(line: 606, column: 12, scope: !2439, inlinedAt: !2402)
!2498 = !DILocation(line: 607, column: 7, scope: !2439, inlinedAt: !2402)
!2499 = !DILocation(line: 615, column: 19, scope: !2400, inlinedAt: !2402)
!2500 = !DILocation(line: 615, column: 9, scope: !2400, inlinedAt: !2402)
!2501 = !DILocation(line: 615, column: 32, scope: !2400, inlinedAt: !2402)
!2502 = !DILocation(line: 615, column: 27, scope: !2400, inlinedAt: !2402)
!2503 = !DILocation(line: 615, column: 40, scope: !2400, inlinedAt: !2402)
!2504 = !DILocalVariable(name: "fs", arg: 1, scope: !2505, file: !1, line: 144, type: !427)
!2505 = distinct !DISubprogram(name: "removevalues", scope: !1, file: !1, line: 144, type: !787, isLocal: true, isDefinition: true, scopeLine: 144, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2506)
!2506 = !{!2504, !2507}
!2507 = !DILocalVariable(name: "list", arg: 2, scope: !2505, file: !1, line: 144, type: !93)
!2508 = !DILocation(line: 144, column: 38, scope: !2505, inlinedAt: !2509)
!2509 = distinct !DILocation(line: 616, column: 3, scope: !2396, inlinedAt: !2402)
!2510 = !DILocation(line: 144, column: 46, scope: !2505, inlinedAt: !2509)
!2511 = !DILocation(line: 145, column: 15, scope: !2512, inlinedAt: !2509)
!2512 = distinct !DILexicalBlock(scope: !2513, file: !1, line: 145, column: 3)
!2513 = distinct !DILexicalBlock(scope: !2505, file: !1, line: 145, column: 3)
!2514 = !DILocation(line: 145, column: 3, scope: !2513, inlinedAt: !2509)
!2515 = !DILocation(line: 110, column: 26, scope: !1442, inlinedAt: !2516)
!2516 = distinct !DILocation(line: 132, column: 20, scope: !2517, inlinedAt: !2525)
!2517 = distinct !DISubprogram(name: "patchtestreg", scope: !1, file: !1, line: 131, type: !2518, isLocal: true, isDefinition: true, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2520)
!2518 = !DISubroutineType(types: !2519)
!2519 = !{!93, !427, !93, !93}
!2520 = !{!2521, !2522, !2523, !2524}
!2521 = !DILocalVariable(name: "fs", arg: 1, scope: !2517, file: !1, line: 131, type: !427)
!2522 = !DILocalVariable(name: "node", arg: 2, scope: !2517, file: !1, line: 131, type: !93)
!2523 = !DILocalVariable(name: "reg", arg: 3, scope: !2517, file: !1, line: 131, type: !93)
!2524 = !DILocalVariable(name: "i", scope: !2517, file: !1, line: 132, type: !385)
!2525 = distinct !DILocation(line: 146, column: 7, scope: !2512, inlinedAt: !2509)
!2526 = !DILocation(line: 110, column: 29, scope: !1442, inlinedAt: !2516)
!2527 = !DILocation(line: 131, column: 37, scope: !2517, inlinedAt: !2525)
!2528 = !DILocation(line: 131, column: 45, scope: !2517, inlinedAt: !2525)
!2529 = !DILocation(line: 131, column: 55, scope: !2517, inlinedAt: !2525)
!2530 = !DILocation(line: 109, column: 48, scope: !1442, inlinedAt: !2516)
!2531 = !DILocation(line: 109, column: 56, scope: !1442, inlinedAt: !2516)
!2532 = !DILocation(line: 110, column: 22, scope: !1442, inlinedAt: !2516)
!2533 = !DILocation(line: 110, column: 16, scope: !1442, inlinedAt: !2516)
!2534 = !DILocation(line: 111, column: 10, scope: !1454, inlinedAt: !2516)
!2535 = !DILocation(line: 111, column: 15, scope: !1454, inlinedAt: !2516)
!2536 = !DILocation(line: 111, column: 18, scope: !1454, inlinedAt: !2516)
!2537 = !DILocation(line: 111, column: 7, scope: !1442, inlinedAt: !2516)
!2538 = !DILocation(line: 133, column: 7, scope: !2539, inlinedAt: !2525)
!2539 = distinct !DILexicalBlock(scope: !2517, file: !1, line: 133, column: 7)
!2540 = !DILocation(line: 114, column: 5, scope: !1454, inlinedAt: !2516)
!2541 = !DILocation(line: 0, scope: !1454, inlinedAt: !2516)
!2542 = !DILocation(line: 132, column: 16, scope: !2517, inlinedAt: !2525)
!2543 = !DILocation(line: 133, column: 22, scope: !2539, inlinedAt: !2525)
!2544 = !DILocation(line: 133, column: 7, scope: !2517, inlinedAt: !2525)
!2545 = !DILocation(line: 135, column: 31, scope: !2546, inlinedAt: !2525)
!2546 = distinct !DILexicalBlock(scope: !2517, file: !1, line: 135, column: 7)
!2547 = !DILocation(line: 138, column: 10, scope: !2546, inlinedAt: !2525)
!2548 = !DILocation(line: 0, scope: !2546, inlinedAt: !2525)
!2549 = !DILocation(line: 140, column: 3, scope: !2517, inlinedAt: !2525)
!2550 = !DILocation(line: 100, column: 32, scope: !653, inlinedAt: !2551)
!2551 = distinct !DILocation(line: 145, column: 34, scope: !2512, inlinedAt: !2509)
!2552 = !DILocation(line: 100, column: 40, scope: !653, inlinedAt: !2551)
!2553 = !DILocation(line: 101, column: 16, scope: !653, inlinedAt: !2551)
!2554 = !DILocation(line: 101, column: 7, scope: !653, inlinedAt: !2551)
!2555 = !DILocation(line: 102, column: 14, scope: !667, inlinedAt: !2551)
!2556 = !DILocation(line: 105, column: 15, scope: !667, inlinedAt: !2551)
!2557 = !DILocation(line: 105, column: 18, scope: !667, inlinedAt: !2551)
!2558 = !DILocation(line: 617, column: 23, scope: !2396, inlinedAt: !2402)
!2559 = !DILocation(line: 144, column: 38, scope: !2505, inlinedAt: !2560)
!2560 = distinct !DILocation(line: 617, column: 3, scope: !2396, inlinedAt: !2402)
!2561 = !DILocation(line: 144, column: 46, scope: !2505, inlinedAt: !2560)
!2562 = !DILocation(line: 145, column: 15, scope: !2512, inlinedAt: !2560)
!2563 = !DILocation(line: 145, column: 3, scope: !2513, inlinedAt: !2560)
!2564 = !DILocation(line: 110, column: 26, scope: !1442, inlinedAt: !2565)
!2565 = distinct !DILocation(line: 132, column: 20, scope: !2517, inlinedAt: !2566)
!2566 = distinct !DILocation(line: 146, column: 7, scope: !2512, inlinedAt: !2560)
!2567 = !DILocation(line: 110, column: 29, scope: !1442, inlinedAt: !2565)
!2568 = !DILocation(line: 131, column: 37, scope: !2517, inlinedAt: !2566)
!2569 = !DILocation(line: 131, column: 45, scope: !2517, inlinedAt: !2566)
!2570 = !DILocation(line: 131, column: 55, scope: !2517, inlinedAt: !2566)
!2571 = !DILocation(line: 109, column: 48, scope: !1442, inlinedAt: !2565)
!2572 = !DILocation(line: 109, column: 56, scope: !1442, inlinedAt: !2565)
!2573 = !DILocation(line: 110, column: 22, scope: !1442, inlinedAt: !2565)
!2574 = !DILocation(line: 110, column: 16, scope: !1442, inlinedAt: !2565)
!2575 = !DILocation(line: 111, column: 10, scope: !1454, inlinedAt: !2565)
!2576 = !DILocation(line: 111, column: 15, scope: !1454, inlinedAt: !2565)
!2577 = !DILocation(line: 111, column: 18, scope: !1454, inlinedAt: !2565)
!2578 = !DILocation(line: 111, column: 7, scope: !1442, inlinedAt: !2565)
!2579 = !DILocation(line: 133, column: 7, scope: !2539, inlinedAt: !2566)
!2580 = !DILocation(line: 114, column: 5, scope: !1454, inlinedAt: !2565)
!2581 = !DILocation(line: 0, scope: !1454, inlinedAt: !2565)
!2582 = !DILocation(line: 132, column: 16, scope: !2517, inlinedAt: !2566)
!2583 = !DILocation(line: 133, column: 22, scope: !2539, inlinedAt: !2566)
!2584 = !DILocation(line: 133, column: 7, scope: !2517, inlinedAt: !2566)
!2585 = !DILocation(line: 135, column: 31, scope: !2546, inlinedAt: !2566)
!2586 = !DILocation(line: 138, column: 10, scope: !2546, inlinedAt: !2566)
!2587 = !DILocation(line: 0, scope: !2546, inlinedAt: !2566)
!2588 = !DILocation(line: 140, column: 3, scope: !2517, inlinedAt: !2566)
!2589 = !DILocation(line: 100, column: 32, scope: !653, inlinedAt: !2590)
!2590 = distinct !DILocation(line: 145, column: 34, scope: !2512, inlinedAt: !2560)
!2591 = !DILocation(line: 100, column: 40, scope: !653, inlinedAt: !2590)
!2592 = !DILocation(line: 101, column: 16, scope: !653, inlinedAt: !2590)
!2593 = !DILocation(line: 101, column: 7, scope: !653, inlinedAt: !2590)
!2594 = !DILocation(line: 102, column: 14, scope: !667, inlinedAt: !2590)
!2595 = !DILocation(line: 105, column: 15, scope: !667, inlinedAt: !2590)
!2596 = !DILocation(line: 105, column: 18, scope: !667, inlinedAt: !2590)
!2597 = !DILocation(line: 422, column: 33, scope: !1663, inlinedAt: !2598)
!2598 = distinct !DILocation(line: 701, column: 7, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !2364, file: !1, line: 700, column: 19)
!2600 = !DILocation(line: 422, column: 46, scope: !1663, inlinedAt: !2598)
!2601 = !DILocation(line: 423, column: 3, scope: !1663, inlinedAt: !2598)
!2602 = !DILocation(line: 424, column: 10, scope: !1673, inlinedAt: !2598)
!2603 = !DILocation(line: 424, column: 12, scope: !1673, inlinedAt: !2598)
!2604 = !DILocation(line: 424, column: 7, scope: !1663, inlinedAt: !2598)
!2605 = !DILocation(line: 425, column: 10, scope: !1679, inlinedAt: !2598)
!2606 = !DILocation(line: 0, scope: !1679, inlinedAt: !2598)
!2607 = !DILocation(line: 425, column: 9, scope: !1680, inlinedAt: !2598)
!2608 = !DILocation(line: 426, column: 28, scope: !1684, inlinedAt: !2598)
!2609 = !DILocation(line: 426, column: 24, scope: !1684, inlinedAt: !2598)
!2610 = !DILocation(line: 426, column: 21, scope: !1684, inlinedAt: !2598)
!2611 = !DILocation(line: 426, column: 9, scope: !1680, inlinedAt: !2598)
!2612 = !DILocation(line: 427, column: 7, scope: !1689, inlinedAt: !2598)
!2613 = !DILocation(line: 428, column: 7, scope: !1689, inlinedAt: !2598)
!2614 = !DILocation(line: 431, column: 3, scope: !1663, inlinedAt: !2598)
!2615 = !DILocation(line: 432, column: 3, scope: !1663, inlinedAt: !2598)
!2616 = !DILocation(line: 702, column: 7, scope: !2599)
!2617 = !DILocation(line: 703, column: 7, scope: !2599)
!2618 = !DILocation(line: 707, column: 1, scope: !2333)
!2619 = distinct !DISubprogram(name: "codearith", scope: !1, file: !1, line: 653, type: !2620, isLocal: true, isDefinition: true, scopeLine: 653, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2622)
!2620 = !DISubroutineType(types: !2621)
!2621 = !{null, !427, !89, !1115, !1115}
!2622 = !{!2623, !2624, !2625, !2626, !2627, !2630}
!2623 = !DILocalVariable(name: "fs", arg: 1, scope: !2619, file: !1, line: 653, type: !427)
!2624 = !DILocalVariable(name: "op", arg: 2, scope: !2619, file: !1, line: 653, type: !89)
!2625 = !DILocalVariable(name: "e1", arg: 3, scope: !2619, file: !1, line: 653, type: !1115)
!2626 = !DILocalVariable(name: "e2", arg: 4, scope: !2619, file: !1, line: 653, type: !1115)
!2627 = !DILocalVariable(name: "o2", scope: !2628, file: !1, line: 657, type: !93)
!2628 = distinct !DILexicalBlock(scope: !2629, file: !1, line: 656, column: 8)
!2629 = distinct !DILexicalBlock(scope: !2619, file: !1, line: 654, column: 7)
!2630 = !DILocalVariable(name: "o1", scope: !2628, file: !1, line: 658, type: !93)
!2631 = !DILocation(line: 653, column: 35, scope: !2619)
!2632 = !DILocation(line: 653, column: 46, scope: !2619)
!2633 = !DILocation(line: 653, column: 59, scope: !2619)
!2634 = !DILocation(line: 653, column: 72, scope: !2619)
!2635 = !DILocalVariable(name: "op", arg: 1, scope: !2636, file: !1, line: 627, type: !89)
!2636 = distinct !DISubprogram(name: "constfolding", scope: !1, file: !1, line: 627, type: !2637, isLocal: true, isDefinition: true, scopeLine: 627, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2639)
!2637 = !DISubroutineType(types: !2638)
!2638 = !{!93, !89, !1115, !1115}
!2639 = !{!2635, !2640, !2641, !2642, !2643, !2644}
!2640 = !DILocalVariable(name: "e1", arg: 2, scope: !2636, file: !1, line: 627, type: !1115)
!2641 = !DILocalVariable(name: "e2", arg: 3, scope: !2636, file: !1, line: 627, type: !1115)
!2642 = !DILocalVariable(name: "v1", scope: !2636, file: !1, line: 628, type: !166)
!2643 = !DILocalVariable(name: "v2", scope: !2636, file: !1, line: 628, type: !166)
!2644 = !DILocalVariable(name: "r", scope: !2636, file: !1, line: 628, type: !166)
!2645 = !DILocation(line: 627, column: 33, scope: !2636, inlinedAt: !2646)
!2646 = distinct !DILocation(line: 654, column: 7, scope: !2629)
!2647 = !DILocation(line: 627, column: 46, scope: !2636, inlinedAt: !2646)
!2648 = !DILocation(line: 627, column: 59, scope: !2636, inlinedAt: !2646)
!2649 = !DILocation(line: 30, column: 31, scope: !2356, inlinedAt: !2650)
!2650 = distinct !DILocation(line: 629, column: 8, scope: !2651, inlinedAt: !2646)
!2651 = distinct !DILexicalBlock(scope: !2636, file: !1, line: 629, column: 7)
!2652 = !DILocation(line: 31, column: 14, scope: !2356, inlinedAt: !2650)
!2653 = !DILocation(line: 31, column: 16, scope: !2356, inlinedAt: !2650)
!2654 = !DILocation(line: 31, column: 25, scope: !2356, inlinedAt: !2650)
!2655 = !DILocation(line: 31, column: 31, scope: !2356, inlinedAt: !2650)
!2656 = !DILocation(line: 31, column: 33, scope: !2356, inlinedAt: !2650)
!2657 = !DILocation(line: 31, column: 44, scope: !2356, inlinedAt: !2650)
!2658 = !DILocation(line: 31, column: 50, scope: !2356, inlinedAt: !2650)
!2659 = !DILocation(line: 31, column: 52, scope: !2356, inlinedAt: !2650)
!2660 = !DILocation(line: 629, column: 22, scope: !2651, inlinedAt: !2646)
!2661 = !DILocation(line: 30, column: 31, scope: !2356, inlinedAt: !2662)
!2662 = distinct !DILocation(line: 629, column: 26, scope: !2651, inlinedAt: !2646)
!2663 = !DILocation(line: 31, column: 14, scope: !2356, inlinedAt: !2662)
!2664 = !DILocation(line: 31, column: 16, scope: !2356, inlinedAt: !2662)
!2665 = !DILocation(line: 31, column: 25, scope: !2356, inlinedAt: !2662)
!2666 = !DILocation(line: 31, column: 31, scope: !2356, inlinedAt: !2662)
!2667 = !DILocation(line: 31, column: 33, scope: !2356, inlinedAt: !2662)
!2668 = !DILocation(line: 31, column: 44, scope: !2356, inlinedAt: !2662)
!2669 = !DILocation(line: 31, column: 50, scope: !2356, inlinedAt: !2662)
!2670 = !DILocation(line: 31, column: 52, scope: !2356, inlinedAt: !2662)
!2671 = !DILocation(line: 629, column: 7, scope: !2636, inlinedAt: !2646)
!2672 = !DILocation(line: 630, column: 14, scope: !2636, inlinedAt: !2646)
!2673 = !DILocation(line: 628, column: 14, scope: !2636, inlinedAt: !2646)
!2674 = !DILocation(line: 631, column: 14, scope: !2636, inlinedAt: !2646)
!2675 = !DILocation(line: 628, column: 18, scope: !2636, inlinedAt: !2646)
!2676 = !DILocation(line: 632, column: 3, scope: !2636, inlinedAt: !2646)
!2677 = !DILocation(line: 633, column: 22, scope: !2678, inlinedAt: !2646)
!2678 = distinct !DILexicalBlock(scope: !2636, file: !1, line: 632, column: 15)
!2679 = !DILocation(line: 628, column: 22, scope: !2636, inlinedAt: !2646)
!2680 = !DILocation(line: 633, column: 43, scope: !2678, inlinedAt: !2646)
!2681 = !DILocation(line: 634, column: 22, scope: !2678, inlinedAt: !2646)
!2682 = !DILocation(line: 634, column: 43, scope: !2678, inlinedAt: !2646)
!2683 = !DILocation(line: 635, column: 22, scope: !2678, inlinedAt: !2646)
!2684 = !DILocation(line: 635, column: 43, scope: !2678, inlinedAt: !2646)
!2685 = !DILocation(line: 637, column: 14, scope: !2686, inlinedAt: !2646)
!2686 = distinct !DILexicalBlock(scope: !2678, file: !1, line: 637, column: 11)
!2687 = !DILocation(line: 637, column: 11, scope: !2678, inlinedAt: !2646)
!2688 = !DILocation(line: 638, column: 11, scope: !2678, inlinedAt: !2646)
!2689 = !DILocation(line: 638, column: 32, scope: !2678, inlinedAt: !2646)
!2690 = !DILocation(line: 640, column: 14, scope: !2691, inlinedAt: !2646)
!2691 = distinct !DILexicalBlock(scope: !2678, file: !1, line: 640, column: 11)
!2692 = !DILocation(line: 640, column: 11, scope: !2678, inlinedAt: !2646)
!2693 = !DILocation(line: 641, column: 11, scope: !2678, inlinedAt: !2646)
!2694 = !DILocation(line: 641, column: 32, scope: !2678, inlinedAt: !2646)
!2695 = !DILocation(line: 642, column: 22, scope: !2678, inlinedAt: !2646)
!2696 = !DILocation(line: 642, column: 43, scope: !2678, inlinedAt: !2646)
!2697 = !DILocation(line: 643, column: 22, scope: !2678, inlinedAt: !2646)
!2698 = !DILocation(line: 643, column: 39, scope: !2678, inlinedAt: !2646)
!2699 = !DILocation(line: 0, scope: !2678, inlinedAt: !2646)
!2700 = !DILocation(line: 647, column: 7, scope: !2701, inlinedAt: !2646)
!2701 = distinct !DILexicalBlock(scope: !2636, file: !1, line: 647, column: 7)
!2702 = !DILocation(line: 647, column: 7, scope: !2636, inlinedAt: !2646)
!2703 = !DILocation(line: 648, column: 14, scope: !2636, inlinedAt: !2646)
!2704 = !DILocation(line: 654, column: 7, scope: !2619)
!2705 = !DILocation(line: 657, column: 28, scope: !2628)
!2706 = !DILocation(line: 657, column: 47, scope: !2628)
!2707 = !DILocation(line: 657, column: 14, scope: !2628)
!2708 = !DILocation(line: 657, column: 9, scope: !2628)
!2709 = !DILocation(line: 658, column: 14, scope: !2628)
!2710 = !DILocation(line: 658, column: 9, scope: !2628)
!2711 = !DILocation(line: 659, column: 12, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2628, file: !1, line: 659, column: 9)
!2713 = !DILocation(line: 223, column: 33, scope: !1309, inlinedAt: !2714)
!2714 = distinct !DILocation(line: 660, column: 7, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2712, file: !1, line: 659, column: 18)
!2716 = !DILocation(line: 223, column: 33, scope: !1309, inlinedAt: !2717)
!2717 = distinct !DILocation(line: 664, column: 7, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2712, file: !1, line: 663, column: 10)
!2719 = !DILocation(line: 659, column: 9, scope: !2628)
!2720 = !DILocation(line: 223, column: 46, scope: !1309, inlinedAt: !2714)
!2721 = !DILocation(line: 224, column: 10, scope: !1316, inlinedAt: !2714)
!2722 = !DILocation(line: 224, column: 12, scope: !1316, inlinedAt: !2714)
!2723 = !DILocation(line: 224, column: 7, scope: !1309, inlinedAt: !2714)
!2724 = !DILocation(line: 225, column: 20, scope: !1316, inlinedAt: !2714)
!2725 = !DILocation(line: 225, column: 24, scope: !1316, inlinedAt: !2714)
!2726 = !DILocation(line: 215, column: 33, scope: !1246, inlinedAt: !2727)
!2727 = distinct !DILocation(line: 225, column: 5, scope: !1316, inlinedAt: !2714)
!2728 = !DILocation(line: 215, column: 41, scope: !1246, inlinedAt: !2727)
!2729 = !DILocation(line: 216, column: 8, scope: !1253, inlinedAt: !2727)
!2730 = !DILocation(line: 216, column: 17, scope: !1253, inlinedAt: !2727)
!2731 = !DILocation(line: 216, column: 31, scope: !1253, inlinedAt: !2727)
!2732 = !DILocation(line: 216, column: 27, scope: !1253, inlinedAt: !2727)
!2733 = !DILocation(line: 216, column: 24, scope: !1253, inlinedAt: !2727)
!2734 = !DILocation(line: 216, column: 7, scope: !1246, inlinedAt: !2727)
!2735 = !DILocation(line: 217, column: 9, scope: !1260, inlinedAt: !2727)
!2736 = !DILocation(line: 217, column: 16, scope: !1260, inlinedAt: !2727)
!2737 = !DILocation(line: 219, column: 3, scope: !1260, inlinedAt: !2727)
!2738 = !DILocation(line: 223, column: 33, scope: !1309, inlinedAt: !2739)
!2739 = distinct !DILocation(line: 661, column: 7, scope: !2715)
!2740 = !DILocation(line: 223, column: 46, scope: !1309, inlinedAt: !2739)
!2741 = !DILocation(line: 224, column: 10, scope: !1316, inlinedAt: !2739)
!2742 = !DILocation(line: 224, column: 12, scope: !1316, inlinedAt: !2739)
!2743 = !DILocation(line: 224, column: 7, scope: !1309, inlinedAt: !2739)
!2744 = !DILocation(line: 225, column: 20, scope: !1316, inlinedAt: !2739)
!2745 = !DILocation(line: 225, column: 24, scope: !1316, inlinedAt: !2739)
!2746 = !DILocation(line: 215, column: 33, scope: !1246, inlinedAt: !2747)
!2747 = distinct !DILocation(line: 225, column: 5, scope: !1316, inlinedAt: !2739)
!2748 = !DILocation(line: 215, column: 41, scope: !1246, inlinedAt: !2747)
!2749 = !DILocation(line: 216, column: 8, scope: !1253, inlinedAt: !2747)
!2750 = !DILocation(line: 216, column: 17, scope: !1253, inlinedAt: !2747)
!2751 = !DILocation(line: 216, column: 31, scope: !1253, inlinedAt: !2747)
!2752 = !DILocation(line: 216, column: 27, scope: !1253, inlinedAt: !2747)
!2753 = !DILocation(line: 216, column: 24, scope: !1253, inlinedAt: !2747)
!2754 = !DILocation(line: 216, column: 7, scope: !1246, inlinedAt: !2747)
!2755 = !DILocation(line: 217, column: 9, scope: !1260, inlinedAt: !2747)
!2756 = !DILocation(line: 217, column: 16, scope: !1260, inlinedAt: !2747)
!2757 = !DILocation(line: 219, column: 3, scope: !1260, inlinedAt: !2747)
!2758 = !DILocation(line: 223, column: 46, scope: !1309, inlinedAt: !2717)
!2759 = !DILocation(line: 224, column: 10, scope: !1316, inlinedAt: !2717)
!2760 = !DILocation(line: 224, column: 12, scope: !1316, inlinedAt: !2717)
!2761 = !DILocation(line: 224, column: 7, scope: !1309, inlinedAt: !2717)
!2762 = !DILocation(line: 225, column: 20, scope: !1316, inlinedAt: !2717)
!2763 = !DILocation(line: 225, column: 24, scope: !1316, inlinedAt: !2717)
!2764 = !DILocation(line: 215, column: 33, scope: !1246, inlinedAt: !2765)
!2765 = distinct !DILocation(line: 225, column: 5, scope: !1316, inlinedAt: !2717)
!2766 = !DILocation(line: 215, column: 41, scope: !1246, inlinedAt: !2765)
!2767 = !DILocation(line: 216, column: 8, scope: !1253, inlinedAt: !2765)
!2768 = !DILocation(line: 216, column: 17, scope: !1253, inlinedAt: !2765)
!2769 = !DILocation(line: 216, column: 31, scope: !1253, inlinedAt: !2765)
!2770 = !DILocation(line: 216, column: 27, scope: !1253, inlinedAt: !2765)
!2771 = !DILocation(line: 216, column: 24, scope: !1253, inlinedAt: !2765)
!2772 = !DILocation(line: 216, column: 7, scope: !1246, inlinedAt: !2765)
!2773 = !DILocation(line: 217, column: 9, scope: !1260, inlinedAt: !2765)
!2774 = !DILocation(line: 217, column: 16, scope: !1260, inlinedAt: !2765)
!2775 = !DILocation(line: 219, column: 3, scope: !1260, inlinedAt: !2765)
!2776 = !DILocation(line: 223, column: 33, scope: !1309, inlinedAt: !2777)
!2777 = distinct !DILocation(line: 665, column: 7, scope: !2718)
!2778 = !DILocation(line: 223, column: 46, scope: !1309, inlinedAt: !2777)
!2779 = !DILocation(line: 224, column: 10, scope: !1316, inlinedAt: !2777)
!2780 = !DILocation(line: 224, column: 12, scope: !1316, inlinedAt: !2777)
!2781 = !DILocation(line: 224, column: 7, scope: !1309, inlinedAt: !2777)
!2782 = !DILocation(line: 225, column: 20, scope: !1316, inlinedAt: !2777)
!2783 = !DILocation(line: 225, column: 24, scope: !1316, inlinedAt: !2777)
!2784 = !DILocation(line: 215, column: 33, scope: !1246, inlinedAt: !2785)
!2785 = distinct !DILocation(line: 225, column: 5, scope: !1316, inlinedAt: !2777)
!2786 = !DILocation(line: 215, column: 41, scope: !1246, inlinedAt: !2785)
!2787 = !DILocation(line: 216, column: 8, scope: !1253, inlinedAt: !2785)
!2788 = !DILocation(line: 216, column: 17, scope: !1253, inlinedAt: !2785)
!2789 = !DILocation(line: 216, column: 31, scope: !1253, inlinedAt: !2785)
!2790 = !DILocation(line: 216, column: 27, scope: !1253, inlinedAt: !2785)
!2791 = !DILocation(line: 216, column: 24, scope: !1253, inlinedAt: !2785)
!2792 = !DILocation(line: 216, column: 7, scope: !1246, inlinedAt: !2785)
!2793 = !DILocation(line: 217, column: 9, scope: !1260, inlinedAt: !2785)
!2794 = !DILocation(line: 217, column: 16, scope: !1260, inlinedAt: !2785)
!2795 = !DILocation(line: 219, column: 3, scope: !1260, inlinedAt: !2785)
!2796 = !DILocation(line: 804, column: 30, scope: !571, inlinedAt: !2797)
!2797 = distinct !DILocation(line: 667, column: 20, scope: !2628)
!2798 = !DILocation(line: 804, column: 41, scope: !571, inlinedAt: !2797)
!2799 = !DILocation(line: 804, column: 48, scope: !571, inlinedAt: !2797)
!2800 = !DILocation(line: 804, column: 55, scope: !571, inlinedAt: !2797)
!2801 = !DILocation(line: 804, column: 62, scope: !571, inlinedAt: !2797)
!2802 = !DILocation(line: 808, column: 24, scope: !571, inlinedAt: !2797)
!2803 = !DILocation(line: 808, column: 52, scope: !571, inlinedAt: !2797)
!2804 = !DILocation(line: 808, column: 56, scope: !571, inlinedAt: !2797)
!2805 = !DILocation(line: 808, column: 10, scope: !571, inlinedAt: !2797)
!2806 = !DILocation(line: 667, column: 9, scope: !2628)
!2807 = !DILocation(line: 667, column: 13, scope: !2628)
!2808 = !DILocation(line: 667, column: 18, scope: !2628)
!2809 = !DILocation(line: 668, column: 11, scope: !2628)
!2810 = !DILocation(line: 670, column: 1, scope: !2619)
!2811 = distinct !DISubprogram(name: "luaK_infix", scope: !1, file: !1, line: 710, type: !2812, isLocal: false, isDefinition: true, scopeLine: 710, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2815)
!2812 = !DISubroutineType(types: !2813)
!2813 = !{null, !427, !2814, !1115}
!2814 = !DIDerivedType(tag: DW_TAG_typedef, name: "BinOpr", file: !64, line: 33, baseType: !70)
!2815 = !{!2816, !2817, !2818}
!2816 = !DILocalVariable(name: "fs", arg: 1, scope: !2811, file: !1, line: 710, type: !427)
!2817 = !DILocalVariable(name: "op", arg: 2, scope: !2811, file: !1, line: 710, type: !2814)
!2818 = !DILocalVariable(name: "v", arg: 3, scope: !2811, file: !1, line: 710, type: !1115)
!2819 = !DILocation(line: 710, column: 29, scope: !2811)
!2820 = !DILocation(line: 710, column: 40, scope: !2811)
!2821 = !DILocation(line: 710, column: 53, scope: !2811)
!2822 = !DILocation(line: 711, column: 3, scope: !2811)
!2823 = !DILocation(line: 713, column: 7, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2825, file: !1, line: 712, column: 19)
!2825 = distinct !DILexicalBlock(scope: !2811, file: !1, line: 711, column: 15)
!2826 = !DILocation(line: 714, column: 7, scope: !2824)
!2827 = !DILocalVariable(name: "fs", arg: 1, scope: !2828, file: !1, line: 563, type: !427)
!2828 = distinct !DISubprogram(name: "luaK_goiffalse", scope: !1, file: !1, line: 563, type: !1177, isLocal: true, isDefinition: true, scopeLine: 563, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2829)
!2829 = !{!2827, !2830, !2831}
!2830 = !DILocalVariable(name: "e", arg: 2, scope: !2828, file: !1, line: 563, type: !1115)
!2831 = !DILocalVariable(name: "pc", scope: !2828, file: !1, line: 564, type: !93)
!2832 = !DILocation(line: 563, column: 40, scope: !2828, inlinedAt: !2833)
!2833 = distinct !DILocation(line: 717, column: 7, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !2825, file: !1, line: 716, column: 18)
!2835 = !DILocation(line: 563, column: 53, scope: !2828, inlinedAt: !2833)
!2836 = !DILocation(line: 565, column: 3, scope: !2828, inlinedAt: !2833)
!2837 = !DILocation(line: 566, column: 14, scope: !2828, inlinedAt: !2833)
!2838 = !DILocation(line: 566, column: 3, scope: !2828, inlinedAt: !2833)
!2839 = !DILocation(line: 572, column: 15, scope: !2840, inlinedAt: !2833)
!2840 = distinct !DILexicalBlock(scope: !2841, file: !1, line: 571, column: 16)
!2841 = distinct !DILexicalBlock(scope: !2828, file: !1, line: 566, column: 17)
!2842 = !DILocation(line: 572, column: 19, scope: !2840, inlinedAt: !2833)
!2843 = !DILocation(line: 564, column: 7, scope: !2828, inlinedAt: !2833)
!2844 = !DILocation(line: 573, column: 7, scope: !2840, inlinedAt: !2833)
!2845 = !DILocation(line: 576, column: 12, scope: !2846, inlinedAt: !2833)
!2846 = distinct !DILexicalBlock(scope: !2841, file: !1, line: 575, column: 14)
!2847 = !DILocation(line: 577, column: 7, scope: !2846, inlinedAt: !2833)
!2848 = !DILocation(line: 0, scope: !2849, inlinedAt: !2833)
!2849 = distinct !DILexicalBlock(scope: !2841, file: !1, line: 567, column: 29)
!2850 = !DILocation(line: 580, column: 23, scope: !2828, inlinedAt: !2833)
!2851 = !DILocation(line: 185, column: 30, scope: !634, inlinedAt: !2852)
!2852 = distinct !DILocation(line: 580, column: 3, scope: !2828, inlinedAt: !2833)
!2853 = !DILocation(line: 185, column: 39, scope: !634, inlinedAt: !2852)
!2854 = !DILocation(line: 185, column: 47, scope: !634, inlinedAt: !2852)
!2855 = !DILocation(line: 186, column: 10, scope: !643, inlinedAt: !2852)
!2856 = !DILocation(line: 186, column: 7, scope: !634, inlinedAt: !2852)
!2857 = !DILocation(line: 187, column: 12, scope: !642, inlinedAt: !2852)
!2858 = !DILocation(line: 187, column: 16, scope: !642, inlinedAt: !2852)
!2859 = !DILocation(line: 187, column: 12, scope: !643, inlinedAt: !2852)
!2860 = !DILocation(line: 101, column: 16, scope: !653, inlinedAt: !2861)
!2861 = distinct !DILocation(line: 192, column: 20, scope: !641, inlinedAt: !2852)
!2862 = !DILocation(line: 188, column: 9, scope: !642, inlinedAt: !2852)
!2863 = !DILocation(line: 188, column: 5, scope: !642, inlinedAt: !2852)
!2864 = !DILocation(line: 0, scope: !641, inlinedAt: !2852)
!2865 = !DILocation(line: 190, column: 9, scope: !641, inlinedAt: !2852)
!2866 = !DILocation(line: 100, column: 32, scope: !653, inlinedAt: !2861)
!2867 = !DILocation(line: 100, column: 40, scope: !653, inlinedAt: !2861)
!2868 = !DILocation(line: 101, column: 7, scope: !653, inlinedAt: !2861)
!2869 = !DILocation(line: 102, column: 14, scope: !667, inlinedAt: !2861)
!2870 = !DILocation(line: 105, column: 15, scope: !667, inlinedAt: !2861)
!2871 = !DILocation(line: 105, column: 18, scope: !667, inlinedAt: !2861)
!2872 = !DILocation(line: 102, column: 7, scope: !653, inlinedAt: !2861)
!2873 = !DILocation(line: 191, column: 9, scope: !641, inlinedAt: !2852)
!2874 = !DILocation(line: 192, column: 39, scope: !641, inlinedAt: !2852)
!2875 = !DILocation(line: 192, column: 5, scope: !641, inlinedAt: !2852)
!2876 = !DILocation(line: 80, column: 33, scope: !678, inlinedAt: !2877)
!2877 = distinct !DILocation(line: 194, column: 5, scope: !641, inlinedAt: !2852)
!2878 = !DILocation(line: 80, column: 41, scope: !678, inlinedAt: !2877)
!2879 = !DILocation(line: 80, column: 49, scope: !678, inlinedAt: !2877)
!2880 = !DILocation(line: 81, column: 16, scope: !678, inlinedAt: !2877)
!2881 = !DILocation(line: 82, column: 20, scope: !678, inlinedAt: !2877)
!2882 = !DILocation(line: 82, column: 7, scope: !678, inlinedAt: !2877)
!2883 = !DILocation(line: 84, column: 7, scope: !692, inlinedAt: !2877)
!2884 = !DILocation(line: 84, column: 19, scope: !692, inlinedAt: !2877)
!2885 = !DILocation(line: 84, column: 7, scope: !678, inlinedAt: !2877)
!2886 = !DILocation(line: 85, column: 26, scope: !692, inlinedAt: !2877)
!2887 = !DILocation(line: 85, column: 5, scope: !692, inlinedAt: !2877)
!2888 = !DILocation(line: 86, column: 3, scope: !678, inlinedAt: !2877)
!2889 = !DILocation(line: 581, column: 27, scope: !2828, inlinedAt: !2833)
!2890 = !DILocation(line: 179, column: 35, scope: !786, inlinedAt: !2891)
!2891 = distinct !DILocation(line: 581, column: 3, scope: !2828, inlinedAt: !2833)
!2892 = !DILocation(line: 179, column: 43, scope: !786, inlinedAt: !2891)
!2893 = !DILocation(line: 94, column: 31, scope: !765, inlinedAt: !2894)
!2894 = distinct !DILocation(line: 180, column: 3, scope: !786, inlinedAt: !2891)
!2895 = !DILocation(line: 95, column: 24, scope: !765, inlinedAt: !2894)
!2896 = !DILocation(line: 95, column: 7, scope: !765, inlinedAt: !2894)
!2897 = !DILocation(line: 95, column: 18, scope: !765, inlinedAt: !2894)
!2898 = !DILocation(line: 181, column: 24, scope: !786, inlinedAt: !2891)
!2899 = !DILocation(line: 185, column: 30, scope: !634, inlinedAt: !2900)
!2900 = distinct !DILocation(line: 181, column: 3, scope: !786, inlinedAt: !2891)
!2901 = !DILocation(line: 185, column: 39, scope: !634, inlinedAt: !2900)
!2902 = !DILocation(line: 185, column: 47, scope: !634, inlinedAt: !2900)
!2903 = !DILocation(line: 186, column: 10, scope: !643, inlinedAt: !2900)
!2904 = !DILocation(line: 186, column: 7, scope: !634, inlinedAt: !2900)
!2905 = !DILocation(line: 187, column: 12, scope: !642, inlinedAt: !2900)
!2906 = !DILocation(line: 187, column: 16, scope: !642, inlinedAt: !2900)
!2907 = !DILocation(line: 187, column: 12, scope: !643, inlinedAt: !2900)
!2908 = !DILocation(line: 101, column: 16, scope: !653, inlinedAt: !2909)
!2909 = distinct !DILocation(line: 192, column: 20, scope: !641, inlinedAt: !2900)
!2910 = !DILocation(line: 188, column: 9, scope: !642, inlinedAt: !2900)
!2911 = !DILocation(line: 188, column: 5, scope: !642, inlinedAt: !2900)
!2912 = !DILocation(line: 0, scope: !641, inlinedAt: !2900)
!2913 = !DILocation(line: 190, column: 9, scope: !641, inlinedAt: !2900)
!2914 = !DILocation(line: 100, column: 32, scope: !653, inlinedAt: !2909)
!2915 = !DILocation(line: 100, column: 40, scope: !653, inlinedAt: !2909)
!2916 = !DILocation(line: 101, column: 7, scope: !653, inlinedAt: !2909)
!2917 = !DILocation(line: 102, column: 14, scope: !667, inlinedAt: !2909)
!2918 = !DILocation(line: 105, column: 15, scope: !667, inlinedAt: !2909)
!2919 = !DILocation(line: 105, column: 18, scope: !667, inlinedAt: !2909)
!2920 = !DILocation(line: 102, column: 7, scope: !653, inlinedAt: !2909)
!2921 = !DILocation(line: 191, column: 9, scope: !641, inlinedAt: !2900)
!2922 = !DILocation(line: 192, column: 39, scope: !641, inlinedAt: !2900)
!2923 = !DILocation(line: 192, column: 5, scope: !641, inlinedAt: !2900)
!2924 = !DILocation(line: 80, column: 33, scope: !678, inlinedAt: !2925)
!2925 = distinct !DILocation(line: 194, column: 5, scope: !641, inlinedAt: !2900)
!2926 = !DILocation(line: 80, column: 41, scope: !678, inlinedAt: !2925)
!2927 = !DILocation(line: 80, column: 49, scope: !678, inlinedAt: !2925)
!2928 = !DILocation(line: 81, column: 16, scope: !678, inlinedAt: !2925)
!2929 = !DILocation(line: 82, column: 20, scope: !678, inlinedAt: !2925)
!2930 = !DILocation(line: 82, column: 7, scope: !678, inlinedAt: !2925)
!2931 = !DILocation(line: 84, column: 7, scope: !692, inlinedAt: !2925)
!2932 = !DILocation(line: 84, column: 19, scope: !692, inlinedAt: !2925)
!2933 = !DILocation(line: 84, column: 7, scope: !678, inlinedAt: !2925)
!2934 = !DILocation(line: 85, column: 26, scope: !692, inlinedAt: !2925)
!2935 = !DILocation(line: 85, column: 5, scope: !692, inlinedAt: !2925)
!2936 = !DILocation(line: 86, column: 3, scope: !678, inlinedAt: !2925)
!2937 = !DILocation(line: 582, column: 8, scope: !2828, inlinedAt: !2833)
!2938 = !DILocation(line: 718, column: 7, scope: !2834)
!2939 = !DILocation(line: 721, column: 7, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2825, file: !1, line: 720, column: 22)
!2941 = !DILocation(line: 722, column: 7, scope: !2940)
!2942 = !DILocation(line: 30, column: 31, scope: !2356, inlinedAt: !2943)
!2943 = distinct !DILocation(line: 726, column: 12, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !2945, file: !1, line: 726, column: 11)
!2945 = distinct !DILexicalBlock(scope: !2825, file: !1, line: 725, column: 33)
!2946 = !DILocation(line: 31, column: 14, scope: !2356, inlinedAt: !2943)
!2947 = !DILocation(line: 31, column: 16, scope: !2356, inlinedAt: !2943)
!2948 = !DILocation(line: 31, column: 25, scope: !2356, inlinedAt: !2943)
!2949 = !DILocation(line: 31, column: 31, scope: !2356, inlinedAt: !2943)
!2950 = !DILocation(line: 31, column: 33, scope: !2356, inlinedAt: !2943)
!2951 = !DILocation(line: 31, column: 44, scope: !2356, inlinedAt: !2943)
!2952 = !DILocation(line: 31, column: 50, scope: !2356, inlinedAt: !2943)
!2953 = !DILocation(line: 31, column: 52, scope: !2356, inlinedAt: !2943)
!2954 = !DILocation(line: 726, column: 11, scope: !2945)
!2955 = !DILocation(line: 726, column: 26, scope: !2944)
!2956 = !DILocation(line: 730, column: 7, scope: !2957)
!2957 = distinct !DILexicalBlock(scope: !2825, file: !1, line: 729, column: 14)
!2958 = !DILocation(line: 731, column: 7, scope: !2957)
!2959 = !DILocation(line: 734, column: 1, scope: !2811)
!2960 = distinct !DISubprogram(name: "luaK_posfix", scope: !1, file: !1, line: 737, type: !2961, isLocal: false, isDefinition: true, scopeLine: 737, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2963)
!2961 = !DISubroutineType(types: !2962)
!2962 = !{null, !427, !2814, !1115, !1115}
!2963 = !{!2964, !2965, !2966, !2967}
!2964 = !DILocalVariable(name: "fs", arg: 1, scope: !2960, file: !1, line: 737, type: !427)
!2965 = !DILocalVariable(name: "op", arg: 2, scope: !2960, file: !1, line: 737, type: !2814)
!2966 = !DILocalVariable(name: "e1", arg: 3, scope: !2960, file: !1, line: 737, type: !1115)
!2967 = !DILocalVariable(name: "e2", arg: 4, scope: !2960, file: !1, line: 737, type: !1115)
!2968 = !DILocation(line: 737, column: 30, scope: !2960)
!2969 = !DILocation(line: 737, column: 41, scope: !2960)
!2970 = !DILocation(line: 737, column: 54, scope: !2960)
!2971 = !DILocation(line: 737, column: 67, scope: !2960)
!2972 = !DILocation(line: 738, column: 3, scope: !2960)
!2973 = !DILocation(line: 741, column: 7, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2975, file: !1, line: 739, column: 19)
!2975 = distinct !DILexicalBlock(scope: !2960, file: !1, line: 738, column: 15)
!2976 = !DILocation(line: 742, column: 28, scope: !2974)
!2977 = !DILocation(line: 742, column: 35, scope: !2974)
!2978 = !DILocation(line: 185, column: 30, scope: !634, inlinedAt: !2979)
!2979 = distinct !DILocation(line: 742, column: 7, scope: !2974)
!2980 = !DILocation(line: 185, column: 39, scope: !634, inlinedAt: !2979)
!2981 = !DILocation(line: 185, column: 47, scope: !634, inlinedAt: !2979)
!2982 = !DILocation(line: 186, column: 10, scope: !643, inlinedAt: !2979)
!2983 = !DILocation(line: 186, column: 7, scope: !634, inlinedAt: !2979)
!2984 = !DILocation(line: 187, column: 12, scope: !642, inlinedAt: !2979)
!2985 = !DILocation(line: 187, column: 16, scope: !642, inlinedAt: !2979)
!2986 = !DILocation(line: 187, column: 12, scope: !643, inlinedAt: !2979)
!2987 = !DILocation(line: 101, column: 16, scope: !653, inlinedAt: !2988)
!2988 = distinct !DILocation(line: 192, column: 20, scope: !641, inlinedAt: !2979)
!2989 = !DILocation(line: 188, column: 9, scope: !642, inlinedAt: !2979)
!2990 = !DILocation(line: 188, column: 5, scope: !642, inlinedAt: !2979)
!2991 = !DILocation(line: 0, scope: !641, inlinedAt: !2979)
!2992 = !DILocation(line: 190, column: 9, scope: !641, inlinedAt: !2979)
!2993 = !DILocation(line: 100, column: 32, scope: !653, inlinedAt: !2988)
!2994 = !DILocation(line: 100, column: 40, scope: !653, inlinedAt: !2988)
!2995 = !DILocation(line: 101, column: 7, scope: !653, inlinedAt: !2988)
!2996 = !DILocation(line: 102, column: 14, scope: !667, inlinedAt: !2988)
!2997 = !DILocation(line: 105, column: 15, scope: !667, inlinedAt: !2988)
!2998 = !DILocation(line: 105, column: 18, scope: !667, inlinedAt: !2988)
!2999 = !DILocation(line: 102, column: 7, scope: !653, inlinedAt: !2988)
!3000 = !DILocation(line: 191, column: 9, scope: !641, inlinedAt: !2979)
!3001 = !DILocation(line: 192, column: 39, scope: !641, inlinedAt: !2979)
!3002 = !DILocation(line: 192, column: 5, scope: !641, inlinedAt: !2979)
!3003 = !DILocation(line: 80, column: 33, scope: !678, inlinedAt: !3004)
!3004 = distinct !DILocation(line: 194, column: 5, scope: !641, inlinedAt: !2979)
!3005 = !DILocation(line: 80, column: 41, scope: !678, inlinedAt: !3004)
!3006 = !DILocation(line: 80, column: 49, scope: !678, inlinedAt: !3004)
!3007 = !DILocation(line: 81, column: 16, scope: !678, inlinedAt: !3004)
!3008 = !DILocation(line: 82, column: 20, scope: !678, inlinedAt: !3004)
!3009 = !DILocation(line: 82, column: 7, scope: !678, inlinedAt: !3004)
!3010 = !DILocation(line: 84, column: 7, scope: !692, inlinedAt: !3004)
!3011 = !DILocation(line: 84, column: 19, scope: !692, inlinedAt: !3004)
!3012 = !DILocation(line: 84, column: 7, scope: !678, inlinedAt: !3004)
!3013 = !DILocation(line: 85, column: 26, scope: !692, inlinedAt: !3004)
!3014 = !DILocation(line: 85, column: 5, scope: !692, inlinedAt: !3004)
!3015 = !DILocation(line: 86, column: 3, scope: !678, inlinedAt: !3004)
!3016 = !DILocation(line: 743, column: 13, scope: !2974)
!3017 = !{i64 0, i64 4, !1025, i64 8, i64 4, !550, i64 12, i64 4, !550, i64 8, i64 8, !3018, i64 16, i64 4, !550, i64 20, i64 4, !550}
!3018 = !{!3019, !3019, i64 0}
!3019 = !{!"double", !524, i64 0}
!3020 = !DILocation(line: 744, column: 7, scope: !2974)
!3021 = !DILocation(line: 748, column: 7, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !2975, file: !1, line: 746, column: 18)
!3023 = !DILocation(line: 749, column: 28, scope: !3022)
!3024 = !DILocation(line: 749, column: 35, scope: !3022)
!3025 = !DILocation(line: 185, column: 30, scope: !634, inlinedAt: !3026)
!3026 = distinct !DILocation(line: 749, column: 7, scope: !3022)
!3027 = !DILocation(line: 185, column: 39, scope: !634, inlinedAt: !3026)
!3028 = !DILocation(line: 185, column: 47, scope: !634, inlinedAt: !3026)
!3029 = !DILocation(line: 186, column: 10, scope: !643, inlinedAt: !3026)
!3030 = !DILocation(line: 186, column: 7, scope: !634, inlinedAt: !3026)
!3031 = !DILocation(line: 187, column: 12, scope: !642, inlinedAt: !3026)
!3032 = !DILocation(line: 187, column: 16, scope: !642, inlinedAt: !3026)
!3033 = !DILocation(line: 187, column: 12, scope: !643, inlinedAt: !3026)
!3034 = !DILocation(line: 101, column: 16, scope: !653, inlinedAt: !3035)
!3035 = distinct !DILocation(line: 192, column: 20, scope: !641, inlinedAt: !3026)
!3036 = !DILocation(line: 188, column: 9, scope: !642, inlinedAt: !3026)
!3037 = !DILocation(line: 188, column: 5, scope: !642, inlinedAt: !3026)
!3038 = !DILocation(line: 0, scope: !641, inlinedAt: !3026)
!3039 = !DILocation(line: 190, column: 9, scope: !641, inlinedAt: !3026)
!3040 = !DILocation(line: 100, column: 32, scope: !653, inlinedAt: !3035)
!3041 = !DILocation(line: 100, column: 40, scope: !653, inlinedAt: !3035)
!3042 = !DILocation(line: 101, column: 7, scope: !653, inlinedAt: !3035)
!3043 = !DILocation(line: 102, column: 14, scope: !667, inlinedAt: !3035)
!3044 = !DILocation(line: 105, column: 15, scope: !667, inlinedAt: !3035)
!3045 = !DILocation(line: 105, column: 18, scope: !667, inlinedAt: !3035)
!3046 = !DILocation(line: 102, column: 7, scope: !653, inlinedAt: !3035)
!3047 = !DILocation(line: 191, column: 9, scope: !641, inlinedAt: !3026)
!3048 = !DILocation(line: 192, column: 39, scope: !641, inlinedAt: !3026)
!3049 = !DILocation(line: 192, column: 5, scope: !641, inlinedAt: !3026)
!3050 = !DILocation(line: 80, column: 33, scope: !678, inlinedAt: !3051)
!3051 = distinct !DILocation(line: 194, column: 5, scope: !641, inlinedAt: !3026)
!3052 = !DILocation(line: 80, column: 41, scope: !678, inlinedAt: !3051)
!3053 = !DILocation(line: 80, column: 49, scope: !678, inlinedAt: !3051)
!3054 = !DILocation(line: 81, column: 16, scope: !678, inlinedAt: !3051)
!3055 = !DILocation(line: 82, column: 20, scope: !678, inlinedAt: !3051)
!3056 = !DILocation(line: 82, column: 7, scope: !678, inlinedAt: !3051)
!3057 = !DILocation(line: 84, column: 7, scope: !692, inlinedAt: !3051)
!3058 = !DILocation(line: 84, column: 19, scope: !692, inlinedAt: !3051)
!3059 = !DILocation(line: 84, column: 7, scope: !678, inlinedAt: !3051)
!3060 = !DILocation(line: 85, column: 26, scope: !692, inlinedAt: !3051)
!3061 = !DILocation(line: 85, column: 5, scope: !692, inlinedAt: !3051)
!3062 = !DILocation(line: 86, column: 3, scope: !678, inlinedAt: !3051)
!3063 = !DILocation(line: 750, column: 13, scope: !3022)
!3064 = !DILocation(line: 751, column: 7, scope: !3022)
!3065 = !DILocation(line: 436, column: 31, scope: !1695, inlinedAt: !3066)
!3066 = distinct !DILocation(line: 754, column: 7, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !2975, file: !1, line: 753, column: 22)
!3068 = !DILocation(line: 436, column: 44, scope: !1695, inlinedAt: !3066)
!3069 = !DILocation(line: 437, column: 7, scope: !1702, inlinedAt: !3066)
!3070 = !DILocation(line: 0, scope: !3067)
!3071 = !DILocation(line: 437, column: 7, scope: !1695, inlinedAt: !3066)
!3072 = !DILocation(line: 422, column: 33, scope: !1663, inlinedAt: !3073)
!3073 = distinct !DILocation(line: 438, column: 5, scope: !1702, inlinedAt: !3066)
!3074 = !DILocation(line: 422, column: 46, scope: !1663, inlinedAt: !3073)
!3075 = !DILocation(line: 424, column: 10, scope: !1673, inlinedAt: !3073)
!3076 = !DILocation(line: 424, column: 12, scope: !1673, inlinedAt: !3073)
!3077 = !DILocation(line: 424, column: 7, scope: !1663, inlinedAt: !3073)
!3078 = !DILocation(line: 425, column: 10, scope: !1679, inlinedAt: !3073)
!3079 = !DILocation(line: 0, scope: !1679, inlinedAt: !3073)
!3080 = !DILocation(line: 425, column: 9, scope: !1680, inlinedAt: !3073)
!3081 = !DILocation(line: 426, column: 28, scope: !1684, inlinedAt: !3073)
!3082 = !DILocation(line: 426, column: 24, scope: !1684, inlinedAt: !3073)
!3083 = !DILocation(line: 426, column: 21, scope: !1684, inlinedAt: !3073)
!3084 = !DILocation(line: 426, column: 9, scope: !1680, inlinedAt: !3073)
!3085 = !DILocation(line: 427, column: 7, scope: !1689, inlinedAt: !3073)
!3086 = !DILocation(line: 428, column: 7, scope: !1689, inlinedAt: !3073)
!3087 = !DILocation(line: 431, column: 3, scope: !1663, inlinedAt: !3073)
!3088 = !DILocation(line: 432, column: 3, scope: !1663, inlinedAt: !3073)
!3089 = !DILocation(line: 755, column: 15, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !3067, file: !1, line: 755, column: 11)
!3091 = !DILocation(line: 755, column: 17, scope: !3090)
!3092 = !DILocation(line: 755, column: 31, scope: !3090)
!3093 = !DILocation(line: 755, column: 34, scope: !3090)
!3094 = !DILocation(line: 755, column: 62, scope: !3090)
!3095 = !DILocation(line: 755, column: 11, scope: !3067)
!3096 = !DILocation(line: 223, column: 33, scope: !1309, inlinedAt: !3097)
!3097 = distinct !DILocation(line: 757, column: 9, scope: !3098)
!3098 = distinct !DILexicalBlock(scope: !3090, file: !1, line: 755, column: 76)
!3099 = !DILocation(line: 223, column: 46, scope: !1309, inlinedAt: !3097)
!3100 = !DILocation(line: 224, column: 10, scope: !1316, inlinedAt: !3097)
!3101 = !DILocation(line: 224, column: 12, scope: !1316, inlinedAt: !3097)
!3102 = !DILocation(line: 0, scope: !3098)
!3103 = !DILocation(line: 224, column: 7, scope: !1309, inlinedAt: !3097)
!3104 = !DILocation(line: 225, column: 24, scope: !1316, inlinedAt: !3097)
!3105 = !DILocation(line: 215, column: 33, scope: !1246, inlinedAt: !3106)
!3106 = distinct !DILocation(line: 225, column: 5, scope: !1316, inlinedAt: !3097)
!3107 = !DILocation(line: 215, column: 41, scope: !1246, inlinedAt: !3106)
!3108 = !DILocation(line: 216, column: 8, scope: !1253, inlinedAt: !3106)
!3109 = !DILocation(line: 216, column: 17, scope: !1253, inlinedAt: !3106)
!3110 = !DILocation(line: 216, column: 31, scope: !1253, inlinedAt: !3106)
!3111 = !DILocation(line: 216, column: 27, scope: !1253, inlinedAt: !3106)
!3112 = !DILocation(line: 216, column: 24, scope: !1253, inlinedAt: !3106)
!3113 = !DILocation(line: 216, column: 7, scope: !1246, inlinedAt: !3106)
!3114 = !DILocation(line: 217, column: 9, scope: !1260, inlinedAt: !3106)
!3115 = !DILocation(line: 217, column: 16, scope: !1260, inlinedAt: !3106)
!3116 = !DILocation(line: 758, column: 9, scope: !3098)
!3117 = !DILocation(line: 219, column: 3, scope: !1260, inlinedAt: !3106)
!3118 = !DILocation(line: 759, column: 15, scope: !3098)
!3119 = !DILocation(line: 759, column: 52, scope: !3098)
!3120 = !DILocation(line: 759, column: 42, scope: !3098)
!3121 = !DILocation(line: 760, column: 7, scope: !3098)
!3122 = !DILocation(line: 762, column: 9, scope: !3123)
!3123 = distinct !DILexicalBlock(scope: !3090, file: !1, line: 761, column: 12)
!3124 = !DILocation(line: 763, column: 9, scope: !3123)
!3125 = !DILocation(line: 767, column: 19, scope: !2975)
!3126 = !DILocation(line: 767, column: 50, scope: !2975)
!3127 = !DILocation(line: 768, column: 19, scope: !2975)
!3128 = !DILocation(line: 768, column: 50, scope: !2975)
!3129 = !DILocation(line: 769, column: 19, scope: !2975)
!3130 = !DILocation(line: 769, column: 50, scope: !2975)
!3131 = !DILocation(line: 770, column: 19, scope: !2975)
!3132 = !DILocation(line: 770, column: 50, scope: !2975)
!3133 = !DILocation(line: 771, column: 19, scope: !2975)
!3134 = !DILocation(line: 771, column: 50, scope: !2975)
!3135 = !DILocation(line: 772, column: 19, scope: !2975)
!3136 = !DILocation(line: 772, column: 50, scope: !2975)
!3137 = !DILocalVariable(name: "fs", arg: 1, scope: !3138, file: !1, line: 673, type: !427)
!3138 = distinct !DISubprogram(name: "codecomp", scope: !1, file: !1, line: 673, type: !3139, isLocal: true, isDefinition: true, scopeLine: 674, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3141)
!3139 = !DISubroutineType(types: !3140)
!3140 = !{null, !427, !89, !93, !1115, !1115}
!3141 = !{!3137, !3142, !3143, !3144, !3145, !3146, !3147, !3148}
!3142 = !DILocalVariable(name: "op", arg: 2, scope: !3138, file: !1, line: 673, type: !89)
!3143 = !DILocalVariable(name: "cond", arg: 3, scope: !3138, file: !1, line: 673, type: !93)
!3144 = !DILocalVariable(name: "e1", arg: 4, scope: !3138, file: !1, line: 673, type: !1115)
!3145 = !DILocalVariable(name: "e2", arg: 5, scope: !3138, file: !1, line: 674, type: !1115)
!3146 = !DILocalVariable(name: "o1", scope: !3138, file: !1, line: 675, type: !93)
!3147 = !DILocalVariable(name: "o2", scope: !3138, file: !1, line: 676, type: !93)
!3148 = !DILocalVariable(name: "temp", scope: !3149, file: !1, line: 680, type: !93)
!3149 = distinct !DILexicalBlock(scope: !3150, file: !1, line: 679, column: 33)
!3150 = distinct !DILexicalBlock(scope: !3138, file: !1, line: 679, column: 7)
!3151 = !DILocation(line: 673, column: 34, scope: !3138, inlinedAt: !3152)
!3152 = distinct !DILocation(line: 773, column: 18, scope: !2975)
!3153 = !DILocation(line: 673, column: 45, scope: !3138, inlinedAt: !3152)
!3154 = !DILocation(line: 673, column: 53, scope: !3138, inlinedAt: !3152)
!3155 = !DILocation(line: 673, column: 68, scope: !3138, inlinedAt: !3152)
!3156 = !DILocation(line: 674, column: 68, scope: !3138, inlinedAt: !3152)
!3157 = !DILocation(line: 675, column: 12, scope: !3138, inlinedAt: !3152)
!3158 = !DILocation(line: 675, column: 7, scope: !3138, inlinedAt: !3152)
!3159 = !DILocation(line: 676, column: 12, scope: !3138, inlinedAt: !3152)
!3160 = !DILocation(line: 676, column: 7, scope: !3138, inlinedAt: !3152)
!3161 = !DILocation(line: 223, column: 33, scope: !1309, inlinedAt: !3162)
!3162 = distinct !DILocation(line: 677, column: 3, scope: !3138, inlinedAt: !3152)
!3163 = !DILocation(line: 223, column: 46, scope: !1309, inlinedAt: !3162)
!3164 = !DILocation(line: 224, column: 10, scope: !1316, inlinedAt: !3162)
!3165 = !DILocation(line: 224, column: 12, scope: !1316, inlinedAt: !3162)
!3166 = !DILocation(line: 224, column: 7, scope: !1309, inlinedAt: !3162)
!3167 = !DILocation(line: 225, column: 20, scope: !1316, inlinedAt: !3162)
!3168 = !DILocation(line: 225, column: 24, scope: !1316, inlinedAt: !3162)
!3169 = !DILocation(line: 215, column: 33, scope: !1246, inlinedAt: !3170)
!3170 = distinct !DILocation(line: 225, column: 5, scope: !1316, inlinedAt: !3162)
!3171 = !DILocation(line: 215, column: 41, scope: !1246, inlinedAt: !3170)
!3172 = !DILocation(line: 216, column: 8, scope: !1253, inlinedAt: !3170)
!3173 = !DILocation(line: 216, column: 17, scope: !1253, inlinedAt: !3170)
!3174 = !DILocation(line: 216, column: 31, scope: !1253, inlinedAt: !3170)
!3175 = !DILocation(line: 216, column: 27, scope: !1253, inlinedAt: !3170)
!3176 = !DILocation(line: 216, column: 24, scope: !1253, inlinedAt: !3170)
!3177 = !DILocation(line: 216, column: 7, scope: !1246, inlinedAt: !3170)
!3178 = !DILocation(line: 217, column: 9, scope: !1260, inlinedAt: !3170)
!3179 = !DILocation(line: 217, column: 16, scope: !1260, inlinedAt: !3170)
!3180 = !DILocation(line: 219, column: 3, scope: !1260, inlinedAt: !3170)
!3181 = !DILocation(line: 223, column: 33, scope: !1309, inlinedAt: !3182)
!3182 = distinct !DILocation(line: 678, column: 3, scope: !3138, inlinedAt: !3152)
!3183 = !DILocation(line: 223, column: 46, scope: !1309, inlinedAt: !3182)
!3184 = !DILocation(line: 224, column: 10, scope: !1316, inlinedAt: !3182)
!3185 = !DILocation(line: 224, column: 12, scope: !1316, inlinedAt: !3182)
!3186 = !DILocation(line: 0, scope: !3138, inlinedAt: !3152)
!3187 = !DILocation(line: 224, column: 7, scope: !1309, inlinedAt: !3182)
!3188 = !DILocation(line: 225, column: 24, scope: !1316, inlinedAt: !3182)
!3189 = !DILocation(line: 215, column: 33, scope: !1246, inlinedAt: !3190)
!3190 = distinct !DILocation(line: 225, column: 5, scope: !1316, inlinedAt: !3182)
!3191 = !DILocation(line: 215, column: 41, scope: !1246, inlinedAt: !3190)
!3192 = !DILocation(line: 216, column: 8, scope: !1253, inlinedAt: !3190)
!3193 = !DILocation(line: 216, column: 17, scope: !1253, inlinedAt: !3190)
!3194 = !DILocation(line: 216, column: 31, scope: !1253, inlinedAt: !3190)
!3195 = !DILocation(line: 216, column: 27, scope: !1253, inlinedAt: !3190)
!3196 = !DILocation(line: 216, column: 24, scope: !1253, inlinedAt: !3190)
!3197 = !DILocation(line: 216, column: 7, scope: !1246, inlinedAt: !3190)
!3198 = !DILocation(line: 217, column: 9, scope: !1260, inlinedAt: !3190)
!3199 = !DILocation(line: 217, column: 16, scope: !1260, inlinedAt: !3190)
!3200 = !DILocation(line: 219, column: 3, scope: !1260, inlinedAt: !3190)
!3201 = !DILocation(line: 684, column: 18, scope: !3138, inlinedAt: !3152)
!3202 = !DILocation(line: 684, column: 16, scope: !3138, inlinedAt: !3152)
!3203 = !DILocation(line: 685, column: 9, scope: !3138, inlinedAt: !3152)
!3204 = !DILocation(line: 773, column: 50, scope: !2975)
!3205 = !DILocation(line: 673, column: 34, scope: !3138, inlinedAt: !3206)
!3206 = distinct !DILocation(line: 774, column: 18, scope: !2975)
!3207 = !DILocation(line: 673, column: 45, scope: !3138, inlinedAt: !3206)
!3208 = !DILocation(line: 673, column: 53, scope: !3138, inlinedAt: !3206)
!3209 = !DILocation(line: 673, column: 68, scope: !3138, inlinedAt: !3206)
!3210 = !DILocation(line: 674, column: 68, scope: !3138, inlinedAt: !3206)
!3211 = !DILocation(line: 675, column: 12, scope: !3138, inlinedAt: !3206)
!3212 = !DILocation(line: 675, column: 7, scope: !3138, inlinedAt: !3206)
!3213 = !DILocation(line: 676, column: 12, scope: !3138, inlinedAt: !3206)
!3214 = !DILocation(line: 676, column: 7, scope: !3138, inlinedAt: !3206)
!3215 = !DILocation(line: 223, column: 33, scope: !1309, inlinedAt: !3216)
!3216 = distinct !DILocation(line: 677, column: 3, scope: !3138, inlinedAt: !3206)
!3217 = !DILocation(line: 223, column: 46, scope: !1309, inlinedAt: !3216)
!3218 = !DILocation(line: 224, column: 10, scope: !1316, inlinedAt: !3216)
!3219 = !DILocation(line: 224, column: 12, scope: !1316, inlinedAt: !3216)
!3220 = !DILocation(line: 224, column: 7, scope: !1309, inlinedAt: !3216)
!3221 = !DILocation(line: 225, column: 20, scope: !1316, inlinedAt: !3216)
!3222 = !DILocation(line: 225, column: 24, scope: !1316, inlinedAt: !3216)
!3223 = !DILocation(line: 215, column: 33, scope: !1246, inlinedAt: !3224)
!3224 = distinct !DILocation(line: 225, column: 5, scope: !1316, inlinedAt: !3216)
!3225 = !DILocation(line: 215, column: 41, scope: !1246, inlinedAt: !3224)
!3226 = !DILocation(line: 216, column: 8, scope: !1253, inlinedAt: !3224)
!3227 = !DILocation(line: 216, column: 17, scope: !1253, inlinedAt: !3224)
!3228 = !DILocation(line: 216, column: 31, scope: !1253, inlinedAt: !3224)
!3229 = !DILocation(line: 216, column: 27, scope: !1253, inlinedAt: !3224)
!3230 = !DILocation(line: 216, column: 24, scope: !1253, inlinedAt: !3224)
!3231 = !DILocation(line: 216, column: 7, scope: !1246, inlinedAt: !3224)
!3232 = !DILocation(line: 217, column: 9, scope: !1260, inlinedAt: !3224)
!3233 = !DILocation(line: 217, column: 16, scope: !1260, inlinedAt: !3224)
!3234 = !DILocation(line: 219, column: 3, scope: !1260, inlinedAt: !3224)
!3235 = !DILocation(line: 223, column: 33, scope: !1309, inlinedAt: !3236)
!3236 = distinct !DILocation(line: 678, column: 3, scope: !3138, inlinedAt: !3206)
!3237 = !DILocation(line: 223, column: 46, scope: !1309, inlinedAt: !3236)
!3238 = !DILocation(line: 224, column: 10, scope: !1316, inlinedAt: !3236)
!3239 = !DILocation(line: 224, column: 12, scope: !1316, inlinedAt: !3236)
!3240 = !DILocation(line: 0, scope: !3138, inlinedAt: !3206)
!3241 = !DILocation(line: 224, column: 7, scope: !1309, inlinedAt: !3236)
!3242 = !DILocation(line: 225, column: 24, scope: !1316, inlinedAt: !3236)
!3243 = !DILocation(line: 215, column: 33, scope: !1246, inlinedAt: !3244)
!3244 = distinct !DILocation(line: 225, column: 5, scope: !1316, inlinedAt: !3236)
!3245 = !DILocation(line: 215, column: 41, scope: !1246, inlinedAt: !3244)
!3246 = !DILocation(line: 216, column: 8, scope: !1253, inlinedAt: !3244)
!3247 = !DILocation(line: 216, column: 17, scope: !1253, inlinedAt: !3244)
!3248 = !DILocation(line: 216, column: 31, scope: !1253, inlinedAt: !3244)
!3249 = !DILocation(line: 216, column: 27, scope: !1253, inlinedAt: !3244)
!3250 = !DILocation(line: 216, column: 24, scope: !1253, inlinedAt: !3244)
!3251 = !DILocation(line: 216, column: 7, scope: !1246, inlinedAt: !3244)
!3252 = !DILocation(line: 217, column: 9, scope: !1260, inlinedAt: !3244)
!3253 = !DILocation(line: 217, column: 16, scope: !1260, inlinedAt: !3244)
!3254 = !DILocation(line: 219, column: 3, scope: !1260, inlinedAt: !3244)
!3255 = !DILocation(line: 684, column: 18, scope: !3138, inlinedAt: !3206)
!3256 = !DILocation(line: 684, column: 16, scope: !3138, inlinedAt: !3206)
!3257 = !DILocation(line: 685, column: 9, scope: !3138, inlinedAt: !3206)
!3258 = !DILocation(line: 774, column: 50, scope: !2975)
!3259 = !DILocation(line: 673, column: 34, scope: !3138, inlinedAt: !3260)
!3260 = distinct !DILocation(line: 775, column: 18, scope: !2975)
!3261 = !DILocation(line: 673, column: 45, scope: !3138, inlinedAt: !3260)
!3262 = !DILocation(line: 673, column: 53, scope: !3138, inlinedAt: !3260)
!3263 = !DILocation(line: 673, column: 68, scope: !3138, inlinedAt: !3260)
!3264 = !DILocation(line: 674, column: 68, scope: !3138, inlinedAt: !3260)
!3265 = !DILocation(line: 675, column: 12, scope: !3138, inlinedAt: !3260)
!3266 = !DILocation(line: 675, column: 7, scope: !3138, inlinedAt: !3260)
!3267 = !DILocation(line: 676, column: 12, scope: !3138, inlinedAt: !3260)
!3268 = !DILocation(line: 676, column: 7, scope: !3138, inlinedAt: !3260)
!3269 = !DILocation(line: 223, column: 33, scope: !1309, inlinedAt: !3270)
!3270 = distinct !DILocation(line: 677, column: 3, scope: !3138, inlinedAt: !3260)
!3271 = !DILocation(line: 223, column: 46, scope: !1309, inlinedAt: !3270)
!3272 = !DILocation(line: 224, column: 10, scope: !1316, inlinedAt: !3270)
!3273 = !DILocation(line: 224, column: 12, scope: !1316, inlinedAt: !3270)
!3274 = !DILocation(line: 224, column: 7, scope: !1309, inlinedAt: !3270)
!3275 = !DILocation(line: 225, column: 20, scope: !1316, inlinedAt: !3270)
!3276 = !DILocation(line: 225, column: 24, scope: !1316, inlinedAt: !3270)
!3277 = !DILocation(line: 215, column: 33, scope: !1246, inlinedAt: !3278)
!3278 = distinct !DILocation(line: 225, column: 5, scope: !1316, inlinedAt: !3270)
!3279 = !DILocation(line: 215, column: 41, scope: !1246, inlinedAt: !3278)
!3280 = !DILocation(line: 216, column: 8, scope: !1253, inlinedAt: !3278)
!3281 = !DILocation(line: 216, column: 17, scope: !1253, inlinedAt: !3278)
!3282 = !DILocation(line: 216, column: 31, scope: !1253, inlinedAt: !3278)
!3283 = !DILocation(line: 216, column: 27, scope: !1253, inlinedAt: !3278)
!3284 = !DILocation(line: 216, column: 24, scope: !1253, inlinedAt: !3278)
!3285 = !DILocation(line: 216, column: 7, scope: !1246, inlinedAt: !3278)
!3286 = !DILocation(line: 217, column: 9, scope: !1260, inlinedAt: !3278)
!3287 = !DILocation(line: 217, column: 16, scope: !1260, inlinedAt: !3278)
!3288 = !DILocation(line: 219, column: 3, scope: !1260, inlinedAt: !3278)
!3289 = !DILocation(line: 223, column: 33, scope: !1309, inlinedAt: !3290)
!3290 = distinct !DILocation(line: 678, column: 3, scope: !3138, inlinedAt: !3260)
!3291 = !DILocation(line: 223, column: 46, scope: !1309, inlinedAt: !3290)
!3292 = !DILocation(line: 224, column: 10, scope: !1316, inlinedAt: !3290)
!3293 = !DILocation(line: 224, column: 12, scope: !1316, inlinedAt: !3290)
!3294 = !DILocation(line: 0, scope: !3138, inlinedAt: !3260)
!3295 = !DILocation(line: 224, column: 7, scope: !1309, inlinedAt: !3290)
!3296 = !DILocation(line: 225, column: 24, scope: !1316, inlinedAt: !3290)
!3297 = !DILocation(line: 215, column: 33, scope: !1246, inlinedAt: !3298)
!3298 = distinct !DILocation(line: 225, column: 5, scope: !1316, inlinedAt: !3290)
!3299 = !DILocation(line: 215, column: 41, scope: !1246, inlinedAt: !3298)
!3300 = !DILocation(line: 216, column: 8, scope: !1253, inlinedAt: !3298)
!3301 = !DILocation(line: 216, column: 17, scope: !1253, inlinedAt: !3298)
!3302 = !DILocation(line: 216, column: 31, scope: !1253, inlinedAt: !3298)
!3303 = !DILocation(line: 216, column: 27, scope: !1253, inlinedAt: !3298)
!3304 = !DILocation(line: 216, column: 24, scope: !1253, inlinedAt: !3298)
!3305 = !DILocation(line: 216, column: 7, scope: !1246, inlinedAt: !3298)
!3306 = !DILocation(line: 217, column: 9, scope: !1260, inlinedAt: !3298)
!3307 = !DILocation(line: 217, column: 16, scope: !1260, inlinedAt: !3298)
!3308 = !DILocation(line: 219, column: 3, scope: !1260, inlinedAt: !3298)
!3309 = !DILocation(line: 684, column: 18, scope: !3138, inlinedAt: !3260)
!3310 = !DILocation(line: 684, column: 16, scope: !3138, inlinedAt: !3260)
!3311 = !DILocation(line: 685, column: 9, scope: !3138, inlinedAt: !3260)
!3312 = !DILocation(line: 775, column: 50, scope: !2975)
!3313 = !DILocation(line: 673, column: 34, scope: !3138, inlinedAt: !3314)
!3314 = distinct !DILocation(line: 776, column: 18, scope: !2975)
!3315 = !DILocation(line: 673, column: 45, scope: !3138, inlinedAt: !3314)
!3316 = !DILocation(line: 673, column: 53, scope: !3138, inlinedAt: !3314)
!3317 = !DILocation(line: 673, column: 68, scope: !3138, inlinedAt: !3314)
!3318 = !DILocation(line: 674, column: 68, scope: !3138, inlinedAt: !3314)
!3319 = !DILocation(line: 675, column: 12, scope: !3138, inlinedAt: !3314)
!3320 = !DILocation(line: 675, column: 7, scope: !3138, inlinedAt: !3314)
!3321 = !DILocation(line: 676, column: 12, scope: !3138, inlinedAt: !3314)
!3322 = !DILocation(line: 676, column: 7, scope: !3138, inlinedAt: !3314)
!3323 = !DILocation(line: 223, column: 33, scope: !1309, inlinedAt: !3324)
!3324 = distinct !DILocation(line: 677, column: 3, scope: !3138, inlinedAt: !3314)
!3325 = !DILocation(line: 223, column: 46, scope: !1309, inlinedAt: !3324)
!3326 = !DILocation(line: 224, column: 10, scope: !1316, inlinedAt: !3324)
!3327 = !DILocation(line: 224, column: 12, scope: !1316, inlinedAt: !3324)
!3328 = !DILocation(line: 224, column: 7, scope: !1309, inlinedAt: !3324)
!3329 = !DILocation(line: 225, column: 20, scope: !1316, inlinedAt: !3324)
!3330 = !DILocation(line: 225, column: 24, scope: !1316, inlinedAt: !3324)
!3331 = !DILocation(line: 215, column: 33, scope: !1246, inlinedAt: !3332)
!3332 = distinct !DILocation(line: 225, column: 5, scope: !1316, inlinedAt: !3324)
!3333 = !DILocation(line: 215, column: 41, scope: !1246, inlinedAt: !3332)
!3334 = !DILocation(line: 216, column: 8, scope: !1253, inlinedAt: !3332)
!3335 = !DILocation(line: 216, column: 17, scope: !1253, inlinedAt: !3332)
!3336 = !DILocation(line: 216, column: 31, scope: !1253, inlinedAt: !3332)
!3337 = !DILocation(line: 216, column: 27, scope: !1253, inlinedAt: !3332)
!3338 = !DILocation(line: 216, column: 24, scope: !1253, inlinedAt: !3332)
!3339 = !DILocation(line: 216, column: 7, scope: !1246, inlinedAt: !3332)
!3340 = !DILocation(line: 217, column: 9, scope: !1260, inlinedAt: !3332)
!3341 = !DILocation(line: 217, column: 16, scope: !1260, inlinedAt: !3332)
!3342 = !DILocation(line: 219, column: 3, scope: !1260, inlinedAt: !3332)
!3343 = !DILocation(line: 223, column: 33, scope: !1309, inlinedAt: !3344)
!3344 = distinct !DILocation(line: 678, column: 3, scope: !3138, inlinedAt: !3314)
!3345 = !DILocation(line: 223, column: 46, scope: !1309, inlinedAt: !3344)
!3346 = !DILocation(line: 224, column: 10, scope: !1316, inlinedAt: !3344)
!3347 = !DILocation(line: 224, column: 12, scope: !1316, inlinedAt: !3344)
!3348 = !DILocation(line: 0, scope: !3138, inlinedAt: !3314)
!3349 = !DILocation(line: 224, column: 7, scope: !1309, inlinedAt: !3344)
!3350 = !DILocation(line: 225, column: 24, scope: !1316, inlinedAt: !3344)
!3351 = !DILocation(line: 215, column: 33, scope: !1246, inlinedAt: !3352)
!3352 = distinct !DILocation(line: 225, column: 5, scope: !1316, inlinedAt: !3344)
!3353 = !DILocation(line: 215, column: 41, scope: !1246, inlinedAt: !3352)
!3354 = !DILocation(line: 216, column: 8, scope: !1253, inlinedAt: !3352)
!3355 = !DILocation(line: 216, column: 17, scope: !1253, inlinedAt: !3352)
!3356 = !DILocation(line: 216, column: 31, scope: !1253, inlinedAt: !3352)
!3357 = !DILocation(line: 216, column: 27, scope: !1253, inlinedAt: !3352)
!3358 = !DILocation(line: 216, column: 24, scope: !1253, inlinedAt: !3352)
!3359 = !DILocation(line: 216, column: 7, scope: !1246, inlinedAt: !3352)
!3360 = !DILocation(line: 217, column: 9, scope: !1260, inlinedAt: !3352)
!3361 = !DILocation(line: 217, column: 16, scope: !1260, inlinedAt: !3352)
!3362 = !DILocation(line: 219, column: 3, scope: !1260, inlinedAt: !3352)
!3363 = !DILocation(line: 684, column: 18, scope: !3138, inlinedAt: !3314)
!3364 = !DILocation(line: 684, column: 16, scope: !3138, inlinedAt: !3314)
!3365 = !DILocation(line: 685, column: 9, scope: !3138, inlinedAt: !3314)
!3366 = !DILocation(line: 776, column: 50, scope: !2975)
!3367 = !DILocation(line: 673, column: 34, scope: !3138, inlinedAt: !3368)
!3368 = distinct !DILocation(line: 777, column: 18, scope: !2975)
!3369 = !DILocation(line: 673, column: 45, scope: !3138, inlinedAt: !3368)
!3370 = !DILocation(line: 673, column: 53, scope: !3138, inlinedAt: !3368)
!3371 = !DILocation(line: 673, column: 68, scope: !3138, inlinedAt: !3368)
!3372 = !DILocation(line: 674, column: 68, scope: !3138, inlinedAt: !3368)
!3373 = !DILocation(line: 675, column: 12, scope: !3138, inlinedAt: !3368)
!3374 = !DILocation(line: 675, column: 7, scope: !3138, inlinedAt: !3368)
!3375 = !DILocation(line: 676, column: 12, scope: !3138, inlinedAt: !3368)
!3376 = !DILocation(line: 676, column: 7, scope: !3138, inlinedAt: !3368)
!3377 = !DILocation(line: 223, column: 33, scope: !1309, inlinedAt: !3378)
!3378 = distinct !DILocation(line: 677, column: 3, scope: !3138, inlinedAt: !3368)
!3379 = !DILocation(line: 223, column: 46, scope: !1309, inlinedAt: !3378)
!3380 = !DILocation(line: 224, column: 10, scope: !1316, inlinedAt: !3378)
!3381 = !DILocation(line: 224, column: 12, scope: !1316, inlinedAt: !3378)
!3382 = !DILocation(line: 224, column: 7, scope: !1309, inlinedAt: !3378)
!3383 = !DILocation(line: 225, column: 20, scope: !1316, inlinedAt: !3378)
!3384 = !DILocation(line: 225, column: 24, scope: !1316, inlinedAt: !3378)
!3385 = !DILocation(line: 215, column: 33, scope: !1246, inlinedAt: !3386)
!3386 = distinct !DILocation(line: 225, column: 5, scope: !1316, inlinedAt: !3378)
!3387 = !DILocation(line: 215, column: 41, scope: !1246, inlinedAt: !3386)
!3388 = !DILocation(line: 216, column: 8, scope: !1253, inlinedAt: !3386)
!3389 = !DILocation(line: 216, column: 17, scope: !1253, inlinedAt: !3386)
!3390 = !DILocation(line: 216, column: 31, scope: !1253, inlinedAt: !3386)
!3391 = !DILocation(line: 216, column: 27, scope: !1253, inlinedAt: !3386)
!3392 = !DILocation(line: 216, column: 24, scope: !1253, inlinedAt: !3386)
!3393 = !DILocation(line: 216, column: 7, scope: !1246, inlinedAt: !3386)
!3394 = !DILocation(line: 217, column: 9, scope: !1260, inlinedAt: !3386)
!3395 = !DILocation(line: 217, column: 16, scope: !1260, inlinedAt: !3386)
!3396 = !DILocation(line: 219, column: 3, scope: !1260, inlinedAt: !3386)
!3397 = !DILocation(line: 223, column: 33, scope: !1309, inlinedAt: !3398)
!3398 = distinct !DILocation(line: 678, column: 3, scope: !3138, inlinedAt: !3368)
!3399 = !DILocation(line: 223, column: 46, scope: !1309, inlinedAt: !3398)
!3400 = !DILocation(line: 224, column: 10, scope: !1316, inlinedAt: !3398)
!3401 = !DILocation(line: 224, column: 12, scope: !1316, inlinedAt: !3398)
!3402 = !DILocation(line: 0, scope: !3138, inlinedAt: !3368)
!3403 = !DILocation(line: 224, column: 7, scope: !1309, inlinedAt: !3398)
!3404 = !DILocation(line: 225, column: 24, scope: !1316, inlinedAt: !3398)
!3405 = !DILocation(line: 215, column: 33, scope: !1246, inlinedAt: !3406)
!3406 = distinct !DILocation(line: 225, column: 5, scope: !1316, inlinedAt: !3398)
!3407 = !DILocation(line: 215, column: 41, scope: !1246, inlinedAt: !3406)
!3408 = !DILocation(line: 216, column: 8, scope: !1253, inlinedAt: !3406)
!3409 = !DILocation(line: 216, column: 17, scope: !1253, inlinedAt: !3406)
!3410 = !DILocation(line: 216, column: 31, scope: !1253, inlinedAt: !3406)
!3411 = !DILocation(line: 216, column: 27, scope: !1253, inlinedAt: !3406)
!3412 = !DILocation(line: 216, column: 24, scope: !1253, inlinedAt: !3406)
!3413 = !DILocation(line: 216, column: 7, scope: !1246, inlinedAt: !3406)
!3414 = !DILocation(line: 217, column: 9, scope: !1260, inlinedAt: !3406)
!3415 = !DILocation(line: 217, column: 16, scope: !1260, inlinedAt: !3406)
!3416 = !DILocation(line: 219, column: 3, scope: !1260, inlinedAt: !3406)
!3417 = !DILocation(line: 684, column: 18, scope: !3138, inlinedAt: !3368)
!3418 = !DILocation(line: 684, column: 16, scope: !3138, inlinedAt: !3368)
!3419 = !DILocation(line: 685, column: 9, scope: !3138, inlinedAt: !3368)
!3420 = !DILocation(line: 777, column: 50, scope: !2975)
!3421 = !DILocation(line: 673, column: 34, scope: !3138, inlinedAt: !3422)
!3422 = distinct !DILocation(line: 778, column: 18, scope: !2975)
!3423 = !DILocation(line: 673, column: 45, scope: !3138, inlinedAt: !3422)
!3424 = !DILocation(line: 673, column: 53, scope: !3138, inlinedAt: !3422)
!3425 = !DILocation(line: 673, column: 68, scope: !3138, inlinedAt: !3422)
!3426 = !DILocation(line: 674, column: 68, scope: !3138, inlinedAt: !3422)
!3427 = !DILocation(line: 675, column: 12, scope: !3138, inlinedAt: !3422)
!3428 = !DILocation(line: 675, column: 7, scope: !3138, inlinedAt: !3422)
!3429 = !DILocation(line: 676, column: 12, scope: !3138, inlinedAt: !3422)
!3430 = !DILocation(line: 676, column: 7, scope: !3138, inlinedAt: !3422)
!3431 = !DILocation(line: 223, column: 33, scope: !1309, inlinedAt: !3432)
!3432 = distinct !DILocation(line: 677, column: 3, scope: !3138, inlinedAt: !3422)
!3433 = !DILocation(line: 223, column: 46, scope: !1309, inlinedAt: !3432)
!3434 = !DILocation(line: 224, column: 10, scope: !1316, inlinedAt: !3432)
!3435 = !DILocation(line: 224, column: 12, scope: !1316, inlinedAt: !3432)
!3436 = !DILocation(line: 224, column: 7, scope: !1309, inlinedAt: !3432)
!3437 = !DILocation(line: 225, column: 20, scope: !1316, inlinedAt: !3432)
!3438 = !DILocation(line: 225, column: 24, scope: !1316, inlinedAt: !3432)
!3439 = !DILocation(line: 215, column: 33, scope: !1246, inlinedAt: !3440)
!3440 = distinct !DILocation(line: 225, column: 5, scope: !1316, inlinedAt: !3432)
!3441 = !DILocation(line: 215, column: 41, scope: !1246, inlinedAt: !3440)
!3442 = !DILocation(line: 216, column: 8, scope: !1253, inlinedAt: !3440)
!3443 = !DILocation(line: 216, column: 17, scope: !1253, inlinedAt: !3440)
!3444 = !DILocation(line: 216, column: 31, scope: !1253, inlinedAt: !3440)
!3445 = !DILocation(line: 216, column: 27, scope: !1253, inlinedAt: !3440)
!3446 = !DILocation(line: 216, column: 24, scope: !1253, inlinedAt: !3440)
!3447 = !DILocation(line: 216, column: 7, scope: !1246, inlinedAt: !3440)
!3448 = !DILocation(line: 217, column: 9, scope: !1260, inlinedAt: !3440)
!3449 = !DILocation(line: 217, column: 16, scope: !1260, inlinedAt: !3440)
!3450 = !DILocation(line: 219, column: 3, scope: !1260, inlinedAt: !3440)
!3451 = !DILocation(line: 223, column: 33, scope: !1309, inlinedAt: !3452)
!3452 = distinct !DILocation(line: 678, column: 3, scope: !3138, inlinedAt: !3422)
!3453 = !DILocation(line: 223, column: 46, scope: !1309, inlinedAt: !3452)
!3454 = !DILocation(line: 224, column: 10, scope: !1316, inlinedAt: !3452)
!3455 = !DILocation(line: 224, column: 12, scope: !1316, inlinedAt: !3452)
!3456 = !DILocation(line: 0, scope: !3138, inlinedAt: !3422)
!3457 = !DILocation(line: 224, column: 7, scope: !1309, inlinedAt: !3452)
!3458 = !DILocation(line: 225, column: 24, scope: !1316, inlinedAt: !3452)
!3459 = !DILocation(line: 215, column: 33, scope: !1246, inlinedAt: !3460)
!3460 = distinct !DILocation(line: 225, column: 5, scope: !1316, inlinedAt: !3452)
!3461 = !DILocation(line: 215, column: 41, scope: !1246, inlinedAt: !3460)
!3462 = !DILocation(line: 216, column: 8, scope: !1253, inlinedAt: !3460)
!3463 = !DILocation(line: 216, column: 17, scope: !1253, inlinedAt: !3460)
!3464 = !DILocation(line: 216, column: 31, scope: !1253, inlinedAt: !3460)
!3465 = !DILocation(line: 216, column: 27, scope: !1253, inlinedAt: !3460)
!3466 = !DILocation(line: 216, column: 24, scope: !1253, inlinedAt: !3460)
!3467 = !DILocation(line: 216, column: 7, scope: !1246, inlinedAt: !3460)
!3468 = !DILocation(line: 217, column: 9, scope: !1260, inlinedAt: !3460)
!3469 = !DILocation(line: 217, column: 16, scope: !1260, inlinedAt: !3460)
!3470 = !DILocation(line: 219, column: 3, scope: !1260, inlinedAt: !3460)
!3471 = !DILocation(line: 684, column: 18, scope: !3138, inlinedAt: !3422)
!3472 = !DILocation(line: 684, column: 16, scope: !3138, inlinedAt: !3422)
!3473 = !DILocation(line: 685, column: 9, scope: !3138, inlinedAt: !3422)
!3474 = !DILocation(line: 778, column: 50, scope: !2975)
!3475 = !DILocation(line: 781, column: 1, scope: !2960)
!3476 = distinct !DISubprogram(name: "luaK_fixline", scope: !1, file: !1, line: 784, type: !787, isLocal: false, isDefinition: true, scopeLine: 784, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3477)
!3477 = !{!3478, !3479}
!3478 = !DILocalVariable(name: "fs", arg: 1, scope: !3476, file: !1, line: 784, type: !427)
!3479 = !DILocalVariable(name: "line", arg: 2, scope: !3476, file: !1, line: 784, type: !93)
!3480 = !DILocation(line: 784, column: 31, scope: !3476)
!3481 = !DILocation(line: 784, column: 39, scope: !3476)
!3482 = !DILocation(line: 785, column: 7, scope: !3476)
!3483 = !DILocation(line: 785, column: 10, scope: !3476)
!3484 = !{!545, !523, i64 40}
!3485 = !DILocation(line: 785, column: 23, scope: !3476)
!3486 = !DILocation(line: 785, column: 26, scope: !3476)
!3487 = !DILocation(line: 785, column: 3, scope: !3476)
!3488 = !DILocation(line: 785, column: 31, scope: !3476)
!3489 = !DILocation(line: 786, column: 1, scope: !3476)
!3490 = distinct !DISubprogram(name: "luaK_code", scope: !1, file: !1, line: 789, type: !3491, isLocal: true, isDefinition: true, scopeLine: 789, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3493)
!3491 = !DISubroutineType(types: !3492)
!3492 = !{!93, !427, !90, !93}
!3493 = !{!3494, !3495, !3496, !3497}
!3494 = !DILocalVariable(name: "fs", arg: 1, scope: !3490, file: !1, line: 789, type: !427)
!3495 = !DILocalVariable(name: "i", arg: 2, scope: !3490, file: !1, line: 789, type: !90)
!3496 = !DILocalVariable(name: "line", arg: 3, scope: !3490, file: !1, line: 789, type: !93)
!3497 = !DILocalVariable(name: "f", scope: !3490, file: !1, line: 790, type: !432)
!3498 = !DILocation(line: 789, column: 34, scope: !3490)
!3499 = !DILocation(line: 789, column: 50, scope: !3490)
!3500 = !DILocation(line: 789, column: 57, scope: !3490)
!3501 = !DILocation(line: 790, column: 18, scope: !3490)
!3502 = !DILocation(line: 790, column: 10, scope: !3490)
!3503 = !DILocalVariable(name: "fs", arg: 1, scope: !3504, file: !1, line: 163, type: !427)
!3504 = distinct !DISubprogram(name: "dischargejpc", scope: !1, file: !1, line: 163, type: !3505, isLocal: true, isDefinition: true, scopeLine: 163, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3507)
!3505 = !DISubroutineType(types: !3506)
!3506 = !{null, !427}
!3507 = !{!3503}
!3508 = !DILocation(line: 163, column: 38, scope: !3504, inlinedAt: !3509)
!3509 = distinct !DILocation(line: 791, column: 3, scope: !3490)
!3510 = !DILocation(line: 164, column: 24, scope: !3504, inlinedAt: !3509)
!3511 = !DILocation(line: 164, column: 33, scope: !3504, inlinedAt: !3509)
!3512 = !DILocation(line: 164, column: 3, scope: !3504, inlinedAt: !3509)
!3513 = !DILocation(line: 165, column: 11, scope: !3504, inlinedAt: !3509)
!3514 = !DILocation(line: 793, column: 3, scope: !3515)
!3515 = distinct !DILexicalBlock(scope: !3490, file: !1, line: 793, column: 3)
!3516 = !{!545, !526, i64 80}
!3517 = !DILocation(line: 793, column: 3, scope: !3490)
!3518 = !DILocation(line: 795, column: 6, scope: !3490)
!3519 = !DILocation(line: 795, column: 15, scope: !3490)
!3520 = !DILocation(line: 795, column: 3, scope: !3490)
!3521 = !DILocation(line: 795, column: 19, scope: !3490)
!3522 = !DILocation(line: 797, column: 3, scope: !3523)
!3523 = distinct !DILexicalBlock(scope: !3490, file: !1, line: 797, column: 3)
!3524 = !{!545, !526, i64 84}
!3525 = !DILocation(line: 797, column: 3, scope: !3490)
!3526 = !DILocation(line: 799, column: 6, scope: !3490)
!3527 = !DILocation(line: 799, column: 19, scope: !3490)
!3528 = !DILocation(line: 799, column: 3, scope: !3490)
!3529 = !DILocation(line: 799, column: 23, scope: !3490)
!3530 = !DILocation(line: 800, column: 16, scope: !3490)
!3531 = !DILocation(line: 800, column: 3, scope: !3490)
!3532 = distinct !DISubprogram(name: "luaK_setlist", scope: !1, file: !1, line: 819, type: !3533, isLocal: false, isDefinition: true, scopeLine: 819, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3535)
!3533 = !DISubroutineType(types: !3534)
!3534 = !{null, !427, !93, !93, !93}
!3535 = !{!3536, !3537, !3538, !3539, !3540, !3541}
!3536 = !DILocalVariable(name: "fs", arg: 1, scope: !3532, file: !1, line: 819, type: !427)
!3537 = !DILocalVariable(name: "base", arg: 2, scope: !3532, file: !1, line: 819, type: !93)
!3538 = !DILocalVariable(name: "nelems", arg: 3, scope: !3532, file: !1, line: 819, type: !93)
!3539 = !DILocalVariable(name: "tostore", arg: 4, scope: !3532, file: !1, line: 819, type: !93)
!3540 = !DILocalVariable(name: "c", scope: !3532, file: !1, line: 820, type: !93)
!3541 = !DILocalVariable(name: "b", scope: !3532, file: !1, line: 821, type: !93)
!3542 = !DILocation(line: 819, column: 31, scope: !3532)
!3543 = !DILocation(line: 819, column: 39, scope: !3532)
!3544 = !DILocation(line: 819, column: 49, scope: !3532)
!3545 = !DILocation(line: 819, column: 61, scope: !3532)
!3546 = !DILocation(line: 820, column: 20, scope: !3532)
!3547 = !DILocation(line: 820, column: 24, scope: !3532)
!3548 = !DILocation(line: 820, column: 43, scope: !3532)
!3549 = !DILocation(line: 820, column: 7, scope: !3532)
!3550 = !DILocation(line: 821, column: 20, scope: !3532)
!3551 = !DILocation(line: 823, column: 9, scope: !3552)
!3552 = distinct !DILexicalBlock(scope: !3532, file: !1, line: 823, column: 7)
!3553 = !DILocation(line: 804, column: 30, scope: !571, inlinedAt: !3554)
!3554 = distinct !DILocation(line: 824, column: 5, scope: !3552)
!3555 = !DILocation(line: 804, column: 30, scope: !571, inlinedAt: !3556)
!3556 = distinct !DILocation(line: 826, column: 5, scope: !3557)
!3557 = distinct !DILexicalBlock(scope: !3552, file: !1, line: 825, column: 8)
!3558 = !DILocation(line: 804, column: 41, scope: !571, inlinedAt: !3554)
!3559 = !DILocation(line: 804, column: 41, scope: !571, inlinedAt: !3556)
!3560 = !DILocation(line: 804, column: 48, scope: !571, inlinedAt: !3554)
!3561 = !DILocation(line: 804, column: 48, scope: !571, inlinedAt: !3556)
!3562 = !DILocation(line: 808, column: 24, scope: !571, inlinedAt: !3554)
!3563 = !DILocation(line: 823, column: 7, scope: !3532)
!3564 = !DILocation(line: 804, column: 62, scope: !571, inlinedAt: !3554)
!3565 = !DILocation(line: 808, column: 52, scope: !571, inlinedAt: !3554)
!3566 = !DILocation(line: 808, column: 56, scope: !571, inlinedAt: !3554)
!3567 = !DILocation(line: 808, column: 10, scope: !571, inlinedAt: !3554)
!3568 = !DILocation(line: 824, column: 5, scope: !3552)
!3569 = !DILocation(line: 804, column: 62, scope: !571, inlinedAt: !3556)
!3570 = !DILocation(line: 808, column: 52, scope: !571, inlinedAt: !3556)
!3571 = !DILocation(line: 808, column: 56, scope: !571, inlinedAt: !3556)
!3572 = !DILocation(line: 808, column: 10, scope: !571, inlinedAt: !3556)
!3573 = !DILocation(line: 827, column: 45, scope: !3557)
!3574 = !DILocation(line: 827, column: 49, scope: !3557)
!3575 = !DILocation(line: 827, column: 5, scope: !3557)
!3576 = !DILocation(line: 829, column: 22, scope: !3532)
!3577 = !DILocation(line: 829, column: 7, scope: !3532)
!3578 = !DILocation(line: 829, column: 15, scope: !3532)
!3579 = !DILocation(line: 830, column: 1, scope: !3532)
!3580 = !DILocation(line: 131, column: 37, scope: !2517)
!3581 = !DILocation(line: 131, column: 45, scope: !2517)
!3582 = !DILocation(line: 131, column: 55, scope: !2517)
!3583 = !DILocation(line: 109, column: 48, scope: !1442, inlinedAt: !3584)
!3584 = distinct !DILocation(line: 132, column: 20, scope: !2517)
!3585 = !DILocation(line: 109, column: 56, scope: !1442, inlinedAt: !3584)
!3586 = !DILocation(line: 110, column: 26, scope: !1442, inlinedAt: !3584)
!3587 = !DILocation(line: 110, column: 29, scope: !1442, inlinedAt: !3584)
!3588 = !DILocation(line: 110, column: 22, scope: !1442, inlinedAt: !3584)
!3589 = !DILocation(line: 110, column: 16, scope: !1442, inlinedAt: !3584)
!3590 = !DILocation(line: 111, column: 10, scope: !1454, inlinedAt: !3584)
!3591 = !DILocation(line: 111, column: 15, scope: !1454, inlinedAt: !3584)
!3592 = !DILocation(line: 111, column: 18, scope: !1454, inlinedAt: !3584)
!3593 = !DILocation(line: 111, column: 7, scope: !1442, inlinedAt: !3584)
!3594 = !DILocation(line: 133, column: 7, scope: !2539)
!3595 = !DILocation(line: 114, column: 5, scope: !1454, inlinedAt: !3584)
!3596 = !DILocation(line: 0, scope: !1454, inlinedAt: !3584)
!3597 = !DILocation(line: 132, column: 16, scope: !2517)
!3598 = !DILocation(line: 133, column: 22, scope: !2539)
!3599 = !DILocation(line: 133, column: 7, scope: !2517)
!3600 = !DILocation(line: 135, column: 11, scope: !2546)
!3601 = !DILocation(line: 135, column: 31, scope: !2546)
!3602 = !DILocation(line: 135, column: 28, scope: !2546)
!3603 = !DILocation(line: 135, column: 21, scope: !2546)
!3604 = !DILocation(line: 136, column: 5, scope: !2546)
!3605 = !DILocation(line: 138, column: 10, scope: !2546)
!3606 = !DILocation(line: 0, scope: !2546)
!3607 = !DILocation(line: 140, column: 3, scope: !2517)
!3608 = !DILocation(line: 0, scope: !2517)
!3609 = !DILocation(line: 141, column: 1, scope: !2517)
!3610 = distinct !DISubprogram(name: "discharge2reg", scope: !1, file: !1, line: 343, type: !1113, isLocal: true, isDefinition: true, scopeLine: 343, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3611)
!3611 = !{!3612, !3613, !3614, !3615}
!3612 = !DILocalVariable(name: "fs", arg: 1, scope: !3610, file: !1, line: 343, type: !427)
!3613 = !DILocalVariable(name: "e", arg: 2, scope: !3610, file: !1, line: 343, type: !1115)
!3614 = !DILocalVariable(name: "reg", arg: 3, scope: !3610, file: !1, line: 343, type: !93)
!3615 = !DILocalVariable(name: "pc", scope: !3616, file: !1, line: 363, type: !385)
!3616 = distinct !DILexicalBlock(scope: !3617, file: !1, line: 362, column: 22)
!3617 = distinct !DILexicalBlock(scope: !3610, file: !1, line: 345, column: 17)
!3618 = !DILocation(line: 343, column: 39, scope: !3610)
!3619 = !DILocation(line: 343, column: 52, scope: !3610)
!3620 = !DILocation(line: 343, column: 59, scope: !3610)
!3621 = !DILocation(line: 344, column: 3, scope: !3610)
!3622 = !DILocation(line: 345, column: 14, scope: !3610)
!3623 = !DILocation(line: 345, column: 3, scope: !3610)
!3624 = !DILocation(line: 35, column: 27, scope: !424, inlinedAt: !3625)
!3625 = distinct !DILocation(line: 347, column: 7, scope: !3626)
!3626 = distinct !DILexicalBlock(scope: !3617, file: !1, line: 346, column: 16)
!3627 = !DILocation(line: 35, column: 35, scope: !424, inlinedAt: !3625)
!3628 = !DILocation(line: 35, column: 45, scope: !424, inlinedAt: !3625)
!3629 = !DILocation(line: 37, column: 11, scope: !515, inlinedAt: !3625)
!3630 = !DILocation(line: 37, column: 20, scope: !515, inlinedAt: !3625)
!3631 = !DILocation(line: 37, column: 14, scope: !515, inlinedAt: !3625)
!3632 = !DILocation(line: 37, column: 7, scope: !424, inlinedAt: !3625)
!3633 = !DILocation(line: 38, column: 16, scope: !513, inlinedAt: !3625)
!3634 = !DILocation(line: 38, column: 9, scope: !514, inlinedAt: !3625)
!3635 = !DILocation(line: 39, column: 23, scope: !535, inlinedAt: !3625)
!3636 = !DILocation(line: 39, column: 19, scope: !535, inlinedAt: !3625)
!3637 = !DILocation(line: 39, column: 16, scope: !535, inlinedAt: !3625)
!3638 = !DILocation(line: 39, column: 11, scope: !536, inlinedAt: !3625)
!3639 = !DILocation(line: 43, column: 23, scope: !512, inlinedAt: !3625)
!3640 = !DILocation(line: 43, column: 26, scope: !512, inlinedAt: !3625)
!3641 = !DILocation(line: 43, column: 37, scope: !512, inlinedAt: !3625)
!3642 = !DILocation(line: 43, column: 19, scope: !512, inlinedAt: !3625)
!3643 = !DILocation(line: 36, column: 16, scope: !424, inlinedAt: !3625)
!3644 = !DILocation(line: 44, column: 11, scope: !511, inlinedAt: !3625)
!3645 = !DILocation(line: 44, column: 33, scope: !511, inlinedAt: !3625)
!3646 = !DILocation(line: 44, column: 11, scope: !512, inlinedAt: !3625)
!3647 = !DILocation(line: 45, column: 21, scope: !510, inlinedAt: !3625)
!3648 = !DILocation(line: 45, column: 13, scope: !510, inlinedAt: !3625)
!3649 = !DILocation(line: 46, column: 19, scope: !510, inlinedAt: !3625)
!3650 = !DILocation(line: 46, column: 13, scope: !510, inlinedAt: !3625)
!3651 = !DILocation(line: 47, column: 19, scope: !558, inlinedAt: !3625)
!3652 = !DILocation(line: 47, column: 41, scope: !558, inlinedAt: !3625)
!3653 = !DILocation(line: 47, column: 35, scope: !558, inlinedAt: !3625)
!3654 = !DILocation(line: 47, column: 27, scope: !558, inlinedAt: !3625)
!3655 = !DILocation(line: 48, column: 24, scope: !563, inlinedAt: !3625)
!3656 = !DILocation(line: 48, column: 15, scope: !564, inlinedAt: !3625)
!3657 = !DILocation(line: 49, column: 13, scope: !563, inlinedAt: !3625)
!3658 = !DILocation(line: 804, column: 30, scope: !571, inlinedAt: !3659)
!3659 = distinct !DILocation(line: 55, column: 3, scope: !424, inlinedAt: !3625)
!3660 = !DILocation(line: 804, column: 41, scope: !571, inlinedAt: !3659)
!3661 = !DILocation(line: 804, column: 48, scope: !571, inlinedAt: !3659)
!3662 = !DILocation(line: 804, column: 55, scope: !571, inlinedAt: !3659)
!3663 = !DILocation(line: 804, column: 62, scope: !571, inlinedAt: !3659)
!3664 = !DILocation(line: 808, column: 24, scope: !571, inlinedAt: !3659)
!3665 = !DILocation(line: 808, column: 52, scope: !571, inlinedAt: !3659)
!3666 = !DILocation(line: 808, column: 56, scope: !571, inlinedAt: !3659)
!3667 = !DILocation(line: 808, column: 10, scope: !571, inlinedAt: !3659)
!3668 = !DILocation(line: 56, column: 1, scope: !424, inlinedAt: !3625)
!3669 = !DILocation(line: 351, column: 47, scope: !3670)
!3670 = distinct !DILexicalBlock(scope: !3617, file: !1, line: 350, column: 31)
!3671 = !DILocation(line: 804, column: 30, scope: !571, inlinedAt: !3672)
!3672 = distinct !DILocation(line: 351, column: 7, scope: !3670)
!3673 = !DILocation(line: 804, column: 41, scope: !571, inlinedAt: !3672)
!3674 = !DILocation(line: 804, column: 48, scope: !571, inlinedAt: !3672)
!3675 = !DILocation(line: 804, column: 55, scope: !571, inlinedAt: !3672)
!3676 = !DILocation(line: 804, column: 62, scope: !571, inlinedAt: !3672)
!3677 = !DILocation(line: 808, column: 24, scope: !571, inlinedAt: !3672)
!3678 = !DILocation(line: 808, column: 52, scope: !571, inlinedAt: !3672)
!3679 = !DILocation(line: 808, column: 56, scope: !571, inlinedAt: !3672)
!3680 = !DILocation(line: 808, column: 10, scope: !571, inlinedAt: !3672)
!3681 = !DILocation(line: 352, column: 7, scope: !3670)
!3682 = !DILocation(line: 355, column: 42, scope: !3683)
!3683 = distinct !DILexicalBlock(scope: !3617, file: !1, line: 354, column: 14)
!3684 = !DILocation(line: 355, column: 46, scope: !3683)
!3685 = !DILocation(line: 812, column: 30, scope: !617, inlinedAt: !3686)
!3686 = distinct !DILocation(line: 355, column: 7, scope: !3683)
!3687 = !DILocation(line: 812, column: 41, scope: !617, inlinedAt: !3686)
!3688 = !DILocation(line: 812, column: 48, scope: !617, inlinedAt: !3686)
!3689 = !DILocation(line: 812, column: 64, scope: !617, inlinedAt: !3686)
!3690 = !DILocation(line: 815, column: 24, scope: !617, inlinedAt: !3686)
!3691 = !DILocation(line: 815, column: 50, scope: !617, inlinedAt: !3686)
!3692 = !DILocation(line: 815, column: 54, scope: !617, inlinedAt: !3686)
!3693 = !DILocation(line: 815, column: 10, scope: !617, inlinedAt: !3686)
!3694 = !DILocation(line: 356, column: 7, scope: !3683)
!3695 = !DILocation(line: 359, column: 61, scope: !3696)
!3696 = distinct !DILexicalBlock(scope: !3617, file: !1, line: 358, column: 17)
!3697 = !DILocation(line: 257, column: 30, scope: !1095, inlinedAt: !3698)
!3698 = distinct !DILocation(line: 359, column: 39, scope: !3696)
!3699 = !DILocation(line: 257, column: 45, scope: !1095, inlinedAt: !3698)
!3700 = !DILocation(line: 258, column: 3, scope: !1095, inlinedAt: !3698)
!3701 = !DILocation(line: 259, column: 3, scope: !1103, inlinedAt: !3698)
!3702 = !DILocation(line: 258, column: 10, scope: !1095, inlinedAt: !3698)
!3703 = !DILocation(line: 260, column: 10, scope: !1095, inlinedAt: !3698)
!3704 = !DILocation(line: 261, column: 1, scope: !1095, inlinedAt: !3698)
!3705 = !DILocation(line: 812, column: 30, scope: !617, inlinedAt: !3706)
!3706 = distinct !DILocation(line: 359, column: 7, scope: !3696)
!3707 = !DILocation(line: 812, column: 41, scope: !617, inlinedAt: !3706)
!3708 = !DILocation(line: 812, column: 48, scope: !617, inlinedAt: !3706)
!3709 = !DILocation(line: 812, column: 64, scope: !617, inlinedAt: !3706)
!3710 = !DILocation(line: 815, column: 24, scope: !617, inlinedAt: !3706)
!3711 = !DILocation(line: 815, column: 50, scope: !617, inlinedAt: !3706)
!3712 = !DILocation(line: 815, column: 54, scope: !617, inlinedAt: !3706)
!3713 = !DILocation(line: 815, column: 10, scope: !617, inlinedAt: !3706)
!3714 = !DILocation(line: 360, column: 7, scope: !3696)
!3715 = !DILocation(line: 363, column: 26, scope: !3616)
!3716 = !DILocation(line: 363, column: 20, scope: !3616)
!3717 = !DILocation(line: 364, column: 7, scope: !3616)
!3718 = !DILocation(line: 368, column: 21, scope: !3719)
!3719 = distinct !DILexicalBlock(scope: !3720, file: !1, line: 368, column: 11)
!3720 = distinct !DILexicalBlock(scope: !3617, file: !1, line: 367, column: 21)
!3721 = !DILocation(line: 368, column: 25, scope: !3719)
!3722 = !DILocation(line: 368, column: 15, scope: !3719)
!3723 = !DILocation(line: 368, column: 11, scope: !3720)
!3724 = !DILocation(line: 804, column: 30, scope: !571, inlinedAt: !3725)
!3725 = distinct !DILocation(line: 369, column: 9, scope: !3719)
!3726 = !DILocation(line: 804, column: 41, scope: !571, inlinedAt: !3725)
!3727 = !DILocation(line: 804, column: 48, scope: !571, inlinedAt: !3725)
!3728 = !DILocation(line: 804, column: 55, scope: !571, inlinedAt: !3725)
!3729 = !DILocation(line: 804, column: 62, scope: !571, inlinedAt: !3725)
!3730 = !DILocation(line: 808, column: 24, scope: !571, inlinedAt: !3725)
!3731 = !DILocation(line: 808, column: 52, scope: !571, inlinedAt: !3725)
!3732 = !DILocation(line: 808, column: 56, scope: !571, inlinedAt: !3725)
!3733 = !DILocation(line: 808, column: 10, scope: !571, inlinedAt: !3725)
!3734 = !DILocation(line: 369, column: 9, scope: !3719)
!3735 = !DILocation(line: 377, column: 6, scope: !3610)
!3736 = !DILocation(line: 377, column: 10, scope: !3610)
!3737 = !DILocation(line: 377, column: 15, scope: !3610)
!3738 = !DILocation(line: 378, column: 8, scope: !3610)
!3739 = !DILocation(line: 379, column: 1, scope: !3610)
!3740 = distinct !DISubprogram(name: "condjump", scope: !1, file: !1, line: 74, type: !572, isLocal: true, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3741)
!3741 = !{!3742, !3743, !3744, !3745, !3746}
!3742 = !DILocalVariable(name: "fs", arg: 1, scope: !3740, file: !1, line: 74, type: !427)
!3743 = !DILocalVariable(name: "op", arg: 2, scope: !3740, file: !1, line: 74, type: !89)
!3744 = !DILocalVariable(name: "A", arg: 3, scope: !3740, file: !1, line: 74, type: !93)
!3745 = !DILocalVariable(name: "B", arg: 4, scope: !3740, file: !1, line: 74, type: !93)
!3746 = !DILocalVariable(name: "C", arg: 5, scope: !3740, file: !1, line: 74, type: !93)
!3747 = !DILocation(line: 74, column: 33, scope: !3740)
!3748 = !DILocation(line: 74, column: 44, scope: !3740)
!3749 = !DILocation(line: 74, column: 52, scope: !3740)
!3750 = !DILocation(line: 74, column: 59, scope: !3740)
!3751 = !DILocation(line: 74, column: 66, scope: !3740)
!3752 = !DILocation(line: 804, column: 30, scope: !571, inlinedAt: !3753)
!3753 = distinct !DILocation(line: 75, column: 3, scope: !3740)
!3754 = !DILocation(line: 804, column: 41, scope: !571, inlinedAt: !3753)
!3755 = !DILocation(line: 804, column: 48, scope: !571, inlinedAt: !3753)
!3756 = !DILocation(line: 804, column: 55, scope: !571, inlinedAt: !3753)
!3757 = !DILocation(line: 804, column: 62, scope: !571, inlinedAt: !3753)
!3758 = !DILocation(line: 808, column: 24, scope: !571, inlinedAt: !3753)
!3759 = !DILocation(line: 808, column: 52, scope: !571, inlinedAt: !3753)
!3760 = !DILocation(line: 808, column: 56, scope: !571, inlinedAt: !3753)
!3761 = !DILocation(line: 808, column: 10, scope: !571, inlinedAt: !3753)
!3762 = !DILocation(line: 59, column: 27, scope: !604, inlinedAt: !3763)
!3763 = distinct !DILocation(line: 76, column: 10, scope: !3740)
!3764 = !DILocation(line: 60, column: 17, scope: !604, inlinedAt: !3763)
!3765 = !DILocation(line: 60, column: 7, scope: !604, inlinedAt: !3763)
!3766 = !DILocation(line: 62, column: 11, scope: !604, inlinedAt: !3763)
!3767 = !DILocation(line: 812, column: 30, scope: !617, inlinedAt: !3768)
!3768 = distinct !DILocation(line: 63, column: 7, scope: !604, inlinedAt: !3763)
!3769 = !DILocation(line: 812, column: 41, scope: !617, inlinedAt: !3768)
!3770 = !DILocation(line: 812, column: 48, scope: !617, inlinedAt: !3768)
!3771 = !DILocation(line: 812, column: 64, scope: !617, inlinedAt: !3768)
!3772 = !DILocation(line: 815, column: 50, scope: !617, inlinedAt: !3768)
!3773 = !DILocation(line: 815, column: 54, scope: !617, inlinedAt: !3768)
!3774 = !DILocation(line: 815, column: 10, scope: !617, inlinedAt: !3768)
!3775 = !DILocation(line: 61, column: 7, scope: !604, inlinedAt: !3763)
!3776 = !DILocation(line: 185, column: 30, scope: !634, inlinedAt: !3777)
!3777 = distinct !DILocation(line: 64, column: 3, scope: !604, inlinedAt: !3763)
!3778 = !DILocation(line: 185, column: 47, scope: !634, inlinedAt: !3777)
!3779 = !DILocation(line: 186, column: 10, scope: !643, inlinedAt: !3777)
!3780 = !DILocation(line: 186, column: 7, scope: !634, inlinedAt: !3777)
!3781 = !DILocation(line: 187, column: 16, scope: !642, inlinedAt: !3777)
!3782 = !DILocation(line: 187, column: 12, scope: !643, inlinedAt: !3777)
!3783 = !DILocation(line: 101, column: 16, scope: !653, inlinedAt: !3784)
!3784 = distinct !DILocation(line: 192, column: 20, scope: !641, inlinedAt: !3777)
!3785 = !DILocation(line: 0, scope: !641, inlinedAt: !3777)
!3786 = !DILocation(line: 190, column: 9, scope: !641, inlinedAt: !3777)
!3787 = !DILocation(line: 100, column: 32, scope: !653, inlinedAt: !3784)
!3788 = !DILocation(line: 100, column: 40, scope: !653, inlinedAt: !3784)
!3789 = !DILocation(line: 101, column: 7, scope: !653, inlinedAt: !3784)
!3790 = !DILocation(line: 102, column: 14, scope: !667, inlinedAt: !3784)
!3791 = !DILocation(line: 105, column: 15, scope: !667, inlinedAt: !3784)
!3792 = !DILocation(line: 105, column: 18, scope: !667, inlinedAt: !3784)
!3793 = !DILocation(line: 102, column: 7, scope: !653, inlinedAt: !3784)
!3794 = !DILocation(line: 191, column: 9, scope: !641, inlinedAt: !3777)
!3795 = !DILocation(line: 192, column: 39, scope: !641, inlinedAt: !3777)
!3796 = !DILocation(line: 192, column: 5, scope: !641, inlinedAt: !3777)
!3797 = !DILocation(line: 80, column: 33, scope: !678, inlinedAt: !3798)
!3798 = distinct !DILocation(line: 194, column: 5, scope: !641, inlinedAt: !3777)
!3799 = !DILocation(line: 80, column: 41, scope: !678, inlinedAt: !3798)
!3800 = !DILocation(line: 80, column: 49, scope: !678, inlinedAt: !3798)
!3801 = !DILocation(line: 81, column: 16, scope: !678, inlinedAt: !3798)
!3802 = !DILocation(line: 82, column: 20, scope: !678, inlinedAt: !3798)
!3803 = !DILocation(line: 82, column: 7, scope: !678, inlinedAt: !3798)
!3804 = !DILocation(line: 84, column: 7, scope: !692, inlinedAt: !3798)
!3805 = !DILocation(line: 84, column: 19, scope: !692, inlinedAt: !3798)
!3806 = !DILocation(line: 84, column: 7, scope: !678, inlinedAt: !3798)
!3807 = !DILocation(line: 85, column: 26, scope: !692, inlinedAt: !3798)
!3808 = !DILocation(line: 85, column: 5, scope: !692, inlinedAt: !3798)
!3809 = !DILocation(line: 86, column: 3, scope: !678, inlinedAt: !3798)
!3810 = !DILocation(line: 0, scope: !604, inlinedAt: !3763)
!3811 = !DILocation(line: 76, column: 3, scope: !3740)
