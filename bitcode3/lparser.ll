; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lparser.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lparser.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon.5 = type { i8, i8 }
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
%struct.LexState = type { i32, i32, i32, %struct.Token, %struct.Token, %struct.FuncState*, %struct.lua_State*, %struct.Zio*, %struct.Mbuffer*, %union.TString*, i8 }
%struct.Token = type { i32, %union.SemInfo }
%union.SemInfo = type { double }
%struct.FuncState = type { %struct.Proto*, %struct.Table*, %struct.FuncState*, %struct.LexState*, %struct.lua_State*, %struct.BlockCnt*, i32, i32, i32, i32, i32, i32, i16, i8, [60 x %struct.upvaldesc], [200 x i16] }
%struct.BlockCnt = type { %struct.BlockCnt*, i32, i8, i8, i8 }
%struct.upvaldesc = type { i8, i8 }
%struct.expdesc = type { i32, %union.anon.3, i32, i32 }
%union.anon.3 = type { double }
%struct.LHS_assign = type { %struct.LHS_assign*, %struct.expdesc }
%struct.ConsControl = type { %struct.expdesc, %struct.expdesc*, i32, i32, i32 }
%struct.anon.4 = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"'%s' expected\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"chunk has too many syntax levels\00", align 1
@priority = internal unnamed_addr constant [15 x %struct.anon.5] [%struct.anon.5 { i8 6, i8 6 }, %struct.anon.5 { i8 6, i8 6 }, %struct.anon.5 { i8 7, i8 7 }, %struct.anon.5 { i8 7, i8 7 }, %struct.anon.5 { i8 7, i8 7 }, %struct.anon.5 { i8 10, i8 9 }, %struct.anon.5 { i8 5, i8 4 }, %struct.anon.5 { i8 3, i8 3 }, %struct.anon.5 { i8 3, i8 3 }, %struct.anon.5 { i8 3, i8 3 }, %struct.anon.5 { i8 3, i8 3 }, %struct.anon.5 { i8 3, i8 3 }, %struct.anon.5 { i8 3, i8 3 }, %struct.anon.5 { i8 2, i8 2 }, %struct.anon.5 { i8 1, i8 1 }], align 16, !dbg !0
@.str.2 = private unnamed_addr constant [43 x i8] c"cannot use '...' outside a vararg function\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"items in a constructor\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"main function has more than %d %s\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"function at line %d has more than %d %s\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"self\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"local variables\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"too many local variables\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"arg\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"<name> or '...' expected\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"constant table overflow\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"unexpected symbol\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"upvalues\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [49 x i8] c"ambiguous syntax (function call x new statement)\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"function arguments expected\00", align 1
@.str.17 = private unnamed_addr constant [41 x i8] c"'%s' expected (to close '%s' at line %d)\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"'=' or 'in' expected\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"(for index)\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"(for limit)\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"(for step)\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"(for generator)\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"(for state)\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"(for control)\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"no loop to break\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"syntax error\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"variables in assignment\00", align 1

; Function Attrs: noredzone nounwind
define hidden %struct.Proto* @luaY_parser(%struct.lua_State*, %struct.Zio*, %struct.Mbuffer*, i8*) local_unnamed_addr #0 !dbg !476 {
  %5 = alloca %struct.LexState, align 8
  %6 = alloca %struct.FuncState, align 8
  %7 = bitcast %struct.LexState* %5 to i8*, !dbg !568
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %7) #4, !dbg !568
  %8 = bitcast %struct.FuncState* %6 to i8*, !dbg !569
  call void @llvm.lifetime.start.p0i8(i64 600, i8* nonnull %8) #4, !dbg !569
  %9 = getelementptr inbounds %struct.LexState, %struct.LexState* %5, i64 0, i32 8, !dbg !570
  store %struct.Mbuffer* %2, %struct.Mbuffer** %9, align 8, !dbg !571, !tbaa !572
  %10 = tail call i64 @strlen(i8* %3) #5, !dbg !579
  %11 = tail call %union.TString* @luaS_newlstr(%struct.lua_State* %0, i8* %3, i64 %10) #5, !dbg !579
  call void @luaX_setinput(%struct.lua_State* %0, %struct.LexState* nonnull %5, %struct.Zio* %1, %union.TString* %11) #5, !dbg !581
  call fastcc void @open_func(%struct.LexState* nonnull %5, %struct.FuncState* nonnull %6) #6, !dbg !583
  %12 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %6, i64 0, i32 0, !dbg !584
  %13 = load %struct.Proto*, %struct.Proto** %12, align 8, !dbg !584, !tbaa !585
  %14 = getelementptr inbounds %struct.Proto, %struct.Proto* %13, i64 0, i32 21, !dbg !588
  store i8 2, i8* %14, align 2, !dbg !589, !tbaa !590
  call void @luaX_next(%struct.LexState* nonnull %5) #5, !dbg !592
  %15 = getelementptr inbounds %struct.LexState, %struct.LexState* %5, i64 0, i32 6, !dbg !609
  %16 = load %struct.lua_State*, %struct.lua_State** %15, align 8, !dbg !609, !tbaa !611
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %16, i64 0, i32 15, !dbg !612
  %18 = load i16, i16* %17, align 8, !dbg !613, !tbaa !614
  %19 = add i16 %18, 1, !dbg !613
  store i16 %19, i16* %17, align 8, !dbg !613, !tbaa !614
  %20 = icmp ugt i16 %19, 200, !dbg !618
  br i1 %20, label %21, label %22, !dbg !619

; <label>:21:                                     ; preds = %4
  call void @luaX_lexerror(%struct.LexState* nonnull %5, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 0) #5, !dbg !620
  br label %22, !dbg !620

; <label>:22:                                     ; preds = %21, %4
  %23 = getelementptr inbounds %struct.LexState, %struct.LexState* %5, i64 0, i32 3, i32 0
  %24 = getelementptr inbounds %struct.LexState, %struct.LexState* %5, i64 0, i32 5
  br label %25, !dbg !621

; <label>:25:                                     ; preds = %32, %22
  %26 = load i32, i32* %23, align 8, !dbg !622, !tbaa !623
  switch i32 %26, label %27 [
    i32 260, label %41
    i32 261, label %41
    i32 262, label %41
    i32 276, label %41
    i32 287, label %41
  ], !dbg !631

; <label>:27:                                     ; preds = %25
  %28 = call fastcc i32 @statement(%struct.LexState* nonnull %5) #5, !dbg !632
  %29 = load i32, i32* %23, align 8, !dbg !643, !tbaa !623
  %30 = icmp eq i32 %29, 59, !dbg !645
  br i1 %30, label %31, label %32, !dbg !646

; <label>:31:                                     ; preds = %27
  call void @luaX_next(%struct.LexState* nonnull %5) #5, !dbg !647
  br label %32, !dbg !649

; <label>:32:                                     ; preds = %31, %27
  %33 = load %struct.FuncState*, %struct.FuncState** %24, align 8, !dbg !650, !tbaa !651
  %34 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %33, i64 0, i32 13, !dbg !652
  %35 = load i8, i8* %34, align 2, !dbg !652, !tbaa !653
  %36 = zext i8 %35 to i32, !dbg !654
  %37 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %33, i64 0, i32 9, !dbg !655
  store i32 %36, i32* %37, align 4, !dbg !656, !tbaa !657
  %38 = icmp eq i32 %28, 0, !dbg !658
  br i1 %38, label %25, label %39, !dbg !621, !llvm.loop !659

; <label>:39:                                     ; preds = %32
  %40 = load i32, i32* %23, align 8, !dbg !662, !tbaa !623
  br label %41, !dbg !671

; <label>:41:                                     ; preds = %25, %25, %25, %25, %25, %39
  %42 = phi i32 [ %40, %39 ], [ %26, %25 ], [ %26, %25 ], [ %26, %25 ], [ %26, %25 ], [ %26, %25 ], !dbg !662
  %43 = load %struct.lua_State*, %struct.lua_State** %15, align 8, !dbg !671, !tbaa !611
  %44 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %43, i64 0, i32 15, !dbg !671
  %45 = load i16, i16* %44, align 8, !dbg !671, !tbaa !614
  %46 = add i16 %45, -1, !dbg !671
  store i16 %46, i16* %44, align 8, !dbg !671, !tbaa !614
  %47 = icmp eq i32 %42, 287, !dbg !674
  br i1 %47, label %51, label %48, !dbg !675

; <label>:48:                                     ; preds = %41
  %49 = call i8* @luaX_token2str(%struct.LexState* nonnull %5, i32 287) #5, !dbg !683
  %50 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %49) #5, !dbg !684
  call void @luaX_syntaxerror(%struct.LexState* nonnull %5, i8* %50) #5, !dbg !685
  br label %51, !dbg !686

; <label>:51:                                     ; preds = %41, %48
  call fastcc void @close_func(%struct.LexState* nonnull %5) #6, !dbg !687
  %52 = load %struct.Proto*, %struct.Proto** %12, align 8, !dbg !688, !tbaa !585
  call void @llvm.lifetime.end.p0i8(i64 600, i8* nonnull %8) #4, !dbg !689
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %7) #4, !dbg !689
  ret %struct.Proto* %52, !dbg !690
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare hidden void @luaX_setinput(%struct.lua_State*, %struct.LexState*, %struct.Zio*, %union.TString*) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden %union.TString* @luaS_newlstr(%struct.lua_State*, i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal fastcc void @open_func(%struct.LexState*, %struct.FuncState*) unnamed_addr #0 !dbg !691 {
  %3 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !707
  %4 = load %struct.lua_State*, %struct.lua_State** %3, align 8, !dbg !707, !tbaa !611
  %5 = tail call %struct.Proto* @luaF_newproto(%struct.lua_State* %4) #5, !dbg !709
  %6 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %1, i64 0, i32 0, !dbg !711
  store %struct.Proto* %5, %struct.Proto** %6, align 8, !dbg !712, !tbaa !585
  %7 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !713
  %8 = bitcast %struct.FuncState** %7 to i64*, !dbg !713
  %9 = load i64, i64* %8, align 8, !dbg !713, !tbaa !651
  %10 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %1, i64 0, i32 2, !dbg !714
  %11 = bitcast %struct.FuncState** %10 to i64*, !dbg !715
  store i64 %9, i64* %11, align 8, !dbg !715, !tbaa !716
  %12 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %1, i64 0, i32 3, !dbg !717
  store %struct.LexState* %0, %struct.LexState** %12, align 8, !dbg !718, !tbaa !719
  %13 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %1, i64 0, i32 4, !dbg !720
  store %struct.lua_State* %4, %struct.lua_State** %13, align 8, !dbg !721, !tbaa !722
  store %struct.FuncState* %1, %struct.FuncState** %7, align 8, !dbg !723, !tbaa !651
  %14 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %1, i64 0, i32 6, !dbg !724
  %15 = bitcast i32* %14 to <4 x i32>*, !dbg !725
  store <4 x i32> <i32 0, i32 -1, i32 -1, i32 0>, <4 x i32>* %15, align 8, !dbg !725, !tbaa !726
  %16 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %1, i64 0, i32 10, !dbg !727
  store i32 0, i32* %16, align 8, !dbg !728, !tbaa !729
  %17 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %1, i64 0, i32 11, !dbg !730
  store i32 0, i32* %17, align 4, !dbg !731, !tbaa !732
  %18 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %1, i64 0, i32 12, !dbg !733
  store i16 0, i16* %18, align 8, !dbg !734, !tbaa !735
  %19 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %1, i64 0, i32 13, !dbg !736
  store i8 0, i8* %19, align 2, !dbg !737, !tbaa !653
  %20 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %1, i64 0, i32 5, !dbg !738
  store %struct.BlockCnt* null, %struct.BlockCnt** %20, align 8, !dbg !739, !tbaa !740
  %21 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 9, !dbg !741
  %22 = bitcast %union.TString** %21 to i64*, !dbg !741
  %23 = load i64, i64* %22, align 8, !dbg !741, !tbaa !742
  %24 = getelementptr inbounds %struct.Proto, %struct.Proto* %5, i64 0, i32 9, !dbg !743
  %25 = bitcast %union.TString** %24 to i64*, !dbg !744
  store i64 %23, i64* %25, align 8, !dbg !744, !tbaa !745
  %26 = getelementptr inbounds %struct.Proto, %struct.Proto* %5, i64 0, i32 22, !dbg !746
  store i8 2, i8* %26, align 1, !dbg !747, !tbaa !748
  %27 = tail call %struct.Table* @luaH_new(%struct.lua_State* %4, i32 0, i32 0) #5, !dbg !749
  %28 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %1, i64 0, i32 1, !dbg !750
  store %struct.Table* %27, %struct.Table** %28, align 8, !dbg !751, !tbaa !752
  %29 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %4, i64 0, i32 4, !dbg !753
  %30 = load %struct.lua_TValue*, %struct.lua_TValue** %29, align 8, !dbg !753, !tbaa !754
  %31 = bitcast %struct.lua_TValue* %30 to %struct.Table**, !dbg !753
  store %struct.Table* %27, %struct.Table** %31, align 8, !dbg !753, !tbaa !755
  %32 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %30, i64 0, i32 1, !dbg !753
  store i32 5, i32* %32, align 8, !dbg !753, !tbaa !756
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %4, i64 0, i32 9, !dbg !757
  %34 = bitcast %struct.lua_TValue** %33 to i64*, !dbg !757
  %35 = load i64, i64* %34, align 8, !dbg !757, !tbaa !760
  %36 = bitcast %struct.lua_TValue** %29 to i64*, !dbg !757
  %37 = load i64, i64* %36, align 8, !dbg !757, !tbaa !754
  %38 = sub i64 %35, %37, !dbg !757
  %39 = icmp slt i64 %38, 17, !dbg !757
  %40 = inttoptr i64 %37 to %struct.lua_TValue*, !dbg !761
  br i1 %39, label %41, label %43, !dbg !761

; <label>:41:                                     ; preds = %2
  tail call void @luaD_growstack(%struct.lua_State* %4, i32 1) #5, !dbg !757
  %42 = load %struct.lua_TValue*, %struct.lua_TValue** %29, align 8, !dbg !761, !tbaa !754
  br label %43, !dbg !757

; <label>:43:                                     ; preds = %2, %41
  %44 = phi %struct.lua_TValue* [ %40, %2 ], [ %42, %41 ], !dbg !761
  %45 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %44, i64 1, !dbg !761
  store %struct.lua_TValue* %45, %struct.lua_TValue** %29, align 8, !dbg !761, !tbaa !754
  %46 = bitcast %struct.lua_TValue* %45 to %struct.Proto**, !dbg !762
  store %struct.Proto* %5, %struct.Proto** %46, align 8, !dbg !762, !tbaa !755
  %47 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %44, i64 1, i32 1, !dbg !762
  store i32 9, i32* %47, align 8, !dbg !762, !tbaa !756
  %48 = load i64, i64* %34, align 8, !dbg !763, !tbaa !760
  %49 = load i64, i64* %36, align 8, !dbg !763, !tbaa !754
  %50 = sub i64 %48, %49, !dbg !763
  %51 = icmp slt i64 %50, 17, !dbg !763
  %52 = inttoptr i64 %49 to %struct.lua_TValue*, !dbg !766
  br i1 %51, label %53, label %55, !dbg !766

; <label>:53:                                     ; preds = %43
  tail call void @luaD_growstack(%struct.lua_State* nonnull %4, i32 1) #5, !dbg !763
  %54 = load %struct.lua_TValue*, %struct.lua_TValue** %29, align 8, !dbg !766, !tbaa !754
  br label %55, !dbg !763

; <label>:55:                                     ; preds = %43, %53
  %56 = phi %struct.lua_TValue* [ %52, %43 ], [ %54, %53 ], !dbg !766
  %57 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %56, i64 1, !dbg !766
  store %struct.lua_TValue* %57, %struct.lua_TValue** %29, align 8, !dbg !766, !tbaa !754
  ret void, !dbg !767
}

; Function Attrs: noredzone
declare hidden void @luaX_next(%struct.LexState*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal fastcc void @close_func(%struct.LexState*) unnamed_addr #0 !dbg !768 {
  %2 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !775
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8, !dbg !775, !tbaa !611
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !777
  %5 = load %struct.FuncState*, %struct.FuncState** %4, align 8, !dbg !777, !tbaa !651
  %6 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 0, !dbg !779
  %7 = load %struct.Proto*, %struct.Proto** %6, align 8, !dbg !779, !tbaa !585
  %8 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 13, !dbg !790
  %9 = load i8, i8* %8, align 2, !dbg !790, !tbaa !653
  %10 = icmp eq i8 %9, 0, !dbg !791
  %11 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 6
  br i1 %10, label %48, label %12, !dbg !792

; <label>:12:                                     ; preds = %1
  %13 = load i32, i32* %11, align 8, !tbaa !793
  %14 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 7
  %15 = load %struct.LocVar*, %struct.LocVar** %14, align 8, !tbaa !794
  %16 = zext i8 %9 to i64, !dbg !792
  %17 = and i8 %9, 1, !dbg !792
  %18 = icmp eq i8 %17, 0, !dbg !792
  br i1 %18, label %27, label %19, !dbg !792

; <label>:19:                                     ; preds = %12
  %20 = add i8 %9, -1, !dbg !795
  %21 = zext i8 %20 to i64, !dbg !795
  %22 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 15, i64 %21, !dbg !795
  %23 = load i16, i16* %22, align 2, !dbg !795, !tbaa !796
  %24 = zext i16 %23 to i64, !dbg !795
  %25 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %15, i64 %24, i32 2, !dbg !797
  store i32 %13, i32* %25, align 4, !dbg !798, !tbaa !799
  %26 = add nsw i64 %16, -1, !dbg !795
  br label %27, !dbg !792

; <label>:27:                                     ; preds = %12, %19
  %28 = phi i64 [ %16, %12 ], [ %26, %19 ]
  %29 = icmp eq i8 %9, 1, !dbg !792
  br i1 %29, label %47, label %30, !dbg !792

; <label>:30:                                     ; preds = %27, %30
  %31 = phi i64 [ %46, %30 ], [ %28, %27 ]
  %32 = add i64 %31, 255, !dbg !795
  %33 = and i64 %32, 255, !dbg !795
  %34 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 15, i64 %33, !dbg !795
  %35 = load i16, i16* %34, align 2, !dbg !795, !tbaa !796
  %36 = zext i16 %35 to i64, !dbg !795
  %37 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %15, i64 %36, i32 2, !dbg !797
  store i32 %13, i32* %37, align 4, !dbg !798, !tbaa !799
  %38 = trunc i64 %31 to i8, !dbg !795
  %39 = add i8 %38, -2, !dbg !795
  %40 = zext i8 %39 to i64, !dbg !795
  %41 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 15, i64 %40, !dbg !795
  %42 = load i16, i16* %41, align 2, !dbg !795, !tbaa !796
  %43 = zext i16 %42 to i64, !dbg !795
  %44 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %15, i64 %43, i32 2, !dbg !797
  store i32 %13, i32* %44, align 4, !dbg !798, !tbaa !799
  %45 = icmp eq i8 %39, 0, !dbg !791
  %46 = add nsw i64 %31, -2, !dbg !795
  br i1 %45, label %47, label %30, !dbg !792, !llvm.loop !801

; <label>:47:                                     ; preds = %30, %27
  store i8 0, i8* %8, align 2, !dbg !795, !tbaa !653
  br label %48, !dbg !792

; <label>:48:                                     ; preds = %1, %47
  tail call void @luaK_ret(%struct.FuncState* %5, i32 0, i32 0) #5, !dbg !804
  %49 = load i32, i32* %11, align 8, !dbg !805, !tbaa !793
  %50 = icmp sgt i32 %49, -2, !dbg !805
  br i1 %50, label %51, label %62, !dbg !805

; <label>:51:                                     ; preds = %48
  %52 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 4, !dbg !805
  %53 = bitcast i32** %52 to i8**, !dbg !805
  %54 = load i8*, i8** %53, align 8, !dbg !805, !tbaa !806
  %55 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 12, !dbg !805
  %56 = load i32, i32* %55, align 8, !dbg !805, !tbaa !807
  %57 = sext i32 %56 to i64, !dbg !805
  %58 = shl nsw i64 %57, 2, !dbg !805
  %59 = sext i32 %49 to i64, !dbg !805
  %60 = shl nsw i64 %59, 2, !dbg !805
  %61 = tail call i8* @luaM_realloc_(%struct.lua_State* %3, i8* %54, i64 %58, i64 %60) #5, !dbg !805
  br label %67, !dbg !805

; <label>:62:                                     ; preds = %48
  %63 = tail call i8* @luaM_toobig(%struct.lua_State* %3) #5, !dbg !805
  %64 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 4, !dbg !805
  %65 = bitcast i32** %64 to i8**, !dbg !805
  %66 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 12, !dbg !808
  br label %67, !dbg !805

; <label>:67:                                     ; preds = %62, %51
  %68 = phi i32* [ %66, %62 ], [ %55, %51 ], !dbg !808
  %69 = phi i8** [ %65, %62 ], [ %53, %51 ], !dbg !805
  %70 = phi i8* [ %63, %62 ], [ %61, %51 ], !dbg !805
  store i8* %70, i8** %69, align 8, !dbg !805, !tbaa !806
  %71 = load i32, i32* %11, align 8, !dbg !809, !tbaa !793
  store i32 %71, i32* %68, align 8, !dbg !810, !tbaa !807
  %72 = icmp sgt i32 %71, -2, !dbg !811
  br i1 %72, label %73, label %84, !dbg !811

; <label>:73:                                     ; preds = %67
  %74 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 6, !dbg !811
  %75 = bitcast i32** %74 to i8**, !dbg !811
  %76 = load i8*, i8** %75, align 8, !dbg !811, !tbaa !812
  %77 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 13, !dbg !811
  %78 = load i32, i32* %77, align 4, !dbg !811, !tbaa !813
  %79 = sext i32 %78 to i64, !dbg !811
  %80 = shl nsw i64 %79, 2, !dbg !811
  %81 = sext i32 %71 to i64, !dbg !811
  %82 = shl nsw i64 %81, 2, !dbg !811
  %83 = tail call i8* @luaM_realloc_(%struct.lua_State* %3, i8* %76, i64 %80, i64 %82) #5, !dbg !811
  br label %89, !dbg !811

; <label>:84:                                     ; preds = %67
  %85 = tail call i8* @luaM_toobig(%struct.lua_State* %3) #5, !dbg !811
  %86 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 6, !dbg !811
  %87 = bitcast i32** %86 to i8**, !dbg !811
  %88 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 13, !dbg !814
  br label %89, !dbg !811

; <label>:89:                                     ; preds = %84, %73
  %90 = phi i32* [ %88, %84 ], [ %77, %73 ], !dbg !814
  %91 = phi i8** [ %87, %84 ], [ %75, %73 ], !dbg !811
  %92 = phi i8* [ %85, %84 ], [ %83, %73 ], !dbg !811
  store i8* %92, i8** %91, align 8, !dbg !811, !tbaa !812
  %93 = load i32, i32* %11, align 8, !dbg !815, !tbaa !793
  store i32 %93, i32* %90, align 4, !dbg !816, !tbaa !813
  %94 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 10, !dbg !817
  %95 = load i32, i32* %94, align 8, !dbg !817, !tbaa !729
  %96 = icmp sgt i32 %95, -2, !dbg !817
  br i1 %96, label %97, label %108, !dbg !817

; <label>:97:                                     ; preds = %89
  %98 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 3, !dbg !817
  %99 = bitcast %struct.lua_TValue** %98 to i8**, !dbg !817
  %100 = load i8*, i8** %99, align 8, !dbg !817, !tbaa !818
  %101 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 11, !dbg !817
  %102 = load i32, i32* %101, align 4, !dbg !817, !tbaa !819
  %103 = sext i32 %102 to i64, !dbg !817
  %104 = shl nsw i64 %103, 4, !dbg !817
  %105 = sext i32 %95 to i64, !dbg !817
  %106 = shl nsw i64 %105, 4, !dbg !817
  %107 = tail call i8* @luaM_realloc_(%struct.lua_State* %3, i8* %100, i64 %104, i64 %106) #5, !dbg !817
  br label %113, !dbg !817

; <label>:108:                                    ; preds = %89
  %109 = tail call i8* @luaM_toobig(%struct.lua_State* %3) #5, !dbg !817
  %110 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 3, !dbg !817
  %111 = bitcast %struct.lua_TValue** %110 to i8**, !dbg !817
  %112 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 11, !dbg !820
  br label %113, !dbg !817

; <label>:113:                                    ; preds = %108, %97
  %114 = phi i32* [ %112, %108 ], [ %101, %97 ], !dbg !820
  %115 = phi i8** [ %111, %108 ], [ %99, %97 ], !dbg !817
  %116 = phi i8* [ %109, %108 ], [ %107, %97 ], !dbg !817
  store i8* %116, i8** %115, align 8, !dbg !817, !tbaa !818
  %117 = load i32, i32* %94, align 8, !dbg !821, !tbaa !729
  store i32 %117, i32* %114, align 4, !dbg !822, !tbaa !819
  %118 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 11, !dbg !823
  %119 = load i32, i32* %118, align 4, !dbg !823, !tbaa !732
  %120 = icmp sgt i32 %119, -2, !dbg !823
  br i1 %120, label %121, label %132, !dbg !823

; <label>:121:                                    ; preds = %113
  %122 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 5, !dbg !823
  %123 = bitcast %struct.Proto*** %122 to i8**, !dbg !823
  %124 = load i8*, i8** %123, align 8, !dbg !823, !tbaa !824
  %125 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 14, !dbg !823
  %126 = load i32, i32* %125, align 8, !dbg !823, !tbaa !825
  %127 = sext i32 %126 to i64, !dbg !823
  %128 = shl nsw i64 %127, 3, !dbg !823
  %129 = sext i32 %119 to i64, !dbg !823
  %130 = shl nsw i64 %129, 3, !dbg !823
  %131 = tail call i8* @luaM_realloc_(%struct.lua_State* %3, i8* %124, i64 %128, i64 %130) #5, !dbg !823
  br label %137, !dbg !823

; <label>:132:                                    ; preds = %113
  %133 = tail call i8* @luaM_toobig(%struct.lua_State* %3) #5, !dbg !823
  %134 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 5, !dbg !823
  %135 = bitcast %struct.Proto*** %134 to i8**, !dbg !823
  %136 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 14, !dbg !826
  br label %137, !dbg !823

; <label>:137:                                    ; preds = %132, %121
  %138 = phi i32* [ %136, %132 ], [ %125, %121 ], !dbg !826
  %139 = phi i8** [ %135, %132 ], [ %123, %121 ], !dbg !823
  %140 = phi i8* [ %133, %132 ], [ %131, %121 ], !dbg !823
  store i8* %140, i8** %139, align 8, !dbg !823, !tbaa !824
  %141 = load i32, i32* %118, align 4, !dbg !827, !tbaa !732
  store i32 %141, i32* %138, align 8, !dbg !828, !tbaa !825
  %142 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 12, !dbg !829
  %143 = load i16, i16* %142, align 8, !dbg !829, !tbaa !735
  %144 = sext i16 %143 to i64, !dbg !829
  %145 = add nsw i64 %144, 1, !dbg !829
  %146 = icmp ult i64 %145, 1152921504606846976, !dbg !829
  br i1 %146, label %147, label %157, !dbg !829

; <label>:147:                                    ; preds = %137
  %148 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 7, !dbg !829
  %149 = bitcast %struct.LocVar** %148 to i8**, !dbg !829
  %150 = load i8*, i8** %149, align 8, !dbg !829, !tbaa !794
  %151 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 15, !dbg !829
  %152 = load i32, i32* %151, align 4, !dbg !829, !tbaa !830
  %153 = sext i32 %152 to i64, !dbg !829
  %154 = shl nsw i64 %153, 4, !dbg !829
  %155 = shl nsw i64 %144, 4, !dbg !829
  %156 = tail call i8* @luaM_realloc_(%struct.lua_State* %3, i8* %150, i64 %154, i64 %155) #5, !dbg !829
  br label %162, !dbg !829

; <label>:157:                                    ; preds = %137
  %158 = tail call i8* @luaM_toobig(%struct.lua_State* %3) #5, !dbg !829
  %159 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 7, !dbg !829
  %160 = bitcast %struct.LocVar** %159 to i8**, !dbg !829
  %161 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 15, !dbg !831
  br label %162, !dbg !829

; <label>:162:                                    ; preds = %147, %157
  %163 = phi i32* [ %151, %147 ], [ %161, %157 ], !dbg !831
  %164 = phi i8** [ %149, %147 ], [ %160, %157 ], !dbg !829
  %165 = phi i8* [ %156, %147 ], [ %158, %157 ], !dbg !829
  store i8* %165, i8** %164, align 8, !dbg !829, !tbaa !794
  %166 = load i16, i16* %142, align 8, !dbg !832, !tbaa !735
  %167 = sext i16 %166 to i32, !dbg !833
  store i32 %167, i32* %163, align 4, !dbg !834, !tbaa !830
  %168 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 19, !dbg !835
  %169 = load i8, i8* %168, align 8, !dbg !835, !tbaa !836
  %170 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 8, !dbg !835
  %171 = bitcast %union.TString*** %170 to i8**, !dbg !835
  %172 = load i8*, i8** %171, align 8, !dbg !835, !tbaa !837
  %173 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 10, !dbg !835
  %174 = load i32, i32* %173, align 8, !dbg !835, !tbaa !838
  %175 = sext i32 %174 to i64, !dbg !835
  %176 = shl nsw i64 %175, 3, !dbg !835
  %177 = zext i8 %169 to i64, !dbg !835
  %178 = shl nuw nsw i64 %177, 3, !dbg !835
  %179 = tail call i8* @luaM_realloc_(%struct.lua_State* %3, i8* %172, i64 %176, i64 %178) #5, !dbg !835
  store i8* %179, i8** %171, align 8, !dbg !835, !tbaa !837
  %180 = load i8, i8* %168, align 8, !dbg !839, !tbaa !836
  %181 = zext i8 %180 to i32, !dbg !840
  store i32 %181, i32* %173, align 8, !dbg !841, !tbaa !838
  %182 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 2, !dbg !842
  %183 = bitcast %struct.FuncState** %182 to i64*, !dbg !842
  %184 = load i64, i64* %183, align 8, !dbg !842, !tbaa !716
  %185 = bitcast %struct.FuncState** %4 to i64*, !dbg !843
  store i64 %184, i64* %185, align 8, !dbg !843, !tbaa !651
  %186 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0, !dbg !853
  %187 = load i32, i32* %186, align 8, !dbg !853, !tbaa !623
  %188 = add i32 %187, -285, !dbg !854
  %189 = icmp ult i32 %188, 2, !dbg !854
  br i1 %189, label %190, label %199, !dbg !854

; <label>:190:                                    ; preds = %162
  %191 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1, !dbg !855
  %192 = bitcast %union.SemInfo* %191 to %union.TString**, !dbg !856
  %193 = load %union.TString*, %union.TString** %192, align 8, !dbg !856, !tbaa !755
  %194 = getelementptr inbounds %union.TString, %union.TString* %193, i64 1, !dbg !858
  %195 = bitcast %union.TString* %194 to i8*, !dbg !858
  %196 = getelementptr inbounds %union.TString, %union.TString* %193, i64 0, i32 0, i32 5, !dbg !859
  %197 = load i64, i64* %196, align 8, !dbg !859, !tbaa !755
  %198 = tail call %union.TString* @luaX_newstring(%struct.LexState* nonnull %0, i8* nonnull %195, i64 %197) #5, !dbg !860
  br label %199, !dbg !861

; <label>:199:                                    ; preds = %190, %162
  %200 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %3, i64 0, i32 4, !dbg !862
  %201 = load %struct.lua_TValue*, %struct.lua_TValue** %200, align 8, !dbg !863, !tbaa !754
  %202 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %201, i64 -2, !dbg !863
  store %struct.lua_TValue* %202, %struct.lua_TValue** %200, align 8, !dbg !863, !tbaa !754
  ret void, !dbg !864
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare hidden %struct.Proto* @luaF_newproto(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden %struct.Table* @luaH_new(%struct.lua_State*, i32, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden void @luaD_growstack(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden void @luaX_syntaxerror(%struct.LexState*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden i8* @luaO_pushfstring(%struct.lua_State*, i8*, ...) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden i8* @luaX_token2str(%struct.LexState*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden void @luaK_ret(%struct.FuncState*, i32, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden i8* @luaM_realloc_(%struct.lua_State*, i8*, i64, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden i8* @luaM_toobig(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden %union.TString* @luaX_newstring(%struct.LexState*, i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal fastcc i32 @statement(%struct.LexState*) unnamed_addr #0 !dbg !865 {
  %2 = alloca %struct.expdesc, align 8
  %3 = alloca %struct.expdesc, align 8
  %4 = alloca %struct.expdesc, align 8
  %5 = alloca %struct.LHS_assign, align 8
  %6 = alloca %struct.expdesc, align 8
  %7 = alloca %struct.expdesc, align 8
  %8 = alloca %struct.expdesc, align 8
  %9 = alloca %struct.expdesc, align 8
  %10 = alloca %struct.expdesc, align 8
  %11 = alloca %struct.expdesc, align 8
  %12 = alloca %struct.expdesc, align 8
  %13 = alloca %struct.BlockCnt, align 8
  %14 = alloca %struct.BlockCnt, align 8
  %15 = alloca %struct.expdesc, align 8
  %16 = alloca %struct.BlockCnt, align 8
  %17 = alloca %struct.expdesc, align 8
  %18 = alloca %struct.BlockCnt, align 8
  %19 = alloca i32, align 4
  %20 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1, !dbg !872
  %21 = load i32, i32* %20, align 4, !dbg !872, !tbaa !873
  %22 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0, !dbg !875
  %23 = load i32, i32* %22, align 8, !dbg !875, !tbaa !623
  switch i32 %23, label %895 [
    i32 266, label %24
    i32 277, label %40
    i32 259, label %140
    i32 264, label %141
    i32 272, label %325
    i32 265, label %623
    i32 268, label %654
    i32 273, label %806
    i32 258, label %861
  ], !dbg !876

; <label>:24:                                     ; preds = %1
  %25 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !889
  %26 = load %struct.FuncState*, %struct.FuncState** %25, align 8, !dbg !889, !tbaa !651
  %27 = bitcast i32* %19 to i8*, !dbg !891
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %27) #4, !dbg !891
  store i32 -1, i32* %19, align 4, !dbg !892, !tbaa !726
  %28 = tail call fastcc i32 @test_then_block(%struct.LexState* nonnull %0) #5, !dbg !893
  br label %29, !dbg !895

; <label>:29:                                     ; preds = %32, %24
  %30 = phi i32 [ %28, %24 ], [ %34, %32 ], !dbg !896
  %31 = load i32, i32* %22, align 8, !dbg !898, !tbaa !623
  switch i32 %31, label %37 [
    i32 261, label %32
    i32 260, label %35
  ], !dbg !895

; <label>:32:                                     ; preds = %29
  %33 = call i32 @luaK_jump(%struct.FuncState* %26) #5, !dbg !899
  call void @luaK_concat(%struct.FuncState* %26, i32* nonnull %19, i32 %33) #5, !dbg !900
  call void @luaK_patchtohere(%struct.FuncState* %26, i32 %30) #5, !dbg !901
  %34 = call fastcc i32 @test_then_block(%struct.LexState* nonnull %0) #5, !dbg !902
  br label %29, !dbg !895, !llvm.loop !903

; <label>:35:                                     ; preds = %29
  %36 = call i32 @luaK_jump(%struct.FuncState* %26) #5, !dbg !906
  call void @luaK_concat(%struct.FuncState* %26, i32* nonnull %19, i32 %36) #5, !dbg !909
  call void @luaK_patchtohere(%struct.FuncState* %26, i32 %30) #5, !dbg !910
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !911
  call fastcc void @block(%struct.LexState* nonnull %0) #5, !dbg !912
  br label %38, !dbg !913

; <label>:37:                                     ; preds = %29
  call void @luaK_concat(%struct.FuncState* %26, i32* nonnull %19, i32 %30) #5, !dbg !914
  br label %38

; <label>:38:                                     ; preds = %35, %37
  %39 = load i32, i32* %19, align 4, !dbg !915, !tbaa !726
  call void @luaK_patchtohere(%struct.FuncState* %26, i32 %39) #5, !dbg !916
  call fastcc void @check_match(%struct.LexState* nonnull %0, i32 262, i32 266, i32 %21) #5, !dbg !917
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %27) #4, !dbg !918
  br label %919, !dbg !919

; <label>:40:                                     ; preds = %1
  %41 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !933
  %42 = load %struct.FuncState*, %struct.FuncState** %41, align 8, !dbg !933, !tbaa !651
  %43 = bitcast %struct.BlockCnt* %18 to i8*, !dbg !935
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %43) #4, !dbg !935
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !936
  %44 = tail call i32 @luaK_getlabel(%struct.FuncState* %42) #5, !dbg !937
  %45 = bitcast %struct.expdesc* %17 to i8*, !dbg !961
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %45) #4, !dbg !961
  %46 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %17, i32 0) #5, !dbg !973
  %47 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %17, i64 0, i32 0, !dbg !974
  %48 = load i32, i32* %47, align 8, !dbg !974, !tbaa !976
  %49 = icmp eq i32 %48, 1, !dbg !978
  br i1 %49, label %50, label %51, !dbg !979

; <label>:50:                                     ; preds = %40
  store i32 3, i32* %47, align 8, !dbg !980, !tbaa !976
  br label %51, !dbg !981

; <label>:51:                                     ; preds = %50, %40
  %52 = load %struct.FuncState*, %struct.FuncState** %41, align 8, !dbg !982, !tbaa !651
  call void @luaK_goiftrue(%struct.FuncState* %52, %struct.expdesc* nonnull %17) #5, !dbg !983
  %53 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %17, i64 0, i32 3, !dbg !984
  %54 = load i32, i32* %53, align 4, !dbg !984, !tbaa !985
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %45) #4, !dbg !986
  %55 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %18, i64 0, i32 1, !dbg !1001
  store i32 -1, i32* %55, align 8, !dbg !1002, !tbaa !1003
  %56 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %18, i64 0, i32 4, !dbg !1005
  store i8 1, i8* %56, align 2, !dbg !1006, !tbaa !1007
  %57 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %42, i64 0, i32 13, !dbg !1008
  %58 = load i8, i8* %57, align 2, !dbg !1008, !tbaa !653
  %59 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %18, i64 0, i32 2, !dbg !1009
  store i8 %58, i8* %59, align 4, !dbg !1010, !tbaa !1011
  %60 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %18, i64 0, i32 3, !dbg !1012
  store i8 0, i8* %60, align 1, !dbg !1013, !tbaa !1014
  %61 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %42, i64 0, i32 5, !dbg !1015
  %62 = bitcast %struct.BlockCnt** %61 to i64*, !dbg !1015
  %63 = load i64, i64* %62, align 8, !dbg !1015, !tbaa !740
  %64 = bitcast %struct.BlockCnt* %18 to i64*, !dbg !1016
  store i64 %63, i64* %64, align 8, !dbg !1016, !tbaa !1017
  store %struct.BlockCnt* %18, %struct.BlockCnt** %61, align 8, !dbg !1018, !tbaa !740
  %65 = load i32, i32* %22, align 8, !dbg !1029, !tbaa !623
  %66 = icmp eq i32 %65, 259, !dbg !1030
  br i1 %66, label %72, label %67, !dbg !1031

; <label>:67:                                     ; preds = %51
  %68 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !1035
  %69 = load %struct.lua_State*, %struct.lua_State** %68, align 8, !dbg !1035, !tbaa !611
  %70 = call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 259) #5, !dbg !1036
  %71 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %69, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %70) #5, !dbg !1037
  call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %71) #5, !dbg !1038
  br label %72, !dbg !1039

; <label>:72:                                     ; preds = %67, %51
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !1040
  call fastcc void @block(%struct.LexState* nonnull %0) #5, !dbg !1041
  %73 = call i32 @luaK_jump(%struct.FuncState* nonnull %42) #5, !dbg !1042
  call void @luaK_patchlist(%struct.FuncState* nonnull %42, i32 %73, i32 %44) #5, !dbg !1043
  call fastcc void @check_match(%struct.LexState* nonnull %0, i32 262, i32 277, i32 %21) #5, !dbg !1044
  %74 = load %struct.BlockCnt*, %struct.BlockCnt** %61, align 8, !dbg !1053, !tbaa !740
  %75 = bitcast %struct.BlockCnt* %74 to i64*, !dbg !1055
  %76 = load i64, i64* %75, align 8, !dbg !1055, !tbaa !1017
  store i64 %76, i64* %62, align 8, !dbg !1056, !tbaa !740
  %77 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %42, i64 0, i32 3, !dbg !1057
  %78 = load %struct.LexState*, %struct.LexState** %77, align 8, !dbg !1057, !tbaa !719
  %79 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %74, i64 0, i32 2, !dbg !1058
  %80 = load i8, i8* %79, align 4, !dbg !1058, !tbaa !1011
  %81 = zext i8 %80 to i32, !dbg !1059
  %82 = getelementptr inbounds %struct.LexState, %struct.LexState* %78, i64 0, i32 5, !dbg !1063
  %83 = load %struct.FuncState*, %struct.FuncState** %82, align 8, !dbg !1063, !tbaa !651
  %84 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %83, i64 0, i32 13, !dbg !1065
  %85 = load i8, i8* %84, align 2, !dbg !1065, !tbaa !653
  %86 = icmp ugt i8 %85, %80, !dbg !1066
  br i1 %86, label %87, label %128, !dbg !1067

; <label>:87:                                     ; preds = %72
  %88 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %83, i64 0, i32 6
  %89 = load i32, i32* %88, align 8, !tbaa !793
  %90 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %83, i64 0, i32 0
  %91 = load %struct.Proto*, %struct.Proto** %90, align 8, !tbaa !585
  %92 = getelementptr inbounds %struct.Proto, %struct.Proto* %91, i64 0, i32 7
  %93 = load %struct.LocVar*, %struct.LocVar** %92, align 8, !tbaa !794
  %94 = zext i8 %85 to i64, !dbg !1067
  %95 = sub i8 %85, %80, !dbg !1067
  %96 = and i8 %95, 1, !dbg !1067
  %97 = icmp eq i8 %96, 0, !dbg !1067
  br i1 %97, label %106, label %98, !dbg !1067

; <label>:98:                                     ; preds = %87
  %99 = add i8 %85, -1, !dbg !1068
  %100 = zext i8 %99 to i64, !dbg !1068
  %101 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %83, i64 0, i32 15, i64 %100, !dbg !1068
  %102 = load i16, i16* %101, align 2, !dbg !1068, !tbaa !796
  %103 = zext i16 %102 to i64, !dbg !1068
  %104 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %93, i64 %103, i32 2, !dbg !1069
  store i32 %89, i32* %104, align 4, !dbg !1070, !tbaa !799
  %105 = add nsw i64 %94, -1, !dbg !1068
  br label %106, !dbg !1067

; <label>:106:                                    ; preds = %87, %98
  %107 = phi i64 [ %94, %87 ], [ %105, %98 ]
  %108 = add i8 %80, 1, !dbg !1067
  %109 = icmp eq i8 %85, %108, !dbg !1067
  br i1 %109, label %127, label %110, !dbg !1067

; <label>:110:                                    ; preds = %106, %110
  %111 = phi i64 [ %126, %110 ], [ %107, %106 ]
  %112 = add i64 %111, 255, !dbg !1068
  %113 = and i64 %112, 255, !dbg !1068
  %114 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %83, i64 0, i32 15, i64 %113, !dbg !1068
  %115 = load i16, i16* %114, align 2, !dbg !1068, !tbaa !796
  %116 = zext i16 %115 to i64, !dbg !1068
  %117 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %93, i64 %116, i32 2, !dbg !1069
  store i32 %89, i32* %117, align 4, !dbg !1070, !tbaa !799
  %118 = trunc i64 %111 to i8, !dbg !1068
  %119 = add i8 %118, -2, !dbg !1068
  %120 = zext i8 %119 to i64, !dbg !1068
  %121 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %83, i64 0, i32 15, i64 %120, !dbg !1068
  %122 = load i16, i16* %121, align 2, !dbg !1068, !tbaa !796
  %123 = zext i16 %122 to i64, !dbg !1068
  %124 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %93, i64 %123, i32 2, !dbg !1069
  store i32 %89, i32* %124, align 4, !dbg !1070, !tbaa !799
  %125 = icmp ugt i8 %119, %80, !dbg !1066
  %126 = add nsw i64 %111, -2, !dbg !1068
  br i1 %125, label %110, label %127, !dbg !1067, !llvm.loop !801

; <label>:127:                                    ; preds = %110, %106
  store i8 %80, i8* %84, align 2, !dbg !1068, !tbaa !653
  br label %128, !dbg !1067

; <label>:128:                                    ; preds = %127, %72
  %129 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %74, i64 0, i32 3, !dbg !1071
  %130 = load i8, i8* %129, align 1, !dbg !1071, !tbaa !1014
  %131 = icmp eq i8 %130, 0, !dbg !1073
  br i1 %131, label %134, label %132, !dbg !1074

; <label>:132:                                    ; preds = %128
  %133 = call i32 @luaK_codeABC(%struct.FuncState* %42, i32 35, i32 %81, i32 0, i32 0) #5, !dbg !1075
  br label %134, !dbg !1075

; <label>:134:                                    ; preds = %128, %132
  %135 = load i8, i8* %57, align 2, !dbg !1076, !tbaa !653
  %136 = zext i8 %135 to i32, !dbg !1077
  %137 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %42, i64 0, i32 9, !dbg !1078
  store i32 %136, i32* %137, align 4, !dbg !1079, !tbaa !657
  %138 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %74, i64 0, i32 1, !dbg !1080
  %139 = load i32, i32* %138, align 8, !dbg !1080, !tbaa !1003
  call void @luaK_patchtohere(%struct.FuncState* %42, i32 %139) #5, !dbg !1081
  call void @luaK_patchtohere(%struct.FuncState* %42, i32 %54) #5, !dbg !1082
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %43) #4, !dbg !1083
  br label %919, !dbg !1084

; <label>:140:                                    ; preds = %1
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !1085
  tail call fastcc void @block(%struct.LexState* nonnull %0) #6, !dbg !1087
  tail call fastcc void @check_match(%struct.LexState* nonnull %0, i32 262, i32 259, i32 %21) #6, !dbg !1088
  br label %919, !dbg !1089

; <label>:141:                                    ; preds = %1
  %142 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !1101
  %143 = load %struct.FuncState*, %struct.FuncState** %142, align 8, !dbg !1101, !tbaa !651
  %144 = bitcast %struct.BlockCnt* %16 to i8*, !dbg !1103
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %144) #4, !dbg !1103
  %145 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %16, i64 0, i32 1, !dbg !1109
  store i32 -1, i32* %145, align 8, !dbg !1110, !tbaa !1003
  %146 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %16, i64 0, i32 4, !dbg !1111
  store i8 1, i8* %146, align 2, !dbg !1112, !tbaa !1007
  %147 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %143, i64 0, i32 13, !dbg !1113
  %148 = load i8, i8* %147, align 2, !dbg !1113, !tbaa !653
  %149 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %16, i64 0, i32 2, !dbg !1114
  store i8 %148, i8* %149, align 4, !dbg !1115, !tbaa !1011
  %150 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %16, i64 0, i32 3, !dbg !1116
  store i8 0, i8* %150, align 1, !dbg !1117, !tbaa !1014
  %151 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %143, i64 0, i32 5, !dbg !1118
  %152 = bitcast %struct.BlockCnt** %151 to i64*, !dbg !1118
  %153 = load i64, i64* %152, align 8, !dbg !1118, !tbaa !740
  %154 = bitcast %struct.BlockCnt* %16 to i64*, !dbg !1119
  store i64 %153, i64* %154, align 8, !dbg !1119, !tbaa !1017
  store %struct.BlockCnt* %16, %struct.BlockCnt** %151, align 8, !dbg !1120, !tbaa !740
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !1121
  %155 = load i32, i32* %22, align 8, !dbg !1133, !tbaa !623
  %156 = icmp eq i32 %155, 285, !dbg !1134
  br i1 %156, label %162, label %157, !dbg !1135

; <label>:157:                                    ; preds = %141
  %158 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !1139
  %159 = load %struct.lua_State*, %struct.lua_State** %158, align 8, !dbg !1139, !tbaa !611
  %160 = call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 285) #5, !dbg !1140
  %161 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %159, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %160) #5, !dbg !1141
  call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %161) #5, !dbg !1142
  br label %162, !dbg !1143

; <label>:162:                                    ; preds = %157, %141
  %163 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1, !dbg !1144
  %164 = bitcast %union.SemInfo* %163 to %union.TString**, !dbg !1145
  %165 = load %union.TString*, %union.TString** %164, align 8, !dbg !1145, !tbaa !755
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !1147
  %166 = load i32, i32* %22, align 8, !dbg !1149, !tbaa !623
  switch i32 %166, label %257 [
    i32 61, label %167
    i32 44, label %207
    i32 267, label %207
  ], !dbg !1150

; <label>:167:                                    ; preds = %162
  %168 = load %struct.FuncState*, %struct.FuncState** %142, align 8, !dbg !1165, !tbaa !651
  %169 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %168, i64 0, i32 9, !dbg !1167
  %170 = load i32, i32* %169, align 4, !dbg !1167, !tbaa !657
  %171 = call %union.TString* @luaX_newstring(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0), i64 11) #5, !dbg !1169
  call fastcc void @new_localvar(%struct.LexState* nonnull %0, %union.TString* %171, i32 0) #5, !dbg !1169
  %172 = call %union.TString* @luaX_newstring(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i64 11) #5, !dbg !1170
  call fastcc void @new_localvar(%struct.LexState* nonnull %0, %union.TString* %172, i32 1) #5, !dbg !1170
  %173 = call %union.TString* @luaX_newstring(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), i64 10) #5, !dbg !1171
  call fastcc void @new_localvar(%struct.LexState* nonnull %0, %union.TString* %173, i32 2) #5, !dbg !1171
  call fastcc void @new_localvar(%struct.LexState* nonnull %0, %union.TString* %165, i32 3) #5, !dbg !1172
  %174 = load i32, i32* %22, align 8, !dbg !1179, !tbaa !623
  %175 = icmp eq i32 %174, 61, !dbg !1180
  br i1 %175, label %181, label %176, !dbg !1181

; <label>:176:                                    ; preds = %167
  %177 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !1185
  %178 = load %struct.lua_State*, %struct.lua_State** %177, align 8, !dbg !1185, !tbaa !611
  %179 = call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 61) #5, !dbg !1186
  %180 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %178, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %179) #5, !dbg !1187
  call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %180) #5, !dbg !1188
  br label %181, !dbg !1189

; <label>:181:                                    ; preds = %176, %167
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !1190
  %182 = bitcast %struct.expdesc* %4 to i8*, !dbg !1198
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %182) #4, !dbg !1198
  %183 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %4, i32 0) #5, !dbg !1203
  %184 = load %struct.FuncState*, %struct.FuncState** %142, align 8, !dbg !1205, !tbaa !651
  call void @luaK_exp2nextreg(%struct.FuncState* %184, %struct.expdesc* nonnull %4) #5, !dbg !1206
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %182) #4, !dbg !1207
  %185 = load i32, i32* %22, align 8, !dbg !1214, !tbaa !623
  %186 = icmp eq i32 %185, 44, !dbg !1215
  br i1 %186, label %192, label %187, !dbg !1216

; <label>:187:                                    ; preds = %181
  %188 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !1220
  %189 = load %struct.lua_State*, %struct.lua_State** %188, align 8, !dbg !1220, !tbaa !611
  %190 = call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 44) #5, !dbg !1221
  %191 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %189, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %190) #5, !dbg !1222
  call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %191) #5, !dbg !1223
  br label %192, !dbg !1224

; <label>:192:                                    ; preds = %187, %181
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !1225
  %193 = bitcast %struct.expdesc* %3 to i8*, !dbg !1228
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %193) #4, !dbg !1228
  %194 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %3, i32 0) #5, !dbg !1233
  %195 = load %struct.FuncState*, %struct.FuncState** %142, align 8, !dbg !1235, !tbaa !651
  call void @luaK_exp2nextreg(%struct.FuncState* %195, %struct.expdesc* nonnull %3) #5, !dbg !1236
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %193) #4, !dbg !1237
  %196 = load i32, i32* %22, align 8, !dbg !1242, !tbaa !623
  %197 = icmp eq i32 %196, 44, !dbg !1243
  br i1 %197, label %198, label %202, !dbg !1244

; <label>:198:                                    ; preds = %192
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !1245
  %199 = bitcast %struct.expdesc* %2 to i8*, !dbg !1248
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %199) #4, !dbg !1248
  %200 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %2, i32 0) #5, !dbg !1253
  %201 = load %struct.FuncState*, %struct.FuncState** %142, align 8, !dbg !1255, !tbaa !651
  call void @luaK_exp2nextreg(%struct.FuncState* %201, %struct.expdesc* nonnull %2) #5, !dbg !1256
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %199) #4, !dbg !1257
  br label %206, !dbg !1258

; <label>:202:                                    ; preds = %192
  %203 = load i32, i32* %169, align 4, !dbg !1259, !tbaa !657
  %204 = call i32 @luaK_numberK(%struct.FuncState* %168, double 1.000000e+00) #5, !dbg !1261
  %205 = call i32 @luaK_codeABx(%struct.FuncState* %168, i32 1, i32 %203, i32 %204) #5, !dbg !1262
  call void @luaK_reserveregs(%struct.FuncState* %168, i32 1) #5, !dbg !1263
  br label %206

; <label>:206:                                    ; preds = %202, %198
  call fastcc void @forbody(%struct.LexState* nonnull %0, i32 %170, i32 %21, i32 1, i32 1) #5, !dbg !1264
  br label %258, !dbg !1265

; <label>:207:                                    ; preds = %162, %162
  %208 = load %struct.FuncState*, %struct.FuncState** %142, align 8, !dbg !1280, !tbaa !651
  %209 = bitcast %struct.expdesc* %15 to i8*, !dbg !1282
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %209) #4, !dbg !1282
  %210 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %208, i64 0, i32 9, !dbg !1284
  %211 = load i32, i32* %210, align 4, !dbg !1284, !tbaa !657
  %212 = call %union.TString* @luaX_newstring(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0), i64 15) #5, !dbg !1286
  call fastcc void @new_localvar(%struct.LexState* nonnull %0, %union.TString* %212, i32 0) #5, !dbg !1286
  %213 = call %union.TString* @luaX_newstring(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0), i64 11) #5, !dbg !1287
  call fastcc void @new_localvar(%struct.LexState* nonnull %0, %union.TString* %213, i32 1) #5, !dbg !1287
  %214 = call %union.TString* @luaX_newstring(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0), i64 13) #5, !dbg !1288
  call fastcc void @new_localvar(%struct.LexState* nonnull %0, %union.TString* %214, i32 2) #5, !dbg !1288
  call fastcc void @new_localvar(%struct.LexState* nonnull %0, %union.TString* %165, i32 3) #5, !dbg !1289
  %215 = load i32, i32* %22, align 8, !dbg !1293, !tbaa !623
  %216 = icmp eq i32 %215, 44, !dbg !1294
  br i1 %216, label %217, label %234, !dbg !1295

; <label>:217:                                    ; preds = %207
  %218 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  br label %219, !dbg !1295

; <label>:219:                                    ; preds = %217, %227
  %220 = phi i32 [ 4, %217 ], [ %229, %227 ]
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !1296
  %221 = load i32, i32* %22, align 8, !dbg !1302, !tbaa !623
  %222 = icmp eq i32 %221, 285, !dbg !1303
  br i1 %222, label %227, label %223, !dbg !1304

; <label>:223:                                    ; preds = %219
  %224 = load %struct.lua_State*, %struct.lua_State** %218, align 8, !dbg !1308, !tbaa !611
  %225 = call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 285) #5, !dbg !1309
  %226 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %224, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %225) #5, !dbg !1310
  call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %226) #5, !dbg !1311
  br label %227, !dbg !1312

; <label>:227:                                    ; preds = %223, %219
  %228 = load %union.TString*, %union.TString** %164, align 8, !dbg !1313, !tbaa !755
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !1315
  %229 = add nuw nsw i32 %220, 1, !dbg !1316
  call fastcc void @new_localvar(%struct.LexState* nonnull %0, %union.TString* %228, i32 %220) #5, !dbg !1317
  %230 = load i32, i32* %22, align 8, !dbg !1293, !tbaa !623
  %231 = icmp eq i32 %230, 44, !dbg !1294
  br i1 %231, label %219, label %232, !dbg !1295, !llvm.loop !1318

; <label>:232:                                    ; preds = %227
  %233 = add nsw i32 %220, -2, !dbg !1321
  br label %234, !dbg !1321

; <label>:234:                                    ; preds = %232, %207
  %235 = phi i32 [ %215, %207 ], [ %230, %232 ], !dbg !1321
  %236 = phi i32 [ 1, %207 ], [ %233, %232 ]
  %237 = icmp eq i32 %235, 267, !dbg !1328
  br i1 %237, label %243, label %238, !dbg !1329

; <label>:238:                                    ; preds = %234
  %239 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !1333
  %240 = load %struct.lua_State*, %struct.lua_State** %239, align 8, !dbg !1333, !tbaa !611
  %241 = call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 267) #5, !dbg !1334
  %242 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %240, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %241) #5, !dbg !1335
  call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %242) #5, !dbg !1336
  br label %243, !dbg !1337

; <label>:243:                                    ; preds = %238, %234
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !1338
  %244 = load i32, i32* %20, align 4, !dbg !1339, !tbaa !873
  %245 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %15, i32 0) #5, !dbg !1356
  %246 = load i32, i32* %22, align 8, !dbg !1360, !tbaa !623
  %247 = icmp eq i32 %246, 44, !dbg !1361
  br i1 %247, label %248, label %255, !dbg !1362

; <label>:248:                                    ; preds = %243, %248
  %249 = phi i32 [ %252, %248 ], [ 1, %243 ]
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !1363
  %250 = load %struct.FuncState*, %struct.FuncState** %142, align 8, !dbg !1364, !tbaa !651
  call void @luaK_exp2nextreg(%struct.FuncState* %250, %struct.expdesc* nonnull %15) #5, !dbg !1366
  %251 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %15, i32 0) #5, !dbg !1370
  %252 = add nuw nsw i32 %249, 1, !dbg !1371
  %253 = load i32, i32* %22, align 8, !dbg !1360, !tbaa !623
  %254 = icmp eq i32 %253, 44, !dbg !1361
  br i1 %254, label %248, label %255, !dbg !1362, !llvm.loop !1372

; <label>:255:                                    ; preds = %248, %243
  %256 = phi i32 [ 1, %243 ], [ %252, %248 ], !dbg !1375
  call fastcc void @adjust_assign(%struct.LexState* nonnull %0, i32 3, i32 %256, %struct.expdesc* nonnull %15) #5, !dbg !1376
  call void @luaK_checkstack(%struct.FuncState* %208, i32 3) #5, !dbg !1377
  call fastcc void @forbody(%struct.LexState* nonnull %0, i32 %211, i32 %244, i32 %236, i32 0) #5, !dbg !1378
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %209) #4, !dbg !1379
  br label %258, !dbg !1380

; <label>:257:                                    ; preds = %162
  call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0)) #5, !dbg !1381
  br label %258, !dbg !1382

; <label>:258:                                    ; preds = %257, %255, %206
  call fastcc void @check_match(%struct.LexState* nonnull %0, i32 262, i32 264, i32 %21) #5, !dbg !1383
  %259 = load %struct.BlockCnt*, %struct.BlockCnt** %151, align 8, !dbg !1386, !tbaa !740
  %260 = bitcast %struct.BlockCnt* %259 to i64*, !dbg !1388
  %261 = load i64, i64* %260, align 8, !dbg !1388, !tbaa !1017
  store i64 %261, i64* %152, align 8, !dbg !1389, !tbaa !740
  %262 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %143, i64 0, i32 3, !dbg !1390
  %263 = load %struct.LexState*, %struct.LexState** %262, align 8, !dbg !1390, !tbaa !719
  %264 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %259, i64 0, i32 2, !dbg !1391
  %265 = load i8, i8* %264, align 4, !dbg !1391, !tbaa !1011
  %266 = zext i8 %265 to i32, !dbg !1392
  %267 = getelementptr inbounds %struct.LexState, %struct.LexState* %263, i64 0, i32 5, !dbg !1396
  %268 = load %struct.FuncState*, %struct.FuncState** %267, align 8, !dbg !1396, !tbaa !651
  %269 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %268, i64 0, i32 13, !dbg !1398
  %270 = load i8, i8* %269, align 2, !dbg !1398, !tbaa !653
  %271 = icmp ugt i8 %270, %265, !dbg !1399
  br i1 %271, label %272, label %313, !dbg !1400

; <label>:272:                                    ; preds = %258
  %273 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %268, i64 0, i32 6
  %274 = load i32, i32* %273, align 8, !tbaa !793
  %275 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %268, i64 0, i32 0
  %276 = load %struct.Proto*, %struct.Proto** %275, align 8, !tbaa !585
  %277 = getelementptr inbounds %struct.Proto, %struct.Proto* %276, i64 0, i32 7
  %278 = load %struct.LocVar*, %struct.LocVar** %277, align 8, !tbaa !794
  %279 = zext i8 %270 to i64, !dbg !1400
  %280 = sub i8 %270, %265, !dbg !1400
  %281 = and i8 %280, 1, !dbg !1400
  %282 = icmp eq i8 %281, 0, !dbg !1400
  br i1 %282, label %291, label %283, !dbg !1400

; <label>:283:                                    ; preds = %272
  %284 = add i8 %270, -1, !dbg !1401
  %285 = zext i8 %284 to i64, !dbg !1401
  %286 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %268, i64 0, i32 15, i64 %285, !dbg !1401
  %287 = load i16, i16* %286, align 2, !dbg !1401, !tbaa !796
  %288 = zext i16 %287 to i64, !dbg !1401
  %289 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %278, i64 %288, i32 2, !dbg !1402
  store i32 %274, i32* %289, align 4, !dbg !1403, !tbaa !799
  %290 = add nsw i64 %279, -1, !dbg !1401
  br label %291, !dbg !1400

; <label>:291:                                    ; preds = %272, %283
  %292 = phi i64 [ %279, %272 ], [ %290, %283 ]
  %293 = add i8 %265, 1, !dbg !1400
  %294 = icmp eq i8 %270, %293, !dbg !1400
  br i1 %294, label %312, label %295, !dbg !1400

; <label>:295:                                    ; preds = %291, %295
  %296 = phi i64 [ %311, %295 ], [ %292, %291 ]
  %297 = add i64 %296, 255, !dbg !1401
  %298 = and i64 %297, 255, !dbg !1401
  %299 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %268, i64 0, i32 15, i64 %298, !dbg !1401
  %300 = load i16, i16* %299, align 2, !dbg !1401, !tbaa !796
  %301 = zext i16 %300 to i64, !dbg !1401
  %302 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %278, i64 %301, i32 2, !dbg !1402
  store i32 %274, i32* %302, align 4, !dbg !1403, !tbaa !799
  %303 = trunc i64 %296 to i8, !dbg !1401
  %304 = add i8 %303, -2, !dbg !1401
  %305 = zext i8 %304 to i64, !dbg !1401
  %306 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %268, i64 0, i32 15, i64 %305, !dbg !1401
  %307 = load i16, i16* %306, align 2, !dbg !1401, !tbaa !796
  %308 = zext i16 %307 to i64, !dbg !1401
  %309 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %278, i64 %308, i32 2, !dbg !1402
  store i32 %274, i32* %309, align 4, !dbg !1403, !tbaa !799
  %310 = icmp ugt i8 %304, %265, !dbg !1399
  %311 = add nsw i64 %296, -2, !dbg !1401
  br i1 %310, label %295, label %312, !dbg !1400, !llvm.loop !801

; <label>:312:                                    ; preds = %295, %291
  store i8 %265, i8* %269, align 2, !dbg !1401, !tbaa !653
  br label %313, !dbg !1400

; <label>:313:                                    ; preds = %312, %258
  %314 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %259, i64 0, i32 3, !dbg !1404
  %315 = load i8, i8* %314, align 1, !dbg !1404, !tbaa !1014
  %316 = icmp eq i8 %315, 0, !dbg !1405
  br i1 %316, label %319, label %317, !dbg !1406

; <label>:317:                                    ; preds = %313
  %318 = call i32 @luaK_codeABC(%struct.FuncState* %143, i32 35, i32 %266, i32 0, i32 0) #5, !dbg !1407
  br label %319, !dbg !1407

; <label>:319:                                    ; preds = %313, %317
  %320 = load i8, i8* %147, align 2, !dbg !1408, !tbaa !653
  %321 = zext i8 %320 to i32, !dbg !1409
  %322 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %143, i64 0, i32 9, !dbg !1410
  store i32 %321, i32* %322, align 4, !dbg !1411, !tbaa !657
  %323 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %259, i64 0, i32 1, !dbg !1412
  %324 = load i32, i32* %323, align 8, !dbg !1412, !tbaa !1003
  call void @luaK_patchtohere(%struct.FuncState* %143, i32 %324) #5, !dbg !1413
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %144) #4, !dbg !1414
  br label %919, !dbg !1415

; <label>:325:                                    ; preds = %1
  %326 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !1429
  %327 = load %struct.FuncState*, %struct.FuncState** %326, align 8, !dbg !1429, !tbaa !651
  %328 = tail call i32 @luaK_getlabel(%struct.FuncState* %327) #5, !dbg !1431
  %329 = bitcast %struct.BlockCnt* %13 to i8*, !dbg !1433
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %329) #4, !dbg !1433
  %330 = bitcast %struct.BlockCnt* %14 to i8*, !dbg !1433
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %330) #4, !dbg !1433
  %331 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %13, i64 0, i32 1, !dbg !1439
  store i32 -1, i32* %331, align 8, !dbg !1440, !tbaa !1003
  %332 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %13, i64 0, i32 4, !dbg !1441
  store i8 1, i8* %332, align 2, !dbg !1442, !tbaa !1007
  %333 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %327, i64 0, i32 13, !dbg !1443
  %334 = load i8, i8* %333, align 2, !dbg !1443, !tbaa !653
  %335 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %13, i64 0, i32 2, !dbg !1444
  store i8 %334, i8* %335, align 4, !dbg !1445, !tbaa !1011
  %336 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %13, i64 0, i32 3, !dbg !1446
  store i8 0, i8* %336, align 1, !dbg !1447, !tbaa !1014
  %337 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %327, i64 0, i32 5, !dbg !1448
  %338 = bitcast %struct.BlockCnt** %337 to i64*, !dbg !1448
  %339 = load i64, i64* %338, align 8, !dbg !1448, !tbaa !740
  %340 = bitcast %struct.BlockCnt* %13 to i64*, !dbg !1449
  store i64 %339, i64* %340, align 8, !dbg !1449, !tbaa !1017
  %341 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %14, i64 0, i32 1, !dbg !1455
  store i32 -1, i32* %341, align 8, !dbg !1456, !tbaa !1003
  %342 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %14, i64 0, i32 4, !dbg !1457
  store i8 0, i8* %342, align 2, !dbg !1458, !tbaa !1007
  %343 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %14, i64 0, i32 2, !dbg !1459
  store i8 %334, i8* %343, align 4, !dbg !1460, !tbaa !1011
  %344 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %14, i64 0, i32 3, !dbg !1461
  store i8 0, i8* %344, align 1, !dbg !1462, !tbaa !1014
  %345 = ptrtoint %struct.BlockCnt* %13 to i64, !dbg !1463
  %346 = bitcast %struct.BlockCnt* %14 to i64*, !dbg !1464
  store i64 %345, i64* %346, align 8, !dbg !1464, !tbaa !1017
  store %struct.BlockCnt* %14, %struct.BlockCnt** %337, align 8, !dbg !1465, !tbaa !740
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !1466
  %347 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !1472
  %348 = load %struct.lua_State*, %struct.lua_State** %347, align 8, !dbg !1472, !tbaa !611
  %349 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %348, i64 0, i32 15, !dbg !1473
  %350 = load i16, i16* %349, align 8, !dbg !1474, !tbaa !614
  %351 = add i16 %350, 1, !dbg !1474
  store i16 %351, i16* %349, align 8, !dbg !1474, !tbaa !614
  %352 = icmp ugt i16 %351, 200, !dbg !1475
  br i1 %352, label %353, label %354, !dbg !1476

; <label>:353:                                    ; preds = %325
  call void @luaX_lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 0) #5, !dbg !1477
  br label %354, !dbg !1477

; <label>:354:                                    ; preds = %353, %325
  br label %355, !dbg !1478

; <label>:355:                                    ; preds = %354, %362
  %356 = load i32, i32* %22, align 8, !dbg !1478, !tbaa !623
  switch i32 %356, label %357 [
    i32 260, label %369
    i32 261, label %369
    i32 262, label %369
    i32 276, label %369
    i32 287, label %369
  ], !dbg !1481

; <label>:357:                                    ; preds = %355
  %358 = call fastcc i32 @statement(%struct.LexState* nonnull %0) #5, !dbg !1482
  %359 = load i32, i32* %22, align 8, !dbg !1486, !tbaa !623
  %360 = icmp eq i32 %359, 59, !dbg !1487
  br i1 %360, label %361, label %362, !dbg !1488

; <label>:361:                                    ; preds = %357
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !1489
  br label %362, !dbg !1490

; <label>:362:                                    ; preds = %361, %357
  %363 = load %struct.FuncState*, %struct.FuncState** %326, align 8, !dbg !1491, !tbaa !651
  %364 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %363, i64 0, i32 13, !dbg !1492
  %365 = load i8, i8* %364, align 2, !dbg !1492, !tbaa !653
  %366 = zext i8 %365 to i32, !dbg !1493
  %367 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %363, i64 0, i32 9, !dbg !1494
  store i32 %366, i32* %367, align 4, !dbg !1495, !tbaa !657
  %368 = icmp eq i32 %358, 0, !dbg !1496
  br i1 %368, label %355, label %369, !dbg !1497, !llvm.loop !659

; <label>:369:                                    ; preds = %355, %355, %355, %355, %355, %362
  %370 = load %struct.lua_State*, %struct.lua_State** %347, align 8, !dbg !1498, !tbaa !611
  %371 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %370, i64 0, i32 15, !dbg !1498
  %372 = load i16, i16* %371, align 8, !dbg !1498, !tbaa !614
  %373 = add i16 %372, -1, !dbg !1498
  store i16 %373, i16* %371, align 8, !dbg !1498, !tbaa !614
  call fastcc void @check_match(%struct.LexState* nonnull %0, i32 276, i32 272, i32 %21) #5, !dbg !1499
  %374 = bitcast %struct.expdesc* %12 to i8*, !dbg !1502
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %374) #4, !dbg !1502
  %375 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %12, i32 0) #5, !dbg !1507
  %376 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %12, i64 0, i32 0, !dbg !1508
  %377 = load i32, i32* %376, align 8, !dbg !1508, !tbaa !976
  %378 = icmp eq i32 %377, 1, !dbg !1509
  br i1 %378, label %379, label %380, !dbg !1510

; <label>:379:                                    ; preds = %369
  store i32 3, i32* %376, align 8, !dbg !1511, !tbaa !976
  br label %380, !dbg !1512

; <label>:380:                                    ; preds = %379, %369
  %381 = load %struct.FuncState*, %struct.FuncState** %326, align 8, !dbg !1513, !tbaa !651
  call void @luaK_goiftrue(%struct.FuncState* %381, %struct.expdesc* nonnull %12) #5, !dbg !1514
  %382 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %12, i64 0, i32 3, !dbg !1515
  %383 = load i32, i32* %382, align 4, !dbg !1515, !tbaa !985
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %374) #4, !dbg !1516
  %384 = load i8, i8* %344, align 1, !dbg !1518, !tbaa !1014
  %385 = icmp eq i8 %384, 0, !dbg !1520
  br i1 %385, label %386, label %454, !dbg !1521

; <label>:386:                                    ; preds = %380
  %387 = load %struct.BlockCnt*, %struct.BlockCnt** %337, align 8, !dbg !1525, !tbaa !740
  %388 = bitcast %struct.BlockCnt* %387 to i64*, !dbg !1527
  %389 = load i64, i64* %388, align 8, !dbg !1527, !tbaa !1017
  store i64 %389, i64* %338, align 8, !dbg !1528, !tbaa !740
  %390 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %327, i64 0, i32 3, !dbg !1529
  %391 = load %struct.LexState*, %struct.LexState** %390, align 8, !dbg !1529, !tbaa !719
  %392 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %387, i64 0, i32 2, !dbg !1530
  %393 = load i8, i8* %392, align 4, !dbg !1530, !tbaa !1011
  %394 = zext i8 %393 to i32, !dbg !1531
  %395 = getelementptr inbounds %struct.LexState, %struct.LexState* %391, i64 0, i32 5, !dbg !1535
  %396 = load %struct.FuncState*, %struct.FuncState** %395, align 8, !dbg !1535, !tbaa !651
  %397 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %396, i64 0, i32 13, !dbg !1537
  %398 = load i8, i8* %397, align 2, !dbg !1537, !tbaa !653
  %399 = icmp ugt i8 %398, %393, !dbg !1538
  br i1 %399, label %400, label %441, !dbg !1539

; <label>:400:                                    ; preds = %386
  %401 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %396, i64 0, i32 6
  %402 = load i32, i32* %401, align 8, !tbaa !793
  %403 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %396, i64 0, i32 0
  %404 = load %struct.Proto*, %struct.Proto** %403, align 8, !tbaa !585
  %405 = getelementptr inbounds %struct.Proto, %struct.Proto* %404, i64 0, i32 7
  %406 = load %struct.LocVar*, %struct.LocVar** %405, align 8, !tbaa !794
  %407 = zext i8 %398 to i64, !dbg !1539
  %408 = sub i8 %398, %393, !dbg !1539
  %409 = and i8 %408, 1, !dbg !1539
  %410 = icmp eq i8 %409, 0, !dbg !1539
  br i1 %410, label %419, label %411, !dbg !1539

; <label>:411:                                    ; preds = %400
  %412 = add i8 %398, -1, !dbg !1540
  %413 = zext i8 %412 to i64, !dbg !1540
  %414 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %396, i64 0, i32 15, i64 %413, !dbg !1540
  %415 = load i16, i16* %414, align 2, !dbg !1540, !tbaa !796
  %416 = zext i16 %415 to i64, !dbg !1540
  %417 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %406, i64 %416, i32 2, !dbg !1541
  store i32 %402, i32* %417, align 4, !dbg !1542, !tbaa !799
  %418 = add nsw i64 %407, -1, !dbg !1540
  br label %419, !dbg !1539

; <label>:419:                                    ; preds = %400, %411
  %420 = phi i64 [ %407, %400 ], [ %418, %411 ]
  %421 = add i8 %393, 1, !dbg !1539
  %422 = icmp eq i8 %398, %421, !dbg !1539
  br i1 %422, label %440, label %423, !dbg !1539

; <label>:423:                                    ; preds = %419, %423
  %424 = phi i64 [ %439, %423 ], [ %420, %419 ]
  %425 = add i64 %424, 255, !dbg !1540
  %426 = and i64 %425, 255, !dbg !1540
  %427 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %396, i64 0, i32 15, i64 %426, !dbg !1540
  %428 = load i16, i16* %427, align 2, !dbg !1540, !tbaa !796
  %429 = zext i16 %428 to i64, !dbg !1540
  %430 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %406, i64 %429, i32 2, !dbg !1541
  store i32 %402, i32* %430, align 4, !dbg !1542, !tbaa !799
  %431 = trunc i64 %424 to i8, !dbg !1540
  %432 = add i8 %431, -2, !dbg !1540
  %433 = zext i8 %432 to i64, !dbg !1540
  %434 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %396, i64 0, i32 15, i64 %433, !dbg !1540
  %435 = load i16, i16* %434, align 2, !dbg !1540, !tbaa !796
  %436 = zext i16 %435 to i64, !dbg !1540
  %437 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %406, i64 %436, i32 2, !dbg !1541
  store i32 %402, i32* %437, align 4, !dbg !1542, !tbaa !799
  %438 = icmp ugt i8 %432, %393, !dbg !1538
  %439 = add nsw i64 %424, -2, !dbg !1540
  br i1 %438, label %423, label %440, !dbg !1539, !llvm.loop !801

; <label>:440:                                    ; preds = %423, %419
  store i8 %393, i8* %397, align 2, !dbg !1540, !tbaa !653
  br label %441, !dbg !1539

; <label>:441:                                    ; preds = %440, %386
  %442 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %387, i64 0, i32 3, !dbg !1543
  %443 = load i8, i8* %442, align 1, !dbg !1543, !tbaa !1014
  %444 = icmp eq i8 %443, 0, !dbg !1544
  br i1 %444, label %447, label %445, !dbg !1545

; <label>:445:                                    ; preds = %441
  %446 = call i32 @luaK_codeABC(%struct.FuncState* %327, i32 35, i32 %394, i32 0, i32 0) #5, !dbg !1546
  br label %447, !dbg !1546

; <label>:447:                                    ; preds = %445, %441
  %448 = load i8, i8* %333, align 2, !dbg !1547, !tbaa !653
  %449 = zext i8 %448 to i32, !dbg !1548
  %450 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %327, i64 0, i32 9, !dbg !1549
  store i32 %449, i32* %450, align 4, !dbg !1550, !tbaa !657
  %451 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %387, i64 0, i32 1, !dbg !1551
  %452 = load i32, i32* %451, align 8, !dbg !1551, !tbaa !1003
  call void @luaK_patchtohere(%struct.FuncState* %327, i32 %452) #5, !dbg !1552
  %453 = load %struct.FuncState*, %struct.FuncState** %326, align 8, !dbg !1553, !tbaa !651
  call void @luaK_patchlist(%struct.FuncState* %453, i32 %383, i32 %328) #5, !dbg !1554
  br label %556, !dbg !1555

; <label>:454:                                    ; preds = %380
  %455 = load %struct.FuncState*, %struct.FuncState** %326, align 8, !dbg !1565, !tbaa !651
  %456 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %455, i64 0, i32 5, !dbg !1567
  %457 = load %struct.BlockCnt*, %struct.BlockCnt** %456, align 8, !dbg !1570, !tbaa !1572
  %458 = icmp eq %struct.BlockCnt* %457, null, !dbg !1573
  br i1 %458, label %473, label %459, !dbg !1574

; <label>:459:                                    ; preds = %454, %465
  %460 = phi %struct.BlockCnt* [ %471, %465 ], [ %457, %454 ]
  %461 = phi i32 [ %469, %465 ], [ 0, %454 ]
  %462 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %460, i64 0, i32 4, !dbg !1575
  %463 = load i8, i8* %462, align 2, !dbg !1575, !tbaa !1007
  %464 = icmp eq i8 %463, 0, !dbg !1576
  br i1 %464, label %465, label %475, !dbg !1577

; <label>:465:                                    ; preds = %459
  %466 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %460, i64 0, i32 3, !dbg !1578
  %467 = load i8, i8* %466, align 1, !dbg !1578, !tbaa !1014
  %468 = zext i8 %467 to i32, !dbg !1579
  %469 = or i32 %461, %468, !dbg !1580
  %470 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %460, i64 0, i32 0, !dbg !1581
  %471 = load %struct.BlockCnt*, %struct.BlockCnt** %470, align 8, !dbg !1570, !tbaa !1572
  %472 = icmp eq %struct.BlockCnt* %471, null, !dbg !1573
  br i1 %472, label %473, label %459, !dbg !1574, !llvm.loop !1582

; <label>:473:                                    ; preds = %465, %454
  %474 = phi i32 [ 0, %454 ], [ %469, %465 ], !dbg !1570
  call void @luaX_syntaxerror(%struct.LexState* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i64 0, i64 0)) #5, !dbg !1585
  br label %475, !dbg !1585

; <label>:475:                                    ; preds = %459, %473
  %476 = phi i32 [ %474, %473 ], [ %461, %459 ]
  %477 = phi %struct.BlockCnt* [ null, %473 ], [ %460, %459 ]
  %478 = icmp eq i32 %476, 0, !dbg !1587
  br i1 %478, label %484, label %479, !dbg !1589

; <label>:479:                                    ; preds = %475
  %480 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %477, i64 0, i32 2, !dbg !1590
  %481 = load i8, i8* %480, align 4, !dbg !1590, !tbaa !1011
  %482 = zext i8 %481 to i32, !dbg !1591
  %483 = call i32 @luaK_codeABC(%struct.FuncState* %455, i32 35, i32 %482, i32 0, i32 0) #5, !dbg !1592
  br label %484, !dbg !1592

; <label>:484:                                    ; preds = %479, %475
  %485 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %477, i64 0, i32 1, !dbg !1593
  %486 = call i32 @luaK_jump(%struct.FuncState* %455) #5, !dbg !1594
  call void @luaK_concat(%struct.FuncState* %455, i32* nonnull %485, i32 %486) #5, !dbg !1595
  %487 = load %struct.FuncState*, %struct.FuncState** %326, align 8, !dbg !1596, !tbaa !651
  call void @luaK_patchtohere(%struct.FuncState* %487, i32 %383) #5, !dbg !1597
  %488 = load %struct.BlockCnt*, %struct.BlockCnt** %337, align 8, !dbg !1600, !tbaa !740
  %489 = bitcast %struct.BlockCnt* %488 to i64*, !dbg !1602
  %490 = load i64, i64* %489, align 8, !dbg !1602, !tbaa !1017
  store i64 %490, i64* %338, align 8, !dbg !1603, !tbaa !740
  %491 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %327, i64 0, i32 3, !dbg !1604
  %492 = load %struct.LexState*, %struct.LexState** %491, align 8, !dbg !1604, !tbaa !719
  %493 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %488, i64 0, i32 2, !dbg !1605
  %494 = load i8, i8* %493, align 4, !dbg !1605, !tbaa !1011
  %495 = zext i8 %494 to i32, !dbg !1606
  %496 = getelementptr inbounds %struct.LexState, %struct.LexState* %492, i64 0, i32 5, !dbg !1610
  %497 = load %struct.FuncState*, %struct.FuncState** %496, align 8, !dbg !1610, !tbaa !651
  %498 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %497, i64 0, i32 13, !dbg !1612
  %499 = load i8, i8* %498, align 2, !dbg !1612, !tbaa !653
  %500 = icmp ugt i8 %499, %494, !dbg !1613
  br i1 %500, label %501, label %542, !dbg !1614

; <label>:501:                                    ; preds = %484
  %502 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %497, i64 0, i32 6
  %503 = load i32, i32* %502, align 8, !tbaa !793
  %504 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %497, i64 0, i32 0
  %505 = load %struct.Proto*, %struct.Proto** %504, align 8, !tbaa !585
  %506 = getelementptr inbounds %struct.Proto, %struct.Proto* %505, i64 0, i32 7
  %507 = load %struct.LocVar*, %struct.LocVar** %506, align 8, !tbaa !794
  %508 = zext i8 %499 to i64, !dbg !1614
  %509 = sub i8 %499, %494, !dbg !1614
  %510 = and i8 %509, 1, !dbg !1614
  %511 = icmp eq i8 %510, 0, !dbg !1614
  br i1 %511, label %520, label %512, !dbg !1614

; <label>:512:                                    ; preds = %501
  %513 = add i8 %499, -1, !dbg !1615
  %514 = zext i8 %513 to i64, !dbg !1615
  %515 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %497, i64 0, i32 15, i64 %514, !dbg !1615
  %516 = load i16, i16* %515, align 2, !dbg !1615, !tbaa !796
  %517 = zext i16 %516 to i64, !dbg !1615
  %518 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %507, i64 %517, i32 2, !dbg !1616
  store i32 %503, i32* %518, align 4, !dbg !1617, !tbaa !799
  %519 = add nsw i64 %508, -1, !dbg !1615
  br label %520, !dbg !1614

; <label>:520:                                    ; preds = %501, %512
  %521 = phi i64 [ %508, %501 ], [ %519, %512 ]
  %522 = add i8 %494, 1, !dbg !1614
  %523 = icmp eq i8 %499, %522, !dbg !1614
  br i1 %523, label %541, label %524, !dbg !1614

; <label>:524:                                    ; preds = %520, %524
  %525 = phi i64 [ %540, %524 ], [ %521, %520 ]
  %526 = add i64 %525, 255, !dbg !1615
  %527 = and i64 %526, 255, !dbg !1615
  %528 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %497, i64 0, i32 15, i64 %527, !dbg !1615
  %529 = load i16, i16* %528, align 2, !dbg !1615, !tbaa !796
  %530 = zext i16 %529 to i64, !dbg !1615
  %531 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %507, i64 %530, i32 2, !dbg !1616
  store i32 %503, i32* %531, align 4, !dbg !1617, !tbaa !799
  %532 = trunc i64 %525 to i8, !dbg !1615
  %533 = add i8 %532, -2, !dbg !1615
  %534 = zext i8 %533 to i64, !dbg !1615
  %535 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %497, i64 0, i32 15, i64 %534, !dbg !1615
  %536 = load i16, i16* %535, align 2, !dbg !1615, !tbaa !796
  %537 = zext i16 %536 to i64, !dbg !1615
  %538 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %507, i64 %537, i32 2, !dbg !1616
  store i32 %503, i32* %538, align 4, !dbg !1617, !tbaa !799
  %539 = icmp ugt i8 %533, %494, !dbg !1613
  %540 = add nsw i64 %525, -2, !dbg !1615
  br i1 %539, label %524, label %541, !dbg !1614, !llvm.loop !801

; <label>:541:                                    ; preds = %524, %520
  store i8 %494, i8* %498, align 2, !dbg !1615, !tbaa !653
  br label %542, !dbg !1614

; <label>:542:                                    ; preds = %541, %484
  %543 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %488, i64 0, i32 3, !dbg !1618
  %544 = load i8, i8* %543, align 1, !dbg !1618, !tbaa !1014
  %545 = icmp eq i8 %544, 0, !dbg !1619
  br i1 %545, label %548, label %546, !dbg !1620

; <label>:546:                                    ; preds = %542
  %547 = call i32 @luaK_codeABC(%struct.FuncState* %327, i32 35, i32 %495, i32 0, i32 0) #5, !dbg !1621
  br label %548, !dbg !1621

; <label>:548:                                    ; preds = %546, %542
  %549 = load i8, i8* %333, align 2, !dbg !1622, !tbaa !653
  %550 = zext i8 %549 to i32, !dbg !1623
  %551 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %327, i64 0, i32 9, !dbg !1624
  store i32 %550, i32* %551, align 4, !dbg !1625, !tbaa !657
  %552 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %488, i64 0, i32 1, !dbg !1626
  %553 = load i32, i32* %552, align 8, !dbg !1626, !tbaa !1003
  call void @luaK_patchtohere(%struct.FuncState* %327, i32 %553) #5, !dbg !1627
  %554 = load %struct.FuncState*, %struct.FuncState** %326, align 8, !dbg !1628, !tbaa !651
  %555 = call i32 @luaK_jump(%struct.FuncState* %327) #5, !dbg !1629
  call void @luaK_patchlist(%struct.FuncState* %554, i32 %555, i32 %328) #5, !dbg !1630
  br label %556

; <label>:556:                                    ; preds = %548, %447
  %557 = phi %struct.LexState** [ %491, %548 ], [ %390, %447 ], !dbg !1631
  %558 = load %struct.BlockCnt*, %struct.BlockCnt** %337, align 8, !dbg !1634, !tbaa !740
  %559 = bitcast %struct.BlockCnt* %558 to i64*, !dbg !1636
  %560 = load i64, i64* %559, align 8, !dbg !1636, !tbaa !1017
  store i64 %560, i64* %338, align 8, !dbg !1637, !tbaa !740
  %561 = load %struct.LexState*, %struct.LexState** %557, align 8, !dbg !1631, !tbaa !719
  %562 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %558, i64 0, i32 2, !dbg !1638
  %563 = load i8, i8* %562, align 4, !dbg !1638, !tbaa !1011
  %564 = zext i8 %563 to i32, !dbg !1639
  %565 = getelementptr inbounds %struct.LexState, %struct.LexState* %561, i64 0, i32 5, !dbg !1643
  %566 = load %struct.FuncState*, %struct.FuncState** %565, align 8, !dbg !1643, !tbaa !651
  %567 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %566, i64 0, i32 13, !dbg !1645
  %568 = load i8, i8* %567, align 2, !dbg !1645, !tbaa !653
  %569 = icmp ugt i8 %568, %563, !dbg !1646
  br i1 %569, label %570, label %611, !dbg !1647

; <label>:570:                                    ; preds = %556
  %571 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %566, i64 0, i32 6
  %572 = load i32, i32* %571, align 8, !tbaa !793
  %573 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %566, i64 0, i32 0
  %574 = load %struct.Proto*, %struct.Proto** %573, align 8, !tbaa !585
  %575 = getelementptr inbounds %struct.Proto, %struct.Proto* %574, i64 0, i32 7
  %576 = load %struct.LocVar*, %struct.LocVar** %575, align 8, !tbaa !794
  %577 = zext i8 %568 to i64, !dbg !1647
  %578 = sub i8 %568, %563, !dbg !1647
  %579 = and i8 %578, 1, !dbg !1647
  %580 = icmp eq i8 %579, 0, !dbg !1647
  br i1 %580, label %589, label %581, !dbg !1647

; <label>:581:                                    ; preds = %570
  %582 = add i8 %568, -1, !dbg !1648
  %583 = zext i8 %582 to i64, !dbg !1648
  %584 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %566, i64 0, i32 15, i64 %583, !dbg !1648
  %585 = load i16, i16* %584, align 2, !dbg !1648, !tbaa !796
  %586 = zext i16 %585 to i64, !dbg !1648
  %587 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %576, i64 %586, i32 2, !dbg !1649
  store i32 %572, i32* %587, align 4, !dbg !1650, !tbaa !799
  %588 = add nsw i64 %577, -1, !dbg !1648
  br label %589, !dbg !1647

; <label>:589:                                    ; preds = %570, %581
  %590 = phi i64 [ %577, %570 ], [ %588, %581 ]
  %591 = add i8 %563, 1, !dbg !1647
  %592 = icmp eq i8 %568, %591, !dbg !1647
  br i1 %592, label %610, label %593, !dbg !1647

; <label>:593:                                    ; preds = %589, %593
  %594 = phi i64 [ %609, %593 ], [ %590, %589 ]
  %595 = add i64 %594, 255, !dbg !1648
  %596 = and i64 %595, 255, !dbg !1648
  %597 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %566, i64 0, i32 15, i64 %596, !dbg !1648
  %598 = load i16, i16* %597, align 2, !dbg !1648, !tbaa !796
  %599 = zext i16 %598 to i64, !dbg !1648
  %600 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %576, i64 %599, i32 2, !dbg !1649
  store i32 %572, i32* %600, align 4, !dbg !1650, !tbaa !799
  %601 = trunc i64 %594 to i8, !dbg !1648
  %602 = add i8 %601, -2, !dbg !1648
  %603 = zext i8 %602 to i64, !dbg !1648
  %604 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %566, i64 0, i32 15, i64 %603, !dbg !1648
  %605 = load i16, i16* %604, align 2, !dbg !1648, !tbaa !796
  %606 = zext i16 %605 to i64, !dbg !1648
  %607 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %576, i64 %606, i32 2, !dbg !1649
  store i32 %572, i32* %607, align 4, !dbg !1650, !tbaa !799
  %608 = icmp ugt i8 %602, %563, !dbg !1646
  %609 = add nsw i64 %594, -2, !dbg !1648
  br i1 %608, label %593, label %610, !dbg !1647, !llvm.loop !801

; <label>:610:                                    ; preds = %593, %589
  store i8 %563, i8* %567, align 2, !dbg !1648, !tbaa !653
  br label %611, !dbg !1647

; <label>:611:                                    ; preds = %610, %556
  %612 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %558, i64 0, i32 3, !dbg !1651
  %613 = load i8, i8* %612, align 1, !dbg !1651, !tbaa !1014
  %614 = icmp eq i8 %613, 0, !dbg !1652
  br i1 %614, label %617, label %615, !dbg !1653

; <label>:615:                                    ; preds = %611
  %616 = call i32 @luaK_codeABC(%struct.FuncState* %327, i32 35, i32 %564, i32 0, i32 0) #5, !dbg !1654
  br label %617, !dbg !1654

; <label>:617:                                    ; preds = %611, %615
  %618 = load i8, i8* %333, align 2, !dbg !1655, !tbaa !653
  %619 = zext i8 %618 to i32, !dbg !1656
  %620 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %327, i64 0, i32 9, !dbg !1657
  store i32 %619, i32* %620, align 4, !dbg !1658, !tbaa !657
  %621 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %558, i64 0, i32 1, !dbg !1659
  %622 = load i32, i32* %621, align 8, !dbg !1659, !tbaa !1003
  call void @luaK_patchtohere(%struct.FuncState* %327, i32 %622) #5, !dbg !1660
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %330) #4, !dbg !1661
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %329) #4, !dbg !1661
  br label %919, !dbg !1662

; <label>:623:                                    ; preds = %1
  %624 = bitcast %struct.expdesc* %10 to i8*, !dbg !1674
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %624) #4, !dbg !1674
  %625 = bitcast %struct.expdesc* %11 to i8*, !dbg !1674
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %625) #4, !dbg !1674
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !1675
  %626 = load i32, i32* %22, align 8, !dbg !1700, !tbaa !623
  %627 = icmp eq i32 %626, 285, !dbg !1701
  br i1 %627, label %633, label %628, !dbg !1702

; <label>:628:                                    ; preds = %623
  %629 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !1706
  %630 = load %struct.lua_State*, %struct.lua_State** %629, align 8, !dbg !1706, !tbaa !611
  %631 = tail call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 285) #5, !dbg !1707
  %632 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %630, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %631) #5, !dbg !1708
  tail call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %632) #5, !dbg !1709
  br label %633, !dbg !1710

; <label>:633:                                    ; preds = %628, %623
  %634 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1, !dbg !1711
  %635 = bitcast %union.SemInfo* %634 to %union.TString**, !dbg !1712
  %636 = load %union.TString*, %union.TString** %635, align 8, !dbg !1712, !tbaa !755
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !1714
  %637 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !1716
  %638 = load %struct.FuncState*, %struct.FuncState** %637, align 8, !dbg !1716, !tbaa !651
  %639 = call fastcc i32 @singlevaraux(%struct.FuncState* %638, %union.TString* %636, %struct.expdesc* nonnull %10, i32 1) #5, !dbg !1718
  %640 = icmp eq i32 %639, 8, !dbg !1720
  br i1 %640, label %641, label %645, !dbg !1721

; <label>:641:                                    ; preds = %633
  %642 = tail call i32 @luaK_stringK(%struct.FuncState* %638, %union.TString* %636) #5, !dbg !1722
  %643 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %10, i64 0, i32 1, !dbg !1723
  %644 = bitcast %union.anon.3* %643 to i32*, !dbg !1724
  store i32 %642, i32* %644, align 8, !dbg !1725, !tbaa !755
  br label %645, !dbg !1726

; <label>:645:                                    ; preds = %641, %633
  br label %646, !dbg !1727

; <label>:646:                                    ; preds = %645, %648
  %647 = load i32, i32* %22, align 8, !dbg !1727, !tbaa !623
  switch i32 %647, label %650 [
    i32 46, label %648
    i32 58, label %649
  ], !dbg !1728

; <label>:648:                                    ; preds = %646
  call fastcc void @field(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %10) #5, !dbg !1729
  br label %646, !dbg !1728, !llvm.loop !1730

; <label>:649:                                    ; preds = %646
  call fastcc void @field(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %10) #5, !dbg !1733
  br label %650, !dbg !1736

; <label>:650:                                    ; preds = %646, %649
  %651 = phi i32 [ 1, %649 ], [ 0, %646 ], !dbg !1737
  call fastcc void @body(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %11, i32 %651, i32 %21) #5, !dbg !1740
  %652 = load %struct.FuncState*, %struct.FuncState** %637, align 8, !dbg !1741, !tbaa !651
  call void @luaK_storevar(%struct.FuncState* %652, %struct.expdesc* nonnull %10, %struct.expdesc* nonnull %11) #5, !dbg !1742
  %653 = load %struct.FuncState*, %struct.FuncState** %637, align 8, !dbg !1743, !tbaa !651
  call void @luaK_fixline(%struct.FuncState* %653, i32 %21) #5, !dbg !1744
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %625) #4, !dbg !1745
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %624) #4, !dbg !1745
  br label %919, !dbg !1746

; <label>:654:                                    ; preds = %1
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !1747
  %655 = load i32, i32* %22, align 8, !dbg !1753, !tbaa !623
  %656 = icmp eq i32 %655, 265, !dbg !1754
  br i1 %656, label %657, label %711, !dbg !1755

; <label>:657:                                    ; preds = %654
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !1756
  %658 = bitcast %struct.expdesc* %8 to i8*, !dbg !1765
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %658) #4, !dbg !1765
  %659 = bitcast %struct.expdesc* %9 to i8*, !dbg !1765
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %659) #4, !dbg !1765
  %660 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !1766
  %661 = load %struct.FuncState*, %struct.FuncState** %660, align 8, !dbg !1766, !tbaa !651
  %662 = load i32, i32* %22, align 8, !dbg !1773, !tbaa !623
  %663 = icmp eq i32 %662, 285, !dbg !1774
  br i1 %663, label %669, label %664, !dbg !1775

; <label>:664:                                    ; preds = %657
  %665 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !1779
  %666 = load %struct.lua_State*, %struct.lua_State** %665, align 8, !dbg !1779, !tbaa !611
  %667 = tail call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 285) #5, !dbg !1780
  %668 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %666, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %667) #5, !dbg !1781
  tail call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %668) #5, !dbg !1782
  br label %669, !dbg !1783

; <label>:669:                                    ; preds = %664, %657
  %670 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1, !dbg !1784
  %671 = bitcast %union.SemInfo* %670 to %union.TString**, !dbg !1785
  %672 = load %union.TString*, %union.TString** %671, align 8, !dbg !1785, !tbaa !755
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !1787
  tail call fastcc void @new_localvar(%struct.LexState* nonnull %0, %union.TString* %672, i32 0) #5, !dbg !1788
  %673 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %661, i64 0, i32 9, !dbg !1789
  %674 = load i32, i32* %673, align 4, !dbg !1789, !tbaa !657
  %675 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %8, i64 0, i32 2, !dbg !1802
  store i32 -1, i32* %675, align 8, !dbg !1803, !tbaa !1804
  %676 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %8, i64 0, i32 3, !dbg !1805
  store i32 -1, i32* %676, align 4, !dbg !1806, !tbaa !985
  %677 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %8, i64 0, i32 0, !dbg !1807
  store i32 6, i32* %677, align 8, !dbg !1808, !tbaa !976
  %678 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %8, i64 0, i32 1, !dbg !1809
  %679 = bitcast %union.anon.3* %678 to i32*, !dbg !1810
  store i32 %674, i32* %679, align 8, !dbg !1811, !tbaa !755
  tail call void @luaK_reserveregs(%struct.FuncState* %661, i32 1) #5, !dbg !1812
  %680 = load %struct.FuncState*, %struct.FuncState** %660, align 8, !dbg !1821, !tbaa !651
  %681 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %680, i64 0, i32 13, !dbg !1823
  %682 = load i8, i8* %681, align 2, !dbg !1823, !tbaa !653
  %683 = add i8 %682, 1, !dbg !1823
  store i8 %683, i8* %681, align 2, !dbg !1824, !tbaa !653
  %684 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %680, i64 0, i32 6
  %685 = load i32, i32* %684, align 8, !tbaa !793
  %686 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %680, i64 0, i32 0
  %687 = load %struct.Proto*, %struct.Proto** %686, align 8, !tbaa !585
  %688 = getelementptr inbounds %struct.Proto, %struct.Proto* %687, i64 0, i32 7
  %689 = load %struct.LocVar*, %struct.LocVar** %688, align 8, !tbaa !794
  %690 = zext i8 %683 to i64, !dbg !1825
  %691 = add nsw i64 %690, -1, !dbg !1827
  %692 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %680, i64 0, i32 15, i64 %691, !dbg !1827
  %693 = load i16, i16* %692, align 2, !dbg !1827, !tbaa !796
  %694 = zext i16 %693 to i64, !dbg !1827
  %695 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %689, i64 %694, i32 1, !dbg !1830
  store i32 %685, i32* %695, align 8, !dbg !1831, !tbaa !1832
  %696 = load i32, i32* %20, align 4, !dbg !1833, !tbaa !873
  call fastcc void @body(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %9, i32 0, i32 %696) #5, !dbg !1835
  call void @luaK_storevar(%struct.FuncState* %661, %struct.expdesc* nonnull %8, %struct.expdesc* nonnull %9) #5, !dbg !1836
  %697 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %661, i64 0, i32 6, !dbg !1837
  %698 = load i32, i32* %697, align 8, !dbg !1837, !tbaa !793
  %699 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %661, i64 0, i32 0, !dbg !1838
  %700 = load %struct.Proto*, %struct.Proto** %699, align 8, !dbg !1838, !tbaa !585
  %701 = getelementptr inbounds %struct.Proto, %struct.Proto* %700, i64 0, i32 7, !dbg !1838
  %702 = load %struct.LocVar*, %struct.LocVar** %701, align 8, !dbg !1838, !tbaa !794
  %703 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %661, i64 0, i32 13, !dbg !1838
  %704 = load i8, i8* %703, align 2, !dbg !1838, !tbaa !653
  %705 = zext i8 %704 to i64, !dbg !1838
  %706 = add nsw i64 %705, -1, !dbg !1838
  %707 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %661, i64 0, i32 15, i64 %706, !dbg !1838
  %708 = load i16, i16* %707, align 2, !dbg !1838, !tbaa !796
  %709 = zext i16 %708 to i64, !dbg !1838
  %710 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %702, i64 %709, i32 1, !dbg !1839
  store i32 %698, i32* %710, align 8, !dbg !1840, !tbaa !1832
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %659) #4, !dbg !1841
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %658) #4, !dbg !1841
  br label %919, !dbg !1842

; <label>:711:                                    ; preds = %654
  %712 = bitcast %struct.expdesc* %7 to i8*, !dbg !1852
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %712) #4, !dbg !1852
  %713 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1
  %714 = bitcast %union.SemInfo* %713 to %union.TString**
  %715 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  br label %718, !dbg !1853

; <label>:716:                                    ; preds = %726
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !1854
  %717 = load i32, i32* %22, align 8, !dbg !1856, !tbaa !623
  br label %718, !dbg !1856

; <label>:718:                                    ; preds = %716, %711
  %719 = phi i32 [ %717, %716 ], [ %655, %711 ], !dbg !1856
  %720 = phi i32 [ %728, %716 ], [ 0, %711 ], !dbg !1860
  %721 = icmp eq i32 %719, 285, !dbg !1864
  br i1 %721, label %726, label %722, !dbg !1865

; <label>:722:                                    ; preds = %718
  %723 = load %struct.lua_State*, %struct.lua_State** %715, align 8, !dbg !1869, !tbaa !611
  %724 = tail call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 285) #5, !dbg !1870
  %725 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %723, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %724) #5, !dbg !1871
  tail call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %725) #5, !dbg !1872
  br label %726, !dbg !1873

; <label>:726:                                    ; preds = %722, %718
  %727 = load %union.TString*, %union.TString** %714, align 8, !dbg !1874, !tbaa !755
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !1876
  %728 = add nuw nsw i32 %720, 1, !dbg !1877
  tail call fastcc void @new_localvar(%struct.LexState* nonnull %0, %union.TString* %727, i32 %720) #5, !dbg !1878
  %729 = load i32, i32* %22, align 8, !dbg !1881, !tbaa !623
  switch i32 %729, label %743 [
    i32 44, label %716
    i32 61, label %730
  ], !dbg !1882

; <label>:730:                                    ; preds = %726
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !1883
  %731 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %7, i32 0) #5, !dbg !1894
  %732 = load i32, i32* %22, align 8, !dbg !1898, !tbaa !623
  %733 = icmp eq i32 %732, 44, !dbg !1899
  br i1 %733, label %734, label %745, !dbg !1900

; <label>:734:                                    ; preds = %730
  %735 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  br label %736, !dbg !1900

; <label>:736:                                    ; preds = %734, %736
  %737 = phi i32 [ 1, %734 ], [ %740, %736 ]
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !1901
  %738 = load %struct.FuncState*, %struct.FuncState** %735, align 8, !dbg !1902, !tbaa !651
  call void @luaK_exp2nextreg(%struct.FuncState* %738, %struct.expdesc* nonnull %7) #5, !dbg !1903
  %739 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %7, i32 0) #5, !dbg !1907
  %740 = add nuw nsw i32 %737, 1, !dbg !1908
  %741 = load i32, i32* %22, align 8, !dbg !1898, !tbaa !623
  %742 = icmp eq i32 %741, 44, !dbg !1899
  br i1 %742, label %736, label %745, !dbg !1900, !llvm.loop !1372

; <label>:743:                                    ; preds = %726
  %744 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %7, i64 0, i32 0, !dbg !1909
  store i32 0, i32* %744, align 8, !dbg !1911, !tbaa !976
  br label %745

; <label>:745:                                    ; preds = %736, %730, %743
  %746 = phi i32 [ 0, %743 ], [ 1, %730 ], [ %740, %736 ], !dbg !1913
  call fastcc void @adjust_assign(%struct.LexState* nonnull %0, i32 %728, i32 %746, %struct.expdesc* nonnull %7) #5, !dbg !1914
  %747 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !1918
  %748 = load %struct.FuncState*, %struct.FuncState** %747, align 8, !dbg !1918, !tbaa !651
  %749 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %748, i64 0, i32 13, !dbg !1920
  %750 = load i8, i8* %749, align 2, !dbg !1920, !tbaa !653
  %751 = trunc i32 %728 to i8, !dbg !1920
  %752 = add i8 %750, %751, !dbg !1920
  store i8 %752, i8* %749, align 2, !dbg !1921, !tbaa !653
  %753 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %748, i64 0, i32 6
  %754 = load i32, i32* %753, align 8, !tbaa !793
  %755 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %748, i64 0, i32 0
  %756 = load %struct.Proto*, %struct.Proto** %755, align 8, !tbaa !585
  %757 = getelementptr inbounds %struct.Proto, %struct.Proto* %756, i64 0, i32 7
  %758 = load %struct.LocVar*, %struct.LocVar** %757, align 8, !tbaa !794
  %759 = zext i32 %728 to i64, !dbg !1922
  %760 = zext i8 %752 to i64, !dbg !1922
  %761 = and i32 %728, 3, !dbg !1922
  %762 = icmp eq i32 %761, 0, !dbg !1922
  br i1 %762, label %774, label %763, !dbg !1922

; <label>:763:                                    ; preds = %745, %763
  %764 = phi i64 [ %771, %763 ], [ %759, %745 ]
  %765 = phi i32 [ %772, %763 ], [ %761, %745 ]
  %766 = sub nsw i64 %760, %764, !dbg !1923
  %767 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %748, i64 0, i32 15, i64 %766, !dbg !1923
  %768 = load i16, i16* %767, align 2, !dbg !1923, !tbaa !796
  %769 = zext i16 %768 to i64, !dbg !1923
  %770 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %758, i64 %769, i32 1, !dbg !1924
  store i32 %754, i32* %770, align 8, !dbg !1925, !tbaa !1832
  %771 = add nsw i64 %764, -1, !dbg !1926
  %772 = add i32 %765, -1, !dbg !1922
  %773 = icmp eq i32 %772, 0, !dbg !1922
  br i1 %773, label %774, label %763, !dbg !1922, !llvm.loop !1927

; <label>:774:                                    ; preds = %763, %745
  %775 = phi i64 [ %759, %745 ], [ %771, %763 ]
  %776 = icmp ult i32 %720, 3, !dbg !1922
  br i1 %776, label %805, label %777, !dbg !1922

; <label>:777:                                    ; preds = %774, %777
  %778 = phi i64 [ %802, %777 ], [ %775, %774 ]
  %779 = sub nsw i64 %760, %778, !dbg !1923
  %780 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %748, i64 0, i32 15, i64 %779, !dbg !1923
  %781 = load i16, i16* %780, align 2, !dbg !1923, !tbaa !796
  %782 = zext i16 %781 to i64, !dbg !1923
  %783 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %758, i64 %782, i32 1, !dbg !1924
  store i32 %754, i32* %783, align 8, !dbg !1925, !tbaa !1832
  %784 = add nsw i64 %778, -1, !dbg !1926
  %785 = sub nsw i64 %760, %784, !dbg !1923
  %786 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %748, i64 0, i32 15, i64 %785, !dbg !1923
  %787 = load i16, i16* %786, align 2, !dbg !1923, !tbaa !796
  %788 = zext i16 %787 to i64, !dbg !1923
  %789 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %758, i64 %788, i32 1, !dbg !1924
  store i32 %754, i32* %789, align 8, !dbg !1925, !tbaa !1832
  %790 = add nsw i64 %778, -2, !dbg !1926
  %791 = sub nsw i64 %760, %790, !dbg !1923
  %792 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %748, i64 0, i32 15, i64 %791, !dbg !1923
  %793 = load i16, i16* %792, align 2, !dbg !1923, !tbaa !796
  %794 = zext i16 %793 to i64, !dbg !1923
  %795 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %758, i64 %794, i32 1, !dbg !1924
  store i32 %754, i32* %795, align 8, !dbg !1925, !tbaa !1832
  %796 = add nsw i64 %778, -3, !dbg !1926
  %797 = sub nsw i64 %760, %796, !dbg !1923
  %798 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %748, i64 0, i32 15, i64 %797, !dbg !1923
  %799 = load i16, i16* %798, align 2, !dbg !1923, !tbaa !796
  %800 = zext i16 %799 to i64, !dbg !1923
  %801 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %758, i64 %800, i32 1, !dbg !1924
  store i32 %754, i32* %801, align 8, !dbg !1925, !tbaa !1832
  %802 = add nsw i64 %778, -4, !dbg !1926
  %803 = trunc i64 %802 to i32, !dbg !1922
  %804 = icmp eq i32 %803, 0, !dbg !1922
  br i1 %804, label %805, label %777, !dbg !1922, !llvm.loop !1929

; <label>:805:                                    ; preds = %777, %774
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %712) #4, !dbg !1932
  br label %919

; <label>:806:                                    ; preds = %1
  %807 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !1943
  %808 = load %struct.FuncState*, %struct.FuncState** %807, align 8, !dbg !1943, !tbaa !651
  %809 = bitcast %struct.expdesc* %6 to i8*, !dbg !1945
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %809) #4, !dbg !1945
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !1946
  %810 = load i32, i32* %22, align 8, !dbg !1947, !tbaa !623
  switch i32 %810, label %811 [
    i32 260, label %858
    i32 261, label %858
    i32 262, label %858
    i32 276, label %858
    i32 287, label %858
    i32 59, label %858
  ], !dbg !1951

; <label>:811:                                    ; preds = %806
  %812 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %6, i32 0) #5, !dbg !1961
  %813 = load i32, i32* %22, align 8, !dbg !1965, !tbaa !623
  %814 = icmp eq i32 %813, 44, !dbg !1966
  br i1 %814, label %815, label %822, !dbg !1967

; <label>:815:                                    ; preds = %811, %815
  %816 = phi i32 [ %819, %815 ], [ 1, %811 ]
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !1968
  %817 = load %struct.FuncState*, %struct.FuncState** %807, align 8, !dbg !1969, !tbaa !651
  call void @luaK_exp2nextreg(%struct.FuncState* %817, %struct.expdesc* nonnull %6) #5, !dbg !1970
  %818 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %6, i32 0) #5, !dbg !1974
  %819 = add nuw nsw i32 %816, 1, !dbg !1975
  %820 = load i32, i32* %22, align 8, !dbg !1965, !tbaa !623
  %821 = icmp eq i32 %820, 44, !dbg !1966
  br i1 %821, label %815, label %822, !dbg !1967, !llvm.loop !1372

; <label>:822:                                    ; preds = %815, %811
  %823 = phi i32 [ 1, %811 ], [ %819, %815 ], !dbg !1976
  %824 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %6, i64 0, i32 0, !dbg !1978
  %825 = load i32, i32* %824, align 8, !dbg !1978, !tbaa !976
  %826 = add i32 %825, -13, !dbg !1978
  %827 = icmp ult i32 %826, 2, !dbg !1978
  br i1 %827, label %828, label %850, !dbg !1978

; <label>:828:                                    ; preds = %822
  call void @luaK_setreturns(%struct.FuncState* %808, %struct.expdesc* nonnull %6, i32 -1) #5, !dbg !1980
  %829 = load i32, i32* %824, align 8, !dbg !1982, !tbaa !976
  %830 = icmp eq i32 %829, 13, !dbg !1984
  %831 = icmp eq i32 %823, 1, !dbg !1985
  %832 = and i1 %831, %830, !dbg !1986
  br i1 %832, label %833, label %846, !dbg !1986

; <label>:833:                                    ; preds = %828
  %834 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %808, i64 0, i32 0, !dbg !1987
  %835 = load %struct.Proto*, %struct.Proto** %834, align 8, !dbg !1987, !tbaa !585
  %836 = getelementptr inbounds %struct.Proto, %struct.Proto* %835, i64 0, i32 4, !dbg !1987
  %837 = load i32*, i32** %836, align 8, !dbg !1987, !tbaa !806
  %838 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %6, i64 0, i32 1, !dbg !1987
  %839 = bitcast %union.anon.3* %838 to i32*, !dbg !1987
  %840 = load i32, i32* %839, align 8, !dbg !1987, !tbaa !755
  %841 = sext i32 %840 to i64, !dbg !1987
  %842 = getelementptr inbounds i32, i32* %837, i64 %841, !dbg !1987
  %843 = load i32, i32* %842, align 4, !dbg !1987, !tbaa !726
  %844 = and i32 %843, -64, !dbg !1987
  %845 = or i32 %844, 29, !dbg !1987
  store i32 %845, i32* %842, align 4, !dbg !1987, !tbaa !726
  br label %846, !dbg !1989

; <label>:846:                                    ; preds = %833, %828
  %847 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %808, i64 0, i32 13, !dbg !1990
  %848 = load i8, i8* %847, align 2, !dbg !1990, !tbaa !653
  %849 = zext i8 %848 to i32, !dbg !1991
  br label %858, !dbg !1993

; <label>:850:                                    ; preds = %822
  %851 = icmp eq i32 %823, 1, !dbg !1994
  br i1 %851, label %852, label %854, !dbg !1997

; <label>:852:                                    ; preds = %850
  %853 = call i32 @luaK_exp2anyreg(%struct.FuncState* %808, %struct.expdesc* nonnull %6) #5, !dbg !1998
  br label %858, !dbg !1999

; <label>:854:                                    ; preds = %850
  call void @luaK_exp2nextreg(%struct.FuncState* %808, %struct.expdesc* nonnull %6) #5, !dbg !2000
  %855 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %808, i64 0, i32 13, !dbg !2002
  %856 = load i8, i8* %855, align 2, !dbg !2002, !tbaa !653
  %857 = zext i8 %856 to i32, !dbg !2003
  br label %858

; <label>:858:                                    ; preds = %806, %806, %806, %806, %806, %806, %846, %852, %854
  %859 = phi i32 [ %849, %846 ], [ %853, %852 ], [ %857, %854 ], [ 0, %806 ], [ 0, %806 ], [ 0, %806 ], [ 0, %806 ], [ 0, %806 ], [ 0, %806 ], !dbg !2004
  %860 = phi i32 [ -1, %846 ], [ 1, %852 ], [ %823, %854 ], [ 0, %806 ], [ 0, %806 ], [ 0, %806 ], [ 0, %806 ], [ 0, %806 ], [ 0, %806 ], !dbg !2005
  call void @luaK_ret(%struct.FuncState* %808, i32 %859, i32 %860) #5, !dbg !2006
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %809) #4, !dbg !2007
  br label %919, !dbg !2008

; <label>:861:                                    ; preds = %1
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !2009
  %862 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !2013
  %863 = load %struct.FuncState*, %struct.FuncState** %862, align 8, !dbg !2013, !tbaa !651
  %864 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %863, i64 0, i32 5, !dbg !2015
  %865 = load %struct.BlockCnt*, %struct.BlockCnt** %864, align 8, !dbg !2018, !tbaa !1572
  %866 = icmp eq %struct.BlockCnt* %865, null, !dbg !2019
  br i1 %866, label %881, label %867, !dbg !2020

; <label>:867:                                    ; preds = %861, %873
  %868 = phi %struct.BlockCnt* [ %879, %873 ], [ %865, %861 ]
  %869 = phi i32 [ %877, %873 ], [ 0, %861 ]
  %870 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %868, i64 0, i32 4, !dbg !2021
  %871 = load i8, i8* %870, align 2, !dbg !2021, !tbaa !1007
  %872 = icmp eq i8 %871, 0, !dbg !2022
  br i1 %872, label %873, label %883, !dbg !2023

; <label>:873:                                    ; preds = %867
  %874 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %868, i64 0, i32 3, !dbg !2024
  %875 = load i8, i8* %874, align 1, !dbg !2024, !tbaa !1014
  %876 = zext i8 %875 to i32, !dbg !2025
  %877 = or i32 %869, %876, !dbg !2026
  %878 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %868, i64 0, i32 0, !dbg !2027
  %879 = load %struct.BlockCnt*, %struct.BlockCnt** %878, align 8, !dbg !2018, !tbaa !1572
  %880 = icmp eq %struct.BlockCnt* %879, null, !dbg !2019
  br i1 %880, label %881, label %867, !dbg !2020, !llvm.loop !1582

; <label>:881:                                    ; preds = %873, %861
  %882 = phi i32 [ 0, %861 ], [ %877, %873 ], !dbg !2018
  tail call void @luaX_syntaxerror(%struct.LexState* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i64 0, i64 0)) #5, !dbg !2028
  br label %883, !dbg !2028

; <label>:883:                                    ; preds = %867, %881
  %884 = phi i32 [ %882, %881 ], [ %869, %867 ]
  %885 = phi %struct.BlockCnt* [ null, %881 ], [ %868, %867 ]
  %886 = icmp eq i32 %884, 0, !dbg !2029
  br i1 %886, label %892, label %887, !dbg !2030

; <label>:887:                                    ; preds = %883
  %888 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %885, i64 0, i32 2, !dbg !2031
  %889 = load i8, i8* %888, align 4, !dbg !2031, !tbaa !1011
  %890 = zext i8 %889 to i32, !dbg !2032
  %891 = tail call i32 @luaK_codeABC(%struct.FuncState* %863, i32 35, i32 %890, i32 0, i32 0) #5, !dbg !2033
  br label %892, !dbg !2033

; <label>:892:                                    ; preds = %883, %887
  %893 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %885, i64 0, i32 1, !dbg !2034
  %894 = tail call i32 @luaK_jump(%struct.FuncState* %863) #5, !dbg !2035
  tail call void @luaK_concat(%struct.FuncState* %863, i32* nonnull %893, i32 %894) #5, !dbg !2036
  br label %919, !dbg !2037

; <label>:895:                                    ; preds = %1
  %896 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !2051
  %897 = load %struct.FuncState*, %struct.FuncState** %896, align 8, !dbg !2051, !tbaa !651
  %898 = bitcast %struct.LHS_assign* %5 to i8*, !dbg !2053
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %898) #4, !dbg !2053
  %899 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %5, i64 0, i32 1, !dbg !2054
  call fastcc void @primaryexp(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %899) #5, !dbg !2055
  %900 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %899, i64 0, i32 0, !dbg !2056
  %901 = load i32, i32* %900, align 8, !dbg !2056, !tbaa !2058
  %902 = icmp eq i32 %901, 13, !dbg !2060
  br i1 %902, label %903, label %916, !dbg !2061

; <label>:903:                                    ; preds = %895
  %904 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %897, i64 0, i32 0, !dbg !2062
  %905 = load %struct.Proto*, %struct.Proto** %904, align 8, !dbg !2062, !tbaa !585
  %906 = getelementptr inbounds %struct.Proto, %struct.Proto* %905, i64 0, i32 4, !dbg !2062
  %907 = load i32*, i32** %906, align 8, !dbg !2062, !tbaa !806
  %908 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %5, i64 0, i32 1, i32 1, !dbg !2062
  %909 = bitcast %union.anon.3* %908 to i32*, !dbg !2062
  %910 = load i32, i32* %909, align 8, !dbg !2062, !tbaa !755
  %911 = sext i32 %910 to i64, !dbg !2062
  %912 = getelementptr inbounds i32, i32* %907, i64 %911, !dbg !2062
  %913 = load i32, i32* %912, align 4, !dbg !2062, !tbaa !726
  %914 = and i32 %913, -8372225, !dbg !2062
  %915 = or i32 %914, 16384, !dbg !2062
  store i32 %915, i32* %912, align 4, !dbg !2062, !tbaa !726
  br label %918, !dbg !2062

; <label>:916:                                    ; preds = %895
  %917 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %5, i64 0, i32 0, !dbg !2063
  store %struct.LHS_assign* null, %struct.LHS_assign** %917, align 8, !dbg !2065, !tbaa !2066
  call fastcc void @assignment(%struct.LexState* nonnull %0, %struct.LHS_assign* nonnull %5, i32 1) #5, !dbg !2068
  br label %918

; <label>:918:                                    ; preds = %903, %916
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %898) #4, !dbg !2069
  br label %919, !dbg !2070

; <label>:919:                                    ; preds = %669, %805, %918, %892, %858, %650, %617, %319, %140, %134, %38
  %920 = phi i32 [ 0, %918 ], [ 1, %892 ], [ 1, %858 ], [ 0, %650 ], [ 0, %617 ], [ 0, %319 ], [ 0, %140 ], [ 0, %134 ], [ 0, %38 ], [ 0, %805 ], [ 0, %669 ], !dbg !2071
  ret i32 %920, !dbg !2072
}

; Function Attrs: noredzone
declare hidden void @luaX_lexerror(%struct.LexState*, i8*, i32) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal fastcc void @block(%struct.LexState*) unnamed_addr #0 !dbg !2073 {
  %2 = alloca %struct.BlockCnt, align 8
  %3 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !2079
  %4 = load %struct.FuncState*, %struct.FuncState** %3, align 8, !dbg !2079, !tbaa !651
  %5 = bitcast %struct.BlockCnt* %2 to i8*, !dbg !2081
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #4, !dbg !2081
  %6 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %2, i64 0, i32 1, !dbg !2087
  store i32 -1, i32* %6, align 8, !dbg !2088, !tbaa !1003
  %7 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %2, i64 0, i32 4, !dbg !2089
  store i8 0, i8* %7, align 2, !dbg !2090, !tbaa !1007
  %8 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %4, i64 0, i32 13, !dbg !2091
  %9 = load i8, i8* %8, align 2, !dbg !2091, !tbaa !653
  %10 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %2, i64 0, i32 2, !dbg !2092
  store i8 %9, i8* %10, align 4, !dbg !2093, !tbaa !1011
  %11 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %2, i64 0, i32 3, !dbg !2094
  store i8 0, i8* %11, align 1, !dbg !2095, !tbaa !1014
  %12 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %4, i64 0, i32 5, !dbg !2096
  %13 = bitcast %struct.BlockCnt** %12 to i64*, !dbg !2096
  %14 = load i64, i64* %13, align 8, !dbg !2096, !tbaa !740
  %15 = bitcast %struct.BlockCnt* %2 to i64*, !dbg !2097
  store i64 %14, i64* %15, align 8, !dbg !2097, !tbaa !1017
  store %struct.BlockCnt* %2, %struct.BlockCnt** %12, align 8, !dbg !2098, !tbaa !740
  %16 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !2104
  %17 = load %struct.lua_State*, %struct.lua_State** %16, align 8, !dbg !2104, !tbaa !611
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %17, i64 0, i32 15, !dbg !2105
  %19 = load i16, i16* %18, align 8, !dbg !2106, !tbaa !614
  %20 = add i16 %19, 1, !dbg !2106
  store i16 %20, i16* %18, align 8, !dbg !2106, !tbaa !614
  %21 = icmp ugt i16 %20, 200, !dbg !2107
  br i1 %21, label %22, label %23, !dbg !2108

; <label>:22:                                     ; preds = %1
  call void @luaX_lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 0) #5, !dbg !2109
  br label %23, !dbg !2109

; <label>:23:                                     ; preds = %22, %1
  %24 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  br label %25, !dbg !2110

; <label>:25:                                     ; preds = %23, %32
  %26 = load i32, i32* %24, align 8, !dbg !2111, !tbaa !623
  switch i32 %26, label %27 [
    i32 260, label %39
    i32 261, label %39
    i32 262, label %39
    i32 276, label %39
    i32 287, label %39
  ], !dbg !2114

; <label>:27:                                     ; preds = %25
  %28 = call fastcc i32 @statement(%struct.LexState* nonnull %0) #5, !dbg !2115
  %29 = load i32, i32* %24, align 8, !dbg !2119, !tbaa !623
  %30 = icmp eq i32 %29, 59, !dbg !2120
  br i1 %30, label %31, label %32, !dbg !2121

; <label>:31:                                     ; preds = %27
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !2122
  br label %32, !dbg !2123

; <label>:32:                                     ; preds = %31, %27
  %33 = load %struct.FuncState*, %struct.FuncState** %3, align 8, !dbg !2124, !tbaa !651
  %34 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %33, i64 0, i32 13, !dbg !2125
  %35 = load i8, i8* %34, align 2, !dbg !2125, !tbaa !653
  %36 = zext i8 %35 to i32, !dbg !2126
  %37 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %33, i64 0, i32 9, !dbg !2127
  store i32 %36, i32* %37, align 4, !dbg !2128, !tbaa !657
  %38 = icmp eq i32 %28, 0, !dbg !2129
  br i1 %38, label %25, label %39, !dbg !2110, !llvm.loop !659

; <label>:39:                                     ; preds = %25, %25, %25, %25, %25, %32
  %40 = load %struct.lua_State*, %struct.lua_State** %16, align 8, !dbg !2130, !tbaa !611
  %41 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %40, i64 0, i32 15, !dbg !2130
  %42 = load i16, i16* %41, align 8, !dbg !2130, !tbaa !614
  %43 = add i16 %42, -1, !dbg !2130
  store i16 %43, i16* %41, align 8, !dbg !2130, !tbaa !614
  %44 = load %struct.BlockCnt*, %struct.BlockCnt** %12, align 8, !dbg !2133, !tbaa !740
  %45 = bitcast %struct.BlockCnt* %44 to i64*, !dbg !2135
  %46 = load i64, i64* %45, align 8, !dbg !2135, !tbaa !1017
  store i64 %46, i64* %13, align 8, !dbg !2136, !tbaa !740
  %47 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %4, i64 0, i32 3, !dbg !2137
  %48 = load %struct.LexState*, %struct.LexState** %47, align 8, !dbg !2137, !tbaa !719
  %49 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %44, i64 0, i32 2, !dbg !2138
  %50 = load i8, i8* %49, align 4, !dbg !2138, !tbaa !1011
  %51 = zext i8 %50 to i32, !dbg !2139
  %52 = getelementptr inbounds %struct.LexState, %struct.LexState* %48, i64 0, i32 5, !dbg !2143
  %53 = load %struct.FuncState*, %struct.FuncState** %52, align 8, !dbg !2143, !tbaa !651
  %54 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %53, i64 0, i32 13, !dbg !2145
  %55 = load i8, i8* %54, align 2, !dbg !2145, !tbaa !653
  %56 = icmp ugt i8 %55, %50, !dbg !2146
  br i1 %56, label %57, label %98, !dbg !2147

; <label>:57:                                     ; preds = %39
  %58 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %53, i64 0, i32 6
  %59 = load i32, i32* %58, align 8, !tbaa !793
  %60 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %53, i64 0, i32 0
  %61 = load %struct.Proto*, %struct.Proto** %60, align 8, !tbaa !585
  %62 = getelementptr inbounds %struct.Proto, %struct.Proto* %61, i64 0, i32 7
  %63 = load %struct.LocVar*, %struct.LocVar** %62, align 8, !tbaa !794
  %64 = zext i8 %55 to i64, !dbg !2147
  %65 = sub i8 %55, %50, !dbg !2147
  %66 = and i8 %65, 1, !dbg !2147
  %67 = icmp eq i8 %66, 0, !dbg !2147
  br i1 %67, label %76, label %68, !dbg !2147

; <label>:68:                                     ; preds = %57
  %69 = add i8 %55, -1, !dbg !2148
  %70 = zext i8 %69 to i64, !dbg !2148
  %71 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %53, i64 0, i32 15, i64 %70, !dbg !2148
  %72 = load i16, i16* %71, align 2, !dbg !2148, !tbaa !796
  %73 = zext i16 %72 to i64, !dbg !2148
  %74 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %63, i64 %73, i32 2, !dbg !2149
  store i32 %59, i32* %74, align 4, !dbg !2150, !tbaa !799
  %75 = add nsw i64 %64, -1, !dbg !2148
  br label %76, !dbg !2147

; <label>:76:                                     ; preds = %57, %68
  %77 = phi i64 [ %64, %57 ], [ %75, %68 ]
  %78 = add i8 %50, 1, !dbg !2147
  %79 = icmp eq i8 %55, %78, !dbg !2147
  br i1 %79, label %97, label %80, !dbg !2147

; <label>:80:                                     ; preds = %76, %80
  %81 = phi i64 [ %96, %80 ], [ %77, %76 ]
  %82 = add i64 %81, 255, !dbg !2148
  %83 = and i64 %82, 255, !dbg !2148
  %84 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %53, i64 0, i32 15, i64 %83, !dbg !2148
  %85 = load i16, i16* %84, align 2, !dbg !2148, !tbaa !796
  %86 = zext i16 %85 to i64, !dbg !2148
  %87 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %63, i64 %86, i32 2, !dbg !2149
  store i32 %59, i32* %87, align 4, !dbg !2150, !tbaa !799
  %88 = trunc i64 %81 to i8, !dbg !2148
  %89 = add i8 %88, -2, !dbg !2148
  %90 = zext i8 %89 to i64, !dbg !2148
  %91 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %53, i64 0, i32 15, i64 %90, !dbg !2148
  %92 = load i16, i16* %91, align 2, !dbg !2148, !tbaa !796
  %93 = zext i16 %92 to i64, !dbg !2148
  %94 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %63, i64 %93, i32 2, !dbg !2149
  store i32 %59, i32* %94, align 4, !dbg !2150, !tbaa !799
  %95 = icmp ugt i8 %89, %50, !dbg !2146
  %96 = add nsw i64 %81, -2, !dbg !2148
  br i1 %95, label %80, label %97, !dbg !2147, !llvm.loop !801

; <label>:97:                                     ; preds = %80, %76
  store i8 %50, i8* %54, align 2, !dbg !2148, !tbaa !653
  br label %98, !dbg !2147

; <label>:98:                                     ; preds = %97, %39
  %99 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %44, i64 0, i32 3, !dbg !2151
  %100 = load i8, i8* %99, align 1, !dbg !2151, !tbaa !1014
  %101 = icmp eq i8 %100, 0, !dbg !2152
  br i1 %101, label %104, label %102, !dbg !2153

; <label>:102:                                    ; preds = %98
  %103 = call i32 @luaK_codeABC(%struct.FuncState* %4, i32 35, i32 %51, i32 0, i32 0) #5, !dbg !2154
  br label %104, !dbg !2154

; <label>:104:                                    ; preds = %98, %102
  %105 = load i8, i8* %8, align 2, !dbg !2155, !tbaa !653
  %106 = zext i8 %105 to i32, !dbg !2156
  %107 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %4, i64 0, i32 9, !dbg !2157
  store i32 %106, i32* %107, align 4, !dbg !2158, !tbaa !657
  %108 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %44, i64 0, i32 1, !dbg !2159
  %109 = load i32, i32* %108, align 8, !dbg !2159, !tbaa !1003
  call void @luaK_patchtohere(%struct.FuncState* %4, i32 %109) #5, !dbg !2160
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #4, !dbg !2161
  ret void, !dbg !2161
}

; Function Attrs: noredzone nounwind
define internal fastcc void @check_match(%struct.LexState*, i32, i32, i32) unnamed_addr #0 !dbg !2162 {
  %5 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0, !dbg !2178
  %6 = load i32, i32* %5, align 8, !dbg !2178, !tbaa !623
  %7 = icmp eq i32 %6, %1, !dbg !2179
  br i1 %7, label %8, label %9, !dbg !2180

; <label>:8:                                      ; preds = %4
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !2181
  br label %21, !dbg !2182

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1, !dbg !2183
  %11 = load i32, i32* %10, align 4, !dbg !2183, !tbaa !873
  %12 = icmp eq i32 %11, %3, !dbg !2186
  %13 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !2187
  %14 = load %struct.lua_State*, %struct.lua_State** %13, align 8, !dbg !2187, !tbaa !611
  %15 = tail call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 %1) #5, !dbg !2187
  br i1 %12, label %16, label %18, !dbg !2189

; <label>:16:                                     ; preds = %9
  %17 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %15) #5, !dbg !2193
  tail call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %17) #5, !dbg !2194
  br label %21, !dbg !2195

; <label>:18:                                     ; preds = %9
  %19 = tail call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 %2) #5, !dbg !2196
  %20 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %14, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i64 0, i64 0), i8* %15, i8* %19, i32 %3) #5, !dbg !2197
  tail call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %20) #5, !dbg !2198
  br label %21

; <label>:21:                                     ; preds = %8, %16, %18
  ret void, !dbg !2199
}

; Function Attrs: noredzone nounwind
define internal fastcc i32 @test_then_block(%struct.LexState*) unnamed_addr #0 !dbg !2200 {
  %2 = alloca %struct.expdesc, align 8
  tail call void @luaX_next(%struct.LexState* %0) #5, !dbg !2205
  %3 = bitcast %struct.expdesc* %2 to i8*, !dbg !2208
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #4, !dbg !2208
  %4 = call fastcc i32 @subexpr(%struct.LexState* %0, %struct.expdesc* nonnull %2, i32 0) #5, !dbg !2213
  %5 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0, !dbg !2214
  %6 = load i32, i32* %5, align 8, !dbg !2214, !tbaa !976
  %7 = icmp eq i32 %6, 1, !dbg !2215
  br i1 %7, label %8, label %9, !dbg !2216

; <label>:8:                                      ; preds = %1
  store i32 3, i32* %5, align 8, !dbg !2217, !tbaa !976
  br label %9, !dbg !2218

; <label>:9:                                      ; preds = %1, %8
  %10 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !2219
  %11 = load %struct.FuncState*, %struct.FuncState** %10, align 8, !dbg !2219, !tbaa !651
  call void @luaK_goiftrue(%struct.FuncState* %11, %struct.expdesc* nonnull %2) #5, !dbg !2220
  %12 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3, !dbg !2221
  %13 = load i32, i32* %12, align 4, !dbg !2221, !tbaa !985
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #4, !dbg !2222
  %14 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0, !dbg !2230
  %15 = load i32, i32* %14, align 8, !dbg !2230, !tbaa !623
  %16 = icmp eq i32 %15, 274, !dbg !2231
  br i1 %16, label %22, label %17, !dbg !2232

; <label>:17:                                     ; preds = %9
  %18 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !2236
  %19 = load %struct.lua_State*, %struct.lua_State** %18, align 8, !dbg !2236, !tbaa !611
  %20 = call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 274) #5, !dbg !2237
  %21 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %20) #5, !dbg !2238
  call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %21) #5, !dbg !2239
  br label %22, !dbg !2240

; <label>:22:                                     ; preds = %9, %17
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !2241
  call fastcc void @block(%struct.LexState* nonnull %0) #6, !dbg !2242
  ret i32 %13, !dbg !2243
}

; Function Attrs: noredzone
declare hidden void @luaK_concat(%struct.FuncState*, i32*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden i32 @luaK_jump(%struct.FuncState*) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden void @luaK_patchtohere(%struct.FuncState*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden void @luaK_goiftrue(%struct.FuncState*, %struct.expdesc*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal fastcc i32 @subexpr(%struct.LexState*, %struct.expdesc*, i32) unnamed_addr #0 !dbg !2244 {
  %4 = alloca %struct.expdesc, align 8
  %5 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !2263
  %6 = load %struct.lua_State*, %struct.lua_State** %5, align 8, !dbg !2263, !tbaa !611
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6, i64 0, i32 15, !dbg !2264
  %8 = load i16, i16* %7, align 8, !dbg !2265, !tbaa !614
  %9 = add i16 %8, 1, !dbg !2265
  store i16 %9, i16* %7, align 8, !dbg !2265, !tbaa !614
  %10 = icmp ugt i16 %9, 200, !dbg !2266
  br i1 %10, label %11, label %12, !dbg !2267

; <label>:11:                                     ; preds = %3
  tail call void @luaX_lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 0) #5, !dbg !2268
  br label %12, !dbg !2268

; <label>:12:                                     ; preds = %3, %11
  %13 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0, !dbg !2269
  %14 = load i32, i32* %13, align 8, !dbg !2269, !tbaa !623
  switch i32 %14, label %88 [
    i32 270, label %17
    i32 45, label %15
    i32 35, label %16
    i32 284, label %22
    i32 286, label %32
    i32 269, label %44
    i32 275, label %50
    i32 263, label %56
    i32 279, label %62
    i32 123, label %84
    i32 265, label %85
  ], !dbg !2277

; <label>:15:                                     ; preds = %12
  br label %17, !dbg !2278

; <label>:16:                                     ; preds = %12
  br label %17, !dbg !2280

; <label>:17:                                     ; preds = %12, %16, %15
  %18 = phi i32 [ 1, %12 ], [ 0, %15 ], [ 2, %16 ]
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !2282
  %19 = tail call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* %1, i32 8) #6, !dbg !2285
  %20 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !2286
  %21 = load %struct.FuncState*, %struct.FuncState** %20, align 8, !dbg !2286, !tbaa !651
  tail call void @luaK_prefix(%struct.FuncState* %21, i32 %18, %struct.expdesc* %1) #5, !dbg !2287
  br label %90, !dbg !2288

; <label>:22:                                     ; preds = %12
  %23 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2, !dbg !2302
  store i32 -1, i32* %23, align 8, !dbg !2303, !tbaa !1804
  %24 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3, !dbg !2304
  store i32 -1, i32* %24, align 4, !dbg !2305, !tbaa !985
  %25 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0, !dbg !2306
  store i32 5, i32* %25, align 8, !dbg !2307, !tbaa !976
  %26 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !2308
  %27 = bitcast %union.anon.3* %26 to i32*, !dbg !2309
  store i32 0, i32* %27, align 8, !dbg !2310, !tbaa !755
  %28 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1, i32 0, !dbg !2311
  %29 = bitcast double* %28 to i64*, !dbg !2311
  %30 = load i64, i64* %29, align 8, !dbg !2311, !tbaa !755
  %31 = bitcast %union.anon.3* %26 to i64*, !dbg !2312
  store i64 %30, i64* %31, align 8, !dbg !2312, !tbaa !755
  br label %89, !dbg !2313

; <label>:32:                                     ; preds = %12
  %33 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1, !dbg !2314
  %34 = bitcast %union.SemInfo* %33 to %union.TString**, !dbg !2316
  %35 = load %union.TString*, %union.TString** %34, align 8, !dbg !2316, !tbaa !755
  %36 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !2328
  %37 = load %struct.FuncState*, %struct.FuncState** %36, align 8, !dbg !2328, !tbaa !651
  %38 = tail call i32 @luaK_stringK(%struct.FuncState* %37, %union.TString* %35) #5, !dbg !2329
  %39 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2, !dbg !2334
  store i32 -1, i32* %39, align 8, !dbg !2335, !tbaa !1804
  %40 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3, !dbg !2336
  store i32 -1, i32* %40, align 4, !dbg !2337, !tbaa !985
  %41 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0, !dbg !2338
  store i32 4, i32* %41, align 8, !dbg !2339, !tbaa !976
  %42 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !2340
  %43 = bitcast %union.anon.3* %42 to i32*, !dbg !2341
  store i32 %38, i32* %43, align 8, !dbg !2342, !tbaa !755
  br label %89, !dbg !2343

; <label>:44:                                     ; preds = %12
  %45 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2, !dbg !2349
  store i32 -1, i32* %45, align 8, !dbg !2350, !tbaa !1804
  %46 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3, !dbg !2351
  store i32 -1, i32* %46, align 4, !dbg !2352, !tbaa !985
  %47 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0, !dbg !2353
  store i32 1, i32* %47, align 8, !dbg !2354, !tbaa !976
  %48 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !2355
  %49 = bitcast %union.anon.3* %48 to i32*, !dbg !2356
  store i32 0, i32* %49, align 8, !dbg !2357, !tbaa !755
  br label %89, !dbg !2358

; <label>:50:                                     ; preds = %12
  %51 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2, !dbg !2364
  store i32 -1, i32* %51, align 8, !dbg !2365, !tbaa !1804
  %52 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3, !dbg !2366
  store i32 -1, i32* %52, align 4, !dbg !2367, !tbaa !985
  %53 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0, !dbg !2368
  store i32 2, i32* %53, align 8, !dbg !2369, !tbaa !976
  %54 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !2370
  %55 = bitcast %union.anon.3* %54 to i32*, !dbg !2371
  store i32 0, i32* %55, align 8, !dbg !2372, !tbaa !755
  br label %89, !dbg !2373

; <label>:56:                                     ; preds = %12
  %57 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2, !dbg !2379
  store i32 -1, i32* %57, align 8, !dbg !2380, !tbaa !1804
  %58 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3, !dbg !2381
  store i32 -1, i32* %58, align 4, !dbg !2382, !tbaa !985
  %59 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0, !dbg !2383
  store i32 3, i32* %59, align 8, !dbg !2384, !tbaa !976
  %60 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !2385
  %61 = bitcast %union.anon.3* %60 to i32*, !dbg !2386
  store i32 0, i32* %61, align 8, !dbg !2387, !tbaa !755
  br label %89, !dbg !2388

; <label>:62:                                     ; preds = %12
  %63 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !2389
  %64 = load %struct.FuncState*, %struct.FuncState** %63, align 8, !dbg !2389, !tbaa !651
  %65 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %64, i64 0, i32 0, !dbg !2391
  %66 = load %struct.Proto*, %struct.Proto** %65, align 8, !dbg !2391, !tbaa !585
  %67 = getelementptr inbounds %struct.Proto, %struct.Proto* %66, i64 0, i32 21, !dbg !2391
  %68 = load i8, i8* %67, align 2, !dbg !2391, !tbaa !590
  %69 = icmp eq i8 %68, 0, !dbg !2391
  br i1 %69, label %70, label %74, !dbg !2394

; <label>:70:                                     ; preds = %62
  tail call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0)) #5, !dbg !2391
  %71 = load %struct.Proto*, %struct.Proto** %65, align 8, !dbg !2395, !tbaa !585
  %72 = getelementptr inbounds %struct.Proto, %struct.Proto* %71, i64 0, i32 21
  %73 = load i8, i8* %72, align 2, !dbg !2396, !tbaa !590
  br label %74, !dbg !2391

; <label>:74:                                     ; preds = %70, %62
  %75 = phi i8* [ %72, %70 ], [ %67, %62 ], !dbg !2397
  %76 = phi i8 [ %73, %70 ], [ %68, %62 ], !dbg !2396
  %77 = and i8 %76, -5, !dbg !2396
  store i8 %77, i8* %75, align 2, !dbg !2396, !tbaa !590
  %78 = tail call i32 @luaK_codeABC(%struct.FuncState* %64, i32 37, i32 0, i32 1, i32 0) #5, !dbg !2398
  %79 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2, !dbg !2403
  store i32 -1, i32* %79, align 8, !dbg !2404, !tbaa !1804
  %80 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3, !dbg !2405
  store i32 -1, i32* %80, align 4, !dbg !2406, !tbaa !985
  %81 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0, !dbg !2407
  store i32 14, i32* %81, align 8, !dbg !2408, !tbaa !976
  %82 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !2409
  %83 = bitcast %union.anon.3* %82 to i32*, !dbg !2410
  store i32 %78, i32* %83, align 8, !dbg !2411, !tbaa !755
  br label %89

; <label>:84:                                     ; preds = %12
  tail call fastcc void @constructor(%struct.LexState* nonnull %0, %struct.expdesc* %1) #5, !dbg !2412
  br label %90, !dbg !2414

; <label>:85:                                     ; preds = %12
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !2415
  %86 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1, !dbg !2417
  %87 = load i32, i32* %86, align 4, !dbg !2417, !tbaa !873
  tail call fastcc void @body(%struct.LexState* nonnull %0, %struct.expdesc* %1, i32 0, i32 %87) #5, !dbg !2418
  br label %90, !dbg !2419

; <label>:88:                                     ; preds = %12
  tail call fastcc void @primaryexp(%struct.LexState* nonnull %0, %struct.expdesc* %1) #5, !dbg !2420
  br label %90, !dbg !2422

; <label>:89:                                     ; preds = %74, %56, %50, %44, %32, %22
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !2423
  br label %90, !dbg !2424

; <label>:90:                                     ; preds = %89, %88, %85, %84, %17
  %91 = load i32, i32* %13, align 8, !dbg !2425, !tbaa !623
  switch i32 %91, label %125 [
    i32 43, label %106
    i32 45, label %92
    i32 42, label %93
    i32 47, label %94
    i32 37, label %95
    i32 94, label %96
    i32 278, label %97
    i32 283, label %98
    i32 280, label %99
    i32 60, label %100
    i32 282, label %101
    i32 62, label %102
    i32 281, label %103
    i32 257, label %104
    i32 271, label %105
  ], !dbg !2433

; <label>:92:                                     ; preds = %90
  br label %106, !dbg !2434

; <label>:93:                                     ; preds = %90
  br label %106, !dbg !2436

; <label>:94:                                     ; preds = %90
  br label %106, !dbg !2437

; <label>:95:                                     ; preds = %90
  br label %106, !dbg !2438

; <label>:96:                                     ; preds = %90
  br label %106, !dbg !2439

; <label>:97:                                     ; preds = %90
  br label %106, !dbg !2440

; <label>:98:                                     ; preds = %90
  br label %106, !dbg !2441

; <label>:99:                                     ; preds = %90
  br label %106, !dbg !2442

; <label>:100:                                    ; preds = %90
  br label %106, !dbg !2443

; <label>:101:                                    ; preds = %90
  br label %106, !dbg !2444

; <label>:102:                                    ; preds = %90
  br label %106, !dbg !2445

; <label>:103:                                    ; preds = %90
  br label %106, !dbg !2446

; <label>:104:                                    ; preds = %90
  br label %106, !dbg !2447

; <label>:105:                                    ; preds = %90
  br label %106, !dbg !2448

; <label>:106:                                    ; preds = %105, %104, %103, %102, %101, %100, %99, %98, %97, %96, %95, %94, %93, %92, %90
  %107 = phi i32 [ 0, %90 ], [ 1, %92 ], [ 2, %93 ], [ 3, %94 ], [ 4, %95 ], [ 5, %96 ], [ 6, %97 ], [ 7, %98 ], [ 8, %99 ], [ 9, %100 ], [ 10, %101 ], [ 11, %102 ], [ 12, %103 ], [ 13, %104 ], [ 14, %105 ]
  %108 = bitcast %struct.expdesc* %4 to i8*
  %109 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  br label %110, !dbg !2450

; <label>:110:                                    ; preds = %106, %117
  %111 = phi i32 [ %107, %106 ], [ %122, %117 ]
  %112 = zext i32 %111 to i64, !dbg !2451
  %113 = getelementptr inbounds [15 x %struct.anon.5], [15 x %struct.anon.5]* @priority, i64 0, i64 %112, i32 0, !dbg !2452
  %114 = load i8, i8* %113, align 2, !dbg !2452, !tbaa !2453
  %115 = zext i8 %114 to i32, !dbg !2451
  %116 = icmp ugt i32 %115, %2, !dbg !2455
  br i1 %116, label %117, label %125, !dbg !2456

; <label>:117:                                    ; preds = %110
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %108) #4, !dbg !2457
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !2458
  %118 = load %struct.FuncState*, %struct.FuncState** %109, align 8, !dbg !2459, !tbaa !651
  call void @luaK_infix(%struct.FuncState* %118, i32 %111, %struct.expdesc* %1) #5, !dbg !2460
  %119 = getelementptr inbounds [15 x %struct.anon.5], [15 x %struct.anon.5]* @priority, i64 0, i64 %112, i32 1, !dbg !2461
  %120 = load i8, i8* %119, align 1, !dbg !2461, !tbaa !2462
  %121 = zext i8 %120 to i32, !dbg !2463
  %122 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %4, i32 %121) #6, !dbg !2465
  %123 = load %struct.FuncState*, %struct.FuncState** %109, align 8, !dbg !2467, !tbaa !651
  call void @luaK_posfix(%struct.FuncState* %123, i32 %111, %struct.expdesc* %1, %struct.expdesc* nonnull %4) #5, !dbg !2468
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %108) #4, !dbg !2469
  %124 = icmp eq i32 %122, 15, !dbg !2470
  br i1 %124, label %125, label %110, !dbg !2450, !llvm.loop !2471

; <label>:125:                                    ; preds = %110, %117, %90
  %126 = phi i32 [ 15, %90 ], [ 15, %117 ], [ %111, %110 ], !dbg !2472
  %127 = load %struct.lua_State*, %struct.lua_State** %5, align 8, !dbg !2473, !tbaa !611
  %128 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %127, i64 0, i32 15, !dbg !2473
  %129 = load i16, i16* %128, align 8, !dbg !2473, !tbaa !614
  %130 = add i16 %129, -1, !dbg !2473
  store i16 %130, i16* %128, align 8, !dbg !2473, !tbaa !614
  ret i32 %126, !dbg !2474
}

; Function Attrs: noredzone
declare hidden void @luaK_prefix(%struct.FuncState*, i32, %struct.expdesc*) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden void @luaK_infix(%struct.FuncState*, i32, %struct.expdesc*) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden void @luaK_posfix(%struct.FuncState*, i32, %struct.expdesc*, %struct.expdesc*) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden i32 @luaK_codeABC(%struct.FuncState*, i32, i32, i32, i32) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal fastcc void @constructor(%struct.LexState*, %struct.expdesc*) unnamed_addr #0 !dbg !2475 {
  %3 = alloca %struct.ConsControl, align 8
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !2492
  %5 = load %struct.FuncState*, %struct.FuncState** %4, align 8, !dbg !2492, !tbaa !651
  %6 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1, !dbg !2494
  %7 = load i32, i32* %6, align 4, !dbg !2494, !tbaa !873
  %8 = tail call i32 @luaK_codeABC(%struct.FuncState* %5, i32 10, i32 0, i32 0, i32 0) #5, !dbg !2496
  %9 = bitcast %struct.ConsControl* %3 to i8*, !dbg !2498
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %9) #4, !dbg !2498
  %10 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %3, i64 0, i32 4, !dbg !2499
  store i32 0, i32* %10, align 8, !dbg !2500, !tbaa !2501
  %11 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %3, i64 0, i32 2, !dbg !2503
  store i32 0, i32* %11, align 8, !dbg !2504, !tbaa !2505
  %12 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %3, i64 0, i32 3, !dbg !2506
  store i32 0, i32* %12, align 4, !dbg !2507, !tbaa !2508
  %13 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %3, i64 0, i32 1, !dbg !2509
  store %struct.expdesc* %1, %struct.expdesc** %13, align 8, !dbg !2510, !tbaa !2511
  %14 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2, !dbg !2516
  store i32 -1, i32* %14, align 8, !dbg !2517, !tbaa !1804
  %15 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3, !dbg !2518
  store i32 -1, i32* %15, align 4, !dbg !2519, !tbaa !985
  %16 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0, !dbg !2520
  store i32 11, i32* %16, align 8, !dbg !2521, !tbaa !976
  %17 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !2522
  %18 = bitcast %union.anon.3* %17 to i32*, !dbg !2523
  store i32 %8, i32* %18, align 8, !dbg !2524, !tbaa !755
  %19 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %3, i64 0, i32 0, !dbg !2525
  %20 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %3, i64 0, i32 0, i32 2, !dbg !2530
  store i32 -1, i32* %20, align 8, !dbg !2531, !tbaa !1804
  %21 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %3, i64 0, i32 0, i32 3, !dbg !2532
  store i32 -1, i32* %21, align 4, !dbg !2533, !tbaa !985
  %22 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %3, i64 0, i32 0, i32 0, !dbg !2534
  store i32 0, i32* %22, align 8, !dbg !2535, !tbaa !976
  %23 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %3, i64 0, i32 0, i32 1, !dbg !2536
  %24 = bitcast %union.anon.3* %23 to i32*, !dbg !2537
  store i32 0, i32* %24, align 8, !dbg !2538, !tbaa !755
  %25 = load %struct.FuncState*, %struct.FuncState** %4, align 8, !dbg !2539, !tbaa !651
  tail call void @luaK_exp2nextreg(%struct.FuncState* %25, %struct.expdesc* %1) #5, !dbg !2540
  %26 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0, !dbg !2547
  %27 = load i32, i32* %26, align 8, !dbg !2547, !tbaa !623
  %28 = icmp eq i32 %27, 123, !dbg !2548
  br i1 %28, label %34, label %29, !dbg !2549

; <label>:29:                                     ; preds = %2
  %30 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !2553
  %31 = load %struct.lua_State*, %struct.lua_State** %30, align 8, !dbg !2553, !tbaa !611
  %32 = tail call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 123) #5, !dbg !2554
  %33 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %32) #5, !dbg !2555
  tail call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %33) #5, !dbg !2556
  br label %34, !dbg !2557

; <label>:34:                                     ; preds = %2, %29
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !2558
  %35 = load i32, i32* %26, align 8, !dbg !2559, !tbaa !623
  %36 = icmp eq i32 %35, 125, !dbg !2562
  br i1 %36, label %121, label %37, !dbg !2563

; <label>:37:                                     ; preds = %34
  %38 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 4, i32 0
  br label %39, !dbg !2563

; <label>:39:                                     ; preds = %118, %37
  %40 = phi i32 [ %119, %118 ], [ 0, %37 ], !dbg !2564
  %41 = icmp eq i32 %40, 0, !dbg !2577
  br i1 %41, label %51, label %42, !dbg !2578

; <label>:42:                                     ; preds = %39
  call void @luaK_exp2nextreg(%struct.FuncState* %5, %struct.expdesc* nonnull %19) #5, !dbg !2579
  store i32 0, i32* %22, align 8, !dbg !2580, !tbaa !2581
  %43 = load i32, i32* %10, align 8, !dbg !2582, !tbaa !2501
  %44 = icmp eq i32 %43, 50, !dbg !2584
  br i1 %44, label %45, label %51, !dbg !2585

; <label>:45:                                     ; preds = %42
  %46 = load %struct.expdesc*, %struct.expdesc** %13, align 8, !dbg !2586, !tbaa !2511
  %47 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %46, i64 0, i32 1, !dbg !2588
  %48 = bitcast %union.anon.3* %47 to i32*, !dbg !2589
  %49 = load i32, i32* %48, align 8, !dbg !2589, !tbaa !755
  %50 = load i32, i32* %12, align 4, !dbg !2590, !tbaa !2508
  call void @luaK_setlist(%struct.FuncState* %5, i32 %49, i32 %50, i32 50) #5, !dbg !2591
  store i32 0, i32* %10, align 8, !dbg !2592, !tbaa !2501
  br label %51, !dbg !2593

; <label>:51:                                     ; preds = %39, %42, %45
  %52 = load i32, i32* %26, align 8, !dbg !2594, !tbaa !623
  switch i32 %52, label %85 [
    i32 285, label %53
    i32 91, label %84
  ], !dbg !2595

; <label>:53:                                     ; preds = %51
  call void @luaX_lookahead(%struct.LexState* nonnull %0) #5, !dbg !2596
  %54 = load i32, i32* %38, align 8, !dbg !2599, !tbaa !2601
  %55 = icmp eq i32 %54, 61, !dbg !2602
  br i1 %55, label %83, label %56, !dbg !2603

; <label>:56:                                     ; preds = %53
  %57 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %19, i32 0) #5, !dbg !2616
  %58 = load i32, i32* %12, align 4, !dbg !2617, !tbaa !2508
  %59 = icmp sgt i32 %58, 2147483645, !dbg !2617
  br i1 %59, label %60, label %78, !dbg !2619

; <label>:60:                                     ; preds = %56
  %61 = load %struct.FuncState*, %struct.FuncState** %4, align 8, !dbg !2617, !tbaa !651
  %62 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %61, i64 0, i32 0, !dbg !2632
  %63 = load %struct.Proto*, %struct.Proto** %62, align 8, !dbg !2632, !tbaa !585
  %64 = getelementptr inbounds %struct.Proto, %struct.Proto* %63, i64 0, i32 16, !dbg !2633
  %65 = load i32, i32* %64, align 8, !dbg !2633, !tbaa !2634
  %66 = icmp eq i32 %65, 0, !dbg !2635
  %67 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %61, i64 0, i32 4, !dbg !2636
  %68 = load %struct.lua_State*, %struct.lua_State** %67, align 8, !dbg !2636, !tbaa !722
  br i1 %66, label %69, label %71, !dbg !2637

; <label>:69:                                     ; preds = %60
  %70 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %68, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 2147483645, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0)) #5, !dbg !2638
  br label %73, !dbg !2637

; <label>:71:                                     ; preds = %60
  %72 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %68, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %65, i32 2147483645, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0)) #5, !dbg !2639
  br label %73, !dbg !2637

; <label>:73:                                     ; preds = %69, %71
  %74 = phi i8* [ %70, %69 ], [ %72, %71 ], !dbg !2637
  %75 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %61, i64 0, i32 3, !dbg !2641
  %76 = load %struct.LexState*, %struct.LexState** %75, align 8, !dbg !2641, !tbaa !719
  call void @luaX_lexerror(%struct.LexState* %76, i8* %74, i32 0) #5, !dbg !2642
  %77 = load i32, i32* %12, align 4, !dbg !2643, !tbaa !2508
  br label %78, !dbg !2617

; <label>:78:                                     ; preds = %56, %73
  %79 = phi i32 [ %58, %56 ], [ %77, %73 ], !dbg !2643
  %80 = add nsw i32 %79, 1, !dbg !2643
  store i32 %80, i32* %12, align 4, !dbg !2643, !tbaa !2508
  %81 = load i32, i32* %10, align 8, !dbg !2644, !tbaa !2501
  %82 = add nsw i32 %81, 1, !dbg !2644
  store i32 %82, i32* %10, align 8, !dbg !2644, !tbaa !2501
  br label %112, !dbg !2645

; <label>:83:                                     ; preds = %53
  call fastcc void @recfield(%struct.LexState* nonnull %0, %struct.ConsControl* nonnull %3) #6, !dbg !2646
  br label %112

; <label>:84:                                     ; preds = %51
  call fastcc void @recfield(%struct.LexState* nonnull %0, %struct.ConsControl* nonnull %3) #6, !dbg !2647
  br label %112, !dbg !2649

; <label>:85:                                     ; preds = %51
  %86 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %19, i32 0) #5, !dbg !2657
  %87 = load i32, i32* %12, align 4, !dbg !2658, !tbaa !2508
  %88 = icmp sgt i32 %87, 2147483645, !dbg !2658
  br i1 %88, label %89, label %107, !dbg !2659

; <label>:89:                                     ; preds = %85
  %90 = load %struct.FuncState*, %struct.FuncState** %4, align 8, !dbg !2658, !tbaa !651
  %91 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %90, i64 0, i32 0, !dbg !2664
  %92 = load %struct.Proto*, %struct.Proto** %91, align 8, !dbg !2664, !tbaa !585
  %93 = getelementptr inbounds %struct.Proto, %struct.Proto* %92, i64 0, i32 16, !dbg !2665
  %94 = load i32, i32* %93, align 8, !dbg !2665, !tbaa !2634
  %95 = icmp eq i32 %94, 0, !dbg !2666
  %96 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %90, i64 0, i32 4, !dbg !2667
  %97 = load %struct.lua_State*, %struct.lua_State** %96, align 8, !dbg !2667, !tbaa !722
  br i1 %95, label %98, label %100, !dbg !2668

; <label>:98:                                     ; preds = %89
  %99 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %97, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 2147483645, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0)) #5, !dbg !2669
  br label %102, !dbg !2668

; <label>:100:                                    ; preds = %89
  %101 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %97, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %94, i32 2147483645, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0)) #5, !dbg !2670
  br label %102, !dbg !2668

; <label>:102:                                    ; preds = %98, %100
  %103 = phi i8* [ %99, %98 ], [ %101, %100 ], !dbg !2668
  %104 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %90, i64 0, i32 3, !dbg !2672
  %105 = load %struct.LexState*, %struct.LexState** %104, align 8, !dbg !2672, !tbaa !719
  call void @luaX_lexerror(%struct.LexState* %105, i8* %103, i32 0) #5, !dbg !2673
  %106 = load i32, i32* %12, align 4, !dbg !2674, !tbaa !2508
  br label %107, !dbg !2658

; <label>:107:                                    ; preds = %85, %102
  %108 = phi i32 [ %87, %85 ], [ %106, %102 ], !dbg !2674
  %109 = add nsw i32 %108, 1, !dbg !2674
  store i32 %109, i32* %12, align 4, !dbg !2674, !tbaa !2508
  %110 = load i32, i32* %10, align 8, !dbg !2675, !tbaa !2501
  %111 = add nsw i32 %110, 1, !dbg !2675
  store i32 %111, i32* %10, align 8, !dbg !2675, !tbaa !2501
  br label %112, !dbg !2676

; <label>:112:                                    ; preds = %84, %107, %83, %78
  %113 = load i32, i32* %26, align 8, !dbg !2680, !tbaa !623
  switch i32 %113, label %121 [
    i32 44, label %114
    i32 59, label %120
  ], !dbg !2681

; <label>:114:                                    ; preds = %112
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !2682
  br label %115, !dbg !2683

; <label>:115:                                    ; preds = %114, %120
  %116 = load i32, i32* %26, align 8, !dbg !2559, !tbaa !623
  %117 = icmp eq i32 %116, 125, !dbg !2562
  br i1 %117, label %121, label %118, !dbg !2563

; <label>:118:                                    ; preds = %115
  %119 = load i32, i32* %22, align 8, !dbg !2564, !tbaa !2581
  br label %39, !dbg !2563

; <label>:120:                                    ; preds = %112
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !2684
  br label %115, !dbg !2686

; <label>:121:                                    ; preds = %115, %112, %34
  call fastcc void @check_match(%struct.LexState* nonnull %0, i32 125, i32 123, i32 %7) #6, !dbg !2687
  %122 = load i32, i32* %10, align 8, !dbg !2695, !tbaa !2501
  %123 = icmp eq i32 %122, 0, !dbg !2697
  br i1 %123, label %143, label %124, !dbg !2698

; <label>:124:                                    ; preds = %121
  %125 = load i32, i32* %22, align 8, !dbg !2699, !tbaa !2581
  switch i32 %125, label %134 [
    i32 13, label %126
    i32 14, label %126
    i32 0, label %136
  ], !dbg !2699

; <label>:126:                                    ; preds = %124, %124
  call void @luaK_setreturns(%struct.FuncState* %5, %struct.expdesc* nonnull %19, i32 -1) #5, !dbg !2701
  %127 = load %struct.expdesc*, %struct.expdesc** %13, align 8, !dbg !2703, !tbaa !2511
  %128 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %127, i64 0, i32 1, !dbg !2704
  %129 = bitcast %union.anon.3* %128 to i32*, !dbg !2705
  %130 = load i32, i32* %129, align 8, !dbg !2705, !tbaa !755
  %131 = load i32, i32* %12, align 4, !dbg !2706, !tbaa !2508
  call void @luaK_setlist(%struct.FuncState* %5, i32 %130, i32 %131, i32 -1) #5, !dbg !2707
  %132 = load i32, i32* %12, align 4, !dbg !2708, !tbaa !2508
  %133 = add nsw i32 %132, -1, !dbg !2708
  store i32 %133, i32* %12, align 4, !dbg !2708, !tbaa !2508
  br label %143, !dbg !2709

; <label>:134:                                    ; preds = %124
  call void @luaK_exp2nextreg(%struct.FuncState* %5, %struct.expdesc* nonnull %19) #5, !dbg !2710
  %135 = load i32, i32* %10, align 8, !dbg !2713, !tbaa !2501
  br label %136, !dbg !2710

; <label>:136:                                    ; preds = %134, %124
  %137 = phi i32 [ %122, %124 ], [ %135, %134 ], !dbg !2713
  %138 = load %struct.expdesc*, %struct.expdesc** %13, align 8, !dbg !2714, !tbaa !2511
  %139 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %138, i64 0, i32 1, !dbg !2715
  %140 = bitcast %union.anon.3* %139 to i32*, !dbg !2716
  %141 = load i32, i32* %140, align 8, !dbg !2716, !tbaa !755
  %142 = load i32, i32* %12, align 4, !dbg !2717, !tbaa !2508
  call void @luaK_setlist(%struct.FuncState* %5, i32 %141, i32 %142, i32 %137) #5, !dbg !2718
  br label %143

; <label>:143:                                    ; preds = %121, %126, %136
  %144 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 0, !dbg !2719
  %145 = load %struct.Proto*, %struct.Proto** %144, align 8, !dbg !2719, !tbaa !585
  %146 = getelementptr inbounds %struct.Proto, %struct.Proto* %145, i64 0, i32 4, !dbg !2719
  %147 = load i32*, i32** %146, align 8, !dbg !2719, !tbaa !806
  %148 = sext i32 %8 to i64, !dbg !2719
  %149 = getelementptr inbounds i32, i32* %147, i64 %148, !dbg !2719
  %150 = load i32, i32* %149, align 4, !dbg !2719, !tbaa !726
  %151 = and i32 %150, 8388607, !dbg !2719
  %152 = load i32, i32* %12, align 4, !dbg !2719, !tbaa !2508
  %153 = call i32 @luaO_int2fb(i32 %152) #5, !dbg !2719
  %154 = shl i32 %153, 23, !dbg !2719
  %155 = or i32 %154, %151, !dbg !2719
  %156 = load %struct.Proto*, %struct.Proto** %144, align 8, !dbg !2719, !tbaa !585
  %157 = getelementptr inbounds %struct.Proto, %struct.Proto* %156, i64 0, i32 4, !dbg !2719
  %158 = load i32*, i32** %157, align 8, !dbg !2719, !tbaa !806
  %159 = getelementptr inbounds i32, i32* %158, i64 %148, !dbg !2719
  store i32 %155, i32* %159, align 4, !dbg !2719, !tbaa !726
  %160 = and i32 %155, -8372225, !dbg !2720
  %161 = load i32, i32* %11, align 8, !dbg !2720, !tbaa !2505
  %162 = call i32 @luaO_int2fb(i32 %161) #5, !dbg !2720
  %163 = shl i32 %162, 14, !dbg !2720
  %164 = and i32 %163, 8372224, !dbg !2720
  %165 = or i32 %164, %160, !dbg !2720
  %166 = load %struct.Proto*, %struct.Proto** %144, align 8, !dbg !2720, !tbaa !585
  %167 = getelementptr inbounds %struct.Proto, %struct.Proto* %166, i64 0, i32 4, !dbg !2720
  %168 = load i32*, i32** %167, align 8, !dbg !2720, !tbaa !806
  %169 = getelementptr inbounds i32, i32* %168, i64 %148, !dbg !2720
  store i32 %165, i32* %169, align 4, !dbg !2720, !tbaa !726
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %9) #4, !dbg !2721
  ret void, !dbg !2721
}

; Function Attrs: noredzone nounwind
define internal fastcc void @body(%struct.LexState*, %struct.expdesc* nocapture, i32, i32) unnamed_addr #0 !dbg !2722 {
  %5 = alloca %struct.FuncState, align 8
  %6 = bitcast %struct.FuncState* %5 to i8*, !dbg !2735
  call void @llvm.lifetime.start.p0i8(i64 600, i8* nonnull %6) #4, !dbg !2735
  call fastcc void @open_func(%struct.LexState* %0, %struct.FuncState* nonnull %5) #6, !dbg !2737
  %7 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 0, !dbg !2738
  %8 = load %struct.Proto*, %struct.Proto** %7, align 8, !dbg !2738, !tbaa !585
  %9 = getelementptr inbounds %struct.Proto, %struct.Proto* %8, i64 0, i32 16, !dbg !2739
  store i32 %3, i32* %9, align 8, !dbg !2740, !tbaa !2634
  %10 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0, !dbg !2747
  %11 = load i32, i32* %10, align 8, !dbg !2747, !tbaa !623
  %12 = icmp eq i32 %11, 40, !dbg !2748
  br i1 %12, label %18, label %13, !dbg !2749

; <label>:13:                                     ; preds = %4
  %14 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !2753
  %15 = load %struct.lua_State*, %struct.lua_State** %14, align 8, !dbg !2753, !tbaa !611
  %16 = call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 40) #5, !dbg !2754
  %17 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %16) #5, !dbg !2755
  call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %17) #5, !dbg !2756
  br label %18, !dbg !2757

; <label>:18:                                     ; preds = %4, %13
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !2758
  %19 = icmp eq i32 %2, 0, !dbg !2759
  br i1 %19, label %20, label %25, !dbg !2761

; <label>:20:                                     ; preds = %18
  %21 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %22 = load %struct.FuncState*, %struct.FuncState** %21, align 8, !dbg !2762, !tbaa !651
  %23 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %22, i64 0, i32 0
  %24 = load %struct.Proto*, %struct.Proto** %23, align 8, !dbg !2770, !tbaa !585
  br label %44, !dbg !2761

; <label>:25:                                     ; preds = %18
  %26 = call %union.TString* @luaX_newstring(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i64 4) #5, !dbg !2771
  call fastcc void @new_localvar(%struct.LexState* nonnull %0, %union.TString* %26, i32 0) #6, !dbg !2771
  %27 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !2776
  %28 = load %struct.FuncState*, %struct.FuncState** %27, align 8, !dbg !2776, !tbaa !651
  %29 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %28, i64 0, i32 13, !dbg !2778
  %30 = load i8, i8* %29, align 2, !dbg !2778, !tbaa !653
  %31 = add i8 %30, 1, !dbg !2778
  store i8 %31, i8* %29, align 2, !dbg !2779, !tbaa !653
  %32 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %28, i64 0, i32 6
  %33 = load i32, i32* %32, align 8, !tbaa !793
  %34 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %28, i64 0, i32 0
  %35 = load %struct.Proto*, %struct.Proto** %34, align 8, !tbaa !585
  %36 = getelementptr inbounds %struct.Proto, %struct.Proto* %35, i64 0, i32 7
  %37 = load %struct.LocVar*, %struct.LocVar** %36, align 8, !tbaa !794
  %38 = zext i8 %31 to i64, !dbg !2780
  %39 = add nsw i64 %38, -1, !dbg !2781
  %40 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %28, i64 0, i32 15, i64 %39, !dbg !2781
  %41 = load i16, i16* %40, align 2, !dbg !2781, !tbaa !796
  %42 = zext i16 %41 to i64, !dbg !2781
  %43 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %37, i64 %42, i32 1, !dbg !2782
  store i32 %33, i32* %43, align 8, !dbg !2783, !tbaa !1832
  br label %44, !dbg !2762

; <label>:44:                                     ; preds = %20, %25
  %45 = phi %struct.FuncState** [ %21, %20 ], [ %27, %25 ], !dbg !2762
  %46 = phi %struct.Proto* [ %24, %20 ], [ %35, %25 ], !dbg !2770
  %47 = phi %struct.FuncState* [ %22, %20 ], [ %28, %25 ], !dbg !2762
  %48 = getelementptr inbounds %struct.Proto, %struct.Proto* %46, i64 0, i32 21, !dbg !2788
  store i8 0, i8* %48, align 2, !dbg !2789, !tbaa !590
  %49 = load i32, i32* %10, align 8, !dbg !2790, !tbaa !623
  %50 = icmp eq i32 %49, 41, !dbg !2792
  br i1 %50, label %75, label %51, !dbg !2793

; <label>:51:                                     ; preds = %44
  %52 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1
  %53 = bitcast %union.SemInfo* %52 to %union.TString**
  br label %56, !dbg !2794

; <label>:54:                                     ; preds = %70
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !2797
  %55 = load i32, i32* %10, align 8, !dbg !2799, !tbaa !623
  br label %56, !dbg !2799

; <label>:56:                                     ; preds = %54, %51
  %57 = phi i32 [ %55, %54 ], [ %49, %51 ], !dbg !2799
  %58 = phi i32 [ %67, %54 ], [ 0, %51 ], !dbg !2787
  switch i32 %57, label %65 [
    i32 285, label %59
    i32 279, label %62
  ], !dbg !2794

; <label>:59:                                     ; preds = %56
  %60 = load %union.TString*, %union.TString** %53, align 8, !dbg !2800, !tbaa !755
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !2805
  %61 = add nsw i32 %58, 1, !dbg !2806
  call fastcc void @new_localvar(%struct.LexState* nonnull %0, %union.TString* %60, i32 %58) #5, !dbg !2807
  br label %66, !dbg !2808

; <label>:62:                                     ; preds = %56
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !2809
  %63 = call %union.TString* @luaX_newstring(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i64 3) #5, !dbg !2811
  %64 = add nsw i32 %58, 1, !dbg !2811
  call fastcc void @new_localvar(%struct.LexState* nonnull %0, %union.TString* %63, i32 %58) #5, !dbg !2811
  store i8 7, i8* %48, align 2, !dbg !2812, !tbaa !590
  br label %75, !dbg !2813

; <label>:65:                                     ; preds = %56
  call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0)) #5, !dbg !2814
  br label %66, !dbg !2815

; <label>:66:                                     ; preds = %65, %59
  %67 = phi i32 [ %61, %59 ], [ %58, %65 ]
  %68 = load i8, i8* %48, align 2, !dbg !2816, !tbaa !590
  %69 = icmp eq i8 %68, 0, !dbg !2817
  br i1 %69, label %70, label %73, !dbg !2813

; <label>:70:                                     ; preds = %66
  %71 = load i32, i32* %10, align 8, !dbg !2820, !tbaa !623
  %72 = icmp eq i32 %71, 44, !dbg !2821
  br i1 %72, label %54, label %73, !dbg !2822

; <label>:73:                                     ; preds = %70, %66
  %74 = and i8 %68, 1, !dbg !2823
  br label %75, !dbg !2823

; <label>:75:                                     ; preds = %73, %62, %44
  %76 = phi i8 [ 0, %44 ], [ 1, %62 ], [ %74, %73 ]
  %77 = phi i32 [ 0, %44 ], [ %64, %62 ], [ %67, %73 ], !dbg !2787
  %78 = load %struct.FuncState*, %struct.FuncState** %45, align 8, !dbg !2823, !tbaa !651
  %79 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %78, i64 0, i32 13, !dbg !2828
  %80 = load i8, i8* %79, align 2, !dbg !2828, !tbaa !653
  %81 = trunc i32 %77 to i8, !dbg !2828
  %82 = add i8 %80, %81, !dbg !2828
  store i8 %82, i8* %79, align 2, !dbg !2829, !tbaa !653
  %83 = icmp eq i32 %77, 0, !dbg !2830
  br i1 %83, label %138, label %84, !dbg !2830

; <label>:84:                                     ; preds = %75
  %85 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %78, i64 0, i32 6
  %86 = load i32, i32* %85, align 8, !tbaa !793
  %87 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %78, i64 0, i32 0
  %88 = load %struct.Proto*, %struct.Proto** %87, align 8, !tbaa !585
  %89 = getelementptr inbounds %struct.Proto, %struct.Proto* %88, i64 0, i32 7
  %90 = load %struct.LocVar*, %struct.LocVar** %89, align 8, !tbaa !794
  %91 = sext i32 %77 to i64, !dbg !2830
  %92 = zext i8 %82 to i64, !dbg !2830
  %93 = add i32 %77, -1, !dbg !2830
  %94 = and i32 %77, 3, !dbg !2830
  %95 = icmp eq i32 %94, 0, !dbg !2830
  br i1 %95, label %107, label %96, !dbg !2830

; <label>:96:                                     ; preds = %84, %96
  %97 = phi i64 [ %104, %96 ], [ %91, %84 ]
  %98 = phi i32 [ %105, %96 ], [ %94, %84 ]
  %99 = sub nsw i64 %92, %97, !dbg !2831
  %100 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %78, i64 0, i32 15, i64 %99, !dbg !2831
  %101 = load i16, i16* %100, align 2, !dbg !2831, !tbaa !796
  %102 = zext i16 %101 to i64, !dbg !2831
  %103 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %90, i64 %102, i32 1, !dbg !2832
  store i32 %86, i32* %103, align 8, !dbg !2833, !tbaa !1832
  %104 = add nsw i64 %97, -1, !dbg !2834
  %105 = add i32 %98, -1, !dbg !2830
  %106 = icmp eq i32 %105, 0, !dbg !2830
  br i1 %106, label %107, label %96, !dbg !2830, !llvm.loop !2835

; <label>:107:                                    ; preds = %96, %84
  %108 = phi i64 [ %91, %84 ], [ %104, %96 ]
  %109 = icmp ult i32 %93, 3, !dbg !2830
  br i1 %109, label %138, label %110, !dbg !2830

; <label>:110:                                    ; preds = %107, %110
  %111 = phi i64 [ %135, %110 ], [ %108, %107 ]
  %112 = sub nsw i64 %92, %111, !dbg !2831
  %113 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %78, i64 0, i32 15, i64 %112, !dbg !2831
  %114 = load i16, i16* %113, align 2, !dbg !2831, !tbaa !796
  %115 = zext i16 %114 to i64, !dbg !2831
  %116 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %90, i64 %115, i32 1, !dbg !2832
  store i32 %86, i32* %116, align 8, !dbg !2833, !tbaa !1832
  %117 = add nsw i64 %111, -1, !dbg !2834
  %118 = sub nsw i64 %92, %117, !dbg !2831
  %119 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %78, i64 0, i32 15, i64 %118, !dbg !2831
  %120 = load i16, i16* %119, align 2, !dbg !2831, !tbaa !796
  %121 = zext i16 %120 to i64, !dbg !2831
  %122 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %90, i64 %121, i32 1, !dbg !2832
  store i32 %86, i32* %122, align 8, !dbg !2833, !tbaa !1832
  %123 = add nsw i64 %111, -2, !dbg !2834
  %124 = sub nsw i64 %92, %123, !dbg !2831
  %125 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %78, i64 0, i32 15, i64 %124, !dbg !2831
  %126 = load i16, i16* %125, align 2, !dbg !2831, !tbaa !796
  %127 = zext i16 %126 to i64, !dbg !2831
  %128 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %90, i64 %127, i32 1, !dbg !2832
  store i32 %86, i32* %128, align 8, !dbg !2833, !tbaa !1832
  %129 = add nsw i64 %111, -3, !dbg !2834
  %130 = sub nsw i64 %92, %129, !dbg !2831
  %131 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %78, i64 0, i32 15, i64 %130, !dbg !2831
  %132 = load i16, i16* %131, align 2, !dbg !2831, !tbaa !796
  %133 = zext i16 %132 to i64, !dbg !2831
  %134 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %90, i64 %133, i32 1, !dbg !2832
  store i32 %86, i32* %134, align 8, !dbg !2833, !tbaa !1832
  %135 = add nsw i64 %111, -4, !dbg !2834
  %136 = trunc i64 %135 to i32, !dbg !2830
  %137 = icmp eq i32 %136, 0, !dbg !2830
  br i1 %137, label %138, label %110, !dbg !2830, !llvm.loop !1929

; <label>:138:                                    ; preds = %107, %110, %75
  %139 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %47, i64 0, i32 13, !dbg !2836
  %140 = load i8, i8* %139, align 2, !dbg !2836, !tbaa !653
  %141 = sub i8 %140, %76, !dbg !2836
  %142 = getelementptr inbounds %struct.Proto, %struct.Proto* %46, i64 0, i32 20, !dbg !2837
  store i8 %141, i8* %142, align 1, !dbg !2838, !tbaa !2839
  %143 = zext i8 %140 to i32, !dbg !2840
  call void @luaK_reserveregs(%struct.FuncState* %47, i32 %143) #5, !dbg !2841
  %144 = load i32, i32* %10, align 8, !dbg !2848, !tbaa !623
  %145 = icmp eq i32 %144, 41, !dbg !2849
  %146 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !2850
  br i1 %145, label %151, label %147, !dbg !2851

; <label>:147:                                    ; preds = %138
  %148 = load %struct.lua_State*, %struct.lua_State** %146, align 8, !dbg !2855, !tbaa !611
  %149 = call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 41) #5, !dbg !2856
  %150 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %148, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %149) #5, !dbg !2857
  call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %150) #5, !dbg !2858
  br label %151, !dbg !2859

; <label>:151:                                    ; preds = %138, %147
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !2860
  %152 = load %struct.lua_State*, %struct.lua_State** %146, align 8, !dbg !2866, !tbaa !611
  %153 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %152, i64 0, i32 15, !dbg !2867
  %154 = load i16, i16* %153, align 8, !dbg !2868, !tbaa !614
  %155 = add i16 %154, 1, !dbg !2868
  store i16 %155, i16* %153, align 8, !dbg !2868, !tbaa !614
  %156 = icmp ugt i16 %155, 200, !dbg !2869
  br i1 %156, label %157, label %158, !dbg !2870

; <label>:157:                                    ; preds = %151
  call void @luaX_lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 0) #5, !dbg !2871
  br label %158, !dbg !2871

; <label>:158:                                    ; preds = %157, %151
  br label %159, !dbg !2872

; <label>:159:                                    ; preds = %158, %166
  %160 = load i32, i32* %10, align 8, !dbg !2872, !tbaa !623
  switch i32 %160, label %161 [
    i32 260, label %173
    i32 261, label %173
    i32 262, label %173
    i32 276, label %173
    i32 287, label %173
  ], !dbg !2875

; <label>:161:                                    ; preds = %159
  %162 = call fastcc i32 @statement(%struct.LexState* nonnull %0) #5, !dbg !2876
  %163 = load i32, i32* %10, align 8, !dbg !2880, !tbaa !623
  %164 = icmp eq i32 %163, 59, !dbg !2881
  br i1 %164, label %165, label %166, !dbg !2882

; <label>:165:                                    ; preds = %161
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !2883
  br label %166, !dbg !2884

; <label>:166:                                    ; preds = %165, %161
  %167 = load %struct.FuncState*, %struct.FuncState** %45, align 8, !dbg !2885, !tbaa !651
  %168 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %167, i64 0, i32 13, !dbg !2886
  %169 = load i8, i8* %168, align 2, !dbg !2886, !tbaa !653
  %170 = zext i8 %169 to i32, !dbg !2887
  %171 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %167, i64 0, i32 9, !dbg !2888
  store i32 %170, i32* %171, align 4, !dbg !2889, !tbaa !657
  %172 = icmp eq i32 %162, 0, !dbg !2890
  br i1 %172, label %159, label %173, !dbg !2891, !llvm.loop !659

; <label>:173:                                    ; preds = %159, %159, %159, %159, %159, %166
  %174 = load %struct.lua_State*, %struct.lua_State** %146, align 8, !dbg !2892, !tbaa !611
  %175 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %174, i64 0, i32 15, !dbg !2892
  %176 = load i16, i16* %175, align 8, !dbg !2892, !tbaa !614
  %177 = add i16 %176, -1, !dbg !2892
  store i16 %177, i16* %175, align 8, !dbg !2892, !tbaa !614
  %178 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1, !dbg !2893
  %179 = load i32, i32* %178, align 4, !dbg !2893, !tbaa !873
  %180 = load %struct.Proto*, %struct.Proto** %7, align 8, !dbg !2894, !tbaa !585
  %181 = getelementptr inbounds %struct.Proto, %struct.Proto* %180, i64 0, i32 17, !dbg !2895
  store i32 %179, i32* %181, align 4, !dbg !2896, !tbaa !2897
  call fastcc void @check_match(%struct.LexState* nonnull %0, i32 262, i32 265, i32 %3) #6, !dbg !2898
  call fastcc void @close_func(%struct.LexState* nonnull %0) #6, !dbg !2899
  %182 = load %struct.FuncState*, %struct.FuncState** %45, align 8, !dbg !2920, !tbaa !651
  %183 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %182, i64 0, i32 0, !dbg !2922
  %184 = load %struct.Proto*, %struct.Proto** %183, align 8, !dbg !2922, !tbaa !585
  %185 = getelementptr inbounds %struct.Proto, %struct.Proto* %184, i64 0, i32 14, !dbg !2924
  %186 = load i32, i32* %185, align 8, !dbg !2924, !tbaa !825
  %187 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %182, i64 0, i32 11, !dbg !2926
  %188 = load i32, i32* %187, align 4, !dbg !2926, !tbaa !732
  %189 = icmp slt i32 %188, %186, !dbg !2926
  br i1 %189, label %190, label %192, !dbg !2928

; <label>:190:                                    ; preds = %173
  %191 = getelementptr inbounds %struct.Proto, %struct.Proto* %184, i64 0, i32 5, !dbg !2929
  br label %240, !dbg !2928

; <label>:192:                                    ; preds = %173
  %193 = load %struct.lua_State*, %struct.lua_State** %146, align 8, !dbg !2926, !tbaa !611
  %194 = getelementptr inbounds %struct.Proto, %struct.Proto* %184, i64 0, i32 5, !dbg !2926
  %195 = bitcast %struct.Proto*** %194 to i8**, !dbg !2926
  %196 = load i8*, i8** %195, align 8, !dbg !2926, !tbaa !824
  %197 = call i8* @luaM_growaux_(%struct.lua_State* %193, i8* %196, i32* nonnull %185, i64 8, i32 262143, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0)) #5, !dbg !2926
  store i8* %197, i8** %195, align 8, !dbg !2926, !tbaa !824
  %198 = load i32, i32* %185, align 8, !dbg !2930, !tbaa !825
  %199 = icmp slt i32 %186, %198, !dbg !2931
  br i1 %199, label %200, label %240, !dbg !2932

; <label>:200:                                    ; preds = %192
  %201 = bitcast i8* %197 to %struct.Proto**, !dbg !2932
  %202 = sext i32 %186 to i64, !dbg !2932
  %203 = sext i32 %198 to i64, !dbg !2932
  %204 = add nsw i64 %202, 1, !dbg !2933
  %205 = getelementptr inbounds %struct.Proto*, %struct.Proto** %201, i64 %202, !dbg !2934
  store %struct.Proto* null, %struct.Proto** %205, align 8, !dbg !2935, !tbaa !1572
  %206 = icmp eq i64 %204, %203, !dbg !2931
  br i1 %206, label %240, label %207, !dbg !2932, !llvm.loop !2936

; <label>:207:                                    ; preds = %200
  %208 = xor i64 %202, 3, !dbg !2939
  %209 = add nsw i64 %208, %203, !dbg !2939
  %210 = add nsw i64 %203, -2, !dbg !2939
  %211 = sub nsw i64 %210, %202, !dbg !2939
  %212 = and i64 %209, 3, !dbg !2939
  %213 = icmp eq i64 %212, 0, !dbg !2939
  br i1 %213, label %222, label %214, !dbg !2939

; <label>:214:                                    ; preds = %207, %214
  %215 = phi i64 [ %218, %214 ], [ %204, %207 ]
  %216 = phi i64 [ %220, %214 ], [ %212, %207 ]
  %217 = load %struct.Proto**, %struct.Proto*** %194, align 8, !dbg !2939, !tbaa !824
  %218 = add nsw i64 %215, 1, !dbg !2933
  %219 = getelementptr inbounds %struct.Proto*, %struct.Proto** %217, i64 %215, !dbg !2934
  store %struct.Proto* null, %struct.Proto** %219, align 8, !dbg !2935, !tbaa !1572
  %220 = add i64 %216, -1, !dbg !2932
  %221 = icmp eq i64 %220, 0, !dbg !2932
  br i1 %221, label %222, label %214, !dbg !2932, !llvm.loop !2940

; <label>:222:                                    ; preds = %214, %207
  %223 = phi i64 [ %204, %207 ], [ %218, %214 ]
  %224 = icmp ult i64 %211, 3, !dbg !2939
  br i1 %224, label %240, label %225, !dbg !2939

; <label>:225:                                    ; preds = %222, %225
  %226 = phi i64 [ %237, %225 ], [ %223, %222 ]
  %227 = load %struct.Proto**, %struct.Proto*** %194, align 8, !dbg !2939, !tbaa !824
  %228 = add nsw i64 %226, 1, !dbg !2933
  %229 = getelementptr inbounds %struct.Proto*, %struct.Proto** %227, i64 %226, !dbg !2934
  store %struct.Proto* null, %struct.Proto** %229, align 8, !dbg !2935, !tbaa !1572
  %230 = load %struct.Proto**, %struct.Proto*** %194, align 8, !dbg !2939, !tbaa !824
  %231 = add nsw i64 %226, 2, !dbg !2933
  %232 = getelementptr inbounds %struct.Proto*, %struct.Proto** %230, i64 %228, !dbg !2934
  store %struct.Proto* null, %struct.Proto** %232, align 8, !dbg !2935, !tbaa !1572
  %233 = load %struct.Proto**, %struct.Proto*** %194, align 8, !dbg !2939, !tbaa !824
  %234 = add nsw i64 %226, 3, !dbg !2933
  %235 = getelementptr inbounds %struct.Proto*, %struct.Proto** %233, i64 %231, !dbg !2934
  store %struct.Proto* null, %struct.Proto** %235, align 8, !dbg !2935, !tbaa !1572
  %236 = load %struct.Proto**, %struct.Proto*** %194, align 8, !dbg !2939, !tbaa !824
  %237 = add nsw i64 %226, 4, !dbg !2933
  %238 = getelementptr inbounds %struct.Proto*, %struct.Proto** %236, i64 %234, !dbg !2934
  store %struct.Proto* null, %struct.Proto** %238, align 8, !dbg !2935, !tbaa !1572
  %239 = icmp eq i64 %237, %203, !dbg !2931
  br i1 %239, label %240, label %225, !dbg !2932, !llvm.loop !2936

; <label>:240:                                    ; preds = %222, %225, %200, %192, %190
  %241 = phi %struct.Proto*** [ %191, %190 ], [ %194, %192 ], [ %194, %200 ], [ %194, %225 ], [ %194, %222 ], !dbg !2929
  %242 = bitcast %struct.FuncState* %5 to i64*, !dbg !2941
  %243 = load i64, i64* %242, align 8, !dbg !2941, !tbaa !585
  %244 = load %struct.Proto**, %struct.Proto*** %241, align 8, !dbg !2929, !tbaa !824
  %245 = load i32, i32* %187, align 4, !dbg !2942, !tbaa !732
  %246 = add nsw i32 %245, 1, !dbg !2942
  store i32 %246, i32* %187, align 4, !dbg !2942, !tbaa !732
  %247 = sext i32 %245 to i64, !dbg !2943
  %248 = getelementptr inbounds %struct.Proto*, %struct.Proto** %244, i64 %247, !dbg !2943
  %249 = bitcast %struct.Proto** %248 to i64*, !dbg !2944
  store i64 %243, i64* %249, align 8, !dbg !2944, !tbaa !1572
  %250 = bitcast %struct.FuncState* %5 to %union.GCObject**, !dbg !2945
  %251 = load %union.GCObject*, %union.GCObject** %250, align 8, !dbg !2945, !tbaa !585
  %252 = getelementptr inbounds %union.GCObject, %union.GCObject* %251, i64 0, i32 0, i32 2, !dbg !2945
  %253 = load i8, i8* %252, align 1, !dbg !2945, !tbaa !755
  %254 = and i8 %253, 3, !dbg !2945
  %255 = icmp eq i8 %254, 0, !dbg !2945
  br i1 %255, label %265, label %256, !dbg !2945

; <label>:256:                                    ; preds = %240
  %257 = getelementptr inbounds %struct.Proto, %struct.Proto* %184, i64 0, i32 2, !dbg !2945
  %258 = load i8, i8* %257, align 1, !dbg !2945, !tbaa !755
  %259 = and i8 %258, 4, !dbg !2945
  %260 = icmp eq i8 %259, 0, !dbg !2945
  br i1 %260, label %265, label %261, !dbg !2948

; <label>:261:                                    ; preds = %256
  %262 = bitcast %struct.Proto* %184 to %union.GCObject*, !dbg !2945
  %263 = load %struct.lua_State*, %struct.lua_State** %146, align 8, !dbg !2945, !tbaa !611
  call void @luaC_barrierf(%struct.lua_State* %263, %union.GCObject* %262, %union.GCObject* %251) #5, !dbg !2945
  %264 = load i32, i32* %187, align 4, !dbg !2949, !tbaa !732
  br label %265, !dbg !2945

; <label>:265:                                    ; preds = %261, %256, %240
  %266 = phi i32 [ %246, %256 ], [ %246, %240 ], [ %264, %261 ], !dbg !2949
  %267 = add nsw i32 %266, -1, !dbg !2950
  %268 = call i32 @luaK_codeABx(%struct.FuncState* nonnull %182, i32 36, i32 0, i32 %267) #5, !dbg !2951
  %269 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2, !dbg !2956
  store i32 -1, i32* %269, align 8, !dbg !2957, !tbaa !1804
  %270 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3, !dbg !2958
  store i32 -1, i32* %270, align 4, !dbg !2959, !tbaa !985
  %271 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0, !dbg !2960
  store i32 11, i32* %271, align 8, !dbg !2961, !tbaa !976
  %272 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !2962
  %273 = bitcast %union.anon.3* %272 to i32*, !dbg !2963
  store i32 %268, i32* %273, align 8, !dbg !2964, !tbaa !755
  %274 = load %struct.Proto*, %struct.Proto** %7, align 8, !dbg !2966, !tbaa !585
  %275 = getelementptr inbounds %struct.Proto, %struct.Proto* %274, i64 0, i32 19, !dbg !2967
  %276 = load i8, i8* %275, align 8, !dbg !2967, !tbaa !836
  %277 = icmp eq i8 %276, 0, !dbg !2968
  br i1 %277, label %294, label %278, !dbg !2969

; <label>:278:                                    ; preds = %265, %278
  %279 = phi i64 [ %288, %278 ], [ 0, %265 ]
  %280 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 14, i64 %279, i32 0, !dbg !2970
  %281 = load i8, i8* %280, align 1, !dbg !2970, !tbaa !2971
  %282 = icmp eq i8 %281, 6, !dbg !2973
  %283 = select i1 %282, i32 0, i32 4, !dbg !2974
  %284 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 14, i64 %279, i32 1, !dbg !2976
  %285 = load i8, i8* %284, align 1, !dbg !2976, !tbaa !2977
  %286 = zext i8 %285 to i32, !dbg !2978
  %287 = call i32 @luaK_codeABC(%struct.FuncState* %182, i32 %283, i32 0, i32 %286, i32 0) #5, !dbg !2979
  %288 = add nuw nsw i64 %279, 1, !dbg !2980
  %289 = load %struct.Proto*, %struct.Proto** %7, align 8, !dbg !2966, !tbaa !585
  %290 = getelementptr inbounds %struct.Proto, %struct.Proto* %289, i64 0, i32 19, !dbg !2967
  %291 = load i8, i8* %290, align 8, !dbg !2967, !tbaa !836
  %292 = zext i8 %291 to i64, !dbg !2968
  %293 = icmp ult i64 %288, %292, !dbg !2968
  br i1 %293, label %278, label %294, !dbg !2969, !llvm.loop !2981

; <label>:294:                                    ; preds = %278, %265
  call void @llvm.lifetime.end.p0i8(i64 600, i8* nonnull %6) #4, !dbg !2984
  ret void, !dbg !2984
}

; Function Attrs: noredzone nounwind
define internal fastcc void @primaryexp(%struct.LexState*, %struct.expdesc*) unnamed_addr #0 !dbg !2985 {
  %3 = alloca %struct.expdesc, align 8
  %4 = alloca %struct.expdesc, align 8
  %5 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !3000
  %6 = load %struct.FuncState*, %struct.FuncState** %5, align 8, !dbg !3000, !tbaa !651
  %7 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0, !dbg !3012
  %8 = load i32, i32* %7, align 8, !dbg !3012, !tbaa !623
  switch i32 %8, label %25 [
    i32 40, label %9
    i32 285, label %14
  ], !dbg !3013

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1, !dbg !3014
  %11 = load i32, i32* %10, align 4, !dbg !3014, !tbaa !873
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !3016
  %12 = tail call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* %1, i32 0) #5, !dbg !3020
  tail call fastcc void @check_match(%struct.LexState* nonnull %0, i32 41, i32 40, i32 %11) #5, !dbg !3021
  %13 = load %struct.FuncState*, %struct.FuncState** %5, align 8, !dbg !3022, !tbaa !651
  tail call void @luaK_dischargevars(%struct.FuncState* %13, %struct.expdesc* %1) #5, !dbg !3023
  br label %26

; <label>:14:                                     ; preds = %2
  %15 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1, !dbg !3024
  %16 = bitcast %union.SemInfo* %15 to %union.TString**, !dbg !3028
  %17 = load %union.TString*, %union.TString** %16, align 8, !dbg !3028, !tbaa !755
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !3030
  %18 = load %struct.FuncState*, %struct.FuncState** %5, align 8, !dbg !3032, !tbaa !651
  %19 = tail call fastcc i32 @singlevaraux(%struct.FuncState* %18, %union.TString* %17, %struct.expdesc* %1, i32 1) #5, !dbg !3034
  %20 = icmp eq i32 %19, 8, !dbg !3035
  br i1 %20, label %21, label %26, !dbg !3036

; <label>:21:                                     ; preds = %14
  %22 = tail call i32 @luaK_stringK(%struct.FuncState* %18, %union.TString* %17) #5, !dbg !3037
  %23 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !3038
  %24 = bitcast %union.anon.3* %23 to i32*, !dbg !3039
  store i32 %22, i32* %24, align 8, !dbg !3040, !tbaa !755
  br label %26, !dbg !3041

; <label>:25:                                     ; preds = %2
  tail call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0)) #5, !dbg !3042
  br label %26, !dbg !3044

; <label>:26:                                     ; preds = %14, %21, %9, %25
  %27 = bitcast %struct.expdesc* %3 to i8*
  %28 = bitcast %struct.expdesc* %4 to i8*
  %29 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1
  %30 = bitcast %union.SemInfo* %29 to %union.TString**
  %31 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 2
  %32 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 3
  %33 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 0
  %34 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 1
  %35 = bitcast %union.anon.3* %34 to i32*
  %36 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  br label %37, !dbg !3045

; <label>:37:                                     ; preds = %54, %26
  %38 = load i32, i32* %7, align 8, !dbg !3046, !tbaa !623
  switch i32 %38, label %55 [
    i32 46, label %39
    i32 91, label %40
    i32 58, label %42
    i32 40, label %53
    i32 286, label %53
    i32 123, label %53
  ], !dbg !3047

; <label>:39:                                     ; preds = %37
  call fastcc void @field(%struct.LexState* nonnull %0, %struct.expdesc* %1) #6, !dbg !3048
  br label %54, !dbg !3050

; <label>:40:                                     ; preds = %37
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %27) #4, !dbg !3051
  %41 = call i32 @luaK_exp2anyreg(%struct.FuncState* %6, %struct.expdesc* %1) #5, !dbg !3052
  call fastcc void @yindex(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %3) #6, !dbg !3054
  call void @luaK_indexed(%struct.FuncState* %6, %struct.expdesc* %1, %struct.expdesc* nonnull %3) #5, !dbg !3055
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %27) #4, !dbg !3056
  br label %54

; <label>:42:                                     ; preds = %37
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %28) #4, !dbg !3057
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !3058
  %43 = load i32, i32* %7, align 8, !dbg !3072, !tbaa !623
  %44 = icmp eq i32 %43, 285, !dbg !3073
  br i1 %44, label %49, label %45, !dbg !3074

; <label>:45:                                     ; preds = %42
  %46 = load %struct.lua_State*, %struct.lua_State** %36, align 8, !dbg !3078, !tbaa !611
  %47 = call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 285) #5, !dbg !3079
  %48 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %47) #5, !dbg !3080
  call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %48) #5, !dbg !3081
  br label %49, !dbg !3082

; <label>:49:                                     ; preds = %42, %45
  %50 = load %union.TString*, %union.TString** %30, align 8, !dbg !3083, !tbaa !755
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !3085
  %51 = load %struct.FuncState*, %struct.FuncState** %5, align 8, !dbg !3090, !tbaa !651
  %52 = call i32 @luaK_stringK(%struct.FuncState* %51, %union.TString* %50) #5, !dbg !3091
  store i32 -1, i32* %31, align 8, !dbg !3096, !tbaa !1804
  store i32 -1, i32* %32, align 4, !dbg !3097, !tbaa !985
  store i32 4, i32* %33, align 8, !dbg !3098, !tbaa !976
  store i32 %52, i32* %35, align 8, !dbg !3099, !tbaa !755
  call void @luaK_self(%struct.FuncState* %6, %struct.expdesc* %1, %struct.expdesc* nonnull %4) #5, !dbg !3100
  call fastcc void @funcargs(%struct.LexState* nonnull %0, %struct.expdesc* %1) #6, !dbg !3101
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %28) #4, !dbg !3102
  br label %54

; <label>:53:                                     ; preds = %37, %37, %37
  call void @luaK_exp2nextreg(%struct.FuncState* %6, %struct.expdesc* %1) #5, !dbg !3103
  call fastcc void @funcargs(%struct.LexState* nonnull %0, %struct.expdesc* %1) #6, !dbg !3105
  br label %54, !dbg !3106

; <label>:54:                                     ; preds = %53, %49, %40, %39
  br label %37, !dbg !3046, !llvm.loop !3107

; <label>:55:                                     ; preds = %37
  ret void, !dbg !3110
}

; Function Attrs: noredzone
declare hidden i32 @luaK_stringK(%struct.FuncState*, %union.TString*) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden void @luaK_exp2nextreg(%struct.FuncState*, %struct.expdesc*) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden void @luaX_lookahead(%struct.LexState*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal fastcc void @recfield(%struct.LexState*, %struct.ConsControl* nocapture) unnamed_addr #0 !dbg !3111 {
  %3 = alloca %struct.expdesc, align 8
  %4 = alloca %struct.expdesc, align 8
  %5 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !3122
  %6 = load %struct.FuncState*, %struct.FuncState** %5, align 8, !dbg !3122, !tbaa !651
  %7 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %6, i64 0, i32 9, !dbg !3124
  %8 = load i32, i32* %7, align 4, !dbg !3124, !tbaa !657
  %9 = bitcast %struct.expdesc* %3 to i8*, !dbg !3126
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %9) #4, !dbg !3126
  %10 = bitcast %struct.expdesc* %4 to i8*, !dbg !3126
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %10) #4, !dbg !3126
  %11 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0, !dbg !3127
  %12 = load i32, i32* %11, align 8, !dbg !3127, !tbaa !623
  %13 = icmp eq i32 %12, 285, !dbg !3129
  br i1 %13, label %14, label %52, !dbg !3130

; <label>:14:                                     ; preds = %2
  %15 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %1, i64 0, i32 2, !dbg !3131
  %16 = load i32, i32* %15, align 8, !dbg !3131, !tbaa !2505
  %17 = icmp sgt i32 %16, 2147483645, !dbg !3131
  br i1 %17, label %18, label %41, !dbg !3134

; <label>:18:                                     ; preds = %14
  %19 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %6, i64 0, i32 0, !dbg !3139
  %20 = load %struct.Proto*, %struct.Proto** %19, align 8, !dbg !3139, !tbaa !585
  %21 = getelementptr inbounds %struct.Proto, %struct.Proto* %20, i64 0, i32 16, !dbg !3140
  %22 = load i32, i32* %21, align 8, !dbg !3140, !tbaa !2634
  %23 = icmp eq i32 %22, 0, !dbg !3141
  %24 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %6, i64 0, i32 4, !dbg !3142
  %25 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !3142, !tbaa !722
  br i1 %23, label %26, label %28, !dbg !3143

; <label>:26:                                     ; preds = %18
  %27 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %25, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 2147483645, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0)) #5, !dbg !3144
  br label %30, !dbg !3143

; <label>:28:                                     ; preds = %18
  %29 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %25, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %22, i32 2147483645, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0)) #5, !dbg !3145
  br label %30, !dbg !3143

; <label>:30:                                     ; preds = %28, %26
  %31 = phi i8* [ %27, %26 ], [ %29, %28 ], !dbg !3143
  %32 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %6, i64 0, i32 3, !dbg !3147
  %33 = load %struct.LexState*, %struct.LexState** %32, align 8, !dbg !3147, !tbaa !719
  tail call void @luaX_lexerror(%struct.LexState* %33, i8* %31, i32 0) #5, !dbg !3148
  %34 = load i32, i32* %11, align 8, !dbg !3149, !tbaa !623
  %35 = icmp eq i32 %34, 285, !dbg !3131
  br i1 %35, label %41, label %36, !dbg !3159

; <label>:36:                                     ; preds = %30
  %37 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !3163
  %38 = load %struct.lua_State*, %struct.lua_State** %37, align 8, !dbg !3163, !tbaa !611
  %39 = tail call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 285) #5, !dbg !3164
  %40 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %38, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %39) #5, !dbg !3165
  tail call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %40) #5, !dbg !3166
  br label %41, !dbg !3167

; <label>:41:                                     ; preds = %14, %30, %36
  %42 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1, !dbg !3168
  %43 = bitcast %union.SemInfo* %42 to %union.TString**, !dbg !3169
  %44 = load %union.TString*, %union.TString** %43, align 8, !dbg !3169, !tbaa !755
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !3171
  %45 = load %struct.FuncState*, %struct.FuncState** %5, align 8, !dbg !3176, !tbaa !651
  %46 = tail call i32 @luaK_stringK(%struct.FuncState* %45, %union.TString* %44) #5, !dbg !3177
  %47 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 2, !dbg !3182
  store i32 -1, i32* %47, align 8, !dbg !3183, !tbaa !1804
  %48 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 3, !dbg !3184
  store i32 -1, i32* %48, align 4, !dbg !3185, !tbaa !985
  %49 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0, !dbg !3186
  store i32 4, i32* %49, align 8, !dbg !3187, !tbaa !976
  %50 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1, !dbg !3188
  %51 = bitcast %union.anon.3* %50 to i32*, !dbg !3189
  store i32 %46, i32* %51, align 8, !dbg !3190, !tbaa !755
  br label %54, !dbg !3191

; <label>:52:                                     ; preds = %2
  call fastcc void @yindex(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %3) #6, !dbg !3192
  %53 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %1, i64 0, i32 2, !dbg !3193
  br label %54

; <label>:54:                                     ; preds = %52, %41
  %55 = phi i32* [ %53, %52 ], [ %15, %41 ], !dbg !3193
  %56 = load i32, i32* %55, align 8, !dbg !3194, !tbaa !2505
  %57 = add nsw i32 %56, 1, !dbg !3194
  store i32 %57, i32* %55, align 8, !dbg !3194, !tbaa !2505
  %58 = load i32, i32* %11, align 8, !dbg !3201, !tbaa !623
  %59 = icmp eq i32 %58, 61, !dbg !3202
  br i1 %59, label %65, label %60, !dbg !3203

; <label>:60:                                     ; preds = %54
  %61 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !3207
  %62 = load %struct.lua_State*, %struct.lua_State** %61, align 8, !dbg !3207, !tbaa !611
  %63 = call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 61) #5, !dbg !3208
  %64 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %62, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %63) #5, !dbg !3209
  call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %64) #5, !dbg !3210
  br label %65, !dbg !3211

; <label>:65:                                     ; preds = %54, %60
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !3212
  %66 = call i32 @luaK_exp2RK(%struct.FuncState* %6, %struct.expdesc* nonnull %3) #5, !dbg !3213
  %67 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %4, i32 0) #5, !dbg !3219
  %68 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %1, i64 0, i32 1, !dbg !3220
  %69 = load %struct.expdesc*, %struct.expdesc** %68, align 8, !dbg !3220, !tbaa !2511
  %70 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %69, i64 0, i32 1, !dbg !3221
  %71 = bitcast %union.anon.3* %70 to i32*, !dbg !3222
  %72 = load i32, i32* %71, align 8, !dbg !3222, !tbaa !755
  %73 = call i32 @luaK_exp2RK(%struct.FuncState* %6, %struct.expdesc* nonnull %4) #5, !dbg !3223
  %74 = call i32 @luaK_codeABC(%struct.FuncState* %6, i32 9, i32 %72, i32 %66, i32 %73) #5, !dbg !3224
  store i32 %8, i32* %7, align 4, !dbg !3225, !tbaa !657
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %10) #4, !dbg !3226
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %9) #4, !dbg !3226
  ret void, !dbg !3226
}

; Function Attrs: noredzone
declare hidden i32 @luaO_int2fb(i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden void @luaK_setlist(%struct.FuncState*, i32, i32, i32) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal fastcc void @yindex(%struct.LexState*, %struct.expdesc*) unnamed_addr #0 !dbg !3227 {
  tail call void @luaX_next(%struct.LexState* %0) #5, !dbg !3233
  %3 = tail call fastcc i32 @subexpr(%struct.LexState* %0, %struct.expdesc* %1, i32 0) #5, !dbg !3237
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !3238
  %5 = load %struct.FuncState*, %struct.FuncState** %4, align 8, !dbg !3238, !tbaa !651
  tail call void @luaK_exp2val(%struct.FuncState* %5, %struct.expdesc* %1) #5, !dbg !3239
  %6 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0, !dbg !3246
  %7 = load i32, i32* %6, align 8, !dbg !3246, !tbaa !623
  %8 = icmp eq i32 %7, 93, !dbg !3247
  br i1 %8, label %14, label %9, !dbg !3248

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !3252
  %11 = load %struct.lua_State*, %struct.lua_State** %10, align 8, !dbg !3252, !tbaa !611
  %12 = tail call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 93) #5, !dbg !3253
  %13 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %12) #5, !dbg !3254
  tail call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %13) #5, !dbg !3255
  br label %14, !dbg !3256

; <label>:14:                                     ; preds = %2, %9
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !3257
  ret void, !dbg !3258
}

; Function Attrs: noredzone
declare hidden i32 @luaK_exp2RK(%struct.FuncState*, %struct.expdesc*) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden void @luaK_exp2val(%struct.FuncState*, %struct.expdesc*) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden void @luaK_setreturns(%struct.FuncState*, %struct.expdesc*, i32) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal fastcc void @new_localvar(%struct.LexState* nocapture readonly, %union.TString*, i32) unnamed_addr #0 !dbg !3259 {
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !3268
  %5 = load %struct.FuncState*, %struct.FuncState** %4, align 8, !dbg !3268, !tbaa !651
  %6 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 13, !dbg !3270
  %7 = load i8, i8* %6, align 2, !dbg !3270, !tbaa !653
  %8 = zext i8 %7 to i32, !dbg !3270
  %9 = add nsw i32 %8, %2, !dbg !3270
  %10 = icmp sgt i32 %9, 199, !dbg !3270
  br i1 %10, label %11, label %28, !dbg !3272

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 0, !dbg !3277
  %13 = load %struct.Proto*, %struct.Proto** %12, align 8, !dbg !3277, !tbaa !585
  %14 = getelementptr inbounds %struct.Proto, %struct.Proto* %13, i64 0, i32 16, !dbg !3278
  %15 = load i32, i32* %14, align 8, !dbg !3278, !tbaa !2634
  %16 = icmp eq i32 %15, 0, !dbg !3279
  %17 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 4, !dbg !3280
  %18 = load %struct.lua_State*, %struct.lua_State** %17, align 8, !dbg !3280, !tbaa !722
  br i1 %16, label %19, label %21, !dbg !3281

; <label>:19:                                     ; preds = %11
  %20 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %18, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 200, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0)) #5, !dbg !3282
  br label %23, !dbg !3281

; <label>:21:                                     ; preds = %11
  %22 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %18, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %15, i32 200, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0)) #5, !dbg !3283
  br label %23, !dbg !3281

; <label>:23:                                     ; preds = %19, %21
  %24 = phi i8* [ %20, %19 ], [ %22, %21 ], !dbg !3281
  %25 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 3, !dbg !3285
  %26 = load %struct.LexState*, %struct.LexState** %25, align 8, !dbg !3285, !tbaa !719
  tail call void @luaX_lexerror(%struct.LexState* %26, i8* %24, i32 0) #5, !dbg !3286
  %27 = load %struct.FuncState*, %struct.FuncState** %4, align 8, !dbg !3287, !tbaa !651
  br label %28, !dbg !3270

; <label>:28:                                     ; preds = %23, %3
  %29 = phi %struct.FuncState* [ %27, %23 ], [ %5, %3 ], !dbg !3287
  %30 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %29, i64 0, i32 0, !dbg !3301
  %31 = load %struct.Proto*, %struct.Proto** %30, align 8, !dbg !3301, !tbaa !585
  %32 = getelementptr inbounds %struct.Proto, %struct.Proto* %31, i64 0, i32 15, !dbg !3303
  %33 = load i32, i32* %32, align 4, !dbg !3303, !tbaa !830
  %34 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %29, i64 0, i32 12, !dbg !3305
  %35 = load i16, i16* %34, align 8, !dbg !3305, !tbaa !735
  %36 = sext i16 %35 to i32, !dbg !3305
  %37 = icmp sgt i32 %33, %36, !dbg !3305
  br i1 %37, label %38, label %41, !dbg !3307

; <label>:38:                                     ; preds = %28
  %39 = getelementptr inbounds %struct.Proto, %struct.Proto* %31, i64 0, i32 7
  %40 = load %struct.LocVar*, %struct.LocVar** %39, align 8, !dbg !3308, !tbaa !794
  br label %80, !dbg !3309

; <label>:41:                                     ; preds = %28
  %42 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !3305
  %43 = load %struct.lua_State*, %struct.lua_State** %42, align 8, !dbg !3305, !tbaa !611
  %44 = getelementptr inbounds %struct.Proto, %struct.Proto* %31, i64 0, i32 7, !dbg !3305
  %45 = bitcast %struct.LocVar** %44 to i8**, !dbg !3305
  %46 = load i8*, i8** %45, align 8, !dbg !3305, !tbaa !794
  %47 = tail call i8* @luaM_growaux_(%struct.lua_State* %43, i8* %46, i32* nonnull %32, i64 16, i32 32767, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0)) #5, !dbg !3305
  store i8* %47, i8** %45, align 8, !dbg !3305, !tbaa !794
  %48 = load i32, i32* %32, align 4, !dbg !3310, !tbaa !830
  %49 = bitcast i8* %47 to %struct.LocVar*, !dbg !3305
  %50 = icmp slt i32 %33, %48, !dbg !3311
  br i1 %50, label %51, label %80, !dbg !3309

; <label>:51:                                     ; preds = %41
  %52 = sext i32 %33 to i64, !dbg !3309
  %53 = sext i32 %48 to i64, !dbg !3309
  %54 = sub nsw i64 %53, %52, !dbg !3309
  %55 = xor i64 %52, -1, !dbg !3309
  %56 = add nsw i64 %55, %53, !dbg !3309
  %57 = and i64 %54, 3, !dbg !3309
  %58 = icmp eq i64 %57, 0, !dbg !3309
  br i1 %58, label %66, label %59, !dbg !3309

; <label>:59:                                     ; preds = %51, %59
  %60 = phi i64 [ %62, %59 ], [ %52, %51 ]
  %61 = phi i64 [ %64, %59 ], [ %57, %51 ]
  %62 = add nsw i64 %60, 1, !dbg !3312
  %63 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %49, i64 %60, i32 0, !dbg !3313
  store %union.TString* null, %union.TString** %63, align 8, !dbg !3314, !tbaa !3315
  %64 = add i64 %61, -1, !dbg !3309
  %65 = icmp eq i64 %64, 0, !dbg !3309
  br i1 %65, label %66, label %59, !dbg !3309, !llvm.loop !3316

; <label>:66:                                     ; preds = %59, %51
  %67 = phi i64 [ %52, %51 ], [ %62, %59 ]
  %68 = icmp ult i64 %56, 3, !dbg !3309
  br i1 %68, label %80, label %69, !dbg !3309

; <label>:69:                                     ; preds = %66, %69
  %70 = phi i64 [ %77, %69 ], [ %67, %66 ]
  %71 = add nsw i64 %70, 1, !dbg !3312
  %72 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %49, i64 %70, i32 0, !dbg !3313
  store %union.TString* null, %union.TString** %72, align 8, !dbg !3314, !tbaa !3315
  %73 = add nsw i64 %70, 2, !dbg !3312
  %74 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %49, i64 %71, i32 0, !dbg !3313
  store %union.TString* null, %union.TString** %74, align 8, !dbg !3314, !tbaa !3315
  %75 = add nsw i64 %70, 3, !dbg !3312
  %76 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %49, i64 %73, i32 0, !dbg !3313
  store %union.TString* null, %union.TString** %76, align 8, !dbg !3314, !tbaa !3315
  %77 = add nsw i64 %70, 4, !dbg !3312
  %78 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %49, i64 %75, i32 0, !dbg !3313
  store %union.TString* null, %union.TString** %78, align 8, !dbg !3314, !tbaa !3315
  %79 = icmp eq i64 %77, %53, !dbg !3311
  br i1 %79, label %80, label %69, !dbg !3309, !llvm.loop !3317

; <label>:80:                                     ; preds = %66, %69, %41, %38
  %81 = phi %struct.LocVar* [ %49, %41 ], [ %40, %38 ], [ %49, %69 ], [ %49, %66 ], !dbg !3308
  %82 = load i16, i16* %34, align 8, !dbg !3320, !tbaa !735
  %83 = sext i16 %82 to i64, !dbg !3321
  %84 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %81, i64 %83, i32 0, !dbg !3322
  store %union.TString* %1, %union.TString** %84, align 8, !dbg !3323, !tbaa !3315
  %85 = bitcast %union.TString* %1 to %union.GCObject*, !dbg !3324
  %86 = getelementptr inbounds %union.TString, %union.TString* %1, i64 0, i32 0, i32 2, !dbg !3324
  %87 = load i8, i8* %86, align 1, !dbg !3324, !tbaa !755
  %88 = and i8 %87, 3, !dbg !3324
  %89 = icmp eq i8 %88, 0, !dbg !3324
  br i1 %89, label %100, label %90, !dbg !3324

; <label>:90:                                     ; preds = %80
  %91 = getelementptr inbounds %struct.Proto, %struct.Proto* %31, i64 0, i32 2, !dbg !3324
  %92 = load i8, i8* %91, align 1, !dbg !3324, !tbaa !755
  %93 = and i8 %92, 4, !dbg !3324
  %94 = icmp eq i8 %93, 0, !dbg !3324
  br i1 %94, label %100, label %95, !dbg !3327

; <label>:95:                                     ; preds = %90
  %96 = bitcast %struct.Proto* %31 to %union.GCObject*, !dbg !3324
  %97 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !3324
  %98 = load %struct.lua_State*, %struct.lua_State** %97, align 8, !dbg !3324, !tbaa !611
  tail call void @luaC_barrierf(%struct.lua_State* %98, %union.GCObject* %96, %union.GCObject* %85) #5, !dbg !3324
  %99 = load i16, i16* %34, align 8, !dbg !3328, !tbaa !735
  br label %100, !dbg !3324

; <label>:100:                                    ; preds = %80, %90, %95
  %101 = phi i16 [ %82, %90 ], [ %82, %80 ], [ %99, %95 ], !dbg !3328
  %102 = add i16 %101, 1, !dbg !3328
  store i16 %102, i16* %34, align 8, !dbg !3328, !tbaa !735
  %103 = load i8, i8* %6, align 2, !dbg !3329, !tbaa !653
  %104 = zext i8 %103 to i32, !dbg !3330
  %105 = add nsw i32 %104, %2, !dbg !3331
  %106 = sext i32 %105 to i64, !dbg !3332
  %107 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 15, i64 %106, !dbg !3332
  store i16 %101, i16* %107, align 2, !dbg !3333, !tbaa !796
  ret void, !dbg !3334
}

; Function Attrs: noredzone
declare hidden i8* @luaM_growaux_(%struct.lua_State*, i8*, i32*, i64, i32, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden void @luaC_barrierf(%struct.lua_State*, %union.GCObject*, %union.GCObject*) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden void @luaK_reserveregs(%struct.FuncState*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden i32 @luaK_codeABx(%struct.FuncState*, i32, i32, i32) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal fastcc void @field(%struct.LexState*, %struct.expdesc*) unnamed_addr #0 !dbg !3335 {
  %3 = alloca %struct.expdesc, align 8
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !3343
  %5 = load %struct.FuncState*, %struct.FuncState** %4, align 8, !dbg !3343, !tbaa !651
  %6 = bitcast %struct.expdesc* %3 to i8*, !dbg !3345
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #4, !dbg !3345
  %7 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %5, %struct.expdesc* %1) #5, !dbg !3346
  tail call void @luaX_next(%struct.LexState* %0) #5, !dbg !3347
  %8 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0, !dbg !3357
  %9 = load i32, i32* %8, align 8, !dbg !3357, !tbaa !623
  %10 = icmp eq i32 %9, 285, !dbg !3358
  br i1 %10, label %16, label %11, !dbg !3359

; <label>:11:                                     ; preds = %2
  %12 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !3363
  %13 = load %struct.lua_State*, %struct.lua_State** %12, align 8, !dbg !3363, !tbaa !611
  %14 = tail call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 285) #5, !dbg !3364
  %15 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %14) #5, !dbg !3365
  tail call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %15) #5, !dbg !3366
  br label %16, !dbg !3367

; <label>:16:                                     ; preds = %2, %11
  %17 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1, !dbg !3368
  %18 = bitcast %union.SemInfo* %17 to %union.TString**, !dbg !3369
  %19 = load %union.TString*, %union.TString** %18, align 8, !dbg !3369, !tbaa !755
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !3371
  %20 = load %struct.FuncState*, %struct.FuncState** %4, align 8, !dbg !3376, !tbaa !651
  %21 = tail call i32 @luaK_stringK(%struct.FuncState* %20, %union.TString* %19) #5, !dbg !3377
  %22 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 2, !dbg !3382
  store i32 -1, i32* %22, align 8, !dbg !3383, !tbaa !1804
  %23 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 3, !dbg !3384
  store i32 -1, i32* %23, align 4, !dbg !3385, !tbaa !985
  %24 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0, !dbg !3386
  store i32 4, i32* %24, align 8, !dbg !3387, !tbaa !976
  %25 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1, !dbg !3388
  %26 = bitcast %union.anon.3* %25 to i32*, !dbg !3389
  store i32 %21, i32* %26, align 8, !dbg !3390, !tbaa !755
  call void @luaK_indexed(%struct.FuncState* %5, %struct.expdesc* %1, %struct.expdesc* nonnull %3) #5, !dbg !3391
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #4, !dbg !3392
  ret void, !dbg !3392
}

; Function Attrs: noredzone
declare hidden i32 @luaK_exp2anyreg(%struct.FuncState*, %struct.expdesc*) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden void @luaK_indexed(%struct.FuncState*, %struct.expdesc*, %struct.expdesc*) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden void @luaK_self(%struct.FuncState*, %struct.expdesc*, %struct.expdesc*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal fastcc void @funcargs(%struct.LexState*, %struct.expdesc* nocapture) unnamed_addr #0 !dbg !3393 {
  %3 = alloca %struct.expdesc, align 8
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !3404
  %5 = load %struct.FuncState*, %struct.FuncState** %4, align 8, !dbg !3404, !tbaa !651
  %6 = bitcast %struct.expdesc* %3 to i8*, !dbg !3406
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #4, !dbg !3406
  %7 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1, !dbg !3407
  %8 = load i32, i32* %7, align 4, !dbg !3407, !tbaa !873
  %9 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0, !dbg !3409
  %10 = load i32, i32* %9, align 8, !dbg !3409, !tbaa !623
  switch i32 %10, label %43 [
    i32 40, label %11
    i32 123, label %32
    i32 286, label %33
  ], !dbg !3410

; <label>:11:                                     ; preds = %2
  %12 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 2, !dbg !3411
  %13 = load i32, i32* %12, align 8, !dbg !3411, !tbaa !3415
  %14 = icmp eq i32 %8, %13, !dbg !3416
  br i1 %14, label %16, label %15, !dbg !3417

; <label>:15:                                     ; preds = %11
  tail call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.15, i64 0, i64 0)) #5, !dbg !3418
  br label %16, !dbg !3418

; <label>:16:                                     ; preds = %11, %15
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !3419
  %17 = load i32, i32* %9, align 8, !dbg !3420, !tbaa !623
  %18 = icmp eq i32 %17, 41, !dbg !3422
  br i1 %18, label %19, label %21, !dbg !3423

; <label>:19:                                     ; preds = %16
  %20 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0, !dbg !3424
  store i32 0, i32* %20, align 8, !dbg !3425, !tbaa !976
  br label %31, !dbg !3426

; <label>:21:                                     ; preds = %16
  %22 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %3, i32 0) #5, !dbg !3436
  %23 = load i32, i32* %9, align 8, !dbg !3440, !tbaa !623
  %24 = icmp eq i32 %23, 44, !dbg !3441
  br i1 %24, label %25, label %30, !dbg !3442

; <label>:25:                                     ; preds = %21, %25
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !3443
  %26 = load %struct.FuncState*, %struct.FuncState** %4, align 8, !dbg !3444, !tbaa !651
  call void @luaK_exp2nextreg(%struct.FuncState* %26, %struct.expdesc* nonnull %3) #5, !dbg !3445
  %27 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %3, i32 0) #5, !dbg !3449
  %28 = load i32, i32* %9, align 8, !dbg !3440, !tbaa !623
  %29 = icmp eq i32 %28, 44, !dbg !3441
  br i1 %29, label %25, label %30, !dbg !3442, !llvm.loop !1372

; <label>:30:                                     ; preds = %25, %21
  call void @luaK_setreturns(%struct.FuncState* %5, %struct.expdesc* nonnull %3, i32 -1) #5, !dbg !3450
  br label %31

; <label>:31:                                     ; preds = %30, %19
  call fastcc void @check_match(%struct.LexState* nonnull %0, i32 41, i32 40, i32 %8) #6, !dbg !3451
  br label %44, !dbg !3452

; <label>:32:                                     ; preds = %2
  call fastcc void @constructor(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %3) #6, !dbg !3453
  br label %44, !dbg !3455

; <label>:33:                                     ; preds = %2
  %34 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1, !dbg !3456
  %35 = bitcast %union.SemInfo* %34 to %union.TString**, !dbg !3458
  %36 = load %union.TString*, %union.TString** %35, align 8, !dbg !3458, !tbaa !755
  %37 = tail call i32 @luaK_stringK(%struct.FuncState* %5, %union.TString* %36) #5, !dbg !3463
  %38 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 2, !dbg !3468
  store i32 -1, i32* %38, align 8, !dbg !3469, !tbaa !1804
  %39 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 3, !dbg !3470
  store i32 -1, i32* %39, align 4, !dbg !3471, !tbaa !985
  %40 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0, !dbg !3472
  store i32 4, i32* %40, align 8, !dbg !3473, !tbaa !976
  %41 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1, !dbg !3474
  %42 = bitcast %union.anon.3* %41 to i32*, !dbg !3475
  store i32 %37, i32* %42, align 8, !dbg !3476, !tbaa !755
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !3477
  br label %44, !dbg !3478

; <label>:43:                                     ; preds = %2
  tail call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0)) #5, !dbg !3479
  br label %63, !dbg !3481

; <label>:44:                                     ; preds = %33, %32, %31
  %45 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !3482
  %46 = bitcast %union.anon.3* %45 to i32*, !dbg !3483
  %47 = load i32, i32* %46, align 8, !dbg !3483, !tbaa !755
  %48 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0, !dbg !3485
  %49 = load i32, i32* %48, align 8, !dbg !3485, !tbaa !976
  switch i32 %49, label %50 [
    i32 13, label %55
    i32 14, label %55
    i32 0, label %51
  ], !dbg !3485

; <label>:50:                                     ; preds = %44
  call void @luaK_exp2nextreg(%struct.FuncState* %5, %struct.expdesc* nonnull %3) #5, !dbg !3487
  br label %51, !dbg !3487

; <label>:51:                                     ; preds = %44, %50
  %52 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 9, !dbg !3490
  %53 = load i32, i32* %52, align 4, !dbg !3490, !tbaa !657
  %54 = sub i32 %53, %47
  br label %55

; <label>:55:                                     ; preds = %44, %44, %51
  %56 = phi i32 [ %54, %51 ], [ 0, %44 ], [ 0, %44 ]
  %57 = call i32 @luaK_codeABC(%struct.FuncState* %5, i32 28, i32 %47, i32 %56, i32 2) #5, !dbg !3492
  %58 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2, !dbg !3497
  store i32 -1, i32* %58, align 8, !dbg !3498, !tbaa !1804
  %59 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3, !dbg !3499
  store i32 -1, i32* %59, align 4, !dbg !3500, !tbaa !985
  %60 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0, !dbg !3501
  store i32 13, i32* %60, align 8, !dbg !3502, !tbaa !976
  store i32 %57, i32* %46, align 8, !dbg !3503, !tbaa !755
  call void @luaK_fixline(%struct.FuncState* %5, i32 %8) #5, !dbg !3504
  %61 = add nsw i32 %47, 1, !dbg !3505
  %62 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 9, !dbg !3506
  store i32 %61, i32* %62, align 4, !dbg !3507, !tbaa !657
  br label %63, !dbg !3508

; <label>:63:                                     ; preds = %55, %43
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #4, !dbg !3508
  ret void, !dbg !3508
}

; Function Attrs: noredzone
declare hidden void @luaK_dischargevars(%struct.FuncState*, %struct.expdesc*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal fastcc i32 @singlevaraux(%struct.FuncState*, %union.TString*, %struct.expdesc* nocapture, i32) unnamed_addr #0 !dbg !3509 {
  %5 = icmp eq %struct.FuncState* %0, null, !dbg !3524
  br i1 %5, label %6, label %12, !dbg !3525

; <label>:6:                                      ; preds = %4
  %7 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2, !dbg !3531
  store i32 -1, i32* %7, align 8, !dbg !3532, !tbaa !1804
  %8 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3, !dbg !3533
  store i32 -1, i32* %8, align 4, !dbg !3534, !tbaa !985
  %9 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0, !dbg !3535
  store i32 8, i32* %9, align 8, !dbg !3536, !tbaa !976
  %10 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, !dbg !3537
  %11 = bitcast %union.anon.3* %10 to i32*, !dbg !3538
  store i32 255, i32* %11, align 8, !dbg !3539, !tbaa !755
  br label %209, !dbg !3540

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !3551
  %14 = load i8, i8* %13, align 2, !dbg !3551, !tbaa !653
  %15 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0, !dbg !3553
  %16 = zext i8 %14 to i64, !dbg !3557
  br label %17, !dbg !3557

; <label>:17:                                     ; preds = %21, %12
  %18 = phi i64 [ %19, %21 ], [ %16, %12 ]
  %19 = add nsw i64 %18, -1, !dbg !3558
  %20 = icmp sgt i64 %18, 0, !dbg !3560
  br i1 %20, label %21, label %57, !dbg !3561

; <label>:21:                                     ; preds = %17
  %22 = load %struct.Proto*, %struct.Proto** %15, align 8, !dbg !3553, !tbaa !585
  %23 = getelementptr inbounds %struct.Proto, %struct.Proto* %22, i64 0, i32 7, !dbg !3553
  %24 = load %struct.LocVar*, %struct.LocVar** %23, align 8, !dbg !3553, !tbaa !794
  %25 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15, i64 %19, !dbg !3553
  %26 = load i16, i16* %25, align 2, !dbg !3553, !tbaa !796
  %27 = zext i16 %26 to i64, !dbg !3553
  %28 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %24, i64 %27, i32 0, !dbg !3562
  %29 = load %union.TString*, %union.TString** %28, align 8, !dbg !3562, !tbaa !3315
  %30 = icmp eq %union.TString* %29, %1, !dbg !3563
  br i1 %30, label %31, label %17, !dbg !3564, !llvm.loop !3565

; <label>:31:                                     ; preds = %21
  %32 = trunc i64 %19 to i32, !dbg !3564
  %33 = icmp sgt i32 %32, -1, !dbg !3569
  br i1 %33, label %34, label %57, !dbg !3571

; <label>:34:                                     ; preds = %31
  %35 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2, !dbg !3577
  store i32 -1, i32* %35, align 8, !dbg !3578, !tbaa !1804
  %36 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3, !dbg !3579
  store i32 -1, i32* %36, align 4, !dbg !3580, !tbaa !985
  %37 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0, !dbg !3581
  store i32 6, i32* %37, align 8, !dbg !3582, !tbaa !976
  %38 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, !dbg !3583
  %39 = bitcast %union.anon.3* %38 to i32*, !dbg !3584
  store i32 %32, i32* %39, align 8, !dbg !3585, !tbaa !755
  %40 = icmp eq i32 %3, 0, !dbg !3586
  br i1 %40, label %41, label %209, !dbg !3588

; <label>:41:                                     ; preds = %34
  %42 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 5, !dbg !3599
  %43 = load %struct.BlockCnt*, %struct.BlockCnt** %42, align 8, !dbg !3601, !tbaa !1572
  %44 = icmp eq %struct.BlockCnt* %43, null, !dbg !3602
  br i1 %44, label %209, label %45, !dbg !3603

; <label>:45:                                     ; preds = %41, %51
  %46 = phi %struct.BlockCnt* [ %53, %51 ], [ %43, %41 ]
  %47 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %46, i64 0, i32 2, !dbg !3604
  %48 = load i8, i8* %47, align 4, !dbg !3604, !tbaa !1011
  %49 = zext i8 %48 to i32, !dbg !3605
  %50 = icmp sgt i32 %49, %32, !dbg !3606
  br i1 %50, label %51, label %55, !dbg !3607

; <label>:51:                                     ; preds = %45
  %52 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %46, i64 0, i32 0, !dbg !3608
  %53 = load %struct.BlockCnt*, %struct.BlockCnt** %52, align 8, !dbg !3601, !tbaa !1572
  %54 = icmp eq %struct.BlockCnt* %53, null, !dbg !3602
  br i1 %54, label %209, label %45, !dbg !3603, !llvm.loop !3609

; <label>:55:                                     ; preds = %45
  %56 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %46, i64 0, i32 3, !dbg !3612
  store i8 1, i8* %56, align 1, !dbg !3614, !tbaa !1014
  br label %209, !dbg !3615

; <label>:57:                                     ; preds = %17, %31
  %58 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2, !dbg !3616
  %59 = load %struct.FuncState*, %struct.FuncState** %58, align 8, !dbg !3616, !tbaa !716
  %60 = tail call fastcc i32 @singlevaraux(%struct.FuncState* %59, %union.TString* %1, %struct.expdesc* %2, i32 0) #6, !dbg !3619
  %61 = icmp eq i32 %60, 8, !dbg !3620
  br i1 %61, label %209, label %62, !dbg !3621

; <label>:62:                                     ; preds = %57
  %63 = load %struct.Proto*, %struct.Proto** %15, align 8, !dbg !3636, !tbaa !585
  %64 = getelementptr inbounds %struct.Proto, %struct.Proto* %63, i64 0, i32 10, !dbg !3638
  %65 = load i32, i32* %64, align 8, !dbg !3638, !tbaa !838
  %66 = getelementptr inbounds %struct.Proto, %struct.Proto* %63, i64 0, i32 19, !dbg !3641
  %67 = load i8, i8* %66, align 8, !dbg !3641, !tbaa !836
  %68 = icmp eq i8 %67, 0, !dbg !3644
  br i1 %68, label %108, label %69, !dbg !3645

; <label>:69:                                     ; preds = %62
  %70 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %71 = load i32, i32* %70, align 8, !tbaa !976
  %72 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %73 = bitcast %union.anon.3* %72 to i32*
  %74 = zext i8 %67 to i64
  br label %75, !dbg !3645

; <label>:75:                                     ; preds = %87, %69
  %76 = phi i64 [ 0, %69 ], [ %88, %87 ]
  %77 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 14, i64 %76, i32 0, !dbg !3646
  %78 = load i8, i8* %77, align 1, !dbg !3646, !tbaa !2971
  %79 = zext i8 %78 to i32, !dbg !3649
  %80 = icmp eq i32 %71, %79, !dbg !3650
  br i1 %80, label %81, label %87, !dbg !3651

; <label>:81:                                     ; preds = %75
  %82 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 14, i64 %76, i32 1, !dbg !3652
  %83 = load i8, i8* %82, align 1, !dbg !3652, !tbaa !2977
  %84 = zext i8 %83 to i32, !dbg !3653
  %85 = load i32, i32* %73, align 8, !dbg !3654, !tbaa !755
  %86 = icmp eq i32 %85, %84, !dbg !3655
  br i1 %86, label %203, label %87, !dbg !3656

; <label>:87:                                     ; preds = %81, %75
  %88 = add nuw nsw i64 %76, 1, !dbg !3657
  %89 = icmp ult i64 %88, %74, !dbg !3644
  br i1 %89, label %75, label %90, !dbg !3645, !llvm.loop !3658

; <label>:90:                                     ; preds = %87
  %91 = icmp ugt i8 %67, 59, !dbg !3661
  br i1 %91, label %92, label %108, !dbg !3663

; <label>:92:                                     ; preds = %90
  %93 = getelementptr inbounds %struct.Proto, %struct.Proto* %63, i64 0, i32 16, !dbg !3668
  %94 = load i32, i32* %93, align 8, !dbg !3668, !tbaa !2634
  %95 = icmp eq i32 %94, 0, !dbg !3669
  %96 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4, !dbg !3670
  %97 = load %struct.lua_State*, %struct.lua_State** %96, align 8, !dbg !3670, !tbaa !722
  br i1 %95, label %98, label %100, !dbg !3671

; <label>:98:                                     ; preds = %92
  %99 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %97, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0)) #5, !dbg !3672
  br label %102, !dbg !3671

; <label>:100:                                    ; preds = %92
  %101 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %97, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %94, i32 60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0)) #5, !dbg !3673
  br label %102, !dbg !3671

; <label>:102:                                    ; preds = %100, %98
  %103 = phi i8* [ %99, %98 ], [ %101, %100 ], !dbg !3671
  %104 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !3675
  %105 = load %struct.LexState*, %struct.LexState** %104, align 8, !dbg !3675, !tbaa !719
  tail call void @luaX_lexerror(%struct.LexState* %105, i8* %103, i32 0) #5, !dbg !3676
  %106 = load i8, i8* %66, align 8, !dbg !3677, !tbaa !836
  %107 = load i32, i32* %64, align 8, !dbg !3677, !tbaa !838
  br label %108, !dbg !3661

; <label>:108:                                    ; preds = %102, %90, %62
  %109 = phi i32 [ %107, %102 ], [ %65, %90 ], [ %65, %62 ], !dbg !3677
  %110 = phi i8 [ %106, %102 ], [ %67, %90 ], [ 0, %62 ], !dbg !3677
  %111 = zext i8 %110 to i32, !dbg !3677
  %112 = icmp sgt i32 %109, %111, !dbg !3677
  br i1 %112, label %113, label %116, !dbg !3679

; <label>:113:                                    ; preds = %108
  %114 = getelementptr inbounds %struct.Proto, %struct.Proto* %63, i64 0, i32 8
  %115 = load %union.TString**, %union.TString*** %114, align 8, !dbg !3680, !tbaa !837
  br label %125, !dbg !3679

; <label>:116:                                    ; preds = %108
  %117 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4, !dbg !3677
  %118 = load %struct.lua_State*, %struct.lua_State** %117, align 8, !dbg !3677, !tbaa !722
  %119 = getelementptr inbounds %struct.Proto, %struct.Proto* %63, i64 0, i32 8, !dbg !3677
  %120 = bitcast %union.TString*** %119 to i8**, !dbg !3677
  %121 = load i8*, i8** %120, align 8, !dbg !3677, !tbaa !837
  %122 = tail call i8* @luaM_growaux_(%struct.lua_State* %118, i8* %121, i32* nonnull %64, i64 8, i32 2147483645, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)) #5, !dbg !3677
  store i8* %122, i8** %120, align 8, !dbg !3677, !tbaa !837
  %123 = load i32, i32* %64, align 8, !dbg !3681, !tbaa !838
  %124 = bitcast i8* %122 to %union.TString**, !dbg !3677
  br label %125, !dbg !3677

; <label>:125:                                    ; preds = %116, %113
  %126 = phi %union.TString*** [ %114, %113 ], [ %119, %116 ], !dbg !3680
  %127 = phi %union.TString** [ %115, %113 ], [ %124, %116 ], !dbg !3680
  %128 = phi i32 [ %109, %113 ], [ %123, %116 ], !dbg !3681
  %129 = icmp slt i32 %65, %128, !dbg !3682
  br i1 %129, label %130, label %168, !dbg !3683

; <label>:130:                                    ; preds = %125
  %131 = sext i32 %65 to i64, !dbg !3683
  %132 = sext i32 %128 to i64, !dbg !3683
  %133 = sub nsw i64 %132, %131, !dbg !3683
  %134 = xor i64 %131, -1, !dbg !3683
  %135 = add nsw i64 %134, %132, !dbg !3683
  %136 = and i64 %133, 3, !dbg !3683
  %137 = icmp eq i64 %136, 0, !dbg !3683
  br i1 %137, label %147, label %138, !dbg !3683

; <label>:138:                                    ; preds = %130, %138
  %139 = phi i64 [ %142, %138 ], [ %131, %130 ]
  %140 = phi %union.TString** [ %144, %138 ], [ %127, %130 ]
  %141 = phi i64 [ %145, %138 ], [ %136, %130 ]
  %142 = add nsw i64 %139, 1, !dbg !3684
  %143 = getelementptr inbounds %union.TString*, %union.TString** %140, i64 %139, !dbg !3685
  store %union.TString* null, %union.TString** %143, align 8, !dbg !3686, !tbaa !1572
  %144 = load %union.TString**, %union.TString*** %126, align 8, !dbg !3680, !tbaa !837
  %145 = add i64 %141, -1, !dbg !3683
  %146 = icmp eq i64 %145, 0, !dbg !3683
  br i1 %146, label %147, label %138, !dbg !3683, !llvm.loop !3687

; <label>:147:                                    ; preds = %138, %130
  %148 = phi %union.TString** [ undef, %130 ], [ %144, %138 ]
  %149 = phi i64 [ %131, %130 ], [ %142, %138 ]
  %150 = phi %union.TString** [ %127, %130 ], [ %144, %138 ]
  %151 = icmp ult i64 %135, 3, !dbg !3683
  br i1 %151, label %168, label %152, !dbg !3683

; <label>:152:                                    ; preds = %147, %152
  %153 = phi i64 [ %164, %152 ], [ %149, %147 ]
  %154 = phi %union.TString** [ %166, %152 ], [ %150, %147 ]
  %155 = add nsw i64 %153, 1, !dbg !3684
  %156 = getelementptr inbounds %union.TString*, %union.TString** %154, i64 %153, !dbg !3685
  store %union.TString* null, %union.TString** %156, align 8, !dbg !3686, !tbaa !1572
  %157 = load %union.TString**, %union.TString*** %126, align 8, !dbg !3680, !tbaa !837
  %158 = add nsw i64 %153, 2, !dbg !3684
  %159 = getelementptr inbounds %union.TString*, %union.TString** %157, i64 %155, !dbg !3685
  store %union.TString* null, %union.TString** %159, align 8, !dbg !3686, !tbaa !1572
  %160 = load %union.TString**, %union.TString*** %126, align 8, !dbg !3680, !tbaa !837
  %161 = add nsw i64 %153, 3, !dbg !3684
  %162 = getelementptr inbounds %union.TString*, %union.TString** %160, i64 %158, !dbg !3685
  store %union.TString* null, %union.TString** %162, align 8, !dbg !3686, !tbaa !1572
  %163 = load %union.TString**, %union.TString*** %126, align 8, !dbg !3680, !tbaa !837
  %164 = add nsw i64 %153, 4, !dbg !3684
  %165 = getelementptr inbounds %union.TString*, %union.TString** %163, i64 %161, !dbg !3685
  store %union.TString* null, %union.TString** %165, align 8, !dbg !3686, !tbaa !1572
  %166 = load %union.TString**, %union.TString*** %126, align 8, !dbg !3680, !tbaa !837
  %167 = icmp eq i64 %164, %132, !dbg !3682
  br i1 %167, label %168, label %152, !dbg !3683, !llvm.loop !3688

; <label>:168:                                    ; preds = %147, %152, %125
  %169 = phi %union.TString** [ %127, %125 ], [ %148, %147 ], [ %166, %152 ], !dbg !3680
  %170 = load i8, i8* %66, align 8, !dbg !3691, !tbaa !836
  %171 = zext i8 %170 to i64, !dbg !3692
  %172 = getelementptr inbounds %union.TString*, %union.TString** %169, i64 %171, !dbg !3692
  store %union.TString* %1, %union.TString** %172, align 8, !dbg !3693, !tbaa !1572
  %173 = bitcast %union.TString* %1 to %union.GCObject*, !dbg !3694
  %174 = getelementptr inbounds %union.TString, %union.TString* %1, i64 0, i32 0, i32 2, !dbg !3694
  %175 = load i8, i8* %174, align 1, !dbg !3694, !tbaa !755
  %176 = and i8 %175, 3, !dbg !3694
  %177 = icmp eq i8 %176, 0, !dbg !3694
  br i1 %177, label %189, label %178, !dbg !3694

; <label>:178:                                    ; preds = %168
  %179 = getelementptr inbounds %struct.Proto, %struct.Proto* %63, i64 0, i32 2, !dbg !3694
  %180 = load i8, i8* %179, align 1, !dbg !3694, !tbaa !755
  %181 = and i8 %180, 4, !dbg !3694
  %182 = icmp eq i8 %181, 0, !dbg !3694
  br i1 %182, label %189, label %183, !dbg !3697

; <label>:183:                                    ; preds = %178
  %184 = bitcast %struct.Proto* %63 to %union.GCObject*, !dbg !3694
  %185 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4, !dbg !3694
  %186 = load %struct.lua_State*, %struct.lua_State** %185, align 8, !dbg !3694, !tbaa !722
  tail call void @luaC_barrierf(%struct.lua_State* %186, %union.GCObject* %184, %union.GCObject* %173) #5, !dbg !3694
  %187 = load i8, i8* %66, align 8, !dbg !3698, !tbaa !836
  %188 = zext i8 %187 to i64, !dbg !3699
  br label %189, !dbg !3694

; <label>:189:                                    ; preds = %183, %178, %168
  %190 = phi i64 [ %171, %178 ], [ %171, %168 ], [ %188, %183 ], !dbg !3699
  %191 = phi i8 [ %170, %178 ], [ %170, %168 ], [ %187, %183 ], !dbg !3698
  %192 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0, !dbg !3700
  %193 = load i32, i32* %192, align 8, !dbg !3700, !tbaa !976
  %194 = trunc i32 %193 to i8, !dbg !3700
  %195 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 14, i64 %190, i32 0, !dbg !3701
  store i8 %194, i8* %195, align 1, !dbg !3702, !tbaa !2971
  %196 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, !dbg !3703
  %197 = bitcast %union.anon.3* %196 to i32*, !dbg !3703
  %198 = load i32, i32* %197, align 8, !dbg !3703, !tbaa !755
  %199 = trunc i32 %198 to i8, !dbg !3703
  %200 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 14, i64 %190, i32 1, !dbg !3704
  store i8 %199, i8* %200, align 1, !dbg !3705, !tbaa !2977
  %201 = add i8 %191, 1, !dbg !3706
  store i8 %201, i8* %66, align 8, !dbg !3706, !tbaa !836
  %202 = zext i8 %191 to i32, !dbg !3707
  br label %205, !dbg !3708

; <label>:203:                                    ; preds = %81
  %204 = trunc i64 %76 to i32, !dbg !3640
  br label %205, !dbg !3709

; <label>:205:                                    ; preds = %189, %203
  %206 = phi i32* [ %192, %189 ], [ %70, %203 ], !dbg !3710
  %207 = phi i32* [ %197, %189 ], [ %73, %203 ], !dbg !3711
  %208 = phi i32 [ %202, %189 ], [ %204, %203 ], !dbg !3680
  store i32 %208, i32* %207, align 8, !dbg !3712, !tbaa !755
  store i32 7, i32* %206, align 8, !dbg !3713, !tbaa !976
  br label %209, !dbg !3714

; <label>:209:                                    ; preds = %51, %55, %41, %205, %34, %57, %6
  %210 = phi i32 [ 8, %6 ], [ 7, %205 ], [ 6, %34 ], [ 8, %57 ], [ 6, %41 ], [ 6, %55 ], [ 6, %51 ], !dbg !3715
  ret i32 %210, !dbg !3716
}

; Function Attrs: noredzone
declare hidden void @luaK_fixline(%struct.FuncState*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden i32 @luaK_getlabel(%struct.FuncState*) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden void @luaK_patchlist(%struct.FuncState*, i32, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden i32 @luaK_numberK(%struct.FuncState*, double) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal fastcc void @forbody(%struct.LexState*, i32, i32, i32, i32) unnamed_addr #0 !dbg !3717 {
  %6 = alloca %struct.BlockCnt, align 8
  %7 = bitcast %struct.BlockCnt* %6 to i8*, !dbg !3735
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #4, !dbg !3735
  %8 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !3736
  %9 = load %struct.FuncState*, %struct.FuncState** %8, align 8, !dbg !3736, !tbaa !651
  %10 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %9, i64 0, i32 13, !dbg !3742
  %11 = load i8, i8* %10, align 2, !dbg !3742, !tbaa !653
  %12 = add i8 %11, 3, !dbg !3742
  store i8 %12, i8* %10, align 2, !dbg !3743, !tbaa !653
  %13 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %9, i64 0, i32 6
  %14 = load i32, i32* %13, align 8, !tbaa !793
  %15 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %9, i64 0, i32 0
  %16 = load %struct.Proto*, %struct.Proto** %15, align 8, !tbaa !585
  %17 = getelementptr inbounds %struct.Proto, %struct.Proto* %16, i64 0, i32 7
  %18 = load %struct.LocVar*, %struct.LocVar** %17, align 8, !tbaa !794
  %19 = zext i8 %12 to i64, !dbg !3744
  %20 = add nsw i64 %19, -3, !dbg !3745
  %21 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %9, i64 0, i32 15, i64 %20, !dbg !3745
  %22 = load i16, i16* %21, align 2, !dbg !3745, !tbaa !796
  %23 = zext i16 %22 to i64, !dbg !3745
  %24 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %18, i64 %23, i32 1, !dbg !3746
  store i32 %14, i32* %24, align 8, !dbg !3747, !tbaa !1832
  %25 = add nsw i64 %19, -2, !dbg !3745
  %26 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %9, i64 0, i32 15, i64 %25, !dbg !3745
  %27 = load i16, i16* %26, align 2, !dbg !3745, !tbaa !796
  %28 = zext i16 %27 to i64, !dbg !3745
  %29 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %18, i64 %28, i32 1, !dbg !3746
  store i32 %14, i32* %29, align 8, !dbg !3747, !tbaa !1832
  %30 = add nsw i64 %19, -1, !dbg !3745
  %31 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %9, i64 0, i32 15, i64 %30, !dbg !3745
  %32 = load i16, i16* %31, align 2, !dbg !3745, !tbaa !796
  %33 = zext i16 %32 to i64, !dbg !3745
  %34 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %18, i64 %33, i32 1, !dbg !3746
  store i32 %14, i32* %34, align 8, !dbg !3747, !tbaa !1832
  %35 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0, !dbg !3754
  %36 = load i32, i32* %35, align 8, !dbg !3754, !tbaa !623
  %37 = icmp eq i32 %36, 259, !dbg !3755
  br i1 %37, label %43, label %38, !dbg !3756

; <label>:38:                                     ; preds = %5
  %39 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !3760
  %40 = load %struct.lua_State*, %struct.lua_State** %39, align 8, !dbg !3760, !tbaa !611
  %41 = tail call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 259) #5, !dbg !3761
  %42 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %41) #5, !dbg !3762
  tail call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %42) #5, !dbg !3763
  br label %43, !dbg !3764

; <label>:43:                                     ; preds = %5, %38
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !3765
  %44 = icmp ne i32 %4, 0, !dbg !3766
  br i1 %44, label %45, label %47, !dbg !3766

; <label>:45:                                     ; preds = %43
  %46 = tail call i32 @luaK_codeABx(%struct.FuncState* nonnull %9, i32 32, i32 %1, i32 131070) #5, !dbg !3767
  br label %49, !dbg !3766

; <label>:47:                                     ; preds = %43
  %48 = tail call i32 @luaK_jump(%struct.FuncState* nonnull %9) #5, !dbg !3768
  br label %49, !dbg !3766

; <label>:49:                                     ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ], !dbg !3766
  %51 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %6, i64 0, i32 1, !dbg !3775
  store i32 -1, i32* %51, align 8, !dbg !3776, !tbaa !1003
  %52 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %6, i64 0, i32 4, !dbg !3777
  store i8 0, i8* %52, align 2, !dbg !3778, !tbaa !1007
  %53 = load i8, i8* %10, align 2, !dbg !3779, !tbaa !653
  %54 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %6, i64 0, i32 2, !dbg !3780
  store i8 %53, i8* %54, align 4, !dbg !3781, !tbaa !1011
  %55 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %6, i64 0, i32 3, !dbg !3782
  store i8 0, i8* %55, align 1, !dbg !3783, !tbaa !1014
  %56 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %9, i64 0, i32 5, !dbg !3784
  %57 = bitcast %struct.BlockCnt** %56 to i64*, !dbg !3784
  %58 = load i64, i64* %57, align 8, !dbg !3784, !tbaa !740
  %59 = bitcast %struct.BlockCnt* %6 to i64*, !dbg !3785
  store i64 %58, i64* %59, align 8, !dbg !3785, !tbaa !1017
  store %struct.BlockCnt* %6, %struct.BlockCnt** %56, align 8, !dbg !3786, !tbaa !740
  %60 = load %struct.FuncState*, %struct.FuncState** %8, align 8, !dbg !3790, !tbaa !651
  %61 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %60, i64 0, i32 13, !dbg !3792
  %62 = load i8, i8* %61, align 2, !dbg !3792, !tbaa !653
  %63 = trunc i32 %3 to i8, !dbg !3792
  %64 = add i8 %62, %63, !dbg !3792
  store i8 %64, i8* %61, align 2, !dbg !3793, !tbaa !653
  %65 = icmp eq i32 %3, 0, !dbg !3794
  br i1 %65, label %120, label %66, !dbg !3794

; <label>:66:                                     ; preds = %49
  %67 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %60, i64 0, i32 6
  %68 = load i32, i32* %67, align 8, !tbaa !793
  %69 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %60, i64 0, i32 0
  %70 = load %struct.Proto*, %struct.Proto** %69, align 8, !tbaa !585
  %71 = getelementptr inbounds %struct.Proto, %struct.Proto* %70, i64 0, i32 7
  %72 = load %struct.LocVar*, %struct.LocVar** %71, align 8, !tbaa !794
  %73 = sext i32 %3 to i64, !dbg !3794
  %74 = zext i8 %64 to i64, !dbg !3794
  %75 = add i32 %3, -1, !dbg !3794
  %76 = and i32 %3, 3, !dbg !3794
  %77 = icmp eq i32 %76, 0, !dbg !3794
  br i1 %77, label %89, label %78, !dbg !3794

; <label>:78:                                     ; preds = %66, %78
  %79 = phi i64 [ %86, %78 ], [ %73, %66 ]
  %80 = phi i32 [ %87, %78 ], [ %76, %66 ]
  %81 = sub nsw i64 %74, %79, !dbg !3795
  %82 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %60, i64 0, i32 15, i64 %81, !dbg !3795
  %83 = load i16, i16* %82, align 2, !dbg !3795, !tbaa !796
  %84 = zext i16 %83 to i64, !dbg !3795
  %85 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %72, i64 %84, i32 1, !dbg !3796
  store i32 %68, i32* %85, align 8, !dbg !3797, !tbaa !1832
  %86 = add nsw i64 %79, -1, !dbg !3798
  %87 = add i32 %80, -1, !dbg !3794
  %88 = icmp eq i32 %87, 0, !dbg !3794
  br i1 %88, label %89, label %78, !dbg !3794, !llvm.loop !3799

; <label>:89:                                     ; preds = %78, %66
  %90 = phi i64 [ %73, %66 ], [ %86, %78 ]
  %91 = icmp ult i32 %75, 3, !dbg !3794
  br i1 %91, label %120, label %92, !dbg !3794

; <label>:92:                                     ; preds = %89, %92
  %93 = phi i64 [ %117, %92 ], [ %90, %89 ]
  %94 = sub nsw i64 %74, %93, !dbg !3795
  %95 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %60, i64 0, i32 15, i64 %94, !dbg !3795
  %96 = load i16, i16* %95, align 2, !dbg !3795, !tbaa !796
  %97 = zext i16 %96 to i64, !dbg !3795
  %98 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %72, i64 %97, i32 1, !dbg !3796
  store i32 %68, i32* %98, align 8, !dbg !3797, !tbaa !1832
  %99 = add nsw i64 %93, -1, !dbg !3798
  %100 = sub nsw i64 %74, %99, !dbg !3795
  %101 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %60, i64 0, i32 15, i64 %100, !dbg !3795
  %102 = load i16, i16* %101, align 2, !dbg !3795, !tbaa !796
  %103 = zext i16 %102 to i64, !dbg !3795
  %104 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %72, i64 %103, i32 1, !dbg !3796
  store i32 %68, i32* %104, align 8, !dbg !3797, !tbaa !1832
  %105 = add nsw i64 %93, -2, !dbg !3798
  %106 = sub nsw i64 %74, %105, !dbg !3795
  %107 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %60, i64 0, i32 15, i64 %106, !dbg !3795
  %108 = load i16, i16* %107, align 2, !dbg !3795, !tbaa !796
  %109 = zext i16 %108 to i64, !dbg !3795
  %110 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %72, i64 %109, i32 1, !dbg !3796
  store i32 %68, i32* %110, align 8, !dbg !3797, !tbaa !1832
  %111 = add nsw i64 %93, -3, !dbg !3798
  %112 = sub nsw i64 %74, %111, !dbg !3795
  %113 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %60, i64 0, i32 15, i64 %112, !dbg !3795
  %114 = load i16, i16* %113, align 2, !dbg !3795, !tbaa !796
  %115 = zext i16 %114 to i64, !dbg !3795
  %116 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %72, i64 %115, i32 1, !dbg !3796
  store i32 %68, i32* %116, align 8, !dbg !3797, !tbaa !1832
  %117 = add nsw i64 %93, -4, !dbg !3798
  %118 = trunc i64 %117 to i32, !dbg !3794
  %119 = icmp eq i32 %118, 0, !dbg !3794
  br i1 %119, label %120, label %92, !dbg !3794, !llvm.loop !1929

; <label>:120:                                    ; preds = %89, %92, %49
  call void @luaK_reserveregs(%struct.FuncState* %9, i32 %3) #5, !dbg !3800
  call fastcc void @block(%struct.LexState* %0) #6, !dbg !3801
  %121 = load %struct.BlockCnt*, %struct.BlockCnt** %56, align 8, !dbg !3804, !tbaa !740
  %122 = bitcast %struct.BlockCnt* %121 to i64*, !dbg !3806
  %123 = load i64, i64* %122, align 8, !dbg !3806, !tbaa !1017
  store i64 %123, i64* %57, align 8, !dbg !3807, !tbaa !740
  %124 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %9, i64 0, i32 3, !dbg !3808
  %125 = load %struct.LexState*, %struct.LexState** %124, align 8, !dbg !3808, !tbaa !719
  %126 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %121, i64 0, i32 2, !dbg !3809
  %127 = load i8, i8* %126, align 4, !dbg !3809, !tbaa !1011
  %128 = zext i8 %127 to i32, !dbg !3810
  %129 = getelementptr inbounds %struct.LexState, %struct.LexState* %125, i64 0, i32 5, !dbg !3814
  %130 = load %struct.FuncState*, %struct.FuncState** %129, align 8, !dbg !3814, !tbaa !651
  %131 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %130, i64 0, i32 13, !dbg !3816
  %132 = load i8, i8* %131, align 2, !dbg !3816, !tbaa !653
  %133 = icmp ugt i8 %132, %127, !dbg !3817
  br i1 %133, label %134, label %175, !dbg !3818

; <label>:134:                                    ; preds = %120
  %135 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %130, i64 0, i32 6
  %136 = load i32, i32* %135, align 8, !tbaa !793
  %137 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %130, i64 0, i32 0
  %138 = load %struct.Proto*, %struct.Proto** %137, align 8, !tbaa !585
  %139 = getelementptr inbounds %struct.Proto, %struct.Proto* %138, i64 0, i32 7
  %140 = load %struct.LocVar*, %struct.LocVar** %139, align 8, !tbaa !794
  %141 = zext i8 %132 to i64, !dbg !3818
  %142 = sub i8 %132, %127, !dbg !3818
  %143 = and i8 %142, 1, !dbg !3818
  %144 = icmp eq i8 %143, 0, !dbg !3818
  br i1 %144, label %153, label %145, !dbg !3818

; <label>:145:                                    ; preds = %134
  %146 = add i8 %132, -1, !dbg !3819
  %147 = zext i8 %146 to i64, !dbg !3819
  %148 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %130, i64 0, i32 15, i64 %147, !dbg !3819
  %149 = load i16, i16* %148, align 2, !dbg !3819, !tbaa !796
  %150 = zext i16 %149 to i64, !dbg !3819
  %151 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %140, i64 %150, i32 2, !dbg !3820
  store i32 %136, i32* %151, align 4, !dbg !3821, !tbaa !799
  %152 = add nsw i64 %141, -1, !dbg !3819
  br label %153, !dbg !3818

; <label>:153:                                    ; preds = %134, %145
  %154 = phi i64 [ %141, %134 ], [ %152, %145 ]
  %155 = add i8 %127, 1, !dbg !3818
  %156 = icmp eq i8 %132, %155, !dbg !3818
  br i1 %156, label %174, label %157, !dbg !3818

; <label>:157:                                    ; preds = %153, %157
  %158 = phi i64 [ %173, %157 ], [ %154, %153 ]
  %159 = add i64 %158, 255, !dbg !3819
  %160 = and i64 %159, 255, !dbg !3819
  %161 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %130, i64 0, i32 15, i64 %160, !dbg !3819
  %162 = load i16, i16* %161, align 2, !dbg !3819, !tbaa !796
  %163 = zext i16 %162 to i64, !dbg !3819
  %164 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %140, i64 %163, i32 2, !dbg !3820
  store i32 %136, i32* %164, align 4, !dbg !3821, !tbaa !799
  %165 = trunc i64 %158 to i8, !dbg !3819
  %166 = add i8 %165, -2, !dbg !3819
  %167 = zext i8 %166 to i64, !dbg !3819
  %168 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %130, i64 0, i32 15, i64 %167, !dbg !3819
  %169 = load i16, i16* %168, align 2, !dbg !3819, !tbaa !796
  %170 = zext i16 %169 to i64, !dbg !3819
  %171 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %140, i64 %170, i32 2, !dbg !3820
  store i32 %136, i32* %171, align 4, !dbg !3821, !tbaa !799
  %172 = icmp ugt i8 %166, %127, !dbg !3817
  %173 = add nsw i64 %158, -2, !dbg !3819
  br i1 %172, label %157, label %174, !dbg !3818, !llvm.loop !801

; <label>:174:                                    ; preds = %157, %153
  store i8 %127, i8* %131, align 2, !dbg !3819, !tbaa !653
  br label %175, !dbg !3818

; <label>:175:                                    ; preds = %174, %120
  %176 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %121, i64 0, i32 3, !dbg !3822
  %177 = load i8, i8* %176, align 1, !dbg !3822, !tbaa !1014
  %178 = icmp eq i8 %177, 0, !dbg !3823
  br i1 %178, label %181, label %179, !dbg !3824

; <label>:179:                                    ; preds = %175
  %180 = call i32 @luaK_codeABC(%struct.FuncState* %9, i32 35, i32 %128, i32 0, i32 0) #5, !dbg !3825
  br label %181, !dbg !3825

; <label>:181:                                    ; preds = %175, %179
  %182 = load i8, i8* %10, align 2, !dbg !3826, !tbaa !653
  %183 = zext i8 %182 to i32, !dbg !3827
  %184 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %9, i64 0, i32 9, !dbg !3828
  store i32 %183, i32* %184, align 4, !dbg !3829, !tbaa !657
  %185 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %121, i64 0, i32 1, !dbg !3830
  %186 = load i32, i32* %185, align 8, !dbg !3830, !tbaa !1003
  call void @luaK_patchtohere(%struct.FuncState* %9, i32 %186) #5, !dbg !3831
  call void @luaK_patchtohere(%struct.FuncState* %9, i32 %50) #5, !dbg !3832
  br i1 %44, label %187, label %189, !dbg !3833

; <label>:187:                                    ; preds = %181
  %188 = call i32 @luaK_codeABx(%struct.FuncState* nonnull %9, i32 31, i32 %1, i32 131070) #5, !dbg !3834
  call void @luaK_fixline(%struct.FuncState* nonnull %9, i32 %2) #5, !dbg !3836
  br label %192, !dbg !3837

; <label>:189:                                    ; preds = %181
  %190 = call i32 @luaK_codeABC(%struct.FuncState* nonnull %9, i32 33, i32 %1, i32 0, i32 %3) #5, !dbg !3838
  call void @luaK_fixline(%struct.FuncState* nonnull %9, i32 %2) #5, !dbg !3836
  %191 = call i32 @luaK_jump(%struct.FuncState* nonnull %9) #5, !dbg !3839
  br label %192, !dbg !3837

; <label>:192:                                    ; preds = %187, %189
  %193 = phi i32 [ %191, %189 ], [ %188, %187 ], !dbg !3837
  %194 = add nsw i32 %50, 1, !dbg !3840
  call void @luaK_patchlist(%struct.FuncState* nonnull %9, i32 %193, i32 %194) #5, !dbg !3841
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #4, !dbg !3842
  ret void, !dbg !3842
}

; Function Attrs: noredzone nounwind
define internal fastcc void @adjust_assign(%struct.LexState* nocapture readonly, i32, i32, %struct.expdesc*) unnamed_addr #0 !dbg !3843 {
  %5 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !3862
  %6 = load %struct.FuncState*, %struct.FuncState** %5, align 8, !dbg !3862, !tbaa !651
  %7 = sub nsw i32 %1, %2, !dbg !3864
  %8 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0, !dbg !3866
  %9 = load i32, i32* %8, align 8, !dbg !3866, !tbaa !976
  switch i32 %9, label %17 [
    i32 13, label %10
    i32 14, label %10
    i32 0, label %18
  ], !dbg !3866

; <label>:10:                                     ; preds = %4, %4
  %11 = add nsw i32 %7, 1, !dbg !3867
  %12 = icmp sgt i32 %11, 0, !dbg !3869
  %13 = select i1 %12, i32 %11, i32 0, !dbg !3869
  tail call void @luaK_setreturns(%struct.FuncState* %6, %struct.expdesc* nonnull %3, i32 %13) #5, !dbg !3870
  %14 = icmp sgt i32 %13, 1, !dbg !3871
  br i1 %14, label %15, label %23, !dbg !3873

; <label>:15:                                     ; preds = %10
  %16 = add nsw i32 %13, -1, !dbg !3874
  tail call void @luaK_reserveregs(%struct.FuncState* %6, i32 %16) #5, !dbg !3875
  br label %23, !dbg !3875

; <label>:17:                                     ; preds = %4
  tail call void @luaK_exp2nextreg(%struct.FuncState* %6, %struct.expdesc* nonnull %3) #5, !dbg !3876
  br label %18, !dbg !3876

; <label>:18:                                     ; preds = %4, %17
  %19 = icmp sgt i32 %7, 0, !dbg !3878
  br i1 %19, label %20, label %23, !dbg !3879

; <label>:20:                                     ; preds = %18
  %21 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %6, i64 0, i32 9, !dbg !3880
  %22 = load i32, i32* %21, align 4, !dbg !3880, !tbaa !657
  tail call void @luaK_reserveregs(%struct.FuncState* %6, i32 %7) #5, !dbg !3882
  tail call void @luaK_nil(%struct.FuncState* %6, i32 %22, i32 %7) #5, !dbg !3883
  br label %23, !dbg !3884

; <label>:23:                                     ; preds = %18, %20, %10, %15
  ret void, !dbg !3885
}

; Function Attrs: noredzone
declare hidden void @luaK_checkstack(%struct.FuncState*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden void @luaK_nil(%struct.FuncState*, i32, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden void @luaK_storevar(%struct.FuncState*, %struct.expdesc*, %struct.expdesc*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal fastcc void @assignment(%struct.LexState*, %struct.LHS_assign*, i32) unnamed_addr #0 !dbg !3886 {
  %4 = alloca %struct.expdesc, align 8
  %5 = alloca %struct.LHS_assign, align 8
  %6 = bitcast %struct.expdesc* %4 to i8*, !dbg !3902
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #4, !dbg !3902
  %7 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %1, i64 0, i32 1, !dbg !3903
  %8 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %7, i64 0, i32 0, !dbg !3903
  %9 = load i32, i32* %8, align 8, !dbg !3903, !tbaa !2058
  %10 = add i32 %9, -6, !dbg !3903
  %11 = icmp ult i32 %10, 4, !dbg !3903
  br i1 %11, label %13, label %12, !dbg !3903

; <label>:12:                                     ; preds = %3
  tail call void @luaX_syntaxerror(%struct.LexState* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i64 0, i64 0)) #5, !dbg !3903
  br label %13, !dbg !3903

; <label>:13:                                     ; preds = %3, %12
  %14 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0, !dbg !3909
  %15 = load i32, i32* %14, align 8, !dbg !3909, !tbaa !623
  switch i32 %15, label %91 [
    i32 44, label %16
    i32 61, label %96
  ], !dbg !3910

; <label>:16:                                     ; preds = %13
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !3911
  %17 = bitcast %struct.LHS_assign* %5 to i8*, !dbg !3912
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %17) #4, !dbg !3912
  %18 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %5, i64 0, i32 0, !dbg !3913
  store %struct.LHS_assign* %1, %struct.LHS_assign** %18, align 8, !dbg !3914, !tbaa !2066
  %19 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %5, i64 0, i32 1, !dbg !3915
  call fastcc void @primaryexp(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %19) #6, !dbg !3916
  %20 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %19, i64 0, i32 0, !dbg !3917
  %21 = load i32, i32* %20, align 8, !dbg !3917, !tbaa !2058
  %22 = icmp eq i32 %21, 6, !dbg !3919
  br i1 %22, label %23, label %63, !dbg !3920

; <label>:23:                                     ; preds = %16
  %24 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !3935
  %25 = load %struct.FuncState*, %struct.FuncState** %24, align 8, !dbg !3935, !tbaa !651
  %26 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %25, i64 0, i32 9, !dbg !3937
  %27 = load i32, i32* %26, align 4, !dbg !3937, !tbaa !657
  %28 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %5, i64 0, i32 1, i32 1
  %29 = bitcast %union.anon.3* %28 to i32*
  br label %30, !dbg !3940

; <label>:30:                                     ; preds = %52, %23
  %31 = phi i32 [ 0, %23 ], [ %53, %52 ]
  %32 = phi %struct.LHS_assign* [ %1, %23 ], [ %55, %52 ]
  %33 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %32, i64 0, i32 1, i32 0, !dbg !3942
  %34 = load i32, i32* %33, align 8, !dbg !3942, !tbaa !2058
  %35 = icmp eq i32 %34, 9, !dbg !3946
  br i1 %35, label %36, label %52, !dbg !3947

; <label>:36:                                     ; preds = %30
  %37 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %32, i64 0, i32 1, i32 1, !dbg !3948
  %38 = bitcast %union.anon.3* %37 to %struct.anon.4*, !dbg !3951
  %39 = bitcast %union.anon.3* %37 to i32*, !dbg !3952
  %40 = load i32, i32* %39, align 8, !dbg !3952, !tbaa !755
  %41 = load i32, i32* %29, align 8, !dbg !3953, !tbaa !755
  %42 = icmp eq i32 %40, %41, !dbg !3954
  br i1 %42, label %43, label %45, !dbg !3955

; <label>:43:                                     ; preds = %36
  store i32 %27, i32* %39, align 8, !dbg !3956, !tbaa !755
  %44 = load i32, i32* %29, align 8, !dbg !3958, !tbaa !755
  br label %45, !dbg !3960

; <label>:45:                                     ; preds = %43, %36
  %46 = phi i32 [ %44, %43 ], [ %41, %36 ], !dbg !3958
  %47 = phi i32 [ 1, %43 ], [ %31, %36 ], !dbg !3961
  %48 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %38, i64 0, i32 1, !dbg !3962
  %49 = load i32, i32* %48, align 4, !dbg !3962, !tbaa !755
  %50 = icmp eq i32 %49, %46, !dbg !3963
  br i1 %50, label %51, label %52, !dbg !3964

; <label>:51:                                     ; preds = %45
  store i32 %27, i32* %48, align 4, !dbg !3965, !tbaa !755
  br label %52, !dbg !3967

; <label>:52:                                     ; preds = %51, %45, %30
  %53 = phi i32 [ 1, %51 ], [ %47, %45 ], [ %31, %30 ], !dbg !3961
  %54 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %32, i64 0, i32 0, !dbg !3968
  %55 = load %struct.LHS_assign*, %struct.LHS_assign** %54, align 8, !dbg !3968, !tbaa !2066
  %56 = icmp eq %struct.LHS_assign* %55, null, !dbg !3940
  br i1 %56, label %57, label %30, !dbg !3940, !llvm.loop !3969

; <label>:57:                                     ; preds = %52
  %58 = icmp eq i32 %53, 0, !dbg !3972
  br i1 %58, label %63, label %59, !dbg !3974

; <label>:59:                                     ; preds = %57
  %60 = load i32, i32* %26, align 4, !dbg !3975, !tbaa !657
  %61 = load i32, i32* %29, align 8, !dbg !3977, !tbaa !755
  %62 = call i32 @luaK_codeABC(%struct.FuncState* %25, i32 0, i32 %60, i32 %61, i32 0) #5, !dbg !3978
  call void @luaK_reserveregs(%struct.FuncState* %25, i32 1) #5, !dbg !3979
  br label %63, !dbg !3980

; <label>:63:                                     ; preds = %59, %57, %16
  %64 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !3981
  %65 = load %struct.lua_State*, %struct.lua_State** %64, align 8, !dbg !3981, !tbaa !611
  %66 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %65, i64 0, i32 15, !dbg !3981
  %67 = load i16, i16* %66, align 8, !dbg !3981, !tbaa !614
  %68 = zext i16 %67 to i32, !dbg !3981
  %69 = sub nsw i32 200, %68, !dbg !3981
  %70 = icmp slt i32 %69, %2, !dbg !3981
  br i1 %70, label %71, label %89, !dbg !3983

; <label>:71:                                     ; preds = %63
  %72 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !3981
  %73 = load %struct.FuncState*, %struct.FuncState** %72, align 8, !dbg !3981, !tbaa !651
  %74 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %73, i64 0, i32 0, !dbg !3988
  %75 = load %struct.Proto*, %struct.Proto** %74, align 8, !dbg !3988, !tbaa !585
  %76 = getelementptr inbounds %struct.Proto, %struct.Proto* %75, i64 0, i32 16, !dbg !3989
  %77 = load i32, i32* %76, align 8, !dbg !3989, !tbaa !2634
  %78 = icmp eq i32 %77, 0, !dbg !3990
  %79 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %73, i64 0, i32 4, !dbg !3991
  %80 = load %struct.lua_State*, %struct.lua_State** %79, align 8, !dbg !3991, !tbaa !722
  br i1 %78, label %81, label %83, !dbg !3992

; <label>:81:                                     ; preds = %71
  %82 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %80, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %69, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i64 0, i64 0)) #5, !dbg !3993
  br label %85, !dbg !3992

; <label>:83:                                     ; preds = %71
  %84 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %80, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %77, i32 %69, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i64 0, i64 0)) #5, !dbg !3994
  br label %85, !dbg !3992

; <label>:85:                                     ; preds = %81, %83
  %86 = phi i8* [ %82, %81 ], [ %84, %83 ], !dbg !3992
  %87 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %73, i64 0, i32 3, !dbg !3996
  %88 = load %struct.LexState*, %struct.LexState** %87, align 8, !dbg !3996, !tbaa !719
  call void @luaX_lexerror(%struct.LexState* %88, i8* %86, i32 0) #5, !dbg !3997
  br label %89, !dbg !3981

; <label>:89:                                     ; preds = %85, %63
  %90 = add nsw i32 %2, 1, !dbg !3998
  call fastcc void @assignment(%struct.LexState* nonnull %0, %struct.LHS_assign* nonnull %5, i32 %90) #6, !dbg !4000
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %17) #4, !dbg !4001
  br label %125, !dbg !4002

; <label>:91:                                     ; preds = %13
  %92 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !4008
  %93 = load %struct.lua_State*, %struct.lua_State** %92, align 8, !dbg !4008, !tbaa !611
  %94 = tail call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 61) #5, !dbg !4009
  %95 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %93, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %94) #5, !dbg !4010
  tail call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %95) #5, !dbg !4011
  br label %96, !dbg !4012

; <label>:96:                                     ; preds = %13, %91
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !4013
  %97 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %4, i32 0) #5, !dbg !4022
  %98 = load i32, i32* %14, align 8, !dbg !4026, !tbaa !623
  %99 = icmp eq i32 %98, 44, !dbg !4027
  br i1 %99, label %100, label %109, !dbg !4028

; <label>:100:                                    ; preds = %96
  %101 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  br label %102, !dbg !4028

; <label>:102:                                    ; preds = %100, %102
  %103 = phi i32 [ 1, %100 ], [ %106, %102 ]
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !4029
  %104 = load %struct.FuncState*, %struct.FuncState** %101, align 8, !dbg !4030, !tbaa !651
  call void @luaK_exp2nextreg(%struct.FuncState* %104, %struct.expdesc* nonnull %4) #5, !dbg !4031
  %105 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %4, i32 0) #5, !dbg !4035
  %106 = add nuw nsw i32 %103, 1, !dbg !4036
  %107 = load i32, i32* %14, align 8, !dbg !4026, !tbaa !623
  %108 = icmp eq i32 %107, 44, !dbg !4027
  br i1 %108, label %102, label %109, !dbg !4028, !llvm.loop !1372

; <label>:109:                                    ; preds = %102, %96
  %110 = phi i32 [ 1, %96 ], [ %106, %102 ], !dbg !4037
  %111 = icmp eq i32 %110, %2, !dbg !4039
  br i1 %111, label %121, label %112, !dbg !4041

; <label>:112:                                    ; preds = %109
  call fastcc void @adjust_assign(%struct.LexState* nonnull %0, i32 %2, i32 %110, %struct.expdesc* nonnull %4) #6, !dbg !4042
  %113 = icmp sgt i32 %110, %2, !dbg !4044
  br i1 %113, label %114, label %125, !dbg !4046

; <label>:114:                                    ; preds = %112
  %115 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !4047
  %116 = load %struct.FuncState*, %struct.FuncState** %115, align 8, !dbg !4047, !tbaa !651
  %117 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %116, i64 0, i32 9, !dbg !4048
  %118 = load i32, i32* %117, align 4, !dbg !4049, !tbaa !657
  %119 = sub i32 %2, %110, !dbg !4049
  %120 = add i32 %119, %118, !dbg !4049
  store i32 %120, i32* %117, align 4, !dbg !4049, !tbaa !657
  br label %125, !dbg !4050

; <label>:121:                                    ; preds = %109
  %122 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !4051
  %123 = load %struct.FuncState*, %struct.FuncState** %122, align 8, !dbg !4051, !tbaa !651
  call void @luaK_setoneret(%struct.FuncState* %123, %struct.expdesc* nonnull %4) #5, !dbg !4053
  %124 = load %struct.FuncState*, %struct.FuncState** %122, align 8, !dbg !4054, !tbaa !651
  call void @luaK_storevar(%struct.FuncState* %124, %struct.expdesc* nonnull %7, %struct.expdesc* nonnull %4) #5, !dbg !4055
  br label %136

; <label>:125:                                    ; preds = %112, %114, %89
  %126 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !4056
  %127 = load %struct.FuncState*, %struct.FuncState** %126, align 8, !dbg !4056, !tbaa !651
  %128 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %127, i64 0, i32 9, !dbg !4057
  %129 = load i32, i32* %128, align 4, !dbg !4057, !tbaa !657
  %130 = add nsw i32 %129, -1, !dbg !4058
  %131 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 2, !dbg !4063
  store i32 -1, i32* %131, align 8, !dbg !4064, !tbaa !1804
  %132 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 3, !dbg !4065
  store i32 -1, i32* %132, align 4, !dbg !4066, !tbaa !985
  %133 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 0, !dbg !4067
  store i32 12, i32* %133, align 8, !dbg !4068, !tbaa !976
  %134 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 1, !dbg !4069
  %135 = bitcast %union.anon.3* %134 to i32*, !dbg !4070
  store i32 %130, i32* %135, align 8, !dbg !4071, !tbaa !755
  call void @luaK_storevar(%struct.FuncState* %127, %struct.expdesc* nonnull %7, %struct.expdesc* nonnull %4) #5, !dbg !4072
  br label %136, !dbg !4073

; <label>:136:                                    ; preds = %121, %125
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #4, !dbg !4073
  ret void, !dbg !4073
}

; Function Attrs: noredzone
declare hidden void @luaK_setoneret(%struct.FuncState*, %struct.expdesc*) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }
attributes #6 = { nobuiltin noredzone }

!llvm.module.flags = !{!472, !473, !474}
!llvm.ident = !{!475}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "priority", scope: !2, file: !3, line: 813, type: !464, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !124, globals: !463)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lparser.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{!5, !40, !58, !77, !83}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "RESERVED", file: !6, line: 24, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/llex.h", directory: "/root/.unikraft/apps/redis/build")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39}
!9 = !DIEnumerator(name: "TK_AND", value: 257, isUnsigned: true)
!10 = !DIEnumerator(name: "TK_BREAK", value: 258, isUnsigned: true)
!11 = !DIEnumerator(name: "TK_DO", value: 259, isUnsigned: true)
!12 = !DIEnumerator(name: "TK_ELSE", value: 260, isUnsigned: true)
!13 = !DIEnumerator(name: "TK_ELSEIF", value: 261, isUnsigned: true)
!14 = !DIEnumerator(name: "TK_END", value: 262, isUnsigned: true)
!15 = !DIEnumerator(name: "TK_FALSE", value: 263, isUnsigned: true)
!16 = !DIEnumerator(name: "TK_FOR", value: 264, isUnsigned: true)
!17 = !DIEnumerator(name: "TK_FUNCTION", value: 265, isUnsigned: true)
!18 = !DIEnumerator(name: "TK_IF", value: 266, isUnsigned: true)
!19 = !DIEnumerator(name: "TK_IN", value: 267, isUnsigned: true)
!20 = !DIEnumerator(name: "TK_LOCAL", value: 268, isUnsigned: true)
!21 = !DIEnumerator(name: "TK_NIL", value: 269, isUnsigned: true)
!22 = !DIEnumerator(name: "TK_NOT", value: 270, isUnsigned: true)
!23 = !DIEnumerator(name: "TK_OR", value: 271, isUnsigned: true)
!24 = !DIEnumerator(name: "TK_REPEAT", value: 272, isUnsigned: true)
!25 = !DIEnumerator(name: "TK_RETURN", value: 273, isUnsigned: true)
!26 = !DIEnumerator(name: "TK_THEN", value: 274, isUnsigned: true)
!27 = !DIEnumerator(name: "TK_TRUE", value: 275, isUnsigned: true)
!28 = !DIEnumerator(name: "TK_UNTIL", value: 276, isUnsigned: true)
!29 = !DIEnumerator(name: "TK_WHILE", value: 277, isUnsigned: true)
!30 = !DIEnumerator(name: "TK_CONCAT", value: 278, isUnsigned: true)
!31 = !DIEnumerator(name: "TK_DOTS", value: 279, isUnsigned: true)
!32 = !DIEnumerator(name: "TK_EQ", value: 280, isUnsigned: true)
!33 = !DIEnumerator(name: "TK_GE", value: 281, isUnsigned: true)
!34 = !DIEnumerator(name: "TK_LE", value: 282, isUnsigned: true)
!35 = !DIEnumerator(name: "TK_NE", value: 283, isUnsigned: true)
!36 = !DIEnumerator(name: "TK_NUMBER", value: 284, isUnsigned: true)
!37 = !DIEnumerator(name: "TK_NAME", value: 285, isUnsigned: true)
!38 = !DIEnumerator(name: "TK_STRING", value: 286, isUnsigned: true)
!39 = !DIEnumerator(name: "TK_EOS", value: 287, isUnsigned: true)
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !41, line: 19, baseType: !7, size: 32, elements: !42)
!41 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lparser.h", directory: "/root/.unikraft/apps/redis/build")
!42 = !{!43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57}
!43 = !DIEnumerator(name: "VVOID", value: 0, isUnsigned: true)
!44 = !DIEnumerator(name: "VNIL", value: 1, isUnsigned: true)
!45 = !DIEnumerator(name: "VTRUE", value: 2, isUnsigned: true)
!46 = !DIEnumerator(name: "VFALSE", value: 3, isUnsigned: true)
!47 = !DIEnumerator(name: "VK", value: 4, isUnsigned: true)
!48 = !DIEnumerator(name: "VKNUM", value: 5, isUnsigned: true)
!49 = !DIEnumerator(name: "VLOCAL", value: 6, isUnsigned: true)
!50 = !DIEnumerator(name: "VUPVAL", value: 7, isUnsigned: true)
!51 = !DIEnumerator(name: "VGLOBAL", value: 8, isUnsigned: true)
!52 = !DIEnumerator(name: "VINDEXED", value: 9, isUnsigned: true)
!53 = !DIEnumerator(name: "VJMP", value: 10, isUnsigned: true)
!54 = !DIEnumerator(name: "VRELOCABLE", value: 11, isUnsigned: true)
!55 = !DIEnumerator(name: "VNONRELOC", value: 12, isUnsigned: true)
!56 = !DIEnumerator(name: "VCALL", value: 13, isUnsigned: true)
!57 = !DIEnumerator(name: "VVARARG", value: 14, isUnsigned: true)
!58 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "BinOpr", file: !59, line: 26, baseType: !7, size: 32, elements: !60)
!59 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lcode.h", directory: "/root/.unikraft/apps/redis/build")
!60 = !{!61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76}
!61 = !DIEnumerator(name: "OPR_ADD", value: 0, isUnsigned: true)
!62 = !DIEnumerator(name: "OPR_SUB", value: 1, isUnsigned: true)
!63 = !DIEnumerator(name: "OPR_MUL", value: 2, isUnsigned: true)
!64 = !DIEnumerator(name: "OPR_DIV", value: 3, isUnsigned: true)
!65 = !DIEnumerator(name: "OPR_MOD", value: 4, isUnsigned: true)
!66 = !DIEnumerator(name: "OPR_POW", value: 5, isUnsigned: true)
!67 = !DIEnumerator(name: "OPR_CONCAT", value: 6, isUnsigned: true)
!68 = !DIEnumerator(name: "OPR_NE", value: 7, isUnsigned: true)
!69 = !DIEnumerator(name: "OPR_EQ", value: 8, isUnsigned: true)
!70 = !DIEnumerator(name: "OPR_LT", value: 9, isUnsigned: true)
!71 = !DIEnumerator(name: "OPR_LE", value: 10, isUnsigned: true)
!72 = !DIEnumerator(name: "OPR_GT", value: 11, isUnsigned: true)
!73 = !DIEnumerator(name: "OPR_GE", value: 12, isUnsigned: true)
!74 = !DIEnumerator(name: "OPR_AND", value: 13, isUnsigned: true)
!75 = !DIEnumerator(name: "OPR_OR", value: 14, isUnsigned: true)
!76 = !DIEnumerator(name: "OPR_NOBINOPR", value: 15, isUnsigned: true)
!77 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "UnOpr", file: !59, line: 36, baseType: !7, size: 32, elements: !78)
!78 = !{!79, !80, !81, !82}
!79 = !DIEnumerator(name: "OPR_MINUS", value: 0, isUnsigned: true)
!80 = !DIEnumerator(name: "OPR_NOT", value: 1, isUnsigned: true)
!81 = !DIEnumerator(name: "OPR_LEN", value: 2, isUnsigned: true)
!82 = !DIEnumerator(name: "OPR_NOUNOPR", value: 3, isUnsigned: true)
!83 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !84, line: 150, baseType: !7, size: 32, elements: !85)
!84 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lopcodes.h", directory: "/root/.unikraft/apps/redis/build")
!85 = !{!86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123}
!86 = !DIEnumerator(name: "OP_MOVE", value: 0, isUnsigned: true)
!87 = !DIEnumerator(name: "OP_LOADK", value: 1, isUnsigned: true)
!88 = !DIEnumerator(name: "OP_LOADBOOL", value: 2, isUnsigned: true)
!89 = !DIEnumerator(name: "OP_LOADNIL", value: 3, isUnsigned: true)
!90 = !DIEnumerator(name: "OP_GETUPVAL", value: 4, isUnsigned: true)
!91 = !DIEnumerator(name: "OP_GETGLOBAL", value: 5, isUnsigned: true)
!92 = !DIEnumerator(name: "OP_GETTABLE", value: 6, isUnsigned: true)
!93 = !DIEnumerator(name: "OP_SETGLOBAL", value: 7, isUnsigned: true)
!94 = !DIEnumerator(name: "OP_SETUPVAL", value: 8, isUnsigned: true)
!95 = !DIEnumerator(name: "OP_SETTABLE", value: 9, isUnsigned: true)
!96 = !DIEnumerator(name: "OP_NEWTABLE", value: 10, isUnsigned: true)
!97 = !DIEnumerator(name: "OP_SELF", value: 11, isUnsigned: true)
!98 = !DIEnumerator(name: "OP_ADD", value: 12, isUnsigned: true)
!99 = !DIEnumerator(name: "OP_SUB", value: 13, isUnsigned: true)
!100 = !DIEnumerator(name: "OP_MUL", value: 14, isUnsigned: true)
!101 = !DIEnumerator(name: "OP_DIV", value: 15, isUnsigned: true)
!102 = !DIEnumerator(name: "OP_MOD", value: 16, isUnsigned: true)
!103 = !DIEnumerator(name: "OP_POW", value: 17, isUnsigned: true)
!104 = !DIEnumerator(name: "OP_UNM", value: 18, isUnsigned: true)
!105 = !DIEnumerator(name: "OP_NOT", value: 19, isUnsigned: true)
!106 = !DIEnumerator(name: "OP_LEN", value: 20, isUnsigned: true)
!107 = !DIEnumerator(name: "OP_CONCAT", value: 21, isUnsigned: true)
!108 = !DIEnumerator(name: "OP_JMP", value: 22, isUnsigned: true)
!109 = !DIEnumerator(name: "OP_EQ", value: 23, isUnsigned: true)
!110 = !DIEnumerator(name: "OP_LT", value: 24, isUnsigned: true)
!111 = !DIEnumerator(name: "OP_LE", value: 25, isUnsigned: true)
!112 = !DIEnumerator(name: "OP_TEST", value: 26, isUnsigned: true)
!113 = !DIEnumerator(name: "OP_TESTSET", value: 27, isUnsigned: true)
!114 = !DIEnumerator(name: "OP_CALL", value: 28, isUnsigned: true)
!115 = !DIEnumerator(name: "OP_TAILCALL", value: 29, isUnsigned: true)
!116 = !DIEnumerator(name: "OP_RETURN", value: 30, isUnsigned: true)
!117 = !DIEnumerator(name: "OP_FORLOOP", value: 31, isUnsigned: true)
!118 = !DIEnumerator(name: "OP_FORPREP", value: 32, isUnsigned: true)
!119 = !DIEnumerator(name: "OP_TFORLOOP", value: 33, isUnsigned: true)
!120 = !DIEnumerator(name: "OP_SETLIST", value: 34, isUnsigned: true)
!121 = !DIEnumerator(name: "OP_CLOSE", value: 35, isUnsigned: true)
!122 = !DIEnumerator(name: "OP_CLOSURE", value: 36, isUnsigned: true)
!123 = !DIEnumerator(name: "OP_VARARG", value: 37, isUnsigned: true)
!124 = !{!125, !293, !203, !423, !163, !427, !189, !458, !461, !436, !375, !347, !358, !137, !151}
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCObject", file: !127, line: 36, baseType: !128)
!127 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lobject.h", directory: "/root/.unikraft/apps/redis/build")
!128 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "GCObject", file: !129, line: 136, size: 1472, elements: !130)
!129 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lstate.h", directory: "/root/.unikraft/apps/redis/build")
!130 = !{!131, !141, !168, !228, !454, !455, !456, !457}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "gch", scope: !128, file: !129, line: 137, baseType: !132, size: 128)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCheader", file: !127, line: 51, baseType: !133)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GCheader", file: !127, line: 49, size: 128, elements: !134)
!134 = !{!135, !136, !140}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !133, file: !127, line: 50, baseType: !125, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !133, file: !127, line: 50, baseType: !137, size: 8, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "lu_byte", file: !138, line: 27, baseType: !139)
!138 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/llimits.h", directory: "/root/.unikraft/apps/redis/build")
!139 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !133, file: !127, line: 50, baseType: !137, size: 8, offset: 72)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !128, file: !129, line: 138, baseType: !142, size: 192)
!142 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "TString", file: !127, line: 199, size: 192, elements: !143)
!143 = !{!144, !154}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !142, file: !127, line: 200, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "L_Umaxalign", file: !138, line: 47, baseType: !146)
!146 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !138, line: 47, size: 64, elements: !147)
!147 = !{!148, !150, !152}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !146, file: !138, line: 47, baseType: !149, size: 64)
!149 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !146, file: !138, line: 47, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !146, file: !138, line: 47, baseType: !153, size: 64)
!153 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "tsv", scope: !142, file: !127, line: 206, baseType: !155, size: 192)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !142, file: !127, line: 201, size: 192, elements: !156)
!156 = !{!157, !158, !159, !160, !161, !162}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !155, file: !127, line: 202, baseType: !125, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !155, file: !127, line: 202, baseType: !137, size: 8, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !155, file: !127, line: 202, baseType: !137, size: 8, offset: 72)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !155, file: !127, line: 203, baseType: !137, size: 8, offset: 80)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !155, file: !127, line: 204, baseType: !7, size: 32, offset: 96)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !155, file: !127, line: 205, baseType: !163, size: 64, offset: 128)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !164, line: 40, baseType: !165)
!164 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !166, line: 129, baseType: !167)
!166 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!167 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !128, file: !129, line: 139, baseType: !169, size: 320)
!169 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "Udata", file: !127, line: 215, size: 320, elements: !170)
!170 = !{!171, !172}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !169, file: !127, line: 216, baseType: !145, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "uv", scope: !169, file: !127, line: 222, baseType: !173, size: 320)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !169, file: !127, line: 217, size: 320, elements: !174)
!174 = !{!175, !176, !177, !178, !226, !227}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !173, file: !127, line: 218, baseType: !125, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !173, file: !127, line: 218, baseType: !137, size: 8, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !173, file: !127, line: 218, baseType: !137, size: 8, offset: 72)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "metatable", scope: !173, file: !127, line: 219, baseType: !179, size: 64, offset: 128)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Table", file: !127, line: 338, size: 512, elements: !181)
!181 = !{!182, !183, !184, !185, !186, !187, !188, !205, !223, !224, !225}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !180, file: !127, line: 339, baseType: !125, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !180, file: !127, line: 339, baseType: !137, size: 8, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !180, file: !127, line: 339, baseType: !137, size: 8, offset: 72)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !180, file: !127, line: 340, baseType: !137, size: 8, offset: 80)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "lsizenode", scope: !180, file: !127, line: 341, baseType: !137, size: 8, offset: 88)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "metatable", scope: !180, file: !127, line: 342, baseType: !179, size: 64, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "array", scope: !180, file: !127, line: 343, baseType: !189, size: 64, offset: 192)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "TValue", file: !127, line: 75, baseType: !191)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lua_TValue", file: !127, line: 73, size: 128, elements: !192)
!192 = !{!193, !204}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !191, file: !127, line: 74, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "Value", file: !127, line: 64, baseType: !195)
!195 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !127, line: 59, size: 64, elements: !196)
!196 = !{!197, !198, !199, !202}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !195, file: !127, line: 60, baseType: !125, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !195, file: !127, line: 61, baseType: !151, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !195, file: !127, line: 62, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Number", file: !201, line: 99, baseType: !149)
!201 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lua.h", directory: "/root/.unikraft/apps/redis/build")
!202 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !195, file: !127, line: 63, baseType: !203, size: 32)
!203 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !191, file: !127, line: 74, baseType: !203, size: 32, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !180, file: !127, line: 344, baseType: !206, size: 64, offset: 256)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "Node", file: !127, line: 335, baseType: !208)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Node", file: !127, line: 332, size: 320, elements: !209)
!209 = !{!210, !211}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "i_val", scope: !208, file: !127, line: 333, baseType: !190, size: 128)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "i_key", scope: !208, file: !127, line: 334, baseType: !212, size: 192, offset: 128)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "TKey", file: !127, line: 329, baseType: !213)
!213 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "TKey", file: !127, line: 323, size: 192, elements: !214)
!214 = !{!215, !222}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "nk", scope: !213, file: !127, line: 327, baseType: !216, size: 192)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !213, file: !127, line: 324, size: 192, elements: !217)
!217 = !{!218, !219, !220}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !216, file: !127, line: 325, baseType: !194, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !216, file: !127, line: 325, baseType: !203, size: 32, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !216, file: !127, line: 326, baseType: !221, size: 64, offset: 128)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "tvk", scope: !213, file: !127, line: 328, baseType: !190, size: 128)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "lastfree", scope: !180, file: !127, line: 345, baseType: !206, size: 64, offset: 320)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !180, file: !127, line: 346, baseType: !125, size: 64, offset: 384)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "sizearray", scope: !180, file: !127, line: 347, baseType: !203, size: 32, offset: 448)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !173, file: !127, line: 220, baseType: !179, size: 64, offset: 192)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !173, file: !127, line: 221, baseType: !163, size: 64, offset: 256)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !128, file: !129, line: 140, baseType: !229, size: 448)
!229 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "Closure", file: !127, line: 309, size: 448, elements: !230)
!230 = !{!231, !403}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !229, file: !127, line: 310, baseType: !232, size: 448)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "CClosure", file: !127, line: 299, baseType: !233)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CClosure", file: !127, line: 295, size: 448, elements: !234)
!234 = !{!235, !236, !237, !238, !239, !240, !241, !242, !399}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !233, file: !127, line: 296, baseType: !125, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !233, file: !127, line: 296, baseType: !137, size: 8, offset: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !233, file: !127, line: 296, baseType: !137, size: 8, offset: 72)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "isC", scope: !233, file: !127, line: 296, baseType: !137, size: 8, offset: 80)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "nupvalues", scope: !233, file: !127, line: 296, baseType: !137, size: 8, offset: 88)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !233, file: !127, line: 296, baseType: !125, size: 64, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !233, file: !127, line: 296, baseType: !179, size: 64, offset: 192)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !233, file: !127, line: 297, baseType: !243, size: 64, offset: 256)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_CFunction", file: !201, line: 52, baseType: !244)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{!203, !247}
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_State", file: !201, line: 50, baseType: !249)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lua_State", file: !129, line: 100, size: 1472, elements: !250)
!250 = !{!251, !252, !253, !254, !255, !257, !258, !336, !350, !351, !352, !353, !354, !355, !356, !357, !359, !360, !361, !362, !363, !364, !389, !390, !391, !392, !393, !396}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !249, file: !129, line: 101, baseType: !125, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !249, file: !129, line: 101, baseType: !137, size: 8, offset: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !249, file: !129, line: 101, baseType: !137, size: 8, offset: 72)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !249, file: !129, line: 102, baseType: !137, size: 8, offset: 80)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !249, file: !129, line: 103, baseType: !256, size: 64, offset: 128)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "StkId", file: !127, line: 193, baseType: !189)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !249, file: !129, line: 104, baseType: !256, size: 64, offset: 192)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "l_G", scope: !249, file: !129, line: 105, baseType: !259, size: 64, offset: 256)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "global_State", file: !129, line: 94, baseType: !261)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "global_State", file: !129, line: 68, size: 3456, elements: !262)
!262 = !{!263, !272, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !297, !299, !300, !301, !302, !303, !304, !305, !306, !308, !326, !330}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "strt", scope: !261, file: !129, line: 69, baseType: !264, size: 128)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "stringtable", file: !129, line: 42, baseType: !265)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stringtable", file: !129, line: 38, size: 128, elements: !266)
!266 = !{!267, !269, !271}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !265, file: !129, line: 39, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "nuse", scope: !265, file: !129, line: 40, baseType: !270, size: 32, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "lu_int32", file: !138, line: 18, baseType: !7)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !265, file: !129, line: 41, baseType: !203, size: 32, offset: 96)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "frealloc", scope: !261, file: !129, line: 70, baseType: !273, size: 64, offset: 128)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Alloc", file: !201, line: 66, baseType: !274)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DISubroutineType(types: !276)
!276 = !{!151, !151, !151, !163, !163}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "ud", scope: !261, file: !129, line: 71, baseType: !151, size: 64, offset: 192)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "currentwhite", scope: !261, file: !129, line: 72, baseType: !137, size: 8, offset: 256)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "gcstate", scope: !261, file: !129, line: 73, baseType: !137, size: 8, offset: 264)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "sweepstrgc", scope: !261, file: !129, line: 74, baseType: !203, size: 32, offset: 288)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "rootgc", scope: !261, file: !129, line: 75, baseType: !125, size: 64, offset: 320)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "sweepgc", scope: !261, file: !129, line: 76, baseType: !268, size: 64, offset: 384)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "gray", scope: !261, file: !129, line: 77, baseType: !125, size: 64, offset: 448)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "grayagain", scope: !261, file: !129, line: 78, baseType: !125, size: 64, offset: 512)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "weak", scope: !261, file: !129, line: 79, baseType: !125, size: 64, offset: 576)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "tmudata", scope: !261, file: !129, line: 80, baseType: !125, size: 64, offset: 640)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "buff", scope: !261, file: !129, line: 81, baseType: !288, size: 192, offset: 704)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "Mbuffer", file: !289, line: 28, baseType: !290)
!289 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lzio.h", directory: "/root/.unikraft/apps/redis/build")
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Mbuffer", file: !289, line: 24, size: 192, elements: !291)
!291 = !{!292, !295, !296}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !290, file: !289, line: 25, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !290, file: !289, line: 26, baseType: !163, size: 64, offset: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "buffsize", scope: !290, file: !289, line: 27, baseType: !163, size: 64, offset: 128)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "GCthreshold", scope: !261, file: !129, line: 82, baseType: !298, size: 64, offset: 896)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "lu_mem", file: !138, line: 20, baseType: !163)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "totalbytes", scope: !261, file: !129, line: 83, baseType: !298, size: 64, offset: 960)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "estimate", scope: !261, file: !129, line: 84, baseType: !298, size: 64, offset: 1024)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "gcdept", scope: !261, file: !129, line: 85, baseType: !298, size: 64, offset: 1088)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "gcpause", scope: !261, file: !129, line: 86, baseType: !203, size: 32, offset: 1152)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "gcstepmul", scope: !261, file: !129, line: 87, baseType: !203, size: 32, offset: 1184)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "panic", scope: !261, file: !129, line: 88, baseType: !243, size: 64, offset: 1216)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "l_registry", scope: !261, file: !129, line: 89, baseType: !190, size: 128, offset: 1280)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "mainthread", scope: !261, file: !129, line: 90, baseType: !307, size: 64, offset: 1408)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "uvhead", scope: !261, file: !129, line: 91, baseType: !309, size: 320, offset: 1472)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "UpVal", file: !127, line: 284, baseType: !310)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "UpVal", file: !127, line: 274, size: 320, elements: !311)
!311 = !{!312, !313, !314, !315, !316}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !310, file: !127, line: 275, baseType: !125, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !310, file: !127, line: 275, baseType: !137, size: 8, offset: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !310, file: !127, line: 275, baseType: !137, size: 8, offset: 72)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !310, file: !127, line: 276, baseType: !189, size: 64, offset: 128)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !310, file: !127, line: 283, baseType: !317, size: 128, offset: 192)
!317 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !310, file: !127, line: 277, size: 128, elements: !318)
!318 = !{!319, !320}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !317, file: !127, line: 278, baseType: !190, size: 128)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !317, file: !127, line: 282, baseType: !321, size: 128)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !317, file: !127, line: 279, size: 128, elements: !322)
!322 = !{!323, !325}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !321, file: !127, line: 280, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !321, file: !127, line: 281, baseType: !324, size: 64, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "mt", scope: !261, file: !129, line: 92, baseType: !327, size: 576, offset: 1792)
!327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 576, elements: !328)
!328 = !{!329}
!329 = !DISubrange(count: 9)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "tmname", scope: !261, file: !129, line: 93, baseType: !331, size: 1088, offset: 2368)
!331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !332, size: 1088, elements: !334)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "TString", file: !127, line: 207, baseType: !142)
!334 = !{!335}
!335 = !DISubrange(count: 17)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "ci", scope: !249, file: !129, line: 106, baseType: !337, size: 64, offset: 320)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "CallInfo", file: !129, line: 55, baseType: !339)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CallInfo", file: !129, line: 48, size: 320, elements: !340)
!340 = !{!341, !342, !343, !344, !348, !349}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !339, file: !129, line: 49, baseType: !256, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !339, file: !129, line: 50, baseType: !256, size: 64, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !339, file: !129, line: 51, baseType: !256, size: 64, offset: 128)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "savedpc", scope: !339, file: !129, line: 52, baseType: !345, size: 64, offset: 192)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !347)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "Instruction", file: !138, line: 88, baseType: !270)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "nresults", scope: !339, file: !129, line: 53, baseType: !203, size: 32, offset: 256)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "tailcalls", scope: !339, file: !129, line: 54, baseType: !203, size: 32, offset: 288)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "savedpc", scope: !249, file: !129, line: 107, baseType: !345, size: 64, offset: 384)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "stack_last", scope: !249, file: !129, line: 108, baseType: !256, size: 64, offset: 448)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !249, file: !129, line: 109, baseType: !256, size: 64, offset: 512)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "end_ci", scope: !249, file: !129, line: 110, baseType: !337, size: 64, offset: 576)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "base_ci", scope: !249, file: !129, line: 111, baseType: !337, size: 64, offset: 640)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "stacksize", scope: !249, file: !129, line: 112, baseType: !203, size: 32, offset: 704)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "size_ci", scope: !249, file: !129, line: 113, baseType: !203, size: 32, offset: 736)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "nCcalls", scope: !249, file: !129, line: 114, baseType: !358, size: 16, offset: 768)
!358 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "baseCcalls", scope: !249, file: !129, line: 115, baseType: !358, size: 16, offset: 784)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "hookmask", scope: !249, file: !129, line: 116, baseType: !137, size: 8, offset: 800)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "allowhook", scope: !249, file: !129, line: 117, baseType: !137, size: 8, offset: 808)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "basehookcount", scope: !249, file: !129, line: 118, baseType: !203, size: 32, offset: 832)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "hookcount", scope: !249, file: !129, line: 119, baseType: !203, size: 32, offset: 864)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "hook", scope: !249, file: !129, line: 120, baseType: !365, size: 64, offset: 896)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Hook", file: !201, line: 330, baseType: !366)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DISubroutineType(types: !368)
!368 = !{null, !247, !369}
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Debug", file: !201, line: 326, baseType: !371)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lua_Debug", file: !201, line: 346, size: 960, elements: !372)
!372 = !{!373, !374, !377, !378, !379, !380, !381, !382, !383, !384, !388}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !371, file: !201, line: 347, baseType: !203, size: 32)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !371, file: !201, line: 348, baseType: !375, size: 64, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !294)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "namewhat", scope: !371, file: !201, line: 349, baseType: !375, size: 64, offset: 128)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "what", scope: !371, file: !201, line: 350, baseType: !375, size: 64, offset: 192)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !371, file: !201, line: 351, baseType: !375, size: 64, offset: 256)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "currentline", scope: !371, file: !201, line: 352, baseType: !203, size: 32, offset: 320)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "nups", scope: !371, file: !201, line: 353, baseType: !203, size: 32, offset: 352)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "linedefined", scope: !371, file: !201, line: 354, baseType: !203, size: 32, offset: 384)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "lastlinedefined", scope: !371, file: !201, line: 355, baseType: !203, size: 32, offset: 416)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "short_src", scope: !371, file: !201, line: 356, baseType: !385, size: 480, offset: 448)
!385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !294, size: 480, elements: !386)
!386 = !{!387}
!387 = !DISubrange(count: 60)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "i_ci", scope: !371, file: !201, line: 358, baseType: !203, size: 32, offset: 928)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "l_gt", scope: !249, file: !129, line: 121, baseType: !190, size: 128, offset: 960)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !249, file: !129, line: 122, baseType: !190, size: 128, offset: 1088)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "openupval", scope: !249, file: !129, line: 123, baseType: !125, size: 64, offset: 1216)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !249, file: !129, line: 124, baseType: !125, size: 64, offset: 1280)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "errorJmp", scope: !249, file: !129, line: 125, baseType: !394, size: 64, offset: 1344)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DICompositeType(tag: DW_TAG_structure_type, name: "lua_longjmp", file: !129, line: 18, flags: DIFlagFwdDecl)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "errfunc", scope: !249, file: !129, line: 126, baseType: !397, size: 64, offset: 1408)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !398, line: 49, baseType: !153)
!398 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!399 = !DIDerivedType(tag: DW_TAG_member, name: "upvalue", scope: !233, file: !127, line: 298, baseType: !400, size: 128, offset: 320)
!400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 128, elements: !401)
!401 = !{!402}
!402 = !DISubrange(count: 1)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !229, file: !127, line: 311, baseType: !404, size: 384)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "LClosure", file: !127, line: 306, baseType: !405)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LClosure", file: !127, line: 302, size: 384, elements: !406)
!406 = !{!407, !408, !409, !410, !411, !412, !413, !414, !451}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !405, file: !127, line: 303, baseType: !125, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !405, file: !127, line: 303, baseType: !137, size: 8, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !405, file: !127, line: 303, baseType: !137, size: 8, offset: 72)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "isC", scope: !405, file: !127, line: 303, baseType: !137, size: 8, offset: 80)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "nupvalues", scope: !405, file: !127, line: 303, baseType: !137, size: 8, offset: 88)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !405, file: !127, line: 303, baseType: !125, size: 64, offset: 128)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !405, file: !127, line: 303, baseType: !179, size: 64, offset: 192)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !405, file: !127, line: 304, baseType: !415, size: 64, offset: 256)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Proto", file: !127, line: 231, size: 960, elements: !417)
!417 = !{!418, !419, !420, !421, !422, !424, !426, !428, !435, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !416, file: !127, line: 232, baseType: !125, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !416, file: !127, line: 232, baseType: !137, size: 8, offset: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !416, file: !127, line: 232, baseType: !137, size: 8, offset: 72)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !416, file: !127, line: 233, baseType: !189, size: 64, offset: 128)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !416, file: !127, line: 234, baseType: !423, size: 64, offset: 192)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !416, file: !127, line: 235, baseType: !425, size: 64, offset: 256)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "lineinfo", scope: !416, file: !127, line: 236, baseType: !427, size: 64, offset: 320)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "locvars", scope: !416, file: !127, line: 237, baseType: !429, size: 64, offset: 384)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LocVar", file: !127, line: 262, size: 128, elements: !431)
!431 = !{!432, !433, !434}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "varname", scope: !430, file: !127, line: 263, baseType: !332, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "startpc", scope: !430, file: !127, line: 264, baseType: !203, size: 32, offset: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "endpc", scope: !430, file: !127, line: 265, baseType: !203, size: 32, offset: 96)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "upvalues", scope: !416, file: !127, line: 238, baseType: !436, size: 64, offset: 448)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !416, file: !127, line: 239, baseType: !332, size: 64, offset: 512)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "sizeupvalues", scope: !416, file: !127, line: 240, baseType: !203, size: 32, offset: 576)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "sizek", scope: !416, file: !127, line: 241, baseType: !203, size: 32, offset: 608)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "sizecode", scope: !416, file: !127, line: 242, baseType: !203, size: 32, offset: 640)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "sizelineinfo", scope: !416, file: !127, line: 243, baseType: !203, size: 32, offset: 672)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "sizep", scope: !416, file: !127, line: 244, baseType: !203, size: 32, offset: 704)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "sizelocvars", scope: !416, file: !127, line: 245, baseType: !203, size: 32, offset: 736)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "linedefined", scope: !416, file: !127, line: 246, baseType: !203, size: 32, offset: 768)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "lastlinedefined", scope: !416, file: !127, line: 247, baseType: !203, size: 32, offset: 800)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !416, file: !127, line: 248, baseType: !125, size: 64, offset: 832)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "nups", scope: !416, file: !127, line: 249, baseType: !137, size: 8, offset: 896)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "numparams", scope: !416, file: !127, line: 250, baseType: !137, size: 8, offset: 904)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "is_vararg", scope: !416, file: !127, line: 251, baseType: !137, size: 8, offset: 912)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "maxstacksize", scope: !416, file: !127, line: 252, baseType: !137, size: 8, offset: 920)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "upvals", scope: !405, file: !127, line: 305, baseType: !452, size: 64, offset: 320)
!452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !453, size: 64, elements: !401)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "h", scope: !128, file: !129, line: 141, baseType: !180, size: 512)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !128, file: !129, line: 142, baseType: !416, size: 960)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "uv", scope: !128, file: !129, line: 143, baseType: !310, size: 320)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "th", scope: !128, file: !129, line: 144, baseType: !249, size: 1472)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "Proto", file: !127, line: 253, baseType: !416)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "LocVar", file: !127, line: 266, baseType: !430)
!463 = !{!0}
!464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !465, size: 240, elements: !470)
!465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !466)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 810, size: 16, elements: !467)
!467 = !{!468, !469}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !466, file: !3, line: 811, baseType: !137, size: 8)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !466, file: !3, line: 812, baseType: !137, size: 8, offset: 8)
!470 = !{!471}
!471 = !DISubrange(count: 15)
!472 = !{i32 2, !"Dwarf Version", i32 4}
!473 = !{i32 2, !"Debug Info Version", i32 3}
!474 = !{i32 1, !"wchar_size", i32 4}
!475 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!476 = distinct !DISubprogram(name: "luaY_parser", scope: !3, file: !3, line: 383, type: !477, isLocal: false, isDefinition: true, scopeLine: 383, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !494)
!477 = !DISubroutineType(types: !478)
!478 = !{!459, !247, !479, !493, !375}
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZIO", file: !289, line: 18, baseType: !481)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Zio", file: !289, line: 56, size: 320, elements: !482)
!482 = !{!483, !484, !485, !491, !492}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !481, file: !289, line: 57, baseType: !163, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !481, file: !289, line: 58, baseType: !375, size: 64, offset: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "reader", scope: !481, file: !289, line: 59, baseType: !486, size: 64, offset: 128)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Reader", file: !201, line: 58, baseType: !487)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DISubroutineType(types: !489)
!489 = !{!375, !247, !151, !490}
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !481, file: !289, line: 60, baseType: !151, size: 64, offset: 192)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "L", scope: !481, file: !289, line: 61, baseType: !247, size: 64, offset: 256)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!494 = !{!495, !496, !497, !498, !499, !563}
!495 = !DILocalVariable(name: "L", arg: 1, scope: !476, file: !3, line: 383, type: !247)
!496 = !DILocalVariable(name: "z", arg: 2, scope: !476, file: !3, line: 383, type: !479)
!497 = !DILocalVariable(name: "buff", arg: 3, scope: !476, file: !3, line: 383, type: !493)
!498 = !DILocalVariable(name: "name", arg: 4, scope: !476, file: !3, line: 383, type: !375)
!499 = !DILocalVariable(name: "lexstate", scope: !476, file: !3, line: 384, type: !500)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LexState", file: !6, line: 55, size: 768, elements: !501)
!501 = !{!502, !503, !504, !505, !516, !517, !558, !559, !560, !561, !562}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !500, file: !6, line: 56, baseType: !203, size: 32)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "linenumber", scope: !500, file: !6, line: 57, baseType: !203, size: 32, offset: 32)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "lastline", scope: !500, file: !6, line: 58, baseType: !203, size: 32, offset: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "t", scope: !500, file: !6, line: 59, baseType: !506, size: 128, offset: 128)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "Token", file: !6, line: 52, baseType: !507)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Token", file: !6, line: 49, size: 128, elements: !508)
!508 = !{!509, !510}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !507, file: !6, line: 50, baseType: !203, size: 32)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "seminfo", scope: !507, file: !6, line: 51, baseType: !511, size: 64, offset: 64)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "SemInfo", file: !6, line: 46, baseType: !512)
!512 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !6, line: 43, size: 64, elements: !513)
!513 = !{!514, !515}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !512, file: !6, line: 44, baseType: !200, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !512, file: !6, line: 45, baseType: !332, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !500, file: !6, line: 60, baseType: !506, size: 128, offset: 256)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !500, file: !6, line: 61, baseType: !518, size: 64, offset: 384)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FuncState", file: !41, line: 58, size: 4800, elements: !520)
!520 = !{!521, !522, !525, !526, !528, !529, !538, !539, !540, !541, !542, !543, !544, !546, !547, !554}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !519, file: !41, line: 59, baseType: !459, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "h", scope: !519, file: !41, line: 60, baseType: !523, size: 64, offset: 64)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "Table", file: !127, line: 348, baseType: !180)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !519, file: !41, line: 61, baseType: !518, size: 64, offset: 128)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "ls", scope: !519, file: !41, line: 62, baseType: !527, size: 64, offset: 192)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "L", scope: !519, file: !41, line: 63, baseType: !307, size: 64, offset: 256)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "bl", scope: !519, file: !41, line: 64, baseType: !530, size: 64, offset: 320)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "BlockCnt", file: !3, line: 40, size: 128, elements: !532)
!532 = !{!533, !534, !535, !536, !537}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !531, file: !3, line: 41, baseType: !530, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "breaklist", scope: !531, file: !3, line: 42, baseType: !203, size: 32, offset: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "nactvar", scope: !531, file: !3, line: 43, baseType: !137, size: 8, offset: 96)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "upval", scope: !531, file: !3, line: 44, baseType: !137, size: 8, offset: 104)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "isbreakable", scope: !531, file: !3, line: 45, baseType: !137, size: 8, offset: 112)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "pc", scope: !519, file: !41, line: 65, baseType: !203, size: 32, offset: 384)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "lasttarget", scope: !519, file: !41, line: 66, baseType: !203, size: 32, offset: 416)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "jpc", scope: !519, file: !41, line: 67, baseType: !203, size: 32, offset: 448)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "freereg", scope: !519, file: !41, line: 68, baseType: !203, size: 32, offset: 480)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "nk", scope: !519, file: !41, line: 69, baseType: !203, size: 32, offset: 512)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "np", scope: !519, file: !41, line: 70, baseType: !203, size: 32, offset: 544)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "nlocvars", scope: !519, file: !41, line: 71, baseType: !545, size: 16, offset: 576)
!545 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "nactvar", scope: !519, file: !41, line: 72, baseType: !137, size: 8, offset: 592)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "upvalues", scope: !519, file: !41, line: 73, baseType: !548, size: 960, offset: 600)
!548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !549, size: 960, elements: !386)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "upvaldesc", file: !41, line: 51, baseType: !550)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upvaldesc", file: !41, line: 48, size: 16, elements: !551)
!551 = !{!552, !553}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !550, file: !41, line: 49, baseType: !137, size: 8)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !550, file: !41, line: 50, baseType: !137, size: 8, offset: 8)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "actvar", scope: !519, file: !41, line: 74, baseType: !555, size: 3200, offset: 1568)
!555 = !DICompositeType(tag: DW_TAG_array_type, baseType: !358, size: 3200, elements: !556)
!556 = !{!557}
!557 = !DISubrange(count: 200)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "L", scope: !500, file: !6, line: 62, baseType: !307, size: 64, offset: 448)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !500, file: !6, line: 63, baseType: !479, size: 64, offset: 512)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "buff", scope: !500, file: !6, line: 64, baseType: !493, size: 64, offset: 576)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !500, file: !6, line: 65, baseType: !332, size: 64, offset: 640)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "decpoint", scope: !500, file: !6, line: 66, baseType: !294, size: 8, offset: 704)
!563 = !DILocalVariable(name: "funcstate", scope: !476, file: !3, line: 385, type: !519)
!564 = !DILocation(line: 383, column: 32, scope: !476)
!565 = !DILocation(line: 383, column: 40, scope: !476)
!566 = !DILocation(line: 383, column: 52, scope: !476)
!567 = !DILocation(line: 383, column: 70, scope: !476)
!568 = !DILocation(line: 384, column: 3, scope: !476)
!569 = !DILocation(line: 385, column: 3, scope: !476)
!570 = !DILocation(line: 386, column: 12, scope: !476)
!571 = !DILocation(line: 386, column: 17, scope: !476)
!572 = !{!573, !578, i64 72}
!573 = !{!"LexState", !574, i64 0, !574, i64 4, !574, i64 8, !577, i64 16, !577, i64 32, !578, i64 48, !578, i64 56, !578, i64 64, !578, i64 72, !578, i64 80, !575, i64 88}
!574 = !{!"int", !575, i64 0}
!575 = !{!"omnipotent char", !576, i64 0}
!576 = !{!"Simple C/C++ TBAA"}
!577 = !{!"Token", !574, i64 0, !575, i64 8}
!578 = !{!"any pointer", !575, i64 0}
!579 = !DILocation(line: 387, column: 34, scope: !476)
!580 = !DILocation(line: 384, column: 19, scope: !476)
!581 = !DILocation(line: 387, column: 3, scope: !476)
!582 = !DILocation(line: 385, column: 20, scope: !476)
!583 = !DILocation(line: 388, column: 3, scope: !476)
!584 = !DILocation(line: 389, column: 13, scope: !476)
!585 = !{!586, !578, i64 0}
!586 = !{!"FuncState", !578, i64 0, !578, i64 8, !578, i64 16, !578, i64 24, !578, i64 32, !578, i64 40, !574, i64 48, !574, i64 52, !574, i64 56, !574, i64 60, !574, i64 64, !574, i64 68, !587, i64 72, !575, i64 74, !575, i64 75, !575, i64 196}
!587 = !{!"short", !575, i64 0}
!588 = !DILocation(line: 389, column: 16, scope: !476)
!589 = !DILocation(line: 389, column: 26, scope: !476)
!590 = !{!591, !575, i64 114}
!591 = !{!"Proto", !578, i64 0, !575, i64 8, !575, i64 9, !578, i64 16, !578, i64 24, !578, i64 32, !578, i64 40, !578, i64 48, !578, i64 56, !578, i64 64, !574, i64 72, !574, i64 76, !574, i64 80, !574, i64 84, !574, i64 88, !574, i64 92, !574, i64 96, !574, i64 100, !578, i64 104, !575, i64 112, !575, i64 113, !575, i64 114, !575, i64 115}
!592 = !DILocation(line: 390, column: 3, scope: !476)
!593 = !DILocalVariable(name: "ls", arg: 1, scope: !594, file: !3, line: 1325, type: !597)
!594 = distinct !DISubprogram(name: "chunk", scope: !3, file: !3, line: 1325, type: !595, isLocal: true, isDefinition: true, scopeLine: 1325, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !599)
!595 = !DISubroutineType(types: !596)
!596 = !{null, !597}
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "LexState", file: !6, line: 67, baseType: !500)
!599 = !{!593, !600}
!600 = !DILocalVariable(name: "islast", scope: !594, file: !3, line: 1327, type: !203)
!601 = !DILocation(line: 1325, column: 30, scope: !594, inlinedAt: !602)
!602 = distinct !DILocation(line: 391, column: 3, scope: !476)
!603 = !DILocation(line: 1327, column: 7, scope: !594, inlinedAt: !602)
!604 = !DILocalVariable(name: "ls", arg: 1, scope: !605, file: !3, line: 276, type: !597)
!605 = distinct !DISubprogram(name: "enterlevel", scope: !3, file: !3, line: 276, type: !595, isLocal: true, isDefinition: true, scopeLine: 276, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !606)
!606 = !{!604}
!607 = !DILocation(line: 276, column: 35, scope: !605, inlinedAt: !608)
!608 = distinct !DILocation(line: 1328, column: 3, scope: !594, inlinedAt: !602)
!609 = !DILocation(line: 277, column: 13, scope: !610, inlinedAt: !608)
!610 = distinct !DILexicalBlock(scope: !605, file: !3, line: 277, column: 7)
!611 = !{!573, !578, i64 56}
!612 = !DILocation(line: 277, column: 16, scope: !610, inlinedAt: !608)
!613 = !DILocation(line: 277, column: 7, scope: !610, inlinedAt: !608)
!614 = !{!615, !587, i64 96}
!615 = !{!"lua_State", !578, i64 0, !575, i64 8, !575, i64 9, !575, i64 10, !578, i64 16, !578, i64 24, !578, i64 32, !578, i64 40, !578, i64 48, !578, i64 56, !578, i64 64, !578, i64 72, !578, i64 80, !574, i64 88, !574, i64 92, !587, i64 96, !587, i64 98, !575, i64 100, !575, i64 101, !574, i64 104, !574, i64 108, !578, i64 112, !616, i64 120, !616, i64 136, !578, i64 152, !578, i64 160, !578, i64 168, !617, i64 176}
!616 = !{!"lua_TValue", !575, i64 0, !574, i64 8}
!617 = !{!"long", !575, i64 0}
!618 = !DILocation(line: 277, column: 24, scope: !610, inlinedAt: !608)
!619 = !DILocation(line: 277, column: 7, scope: !605, inlinedAt: !608)
!620 = !DILocation(line: 278, column: 2, scope: !610, inlinedAt: !608)
!621 = !DILocation(line: 1329, column: 18, scope: !594, inlinedAt: !602)
!622 = !DILocation(line: 1329, column: 41, scope: !594, inlinedAt: !602)
!623 = !{!573, !574, i64 16}
!624 = !DILocalVariable(name: "token", arg: 1, scope: !625, file: !3, line: 871, type: !203)
!625 = distinct !DISubprogram(name: "block_follow", scope: !3, file: !3, line: 871, type: !626, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !628)
!626 = !DISubroutineType(types: !627)
!627 = !{!203, !203}
!628 = !{!624}
!629 = !DILocation(line: 871, column: 30, scope: !625, inlinedAt: !630)
!630 = distinct !DILocation(line: 1329, column: 22, scope: !594, inlinedAt: !602)
!631 = !DILocation(line: 872, column: 3, scope: !625, inlinedAt: !630)
!632 = !DILocation(line: 1330, column: 14, scope: !633, inlinedAt: !602)
!633 = distinct !DILexicalBlock(scope: !594, file: !3, line: 1329, column: 49)
!634 = !DILocalVariable(name: "ls", arg: 1, scope: !635, file: !3, line: 80, type: !597)
!635 = distinct !DISubprogram(name: "testnext", scope: !3, file: !3, line: 80, type: !636, isLocal: true, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !638)
!636 = !DISubroutineType(types: !637)
!637 = !{!203, !597, !203}
!638 = !{!634, !639}
!639 = !DILocalVariable(name: "c", arg: 2, scope: !635, file: !3, line: 80, type: !203)
!640 = !DILocation(line: 80, column: 32, scope: !635, inlinedAt: !641)
!641 = distinct !DILocation(line: 1331, column: 5, scope: !633, inlinedAt: !602)
!642 = !DILocation(line: 80, column: 40, scope: !635, inlinedAt: !641)
!643 = !DILocation(line: 81, column: 13, scope: !644, inlinedAt: !641)
!644 = distinct !DILexicalBlock(scope: !635, file: !3, line: 81, column: 7)
!645 = !DILocation(line: 81, column: 19, scope: !644, inlinedAt: !641)
!646 = !DILocation(line: 81, column: 7, scope: !635, inlinedAt: !641)
!647 = !DILocation(line: 82, column: 5, scope: !648, inlinedAt: !641)
!648 = distinct !DILexicalBlock(scope: !644, file: !3, line: 81, column: 25)
!649 = !DILocation(line: 83, column: 5, scope: !648, inlinedAt: !641)
!650 = !DILocation(line: 1334, column: 27, scope: !633, inlinedAt: !602)
!651 = !{!573, !578, i64 48}
!652 = !DILocation(line: 1334, column: 31, scope: !633, inlinedAt: !602)
!653 = !{!586, !575, i64 74}
!654 = !DILocation(line: 1334, column: 23, scope: !633, inlinedAt: !602)
!655 = !DILocation(line: 1334, column: 13, scope: !633, inlinedAt: !602)
!656 = !DILocation(line: 1334, column: 21, scope: !633, inlinedAt: !602)
!657 = !{!586, !574, i64 60}
!658 = !DILocation(line: 1329, column: 11, scope: !594, inlinedAt: !602)
!659 = distinct !{!659, !660, !661}
!660 = !DILocation(line: 1329, column: 3, scope: !594)
!661 = !DILocation(line: 1335, column: 3, scope: !594)
!662 = !DILocation(line: 90, column: 13, scope: !663, inlinedAt: !670)
!663 = distinct !DILexicalBlock(scope: !664, file: !3, line: 90, column: 7)
!664 = distinct !DISubprogram(name: "check", scope: !3, file: !3, line: 89, type: !665, isLocal: true, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !667)
!665 = !DISubroutineType(types: !666)
!666 = !{null, !597, !203}
!667 = !{!668, !669}
!668 = !DILocalVariable(name: "ls", arg: 1, scope: !664, file: !3, line: 89, type: !597)
!669 = !DILocalVariable(name: "c", arg: 2, scope: !664, file: !3, line: 89, type: !203)
!670 = distinct !DILocation(line: 392, column: 3, scope: !476)
!671 = !DILocation(line: 1336, column: 3, scope: !594, inlinedAt: !602)
!672 = !DILocation(line: 89, column: 30, scope: !664, inlinedAt: !670)
!673 = !DILocation(line: 89, column: 38, scope: !664, inlinedAt: !670)
!674 = !DILocation(line: 90, column: 19, scope: !663, inlinedAt: !670)
!675 = !DILocation(line: 90, column: 7, scope: !664, inlinedAt: !670)
!676 = !DILocalVariable(name: "ls", arg: 1, scope: !677, file: !3, line: 65, type: !597)
!677 = distinct !DISubprogram(name: "error_expected", scope: !3, file: !3, line: 65, type: !665, isLocal: true, isDefinition: true, scopeLine: 65, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !678)
!678 = !{!676, !679}
!679 = !DILocalVariable(name: "token", arg: 2, scope: !677, file: !3, line: 65, type: !203)
!680 = !DILocation(line: 65, column: 39, scope: !677, inlinedAt: !681)
!681 = distinct !DILocation(line: 91, column: 5, scope: !663, inlinedAt: !670)
!682 = !DILocation(line: 65, column: 47, scope: !677, inlinedAt: !681)
!683 = !DILocation(line: 67, column: 51, scope: !677, inlinedAt: !681)
!684 = !DILocation(line: 67, column: 7, scope: !677, inlinedAt: !681)
!685 = !DILocation(line: 66, column: 3, scope: !677, inlinedAt: !681)
!686 = !DILocation(line: 91, column: 5, scope: !663, inlinedAt: !670)
!687 = !DILocation(line: 393, column: 3, scope: !476)
!688 = !DILocation(line: 397, column: 20, scope: !476)
!689 = !DILocation(line: 398, column: 1, scope: !476)
!690 = !DILocation(line: 397, column: 3, scope: !476)
!691 = distinct !DISubprogram(name: "open_func", scope: !3, file: !3, line: 328, type: !692, isLocal: true, isDefinition: true, scopeLine: 328, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !696)
!692 = !DISubroutineType(types: !693)
!693 = !{null, !597, !694}
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "FuncState", file: !41, line: 75, baseType: !519)
!696 = !{!697, !698, !699, !700, !701, !703}
!697 = !DILocalVariable(name: "ls", arg: 1, scope: !691, file: !3, line: 328, type: !597)
!698 = !DILocalVariable(name: "fs", arg: 2, scope: !691, file: !3, line: 328, type: !694)
!699 = !DILocalVariable(name: "L", scope: !691, file: !3, line: 329, type: !247)
!700 = !DILocalVariable(name: "f", scope: !691, file: !3, line: 330, type: !459)
!701 = !DILocalVariable(name: "i_o", scope: !702, file: !3, line: 349, type: !189)
!702 = distinct !DILexicalBlock(scope: !691, file: !3, line: 349, column: 3)
!703 = !DILocalVariable(name: "i_o", scope: !704, file: !3, line: 351, type: !189)
!704 = distinct !DILexicalBlock(scope: !691, file: !3, line: 351, column: 3)
!705 = !DILocation(line: 328, column: 34, scope: !691)
!706 = !DILocation(line: 328, column: 49, scope: !691)
!707 = !DILocation(line: 329, column: 22, scope: !691)
!708 = !DILocation(line: 329, column: 14, scope: !691)
!709 = !DILocation(line: 330, column: 14, scope: !691)
!710 = !DILocation(line: 330, column: 10, scope: !691)
!711 = !DILocation(line: 331, column: 7, scope: !691)
!712 = !DILocation(line: 331, column: 9, scope: !691)
!713 = !DILocation(line: 332, column: 18, scope: !691)
!714 = !DILocation(line: 332, column: 7, scope: !691)
!715 = !DILocation(line: 332, column: 12, scope: !691)
!716 = !{!586, !578, i64 16}
!717 = !DILocation(line: 333, column: 7, scope: !691)
!718 = !DILocation(line: 333, column: 10, scope: !691)
!719 = !{!586, !578, i64 24}
!720 = !DILocation(line: 334, column: 7, scope: !691)
!721 = !DILocation(line: 334, column: 9, scope: !691)
!722 = !{!586, !578, i64 32}
!723 = !DILocation(line: 335, column: 10, scope: !691)
!724 = !DILocation(line: 336, column: 7, scope: !691)
!725 = !DILocation(line: 336, column: 10, scope: !691)
!726 = !{!574, !574, i64 0}
!727 = !DILocation(line: 340, column: 7, scope: !691)
!728 = !DILocation(line: 340, column: 10, scope: !691)
!729 = !{!586, !574, i64 64}
!730 = !DILocation(line: 341, column: 7, scope: !691)
!731 = !DILocation(line: 341, column: 10, scope: !691)
!732 = !{!586, !574, i64 68}
!733 = !DILocation(line: 342, column: 7, scope: !691)
!734 = !DILocation(line: 342, column: 16, scope: !691)
!735 = !{!586, !587, i64 72}
!736 = !DILocation(line: 343, column: 7, scope: !691)
!737 = !DILocation(line: 343, column: 15, scope: !691)
!738 = !DILocation(line: 344, column: 7, scope: !691)
!739 = !DILocation(line: 344, column: 10, scope: !691)
!740 = !{!586, !578, i64 40}
!741 = !DILocation(line: 345, column: 19, scope: !691)
!742 = !{!573, !578, i64 80}
!743 = !DILocation(line: 345, column: 6, scope: !691)
!744 = !DILocation(line: 345, column: 13, scope: !691)
!745 = !{!591, !578, i64 64}
!746 = !DILocation(line: 346, column: 6, scope: !691)
!747 = !DILocation(line: 346, column: 19, scope: !691)
!748 = !{!591, !575, i64 115}
!749 = !DILocation(line: 347, column: 11, scope: !691)
!750 = !DILocation(line: 347, column: 7, scope: !691)
!751 = !DILocation(line: 347, column: 9, scope: !691)
!752 = !{!586, !578, i64 8}
!753 = !DILocation(line: 349, column: 3, scope: !702)
!754 = !{!615, !578, i64 16}
!755 = !{!575, !575, i64 0}
!756 = !{!616, !574, i64 8}
!757 = !DILocation(line: 350, column: 3, scope: !758)
!758 = distinct !DILexicalBlock(scope: !759, file: !3, line: 350, column: 3)
!759 = distinct !DILexicalBlock(scope: !691, file: !3, line: 350, column: 3)
!760 = !{!615, !578, i64 56}
!761 = !DILocation(line: 350, column: 3, scope: !759)
!762 = !DILocation(line: 351, column: 3, scope: !704)
!763 = !DILocation(line: 352, column: 3, scope: !764)
!764 = distinct !DILexicalBlock(scope: !765, file: !3, line: 352, column: 3)
!765 = distinct !DILexicalBlock(scope: !691, file: !3, line: 352, column: 3)
!766 = !DILocation(line: 352, column: 3, scope: !765)
!767 = !DILocation(line: 353, column: 1, scope: !691)
!768 = distinct !DISubprogram(name: "close_func", scope: !3, file: !3, line: 356, type: !595, isLocal: true, isDefinition: true, scopeLine: 356, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !769)
!769 = !{!770, !771, !772, !773}
!770 = !DILocalVariable(name: "ls", arg: 1, scope: !768, file: !3, line: 356, type: !597)
!771 = !DILocalVariable(name: "L", scope: !768, file: !3, line: 357, type: !247)
!772 = !DILocalVariable(name: "fs", scope: !768, file: !3, line: 358, type: !694)
!773 = !DILocalVariable(name: "f", scope: !768, file: !3, line: 359, type: !459)
!774 = !DILocation(line: 356, column: 35, scope: !768)
!775 = !DILocation(line: 357, column: 22, scope: !768)
!776 = !DILocation(line: 357, column: 14, scope: !768)
!777 = !DILocation(line: 358, column: 23, scope: !768)
!778 = !DILocation(line: 358, column: 14, scope: !768)
!779 = !DILocation(line: 359, column: 18, scope: !768)
!780 = !DILocation(line: 359, column: 10, scope: !768)
!781 = !DILocalVariable(name: "ls", arg: 1, scope: !782, file: !3, line: 176, type: !597)
!782 = distinct !DISubprogram(name: "removevars", scope: !3, file: !3, line: 176, type: !665, isLocal: true, isDefinition: true, scopeLine: 176, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !783)
!783 = !{!781, !784, !785}
!784 = !DILocalVariable(name: "tolevel", arg: 2, scope: !782, file: !3, line: 176, type: !203)
!785 = !DILocalVariable(name: "fs", scope: !782, file: !3, line: 177, type: !694)
!786 = !DILocation(line: 176, column: 35, scope: !782, inlinedAt: !787)
!787 = distinct !DILocation(line: 360, column: 3, scope: !768)
!788 = !DILocation(line: 176, column: 43, scope: !782, inlinedAt: !787)
!789 = !DILocation(line: 177, column: 14, scope: !782, inlinedAt: !787)
!790 = !DILocation(line: 178, column: 14, scope: !782, inlinedAt: !787)
!791 = !DILocation(line: 178, column: 22, scope: !782, inlinedAt: !787)
!792 = !DILocation(line: 178, column: 3, scope: !782, inlinedAt: !787)
!793 = !{!586, !574, i64 48}
!794 = !{!591, !578, i64 48}
!795 = !DILocation(line: 179, column: 5, scope: !782, inlinedAt: !787)
!796 = !{!587, !587, i64 0}
!797 = !DILocation(line: 179, column: 34, scope: !782, inlinedAt: !787)
!798 = !DILocation(line: 179, column: 40, scope: !782, inlinedAt: !787)
!799 = !{!800, !574, i64 12}
!800 = !{!"LocVar", !578, i64 0, !574, i64 8, !574, i64 12}
!801 = distinct !{!801, !802, !803}
!802 = !DILocation(line: 178, column: 3, scope: !782)
!803 = !DILocation(line: 179, column: 46, scope: !782)
!804 = !DILocation(line: 361, column: 3, scope: !768)
!805 = !DILocation(line: 362, column: 3, scope: !768)
!806 = !{!591, !578, i64 24}
!807 = !{!591, !574, i64 80}
!808 = !DILocation(line: 363, column: 6, scope: !768)
!809 = !DILocation(line: 363, column: 21, scope: !768)
!810 = !DILocation(line: 363, column: 15, scope: !768)
!811 = !DILocation(line: 364, column: 3, scope: !768)
!812 = !{!591, !578, i64 40}
!813 = !{!591, !574, i64 84}
!814 = !DILocation(line: 365, column: 6, scope: !768)
!815 = !DILocation(line: 365, column: 25, scope: !768)
!816 = !DILocation(line: 365, column: 19, scope: !768)
!817 = !DILocation(line: 366, column: 3, scope: !768)
!818 = !{!591, !578, i64 16}
!819 = !{!591, !574, i64 76}
!820 = !DILocation(line: 367, column: 6, scope: !768)
!821 = !DILocation(line: 367, column: 18, scope: !768)
!822 = !DILocation(line: 367, column: 12, scope: !768)
!823 = !DILocation(line: 368, column: 3, scope: !768)
!824 = !{!591, !578, i64 32}
!825 = !{!591, !574, i64 88}
!826 = !DILocation(line: 369, column: 6, scope: !768)
!827 = !DILocation(line: 369, column: 18, scope: !768)
!828 = !DILocation(line: 369, column: 12, scope: !768)
!829 = !DILocation(line: 370, column: 3, scope: !768)
!830 = !{!591, !574, i64 92}
!831 = !DILocation(line: 371, column: 6, scope: !768)
!832 = !DILocation(line: 371, column: 24, scope: !768)
!833 = !DILocation(line: 371, column: 20, scope: !768)
!834 = !DILocation(line: 371, column: 18, scope: !768)
!835 = !DILocation(line: 372, column: 3, scope: !768)
!836 = !{!591, !575, i64 112}
!837 = !{!591, !578, i64 56}
!838 = !{!591, !574, i64 72}
!839 = !DILocation(line: 373, column: 24, scope: !768)
!840 = !DILocation(line: 373, column: 21, scope: !768)
!841 = !DILocation(line: 373, column: 19, scope: !768)
!842 = !DILocation(line: 376, column: 16, scope: !768)
!843 = !DILocation(line: 376, column: 10, scope: !768)
!844 = !DILocalVariable(name: "ls", arg: 1, scope: !845, file: !3, line: 57, type: !597)
!845 = distinct !DISubprogram(name: "anchor_token", scope: !3, file: !3, line: 57, type: !595, isLocal: true, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !846)
!846 = !{!844, !847}
!847 = !DILocalVariable(name: "ts", scope: !848, file: !3, line: 59, type: !332)
!848 = distinct !DILexicalBlock(scope: !849, file: !3, line: 58, column: 59)
!849 = distinct !DILexicalBlock(scope: !845, file: !3, line: 58, column: 7)
!850 = !DILocation(line: 57, column: 37, scope: !845, inlinedAt: !851)
!851 = distinct !DILocation(line: 378, column: 11, scope: !852)
!852 = distinct !DILexicalBlock(scope: !768, file: !3, line: 378, column: 7)
!853 = !DILocation(line: 58, column: 13, scope: !849, inlinedAt: !851)
!854 = !DILocation(line: 58, column: 30, scope: !849, inlinedAt: !851)
!855 = !DILocation(line: 59, column: 25, scope: !848, inlinedAt: !851)
!856 = !DILocation(line: 59, column: 33, scope: !848, inlinedAt: !851)
!857 = !DILocation(line: 59, column: 14, scope: !848, inlinedAt: !851)
!858 = !DILocation(line: 60, column: 24, scope: !848, inlinedAt: !851)
!859 = !DILocation(line: 60, column: 44, scope: !848, inlinedAt: !851)
!860 = !DILocation(line: 60, column: 5, scope: !848, inlinedAt: !851)
!861 = !DILocation(line: 61, column: 3, scope: !848, inlinedAt: !851)
!862 = !DILocation(line: 379, column: 6, scope: !768)
!863 = !DILocation(line: 379, column: 10, scope: !768)
!864 = !DILocation(line: 380, column: 1, scope: !768)
!865 = distinct !DISubprogram(name: "statement", scope: !3, file: !3, line: 1271, type: !866, isLocal: true, isDefinition: true, scopeLine: 1271, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !868)
!866 = !DISubroutineType(types: !867)
!867 = !{!203, !597}
!868 = !{!869, !870}
!869 = !DILocalVariable(name: "ls", arg: 1, scope: !865, file: !3, line: 1271, type: !597)
!870 = !DILocalVariable(name: "line", scope: !865, file: !3, line: 1272, type: !203)
!871 = !DILocation(line: 1271, column: 33, scope: !865)
!872 = !DILocation(line: 1272, column: 18, scope: !865)
!873 = !{!573, !574, i64 4}
!874 = !DILocation(line: 1272, column: 7, scope: !865)
!875 = !DILocation(line: 1273, column: 17, scope: !865)
!876 = !DILocation(line: 1273, column: 3, scope: !865)
!877 = !DILocalVariable(name: "ls", arg: 1, scope: !878, file: !3, line: 1141, type: !597)
!878 = distinct !DISubprogram(name: "ifstat", scope: !3, file: !3, line: 1141, type: !665, isLocal: true, isDefinition: true, scopeLine: 1141, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !879)
!879 = !{!877, !880, !881, !882, !883}
!880 = !DILocalVariable(name: "line", arg: 2, scope: !878, file: !3, line: 1141, type: !203)
!881 = !DILocalVariable(name: "fs", scope: !878, file: !3, line: 1143, type: !694)
!882 = !DILocalVariable(name: "flist", scope: !878, file: !3, line: 1144, type: !203)
!883 = !DILocalVariable(name: "escapelist", scope: !878, file: !3, line: 1145, type: !203)
!884 = !DILocation(line: 1141, column: 31, scope: !878, inlinedAt: !885)
!885 = distinct !DILocation(line: 1275, column: 7, scope: !886)
!886 = distinct !DILexicalBlock(scope: !887, file: !3, line: 1274, column: 17)
!887 = distinct !DILexicalBlock(scope: !865, file: !3, line: 1273, column: 24)
!888 = !DILocation(line: 1141, column: 39, scope: !878, inlinedAt: !885)
!889 = !DILocation(line: 1143, column: 23, scope: !878, inlinedAt: !885)
!890 = !DILocation(line: 1143, column: 14, scope: !878, inlinedAt: !885)
!891 = !DILocation(line: 1145, column: 3, scope: !878, inlinedAt: !885)
!892 = !DILocation(line: 1145, column: 7, scope: !878, inlinedAt: !885)
!893 = !DILocation(line: 1146, column: 11, scope: !878, inlinedAt: !885)
!894 = !DILocation(line: 1144, column: 7, scope: !878, inlinedAt: !885)
!895 = !DILocation(line: 1147, column: 3, scope: !878, inlinedAt: !885)
!896 = !DILocation(line: 0, scope: !897, inlinedAt: !885)
!897 = distinct !DILexicalBlock(scope: !878, file: !3, line: 1147, column: 36)
!898 = !DILocation(line: 1147, column: 16, scope: !878, inlinedAt: !885)
!899 = !DILocation(line: 1148, column: 34, scope: !897, inlinedAt: !885)
!900 = !DILocation(line: 1148, column: 5, scope: !897, inlinedAt: !885)
!901 = !DILocation(line: 1149, column: 5, scope: !897, inlinedAt: !885)
!902 = !DILocation(line: 1150, column: 13, scope: !897, inlinedAt: !885)
!903 = distinct !{!903, !904, !905}
!904 = !DILocation(line: 1147, column: 3, scope: !878)
!905 = !DILocation(line: 1151, column: 3, scope: !878)
!906 = !DILocation(line: 1153, column: 34, scope: !907, inlinedAt: !885)
!907 = distinct !DILexicalBlock(scope: !908, file: !3, line: 1152, column: 31)
!908 = distinct !DILexicalBlock(scope: !878, file: !3, line: 1152, column: 7)
!909 = !DILocation(line: 1153, column: 5, scope: !907, inlinedAt: !885)
!910 = !DILocation(line: 1154, column: 5, scope: !907, inlinedAt: !885)
!911 = !DILocation(line: 1155, column: 5, scope: !907, inlinedAt: !885)
!912 = !DILocation(line: 1156, column: 5, scope: !907, inlinedAt: !885)
!913 = !DILocation(line: 1157, column: 3, scope: !907, inlinedAt: !885)
!914 = !DILocation(line: 1159, column: 5, scope: !908, inlinedAt: !885)
!915 = !DILocation(line: 1160, column: 24, scope: !878, inlinedAt: !885)
!916 = !DILocation(line: 1160, column: 3, scope: !878, inlinedAt: !885)
!917 = !DILocation(line: 1161, column: 3, scope: !878, inlinedAt: !885)
!918 = !DILocation(line: 1162, column: 1, scope: !878, inlinedAt: !885)
!919 = !DILocation(line: 1276, column: 7, scope: !886)
!920 = !DILocalVariable(name: "ls", arg: 1, scope: !921, file: !3, line: 991, type: !597)
!921 = distinct !DISubprogram(name: "whilestat", scope: !3, file: !3, line: 991, type: !665, isLocal: true, isDefinition: true, scopeLine: 991, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !922)
!922 = !{!920, !923, !924, !925, !926, !927}
!923 = !DILocalVariable(name: "line", arg: 2, scope: !921, file: !3, line: 991, type: !203)
!924 = !DILocalVariable(name: "fs", scope: !921, file: !3, line: 993, type: !694)
!925 = !DILocalVariable(name: "whileinit", scope: !921, file: !3, line: 994, type: !203)
!926 = !DILocalVariable(name: "condexit", scope: !921, file: !3, line: 995, type: !203)
!927 = !DILocalVariable(name: "bl", scope: !921, file: !3, line: 996, type: !928)
!928 = !DIDerivedType(tag: DW_TAG_typedef, name: "BlockCnt", file: !3, line: 46, baseType: !531)
!929 = !DILocation(line: 991, column: 34, scope: !921, inlinedAt: !930)
!930 = distinct !DILocation(line: 1279, column: 7, scope: !931)
!931 = distinct !DILexicalBlock(scope: !887, file: !3, line: 1278, column: 20)
!932 = !DILocation(line: 991, column: 42, scope: !921, inlinedAt: !930)
!933 = !DILocation(line: 993, column: 23, scope: !921, inlinedAt: !930)
!934 = !DILocation(line: 993, column: 14, scope: !921, inlinedAt: !930)
!935 = !DILocation(line: 996, column: 3, scope: !921, inlinedAt: !930)
!936 = !DILocation(line: 997, column: 3, scope: !921, inlinedAt: !930)
!937 = !DILocation(line: 998, column: 15, scope: !921, inlinedAt: !930)
!938 = !DILocation(line: 994, column: 7, scope: !921, inlinedAt: !930)
!939 = !DILocalVariable(name: "ls", arg: 1, scope: !940, file: !3, line: 965, type: !597)
!940 = distinct !DISubprogram(name: "cond", scope: !3, file: !3, line: 965, type: !866, isLocal: true, isDefinition: true, scopeLine: 965, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !941)
!941 = !{!939, !942}
!942 = !DILocalVariable(name: "v", scope: !940, file: !3, line: 967, type: !943)
!943 = !DIDerivedType(tag: DW_TAG_typedef, name: "expdesc", file: !41, line: 45, baseType: !944)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "expdesc", file: !41, line: 37, size: 192, elements: !945)
!945 = !{!946, !948, !957, !958}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !944, file: !41, line: 38, baseType: !947, size: 32)
!947 = !DIDerivedType(tag: DW_TAG_typedef, name: "expkind", file: !41, line: 35, baseType: !40)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !944, file: !41, line: 42, baseType: !949, size: 64, offset: 64)
!949 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !944, file: !41, line: 39, size: 64, elements: !950)
!950 = !{!951, !956}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !949, file: !41, line: 40, baseType: !952, size: 64)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !949, file: !41, line: 40, size: 64, elements: !953)
!953 = !{!954, !955}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !952, file: !41, line: 40, baseType: !203, size: 32)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !952, file: !41, line: 40, baseType: !203, size: 32, offset: 32)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "nval", scope: !949, file: !41, line: 41, baseType: !200, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "t", scope: !944, file: !41, line: 43, baseType: !203, size: 32, offset: 128)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !944, file: !41, line: 44, baseType: !203, size: 32, offset: 160)
!959 = !DILocation(line: 965, column: 28, scope: !940, inlinedAt: !960)
!960 = distinct !DILocation(line: 999, column: 14, scope: !921, inlinedAt: !930)
!961 = !DILocation(line: 967, column: 3, scope: !940, inlinedAt: !960)
!962 = !DILocation(line: 967, column: 11, scope: !940, inlinedAt: !960)
!963 = !DILocalVariable(name: "ls", arg: 1, scope: !964, file: !3, line: 856, type: !597)
!964 = distinct !DISubprogram(name: "expr", scope: !3, file: !3, line: 856, type: !965, isLocal: true, isDefinition: true, scopeLine: 856, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !968)
!965 = !DISubroutineType(types: !966)
!966 = !{null, !597, !967}
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!968 = !{!963, !969}
!969 = !DILocalVariable(name: "v", arg: 2, scope: !964, file: !3, line: 856, type: !967)
!970 = !DILocation(line: 856, column: 29, scope: !964, inlinedAt: !971)
!971 = distinct !DILocation(line: 968, column: 3, scope: !940, inlinedAt: !960)
!972 = !DILocation(line: 856, column: 42, scope: !964, inlinedAt: !971)
!973 = !DILocation(line: 857, column: 3, scope: !964, inlinedAt: !971)
!974 = !DILocation(line: 969, column: 9, scope: !975, inlinedAt: !960)
!975 = distinct !DILexicalBlock(scope: !940, file: !3, line: 969, column: 7)
!976 = !{!977, !575, i64 0}
!977 = !{!"expdesc", !575, i64 0, !575, i64 8, !574, i64 16, !574, i64 20}
!978 = !DILocation(line: 969, column: 11, scope: !975, inlinedAt: !960)
!979 = !DILocation(line: 969, column: 7, scope: !940, inlinedAt: !960)
!980 = !DILocation(line: 969, column: 24, scope: !975, inlinedAt: !960)
!981 = !DILocation(line: 969, column: 20, scope: !975, inlinedAt: !960)
!982 = !DILocation(line: 970, column: 21, scope: !940, inlinedAt: !960)
!983 = !DILocation(line: 970, column: 3, scope: !940, inlinedAt: !960)
!984 = !DILocation(line: 971, column: 12, scope: !940, inlinedAt: !960)
!985 = !{!977, !574, i64 20}
!986 = !DILocation(line: 972, column: 1, scope: !940, inlinedAt: !960)
!987 = !DILocation(line: 995, column: 7, scope: !921, inlinedAt: !930)
!988 = !DILocation(line: 996, column: 12, scope: !921, inlinedAt: !930)
!989 = !DILocalVariable(name: "fs", arg: 1, scope: !990, file: !3, line: 285, type: !694)
!990 = distinct !DISubprogram(name: "enterblock", scope: !3, file: !3, line: 285, type: !991, isLocal: true, isDefinition: true, scopeLine: 285, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !994)
!991 = !DISubroutineType(types: !992)
!992 = !{null, !694, !993, !137}
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!994 = !{!989, !995, !996}
!995 = !DILocalVariable(name: "bl", arg: 2, scope: !990, file: !3, line: 285, type: !993)
!996 = !DILocalVariable(name: "isbreakable", arg: 3, scope: !990, file: !3, line: 285, type: !137)
!997 = !DILocation(line: 285, column: 36, scope: !990, inlinedAt: !998)
!998 = distinct !DILocation(line: 1000, column: 3, scope: !921, inlinedAt: !930)
!999 = !DILocation(line: 285, column: 50, scope: !990, inlinedAt: !998)
!1000 = !DILocation(line: 285, column: 62, scope: !990, inlinedAt: !998)
!1001 = !DILocation(line: 286, column: 7, scope: !990, inlinedAt: !998)
!1002 = !DILocation(line: 286, column: 17, scope: !990, inlinedAt: !998)
!1003 = !{!1004, !574, i64 8}
!1004 = !{!"BlockCnt", !578, i64 0, !574, i64 8, !575, i64 12, !575, i64 13, !575, i64 14}
!1005 = !DILocation(line: 287, column: 7, scope: !990, inlinedAt: !998)
!1006 = !DILocation(line: 287, column: 19, scope: !990, inlinedAt: !998)
!1007 = !{!1004, !575, i64 14}
!1008 = !DILocation(line: 288, column: 21, scope: !990, inlinedAt: !998)
!1009 = !DILocation(line: 288, column: 7, scope: !990, inlinedAt: !998)
!1010 = !DILocation(line: 288, column: 15, scope: !990, inlinedAt: !998)
!1011 = !{!1004, !575, i64 12}
!1012 = !DILocation(line: 289, column: 7, scope: !990, inlinedAt: !998)
!1013 = !DILocation(line: 289, column: 13, scope: !990, inlinedAt: !998)
!1014 = !{!1004, !575, i64 13}
!1015 = !DILocation(line: 290, column: 22, scope: !990, inlinedAt: !998)
!1016 = !DILocation(line: 290, column: 16, scope: !990, inlinedAt: !998)
!1017 = !{!1004, !578, i64 0}
!1018 = !DILocation(line: 291, column: 10, scope: !990, inlinedAt: !998)
!1019 = !DILocalVariable(name: "ls", arg: 1, scope: !1020, file: !3, line: 94, type: !597)
!1020 = distinct !DISubprogram(name: "checknext", scope: !3, file: !3, line: 94, type: !665, isLocal: true, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1021)
!1021 = !{!1019, !1022}
!1022 = !DILocalVariable(name: "c", arg: 2, scope: !1020, file: !3, line: 94, type: !203)
!1023 = !DILocation(line: 94, column: 34, scope: !1020, inlinedAt: !1024)
!1024 = distinct !DILocation(line: 1001, column: 3, scope: !921, inlinedAt: !930)
!1025 = !DILocation(line: 94, column: 42, scope: !1020, inlinedAt: !1024)
!1026 = !DILocation(line: 89, column: 30, scope: !664, inlinedAt: !1027)
!1027 = distinct !DILocation(line: 95, column: 3, scope: !1020, inlinedAt: !1024)
!1028 = !DILocation(line: 89, column: 38, scope: !664, inlinedAt: !1027)
!1029 = !DILocation(line: 90, column: 13, scope: !663, inlinedAt: !1027)
!1030 = !DILocation(line: 90, column: 19, scope: !663, inlinedAt: !1027)
!1031 = !DILocation(line: 90, column: 7, scope: !664, inlinedAt: !1027)
!1032 = !DILocation(line: 65, column: 39, scope: !677, inlinedAt: !1033)
!1033 = distinct !DILocation(line: 91, column: 5, scope: !663, inlinedAt: !1027)
!1034 = !DILocation(line: 65, column: 47, scope: !677, inlinedAt: !1033)
!1035 = !DILocation(line: 67, column: 28, scope: !677, inlinedAt: !1033)
!1036 = !DILocation(line: 67, column: 51, scope: !677, inlinedAt: !1033)
!1037 = !DILocation(line: 67, column: 7, scope: !677, inlinedAt: !1033)
!1038 = !DILocation(line: 66, column: 3, scope: !677, inlinedAt: !1033)
!1039 = !DILocation(line: 91, column: 5, scope: !663, inlinedAt: !1027)
!1040 = !DILocation(line: 96, column: 3, scope: !1020, inlinedAt: !1024)
!1041 = !DILocation(line: 1002, column: 3, scope: !921, inlinedAt: !930)
!1042 = !DILocation(line: 1003, column: 22, scope: !921, inlinedAt: !930)
!1043 = !DILocation(line: 1003, column: 3, scope: !921, inlinedAt: !930)
!1044 = !DILocation(line: 1004, column: 3, scope: !921, inlinedAt: !930)
!1045 = !DILocalVariable(name: "fs", arg: 1, scope: !1046, file: !3, line: 296, type: !694)
!1046 = distinct !DISubprogram(name: "leaveblock", scope: !3, file: !3, line: 296, type: !1047, isLocal: true, isDefinition: true, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1049)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{null, !694}
!1049 = !{!1045, !1050}
!1050 = !DILocalVariable(name: "bl", scope: !1046, file: !3, line: 297, type: !993)
!1051 = !DILocation(line: 296, column: 36, scope: !1046, inlinedAt: !1052)
!1052 = distinct !DILocation(line: 1005, column: 3, scope: !921, inlinedAt: !930)
!1053 = !DILocation(line: 297, column: 22, scope: !1046, inlinedAt: !1052)
!1054 = !DILocation(line: 297, column: 13, scope: !1046, inlinedAt: !1052)
!1055 = !DILocation(line: 298, column: 16, scope: !1046, inlinedAt: !1052)
!1056 = !DILocation(line: 298, column: 10, scope: !1046, inlinedAt: !1052)
!1057 = !DILocation(line: 299, column: 18, scope: !1046, inlinedAt: !1052)
!1058 = !DILocation(line: 299, column: 26, scope: !1046, inlinedAt: !1052)
!1059 = !DILocation(line: 299, column: 22, scope: !1046, inlinedAt: !1052)
!1060 = !DILocation(line: 176, column: 35, scope: !782, inlinedAt: !1061)
!1061 = distinct !DILocation(line: 299, column: 3, scope: !1046, inlinedAt: !1052)
!1062 = !DILocation(line: 176, column: 43, scope: !782, inlinedAt: !1061)
!1063 = !DILocation(line: 177, column: 23, scope: !782, inlinedAt: !1061)
!1064 = !DILocation(line: 177, column: 14, scope: !782, inlinedAt: !1061)
!1065 = !DILocation(line: 178, column: 14, scope: !782, inlinedAt: !1061)
!1066 = !DILocation(line: 178, column: 22, scope: !782, inlinedAt: !1061)
!1067 = !DILocation(line: 178, column: 3, scope: !782, inlinedAt: !1061)
!1068 = !DILocation(line: 179, column: 5, scope: !782, inlinedAt: !1061)
!1069 = !DILocation(line: 179, column: 34, scope: !782, inlinedAt: !1061)
!1070 = !DILocation(line: 179, column: 40, scope: !782, inlinedAt: !1061)
!1071 = !DILocation(line: 300, column: 11, scope: !1072, inlinedAt: !1052)
!1072 = distinct !DILexicalBlock(scope: !1046, file: !3, line: 300, column: 7)
!1073 = !DILocation(line: 300, column: 7, scope: !1072, inlinedAt: !1052)
!1074 = !DILocation(line: 300, column: 7, scope: !1046, inlinedAt: !1052)
!1075 = !DILocation(line: 301, column: 5, scope: !1072, inlinedAt: !1052)
!1076 = !DILocation(line: 305, column: 21, scope: !1046, inlinedAt: !1052)
!1077 = !DILocation(line: 305, column: 17, scope: !1046, inlinedAt: !1052)
!1078 = !DILocation(line: 305, column: 7, scope: !1046, inlinedAt: !1052)
!1079 = !DILocation(line: 305, column: 15, scope: !1046, inlinedAt: !1052)
!1080 = !DILocation(line: 306, column: 28, scope: !1046, inlinedAt: !1052)
!1081 = !DILocation(line: 306, column: 3, scope: !1046, inlinedAt: !1052)
!1082 = !DILocation(line: 1006, column: 3, scope: !921, inlinedAt: !930)
!1083 = !DILocation(line: 1007, column: 1, scope: !921, inlinedAt: !930)
!1084 = !DILocation(line: 1280, column: 7, scope: !931)
!1085 = !DILocation(line: 1283, column: 7, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !887, file: !3, line: 1282, column: 17)
!1087 = !DILocation(line: 1284, column: 7, scope: !1086)
!1088 = !DILocation(line: 1285, column: 7, scope: !1086)
!1089 = !DILocation(line: 1286, column: 7, scope: !1086)
!1090 = !DILocalVariable(name: "ls", arg: 1, scope: !1091, file: !3, line: 1112, type: !597)
!1091 = distinct !DISubprogram(name: "forstat", scope: !3, file: !3, line: 1112, type: !665, isLocal: true, isDefinition: true, scopeLine: 1112, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1092)
!1092 = !{!1090, !1093, !1094, !1095, !1096}
!1093 = !DILocalVariable(name: "line", arg: 2, scope: !1091, file: !3, line: 1112, type: !203)
!1094 = !DILocalVariable(name: "fs", scope: !1091, file: !3, line: 1114, type: !694)
!1095 = !DILocalVariable(name: "varname", scope: !1091, file: !3, line: 1115, type: !332)
!1096 = !DILocalVariable(name: "bl", scope: !1091, file: !3, line: 1116, type: !928)
!1097 = !DILocation(line: 1112, column: 32, scope: !1091, inlinedAt: !1098)
!1098 = distinct !DILocation(line: 1289, column: 7, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !887, file: !3, line: 1288, column: 18)
!1100 = !DILocation(line: 1112, column: 40, scope: !1091, inlinedAt: !1098)
!1101 = !DILocation(line: 1114, column: 23, scope: !1091, inlinedAt: !1098)
!1102 = !DILocation(line: 1114, column: 14, scope: !1091, inlinedAt: !1098)
!1103 = !DILocation(line: 1116, column: 3, scope: !1091, inlinedAt: !1098)
!1104 = !DILocation(line: 1116, column: 12, scope: !1091, inlinedAt: !1098)
!1105 = !DILocation(line: 285, column: 36, scope: !990, inlinedAt: !1106)
!1106 = distinct !DILocation(line: 1117, column: 3, scope: !1091, inlinedAt: !1098)
!1107 = !DILocation(line: 285, column: 50, scope: !990, inlinedAt: !1106)
!1108 = !DILocation(line: 285, column: 62, scope: !990, inlinedAt: !1106)
!1109 = !DILocation(line: 286, column: 7, scope: !990, inlinedAt: !1106)
!1110 = !DILocation(line: 286, column: 17, scope: !990, inlinedAt: !1106)
!1111 = !DILocation(line: 287, column: 7, scope: !990, inlinedAt: !1106)
!1112 = !DILocation(line: 287, column: 19, scope: !990, inlinedAt: !1106)
!1113 = !DILocation(line: 288, column: 21, scope: !990, inlinedAt: !1106)
!1114 = !DILocation(line: 288, column: 7, scope: !990, inlinedAt: !1106)
!1115 = !DILocation(line: 288, column: 15, scope: !990, inlinedAt: !1106)
!1116 = !DILocation(line: 289, column: 7, scope: !990, inlinedAt: !1106)
!1117 = !DILocation(line: 289, column: 13, scope: !990, inlinedAt: !1106)
!1118 = !DILocation(line: 290, column: 22, scope: !990, inlinedAt: !1106)
!1119 = !DILocation(line: 290, column: 16, scope: !990, inlinedAt: !1106)
!1120 = !DILocation(line: 291, column: 10, scope: !990, inlinedAt: !1106)
!1121 = !DILocation(line: 1118, column: 3, scope: !1091, inlinedAt: !1098)
!1122 = !DILocalVariable(name: "ls", arg: 1, scope: !1123, file: !3, line: 117, type: !597)
!1123 = distinct !DISubprogram(name: "str_checkname", scope: !3, file: !3, line: 117, type: !1124, isLocal: true, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1126)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{!332, !597}
!1126 = !{!1122, !1127}
!1127 = !DILocalVariable(name: "ts", scope: !1123, file: !3, line: 118, type: !332)
!1128 = !DILocation(line: 117, column: 42, scope: !1123, inlinedAt: !1129)
!1129 = distinct !DILocation(line: 1119, column: 13, scope: !1091, inlinedAt: !1098)
!1130 = !DILocation(line: 89, column: 30, scope: !664, inlinedAt: !1131)
!1131 = distinct !DILocation(line: 119, column: 3, scope: !1123, inlinedAt: !1129)
!1132 = !DILocation(line: 89, column: 38, scope: !664, inlinedAt: !1131)
!1133 = !DILocation(line: 90, column: 13, scope: !663, inlinedAt: !1131)
!1134 = !DILocation(line: 90, column: 19, scope: !663, inlinedAt: !1131)
!1135 = !DILocation(line: 90, column: 7, scope: !664, inlinedAt: !1131)
!1136 = !DILocation(line: 65, column: 39, scope: !677, inlinedAt: !1137)
!1137 = distinct !DILocation(line: 91, column: 5, scope: !663, inlinedAt: !1131)
!1138 = !DILocation(line: 65, column: 47, scope: !677, inlinedAt: !1137)
!1139 = !DILocation(line: 67, column: 28, scope: !677, inlinedAt: !1137)
!1140 = !DILocation(line: 67, column: 51, scope: !677, inlinedAt: !1137)
!1141 = !DILocation(line: 67, column: 7, scope: !677, inlinedAt: !1137)
!1142 = !DILocation(line: 66, column: 3, scope: !677, inlinedAt: !1137)
!1143 = !DILocation(line: 91, column: 5, scope: !663, inlinedAt: !1131)
!1144 = !DILocation(line: 120, column: 14, scope: !1123, inlinedAt: !1129)
!1145 = !DILocation(line: 120, column: 22, scope: !1123, inlinedAt: !1129)
!1146 = !DILocation(line: 118, column: 12, scope: !1123, inlinedAt: !1129)
!1147 = !DILocation(line: 121, column: 3, scope: !1123, inlinedAt: !1129)
!1148 = !DILocation(line: 1115, column: 12, scope: !1091, inlinedAt: !1098)
!1149 = !DILocation(line: 1120, column: 17, scope: !1091, inlinedAt: !1098)
!1150 = !DILocation(line: 1120, column: 3, scope: !1091, inlinedAt: !1098)
!1151 = !DILocalVariable(name: "ls", arg: 1, scope: !1152, file: !3, line: 1067, type: !597)
!1152 = distinct !DISubprogram(name: "fornum", scope: !3, file: !3, line: 1067, type: !1153, isLocal: true, isDefinition: true, scopeLine: 1067, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1155)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{null, !597, !332, !203}
!1155 = !{!1151, !1156, !1157, !1158, !1159}
!1156 = !DILocalVariable(name: "varname", arg: 2, scope: !1152, file: !3, line: 1067, type: !332)
!1157 = !DILocalVariable(name: "line", arg: 3, scope: !1152, file: !3, line: 1067, type: !203)
!1158 = !DILocalVariable(name: "fs", scope: !1152, file: !3, line: 1069, type: !694)
!1159 = !DILocalVariable(name: "base", scope: !1152, file: !3, line: 1070, type: !203)
!1160 = !DILocation(line: 1067, column: 31, scope: !1152, inlinedAt: !1161)
!1161 = distinct !DILocation(line: 1121, column: 15, scope: !1162, inlinedAt: !1098)
!1162 = distinct !DILexicalBlock(scope: !1091, file: !3, line: 1120, column: 24)
!1163 = !DILocation(line: 1067, column: 44, scope: !1152, inlinedAt: !1161)
!1164 = !DILocation(line: 1067, column: 57, scope: !1152, inlinedAt: !1161)
!1165 = !DILocation(line: 1069, column: 23, scope: !1152, inlinedAt: !1161)
!1166 = !DILocation(line: 1069, column: 14, scope: !1152, inlinedAt: !1161)
!1167 = !DILocation(line: 1070, column: 18, scope: !1152, inlinedAt: !1161)
!1168 = !DILocation(line: 1070, column: 7, scope: !1152, inlinedAt: !1161)
!1169 = !DILocation(line: 1071, column: 3, scope: !1152, inlinedAt: !1161)
!1170 = !DILocation(line: 1072, column: 3, scope: !1152, inlinedAt: !1161)
!1171 = !DILocation(line: 1073, column: 3, scope: !1152, inlinedAt: !1161)
!1172 = !DILocation(line: 1074, column: 3, scope: !1152, inlinedAt: !1161)
!1173 = !DILocation(line: 94, column: 34, scope: !1020, inlinedAt: !1174)
!1174 = distinct !DILocation(line: 1075, column: 3, scope: !1152, inlinedAt: !1161)
!1175 = !DILocation(line: 94, column: 42, scope: !1020, inlinedAt: !1174)
!1176 = !DILocation(line: 89, column: 30, scope: !664, inlinedAt: !1177)
!1177 = distinct !DILocation(line: 95, column: 3, scope: !1020, inlinedAt: !1174)
!1178 = !DILocation(line: 89, column: 38, scope: !664, inlinedAt: !1177)
!1179 = !DILocation(line: 90, column: 13, scope: !663, inlinedAt: !1177)
!1180 = !DILocation(line: 90, column: 19, scope: !663, inlinedAt: !1177)
!1181 = !DILocation(line: 90, column: 7, scope: !664, inlinedAt: !1177)
!1182 = !DILocation(line: 65, column: 39, scope: !677, inlinedAt: !1183)
!1183 = distinct !DILocation(line: 91, column: 5, scope: !663, inlinedAt: !1177)
!1184 = !DILocation(line: 65, column: 47, scope: !677, inlinedAt: !1183)
!1185 = !DILocation(line: 67, column: 28, scope: !677, inlinedAt: !1183)
!1186 = !DILocation(line: 67, column: 51, scope: !677, inlinedAt: !1183)
!1187 = !DILocation(line: 67, column: 7, scope: !677, inlinedAt: !1183)
!1188 = !DILocation(line: 66, column: 3, scope: !677, inlinedAt: !1183)
!1189 = !DILocation(line: 91, column: 5, scope: !663, inlinedAt: !1177)
!1190 = !DILocation(line: 96, column: 3, scope: !1020, inlinedAt: !1174)
!1191 = !DILocalVariable(name: "ls", arg: 1, scope: !1192, file: !3, line: 1036, type: !597)
!1192 = distinct !DISubprogram(name: "exp1", scope: !3, file: !3, line: 1036, type: !866, isLocal: true, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1193)
!1193 = !{!1191, !1194, !1195}
!1194 = !DILocalVariable(name: "e", scope: !1192, file: !3, line: 1037, type: !943)
!1195 = !DILocalVariable(name: "k", scope: !1192, file: !3, line: 1038, type: !203)
!1196 = !DILocation(line: 1036, column: 28, scope: !1192, inlinedAt: !1197)
!1197 = distinct !DILocation(line: 1076, column: 3, scope: !1152, inlinedAt: !1161)
!1198 = !DILocation(line: 1037, column: 3, scope: !1192, inlinedAt: !1197)
!1199 = !DILocation(line: 1037, column: 11, scope: !1192, inlinedAt: !1197)
!1200 = !DILocation(line: 856, column: 29, scope: !964, inlinedAt: !1201)
!1201 = distinct !DILocation(line: 1039, column: 3, scope: !1192, inlinedAt: !1197)
!1202 = !DILocation(line: 856, column: 42, scope: !964, inlinedAt: !1201)
!1203 = !DILocation(line: 857, column: 3, scope: !964, inlinedAt: !1201)
!1204 = !DILocation(line: 1038, column: 7, scope: !1192, inlinedAt: !1197)
!1205 = !DILocation(line: 1041, column: 24, scope: !1192, inlinedAt: !1197)
!1206 = !DILocation(line: 1041, column: 3, scope: !1192, inlinedAt: !1197)
!1207 = !DILocation(line: 1043, column: 1, scope: !1192, inlinedAt: !1197)
!1208 = !DILocation(line: 94, column: 34, scope: !1020, inlinedAt: !1209)
!1209 = distinct !DILocation(line: 1077, column: 3, scope: !1152, inlinedAt: !1161)
!1210 = !DILocation(line: 94, column: 42, scope: !1020, inlinedAt: !1209)
!1211 = !DILocation(line: 89, column: 30, scope: !664, inlinedAt: !1212)
!1212 = distinct !DILocation(line: 95, column: 3, scope: !1020, inlinedAt: !1209)
!1213 = !DILocation(line: 89, column: 38, scope: !664, inlinedAt: !1212)
!1214 = !DILocation(line: 90, column: 13, scope: !663, inlinedAt: !1212)
!1215 = !DILocation(line: 90, column: 19, scope: !663, inlinedAt: !1212)
!1216 = !DILocation(line: 90, column: 7, scope: !664, inlinedAt: !1212)
!1217 = !DILocation(line: 65, column: 39, scope: !677, inlinedAt: !1218)
!1218 = distinct !DILocation(line: 91, column: 5, scope: !663, inlinedAt: !1212)
!1219 = !DILocation(line: 65, column: 47, scope: !677, inlinedAt: !1218)
!1220 = !DILocation(line: 67, column: 28, scope: !677, inlinedAt: !1218)
!1221 = !DILocation(line: 67, column: 51, scope: !677, inlinedAt: !1218)
!1222 = !DILocation(line: 67, column: 7, scope: !677, inlinedAt: !1218)
!1223 = !DILocation(line: 66, column: 3, scope: !677, inlinedAt: !1218)
!1224 = !DILocation(line: 91, column: 5, scope: !663, inlinedAt: !1212)
!1225 = !DILocation(line: 96, column: 3, scope: !1020, inlinedAt: !1209)
!1226 = !DILocation(line: 1036, column: 28, scope: !1192, inlinedAt: !1227)
!1227 = distinct !DILocation(line: 1078, column: 3, scope: !1152, inlinedAt: !1161)
!1228 = !DILocation(line: 1037, column: 3, scope: !1192, inlinedAt: !1227)
!1229 = !DILocation(line: 1037, column: 11, scope: !1192, inlinedAt: !1227)
!1230 = !DILocation(line: 856, column: 29, scope: !964, inlinedAt: !1231)
!1231 = distinct !DILocation(line: 1039, column: 3, scope: !1192, inlinedAt: !1227)
!1232 = !DILocation(line: 856, column: 42, scope: !964, inlinedAt: !1231)
!1233 = !DILocation(line: 857, column: 3, scope: !964, inlinedAt: !1231)
!1234 = !DILocation(line: 1038, column: 7, scope: !1192, inlinedAt: !1227)
!1235 = !DILocation(line: 1041, column: 24, scope: !1192, inlinedAt: !1227)
!1236 = !DILocation(line: 1041, column: 3, scope: !1192, inlinedAt: !1227)
!1237 = !DILocation(line: 1043, column: 1, scope: !1192, inlinedAt: !1227)
!1238 = !DILocation(line: 80, column: 32, scope: !635, inlinedAt: !1239)
!1239 = distinct !DILocation(line: 1079, column: 7, scope: !1240, inlinedAt: !1161)
!1240 = distinct !DILexicalBlock(scope: !1152, file: !3, line: 1079, column: 7)
!1241 = !DILocation(line: 80, column: 40, scope: !635, inlinedAt: !1239)
!1242 = !DILocation(line: 81, column: 13, scope: !644, inlinedAt: !1239)
!1243 = !DILocation(line: 81, column: 19, scope: !644, inlinedAt: !1239)
!1244 = !DILocation(line: 81, column: 7, scope: !635, inlinedAt: !1239)
!1245 = !DILocation(line: 82, column: 5, scope: !648, inlinedAt: !1239)
!1246 = !DILocation(line: 1036, column: 28, scope: !1192, inlinedAt: !1247)
!1247 = distinct !DILocation(line: 1080, column: 5, scope: !1240, inlinedAt: !1161)
!1248 = !DILocation(line: 1037, column: 3, scope: !1192, inlinedAt: !1247)
!1249 = !DILocation(line: 1037, column: 11, scope: !1192, inlinedAt: !1247)
!1250 = !DILocation(line: 856, column: 29, scope: !964, inlinedAt: !1251)
!1251 = distinct !DILocation(line: 1039, column: 3, scope: !1192, inlinedAt: !1247)
!1252 = !DILocation(line: 856, column: 42, scope: !964, inlinedAt: !1251)
!1253 = !DILocation(line: 857, column: 3, scope: !964, inlinedAt: !1251)
!1254 = !DILocation(line: 1038, column: 7, scope: !1192, inlinedAt: !1247)
!1255 = !DILocation(line: 1041, column: 24, scope: !1192, inlinedAt: !1247)
!1256 = !DILocation(line: 1041, column: 3, scope: !1192, inlinedAt: !1247)
!1257 = !DILocation(line: 1043, column: 1, scope: !1192, inlinedAt: !1247)
!1258 = !DILocation(line: 1080, column: 5, scope: !1240, inlinedAt: !1161)
!1259 = !DILocation(line: 1082, column: 36, scope: !1260, inlinedAt: !1161)
!1260 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 1081, column: 8)
!1261 = !DILocation(line: 1082, column: 45, scope: !1260, inlinedAt: !1161)
!1262 = !DILocation(line: 1082, column: 5, scope: !1260, inlinedAt: !1161)
!1263 = !DILocation(line: 1083, column: 5, scope: !1260, inlinedAt: !1161)
!1264 = !DILocation(line: 1085, column: 3, scope: !1152, inlinedAt: !1161)
!1265 = !DILocation(line: 1121, column: 42, scope: !1162, inlinedAt: !1098)
!1266 = !DILocalVariable(name: "ls", arg: 1, scope: !1267, file: !3, line: 1089, type: !597)
!1267 = distinct !DISubprogram(name: "forlist", scope: !3, file: !3, line: 1089, type: !1268, isLocal: true, isDefinition: true, scopeLine: 1089, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1270)
!1268 = !DISubroutineType(types: !1269)
!1269 = !{null, !597, !332}
!1270 = !{!1266, !1271, !1272, !1273, !1274, !1275, !1276}
!1271 = !DILocalVariable(name: "indexname", arg: 2, scope: !1267, file: !3, line: 1089, type: !332)
!1272 = !DILocalVariable(name: "fs", scope: !1267, file: !3, line: 1091, type: !694)
!1273 = !DILocalVariable(name: "e", scope: !1267, file: !3, line: 1092, type: !943)
!1274 = !DILocalVariable(name: "nvars", scope: !1267, file: !3, line: 1093, type: !203)
!1275 = !DILocalVariable(name: "line", scope: !1267, file: !3, line: 1094, type: !203)
!1276 = !DILocalVariable(name: "base", scope: !1267, file: !3, line: 1095, type: !203)
!1277 = !DILocation(line: 1089, column: 32, scope: !1267, inlinedAt: !1278)
!1278 = distinct !DILocation(line: 1122, column: 27, scope: !1162, inlinedAt: !1098)
!1279 = !DILocation(line: 1089, column: 45, scope: !1267, inlinedAt: !1278)
!1280 = !DILocation(line: 1091, column: 23, scope: !1267, inlinedAt: !1278)
!1281 = !DILocation(line: 1091, column: 14, scope: !1267, inlinedAt: !1278)
!1282 = !DILocation(line: 1092, column: 3, scope: !1267, inlinedAt: !1278)
!1283 = !DILocation(line: 1093, column: 7, scope: !1267, inlinedAt: !1278)
!1284 = !DILocation(line: 1095, column: 18, scope: !1267, inlinedAt: !1278)
!1285 = !DILocation(line: 1095, column: 7, scope: !1267, inlinedAt: !1278)
!1286 = !DILocation(line: 1097, column: 3, scope: !1267, inlinedAt: !1278)
!1287 = !DILocation(line: 1098, column: 3, scope: !1267, inlinedAt: !1278)
!1288 = !DILocation(line: 1099, column: 3, scope: !1267, inlinedAt: !1278)
!1289 = !DILocation(line: 1101, column: 3, scope: !1267, inlinedAt: !1278)
!1290 = !DILocation(line: 80, column: 32, scope: !635, inlinedAt: !1291)
!1291 = distinct !DILocation(line: 1102, column: 10, scope: !1267, inlinedAt: !1278)
!1292 = !DILocation(line: 80, column: 40, scope: !635, inlinedAt: !1291)
!1293 = !DILocation(line: 81, column: 13, scope: !644, inlinedAt: !1291)
!1294 = !DILocation(line: 81, column: 19, scope: !644, inlinedAt: !1291)
!1295 = !DILocation(line: 81, column: 7, scope: !635, inlinedAt: !1291)
!1296 = !DILocation(line: 82, column: 5, scope: !648, inlinedAt: !1291)
!1297 = !DILocation(line: 117, column: 42, scope: !1123, inlinedAt: !1298)
!1298 = distinct !DILocation(line: 1103, column: 22, scope: !1267, inlinedAt: !1278)
!1299 = !DILocation(line: 89, column: 30, scope: !664, inlinedAt: !1300)
!1300 = distinct !DILocation(line: 119, column: 3, scope: !1123, inlinedAt: !1298)
!1301 = !DILocation(line: 89, column: 38, scope: !664, inlinedAt: !1300)
!1302 = !DILocation(line: 90, column: 13, scope: !663, inlinedAt: !1300)
!1303 = !DILocation(line: 90, column: 19, scope: !663, inlinedAt: !1300)
!1304 = !DILocation(line: 90, column: 7, scope: !664, inlinedAt: !1300)
!1305 = !DILocation(line: 65, column: 39, scope: !677, inlinedAt: !1306)
!1306 = distinct !DILocation(line: 91, column: 5, scope: !663, inlinedAt: !1300)
!1307 = !DILocation(line: 65, column: 47, scope: !677, inlinedAt: !1306)
!1308 = !DILocation(line: 67, column: 28, scope: !677, inlinedAt: !1306)
!1309 = !DILocation(line: 67, column: 51, scope: !677, inlinedAt: !1306)
!1310 = !DILocation(line: 67, column: 7, scope: !677, inlinedAt: !1306)
!1311 = !DILocation(line: 66, column: 3, scope: !677, inlinedAt: !1306)
!1312 = !DILocation(line: 91, column: 5, scope: !663, inlinedAt: !1300)
!1313 = !DILocation(line: 120, column: 22, scope: !1123, inlinedAt: !1298)
!1314 = !DILocation(line: 118, column: 12, scope: !1123, inlinedAt: !1298)
!1315 = !DILocation(line: 121, column: 3, scope: !1123, inlinedAt: !1298)
!1316 = !DILocation(line: 1103, column: 46, scope: !1267, inlinedAt: !1278)
!1317 = !DILocation(line: 1103, column: 5, scope: !1267, inlinedAt: !1278)
!1318 = distinct !{!1318, !1319, !1320}
!1319 = !DILocation(line: 1102, column: 3, scope: !1267)
!1320 = !DILocation(line: 1103, column: 48, scope: !1267)
!1321 = !DILocation(line: 90, column: 13, scope: !663, inlinedAt: !1322)
!1322 = distinct !DILocation(line: 95, column: 3, scope: !1020, inlinedAt: !1323)
!1323 = distinct !DILocation(line: 1104, column: 3, scope: !1267, inlinedAt: !1278)
!1324 = !DILocation(line: 94, column: 34, scope: !1020, inlinedAt: !1323)
!1325 = !DILocation(line: 94, column: 42, scope: !1020, inlinedAt: !1323)
!1326 = !DILocation(line: 89, column: 30, scope: !664, inlinedAt: !1322)
!1327 = !DILocation(line: 89, column: 38, scope: !664, inlinedAt: !1322)
!1328 = !DILocation(line: 90, column: 19, scope: !663, inlinedAt: !1322)
!1329 = !DILocation(line: 90, column: 7, scope: !664, inlinedAt: !1322)
!1330 = !DILocation(line: 65, column: 39, scope: !677, inlinedAt: !1331)
!1331 = distinct !DILocation(line: 91, column: 5, scope: !663, inlinedAt: !1322)
!1332 = !DILocation(line: 65, column: 47, scope: !677, inlinedAt: !1331)
!1333 = !DILocation(line: 67, column: 28, scope: !677, inlinedAt: !1331)
!1334 = !DILocation(line: 67, column: 51, scope: !677, inlinedAt: !1331)
!1335 = !DILocation(line: 67, column: 7, scope: !677, inlinedAt: !1331)
!1336 = !DILocation(line: 66, column: 3, scope: !677, inlinedAt: !1331)
!1337 = !DILocation(line: 91, column: 5, scope: !663, inlinedAt: !1322)
!1338 = !DILocation(line: 96, column: 3, scope: !1020, inlinedAt: !1323)
!1339 = !DILocation(line: 1105, column: 14, scope: !1267, inlinedAt: !1278)
!1340 = !DILocation(line: 1094, column: 7, scope: !1267, inlinedAt: !1278)
!1341 = !DILocation(line: 1092, column: 11, scope: !1267, inlinedAt: !1278)
!1342 = !DILocalVariable(name: "ls", arg: 1, scope: !1343, file: !3, line: 596, type: !597)
!1343 = distinct !DISubprogram(name: "explist1", scope: !3, file: !3, line: 596, type: !1344, isLocal: true, isDefinition: true, scopeLine: 596, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1346)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{!203, !597, !967}
!1346 = !{!1342, !1347, !1348}
!1347 = !DILocalVariable(name: "v", arg: 2, scope: !1343, file: !3, line: 596, type: !967)
!1348 = !DILocalVariable(name: "n", scope: !1343, file: !3, line: 598, type: !203)
!1349 = !DILocation(line: 596, column: 32, scope: !1343, inlinedAt: !1350)
!1350 = distinct !DILocation(line: 1106, column: 24, scope: !1267, inlinedAt: !1278)
!1351 = !DILocation(line: 596, column: 45, scope: !1343, inlinedAt: !1350)
!1352 = !DILocation(line: 598, column: 7, scope: !1343, inlinedAt: !1350)
!1353 = !DILocation(line: 856, column: 29, scope: !964, inlinedAt: !1354)
!1354 = distinct !DILocation(line: 599, column: 3, scope: !1343, inlinedAt: !1350)
!1355 = !DILocation(line: 856, column: 42, scope: !964, inlinedAt: !1354)
!1356 = !DILocation(line: 857, column: 3, scope: !964, inlinedAt: !1354)
!1357 = !DILocation(line: 80, column: 32, scope: !635, inlinedAt: !1358)
!1358 = distinct !DILocation(line: 600, column: 10, scope: !1343, inlinedAt: !1350)
!1359 = !DILocation(line: 80, column: 40, scope: !635, inlinedAt: !1358)
!1360 = !DILocation(line: 81, column: 13, scope: !644, inlinedAt: !1358)
!1361 = !DILocation(line: 81, column: 19, scope: !644, inlinedAt: !1358)
!1362 = !DILocation(line: 81, column: 7, scope: !635, inlinedAt: !1358)
!1363 = !DILocation(line: 82, column: 5, scope: !648, inlinedAt: !1358)
!1364 = !DILocation(line: 601, column: 26, scope: !1365, inlinedAt: !1350)
!1365 = distinct !DILexicalBlock(scope: !1343, file: !3, line: 600, column: 29)
!1366 = !DILocation(line: 601, column: 5, scope: !1365, inlinedAt: !1350)
!1367 = !DILocation(line: 856, column: 29, scope: !964, inlinedAt: !1368)
!1368 = distinct !DILocation(line: 602, column: 5, scope: !1365, inlinedAt: !1350)
!1369 = !DILocation(line: 856, column: 42, scope: !964, inlinedAt: !1368)
!1370 = !DILocation(line: 857, column: 3, scope: !964, inlinedAt: !1368)
!1371 = !DILocation(line: 603, column: 6, scope: !1365, inlinedAt: !1350)
!1372 = distinct !{!1372, !1373, !1374}
!1373 = !DILocation(line: 600, column: 3, scope: !1343)
!1374 = !DILocation(line: 604, column: 3, scope: !1343)
!1375 = !DILocation(line: 0, scope: !1365, inlinedAt: !1350)
!1376 = !DILocation(line: 1106, column: 3, scope: !1267, inlinedAt: !1278)
!1377 = !DILocation(line: 1107, column: 3, scope: !1267, inlinedAt: !1278)
!1378 = !DILocation(line: 1108, column: 3, scope: !1267, inlinedAt: !1278)
!1379 = !DILocation(line: 1109, column: 1, scope: !1267, inlinedAt: !1278)
!1380 = !DILocation(line: 1122, column: 49, scope: !1162, inlinedAt: !1098)
!1381 = !DILocation(line: 1123, column: 14, scope: !1162, inlinedAt: !1098)
!1382 = !DILocation(line: 1124, column: 3, scope: !1162, inlinedAt: !1098)
!1383 = !DILocation(line: 1125, column: 3, scope: !1091, inlinedAt: !1098)
!1384 = !DILocation(line: 296, column: 36, scope: !1046, inlinedAt: !1385)
!1385 = distinct !DILocation(line: 1126, column: 3, scope: !1091, inlinedAt: !1098)
!1386 = !DILocation(line: 297, column: 22, scope: !1046, inlinedAt: !1385)
!1387 = !DILocation(line: 297, column: 13, scope: !1046, inlinedAt: !1385)
!1388 = !DILocation(line: 298, column: 16, scope: !1046, inlinedAt: !1385)
!1389 = !DILocation(line: 298, column: 10, scope: !1046, inlinedAt: !1385)
!1390 = !DILocation(line: 299, column: 18, scope: !1046, inlinedAt: !1385)
!1391 = !DILocation(line: 299, column: 26, scope: !1046, inlinedAt: !1385)
!1392 = !DILocation(line: 299, column: 22, scope: !1046, inlinedAt: !1385)
!1393 = !DILocation(line: 176, column: 35, scope: !782, inlinedAt: !1394)
!1394 = distinct !DILocation(line: 299, column: 3, scope: !1046, inlinedAt: !1385)
!1395 = !DILocation(line: 176, column: 43, scope: !782, inlinedAt: !1394)
!1396 = !DILocation(line: 177, column: 23, scope: !782, inlinedAt: !1394)
!1397 = !DILocation(line: 177, column: 14, scope: !782, inlinedAt: !1394)
!1398 = !DILocation(line: 178, column: 14, scope: !782, inlinedAt: !1394)
!1399 = !DILocation(line: 178, column: 22, scope: !782, inlinedAt: !1394)
!1400 = !DILocation(line: 178, column: 3, scope: !782, inlinedAt: !1394)
!1401 = !DILocation(line: 179, column: 5, scope: !782, inlinedAt: !1394)
!1402 = !DILocation(line: 179, column: 34, scope: !782, inlinedAt: !1394)
!1403 = !DILocation(line: 179, column: 40, scope: !782, inlinedAt: !1394)
!1404 = !DILocation(line: 300, column: 11, scope: !1072, inlinedAt: !1385)
!1405 = !DILocation(line: 300, column: 7, scope: !1072, inlinedAt: !1385)
!1406 = !DILocation(line: 300, column: 7, scope: !1046, inlinedAt: !1385)
!1407 = !DILocation(line: 301, column: 5, scope: !1072, inlinedAt: !1385)
!1408 = !DILocation(line: 305, column: 21, scope: !1046, inlinedAt: !1385)
!1409 = !DILocation(line: 305, column: 17, scope: !1046, inlinedAt: !1385)
!1410 = !DILocation(line: 305, column: 7, scope: !1046, inlinedAt: !1385)
!1411 = !DILocation(line: 305, column: 15, scope: !1046, inlinedAt: !1385)
!1412 = !DILocation(line: 306, column: 28, scope: !1046, inlinedAt: !1385)
!1413 = !DILocation(line: 306, column: 3, scope: !1046, inlinedAt: !1385)
!1414 = !DILocation(line: 1127, column: 1, scope: !1091, inlinedAt: !1098)
!1415 = !DILocation(line: 1290, column: 7, scope: !1099)
!1416 = !DILocalVariable(name: "ls", arg: 1, scope: !1417, file: !3, line: 1010, type: !597)
!1417 = distinct !DISubprogram(name: "repeatstat", scope: !3, file: !3, line: 1010, type: !665, isLocal: true, isDefinition: true, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1418)
!1418 = !{!1416, !1419, !1420, !1421, !1422, !1423, !1424}
!1419 = !DILocalVariable(name: "line", arg: 2, scope: !1417, file: !3, line: 1010, type: !203)
!1420 = !DILocalVariable(name: "condexit", scope: !1417, file: !3, line: 1012, type: !203)
!1421 = !DILocalVariable(name: "fs", scope: !1417, file: !3, line: 1013, type: !694)
!1422 = !DILocalVariable(name: "repeat_init", scope: !1417, file: !3, line: 1014, type: !203)
!1423 = !DILocalVariable(name: "bl1", scope: !1417, file: !3, line: 1015, type: !928)
!1424 = !DILocalVariable(name: "bl2", scope: !1417, file: !3, line: 1015, type: !928)
!1425 = !DILocation(line: 1010, column: 35, scope: !1417, inlinedAt: !1426)
!1426 = distinct !DILocation(line: 1293, column: 7, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !887, file: !3, line: 1292, column: 21)
!1428 = !DILocation(line: 1010, column: 43, scope: !1417, inlinedAt: !1426)
!1429 = !DILocation(line: 1013, column: 23, scope: !1417, inlinedAt: !1426)
!1430 = !DILocation(line: 1013, column: 14, scope: !1417, inlinedAt: !1426)
!1431 = !DILocation(line: 1014, column: 21, scope: !1417, inlinedAt: !1426)
!1432 = !DILocation(line: 1014, column: 7, scope: !1417, inlinedAt: !1426)
!1433 = !DILocation(line: 1015, column: 3, scope: !1417, inlinedAt: !1426)
!1434 = !DILocation(line: 1015, column: 12, scope: !1417, inlinedAt: !1426)
!1435 = !DILocation(line: 285, column: 36, scope: !990, inlinedAt: !1436)
!1436 = distinct !DILocation(line: 1016, column: 3, scope: !1417, inlinedAt: !1426)
!1437 = !DILocation(line: 285, column: 50, scope: !990, inlinedAt: !1436)
!1438 = !DILocation(line: 285, column: 62, scope: !990, inlinedAt: !1436)
!1439 = !DILocation(line: 286, column: 7, scope: !990, inlinedAt: !1436)
!1440 = !DILocation(line: 286, column: 17, scope: !990, inlinedAt: !1436)
!1441 = !DILocation(line: 287, column: 7, scope: !990, inlinedAt: !1436)
!1442 = !DILocation(line: 287, column: 19, scope: !990, inlinedAt: !1436)
!1443 = !DILocation(line: 288, column: 21, scope: !990, inlinedAt: !1436)
!1444 = !DILocation(line: 288, column: 7, scope: !990, inlinedAt: !1436)
!1445 = !DILocation(line: 288, column: 15, scope: !990, inlinedAt: !1436)
!1446 = !DILocation(line: 289, column: 7, scope: !990, inlinedAt: !1436)
!1447 = !DILocation(line: 289, column: 13, scope: !990, inlinedAt: !1436)
!1448 = !DILocation(line: 290, column: 22, scope: !990, inlinedAt: !1436)
!1449 = !DILocation(line: 290, column: 16, scope: !990, inlinedAt: !1436)
!1450 = !DILocation(line: 1015, column: 17, scope: !1417, inlinedAt: !1426)
!1451 = !DILocation(line: 285, column: 36, scope: !990, inlinedAt: !1452)
!1452 = distinct !DILocation(line: 1017, column: 3, scope: !1417, inlinedAt: !1426)
!1453 = !DILocation(line: 285, column: 50, scope: !990, inlinedAt: !1452)
!1454 = !DILocation(line: 285, column: 62, scope: !990, inlinedAt: !1452)
!1455 = !DILocation(line: 286, column: 7, scope: !990, inlinedAt: !1452)
!1456 = !DILocation(line: 286, column: 17, scope: !990, inlinedAt: !1452)
!1457 = !DILocation(line: 287, column: 7, scope: !990, inlinedAt: !1452)
!1458 = !DILocation(line: 287, column: 19, scope: !990, inlinedAt: !1452)
!1459 = !DILocation(line: 288, column: 7, scope: !990, inlinedAt: !1452)
!1460 = !DILocation(line: 288, column: 15, scope: !990, inlinedAt: !1452)
!1461 = !DILocation(line: 289, column: 7, scope: !990, inlinedAt: !1452)
!1462 = !DILocation(line: 289, column: 13, scope: !990, inlinedAt: !1452)
!1463 = !DILocation(line: 290, column: 22, scope: !990, inlinedAt: !1452)
!1464 = !DILocation(line: 290, column: 16, scope: !990, inlinedAt: !1452)
!1465 = !DILocation(line: 291, column: 10, scope: !990, inlinedAt: !1452)
!1466 = !DILocation(line: 1018, column: 3, scope: !1417, inlinedAt: !1426)
!1467 = !DILocation(line: 1325, column: 30, scope: !594, inlinedAt: !1468)
!1468 = distinct !DILocation(line: 1019, column: 3, scope: !1417, inlinedAt: !1426)
!1469 = !DILocation(line: 1327, column: 7, scope: !594, inlinedAt: !1468)
!1470 = !DILocation(line: 276, column: 35, scope: !605, inlinedAt: !1471)
!1471 = distinct !DILocation(line: 1328, column: 3, scope: !594, inlinedAt: !1468)
!1472 = !DILocation(line: 277, column: 13, scope: !610, inlinedAt: !1471)
!1473 = !DILocation(line: 277, column: 16, scope: !610, inlinedAt: !1471)
!1474 = !DILocation(line: 277, column: 7, scope: !610, inlinedAt: !1471)
!1475 = !DILocation(line: 277, column: 24, scope: !610, inlinedAt: !1471)
!1476 = !DILocation(line: 277, column: 7, scope: !605, inlinedAt: !1471)
!1477 = !DILocation(line: 278, column: 2, scope: !610, inlinedAt: !1471)
!1478 = !DILocation(line: 1329, column: 41, scope: !594, inlinedAt: !1468)
!1479 = !DILocation(line: 871, column: 30, scope: !625, inlinedAt: !1480)
!1480 = distinct !DILocation(line: 1329, column: 22, scope: !594, inlinedAt: !1468)
!1481 = !DILocation(line: 872, column: 3, scope: !625, inlinedAt: !1480)
!1482 = !DILocation(line: 1330, column: 14, scope: !633, inlinedAt: !1468)
!1483 = !DILocation(line: 80, column: 32, scope: !635, inlinedAt: !1484)
!1484 = distinct !DILocation(line: 1331, column: 5, scope: !633, inlinedAt: !1468)
!1485 = !DILocation(line: 80, column: 40, scope: !635, inlinedAt: !1484)
!1486 = !DILocation(line: 81, column: 13, scope: !644, inlinedAt: !1484)
!1487 = !DILocation(line: 81, column: 19, scope: !644, inlinedAt: !1484)
!1488 = !DILocation(line: 81, column: 7, scope: !635, inlinedAt: !1484)
!1489 = !DILocation(line: 82, column: 5, scope: !648, inlinedAt: !1484)
!1490 = !DILocation(line: 83, column: 5, scope: !648, inlinedAt: !1484)
!1491 = !DILocation(line: 1334, column: 27, scope: !633, inlinedAt: !1468)
!1492 = !DILocation(line: 1334, column: 31, scope: !633, inlinedAt: !1468)
!1493 = !DILocation(line: 1334, column: 23, scope: !633, inlinedAt: !1468)
!1494 = !DILocation(line: 1334, column: 13, scope: !633, inlinedAt: !1468)
!1495 = !DILocation(line: 1334, column: 21, scope: !633, inlinedAt: !1468)
!1496 = !DILocation(line: 1329, column: 11, scope: !594, inlinedAt: !1468)
!1497 = !DILocation(line: 1329, column: 18, scope: !594, inlinedAt: !1468)
!1498 = !DILocation(line: 1336, column: 3, scope: !594, inlinedAt: !1468)
!1499 = !DILocation(line: 1020, column: 3, scope: !1417, inlinedAt: !1426)
!1500 = !DILocation(line: 965, column: 28, scope: !940, inlinedAt: !1501)
!1501 = distinct !DILocation(line: 1021, column: 14, scope: !1417, inlinedAt: !1426)
!1502 = !DILocation(line: 967, column: 3, scope: !940, inlinedAt: !1501)
!1503 = !DILocation(line: 967, column: 11, scope: !940, inlinedAt: !1501)
!1504 = !DILocation(line: 856, column: 29, scope: !964, inlinedAt: !1505)
!1505 = distinct !DILocation(line: 968, column: 3, scope: !940, inlinedAt: !1501)
!1506 = !DILocation(line: 856, column: 42, scope: !964, inlinedAt: !1505)
!1507 = !DILocation(line: 857, column: 3, scope: !964, inlinedAt: !1505)
!1508 = !DILocation(line: 969, column: 9, scope: !975, inlinedAt: !1501)
!1509 = !DILocation(line: 969, column: 11, scope: !975, inlinedAt: !1501)
!1510 = !DILocation(line: 969, column: 7, scope: !940, inlinedAt: !1501)
!1511 = !DILocation(line: 969, column: 24, scope: !975, inlinedAt: !1501)
!1512 = !DILocation(line: 969, column: 20, scope: !975, inlinedAt: !1501)
!1513 = !DILocation(line: 970, column: 21, scope: !940, inlinedAt: !1501)
!1514 = !DILocation(line: 970, column: 3, scope: !940, inlinedAt: !1501)
!1515 = !DILocation(line: 971, column: 12, scope: !940, inlinedAt: !1501)
!1516 = !DILocation(line: 972, column: 1, scope: !940, inlinedAt: !1501)
!1517 = !DILocation(line: 1012, column: 7, scope: !1417, inlinedAt: !1426)
!1518 = !DILocation(line: 1022, column: 12, scope: !1519, inlinedAt: !1426)
!1519 = distinct !DILexicalBlock(scope: !1417, file: !3, line: 1022, column: 7)
!1520 = !DILocation(line: 1022, column: 8, scope: !1519, inlinedAt: !1426)
!1521 = !DILocation(line: 1022, column: 7, scope: !1417, inlinedAt: !1426)
!1522 = !DILocation(line: 296, column: 36, scope: !1046, inlinedAt: !1523)
!1523 = distinct !DILocation(line: 1023, column: 5, scope: !1524, inlinedAt: !1426)
!1524 = distinct !DILexicalBlock(scope: !1519, file: !3, line: 1022, column: 19)
!1525 = !DILocation(line: 297, column: 22, scope: !1046, inlinedAt: !1523)
!1526 = !DILocation(line: 297, column: 13, scope: !1046, inlinedAt: !1523)
!1527 = !DILocation(line: 298, column: 16, scope: !1046, inlinedAt: !1523)
!1528 = !DILocation(line: 298, column: 10, scope: !1046, inlinedAt: !1523)
!1529 = !DILocation(line: 299, column: 18, scope: !1046, inlinedAt: !1523)
!1530 = !DILocation(line: 299, column: 26, scope: !1046, inlinedAt: !1523)
!1531 = !DILocation(line: 299, column: 22, scope: !1046, inlinedAt: !1523)
!1532 = !DILocation(line: 176, column: 35, scope: !782, inlinedAt: !1533)
!1533 = distinct !DILocation(line: 299, column: 3, scope: !1046, inlinedAt: !1523)
!1534 = !DILocation(line: 176, column: 43, scope: !782, inlinedAt: !1533)
!1535 = !DILocation(line: 177, column: 23, scope: !782, inlinedAt: !1533)
!1536 = !DILocation(line: 177, column: 14, scope: !782, inlinedAt: !1533)
!1537 = !DILocation(line: 178, column: 14, scope: !782, inlinedAt: !1533)
!1538 = !DILocation(line: 178, column: 22, scope: !782, inlinedAt: !1533)
!1539 = !DILocation(line: 178, column: 3, scope: !782, inlinedAt: !1533)
!1540 = !DILocation(line: 179, column: 5, scope: !782, inlinedAt: !1533)
!1541 = !DILocation(line: 179, column: 34, scope: !782, inlinedAt: !1533)
!1542 = !DILocation(line: 179, column: 40, scope: !782, inlinedAt: !1533)
!1543 = !DILocation(line: 300, column: 11, scope: !1072, inlinedAt: !1523)
!1544 = !DILocation(line: 300, column: 7, scope: !1072, inlinedAt: !1523)
!1545 = !DILocation(line: 300, column: 7, scope: !1046, inlinedAt: !1523)
!1546 = !DILocation(line: 301, column: 5, scope: !1072, inlinedAt: !1523)
!1547 = !DILocation(line: 305, column: 21, scope: !1046, inlinedAt: !1523)
!1548 = !DILocation(line: 305, column: 17, scope: !1046, inlinedAt: !1523)
!1549 = !DILocation(line: 305, column: 7, scope: !1046, inlinedAt: !1523)
!1550 = !DILocation(line: 305, column: 15, scope: !1046, inlinedAt: !1523)
!1551 = !DILocation(line: 306, column: 28, scope: !1046, inlinedAt: !1523)
!1552 = !DILocation(line: 306, column: 3, scope: !1046, inlinedAt: !1523)
!1553 = !DILocation(line: 1024, column: 24, scope: !1524, inlinedAt: !1426)
!1554 = !DILocation(line: 1024, column: 5, scope: !1524, inlinedAt: !1426)
!1555 = !DILocation(line: 1025, column: 3, scope: !1524, inlinedAt: !1426)
!1556 = !DILocalVariable(name: "ls", arg: 1, scope: !1557, file: !3, line: 975, type: !597)
!1557 = distinct !DISubprogram(name: "breakstat", scope: !3, file: !3, line: 975, type: !595, isLocal: true, isDefinition: true, scopeLine: 975, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1558)
!1558 = !{!1556, !1559, !1560, !1561}
!1559 = !DILocalVariable(name: "fs", scope: !1557, file: !3, line: 976, type: !694)
!1560 = !DILocalVariable(name: "bl", scope: !1557, file: !3, line: 977, type: !993)
!1561 = !DILocalVariable(name: "upval", scope: !1557, file: !3, line: 978, type: !203)
!1562 = !DILocation(line: 975, column: 34, scope: !1557, inlinedAt: !1563)
!1563 = distinct !DILocation(line: 1027, column: 5, scope: !1564, inlinedAt: !1426)
!1564 = distinct !DILexicalBlock(scope: !1519, file: !3, line: 1026, column: 8)
!1565 = !DILocation(line: 976, column: 23, scope: !1557, inlinedAt: !1563)
!1566 = !DILocation(line: 976, column: 14, scope: !1557, inlinedAt: !1563)
!1567 = !DILocation(line: 977, column: 22, scope: !1557, inlinedAt: !1563)
!1568 = !DILocation(line: 977, column: 13, scope: !1557, inlinedAt: !1563)
!1569 = !DILocation(line: 978, column: 7, scope: !1557, inlinedAt: !1563)
!1570 = !DILocation(line: 0, scope: !1571, inlinedAt: !1563)
!1571 = distinct !DILexicalBlock(scope: !1557, file: !3, line: 979, column: 34)
!1572 = !{!578, !578, i64 0}
!1573 = !DILocation(line: 979, column: 10, scope: !1557, inlinedAt: !1563)
!1574 = !DILocation(line: 979, column: 13, scope: !1557, inlinedAt: !1563)
!1575 = !DILocation(line: 979, column: 21, scope: !1557, inlinedAt: !1563)
!1576 = !DILocation(line: 979, column: 16, scope: !1557, inlinedAt: !1563)
!1577 = !DILocation(line: 979, column: 3, scope: !1557, inlinedAt: !1563)
!1578 = !DILocation(line: 980, column: 18, scope: !1571, inlinedAt: !1563)
!1579 = !DILocation(line: 980, column: 14, scope: !1571, inlinedAt: !1563)
!1580 = !DILocation(line: 980, column: 11, scope: !1571, inlinedAt: !1563)
!1581 = !DILocation(line: 981, column: 14, scope: !1571, inlinedAt: !1563)
!1582 = distinct !{!1582, !1583, !1584}
!1583 = !DILocation(line: 979, column: 3, scope: !1557)
!1584 = !DILocation(line: 982, column: 3, scope: !1557)
!1585 = !DILocation(line: 984, column: 5, scope: !1586, inlinedAt: !1563)
!1586 = distinct !DILexicalBlock(scope: !1557, file: !3, line: 983, column: 7)
!1587 = !DILocation(line: 985, column: 7, scope: !1588, inlinedAt: !1563)
!1588 = distinct !DILexicalBlock(scope: !1557, file: !3, line: 985, column: 7)
!1589 = !DILocation(line: 985, column: 7, scope: !1557, inlinedAt: !1563)
!1590 = !DILocation(line: 986, column: 36, scope: !1588, inlinedAt: !1563)
!1591 = !DILocation(line: 986, column: 32, scope: !1588, inlinedAt: !1563)
!1592 = !DILocation(line: 986, column: 5, scope: !1588, inlinedAt: !1563)
!1593 = !DILocation(line: 987, column: 24, scope: !1557, inlinedAt: !1563)
!1594 = !DILocation(line: 987, column: 35, scope: !1557, inlinedAt: !1563)
!1595 = !DILocation(line: 987, column: 3, scope: !1557, inlinedAt: !1563)
!1596 = !DILocation(line: 1028, column: 26, scope: !1564, inlinedAt: !1426)
!1597 = !DILocation(line: 1028, column: 5, scope: !1564, inlinedAt: !1426)
!1598 = !DILocation(line: 296, column: 36, scope: !1046, inlinedAt: !1599)
!1599 = distinct !DILocation(line: 1029, column: 5, scope: !1564, inlinedAt: !1426)
!1600 = !DILocation(line: 297, column: 22, scope: !1046, inlinedAt: !1599)
!1601 = !DILocation(line: 297, column: 13, scope: !1046, inlinedAt: !1599)
!1602 = !DILocation(line: 298, column: 16, scope: !1046, inlinedAt: !1599)
!1603 = !DILocation(line: 298, column: 10, scope: !1046, inlinedAt: !1599)
!1604 = !DILocation(line: 299, column: 18, scope: !1046, inlinedAt: !1599)
!1605 = !DILocation(line: 299, column: 26, scope: !1046, inlinedAt: !1599)
!1606 = !DILocation(line: 299, column: 22, scope: !1046, inlinedAt: !1599)
!1607 = !DILocation(line: 176, column: 35, scope: !782, inlinedAt: !1608)
!1608 = distinct !DILocation(line: 299, column: 3, scope: !1046, inlinedAt: !1599)
!1609 = !DILocation(line: 176, column: 43, scope: !782, inlinedAt: !1608)
!1610 = !DILocation(line: 177, column: 23, scope: !782, inlinedAt: !1608)
!1611 = !DILocation(line: 177, column: 14, scope: !782, inlinedAt: !1608)
!1612 = !DILocation(line: 178, column: 14, scope: !782, inlinedAt: !1608)
!1613 = !DILocation(line: 178, column: 22, scope: !782, inlinedAt: !1608)
!1614 = !DILocation(line: 178, column: 3, scope: !782, inlinedAt: !1608)
!1615 = !DILocation(line: 179, column: 5, scope: !782, inlinedAt: !1608)
!1616 = !DILocation(line: 179, column: 34, scope: !782, inlinedAt: !1608)
!1617 = !DILocation(line: 179, column: 40, scope: !782, inlinedAt: !1608)
!1618 = !DILocation(line: 300, column: 11, scope: !1072, inlinedAt: !1599)
!1619 = !DILocation(line: 300, column: 7, scope: !1072, inlinedAt: !1599)
!1620 = !DILocation(line: 300, column: 7, scope: !1046, inlinedAt: !1599)
!1621 = !DILocation(line: 301, column: 5, scope: !1072, inlinedAt: !1599)
!1622 = !DILocation(line: 305, column: 21, scope: !1046, inlinedAt: !1599)
!1623 = !DILocation(line: 305, column: 17, scope: !1046, inlinedAt: !1599)
!1624 = !DILocation(line: 305, column: 7, scope: !1046, inlinedAt: !1599)
!1625 = !DILocation(line: 305, column: 15, scope: !1046, inlinedAt: !1599)
!1626 = !DILocation(line: 306, column: 28, scope: !1046, inlinedAt: !1599)
!1627 = !DILocation(line: 306, column: 3, scope: !1046, inlinedAt: !1599)
!1628 = !DILocation(line: 1030, column: 24, scope: !1564, inlinedAt: !1426)
!1629 = !DILocation(line: 1030, column: 28, scope: !1564, inlinedAt: !1426)
!1630 = !DILocation(line: 1030, column: 5, scope: !1564, inlinedAt: !1426)
!1631 = !DILocation(line: 299, column: 18, scope: !1046, inlinedAt: !1632)
!1632 = distinct !DILocation(line: 1032, column: 3, scope: !1417, inlinedAt: !1426)
!1633 = !DILocation(line: 296, column: 36, scope: !1046, inlinedAt: !1632)
!1634 = !DILocation(line: 297, column: 22, scope: !1046, inlinedAt: !1632)
!1635 = !DILocation(line: 297, column: 13, scope: !1046, inlinedAt: !1632)
!1636 = !DILocation(line: 298, column: 16, scope: !1046, inlinedAt: !1632)
!1637 = !DILocation(line: 298, column: 10, scope: !1046, inlinedAt: !1632)
!1638 = !DILocation(line: 299, column: 26, scope: !1046, inlinedAt: !1632)
!1639 = !DILocation(line: 299, column: 22, scope: !1046, inlinedAt: !1632)
!1640 = !DILocation(line: 176, column: 35, scope: !782, inlinedAt: !1641)
!1641 = distinct !DILocation(line: 299, column: 3, scope: !1046, inlinedAt: !1632)
!1642 = !DILocation(line: 176, column: 43, scope: !782, inlinedAt: !1641)
!1643 = !DILocation(line: 177, column: 23, scope: !782, inlinedAt: !1641)
!1644 = !DILocation(line: 177, column: 14, scope: !782, inlinedAt: !1641)
!1645 = !DILocation(line: 178, column: 14, scope: !782, inlinedAt: !1641)
!1646 = !DILocation(line: 178, column: 22, scope: !782, inlinedAt: !1641)
!1647 = !DILocation(line: 178, column: 3, scope: !782, inlinedAt: !1641)
!1648 = !DILocation(line: 179, column: 5, scope: !782, inlinedAt: !1641)
!1649 = !DILocation(line: 179, column: 34, scope: !782, inlinedAt: !1641)
!1650 = !DILocation(line: 179, column: 40, scope: !782, inlinedAt: !1641)
!1651 = !DILocation(line: 300, column: 11, scope: !1072, inlinedAt: !1632)
!1652 = !DILocation(line: 300, column: 7, scope: !1072, inlinedAt: !1632)
!1653 = !DILocation(line: 300, column: 7, scope: !1046, inlinedAt: !1632)
!1654 = !DILocation(line: 301, column: 5, scope: !1072, inlinedAt: !1632)
!1655 = !DILocation(line: 305, column: 21, scope: !1046, inlinedAt: !1632)
!1656 = !DILocation(line: 305, column: 17, scope: !1046, inlinedAt: !1632)
!1657 = !DILocation(line: 305, column: 7, scope: !1046, inlinedAt: !1632)
!1658 = !DILocation(line: 305, column: 15, scope: !1046, inlinedAt: !1632)
!1659 = !DILocation(line: 306, column: 28, scope: !1046, inlinedAt: !1632)
!1660 = !DILocation(line: 306, column: 3, scope: !1046, inlinedAt: !1632)
!1661 = !DILocation(line: 1033, column: 1, scope: !1417, inlinedAt: !1426)
!1662 = !DILocation(line: 1294, column: 7, scope: !1427)
!1663 = !DILocalVariable(name: "ls", arg: 1, scope: !1664, file: !3, line: 1212, type: !597)
!1664 = distinct !DISubprogram(name: "funcstat", scope: !3, file: !3, line: 1212, type: !665, isLocal: true, isDefinition: true, scopeLine: 1212, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1665)
!1665 = !{!1663, !1666, !1667, !1668, !1669}
!1666 = !DILocalVariable(name: "line", arg: 2, scope: !1664, file: !3, line: 1212, type: !203)
!1667 = !DILocalVariable(name: "needself", scope: !1664, file: !3, line: 1214, type: !203)
!1668 = !DILocalVariable(name: "v", scope: !1664, file: !3, line: 1215, type: !943)
!1669 = !DILocalVariable(name: "b", scope: !1664, file: !3, line: 1215, type: !943)
!1670 = !DILocation(line: 1212, column: 33, scope: !1664, inlinedAt: !1671)
!1671 = distinct !DILocation(line: 1297, column: 7, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !887, file: !3, line: 1296, column: 23)
!1673 = !DILocation(line: 1212, column: 41, scope: !1664, inlinedAt: !1671)
!1674 = !DILocation(line: 1215, column: 3, scope: !1664, inlinedAt: !1671)
!1675 = !DILocation(line: 1216, column: 3, scope: !1664, inlinedAt: !1671)
!1676 = !DILocation(line: 1215, column: 11, scope: !1664, inlinedAt: !1671)
!1677 = !DILocalVariable(name: "ls", arg: 1, scope: !1678, file: !3, line: 1198, type: !597)
!1678 = distinct !DISubprogram(name: "funcname", scope: !3, file: !3, line: 1198, type: !1344, isLocal: true, isDefinition: true, scopeLine: 1198, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1679)
!1679 = !{!1677, !1680, !1681}
!1680 = !DILocalVariable(name: "v", arg: 2, scope: !1678, file: !3, line: 1198, type: !967)
!1681 = !DILocalVariable(name: "needself", scope: !1678, file: !3, line: 1200, type: !203)
!1682 = !DILocation(line: 1198, column: 32, scope: !1678, inlinedAt: !1683)
!1683 = distinct !DILocation(line: 1217, column: 14, scope: !1664, inlinedAt: !1671)
!1684 = !DILocation(line: 1198, column: 45, scope: !1678, inlinedAt: !1683)
!1685 = !DILocation(line: 1200, column: 7, scope: !1678, inlinedAt: !1683)
!1686 = !DILocalVariable(name: "ls", arg: 1, scope: !1687, file: !3, line: 248, type: !597)
!1687 = distinct !DISubprogram(name: "singlevar", scope: !3, file: !3, line: 248, type: !965, isLocal: true, isDefinition: true, scopeLine: 248, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1688)
!1688 = !{!1686, !1689, !1690, !1691}
!1689 = !DILocalVariable(name: "var", arg: 2, scope: !1687, file: !3, line: 248, type: !967)
!1690 = !DILocalVariable(name: "varname", scope: !1687, file: !3, line: 249, type: !332)
!1691 = !DILocalVariable(name: "fs", scope: !1687, file: !3, line: 250, type: !694)
!1692 = !DILocation(line: 248, column: 34, scope: !1687, inlinedAt: !1693)
!1693 = distinct !DILocation(line: 1201, column: 3, scope: !1678, inlinedAt: !1683)
!1694 = !DILocation(line: 248, column: 47, scope: !1687, inlinedAt: !1693)
!1695 = !DILocation(line: 117, column: 42, scope: !1123, inlinedAt: !1696)
!1696 = distinct !DILocation(line: 249, column: 22, scope: !1687, inlinedAt: !1693)
!1697 = !DILocation(line: 89, column: 30, scope: !664, inlinedAt: !1698)
!1698 = distinct !DILocation(line: 119, column: 3, scope: !1123, inlinedAt: !1696)
!1699 = !DILocation(line: 89, column: 38, scope: !664, inlinedAt: !1698)
!1700 = !DILocation(line: 90, column: 13, scope: !663, inlinedAt: !1698)
!1701 = !DILocation(line: 90, column: 19, scope: !663, inlinedAt: !1698)
!1702 = !DILocation(line: 90, column: 7, scope: !664, inlinedAt: !1698)
!1703 = !DILocation(line: 65, column: 39, scope: !677, inlinedAt: !1704)
!1704 = distinct !DILocation(line: 91, column: 5, scope: !663, inlinedAt: !1698)
!1705 = !DILocation(line: 65, column: 47, scope: !677, inlinedAt: !1704)
!1706 = !DILocation(line: 67, column: 28, scope: !677, inlinedAt: !1704)
!1707 = !DILocation(line: 67, column: 51, scope: !677, inlinedAt: !1704)
!1708 = !DILocation(line: 67, column: 7, scope: !677, inlinedAt: !1704)
!1709 = !DILocation(line: 66, column: 3, scope: !677, inlinedAt: !1704)
!1710 = !DILocation(line: 91, column: 5, scope: !663, inlinedAt: !1698)
!1711 = !DILocation(line: 120, column: 14, scope: !1123, inlinedAt: !1696)
!1712 = !DILocation(line: 120, column: 22, scope: !1123, inlinedAt: !1696)
!1713 = !DILocation(line: 118, column: 12, scope: !1123, inlinedAt: !1696)
!1714 = !DILocation(line: 121, column: 3, scope: !1123, inlinedAt: !1696)
!1715 = !DILocation(line: 249, column: 12, scope: !1687, inlinedAt: !1693)
!1716 = !DILocation(line: 250, column: 23, scope: !1687, inlinedAt: !1693)
!1717 = !DILocation(line: 250, column: 14, scope: !1687, inlinedAt: !1693)
!1718 = !DILocation(line: 251, column: 7, scope: !1719, inlinedAt: !1693)
!1719 = distinct !DILexicalBlock(scope: !1687, file: !3, line: 251, column: 7)
!1720 = !DILocation(line: 251, column: 41, scope: !1719, inlinedAt: !1693)
!1721 = !DILocation(line: 251, column: 7, scope: !1687, inlinedAt: !1693)
!1722 = !DILocation(line: 252, column: 21, scope: !1719, inlinedAt: !1693)
!1723 = !DILocation(line: 252, column: 10, scope: !1719, inlinedAt: !1693)
!1724 = !DILocation(line: 252, column: 14, scope: !1719, inlinedAt: !1693)
!1725 = !DILocation(line: 252, column: 19, scope: !1719, inlinedAt: !1693)
!1726 = !DILocation(line: 252, column: 5, scope: !1719, inlinedAt: !1693)
!1727 = !DILocation(line: 1202, column: 16, scope: !1678, inlinedAt: !1683)
!1728 = !DILocation(line: 1202, column: 3, scope: !1678, inlinedAt: !1683)
!1729 = !DILocation(line: 1203, column: 5, scope: !1678, inlinedAt: !1683)
!1730 = distinct !{!1730, !1731, !1732}
!1731 = !DILocation(line: 1202, column: 3, scope: !1678)
!1732 = !DILocation(line: 1203, column: 16, scope: !1678)
!1733 = !DILocation(line: 1206, column: 5, scope: !1734, inlinedAt: !1683)
!1734 = distinct !DILexicalBlock(scope: !1735, file: !3, line: 1204, column: 27)
!1735 = distinct !DILexicalBlock(scope: !1678, file: !3, line: 1204, column: 7)
!1736 = !DILocation(line: 1207, column: 3, scope: !1734, inlinedAt: !1683)
!1737 = !DILocation(line: 0, scope: !1678, inlinedAt: !1683)
!1738 = !DILocation(line: 1214, column: 7, scope: !1664, inlinedAt: !1671)
!1739 = !DILocation(line: 1215, column: 14, scope: !1664, inlinedAt: !1671)
!1740 = !DILocation(line: 1218, column: 3, scope: !1664, inlinedAt: !1671)
!1741 = !DILocation(line: 1219, column: 21, scope: !1664, inlinedAt: !1671)
!1742 = !DILocation(line: 1219, column: 3, scope: !1664, inlinedAt: !1671)
!1743 = !DILocation(line: 1220, column: 20, scope: !1664, inlinedAt: !1671)
!1744 = !DILocation(line: 1220, column: 3, scope: !1664, inlinedAt: !1671)
!1745 = !DILocation(line: 1221, column: 1, scope: !1664, inlinedAt: !1671)
!1746 = !DILocation(line: 1298, column: 7, scope: !1672)
!1747 = !DILocation(line: 1301, column: 7, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !887, file: !3, line: 1300, column: 20)
!1749 = !DILocation(line: 80, column: 32, scope: !635, inlinedAt: !1750)
!1750 = distinct !DILocation(line: 1302, column: 11, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1748, file: !3, line: 1302, column: 11)
!1752 = !DILocation(line: 80, column: 40, scope: !635, inlinedAt: !1750)
!1753 = !DILocation(line: 81, column: 13, scope: !644, inlinedAt: !1750)
!1754 = !DILocation(line: 81, column: 19, scope: !644, inlinedAt: !1750)
!1755 = !DILocation(line: 81, column: 7, scope: !635, inlinedAt: !1750)
!1756 = !DILocation(line: 82, column: 5, scope: !648, inlinedAt: !1750)
!1757 = !DILocalVariable(name: "ls", arg: 1, scope: !1758, file: !3, line: 1165, type: !597)
!1758 = distinct !DISubprogram(name: "localfunc", scope: !3, file: !3, line: 1165, type: !595, isLocal: true, isDefinition: true, scopeLine: 1165, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1759)
!1759 = !{!1757, !1760, !1761, !1762}
!1760 = !DILocalVariable(name: "v", scope: !1758, file: !3, line: 1166, type: !943)
!1761 = !DILocalVariable(name: "b", scope: !1758, file: !3, line: 1166, type: !943)
!1762 = !DILocalVariable(name: "fs", scope: !1758, file: !3, line: 1167, type: !694)
!1763 = !DILocation(line: 1165, column: 34, scope: !1758, inlinedAt: !1764)
!1764 = distinct !DILocation(line: 1303, column: 9, scope: !1751)
!1765 = !DILocation(line: 1166, column: 3, scope: !1758, inlinedAt: !1764)
!1766 = !DILocation(line: 1167, column: 23, scope: !1758, inlinedAt: !1764)
!1767 = !DILocation(line: 1167, column: 14, scope: !1758, inlinedAt: !1764)
!1768 = !DILocation(line: 117, column: 42, scope: !1123, inlinedAt: !1769)
!1769 = distinct !DILocation(line: 1168, column: 20, scope: !1758, inlinedAt: !1764)
!1770 = !DILocation(line: 89, column: 30, scope: !664, inlinedAt: !1771)
!1771 = distinct !DILocation(line: 119, column: 3, scope: !1123, inlinedAt: !1769)
!1772 = !DILocation(line: 89, column: 38, scope: !664, inlinedAt: !1771)
!1773 = !DILocation(line: 90, column: 13, scope: !663, inlinedAt: !1771)
!1774 = !DILocation(line: 90, column: 19, scope: !663, inlinedAt: !1771)
!1775 = !DILocation(line: 90, column: 7, scope: !664, inlinedAt: !1771)
!1776 = !DILocation(line: 65, column: 39, scope: !677, inlinedAt: !1777)
!1777 = distinct !DILocation(line: 91, column: 5, scope: !663, inlinedAt: !1771)
!1778 = !DILocation(line: 65, column: 47, scope: !677, inlinedAt: !1777)
!1779 = !DILocation(line: 67, column: 28, scope: !677, inlinedAt: !1777)
!1780 = !DILocation(line: 67, column: 51, scope: !677, inlinedAt: !1777)
!1781 = !DILocation(line: 67, column: 7, scope: !677, inlinedAt: !1777)
!1782 = !DILocation(line: 66, column: 3, scope: !677, inlinedAt: !1777)
!1783 = !DILocation(line: 91, column: 5, scope: !663, inlinedAt: !1771)
!1784 = !DILocation(line: 120, column: 14, scope: !1123, inlinedAt: !1769)
!1785 = !DILocation(line: 120, column: 22, scope: !1123, inlinedAt: !1769)
!1786 = !DILocation(line: 118, column: 12, scope: !1123, inlinedAt: !1769)
!1787 = !DILocation(line: 121, column: 3, scope: !1123, inlinedAt: !1769)
!1788 = !DILocation(line: 1168, column: 3, scope: !1758, inlinedAt: !1764)
!1789 = !DILocation(line: 1169, column: 28, scope: !1758, inlinedAt: !1764)
!1790 = !DILocation(line: 1166, column: 11, scope: !1758, inlinedAt: !1764)
!1791 = !DILocalVariable(name: "e", arg: 1, scope: !1792, file: !3, line: 126, type: !967)
!1792 = distinct !DISubprogram(name: "init_exp", scope: !3, file: !3, line: 126, type: !1793, isLocal: true, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1795)
!1793 = !DISubroutineType(types: !1794)
!1794 = !{null, !967, !947, !203}
!1795 = !{!1791, !1796, !1797}
!1796 = !DILocalVariable(name: "k", arg: 2, scope: !1792, file: !3, line: 126, type: !947)
!1797 = !DILocalVariable(name: "i", arg: 3, scope: !1792, file: !3, line: 126, type: !203)
!1798 = !DILocation(line: 126, column: 32, scope: !1792, inlinedAt: !1799)
!1799 = distinct !DILocation(line: 1169, column: 3, scope: !1758, inlinedAt: !1764)
!1800 = !DILocation(line: 126, column: 43, scope: !1792, inlinedAt: !1799)
!1801 = !DILocation(line: 126, column: 50, scope: !1792, inlinedAt: !1799)
!1802 = !DILocation(line: 127, column: 13, scope: !1792, inlinedAt: !1799)
!1803 = !DILocation(line: 127, column: 15, scope: !1792, inlinedAt: !1799)
!1804 = !{!977, !574, i64 16}
!1805 = !DILocation(line: 127, column: 6, scope: !1792, inlinedAt: !1799)
!1806 = !DILocation(line: 127, column: 8, scope: !1792, inlinedAt: !1799)
!1807 = !DILocation(line: 128, column: 6, scope: !1792, inlinedAt: !1799)
!1808 = !DILocation(line: 128, column: 8, scope: !1792, inlinedAt: !1799)
!1809 = !DILocation(line: 129, column: 6, scope: !1792, inlinedAt: !1799)
!1810 = !DILocation(line: 129, column: 10, scope: !1792, inlinedAt: !1799)
!1811 = !DILocation(line: 129, column: 15, scope: !1792, inlinedAt: !1799)
!1812 = !DILocation(line: 1170, column: 3, scope: !1758, inlinedAt: !1764)
!1813 = !DILocalVariable(name: "ls", arg: 1, scope: !1814, file: !3, line: 167, type: !597)
!1814 = distinct !DISubprogram(name: "adjustlocalvars", scope: !3, file: !3, line: 167, type: !665, isLocal: true, isDefinition: true, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1815)
!1815 = !{!1813, !1816, !1817}
!1816 = !DILocalVariable(name: "nvars", arg: 2, scope: !1814, file: !3, line: 167, type: !203)
!1817 = !DILocalVariable(name: "fs", scope: !1814, file: !3, line: 168, type: !694)
!1818 = !DILocation(line: 167, column: 40, scope: !1814, inlinedAt: !1819)
!1819 = distinct !DILocation(line: 1171, column: 3, scope: !1758, inlinedAt: !1764)
!1820 = !DILocation(line: 167, column: 48, scope: !1814, inlinedAt: !1819)
!1821 = !DILocation(line: 168, column: 23, scope: !1814, inlinedAt: !1819)
!1822 = !DILocation(line: 168, column: 14, scope: !1814, inlinedAt: !1819)
!1823 = !DILocation(line: 169, column: 17, scope: !1814, inlinedAt: !1819)
!1824 = !DILocation(line: 169, column: 15, scope: !1814, inlinedAt: !1819)
!1825 = !DILocation(line: 170, column: 3, scope: !1826, inlinedAt: !1819)
!1826 = distinct !DILexicalBlock(scope: !1814, file: !3, line: 170, column: 3)
!1827 = !DILocation(line: 171, column: 5, scope: !1828, inlinedAt: !1819)
!1828 = distinct !DILexicalBlock(scope: !1829, file: !3, line: 170, column: 26)
!1829 = distinct !DILexicalBlock(scope: !1826, file: !3, line: 170, column: 3)
!1830 = !DILocation(line: 171, column: 40, scope: !1828, inlinedAt: !1819)
!1831 = !DILocation(line: 171, column: 48, scope: !1828, inlinedAt: !1819)
!1832 = !{!800, !574, i64 8}
!1833 = !DILocation(line: 1172, column: 23, scope: !1758, inlinedAt: !1764)
!1834 = !DILocation(line: 1166, column: 14, scope: !1758, inlinedAt: !1764)
!1835 = !DILocation(line: 1172, column: 3, scope: !1758, inlinedAt: !1764)
!1836 = !DILocation(line: 1173, column: 3, scope: !1758, inlinedAt: !1764)
!1837 = !DILocation(line: 1175, column: 48, scope: !1758, inlinedAt: !1764)
!1838 = !DILocation(line: 1175, column: 3, scope: !1758, inlinedAt: !1764)
!1839 = !DILocation(line: 1175, column: 34, scope: !1758, inlinedAt: !1764)
!1840 = !DILocation(line: 1175, column: 42, scope: !1758, inlinedAt: !1764)
!1841 = !DILocation(line: 1176, column: 1, scope: !1758, inlinedAt: !1764)
!1842 = !DILocation(line: 1303, column: 9, scope: !1751)
!1843 = !DILocalVariable(name: "ls", arg: 1, scope: !1844, file: !3, line: 1179, type: !597)
!1844 = distinct !DISubprogram(name: "localstat", scope: !3, file: !3, line: 1179, type: !595, isLocal: true, isDefinition: true, scopeLine: 1179, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1845)
!1845 = !{!1843, !1846, !1847, !1848}
!1846 = !DILocalVariable(name: "nvars", scope: !1844, file: !3, line: 1181, type: !203)
!1847 = !DILocalVariable(name: "nexps", scope: !1844, file: !3, line: 1182, type: !203)
!1848 = !DILocalVariable(name: "e", scope: !1844, file: !3, line: 1183, type: !943)
!1849 = !DILocation(line: 1179, column: 34, scope: !1844, inlinedAt: !1850)
!1850 = distinct !DILocation(line: 1305, column: 9, scope: !1751)
!1851 = !DILocation(line: 1181, column: 7, scope: !1844, inlinedAt: !1850)
!1852 = !DILocation(line: 1183, column: 3, scope: !1844, inlinedAt: !1850)
!1853 = !DILocation(line: 1184, column: 3, scope: !1844, inlinedAt: !1850)
!1854 = !DILocation(line: 82, column: 5, scope: !648, inlinedAt: !1855)
!1855 = distinct !DILocation(line: 1186, column: 12, scope: !1844, inlinedAt: !1850)
!1856 = !DILocation(line: 90, column: 13, scope: !663, inlinedAt: !1857)
!1857 = distinct !DILocation(line: 119, column: 3, scope: !1123, inlinedAt: !1858)
!1858 = distinct !DILocation(line: 1185, column: 22, scope: !1859, inlinedAt: !1850)
!1859 = distinct !DILexicalBlock(scope: !1844, file: !3, line: 1184, column: 6)
!1860 = !DILocation(line: 0, scope: !1859, inlinedAt: !1850)
!1861 = !DILocation(line: 117, column: 42, scope: !1123, inlinedAt: !1858)
!1862 = !DILocation(line: 89, column: 30, scope: !664, inlinedAt: !1857)
!1863 = !DILocation(line: 89, column: 38, scope: !664, inlinedAt: !1857)
!1864 = !DILocation(line: 90, column: 19, scope: !663, inlinedAt: !1857)
!1865 = !DILocation(line: 90, column: 7, scope: !664, inlinedAt: !1857)
!1866 = !DILocation(line: 65, column: 39, scope: !677, inlinedAt: !1867)
!1867 = distinct !DILocation(line: 91, column: 5, scope: !663, inlinedAt: !1857)
!1868 = !DILocation(line: 65, column: 47, scope: !677, inlinedAt: !1867)
!1869 = !DILocation(line: 67, column: 28, scope: !677, inlinedAt: !1867)
!1870 = !DILocation(line: 67, column: 51, scope: !677, inlinedAt: !1867)
!1871 = !DILocation(line: 67, column: 7, scope: !677, inlinedAt: !1867)
!1872 = !DILocation(line: 66, column: 3, scope: !677, inlinedAt: !1867)
!1873 = !DILocation(line: 91, column: 5, scope: !663, inlinedAt: !1857)
!1874 = !DILocation(line: 120, column: 22, scope: !1123, inlinedAt: !1858)
!1875 = !DILocation(line: 118, column: 12, scope: !1123, inlinedAt: !1858)
!1876 = !DILocation(line: 121, column: 3, scope: !1123, inlinedAt: !1858)
!1877 = !DILocation(line: 1185, column: 46, scope: !1859, inlinedAt: !1850)
!1878 = !DILocation(line: 1185, column: 5, scope: !1859, inlinedAt: !1850)
!1879 = !DILocation(line: 80, column: 32, scope: !635, inlinedAt: !1855)
!1880 = !DILocation(line: 80, column: 40, scope: !635, inlinedAt: !1855)
!1881 = !DILocation(line: 81, column: 13, scope: !644, inlinedAt: !1855)
!1882 = !DILocation(line: 81, column: 7, scope: !635, inlinedAt: !1855)
!1883 = !DILocation(line: 82, column: 5, scope: !648, inlinedAt: !1884)
!1884 = distinct !DILocation(line: 1187, column: 7, scope: !1885, inlinedAt: !1850)
!1885 = distinct !DILexicalBlock(scope: !1844, file: !3, line: 1187, column: 7)
!1886 = !DILocation(line: 1183, column: 11, scope: !1844, inlinedAt: !1850)
!1887 = !DILocation(line: 596, column: 32, scope: !1343, inlinedAt: !1888)
!1888 = distinct !DILocation(line: 1188, column: 13, scope: !1885, inlinedAt: !1850)
!1889 = !DILocation(line: 596, column: 45, scope: !1343, inlinedAt: !1888)
!1890 = !DILocation(line: 598, column: 7, scope: !1343, inlinedAt: !1888)
!1891 = !DILocation(line: 856, column: 29, scope: !964, inlinedAt: !1892)
!1892 = distinct !DILocation(line: 599, column: 3, scope: !1343, inlinedAt: !1888)
!1893 = !DILocation(line: 856, column: 42, scope: !964, inlinedAt: !1892)
!1894 = !DILocation(line: 857, column: 3, scope: !964, inlinedAt: !1892)
!1895 = !DILocation(line: 80, column: 32, scope: !635, inlinedAt: !1896)
!1896 = distinct !DILocation(line: 600, column: 10, scope: !1343, inlinedAt: !1888)
!1897 = !DILocation(line: 80, column: 40, scope: !635, inlinedAt: !1896)
!1898 = !DILocation(line: 81, column: 13, scope: !644, inlinedAt: !1896)
!1899 = !DILocation(line: 81, column: 19, scope: !644, inlinedAt: !1896)
!1900 = !DILocation(line: 81, column: 7, scope: !635, inlinedAt: !1896)
!1901 = !DILocation(line: 82, column: 5, scope: !648, inlinedAt: !1896)
!1902 = !DILocation(line: 601, column: 26, scope: !1365, inlinedAt: !1888)
!1903 = !DILocation(line: 601, column: 5, scope: !1365, inlinedAt: !1888)
!1904 = !DILocation(line: 856, column: 29, scope: !964, inlinedAt: !1905)
!1905 = distinct !DILocation(line: 602, column: 5, scope: !1365, inlinedAt: !1888)
!1906 = !DILocation(line: 856, column: 42, scope: !964, inlinedAt: !1905)
!1907 = !DILocation(line: 857, column: 3, scope: !964, inlinedAt: !1905)
!1908 = !DILocation(line: 603, column: 6, scope: !1365, inlinedAt: !1888)
!1909 = !DILocation(line: 1190, column: 7, scope: !1910, inlinedAt: !1850)
!1910 = distinct !DILexicalBlock(scope: !1885, file: !3, line: 1189, column: 8)
!1911 = !DILocation(line: 1190, column: 9, scope: !1910, inlinedAt: !1850)
!1912 = !DILocation(line: 1182, column: 7, scope: !1844, inlinedAt: !1850)
!1913 = !DILocation(line: 0, scope: !1910, inlinedAt: !1850)
!1914 = !DILocation(line: 1193, column: 3, scope: !1844, inlinedAt: !1850)
!1915 = !DILocation(line: 167, column: 40, scope: !1814, inlinedAt: !1916)
!1916 = distinct !DILocation(line: 1194, column: 3, scope: !1844, inlinedAt: !1850)
!1917 = !DILocation(line: 167, column: 48, scope: !1814, inlinedAt: !1916)
!1918 = !DILocation(line: 168, column: 23, scope: !1814, inlinedAt: !1916)
!1919 = !DILocation(line: 168, column: 14, scope: !1814, inlinedAt: !1916)
!1920 = !DILocation(line: 169, column: 17, scope: !1814, inlinedAt: !1916)
!1921 = !DILocation(line: 169, column: 15, scope: !1814, inlinedAt: !1916)
!1922 = !DILocation(line: 170, column: 3, scope: !1826, inlinedAt: !1916)
!1923 = !DILocation(line: 171, column: 5, scope: !1828, inlinedAt: !1916)
!1924 = !DILocation(line: 171, column: 40, scope: !1828, inlinedAt: !1916)
!1925 = !DILocation(line: 171, column: 48, scope: !1828, inlinedAt: !1916)
!1926 = !DILocation(line: 170, column: 22, scope: !1829, inlinedAt: !1916)
!1927 = distinct !{!1927, !1928}
!1928 = !{!"llvm.loop.unroll.disable"}
!1929 = distinct !{!1929, !1930, !1931}
!1930 = !DILocation(line: 170, column: 3, scope: !1826)
!1931 = !DILocation(line: 172, column: 3, scope: !1826)
!1932 = !DILocation(line: 1195, column: 1, scope: !1844, inlinedAt: !1850)
!1933 = !DILocalVariable(name: "ls", arg: 1, scope: !1934, file: !3, line: 1238, type: !597)
!1934 = distinct !DISubprogram(name: "retstat", scope: !3, file: !3, line: 1238, type: !595, isLocal: true, isDefinition: true, scopeLine: 1238, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1935)
!1935 = !{!1933, !1936, !1937, !1938, !1939}
!1936 = !DILocalVariable(name: "fs", scope: !1934, file: !3, line: 1240, type: !694)
!1937 = !DILocalVariable(name: "e", scope: !1934, file: !3, line: 1241, type: !943)
!1938 = !DILocalVariable(name: "first", scope: !1934, file: !3, line: 1242, type: !203)
!1939 = !DILocalVariable(name: "nret", scope: !1934, file: !3, line: 1242, type: !203)
!1940 = !DILocation(line: 1238, column: 32, scope: !1934, inlinedAt: !1941)
!1941 = distinct !DILocation(line: 1309, column: 7, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !887, file: !3, line: 1308, column: 21)
!1943 = !DILocation(line: 1240, column: 23, scope: !1934, inlinedAt: !1941)
!1944 = !DILocation(line: 1240, column: 14, scope: !1934, inlinedAt: !1941)
!1945 = !DILocation(line: 1241, column: 3, scope: !1934, inlinedAt: !1941)
!1946 = !DILocation(line: 1243, column: 3, scope: !1934, inlinedAt: !1941)
!1947 = !DILocation(line: 1244, column: 26, scope: !1948, inlinedAt: !1941)
!1948 = distinct !DILexicalBlock(scope: !1934, file: !3, line: 1244, column: 7)
!1949 = !DILocation(line: 871, column: 30, scope: !625, inlinedAt: !1950)
!1950 = distinct !DILocation(line: 1244, column: 7, scope: !1948, inlinedAt: !1941)
!1951 = !DILocation(line: 872, column: 3, scope: !625, inlinedAt: !1950)
!1952 = !DILocation(line: 1241, column: 11, scope: !1934, inlinedAt: !1941)
!1953 = !DILocation(line: 596, column: 32, scope: !1343, inlinedAt: !1954)
!1954 = distinct !DILocation(line: 1247, column: 12, scope: !1955, inlinedAt: !1941)
!1955 = distinct !DILexicalBlock(scope: !1948, file: !3, line: 1246, column: 8)
!1956 = !DILocation(line: 596, column: 45, scope: !1343, inlinedAt: !1954)
!1957 = !DILocation(line: 598, column: 7, scope: !1343, inlinedAt: !1954)
!1958 = !DILocation(line: 856, column: 29, scope: !964, inlinedAt: !1959)
!1959 = distinct !DILocation(line: 599, column: 3, scope: !1343, inlinedAt: !1954)
!1960 = !DILocation(line: 856, column: 42, scope: !964, inlinedAt: !1959)
!1961 = !DILocation(line: 857, column: 3, scope: !964, inlinedAt: !1959)
!1962 = !DILocation(line: 80, column: 32, scope: !635, inlinedAt: !1963)
!1963 = distinct !DILocation(line: 600, column: 10, scope: !1343, inlinedAt: !1954)
!1964 = !DILocation(line: 80, column: 40, scope: !635, inlinedAt: !1963)
!1965 = !DILocation(line: 81, column: 13, scope: !644, inlinedAt: !1963)
!1966 = !DILocation(line: 81, column: 19, scope: !644, inlinedAt: !1963)
!1967 = !DILocation(line: 81, column: 7, scope: !635, inlinedAt: !1963)
!1968 = !DILocation(line: 82, column: 5, scope: !648, inlinedAt: !1963)
!1969 = !DILocation(line: 601, column: 26, scope: !1365, inlinedAt: !1954)
!1970 = !DILocation(line: 601, column: 5, scope: !1365, inlinedAt: !1954)
!1971 = !DILocation(line: 856, column: 29, scope: !964, inlinedAt: !1972)
!1972 = distinct !DILocation(line: 602, column: 5, scope: !1365, inlinedAt: !1954)
!1973 = !DILocation(line: 856, column: 42, scope: !964, inlinedAt: !1972)
!1974 = !DILocation(line: 857, column: 3, scope: !964, inlinedAt: !1972)
!1975 = !DILocation(line: 603, column: 6, scope: !1365, inlinedAt: !1954)
!1976 = !DILocation(line: 0, scope: !1365, inlinedAt: !1954)
!1977 = !DILocation(line: 1242, column: 14, scope: !1934, inlinedAt: !1941)
!1978 = !DILocation(line: 1248, column: 9, scope: !1979, inlinedAt: !1941)
!1979 = distinct !DILexicalBlock(scope: !1955, file: !3, line: 1248, column: 9)
!1980 = !DILocation(line: 1249, column: 7, scope: !1981, inlinedAt: !1941)
!1981 = distinct !DILexicalBlock(scope: !1979, file: !3, line: 1248, column: 26)
!1982 = !DILocation(line: 1250, column: 13, scope: !1983, inlinedAt: !1941)
!1983 = distinct !DILexicalBlock(scope: !1981, file: !3, line: 1250, column: 11)
!1984 = !DILocation(line: 1250, column: 15, scope: !1983, inlinedAt: !1941)
!1985 = !DILocation(line: 1250, column: 32, scope: !1983, inlinedAt: !1941)
!1986 = !DILocation(line: 1250, column: 24, scope: !1983, inlinedAt: !1941)
!1987 = !DILocation(line: 1251, column: 9, scope: !1988, inlinedAt: !1941)
!1988 = distinct !DILexicalBlock(scope: !1983, file: !3, line: 1250, column: 38)
!1989 = !DILocation(line: 1253, column: 7, scope: !1988, inlinedAt: !1941)
!1990 = !DILocation(line: 1254, column: 19, scope: !1981, inlinedAt: !1941)
!1991 = !DILocation(line: 1254, column: 15, scope: !1981, inlinedAt: !1941)
!1992 = !DILocation(line: 1242, column: 7, scope: !1934, inlinedAt: !1941)
!1993 = !DILocation(line: 1256, column: 5, scope: !1981, inlinedAt: !1941)
!1994 = !DILocation(line: 1258, column: 16, scope: !1995, inlinedAt: !1941)
!1995 = distinct !DILexicalBlock(scope: !1996, file: !3, line: 1258, column: 11)
!1996 = distinct !DILexicalBlock(scope: !1979, file: !3, line: 1257, column: 10)
!1997 = !DILocation(line: 1258, column: 11, scope: !1996, inlinedAt: !1941)
!1998 = !DILocation(line: 1259, column: 17, scope: !1995, inlinedAt: !1941)
!1999 = !DILocation(line: 1259, column: 9, scope: !1995, inlinedAt: !1941)
!2000 = !DILocation(line: 1261, column: 9, scope: !2001, inlinedAt: !1941)
!2001 = distinct !DILexicalBlock(scope: !1995, file: !3, line: 1260, column: 12)
!2002 = !DILocation(line: 1262, column: 21, scope: !2001, inlinedAt: !1941)
!2003 = !DILocation(line: 1262, column: 17, scope: !2001, inlinedAt: !1941)
!2004 = !DILocation(line: 0, scope: !2001, inlinedAt: !1941)
!2005 = !DILocation(line: 0, scope: !1955, inlinedAt: !1941)
!2006 = !DILocation(line: 1267, column: 3, scope: !1934, inlinedAt: !1941)
!2007 = !DILocation(line: 1268, column: 1, scope: !1934, inlinedAt: !1941)
!2008 = !DILocation(line: 1310, column: 7, scope: !1942)
!2009 = !DILocation(line: 1313, column: 7, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !887, file: !3, line: 1312, column: 20)
!2011 = !DILocation(line: 975, column: 34, scope: !1557, inlinedAt: !2012)
!2012 = distinct !DILocation(line: 1314, column: 7, scope: !2010)
!2013 = !DILocation(line: 976, column: 23, scope: !1557, inlinedAt: !2012)
!2014 = !DILocation(line: 976, column: 14, scope: !1557, inlinedAt: !2012)
!2015 = !DILocation(line: 977, column: 22, scope: !1557, inlinedAt: !2012)
!2016 = !DILocation(line: 977, column: 13, scope: !1557, inlinedAt: !2012)
!2017 = !DILocation(line: 978, column: 7, scope: !1557, inlinedAt: !2012)
!2018 = !DILocation(line: 0, scope: !1571, inlinedAt: !2012)
!2019 = !DILocation(line: 979, column: 10, scope: !1557, inlinedAt: !2012)
!2020 = !DILocation(line: 979, column: 13, scope: !1557, inlinedAt: !2012)
!2021 = !DILocation(line: 979, column: 21, scope: !1557, inlinedAt: !2012)
!2022 = !DILocation(line: 979, column: 16, scope: !1557, inlinedAt: !2012)
!2023 = !DILocation(line: 979, column: 3, scope: !1557, inlinedAt: !2012)
!2024 = !DILocation(line: 980, column: 18, scope: !1571, inlinedAt: !2012)
!2025 = !DILocation(line: 980, column: 14, scope: !1571, inlinedAt: !2012)
!2026 = !DILocation(line: 980, column: 11, scope: !1571, inlinedAt: !2012)
!2027 = !DILocation(line: 981, column: 14, scope: !1571, inlinedAt: !2012)
!2028 = !DILocation(line: 984, column: 5, scope: !1586, inlinedAt: !2012)
!2029 = !DILocation(line: 985, column: 7, scope: !1588, inlinedAt: !2012)
!2030 = !DILocation(line: 985, column: 7, scope: !1557, inlinedAt: !2012)
!2031 = !DILocation(line: 986, column: 36, scope: !1588, inlinedAt: !2012)
!2032 = !DILocation(line: 986, column: 32, scope: !1588, inlinedAt: !2012)
!2033 = !DILocation(line: 986, column: 5, scope: !1588, inlinedAt: !2012)
!2034 = !DILocation(line: 987, column: 24, scope: !1557, inlinedAt: !2012)
!2035 = !DILocation(line: 987, column: 35, scope: !1557, inlinedAt: !2012)
!2036 = !DILocation(line: 987, column: 3, scope: !1557, inlinedAt: !2012)
!2037 = !DILocation(line: 1315, column: 7, scope: !2010)
!2038 = !DILocalVariable(name: "ls", arg: 1, scope: !2039, file: !3, line: 1224, type: !597)
!2039 = distinct !DISubprogram(name: "exprstat", scope: !3, file: !3, line: 1224, type: !595, isLocal: true, isDefinition: true, scopeLine: 1224, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2040)
!2040 = !{!2038, !2041, !2042}
!2041 = !DILocalVariable(name: "fs", scope: !2039, file: !3, line: 1226, type: !694)
!2042 = !DILocalVariable(name: "v", scope: !2039, file: !3, line: 1227, type: !2043)
!2043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LHS_assign", file: !3, line: 896, size: 256, elements: !2044)
!2044 = !{!2045, !2047}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !2043, file: !3, line: 897, baseType: !2046, size: 64)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !2043, file: !3, line: 898, baseType: !943, size: 192, offset: 64)
!2048 = !DILocation(line: 1224, column: 33, scope: !2039, inlinedAt: !2049)
!2049 = distinct !DILocation(line: 1318, column: 7, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !887, file: !3, line: 1317, column: 14)
!2051 = !DILocation(line: 1226, column: 23, scope: !2039, inlinedAt: !2049)
!2052 = !DILocation(line: 1226, column: 14, scope: !2039, inlinedAt: !2049)
!2053 = !DILocation(line: 1227, column: 3, scope: !2039, inlinedAt: !2049)
!2054 = !DILocation(line: 1228, column: 21, scope: !2039, inlinedAt: !2049)
!2055 = !DILocation(line: 1228, column: 3, scope: !2039, inlinedAt: !2049)
!2056 = !DILocation(line: 1229, column: 11, scope: !2057, inlinedAt: !2049)
!2057 = distinct !DILexicalBlock(scope: !2039, file: !3, line: 1229, column: 7)
!2058 = !{!2059, !575, i64 8}
!2059 = !{!"LHS_assign", !578, i64 0, !977, i64 8}
!2060 = !DILocation(line: 1229, column: 13, scope: !2057, inlinedAt: !2049)
!2061 = !DILocation(line: 1229, column: 7, scope: !2039, inlinedAt: !2049)
!2062 = !DILocation(line: 1230, column: 5, scope: !2057, inlinedAt: !2049)
!2063 = !DILocation(line: 1232, column: 7, scope: !2064, inlinedAt: !2049)
!2064 = distinct !DILexicalBlock(scope: !2057, file: !3, line: 1231, column: 8)
!2065 = !DILocation(line: 1232, column: 12, scope: !2064, inlinedAt: !2049)
!2066 = !{!2059, !578, i64 0}
!2067 = !DILocation(line: 1227, column: 21, scope: !2039, inlinedAt: !2049)
!2068 = !DILocation(line: 1233, column: 5, scope: !2064, inlinedAt: !2049)
!2069 = !DILocation(line: 1235, column: 1, scope: !2039, inlinedAt: !2049)
!2070 = !DILocation(line: 1319, column: 7, scope: !2050)
!2071 = !DILocation(line: 0, scope: !886)
!2072 = !DILocation(line: 1322, column: 1, scope: !865)
!2073 = distinct !DISubprogram(name: "block", scope: !3, file: !3, line: 881, type: !595, isLocal: true, isDefinition: true, scopeLine: 881, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2074)
!2074 = !{!2075, !2076, !2077}
!2075 = !DILocalVariable(name: "ls", arg: 1, scope: !2073, file: !3, line: 881, type: !597)
!2076 = !DILocalVariable(name: "fs", scope: !2073, file: !3, line: 883, type: !694)
!2077 = !DILocalVariable(name: "bl", scope: !2073, file: !3, line: 884, type: !928)
!2078 = !DILocation(line: 881, column: 30, scope: !2073)
!2079 = !DILocation(line: 883, column: 23, scope: !2073)
!2080 = !DILocation(line: 883, column: 14, scope: !2073)
!2081 = !DILocation(line: 884, column: 3, scope: !2073)
!2082 = !DILocation(line: 884, column: 12, scope: !2073)
!2083 = !DILocation(line: 285, column: 36, scope: !990, inlinedAt: !2084)
!2084 = distinct !DILocation(line: 885, column: 3, scope: !2073)
!2085 = !DILocation(line: 285, column: 50, scope: !990, inlinedAt: !2084)
!2086 = !DILocation(line: 285, column: 62, scope: !990, inlinedAt: !2084)
!2087 = !DILocation(line: 286, column: 7, scope: !990, inlinedAt: !2084)
!2088 = !DILocation(line: 286, column: 17, scope: !990, inlinedAt: !2084)
!2089 = !DILocation(line: 287, column: 7, scope: !990, inlinedAt: !2084)
!2090 = !DILocation(line: 287, column: 19, scope: !990, inlinedAt: !2084)
!2091 = !DILocation(line: 288, column: 21, scope: !990, inlinedAt: !2084)
!2092 = !DILocation(line: 288, column: 7, scope: !990, inlinedAt: !2084)
!2093 = !DILocation(line: 288, column: 15, scope: !990, inlinedAt: !2084)
!2094 = !DILocation(line: 289, column: 7, scope: !990, inlinedAt: !2084)
!2095 = !DILocation(line: 289, column: 13, scope: !990, inlinedAt: !2084)
!2096 = !DILocation(line: 290, column: 22, scope: !990, inlinedAt: !2084)
!2097 = !DILocation(line: 290, column: 16, scope: !990, inlinedAt: !2084)
!2098 = !DILocation(line: 291, column: 10, scope: !990, inlinedAt: !2084)
!2099 = !DILocation(line: 1325, column: 30, scope: !594, inlinedAt: !2100)
!2100 = distinct !DILocation(line: 886, column: 3, scope: !2073)
!2101 = !DILocation(line: 1327, column: 7, scope: !594, inlinedAt: !2100)
!2102 = !DILocation(line: 276, column: 35, scope: !605, inlinedAt: !2103)
!2103 = distinct !DILocation(line: 1328, column: 3, scope: !594, inlinedAt: !2100)
!2104 = !DILocation(line: 277, column: 13, scope: !610, inlinedAt: !2103)
!2105 = !DILocation(line: 277, column: 16, scope: !610, inlinedAt: !2103)
!2106 = !DILocation(line: 277, column: 7, scope: !610, inlinedAt: !2103)
!2107 = !DILocation(line: 277, column: 24, scope: !610, inlinedAt: !2103)
!2108 = !DILocation(line: 277, column: 7, scope: !605, inlinedAt: !2103)
!2109 = !DILocation(line: 278, column: 2, scope: !610, inlinedAt: !2103)
!2110 = !DILocation(line: 1329, column: 18, scope: !594, inlinedAt: !2100)
!2111 = !DILocation(line: 1329, column: 41, scope: !594, inlinedAt: !2100)
!2112 = !DILocation(line: 871, column: 30, scope: !625, inlinedAt: !2113)
!2113 = distinct !DILocation(line: 1329, column: 22, scope: !594, inlinedAt: !2100)
!2114 = !DILocation(line: 872, column: 3, scope: !625, inlinedAt: !2113)
!2115 = !DILocation(line: 1330, column: 14, scope: !633, inlinedAt: !2100)
!2116 = !DILocation(line: 80, column: 32, scope: !635, inlinedAt: !2117)
!2117 = distinct !DILocation(line: 1331, column: 5, scope: !633, inlinedAt: !2100)
!2118 = !DILocation(line: 80, column: 40, scope: !635, inlinedAt: !2117)
!2119 = !DILocation(line: 81, column: 13, scope: !644, inlinedAt: !2117)
!2120 = !DILocation(line: 81, column: 19, scope: !644, inlinedAt: !2117)
!2121 = !DILocation(line: 81, column: 7, scope: !635, inlinedAt: !2117)
!2122 = !DILocation(line: 82, column: 5, scope: !648, inlinedAt: !2117)
!2123 = !DILocation(line: 83, column: 5, scope: !648, inlinedAt: !2117)
!2124 = !DILocation(line: 1334, column: 27, scope: !633, inlinedAt: !2100)
!2125 = !DILocation(line: 1334, column: 31, scope: !633, inlinedAt: !2100)
!2126 = !DILocation(line: 1334, column: 23, scope: !633, inlinedAt: !2100)
!2127 = !DILocation(line: 1334, column: 13, scope: !633, inlinedAt: !2100)
!2128 = !DILocation(line: 1334, column: 21, scope: !633, inlinedAt: !2100)
!2129 = !DILocation(line: 1329, column: 11, scope: !594, inlinedAt: !2100)
!2130 = !DILocation(line: 1336, column: 3, scope: !594, inlinedAt: !2100)
!2131 = !DILocation(line: 296, column: 36, scope: !1046, inlinedAt: !2132)
!2132 = distinct !DILocation(line: 888, column: 3, scope: !2073)
!2133 = !DILocation(line: 297, column: 22, scope: !1046, inlinedAt: !2132)
!2134 = !DILocation(line: 297, column: 13, scope: !1046, inlinedAt: !2132)
!2135 = !DILocation(line: 298, column: 16, scope: !1046, inlinedAt: !2132)
!2136 = !DILocation(line: 298, column: 10, scope: !1046, inlinedAt: !2132)
!2137 = !DILocation(line: 299, column: 18, scope: !1046, inlinedAt: !2132)
!2138 = !DILocation(line: 299, column: 26, scope: !1046, inlinedAt: !2132)
!2139 = !DILocation(line: 299, column: 22, scope: !1046, inlinedAt: !2132)
!2140 = !DILocation(line: 176, column: 35, scope: !782, inlinedAt: !2141)
!2141 = distinct !DILocation(line: 299, column: 3, scope: !1046, inlinedAt: !2132)
!2142 = !DILocation(line: 176, column: 43, scope: !782, inlinedAt: !2141)
!2143 = !DILocation(line: 177, column: 23, scope: !782, inlinedAt: !2141)
!2144 = !DILocation(line: 177, column: 14, scope: !782, inlinedAt: !2141)
!2145 = !DILocation(line: 178, column: 14, scope: !782, inlinedAt: !2141)
!2146 = !DILocation(line: 178, column: 22, scope: !782, inlinedAt: !2141)
!2147 = !DILocation(line: 178, column: 3, scope: !782, inlinedAt: !2141)
!2148 = !DILocation(line: 179, column: 5, scope: !782, inlinedAt: !2141)
!2149 = !DILocation(line: 179, column: 34, scope: !782, inlinedAt: !2141)
!2150 = !DILocation(line: 179, column: 40, scope: !782, inlinedAt: !2141)
!2151 = !DILocation(line: 300, column: 11, scope: !1072, inlinedAt: !2132)
!2152 = !DILocation(line: 300, column: 7, scope: !1072, inlinedAt: !2132)
!2153 = !DILocation(line: 300, column: 7, scope: !1046, inlinedAt: !2132)
!2154 = !DILocation(line: 301, column: 5, scope: !1072, inlinedAt: !2132)
!2155 = !DILocation(line: 305, column: 21, scope: !1046, inlinedAt: !2132)
!2156 = !DILocation(line: 305, column: 17, scope: !1046, inlinedAt: !2132)
!2157 = !DILocation(line: 305, column: 7, scope: !1046, inlinedAt: !2132)
!2158 = !DILocation(line: 305, column: 15, scope: !1046, inlinedAt: !2132)
!2159 = !DILocation(line: 306, column: 28, scope: !1046, inlinedAt: !2132)
!2160 = !DILocation(line: 306, column: 3, scope: !1046, inlinedAt: !2132)
!2161 = !DILocation(line: 889, column: 1, scope: !2073)
!2162 = distinct !DISubprogram(name: "check_match", scope: !3, file: !3, line: 104, type: !2163, isLocal: true, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2165)
!2163 = !DISubroutineType(types: !2164)
!2164 = !{null, !597, !203, !203, !203}
!2165 = !{!2166, !2167, !2168, !2169}
!2166 = !DILocalVariable(name: "ls", arg: 1, scope: !2162, file: !3, line: 104, type: !597)
!2167 = !DILocalVariable(name: "what", arg: 2, scope: !2162, file: !3, line: 104, type: !203)
!2168 = !DILocalVariable(name: "who", arg: 3, scope: !2162, file: !3, line: 104, type: !203)
!2169 = !DILocalVariable(name: "where", arg: 4, scope: !2162, file: !3, line: 104, type: !203)
!2170 = !DILocation(line: 104, column: 36, scope: !2162)
!2171 = !DILocation(line: 104, column: 44, scope: !2162)
!2172 = !DILocation(line: 104, column: 54, scope: !2162)
!2173 = !DILocation(line: 104, column: 63, scope: !2162)
!2174 = !DILocation(line: 80, column: 32, scope: !635, inlinedAt: !2175)
!2175 = distinct !DILocation(line: 105, column: 8, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2162, file: !3, line: 105, column: 7)
!2177 = !DILocation(line: 80, column: 40, scope: !635, inlinedAt: !2175)
!2178 = !DILocation(line: 81, column: 13, scope: !644, inlinedAt: !2175)
!2179 = !DILocation(line: 81, column: 19, scope: !644, inlinedAt: !2175)
!2180 = !DILocation(line: 81, column: 7, scope: !635, inlinedAt: !2175)
!2181 = !DILocation(line: 82, column: 5, scope: !648, inlinedAt: !2175)
!2182 = !DILocation(line: 105, column: 7, scope: !2162)
!2183 = !DILocation(line: 106, column: 22, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2185, file: !3, line: 106, column: 9)
!2185 = distinct !DILexicalBlock(scope: !2176, file: !3, line: 105, column: 28)
!2186 = !DILocation(line: 106, column: 15, scope: !2184)
!2187 = !DILocation(line: 0, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2184, file: !3, line: 108, column: 10)
!2189 = !DILocation(line: 106, column: 9, scope: !2185)
!2190 = !DILocation(line: 65, column: 39, scope: !677, inlinedAt: !2191)
!2191 = distinct !DILocation(line: 107, column: 7, scope: !2184)
!2192 = !DILocation(line: 65, column: 47, scope: !677, inlinedAt: !2191)
!2193 = !DILocation(line: 67, column: 7, scope: !677, inlinedAt: !2191)
!2194 = !DILocation(line: 66, column: 3, scope: !677, inlinedAt: !2191)
!2195 = !DILocation(line: 107, column: 7, scope: !2184)
!2196 = !DILocation(line: 111, column: 41, scope: !2188)
!2197 = !DILocation(line: 109, column: 28, scope: !2188)
!2198 = !DILocation(line: 109, column: 7, scope: !2188)
!2199 = !DILocation(line: 114, column: 1, scope: !2162)
!2200 = distinct !DISubprogram(name: "test_then_block", scope: !3, file: !3, line: 1130, type: !866, isLocal: true, isDefinition: true, scopeLine: 1130, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2201)
!2201 = !{!2202, !2203}
!2202 = !DILocalVariable(name: "ls", arg: 1, scope: !2200, file: !3, line: 1130, type: !597)
!2203 = !DILocalVariable(name: "condexit", scope: !2200, file: !3, line: 1132, type: !203)
!2204 = !DILocation(line: 1130, column: 39, scope: !2200)
!2205 = !DILocation(line: 1133, column: 3, scope: !2200)
!2206 = !DILocation(line: 965, column: 28, scope: !940, inlinedAt: !2207)
!2207 = distinct !DILocation(line: 1134, column: 14, scope: !2200)
!2208 = !DILocation(line: 967, column: 3, scope: !940, inlinedAt: !2207)
!2209 = !DILocation(line: 967, column: 11, scope: !940, inlinedAt: !2207)
!2210 = !DILocation(line: 856, column: 29, scope: !964, inlinedAt: !2211)
!2211 = distinct !DILocation(line: 968, column: 3, scope: !940, inlinedAt: !2207)
!2212 = !DILocation(line: 856, column: 42, scope: !964, inlinedAt: !2211)
!2213 = !DILocation(line: 857, column: 3, scope: !964, inlinedAt: !2211)
!2214 = !DILocation(line: 969, column: 9, scope: !975, inlinedAt: !2207)
!2215 = !DILocation(line: 969, column: 11, scope: !975, inlinedAt: !2207)
!2216 = !DILocation(line: 969, column: 7, scope: !940, inlinedAt: !2207)
!2217 = !DILocation(line: 969, column: 24, scope: !975, inlinedAt: !2207)
!2218 = !DILocation(line: 969, column: 20, scope: !975, inlinedAt: !2207)
!2219 = !DILocation(line: 970, column: 21, scope: !940, inlinedAt: !2207)
!2220 = !DILocation(line: 970, column: 3, scope: !940, inlinedAt: !2207)
!2221 = !DILocation(line: 971, column: 12, scope: !940, inlinedAt: !2207)
!2222 = !DILocation(line: 972, column: 1, scope: !940, inlinedAt: !2207)
!2223 = !DILocation(line: 1132, column: 7, scope: !2200)
!2224 = !DILocation(line: 94, column: 34, scope: !1020, inlinedAt: !2225)
!2225 = distinct !DILocation(line: 1135, column: 3, scope: !2200)
!2226 = !DILocation(line: 94, column: 42, scope: !1020, inlinedAt: !2225)
!2227 = !DILocation(line: 89, column: 30, scope: !664, inlinedAt: !2228)
!2228 = distinct !DILocation(line: 95, column: 3, scope: !1020, inlinedAt: !2225)
!2229 = !DILocation(line: 89, column: 38, scope: !664, inlinedAt: !2228)
!2230 = !DILocation(line: 90, column: 13, scope: !663, inlinedAt: !2228)
!2231 = !DILocation(line: 90, column: 19, scope: !663, inlinedAt: !2228)
!2232 = !DILocation(line: 90, column: 7, scope: !664, inlinedAt: !2228)
!2233 = !DILocation(line: 65, column: 39, scope: !677, inlinedAt: !2234)
!2234 = distinct !DILocation(line: 91, column: 5, scope: !663, inlinedAt: !2228)
!2235 = !DILocation(line: 65, column: 47, scope: !677, inlinedAt: !2234)
!2236 = !DILocation(line: 67, column: 28, scope: !677, inlinedAt: !2234)
!2237 = !DILocation(line: 67, column: 51, scope: !677, inlinedAt: !2234)
!2238 = !DILocation(line: 67, column: 7, scope: !677, inlinedAt: !2234)
!2239 = !DILocation(line: 66, column: 3, scope: !677, inlinedAt: !2234)
!2240 = !DILocation(line: 91, column: 5, scope: !663, inlinedAt: !2228)
!2241 = !DILocation(line: 96, column: 3, scope: !1020, inlinedAt: !2225)
!2242 = !DILocation(line: 1136, column: 3, scope: !2200)
!2243 = !DILocation(line: 1137, column: 3, scope: !2200)
!2244 = distinct !DISubprogram(name: "subexpr", scope: !3, file: !3, line: 828, type: !2245, isLocal: true, isDefinition: true, scopeLine: 828, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2248)
!2245 = !DISubroutineType(types: !2246)
!2246 = !{!2247, !597, !967, !7}
!2247 = !DIDerivedType(tag: DW_TAG_typedef, name: "BinOpr", file: !59, line: 33, baseType: !58)
!2248 = !{!2249, !2250, !2251, !2252, !2253, !2255, !2257}
!2249 = !DILocalVariable(name: "ls", arg: 1, scope: !2244, file: !3, line: 828, type: !597)
!2250 = !DILocalVariable(name: "v", arg: 2, scope: !2244, file: !3, line: 828, type: !967)
!2251 = !DILocalVariable(name: "limit", arg: 3, scope: !2244, file: !3, line: 828, type: !7)
!2252 = !DILocalVariable(name: "op", scope: !2244, file: !3, line: 829, type: !2247)
!2253 = !DILocalVariable(name: "uop", scope: !2244, file: !3, line: 830, type: !2254)
!2254 = !DIDerivedType(tag: DW_TAG_typedef, name: "UnOpr", file: !59, line: 36, baseType: !77)
!2255 = !DILocalVariable(name: "v2", scope: !2256, file: !3, line: 842, type: !943)
!2256 = distinct !DILexicalBlock(scope: !2244, file: !3, line: 841, column: 59)
!2257 = !DILocalVariable(name: "nextop", scope: !2256, file: !3, line: 843, type: !2247)
!2258 = !DILocation(line: 828, column: 34, scope: !2244)
!2259 = !DILocation(line: 828, column: 47, scope: !2244)
!2260 = !DILocation(line: 828, column: 63, scope: !2244)
!2261 = !DILocation(line: 276, column: 35, scope: !605, inlinedAt: !2262)
!2262 = distinct !DILocation(line: 831, column: 3, scope: !2244)
!2263 = !DILocation(line: 277, column: 13, scope: !610, inlinedAt: !2262)
!2264 = !DILocation(line: 277, column: 16, scope: !610, inlinedAt: !2262)
!2265 = !DILocation(line: 277, column: 7, scope: !610, inlinedAt: !2262)
!2266 = !DILocation(line: 277, column: 24, scope: !610, inlinedAt: !2262)
!2267 = !DILocation(line: 277, column: 7, scope: !605, inlinedAt: !2262)
!2268 = !DILocation(line: 278, column: 2, scope: !610, inlinedAt: !2262)
!2269 = !DILocation(line: 832, column: 24, scope: !2244)
!2270 = !DILocalVariable(name: "op", arg: 1, scope: !2271, file: !3, line: 778, type: !203)
!2271 = distinct !DISubprogram(name: "getunopr", scope: !3, file: !3, line: 778, type: !2272, isLocal: true, isDefinition: true, scopeLine: 778, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2274)
!2272 = !DISubroutineType(types: !2273)
!2273 = !{!2254, !203}
!2274 = !{!2270}
!2275 = !DILocation(line: 778, column: 28, scope: !2271, inlinedAt: !2276)
!2276 = distinct !DILocation(line: 832, column: 9, scope: !2244)
!2277 = !DILocation(line: 779, column: 3, scope: !2271, inlinedAt: !2276)
!2278 = !DILocation(line: 781, column: 15, scope: !2279, inlinedAt: !2276)
!2279 = distinct !DILexicalBlock(scope: !2271, file: !3, line: 779, column: 15)
!2280 = !DILocation(line: 782, column: 15, scope: !2279, inlinedAt: !2276)
!2281 = !DILocation(line: 830, column: 9, scope: !2244)
!2282 = !DILocation(line: 834, column: 5, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2284, file: !3, line: 833, column: 27)
!2284 = distinct !DILexicalBlock(scope: !2244, file: !3, line: 833, column: 7)
!2285 = !DILocation(line: 835, column: 5, scope: !2283)
!2286 = !DILocation(line: 836, column: 21, scope: !2283)
!2287 = !DILocation(line: 836, column: 5, scope: !2283)
!2288 = !DILocation(line: 837, column: 3, scope: !2283)
!2289 = !DILocation(line: 126, column: 32, scope: !1792, inlinedAt: !2290)
!2290 = distinct !DILocation(line: 732, column: 7, scope: !2291, inlinedAt: !2299)
!2291 = distinct !DILexicalBlock(scope: !2292, file: !3, line: 731, column: 21)
!2292 = distinct !DILexicalBlock(scope: !2293, file: !3, line: 730, column: 24)
!2293 = distinct !DISubprogram(name: "simpleexp", scope: !3, file: !3, line: 727, type: !965, isLocal: true, isDefinition: true, scopeLine: 727, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2294)
!2294 = !{!2295, !2296, !2297}
!2295 = !DILocalVariable(name: "ls", arg: 1, scope: !2293, file: !3, line: 727, type: !597)
!2296 = !DILocalVariable(name: "v", arg: 2, scope: !2293, file: !3, line: 727, type: !967)
!2297 = !DILocalVariable(name: "fs", scope: !2298, file: !3, line: 753, type: !694)
!2298 = distinct !DILexicalBlock(scope: !2292, file: !3, line: 752, column: 19)
!2299 = distinct !DILocation(line: 838, column: 8, scope: !2284)
!2300 = !DILocation(line: 126, column: 43, scope: !1792, inlinedAt: !2290)
!2301 = !DILocation(line: 126, column: 50, scope: !1792, inlinedAt: !2290)
!2302 = !DILocation(line: 127, column: 13, scope: !1792, inlinedAt: !2290)
!2303 = !DILocation(line: 127, column: 15, scope: !1792, inlinedAt: !2290)
!2304 = !DILocation(line: 127, column: 6, scope: !1792, inlinedAt: !2290)
!2305 = !DILocation(line: 127, column: 8, scope: !1792, inlinedAt: !2290)
!2306 = !DILocation(line: 128, column: 6, scope: !1792, inlinedAt: !2290)
!2307 = !DILocation(line: 128, column: 8, scope: !1792, inlinedAt: !2290)
!2308 = !DILocation(line: 129, column: 6, scope: !1792, inlinedAt: !2290)
!2309 = !DILocation(line: 129, column: 10, scope: !1792, inlinedAt: !2290)
!2310 = !DILocation(line: 129, column: 15, scope: !1792, inlinedAt: !2290)
!2311 = !DILocation(line: 733, column: 33, scope: !2291, inlinedAt: !2299)
!2312 = !DILocation(line: 733, column: 17, scope: !2291, inlinedAt: !2299)
!2313 = !DILocation(line: 734, column: 7, scope: !2291, inlinedAt: !2299)
!2314 = !DILocation(line: 737, column: 31, scope: !2315, inlinedAt: !2299)
!2315 = distinct !DILexicalBlock(scope: !2292, file: !3, line: 736, column: 21)
!2316 = !DILocation(line: 737, column: 39, scope: !2315, inlinedAt: !2299)
!2317 = !DILocalVariable(name: "ls", arg: 1, scope: !2318, file: !3, line: 133, type: !597)
!2318 = distinct !DISubprogram(name: "codestring", scope: !3, file: !3, line: 133, type: !2319, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2321)
!2319 = !DISubroutineType(types: !2320)
!2320 = !{null, !597, !967, !332}
!2321 = !{!2317, !2322, !2323}
!2322 = !DILocalVariable(name: "e", arg: 2, scope: !2318, file: !3, line: 133, type: !967)
!2323 = !DILocalVariable(name: "s", arg: 3, scope: !2318, file: !3, line: 133, type: !332)
!2324 = !DILocation(line: 133, column: 35, scope: !2318, inlinedAt: !2325)
!2325 = distinct !DILocation(line: 737, column: 7, scope: !2315, inlinedAt: !2299)
!2326 = !DILocation(line: 133, column: 48, scope: !2318, inlinedAt: !2325)
!2327 = !DILocation(line: 133, column: 60, scope: !2318, inlinedAt: !2325)
!2328 = !DILocation(line: 134, column: 36, scope: !2318, inlinedAt: !2325)
!2329 = !DILocation(line: 134, column: 19, scope: !2318, inlinedAt: !2325)
!2330 = !DILocation(line: 126, column: 32, scope: !1792, inlinedAt: !2331)
!2331 = distinct !DILocation(line: 134, column: 3, scope: !2318, inlinedAt: !2325)
!2332 = !DILocation(line: 126, column: 43, scope: !1792, inlinedAt: !2331)
!2333 = !DILocation(line: 126, column: 50, scope: !1792, inlinedAt: !2331)
!2334 = !DILocation(line: 127, column: 13, scope: !1792, inlinedAt: !2331)
!2335 = !DILocation(line: 127, column: 15, scope: !1792, inlinedAt: !2331)
!2336 = !DILocation(line: 127, column: 6, scope: !1792, inlinedAt: !2331)
!2337 = !DILocation(line: 127, column: 8, scope: !1792, inlinedAt: !2331)
!2338 = !DILocation(line: 128, column: 6, scope: !1792, inlinedAt: !2331)
!2339 = !DILocation(line: 128, column: 8, scope: !1792, inlinedAt: !2331)
!2340 = !DILocation(line: 129, column: 6, scope: !1792, inlinedAt: !2331)
!2341 = !DILocation(line: 129, column: 10, scope: !1792, inlinedAt: !2331)
!2342 = !DILocation(line: 129, column: 15, scope: !1792, inlinedAt: !2331)
!2343 = !DILocation(line: 738, column: 7, scope: !2315, inlinedAt: !2299)
!2344 = !DILocation(line: 126, column: 32, scope: !1792, inlinedAt: !2345)
!2345 = distinct !DILocation(line: 741, column: 7, scope: !2346, inlinedAt: !2299)
!2346 = distinct !DILexicalBlock(scope: !2292, file: !3, line: 740, column: 18)
!2347 = !DILocation(line: 126, column: 43, scope: !1792, inlinedAt: !2345)
!2348 = !DILocation(line: 126, column: 50, scope: !1792, inlinedAt: !2345)
!2349 = !DILocation(line: 127, column: 13, scope: !1792, inlinedAt: !2345)
!2350 = !DILocation(line: 127, column: 15, scope: !1792, inlinedAt: !2345)
!2351 = !DILocation(line: 127, column: 6, scope: !1792, inlinedAt: !2345)
!2352 = !DILocation(line: 127, column: 8, scope: !1792, inlinedAt: !2345)
!2353 = !DILocation(line: 128, column: 6, scope: !1792, inlinedAt: !2345)
!2354 = !DILocation(line: 128, column: 8, scope: !1792, inlinedAt: !2345)
!2355 = !DILocation(line: 129, column: 6, scope: !1792, inlinedAt: !2345)
!2356 = !DILocation(line: 129, column: 10, scope: !1792, inlinedAt: !2345)
!2357 = !DILocation(line: 129, column: 15, scope: !1792, inlinedAt: !2345)
!2358 = !DILocation(line: 742, column: 7, scope: !2346, inlinedAt: !2299)
!2359 = !DILocation(line: 126, column: 32, scope: !1792, inlinedAt: !2360)
!2360 = distinct !DILocation(line: 745, column: 7, scope: !2361, inlinedAt: !2299)
!2361 = distinct !DILexicalBlock(scope: !2292, file: !3, line: 744, column: 19)
!2362 = !DILocation(line: 126, column: 43, scope: !1792, inlinedAt: !2360)
!2363 = !DILocation(line: 126, column: 50, scope: !1792, inlinedAt: !2360)
!2364 = !DILocation(line: 127, column: 13, scope: !1792, inlinedAt: !2360)
!2365 = !DILocation(line: 127, column: 15, scope: !1792, inlinedAt: !2360)
!2366 = !DILocation(line: 127, column: 6, scope: !1792, inlinedAt: !2360)
!2367 = !DILocation(line: 127, column: 8, scope: !1792, inlinedAt: !2360)
!2368 = !DILocation(line: 128, column: 6, scope: !1792, inlinedAt: !2360)
!2369 = !DILocation(line: 128, column: 8, scope: !1792, inlinedAt: !2360)
!2370 = !DILocation(line: 129, column: 6, scope: !1792, inlinedAt: !2360)
!2371 = !DILocation(line: 129, column: 10, scope: !1792, inlinedAt: !2360)
!2372 = !DILocation(line: 129, column: 15, scope: !1792, inlinedAt: !2360)
!2373 = !DILocation(line: 746, column: 7, scope: !2361, inlinedAt: !2299)
!2374 = !DILocation(line: 126, column: 32, scope: !1792, inlinedAt: !2375)
!2375 = distinct !DILocation(line: 749, column: 7, scope: !2376, inlinedAt: !2299)
!2376 = distinct !DILexicalBlock(scope: !2292, file: !3, line: 748, column: 20)
!2377 = !DILocation(line: 126, column: 43, scope: !1792, inlinedAt: !2375)
!2378 = !DILocation(line: 126, column: 50, scope: !1792, inlinedAt: !2375)
!2379 = !DILocation(line: 127, column: 13, scope: !1792, inlinedAt: !2375)
!2380 = !DILocation(line: 127, column: 15, scope: !1792, inlinedAt: !2375)
!2381 = !DILocation(line: 127, column: 6, scope: !1792, inlinedAt: !2375)
!2382 = !DILocation(line: 127, column: 8, scope: !1792, inlinedAt: !2375)
!2383 = !DILocation(line: 128, column: 6, scope: !1792, inlinedAt: !2375)
!2384 = !DILocation(line: 128, column: 8, scope: !1792, inlinedAt: !2375)
!2385 = !DILocation(line: 129, column: 6, scope: !1792, inlinedAt: !2375)
!2386 = !DILocation(line: 129, column: 10, scope: !1792, inlinedAt: !2375)
!2387 = !DILocation(line: 129, column: 15, scope: !1792, inlinedAt: !2375)
!2388 = !DILocation(line: 750, column: 7, scope: !2376, inlinedAt: !2299)
!2389 = !DILocation(line: 753, column: 27, scope: !2298, inlinedAt: !2299)
!2390 = !DILocation(line: 753, column: 18, scope: !2298, inlinedAt: !2299)
!2391 = !DILocation(line: 754, column: 7, scope: !2392, inlinedAt: !2299)
!2392 = distinct !DILexicalBlock(scope: !2393, file: !3, line: 754, column: 7)
!2393 = distinct !DILexicalBlock(scope: !2298, file: !3, line: 754, column: 7)
!2394 = !DILocation(line: 754, column: 7, scope: !2393, inlinedAt: !2299)
!2395 = !DILocation(line: 756, column: 11, scope: !2298, inlinedAt: !2299)
!2396 = !DILocation(line: 756, column: 24, scope: !2298, inlinedAt: !2299)
!2397 = !DILocation(line: 756, column: 14, scope: !2298, inlinedAt: !2299)
!2398 = !DILocation(line: 757, column: 28, scope: !2298, inlinedAt: !2299)
!2399 = !DILocation(line: 126, column: 32, scope: !1792, inlinedAt: !2400)
!2400 = distinct !DILocation(line: 757, column: 7, scope: !2298, inlinedAt: !2299)
!2401 = !DILocation(line: 126, column: 43, scope: !1792, inlinedAt: !2400)
!2402 = !DILocation(line: 126, column: 50, scope: !1792, inlinedAt: !2400)
!2403 = !DILocation(line: 127, column: 13, scope: !1792, inlinedAt: !2400)
!2404 = !DILocation(line: 127, column: 15, scope: !1792, inlinedAt: !2400)
!2405 = !DILocation(line: 127, column: 6, scope: !1792, inlinedAt: !2400)
!2406 = !DILocation(line: 127, column: 8, scope: !1792, inlinedAt: !2400)
!2407 = !DILocation(line: 128, column: 6, scope: !1792, inlinedAt: !2400)
!2408 = !DILocation(line: 128, column: 8, scope: !1792, inlinedAt: !2400)
!2409 = !DILocation(line: 129, column: 6, scope: !1792, inlinedAt: !2400)
!2410 = !DILocation(line: 129, column: 10, scope: !1792, inlinedAt: !2400)
!2411 = !DILocation(line: 129, column: 15, scope: !1792, inlinedAt: !2400)
!2412 = !DILocation(line: 761, column: 7, scope: !2413, inlinedAt: !2299)
!2413 = distinct !DILexicalBlock(scope: !2292, file: !3, line: 760, column: 15)
!2414 = !DILocation(line: 762, column: 7, scope: !2413, inlinedAt: !2299)
!2415 = !DILocation(line: 765, column: 7, scope: !2416, inlinedAt: !2299)
!2416 = distinct !DILexicalBlock(scope: !2292, file: !3, line: 764, column: 23)
!2417 = !DILocation(line: 766, column: 26, scope: !2416, inlinedAt: !2299)
!2418 = !DILocation(line: 766, column: 7, scope: !2416, inlinedAt: !2299)
!2419 = !DILocation(line: 767, column: 7, scope: !2416, inlinedAt: !2299)
!2420 = !DILocation(line: 770, column: 7, scope: !2421, inlinedAt: !2299)
!2421 = distinct !DILexicalBlock(scope: !2292, file: !3, line: 769, column: 14)
!2422 = !DILocation(line: 771, column: 7, scope: !2421, inlinedAt: !2299)
!2423 = !DILocation(line: 774, column: 3, scope: !2293, inlinedAt: !2299)
!2424 = !DILocation(line: 775, column: 1, scope: !2293, inlinedAt: !2299)
!2425 = !DILocation(line: 840, column: 24, scope: !2244)
!2426 = !DILocalVariable(name: "op", arg: 1, scope: !2427, file: !3, line: 788, type: !203)
!2427 = distinct !DISubprogram(name: "getbinopr", scope: !3, file: !3, line: 788, type: !2428, isLocal: true, isDefinition: true, scopeLine: 788, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2430)
!2428 = !DISubroutineType(types: !2429)
!2429 = !{!2247, !203}
!2430 = !{!2426}
!2431 = !DILocation(line: 788, column: 30, scope: !2427, inlinedAt: !2432)
!2432 = distinct !DILocation(line: 840, column: 8, scope: !2244)
!2433 = !DILocation(line: 789, column: 3, scope: !2427, inlinedAt: !2432)
!2434 = !DILocation(line: 791, column: 15, scope: !2435, inlinedAt: !2432)
!2435 = distinct !DILexicalBlock(scope: !2427, file: !3, line: 789, column: 15)
!2436 = !DILocation(line: 792, column: 15, scope: !2435, inlinedAt: !2432)
!2437 = !DILocation(line: 793, column: 15, scope: !2435, inlinedAt: !2432)
!2438 = !DILocation(line: 794, column: 15, scope: !2435, inlinedAt: !2432)
!2439 = !DILocation(line: 795, column: 15, scope: !2435, inlinedAt: !2432)
!2440 = !DILocation(line: 796, column: 21, scope: !2435, inlinedAt: !2432)
!2441 = !DILocation(line: 797, column: 17, scope: !2435, inlinedAt: !2432)
!2442 = !DILocation(line: 798, column: 17, scope: !2435, inlinedAt: !2432)
!2443 = !DILocation(line: 799, column: 15, scope: !2435, inlinedAt: !2432)
!2444 = !DILocation(line: 800, column: 17, scope: !2435, inlinedAt: !2432)
!2445 = !DILocation(line: 801, column: 15, scope: !2435, inlinedAt: !2432)
!2446 = !DILocation(line: 802, column: 17, scope: !2435, inlinedAt: !2432)
!2447 = !DILocation(line: 803, column: 18, scope: !2435, inlinedAt: !2432)
!2448 = !DILocation(line: 804, column: 17, scope: !2435, inlinedAt: !2432)
!2449 = !DILocation(line: 829, column: 10, scope: !2244)
!2450 = !DILocation(line: 841, column: 29, scope: !2244)
!2451 = !DILocation(line: 841, column: 32, scope: !2244)
!2452 = !DILocation(line: 841, column: 45, scope: !2244)
!2453 = !{!2454, !575, i64 0}
!2454 = !{!"", !575, i64 0, !575, i64 1}
!2455 = !DILocation(line: 841, column: 50, scope: !2244)
!2456 = !DILocation(line: 841, column: 3, scope: !2244)
!2457 = !DILocation(line: 842, column: 5, scope: !2256)
!2458 = !DILocation(line: 844, column: 5, scope: !2256)
!2459 = !DILocation(line: 845, column: 20, scope: !2256)
!2460 = !DILocation(line: 845, column: 5, scope: !2256)
!2461 = !DILocation(line: 847, column: 44, scope: !2256)
!2462 = !{!2454, !575, i64 1}
!2463 = !DILocation(line: 847, column: 31, scope: !2256)
!2464 = !DILocation(line: 842, column: 13, scope: !2256)
!2465 = !DILocation(line: 847, column: 14, scope: !2256)
!2466 = !DILocation(line: 843, column: 12, scope: !2256)
!2467 = !DILocation(line: 848, column: 21, scope: !2256)
!2468 = !DILocation(line: 848, column: 5, scope: !2256)
!2469 = !DILocation(line: 850, column: 3, scope: !2244)
!2470 = !DILocation(line: 841, column: 13, scope: !2244)
!2471 = distinct !{!2471, !2456, !2469}
!2472 = !DILocation(line: 0, scope: !2256)
!2473 = !DILocation(line: 851, column: 3, scope: !2244)
!2474 = !DILocation(line: 852, column: 3, scope: !2244)
!2475 = distinct !DISubprogram(name: "constructor", scope: !3, file: !3, line: 498, type: !965, isLocal: true, isDefinition: true, scopeLine: 498, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2476)
!2476 = !{!2477, !2478, !2479, !2480, !2481, !2482}
!2477 = !DILocalVariable(name: "ls", arg: 1, scope: !2475, file: !3, line: 498, type: !597)
!2478 = !DILocalVariable(name: "t", arg: 2, scope: !2475, file: !3, line: 498, type: !967)
!2479 = !DILocalVariable(name: "fs", scope: !2475, file: !3, line: 500, type: !694)
!2480 = !DILocalVariable(name: "line", scope: !2475, file: !3, line: 501, type: !203)
!2481 = !DILocalVariable(name: "pc", scope: !2475, file: !3, line: 502, type: !203)
!2482 = !DILocalVariable(name: "cc", scope: !2475, file: !3, line: 503, type: !2483)
!2483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ConsControl", file: !3, line: 434, size: 384, elements: !2484)
!2484 = !{!2485, !2486, !2487, !2488, !2489}
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !2483, file: !3, line: 435, baseType: !943, size: 192)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "t", scope: !2483, file: !3, line: 436, baseType: !967, size: 64, offset: 192)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "nh", scope: !2483, file: !3, line: 437, baseType: !203, size: 32, offset: 256)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "na", scope: !2483, file: !3, line: 438, baseType: !203, size: 32, offset: 288)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "tostore", scope: !2483, file: !3, line: 439, baseType: !203, size: 32, offset: 320)
!2490 = !DILocation(line: 498, column: 36, scope: !2475)
!2491 = !DILocation(line: 498, column: 49, scope: !2475)
!2492 = !DILocation(line: 500, column: 23, scope: !2475)
!2493 = !DILocation(line: 500, column: 14, scope: !2475)
!2494 = !DILocation(line: 501, column: 18, scope: !2475)
!2495 = !DILocation(line: 501, column: 7, scope: !2475)
!2496 = !DILocation(line: 502, column: 12, scope: !2475)
!2497 = !DILocation(line: 502, column: 7, scope: !2475)
!2498 = !DILocation(line: 503, column: 3, scope: !2475)
!2499 = !DILocation(line: 504, column: 22, scope: !2475)
!2500 = !DILocation(line: 504, column: 30, scope: !2475)
!2501 = !{!2502, !574, i64 40}
!2502 = !{!"ConsControl", !977, i64 0, !578, i64 24, !574, i64 32, !574, i64 36, !574, i64 40}
!2503 = !DILocation(line: 504, column: 14, scope: !2475)
!2504 = !DILocation(line: 504, column: 17, scope: !2475)
!2505 = !{!2502, !574, i64 32}
!2506 = !DILocation(line: 504, column: 6, scope: !2475)
!2507 = !DILocation(line: 504, column: 9, scope: !2475)
!2508 = !{!2502, !574, i64 36}
!2509 = !DILocation(line: 505, column: 6, scope: !2475)
!2510 = !DILocation(line: 505, column: 8, scope: !2475)
!2511 = !{!2502, !578, i64 24}
!2512 = !DILocation(line: 126, column: 32, scope: !1792, inlinedAt: !2513)
!2513 = distinct !DILocation(line: 506, column: 3, scope: !2475)
!2514 = !DILocation(line: 126, column: 43, scope: !1792, inlinedAt: !2513)
!2515 = !DILocation(line: 126, column: 50, scope: !1792, inlinedAt: !2513)
!2516 = !DILocation(line: 127, column: 13, scope: !1792, inlinedAt: !2513)
!2517 = !DILocation(line: 127, column: 15, scope: !1792, inlinedAt: !2513)
!2518 = !DILocation(line: 127, column: 6, scope: !1792, inlinedAt: !2513)
!2519 = !DILocation(line: 127, column: 8, scope: !1792, inlinedAt: !2513)
!2520 = !DILocation(line: 128, column: 6, scope: !1792, inlinedAt: !2513)
!2521 = !DILocation(line: 128, column: 8, scope: !1792, inlinedAt: !2513)
!2522 = !DILocation(line: 129, column: 6, scope: !1792, inlinedAt: !2513)
!2523 = !DILocation(line: 129, column: 10, scope: !1792, inlinedAt: !2513)
!2524 = !DILocation(line: 129, column: 15, scope: !1792, inlinedAt: !2513)
!2525 = !DILocation(line: 507, column: 16, scope: !2475)
!2526 = !DILocation(line: 126, column: 32, scope: !1792, inlinedAt: !2527)
!2527 = distinct !DILocation(line: 507, column: 3, scope: !2475)
!2528 = !DILocation(line: 126, column: 43, scope: !1792, inlinedAt: !2527)
!2529 = !DILocation(line: 126, column: 50, scope: !1792, inlinedAt: !2527)
!2530 = !DILocation(line: 127, column: 13, scope: !1792, inlinedAt: !2527)
!2531 = !DILocation(line: 127, column: 15, scope: !1792, inlinedAt: !2527)
!2532 = !DILocation(line: 127, column: 6, scope: !1792, inlinedAt: !2527)
!2533 = !DILocation(line: 127, column: 8, scope: !1792, inlinedAt: !2527)
!2534 = !DILocation(line: 128, column: 6, scope: !1792, inlinedAt: !2527)
!2535 = !DILocation(line: 128, column: 8, scope: !1792, inlinedAt: !2527)
!2536 = !DILocation(line: 129, column: 6, scope: !1792, inlinedAt: !2527)
!2537 = !DILocation(line: 129, column: 10, scope: !1792, inlinedAt: !2527)
!2538 = !DILocation(line: 129, column: 15, scope: !1792, inlinedAt: !2527)
!2539 = !DILocation(line: 508, column: 24, scope: !2475)
!2540 = !DILocation(line: 508, column: 3, scope: !2475)
!2541 = !DILocation(line: 94, column: 34, scope: !1020, inlinedAt: !2542)
!2542 = distinct !DILocation(line: 509, column: 3, scope: !2475)
!2543 = !DILocation(line: 94, column: 42, scope: !1020, inlinedAt: !2542)
!2544 = !DILocation(line: 89, column: 30, scope: !664, inlinedAt: !2545)
!2545 = distinct !DILocation(line: 95, column: 3, scope: !1020, inlinedAt: !2542)
!2546 = !DILocation(line: 89, column: 38, scope: !664, inlinedAt: !2545)
!2547 = !DILocation(line: 90, column: 13, scope: !663, inlinedAt: !2545)
!2548 = !DILocation(line: 90, column: 19, scope: !663, inlinedAt: !2545)
!2549 = !DILocation(line: 90, column: 7, scope: !664, inlinedAt: !2545)
!2550 = !DILocation(line: 65, column: 39, scope: !677, inlinedAt: !2551)
!2551 = distinct !DILocation(line: 91, column: 5, scope: !663, inlinedAt: !2545)
!2552 = !DILocation(line: 65, column: 47, scope: !677, inlinedAt: !2551)
!2553 = !DILocation(line: 67, column: 28, scope: !677, inlinedAt: !2551)
!2554 = !DILocation(line: 67, column: 51, scope: !677, inlinedAt: !2551)
!2555 = !DILocation(line: 67, column: 7, scope: !677, inlinedAt: !2551)
!2556 = !DILocation(line: 66, column: 3, scope: !677, inlinedAt: !2551)
!2557 = !DILocation(line: 91, column: 5, scope: !663, inlinedAt: !2545)
!2558 = !DILocation(line: 96, column: 3, scope: !1020, inlinedAt: !2542)
!2559 = !DILocation(line: 512, column: 15, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2561, file: !3, line: 512, column: 9)
!2561 = distinct !DILexicalBlock(scope: !2475, file: !3, line: 510, column: 6)
!2562 = !DILocation(line: 512, column: 21, scope: !2560)
!2563 = !DILocation(line: 512, column: 9, scope: !2561)
!2564 = !DILocation(line: 465, column: 13, scope: !2565, inlinedAt: !2573)
!2565 = distinct !DILexicalBlock(scope: !2566, file: !3, line: 465, column: 7)
!2566 = distinct !DISubprogram(name: "closelistfield", scope: !3, file: !3, line: 464, type: !2567, isLocal: true, isDefinition: true, scopeLine: 464, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2570)
!2567 = !DISubroutineType(types: !2568)
!2568 = !{null, !694, !2569}
!2569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2570 = !{!2571, !2572}
!2571 = !DILocalVariable(name: "fs", arg: 1, scope: !2566, file: !3, line: 464, type: !694)
!2572 = !DILocalVariable(name: "cc", arg: 2, scope: !2566, file: !3, line: 464, type: !2569)
!2573 = distinct !DILocation(line: 513, column: 5, scope: !2561)
!2574 = !DILocation(line: 503, column: 22, scope: !2475)
!2575 = !DILocation(line: 464, column: 40, scope: !2566, inlinedAt: !2573)
!2576 = !DILocation(line: 464, column: 64, scope: !2566, inlinedAt: !2573)
!2577 = !DILocation(line: 465, column: 15, scope: !2565, inlinedAt: !2573)
!2578 = !DILocation(line: 465, column: 7, scope: !2566, inlinedAt: !2573)
!2579 = !DILocation(line: 466, column: 3, scope: !2566, inlinedAt: !2573)
!2580 = !DILocation(line: 467, column: 11, scope: !2566, inlinedAt: !2573)
!2581 = !{!2502, !575, i64 0}
!2582 = !DILocation(line: 468, column: 11, scope: !2583, inlinedAt: !2573)
!2583 = distinct !DILexicalBlock(scope: !2566, file: !3, line: 468, column: 7)
!2584 = !DILocation(line: 468, column: 19, scope: !2583, inlinedAt: !2573)
!2585 = !DILocation(line: 468, column: 7, scope: !2566, inlinedAt: !2573)
!2586 = !DILocation(line: 469, column: 26, scope: !2587, inlinedAt: !2573)
!2587 = distinct !DILexicalBlock(scope: !2583, file: !3, line: 468, column: 41)
!2588 = !DILocation(line: 469, column: 29, scope: !2587, inlinedAt: !2573)
!2589 = !DILocation(line: 469, column: 33, scope: !2587, inlinedAt: !2573)
!2590 = !DILocation(line: 469, column: 43, scope: !2587, inlinedAt: !2573)
!2591 = !DILocation(line: 469, column: 5, scope: !2587, inlinedAt: !2573)
!2592 = !DILocation(line: 470, column: 17, scope: !2587, inlinedAt: !2573)
!2593 = !DILocation(line: 471, column: 3, scope: !2587, inlinedAt: !2573)
!2594 = !DILocation(line: 514, column: 18, scope: !2561)
!2595 = !DILocation(line: 514, column: 5, scope: !2561)
!2596 = !DILocation(line: 516, column: 9, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2598, file: !3, line: 515, column: 21)
!2598 = distinct !DILexicalBlock(scope: !2561, file: !3, line: 514, column: 25)
!2599 = !DILocation(line: 517, column: 27, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2597, file: !3, line: 517, column: 13)
!2601 = !{!573, !574, i64 32}
!2602 = !DILocation(line: 517, column: 33, scope: !2600)
!2603 = !DILocation(line: 517, column: 13, scope: !2597)
!2604 = !DILocalVariable(name: "ls", arg: 1, scope: !2605, file: !3, line: 490, type: !597)
!2605 = distinct !DISubprogram(name: "listfield", scope: !3, file: !3, line: 490, type: !2606, isLocal: true, isDefinition: true, scopeLine: 490, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2608)
!2606 = !DISubroutineType(types: !2607)
!2607 = !{null, !597, !2569}
!2608 = !{!2604, !2609}
!2609 = !DILocalVariable(name: "cc", arg: 2, scope: !2605, file: !3, line: 490, type: !2569)
!2610 = !DILocation(line: 490, column: 34, scope: !2605, inlinedAt: !2611)
!2611 = distinct !DILocation(line: 518, column: 11, scope: !2600)
!2612 = !DILocation(line: 490, column: 58, scope: !2605, inlinedAt: !2611)
!2613 = !DILocation(line: 856, column: 29, scope: !964, inlinedAt: !2614)
!2614 = distinct !DILocation(line: 491, column: 3, scope: !2605, inlinedAt: !2611)
!2615 = !DILocation(line: 856, column: 42, scope: !964, inlinedAt: !2614)
!2616 = !DILocation(line: 857, column: 3, scope: !964, inlinedAt: !2614)
!2617 = !DILocation(line: 492, column: 3, scope: !2618, inlinedAt: !2611)
!2618 = distinct !DILexicalBlock(scope: !2605, file: !3, line: 492, column: 3)
!2619 = !DILocation(line: 492, column: 3, scope: !2605, inlinedAt: !2611)
!2620 = !DILocalVariable(name: "fs", arg: 1, scope: !2621, file: !3, line: 71, type: !694)
!2621 = distinct !DISubprogram(name: "errorlimit", scope: !3, file: !3, line: 71, type: !2622, isLocal: true, isDefinition: true, scopeLine: 71, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2624)
!2622 = !DISubroutineType(types: !2623)
!2623 = !{null, !694, !203, !375}
!2624 = !{!2620, !2625, !2626, !2627}
!2625 = !DILocalVariable(name: "limit", arg: 2, scope: !2621, file: !3, line: 71, type: !203)
!2626 = !DILocalVariable(name: "what", arg: 3, scope: !2621, file: !3, line: 71, type: !375)
!2627 = !DILocalVariable(name: "msg", scope: !2621, file: !3, line: 72, type: !375)
!2628 = !DILocation(line: 71, column: 36, scope: !2621, inlinedAt: !2629)
!2629 = distinct !DILocation(line: 492, column: 3, scope: !2618, inlinedAt: !2611)
!2630 = !DILocation(line: 71, column: 44, scope: !2621, inlinedAt: !2629)
!2631 = !DILocation(line: 71, column: 63, scope: !2621, inlinedAt: !2629)
!2632 = !DILocation(line: 72, column: 26, scope: !2621, inlinedAt: !2629)
!2633 = !DILocation(line: 72, column: 29, scope: !2621, inlinedAt: !2629)
!2634 = !{!591, !574, i64 96}
!2635 = !DILocation(line: 72, column: 41, scope: !2621, inlinedAt: !2629)
!2636 = !DILocation(line: 0, scope: !2621, inlinedAt: !2629)
!2637 = !DILocation(line: 72, column: 21, scope: !2621, inlinedAt: !2629)
!2638 = !DILocation(line: 73, column: 5, scope: !2621, inlinedAt: !2629)
!2639 = !DILocation(line: 74, column: 5, scope: !2621, inlinedAt: !2629)
!2640 = !DILocation(line: 72, column: 15, scope: !2621, inlinedAt: !2629)
!2641 = !DILocation(line: 76, column: 21, scope: !2621, inlinedAt: !2629)
!2642 = !DILocation(line: 76, column: 3, scope: !2621, inlinedAt: !2629)
!2643 = !DILocation(line: 493, column: 9, scope: !2605, inlinedAt: !2611)
!2644 = !DILocation(line: 494, column: 14, scope: !2605, inlinedAt: !2611)
!2645 = !DILocation(line: 518, column: 11, scope: !2600)
!2646 = !DILocation(line: 520, column: 11, scope: !2600)
!2647 = !DILocation(line: 524, column: 9, scope: !2648)
!2648 = distinct !DILexicalBlock(scope: !2598, file: !3, line: 523, column: 17)
!2649 = !DILocation(line: 525, column: 9, scope: !2648)
!2650 = !DILocation(line: 490, column: 34, scope: !2605, inlinedAt: !2651)
!2651 = distinct !DILocation(line: 528, column: 9, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !2598, file: !3, line: 527, column: 16)
!2653 = !DILocation(line: 490, column: 58, scope: !2605, inlinedAt: !2651)
!2654 = !DILocation(line: 856, column: 29, scope: !964, inlinedAt: !2655)
!2655 = distinct !DILocation(line: 491, column: 3, scope: !2605, inlinedAt: !2651)
!2656 = !DILocation(line: 856, column: 42, scope: !964, inlinedAt: !2655)
!2657 = !DILocation(line: 857, column: 3, scope: !964, inlinedAt: !2655)
!2658 = !DILocation(line: 492, column: 3, scope: !2618, inlinedAt: !2651)
!2659 = !DILocation(line: 492, column: 3, scope: !2605, inlinedAt: !2651)
!2660 = !DILocation(line: 71, column: 36, scope: !2621, inlinedAt: !2661)
!2661 = distinct !DILocation(line: 492, column: 3, scope: !2618, inlinedAt: !2651)
!2662 = !DILocation(line: 71, column: 44, scope: !2621, inlinedAt: !2661)
!2663 = !DILocation(line: 71, column: 63, scope: !2621, inlinedAt: !2661)
!2664 = !DILocation(line: 72, column: 26, scope: !2621, inlinedAt: !2661)
!2665 = !DILocation(line: 72, column: 29, scope: !2621, inlinedAt: !2661)
!2666 = !DILocation(line: 72, column: 41, scope: !2621, inlinedAt: !2661)
!2667 = !DILocation(line: 0, scope: !2621, inlinedAt: !2661)
!2668 = !DILocation(line: 72, column: 21, scope: !2621, inlinedAt: !2661)
!2669 = !DILocation(line: 73, column: 5, scope: !2621, inlinedAt: !2661)
!2670 = !DILocation(line: 74, column: 5, scope: !2621, inlinedAt: !2661)
!2671 = !DILocation(line: 72, column: 15, scope: !2621, inlinedAt: !2661)
!2672 = !DILocation(line: 76, column: 21, scope: !2621, inlinedAt: !2661)
!2673 = !DILocation(line: 76, column: 3, scope: !2621, inlinedAt: !2661)
!2674 = !DILocation(line: 493, column: 9, scope: !2605, inlinedAt: !2651)
!2675 = !DILocation(line: 494, column: 14, scope: !2605, inlinedAt: !2651)
!2676 = !DILocation(line: 529, column: 9, scope: !2652)
!2677 = !DILocation(line: 80, column: 32, scope: !635, inlinedAt: !2678)
!2678 = distinct !DILocation(line: 532, column: 12, scope: !2475)
!2679 = !DILocation(line: 80, column: 40, scope: !635, inlinedAt: !2678)
!2680 = !DILocation(line: 81, column: 13, scope: !644, inlinedAt: !2678)
!2681 = !DILocation(line: 81, column: 7, scope: !635, inlinedAt: !2678)
!2682 = !DILocation(line: 82, column: 5, scope: !648, inlinedAt: !2678)
!2683 = !DILocation(line: 532, column: 30, scope: !2475)
!2684 = !DILocation(line: 82, column: 5, scope: !648, inlinedAt: !2685)
!2685 = distinct !DILocation(line: 532, column: 33, scope: !2475)
!2686 = !DILocation(line: 532, column: 3, scope: !2561)
!2687 = !DILocation(line: 533, column: 3, scope: !2475)
!2688 = !DILocalVariable(name: "fs", arg: 1, scope: !2689, file: !3, line: 475, type: !694)
!2689 = distinct !DISubprogram(name: "lastlistfield", scope: !3, file: !3, line: 475, type: !2567, isLocal: true, isDefinition: true, scopeLine: 475, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2690)
!2690 = !{!2688, !2691}
!2691 = !DILocalVariable(name: "cc", arg: 2, scope: !2689, file: !3, line: 475, type: !2569)
!2692 = !DILocation(line: 475, column: 39, scope: !2689, inlinedAt: !2693)
!2693 = distinct !DILocation(line: 534, column: 3, scope: !2475)
!2694 = !DILocation(line: 475, column: 63, scope: !2689, inlinedAt: !2693)
!2695 = !DILocation(line: 476, column: 11, scope: !2696, inlinedAt: !2693)
!2696 = distinct !DILexicalBlock(scope: !2689, file: !3, line: 476, column: 7)
!2697 = !DILocation(line: 476, column: 19, scope: !2696, inlinedAt: !2693)
!2698 = !DILocation(line: 476, column: 7, scope: !2689, inlinedAt: !2693)
!2699 = !DILocation(line: 477, column: 7, scope: !2700, inlinedAt: !2693)
!2700 = distinct !DILexicalBlock(scope: !2689, file: !3, line: 477, column: 7)
!2701 = !DILocation(line: 478, column: 5, scope: !2702, inlinedAt: !2693)
!2702 = distinct !DILexicalBlock(scope: !2700, file: !3, line: 477, column: 28)
!2703 = !DILocation(line: 479, column: 26, scope: !2702, inlinedAt: !2693)
!2704 = !DILocation(line: 479, column: 29, scope: !2702, inlinedAt: !2693)
!2705 = !DILocation(line: 479, column: 33, scope: !2702, inlinedAt: !2693)
!2706 = !DILocation(line: 479, column: 43, scope: !2702, inlinedAt: !2693)
!2707 = !DILocation(line: 479, column: 5, scope: !2702, inlinedAt: !2693)
!2708 = !DILocation(line: 480, column: 11, scope: !2702, inlinedAt: !2693)
!2709 = !DILocation(line: 481, column: 3, scope: !2702, inlinedAt: !2693)
!2710 = !DILocation(line: 484, column: 7, scope: !2711, inlinedAt: !2693)
!2711 = distinct !DILexicalBlock(scope: !2712, file: !3, line: 483, column: 9)
!2712 = distinct !DILexicalBlock(scope: !2700, file: !3, line: 482, column: 8)
!2713 = !DILocation(line: 485, column: 51, scope: !2712, inlinedAt: !2693)
!2714 = !DILocation(line: 485, column: 26, scope: !2712, inlinedAt: !2693)
!2715 = !DILocation(line: 485, column: 29, scope: !2712, inlinedAt: !2693)
!2716 = !DILocation(line: 485, column: 33, scope: !2712, inlinedAt: !2693)
!2717 = !DILocation(line: 485, column: 43, scope: !2712, inlinedAt: !2693)
!2718 = !DILocation(line: 485, column: 5, scope: !2712, inlinedAt: !2693)
!2719 = !DILocation(line: 535, column: 3, scope: !2475)
!2720 = !DILocation(line: 536, column: 3, scope: !2475)
!2721 = !DILocation(line: 537, column: 1, scope: !2475)
!2722 = distinct !DISubprogram(name: "body", scope: !3, file: !3, line: 576, type: !2723, isLocal: true, isDefinition: true, scopeLine: 576, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2725)
!2723 = !DISubroutineType(types: !2724)
!2724 = !{null, !597, !967, !203, !203}
!2725 = !{!2726, !2727, !2728, !2729, !2730}
!2726 = !DILocalVariable(name: "ls", arg: 1, scope: !2722, file: !3, line: 576, type: !597)
!2727 = !DILocalVariable(name: "e", arg: 2, scope: !2722, file: !3, line: 576, type: !967)
!2728 = !DILocalVariable(name: "needself", arg: 3, scope: !2722, file: !3, line: 576, type: !203)
!2729 = !DILocalVariable(name: "line", arg: 4, scope: !2722, file: !3, line: 576, type: !203)
!2730 = !DILocalVariable(name: "new_fs", scope: !2722, file: !3, line: 578, type: !695)
!2731 = !DILocation(line: 576, column: 29, scope: !2722)
!2732 = !DILocation(line: 576, column: 42, scope: !2722)
!2733 = !DILocation(line: 576, column: 49, scope: !2722)
!2734 = !DILocation(line: 576, column: 63, scope: !2722)
!2735 = !DILocation(line: 578, column: 3, scope: !2722)
!2736 = !DILocation(line: 578, column: 13, scope: !2722)
!2737 = !DILocation(line: 579, column: 3, scope: !2722)
!2738 = !DILocation(line: 580, column: 10, scope: !2722)
!2739 = !DILocation(line: 580, column: 13, scope: !2722)
!2740 = !DILocation(line: 580, column: 25, scope: !2722)
!2741 = !DILocation(line: 94, column: 34, scope: !1020, inlinedAt: !2742)
!2742 = distinct !DILocation(line: 581, column: 3, scope: !2722)
!2743 = !DILocation(line: 94, column: 42, scope: !1020, inlinedAt: !2742)
!2744 = !DILocation(line: 89, column: 30, scope: !664, inlinedAt: !2745)
!2745 = distinct !DILocation(line: 95, column: 3, scope: !1020, inlinedAt: !2742)
!2746 = !DILocation(line: 89, column: 38, scope: !664, inlinedAt: !2745)
!2747 = !DILocation(line: 90, column: 13, scope: !663, inlinedAt: !2745)
!2748 = !DILocation(line: 90, column: 19, scope: !663, inlinedAt: !2745)
!2749 = !DILocation(line: 90, column: 7, scope: !664, inlinedAt: !2745)
!2750 = !DILocation(line: 65, column: 39, scope: !677, inlinedAt: !2751)
!2751 = distinct !DILocation(line: 91, column: 5, scope: !663, inlinedAt: !2745)
!2752 = !DILocation(line: 65, column: 47, scope: !677, inlinedAt: !2751)
!2753 = !DILocation(line: 67, column: 28, scope: !677, inlinedAt: !2751)
!2754 = !DILocation(line: 67, column: 51, scope: !677, inlinedAt: !2751)
!2755 = !DILocation(line: 67, column: 7, scope: !677, inlinedAt: !2751)
!2756 = !DILocation(line: 66, column: 3, scope: !677, inlinedAt: !2751)
!2757 = !DILocation(line: 91, column: 5, scope: !663, inlinedAt: !2745)
!2758 = !DILocation(line: 96, column: 3, scope: !1020, inlinedAt: !2742)
!2759 = !DILocation(line: 582, column: 7, scope: !2760)
!2760 = distinct !DILexicalBlock(scope: !2722, file: !3, line: 582, column: 7)
!2761 = !DILocation(line: 582, column: 7, scope: !2722)
!2762 = !DILocation(line: 545, column: 23, scope: !2763, inlinedAt: !2769)
!2763 = distinct !DISubprogram(name: "parlist", scope: !3, file: !3, line: 543, type: !595, isLocal: true, isDefinition: true, scopeLine: 543, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2764)
!2764 = !{!2765, !2766, !2767, !2768}
!2765 = !DILocalVariable(name: "ls", arg: 1, scope: !2763, file: !3, line: 543, type: !597)
!2766 = !DILocalVariable(name: "fs", scope: !2763, file: !3, line: 545, type: !694)
!2767 = !DILocalVariable(name: "f", scope: !2763, file: !3, line: 546, type: !459)
!2768 = !DILocalVariable(name: "nparams", scope: !2763, file: !3, line: 547, type: !203)
!2769 = distinct !DILocation(line: 586, column: 3, scope: !2722)
!2770 = !DILocation(line: 546, column: 18, scope: !2763, inlinedAt: !2769)
!2771 = !DILocation(line: 583, column: 5, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2760, file: !3, line: 582, column: 17)
!2773 = !DILocation(line: 167, column: 40, scope: !1814, inlinedAt: !2774)
!2774 = distinct !DILocation(line: 584, column: 5, scope: !2772)
!2775 = !DILocation(line: 167, column: 48, scope: !1814, inlinedAt: !2774)
!2776 = !DILocation(line: 168, column: 23, scope: !1814, inlinedAt: !2774)
!2777 = !DILocation(line: 168, column: 14, scope: !1814, inlinedAt: !2774)
!2778 = !DILocation(line: 169, column: 17, scope: !1814, inlinedAt: !2774)
!2779 = !DILocation(line: 169, column: 15, scope: !1814, inlinedAt: !2774)
!2780 = !DILocation(line: 170, column: 3, scope: !1826, inlinedAt: !2774)
!2781 = !DILocation(line: 171, column: 5, scope: !1828, inlinedAt: !2774)
!2782 = !DILocation(line: 171, column: 40, scope: !1828, inlinedAt: !2774)
!2783 = !DILocation(line: 171, column: 48, scope: !1828, inlinedAt: !2774)
!2784 = !DILocation(line: 543, column: 32, scope: !2763, inlinedAt: !2769)
!2785 = !DILocation(line: 545, column: 14, scope: !2763, inlinedAt: !2769)
!2786 = !DILocation(line: 546, column: 10, scope: !2763, inlinedAt: !2769)
!2787 = !DILocation(line: 547, column: 7, scope: !2763, inlinedAt: !2769)
!2788 = !DILocation(line: 548, column: 6, scope: !2763, inlinedAt: !2769)
!2789 = !DILocation(line: 548, column: 16, scope: !2763, inlinedAt: !2769)
!2790 = !DILocation(line: 549, column: 13, scope: !2791, inlinedAt: !2769)
!2791 = distinct !DILexicalBlock(scope: !2763, file: !3, line: 549, column: 7)
!2792 = !DILocation(line: 549, column: 19, scope: !2791, inlinedAt: !2769)
!2793 = !DILocation(line: 549, column: 7, scope: !2763, inlinedAt: !2769)
!2794 = !DILocation(line: 551, column: 7, scope: !2795, inlinedAt: !2769)
!2795 = distinct !DILexicalBlock(scope: !2796, file: !3, line: 550, column: 8)
!2796 = distinct !DILexicalBlock(scope: !2791, file: !3, line: 549, column: 27)
!2797 = !DILocation(line: 82, column: 5, scope: !648, inlinedAt: !2798)
!2798 = distinct !DILocation(line: 568, column: 31, scope: !2796, inlinedAt: !2769)
!2799 = !DILocation(line: 551, column: 21, scope: !2795, inlinedAt: !2769)
!2800 = !DILocation(line: 120, column: 22, scope: !1123, inlinedAt: !2801)
!2801 = distinct !DILocation(line: 553, column: 28, scope: !2802, inlinedAt: !2769)
!2802 = distinct !DILexicalBlock(scope: !2803, file: !3, line: 552, column: 23)
!2803 = distinct !DILexicalBlock(scope: !2795, file: !3, line: 551, column: 28)
!2804 = !DILocation(line: 118, column: 12, scope: !1123, inlinedAt: !2801)
!2805 = !DILocation(line: 121, column: 3, scope: !1123, inlinedAt: !2801)
!2806 = !DILocation(line: 553, column: 54, scope: !2802, inlinedAt: !2769)
!2807 = !DILocation(line: 553, column: 11, scope: !2802, inlinedAt: !2769)
!2808 = !DILocation(line: 554, column: 11, scope: !2802, inlinedAt: !2769)
!2809 = !DILocation(line: 557, column: 11, scope: !2810, inlinedAt: !2769)
!2810 = distinct !DILexicalBlock(scope: !2803, file: !3, line: 556, column: 23)
!2811 = !DILocation(line: 560, column: 11, scope: !2810, inlinedAt: !2769)
!2812 = !DILocation(line: 563, column: 24, scope: !2810, inlinedAt: !2769)
!2813 = !DILocation(line: 568, column: 28, scope: !2796, inlinedAt: !2769)
!2814 = !DILocation(line: 566, column: 18, scope: !2803, inlinedAt: !2769)
!2815 = !DILocation(line: 567, column: 7, scope: !2803, inlinedAt: !2769)
!2816 = !DILocation(line: 568, column: 18, scope: !2796, inlinedAt: !2769)
!2817 = !DILocation(line: 568, column: 15, scope: !2796, inlinedAt: !2769)
!2818 = !DILocation(line: 80, column: 32, scope: !635, inlinedAt: !2798)
!2819 = !DILocation(line: 80, column: 40, scope: !635, inlinedAt: !2798)
!2820 = !DILocation(line: 81, column: 13, scope: !644, inlinedAt: !2798)
!2821 = !DILocation(line: 81, column: 19, scope: !644, inlinedAt: !2798)
!2822 = !DILocation(line: 81, column: 7, scope: !635, inlinedAt: !2798)
!2823 = !DILocation(line: 168, column: 23, scope: !1814, inlinedAt: !2824)
!2824 = distinct !DILocation(line: 570, column: 3, scope: !2763, inlinedAt: !2769)
!2825 = !DILocation(line: 167, column: 40, scope: !1814, inlinedAt: !2824)
!2826 = !DILocation(line: 167, column: 48, scope: !1814, inlinedAt: !2824)
!2827 = !DILocation(line: 168, column: 14, scope: !1814, inlinedAt: !2824)
!2828 = !DILocation(line: 169, column: 17, scope: !1814, inlinedAt: !2824)
!2829 = !DILocation(line: 169, column: 15, scope: !1814, inlinedAt: !2824)
!2830 = !DILocation(line: 170, column: 3, scope: !1826, inlinedAt: !2824)
!2831 = !DILocation(line: 171, column: 5, scope: !1828, inlinedAt: !2824)
!2832 = !DILocation(line: 171, column: 40, scope: !1828, inlinedAt: !2824)
!2833 = !DILocation(line: 171, column: 48, scope: !1828, inlinedAt: !2824)
!2834 = !DILocation(line: 170, column: 22, scope: !1829, inlinedAt: !2824)
!2835 = distinct !{!2835, !1928}
!2836 = !DILocation(line: 571, column: 18, scope: !2763, inlinedAt: !2769)
!2837 = !DILocation(line: 571, column: 6, scope: !2763, inlinedAt: !2769)
!2838 = !DILocation(line: 571, column: 16, scope: !2763, inlinedAt: !2769)
!2839 = !{!591, !575, i64 113}
!2840 = !DILocation(line: 572, column: 24, scope: !2763, inlinedAt: !2769)
!2841 = !DILocation(line: 572, column: 3, scope: !2763, inlinedAt: !2769)
!2842 = !DILocation(line: 94, column: 34, scope: !1020, inlinedAt: !2843)
!2843 = distinct !DILocation(line: 587, column: 3, scope: !2722)
!2844 = !DILocation(line: 94, column: 42, scope: !1020, inlinedAt: !2843)
!2845 = !DILocation(line: 89, column: 30, scope: !664, inlinedAt: !2846)
!2846 = distinct !DILocation(line: 95, column: 3, scope: !1020, inlinedAt: !2843)
!2847 = !DILocation(line: 89, column: 38, scope: !664, inlinedAt: !2846)
!2848 = !DILocation(line: 90, column: 13, scope: !663, inlinedAt: !2846)
!2849 = !DILocation(line: 90, column: 19, scope: !663, inlinedAt: !2846)
!2850 = !DILocation(line: 0, scope: !2722)
!2851 = !DILocation(line: 90, column: 7, scope: !664, inlinedAt: !2846)
!2852 = !DILocation(line: 65, column: 39, scope: !677, inlinedAt: !2853)
!2853 = distinct !DILocation(line: 91, column: 5, scope: !663, inlinedAt: !2846)
!2854 = !DILocation(line: 65, column: 47, scope: !677, inlinedAt: !2853)
!2855 = !DILocation(line: 67, column: 28, scope: !677, inlinedAt: !2853)
!2856 = !DILocation(line: 67, column: 51, scope: !677, inlinedAt: !2853)
!2857 = !DILocation(line: 67, column: 7, scope: !677, inlinedAt: !2853)
!2858 = !DILocation(line: 66, column: 3, scope: !677, inlinedAt: !2853)
!2859 = !DILocation(line: 91, column: 5, scope: !663, inlinedAt: !2846)
!2860 = !DILocation(line: 96, column: 3, scope: !1020, inlinedAt: !2843)
!2861 = !DILocation(line: 1325, column: 30, scope: !594, inlinedAt: !2862)
!2862 = distinct !DILocation(line: 588, column: 3, scope: !2722)
!2863 = !DILocation(line: 1327, column: 7, scope: !594, inlinedAt: !2862)
!2864 = !DILocation(line: 276, column: 35, scope: !605, inlinedAt: !2865)
!2865 = distinct !DILocation(line: 1328, column: 3, scope: !594, inlinedAt: !2862)
!2866 = !DILocation(line: 277, column: 13, scope: !610, inlinedAt: !2865)
!2867 = !DILocation(line: 277, column: 16, scope: !610, inlinedAt: !2865)
!2868 = !DILocation(line: 277, column: 7, scope: !610, inlinedAt: !2865)
!2869 = !DILocation(line: 277, column: 24, scope: !610, inlinedAt: !2865)
!2870 = !DILocation(line: 277, column: 7, scope: !605, inlinedAt: !2865)
!2871 = !DILocation(line: 278, column: 2, scope: !610, inlinedAt: !2865)
!2872 = !DILocation(line: 1329, column: 41, scope: !594, inlinedAt: !2862)
!2873 = !DILocation(line: 871, column: 30, scope: !625, inlinedAt: !2874)
!2874 = distinct !DILocation(line: 1329, column: 22, scope: !594, inlinedAt: !2862)
!2875 = !DILocation(line: 872, column: 3, scope: !625, inlinedAt: !2874)
!2876 = !DILocation(line: 1330, column: 14, scope: !633, inlinedAt: !2862)
!2877 = !DILocation(line: 80, column: 32, scope: !635, inlinedAt: !2878)
!2878 = distinct !DILocation(line: 1331, column: 5, scope: !633, inlinedAt: !2862)
!2879 = !DILocation(line: 80, column: 40, scope: !635, inlinedAt: !2878)
!2880 = !DILocation(line: 81, column: 13, scope: !644, inlinedAt: !2878)
!2881 = !DILocation(line: 81, column: 19, scope: !644, inlinedAt: !2878)
!2882 = !DILocation(line: 81, column: 7, scope: !635, inlinedAt: !2878)
!2883 = !DILocation(line: 82, column: 5, scope: !648, inlinedAt: !2878)
!2884 = !DILocation(line: 83, column: 5, scope: !648, inlinedAt: !2878)
!2885 = !DILocation(line: 1334, column: 27, scope: !633, inlinedAt: !2862)
!2886 = !DILocation(line: 1334, column: 31, scope: !633, inlinedAt: !2862)
!2887 = !DILocation(line: 1334, column: 23, scope: !633, inlinedAt: !2862)
!2888 = !DILocation(line: 1334, column: 13, scope: !633, inlinedAt: !2862)
!2889 = !DILocation(line: 1334, column: 21, scope: !633, inlinedAt: !2862)
!2890 = !DILocation(line: 1329, column: 11, scope: !594, inlinedAt: !2862)
!2891 = !DILocation(line: 1329, column: 18, scope: !594, inlinedAt: !2862)
!2892 = !DILocation(line: 1336, column: 3, scope: !594, inlinedAt: !2862)
!2893 = !DILocation(line: 589, column: 35, scope: !2722)
!2894 = !DILocation(line: 589, column: 10, scope: !2722)
!2895 = !DILocation(line: 589, column: 13, scope: !2722)
!2896 = !DILocation(line: 589, column: 29, scope: !2722)
!2897 = !{!591, !574, i64 100}
!2898 = !DILocation(line: 590, column: 3, scope: !2722)
!2899 = !DILocation(line: 591, column: 3, scope: !2722)
!2900 = !DILocalVariable(name: "ls", arg: 1, scope: !2901, file: !3, line: 310, type: !597)
!2901 = distinct !DISubprogram(name: "pushclosure", scope: !3, file: !3, line: 310, type: !2902, isLocal: true, isDefinition: true, scopeLine: 310, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2904)
!2902 = !DISubroutineType(types: !2903)
!2903 = !{null, !597, !694, !967}
!2904 = !{!2900, !2905, !2906, !2907, !2908, !2909, !2910, !2911}
!2905 = !DILocalVariable(name: "func", arg: 2, scope: !2901, file: !3, line: 310, type: !694)
!2906 = !DILocalVariable(name: "v", arg: 3, scope: !2901, file: !3, line: 310, type: !967)
!2907 = !DILocalVariable(name: "fs", scope: !2901, file: !3, line: 311, type: !694)
!2908 = !DILocalVariable(name: "f", scope: !2901, file: !3, line: 312, type: !459)
!2909 = !DILocalVariable(name: "oldsize", scope: !2901, file: !3, line: 313, type: !203)
!2910 = !DILocalVariable(name: "i", scope: !2901, file: !3, line: 314, type: !203)
!2911 = !DILocalVariable(name: "o", scope: !2912, file: !3, line: 322, type: !2915)
!2912 = distinct !DILexicalBlock(scope: !2913, file: !3, line: 321, column: 35)
!2913 = distinct !DILexicalBlock(scope: !2914, file: !3, line: 321, column: 3)
!2914 = distinct !DILexicalBlock(scope: !2901, file: !3, line: 321, column: 3)
!2915 = !DIDerivedType(tag: DW_TAG_typedef, name: "OpCode", file: !84, line: 208, baseType: !83)
!2916 = !DILocation(line: 310, column: 36, scope: !2901, inlinedAt: !2917)
!2917 = distinct !DILocation(line: 592, column: 3, scope: !2722)
!2918 = !DILocation(line: 310, column: 51, scope: !2901, inlinedAt: !2917)
!2919 = !DILocation(line: 310, column: 66, scope: !2901, inlinedAt: !2917)
!2920 = !DILocation(line: 311, column: 23, scope: !2901, inlinedAt: !2917)
!2921 = !DILocation(line: 311, column: 14, scope: !2901, inlinedAt: !2917)
!2922 = !DILocation(line: 312, column: 18, scope: !2901, inlinedAt: !2917)
!2923 = !DILocation(line: 312, column: 10, scope: !2901, inlinedAt: !2917)
!2924 = !DILocation(line: 313, column: 20, scope: !2901, inlinedAt: !2917)
!2925 = !DILocation(line: 313, column: 7, scope: !2901, inlinedAt: !2917)
!2926 = !DILocation(line: 315, column: 3, scope: !2927, inlinedAt: !2917)
!2927 = distinct !DILexicalBlock(scope: !2901, file: !3, line: 315, column: 3)
!2928 = !DILocation(line: 315, column: 3, scope: !2901, inlinedAt: !2917)
!2929 = !DILocation(line: 318, column: 6, scope: !2901, inlinedAt: !2917)
!2930 = !DILocation(line: 317, column: 23, scope: !2901, inlinedAt: !2917)
!2931 = !DILocation(line: 317, column: 18, scope: !2901, inlinedAt: !2917)
!2932 = !DILocation(line: 317, column: 3, scope: !2901, inlinedAt: !2917)
!2933 = !DILocation(line: 317, column: 42, scope: !2901, inlinedAt: !2917)
!2934 = !DILocation(line: 317, column: 30, scope: !2901, inlinedAt: !2917)
!2935 = !DILocation(line: 317, column: 46, scope: !2901, inlinedAt: !2917)
!2936 = distinct !{!2936, !2937, !2938}
!2937 = !DILocation(line: 317, column: 3, scope: !2901)
!2938 = !DILocation(line: 317, column: 48, scope: !2901)
!2939 = !DILocation(line: 317, column: 33, scope: !2901, inlinedAt: !2917)
!2940 = distinct !{!2940, !1928}
!2941 = !DILocation(line: 318, column: 26, scope: !2901, inlinedAt: !2917)
!2942 = !DILocation(line: 318, column: 14, scope: !2901, inlinedAt: !2917)
!2943 = !DILocation(line: 318, column: 3, scope: !2901, inlinedAt: !2917)
!2944 = !DILocation(line: 318, column: 18, scope: !2901, inlinedAt: !2917)
!2945 = !DILocation(line: 319, column: 3, scope: !2946, inlinedAt: !2917)
!2946 = distinct !DILexicalBlock(scope: !2947, file: !3, line: 319, column: 3)
!2947 = distinct !DILexicalBlock(scope: !2901, file: !3, line: 319, column: 3)
!2948 = !DILocation(line: 319, column: 3, scope: !2947, inlinedAt: !2917)
!2949 = !DILocation(line: 320, column: 63, scope: !2901, inlinedAt: !2917)
!2950 = !DILocation(line: 320, column: 65, scope: !2901, inlinedAt: !2917)
!2951 = !DILocation(line: 320, column: 27, scope: !2901, inlinedAt: !2917)
!2952 = !DILocation(line: 126, column: 32, scope: !1792, inlinedAt: !2953)
!2953 = distinct !DILocation(line: 320, column: 3, scope: !2901, inlinedAt: !2917)
!2954 = !DILocation(line: 126, column: 43, scope: !1792, inlinedAt: !2953)
!2955 = !DILocation(line: 126, column: 50, scope: !1792, inlinedAt: !2953)
!2956 = !DILocation(line: 127, column: 13, scope: !1792, inlinedAt: !2953)
!2957 = !DILocation(line: 127, column: 15, scope: !1792, inlinedAt: !2953)
!2958 = !DILocation(line: 127, column: 6, scope: !1792, inlinedAt: !2953)
!2959 = !DILocation(line: 127, column: 8, scope: !1792, inlinedAt: !2953)
!2960 = !DILocation(line: 128, column: 6, scope: !1792, inlinedAt: !2953)
!2961 = !DILocation(line: 128, column: 8, scope: !1792, inlinedAt: !2953)
!2962 = !DILocation(line: 129, column: 6, scope: !1792, inlinedAt: !2953)
!2963 = !DILocation(line: 129, column: 10, scope: !1792, inlinedAt: !2953)
!2964 = !DILocation(line: 129, column: 15, scope: !1792, inlinedAt: !2953)
!2965 = !DILocation(line: 314, column: 7, scope: !2901, inlinedAt: !2917)
!2966 = !DILocation(line: 321, column: 21, scope: !2913, inlinedAt: !2917)
!2967 = !DILocation(line: 321, column: 24, scope: !2913, inlinedAt: !2917)
!2968 = !DILocation(line: 321, column: 14, scope: !2913, inlinedAt: !2917)
!2969 = !DILocation(line: 321, column: 3, scope: !2914, inlinedAt: !2917)
!2970 = !DILocation(line: 322, column: 35, scope: !2912, inlinedAt: !2917)
!2971 = !{!2972, !575, i64 0}
!2972 = !{!"upvaldesc", !575, i64 0, !575, i64 1}
!2973 = !DILocation(line: 322, column: 37, scope: !2912, inlinedAt: !2917)
!2974 = !DILocation(line: 322, column: 16, scope: !2912, inlinedAt: !2917)
!2975 = !DILocation(line: 322, column: 12, scope: !2912, inlinedAt: !2917)
!2976 = !DILocation(line: 323, column: 46, scope: !2912, inlinedAt: !2917)
!2977 = !{!2972, !575, i64 1}
!2978 = !DILocation(line: 323, column: 28, scope: !2912, inlinedAt: !2917)
!2979 = !DILocation(line: 323, column: 5, scope: !2912, inlinedAt: !2917)
!2980 = !DILocation(line: 321, column: 31, scope: !2913, inlinedAt: !2917)
!2981 = distinct !{!2981, !2982, !2983}
!2982 = !DILocation(line: 321, column: 3, scope: !2914)
!2983 = !DILocation(line: 324, column: 3, scope: !2914)
!2984 = !DILocation(line: 593, column: 1, scope: !2722)
!2985 = distinct !DISubprogram(name: "primaryexp", scope: !3, file: !3, line: 690, type: !965, isLocal: true, isDefinition: true, scopeLine: 690, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2986)
!2986 = !{!2987, !2988, !2989, !2990, !2996}
!2987 = !DILocalVariable(name: "ls", arg: 1, scope: !2985, file: !3, line: 690, type: !597)
!2988 = !DILocalVariable(name: "v", arg: 2, scope: !2985, file: !3, line: 690, type: !967)
!2989 = !DILocalVariable(name: "fs", scope: !2985, file: !3, line: 693, type: !694)
!2990 = !DILocalVariable(name: "key", scope: !2991, file: !3, line: 702, type: !943)
!2991 = distinct !DILexicalBlock(scope: !2992, file: !3, line: 701, column: 17)
!2992 = distinct !DILexicalBlock(scope: !2993, file: !3, line: 696, column: 26)
!2993 = distinct !DILexicalBlock(scope: !2994, file: !3, line: 695, column: 12)
!2994 = distinct !DILexicalBlock(scope: !2995, file: !3, line: 695, column: 3)
!2995 = distinct !DILexicalBlock(scope: !2985, file: !3, line: 695, column: 3)
!2996 = !DILocalVariable(name: "key", scope: !2997, file: !3, line: 709, type: !943)
!2997 = distinct !DILexicalBlock(scope: !2992, file: !3, line: 708, column: 17)
!2998 = !DILocation(line: 690, column: 35, scope: !2985)
!2999 = !DILocation(line: 690, column: 48, scope: !2985)
!3000 = !DILocation(line: 693, column: 23, scope: !2985)
!3001 = !DILocation(line: 693, column: 14, scope: !2985)
!3002 = !DILocalVariable(name: "ls", arg: 1, scope: !3003, file: !3, line: 667, type: !597)
!3003 = distinct !DISubprogram(name: "prefixexp", scope: !3, file: !3, line: 667, type: !965, isLocal: true, isDefinition: true, scopeLine: 667, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3004)
!3004 = !{!3002, !3005, !3006}
!3005 = !DILocalVariable(name: "v", arg: 2, scope: !3003, file: !3, line: 667, type: !967)
!3006 = !DILocalVariable(name: "line", scope: !3007, file: !3, line: 671, type: !203)
!3007 = distinct !DILexicalBlock(scope: !3008, file: !3, line: 670, column: 15)
!3008 = distinct !DILexicalBlock(scope: !3003, file: !3, line: 669, column: 24)
!3009 = !DILocation(line: 667, column: 34, scope: !3003, inlinedAt: !3010)
!3010 = distinct !DILocation(line: 694, column: 3, scope: !2985)
!3011 = !DILocation(line: 667, column: 47, scope: !3003, inlinedAt: !3010)
!3012 = !DILocation(line: 669, column: 17, scope: !3003, inlinedAt: !3010)
!3013 = !DILocation(line: 669, column: 3, scope: !3003, inlinedAt: !3010)
!3014 = !DILocation(line: 671, column: 22, scope: !3007, inlinedAt: !3010)
!3015 = !DILocation(line: 671, column: 11, scope: !3007, inlinedAt: !3010)
!3016 = !DILocation(line: 672, column: 7, scope: !3007, inlinedAt: !3010)
!3017 = !DILocation(line: 856, column: 29, scope: !964, inlinedAt: !3018)
!3018 = distinct !DILocation(line: 673, column: 7, scope: !3007, inlinedAt: !3010)
!3019 = !DILocation(line: 856, column: 42, scope: !964, inlinedAt: !3018)
!3020 = !DILocation(line: 857, column: 3, scope: !964, inlinedAt: !3018)
!3021 = !DILocation(line: 674, column: 7, scope: !3007, inlinedAt: !3010)
!3022 = !DILocation(line: 675, column: 30, scope: !3007, inlinedAt: !3010)
!3023 = !DILocation(line: 675, column: 7, scope: !3007, inlinedAt: !3010)
!3024 = !DILocation(line: 120, column: 14, scope: !1123, inlinedAt: !3025)
!3025 = distinct !DILocation(line: 249, column: 22, scope: !1687, inlinedAt: !3026)
!3026 = distinct !DILocation(line: 679, column: 7, scope: !3027, inlinedAt: !3010)
!3027 = distinct !DILexicalBlock(scope: !3008, file: !3, line: 678, column: 19)
!3028 = !DILocation(line: 120, column: 22, scope: !1123, inlinedAt: !3025)
!3029 = !DILocation(line: 118, column: 12, scope: !1123, inlinedAt: !3025)
!3030 = !DILocation(line: 121, column: 3, scope: !1123, inlinedAt: !3025)
!3031 = !DILocation(line: 249, column: 12, scope: !1687, inlinedAt: !3026)
!3032 = !DILocation(line: 250, column: 23, scope: !1687, inlinedAt: !3026)
!3033 = !DILocation(line: 250, column: 14, scope: !1687, inlinedAt: !3026)
!3034 = !DILocation(line: 251, column: 7, scope: !1719, inlinedAt: !3026)
!3035 = !DILocation(line: 251, column: 41, scope: !1719, inlinedAt: !3026)
!3036 = !DILocation(line: 251, column: 7, scope: !1687, inlinedAt: !3026)
!3037 = !DILocation(line: 252, column: 21, scope: !1719, inlinedAt: !3026)
!3038 = !DILocation(line: 252, column: 10, scope: !1719, inlinedAt: !3026)
!3039 = !DILocation(line: 252, column: 14, scope: !1719, inlinedAt: !3026)
!3040 = !DILocation(line: 252, column: 19, scope: !1719, inlinedAt: !3026)
!3041 = !DILocation(line: 252, column: 5, scope: !1719, inlinedAt: !3026)
!3042 = !DILocation(line: 683, column: 7, scope: !3043, inlinedAt: !3010)
!3043 = distinct !DILexicalBlock(scope: !3008, file: !3, line: 682, column: 14)
!3044 = !DILocation(line: 684, column: 7, scope: !3043, inlinedAt: !3010)
!3045 = !DILocation(line: 695, column: 3, scope: !2985)
!3046 = !DILocation(line: 696, column: 19, scope: !2993)
!3047 = !DILocation(line: 696, column: 5, scope: !2993)
!3048 = !DILocation(line: 698, column: 9, scope: !3049)
!3049 = distinct !DILexicalBlock(scope: !2992, file: !3, line: 697, column: 17)
!3050 = !DILocation(line: 699, column: 9, scope: !3049)
!3051 = !DILocation(line: 702, column: 9, scope: !2991)
!3052 = !DILocation(line: 703, column: 9, scope: !2991)
!3053 = !DILocation(line: 702, column: 17, scope: !2991)
!3054 = !DILocation(line: 704, column: 9, scope: !2991)
!3055 = !DILocation(line: 705, column: 9, scope: !2991)
!3056 = !DILocation(line: 707, column: 7, scope: !2992)
!3057 = !DILocation(line: 709, column: 9, scope: !2997)
!3058 = !DILocation(line: 710, column: 9, scope: !2997)
!3059 = !DILocation(line: 709, column: 17, scope: !2997)
!3060 = !DILocalVariable(name: "ls", arg: 1, scope: !3061, file: !3, line: 138, type: !597)
!3061 = distinct !DISubprogram(name: "checkname", scope: !3, file: !3, line: 138, type: !965, isLocal: true, isDefinition: true, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3062)
!3062 = !{!3060, !3063}
!3063 = !DILocalVariable(name: "e", arg: 2, scope: !3061, file: !3, line: 138, type: !967)
!3064 = !DILocation(line: 138, column: 33, scope: !3061, inlinedAt: !3065)
!3065 = distinct !DILocation(line: 711, column: 9, scope: !2997)
!3066 = !DILocation(line: 138, column: 46, scope: !3061, inlinedAt: !3065)
!3067 = !DILocation(line: 117, column: 42, scope: !1123, inlinedAt: !3068)
!3068 = distinct !DILocation(line: 139, column: 21, scope: !3061, inlinedAt: !3065)
!3069 = !DILocation(line: 89, column: 30, scope: !664, inlinedAt: !3070)
!3070 = distinct !DILocation(line: 119, column: 3, scope: !1123, inlinedAt: !3068)
!3071 = !DILocation(line: 89, column: 38, scope: !664, inlinedAt: !3070)
!3072 = !DILocation(line: 90, column: 13, scope: !663, inlinedAt: !3070)
!3073 = !DILocation(line: 90, column: 19, scope: !663, inlinedAt: !3070)
!3074 = !DILocation(line: 90, column: 7, scope: !664, inlinedAt: !3070)
!3075 = !DILocation(line: 65, column: 39, scope: !677, inlinedAt: !3076)
!3076 = distinct !DILocation(line: 91, column: 5, scope: !663, inlinedAt: !3070)
!3077 = !DILocation(line: 65, column: 47, scope: !677, inlinedAt: !3076)
!3078 = !DILocation(line: 67, column: 28, scope: !677, inlinedAt: !3076)
!3079 = !DILocation(line: 67, column: 51, scope: !677, inlinedAt: !3076)
!3080 = !DILocation(line: 67, column: 7, scope: !677, inlinedAt: !3076)
!3081 = !DILocation(line: 66, column: 3, scope: !677, inlinedAt: !3076)
!3082 = !DILocation(line: 91, column: 5, scope: !663, inlinedAt: !3070)
!3083 = !DILocation(line: 120, column: 22, scope: !1123, inlinedAt: !3068)
!3084 = !DILocation(line: 118, column: 12, scope: !1123, inlinedAt: !3068)
!3085 = !DILocation(line: 121, column: 3, scope: !1123, inlinedAt: !3068)
!3086 = !DILocation(line: 133, column: 35, scope: !2318, inlinedAt: !3087)
!3087 = distinct !DILocation(line: 139, column: 3, scope: !3061, inlinedAt: !3065)
!3088 = !DILocation(line: 133, column: 48, scope: !2318, inlinedAt: !3087)
!3089 = !DILocation(line: 133, column: 60, scope: !2318, inlinedAt: !3087)
!3090 = !DILocation(line: 134, column: 36, scope: !2318, inlinedAt: !3087)
!3091 = !DILocation(line: 134, column: 19, scope: !2318, inlinedAt: !3087)
!3092 = !DILocation(line: 126, column: 32, scope: !1792, inlinedAt: !3093)
!3093 = distinct !DILocation(line: 134, column: 3, scope: !2318, inlinedAt: !3087)
!3094 = !DILocation(line: 126, column: 43, scope: !1792, inlinedAt: !3093)
!3095 = !DILocation(line: 126, column: 50, scope: !1792, inlinedAt: !3093)
!3096 = !DILocation(line: 127, column: 15, scope: !1792, inlinedAt: !3093)
!3097 = !DILocation(line: 127, column: 8, scope: !1792, inlinedAt: !3093)
!3098 = !DILocation(line: 128, column: 8, scope: !1792, inlinedAt: !3093)
!3099 = !DILocation(line: 129, column: 15, scope: !1792, inlinedAt: !3093)
!3100 = !DILocation(line: 712, column: 9, scope: !2997)
!3101 = !DILocation(line: 713, column: 9, scope: !2997)
!3102 = !DILocation(line: 715, column: 7, scope: !2992)
!3103 = !DILocation(line: 717, column: 9, scope: !3104)
!3104 = distinct !DILexicalBlock(scope: !2992, file: !3, line: 716, column: 43)
!3105 = !DILocation(line: 718, column: 9, scope: !3104)
!3106 = !DILocation(line: 719, column: 9, scope: !3104)
!3107 = distinct !{!3107, !3108, !3109}
!3108 = !DILocation(line: 695, column: 3, scope: !2995)
!3109 = !DILocation(line: 723, column: 3, scope: !2995)
!3110 = !DILocation(line: 724, column: 1, scope: !2985)
!3111 = distinct !DISubprogram(name: "recfield", scope: !3, file: !3, line: 443, type: !2606, isLocal: true, isDefinition: true, scopeLine: 443, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3112)
!3112 = !{!3113, !3114, !3115, !3116, !3117, !3118, !3119}
!3113 = !DILocalVariable(name: "ls", arg: 1, scope: !3111, file: !3, line: 443, type: !597)
!3114 = !DILocalVariable(name: "cc", arg: 2, scope: !3111, file: !3, line: 443, type: !2569)
!3115 = !DILocalVariable(name: "fs", scope: !3111, file: !3, line: 445, type: !694)
!3116 = !DILocalVariable(name: "reg", scope: !3111, file: !3, line: 446, type: !203)
!3117 = !DILocalVariable(name: "key", scope: !3111, file: !3, line: 447, type: !943)
!3118 = !DILocalVariable(name: "val", scope: !3111, file: !3, line: 447, type: !943)
!3119 = !DILocalVariable(name: "rkkey", scope: !3111, file: !3, line: 448, type: !203)
!3120 = !DILocation(line: 443, column: 33, scope: !3111)
!3121 = !DILocation(line: 443, column: 57, scope: !3111)
!3122 = !DILocation(line: 445, column: 23, scope: !3111)
!3123 = !DILocation(line: 445, column: 14, scope: !3111)
!3124 = !DILocation(line: 446, column: 21, scope: !3111)
!3125 = !DILocation(line: 446, column: 7, scope: !3111)
!3126 = !DILocation(line: 447, column: 3, scope: !3111)
!3127 = !DILocation(line: 449, column: 13, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !3111, file: !3, line: 449, column: 7)
!3129 = !DILocation(line: 449, column: 19, scope: !3128)
!3130 = !DILocation(line: 449, column: 7, scope: !3111)
!3131 = !DILocation(line: 450, column: 5, scope: !3132)
!3132 = distinct !DILexicalBlock(scope: !3133, file: !3, line: 450, column: 5)
!3133 = distinct !DILexicalBlock(scope: !3128, file: !3, line: 449, column: 31)
!3134 = !DILocation(line: 450, column: 5, scope: !3133)
!3135 = !DILocation(line: 71, column: 36, scope: !2621, inlinedAt: !3136)
!3136 = distinct !DILocation(line: 450, column: 5, scope: !3132)
!3137 = !DILocation(line: 71, column: 44, scope: !2621, inlinedAt: !3136)
!3138 = !DILocation(line: 71, column: 63, scope: !2621, inlinedAt: !3136)
!3139 = !DILocation(line: 72, column: 26, scope: !2621, inlinedAt: !3136)
!3140 = !DILocation(line: 72, column: 29, scope: !2621, inlinedAt: !3136)
!3141 = !DILocation(line: 72, column: 41, scope: !2621, inlinedAt: !3136)
!3142 = !DILocation(line: 0, scope: !2621, inlinedAt: !3136)
!3143 = !DILocation(line: 72, column: 21, scope: !2621, inlinedAt: !3136)
!3144 = !DILocation(line: 73, column: 5, scope: !2621, inlinedAt: !3136)
!3145 = !DILocation(line: 74, column: 5, scope: !2621, inlinedAt: !3136)
!3146 = !DILocation(line: 72, column: 15, scope: !2621, inlinedAt: !3136)
!3147 = !DILocation(line: 76, column: 21, scope: !2621, inlinedAt: !3136)
!3148 = !DILocation(line: 76, column: 3, scope: !2621, inlinedAt: !3136)
!3149 = !DILocation(line: 90, column: 13, scope: !663, inlinedAt: !3150)
!3150 = distinct !DILocation(line: 119, column: 3, scope: !1123, inlinedAt: !3151)
!3151 = distinct !DILocation(line: 139, column: 21, scope: !3061, inlinedAt: !3152)
!3152 = distinct !DILocation(line: 451, column: 5, scope: !3133)
!3153 = !DILocation(line: 447, column: 11, scope: !3111)
!3154 = !DILocation(line: 138, column: 33, scope: !3061, inlinedAt: !3152)
!3155 = !DILocation(line: 138, column: 46, scope: !3061, inlinedAt: !3152)
!3156 = !DILocation(line: 117, column: 42, scope: !1123, inlinedAt: !3151)
!3157 = !DILocation(line: 89, column: 30, scope: !664, inlinedAt: !3150)
!3158 = !DILocation(line: 89, column: 38, scope: !664, inlinedAt: !3150)
!3159 = !DILocation(line: 90, column: 7, scope: !664, inlinedAt: !3150)
!3160 = !DILocation(line: 65, column: 39, scope: !677, inlinedAt: !3161)
!3161 = distinct !DILocation(line: 91, column: 5, scope: !663, inlinedAt: !3150)
!3162 = !DILocation(line: 65, column: 47, scope: !677, inlinedAt: !3161)
!3163 = !DILocation(line: 67, column: 28, scope: !677, inlinedAt: !3161)
!3164 = !DILocation(line: 67, column: 51, scope: !677, inlinedAt: !3161)
!3165 = !DILocation(line: 67, column: 7, scope: !677, inlinedAt: !3161)
!3166 = !DILocation(line: 66, column: 3, scope: !677, inlinedAt: !3161)
!3167 = !DILocation(line: 91, column: 5, scope: !663, inlinedAt: !3150)
!3168 = !DILocation(line: 120, column: 14, scope: !1123, inlinedAt: !3151)
!3169 = !DILocation(line: 120, column: 22, scope: !1123, inlinedAt: !3151)
!3170 = !DILocation(line: 118, column: 12, scope: !1123, inlinedAt: !3151)
!3171 = !DILocation(line: 121, column: 3, scope: !1123, inlinedAt: !3151)
!3172 = !DILocation(line: 133, column: 35, scope: !2318, inlinedAt: !3173)
!3173 = distinct !DILocation(line: 139, column: 3, scope: !3061, inlinedAt: !3152)
!3174 = !DILocation(line: 133, column: 48, scope: !2318, inlinedAt: !3173)
!3175 = !DILocation(line: 133, column: 60, scope: !2318, inlinedAt: !3173)
!3176 = !DILocation(line: 134, column: 36, scope: !2318, inlinedAt: !3173)
!3177 = !DILocation(line: 134, column: 19, scope: !2318, inlinedAt: !3173)
!3178 = !DILocation(line: 126, column: 32, scope: !1792, inlinedAt: !3179)
!3179 = distinct !DILocation(line: 134, column: 3, scope: !2318, inlinedAt: !3173)
!3180 = !DILocation(line: 126, column: 43, scope: !1792, inlinedAt: !3179)
!3181 = !DILocation(line: 126, column: 50, scope: !1792, inlinedAt: !3179)
!3182 = !DILocation(line: 127, column: 13, scope: !1792, inlinedAt: !3179)
!3183 = !DILocation(line: 127, column: 15, scope: !1792, inlinedAt: !3179)
!3184 = !DILocation(line: 127, column: 6, scope: !1792, inlinedAt: !3179)
!3185 = !DILocation(line: 127, column: 8, scope: !1792, inlinedAt: !3179)
!3186 = !DILocation(line: 128, column: 6, scope: !1792, inlinedAt: !3179)
!3187 = !DILocation(line: 128, column: 8, scope: !1792, inlinedAt: !3179)
!3188 = !DILocation(line: 129, column: 6, scope: !1792, inlinedAt: !3179)
!3189 = !DILocation(line: 129, column: 10, scope: !1792, inlinedAt: !3179)
!3190 = !DILocation(line: 129, column: 15, scope: !1792, inlinedAt: !3179)
!3191 = !DILocation(line: 452, column: 3, scope: !3133)
!3192 = !DILocation(line: 454, column: 5, scope: !3128)
!3193 = !DILocation(line: 455, column: 7, scope: !3111)
!3194 = !DILocation(line: 455, column: 9, scope: !3111)
!3195 = !DILocation(line: 94, column: 34, scope: !1020, inlinedAt: !3196)
!3196 = distinct !DILocation(line: 456, column: 3, scope: !3111)
!3197 = !DILocation(line: 94, column: 42, scope: !1020, inlinedAt: !3196)
!3198 = !DILocation(line: 89, column: 30, scope: !664, inlinedAt: !3199)
!3199 = distinct !DILocation(line: 95, column: 3, scope: !1020, inlinedAt: !3196)
!3200 = !DILocation(line: 89, column: 38, scope: !664, inlinedAt: !3199)
!3201 = !DILocation(line: 90, column: 13, scope: !663, inlinedAt: !3199)
!3202 = !DILocation(line: 90, column: 19, scope: !663, inlinedAt: !3199)
!3203 = !DILocation(line: 90, column: 7, scope: !664, inlinedAt: !3199)
!3204 = !DILocation(line: 65, column: 39, scope: !677, inlinedAt: !3205)
!3205 = distinct !DILocation(line: 91, column: 5, scope: !663, inlinedAt: !3199)
!3206 = !DILocation(line: 65, column: 47, scope: !677, inlinedAt: !3205)
!3207 = !DILocation(line: 67, column: 28, scope: !677, inlinedAt: !3205)
!3208 = !DILocation(line: 67, column: 51, scope: !677, inlinedAt: !3205)
!3209 = !DILocation(line: 67, column: 7, scope: !677, inlinedAt: !3205)
!3210 = !DILocation(line: 66, column: 3, scope: !677, inlinedAt: !3205)
!3211 = !DILocation(line: 91, column: 5, scope: !663, inlinedAt: !3199)
!3212 = !DILocation(line: 96, column: 3, scope: !1020, inlinedAt: !3196)
!3213 = !DILocation(line: 457, column: 11, scope: !3111)
!3214 = !DILocation(line: 448, column: 7, scope: !3111)
!3215 = !DILocation(line: 447, column: 16, scope: !3111)
!3216 = !DILocation(line: 856, column: 29, scope: !964, inlinedAt: !3217)
!3217 = distinct !DILocation(line: 458, column: 3, scope: !3111)
!3218 = !DILocation(line: 856, column: 42, scope: !964, inlinedAt: !3217)
!3219 = !DILocation(line: 857, column: 3, scope: !964, inlinedAt: !3217)
!3220 = !DILocation(line: 459, column: 37, scope: !3111)
!3221 = !DILocation(line: 459, column: 40, scope: !3111)
!3222 = !DILocation(line: 459, column: 44, scope: !3111)
!3223 = !DILocation(line: 459, column: 57, scope: !3111)
!3224 = !DILocation(line: 459, column: 3, scope: !3111)
!3225 = !DILocation(line: 460, column: 15, scope: !3111)
!3226 = !DILocation(line: 461, column: 1, scope: !3111)
!3227 = distinct !DISubprogram(name: "yindex", scope: !3, file: !3, line: 418, type: !965, isLocal: true, isDefinition: true, scopeLine: 418, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3228)
!3228 = !{!3229, !3230}
!3229 = !DILocalVariable(name: "ls", arg: 1, scope: !3227, file: !3, line: 418, type: !597)
!3230 = !DILocalVariable(name: "v", arg: 2, scope: !3227, file: !3, line: 418, type: !967)
!3231 = !DILocation(line: 418, column: 31, scope: !3227)
!3232 = !DILocation(line: 418, column: 44, scope: !3227)
!3233 = !DILocation(line: 420, column: 3, scope: !3227)
!3234 = !DILocation(line: 856, column: 29, scope: !964, inlinedAt: !3235)
!3235 = distinct !DILocation(line: 421, column: 3, scope: !3227)
!3236 = !DILocation(line: 856, column: 42, scope: !964, inlinedAt: !3235)
!3237 = !DILocation(line: 857, column: 3, scope: !964, inlinedAt: !3235)
!3238 = !DILocation(line: 422, column: 20, scope: !3227)
!3239 = !DILocation(line: 422, column: 3, scope: !3227)
!3240 = !DILocation(line: 94, column: 34, scope: !1020, inlinedAt: !3241)
!3241 = distinct !DILocation(line: 423, column: 3, scope: !3227)
!3242 = !DILocation(line: 94, column: 42, scope: !1020, inlinedAt: !3241)
!3243 = !DILocation(line: 89, column: 30, scope: !664, inlinedAt: !3244)
!3244 = distinct !DILocation(line: 95, column: 3, scope: !1020, inlinedAt: !3241)
!3245 = !DILocation(line: 89, column: 38, scope: !664, inlinedAt: !3244)
!3246 = !DILocation(line: 90, column: 13, scope: !663, inlinedAt: !3244)
!3247 = !DILocation(line: 90, column: 19, scope: !663, inlinedAt: !3244)
!3248 = !DILocation(line: 90, column: 7, scope: !664, inlinedAt: !3244)
!3249 = !DILocation(line: 65, column: 39, scope: !677, inlinedAt: !3250)
!3250 = distinct !DILocation(line: 91, column: 5, scope: !663, inlinedAt: !3244)
!3251 = !DILocation(line: 65, column: 47, scope: !677, inlinedAt: !3250)
!3252 = !DILocation(line: 67, column: 28, scope: !677, inlinedAt: !3250)
!3253 = !DILocation(line: 67, column: 51, scope: !677, inlinedAt: !3250)
!3254 = !DILocation(line: 67, column: 7, scope: !677, inlinedAt: !3250)
!3255 = !DILocation(line: 66, column: 3, scope: !677, inlinedAt: !3250)
!3256 = !DILocation(line: 91, column: 5, scope: !663, inlinedAt: !3244)
!3257 = !DILocation(line: 96, column: 3, scope: !1020, inlinedAt: !3241)
!3258 = !DILocation(line: 424, column: 1, scope: !3227)
!3259 = distinct !DISubprogram(name: "new_localvar", scope: !3, file: !3, line: 160, type: !1153, isLocal: true, isDefinition: true, scopeLine: 160, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3260)
!3260 = !{!3261, !3262, !3263, !3264}
!3261 = !DILocalVariable(name: "ls", arg: 1, scope: !3259, file: !3, line: 160, type: !597)
!3262 = !DILocalVariable(name: "name", arg: 2, scope: !3259, file: !3, line: 160, type: !332)
!3263 = !DILocalVariable(name: "n", arg: 3, scope: !3259, file: !3, line: 160, type: !203)
!3264 = !DILocalVariable(name: "fs", scope: !3259, file: !3, line: 161, type: !694)
!3265 = !DILocation(line: 160, column: 37, scope: !3259)
!3266 = !DILocation(line: 160, column: 50, scope: !3259)
!3267 = !DILocation(line: 160, column: 60, scope: !3259)
!3268 = !DILocation(line: 161, column: 23, scope: !3259)
!3269 = !DILocation(line: 161, column: 14, scope: !3259)
!3270 = !DILocation(line: 162, column: 3, scope: !3271)
!3271 = distinct !DILexicalBlock(scope: !3259, file: !3, line: 162, column: 3)
!3272 = !DILocation(line: 162, column: 3, scope: !3259)
!3273 = !DILocation(line: 71, column: 36, scope: !2621, inlinedAt: !3274)
!3274 = distinct !DILocation(line: 162, column: 3, scope: !3271)
!3275 = !DILocation(line: 71, column: 44, scope: !2621, inlinedAt: !3274)
!3276 = !DILocation(line: 71, column: 63, scope: !2621, inlinedAt: !3274)
!3277 = !DILocation(line: 72, column: 26, scope: !2621, inlinedAt: !3274)
!3278 = !DILocation(line: 72, column: 29, scope: !2621, inlinedAt: !3274)
!3279 = !DILocation(line: 72, column: 41, scope: !2621, inlinedAt: !3274)
!3280 = !DILocation(line: 0, scope: !2621, inlinedAt: !3274)
!3281 = !DILocation(line: 72, column: 21, scope: !2621, inlinedAt: !3274)
!3282 = !DILocation(line: 73, column: 5, scope: !2621, inlinedAt: !3274)
!3283 = !DILocation(line: 74, column: 5, scope: !2621, inlinedAt: !3274)
!3284 = !DILocation(line: 72, column: 15, scope: !2621, inlinedAt: !3274)
!3285 = !DILocation(line: 76, column: 21, scope: !2621, inlinedAt: !3274)
!3286 = !DILocation(line: 76, column: 3, scope: !2621, inlinedAt: !3274)
!3287 = !DILocation(line: 144, column: 23, scope: !3288, inlinedAt: !3297)
!3288 = distinct !DISubprogram(name: "registerlocalvar", scope: !3, file: !3, line: 143, type: !3289, isLocal: true, isDefinition: true, scopeLine: 143, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3291)
!3289 = !DISubroutineType(types: !3290)
!3290 = !{!203, !597, !332}
!3291 = !{!3292, !3293, !3294, !3295, !3296}
!3292 = !DILocalVariable(name: "ls", arg: 1, scope: !3288, file: !3, line: 143, type: !597)
!3293 = !DILocalVariable(name: "varname", arg: 2, scope: !3288, file: !3, line: 143, type: !332)
!3294 = !DILocalVariable(name: "fs", scope: !3288, file: !3, line: 144, type: !694)
!3295 = !DILocalVariable(name: "f", scope: !3288, file: !3, line: 145, type: !459)
!3296 = !DILocalVariable(name: "oldsize", scope: !3288, file: !3, line: 146, type: !203)
!3297 = distinct !DILocation(line: 163, column: 31, scope: !3259)
!3298 = !DILocation(line: 143, column: 40, scope: !3288, inlinedAt: !3297)
!3299 = !DILocation(line: 143, column: 53, scope: !3288, inlinedAt: !3297)
!3300 = !DILocation(line: 144, column: 14, scope: !3288, inlinedAt: !3297)
!3301 = !DILocation(line: 145, column: 18, scope: !3288, inlinedAt: !3297)
!3302 = !DILocation(line: 145, column: 10, scope: !3288, inlinedAt: !3297)
!3303 = !DILocation(line: 146, column: 20, scope: !3288, inlinedAt: !3297)
!3304 = !DILocation(line: 146, column: 7, scope: !3288, inlinedAt: !3297)
!3305 = !DILocation(line: 147, column: 3, scope: !3306, inlinedAt: !3297)
!3306 = distinct !DILexicalBlock(scope: !3288, file: !3, line: 147, column: 3)
!3307 = !DILocation(line: 147, column: 3, scope: !3288, inlinedAt: !3297)
!3308 = !DILocation(line: 0, scope: !3288, inlinedAt: !3297)
!3309 = !DILocation(line: 149, column: 3, scope: !3288, inlinedAt: !3297)
!3310 = !DILocation(line: 149, column: 23, scope: !3288, inlinedAt: !3297)
!3311 = !DILocation(line: 149, column: 18, scope: !3288, inlinedAt: !3297)
!3312 = !DILocation(line: 149, column: 54, scope: !3288, inlinedAt: !3297)
!3313 = !DILocation(line: 149, column: 58, scope: !3288, inlinedAt: !3297)
!3314 = !DILocation(line: 149, column: 66, scope: !3288, inlinedAt: !3297)
!3315 = !{!800, !578, i64 0}
!3316 = distinct !{!3316, !1928}
!3317 = distinct !{!3317, !3318, !3319}
!3318 = !DILocation(line: 149, column: 3, scope: !3288)
!3319 = !DILocation(line: 149, column: 68, scope: !3288)
!3320 = !DILocation(line: 150, column: 18, scope: !3288, inlinedAt: !3297)
!3321 = !DILocation(line: 150, column: 3, scope: !3288, inlinedAt: !3297)
!3322 = !DILocation(line: 150, column: 28, scope: !3288, inlinedAt: !3297)
!3323 = !DILocation(line: 150, column: 36, scope: !3288, inlinedAt: !3297)
!3324 = !DILocation(line: 151, column: 3, scope: !3325, inlinedAt: !3297)
!3325 = distinct !DILexicalBlock(scope: !3326, file: !3, line: 151, column: 3)
!3326 = distinct !DILexicalBlock(scope: !3288, file: !3, line: 151, column: 3)
!3327 = !DILocation(line: 151, column: 3, scope: !3326, inlinedAt: !3297)
!3328 = !DILocation(line: 152, column: 22, scope: !3288, inlinedAt: !3297)
!3329 = !DILocation(line: 163, column: 18, scope: !3259)
!3330 = !DILocation(line: 163, column: 14, scope: !3259)
!3331 = !DILocation(line: 163, column: 25, scope: !3259)
!3332 = !DILocation(line: 163, column: 3, scope: !3259)
!3333 = !DILocation(line: 163, column: 29, scope: !3259)
!3334 = !DILocation(line: 164, column: 1, scope: !3259)
!3335 = distinct !DISubprogram(name: "field", scope: !3, file: !3, line: 407, type: !965, isLocal: true, isDefinition: true, scopeLine: 407, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3336)
!3336 = !{!3337, !3338, !3339, !3340}
!3337 = !DILocalVariable(name: "ls", arg: 1, scope: !3335, file: !3, line: 407, type: !597)
!3338 = !DILocalVariable(name: "v", arg: 2, scope: !3335, file: !3, line: 407, type: !967)
!3339 = !DILocalVariable(name: "fs", scope: !3335, file: !3, line: 409, type: !694)
!3340 = !DILocalVariable(name: "key", scope: !3335, file: !3, line: 410, type: !943)
!3341 = !DILocation(line: 407, column: 30, scope: !3335)
!3342 = !DILocation(line: 407, column: 43, scope: !3335)
!3343 = !DILocation(line: 409, column: 23, scope: !3335)
!3344 = !DILocation(line: 409, column: 14, scope: !3335)
!3345 = !DILocation(line: 410, column: 3, scope: !3335)
!3346 = !DILocation(line: 411, column: 3, scope: !3335)
!3347 = !DILocation(line: 412, column: 3, scope: !3335)
!3348 = !DILocation(line: 410, column: 11, scope: !3335)
!3349 = !DILocation(line: 138, column: 33, scope: !3061, inlinedAt: !3350)
!3350 = distinct !DILocation(line: 413, column: 3, scope: !3335)
!3351 = !DILocation(line: 138, column: 46, scope: !3061, inlinedAt: !3350)
!3352 = !DILocation(line: 117, column: 42, scope: !1123, inlinedAt: !3353)
!3353 = distinct !DILocation(line: 139, column: 21, scope: !3061, inlinedAt: !3350)
!3354 = !DILocation(line: 89, column: 30, scope: !664, inlinedAt: !3355)
!3355 = distinct !DILocation(line: 119, column: 3, scope: !1123, inlinedAt: !3353)
!3356 = !DILocation(line: 89, column: 38, scope: !664, inlinedAt: !3355)
!3357 = !DILocation(line: 90, column: 13, scope: !663, inlinedAt: !3355)
!3358 = !DILocation(line: 90, column: 19, scope: !663, inlinedAt: !3355)
!3359 = !DILocation(line: 90, column: 7, scope: !664, inlinedAt: !3355)
!3360 = !DILocation(line: 65, column: 39, scope: !677, inlinedAt: !3361)
!3361 = distinct !DILocation(line: 91, column: 5, scope: !663, inlinedAt: !3355)
!3362 = !DILocation(line: 65, column: 47, scope: !677, inlinedAt: !3361)
!3363 = !DILocation(line: 67, column: 28, scope: !677, inlinedAt: !3361)
!3364 = !DILocation(line: 67, column: 51, scope: !677, inlinedAt: !3361)
!3365 = !DILocation(line: 67, column: 7, scope: !677, inlinedAt: !3361)
!3366 = !DILocation(line: 66, column: 3, scope: !677, inlinedAt: !3361)
!3367 = !DILocation(line: 91, column: 5, scope: !663, inlinedAt: !3355)
!3368 = !DILocation(line: 120, column: 14, scope: !1123, inlinedAt: !3353)
!3369 = !DILocation(line: 120, column: 22, scope: !1123, inlinedAt: !3353)
!3370 = !DILocation(line: 118, column: 12, scope: !1123, inlinedAt: !3353)
!3371 = !DILocation(line: 121, column: 3, scope: !1123, inlinedAt: !3353)
!3372 = !DILocation(line: 133, column: 35, scope: !2318, inlinedAt: !3373)
!3373 = distinct !DILocation(line: 139, column: 3, scope: !3061, inlinedAt: !3350)
!3374 = !DILocation(line: 133, column: 48, scope: !2318, inlinedAt: !3373)
!3375 = !DILocation(line: 133, column: 60, scope: !2318, inlinedAt: !3373)
!3376 = !DILocation(line: 134, column: 36, scope: !2318, inlinedAt: !3373)
!3377 = !DILocation(line: 134, column: 19, scope: !2318, inlinedAt: !3373)
!3378 = !DILocation(line: 126, column: 32, scope: !1792, inlinedAt: !3379)
!3379 = distinct !DILocation(line: 134, column: 3, scope: !2318, inlinedAt: !3373)
!3380 = !DILocation(line: 126, column: 43, scope: !1792, inlinedAt: !3379)
!3381 = !DILocation(line: 126, column: 50, scope: !1792, inlinedAt: !3379)
!3382 = !DILocation(line: 127, column: 13, scope: !1792, inlinedAt: !3379)
!3383 = !DILocation(line: 127, column: 15, scope: !1792, inlinedAt: !3379)
!3384 = !DILocation(line: 127, column: 6, scope: !1792, inlinedAt: !3379)
!3385 = !DILocation(line: 127, column: 8, scope: !1792, inlinedAt: !3379)
!3386 = !DILocation(line: 128, column: 6, scope: !1792, inlinedAt: !3379)
!3387 = !DILocation(line: 128, column: 8, scope: !1792, inlinedAt: !3379)
!3388 = !DILocation(line: 129, column: 6, scope: !1792, inlinedAt: !3379)
!3389 = !DILocation(line: 129, column: 10, scope: !1792, inlinedAt: !3379)
!3390 = !DILocation(line: 129, column: 15, scope: !1792, inlinedAt: !3379)
!3391 = !DILocation(line: 414, column: 3, scope: !3335)
!3392 = !DILocation(line: 415, column: 1, scope: !3335)
!3393 = distinct !DISubprogram(name: "funcargs", scope: !3, file: !3, line: 609, type: !965, isLocal: true, isDefinition: true, scopeLine: 609, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3394)
!3394 = !{!3395, !3396, !3397, !3398, !3399, !3400, !3401}
!3395 = !DILocalVariable(name: "ls", arg: 1, scope: !3393, file: !3, line: 609, type: !597)
!3396 = !DILocalVariable(name: "f", arg: 2, scope: !3393, file: !3, line: 609, type: !967)
!3397 = !DILocalVariable(name: "fs", scope: !3393, file: !3, line: 610, type: !694)
!3398 = !DILocalVariable(name: "args", scope: !3393, file: !3, line: 611, type: !943)
!3399 = !DILocalVariable(name: "base", scope: !3393, file: !3, line: 612, type: !203)
!3400 = !DILocalVariable(name: "nparams", scope: !3393, file: !3, line: 612, type: !203)
!3401 = !DILocalVariable(name: "line", scope: !3393, file: !3, line: 613, type: !203)
!3402 = !DILocation(line: 609, column: 33, scope: !3393)
!3403 = !DILocation(line: 609, column: 46, scope: !3393)
!3404 = !DILocation(line: 610, column: 23, scope: !3393)
!3405 = !DILocation(line: 610, column: 14, scope: !3393)
!3406 = !DILocation(line: 611, column: 3, scope: !3393)
!3407 = !DILocation(line: 613, column: 18, scope: !3393)
!3408 = !DILocation(line: 613, column: 7, scope: !3393)
!3409 = !DILocation(line: 614, column: 17, scope: !3393)
!3410 = !DILocation(line: 614, column: 3, scope: !3393)
!3411 = !DILocation(line: 616, column: 23, scope: !3412)
!3412 = distinct !DILexicalBlock(scope: !3413, file: !3, line: 616, column: 11)
!3413 = distinct !DILexicalBlock(scope: !3414, file: !3, line: 615, column: 15)
!3414 = distinct !DILexicalBlock(scope: !3393, file: !3, line: 614, column: 24)
!3415 = !{!573, !574, i64 8}
!3416 = !DILocation(line: 616, column: 16, scope: !3412)
!3417 = !DILocation(line: 616, column: 11, scope: !3413)
!3418 = !DILocation(line: 617, column: 9, scope: !3412)
!3419 = !DILocation(line: 618, column: 7, scope: !3413)
!3420 = !DILocation(line: 619, column: 17, scope: !3421)
!3421 = distinct !DILexicalBlock(scope: !3413, file: !3, line: 619, column: 11)
!3422 = !DILocation(line: 619, column: 23, scope: !3421)
!3423 = !DILocation(line: 619, column: 11, scope: !3413)
!3424 = !DILocation(line: 620, column: 14, scope: !3421)
!3425 = !DILocation(line: 620, column: 16, scope: !3421)
!3426 = !DILocation(line: 620, column: 9, scope: !3421)
!3427 = !DILocation(line: 611, column: 11, scope: !3393)
!3428 = !DILocation(line: 596, column: 32, scope: !1343, inlinedAt: !3429)
!3429 = distinct !DILocation(line: 622, column: 9, scope: !3430)
!3430 = distinct !DILexicalBlock(scope: !3421, file: !3, line: 621, column: 12)
!3431 = !DILocation(line: 596, column: 45, scope: !1343, inlinedAt: !3429)
!3432 = !DILocation(line: 598, column: 7, scope: !1343, inlinedAt: !3429)
!3433 = !DILocation(line: 856, column: 29, scope: !964, inlinedAt: !3434)
!3434 = distinct !DILocation(line: 599, column: 3, scope: !1343, inlinedAt: !3429)
!3435 = !DILocation(line: 856, column: 42, scope: !964, inlinedAt: !3434)
!3436 = !DILocation(line: 857, column: 3, scope: !964, inlinedAt: !3434)
!3437 = !DILocation(line: 80, column: 32, scope: !635, inlinedAt: !3438)
!3438 = distinct !DILocation(line: 600, column: 10, scope: !1343, inlinedAt: !3429)
!3439 = !DILocation(line: 80, column: 40, scope: !635, inlinedAt: !3438)
!3440 = !DILocation(line: 81, column: 13, scope: !644, inlinedAt: !3438)
!3441 = !DILocation(line: 81, column: 19, scope: !644, inlinedAt: !3438)
!3442 = !DILocation(line: 81, column: 7, scope: !635, inlinedAt: !3438)
!3443 = !DILocation(line: 82, column: 5, scope: !648, inlinedAt: !3438)
!3444 = !DILocation(line: 601, column: 26, scope: !1365, inlinedAt: !3429)
!3445 = !DILocation(line: 601, column: 5, scope: !1365, inlinedAt: !3429)
!3446 = !DILocation(line: 856, column: 29, scope: !964, inlinedAt: !3447)
!3447 = distinct !DILocation(line: 602, column: 5, scope: !1365, inlinedAt: !3429)
!3448 = !DILocation(line: 856, column: 42, scope: !964, inlinedAt: !3447)
!3449 = !DILocation(line: 857, column: 3, scope: !964, inlinedAt: !3447)
!3450 = !DILocation(line: 623, column: 9, scope: !3430)
!3451 = !DILocation(line: 625, column: 7, scope: !3413)
!3452 = !DILocation(line: 626, column: 7, scope: !3413)
!3453 = !DILocation(line: 629, column: 7, scope: !3454)
!3454 = distinct !DILexicalBlock(scope: !3414, file: !3, line: 628, column: 15)
!3455 = !DILocation(line: 630, column: 7, scope: !3454)
!3456 = !DILocation(line: 633, column: 35, scope: !3457)
!3457 = distinct !DILexicalBlock(scope: !3414, file: !3, line: 632, column: 21)
!3458 = !DILocation(line: 633, column: 43, scope: !3457)
!3459 = !DILocation(line: 133, column: 35, scope: !2318, inlinedAt: !3460)
!3460 = distinct !DILocation(line: 633, column: 7, scope: !3457)
!3461 = !DILocation(line: 133, column: 48, scope: !2318, inlinedAt: !3460)
!3462 = !DILocation(line: 133, column: 60, scope: !2318, inlinedAt: !3460)
!3463 = !DILocation(line: 134, column: 19, scope: !2318, inlinedAt: !3460)
!3464 = !DILocation(line: 126, column: 32, scope: !1792, inlinedAt: !3465)
!3465 = distinct !DILocation(line: 134, column: 3, scope: !2318, inlinedAt: !3460)
!3466 = !DILocation(line: 126, column: 43, scope: !1792, inlinedAt: !3465)
!3467 = !DILocation(line: 126, column: 50, scope: !1792, inlinedAt: !3465)
!3468 = !DILocation(line: 127, column: 13, scope: !1792, inlinedAt: !3465)
!3469 = !DILocation(line: 127, column: 15, scope: !1792, inlinedAt: !3465)
!3470 = !DILocation(line: 127, column: 6, scope: !1792, inlinedAt: !3465)
!3471 = !DILocation(line: 127, column: 8, scope: !1792, inlinedAt: !3465)
!3472 = !DILocation(line: 128, column: 6, scope: !1792, inlinedAt: !3465)
!3473 = !DILocation(line: 128, column: 8, scope: !1792, inlinedAt: !3465)
!3474 = !DILocation(line: 129, column: 6, scope: !1792, inlinedAt: !3465)
!3475 = !DILocation(line: 129, column: 10, scope: !1792, inlinedAt: !3465)
!3476 = !DILocation(line: 129, column: 15, scope: !1792, inlinedAt: !3465)
!3477 = !DILocation(line: 634, column: 7, scope: !3457)
!3478 = !DILocation(line: 635, column: 7, scope: !3457)
!3479 = !DILocation(line: 638, column: 7, scope: !3480)
!3480 = distinct !DILexicalBlock(scope: !3414, file: !3, line: 637, column: 14)
!3481 = !DILocation(line: 639, column: 7, scope: !3480)
!3482 = !DILocation(line: 643, column: 13, scope: !3393)
!3483 = !DILocation(line: 643, column: 17, scope: !3393)
!3484 = !DILocation(line: 612, column: 7, scope: !3393)
!3485 = !DILocation(line: 644, column: 7, scope: !3486)
!3486 = distinct !DILexicalBlock(scope: !3393, file: !3, line: 644, column: 7)
!3487 = !DILocation(line: 648, column: 7, scope: !3488)
!3488 = distinct !DILexicalBlock(scope: !3489, file: !3, line: 647, column: 9)
!3489 = distinct !DILexicalBlock(scope: !3486, file: !3, line: 646, column: 8)
!3490 = !DILocation(line: 649, column: 19, scope: !3489)
!3491 = !DILocation(line: 612, column: 13, scope: !3393)
!3492 = !DILocation(line: 651, column: 22, scope: !3393)
!3493 = !DILocation(line: 126, column: 32, scope: !1792, inlinedAt: !3494)
!3494 = distinct !DILocation(line: 651, column: 3, scope: !3393)
!3495 = !DILocation(line: 126, column: 43, scope: !1792, inlinedAt: !3494)
!3496 = !DILocation(line: 126, column: 50, scope: !1792, inlinedAt: !3494)
!3497 = !DILocation(line: 127, column: 13, scope: !1792, inlinedAt: !3494)
!3498 = !DILocation(line: 127, column: 15, scope: !1792, inlinedAt: !3494)
!3499 = !DILocation(line: 127, column: 6, scope: !1792, inlinedAt: !3494)
!3500 = !DILocation(line: 127, column: 8, scope: !1792, inlinedAt: !3494)
!3501 = !DILocation(line: 128, column: 6, scope: !1792, inlinedAt: !3494)
!3502 = !DILocation(line: 128, column: 8, scope: !1792, inlinedAt: !3494)
!3503 = !DILocation(line: 129, column: 15, scope: !1792, inlinedAt: !3494)
!3504 = !DILocation(line: 652, column: 3, scope: !3393)
!3505 = !DILocation(line: 653, column: 21, scope: !3393)
!3506 = !DILocation(line: 653, column: 7, scope: !3393)
!3507 = !DILocation(line: 653, column: 15, scope: !3393)
!3508 = !DILocation(line: 655, column: 1, scope: !3393)
!3509 = distinct !DISubprogram(name: "singlevaraux", scope: !3, file: !3, line: 224, type: !3510, isLocal: true, isDefinition: true, scopeLine: 224, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3512)
!3510 = !DISubroutineType(types: !3511)
!3511 = !{!203, !694, !332, !967, !203}
!3512 = !{!3513, !3514, !3515, !3516, !3517}
!3513 = !DILocalVariable(name: "fs", arg: 1, scope: !3509, file: !3, line: 224, type: !694)
!3514 = !DILocalVariable(name: "n", arg: 2, scope: !3509, file: !3, line: 224, type: !332)
!3515 = !DILocalVariable(name: "var", arg: 3, scope: !3509, file: !3, line: 224, type: !967)
!3516 = !DILocalVariable(name: "base", arg: 4, scope: !3509, file: !3, line: 224, type: !203)
!3517 = !DILocalVariable(name: "v", scope: !3518, file: !3, line: 230, type: !203)
!3518 = distinct !DILexicalBlock(scope: !3519, file: !3, line: 229, column: 8)
!3519 = distinct !DILexicalBlock(scope: !3509, file: !3, line: 225, column: 7)
!3520 = !DILocation(line: 224, column: 37, scope: !3509)
!3521 = !DILocation(line: 224, column: 50, scope: !3509)
!3522 = !DILocation(line: 224, column: 62, scope: !3509)
!3523 = !DILocation(line: 224, column: 71, scope: !3509)
!3524 = !DILocation(line: 225, column: 10, scope: !3519)
!3525 = !DILocation(line: 225, column: 7, scope: !3509)
!3526 = !DILocation(line: 126, column: 32, scope: !1792, inlinedAt: !3527)
!3527 = distinct !DILocation(line: 226, column: 5, scope: !3528)
!3528 = distinct !DILexicalBlock(scope: !3519, file: !3, line: 225, column: 19)
!3529 = !DILocation(line: 126, column: 43, scope: !1792, inlinedAt: !3527)
!3530 = !DILocation(line: 126, column: 50, scope: !1792, inlinedAt: !3527)
!3531 = !DILocation(line: 127, column: 13, scope: !1792, inlinedAt: !3527)
!3532 = !DILocation(line: 127, column: 15, scope: !1792, inlinedAt: !3527)
!3533 = !DILocation(line: 127, column: 6, scope: !1792, inlinedAt: !3527)
!3534 = !DILocation(line: 127, column: 8, scope: !1792, inlinedAt: !3527)
!3535 = !DILocation(line: 128, column: 6, scope: !1792, inlinedAt: !3527)
!3536 = !DILocation(line: 128, column: 8, scope: !1792, inlinedAt: !3527)
!3537 = !DILocation(line: 129, column: 6, scope: !1792, inlinedAt: !3527)
!3538 = !DILocation(line: 129, column: 10, scope: !1792, inlinedAt: !3527)
!3539 = !DILocation(line: 129, column: 15, scope: !1792, inlinedAt: !3527)
!3540 = !DILocation(line: 227, column: 5, scope: !3528)
!3541 = !DILocalVariable(name: "fs", arg: 1, scope: !3542, file: !3, line: 207, type: !694)
!3542 = distinct !DISubprogram(name: "searchvar", scope: !3, file: !3, line: 207, type: !3543, isLocal: true, isDefinition: true, scopeLine: 207, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3545)
!3543 = !DISubroutineType(types: !3544)
!3544 = !{!203, !694, !332}
!3545 = !{!3541, !3546, !3547}
!3546 = !DILocalVariable(name: "n", arg: 2, scope: !3542, file: !3, line: 207, type: !332)
!3547 = !DILocalVariable(name: "i", scope: !3542, file: !3, line: 208, type: !203)
!3548 = !DILocation(line: 207, column: 34, scope: !3542, inlinedAt: !3549)
!3549 = distinct !DILocation(line: 230, column: 13, scope: !3518)
!3550 = !DILocation(line: 207, column: 47, scope: !3542, inlinedAt: !3549)
!3551 = !DILocation(line: 209, column: 14, scope: !3552, inlinedAt: !3549)
!3552 = distinct !DILexicalBlock(scope: !3542, file: !3, line: 209, column: 3)
!3553 = !DILocation(line: 210, column: 14, scope: !3554, inlinedAt: !3549)
!3554 = distinct !DILexicalBlock(scope: !3555, file: !3, line: 210, column: 9)
!3555 = distinct !DILexicalBlock(scope: !3556, file: !3, line: 209, column: 38)
!3556 = distinct !DILexicalBlock(scope: !3552, file: !3, line: 209, column: 3)
!3557 = !DILocation(line: 209, column: 8, scope: !3552, inlinedAt: !3549)
!3558 = !DILocation(line: 0, scope: !3556, inlinedAt: !3549)
!3559 = !DILocation(line: 208, column: 7, scope: !3542, inlinedAt: !3549)
!3560 = !DILocation(line: 209, column: 27, scope: !3556, inlinedAt: !3549)
!3561 = !DILocation(line: 209, column: 3, scope: !3552, inlinedAt: !3549)
!3562 = !DILocation(line: 210, column: 31, scope: !3554, inlinedAt: !3549)
!3563 = !DILocation(line: 210, column: 11, scope: !3554, inlinedAt: !3549)
!3564 = !DILocation(line: 210, column: 9, scope: !3555, inlinedAt: !3549)
!3565 = distinct !{!3565, !3566, !3567}
!3566 = !DILocation(line: 209, column: 3, scope: !3552)
!3567 = !DILocation(line: 212, column: 3, scope: !3552)
!3568 = !DILocation(line: 230, column: 9, scope: !3518)
!3569 = !DILocation(line: 231, column: 11, scope: !3570)
!3570 = distinct !DILexicalBlock(scope: !3518, file: !3, line: 231, column: 9)
!3571 = !DILocation(line: 231, column: 9, scope: !3518)
!3572 = !DILocation(line: 126, column: 32, scope: !1792, inlinedAt: !3573)
!3573 = distinct !DILocation(line: 232, column: 7, scope: !3574)
!3574 = distinct !DILexicalBlock(scope: !3570, file: !3, line: 231, column: 17)
!3575 = !DILocation(line: 126, column: 43, scope: !1792, inlinedAt: !3573)
!3576 = !DILocation(line: 126, column: 50, scope: !1792, inlinedAt: !3573)
!3577 = !DILocation(line: 127, column: 13, scope: !1792, inlinedAt: !3573)
!3578 = !DILocation(line: 127, column: 15, scope: !1792, inlinedAt: !3573)
!3579 = !DILocation(line: 127, column: 6, scope: !1792, inlinedAt: !3573)
!3580 = !DILocation(line: 127, column: 8, scope: !1792, inlinedAt: !3573)
!3581 = !DILocation(line: 128, column: 6, scope: !1792, inlinedAt: !3573)
!3582 = !DILocation(line: 128, column: 8, scope: !1792, inlinedAt: !3573)
!3583 = !DILocation(line: 129, column: 6, scope: !1792, inlinedAt: !3573)
!3584 = !DILocation(line: 129, column: 10, scope: !1792, inlinedAt: !3573)
!3585 = !DILocation(line: 129, column: 15, scope: !1792, inlinedAt: !3573)
!3586 = !DILocation(line: 233, column: 12, scope: !3587)
!3587 = distinct !DILexicalBlock(scope: !3574, file: !3, line: 233, column: 11)
!3588 = !DILocation(line: 233, column: 11, scope: !3574)
!3589 = !DILocalVariable(name: "fs", arg: 1, scope: !3590, file: !3, line: 217, type: !694)
!3590 = distinct !DISubprogram(name: "markupval", scope: !3, file: !3, line: 217, type: !3591, isLocal: true, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3593)
!3591 = !DISubroutineType(types: !3592)
!3592 = !{null, !694, !203}
!3593 = !{!3589, !3594, !3595}
!3594 = !DILocalVariable(name: "level", arg: 2, scope: !3590, file: !3, line: 217, type: !203)
!3595 = !DILocalVariable(name: "bl", scope: !3590, file: !3, line: 218, type: !993)
!3596 = !DILocation(line: 217, column: 35, scope: !3590, inlinedAt: !3597)
!3597 = distinct !DILocation(line: 234, column: 9, scope: !3587)
!3598 = !DILocation(line: 217, column: 43, scope: !3590, inlinedAt: !3597)
!3599 = !DILocation(line: 218, column: 22, scope: !3590, inlinedAt: !3597)
!3600 = !DILocation(line: 218, column: 13, scope: !3590, inlinedAt: !3597)
!3601 = !DILocation(line: 0, scope: !3590, inlinedAt: !3597)
!3602 = !DILocation(line: 219, column: 10, scope: !3590, inlinedAt: !3597)
!3603 = !DILocation(line: 219, column: 13, scope: !3590, inlinedAt: !3597)
!3604 = !DILocation(line: 219, column: 20, scope: !3590, inlinedAt: !3597)
!3605 = !DILocation(line: 219, column: 16, scope: !3590, inlinedAt: !3597)
!3606 = !DILocation(line: 219, column: 28, scope: !3590, inlinedAt: !3597)
!3607 = !DILocation(line: 219, column: 3, scope: !3590, inlinedAt: !3597)
!3608 = !DILocation(line: 219, column: 46, scope: !3590, inlinedAt: !3597)
!3609 = distinct !{!3609, !3610, !3611}
!3610 = !DILocation(line: 219, column: 3, scope: !3590)
!3611 = !DILocation(line: 219, column: 46, scope: !3590)
!3612 = !DILocation(line: 220, column: 15, scope: !3613, inlinedAt: !3597)
!3613 = distinct !DILexicalBlock(scope: !3590, file: !3, line: 220, column: 7)
!3614 = !DILocation(line: 220, column: 21, scope: !3613, inlinedAt: !3597)
!3615 = !DILocation(line: 220, column: 11, scope: !3613, inlinedAt: !3597)
!3616 = !DILocation(line: 238, column: 28, scope: !3617)
!3617 = distinct !DILexicalBlock(scope: !3618, file: !3, line: 238, column: 11)
!3618 = distinct !DILexicalBlock(scope: !3570, file: !3, line: 237, column: 10)
!3619 = !DILocation(line: 238, column: 11, scope: !3617)
!3620 = !DILocation(line: 238, column: 45, scope: !3617)
!3621 = !DILocation(line: 238, column: 11, scope: !3618)
!3622 = !DILocalVariable(name: "fs", arg: 1, scope: !3623, file: !3, line: 183, type: !694)
!3623 = distinct !DISubprogram(name: "indexupvalue", scope: !3, file: !3, line: 183, type: !3624, isLocal: true, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3626)
!3624 = !DISubroutineType(types: !3625)
!3625 = !{!203, !694, !332, !967}
!3626 = !{!3622, !3627, !3628, !3629, !3630, !3631}
!3627 = !DILocalVariable(name: "name", arg: 2, scope: !3623, file: !3, line: 183, type: !332)
!3628 = !DILocalVariable(name: "v", arg: 3, scope: !3623, file: !3, line: 183, type: !967)
!3629 = !DILocalVariable(name: "i", scope: !3623, file: !3, line: 184, type: !203)
!3630 = !DILocalVariable(name: "f", scope: !3623, file: !3, line: 185, type: !459)
!3631 = !DILocalVariable(name: "oldsize", scope: !3623, file: !3, line: 186, type: !203)
!3632 = !DILocation(line: 183, column: 37, scope: !3623, inlinedAt: !3633)
!3633 = distinct !DILocation(line: 240, column: 23, scope: !3618)
!3634 = !DILocation(line: 183, column: 50, scope: !3623, inlinedAt: !3633)
!3635 = !DILocation(line: 183, column: 65, scope: !3623, inlinedAt: !3633)
!3636 = !DILocation(line: 185, column: 18, scope: !3623, inlinedAt: !3633)
!3637 = !DILocation(line: 185, column: 10, scope: !3623, inlinedAt: !3633)
!3638 = !DILocation(line: 186, column: 20, scope: !3623, inlinedAt: !3633)
!3639 = !DILocation(line: 186, column: 7, scope: !3623, inlinedAt: !3633)
!3640 = !DILocation(line: 184, column: 7, scope: !3623, inlinedAt: !3633)
!3641 = !DILocation(line: 187, column: 18, scope: !3642, inlinedAt: !3633)
!3642 = distinct !DILexicalBlock(scope: !3643, file: !3, line: 187, column: 3)
!3643 = distinct !DILexicalBlock(scope: !3623, file: !3, line: 187, column: 3)
!3644 = !DILocation(line: 187, column: 14, scope: !3642, inlinedAt: !3633)
!3645 = !DILocation(line: 187, column: 3, scope: !3643, inlinedAt: !3633)
!3646 = !DILocation(line: 188, column: 25, scope: !3647, inlinedAt: !3633)
!3647 = distinct !DILexicalBlock(scope: !3648, file: !3, line: 188, column: 9)
!3648 = distinct !DILexicalBlock(scope: !3642, file: !3, line: 187, column: 29)
!3649 = !DILocation(line: 188, column: 9, scope: !3647, inlinedAt: !3633)
!3650 = !DILocation(line: 188, column: 27, scope: !3647, inlinedAt: !3633)
!3651 = !DILocation(line: 188, column: 35, scope: !3647, inlinedAt: !3633)
!3652 = !DILocation(line: 188, column: 54, scope: !3647, inlinedAt: !3633)
!3653 = !DILocation(line: 188, column: 38, scope: !3647, inlinedAt: !3633)
!3654 = !DILocation(line: 188, column: 69, scope: !3647, inlinedAt: !3633)
!3655 = !DILocation(line: 188, column: 59, scope: !3647, inlinedAt: !3633)
!3656 = !DILocation(line: 188, column: 9, scope: !3648, inlinedAt: !3633)
!3657 = !DILocation(line: 187, column: 25, scope: !3642, inlinedAt: !3633)
!3658 = distinct !{!3658, !3659, !3660}
!3659 = !DILocation(line: 187, column: 3, scope: !3643)
!3660 = !DILocation(line: 192, column: 3, scope: !3643)
!3661 = !DILocation(line: 194, column: 3, scope: !3662, inlinedAt: !3633)
!3662 = distinct !DILexicalBlock(scope: !3623, file: !3, line: 194, column: 3)
!3663 = !DILocation(line: 194, column: 3, scope: !3623, inlinedAt: !3633)
!3664 = !DILocation(line: 71, column: 36, scope: !2621, inlinedAt: !3665)
!3665 = distinct !DILocation(line: 194, column: 3, scope: !3662, inlinedAt: !3633)
!3666 = !DILocation(line: 71, column: 44, scope: !2621, inlinedAt: !3665)
!3667 = !DILocation(line: 71, column: 63, scope: !2621, inlinedAt: !3665)
!3668 = !DILocation(line: 72, column: 29, scope: !2621, inlinedAt: !3665)
!3669 = !DILocation(line: 72, column: 41, scope: !2621, inlinedAt: !3665)
!3670 = !DILocation(line: 0, scope: !2621, inlinedAt: !3665)
!3671 = !DILocation(line: 72, column: 21, scope: !2621, inlinedAt: !3665)
!3672 = !DILocation(line: 73, column: 5, scope: !2621, inlinedAt: !3665)
!3673 = !DILocation(line: 74, column: 5, scope: !2621, inlinedAt: !3665)
!3674 = !DILocation(line: 72, column: 15, scope: !2621, inlinedAt: !3665)
!3675 = !DILocation(line: 76, column: 21, scope: !2621, inlinedAt: !3665)
!3676 = !DILocation(line: 76, column: 3, scope: !2621, inlinedAt: !3665)
!3677 = !DILocation(line: 195, column: 3, scope: !3678, inlinedAt: !3633)
!3678 = distinct !DILexicalBlock(scope: !3623, file: !3, line: 195, column: 3)
!3679 = !DILocation(line: 195, column: 3, scope: !3623, inlinedAt: !3633)
!3680 = !DILocation(line: 0, scope: !3623, inlinedAt: !3633)
!3681 = !DILocation(line: 197, column: 23, scope: !3623, inlinedAt: !3633)
!3682 = !DILocation(line: 197, column: 18, scope: !3623, inlinedAt: !3633)
!3683 = !DILocation(line: 197, column: 3, scope: !3623, inlinedAt: !3633)
!3684 = !DILocation(line: 197, column: 56, scope: !3623, inlinedAt: !3633)
!3685 = !DILocation(line: 197, column: 37, scope: !3623, inlinedAt: !3633)
!3686 = !DILocation(line: 197, column: 60, scope: !3623, inlinedAt: !3633)
!3687 = distinct !{!3687, !1928}
!3688 = distinct !{!3688, !3689, !3690}
!3689 = !DILocation(line: 197, column: 3, scope: !3623)
!3690 = !DILocation(line: 197, column: 62, scope: !3623)
!3691 = !DILocation(line: 198, column: 18, scope: !3623, inlinedAt: !3633)
!3692 = !DILocation(line: 198, column: 3, scope: !3623, inlinedAt: !3633)
!3693 = !DILocation(line: 198, column: 24, scope: !3623, inlinedAt: !3633)
!3694 = !DILocation(line: 199, column: 3, scope: !3695, inlinedAt: !3633)
!3695 = distinct !DILexicalBlock(scope: !3696, file: !3, line: 199, column: 3)
!3696 = distinct !DILexicalBlock(scope: !3623, file: !3, line: 199, column: 3)
!3697 = !DILocation(line: 199, column: 3, scope: !3696, inlinedAt: !3633)
!3698 = !DILocation(line: 201, column: 19, scope: !3623, inlinedAt: !3633)
!3699 = !DILocation(line: 201, column: 3, scope: !3623, inlinedAt: !3633)
!3700 = !DILocation(line: 201, column: 29, scope: !3623, inlinedAt: !3633)
!3701 = !DILocation(line: 201, column: 25, scope: !3623, inlinedAt: !3633)
!3702 = !DILocation(line: 201, column: 27, scope: !3623, inlinedAt: !3633)
!3703 = !DILocation(line: 202, column: 32, scope: !3623, inlinedAt: !3633)
!3704 = !DILocation(line: 202, column: 25, scope: !3623, inlinedAt: !3633)
!3705 = !DILocation(line: 202, column: 30, scope: !3623, inlinedAt: !3633)
!3706 = !DILocation(line: 203, column: 17, scope: !3623, inlinedAt: !3633)
!3707 = !DILocation(line: 203, column: 10, scope: !3623, inlinedAt: !3633)
!3708 = !DILocation(line: 203, column: 3, scope: !3623, inlinedAt: !3633)
!3709 = !DILocation(line: 204, column: 1, scope: !3623, inlinedAt: !3633)
!3710 = !DILocation(line: 241, column: 12, scope: !3618)
!3711 = !DILocation(line: 240, column: 16, scope: !3618)
!3712 = !DILocation(line: 240, column: 21, scope: !3618)
!3713 = !DILocation(line: 241, column: 14, scope: !3618)
!3714 = !DILocation(line: 242, column: 7, scope: !3618)
!3715 = !DILocation(line: 0, scope: !3574)
!3716 = !DILocation(line: 245, column: 1, scope: !3509)
!3717 = distinct !DISubprogram(name: "forbody", scope: !3, file: !3, line: 1046, type: !3718, isLocal: true, isDefinition: true, scopeLine: 1046, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3720)
!3718 = !DISubroutineType(types: !3719)
!3719 = !{null, !597, !203, !203, !203, !203}
!3720 = !{!3721, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3729}
!3721 = !DILocalVariable(name: "ls", arg: 1, scope: !3717, file: !3, line: 1046, type: !597)
!3722 = !DILocalVariable(name: "base", arg: 2, scope: !3717, file: !3, line: 1046, type: !203)
!3723 = !DILocalVariable(name: "line", arg: 3, scope: !3717, file: !3, line: 1046, type: !203)
!3724 = !DILocalVariable(name: "nvars", arg: 4, scope: !3717, file: !3, line: 1046, type: !203)
!3725 = !DILocalVariable(name: "isnum", arg: 5, scope: !3717, file: !3, line: 1046, type: !203)
!3726 = !DILocalVariable(name: "bl", scope: !3717, file: !3, line: 1048, type: !928)
!3727 = !DILocalVariable(name: "fs", scope: !3717, file: !3, line: 1049, type: !694)
!3728 = !DILocalVariable(name: "prep", scope: !3717, file: !3, line: 1050, type: !203)
!3729 = !DILocalVariable(name: "endfor", scope: !3717, file: !3, line: 1050, type: !203)
!3730 = !DILocation(line: 1046, column: 32, scope: !3717)
!3731 = !DILocation(line: 1046, column: 40, scope: !3717)
!3732 = !DILocation(line: 1046, column: 50, scope: !3717)
!3733 = !DILocation(line: 1046, column: 60, scope: !3717)
!3734 = !DILocation(line: 1046, column: 71, scope: !3717)
!3735 = !DILocation(line: 1048, column: 3, scope: !3717)
!3736 = !DILocation(line: 1049, column: 23, scope: !3717)
!3737 = !DILocation(line: 1049, column: 14, scope: !3717)
!3738 = !DILocation(line: 167, column: 40, scope: !1814, inlinedAt: !3739)
!3739 = distinct !DILocation(line: 1051, column: 3, scope: !3717)
!3740 = !DILocation(line: 167, column: 48, scope: !1814, inlinedAt: !3739)
!3741 = !DILocation(line: 168, column: 14, scope: !1814, inlinedAt: !3739)
!3742 = !DILocation(line: 169, column: 17, scope: !1814, inlinedAt: !3739)
!3743 = !DILocation(line: 169, column: 15, scope: !1814, inlinedAt: !3739)
!3744 = !DILocation(line: 170, column: 3, scope: !1826, inlinedAt: !3739)
!3745 = !DILocation(line: 171, column: 5, scope: !1828, inlinedAt: !3739)
!3746 = !DILocation(line: 171, column: 40, scope: !1828, inlinedAt: !3739)
!3747 = !DILocation(line: 171, column: 48, scope: !1828, inlinedAt: !3739)
!3748 = !DILocation(line: 94, column: 34, scope: !1020, inlinedAt: !3749)
!3749 = distinct !DILocation(line: 1052, column: 3, scope: !3717)
!3750 = !DILocation(line: 94, column: 42, scope: !1020, inlinedAt: !3749)
!3751 = !DILocation(line: 89, column: 30, scope: !664, inlinedAt: !3752)
!3752 = distinct !DILocation(line: 95, column: 3, scope: !1020, inlinedAt: !3749)
!3753 = !DILocation(line: 89, column: 38, scope: !664, inlinedAt: !3752)
!3754 = !DILocation(line: 90, column: 13, scope: !663, inlinedAt: !3752)
!3755 = !DILocation(line: 90, column: 19, scope: !663, inlinedAt: !3752)
!3756 = !DILocation(line: 90, column: 7, scope: !664, inlinedAt: !3752)
!3757 = !DILocation(line: 65, column: 39, scope: !677, inlinedAt: !3758)
!3758 = distinct !DILocation(line: 91, column: 5, scope: !663, inlinedAt: !3752)
!3759 = !DILocation(line: 65, column: 47, scope: !677, inlinedAt: !3758)
!3760 = !DILocation(line: 67, column: 28, scope: !677, inlinedAt: !3758)
!3761 = !DILocation(line: 67, column: 51, scope: !677, inlinedAt: !3758)
!3762 = !DILocation(line: 67, column: 7, scope: !677, inlinedAt: !3758)
!3763 = !DILocation(line: 66, column: 3, scope: !677, inlinedAt: !3758)
!3764 = !DILocation(line: 91, column: 5, scope: !663, inlinedAt: !3752)
!3765 = !DILocation(line: 96, column: 3, scope: !1020, inlinedAt: !3749)
!3766 = !DILocation(line: 1053, column: 10, scope: !3717)
!3767 = !DILocation(line: 1053, column: 18, scope: !3717)
!3768 = !DILocation(line: 1053, column: 65, scope: !3717)
!3769 = !DILocation(line: 1050, column: 7, scope: !3717)
!3770 = !DILocation(line: 1048, column: 12, scope: !3717)
!3771 = !DILocation(line: 285, column: 36, scope: !990, inlinedAt: !3772)
!3772 = distinct !DILocation(line: 1054, column: 3, scope: !3717)
!3773 = !DILocation(line: 285, column: 50, scope: !990, inlinedAt: !3772)
!3774 = !DILocation(line: 285, column: 62, scope: !990, inlinedAt: !3772)
!3775 = !DILocation(line: 286, column: 7, scope: !990, inlinedAt: !3772)
!3776 = !DILocation(line: 286, column: 17, scope: !990, inlinedAt: !3772)
!3777 = !DILocation(line: 287, column: 7, scope: !990, inlinedAt: !3772)
!3778 = !DILocation(line: 287, column: 19, scope: !990, inlinedAt: !3772)
!3779 = !DILocation(line: 288, column: 21, scope: !990, inlinedAt: !3772)
!3780 = !DILocation(line: 288, column: 7, scope: !990, inlinedAt: !3772)
!3781 = !DILocation(line: 288, column: 15, scope: !990, inlinedAt: !3772)
!3782 = !DILocation(line: 289, column: 7, scope: !990, inlinedAt: !3772)
!3783 = !DILocation(line: 289, column: 13, scope: !990, inlinedAt: !3772)
!3784 = !DILocation(line: 290, column: 22, scope: !990, inlinedAt: !3772)
!3785 = !DILocation(line: 290, column: 16, scope: !990, inlinedAt: !3772)
!3786 = !DILocation(line: 291, column: 10, scope: !990, inlinedAt: !3772)
!3787 = !DILocation(line: 167, column: 40, scope: !1814, inlinedAt: !3788)
!3788 = distinct !DILocation(line: 1055, column: 3, scope: !3717)
!3789 = !DILocation(line: 167, column: 48, scope: !1814, inlinedAt: !3788)
!3790 = !DILocation(line: 168, column: 23, scope: !1814, inlinedAt: !3788)
!3791 = !DILocation(line: 168, column: 14, scope: !1814, inlinedAt: !3788)
!3792 = !DILocation(line: 169, column: 17, scope: !1814, inlinedAt: !3788)
!3793 = !DILocation(line: 169, column: 15, scope: !1814, inlinedAt: !3788)
!3794 = !DILocation(line: 170, column: 3, scope: !1826, inlinedAt: !3788)
!3795 = !DILocation(line: 171, column: 5, scope: !1828, inlinedAt: !3788)
!3796 = !DILocation(line: 171, column: 40, scope: !1828, inlinedAt: !3788)
!3797 = !DILocation(line: 171, column: 48, scope: !1828, inlinedAt: !3788)
!3798 = !DILocation(line: 170, column: 22, scope: !1829, inlinedAt: !3788)
!3799 = distinct !{!3799, !1928}
!3800 = !DILocation(line: 1056, column: 3, scope: !3717)
!3801 = !DILocation(line: 1057, column: 3, scope: !3717)
!3802 = !DILocation(line: 296, column: 36, scope: !1046, inlinedAt: !3803)
!3803 = distinct !DILocation(line: 1058, column: 3, scope: !3717)
!3804 = !DILocation(line: 297, column: 22, scope: !1046, inlinedAt: !3803)
!3805 = !DILocation(line: 297, column: 13, scope: !1046, inlinedAt: !3803)
!3806 = !DILocation(line: 298, column: 16, scope: !1046, inlinedAt: !3803)
!3807 = !DILocation(line: 298, column: 10, scope: !1046, inlinedAt: !3803)
!3808 = !DILocation(line: 299, column: 18, scope: !1046, inlinedAt: !3803)
!3809 = !DILocation(line: 299, column: 26, scope: !1046, inlinedAt: !3803)
!3810 = !DILocation(line: 299, column: 22, scope: !1046, inlinedAt: !3803)
!3811 = !DILocation(line: 176, column: 35, scope: !782, inlinedAt: !3812)
!3812 = distinct !DILocation(line: 299, column: 3, scope: !1046, inlinedAt: !3803)
!3813 = !DILocation(line: 176, column: 43, scope: !782, inlinedAt: !3812)
!3814 = !DILocation(line: 177, column: 23, scope: !782, inlinedAt: !3812)
!3815 = !DILocation(line: 177, column: 14, scope: !782, inlinedAt: !3812)
!3816 = !DILocation(line: 178, column: 14, scope: !782, inlinedAt: !3812)
!3817 = !DILocation(line: 178, column: 22, scope: !782, inlinedAt: !3812)
!3818 = !DILocation(line: 178, column: 3, scope: !782, inlinedAt: !3812)
!3819 = !DILocation(line: 179, column: 5, scope: !782, inlinedAt: !3812)
!3820 = !DILocation(line: 179, column: 34, scope: !782, inlinedAt: !3812)
!3821 = !DILocation(line: 179, column: 40, scope: !782, inlinedAt: !3812)
!3822 = !DILocation(line: 300, column: 11, scope: !1072, inlinedAt: !3803)
!3823 = !DILocation(line: 300, column: 7, scope: !1072, inlinedAt: !3803)
!3824 = !DILocation(line: 300, column: 7, scope: !1046, inlinedAt: !3803)
!3825 = !DILocation(line: 301, column: 5, scope: !1072, inlinedAt: !3803)
!3826 = !DILocation(line: 305, column: 21, scope: !1046, inlinedAt: !3803)
!3827 = !DILocation(line: 305, column: 17, scope: !1046, inlinedAt: !3803)
!3828 = !DILocation(line: 305, column: 7, scope: !1046, inlinedAt: !3803)
!3829 = !DILocation(line: 305, column: 15, scope: !1046, inlinedAt: !3803)
!3830 = !DILocation(line: 306, column: 28, scope: !1046, inlinedAt: !3803)
!3831 = !DILocation(line: 306, column: 3, scope: !1046, inlinedAt: !3803)
!3832 = !DILocation(line: 1059, column: 3, scope: !3717)
!3833 = !DILocation(line: 1060, column: 12, scope: !3717)
!3834 = !DILocation(line: 1060, column: 22, scope: !3717)
!3835 = !DILocation(line: 1050, column: 13, scope: !3717)
!3836 = !DILocation(line: 1062, column: 3, scope: !3717)
!3837 = !DILocation(line: 1063, column: 23, scope: !3717)
!3838 = !DILocation(line: 1061, column: 22, scope: !3717)
!3839 = !DILocation(line: 1063, column: 40, scope: !3717)
!3840 = !DILocation(line: 1063, column: 61, scope: !3717)
!3841 = !DILocation(line: 1063, column: 3, scope: !3717)
!3842 = !DILocation(line: 1064, column: 1, scope: !3717)
!3843 = distinct !DISubprogram(name: "adjust_assign", scope: !3, file: !3, line: 256, type: !3844, isLocal: true, isDefinition: true, scopeLine: 256, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3846)
!3844 = !DISubroutineType(types: !3845)
!3845 = !{null, !597, !203, !203, !967}
!3846 = !{!3847, !3848, !3849, !3850, !3851, !3852, !3853}
!3847 = !DILocalVariable(name: "ls", arg: 1, scope: !3843, file: !3, line: 256, type: !597)
!3848 = !DILocalVariable(name: "nvars", arg: 2, scope: !3843, file: !3, line: 256, type: !203)
!3849 = !DILocalVariable(name: "nexps", arg: 3, scope: !3843, file: !3, line: 256, type: !203)
!3850 = !DILocalVariable(name: "e", arg: 4, scope: !3843, file: !3, line: 256, type: !967)
!3851 = !DILocalVariable(name: "fs", scope: !3843, file: !3, line: 257, type: !694)
!3852 = !DILocalVariable(name: "extra", scope: !3843, file: !3, line: 258, type: !203)
!3853 = !DILocalVariable(name: "reg", scope: !3854, file: !3, line: 268, type: !203)
!3854 = distinct !DILexicalBlock(scope: !3855, file: !3, line: 267, column: 20)
!3855 = distinct !DILexicalBlock(scope: !3856, file: !3, line: 267, column: 9)
!3856 = distinct !DILexicalBlock(scope: !3857, file: !3, line: 265, column: 8)
!3857 = distinct !DILexicalBlock(scope: !3843, file: !3, line: 259, column: 7)
!3858 = !DILocation(line: 256, column: 38, scope: !3843)
!3859 = !DILocation(line: 256, column: 46, scope: !3843)
!3860 = !DILocation(line: 256, column: 57, scope: !3843)
!3861 = !DILocation(line: 256, column: 73, scope: !3843)
!3862 = !DILocation(line: 257, column: 23, scope: !3843)
!3863 = !DILocation(line: 257, column: 14, scope: !3843)
!3864 = !DILocation(line: 258, column: 21, scope: !3843)
!3865 = !DILocation(line: 258, column: 7, scope: !3843)
!3866 = !DILocation(line: 259, column: 7, scope: !3857)
!3867 = !DILocation(line: 260, column: 10, scope: !3868)
!3868 = distinct !DILexicalBlock(scope: !3857, file: !3, line: 259, column: 25)
!3869 = !DILocation(line: 261, column: 9, scope: !3868)
!3870 = !DILocation(line: 262, column: 5, scope: !3868)
!3871 = !DILocation(line: 263, column: 15, scope: !3872)
!3872 = distinct !DILexicalBlock(scope: !3868, file: !3, line: 263, column: 9)
!3873 = !DILocation(line: 263, column: 9, scope: !3868)
!3874 = !DILocation(line: 263, column: 46, scope: !3872)
!3875 = !DILocation(line: 263, column: 20, scope: !3872)
!3876 = !DILocation(line: 266, column: 24, scope: !3877)
!3877 = distinct !DILexicalBlock(scope: !3856, file: !3, line: 266, column: 9)
!3878 = !DILocation(line: 267, column: 15, scope: !3855)
!3879 = !DILocation(line: 267, column: 9, scope: !3856)
!3880 = !DILocation(line: 268, column: 21, scope: !3854)
!3881 = !DILocation(line: 268, column: 11, scope: !3854)
!3882 = !DILocation(line: 269, column: 7, scope: !3854)
!3883 = !DILocation(line: 270, column: 7, scope: !3854)
!3884 = !DILocation(line: 271, column: 5, scope: !3854)
!3885 = !DILocation(line: 273, column: 1, scope: !3843)
!3886 = distinct !DISubprogram(name: "assignment", scope: !3, file: !3, line: 931, type: !3887, isLocal: true, isDefinition: true, scopeLine: 931, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3889)
!3887 = !DISubroutineType(types: !3888)
!3888 = !{null, !597, !2046, !203}
!3889 = !{!3890, !3891, !3892, !3893, !3894, !3897}
!3890 = !DILocalVariable(name: "ls", arg: 1, scope: !3886, file: !3, line: 931, type: !597)
!3891 = !DILocalVariable(name: "lh", arg: 2, scope: !3886, file: !3, line: 931, type: !2046)
!3892 = !DILocalVariable(name: "nvars", arg: 3, scope: !3886, file: !3, line: 931, type: !203)
!3893 = !DILocalVariable(name: "e", scope: !3886, file: !3, line: 932, type: !943)
!3894 = !DILocalVariable(name: "nv", scope: !3895, file: !3, line: 936, type: !2043)
!3895 = distinct !DILexicalBlock(scope: !3896, file: !3, line: 935, column: 26)
!3896 = distinct !DILexicalBlock(scope: !3886, file: !3, line: 935, column: 7)
!3897 = !DILocalVariable(name: "nexps", scope: !3898, file: !3, line: 946, type: !203)
!3898 = distinct !DILexicalBlock(scope: !3896, file: !3, line: 945, column: 8)
!3899 = !DILocation(line: 931, column: 35, scope: !3886)
!3900 = !DILocation(line: 931, column: 58, scope: !3886)
!3901 = !DILocation(line: 931, column: 66, scope: !3886)
!3902 = !DILocation(line: 932, column: 3, scope: !3886)
!3903 = !DILocation(line: 933, column: 3, scope: !3904)
!3904 = distinct !DILexicalBlock(scope: !3905, file: !3, line: 933, column: 3)
!3905 = distinct !DILexicalBlock(scope: !3886, file: !3, line: 933, column: 3)
!3906 = !DILocation(line: 80, column: 32, scope: !635, inlinedAt: !3907)
!3907 = distinct !DILocation(line: 935, column: 7, scope: !3896)
!3908 = !DILocation(line: 80, column: 40, scope: !635, inlinedAt: !3907)
!3909 = !DILocation(line: 81, column: 13, scope: !644, inlinedAt: !3907)
!3910 = !DILocation(line: 81, column: 7, scope: !635, inlinedAt: !3907)
!3911 = !DILocation(line: 82, column: 5, scope: !648, inlinedAt: !3907)
!3912 = !DILocation(line: 936, column: 5, scope: !3895)
!3913 = !DILocation(line: 937, column: 8, scope: !3895)
!3914 = !DILocation(line: 937, column: 13, scope: !3895)
!3915 = !DILocation(line: 938, column: 24, scope: !3895)
!3916 = !DILocation(line: 938, column: 5, scope: !3895)
!3917 = !DILocation(line: 939, column: 14, scope: !3918)
!3918 = distinct !DILexicalBlock(scope: !3895, file: !3, line: 939, column: 9)
!3919 = !DILocation(line: 939, column: 16, scope: !3918)
!3920 = !DILocation(line: 939, column: 9, scope: !3895)
!3921 = !DILocalVariable(name: "ls", arg: 1, scope: !3922, file: !3, line: 908, type: !597)
!3922 = distinct !DISubprogram(name: "check_conflict", scope: !3, file: !3, line: 908, type: !3923, isLocal: true, isDefinition: true, scopeLine: 908, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3925)
!3923 = !DISubroutineType(types: !3924)
!3924 = !{null, !597, !2046, !967}
!3925 = !{!3921, !3926, !3927, !3928, !3929, !3930}
!3926 = !DILocalVariable(name: "lh", arg: 2, scope: !3922, file: !3, line: 908, type: !2046)
!3927 = !DILocalVariable(name: "v", arg: 3, scope: !3922, file: !3, line: 908, type: !967)
!3928 = !DILocalVariable(name: "fs", scope: !3922, file: !3, line: 909, type: !694)
!3929 = !DILocalVariable(name: "extra", scope: !3922, file: !3, line: 910, type: !203)
!3930 = !DILocalVariable(name: "conflict", scope: !3922, file: !3, line: 911, type: !203)
!3931 = !DILocation(line: 908, column: 39, scope: !3922, inlinedAt: !3932)
!3932 = distinct !DILocation(line: 940, column: 7, scope: !3918)
!3933 = !DILocation(line: 908, column: 62, scope: !3922, inlinedAt: !3932)
!3934 = !DILocation(line: 908, column: 75, scope: !3922, inlinedAt: !3932)
!3935 = !DILocation(line: 909, column: 23, scope: !3922, inlinedAt: !3932)
!3936 = !DILocation(line: 909, column: 14, scope: !3922, inlinedAt: !3932)
!3937 = !DILocation(line: 910, column: 19, scope: !3922, inlinedAt: !3932)
!3938 = !DILocation(line: 910, column: 7, scope: !3922, inlinedAt: !3932)
!3939 = !DILocation(line: 911, column: 7, scope: !3922, inlinedAt: !3932)
!3940 = !DILocation(line: 912, column: 3, scope: !3941, inlinedAt: !3932)
!3941 = distinct !DILexicalBlock(scope: !3922, file: !3, line: 912, column: 3)
!3942 = !DILocation(line: 913, column: 15, scope: !3943, inlinedAt: !3932)
!3943 = distinct !DILexicalBlock(scope: !3944, file: !3, line: 913, column: 9)
!3944 = distinct !DILexicalBlock(scope: !3945, file: !3, line: 912, column: 29)
!3945 = distinct !DILexicalBlock(scope: !3941, file: !3, line: 912, column: 3)
!3946 = !DILocation(line: 913, column: 17, scope: !3943, inlinedAt: !3932)
!3947 = !DILocation(line: 913, column: 9, scope: !3944, inlinedAt: !3932)
!3948 = !DILocation(line: 914, column: 17, scope: !3949, inlinedAt: !3932)
!3949 = distinct !DILexicalBlock(scope: !3950, file: !3, line: 914, column: 11)
!3950 = distinct !DILexicalBlock(scope: !3943, file: !3, line: 913, column: 30)
!3951 = !DILocation(line: 914, column: 19, scope: !3949, inlinedAt: !3932)
!3952 = !DILocation(line: 914, column: 21, scope: !3949, inlinedAt: !3932)
!3953 = !DILocation(line: 914, column: 36, scope: !3949, inlinedAt: !3932)
!3954 = !DILocation(line: 914, column: 26, scope: !3949, inlinedAt: !3932)
!3955 = !DILocation(line: 914, column: 11, scope: !3950, inlinedAt: !3932)
!3956 = !DILocation(line: 916, column: 24, scope: !3957, inlinedAt: !3932)
!3957 = distinct !DILexicalBlock(scope: !3949, file: !3, line: 914, column: 42)
!3958 = !DILocation(line: 918, column: 35, scope: !3959, inlinedAt: !3932)
!3959 = distinct !DILexicalBlock(scope: !3950, file: !3, line: 918, column: 11)
!3960 = !DILocation(line: 917, column: 7, scope: !3957, inlinedAt: !3932)
!3961 = !DILocation(line: 0, scope: !3922, inlinedAt: !3932)
!3962 = !DILocation(line: 918, column: 21, scope: !3959, inlinedAt: !3932)
!3963 = !DILocation(line: 918, column: 25, scope: !3959, inlinedAt: !3932)
!3964 = !DILocation(line: 918, column: 11, scope: !3950, inlinedAt: !3932)
!3965 = !DILocation(line: 920, column: 23, scope: !3966, inlinedAt: !3932)
!3966 = distinct !DILexicalBlock(scope: !3959, file: !3, line: 918, column: 41)
!3967 = !DILocation(line: 921, column: 7, scope: !3966, inlinedAt: !3932)
!3968 = !DILocation(line: 912, column: 23, scope: !3945, inlinedAt: !3932)
!3969 = distinct !{!3969, !3970, !3971}
!3970 = !DILocation(line: 912, column: 3, scope: !3941)
!3971 = !DILocation(line: 923, column: 3, scope: !3941)
!3972 = !DILocation(line: 924, column: 7, scope: !3973, inlinedAt: !3932)
!3973 = distinct !DILexicalBlock(scope: !3922, file: !3, line: 924, column: 7)
!3974 = !DILocation(line: 924, column: 7, scope: !3922, inlinedAt: !3932)
!3975 = !DILocation(line: 925, column: 35, scope: !3976, inlinedAt: !3932)
!3976 = distinct !DILexicalBlock(scope: !3973, file: !3, line: 924, column: 17)
!3977 = !DILocation(line: 925, column: 51, scope: !3976, inlinedAt: !3932)
!3978 = !DILocation(line: 925, column: 5, scope: !3976, inlinedAt: !3932)
!3979 = !DILocation(line: 926, column: 5, scope: !3976, inlinedAt: !3932)
!3980 = !DILocation(line: 927, column: 3, scope: !3976, inlinedAt: !3932)
!3981 = !DILocation(line: 941, column: 5, scope: !3982)
!3982 = distinct !DILexicalBlock(scope: !3895, file: !3, line: 941, column: 5)
!3983 = !DILocation(line: 941, column: 5, scope: !3895)
!3984 = !DILocation(line: 71, column: 36, scope: !2621, inlinedAt: !3985)
!3985 = distinct !DILocation(line: 941, column: 5, scope: !3982)
!3986 = !DILocation(line: 71, column: 44, scope: !2621, inlinedAt: !3985)
!3987 = !DILocation(line: 71, column: 63, scope: !2621, inlinedAt: !3985)
!3988 = !DILocation(line: 72, column: 26, scope: !2621, inlinedAt: !3985)
!3989 = !DILocation(line: 72, column: 29, scope: !2621, inlinedAt: !3985)
!3990 = !DILocation(line: 72, column: 41, scope: !2621, inlinedAt: !3985)
!3991 = !DILocation(line: 0, scope: !2621, inlinedAt: !3985)
!3992 = !DILocation(line: 72, column: 21, scope: !2621, inlinedAt: !3985)
!3993 = !DILocation(line: 73, column: 5, scope: !2621, inlinedAt: !3985)
!3994 = !DILocation(line: 74, column: 5, scope: !2621, inlinedAt: !3985)
!3995 = !DILocation(line: 72, column: 15, scope: !2621, inlinedAt: !3985)
!3996 = !DILocation(line: 76, column: 21, scope: !2621, inlinedAt: !3985)
!3997 = !DILocation(line: 76, column: 3, scope: !2621, inlinedAt: !3985)
!3998 = !DILocation(line: 943, column: 30, scope: !3895)
!3999 = !DILocation(line: 936, column: 23, scope: !3895)
!4000 = !DILocation(line: 943, column: 5, scope: !3895)
!4001 = !DILocation(line: 944, column: 3, scope: !3896)
!4002 = !DILocation(line: 944, column: 3, scope: !3895)
!4003 = !DILocation(line: 65, column: 39, scope: !677, inlinedAt: !4004)
!4004 = distinct !DILocation(line: 91, column: 5, scope: !663, inlinedAt: !4005)
!4005 = distinct !DILocation(line: 95, column: 3, scope: !1020, inlinedAt: !4006)
!4006 = distinct !DILocation(line: 947, column: 5, scope: !3898)
!4007 = !DILocation(line: 65, column: 47, scope: !677, inlinedAt: !4004)
!4008 = !DILocation(line: 67, column: 28, scope: !677, inlinedAt: !4004)
!4009 = !DILocation(line: 67, column: 51, scope: !677, inlinedAt: !4004)
!4010 = !DILocation(line: 67, column: 7, scope: !677, inlinedAt: !4004)
!4011 = !DILocation(line: 66, column: 3, scope: !677, inlinedAt: !4004)
!4012 = !DILocation(line: 91, column: 5, scope: !663, inlinedAt: !4005)
!4013 = !DILocation(line: 96, column: 3, scope: !1020, inlinedAt: !4006)
!4014 = !DILocation(line: 932, column: 11, scope: !3886)
!4015 = !DILocation(line: 596, column: 32, scope: !1343, inlinedAt: !4016)
!4016 = distinct !DILocation(line: 948, column: 13, scope: !3898)
!4017 = !DILocation(line: 596, column: 45, scope: !1343, inlinedAt: !4016)
!4018 = !DILocation(line: 598, column: 7, scope: !1343, inlinedAt: !4016)
!4019 = !DILocation(line: 856, column: 29, scope: !964, inlinedAt: !4020)
!4020 = distinct !DILocation(line: 599, column: 3, scope: !1343, inlinedAt: !4016)
!4021 = !DILocation(line: 856, column: 42, scope: !964, inlinedAt: !4020)
!4022 = !DILocation(line: 857, column: 3, scope: !964, inlinedAt: !4020)
!4023 = !DILocation(line: 80, column: 32, scope: !635, inlinedAt: !4024)
!4024 = distinct !DILocation(line: 600, column: 10, scope: !1343, inlinedAt: !4016)
!4025 = !DILocation(line: 80, column: 40, scope: !635, inlinedAt: !4024)
!4026 = !DILocation(line: 81, column: 13, scope: !644, inlinedAt: !4024)
!4027 = !DILocation(line: 81, column: 19, scope: !644, inlinedAt: !4024)
!4028 = !DILocation(line: 81, column: 7, scope: !635, inlinedAt: !4024)
!4029 = !DILocation(line: 82, column: 5, scope: !648, inlinedAt: !4024)
!4030 = !DILocation(line: 601, column: 26, scope: !1365, inlinedAt: !4016)
!4031 = !DILocation(line: 601, column: 5, scope: !1365, inlinedAt: !4016)
!4032 = !DILocation(line: 856, column: 29, scope: !964, inlinedAt: !4033)
!4033 = distinct !DILocation(line: 602, column: 5, scope: !1365, inlinedAt: !4016)
!4034 = !DILocation(line: 856, column: 42, scope: !964, inlinedAt: !4033)
!4035 = !DILocation(line: 857, column: 3, scope: !964, inlinedAt: !4033)
!4036 = !DILocation(line: 603, column: 6, scope: !1365, inlinedAt: !4016)
!4037 = !DILocation(line: 0, scope: !1365, inlinedAt: !4016)
!4038 = !DILocation(line: 946, column: 9, scope: !3898)
!4039 = !DILocation(line: 949, column: 15, scope: !4040)
!4040 = distinct !DILexicalBlock(scope: !3898, file: !3, line: 949, column: 9)
!4041 = !DILocation(line: 949, column: 9, scope: !3898)
!4042 = !DILocation(line: 950, column: 7, scope: !4043)
!4043 = distinct !DILexicalBlock(scope: !4040, file: !3, line: 949, column: 25)
!4044 = !DILocation(line: 951, column: 17, scope: !4045)
!4045 = distinct !DILexicalBlock(scope: !4043, file: !3, line: 951, column: 11)
!4046 = !DILocation(line: 951, column: 11, scope: !4043)
!4047 = !DILocation(line: 952, column: 13, scope: !4045)
!4048 = !DILocation(line: 952, column: 17, scope: !4045)
!4049 = !DILocation(line: 952, column: 25, scope: !4045)
!4050 = !DILocation(line: 952, column: 9, scope: !4045)
!4051 = !DILocation(line: 955, column: 26, scope: !4052)
!4052 = distinct !DILexicalBlock(scope: !4040, file: !3, line: 954, column: 10)
!4053 = !DILocation(line: 955, column: 7, scope: !4052)
!4054 = !DILocation(line: 956, column: 25, scope: !4052)
!4055 = !DILocation(line: 956, column: 7, scope: !4052)
!4056 = !DILocation(line: 960, column: 31, scope: !3886)
!4057 = !DILocation(line: 960, column: 35, scope: !3886)
!4058 = !DILocation(line: 960, column: 42, scope: !3886)
!4059 = !DILocation(line: 126, column: 32, scope: !1792, inlinedAt: !4060)
!4060 = distinct !DILocation(line: 960, column: 3, scope: !3886)
!4061 = !DILocation(line: 126, column: 43, scope: !1792, inlinedAt: !4060)
!4062 = !DILocation(line: 126, column: 50, scope: !1792, inlinedAt: !4060)
!4063 = !DILocation(line: 127, column: 13, scope: !1792, inlinedAt: !4060)
!4064 = !DILocation(line: 127, column: 15, scope: !1792, inlinedAt: !4060)
!4065 = !DILocation(line: 127, column: 6, scope: !1792, inlinedAt: !4060)
!4066 = !DILocation(line: 127, column: 8, scope: !1792, inlinedAt: !4060)
!4067 = !DILocation(line: 128, column: 6, scope: !1792, inlinedAt: !4060)
!4068 = !DILocation(line: 128, column: 8, scope: !1792, inlinedAt: !4060)
!4069 = !DILocation(line: 129, column: 6, scope: !1792, inlinedAt: !4060)
!4070 = !DILocation(line: 129, column: 10, scope: !1792, inlinedAt: !4060)
!4071 = !DILocation(line: 129, column: 15, scope: !1792, inlinedAt: !4060)
!4072 = !DILocation(line: 961, column: 3, scope: !3886)
!4073 = !DILocation(line: 962, column: 1, scope: !3886)
