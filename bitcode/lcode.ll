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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !593
  br label %55, !dbg !594

; <label>:55:                                     ; preds = %35, %39, %11, %43
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !594
  ret void, !dbg !594
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone nounwind
define hidden i32 @luaK_codeABC(%struct.FuncState* nocapture, i32, i32, i32, i32) local_unnamed_addr #0 !dbg !571 {
  %6 = shl i32 %2, 6, !dbg !600
  %7 = or i32 %6, %1, !dbg !600
  %8 = shl i32 %3, 23, !dbg !600
  %9 = or i32 %7, %8, !dbg !600
  %10 = shl i32 %4, 14, !dbg !600
  %11 = or i32 %9, %10, !dbg !600
  %12 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !601
  %13 = load %struct.LexState*, %struct.LexState** %12, align 8, !dbg !601, !tbaa !587
  %14 = getelementptr inbounds %struct.LexState, %struct.LexState* %13, i64 0, i32 2, !dbg !602
  %15 = load i32, i32* %14, align 8, !dbg !602, !tbaa !589
  %16 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %11, i32 %15) #6, !dbg !603
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !604
  ret i32 %16, !dbg !604
}

; Function Attrs: noredzone nounwind
define hidden i32 @luaK_jump(%struct.FuncState* nocapture) local_unnamed_addr #0 !dbg !605 {
  %2 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 8, !dbg !613
  %3 = load i32, i32* %2, align 8, !dbg !613, !tbaa !614
  store i32 -1, i32* %2, align 8, !dbg !616, !tbaa !614
  %4 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !630
  %5 = load %struct.LexState*, %struct.LexState** %4, align 8, !dbg !630, !tbaa !587
  %6 = getelementptr inbounds %struct.LexState, %struct.LexState* %5, i64 0, i32 2, !dbg !631
  %7 = load i32, i32* %6, align 8, !dbg !631, !tbaa !589
  %8 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 2147450902, i32 %7) #5, !dbg !632
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !633
  %9 = icmp eq i32 %3, -1, !dbg !650
  br i1 %9, label %43, label %10, !dbg !651

; <label>:10:                                     ; preds = %1
  %11 = icmp eq i32 %8, -1, !dbg !652
  br i1 %11, label %43, label %12, !dbg !653

; <label>:12:                                     ; preds = %10
  %13 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %14 = load %struct.Proto*, %struct.Proto** %13, align 8, !tbaa !542
  %15 = getelementptr inbounds %struct.Proto, %struct.Proto* %14, i64 0, i32 4
  %16 = load i32*, i32** %15, align 8, !tbaa !544
  br label %17, !dbg !654

; <label>:17:                                     ; preds = %17, %12
  %18 = phi i32 [ %27, %17 ], [ %8, %12 ], !dbg !663
  %19 = sext i32 %18 to i64, !dbg !654
  %20 = getelementptr inbounds i32, i32* %16, i64 %19, !dbg !654
  %21 = load i32, i32* %20, align 4, !dbg !654, !tbaa !550
  %22 = lshr i32 %21, 14, !dbg !654
  %23 = add nsw i32 %22, -131071, !dbg !654
  %24 = icmp eq i32 %23, -1, !dbg !668
  %25 = add nsw i32 %18, 1, !dbg !670
  %26 = add nsw i32 %25, %23, !dbg !671
  %27 = select i1 %24, i32 -1, i32 %26, !dbg !672
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !673
  %28 = icmp eq i32 %27, -1, !dbg !675
  br i1 %28, label %29, label %17, !dbg !676, !llvm.loop !677

; <label>:29:                                     ; preds = %17
  %30 = getelementptr inbounds i32, i32* %16, i64 %19, !dbg !654
  %31 = xor i32 %18, -1, !dbg !692
  %32 = add i32 %3, %31, !dbg !692
  %33 = tail call i32 @abs(i32 %32) #5, !dbg !694
  %34 = icmp sgt i32 %33, 131071, !dbg !696
  br i1 %34, label %35, label %37, !dbg !697

; <label>:35:                                     ; preds = %29
  %36 = load %struct.LexState*, %struct.LexState** %4, align 8, !dbg !698, !tbaa !587
  tail call void @luaX_syntaxerror(%struct.LexState* %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !699
  br label %37, !dbg !699

; <label>:37:                                     ; preds = %35, %29
  %38 = load i32, i32* %30, align 4, !dbg !700, !tbaa !550
  %39 = and i32 %38, 16383, !dbg !700
  %40 = shl i32 %32, 14, !dbg !700
  %41 = add i32 %40, 2147467264, !dbg !700
  %42 = or i32 %39, %41, !dbg !700
  store i32 %42, i32* %30, align 4, !dbg !700, !tbaa !550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !701
  br label %43

; <label>:43:                                     ; preds = %10, %1, %37
  %44 = phi i32 [ %8, %1 ], [ %8, %37 ], [ %3, %10 ], !dbg !702
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !703
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !704
  ret i32 %44, !dbg !704
}

; Function Attrs: noredzone nounwind
define hidden i32 @luaK_codeABx(%struct.FuncState* nocapture, i32, i32, i32) local_unnamed_addr #0 !dbg !618 {
  %5 = shl i32 %2, 6, !dbg !709
  %6 = or i32 %5, %1, !dbg !709
  %7 = shl i32 %3, 14, !dbg !709
  %8 = or i32 %6, %7, !dbg !709
  %9 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !710
  %10 = load %struct.LexState*, %struct.LexState** %9, align 8, !dbg !710, !tbaa !587
  %11 = getelementptr inbounds %struct.LexState, %struct.LexState* %10, i64 0, i32 2, !dbg !711
  %12 = load i32, i32* %11, align 8, !dbg !711, !tbaa !589
  %13 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %8, i32 %12) #6, !dbg !712
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !713
  ret i32 %13, !dbg !713
}

; Function Attrs: noredzone nounwind
define hidden void @luaK_concat(%struct.FuncState* nocapture readonly, i32* nocapture, i32) local_unnamed_addr #0 !dbg !636 {
  %4 = icmp eq i32 %2, -1, !dbg !717
  br i1 %4, label %41, label %5, !dbg !718

; <label>:5:                                      ; preds = %3
  %6 = load i32, i32* %1, align 4, !dbg !719, !tbaa !550
  %7 = icmp eq i32 %6, -1, !dbg !720
  br i1 %7, label %13, label %8, !dbg !721

; <label>:8:                                      ; preds = %5
  %9 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %10 = load %struct.Proto*, %struct.Proto** %9, align 8, !tbaa !542
  %11 = getelementptr inbounds %struct.Proto, %struct.Proto* %10, i64 0, i32 4
  %12 = load i32*, i32** %11, align 8, !tbaa !544
  br label %14, !dbg !722

; <label>:13:                                     ; preds = %5
  store i32 %2, i32* %1, align 4, !dbg !724, !tbaa !550
  br label %41, !dbg !725

; <label>:14:                                     ; preds = %8, %14
  %15 = phi i32 [ %24, %14 ], [ %6, %8 ], !dbg !726
  %16 = sext i32 %15 to i64, !dbg !722
  %17 = getelementptr inbounds i32, i32* %12, i64 %16, !dbg !722
  %18 = load i32, i32* %17, align 4, !dbg !722, !tbaa !550
  %19 = lshr i32 %18, 14, !dbg !722
  %20 = add nsw i32 %19, -131071, !dbg !722
  %21 = icmp eq i32 %20, -1, !dbg !731
  %22 = add nsw i32 %15, 1, !dbg !732
  %23 = add nsw i32 %22, %20, !dbg !733
  %24 = select i1 %21, i32 -1, i32 %23, !dbg !734
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !735
  %25 = icmp eq i32 %24, -1, !dbg !737
  br i1 %25, label %26, label %14, !dbg !678, !llvm.loop !677

; <label>:26:                                     ; preds = %14
  %27 = getelementptr inbounds i32, i32* %12, i64 %16, !dbg !722
  %28 = xor i32 %15, -1, !dbg !743
  %29 = add i32 %28, %2, !dbg !743
  %30 = tail call i32 @abs(i32 %29) #5, !dbg !745
  %31 = icmp sgt i32 %30, 131071, !dbg !746
  br i1 %31, label %32, label %35, !dbg !747

; <label>:32:                                     ; preds = %26
  %33 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !748
  %34 = load %struct.LexState*, %struct.LexState** %33, align 8, !dbg !748, !tbaa !587
  tail call void @luaX_syntaxerror(%struct.LexState* %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !749
  br label %35, !dbg !749

; <label>:35:                                     ; preds = %26, %32
  %36 = load i32, i32* %27, align 4, !dbg !750, !tbaa !550
  %37 = and i32 %36, 16383, !dbg !750
  %38 = shl i32 %29, 14, !dbg !750
  %39 = add i32 %38, 2147467264, !dbg !750
  %40 = or i32 %37, %39, !dbg !750
  store i32 %40, i32* %27, align 4, !dbg !750, !tbaa !550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !751
  br label %41

; <label>:41:                                     ; preds = %13, %35, %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !752
  ret void, !dbg !752
}

; Function Attrs: noredzone nounwind
define hidden void @luaK_ret(%struct.FuncState* nocapture, i32, i32) local_unnamed_addr #0 !dbg !753 {
  %4 = shl i32 %1, 6, !dbg !767
  %5 = shl i32 %2, 23, !dbg !767
  %6 = add i32 %5, 8388608, !dbg !767
  %7 = or i32 %4, %6, !dbg !767
  %8 = or i32 %7, 30, !dbg !767
  %9 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !768
  %10 = load %struct.LexState*, %struct.LexState** %9, align 8, !dbg !768, !tbaa !587
  %11 = getelementptr inbounds %struct.LexState, %struct.LexState* %10, i64 0, i32 2, !dbg !769
  %12 = load i32, i32* %11, align 8, !dbg !769, !tbaa !589
  %13 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %8, i32 %12) #5, !dbg !770
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !771
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !772
  ret void, !dbg !772
}

; Function Attrs: noredzone nounwind
define hidden i32 @luaK_getlabel(%struct.FuncState* nocapture) local_unnamed_addr #0 !dbg !773 {
  %2 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 6, !dbg !777
  %3 = load i32, i32* %2, align 8, !dbg !777, !tbaa !521
  %4 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 7, !dbg !778
  store i32 %3, i32* %4, align 4, !dbg !779, !tbaa !529
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !780
  ret i32 %3, !dbg !780
}

; Function Attrs: noredzone nounwind
define hidden void @luaK_patchlist(%struct.FuncState* nocapture, i32, i32) local_unnamed_addr #0 !dbg !781 {
  %4 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 6, !dbg !789
  %5 = load i32, i32* %4, align 8, !dbg !789, !tbaa !521
  %6 = icmp eq i32 %5, %2, !dbg !791
  br i1 %6, label %7, label %48, !dbg !792

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 7, !dbg !804
  store i32 %2, i32* %8, align 4, !dbg !805, !tbaa !529
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !806
  %9 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 8, !dbg !807
  %10 = icmp eq i32 %1, -1, !dbg !812
  br i1 %10, label %47, label %11, !dbg !813

; <label>:11:                                     ; preds = %7
  %12 = load i32, i32* %9, align 4, !dbg !814, !tbaa !550
  %13 = icmp eq i32 %12, -1, !dbg !815
  br i1 %13, label %19, label %14, !dbg !816

; <label>:14:                                     ; preds = %11
  %15 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %16 = load %struct.Proto*, %struct.Proto** %15, align 8, !tbaa !542
  %17 = getelementptr inbounds %struct.Proto, %struct.Proto* %16, i64 0, i32 4
  %18 = load i32*, i32** %17, align 8, !tbaa !544
  br label %20, !dbg !817

; <label>:19:                                     ; preds = %11
  store i32 %1, i32* %9, align 4, !dbg !819, !tbaa !550
  br label %47, !dbg !820

; <label>:20:                                     ; preds = %20, %14
  %21 = phi i32 [ %30, %20 ], [ %12, %14 ], !dbg !821
  %22 = sext i32 %21 to i64, !dbg !817
  %23 = getelementptr inbounds i32, i32* %18, i64 %22, !dbg !817
  %24 = load i32, i32* %23, align 4, !dbg !817, !tbaa !550
  %25 = lshr i32 %24, 14, !dbg !817
  %26 = add nsw i32 %25, -131071, !dbg !817
  %27 = icmp eq i32 %26, -1, !dbg !826
  %28 = add nsw i32 %21, 1, !dbg !827
  %29 = add nsw i32 %28, %26, !dbg !828
  %30 = select i1 %27, i32 -1, i32 %29, !dbg !829
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !830
  %31 = icmp eq i32 %30, -1, !dbg !832
  br i1 %31, label %32, label %20, !dbg !833, !llvm.loop !677

; <label>:32:                                     ; preds = %20
  %33 = getelementptr inbounds i32, i32* %18, i64 %22, !dbg !817
  %34 = xor i32 %21, -1, !dbg !839
  %35 = add i32 %34, %1, !dbg !839
  %36 = tail call i32 @abs(i32 %35) #5, !dbg !841
  %37 = icmp sgt i32 %36, 131071, !dbg !842
  br i1 %37, label %38, label %41, !dbg !843

; <label>:38:                                     ; preds = %32
  %39 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !844
  %40 = load %struct.LexState*, %struct.LexState** %39, align 8, !dbg !844, !tbaa !587
  tail call void @luaX_syntaxerror(%struct.LexState* %40, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !845
  br label %41, !dbg !845

; <label>:41:                                     ; preds = %38, %32
  %42 = load i32, i32* %33, align 4, !dbg !846, !tbaa !550
  %43 = and i32 %42, 16383, !dbg !846
  %44 = shl i32 %35, 14, !dbg !846
  %45 = add i32 %44, 2147467264, !dbg !846
  %46 = or i32 %43, %45, !dbg !846
  store i32 %46, i32* %33, align 4, !dbg !846, !tbaa !550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !847
  br label %47

; <label>:47:                                     ; preds = %7, %19, %41
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !848
  br label %109, !dbg !849

; <label>:48:                                     ; preds = %3
  %49 = icmp eq i32 %1, -1, !dbg !868
  br i1 %49, label %109, label %50, !dbg !869

; <label>:50:                                     ; preds = %48
  %51 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %52 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3
  br label %53, !dbg !869

; <label>:53:                                     ; preds = %101, %50
  %54 = phi i32 [ %1, %50 ], [ %66, %101 ]
  %55 = load %struct.Proto*, %struct.Proto** %51, align 8, !dbg !873, !tbaa !542
  %56 = getelementptr inbounds %struct.Proto, %struct.Proto* %55, i64 0, i32 4, !dbg !873
  %57 = load i32*, i32** %56, align 8, !dbg !873, !tbaa !544
  %58 = sext i32 %54 to i64, !dbg !873
  %59 = getelementptr inbounds i32, i32* %57, i64 %58, !dbg !873
  %60 = load i32, i32* %59, align 4, !dbg !873, !tbaa !550
  %61 = lshr i32 %60, 14, !dbg !873
  %62 = add nsw i32 %61, -131071, !dbg !873
  %63 = icmp eq i32 %62, -1, !dbg !875
  %64 = add nsw i32 %54, 1, !dbg !876
  %65 = add nsw i32 %64, %62, !dbg !877
  %66 = select i1 %63, i32 -1, i32 %65, !dbg !878
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !879
  %67 = icmp sgt i32 %54, 0, !dbg !905
  br i1 %67, label %68, label %76, !dbg !907

; <label>:68:                                     ; preds = %53
  %69 = getelementptr inbounds i32, i32* %59, i64 -1, !dbg !908
  %70 = load i32, i32* %69, align 4, !dbg !908, !tbaa !550
  %71 = and i32 %70, 63, !dbg !908
  %72 = zext i32 %71 to i64, !dbg !908
  %73 = getelementptr inbounds [38 x i8], [38 x i8]* @luaP_opmodes, i64 0, i64 %72, !dbg !908
  %74 = load i8, i8* %73, align 1, !dbg !908, !tbaa !909
  %75 = icmp slt i8 %74, 0, !dbg !908
  br i1 %75, label %77, label %76, !dbg !910

; <label>:76:                                     ; preds = %68, %53
  br label %77, !dbg !911

; <label>:77:                                     ; preds = %76, %68
  %78 = phi i32 [ %60, %76 ], [ %70, %68 ], !dbg !912
  %79 = phi i32* [ %59, %76 ], [ %69, %68 ], !dbg !914
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !915
  %80 = and i32 %78, 63, !dbg !912
  %81 = icmp eq i32 %80, 27, !dbg !917
  br i1 %81, label %82, label %94, !dbg !918

; <label>:82:                                     ; preds = %77
  %83 = lshr i32 %78, 23, !dbg !919
  %84 = shl nuw nsw i32 %83, 6, !dbg !921
  %85 = and i32 %78, 8372224, !dbg !921
  %86 = or i32 %85, %84, !dbg !921
  %87 = or i32 %86, 26, !dbg !921
  store i32 %87, i32* %79, align 4, !dbg !922, !tbaa !550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !923
  %88 = xor i32 %54, -1, !dbg !929
  %89 = add i32 %88, %2, !dbg !929
  %90 = tail call i32 @abs(i32 %89) #5, !dbg !931
  %91 = icmp sgt i32 %90, 131071, !dbg !932
  br i1 %91, label %92, label %101, !dbg !933

; <label>:92:                                     ; preds = %82
  %93 = load %struct.LexState*, %struct.LexState** %52, align 8, !dbg !934, !tbaa !587
  tail call void @luaX_syntaxerror(%struct.LexState* %93, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !935
  br label %101, !dbg !935

; <label>:94:                                     ; preds = %77
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !923
  %95 = xor i32 %54, -1, !dbg !941
  %96 = add i32 %95, %2, !dbg !941
  %97 = tail call i32 @abs(i32 %96) #5, !dbg !943
  %98 = icmp sgt i32 %97, 131071, !dbg !944
  br i1 %98, label %99, label %101, !dbg !945

; <label>:99:                                     ; preds = %94
  %100 = load %struct.LexState*, %struct.LexState** %52, align 8, !dbg !946, !tbaa !587
  tail call void @luaX_syntaxerror(%struct.LexState* %100, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !947
  br label %101, !dbg !947

; <label>:101:                                    ; preds = %99, %94, %92, %82
  %102 = phi i32 [ %89, %82 ], [ %89, %92 ], [ %96, %94 ], [ %96, %99 ]
  %103 = load i32, i32* %59, align 4, !dbg !948, !tbaa !550
  %104 = and i32 %103, 16383, !dbg !948
  %105 = shl i32 %102, 14, !dbg !948
  %106 = add i32 %105, 2147467264, !dbg !948
  %107 = or i32 %104, %106, !dbg !948
  store i32 %107, i32* %59, align 4, !dbg !948, !tbaa !550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !949
  %108 = icmp eq i32 %66, -1, !dbg !868
  br i1 %108, label %109, label %53, !dbg !869, !llvm.loop !950

; <label>:109:                                    ; preds = %101, %48, %47
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !953
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !954
  ret void, !dbg !954
}

; Function Attrs: noredzone nounwind
define hidden void @luaK_patchtohere(%struct.FuncState* nocapture, i32) local_unnamed_addr #0 !dbg !794 {
  %3 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 6, !dbg !959
  %4 = load i32, i32* %3, align 8, !dbg !959, !tbaa !521
  %5 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 7, !dbg !960
  store i32 %4, i32* %5, align 4, !dbg !961, !tbaa !529
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !962
  %6 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 8, !dbg !963
  %7 = icmp eq i32 %1, -1, !dbg !968
  br i1 %7, label %44, label %8, !dbg !969

; <label>:8:                                      ; preds = %2
  %9 = load i32, i32* %6, align 4, !dbg !970, !tbaa !550
  %10 = icmp eq i32 %9, -1, !dbg !971
  br i1 %10, label %16, label %11, !dbg !972

; <label>:11:                                     ; preds = %8
  %12 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %13 = load %struct.Proto*, %struct.Proto** %12, align 8, !tbaa !542
  %14 = getelementptr inbounds %struct.Proto, %struct.Proto* %13, i64 0, i32 4
  %15 = load i32*, i32** %14, align 8, !tbaa !544
  br label %17, !dbg !973

; <label>:16:                                     ; preds = %8
  store i32 %1, i32* %6, align 4, !dbg !975, !tbaa !550
  br label %44, !dbg !976

; <label>:17:                                     ; preds = %17, %11
  %18 = phi i32 [ %27, %17 ], [ %9, %11 ], !dbg !977
  %19 = sext i32 %18 to i64, !dbg !973
  %20 = getelementptr inbounds i32, i32* %15, i64 %19, !dbg !973
  %21 = load i32, i32* %20, align 4, !dbg !973, !tbaa !550
  %22 = lshr i32 %21, 14, !dbg !973
  %23 = add nsw i32 %22, -131071, !dbg !973
  %24 = icmp eq i32 %23, -1, !dbg !982
  %25 = add nsw i32 %18, 1, !dbg !983
  %26 = add nsw i32 %25, %23, !dbg !984
  %27 = select i1 %24, i32 -1, i32 %26, !dbg !985
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !986
  %28 = icmp eq i32 %27, -1, !dbg !988
  br i1 %28, label %29, label %17, !dbg !989, !llvm.loop !677

; <label>:29:                                     ; preds = %17
  %30 = getelementptr inbounds i32, i32* %15, i64 %19, !dbg !973
  %31 = xor i32 %18, -1, !dbg !995
  %32 = add i32 %31, %1, !dbg !995
  %33 = tail call i32 @abs(i32 %32) #5, !dbg !997
  %34 = icmp sgt i32 %33, 131071, !dbg !998
  br i1 %34, label %35, label %38, !dbg !999

; <label>:35:                                     ; preds = %29
  %36 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !1000
  %37 = load %struct.LexState*, %struct.LexState** %36, align 8, !dbg !1000, !tbaa !587
  tail call void @luaX_syntaxerror(%struct.LexState* %37, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !1001
  br label %38, !dbg !1001

; <label>:38:                                     ; preds = %35, %29
  %39 = load i32, i32* %30, align 4, !dbg !1002, !tbaa !550
  %40 = and i32 %39, 16383, !dbg !1002
  %41 = shl i32 %32, 14, !dbg !1002
  %42 = add i32 %41, 2147467264, !dbg !1002
  %43 = or i32 %40, %42, !dbg !1002
  store i32 %43, i32* %30, align 4, !dbg !1002, !tbaa !550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1003
  br label %44

; <label>:44:                                     ; preds = %2, %16, %38
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1004
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1005
  ret void, !dbg !1005
}

; Function Attrs: noredzone nounwind
define hidden void @luaK_checkstack(%struct.FuncState* nocapture readonly, i32) local_unnamed_addr #0 !dbg !1006 {
  %3 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !1013
  %4 = load i32, i32* %3, align 4, !dbg !1013, !tbaa !1014
  %5 = add nsw i32 %4, %1, !dbg !1015
  %6 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0, !dbg !1017
  %7 = load %struct.Proto*, %struct.Proto** %6, align 8, !dbg !1017, !tbaa !542
  %8 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 22, !dbg !1019
  %9 = load i8, i8* %8, align 1, !dbg !1019, !tbaa !1020
  %10 = zext i8 %9 to i32, !dbg !1021
  %11 = icmp sgt i32 %5, %10, !dbg !1022
  br i1 %11, label %12, label %22, !dbg !1023

; <label>:12:                                     ; preds = %2
  %13 = icmp sgt i32 %5, 249, !dbg !1024
  br i1 %13, label %14, label %19, !dbg !1027

; <label>:14:                                     ; preds = %12
  %15 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !1028
  %16 = load %struct.LexState*, %struct.LexState** %15, align 8, !dbg !1028, !tbaa !587
  tail call void @luaX_syntaxerror(%struct.LexState* %16, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0)) #5, !dbg !1029
  %17 = load %struct.Proto*, %struct.Proto** %6, align 8, !dbg !1030, !tbaa !542
  %18 = getelementptr inbounds %struct.Proto, %struct.Proto* %17, i64 0, i32 22, !dbg !1031
  br label %19, !dbg !1029

; <label>:19:                                     ; preds = %14, %12
  %20 = phi i8* [ %18, %14 ], [ %8, %12 ], !dbg !1031
  %21 = trunc i32 %5 to i8, !dbg !1032
  store i8 %21, i8* %20, align 1, !dbg !1033, !tbaa !1020
  br label %22, !dbg !1034

; <label>:22:                                     ; preds = %19, %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1035
  ret void, !dbg !1035
}

; Function Attrs: noredzone
declare hidden void @luaX_syntaxerror(%struct.LexState*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define hidden void @luaK_reserveregs(%struct.FuncState* nocapture, i32) local_unnamed_addr #0 !dbg !1036 {
  %3 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !1045
  %4 = load i32, i32* %3, align 4, !dbg !1045, !tbaa !1014
  %5 = add nsw i32 %4, %1, !dbg !1046
  %6 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0, !dbg !1048
  %7 = load %struct.Proto*, %struct.Proto** %6, align 8, !dbg !1048, !tbaa !542
  %8 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 22, !dbg !1049
  %9 = load i8, i8* %8, align 1, !dbg !1049, !tbaa !1020
  %10 = zext i8 %9 to i32, !dbg !1050
  %11 = icmp sgt i32 %5, %10, !dbg !1051
  br i1 %11, label %12, label %25, !dbg !1052

; <label>:12:                                     ; preds = %2
  %13 = icmp sgt i32 %5, 249, !dbg !1053
  br i1 %13, label %14, label %21, !dbg !1054

; <label>:14:                                     ; preds = %12
  %15 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !1055
  %16 = load %struct.LexState*, %struct.LexState** %15, align 8, !dbg !1055, !tbaa !587
  tail call void @luaX_syntaxerror(%struct.LexState* %16, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0)) #5, !dbg !1056
  %17 = load %struct.Proto*, %struct.Proto** %6, align 8, !dbg !1057, !tbaa !542
  %18 = getelementptr inbounds %struct.Proto, %struct.Proto* %17, i64 0, i32 22, !dbg !1058
  %19 = load i32, i32* %3, align 4, !dbg !1059, !tbaa !1014
  %20 = add nsw i32 %19, %1, !dbg !1059
  br label %21, !dbg !1056

; <label>:21:                                     ; preds = %14, %12
  %22 = phi i32 [ %20, %14 ], [ %5, %12 ], !dbg !1059
  %23 = phi i8* [ %18, %14 ], [ %8, %12 ], !dbg !1058
  %24 = trunc i32 %5 to i8, !dbg !1060
  store i8 %24, i8* %23, align 1, !dbg !1061, !tbaa !1020
  br label %25, !dbg !1062

; <label>:25:                                     ; preds = %2, %21
  %26 = phi i32 [ %5, %2 ], [ %22, %21 ], !dbg !1059
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1063
  store i32 %26, i32* %3, align 4, !dbg !1059, !tbaa !1014
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1064
  ret void, !dbg !1064
}

; Function Attrs: noredzone nounwind
define hidden i32 @luaK_stringK(%struct.FuncState* nocapture, %union.TString*) local_unnamed_addr #0 !dbg !1065 {
  %3 = alloca %struct.lua_TValue, align 8
  %4 = bitcast %struct.lua_TValue* %3 to i8*, !dbg !1076
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #4, !dbg !1076
  %5 = bitcast %struct.lua_TValue* %3 to %union.TString**, !dbg !1077
  store %union.TString* %1, %union.TString** %5, align 8, !dbg !1077, !tbaa !909
  %6 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3, i64 0, i32 1, !dbg !1077
  store i32 4, i32* %6, align 8, !dbg !1077, !tbaa !1078
  %7 = call fastcc i32 @addk(%struct.FuncState* %0, %struct.lua_TValue* nonnull %3, %struct.lua_TValue* nonnull %3) #6, !dbg !1081
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #4, !dbg !1082
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1083
  ret i32 %7, !dbg !1083
}

; Function Attrs: noredzone nounwind
define internal fastcc i32 @addk(%struct.FuncState* nocapture, %struct.lua_TValue*, %struct.lua_TValue* nocapture readonly) unnamed_addr #0 !dbg !1084 {
  %4 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4, !dbg !1107
  %5 = load %struct.lua_State*, %struct.lua_State** %4, align 8, !dbg !1107, !tbaa !1108
  %6 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 1, !dbg !1110
  %7 = load %struct.Table*, %struct.Table** %6, align 8, !dbg !1110, !tbaa !1111
  %8 = tail call %struct.lua_TValue* @luaH_set(%struct.lua_State* %5, %struct.Table* %7, %struct.lua_TValue* %1) #5, !dbg !1112
  %9 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0, !dbg !1114
  %10 = load %struct.Proto*, %struct.Proto** %9, align 8, !dbg !1114, !tbaa !542
  %11 = getelementptr inbounds %struct.Proto, %struct.Proto* %10, i64 0, i32 11, !dbg !1116
  %12 = load i32, i32* %11, align 4, !dbg !1116, !tbaa !1117
  %13 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %8, i64 0, i32 1, !dbg !1119
  %14 = load i32, i32* %13, align 8, !dbg !1119, !tbaa !1078
  %15 = icmp eq i32 %14, 3, !dbg !1119
  br i1 %15, label %16, label %20, !dbg !1120

; <label>:16:                                     ; preds = %3
  %17 = bitcast %struct.lua_TValue* %8 to double*, !dbg !1121
  %18 = load double, double* %17, align 8, !dbg !1121, !tbaa !909
  %19 = fptosi double %18 to i32, !dbg !1121
  br label %99, !dbg !1123

; <label>:20:                                     ; preds = %3
  %21 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 10, !dbg !1124
  %22 = load i32, i32* %21, align 8, !dbg !1124, !tbaa !1125
  %23 = sitofp i32 %22 to double, !dbg !1124
  %24 = bitcast %struct.lua_TValue* %8 to double*, !dbg !1124
  store double %23, double* %24, align 8, !dbg !1124, !tbaa !909
  store i32 3, i32* %13, align 8, !dbg !1124, !tbaa !1078
  %25 = load i32, i32* %21, align 8, !dbg !1126, !tbaa !1125
  %26 = load i32, i32* %11, align 4, !dbg !1126, !tbaa !1117
  %27 = icmp slt i32 %25, %26, !dbg !1126
  %28 = getelementptr inbounds %struct.Proto, %struct.Proto* %10, i64 0, i32 3
  br i1 %27, label %29, label %31, !dbg !1128

; <label>:29:                                     ; preds = %20
  %30 = load %struct.lua_TValue*, %struct.lua_TValue** %28, align 8, !dbg !1129, !tbaa !1130
  br label %37, !dbg !1128

; <label>:31:                                     ; preds = %20
  %32 = bitcast %struct.lua_TValue** %28 to i8**, !dbg !1126
  %33 = load i8*, i8** %32, align 8, !dbg !1126, !tbaa !1130
  %34 = tail call i8* @luaM_growaux_(%struct.lua_State* %5, i8* %33, i32* nonnull %11, i64 16, i32 262143, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0)) #5, !dbg !1126
  store i8* %34, i8** %32, align 8, !dbg !1126, !tbaa !1130
  %35 = load i32, i32* %11, align 4, !dbg !1131, !tbaa !1117
  %36 = bitcast i8* %34 to %struct.lua_TValue*, !dbg !1126
  br label %37, !dbg !1126

; <label>:37:                                     ; preds = %29, %31
  %38 = phi %struct.lua_TValue* [ %30, %29 ], [ %36, %31 ]
  %39 = phi i32 [ %26, %29 ], [ %35, %31 ], !dbg !1131
  %40 = icmp slt i32 %12, %39, !dbg !1132
  br i1 %40, label %41, label %70, !dbg !1133

; <label>:41:                                     ; preds = %37
  %42 = sext i32 %12 to i64, !dbg !1133
  %43 = sext i32 %39 to i64, !dbg !1133
  %44 = sub nsw i64 %43, %42, !dbg !1133
  %45 = xor i64 %42, -1, !dbg !1133
  %46 = add nsw i64 %45, %43, !dbg !1133
  %47 = and i64 %44, 3, !dbg !1133
  %48 = icmp eq i64 %47, 0, !dbg !1133
  br i1 %48, label %56, label %49, !dbg !1133

; <label>:49:                                     ; preds = %41, %49
  %50 = phi i64 [ %52, %49 ], [ %42, %41 ]
  %51 = phi i64 [ %54, %49 ], [ %47, %41 ]
  %52 = add nsw i64 %50, 1, !dbg !1134
  %53 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %38, i64 %50, i32 1, !dbg !1134
  store i32 0, i32* %53, align 8, !dbg !1134, !tbaa !1078
  %54 = add i64 %51, -1, !dbg !1133
  %55 = icmp eq i64 %54, 0, !dbg !1133
  br i1 %55, label %56, label %49, !dbg !1133, !llvm.loop !1135

; <label>:56:                                     ; preds = %49, %41
  %57 = phi i64 [ %42, %41 ], [ %52, %49 ]
  %58 = icmp ult i64 %46, 3, !dbg !1133
  br i1 %58, label %70, label %59, !dbg !1133

; <label>:59:                                     ; preds = %56, %59
  %60 = phi i64 [ %67, %59 ], [ %57, %56 ]
  %61 = add nsw i64 %60, 1, !dbg !1134
  %62 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %38, i64 %60, i32 1, !dbg !1134
  store i32 0, i32* %62, align 8, !dbg !1134, !tbaa !1078
  %63 = add nsw i64 %60, 2, !dbg !1134
  %64 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %38, i64 %61, i32 1, !dbg !1134
  store i32 0, i32* %64, align 8, !dbg !1134, !tbaa !1078
  %65 = add nsw i64 %60, 3, !dbg !1134
  %66 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %38, i64 %63, i32 1, !dbg !1134
  store i32 0, i32* %66, align 8, !dbg !1134, !tbaa !1078
  %67 = add nsw i64 %60, 4, !dbg !1134
  %68 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %38, i64 %65, i32 1, !dbg !1134
  store i32 0, i32* %68, align 8, !dbg !1134, !tbaa !1078
  %69 = icmp slt i64 %67, %43, !dbg !1132
  br i1 %69, label %59, label %70, !dbg !1133, !llvm.loop !1137

; <label>:70:                                     ; preds = %56, %59, %37
  %71 = load i32, i32* %21, align 8, !dbg !1138, !tbaa !1125
  %72 = sext i32 %71 to i64, !dbg !1138
  %73 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %38, i64 %72, !dbg !1138
  %74 = bitcast %struct.lua_TValue* %2 to i64*, !dbg !1138
  %75 = bitcast %struct.lua_TValue* %73 to i64*, !dbg !1138
  %76 = load i64, i64* %74, align 8, !dbg !1138
  store i64 %76, i64* %75, align 8, !dbg !1138
  %77 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i64 0, i32 1, !dbg !1138
  %78 = load i32, i32* %77, align 8, !dbg !1138, !tbaa !1078
  %79 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %38, i64 %72, i32 1, !dbg !1138
  store i32 %78, i32* %79, align 8, !dbg !1138, !tbaa !1078
  %80 = load i32, i32* %77, align 8, !dbg !1139, !tbaa !1078
  %81 = icmp sgt i32 %80, 3, !dbg !1139
  br i1 %81, label %82, label %96, !dbg !1139

; <label>:82:                                     ; preds = %70
  %83 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2, i64 0, i32 0, i32 0, !dbg !1139
  %84 = load %union.GCObject*, %union.GCObject** %83, align 8, !dbg !1139, !tbaa !909
  %85 = getelementptr inbounds %union.GCObject, %union.GCObject* %84, i64 0, i32 0, i32 2, !dbg !1139
  %86 = load i8, i8* %85, align 1, !dbg !1139, !tbaa !909
  %87 = and i8 %86, 3, !dbg !1139
  %88 = icmp eq i8 %87, 0, !dbg !1139
  br i1 %88, label %96, label %89, !dbg !1139

; <label>:89:                                     ; preds = %82
  %90 = getelementptr inbounds %struct.Proto, %struct.Proto* %10, i64 0, i32 2, !dbg !1139
  %91 = load i8, i8* %90, align 1, !dbg !1139, !tbaa !909
  %92 = and i8 %91, 4, !dbg !1139
  %93 = icmp eq i8 %92, 0, !dbg !1139
  br i1 %93, label %96, label %94, !dbg !1142

; <label>:94:                                     ; preds = %89
  %95 = bitcast %struct.Proto* %10 to %union.GCObject*, !dbg !1139
  tail call void @luaC_barrierf(%struct.lua_State* %5, %union.GCObject* %95, %union.GCObject* %84) #5, !dbg !1139
  br label %96, !dbg !1139

; <label>:96:                                     ; preds = %89, %82, %94, %70
  %97 = load i32, i32* %21, align 8, !dbg !1143, !tbaa !1125
  %98 = add nsw i32 %97, 1, !dbg !1143
  store i32 %98, i32* %21, align 8, !dbg !1143, !tbaa !1125
  br label %99, !dbg !1144

; <label>:99:                                     ; preds = %96, %16
  %100 = phi i32 [ %19, %16 ], [ %97, %96 ], !dbg !1145
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1146
  ret i32 %100, !dbg !1146
}

; Function Attrs: noredzone nounwind
define hidden i32 @luaK_numberK(%struct.FuncState* nocapture, double) local_unnamed_addr #0 !dbg !1147 {
  %3 = alloca %struct.lua_TValue, align 8
  %4 = bitcast %struct.lua_TValue* %3 to i8*, !dbg !1158
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #4, !dbg !1158
  %5 = bitcast %struct.lua_TValue* %3 to double*, !dbg !1159
  store double %1, double* %5, align 8, !dbg !1159, !tbaa !909
  %6 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3, i64 0, i32 1, !dbg !1159
  store i32 3, i32* %6, align 8, !dbg !1159, !tbaa !1078
  %7 = call fastcc i32 @addk(%struct.FuncState* %0, %struct.lua_TValue* nonnull %3, %struct.lua_TValue* nonnull %3) #6, !dbg !1161
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #4, !dbg !1162
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1163
  ret i32 %7, !dbg !1163
}

; Function Attrs: noredzone nounwind
define hidden void @luaK_setreturns(%struct.FuncState* nocapture, %struct.expdesc* nocapture readonly, i32) local_unnamed_addr #0 !dbg !1164 {
  %4 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0, !dbg !1191
  %5 = load i32, i32* %4, align 8, !dbg !1191, !tbaa !1193
  switch i32 %5, label %68 [
    i32 13, label %6
    i32 14, label %22
  ], !dbg !1195

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0, !dbg !1196
  %8 = load %struct.Proto*, %struct.Proto** %7, align 8, !dbg !1196, !tbaa !542
  %9 = getelementptr inbounds %struct.Proto, %struct.Proto* %8, i64 0, i32 4, !dbg !1196
  %10 = load i32*, i32** %9, align 8, !dbg !1196, !tbaa !544
  %11 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !1196
  %12 = bitcast %union.anon.3* %11 to i32*, !dbg !1196
  %13 = load i32, i32* %12, align 8, !dbg !1196, !tbaa !909
  %14 = sext i32 %13 to i64, !dbg !1196
  %15 = getelementptr inbounds i32, i32* %10, i64 %14, !dbg !1196
  %16 = load i32, i32* %15, align 4, !dbg !1196, !tbaa !550
  %17 = and i32 %16, -8372225, !dbg !1196
  %18 = shl i32 %2, 14, !dbg !1196
  %19 = add i32 %18, 16384, !dbg !1196
  %20 = and i32 %19, 8372224, !dbg !1196
  %21 = or i32 %17, %20, !dbg !1196
  store i32 %21, i32* %15, align 4, !dbg !1196, !tbaa !550
  br label %68, !dbg !1198

; <label>:22:                                     ; preds = %3
  %23 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0, !dbg !1199
  %24 = load %struct.Proto*, %struct.Proto** %23, align 8, !dbg !1199, !tbaa !542
  %25 = getelementptr inbounds %struct.Proto, %struct.Proto* %24, i64 0, i32 4, !dbg !1199
  %26 = load i32*, i32** %25, align 8, !dbg !1199, !tbaa !544
  %27 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !1199
  %28 = bitcast %union.anon.3* %27 to i32*, !dbg !1199
  %29 = load i32, i32* %28, align 8, !dbg !1199, !tbaa !909
  %30 = sext i32 %29 to i64, !dbg !1199
  %31 = getelementptr inbounds i32, i32* %26, i64 %30, !dbg !1199
  %32 = load i32, i32* %31, align 4, !dbg !1199, !tbaa !550
  %33 = and i32 %32, 8388607, !dbg !1199
  %34 = shl i32 %2, 23, !dbg !1199
  %35 = add i32 %34, 8388608, !dbg !1199
  %36 = or i32 %33, %35, !dbg !1199
  store i32 %36, i32* %31, align 4, !dbg !1199, !tbaa !550
  %37 = load i32, i32* %28, align 8, !dbg !1202, !tbaa !909
  %38 = sext i32 %37 to i64, !dbg !1202
  %39 = getelementptr inbounds i32, i32* %26, i64 %38, !dbg !1202
  %40 = load i32, i32* %39, align 4, !dbg !1202, !tbaa !550
  %41 = and i32 %40, -16321, !dbg !1202
  %42 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !1202
  %43 = load i32, i32* %42, align 4, !dbg !1202, !tbaa !1014
  %44 = shl i32 %43, 6, !dbg !1202
  %45 = and i32 %44, 16320, !dbg !1202
  %46 = or i32 %45, %41, !dbg !1202
  store i32 %46, i32* %39, align 4, !dbg !1202, !tbaa !550
  %47 = load i32, i32* %42, align 4, !dbg !1209, !tbaa !1014
  %48 = add nsw i32 %47, 1, !dbg !1210
  %49 = getelementptr inbounds %struct.Proto, %struct.Proto* %24, i64 0, i32 22, !dbg !1212
  %50 = load i8, i8* %49, align 1, !dbg !1212, !tbaa !1020
  %51 = zext i8 %50 to i32, !dbg !1213
  %52 = icmp slt i32 %47, %51, !dbg !1214
  br i1 %52, label %66, label %53, !dbg !1215

; <label>:53:                                     ; preds = %22
  %54 = icmp sgt i32 %47, 248, !dbg !1216
  br i1 %54, label %55, label %62, !dbg !1217

; <label>:55:                                     ; preds = %53
  %56 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !1218
  %57 = load %struct.LexState*, %struct.LexState** %56, align 8, !dbg !1218, !tbaa !587
  tail call void @luaX_syntaxerror(%struct.LexState* %57, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0)) #5, !dbg !1219
  %58 = load %struct.Proto*, %struct.Proto** %23, align 8, !dbg !1220, !tbaa !542
  %59 = getelementptr inbounds %struct.Proto, %struct.Proto* %58, i64 0, i32 22, !dbg !1221
  %60 = load i32, i32* %42, align 4, !dbg !1222, !tbaa !1014
  %61 = add nsw i32 %60, 1, !dbg !1222
  br label %62, !dbg !1219

; <label>:62:                                     ; preds = %55, %53
  %63 = phi i32 [ %61, %55 ], [ %48, %53 ], !dbg !1222
  %64 = phi i8* [ %59, %55 ], [ %49, %53 ], !dbg !1221
  %65 = trunc i32 %48 to i8, !dbg !1223
  store i8 %65, i8* %64, align 1, !dbg !1224, !tbaa !1020
  br label %66, !dbg !1225

; <label>:66:                                     ; preds = %22, %62
  %67 = phi i32 [ %48, %22 ], [ %63, %62 ], !dbg !1222
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1226
  store i32 %67, i32* %42, align 4, !dbg !1222, !tbaa !1014
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1227
  br label %68, !dbg !1228

; <label>:68:                                     ; preds = %3, %66, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1229
  ret void, !dbg !1229
}

; Function Attrs: noredzone nounwind
define hidden void @luaK_setoneret(%struct.FuncState* nocapture readonly, %struct.expdesc* nocapture) local_unnamed_addr #0 !dbg !1230 {
  %3 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0, !dbg !1238
  %4 = load i32, i32* %3, align 8, !dbg !1238, !tbaa !1193
  switch i32 %4, label %31 [
    i32 13, label %5
    i32 14, label %18
  ], !dbg !1240

; <label>:5:                                      ; preds = %2
  store i32 12, i32* %3, align 8, !dbg !1241, !tbaa !1193
  %6 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0, !dbg !1243
  %7 = load %struct.Proto*, %struct.Proto** %6, align 8, !dbg !1243, !tbaa !542
  %8 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 4, !dbg !1243
  %9 = load i32*, i32** %8, align 8, !dbg !1243, !tbaa !544
  %10 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !1243
  %11 = bitcast %union.anon.3* %10 to i32*, !dbg !1243
  %12 = load i32, i32* %11, align 8, !dbg !1243, !tbaa !909
  %13 = sext i32 %12 to i64, !dbg !1243
  %14 = getelementptr inbounds i32, i32* %9, i64 %13, !dbg !1243
  %15 = load i32, i32* %14, align 4, !dbg !1243, !tbaa !550
  %16 = lshr i32 %15, 6, !dbg !1243
  %17 = and i32 %16, 255, !dbg !1243
  store i32 %17, i32* %11, align 8, !dbg !1244, !tbaa !909
  br label %31, !dbg !1245

; <label>:18:                                     ; preds = %2
  %19 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0, !dbg !1246
  %20 = load %struct.Proto*, %struct.Proto** %19, align 8, !dbg !1246, !tbaa !542
  %21 = getelementptr inbounds %struct.Proto, %struct.Proto* %20, i64 0, i32 4, !dbg !1246
  %22 = load i32*, i32** %21, align 8, !dbg !1246, !tbaa !544
  %23 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !1246
  %24 = bitcast %union.anon.3* %23 to i32*, !dbg !1246
  %25 = load i32, i32* %24, align 8, !dbg !1246, !tbaa !909
  %26 = sext i32 %25 to i64, !dbg !1246
  %27 = getelementptr inbounds i32, i32* %22, i64 %26, !dbg !1246
  %28 = load i32, i32* %27, align 4, !dbg !1246, !tbaa !550
  %29 = and i32 %28, 8388607, !dbg !1246
  %30 = or i32 %29, 16777216, !dbg !1246
  store i32 %30, i32* %27, align 4, !dbg !1246, !tbaa !550
  store i32 11, i32* %3, align 8, !dbg !1249, !tbaa !1193
  br label %31, !dbg !1250

; <label>:31:                                     ; preds = %2, %18, %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1251
  ret void, !dbg !1251
}

; Function Attrs: noredzone nounwind
define hidden void @luaK_dischargevars(%struct.FuncState* nocapture, %struct.expdesc* nocapture) local_unnamed_addr #0 !dbg !1252 {
  %3 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0, !dbg !1258
  %4 = load i32, i32* %3, align 8, !dbg !1258, !tbaa !1193
  switch i32 %4, label %98 [
    i32 6, label %5
    i32 7, label %6
    i32 8, label %17
    i32 9, label %28
    i32 13, label %71
    i32 14, label %84
  ], !dbg !1259

; <label>:5:                                      ; preds = %2
  store i32 12, i32* %3, align 8, !dbg !1260, !tbaa !1193
  br label %98, !dbg !1263

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !1264
  %8 = bitcast %union.anon.3* %7 to i32*, !dbg !1266
  %9 = load i32, i32* %8, align 8, !dbg !1266, !tbaa !909
  %10 = shl i32 %9, 23, !dbg !1273
  %11 = or i32 %10, 4, !dbg !1273
  %12 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !1274
  %13 = load %struct.LexState*, %struct.LexState** %12, align 8, !dbg !1274, !tbaa !587
  %14 = getelementptr inbounds %struct.LexState, %struct.LexState* %13, i64 0, i32 2, !dbg !1275
  %15 = load i32, i32* %14, align 8, !dbg !1275, !tbaa !589
  %16 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %11, i32 %15) #5, !dbg !1276
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1277
  store i32 %16, i32* %8, align 8, !dbg !1278, !tbaa !909
  store i32 11, i32* %3, align 8, !dbg !1279, !tbaa !1193
  br label %98, !dbg !1280

; <label>:17:                                     ; preds = %2
  %18 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !1281
  %19 = bitcast %union.anon.3* %18 to i32*, !dbg !1283
  %20 = load i32, i32* %19, align 8, !dbg !1283, !tbaa !909
  %21 = shl i32 %20, 14, !dbg !1289
  %22 = or i32 %21, 5, !dbg !1289
  %23 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !1290
  %24 = load %struct.LexState*, %struct.LexState** %23, align 8, !dbg !1290, !tbaa !587
  %25 = getelementptr inbounds %struct.LexState, %struct.LexState* %24, i64 0, i32 2, !dbg !1291
  %26 = load i32, i32* %25, align 8, !dbg !1291, !tbaa !589
  %27 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %22, i32 %26) #5, !dbg !1292
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1293
  store i32 %27, i32* %19, align 8, !dbg !1294, !tbaa !909
  store i32 11, i32* %3, align 8, !dbg !1295, !tbaa !1193
  br label %98, !dbg !1296

; <label>:28:                                     ; preds = %2
  %29 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !1297
  %30 = bitcast %union.anon.3* %29 to %struct.anon.4*, !dbg !1299
  %31 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %30, i64 0, i32 1, !dbg !1300
  %32 = load i32, i32* %31, align 4, !dbg !1300, !tbaa !909
  %33 = and i32 %32, 256, !dbg !1308
  %34 = icmp eq i32 %33, 0, !dbg !1308
  br i1 %34, label %35, label %44, !dbg !1310

; <label>:35:                                     ; preds = %28
  %36 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !1311
  %37 = load i8, i8* %36, align 2, !dbg !1311, !tbaa !537
  %38 = zext i8 %37 to i32, !dbg !1312
  %39 = icmp slt i32 %32, %38, !dbg !1313
  br i1 %39, label %44, label %40, !dbg !1314

; <label>:40:                                     ; preds = %35
  %41 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !1315
  %42 = load i32, i32* %41, align 4, !dbg !1317, !tbaa !1014
  %43 = add nsw i32 %42, -1, !dbg !1317
  store i32 %43, i32* %41, align 4, !dbg !1317, !tbaa !1014
  br label %44, !dbg !1318

; <label>:44:                                     ; preds = %28, %35, %40
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1319
  %45 = bitcast %union.anon.3* %29 to i32*, !dbg !1320
  %46 = load i32, i32* %45, align 8, !dbg !1320, !tbaa !909
  %47 = and i32 %46, 256, !dbg !1324
  %48 = icmp eq i32 %47, 0, !dbg !1324
  br i1 %48, label %49, label %59, !dbg !1325

; <label>:49:                                     ; preds = %44
  %50 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !1326
  %51 = load i8, i8* %50, align 2, !dbg !1326, !tbaa !537
  %52 = zext i8 %51 to i32, !dbg !1327
  %53 = icmp slt i32 %46, %52, !dbg !1328
  br i1 %53, label %59, label %54, !dbg !1329

; <label>:54:                                     ; preds = %49
  %55 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !1330
  %56 = load i32, i32* %55, align 4, !dbg !1331, !tbaa !1014
  %57 = add nsw i32 %56, -1, !dbg !1331
  store i32 %57, i32* %55, align 4, !dbg !1331, !tbaa !1014
  %58 = load i32, i32* %45, align 8, !dbg !1332, !tbaa !909
  br label %59, !dbg !1333

; <label>:59:                                     ; preds = %44, %49, %54
  %60 = phi i32 [ %46, %44 ], [ %46, %49 ], [ %58, %54 ], !dbg !1332
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1334
  %61 = load i32, i32* %31, align 4, !dbg !1335, !tbaa !909
  %62 = shl i32 %60, 23, !dbg !1342
  %63 = shl i32 %61, 14, !dbg !1342
  %64 = or i32 %62, %63, !dbg !1342
  %65 = or i32 %64, 6, !dbg !1342
  %66 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !1343
  %67 = load %struct.LexState*, %struct.LexState** %66, align 8, !dbg !1343, !tbaa !587
  %68 = getelementptr inbounds %struct.LexState, %struct.LexState* %67, i64 0, i32 2, !dbg !1344
  %69 = load i32, i32* %68, align 8, !dbg !1344, !tbaa !589
  %70 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %65, i32 %69) #5, !dbg !1345
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1346
  store i32 %70, i32* %45, align 8, !dbg !1347, !tbaa !909
  store i32 11, i32* %3, align 8, !dbg !1348, !tbaa !1193
  br label %98, !dbg !1349

; <label>:71:                                     ; preds = %2
  store i32 12, i32* %3, align 8, !dbg !1350, !tbaa !1193
  %72 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0, !dbg !1353
  %73 = load %struct.Proto*, %struct.Proto** %72, align 8, !dbg !1353, !tbaa !542
  %74 = getelementptr inbounds %struct.Proto, %struct.Proto* %73, i64 0, i32 4, !dbg !1353
  %75 = load i32*, i32** %74, align 8, !dbg !1353, !tbaa !544
  %76 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !1353
  %77 = bitcast %union.anon.3* %76 to i32*, !dbg !1353
  %78 = load i32, i32* %77, align 8, !dbg !1353, !tbaa !909
  %79 = sext i32 %78 to i64, !dbg !1353
  %80 = getelementptr inbounds i32, i32* %75, i64 %79, !dbg !1353
  %81 = load i32, i32* %80, align 4, !dbg !1353, !tbaa !550
  %82 = lshr i32 %81, 6, !dbg !1353
  %83 = and i32 %82, 255, !dbg !1353
  store i32 %83, i32* %77, align 8, !dbg !1354, !tbaa !909
  br label %97, !dbg !1355

; <label>:84:                                     ; preds = %2
  %85 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0, !dbg !1356
  %86 = load %struct.Proto*, %struct.Proto** %85, align 8, !dbg !1356, !tbaa !542
  %87 = getelementptr inbounds %struct.Proto, %struct.Proto* %86, i64 0, i32 4, !dbg !1356
  %88 = load i32*, i32** %87, align 8, !dbg !1356, !tbaa !544
  %89 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !1356
  %90 = bitcast %union.anon.3* %89 to i32*, !dbg !1356
  %91 = load i32, i32* %90, align 8, !dbg !1356, !tbaa !909
  %92 = sext i32 %91 to i64, !dbg !1356
  %93 = getelementptr inbounds i32, i32* %88, i64 %92, !dbg !1356
  %94 = load i32, i32* %93, align 4, !dbg !1356, !tbaa !550
  %95 = and i32 %94, 8388607, !dbg !1356
  %96 = or i32 %95, 16777216, !dbg !1356
  store i32 %96, i32* %93, align 4, !dbg !1356, !tbaa !550
  store i32 11, i32* %3, align 8, !dbg !1357, !tbaa !1193
  br label %97, !dbg !1358

; <label>:97:                                     ; preds = %71, %84
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1359
  br label %98, !dbg !1360

; <label>:98:                                     ; preds = %2, %97, %59, %17, %6, %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1361
  ret void, !dbg !1361
}

; Function Attrs: noredzone nounwind
define hidden void @luaK_exp2nextreg(%struct.FuncState*, %struct.expdesc* nocapture) local_unnamed_addr #0 !dbg !1362 {
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %1) #6, !dbg !1368
  %3 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0, !dbg !1376
  %4 = load i32, i32* %3, align 8, !dbg !1376, !tbaa !1193
  %5 = icmp eq i32 %4, 12, !dbg !1378
  br i1 %5, label %6, label %22, !dbg !1379

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !1380
  %8 = bitcast %union.anon.3* %7 to i32*, !dbg !1381
  %9 = load i32, i32* %8, align 8, !dbg !1381, !tbaa !909
  %10 = and i32 %9, 256, !dbg !1385
  %11 = icmp eq i32 %10, 0, !dbg !1385
  br i1 %11, label %12, label %21, !dbg !1386

; <label>:12:                                     ; preds = %6
  %13 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !1387
  %14 = load i8, i8* %13, align 2, !dbg !1387, !tbaa !537
  %15 = zext i8 %14 to i32, !dbg !1388
  %16 = icmp slt i32 %9, %15, !dbg !1389
  br i1 %16, label %21, label %17, !dbg !1390

; <label>:17:                                     ; preds = %12
  %18 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !1391
  %19 = load i32, i32* %18, align 4, !dbg !1392, !tbaa !1014
  %20 = add nsw i32 %19, -1, !dbg !1392
  store i32 %20, i32* %18, align 4, !dbg !1392, !tbaa !1014
  br label %21, !dbg !1393

; <label>:21:                                     ; preds = %17, %12, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1394
  br label %22, !dbg !1395

; <label>:22:                                     ; preds = %2, %21
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1396
  %23 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !1403
  %24 = load i32, i32* %23, align 4, !dbg !1403, !tbaa !1014
  %25 = add nsw i32 %24, 1, !dbg !1404
  %26 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0, !dbg !1406
  %27 = load %struct.Proto*, %struct.Proto** %26, align 8, !dbg !1406, !tbaa !542
  %28 = getelementptr inbounds %struct.Proto, %struct.Proto* %27, i64 0, i32 22, !dbg !1407
  %29 = load i8, i8* %28, align 1, !dbg !1407, !tbaa !1020
  %30 = zext i8 %29 to i32, !dbg !1408
  %31 = icmp slt i32 %24, %30, !dbg !1409
  br i1 %31, label %45, label %32, !dbg !1410

; <label>:32:                                     ; preds = %22
  %33 = icmp sgt i32 %24, 248, !dbg !1411
  br i1 %33, label %34, label %41, !dbg !1412

; <label>:34:                                     ; preds = %32
  %35 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !1413
  %36 = load %struct.LexState*, %struct.LexState** %35, align 8, !dbg !1413, !tbaa !587
  tail call void @luaX_syntaxerror(%struct.LexState* %36, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0)) #5, !dbg !1414
  %37 = load %struct.Proto*, %struct.Proto** %26, align 8, !dbg !1415, !tbaa !542
  %38 = getelementptr inbounds %struct.Proto, %struct.Proto* %37, i64 0, i32 22, !dbg !1416
  %39 = load i32, i32* %23, align 4, !dbg !1417, !tbaa !1014
  %40 = add nsw i32 %39, 1, !dbg !1417
  br label %41, !dbg !1414

; <label>:41:                                     ; preds = %34, %32
  %42 = phi i32 [ %40, %34 ], [ %25, %32 ], !dbg !1417
  %43 = phi i8* [ %38, %34 ], [ %28, %32 ], !dbg !1416
  %44 = trunc i32 %25 to i8, !dbg !1418
  store i8 %44, i8* %43, align 1, !dbg !1419, !tbaa !1020
  br label %45, !dbg !1420

; <label>:45:                                     ; preds = %22, %41
  %46 = phi i32 [ %25, %22 ], [ %42, %41 ], !dbg !1417
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1421
  store i32 %46, i32* %23, align 4, !dbg !1417, !tbaa !1014
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1422
  %47 = add nsw i32 %46, -1, !dbg !1423
  tail call fastcc void @exp2reg(%struct.FuncState* nonnull %0, %struct.expdesc* nonnull %1, i32 %47) #6, !dbg !1424
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1425
  ret void, !dbg !1425
}

; Function Attrs: noredzone nounwind
define internal fastcc void @exp2reg(%struct.FuncState*, %struct.expdesc* nocapture, i32) unnamed_addr #0 !dbg !1426 {
  tail call fastcc void @discharge2reg(%struct.FuncState* %0, %struct.expdesc* %1, i32 %2) #6, !dbg !1442
  %4 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0, !dbg !1443
  %5 = load i32, i32* %4, align 8, !dbg !1443, !tbaa !1193
  %6 = icmp eq i32 %5, 10, !dbg !1445
  %7 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2, !dbg !1446
  br i1 %6, label %8, label %50, !dbg !1447

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !1448
  %10 = bitcast %union.anon.3* %9 to i32*, !dbg !1449
  %11 = load i32, i32* %10, align 8, !dbg !1449, !tbaa !909
  %12 = icmp eq i32 %11, -1, !dbg !1454
  br i1 %12, label %49, label %13, !dbg !1455

; <label>:13:                                     ; preds = %8
  %14 = load i32, i32* %7, align 4, !dbg !1456, !tbaa !550
  %15 = icmp eq i32 %14, -1, !dbg !1457
  br i1 %15, label %21, label %16, !dbg !1458

; <label>:16:                                     ; preds = %13
  %17 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %18 = load %struct.Proto*, %struct.Proto** %17, align 8, !tbaa !542
  %19 = getelementptr inbounds %struct.Proto, %struct.Proto* %18, i64 0, i32 4
  %20 = load i32*, i32** %19, align 8, !tbaa !544
  br label %22, !dbg !1459

; <label>:21:                                     ; preds = %13
  store i32 %11, i32* %7, align 4, !dbg !1461, !tbaa !550
  br label %49, !dbg !1462

; <label>:22:                                     ; preds = %22, %16
  %23 = phi i32 [ %32, %22 ], [ %14, %16 ], !dbg !1463
  %24 = sext i32 %23 to i64, !dbg !1459
  %25 = getelementptr inbounds i32, i32* %20, i64 %24, !dbg !1459
  %26 = load i32, i32* %25, align 4, !dbg !1459, !tbaa !550
  %27 = lshr i32 %26, 14, !dbg !1459
  %28 = add nsw i32 %27, -131071, !dbg !1459
  %29 = icmp eq i32 %28, -1, !dbg !1468
  %30 = add nsw i32 %23, 1, !dbg !1469
  %31 = add nsw i32 %30, %28, !dbg !1470
  %32 = select i1 %29, i32 -1, i32 %31, !dbg !1471
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1472
  %33 = icmp eq i32 %32, -1, !dbg !1474
  br i1 %33, label %34, label %22, !dbg !1475, !llvm.loop !677

; <label>:34:                                     ; preds = %22
  %35 = getelementptr inbounds i32, i32* %20, i64 %24, !dbg !1459
  %36 = xor i32 %23, -1, !dbg !1481
  %37 = add i32 %11, %36, !dbg !1481
  %38 = tail call i32 @abs(i32 %37) #5, !dbg !1483
  %39 = icmp sgt i32 %38, 131071, !dbg !1484
  br i1 %39, label %40, label %43, !dbg !1485

; <label>:40:                                     ; preds = %34
  %41 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !1486
  %42 = load %struct.LexState*, %struct.LexState** %41, align 8, !dbg !1486, !tbaa !587
  tail call void @luaX_syntaxerror(%struct.LexState* %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !1487
  br label %43, !dbg !1487

; <label>:43:                                     ; preds = %40, %34
  %44 = load i32, i32* %35, align 4, !dbg !1488, !tbaa !550
  %45 = and i32 %44, 16383, !dbg !1488
  %46 = shl i32 %37, 14, !dbg !1488
  %47 = add i32 %46, 2147467264, !dbg !1488
  %48 = or i32 %45, %47, !dbg !1488
  store i32 %48, i32* %35, align 4, !dbg !1488, !tbaa !550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1489
  br label %49

; <label>:49:                                     ; preds = %8, %21, %43
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1490
  br label %50, !dbg !1491

; <label>:50:                                     ; preds = %3, %49
  %51 = load i32, i32* %7, align 8, !dbg !1492, !tbaa !1493
  %52 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3, !dbg !1492
  %53 = load i32, i32* %52, align 4, !dbg !1492, !tbaa !1494
  %54 = icmp eq i32 %51, %53, !dbg !1492
  br i1 %54, label %343, label %55, !dbg !1495

; <label>:55:                                     ; preds = %50
  %56 = icmp eq i32 %51, -1, !dbg !1509
  br i1 %56, label %90, label %57, !dbg !1510

; <label>:57:                                     ; preds = %55
  %58 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %59 = load %struct.Proto*, %struct.Proto** %58, align 8, !tbaa !542
  %60 = getelementptr inbounds %struct.Proto, %struct.Proto* %59, i64 0, i32 4
  %61 = load i32*, i32** %60, align 8, !tbaa !544
  br label %62, !dbg !1510

; <label>:62:                                     ; preds = %81, %57
  %63 = phi i32 [ %51, %57 ], [ %88, %81 ]
  %64 = sext i32 %63 to i64, !dbg !1514
  %65 = getelementptr inbounds i32, i32* %61, i64 %64, !dbg !1514
  %66 = icmp sgt i32 %63, 0, !dbg !1516
  br i1 %66, label %67, label %75, !dbg !1517

; <label>:67:                                     ; preds = %62
  %68 = getelementptr inbounds i32, i32* %65, i64 -1, !dbg !1518
  %69 = load i32, i32* %68, align 4, !dbg !1518, !tbaa !550
  %70 = and i32 %69, 63, !dbg !1518
  %71 = zext i32 %70 to i64, !dbg !1518
  %72 = getelementptr inbounds [38 x i8], [38 x i8]* @luaP_opmodes, i64 0, i64 %71, !dbg !1518
  %73 = load i8, i8* %72, align 1, !dbg !1518, !tbaa !909
  %74 = icmp slt i8 %73, 0, !dbg !1518
  br i1 %74, label %77, label %75, !dbg !1519

; <label>:75:                                     ; preds = %67, %62
  %76 = load i32, i32* %65, align 4, !dbg !1520, !tbaa !550
  br label %77, !dbg !1521

; <label>:77:                                     ; preds = %75, %67
  %78 = phi i32 [ %76, %75 ], [ %69, %67 ], !dbg !1520
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1522
  %79 = and i32 %78, 63, !dbg !1524
  %80 = icmp eq i32 %79, 27, !dbg !1526
  br i1 %80, label %81, label %128

; <label>:81:                                     ; preds = %77
  %82 = load i32, i32* %65, align 4, !dbg !1530, !tbaa !550
  %83 = lshr i32 %82, 14, !dbg !1530
  %84 = add nsw i32 %83, -131071, !dbg !1530
  %85 = icmp eq i32 %84, -1, !dbg !1532
  %86 = add nsw i32 %63, 1, !dbg !1533
  %87 = add nsw i32 %86, %84, !dbg !1534
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1535
  %88 = select i1 %85, i32 -1, i32 %87
  %89 = icmp eq i32 %88, -1, !dbg !1509
  br i1 %89, label %90, label %62, !dbg !1510

; <label>:90:                                     ; preds = %81, %55
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1536
  %91 = icmp eq i32 %53, -1, !dbg !1540
  br i1 %91, label %125, label %92, !dbg !1541

; <label>:92:                                     ; preds = %90
  %93 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %94 = load %struct.Proto*, %struct.Proto** %93, align 8, !tbaa !542
  %95 = getelementptr inbounds %struct.Proto, %struct.Proto* %94, i64 0, i32 4
  %96 = load i32*, i32** %95, align 8, !tbaa !544
  br label %97, !dbg !1541

; <label>:97:                                     ; preds = %116, %92
  %98 = phi i32 [ %53, %92 ], [ %123, %116 ]
  %99 = sext i32 %98 to i64, !dbg !1545
  %100 = getelementptr inbounds i32, i32* %96, i64 %99, !dbg !1545
  %101 = icmp sgt i32 %98, 0, !dbg !1547
  br i1 %101, label %102, label %110, !dbg !1548

; <label>:102:                                    ; preds = %97
  %103 = getelementptr inbounds i32, i32* %100, i64 -1, !dbg !1549
  %104 = load i32, i32* %103, align 4, !dbg !1549, !tbaa !550
  %105 = and i32 %104, 63, !dbg !1549
  %106 = zext i32 %105 to i64, !dbg !1549
  %107 = getelementptr inbounds [38 x i8], [38 x i8]* @luaP_opmodes, i64 0, i64 %106, !dbg !1549
  %108 = load i8, i8* %107, align 1, !dbg !1549, !tbaa !909
  %109 = icmp slt i8 %108, 0, !dbg !1549
  br i1 %109, label %112, label %110, !dbg !1550

; <label>:110:                                    ; preds = %102, %97
  %111 = load i32, i32* %100, align 4, !dbg !1551, !tbaa !550
  br label %112, !dbg !1552

; <label>:112:                                    ; preds = %110, %102
  %113 = phi i32 [ %111, %110 ], [ %104, %102 ], !dbg !1551
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1553
  %114 = and i32 %113, 63, !dbg !1555
  %115 = icmp eq i32 %114, 27, !dbg !1556
  br i1 %115, label %116, label %128

; <label>:116:                                    ; preds = %112
  %117 = load i32, i32* %100, align 4, !dbg !1560, !tbaa !550
  %118 = lshr i32 %117, 14, !dbg !1560
  %119 = add nsw i32 %118, -131071, !dbg !1560
  %120 = icmp eq i32 %119, -1, !dbg !1562
  %121 = add nsw i32 %98, 1, !dbg !1563
  %122 = add nsw i32 %121, %119, !dbg !1564
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1565
  %123 = select i1 %120, i32 -1, i32 %122
  %124 = icmp eq i32 %123, -1, !dbg !1540
  br i1 %124, label %125, label %97, !dbg !1541

; <label>:125:                                    ; preds = %116, %90
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1566
  %126 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 6, !dbg !1567
  %127 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 7, !dbg !1569
  br label %191, !dbg !1570

; <label>:128:                                    ; preds = %77, %112
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1566
  %129 = load i32, i32* %4, align 8, !dbg !1571, !tbaa !1193
  %130 = icmp eq i32 %129, 10, !dbg !1572
  br i1 %130, label %133, label %131, !dbg !1573

; <label>:131:                                    ; preds = %128
  %132 = tail call i32 @luaK_jump(%struct.FuncState* %0) #6, !dbg !1574
  br label %133, !dbg !1573

; <label>:133:                                    ; preds = %128, %131
  %134 = phi i32 [ %132, %131 ], [ -1, %128 ], !dbg !1573
  %135 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 6, !dbg !1591
  %136 = load i32, i32* %135, align 8, !dbg !1591, !tbaa !521
  %137 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 7, !dbg !1592
  store i32 %136, i32* %137, align 4, !dbg !1593, !tbaa !529
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1594
  %138 = shl i32 %2, 6, !dbg !1601
  %139 = or i32 %138, 16386, !dbg !1601
  %140 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !1602
  %141 = load %struct.LexState*, %struct.LexState** %140, align 8, !dbg !1602, !tbaa !587
  %142 = getelementptr inbounds %struct.LexState, %struct.LexState* %141, i64 0, i32 2, !dbg !1603
  %143 = load i32, i32* %142, align 8, !dbg !1603, !tbaa !589
  %144 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %139, i32 %143) #5, !dbg !1604
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1605
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1606
  %145 = load i32, i32* %135, align 8, !dbg !1614, !tbaa !521
  store i32 %145, i32* %137, align 4, !dbg !1615, !tbaa !529
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1616
  %146 = or i32 %138, 8388610, !dbg !1623
  %147 = load %struct.LexState*, %struct.LexState** %140, align 8, !dbg !1624, !tbaa !587
  %148 = getelementptr inbounds %struct.LexState, %struct.LexState* %147, i64 0, i32 2, !dbg !1625
  %149 = load i32, i32* %148, align 8, !dbg !1625, !tbaa !589
  %150 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %146, i32 %149) #5, !dbg !1626
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1627
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1628
  %151 = load i32, i32* %135, align 8, !dbg !1634, !tbaa !521
  store i32 %151, i32* %137, align 4, !dbg !1635, !tbaa !529
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1636
  %152 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 8, !dbg !1637
  %153 = icmp eq i32 %134, -1, !dbg !1642
  br i1 %153, label %189, label %154, !dbg !1643

; <label>:154:                                    ; preds = %133
  %155 = load i32, i32* %152, align 4, !dbg !1644, !tbaa !550
  %156 = icmp eq i32 %155, -1, !dbg !1645
  br i1 %156, label %162, label %157, !dbg !1646

; <label>:157:                                    ; preds = %154
  %158 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %159 = load %struct.Proto*, %struct.Proto** %158, align 8, !tbaa !542
  %160 = getelementptr inbounds %struct.Proto, %struct.Proto* %159, i64 0, i32 4
  %161 = load i32*, i32** %160, align 8, !tbaa !544
  br label %163, !dbg !1647

; <label>:162:                                    ; preds = %154
  store i32 %134, i32* %152, align 4, !dbg !1649, !tbaa !550
  br label %189, !dbg !1650

; <label>:163:                                    ; preds = %163, %157
  %164 = phi i32 [ %173, %163 ], [ %155, %157 ], !dbg !1651
  %165 = sext i32 %164 to i64, !dbg !1647
  %166 = getelementptr inbounds i32, i32* %161, i64 %165, !dbg !1647
  %167 = load i32, i32* %166, align 4, !dbg !1647, !tbaa !550
  %168 = lshr i32 %167, 14, !dbg !1647
  %169 = add nsw i32 %168, -131071, !dbg !1647
  %170 = icmp eq i32 %169, -1, !dbg !1656
  %171 = add nsw i32 %164, 1, !dbg !1657
  %172 = add nsw i32 %171, %169, !dbg !1658
  %173 = select i1 %170, i32 -1, i32 %172, !dbg !1659
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1660
  %174 = icmp eq i32 %173, -1, !dbg !1662
  br i1 %174, label %175, label %163, !dbg !1663, !llvm.loop !677

; <label>:175:                                    ; preds = %163
  %176 = getelementptr inbounds i32, i32* %161, i64 %165, !dbg !1647
  %177 = xor i32 %164, -1, !dbg !1669
  %178 = add i32 %134, %177, !dbg !1669
  %179 = tail call i32 @abs(i32 %178) #5, !dbg !1671
  %180 = icmp sgt i32 %179, 131071, !dbg !1672
  br i1 %180, label %181, label %183, !dbg !1673

; <label>:181:                                    ; preds = %175
  %182 = load %struct.LexState*, %struct.LexState** %140, align 8, !dbg !1674, !tbaa !587
  tail call void @luaX_syntaxerror(%struct.LexState* %182, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !1675
  br label %183, !dbg !1675

; <label>:183:                                    ; preds = %181, %175
  %184 = load i32, i32* %176, align 4, !dbg !1676, !tbaa !550
  %185 = and i32 %184, 16383, !dbg !1676
  %186 = shl i32 %178, 14, !dbg !1676
  %187 = add i32 %186, 2147467264, !dbg !1676
  %188 = or i32 %185, %187, !dbg !1676
  store i32 %188, i32* %176, align 4, !dbg !1676, !tbaa !550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1677
  br label %189

; <label>:189:                                    ; preds = %133, %162, %183
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1678
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1679
  %190 = load i32, i32* %52, align 4, !dbg !1680, !tbaa !1494
  br label %191, !dbg !1681

; <label>:191:                                    ; preds = %125, %189
  %192 = phi i32* [ %127, %125 ], [ %137, %189 ], !dbg !1569
  %193 = phi i32* [ %126, %125 ], [ %135, %189 ], !dbg !1567
  %194 = phi i32 [ %53, %125 ], [ %190, %189 ], !dbg !1680
  %195 = phi i32 [ -1, %125 ], [ %150, %189 ], !dbg !1682
  %196 = phi i32 [ -1, %125 ], [ %144, %189 ], !dbg !1682
  %197 = load i32, i32* %193, align 8, !dbg !1567, !tbaa !521
  store i32 %197, i32* %192, align 4, !dbg !1684, !tbaa !529
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1685
  %198 = icmp eq i32 %194, -1, !dbg !1693
  br i1 %198, label %269, label %199, !dbg !1694

; <label>:199:                                    ; preds = %191
  %200 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %201 = icmp eq i32 %2, 255
  %202 = shl i32 %2, 6
  %203 = and i32 %202, 16320
  %204 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3
  br label %205, !dbg !1694

; <label>:205:                                    ; preds = %261, %199
  %206 = phi i32 [ %194, %199 ], [ %218, %261 ]
  %207 = load %struct.Proto*, %struct.Proto** %200, align 8, !dbg !1698, !tbaa !542
  %208 = getelementptr inbounds %struct.Proto, %struct.Proto* %207, i64 0, i32 4, !dbg !1698
  %209 = load i32*, i32** %208, align 8, !dbg !1698, !tbaa !544
  %210 = sext i32 %206 to i64, !dbg !1698
  %211 = getelementptr inbounds i32, i32* %209, i64 %210, !dbg !1698
  %212 = load i32, i32* %211, align 4, !dbg !1698, !tbaa !550
  %213 = lshr i32 %212, 14, !dbg !1698
  %214 = add nsw i32 %213, -131071, !dbg !1698
  %215 = icmp eq i32 %214, -1, !dbg !1700
  %216 = add nsw i32 %206, 1, !dbg !1701
  %217 = add nsw i32 %216, %214, !dbg !1702
  %218 = select i1 %215, i32 -1, i32 %217, !dbg !1703
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1704
  %219 = icmp sgt i32 %206, 0, !dbg !1714
  br i1 %219, label %220, label %228, !dbg !1715

; <label>:220:                                    ; preds = %205
  %221 = getelementptr inbounds i32, i32* %211, i64 -1, !dbg !1716
  %222 = load i32, i32* %221, align 4, !dbg !1716, !tbaa !550
  %223 = and i32 %222, 63, !dbg !1716
  %224 = zext i32 %223 to i64, !dbg !1716
  %225 = getelementptr inbounds [38 x i8], [38 x i8]* @luaP_opmodes, i64 0, i64 %224, !dbg !1716
  %226 = load i8, i8* %225, align 1, !dbg !1716, !tbaa !909
  %227 = icmp slt i8 %226, 0, !dbg !1716
  br i1 %227, label %229, label %228, !dbg !1717

; <label>:228:                                    ; preds = %220, %205
  br label %229, !dbg !1718

; <label>:229:                                    ; preds = %228, %220
  %230 = phi i32 [ %212, %228 ], [ %222, %220 ], !dbg !1719
  %231 = phi i32* [ %211, %228 ], [ %221, %220 ], !dbg !1720
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1721
  %232 = and i32 %230, 63, !dbg !1719
  %233 = icmp eq i32 %232, 27, !dbg !1723
  br i1 %233, label %234, label %254, !dbg !1724

; <label>:234:                                    ; preds = %229
  %235 = lshr i32 %230, 23, !dbg !1725
  %236 = icmp eq i32 %235, %2, !dbg !1726
  %237 = or i1 %201, %236, !dbg !1727
  br i1 %237, label %241, label %238, !dbg !1727

; <label>:238:                                    ; preds = %234
  %239 = and i32 %230, -16321, !dbg !1728
  %240 = or i32 %239, %203, !dbg !1728
  br label %246, !dbg !1728

; <label>:241:                                    ; preds = %234
  %242 = shl nuw nsw i32 %235, 6, !dbg !1729
  %243 = and i32 %230, 8372224, !dbg !1729
  %244 = or i32 %243, %242, !dbg !1729
  %245 = or i32 %244, 26, !dbg !1729
  br label %246

; <label>:246:                                    ; preds = %241, %238
  %247 = phi i32 [ %245, %241 ], [ %240, %238 ]
  store i32 %247, i32* %231, align 4, !dbg !1730, !tbaa !550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1731
  %248 = xor i32 %206, -1, !dbg !1737
  %249 = add i32 %197, %248, !dbg !1737
  %250 = tail call i32 @abs(i32 %249) #5, !dbg !1739
  %251 = icmp sgt i32 %250, 131071, !dbg !1740
  br i1 %251, label %252, label %261, !dbg !1741

; <label>:252:                                    ; preds = %246
  %253 = load %struct.LexState*, %struct.LexState** %204, align 8, !dbg !1742, !tbaa !587
  tail call void @luaX_syntaxerror(%struct.LexState* %253, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !1743
  br label %261, !dbg !1743

; <label>:254:                                    ; preds = %229
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1731
  %255 = xor i32 %206, -1, !dbg !1749
  %256 = add i32 %196, %255, !dbg !1749
  %257 = tail call i32 @abs(i32 %256) #5, !dbg !1751
  %258 = icmp sgt i32 %257, 131071, !dbg !1752
  br i1 %258, label %259, label %261, !dbg !1753

; <label>:259:                                    ; preds = %254
  %260 = load %struct.LexState*, %struct.LexState** %204, align 8, !dbg !1754, !tbaa !587
  tail call void @luaX_syntaxerror(%struct.LexState* %260, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !1755
  br label %261, !dbg !1755

; <label>:261:                                    ; preds = %259, %254, %252, %246
  %262 = phi i32 [ %249, %246 ], [ %249, %252 ], [ %256, %254 ], [ %256, %259 ]
  %263 = load i32, i32* %211, align 4, !dbg !1756, !tbaa !550
  %264 = and i32 %263, 16383, !dbg !1756
  %265 = shl i32 %262, 14, !dbg !1756
  %266 = add i32 %265, 2147467264, !dbg !1756
  %267 = or i32 %264, %266, !dbg !1756
  store i32 %267, i32* %211, align 4, !dbg !1756, !tbaa !550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1757
  %268 = icmp eq i32 %218, -1, !dbg !1693
  br i1 %268, label %269, label %205, !dbg !1694, !llvm.loop !950

; <label>:269:                                    ; preds = %261, %191
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1758
  %270 = load i32, i32* %7, align 8, !dbg !1759, !tbaa !1493
  %271 = icmp eq i32 %270, -1, !dbg !1766
  br i1 %271, label %342, label %272, !dbg !1767

; <label>:272:                                    ; preds = %269
  %273 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %274 = icmp eq i32 %2, 255
  %275 = shl i32 %2, 6
  %276 = and i32 %275, 16320
  %277 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3
  br label %278, !dbg !1767

; <label>:278:                                    ; preds = %334, %272
  %279 = phi i32 [ %270, %272 ], [ %291, %334 ]
  %280 = load %struct.Proto*, %struct.Proto** %273, align 8, !dbg !1771, !tbaa !542
  %281 = getelementptr inbounds %struct.Proto, %struct.Proto* %280, i64 0, i32 4, !dbg !1771
  %282 = load i32*, i32** %281, align 8, !dbg !1771, !tbaa !544
  %283 = sext i32 %279 to i64, !dbg !1771
  %284 = getelementptr inbounds i32, i32* %282, i64 %283, !dbg !1771
  %285 = load i32, i32* %284, align 4, !dbg !1771, !tbaa !550
  %286 = lshr i32 %285, 14, !dbg !1771
  %287 = add nsw i32 %286, -131071, !dbg !1771
  %288 = icmp eq i32 %287, -1, !dbg !1773
  %289 = add nsw i32 %279, 1, !dbg !1774
  %290 = add nsw i32 %289, %287, !dbg !1775
  %291 = select i1 %288, i32 -1, i32 %290, !dbg !1776
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1777
  %292 = icmp sgt i32 %279, 0, !dbg !1787
  br i1 %292, label %293, label %301, !dbg !1788

; <label>:293:                                    ; preds = %278
  %294 = getelementptr inbounds i32, i32* %284, i64 -1, !dbg !1789
  %295 = load i32, i32* %294, align 4, !dbg !1789, !tbaa !550
  %296 = and i32 %295, 63, !dbg !1789
  %297 = zext i32 %296 to i64, !dbg !1789
  %298 = getelementptr inbounds [38 x i8], [38 x i8]* @luaP_opmodes, i64 0, i64 %297, !dbg !1789
  %299 = load i8, i8* %298, align 1, !dbg !1789, !tbaa !909
  %300 = icmp slt i8 %299, 0, !dbg !1789
  br i1 %300, label %302, label %301, !dbg !1790

; <label>:301:                                    ; preds = %293, %278
  br label %302, !dbg !1791

; <label>:302:                                    ; preds = %301, %293
  %303 = phi i32 [ %285, %301 ], [ %295, %293 ], !dbg !1792
  %304 = phi i32* [ %284, %301 ], [ %294, %293 ], !dbg !1793
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1794
  %305 = and i32 %303, 63, !dbg !1792
  %306 = icmp eq i32 %305, 27, !dbg !1796
  br i1 %306, label %307, label %327, !dbg !1797

; <label>:307:                                    ; preds = %302
  %308 = lshr i32 %303, 23, !dbg !1798
  %309 = icmp eq i32 %308, %2, !dbg !1799
  %310 = or i1 %274, %309, !dbg !1800
  br i1 %310, label %314, label %311, !dbg !1800

; <label>:311:                                    ; preds = %307
  %312 = and i32 %303, -16321, !dbg !1801
  %313 = or i32 %312, %276, !dbg !1801
  br label %319, !dbg !1801

; <label>:314:                                    ; preds = %307
  %315 = shl nuw nsw i32 %308, 6, !dbg !1802
  %316 = and i32 %303, 8372224, !dbg !1802
  %317 = or i32 %316, %315, !dbg !1802
  %318 = or i32 %317, 26, !dbg !1802
  br label %319

; <label>:319:                                    ; preds = %314, %311
  %320 = phi i32 [ %318, %314 ], [ %313, %311 ]
  store i32 %320, i32* %304, align 4, !dbg !1803, !tbaa !550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1804
  %321 = xor i32 %279, -1, !dbg !1810
  %322 = add i32 %197, %321, !dbg !1810
  %323 = tail call i32 @abs(i32 %322) #5, !dbg !1812
  %324 = icmp sgt i32 %323, 131071, !dbg !1813
  br i1 %324, label %325, label %334, !dbg !1814

; <label>:325:                                    ; preds = %319
  %326 = load %struct.LexState*, %struct.LexState** %277, align 8, !dbg !1815, !tbaa !587
  tail call void @luaX_syntaxerror(%struct.LexState* %326, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !1816
  br label %334, !dbg !1816

; <label>:327:                                    ; preds = %302
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1804
  %328 = xor i32 %279, -1, !dbg !1822
  %329 = add i32 %195, %328, !dbg !1822
  %330 = tail call i32 @abs(i32 %329) #5, !dbg !1824
  %331 = icmp sgt i32 %330, 131071, !dbg !1825
  br i1 %331, label %332, label %334, !dbg !1826

; <label>:332:                                    ; preds = %327
  %333 = load %struct.LexState*, %struct.LexState** %277, align 8, !dbg !1827, !tbaa !587
  tail call void @luaX_syntaxerror(%struct.LexState* %333, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !1828
  br label %334, !dbg !1828

; <label>:334:                                    ; preds = %332, %327, %325, %319
  %335 = phi i32 [ %322, %319 ], [ %322, %325 ], [ %329, %327 ], [ %329, %332 ]
  %336 = load i32, i32* %284, align 4, !dbg !1829, !tbaa !550
  %337 = and i32 %336, 16383, !dbg !1829
  %338 = shl i32 %335, 14, !dbg !1829
  %339 = add i32 %338, 2147467264, !dbg !1829
  %340 = or i32 %337, %339, !dbg !1829
  store i32 %340, i32* %284, align 4, !dbg !1829, !tbaa !550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1830
  %341 = icmp eq i32 %291, -1, !dbg !1766
  br i1 %341, label %342, label %278, !dbg !1767, !llvm.loop !950

; <label>:342:                                    ; preds = %334, %269
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1831
  br label %343, !dbg !1832

; <label>:343:                                    ; preds = %50, %342
  store i32 -1, i32* %7, align 8, !dbg !1833, !tbaa !1493
  store i32 -1, i32* %52, align 4, !dbg !1834, !tbaa !1494
  %344 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !1835
  %345 = bitcast %union.anon.3* %344 to i32*, !dbg !1836
  store i32 %2, i32* %345, align 8, !dbg !1837, !tbaa !909
  store i32 12, i32* %4, align 8, !dbg !1838, !tbaa !1193
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1839
  ret void, !dbg !1839
}

; Function Attrs: noredzone nounwind
define hidden i32 @luaK_exp2anyreg(%struct.FuncState*, %struct.expdesc* nocapture) local_unnamed_addr #0 !dbg !1840 {
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %1) #6, !dbg !1848
  %3 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0, !dbg !1849
  %4 = load i32, i32* %3, align 8, !dbg !1849, !tbaa !1193
  %5 = icmp eq i32 %4, 12, !dbg !1851
  br i1 %5, label %9, label %6, !dbg !1852

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !1853
  %8 = bitcast %union.anon.3* %7 to i32*, !dbg !1854
  br label %24, !dbg !1852

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2, !dbg !1855
  %11 = load i32, i32* %10, align 8, !dbg !1855, !tbaa !1493
  %12 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3, !dbg !1855
  %13 = load i32, i32* %12, align 4, !dbg !1855, !tbaa !1494
  %14 = icmp eq i32 %11, %13, !dbg !1855
  %15 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !1858
  %16 = bitcast %union.anon.3* %15 to i32*, !dbg !1858
  %17 = load i32, i32* %16, align 8, !dbg !1858, !tbaa !909
  br i1 %14, label %29, label %18, !dbg !1859

; <label>:18:                                     ; preds = %9
  %19 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !1860
  %20 = load i8, i8* %19, align 2, !dbg !1860, !tbaa !537
  %21 = zext i8 %20 to i32, !dbg !1862
  %22 = icmp slt i32 %17, %21, !dbg !1863
  br i1 %22, label %24, label %23, !dbg !1864

; <label>:23:                                     ; preds = %18
  tail call fastcc void @exp2reg(%struct.FuncState* nonnull %0, %struct.expdesc* nonnull %1, i32 %17) #6, !dbg !1865
  br label %26, !dbg !1867

; <label>:24:                                     ; preds = %6, %18
  %25 = phi i32* [ %8, %6 ], [ %16, %18 ], !dbg !1854
  tail call void @luaK_exp2nextreg(%struct.FuncState* %0, %struct.expdesc* nonnull %1) #6, !dbg !1868
  br label %26, !dbg !1869

; <label>:26:                                     ; preds = %23, %24
  %27 = phi i32* [ %25, %24 ], [ %16, %23 ]
  %28 = load i32, i32* %27, align 8, !dbg !1870, !tbaa !909
  br label %29, !dbg !1871

; <label>:29:                                     ; preds = %26, %9
  %30 = phi i32 [ %17, %9 ], [ %28, %26 ], !dbg !1858
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1871
  ret i32 %30, !dbg !1871
}

; Function Attrs: noredzone nounwind
define hidden void @luaK_exp2val(%struct.FuncState*, %struct.expdesc* nocapture) local_unnamed_addr #0 !dbg !1872 {
  %3 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2, !dbg !1878
  %4 = load i32, i32* %3, align 8, !dbg !1878, !tbaa !1493
  %5 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3, !dbg !1878
  %6 = load i32, i32* %5, align 4, !dbg !1878, !tbaa !1494
  %7 = icmp eq i32 %4, %6, !dbg !1878
  br i1 %7, label %27, label %8, !dbg !1880

; <label>:8:                                      ; preds = %2
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* nonnull %1) #5, !dbg !1884
  %9 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0, !dbg !1885
  %10 = load i32, i32* %9, align 8, !dbg !1885, !tbaa !1193
  %11 = icmp eq i32 %10, 12, !dbg !1886
  br i1 %11, label %12, label %25, !dbg !1887

; <label>:12:                                     ; preds = %8
  %13 = load i32, i32* %3, align 8, !dbg !1888, !tbaa !1493
  %14 = load i32, i32* %5, align 4, !dbg !1888, !tbaa !1494
  %15 = icmp eq i32 %13, %14, !dbg !1888
  %16 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !1889
  %17 = bitcast %union.anon.3* %16 to i32*, !dbg !1889
  %18 = load i32, i32* %17, align 8, !dbg !1889, !tbaa !909
  br i1 %15, label %26, label %19, !dbg !1890

; <label>:19:                                     ; preds = %12
  %20 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !1891
  %21 = load i8, i8* %20, align 2, !dbg !1891, !tbaa !537
  %22 = zext i8 %21 to i32, !dbg !1892
  %23 = icmp slt i32 %18, %22, !dbg !1893
  br i1 %23, label %25, label %24, !dbg !1894

; <label>:24:                                     ; preds = %19
  tail call fastcc void @exp2reg(%struct.FuncState* nonnull %0, %struct.expdesc* nonnull %1, i32 %18) #5, !dbg !1895
  br label %26, !dbg !1896

; <label>:25:                                     ; preds = %8, %19
  tail call void @luaK_exp2nextreg(%struct.FuncState* %0, %struct.expdesc* nonnull %1) #5, !dbg !1897
  br label %26, !dbg !1898

; <label>:26:                                     ; preds = %12, %24, %25
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1899
  br label %28, !dbg !1900

; <label>:27:                                     ; preds = %2
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* nonnull %1) #6, !dbg !1901
  br label %28

; <label>:28:                                     ; preds = %27, %26
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1902
  ret void, !dbg !1902
}

; Function Attrs: noredzone nounwind
define hidden i32 @luaK_exp2RK(%struct.FuncState*, %struct.expdesc* nocapture) local_unnamed_addr #0 !dbg !1903 {
  %3 = alloca %struct.lua_TValue, align 8
  %4 = alloca %struct.lua_TValue, align 8
  %5 = alloca %struct.lua_TValue, align 8
  %6 = alloca %struct.lua_TValue, align 8
  %7 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2, !dbg !1912
  %8 = load i32, i32* %7, align 8, !dbg !1912, !tbaa !1493
  %9 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3, !dbg !1912
  %10 = load i32, i32* %9, align 4, !dbg !1912, !tbaa !1494
  %11 = icmp eq i32 %8, %10, !dbg !1912
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* nonnull %1) #5, !dbg !1913
  %12 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0, !dbg !1913
  br i1 %11, label %31, label %13, !dbg !1914

; <label>:13:                                     ; preds = %2
  %14 = load i32, i32* %12, align 8, !dbg !1918, !tbaa !1193
  %15 = icmp eq i32 %14, 12, !dbg !1919
  br i1 %15, label %16, label %29, !dbg !1920

; <label>:16:                                     ; preds = %13
  %17 = load i32, i32* %7, align 8, !dbg !1921, !tbaa !1493
  %18 = load i32, i32* %9, align 4, !dbg !1921, !tbaa !1494
  %19 = icmp eq i32 %17, %18, !dbg !1921
  %20 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !1922
  %21 = bitcast %union.anon.3* %20 to i32*, !dbg !1922
  %22 = load i32, i32* %21, align 8, !dbg !1922, !tbaa !909
  br i1 %19, label %30, label %23, !dbg !1923

; <label>:23:                                     ; preds = %16
  %24 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !1924
  %25 = load i8, i8* %24, align 2, !dbg !1924, !tbaa !537
  %26 = zext i8 %25 to i32, !dbg !1925
  %27 = icmp slt i32 %22, %26, !dbg !1926
  br i1 %27, label %29, label %28, !dbg !1927

; <label>:28:                                     ; preds = %23
  tail call fastcc void @exp2reg(%struct.FuncState* nonnull %0, %struct.expdesc* nonnull %1, i32 %22) #5, !dbg !1928
  br label %30, !dbg !1929

; <label>:29:                                     ; preds = %23, %13
  tail call void @luaK_exp2nextreg(%struct.FuncState* %0, %struct.expdesc* nonnull %1) #5, !dbg !1930
  br label %30, !dbg !1931

; <label>:30:                                     ; preds = %29, %28, %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1932
  br label %31, !dbg !1933

; <label>:31:                                     ; preds = %2, %30
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1934
  %32 = load i32, i32* %12, align 8, !dbg !1935, !tbaa !1193
  switch i32 %32, label %75 [
    i32 5, label %33
    i32 2, label %33
    i32 3, label %33
    i32 1, label %33
    i32 4, label %68
  ], !dbg !1936

; <label>:33:                                     ; preds = %31, %31, %31, %31
  %34 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 10, !dbg !1937
  %35 = load i32, i32* %34, align 8, !dbg !1937, !tbaa !1125
  %36 = icmp slt i32 %35, 256, !dbg !1941
  br i1 %36, label %37, label %75, !dbg !1942

; <label>:37:                                     ; preds = %33
  switch i32 %32, label %56 [
    i32 1, label %38
    i32 5, label %48
  ], !dbg !1943

; <label>:38:                                     ; preds = %37
  %39 = bitcast %struct.lua_TValue* %5 to i8*, !dbg !1954
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %39) #4, !dbg !1954
  %40 = bitcast %struct.lua_TValue* %6 to i8*, !dbg !1954
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %40) #4, !dbg !1954
  %41 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 0, i32 1, !dbg !1955
  store i32 0, i32* %41, align 8, !dbg !1955, !tbaa !1078
  %42 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 1, !dbg !1956
  %43 = bitcast %struct.Table** %42 to i64*, !dbg !1956
  %44 = load i64, i64* %43, align 8, !dbg !1956, !tbaa !1111
  %45 = bitcast %struct.lua_TValue* %5 to i64*, !dbg !1956
  store i64 %44, i64* %45, align 8, !dbg !1956, !tbaa !909
  %46 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %5, i64 0, i32 1, !dbg !1956
  store i32 5, i32* %46, align 8, !dbg !1956, !tbaa !1078
  %47 = call fastcc i32 @addk(%struct.FuncState* nonnull %0, %struct.lua_TValue* nonnull %5, %struct.lua_TValue* nonnull %6) #5, !dbg !1959
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %40) #4, !dbg !1960
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %39) #4, !dbg !1960
  br label %63, !dbg !1943

; <label>:48:                                     ; preds = %37
  %49 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, i32 0, !dbg !1961
  %50 = bitcast double* %49 to i64*, !dbg !1961
  %51 = load i64, i64* %50, align 8, !dbg !1961, !tbaa !909
  %52 = bitcast %struct.lua_TValue* %4 to i8*, !dbg !1965
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %52) #4, !dbg !1965
  %53 = bitcast %struct.lua_TValue* %4 to i64*, !dbg !1966
  store i64 %51, i64* %53, align 8, !dbg !1966, !tbaa !909
  %54 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %4, i64 0, i32 1, !dbg !1966
  store i32 3, i32* %54, align 8, !dbg !1966, !tbaa !1078
  %55 = call fastcc i32 @addk(%struct.FuncState* nonnull %0, %struct.lua_TValue* nonnull %4, %struct.lua_TValue* nonnull %4) #5, !dbg !1968
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %52) #4, !dbg !1969
  br label %63, !dbg !1970

; <label>:56:                                     ; preds = %37
  %57 = icmp eq i32 %32, 2, !dbg !1971
  %58 = zext i1 %57 to i32, !dbg !1971
  %59 = bitcast %struct.lua_TValue* %3 to i8*, !dbg !1982
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %59) #4, !dbg !1982
  %60 = bitcast %struct.lua_TValue* %3 to i32*, !dbg !1983
  store i32 %58, i32* %60, align 8, !dbg !1983, !tbaa !909
  %61 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3, i64 0, i32 1, !dbg !1983
  store i32 1, i32* %61, align 8, !dbg !1983, !tbaa !1078
  %62 = call fastcc i32 @addk(%struct.FuncState* nonnull %0, %struct.lua_TValue* nonnull %3, %struct.lua_TValue* nonnull %3) #5, !dbg !1985
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %59) #4, !dbg !1986
  br label %63, !dbg !1970

; <label>:63:                                     ; preds = %48, %56, %38
  %64 = phi i32 [ %47, %38 ], [ %55, %48 ], [ %62, %56 ], !dbg !1943
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1987
  %65 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !1988
  %66 = bitcast %union.anon.3* %65 to i32*, !dbg !1989
  store i32 %64, i32* %66, align 8, !dbg !1990, !tbaa !909
  store i32 4, i32* %12, align 8, !dbg !1991, !tbaa !1193
  %67 = or i32 %64, 256, !dbg !1992
  br label %101, !dbg !1993

; <label>:68:                                     ; preds = %31
  %69 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !1994
  %70 = bitcast %union.anon.3* %69 to i32*, !dbg !1997
  %71 = load i32, i32* %70, align 8, !dbg !1997, !tbaa !909
  %72 = icmp slt i32 %71, 256, !dbg !1998
  br i1 %72, label %73, label %75, !dbg !1999

; <label>:73:                                     ; preds = %68
  %74 = or i32 %71, 256, !dbg !2000
  br label %101, !dbg !2001

; <label>:75:                                     ; preds = %31, %68, %33
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* nonnull %1) #5, !dbg !2005
  %76 = load i32, i32* %12, align 8, !dbg !2006, !tbaa !1193
  %77 = icmp eq i32 %76, 12, !dbg !2007
  br i1 %77, label %81, label %78, !dbg !2008

; <label>:78:                                     ; preds = %75
  %79 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !2009
  %80 = bitcast %union.anon.3* %79 to i32*, !dbg !2010
  br label %94, !dbg !2008

; <label>:81:                                     ; preds = %75
  %82 = load i32, i32* %7, align 8, !dbg !2011, !tbaa !1493
  %83 = load i32, i32* %9, align 4, !dbg !2011, !tbaa !1494
  %84 = icmp eq i32 %82, %83, !dbg !2011
  %85 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !2012
  %86 = bitcast %union.anon.3* %85 to i32*, !dbg !2012
  %87 = load i32, i32* %86, align 8, !dbg !2012, !tbaa !909
  br i1 %84, label %99, label %88, !dbg !2013

; <label>:88:                                     ; preds = %81
  %89 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !2014
  %90 = load i8, i8* %89, align 2, !dbg !2014, !tbaa !537
  %91 = zext i8 %90 to i32, !dbg !2015
  %92 = icmp slt i32 %87, %91, !dbg !2016
  br i1 %92, label %94, label %93, !dbg !2017

; <label>:93:                                     ; preds = %88
  tail call fastcc void @exp2reg(%struct.FuncState* nonnull %0, %struct.expdesc* nonnull %1, i32 %87) #5, !dbg !2018
  br label %96, !dbg !2019

; <label>:94:                                     ; preds = %88, %78
  %95 = phi i32* [ %80, %78 ], [ %86, %88 ], !dbg !2010
  tail call void @luaK_exp2nextreg(%struct.FuncState* %0, %struct.expdesc* nonnull %1) #5, !dbg !2020
  br label %96, !dbg !2021

; <label>:96:                                     ; preds = %94, %93
  %97 = phi i32* [ %86, %93 ], [ %95, %94 ]
  %98 = load i32, i32* %97, align 8, !dbg !1913, !tbaa !909
  br label %99, !dbg !2022

; <label>:99:                                     ; preds = %96, %81
  %100 = phi i32 [ %87, %81 ], [ %98, %96 ], !dbg !2012
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2022
  br label %101, !dbg !2023

; <label>:101:                                    ; preds = %99, %73, %63
  %102 = phi i32 [ %100, %99 ], [ %74, %73 ], [ %67, %63 ], !dbg !1987
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2024
  ret i32 %102, !dbg !2024
}

; Function Attrs: noredzone nounwind
define hidden void @luaK_storevar(%struct.FuncState*, %struct.expdesc* nocapture readonly, %struct.expdesc*) local_unnamed_addr #0 !dbg !2025 {
  %4 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0, !dbg !2042
  %5 = load i32, i32* %4, align 8, !dbg !2042, !tbaa !1193
  switch i32 %5, label %132 [
    i32 6, label %6
    i32 7, label %30
    i32 8, label %71
    i32 9, label %112
  ], !dbg !2043

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0, !dbg !2048
  %8 = load i32, i32* %7, align 8, !dbg !2048, !tbaa !1193
  %9 = icmp eq i32 %8, 12, !dbg !2049
  br i1 %9, label %10, label %26, !dbg !2050

; <label>:10:                                     ; preds = %6
  %11 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, !dbg !2051
  %12 = bitcast %union.anon.3* %11 to i32*, !dbg !2052
  %13 = load i32, i32* %12, align 8, !dbg !2052, !tbaa !909
  %14 = and i32 %13, 256, !dbg !2056
  %15 = icmp eq i32 %14, 0, !dbg !2056
  br i1 %15, label %16, label %25, !dbg !2057

; <label>:16:                                     ; preds = %10
  %17 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !2058
  %18 = load i8, i8* %17, align 2, !dbg !2058, !tbaa !537
  %19 = zext i8 %18 to i32, !dbg !2059
  %20 = icmp slt i32 %13, %19, !dbg !2060
  br i1 %20, label %25, label %21, !dbg !2061

; <label>:21:                                     ; preds = %16
  %22 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !2062
  %23 = load i32, i32* %22, align 4, !dbg !2063, !tbaa !1014
  %24 = add nsw i32 %23, -1, !dbg !2063
  store i32 %24, i32* %22, align 4, !dbg !2063, !tbaa !1014
  br label %25, !dbg !2064

; <label>:25:                                     ; preds = %21, %16, %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2065
  br label %26, !dbg !2066

; <label>:26:                                     ; preds = %6, %25
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2067
  %27 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !2068
  %28 = bitcast %union.anon.3* %27 to i32*, !dbg !2069
  %29 = load i32, i32* %28, align 8, !dbg !2069, !tbaa !909
  tail call fastcc void @exp2reg(%struct.FuncState* %0, %struct.expdesc* nonnull %2, i32 %29) #6, !dbg !2070
  br label %153, !dbg !2071

; <label>:30:                                     ; preds = %3
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %2) #5, !dbg !2075
  %31 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0, !dbg !2076
  %32 = load i32, i32* %31, align 8, !dbg !2076, !tbaa !1193
  %33 = icmp eq i32 %32, 12, !dbg !2077
  br i1 %33, label %37, label %34, !dbg !2078

; <label>:34:                                     ; preds = %30
  %35 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, !dbg !2079
  %36 = bitcast %union.anon.3* %35 to i32*, !dbg !2080
  br label %52, !dbg !2078

; <label>:37:                                     ; preds = %30
  %38 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2, !dbg !2081
  %39 = load i32, i32* %38, align 8, !dbg !2081, !tbaa !1493
  %40 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3, !dbg !2081
  %41 = load i32, i32* %40, align 4, !dbg !2081, !tbaa !1494
  %42 = icmp eq i32 %39, %41, !dbg !2081
  %43 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, !dbg !2082
  %44 = bitcast %union.anon.3* %43 to i32*, !dbg !2082
  %45 = load i32, i32* %44, align 8, !dbg !2082, !tbaa !909
  br i1 %42, label %57, label %46, !dbg !2083

; <label>:46:                                     ; preds = %37
  %47 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !2084
  %48 = load i8, i8* %47, align 2, !dbg !2084, !tbaa !537
  %49 = zext i8 %48 to i32, !dbg !2085
  %50 = icmp slt i32 %45, %49, !dbg !2086
  br i1 %50, label %52, label %51, !dbg !2087

; <label>:51:                                     ; preds = %46
  tail call fastcc void @exp2reg(%struct.FuncState* nonnull %0, %struct.expdesc* nonnull %2, i32 %45) #5, !dbg !2088
  br label %54, !dbg !2089

; <label>:52:                                     ; preds = %46, %34
  %53 = phi i32* [ %36, %34 ], [ %44, %46 ], !dbg !2080
  tail call void @luaK_exp2nextreg(%struct.FuncState* %0, %struct.expdesc* nonnull %2) #5, !dbg !2090
  br label %54, !dbg !2091

; <label>:54:                                     ; preds = %52, %51
  %55 = phi i32* [ %44, %51 ], [ %53, %52 ]
  %56 = load i32, i32* %55, align 8, !dbg !2092, !tbaa !909
  br label %57, !dbg !2093

; <label>:57:                                     ; preds = %54, %37
  %58 = phi i32 [ %45, %37 ], [ %56, %54 ], !dbg !2082
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2093
  %59 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !2095
  %60 = bitcast %union.anon.3* %59 to i32*, !dbg !2096
  %61 = load i32, i32* %60, align 8, !dbg !2096, !tbaa !909
  %62 = shl i32 %58, 6, !dbg !2103
  %63 = shl i32 %61, 23, !dbg !2103
  %64 = or i32 %62, %63, !dbg !2103
  %65 = or i32 %64, 8, !dbg !2103
  %66 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !2104
  %67 = load %struct.LexState*, %struct.LexState** %66, align 8, !dbg !2104, !tbaa !587
  %68 = getelementptr inbounds %struct.LexState, %struct.LexState* %67, i64 0, i32 2, !dbg !2105
  %69 = load i32, i32* %68, align 8, !dbg !2105, !tbaa !589
  %70 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %65, i32 %69) #5, !dbg !2106
  br label %131

; <label>:71:                                     ; preds = %3
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %2) #5, !dbg !2110
  %72 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0, !dbg !2111
  %73 = load i32, i32* %72, align 8, !dbg !2111, !tbaa !1193
  %74 = icmp eq i32 %73, 12, !dbg !2112
  br i1 %74, label %78, label %75, !dbg !2113

; <label>:75:                                     ; preds = %71
  %76 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, !dbg !2114
  %77 = bitcast %union.anon.3* %76 to i32*, !dbg !2115
  br label %93, !dbg !2113

; <label>:78:                                     ; preds = %71
  %79 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2, !dbg !2116
  %80 = load i32, i32* %79, align 8, !dbg !2116, !tbaa !1493
  %81 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3, !dbg !2116
  %82 = load i32, i32* %81, align 4, !dbg !2116, !tbaa !1494
  %83 = icmp eq i32 %80, %82, !dbg !2116
  %84 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, !dbg !2117
  %85 = bitcast %union.anon.3* %84 to i32*, !dbg !2117
  %86 = load i32, i32* %85, align 8, !dbg !2117, !tbaa !909
  br i1 %83, label %98, label %87, !dbg !2118

; <label>:87:                                     ; preds = %78
  %88 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !2119
  %89 = load i8, i8* %88, align 2, !dbg !2119, !tbaa !537
  %90 = zext i8 %89 to i32, !dbg !2120
  %91 = icmp slt i32 %86, %90, !dbg !2121
  br i1 %91, label %93, label %92, !dbg !2122

; <label>:92:                                     ; preds = %87
  tail call fastcc void @exp2reg(%struct.FuncState* nonnull %0, %struct.expdesc* nonnull %2, i32 %86) #5, !dbg !2123
  br label %95, !dbg !2124

; <label>:93:                                     ; preds = %87, %75
  %94 = phi i32* [ %77, %75 ], [ %85, %87 ], !dbg !2115
  tail call void @luaK_exp2nextreg(%struct.FuncState* %0, %struct.expdesc* nonnull %2) #5, !dbg !2125
  br label %95, !dbg !2126

; <label>:95:                                     ; preds = %93, %92
  %96 = phi i32* [ %85, %92 ], [ %94, %93 ]
  %97 = load i32, i32* %96, align 8, !dbg !2127, !tbaa !909
  br label %98, !dbg !2128

; <label>:98:                                     ; preds = %95, %78
  %99 = phi i32 [ %86, %78 ], [ %97, %95 ], !dbg !2117
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2128
  %100 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !2130
  %101 = bitcast %union.anon.3* %100 to i32*, !dbg !2131
  %102 = load i32, i32* %101, align 8, !dbg !2131, !tbaa !909
  %103 = shl i32 %99, 6, !dbg !2137
  %104 = shl i32 %102, 14, !dbg !2137
  %105 = or i32 %103, %104, !dbg !2137
  %106 = or i32 %105, 7, !dbg !2137
  %107 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !2138
  %108 = load %struct.LexState*, %struct.LexState** %107, align 8, !dbg !2138, !tbaa !587
  %109 = getelementptr inbounds %struct.LexState, %struct.LexState* %108, i64 0, i32 2, !dbg !2139
  %110 = load i32, i32* %109, align 8, !dbg !2139, !tbaa !589
  %111 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %106, i32 %110) #5, !dbg !2140
  br label %131

; <label>:112:                                    ; preds = %3
  %113 = tail call i32 @luaK_exp2RK(%struct.FuncState* %0, %struct.expdesc* %2) #6, !dbg !2141
  %114 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !2143
  %115 = bitcast %union.anon.3* %114 to %struct.anon.4*, !dbg !2144
  %116 = bitcast %union.anon.3* %114 to i32*, !dbg !2145
  %117 = load i32, i32* %116, align 8, !dbg !2145, !tbaa !909
  %118 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %115, i64 0, i32 1, !dbg !2146
  %119 = load i32, i32* %118, align 4, !dbg !2146, !tbaa !909
  %120 = shl i32 %117, 6, !dbg !2153
  %121 = shl i32 %119, 23, !dbg !2153
  %122 = shl i32 %113, 14, !dbg !2153
  %123 = or i32 %122, %120, !dbg !2153
  %124 = or i32 %123, %121, !dbg !2153
  %125 = or i32 %124, 9, !dbg !2153
  %126 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !2154
  %127 = load %struct.LexState*, %struct.LexState** %126, align 8, !dbg !2154, !tbaa !587
  %128 = getelementptr inbounds %struct.LexState, %struct.LexState* %127, i64 0, i32 2, !dbg !2155
  %129 = load i32, i32* %128, align 8, !dbg !2155, !tbaa !589
  %130 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %125, i32 %129) #5, !dbg !2156
  br label %131

; <label>:131:                                    ; preds = %57, %98, %112
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2092
  br label %132, !dbg !2157

; <label>:132:                                    ; preds = %131, %3
  %133 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0, !dbg !2157
  %134 = load i32, i32* %133, align 8, !dbg !2157, !tbaa !1193
  %135 = icmp eq i32 %134, 12, !dbg !2161
  br i1 %135, label %136, label %152, !dbg !2162

; <label>:136:                                    ; preds = %132
  %137 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, !dbg !2163
  %138 = bitcast %union.anon.3* %137 to i32*, !dbg !2164
  %139 = load i32, i32* %138, align 8, !dbg !2164, !tbaa !909
  %140 = and i32 %139, 256, !dbg !2168
  %141 = icmp eq i32 %140, 0, !dbg !2168
  br i1 %141, label %142, label %151, !dbg !2169

; <label>:142:                                    ; preds = %136
  %143 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !2170
  %144 = load i8, i8* %143, align 2, !dbg !2170, !tbaa !537
  %145 = zext i8 %144 to i32, !dbg !2171
  %146 = icmp slt i32 %139, %145, !dbg !2172
  br i1 %146, label %151, label %147, !dbg !2173

; <label>:147:                                    ; preds = %142
  %148 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !2174
  %149 = load i32, i32* %148, align 4, !dbg !2175, !tbaa !1014
  %150 = add nsw i32 %149, -1, !dbg !2175
  store i32 %150, i32* %148, align 4, !dbg !2175, !tbaa !1014
  br label %151, !dbg !2176

; <label>:151:                                    ; preds = %147, %142, %136
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2177
  br label %152, !dbg !2178

; <label>:152:                                    ; preds = %132, %151
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2179
  br label %153, !dbg !2180

; <label>:153:                                    ; preds = %152, %26
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2180
  ret void, !dbg !2180
}

; Function Attrs: noredzone nounwind
define hidden void @luaK_self(%struct.FuncState*, %struct.expdesc* nocapture, %struct.expdesc* nocapture) local_unnamed_addr #0 !dbg !2181 {
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %1) #5, !dbg !2193
  %4 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0, !dbg !2194
  %5 = load i32, i32* %4, align 8, !dbg !2194, !tbaa !1193
  %6 = icmp eq i32 %5, 12, !dbg !2195
  br i1 %6, label %7, label %22, !dbg !2196

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2, !dbg !2197
  %9 = load i32, i32* %8, align 8, !dbg !2197, !tbaa !1493
  %10 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3, !dbg !2197
  %11 = load i32, i32* %10, align 4, !dbg !2197, !tbaa !1494
  %12 = icmp eq i32 %9, %11, !dbg !2197
  %13 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !2198
  %14 = bitcast %union.anon.3* %13 to i32*, !dbg !2198
  %15 = load i32, i32* %14, align 8, !dbg !2198, !tbaa !909
  br i1 %12, label %23, label %16, !dbg !2199

; <label>:16:                                     ; preds = %7
  %17 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !2200
  %18 = load i8, i8* %17, align 2, !dbg !2200, !tbaa !537
  %19 = zext i8 %18 to i32, !dbg !2201
  %20 = icmp slt i32 %15, %19, !dbg !2202
  br i1 %20, label %22, label %21, !dbg !2203

; <label>:21:                                     ; preds = %16
  tail call fastcc void @exp2reg(%struct.FuncState* nonnull %0, %struct.expdesc* nonnull %1, i32 %15) #5, !dbg !2204
  br label %23, !dbg !2205

; <label>:22:                                     ; preds = %3, %16
  tail call void @luaK_exp2nextreg(%struct.FuncState* %0, %struct.expdesc* nonnull %1) #5, !dbg !2206
  br label %23, !dbg !2207

; <label>:23:                                     ; preds = %7, %21, %22
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2208
  %24 = load i32, i32* %4, align 8, !dbg !2212, !tbaa !1193
  %25 = icmp eq i32 %24, 12, !dbg !2213
  br i1 %25, label %26, label %42, !dbg !2214

; <label>:26:                                     ; preds = %23
  %27 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !2215
  %28 = bitcast %union.anon.3* %27 to i32*, !dbg !2216
  %29 = load i32, i32* %28, align 8, !dbg !2216, !tbaa !909
  %30 = and i32 %29, 256, !dbg !2220
  %31 = icmp eq i32 %30, 0, !dbg !2220
  br i1 %31, label %32, label %41, !dbg !2221

; <label>:32:                                     ; preds = %26
  %33 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !2222
  %34 = load i8, i8* %33, align 2, !dbg !2222, !tbaa !537
  %35 = zext i8 %34 to i32, !dbg !2223
  %36 = icmp slt i32 %29, %35, !dbg !2224
  br i1 %36, label %41, label %37, !dbg !2225

; <label>:37:                                     ; preds = %32
  %38 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !2226
  %39 = load i32, i32* %38, align 4, !dbg !2227, !tbaa !1014
  %40 = add nsw i32 %39, -1, !dbg !2227
  store i32 %40, i32* %38, align 4, !dbg !2227, !tbaa !1014
  br label %41, !dbg !2228

; <label>:41:                                     ; preds = %37, %32, %26
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2229
  br label %42, !dbg !2230

; <label>:42:                                     ; preds = %23, %41
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2231
  %43 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !2232
  %44 = load i32, i32* %43, align 4, !dbg !2232, !tbaa !1014
  %45 = add nsw i32 %44, 2, !dbg !2240
  %46 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0, !dbg !2242
  %47 = load %struct.Proto*, %struct.Proto** %46, align 8, !dbg !2242, !tbaa !542
  %48 = getelementptr inbounds %struct.Proto, %struct.Proto* %47, i64 0, i32 22, !dbg !2243
  %49 = load i8, i8* %48, align 1, !dbg !2243, !tbaa !1020
  %50 = zext i8 %49 to i32, !dbg !2244
  %51 = icmp sgt i32 %45, %50, !dbg !2245
  br i1 %51, label %52, label %65, !dbg !2246

; <label>:52:                                     ; preds = %42
  %53 = icmp sgt i32 %44, 247, !dbg !2247
  br i1 %53, label %54, label %61, !dbg !2248

; <label>:54:                                     ; preds = %52
  %55 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !2249
  %56 = load %struct.LexState*, %struct.LexState** %55, align 8, !dbg !2249, !tbaa !587
  tail call void @luaX_syntaxerror(%struct.LexState* %56, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0)) #5, !dbg !2250
  %57 = load %struct.Proto*, %struct.Proto** %46, align 8, !dbg !2251, !tbaa !542
  %58 = getelementptr inbounds %struct.Proto, %struct.Proto* %57, i64 0, i32 22, !dbg !2252
  %59 = load i32, i32* %43, align 4, !dbg !2253, !tbaa !1014
  %60 = add nsw i32 %59, 2, !dbg !2253
  br label %61, !dbg !2250

; <label>:61:                                     ; preds = %54, %52
  %62 = phi i32 [ %60, %54 ], [ %45, %52 ], !dbg !2253
  %63 = phi i8* [ %58, %54 ], [ %48, %52 ], !dbg !2252
  %64 = trunc i32 %45 to i8, !dbg !2254
  store i8 %64, i8* %63, align 1, !dbg !2255, !tbaa !1020
  br label %65, !dbg !2256

; <label>:65:                                     ; preds = %42, %61
  %66 = phi i32 [ %45, %42 ], [ %62, %61 ], !dbg !2253
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2257
  store i32 %66, i32* %43, align 4, !dbg !2253, !tbaa !1014
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2258
  %67 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !2259
  %68 = bitcast %union.anon.3* %67 to i32*, !dbg !2260
  %69 = load i32, i32* %68, align 8, !dbg !2260, !tbaa !909
  %70 = tail call i32 @luaK_exp2RK(%struct.FuncState* nonnull %0, %struct.expdesc* %2) #6, !dbg !2261
  %71 = shl i32 %44, 6, !dbg !2268
  %72 = shl i32 %69, 23, !dbg !2268
  %73 = shl i32 %70, 14, !dbg !2268
  %74 = or i32 %71, %72, !dbg !2268
  %75 = or i32 %74, %73, !dbg !2268
  %76 = or i32 %75, 11, !dbg !2268
  %77 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !2269
  %78 = load %struct.LexState*, %struct.LexState** %77, align 8, !dbg !2269, !tbaa !587
  %79 = getelementptr inbounds %struct.LexState, %struct.LexState* %78, i64 0, i32 2, !dbg !2270
  %80 = load i32, i32* %79, align 8, !dbg !2270, !tbaa !589
  %81 = tail call fastcc i32 @luaK_code(%struct.FuncState* nonnull %0, i32 %76, i32 %80) #5, !dbg !2271
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2272
  %82 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0, !dbg !2276
  %83 = load i32, i32* %82, align 8, !dbg !2276, !tbaa !1193
  %84 = icmp eq i32 %83, 12, !dbg !2277
  br i1 %84, label %85, label %100, !dbg !2278

; <label>:85:                                     ; preds = %65
  %86 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, !dbg !2279
  %87 = bitcast %union.anon.3* %86 to i32*, !dbg !2280
  %88 = load i32, i32* %87, align 8, !dbg !2280, !tbaa !909
  %89 = and i32 %88, 256, !dbg !2284
  %90 = icmp eq i32 %89, 0, !dbg !2284
  br i1 %90, label %91, label %99, !dbg !2285

; <label>:91:                                     ; preds = %85
  %92 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !2286
  %93 = load i8, i8* %92, align 2, !dbg !2286, !tbaa !537
  %94 = zext i8 %93 to i32, !dbg !2287
  %95 = icmp slt i32 %88, %94, !dbg !2288
  br i1 %95, label %99, label %96, !dbg !2289

; <label>:96:                                     ; preds = %91
  %97 = load i32, i32* %43, align 4, !dbg !2290, !tbaa !1014
  %98 = add nsw i32 %97, -1, !dbg !2290
  store i32 %98, i32* %43, align 4, !dbg !2290, !tbaa !1014
  br label %99, !dbg !2291

; <label>:99:                                     ; preds = %96, %91, %85
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2292
  br label %100, !dbg !2293

; <label>:100:                                    ; preds = %65, %99
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2294
  store i32 %44, i32* %68, align 8, !dbg !2295, !tbaa !909
  store i32 12, i32* %4, align 8, !dbg !2296, !tbaa !1193
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2297
  ret void, !dbg !2297
}

; Function Attrs: noredzone nounwind
define hidden void @luaK_goiftrue(%struct.FuncState* nocapture, %struct.expdesc* nocapture) local_unnamed_addr #0 !dbg !2298 {
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %1) #6, !dbg !2305
  %3 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0, !dbg !2306
  %4 = load i32, i32* %3, align 8, !dbg !2306, !tbaa !1193
  switch i32 %4, label %36 [
    i32 4, label %78
    i32 5, label %78
    i32 2, label %78
    i32 10, label %5
  ], !dbg !2307

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !2318
  %7 = bitcast %union.anon.3* %6 to i32*, !dbg !2319
  %8 = load i32, i32* %7, align 8, !dbg !2319, !tbaa !909
  %9 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0, !dbg !2323
  %10 = load %struct.Proto*, %struct.Proto** %9, align 8, !dbg !2323, !tbaa !542
  %11 = getelementptr inbounds %struct.Proto, %struct.Proto* %10, i64 0, i32 4, !dbg !2324
  %12 = load i32*, i32** %11, align 8, !dbg !2324, !tbaa !544
  %13 = sext i32 %8 to i64, !dbg !2325
  %14 = getelementptr inbounds i32, i32* %12, i64 %13, !dbg !2325
  %15 = icmp sgt i32 %8, 0, !dbg !2327
  br i1 %15, label %16, label %24, !dbg !2328

; <label>:16:                                     ; preds = %5
  %17 = getelementptr inbounds i32, i32* %14, i64 -1, !dbg !2329
  %18 = load i32, i32* %17, align 4, !dbg !2329, !tbaa !550
  %19 = and i32 %18, 63, !dbg !2329
  %20 = zext i32 %19 to i64, !dbg !2329
  %21 = getelementptr inbounds [38 x i8], [38 x i8]* @luaP_opmodes, i64 0, i64 %20, !dbg !2329
  %22 = load i8, i8* %21, align 1, !dbg !2329, !tbaa !909
  %23 = icmp slt i8 %22, 0, !dbg !2329
  br i1 %23, label %26, label %24, !dbg !2330

; <label>:24:                                     ; preds = %16, %5
  %25 = load i32, i32* %14, align 4, !dbg !2331, !tbaa !550
  br label %26, !dbg !2332

; <label>:26:                                     ; preds = %16, %24
  %27 = phi i32 [ %25, %24 ], [ %18, %16 ], !dbg !2331
  %28 = phi i32* [ %14, %24 ], [ %17, %16 ], !dbg !2333
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2334
  %29 = and i32 %27, -16321, !dbg !2331
  %30 = and i32 %27, 16320, !dbg !2331
  %31 = icmp eq i32 %30, 0, !dbg !2331
  %32 = zext i1 %31 to i32, !dbg !2331
  %33 = shl nuw nsw i32 %32, 6, !dbg !2331
  %34 = or i32 %33, %29, !dbg !2331
  store i32 %34, i32* %28, align 4, !dbg !2331, !tbaa !550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2336
  %35 = load i32, i32* %7, align 8, !dbg !2337, !tbaa !909
  br label %38, !dbg !2339

; <label>:36:                                     ; preds = %2
  %37 = tail call fastcc i32 @jumponcond(%struct.FuncState* %0, %struct.expdesc* nonnull %1, i32 0) #6, !dbg !2340
  br label %38, !dbg !2342

; <label>:38:                                     ; preds = %36, %26
  %39 = phi i32 [ %37, %36 ], [ %35, %26 ], !dbg !2343
  %40 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3, !dbg !2345
  %41 = icmp eq i32 %39, -1, !dbg !2350
  br i1 %41, label %78, label %42, !dbg !2351

; <label>:42:                                     ; preds = %38
  %43 = load i32, i32* %40, align 4, !dbg !2352, !tbaa !550
  %44 = icmp eq i32 %43, -1, !dbg !2353
  br i1 %44, label %50, label %45, !dbg !2354

; <label>:45:                                     ; preds = %42
  %46 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %47 = load %struct.Proto*, %struct.Proto** %46, align 8, !tbaa !542
  %48 = getelementptr inbounds %struct.Proto, %struct.Proto* %47, i64 0, i32 4
  %49 = load i32*, i32** %48, align 8, !tbaa !544
  br label %51, !dbg !2355

; <label>:50:                                     ; preds = %42
  store i32 %39, i32* %40, align 4, !dbg !2357, !tbaa !550
  br label %78, !dbg !2358

; <label>:51:                                     ; preds = %51, %45
  %52 = phi i32 [ %61, %51 ], [ %43, %45 ], !dbg !2359
  %53 = sext i32 %52 to i64, !dbg !2355
  %54 = getelementptr inbounds i32, i32* %49, i64 %53, !dbg !2355
  %55 = load i32, i32* %54, align 4, !dbg !2355, !tbaa !550
  %56 = lshr i32 %55, 14, !dbg !2355
  %57 = add nsw i32 %56, -131071, !dbg !2355
  %58 = icmp eq i32 %57, -1, !dbg !2364
  %59 = add nsw i32 %52, 1, !dbg !2365
  %60 = add nsw i32 %59, %57, !dbg !2366
  %61 = select i1 %58, i32 -1, i32 %60, !dbg !2367
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2368
  %62 = icmp eq i32 %61, -1, !dbg !2370
  br i1 %62, label %63, label %51, !dbg !2371, !llvm.loop !677

; <label>:63:                                     ; preds = %51
  %64 = getelementptr inbounds i32, i32* %49, i64 %53, !dbg !2355
  %65 = xor i32 %52, -1, !dbg !2377
  %66 = add i32 %39, %65, !dbg !2377
  %67 = tail call i32 @abs(i32 %66) #5, !dbg !2379
  %68 = icmp sgt i32 %67, 131071, !dbg !2380
  br i1 %68, label %69, label %72, !dbg !2381

; <label>:69:                                     ; preds = %63
  %70 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !2382
  %71 = load %struct.LexState*, %struct.LexState** %70, align 8, !dbg !2382, !tbaa !587
  tail call void @luaX_syntaxerror(%struct.LexState* %71, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !2383
  br label %72, !dbg !2383

; <label>:72:                                     ; preds = %69, %63
  %73 = load i32, i32* %64, align 4, !dbg !2384, !tbaa !550
  %74 = and i32 %73, 16383, !dbg !2384
  %75 = shl i32 %66, 14, !dbg !2384
  %76 = add i32 %75, 2147467264, !dbg !2384
  %77 = or i32 %74, %76, !dbg !2384
  store i32 %77, i32* %64, align 4, !dbg !2384, !tbaa !550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2385
  br label %78

; <label>:78:                                     ; preds = %2, %2, %2, %38, %50, %72
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2386
  %79 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2, !dbg !2387
  %80 = load i32, i32* %79, align 8, !dbg !2387, !tbaa !1493
  %81 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 6, !dbg !2393
  %82 = load i32, i32* %81, align 8, !dbg !2393, !tbaa !521
  %83 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 7, !dbg !2394
  store i32 %82, i32* %83, align 4, !dbg !2395, !tbaa !529
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2396
  %84 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 8, !dbg !2397
  %85 = icmp eq i32 %80, -1, !dbg !2402
  br i1 %85, label %122, label %86, !dbg !2403

; <label>:86:                                     ; preds = %78
  %87 = load i32, i32* %84, align 4, !dbg !2404, !tbaa !550
  %88 = icmp eq i32 %87, -1, !dbg !2405
  br i1 %88, label %94, label %89, !dbg !2406

; <label>:89:                                     ; preds = %86
  %90 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %91 = load %struct.Proto*, %struct.Proto** %90, align 8, !tbaa !542
  %92 = getelementptr inbounds %struct.Proto, %struct.Proto* %91, i64 0, i32 4
  %93 = load i32*, i32** %92, align 8, !tbaa !544
  br label %95, !dbg !2407

; <label>:94:                                     ; preds = %86
  store i32 %80, i32* %84, align 4, !dbg !2409, !tbaa !550
  br label %122, !dbg !2410

; <label>:95:                                     ; preds = %95, %89
  %96 = phi i32 [ %105, %95 ], [ %87, %89 ], !dbg !2411
  %97 = sext i32 %96 to i64, !dbg !2407
  %98 = getelementptr inbounds i32, i32* %93, i64 %97, !dbg !2407
  %99 = load i32, i32* %98, align 4, !dbg !2407, !tbaa !550
  %100 = lshr i32 %99, 14, !dbg !2407
  %101 = add nsw i32 %100, -131071, !dbg !2407
  %102 = icmp eq i32 %101, -1, !dbg !2416
  %103 = add nsw i32 %96, 1, !dbg !2417
  %104 = add nsw i32 %103, %101, !dbg !2418
  %105 = select i1 %102, i32 -1, i32 %104, !dbg !2419
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2420
  %106 = icmp eq i32 %105, -1, !dbg !2422
  br i1 %106, label %107, label %95, !dbg !2423, !llvm.loop !677

; <label>:107:                                    ; preds = %95
  %108 = getelementptr inbounds i32, i32* %93, i64 %97, !dbg !2407
  %109 = xor i32 %96, -1, !dbg !2429
  %110 = add i32 %80, %109, !dbg !2429
  %111 = tail call i32 @abs(i32 %110) #5, !dbg !2431
  %112 = icmp sgt i32 %111, 131071, !dbg !2432
  br i1 %112, label %113, label %116, !dbg !2433

; <label>:113:                                    ; preds = %107
  %114 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !2434
  %115 = load %struct.LexState*, %struct.LexState** %114, align 8, !dbg !2434, !tbaa !587
  tail call void @luaX_syntaxerror(%struct.LexState* %115, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !2435
  br label %116, !dbg !2435

; <label>:116:                                    ; preds = %113, %107
  %117 = load i32, i32* %108, align 4, !dbg !2436, !tbaa !550
  %118 = and i32 %117, 16383, !dbg !2436
  %119 = shl i32 %110, 14, !dbg !2436
  %120 = add i32 %119, 2147467264, !dbg !2436
  %121 = or i32 %118, %120, !dbg !2436
  store i32 %121, i32* %108, align 4, !dbg !2436, !tbaa !550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2437
  br label %122

; <label>:122:                                    ; preds = %78, %94, %116
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2438
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2439
  store i32 -1, i32* %79, align 8, !dbg !2440, !tbaa !1493
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2441
  ret void, !dbg !2441
}

; Function Attrs: noredzone nounwind
define internal fastcc i32 @jumponcond(%struct.FuncState* nocapture, %struct.expdesc* nocapture, i32) unnamed_addr #0 !dbg !2442 {
  %4 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0, !dbg !2455
  %5 = load i32, i32* %4, align 8, !dbg !2455, !tbaa !1193
  switch i32 %5, label %37 [
    i32 11, label %6
    i32 12, label %36
  ], !dbg !2456

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0, !dbg !2457
  %8 = load %struct.Proto*, %struct.Proto** %7, align 8, !dbg !2457, !tbaa !542
  %9 = getelementptr inbounds %struct.Proto, %struct.Proto* %8, i64 0, i32 4, !dbg !2457
  %10 = load i32*, i32** %9, align 8, !dbg !2457, !tbaa !544
  %11 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !2457
  %12 = bitcast %union.anon.3* %11 to i32*, !dbg !2457
  %13 = load i32, i32* %12, align 8, !dbg !2457, !tbaa !909
  %14 = sext i32 %13 to i64, !dbg !2457
  %15 = getelementptr inbounds i32, i32* %10, i64 %14, !dbg !2457
  %16 = load i32, i32* %15, align 4, !dbg !2457, !tbaa !550
  %17 = and i32 %16, 63, !dbg !2459
  %18 = icmp eq i32 %17, 19, !dbg !2461
  br i1 %18, label %19, label %37, !dbg !2462

; <label>:19:                                     ; preds = %6
  %20 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 6, !dbg !2463
  %21 = load i32, i32* %20, align 8, !dbg !2465, !tbaa !521
  %22 = add nsw i32 %21, -1, !dbg !2465
  store i32 %22, i32* %20, align 8, !dbg !2465, !tbaa !521
  %23 = lshr i32 %16, 23, !dbg !2466
  %24 = icmp eq i32 %2, 0, !dbg !2467
  %25 = zext i1 %24 to i32, !dbg !2467
  %26 = shl nuw nsw i32 %23, 6, !dbg !2487
  %27 = shl nuw nsw i32 %25, 14, !dbg !2487
  %28 = or i32 %27, %26, !dbg !2487
  %29 = or i32 %28, 26, !dbg !2487
  %30 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !2488
  %31 = load %struct.LexState*, %struct.LexState** %30, align 8, !dbg !2488, !tbaa !587
  %32 = getelementptr inbounds %struct.LexState, %struct.LexState* %31, i64 0, i32 2, !dbg !2489
  %33 = load i32, i32* %32, align 8, !dbg !2489, !tbaa !589
  %34 = tail call fastcc i32 @luaK_code(%struct.FuncState* nonnull %0, i32 %29, i32 %33) #5, !dbg !2490
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2491
  %35 = tail call i32 @luaK_jump(%struct.FuncState* nonnull %0) #5, !dbg !2492
  br label %97

; <label>:36:                                     ; preds = %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2493
  br label %68, !dbg !2502

; <label>:37:                                     ; preds = %3, %6
  %38 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !2511
  %39 = load i32, i32* %38, align 4, !dbg !2511, !tbaa !1014
  %40 = add nsw i32 %39, 1, !dbg !2512
  %41 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0, !dbg !2514
  %42 = load %struct.Proto*, %struct.Proto** %41, align 8, !dbg !2514, !tbaa !542
  %43 = getelementptr inbounds %struct.Proto, %struct.Proto* %42, i64 0, i32 22, !dbg !2515
  %44 = load i8, i8* %43, align 1, !dbg !2515, !tbaa !1020
  %45 = zext i8 %44 to i32, !dbg !2516
  %46 = icmp slt i32 %39, %45, !dbg !2517
  br i1 %46, label %60, label %47, !dbg !2518

; <label>:47:                                     ; preds = %37
  %48 = icmp sgt i32 %39, 248, !dbg !2519
  br i1 %48, label %49, label %56, !dbg !2520

; <label>:49:                                     ; preds = %47
  %50 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !2521
  %51 = load %struct.LexState*, %struct.LexState** %50, align 8, !dbg !2521, !tbaa !587
  tail call void @luaX_syntaxerror(%struct.LexState* %51, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0)) #5, !dbg !2522
  %52 = load %struct.Proto*, %struct.Proto** %41, align 8, !dbg !2523, !tbaa !542
  %53 = getelementptr inbounds %struct.Proto, %struct.Proto* %52, i64 0, i32 22, !dbg !2524
  %54 = load i32, i32* %38, align 4, !dbg !2525, !tbaa !1014
  %55 = add nsw i32 %54, 1, !dbg !2525
  br label %56, !dbg !2522

; <label>:56:                                     ; preds = %49, %47
  %57 = phi i32 [ %55, %49 ], [ %40, %47 ], !dbg !2525
  %58 = phi i8* [ %53, %49 ], [ %43, %47 ], !dbg !2524
  %59 = trunc i32 %40 to i8, !dbg !2526
  store i8 %59, i8* %58, align 1, !dbg !2527, !tbaa !1020
  br label %60, !dbg !2528

; <label>:60:                                     ; preds = %37, %56
  %61 = phi i32 [ %40, %37 ], [ %57, %56 ], !dbg !2525
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2529
  store i32 %61, i32* %38, align 4, !dbg !2525, !tbaa !1014
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2530
  %62 = add nsw i32 %61, -1, !dbg !2531
  tail call fastcc void @discharge2reg(%struct.FuncState* nonnull %0, %struct.expdesc* nonnull %1, i32 %62) #5, !dbg !2532
  %63 = load i32, i32* %4, align 8, !dbg !2533, !tbaa !1193
  %64 = icmp eq i32 %63, 12, !dbg !2534
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2493
  br i1 %64, label %68, label %65, !dbg !2502

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !2535
  %67 = bitcast %union.anon.3* %66 to i32*, !dbg !2536
  br label %84, !dbg !2502

; <label>:68:                                     ; preds = %36, %60
  %69 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !2537
  %70 = bitcast %union.anon.3* %69 to i32*, !dbg !2538
  %71 = load i32, i32* %70, align 8, !dbg !2538, !tbaa !909
  %72 = and i32 %71, 256, !dbg !2542
  %73 = icmp eq i32 %72, 0, !dbg !2542
  br i1 %73, label %74, label %83, !dbg !2543

; <label>:74:                                     ; preds = %68
  %75 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !2544
  %76 = load i8, i8* %75, align 2, !dbg !2544, !tbaa !537
  %77 = zext i8 %76 to i32, !dbg !2545
  %78 = icmp slt i32 %71, %77, !dbg !2546
  br i1 %78, label %83, label %79, !dbg !2547

; <label>:79:                                     ; preds = %74
  %80 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !2548
  %81 = load i32, i32* %80, align 4, !dbg !2549, !tbaa !1014
  %82 = add nsw i32 %81, -1, !dbg !2549
  store i32 %82, i32* %80, align 4, !dbg !2549, !tbaa !1014
  br label %83, !dbg !2550

; <label>:83:                                     ; preds = %79, %74, %68
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2551
  br label %84, !dbg !2552

; <label>:84:                                     ; preds = %65, %83
  %85 = phi i32* [ %67, %65 ], [ %70, %83 ], !dbg !2536
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2553
  %86 = load i32, i32* %85, align 8, !dbg !2536, !tbaa !909
  %87 = shl i32 %86, 23, !dbg !2566
  %88 = shl i32 %2, 14, !dbg !2566
  %89 = or i32 %88, %87, !dbg !2566
  %90 = or i32 %89, 16347, !dbg !2566
  %91 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !2567
  %92 = load %struct.LexState*, %struct.LexState** %91, align 8, !dbg !2567, !tbaa !587
  %93 = getelementptr inbounds %struct.LexState, %struct.LexState* %92, i64 0, i32 2, !dbg !2568
  %94 = load i32, i32* %93, align 8, !dbg !2568, !tbaa !589
  %95 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %90, i32 %94) #5, !dbg !2569
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2570
  %96 = tail call i32 @luaK_jump(%struct.FuncState* %0) #5, !dbg !2571
  br label %97, !dbg !2572

; <label>:97:                                     ; preds = %19, %84
  %98 = phi i32 [ %96, %84 ], [ %35, %19 ], !dbg !2573
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2574
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2575
  ret i32 %98, !dbg !2575
}

; Function Attrs: noredzone nounwind
define hidden void @luaK_indexed(%struct.FuncState*, %struct.expdesc* nocapture, %struct.expdesc* nocapture) local_unnamed_addr #0 !dbg !2576 {
  %4 = tail call i32 @luaK_exp2RK(%struct.FuncState* %0, %struct.expdesc* %2) #6, !dbg !2584
  %5 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !2585
  %6 = bitcast %union.anon.3* %5 to %struct.anon.4*, !dbg !2586
  %7 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %6, i64 0, i32 1, !dbg !2587
  store i32 %4, i32* %7, align 4, !dbg !2588, !tbaa !909
  %8 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0, !dbg !2589
  store i32 9, i32* %8, align 8, !dbg !2590, !tbaa !1193
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2591
  ret void, !dbg !2591
}

; Function Attrs: noredzone nounwind
define hidden void @luaK_prefix(%struct.FuncState*, i32, %struct.expdesc*) local_unnamed_addr #0 !dbg !2592 {
  %4 = alloca %struct.expdesc, align 8
  %5 = bitcast %struct.expdesc* %4 to i8*, !dbg !2604
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #4, !dbg !2604
  %6 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 3, !dbg !2605
  store i32 -1, i32* %6, align 4, !dbg !2606, !tbaa !1494
  %7 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 2, !dbg !2607
  store i32 -1, i32* %7, align 8, !dbg !2608, !tbaa !1493
  %8 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 0, !dbg !2609
  store i32 5, i32* %8, align 8, !dbg !2610, !tbaa !1193
  %9 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 1, i32 0, !dbg !2611
  store double 0.000000e+00, double* %9, align 8, !dbg !2612, !tbaa !909
  switch i32 %1, label %250 [
    i32 0, label %10
    i32 1, label %44
    i32 2, label %229
  ], !dbg !2613

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0, !dbg !2624
  %12 = load i32, i32* %11, align 8, !dbg !2624, !tbaa !1193
  %13 = icmp eq i32 %12, 5, !dbg !2625
  br i1 %13, label %14, label %18, !dbg !2626

; <label>:14:                                     ; preds = %10
  %15 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2, !dbg !2627
  %16 = load i32, i32* %15, align 8, !dbg !2627, !tbaa !1493
  %17 = icmp eq i32 %16, -1, !dbg !2628
  br i1 %17, label %19, label %18, !dbg !2629

; <label>:18:                                     ; preds = %14, %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2630
  br label %23, !dbg !2631

; <label>:19:                                     ; preds = %14
  %20 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3, !dbg !2632
  %21 = load i32, i32* %20, align 4, !dbg !2632, !tbaa !1494
  %22 = icmp eq i32 %21, -1, !dbg !2633
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2630
  br i1 %22, label %43, label %23, !dbg !2631

; <label>:23:                                     ; preds = %19, %18
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* nonnull %2) #5, !dbg !2637
  %24 = load i32, i32* %11, align 8, !dbg !2638, !tbaa !1193
  %25 = icmp eq i32 %24, 12, !dbg !2639
  br i1 %25, label %26, label %41, !dbg !2640

; <label>:26:                                     ; preds = %23
  %27 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2, !dbg !2641
  %28 = load i32, i32* %27, align 8, !dbg !2641, !tbaa !1493
  %29 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3, !dbg !2641
  %30 = load i32, i32* %29, align 4, !dbg !2641, !tbaa !1494
  %31 = icmp eq i32 %28, %30, !dbg !2641
  %32 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, !dbg !2642
  %33 = bitcast %union.anon.3* %32 to i32*, !dbg !2642
  %34 = load i32, i32* %33, align 8, !dbg !2642, !tbaa !909
  br i1 %31, label %42, label %35, !dbg !2643

; <label>:35:                                     ; preds = %26
  %36 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !2644
  %37 = load i8, i8* %36, align 2, !dbg !2644, !tbaa !537
  %38 = zext i8 %37 to i32, !dbg !2645
  %39 = icmp slt i32 %34, %38, !dbg !2646
  br i1 %39, label %41, label %40, !dbg !2647

; <label>:40:                                     ; preds = %35
  tail call fastcc void @exp2reg(%struct.FuncState* nonnull %0, %struct.expdesc* nonnull %2, i32 %34) #5, !dbg !2648
  br label %42, !dbg !2649

; <label>:41:                                     ; preds = %23, %35
  tail call void @luaK_exp2nextreg(%struct.FuncState* %0, %struct.expdesc* nonnull %2) #5, !dbg !2650
  br label %42, !dbg !2651

; <label>:42:                                     ; preds = %26, %40, %41
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2652
  br label %43, !dbg !2653

; <label>:43:                                     ; preds = %19, %42
  call fastcc void @codearith(%struct.FuncState* %0, i32 18, %struct.expdesc* nonnull %2, %struct.expdesc* nonnull %4) #6, !dbg !2655
  br label %250, !dbg !2656

; <label>:44:                                     ; preds = %3
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %2) #5, !dbg !2666
  %45 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0, !dbg !2667
  %46 = load i32, i32* %45, align 8, !dbg !2667, !tbaa !1193
  switch i32 %46, label %137 [
    i32 1, label %48
    i32 3, label %48
    i32 4, label %49
    i32 5, label %49
    i32 2, label %49
    i32 10, label %50
    i32 12, label %47
    i32 11, label %80
  ], !dbg !2668

; <label>:47:                                     ; preds = %44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2669
  br label %111, !dbg !2676

; <label>:48:                                     ; preds = %44, %44
  store i32 2, i32* %45, align 8, !dbg !2677, !tbaa !1193
  br label %137, !dbg !2679

; <label>:49:                                     ; preds = %44, %44, %44
  store i32 3, i32* %45, align 8, !dbg !2680, !tbaa !1193
  br label %137, !dbg !2682

; <label>:50:                                     ; preds = %44
  %51 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, !dbg !2687
  %52 = bitcast %union.anon.3* %51 to i32*, !dbg !2688
  %53 = load i32, i32* %52, align 8, !dbg !2688, !tbaa !909
  %54 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0, !dbg !2692
  %55 = load %struct.Proto*, %struct.Proto** %54, align 8, !dbg !2692, !tbaa !542
  %56 = getelementptr inbounds %struct.Proto, %struct.Proto* %55, i64 0, i32 4, !dbg !2693
  %57 = load i32*, i32** %56, align 8, !dbg !2693, !tbaa !544
  %58 = sext i32 %53 to i64, !dbg !2694
  %59 = getelementptr inbounds i32, i32* %57, i64 %58, !dbg !2694
  %60 = icmp sgt i32 %53, 0, !dbg !2696
  br i1 %60, label %61, label %69, !dbg !2697

; <label>:61:                                     ; preds = %50
  %62 = getelementptr inbounds i32, i32* %59, i64 -1, !dbg !2698
  %63 = load i32, i32* %62, align 4, !dbg !2698, !tbaa !550
  %64 = and i32 %63, 63, !dbg !2698
  %65 = zext i32 %64 to i64, !dbg !2698
  %66 = getelementptr inbounds [38 x i8], [38 x i8]* @luaP_opmodes, i64 0, i64 %65, !dbg !2698
  %67 = load i8, i8* %66, align 1, !dbg !2698, !tbaa !909
  %68 = icmp slt i8 %67, 0, !dbg !2698
  br i1 %68, label %71, label %69, !dbg !2699

; <label>:69:                                     ; preds = %61, %50
  %70 = load i32, i32* %59, align 4, !dbg !2700, !tbaa !550
  br label %71, !dbg !2701

; <label>:71:                                     ; preds = %69, %61
  %72 = phi i32 [ %70, %69 ], [ %63, %61 ], !dbg !2700
  %73 = phi i32* [ %59, %69 ], [ %62, %61 ], !dbg !2702
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2703
  %74 = and i32 %72, -16321, !dbg !2700
  %75 = and i32 %72, 16320, !dbg !2700
  %76 = icmp eq i32 %75, 0, !dbg !2700
  %77 = zext i1 %76 to i32, !dbg !2700
  %78 = shl nuw nsw i32 %77, 6, !dbg !2700
  %79 = or i32 %78, %74, !dbg !2700
  store i32 %79, i32* %73, align 4, !dbg !2700, !tbaa !550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2705
  br label %137, !dbg !2706

; <label>:80:                                     ; preds = %44
  %81 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !2713
  %82 = load i32, i32* %81, align 4, !dbg !2713, !tbaa !1014
  %83 = add nsw i32 %82, 1, !dbg !2714
  %84 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0, !dbg !2716
  %85 = load %struct.Proto*, %struct.Proto** %84, align 8, !dbg !2716, !tbaa !542
  %86 = getelementptr inbounds %struct.Proto, %struct.Proto* %85, i64 0, i32 22, !dbg !2717
  %87 = load i8, i8* %86, align 1, !dbg !2717, !tbaa !1020
  %88 = zext i8 %87 to i32, !dbg !2718
  %89 = icmp slt i32 %82, %88, !dbg !2719
  br i1 %89, label %103, label %90, !dbg !2720

; <label>:90:                                     ; preds = %80
  %91 = icmp sgt i32 %82, 248, !dbg !2721
  br i1 %91, label %92, label %99, !dbg !2722

; <label>:92:                                     ; preds = %90
  %93 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !2723
  %94 = load %struct.LexState*, %struct.LexState** %93, align 8, !dbg !2723, !tbaa !587
  tail call void @luaX_syntaxerror(%struct.LexState* %94, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0)) #5, !dbg !2724
  %95 = load %struct.Proto*, %struct.Proto** %84, align 8, !dbg !2725, !tbaa !542
  %96 = getelementptr inbounds %struct.Proto, %struct.Proto* %95, i64 0, i32 22, !dbg !2726
  %97 = load i32, i32* %81, align 4, !dbg !2727, !tbaa !1014
  %98 = add nsw i32 %97, 1, !dbg !2727
  br label %99, !dbg !2724

; <label>:99:                                     ; preds = %92, %90
  %100 = phi i32 [ %98, %92 ], [ %83, %90 ], !dbg !2727
  %101 = phi i8* [ %96, %92 ], [ %86, %90 ], !dbg !2726
  %102 = trunc i32 %83 to i8, !dbg !2728
  store i8 %102, i8* %101, align 1, !dbg !2729, !tbaa !1020
  br label %103, !dbg !2730

; <label>:103:                                    ; preds = %99, %80
  %104 = phi i32 [ %83, %80 ], [ %100, %99 ], !dbg !2727
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2731
  store i32 %104, i32* %81, align 4, !dbg !2727, !tbaa !1014
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2732
  %105 = add nsw i32 %104, -1, !dbg !2733
  tail call fastcc void @discharge2reg(%struct.FuncState* nonnull %0, %struct.expdesc* nonnull %2, i32 %105) #5, !dbg !2734
  %106 = load i32, i32* %45, align 8, !dbg !2735, !tbaa !1193
  %107 = icmp eq i32 %106, 12, !dbg !2736
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2669
  br i1 %107, label %111, label %108, !dbg !2676

; <label>:108:                                    ; preds = %103
  %109 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, !dbg !2737
  %110 = bitcast %union.anon.3* %109 to i32*, !dbg !2738
  br label %127, !dbg !2676

; <label>:111:                                    ; preds = %103, %47
  %112 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, !dbg !2739
  %113 = bitcast %union.anon.3* %112 to i32*, !dbg !2740
  %114 = load i32, i32* %113, align 8, !dbg !2740, !tbaa !909
  %115 = and i32 %114, 256, !dbg !2744
  %116 = icmp eq i32 %115, 0, !dbg !2744
  br i1 %116, label %117, label %126, !dbg !2745

; <label>:117:                                    ; preds = %111
  %118 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !2746
  %119 = load i8, i8* %118, align 2, !dbg !2746, !tbaa !537
  %120 = zext i8 %119 to i32, !dbg !2747
  %121 = icmp slt i32 %114, %120, !dbg !2748
  br i1 %121, label %126, label %122, !dbg !2749

; <label>:122:                                    ; preds = %117
  %123 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !2750
  %124 = load i32, i32* %123, align 4, !dbg !2751, !tbaa !1014
  %125 = add nsw i32 %124, -1, !dbg !2751
  store i32 %125, i32* %123, align 4, !dbg !2751, !tbaa !1014
  br label %126, !dbg !2752

; <label>:126:                                    ; preds = %122, %117, %111
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2753
  br label %127, !dbg !2754

; <label>:127:                                    ; preds = %126, %108
  %128 = phi i32* [ %110, %108 ], [ %113, %126 ], !dbg !2738
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2755
  %129 = load i32, i32* %128, align 8, !dbg !2738, !tbaa !909
  %130 = shl i32 %129, 23, !dbg !2762
  %131 = or i32 %130, 19, !dbg !2762
  %132 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !2763
  %133 = load %struct.LexState*, %struct.LexState** %132, align 8, !dbg !2763, !tbaa !587
  %134 = getelementptr inbounds %struct.LexState, %struct.LexState* %133, i64 0, i32 2, !dbg !2764
  %135 = load i32, i32* %134, align 8, !dbg !2764, !tbaa !589
  %136 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %131, i32 %135) #5, !dbg !2765
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2766
  store i32 %136, i32* %128, align 8, !dbg !2767, !tbaa !909
  store i32 11, i32* %45, align 8, !dbg !2768, !tbaa !1193
  br label %137, !dbg !2769

; <label>:137:                                    ; preds = %127, %71, %49, %48, %44
  %138 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3, !dbg !2770
  %139 = load i32, i32* %138, align 4, !dbg !2770, !tbaa !1494
  %140 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2, !dbg !2772
  %141 = load i32, i32* %140, align 8, !dbg !2772, !tbaa !1493
  store i32 %141, i32* %138, align 4, !dbg !2773, !tbaa !1494
  store i32 %139, i32* %140, align 8, !dbg !2774, !tbaa !1493
  %142 = icmp eq i32 %141, -1, !dbg !2782
  br i1 %142, label %185, label %143, !dbg !2785

; <label>:143:                                    ; preds = %137
  %144 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %145 = load %struct.Proto*, %struct.Proto** %144, align 8, !dbg !2786, !tbaa !542
  %146 = getelementptr inbounds %struct.Proto, %struct.Proto* %145, i64 0, i32 4
  %147 = load i32*, i32** %146, align 8, !dbg !2789, !tbaa !544
  br label %148, !dbg !2785

; <label>:148:                                    ; preds = %174, %143
  %149 = phi i32 [ %141, %143 ], [ %181, %174 ]
  %150 = sext i32 %149 to i64, !dbg !2795
  %151 = getelementptr inbounds i32, i32* %147, i64 %150, !dbg !2795
  %152 = icmp sgt i32 %149, 0, !dbg !2797
  br i1 %152, label %153, label %161, !dbg !2798

; <label>:153:                                    ; preds = %148
  %154 = getelementptr inbounds i32, i32* %151, i64 -1, !dbg !2799
  %155 = load i32, i32* %154, align 4, !dbg !2799, !tbaa !550
  %156 = and i32 %155, 63, !dbg !2799
  %157 = zext i32 %156 to i64, !dbg !2799
  %158 = getelementptr inbounds [38 x i8], [38 x i8]* @luaP_opmodes, i64 0, i64 %157, !dbg !2799
  %159 = load i8, i8* %158, align 1, !dbg !2799, !tbaa !909
  %160 = icmp slt i8 %159, 0, !dbg !2799
  br i1 %160, label %163, label %161, !dbg !2800

; <label>:161:                                    ; preds = %153, %148
  %162 = load i32, i32* %151, align 4, !dbg !2801, !tbaa !550
  br label %163, !dbg !2802

; <label>:163:                                    ; preds = %161, %153
  %164 = phi i32 [ %162, %161 ], [ %155, %153 ], !dbg !2801
  %165 = phi i32* [ %151, %161 ], [ %154, %153 ], !dbg !2803
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2804
  %166 = and i32 %164, 63, !dbg !2801
  %167 = icmp eq i32 %166, 27, !dbg !2806
  br i1 %167, label %168, label %174, !dbg !2807

; <label>:168:                                    ; preds = %163
  %169 = lshr i32 %164, 23, !dbg !2808
  %170 = shl nuw nsw i32 %169, 6, !dbg !2809
  %171 = and i32 %164, 8372224, !dbg !2809
  %172 = or i32 %171, %170, !dbg !2809
  %173 = or i32 %172, 26, !dbg !2809
  store i32 %173, i32* %165, align 4, !dbg !2810, !tbaa !550
  br label %174, !dbg !2811

; <label>:174:                                    ; preds = %168, %163
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2812
  %175 = load i32, i32* %151, align 4, !dbg !2816, !tbaa !550
  %176 = lshr i32 %175, 14, !dbg !2816
  %177 = add nsw i32 %176, -131071, !dbg !2816
  %178 = icmp eq i32 %177, -1, !dbg !2818
  %179 = add nsw i32 %149, 1, !dbg !2819
  %180 = add nsw i32 %179, %177, !dbg !2820
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2821
  %181 = select i1 %178, i32 -1, i32 %180
  %182 = icmp eq i32 %181, -1, !dbg !2782
  br i1 %182, label %183, label %148, !dbg !2785

; <label>:183:                                    ; preds = %174
  %184 = load i32, i32* %140, align 8, !dbg !2822, !tbaa !1493
  br label %185, !dbg !2823

; <label>:185:                                    ; preds = %183, %137
  %186 = phi i32 [ %184, %183 ], [ %139, %137 ], !dbg !2822
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2823
  %187 = icmp eq i32 %186, -1, !dbg !2827
  br i1 %187, label %228, label %188, !dbg !2828

; <label>:188:                                    ; preds = %185
  %189 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %190 = load %struct.Proto*, %struct.Proto** %189, align 8, !dbg !2829, !tbaa !542
  %191 = getelementptr inbounds %struct.Proto, %struct.Proto* %190, i64 0, i32 4
  %192 = load i32*, i32** %191, align 8, !dbg !2832, !tbaa !544
  br label %193, !dbg !2828

; <label>:193:                                    ; preds = %219, %188
  %194 = phi i32 [ %186, %188 ], [ %226, %219 ]
  %195 = sext i32 %194 to i64, !dbg !2838
  %196 = getelementptr inbounds i32, i32* %192, i64 %195, !dbg !2838
  %197 = icmp sgt i32 %194, 0, !dbg !2840
  br i1 %197, label %198, label %206, !dbg !2841

; <label>:198:                                    ; preds = %193
  %199 = getelementptr inbounds i32, i32* %196, i64 -1, !dbg !2842
  %200 = load i32, i32* %199, align 4, !dbg !2842, !tbaa !550
  %201 = and i32 %200, 63, !dbg !2842
  %202 = zext i32 %201 to i64, !dbg !2842
  %203 = getelementptr inbounds [38 x i8], [38 x i8]* @luaP_opmodes, i64 0, i64 %202, !dbg !2842
  %204 = load i8, i8* %203, align 1, !dbg !2842, !tbaa !909
  %205 = icmp slt i8 %204, 0, !dbg !2842
  br i1 %205, label %208, label %206, !dbg !2843

; <label>:206:                                    ; preds = %198, %193
  %207 = load i32, i32* %196, align 4, !dbg !2844, !tbaa !550
  br label %208, !dbg !2845

; <label>:208:                                    ; preds = %206, %198
  %209 = phi i32 [ %207, %206 ], [ %200, %198 ], !dbg !2844
  %210 = phi i32* [ %196, %206 ], [ %199, %198 ], !dbg !2846
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2847
  %211 = and i32 %209, 63, !dbg !2844
  %212 = icmp eq i32 %211, 27, !dbg !2849
  br i1 %212, label %213, label %219, !dbg !2850

; <label>:213:                                    ; preds = %208
  %214 = lshr i32 %209, 23, !dbg !2851
  %215 = shl nuw nsw i32 %214, 6, !dbg !2852
  %216 = and i32 %209, 8372224, !dbg !2852
  %217 = or i32 %216, %215, !dbg !2852
  %218 = or i32 %217, 26, !dbg !2852
  store i32 %218, i32* %210, align 4, !dbg !2853, !tbaa !550
  br label %219, !dbg !2854

; <label>:219:                                    ; preds = %213, %208
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2855
  %220 = load i32, i32* %196, align 4, !dbg !2859, !tbaa !550
  %221 = lshr i32 %220, 14, !dbg !2859
  %222 = add nsw i32 %221, -131071, !dbg !2859
  %223 = icmp eq i32 %222, -1, !dbg !2861
  %224 = add nsw i32 %194, 1, !dbg !2862
  %225 = add nsw i32 %224, %222, !dbg !2863
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2864
  %226 = select i1 %223, i32 -1, i32 %225
  %227 = icmp eq i32 %226, -1, !dbg !2827
  br i1 %227, label %228, label %193, !dbg !2828

; <label>:228:                                    ; preds = %219, %185
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2865
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2866
  br label %250, !dbg !2867

; <label>:229:                                    ; preds = %3
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %2) #5, !dbg !2872
  %230 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0, !dbg !2873
  %231 = load i32, i32* %230, align 8, !dbg !2873, !tbaa !1193
  %232 = icmp eq i32 %231, 12, !dbg !2874
  br i1 %232, label %233, label %248, !dbg !2875

; <label>:233:                                    ; preds = %229
  %234 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2, !dbg !2876
  %235 = load i32, i32* %234, align 8, !dbg !2876, !tbaa !1493
  %236 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3, !dbg !2876
  %237 = load i32, i32* %236, align 4, !dbg !2876, !tbaa !1494
  %238 = icmp eq i32 %235, %237, !dbg !2876
  %239 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, !dbg !2877
  %240 = bitcast %union.anon.3* %239 to i32*, !dbg !2877
  %241 = load i32, i32* %240, align 8, !dbg !2877, !tbaa !909
  br i1 %238, label %249, label %242, !dbg !2878

; <label>:242:                                    ; preds = %233
  %243 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !2879
  %244 = load i8, i8* %243, align 2, !dbg !2879, !tbaa !537
  %245 = zext i8 %244 to i32, !dbg !2880
  %246 = icmp slt i32 %241, %245, !dbg !2881
  br i1 %246, label %248, label %247, !dbg !2882

; <label>:247:                                    ; preds = %242
  tail call fastcc void @exp2reg(%struct.FuncState* nonnull %0, %struct.expdesc* nonnull %2, i32 %241) #5, !dbg !2883
  br label %249, !dbg !2884

; <label>:248:                                    ; preds = %229, %242
  tail call void @luaK_exp2nextreg(%struct.FuncState* %0, %struct.expdesc* nonnull %2) #5, !dbg !2885
  br label %249, !dbg !2886

; <label>:249:                                    ; preds = %233, %247, %248
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2887
  call fastcc void @codearith(%struct.FuncState* %0, i32 20, %struct.expdesc* nonnull %2, %struct.expdesc* nonnull %4) #6, !dbg !2888
  br label %250, !dbg !2889

; <label>:250:                                    ; preds = %3, %249, %228, %43
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #4, !dbg !2890
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2890
  ret void, !dbg !2890
}

; Function Attrs: noredzone nounwind
define internal fastcc void @codearith(%struct.FuncState*, i32, %struct.expdesc* nocapture, %struct.expdesc* nocapture) unnamed_addr #0 !dbg !2891 {
  %5 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0, !dbg !2924
  %6 = load i32, i32* %5, align 8, !dbg !2924, !tbaa !1193
  %7 = icmp eq i32 %6, 5, !dbg !2925
  br i1 %7, label %8, label %12, !dbg !2926

; <label>:8:                                      ; preds = %4
  %9 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2, !dbg !2927
  %10 = load i32, i32* %9, align 8, !dbg !2927, !tbaa !1493
  %11 = icmp eq i32 %10, -1, !dbg !2928
  br i1 %11, label %13, label %12, !dbg !2929

; <label>:12:                                     ; preds = %8, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2930
  br label %63, !dbg !2931

; <label>:13:                                     ; preds = %8
  %14 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3, !dbg !2932
  %15 = load i32, i32* %14, align 4, !dbg !2932, !tbaa !1494
  %16 = icmp eq i32 %15, -1, !dbg !2933
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2930
  br i1 %16, label %17, label %63, !dbg !2931

; <label>:17:                                     ; preds = %13
  %18 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0, !dbg !2936
  %19 = load i32, i32* %18, align 8, !dbg !2936, !tbaa !1193
  %20 = icmp eq i32 %19, 5, !dbg !2937
  br i1 %20, label %21, label %25, !dbg !2938

; <label>:21:                                     ; preds = %17
  %22 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 2, !dbg !2939
  %23 = load i32, i32* %22, align 8, !dbg !2939, !tbaa !1493
  %24 = icmp eq i32 %23, -1, !dbg !2940
  br i1 %24, label %26, label %25, !dbg !2941

; <label>:25:                                     ; preds = %21, %17
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2942
  br label %63, !dbg !2943

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 3, !dbg !2944
  %28 = load i32, i32* %27, align 4, !dbg !2944, !tbaa !1494
  %29 = icmp eq i32 %28, -1, !dbg !2945
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2942
  br i1 %29, label %30, label %63, !dbg !2943

; <label>:30:                                     ; preds = %26
  %31 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, i32 0, !dbg !2946
  %32 = load double, double* %31, align 8, !dbg !2946, !tbaa !909
  %33 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1, i32 0, !dbg !2948
  %34 = load double, double* %33, align 8, !dbg !2948, !tbaa !909
  switch i32 %1, label %60 [
    i32 12, label %36
    i32 13, label %38
    i32 14, label %40
    i32 15, label %42
    i32 16, label %46
    i32 17, label %53
    i32 18, label %55
    i32 20, label %35
  ], !dbg !2950

; <label>:35:                                     ; preds = %30
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2951
  br label %66, !dbg !2952

; <label>:36:                                     ; preds = %30
  %37 = fadd double %32, %34, !dbg !2953
  br label %57, !dbg !2956

; <label>:38:                                     ; preds = %30
  %39 = fsub double %32, %34, !dbg !2957
  br label %57, !dbg !2958

; <label>:40:                                     ; preds = %30
  %41 = fmul double %32, %34, !dbg !2959
  br label %57, !dbg !2960

; <label>:42:                                     ; preds = %30
  %43 = fcmp oeq double %34, 0.000000e+00, !dbg !2961
  br i1 %43, label %62, label %44, !dbg !2963

; <label>:44:                                     ; preds = %42
  %45 = fdiv double %32, %34, !dbg !2964
  br label %57, !dbg !2965

; <label>:46:                                     ; preds = %30
  %47 = fcmp oeq double %34, 0.000000e+00, !dbg !2966
  br i1 %47, label %62, label %48, !dbg !2968

; <label>:48:                                     ; preds = %46
  %49 = fdiv double %32, %34, !dbg !2969
  %50 = tail call double @floor(double %49) #5, !dbg !2969
  %51 = fmul double %34, %50, !dbg !2969
  %52 = fsub double %32, %51, !dbg !2969
  br label %57, !dbg !2970

; <label>:53:                                     ; preds = %30
  %54 = tail call double @pow(double %32, double %34) #5, !dbg !2971
  br label %57, !dbg !2972

; <label>:55:                                     ; preds = %30
  %56 = fsub double -0.000000e+00, %32, !dbg !2973
  br label %57, !dbg !2974

; <label>:57:                                     ; preds = %55, %53, %48, %44, %40, %38, %36
  %58 = phi double [ %56, %55 ], [ %54, %53 ], [ %52, %48 ], [ %45, %44 ], [ %41, %40 ], [ %39, %38 ], [ %37, %36 ], !dbg !2975
  %59 = fcmp ord double %58, 0.000000e+00, !dbg !2976
  br i1 %59, label %60, label %63, !dbg !2978

; <label>:60:                                     ; preds = %30, %57
  %61 = phi double [ %58, %57 ], [ 0.000000e+00, %30 ]
  store double %61, double* %31, align 8, !dbg !2979, !tbaa !909
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2951
  br label %160, !dbg !2980

; <label>:62:                                     ; preds = %42, %46
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2951
  br label %64, !dbg !2952

; <label>:63:                                     ; preds = %26, %13, %57, %12, %25
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2951
  switch i32 %1, label %64 [
    i32 20, label %66
    i32 18, label %66
  ], !dbg !2952

; <label>:64:                                     ; preds = %62, %63
  %65 = tail call i32 @luaK_exp2RK(%struct.FuncState* %0, %struct.expdesc* %3) #6, !dbg !2981
  br label %66, !dbg !2982

; <label>:66:                                     ; preds = %35, %63, %63, %64
  %67 = phi i32 [ %65, %64 ], [ 0, %63 ], [ 0, %63 ], [ 0, %35 ], !dbg !2982
  %68 = tail call i32 @luaK_exp2RK(%struct.FuncState* %0, %struct.expdesc* nonnull %2) #6, !dbg !2984
  %69 = icmp sgt i32 %68, %67, !dbg !2986
  br i1 %69, label %70, label %109, !dbg !2994

; <label>:70:                                     ; preds = %66
  %71 = load i32, i32* %5, align 8, !dbg !2996, !tbaa !1193
  %72 = icmp eq i32 %71, 12, !dbg !2997
  br i1 %72, label %73, label %89, !dbg !2998

; <label>:73:                                     ; preds = %70
  %74 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, !dbg !2999
  %75 = bitcast %union.anon.3* %74 to i32*, !dbg !3000
  %76 = load i32, i32* %75, align 8, !dbg !3000, !tbaa !909
  %77 = and i32 %76, 256, !dbg !3004
  %78 = icmp eq i32 %77, 0, !dbg !3004
  br i1 %78, label %79, label %88, !dbg !3005

; <label>:79:                                     ; preds = %73
  %80 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !3006
  %81 = load i8, i8* %80, align 2, !dbg !3006, !tbaa !537
  %82 = zext i8 %81 to i32, !dbg !3007
  %83 = icmp slt i32 %76, %82, !dbg !3008
  br i1 %83, label %88, label %84, !dbg !3009

; <label>:84:                                     ; preds = %79
  %85 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !3010
  %86 = load i32, i32* %85, align 4, !dbg !3011, !tbaa !1014
  %87 = add nsw i32 %86, -1, !dbg !3011
  store i32 %87, i32* %85, align 4, !dbg !3011, !tbaa !1014
  br label %88, !dbg !3012

; <label>:88:                                     ; preds = %84, %79, %73
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3013
  br label %89, !dbg !3014

; <label>:89:                                     ; preds = %70, %88
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3015
  %90 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0, !dbg !3019
  %91 = load i32, i32* %90, align 8, !dbg !3019, !tbaa !1193
  %92 = icmp eq i32 %91, 12, !dbg !3020
  br i1 %92, label %93, label %148, !dbg !3021

; <label>:93:                                     ; preds = %89
  %94 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1, !dbg !3022
  %95 = bitcast %union.anon.3* %94 to i32*, !dbg !3023
  %96 = load i32, i32* %95, align 8, !dbg !3023, !tbaa !909
  %97 = and i32 %96, 256, !dbg !3027
  %98 = icmp eq i32 %97, 0, !dbg !3027
  br i1 %98, label %99, label %108, !dbg !3028

; <label>:99:                                     ; preds = %93
  %100 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !3029
  %101 = load i8, i8* %100, align 2, !dbg !3029, !tbaa !537
  %102 = zext i8 %101 to i32, !dbg !3030
  %103 = icmp slt i32 %96, %102, !dbg !3031
  br i1 %103, label %108, label %104, !dbg !3032

; <label>:104:                                    ; preds = %99
  %105 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !3033
  %106 = load i32, i32* %105, align 4, !dbg !3034, !tbaa !1014
  %107 = add nsw i32 %106, -1, !dbg !3034
  store i32 %107, i32* %105, align 4, !dbg !3034, !tbaa !1014
  br label %108, !dbg !3035

; <label>:108:                                    ; preds = %104, %99, %93
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3036
  br label %148, !dbg !3037

; <label>:109:                                    ; preds = %66
  %110 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0, !dbg !3039
  %111 = load i32, i32* %110, align 8, !dbg !3039, !tbaa !1193
  %112 = icmp eq i32 %111, 12, !dbg !3040
  br i1 %112, label %113, label %129, !dbg !3041

; <label>:113:                                    ; preds = %109
  %114 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1, !dbg !3042
  %115 = bitcast %union.anon.3* %114 to i32*, !dbg !3043
  %116 = load i32, i32* %115, align 8, !dbg !3043, !tbaa !909
  %117 = and i32 %116, 256, !dbg !3047
  %118 = icmp eq i32 %117, 0, !dbg !3047
  br i1 %118, label %119, label %128, !dbg !3048

; <label>:119:                                    ; preds = %113
  %120 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !3049
  %121 = load i8, i8* %120, align 2, !dbg !3049, !tbaa !537
  %122 = zext i8 %121 to i32, !dbg !3050
  %123 = icmp slt i32 %116, %122, !dbg !3051
  br i1 %123, label %128, label %124, !dbg !3052

; <label>:124:                                    ; preds = %119
  %125 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !3053
  %126 = load i32, i32* %125, align 4, !dbg !3054, !tbaa !1014
  %127 = add nsw i32 %126, -1, !dbg !3054
  store i32 %127, i32* %125, align 4, !dbg !3054, !tbaa !1014
  br label %128, !dbg !3055

; <label>:128:                                    ; preds = %124, %119, %113
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3056
  br label %129, !dbg !3057

; <label>:129:                                    ; preds = %109, %128
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3058
  %130 = load i32, i32* %5, align 8, !dbg !3062, !tbaa !1193
  %131 = icmp eq i32 %130, 12, !dbg !3063
  br i1 %131, label %132, label %148, !dbg !3064

; <label>:132:                                    ; preds = %129
  %133 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, !dbg !3065
  %134 = bitcast %union.anon.3* %133 to i32*, !dbg !3066
  %135 = load i32, i32* %134, align 8, !dbg !3066, !tbaa !909
  %136 = and i32 %135, 256, !dbg !3070
  %137 = icmp eq i32 %136, 0, !dbg !3070
  br i1 %137, label %138, label %147, !dbg !3071

; <label>:138:                                    ; preds = %132
  %139 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !3072
  %140 = load i8, i8* %139, align 2, !dbg !3072, !tbaa !537
  %141 = zext i8 %140 to i32, !dbg !3073
  %142 = icmp slt i32 %135, %141, !dbg !3074
  br i1 %142, label %147, label %143, !dbg !3075

; <label>:143:                                    ; preds = %138
  %144 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !3076
  %145 = load i32, i32* %144, align 4, !dbg !3077, !tbaa !1014
  %146 = add nsw i32 %145, -1, !dbg !3077
  store i32 %146, i32* %144, align 4, !dbg !3077, !tbaa !1014
  br label %147, !dbg !3078

; <label>:147:                                    ; preds = %143, %138, %132
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3079
  br label %148, !dbg !3080

; <label>:148:                                    ; preds = %147, %129, %108, %89
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3081
  %149 = shl i32 %68, 23, !dbg !3088
  %150 = shl i32 %67, 14, !dbg !3088
  %151 = or i32 %150, %1, !dbg !3088
  %152 = or i32 %151, %149, !dbg !3088
  %153 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !3089
  %154 = load %struct.LexState*, %struct.LexState** %153, align 8, !dbg !3089, !tbaa !587
  %155 = getelementptr inbounds %struct.LexState, %struct.LexState* %154, i64 0, i32 2, !dbg !3090
  %156 = load i32, i32* %155, align 8, !dbg !3090, !tbaa !589
  %157 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %152, i32 %156) #5, !dbg !3091
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3092
  %158 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, !dbg !3093
  %159 = bitcast %union.anon.3* %158 to i32*, !dbg !3094
  store i32 %157, i32* %159, align 8, !dbg !3095, !tbaa !909
  store i32 11, i32* %5, align 8, !dbg !3096, !tbaa !1193
  br label %160

; <label>:160:                                    ; preds = %60, %148
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3097
  ret void, !dbg !3097
}

; Function Attrs: noredzone nounwind
define hidden void @luaK_infix(%struct.FuncState*, i32, %struct.expdesc* nocapture) local_unnamed_addr #0 !dbg !3098 {
  switch i32 %1, label %115 [
    i32 13, label %4
    i32 14, label %5
    i32 6, label %99
    i32 0, label %100
    i32 1, label %100
    i32 2, label %100
    i32 3, label %100
    i32 4, label %100
    i32 5, label %100
  ], !dbg !3109

; <label>:4:                                      ; preds = %3
  tail call void @luaK_goiftrue(%struct.FuncState* %0, %struct.expdesc* %2) #6, !dbg !3110
  br label %117, !dbg !3113

; <label>:5:                                      ; preds = %3
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %2) #5, !dbg !3123
  %6 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0, !dbg !3124
  %7 = load i32, i32* %6, align 8, !dbg !3124, !tbaa !1193
  switch i32 %7, label %12 [
    i32 1, label %54
    i32 3, label %54
    i32 10, label %8
  ], !dbg !3125

; <label>:8:                                      ; preds = %5
  %9 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, !dbg !3126
  %10 = bitcast %union.anon.3* %9 to i32*, !dbg !3129
  %11 = load i32, i32* %10, align 8, !dbg !3129, !tbaa !909
  br label %14, !dbg !3131

; <label>:12:                                     ; preds = %5
  %13 = tail call fastcc i32 @jumponcond(%struct.FuncState* %0, %struct.expdesc* nonnull %2, i32 1) #5, !dbg !3132
  br label %14, !dbg !3134

; <label>:14:                                     ; preds = %12, %8
  %15 = phi i32 [ %13, %12 ], [ %11, %8 ], !dbg !3135
  %16 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2, !dbg !3137
  %17 = icmp eq i32 %15, -1, !dbg !3142
  br i1 %17, label %54, label %18, !dbg !3143

; <label>:18:                                     ; preds = %14
  %19 = load i32, i32* %16, align 4, !dbg !3144, !tbaa !550
  %20 = icmp eq i32 %19, -1, !dbg !3145
  br i1 %20, label %26, label %21, !dbg !3146

; <label>:21:                                     ; preds = %18
  %22 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %23 = load %struct.Proto*, %struct.Proto** %22, align 8, !tbaa !542
  %24 = getelementptr inbounds %struct.Proto, %struct.Proto* %23, i64 0, i32 4
  %25 = load i32*, i32** %24, align 8, !tbaa !544
  br label %27, !dbg !3147

; <label>:26:                                     ; preds = %18
  store i32 %15, i32* %16, align 4, !dbg !3149, !tbaa !550
  br label %54, !dbg !3150

; <label>:27:                                     ; preds = %27, %21
  %28 = phi i32 [ %37, %27 ], [ %19, %21 ], !dbg !3151
  %29 = sext i32 %28 to i64, !dbg !3147
  %30 = getelementptr inbounds i32, i32* %25, i64 %29, !dbg !3147
  %31 = load i32, i32* %30, align 4, !dbg !3147, !tbaa !550
  %32 = lshr i32 %31, 14, !dbg !3147
  %33 = add nsw i32 %32, -131071, !dbg !3147
  %34 = icmp eq i32 %33, -1, !dbg !3156
  %35 = add nsw i32 %28, 1, !dbg !3157
  %36 = add nsw i32 %35, %33, !dbg !3158
  %37 = select i1 %34, i32 -1, i32 %36, !dbg !3159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3160
  %38 = icmp eq i32 %37, -1, !dbg !3162
  br i1 %38, label %39, label %27, !dbg !3163, !llvm.loop !677

; <label>:39:                                     ; preds = %27
  %40 = getelementptr inbounds i32, i32* %25, i64 %29, !dbg !3147
  %41 = xor i32 %28, -1, !dbg !3169
  %42 = add i32 %15, %41, !dbg !3169
  %43 = tail call i32 @abs(i32 %42) #5, !dbg !3171
  %44 = icmp sgt i32 %43, 131071, !dbg !3172
  br i1 %44, label %45, label %48, !dbg !3173

; <label>:45:                                     ; preds = %39
  %46 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !3174
  %47 = load %struct.LexState*, %struct.LexState** %46, align 8, !dbg !3174, !tbaa !587
  tail call void @luaX_syntaxerror(%struct.LexState* %47, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !3175
  br label %48, !dbg !3175

; <label>:48:                                     ; preds = %45, %39
  %49 = load i32, i32* %40, align 4, !dbg !3176, !tbaa !550
  %50 = and i32 %49, 16383, !dbg !3176
  %51 = shl i32 %42, 14, !dbg !3176
  %52 = add i32 %51, 2147467264, !dbg !3176
  %53 = or i32 %50, %52, !dbg !3176
  store i32 %53, i32* %40, align 4, !dbg !3176, !tbaa !550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3177
  br label %54

; <label>:54:                                     ; preds = %48, %26, %14, %5, %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3178
  %55 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3, !dbg !3179
  %56 = load i32, i32* %55, align 4, !dbg !3179, !tbaa !1494
  %57 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 6, !dbg !3185
  %58 = load i32, i32* %57, align 8, !dbg !3185, !tbaa !521
  %59 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 7, !dbg !3186
  store i32 %58, i32* %59, align 4, !dbg !3187, !tbaa !529
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3188
  %60 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 8, !dbg !3189
  %61 = icmp eq i32 %56, -1, !dbg !3194
  br i1 %61, label %98, label %62, !dbg !3195

; <label>:62:                                     ; preds = %54
  %63 = load i32, i32* %60, align 4, !dbg !3196, !tbaa !550
  %64 = icmp eq i32 %63, -1, !dbg !3197
  br i1 %64, label %70, label %65, !dbg !3198

; <label>:65:                                     ; preds = %62
  %66 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %67 = load %struct.Proto*, %struct.Proto** %66, align 8, !tbaa !542
  %68 = getelementptr inbounds %struct.Proto, %struct.Proto* %67, i64 0, i32 4
  %69 = load i32*, i32** %68, align 8, !tbaa !544
  br label %71, !dbg !3199

; <label>:70:                                     ; preds = %62
  store i32 %56, i32* %60, align 4, !dbg !3201, !tbaa !550
  br label %98, !dbg !3202

; <label>:71:                                     ; preds = %71, %65
  %72 = phi i32 [ %81, %71 ], [ %63, %65 ], !dbg !3203
  %73 = sext i32 %72 to i64, !dbg !3199
  %74 = getelementptr inbounds i32, i32* %69, i64 %73, !dbg !3199
  %75 = load i32, i32* %74, align 4, !dbg !3199, !tbaa !550
  %76 = lshr i32 %75, 14, !dbg !3199
  %77 = add nsw i32 %76, -131071, !dbg !3199
  %78 = icmp eq i32 %77, -1, !dbg !3208
  %79 = add nsw i32 %72, 1, !dbg !3209
  %80 = add nsw i32 %79, %77, !dbg !3210
  %81 = select i1 %78, i32 -1, i32 %80, !dbg !3211
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3212
  %82 = icmp eq i32 %81, -1, !dbg !3214
  br i1 %82, label %83, label %71, !dbg !3215, !llvm.loop !677

; <label>:83:                                     ; preds = %71
  %84 = getelementptr inbounds i32, i32* %69, i64 %73, !dbg !3199
  %85 = xor i32 %72, -1, !dbg !3221
  %86 = add i32 %56, %85, !dbg !3221
  %87 = tail call i32 @abs(i32 %86) #5, !dbg !3223
  %88 = icmp sgt i32 %87, 131071, !dbg !3224
  br i1 %88, label %89, label %92, !dbg !3225

; <label>:89:                                     ; preds = %83
  %90 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !3226
  %91 = load %struct.LexState*, %struct.LexState** %90, align 8, !dbg !3226, !tbaa !587
  tail call void @luaX_syntaxerror(%struct.LexState* %91, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !3227
  br label %92, !dbg !3227

; <label>:92:                                     ; preds = %89, %83
  %93 = load i32, i32* %84, align 4, !dbg !3228, !tbaa !550
  %94 = and i32 %93, 16383, !dbg !3228
  %95 = shl i32 %86, 14, !dbg !3228
  %96 = add i32 %95, 2147467264, !dbg !3228
  %97 = or i32 %94, %96, !dbg !3228
  store i32 %97, i32* %84, align 4, !dbg !3228, !tbaa !550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3229
  br label %98

; <label>:98:                                     ; preds = %54, %70, %92
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3230
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3231
  store i32 -1, i32* %55, align 4, !dbg !3232, !tbaa !1494
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3233
  br label %117, !dbg !3234

; <label>:99:                                     ; preds = %3
  tail call void @luaK_exp2nextreg(%struct.FuncState* %0, %struct.expdesc* %2) #6, !dbg !3235
  br label %117, !dbg !3237

; <label>:100:                                    ; preds = %3, %3, %3, %3, %3, %3
  %101 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0, !dbg !3242
  %102 = load i32, i32* %101, align 8, !dbg !3242, !tbaa !1193
  %103 = icmp eq i32 %102, 5, !dbg !3243
  br i1 %103, label %104, label %108, !dbg !3244

; <label>:104:                                    ; preds = %100
  %105 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2, !dbg !3245
  %106 = load i32, i32* %105, align 8, !dbg !3245, !tbaa !1493
  %107 = icmp eq i32 %106, -1, !dbg !3246
  br i1 %107, label %109, label %108, !dbg !3247

; <label>:108:                                    ; preds = %104, %100
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3248
  br label %113, !dbg !3249

; <label>:109:                                    ; preds = %104
  %110 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3, !dbg !3250
  %111 = load i32, i32* %110, align 4, !dbg !3250, !tbaa !1494
  %112 = icmp eq i32 %111, -1, !dbg !3251
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3248
  br i1 %112, label %117, label %113, !dbg !3249

; <label>:113:                                    ; preds = %109, %108
  %114 = tail call i32 @luaK_exp2RK(%struct.FuncState* %0, %struct.expdesc* nonnull %2) #6, !dbg !3252
  br label %117, !dbg !3252

; <label>:115:                                    ; preds = %3
  %116 = tail call i32 @luaK_exp2RK(%struct.FuncState* %0, %struct.expdesc* %2) #6, !dbg !3253
  br label %117, !dbg !3255

; <label>:117:                                    ; preds = %109, %113, %115, %99, %98, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3256
  ret void, !dbg !3256
}

; Function Attrs: noredzone nounwind
define hidden void @luaK_posfix(%struct.FuncState*, i32, %struct.expdesc*, %struct.expdesc*) local_unnamed_addr #0 !dbg !3257 {
  switch i32 %1, label %181 [
    i32 13, label %5
    i32 14, label %49
    i32 6, label %93
    i32 0, label %169
    i32 1, label %170
    i32 2, label %171
    i32 3, label %172
    i32 4, label %173
    i32 5, label %174
    i32 8, label %175
    i32 7, label %176
    i32 9, label %177
    i32 10, label %178
    i32 11, label %179
    i32 12, label %180
  ], !dbg !3269

; <label>:5:                                      ; preds = %4
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %3) #6, !dbg !3270
  %6 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 3, !dbg !3273
  %7 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3, !dbg !3274
  %8 = load i32, i32* %7, align 4, !dbg !3274, !tbaa !1494
  %9 = icmp eq i32 %8, -1, !dbg !3279
  br i1 %9, label %46, label %10, !dbg !3280

; <label>:10:                                     ; preds = %5
  %11 = load i32, i32* %6, align 4, !dbg !3281, !tbaa !550
  %12 = icmp eq i32 %11, -1, !dbg !3282
  br i1 %12, label %18, label %13, !dbg !3283

; <label>:13:                                     ; preds = %10
  %14 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %15 = load %struct.Proto*, %struct.Proto** %14, align 8, !tbaa !542
  %16 = getelementptr inbounds %struct.Proto, %struct.Proto* %15, i64 0, i32 4
  %17 = load i32*, i32** %16, align 8, !tbaa !544
  br label %19, !dbg !3284

; <label>:18:                                     ; preds = %10
  store i32 %8, i32* %6, align 4, !dbg !3286, !tbaa !550
  br label %46, !dbg !3287

; <label>:19:                                     ; preds = %19, %13
  %20 = phi i32 [ %29, %19 ], [ %11, %13 ], !dbg !3288
  %21 = sext i32 %20 to i64, !dbg !3284
  %22 = getelementptr inbounds i32, i32* %17, i64 %21, !dbg !3284
  %23 = load i32, i32* %22, align 4, !dbg !3284, !tbaa !550
  %24 = lshr i32 %23, 14, !dbg !3284
  %25 = add nsw i32 %24, -131071, !dbg !3284
  %26 = icmp eq i32 %25, -1, !dbg !3293
  %27 = add nsw i32 %20, 1, !dbg !3294
  %28 = add nsw i32 %27, %25, !dbg !3295
  %29 = select i1 %26, i32 -1, i32 %28, !dbg !3296
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3297
  %30 = icmp eq i32 %29, -1, !dbg !3299
  br i1 %30, label %31, label %19, !dbg !3300, !llvm.loop !677

; <label>:31:                                     ; preds = %19
  %32 = getelementptr inbounds i32, i32* %17, i64 %21, !dbg !3284
  %33 = xor i32 %20, -1, !dbg !3306
  %34 = add i32 %8, %33, !dbg !3306
  %35 = tail call i32 @abs(i32 %34) #5, !dbg !3308
  %36 = icmp sgt i32 %35, 131071, !dbg !3309
  br i1 %36, label %37, label %40, !dbg !3310

; <label>:37:                                     ; preds = %31
  %38 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !3311
  %39 = load %struct.LexState*, %struct.LexState** %38, align 8, !dbg !3311, !tbaa !587
  tail call void @luaX_syntaxerror(%struct.LexState* %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !3312
  br label %40, !dbg !3312

; <label>:40:                                     ; preds = %37, %31
  %41 = load i32, i32* %32, align 4, !dbg !3313, !tbaa !550
  %42 = and i32 %41, 16383, !dbg !3313
  %43 = shl i32 %34, 14, !dbg !3313
  %44 = add i32 %43, 2147467264, !dbg !3313
  %45 = or i32 %42, %44, !dbg !3313
  store i32 %45, i32* %32, align 4, !dbg !3313, !tbaa !550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3314
  br label %46

; <label>:46:                                     ; preds = %5, %18, %40
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3315
  %47 = bitcast %struct.expdesc* %2 to i8*, !dbg !3316
  %48 = bitcast %struct.expdesc* %3 to i8*, !dbg !3316
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %47, i8* align 8 %48, i64 24, i1 false), !dbg !3316, !tbaa.struct !3317
  br label %181, !dbg !3320

; <label>:49:                                     ; preds = %4
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %3) #6, !dbg !3321
  %50 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 2, !dbg !3323
  %51 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2, !dbg !3324
  %52 = load i32, i32* %51, align 8, !dbg !3324, !tbaa !1493
  %53 = icmp eq i32 %52, -1, !dbg !3329
  br i1 %53, label %90, label %54, !dbg !3330

; <label>:54:                                     ; preds = %49
  %55 = load i32, i32* %50, align 4, !dbg !3331, !tbaa !550
  %56 = icmp eq i32 %55, -1, !dbg !3332
  br i1 %56, label %62, label %57, !dbg !3333

; <label>:57:                                     ; preds = %54
  %58 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %59 = load %struct.Proto*, %struct.Proto** %58, align 8, !tbaa !542
  %60 = getelementptr inbounds %struct.Proto, %struct.Proto* %59, i64 0, i32 4
  %61 = load i32*, i32** %60, align 8, !tbaa !544
  br label %63, !dbg !3334

; <label>:62:                                     ; preds = %54
  store i32 %52, i32* %50, align 4, !dbg !3336, !tbaa !550
  br label %90, !dbg !3337

; <label>:63:                                     ; preds = %63, %57
  %64 = phi i32 [ %73, %63 ], [ %55, %57 ], !dbg !3338
  %65 = sext i32 %64 to i64, !dbg !3334
  %66 = getelementptr inbounds i32, i32* %61, i64 %65, !dbg !3334
  %67 = load i32, i32* %66, align 4, !dbg !3334, !tbaa !550
  %68 = lshr i32 %67, 14, !dbg !3334
  %69 = add nsw i32 %68, -131071, !dbg !3334
  %70 = icmp eq i32 %69, -1, !dbg !3343
  %71 = add nsw i32 %64, 1, !dbg !3344
  %72 = add nsw i32 %71, %69, !dbg !3345
  %73 = select i1 %70, i32 -1, i32 %72, !dbg !3346
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3347
  %74 = icmp eq i32 %73, -1, !dbg !3349
  br i1 %74, label %75, label %63, !dbg !3350, !llvm.loop !677

; <label>:75:                                     ; preds = %63
  %76 = getelementptr inbounds i32, i32* %61, i64 %65, !dbg !3334
  %77 = xor i32 %64, -1, !dbg !3356
  %78 = add i32 %52, %77, !dbg !3356
  %79 = tail call i32 @abs(i32 %78) #5, !dbg !3358
  %80 = icmp sgt i32 %79, 131071, !dbg !3359
  br i1 %80, label %81, label %84, !dbg !3360

; <label>:81:                                     ; preds = %75
  %82 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !3361
  %83 = load %struct.LexState*, %struct.LexState** %82, align 8, !dbg !3361, !tbaa !587
  tail call void @luaX_syntaxerror(%struct.LexState* %83, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !3362
  br label %84, !dbg !3362

; <label>:84:                                     ; preds = %81, %75
  %85 = load i32, i32* %76, align 4, !dbg !3363, !tbaa !550
  %86 = and i32 %85, 16383, !dbg !3363
  %87 = shl i32 %78, 14, !dbg !3363
  %88 = add i32 %87, 2147467264, !dbg !3363
  %89 = or i32 %86, %88, !dbg !3363
  store i32 %89, i32* %76, align 4, !dbg !3363, !tbaa !550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3364
  br label %90

; <label>:90:                                     ; preds = %49, %62, %84
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3365
  %91 = bitcast %struct.expdesc* %2 to i8*, !dbg !3366
  %92 = bitcast %struct.expdesc* %3 to i8*, !dbg !3366
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %91, i8* align 8 %92, i64 24, i1 false), !dbg !3366, !tbaa.struct !3317
  br label %181, !dbg !3367

; <label>:93:                                     ; preds = %4
  %94 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 2, !dbg !3372
  %95 = load i32, i32* %94, align 8, !dbg !3372, !tbaa !1493
  %96 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 3, !dbg !3372
  %97 = load i32, i32* %96, align 4, !dbg !3372, !tbaa !1494
  %98 = icmp eq i32 %95, %97, !dbg !3372
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* nonnull %3) #5, !dbg !3373
  %99 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0, !dbg !3373
  br i1 %98, label %118, label %100, !dbg !3374

; <label>:100:                                    ; preds = %93
  %101 = load i32, i32* %99, align 8, !dbg !3378, !tbaa !1193
  %102 = icmp eq i32 %101, 12, !dbg !3379
  br i1 %102, label %103, label %116, !dbg !3380

; <label>:103:                                    ; preds = %100
  %104 = load i32, i32* %94, align 8, !dbg !3381, !tbaa !1493
  %105 = load i32, i32* %96, align 4, !dbg !3381, !tbaa !1494
  %106 = icmp eq i32 %104, %105, !dbg !3381
  %107 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1, !dbg !3382
  %108 = bitcast %union.anon.3* %107 to i32*, !dbg !3382
  %109 = load i32, i32* %108, align 8, !dbg !3382, !tbaa !909
  br i1 %106, label %117, label %110, !dbg !3383

; <label>:110:                                    ; preds = %103
  %111 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !3384
  %112 = load i8, i8* %111, align 2, !dbg !3384, !tbaa !537
  %113 = zext i8 %112 to i32, !dbg !3385
  %114 = icmp slt i32 %109, %113, !dbg !3386
  br i1 %114, label %116, label %115, !dbg !3387

; <label>:115:                                    ; preds = %110
  tail call fastcc void @exp2reg(%struct.FuncState* nonnull %0, %struct.expdesc* nonnull %3, i32 %109) #5, !dbg !3388
  br label %117, !dbg !3389

; <label>:116:                                    ; preds = %110, %100
  tail call void @luaK_exp2nextreg(%struct.FuncState* %0, %struct.expdesc* nonnull %3) #5, !dbg !3390
  br label %117, !dbg !3391

; <label>:117:                                    ; preds = %116, %115, %103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3392
  br label %118, !dbg !3393

; <label>:118:                                    ; preds = %93, %117
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3394
  %119 = load i32, i32* %99, align 8, !dbg !3395, !tbaa !1193
  %120 = icmp eq i32 %119, 11, !dbg !3397
  br i1 %120, label %121, label %168, !dbg !3398

; <label>:121:                                    ; preds = %118
  %122 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0, !dbg !3399
  %123 = load %struct.Proto*, %struct.Proto** %122, align 8, !dbg !3399, !tbaa !542
  %124 = getelementptr inbounds %struct.Proto, %struct.Proto* %123, i64 0, i32 4, !dbg !3399
  %125 = load i32*, i32** %124, align 8, !dbg !3399, !tbaa !544
  %126 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1, !dbg !3399
  %127 = bitcast %union.anon.3* %126 to i32*, !dbg !3399
  %128 = load i32, i32* %127, align 8, !dbg !3399, !tbaa !909
  %129 = sext i32 %128 to i64, !dbg !3399
  %130 = getelementptr inbounds i32, i32* %125, i64 %129, !dbg !3399
  %131 = load i32, i32* %130, align 4, !dbg !3399, !tbaa !550
  %132 = and i32 %131, 63, !dbg !3399
  %133 = icmp eq i32 %132, 21, !dbg !3400
  br i1 %133, label %134, label %168, !dbg !3401

; <label>:134:                                    ; preds = %121
  %135 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0, !dbg !3406
  %136 = load i32, i32* %135, align 8, !dbg !3406, !tbaa !1193
  %137 = icmp eq i32 %136, 12, !dbg !3407
  %138 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, !dbg !3408
  %139 = bitcast %union.anon.3* %138 to i32*, !dbg !3408
  br i1 %137, label %140, label %160, !dbg !3409

; <label>:140:                                    ; preds = %134
  %141 = load i32, i32* %139, align 8, !dbg !3410, !tbaa !909
  %142 = and i32 %141, 256, !dbg !3414
  %143 = icmp eq i32 %142, 0, !dbg !3414
  br i1 %143, label %144, label %157, !dbg !3415

; <label>:144:                                    ; preds = %140
  %145 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !3416
  %146 = load i8, i8* %145, align 2, !dbg !3416, !tbaa !537
  %147 = zext i8 %146 to i32, !dbg !3417
  %148 = icmp slt i32 %141, %147, !dbg !3418
  br i1 %148, label %157, label %149, !dbg !3419

; <label>:149:                                    ; preds = %144
  %150 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !3420
  %151 = load i32, i32* %150, align 4, !dbg !3421, !tbaa !1014
  %152 = add nsw i32 %151, -1, !dbg !3421
  store i32 %152, i32* %150, align 4, !dbg !3421, !tbaa !1014
  %153 = load i32, i32* %127, align 8, !dbg !3422, !tbaa !909
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %125, i64 %154
  %156 = load i32, i32* %155, align 4, !dbg !3422, !tbaa !550
  br label %157, !dbg !3423

; <label>:157:                                    ; preds = %149, %144, %140
  %158 = phi i32* [ %155, %149 ], [ %130, %144 ], [ %130, %140 ]
  %159 = phi i32 [ %156, %149 ], [ %131, %144 ], [ %131, %140 ], !dbg !3422
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3424
  br label %160, !dbg !3425

; <label>:160:                                    ; preds = %134, %157
  %161 = phi i32* [ %158, %157 ], [ %130, %134 ], !dbg !3422
  %162 = phi i32 [ %159, %157 ], [ %131, %134 ], !dbg !3422
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3426
  %163 = and i32 %162, 8388607, !dbg !3422
  %164 = load i32, i32* %139, align 8, !dbg !3422, !tbaa !909
  %165 = shl i32 %164, 23, !dbg !3422
  %166 = or i32 %165, %163, !dbg !3422
  store i32 %166, i32* %161, align 4, !dbg !3422, !tbaa !550
  store i32 11, i32* %135, align 8, !dbg !3427, !tbaa !1193
  %167 = load i32, i32* %127, align 8, !dbg !3428, !tbaa !909
  store i32 %167, i32* %139, align 8, !dbg !3429, !tbaa !909
  br label %181, !dbg !3430

; <label>:168:                                    ; preds = %121, %118
  tail call void @luaK_exp2nextreg(%struct.FuncState* %0, %struct.expdesc* nonnull %3) #6, !dbg !3431
  tail call fastcc void @codearith(%struct.FuncState* %0, i32 21, %struct.expdesc* %2, %struct.expdesc* nonnull %3) #6, !dbg !3433
  br label %181

; <label>:169:                                    ; preds = %4
  tail call fastcc void @codearith(%struct.FuncState* %0, i32 12, %struct.expdesc* %2, %struct.expdesc* %3) #6, !dbg !3434
  br label %181, !dbg !3435

; <label>:170:                                    ; preds = %4
  tail call fastcc void @codearith(%struct.FuncState* %0, i32 13, %struct.expdesc* %2, %struct.expdesc* %3) #6, !dbg !3436
  br label %181, !dbg !3437

; <label>:171:                                    ; preds = %4
  tail call fastcc void @codearith(%struct.FuncState* %0, i32 14, %struct.expdesc* %2, %struct.expdesc* %3) #6, !dbg !3438
  br label %181, !dbg !3439

; <label>:172:                                    ; preds = %4
  tail call fastcc void @codearith(%struct.FuncState* %0, i32 15, %struct.expdesc* %2, %struct.expdesc* %3) #6, !dbg !3440
  br label %181, !dbg !3441

; <label>:173:                                    ; preds = %4
  tail call fastcc void @codearith(%struct.FuncState* %0, i32 16, %struct.expdesc* %2, %struct.expdesc* %3) #6, !dbg !3442
  br label %181, !dbg !3443

; <label>:174:                                    ; preds = %4
  tail call fastcc void @codearith(%struct.FuncState* %0, i32 17, %struct.expdesc* %2, %struct.expdesc* %3) #6, !dbg !3444
  br label %181, !dbg !3445

; <label>:175:                                    ; preds = %4
  tail call fastcc void @codecomp(%struct.FuncState* %0, i32 23, i32 1, %struct.expdesc* %2, %struct.expdesc* %3) #6, !dbg !3446
  br label %181, !dbg !3447

; <label>:176:                                    ; preds = %4
  tail call fastcc void @codecomp(%struct.FuncState* %0, i32 23, i32 0, %struct.expdesc* %2, %struct.expdesc* %3) #6, !dbg !3448
  br label %181, !dbg !3449

; <label>:177:                                    ; preds = %4
  tail call fastcc void @codecomp(%struct.FuncState* %0, i32 24, i32 1, %struct.expdesc* %2, %struct.expdesc* %3) #6, !dbg !3450
  br label %181, !dbg !3451

; <label>:178:                                    ; preds = %4
  tail call fastcc void @codecomp(%struct.FuncState* %0, i32 25, i32 1, %struct.expdesc* %2, %struct.expdesc* %3) #6, !dbg !3452
  br label %181, !dbg !3453

; <label>:179:                                    ; preds = %4
  tail call fastcc void @codecomp(%struct.FuncState* %0, i32 24, i32 0, %struct.expdesc* %2, %struct.expdesc* %3) #6, !dbg !3454
  br label %181, !dbg !3455

; <label>:180:                                    ; preds = %4
  tail call fastcc void @codecomp(%struct.FuncState* %0, i32 25, i32 0, %struct.expdesc* %2, %struct.expdesc* %3) #6, !dbg !3456
  br label %181, !dbg !3457

; <label>:181:                                    ; preds = %4, %160, %168, %180, %179, %178, %177, %176, %175, %174, %173, %172, %171, %170, %169, %90, %46
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3458
  ret void, !dbg !3458
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

; Function Attrs: noredzone nounwind
define internal fastcc void @codecomp(%struct.FuncState*, i32, i32, %struct.expdesc* nocapture, %struct.expdesc* nocapture) unnamed_addr #0 !dbg !3459 {
  %6 = tail call i32 @luaK_exp2RK(%struct.FuncState* %0, %struct.expdesc* %3) #6, !dbg !3478
  %7 = tail call i32 @luaK_exp2RK(%struct.FuncState* %0, %struct.expdesc* %4) #6, !dbg !3480
  %8 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 0, !dbg !3485
  %9 = load i32, i32* %8, align 8, !dbg !3485, !tbaa !1193
  %10 = icmp eq i32 %9, 12, !dbg !3486
  br i1 %10, label %11, label %27, !dbg !3487

; <label>:11:                                     ; preds = %5
  %12 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 1, !dbg !3488
  %13 = bitcast %union.anon.3* %12 to i32*, !dbg !3489
  %14 = load i32, i32* %13, align 8, !dbg !3489, !tbaa !909
  %15 = and i32 %14, 256, !dbg !3493
  %16 = icmp eq i32 %15, 0, !dbg !3493
  br i1 %16, label %17, label %26, !dbg !3494

; <label>:17:                                     ; preds = %11
  %18 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !3495
  %19 = load i8, i8* %18, align 2, !dbg !3495, !tbaa !537
  %20 = zext i8 %19 to i32, !dbg !3496
  %21 = icmp slt i32 %14, %20, !dbg !3497
  br i1 %21, label %26, label %22, !dbg !3498

; <label>:22:                                     ; preds = %17
  %23 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !3499
  %24 = load i32, i32* %23, align 4, !dbg !3500, !tbaa !1014
  %25 = add nsw i32 %24, -1, !dbg !3500
  store i32 %25, i32* %23, align 4, !dbg !3500, !tbaa !1014
  br label %26, !dbg !3501

; <label>:26:                                     ; preds = %22, %17, %11
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3502
  br label %27, !dbg !3503

; <label>:27:                                     ; preds = %5, %26
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3504
  %28 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0, !dbg !3508
  %29 = load i32, i32* %28, align 8, !dbg !3508, !tbaa !1193
  %30 = icmp eq i32 %29, 12, !dbg !3509
  %31 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1, !dbg !3510
  %32 = bitcast %union.anon.3* %31 to i32*, !dbg !3510
  br i1 %30, label %33, label %47, !dbg !3511

; <label>:33:                                     ; preds = %27
  %34 = load i32, i32* %32, align 8, !dbg !3512, !tbaa !909
  %35 = and i32 %34, 256, !dbg !3516
  %36 = icmp eq i32 %35, 0, !dbg !3516
  br i1 %36, label %37, label %46, !dbg !3517

; <label>:37:                                     ; preds = %33
  %38 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !3518
  %39 = load i8, i8* %38, align 2, !dbg !3518, !tbaa !537
  %40 = zext i8 %39 to i32, !dbg !3519
  %41 = icmp slt i32 %34, %40, !dbg !3520
  br i1 %41, label %46, label %42, !dbg !3521

; <label>:42:                                     ; preds = %37
  %43 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !3522
  %44 = load i32, i32* %43, align 4, !dbg !3523, !tbaa !1014
  %45 = add nsw i32 %44, -1, !dbg !3523
  store i32 %45, i32* %43, align 4, !dbg !3523, !tbaa !1014
  br label %46, !dbg !3524

; <label>:46:                                     ; preds = %42, %37, %33
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3525
  br label %47, !dbg !3526

; <label>:47:                                     ; preds = %27, %46
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3527
  %48 = icmp eq i32 %2, 0, !dbg !3528
  %49 = icmp ne i32 %1, 23, !dbg !3529
  %50 = and i1 %49, %48, !dbg !3530
  %51 = select i1 %50, i32 %7, i32 %6, !dbg !3530
  %52 = select i1 %50, i32 %6, i32 %7, !dbg !3530
  %53 = shl i32 %2, 6, !dbg !3541
  %54 = select i1 %50, i32 64, i32 %53, !dbg !3541
  %55 = or i32 %54, %1, !dbg !3541
  %56 = shl i32 %51, 23, !dbg !3541
  %57 = or i32 %55, %56, !dbg !3541
  %58 = shl i32 %52, 14, !dbg !3541
  %59 = or i32 %57, %58, !dbg !3541
  %60 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !3542
  %61 = load %struct.LexState*, %struct.LexState** %60, align 8, !dbg !3542, !tbaa !587
  %62 = getelementptr inbounds %struct.LexState, %struct.LexState* %61, i64 0, i32 2, !dbg !3543
  %63 = load i32, i32* %62, align 8, !dbg !3543, !tbaa !589
  %64 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %59, i32 %63) #5, !dbg !3544
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3545
  %65 = tail call i32 @luaK_jump(%struct.FuncState* %0) #5, !dbg !3546
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3547
  store i32 %65, i32* %32, align 8, !dbg !3548, !tbaa !909
  store i32 10, i32* %28, align 8, !dbg !3549, !tbaa !1193
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3550
  ret void, !dbg !3550
}

; Function Attrs: noredzone nounwind
define hidden void @luaK_fixline(%struct.FuncState* nocapture readonly, i32) local_unnamed_addr #0 !dbg !3551 {
  %3 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0, !dbg !3557
  %4 = load %struct.Proto*, %struct.Proto** %3, align 8, !dbg !3557, !tbaa !542
  %5 = getelementptr inbounds %struct.Proto, %struct.Proto* %4, i64 0, i32 6, !dbg !3558
  %6 = load i32*, i32** %5, align 8, !dbg !3558, !tbaa !3559
  %7 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 6, !dbg !3560
  %8 = load i32, i32* %7, align 8, !dbg !3560, !tbaa !521
  %9 = add nsw i32 %8, -1, !dbg !3561
  %10 = sext i32 %9 to i64, !dbg !3562
  %11 = getelementptr inbounds i32, i32* %6, i64 %10, !dbg !3562
  store i32 %1, i32* %11, align 4, !dbg !3563, !tbaa !550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3564
  ret void, !dbg !3564
}

; Function Attrs: noredzone nounwind
define internal fastcc i32 @luaK_code(%struct.FuncState* nocapture, i32, i32) unnamed_addr #0 !dbg !3565 {
  %4 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0, !dbg !3576
  %5 = load %struct.Proto*, %struct.Proto** %4, align 8, !dbg !3576, !tbaa !542
  %6 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 8, !dbg !3585
  %7 = load i32, i32* %6, align 8, !dbg !3585, !tbaa !614
  %8 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 6, !dbg !3586
  %9 = load i32, i32* %8, align 8, !dbg !3586, !tbaa !521
  %10 = icmp eq i32 %7, -1, !dbg !3593
  br i1 %10, label %73, label %11, !dbg !3594

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3
  br label %13, !dbg !3594

; <label>:13:                                     ; preds = %69, %11
  %14 = phi %struct.Proto* [ %5, %11 ], [ %70, %69 ], !dbg !3595
  %15 = phi i32 [ %7, %11 ], [ %26, %69 ]
  %16 = getelementptr inbounds %struct.Proto, %struct.Proto* %14, i64 0, i32 4, !dbg !3595
  %17 = load i32*, i32** %16, align 8, !dbg !3595, !tbaa !544
  %18 = sext i32 %15 to i64, !dbg !3595
  %19 = getelementptr inbounds i32, i32* %17, i64 %18, !dbg !3595
  %20 = load i32, i32* %19, align 4, !dbg !3595, !tbaa !550
  %21 = lshr i32 %20, 14, !dbg !3595
  %22 = add nsw i32 %21, -131071, !dbg !3595
  %23 = icmp eq i32 %22, -1, !dbg !3600
  %24 = add nsw i32 %15, 1, !dbg !3601
  %25 = add nsw i32 %24, %22, !dbg !3602
  %26 = select i1 %23, i32 -1, i32 %25, !dbg !3603
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3604
  %27 = icmp sgt i32 %15, 0, !dbg !3614
  br i1 %27, label %28, label %36, !dbg !3615

; <label>:28:                                     ; preds = %13
  %29 = getelementptr inbounds i32, i32* %19, i64 -1, !dbg !3616
  %30 = load i32, i32* %29, align 4, !dbg !3616, !tbaa !550
  %31 = and i32 %30, 63, !dbg !3616
  %32 = zext i32 %31 to i64, !dbg !3616
  %33 = getelementptr inbounds [38 x i8], [38 x i8]* @luaP_opmodes, i64 0, i64 %32, !dbg !3616
  %34 = load i8, i8* %33, align 1, !dbg !3616, !tbaa !909
  %35 = icmp slt i8 %34, 0, !dbg !3616
  br i1 %35, label %37, label %36, !dbg !3617

; <label>:36:                                     ; preds = %28, %13
  br label %37, !dbg !3618

; <label>:37:                                     ; preds = %36, %28
  %38 = phi i32 [ %20, %36 ], [ %30, %28 ], !dbg !3619
  %39 = phi i32* [ %19, %36 ], [ %29, %28 ], !dbg !3620
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3621
  %40 = and i32 %38, 63, !dbg !3619
  %41 = icmp eq i32 %40, 27, !dbg !3623
  br i1 %41, label %42, label %54, !dbg !3624

; <label>:42:                                     ; preds = %37
  %43 = lshr i32 %38, 23, !dbg !3625
  %44 = shl nuw nsw i32 %43, 6, !dbg !3626
  %45 = and i32 %38, 8372224, !dbg !3626
  %46 = or i32 %45, %44, !dbg !3626
  %47 = or i32 %46, 26, !dbg !3626
  store i32 %47, i32* %39, align 4, !dbg !3627, !tbaa !550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3628
  %48 = xor i32 %15, -1, !dbg !3634
  %49 = add i32 %9, %48, !dbg !3634
  %50 = tail call i32 @abs(i32 %49) #5, !dbg !3636
  %51 = icmp sgt i32 %50, 131071, !dbg !3637
  br i1 %51, label %52, label %61, !dbg !3638

; <label>:52:                                     ; preds = %42
  %53 = load %struct.LexState*, %struct.LexState** %12, align 8, !dbg !3639, !tbaa !587
  tail call void @luaX_syntaxerror(%struct.LexState* %53, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !3640
  br label %61, !dbg !3640

; <label>:54:                                     ; preds = %37
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3628
  %55 = xor i32 %15, -1, !dbg !3646
  %56 = add i32 %9, %55, !dbg !3646
  %57 = tail call i32 @abs(i32 %56) #5, !dbg !3648
  %58 = icmp sgt i32 %57, 131071, !dbg !3649
  br i1 %58, label %59, label %61, !dbg !3650

; <label>:59:                                     ; preds = %54
  %60 = load %struct.LexState*, %struct.LexState** %12, align 8, !dbg !3651, !tbaa !587
  tail call void @luaX_syntaxerror(%struct.LexState* %60, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !3652
  br label %61, !dbg !3652

; <label>:61:                                     ; preds = %54, %59, %42, %52
  %62 = phi i32 [ %49, %52 ], [ %49, %42 ], [ %56, %59 ], [ %56, %54 ]
  %63 = load i32, i32* %19, align 4, !dbg !3653, !tbaa !550
  %64 = and i32 %63, 16383, !dbg !3653
  %65 = shl i32 %62, 14, !dbg !3653
  %66 = add i32 %65, 2147467264, !dbg !3653
  %67 = or i32 %64, %66, !dbg !3653
  store i32 %67, i32* %19, align 4, !dbg !3653, !tbaa !550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3654
  %68 = icmp eq i32 %26, -1, !dbg !3593
  br i1 %68, label %71, label %69, !dbg !3594, !llvm.loop !950

; <label>:69:                                     ; preds = %61
  %70 = load %struct.Proto*, %struct.Proto** %4, align 8, !dbg !3595, !tbaa !542
  br label %13, !dbg !3594

; <label>:71:                                     ; preds = %61
  %72 = load i32, i32* %8, align 8, !dbg !3655, !tbaa !521
  br label %73, !dbg !3657

; <label>:73:                                     ; preds = %71, %3
  %74 = phi i32 [ %72, %71 ], [ %9, %3 ], !dbg !3655
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3657
  store i32 -1, i32* %6, align 8, !dbg !3658, !tbaa !614
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3659
  %75 = getelementptr inbounds %struct.Proto, %struct.Proto* %5, i64 0, i32 12, !dbg !3655
  %76 = load i32, i32* %75, align 8, !dbg !3655, !tbaa !3660
  %77 = icmp slt i32 %74, %76, !dbg !3655
  br i1 %77, label %78, label %81, !dbg !3661

; <label>:78:                                     ; preds = %73
  %79 = getelementptr inbounds %struct.Proto, %struct.Proto* %5, i64 0, i32 4
  %80 = load i32*, i32** %79, align 8, !dbg !3662, !tbaa !544
  br label %90, !dbg !3661

; <label>:81:                                     ; preds = %73
  %82 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4, !dbg !3655
  %83 = load %struct.lua_State*, %struct.lua_State** %82, align 8, !dbg !3655, !tbaa !1108
  %84 = getelementptr inbounds %struct.Proto, %struct.Proto* %5, i64 0, i32 4, !dbg !3655
  %85 = bitcast i32** %84 to i8**, !dbg !3655
  %86 = load i8*, i8** %85, align 8, !dbg !3655, !tbaa !544
  %87 = tail call i8* @luaM_growaux_(%struct.lua_State* %83, i8* %86, i32* nonnull %75, i64 4, i32 2147483645, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0)) #5, !dbg !3655
  store i8* %87, i8** %85, align 8, !dbg !3655, !tbaa !544
  %88 = bitcast i8* %87 to i32*, !dbg !3655
  %89 = load i32, i32* %8, align 8, !dbg !3663, !tbaa !521
  br label %90, !dbg !3655

; <label>:90:                                     ; preds = %78, %81
  %91 = phi i32 [ %74, %78 ], [ %89, %81 ], !dbg !3663
  %92 = phi i32* [ %80, %78 ], [ %88, %81 ], !dbg !3662
  %93 = sext i32 %91 to i64, !dbg !3664
  %94 = getelementptr inbounds i32, i32* %92, i64 %93, !dbg !3664
  store i32 %1, i32* %94, align 4, !dbg !3665, !tbaa !550
  %95 = load i32, i32* %8, align 8, !dbg !3666, !tbaa !521
  %96 = getelementptr inbounds %struct.Proto, %struct.Proto* %5, i64 0, i32 13, !dbg !3666
  %97 = load i32, i32* %96, align 4, !dbg !3666, !tbaa !3668
  %98 = icmp slt i32 %95, %97, !dbg !3666
  br i1 %98, label %99, label %102, !dbg !3669

; <label>:99:                                     ; preds = %90
  %100 = getelementptr inbounds %struct.Proto, %struct.Proto* %5, i64 0, i32 6
  %101 = load i32*, i32** %100, align 8, !dbg !3670, !tbaa !3559
  br label %111, !dbg !3669

; <label>:102:                                    ; preds = %90
  %103 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4, !dbg !3666
  %104 = load %struct.lua_State*, %struct.lua_State** %103, align 8, !dbg !3666, !tbaa !1108
  %105 = getelementptr inbounds %struct.Proto, %struct.Proto* %5, i64 0, i32 6, !dbg !3666
  %106 = bitcast i32** %105 to i8**, !dbg !3666
  %107 = load i8*, i8** %106, align 8, !dbg !3666, !tbaa !3559
  %108 = tail call i8* @luaM_growaux_(%struct.lua_State* %104, i8* %107, i32* nonnull %96, i64 4, i32 2147483645, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0)) #5, !dbg !3666
  store i8* %108, i8** %106, align 8, !dbg !3666, !tbaa !3559
  %109 = bitcast i8* %108 to i32*, !dbg !3666
  %110 = load i32, i32* %8, align 8, !dbg !3671, !tbaa !521
  br label %111, !dbg !3666

; <label>:111:                                    ; preds = %99, %102
  %112 = phi i32 [ %95, %99 ], [ %110, %102 ], !dbg !3671
  %113 = phi i32* [ %101, %99 ], [ %109, %102 ], !dbg !3670
  %114 = sext i32 %112 to i64, !dbg !3672
  %115 = getelementptr inbounds i32, i32* %113, i64 %114, !dbg !3672
  store i32 %2, i32* %115, align 4, !dbg !3673, !tbaa !550
  %116 = load i32, i32* %8, align 8, !dbg !3674, !tbaa !521
  %117 = add nsw i32 %116, 1, !dbg !3674
  store i32 %117, i32* %8, align 8, !dbg !3674, !tbaa !521
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3675
  ret i32 %116, !dbg !3675
}

; Function Attrs: noredzone nounwind
define hidden void @luaK_setlist(%struct.FuncState* nocapture, i32, i32, i32) local_unnamed_addr #0 !dbg !3676 {
  %5 = add nsw i32 %2, -1, !dbg !3690
  %6 = sdiv i32 %5, 50, !dbg !3691
  %7 = add nsw i32 %6, 1, !dbg !3692
  %8 = icmp eq i32 %3, -1, !dbg !3694
  %9 = icmp slt i32 %2, 25551, !dbg !3695
  %10 = shl i32 %1, 6, !dbg !3706
  %11 = shl i32 %3, 23, !dbg !3706
  %12 = select i1 %8, i32 0, i32 %11, !dbg !3706
  %13 = or i32 %10, %12, !dbg !3706
  %14 = or i32 %13, 34, !dbg !3706
  br i1 %9, label %15, label %23, !dbg !3707

; <label>:15:                                     ; preds = %4
  %16 = shl i32 %7, 14, !dbg !3706
  %17 = or i32 %14, %16, !dbg !3706
  %18 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !3709
  %19 = load %struct.LexState*, %struct.LexState** %18, align 8, !dbg !3709, !tbaa !587
  %20 = getelementptr inbounds %struct.LexState, %struct.LexState* %19, i64 0, i32 2, !dbg !3710
  %21 = load i32, i32* %20, align 8, !dbg !3710, !tbaa !589
  %22 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %17, i32 %21) #5, !dbg !3711
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3712
  br label %33, !dbg !3713

; <label>:23:                                     ; preds = %4
  %24 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !3715
  %25 = load %struct.LexState*, %struct.LexState** %24, align 8, !dbg !3715, !tbaa !587
  %26 = getelementptr inbounds %struct.LexState, %struct.LexState* %25, i64 0, i32 2, !dbg !3716
  %27 = load i32, i32* %26, align 8, !dbg !3716, !tbaa !589
  %28 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %14, i32 %27) #5, !dbg !3717
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3718
  %29 = load %struct.LexState*, %struct.LexState** %24, align 8, !dbg !3719, !tbaa !587
  %30 = getelementptr inbounds %struct.LexState, %struct.LexState* %29, i64 0, i32 2, !dbg !3720
  %31 = load i32, i32* %30, align 8, !dbg !3720, !tbaa !589
  %32 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %7, i32 %31) #6, !dbg !3721
  br label %33

; <label>:33:                                     ; preds = %23, %15
  %34 = add nsw i32 %1, 1, !dbg !3722
  %35 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !3723
  store i32 %34, i32* %35, align 4, !dbg !3724, !tbaa !1014
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3725
  ret void, !dbg !3725
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
define internal fastcc void @discharge2reg(%struct.FuncState* nocapture, %struct.expdesc* nocapture, i32) unnamed_addr #0 !dbg !3726 {
  %4 = alloca %struct.lua_TValue, align 8
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %1) #6, !dbg !3737
  %5 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0, !dbg !3738
  %6 = load i32, i32* %5, align 8, !dbg !3738, !tbaa !1193
  switch i32 %6, label %130 [
    i32 1, label %7
    i32 3, label %56
    i32 2, label %56
    i32 4, label %68
    i32 5, label %81
    i32 11, label %98
    i32 12, label %113
  ], !dbg !3739

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 6, !dbg !3745
  %9 = load i32, i32* %8, align 8, !dbg !3745, !tbaa !521
  %10 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 7, !dbg !3746
  %11 = load i32, i32* %10, align 4, !dbg !3746, !tbaa !529
  %12 = icmp sgt i32 %9, %11, !dbg !3747
  br i1 %12, label %13, label %45, !dbg !3748

; <label>:13:                                     ; preds = %7
  %14 = icmp eq i32 %9, 0, !dbg !3749
  br i1 %14, label %15, label %20, !dbg !3750

; <label>:15:                                     ; preds = %13
  %16 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !3751
  %17 = load i8, i8* %16, align 2, !dbg !3751, !tbaa !537
  %18 = zext i8 %17 to i32, !dbg !3752
  %19 = icmp sgt i32 %18, %2, !dbg !3753
  br i1 %19, label %45, label %55, !dbg !3754

; <label>:20:                                     ; preds = %13
  %21 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0, !dbg !3755
  %22 = load %struct.Proto*, %struct.Proto** %21, align 8, !dbg !3755, !tbaa !542
  %23 = getelementptr inbounds %struct.Proto, %struct.Proto* %22, i64 0, i32 4, !dbg !3756
  %24 = load i32*, i32** %23, align 8, !dbg !3756, !tbaa !544
  %25 = add nsw i32 %9, -1, !dbg !3757
  %26 = sext i32 %25 to i64, !dbg !3758
  %27 = getelementptr inbounds i32, i32* %24, i64 %26, !dbg !3758
  %28 = load i32, i32* %27, align 4, !dbg !3760, !tbaa !550
  %29 = and i32 %28, 63, !dbg !3760
  %30 = icmp eq i32 %29, 3, !dbg !3761
  br i1 %30, label %31, label %45, !dbg !3762

; <label>:31:                                     ; preds = %20
  %32 = lshr i32 %28, 6, !dbg !3763
  %33 = and i32 %32, 255, !dbg !3763
  %34 = lshr i32 %28, 23, !dbg !3765
  %35 = icmp sgt i32 %33, %2, !dbg !3767
  %36 = add nuw nsw i32 %34, 1, !dbg !3768
  %37 = icmp slt i32 %36, %2, !dbg !3769
  %38 = or i1 %35, %37, !dbg !3770
  br i1 %38, label %45, label %39, !dbg !3770

; <label>:39:                                     ; preds = %31
  %40 = icmp slt i32 %34, %2, !dbg !3771
  br i1 %40, label %41, label %55, !dbg !3772

; <label>:41:                                     ; preds = %39
  %42 = and i32 %28, 8388607, !dbg !3773
  %43 = shl i32 %2, 23, !dbg !3773
  %44 = or i32 %42, %43, !dbg !3773
  store i32 %44, i32* %27, align 4, !dbg !3773, !tbaa !550
  br label %55

; <label>:45:                                     ; preds = %31, %20, %15, %7
  %46 = shl i32 %2, 6, !dbg !3780
  %47 = shl i32 %2, 23, !dbg !3780
  %48 = or i32 %47, %46, !dbg !3780
  %49 = or i32 %48, 3, !dbg !3780
  %50 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !3781
  %51 = load %struct.LexState*, %struct.LexState** %50, align 8, !dbg !3781, !tbaa !587
  %52 = getelementptr inbounds %struct.LexState, %struct.LexState* %51, i64 0, i32 2, !dbg !3782
  %53 = load i32, i32* %52, align 8, !dbg !3782, !tbaa !589
  %54 = tail call fastcc i32 @luaK_code(%struct.FuncState* nonnull %0, i32 %49, i32 %53) #5, !dbg !3783
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3784
  br label %55, !dbg !3785

; <label>:55:                                     ; preds = %15, %39, %41, %45
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3785
  br label %127, !dbg !3786

; <label>:56:                                     ; preds = %3, %3
  %57 = icmp eq i32 %6, 2, !dbg !3787
  %58 = zext i1 %57 to i32, !dbg !3787
  %59 = shl i32 %2, 6, !dbg !3795
  %60 = shl nuw nsw i32 %58, 23, !dbg !3795
  %61 = or i32 %59, %60, !dbg !3795
  %62 = or i32 %61, 2, !dbg !3795
  %63 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !3796
  %64 = load %struct.LexState*, %struct.LexState** %63, align 8, !dbg !3796, !tbaa !587
  %65 = getelementptr inbounds %struct.LexState, %struct.LexState* %64, i64 0, i32 2, !dbg !3797
  %66 = load i32, i32* %65, align 8, !dbg !3797, !tbaa !589
  %67 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %62, i32 %66) #5, !dbg !3798
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3799
  br label %127, !dbg !3800

; <label>:68:                                     ; preds = %3
  %69 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !3801
  %70 = bitcast %union.anon.3* %69 to i32*, !dbg !3803
  %71 = load i32, i32* %70, align 8, !dbg !3803, !tbaa !909
  %72 = shl i32 %2, 6, !dbg !3809
  %73 = shl i32 %71, 14, !dbg !3809
  %74 = or i32 %72, %73, !dbg !3809
  %75 = or i32 %74, 1, !dbg !3809
  %76 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !3810
  %77 = load %struct.LexState*, %struct.LexState** %76, align 8, !dbg !3810, !tbaa !587
  %78 = getelementptr inbounds %struct.LexState, %struct.LexState* %77, i64 0, i32 2, !dbg !3811
  %79 = load i32, i32* %78, align 8, !dbg !3811, !tbaa !589
  %80 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %75, i32 %79) #5, !dbg !3812
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3813
  br label %127, !dbg !3814

; <label>:81:                                     ; preds = %3
  %82 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, i32 0, !dbg !3815
  %83 = bitcast double* %82 to i64*, !dbg !3815
  %84 = load i64, i64* %83, align 8, !dbg !3815, !tbaa !909
  %85 = bitcast %struct.lua_TValue* %4 to i8*, !dbg !3820
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %85) #4, !dbg !3820
  %86 = bitcast %struct.lua_TValue* %4 to i64*, !dbg !3821
  store i64 %84, i64* %86, align 8, !dbg !3821, !tbaa !909
  %87 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %4, i64 0, i32 1, !dbg !3821
  store i32 3, i32* %87, align 8, !dbg !3821, !tbaa !1078
  %88 = call fastcc i32 @addk(%struct.FuncState* %0, %struct.lua_TValue* nonnull %4, %struct.lua_TValue* nonnull %4) #5, !dbg !3823
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %85) #4, !dbg !3824
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3825
  %89 = shl i32 %2, 6, !dbg !3831
  %90 = shl i32 %88, 14, !dbg !3831
  %91 = or i32 %89, %90, !dbg !3831
  %92 = or i32 %91, 1, !dbg !3831
  %93 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !3832
  %94 = load %struct.LexState*, %struct.LexState** %93, align 8, !dbg !3832, !tbaa !587
  %95 = getelementptr inbounds %struct.LexState, %struct.LexState* %94, i64 0, i32 2, !dbg !3833
  %96 = load i32, i32* %95, align 8, !dbg !3833, !tbaa !589
  %97 = call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %92, i32 %96) #5, !dbg !3834
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3835
  br label %127, !dbg !3836

; <label>:98:                                     ; preds = %3
  %99 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0, !dbg !3837
  %100 = load %struct.Proto*, %struct.Proto** %99, align 8, !dbg !3837, !tbaa !542
  %101 = getelementptr inbounds %struct.Proto, %struct.Proto* %100, i64 0, i32 4, !dbg !3837
  %102 = load i32*, i32** %101, align 8, !dbg !3837, !tbaa !544
  %103 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !3837
  %104 = bitcast %union.anon.3* %103 to i32*, !dbg !3837
  %105 = load i32, i32* %104, align 8, !dbg !3837, !tbaa !909
  %106 = sext i32 %105 to i64, !dbg !3837
  %107 = getelementptr inbounds i32, i32* %102, i64 %106, !dbg !3837
  %108 = load i32, i32* %107, align 4, !dbg !3839, !tbaa !550
  %109 = and i32 %108, -16321, !dbg !3839
  %110 = shl i32 %2, 6, !dbg !3839
  %111 = and i32 %110, 16320, !dbg !3839
  %112 = or i32 %109, %111, !dbg !3839
  store i32 %112, i32* %107, align 4, !dbg !3839, !tbaa !550
  br label %127

; <label>:113:                                    ; preds = %3
  %114 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !3840
  %115 = bitcast %union.anon.3* %114 to i32*, !dbg !3843
  %116 = load i32, i32* %115, align 8, !dbg !3843, !tbaa !909
  %117 = icmp eq i32 %116, %2, !dbg !3844
  br i1 %117, label %127, label %118, !dbg !3845

; <label>:118:                                    ; preds = %113
  %119 = shl i32 %2, 6, !dbg !3852
  %120 = shl i32 %116, 23, !dbg !3852
  %121 = or i32 %120, %119, !dbg !3852
  %122 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !3853
  %123 = load %struct.LexState*, %struct.LexState** %122, align 8, !dbg !3853, !tbaa !587
  %124 = getelementptr inbounds %struct.LexState, %struct.LexState* %123, i64 0, i32 2, !dbg !3854
  %125 = load i32, i32* %124, align 8, !dbg !3854, !tbaa !589
  %126 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %121, i32 %125) #5, !dbg !3855
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3856
  br label %127, !dbg !3857

; <label>:127:                                    ; preds = %113, %118, %98, %81, %68, %56, %55
  %128 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !3858
  %129 = bitcast %union.anon.3* %128 to i32*, !dbg !3859
  store i32 %2, i32* %129, align 8, !dbg !3860, !tbaa !909
  store i32 12, i32* %5, align 8, !dbg !3861, !tbaa !1193
  br label %130, !dbg !3862

; <label>:130:                                    ; preds = %3, %127
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3862
  ret void, !dbg !3862
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
!593 = !DILocation(line: 808, column: 3, scope: !571, inlinedAt: !580)
!594 = !DILocation(line: 56, column: 1, scope: !424)
!595 = !DILocation(line: 804, column: 30, scope: !571)
!596 = !DILocation(line: 804, column: 41, scope: !571)
!597 = !DILocation(line: 804, column: 48, scope: !571)
!598 = !DILocation(line: 804, column: 55, scope: !571)
!599 = !DILocation(line: 804, column: 62, scope: !571)
!600 = !DILocation(line: 808, column: 24, scope: !571)
!601 = !DILocation(line: 808, column: 52, scope: !571)
!602 = !DILocation(line: 808, column: 56, scope: !571)
!603 = !DILocation(line: 808, column: 10, scope: !571)
!604 = !DILocation(line: 808, column: 3, scope: !571)
!605 = distinct !DISubprogram(name: "luaK_jump", scope: !1, file: !1, line: 59, type: !606, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !608)
!606 = !DISubroutineType(types: !607)
!607 = !{!93, !427}
!608 = !{!609, !610, !611}
!609 = !DILocalVariable(name: "fs", arg: 1, scope: !605, file: !1, line: 59, type: !427)
!610 = !DILocalVariable(name: "jpc", scope: !605, file: !1, line: 60, type: !93)
!611 = !DILocalVariable(name: "j", scope: !605, file: !1, line: 61, type: !93)
!612 = !DILocation(line: 59, column: 27, scope: !605)
!613 = !DILocation(line: 60, column: 17, scope: !605)
!614 = !{!522, !526, i64 56}
!615 = !DILocation(line: 60, column: 7, scope: !605)
!616 = !DILocation(line: 62, column: 11, scope: !605)
!617 = !DILocalVariable(name: "fs", arg: 1, scope: !618, file: !1, line: 812, type: !427)
!618 = distinct !DISubprogram(name: "luaK_codeABx", scope: !1, file: !1, line: 812, type: !619, isLocal: false, isDefinition: true, scopeLine: 812, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !621)
!619 = !DISubroutineType(types: !620)
!620 = !{!93, !427, !89, !93, !5}
!621 = !{!617, !622, !623, !624}
!622 = !DILocalVariable(name: "o", arg: 2, scope: !618, file: !1, line: 812, type: !89)
!623 = !DILocalVariable(name: "a", arg: 3, scope: !618, file: !1, line: 812, type: !93)
!624 = !DILocalVariable(name: "bc", arg: 4, scope: !618, file: !1, line: 812, type: !5)
!625 = !DILocation(line: 812, column: 30, scope: !618, inlinedAt: !626)
!626 = distinct !DILocation(line: 63, column: 7, scope: !605)
!627 = !DILocation(line: 812, column: 41, scope: !618, inlinedAt: !626)
!628 = !DILocation(line: 812, column: 48, scope: !618, inlinedAt: !626)
!629 = !DILocation(line: 812, column: 64, scope: !618, inlinedAt: !626)
!630 = !DILocation(line: 815, column: 50, scope: !618, inlinedAt: !626)
!631 = !DILocation(line: 815, column: 54, scope: !618, inlinedAt: !626)
!632 = !DILocation(line: 815, column: 10, scope: !618, inlinedAt: !626)
!633 = !DILocation(line: 815, column: 3, scope: !618, inlinedAt: !626)
!634 = !DILocation(line: 61, column: 7, scope: !605)
!635 = !DILocalVariable(name: "fs", arg: 1, scope: !636, file: !1, line: 185, type: !427)
!636 = distinct !DISubprogram(name: "luaK_concat", scope: !1, file: !1, line: 185, type: !637, isLocal: false, isDefinition: true, scopeLine: 185, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !639)
!637 = !DISubroutineType(types: !638)
!638 = !{null, !427, !389, !93}
!639 = !{!635, !640, !641, !642, !646}
!640 = !DILocalVariable(name: "l1", arg: 2, scope: !636, file: !1, line: 185, type: !389)
!641 = !DILocalVariable(name: "l2", arg: 3, scope: !636, file: !1, line: 185, type: !93)
!642 = !DILocalVariable(name: "list", scope: !643, file: !1, line: 190, type: !93)
!643 = distinct !DILexicalBlock(scope: !644, file: !1, line: 189, column: 8)
!644 = distinct !DILexicalBlock(scope: !645, file: !1, line: 187, column: 12)
!645 = distinct !DILexicalBlock(scope: !636, file: !1, line: 186, column: 7)
!646 = !DILocalVariable(name: "next", scope: !643, file: !1, line: 191, type: !93)
!647 = !DILocation(line: 185, column: 30, scope: !636, inlinedAt: !648)
!648 = distinct !DILocation(line: 64, column: 3, scope: !605)
!649 = !DILocation(line: 185, column: 47, scope: !636, inlinedAt: !648)
!650 = !DILocation(line: 186, column: 10, scope: !645, inlinedAt: !648)
!651 = !DILocation(line: 186, column: 7, scope: !636, inlinedAt: !648)
!652 = !DILocation(line: 187, column: 16, scope: !644, inlinedAt: !648)
!653 = !DILocation(line: 187, column: 12, scope: !645, inlinedAt: !648)
!654 = !DILocation(line: 101, column: 16, scope: !655, inlinedAt: !662)
!655 = distinct !DISubprogram(name: "getjump", scope: !1, file: !1, line: 100, type: !656, isLocal: true, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !658)
!656 = !DISubroutineType(types: !657)
!657 = !{!93, !427, !93}
!658 = !{!659, !660, !661}
!659 = !DILocalVariable(name: "fs", arg: 1, scope: !655, file: !1, line: 100, type: !427)
!660 = !DILocalVariable(name: "pc", arg: 2, scope: !655, file: !1, line: 100, type: !93)
!661 = !DILocalVariable(name: "offset", scope: !655, file: !1, line: 101, type: !93)
!662 = distinct !DILocation(line: 192, column: 20, scope: !643, inlinedAt: !648)
!663 = !DILocation(line: 0, scope: !643, inlinedAt: !648)
!664 = !DILocation(line: 190, column: 9, scope: !643, inlinedAt: !648)
!665 = !DILocation(line: 100, column: 32, scope: !655, inlinedAt: !662)
!666 = !DILocation(line: 100, column: 40, scope: !655, inlinedAt: !662)
!667 = !DILocation(line: 101, column: 7, scope: !655, inlinedAt: !662)
!668 = !DILocation(line: 102, column: 14, scope: !669, inlinedAt: !662)
!669 = distinct !DILexicalBlock(scope: !655, file: !1, line: 102, column: 7)
!670 = !DILocation(line: 105, column: 15, scope: !669, inlinedAt: !662)
!671 = !DILocation(line: 105, column: 18, scope: !669, inlinedAt: !662)
!672 = !DILocation(line: 102, column: 7, scope: !655, inlinedAt: !662)
!673 = !DILocation(line: 106, column: 1, scope: !655, inlinedAt: !662)
!674 = !DILocation(line: 191, column: 9, scope: !643, inlinedAt: !648)
!675 = !DILocation(line: 192, column: 39, scope: !643, inlinedAt: !648)
!676 = !DILocation(line: 192, column: 5, scope: !643, inlinedAt: !648)
!677 = distinct !{!677, !678, !679}
!678 = !DILocation(line: 192, column: 5, scope: !643)
!679 = !DILocation(line: 193, column: 14, scope: !643)
!680 = !DILocalVariable(name: "fs", arg: 1, scope: !681, file: !1, line: 80, type: !427)
!681 = distinct !DISubprogram(name: "fixjump", scope: !1, file: !1, line: 80, type: !425, isLocal: true, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !682)
!682 = !{!680, !683, !684, !685, !686}
!683 = !DILocalVariable(name: "pc", arg: 2, scope: !681, file: !1, line: 80, type: !93)
!684 = !DILocalVariable(name: "dest", arg: 3, scope: !681, file: !1, line: 80, type: !93)
!685 = !DILocalVariable(name: "jmp", scope: !681, file: !1, line: 81, type: !385)
!686 = !DILocalVariable(name: "offset", scope: !681, file: !1, line: 82, type: !93)
!687 = !DILocation(line: 80, column: 33, scope: !681, inlinedAt: !688)
!688 = distinct !DILocation(line: 194, column: 5, scope: !643, inlinedAt: !648)
!689 = !DILocation(line: 80, column: 41, scope: !681, inlinedAt: !688)
!690 = !DILocation(line: 80, column: 49, scope: !681, inlinedAt: !688)
!691 = !DILocation(line: 81, column: 16, scope: !681, inlinedAt: !688)
!692 = !DILocation(line: 82, column: 20, scope: !681, inlinedAt: !688)
!693 = !DILocation(line: 82, column: 7, scope: !681, inlinedAt: !688)
!694 = !DILocation(line: 84, column: 7, scope: !695, inlinedAt: !688)
!695 = distinct !DILexicalBlock(scope: !681, file: !1, line: 84, column: 7)
!696 = !DILocation(line: 84, column: 19, scope: !695, inlinedAt: !688)
!697 = !DILocation(line: 84, column: 7, scope: !681, inlinedAt: !688)
!698 = !DILocation(line: 85, column: 26, scope: !695, inlinedAt: !688)
!699 = !DILocation(line: 85, column: 5, scope: !695, inlinedAt: !688)
!700 = !DILocation(line: 86, column: 3, scope: !681, inlinedAt: !688)
!701 = !DILocation(line: 87, column: 1, scope: !681, inlinedAt: !688)
!702 = !DILocation(line: 0, scope: !605)
!703 = !DILocation(line: 196, column: 1, scope: !636, inlinedAt: !648)
!704 = !DILocation(line: 65, column: 3, scope: !605)
!705 = !DILocation(line: 812, column: 30, scope: !618)
!706 = !DILocation(line: 812, column: 41, scope: !618)
!707 = !DILocation(line: 812, column: 48, scope: !618)
!708 = !DILocation(line: 812, column: 64, scope: !618)
!709 = !DILocation(line: 815, column: 24, scope: !618)
!710 = !DILocation(line: 815, column: 50, scope: !618)
!711 = !DILocation(line: 815, column: 54, scope: !618)
!712 = !DILocation(line: 815, column: 10, scope: !618)
!713 = !DILocation(line: 815, column: 3, scope: !618)
!714 = !DILocation(line: 185, column: 30, scope: !636)
!715 = !DILocation(line: 185, column: 39, scope: !636)
!716 = !DILocation(line: 185, column: 47, scope: !636)
!717 = !DILocation(line: 186, column: 10, scope: !645)
!718 = !DILocation(line: 186, column: 7, scope: !636)
!719 = !DILocation(line: 187, column: 12, scope: !644)
!720 = !DILocation(line: 187, column: 16, scope: !644)
!721 = !DILocation(line: 187, column: 12, scope: !645)
!722 = !DILocation(line: 101, column: 16, scope: !655, inlinedAt: !723)
!723 = distinct !DILocation(line: 192, column: 20, scope: !643)
!724 = !DILocation(line: 188, column: 9, scope: !644)
!725 = !DILocation(line: 188, column: 5, scope: !644)
!726 = !DILocation(line: 0, scope: !643)
!727 = !DILocation(line: 190, column: 9, scope: !643)
!728 = !DILocation(line: 100, column: 32, scope: !655, inlinedAt: !723)
!729 = !DILocation(line: 100, column: 40, scope: !655, inlinedAt: !723)
!730 = !DILocation(line: 101, column: 7, scope: !655, inlinedAt: !723)
!731 = !DILocation(line: 102, column: 14, scope: !669, inlinedAt: !723)
!732 = !DILocation(line: 105, column: 15, scope: !669, inlinedAt: !723)
!733 = !DILocation(line: 105, column: 18, scope: !669, inlinedAt: !723)
!734 = !DILocation(line: 102, column: 7, scope: !655, inlinedAt: !723)
!735 = !DILocation(line: 106, column: 1, scope: !655, inlinedAt: !723)
!736 = !DILocation(line: 191, column: 9, scope: !643)
!737 = !DILocation(line: 192, column: 39, scope: !643)
!738 = !DILocation(line: 80, column: 33, scope: !681, inlinedAt: !739)
!739 = distinct !DILocation(line: 194, column: 5, scope: !643)
!740 = !DILocation(line: 80, column: 41, scope: !681, inlinedAt: !739)
!741 = !DILocation(line: 80, column: 49, scope: !681, inlinedAt: !739)
!742 = !DILocation(line: 81, column: 16, scope: !681, inlinedAt: !739)
!743 = !DILocation(line: 82, column: 20, scope: !681, inlinedAt: !739)
!744 = !DILocation(line: 82, column: 7, scope: !681, inlinedAt: !739)
!745 = !DILocation(line: 84, column: 7, scope: !695, inlinedAt: !739)
!746 = !DILocation(line: 84, column: 19, scope: !695, inlinedAt: !739)
!747 = !DILocation(line: 84, column: 7, scope: !681, inlinedAt: !739)
!748 = !DILocation(line: 85, column: 26, scope: !695, inlinedAt: !739)
!749 = !DILocation(line: 85, column: 5, scope: !695, inlinedAt: !739)
!750 = !DILocation(line: 86, column: 3, scope: !681, inlinedAt: !739)
!751 = !DILocation(line: 87, column: 1, scope: !681, inlinedAt: !739)
!752 = !DILocation(line: 196, column: 1, scope: !636)
!753 = distinct !DISubprogram(name: "luaK_ret", scope: !1, file: !1, line: 69, type: !425, isLocal: false, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !754)
!754 = !{!755, !756, !757}
!755 = !DILocalVariable(name: "fs", arg: 1, scope: !753, file: !1, line: 69, type: !427)
!756 = !DILocalVariable(name: "first", arg: 2, scope: !753, file: !1, line: 69, type: !93)
!757 = !DILocalVariable(name: "nret", arg: 3, scope: !753, file: !1, line: 69, type: !93)
!758 = !DILocation(line: 69, column: 27, scope: !753)
!759 = !DILocation(line: 69, column: 35, scope: !753)
!760 = !DILocation(line: 69, column: 46, scope: !753)
!761 = !DILocation(line: 804, column: 30, scope: !571, inlinedAt: !762)
!762 = distinct !DILocation(line: 70, column: 3, scope: !753)
!763 = !DILocation(line: 804, column: 41, scope: !571, inlinedAt: !762)
!764 = !DILocation(line: 804, column: 48, scope: !571, inlinedAt: !762)
!765 = !DILocation(line: 804, column: 55, scope: !571, inlinedAt: !762)
!766 = !DILocation(line: 804, column: 62, scope: !571, inlinedAt: !762)
!767 = !DILocation(line: 808, column: 24, scope: !571, inlinedAt: !762)
!768 = !DILocation(line: 808, column: 52, scope: !571, inlinedAt: !762)
!769 = !DILocation(line: 808, column: 56, scope: !571, inlinedAt: !762)
!770 = !DILocation(line: 808, column: 10, scope: !571, inlinedAt: !762)
!771 = !DILocation(line: 808, column: 3, scope: !571, inlinedAt: !762)
!772 = !DILocation(line: 71, column: 1, scope: !753)
!773 = distinct !DISubprogram(name: "luaK_getlabel", scope: !1, file: !1, line: 94, type: !606, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !774)
!774 = !{!775}
!775 = !DILocalVariable(name: "fs", arg: 1, scope: !773, file: !1, line: 94, type: !427)
!776 = !DILocation(line: 94, column: 31, scope: !773)
!777 = !DILocation(line: 95, column: 24, scope: !773)
!778 = !DILocation(line: 95, column: 7, scope: !773)
!779 = !DILocation(line: 95, column: 18, scope: !773)
!780 = !DILocation(line: 96, column: 3, scope: !773)
!781 = distinct !DISubprogram(name: "luaK_patchlist", scope: !1, file: !1, line: 169, type: !425, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !782)
!782 = !{!783, !784, !785}
!783 = !DILocalVariable(name: "fs", arg: 1, scope: !781, file: !1, line: 169, type: !427)
!784 = !DILocalVariable(name: "list", arg: 2, scope: !781, file: !1, line: 169, type: !93)
!785 = !DILocalVariable(name: "target", arg: 3, scope: !781, file: !1, line: 169, type: !93)
!786 = !DILocation(line: 169, column: 33, scope: !781)
!787 = !DILocation(line: 169, column: 41, scope: !781)
!788 = !DILocation(line: 169, column: 51, scope: !781)
!789 = !DILocation(line: 170, column: 21, scope: !790)
!790 = distinct !DILexicalBlock(scope: !781, file: !1, line: 170, column: 7)
!791 = !DILocation(line: 170, column: 14, scope: !790)
!792 = !DILocation(line: 170, column: 7, scope: !781)
!793 = !DILocalVariable(name: "fs", arg: 1, scope: !794, file: !1, line: 179, type: !427)
!794 = distinct !DISubprogram(name: "luaK_patchtohere", scope: !1, file: !1, line: 179, type: !795, isLocal: false, isDefinition: true, scopeLine: 179, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !797)
!795 = !DISubroutineType(types: !796)
!796 = !{null, !427, !93}
!797 = !{!793, !798}
!798 = !DILocalVariable(name: "list", arg: 2, scope: !794, file: !1, line: 179, type: !93)
!799 = !DILocation(line: 179, column: 35, scope: !794, inlinedAt: !800)
!800 = distinct !DILocation(line: 171, column: 5, scope: !790)
!801 = !DILocation(line: 179, column: 43, scope: !794, inlinedAt: !800)
!802 = !DILocation(line: 94, column: 31, scope: !773, inlinedAt: !803)
!803 = distinct !DILocation(line: 180, column: 3, scope: !794, inlinedAt: !800)
!804 = !DILocation(line: 95, column: 7, scope: !773, inlinedAt: !803)
!805 = !DILocation(line: 95, column: 18, scope: !773, inlinedAt: !803)
!806 = !DILocation(line: 96, column: 3, scope: !773, inlinedAt: !803)
!807 = !DILocation(line: 181, column: 24, scope: !794, inlinedAt: !800)
!808 = !DILocation(line: 185, column: 30, scope: !636, inlinedAt: !809)
!809 = distinct !DILocation(line: 181, column: 3, scope: !794, inlinedAt: !800)
!810 = !DILocation(line: 185, column: 39, scope: !636, inlinedAt: !809)
!811 = !DILocation(line: 185, column: 47, scope: !636, inlinedAt: !809)
!812 = !DILocation(line: 186, column: 10, scope: !645, inlinedAt: !809)
!813 = !DILocation(line: 186, column: 7, scope: !636, inlinedAt: !809)
!814 = !DILocation(line: 187, column: 12, scope: !644, inlinedAt: !809)
!815 = !DILocation(line: 187, column: 16, scope: !644, inlinedAt: !809)
!816 = !DILocation(line: 187, column: 12, scope: !645, inlinedAt: !809)
!817 = !DILocation(line: 101, column: 16, scope: !655, inlinedAt: !818)
!818 = distinct !DILocation(line: 192, column: 20, scope: !643, inlinedAt: !809)
!819 = !DILocation(line: 188, column: 9, scope: !644, inlinedAt: !809)
!820 = !DILocation(line: 188, column: 5, scope: !644, inlinedAt: !809)
!821 = !DILocation(line: 0, scope: !643, inlinedAt: !809)
!822 = !DILocation(line: 190, column: 9, scope: !643, inlinedAt: !809)
!823 = !DILocation(line: 100, column: 32, scope: !655, inlinedAt: !818)
!824 = !DILocation(line: 100, column: 40, scope: !655, inlinedAt: !818)
!825 = !DILocation(line: 101, column: 7, scope: !655, inlinedAt: !818)
!826 = !DILocation(line: 102, column: 14, scope: !669, inlinedAt: !818)
!827 = !DILocation(line: 105, column: 15, scope: !669, inlinedAt: !818)
!828 = !DILocation(line: 105, column: 18, scope: !669, inlinedAt: !818)
!829 = !DILocation(line: 102, column: 7, scope: !655, inlinedAt: !818)
!830 = !DILocation(line: 106, column: 1, scope: !655, inlinedAt: !818)
!831 = !DILocation(line: 191, column: 9, scope: !643, inlinedAt: !809)
!832 = !DILocation(line: 192, column: 39, scope: !643, inlinedAt: !809)
!833 = !DILocation(line: 192, column: 5, scope: !643, inlinedAt: !809)
!834 = !DILocation(line: 80, column: 33, scope: !681, inlinedAt: !835)
!835 = distinct !DILocation(line: 194, column: 5, scope: !643, inlinedAt: !809)
!836 = !DILocation(line: 80, column: 41, scope: !681, inlinedAt: !835)
!837 = !DILocation(line: 80, column: 49, scope: !681, inlinedAt: !835)
!838 = !DILocation(line: 81, column: 16, scope: !681, inlinedAt: !835)
!839 = !DILocation(line: 82, column: 20, scope: !681, inlinedAt: !835)
!840 = !DILocation(line: 82, column: 7, scope: !681, inlinedAt: !835)
!841 = !DILocation(line: 84, column: 7, scope: !695, inlinedAt: !835)
!842 = !DILocation(line: 84, column: 19, scope: !695, inlinedAt: !835)
!843 = !DILocation(line: 84, column: 7, scope: !681, inlinedAt: !835)
!844 = !DILocation(line: 85, column: 26, scope: !695, inlinedAt: !835)
!845 = !DILocation(line: 85, column: 5, scope: !695, inlinedAt: !835)
!846 = !DILocation(line: 86, column: 3, scope: !681, inlinedAt: !835)
!847 = !DILocation(line: 87, column: 1, scope: !681, inlinedAt: !835)
!848 = !DILocation(line: 196, column: 1, scope: !636, inlinedAt: !809)
!849 = !DILocation(line: 171, column: 5, scope: !790)
!850 = !DILocalVariable(name: "fs", arg: 1, scope: !851, file: !1, line: 150, type: !427)
!851 = distinct !DISubprogram(name: "patchlistaux", scope: !1, file: !1, line: 150, type: !852, isLocal: true, isDefinition: true, scopeLine: 151, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !854)
!852 = !DISubroutineType(types: !853)
!853 = !{null, !427, !93, !93, !93, !93}
!854 = !{!850, !855, !856, !857, !858, !859}
!855 = !DILocalVariable(name: "list", arg: 2, scope: !851, file: !1, line: 150, type: !93)
!856 = !DILocalVariable(name: "vtarget", arg: 3, scope: !851, file: !1, line: 150, type: !93)
!857 = !DILocalVariable(name: "reg", arg: 4, scope: !851, file: !1, line: 150, type: !93)
!858 = !DILocalVariable(name: "dtarget", arg: 5, scope: !851, file: !1, line: 151, type: !93)
!859 = !DILocalVariable(name: "next", scope: !860, file: !1, line: 153, type: !93)
!860 = distinct !DILexicalBlock(scope: !851, file: !1, line: 152, column: 27)
!861 = !DILocation(line: 150, column: 38, scope: !851, inlinedAt: !862)
!862 = distinct !DILocation(line: 174, column: 5, scope: !863)
!863 = distinct !DILexicalBlock(scope: !790, file: !1, line: 172, column: 8)
!864 = !DILocation(line: 150, column: 46, scope: !851, inlinedAt: !862)
!865 = !DILocation(line: 150, column: 56, scope: !851, inlinedAt: !862)
!866 = !DILocation(line: 150, column: 69, scope: !851, inlinedAt: !862)
!867 = !DILocation(line: 151, column: 31, scope: !851, inlinedAt: !862)
!868 = !DILocation(line: 152, column: 15, scope: !851, inlinedAt: !862)
!869 = !DILocation(line: 152, column: 3, scope: !851, inlinedAt: !862)
!870 = !DILocation(line: 100, column: 32, scope: !655, inlinedAt: !871)
!871 = distinct !DILocation(line: 153, column: 16, scope: !860, inlinedAt: !862)
!872 = !DILocation(line: 100, column: 40, scope: !655, inlinedAt: !871)
!873 = !DILocation(line: 101, column: 16, scope: !655, inlinedAt: !871)
!874 = !DILocation(line: 101, column: 7, scope: !655, inlinedAt: !871)
!875 = !DILocation(line: 102, column: 14, scope: !669, inlinedAt: !871)
!876 = !DILocation(line: 105, column: 15, scope: !669, inlinedAt: !871)
!877 = !DILocation(line: 105, column: 18, scope: !669, inlinedAt: !871)
!878 = !DILocation(line: 102, column: 7, scope: !655, inlinedAt: !871)
!879 = !DILocation(line: 106, column: 1, scope: !655, inlinedAt: !871)
!880 = !DILocation(line: 153, column: 9, scope: !860, inlinedAt: !862)
!881 = !DILocalVariable(name: "fs", arg: 1, scope: !882, file: !1, line: 131, type: !427)
!882 = distinct !DISubprogram(name: "patchtestreg", scope: !1, file: !1, line: 131, type: !883, isLocal: true, isDefinition: true, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !885)
!883 = !DISubroutineType(types: !884)
!884 = !{!93, !427, !93, !93}
!885 = !{!881, !886, !887, !888}
!886 = !DILocalVariable(name: "node", arg: 2, scope: !882, file: !1, line: 131, type: !93)
!887 = !DILocalVariable(name: "reg", arg: 3, scope: !882, file: !1, line: 131, type: !93)
!888 = !DILocalVariable(name: "i", scope: !882, file: !1, line: 132, type: !385)
!889 = !DILocation(line: 131, column: 37, scope: !882, inlinedAt: !890)
!890 = distinct !DILocation(line: 154, column: 9, scope: !891, inlinedAt: !862)
!891 = distinct !DILexicalBlock(scope: !860, file: !1, line: 154, column: 9)
!892 = !DILocation(line: 131, column: 45, scope: !882, inlinedAt: !890)
!893 = !DILocation(line: 131, column: 55, scope: !882, inlinedAt: !890)
!894 = !DILocalVariable(name: "fs", arg: 1, scope: !895, file: !1, line: 109, type: !427)
!895 = distinct !DISubprogram(name: "getjumpcontrol", scope: !1, file: !1, line: 109, type: !896, isLocal: true, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !898)
!896 = !DISubroutineType(types: !897)
!897 = !{!385, !427, !93}
!898 = !{!894, !899, !900}
!899 = !DILocalVariable(name: "pc", arg: 2, scope: !895, file: !1, line: 109, type: !93)
!900 = !DILocalVariable(name: "pi", scope: !895, file: !1, line: 110, type: !385)
!901 = !DILocation(line: 109, column: 48, scope: !895, inlinedAt: !902)
!902 = distinct !DILocation(line: 132, column: 20, scope: !882, inlinedAt: !890)
!903 = !DILocation(line: 109, column: 56, scope: !895, inlinedAt: !902)
!904 = !DILocation(line: 110, column: 16, scope: !895, inlinedAt: !902)
!905 = !DILocation(line: 111, column: 10, scope: !906, inlinedAt: !902)
!906 = distinct !DILexicalBlock(scope: !895, file: !1, line: 111, column: 7)
!907 = !DILocation(line: 111, column: 15, scope: !906, inlinedAt: !902)
!908 = !DILocation(line: 111, column: 18, scope: !906, inlinedAt: !902)
!909 = !{!524, !524, i64 0}
!910 = !DILocation(line: 111, column: 7, scope: !895, inlinedAt: !902)
!911 = !DILocation(line: 114, column: 5, scope: !906, inlinedAt: !902)
!912 = !DILocation(line: 133, column: 7, scope: !913, inlinedAt: !890)
!913 = distinct !DILexicalBlock(scope: !882, file: !1, line: 133, column: 7)
!914 = !DILocation(line: 0, scope: !906, inlinedAt: !902)
!915 = !DILocation(line: 115, column: 1, scope: !895, inlinedAt: !902)
!916 = !DILocation(line: 132, column: 16, scope: !882, inlinedAt: !890)
!917 = !DILocation(line: 133, column: 22, scope: !913, inlinedAt: !890)
!918 = !DILocation(line: 133, column: 7, scope: !882, inlinedAt: !890)
!919 = !DILocation(line: 135, column: 31, scope: !920, inlinedAt: !890)
!920 = distinct !DILexicalBlock(scope: !882, file: !1, line: 135, column: 7)
!921 = !DILocation(line: 138, column: 10, scope: !920, inlinedAt: !890)
!922 = !DILocation(line: 0, scope: !920, inlinedAt: !890)
!923 = !DILocation(line: 141, column: 1, scope: !882, inlinedAt: !890)
!924 = !DILocation(line: 80, column: 33, scope: !681, inlinedAt: !925)
!925 = distinct !DILocation(line: 155, column: 7, scope: !891, inlinedAt: !862)
!926 = !DILocation(line: 80, column: 41, scope: !681, inlinedAt: !925)
!927 = !DILocation(line: 80, column: 49, scope: !681, inlinedAt: !925)
!928 = !DILocation(line: 81, column: 16, scope: !681, inlinedAt: !925)
!929 = !DILocation(line: 82, column: 20, scope: !681, inlinedAt: !925)
!930 = !DILocation(line: 82, column: 7, scope: !681, inlinedAt: !925)
!931 = !DILocation(line: 84, column: 7, scope: !695, inlinedAt: !925)
!932 = !DILocation(line: 84, column: 19, scope: !695, inlinedAt: !925)
!933 = !DILocation(line: 84, column: 7, scope: !681, inlinedAt: !925)
!934 = !DILocation(line: 85, column: 26, scope: !695, inlinedAt: !925)
!935 = !DILocation(line: 85, column: 5, scope: !695, inlinedAt: !925)
!936 = !DILocation(line: 80, column: 33, scope: !681, inlinedAt: !937)
!937 = distinct !DILocation(line: 157, column: 7, scope: !891, inlinedAt: !862)
!938 = !DILocation(line: 80, column: 41, scope: !681, inlinedAt: !937)
!939 = !DILocation(line: 80, column: 49, scope: !681, inlinedAt: !937)
!940 = !DILocation(line: 81, column: 16, scope: !681, inlinedAt: !937)
!941 = !DILocation(line: 82, column: 20, scope: !681, inlinedAt: !937)
!942 = !DILocation(line: 82, column: 7, scope: !681, inlinedAt: !937)
!943 = !DILocation(line: 84, column: 7, scope: !695, inlinedAt: !937)
!944 = !DILocation(line: 84, column: 19, scope: !695, inlinedAt: !937)
!945 = !DILocation(line: 84, column: 7, scope: !681, inlinedAt: !937)
!946 = !DILocation(line: 85, column: 26, scope: !695, inlinedAt: !937)
!947 = !DILocation(line: 85, column: 5, scope: !695, inlinedAt: !937)
!948 = !DILocation(line: 86, column: 3, scope: !681, inlinedAt: !937)
!949 = !DILocation(line: 87, column: 1, scope: !681, inlinedAt: !937)
!950 = distinct !{!950, !951, !952}
!951 = !DILocation(line: 152, column: 3, scope: !851)
!952 = !DILocation(line: 159, column: 3, scope: !851)
!953 = !DILocation(line: 0, scope: !790)
!954 = !DILocation(line: 176, column: 1, scope: !781)
!955 = !DILocation(line: 179, column: 35, scope: !794)
!956 = !DILocation(line: 179, column: 43, scope: !794)
!957 = !DILocation(line: 94, column: 31, scope: !773, inlinedAt: !958)
!958 = distinct !DILocation(line: 180, column: 3, scope: !794)
!959 = !DILocation(line: 95, column: 24, scope: !773, inlinedAt: !958)
!960 = !DILocation(line: 95, column: 7, scope: !773, inlinedAt: !958)
!961 = !DILocation(line: 95, column: 18, scope: !773, inlinedAt: !958)
!962 = !DILocation(line: 96, column: 3, scope: !773, inlinedAt: !958)
!963 = !DILocation(line: 181, column: 24, scope: !794)
!964 = !DILocation(line: 185, column: 30, scope: !636, inlinedAt: !965)
!965 = distinct !DILocation(line: 181, column: 3, scope: !794)
!966 = !DILocation(line: 185, column: 39, scope: !636, inlinedAt: !965)
!967 = !DILocation(line: 185, column: 47, scope: !636, inlinedAt: !965)
!968 = !DILocation(line: 186, column: 10, scope: !645, inlinedAt: !965)
!969 = !DILocation(line: 186, column: 7, scope: !636, inlinedAt: !965)
!970 = !DILocation(line: 187, column: 12, scope: !644, inlinedAt: !965)
!971 = !DILocation(line: 187, column: 16, scope: !644, inlinedAt: !965)
!972 = !DILocation(line: 187, column: 12, scope: !645, inlinedAt: !965)
!973 = !DILocation(line: 101, column: 16, scope: !655, inlinedAt: !974)
!974 = distinct !DILocation(line: 192, column: 20, scope: !643, inlinedAt: !965)
!975 = !DILocation(line: 188, column: 9, scope: !644, inlinedAt: !965)
!976 = !DILocation(line: 188, column: 5, scope: !644, inlinedAt: !965)
!977 = !DILocation(line: 0, scope: !643, inlinedAt: !965)
!978 = !DILocation(line: 190, column: 9, scope: !643, inlinedAt: !965)
!979 = !DILocation(line: 100, column: 32, scope: !655, inlinedAt: !974)
!980 = !DILocation(line: 100, column: 40, scope: !655, inlinedAt: !974)
!981 = !DILocation(line: 101, column: 7, scope: !655, inlinedAt: !974)
!982 = !DILocation(line: 102, column: 14, scope: !669, inlinedAt: !974)
!983 = !DILocation(line: 105, column: 15, scope: !669, inlinedAt: !974)
!984 = !DILocation(line: 105, column: 18, scope: !669, inlinedAt: !974)
!985 = !DILocation(line: 102, column: 7, scope: !655, inlinedAt: !974)
!986 = !DILocation(line: 106, column: 1, scope: !655, inlinedAt: !974)
!987 = !DILocation(line: 191, column: 9, scope: !643, inlinedAt: !965)
!988 = !DILocation(line: 192, column: 39, scope: !643, inlinedAt: !965)
!989 = !DILocation(line: 192, column: 5, scope: !643, inlinedAt: !965)
!990 = !DILocation(line: 80, column: 33, scope: !681, inlinedAt: !991)
!991 = distinct !DILocation(line: 194, column: 5, scope: !643, inlinedAt: !965)
!992 = !DILocation(line: 80, column: 41, scope: !681, inlinedAt: !991)
!993 = !DILocation(line: 80, column: 49, scope: !681, inlinedAt: !991)
!994 = !DILocation(line: 81, column: 16, scope: !681, inlinedAt: !991)
!995 = !DILocation(line: 82, column: 20, scope: !681, inlinedAt: !991)
!996 = !DILocation(line: 82, column: 7, scope: !681, inlinedAt: !991)
!997 = !DILocation(line: 84, column: 7, scope: !695, inlinedAt: !991)
!998 = !DILocation(line: 84, column: 19, scope: !695, inlinedAt: !991)
!999 = !DILocation(line: 84, column: 7, scope: !681, inlinedAt: !991)
!1000 = !DILocation(line: 85, column: 26, scope: !695, inlinedAt: !991)
!1001 = !DILocation(line: 85, column: 5, scope: !695, inlinedAt: !991)
!1002 = !DILocation(line: 86, column: 3, scope: !681, inlinedAt: !991)
!1003 = !DILocation(line: 87, column: 1, scope: !681, inlinedAt: !991)
!1004 = !DILocation(line: 196, column: 1, scope: !636, inlinedAt: !965)
!1005 = !DILocation(line: 182, column: 1, scope: !794)
!1006 = distinct !DISubprogram(name: "luaK_checkstack", scope: !1, file: !1, line: 199, type: !795, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1007)
!1007 = !{!1008, !1009, !1010}
!1008 = !DILocalVariable(name: "fs", arg: 1, scope: !1006, file: !1, line: 199, type: !427)
!1009 = !DILocalVariable(name: "n", arg: 2, scope: !1006, file: !1, line: 199, type: !93)
!1010 = !DILocalVariable(name: "newstack", scope: !1006, file: !1, line: 200, type: !93)
!1011 = !DILocation(line: 199, column: 34, scope: !1006)
!1012 = !DILocation(line: 199, column: 42, scope: !1006)
!1013 = !DILocation(line: 200, column: 22, scope: !1006)
!1014 = !{!522, !526, i64 60}
!1015 = !DILocation(line: 200, column: 30, scope: !1006)
!1016 = !DILocation(line: 200, column: 7, scope: !1006)
!1017 = !DILocation(line: 201, column: 22, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1006, file: !1, line: 201, column: 7)
!1019 = !DILocation(line: 201, column: 25, scope: !1018)
!1020 = !{!545, !524, i64 115}
!1021 = !DILocation(line: 201, column: 18, scope: !1018)
!1022 = !DILocation(line: 201, column: 16, scope: !1018)
!1023 = !DILocation(line: 201, column: 7, scope: !1006)
!1024 = !DILocation(line: 202, column: 18, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !1026, file: !1, line: 202, column: 9)
!1026 = distinct !DILexicalBlock(scope: !1018, file: !1, line: 201, column: 39)
!1027 = !DILocation(line: 202, column: 9, scope: !1026)
!1028 = !DILocation(line: 203, column: 28, scope: !1025)
!1029 = !DILocation(line: 203, column: 7, scope: !1025)
!1030 = !DILocation(line: 204, column: 9, scope: !1026)
!1031 = !DILocation(line: 204, column: 12, scope: !1026)
!1032 = !DILocation(line: 204, column: 27, scope: !1026)
!1033 = !DILocation(line: 204, column: 25, scope: !1026)
!1034 = !DILocation(line: 205, column: 3, scope: !1026)
!1035 = !DILocation(line: 206, column: 1, scope: !1006)
!1036 = distinct !DISubprogram(name: "luaK_reserveregs", scope: !1, file: !1, line: 209, type: !795, isLocal: false, isDefinition: true, scopeLine: 209, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1037)
!1037 = !{!1038, !1039}
!1038 = !DILocalVariable(name: "fs", arg: 1, scope: !1036, file: !1, line: 209, type: !427)
!1039 = !DILocalVariable(name: "n", arg: 2, scope: !1036, file: !1, line: 209, type: !93)
!1040 = !DILocation(line: 209, column: 35, scope: !1036)
!1041 = !DILocation(line: 209, column: 43, scope: !1036)
!1042 = !DILocation(line: 199, column: 34, scope: !1006, inlinedAt: !1043)
!1043 = distinct !DILocation(line: 210, column: 3, scope: !1036)
!1044 = !DILocation(line: 199, column: 42, scope: !1006, inlinedAt: !1043)
!1045 = !DILocation(line: 200, column: 22, scope: !1006, inlinedAt: !1043)
!1046 = !DILocation(line: 200, column: 30, scope: !1006, inlinedAt: !1043)
!1047 = !DILocation(line: 200, column: 7, scope: !1006, inlinedAt: !1043)
!1048 = !DILocation(line: 201, column: 22, scope: !1018, inlinedAt: !1043)
!1049 = !DILocation(line: 201, column: 25, scope: !1018, inlinedAt: !1043)
!1050 = !DILocation(line: 201, column: 18, scope: !1018, inlinedAt: !1043)
!1051 = !DILocation(line: 201, column: 16, scope: !1018, inlinedAt: !1043)
!1052 = !DILocation(line: 201, column: 7, scope: !1006, inlinedAt: !1043)
!1053 = !DILocation(line: 202, column: 18, scope: !1025, inlinedAt: !1043)
!1054 = !DILocation(line: 202, column: 9, scope: !1026, inlinedAt: !1043)
!1055 = !DILocation(line: 203, column: 28, scope: !1025, inlinedAt: !1043)
!1056 = !DILocation(line: 203, column: 7, scope: !1025, inlinedAt: !1043)
!1057 = !DILocation(line: 204, column: 9, scope: !1026, inlinedAt: !1043)
!1058 = !DILocation(line: 204, column: 12, scope: !1026, inlinedAt: !1043)
!1059 = !DILocation(line: 211, column: 15, scope: !1036)
!1060 = !DILocation(line: 204, column: 27, scope: !1026, inlinedAt: !1043)
!1061 = !DILocation(line: 204, column: 25, scope: !1026, inlinedAt: !1043)
!1062 = !DILocation(line: 205, column: 3, scope: !1026, inlinedAt: !1043)
!1063 = !DILocation(line: 206, column: 1, scope: !1006, inlinedAt: !1043)
!1064 = !DILocation(line: 212, column: 1, scope: !1036)
!1065 = distinct !DISubprogram(name: "luaK_stringK", scope: !1, file: !1, line: 250, type: !1066, isLocal: false, isDefinition: true, scopeLine: 250, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1068)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!93, !427, !296}
!1068 = !{!1069, !1070, !1071, !1072}
!1069 = !DILocalVariable(name: "fs", arg: 1, scope: !1065, file: !1, line: 250, type: !427)
!1070 = !DILocalVariable(name: "s", arg: 2, scope: !1065, file: !1, line: 250, type: !296)
!1071 = !DILocalVariable(name: "o", scope: !1065, file: !1, line: 251, type: !156)
!1072 = !DILocalVariable(name: "i_o", scope: !1073, file: !1, line: 252, type: !155)
!1073 = distinct !DILexicalBlock(scope: !1065, file: !1, line: 252, column: 3)
!1074 = !DILocation(line: 250, column: 30, scope: !1065)
!1075 = !DILocation(line: 250, column: 43, scope: !1065)
!1076 = !DILocation(line: 251, column: 3, scope: !1065)
!1077 = !DILocation(line: 252, column: 3, scope: !1073)
!1078 = !{!1079, !526, i64 8}
!1079 = !{!"lua_TValue", !524, i64 0, !526, i64 8}
!1080 = !DILocation(line: 251, column: 10, scope: !1065)
!1081 = !DILocation(line: 253, column: 10, scope: !1065)
!1082 = !DILocation(line: 254, column: 1, scope: !1065)
!1083 = !DILocation(line: 253, column: 3, scope: !1065)
!1084 = distinct !DISubprogram(name: "addk", scope: !1, file: !1, line: 229, type: !1085, isLocal: true, isDefinition: true, scopeLine: 229, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1087)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!93, !427, !155, !155}
!1087 = !{!1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1099, !1103}
!1088 = !DILocalVariable(name: "fs", arg: 1, scope: !1084, file: !1, line: 229, type: !427)
!1089 = !DILocalVariable(name: "k", arg: 2, scope: !1084, file: !1, line: 229, type: !155)
!1090 = !DILocalVariable(name: "v", arg: 3, scope: !1084, file: !1, line: 229, type: !155)
!1091 = !DILocalVariable(name: "L", scope: !1084, file: !1, line: 230, type: !212)
!1092 = !DILocalVariable(name: "idx", scope: !1084, file: !1, line: 231, type: !155)
!1093 = !DILocalVariable(name: "f", scope: !1084, file: !1, line: 232, type: !432)
!1094 = !DILocalVariable(name: "oldsize", scope: !1084, file: !1, line: 233, type: !93)
!1095 = !DILocalVariable(name: "i_o", scope: !1096, file: !1, line: 239, type: !155)
!1096 = distinct !DILexicalBlock(scope: !1097, file: !1, line: 239, column: 5)
!1097 = distinct !DILexicalBlock(scope: !1098, file: !1, line: 238, column: 8)
!1098 = distinct !DILexicalBlock(scope: !1084, file: !1, line: 234, column: 7)
!1099 = !DILocalVariable(name: "o2", scope: !1100, file: !1, line: 243, type: !1101)
!1100 = distinct !DILexicalBlock(scope: !1097, file: !1, line: 243, column: 5)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !156)
!1103 = !DILocalVariable(name: "o1", scope: !1100, file: !1, line: 243, type: !155)
!1104 = !DILocation(line: 229, column: 29, scope: !1084)
!1105 = !DILocation(line: 229, column: 41, scope: !1084)
!1106 = !DILocation(line: 229, column: 52, scope: !1084)
!1107 = !DILocation(line: 230, column: 22, scope: !1084)
!1108 = !{!522, !523, i64 32}
!1109 = !DILocation(line: 230, column: 14, scope: !1084)
!1110 = !DILocation(line: 231, column: 33, scope: !1084)
!1111 = !{!522, !523, i64 8}
!1112 = !DILocation(line: 231, column: 17, scope: !1084)
!1113 = !DILocation(line: 231, column: 11, scope: !1084)
!1114 = !DILocation(line: 232, column: 18, scope: !1084)
!1115 = !DILocation(line: 232, column: 10, scope: !1084)
!1116 = !DILocation(line: 233, column: 20, scope: !1084)
!1117 = !{!545, !526, i64 76}
!1118 = !DILocation(line: 233, column: 7, scope: !1084)
!1119 = !DILocation(line: 234, column: 7, scope: !1098)
!1120 = !DILocation(line: 234, column: 7, scope: !1084)
!1121 = !DILocation(line: 236, column: 12, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1098, file: !1, line: 234, column: 24)
!1123 = !DILocation(line: 236, column: 5, scope: !1122)
!1124 = !DILocation(line: 239, column: 5, scope: !1096)
!1125 = !{!522, !526, i64 64}
!1126 = !DILocation(line: 240, column: 5, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1097, file: !1, line: 240, column: 5)
!1128 = !DILocation(line: 240, column: 5, scope: !1097)
!1129 = !DILocation(line: 0, scope: !1100)
!1130 = !{!545, !523, i64 16}
!1131 = !DILocation(line: 242, column: 25, scope: !1097)
!1132 = !DILocation(line: 242, column: 20, scope: !1097)
!1133 = !DILocation(line: 242, column: 5, scope: !1097)
!1134 = !DILocation(line: 242, column: 32, scope: !1097)
!1135 = distinct !{!1135, !1136}
!1136 = !{!"llvm.loop.unroll.disable"}
!1137 = distinct !{!1137, !1133, !1134}
!1138 = !DILocation(line: 243, column: 5, scope: !1100)
!1139 = !DILocation(line: 244, column: 5, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1141, file: !1, line: 244, column: 5)
!1141 = distinct !DILexicalBlock(scope: !1097, file: !1, line: 244, column: 5)
!1142 = !DILocation(line: 244, column: 5, scope: !1141)
!1143 = !DILocation(line: 245, column: 18, scope: !1097)
!1144 = !DILocation(line: 245, column: 5, scope: !1097)
!1145 = !DILocation(line: 0, scope: !1097)
!1146 = !DILocation(line: 247, column: 1, scope: !1084)
!1147 = distinct !DISubprogram(name: "luaK_numberK", scope: !1, file: !1, line: 257, type: !1148, isLocal: false, isDefinition: true, scopeLine: 257, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1150)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{!93, !427, !166}
!1150 = !{!1151, !1152, !1153, !1154}
!1151 = !DILocalVariable(name: "fs", arg: 1, scope: !1147, file: !1, line: 257, type: !427)
!1152 = !DILocalVariable(name: "r", arg: 2, scope: !1147, file: !1, line: 257, type: !166)
!1153 = !DILocalVariable(name: "o", scope: !1147, file: !1, line: 258, type: !156)
!1154 = !DILocalVariable(name: "i_o", scope: !1155, file: !1, line: 259, type: !155)
!1155 = distinct !DILexicalBlock(scope: !1147, file: !1, line: 259, column: 3)
!1156 = !DILocation(line: 257, column: 30, scope: !1147)
!1157 = !DILocation(line: 257, column: 45, scope: !1147)
!1158 = !DILocation(line: 258, column: 3, scope: !1147)
!1159 = !DILocation(line: 259, column: 3, scope: !1155)
!1160 = !DILocation(line: 258, column: 10, scope: !1147)
!1161 = !DILocation(line: 260, column: 10, scope: !1147)
!1162 = !DILocation(line: 261, column: 1, scope: !1147)
!1163 = !DILocation(line: 260, column: 3, scope: !1147)
!1164 = distinct !DISubprogram(name: "luaK_setreturns", scope: !1, file: !1, line: 280, type: !1165, isLocal: false, isDefinition: true, scopeLine: 280, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1184)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{null, !427, !1167, !93}
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_typedef, name: "expdesc", file: !46, line: 45, baseType: !1169)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "expdesc", file: !46, line: 37, size: 192, elements: !1170)
!1170 = !{!1171, !1173, !1182, !1183}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !1169, file: !46, line: 38, baseType: !1172, size: 32)
!1172 = !DIDerivedType(tag: DW_TAG_typedef, name: "expkind", file: !46, line: 35, baseType: !45)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !1169, file: !46, line: 42, baseType: !1174, size: 64, offset: 64)
!1174 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1169, file: !46, line: 39, size: 64, elements: !1175)
!1175 = !{!1176, !1181}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1174, file: !46, line: 40, baseType: !1177, size: 64)
!1177 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1174, file: !46, line: 40, size: 64, elements: !1178)
!1178 = !{!1179, !1180}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1177, file: !46, line: 40, baseType: !93, size: 32)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1177, file: !46, line: 40, baseType: !93, size: 32, offset: 32)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "nval", scope: !1174, file: !46, line: 41, baseType: !166, size: 64)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "t", scope: !1169, file: !46, line: 43, baseType: !93, size: 32, offset: 128)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1169, file: !46, line: 44, baseType: !93, size: 32, offset: 160)
!1184 = !{!1185, !1186, !1187}
!1185 = !DILocalVariable(name: "fs", arg: 1, scope: !1164, file: !1, line: 280, type: !427)
!1186 = !DILocalVariable(name: "e", arg: 2, scope: !1164, file: !1, line: 280, type: !1167)
!1187 = !DILocalVariable(name: "nresults", arg: 3, scope: !1164, file: !1, line: 280, type: !93)
!1188 = !DILocation(line: 280, column: 34, scope: !1164)
!1189 = !DILocation(line: 280, column: 47, scope: !1164)
!1190 = !DILocation(line: 280, column: 54, scope: !1164)
!1191 = !DILocation(line: 281, column: 10, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1164, file: !1, line: 281, column: 7)
!1193 = !{!1194, !524, i64 0}
!1194 = !{!"expdesc", !524, i64 0, !524, i64 8, !526, i64 16, !526, i64 20}
!1195 = !DILocation(line: 281, column: 7, scope: !1164)
!1196 = !DILocation(line: 282, column: 5, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1192, file: !1, line: 281, column: 22)
!1198 = !DILocation(line: 283, column: 3, scope: !1197)
!1199 = !DILocation(line: 285, column: 5, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1201, file: !1, line: 284, column: 29)
!1201 = distinct !DILexicalBlock(scope: !1192, file: !1, line: 284, column: 12)
!1202 = !DILocation(line: 286, column: 5, scope: !1200)
!1203 = !DILocation(line: 209, column: 35, scope: !1036, inlinedAt: !1204)
!1204 = distinct !DILocation(line: 287, column: 5, scope: !1200)
!1205 = !DILocation(line: 209, column: 43, scope: !1036, inlinedAt: !1204)
!1206 = !DILocation(line: 199, column: 34, scope: !1006, inlinedAt: !1207)
!1207 = distinct !DILocation(line: 210, column: 3, scope: !1036, inlinedAt: !1204)
!1208 = !DILocation(line: 199, column: 42, scope: !1006, inlinedAt: !1207)
!1209 = !DILocation(line: 200, column: 22, scope: !1006, inlinedAt: !1207)
!1210 = !DILocation(line: 200, column: 30, scope: !1006, inlinedAt: !1207)
!1211 = !DILocation(line: 200, column: 7, scope: !1006, inlinedAt: !1207)
!1212 = !DILocation(line: 201, column: 25, scope: !1018, inlinedAt: !1207)
!1213 = !DILocation(line: 201, column: 18, scope: !1018, inlinedAt: !1207)
!1214 = !DILocation(line: 201, column: 16, scope: !1018, inlinedAt: !1207)
!1215 = !DILocation(line: 201, column: 7, scope: !1006, inlinedAt: !1207)
!1216 = !DILocation(line: 202, column: 18, scope: !1025, inlinedAt: !1207)
!1217 = !DILocation(line: 202, column: 9, scope: !1026, inlinedAt: !1207)
!1218 = !DILocation(line: 203, column: 28, scope: !1025, inlinedAt: !1207)
!1219 = !DILocation(line: 203, column: 7, scope: !1025, inlinedAt: !1207)
!1220 = !DILocation(line: 204, column: 9, scope: !1026, inlinedAt: !1207)
!1221 = !DILocation(line: 204, column: 12, scope: !1026, inlinedAt: !1207)
!1222 = !DILocation(line: 211, column: 15, scope: !1036, inlinedAt: !1204)
!1223 = !DILocation(line: 204, column: 27, scope: !1026, inlinedAt: !1207)
!1224 = !DILocation(line: 204, column: 25, scope: !1026, inlinedAt: !1207)
!1225 = !DILocation(line: 205, column: 3, scope: !1026, inlinedAt: !1207)
!1226 = !DILocation(line: 206, column: 1, scope: !1006, inlinedAt: !1207)
!1227 = !DILocation(line: 212, column: 1, scope: !1036, inlinedAt: !1204)
!1228 = !DILocation(line: 288, column: 3, scope: !1200)
!1229 = !DILocation(line: 289, column: 1, scope: !1164)
!1230 = distinct !DISubprogram(name: "luaK_setoneret", scope: !1, file: !1, line: 292, type: !1231, isLocal: false, isDefinition: true, scopeLine: 292, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1233)
!1231 = !DISubroutineType(types: !1232)
!1232 = !{null, !427, !1167}
!1233 = !{!1234, !1235}
!1234 = !DILocalVariable(name: "fs", arg: 1, scope: !1230, file: !1, line: 292, type: !427)
!1235 = !DILocalVariable(name: "e", arg: 2, scope: !1230, file: !1, line: 292, type: !1167)
!1236 = !DILocation(line: 292, column: 33, scope: !1230)
!1237 = !DILocation(line: 292, column: 46, scope: !1230)
!1238 = !DILocation(line: 293, column: 10, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1230, file: !1, line: 293, column: 7)
!1240 = !DILocation(line: 293, column: 7, scope: !1230)
!1241 = !DILocation(line: 294, column: 10, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1239, file: !1, line: 293, column: 22)
!1243 = !DILocation(line: 295, column: 19, scope: !1242)
!1244 = !DILocation(line: 295, column: 17, scope: !1242)
!1245 = !DILocation(line: 296, column: 3, scope: !1242)
!1246 = !DILocation(line: 298, column: 5, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1248, file: !1, line: 297, column: 29)
!1248 = distinct !DILexicalBlock(scope: !1239, file: !1, line: 297, column: 12)
!1249 = !DILocation(line: 299, column: 10, scope: !1247)
!1250 = !DILocation(line: 300, column: 3, scope: !1247)
!1251 = !DILocation(line: 301, column: 1, scope: !1230)
!1252 = distinct !DISubprogram(name: "luaK_dischargevars", scope: !1, file: !1, line: 304, type: !1231, isLocal: false, isDefinition: true, scopeLine: 304, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1253)
!1253 = !{!1254, !1255}
!1254 = !DILocalVariable(name: "fs", arg: 1, scope: !1252, file: !1, line: 304, type: !427)
!1255 = !DILocalVariable(name: "e", arg: 2, scope: !1252, file: !1, line: 304, type: !1167)
!1256 = !DILocation(line: 304, column: 37, scope: !1252)
!1257 = !DILocation(line: 304, column: 50, scope: !1252)
!1258 = !DILocation(line: 305, column: 14, scope: !1252)
!1259 = !DILocation(line: 305, column: 3, scope: !1252)
!1260 = !DILocation(line: 307, column: 12, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1262, file: !1, line: 306, column: 18)
!1262 = distinct !DILexicalBlock(scope: !1252, file: !1, line: 305, column: 17)
!1263 = !DILocation(line: 308, column: 7, scope: !1261)
!1264 = !DILocation(line: 311, column: 57, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1262, file: !1, line: 310, column: 18)
!1266 = !DILocation(line: 311, column: 61, scope: !1265)
!1267 = !DILocation(line: 804, column: 30, scope: !571, inlinedAt: !1268)
!1268 = distinct !DILocation(line: 311, column: 21, scope: !1265)
!1269 = !DILocation(line: 804, column: 41, scope: !571, inlinedAt: !1268)
!1270 = !DILocation(line: 804, column: 48, scope: !571, inlinedAt: !1268)
!1271 = !DILocation(line: 804, column: 55, scope: !571, inlinedAt: !1268)
!1272 = !DILocation(line: 804, column: 62, scope: !571, inlinedAt: !1268)
!1273 = !DILocation(line: 808, column: 24, scope: !571, inlinedAt: !1268)
!1274 = !DILocation(line: 808, column: 52, scope: !571, inlinedAt: !1268)
!1275 = !DILocation(line: 808, column: 56, scope: !571, inlinedAt: !1268)
!1276 = !DILocation(line: 808, column: 10, scope: !571, inlinedAt: !1268)
!1277 = !DILocation(line: 808, column: 3, scope: !571, inlinedAt: !1268)
!1278 = !DILocation(line: 311, column: 19, scope: !1265)
!1279 = !DILocation(line: 312, column: 12, scope: !1265)
!1280 = !DILocation(line: 313, column: 7, scope: !1265)
!1281 = !DILocation(line: 316, column: 58, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1262, file: !1, line: 315, column: 19)
!1283 = !DILocation(line: 316, column: 62, scope: !1282)
!1284 = !DILocation(line: 812, column: 30, scope: !618, inlinedAt: !1285)
!1285 = distinct !DILocation(line: 316, column: 21, scope: !1282)
!1286 = !DILocation(line: 812, column: 41, scope: !618, inlinedAt: !1285)
!1287 = !DILocation(line: 812, column: 48, scope: !618, inlinedAt: !1285)
!1288 = !DILocation(line: 812, column: 64, scope: !618, inlinedAt: !1285)
!1289 = !DILocation(line: 815, column: 24, scope: !618, inlinedAt: !1285)
!1290 = !DILocation(line: 815, column: 50, scope: !618, inlinedAt: !1285)
!1291 = !DILocation(line: 815, column: 54, scope: !618, inlinedAt: !1285)
!1292 = !DILocation(line: 815, column: 10, scope: !618, inlinedAt: !1285)
!1293 = !DILocation(line: 815, column: 3, scope: !618, inlinedAt: !1285)
!1294 = !DILocation(line: 316, column: 19, scope: !1282)
!1295 = !DILocation(line: 317, column: 12, scope: !1282)
!1296 = !DILocation(line: 318, column: 7, scope: !1282)
!1297 = !DILocation(line: 321, column: 22, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1262, file: !1, line: 320, column: 20)
!1299 = !DILocation(line: 321, column: 24, scope: !1298)
!1300 = !DILocation(line: 321, column: 26, scope: !1298)
!1301 = !DILocalVariable(name: "fs", arg: 1, scope: !1302, file: !1, line: 215, type: !427)
!1302 = distinct !DISubprogram(name: "freereg", scope: !1, file: !1, line: 215, type: !795, isLocal: true, isDefinition: true, scopeLine: 215, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1303)
!1303 = !{!1301, !1304}
!1304 = !DILocalVariable(name: "reg", arg: 2, scope: !1302, file: !1, line: 215, type: !93)
!1305 = !DILocation(line: 215, column: 33, scope: !1302, inlinedAt: !1306)
!1306 = distinct !DILocation(line: 321, column: 7, scope: !1298)
!1307 = !DILocation(line: 215, column: 41, scope: !1302, inlinedAt: !1306)
!1308 = !DILocation(line: 216, column: 8, scope: !1309, inlinedAt: !1306)
!1309 = distinct !DILexicalBlock(scope: !1302, file: !1, line: 216, column: 7)
!1310 = !DILocation(line: 216, column: 17, scope: !1309, inlinedAt: !1306)
!1311 = !DILocation(line: 216, column: 31, scope: !1309, inlinedAt: !1306)
!1312 = !DILocation(line: 216, column: 27, scope: !1309, inlinedAt: !1306)
!1313 = !DILocation(line: 216, column: 24, scope: !1309, inlinedAt: !1306)
!1314 = !DILocation(line: 216, column: 7, scope: !1302, inlinedAt: !1306)
!1315 = !DILocation(line: 217, column: 9, scope: !1316, inlinedAt: !1306)
!1316 = distinct !DILexicalBlock(scope: !1309, file: !1, line: 216, column: 40)
!1317 = !DILocation(line: 217, column: 16, scope: !1316, inlinedAt: !1306)
!1318 = !DILocation(line: 219, column: 3, scope: !1316, inlinedAt: !1306)
!1319 = !DILocation(line: 220, column: 1, scope: !1302, inlinedAt: !1306)
!1320 = !DILocation(line: 322, column: 26, scope: !1298)
!1321 = !DILocation(line: 215, column: 33, scope: !1302, inlinedAt: !1322)
!1322 = distinct !DILocation(line: 322, column: 7, scope: !1298)
!1323 = !DILocation(line: 215, column: 41, scope: !1302, inlinedAt: !1322)
!1324 = !DILocation(line: 216, column: 8, scope: !1309, inlinedAt: !1322)
!1325 = !DILocation(line: 216, column: 17, scope: !1309, inlinedAt: !1322)
!1326 = !DILocation(line: 216, column: 31, scope: !1309, inlinedAt: !1322)
!1327 = !DILocation(line: 216, column: 27, scope: !1309, inlinedAt: !1322)
!1328 = !DILocation(line: 216, column: 24, scope: !1309, inlinedAt: !1322)
!1329 = !DILocation(line: 216, column: 7, scope: !1302, inlinedAt: !1322)
!1330 = !DILocation(line: 217, column: 9, scope: !1316, inlinedAt: !1322)
!1331 = !DILocation(line: 217, column: 16, scope: !1316, inlinedAt: !1322)
!1332 = !DILocation(line: 323, column: 61, scope: !1298)
!1333 = !DILocation(line: 219, column: 3, scope: !1316, inlinedAt: !1322)
!1334 = !DILocation(line: 220, column: 1, scope: !1302, inlinedAt: !1322)
!1335 = !DILocation(line: 323, column: 74, scope: !1298)
!1336 = !DILocation(line: 804, column: 30, scope: !571, inlinedAt: !1337)
!1337 = distinct !DILocation(line: 323, column: 21, scope: !1298)
!1338 = !DILocation(line: 804, column: 41, scope: !571, inlinedAt: !1337)
!1339 = !DILocation(line: 804, column: 48, scope: !571, inlinedAt: !1337)
!1340 = !DILocation(line: 804, column: 55, scope: !571, inlinedAt: !1337)
!1341 = !DILocation(line: 804, column: 62, scope: !571, inlinedAt: !1337)
!1342 = !DILocation(line: 808, column: 24, scope: !571, inlinedAt: !1337)
!1343 = !DILocation(line: 808, column: 52, scope: !571, inlinedAt: !1337)
!1344 = !DILocation(line: 808, column: 56, scope: !571, inlinedAt: !1337)
!1345 = !DILocation(line: 808, column: 10, scope: !571, inlinedAt: !1337)
!1346 = !DILocation(line: 808, column: 3, scope: !571, inlinedAt: !1337)
!1347 = !DILocation(line: 323, column: 19, scope: !1298)
!1348 = !DILocation(line: 324, column: 12, scope: !1298)
!1349 = !DILocation(line: 325, column: 7, scope: !1298)
!1350 = !DILocation(line: 294, column: 10, scope: !1242, inlinedAt: !1351)
!1351 = distinct !DILocation(line: 329, column: 7, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1262, file: !1, line: 328, column: 17)
!1353 = !DILocation(line: 295, column: 19, scope: !1242, inlinedAt: !1351)
!1354 = !DILocation(line: 295, column: 17, scope: !1242, inlinedAt: !1351)
!1355 = !DILocation(line: 296, column: 3, scope: !1242, inlinedAt: !1351)
!1356 = !DILocation(line: 298, column: 5, scope: !1247, inlinedAt: !1351)
!1357 = !DILocation(line: 299, column: 10, scope: !1247, inlinedAt: !1351)
!1358 = !DILocation(line: 300, column: 3, scope: !1247, inlinedAt: !1351)
!1359 = !DILocation(line: 301, column: 1, scope: !1230, inlinedAt: !1351)
!1360 = !DILocation(line: 330, column: 7, scope: !1352)
!1361 = !DILocation(line: 334, column: 1, scope: !1252)
!1362 = distinct !DISubprogram(name: "luaK_exp2nextreg", scope: !1, file: !1, line: 414, type: !1231, isLocal: false, isDefinition: true, scopeLine: 414, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1363)
!1363 = !{!1364, !1365}
!1364 = !DILocalVariable(name: "fs", arg: 1, scope: !1362, file: !1, line: 414, type: !427)
!1365 = !DILocalVariable(name: "e", arg: 2, scope: !1362, file: !1, line: 414, type: !1167)
!1366 = !DILocation(line: 414, column: 35, scope: !1362)
!1367 = !DILocation(line: 414, column: 48, scope: !1362)
!1368 = !DILocation(line: 415, column: 3, scope: !1362)
!1369 = !DILocalVariable(name: "fs", arg: 1, scope: !1370, file: !1, line: 223, type: !427)
!1370 = distinct !DISubprogram(name: "freeexp", scope: !1, file: !1, line: 223, type: !1231, isLocal: true, isDefinition: true, scopeLine: 223, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1371)
!1371 = !{!1369, !1372}
!1372 = !DILocalVariable(name: "e", arg: 2, scope: !1370, file: !1, line: 223, type: !1167)
!1373 = !DILocation(line: 223, column: 33, scope: !1370, inlinedAt: !1374)
!1374 = distinct !DILocation(line: 416, column: 3, scope: !1362)
!1375 = !DILocation(line: 223, column: 46, scope: !1370, inlinedAt: !1374)
!1376 = !DILocation(line: 224, column: 10, scope: !1377, inlinedAt: !1374)
!1377 = distinct !DILexicalBlock(scope: !1370, file: !1, line: 224, column: 7)
!1378 = !DILocation(line: 224, column: 12, scope: !1377, inlinedAt: !1374)
!1379 = !DILocation(line: 224, column: 7, scope: !1370, inlinedAt: !1374)
!1380 = !DILocation(line: 225, column: 20, scope: !1377, inlinedAt: !1374)
!1381 = !DILocation(line: 225, column: 24, scope: !1377, inlinedAt: !1374)
!1382 = !DILocation(line: 215, column: 33, scope: !1302, inlinedAt: !1383)
!1383 = distinct !DILocation(line: 225, column: 5, scope: !1377, inlinedAt: !1374)
!1384 = !DILocation(line: 215, column: 41, scope: !1302, inlinedAt: !1383)
!1385 = !DILocation(line: 216, column: 8, scope: !1309, inlinedAt: !1383)
!1386 = !DILocation(line: 216, column: 17, scope: !1309, inlinedAt: !1383)
!1387 = !DILocation(line: 216, column: 31, scope: !1309, inlinedAt: !1383)
!1388 = !DILocation(line: 216, column: 27, scope: !1309, inlinedAt: !1383)
!1389 = !DILocation(line: 216, column: 24, scope: !1309, inlinedAt: !1383)
!1390 = !DILocation(line: 216, column: 7, scope: !1302, inlinedAt: !1383)
!1391 = !DILocation(line: 217, column: 9, scope: !1316, inlinedAt: !1383)
!1392 = !DILocation(line: 217, column: 16, scope: !1316, inlinedAt: !1383)
!1393 = !DILocation(line: 219, column: 3, scope: !1316, inlinedAt: !1383)
!1394 = !DILocation(line: 220, column: 1, scope: !1302, inlinedAt: !1383)
!1395 = !DILocation(line: 225, column: 5, scope: !1377, inlinedAt: !1374)
!1396 = !DILocation(line: 226, column: 1, scope: !1370, inlinedAt: !1374)
!1397 = !DILocation(line: 209, column: 35, scope: !1036, inlinedAt: !1398)
!1398 = distinct !DILocation(line: 417, column: 3, scope: !1362)
!1399 = !DILocation(line: 209, column: 43, scope: !1036, inlinedAt: !1398)
!1400 = !DILocation(line: 199, column: 34, scope: !1006, inlinedAt: !1401)
!1401 = distinct !DILocation(line: 210, column: 3, scope: !1036, inlinedAt: !1398)
!1402 = !DILocation(line: 199, column: 42, scope: !1006, inlinedAt: !1401)
!1403 = !DILocation(line: 200, column: 22, scope: !1006, inlinedAt: !1401)
!1404 = !DILocation(line: 200, column: 30, scope: !1006, inlinedAt: !1401)
!1405 = !DILocation(line: 200, column: 7, scope: !1006, inlinedAt: !1401)
!1406 = !DILocation(line: 201, column: 22, scope: !1018, inlinedAt: !1401)
!1407 = !DILocation(line: 201, column: 25, scope: !1018, inlinedAt: !1401)
!1408 = !DILocation(line: 201, column: 18, scope: !1018, inlinedAt: !1401)
!1409 = !DILocation(line: 201, column: 16, scope: !1018, inlinedAt: !1401)
!1410 = !DILocation(line: 201, column: 7, scope: !1006, inlinedAt: !1401)
!1411 = !DILocation(line: 202, column: 18, scope: !1025, inlinedAt: !1401)
!1412 = !DILocation(line: 202, column: 9, scope: !1026, inlinedAt: !1401)
!1413 = !DILocation(line: 203, column: 28, scope: !1025, inlinedAt: !1401)
!1414 = !DILocation(line: 203, column: 7, scope: !1025, inlinedAt: !1401)
!1415 = !DILocation(line: 204, column: 9, scope: !1026, inlinedAt: !1401)
!1416 = !DILocation(line: 204, column: 12, scope: !1026, inlinedAt: !1401)
!1417 = !DILocation(line: 211, column: 15, scope: !1036, inlinedAt: !1398)
!1418 = !DILocation(line: 204, column: 27, scope: !1026, inlinedAt: !1401)
!1419 = !DILocation(line: 204, column: 25, scope: !1026, inlinedAt: !1401)
!1420 = !DILocation(line: 205, column: 3, scope: !1026, inlinedAt: !1401)
!1421 = !DILocation(line: 206, column: 1, scope: !1006, inlinedAt: !1401)
!1422 = !DILocation(line: 212, column: 1, scope: !1036, inlinedAt: !1398)
!1423 = !DILocation(line: 418, column: 30, scope: !1362)
!1424 = !DILocation(line: 418, column: 3, scope: !1362)
!1425 = !DILocation(line: 419, column: 1, scope: !1362)
!1426 = distinct !DISubprogram(name: "exp2reg", scope: !1, file: !1, line: 390, type: !1165, isLocal: true, isDefinition: true, scopeLine: 390, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1427)
!1427 = !{!1428, !1429, !1430, !1431, !1434, !1435, !1436}
!1428 = !DILocalVariable(name: "fs", arg: 1, scope: !1426, file: !1, line: 390, type: !427)
!1429 = !DILocalVariable(name: "e", arg: 2, scope: !1426, file: !1, line: 390, type: !1167)
!1430 = !DILocalVariable(name: "reg", arg: 3, scope: !1426, file: !1, line: 390, type: !93)
!1431 = !DILocalVariable(name: "final", scope: !1432, file: !1, line: 395, type: !93)
!1432 = distinct !DILexicalBlock(scope: !1433, file: !1, line: 394, column: 20)
!1433 = distinct !DILexicalBlock(scope: !1426, file: !1, line: 394, column: 7)
!1434 = !DILocalVariable(name: "p_f", scope: !1432, file: !1, line: 396, type: !93)
!1435 = !DILocalVariable(name: "p_t", scope: !1432, file: !1, line: 397, type: !93)
!1436 = !DILocalVariable(name: "fj", scope: !1437, file: !1, line: 399, type: !93)
!1437 = distinct !DILexicalBlock(scope: !1438, file: !1, line: 398, column: 55)
!1438 = distinct !DILexicalBlock(scope: !1432, file: !1, line: 398, column: 9)
!1439 = !DILocation(line: 390, column: 33, scope: !1426)
!1440 = !DILocation(line: 390, column: 46, scope: !1426)
!1441 = !DILocation(line: 390, column: 53, scope: !1426)
!1442 = !DILocation(line: 391, column: 3, scope: !1426)
!1443 = !DILocation(line: 392, column: 10, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1426, file: !1, line: 392, column: 7)
!1445 = !DILocation(line: 392, column: 12, scope: !1444)
!1446 = !DILocation(line: 0, scope: !1433)
!1447 = !DILocation(line: 392, column: 7, scope: !1426)
!1448 = !DILocation(line: 393, column: 31, scope: !1444)
!1449 = !DILocation(line: 393, column: 35, scope: !1444)
!1450 = !DILocation(line: 185, column: 30, scope: !636, inlinedAt: !1451)
!1451 = distinct !DILocation(line: 393, column: 5, scope: !1444)
!1452 = !DILocation(line: 185, column: 39, scope: !636, inlinedAt: !1451)
!1453 = !DILocation(line: 185, column: 47, scope: !636, inlinedAt: !1451)
!1454 = !DILocation(line: 186, column: 10, scope: !645, inlinedAt: !1451)
!1455 = !DILocation(line: 186, column: 7, scope: !636, inlinedAt: !1451)
!1456 = !DILocation(line: 187, column: 12, scope: !644, inlinedAt: !1451)
!1457 = !DILocation(line: 187, column: 16, scope: !644, inlinedAt: !1451)
!1458 = !DILocation(line: 187, column: 12, scope: !645, inlinedAt: !1451)
!1459 = !DILocation(line: 101, column: 16, scope: !655, inlinedAt: !1460)
!1460 = distinct !DILocation(line: 192, column: 20, scope: !643, inlinedAt: !1451)
!1461 = !DILocation(line: 188, column: 9, scope: !644, inlinedAt: !1451)
!1462 = !DILocation(line: 188, column: 5, scope: !644, inlinedAt: !1451)
!1463 = !DILocation(line: 0, scope: !643, inlinedAt: !1451)
!1464 = !DILocation(line: 190, column: 9, scope: !643, inlinedAt: !1451)
!1465 = !DILocation(line: 100, column: 32, scope: !655, inlinedAt: !1460)
!1466 = !DILocation(line: 100, column: 40, scope: !655, inlinedAt: !1460)
!1467 = !DILocation(line: 101, column: 7, scope: !655, inlinedAt: !1460)
!1468 = !DILocation(line: 102, column: 14, scope: !669, inlinedAt: !1460)
!1469 = !DILocation(line: 105, column: 15, scope: !669, inlinedAt: !1460)
!1470 = !DILocation(line: 105, column: 18, scope: !669, inlinedAt: !1460)
!1471 = !DILocation(line: 102, column: 7, scope: !655, inlinedAt: !1460)
!1472 = !DILocation(line: 106, column: 1, scope: !655, inlinedAt: !1460)
!1473 = !DILocation(line: 191, column: 9, scope: !643, inlinedAt: !1451)
!1474 = !DILocation(line: 192, column: 39, scope: !643, inlinedAt: !1451)
!1475 = !DILocation(line: 192, column: 5, scope: !643, inlinedAt: !1451)
!1476 = !DILocation(line: 80, column: 33, scope: !681, inlinedAt: !1477)
!1477 = distinct !DILocation(line: 194, column: 5, scope: !643, inlinedAt: !1451)
!1478 = !DILocation(line: 80, column: 41, scope: !681, inlinedAt: !1477)
!1479 = !DILocation(line: 80, column: 49, scope: !681, inlinedAt: !1477)
!1480 = !DILocation(line: 81, column: 16, scope: !681, inlinedAt: !1477)
!1481 = !DILocation(line: 82, column: 20, scope: !681, inlinedAt: !1477)
!1482 = !DILocation(line: 82, column: 7, scope: !681, inlinedAt: !1477)
!1483 = !DILocation(line: 84, column: 7, scope: !695, inlinedAt: !1477)
!1484 = !DILocation(line: 84, column: 19, scope: !695, inlinedAt: !1477)
!1485 = !DILocation(line: 84, column: 7, scope: !681, inlinedAt: !1477)
!1486 = !DILocation(line: 85, column: 26, scope: !695, inlinedAt: !1477)
!1487 = !DILocation(line: 85, column: 5, scope: !695, inlinedAt: !1477)
!1488 = !DILocation(line: 86, column: 3, scope: !681, inlinedAt: !1477)
!1489 = !DILocation(line: 87, column: 1, scope: !681, inlinedAt: !1477)
!1490 = !DILocation(line: 196, column: 1, scope: !636, inlinedAt: !1451)
!1491 = !DILocation(line: 393, column: 5, scope: !1444)
!1492 = !DILocation(line: 394, column: 7, scope: !1433)
!1493 = !{!1194, !526, i64 16}
!1494 = !{!1194, !526, i64 20}
!1495 = !DILocation(line: 394, column: 7, scope: !1426)
!1496 = !DILocation(line: 396, column: 9, scope: !1432)
!1497 = !DILocation(line: 397, column: 9, scope: !1432)
!1498 = !DILocalVariable(name: "fs", arg: 1, scope: !1499, file: !1, line: 122, type: !427)
!1499 = distinct !DISubprogram(name: "need_value", scope: !1, file: !1, line: 122, type: !656, isLocal: true, isDefinition: true, scopeLine: 122, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1500)
!1500 = !{!1498, !1501, !1502}
!1501 = !DILocalVariable(name: "list", arg: 2, scope: !1499, file: !1, line: 122, type: !93)
!1502 = !DILocalVariable(name: "i", scope: !1503, file: !1, line: 124, type: !90)
!1503 = distinct !DILexicalBlock(scope: !1504, file: !1, line: 123, column: 53)
!1504 = distinct !DILexicalBlock(scope: !1505, file: !1, line: 123, column: 3)
!1505 = distinct !DILexicalBlock(scope: !1499, file: !1, line: 123, column: 3)
!1506 = !DILocation(line: 122, column: 35, scope: !1499, inlinedAt: !1507)
!1507 = distinct !DILocation(line: 398, column: 9, scope: !1438)
!1508 = !DILocation(line: 122, column: 43, scope: !1499, inlinedAt: !1507)
!1509 = !DILocation(line: 123, column: 15, scope: !1504, inlinedAt: !1507)
!1510 = !DILocation(line: 123, column: 3, scope: !1505, inlinedAt: !1507)
!1511 = !DILocation(line: 109, column: 48, scope: !895, inlinedAt: !1512)
!1512 = distinct !DILocation(line: 124, column: 22, scope: !1503, inlinedAt: !1507)
!1513 = !DILocation(line: 109, column: 56, scope: !895, inlinedAt: !1512)
!1514 = !DILocation(line: 110, column: 22, scope: !895, inlinedAt: !1512)
!1515 = !DILocation(line: 110, column: 16, scope: !895, inlinedAt: !1512)
!1516 = !DILocation(line: 111, column: 10, scope: !906, inlinedAt: !1512)
!1517 = !DILocation(line: 111, column: 15, scope: !906, inlinedAt: !1512)
!1518 = !DILocation(line: 111, column: 18, scope: !906, inlinedAt: !1512)
!1519 = !DILocation(line: 111, column: 7, scope: !895, inlinedAt: !1512)
!1520 = !DILocation(line: 124, column: 21, scope: !1503, inlinedAt: !1507)
!1521 = !DILocation(line: 114, column: 5, scope: !906, inlinedAt: !1512)
!1522 = !DILocation(line: 115, column: 1, scope: !895, inlinedAt: !1512)
!1523 = !DILocation(line: 124, column: 17, scope: !1503, inlinedAt: !1507)
!1524 = !DILocation(line: 125, column: 9, scope: !1525, inlinedAt: !1507)
!1525 = distinct !DILexicalBlock(scope: !1503, file: !1, line: 125, column: 9)
!1526 = !DILocation(line: 125, column: 23, scope: !1525, inlinedAt: !1507)
!1527 = !DILocation(line: 100, column: 32, scope: !655, inlinedAt: !1528)
!1528 = distinct !DILocation(line: 123, column: 34, scope: !1504, inlinedAt: !1507)
!1529 = !DILocation(line: 100, column: 40, scope: !655, inlinedAt: !1528)
!1530 = !DILocation(line: 101, column: 16, scope: !655, inlinedAt: !1528)
!1531 = !DILocation(line: 101, column: 7, scope: !655, inlinedAt: !1528)
!1532 = !DILocation(line: 102, column: 14, scope: !669, inlinedAt: !1528)
!1533 = !DILocation(line: 105, column: 15, scope: !669, inlinedAt: !1528)
!1534 = !DILocation(line: 105, column: 18, scope: !669, inlinedAt: !1528)
!1535 = !DILocation(line: 106, column: 1, scope: !655, inlinedAt: !1528)
!1536 = !DILocation(line: 128, column: 1, scope: !1499, inlinedAt: !1507)
!1537 = !DILocation(line: 122, column: 35, scope: !1499, inlinedAt: !1538)
!1538 = distinct !DILocation(line: 398, column: 33, scope: !1438)
!1539 = !DILocation(line: 122, column: 43, scope: !1499, inlinedAt: !1538)
!1540 = !DILocation(line: 123, column: 15, scope: !1504, inlinedAt: !1538)
!1541 = !DILocation(line: 123, column: 3, scope: !1505, inlinedAt: !1538)
!1542 = !DILocation(line: 109, column: 48, scope: !895, inlinedAt: !1543)
!1543 = distinct !DILocation(line: 124, column: 22, scope: !1503, inlinedAt: !1538)
!1544 = !DILocation(line: 109, column: 56, scope: !895, inlinedAt: !1543)
!1545 = !DILocation(line: 110, column: 22, scope: !895, inlinedAt: !1543)
!1546 = !DILocation(line: 110, column: 16, scope: !895, inlinedAt: !1543)
!1547 = !DILocation(line: 111, column: 10, scope: !906, inlinedAt: !1543)
!1548 = !DILocation(line: 111, column: 15, scope: !906, inlinedAt: !1543)
!1549 = !DILocation(line: 111, column: 18, scope: !906, inlinedAt: !1543)
!1550 = !DILocation(line: 111, column: 7, scope: !895, inlinedAt: !1543)
!1551 = !DILocation(line: 124, column: 21, scope: !1503, inlinedAt: !1538)
!1552 = !DILocation(line: 114, column: 5, scope: !906, inlinedAt: !1543)
!1553 = !DILocation(line: 115, column: 1, scope: !895, inlinedAt: !1543)
!1554 = !DILocation(line: 124, column: 17, scope: !1503, inlinedAt: !1538)
!1555 = !DILocation(line: 125, column: 9, scope: !1525, inlinedAt: !1538)
!1556 = !DILocation(line: 125, column: 23, scope: !1525, inlinedAt: !1538)
!1557 = !DILocation(line: 100, column: 32, scope: !655, inlinedAt: !1558)
!1558 = distinct !DILocation(line: 123, column: 34, scope: !1504, inlinedAt: !1538)
!1559 = !DILocation(line: 100, column: 40, scope: !655, inlinedAt: !1558)
!1560 = !DILocation(line: 101, column: 16, scope: !655, inlinedAt: !1558)
!1561 = !DILocation(line: 101, column: 7, scope: !655, inlinedAt: !1558)
!1562 = !DILocation(line: 102, column: 14, scope: !669, inlinedAt: !1558)
!1563 = !DILocation(line: 105, column: 15, scope: !669, inlinedAt: !1558)
!1564 = !DILocation(line: 105, column: 18, scope: !669, inlinedAt: !1558)
!1565 = !DILocation(line: 106, column: 1, scope: !655, inlinedAt: !1558)
!1566 = !DILocation(line: 128, column: 1, scope: !1499, inlinedAt: !1538)
!1567 = !DILocation(line: 95, column: 24, scope: !773, inlinedAt: !1568)
!1568 = distinct !DILocation(line: 404, column: 13, scope: !1432)
!1569 = !DILocation(line: 95, column: 7, scope: !773, inlinedAt: !1568)
!1570 = !DILocation(line: 398, column: 9, scope: !1432)
!1571 = !DILocation(line: 399, column: 20, scope: !1437)
!1572 = !DILocation(line: 399, column: 22, scope: !1437)
!1573 = !DILocation(line: 399, column: 16, scope: !1437)
!1574 = !DILocation(line: 399, column: 43, scope: !1437)
!1575 = !DILocation(line: 399, column: 11, scope: !1437)
!1576 = !DILocalVariable(name: "fs", arg: 1, scope: !1577, file: !1, line: 337, type: !427)
!1577 = distinct !DISubprogram(name: "code_label", scope: !1, file: !1, line: 337, type: !1578, isLocal: true, isDefinition: true, scopeLine: 337, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1580)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{!93, !427, !93, !93, !93}
!1580 = !{!1576, !1581, !1582, !1583}
!1581 = !DILocalVariable(name: "A", arg: 2, scope: !1577, file: !1, line: 337, type: !93)
!1582 = !DILocalVariable(name: "b", arg: 3, scope: !1577, file: !1, line: 337, type: !93)
!1583 = !DILocalVariable(name: "jump", arg: 4, scope: !1577, file: !1, line: 337, type: !93)
!1584 = !DILocation(line: 337, column: 35, scope: !1577, inlinedAt: !1585)
!1585 = distinct !DILocation(line: 400, column: 13, scope: !1437)
!1586 = !DILocation(line: 337, column: 43, scope: !1577, inlinedAt: !1585)
!1587 = !DILocation(line: 337, column: 50, scope: !1577, inlinedAt: !1585)
!1588 = !DILocation(line: 337, column: 57, scope: !1577, inlinedAt: !1585)
!1589 = !DILocation(line: 94, column: 31, scope: !773, inlinedAt: !1590)
!1590 = distinct !DILocation(line: 338, column: 3, scope: !1577, inlinedAt: !1585)
!1591 = !DILocation(line: 95, column: 24, scope: !773, inlinedAt: !1590)
!1592 = !DILocation(line: 95, column: 7, scope: !773, inlinedAt: !1590)
!1593 = !DILocation(line: 95, column: 18, scope: !773, inlinedAt: !1590)
!1594 = !DILocation(line: 96, column: 3, scope: !773, inlinedAt: !1590)
!1595 = !DILocation(line: 804, column: 30, scope: !571, inlinedAt: !1596)
!1596 = distinct !DILocation(line: 339, column: 10, scope: !1577, inlinedAt: !1585)
!1597 = !DILocation(line: 804, column: 41, scope: !571, inlinedAt: !1596)
!1598 = !DILocation(line: 804, column: 48, scope: !571, inlinedAt: !1596)
!1599 = !DILocation(line: 804, column: 55, scope: !571, inlinedAt: !1596)
!1600 = !DILocation(line: 804, column: 62, scope: !571, inlinedAt: !1596)
!1601 = !DILocation(line: 808, column: 24, scope: !571, inlinedAt: !1596)
!1602 = !DILocation(line: 808, column: 52, scope: !571, inlinedAt: !1596)
!1603 = !DILocation(line: 808, column: 56, scope: !571, inlinedAt: !1596)
!1604 = !DILocation(line: 808, column: 10, scope: !571, inlinedAt: !1596)
!1605 = !DILocation(line: 808, column: 3, scope: !571, inlinedAt: !1596)
!1606 = !DILocation(line: 339, column: 3, scope: !1577, inlinedAt: !1585)
!1607 = !DILocation(line: 337, column: 35, scope: !1577, inlinedAt: !1608)
!1608 = distinct !DILocation(line: 401, column: 13, scope: !1437)
!1609 = !DILocation(line: 337, column: 43, scope: !1577, inlinedAt: !1608)
!1610 = !DILocation(line: 337, column: 50, scope: !1577, inlinedAt: !1608)
!1611 = !DILocation(line: 337, column: 57, scope: !1577, inlinedAt: !1608)
!1612 = !DILocation(line: 94, column: 31, scope: !773, inlinedAt: !1613)
!1613 = distinct !DILocation(line: 338, column: 3, scope: !1577, inlinedAt: !1608)
!1614 = !DILocation(line: 95, column: 24, scope: !773, inlinedAt: !1613)
!1615 = !DILocation(line: 95, column: 18, scope: !773, inlinedAt: !1613)
!1616 = !DILocation(line: 96, column: 3, scope: !773, inlinedAt: !1613)
!1617 = !DILocation(line: 804, column: 30, scope: !571, inlinedAt: !1618)
!1618 = distinct !DILocation(line: 339, column: 10, scope: !1577, inlinedAt: !1608)
!1619 = !DILocation(line: 804, column: 41, scope: !571, inlinedAt: !1618)
!1620 = !DILocation(line: 804, column: 48, scope: !571, inlinedAt: !1618)
!1621 = !DILocation(line: 804, column: 55, scope: !571, inlinedAt: !1618)
!1622 = !DILocation(line: 804, column: 62, scope: !571, inlinedAt: !1618)
!1623 = !DILocation(line: 808, column: 24, scope: !571, inlinedAt: !1618)
!1624 = !DILocation(line: 808, column: 52, scope: !571, inlinedAt: !1618)
!1625 = !DILocation(line: 808, column: 56, scope: !571, inlinedAt: !1618)
!1626 = !DILocation(line: 808, column: 10, scope: !571, inlinedAt: !1618)
!1627 = !DILocation(line: 808, column: 3, scope: !571, inlinedAt: !1618)
!1628 = !DILocation(line: 339, column: 3, scope: !1577, inlinedAt: !1608)
!1629 = !DILocation(line: 179, column: 35, scope: !794, inlinedAt: !1630)
!1630 = distinct !DILocation(line: 402, column: 7, scope: !1437)
!1631 = !DILocation(line: 179, column: 43, scope: !794, inlinedAt: !1630)
!1632 = !DILocation(line: 94, column: 31, scope: !773, inlinedAt: !1633)
!1633 = distinct !DILocation(line: 180, column: 3, scope: !794, inlinedAt: !1630)
!1634 = !DILocation(line: 95, column: 24, scope: !773, inlinedAt: !1633)
!1635 = !DILocation(line: 95, column: 18, scope: !773, inlinedAt: !1633)
!1636 = !DILocation(line: 96, column: 3, scope: !773, inlinedAt: !1633)
!1637 = !DILocation(line: 181, column: 24, scope: !794, inlinedAt: !1630)
!1638 = !DILocation(line: 185, column: 30, scope: !636, inlinedAt: !1639)
!1639 = distinct !DILocation(line: 181, column: 3, scope: !794, inlinedAt: !1630)
!1640 = !DILocation(line: 185, column: 39, scope: !636, inlinedAt: !1639)
!1641 = !DILocation(line: 185, column: 47, scope: !636, inlinedAt: !1639)
!1642 = !DILocation(line: 186, column: 10, scope: !645, inlinedAt: !1639)
!1643 = !DILocation(line: 186, column: 7, scope: !636, inlinedAt: !1639)
!1644 = !DILocation(line: 187, column: 12, scope: !644, inlinedAt: !1639)
!1645 = !DILocation(line: 187, column: 16, scope: !644, inlinedAt: !1639)
!1646 = !DILocation(line: 187, column: 12, scope: !645, inlinedAt: !1639)
!1647 = !DILocation(line: 101, column: 16, scope: !655, inlinedAt: !1648)
!1648 = distinct !DILocation(line: 192, column: 20, scope: !643, inlinedAt: !1639)
!1649 = !DILocation(line: 188, column: 9, scope: !644, inlinedAt: !1639)
!1650 = !DILocation(line: 188, column: 5, scope: !644, inlinedAt: !1639)
!1651 = !DILocation(line: 0, scope: !643, inlinedAt: !1639)
!1652 = !DILocation(line: 190, column: 9, scope: !643, inlinedAt: !1639)
!1653 = !DILocation(line: 100, column: 32, scope: !655, inlinedAt: !1648)
!1654 = !DILocation(line: 100, column: 40, scope: !655, inlinedAt: !1648)
!1655 = !DILocation(line: 101, column: 7, scope: !655, inlinedAt: !1648)
!1656 = !DILocation(line: 102, column: 14, scope: !669, inlinedAt: !1648)
!1657 = !DILocation(line: 105, column: 15, scope: !669, inlinedAt: !1648)
!1658 = !DILocation(line: 105, column: 18, scope: !669, inlinedAt: !1648)
!1659 = !DILocation(line: 102, column: 7, scope: !655, inlinedAt: !1648)
!1660 = !DILocation(line: 106, column: 1, scope: !655, inlinedAt: !1648)
!1661 = !DILocation(line: 191, column: 9, scope: !643, inlinedAt: !1639)
!1662 = !DILocation(line: 192, column: 39, scope: !643, inlinedAt: !1639)
!1663 = !DILocation(line: 192, column: 5, scope: !643, inlinedAt: !1639)
!1664 = !DILocation(line: 80, column: 33, scope: !681, inlinedAt: !1665)
!1665 = distinct !DILocation(line: 194, column: 5, scope: !643, inlinedAt: !1639)
!1666 = !DILocation(line: 80, column: 41, scope: !681, inlinedAt: !1665)
!1667 = !DILocation(line: 80, column: 49, scope: !681, inlinedAt: !1665)
!1668 = !DILocation(line: 81, column: 16, scope: !681, inlinedAt: !1665)
!1669 = !DILocation(line: 82, column: 20, scope: !681, inlinedAt: !1665)
!1670 = !DILocation(line: 82, column: 7, scope: !681, inlinedAt: !1665)
!1671 = !DILocation(line: 84, column: 7, scope: !695, inlinedAt: !1665)
!1672 = !DILocation(line: 84, column: 19, scope: !695, inlinedAt: !1665)
!1673 = !DILocation(line: 84, column: 7, scope: !681, inlinedAt: !1665)
!1674 = !DILocation(line: 85, column: 26, scope: !695, inlinedAt: !1665)
!1675 = !DILocation(line: 85, column: 5, scope: !695, inlinedAt: !1665)
!1676 = !DILocation(line: 86, column: 3, scope: !681, inlinedAt: !1665)
!1677 = !DILocation(line: 87, column: 1, scope: !681, inlinedAt: !1665)
!1678 = !DILocation(line: 196, column: 1, scope: !636, inlinedAt: !1639)
!1679 = !DILocation(line: 182, column: 1, scope: !794, inlinedAt: !1630)
!1680 = !DILocation(line: 405, column: 25, scope: !1432)
!1681 = !DILocation(line: 403, column: 5, scope: !1437)
!1682 = !DILocation(line: 0, scope: !1432)
!1683 = !DILocation(line: 94, column: 31, scope: !773, inlinedAt: !1568)
!1684 = !DILocation(line: 95, column: 18, scope: !773, inlinedAt: !1568)
!1685 = !DILocation(line: 96, column: 3, scope: !773, inlinedAt: !1568)
!1686 = !DILocation(line: 395, column: 9, scope: !1432)
!1687 = !DILocation(line: 150, column: 38, scope: !851, inlinedAt: !1688)
!1688 = distinct !DILocation(line: 405, column: 5, scope: !1432)
!1689 = !DILocation(line: 150, column: 46, scope: !851, inlinedAt: !1688)
!1690 = !DILocation(line: 150, column: 56, scope: !851, inlinedAt: !1688)
!1691 = !DILocation(line: 150, column: 69, scope: !851, inlinedAt: !1688)
!1692 = !DILocation(line: 151, column: 31, scope: !851, inlinedAt: !1688)
!1693 = !DILocation(line: 152, column: 15, scope: !851, inlinedAt: !1688)
!1694 = !DILocation(line: 152, column: 3, scope: !851, inlinedAt: !1688)
!1695 = !DILocation(line: 100, column: 32, scope: !655, inlinedAt: !1696)
!1696 = distinct !DILocation(line: 153, column: 16, scope: !860, inlinedAt: !1688)
!1697 = !DILocation(line: 100, column: 40, scope: !655, inlinedAt: !1696)
!1698 = !DILocation(line: 101, column: 16, scope: !655, inlinedAt: !1696)
!1699 = !DILocation(line: 101, column: 7, scope: !655, inlinedAt: !1696)
!1700 = !DILocation(line: 102, column: 14, scope: !669, inlinedAt: !1696)
!1701 = !DILocation(line: 105, column: 15, scope: !669, inlinedAt: !1696)
!1702 = !DILocation(line: 105, column: 18, scope: !669, inlinedAt: !1696)
!1703 = !DILocation(line: 102, column: 7, scope: !655, inlinedAt: !1696)
!1704 = !DILocation(line: 106, column: 1, scope: !655, inlinedAt: !1696)
!1705 = !DILocation(line: 153, column: 9, scope: !860, inlinedAt: !1688)
!1706 = !DILocation(line: 131, column: 37, scope: !882, inlinedAt: !1707)
!1707 = distinct !DILocation(line: 154, column: 9, scope: !891, inlinedAt: !1688)
!1708 = !DILocation(line: 131, column: 45, scope: !882, inlinedAt: !1707)
!1709 = !DILocation(line: 131, column: 55, scope: !882, inlinedAt: !1707)
!1710 = !DILocation(line: 109, column: 48, scope: !895, inlinedAt: !1711)
!1711 = distinct !DILocation(line: 132, column: 20, scope: !882, inlinedAt: !1707)
!1712 = !DILocation(line: 109, column: 56, scope: !895, inlinedAt: !1711)
!1713 = !DILocation(line: 110, column: 16, scope: !895, inlinedAt: !1711)
!1714 = !DILocation(line: 111, column: 10, scope: !906, inlinedAt: !1711)
!1715 = !DILocation(line: 111, column: 15, scope: !906, inlinedAt: !1711)
!1716 = !DILocation(line: 111, column: 18, scope: !906, inlinedAt: !1711)
!1717 = !DILocation(line: 111, column: 7, scope: !895, inlinedAt: !1711)
!1718 = !DILocation(line: 114, column: 5, scope: !906, inlinedAt: !1711)
!1719 = !DILocation(line: 133, column: 7, scope: !913, inlinedAt: !1707)
!1720 = !DILocation(line: 0, scope: !906, inlinedAt: !1711)
!1721 = !DILocation(line: 115, column: 1, scope: !895, inlinedAt: !1711)
!1722 = !DILocation(line: 132, column: 16, scope: !882, inlinedAt: !1707)
!1723 = !DILocation(line: 133, column: 22, scope: !913, inlinedAt: !1707)
!1724 = !DILocation(line: 133, column: 7, scope: !882, inlinedAt: !1707)
!1725 = !DILocation(line: 135, column: 31, scope: !920, inlinedAt: !1707)
!1726 = !DILocation(line: 135, column: 28, scope: !920, inlinedAt: !1707)
!1727 = !DILocation(line: 135, column: 21, scope: !920, inlinedAt: !1707)
!1728 = !DILocation(line: 136, column: 5, scope: !920, inlinedAt: !1707)
!1729 = !DILocation(line: 138, column: 10, scope: !920, inlinedAt: !1707)
!1730 = !DILocation(line: 0, scope: !920, inlinedAt: !1707)
!1731 = !DILocation(line: 141, column: 1, scope: !882, inlinedAt: !1707)
!1732 = !DILocation(line: 80, column: 33, scope: !681, inlinedAt: !1733)
!1733 = distinct !DILocation(line: 155, column: 7, scope: !891, inlinedAt: !1688)
!1734 = !DILocation(line: 80, column: 41, scope: !681, inlinedAt: !1733)
!1735 = !DILocation(line: 80, column: 49, scope: !681, inlinedAt: !1733)
!1736 = !DILocation(line: 81, column: 16, scope: !681, inlinedAt: !1733)
!1737 = !DILocation(line: 82, column: 20, scope: !681, inlinedAt: !1733)
!1738 = !DILocation(line: 82, column: 7, scope: !681, inlinedAt: !1733)
!1739 = !DILocation(line: 84, column: 7, scope: !695, inlinedAt: !1733)
!1740 = !DILocation(line: 84, column: 19, scope: !695, inlinedAt: !1733)
!1741 = !DILocation(line: 84, column: 7, scope: !681, inlinedAt: !1733)
!1742 = !DILocation(line: 85, column: 26, scope: !695, inlinedAt: !1733)
!1743 = !DILocation(line: 85, column: 5, scope: !695, inlinedAt: !1733)
!1744 = !DILocation(line: 80, column: 33, scope: !681, inlinedAt: !1745)
!1745 = distinct !DILocation(line: 157, column: 7, scope: !891, inlinedAt: !1688)
!1746 = !DILocation(line: 80, column: 41, scope: !681, inlinedAt: !1745)
!1747 = !DILocation(line: 80, column: 49, scope: !681, inlinedAt: !1745)
!1748 = !DILocation(line: 81, column: 16, scope: !681, inlinedAt: !1745)
!1749 = !DILocation(line: 82, column: 20, scope: !681, inlinedAt: !1745)
!1750 = !DILocation(line: 82, column: 7, scope: !681, inlinedAt: !1745)
!1751 = !DILocation(line: 84, column: 7, scope: !695, inlinedAt: !1745)
!1752 = !DILocation(line: 84, column: 19, scope: !695, inlinedAt: !1745)
!1753 = !DILocation(line: 84, column: 7, scope: !681, inlinedAt: !1745)
!1754 = !DILocation(line: 85, column: 26, scope: !695, inlinedAt: !1745)
!1755 = !DILocation(line: 85, column: 5, scope: !695, inlinedAt: !1745)
!1756 = !DILocation(line: 86, column: 3, scope: !681, inlinedAt: !1745)
!1757 = !DILocation(line: 87, column: 1, scope: !681, inlinedAt: !1745)
!1758 = !DILocation(line: 160, column: 1, scope: !851, inlinedAt: !1688)
!1759 = !DILocation(line: 406, column: 25, scope: !1432)
!1760 = !DILocation(line: 150, column: 38, scope: !851, inlinedAt: !1761)
!1761 = distinct !DILocation(line: 406, column: 5, scope: !1432)
!1762 = !DILocation(line: 150, column: 46, scope: !851, inlinedAt: !1761)
!1763 = !DILocation(line: 150, column: 56, scope: !851, inlinedAt: !1761)
!1764 = !DILocation(line: 150, column: 69, scope: !851, inlinedAt: !1761)
!1765 = !DILocation(line: 151, column: 31, scope: !851, inlinedAt: !1761)
!1766 = !DILocation(line: 152, column: 15, scope: !851, inlinedAt: !1761)
!1767 = !DILocation(line: 152, column: 3, scope: !851, inlinedAt: !1761)
!1768 = !DILocation(line: 100, column: 32, scope: !655, inlinedAt: !1769)
!1769 = distinct !DILocation(line: 153, column: 16, scope: !860, inlinedAt: !1761)
!1770 = !DILocation(line: 100, column: 40, scope: !655, inlinedAt: !1769)
!1771 = !DILocation(line: 101, column: 16, scope: !655, inlinedAt: !1769)
!1772 = !DILocation(line: 101, column: 7, scope: !655, inlinedAt: !1769)
!1773 = !DILocation(line: 102, column: 14, scope: !669, inlinedAt: !1769)
!1774 = !DILocation(line: 105, column: 15, scope: !669, inlinedAt: !1769)
!1775 = !DILocation(line: 105, column: 18, scope: !669, inlinedAt: !1769)
!1776 = !DILocation(line: 102, column: 7, scope: !655, inlinedAt: !1769)
!1777 = !DILocation(line: 106, column: 1, scope: !655, inlinedAt: !1769)
!1778 = !DILocation(line: 153, column: 9, scope: !860, inlinedAt: !1761)
!1779 = !DILocation(line: 131, column: 37, scope: !882, inlinedAt: !1780)
!1780 = distinct !DILocation(line: 154, column: 9, scope: !891, inlinedAt: !1761)
!1781 = !DILocation(line: 131, column: 45, scope: !882, inlinedAt: !1780)
!1782 = !DILocation(line: 131, column: 55, scope: !882, inlinedAt: !1780)
!1783 = !DILocation(line: 109, column: 48, scope: !895, inlinedAt: !1784)
!1784 = distinct !DILocation(line: 132, column: 20, scope: !882, inlinedAt: !1780)
!1785 = !DILocation(line: 109, column: 56, scope: !895, inlinedAt: !1784)
!1786 = !DILocation(line: 110, column: 16, scope: !895, inlinedAt: !1784)
!1787 = !DILocation(line: 111, column: 10, scope: !906, inlinedAt: !1784)
!1788 = !DILocation(line: 111, column: 15, scope: !906, inlinedAt: !1784)
!1789 = !DILocation(line: 111, column: 18, scope: !906, inlinedAt: !1784)
!1790 = !DILocation(line: 111, column: 7, scope: !895, inlinedAt: !1784)
!1791 = !DILocation(line: 114, column: 5, scope: !906, inlinedAt: !1784)
!1792 = !DILocation(line: 133, column: 7, scope: !913, inlinedAt: !1780)
!1793 = !DILocation(line: 0, scope: !906, inlinedAt: !1784)
!1794 = !DILocation(line: 115, column: 1, scope: !895, inlinedAt: !1784)
!1795 = !DILocation(line: 132, column: 16, scope: !882, inlinedAt: !1780)
!1796 = !DILocation(line: 133, column: 22, scope: !913, inlinedAt: !1780)
!1797 = !DILocation(line: 133, column: 7, scope: !882, inlinedAt: !1780)
!1798 = !DILocation(line: 135, column: 31, scope: !920, inlinedAt: !1780)
!1799 = !DILocation(line: 135, column: 28, scope: !920, inlinedAt: !1780)
!1800 = !DILocation(line: 135, column: 21, scope: !920, inlinedAt: !1780)
!1801 = !DILocation(line: 136, column: 5, scope: !920, inlinedAt: !1780)
!1802 = !DILocation(line: 138, column: 10, scope: !920, inlinedAt: !1780)
!1803 = !DILocation(line: 0, scope: !920, inlinedAt: !1780)
!1804 = !DILocation(line: 141, column: 1, scope: !882, inlinedAt: !1780)
!1805 = !DILocation(line: 80, column: 33, scope: !681, inlinedAt: !1806)
!1806 = distinct !DILocation(line: 155, column: 7, scope: !891, inlinedAt: !1761)
!1807 = !DILocation(line: 80, column: 41, scope: !681, inlinedAt: !1806)
!1808 = !DILocation(line: 80, column: 49, scope: !681, inlinedAt: !1806)
!1809 = !DILocation(line: 81, column: 16, scope: !681, inlinedAt: !1806)
!1810 = !DILocation(line: 82, column: 20, scope: !681, inlinedAt: !1806)
!1811 = !DILocation(line: 82, column: 7, scope: !681, inlinedAt: !1806)
!1812 = !DILocation(line: 84, column: 7, scope: !695, inlinedAt: !1806)
!1813 = !DILocation(line: 84, column: 19, scope: !695, inlinedAt: !1806)
!1814 = !DILocation(line: 84, column: 7, scope: !681, inlinedAt: !1806)
!1815 = !DILocation(line: 85, column: 26, scope: !695, inlinedAt: !1806)
!1816 = !DILocation(line: 85, column: 5, scope: !695, inlinedAt: !1806)
!1817 = !DILocation(line: 80, column: 33, scope: !681, inlinedAt: !1818)
!1818 = distinct !DILocation(line: 157, column: 7, scope: !891, inlinedAt: !1761)
!1819 = !DILocation(line: 80, column: 41, scope: !681, inlinedAt: !1818)
!1820 = !DILocation(line: 80, column: 49, scope: !681, inlinedAt: !1818)
!1821 = !DILocation(line: 81, column: 16, scope: !681, inlinedAt: !1818)
!1822 = !DILocation(line: 82, column: 20, scope: !681, inlinedAt: !1818)
!1823 = !DILocation(line: 82, column: 7, scope: !681, inlinedAt: !1818)
!1824 = !DILocation(line: 84, column: 7, scope: !695, inlinedAt: !1818)
!1825 = !DILocation(line: 84, column: 19, scope: !695, inlinedAt: !1818)
!1826 = !DILocation(line: 84, column: 7, scope: !681, inlinedAt: !1818)
!1827 = !DILocation(line: 85, column: 26, scope: !695, inlinedAt: !1818)
!1828 = !DILocation(line: 85, column: 5, scope: !695, inlinedAt: !1818)
!1829 = !DILocation(line: 86, column: 3, scope: !681, inlinedAt: !1818)
!1830 = !DILocation(line: 87, column: 1, scope: !681, inlinedAt: !1818)
!1831 = !DILocation(line: 160, column: 1, scope: !851, inlinedAt: !1761)
!1832 = !DILocation(line: 407, column: 3, scope: !1432)
!1833 = !DILocation(line: 408, column: 15, scope: !1426)
!1834 = !DILocation(line: 408, column: 8, scope: !1426)
!1835 = !DILocation(line: 409, column: 6, scope: !1426)
!1836 = !DILocation(line: 409, column: 10, scope: !1426)
!1837 = !DILocation(line: 409, column: 15, scope: !1426)
!1838 = !DILocation(line: 410, column: 8, scope: !1426)
!1839 = !DILocation(line: 411, column: 1, scope: !1426)
!1840 = distinct !DISubprogram(name: "luaK_exp2anyreg", scope: !1, file: !1, line: 422, type: !1841, isLocal: false, isDefinition: true, scopeLine: 422, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1843)
!1841 = !DISubroutineType(types: !1842)
!1842 = !{!93, !427, !1167}
!1843 = !{!1844, !1845}
!1844 = !DILocalVariable(name: "fs", arg: 1, scope: !1840, file: !1, line: 422, type: !427)
!1845 = !DILocalVariable(name: "e", arg: 2, scope: !1840, file: !1, line: 422, type: !1167)
!1846 = !DILocation(line: 422, column: 33, scope: !1840)
!1847 = !DILocation(line: 422, column: 46, scope: !1840)
!1848 = !DILocation(line: 423, column: 3, scope: !1840)
!1849 = !DILocation(line: 424, column: 10, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1840, file: !1, line: 424, column: 7)
!1851 = !DILocation(line: 424, column: 12, scope: !1850)
!1852 = !DILocation(line: 424, column: 7, scope: !1840)
!1853 = !DILocation(line: 432, column: 13, scope: !1840)
!1854 = !DILocation(line: 432, column: 17, scope: !1840)
!1855 = !DILocation(line: 425, column: 10, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1857, file: !1, line: 425, column: 9)
!1857 = distinct !DILexicalBlock(scope: !1850, file: !1, line: 424, column: 26)
!1858 = !DILocation(line: 0, scope: !1856)
!1859 = !DILocation(line: 425, column: 9, scope: !1857)
!1860 = !DILocation(line: 426, column: 28, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1857, file: !1, line: 426, column: 9)
!1862 = !DILocation(line: 426, column: 24, scope: !1861)
!1863 = !DILocation(line: 426, column: 21, scope: !1861)
!1864 = !DILocation(line: 426, column: 9, scope: !1857)
!1865 = !DILocation(line: 427, column: 7, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1861, file: !1, line: 426, column: 37)
!1867 = !DILocation(line: 428, column: 7, scope: !1866)
!1868 = !DILocation(line: 431, column: 3, scope: !1840)
!1869 = !DILocation(line: 432, column: 3, scope: !1840)
!1870 = !DILocation(line: 0, scope: !1866)
!1871 = !DILocation(line: 433, column: 1, scope: !1840)
!1872 = distinct !DISubprogram(name: "luaK_exp2val", scope: !1, file: !1, line: 436, type: !1231, isLocal: false, isDefinition: true, scopeLine: 436, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1873)
!1873 = !{!1874, !1875}
!1874 = !DILocalVariable(name: "fs", arg: 1, scope: !1872, file: !1, line: 436, type: !427)
!1875 = !DILocalVariable(name: "e", arg: 2, scope: !1872, file: !1, line: 436, type: !1167)
!1876 = !DILocation(line: 436, column: 31, scope: !1872)
!1877 = !DILocation(line: 436, column: 44, scope: !1872)
!1878 = !DILocation(line: 437, column: 7, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1872, file: !1, line: 437, column: 7)
!1880 = !DILocation(line: 437, column: 7, scope: !1872)
!1881 = !DILocation(line: 422, column: 33, scope: !1840, inlinedAt: !1882)
!1882 = distinct !DILocation(line: 438, column: 5, scope: !1879)
!1883 = !DILocation(line: 422, column: 46, scope: !1840, inlinedAt: !1882)
!1884 = !DILocation(line: 423, column: 3, scope: !1840, inlinedAt: !1882)
!1885 = !DILocation(line: 424, column: 10, scope: !1850, inlinedAt: !1882)
!1886 = !DILocation(line: 424, column: 12, scope: !1850, inlinedAt: !1882)
!1887 = !DILocation(line: 424, column: 7, scope: !1840, inlinedAt: !1882)
!1888 = !DILocation(line: 425, column: 10, scope: !1856, inlinedAt: !1882)
!1889 = !DILocation(line: 0, scope: !1856, inlinedAt: !1882)
!1890 = !DILocation(line: 425, column: 9, scope: !1857, inlinedAt: !1882)
!1891 = !DILocation(line: 426, column: 28, scope: !1861, inlinedAt: !1882)
!1892 = !DILocation(line: 426, column: 24, scope: !1861, inlinedAt: !1882)
!1893 = !DILocation(line: 426, column: 21, scope: !1861, inlinedAt: !1882)
!1894 = !DILocation(line: 426, column: 9, scope: !1857, inlinedAt: !1882)
!1895 = !DILocation(line: 427, column: 7, scope: !1866, inlinedAt: !1882)
!1896 = !DILocation(line: 428, column: 7, scope: !1866, inlinedAt: !1882)
!1897 = !DILocation(line: 431, column: 3, scope: !1840, inlinedAt: !1882)
!1898 = !DILocation(line: 432, column: 3, scope: !1840, inlinedAt: !1882)
!1899 = !DILocation(line: 433, column: 1, scope: !1840, inlinedAt: !1882)
!1900 = !DILocation(line: 438, column: 5, scope: !1879)
!1901 = !DILocation(line: 440, column: 5, scope: !1879)
!1902 = !DILocation(line: 441, column: 1, scope: !1872)
!1903 = distinct !DISubprogram(name: "luaK_exp2RK", scope: !1, file: !1, line: 444, type: !1841, isLocal: false, isDefinition: true, scopeLine: 444, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1904)
!1904 = !{!1905, !1906}
!1905 = !DILocalVariable(name: "fs", arg: 1, scope: !1903, file: !1, line: 444, type: !427)
!1906 = !DILocalVariable(name: "e", arg: 2, scope: !1903, file: !1, line: 444, type: !1167)
!1907 = !DILocation(line: 444, column: 29, scope: !1903)
!1908 = !DILocation(line: 444, column: 42, scope: !1903)
!1909 = !DILocation(line: 436, column: 31, scope: !1872, inlinedAt: !1910)
!1910 = distinct !DILocation(line: 445, column: 3, scope: !1903)
!1911 = !DILocation(line: 436, column: 44, scope: !1872, inlinedAt: !1910)
!1912 = !DILocation(line: 437, column: 7, scope: !1879, inlinedAt: !1910)
!1913 = !DILocation(line: 0, scope: !1903)
!1914 = !DILocation(line: 437, column: 7, scope: !1872, inlinedAt: !1910)
!1915 = !DILocation(line: 422, column: 33, scope: !1840, inlinedAt: !1916)
!1916 = distinct !DILocation(line: 438, column: 5, scope: !1879, inlinedAt: !1910)
!1917 = !DILocation(line: 422, column: 46, scope: !1840, inlinedAt: !1916)
!1918 = !DILocation(line: 424, column: 10, scope: !1850, inlinedAt: !1916)
!1919 = !DILocation(line: 424, column: 12, scope: !1850, inlinedAt: !1916)
!1920 = !DILocation(line: 424, column: 7, scope: !1840, inlinedAt: !1916)
!1921 = !DILocation(line: 425, column: 10, scope: !1856, inlinedAt: !1916)
!1922 = !DILocation(line: 0, scope: !1856, inlinedAt: !1916)
!1923 = !DILocation(line: 425, column: 9, scope: !1857, inlinedAt: !1916)
!1924 = !DILocation(line: 426, column: 28, scope: !1861, inlinedAt: !1916)
!1925 = !DILocation(line: 426, column: 24, scope: !1861, inlinedAt: !1916)
!1926 = !DILocation(line: 426, column: 21, scope: !1861, inlinedAt: !1916)
!1927 = !DILocation(line: 426, column: 9, scope: !1857, inlinedAt: !1916)
!1928 = !DILocation(line: 427, column: 7, scope: !1866, inlinedAt: !1916)
!1929 = !DILocation(line: 428, column: 7, scope: !1866, inlinedAt: !1916)
!1930 = !DILocation(line: 431, column: 3, scope: !1840, inlinedAt: !1916)
!1931 = !DILocation(line: 432, column: 3, scope: !1840, inlinedAt: !1916)
!1932 = !DILocation(line: 433, column: 1, scope: !1840, inlinedAt: !1916)
!1933 = !DILocation(line: 438, column: 5, scope: !1879, inlinedAt: !1910)
!1934 = !DILocation(line: 441, column: 1, scope: !1872, inlinedAt: !1910)
!1935 = !DILocation(line: 446, column: 14, scope: !1903)
!1936 = !DILocation(line: 446, column: 3, scope: !1903)
!1937 = !DILocation(line: 451, column: 15, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1939, file: !1, line: 451, column: 11)
!1939 = distinct !DILexicalBlock(scope: !1940, file: !1, line: 450, column: 16)
!1940 = distinct !DILexicalBlock(scope: !1903, file: !1, line: 446, column: 17)
!1941 = !DILocation(line: 451, column: 18, scope: !1938)
!1942 = !DILocation(line: 451, column: 11, scope: !1939)
!1943 = !DILocation(line: 452, column: 23, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1938, file: !1, line: 451, column: 33)
!1945 = !DILocalVariable(name: "fs", arg: 1, scope: !1946, file: !1, line: 271, type: !427)
!1946 = distinct !DISubprogram(name: "nilK", scope: !1, file: !1, line: 271, type: !606, isLocal: true, isDefinition: true, scopeLine: 271, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1947)
!1947 = !{!1945, !1948, !1949, !1950}
!1948 = !DILocalVariable(name: "k", scope: !1946, file: !1, line: 272, type: !156)
!1949 = !DILocalVariable(name: "v", scope: !1946, file: !1, line: 272, type: !156)
!1950 = !DILocalVariable(name: "i_o", scope: !1951, file: !1, line: 275, type: !155)
!1951 = distinct !DILexicalBlock(scope: !1946, file: !1, line: 275, column: 3)
!1952 = !DILocation(line: 271, column: 29, scope: !1946, inlinedAt: !1953)
!1953 = distinct !DILocation(line: 452, column: 41, scope: !1944)
!1954 = !DILocation(line: 272, column: 3, scope: !1946, inlinedAt: !1953)
!1955 = !DILocation(line: 273, column: 3, scope: !1946, inlinedAt: !1953)
!1956 = !DILocation(line: 275, column: 3, scope: !1951, inlinedAt: !1953)
!1957 = !DILocation(line: 272, column: 10, scope: !1946, inlinedAt: !1953)
!1958 = !DILocation(line: 272, column: 13, scope: !1946, inlinedAt: !1953)
!1959 = !DILocation(line: 276, column: 10, scope: !1946, inlinedAt: !1953)
!1960 = !DILocation(line: 277, column: 1, scope: !1946, inlinedAt: !1953)
!1961 = !DILocation(line: 453, column: 63, scope: !1944)
!1962 = !DILocation(line: 257, column: 30, scope: !1147, inlinedAt: !1963)
!1963 = distinct !DILocation(line: 453, column: 41, scope: !1944)
!1964 = !DILocation(line: 257, column: 45, scope: !1147, inlinedAt: !1963)
!1965 = !DILocation(line: 258, column: 3, scope: !1147, inlinedAt: !1963)
!1966 = !DILocation(line: 259, column: 3, scope: !1155, inlinedAt: !1963)
!1967 = !DILocation(line: 258, column: 10, scope: !1147, inlinedAt: !1963)
!1968 = !DILocation(line: 260, column: 10, scope: !1147, inlinedAt: !1963)
!1969 = !DILocation(line: 261, column: 1, scope: !1147, inlinedAt: !1963)
!1970 = !DILocation(line: 453, column: 23, scope: !1944)
!1971 = !DILocation(line: 454, column: 57, scope: !1944)
!1972 = !DILocalVariable(name: "fs", arg: 1, scope: !1973, file: !1, line: 264, type: !427)
!1973 = distinct !DISubprogram(name: "boolK", scope: !1, file: !1, line: 264, type: !656, isLocal: true, isDefinition: true, scopeLine: 264, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1974)
!1974 = !{!1972, !1975, !1976, !1977}
!1975 = !DILocalVariable(name: "b", arg: 2, scope: !1973, file: !1, line: 264, type: !93)
!1976 = !DILocalVariable(name: "o", scope: !1973, file: !1, line: 265, type: !156)
!1977 = !DILocalVariable(name: "i_o", scope: !1978, file: !1, line: 266, type: !155)
!1978 = distinct !DILexicalBlock(scope: !1973, file: !1, line: 266, column: 3)
!1979 = !DILocation(line: 264, column: 30, scope: !1973, inlinedAt: !1980)
!1980 = distinct !DILocation(line: 454, column: 41, scope: !1944)
!1981 = !DILocation(line: 264, column: 38, scope: !1973, inlinedAt: !1980)
!1982 = !DILocation(line: 265, column: 3, scope: !1973, inlinedAt: !1980)
!1983 = !DILocation(line: 266, column: 3, scope: !1978, inlinedAt: !1980)
!1984 = !DILocation(line: 265, column: 10, scope: !1973, inlinedAt: !1980)
!1985 = !DILocation(line: 267, column: 10, scope: !1973, inlinedAt: !1980)
!1986 = !DILocation(line: 268, column: 1, scope: !1973, inlinedAt: !1980)
!1987 = !DILocation(line: 0, scope: !1944)
!1988 = !DILocation(line: 452, column: 12, scope: !1944)
!1989 = !DILocation(line: 452, column: 16, scope: !1944)
!1990 = !DILocation(line: 452, column: 21, scope: !1944)
!1991 = !DILocation(line: 455, column: 14, scope: !1944)
!1992 = !DILocation(line: 456, column: 16, scope: !1944)
!1993 = !DILocation(line: 456, column: 9, scope: !1944)
!1994 = !DILocation(line: 461, column: 14, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1996, file: !1, line: 461, column: 11)
!1996 = distinct !DILexicalBlock(scope: !1940, file: !1, line: 460, column: 14)
!1997 = !DILocation(line: 461, column: 18, scope: !1995)
!1998 = !DILocation(line: 461, column: 23, scope: !1995)
!1999 = !DILocation(line: 461, column: 11, scope: !1996)
!2000 = !DILocation(line: 462, column: 16, scope: !1995)
!2001 = !DILocation(line: 462, column: 9, scope: !1995)
!2002 = !DILocation(line: 422, column: 33, scope: !1840, inlinedAt: !2003)
!2003 = distinct !DILocation(line: 468, column: 10, scope: !1903)
!2004 = !DILocation(line: 422, column: 46, scope: !1840, inlinedAt: !2003)
!2005 = !DILocation(line: 423, column: 3, scope: !1840, inlinedAt: !2003)
!2006 = !DILocation(line: 424, column: 10, scope: !1850, inlinedAt: !2003)
!2007 = !DILocation(line: 424, column: 12, scope: !1850, inlinedAt: !2003)
!2008 = !DILocation(line: 424, column: 7, scope: !1840, inlinedAt: !2003)
!2009 = !DILocation(line: 432, column: 13, scope: !1840, inlinedAt: !2003)
!2010 = !DILocation(line: 432, column: 17, scope: !1840, inlinedAt: !2003)
!2011 = !DILocation(line: 425, column: 10, scope: !1856, inlinedAt: !2003)
!2012 = !DILocation(line: 0, scope: !1856, inlinedAt: !2003)
!2013 = !DILocation(line: 425, column: 9, scope: !1857, inlinedAt: !2003)
!2014 = !DILocation(line: 426, column: 28, scope: !1861, inlinedAt: !2003)
!2015 = !DILocation(line: 426, column: 24, scope: !1861, inlinedAt: !2003)
!2016 = !DILocation(line: 426, column: 21, scope: !1861, inlinedAt: !2003)
!2017 = !DILocation(line: 426, column: 9, scope: !1857, inlinedAt: !2003)
!2018 = !DILocation(line: 427, column: 7, scope: !1866, inlinedAt: !2003)
!2019 = !DILocation(line: 428, column: 7, scope: !1866, inlinedAt: !2003)
!2020 = !DILocation(line: 431, column: 3, scope: !1840, inlinedAt: !2003)
!2021 = !DILocation(line: 432, column: 3, scope: !1840, inlinedAt: !2003)
!2022 = !DILocation(line: 433, column: 1, scope: !1840, inlinedAt: !2003)
!2023 = !DILocation(line: 468, column: 3, scope: !1903)
!2024 = !DILocation(line: 469, column: 1, scope: !1903)
!2025 = distinct !DISubprogram(name: "luaK_storevar", scope: !1, file: !1, line: 472, type: !2026, isLocal: false, isDefinition: true, scopeLine: 472, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2028)
!2026 = !DISubroutineType(types: !2027)
!2027 = !{null, !427, !1167, !1167}
!2028 = !{!2029, !2030, !2031, !2032, !2035, !2037}
!2029 = !DILocalVariable(name: "fs", arg: 1, scope: !2025, file: !1, line: 472, type: !427)
!2030 = !DILocalVariable(name: "var", arg: 2, scope: !2025, file: !1, line: 472, type: !1167)
!2031 = !DILocalVariable(name: "ex", arg: 3, scope: !2025, file: !1, line: 472, type: !1167)
!2032 = !DILocalVariable(name: "e", scope: !2033, file: !1, line: 480, type: !93)
!2033 = distinct !DILexicalBlock(scope: !2034, file: !1, line: 479, column: 18)
!2034 = distinct !DILexicalBlock(scope: !2025, file: !1, line: 473, column: 19)
!2035 = !DILocalVariable(name: "e", scope: !2036, file: !1, line: 485, type: !93)
!2036 = distinct !DILexicalBlock(scope: !2034, file: !1, line: 484, column: 19)
!2037 = !DILocalVariable(name: "e", scope: !2038, file: !1, line: 490, type: !93)
!2038 = distinct !DILexicalBlock(scope: !2034, file: !1, line: 489, column: 20)
!2039 = !DILocation(line: 472, column: 32, scope: !2025)
!2040 = !DILocation(line: 472, column: 45, scope: !2025)
!2041 = !DILocation(line: 472, column: 59, scope: !2025)
!2042 = !DILocation(line: 473, column: 16, scope: !2025)
!2043 = !DILocation(line: 473, column: 3, scope: !2025)
!2044 = !DILocation(line: 223, column: 33, scope: !1370, inlinedAt: !2045)
!2045 = distinct !DILocation(line: 475, column: 7, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2034, file: !1, line: 474, column: 18)
!2047 = !DILocation(line: 223, column: 46, scope: !1370, inlinedAt: !2045)
!2048 = !DILocation(line: 224, column: 10, scope: !1377, inlinedAt: !2045)
!2049 = !DILocation(line: 224, column: 12, scope: !1377, inlinedAt: !2045)
!2050 = !DILocation(line: 224, column: 7, scope: !1370, inlinedAt: !2045)
!2051 = !DILocation(line: 225, column: 20, scope: !1377, inlinedAt: !2045)
!2052 = !DILocation(line: 225, column: 24, scope: !1377, inlinedAt: !2045)
!2053 = !DILocation(line: 215, column: 33, scope: !1302, inlinedAt: !2054)
!2054 = distinct !DILocation(line: 225, column: 5, scope: !1377, inlinedAt: !2045)
!2055 = !DILocation(line: 215, column: 41, scope: !1302, inlinedAt: !2054)
!2056 = !DILocation(line: 216, column: 8, scope: !1309, inlinedAt: !2054)
!2057 = !DILocation(line: 216, column: 17, scope: !1309, inlinedAt: !2054)
!2058 = !DILocation(line: 216, column: 31, scope: !1309, inlinedAt: !2054)
!2059 = !DILocation(line: 216, column: 27, scope: !1309, inlinedAt: !2054)
!2060 = !DILocation(line: 216, column: 24, scope: !1309, inlinedAt: !2054)
!2061 = !DILocation(line: 216, column: 7, scope: !1302, inlinedAt: !2054)
!2062 = !DILocation(line: 217, column: 9, scope: !1316, inlinedAt: !2054)
!2063 = !DILocation(line: 217, column: 16, scope: !1316, inlinedAt: !2054)
!2064 = !DILocation(line: 219, column: 3, scope: !1316, inlinedAt: !2054)
!2065 = !DILocation(line: 220, column: 1, scope: !1302, inlinedAt: !2054)
!2066 = !DILocation(line: 225, column: 5, scope: !1377, inlinedAt: !2045)
!2067 = !DILocation(line: 226, column: 1, scope: !1370, inlinedAt: !2045)
!2068 = !DILocation(line: 476, column: 28, scope: !2046)
!2069 = !DILocation(line: 476, column: 32, scope: !2046)
!2070 = !DILocation(line: 476, column: 7, scope: !2046)
!2071 = !DILocation(line: 477, column: 7, scope: !2046)
!2072 = !DILocation(line: 422, column: 33, scope: !1840, inlinedAt: !2073)
!2073 = distinct !DILocation(line: 480, column: 15, scope: !2033)
!2074 = !DILocation(line: 422, column: 46, scope: !1840, inlinedAt: !2073)
!2075 = !DILocation(line: 423, column: 3, scope: !1840, inlinedAt: !2073)
!2076 = !DILocation(line: 424, column: 10, scope: !1850, inlinedAt: !2073)
!2077 = !DILocation(line: 424, column: 12, scope: !1850, inlinedAt: !2073)
!2078 = !DILocation(line: 424, column: 7, scope: !1840, inlinedAt: !2073)
!2079 = !DILocation(line: 432, column: 13, scope: !1840, inlinedAt: !2073)
!2080 = !DILocation(line: 432, column: 17, scope: !1840, inlinedAt: !2073)
!2081 = !DILocation(line: 425, column: 10, scope: !1856, inlinedAt: !2073)
!2082 = !DILocation(line: 0, scope: !1856, inlinedAt: !2073)
!2083 = !DILocation(line: 425, column: 9, scope: !1857, inlinedAt: !2073)
!2084 = !DILocation(line: 426, column: 28, scope: !1861, inlinedAt: !2073)
!2085 = !DILocation(line: 426, column: 24, scope: !1861, inlinedAt: !2073)
!2086 = !DILocation(line: 426, column: 21, scope: !1861, inlinedAt: !2073)
!2087 = !DILocation(line: 426, column: 9, scope: !1857, inlinedAt: !2073)
!2088 = !DILocation(line: 427, column: 7, scope: !1866, inlinedAt: !2073)
!2089 = !DILocation(line: 428, column: 7, scope: !1866, inlinedAt: !2073)
!2090 = !DILocation(line: 431, column: 3, scope: !1840, inlinedAt: !2073)
!2091 = !DILocation(line: 432, column: 3, scope: !1840, inlinedAt: !2073)
!2092 = !DILocation(line: 0, scope: !2033)
!2093 = !DILocation(line: 433, column: 1, scope: !1840, inlinedAt: !2073)
!2094 = !DILocation(line: 480, column: 11, scope: !2033)
!2095 = !DILocation(line: 481, column: 45, scope: !2033)
!2096 = !DILocation(line: 481, column: 49, scope: !2033)
!2097 = !DILocation(line: 804, column: 30, scope: !571, inlinedAt: !2098)
!2098 = distinct !DILocation(line: 481, column: 7, scope: !2033)
!2099 = !DILocation(line: 804, column: 41, scope: !571, inlinedAt: !2098)
!2100 = !DILocation(line: 804, column: 48, scope: !571, inlinedAt: !2098)
!2101 = !DILocation(line: 804, column: 55, scope: !571, inlinedAt: !2098)
!2102 = !DILocation(line: 804, column: 62, scope: !571, inlinedAt: !2098)
!2103 = !DILocation(line: 808, column: 24, scope: !571, inlinedAt: !2098)
!2104 = !DILocation(line: 808, column: 52, scope: !571, inlinedAt: !2098)
!2105 = !DILocation(line: 808, column: 56, scope: !571, inlinedAt: !2098)
!2106 = !DILocation(line: 808, column: 10, scope: !571, inlinedAt: !2098)
!2107 = !DILocation(line: 422, column: 33, scope: !1840, inlinedAt: !2108)
!2108 = distinct !DILocation(line: 485, column: 15, scope: !2036)
!2109 = !DILocation(line: 422, column: 46, scope: !1840, inlinedAt: !2108)
!2110 = !DILocation(line: 423, column: 3, scope: !1840, inlinedAt: !2108)
!2111 = !DILocation(line: 424, column: 10, scope: !1850, inlinedAt: !2108)
!2112 = !DILocation(line: 424, column: 12, scope: !1850, inlinedAt: !2108)
!2113 = !DILocation(line: 424, column: 7, scope: !1840, inlinedAt: !2108)
!2114 = !DILocation(line: 432, column: 13, scope: !1840, inlinedAt: !2108)
!2115 = !DILocation(line: 432, column: 17, scope: !1840, inlinedAt: !2108)
!2116 = !DILocation(line: 425, column: 10, scope: !1856, inlinedAt: !2108)
!2117 = !DILocation(line: 0, scope: !1856, inlinedAt: !2108)
!2118 = !DILocation(line: 425, column: 9, scope: !1857, inlinedAt: !2108)
!2119 = !DILocation(line: 426, column: 28, scope: !1861, inlinedAt: !2108)
!2120 = !DILocation(line: 426, column: 24, scope: !1861, inlinedAt: !2108)
!2121 = !DILocation(line: 426, column: 21, scope: !1861, inlinedAt: !2108)
!2122 = !DILocation(line: 426, column: 9, scope: !1857, inlinedAt: !2108)
!2123 = !DILocation(line: 427, column: 7, scope: !1866, inlinedAt: !2108)
!2124 = !DILocation(line: 428, column: 7, scope: !1866, inlinedAt: !2108)
!2125 = !DILocation(line: 431, column: 3, scope: !1840, inlinedAt: !2108)
!2126 = !DILocation(line: 432, column: 3, scope: !1840, inlinedAt: !2108)
!2127 = !DILocation(line: 0, scope: !2036)
!2128 = !DILocation(line: 433, column: 1, scope: !1840, inlinedAt: !2108)
!2129 = !DILocation(line: 485, column: 11, scope: !2036)
!2130 = !DILocation(line: 486, column: 46, scope: !2036)
!2131 = !DILocation(line: 486, column: 50, scope: !2036)
!2132 = !DILocation(line: 812, column: 30, scope: !618, inlinedAt: !2133)
!2133 = distinct !DILocation(line: 486, column: 7, scope: !2036)
!2134 = !DILocation(line: 812, column: 41, scope: !618, inlinedAt: !2133)
!2135 = !DILocation(line: 812, column: 48, scope: !618, inlinedAt: !2133)
!2136 = !DILocation(line: 812, column: 64, scope: !618, inlinedAt: !2133)
!2137 = !DILocation(line: 815, column: 24, scope: !618, inlinedAt: !2133)
!2138 = !DILocation(line: 815, column: 50, scope: !618, inlinedAt: !2133)
!2139 = !DILocation(line: 815, column: 54, scope: !618, inlinedAt: !2133)
!2140 = !DILocation(line: 815, column: 10, scope: !618, inlinedAt: !2133)
!2141 = !DILocation(line: 490, column: 15, scope: !2038)
!2142 = !DILocation(line: 490, column: 11, scope: !2038)
!2143 = !DILocation(line: 491, column: 42, scope: !2038)
!2144 = !DILocation(line: 491, column: 44, scope: !2038)
!2145 = !DILocation(line: 491, column: 46, scope: !2038)
!2146 = !DILocation(line: 491, column: 61, scope: !2038)
!2147 = !DILocation(line: 804, column: 30, scope: !571, inlinedAt: !2148)
!2148 = distinct !DILocation(line: 491, column: 7, scope: !2038)
!2149 = !DILocation(line: 804, column: 41, scope: !571, inlinedAt: !2148)
!2150 = !DILocation(line: 804, column: 48, scope: !571, inlinedAt: !2148)
!2151 = !DILocation(line: 804, column: 55, scope: !571, inlinedAt: !2148)
!2152 = !DILocation(line: 804, column: 62, scope: !571, inlinedAt: !2148)
!2153 = !DILocation(line: 808, column: 24, scope: !571, inlinedAt: !2148)
!2154 = !DILocation(line: 808, column: 52, scope: !571, inlinedAt: !2148)
!2155 = !DILocation(line: 808, column: 56, scope: !571, inlinedAt: !2148)
!2156 = !DILocation(line: 808, column: 10, scope: !571, inlinedAt: !2148)
!2157 = !DILocation(line: 224, column: 10, scope: !1377, inlinedAt: !2158)
!2158 = distinct !DILocation(line: 499, column: 3, scope: !2025)
!2159 = !DILocation(line: 223, column: 33, scope: !1370, inlinedAt: !2158)
!2160 = !DILocation(line: 223, column: 46, scope: !1370, inlinedAt: !2158)
!2161 = !DILocation(line: 224, column: 12, scope: !1377, inlinedAt: !2158)
!2162 = !DILocation(line: 224, column: 7, scope: !1370, inlinedAt: !2158)
!2163 = !DILocation(line: 225, column: 20, scope: !1377, inlinedAt: !2158)
!2164 = !DILocation(line: 225, column: 24, scope: !1377, inlinedAt: !2158)
!2165 = !DILocation(line: 215, column: 33, scope: !1302, inlinedAt: !2166)
!2166 = distinct !DILocation(line: 225, column: 5, scope: !1377, inlinedAt: !2158)
!2167 = !DILocation(line: 215, column: 41, scope: !1302, inlinedAt: !2166)
!2168 = !DILocation(line: 216, column: 8, scope: !1309, inlinedAt: !2166)
!2169 = !DILocation(line: 216, column: 17, scope: !1309, inlinedAt: !2166)
!2170 = !DILocation(line: 216, column: 31, scope: !1309, inlinedAt: !2166)
!2171 = !DILocation(line: 216, column: 27, scope: !1309, inlinedAt: !2166)
!2172 = !DILocation(line: 216, column: 24, scope: !1309, inlinedAt: !2166)
!2173 = !DILocation(line: 216, column: 7, scope: !1302, inlinedAt: !2166)
!2174 = !DILocation(line: 217, column: 9, scope: !1316, inlinedAt: !2166)
!2175 = !DILocation(line: 217, column: 16, scope: !1316, inlinedAt: !2166)
!2176 = !DILocation(line: 219, column: 3, scope: !1316, inlinedAt: !2166)
!2177 = !DILocation(line: 220, column: 1, scope: !1302, inlinedAt: !2166)
!2178 = !DILocation(line: 225, column: 5, scope: !1377, inlinedAt: !2158)
!2179 = !DILocation(line: 226, column: 1, scope: !1370, inlinedAt: !2158)
!2180 = !DILocation(line: 500, column: 1, scope: !2025)
!2181 = distinct !DISubprogram(name: "luaK_self", scope: !1, file: !1, line: 503, type: !2026, isLocal: false, isDefinition: true, scopeLine: 503, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2182)
!2182 = !{!2183, !2184, !2185, !2186}
!2183 = !DILocalVariable(name: "fs", arg: 1, scope: !2181, file: !1, line: 503, type: !427)
!2184 = !DILocalVariable(name: "e", arg: 2, scope: !2181, file: !1, line: 503, type: !1167)
!2185 = !DILocalVariable(name: "key", arg: 3, scope: !2181, file: !1, line: 503, type: !1167)
!2186 = !DILocalVariable(name: "func", scope: !2181, file: !1, line: 504, type: !93)
!2187 = !DILocation(line: 503, column: 28, scope: !2181)
!2188 = !DILocation(line: 503, column: 41, scope: !2181)
!2189 = !DILocation(line: 503, column: 53, scope: !2181)
!2190 = !DILocation(line: 422, column: 33, scope: !1840, inlinedAt: !2191)
!2191 = distinct !DILocation(line: 505, column: 3, scope: !2181)
!2192 = !DILocation(line: 422, column: 46, scope: !1840, inlinedAt: !2191)
!2193 = !DILocation(line: 423, column: 3, scope: !1840, inlinedAt: !2191)
!2194 = !DILocation(line: 424, column: 10, scope: !1850, inlinedAt: !2191)
!2195 = !DILocation(line: 424, column: 12, scope: !1850, inlinedAt: !2191)
!2196 = !DILocation(line: 424, column: 7, scope: !1840, inlinedAt: !2191)
!2197 = !DILocation(line: 425, column: 10, scope: !1856, inlinedAt: !2191)
!2198 = !DILocation(line: 0, scope: !1856, inlinedAt: !2191)
!2199 = !DILocation(line: 425, column: 9, scope: !1857, inlinedAt: !2191)
!2200 = !DILocation(line: 426, column: 28, scope: !1861, inlinedAt: !2191)
!2201 = !DILocation(line: 426, column: 24, scope: !1861, inlinedAt: !2191)
!2202 = !DILocation(line: 426, column: 21, scope: !1861, inlinedAt: !2191)
!2203 = !DILocation(line: 426, column: 9, scope: !1857, inlinedAt: !2191)
!2204 = !DILocation(line: 427, column: 7, scope: !1866, inlinedAt: !2191)
!2205 = !DILocation(line: 428, column: 7, scope: !1866, inlinedAt: !2191)
!2206 = !DILocation(line: 431, column: 3, scope: !1840, inlinedAt: !2191)
!2207 = !DILocation(line: 432, column: 3, scope: !1840, inlinedAt: !2191)
!2208 = !DILocation(line: 433, column: 1, scope: !1840, inlinedAt: !2191)
!2209 = !DILocation(line: 223, column: 33, scope: !1370, inlinedAt: !2210)
!2210 = distinct !DILocation(line: 506, column: 3, scope: !2181)
!2211 = !DILocation(line: 223, column: 46, scope: !1370, inlinedAt: !2210)
!2212 = !DILocation(line: 224, column: 10, scope: !1377, inlinedAt: !2210)
!2213 = !DILocation(line: 224, column: 12, scope: !1377, inlinedAt: !2210)
!2214 = !DILocation(line: 224, column: 7, scope: !1370, inlinedAt: !2210)
!2215 = !DILocation(line: 225, column: 20, scope: !1377, inlinedAt: !2210)
!2216 = !DILocation(line: 225, column: 24, scope: !1377, inlinedAt: !2210)
!2217 = !DILocation(line: 215, column: 33, scope: !1302, inlinedAt: !2218)
!2218 = distinct !DILocation(line: 225, column: 5, scope: !1377, inlinedAt: !2210)
!2219 = !DILocation(line: 215, column: 41, scope: !1302, inlinedAt: !2218)
!2220 = !DILocation(line: 216, column: 8, scope: !1309, inlinedAt: !2218)
!2221 = !DILocation(line: 216, column: 17, scope: !1309, inlinedAt: !2218)
!2222 = !DILocation(line: 216, column: 31, scope: !1309, inlinedAt: !2218)
!2223 = !DILocation(line: 216, column: 27, scope: !1309, inlinedAt: !2218)
!2224 = !DILocation(line: 216, column: 24, scope: !1309, inlinedAt: !2218)
!2225 = !DILocation(line: 216, column: 7, scope: !1302, inlinedAt: !2218)
!2226 = !DILocation(line: 217, column: 9, scope: !1316, inlinedAt: !2218)
!2227 = !DILocation(line: 217, column: 16, scope: !1316, inlinedAt: !2218)
!2228 = !DILocation(line: 219, column: 3, scope: !1316, inlinedAt: !2218)
!2229 = !DILocation(line: 220, column: 1, scope: !1302, inlinedAt: !2218)
!2230 = !DILocation(line: 225, column: 5, scope: !1377, inlinedAt: !2210)
!2231 = !DILocation(line: 226, column: 1, scope: !1370, inlinedAt: !2210)
!2232 = !DILocation(line: 507, column: 14, scope: !2181)
!2233 = !DILocation(line: 504, column: 7, scope: !2181)
!2234 = !DILocation(line: 209, column: 35, scope: !1036, inlinedAt: !2235)
!2235 = distinct !DILocation(line: 508, column: 3, scope: !2181)
!2236 = !DILocation(line: 209, column: 43, scope: !1036, inlinedAt: !2235)
!2237 = !DILocation(line: 199, column: 34, scope: !1006, inlinedAt: !2238)
!2238 = distinct !DILocation(line: 210, column: 3, scope: !1036, inlinedAt: !2235)
!2239 = !DILocation(line: 199, column: 42, scope: !1006, inlinedAt: !2238)
!2240 = !DILocation(line: 200, column: 30, scope: !1006, inlinedAt: !2238)
!2241 = !DILocation(line: 200, column: 7, scope: !1006, inlinedAt: !2238)
!2242 = !DILocation(line: 201, column: 22, scope: !1018, inlinedAt: !2238)
!2243 = !DILocation(line: 201, column: 25, scope: !1018, inlinedAt: !2238)
!2244 = !DILocation(line: 201, column: 18, scope: !1018, inlinedAt: !2238)
!2245 = !DILocation(line: 201, column: 16, scope: !1018, inlinedAt: !2238)
!2246 = !DILocation(line: 201, column: 7, scope: !1006, inlinedAt: !2238)
!2247 = !DILocation(line: 202, column: 18, scope: !1025, inlinedAt: !2238)
!2248 = !DILocation(line: 202, column: 9, scope: !1026, inlinedAt: !2238)
!2249 = !DILocation(line: 203, column: 28, scope: !1025, inlinedAt: !2238)
!2250 = !DILocation(line: 203, column: 7, scope: !1025, inlinedAt: !2238)
!2251 = !DILocation(line: 204, column: 9, scope: !1026, inlinedAt: !2238)
!2252 = !DILocation(line: 204, column: 12, scope: !1026, inlinedAt: !2238)
!2253 = !DILocation(line: 211, column: 15, scope: !1036, inlinedAt: !2235)
!2254 = !DILocation(line: 204, column: 27, scope: !1026, inlinedAt: !2238)
!2255 = !DILocation(line: 204, column: 25, scope: !1026, inlinedAt: !2238)
!2256 = !DILocation(line: 205, column: 3, scope: !1026, inlinedAt: !2238)
!2257 = !DILocation(line: 206, column: 1, scope: !1006, inlinedAt: !2238)
!2258 = !DILocation(line: 212, column: 1, scope: !1036, inlinedAt: !2235)
!2259 = !DILocation(line: 509, column: 38, scope: !2181)
!2260 = !DILocation(line: 509, column: 42, scope: !2181)
!2261 = !DILocation(line: 509, column: 48, scope: !2181)
!2262 = !DILocation(line: 804, column: 30, scope: !571, inlinedAt: !2263)
!2263 = distinct !DILocation(line: 509, column: 3, scope: !2181)
!2264 = !DILocation(line: 804, column: 41, scope: !571, inlinedAt: !2263)
!2265 = !DILocation(line: 804, column: 48, scope: !571, inlinedAt: !2263)
!2266 = !DILocation(line: 804, column: 55, scope: !571, inlinedAt: !2263)
!2267 = !DILocation(line: 804, column: 62, scope: !571, inlinedAt: !2263)
!2268 = !DILocation(line: 808, column: 24, scope: !571, inlinedAt: !2263)
!2269 = !DILocation(line: 808, column: 52, scope: !571, inlinedAt: !2263)
!2270 = !DILocation(line: 808, column: 56, scope: !571, inlinedAt: !2263)
!2271 = !DILocation(line: 808, column: 10, scope: !571, inlinedAt: !2263)
!2272 = !DILocation(line: 808, column: 3, scope: !571, inlinedAt: !2263)
!2273 = !DILocation(line: 223, column: 33, scope: !1370, inlinedAt: !2274)
!2274 = distinct !DILocation(line: 510, column: 3, scope: !2181)
!2275 = !DILocation(line: 223, column: 46, scope: !1370, inlinedAt: !2274)
!2276 = !DILocation(line: 224, column: 10, scope: !1377, inlinedAt: !2274)
!2277 = !DILocation(line: 224, column: 12, scope: !1377, inlinedAt: !2274)
!2278 = !DILocation(line: 224, column: 7, scope: !1370, inlinedAt: !2274)
!2279 = !DILocation(line: 225, column: 20, scope: !1377, inlinedAt: !2274)
!2280 = !DILocation(line: 225, column: 24, scope: !1377, inlinedAt: !2274)
!2281 = !DILocation(line: 215, column: 33, scope: !1302, inlinedAt: !2282)
!2282 = distinct !DILocation(line: 225, column: 5, scope: !1377, inlinedAt: !2274)
!2283 = !DILocation(line: 215, column: 41, scope: !1302, inlinedAt: !2282)
!2284 = !DILocation(line: 216, column: 8, scope: !1309, inlinedAt: !2282)
!2285 = !DILocation(line: 216, column: 17, scope: !1309, inlinedAt: !2282)
!2286 = !DILocation(line: 216, column: 31, scope: !1309, inlinedAt: !2282)
!2287 = !DILocation(line: 216, column: 27, scope: !1309, inlinedAt: !2282)
!2288 = !DILocation(line: 216, column: 24, scope: !1309, inlinedAt: !2282)
!2289 = !DILocation(line: 216, column: 7, scope: !1302, inlinedAt: !2282)
!2290 = !DILocation(line: 217, column: 16, scope: !1316, inlinedAt: !2282)
!2291 = !DILocation(line: 219, column: 3, scope: !1316, inlinedAt: !2282)
!2292 = !DILocation(line: 220, column: 1, scope: !1302, inlinedAt: !2282)
!2293 = !DILocation(line: 225, column: 5, scope: !1377, inlinedAt: !2274)
!2294 = !DILocation(line: 226, column: 1, scope: !1370, inlinedAt: !2274)
!2295 = !DILocation(line: 511, column: 15, scope: !2181)
!2296 = !DILocation(line: 512, column: 8, scope: !2181)
!2297 = !DILocation(line: 513, column: 1, scope: !2181)
!2298 = distinct !DISubprogram(name: "luaK_goiftrue", scope: !1, file: !1, line: 539, type: !1231, isLocal: false, isDefinition: true, scopeLine: 539, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2299)
!2299 = !{!2300, !2301, !2302}
!2300 = !DILocalVariable(name: "fs", arg: 1, scope: !2298, file: !1, line: 539, type: !427)
!2301 = !DILocalVariable(name: "e", arg: 2, scope: !2298, file: !1, line: 539, type: !1167)
!2302 = !DILocalVariable(name: "pc", scope: !2298, file: !1, line: 540, type: !93)
!2303 = !DILocation(line: 539, column: 32, scope: !2298)
!2304 = !DILocation(line: 539, column: 45, scope: !2298)
!2305 = !DILocation(line: 541, column: 3, scope: !2298)
!2306 = !DILocation(line: 542, column: 14, scope: !2298)
!2307 = !DILocation(line: 542, column: 3, scope: !2298)
!2308 = !DILocalVariable(name: "fs", arg: 1, scope: !2309, file: !1, line: 516, type: !427)
!2309 = distinct !DISubprogram(name: "invertjump", scope: !1, file: !1, line: 516, type: !1231, isLocal: true, isDefinition: true, scopeLine: 516, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2310)
!2310 = !{!2308, !2311, !2312}
!2311 = !DILocalVariable(name: "e", arg: 2, scope: !2309, file: !1, line: 516, type: !1167)
!2312 = !DILocalVariable(name: "pc", scope: !2309, file: !1, line: 517, type: !385)
!2313 = !DILocation(line: 516, column: 36, scope: !2309, inlinedAt: !2314)
!2314 = distinct !DILocation(line: 548, column: 7, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2316, file: !1, line: 547, column: 16)
!2316 = distinct !DILexicalBlock(scope: !2298, file: !1, line: 542, column: 17)
!2317 = !DILocation(line: 516, column: 49, scope: !2309, inlinedAt: !2314)
!2318 = !DILocation(line: 517, column: 43, scope: !2309, inlinedAt: !2314)
!2319 = !DILocation(line: 517, column: 47, scope: !2309, inlinedAt: !2314)
!2320 = !DILocation(line: 109, column: 48, scope: !895, inlinedAt: !2321)
!2321 = distinct !DILocation(line: 517, column: 21, scope: !2309, inlinedAt: !2314)
!2322 = !DILocation(line: 109, column: 56, scope: !895, inlinedAt: !2321)
!2323 = !DILocation(line: 110, column: 26, scope: !895, inlinedAt: !2321)
!2324 = !DILocation(line: 110, column: 29, scope: !895, inlinedAt: !2321)
!2325 = !DILocation(line: 110, column: 22, scope: !895, inlinedAt: !2321)
!2326 = !DILocation(line: 110, column: 16, scope: !895, inlinedAt: !2321)
!2327 = !DILocation(line: 111, column: 10, scope: !906, inlinedAt: !2321)
!2328 = !DILocation(line: 111, column: 15, scope: !906, inlinedAt: !2321)
!2329 = !DILocation(line: 111, column: 18, scope: !906, inlinedAt: !2321)
!2330 = !DILocation(line: 111, column: 7, scope: !895, inlinedAt: !2321)
!2331 = !DILocation(line: 520, column: 3, scope: !2309, inlinedAt: !2314)
!2332 = !DILocation(line: 114, column: 5, scope: !906, inlinedAt: !2321)
!2333 = !DILocation(line: 0, scope: !906, inlinedAt: !2321)
!2334 = !DILocation(line: 115, column: 1, scope: !895, inlinedAt: !2321)
!2335 = !DILocation(line: 517, column: 16, scope: !2309, inlinedAt: !2314)
!2336 = !DILocation(line: 521, column: 1, scope: !2309, inlinedAt: !2314)
!2337 = !DILocation(line: 549, column: 19, scope: !2315)
!2338 = !DILocation(line: 540, column: 7, scope: !2298)
!2339 = !DILocation(line: 550, column: 7, scope: !2315)
!2340 = !DILocation(line: 553, column: 12, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2316, file: !1, line: 552, column: 14)
!2342 = !DILocation(line: 554, column: 7, scope: !2341)
!2343 = !DILocation(line: 0, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !2316, file: !1, line: 543, column: 38)
!2345 = !DILocation(line: 557, column: 23, scope: !2298)
!2346 = !DILocation(line: 185, column: 30, scope: !636, inlinedAt: !2347)
!2347 = distinct !DILocation(line: 557, column: 3, scope: !2298)
!2348 = !DILocation(line: 185, column: 39, scope: !636, inlinedAt: !2347)
!2349 = !DILocation(line: 185, column: 47, scope: !636, inlinedAt: !2347)
!2350 = !DILocation(line: 186, column: 10, scope: !645, inlinedAt: !2347)
!2351 = !DILocation(line: 186, column: 7, scope: !636, inlinedAt: !2347)
!2352 = !DILocation(line: 187, column: 12, scope: !644, inlinedAt: !2347)
!2353 = !DILocation(line: 187, column: 16, scope: !644, inlinedAt: !2347)
!2354 = !DILocation(line: 187, column: 12, scope: !645, inlinedAt: !2347)
!2355 = !DILocation(line: 101, column: 16, scope: !655, inlinedAt: !2356)
!2356 = distinct !DILocation(line: 192, column: 20, scope: !643, inlinedAt: !2347)
!2357 = !DILocation(line: 188, column: 9, scope: !644, inlinedAt: !2347)
!2358 = !DILocation(line: 188, column: 5, scope: !644, inlinedAt: !2347)
!2359 = !DILocation(line: 0, scope: !643, inlinedAt: !2347)
!2360 = !DILocation(line: 190, column: 9, scope: !643, inlinedAt: !2347)
!2361 = !DILocation(line: 100, column: 32, scope: !655, inlinedAt: !2356)
!2362 = !DILocation(line: 100, column: 40, scope: !655, inlinedAt: !2356)
!2363 = !DILocation(line: 101, column: 7, scope: !655, inlinedAt: !2356)
!2364 = !DILocation(line: 102, column: 14, scope: !669, inlinedAt: !2356)
!2365 = !DILocation(line: 105, column: 15, scope: !669, inlinedAt: !2356)
!2366 = !DILocation(line: 105, column: 18, scope: !669, inlinedAt: !2356)
!2367 = !DILocation(line: 102, column: 7, scope: !655, inlinedAt: !2356)
!2368 = !DILocation(line: 106, column: 1, scope: !655, inlinedAt: !2356)
!2369 = !DILocation(line: 191, column: 9, scope: !643, inlinedAt: !2347)
!2370 = !DILocation(line: 192, column: 39, scope: !643, inlinedAt: !2347)
!2371 = !DILocation(line: 192, column: 5, scope: !643, inlinedAt: !2347)
!2372 = !DILocation(line: 80, column: 33, scope: !681, inlinedAt: !2373)
!2373 = distinct !DILocation(line: 194, column: 5, scope: !643, inlinedAt: !2347)
!2374 = !DILocation(line: 80, column: 41, scope: !681, inlinedAt: !2373)
!2375 = !DILocation(line: 80, column: 49, scope: !681, inlinedAt: !2373)
!2376 = !DILocation(line: 81, column: 16, scope: !681, inlinedAt: !2373)
!2377 = !DILocation(line: 82, column: 20, scope: !681, inlinedAt: !2373)
!2378 = !DILocation(line: 82, column: 7, scope: !681, inlinedAt: !2373)
!2379 = !DILocation(line: 84, column: 7, scope: !695, inlinedAt: !2373)
!2380 = !DILocation(line: 84, column: 19, scope: !695, inlinedAt: !2373)
!2381 = !DILocation(line: 84, column: 7, scope: !681, inlinedAt: !2373)
!2382 = !DILocation(line: 85, column: 26, scope: !695, inlinedAt: !2373)
!2383 = !DILocation(line: 85, column: 5, scope: !695, inlinedAt: !2373)
!2384 = !DILocation(line: 86, column: 3, scope: !681, inlinedAt: !2373)
!2385 = !DILocation(line: 87, column: 1, scope: !681, inlinedAt: !2373)
!2386 = !DILocation(line: 196, column: 1, scope: !636, inlinedAt: !2347)
!2387 = !DILocation(line: 558, column: 27, scope: !2298)
!2388 = !DILocation(line: 179, column: 35, scope: !794, inlinedAt: !2389)
!2389 = distinct !DILocation(line: 558, column: 3, scope: !2298)
!2390 = !DILocation(line: 179, column: 43, scope: !794, inlinedAt: !2389)
!2391 = !DILocation(line: 94, column: 31, scope: !773, inlinedAt: !2392)
!2392 = distinct !DILocation(line: 180, column: 3, scope: !794, inlinedAt: !2389)
!2393 = !DILocation(line: 95, column: 24, scope: !773, inlinedAt: !2392)
!2394 = !DILocation(line: 95, column: 7, scope: !773, inlinedAt: !2392)
!2395 = !DILocation(line: 95, column: 18, scope: !773, inlinedAt: !2392)
!2396 = !DILocation(line: 96, column: 3, scope: !773, inlinedAt: !2392)
!2397 = !DILocation(line: 181, column: 24, scope: !794, inlinedAt: !2389)
!2398 = !DILocation(line: 185, column: 30, scope: !636, inlinedAt: !2399)
!2399 = distinct !DILocation(line: 181, column: 3, scope: !794, inlinedAt: !2389)
!2400 = !DILocation(line: 185, column: 39, scope: !636, inlinedAt: !2399)
!2401 = !DILocation(line: 185, column: 47, scope: !636, inlinedAt: !2399)
!2402 = !DILocation(line: 186, column: 10, scope: !645, inlinedAt: !2399)
!2403 = !DILocation(line: 186, column: 7, scope: !636, inlinedAt: !2399)
!2404 = !DILocation(line: 187, column: 12, scope: !644, inlinedAt: !2399)
!2405 = !DILocation(line: 187, column: 16, scope: !644, inlinedAt: !2399)
!2406 = !DILocation(line: 187, column: 12, scope: !645, inlinedAt: !2399)
!2407 = !DILocation(line: 101, column: 16, scope: !655, inlinedAt: !2408)
!2408 = distinct !DILocation(line: 192, column: 20, scope: !643, inlinedAt: !2399)
!2409 = !DILocation(line: 188, column: 9, scope: !644, inlinedAt: !2399)
!2410 = !DILocation(line: 188, column: 5, scope: !644, inlinedAt: !2399)
!2411 = !DILocation(line: 0, scope: !643, inlinedAt: !2399)
!2412 = !DILocation(line: 190, column: 9, scope: !643, inlinedAt: !2399)
!2413 = !DILocation(line: 100, column: 32, scope: !655, inlinedAt: !2408)
!2414 = !DILocation(line: 100, column: 40, scope: !655, inlinedAt: !2408)
!2415 = !DILocation(line: 101, column: 7, scope: !655, inlinedAt: !2408)
!2416 = !DILocation(line: 102, column: 14, scope: !669, inlinedAt: !2408)
!2417 = !DILocation(line: 105, column: 15, scope: !669, inlinedAt: !2408)
!2418 = !DILocation(line: 105, column: 18, scope: !669, inlinedAt: !2408)
!2419 = !DILocation(line: 102, column: 7, scope: !655, inlinedAt: !2408)
!2420 = !DILocation(line: 106, column: 1, scope: !655, inlinedAt: !2408)
!2421 = !DILocation(line: 191, column: 9, scope: !643, inlinedAt: !2399)
!2422 = !DILocation(line: 192, column: 39, scope: !643, inlinedAt: !2399)
!2423 = !DILocation(line: 192, column: 5, scope: !643, inlinedAt: !2399)
!2424 = !DILocation(line: 80, column: 33, scope: !681, inlinedAt: !2425)
!2425 = distinct !DILocation(line: 194, column: 5, scope: !643, inlinedAt: !2399)
!2426 = !DILocation(line: 80, column: 41, scope: !681, inlinedAt: !2425)
!2427 = !DILocation(line: 80, column: 49, scope: !681, inlinedAt: !2425)
!2428 = !DILocation(line: 81, column: 16, scope: !681, inlinedAt: !2425)
!2429 = !DILocation(line: 82, column: 20, scope: !681, inlinedAt: !2425)
!2430 = !DILocation(line: 82, column: 7, scope: !681, inlinedAt: !2425)
!2431 = !DILocation(line: 84, column: 7, scope: !695, inlinedAt: !2425)
!2432 = !DILocation(line: 84, column: 19, scope: !695, inlinedAt: !2425)
!2433 = !DILocation(line: 84, column: 7, scope: !681, inlinedAt: !2425)
!2434 = !DILocation(line: 85, column: 26, scope: !695, inlinedAt: !2425)
!2435 = !DILocation(line: 85, column: 5, scope: !695, inlinedAt: !2425)
!2436 = !DILocation(line: 86, column: 3, scope: !681, inlinedAt: !2425)
!2437 = !DILocation(line: 87, column: 1, scope: !681, inlinedAt: !2425)
!2438 = !DILocation(line: 196, column: 1, scope: !636, inlinedAt: !2399)
!2439 = !DILocation(line: 182, column: 1, scope: !794, inlinedAt: !2389)
!2440 = !DILocation(line: 559, column: 8, scope: !2298)
!2441 = !DILocation(line: 560, column: 1, scope: !2298)
!2442 = distinct !DISubprogram(name: "jumponcond", scope: !1, file: !1, line: 524, type: !2443, isLocal: true, isDefinition: true, scopeLine: 524, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2445)
!2443 = !DISubroutineType(types: !2444)
!2444 = !{!93, !427, !1167, !93}
!2445 = !{!2446, !2447, !2448, !2449}
!2446 = !DILocalVariable(name: "fs", arg: 1, scope: !2442, file: !1, line: 524, type: !427)
!2447 = !DILocalVariable(name: "e", arg: 2, scope: !2442, file: !1, line: 524, type: !1167)
!2448 = !DILocalVariable(name: "cond", arg: 3, scope: !2442, file: !1, line: 524, type: !93)
!2449 = !DILocalVariable(name: "ie", scope: !2450, file: !1, line: 526, type: !90)
!2450 = distinct !DILexicalBlock(scope: !2451, file: !1, line: 525, column: 27)
!2451 = distinct !DILexicalBlock(scope: !2442, file: !1, line: 525, column: 7)
!2452 = !DILocation(line: 524, column: 35, scope: !2442)
!2453 = !DILocation(line: 524, column: 48, scope: !2442)
!2454 = !DILocation(line: 524, column: 55, scope: !2442)
!2455 = !DILocation(line: 525, column: 10, scope: !2451)
!2456 = !DILocation(line: 525, column: 7, scope: !2442)
!2457 = !DILocation(line: 526, column: 22, scope: !2450)
!2458 = !DILocation(line: 526, column: 17, scope: !2450)
!2459 = !DILocation(line: 527, column: 9, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !2450, file: !1, line: 527, column: 9)
!2461 = !DILocation(line: 527, column: 24, scope: !2460)
!2462 = !DILocation(line: 527, column: 9, scope: !2450)
!2463 = !DILocation(line: 528, column: 11, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2460, file: !1, line: 527, column: 35)
!2465 = !DILocation(line: 528, column: 13, scope: !2464)
!2466 = !DILocation(line: 529, column: 36, scope: !2464)
!2467 = !DILocation(line: 529, column: 53, scope: !2464)
!2468 = !DILocalVariable(name: "fs", arg: 1, scope: !2469, file: !1, line: 74, type: !427)
!2469 = distinct !DISubprogram(name: "condjump", scope: !1, file: !1, line: 74, type: !572, isLocal: true, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2470)
!2470 = !{!2468, !2471, !2472, !2473, !2474}
!2471 = !DILocalVariable(name: "op", arg: 2, scope: !2469, file: !1, line: 74, type: !89)
!2472 = !DILocalVariable(name: "A", arg: 3, scope: !2469, file: !1, line: 74, type: !93)
!2473 = !DILocalVariable(name: "B", arg: 4, scope: !2469, file: !1, line: 74, type: !93)
!2474 = !DILocalVariable(name: "C", arg: 5, scope: !2469, file: !1, line: 74, type: !93)
!2475 = !DILocation(line: 74, column: 33, scope: !2469, inlinedAt: !2476)
!2476 = distinct !DILocation(line: 529, column: 14, scope: !2464)
!2477 = !DILocation(line: 74, column: 44, scope: !2469, inlinedAt: !2476)
!2478 = !DILocation(line: 74, column: 52, scope: !2469, inlinedAt: !2476)
!2479 = !DILocation(line: 74, column: 59, scope: !2469, inlinedAt: !2476)
!2480 = !DILocation(line: 74, column: 66, scope: !2469, inlinedAt: !2476)
!2481 = !DILocation(line: 804, column: 30, scope: !571, inlinedAt: !2482)
!2482 = distinct !DILocation(line: 75, column: 3, scope: !2469, inlinedAt: !2476)
!2483 = !DILocation(line: 804, column: 41, scope: !571, inlinedAt: !2482)
!2484 = !DILocation(line: 804, column: 48, scope: !571, inlinedAt: !2482)
!2485 = !DILocation(line: 804, column: 55, scope: !571, inlinedAt: !2482)
!2486 = !DILocation(line: 804, column: 62, scope: !571, inlinedAt: !2482)
!2487 = !DILocation(line: 808, column: 24, scope: !571, inlinedAt: !2482)
!2488 = !DILocation(line: 808, column: 52, scope: !571, inlinedAt: !2482)
!2489 = !DILocation(line: 808, column: 56, scope: !571, inlinedAt: !2482)
!2490 = !DILocation(line: 808, column: 10, scope: !571, inlinedAt: !2482)
!2491 = !DILocation(line: 808, column: 3, scope: !571, inlinedAt: !2482)
!2492 = !DILocation(line: 76, column: 10, scope: !2469, inlinedAt: !2476)
!2493 = !DILocation(line: 387, column: 1, scope: !2494, inlinedAt: !2498)
!2494 = distinct !DISubprogram(name: "discharge2anyreg", scope: !1, file: !1, line: 382, type: !1231, isLocal: true, isDefinition: true, scopeLine: 382, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2495)
!2495 = !{!2496, !2497}
!2496 = !DILocalVariable(name: "fs", arg: 1, scope: !2494, file: !1, line: 382, type: !427)
!2497 = !DILocalVariable(name: "e", arg: 2, scope: !2494, file: !1, line: 382, type: !1167)
!2498 = distinct !DILocation(line: 533, column: 3, scope: !2442)
!2499 = !DILocation(line: 223, column: 33, scope: !1370, inlinedAt: !2500)
!2500 = distinct !DILocation(line: 534, column: 3, scope: !2442)
!2501 = !DILocation(line: 223, column: 46, scope: !1370, inlinedAt: !2500)
!2502 = !DILocation(line: 224, column: 7, scope: !1370, inlinedAt: !2500)
!2503 = !DILocation(line: 209, column: 35, scope: !1036, inlinedAt: !2504)
!2504 = distinct !DILocation(line: 384, column: 5, scope: !2505, inlinedAt: !2498)
!2505 = distinct !DILexicalBlock(scope: !2506, file: !1, line: 383, column: 26)
!2506 = distinct !DILexicalBlock(scope: !2494, file: !1, line: 383, column: 7)
!2507 = !DILocation(line: 209, column: 43, scope: !1036, inlinedAt: !2504)
!2508 = !DILocation(line: 199, column: 34, scope: !1006, inlinedAt: !2509)
!2509 = distinct !DILocation(line: 210, column: 3, scope: !1036, inlinedAt: !2504)
!2510 = !DILocation(line: 199, column: 42, scope: !1006, inlinedAt: !2509)
!2511 = !DILocation(line: 200, column: 22, scope: !1006, inlinedAt: !2509)
!2512 = !DILocation(line: 200, column: 30, scope: !1006, inlinedAt: !2509)
!2513 = !DILocation(line: 200, column: 7, scope: !1006, inlinedAt: !2509)
!2514 = !DILocation(line: 201, column: 22, scope: !1018, inlinedAt: !2509)
!2515 = !DILocation(line: 201, column: 25, scope: !1018, inlinedAt: !2509)
!2516 = !DILocation(line: 201, column: 18, scope: !1018, inlinedAt: !2509)
!2517 = !DILocation(line: 201, column: 16, scope: !1018, inlinedAt: !2509)
!2518 = !DILocation(line: 201, column: 7, scope: !1006, inlinedAt: !2509)
!2519 = !DILocation(line: 202, column: 18, scope: !1025, inlinedAt: !2509)
!2520 = !DILocation(line: 202, column: 9, scope: !1026, inlinedAt: !2509)
!2521 = !DILocation(line: 203, column: 28, scope: !1025, inlinedAt: !2509)
!2522 = !DILocation(line: 203, column: 7, scope: !1025, inlinedAt: !2509)
!2523 = !DILocation(line: 204, column: 9, scope: !1026, inlinedAt: !2509)
!2524 = !DILocation(line: 204, column: 12, scope: !1026, inlinedAt: !2509)
!2525 = !DILocation(line: 211, column: 15, scope: !1036, inlinedAt: !2504)
!2526 = !DILocation(line: 204, column: 27, scope: !1026, inlinedAt: !2509)
!2527 = !DILocation(line: 204, column: 25, scope: !1026, inlinedAt: !2509)
!2528 = !DILocation(line: 205, column: 3, scope: !1026, inlinedAt: !2509)
!2529 = !DILocation(line: 206, column: 1, scope: !1006, inlinedAt: !2509)
!2530 = !DILocation(line: 212, column: 1, scope: !1036, inlinedAt: !2504)
!2531 = !DILocation(line: 385, column: 37, scope: !2505, inlinedAt: !2498)
!2532 = !DILocation(line: 385, column: 5, scope: !2505, inlinedAt: !2498)
!2533 = !DILocation(line: 224, column: 10, scope: !1377, inlinedAt: !2500)
!2534 = !DILocation(line: 386, column: 3, scope: !2505, inlinedAt: !2498)
!2535 = !DILocation(line: 535, column: 46, scope: !2442)
!2536 = !DILocation(line: 535, column: 50, scope: !2442)
!2537 = !DILocation(line: 225, column: 20, scope: !1377, inlinedAt: !2500)
!2538 = !DILocation(line: 225, column: 24, scope: !1377, inlinedAt: !2500)
!2539 = !DILocation(line: 215, column: 33, scope: !1302, inlinedAt: !2540)
!2540 = distinct !DILocation(line: 225, column: 5, scope: !1377, inlinedAt: !2500)
!2541 = !DILocation(line: 215, column: 41, scope: !1302, inlinedAt: !2540)
!2542 = !DILocation(line: 216, column: 8, scope: !1309, inlinedAt: !2540)
!2543 = !DILocation(line: 216, column: 17, scope: !1309, inlinedAt: !2540)
!2544 = !DILocation(line: 216, column: 31, scope: !1309, inlinedAt: !2540)
!2545 = !DILocation(line: 216, column: 27, scope: !1309, inlinedAt: !2540)
!2546 = !DILocation(line: 216, column: 24, scope: !1309, inlinedAt: !2540)
!2547 = !DILocation(line: 216, column: 7, scope: !1302, inlinedAt: !2540)
!2548 = !DILocation(line: 217, column: 9, scope: !1316, inlinedAt: !2540)
!2549 = !DILocation(line: 217, column: 16, scope: !1316, inlinedAt: !2540)
!2550 = !DILocation(line: 219, column: 3, scope: !1316, inlinedAt: !2540)
!2551 = !DILocation(line: 220, column: 1, scope: !1302, inlinedAt: !2540)
!2552 = !DILocation(line: 225, column: 5, scope: !1377, inlinedAt: !2500)
!2553 = !DILocation(line: 226, column: 1, scope: !1370, inlinedAt: !2500)
!2554 = !DILocation(line: 74, column: 33, scope: !2469, inlinedAt: !2555)
!2555 = distinct !DILocation(line: 535, column: 10, scope: !2442)
!2556 = !DILocation(line: 74, column: 44, scope: !2469, inlinedAt: !2555)
!2557 = !DILocation(line: 74, column: 52, scope: !2469, inlinedAt: !2555)
!2558 = !DILocation(line: 74, column: 59, scope: !2469, inlinedAt: !2555)
!2559 = !DILocation(line: 74, column: 66, scope: !2469, inlinedAt: !2555)
!2560 = !DILocation(line: 804, column: 30, scope: !571, inlinedAt: !2561)
!2561 = distinct !DILocation(line: 75, column: 3, scope: !2469, inlinedAt: !2555)
!2562 = !DILocation(line: 804, column: 41, scope: !571, inlinedAt: !2561)
!2563 = !DILocation(line: 804, column: 48, scope: !571, inlinedAt: !2561)
!2564 = !DILocation(line: 804, column: 55, scope: !571, inlinedAt: !2561)
!2565 = !DILocation(line: 804, column: 62, scope: !571, inlinedAt: !2561)
!2566 = !DILocation(line: 808, column: 24, scope: !571, inlinedAt: !2561)
!2567 = !DILocation(line: 808, column: 52, scope: !571, inlinedAt: !2561)
!2568 = !DILocation(line: 808, column: 56, scope: !571, inlinedAt: !2561)
!2569 = !DILocation(line: 808, column: 10, scope: !571, inlinedAt: !2561)
!2570 = !DILocation(line: 808, column: 3, scope: !571, inlinedAt: !2561)
!2571 = !DILocation(line: 76, column: 10, scope: !2469, inlinedAt: !2555)
!2572 = !DILocation(line: 535, column: 3, scope: !2442)
!2573 = !DILocation(line: 0, scope: !2464)
!2574 = !DILocation(line: 76, column: 3, scope: !2469, inlinedAt: !2476)
!2575 = !DILocation(line: 536, column: 1, scope: !2442)
!2576 = distinct !DISubprogram(name: "luaK_indexed", scope: !1, file: !1, line: 621, type: !2026, isLocal: false, isDefinition: true, scopeLine: 621, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2577)
!2577 = !{!2578, !2579, !2580}
!2578 = !DILocalVariable(name: "fs", arg: 1, scope: !2576, file: !1, line: 621, type: !427)
!2579 = !DILocalVariable(name: "t", arg: 2, scope: !2576, file: !1, line: 621, type: !1167)
!2580 = !DILocalVariable(name: "k", arg: 3, scope: !2576, file: !1, line: 621, type: !1167)
!2581 = !DILocation(line: 621, column: 31, scope: !2576)
!2582 = !DILocation(line: 621, column: 44, scope: !2576)
!2583 = !DILocation(line: 621, column: 56, scope: !2576)
!2584 = !DILocation(line: 622, column: 16, scope: !2576)
!2585 = !DILocation(line: 622, column: 6, scope: !2576)
!2586 = !DILocation(line: 622, column: 8, scope: !2576)
!2587 = !DILocation(line: 622, column: 10, scope: !2576)
!2588 = !DILocation(line: 622, column: 14, scope: !2576)
!2589 = !DILocation(line: 623, column: 6, scope: !2576)
!2590 = !DILocation(line: 623, column: 8, scope: !2576)
!2591 = !DILocation(line: 624, column: 1, scope: !2576)
!2592 = distinct !DISubprogram(name: "luaK_prefix", scope: !1, file: !1, line: 689, type: !2593, isLocal: false, isDefinition: true, scopeLine: 689, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2596)
!2593 = !DISubroutineType(types: !2594)
!2594 = !{null, !427, !2595, !1167}
!2595 = !DIDerivedType(tag: DW_TAG_typedef, name: "UnOpr", file: !64, line: 36, baseType: !63)
!2596 = !{!2597, !2598, !2599, !2600}
!2597 = !DILocalVariable(name: "fs", arg: 1, scope: !2592, file: !1, line: 689, type: !427)
!2598 = !DILocalVariable(name: "op", arg: 2, scope: !2592, file: !1, line: 689, type: !2595)
!2599 = !DILocalVariable(name: "e", arg: 3, scope: !2592, file: !1, line: 689, type: !1167)
!2600 = !DILocalVariable(name: "e2", scope: !2592, file: !1, line: 690, type: !1168)
!2601 = !DILocation(line: 689, column: 30, scope: !2592)
!2602 = !DILocation(line: 689, column: 40, scope: !2592)
!2603 = !DILocation(line: 689, column: 53, scope: !2592)
!2604 = !DILocation(line: 690, column: 3, scope: !2592)
!2605 = !DILocation(line: 691, column: 13, scope: !2592)
!2606 = !DILocation(line: 691, column: 15, scope: !2592)
!2607 = !DILocation(line: 691, column: 6, scope: !2592)
!2608 = !DILocation(line: 691, column: 8, scope: !2592)
!2609 = !DILocation(line: 691, column: 29, scope: !2592)
!2610 = !DILocation(line: 691, column: 31, scope: !2592)
!2611 = !DILocation(line: 691, column: 45, scope: !2592)
!2612 = !DILocation(line: 691, column: 50, scope: !2592)
!2613 = !DILocation(line: 692, column: 3, scope: !2592)
!2614 = !DILocalVariable(name: "e", arg: 1, scope: !2615, file: !1, line: 30, type: !1167)
!2615 = distinct !DISubprogram(name: "isnumeral", scope: !1, file: !1, line: 30, type: !2616, isLocal: true, isDefinition: true, scopeLine: 30, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2618)
!2616 = !DISubroutineType(types: !2617)
!2617 = !{!93, !1167}
!2618 = !{!2614}
!2619 = !DILocation(line: 30, column: 31, scope: !2615, inlinedAt: !2620)
!2620 = distinct !DILocation(line: 694, column: 12, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !2622, file: !1, line: 694, column: 11)
!2622 = distinct !DILexicalBlock(scope: !2623, file: !1, line: 693, column: 21)
!2623 = distinct !DILexicalBlock(scope: !2592, file: !1, line: 692, column: 15)
!2624 = !DILocation(line: 31, column: 14, scope: !2615, inlinedAt: !2620)
!2625 = !DILocation(line: 31, column: 16, scope: !2615, inlinedAt: !2620)
!2626 = !DILocation(line: 31, column: 25, scope: !2615, inlinedAt: !2620)
!2627 = !DILocation(line: 31, column: 31, scope: !2615, inlinedAt: !2620)
!2628 = !DILocation(line: 31, column: 33, scope: !2615, inlinedAt: !2620)
!2629 = !DILocation(line: 31, column: 44, scope: !2615, inlinedAt: !2620)
!2630 = !DILocation(line: 31, column: 3, scope: !2615, inlinedAt: !2620)
!2631 = !DILocation(line: 694, column: 11, scope: !2622)
!2632 = !DILocation(line: 31, column: 50, scope: !2615, inlinedAt: !2620)
!2633 = !DILocation(line: 31, column: 52, scope: !2615, inlinedAt: !2620)
!2634 = !DILocation(line: 422, column: 33, scope: !1840, inlinedAt: !2635)
!2635 = distinct !DILocation(line: 695, column: 9, scope: !2621)
!2636 = !DILocation(line: 422, column: 46, scope: !1840, inlinedAt: !2635)
!2637 = !DILocation(line: 423, column: 3, scope: !1840, inlinedAt: !2635)
!2638 = !DILocation(line: 424, column: 10, scope: !1850, inlinedAt: !2635)
!2639 = !DILocation(line: 424, column: 12, scope: !1850, inlinedAt: !2635)
!2640 = !DILocation(line: 424, column: 7, scope: !1840, inlinedAt: !2635)
!2641 = !DILocation(line: 425, column: 10, scope: !1856, inlinedAt: !2635)
!2642 = !DILocation(line: 0, scope: !1856, inlinedAt: !2635)
!2643 = !DILocation(line: 425, column: 9, scope: !1857, inlinedAt: !2635)
!2644 = !DILocation(line: 426, column: 28, scope: !1861, inlinedAt: !2635)
!2645 = !DILocation(line: 426, column: 24, scope: !1861, inlinedAt: !2635)
!2646 = !DILocation(line: 426, column: 21, scope: !1861, inlinedAt: !2635)
!2647 = !DILocation(line: 426, column: 9, scope: !1857, inlinedAt: !2635)
!2648 = !DILocation(line: 427, column: 7, scope: !1866, inlinedAt: !2635)
!2649 = !DILocation(line: 428, column: 7, scope: !1866, inlinedAt: !2635)
!2650 = !DILocation(line: 431, column: 3, scope: !1840, inlinedAt: !2635)
!2651 = !DILocation(line: 432, column: 3, scope: !1840, inlinedAt: !2635)
!2652 = !DILocation(line: 433, column: 1, scope: !1840, inlinedAt: !2635)
!2653 = !DILocation(line: 695, column: 9, scope: !2621)
!2654 = !DILocation(line: 690, column: 11, scope: !2592)
!2655 = !DILocation(line: 696, column: 7, scope: !2622)
!2656 = !DILocation(line: 697, column: 7, scope: !2622)
!2657 = !DILocalVariable(name: "fs", arg: 1, scope: !2658, file: !1, line: 586, type: !427)
!2658 = distinct !DISubprogram(name: "codenot", scope: !1, file: !1, line: 586, type: !1231, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2659)
!2659 = !{!2657, !2660, !2661}
!2660 = !DILocalVariable(name: "e", arg: 2, scope: !2658, file: !1, line: 586, type: !1167)
!2661 = !DILocalVariable(name: "temp", scope: !2662, file: !1, line: 615, type: !93)
!2662 = distinct !DILexicalBlock(scope: !2658, file: !1, line: 615, column: 3)
!2663 = !DILocation(line: 586, column: 33, scope: !2658, inlinedAt: !2664)
!2664 = distinct !DILocation(line: 699, column: 19, scope: !2623)
!2665 = !DILocation(line: 586, column: 46, scope: !2658, inlinedAt: !2664)
!2666 = !DILocation(line: 587, column: 3, scope: !2658, inlinedAt: !2664)
!2667 = !DILocation(line: 588, column: 14, scope: !2658, inlinedAt: !2664)
!2668 = !DILocation(line: 588, column: 3, scope: !2658, inlinedAt: !2664)
!2669 = !DILocation(line: 387, column: 1, scope: !2494, inlinedAt: !2670)
!2670 = distinct !DILocation(line: 603, column: 7, scope: !2671, inlinedAt: !2664)
!2671 = distinct !DILexicalBlock(scope: !2672, file: !1, line: 602, column: 21)
!2672 = distinct !DILexicalBlock(scope: !2658, file: !1, line: 588, column: 17)
!2673 = !DILocation(line: 223, column: 33, scope: !1370, inlinedAt: !2674)
!2674 = distinct !DILocation(line: 604, column: 7, scope: !2671, inlinedAt: !2664)
!2675 = !DILocation(line: 223, column: 46, scope: !1370, inlinedAt: !2674)
!2676 = !DILocation(line: 224, column: 7, scope: !1370, inlinedAt: !2674)
!2677 = !DILocation(line: 590, column: 12, scope: !2678, inlinedAt: !2664)
!2678 = distinct !DILexicalBlock(scope: !2672, file: !1, line: 589, column: 29)
!2679 = !DILocation(line: 591, column: 7, scope: !2678, inlinedAt: !2664)
!2680 = !DILocation(line: 594, column: 12, scope: !2681, inlinedAt: !2664)
!2681 = distinct !DILexicalBlock(scope: !2672, file: !1, line: 593, column: 38)
!2682 = !DILocation(line: 595, column: 7, scope: !2681, inlinedAt: !2664)
!2683 = !DILocation(line: 516, column: 36, scope: !2309, inlinedAt: !2684)
!2684 = distinct !DILocation(line: 598, column: 7, scope: !2685, inlinedAt: !2664)
!2685 = distinct !DILexicalBlock(scope: !2672, file: !1, line: 597, column: 16)
!2686 = !DILocation(line: 516, column: 49, scope: !2309, inlinedAt: !2684)
!2687 = !DILocation(line: 517, column: 43, scope: !2309, inlinedAt: !2684)
!2688 = !DILocation(line: 517, column: 47, scope: !2309, inlinedAt: !2684)
!2689 = !DILocation(line: 109, column: 48, scope: !895, inlinedAt: !2690)
!2690 = distinct !DILocation(line: 517, column: 21, scope: !2309, inlinedAt: !2684)
!2691 = !DILocation(line: 109, column: 56, scope: !895, inlinedAt: !2690)
!2692 = !DILocation(line: 110, column: 26, scope: !895, inlinedAt: !2690)
!2693 = !DILocation(line: 110, column: 29, scope: !895, inlinedAt: !2690)
!2694 = !DILocation(line: 110, column: 22, scope: !895, inlinedAt: !2690)
!2695 = !DILocation(line: 110, column: 16, scope: !895, inlinedAt: !2690)
!2696 = !DILocation(line: 111, column: 10, scope: !906, inlinedAt: !2690)
!2697 = !DILocation(line: 111, column: 15, scope: !906, inlinedAt: !2690)
!2698 = !DILocation(line: 111, column: 18, scope: !906, inlinedAt: !2690)
!2699 = !DILocation(line: 111, column: 7, scope: !895, inlinedAt: !2690)
!2700 = !DILocation(line: 520, column: 3, scope: !2309, inlinedAt: !2684)
!2701 = !DILocation(line: 114, column: 5, scope: !906, inlinedAt: !2690)
!2702 = !DILocation(line: 0, scope: !906, inlinedAt: !2690)
!2703 = !DILocation(line: 115, column: 1, scope: !895, inlinedAt: !2690)
!2704 = !DILocation(line: 517, column: 16, scope: !2309, inlinedAt: !2684)
!2705 = !DILocation(line: 521, column: 1, scope: !2309, inlinedAt: !2684)
!2706 = !DILocation(line: 599, column: 7, scope: !2685, inlinedAt: !2664)
!2707 = !DILocation(line: 209, column: 35, scope: !1036, inlinedAt: !2708)
!2708 = distinct !DILocation(line: 384, column: 5, scope: !2505, inlinedAt: !2670)
!2709 = !DILocation(line: 209, column: 43, scope: !1036, inlinedAt: !2708)
!2710 = !DILocation(line: 199, column: 34, scope: !1006, inlinedAt: !2711)
!2711 = distinct !DILocation(line: 210, column: 3, scope: !1036, inlinedAt: !2708)
!2712 = !DILocation(line: 199, column: 42, scope: !1006, inlinedAt: !2711)
!2713 = !DILocation(line: 200, column: 22, scope: !1006, inlinedAt: !2711)
!2714 = !DILocation(line: 200, column: 30, scope: !1006, inlinedAt: !2711)
!2715 = !DILocation(line: 200, column: 7, scope: !1006, inlinedAt: !2711)
!2716 = !DILocation(line: 201, column: 22, scope: !1018, inlinedAt: !2711)
!2717 = !DILocation(line: 201, column: 25, scope: !1018, inlinedAt: !2711)
!2718 = !DILocation(line: 201, column: 18, scope: !1018, inlinedAt: !2711)
!2719 = !DILocation(line: 201, column: 16, scope: !1018, inlinedAt: !2711)
!2720 = !DILocation(line: 201, column: 7, scope: !1006, inlinedAt: !2711)
!2721 = !DILocation(line: 202, column: 18, scope: !1025, inlinedAt: !2711)
!2722 = !DILocation(line: 202, column: 9, scope: !1026, inlinedAt: !2711)
!2723 = !DILocation(line: 203, column: 28, scope: !1025, inlinedAt: !2711)
!2724 = !DILocation(line: 203, column: 7, scope: !1025, inlinedAt: !2711)
!2725 = !DILocation(line: 204, column: 9, scope: !1026, inlinedAt: !2711)
!2726 = !DILocation(line: 204, column: 12, scope: !1026, inlinedAt: !2711)
!2727 = !DILocation(line: 211, column: 15, scope: !1036, inlinedAt: !2708)
!2728 = !DILocation(line: 204, column: 27, scope: !1026, inlinedAt: !2711)
!2729 = !DILocation(line: 204, column: 25, scope: !1026, inlinedAt: !2711)
!2730 = !DILocation(line: 205, column: 3, scope: !1026, inlinedAt: !2711)
!2731 = !DILocation(line: 206, column: 1, scope: !1006, inlinedAt: !2711)
!2732 = !DILocation(line: 212, column: 1, scope: !1036, inlinedAt: !2708)
!2733 = !DILocation(line: 385, column: 37, scope: !2505, inlinedAt: !2670)
!2734 = !DILocation(line: 385, column: 5, scope: !2505, inlinedAt: !2670)
!2735 = !DILocation(line: 224, column: 10, scope: !1377, inlinedAt: !2674)
!2736 = !DILocation(line: 386, column: 3, scope: !2505, inlinedAt: !2670)
!2737 = !DILocation(line: 605, column: 52, scope: !2671, inlinedAt: !2664)
!2738 = !DILocation(line: 605, column: 56, scope: !2671, inlinedAt: !2664)
!2739 = !DILocation(line: 225, column: 20, scope: !1377, inlinedAt: !2674)
!2740 = !DILocation(line: 225, column: 24, scope: !1377, inlinedAt: !2674)
!2741 = !DILocation(line: 215, column: 33, scope: !1302, inlinedAt: !2742)
!2742 = distinct !DILocation(line: 225, column: 5, scope: !1377, inlinedAt: !2674)
!2743 = !DILocation(line: 215, column: 41, scope: !1302, inlinedAt: !2742)
!2744 = !DILocation(line: 216, column: 8, scope: !1309, inlinedAt: !2742)
!2745 = !DILocation(line: 216, column: 17, scope: !1309, inlinedAt: !2742)
!2746 = !DILocation(line: 216, column: 31, scope: !1309, inlinedAt: !2742)
!2747 = !DILocation(line: 216, column: 27, scope: !1309, inlinedAt: !2742)
!2748 = !DILocation(line: 216, column: 24, scope: !1309, inlinedAt: !2742)
!2749 = !DILocation(line: 216, column: 7, scope: !1302, inlinedAt: !2742)
!2750 = !DILocation(line: 217, column: 9, scope: !1316, inlinedAt: !2742)
!2751 = !DILocation(line: 217, column: 16, scope: !1316, inlinedAt: !2742)
!2752 = !DILocation(line: 219, column: 3, scope: !1316, inlinedAt: !2742)
!2753 = !DILocation(line: 220, column: 1, scope: !1302, inlinedAt: !2742)
!2754 = !DILocation(line: 225, column: 5, scope: !1377, inlinedAt: !2674)
!2755 = !DILocation(line: 226, column: 1, scope: !1370, inlinedAt: !2674)
!2756 = !DILocation(line: 804, column: 30, scope: !571, inlinedAt: !2757)
!2757 = distinct !DILocation(line: 605, column: 21, scope: !2671, inlinedAt: !2664)
!2758 = !DILocation(line: 804, column: 41, scope: !571, inlinedAt: !2757)
!2759 = !DILocation(line: 804, column: 48, scope: !571, inlinedAt: !2757)
!2760 = !DILocation(line: 804, column: 55, scope: !571, inlinedAt: !2757)
!2761 = !DILocation(line: 804, column: 62, scope: !571, inlinedAt: !2757)
!2762 = !DILocation(line: 808, column: 24, scope: !571, inlinedAt: !2757)
!2763 = !DILocation(line: 808, column: 52, scope: !571, inlinedAt: !2757)
!2764 = !DILocation(line: 808, column: 56, scope: !571, inlinedAt: !2757)
!2765 = !DILocation(line: 808, column: 10, scope: !571, inlinedAt: !2757)
!2766 = !DILocation(line: 808, column: 3, scope: !571, inlinedAt: !2757)
!2767 = !DILocation(line: 605, column: 19, scope: !2671, inlinedAt: !2664)
!2768 = !DILocation(line: 606, column: 12, scope: !2671, inlinedAt: !2664)
!2769 = !DILocation(line: 607, column: 7, scope: !2671, inlinedAt: !2664)
!2770 = !DILocation(line: 615, column: 19, scope: !2662, inlinedAt: !2664)
!2771 = !DILocation(line: 615, column: 9, scope: !2662, inlinedAt: !2664)
!2772 = !DILocation(line: 615, column: 32, scope: !2662, inlinedAt: !2664)
!2773 = !DILocation(line: 615, column: 27, scope: !2662, inlinedAt: !2664)
!2774 = !DILocation(line: 615, column: 40, scope: !2662, inlinedAt: !2664)
!2775 = !DILocalVariable(name: "fs", arg: 1, scope: !2776, file: !1, line: 144, type: !427)
!2776 = distinct !DISubprogram(name: "removevalues", scope: !1, file: !1, line: 144, type: !795, isLocal: true, isDefinition: true, scopeLine: 144, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2777)
!2777 = !{!2775, !2778}
!2778 = !DILocalVariable(name: "list", arg: 2, scope: !2776, file: !1, line: 144, type: !93)
!2779 = !DILocation(line: 144, column: 38, scope: !2776, inlinedAt: !2780)
!2780 = distinct !DILocation(line: 616, column: 3, scope: !2658, inlinedAt: !2664)
!2781 = !DILocation(line: 144, column: 46, scope: !2776, inlinedAt: !2780)
!2782 = !DILocation(line: 145, column: 15, scope: !2783, inlinedAt: !2780)
!2783 = distinct !DILexicalBlock(scope: !2784, file: !1, line: 145, column: 3)
!2784 = distinct !DILexicalBlock(scope: !2776, file: !1, line: 145, column: 3)
!2785 = !DILocation(line: 145, column: 3, scope: !2784, inlinedAt: !2780)
!2786 = !DILocation(line: 110, column: 26, scope: !895, inlinedAt: !2787)
!2787 = distinct !DILocation(line: 132, column: 20, scope: !882, inlinedAt: !2788)
!2788 = distinct !DILocation(line: 146, column: 7, scope: !2783, inlinedAt: !2780)
!2789 = !DILocation(line: 110, column: 29, scope: !895, inlinedAt: !2787)
!2790 = !DILocation(line: 131, column: 37, scope: !882, inlinedAt: !2788)
!2791 = !DILocation(line: 131, column: 45, scope: !882, inlinedAt: !2788)
!2792 = !DILocation(line: 131, column: 55, scope: !882, inlinedAt: !2788)
!2793 = !DILocation(line: 109, column: 48, scope: !895, inlinedAt: !2787)
!2794 = !DILocation(line: 109, column: 56, scope: !895, inlinedAt: !2787)
!2795 = !DILocation(line: 110, column: 22, scope: !895, inlinedAt: !2787)
!2796 = !DILocation(line: 110, column: 16, scope: !895, inlinedAt: !2787)
!2797 = !DILocation(line: 111, column: 10, scope: !906, inlinedAt: !2787)
!2798 = !DILocation(line: 111, column: 15, scope: !906, inlinedAt: !2787)
!2799 = !DILocation(line: 111, column: 18, scope: !906, inlinedAt: !2787)
!2800 = !DILocation(line: 111, column: 7, scope: !895, inlinedAt: !2787)
!2801 = !DILocation(line: 133, column: 7, scope: !913, inlinedAt: !2788)
!2802 = !DILocation(line: 114, column: 5, scope: !906, inlinedAt: !2787)
!2803 = !DILocation(line: 0, scope: !906, inlinedAt: !2787)
!2804 = !DILocation(line: 115, column: 1, scope: !895, inlinedAt: !2787)
!2805 = !DILocation(line: 132, column: 16, scope: !882, inlinedAt: !2788)
!2806 = !DILocation(line: 133, column: 22, scope: !913, inlinedAt: !2788)
!2807 = !DILocation(line: 133, column: 7, scope: !882, inlinedAt: !2788)
!2808 = !DILocation(line: 135, column: 31, scope: !920, inlinedAt: !2788)
!2809 = !DILocation(line: 138, column: 10, scope: !920, inlinedAt: !2788)
!2810 = !DILocation(line: 0, scope: !920, inlinedAt: !2788)
!2811 = !DILocation(line: 140, column: 3, scope: !882, inlinedAt: !2788)
!2812 = !DILocation(line: 141, column: 1, scope: !882, inlinedAt: !2788)
!2813 = !DILocation(line: 100, column: 32, scope: !655, inlinedAt: !2814)
!2814 = distinct !DILocation(line: 145, column: 34, scope: !2783, inlinedAt: !2780)
!2815 = !DILocation(line: 100, column: 40, scope: !655, inlinedAt: !2814)
!2816 = !DILocation(line: 101, column: 16, scope: !655, inlinedAt: !2814)
!2817 = !DILocation(line: 101, column: 7, scope: !655, inlinedAt: !2814)
!2818 = !DILocation(line: 102, column: 14, scope: !669, inlinedAt: !2814)
!2819 = !DILocation(line: 105, column: 15, scope: !669, inlinedAt: !2814)
!2820 = !DILocation(line: 105, column: 18, scope: !669, inlinedAt: !2814)
!2821 = !DILocation(line: 106, column: 1, scope: !655, inlinedAt: !2814)
!2822 = !DILocation(line: 617, column: 23, scope: !2658, inlinedAt: !2664)
!2823 = !DILocation(line: 147, column: 1, scope: !2776, inlinedAt: !2780)
!2824 = !DILocation(line: 144, column: 38, scope: !2776, inlinedAt: !2825)
!2825 = distinct !DILocation(line: 617, column: 3, scope: !2658, inlinedAt: !2664)
!2826 = !DILocation(line: 144, column: 46, scope: !2776, inlinedAt: !2825)
!2827 = !DILocation(line: 145, column: 15, scope: !2783, inlinedAt: !2825)
!2828 = !DILocation(line: 145, column: 3, scope: !2784, inlinedAt: !2825)
!2829 = !DILocation(line: 110, column: 26, scope: !895, inlinedAt: !2830)
!2830 = distinct !DILocation(line: 132, column: 20, scope: !882, inlinedAt: !2831)
!2831 = distinct !DILocation(line: 146, column: 7, scope: !2783, inlinedAt: !2825)
!2832 = !DILocation(line: 110, column: 29, scope: !895, inlinedAt: !2830)
!2833 = !DILocation(line: 131, column: 37, scope: !882, inlinedAt: !2831)
!2834 = !DILocation(line: 131, column: 45, scope: !882, inlinedAt: !2831)
!2835 = !DILocation(line: 131, column: 55, scope: !882, inlinedAt: !2831)
!2836 = !DILocation(line: 109, column: 48, scope: !895, inlinedAt: !2830)
!2837 = !DILocation(line: 109, column: 56, scope: !895, inlinedAt: !2830)
!2838 = !DILocation(line: 110, column: 22, scope: !895, inlinedAt: !2830)
!2839 = !DILocation(line: 110, column: 16, scope: !895, inlinedAt: !2830)
!2840 = !DILocation(line: 111, column: 10, scope: !906, inlinedAt: !2830)
!2841 = !DILocation(line: 111, column: 15, scope: !906, inlinedAt: !2830)
!2842 = !DILocation(line: 111, column: 18, scope: !906, inlinedAt: !2830)
!2843 = !DILocation(line: 111, column: 7, scope: !895, inlinedAt: !2830)
!2844 = !DILocation(line: 133, column: 7, scope: !913, inlinedAt: !2831)
!2845 = !DILocation(line: 114, column: 5, scope: !906, inlinedAt: !2830)
!2846 = !DILocation(line: 0, scope: !906, inlinedAt: !2830)
!2847 = !DILocation(line: 115, column: 1, scope: !895, inlinedAt: !2830)
!2848 = !DILocation(line: 132, column: 16, scope: !882, inlinedAt: !2831)
!2849 = !DILocation(line: 133, column: 22, scope: !913, inlinedAt: !2831)
!2850 = !DILocation(line: 133, column: 7, scope: !882, inlinedAt: !2831)
!2851 = !DILocation(line: 135, column: 31, scope: !920, inlinedAt: !2831)
!2852 = !DILocation(line: 138, column: 10, scope: !920, inlinedAt: !2831)
!2853 = !DILocation(line: 0, scope: !920, inlinedAt: !2831)
!2854 = !DILocation(line: 140, column: 3, scope: !882, inlinedAt: !2831)
!2855 = !DILocation(line: 141, column: 1, scope: !882, inlinedAt: !2831)
!2856 = !DILocation(line: 100, column: 32, scope: !655, inlinedAt: !2857)
!2857 = distinct !DILocation(line: 145, column: 34, scope: !2783, inlinedAt: !2825)
!2858 = !DILocation(line: 100, column: 40, scope: !655, inlinedAt: !2857)
!2859 = !DILocation(line: 101, column: 16, scope: !655, inlinedAt: !2857)
!2860 = !DILocation(line: 101, column: 7, scope: !655, inlinedAt: !2857)
!2861 = !DILocation(line: 102, column: 14, scope: !669, inlinedAt: !2857)
!2862 = !DILocation(line: 105, column: 15, scope: !669, inlinedAt: !2857)
!2863 = !DILocation(line: 105, column: 18, scope: !669, inlinedAt: !2857)
!2864 = !DILocation(line: 106, column: 1, scope: !655, inlinedAt: !2857)
!2865 = !DILocation(line: 147, column: 1, scope: !2776, inlinedAt: !2825)
!2866 = !DILocation(line: 618, column: 1, scope: !2658, inlinedAt: !2664)
!2867 = !DILocation(line: 699, column: 35, scope: !2623)
!2868 = !DILocation(line: 422, column: 33, scope: !1840, inlinedAt: !2869)
!2869 = distinct !DILocation(line: 701, column: 7, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2623, file: !1, line: 700, column: 19)
!2871 = !DILocation(line: 422, column: 46, scope: !1840, inlinedAt: !2869)
!2872 = !DILocation(line: 423, column: 3, scope: !1840, inlinedAt: !2869)
!2873 = !DILocation(line: 424, column: 10, scope: !1850, inlinedAt: !2869)
!2874 = !DILocation(line: 424, column: 12, scope: !1850, inlinedAt: !2869)
!2875 = !DILocation(line: 424, column: 7, scope: !1840, inlinedAt: !2869)
!2876 = !DILocation(line: 425, column: 10, scope: !1856, inlinedAt: !2869)
!2877 = !DILocation(line: 0, scope: !1856, inlinedAt: !2869)
!2878 = !DILocation(line: 425, column: 9, scope: !1857, inlinedAt: !2869)
!2879 = !DILocation(line: 426, column: 28, scope: !1861, inlinedAt: !2869)
!2880 = !DILocation(line: 426, column: 24, scope: !1861, inlinedAt: !2869)
!2881 = !DILocation(line: 426, column: 21, scope: !1861, inlinedAt: !2869)
!2882 = !DILocation(line: 426, column: 9, scope: !1857, inlinedAt: !2869)
!2883 = !DILocation(line: 427, column: 7, scope: !1866, inlinedAt: !2869)
!2884 = !DILocation(line: 428, column: 7, scope: !1866, inlinedAt: !2869)
!2885 = !DILocation(line: 431, column: 3, scope: !1840, inlinedAt: !2869)
!2886 = !DILocation(line: 432, column: 3, scope: !1840, inlinedAt: !2869)
!2887 = !DILocation(line: 433, column: 1, scope: !1840, inlinedAt: !2869)
!2888 = !DILocation(line: 702, column: 7, scope: !2870)
!2889 = !DILocation(line: 703, column: 7, scope: !2870)
!2890 = !DILocation(line: 707, column: 1, scope: !2592)
!2891 = distinct !DISubprogram(name: "codearith", scope: !1, file: !1, line: 653, type: !2892, isLocal: true, isDefinition: true, scopeLine: 653, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2894)
!2892 = !DISubroutineType(types: !2893)
!2893 = !{null, !427, !89, !1167, !1167}
!2894 = !{!2895, !2896, !2897, !2898, !2899, !2902}
!2895 = !DILocalVariable(name: "fs", arg: 1, scope: !2891, file: !1, line: 653, type: !427)
!2896 = !DILocalVariable(name: "op", arg: 2, scope: !2891, file: !1, line: 653, type: !89)
!2897 = !DILocalVariable(name: "e1", arg: 3, scope: !2891, file: !1, line: 653, type: !1167)
!2898 = !DILocalVariable(name: "e2", arg: 4, scope: !2891, file: !1, line: 653, type: !1167)
!2899 = !DILocalVariable(name: "o2", scope: !2900, file: !1, line: 657, type: !93)
!2900 = distinct !DILexicalBlock(scope: !2901, file: !1, line: 656, column: 8)
!2901 = distinct !DILexicalBlock(scope: !2891, file: !1, line: 654, column: 7)
!2902 = !DILocalVariable(name: "o1", scope: !2900, file: !1, line: 658, type: !93)
!2903 = !DILocation(line: 653, column: 35, scope: !2891)
!2904 = !DILocation(line: 653, column: 46, scope: !2891)
!2905 = !DILocation(line: 653, column: 59, scope: !2891)
!2906 = !DILocation(line: 653, column: 72, scope: !2891)
!2907 = !DILocalVariable(name: "op", arg: 1, scope: !2908, file: !1, line: 627, type: !89)
!2908 = distinct !DISubprogram(name: "constfolding", scope: !1, file: !1, line: 627, type: !2909, isLocal: true, isDefinition: true, scopeLine: 627, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2911)
!2909 = !DISubroutineType(types: !2910)
!2910 = !{!93, !89, !1167, !1167}
!2911 = !{!2907, !2912, !2913, !2914, !2915, !2916}
!2912 = !DILocalVariable(name: "e1", arg: 2, scope: !2908, file: !1, line: 627, type: !1167)
!2913 = !DILocalVariable(name: "e2", arg: 3, scope: !2908, file: !1, line: 627, type: !1167)
!2914 = !DILocalVariable(name: "v1", scope: !2908, file: !1, line: 628, type: !166)
!2915 = !DILocalVariable(name: "v2", scope: !2908, file: !1, line: 628, type: !166)
!2916 = !DILocalVariable(name: "r", scope: !2908, file: !1, line: 628, type: !166)
!2917 = !DILocation(line: 627, column: 33, scope: !2908, inlinedAt: !2918)
!2918 = distinct !DILocation(line: 654, column: 7, scope: !2901)
!2919 = !DILocation(line: 627, column: 46, scope: !2908, inlinedAt: !2918)
!2920 = !DILocation(line: 627, column: 59, scope: !2908, inlinedAt: !2918)
!2921 = !DILocation(line: 30, column: 31, scope: !2615, inlinedAt: !2922)
!2922 = distinct !DILocation(line: 629, column: 8, scope: !2923, inlinedAt: !2918)
!2923 = distinct !DILexicalBlock(scope: !2908, file: !1, line: 629, column: 7)
!2924 = !DILocation(line: 31, column: 14, scope: !2615, inlinedAt: !2922)
!2925 = !DILocation(line: 31, column: 16, scope: !2615, inlinedAt: !2922)
!2926 = !DILocation(line: 31, column: 25, scope: !2615, inlinedAt: !2922)
!2927 = !DILocation(line: 31, column: 31, scope: !2615, inlinedAt: !2922)
!2928 = !DILocation(line: 31, column: 33, scope: !2615, inlinedAt: !2922)
!2929 = !DILocation(line: 31, column: 44, scope: !2615, inlinedAt: !2922)
!2930 = !DILocation(line: 31, column: 3, scope: !2615, inlinedAt: !2922)
!2931 = !DILocation(line: 629, column: 22, scope: !2923, inlinedAt: !2918)
!2932 = !DILocation(line: 31, column: 50, scope: !2615, inlinedAt: !2922)
!2933 = !DILocation(line: 31, column: 52, scope: !2615, inlinedAt: !2922)
!2934 = !DILocation(line: 30, column: 31, scope: !2615, inlinedAt: !2935)
!2935 = distinct !DILocation(line: 629, column: 26, scope: !2923, inlinedAt: !2918)
!2936 = !DILocation(line: 31, column: 14, scope: !2615, inlinedAt: !2935)
!2937 = !DILocation(line: 31, column: 16, scope: !2615, inlinedAt: !2935)
!2938 = !DILocation(line: 31, column: 25, scope: !2615, inlinedAt: !2935)
!2939 = !DILocation(line: 31, column: 31, scope: !2615, inlinedAt: !2935)
!2940 = !DILocation(line: 31, column: 33, scope: !2615, inlinedAt: !2935)
!2941 = !DILocation(line: 31, column: 44, scope: !2615, inlinedAt: !2935)
!2942 = !DILocation(line: 31, column: 3, scope: !2615, inlinedAt: !2935)
!2943 = !DILocation(line: 629, column: 7, scope: !2908, inlinedAt: !2918)
!2944 = !DILocation(line: 31, column: 50, scope: !2615, inlinedAt: !2935)
!2945 = !DILocation(line: 31, column: 52, scope: !2615, inlinedAt: !2935)
!2946 = !DILocation(line: 630, column: 14, scope: !2908, inlinedAt: !2918)
!2947 = !DILocation(line: 628, column: 14, scope: !2908, inlinedAt: !2918)
!2948 = !DILocation(line: 631, column: 14, scope: !2908, inlinedAt: !2918)
!2949 = !DILocation(line: 628, column: 18, scope: !2908, inlinedAt: !2918)
!2950 = !DILocation(line: 632, column: 3, scope: !2908, inlinedAt: !2918)
!2951 = !DILocation(line: 650, column: 1, scope: !2908, inlinedAt: !2918)
!2952 = !DILocation(line: 657, column: 28, scope: !2900)
!2953 = !DILocation(line: 633, column: 22, scope: !2954, inlinedAt: !2918)
!2954 = distinct !DILexicalBlock(scope: !2908, file: !1, line: 632, column: 15)
!2955 = !DILocation(line: 628, column: 22, scope: !2908, inlinedAt: !2918)
!2956 = !DILocation(line: 633, column: 43, scope: !2954, inlinedAt: !2918)
!2957 = !DILocation(line: 634, column: 22, scope: !2954, inlinedAt: !2918)
!2958 = !DILocation(line: 634, column: 43, scope: !2954, inlinedAt: !2918)
!2959 = !DILocation(line: 635, column: 22, scope: !2954, inlinedAt: !2918)
!2960 = !DILocation(line: 635, column: 43, scope: !2954, inlinedAt: !2918)
!2961 = !DILocation(line: 637, column: 14, scope: !2962, inlinedAt: !2918)
!2962 = distinct !DILexicalBlock(scope: !2954, file: !1, line: 637, column: 11)
!2963 = !DILocation(line: 637, column: 11, scope: !2954, inlinedAt: !2918)
!2964 = !DILocation(line: 638, column: 11, scope: !2954, inlinedAt: !2918)
!2965 = !DILocation(line: 638, column: 32, scope: !2954, inlinedAt: !2918)
!2966 = !DILocation(line: 640, column: 14, scope: !2967, inlinedAt: !2918)
!2967 = distinct !DILexicalBlock(scope: !2954, file: !1, line: 640, column: 11)
!2968 = !DILocation(line: 640, column: 11, scope: !2954, inlinedAt: !2918)
!2969 = !DILocation(line: 641, column: 11, scope: !2954, inlinedAt: !2918)
!2970 = !DILocation(line: 641, column: 32, scope: !2954, inlinedAt: !2918)
!2971 = !DILocation(line: 642, column: 22, scope: !2954, inlinedAt: !2918)
!2972 = !DILocation(line: 642, column: 43, scope: !2954, inlinedAt: !2918)
!2973 = !DILocation(line: 643, column: 22, scope: !2954, inlinedAt: !2918)
!2974 = !DILocation(line: 643, column: 39, scope: !2954, inlinedAt: !2918)
!2975 = !DILocation(line: 0, scope: !2954, inlinedAt: !2918)
!2976 = !DILocation(line: 647, column: 7, scope: !2977, inlinedAt: !2918)
!2977 = distinct !DILexicalBlock(scope: !2908, file: !1, line: 647, column: 7)
!2978 = !DILocation(line: 647, column: 7, scope: !2908, inlinedAt: !2918)
!2979 = !DILocation(line: 648, column: 14, scope: !2908, inlinedAt: !2918)
!2980 = !DILocation(line: 654, column: 7, scope: !2891)
!2981 = !DILocation(line: 657, column: 47, scope: !2900)
!2982 = !DILocation(line: 657, column: 14, scope: !2900)
!2983 = !DILocation(line: 657, column: 9, scope: !2900)
!2984 = !DILocation(line: 658, column: 14, scope: !2900)
!2985 = !DILocation(line: 658, column: 9, scope: !2900)
!2986 = !DILocation(line: 659, column: 12, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2900, file: !1, line: 659, column: 9)
!2988 = !DILocation(line: 223, column: 33, scope: !1370, inlinedAt: !2989)
!2989 = distinct !DILocation(line: 660, column: 7, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2987, file: !1, line: 659, column: 18)
!2991 = !DILocation(line: 223, column: 33, scope: !1370, inlinedAt: !2992)
!2992 = distinct !DILocation(line: 664, column: 7, scope: !2993)
!2993 = distinct !DILexicalBlock(scope: !2987, file: !1, line: 663, column: 10)
!2994 = !DILocation(line: 659, column: 9, scope: !2900)
!2995 = !DILocation(line: 223, column: 46, scope: !1370, inlinedAt: !2989)
!2996 = !DILocation(line: 224, column: 10, scope: !1377, inlinedAt: !2989)
!2997 = !DILocation(line: 224, column: 12, scope: !1377, inlinedAt: !2989)
!2998 = !DILocation(line: 224, column: 7, scope: !1370, inlinedAt: !2989)
!2999 = !DILocation(line: 225, column: 20, scope: !1377, inlinedAt: !2989)
!3000 = !DILocation(line: 225, column: 24, scope: !1377, inlinedAt: !2989)
!3001 = !DILocation(line: 215, column: 33, scope: !1302, inlinedAt: !3002)
!3002 = distinct !DILocation(line: 225, column: 5, scope: !1377, inlinedAt: !2989)
!3003 = !DILocation(line: 215, column: 41, scope: !1302, inlinedAt: !3002)
!3004 = !DILocation(line: 216, column: 8, scope: !1309, inlinedAt: !3002)
!3005 = !DILocation(line: 216, column: 17, scope: !1309, inlinedAt: !3002)
!3006 = !DILocation(line: 216, column: 31, scope: !1309, inlinedAt: !3002)
!3007 = !DILocation(line: 216, column: 27, scope: !1309, inlinedAt: !3002)
!3008 = !DILocation(line: 216, column: 24, scope: !1309, inlinedAt: !3002)
!3009 = !DILocation(line: 216, column: 7, scope: !1302, inlinedAt: !3002)
!3010 = !DILocation(line: 217, column: 9, scope: !1316, inlinedAt: !3002)
!3011 = !DILocation(line: 217, column: 16, scope: !1316, inlinedAt: !3002)
!3012 = !DILocation(line: 219, column: 3, scope: !1316, inlinedAt: !3002)
!3013 = !DILocation(line: 220, column: 1, scope: !1302, inlinedAt: !3002)
!3014 = !DILocation(line: 225, column: 5, scope: !1377, inlinedAt: !2989)
!3015 = !DILocation(line: 226, column: 1, scope: !1370, inlinedAt: !2989)
!3016 = !DILocation(line: 223, column: 33, scope: !1370, inlinedAt: !3017)
!3017 = distinct !DILocation(line: 661, column: 7, scope: !2990)
!3018 = !DILocation(line: 223, column: 46, scope: !1370, inlinedAt: !3017)
!3019 = !DILocation(line: 224, column: 10, scope: !1377, inlinedAt: !3017)
!3020 = !DILocation(line: 224, column: 12, scope: !1377, inlinedAt: !3017)
!3021 = !DILocation(line: 224, column: 7, scope: !1370, inlinedAt: !3017)
!3022 = !DILocation(line: 225, column: 20, scope: !1377, inlinedAt: !3017)
!3023 = !DILocation(line: 225, column: 24, scope: !1377, inlinedAt: !3017)
!3024 = !DILocation(line: 215, column: 33, scope: !1302, inlinedAt: !3025)
!3025 = distinct !DILocation(line: 225, column: 5, scope: !1377, inlinedAt: !3017)
!3026 = !DILocation(line: 215, column: 41, scope: !1302, inlinedAt: !3025)
!3027 = !DILocation(line: 216, column: 8, scope: !1309, inlinedAt: !3025)
!3028 = !DILocation(line: 216, column: 17, scope: !1309, inlinedAt: !3025)
!3029 = !DILocation(line: 216, column: 31, scope: !1309, inlinedAt: !3025)
!3030 = !DILocation(line: 216, column: 27, scope: !1309, inlinedAt: !3025)
!3031 = !DILocation(line: 216, column: 24, scope: !1309, inlinedAt: !3025)
!3032 = !DILocation(line: 216, column: 7, scope: !1302, inlinedAt: !3025)
!3033 = !DILocation(line: 217, column: 9, scope: !1316, inlinedAt: !3025)
!3034 = !DILocation(line: 217, column: 16, scope: !1316, inlinedAt: !3025)
!3035 = !DILocation(line: 219, column: 3, scope: !1316, inlinedAt: !3025)
!3036 = !DILocation(line: 220, column: 1, scope: !1302, inlinedAt: !3025)
!3037 = !DILocation(line: 225, column: 5, scope: !1377, inlinedAt: !3017)
!3038 = !DILocation(line: 223, column: 46, scope: !1370, inlinedAt: !2992)
!3039 = !DILocation(line: 224, column: 10, scope: !1377, inlinedAt: !2992)
!3040 = !DILocation(line: 224, column: 12, scope: !1377, inlinedAt: !2992)
!3041 = !DILocation(line: 224, column: 7, scope: !1370, inlinedAt: !2992)
!3042 = !DILocation(line: 225, column: 20, scope: !1377, inlinedAt: !2992)
!3043 = !DILocation(line: 225, column: 24, scope: !1377, inlinedAt: !2992)
!3044 = !DILocation(line: 215, column: 33, scope: !1302, inlinedAt: !3045)
!3045 = distinct !DILocation(line: 225, column: 5, scope: !1377, inlinedAt: !2992)
!3046 = !DILocation(line: 215, column: 41, scope: !1302, inlinedAt: !3045)
!3047 = !DILocation(line: 216, column: 8, scope: !1309, inlinedAt: !3045)
!3048 = !DILocation(line: 216, column: 17, scope: !1309, inlinedAt: !3045)
!3049 = !DILocation(line: 216, column: 31, scope: !1309, inlinedAt: !3045)
!3050 = !DILocation(line: 216, column: 27, scope: !1309, inlinedAt: !3045)
!3051 = !DILocation(line: 216, column: 24, scope: !1309, inlinedAt: !3045)
!3052 = !DILocation(line: 216, column: 7, scope: !1302, inlinedAt: !3045)
!3053 = !DILocation(line: 217, column: 9, scope: !1316, inlinedAt: !3045)
!3054 = !DILocation(line: 217, column: 16, scope: !1316, inlinedAt: !3045)
!3055 = !DILocation(line: 219, column: 3, scope: !1316, inlinedAt: !3045)
!3056 = !DILocation(line: 220, column: 1, scope: !1302, inlinedAt: !3045)
!3057 = !DILocation(line: 225, column: 5, scope: !1377, inlinedAt: !2992)
!3058 = !DILocation(line: 226, column: 1, scope: !1370, inlinedAt: !2992)
!3059 = !DILocation(line: 223, column: 33, scope: !1370, inlinedAt: !3060)
!3060 = distinct !DILocation(line: 665, column: 7, scope: !2993)
!3061 = !DILocation(line: 223, column: 46, scope: !1370, inlinedAt: !3060)
!3062 = !DILocation(line: 224, column: 10, scope: !1377, inlinedAt: !3060)
!3063 = !DILocation(line: 224, column: 12, scope: !1377, inlinedAt: !3060)
!3064 = !DILocation(line: 224, column: 7, scope: !1370, inlinedAt: !3060)
!3065 = !DILocation(line: 225, column: 20, scope: !1377, inlinedAt: !3060)
!3066 = !DILocation(line: 225, column: 24, scope: !1377, inlinedAt: !3060)
!3067 = !DILocation(line: 215, column: 33, scope: !1302, inlinedAt: !3068)
!3068 = distinct !DILocation(line: 225, column: 5, scope: !1377, inlinedAt: !3060)
!3069 = !DILocation(line: 215, column: 41, scope: !1302, inlinedAt: !3068)
!3070 = !DILocation(line: 216, column: 8, scope: !1309, inlinedAt: !3068)
!3071 = !DILocation(line: 216, column: 17, scope: !1309, inlinedAt: !3068)
!3072 = !DILocation(line: 216, column: 31, scope: !1309, inlinedAt: !3068)
!3073 = !DILocation(line: 216, column: 27, scope: !1309, inlinedAt: !3068)
!3074 = !DILocation(line: 216, column: 24, scope: !1309, inlinedAt: !3068)
!3075 = !DILocation(line: 216, column: 7, scope: !1302, inlinedAt: !3068)
!3076 = !DILocation(line: 217, column: 9, scope: !1316, inlinedAt: !3068)
!3077 = !DILocation(line: 217, column: 16, scope: !1316, inlinedAt: !3068)
!3078 = !DILocation(line: 219, column: 3, scope: !1316, inlinedAt: !3068)
!3079 = !DILocation(line: 220, column: 1, scope: !1302, inlinedAt: !3068)
!3080 = !DILocation(line: 225, column: 5, scope: !1377, inlinedAt: !3060)
!3081 = !DILocation(line: 226, column: 1, scope: !1370, inlinedAt: !3060)
!3082 = !DILocation(line: 804, column: 30, scope: !571, inlinedAt: !3083)
!3083 = distinct !DILocation(line: 667, column: 20, scope: !2900)
!3084 = !DILocation(line: 804, column: 41, scope: !571, inlinedAt: !3083)
!3085 = !DILocation(line: 804, column: 48, scope: !571, inlinedAt: !3083)
!3086 = !DILocation(line: 804, column: 55, scope: !571, inlinedAt: !3083)
!3087 = !DILocation(line: 804, column: 62, scope: !571, inlinedAt: !3083)
!3088 = !DILocation(line: 808, column: 24, scope: !571, inlinedAt: !3083)
!3089 = !DILocation(line: 808, column: 52, scope: !571, inlinedAt: !3083)
!3090 = !DILocation(line: 808, column: 56, scope: !571, inlinedAt: !3083)
!3091 = !DILocation(line: 808, column: 10, scope: !571, inlinedAt: !3083)
!3092 = !DILocation(line: 808, column: 3, scope: !571, inlinedAt: !3083)
!3093 = !DILocation(line: 667, column: 9, scope: !2900)
!3094 = !DILocation(line: 667, column: 13, scope: !2900)
!3095 = !DILocation(line: 667, column: 18, scope: !2900)
!3096 = !DILocation(line: 668, column: 11, scope: !2900)
!3097 = !DILocation(line: 670, column: 1, scope: !2891)
!3098 = distinct !DISubprogram(name: "luaK_infix", scope: !1, file: !1, line: 710, type: !3099, isLocal: false, isDefinition: true, scopeLine: 710, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3102)
!3099 = !DISubroutineType(types: !3100)
!3100 = !{null, !427, !3101, !1167}
!3101 = !DIDerivedType(tag: DW_TAG_typedef, name: "BinOpr", file: !64, line: 33, baseType: !70)
!3102 = !{!3103, !3104, !3105}
!3103 = !DILocalVariable(name: "fs", arg: 1, scope: !3098, file: !1, line: 710, type: !427)
!3104 = !DILocalVariable(name: "op", arg: 2, scope: !3098, file: !1, line: 710, type: !3101)
!3105 = !DILocalVariable(name: "v", arg: 3, scope: !3098, file: !1, line: 710, type: !1167)
!3106 = !DILocation(line: 710, column: 29, scope: !3098)
!3107 = !DILocation(line: 710, column: 40, scope: !3098)
!3108 = !DILocation(line: 710, column: 53, scope: !3098)
!3109 = !DILocation(line: 711, column: 3, scope: !3098)
!3110 = !DILocation(line: 713, column: 7, scope: !3111)
!3111 = distinct !DILexicalBlock(scope: !3112, file: !1, line: 712, column: 19)
!3112 = distinct !DILexicalBlock(scope: !3098, file: !1, line: 711, column: 15)
!3113 = !DILocation(line: 714, column: 7, scope: !3111)
!3114 = !DILocalVariable(name: "fs", arg: 1, scope: !3115, file: !1, line: 563, type: !427)
!3115 = distinct !DISubprogram(name: "luaK_goiffalse", scope: !1, file: !1, line: 563, type: !1231, isLocal: true, isDefinition: true, scopeLine: 563, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3116)
!3116 = !{!3114, !3117, !3118}
!3117 = !DILocalVariable(name: "e", arg: 2, scope: !3115, file: !1, line: 563, type: !1167)
!3118 = !DILocalVariable(name: "pc", scope: !3115, file: !1, line: 564, type: !93)
!3119 = !DILocation(line: 563, column: 40, scope: !3115, inlinedAt: !3120)
!3120 = distinct !DILocation(line: 717, column: 7, scope: !3121)
!3121 = distinct !DILexicalBlock(scope: !3112, file: !1, line: 716, column: 18)
!3122 = !DILocation(line: 563, column: 53, scope: !3115, inlinedAt: !3120)
!3123 = !DILocation(line: 565, column: 3, scope: !3115, inlinedAt: !3120)
!3124 = !DILocation(line: 566, column: 14, scope: !3115, inlinedAt: !3120)
!3125 = !DILocation(line: 566, column: 3, scope: !3115, inlinedAt: !3120)
!3126 = !DILocation(line: 572, column: 15, scope: !3127, inlinedAt: !3120)
!3127 = distinct !DILexicalBlock(scope: !3128, file: !1, line: 571, column: 16)
!3128 = distinct !DILexicalBlock(scope: !3115, file: !1, line: 566, column: 17)
!3129 = !DILocation(line: 572, column: 19, scope: !3127, inlinedAt: !3120)
!3130 = !DILocation(line: 564, column: 7, scope: !3115, inlinedAt: !3120)
!3131 = !DILocation(line: 573, column: 7, scope: !3127, inlinedAt: !3120)
!3132 = !DILocation(line: 576, column: 12, scope: !3133, inlinedAt: !3120)
!3133 = distinct !DILexicalBlock(scope: !3128, file: !1, line: 575, column: 14)
!3134 = !DILocation(line: 577, column: 7, scope: !3133, inlinedAt: !3120)
!3135 = !DILocation(line: 0, scope: !3136, inlinedAt: !3120)
!3136 = distinct !DILexicalBlock(scope: !3128, file: !1, line: 567, column: 29)
!3137 = !DILocation(line: 580, column: 23, scope: !3115, inlinedAt: !3120)
!3138 = !DILocation(line: 185, column: 30, scope: !636, inlinedAt: !3139)
!3139 = distinct !DILocation(line: 580, column: 3, scope: !3115, inlinedAt: !3120)
!3140 = !DILocation(line: 185, column: 39, scope: !636, inlinedAt: !3139)
!3141 = !DILocation(line: 185, column: 47, scope: !636, inlinedAt: !3139)
!3142 = !DILocation(line: 186, column: 10, scope: !645, inlinedAt: !3139)
!3143 = !DILocation(line: 186, column: 7, scope: !636, inlinedAt: !3139)
!3144 = !DILocation(line: 187, column: 12, scope: !644, inlinedAt: !3139)
!3145 = !DILocation(line: 187, column: 16, scope: !644, inlinedAt: !3139)
!3146 = !DILocation(line: 187, column: 12, scope: !645, inlinedAt: !3139)
!3147 = !DILocation(line: 101, column: 16, scope: !655, inlinedAt: !3148)
!3148 = distinct !DILocation(line: 192, column: 20, scope: !643, inlinedAt: !3139)
!3149 = !DILocation(line: 188, column: 9, scope: !644, inlinedAt: !3139)
!3150 = !DILocation(line: 188, column: 5, scope: !644, inlinedAt: !3139)
!3151 = !DILocation(line: 0, scope: !643, inlinedAt: !3139)
!3152 = !DILocation(line: 190, column: 9, scope: !643, inlinedAt: !3139)
!3153 = !DILocation(line: 100, column: 32, scope: !655, inlinedAt: !3148)
!3154 = !DILocation(line: 100, column: 40, scope: !655, inlinedAt: !3148)
!3155 = !DILocation(line: 101, column: 7, scope: !655, inlinedAt: !3148)
!3156 = !DILocation(line: 102, column: 14, scope: !669, inlinedAt: !3148)
!3157 = !DILocation(line: 105, column: 15, scope: !669, inlinedAt: !3148)
!3158 = !DILocation(line: 105, column: 18, scope: !669, inlinedAt: !3148)
!3159 = !DILocation(line: 102, column: 7, scope: !655, inlinedAt: !3148)
!3160 = !DILocation(line: 106, column: 1, scope: !655, inlinedAt: !3148)
!3161 = !DILocation(line: 191, column: 9, scope: !643, inlinedAt: !3139)
!3162 = !DILocation(line: 192, column: 39, scope: !643, inlinedAt: !3139)
!3163 = !DILocation(line: 192, column: 5, scope: !643, inlinedAt: !3139)
!3164 = !DILocation(line: 80, column: 33, scope: !681, inlinedAt: !3165)
!3165 = distinct !DILocation(line: 194, column: 5, scope: !643, inlinedAt: !3139)
!3166 = !DILocation(line: 80, column: 41, scope: !681, inlinedAt: !3165)
!3167 = !DILocation(line: 80, column: 49, scope: !681, inlinedAt: !3165)
!3168 = !DILocation(line: 81, column: 16, scope: !681, inlinedAt: !3165)
!3169 = !DILocation(line: 82, column: 20, scope: !681, inlinedAt: !3165)
!3170 = !DILocation(line: 82, column: 7, scope: !681, inlinedAt: !3165)
!3171 = !DILocation(line: 84, column: 7, scope: !695, inlinedAt: !3165)
!3172 = !DILocation(line: 84, column: 19, scope: !695, inlinedAt: !3165)
!3173 = !DILocation(line: 84, column: 7, scope: !681, inlinedAt: !3165)
!3174 = !DILocation(line: 85, column: 26, scope: !695, inlinedAt: !3165)
!3175 = !DILocation(line: 85, column: 5, scope: !695, inlinedAt: !3165)
!3176 = !DILocation(line: 86, column: 3, scope: !681, inlinedAt: !3165)
!3177 = !DILocation(line: 87, column: 1, scope: !681, inlinedAt: !3165)
!3178 = !DILocation(line: 196, column: 1, scope: !636, inlinedAt: !3139)
!3179 = !DILocation(line: 581, column: 27, scope: !3115, inlinedAt: !3120)
!3180 = !DILocation(line: 179, column: 35, scope: !794, inlinedAt: !3181)
!3181 = distinct !DILocation(line: 581, column: 3, scope: !3115, inlinedAt: !3120)
!3182 = !DILocation(line: 179, column: 43, scope: !794, inlinedAt: !3181)
!3183 = !DILocation(line: 94, column: 31, scope: !773, inlinedAt: !3184)
!3184 = distinct !DILocation(line: 180, column: 3, scope: !794, inlinedAt: !3181)
!3185 = !DILocation(line: 95, column: 24, scope: !773, inlinedAt: !3184)
!3186 = !DILocation(line: 95, column: 7, scope: !773, inlinedAt: !3184)
!3187 = !DILocation(line: 95, column: 18, scope: !773, inlinedAt: !3184)
!3188 = !DILocation(line: 96, column: 3, scope: !773, inlinedAt: !3184)
!3189 = !DILocation(line: 181, column: 24, scope: !794, inlinedAt: !3181)
!3190 = !DILocation(line: 185, column: 30, scope: !636, inlinedAt: !3191)
!3191 = distinct !DILocation(line: 181, column: 3, scope: !794, inlinedAt: !3181)
!3192 = !DILocation(line: 185, column: 39, scope: !636, inlinedAt: !3191)
!3193 = !DILocation(line: 185, column: 47, scope: !636, inlinedAt: !3191)
!3194 = !DILocation(line: 186, column: 10, scope: !645, inlinedAt: !3191)
!3195 = !DILocation(line: 186, column: 7, scope: !636, inlinedAt: !3191)
!3196 = !DILocation(line: 187, column: 12, scope: !644, inlinedAt: !3191)
!3197 = !DILocation(line: 187, column: 16, scope: !644, inlinedAt: !3191)
!3198 = !DILocation(line: 187, column: 12, scope: !645, inlinedAt: !3191)
!3199 = !DILocation(line: 101, column: 16, scope: !655, inlinedAt: !3200)
!3200 = distinct !DILocation(line: 192, column: 20, scope: !643, inlinedAt: !3191)
!3201 = !DILocation(line: 188, column: 9, scope: !644, inlinedAt: !3191)
!3202 = !DILocation(line: 188, column: 5, scope: !644, inlinedAt: !3191)
!3203 = !DILocation(line: 0, scope: !643, inlinedAt: !3191)
!3204 = !DILocation(line: 190, column: 9, scope: !643, inlinedAt: !3191)
!3205 = !DILocation(line: 100, column: 32, scope: !655, inlinedAt: !3200)
!3206 = !DILocation(line: 100, column: 40, scope: !655, inlinedAt: !3200)
!3207 = !DILocation(line: 101, column: 7, scope: !655, inlinedAt: !3200)
!3208 = !DILocation(line: 102, column: 14, scope: !669, inlinedAt: !3200)
!3209 = !DILocation(line: 105, column: 15, scope: !669, inlinedAt: !3200)
!3210 = !DILocation(line: 105, column: 18, scope: !669, inlinedAt: !3200)
!3211 = !DILocation(line: 102, column: 7, scope: !655, inlinedAt: !3200)
!3212 = !DILocation(line: 106, column: 1, scope: !655, inlinedAt: !3200)
!3213 = !DILocation(line: 191, column: 9, scope: !643, inlinedAt: !3191)
!3214 = !DILocation(line: 192, column: 39, scope: !643, inlinedAt: !3191)
!3215 = !DILocation(line: 192, column: 5, scope: !643, inlinedAt: !3191)
!3216 = !DILocation(line: 80, column: 33, scope: !681, inlinedAt: !3217)
!3217 = distinct !DILocation(line: 194, column: 5, scope: !643, inlinedAt: !3191)
!3218 = !DILocation(line: 80, column: 41, scope: !681, inlinedAt: !3217)
!3219 = !DILocation(line: 80, column: 49, scope: !681, inlinedAt: !3217)
!3220 = !DILocation(line: 81, column: 16, scope: !681, inlinedAt: !3217)
!3221 = !DILocation(line: 82, column: 20, scope: !681, inlinedAt: !3217)
!3222 = !DILocation(line: 82, column: 7, scope: !681, inlinedAt: !3217)
!3223 = !DILocation(line: 84, column: 7, scope: !695, inlinedAt: !3217)
!3224 = !DILocation(line: 84, column: 19, scope: !695, inlinedAt: !3217)
!3225 = !DILocation(line: 84, column: 7, scope: !681, inlinedAt: !3217)
!3226 = !DILocation(line: 85, column: 26, scope: !695, inlinedAt: !3217)
!3227 = !DILocation(line: 85, column: 5, scope: !695, inlinedAt: !3217)
!3228 = !DILocation(line: 86, column: 3, scope: !681, inlinedAt: !3217)
!3229 = !DILocation(line: 87, column: 1, scope: !681, inlinedAt: !3217)
!3230 = !DILocation(line: 196, column: 1, scope: !636, inlinedAt: !3191)
!3231 = !DILocation(line: 182, column: 1, scope: !794, inlinedAt: !3181)
!3232 = !DILocation(line: 582, column: 8, scope: !3115, inlinedAt: !3120)
!3233 = !DILocation(line: 583, column: 1, scope: !3115, inlinedAt: !3120)
!3234 = !DILocation(line: 718, column: 7, scope: !3121)
!3235 = !DILocation(line: 721, column: 7, scope: !3236)
!3236 = distinct !DILexicalBlock(scope: !3112, file: !1, line: 720, column: 22)
!3237 = !DILocation(line: 722, column: 7, scope: !3236)
!3238 = !DILocation(line: 30, column: 31, scope: !2615, inlinedAt: !3239)
!3239 = distinct !DILocation(line: 726, column: 12, scope: !3240)
!3240 = distinct !DILexicalBlock(scope: !3241, file: !1, line: 726, column: 11)
!3241 = distinct !DILexicalBlock(scope: !3112, file: !1, line: 725, column: 33)
!3242 = !DILocation(line: 31, column: 14, scope: !2615, inlinedAt: !3239)
!3243 = !DILocation(line: 31, column: 16, scope: !2615, inlinedAt: !3239)
!3244 = !DILocation(line: 31, column: 25, scope: !2615, inlinedAt: !3239)
!3245 = !DILocation(line: 31, column: 31, scope: !2615, inlinedAt: !3239)
!3246 = !DILocation(line: 31, column: 33, scope: !2615, inlinedAt: !3239)
!3247 = !DILocation(line: 31, column: 44, scope: !2615, inlinedAt: !3239)
!3248 = !DILocation(line: 31, column: 3, scope: !2615, inlinedAt: !3239)
!3249 = !DILocation(line: 726, column: 11, scope: !3241)
!3250 = !DILocation(line: 31, column: 50, scope: !2615, inlinedAt: !3239)
!3251 = !DILocation(line: 31, column: 52, scope: !2615, inlinedAt: !3239)
!3252 = !DILocation(line: 726, column: 26, scope: !3240)
!3253 = !DILocation(line: 730, column: 7, scope: !3254)
!3254 = distinct !DILexicalBlock(scope: !3112, file: !1, line: 729, column: 14)
!3255 = !DILocation(line: 731, column: 7, scope: !3254)
!3256 = !DILocation(line: 734, column: 1, scope: !3098)
!3257 = distinct !DISubprogram(name: "luaK_posfix", scope: !1, file: !1, line: 737, type: !3258, isLocal: false, isDefinition: true, scopeLine: 737, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3260)
!3258 = !DISubroutineType(types: !3259)
!3259 = !{null, !427, !3101, !1167, !1167}
!3260 = !{!3261, !3262, !3263, !3264}
!3261 = !DILocalVariable(name: "fs", arg: 1, scope: !3257, file: !1, line: 737, type: !427)
!3262 = !DILocalVariable(name: "op", arg: 2, scope: !3257, file: !1, line: 737, type: !3101)
!3263 = !DILocalVariable(name: "e1", arg: 3, scope: !3257, file: !1, line: 737, type: !1167)
!3264 = !DILocalVariable(name: "e2", arg: 4, scope: !3257, file: !1, line: 737, type: !1167)
!3265 = !DILocation(line: 737, column: 30, scope: !3257)
!3266 = !DILocation(line: 737, column: 41, scope: !3257)
!3267 = !DILocation(line: 737, column: 54, scope: !3257)
!3268 = !DILocation(line: 737, column: 67, scope: !3257)
!3269 = !DILocation(line: 738, column: 3, scope: !3257)
!3270 = !DILocation(line: 741, column: 7, scope: !3271)
!3271 = distinct !DILexicalBlock(scope: !3272, file: !1, line: 739, column: 19)
!3272 = distinct !DILexicalBlock(scope: !3257, file: !1, line: 738, column: 15)
!3273 = !DILocation(line: 742, column: 28, scope: !3271)
!3274 = !DILocation(line: 742, column: 35, scope: !3271)
!3275 = !DILocation(line: 185, column: 30, scope: !636, inlinedAt: !3276)
!3276 = distinct !DILocation(line: 742, column: 7, scope: !3271)
!3277 = !DILocation(line: 185, column: 39, scope: !636, inlinedAt: !3276)
!3278 = !DILocation(line: 185, column: 47, scope: !636, inlinedAt: !3276)
!3279 = !DILocation(line: 186, column: 10, scope: !645, inlinedAt: !3276)
!3280 = !DILocation(line: 186, column: 7, scope: !636, inlinedAt: !3276)
!3281 = !DILocation(line: 187, column: 12, scope: !644, inlinedAt: !3276)
!3282 = !DILocation(line: 187, column: 16, scope: !644, inlinedAt: !3276)
!3283 = !DILocation(line: 187, column: 12, scope: !645, inlinedAt: !3276)
!3284 = !DILocation(line: 101, column: 16, scope: !655, inlinedAt: !3285)
!3285 = distinct !DILocation(line: 192, column: 20, scope: !643, inlinedAt: !3276)
!3286 = !DILocation(line: 188, column: 9, scope: !644, inlinedAt: !3276)
!3287 = !DILocation(line: 188, column: 5, scope: !644, inlinedAt: !3276)
!3288 = !DILocation(line: 0, scope: !643, inlinedAt: !3276)
!3289 = !DILocation(line: 190, column: 9, scope: !643, inlinedAt: !3276)
!3290 = !DILocation(line: 100, column: 32, scope: !655, inlinedAt: !3285)
!3291 = !DILocation(line: 100, column: 40, scope: !655, inlinedAt: !3285)
!3292 = !DILocation(line: 101, column: 7, scope: !655, inlinedAt: !3285)
!3293 = !DILocation(line: 102, column: 14, scope: !669, inlinedAt: !3285)
!3294 = !DILocation(line: 105, column: 15, scope: !669, inlinedAt: !3285)
!3295 = !DILocation(line: 105, column: 18, scope: !669, inlinedAt: !3285)
!3296 = !DILocation(line: 102, column: 7, scope: !655, inlinedAt: !3285)
!3297 = !DILocation(line: 106, column: 1, scope: !655, inlinedAt: !3285)
!3298 = !DILocation(line: 191, column: 9, scope: !643, inlinedAt: !3276)
!3299 = !DILocation(line: 192, column: 39, scope: !643, inlinedAt: !3276)
!3300 = !DILocation(line: 192, column: 5, scope: !643, inlinedAt: !3276)
!3301 = !DILocation(line: 80, column: 33, scope: !681, inlinedAt: !3302)
!3302 = distinct !DILocation(line: 194, column: 5, scope: !643, inlinedAt: !3276)
!3303 = !DILocation(line: 80, column: 41, scope: !681, inlinedAt: !3302)
!3304 = !DILocation(line: 80, column: 49, scope: !681, inlinedAt: !3302)
!3305 = !DILocation(line: 81, column: 16, scope: !681, inlinedAt: !3302)
!3306 = !DILocation(line: 82, column: 20, scope: !681, inlinedAt: !3302)
!3307 = !DILocation(line: 82, column: 7, scope: !681, inlinedAt: !3302)
!3308 = !DILocation(line: 84, column: 7, scope: !695, inlinedAt: !3302)
!3309 = !DILocation(line: 84, column: 19, scope: !695, inlinedAt: !3302)
!3310 = !DILocation(line: 84, column: 7, scope: !681, inlinedAt: !3302)
!3311 = !DILocation(line: 85, column: 26, scope: !695, inlinedAt: !3302)
!3312 = !DILocation(line: 85, column: 5, scope: !695, inlinedAt: !3302)
!3313 = !DILocation(line: 86, column: 3, scope: !681, inlinedAt: !3302)
!3314 = !DILocation(line: 87, column: 1, scope: !681, inlinedAt: !3302)
!3315 = !DILocation(line: 196, column: 1, scope: !636, inlinedAt: !3276)
!3316 = !DILocation(line: 743, column: 13, scope: !3271)
!3317 = !{i64 0, i64 4, !909, i64 8, i64 4, !550, i64 12, i64 4, !550, i64 8, i64 8, !3318, i64 16, i64 4, !550, i64 20, i64 4, !550}
!3318 = !{!3319, !3319, i64 0}
!3319 = !{!"double", !524, i64 0}
!3320 = !DILocation(line: 744, column: 7, scope: !3271)
!3321 = !DILocation(line: 748, column: 7, scope: !3322)
!3322 = distinct !DILexicalBlock(scope: !3272, file: !1, line: 746, column: 18)
!3323 = !DILocation(line: 749, column: 28, scope: !3322)
!3324 = !DILocation(line: 749, column: 35, scope: !3322)
!3325 = !DILocation(line: 185, column: 30, scope: !636, inlinedAt: !3326)
!3326 = distinct !DILocation(line: 749, column: 7, scope: !3322)
!3327 = !DILocation(line: 185, column: 39, scope: !636, inlinedAt: !3326)
!3328 = !DILocation(line: 185, column: 47, scope: !636, inlinedAt: !3326)
!3329 = !DILocation(line: 186, column: 10, scope: !645, inlinedAt: !3326)
!3330 = !DILocation(line: 186, column: 7, scope: !636, inlinedAt: !3326)
!3331 = !DILocation(line: 187, column: 12, scope: !644, inlinedAt: !3326)
!3332 = !DILocation(line: 187, column: 16, scope: !644, inlinedAt: !3326)
!3333 = !DILocation(line: 187, column: 12, scope: !645, inlinedAt: !3326)
!3334 = !DILocation(line: 101, column: 16, scope: !655, inlinedAt: !3335)
!3335 = distinct !DILocation(line: 192, column: 20, scope: !643, inlinedAt: !3326)
!3336 = !DILocation(line: 188, column: 9, scope: !644, inlinedAt: !3326)
!3337 = !DILocation(line: 188, column: 5, scope: !644, inlinedAt: !3326)
!3338 = !DILocation(line: 0, scope: !643, inlinedAt: !3326)
!3339 = !DILocation(line: 190, column: 9, scope: !643, inlinedAt: !3326)
!3340 = !DILocation(line: 100, column: 32, scope: !655, inlinedAt: !3335)
!3341 = !DILocation(line: 100, column: 40, scope: !655, inlinedAt: !3335)
!3342 = !DILocation(line: 101, column: 7, scope: !655, inlinedAt: !3335)
!3343 = !DILocation(line: 102, column: 14, scope: !669, inlinedAt: !3335)
!3344 = !DILocation(line: 105, column: 15, scope: !669, inlinedAt: !3335)
!3345 = !DILocation(line: 105, column: 18, scope: !669, inlinedAt: !3335)
!3346 = !DILocation(line: 102, column: 7, scope: !655, inlinedAt: !3335)
!3347 = !DILocation(line: 106, column: 1, scope: !655, inlinedAt: !3335)
!3348 = !DILocation(line: 191, column: 9, scope: !643, inlinedAt: !3326)
!3349 = !DILocation(line: 192, column: 39, scope: !643, inlinedAt: !3326)
!3350 = !DILocation(line: 192, column: 5, scope: !643, inlinedAt: !3326)
!3351 = !DILocation(line: 80, column: 33, scope: !681, inlinedAt: !3352)
!3352 = distinct !DILocation(line: 194, column: 5, scope: !643, inlinedAt: !3326)
!3353 = !DILocation(line: 80, column: 41, scope: !681, inlinedAt: !3352)
!3354 = !DILocation(line: 80, column: 49, scope: !681, inlinedAt: !3352)
!3355 = !DILocation(line: 81, column: 16, scope: !681, inlinedAt: !3352)
!3356 = !DILocation(line: 82, column: 20, scope: !681, inlinedAt: !3352)
!3357 = !DILocation(line: 82, column: 7, scope: !681, inlinedAt: !3352)
!3358 = !DILocation(line: 84, column: 7, scope: !695, inlinedAt: !3352)
!3359 = !DILocation(line: 84, column: 19, scope: !695, inlinedAt: !3352)
!3360 = !DILocation(line: 84, column: 7, scope: !681, inlinedAt: !3352)
!3361 = !DILocation(line: 85, column: 26, scope: !695, inlinedAt: !3352)
!3362 = !DILocation(line: 85, column: 5, scope: !695, inlinedAt: !3352)
!3363 = !DILocation(line: 86, column: 3, scope: !681, inlinedAt: !3352)
!3364 = !DILocation(line: 87, column: 1, scope: !681, inlinedAt: !3352)
!3365 = !DILocation(line: 196, column: 1, scope: !636, inlinedAt: !3326)
!3366 = !DILocation(line: 750, column: 13, scope: !3322)
!3367 = !DILocation(line: 751, column: 7, scope: !3322)
!3368 = !DILocation(line: 436, column: 31, scope: !1872, inlinedAt: !3369)
!3369 = distinct !DILocation(line: 754, column: 7, scope: !3370)
!3370 = distinct !DILexicalBlock(scope: !3272, file: !1, line: 753, column: 22)
!3371 = !DILocation(line: 436, column: 44, scope: !1872, inlinedAt: !3369)
!3372 = !DILocation(line: 437, column: 7, scope: !1879, inlinedAt: !3369)
!3373 = !DILocation(line: 0, scope: !3370)
!3374 = !DILocation(line: 437, column: 7, scope: !1872, inlinedAt: !3369)
!3375 = !DILocation(line: 422, column: 33, scope: !1840, inlinedAt: !3376)
!3376 = distinct !DILocation(line: 438, column: 5, scope: !1879, inlinedAt: !3369)
!3377 = !DILocation(line: 422, column: 46, scope: !1840, inlinedAt: !3376)
!3378 = !DILocation(line: 424, column: 10, scope: !1850, inlinedAt: !3376)
!3379 = !DILocation(line: 424, column: 12, scope: !1850, inlinedAt: !3376)
!3380 = !DILocation(line: 424, column: 7, scope: !1840, inlinedAt: !3376)
!3381 = !DILocation(line: 425, column: 10, scope: !1856, inlinedAt: !3376)
!3382 = !DILocation(line: 0, scope: !1856, inlinedAt: !3376)
!3383 = !DILocation(line: 425, column: 9, scope: !1857, inlinedAt: !3376)
!3384 = !DILocation(line: 426, column: 28, scope: !1861, inlinedAt: !3376)
!3385 = !DILocation(line: 426, column: 24, scope: !1861, inlinedAt: !3376)
!3386 = !DILocation(line: 426, column: 21, scope: !1861, inlinedAt: !3376)
!3387 = !DILocation(line: 426, column: 9, scope: !1857, inlinedAt: !3376)
!3388 = !DILocation(line: 427, column: 7, scope: !1866, inlinedAt: !3376)
!3389 = !DILocation(line: 428, column: 7, scope: !1866, inlinedAt: !3376)
!3390 = !DILocation(line: 431, column: 3, scope: !1840, inlinedAt: !3376)
!3391 = !DILocation(line: 432, column: 3, scope: !1840, inlinedAt: !3376)
!3392 = !DILocation(line: 433, column: 1, scope: !1840, inlinedAt: !3376)
!3393 = !DILocation(line: 438, column: 5, scope: !1879, inlinedAt: !3369)
!3394 = !DILocation(line: 441, column: 1, scope: !1872, inlinedAt: !3369)
!3395 = !DILocation(line: 755, column: 15, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !3370, file: !1, line: 755, column: 11)
!3397 = !DILocation(line: 755, column: 17, scope: !3396)
!3398 = !DILocation(line: 755, column: 31, scope: !3396)
!3399 = !DILocation(line: 755, column: 34, scope: !3396)
!3400 = !DILocation(line: 755, column: 62, scope: !3396)
!3401 = !DILocation(line: 755, column: 11, scope: !3370)
!3402 = !DILocation(line: 223, column: 33, scope: !1370, inlinedAt: !3403)
!3403 = distinct !DILocation(line: 757, column: 9, scope: !3404)
!3404 = distinct !DILexicalBlock(scope: !3396, file: !1, line: 755, column: 76)
!3405 = !DILocation(line: 223, column: 46, scope: !1370, inlinedAt: !3403)
!3406 = !DILocation(line: 224, column: 10, scope: !1377, inlinedAt: !3403)
!3407 = !DILocation(line: 224, column: 12, scope: !1377, inlinedAt: !3403)
!3408 = !DILocation(line: 0, scope: !3404)
!3409 = !DILocation(line: 224, column: 7, scope: !1370, inlinedAt: !3403)
!3410 = !DILocation(line: 225, column: 24, scope: !1377, inlinedAt: !3403)
!3411 = !DILocation(line: 215, column: 33, scope: !1302, inlinedAt: !3412)
!3412 = distinct !DILocation(line: 225, column: 5, scope: !1377, inlinedAt: !3403)
!3413 = !DILocation(line: 215, column: 41, scope: !1302, inlinedAt: !3412)
!3414 = !DILocation(line: 216, column: 8, scope: !1309, inlinedAt: !3412)
!3415 = !DILocation(line: 216, column: 17, scope: !1309, inlinedAt: !3412)
!3416 = !DILocation(line: 216, column: 31, scope: !1309, inlinedAt: !3412)
!3417 = !DILocation(line: 216, column: 27, scope: !1309, inlinedAt: !3412)
!3418 = !DILocation(line: 216, column: 24, scope: !1309, inlinedAt: !3412)
!3419 = !DILocation(line: 216, column: 7, scope: !1302, inlinedAt: !3412)
!3420 = !DILocation(line: 217, column: 9, scope: !1316, inlinedAt: !3412)
!3421 = !DILocation(line: 217, column: 16, scope: !1316, inlinedAt: !3412)
!3422 = !DILocation(line: 758, column: 9, scope: !3404)
!3423 = !DILocation(line: 219, column: 3, scope: !1316, inlinedAt: !3412)
!3424 = !DILocation(line: 220, column: 1, scope: !1302, inlinedAt: !3412)
!3425 = !DILocation(line: 225, column: 5, scope: !1377, inlinedAt: !3403)
!3426 = !DILocation(line: 226, column: 1, scope: !1370, inlinedAt: !3403)
!3427 = !DILocation(line: 759, column: 15, scope: !3404)
!3428 = !DILocation(line: 759, column: 52, scope: !3404)
!3429 = !DILocation(line: 759, column: 42, scope: !3404)
!3430 = !DILocation(line: 760, column: 7, scope: !3404)
!3431 = !DILocation(line: 762, column: 9, scope: !3432)
!3432 = distinct !DILexicalBlock(scope: !3396, file: !1, line: 761, column: 12)
!3433 = !DILocation(line: 763, column: 9, scope: !3432)
!3434 = !DILocation(line: 767, column: 19, scope: !3272)
!3435 = !DILocation(line: 767, column: 50, scope: !3272)
!3436 = !DILocation(line: 768, column: 19, scope: !3272)
!3437 = !DILocation(line: 768, column: 50, scope: !3272)
!3438 = !DILocation(line: 769, column: 19, scope: !3272)
!3439 = !DILocation(line: 769, column: 50, scope: !3272)
!3440 = !DILocation(line: 770, column: 19, scope: !3272)
!3441 = !DILocation(line: 770, column: 50, scope: !3272)
!3442 = !DILocation(line: 771, column: 19, scope: !3272)
!3443 = !DILocation(line: 771, column: 50, scope: !3272)
!3444 = !DILocation(line: 772, column: 19, scope: !3272)
!3445 = !DILocation(line: 772, column: 50, scope: !3272)
!3446 = !DILocation(line: 773, column: 18, scope: !3272)
!3447 = !DILocation(line: 773, column: 50, scope: !3272)
!3448 = !DILocation(line: 774, column: 18, scope: !3272)
!3449 = !DILocation(line: 774, column: 50, scope: !3272)
!3450 = !DILocation(line: 775, column: 18, scope: !3272)
!3451 = !DILocation(line: 775, column: 50, scope: !3272)
!3452 = !DILocation(line: 776, column: 18, scope: !3272)
!3453 = !DILocation(line: 776, column: 50, scope: !3272)
!3454 = !DILocation(line: 777, column: 18, scope: !3272)
!3455 = !DILocation(line: 777, column: 50, scope: !3272)
!3456 = !DILocation(line: 778, column: 18, scope: !3272)
!3457 = !DILocation(line: 778, column: 50, scope: !3272)
!3458 = !DILocation(line: 781, column: 1, scope: !3257)
!3459 = distinct !DISubprogram(name: "codecomp", scope: !1, file: !1, line: 673, type: !3460, isLocal: true, isDefinition: true, scopeLine: 674, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3462)
!3460 = !DISubroutineType(types: !3461)
!3461 = !{null, !427, !89, !93, !1167, !1167}
!3462 = !{!3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470}
!3463 = !DILocalVariable(name: "fs", arg: 1, scope: !3459, file: !1, line: 673, type: !427)
!3464 = !DILocalVariable(name: "op", arg: 2, scope: !3459, file: !1, line: 673, type: !89)
!3465 = !DILocalVariable(name: "cond", arg: 3, scope: !3459, file: !1, line: 673, type: !93)
!3466 = !DILocalVariable(name: "e1", arg: 4, scope: !3459, file: !1, line: 673, type: !1167)
!3467 = !DILocalVariable(name: "e2", arg: 5, scope: !3459, file: !1, line: 674, type: !1167)
!3468 = !DILocalVariable(name: "o1", scope: !3459, file: !1, line: 675, type: !93)
!3469 = !DILocalVariable(name: "o2", scope: !3459, file: !1, line: 676, type: !93)
!3470 = !DILocalVariable(name: "temp", scope: !3471, file: !1, line: 680, type: !93)
!3471 = distinct !DILexicalBlock(scope: !3472, file: !1, line: 679, column: 33)
!3472 = distinct !DILexicalBlock(scope: !3459, file: !1, line: 679, column: 7)
!3473 = !DILocation(line: 673, column: 34, scope: !3459)
!3474 = !DILocation(line: 673, column: 45, scope: !3459)
!3475 = !DILocation(line: 673, column: 53, scope: !3459)
!3476 = !DILocation(line: 673, column: 68, scope: !3459)
!3477 = !DILocation(line: 674, column: 68, scope: !3459)
!3478 = !DILocation(line: 675, column: 12, scope: !3459)
!3479 = !DILocation(line: 675, column: 7, scope: !3459)
!3480 = !DILocation(line: 676, column: 12, scope: !3459)
!3481 = !DILocation(line: 676, column: 7, scope: !3459)
!3482 = !DILocation(line: 223, column: 33, scope: !1370, inlinedAt: !3483)
!3483 = distinct !DILocation(line: 677, column: 3, scope: !3459)
!3484 = !DILocation(line: 223, column: 46, scope: !1370, inlinedAt: !3483)
!3485 = !DILocation(line: 224, column: 10, scope: !1377, inlinedAt: !3483)
!3486 = !DILocation(line: 224, column: 12, scope: !1377, inlinedAt: !3483)
!3487 = !DILocation(line: 224, column: 7, scope: !1370, inlinedAt: !3483)
!3488 = !DILocation(line: 225, column: 20, scope: !1377, inlinedAt: !3483)
!3489 = !DILocation(line: 225, column: 24, scope: !1377, inlinedAt: !3483)
!3490 = !DILocation(line: 215, column: 33, scope: !1302, inlinedAt: !3491)
!3491 = distinct !DILocation(line: 225, column: 5, scope: !1377, inlinedAt: !3483)
!3492 = !DILocation(line: 215, column: 41, scope: !1302, inlinedAt: !3491)
!3493 = !DILocation(line: 216, column: 8, scope: !1309, inlinedAt: !3491)
!3494 = !DILocation(line: 216, column: 17, scope: !1309, inlinedAt: !3491)
!3495 = !DILocation(line: 216, column: 31, scope: !1309, inlinedAt: !3491)
!3496 = !DILocation(line: 216, column: 27, scope: !1309, inlinedAt: !3491)
!3497 = !DILocation(line: 216, column: 24, scope: !1309, inlinedAt: !3491)
!3498 = !DILocation(line: 216, column: 7, scope: !1302, inlinedAt: !3491)
!3499 = !DILocation(line: 217, column: 9, scope: !1316, inlinedAt: !3491)
!3500 = !DILocation(line: 217, column: 16, scope: !1316, inlinedAt: !3491)
!3501 = !DILocation(line: 219, column: 3, scope: !1316, inlinedAt: !3491)
!3502 = !DILocation(line: 220, column: 1, scope: !1302, inlinedAt: !3491)
!3503 = !DILocation(line: 225, column: 5, scope: !1377, inlinedAt: !3483)
!3504 = !DILocation(line: 226, column: 1, scope: !1370, inlinedAt: !3483)
!3505 = !DILocation(line: 223, column: 33, scope: !1370, inlinedAt: !3506)
!3506 = distinct !DILocation(line: 678, column: 3, scope: !3459)
!3507 = !DILocation(line: 223, column: 46, scope: !1370, inlinedAt: !3506)
!3508 = !DILocation(line: 224, column: 10, scope: !1377, inlinedAt: !3506)
!3509 = !DILocation(line: 224, column: 12, scope: !1377, inlinedAt: !3506)
!3510 = !DILocation(line: 0, scope: !3459)
!3511 = !DILocation(line: 224, column: 7, scope: !1370, inlinedAt: !3506)
!3512 = !DILocation(line: 225, column: 24, scope: !1377, inlinedAt: !3506)
!3513 = !DILocation(line: 215, column: 33, scope: !1302, inlinedAt: !3514)
!3514 = distinct !DILocation(line: 225, column: 5, scope: !1377, inlinedAt: !3506)
!3515 = !DILocation(line: 215, column: 41, scope: !1302, inlinedAt: !3514)
!3516 = !DILocation(line: 216, column: 8, scope: !1309, inlinedAt: !3514)
!3517 = !DILocation(line: 216, column: 17, scope: !1309, inlinedAt: !3514)
!3518 = !DILocation(line: 216, column: 31, scope: !1309, inlinedAt: !3514)
!3519 = !DILocation(line: 216, column: 27, scope: !1309, inlinedAt: !3514)
!3520 = !DILocation(line: 216, column: 24, scope: !1309, inlinedAt: !3514)
!3521 = !DILocation(line: 216, column: 7, scope: !1302, inlinedAt: !3514)
!3522 = !DILocation(line: 217, column: 9, scope: !1316, inlinedAt: !3514)
!3523 = !DILocation(line: 217, column: 16, scope: !1316, inlinedAt: !3514)
!3524 = !DILocation(line: 219, column: 3, scope: !1316, inlinedAt: !3514)
!3525 = !DILocation(line: 220, column: 1, scope: !1302, inlinedAt: !3514)
!3526 = !DILocation(line: 225, column: 5, scope: !1377, inlinedAt: !3506)
!3527 = !DILocation(line: 226, column: 1, scope: !1370, inlinedAt: !3506)
!3528 = !DILocation(line: 679, column: 12, scope: !3472)
!3529 = !DILocation(line: 679, column: 23, scope: !3472)
!3530 = !DILocation(line: 679, column: 17, scope: !3472)
!3531 = !DILocation(line: 74, column: 33, scope: !2469, inlinedAt: !3532)
!3532 = distinct !DILocation(line: 684, column: 18, scope: !3459)
!3533 = !DILocation(line: 74, column: 44, scope: !2469, inlinedAt: !3532)
!3534 = !DILocation(line: 74, column: 59, scope: !2469, inlinedAt: !3532)
!3535 = !DILocation(line: 74, column: 66, scope: !2469, inlinedAt: !3532)
!3536 = !DILocation(line: 804, column: 30, scope: !571, inlinedAt: !3537)
!3537 = distinct !DILocation(line: 75, column: 3, scope: !2469, inlinedAt: !3532)
!3538 = !DILocation(line: 804, column: 41, scope: !571, inlinedAt: !3537)
!3539 = !DILocation(line: 804, column: 55, scope: !571, inlinedAt: !3537)
!3540 = !DILocation(line: 804, column: 62, scope: !571, inlinedAt: !3537)
!3541 = !DILocation(line: 808, column: 24, scope: !571, inlinedAt: !3537)
!3542 = !DILocation(line: 808, column: 52, scope: !571, inlinedAt: !3537)
!3543 = !DILocation(line: 808, column: 56, scope: !571, inlinedAt: !3537)
!3544 = !DILocation(line: 808, column: 10, scope: !571, inlinedAt: !3537)
!3545 = !DILocation(line: 808, column: 3, scope: !571, inlinedAt: !3537)
!3546 = !DILocation(line: 76, column: 10, scope: !2469, inlinedAt: !3532)
!3547 = !DILocation(line: 76, column: 3, scope: !2469, inlinedAt: !3532)
!3548 = !DILocation(line: 684, column: 16, scope: !3459)
!3549 = !DILocation(line: 685, column: 9, scope: !3459)
!3550 = !DILocation(line: 686, column: 1, scope: !3459)
!3551 = distinct !DISubprogram(name: "luaK_fixline", scope: !1, file: !1, line: 784, type: !795, isLocal: false, isDefinition: true, scopeLine: 784, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3552)
!3552 = !{!3553, !3554}
!3553 = !DILocalVariable(name: "fs", arg: 1, scope: !3551, file: !1, line: 784, type: !427)
!3554 = !DILocalVariable(name: "line", arg: 2, scope: !3551, file: !1, line: 784, type: !93)
!3555 = !DILocation(line: 784, column: 31, scope: !3551)
!3556 = !DILocation(line: 784, column: 39, scope: !3551)
!3557 = !DILocation(line: 785, column: 7, scope: !3551)
!3558 = !DILocation(line: 785, column: 10, scope: !3551)
!3559 = !{!545, !523, i64 40}
!3560 = !DILocation(line: 785, column: 23, scope: !3551)
!3561 = !DILocation(line: 785, column: 26, scope: !3551)
!3562 = !DILocation(line: 785, column: 3, scope: !3551)
!3563 = !DILocation(line: 785, column: 31, scope: !3551)
!3564 = !DILocation(line: 786, column: 1, scope: !3551)
!3565 = distinct !DISubprogram(name: "luaK_code", scope: !1, file: !1, line: 789, type: !3566, isLocal: true, isDefinition: true, scopeLine: 789, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3568)
!3566 = !DISubroutineType(types: !3567)
!3567 = !{!93, !427, !90, !93}
!3568 = !{!3569, !3570, !3571, !3572}
!3569 = !DILocalVariable(name: "fs", arg: 1, scope: !3565, file: !1, line: 789, type: !427)
!3570 = !DILocalVariable(name: "i", arg: 2, scope: !3565, file: !1, line: 789, type: !90)
!3571 = !DILocalVariable(name: "line", arg: 3, scope: !3565, file: !1, line: 789, type: !93)
!3572 = !DILocalVariable(name: "f", scope: !3565, file: !1, line: 790, type: !432)
!3573 = !DILocation(line: 789, column: 34, scope: !3565)
!3574 = !DILocation(line: 789, column: 50, scope: !3565)
!3575 = !DILocation(line: 789, column: 57, scope: !3565)
!3576 = !DILocation(line: 790, column: 18, scope: !3565)
!3577 = !DILocation(line: 790, column: 10, scope: !3565)
!3578 = !DILocalVariable(name: "fs", arg: 1, scope: !3579, file: !1, line: 163, type: !427)
!3579 = distinct !DISubprogram(name: "dischargejpc", scope: !1, file: !1, line: 163, type: !3580, isLocal: true, isDefinition: true, scopeLine: 163, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3582)
!3580 = !DISubroutineType(types: !3581)
!3581 = !{null, !427}
!3582 = !{!3578}
!3583 = !DILocation(line: 163, column: 38, scope: !3579, inlinedAt: !3584)
!3584 = distinct !DILocation(line: 791, column: 3, scope: !3565)
!3585 = !DILocation(line: 164, column: 24, scope: !3579, inlinedAt: !3584)
!3586 = !DILocation(line: 164, column: 33, scope: !3579, inlinedAt: !3584)
!3587 = !DILocation(line: 150, column: 38, scope: !851, inlinedAt: !3588)
!3588 = distinct !DILocation(line: 164, column: 3, scope: !3579, inlinedAt: !3584)
!3589 = !DILocation(line: 150, column: 46, scope: !851, inlinedAt: !3588)
!3590 = !DILocation(line: 150, column: 56, scope: !851, inlinedAt: !3588)
!3591 = !DILocation(line: 150, column: 69, scope: !851, inlinedAt: !3588)
!3592 = !DILocation(line: 151, column: 31, scope: !851, inlinedAt: !3588)
!3593 = !DILocation(line: 152, column: 15, scope: !851, inlinedAt: !3588)
!3594 = !DILocation(line: 152, column: 3, scope: !851, inlinedAt: !3588)
!3595 = !DILocation(line: 101, column: 16, scope: !655, inlinedAt: !3596)
!3596 = distinct !DILocation(line: 153, column: 16, scope: !860, inlinedAt: !3588)
!3597 = !DILocation(line: 100, column: 32, scope: !655, inlinedAt: !3596)
!3598 = !DILocation(line: 100, column: 40, scope: !655, inlinedAt: !3596)
!3599 = !DILocation(line: 101, column: 7, scope: !655, inlinedAt: !3596)
!3600 = !DILocation(line: 102, column: 14, scope: !669, inlinedAt: !3596)
!3601 = !DILocation(line: 105, column: 15, scope: !669, inlinedAt: !3596)
!3602 = !DILocation(line: 105, column: 18, scope: !669, inlinedAt: !3596)
!3603 = !DILocation(line: 102, column: 7, scope: !655, inlinedAt: !3596)
!3604 = !DILocation(line: 106, column: 1, scope: !655, inlinedAt: !3596)
!3605 = !DILocation(line: 153, column: 9, scope: !860, inlinedAt: !3588)
!3606 = !DILocation(line: 131, column: 37, scope: !882, inlinedAt: !3607)
!3607 = distinct !DILocation(line: 154, column: 9, scope: !891, inlinedAt: !3588)
!3608 = !DILocation(line: 131, column: 45, scope: !882, inlinedAt: !3607)
!3609 = !DILocation(line: 131, column: 55, scope: !882, inlinedAt: !3607)
!3610 = !DILocation(line: 109, column: 48, scope: !895, inlinedAt: !3611)
!3611 = distinct !DILocation(line: 132, column: 20, scope: !882, inlinedAt: !3607)
!3612 = !DILocation(line: 109, column: 56, scope: !895, inlinedAt: !3611)
!3613 = !DILocation(line: 110, column: 16, scope: !895, inlinedAt: !3611)
!3614 = !DILocation(line: 111, column: 10, scope: !906, inlinedAt: !3611)
!3615 = !DILocation(line: 111, column: 15, scope: !906, inlinedAt: !3611)
!3616 = !DILocation(line: 111, column: 18, scope: !906, inlinedAt: !3611)
!3617 = !DILocation(line: 111, column: 7, scope: !895, inlinedAt: !3611)
!3618 = !DILocation(line: 114, column: 5, scope: !906, inlinedAt: !3611)
!3619 = !DILocation(line: 133, column: 7, scope: !913, inlinedAt: !3607)
!3620 = !DILocation(line: 0, scope: !906, inlinedAt: !3611)
!3621 = !DILocation(line: 115, column: 1, scope: !895, inlinedAt: !3611)
!3622 = !DILocation(line: 132, column: 16, scope: !882, inlinedAt: !3607)
!3623 = !DILocation(line: 133, column: 22, scope: !913, inlinedAt: !3607)
!3624 = !DILocation(line: 133, column: 7, scope: !882, inlinedAt: !3607)
!3625 = !DILocation(line: 135, column: 31, scope: !920, inlinedAt: !3607)
!3626 = !DILocation(line: 138, column: 10, scope: !920, inlinedAt: !3607)
!3627 = !DILocation(line: 0, scope: !920, inlinedAt: !3607)
!3628 = !DILocation(line: 141, column: 1, scope: !882, inlinedAt: !3607)
!3629 = !DILocation(line: 80, column: 33, scope: !681, inlinedAt: !3630)
!3630 = distinct !DILocation(line: 155, column: 7, scope: !891, inlinedAt: !3588)
!3631 = !DILocation(line: 80, column: 41, scope: !681, inlinedAt: !3630)
!3632 = !DILocation(line: 80, column: 49, scope: !681, inlinedAt: !3630)
!3633 = !DILocation(line: 81, column: 16, scope: !681, inlinedAt: !3630)
!3634 = !DILocation(line: 82, column: 20, scope: !681, inlinedAt: !3630)
!3635 = !DILocation(line: 82, column: 7, scope: !681, inlinedAt: !3630)
!3636 = !DILocation(line: 84, column: 7, scope: !695, inlinedAt: !3630)
!3637 = !DILocation(line: 84, column: 19, scope: !695, inlinedAt: !3630)
!3638 = !DILocation(line: 84, column: 7, scope: !681, inlinedAt: !3630)
!3639 = !DILocation(line: 85, column: 26, scope: !695, inlinedAt: !3630)
!3640 = !DILocation(line: 85, column: 5, scope: !695, inlinedAt: !3630)
!3641 = !DILocation(line: 80, column: 33, scope: !681, inlinedAt: !3642)
!3642 = distinct !DILocation(line: 157, column: 7, scope: !891, inlinedAt: !3588)
!3643 = !DILocation(line: 80, column: 41, scope: !681, inlinedAt: !3642)
!3644 = !DILocation(line: 80, column: 49, scope: !681, inlinedAt: !3642)
!3645 = !DILocation(line: 81, column: 16, scope: !681, inlinedAt: !3642)
!3646 = !DILocation(line: 82, column: 20, scope: !681, inlinedAt: !3642)
!3647 = !DILocation(line: 82, column: 7, scope: !681, inlinedAt: !3642)
!3648 = !DILocation(line: 84, column: 7, scope: !695, inlinedAt: !3642)
!3649 = !DILocation(line: 84, column: 19, scope: !695, inlinedAt: !3642)
!3650 = !DILocation(line: 84, column: 7, scope: !681, inlinedAt: !3642)
!3651 = !DILocation(line: 85, column: 26, scope: !695, inlinedAt: !3642)
!3652 = !DILocation(line: 85, column: 5, scope: !695, inlinedAt: !3642)
!3653 = !DILocation(line: 86, column: 3, scope: !681, inlinedAt: !3642)
!3654 = !DILocation(line: 87, column: 1, scope: !681, inlinedAt: !3642)
!3655 = !DILocation(line: 793, column: 3, scope: !3656)
!3656 = distinct !DILexicalBlock(scope: !3565, file: !1, line: 793, column: 3)
!3657 = !DILocation(line: 160, column: 1, scope: !851, inlinedAt: !3588)
!3658 = !DILocation(line: 165, column: 11, scope: !3579, inlinedAt: !3584)
!3659 = !DILocation(line: 166, column: 1, scope: !3579, inlinedAt: !3584)
!3660 = !{!545, !526, i64 80}
!3661 = !DILocation(line: 793, column: 3, scope: !3565)
!3662 = !DILocation(line: 795, column: 6, scope: !3565)
!3663 = !DILocation(line: 795, column: 15, scope: !3565)
!3664 = !DILocation(line: 795, column: 3, scope: !3565)
!3665 = !DILocation(line: 795, column: 19, scope: !3565)
!3666 = !DILocation(line: 797, column: 3, scope: !3667)
!3667 = distinct !DILexicalBlock(scope: !3565, file: !1, line: 797, column: 3)
!3668 = !{!545, !526, i64 84}
!3669 = !DILocation(line: 797, column: 3, scope: !3565)
!3670 = !DILocation(line: 799, column: 6, scope: !3565)
!3671 = !DILocation(line: 799, column: 19, scope: !3565)
!3672 = !DILocation(line: 799, column: 3, scope: !3565)
!3673 = !DILocation(line: 799, column: 23, scope: !3565)
!3674 = !DILocation(line: 800, column: 16, scope: !3565)
!3675 = !DILocation(line: 800, column: 3, scope: !3565)
!3676 = distinct !DISubprogram(name: "luaK_setlist", scope: !1, file: !1, line: 819, type: !3677, isLocal: false, isDefinition: true, scopeLine: 819, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3679)
!3677 = !DISubroutineType(types: !3678)
!3678 = !{null, !427, !93, !93, !93}
!3679 = !{!3680, !3681, !3682, !3683, !3684, !3685}
!3680 = !DILocalVariable(name: "fs", arg: 1, scope: !3676, file: !1, line: 819, type: !427)
!3681 = !DILocalVariable(name: "base", arg: 2, scope: !3676, file: !1, line: 819, type: !93)
!3682 = !DILocalVariable(name: "nelems", arg: 3, scope: !3676, file: !1, line: 819, type: !93)
!3683 = !DILocalVariable(name: "tostore", arg: 4, scope: !3676, file: !1, line: 819, type: !93)
!3684 = !DILocalVariable(name: "c", scope: !3676, file: !1, line: 820, type: !93)
!3685 = !DILocalVariable(name: "b", scope: !3676, file: !1, line: 821, type: !93)
!3686 = !DILocation(line: 819, column: 31, scope: !3676)
!3687 = !DILocation(line: 819, column: 39, scope: !3676)
!3688 = !DILocation(line: 819, column: 49, scope: !3676)
!3689 = !DILocation(line: 819, column: 61, scope: !3676)
!3690 = !DILocation(line: 820, column: 20, scope: !3676)
!3691 = !DILocation(line: 820, column: 24, scope: !3676)
!3692 = !DILocation(line: 820, column: 43, scope: !3676)
!3693 = !DILocation(line: 820, column: 7, scope: !3676)
!3694 = !DILocation(line: 821, column: 20, scope: !3676)
!3695 = !DILocation(line: 823, column: 9, scope: !3696)
!3696 = distinct !DILexicalBlock(scope: !3676, file: !1, line: 823, column: 7)
!3697 = !DILocation(line: 804, column: 30, scope: !571, inlinedAt: !3698)
!3698 = distinct !DILocation(line: 824, column: 5, scope: !3696)
!3699 = !DILocation(line: 804, column: 30, scope: !571, inlinedAt: !3700)
!3700 = distinct !DILocation(line: 826, column: 5, scope: !3701)
!3701 = distinct !DILexicalBlock(scope: !3696, file: !1, line: 825, column: 8)
!3702 = !DILocation(line: 804, column: 41, scope: !571, inlinedAt: !3698)
!3703 = !DILocation(line: 804, column: 41, scope: !571, inlinedAt: !3700)
!3704 = !DILocation(line: 804, column: 48, scope: !571, inlinedAt: !3698)
!3705 = !DILocation(line: 804, column: 48, scope: !571, inlinedAt: !3700)
!3706 = !DILocation(line: 808, column: 24, scope: !571, inlinedAt: !3698)
!3707 = !DILocation(line: 823, column: 7, scope: !3676)
!3708 = !DILocation(line: 804, column: 62, scope: !571, inlinedAt: !3698)
!3709 = !DILocation(line: 808, column: 52, scope: !571, inlinedAt: !3698)
!3710 = !DILocation(line: 808, column: 56, scope: !571, inlinedAt: !3698)
!3711 = !DILocation(line: 808, column: 10, scope: !571, inlinedAt: !3698)
!3712 = !DILocation(line: 808, column: 3, scope: !571, inlinedAt: !3698)
!3713 = !DILocation(line: 824, column: 5, scope: !3696)
!3714 = !DILocation(line: 804, column: 62, scope: !571, inlinedAt: !3700)
!3715 = !DILocation(line: 808, column: 52, scope: !571, inlinedAt: !3700)
!3716 = !DILocation(line: 808, column: 56, scope: !571, inlinedAt: !3700)
!3717 = !DILocation(line: 808, column: 10, scope: !571, inlinedAt: !3700)
!3718 = !DILocation(line: 808, column: 3, scope: !571, inlinedAt: !3700)
!3719 = !DILocation(line: 827, column: 45, scope: !3701)
!3720 = !DILocation(line: 827, column: 49, scope: !3701)
!3721 = !DILocation(line: 827, column: 5, scope: !3701)
!3722 = !DILocation(line: 829, column: 22, scope: !3676)
!3723 = !DILocation(line: 829, column: 7, scope: !3676)
!3724 = !DILocation(line: 829, column: 15, scope: !3676)
!3725 = !DILocation(line: 830, column: 1, scope: !3676)
!3726 = distinct !DISubprogram(name: "discharge2reg", scope: !1, file: !1, line: 343, type: !1165, isLocal: true, isDefinition: true, scopeLine: 343, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3727)
!3727 = !{!3728, !3729, !3730, !3731}
!3728 = !DILocalVariable(name: "fs", arg: 1, scope: !3726, file: !1, line: 343, type: !427)
!3729 = !DILocalVariable(name: "e", arg: 2, scope: !3726, file: !1, line: 343, type: !1167)
!3730 = !DILocalVariable(name: "reg", arg: 3, scope: !3726, file: !1, line: 343, type: !93)
!3731 = !DILocalVariable(name: "pc", scope: !3732, file: !1, line: 363, type: !385)
!3732 = distinct !DILexicalBlock(scope: !3733, file: !1, line: 362, column: 22)
!3733 = distinct !DILexicalBlock(scope: !3726, file: !1, line: 345, column: 17)
!3734 = !DILocation(line: 343, column: 39, scope: !3726)
!3735 = !DILocation(line: 343, column: 52, scope: !3726)
!3736 = !DILocation(line: 343, column: 59, scope: !3726)
!3737 = !DILocation(line: 344, column: 3, scope: !3726)
!3738 = !DILocation(line: 345, column: 14, scope: !3726)
!3739 = !DILocation(line: 345, column: 3, scope: !3726)
!3740 = !DILocation(line: 35, column: 27, scope: !424, inlinedAt: !3741)
!3741 = distinct !DILocation(line: 347, column: 7, scope: !3742)
!3742 = distinct !DILexicalBlock(scope: !3733, file: !1, line: 346, column: 16)
!3743 = !DILocation(line: 35, column: 35, scope: !424, inlinedAt: !3741)
!3744 = !DILocation(line: 35, column: 45, scope: !424, inlinedAt: !3741)
!3745 = !DILocation(line: 37, column: 11, scope: !515, inlinedAt: !3741)
!3746 = !DILocation(line: 37, column: 20, scope: !515, inlinedAt: !3741)
!3747 = !DILocation(line: 37, column: 14, scope: !515, inlinedAt: !3741)
!3748 = !DILocation(line: 37, column: 7, scope: !424, inlinedAt: !3741)
!3749 = !DILocation(line: 38, column: 16, scope: !513, inlinedAt: !3741)
!3750 = !DILocation(line: 38, column: 9, scope: !514, inlinedAt: !3741)
!3751 = !DILocation(line: 39, column: 23, scope: !535, inlinedAt: !3741)
!3752 = !DILocation(line: 39, column: 19, scope: !535, inlinedAt: !3741)
!3753 = !DILocation(line: 39, column: 16, scope: !535, inlinedAt: !3741)
!3754 = !DILocation(line: 39, column: 11, scope: !536, inlinedAt: !3741)
!3755 = !DILocation(line: 43, column: 23, scope: !512, inlinedAt: !3741)
!3756 = !DILocation(line: 43, column: 26, scope: !512, inlinedAt: !3741)
!3757 = !DILocation(line: 43, column: 37, scope: !512, inlinedAt: !3741)
!3758 = !DILocation(line: 43, column: 19, scope: !512, inlinedAt: !3741)
!3759 = !DILocation(line: 36, column: 16, scope: !424, inlinedAt: !3741)
!3760 = !DILocation(line: 44, column: 11, scope: !511, inlinedAt: !3741)
!3761 = !DILocation(line: 44, column: 33, scope: !511, inlinedAt: !3741)
!3762 = !DILocation(line: 44, column: 11, scope: !512, inlinedAt: !3741)
!3763 = !DILocation(line: 45, column: 21, scope: !510, inlinedAt: !3741)
!3764 = !DILocation(line: 45, column: 13, scope: !510, inlinedAt: !3741)
!3765 = !DILocation(line: 46, column: 19, scope: !510, inlinedAt: !3741)
!3766 = !DILocation(line: 46, column: 13, scope: !510, inlinedAt: !3741)
!3767 = !DILocation(line: 47, column: 19, scope: !558, inlinedAt: !3741)
!3768 = !DILocation(line: 47, column: 41, scope: !558, inlinedAt: !3741)
!3769 = !DILocation(line: 47, column: 35, scope: !558, inlinedAt: !3741)
!3770 = !DILocation(line: 47, column: 27, scope: !558, inlinedAt: !3741)
!3771 = !DILocation(line: 48, column: 24, scope: !563, inlinedAt: !3741)
!3772 = !DILocation(line: 48, column: 15, scope: !564, inlinedAt: !3741)
!3773 = !DILocation(line: 49, column: 13, scope: !563, inlinedAt: !3741)
!3774 = !DILocation(line: 804, column: 30, scope: !571, inlinedAt: !3775)
!3775 = distinct !DILocation(line: 55, column: 3, scope: !424, inlinedAt: !3741)
!3776 = !DILocation(line: 804, column: 41, scope: !571, inlinedAt: !3775)
!3777 = !DILocation(line: 804, column: 48, scope: !571, inlinedAt: !3775)
!3778 = !DILocation(line: 804, column: 55, scope: !571, inlinedAt: !3775)
!3779 = !DILocation(line: 804, column: 62, scope: !571, inlinedAt: !3775)
!3780 = !DILocation(line: 808, column: 24, scope: !571, inlinedAt: !3775)
!3781 = !DILocation(line: 808, column: 52, scope: !571, inlinedAt: !3775)
!3782 = !DILocation(line: 808, column: 56, scope: !571, inlinedAt: !3775)
!3783 = !DILocation(line: 808, column: 10, scope: !571, inlinedAt: !3775)
!3784 = !DILocation(line: 808, column: 3, scope: !571, inlinedAt: !3775)
!3785 = !DILocation(line: 56, column: 1, scope: !424, inlinedAt: !3741)
!3786 = !DILocation(line: 348, column: 7, scope: !3742)
!3787 = !DILocation(line: 351, column: 47, scope: !3788)
!3788 = distinct !DILexicalBlock(scope: !3733, file: !1, line: 350, column: 31)
!3789 = !DILocation(line: 804, column: 30, scope: !571, inlinedAt: !3790)
!3790 = distinct !DILocation(line: 351, column: 7, scope: !3788)
!3791 = !DILocation(line: 804, column: 41, scope: !571, inlinedAt: !3790)
!3792 = !DILocation(line: 804, column: 48, scope: !571, inlinedAt: !3790)
!3793 = !DILocation(line: 804, column: 55, scope: !571, inlinedAt: !3790)
!3794 = !DILocation(line: 804, column: 62, scope: !571, inlinedAt: !3790)
!3795 = !DILocation(line: 808, column: 24, scope: !571, inlinedAt: !3790)
!3796 = !DILocation(line: 808, column: 52, scope: !571, inlinedAt: !3790)
!3797 = !DILocation(line: 808, column: 56, scope: !571, inlinedAt: !3790)
!3798 = !DILocation(line: 808, column: 10, scope: !571, inlinedAt: !3790)
!3799 = !DILocation(line: 808, column: 3, scope: !571, inlinedAt: !3790)
!3800 = !DILocation(line: 352, column: 7, scope: !3788)
!3801 = !DILocation(line: 355, column: 42, scope: !3802)
!3802 = distinct !DILexicalBlock(scope: !3733, file: !1, line: 354, column: 14)
!3803 = !DILocation(line: 355, column: 46, scope: !3802)
!3804 = !DILocation(line: 812, column: 30, scope: !618, inlinedAt: !3805)
!3805 = distinct !DILocation(line: 355, column: 7, scope: !3802)
!3806 = !DILocation(line: 812, column: 41, scope: !618, inlinedAt: !3805)
!3807 = !DILocation(line: 812, column: 48, scope: !618, inlinedAt: !3805)
!3808 = !DILocation(line: 812, column: 64, scope: !618, inlinedAt: !3805)
!3809 = !DILocation(line: 815, column: 24, scope: !618, inlinedAt: !3805)
!3810 = !DILocation(line: 815, column: 50, scope: !618, inlinedAt: !3805)
!3811 = !DILocation(line: 815, column: 54, scope: !618, inlinedAt: !3805)
!3812 = !DILocation(line: 815, column: 10, scope: !618, inlinedAt: !3805)
!3813 = !DILocation(line: 815, column: 3, scope: !618, inlinedAt: !3805)
!3814 = !DILocation(line: 356, column: 7, scope: !3802)
!3815 = !DILocation(line: 359, column: 61, scope: !3816)
!3816 = distinct !DILexicalBlock(scope: !3733, file: !1, line: 358, column: 17)
!3817 = !DILocation(line: 257, column: 30, scope: !1147, inlinedAt: !3818)
!3818 = distinct !DILocation(line: 359, column: 39, scope: !3816)
!3819 = !DILocation(line: 257, column: 45, scope: !1147, inlinedAt: !3818)
!3820 = !DILocation(line: 258, column: 3, scope: !1147, inlinedAt: !3818)
!3821 = !DILocation(line: 259, column: 3, scope: !1155, inlinedAt: !3818)
!3822 = !DILocation(line: 258, column: 10, scope: !1147, inlinedAt: !3818)
!3823 = !DILocation(line: 260, column: 10, scope: !1147, inlinedAt: !3818)
!3824 = !DILocation(line: 261, column: 1, scope: !1147, inlinedAt: !3818)
!3825 = !DILocation(line: 260, column: 3, scope: !1147, inlinedAt: !3818)
!3826 = !DILocation(line: 812, column: 30, scope: !618, inlinedAt: !3827)
!3827 = distinct !DILocation(line: 359, column: 7, scope: !3816)
!3828 = !DILocation(line: 812, column: 41, scope: !618, inlinedAt: !3827)
!3829 = !DILocation(line: 812, column: 48, scope: !618, inlinedAt: !3827)
!3830 = !DILocation(line: 812, column: 64, scope: !618, inlinedAt: !3827)
!3831 = !DILocation(line: 815, column: 24, scope: !618, inlinedAt: !3827)
!3832 = !DILocation(line: 815, column: 50, scope: !618, inlinedAt: !3827)
!3833 = !DILocation(line: 815, column: 54, scope: !618, inlinedAt: !3827)
!3834 = !DILocation(line: 815, column: 10, scope: !618, inlinedAt: !3827)
!3835 = !DILocation(line: 815, column: 3, scope: !618, inlinedAt: !3827)
!3836 = !DILocation(line: 360, column: 7, scope: !3816)
!3837 = !DILocation(line: 363, column: 26, scope: !3732)
!3838 = !DILocation(line: 363, column: 20, scope: !3732)
!3839 = !DILocation(line: 364, column: 7, scope: !3732)
!3840 = !DILocation(line: 368, column: 21, scope: !3841)
!3841 = distinct !DILexicalBlock(scope: !3842, file: !1, line: 368, column: 11)
!3842 = distinct !DILexicalBlock(scope: !3733, file: !1, line: 367, column: 21)
!3843 = !DILocation(line: 368, column: 25, scope: !3841)
!3844 = !DILocation(line: 368, column: 15, scope: !3841)
!3845 = !DILocation(line: 368, column: 11, scope: !3842)
!3846 = !DILocation(line: 804, column: 30, scope: !571, inlinedAt: !3847)
!3847 = distinct !DILocation(line: 369, column: 9, scope: !3841)
!3848 = !DILocation(line: 804, column: 41, scope: !571, inlinedAt: !3847)
!3849 = !DILocation(line: 804, column: 48, scope: !571, inlinedAt: !3847)
!3850 = !DILocation(line: 804, column: 55, scope: !571, inlinedAt: !3847)
!3851 = !DILocation(line: 804, column: 62, scope: !571, inlinedAt: !3847)
!3852 = !DILocation(line: 808, column: 24, scope: !571, inlinedAt: !3847)
!3853 = !DILocation(line: 808, column: 52, scope: !571, inlinedAt: !3847)
!3854 = !DILocation(line: 808, column: 56, scope: !571, inlinedAt: !3847)
!3855 = !DILocation(line: 808, column: 10, scope: !571, inlinedAt: !3847)
!3856 = !DILocation(line: 808, column: 3, scope: !571, inlinedAt: !3847)
!3857 = !DILocation(line: 369, column: 9, scope: !3841)
!3858 = !DILocation(line: 377, column: 6, scope: !3726)
!3859 = !DILocation(line: 377, column: 10, scope: !3726)
!3860 = !DILocation(line: 377, column: 15, scope: !3726)
!3861 = !DILocation(line: 378, column: 8, scope: !3726)
!3862 = !DILocation(line: 379, column: 1, scope: !3726)
